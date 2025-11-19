uint64_t sub_1C978A4E8(uint64_t result, float32x4_t *a2, float32x4_t *a3, uint64_t a4, uint64_t *a5, float *a6, float32x4_t *a7, float *a8, int a9, float32x4_t *a10, float32x4_t *a11, float32x4_t *a12)
{
  v20 = a4 < 4;
  v21 = a4 - 4;
  if (!v20)
  {
    v22 = v128;
    vst4q_f32(v22, *&v12);
    v22 += 16;
    vst4q_f32(v22, *&v16);
    v23 = a6;
    v130 = vld4q_f32(v23);
    v23 += 16;
    v131 = vld4q_f32(v23);
    v23 += 16;
    v132 = vld4q_f32(v23);
    v23 += 16;
    v133 = vld4q_f32(v23);
    *&v14 = *a8;
    v24.i64[0] = 0;
    v24.i64[1] = *a5;
    v25 = vsubq_f32(*a2, vextq_s8(v24, *a2, 8uLL));
    v26 = *a2;
    v27 = vmlaq_f32(vmlaq_n_f32(vmulq_f32(v132.val[0], *a12), *a10, v25.f32[0]), v130.val[0], *a11);
    v28 = vmlaq_f32(vmlaq_n_f32(vmulq_f32(v132.val[1], a12[1]), a10[1], v25.f32[0]), v130.val[1], a11[1]);
    v29 = vmlaq_f32(vmlaq_n_f32(vmulq_f32(v132.val[2], a12[2]), a10[2], v25.f32[0]), v130.val[2], a11[2]);
    v30 = vmlaq_f32(vmlaq_n_f32(vmulq_f32(v132.val[3], a12[3]), a10[3], v25.f32[0]), v130.val[3], a11[3]);
    v31 = a7[8];
    v32 = a7[9];
    v33 = a7[10];
    v34 = a7[11];
    v35 = vmulq_n_f32(vmlsq_f32(*a7, v27, v27), *a8);
    v36 = vmulq_n_f32(vmlsq_f32(a7[1], v28, v28), *a8);
    v37 = vmulq_n_f32(vmlsq_f32(a7[2], v29, v29), *a8);
    v38 = vmulq_n_f32(vmlsq_f32(a7[3], v30, v30), *a8);
    if (v21)
    {
      do
      {
        v39 = vmlaq_f32(v35, v27, v27);
        v40 = vmlaq_f32(v36, v28, v28);
        v41 = vmlaq_f32(v37, v29, v29);
        v42 = vmlaq_f32(v38, v30, v30);
        v43 = vmlaq_n_f32(v39, vsubq_f32(v31, v39), *&v14);
        v44 = *a12;
        v45 = vmlaq_n_f32(v40, vsubq_f32(v32, v40), *&v14);
        v46 = a12[1];
        v47 = vmlaq_n_f32(v41, vsubq_f32(v33, v41), *&v14);
        v48 = a12[2];
        v49 = vmlaq_n_f32(v42, vsubq_f32(v34, v42), *&v14);
        v50 = a12[3];
        if (!result)
        {
          *a3 = v43;
          a3[1] = v45;
          a3[2] = v47;
          a3[3] = v49;
          a3 += 8;
        }

        v51 = vmlaq_f32(vmlaq_lane_f32(vmulq_f32(v130.val[0], v44), *a10, *v25.f32, 1), v27, *a11);
        v52 = vmlaq_f32(vmlaq_lane_f32(vmulq_f32(v130.val[1], v46), a10[1], *v25.f32, 1), v28, a11[1]);
        v53 = vmlaq_f32(vmlaq_lane_f32(vmulq_f32(v130.val[2], v48), a10[2], *v25.f32, 1), v29, a11[2]);
        v54 = vmlaq_f32(vmlaq_lane_f32(vmulq_f32(v130.val[3], v50), a10[3], *v25.f32, 1), v30, a11[3]);
        v55 = vmlaq_f32(vmulq_n_f32(vmlsq_f32(v39, v51, v51), *&v14), v51, v51);
        v56 = vmlaq_f32(vmulq_n_f32(vmlsq_f32(v40, v52, v52), *&v14), v52, v52);
        v57 = vmlaq_f32(vmulq_n_f32(vmlsq_f32(v41, v53, v53), *&v14), v53, v53);
        v58 = vmlaq_f32(vmulq_n_f32(vmlsq_f32(v42, v54, v54), *&v14), v54, v54);
        v59 = vmlaq_n_f32(v55, vsubq_f32(v43, v55), *&v14);
        v60 = vmlaq_n_f32(v56, vsubq_f32(v45, v56), *&v14);
        v61 = vmlaq_n_f32(v57, vsubq_f32(v47, v57), *&v14);
        v62 = vmlaq_n_f32(v58, vsubq_f32(v49, v58), *&v14);
        v63 = vmlaq_f32(vmlaq_laneq_f32(vmulq_f32(v27, *a12), *a10, v25, 2), v51, *a11);
        v64 = vmlaq_f32(vmlaq_laneq_f32(vmulq_f32(v28, a12[1]), a10[1], v25, 2), v52, a11[1]);
        v65 = vmlaq_f32(vmlaq_laneq_f32(vmulq_f32(v29, a12[2]), a10[2], v25, 2), v53, a11[2]);
        v66 = vmlaq_f32(vmlaq_laneq_f32(vmulq_f32(v30, a12[3]), a10[3], v25, 2), v54, a11[3]);
        v67 = vmlaq_f32(vmulq_n_f32(vmlsq_f32(v55, v63, v63), *&v14), v63, v63);
        v68 = vmlaq_f32(vmulq_n_f32(vmlsq_f32(v56, v64, v64), *&v14), v64, v64);
        v69 = vmlaq_f32(vmulq_n_f32(vmlsq_f32(v57, v65, v65), *&v14), v65, v65);
        v70 = vmlaq_f32(vmulq_n_f32(vmlsq_f32(v58, v66, v66), *&v14), v66, v66);
        v71 = vmlaq_n_f32(v67, vsubq_f32(v59, v67), *&v14);
        v72 = vmlaq_n_f32(v68, vsubq_f32(v60, v68), *&v14);
        v73 = vmlaq_n_f32(v69, vsubq_f32(v61, v69), *&v14);
        v74 = vmlaq_n_f32(v70, vsubq_f32(v62, v70), *&v14);
        v130.val[0] = vmlaq_f32(vmlaq_laneq_f32(vmulq_f32(v51, *a12), *a10, v25, 3), v63, *a11);
        v130.val[1] = vmlaq_f32(vmlaq_laneq_f32(vmulq_f32(v52, a12[1]), a10[1], v25, 3), v64, a11[1]);
        v130.val[2] = vmlaq_f32(vmlaq_laneq_f32(vmulq_f32(v53, a12[2]), a10[2], v25, 3), v65, a11[2]);
        v130.val[3] = vmlaq_f32(vmlaq_laneq_f32(vmulq_f32(v54, a12[3]), a10[3], v25, 3), v66, a11[3]);
        ++a2;
        v75 = vmlaq_f32(vmulq_n_f32(vmlsq_f32(v67, v130.val[0], v130.val[0]), *&v14), v130.val[0], v130.val[0]);
        v76 = vmlaq_f32(vmulq_n_f32(vmlsq_f32(v68, v130.val[1], v130.val[1]), *&v14), v130.val[1], v130.val[1]);
        v77 = vmlaq_f32(vmulq_n_f32(vmlsq_f32(v69, v130.val[2], v130.val[2]), *&v14), v130.val[2], v130.val[2]);
        v78 = vmlaq_f32(vmulq_n_f32(vmlsq_f32(v70, v130.val[3], v130.val[3]), *&v14), v130.val[3], v130.val[3]);
        LODWORD(result) = result + 4;
        v31 = vmlaq_n_f32(v75, vsubq_f32(v71, v75), *&v14);
        v32 = vmlaq_n_f32(v76, vsubq_f32(v72, v76), *&v14);
        v33 = vmlaq_n_f32(v77, vsubq_f32(v73, v77), *&v14);
        v34 = vmlaq_n_f32(v78, vsubq_f32(v74, v78), *&v14);
        if (result >= a9)
        {
          LODWORD(result) = 0;
        }

        v25 = vsubq_f32(*a2, vextq_s8(v26, *a2, 8uLL));
        v26 = *a2;
        v27 = vmlaq_f32(vmlaq_n_f32(vmulq_f32(v63, *a12), *a10, v25.f32[0]), v130.val[0], *a11);
        v28 = vmlaq_f32(vmlaq_n_f32(vmulq_f32(v64, a12[1]), a10[1], v25.f32[0]), v130.val[1], a11[1]);
        v29 = vmlaq_f32(vmlaq_n_f32(vmulq_f32(v65, a12[2]), a10[2], v25.f32[0]), v130.val[2], a11[2]);
        v30 = vmlaq_f32(vmlaq_n_f32(vmulq_f32(v66, a12[3]), a10[3], v25.f32[0]), v130.val[3], a11[3]);
        v35 = vmulq_n_f32(vmlsq_f32(v75, v27, v27), *&v14);
        v36 = vmulq_n_f32(vmlsq_f32(v76, v28, v28), *&v14);
        v37 = vmulq_n_f32(vmlsq_f32(v77, v29, v29), *&v14);
        v38 = vmulq_n_f32(vmlsq_f32(v78, v30, v30), *&v14);
        v20 = v21 <= 4;
        v21 -= 4;
      }

      while (!v20);
    }

    v79 = vmlaq_f32(v35, v27, v27);
    v80 = vmlaq_f32(v36, v28, v28);
    v81 = vmlaq_f32(v37, v29, v29);
    v82 = vmlaq_f32(v38, v30, v30);
    v83 = vmlaq_n_f32(v79, vsubq_f32(v31, v79), *&v14);
    v84 = *a12;
    v85 = vmlaq_n_f32(v80, vsubq_f32(v32, v80), *&v14);
    v86 = a12[1];
    v87 = vmlaq_n_f32(v81, vsubq_f32(v33, v81), *&v14);
    v88 = a12[2];
    v89 = vmlaq_n_f32(v82, vsubq_f32(v34, v82), *&v14);
    v90 = a12[3];
    if (!result)
    {
      vst4q_f32(a3->f32, *v83.f32);
    }

    v91 = vmlaq_f32(vmlaq_lane_f32(vmulq_f32(v130.val[0], v84), *a10, *v25.f32, 1), v27, *a11);
    v92 = vmlaq_f32(vmlaq_lane_f32(vmulq_f32(v130.val[1], v86), a10[1], *v25.f32, 1), v28, a11[1]);
    v93 = vmlaq_f32(vmlaq_lane_f32(vmulq_f32(v130.val[2], v88), a10[2], *v25.f32, 1), v29, a11[2]);
    v94 = vmlaq_f32(vmlaq_lane_f32(vmulq_f32(v130.val[3], v90), a10[3], *v25.f32, 1), v30, a11[3]);
    v95 = vmlaq_f32(vmulq_n_f32(vmlsq_f32(v79, v91, v91), *&v14), v91, v91);
    v96 = vmlaq_f32(vmulq_n_f32(vmlsq_f32(v80, v92, v92), *&v14), v92, v92);
    v97 = vmlaq_f32(vmulq_n_f32(vmlsq_f32(v81, v93, v93), *&v14), v93, v93);
    v98 = vmlaq_f32(vmulq_n_f32(vmlsq_f32(v82, v94, v94), *&v14), v94, v94);
    v99 = vmlaq_n_f32(v95, vsubq_f32(v83, v95), *&v14);
    v100 = vmlaq_n_f32(v96, vsubq_f32(v85, v96), *&v14);
    v101 = vmlaq_n_f32(v97, vsubq_f32(v87, v97), *&v14);
    v102 = vmlaq_n_f32(v98, vsubq_f32(v89, v98), *&v14);
    v103 = vmlaq_f32(vmlaq_laneq_f32(vmulq_f32(v27, *a12), *a10, v25, 2), v91, *a11);
    v104 = vmlaq_f32(vmlaq_laneq_f32(vmulq_f32(v28, a12[1]), a10[1], v25, 2), v92, a11[1]);
    v105 = vmlaq_f32(vmlaq_laneq_f32(vmulq_f32(v29, a12[2]), a10[2], v25, 2), v93, a11[2]);
    v106 = vmlaq_f32(vmlaq_laneq_f32(vmulq_f32(v30, a12[3]), a10[3], v25, 2), v94, a11[3]);
    v107 = vmlaq_f32(vmulq_n_f32(vmlsq_f32(v95, v103, v103), *&v14), v103, v103);
    v108 = vmlaq_f32(vmulq_n_f32(vmlsq_f32(v96, v104, v104), *&v14), v104, v104);
    v109 = vmlaq_f32(vmulq_n_f32(vmlsq_f32(v97, v105, v105), *&v14), v105, v105);
    v110 = vmlaq_f32(vmulq_n_f32(vmlsq_f32(v98, v106, v106), *&v14), v106, v106);
    v111 = vmlaq_n_f32(v107, vsubq_f32(v99, v107), *&v14);
    v112 = vmlaq_n_f32(v108, vsubq_f32(v100, v108), *&v14);
    v113 = vmlaq_n_f32(v109, vsubq_f32(v101, v109), *&v14);
    v114 = vmlaq_n_f32(v110, vsubq_f32(v102, v110), *&v14);
    v115 = vmlaq_f32(vmlaq_laneq_f32(vmulq_f32(v91, *a12), *a10, v25, 3), v103, *a11);
    v116 = vmlaq_f32(vmlaq_laneq_f32(vmulq_f32(v92, a12[1]), a10[1], v25, 3), v104, a11[1]);
    v117 = vmlaq_f32(vmlaq_laneq_f32(vmulq_f32(v93, a12[2]), a10[2], v25, 3), v105, a11[2]);
    v118 = vmlaq_f32(vmlaq_laneq_f32(vmulq_f32(v94, a12[3]), a10[3], v25, 3), v106, a11[3]);
    v119 = vmlaq_f32(vmulq_n_f32(vmlsq_f32(v107, v115, v115), *&v14), v115, v115);
    v120 = vmlaq_f32(vmulq_n_f32(vmlsq_f32(v108, v116, v116), *&v14), v116, v116);
    v121 = vmlaq_f32(vmulq_n_f32(vmlsq_f32(v109, v117, v117), *&v14), v117, v117);
    v122 = vmlaq_f32(vmulq_n_f32(vmlsq_f32(v110, v118, v118), *&v14), v118, v118);
    result = (result + 4);
    v123 = vmlaq_n_f32(v119, vsubq_f32(v111, v119), *&v14);
    v124 = vmlaq_n_f32(v120, vsubq_f32(v112, v120), *&v14);
    v125 = vmlaq_n_f32(v121, vsubq_f32(v113, v121), *&v14);
    v126 = vmlaq_n_f32(v122, vsubq_f32(v114, v122), *&v14);
    if (result >= a9)
    {
      result = 0;
    }

    *a7 = v119;
    a7[1] = v120;
    a7[2] = v121;
    a7[3] = v122;
    a7[8] = v123;
    a7[9] = v124;
    a7[10] = v125;
    a7[11] = v126;
    v127 = a6;
    vst4q_f32(v127, *v115.f32);
    v127 += 16;
    vst4q_f32(v127, v131);
    v127 += 16;
    vst4q_f32(v127, *v103.f32);
    v127 += 16;
    vst4q_f32(v127, v133);
    *a5 = v26.i64[1];
    vld4q_f32(v128);
    vld4q_f32(v129);
  }

  return result;
}

uint64_t sub_1C978ABFC(uint64_t result, float32x4_t *a2, float32x4_t *a3, uint64_t a4, uint64_t *a5, float *a6, float32x4_t *a7, float *a8, int a9, float32x4_t *a10, float32x4_t *a11, float32x4_t *a12)
{
  v20 = a4 < 4;
  v21 = a4 - 4;
  if (!v20)
  {
    v22 = v313;
    vst4q_f32(v22, *&v12);
    v22 += 16;
    vst4q_f32(v22, *&v16);
    v23 = a6;
    v315 = vld4q_f32(v23);
    v23 += 16;
    v316 = vld4q_f32(v23);
    v23 += 16;
    v317 = vld4q_f32(v23);
    v23 += 16;
    v318 = vld4q_f32(v23);
    *&v14 = *a8;
    v24.i64[0] = 0;
    v24.i64[1] = *a5;
    v25 = vsubq_f32(*a2, vextq_s8(v24, *a2, 8uLL));
    v26 = *a2;
    v27 = vmlaq_f32(vmlaq_n_f32(vmulq_f32(v317.val[0], *a12), *a10, v25.f32[0]), v315.val[0], *a11);
    v28 = vmlaq_f32(vmlaq_n_f32(vmulq_f32(v317.val[1], a12[1]), a10[1], v25.f32[0]), v315.val[1], a11[1]);
    v29 = vmlaq_f32(vmlaq_n_f32(vmulq_f32(v317.val[2], a12[2]), a10[2], v25.f32[0]), v315.val[2], a11[2]);
    v30 = vmlaq_f32(vmlaq_n_f32(vmulq_f32(v317.val[3], a12[3]), a10[3], v25.f32[0]), v315.val[3], a11[3]);
    v31 = vmlaq_f32(vmlaq_n_f32(vmulq_f32(v318.val[0], a12[4]), a10[4], v25.f32[0]), v316.val[0], a11[4]);
    v32 = vmlaq_f32(vmlaq_n_f32(vmulq_f32(v318.val[1], a12[5]), a10[5], v25.f32[0]), v316.val[1], a11[5]);
    v33 = vmlaq_f32(vmlaq_n_f32(vmulq_f32(v318.val[2], a12[6]), a10[6], v25.f32[0]), v316.val[2], a11[6]);
    v34 = vmlaq_f32(vmlaq_n_f32(vmulq_f32(v318.val[3], a12[7]), a10[7], v25.f32[0]), v316.val[3], a11[7]);
    v35 = a7[4];
    v36 = a7[5];
    v37 = a7[6];
    v38 = a7[7];
    v39 = vmulq_n_f32(vmlsq_f32(*a7, v27, v27), *a8);
    v40 = vmulq_n_f32(vmlsq_f32(a7[1], v28, v28), *a8);
    v41 = vmulq_n_f32(vmlsq_f32(a7[2], v29, v29), *a8);
    v42 = vmulq_n_f32(vmlsq_f32(a7[3], v30, v30), *a8);
    if (v21)
    {
      do
      {
        v43 = vmlaq_f32(v39, v27, v27);
        v44 = a7[8];
        v45 = vmlaq_f32(v40, v28, v28);
        v46 = a7[9];
        v47 = vmlaq_f32(v41, v29, v29);
        v48 = a7[10];
        v49 = vmlaq_f32(v42, v30, v30);
        v50 = a7[11];
        v51 = vmlaq_f32(vmulq_n_f32(vmlsq_f32(v35, v31, v31), *&v14), v31, v31);
        *a7 = v43;
        v52 = vmlaq_f32(vmulq_n_f32(vmlsq_f32(v36, v32, v32), *&v14), v32, v32);
        a7[1] = v45;
        v53 = vmlaq_f32(vmulq_n_f32(vmlsq_f32(v37, v33, v33), *&v14), v33, v33);
        a7[2] = v47;
        v54 = vmlaq_f32(vmulq_n_f32(vmlsq_f32(v38, v34, v34), *&v14), v34, v34);
        a7[3] = v49;
        a7[4] = v51;
        a7[5] = v52;
        a7[6] = v53;
        a7[7] = v54;
        v55 = vmlaq_n_f32(v43, vsubq_f32(v44, v43), *&v14);
        v56 = vmlaq_n_f32(v45, vsubq_f32(v46, v45), *&v14);
        v57 = a7[13];
        v58 = vmlaq_n_f32(v47, vsubq_f32(v48, v47), *&v14);
        v59 = a7[14];
        v60 = vmlaq_n_f32(v49, vsubq_f32(v50, v49), *&v14);
        v61 = a7[15];
        v62 = vsubq_f32(a7[12], v51);
        a7[8] = v55;
        a7[9] = v56;
        a7[10] = v58;
        a7[11] = v60;
        v63 = vmlaq_n_f32(v51, v62, *&v14);
        v64 = *a12;
        v65 = vmlaq_n_f32(v52, vsubq_f32(v57, v52), *&v14);
        v66 = a12[1];
        v67 = vmlaq_n_f32(v53, vsubq_f32(v59, v53), *&v14);
        v68 = a12[2];
        v69 = vmlaq_n_f32(v54, vsubq_f32(v61, v54), *&v14);
        v70 = a12[3];
        if (!result)
        {
          *a3 = v55;
          a3[1] = v56;
          a3[2] = v58;
          a3[3] = v60;
          v71 = a3 + 4;
          *v71 = v63;
          v71[1] = v65;
          v71[2] = v67;
          v71[3] = v69;
          a3 = v71 + 4;
        }

        v72 = vmlaq_f32(vmlaq_lane_f32(vmulq_f32(v315.val[0], v64), *a10, *v25.f32, 1), v27, *a11);
        v73 = vmlaq_f32(vmlaq_lane_f32(vmulq_f32(v315.val[1], v66), a10[1], *v25.f32, 1), v28, a11[1]);
        v74 = vmlaq_f32(vmlaq_lane_f32(vmulq_f32(v315.val[2], v68), a10[2], *v25.f32, 1), v29, a11[2]);
        v75 = vmlaq_f32(vmlaq_lane_f32(vmulq_f32(v315.val[3], v70), a10[3], *v25.f32, 1), v30, a11[3]);
        v76 = vmlaq_f32(vmlaq_lane_f32(vmulq_f32(v316.val[0], a12[4]), a10[4], *v25.f32, 1), v31, a11[4]);
        v77 = vmlaq_f32(vmlaq_lane_f32(vmulq_f32(v316.val[1], a12[5]), a10[5], *v25.f32, 1), v32, a11[5]);
        v78 = a7[1];
        v79 = vmlaq_f32(vmlaq_lane_f32(vmulq_f32(v316.val[2], a12[6]), a10[6], *v25.f32, 1), v33, a11[6]);
        v80 = a7[2];
        v81 = vmlaq_f32(vmlaq_lane_f32(vmulq_f32(v316.val[3], a12[7]), a10[7], *v25.f32, 1), v34, a11[7]);
        v82 = a7[3];
        v83 = vmlsq_f32(*a7, v72, v72);
        a7[12] = v63;
        a7[13] = v65;
        a7[14] = v67;
        a7[15] = v69;
        v84 = vmulq_n_f32(vmlsq_f32(a7[5], v77, v77), *&v14);
        v85 = vmulq_n_f32(vmlsq_f32(a7[6], v79, v79), *&v14);
        v86 = vmulq_n_f32(vmlsq_f32(a7[7], v81, v81), *&v14);
        v87 = vmlaq_f32(vmulq_n_f32(v83, *&v14), v72, v72);
        v88 = a7[8];
        v89 = vmlaq_f32(vmulq_n_f32(vmlsq_f32(v78, v73, v73), *&v14), v73, v73);
        v90 = a7[9];
        v91 = vmlaq_f32(vmulq_n_f32(vmlsq_f32(v80, v74, v74), *&v14), v74, v74);
        v92 = a7[10];
        v93 = vmlaq_f32(vmulq_n_f32(vmlsq_f32(v82, v75, v75), *&v14), v75, v75);
        v94 = a7[11];
        v95 = vmlaq_f32(vmulq_n_f32(vmlsq_f32(a7[4], v76, v76), *&v14), v76, v76);
        *a7 = v87;
        v96 = vmlaq_f32(v84, v77, v77);
        a7[1] = v89;
        v97 = vmlaq_f32(v85, v79, v79);
        a7[2] = v91;
        v98 = vmlaq_f32(v86, v81, v81);
        a7[3] = v93;
        a7[4] = v95;
        a7[5] = v96;
        a7[6] = v97;
        a7[7] = v98;
        v99 = vmlaq_n_f32(v87, vsubq_f32(v88, v87), *&v14);
        v100 = vmlaq_n_f32(v89, vsubq_f32(v90, v89), *&v14);
        v101 = a7[13];
        v102 = vmlaq_n_f32(v91, vsubq_f32(v92, v91), *&v14);
        v103 = a7[14];
        v104 = vmlaq_n_f32(v93, vsubq_f32(v94, v93), *&v14);
        v105 = a7[15];
        v106 = vsubq_f32(a7[12], v95);
        a7[8] = v99;
        a7[9] = v100;
        a7[10] = v102;
        a7[11] = v104;
        v107 = vmlaq_f32(vmlaq_laneq_f32(vmulq_f32(v27, *a12), *a10, v25, 2), v72, *a11);
        v108 = vmlaq_f32(vmlaq_laneq_f32(vmulq_f32(v28, a12[1]), a10[1], v25, 2), v73, a11[1]);
        v109 = vmlaq_f32(vmlaq_laneq_f32(vmulq_f32(v29, a12[2]), a10[2], v25, 2), v74, a11[2]);
        v110 = vmlaq_f32(vmlaq_laneq_f32(vmulq_f32(v30, a12[3]), a10[3], v25, 2), v75, a11[3]);
        v111 = vmlaq_f32(vmlaq_laneq_f32(vmulq_f32(v31, a12[4]), a10[4], v25, 2), v76, a11[4]);
        v112 = vmlaq_f32(vmlaq_laneq_f32(vmulq_f32(v32, a12[5]), a10[5], v25, 2), v77, a11[5]);
        v113 = a7[1];
        v114 = vmlaq_f32(vmlaq_laneq_f32(vmulq_f32(v33, a12[6]), a10[6], v25, 2), v79, a11[6]);
        v115 = a7[2];
        v116 = vmlaq_f32(vmlaq_laneq_f32(vmulq_f32(v34, a12[7]), a10[7], v25, 2), v81, a11[7]);
        v117 = a7[3];
        v118 = vmlsq_f32(*a7, v107, v107);
        a7[12] = vmlaq_n_f32(v95, v106, *&v14);
        a7[13] = vmlaq_n_f32(v96, vsubq_f32(v101, v96), *&v14);
        a7[14] = vmlaq_n_f32(v97, vsubq_f32(v103, v97), *&v14);
        a7[15] = vmlaq_n_f32(v98, vsubq_f32(v105, v98), *&v14);
        v119 = vmulq_n_f32(vmlsq_f32(a7[5], v112, v112), *&v14);
        v120 = vmulq_n_f32(vmlsq_f32(a7[6], v114, v114), *&v14);
        v121 = vmulq_n_f32(vmlsq_f32(a7[7], v116, v116), *&v14);
        v122 = vmlaq_f32(vmulq_n_f32(v118, *&v14), v107, v107);
        v123 = a7[8];
        v124 = vmlaq_f32(vmulq_n_f32(vmlsq_f32(v113, v108, v108), *&v14), v108, v108);
        v125 = a7[9];
        v126 = vmlaq_f32(vmulq_n_f32(vmlsq_f32(v115, v109, v109), *&v14), v109, v109);
        v127 = a7[10];
        v128 = vmlaq_f32(vmulq_n_f32(vmlsq_f32(v117, v110, v110), *&v14), v110, v110);
        v129 = a7[11];
        v130 = vmlaq_f32(vmulq_n_f32(vmlsq_f32(a7[4], v111, v111), *&v14), v111, v111);
        *a7 = v122;
        v131 = vmlaq_f32(v119, v112, v112);
        a7[1] = v124;
        v132 = vmlaq_f32(v120, v114, v114);
        a7[2] = v126;
        v133 = vmlaq_f32(v121, v116, v116);
        a7[3] = v128;
        a7[4] = v130;
        a7[5] = v131;
        a7[6] = v132;
        a7[7] = v133;
        v134 = vmlaq_n_f32(v122, vsubq_f32(v123, v122), *&v14);
        v135 = vmlaq_n_f32(v124, vsubq_f32(v125, v124), *&v14);
        v136 = a7[13];
        v137 = vmlaq_n_f32(v126, vsubq_f32(v127, v126), *&v14);
        v138 = a7[14];
        v139 = vmlaq_n_f32(v128, vsubq_f32(v129, v128), *&v14);
        v140 = a7[15];
        v141 = vsubq_f32(a7[12], v130);
        a7[8] = v134;
        a7[9] = v135;
        a7[10] = v137;
        a7[11] = v139;
        v315.val[0] = vmlaq_f32(vmlaq_laneq_f32(vmulq_f32(v72, *a12), *a10, v25, 3), v107, *a11);
        v315.val[1] = vmlaq_f32(vmlaq_laneq_f32(vmulq_f32(v73, a12[1]), a10[1], v25, 3), v108, a11[1]);
        v315.val[2] = vmlaq_f32(vmlaq_laneq_f32(vmulq_f32(v74, a12[2]), a10[2], v25, 3), v109, a11[2]);
        v315.val[3] = vmlaq_f32(vmlaq_laneq_f32(vmulq_f32(v75, a12[3]), a10[3], v25, 3), v110, a11[3]);
        v316.val[0] = vmlaq_f32(vmlaq_laneq_f32(vmulq_f32(v76, a12[4]), a10[4], v25, 3), v111, a11[4]);
        v316.val[1] = vmlaq_f32(vmlaq_laneq_f32(vmulq_f32(v77, a12[5]), a10[5], v25, 3), v112, a11[5]);
        v142 = a7[1];
        v316.val[2] = vmlaq_f32(vmlaq_laneq_f32(vmulq_f32(v79, a12[6]), a10[6], v25, 3), v114, a11[6]);
        v143 = a7[2];
        v316.val[3] = vmlaq_f32(vmlaq_laneq_f32(vmulq_f32(v81, a12[7]), a10[7], v25, 3), v116, a11[7]);
        v144 = a7[3];
        v145 = vmlsq_f32(*a7, v315.val[0], v315.val[0]);
        a7[12] = vmlaq_n_f32(v130, v141, *&v14);
        a7[13] = vmlaq_n_f32(v131, vsubq_f32(v136, v131), *&v14);
        a7[14] = vmlaq_n_f32(v132, vsubq_f32(v138, v132), *&v14);
        a7[15] = vmlaq_n_f32(v133, vsubq_f32(v140, v133), *&v14);
        v146 = *++a2;
        v147 = vmulq_n_f32(vmlsq_f32(a7[5], v316.val[1], v316.val[1]), *&v14);
        v148 = vmulq_n_f32(vmlsq_f32(a7[6], v316.val[2], v316.val[2]), *&v14);
        v149 = vmulq_n_f32(vmlsq_f32(a7[7], v316.val[3], v316.val[3]), *&v14);
        v150 = vmlaq_f32(vmulq_n_f32(v145, *&v14), v315.val[0], v315.val[0]);
        v151 = a7[8];
        v152 = vmlaq_f32(vmulq_n_f32(vmlsq_f32(v142, v315.val[1], v315.val[1]), *&v14), v315.val[1], v315.val[1]);
        v153 = a7[9];
        v154 = vmlaq_f32(vmulq_n_f32(vmlsq_f32(v143, v315.val[2], v315.val[2]), *&v14), v315.val[2], v315.val[2]);
        v155 = a7[10];
        v156 = vmlaq_f32(vmulq_n_f32(vmlsq_f32(v144, v315.val[3], v315.val[3]), *&v14), v315.val[3], v315.val[3]);
        v157 = a7[11];
        v158 = vmlaq_f32(vmulq_n_f32(vmlsq_f32(a7[4], v316.val[0], v316.val[0]), *&v14), v316.val[0], v316.val[0]);
        *a7 = v150;
        v159 = vmlaq_f32(v147, v316.val[1], v316.val[1]);
        a7[1] = v152;
        v160 = vmlaq_f32(v148, v316.val[2], v316.val[2]);
        a7[2] = v154;
        v161 = vmlaq_f32(v149, v316.val[3], v316.val[3]);
        a7[3] = v156;
        a7[4] = v158;
        a7[5] = v159;
        a7[6] = v160;
        a7[7] = v161;
        v162 = vmlaq_n_f32(v150, vsubq_f32(v151, v150), *&v14);
        v163 = vmlaq_n_f32(v152, vsubq_f32(v153, v152), *&v14);
        v164 = a7[13];
        v165 = vmlaq_n_f32(v154, vsubq_f32(v155, v154), *&v14);
        v166 = a7[14];
        v167 = vmlaq_n_f32(v156, vsubq_f32(v157, v156), *&v14);
        v168 = a7[15];
        v169 = vsubq_f32(a7[12], v158);
        a7[8] = v162;
        a7[9] = v163;
        a7[10] = v165;
        a7[11] = v167;
        LODWORD(result) = result + 4;
        v170 = vmlaq_n_f32(v158, v169, *&v14);
        v171 = vmlaq_n_f32(v159, vsubq_f32(v164, v159), *&v14);
        v172 = vmlaq_n_f32(v160, vsubq_f32(v166, v160), *&v14);
        v173 = vmlaq_n_f32(v161, vsubq_f32(v168, v161), *&v14);
        if (result >= a9)
        {
          LODWORD(result) = 0;
        }

        v25 = vsubq_f32(v146, vextq_s8(v26, v146, 8uLL));
        v26 = v146;
        v27 = vmlaq_f32(vmlaq_n_f32(vmulq_f32(v107, *a12), *a10, v25.f32[0]), v315.val[0], *a11);
        v28 = vmlaq_f32(vmlaq_n_f32(vmulq_f32(v108, a12[1]), a10[1], v25.f32[0]), v315.val[1], a11[1]);
        v29 = vmlaq_f32(vmlaq_n_f32(vmulq_f32(v109, a12[2]), a10[2], v25.f32[0]), v315.val[2], a11[2]);
        v30 = vmlaq_f32(vmlaq_n_f32(vmulq_f32(v110, a12[3]), a10[3], v25.f32[0]), v315.val[3], a11[3]);
        v31 = vmlaq_f32(vmlaq_n_f32(vmulq_f32(v111, a12[4]), a10[4], v25.f32[0]), v316.val[0], a11[4]);
        v32 = vmlaq_f32(vmlaq_n_f32(vmulq_f32(v112, a12[5]), a10[5], v25.f32[0]), v316.val[1], a11[5]);
        v174 = a7[1];
        v33 = vmlaq_f32(vmlaq_n_f32(vmulq_f32(v114, a12[6]), a10[6], v25.f32[0]), v316.val[2], a11[6]);
        v175 = a7[2];
        v34 = vmlaq_f32(vmlaq_n_f32(vmulq_f32(v116, a12[7]), a10[7], v25.f32[0]), v316.val[3], a11[7]);
        v176 = a7[3];
        v177 = vmlsq_f32(*a7, v27, v27);
        a7[12] = v170;
        a7[13] = v171;
        a7[14] = v172;
        a7[15] = v173;
        v39 = vmulq_n_f32(v177, *&v14);
        v35 = a7[4];
        v40 = vmulq_n_f32(vmlsq_f32(v174, v28, v28), *&v14);
        v36 = a7[5];
        v41 = vmulq_n_f32(vmlsq_f32(v175, v29, v29), *&v14);
        v37 = a7[6];
        v42 = vmulq_n_f32(vmlsq_f32(v176, v30, v30), *&v14);
        v38 = a7[7];
        v20 = v21 <= 4;
        v21 -= 4;
      }

      while (!v20);
    }

    v178 = vmlaq_f32(v39, v27, v27);
    v179 = a7[8];
    v180 = vmlaq_f32(v40, v28, v28);
    v181 = a7[9];
    v182 = vmlaq_f32(v41, v29, v29);
    v183 = a7[10];
    v184 = vmlaq_f32(v42, v30, v30);
    v185 = a7[11];
    v186 = vmlaq_f32(vmulq_n_f32(vmlsq_f32(v35, v31, v31), *&v14), v31, v31);
    *a7 = v178;
    v187 = vmlaq_f32(vmulq_n_f32(vmlsq_f32(v36, v32, v32), *&v14), v32, v32);
    a7[1] = v180;
    v188 = vmlaq_f32(vmulq_n_f32(vmlsq_f32(v37, v33, v33), *&v14), v33, v33);
    a7[2] = v182;
    v189 = vmlaq_f32(vmulq_n_f32(vmlsq_f32(v38, v34, v34), *&v14), v34, v34);
    a7[3] = v184;
    a7[4] = v186;
    a7[5] = v187;
    a7[6] = v188;
    a7[7] = v189;
    v190 = vmlaq_n_f32(v178, vsubq_f32(v179, v178), *&v14);
    v191 = vmlaq_n_f32(v180, vsubq_f32(v181, v180), *&v14);
    v192 = a7[13];
    v193 = vmlaq_n_f32(v182, vsubq_f32(v183, v182), *&v14);
    v194 = a7[14];
    v195 = vmlaq_n_f32(v184, vsubq_f32(v185, v184), *&v14);
    v196 = a7[15];
    v197 = vsubq_f32(a7[12], v186);
    a7[8] = v190;
    a7[9] = v191;
    a7[10] = v193;
    a7[11] = v195;
    v198 = vmlaq_n_f32(v186, v197, *&v14);
    v199 = *a12;
    v200 = vmlaq_n_f32(v187, vsubq_f32(v192, v187), *&v14);
    v201 = a12[1];
    v202 = vmlaq_n_f32(v188, vsubq_f32(v194, v188), *&v14);
    v203 = a12[2];
    v204 = vmlaq_n_f32(v189, vsubq_f32(v196, v189), *&v14);
    v205 = a12[3];
    if (!result)
    {
      vst4q_f32(a3->f32, *v190.f32);
      f32 = a3[4].f32;
      vst4q_f32(f32, *v198.f32);
    }

    v207 = vmlaq_f32(vmlaq_lane_f32(vmulq_f32(v315.val[0], v199), *a10, *v25.f32, 1), v27, *a11);
    v208 = vmlaq_f32(vmlaq_lane_f32(vmulq_f32(v315.val[1], v201), a10[1], *v25.f32, 1), v28, a11[1]);
    v209 = vmlaq_f32(vmlaq_lane_f32(vmulq_f32(v315.val[2], v203), a10[2], *v25.f32, 1), v29, a11[2]);
    v210 = vmlaq_f32(vmlaq_lane_f32(vmulq_f32(v315.val[3], v205), a10[3], *v25.f32, 1), v30, a11[3]);
    v211 = vmlaq_f32(vmlaq_lane_f32(vmulq_f32(v316.val[0], a12[4]), a10[4], *v25.f32, 1), v31, a11[4]);
    v212 = vmlaq_f32(vmlaq_lane_f32(vmulq_f32(v316.val[1], a12[5]), a10[5], *v25.f32, 1), v32, a11[5]);
    v213 = a7[1];
    v214 = vmlaq_f32(vmlaq_lane_f32(vmulq_f32(v316.val[2], a12[6]), a10[6], *v25.f32, 1), v33, a11[6]);
    v215 = a7[2];
    v216 = vmlaq_f32(vmlaq_lane_f32(vmulq_f32(v316.val[3], a12[7]), a10[7], *v25.f32, 1), v34, a11[7]);
    v217 = a7[3];
    v218 = vmlsq_f32(*a7, v207, v207);
    a7[12] = v198;
    a7[13] = v200;
    a7[14] = v202;
    a7[15] = v204;
    v219 = vmulq_n_f32(vmlsq_f32(a7[5], v212, v212), *&v14);
    v220 = vmulq_n_f32(vmlsq_f32(a7[6], v214, v214), *&v14);
    v221 = vmulq_n_f32(vmlsq_f32(a7[7], v216, v216), *&v14);
    v222 = vmlaq_f32(vmulq_n_f32(v218, *&v14), v207, v207);
    v223 = a7[8];
    v224 = vmlaq_f32(vmulq_n_f32(vmlsq_f32(v213, v208, v208), *&v14), v208, v208);
    v225 = a7[9];
    v226 = vmlaq_f32(vmulq_n_f32(vmlsq_f32(v215, v209, v209), *&v14), v209, v209);
    v227 = a7[10];
    v228 = vmlaq_f32(vmulq_n_f32(vmlsq_f32(v217, v210, v210), *&v14), v210, v210);
    v229 = a7[11];
    v230 = vmlaq_f32(vmulq_n_f32(vmlsq_f32(a7[4], v211, v211), *&v14), v211, v211);
    *a7 = v222;
    v231 = vmlaq_f32(v219, v212, v212);
    a7[1] = v224;
    v232 = vmlaq_f32(v220, v214, v214);
    a7[2] = v226;
    v233 = vmlaq_f32(v221, v216, v216);
    a7[3] = v228;
    a7[4] = v230;
    a7[5] = v231;
    a7[6] = v232;
    a7[7] = v233;
    v234 = vmlaq_n_f32(v222, vsubq_f32(v223, v222), *&v14);
    v235 = vmlaq_n_f32(v224, vsubq_f32(v225, v224), *&v14);
    v236 = a7[13];
    v237 = vmlaq_n_f32(v226, vsubq_f32(v227, v226), *&v14);
    v238 = a7[14];
    v239 = vmlaq_n_f32(v228, vsubq_f32(v229, v228), *&v14);
    v240 = a7[15];
    v241 = vsubq_f32(a7[12], v230);
    a7[8] = v234;
    a7[9] = v235;
    a7[10] = v237;
    a7[11] = v239;
    v242 = vmlaq_f32(vmlaq_laneq_f32(vmulq_f32(v27, *a12), *a10, v25, 2), v207, *a11);
    v243 = vmlaq_f32(vmlaq_laneq_f32(vmulq_f32(v28, a12[1]), a10[1], v25, 2), v208, a11[1]);
    v244 = vmlaq_f32(vmlaq_laneq_f32(vmulq_f32(v29, a12[2]), a10[2], v25, 2), v209, a11[2]);
    v245 = vmlaq_f32(vmlaq_laneq_f32(vmulq_f32(v30, a12[3]), a10[3], v25, 2), v210, a11[3]);
    v246 = vmlaq_f32(vmlaq_laneq_f32(vmulq_f32(v31, a12[4]), a10[4], v25, 2), v211, a11[4]);
    v247 = vmlaq_f32(vmlaq_laneq_f32(vmulq_f32(v32, a12[5]), a10[5], v25, 2), v212, a11[5]);
    v248 = a7[1];
    v249 = vmlaq_f32(vmlaq_laneq_f32(vmulq_f32(v33, a12[6]), a10[6], v25, 2), v214, a11[6]);
    v250 = a7[2];
    v251 = vmlaq_f32(vmlaq_laneq_f32(vmulq_f32(v34, a12[7]), a10[7], v25, 2), v216, a11[7]);
    v252 = a7[3];
    v253 = vmlsq_f32(*a7, v242, v242);
    a7[12] = vmlaq_n_f32(v230, v241, *&v14);
    a7[13] = vmlaq_n_f32(v231, vsubq_f32(v236, v231), *&v14);
    a7[14] = vmlaq_n_f32(v232, vsubq_f32(v238, v232), *&v14);
    a7[15] = vmlaq_n_f32(v233, vsubq_f32(v240, v233), *&v14);
    v254 = vmulq_n_f32(vmlsq_f32(a7[5], v247, v247), *&v14);
    v255 = vmulq_n_f32(vmlsq_f32(a7[6], v249, v249), *&v14);
    v256 = vmulq_n_f32(vmlsq_f32(a7[7], v251, v251), *&v14);
    v257 = vmlaq_f32(vmulq_n_f32(v253, *&v14), v242, v242);
    v258 = a7[8];
    v259 = vmlaq_f32(vmulq_n_f32(vmlsq_f32(v248, v243, v243), *&v14), v243, v243);
    v260 = a7[9];
    v261 = vmlaq_f32(vmulq_n_f32(vmlsq_f32(v250, v244, v244), *&v14), v244, v244);
    v262 = a7[10];
    v263 = vmlaq_f32(vmulq_n_f32(vmlsq_f32(v252, v245, v245), *&v14), v245, v245);
    v264 = a7[11];
    v265 = vmlaq_f32(vmulq_n_f32(vmlsq_f32(a7[4], v246, v246), *&v14), v246, v246);
    *a7 = v257;
    v266 = vmlaq_f32(v254, v247, v247);
    a7[1] = v259;
    v267 = vmlaq_f32(v255, v249, v249);
    a7[2] = v261;
    v268 = vmlaq_f32(v256, v251, v251);
    a7[3] = v263;
    a7[4] = v265;
    a7[5] = v266;
    a7[6] = v267;
    a7[7] = v268;
    v269 = vmlaq_n_f32(v257, vsubq_f32(v258, v257), *&v14);
    v270 = vmlaq_n_f32(v259, vsubq_f32(v260, v259), *&v14);
    v271 = a7[13];
    v272 = vmlaq_n_f32(v261, vsubq_f32(v262, v261), *&v14);
    v273 = a7[14];
    v274 = vmlaq_n_f32(v263, vsubq_f32(v264, v263), *&v14);
    v275 = a7[15];
    v276 = vsubq_f32(a7[12], v265);
    a7[8] = v269;
    a7[9] = v270;
    a7[10] = v272;
    a7[11] = v274;
    v277 = vmlaq_f32(vmlaq_laneq_f32(vmulq_f32(v207, *a12), *a10, v25, 3), v242, *a11);
    v278 = vmlaq_f32(vmlaq_laneq_f32(vmulq_f32(v208, a12[1]), a10[1], v25, 3), v243, a11[1]);
    v279 = vmlaq_f32(vmlaq_laneq_f32(vmulq_f32(v209, a12[2]), a10[2], v25, 3), v244, a11[2]);
    v280 = vmlaq_f32(vmlaq_laneq_f32(vmulq_f32(v210, a12[3]), a10[3], v25, 3), v245, a11[3]);
    v281 = vmlaq_f32(vmlaq_laneq_f32(vmulq_f32(v211, a12[4]), a10[4], v25, 3), v246, a11[4]);
    v282 = vmlaq_f32(vmlaq_laneq_f32(vmulq_f32(v212, a12[5]), a10[5], v25, 3), v247, a11[5]);
    v283 = a7[1];
    v284 = vmlaq_f32(vmlaq_laneq_f32(vmulq_f32(v214, a12[6]), a10[6], v25, 3), v249, a11[6]);
    v285 = a7[2];
    v286 = vmlaq_f32(vmlaq_laneq_f32(vmulq_f32(v216, a12[7]), a10[7], v25, 3), v251, a11[7]);
    v287 = a7[3];
    v288 = vmlsq_f32(*a7, v277, v277);
    a7[12] = vmlaq_n_f32(v265, v276, *&v14);
    a7[13] = vmlaq_n_f32(v266, vsubq_f32(v271, v266), *&v14);
    a7[14] = vmlaq_n_f32(v267, vsubq_f32(v273, v267), *&v14);
    a7[15] = vmlaq_n_f32(v268, vsubq_f32(v275, v268), *&v14);
    v289 = vmulq_n_f32(vmlsq_f32(a7[5], v282, v282), *&v14);
    v290 = vmulq_n_f32(vmlsq_f32(a7[6], v284, v284), *&v14);
    v291 = vmulq_n_f32(vmlsq_f32(a7[7], v286, v286), *&v14);
    v292 = vmlaq_f32(vmulq_n_f32(v288, *&v14), v277, v277);
    v293 = a7[8];
    v294 = vmlaq_f32(vmulq_n_f32(vmlsq_f32(v283, v278, v278), *&v14), v278, v278);
    v295 = a7[9];
    v296 = vmlaq_f32(vmulq_n_f32(vmlsq_f32(v285, v279, v279), *&v14), v279, v279);
    v297 = a7[10];
    v298 = vmlaq_f32(vmulq_n_f32(vmlsq_f32(v287, v280, v280), *&v14), v280, v280);
    v299 = a7[11];
    v300 = vmlaq_f32(vmulq_n_f32(vmlsq_f32(a7[4], v281, v281), *&v14), v281, v281);
    *a7 = v292;
    v301 = vmlaq_f32(v289, v282, v282);
    a7[1] = v294;
    v302 = vmlaq_f32(v290, v284, v284);
    a7[2] = v296;
    v303 = vmlaq_f32(v291, v286, v286);
    a7[3] = v298;
    a7[4] = v300;
    a7[5] = v301;
    a7[6] = v302;
    a7[7] = v303;
    v304 = vmlaq_n_f32(v292, vsubq_f32(v293, v292), *&v14);
    v305 = vmlaq_n_f32(v294, vsubq_f32(v295, v294), *&v14);
    v306 = a7[13];
    v307 = vmlaq_n_f32(v296, vsubq_f32(v297, v296), *&v14);
    v308 = a7[14];
    v309 = vmlaq_n_f32(v298, vsubq_f32(v299, v298), *&v14);
    v310 = a7[15];
    v311 = vsubq_f32(a7[12], v300);
    a7[8] = v304;
    a7[9] = v305;
    a7[10] = v307;
    a7[11] = v309;
    result = (result + 4);
    a7[12] = vmlaq_n_f32(v300, v311, *&v14);
    a7[13] = vmlaq_n_f32(v301, vsubq_f32(v306, v301), *&v14);
    a7[14] = vmlaq_n_f32(v302, vsubq_f32(v308, v302), *&v14);
    a7[15] = vmlaq_n_f32(v303, vsubq_f32(v310, v303), *&v14);
    if (result >= a9)
    {
      result = 0;
    }

    v312 = a6;
    vst4q_f32(v312, *v277.f32);
    v312 += 16;
    vst4q_f32(v312, *v281.f32);
    v312 += 16;
    vst4q_f32(v312, *v242.f32);
    v312 += 16;
    vst4q_f32(v312, *v246.f32);
    *a5 = v26.i64[1];
    vld4q_f32(v313);
    vld4q_f32(v314);
  }

  return result;
}

uint64_t sub_1C978BBF8(_DWORD *a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return sub_1C97A7854(a1);
  }

  else
  {
    return sub_1C97A79E8();
  }
}

uint64_t storeEnumTagSinglePayload for MovieRemix.Request(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

uint64_t sub_1C978BC34(_DWORD *a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return sub_1C97A7854(a1);
  }

  else
  {
    return sub_1C97A79E8();
  }
}

uint64_t sub_1C978BC48(_DWORD *a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return sub_1C97A7854(a1);
  }

  else
  {
    return sub_1C97A79E8();
  }
}

uint64_t sub_1C978BC5C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 40) = v3;
  return result;
}

uint64_t sub_1C978BC90(_DWORD *a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return sub_1C97A7854(a1);
  }

  else
  {
    return sub_1C97A79E8();
  }
}

uint64_t sub_1C978BCA4(_DWORD *a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return sub_1C97A7854(a1);
  }

  else
  {
    return sub_1C97A79E8();
  }
}

uint64_t storeEnumTagSinglePayload for Time(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 24) = v3;
  return result;
}

uint64_t sub_1C978BCE4(_DWORD *a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return sub_1C97A7854(a1);
  }

  else
  {
    return sub_1C97A79E8();
  }
}

uint64_t sub_1C978BD50@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C97A4D44();
  *a1 = result;
  return result;
}

_DWORD *sub_1C978BD7C@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

void *sub_1C978BD98@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1C978BDF8()
{

  sub_1C97A7DFC();

  return swift_deallocObject();
}

uint64_t sub_1C978BE58()
{
  sub_1C97A7CF4();

  return swift_deallocObject();
}

uint64_t sub_1C978BE8C()
{

  sub_1C97A7DFC();

  return swift_deallocObject();
}

uint64_t sub_1C978BECC()
{

  return swift_deallocObject();
}

uint64_t sub_1C978BF14()
{
  sub_1C97A6368(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  sub_1C97A6390(*(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120));

  return swift_deallocObject();
}

uint64_t sub_1C978BF6C()
{
  sub_1C97A7CF4();

  return swift_deallocObject();
}

uint64_t sub_1C978BFAC()
{

  sub_1C97A7CF4();

  return swift_deallocObject();
}

uint64_t sub_1C978BFE0()
{

  return swift_deallocObject();
}

uint64_t sub_1C978C018()
{
  sub_1C97A6B9C(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_1C978C05C()
{
  sub_1C97A6390(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));

  return swift_deallocObject();
}

uint64_t sub_1C978C0B4(_DWORD *a1, int a2)
{
  if (a2 && *(a1 + 12))
  {
    return sub_1C97A7854(a1);
  }

  else
  {
    return sub_1C97A79E8();
  }
}

uint64_t storeEnumTagSinglePayload for SNSystemConfiguration(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 12) = v3;
  return result;
}

uint64_t sub_1C978C11C()
{

  sub_1C97AA878();

  return swift_deallocObject();
}

uint64_t sub_1C978C150()
{
  if (*(v0 + 16))
  {
  }

  sub_1C97AA868();

  return swift_deallocObject();
}

uint64_t sub_1C978C190()
{

  sub_1C97AA878();

  return swift_deallocObject();
}

uint64_t sub_1C978C1C4()
{

  sub_1C97AA868();

  return swift_deallocObject();
}

uint64_t sub_1C978C27C()
{

  return swift_deallocObject();
}

uint64_t sub_1C978C2B4()
{
  sub_1C97AEB3C();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_1C978C330()
{

  return swift_deallocObject();
}

uint64_t sub_1C978C3C8@<X0>(uint64_t *a1@<X8>)
{
  result = SNKShotLabel.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1C978C4C8()
{

  sub_1C97AA878();

  return swift_deallocObject();
}

id sub_1C978C54C()
{
  sub_1C97BE038();
  result = sub_1C97B0FA4();
  *v0 = result;
  return result;
}

id sub_1C978C578()
{
  sub_1C97BE038();
  result = sub_1C97B1B1C();
  *v0 = result;
  return result;
}

uint64_t sub_1C978C5D4()
{
  sub_1C97BE038();
  result = sub_1C97B2DA4();
  *v0 = result;
  return result;
}

void sub_1C978C600()
{
  sub_1C97BE038();
  sub_1C97B3088();
  *v0 = v1;
}

uint64_t sub_1C978C62C()
{
  sub_1C97BE038();
  result = sub_1C97B3394();
  *v0 = result;
  return result;
}

void sub_1C978C658()
{
  sub_1C97BE038();
  sub_1C97B35FC();
  *v0 = v1;
}

id sub_1C978C684()
{
  sub_1C97BE038();
  result = sub_1C97B3898();
  *v0 = result;
  return result;
}

uint64_t sub_1C978C6E0()
{
  sub_1C97BE038();
  result = sub_1C97B4904();
  *v0 = result;
  return result;
}

id sub_1C978C85C()
{
  sub_1C97BE038();
  result = sub_1C97B59E0();
  *v0 = result;
  return result;
}

void sub_1C978C888()
{
  sub_1C97BE038();
  sub_1C97B5B44();
  *v0 = v1;
}

id sub_1C978C8B4()
{
  sub_1C97BE038();
  result = sub_1C97B6040();
  *v0 = result;
  return result;
}

uint64_t sub_1C978C8F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = sub_1C9A91558();

  return sub_1C97ABF20(a1 + v5, a2, v6);
}

uint64_t sub_1C978C944(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = sub_1C9A91558();

  return sub_1C97ACC50(a1 + v6, a2, a2, v7);
}

uint64_t sub_1C978C99C()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1C978C9D4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1C978CA0C()
{

  return swift_deallocObject();
}

uint64_t sub_1C978CB10()
{

  return swift_deallocObject();
}

uint64_t sub_1C978CB48()
{

  sub_1C97AA878();

  return swift_deallocObject();
}

uint64_t sub_1C978CBD8()
{

  return swift_deallocObject();
}

uint64_t sub_1C978CC7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C97C52E8(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C978CE50()
{

  sub_1C97AA878();

  return swift_deallocObject();
}

uint64_t sub_1C978CE84()
{

  sub_1C97A7DFC();

  return swift_deallocObject();
}

uint64_t sub_1C978CEB8()
{

  sub_1C97DAA28();

  return swift_deallocObject();
}

uint64_t sub_1C978CEEC()
{

  sub_1C97DAA28();

  return swift_deallocObject();
}

uint64_t sub_1C978CF3C()
{
  sub_1C9A91748();
  sub_1C97DA940();
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v2);
  v4 = (v0 + v3);
  if (*(v0 + v3 + 40))
  {
  }

  else
  {
    sub_1C97A592C(v4);
  }

  return swift_deallocObject();
}

uint64_t sub_1C978D010()
{

  sub_1C97A7DFC();

  return swift_deallocObject();
}

void sub_1C978D0F0()
{
  sub_1C97BE460();
  sub_1C97E86C0(v1);
  sub_1C97A2CEC(&qword_1EC3C73B8);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v2);
  sub_1C97AEA4C();
  sub_1C97E89B8();
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1C97E858C();
  v0(v4);
  sub_1C97A2CEC(&unk_1EC3C73C8);
  sub_1C97E854C();
  sub_1C97E89A0(v5);
  sub_1C97E85D0();
  sub_1C97E8A18();
  sub_1C97E8518();
  sub_1C97AE67C(v6, &qword_1EC3C73B8);
  sub_1C97E8530();
  sub_1C97AE67C(v7, v8);
  sub_1C97E8628();
  v9 = sub_1C97E87D8();
  v10(v9);
  v11 = sub_1C97E87C8();
  v12(v11);
  sub_1C97BE478();
}

char *sub_1C978D2F8(char *result, size_t a2, char *a3)
{
  if (a3 != result || &result[a2] <= a3)
  {
    return sub_1C97E8688(a3, result, a2);
  }

  return result;
}

char *sub_1C978D31C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return sub_1C97E8508(a3, result);
  }

  return result;
}

char *sub_1C978D33C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return sub_1C97E8508(a3, result);
  }

  return result;
}

uint64_t sub_1C978D388()
{

  sub_1C97AA878();

  return swift_deallocObject();
}

uint64_t sub_1C978D3C0()
{

  sub_1C97AA878();

  return swift_deallocObject();
}

uint64_t sub_1C978D400()
{

  return swift_deallocObject();
}

uint64_t sub_1C978D4F4()
{
  sub_1C97F07FC();

  return swift_deallocObject();
}

uint64_t sub_1C978D540()
{
  MEMORY[0x1CCA93360](v0 + 16);
  sub_1C97F07FC();

  return swift_deallocObject();
}

uint64_t sub_1C978D574()
{

  swift_unknownObjectRelease();

  sub_1C97DAA28();

  return swift_deallocObject();
}

uint64_t sub_1C978D5F4()
{
  _Block_release(*(v0 + 16));
  sub_1C97F07FC();

  return swift_deallocObject();
}

uint64_t sub_1C978D628()
{

  sub_1C97AA878();

  return swift_deallocObject();
}

uint64_t sub_1C978D65C()
{

  sub_1C97A7DFC();

  return swift_deallocObject();
}

uint64_t sub_1C978D698()
{

  sub_1C97DAA28();

  return swift_deallocObject();
}

uint64_t sub_1C978D754@<X0>(uint64_t *a1@<X8>)
{
  sub_1C97F97D4();
  sub_1C97AA928();
  result = swift_allocError();
  *a1 = result;
  return result;
}

uint64_t sub_1C978D790()
{

  sub_1C97AA878();

  return swift_deallocObject();
}

uint64_t sub_1C978D7C4()
{
  sub_1C97A6B9C(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_1C978D820()
{
  sub_1C97A592C(v0 + 16);
  sub_1C97A6B9C(*(v0 + 56), *(v0 + 64), *(v0 + 72));

  return swift_deallocObject();
}

uint64_t sub_1C978D884()
{

  return swift_deallocObject();
}

uint64_t sub_1C978D8C4()
{

  sub_1C97AA878();

  return swift_deallocObject();
}

uint64_t sub_1C978D9B0()
{

  return swift_deallocObject();
}

uint64_t sub_1C978DA18()
{

  return swift_deallocObject();
}

uint64_t sub_1C978DA78()
{

  return swift_deallocObject();
}

uint64_t sub_1C978DAE0()
{

  return swift_deallocObject();
}

uint64_t sub_1C978DB98()
{

  return swift_deallocObject();
}

uint64_t sub_1C978DBD8()
{

  return swift_deallocObject();
}

uint64_t sub_1C978DC38()
{

  sub_1C97AA878();

  return swift_deallocObject();
}

uint64_t sub_1C978DC7C()
{

  sub_1C97AA878();

  return swift_deallocObject();
}

uint64_t sub_1C978DCB0()
{

  return swift_deallocObject();
}

uint64_t sub_1C978DDCC()
{
  sub_1C97BE038();
  result = SNMovieRemixFinalResult.algorithmVersion.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1C978E01C()
{

  sub_1C98137F8();

  return swift_deallocObject();
}

uint64_t sub_1C978E060()
{
  sub_1C9A91558();
  sub_1C97DA940();
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v2);

  return swift_deallocObject();
}

uint64_t sub_1C978E0F4()
{
  v1 = *(v0 + 48);
  if (v1 != 255)
  {
    sub_1C9812AE0(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), v1 & 1);
  }

  return swift_deallocObject();
}

void *sub_1C978E15C@<X0>(void **a1@<X0>, void *a2@<X1>, uint64_t (*a3)(void **)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void (*a6)(void)@<X5>, void *a7@<X8>)
{
  result = sub_1C9811F4C(*a1, a2, a3, a4, a5, a6);
  if (!v7)
  {
    *a7 = result;
  }

  return result;
}

uint64_t sub_1C978E1AC()
{

  sub_1C97AA878();

  return swift_deallocObject();
}

uint64_t sub_1C978E1E4()
{
  sub_1C97F07FC();

  return swift_deallocObject();
}

uint64_t sub_1C978E218()
{

  return swift_deallocObject();
}

uint64_t sub_1C978E260()
{

  sub_1C97AA878();

  return swift_deallocObject();
}

uint64_t sub_1C978E298()
{
  _Block_release(*(v0 + 16));
  sub_1C97F07FC();

  return swift_deallocObject();
}

uint64_t sub_1C978E34C()
{

  return swift_deallocObject();
}

uint64_t sub_1C978E3C0()
{

  sub_1C97AA878();

  return swift_deallocObject();
}

uint64_t sub_1C978E3F4()
{

  sub_1C98137F8();

  return swift_deallocObject();
}

uint64_t sub_1C978E428()
{
  if (*(v0 + 16))
  {
  }

  sub_1C97A7DFC();

  return swift_deallocObject();
}

uint64_t sub_1C978E4C4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1C978E514()
{

  return swift_deallocObject();
}

uint64_t sub_1C978E554()
{
  MEMORY[0x1CCA93360](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1C978E5A8()
{

  return swift_deallocObject();
}

uint64_t sub_1C978E5E0()
{

  return swift_deallocObject();
}

uint64_t sub_1C978E620()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1C978E660()
{
  swift_weakDestroy();
  sub_1C9823DD8();

  return swift_deallocObject();
}

uint64_t sub_1C978E694()
{
  MEMORY[0x1CCA93360](v0 + 16);
  sub_1C9823DD8();

  return swift_deallocObject();
}

uint64_t sub_1C978E80C@<X0>(uint64_t *a1@<X8>)
{
  result = SNSoundActionsResult.name.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C978E88C()
{

  sub_1C97DAA28();

  return swift_deallocObject();
}

uint64_t sub_1C978E8C8()
{

  sub_1C97AA878();

  return swift_deallocObject();
}

uint64_t sub_1C978E8FC()
{
  sub_1C97A2CEC(&qword_1EC3C8968);
  sub_1C982F984();
  v3 = v2;
  v4 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v3 + 8))(v1 + v4, v0);

  return swift_deallocObject();
}

uint64_t sub_1C978E9D8()
{
  sub_1C97A2CEC(&qword_1EC3C8968);
  sub_1C982F984();
  v3 = v2;
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v1 + v4, v0);

  return swift_deallocObject();
}

uint64_t sub_1C978EAEC()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1C978EB24()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  v1 = *(v0 + 80);
  if (v1 >> 60 != 15)
  {
    sub_1C97A5978(*(v0 + 72), v1);
  }

  return swift_deallocObject();
}

uint64_t sub_1C978EBE4(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1C978ECA8()
{

  sub_1C97AA878();

  return swift_deallocObject();
}

uint64_t sub_1C978ECDC()
{

  sub_1C97AA878();

  return swift_deallocObject();
}

uint64_t sub_1C978ED10()
{
  swift_unknownObjectRelease();
  sub_1C97AA878();

  return swift_deallocObject();
}

uint64_t sub_1C978ED44()
{

  return swift_deallocObject();
}

uint64_t sub_1C978ED8C()
{

  return swift_deallocObject();
}

uint64_t sub_1C978EDCC()
{
  (*(*(*(v0 + 16) - 8) + 8))(v0 + ((*(*(*(v0 + 16) - 8) + 80) + 32) & ~*(*(*(v0 + 16) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t sub_1C978EEA4()
{

  return swift_deallocObject();
}

uint64_t sub_1C978EF04()
{

  return swift_deallocObject();
}

uint64_t sub_1C978EF64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C97A2CEC(&qword_1EC3C7FE0);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_1C97ABF20(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 2)
    {
      return ((v8 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1C978F02C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1C97A2CEC(&qword_1EC3C7FE0);
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_1C97ACC50(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_1C978F17C()
{

  return swift_deallocObject();
}

uint64_t sub_1C978F1B4()
{

  return swift_deallocObject();
}

uint64_t sub_1C978F1EC()
{
  sub_1C9A91558();
  sub_1C97DA940();
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v2);

  return swift_deallocObject();
}

uint64_t sub_1C978F3AC@<X0>(uint64_t *a1@<X8>)
{
  result = SNDirectionOfArrivalResult.spatialSpectrum.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1C978F43C()
{

  return swift_deallocObject();
}

uint64_t sub_1C978F4C4()
{
  sub_1C97BE038();
  result = _SNClassification.identifier.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

void sub_1C978F540()
{
  sub_1C97BE038();
  _SNClassificationResult.classificationDictionary.getter();
  *v0 = v1;
}

uint64_t sub_1C978F594()
{
  sub_1C97BE038();
  result = _SNClassificationResult.classifierIdentifier.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C978F5C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C9A916E8();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_1C97ABF20(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 24));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_1C978F66C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1C9A916E8();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_1C97ACC50(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1C978FB20()
{

  return swift_deallocObject();
}

uint64_t sub_1C978FBAC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1C978FBE4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1C978FC24()
{
  swift_unknownObjectRelease();
  sub_1C97AA878();

  return swift_deallocObject();
}

uint64_t sub_1C978FC58()
{

  sub_1C97AA878();

  return swift_deallocObject();
}

uint64_t sub_1C978FCB4()
{

  sub_1C97AA878();

  return swift_deallocObject();
}

uint64_t sub_1C978FED4()
{

  sub_1C98137F8();

  return swift_deallocObject();
}

uint64_t sub_1C978FF50@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C9867F7C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1C978FF84()
{

  sub_1C97AA878();

  return swift_deallocObject();
}

uint64_t sub_1C978FFC8()
{
  v1 = sub_1C97A2CEC(&qword_1EC3C9AE8);
  sub_1C97AE9C8();
  v3 = v2;
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);

  (*(v3 + 8))(v0 + v4, v1);

  return swift_deallocObject();
}

uint64_t sub_1C97900B4()
{

  return swift_deallocObject();
}

uint64_t sub_1C97900EC()
{

  sub_1C97AA878();

  return swift_deallocObject();
}

uint64_t sub_1C9790238()
{

  return swift_deallocObject();
}

uint64_t sub_1C9790270()
{

  return swift_deallocObject();
}

uint64_t sub_1C97902B0()
{

  sub_1C97F07FC();

  return swift_deallocObject();
}

uint64_t sub_1C97902E4()
{

  return swift_deallocObject();
}

uint64_t sub_1C979031C()
{

  return swift_deallocObject();
}

uint64_t sub_1C9790364()
{

  return swift_deallocObject();
}

uint64_t sub_1C97903EC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1C979043C()
{

  return swift_deallocObject();
}

uint64_t sub_1C97904C4()
{

  sub_1C97AA878();

  return swift_deallocObject();
}

uint64_t sub_1C97904F8()
{

  sub_1C97AA878();

  return swift_deallocObject();
}

uint64_t sub_1C979057C()
{

  sub_1C97AA878();

  return swift_deallocObject();
}

uint64_t sub_1C9790930()
{

  sub_1C97AA878();

  return swift_deallocObject();
}

uint64_t sub_1C9790964()
{
  MEMORY[0x1CCA93360](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1C979099C()
{

  return swift_deallocObject();
}

uint64_t sub_1C97909DC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1C9790A24()
{

  sub_1C97AA878();

  return swift_deallocObject();
}

uint64_t sub_1C9790A60()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1C9790C44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_1C9A93B18() & 1;
  }
}

uint64_t sub_1C9790C88()
{

  sub_1C97F07FC();

  return swift_deallocObject();
}

uint64_t sub_1C9790E08()
{

  sub_1C97DAA28();

  return swift_deallocObject();
}

uint64_t sub_1C9790EF8()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1C97AE9DC();
  v3 = v2;
  v4 = (*(v2 + 80) + 72) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v3 + 8))(v0 + v4, AssociatedTypeWitness);

  return swift_deallocObject();
}

uint64_t sub_1C97910B0()
{

  sub_1C97AA878();

  return swift_deallocObject();
}

uint64_t sub_1C97910E4()
{
  swift_unknownObjectRelease();
  sub_1C97AA878();

  return swift_deallocObject();
}

uint64_t sub_1C979111C()
{

  sub_1C97AA878();

  return swift_deallocObject();
}

uint64_t sub_1C9791150()
{
  (*(*(*(v0 + 16) - 8) + 8))(v0 + ((*(*(*(v0 + 16) - 8) + 80) + 32) & ~*(*(*(v0 + 16) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t sub_1C97911D0()
{

  return swift_deallocObject();
}

uint64_t sub_1C9791210()
{

  return swift_deallocObject();
}

uint64_t sub_1C9791308()
{

  return swift_deallocObject();
}

uint64_t sub_1C979136C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C9A91A68();

  return sub_1C97ABF20(a1, a2, v4);
}

uint64_t sub_1C97913B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C9A91A68();

  return sub_1C97ACC50(a1, a2, a2, v4);
}

uint64_t sub_1C9791464()
{

  return swift_deallocObject();
}

uint64_t sub_1C97914F4()
{

  return swift_deallocObject();
}

uint64_t sub_1C979152C()
{

  return swift_deallocObject();
}

uint64_t sub_1C97915EC()
{

  return swift_deallocObject();
}

uint64_t sub_1C9791634@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C98C4B84(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1C979167C()
{
  sub_1C97F07FC();

  return swift_deallocObject();
}

uint64_t sub_1C97916B0()
{
  if (*(v0 + 16) != 1)
  {
  }

  sub_1C97F07FC();

  return swift_deallocObject();
}

uint64_t sub_1C97916EC()
{
  (*(*(*(v0 + 16) - 8) + 8))(v0 + ((*(*(*(v0 + 16) - 8) + 80) + 32) & ~*(*(*(v0 + 16) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t sub_1C979176C()
{
  sub_1C97F07FC();

  return swift_deallocObject();
}

uint64_t sub_1C97917A0()
{
  swift_unknownObjectRelease();
  sub_1C97F07FC();

  return swift_deallocObject();
}

uint64_t sub_1C97917D8()
{

  sub_1C97AA878();

  return swift_deallocObject();
}

uint64_t sub_1C979180C()
{

  sub_1C97F07FC();

  return swift_deallocObject();
}

uint64_t sub_1C9791A68()
{

  sub_1C97AA878();

  return swift_deallocObject();
}

uint64_t sub_1C9791A9C()
{
  v1 = *(v0 + 24);
  if (v1 >> 60 != 15)
  {
    sub_1C97A5978(*(v0 + 16), v1);
  }

  sub_1C97AA878();

  return swift_deallocObject();
}

uint64_t sub_1C9791B2C@<X0>(_BYTE *a1@<X8>)
{
  result = SNSpeechUtteranceResult.detected.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1C9791BDC()
{

  return swift_deallocObject();
}

void sub_1C9791C14(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  sub_1C98D15D4(a1, a2, a3);
  if (!v4)
  {
    *a4 = v6;
  }
}

uint64_t sub_1C9791C7C()
{

  return swift_deallocObject();
}

uint64_t sub_1C9791CBC()
{

  return swift_deallocObject();
}

uint64_t sub_1C9791CF4()
{

  return swift_deallocObject();
}

uint64_t sub_1C9791DDC()
{

  return swift_deallocObject();
}

uint64_t sub_1C9791E14()
{

  return swift_deallocObject();
}

uint64_t sub_1C9791E80()
{

  sub_1C97AA878();

  return swift_deallocObject();
}

uint64_t sub_1C9791ED4()
{

  sub_1C97AA878();

  return swift_deallocObject();
}

uint64_t sub_1C9791F10()
{

  sub_1C97AA878();

  return swift_deallocObject();
}

uint64_t sub_1C9791F44()
{

  return swift_deallocObject();
}

uint64_t sub_1C9791F7C()
{

  sub_1C97DAA28();

  return swift_deallocObject();
}

uint64_t sub_1C9791FB0()
{

  sub_1C97DAA28();

  return swift_deallocObject();
}

uint64_t sub_1C9791FE4()
{
  sub_1C97AA878();

  return swift_deallocObject();
}

uint64_t sub_1C9792034()
{
  v1 = sub_1C97A2CEC(&qword_1EC3CBC48);
  sub_1C97AE9C8();
  v3 = v2;
  v4 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v3 + 8))(v0 + v4, v1);

  return swift_deallocObject();
}

uint64_t sub_1C97920F8()
{
  sub_1C97F07FC();

  return swift_deallocObject();
}

uint64_t sub_1C9792140()
{

  sub_1C97AA878();

  return swift_deallocObject();
}

uint64_t sub_1C979217C()
{

  sub_1C97DAA28();

  return swift_deallocObject();
}

uint64_t sub_1C97921FC()
{

  return swift_deallocObject();
}

uint64_t sub_1C979226C()
{

  sub_1C97AA878();

  return swift_deallocObject();
}

uint64_t sub_1C97922A0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1C97922D8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1C9792328()
{

  sub_1C97AA878();

  return swift_deallocObject();
}

uint64_t sub_1C979235C()
{

  return swift_deallocObject();
}

uint64_t sub_1C9792394()
{

  return swift_deallocObject();
}

uint64_t sub_1C97923D4()
{
  sub_1C97A592C(v0 + 16);
  sub_1C98137F8();

  return swift_deallocObject();
}

uint64_t sub_1C9792408()
{

  sub_1C98137F8();

  return swift_deallocObject();
}

id sub_1C9792478@<X0>(void *a1@<X8>)
{
  result = SNShazamSignatureResult.signature.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1C97924A8@<X0>(uint64_t *a1@<X8>)
{
  result = SNShazamSignatureResult.sequenceNum.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1C9792568(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C98EE70C();
  v6 = sub_1C9A916E8();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(a3 + 20);
  }

  else
  {
    v7 = type metadata accessor for SNAOPReport.Payload(0);
    v8 = *(a3 + 28);
  }

  return sub_1C97ABF20(v3 + v8, a2, v7);
}

uint64_t sub_1C9792600(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1C9A916E8();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(a4 + 20);
  }

  else
  {
    v9 = type metadata accessor for SNAOPReport.Payload(0);
    v10 = *(a4 + 28);
  }

  return sub_1C97ACC50(a1 + v10, a2, a2, v9);
}

void sub_1C9792740(id a1, char a2)
{
  if (a2 != -1)
  {
    sub_1C9792754(a1, a2);
  }
}

void sub_1C9792754(id a1, char a2)
{
  if (a2 == 1)
  {
  }
}

id sub_1C9792768(id result, char a2)
{
  if (a2 == 1)
  {
    return result;
  }

  return result;
}

uint64_t sub_1C979278C()
{

  return swift_deallocObject();
}

uint64_t sub_1C9792854()
{
  v3 = *(v0 + 16);
  v1 = *(type metadata accessor for SliceWithStride() - 8);
  (*(*(v3 - 8) + 8))(v0 + ((*(v1 + 80) + 72) & ~*(v1 + 80)));
  return swift_deallocObject();
}

uint64_t sub_1C9792934()
{
  v1 = *(v0 + 16);
  v2 = *(type metadata accessor for MaximumSlice() - 8);
  (*(*(v1 - 8) + 8))(v0 + ((*(v2 + 80) + 56) & ~*(v2 + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1C9792A64()
{
  v1 = *(type metadata accessor for AccessibilitySoundActions.Session() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  sub_1C9A91748();
  sub_1C97DA940();
  (*(v3 + 8))(v0 + v2);

  return swift_deallocObject();
}

uint64_t sub_1C9792B44()
{
  sub_1C97A2CEC(&qword_1EC3CC190);
  sub_1C97DA940();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_1C9792BD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C9A91748();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_1C97ABF20(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_1C9792C80(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1C9A91748();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_1C97ACC50(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1C9792D50()
{
  sub_1C97A592C(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1C9792DB0()
{

  return swift_deallocObject();
}

uint64_t sub_1C9792ED4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1C9792FA8()
{

  return swift_deallocObject();
}

uint64_t sub_1C979302C()
{
  MEMORY[0x1CCA93360](v0 + 16);
  sub_1C97AA878();

  return swift_deallocObject();
}

uint64_t sub_1C9793060()
{

  sub_1C9911528();

  return swift_deallocObject();
}

uint64_t sub_1C9793094()
{
  MEMORY[0x1CCA93360](v0 + 16);
  sub_1C97F07FC();

  return swift_deallocObject();
}

uint64_t sub_1C97930D8()
{
  swift_unknownObjectRelease();
  sub_1C97AA878();

  return swift_deallocObject();
}

uint64_t sub_1C9793110()
{

  sub_1C97AA878();

  return swift_deallocObject();
}

uint64_t sub_1C9793378()
{

  return swift_deallocObject();
}

uint64_t sub_1C9793458()
{
  swift_weakDestroy();
  sub_1C97F07FC();

  return swift_deallocObject();
}

uint64_t sub_1C979348C()
{
  swift_unknownObjectRelease();

  sub_1C97DAA28();

  return swift_deallocObject();
}

uint64_t sub_1C97934C8()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1C9793510()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1C9793560()
{
  MEMORY[0x1CCA93360](v0 + 16);
  sub_1C97F07FC();

  return swift_deallocObject();
}

uint64_t sub_1C9793594()
{

  swift_unknownObjectRelease();

  sub_1C97DAA28();

  return swift_deallocObject();
}

uint64_t sub_1C97935D8()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1C9793730()
{
  sub_1C985DB04();

  return swift_deallocObject();
}

uint64_t sub_1C9793768()
{

  return swift_deallocObject();
}

uint64_t sub_1C97937B8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1C979381C()
{

  sub_1C985DB04();

  return swift_deallocObject();
}

unint64_t sub_1C97938B8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  result = sub_1C99231E8(*a1, a2, *v3);
  *a3 = result;
  return result;
}

unsigned __int8 *sub_1C979390C@<X0>(unsigned __int8 *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1C97939FC()
{

  return swift_deallocObject();
}

uint64_t sub_1C9793A34()
{
  v1 = sub_1C97A2CEC(&qword_1EC3CD120);
  sub_1C97AE9C8();
  v3 = v2;
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v0 + v4, v1);

  return swift_deallocObject();
}

uint64_t sub_1C9793AF8()
{

  return swift_deallocObject();
}

uint64_t sub_1C9793B30()
{

  return swift_deallocObject();
}

uint64_t sub_1C9793BB8()
{

  swift_unknownObjectRelease();

  sub_1C992B2A4();

  return swift_deallocObject();
}

uint64_t sub_1C9793BFC()
{
  swift_unknownObjectRelease();

  sub_1C992B2A4();

  return swift_deallocObject();
}

uint64_t sub_1C9793CC0()
{

  return swift_deallocObject();
}

uint64_t sub_1C9793EFC()
{
  sub_1C97A592C(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1C9793F34()
{
  v1 = sub_1C97A2CEC(&qword_1EC3CB4F0);
  sub_1C97AE9C8();
  v3 = v2;
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);

  (*(v3 + 8))(v0 + v4, v1);

  return swift_deallocObject();
}

uint64_t sub_1C9793FF8()
{

  sub_1C97AA878();

  return swift_deallocObject();
}

uint64_t sub_1C979402C()
{

  return swift_deallocObject();
}

uint64_t sub_1C979408C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C9A91748();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_1C97ABF20(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_1C9794138(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1C9A91748();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_1C97ACC50(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1C9794278()
{
  swift_unknownObjectRelease();
  sub_1C9823DD8();

  return swift_deallocObject();
}

uint64_t sub_1C97942A8()
{
  MEMORY[0x1CCA93360](v0 + 16);
  sub_1C9823DD8();

  return swift_deallocObject();
}

uint64_t sub_1C97942DC()
{
  swift_weakDestroy();
  sub_1C9823DD8();

  return swift_deallocObject();
}

uint64_t sub_1C979430C()
{

  return swift_deallocObject();
}

uint64_t sub_1C979434C()
{

  return swift_deallocObject();
}

uint64_t sub_1C9794384()
{

  sub_1C9823DD8();

  return swift_deallocObject();
}

uint64_t sub_1C97943B4()
{

  return swift_deallocObject();
}

uint64_t sub_1C979440C()
{

  return swift_deallocObject();
}

uint64_t sub_1C9794464()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1C97944DC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1C9794514()
{

  sub_1C994E5C0();

  return swift_deallocObject();
}

uint64_t sub_1C9794558()
{

  sub_1C994E5C0();

  return swift_deallocObject();
}

uint64_t sub_1C97945A8()
{
  swift_unknownObjectRelease();

  sub_1C97A592C(v0 + 40);
  sub_1C97A7CF4();

  return swift_deallocObject();
}

uint64_t sub_1C97945EC()
{

  sub_1C97AA878();

  return swift_deallocObject();
}

uint64_t sub_1C9794620()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1C9794670()
{
  swift_unknownObjectRelease();

  sub_1C97A7CF4();

  return swift_deallocObject();
}

uint64_t sub_1C9794714()
{

  return swift_deallocObject();
}

uint64_t sub_1C979475C()
{

  return swift_deallocObject();
}

uint64_t sub_1C97948E8(char a1)
{
  if (a1)
  {
    return 0x6D6F74737563;
  }

  else
  {
    return 0x6E49746C697562;
  }
}

uint64_t sub_1C9794924@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C995CC84();
  *a1 = result;
  return result;
}

uint64_t sub_1C97949B0()
{
  v1 = *(type metadata accessor for AccessibilitySoundRecognition.Session(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  sub_1C9A91748();
  sub_1C97DA940();
  (*(v3 + 8))(v0 + v2);

  return swift_deallocObject();
}

uint64_t sub_1C9794A90()
{
  sub_1C97A2CEC(&qword_1EC3CC308);
  sub_1C97DA940();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_1C9794B1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C9A91748();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_1C97ABF20(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_1C9794BC8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1C98EE70C();
  result = sub_1C9A91748();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_1C97ACC50(v4, a2, a2, result);
  }

  else
  {
    *(v4 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1C9794CB4()
{

  sub_1C97AA878();

  return swift_deallocObject();
}

uint64_t sub_1C9794CF0()
{

  sub_1C97F07FC();

  return swift_deallocObject();
}

uint64_t sub_1C9794D24()
{

  sub_1C97AA878();

  return swift_deallocObject();
}

uint64_t sub_1C9794D58()
{

  return swift_deallocObject();
}

uint64_t sub_1C9794DA0()
{

  sub_1C97DAA28();

  return swift_deallocObject();
}

uint64_t sub_1C9794DE4()
{

  sub_1C97A592C(v0 + 224);

  return swift_deallocObject();
}

uint64_t sub_1C9794EDC()
{
  v1 = sub_1C97A2CEC(&qword_1EC3CB598);
  sub_1C97AE9C8();
  v3 = v2;
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);

  (*(v3 + 8))(v0 + v4, v1);

  return swift_deallocObject();
}

uint64_t sub_1C9794FA0()
{

  return swift_deallocObject();
}

uint64_t sub_1C97950B8()
{
  v1 = *(v0 + 16);
  sub_1C97AE9DC();
  v3 = v2;
  v4 = (*(v2 + 80) + 240) & ~*(v2 + 80);

  (*(v3 + 8))(v0 + v4, v1);

  return swift_deallocObject();
}

uint64_t sub_1C9795240()
{

  return swift_deallocObject();
}

uint64_t sub_1C9795288()
{

  return swift_deallocObject();
}

uint64_t sub_1C97952D0()
{

  return swift_deallocObject();
}

uint64_t sub_1C979574C()
{
  sub_1C97BE038();
  result = SNSpeechEmotionResult.modelIdentifier.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C979587C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1C9795A00()
{

  sub_1C97DAA28();

  return swift_deallocObject();
}

uint64_t sub_1C9795A40()
{

  return swift_deallocObject();
}

uint64_t sub_1C9795AE8()
{
  sub_1C97F07FC();

  return swift_deallocObject();
}

uint64_t sub_1C9795B1C()
{
  sub_1C9A91238();
  sub_1C97DA940();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_1C9795BD0()
{

  sub_1C97DAA28();

  return swift_deallocObject();
}

uint64_t sub_1C9795C14()
{

  return swift_deallocObject();
}

uint64_t sub_1C9795C7C()
{
  v1 = *(v0 + 24);
  if (v1 >> 60 != 15)
  {
    sub_1C97A5978(*(v0 + 16), v1);
  }

  return swift_deallocObject();
}

uint64_t sub_1C9795CC4()
{
  sub_1C9A91238();
  sub_1C97DA940();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_1C9795D58()
{

  sub_1C97DAA28();

  return swift_deallocObject();
}

uint64_t sub_1C9795D94()
{
  v1 = sub_1C9A91558();
  sub_1C97AE9C8();
  v3 = v2;
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v6 = *(v5 + 64);
  v7 = sub_1C9A91238();
  sub_1C97AE9C8();
  v9 = v8;
  v10 = (v4 + v6 + *(v8 + 80)) & ~*(v8 + 80);
  (*(v3 + 8))(v0 + v4, v1);
  (*(v9 + 8))(v0 + v10, v7);

  return swift_deallocObject();
}

uint64_t sub_1C9795EE8()
{

  return swift_deallocObject();
}

uint64_t sub_1C9795F20()
{
  sub_1C97F07FC();

  return swift_deallocObject();
}

uint64_t sub_1C9795F88()
{

  return swift_deallocObject();
}

uint64_t sub_1C9796060()
{

  sub_1C97A7DFC();

  return swift_deallocObject();
}

uint64_t sub_1C9796138()
{

  return swift_deallocObject();
}

uint64_t sub_1C9796170()
{

  return swift_deallocObject();
}

uint64_t sub_1C9796204@<X0>(uint64_t *a1@<X8>)
{
  result = SNSoundActionCommand.minDurationBlocks.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1C9796258@<X0>(uint64_t *a1@<X8>)
{
  result = SNSoundActionCommand.name.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C97962F4()
{

  sub_1C97AA878();

  return swift_deallocObject();
}

uint64_t sub_1C9796358()
{
  sub_1C97AEB3C();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_1C979643C()
{

  sub_1C97DAA28();

  return swift_deallocObject();
}

uint64_t sub_1C9796470()
{
  v1 = sub_1C9A929D8();
  sub_1C97AE9C8();
  v3 = v2;
  v4 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v3 + 8))(v0 + v4, v1);

  return swift_deallocObject();
}

uint64_t sub_1C9796534()
{
  v1 = sub_1C9A929D8();
  sub_1C97AE9C8();
  v3 = v2;
  v4 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v0 + v4, v1);

  return swift_deallocObject();
}

uint64_t sub_1C9796608()
{

  return swift_deallocObject();
}

uint64_t sub_1C9796640()
{
  v1 = sub_1C97A2CEC(&unk_1EC3CF2A0);
  sub_1C97BE2AC(v1);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = sub_1C9A936C8();
  if (!sub_1C97ABF20(v0 + v3, 1, v4))
  {
    sub_1C97AEB3C();
    (*(v5 + 8))(v0 + v3, v4);
  }

  return swift_deallocObject();
}

uint64_t sub_1C979675C@<X0>(uint64_t *a1@<X8>)
{
  result = SNFeaturePrint.featurePrintType.getter();
  *a1 = result;
  return result;
}

id sub_1C97967B0@<X0>(void *a1@<X8>)
{
  result = SNFeaturePrint.featureVector.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1C979685C()
{

  sub_1C97AA878();

  return swift_deallocObject();
}

uint64_t sub_1C9796890()
{
  swift_weakDestroy();
  sub_1C97F07FC();

  return swift_deallocObject();
}

uint64_t sub_1C97968C4()
{

  sub_1C98137F8();

  return swift_deallocObject();
}

uint64_t sub_1C9796910()
{
  swift_unknownObjectRelease();
  sub_1C97AA878();

  return swift_deallocObject();
}

uint64_t sub_1C9796944()
{

  sub_1C97F07FC();

  return swift_deallocObject();
}

uint64_t sub_1C9796978()
{

  sub_1C98137F8();

  return swift_deallocObject();
}

uint64_t sub_1C9796A54()
{

  return swift_deallocObject();
}

uint64_t sub_1C9796A9C()
{
  v1 = *(_s21CollectionTimestamperVMa() - 8);
  v2 = (*(v1 + 80) + 104) & ~*(v1 + 80);

  sub_1C97AEB3C();
  (*(v3 + 8))(v0 + v2);

  return swift_deallocObject();
}

uint64_t sub_1C9796BCC()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1C9796C04()
{

  return swift_deallocObject();
}

uint64_t sub_1C9796C3C()
{

  return swift_deallocObject();
}

uint64_t sub_1C9796CA8()
{

  return swift_deallocObject();
}

uint64_t sub_1C9796CF8()
{

  v1 = v0[9];
  if (v1 >> 60 != 15)
  {
    sub_1C97A5978(v0[8], v1);
  }

  if (v0[10])
  {
  }

  sub_1C99B4848();

  return swift_deallocObject();
}

uint64_t sub_1C9796D6C()
{

  sub_1C99B4848();

  return swift_deallocObject();
}

uint64_t sub_1C9796DC8()
{

  sub_1C97AA878();

  return swift_deallocObject();
}

uint64_t sub_1C9796DFC()
{
  (*(*(*(v0 + 16) - 8) + 8))(v0 + ((*(*(*(v0 + 16) - 8) + 80) + 32) & ~*(*(*(v0 + 16) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t sub_1C9797348()
{

  return swift_deallocObject();
}

uint64_t sub_1C97973D0()
{

  return swift_deallocObject();
}

uint64_t sub_1C97974A8()
{
  sub_1C9A91558();
  sub_1C97DA940();
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v2);

  return swift_deallocObject();
}

uint64_t sub_1C979753C()
{

  return swift_deallocObject();
}

uint64_t sub_1C9797574()
{
  sub_1C97F07FC();

  return swift_deallocObject();
}

uint64_t sub_1C97975D8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1C9797638()
{

  return swift_deallocObject();
}

uint64_t sub_1C97976F8()
{

  return swift_deallocObject();
}

uint64_t sub_1C97977B4()
{

  return swift_deallocObject();
}

uint64_t sub_1C9797838()
{

  sub_1C97AA878();

  return swift_deallocObject();
}

uint64_t sub_1C979786C()
{

  sub_1C97AA878();

  return swift_deallocObject();
}

uint64_t sub_1C97978D0()
{

  return swift_deallocObject();
}

uint64_t sub_1C9797908()
{

  sub_1C97A7DFC();

  return swift_deallocObject();
}

uint64_t sub_1C979793C()
{
  (*(*(*(v0 + 24) - 8) + 8))(v0 + ((*(*(*(v0 + 24) - 8) + 80) + 40) & ~*(*(*(v0 + 24) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t sub_1C9797ABC()
{
  sub_1C97BE038();
  result = SNDetectionResult.detected.getter();
  *v0 = result & 1;
  return result;
}

uint64_t sub_1C9797B10()
{
  sub_1C97BE038();
  result = SNDetectionResult.identifier.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C9797B64()
{
  sub_1C97BE038();
  result = SNDetectionResult.detectorIdentifier.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C9797CB0()
{

  sub_1C97AA878();

  return swift_deallocObject();
}

uint64_t sub_1C9797CF8()
{

  return swift_deallocObject();
}

uint64_t sub_1C9797E30()
{
  if (*(v0 + 40))
  {
    sub_1C97A592C(v0 + 16);
  }

  return swift_deallocObject();
}

uint64_t sub_1C9797F10()
{

  sub_1C97F07FC();

  return swift_deallocObject();
}

uint64_t sub_1C9797F44()
{
  sub_1C97F07FC();

  return swift_deallocObject();
}

uint64_t sub_1C9797FDC(uint64_t a1)
{
  v2 = sub_1C97A7CA0(a1);
  result = sub_1C99E9D98(v2);
  *v1 = result;
  return result;
}

uint64_t sub_1C9798004(uint64_t a1)
{
  v2 = sub_1C97BE38C(a1);
  result = sub_1C99E9D98(v2);
  *v1 = result;
  return result;
}

uint64_t sub_1C979802C()
{
  sub_1C99ECE30();
  sub_1C99ECE70();
  swift_getWitnessTable();
  v0 = sub_1C99ECE44();

  return MEMORY[0x1EEE69830](v0, v1, v2, v3, v4);
}

uint64_t sub_1C9798088()
{
  sub_1C99ECE18();
  sub_1C99ECE70();
  swift_getWitnessTable();
  sub_1C99ECDFC();

  return sub_1C9A92BB8();
}

uint64_t sub_1C97980D8()
{
  sub_1C981E34C();
  sub_1C99ECE70();
  swift_getWitnessTable();
  v0 = sub_1C998D474();

  return MEMORY[0x1EEE69840](v0, v1, v2, v3, v4);
}

uint64_t sub_1C9798144(uint64_t a1)
{
  v2 = sub_1C97A7CA0(a1);
  result = sub_1C99E9DB4(v2);
  *v1 = result;
  return result;
}

uint64_t sub_1C979816C(uint64_t a1)
{
  v2 = sub_1C97BE38C(a1);
  result = sub_1C99E9DB4(v2);
  *v1 = result;
  return result;
}

double sub_1C97981B0()
{
  v0.n128_f64[0] = sub_1C99E773C(v11);
  *&result = sub_1C99ED030(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11[0], v11[1], v0, v12).n128_u64[0];
  return result;
}

uint64_t sub_1C979824C(uint64_t a1)
{
  v2 = sub_1C97A7CA0(a1);
  result = sub_1C99E9AD0(v2);
  *v1 = result;
  return result;
}

uint64_t sub_1C9798274(uint64_t a1)
{
  v2 = sub_1C97BE38C(a1);
  result = sub_1C99E9AD0(v2);
  *v1 = result;
  return result;
}

uint64_t sub_1C979829C()
{
  sub_1C99ECE30();
  sub_1C99ECF18();
  swift_getWitnessTable();
  v0 = sub_1C99ECE44();

  return MEMORY[0x1EEE69830](v0, v1, v2, v3, v4);
}

uint64_t sub_1C97982F8()
{
  sub_1C99ECE18();
  sub_1C99ECF18();
  swift_getWitnessTable();
  sub_1C99ECDFC();

  return sub_1C9A92BB8();
}

uint64_t sub_1C9798348()
{
  sub_1C981E34C();
  sub_1C99ECF18();
  swift_getWitnessTable();
  v0 = sub_1C998D474();

  return MEMORY[0x1EEE69840](v0, v1, v2, v3, v4);
}

uint64_t sub_1C97983B4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C99E9AB8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C97983F0(uint64_t a1)
{
  v2 = sub_1C97A7CA0(a1);
  result = sub_1C99E9AEC(v2);
  *v1 = result;
  return result;
}

uint64_t sub_1C9798418(uint64_t a1)
{
  v2 = sub_1C97BE38C(a1);
  result = sub_1C99E9AEC(v2);
  *v1 = result;
  return result;
}

uint64_t sub_1C9798444()
{
  sub_1C99ECE30();
  sub_1C99ECE58();
  swift_getWitnessTable();
  v0 = sub_1C99ECE44();

  return MEMORY[0x1EEE69830](v0, v1, v2, v3, v4);
}

uint64_t sub_1C97984A0()
{
  sub_1C99ECE18();
  sub_1C99ECE58();
  swift_getWitnessTable();
  sub_1C99ECDFC();

  return sub_1C9A92BB8();
}

uint64_t sub_1C97984F0()
{
  sub_1C981E34C();
  sub_1C99ECE58();
  swift_getWitnessTable();
  v0 = sub_1C998D474();

  return MEMORY[0x1EEE69840](v0, v1, v2, v3, v4);
}

uint64_t sub_1C9798634()
{
  sub_1C99ECE30();
  sub_1C99ECED0();
  swift_getWitnessTable();
  v0 = sub_1C99ECE44();

  return MEMORY[0x1EEE69830](v0, v1, v2, v3, v4);
}

uint64_t sub_1C9798690()
{
  sub_1C99ECE18();
  sub_1C99ECED0();
  swift_getWitnessTable();
  sub_1C99ECDFC();

  return sub_1C9A92BB8();
}

uint64_t sub_1C97986E0()
{
  sub_1C981E34C();
  sub_1C99ECED0();
  swift_getWitnessTable();
  v0 = sub_1C998D474();

  return MEMORY[0x1EEE69840](v0, v1, v2, v3, v4);
}

uint64_t sub_1C9798734()
{
  sub_1C99ECE30();
  sub_1C99ECEA0();
  swift_getWitnessTable();
  v0 = sub_1C99ECE44();

  return MEMORY[0x1EEE69830](v0, v1, v2, v3, v4);
}

uint64_t sub_1C9798790()
{
  sub_1C99ECE18();
  sub_1C99ECEA0();
  swift_getWitnessTable();
  sub_1C99ECDFC();

  return sub_1C9A92BB8();
}

uint64_t sub_1C97987E0()
{
  sub_1C981E34C();
  sub_1C99ECEA0();
  swift_getWitnessTable();
  v0 = sub_1C998D474();

  return MEMORY[0x1EEE69840](v0, v1, v2, v3, v4);
}

uint64_t sub_1C9798888()
{
  sub_1C99ECE30();
  sub_1C99ECE88();
  swift_getWitnessTable();
  v0 = sub_1C99ECE44();

  return MEMORY[0x1EEE69830](v0, v1, v2, v3, v4);
}

uint64_t sub_1C97988E4()
{
  sub_1C99ECE18();
  sub_1C99ECE88();
  swift_getWitnessTable();
  sub_1C99ECDFC();

  return sub_1C9A92BB8();
}

uint64_t sub_1C9798934()
{
  sub_1C981E34C();
  sub_1C99ECE88();
  swift_getWitnessTable();
  v0 = sub_1C998D474();

  return MEMORY[0x1EEE69840](v0, v1, v2, v3, v4);
}

uint64_t sub_1C97989F8()
{
  sub_1C99ECE30();
  sub_1C99ECF30();
  swift_getWitnessTable();
  v0 = sub_1C99ECE44();

  return MEMORY[0x1EEE69830](v0, v1, v2, v3, v4);
}

uint64_t sub_1C9798A54()
{
  sub_1C99ECE18();
  sub_1C99ECF30();
  swift_getWitnessTable();
  sub_1C99ECDFC();

  return sub_1C9A92BB8();
}

uint64_t sub_1C9798AA4()
{
  sub_1C981E34C();
  sub_1C99ECF30();
  swift_getWitnessTable();
  v0 = sub_1C998D474();

  return MEMORY[0x1EEE69840](v0, v1, v2, v3, v4);
}

uint64_t sub_1C9798AF8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C99E9AC0();
  *a1 = result;
  return result;
}

uint64_t sub_1C9798B20@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C99E9AC8();
  *a1 = result;
  return result;
}

uint64_t sub_1C9798B4C()
{
  sub_1C99ECE30();
  sub_1C99ECEE8();
  swift_getWitnessTable();
  v0 = sub_1C99ECE44();

  return MEMORY[0x1EEE69830](v0, v1, v2, v3, v4);
}

uint64_t sub_1C9798BA8()
{
  sub_1C99ECE18();
  sub_1C99ECEE8();
  swift_getWitnessTable();
  sub_1C99ECDFC();

  return sub_1C9A92BB8();
}

uint64_t sub_1C9798BF8()
{
  sub_1C981E34C();
  sub_1C99ECEE8();
  swift_getWitnessTable();
  v0 = sub_1C998D474();

  return MEMORY[0x1EEE69840](v0, v1, v2, v3, v4);
}

uint64_t sub_1C9798C4C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C99E9D88();
  *a1 = result;
  return result;
}

uint64_t sub_1C9798C74@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C99E9D90();
  *a1 = result;
  return result;
}

uint64_t sub_1C9798C9C()
{
  sub_1C99ECE30();
  sub_1C99ECEB8();
  swift_getWitnessTable();
  v0 = sub_1C99ECE44();

  return MEMORY[0x1EEE69830](v0, v1, v2, v3, v4);
}

uint64_t sub_1C9798CF8()
{
  sub_1C99ECE18();
  sub_1C99ECEB8();
  swift_getWitnessTable();
  sub_1C99ECDFC();

  return sub_1C9A92BB8();
}

uint64_t sub_1C9798D48()
{
  sub_1C981E34C();
  sub_1C99ECEB8();
  swift_getWitnessTable();
  v0 = sub_1C998D474();

  return MEMORY[0x1EEE69840](v0, v1, v2, v3, v4);
}

uint64_t sub_1C9798D9C()
{
  sub_1C99ECE30();
  sub_1C99ECF00();
  swift_getWitnessTable();
  v0 = sub_1C99ECE44();

  return MEMORY[0x1EEE69830](v0, v1, v2, v3, v4);
}

uint64_t sub_1C9798DF8()
{
  sub_1C99ECE18();
  sub_1C99ECF00();
  swift_getWitnessTable();
  sub_1C99ECDFC();

  return sub_1C9A92BB8();
}

uint64_t sub_1C9798E48()
{
  sub_1C981E34C();
  sub_1C99ECF00();
  swift_getWitnessTable();
  v0 = sub_1C998D474();

  return MEMORY[0x1EEE69840](v0, v1, v2, v3, v4);
}

uint64_t sub_1C9798F64()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1C9798FA8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1C979905C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1C979912C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1C9799168()
{
  v1 = (type metadata accessor for SNUltronUtils.UltronReportTemplate(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  sub_1C9A91558();
  sub_1C97DA940();
  (*(v3 + 8))(v2);
  sub_1C99F20B4();

  v4 = v1[7];
  sub_1C9A916E8();
  sub_1C97DA940();
  (*(v5 + 8))(v2 + v4);

  return swift_deallocObject();
}

uint64_t sub_1C97992C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C9A91558();
  sub_1C99F1FB4();
  if (*(v7 + 84) != a2)
  {
    return sub_1C99F204C(a1 + *(a3 + 20));
  }

  return sub_1C97ABF20(a1, a2, v6);
}

void sub_1C979935C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1C98EE70C();
  sub_1C9A91558();
  sub_1C99F1FB4();
  if (*(v9 + 84) == a3)
  {

    sub_1C97ACC50(v4, a2, a2, v8);
  }

  else
  {
    *(v4 + *(a4 + 20) + 8) = (a2 - 1);
  }
}

uint64_t sub_1C9799400(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C98EE70C();
  type metadata accessor for SNUltronUtils.UltronReportingPlan(v6);
  sub_1C99F1FB4();
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = v3;
  }

  else
  {
    sub_1C9A916E8();
    sub_1C99F1FB4();
    if (*(v12 + 84) != a2)
    {
      return sub_1C99F204C(v3 + *(a3 + 24));
    }

    v9 = v11;
    v10 = v3 + *(a3 + 20);
  }

  return sub_1C97ABF20(v10, a2, v9);
}

void sub_1C97994DC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1C98EE70C();
  type metadata accessor for SNUltronUtils.UltronReportingPlan(v8);
  sub_1C99F1FB4();
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = v4;
  }

  else
  {
    sub_1C9A916E8();
    sub_1C99F1FB4();
    if (*(v14 + 84) != a3)
    {
      *(v4 + *(a4 + 24) + 8) = (a2 - 1);
      return;
    }

    v11 = v13;
    v12 = v4 + *(a4 + 20);
  }

  sub_1C97ACC50(v12, a2, a2, v11);
}

uint64_t sub_1C97995F4@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = a1;
  result = sub_1C99F28D0(a1);
  if (!v2)
  {
    *a2 = v3;
  }

  return result;
}

uint64_t sub_1C9799624@<X0>(int *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C99F2AB4(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1C9799760@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C99F7D80(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C9799898()
{

  sub_1C97AA878();

  return swift_deallocObject();
}

uint64_t sub_1C97998DC()
{

  sub_1C97F07FC();

  return swift_deallocObject();
}

uint64_t sub_1C9799910()
{

  sub_1C97AA878();

  return swift_deallocObject();
}

uint64_t sub_1C979994C()
{

  return swift_deallocObject();
}

uint64_t sub_1C9799994()
{

  return swift_deallocObject();
}

uint64_t sub_1C97999DC()
{

  sub_1C97AA878();

  return swift_deallocObject();
}

uint64_t sub_1C9799A10()
{

  sub_1C97AA878();

  return swift_deallocObject();
}

uint64_t sub_1C9799B7C()
{
  sub_1C97AA878();

  return swift_deallocObject();
}

uint64_t sub_1C9799BB4()
{

  sub_1C97AA878();

  return swift_deallocObject();
}

uint64_t sub_1C9799CA8()
{

  sub_1C97AA878();

  return swift_deallocObject();
}

uint64_t sub_1C9799CDC()
{

  sub_1C97AA878();

  return swift_deallocObject();
}

uint64_t sub_1C9799E0C()
{

  return swift_deallocObject();
}

uint64_t sub_1C9799E98()
{
  if (*(v0 + 24) != 255)
  {
    sub_1C99E6114(*(v0 + 16));
  }

  return swift_deallocObject();
}

uint64_t sub_1C9799EE0()
{

  return swift_deallocObject();
}

uint64_t sub_1C9799F30()
{

  sub_1C97DAA28();

  return swift_deallocObject();
}

uint64_t sub_1C9799F64()
{

  sub_1C97DAA28();

  return swift_deallocObject();
}

uint64_t sub_1C9799F98()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1C979A0A4()
{
  MEMORY[0x1CCA93360](v0 + 16);
  sub_1C97F07FC();

  return swift_deallocObject();
}

uint64_t sub_1C979A0D8()
{

  return swift_deallocObject();
}

uint64_t sub_1C979A140()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1C979A180()
{

  return swift_deallocObject();
}

uint64_t sub_1C979A1D0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1C979A248()
{

  sub_1C97AA878();

  return swift_deallocObject();
}

uint64_t sub_1C979A27C()
{
  _Block_release(*(v0 + 16));
  sub_1C97F07FC();

  return swift_deallocObject();
}

uint64_t sub_1C979A388@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C9A26500(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C979A3B4(char a1)
{
  if (a1)
  {
    return 1701667182;
  }

  else
  {
    return 0x6E69646465626D65;
  }
}

uint64_t sub_1C979A3F0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C9A29ABC();
  *a1 = result;
  return result;
}

BOOL sub_1C979A434(void *a1, uint64_t a2)
{
  v3 = *v2 & a2;
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

uint64_t sub_1C979A488()
{

  return swift_deallocObject();
}

uint64_t sub_1C979A4D4()
{
  sub_1C9A388F8();
  sub_1C9A91558();
  sub_1C99F1FB4();
  if (*(v4 + 84) != v1)
  {
    return sub_1C9A38918(*(v0 + *(v2 + 20) + 8));
  }

  return sub_1C97ABF20(v0, v1, v3);
}

void sub_1C979A568(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1C98AE1E8();
  sub_1C9A91558();
  sub_1C99F1FB4();
  if (*(v8 + 84) == a3)
  {
    v9 = sub_1C9A381BC();

    sub_1C97ACC50(v9, v10, v11, v12);
  }

  else
  {
    *(v5 + *(a4 + 20) + 8) = (v4 - 1);
  }
}

uint64_t sub_1C979A600()
{
  sub_1C98AE1E8();
  v2 = sub_1C97A2CEC(&qword_1EC3C9900);

  return sub_1C97ABF20(v1, v0, v2);
}

uint64_t sub_1C979A650()
{
  sub_1C98AE1E8();
  sub_1C97A2CEC(&qword_1EC3C9900);
  v0 = sub_1C9A381BC();

  return sub_1C97ACC50(v0, v1, v2, v3);
}

uint64_t sub_1C979A698()
{
  sub_1C98AE1E8();
  v2 = sub_1C97A2CEC(&qword_1EC3C9908);

  return sub_1C97ABF20(v1, v0, v2);
}

uint64_t sub_1C979A6E8()
{
  sub_1C98AE1E8();
  sub_1C97A2CEC(&qword_1EC3C9908);
  v0 = sub_1C9A381BC();

  return sub_1C97ACC50(v0, v1, v2, v3);
}

uint64_t sub_1C979A738()
{
  sub_1C9A388F8();
  sub_1C9A91748();
  sub_1C99F1FB4();
  if (*(v4 + 84) != v1)
  {
    return sub_1C9A38918(*(v0 + *(v2 + 36)));
  }

  return sub_1C97ABF20(v0, v1, v3);
}

void sub_1C979A7C8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1C98AE1E8();
  sub_1C9A91748();
  sub_1C99F1FB4();
  if (*(v8 + 84) == a3)
  {
    v9 = sub_1C9A381BC();

    sub_1C97ACC50(v9, v10, v11, v12);
  }

  else
  {
    *(v5 + *(a4 + 36)) = (v4 - 1);
  }
}

uint64_t sub_1C979A85C()
{

  sub_1C97AA878();

  return swift_deallocObject();
}

uint64_t sub_1C979A8A8()
{

  return swift_deallocObject();
}

uint64_t sub_1C979A9B0()
{

  return swift_deallocObject();
}

uint64_t sub_1C979AB44()
{

  return swift_deallocObject();
}

uint64_t sub_1C979ABF4()
{

  return swift_deallocObject();
}

uint64_t sub_1C979ACDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1C9A91558();
    v9 = a1 + *(a3 + 24);

    return sub_1C97ABF20(v9, a2, v8);
  }
}

uint64_t sub_1C979AD64(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1C9A91558();
    v8 = v5 + *(a4 + 24);

    return sub_1C97ACC50(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C979AFD4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

char *sub_1C979AFE4(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return sub_1C97E8508(a3, result);
  }

  return result;
}

char *sub_1C979B00C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[32 * a2] <= a3)
  {
    return sub_1C97E8508(a3, result);
  }

  return result;
}

char *sub_1C979B02C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return sub_1C97E8508(a3, result);
  }

  return result;
}

uint64_t sub_1C979B054(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

double sub_1C979B154@<D0>(uint64_t a1@<X8>)
{
  v1 = MEMORY[0x1E6960CC0];
  v2 = *(MEMORY[0x1E6960CC0] + 16);
  *a1 = *MEMORY[0x1E6960CC0];
  result = *(v1 + 8);
  *(a1 + 8) = result;
  *(a1 + 16) = v2;
  return result;
}

uint64_t sub_1C979B1A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1C98FBA38(a1, a2);
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_1C979B1DC(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_1C979B244@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C979B06C();
  *a1 = result & 1;
  return result;
}

double SNLKFSResult.timeRange.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = v1 + OBJC_IVAR___SNLKFSResult_impl;
  v3 = *(v1 + OBJC_IVAR___SNLKFSResult_impl + 40);
  *a1 = *(v1 + OBJC_IVAR___SNLKFSResult_impl);
  *(a1 + 8) = *(v2 + 8);
  *(a1 + 16) = *(v2 + 16);
  result = *(v2 + 32);
  *(a1 + 32) = result;
  *(a1 + 40) = v3;
  return result;
}

double SNLKFSResult.timeRange.setter(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = v1 + OBJC_IVAR___SNLKFSResult_impl;
  *v3 = *a1;
  *(v3 + 8) = *(a1 + 8);
  *(v3 + 16) = *(a1 + 16);
  result = *(a1 + 32);
  *(v3 + 32) = result;
  *(v3 + 40) = v2;
  return result;
}

double sub_1C979B3DC@<D0>(_OWORD *a1@<X8>)
{
  SNLKFSResult.timeRange.getter(v4);
  v2 = v4[1];
  *a1 = v4[0];
  a1[1] = v2;
  result = *&v5;
  a1[2] = v5;
  return result;
}

void (*SNLKFSResult.timeRange.modify(void *a1))(void **a1)
{
  v3 = sub_1C97A2C48(0x38uLL);
  *a1 = v3;
  *v3 = v1;
  SNLKFSResult.timeRange.getter((v3 + 1));
  return sub_1C979B4A8;
}

void sub_1C979B4A8(void **a1)
{
  v1 = *a1;
  SNLKFSResult.timeRange.setter(*a1 + 8);

  free(v1);
}

float (*SNLKFSResult.decibelLevel.modify(uint64_t a1))(uint64_t a1)
{
  v2 = OBJC_IVAR___SNLKFSResult_impl;
  *a1 = v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = *(v1 + v2 + 48);
  return sub_1C979B5E4;
}

float sub_1C979B5E4(uint64_t a1)
{
  result = *(a1 + 16);
  *(*a1 + *(a1 + 8) + 48) = result;
  return result;
}

id sub_1C979B5F8()
{
  ObjectType = swift_getObjectType();
  v2 = MEMORY[0x1E6960C98];
  v3 = *(MEMORY[0x1E6960C98] + 40);
  v4 = &v0[OBJC_IVAR___SNLKFSResult_impl];
  *v4 = *MEMORY[0x1E6960C98];
  *(v4 + 1) = *(v2 + 8);
  *(v4 + 1) = *(v2 + 16);
  *(v4 + 4) = *(v2 + 32);
  *(v4 + 5) = v3;
  *(v4 + 12) = 0;
  v6.receiver = v0;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, sel_init);
}

id SNLKFSResult.copy(with:)@<X0>(void *a1@<X8>)
{
  ObjectType = swift_getObjectType();
  sub_1C97A7AB0(OBJC_IVAR___SNLKFSResult_impl);
  v4 = objc_allocWithZone(v3);
  v5 = &v4[OBJC_IVAR___SNLKFSResult_impl];
  v6 = v8[2];
  *v5 = v8[1];
  v5[1] = v6;
  v5[2] = v8[3];
  LODWORD(v5[3].receiver) = v9;
  v8[0].receiver = v4;
  v8[0].super_class = ObjectType;
  result = [(objc_super *)v8 init];
  a1[3] = ObjectType;
  *a1 = result;
  return result;
}

BOOL SNLKFSResult.isEqual(_:)(uint64_t a1)
{
  sub_1C97A2C7C(a1, &v4);
  if (v5)
  {
    sub_1C97A2D34(&v4, v3);
    v1 = sub_1C9859778();
    sub_1C97A592C(v3);
  }

  else
  {
    return 0;
  }

  return v1;
}

id SNLKFSResult.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  sub_1C97A0FE8(a1, v9);
  v3 = objc_allocWithZone(ObjectType);
  v4 = &v3[OBJC_IVAR___SNLKFSResult_impl];
  v5 = v9[1];
  *v4 = v9[0];
  *(v4 + 1) = v5;
  *(v4 + 2) = v9[2];
  *(v4 + 12) = v10;
  v8.receiver = v3;
  v8.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v8, sel_init);

  swift_getObjectType();
  sub_1C97A7DA4();
  return v6;
}

uint64_t SNLKFSResult.description.getter()
{
  ObjectType = swift_getObjectType();
  *&v16[0] = 0;
  *(&v16[0] + 1) = 0xE000000000000000;
  sub_1C9A935B8();
  v15 = v16[0];
  v14.receiver = v0;
  v14.super_class = ObjectType;
  v2 = objc_msgSendSuper2(&v14, sel_description);
  v3 = sub_1C9A924A8();
  v5 = v4;

  MEMORY[0x1CCA90230](v3, v5);

  MEMORY[0x1CCA90230](0xD000000000000011, 0x80000001C9AD3E90);
  sub_1C9A92B08();
  MEMORY[0x1CCA90230](0x203A656D6954203BLL, 0xE800000000000000);
  SNLKFSResult.timeRange.getter(v16);
  v6 = objc_opt_self();
  v13[0] = v16[0];
  v13[1] = v16[1];
  v13[2] = v16[2];
  v7 = [v6 valueWithCMTimeRange_];
  v8 = [v7 description];
  v9 = sub_1C9A924A8();
  v11 = v10;

  MEMORY[0x1CCA90230](v9, v11);

  return v15;
}

id SNLKFSResult.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double sub_1C979BD5C@<D0>(_OWORD *a1@<X8>)
{
  SNLKFSResult.timeRange.getter(v4);
  v2 = v4[1];
  *a1 = v4[0];
  a1[1] = v2;
  result = *&v5;
  a1[2] = v5;
  return result;
}

uint64_t sub_1C979BD9C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 0;
    v3 = (a1 + 32);
    do
    {
      v5 = *v3++;
      v4 = v5;
      if ((v5 & ~v2) == 0)
      {
        v4 = 0;
      }

      v2 |= v4;
      --v1;
    }

    while (v1);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_1C979BDF0()
{
  sub_1C9A91378();
  swift_allocObject();
  sub_1C9A91368();
  sub_1C97A6F24();
  sub_1C9A91358();

  if (!v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1C979BE98()
{
  sub_1C9A91378();
  swift_allocObject();
  sub_1C9A91368();
  sub_1C97A6E7C();
  sub_1C9A91358();

  if (!v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1C979BF3C()
{
  sub_1C9A91378();
  swift_allocObject();
  sub_1C9A91368();
  sub_1C97A679C();
  sub_1C9A91358();

  if (!v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1C979BFD8()
{
  sub_1C9A91378();
  swift_allocObject();
  sub_1C9A91368();
  sub_1C97A664C();
  sub_1C9A91358();

  if (!v0)
  {
    return v2;
  }

  return result;
}

double sub_1C979C074()
{
  sub_1C9A91378();
  swift_allocObject();
  sub_1C9A91368();
  sub_1C97A606C();
  sub_1C9A91358();

  if (!v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1C979C118()
{
  sub_1C9A91378();
  swift_allocObject();
  sub_1C9A91368();
  sub_1C97A5AD0();
  sub_1C9A91358();

  if (!v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1C979C1B8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  sub_1C9A91378();
  sub_1C97A7A98();
  sub_1C9A91368();
  a3();
  sub_1C9A91358();
}

uint64_t sub_1C979C244@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = objc_opt_self();
  sub_1C97A5A8C(a1, a1[3]);
  *&v14[0] = 0;
  v6 = [v5 dataWithPropertyList:sub_1C9A93B08() format:100 options:0 error:v14];
  swift_unknownObjectRelease();
  v7 = *&v14[0];
  if (v6)
  {
    v8 = sub_1C9A91618();
    v10 = v9;

    sub_1C9A91378();
    swift_allocObject();
    sub_1C9A91368();
    sub_1C97A6FCC();
    sub_1C9A91358();
    if (v2)
    {

      return sub_1C97A5978(v8, v10);
    }

    else
    {
      sub_1C97A5978(v8, v10);

      v13 = v14[1];
      *a2 = v14[0];
      *(a2 + 16) = v13;
      *(a2 + 32) = v14[2];
      *(a2 + 48) = v15;
    }
  }

  else
  {
    v12 = v7;
    sub_1C9A913C8();

    return swift_willThrow();
  }

  return result;
}

id sub_1C979C3EC(void *a1)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v3 = objc_opt_self();
  sub_1C97A5A8C(a1, a1[3]);
  v12[0] = 0;
  v4 = [v3 dataWithPropertyList:sub_1C9A93B08() format:100 options:0 error:v12];
  swift_unknownObjectRelease();
  v5 = v12[0];
  if (v4)
  {
    v6 = sub_1C9A91618();
    v8 = v7;

    v9 = sub_1C979BDF0();
    if (!v1)
    {
      v4 = v9;
    }

    sub_1C97A5978(v6, v8);
  }

  else
  {
    v10 = v5;
    sub_1C9A913C8();

    swift_willThrow();
  }

  return v4;
}

id sub_1C979C558(void *a1)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v3 = objc_opt_self();
  sub_1C97A5A8C(a1, a1[3]);
  v12[0] = 0;
  v4 = [v3 dataWithPropertyList:sub_1C9A93B08() format:100 options:0 error:v12];
  swift_unknownObjectRelease();
  v5 = v12[0];
  if (v4)
  {
    v6 = sub_1C9A91618();
    v8 = v7;

    v9 = sub_1C979BE98();
    if (!v1)
    {
      v4 = v9;
    }

    sub_1C97A5978(v6, v8);
  }

  else
  {
    v10 = v5;
    sub_1C9A913C8();

    swift_willThrow();
  }

  return v4;
}

uint64_t sub_1C979C6B0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = objc_opt_self();
  sub_1C97A5A8C(a1, a1[3]);
  *&v16[0] = 0;
  v6 = [v5 dataWithPropertyList:sub_1C9A93B08() format:100 options:0 error:v16];
  swift_unknownObjectRelease();
  v7 = *&v16[0];
  if (v6)
  {
    v8 = sub_1C9A91618();
    v10 = v9;

    sub_1C9A91378();
    swift_allocObject();
    sub_1C9A91368();
    sub_1C97A6DD4();
    sub_1C9A91358();
    if (v2)
    {

      return sub_1C97A5978(v8, v10);
    }

    else
    {
      sub_1C97A5978(v8, v10);

      v13 = v17;
      v14 = v16[1];
      v15 = v16[2];
      *a2 = v16[0];
      *(a2 + 16) = v14;
      *(a2 + 32) = v15;
      *(a2 + 48) = v13;
    }
  }

  else
  {
    v12 = v7;
    sub_1C9A913C8();

    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1C979C858@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = objc_opt_self();
  sub_1C97A5A8C(a1, a1[3]);
  *&v17 = 0;
  v6 = [v5 dataWithPropertyList:sub_1C9A93B08() format:100 options:0 error:&v17];
  swift_unknownObjectRelease();
  v7 = v17;
  if (v6)
  {
    v8 = sub_1C9A91618();
    v10 = v9;

    sub_1C9A91378();
    swift_allocObject();
    sub_1C9A91368();
    sub_1C97A6C28();
    sub_1C9A91358();
    if (v2)
    {

      return sub_1C97A5978(v8, v10);
    }

    else
    {
      sub_1C97A5978(v8, v10);

      v13 = v18;
      v14 = v19;
      v15 = v20;
      v16 = v21;
      *a2 = v17;
      *(a2 + 16) = v13;
      *(a2 + 24) = v14;
      *(a2 + 32) = v15;
      *(a2 + 40) = v16;
    }
  }

  else
  {
    v12 = v7;
    sub_1C9A913C8();

    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1C979CA08@<X0>(void *a1@<X0>, id *a2@<X8>)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v5 = objc_opt_self();
  sub_1C97A5A8C(a1, a1[3]);
  v13[0] = 0;
  v6 = [v5 dataWithPropertyList:sub_1C9A93B08() format:100 options:0 error:v13];
  swift_unknownObjectRelease();
  v7 = v13[0];
  if (v6)
  {
    v8 = sub_1C9A91618();
    v10 = v9;

    sub_1C9A91378();
    swift_allocObject();
    sub_1C9A91368();
    sub_1C97A6A4C();
    sub_1C9A91358();
    if (v2)
    {

      return sub_1C97A5978(v8, v10);
    }

    else
    {
      sub_1C97A5978(v8, v10);

      *a2 = v13[0];
    }
  }

  else
  {
    v12 = v7;
    sub_1C9A913C8();

    return swift_willThrow();
  }

  return result;
}

void *sub_1C979CBA0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v13[9] = *MEMORY[0x1E69E9840];
  v5 = objc_opt_self();
  sub_1C97A5A8C(a1, a1[3]);
  v13[0] = 0;
  v6 = [v5 dataWithPropertyList:sub_1C9A93B08() format:100 options:0 error:v13];
  swift_unknownObjectRelease();
  v7 = v13[0];
  if (v6)
  {
    v8 = sub_1C9A91618();
    v10 = v9;

    sub_1C9A91378();
    swift_allocObject();
    sub_1C9A91368();
    sub_1C97A69A4();
    sub_1C9A91358();
    if (v2)
    {

      return sub_1C97A5978(v8, v10);
    }

    else
    {
      sub_1C97A5978(v8, v10);

      return memcpy(a2, v13, 0x48uLL);
    }
  }

  else
  {
    v12 = v7;
    sub_1C9A913C8();

    return swift_willThrow();
  }
}

uint64_t sub_1C979CD40@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = objc_opt_self();
  sub_1C97A5A8C(a1, a1[3]);
  *&v15[0] = 0;
  v6 = [v5 dataWithPropertyList:sub_1C9A93B08() format:100 options:0 error:v15];
  swift_unknownObjectRelease();
  v7 = *&v15[0];
  if (v6)
  {
    v8 = sub_1C9A91618();
    v10 = v9;

    sub_1C9A91378();
    swift_allocObject();
    sub_1C9A91368();
    sub_1C97A68A0();
    sub_1C9A91358();
    if (v2)
    {

      return sub_1C97A5978(v8, v10);
    }

    else
    {
      sub_1C97A5978(v8, v10);

      v13 = v15[1];
      *a2 = v15[0];
      a2[1] = v13;
      v14 = v15[3];
      a2[2] = v15[2];
      a2[3] = v14;
    }
  }

  else
  {
    v12 = v7;
    sub_1C9A913C8();

    return swift_willThrow();
  }

  return result;
}

id sub_1C979CEE8(void *a1)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v2 = objc_opt_self();
  sub_1C97A5A8C(a1, a1[3]);
  v10[0] = 0;
  v3 = [v2 dataWithPropertyList:sub_1C9A93B08() format:100 options:0 error:v10];
  swift_unknownObjectRelease();
  v4 = v10[0];
  if (v3)
  {
    v5 = sub_1C9A91618();
    v7 = v6;

    v3 = sub_1C979BF3C();
    sub_1C97A5978(v5, v7);
  }

  else
  {
    v8 = v4;
    sub_1C9A913C8();

    swift_willThrow();
  }

  return v3;
}

void *sub_1C979D018@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v13[9] = *MEMORY[0x1E69E9840];
  v5 = objc_opt_self();
  sub_1C97A5A8C(a1, a1[3]);
  v13[0] = 0;
  v6 = [v5 dataWithPropertyList:sub_1C9A93B08() format:100 options:0 error:v13];
  swift_unknownObjectRelease();
  v7 = v13[0];
  if (v6)
  {
    v8 = sub_1C9A91618();
    v10 = v9;

    sub_1C9A91378();
    swift_allocObject();
    sub_1C9A91368();
    sub_1C97A66F4();
    sub_1C9A91358();
    if (v2)
    {

      return sub_1C97A5978(v8, v10);
    }

    else
    {
      sub_1C97A5978(v8, v10);

      return memcpy(a2, v13, 0x48uLL);
    }
  }

  else
  {
    v12 = v7;
    sub_1C9A913C8();

    return swift_willThrow();
  }
}

id sub_1C979D1B8(void *a1)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v2 = objc_opt_self();
  sub_1C97A5A8C(a1, a1[3]);
  v10[0] = 0;
  v3 = [v2 dataWithPropertyList:sub_1C9A93B08() format:100 options:0 error:v10];
  swift_unknownObjectRelease();
  v4 = v10[0];
  if (v3)
  {
    v5 = sub_1C9A91618();
    v7 = v6;

    v3 = sub_1C979BFD8();
    sub_1C97A5978(v5, v7);
  }

  else
  {
    v8 = v4;
    sub_1C9A913C8();

    swift_willThrow();
  }

  return v3;
}

uint64_t sub_1C979D2F8@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = objc_opt_self();
  sub_1C97A5A8C(a1, a1[3]);
  *&v15[0] = 0;
  v6 = [v5 dataWithPropertyList:sub_1C9A93B08() format:100 options:0 error:v15];
  swift_unknownObjectRelease();
  v7 = *&v15[0];
  if (v6)
  {
    v8 = sub_1C9A91618();
    v10 = v9;

    sub_1C9A91378();
    swift_allocObject();
    sub_1C9A91368();
    sub_1C97A65A4();
    sub_1C9A91358();
    if (v2)
    {

      return sub_1C97A5978(v8, v10);
    }

    else
    {
      sub_1C97A5978(v8, v10);

      v13 = v15[1];
      *a2 = v15[0];
      a2[1] = v13;
      v14 = v15[3];
      a2[2] = v15[2];
      a2[3] = v14;
    }
  }

  else
  {
    v12 = v7;
    sub_1C9A913C8();

    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1C979D4A0@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = objc_opt_self();
  sub_1C97A5A8C(a1, a1[3]);
  *&v15[0] = 0;
  v6 = [v5 dataWithPropertyList:sub_1C9A93B08() format:100 options:0 error:v15];
  swift_unknownObjectRelease();
  v7 = *&v15[0];
  if (v6)
  {
    v8 = sub_1C9A91618();
    v10 = v9;

    sub_1C9A91378();
    swift_allocObject();
    sub_1C9A91368();
    sub_1C97A64FC();
    sub_1C9A91358();
    if (v2)
    {

      return sub_1C97A5978(v8, v10);
    }

    else
    {
      sub_1C97A5978(v8, v10);

      v13 = v15[1];
      *a2 = v15[0];
      a2[1] = v13;
      v14 = v15[3];
      a2[2] = v15[2];
      a2[3] = v14;
    }
  }

  else
  {
    v12 = v7;
    sub_1C9A913C8();

    return swift_willThrow();
  }

  return result;
}

void *sub_1C979D648@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v13[15] = *MEMORY[0x1E69E9840];
  v5 = objc_opt_self();
  sub_1C97A5A8C(a1, a1[3]);
  v13[0] = 0;
  v6 = [v5 dataWithPropertyList:sub_1C9A93B08() format:100 options:0 error:v13];
  swift_unknownObjectRelease();
  v7 = v13[0];
  if (v6)
  {
    v8 = sub_1C9A91618();
    v10 = v9;

    sub_1C9A91378();
    swift_allocObject();
    sub_1C9A91368();
    sub_1C97A63F8();
    sub_1C9A91358();
    if (v2)
    {

      return sub_1C97A5978(v8, v10);
    }

    else
    {
      sub_1C97A5978(v8, v10);

      return memcpy(a2, v13, 0x78uLL);
    }
  }

  else
  {
    v12 = v7;
    sub_1C9A913C8();

    return swift_willThrow();
  }
}

void *sub_1C979D7E8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v13[9] = *MEMORY[0x1E69E9840];
  v5 = objc_opt_self();
  sub_1C97A5A8C(a1, a1[3]);
  v13[0] = 0;
  v6 = [v5 dataWithPropertyList:sub_1C9A93B08() format:100 options:0 error:v13];
  swift_unknownObjectRelease();
  v7 = v13[0];
  if (v6)
  {
    v8 = sub_1C9A91618();
    v10 = v9;

    sub_1C9A91378();
    swift_allocObject();
    sub_1C9A91368();
    sub_1C97A62C0();
    sub_1C9A91358();
    if (v2)
    {

      return sub_1C97A5978(v8, v10);
    }

    else
    {
      sub_1C97A5978(v8, v10);

      return memcpy(a2, v13, 0x41uLL);
    }
  }

  else
  {
    v12 = v7;
    sub_1C9A913C8();

    return swift_willThrow();
  }
}

uint64_t sub_1C979D988@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = objc_opt_self();
  sub_1C97A5A8C(a1, a1[3]);
  *&v14[0] = 0;
  v6 = [v5 dataWithPropertyList:sub_1C9A93B08() format:100 options:0 error:v14];
  swift_unknownObjectRelease();
  v7 = *&v14[0];
  if (v6)
  {
    v8 = sub_1C9A91618();
    v10 = v9;

    sub_1C9A91378();
    swift_allocObject();
    sub_1C9A91368();
    sub_1C97A61BC();
    sub_1C9A91358();
    if (v2)
    {

      return sub_1C97A5978(v8, v10);
    }

    else
    {
      sub_1C97A5978(v8, v10);

      v13 = v14[1];
      *a2 = v14[0];
      a2[1] = v13;
      a2[2] = v14[2];
    }
  }

  else
  {
    v12 = v7;
    sub_1C9A913C8();

    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1C979DB2C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = objc_opt_self();
  sub_1C97A5A8C(a1, a1[3]);
  *&v14[0] = 0;
  v6 = [v5 dataWithPropertyList:sub_1C9A93B08() format:100 options:0 error:v14];
  swift_unknownObjectRelease();
  v7 = *&v14[0];
  if (v6)
  {
    v8 = sub_1C9A91618();
    v10 = v9;

    sub_1C9A91378();
    swift_allocObject();
    sub_1C9A91368();
    sub_1C97A6114();
    sub_1C9A91358();
    if (v2)
    {

      return sub_1C97A5978(v8, v10);
    }

    else
    {
      sub_1C97A5978(v8, v10);

      v13 = v14[1];
      *a2 = v14[0];
      *(a2 + 16) = v13;
      *(a2 + 32) = v14[2];
      *(a2 + 48) = v15;
    }
  }

  else
  {
    v12 = v7;
    sub_1C9A913C8();

    return swift_willThrow();
  }

  return result;
}

double sub_1C979DCD4(void *a1)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v4 = objc_opt_self();
  sub_1C97A5A8C(a1, a1[3]);
  v13[0] = 0;
  v5 = [v4 dataWithPropertyList:sub_1C9A93B08() format:100 options:0 error:v13];
  swift_unknownObjectRelease();
  v6 = v13[0];
  if (v5)
  {
    v7 = sub_1C9A91618();
    v9 = v8;

    v10 = sub_1C979C074();
    if (!v1)
    {
      v2 = v10;
    }

    sub_1C97A5978(v7, v9);
  }

  else
  {
    v11 = v6;
    sub_1C9A913C8();

    swift_willThrow();
  }

  return v2;
}

uint64_t sub_1C979DE3C@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = objc_opt_self();
  sub_1C97A5A8C(a1, a1[3]);
  *&v15[0] = 0;
  v6 = [v5 dataWithPropertyList:sub_1C9A93B08() format:100 options:0 error:v15];
  swift_unknownObjectRelease();
  v7 = *&v15[0];
  if (v6)
  {
    v8 = sub_1C9A91618();
    v10 = v9;

    sub_1C9A91378();
    swift_allocObject();
    sub_1C9A91368();
    sub_1C97A5FC4();
    sub_1C9A91358();
    if (v2)
    {

      return sub_1C97A5978(v8, v10);
    }

    else
    {
      sub_1C97A5978(v8, v10);

      v13 = v15[1];
      *a2 = v15[0];
      a2[1] = v13;
      v14 = v15[3];
      a2[2] = v15[2];
      a2[3] = v14;
    }
  }

  else
  {
    v12 = v7;
    sub_1C9A913C8();

    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1C979DFE4@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = objc_opt_self();
  sub_1C97A5A8C(a1, a1[3]);
  *&v15[0] = 0;
  v6 = [v5 dataWithPropertyList:sub_1C9A93B08() format:100 options:0 error:v15];
  swift_unknownObjectRelease();
  v7 = *&v15[0];
  if (v6)
  {
    v8 = sub_1C9A91618();
    v10 = v9;

    sub_1C9A91378();
    swift_allocObject();
    sub_1C9A91368();
    sub_1C97A5EC0();
    sub_1C9A91358();
    if (v2)
    {

      return sub_1C97A5978(v8, v10);
    }

    else
    {
      sub_1C97A5978(v8, v10);

      v13 = v15[1];
      *a2 = v15[0];
      a2[1] = v13;
      v14 = v15[3];
      a2[2] = v15[2];
      a2[3] = v14;
    }
  }

  else
  {
    v12 = v7;
    sub_1C9A913C8();

    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1C979E18C(void *a1, void (*a2)(void))
{
  v12[1] = *MEMORY[0x1E69E9840];
  v4 = objc_opt_self();
  sub_1C97A5A8C(a1, a1[3]);
  v12[0] = 0;
  v5 = [v4 dataWithPropertyList:sub_1C9A93B08() format:100 options:0 error:v12];
  swift_unknownObjectRelease();
  v6 = v12[0];
  if (v5)
  {
    v7 = sub_1C9A91618();
    v9 = v8;

    sub_1C979C1B8(v7, v9, a2);
    return sub_1C97A5978(v7, v9);
  }

  else
  {
    v11 = v6;
    sub_1C9A913C8();

    return swift_willThrow();
  }
}

void sub_1C979E2C8(void *a1@<X0>, void (*a2)(void)@<X1>, __n128 *a3@<X8>)
{
  v24 = *MEMORY[0x1E69E9840];
  v7 = objc_opt_self();
  sub_1C97A5A8C(a1, a1[3]);
  *&v23[0] = 0;
  v8 = [v7 dataWithPropertyList:sub_1C9A93B08() format:100 options:0 error:v23];
  swift_unknownObjectRelease();
  v9 = *&v23[0];
  if (v8)
  {
    v10 = sub_1C9A91618();
    v12 = v11;

    sub_1C9A91378();
    sub_1C97A7A98();
    sub_1C9A91368();
    a2();
    sub_1C9A91358();
    if (v3)
    {

      sub_1C97A5978(v10, v12);
    }

    else
    {
      sub_1C97A5978(v10, v12);

      a3[2] = sub_1C97A77B8(v14, v15, v16, v17, v18, v19, v20, v21, v22, v23[0], v23[1], v23[2]);
    }
  }

  else
  {
    v13 = v9;
    sub_1C9A913C8();

    swift_willThrow();
  }
}

void *sub_1C979E468@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v13[11] = *MEMORY[0x1E69E9840];
  v5 = objc_opt_self();
  sub_1C97A5A8C(a1, a1[3]);
  v13[0] = 0;
  v6 = [v5 dataWithPropertyList:sub_1C9A93B08() format:100 options:0 error:v13];
  swift_unknownObjectRelease();
  v7 = v13[0];
  if (v6)
  {
    v8 = sub_1C9A91618();
    v10 = v9;

    sub_1C9A91378();
    swift_allocObject();
    sub_1C9A91368();
    sub_1C97A5C20();
    sub_1C9A91358();
    if (v2)
    {

      return sub_1C97A5978(v8, v10);
    }

    else
    {
      sub_1C97A5978(v8, v10);

      return memcpy(a2, v13, 0x58uLL);
    }
  }

  else
  {
    v12 = v7;
    sub_1C9A913C8();

    return swift_willThrow();
  }
}

id sub_1C979E608(void *a1)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v3 = objc_opt_self();
  sub_1C97A5A8C(a1, a1[3]);
  v12[0] = 0;
  v4 = [v3 dataWithPropertyList:sub_1C9A93B08() format:100 options:0 error:v12];
  swift_unknownObjectRelease();
  v5 = v12[0];
  if (v4)
  {
    v6 = sub_1C9A91618();
    v8 = v7;

    v9 = sub_1C979C118();
    if (!v1)
    {
      v4 = v9;
    }

    sub_1C97A5978(v6, v8);
  }

  else
  {
    v10 = v5;
    sub_1C9A913C8();

    swift_willThrow();
  }

  return v4;
}

uint64_t sub_1C979E770(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v26 = *MEMORY[0x1E69E9840];
  v24[3] = &unk_1F494DE90;
  v24[4] = sub_1C97A6F78();
  v7 = swift_allocObject();
  v24[0] = v7;
  v8 = *(a1 + 16);
  *(v7 + 16) = *a1;
  *(v7 + 32) = v8;
  *(v7 + 48) = *(a1 + 32);
  *(v7 + 64) = *(a1 + 48);
  sub_1C9A913A8();
  swift_allocObject();
  sub_1C9A91398();
  sub_1C97A5A8C(v24, &unk_1F494DE90);
  v9 = sub_1C9A91388();
  v11 = v10;

  if (v4)
  {
    goto LABEL_2;
  }

  v14 = objc_opt_self();
  v15 = sub_1C9A915F8();
  v21 = 0;
  v16 = [v14 propertyListWithData:v15 options:0 format:0 error:&v21];

  v17 = v21;
  if (!v16)
  {
    v20 = v17;
    sub_1C9A913C8();

    swift_willThrow();
    sub_1C97A5978(v9, v11);
LABEL_2:
    v12 = v24;
    return sub_1C97A592C(v12);
  }

  sub_1C9A93318();
  swift_unknownObjectRelease();
  sub_1C99785F8(v22, v23);
  sub_1C97A59D0(v22);
  sub_1C97A5978(v9, v11);
  sub_1C97A2D34(v23, v25);
  sub_1C97A592C(v24);
  v18 = sub_1C98058A4(v25);
  v19 = sub_1C9A92478();
  [a4 encodeObject:v18 forKey:v19];

  v12 = v25;
  return sub_1C97A592C(v12);
}

uint64_t sub_1C979E9C4(int a1, __int16 a2, double a3, double a4)
{
  v40 = *MEMORY[0x1E69E9840];
  v38[3] = &type metadata for NullRequest;
  v9 = sub_1C97A6ED0();
  v38[4] = v9;
  sub_1C97A7DFC();
  v10 = swift_allocObject();
  v38[0] = v10;
  *(v10 + 16) = a3;
  *(v10 + 24) = a1;
  *(v10 + 32) = a4;
  *(v10 + 40) = a2 & 1;
  *(v10 + 41) = HIBYTE(a2) & 1;
  sub_1C9A913A8();
  sub_1C97A7A98();
  v11 = sub_1C9A91398();
  sub_1C97A5A8C(v38, &type metadata for NullRequest);
  sub_1C9A91388();
  sub_1C97A77CC();

  if (v11)
  {
    goto LABEL_2;
  }

  objc_opt_self();
  sub_1C97A7890();
  sub_1C9A915F8();
  sub_1C97A7CAC();
  v15 = sub_1C97A77DC(v14, sel_propertyListWithData_options_format_error_);

  v16 = v32;
  if (!v15)
  {
    v29 = v16;
    sub_1C9A913C8();

    swift_willThrow();
    v30 = sub_1C97A7890();
    sub_1C97A5978(v30, v31);
LABEL_2:
    v12 = v38;
    return sub_1C97A592C(v12);
  }

  sub_1C97A7D78();
  v17 = swift_unknownObjectRelease();
  v25 = sub_1C97A7A64(v17, v18, v19, v20, v21, v22, v23, v24, v32, v33, v34, v35, v36, v37);
  sub_1C97A7D60(v25);
  v26 = sub_1C97A7890();
  sub_1C97A5978(v26, v27);
  sub_1C97A2D34(&v37, v39);
  sub_1C97A592C(v38);
  sub_1C98058A4(v39);
  v28 = sub_1C97A7950();
  sub_1C97A78F8(v28, sel_encodeObject_forKey_);

  v12 = v39;
  return sub_1C97A592C(v12);
}

void sub_1C979EBD0()
{
  sub_1C97A7E1C();
  v52 = v2;
  v53 = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v51 = *MEMORY[0x1E69E9840];
  v49 = &type metadata for DetectSignalThresholdRequest;
  sub_1C97A6E28();
  sub_1C97A7A30();
  v46 = v9;
  v47 = v7;
  v48 = v5;
  sub_1C9A913A8();
  v10 = sub_1C97A7A98();
  sub_1C9A91398();
  sub_1C97A7A4C();
  sub_1C97A7730(v11);
  sub_1C9A91388();
  sub_1C97A7A3C();

  if (v0)
  {
    goto LABEL_2;
  }

  objc_opt_self();
  sub_1C97A796C();
  sub_1C9A915F8();
  sub_1C97A79C4();
  v20 = sub_1C97A7794(v13, sel_propertyListWithData_options_format_error_, v14, v15, v16, v17, v18, v19, v40, v42);

  v21 = v43;
  if (!v20)
  {
    v37 = v21;
    sub_1C9A913C8();

    swift_willThrow();
    v38 = sub_1C97A79F0();
    sub_1C97A5978(v38, v39);
LABEL_2:
    v12 = &v46;
    goto LABEL_3;
  }

  sub_1C97A7B08();
  v22 = swift_unknownObjectRelease();
  v30 = sub_1C97A79D0(v22, v23, v24, v25, v26, v27, v28, v29, v41, v43, v44);
  v32 = sub_1C99785F8(v30, v31);
  sub_1C97A7DE4(v32, v33);
  v34 = sub_1C97A79F0();
  sub_1C97A5978(v34, v35);
  sub_1C97A2D34(&v45, v50);
  sub_1C97A592C(&v46);
  sub_1C98058A4(v50);
  v36 = sub_1C97A7BEC();
  sub_1C97A7BA4(v36, sel_encodeObject_forKey_);

  v12 = v50;
LABEL_3:
  sub_1C97A7CD0(v12);
  sub_1C97A7E08();
}

void sub_1C979ED8C()
{
  sub_1C97A7E1C();
  v38 = v3;
  v39 = v4;
  sub_1C97A7718();
  v37 = *MEMORY[0x1E69E9840];
  v35[3] = &type metadata for TimeDurationConstraint;
  v35[4] = sub_1C97A6D24();
  v35[0] = swift_allocObject();
  sub_1C97A79FC(v35[0]);
  *(v5 + 64) = *(v0 + 48);
  sub_1C9A913A8();
  sub_1C97A7A98();
  v6 = sub_1C97A7A20();
  sub_1C97A6D78(v6, v7);
  v8 = v2;
  v9 = sub_1C9A91398();
  sub_1C97A7730(v35);
  sub_1C9A91388();
  sub_1C97A77CC();

  if (v8)
  {
    goto LABEL_2;
  }

  objc_opt_self();
  sub_1C97A7890();
  sub_1C9A915F8();
  sub_1C97A7CAC();
  v12 = sub_1C97A77DC(v11, sel_propertyListWithData_options_format_error_);

  v13 = v29;
  if (!v12)
  {
    v26 = v13;
    sub_1C9A913C8();

    swift_willThrow();
    v27 = sub_1C97A7890();
    sub_1C97A5978(v27, v28);
LABEL_2:
    v10 = v35;
    goto LABEL_3;
  }

  sub_1C97A7D78();
  v14 = swift_unknownObjectRelease();
  v22 = sub_1C97A7A64(v14, v15, v16, v17, v18, v19, v20, v21, v29, v30, v31, v32, v33, v34[0]);
  sub_1C97A7D60(v22);
  v23 = sub_1C97A7890();
  sub_1C97A5978(v23, v24);
  sub_1C97A2D34(v34, v36);
  sub_1C97A7AD0(v35);
  if (!v1)
  {
    v25 = sub_1C97A7950();
    sub_1C97A78F8(v25, sel_encodeObject_forKey_);
  }

  v10 = v36;
LABEL_3:
  sub_1C97A7D18(v10);
  sub_1C97A7E08();
}

void sub_1C979EFA8()
{
  sub_1C97A7E1C();
  v63 = v3;
  v64 = v4;
  sub_1C97A7718();
  v62[4] = *MEMORY[0x1E69E9840];
  v61[3] = &type metadata for SoundDetection.AudioSourceAgnosticRequest;
  v61[4] = sub_1C97A6B48();
  v5 = swift_allocObject();
  v61[0] = v5;
  v6 = v0[1];
  v5[1] = *v0;
  v5[2] = v6;
  *(v5 + 41) = *(v0 + 25);
  sub_1C9A913A8();
  sub_1C97A7A98();
  v7 = sub_1C97A7A10();
  sub_1C97A6BCC(v7, v8);
  v9 = v2;
  v10 = sub_1C9A91398();
  sub_1C97A7730(v61);
  sub_1C9A91388();
  sub_1C97A77CC();

  if (v9)
  {
    goto LABEL_2;
  }

  objc_opt_self();
  sub_1C97A7890();
  sub_1C9A915F8();
  sub_1C97A79C4();
  v19 = sub_1C97A7794(v12, sel_propertyListWithData_options_format_error_, v13, v14, v15, v16, v17, v18, v45, v48);

  v20 = v49;
  if (!v19)
  {
    v42 = v20;
    sub_1C9A913C8();

    swift_willThrow();
    v43 = sub_1C97A7890();
    sub_1C97A5978(v43, v44);
LABEL_2:
    v11 = v61;
    goto LABEL_3;
  }

  sub_1C97A7B08();
  v21 = swift_unknownObjectRelease();
  v29 = sub_1C97A799C(v21, v22, v23, v24, v25, v26, v27, v28, v46, v49, v51, v53, v55, v57, v59);
  sub_1C97A7C08(v29, v30);
  v31 = sub_1C97A7890();
  v33 = sub_1C97A5978(v31, v32);
  sub_1C97A7C88(v33, v34, v35, v36, v37, v38, v39, v40, v47, v50, v52, v54, v56, v58, v60);
  sub_1C97A7AD0(v61);
  if (!v1)
  {
    v41 = sub_1C97A7950();
    sub_1C97A78F8(v41, sel_encodeObject_forKey_);
  }

  v11 = v62;
LABEL_3:
  sub_1C97A7D18(v11);
  sub_1C97A7E08();
}

void sub_1C979F8E8()
{
  sub_1C97A7E1C();
  v46 = v1;
  v47 = v2;
  v4 = v3;
  v6 = v5;
  v45 = *MEMORY[0x1E69E9840];
  v43[3] = &unk_1F4938D98;
  v7 = sub_1C97A65F8();
  v43[4] = v7;
  v43[0] = v6;
  v43[1] = v4;
  sub_1C9A913A8();
  sub_1C97A7A98();

  v8 = sub_1C9A91398();
  sub_1C97A5A8C(v43, &unk_1F4938D98);
  sub_1C9A91388();
  sub_1C97A7A3C();

  if (v0)
  {
    goto LABEL_2;
  }

  objc_opt_self();
  sub_1C97A796C();
  sub_1C9A915F8();
  sub_1C97A79C4();
  v17 = sub_1C97A7794(v10, sel_propertyListWithData_options_format_error_, v11, v12, v13, v14, v15, v16, v37, v39);

  v18 = v40;
  if (!v17)
  {
    v34 = v18;
    sub_1C9A913C8();

    swift_willThrow();
    v35 = sub_1C97A79F0();
    sub_1C97A5978(v35, v36);
LABEL_2:
    v9 = v43;
    goto LABEL_3;
  }

  sub_1C97A7B08();
  v19 = swift_unknownObjectRelease();
  v27 = sub_1C97A79D0(v19, v20, v21, v22, v23, v24, v25, v26, v38, v40, v41);
  v29 = sub_1C99785F8(v27, v28);
  sub_1C97A7DE4(v29, v30);
  v31 = sub_1C97A79F0();
  sub_1C97A5978(v31, v32);
  sub_1C97A2D34(&v42, v44);
  sub_1C97A592C(v43);
  sub_1C98058A4(v44);
  v33 = sub_1C97A7BEC();
  sub_1C97A7BA4(v33, sel_encodeObject_forKey_);

  v9 = v44;
LABEL_3:
  sub_1C97A7CD0(v9);
  sub_1C97A7E08();
}

uint64_t sub_1C979FCB4()
{
  sub_1C97A7718();
  v36 = *MEMORY[0x1E69E9840];
  v34[3] = &type metadata for SoundClassification.AudioSourceAgnosticRequest;
  v34[4] = sub_1C97A6314();
  v34[0] = swift_allocObject();
  v2 = sub_1C97A7CE8(v34[0]);
  memcpy(v2, v3, 0x78uLL);
  sub_1C9A913A8();
  sub_1C97A7A98();
  v4 = sub_1C97A7A20();
  sub_1C97A639C(v4, v5);
  v6 = v1;
  v7 = sub_1C9A91398();
  sub_1C97A7730(v34);
  sub_1C9A91388();
  sub_1C97A77CC();

  if (v6)
  {
    goto LABEL_2;
  }

  objc_opt_self();
  sub_1C97A7890();
  sub_1C9A915F8();
  sub_1C97A7CAC();
  v11 = sub_1C97A77DC(v10, sel_propertyListWithData_options_format_error_);

  v12 = v28;
  if (!v11)
  {
    v25 = v12;
    sub_1C9A913C8();

    swift_willThrow();
    v26 = sub_1C97A7890();
    sub_1C97A5978(v26, v27);
LABEL_2:
    v8 = v34;
    return sub_1C97A7CD0(v8);
  }

  sub_1C97A7D78();
  v13 = swift_unknownObjectRelease();
  v21 = sub_1C97A7A64(v13, v14, v15, v16, v17, v18, v19, v20, v28, v29, v30, v31, v32, v33[0]);
  sub_1C97A7D60(v21);
  v22 = sub_1C97A7890();
  sub_1C97A5978(v22, v23);
  sub_1C97A2D34(v33, v35);
  sub_1C97A7BC0(v34);
  if (!v0)
  {
    v24 = sub_1C97A7950();
    sub_1C97A78F8(v24, sel_encodeObject_forKey_);
  }

  v8 = v35;
  return sub_1C97A7CD0(v8);
}

void sub_1C97A03A0()
{
  sub_1C97A7E1C();
  v51 = v1;
  v52 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v50 = *MEMORY[0x1E69E9840];
  v48[3] = &type metadata for SoundActionsCommand;
  v48[4] = sub_1C97A6018();
  sub_1C97A7DFC();
  v11 = swift_allocObject();
  v48[0] = v11;
  v11[2] = v10;
  v11[3] = v8;
  v11[4] = v6;
  v11[5] = v4;
  sub_1C9A913A8();
  sub_1C97A7A98();

  v12 = sub_1C9A91398();
  sub_1C97A5A8C(v48, &type metadata for SoundActionsCommand);
  sub_1C9A91388();
  sub_1C97A77CC();

  if (v12)
  {
    goto LABEL_2;
  }

  objc_opt_self();
  sub_1C97A7890();
  sub_1C9A915F8();
  sub_1C97A79C4();
  v21 = sub_1C97A7794(v14, sel_propertyListWithData_options_format_error_, v15, v16, v17, v18, v19, v20, v39, v41);

  v22 = v42;
  if (!v21)
  {
    v36 = v22;
    sub_1C9A913C8();

    swift_willThrow();
    v37 = sub_1C97A7890();
    sub_1C97A5978(v37, v38);
LABEL_2:
    v13 = v48;
    goto LABEL_3;
  }

  sub_1C97A7B08();
  v23 = swift_unknownObjectRelease();
  v31 = sub_1C97A799C(v23, v24, v25, v26, v27, v28, v29, v30, v40, v42, v43, v44, v45, v46, v47);
  sub_1C97A7C08(v31, v32);
  v33 = sub_1C97A7890();
  sub_1C97A5978(v33, v34);
  sub_1C97A2D34(&v47, v49);
  sub_1C97A592C(v48);
  sub_1C98058A4(v49);
  v35 = sub_1C97A7950();
  sub_1C97A78F8(v35, sel_encodeObject_forKey_);

  v13 = v49;
LABEL_3:
  sub_1C97A7CD0(v13);
  sub_1C97A7E08();
}

void sub_1C97A0D5C()
{
  sub_1C97A7E1C();
  v45 = v0;
  v46 = v1;
  v35 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v44 = *MEMORY[0x1E69E9840];
  v42[3] = &type metadata for ModelFeatureConnection;
  sub_1C97A58D8();
  sub_1C97A7A30();
  sub_1C97A7DFC();
  v11 = swift_allocObject();
  v42[0] = v11;
  v11[2] = v10;
  v11[3] = v8;
  v11[4] = v6;
  v11[5] = v4;
  sub_1C9A913A8();
  sub_1C97A7A98();

  v12 = sub_1C9A91398();
  sub_1C97A5A8C(v42, &type metadata for ModelFeatureConnection);
  sub_1C9A91388();
  sub_1C97A77CC();

  if (v12)
  {
    goto LABEL_2;
  }

  v14 = v35;
  v15 = objc_opt_self();
  sub_1C97A7890();
  sub_1C9A915F8();
  sub_1C97A79C4();
  v16 = [v15 propertyListWithData:v6 options:0 format:0 error:&v36];

  v17 = v36;
  if (!v16)
  {
    v32 = v17;
    sub_1C9A913C8();

    swift_willThrow();
    v33 = sub_1C97A7890();
    sub_1C97A5978(v33, v34);
LABEL_2:
    v13 = v42;
    goto LABEL_3;
  }

  sub_1C97A7B08();
  v18 = swift_unknownObjectRelease();
  v26 = sub_1C97A799C(v18, v19, v20, v21, v22, v23, v24, v25, v35, v36, v37, v38, v39, v40, v41);
  sub_1C97A7C08(v26, v27);
  v28 = sub_1C97A7890();
  sub_1C97A5978(v28, v29);
  sub_1C97A2D34(&v41, v43);
  sub_1C97A592C(v42);
  v30 = sub_1C98058A4(v43);
  v31 = sub_1C9A92478();
  [v14 encodeObject:v30 forKey:v31];

  v13 = v43;
LABEL_3:
  sub_1C97A7CD0(v13);
  sub_1C97A7E08();
}

uint64_t sub_1C97A0FE8@<X0>(void *a1@<X2>, uint64_t a2@<X8>)
{
  v5 = sub_1C9A92478();
  v6 = [a1 decodePropertyListForKey_];

  if (v6)
  {
    sub_1C9A93318();
    swift_unknownObjectRelease();
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
  }

  v16[0] = v14;
  v16[1] = v15;
  sub_1C97A2C7C(v16, &v14);
  if (!*(&v15 + 1))
  {
    sub_1C97A59D0(&v14);
    goto LABEL_9;
  }

  v7 = sub_1C97A2CEC(&qword_1EC3C6330);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    sub_1C97A5A38();
    swift_allocError();
    *v10 = 2;
    swift_willThrow();
    return sub_1C97A59D0(v16);
  }

  *(&v15 + 1) = v7;
  *&v14 = v13;
  sub_1C979C244(&v14, v11);
  sub_1C97A59D0(v16);
  result = sub_1C97A592C(&v14);
  if (!v2)
  {
    v9 = v11[1];
    *a2 = v11[0];
    *(a2 + 16) = v9;
    *(a2 + 32) = v11[2];
    *(a2 + 48) = v12;
  }

  return result;
}

uint64_t sub_1C97A115C()
{
  v0 = sub_1C97A7D48();
  v1 = sub_1C97A7D00(v0, sel_decodePropertyListForKey_);

  if (v1)
  {
    sub_1C97A7D30();
    v2 = swift_unknownObjectRelease();
  }

  else
  {
    sub_1C97A7AFC();
  }

  sub_1C97A789C(v2, v3, v4, v5, v6, v7, v8, v9, v14, v15, v16[0], v16[1]);
  if (!*(&v15 + 1))
  {
    sub_1C97A59D0(&v14);
    goto LABEL_8;
  }

  sub_1C97A2CEC(&qword_1EC3C6330);
  if ((sub_1C97A7930() & 1) == 0)
  {
LABEL_8:
    sub_1C97A5A38();
    v11 = sub_1C97A7A80();
    sub_1C97A78BC(v11, v12);
    sub_1C97A59D0(v16);
    return sub_1C97A7D90();
  }

  sub_1C97A77FC();
  sub_1C979C3EC(v10);
  sub_1C97A59D0(v16);
  sub_1C97A592C(&v14);
  return sub_1C97A7D90();
}

uint64_t sub_1C97A1284()
{
  v0 = sub_1C97A7D48();
  v1 = sub_1C97A7D00(v0, sel_decodePropertyListForKey_);

  if (v1)
  {
    sub_1C97A7D30();
    v2 = swift_unknownObjectRelease();
  }

  else
  {
    sub_1C97A7AFC();
  }

  sub_1C97A789C(v2, v3, v4, v5, v6, v7, v8, v9, v14, v15, v16[0], v16[1]);
  if (!*(&v15 + 1))
  {
    sub_1C97A59D0(&v14);
    goto LABEL_8;
  }

  sub_1C97A2CEC(&qword_1EC3C6330);
  if ((sub_1C97A7930() & 1) == 0)
  {
LABEL_8:
    sub_1C97A5A38();
    v11 = sub_1C97A7A80();
    sub_1C97A78BC(v11, v12);
    sub_1C97A59D0(v16);
    return sub_1C97A7D90();
  }

  sub_1C97A77FC();
  sub_1C979C558(v10);
  sub_1C97A59D0(v16);
  sub_1C97A592C(&v14);
  return sub_1C97A7D90();
}

uint64_t sub_1C97A13A0()
{
  v2 = sub_1C97A78DC();
  v3 = sub_1C97A7B20(v2, sel_decodePropertyListForKey_);

  if (v3)
  {
    sub_1C9A93318();
    swift_unknownObjectRelease();
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
  }

  v4 = sub_1C97A79DC(v13, v14);
  sub_1C97A2C7C(v4, &v13);
  if (!v14.n128_u64[1])
  {
    sub_1C97A59D0(&v13);
    goto LABEL_9;
  }

  sub_1C97A2CEC(&qword_1EC3C6330);
  if ((sub_1C97A7914() & 1) == 0)
  {
LABEL_9:
    sub_1C97A5A38();
    v10 = sub_1C97A7A80();
    sub_1C97A7834(v10, v11);
    return sub_1C97A59D0(v17);
  }

  sub_1C97A7B88();
  sub_1C979C6B0(v5, v6);
  sub_1C97A7B70();
  result = sub_1C97A592C(&v12);
  if (!v1)
  {
    v8 = v16;
    v9 = v14;
    *v0 = v13;
    *(v0 + 16) = v9;
    *(v0 + 32) = v15;
    *(v0 + 48) = v8;
  }

  return result;
}

uint64_t sub_1C97A14F0()
{
  v2 = sub_1C97A78DC();
  v3 = sub_1C97A7B20(v2, sel_decodePropertyListForKey_);

  if (v3)
  {
    sub_1C9A93318();
    swift_unknownObjectRelease();
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
  }

  v4 = sub_1C97A79DC(v15, v16);
  sub_1C97A2C7C(v4, &v15);
  if (!v16.n128_u64[1])
  {
    sub_1C97A59D0(&v15);
    goto LABEL_9;
  }

  sub_1C97A2CEC(&qword_1EC3C6330);
  if ((sub_1C97A7914() & 1) == 0)
  {
LABEL_9:
    sub_1C97A5A38();
    v12 = sub_1C97A7A80();
    sub_1C97A7834(v12, v13);
    return sub_1C97A59D0(v19);
  }

  sub_1C97A7B88();
  sub_1C979C858(v5, v6);
  sub_1C97A7B70();
  result = sub_1C97A592C(&v14);
  if (!v1)
  {
    v8 = v16.n128_u8[0];
    v9 = v16.n128_u64[1];
    v10 = v17;
    v11 = v18;
    *v0 = v15;
    v0[1].n128_u8[0] = v8;
    v0[1].n128_u64[1] = v9;
    v0[2].n128_u64[0] = v10;
    v0[2].n128_u8[8] = v11;
  }

  return result;
}

uint64_t sub_1C97A1648()
{
  v2 = sub_1C97A78DC();
  v3 = sub_1C97A7B20(v2, sel_decodePropertyListForKey_);

  if (v3)
  {
    sub_1C9A93318();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11[0] = v9;
  v11[1] = v10;
  sub_1C97A2C7C(v11, &v9);
  if (!*(&v10 + 1))
  {
    sub_1C97A59D0(&v9);
    goto LABEL_9;
  }

  v4 = sub_1C97A2CEC(&qword_1EC3C6330);
  if ((sub_1C97A7914() & 1) == 0)
  {
LABEL_9:
    sub_1C97A5A38();
    v6 = sub_1C97A7A80();
    sub_1C97A7834(v6, v7);
    return sub_1C97A59D0(v11);
  }

  *(&v10 + 1) = v4;
  *&v9 = v8;
  sub_1C979CA08(&v9, &v8);
  sub_1C97A59D0(v11);
  result = sub_1C97A592C(&v9);
  if (!v1)
  {
    *v0 = v8;
  }

  return result;
}

void *sub_1C97A1774()
{
  v1 = sub_1C97A78DC();
  v2 = sub_1C97A7B20(v1, sel_decodePropertyListForKey_);

  if (v2)
  {
    sub_1C97A7C70();
    v3 = swift_unknownObjectRelease();
  }

  else
  {
    sub_1C97A7A58();
  }

  sub_1C97A7870(v3, v4, v5, v6, v7, v8, v9, v10, v26, v28, v30, v32, v34, v36, v38, v40, v42, v44, v46, v47);
  if (!*(&v47 + 1))
  {
    sub_1C97A59D0(&v46);
    goto LABEL_9;
  }

  sub_1C97A2CEC(&qword_1EC3C6330);
  if ((sub_1C97A7810() & 1) == 0)
  {
LABEL_9:
    sub_1C97A5A38();
    v24 = sub_1C97A7A80();
    sub_1C97A7834(v24, v25);
    return sub_1C97A59D0(v48);
  }

  sub_1C97A7860();
  v19 = sub_1C97A7C60(v11, v12, v13, v14, v15, v16, v17, v18, v27, v29, v31, v33, v35, v37, v39, v41, v43, v45, v46);
  sub_1C979CBA0(v19, v20);
  sub_1C97A7B70();
  result = sub_1C97A592C(&v46);
  if (!v0)
  {
    v22 = sub_1C97A7CC4();
    return memcpy(v22, v23, 0x48uLL);
  }

  return result;
}

void sub_1C97A1868()
{
  v1 = sub_1C97A78DC();
  v2 = sub_1C97A7B20(v1, sel_decodePropertyListForKey_);

  if (v2)
  {
    sub_1C97A7C70();
    v3 = swift_unknownObjectRelease();
  }

  else
  {
    sub_1C97A7A58();
  }

  sub_1C97A7870(v3, v4, v5, v6, v7, v8, v9, v10, v24, v26, v28, v29, v31, v32, v34, v35, v36, v37, v38, v39);
  if (!*(&v39 + 1))
  {
    sub_1C97A59D0(&v38);
    goto LABEL_9;
  }

  sub_1C97A2CEC(&qword_1EC3C6330);
  if ((sub_1C97A7810() & 1) == 0)
  {
LABEL_9:
    sub_1C97A5A38();
    v22 = sub_1C97A7A80();
    sub_1C97A7834(v22, v23);
    sub_1C97A59D0(v40);
    return;
  }

  sub_1C97A7778();
  sub_1C979CD40(v11, v12);
  sub_1C97A7B70();
  v13 = sub_1C97A592C(&v38);
  if (!v0)
  {
    sub_1C97A775C(v13, v14, v15, v16, v17, v18, v19, v20, v25, v27, v30, v21, v33);
  }
}

id sub_1C97A1950()
{
  v0 = sub_1C97A7D48();
  v1 = sub_1C97A7D00(v0, sel_decodePropertyListForKey_);

  if (v1)
  {
    sub_1C97A7D30();
    v2 = swift_unknownObjectRelease();
  }

  else
  {
    sub_1C97A7AFC();
  }

  sub_1C97A789C(v2, v3, v4, v5, v6, v7, v8, v9, v14, v15, v16[0], v16[1]);
  if (!*(&v15 + 1))
  {
    sub_1C97A59D0(&v14);
    goto LABEL_8;
  }

  v1 = sub_1C97A2CEC(&qword_1EC3C6330);
  if ((sub_1C97A7930() & 1) == 0)
  {
LABEL_8:
    sub_1C97A5A38();
    v11 = sub_1C97A7A80();
    sub_1C97A78BC(v11, v12);
    sub_1C97A59D0(v16);
    return v1;
  }

  sub_1C97A77FC();
  v1 = sub_1C979CEE8(v10);
  sub_1C97A59D0(v16);
  sub_1C97A592C(&v14);
  return v1;
}

void *sub_1C97A1A4C()
{
  v1 = sub_1C97A78DC();
  v2 = sub_1C97A7B20(v1, sel_decodePropertyListForKey_);

  if (v2)
  {
    sub_1C97A7C70();
    v3 = swift_unknownObjectRelease();
  }

  else
  {
    sub_1C97A7A58();
  }

  sub_1C97A7870(v3, v4, v5, v6, v7, v8, v9, v10, v26, v28, v30, v32, v34, v36, v38, v40, v42, v44, v46, v47);
  if (!*(&v47 + 1))
  {
    sub_1C97A59D0(&v46);
    goto LABEL_9;
  }

  sub_1C97A2CEC(&qword_1EC3C6330);
  if ((sub_1C97A7810() & 1) == 0)
  {
LABEL_9:
    sub_1C97A5A38();
    v24 = sub_1C97A7A80();
    sub_1C97A7834(v24, v25);
    return sub_1C97A59D0(v48);
  }

  sub_1C97A7860();
  v19 = sub_1C97A7C60(v11, v12, v13, v14, v15, v16, v17, v18, v27, v29, v31, v33, v35, v37, v39, v41, v43, v45, v46);
  sub_1C979D018(v19, v20);
  sub_1C97A7B70();
  result = sub_1C97A592C(&v46);
  if (!v0)
  {
    v22 = sub_1C97A7CC4();
    return memcpy(v22, v23, 0x48uLL);
  }

  return result;
}

id sub_1C97A1B40()
{
  v0 = sub_1C97A7D48();
  v1 = sub_1C97A7D00(v0, sel_decodePropertyListForKey_);

  if (v1)
  {
    sub_1C97A7D30();
    v2 = swift_unknownObjectRelease();
  }

  else
  {
    sub_1C97A7AFC();
  }

  sub_1C97A789C(v2, v3, v4, v5, v6, v7, v8, v9, v14, v15, v16[0], v16[1]);
  if (!*(&v15 + 1))
  {
    sub_1C97A59D0(&v14);
    goto LABEL_8;
  }

  v1 = sub_1C97A2CEC(&qword_1EC3C6330);
  if ((sub_1C97A7930() & 1) == 0)
  {
LABEL_8:
    sub_1C97A5A38();
    v11 = sub_1C97A7A80();
    sub_1C97A78BC(v11, v12);
    sub_1C97A59D0(v16);
    return v1;
  }

  sub_1C97A77FC();
  v1 = sub_1C979D1B8(v10);
  sub_1C97A59D0(v16);
  sub_1C97A592C(&v14);
  return v1;
}

void sub_1C97A1C44()
{
  v1 = sub_1C97A78DC();
  v2 = sub_1C97A7B20(v1, sel_decodePropertyListForKey_);

  if (v2)
  {
    sub_1C97A7C70();
    v3 = swift_unknownObjectRelease();
  }

  else
  {
    sub_1C97A7A58();
  }

  sub_1C97A7870(v3, v4, v5, v6, v7, v8, v9, v10, v24, v26, v28, v29, v31, v32, v34, v35, v36, v37, v38, v39);
  if (!*(&v39 + 1))
  {
    sub_1C97A59D0(&v38);
    goto LABEL_9;
  }

  sub_1C97A2CEC(&qword_1EC3C6330);
  if ((sub_1C97A7810() & 1) == 0)
  {
LABEL_9:
    sub_1C97A5A38();
    v22 = sub_1C97A7A80();
    sub_1C97A7834(v22, v23);
    sub_1C97A59D0(v40);
    return;
  }

  sub_1C97A7778();
  sub_1C979D2F8(v11, v12);
  sub_1C97A7B70();
  v13 = sub_1C97A592C(&v38);
  if (!v0)
  {
    sub_1C97A775C(v13, v14, v15, v16, v17, v18, v19, v20, v25, v27, v30, v21, v33);
  }
}

void sub_1C97A1D2C()
{
  v1 = sub_1C97A78DC();
  v2 = sub_1C97A7B20(v1, sel_decodePropertyListForKey_);

  if (v2)
  {
    sub_1C97A7C70();
    v3 = swift_unknownObjectRelease();
  }

  else
  {
    sub_1C97A7A58();
  }

  sub_1C97A7870(v3, v4, v5, v6, v7, v8, v9, v10, v24, v26, v28, v29, v31, v32, v34, v35, v36, v37, v38, v39);
  if (!*(&v39 + 1))
  {
    sub_1C97A59D0(&v38);
    goto LABEL_9;
  }

  sub_1C97A2CEC(&qword_1EC3C6330);
  if ((sub_1C97A7810() & 1) == 0)
  {
LABEL_9:
    sub_1C97A5A38();
    v22 = sub_1C97A7A80();
    sub_1C97A7834(v22, v23);
    sub_1C97A59D0(v40);
    return;
  }

  sub_1C97A7778();
  sub_1C979D4A0(v11, v12);
  sub_1C97A7B70();
  v13 = sub_1C97A592C(&v38);
  if (!v0)
  {
    sub_1C97A775C(v13, v14, v15, v16, v17, v18, v19, v20, v25, v27, v30, v21, v33);
  }
}

void *sub_1C97A1E14()
{
  v1 = sub_1C97A78DC();
  v2 = sub_1C97A7B20(v1, sel_decodePropertyListForKey_);

  if (v2)
  {
    sub_1C9A93318();
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  v3 = sub_1C97A79DC(v11, v12);
  sub_1C97A2C7C(v3, &v11);
  if (!v12.n128_u64[1])
  {
    sub_1C97A59D0(&v11);
    goto LABEL_9;
  }

  v4 = sub_1C97A2CEC(&qword_1EC3C6330);
  if ((sub_1C97A7914() & 1) == 0)
  {
LABEL_9:
    sub_1C97A5A38();
    v8 = sub_1C97A7A80();
    sub_1C97A7834(v8, v9);
    return sub_1C97A59D0(v13);
  }

  v12.n128_u64[1] = v4;
  v11.n128_u64[0] = v10[15];
  sub_1C979D648(&v11, v10);
  sub_1C97A7B70();
  result = sub_1C97A592C(&v11);
  if (!v0)
  {
    v6 = sub_1C97A7CC4();
    return memcpy(v6, v7, 0x78uLL);
  }

  return result;
}

void *sub_1C97A1F38()
{
  v1 = sub_1C97A78DC();
  v2 = sub_1C97A7B20(v1, sel_decodePropertyListForKey_);

  if (v2)
  {
    sub_1C97A7C70();
    v3 = swift_unknownObjectRelease();
  }

  else
  {
    sub_1C97A7A58();
  }

  sub_1C97A7870(v3, v4, v5, v6, v7, v8, v9, v10, v26, v28, v30, v32, v34, v36, v38, v40, v42, v44, v46, v47);
  if (!*(&v47 + 1))
  {
    sub_1C97A59D0(&v46);
    goto LABEL_9;
  }

  sub_1C97A2CEC(&qword_1EC3C6330);
  if ((sub_1C97A7810() & 1) == 0)
  {
LABEL_9:
    sub_1C97A5A38();
    v24 = sub_1C97A7A80();
    sub_1C97A7834(v24, v25);
    return sub_1C97A59D0(v48);
  }

  sub_1C97A7860();
  v19 = sub_1C97A7C60(v11, v12, v13, v14, v15, v16, v17, v18, v27, v29, v31, v33, v35, v37, v39, v41, v43, v45, v46);
  sub_1C979D7E8(v19, v20);
  sub_1C97A7B70();
  result = sub_1C97A592C(&v46);
  if (!v0)
  {
    v22 = sub_1C97A7CC4();
    return memcpy(v22, v23, 0x41uLL);
  }

  return result;
}

void sub_1C97A202C()
{
  v2 = sub_1C97A78DC();
  v3 = sub_1C97A7B20(v2, sel_decodePropertyListForKey_);

  if (v3)
  {
    sub_1C9A93318();
    swift_unknownObjectRelease();
  }

  else
  {
    v19 = 0u;
    v20 = 0u;
  }

  v4 = sub_1C97A79DC(v19, v20);
  sub_1C97A2C7C(v4, &v19);
  if (!v20.n128_u64[1])
  {
    sub_1C97A59D0(&v19);
    goto LABEL_9;
  }

  v5 = sub_1C97A2CEC(&qword_1EC3C6330);
  if ((sub_1C97A7914() & 1) == 0)
  {
LABEL_9:
    sub_1C97A5A38();
    v14 = sub_1C97A7A80();
    sub_1C97A7834(v14, v15);
    sub_1C97A59D0(v21);
    return;
  }

  v20.n128_u64[1] = v5;
  v19.n128_u64[0] = v18;
  sub_1C979D988(&v19, v17);
  sub_1C97A7B70();
  v6 = sub_1C97A592C(&v19);
  if (!v1)
  {
    v0[2] = sub_1C97A77B8(v6, v7, v8, v9, v10, v11, v12, v13, v16, v17[0], v17[1], v17[2]);
  }
}

uint64_t sub_1C97A214C()
{
  v2 = sub_1C97A78DC();
  v3 = sub_1C97A7B20(v2, sel_decodePropertyListForKey_);

  if (v3)
  {
    sub_1C9A93318();
    swift_unknownObjectRelease();
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
  }

  v4 = sub_1C97A79DC(v13, v14);
  sub_1C97A2C7C(v4, &v13);
  if (!v14.n128_u64[1])
  {
    sub_1C97A59D0(&v13);
    goto LABEL_9;
  }

  v5 = sub_1C97A2CEC(&qword_1EC3C6330);
  if ((sub_1C97A7914() & 1) == 0)
  {
LABEL_9:
    sub_1C97A5A38();
    v8 = sub_1C97A7A80();
    sub_1C97A7834(v8, v9);
    return sub_1C97A59D0(v15);
  }

  v14.n128_u64[1] = v5;
  v13.n128_u64[0] = v12;
  sub_1C979DB2C(&v13, v10);
  sub_1C97A7B70();
  result = sub_1C97A592C(&v13);
  if (!v1)
  {
    v7 = v10[1];
    *v0 = v10[0];
    *(v0 + 16) = v7;
    *(v0 + 32) = v10[2];
    *(v0 + 48) = v11;
  }

  return result;
}

double sub_1C97A227C()
{
  v2 = sub_1C97A7D48();
  v3 = sub_1C97A7D00(v2, sel_decodePropertyListForKey_);

  if (v3)
  {
    sub_1C97A7D30();
    v4 = swift_unknownObjectRelease();
  }

  else
  {
    sub_1C97A7AFC();
  }

  sub_1C97A789C(v4, v5, v6, v7, v8, v9, v10, v11, v17, v18, v19[0], v19[1]);
  if (!*(&v18 + 1))
  {
    sub_1C97A59D0(&v17);
    goto LABEL_10;
  }

  sub_1C97A2CEC(&qword_1EC3C6330);
  if ((sub_1C97A7930() & 1) == 0)
  {
LABEL_10:
    sub_1C97A5A38();
    v14 = sub_1C97A7A80();
    sub_1C97A78BC(v14, v15);
    sub_1C97A59D0(v19);
    return v1;
  }

  sub_1C97A77FC();
  v13 = sub_1C979DCD4(v12);
  if (!v0)
  {
    v1 = v13;
  }

  sub_1C97A59D0(v19);
  sub_1C97A592C(&v17);
  return v1;
}

void sub_1C97A23AC()
{
  v1 = sub_1C97A78DC();
  v2 = sub_1C97A7B20(v1, sel_decodePropertyListForKey_);

  if (v2)
  {
    sub_1C97A7C70();
    v3 = swift_unknownObjectRelease();
  }

  else
  {
    sub_1C97A7A58();
  }

  sub_1C97A7870(v3, v4, v5, v6, v7, v8, v9, v10, v24, v26, v28, v29, v31, v32, v34, v35, v36, v37, v38, v39);
  if (!*(&v39 + 1))
  {
    sub_1C97A59D0(&v38);
    goto LABEL_9;
  }

  sub_1C97A2CEC(&qword_1EC3C6330);
  if ((sub_1C97A7810() & 1) == 0)
  {
LABEL_9:
    sub_1C97A5A38();
    v22 = sub_1C97A7A80();
    sub_1C97A7834(v22, v23);
    sub_1C97A59D0(v40);
    return;
  }

  sub_1C97A7778();
  sub_1C979DE3C(v11, v12);
  sub_1C97A7B70();
  v13 = sub_1C97A592C(&v38);
  if (!v0)
  {
    sub_1C97A775C(v13, v14, v15, v16, v17, v18, v19, v20, v25, v27, v30, v21, v33);
  }
}

void sub_1C97A2494()
{
  v1 = sub_1C97A78DC();
  v2 = sub_1C97A7B20(v1, sel_decodePropertyListForKey_);

  if (v2)
  {
    sub_1C97A7C70();
    v3 = swift_unknownObjectRelease();
  }

  else
  {
    sub_1C97A7A58();
  }

  sub_1C97A7870(v3, v4, v5, v6, v7, v8, v9, v10, v24, v26, v28, v29, v31, v32, v34, v35, v36, v37, v38, v39);
  if (!*(&v39 + 1))
  {
    sub_1C97A59D0(&v38);
    goto LABEL_9;
  }

  sub_1C97A2CEC(&qword_1EC3C6330);
  if ((sub_1C97A7810() & 1) == 0)
  {
LABEL_9:
    sub_1C97A5A38();
    v22 = sub_1C97A7A80();
    sub_1C97A7834(v22, v23);
    sub_1C97A59D0(v40);
    return;
  }

  sub_1C97A7778();
  sub_1C979DFE4(v11, v12);
  sub_1C97A7B70();
  v13 = sub_1C97A592C(&v38);
  if (!v0)
  {
    sub_1C97A775C(v13, v14, v15, v16, v17, v18, v19, v20, v25, v27, v30, v21, v33);
  }
}

void sub_1C97A25E4(void *a1@<X2>, void (*a2)(void)@<X3>, __n128 *a3@<X8>)
{
  v7 = sub_1C9A92478();
  v8 = [a1 decodePropertyListForKey_];

  if (v8)
  {
    sub_1C9A93318();
    swift_unknownObjectRelease();
  }

  else
  {
    v23 = 0u;
    v24 = 0u;
  }

  v25[0] = v23;
  v25[1] = v24;
  sub_1C97A2C7C(v25, &v23);
  if (!*(&v24 + 1))
  {
    sub_1C97A59D0(&v23);
    goto LABEL_9;
  }

  v9 = sub_1C97A2CEC(&qword_1EC3C6330);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    sub_1C97A5A38();
    v18 = sub_1C97A7A80();
    sub_1C97A7834(v18, v19);
    sub_1C97A59D0(v25);
    return;
  }

  *(&v24 + 1) = v9;
  *&v23 = v22;
  sub_1C979E2C8(&v23, a2, v21);
  sub_1C97A59D0(v25);
  v10 = sub_1C97A592C(&v23);
  if (!v3)
  {
    a3[2] = sub_1C97A77B8(v10, v11, v12, v13, v14, v15, v16, v17, v20, *v21, *&v21[1], *&v21[2]);
  }
}

void *sub_1C97A277C()
{
  v1 = sub_1C97A78DC();
  v2 = sub_1C97A7B20(v1, sel_decodePropertyListForKey_);

  if (v2)
  {
    sub_1C9A93318();
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  v3 = sub_1C97A79DC(v11, v12);
  sub_1C97A2C7C(v3, &v11);
  if (!v12.n128_u64[1])
  {
    sub_1C97A59D0(&v11);
    goto LABEL_9;
  }

  v4 = sub_1C97A2CEC(&qword_1EC3C6330);
  if ((sub_1C97A7914() & 1) == 0)
  {
LABEL_9:
    sub_1C97A5A38();
    v8 = sub_1C97A7A80();
    sub_1C97A7834(v8, v9);
    return sub_1C97A59D0(v13);
  }

  v12.n128_u64[1] = v4;
  v11.n128_u64[0] = v10[11];
  sub_1C979E468(&v11, v10);
  sub_1C97A7B70();
  result = sub_1C97A592C(&v11);
  if (!v0)
  {
    v6 = sub_1C97A7CC4();
    return memcpy(v6, v7, 0x58uLL);
  }

  return result;
}

id sub_1C97A28A0()
{
  v1 = sub_1C97A7D48();
  v2 = sub_1C97A7D00(v1, sel_decodePropertyListForKey_);

  if (v2)
  {
    sub_1C97A7D30();
    v3 = swift_unknownObjectRelease();
  }

  else
  {
    sub_1C97A7AFC();
  }

  sub_1C97A789C(v3, v4, v5, v6, v7, v8, v9, v10, v16, v17, v18[0], v18[1]);
  if (!*(&v17 + 1))
  {
    sub_1C97A59D0(&v16);
    goto LABEL_10;
  }

  v2 = sub_1C97A2CEC(&qword_1EC3C6330);
  if ((sub_1C97A7930() & 1) == 0)
  {
LABEL_10:
    sub_1C97A5A38();
    v13 = sub_1C97A7A80();
    sub_1C97A78BC(v13, v14);
    sub_1C97A59D0(v18);
    return v2;
  }

  sub_1C97A77FC();
  v12 = sub_1C979E608(v11);
  if (!v0)
  {
    v2 = v12;
  }

  sub_1C97A59D0(v18);
  sub_1C97A592C(&v16);
  return v2;
}

uint64_t sub_1C97A2A04(uint64_t a1, uint64_t a2, void *a3, void (*a4)(void))
{
  v6 = sub_1C9A92478();
  v7 = [a3 decodePropertyListForKey_];

  if (v7)
  {
    sub_1C9A93318();
    v8 = swift_unknownObjectRelease();
  }

  else
  {
    sub_1C97A7AFC();
  }

  sub_1C97A789C(v8, v9, v10, v11, v12, v13, v14, v15, v20, v21, v22[0], v22[1]);
  if (*(&v21 + 1))
  {
    v16 = sub_1C97A2CEC(&qword_1EC3C6330);
    if (swift_dynamicCast())
    {
      *(&v21 + 1) = v16;
      *&v20 = v23;
      sub_1C979E18C(&v20, a4);
      sub_1C97A59D0(v22);
      return sub_1C97A592C(&v20);
    }
  }

  else
  {
    sub_1C97A59D0(&v20);
  }

  sub_1C97A5A38();
  v18 = sub_1C97A7A80();
  sub_1C97A78BC(v18, v19);
  return sub_1C97A59D0(v22);
}

void *sub_1C97A2C48(size_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t sub_1C97A2C7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C97A2CEC(&unk_1EC3C5E60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C97A2CEC(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

_OWORD *sub_1C97A2D34(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1C97A2D90(unsigned __int16 *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 0xFFFF) <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if ((a2 + 0xFFFF) < 0xFF0000)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 16)) - 0xFFFF;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        return 0;
      }

      return (*a1 | (v4 << 16)) - 0xFFFF;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 0xFFFF;
    }
  }

  return 0;
}

uint64_t sub_1C97A2E00(uint64_t result, int a2, int a3)
{
  if ((a3 + 0xFFFF) <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if ((a3 + 0xFFFF) < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    v6 = ((a2 - 1) >> 16) + 1;
    *result = a2 - 1;
    switch(v5)
    {
      case 1:
        *(result + 2) = v6;
        break;
      case 2:
        *(result + 2) = v6;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *(result + 2) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *(result + 2) = 0;
        break;
      case 2:
        *(result + 2) = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *(result + 2) = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

__n128 sub_1C97A2EC8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1C97A2EE4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 52))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 24);
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C97A2F30(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 52) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 52) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 1;
    }
  }

  return result;
}

__n128 sub_1C97A2F98(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t storeEnumTagSinglePayload for AudioSessionAudioHardwareControlFlags(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 8) = v3;
  return result;
}

__n128 sub_1C97A3030(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t storeEnumTagSinglePayload for E5RTErrorCode(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

uint64_t sub_1C97A30B8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

uint64_t sub_1C97A30F0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 18656))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C97A3114(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 18648) = 0;
    *(result + 18640) = 0;
    *(result + 18632) = 0;
    *(result + 18624) = 0;
    *(result + 18616) = 0;
    *(result + 18608) = 0;
    *(result + 18600) = 0;
    *(result + 18592) = 0;
    *(result + 18584) = 0;
    *(result + 18576) = 0;
    *(result + 18568) = 0;
    *(result + 18560) = 0;
    *(result + 18552) = 0;
    *(result + 18544) = 0;
    *(result + 18536) = 0;
    *(result + 18528) = 0;
    *(result + 18520) = 0;
    *(result + 18512) = 0;
    *(result + 18504) = 0;
    *(result + 18496) = 0;
    *(result + 18488) = 0;
    *(result + 18480) = 0;
    *(result + 18472) = 0;
    *(result + 18464) = 0;
    *(result + 18456) = 0;
    *(result + 18448) = 0;
    *(result + 18440) = 0;
    *(result + 18432) = 0;
    *(result + 18424) = 0;
    *(result + 18416) = 0;
    *(result + 18408) = 0;
    *(result + 18400) = 0;
    *(result + 18392) = 0;
    *(result + 18384) = 0;
    *(result + 18376) = 0;
    *(result + 18368) = 0;
    *(result + 18360) = 0;
    *(result + 18352) = 0;
    *(result + 18344) = 0;
    *(result + 18336) = 0;
    *(result + 18328) = 0;
    *(result + 18320) = 0;
    *(result + 18312) = 0;
    *(result + 18304) = 0;
    *(result + 18296) = 0;
    *(result + 18288) = 0;
    *(result + 18280) = 0;
    *(result + 18272) = 0;
    *(result + 18264) = 0;
    *(result + 18256) = 0;
    *(result + 18248) = 0;
    *(result + 18240) = 0;
    *(result + 18232) = 0;
    *(result + 18224) = 0;
    *(result + 18216) = 0;
    *(result + 18208) = 0;
    *(result + 18200) = 0;
    *(result + 18192) = 0;
    *(result + 18184) = 0;
    *(result + 18176) = 0;
    *(result + 18168) = 0;
    *(result + 18160) = 0;
    *(result + 18152) = 0;
    *(result + 18144) = 0;
    *(result + 18136) = 0;
    *(result + 18128) = 0;
    *(result + 18120) = 0;
    *(result + 18112) = 0;
    *(result + 18104) = 0;
    *(result + 18096) = 0;
    *(result + 18088) = 0;
    *(result + 18080) = 0;
    *(result + 18072) = 0;
    *(result + 18064) = 0;
    *(result + 18056) = 0;
    *(result + 18048) = 0;
    *(result + 18040) = 0;
    *(result + 18032) = 0;
    *(result + 18024) = 0;
    *(result + 18016) = 0;
    *(result + 18008) = 0;
    *(result + 18000) = 0;
    *(result + 17992) = 0;
    *(result + 17984) = 0;
    *(result + 17976) = 0;
    *(result + 17968) = 0;
    *(result + 17960) = 0;
    *(result + 17952) = 0;
    *(result + 17944) = 0;
    *(result + 17936) = 0;
    *(result + 17928) = 0;
    *(result + 17920) = 0;
    *(result + 17912) = 0;
    *(result + 17904) = 0;
    *(result + 17896) = 0;
    *(result + 17888) = 0;
    *(result + 17880) = 0;
    *(result + 17872) = 0;
    *(result + 17864) = 0;
    *(result + 17856) = 0;
    *(result + 17848) = 0;
    *(result + 17840) = 0;
    *(result + 17832) = 0;
    *(result + 17824) = 0;
    *(result + 17816) = 0;
    *(result + 17808) = 0;
    *(result + 17800) = 0;
    *(result + 17792) = 0;
    *(result + 17784) = 0;
    *(result + 17776) = 0;
    *(result + 17768) = 0;
    *(result + 17760) = 0;
    *(result + 17752) = 0;
    *(result + 17744) = 0;
    *(result + 17736) = 0;
    *(result + 17728) = 0;
    *(result + 17720) = 0;
    *(result + 17712) = 0;
    *(result + 17704) = 0;
    *(result + 17696) = 0;
    *(result + 17688) = 0;
    *(result + 17680) = 0;
    *(result + 17672) = 0;
    *(result + 17664) = 0;
    *(result + 17656) = 0;
    *(result + 17648) = 0;
    *(result + 17640) = 0;
    *(result + 17632) = 0;
    *(result + 17624) = 0;
    *(result + 17616) = 0;
    *(result + 17608) = 0;
    *(result + 17600) = 0;
    *(result + 17592) = 0;
    *(result + 17584) = 0;
    *(result + 17576) = 0;
    *(result + 17568) = 0;
    *(result + 17560) = 0;
    *(result + 17552) = 0;
    *(result + 17544) = 0;
    *(result + 17536) = 0;
    *(result + 17528) = 0;
    *(result + 17520) = 0;
    *(result + 17512) = 0;
    *(result + 17504) = 0;
    *(result + 17496) = 0;
    *(result + 17488) = 0;
    *(result + 17480) = 0;
    *(result + 17472) = 0;
    *(result + 17464) = 0;
    *(result + 17456) = 0;
    *(result + 17448) = 0;
    *(result + 17440) = 0;
    *(result + 17432) = 0;
    *(result + 17424) = 0;
    *(result + 17416) = 0;
    *(result + 17408) = 0;
    *(result + 17400) = 0;
    *(result + 17392) = 0;
    *(result + 17384) = 0;
    *(result + 17376) = 0;
    *(result + 17368) = 0;
    *(result + 17360) = 0;
    *(result + 17352) = 0;
    *(result + 17344) = 0;
    *(result + 17336) = 0;
    *(result + 17328) = 0;
    *(result + 17320) = 0;
    *(result + 17312) = 0;
    *(result + 17304) = 0;
    *(result + 17296) = 0;
    *(result + 17288) = 0;
    *(result + 17280) = 0;
    *(result + 17272) = 0;
    *(result + 17264) = 0;
    *(result + 17256) = 0;
    *(result + 17248) = 0;
    *(result + 17240) = 0;
    *(result + 17232) = 0;
    *(result + 17224) = 0;
    *(result + 17216) = 0;
    *(result + 17208) = 0;
    *(result + 17200) = 0;
    *(result + 17192) = 0;
    *(result + 17184) = 0;
    *(result + 17176) = 0;
    *(result + 17168) = 0;
    *(result + 17160) = 0;
    *(result + 17152) = 0;
    *(result + 17144) = 0;
    *(result + 17136) = 0;
    *(result + 17128) = 0;
    *(result + 17120) = 0;
    *(result + 17112) = 0;
    *(result + 17104) = 0;
    *(result + 17096) = 0;
    *(result + 17088) = 0;
    *(result + 17080) = 0;
    *(result + 17072) = 0;
    *(result + 17064) = 0;
    *(result + 17056) = 0;
    *(result + 17048) = 0;
    *(result + 17040) = 0;
    *(result + 17032) = 0;
    *(result + 17024) = 0;
    *(result + 17016) = 0;
    *(result + 17008) = 0;
    *(result + 17000) = 0;
    *(result + 16992) = 0;
    *(result + 16984) = 0;
    *(result + 16976) = 0;
    *(result + 16968) = 0;
    *(result + 16960) = 0;
    *(result + 16952) = 0;
    *(result + 16944) = 0;
    *(result + 16936) = 0;
    *(result + 16928) = 0;
    *(result + 16920) = 0;
    *(result + 16912) = 0;
    *(result + 16904) = 0;
    *(result + 16896) = 0;
    *(result + 16888) = 0;
    *(result + 16880) = 0;
    *(result + 16872) = 0;
    *(result + 16864) = 0;
    *(result + 16856) = 0;
    *(result + 16848) = 0;
    *(result + 16840) = 0;
    *(result + 16832) = 0;
    *(result + 16824) = 0;
    *(result + 16816) = 0;
    *(result + 16808) = 0;
    *(result + 16800) = 0;
    *(result + 16792) = 0;
    *(result + 16784) = 0;
    *(result + 16776) = 0;
    *(result + 16768) = 0;
    *(result + 16760) = 0;
    *(result + 16752) = 0;
    *(result + 16744) = 0;
    *(result + 16736) = 0;
    *(result + 16728) = 0;
    *(result + 16720) = 0;
    *(result + 16712) = 0;
    *(result + 16704) = 0;
    *(result + 16696) = 0;
    *(result + 16688) = 0;
    *(result + 16680) = 0;
    *(result + 16672) = 0;
    *(result + 16664) = 0;
    *(result + 16656) = 0;
    *(result + 16344) = 0;
    *(result + 16392) = 0;
    *(result + 0x4000) = 0;
    *(result + 16376) = 0;
    *(result + 16368) = 0;
    *(result + 16360) = 0;
    *(result + 16352) = 0;
    *(result + 16440) = 0;
    *(result + 16432) = 0;
    *(result + 16424) = 0;
    *(result + 16416) = 0;
    *(result + 16408) = 0;
    *(result + 16400) = 0;
    *(result + 16488) = 0;
    *(result + 16480) = 0;
    *(result + 16472) = 0;
    *(result + 16464) = 0;
    *(result + 16456) = 0;
    *(result + 16448) = 0;
    *(result + 16536) = 0;
    *(result + 16528) = 0;
    *(result + 16520) = 0;
    *(result + 16512) = 0;
    *(result + 16504) = 0;
    *(result + 16496) = 0;
    *(result + 16584) = 0;
    *(result + 16576) = 0;
    *(result + 16568) = 0;
    *(result + 16560) = 0;
    *(result + 16552) = 0;
    *(result + 16544) = 0;
    *(result + 16648) = 0;
    *(result + 16624) = 0;
    *(result + 16616) = 0;
    *(result + 16608) = 0;
    *(result + 16600) = 0;
    *(result + 16592) = 0;
    *(result + 16640) = 0;
    *(result + 16632) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 12536) = 0u;
    *(result + 12520) = 0u;
    *(result + 12504) = 0u;
    *(result + 12488) = 0u;
    *(result + 12472) = 0u;
    *(result + 12456) = 0u;
    *(result + 12440) = 0u;
    *(result + 12424) = 0u;
    *(result + 12408) = 0u;
    *(result + 12392) = 0u;
    *(result + 12376) = 0u;
    *(result + 12360) = 0u;
    *(result + 12344) = 0u;
    *(result + 12328) = 0u;
    *(result + 12312) = 0u;
    *(result + 12296) = 0u;
    *(result + 8440) = 0u;
    *(result + 8424) = 0u;
    *(result + 8408) = 0u;
    *(result + 8392) = 0u;
    *(result + 8376) = 0u;
    *(result + 8360) = 0u;
    *(result + 8344) = 0u;
    *(result + 8328) = 0u;
    *(result + 8312) = 0u;
    *(result + 8296) = 0u;
    *(result + 8280) = 0u;
    *(result + 8264) = 0u;
    *(result + 8248) = 0u;
    *(result + 8232) = 0u;
    *(result + 8216) = 0u;
    *(result + 8200) = 0u;
    *(result + 4344) = 0u;
    *(result + 4328) = 0u;
    *(result + 4312) = 0u;
    *(result + 4296) = 0u;
    *(result + 4280) = 0u;
    *(result + 4264) = 0u;
    *(result + 4248) = 0u;
    *(result + 4232) = 0u;
    *(result + 4216) = 0u;
    *(result + 4200) = 0u;
    *(result + 4184) = 0u;
    *(result + 4168) = 0u;
    *(result + 4152) = 0u;
    *(result + 4136) = 0u;
    *(result + 4120) = 0u;
    *(result + 4104) = 0u;
    *(result + 4088) = 0u;
    *(result + 4072) = 0u;
    *(result + 4056) = 0u;
    *(result + 4040) = 0u;
    *(result + 4024) = 0u;
    *(result + 4008) = 0u;
    *(result + 3992) = 0u;
    *(result + 3976) = 0u;
    *(result + 3960) = 0u;
    *(result + 3944) = 0u;
    *(result + 3928) = 0u;
    *(result + 3912) = 0u;
    *(result + 3896) = 0u;
    *(result + 3880) = 0u;
    *(result + 3864) = 0u;
    *(result + 3848) = 0u;
    *(result + 3832) = 0u;
    *(result + 3816) = 0u;
    *(result + 3800) = 0u;
    *(result + 3784) = 0u;
    *(result + 3768) = 0u;
    *(result + 3752) = 0u;
    *(result + 3736) = 0u;
    *(result + 3720) = 0u;
    *(result + 3704) = 0u;
    *(result + 3688) = 0u;
    *(result + 3672) = 0u;
    *(result + 3656) = 0u;
    *(result + 3640) = 0u;
    *(result + 3624) = 0u;
    *(result + 3608) = 0u;
    *(result + 3592) = 0u;
    *(result + 3576) = 0u;
    *(result + 3560) = 0u;
    *(result + 3544) = 0u;
    *(result + 3528) = 0u;
    *(result + 3512) = 0u;
    *(result + 3496) = 0u;
    *(result + 3480) = 0u;
    *(result + 3464) = 0u;
    *(result + 3448) = 0u;
    *(result + 3432) = 0u;
    *(result + 3416) = 0u;
    *(result + 3400) = 0u;
    *(result + 3384) = 0u;
    *(result + 3368) = 0u;
    *(result + 3352) = 0u;
    *(result + 3336) = 0u;
    *(result + 3320) = 0u;
    *(result + 3304) = 0u;
    *(result + 3288) = 0u;
    *(result + 3272) = 0u;
    *(result + 3256) = 0u;
    *(result + 3240) = 0u;
    *(result + 3224) = 0u;
    *(result + 3208) = 0u;
    *(result + 3192) = 0u;
    *(result + 3176) = 0u;
    *(result + 3160) = 0u;
    *(result + 3144) = 0u;
    *(result + 3128) = 0u;
    *(result + 3112) = 0u;
    *(result + 3096) = 0u;
    *(result + 3080) = 0u;
    *(result + 3064) = 0u;
    *(result + 3048) = 0u;
    *(result + 3032) = 0u;
    *(result + 3016) = 0u;
    *(result + 3000) = 0u;
    *(result + 2984) = 0u;
    *(result + 2968) = 0u;
    *(result + 2952) = 0u;
    *(result + 2936) = 0u;
    *(result + 2920) = 0u;
    *(result + 2904) = 0u;
    *(result + 2888) = 0u;
    *(result + 2872) = 0u;
    *(result + 2856) = 0u;
    *(result + 2840) = 0u;
    *(result + 2824) = 0u;
    *(result + 2808) = 0u;
    *(result + 2792) = 0u;
    *(result + 2776) = 0u;
    *(result + 2760) = 0u;
    *(result + 2744) = 0u;
    *(result + 2728) = 0u;
    *(result + 2712) = 0u;
    *(result + 2696) = 0u;
    *(result + 2680) = 0u;
    *(result + 2664) = 0u;
    *(result + 2648) = 0u;
    *(result + 2632) = 0u;
    *(result + 2616) = 0u;
    *(result + 2600) = 0u;
    *(result + 2584) = 0u;
    *(result + 2568) = 0u;
    *(result + 2552) = 0u;
    *(result + 2536) = 0u;
    *(result + 2520) = 0u;
    *(result + 2504) = 0u;
    *(result + 2488) = 0u;
    *(result + 2472) = 0u;
    *(result + 2456) = 0u;
    *(result + 2440) = 0u;
    *(result + 2424) = 0u;
    *(result + 2408) = 0u;
    *(result + 2392) = 0u;
    *(result + 2376) = 0u;
    *(result + 2360) = 0u;
    *(result + 2344) = 0u;
    *(result + 2328) = 0u;
    *(result + 2312) = 0u;
    *(result + 2296) = 0u;
    *(result + 2280) = 0u;
    *(result + 2264) = 0u;
    *(result + 2248) = 0u;
    *(result + 2232) = 0u;
    *(result + 2216) = 0u;
    *(result + 2200) = 0u;
    *(result + 2184) = 0u;
    *(result + 2168) = 0u;
    *(result + 2152) = 0u;
    *(result + 2136) = 0u;
    *(result + 2120) = 0u;
    *(result + 2104) = 0u;
    *(result + 2088) = 0u;
    *(result + 2072) = 0u;
    *(result + 2056) = 0u;
    *(result + 2040) = 0u;
    *(result + 2024) = 0u;
    *(result + 2008) = 0u;
    *(result + 1992) = 0u;
    *(result + 1976) = 0u;
    *(result + 1960) = 0u;
    *(result + 1944) = 0u;
    *(result + 1928) = 0u;
    *(result + 1912) = 0u;
    *(result + 1896) = 0u;
    *(result + 1880) = 0u;
    *(result + 1864) = 0u;
    *(result + 1848) = 0u;
    *(result + 1832) = 0u;
    *(result + 1816) = 0u;
    *(result + 1800) = 0u;
    *(result + 1784) = 0u;
    *(result + 1768) = 0u;
    *(result + 1752) = 0u;
    *(result + 1736) = 0u;
    *(result + 1720) = 0u;
    *(result + 1704) = 0u;
    *(result + 1688) = 0u;
    *(result + 1672) = 0u;
    *(result + 1656) = 0u;
    *(result + 1640) = 0u;
    *(result + 1624) = 0u;
    *(result + 1608) = 0u;
    *(result + 1592) = 0u;
    *(result + 1576) = 0u;
    *(result + 1560) = 0u;
    *(result + 1544) = 0u;
    *(result + 1528) = 0u;
    *(result + 1512) = 0u;
    *(result + 1496) = 0u;
    *(result + 1480) = 0u;
    *(result + 1464) = 0u;
    *(result + 1448) = 0u;
    *(result + 1432) = 0u;
    *(result + 1416) = 0u;
    *(result + 1400) = 0u;
    *(result + 1384) = 0u;
    *(result + 1368) = 0u;
    *(result + 1352) = 0u;
    *(result + 1336) = 0u;
    *(result + 1320) = 0u;
    *(result + 1304) = 0u;
    *(result + 1288) = 0u;
    *(result + 1272) = 0u;
    *(result + 1256) = 0u;
    *(result + 1240) = 0u;
    *(result + 1224) = 0u;
    *(result + 1208) = 0u;
    *(result + 1192) = 0u;
    *(result + 1176) = 0u;
    *(result + 1160) = 0u;
    *(result + 1144) = 0u;
    *(result + 1128) = 0u;
    *(result + 1112) = 0u;
    *(result + 1096) = 0u;
    *(result + 1080) = 0u;
    *(result + 1064) = 0u;
    *(result + 1048) = 0u;
    *(result + 1032) = 0u;
    *(result + 12840) = 0u;
    *(result + 12792) = 0u;
    *(result + 12776) = 0u;
    *(result + 12760) = 0u;
    *(result + 12744) = 0u;
    *(result + 12728) = 0u;
    *(result + 12712) = 0u;
    *(result + 12696) = 0u;
    *(result + 12680) = 0u;
    *(result + 12664) = 0u;
    *(result + 12648) = 0u;
    *(result + 12632) = 0u;
    *(result + 12616) = 0u;
    *(result + 12600) = 0u;
    *(result + 12584) = 0u;
    *(result + 12568) = 0u;
    *(result + 12552) = 0u;
    *(result + 8744) = 0u;
    *(result + 8728) = 0u;
    *(result + 8712) = 0u;
    *(result + 8840) = 0u;
    *(result + 8824) = 0u;
    *(result + 8808) = 0u;
    *(result + 8792) = 0u;
    *(result + 8776) = 0u;
    *(result + 8760) = 0u;
    *(result + 8952) = 0u;
    *(result + 8936) = 0u;
    *(result + 8904) = 0u;
    *(result + 8888) = 0u;
    *(result + 8872) = 0u;
    *(result + 8856) = 0u;
    *(result + 8920) = 0u;
    *(result + 9000) = 0u;
    *(result + 8984) = 0u;
    *(result + 8968) = 0u;
    *(result + 9096) = 0u;
    *(result + 9080) = 0u;
    *(result + 9064) = 0u;
    *(result + 9048) = 0u;
    *(result + 9032) = 0u;
    *(result + 9016) = 0u;
    *(result + 9208) = 0u;
    *(result + 9192) = 0u;
    *(result + 9160) = 0u;
    *(result + 9144) = 0u;
    *(result + 9128) = 0u;
    *(result + 9112) = 0u;
    *(result + 9176) = 0u;
    *(result + 9256) = 0u;
    *(result + 9240) = 0u;
    *(result + 9224) = 0u;
    *(result + 9352) = 0u;
    *(result + 9336) = 0u;
    *(result + 9320) = 0u;
    *(result + 9304) = 0u;
    *(result + 9288) = 0u;
    *(result + 9272) = 0u;
    *(result + 9464) = 0u;
    *(result + 9448) = 0u;
    *(result + 9416) = 0u;
    *(result + 9400) = 0u;
    *(result + 9384) = 0u;
    *(result + 9368) = 0u;
    *(result + 9432) = 0u;
    *(result + 9512) = 0u;
    *(result + 9496) = 0u;
    *(result + 9480) = 0u;
    *(result + 9608) = 0u;
    *(result + 9592) = 0u;
    *(result + 9576) = 0u;
    *(result + 9560) = 0u;
    *(result + 9544) = 0u;
    *(result + 9528) = 0u;
    *(result + 9720) = 0u;
    *(result + 9704) = 0u;
    *(result + 9672) = 0u;
    *(result + 9656) = 0u;
    *(result + 9640) = 0u;
    *(result + 9624) = 0u;
    *(result + 9688) = 0u;
    *(result + 9768) = 0u;
    *(result + 9752) = 0u;
    *(result + 9736) = 0u;
    *(result + 9864) = 0u;
    *(result + 9848) = 0u;
    *(result + 9832) = 0u;
    *(result + 9816) = 0u;
    *(result + 9800) = 0u;
    *(result + 9784) = 0u;
    *(result + 9976) = 0u;
    *(result + 9960) = 0u;
    *(result + 9928) = 0u;
    *(result + 9912) = 0u;
    *(result + 9896) = 0u;
    *(result + 9880) = 0u;
    *(result + 9944) = 0u;
    *(result + 10024) = 0u;
    *(result + 10008) = 0u;
    *(result + 9992) = 0u;
    *(result + 10120) = 0u;
    *(result + 10104) = 0u;
    *(result + 10088) = 0u;
    *(result + 10072) = 0u;
    *(result + 10056) = 0u;
    *(result + 10040) = 0u;
    *(result + 10232) = 0u;
    *(result + 10216) = 0u;
    *(result + 10184) = 0u;
    *(result + 10168) = 0u;
    *(result + 10152) = 0u;
    *(result + 10136) = 0u;
    *(result + 10200) = 0u;
    *(result + 10280) = 0u;
    *(result + 10264) = 0u;
    *(result + 10248) = 0u;
    *(result + 10376) = 0u;
    *(result + 10360) = 0u;
    *(result + 10344) = 0u;
    *(result + 10328) = 0u;
    *(result + 10312) = 0u;
    *(result + 10296) = 0u;
    *(result + 10488) = 0u;
    *(result + 10472) = 0u;
    *(result + 10440) = 0u;
    *(result + 10424) = 0u;
    *(result + 10408) = 0u;
    *(result + 10392) = 0u;
    *(result + 10456) = 0u;
    *(result + 10536) = 0u;
    *(result + 10520) = 0u;
    *(result + 10504) = 0u;
    *(result + 10632) = 0u;
    *(result + 10616) = 0u;
    *(result + 10600) = 0u;
    *(result + 10584) = 0u;
    *(result + 10568) = 0u;
    *(result + 10552) = 0u;
    *(result + 10744) = 0u;
    *(result + 10728) = 0u;
    *(result + 10696) = 0u;
    *(result + 10680) = 0u;
    *(result + 10664) = 0u;
    *(result + 10648) = 0u;
    *(result + 10712) = 0u;
    *(result + 10792) = 0u;
    *(result + 10776) = 0u;
    *(result + 10760) = 0u;
    *(result + 10888) = 0u;
    *(result + 10872) = 0u;
    *(result + 10856) = 0u;
    *(result + 10840) = 0u;
    *(result + 10824) = 0u;
    *(result + 10808) = 0u;
    *(result + 11000) = 0u;
    *(result + 10984) = 0u;
    *(result + 10952) = 0u;
    *(result + 10936) = 0u;
    *(result + 10920) = 0u;
    *(result + 10904) = 0u;
    *(result + 10968) = 0u;
    *(result + 11048) = 0u;
    *(result + 11032) = 0u;
    *(result + 11016) = 0u;
    *(result + 11144) = 0u;
    *(result + 11128) = 0u;
    *(result + 11112) = 0u;
    *(result + 11096) = 0u;
    *(result + 11080) = 0u;
    *(result + 11064) = 0u;
    *(result + 11256) = 0u;
    *(result + 11240) = 0u;
    *(result + 11208) = 0u;
    *(result + 11192) = 0u;
    *(result + 11176) = 0u;
    *(result + 11160) = 0u;
    *(result + 11224) = 0u;
    *(result + 11304) = 0u;
    *(result + 11288) = 0u;
    *(result + 11272) = 0u;
    *(result + 11400) = 0u;
    *(result + 11384) = 0u;
    *(result + 11368) = 0u;
    *(result + 11352) = 0u;
    *(result + 11336) = 0u;
    *(result + 11320) = 0u;
    *(result + 11512) = 0u;
    *(result + 11496) = 0u;
    *(result + 11464) = 0u;
    *(result + 11448) = 0u;
    *(result + 11432) = 0u;
    *(result + 11416) = 0u;
    *(result + 11480) = 0u;
    *(result + 11560) = 0u;
    *(result + 11544) = 0u;
    *(result + 11528) = 0u;
    *(result + 11656) = 0u;
    *(result + 11640) = 0u;
    *(result + 11624) = 0u;
    *(result + 11608) = 0u;
    *(result + 11592) = 0u;
    *(result + 11576) = 0u;
    *(result + 11768) = 0u;
    *(result + 11752) = 0u;
    *(result + 11720) = 0u;
    *(result + 11704) = 0u;
    *(result + 11688) = 0u;
    *(result + 11672) = 0u;
    *(result + 11736) = 0u;
    *(result + 11816) = 0u;
    *(result + 11800) = 0u;
    *(result + 11784) = 0u;
    *(result + 11912) = 0u;
    *(result + 11896) = 0u;
    *(result + 11880) = 0u;
    *(result + 11864) = 0u;
    *(result + 11848) = 0u;
    *(result + 11832) = 0u;
    *(result + 12024) = 0u;
    *(result + 12008) = 0u;
    *(result + 11976) = 0u;
    *(result + 11960) = 0u;
    *(result + 11944) = 0u;
    *(result + 11928) = 0u;
    *(result + 11992) = 0u;
    *(result + 12072) = 0u;
    *(result + 12056) = 0u;
    *(result + 12040) = 0u;
    *(result + 12168) = 0u;
    *(result + 12152) = 0u;
    *(result + 12136) = 0u;
    *(result + 12120) = 0u;
    *(result + 12104) = 0u;
    *(result + 12088) = 0u;
    *(result + 12248) = 0u;
    *(result + 12232) = 0u;
    *(result + 12216) = 0u;
    *(result + 12200) = 0u;
    *(result + 12184) = 0u;
    *(result + 12280) = 0u;
    *(result + 12264) = 0u;
    *(result + 1016) = 0u;
    *(result + 1000) = 0u;
    *(result + 984) = 0u;
    *(result + 968) = 0u;
    *(result + 952) = 0u;
    *(result + 936) = 0u;
    *(result + 920) = 0u;
    *(result + 904) = 0u;
    *(result + 888) = 0u;
    *(result + 872) = 0u;
    *(result + 856) = 0u;
    *(result + 840) = 0u;
    *(result + 824) = 0u;
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 12904) = 0u;
    *(result + 12888) = 0u;
    *(result + 12872) = 0u;
    *(result + 12856) = 0u;
    *(result + 12824) = 0u;
    *(result + 12808) = 0u;
    *(result + 13048) = 0u;
    *(result + 13032) = 0u;
    *(result + 12968) = 0u;
    *(result + 12952) = 0u;
    *(result + 12936) = 0u;
    *(result + 12920) = 0u;
    *(result + 13016) = 0u;
    *(result + 13000) = 0u;
    *(result + 12984) = 0u;
    *(result + 13064) = 0u;
    *(result + 13160) = 0u;
    *(result + 13144) = 0u;
    *(result + 13128) = 0u;
    *(result + 13112) = 0u;
    *(result + 13096) = 0u;
    *(result + 13080) = 0u;
    *(result + 13304) = 0u;
    *(result + 13288) = 0u;
    *(result + 13224) = 0u;
    *(result + 13208) = 0u;
    *(result + 13192) = 0u;
    *(result + 13176) = 0u;
    *(result + 13272) = 0u;
    *(result + 13256) = 0u;
    *(result + 13240) = 0u;
    *(result + 13320) = 0u;
    *(result + 13416) = 0u;
    *(result + 13400) = 0u;
    *(result + 13384) = 0u;
    *(result + 13368) = 0u;
    *(result + 13352) = 0u;
    *(result + 13336) = 0u;
    *(result + 13560) = 0u;
    *(result + 13544) = 0u;
    *(result + 13480) = 0u;
    *(result + 13464) = 0u;
    *(result + 13448) = 0u;
    *(result + 13432) = 0u;
    *(result + 13528) = 0u;
    *(result + 13512) = 0u;
    *(result + 13496) = 0u;
    *(result + 13576) = 0u;
    *(result + 13672) = 0u;
    *(result + 13656) = 0u;
    *(result + 13640) = 0u;
    *(result + 13624) = 0u;
    *(result + 13608) = 0u;
    *(result + 13592) = 0u;
    *(result + 13816) = 0u;
    *(result + 13800) = 0u;
    *(result + 13736) = 0u;
    *(result + 13720) = 0u;
    *(result + 13704) = 0u;
    *(result + 13688) = 0u;
    *(result + 13784) = 0u;
    *(result + 13768) = 0u;
    *(result + 13752) = 0u;
    *(result + 13832) = 0u;
    *(result + 13928) = 0u;
    *(result + 13912) = 0u;
    *(result + 13896) = 0u;
    *(result + 13880) = 0u;
    *(result + 13864) = 0u;
    *(result + 13848) = 0u;
    *(result + 14072) = 0u;
    *(result + 14056) = 0u;
    *(result + 13992) = 0u;
    *(result + 13976) = 0u;
    *(result + 13960) = 0u;
    *(result + 13944) = 0u;
    *(result + 14040) = 0u;
    *(result + 14024) = 0u;
    *(result + 14008) = 0u;
    *(result + 14088) = 0u;
    *(result + 14184) = 0u;
    *(result + 14168) = 0u;
    *(result + 14152) = 0u;
    *(result + 14136) = 0u;
    *(result + 14120) = 0u;
    *(result + 14104) = 0u;
    *(result + 14328) = 0u;
    *(result + 14312) = 0u;
    *(result + 14248) = 0u;
    *(result + 14232) = 0u;
    *(result + 14216) = 0u;
    *(result + 14200) = 0u;
    *(result + 14296) = 0u;
    *(result + 14280) = 0u;
    *(result + 14264) = 0u;
    *(result + 14344) = 0u;
    *(result + 14440) = 0u;
    *(result + 14424) = 0u;
    *(result + 14408) = 0u;
    *(result + 14392) = 0u;
    *(result + 14376) = 0u;
    *(result + 14360) = 0u;
    *(result + 14584) = 0u;
    *(result + 14568) = 0u;
    *(result + 14504) = 0u;
    *(result + 14488) = 0u;
    *(result + 14472) = 0u;
    *(result + 14456) = 0u;
    *(result + 14552) = 0u;
    *(result + 14536) = 0u;
    *(result + 14520) = 0u;
    *(result + 14600) = 0u;
    *(result + 14696) = 0u;
    *(result + 14680) = 0u;
    *(result + 14664) = 0u;
    *(result + 14648) = 0u;
    *(result + 14632) = 0u;
    *(result + 14616) = 0u;
    *(result + 14840) = 0u;
    *(result + 14824) = 0u;
    *(result + 14760) = 0u;
    *(result + 14744) = 0u;
    *(result + 14728) = 0u;
    *(result + 14712) = 0u;
    *(result + 14808) = 0u;
    *(result + 14792) = 0u;
    *(result + 14776) = 0u;
    *(result + 14856) = 0u;
    *(result + 14952) = 0u;
    *(result + 14936) = 0u;
    *(result + 14920) = 0u;
    *(result + 14904) = 0u;
    *(result + 14888) = 0u;
    *(result + 14872) = 0u;
    *(result + 15096) = 0u;
    *(result + 15080) = 0u;
    *(result + 15016) = 0u;
    *(result + 15000) = 0u;
    *(result + 14984) = 0u;
    *(result + 14968) = 0u;
    *(result + 15064) = 0u;
    *(result + 15048) = 0u;
    *(result + 15032) = 0u;
    *(result + 15112) = 0u;
    *(result + 15208) = 0u;
    *(result + 15192) = 0u;
    *(result + 15176) = 0u;
    *(result + 15160) = 0u;
    *(result + 15144) = 0u;
    *(result + 15128) = 0u;
    *(result + 15352) = 0u;
    *(result + 15336) = 0u;
    *(result + 15272) = 0u;
    *(result + 15256) = 0u;
    *(result + 15240) = 0u;
    *(result + 15224) = 0u;
    *(result + 15320) = 0u;
    *(result + 15304) = 0u;
    *(result + 15288) = 0u;
    *(result + 15368) = 0u;
    *(result + 15464) = 0u;
    *(result + 15448) = 0u;
    *(result + 15432) = 0u;
    *(result + 15416) = 0u;
    *(result + 15400) = 0u;
    *(result + 15384) = 0u;
    *(result + 15608) = 0u;
    *(result + 15592) = 0u;
    *(result + 15528) = 0u;
    *(result + 15512) = 0u;
    *(result + 15496) = 0u;
    *(result + 15480) = 0u;
    *(result + 15576) = 0u;
    *(result + 15560) = 0u;
    *(result + 15544) = 0u;
    *(result + 15624) = 0u;
    *(result + 15720) = 0u;
    *(result + 15704) = 0u;
    *(result + 15688) = 0u;
    *(result + 15672) = 0u;
    *(result + 15656) = 0u;
    *(result + 15640) = 0u;
    *(result + 15864) = 0u;
    *(result + 15848) = 0u;
    *(result + 15784) = 0u;
    *(result + 15768) = 0u;
    *(result + 15752) = 0u;
    *(result + 15736) = 0u;
    *(result + 15832) = 0u;
    *(result + 15816) = 0u;
    *(result + 15800) = 0u;
    *(result + 15880) = 0u;
    *(result + 15976) = 0u;
    *(result + 15960) = 0u;
    *(result + 15944) = 0u;
    *(result + 15928) = 0u;
    *(result + 15912) = 0u;
    *(result + 15896) = 0u;
    *(result + 16120) = 0u;
    *(result + 16104) = 0u;
    *(result + 16040) = 0u;
    *(result + 16024) = 0u;
    *(result + 16008) = 0u;
    *(result + 15992) = 0u;
    *(result + 16088) = 0u;
    *(result + 16072) = 0u;
    *(result + 16056) = 0u;
    *(result + 16136) = 0u;
    *(result + 16232) = 0u;
    *(result + 16216) = 0u;
    *(result + 16200) = 0u;
    *(result + 16184) = 0u;
    *(result + 16168) = 0u;
    *(result + 16152) = 0u;
    *(result + 16328) = 0u;
    *(result + 16312) = 0u;
    *(result + 16296) = 0u;
    *(result + 16280) = 0u;
    *(result + 16264) = 0u;
    *(result + 16248) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 8696) = 0u;
    *(result + 8680) = 0u;
    *(result + 8664) = 0u;
    *(result + 8648) = 0u;
    *(result + 8632) = 0u;
    *(result + 8616) = 0u;
    *(result + 8600) = 0u;
    *(result + 8584) = 0u;
    *(result + 8568) = 0u;
    *(result + 8552) = 0u;
    *(result + 8536) = 0u;
    *(result + 8520) = 0u;
    *(result + 8504) = 0u;
    *(result + 8488) = 0u;
    *(result + 8472) = 0u;
    *(result + 8456) = 0u;
    *(result + 8184) = 0u;
    *(result + 8168) = 0u;
    *(result + 8152) = 0u;
    *(result + 8136) = 0u;
    *(result + 8120) = 0u;
    *(result + 8104) = 0u;
    *(result + 8088) = 0u;
    *(result + 8072) = 0u;
    *(result + 8056) = 0u;
    *(result + 8040) = 0u;
    *(result + 8024) = 0u;
    *(result + 8008) = 0u;
    *(result + 7992) = 0u;
    *(result + 7976) = 0u;
    *(result + 7960) = 0u;
    *(result + 7944) = 0u;
    *(result + 7928) = 0u;
    *(result + 7912) = 0u;
    *(result + 7896) = 0u;
    *(result + 7880) = 0u;
    *(result + 7864) = 0u;
    *(result + 7848) = 0u;
    *(result + 7832) = 0u;
    *(result + 7816) = 0u;
    *(result + 7800) = 0u;
    *(result + 7784) = 0u;
    *(result + 7768) = 0u;
    *(result + 7752) = 0u;
    *(result + 7736) = 0u;
    *(result + 7720) = 0u;
    *(result + 7704) = 0u;
    *(result + 7688) = 0u;
    *(result + 7672) = 0u;
    *(result + 7656) = 0u;
    *(result + 7640) = 0u;
    *(result + 7624) = 0u;
    *(result + 7608) = 0u;
    *(result + 7592) = 0u;
    *(result + 7576) = 0u;
    *(result + 7560) = 0u;
    *(result + 7544) = 0u;
    *(result + 7528) = 0u;
    *(result + 7512) = 0u;
    *(result + 7496) = 0u;
    *(result + 7480) = 0u;
    *(result + 7464) = 0u;
    *(result + 7448) = 0u;
    *(result + 7432) = 0u;
    *(result + 7416) = 0u;
    *(result + 7400) = 0u;
    *(result + 7384) = 0u;
    *(result + 7368) = 0u;
    *(result + 7352) = 0u;
    *(result + 7336) = 0u;
    *(result + 7320) = 0u;
    *(result + 7304) = 0u;
    *(result + 7288) = 0u;
    *(result + 7272) = 0u;
    *(result + 7256) = 0u;
    *(result + 7240) = 0u;
    *(result + 7224) = 0u;
    *(result + 7208) = 0u;
    *(result + 7192) = 0u;
    *(result + 7176) = 0u;
    *(result + 7160) = 0u;
    *(result + 7144) = 0u;
    *(result + 7128) = 0u;
    *(result + 7112) = 0u;
    *(result + 7096) = 0u;
    *(result + 7080) = 0u;
    *(result + 7064) = 0u;
    *(result + 7048) = 0u;
    *(result + 7032) = 0u;
    *(result + 7016) = 0u;
    *(result + 7000) = 0u;
    *(result + 6984) = 0u;
    *(result + 6968) = 0u;
    *(result + 6952) = 0u;
    *(result + 6936) = 0u;
    *(result + 6920) = 0u;
    *(result + 6904) = 0u;
    *(result + 6888) = 0u;
    *(result + 6872) = 0u;
    *(result + 6856) = 0u;
    *(result + 6840) = 0u;
    *(result + 6824) = 0u;
    *(result + 6808) = 0u;
    *(result + 6792) = 0u;
    *(result + 6776) = 0u;
    *(result + 6760) = 0u;
    *(result + 6744) = 0u;
    *(result + 6728) = 0u;
    *(result + 6712) = 0u;
    *(result + 6696) = 0u;
    *(result + 6680) = 0u;
    *(result + 6664) = 0u;
    *(result + 6648) = 0u;
    *(result + 6632) = 0u;
    *(result + 6616) = 0u;
    *(result + 6600) = 0u;
    *(result + 6584) = 0u;
    *(result + 6568) = 0u;
    *(result + 6552) = 0u;
    *(result + 6536) = 0u;
    *(result + 6520) = 0u;
    *(result + 6504) = 0u;
    *(result + 6488) = 0u;
    *(result + 6472) = 0u;
    *(result + 6456) = 0u;
    *(result + 6440) = 0u;
    *(result + 6424) = 0u;
    *(result + 6408) = 0u;
    *(result + 6392) = 0u;
    *(result + 6376) = 0u;
    *(result + 6360) = 0u;
    *(result + 6344) = 0u;
    *(result + 6328) = 0u;
    *(result + 6312) = 0u;
    *(result + 6296) = 0u;
    *(result + 6280) = 0u;
    *(result + 6264) = 0u;
    *(result + 6248) = 0u;
    *(result + 6232) = 0u;
    *(result + 6216) = 0u;
    *(result + 6200) = 0u;
    *(result + 6184) = 0u;
    *(result + 6168) = 0u;
    *(result + 6152) = 0u;
    *(result + 6136) = 0u;
    *(result + 6120) = 0u;
    *(result + 6104) = 0u;
    *(result + 6088) = 0u;
    *(result + 6072) = 0u;
    *(result + 6056) = 0u;
    *(result + 6040) = 0u;
    *(result + 6024) = 0u;
    *(result + 6008) = 0u;
    *(result + 5992) = 0u;
    *(result + 5976) = 0u;
    *(result + 5960) = 0u;
    *(result + 5944) = 0u;
    *(result + 5928) = 0u;
    *(result + 5912) = 0u;
    *(result + 5896) = 0u;
    *(result + 5880) = 0u;
    *(result + 5864) = 0u;
    *(result + 5848) = 0u;
    *(result + 5832) = 0u;
    *(result + 5816) = 0u;
    *(result + 5800) = 0u;
    *(result + 5784) = 0u;
    *(result + 5768) = 0u;
    *(result + 5752) = 0u;
    *(result + 5736) = 0u;
    *(result + 5720) = 0u;
    *(result + 5704) = 0u;
    *(result + 5688) = 0u;
    *(result + 5672) = 0u;
    *(result + 5656) = 0u;
    *(result + 5640) = 0u;
    *(result + 5624) = 0u;
    *(result + 5608) = 0u;
    *(result + 5592) = 0u;
    *(result + 5576) = 0u;
    *(result + 5560) = 0u;
    *(result + 5544) = 0u;
    *(result + 5528) = 0u;
    *(result + 5512) = 0u;
    *(result + 5496) = 0u;
    *(result + 5480) = 0u;
    *(result + 5464) = 0u;
    *(result + 5448) = 0u;
    *(result + 5432) = 0u;
    *(result + 5416) = 0u;
    *(result + 5400) = 0u;
    *(result + 5384) = 0u;
    *(result + 5368) = 0u;
    *(result + 5352) = 0u;
    *(result + 5336) = 0u;
    *(result + 5320) = 0u;
    *(result + 5304) = 0u;
    *(result + 5288) = 0u;
    *(result + 5272) = 0u;
    *(result + 5256) = 0u;
    *(result + 5240) = 0u;
    *(result + 5224) = 0u;
    *(result + 5208) = 0u;
    *(result + 5192) = 0u;
    *(result + 5176) = 0u;
    *(result + 5160) = 0u;
    *(result + 5144) = 0u;
    *(result + 5128) = 0u;
    *(result + 5112) = 0u;
    *(result + 5096) = 0u;
    *(result + 5080) = 0u;
    *(result + 5064) = 0u;
    *(result + 5048) = 0u;
    *(result + 5032) = 0u;
    *(result + 5016) = 0u;
    *(result + 5000) = 0u;
    *(result + 4984) = 0u;
    *(result + 4968) = 0u;
    *(result + 4952) = 0u;
    *(result + 4936) = 0u;
    *(result + 4920) = 0u;
    *(result + 4904) = 0u;
    *(result + 4888) = 0u;
    *(result + 4872) = 0u;
    *(result + 4856) = 0u;
    *(result + 4840) = 0u;
    *(result + 4824) = 0u;
    *(result + 4808) = 0u;
    *(result + 4792) = 0u;
    *(result + 4776) = 0u;
    *(result + 4760) = 0u;
    *(result + 4744) = 0u;
    *(result + 4728) = 0u;
    *(result + 4712) = 0u;
    *(result + 4696) = 0u;
    *(result + 4680) = 0u;
    *(result + 4664) = 0u;
    *(result + 4648) = 0u;
    *(result + 4632) = 0u;
    *(result + 4616) = 0u;
    *(result + 4600) = 0u;
    *(result + 4584) = 0u;
    *(result + 4568) = 0u;
    *(result + 4552) = 0u;
    *(result + 4536) = 0u;
    *(result + 4520) = 0u;
    *(result + 4504) = 0u;
    *(result + 4488) = 0u;
    *(result + 4472) = 0u;
    *(result + 4456) = 0u;
    *(result + 4440) = 0u;
    *(result + 4424) = 0u;
    *(result + 4408) = 0u;
    *(result + 4392) = 0u;
    *(result + 4376) = 0u;
    *(result + 4360) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 18656) = v3;
  return result;
}

__n128 sub_1C97A47A8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C97A47B4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C97A47D4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

uint64_t sub_1C97A4814(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

__n128 sub_1C97A483C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

__n128 sub_1C97A4864(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1C97A4878(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 48) = v3;
  return result;
}

__n128 initializeBufferWithCopyOfBuffer for MovieRemix.Request(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 sub_1C97A49CC(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1C97A4A10@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C97B7928();
  *a1 = result;
  return result;
}

uint64_t sub_1C97A4A38@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C97A4A08(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_1C97A4A68(uint64_t a1)
{
  v3 = sub_1C97A7CA0(a1);
  result = sub_1C9A37F68(v3, *v2);
  *v1 = result;
  return result;
}

uint64_t sub_1C97A4A94@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C97A4AC4(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_1C97A4AD4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1C97A4B08(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1C97A4B08(uint64_t a1)
{
  result = *v1 & a1;
  if (result)
  {
    *v1 &= ~a1;
  }

  return result;
}

uint64_t sub_1C97A4B2C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1C97A4B60(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1C97A4B60(uint64_t a1)
{
  v2 = *v1;
  *v1 |= a1;
  return v2 & a1;
}

uint64_t sub_1C97A4BA0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C97A4BD0(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_1C97A4C4C(uint64_t a1, id *a2)
{
  result = sub_1C9A92488();
  *a2 = 0;
  return result;
}

uint64_t sub_1C97A4CC4(uint64_t a1, id *a2)
{
  v3 = sub_1C9A92498();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1C97A4D44()
{
  sub_1C9A924A8();
  v0 = sub_1C9A92478();

  return v0;
}

uint64_t sub_1C97A4D7C()
{
  sub_1C97A79B8();
  result = sub_1C97F7C18();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C97A4DA4()
{
  sub_1C97A79B8();
  result = sub_1C979B200();
  *v0 = result;
  v0[1] = v2;
  return result;
}

void sub_1C97A4DCC(uint64_t a1@<X8>)
{
  sub_1C97A4E00();
  *a1 = v2;
  *(a1 + 8) = v3 & 1;
}

uint64_t sub_1C97A4E08()
{
  v1 = sub_1C97A79B8();
  result = nullsub_1(v1);
  *v0 = result;
  return result;
}