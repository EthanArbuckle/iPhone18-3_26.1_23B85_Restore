void *vt_Copy_422vf_rgb_422vf_neon_fp16_GCD(void *result, uint64_t a2, int16x8_t _Q0)
{
  v10 = result;
  v144 = *(result + 36);
  v11 = *result;
  v12 = *(result + 28) * a2 / v11 + *(result + 44);
  v13 = result[14];
  v15 = result[12];
  v14 = result[13];
  v16 = v14 * a2 / v11;
  v17 = v16 + result[15];
  v18 = (v14 + v14 * a2) / v11 - v16;
  v19 = result[7];
  v20 = result[8];
  v21 = result[16];
  v22 = result[17];
  v23 = v20[2];
  v24 = v19[2];
  v25 = v22[2];
  v26 = v21[2];
  v27 = (v26 + v25 * v17 + v13);
  if (v18 >= 1)
  {
    v28 = 0;
    v29 = result[19];
    v30 = *v20;
    v31 = v20[1];
    v32 = *v22;
    v33 = v22[1];
    v34 = v29[17].u16[2];
    v145 = v12;
    v35 = v29[17].u16[3];
    v36.i32[0] = v29[3].i32[1];
    v37 = v29[18].u16[0];
    v38 = v29[18].u16[1];
    v39 = v29[18].u16[2];
    v40 = v29[18].u16[3];
    v41 = v29[19].u16[0];
    _Q0.i32[0] = v29[4].i32[1];
    _S1 = v29[5].f32[0];
    _S2 = v29[5].f32[1];
    v44.i32[0] = v29[6].i32[0];
    v45.i32[0] = v29[6].i32[1];
    v4.i32[0] = v29[7].i32[0];
    v46 = v34;
    *v5.i16 = v34;
    result = (v15 & 0xFFFFFFFE);
    v47 = v35;
    v6.f32[0] = v29[17].u32[0] / v29[16].u32[0];
    _S5 = v6.f32[0] * v29->f32[0];
    v49 = v37;
    v50 = v38;
    v51 = v39;
    v52 = v40;
    v53 = v41;
    __asm { FCVT            H8, S5 }

    v59 = vdupq_lane_s16(*v5.f32, 0);
    v36.i32[1] = v29[1].i32[0];
    v60 = -v35;
    *v5.f32 = vmul_n_f32(v36, v6.f32[0]);
    v61 = vdupq_lane_s32(vcvt_f16_f32(v5), 0);
    *v6.f32 = vmul_n_f32(v29[2], v6.f32[0]);
    v62 = vdupq_lane_s32(vcvt_f16_f32(v6), 0);
    v63 = vmulq_n_f16(v61, v60);
    v64 = vmulq_n_f16(v62, v60);
    __asm
    {
      FCVT            H9, S0
      FCVT            H10, S1
    }

    v148 = _H10;
    v44.i32[1] = v29[7].i32[1];
    *v3.f32 = vmul_f32(v44, 0x3F0000003F000000);
    v154 = vdupq_lane_s32(vcvt_f16_f32(v3), 0);
    v45.i32[1] = v29[8].i32[0];
    *v8.f32 = vmul_f32(v45, 0x3F0000003F000000);
    v67 = vdupq_lane_s32(vcvt_f16_f32(v8), 0);
    v4.i32[1] = v29[8].i32[1];
    *v4.f32 = vmul_f32(*v4.f32, 0x3F0000003F000000);
    v68 = vdupq_lane_s32(vcvt_f16_f32(v4), 0);
    v153 = v68;
    *v68.i16 = v37;
    v69 = vdupq_lane_s16(*v68.i8, 0);
    *v68.i16 = v38;
    v70 = vdupq_lane_s16(*v68.i8, 0);
    *v68.i16 = v39;
    v71 = vdupq_lane_s16(*v68.i8, 0);
    v146 = v71;
    *v71.i16 = v40;
    v72 = vdupq_lane_s16(*v71.i8, 0);
    *v71.i16 = v41;
    v155 = vdupq_lane_s16(*v71.i8, 0);
    v74 = *v21;
    v73 = v21[1];
    if (v73)
    {
      v75 = (v73 + v33 * v17 + v13);
    }

    else
    {
      v75 = 0;
    }

    v76 = (v74 + v32 * v17 + v13);
    v78 = *v19;
    v77 = v19[1];
    if (v77)
    {
      v79 = (v77 + v31 * v145 + v144);
    }

    else
    {
      v79 = 0;
    }

    v80 = v78 + v30 * v145;
    v12 = v145;
    v81 = (v80 + v144);
    __asm { FCVT            H10, S2 }

    v156 = v6.f32[0];
    v157 = v5.f32[0];
    v83 = v5.f32[1];
    v84 = v6.f32[1];
    v85.i32[0] = v3.i32[1];
    v86 = v8.i64[0];
    v87 = v4.i64[0];
    v151 = v62;
    v152 = v61;
    v149 = _H9;
    v150 = v63;
    v88 = v67;
    v89 = v3.f32[1];
    v147 = v3.i32[0];
    do
    {
      if (v15 < 8)
      {
        v110 = 0;
        v109 = v75;
        v92 = v76;
        v108 = v79;
        v91 = v81;
      }

      else
      {
        v90 = 0;
        v91 = v81;
        v92 = v76;
        do
        {
          v93 = *&v79[v90];
          *v94.i8 = vzip1_s8(v93, 0);
          v94.u64[1] = vzip2_s8(v93, 0);
          v95 = vcvtq_f16_u16(v94);
          v96 = vmlaq_f16(v63, v61, v95);
          v97 = vmlaq_f16(v64, v62, v95);
          v98 = vuzp1q_s16(v97, _Q0).u64[0];
          v99 = vuzp2q_s16(v97, _Q0);
          *v99.i8 = vadd_f16(v98, *v99.i8);
          v100 = *v91++;
          *v101.i8 = vzip1_s8(v100, 0);
          v101.u64[1] = vzip2_s8(v100, 0);
          v102 = vsubq_f16(vcvtq_f16_u16(v101), v59);
          v103 = vmlaq_n_f16(vtrn2q_s16(v96, v96), v102, _H8);
          v104 = vmlaq_n_f16(vzip1q_s16(v99, v99), v102, _H8);
          v105 = vmlaq_n_f16(vtrn1q_s16(v96, v96), v102, _H8);
          *v92++ = vmovn_s16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v69, v103, _H9), v104, v148), v105, _H10), v69), v146)));
          v106 = vpaddq_f16(v103, v104);
          v107 = vmaxq_f16(vmlaq_f16(vmlaq_f16(vmlaq_f16(v70, v154, vzip1q_s16(v106, v106)), v88, vzip2q_s16(v106, v106)), v153, vaddq_f16(vtrn1q_s16(v105, v105), vtrn2q_s16(v105, v105))), v72);
          v7 = *v155.i32;
          v85 = vmovn_s16(vcvtq_u16_f16(vminq_f16(v107, v155)));
          *&v75[v90] = v85;
          v90 += 8;
        }

        while (v90 < v15 - 7);
        v108 = &v79[v90];
        v109 = &v75[v90];
        v110 = v15 & 0xFFFFFFF8;
        v3.i32[0] = v147;
        v84 = v6.f32[1];
        v83 = v5.f32[1];
        v89 = v3.f32[1];
      }

      while (v110 < result)
      {
        v111 = v64;
        v112 = v59;
        v85.i8[0] = *v108;
        *&v113 = v85.u32[0] - v47;
        LOBYTE(v7) = v108[1];
        v114 = LODWORD(v7) - v47;
        v115 = v83 * v114;
        v116 = (v84 * v114) + (*&v113 * v156);
        v117 = v157 * *&v113;
        LOBYTE(v113) = v91->i8[0];
        v118 = _S5 * (v113 - v46);
        v119 = (v83 * v114) + v118;
        v120 = v118 + v116;
        v121 = v117 + v118;
        v122 = (((_S1 * (v118 + v116)) + (*_Q0.i32 * (v115 + v118))) + (_S2 * (v117 + v118))) + v49;
        *v85.i32 = v51;
        if (v122 <= v51)
        {
          *v85.i32 = v122;
          if (v122 < v49)
          {
            *v85.i32 = v49;
          }
        }

        LOBYTE(v122) = v91->i8[1];
        v123 = _S5 * (LODWORD(v122) - v46);
        v124 = v115 + v123;
        v125 = v116 + v123;
        v126 = v117 + v123;
        v127 = (((_S1 * v125) + (*_Q0.i32 * v124)) + (_S2 * (v117 + v123))) + v49;
        v92->i8[0] = llroundf(*v85.i32);
        v128 = v51;
        if (v127 <= v51)
        {
          v128 = v127;
          if (v127 < v49)
          {
            v128 = v49;
          }
        }

        v92->i8[1] = llroundf(v128);
        v129 = v119 + v124;
        v130 = v120 + v125;
        v131 = v121 + v126;
        v132 = ((v50 + ((v119 + v124) * v3.f32[0])) + (v130 * *&v86)) + (v131 * *&v87);
        v133 = v53;
        if (v132 <= v53)
        {
          v133 = v132;
          if (v132 < v52)
          {
            v133 = v52;
          }
        }

        *v85.i32 = ((v50 + (v129 * v89)) + (v130 * *(&v86 + 1))) + (v131 * *(&v87 + 1));
        *v109 = llroundf(v133);
        v7 = v53;
        v59 = v112;
        v64 = v111;
        if (*v85.i32 <= v53)
        {
          v7 = *v85.i32;
          if (*v85.i32 < v52)
          {
            v7 = v52;
          }
        }

        v109[1] = llroundf(v7);
        v109 += 2;
        v110 += 2;
        v108 += 2;
        v91 = (v91 + 2);
        v92 = (v92 + 2);
      }

      v81 = (v81 + v30);
      v79 += v31;
      v76 = (v76 + v32);
      v75 += v33;
      ++v28;
      v62 = v151;
      v61 = v152;
      _H9 = v149;
      v63 = v150;
    }

    while (v28 != v18);
  }

  if (v24 && v26)
  {
    if (v18 >= 1)
    {
      v134 = 0;
      v135 = (v24 + v23 * v12 + v144);
      do
      {
        result = memcpy(v27, v135, v15);
        v135 += v23;
        v27 += v25;
        ++v134;
      }

      while (v18 > v134);
    }
  }

  else if (v26 && v18 >= 1)
  {
    v136 = 0;
    v137 = vdupq_n_s64(v15 - 1);
    do
    {
      if (v15 >= 1)
      {
        v138 = 0;
        do
        {
          v139 = vdupq_n_s64(v138);
          v140 = vmovn_s64(vcgeq_u64(v137, vorrq_s8(v139, xmmword_18FECDDB0)));
          if (vuzp1_s8(vuzp1_s16(v140, *v137.i8), *v137.i8).u8[0])
          {
            v27[v138] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(v140, *&v137), *&v137).i8[1])
          {
            v27[v138 + 1] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(*&v137, vmovn_s64(vcgeq_u64(v137, vorrq_s8(v139, xmmword_18FECDDA0)))), *&v137).i8[2])
          {
            v27[v138 + 2] = -1;
            v27[v138 + 3] = -1;
          }

          v141 = vmovn_s64(vcgeq_u64(v137, vorrq_s8(v139, xmmword_18FECDD90)));
          if (vuzp1_s8(*&v137, vuzp1_s16(v141, *&v137)).i32[1])
          {
            v27[v138 + 4] = -1;
          }

          if (vuzp1_s8(*&v137, vuzp1_s16(v141, *&v137)).i8[5])
          {
            v27[v138 + 5] = -1;
          }

          if (vuzp1_s8(*&v137, vuzp1_s16(*&v137, vmovn_s64(vcgeq_u64(v137, vorrq_s8(v139, xmmword_18FECDD80))))).i8[6])
          {
            v27[v138 + 6] = -1;
            v27[v138 + 7] = -1;
          }

          v142 = vmovn_s64(vcgeq_u64(v137, vorrq_s8(v139, xmmword_18FECDD70)));
          if (vuzp1_s8(vuzp1_s16(v142, *v137.i8), *v137.i8).u8[0])
          {
            v27[v138 + 8] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(v142, *&v137), *&v137).i8[1])
          {
            v27[v138 + 9] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(*&v137, vmovn_s64(vcgeq_u64(v137, vorrq_s8(v139, xmmword_18FECDD60)))), *&v137).i8[2])
          {
            v27[v138 + 10] = -1;
            v27[v138 + 11] = -1;
          }

          v143 = vmovn_s64(vcgeq_u64(v137, vorrq_s8(v139, xmmword_18FECDD50)));
          if (vuzp1_s8(*&v137, vuzp1_s16(v143, *&v137)).i32[1])
          {
            v27[v138 + 12] = -1;
          }

          if (vuzp1_s8(*&v137, vuzp1_s16(v143, *&v137)).i8[5])
          {
            v27[v138 + 13] = -1;
          }

          if (vuzp1_s8(*&v137, vuzp1_s16(*&v137, vmovn_s64(vcgeq_u64(v137, vorrq_s8(v139, xmmword_18FECDD40))))).i8[6])
          {
            v27[v138 + 14] = -1;
            v27[v138 + 15] = -1;
          }

          v138 += 16;
        }

        while (((v15 + 15) & 0xFFFFFFFFFFFFFFF0) != v138);
      }

      v27 += v25;
      ++v136;
    }

    while (v18 > v136);
  }

  *(v10 + a2 + 40) = 0;
  return result;
}

uint64_t vt_Copy_422vf_rgb_422vf(uint64_t a1, uint64_t *a2, uint64_t a3, unint64_t *a4, unint64_t *a5, uint64_t *a6, uint64_t a7, unint64_t *a8, void *a9)
{
  v65 = a7;
  v66 = a3;
  v74 = a5;
  v67 = a4;
  v75 = *MEMORY[0x1E69E9840];
  v11 = *(a1 + 162);
  v13 = *a2;
  v12 = a2[1];
  v14 = a2[2];
  v64 = a2[3];
  v15 = a2[4];
  v69 = a2[5];
  v70 = v12;
  v16 = *a6;
  v68 = a6[1];
  v17 = a6[2];
  v18 = a6[3];
  v20 = a6[4];
  v19 = a6[5];
  v72 = v16;
  v73 = v19;
  v71 = v13;
  v22 = v15 + v14 != v13 || v20 + v17 != v16;
  if (v11 == 255)
  {
    v23 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v23)
    {
      v24 = 0;
LABEL_68:
      free(v23);
      return v24;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v11 + 160, a3, a4);
    v23 = (&v61 - v25);
    bzero(&v61 - v25, v26);
  }

  v63 = a1;
  v27 = a9;
  v28 = v17 - 1;
  v29 = v14 - 1;
  if (v20)
  {
    v30 = v15 + 1;
  }

  else
  {
    v29 = v14;
    v30 = v15;
  }

  if (v20)
  {
    v31 = v20 + 1;
  }

  else
  {
    v28 = v17;
    v31 = v20;
  }

  if (v28)
  {
    v32 = v67;
    if (v22 || (v33 = v29 + 1 + v30, v33 > *v67) || ((v33 + (v33 >> 63)) & 0xFFFFFFFFFFFFFFFELL) > v67[1] || (v34 = v67[2], v33 > v34) && v34 || (v35 = v28 + 1 + v31, v35 > *a8) || ((v35 + (v35 >> 63)) & 0xFFFFFFFFFFFFFFFELL) > a8[1] || (v36 = a8[2], v35 > v36) && v36)
    {
      --v28;
      --v29;
    }

    else
    {
      ++v71;
      ++v72;
      ++v29;
      ++v28;
    }
  }

  else
  {
    v32 = v67;
  }

  if (v29 + v30 > v71)
  {
    v29 = v71 - v30;
  }

  if (v28 + v31 > v72)
  {
    v28 = v72 - v31;
  }

  if (v69 + v64 <= v70)
  {
    v37 = v64;
  }

  else
  {
    v37 = v70 - v69;
  }

  if (v73 + v18 <= v68)
  {
    v38 = v18;
  }

  else
  {
    v38 = v68 - v73;
  }

  if (v29 >= v28)
  {
    v39 = v28;
  }

  else
  {
    v39 = v29;
  }

  if (v37 >= v38)
  {
    v40 = v38;
  }

  else
  {
    v40 = v37;
  }

  v41 = v69 + v40 - 1;
  v42 = v39 + v30;
  v43 = v39 + v30 + *v32 * v41;
  v44 = *v74;
  v45 = v65;
  v62 = v30;
  if (v43 > v44)
  {
    v46 = v11;
    v47 = v31;
    v48 = a8;
    v49 = a9;
    goto LABEL_61;
  }

  if (*(v66 + 8) && ((v42 + 1 + ((v42 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v32[1] * v41 > v74[1])
  {
    v46 = v11;
    v47 = v31;
    v48 = a8;
    v49 = a9;
    goto LABEL_61;
  }

  if (*(v66 + 16) && v42 + v32[2] * v41 > v74[2])
  {
    v46 = v11;
    v47 = v31;
    v48 = a8;
    v49 = a9;
    goto LABEL_61;
  }

  v50 = v73 + v40 - 1;
  v51 = v39 + v31;
  if (v39 + v31 + *a8 * v50 > *a9)
  {
    v46 = v11;
    v47 = v31;
    v48 = a8;
    v49 = a9;
    goto LABEL_61;
  }

  if (*(v65 + 8) && ((v51 + 1 + ((v51 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + a8[1] * v50 > a9[1])
  {
    v46 = v11;
    v47 = v31;
    v48 = a8;
    v49 = a9;
    goto LABEL_61;
  }

  if (*(v65 + 16) && v51 + a8[2] * v50 > a9[2])
  {
    v46 = v11;
    v47 = v31;
    v48 = a8;
    v49 = a9;
LABEL_61:
    fig_log_get_emitter();
    v24 = FigSignalErrorAtGM();
    v32 = v67;
    v27 = v49;
    a8 = v48;
    v31 = v47;
    v11 = v46;
    v30 = v62;
    if (v24)
    {
      goto LABEL_67;
    }
  }

  *v23 = v11;
  v52 = v70;
  *(v23 + 4) = v71;
  *(v23 + 12) = v52;
  *(v23 + 20) = v39;
  *(v23 + 28) = v40;
  *(v23 + 36) = v30;
  v53 = v68;
  *(v23 + 44) = v69;
  v23[11] = v53;
  v23[12] = v39;
  v23[13] = v40;
  v23[14] = v31;
  v23[7] = v66;
  v23[8] = v32;
  v54 = v72;
  v55 = v73;
  v23[9] = v74;
  v23[10] = v54;
  v23[15] = v55;
  v23[16] = v45;
  v23[17] = a8;
  v23[18] = v27;
  v23[19] = v63;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v11, global_queue, v23, vt_Copy_422vf_rgb_422vf_GCD);
  if (!v11)
  {
    return 0;
  }

  v57 = (v23 + 20);
  v58 = v11;
  while (1)
  {
    v59 = *v57++;
    v24 = v59;
    if (v59)
    {
      break;
    }

    if (!--v58)
    {
      v24 = 0;
      break;
    }
  }

LABEL_67:
  if (v11 == 255)
  {
    goto LABEL_68;
  }

  return v24;
}

void *vt_Copy_422vf_rgb_422vf_GCD(void *a1, uint64_t a2, double a3, double a4, float a5)
{
  v12 = *(a1 + 36);
  v13 = *a1;
  v14 = *(a1 + 28) * a2 / v13 + *(a1 + 44);
  v15 = a1[14];
  v17 = a1[12];
  v16 = a1[13];
  v18 = v16 * a2 / v13;
  v19 = v18 + a1[15];
  v20 = (v16 + v16 * a2) / v13 - v18;
  v21 = a1[7];
  v22 = a1[8];
  result = a1[16];
  v24 = a1[17];
  v25 = v22[2];
  v26 = v21[2];
  v27 = v24[2];
  v28 = result[2];
  v29 = (v28 + v27 * v19 + v15);
  if (v20 >= 1)
  {
    v30 = 0;
    v31 = a1[19];
    v32 = v17 & 0xFFFFFFFE;
    v33 = *v22;
    v34 = v22[1];
    v35 = *v24;
    v36 = v24[1];
    *&v37 = *(v31 + 136);
    LOWORD(a5) = *(v31 + 140);
    v38 = *&v37 / *(v31 + 128);
    v39 = LODWORD(a5);
    LOWORD(v37) = *(v31 + 142);
    v40 = v37;
    v41 = v38 * *v31;
    v42 = v38 * *(v31 + 8);
    v43 = v38 * *(v31 + 16);
    v44 = v38 * *(v31 + 20);
    v45 = *(v31 + 28);
    v46 = v38 * v45;
    LOWORD(v45) = *(v31 + 144);
    v47 = LODWORD(v45);
    LOWORD(v5) = *(v31 + 146);
    v48 = v5;
    LOWORD(v6) = *(v31 + 148);
    v49 = v6;
    LOWORD(v7) = *(v31 + 150);
    v50 = v7;
    LOWORD(v8) = *(v31 + 152);
    v51 = v8;
    v52 = *(v31 + 36);
    v53 = *(v31 + 40);
    v54 = *(v31 + 44);
    v55 = *(v31 + 48) * 0.5;
    v56 = *(v31 + 52) * 0.5;
    v57 = *(v31 + 56) * 0.5;
    v58 = *(v31 + 60) * 0.5;
    v59 = *(v31 + 64) * 0.5;
    v60 = *(v31 + 68);
    v61 = v60 * 0.5;
    v63 = *result;
    v62 = result[1];
    result = (v62 + v36 * v19 + v15);
    if (!v62)
    {
      result = 0;
    }

    v64 = (v63 + v35 * v19 + v15);
    v66 = *v21;
    v65 = v21[1];
    v67 = v65 + v34 * v14 + v12;
    if (!v65)
    {
      v67 = 0;
    }

    v68 = (v66 + v33 * v14 + v12);
    do
    {
      if (v32 >= 1)
      {
        v69 = 0;
        v70 = v68;
        v71 = v64;
        do
        {
          LOBYTE(v60) = *(v67 + v69);
          *&v72 = LODWORD(v60) - v40;
          LOBYTE(v9) = *(v67 + v69 + 1);
          v73 = LODWORD(v9) - v40;
          v74 = v42 * v73;
          v75 = (v44 * v73) + (*&v72 * v43);
          v76 = v46 * *&v72;
          LOBYTE(v72) = *v70;
          v77 = v41 * (v72 - v39);
          v78 = (v42 * v73) + v77;
          v79 = v77 + v75;
          v80 = v76 + v77;
          v81 = (((v53 * v79) + (v52 * v78)) + (v54 * v80)) + v47;
          v82 = v49;
          if (v81 <= v49)
          {
            v82 = (((v53 * v79) + (v52 * v78)) + (v54 * v80)) + v47;
            if (v81 < v47)
            {
              v82 = v47;
            }
          }

          LOBYTE(v81) = v70[1];
          v83 = v41 * (LODWORD(v81) - v39);
          v84 = v74 + v83;
          v85 = v75 + v83;
          v86 = v76 + v83;
          v87 = (((v53 * v85) + (v52 * v84)) + (v54 * (v76 + v83))) + v47;
          *v71 = llroundf(v82);
          v88 = v49;
          if (v87 <= v49)
          {
            v88 = v87;
            if (v87 < v47)
            {
              v88 = v47;
            }
          }

          v71[1] = llroundf(v88);
          v89 = v78 + v84;
          v90 = v79 + v85;
          v91 = v80 + v86;
          v92 = ((v48 + (v89 * v55)) + (v90 * v56)) + (v91 * v57);
          v93 = v51;
          if (v92 <= v51)
          {
            v93 = ((v48 + (v89 * v55)) + (v90 * v56)) + (v91 * v57);
            if (v92 < v50)
            {
              v93 = v50;
            }
          }

          v60 = ((v48 + (v89 * v58)) + (v90 * v59)) + (v91 * v61);
          *(result + v69) = llroundf(v93);
          v9 = v51;
          if (v60 <= v51)
          {
            v9 = v60;
            if (v60 < v50)
            {
              v9 = v50;
            }
          }

          *(result + v69 + 1) = llroundf(v9);
          v69 += 2;
          v70 += 2;
          v71 += 2;
        }

        while (v69 < v32);
      }

      v68 += v33;
      v67 += v34;
      v64 += v35;
      result = (result + v36);
      ++v30;
    }

    while (v30 != v20);
  }

  if (v26 && v28)
  {
    if (v20 >= 1)
    {
      v94 = 0;
      v95 = (v26 + v25 * v14 + v12);
      do
      {
        result = memcpy(v29, v95, v17);
        v95 += v25;
        v29 += v27;
        ++v94;
      }

      while (v20 > v94);
    }
  }

  else if (v28 && v20 >= 1)
  {
    v96 = 0;
    v97 = vdupq_n_s64(v17 - 1);
    do
    {
      if (v17 >= 1)
      {
        v98 = 0;
        do
        {
          v99 = vdupq_n_s64(v98);
          v100 = vmovn_s64(vcgeq_u64(v97, vorrq_s8(v99, xmmword_18FECDDB0)));
          if (vuzp1_s8(vuzp1_s16(v100, *v97.i8), *v97.i8).u8[0])
          {
            v29[v98] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(v100, *&v97), *&v97).i8[1])
          {
            v29[v98 + 1] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(*&v97, vmovn_s64(vcgeq_u64(v97, vorrq_s8(v99, xmmword_18FECDDA0)))), *&v97).i8[2])
          {
            v29[v98 + 2] = -1;
            v29[v98 + 3] = -1;
          }

          v101 = vmovn_s64(vcgeq_u64(v97, vorrq_s8(v99, xmmword_18FECDD90)));
          if (vuzp1_s8(*&v97, vuzp1_s16(v101, *&v97)).i32[1])
          {
            v29[v98 + 4] = -1;
          }

          if (vuzp1_s8(*&v97, vuzp1_s16(v101, *&v97)).i8[5])
          {
            v29[v98 + 5] = -1;
          }

          if (vuzp1_s8(*&v97, vuzp1_s16(*&v97, vmovn_s64(vcgeq_u64(v97, vorrq_s8(v99, xmmword_18FECDD80))))).i8[6])
          {
            v29[v98 + 6] = -1;
            v29[v98 + 7] = -1;
          }

          v102 = vmovn_s64(vcgeq_u64(v97, vorrq_s8(v99, xmmword_18FECDD70)));
          if (vuzp1_s8(vuzp1_s16(v102, *v97.i8), *v97.i8).u8[0])
          {
            v29[v98 + 8] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(v102, *&v97), *&v97).i8[1])
          {
            v29[v98 + 9] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(*&v97, vmovn_s64(vcgeq_u64(v97, vorrq_s8(v99, xmmword_18FECDD60)))), *&v97).i8[2])
          {
            v29[v98 + 10] = -1;
            v29[v98 + 11] = -1;
          }

          v103 = vmovn_s64(vcgeq_u64(v97, vorrq_s8(v99, xmmword_18FECDD50)));
          if (vuzp1_s8(*&v97, vuzp1_s16(v103, *&v97)).i32[1])
          {
            v29[v98 + 12] = -1;
          }

          if (vuzp1_s8(*&v97, vuzp1_s16(v103, *&v97)).i8[5])
          {
            v29[v98 + 13] = -1;
          }

          if (vuzp1_s8(*&v97, vuzp1_s16(*&v97, vmovn_s64(vcgeq_u64(v97, vorrq_s8(v99, xmmword_18FECDD40))))).i8[6])
          {
            v29[v98 + 14] = -1;
            v29[v98 + 15] = -1;
          }

          v98 += 16;
        }

        while (((v17 + 15) & 0xFFFFFFFFFFFFFFF0) != v98);
      }

      v29 += v27;
      ++v96;
    }

    while (v20 > v96);
  }

  *(a1 + a2 + 40) = 0;
  return result;
}

uint64_t vt_Copy_422vf_TRC_Tone_Mat_TRC_2vuyf(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4, void *a5, uint64_t *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v49 = a7;
  v50 = a8;
  v56 = a4;
  v57 = a5;
  v51 = a3;
  v58 = *MEMORY[0x1E69E9840];
  v48 = a1;
  v9 = *(a1 + 162);
  v10 = *a2;
  v11 = a2[1];
  v12 = a2[2];
  v13 = a2[3];
  v14 = a2[4];
  v15 = a2[5];
  v16 = *a6;
  v52 = a6[1];
  v53 = v10;
  v18 = a6[2];
  v17 = a6[3];
  v19 = a6[4];
  v54 = a6[5];
  v55 = v16;
  if (v9 == 255)
  {
    v20 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v20)
    {
      v21 = 0;
LABEL_39:
      free(v20);
      return v21;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v9 + 160, a3, a4);
    v20 = (&v47 - v22);
    bzero(&v47 - v22, v23);
  }

  v24 = v18 - 1;
  v25 = v12 - 1;
  if (v19)
  {
    ++v14;
  }

  else
  {
    v25 = v12;
  }

  if (v19)
  {
    v26 = v19 + 1;
  }

  else
  {
    v24 = v18;
    v26 = v19;
  }

  v27 = v25 - (v24 & 1);
  v28 = v24 & 0xFFFFFFFFFFFFFFFELL;
  if (v27 + v14 > v53)
  {
    v27 = v53 - v14;
  }

  if (v28 + v26 > v55)
  {
    v28 = v55 - v26;
  }

  if (v15 + v13 <= v11)
  {
    v29 = v13;
  }

  else
  {
    v29 = v11 - v15;
  }

  if (v54 + v17 <= v52)
  {
    v30 = v17;
  }

  else
  {
    v30 = v52 - v54;
  }

  if (v27 >= v28)
  {
    v31 = v28;
  }

  else
  {
    v31 = v27;
  }

  if (v29 >= v30)
  {
    v32 = v30;
  }

  else
  {
    v32 = v29;
  }

  v33 = v15 + v32 - 1;
  v34 = v31 + v14;
  if (((v31 + v14 + *v56 * v33) > *v57 || (v35 = v51, *(v51 + 8)) && ((v34 + 1 + ((v34 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v56[1] * v33 > v57[1] || *(v51 + 16) && (v34 + v56[2] * v33) > v57[2]) && (fig_log_get_emitter(), v36 = FigSignalErrorAtGM(), v35 = v51, v36))
  {
    v21 = v36;
  }

  else
  {
    *v20 = v9;
    v37 = v52;
    *(v20 + 4) = v53;
    *(v20 + 12) = v11;
    *(v20 + 20) = v31;
    *(v20 + 28) = v32;
    *(v20 + 36) = v14;
    *(v20 + 44) = v15;
    v20[11] = v37;
    v20[12] = v31;
    v20[13] = v32;
    v20[14] = v26;
    v39 = v55;
    v38 = v56;
    v20[7] = v35;
    v20[8] = v38;
    v20[9] = v57;
    v20[10] = v39;
    v41 = v49;
    v40 = v50;
    v20[15] = v54;
    v20[16] = v41;
    v20[17] = v40;
    v20[18] = a9;
    v20[19] = v48;
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_apply_f(v9, global_queue, v20, vt_Copy_422vf_TRC_Tone_Mat_TRC_2vuyf_GCD);
    if (!v9)
    {
      return 0;
    }

    v43 = (v20 + 20);
    v44 = v9;
    while (1)
    {
      v45 = *v43++;
      v21 = v45;
      if (v45)
      {
        break;
      }

      if (!--v44)
      {
        v21 = 0;
        break;
      }
    }
  }

  if (v9 == 255)
  {
    goto LABEL_39;
  }

  return v21;
}

void *vt_Copy_422vf_TRC_Tone_Mat_TRC_2vuyf_GCD(void *result, uint64_t a2, double a3, float a4, float a5)
{
  v10 = result;
  v11 = *(result + 36);
  v12 = *result;
  v13 = *(result + 28) * a2 / v12 + *(result + 44);
  v14 = result[14];
  v16 = result[12];
  v15 = result[13];
  v17 = v15 * a2;
  v18 = v15 * a2 / v12;
  v19 = v18 + result[15];
  v20 = (v15 + v17) / v12 - v18;
  v21 = result[7];
  v22 = result[8];
  v23 = result[16];
  v24 = result[17];
  v25 = v22[2];
  v26 = v21[2];
  v27 = v24[1];
  v28 = v23[1];
  v29 = (v28 + v27 * v19 + v14);
  if (v28)
  {
    v30 = (v28 + v27 * v19 + v14);
  }

  else
  {
    v30 = 0;
  }

  if (v20 >= 1)
  {
    v31 = 0;
    v32 = result[19];
    v33 = v16 & 0xFFFFFFFE;
    v34 = *v22;
    v35 = v22[1];
    v36 = *v24;
    LOWORD(a4) = *(v32 + 140);
    LOWORD(a5) = *(v32 + 142);
    LOWORD(v5) = *(v32 + 144);
    LOWORD(v6) = *(v32 + 146);
    LOWORD(v7) = *(v32 + 148);
    LOWORD(v8) = *(v32 + 150);
    v37 = 8191.0 / *(v32 + 128);
    v179 = LODWORD(a4);
    v38 = LODWORD(a5);
    v177 = v37 * *(v32 + 8);
    v178 = v37 * *v32;
    v175 = v37 * *(v32 + 20);
    v176 = v37 * *(v32 + 16);
    v39 = v37 * *(v32 + 28);
    v40 = v5;
    *&v41 = v6;
    v173 = v6;
    v174 = v39;
    v42 = v7;
    v43 = v8;
    LOWORD(v41) = *(v32 + 152);
    v44 = v41;
    v45 = *(v32 + 36);
    v46 = *(v32 + 40);
    v47 = *(v32 + 44);
    v171 = *(v32 + 52) * 0.5;
    v172 = *(v32 + 48) * 0.5;
    v169 = *(v32 + 60) * 0.5;
    v170 = *(v32 + 56) * 0.5;
    v48 = *(v32 + 72);
    v49 = *(v32 + 68) * 0.5;
    v167 = v49;
    v168 = *(v32 + 64) * 0.5;
    v51 = *(v32 + 76);
    v50 = *(v32 + 80);
    v52 = *(v32 + 84);
    v53 = *(v32 + 88);
    v54 = *(v32 + 92);
    v55 = *(v32 + 96);
    v56 = *(v32 + 100);
    v57 = *(v32 + 104);
    v58 = v32 + 164;
    result = (v32 + 16548);
    v59 = *v23 + v36 * v19;
    v60 = v32 + 32932;
    v61 = (v59 + v14);
    v63 = *v21;
    v62 = v21[1];
    v64 = v62 + v35 * v13 + v11;
    if (!v62)
    {
      v64 = 0;
    }

    v65 = (v63 + v34 * v13 + v11);
    v67 = *(v32 + 108);
    v66 = *(v32 + 112);
    v68 = *(v32 + 116);
    v69 = *(v32 + 120);
    do
    {
      if (v33 >= 1)
      {
        v70 = 0;
        v71 = v65;
        v72 = v30;
        v73 = v61;
        do
        {
          LOBYTE(v49) = *(v64 + v70 + 1);
          v74 = LODWORD(v49) - v38;
          v75 = LODWORD(v177);
          v76 = v177 * v74;
          LOBYTE(v75) = *v71;
          v77 = v178 * (v75 - v179);
          v78 = (v177 * v74) + v77;
          v79 = 8191.0;
          if (v78 <= 8191.0)
          {
            v79 = (v177 * v74) + v77;
            if (v78 < 0.0)
            {
              v79 = 0.0;
            }
          }

          LOBYTE(v78) = *(v64 + v70);
          v80 = v38;
          v81 = LODWORD(v78) - v38;
          v82 = (v175 * v74) + (v81 * v176);
          v83 = 8191.0;
          if ((v77 + v82) <= 8191.0)
          {
            v83 = v77 + v82;
            if ((v77 + v82) < 0.0)
            {
              v83 = 0.0;
            }
          }

          v84 = v174 * v81;
          v85 = (v174 * v81) + v77;
          v86 = 8191.0;
          if (v85 <= 8191.0)
          {
            v86 = v85;
            if (v85 < 0.0)
            {
              v86 = 0.0;
            }
          }

          LOBYTE(v85) = v71[1];
          v87 = v178 * (LODWORD(v85) - v179);
          v88 = v76 + v87;
          v89 = (v76 + v87) <= 8191.0;
          v90 = 8191.0;
          if (v89)
          {
            v90 = v88;
            if (v88 < 0.0)
            {
              v90 = 0.0;
            }
          }

          v91 = v82 + v87;
          v89 = (v82 + v87) <= 8191.0;
          v92 = 8191.0;
          if (v89)
          {
            v92 = v91;
            if (v91 < 0.0)
            {
              v92 = 0.0;
            }
          }

          v93 = v84 + v87;
          v89 = (v84 + v87) <= 8191.0;
          v94 = 8191.0;
          if (v89)
          {
            v94 = v93;
            if (v93 < 0.0)
            {
              v94 = 0.0;
            }
          }

          _H0 = *(v58 + 2 * llroundf(fminf(fmaxf(v79, 0.0), 8191.0)));
          __asm { FCVT            S24, H0 }

          _H0 = *(v58 + 2 * llroundf(fminf(fmaxf(v83, 0.0), 8191.0)));
          __asm { FCVT            S25, H0 }

          _H0 = *(v58 + 2 * llroundf(fminf(fmaxf(v86, 0.0), 8191.0)));
          __asm { FCVT            S26, H0 }

          _H1 = *(v58 + 2 * llroundf(fminf(fmaxf(v90, 0.0), 8191.0)));
          _H27 = *(v58 + 2 * llroundf(fminf(fmaxf(v92, 0.0), 8191.0)));
          _H2 = *(v58 + 2 * llroundf(fminf(fmaxf(v94, 0.0), 8191.0)));
          v108 = (((v66 * _S25) + (v67 * _S24)) + (v68 * _S26)) + (v69 * fmaxf(_S24, fmaxf(_S25, _S26)));
          v109 = 8191.0;
          if (v108 <= 8191.0)
          {
            v109 = v108;
            if (v108 < 0.0)
            {
              v109 = 0.0;
            }
          }

          __asm
          {
            FCVT            S28, H1
            FCVT            S30, H27
            FCVT            S1, H2
          }

          _H0 = *(result + llroundf(v109));
          __asm { FCVT            S0, H0 }

          v115 = _S24 * _S0;
          v116 = _S25 * _S0;
          v117 = _S26 * _S0;
          v118 = (((v66 * _S30) + (v67 * _S28)) + (v68 * _S1)) + (v69 * fmaxf(_S28, fmaxf(_S30, _S1)));
          v119 = 8191.0;
          if (v118 <= 8191.0)
          {
            v119 = v118;
            if (v118 < 0.0)
            {
              v119 = 0.0;
            }
          }

          _H0 = *(result + llroundf(v119));
          __asm { FCVT            S0, H0 }

          v122 = _S28 * _S0;
          v123 = _S30 * _S0;
          v124 = _S1 * _S0;
          _S1 = ((v51 * v116) + (v115 * v48)) + (v117 * v50);
          v126 = ((v53 * v116) + (v115 * v52)) + (v117 * v54);
          _S24 = ((v56 * v116) + (v115 * v55)) + (v117 * v57);
          v128 = (v51 * v123) + (v122 * v48);
          v129 = (v53 * v123) + (v122 * v52);
          _S2 = (v56 * v123) + (v122 * v55);
          _S25 = v128 + (v124 * v50);
          v132 = v129 + (v124 * v54);
          LOWORD(_S1) = *(v60 + 2 * llroundf(fminf(fmaxf(_S1, 0.0), 8191.0)));
          v133 = _S2 + (v124 * v57);
          __asm { FCVT            S1, H1 }

          LOWORD(_S2) = *(v60 + 2 * llroundf(fminf(fmaxf(v126, 0.0), 8191.0)));
          __asm { FCVT            S2, H2 }

          LOWORD(_S24) = *(v60 + 2 * llroundf(fminf(fmaxf(_S24, 0.0), 8191.0)));
          __asm { FCVT            S27, H24 }

          LOWORD(_S24) = *(v60 + 2 * llroundf(fminf(fmaxf(_S25, 0.0), 8191.0)));
          __asm { FCVT            S24, H24 }

          LOWORD(_S25) = *(v60 + 2 * llroundf(fminf(fmaxf(v132, 0.0), 8191.0)));
          __asm { FCVT            S25, H25 }

          v139 = llroundf(fminf(fmaxf(v133, 0.0), 8191.0));
          v140 = (v46 * _S2) + (v45 * _S1);
          v141 = _S1 + _S24;
          _S2 = _S2 + _S25;
          v143 = (v173 + (v141 * v172)) + (_S2 * v171);
          v144 = (v173 + (v141 * v169)) + (_S2 * v168);
          LOWORD(_S2) = *(v60 + 2 * v139);
          __asm { FCVT            S26, H2 }

          v146 = v140 + (v47 * _S27);
          v147 = _S27 + _S26;
          v148 = v143 + ((_S27 + _S26) * v170);
          v149 = v144 + (v147 * v167);
          if (v148 < v43)
          {
            v150 = v43;
          }

          else
          {
            v150 = v148;
          }

          v151 = v146 + v40;
          if (v148 > v44)
          {
            v150 = v44;
          }

          v152 = llroundf(v150);
          if (v151 < v40)
          {
            v153 = v40;
          }

          else
          {
            v153 = v151;
          }

          *v73 = v152;
          if (v151 <= v42)
          {
            v154 = v153;
          }

          else
          {
            v154 = v42;
          }

          v73[1] = llroundf(v154);
          v155 = v44;
          if (v149 <= v44)
          {
            v155 = v149;
            if (v149 < v43)
            {
              v155 = v43;
            }
          }

          v156 = (((v46 * _S25) + (v45 * _S24)) + (v47 * _S26)) + v40;
          v73[2] = llroundf(v155);
          v49 = v42;
          if (v156 <= v42)
          {
            v49 = (((v46 * _S25) + (v45 * _S24)) + (v47 * _S26)) + v40;
            if (v156 < v40)
            {
              v49 = v40;
            }
          }

          v73[3] = llroundf(v49);
          v38 = v80;
          if (v72)
          {
            *v72++ = 0;
          }

          v70 += 2;
          v71 += 2;
          v73 += 4;
        }

        while (v70 < v33);
      }

      v65 += v34;
      v64 += v35;
      v61 += v36;
      ++v31;
    }

    while (v31 != v20);
  }

  if (v26 && v30)
  {
    if (v20 >= 1)
    {
      v157 = 0;
      v158 = (v26 + v25 * v13 + v11);
      do
      {
        result = memcpy(v29, v158, v16);
        v158 += v25;
        v29 += v27;
        ++v157;
      }

      while (v20 > v157);
    }
  }

  else if (v30 && v20 >= 1)
  {
    v159 = 0;
    v160 = vdupq_n_s64(v16 - 1);
    do
    {
      if (v16 >= 1)
      {
        v161 = 0;
        do
        {
          v162 = vdupq_n_s64(v161);
          v163 = vmovn_s64(vcgeq_u64(v160, vorrq_s8(v162, xmmword_18FECDDB0)));
          if (vuzp1_s8(vuzp1_s16(v163, *v160.i8), *v160.i8).u8[0])
          {
            v29[v161] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(v163, *&v160), *&v160).i8[1])
          {
            v29[v161 + 1] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(*&v160, vmovn_s64(vcgeq_u64(v160, vorrq_s8(v162, xmmword_18FECDDA0)))), *&v160).i8[2])
          {
            v29[v161 + 2] = -1;
            v29[v161 + 3] = -1;
          }

          v164 = vmovn_s64(vcgeq_u64(v160, vorrq_s8(v162, xmmword_18FECDD90)));
          if (vuzp1_s8(*&v160, vuzp1_s16(v164, *&v160)).i32[1])
          {
            v29[v161 + 4] = -1;
          }

          if (vuzp1_s8(*&v160, vuzp1_s16(v164, *&v160)).i8[5])
          {
            v29[v161 + 5] = -1;
          }

          if (vuzp1_s8(*&v160, vuzp1_s16(*&v160, vmovn_s64(vcgeq_u64(v160, vorrq_s8(v162, xmmword_18FECDD80))))).i8[6])
          {
            v29[v161 + 6] = -1;
            v29[v161 + 7] = -1;
          }

          v165 = vmovn_s64(vcgeq_u64(v160, vorrq_s8(v162, xmmword_18FECDD70)));
          if (vuzp1_s8(vuzp1_s16(v165, *v160.i8), *v160.i8).u8[0])
          {
            v29[v161 + 8] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(v165, *&v160), *&v160).i8[1])
          {
            v29[v161 + 9] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(*&v160, vmovn_s64(vcgeq_u64(v160, vorrq_s8(v162, xmmword_18FECDD60)))), *&v160).i8[2])
          {
            v29[v161 + 10] = -1;
            v29[v161 + 11] = -1;
          }

          v166 = vmovn_s64(vcgeq_u64(v160, vorrq_s8(v162, xmmword_18FECDD50)));
          if (vuzp1_s8(*&v160, vuzp1_s16(v166, *&v160)).i32[1])
          {
            v29[v161 + 12] = -1;
          }

          if (vuzp1_s8(*&v160, vuzp1_s16(v166, *&v160)).i8[5])
          {
            v29[v161 + 13] = -1;
          }

          if (vuzp1_s8(*&v160, vuzp1_s16(*&v160, vmovn_s64(vcgeq_u64(v160, vorrq_s8(v162, xmmword_18FECDD40))))).i8[6])
          {
            v29[v161 + 14] = -1;
            v29[v161 + 15] = -1;
          }

          v161 += 16;
        }

        while (((v16 + 15) & 0xFFFFFFFFFFFFFFF0) != v161);
      }

      v29 += v27;
      ++v159;
    }

    while (v20 > v159);
  }

  *(v10 + a2 + 40) = 0;
  return result;
}

uint64_t vt_Copy_422vf_TRC_Mat_TRC_2vuyf(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4, void *a5, uint64_t *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v49 = a7;
  v50 = a8;
  v56 = a4;
  v57 = a5;
  v51 = a3;
  v58 = *MEMORY[0x1E69E9840];
  v48 = a1;
  v9 = *(a1 + 162);
  v10 = *a2;
  v11 = a2[1];
  v12 = a2[2];
  v13 = a2[3];
  v14 = a2[4];
  v15 = a2[5];
  v16 = *a6;
  v52 = a6[1];
  v53 = v10;
  v18 = a6[2];
  v17 = a6[3];
  v19 = a6[4];
  v54 = a6[5];
  v55 = v16;
  if (v9 == 255)
  {
    v20 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v20)
    {
      v21 = 0;
LABEL_39:
      free(v20);
      return v21;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v9 + 160, a3, a4);
    v20 = (&v47 - v22);
    bzero(&v47 - v22, v23);
  }

  v24 = v18 - 1;
  v25 = v12 - 1;
  if (v19)
  {
    ++v14;
  }

  else
  {
    v25 = v12;
  }

  if (v19)
  {
    v26 = v19 + 1;
  }

  else
  {
    v24 = v18;
    v26 = v19;
  }

  v27 = v25 - (v24 & 1);
  v28 = v24 & 0xFFFFFFFFFFFFFFFELL;
  if (v27 + v14 > v53)
  {
    v27 = v53 - v14;
  }

  if (v28 + v26 > v55)
  {
    v28 = v55 - v26;
  }

  if (v15 + v13 <= v11)
  {
    v29 = v13;
  }

  else
  {
    v29 = v11 - v15;
  }

  if (v54 + v17 <= v52)
  {
    v30 = v17;
  }

  else
  {
    v30 = v52 - v54;
  }

  if (v27 >= v28)
  {
    v31 = v28;
  }

  else
  {
    v31 = v27;
  }

  if (v29 >= v30)
  {
    v32 = v30;
  }

  else
  {
    v32 = v29;
  }

  v33 = v15 + v32 - 1;
  v34 = v31 + v14;
  if (((v31 + v14 + *v56 * v33) > *v57 || (v35 = v51, *(v51 + 8)) && ((v34 + 1 + ((v34 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v56[1] * v33 > v57[1] || *(v51 + 16) && (v34 + v56[2] * v33) > v57[2]) && (fig_log_get_emitter(), v36 = FigSignalErrorAtGM(), v35 = v51, v36))
  {
    v21 = v36;
  }

  else
  {
    *v20 = v9;
    v37 = v52;
    *(v20 + 4) = v53;
    *(v20 + 12) = v11;
    *(v20 + 20) = v31;
    *(v20 + 28) = v32;
    *(v20 + 36) = v14;
    *(v20 + 44) = v15;
    v20[11] = v37;
    v20[12] = v31;
    v20[13] = v32;
    v20[14] = v26;
    v39 = v55;
    v38 = v56;
    v20[7] = v35;
    v20[8] = v38;
    v20[9] = v57;
    v20[10] = v39;
    v41 = v49;
    v40 = v50;
    v20[15] = v54;
    v20[16] = v41;
    v20[17] = v40;
    v20[18] = a9;
    v20[19] = v48;
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_apply_f(v9, global_queue, v20, vt_Copy_422vf_TRC_Mat_TRC_2vuyf_GCD);
    if (!v9)
    {
      return 0;
    }

    v43 = (v20 + 20);
    v44 = v9;
    while (1)
    {
      v45 = *v43++;
      v21 = v45;
      if (v45)
      {
        break;
      }

      if (!--v44)
      {
        v21 = 0;
        break;
      }
    }
  }

  if (v9 == 255)
  {
    goto LABEL_39;
  }

  return v21;
}

void *vt_Copy_422vf_TRC_Mat_TRC_2vuyf_GCD(void *result, uint64_t a2, double a3, double a4, float a5, float a6)
{
  v11 = result;
  v12 = *(result + 36);
  v13 = *result;
  v14 = *(result + 28) * a2 / v13 + *(result + 44);
  v15 = result[14];
  v17 = result[12];
  v16 = result[13];
  v18 = v16 * a2 / v13;
  v19 = v18 + result[15];
  v20 = (v16 + v16 * a2) / v13 - v18;
  v21 = result[7];
  v22 = result[8];
  v23 = result[16];
  v24 = result[17];
  v25 = v22[2];
  v26 = v21[2];
  v27 = v24[1];
  v28 = v23[1];
  v29 = (v28 + v27 * v19 + v15);
  if (v28)
  {
    v30 = (v28 + v27 * v19 + v15);
  }

  else
  {
    v30 = 0;
  }

  if (v20 >= 1)
  {
    v31 = 0;
    v32 = result[19];
    v33 = v17 & 0xFFFFFFFE;
    v34 = *v22;
    v35 = v22[1];
    v36 = *v24;
    LOWORD(a5) = *(v32 + 140);
    LOWORD(a6) = *(v32 + 142);
    LOWORD(v6) = *(v32 + 144);
    LOWORD(v7) = *(v32 + 146);
    LOWORD(v8) = *(v32 + 148);
    LOWORD(v9) = *(v32 + 150);
    v37 = 8191.0 / *(v32 + 128);
    v38 = LODWORD(a5);
    v39 = LODWORD(a6);
    v40 = v37 * *v32;
    v157 = v37 * *(v32 + 8);
    *&v41 = v37 * *(v32 + 20);
    v155 = *&v41;
    v156 = v37 * *(v32 + 16);
    v42 = v37 * *(v32 + 28);
    v43 = v6;
    v44 = v7;
    v45 = v8;
    v46 = v9;
    LOWORD(v41) = *(v32 + 152);
    v47 = v41;
    v48 = *(v32 + 36);
    v49 = *(v32 + 40);
    v50 = *(v32 + 44);
    v153 = *(v32 + 48) * 0.5;
    v154 = v42;
    v151 = *(v32 + 56) * 0.5;
    v152 = *(v32 + 52) * 0.5;
    v150 = *(v32 + 60) * 0.5;
    v51 = *(v32 + 64) * 0.5;
    v52 = *(v32 + 68);
    v53 = *(v32 + 72);
    v54 = v52 * 0.5;
    v56 = *(v32 + 76);
    v55 = *(v32 + 80);
    v57 = *(v32 + 84);
    v58 = *(v32 + 88);
    v59 = *(v32 + 92);
    v60 = *(v32 + 96);
    v61 = *(v32 + 100);
    v62 = *(v32 + 104);
    v63 = v32 + 16548;
    result = (v32 + 164);
    v64 = (*v23 + v36 * v19 + v15);
    v66 = *v21;
    v65 = v21[1];
    v67 = v65 + v35 * v14 + v12;
    if (!v65)
    {
      v67 = 0;
    }

    v68 = (v66 + v34 * v14 + v12);
    do
    {
      if (v33 >= 1)
      {
        v69 = 0;
        v70 = v68;
        v71 = v30;
        v72 = v64;
        do
        {
          LOBYTE(v52) = *(v67 + v69 + 1);
          v73 = LODWORD(v52) - v39;
          v74 = LODWORD(v157);
          v75 = v157 * v73;
          LOBYTE(v74) = *v70;
          v76 = v40 * (v74 - v38);
          v77 = (v157 * v73) + v76;
          v78 = 8191.0;
          if (v77 <= 8191.0)
          {
            v78 = (v157 * v73) + v76;
            if (v77 < 0.0)
            {
              v78 = 0.0;
            }
          }

          LOBYTE(v77) = *(v67 + v69);
          v79 = LODWORD(v77) - v39;
          v80 = (v155 * v73) + (v79 * v156);
          v81 = 8191.0;
          if ((v76 + v80) <= 8191.0)
          {
            v81 = v76 + v80;
            if ((v76 + v80) < 0.0)
            {
              v81 = 0.0;
            }
          }

          v82 = v154 * v79;
          v83 = v82 + v76;
          v84 = (v82 + v76) <= 8191.0;
          v85 = 8191.0;
          if (v84)
          {
            v85 = v83;
            if (v83 < 0.0)
            {
              v85 = 0.0;
            }
          }

          LOBYTE(v83) = v70[1];
          v86 = v40 * (LODWORD(v83) - v38);
          v87 = v75 + v86;
          v88 = 8191.0;
          if (v87 <= 8191.0)
          {
            v88 = v87;
            if (v87 < 0.0)
            {
              v88 = 0.0;
            }
          }

          v89 = v80 + v86;
          v84 = (v80 + v86) <= 8191.0;
          v90 = 8191.0;
          if (v84)
          {
            v90 = v89;
            if (v89 < 0.0)
            {
              v90 = 0.0;
            }
          }

          v91 = v82 + v86;
          v84 = (v82 + v86) <= 8191.0;
          v92 = 8191.0;
          if (v84)
          {
            v92 = v91;
            if (v91 < 0.0)
            {
              v92 = 0.0;
            }
          }

          _H4 = *(result + llroundf(fminf(fmaxf(v78, 0.0), 8191.0)));
          __asm { FCVT            S4, H4 }

          _H5 = *(result + llroundf(fminf(fmaxf(v81, 0.0), 8191.0)));
          __asm { FCVT            S5, H5 }

          _H6 = *(result + llroundf(fminf(fmaxf(v85, 0.0), 8191.0)));
          __asm { FCVT            S6, H6 }

          _H7 = *(result + llroundf(fminf(fmaxf(v88, 0.0), 8191.0)));
          __asm { FCVT            S7, H7 }

          _H24 = *(result + llroundf(fminf(fmaxf(v90, 0.0), 8191.0)));
          __asm { FCVT            S24, H24 }

          v107 = llroundf(fminf(fmaxf(v92, 0.0), 8191.0));
          _S25 = ((v56 * _S5) + (_S4 * v53)) + (_S6 * v55);
          v109 = ((v58 * _S5) + (_S4 * v57)) + (_S6 * v59);
          _S4 = ((v61 * _S5) + (_S4 * v60)) + (_S6 * v62);
          v111 = (v56 * _S24) + (_S7 * v53);
          v112 = (v58 * _S24) + (_S7 * v57);
          v113 = (v61 * _S24) + (_S7 * v60);
          LOWORD(_S24) = *(result + v107);
          __asm { FCVT            S24, H24 }

          _S5 = v111 + (_S24 * v55);
          v116 = v112 + (_S24 * v59);
          LOWORD(_S25) = *(v63 + 2 * llroundf(fminf(fmaxf(_S25, 0.0), 8191.0)));
          v117 = v113 + (_S24 * v62);
          __asm { FCVT            S24, H25 }

          LOWORD(_S25) = *(v63 + 2 * llroundf(fminf(fmaxf(v109, 0.0), 8191.0)));
          __asm { FCVT            S25, H25 }

          LOWORD(_S4) = *(v63 + 2 * llroundf(fminf(fmaxf(_S4, 0.0), 8191.0)));
          __asm { FCVT            S26, H4 }

          LOWORD(_S4) = *(v63 + 2 * llroundf(fminf(fmaxf(_S5, 0.0), 8191.0)));
          __asm { FCVT            S4, H4 }

          LOWORD(_S5) = *(v63 + 2 * llroundf(fminf(fmaxf(v116, 0.0), 8191.0)));
          __asm { FCVT            S5, H5 }

          v123 = llroundf(fminf(fmaxf(v117, 0.0), 8191.0));
          v124 = (v49 * _S25) + (v48 * _S24);
          _S6 = _S24 + _S4;
          v126 = _S25 + _S5;
          v127 = (v44 + ((_S24 + _S4) * v153)) + (v126 * v152);
          v128 = (v44 + (_S6 * v150)) + (v126 * v51);
          LOWORD(_S6) = *(v63 + 2 * v123);
          __asm { FCVT            S6, H6 }

          v130 = v124 + (v50 * _S26);
          v131 = v127 + ((_S26 + _S6) * v151);
          v132 = v128 + ((_S26 + _S6) * v54);
          if (v131 < v46)
          {
            v133 = v46;
          }

          else
          {
            v133 = v131;
          }

          v84 = v131 <= v47;
          v134 = v130 + v43;
          if (!v84)
          {
            v133 = v47;
          }

          v135 = llroundf(v133);
          if (v134 < v43)
          {
            v136 = v43;
          }

          else
          {
            v136 = v130 + v43;
          }

          *v72 = v135;
          if (v134 <= v45)
          {
            v137 = v136;
          }

          else
          {
            v137 = v45;
          }

          v72[1] = llroundf(v137);
          v138 = v47;
          if (v132 <= v47)
          {
            v138 = v132;
            if (v132 < v46)
            {
              v138 = v46;
            }
          }

          v52 = (((v49 * _S5) + (v48 * _S4)) + (v50 * _S6)) + v43;
          v72[2] = llroundf(v138);
          v139 = v45;
          if (v52 <= v45)
          {
            v139 = v52;
            if (v52 < v43)
            {
              v139 = v43;
            }
          }

          v72[3] = llroundf(v139);
          if (v71)
          {
            *v71++ = 0;
          }

          v69 += 2;
          v70 += 2;
          v72 += 4;
        }

        while (v69 < v33);
      }

      v68 += v34;
      v67 += v35;
      v64 += v36;
      ++v31;
    }

    while (v31 != v20);
  }

  if (v26 && v30)
  {
    if (v20 >= 1)
    {
      v140 = 0;
      v141 = (v26 + v25 * v14 + v12);
      do
      {
        result = memcpy(v29, v141, v17);
        v141 += v25;
        v29 += v27;
        ++v140;
      }

      while (v20 > v140);
    }
  }

  else if (v30 && v20 >= 1)
  {
    v142 = 0;
    v143 = vdupq_n_s64(v17 - 1);
    do
    {
      if (v17 >= 1)
      {
        v144 = 0;
        do
        {
          v145 = vdupq_n_s64(v144);
          v146 = vmovn_s64(vcgeq_u64(v143, vorrq_s8(v145, xmmword_18FECDDB0)));
          if (vuzp1_s8(vuzp1_s16(v146, *v143.i8), *v143.i8).u8[0])
          {
            v29[v144] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(v146, *&v143), *&v143).i8[1])
          {
            v29[v144 + 1] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(*&v143, vmovn_s64(vcgeq_u64(v143, vorrq_s8(v145, xmmword_18FECDDA0)))), *&v143).i8[2])
          {
            v29[v144 + 2] = -1;
            v29[v144 + 3] = -1;
          }

          v147 = vmovn_s64(vcgeq_u64(v143, vorrq_s8(v145, xmmword_18FECDD90)));
          if (vuzp1_s8(*&v143, vuzp1_s16(v147, *&v143)).i32[1])
          {
            v29[v144 + 4] = -1;
          }

          if (vuzp1_s8(*&v143, vuzp1_s16(v147, *&v143)).i8[5])
          {
            v29[v144 + 5] = -1;
          }

          if (vuzp1_s8(*&v143, vuzp1_s16(*&v143, vmovn_s64(vcgeq_u64(v143, vorrq_s8(v145, xmmword_18FECDD80))))).i8[6])
          {
            v29[v144 + 6] = -1;
            v29[v144 + 7] = -1;
          }

          v148 = vmovn_s64(vcgeq_u64(v143, vorrq_s8(v145, xmmword_18FECDD70)));
          if (vuzp1_s8(vuzp1_s16(v148, *v143.i8), *v143.i8).u8[0])
          {
            v29[v144 + 8] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(v148, *&v143), *&v143).i8[1])
          {
            v29[v144 + 9] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(*&v143, vmovn_s64(vcgeq_u64(v143, vorrq_s8(v145, xmmword_18FECDD60)))), *&v143).i8[2])
          {
            v29[v144 + 10] = -1;
            v29[v144 + 11] = -1;
          }

          v149 = vmovn_s64(vcgeq_u64(v143, vorrq_s8(v145, xmmword_18FECDD50)));
          if (vuzp1_s8(*&v143, vuzp1_s16(v149, *&v143)).i32[1])
          {
            v29[v144 + 12] = -1;
          }

          if (vuzp1_s8(*&v143, vuzp1_s16(v149, *&v143)).i8[5])
          {
            v29[v144 + 13] = -1;
          }

          if (vuzp1_s8(*&v143, vuzp1_s16(*&v143, vmovn_s64(vcgeq_u64(v143, vorrq_s8(v145, xmmword_18FECDD40))))).i8[6])
          {
            v29[v144 + 14] = -1;
            v29[v144 + 15] = -1;
          }

          v144 += 16;
        }

        while (((v17 + 15) & 0xFFFFFFFFFFFFFFF0) != v144);
      }

      v29 += v27;
      ++v142;
    }

    while (v20 > v142);
  }

  *(v11 + a2 + 40) = 0;
  return result;
}

uint64_t vt_Copy_422vf_rgb_2vuyf(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4, void *a5, uint64_t *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v49 = a7;
  v50 = a8;
  v56 = a4;
  v57 = a5;
  v51 = a3;
  v58 = *MEMORY[0x1E69E9840];
  v48 = a1;
  v9 = *(a1 + 162);
  v10 = *a2;
  v11 = a2[1];
  v12 = a2[2];
  v13 = a2[3];
  v14 = a2[4];
  v15 = a2[5];
  v16 = *a6;
  v52 = a6[1];
  v53 = v10;
  v18 = a6[2];
  v17 = a6[3];
  v19 = a6[4];
  v54 = a6[5];
  v55 = v16;
  if (v9 == 255)
  {
    v20 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v20)
    {
      v21 = 0;
LABEL_39:
      free(v20);
      return v21;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v9 + 160, a3, a4);
    v20 = (&v47 - v22);
    bzero(&v47 - v22, v23);
  }

  v24 = v18 - 1;
  v25 = v12 - 1;
  if (v19)
  {
    ++v14;
  }

  else
  {
    v25 = v12;
  }

  if (v19)
  {
    v26 = v19 + 1;
  }

  else
  {
    v24 = v18;
    v26 = v19;
  }

  v27 = v25 - (v24 & 1);
  v28 = v24 & 0xFFFFFFFFFFFFFFFELL;
  if (v27 + v14 > v53)
  {
    v27 = v53 - v14;
  }

  if (v28 + v26 > v55)
  {
    v28 = v55 - v26;
  }

  if (v15 + v13 <= v11)
  {
    v29 = v13;
  }

  else
  {
    v29 = v11 - v15;
  }

  if (v54 + v17 <= v52)
  {
    v30 = v17;
  }

  else
  {
    v30 = v52 - v54;
  }

  if (v27 >= v28)
  {
    v31 = v28;
  }

  else
  {
    v31 = v27;
  }

  if (v29 >= v30)
  {
    v32 = v30;
  }

  else
  {
    v32 = v29;
  }

  v33 = v15 + v32 - 1;
  v34 = v31 + v14;
  if (((v31 + v14 + *v56 * v33) > *v57 || (v35 = v51, *(v51 + 8)) && ((v34 + 1 + ((v34 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v56[1] * v33 > v57[1] || *(v51 + 16) && (v34 + v56[2] * v33) > v57[2]) && (fig_log_get_emitter(), v36 = FigSignalErrorAtGM(), v35 = v51, v36))
  {
    v21 = v36;
  }

  else
  {
    *v20 = v9;
    v37 = v52;
    *(v20 + 4) = v53;
    *(v20 + 12) = v11;
    *(v20 + 20) = v31;
    *(v20 + 28) = v32;
    *(v20 + 36) = v14;
    *(v20 + 44) = v15;
    v20[11] = v37;
    v20[12] = v31;
    v20[13] = v32;
    v20[14] = v26;
    v39 = v55;
    v38 = v56;
    v20[7] = v35;
    v20[8] = v38;
    v20[9] = v57;
    v20[10] = v39;
    v41 = v49;
    v40 = v50;
    v20[15] = v54;
    v20[16] = v41;
    v20[17] = v40;
    v20[18] = a9;
    v20[19] = v48;
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_apply_f(v9, global_queue, v20, vt_Copy_422vf_rgb_2vuyf_GCD);
    if (!v9)
    {
      return 0;
    }

    v43 = (v20 + 20);
    v44 = v9;
    while (1)
    {
      v45 = *v43++;
      v21 = v45;
      if (v45)
      {
        break;
      }

      if (!--v44)
      {
        v21 = 0;
        break;
      }
    }
  }

  if (v9 == 255)
  {
    goto LABEL_39;
  }

  return v21;
}

void *vt_Copy_422vf_rgb_2vuyf_GCD(void *a1, uint64_t a2, double a3, double a4, double a5, float a6, float a7)
{
  v16 = *(a1 + 36);
  v17 = *a1;
  v18 = *(a1 + 28) * a2 / v17 + *(a1 + 44);
  v19 = a1[14];
  v21 = a1[12];
  v20 = a1[13];
  v22 = v20 * a2;
  v23 = v20 * a2 / v17;
  v24 = v23 + a1[15];
  v25 = (v20 + v22) / v17 - v23;
  result = a1[7];
  v27 = a1[8];
  v28 = a1[16];
  v29 = a1[17];
  v30 = v27[2];
  v31 = result[2];
  v32 = v29[1];
  v33 = v28[1];
  v34 = (v33 + v32 * v24 + v19);
  if (v33)
  {
    v35 = (v33 + v32 * v24 + v19);
  }

  else
  {
    v35 = 0;
  }

  if (v25 >= 1)
  {
    v36 = 0;
    v37 = a1[19];
    v38 = v21 & 0xFFFFFFFE;
    LOWORD(a6) = *(v37 + 140);
    LOWORD(a7) = *(v37 + 142);
    v39 = *v37;
    v40 = *(v37 + 8);
    v41 = *(v37 + 136) / *(v37 + 128);
    v42 = *(v37 + 16);
    v43 = *(v37 + 20);
    v44 = *(v37 + 28);
    LOWORD(v9) = *(v37 + 144);
    LOWORD(v10) = *(v37 + 146);
    LOWORD(v11) = *(v37 + 148);
    LOWORD(v12) = *(v37 + 150);
    LOWORD(v13) = *(v37 + 152);
    v45 = *(v37 + 36);
    v46 = *(v37 + 40);
    v47 = *(v37 + 44);
    v48 = *(v37 + 48);
    v49 = *(v37 + 52);
    v50 = *(v37 + 56);
    v51 = *(v37 + 60);
    v52 = *(v37 + 64);
    v53 = *(v37 + 68);
    v54 = *v27;
    v55 = v27[1];
    v56 = *v29;
    v57 = LODWORD(a6);
    v58 = LODWORD(a7);
    v59 = v41 * v39;
    v60 = v41 * v40;
    v61 = v41 * v42;
    v62 = v41 * v43;
    v63 = v41 * v44;
    v64 = v9;
    v65 = v10;
    v66 = v11;
    v67 = v12;
    v68 = v13;
    v69 = 0.5;
    v70 = v48 * 0.5;
    v71 = v49 * 0.5;
    v72 = v50 * 0.5;
    v73 = v51 * 0.5;
    v74 = v52 * 0.5;
    v75 = v53 * 0.5;
    v76 = (*v28 + v56 * v24 + v19);
    v78 = *result;
    v77 = result[1];
    result = (v77 + v55 * v18 + v16);
    if (!v77)
    {
      result = 0;
    }

    v79 = (v78 + v54 * v18 + v16);
    do
    {
      if (v38 >= 1)
      {
        v80 = 0;
        v81 = v79;
        v82 = v76;
        v83 = v35;
        do
        {
          LOBYTE(v53) = *(result + v80);
          v84 = LODWORD(v53) - v58;
          LOBYTE(v69) = *(result + v80 + 1);
          v85 = LODWORD(v69) - v58;
          v86 = v60 * v85;
          v87 = (v62 * v85) + (v84 * v61);
          v88 = v63 * v84;
          LOBYTE(v7) = *v81;
          v89 = v59 * (LODWORD(v7) - v57);
          LOBYTE(v8) = v81[1];
          v90 = v59 * (LODWORD(v8) - v57);
          v91 = v86 + v89;
          v92 = v89 + v87;
          v93 = v88 + v89;
          v94 = v86 + v90;
          v95 = v87 + v90;
          v96 = v88 + v90;
          v97 = (((v46 * v92) + (v45 * v91)) + (v47 * v93)) + v64;
          v53 = (((v46 * v95) + (v45 * v94)) + (v47 * v96)) + v64;
          v98 = v91 + v94;
          v99 = v92 + v95;
          v100 = (v65 + (v98 * v70)) + (v99 * v71);
          v7 = v93 + v96;
          v8 = v100 + (v7 * v72);
          v101 = (v65 + (v98 * v73)) + (v99 * v74);
          if (v8 < v67)
          {
            v102 = v67;
          }

          else
          {
            v102 = v100 + (v7 * v72);
          }

          if (v8 > v68)
          {
            v102 = v68;
          }

          v103 = v101 + (v7 * v75);
          *v82 = llroundf(v102);
          if (v97 < v64)
          {
            v104 = v64;
          }

          else
          {
            v104 = v97;
          }

          if (v97 > v66)
          {
            v104 = v66;
          }

          v82[1] = llroundf(v104);
          if (v103 < v67)
          {
            v105 = v67;
          }

          else
          {
            v105 = v103;
          }

          if (v103 <= v68)
          {
            v106 = v105;
          }

          else
          {
            v106 = v68;
          }

          v82[2] = llroundf(v106);
          v69 = v66;
          if (v53 <= v66)
          {
            v69 = v53;
            if (v53 < v64)
            {
              v69 = v64;
            }
          }

          v82[3] = llroundf(v69);
          if (v83)
          {
            *v83++ = 0;
          }

          v80 += 2;
          v81 += 2;
          v82 += 4;
        }

        while (v80 < v38);
      }

      v79 += v54;
      result = (result + v55);
      v76 += v56;
      ++v36;
    }

    while (v36 != v25);
  }

  if (v31 && v35)
  {
    if (v25 >= 1)
    {
      v107 = 0;
      v108 = (v31 + v30 * v18 + v16);
      do
      {
        result = memcpy(v34, v108, v21);
        v108 += v30;
        v34 += v32;
        ++v107;
      }

      while (v25 > v107);
    }
  }

  else if (v35 && v25 >= 1)
  {
    v109 = 0;
    v110 = vdupq_n_s64(v21 - 1);
    do
    {
      if (v21 >= 1)
      {
        v111 = 0;
        do
        {
          v112 = vdupq_n_s64(v111);
          v113 = vmovn_s64(vcgeq_u64(v110, vorrq_s8(v112, xmmword_18FECDDB0)));
          if (vuzp1_s8(vuzp1_s16(v113, *v110.i8), *v110.i8).u8[0])
          {
            v34[v111] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(v113, *&v110), *&v110).i8[1])
          {
            v34[v111 + 1] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(*&v110, vmovn_s64(vcgeq_u64(v110, vorrq_s8(v112, xmmword_18FECDDA0)))), *&v110).i8[2])
          {
            v34[v111 + 2] = -1;
            v34[v111 + 3] = -1;
          }

          v114 = vmovn_s64(vcgeq_u64(v110, vorrq_s8(v112, xmmword_18FECDD90)));
          if (vuzp1_s8(*&v110, vuzp1_s16(v114, *&v110)).i32[1])
          {
            v34[v111 + 4] = -1;
          }

          if (vuzp1_s8(*&v110, vuzp1_s16(v114, *&v110)).i8[5])
          {
            v34[v111 + 5] = -1;
          }

          if (vuzp1_s8(*&v110, vuzp1_s16(*&v110, vmovn_s64(vcgeq_u64(v110, vorrq_s8(v112, xmmword_18FECDD80))))).i8[6])
          {
            v34[v111 + 6] = -1;
            v34[v111 + 7] = -1;
          }

          v115 = vmovn_s64(vcgeq_u64(v110, vorrq_s8(v112, xmmword_18FECDD70)));
          if (vuzp1_s8(vuzp1_s16(v115, *v110.i8), *v110.i8).u8[0])
          {
            v34[v111 + 8] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(v115, *&v110), *&v110).i8[1])
          {
            v34[v111 + 9] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(*&v110, vmovn_s64(vcgeq_u64(v110, vorrq_s8(v112, xmmword_18FECDD60)))), *&v110).i8[2])
          {
            v34[v111 + 10] = -1;
            v34[v111 + 11] = -1;
          }

          v116 = vmovn_s64(vcgeq_u64(v110, vorrq_s8(v112, xmmword_18FECDD50)));
          if (vuzp1_s8(*&v110, vuzp1_s16(v116, *&v110)).i32[1])
          {
            v34[v111 + 12] = -1;
          }

          if (vuzp1_s8(*&v110, vuzp1_s16(v116, *&v110)).i8[5])
          {
            v34[v111 + 13] = -1;
          }

          if (vuzp1_s8(*&v110, vuzp1_s16(*&v110, vmovn_s64(vcgeq_u64(v110, vorrq_s8(v112, xmmword_18FECDD40))))).i8[6])
          {
            v34[v111 + 14] = -1;
            v34[v111 + 15] = -1;
          }

          v111 += 16;
        }

        while (((v21 + 15) & 0xFFFFFFFFFFFFFFF0) != v111);
      }

      v34 += v32;
      ++v109;
    }

    while (v25 > v109);
  }

  *(a1 + a2 + 40) = 0;
  return result;
}

uint64_t vt_Copy_422vf_TRC_Tone_Mat_TRC_yuvsf(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4, void *a5, uint64_t *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v49 = a7;
  v50 = a8;
  v56 = a4;
  v57 = a5;
  v51 = a3;
  v58 = *MEMORY[0x1E69E9840];
  v48 = a1;
  v9 = *(a1 + 162);
  v10 = *a2;
  v11 = a2[1];
  v12 = a2[2];
  v13 = a2[3];
  v14 = a2[4];
  v15 = a2[5];
  v16 = *a6;
  v52 = a6[1];
  v53 = v10;
  v18 = a6[2];
  v17 = a6[3];
  v19 = a6[4];
  v54 = a6[5];
  v55 = v16;
  if (v9 == 255)
  {
    v20 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v20)
    {
      v21 = 0;
LABEL_39:
      free(v20);
      return v21;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v9 + 160, a3, a4);
    v20 = (&v47 - v22);
    bzero(&v47 - v22, v23);
  }

  v24 = v18 - 1;
  v25 = v12 - 1;
  if (v19)
  {
    ++v14;
  }

  else
  {
    v25 = v12;
  }

  if (v19)
  {
    v26 = v19 + 1;
  }

  else
  {
    v24 = v18;
    v26 = v19;
  }

  v27 = v25 - (v24 & 1);
  v28 = v24 & 0xFFFFFFFFFFFFFFFELL;
  if (v27 + v14 > v53)
  {
    v27 = v53 - v14;
  }

  if (v28 + v26 > v55)
  {
    v28 = v55 - v26;
  }

  if (v15 + v13 <= v11)
  {
    v29 = v13;
  }

  else
  {
    v29 = v11 - v15;
  }

  if (v54 + v17 <= v52)
  {
    v30 = v17;
  }

  else
  {
    v30 = v52 - v54;
  }

  if (v27 >= v28)
  {
    v31 = v28;
  }

  else
  {
    v31 = v27;
  }

  if (v29 >= v30)
  {
    v32 = v30;
  }

  else
  {
    v32 = v29;
  }

  v33 = v15 + v32 - 1;
  v34 = v31 + v14;
  if (((v31 + v14 + *v56 * v33) > *v57 || (v35 = v51, *(v51 + 8)) && ((v34 + 1 + ((v34 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v56[1] * v33 > v57[1] || *(v51 + 16) && (v34 + v56[2] * v33) > v57[2]) && (fig_log_get_emitter(), v36 = FigSignalErrorAtGM(), v35 = v51, v36))
  {
    v21 = v36;
  }

  else
  {
    *v20 = v9;
    v37 = v52;
    *(v20 + 4) = v53;
    *(v20 + 12) = v11;
    *(v20 + 20) = v31;
    *(v20 + 28) = v32;
    *(v20 + 36) = v14;
    *(v20 + 44) = v15;
    v20[11] = v37;
    v20[12] = v31;
    v20[13] = v32;
    v20[14] = v26;
    v39 = v55;
    v38 = v56;
    v20[7] = v35;
    v20[8] = v38;
    v20[9] = v57;
    v20[10] = v39;
    v41 = v49;
    v40 = v50;
    v20[15] = v54;
    v20[16] = v41;
    v20[17] = v40;
    v20[18] = a9;
    v20[19] = v48;
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_apply_f(v9, global_queue, v20, vt_Copy_422vf_TRC_Tone_Mat_TRC_yuvsf_GCD);
    if (!v9)
    {
      return 0;
    }

    v43 = (v20 + 20);
    v44 = v9;
    while (1)
    {
      v45 = *v43++;
      v21 = v45;
      if (v45)
      {
        break;
      }

      if (!--v44)
      {
        v21 = 0;
        break;
      }
    }
  }

  if (v9 == 255)
  {
    goto LABEL_39;
  }

  return v21;
}

void *vt_Copy_422vf_TRC_Tone_Mat_TRC_yuvsf_GCD(void *result, uint64_t a2, double a3, float a4, float a5)
{
  v10 = result;
  v11 = *(result + 36);
  v12 = *result;
  v13 = *(result + 28) * a2 / v12 + *(result + 44);
  v14 = result[14];
  v16 = result[12];
  v15 = result[13];
  v17 = v15 * a2;
  v18 = v15 * a2 / v12;
  v19 = v18 + result[15];
  v20 = (v15 + v17) / v12 - v18;
  v21 = result[7];
  v22 = result[8];
  v23 = result[16];
  v24 = result[17];
  v25 = v22[2];
  v26 = v21[2];
  v27 = v24[1];
  v28 = v23[1];
  v29 = (v28 + v27 * v19 + v14);
  if (v28)
  {
    v30 = (v28 + v27 * v19 + v14);
  }

  else
  {
    v30 = 0;
  }

  if (v20 >= 1)
  {
    v31 = 0;
    v32 = result[19];
    v33 = v16 & 0xFFFFFFFE;
    v34 = *v22;
    v35 = v22[1];
    v36 = *v24;
    LOWORD(a4) = *(v32 + 140);
    LOWORD(a5) = *(v32 + 142);
    LOWORD(v5) = *(v32 + 144);
    LOWORD(v6) = *(v32 + 146);
    LOWORD(v7) = *(v32 + 148);
    LOWORD(v8) = *(v32 + 150);
    v37 = 8191.0 / *(v32 + 128);
    v182 = LODWORD(a4);
    v38 = LODWORD(a5);
    v180 = v37 * *(v32 + 8);
    v181 = v37 * *v32;
    v178 = v37 * *(v32 + 20);
    v179 = v37 * *(v32 + 16);
    v39 = v37 * *(v32 + 28);
    v40 = v5;
    *&v41 = v6;
    v176 = v6;
    v177 = v39;
    v42 = v7;
    v43 = v8;
    LOWORD(v41) = *(v32 + 152);
    v44 = v41;
    v45 = *(v32 + 36);
    v46 = *(v32 + 40);
    v47 = *(v32 + 44);
    v174 = *(v32 + 52) * 0.5;
    v175 = *(v32 + 48) * 0.5;
    v172 = *(v32 + 60) * 0.5;
    v173 = *(v32 + 56) * 0.5;
    v48 = *(v32 + 72);
    v49 = *(v32 + 68) * 0.5;
    v170 = v49;
    v171 = *(v32 + 64) * 0.5;
    v51 = *(v32 + 76);
    v50 = *(v32 + 80);
    v52 = *(v32 + 84);
    v53 = *(v32 + 88);
    v54 = *(v32 + 92);
    v55 = *(v32 + 96);
    v56 = *(v32 + 100);
    v57 = *(v32 + 104);
    v58 = v32 + 164;
    result = (v32 + 16548);
    v59 = *v23 + v36 * v19;
    v60 = v32 + 32932;
    v61 = (v59 + v14);
    v63 = *v21;
    v62 = v21[1];
    v64 = v62 + v35 * v13 + v11;
    if (!v62)
    {
      v64 = 0;
    }

    v65 = (v63 + v34 * v13 + v11);
    v67 = *(v32 + 108);
    v66 = *(v32 + 112);
    v68 = *(v32 + 116);
    v69 = *(v32 + 120);
    do
    {
      if (v33 >= 1)
      {
        v70 = 0;
        v71 = v65;
        v72 = v30;
        v73 = v61;
        do
        {
          LOBYTE(v49) = *(v64 + v70 + 1);
          v74 = LODWORD(v49) - v38;
          v75 = LODWORD(v180);
          v76 = v180 * v74;
          LOBYTE(v75) = *v71;
          v77 = v181 * (v75 - v182);
          v78 = (v180 * v74) + v77;
          v79 = 8191.0;
          if (v78 <= 8191.0)
          {
            v79 = (v180 * v74) + v77;
            if (v78 < 0.0)
            {
              v79 = 0.0;
            }
          }

          LOBYTE(v78) = *(v64 + v70);
          v80 = v38;
          v81 = LODWORD(v78) - v38;
          v82 = (v178 * v74) + (v81 * v179);
          v83 = 8191.0;
          if ((v77 + v82) <= 8191.0)
          {
            v83 = v77 + v82;
            if ((v77 + v82) < 0.0)
            {
              v83 = 0.0;
            }
          }

          v84 = v177 * v81;
          v85 = (v177 * v81) + v77;
          v86 = 8191.0;
          if (v85 <= 8191.0)
          {
            v86 = v85;
            if (v85 < 0.0)
            {
              v86 = 0.0;
            }
          }

          LOBYTE(v85) = v71[1];
          v87 = v181 * (LODWORD(v85) - v182);
          v88 = v76 + v87;
          v89 = (v76 + v87) <= 8191.0;
          v90 = 8191.0;
          if (v89)
          {
            v90 = v88;
            if (v88 < 0.0)
            {
              v90 = 0.0;
            }
          }

          v91 = v82 + v87;
          v89 = (v82 + v87) <= 8191.0;
          v92 = 8191.0;
          if (v89)
          {
            v92 = v91;
            if (v91 < 0.0)
            {
              v92 = 0.0;
            }
          }

          v93 = v84 + v87;
          v89 = (v84 + v87) <= 8191.0;
          v94 = 8191.0;
          if (v89)
          {
            v94 = v93;
            if (v93 < 0.0)
            {
              v94 = 0.0;
            }
          }

          _H0 = *(v58 + 2 * llroundf(fminf(fmaxf(v79, 0.0), 8191.0)));
          __asm { FCVT            S24, H0 }

          _H0 = *(v58 + 2 * llroundf(fminf(fmaxf(v83, 0.0), 8191.0)));
          __asm { FCVT            S25, H0 }

          _H0 = *(v58 + 2 * llroundf(fminf(fmaxf(v86, 0.0), 8191.0)));
          __asm { FCVT            S26, H0 }

          _H1 = *(v58 + 2 * llroundf(fminf(fmaxf(v90, 0.0), 8191.0)));
          _H27 = *(v58 + 2 * llroundf(fminf(fmaxf(v92, 0.0), 8191.0)));
          _H2 = *(v58 + 2 * llroundf(fminf(fmaxf(v94, 0.0), 8191.0)));
          v108 = (((v66 * _S25) + (v67 * _S24)) + (v68 * _S26)) + (v69 * fmaxf(_S24, fmaxf(_S25, _S26)));
          v109 = 8191.0;
          if (v108 <= 8191.0)
          {
            v109 = v108;
            if (v108 < 0.0)
            {
              v109 = 0.0;
            }
          }

          __asm
          {
            FCVT            S28, H1
            FCVT            S30, H27
            FCVT            S1, H2
          }

          _H0 = *(result + llroundf(v109));
          __asm { FCVT            S0, H0 }

          v115 = _S24 * _S0;
          v116 = _S25 * _S0;
          v117 = _S26 * _S0;
          v118 = (((v66 * _S30) + (v67 * _S28)) + (v68 * _S1)) + (v69 * fmaxf(_S28, fmaxf(_S30, _S1)));
          v119 = 8191.0;
          if (v118 <= 8191.0)
          {
            v119 = v118;
            if (v118 < 0.0)
            {
              v119 = 0.0;
            }
          }

          _H0 = *(result + llroundf(v119));
          __asm { FCVT            S0, H0 }

          v122 = _S28 * _S0;
          v123 = _S30 * _S0;
          v124 = _S1 * _S0;
          _S1 = ((v51 * v116) + (v115 * v48)) + (v117 * v50);
          v126 = ((v53 * v116) + (v115 * v52)) + (v117 * v54);
          _S24 = ((v56 * v116) + (v115 * v55)) + (v117 * v57);
          v128 = (v51 * v123) + (v122 * v48);
          v129 = (v53 * v123) + (v122 * v52);
          _S2 = (v56 * v123) + (v122 * v55);
          _S25 = v128 + (v124 * v50);
          v132 = v129 + (v124 * v54);
          v133 = _S2 + (v124 * v57);
          LOWORD(_S1) = *(v60 + 2 * llroundf(fminf(fmaxf(_S1, 0.0), 8191.0)));
          __asm { FCVT            S1, H1 }

          LOWORD(_S2) = *(v60 + 2 * llroundf(fminf(fmaxf(v126, 0.0), 8191.0)));
          __asm { FCVT            S2, H2 }

          v136 = llroundf(fminf(fmaxf(_S24, 0.0), 8191.0));
          LOWORD(_S24) = *(v60 + 2 * llroundf(fminf(fmaxf(_S25, 0.0), 8191.0)));
          __asm { FCVT            S24, H24 }

          LOWORD(_S25) = *(v60 + 2 * llroundf(fminf(fmaxf(v132, 0.0), 8191.0)));
          __asm { FCVT            S25, H25 }

          v139 = llroundf(fminf(fmaxf(v133, 0.0), 8191.0));
          v140 = (v46 * _S2) + (v45 * _S1);
          v141 = (v46 * _S25) + (v45 * _S24);
          v142 = _S1 + _S24;
          LOWORD(_S24) = *(v60 + 2 * v136);
          v143 = _S2 + _S25;
          LOWORD(_S25) = *(v60 + 2 * v139);
          __asm
          {
            FCVT            S24, H24
            FCVT            S25, H25
          }

          v146 = (v140 + (v47 * _S24)) + v40;
          v147 = v141 + (v47 * _S25);
          v148 = _S24 + _S25;
          v149 = (v176 + (v142 * v175)) + (v143 * v174);
          v150 = (v176 + (v142 * v172)) + (v143 * v171);
          if (v146 < v40)
          {
            v151 = v40;
          }

          else
          {
            v151 = v146;
          }

          v89 = v146 <= v42;
          v152 = v149 + (v148 * v173);
          if (!v89)
          {
            v151 = v42;
          }

          v153 = llroundf(v151);
          if (v152 < v43)
          {
            v154 = v43;
          }

          else
          {
            v154 = v149 + (v148 * v173);
          }

          if (v152 <= v44)
          {
            v155 = v154;
          }

          else
          {
            v155 = v44;
          }

          v156 = llroundf(v155);
          v157 = v150 + (v148 * v170);
          if ((v147 + v40) < v40)
          {
            v158 = v40;
          }

          else
          {
            v158 = v147 + v40;
          }

          *v73 = v153;
          v73[1] = v156;
          if ((v147 + v40) <= v42)
          {
            v159 = v158;
          }

          else
          {
            v159 = v42;
          }

          v73[2] = llroundf(v159);
          v49 = v44;
          if (v157 <= v44)
          {
            v49 = v157;
            if (v157 < v43)
            {
              v49 = v43;
            }
          }

          v73[3] = llroundf(v49);
          v38 = v80;
          if (v72)
          {
            *v72++ = 0;
          }

          v70 += 2;
          v71 += 2;
          v73 += 4;
        }

        while (v70 < v33);
      }

      v65 += v34;
      v64 += v35;
      v61 += v36;
      ++v31;
    }

    while (v31 != v20);
  }

  if (v26 && v30)
  {
    if (v20 >= 1)
    {
      v160 = 0;
      v161 = (v26 + v25 * v13 + v11);
      do
      {
        result = memcpy(v29, v161, v16);
        v161 += v25;
        v29 += v27;
        ++v160;
      }

      while (v20 > v160);
    }
  }

  else if (v30 && v20 >= 1)
  {
    v162 = 0;
    v163 = vdupq_n_s64(v16 - 1);
    do
    {
      if (v16 >= 1)
      {
        v164 = 0;
        do
        {
          v165 = vdupq_n_s64(v164);
          v166 = vmovn_s64(vcgeq_u64(v163, vorrq_s8(v165, xmmword_18FECDDB0)));
          if (vuzp1_s8(vuzp1_s16(v166, *v163.i8), *v163.i8).u8[0])
          {
            v29[v164] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(v166, *&v163), *&v163).i8[1])
          {
            v29[v164 + 1] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(*&v163, vmovn_s64(vcgeq_u64(v163, vorrq_s8(v165, xmmword_18FECDDA0)))), *&v163).i8[2])
          {
            v29[v164 + 2] = -1;
            v29[v164 + 3] = -1;
          }

          v167 = vmovn_s64(vcgeq_u64(v163, vorrq_s8(v165, xmmword_18FECDD90)));
          if (vuzp1_s8(*&v163, vuzp1_s16(v167, *&v163)).i32[1])
          {
            v29[v164 + 4] = -1;
          }

          if (vuzp1_s8(*&v163, vuzp1_s16(v167, *&v163)).i8[5])
          {
            v29[v164 + 5] = -1;
          }

          if (vuzp1_s8(*&v163, vuzp1_s16(*&v163, vmovn_s64(vcgeq_u64(v163, vorrq_s8(v165, xmmword_18FECDD80))))).i8[6])
          {
            v29[v164 + 6] = -1;
            v29[v164 + 7] = -1;
          }

          v168 = vmovn_s64(vcgeq_u64(v163, vorrq_s8(v165, xmmword_18FECDD70)));
          if (vuzp1_s8(vuzp1_s16(v168, *v163.i8), *v163.i8).u8[0])
          {
            v29[v164 + 8] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(v168, *&v163), *&v163).i8[1])
          {
            v29[v164 + 9] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(*&v163, vmovn_s64(vcgeq_u64(v163, vorrq_s8(v165, xmmword_18FECDD60)))), *&v163).i8[2])
          {
            v29[v164 + 10] = -1;
            v29[v164 + 11] = -1;
          }

          v169 = vmovn_s64(vcgeq_u64(v163, vorrq_s8(v165, xmmword_18FECDD50)));
          if (vuzp1_s8(*&v163, vuzp1_s16(v169, *&v163)).i32[1])
          {
            v29[v164 + 12] = -1;
          }

          if (vuzp1_s8(*&v163, vuzp1_s16(v169, *&v163)).i8[5])
          {
            v29[v164 + 13] = -1;
          }

          if (vuzp1_s8(*&v163, vuzp1_s16(*&v163, vmovn_s64(vcgeq_u64(v163, vorrq_s8(v165, xmmword_18FECDD40))))).i8[6])
          {
            v29[v164 + 14] = -1;
            v29[v164 + 15] = -1;
          }

          v164 += 16;
        }

        while (((v16 + 15) & 0xFFFFFFFFFFFFFFF0) != v164);
      }

      v29 += v27;
      ++v162;
    }

    while (v20 > v162);
  }

  *(v10 + a2 + 40) = 0;
  return result;
}

uint64_t vt_Copy_422vf_TRC_Mat_TRC_yuvsf(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4, void *a5, uint64_t *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v49 = a7;
  v50 = a8;
  v56 = a4;
  v57 = a5;
  v51 = a3;
  v58 = *MEMORY[0x1E69E9840];
  v48 = a1;
  v9 = *(a1 + 162);
  v10 = *a2;
  v11 = a2[1];
  v12 = a2[2];
  v13 = a2[3];
  v14 = a2[4];
  v15 = a2[5];
  v16 = *a6;
  v52 = a6[1];
  v53 = v10;
  v18 = a6[2];
  v17 = a6[3];
  v19 = a6[4];
  v54 = a6[5];
  v55 = v16;
  if (v9 == 255)
  {
    v20 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v20)
    {
      v21 = 0;
LABEL_39:
      free(v20);
      return v21;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v9 + 160, a3, a4);
    v20 = (&v47 - v22);
    bzero(&v47 - v22, v23);
  }

  v24 = v18 - 1;
  v25 = v12 - 1;
  if (v19)
  {
    ++v14;
  }

  else
  {
    v25 = v12;
  }

  if (v19)
  {
    v26 = v19 + 1;
  }

  else
  {
    v24 = v18;
    v26 = v19;
  }

  v27 = v25 - (v24 & 1);
  v28 = v24 & 0xFFFFFFFFFFFFFFFELL;
  if (v27 + v14 > v53)
  {
    v27 = v53 - v14;
  }

  if (v28 + v26 > v55)
  {
    v28 = v55 - v26;
  }

  if (v15 + v13 <= v11)
  {
    v29 = v13;
  }

  else
  {
    v29 = v11 - v15;
  }

  if (v54 + v17 <= v52)
  {
    v30 = v17;
  }

  else
  {
    v30 = v52 - v54;
  }

  if (v27 >= v28)
  {
    v31 = v28;
  }

  else
  {
    v31 = v27;
  }

  if (v29 >= v30)
  {
    v32 = v30;
  }

  else
  {
    v32 = v29;
  }

  v33 = v15 + v32 - 1;
  v34 = v31 + v14;
  if (((v31 + v14 + *v56 * v33) > *v57 || (v35 = v51, *(v51 + 8)) && ((v34 + 1 + ((v34 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v56[1] * v33 > v57[1] || *(v51 + 16) && (v34 + v56[2] * v33) > v57[2]) && (fig_log_get_emitter(), v36 = FigSignalErrorAtGM(), v35 = v51, v36))
  {
    v21 = v36;
  }

  else
  {
    *v20 = v9;
    v37 = v52;
    *(v20 + 4) = v53;
    *(v20 + 12) = v11;
    *(v20 + 20) = v31;
    *(v20 + 28) = v32;
    *(v20 + 36) = v14;
    *(v20 + 44) = v15;
    v20[11] = v37;
    v20[12] = v31;
    v20[13] = v32;
    v20[14] = v26;
    v39 = v55;
    v38 = v56;
    v20[7] = v35;
    v20[8] = v38;
    v20[9] = v57;
    v20[10] = v39;
    v41 = v49;
    v40 = v50;
    v20[15] = v54;
    v20[16] = v41;
    v20[17] = v40;
    v20[18] = a9;
    v20[19] = v48;
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_apply_f(v9, global_queue, v20, vt_Copy_422vf_TRC_Mat_TRC_yuvsf_GCD);
    if (!v9)
    {
      return 0;
    }

    v43 = (v20 + 20);
    v44 = v9;
    while (1)
    {
      v45 = *v43++;
      v21 = v45;
      if (v45)
      {
        break;
      }

      if (!--v44)
      {
        v21 = 0;
        break;
      }
    }
  }

  if (v9 == 255)
  {
    goto LABEL_39;
  }

  return v21;
}

void *vt_Copy_422vf_TRC_Mat_TRC_yuvsf_GCD(void *result, uint64_t a2, double a3, double a4, float a5, float a6)
{
  v11 = result;
  v12 = *(result + 36);
  v13 = *result;
  v14 = *(result + 28) * a2 / v13 + *(result + 44);
  v15 = result[14];
  v17 = result[12];
  v16 = result[13];
  v18 = v16 * a2 / v13;
  v19 = v18 + result[15];
  v20 = (v16 + v16 * a2) / v13 - v18;
  v21 = result[7];
  v22 = result[8];
  v23 = result[16];
  v24 = result[17];
  v25 = v22[2];
  v26 = v21[2];
  v27 = v24[1];
  v28 = v23[1];
  v29 = (v28 + v27 * v19 + v15);
  if (v28)
  {
    v30 = (v28 + v27 * v19 + v15);
  }

  else
  {
    v30 = 0;
  }

  if (v20 >= 1)
  {
    v31 = 0;
    v32 = result[19];
    v33 = v17 & 0xFFFFFFFE;
    v34 = *v22;
    v35 = v22[1];
    v36 = *v24;
    LOWORD(a5) = *(v32 + 140);
    LOWORD(a6) = *(v32 + 142);
    LOWORD(v6) = *(v32 + 144);
    LOWORD(v7) = *(v32 + 146);
    LOWORD(v8) = *(v32 + 148);
    LOWORD(v9) = *(v32 + 150);
    v37 = 8191.0 / *(v32 + 128);
    v38 = LODWORD(a5);
    v39 = LODWORD(a6);
    v40 = v37 * *v32;
    v160 = v37 * *(v32 + 8);
    *&v41 = v37 * *(v32 + 20);
    v158 = *&v41;
    v159 = v37 * *(v32 + 16);
    v42 = v37 * *(v32 + 28);
    v43 = v6;
    v44 = v7;
    v45 = v8;
    v46 = v9;
    LOWORD(v41) = *(v32 + 152);
    v47 = v41;
    v48 = *(v32 + 36);
    v49 = *(v32 + 40);
    v50 = *(v32 + 44);
    v156 = *(v32 + 48) * 0.5;
    v157 = v42;
    v154 = *(v32 + 56) * 0.5;
    v155 = *(v32 + 52) * 0.5;
    v153 = *(v32 + 60) * 0.5;
    v51 = *(v32 + 64) * 0.5;
    v52 = *(v32 + 68);
    v53 = *(v32 + 72);
    v54 = v52 * 0.5;
    v56 = *(v32 + 76);
    v55 = *(v32 + 80);
    v57 = *(v32 + 84);
    v58 = *(v32 + 88);
    v59 = *(v32 + 92);
    v60 = *(v32 + 96);
    v61 = *(v32 + 100);
    v62 = *(v32 + 104);
    v63 = v32 + 16548;
    result = (v32 + 164);
    v64 = (*v23 + v36 * v19 + v15);
    v66 = *v21;
    v65 = v21[1];
    v67 = v65 + v35 * v14 + v12;
    if (!v65)
    {
      v67 = 0;
    }

    v68 = (v66 + v34 * v14 + v12);
    do
    {
      if (v33 >= 1)
      {
        v69 = 0;
        v70 = v68;
        v71 = v30;
        v72 = v64;
        do
        {
          LOBYTE(v52) = *(v67 + v69 + 1);
          v73 = LODWORD(v52) - v39;
          v74 = LODWORD(v160);
          v75 = v160 * v73;
          LOBYTE(v74) = *v70;
          v76 = v40 * (v74 - v38);
          v77 = (v160 * v73) + v76;
          v78 = 8191.0;
          if (v77 <= 8191.0)
          {
            v78 = (v160 * v73) + v76;
            if (v77 < 0.0)
            {
              v78 = 0.0;
            }
          }

          LOBYTE(v77) = *(v67 + v69);
          v79 = LODWORD(v77) - v39;
          v80 = (v158 * v73) + (v79 * v159);
          v81 = 8191.0;
          if ((v76 + v80) <= 8191.0)
          {
            v81 = v76 + v80;
            if ((v76 + v80) < 0.0)
            {
              v81 = 0.0;
            }
          }

          v82 = v157 * v79;
          v83 = v82 + v76;
          v84 = (v82 + v76) <= 8191.0;
          v85 = 8191.0;
          if (v84)
          {
            v85 = v83;
            if (v83 < 0.0)
            {
              v85 = 0.0;
            }
          }

          LOBYTE(v83) = v70[1];
          v86 = v40 * (LODWORD(v83) - v38);
          v87 = v75 + v86;
          v88 = 8191.0;
          if (v87 <= 8191.0)
          {
            v88 = v87;
            if (v87 < 0.0)
            {
              v88 = 0.0;
            }
          }

          v89 = v80 + v86;
          v84 = (v80 + v86) <= 8191.0;
          v90 = 8191.0;
          if (v84)
          {
            v90 = v89;
            if (v89 < 0.0)
            {
              v90 = 0.0;
            }
          }

          v91 = v82 + v86;
          v84 = (v82 + v86) <= 8191.0;
          v92 = 8191.0;
          if (v84)
          {
            v92 = v91;
            if (v91 < 0.0)
            {
              v92 = 0.0;
            }
          }

          _H4 = *(result + llroundf(fminf(fmaxf(v78, 0.0), 8191.0)));
          __asm { FCVT            S4, H4 }

          _H5 = *(result + llroundf(fminf(fmaxf(v81, 0.0), 8191.0)));
          __asm { FCVT            S5, H5 }

          _H6 = *(result + llroundf(fminf(fmaxf(v85, 0.0), 8191.0)));
          __asm { FCVT            S6, H6 }

          _H7 = *(result + llroundf(fminf(fmaxf(v88, 0.0), 8191.0)));
          __asm { FCVT            S7, H7 }

          _H24 = *(result + llroundf(fminf(fmaxf(v90, 0.0), 8191.0)));
          __asm { FCVT            S24, H24 }

          v107 = llroundf(fminf(fmaxf(v92, 0.0), 8191.0));
          _S25 = ((v56 * _S5) + (_S4 * v53)) + (_S6 * v55);
          v109 = ((v58 * _S5) + (_S4 * v57)) + (_S6 * v59);
          _S4 = ((v61 * _S5) + (_S4 * v60)) + (_S6 * v62);
          v111 = (v56 * _S24) + (_S7 * v53);
          v112 = (v58 * _S24) + (_S7 * v57);
          v113 = (v61 * _S24) + (_S7 * v60);
          LOWORD(_S24) = *(result + v107);
          __asm { FCVT            S24, H24 }

          _S5 = v111 + (_S24 * v55);
          v116 = v112 + (_S24 * v59);
          v117 = v113 + (_S24 * v62);
          LOWORD(_S24) = *(v63 + 2 * llroundf(fminf(fmaxf(_S25, 0.0), 8191.0)));
          __asm { FCVT            S24, H24 }

          LOWORD(_S25) = *(v63 + 2 * llroundf(fminf(fmaxf(v109, 0.0), 8191.0)));
          __asm { FCVT            S25, H25 }

          v120 = llroundf(fminf(fmaxf(_S4, 0.0), 8191.0));
          LOWORD(_S4) = *(v63 + 2 * llroundf(fminf(fmaxf(_S5, 0.0), 8191.0)));
          __asm { FCVT            S4, H4 }

          LOWORD(_S5) = *(v63 + 2 * llroundf(fminf(fmaxf(v116, 0.0), 8191.0)));
          __asm { FCVT            S5, H5 }

          v123 = llroundf(fminf(fmaxf(v117, 0.0), 8191.0));
          v124 = (v49 * _S25) + (v48 * _S24);
          v125 = (v49 * _S5) + (v48 * _S4);
          v126 = _S24 + _S4;
          LOWORD(_S24) = *(v63 + 2 * v120);
          v127 = _S25 + _S5;
          LOWORD(_S25) = *(v63 + 2 * v123);
          __asm
          {
            FCVT            S24, H24
            FCVT            S25, H25
          }

          v130 = (v124 + (v50 * _S24)) + v43;
          v131 = v125 + (v50 * _S25);
          v132 = _S24 + _S25;
          v133 = (v44 + (v126 * v156)) + (v127 * v155);
          v134 = (v44 + (v126 * v153)) + (v127 * v51);
          if (v130 < v43)
          {
            v135 = v43;
          }

          else
          {
            v135 = v130;
          }

          v84 = v130 <= v45;
          v136 = v133 + (v132 * v154);
          if (!v84)
          {
            v135 = v45;
          }

          v137 = llroundf(v135);
          if (v136 < v46)
          {
            v138 = v46;
          }

          else
          {
            v138 = v133 + (v132 * v154);
          }

          if (v136 > v47)
          {
            v138 = v47;
          }

          v139 = llroundf(v138);
          v52 = v134 + (v132 * v54);
          if ((v131 + v43) < v43)
          {
            v140 = v43;
          }

          else
          {
            v140 = v131 + v43;
          }

          *v72 = v137;
          v72[1] = v139;
          if ((v131 + v43) <= v45)
          {
            v141 = v140;
          }

          else
          {
            v141 = v45;
          }

          v72[2] = llroundf(v141);
          v142 = v47;
          if (v52 <= v47)
          {
            v142 = v52;
            if (v52 < v46)
            {
              v142 = v46;
            }
          }

          v72[3] = llroundf(v142);
          if (v71)
          {
            *v71++ = 0;
          }

          v69 += 2;
          v70 += 2;
          v72 += 4;
        }

        while (v69 < v33);
      }

      v68 += v34;
      v67 += v35;
      v64 += v36;
      ++v31;
    }

    while (v31 != v20);
  }

  if (v26 && v30)
  {
    if (v20 >= 1)
    {
      v143 = 0;
      v144 = (v26 + v25 * v14 + v12);
      do
      {
        result = memcpy(v29, v144, v17);
        v144 += v25;
        v29 += v27;
        ++v143;
      }

      while (v20 > v143);
    }
  }

  else if (v30 && v20 >= 1)
  {
    v145 = 0;
    v146 = vdupq_n_s64(v17 - 1);
    do
    {
      if (v17 >= 1)
      {
        v147 = 0;
        do
        {
          v148 = vdupq_n_s64(v147);
          v149 = vmovn_s64(vcgeq_u64(v146, vorrq_s8(v148, xmmword_18FECDDB0)));
          if (vuzp1_s8(vuzp1_s16(v149, *v146.i8), *v146.i8).u8[0])
          {
            v29[v147] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(v149, *&v146), *&v146).i8[1])
          {
            v29[v147 + 1] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(*&v146, vmovn_s64(vcgeq_u64(v146, vorrq_s8(v148, xmmword_18FECDDA0)))), *&v146).i8[2])
          {
            v29[v147 + 2] = -1;
            v29[v147 + 3] = -1;
          }

          v150 = vmovn_s64(vcgeq_u64(v146, vorrq_s8(v148, xmmword_18FECDD90)));
          if (vuzp1_s8(*&v146, vuzp1_s16(v150, *&v146)).i32[1])
          {
            v29[v147 + 4] = -1;
          }

          if (vuzp1_s8(*&v146, vuzp1_s16(v150, *&v146)).i8[5])
          {
            v29[v147 + 5] = -1;
          }

          if (vuzp1_s8(*&v146, vuzp1_s16(*&v146, vmovn_s64(vcgeq_u64(v146, vorrq_s8(v148, xmmword_18FECDD80))))).i8[6])
          {
            v29[v147 + 6] = -1;
            v29[v147 + 7] = -1;
          }

          v151 = vmovn_s64(vcgeq_u64(v146, vorrq_s8(v148, xmmword_18FECDD70)));
          if (vuzp1_s8(vuzp1_s16(v151, *v146.i8), *v146.i8).u8[0])
          {
            v29[v147 + 8] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(v151, *&v146), *&v146).i8[1])
          {
            v29[v147 + 9] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(*&v146, vmovn_s64(vcgeq_u64(v146, vorrq_s8(v148, xmmword_18FECDD60)))), *&v146).i8[2])
          {
            v29[v147 + 10] = -1;
            v29[v147 + 11] = -1;
          }

          v152 = vmovn_s64(vcgeq_u64(v146, vorrq_s8(v148, xmmword_18FECDD50)));
          if (vuzp1_s8(*&v146, vuzp1_s16(v152, *&v146)).i32[1])
          {
            v29[v147 + 12] = -1;
          }

          if (vuzp1_s8(*&v146, vuzp1_s16(v152, *&v146)).i8[5])
          {
            v29[v147 + 13] = -1;
          }

          if (vuzp1_s8(*&v146, vuzp1_s16(*&v146, vmovn_s64(vcgeq_u64(v146, vorrq_s8(v148, xmmword_18FECDD40))))).i8[6])
          {
            v29[v147 + 14] = -1;
            v29[v147 + 15] = -1;
          }

          v147 += 16;
        }

        while (((v17 + 15) & 0xFFFFFFFFFFFFFFF0) != v147);
      }

      v29 += v27;
      ++v145;
    }

    while (v20 > v145);
  }

  *(v11 + a2 + 40) = 0;
  return result;
}

uint64_t vt_Copy_422vf_rgb_yuvsf(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4, void *a5, uint64_t *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v49 = a7;
  v50 = a8;
  v56 = a4;
  v57 = a5;
  v51 = a3;
  v58 = *MEMORY[0x1E69E9840];
  v48 = a1;
  v9 = *(a1 + 162);
  v10 = *a2;
  v11 = a2[1];
  v12 = a2[2];
  v13 = a2[3];
  v14 = a2[4];
  v15 = a2[5];
  v16 = *a6;
  v52 = a6[1];
  v53 = v10;
  v18 = a6[2];
  v17 = a6[3];
  v19 = a6[4];
  v54 = a6[5];
  v55 = v16;
  if (v9 == 255)
  {
    v20 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v20)
    {
      v21 = 0;
LABEL_39:
      free(v20);
      return v21;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v9 + 160, a3, a4);
    v20 = (&v47 - v22);
    bzero(&v47 - v22, v23);
  }

  v24 = v18 - 1;
  v25 = v12 - 1;
  if (v19)
  {
    ++v14;
  }

  else
  {
    v25 = v12;
  }

  if (v19)
  {
    v26 = v19 + 1;
  }

  else
  {
    v24 = v18;
    v26 = v19;
  }

  v27 = v25 - (v24 & 1);
  v28 = v24 & 0xFFFFFFFFFFFFFFFELL;
  if (v27 + v14 > v53)
  {
    v27 = v53 - v14;
  }

  if (v28 + v26 > v55)
  {
    v28 = v55 - v26;
  }

  if (v15 + v13 <= v11)
  {
    v29 = v13;
  }

  else
  {
    v29 = v11 - v15;
  }

  if (v54 + v17 <= v52)
  {
    v30 = v17;
  }

  else
  {
    v30 = v52 - v54;
  }

  if (v27 >= v28)
  {
    v31 = v28;
  }

  else
  {
    v31 = v27;
  }

  if (v29 >= v30)
  {
    v32 = v30;
  }

  else
  {
    v32 = v29;
  }

  v33 = v15 + v32 - 1;
  v34 = v31 + v14;
  if (((v31 + v14 + *v56 * v33) > *v57 || (v35 = v51, *(v51 + 8)) && ((v34 + 1 + ((v34 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v56[1] * v33 > v57[1] || *(v51 + 16) && (v34 + v56[2] * v33) > v57[2]) && (fig_log_get_emitter(), v36 = FigSignalErrorAtGM(), v35 = v51, v36))
  {
    v21 = v36;
  }

  else
  {
    *v20 = v9;
    v37 = v52;
    *(v20 + 4) = v53;
    *(v20 + 12) = v11;
    *(v20 + 20) = v31;
    *(v20 + 28) = v32;
    *(v20 + 36) = v14;
    *(v20 + 44) = v15;
    v20[11] = v37;
    v20[12] = v31;
    v20[13] = v32;
    v20[14] = v26;
    v39 = v55;
    v38 = v56;
    v20[7] = v35;
    v20[8] = v38;
    v20[9] = v57;
    v20[10] = v39;
    v41 = v49;
    v40 = v50;
    v20[15] = v54;
    v20[16] = v41;
    v20[17] = v40;
    v20[18] = a9;
    v20[19] = v48;
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_apply_f(v9, global_queue, v20, vt_Copy_422vf_rgb_yuvsf_GCD);
    if (!v9)
    {
      return 0;
    }

    v43 = (v20 + 20);
    v44 = v9;
    while (1)
    {
      v45 = *v43++;
      v21 = v45;
      if (v45)
      {
        break;
      }

      if (!--v44)
      {
        v21 = 0;
        break;
      }
    }
  }

  if (v9 == 255)
  {
    goto LABEL_39;
  }

  return v21;
}

void *vt_Copy_422vf_rgb_yuvsf_GCD(void *a1, uint64_t a2, double a3, double a4, double a5, float a6, float a7)
{
  v16 = *(a1 + 36);
  v17 = *a1;
  v18 = *(a1 + 28) * a2 / v17 + *(a1 + 44);
  v19 = a1[14];
  v21 = a1[12];
  v20 = a1[13];
  v22 = v20 * a2;
  v23 = v20 * a2 / v17;
  v24 = v23 + a1[15];
  v25 = (v20 + v22) / v17 - v23;
  result = a1[7];
  v27 = a1[8];
  v28 = a1[16];
  v29 = a1[17];
  v30 = v27[2];
  v31 = result[2];
  v32 = v29[1];
  v33 = v28[1];
  v34 = (v33 + v32 * v24 + v19);
  if (v33)
  {
    v35 = (v33 + v32 * v24 + v19);
  }

  else
  {
    v35 = 0;
  }

  if (v25 >= 1)
  {
    v36 = 0;
    v37 = a1[19];
    v38 = v21 & 0xFFFFFFFE;
    LOWORD(a6) = *(v37 + 140);
    LOWORD(a7) = *(v37 + 142);
    v39 = *v37;
    v40 = *(v37 + 8);
    v41 = *(v37 + 136) / *(v37 + 128);
    v42 = *(v37 + 16);
    v43 = *(v37 + 20);
    v44 = *(v37 + 28);
    LOWORD(v9) = *(v37 + 144);
    LOWORD(v10) = *(v37 + 146);
    LOWORD(v11) = *(v37 + 148);
    LOWORD(v12) = *(v37 + 150);
    LOWORD(v13) = *(v37 + 152);
    v45 = *(v37 + 36);
    v46 = *(v37 + 40);
    v47 = *(v37 + 44);
    v48 = *(v37 + 48);
    v49 = *(v37 + 52);
    v50 = *(v37 + 56);
    v51 = *(v37 + 60);
    v52 = *(v37 + 64);
    v53 = *(v37 + 68);
    v54 = *v27;
    v55 = v27[1];
    v56 = *v29;
    v57 = LODWORD(a6);
    v58 = LODWORD(a7);
    v59 = v41 * v39;
    v60 = v41 * v40;
    v61 = v41 * v42;
    v62 = v41 * v43;
    v63 = v41 * v44;
    v64 = v9;
    v65 = v10;
    v66 = v11;
    v67 = v12;
    v68 = v13;
    v69 = 0.5;
    v70 = v48 * 0.5;
    v71 = v49 * 0.5;
    v72 = v50 * 0.5;
    v73 = v51 * 0.5;
    v74 = v52 * 0.5;
    v75 = v53 * 0.5;
    v76 = (*v28 + v56 * v24 + v19);
    v78 = *result;
    v77 = result[1];
    result = (v77 + v55 * v18 + v16);
    if (!v77)
    {
      result = 0;
    }

    v79 = (v78 + v54 * v18 + v16);
    do
    {
      if (v38 >= 1)
      {
        v80 = 0;
        v81 = v79;
        v82 = v76;
        v83 = v35;
        do
        {
          LOBYTE(v53) = *(result + v80);
          v84 = LODWORD(v53) - v58;
          LOBYTE(v69) = *(result + v80 + 1);
          v85 = LODWORD(v69) - v58;
          v86 = v60 * v85;
          v87 = (v62 * v85) + (v84 * v61);
          v88 = v63 * v84;
          LOBYTE(v7) = *v81;
          v89 = v59 * (LODWORD(v7) - v57);
          LOBYTE(v8) = v81[1];
          v90 = v59 * (LODWORD(v8) - v57);
          v91 = v86 + v89;
          v92 = v89 + v87;
          v93 = v88 + v89;
          v94 = v86 + v90;
          v95 = v87 + v90;
          v96 = v88 + v90;
          v97 = (((v46 * v92) + (v45 * v91)) + (v47 * (v88 + v89))) + v64;
          v7 = (((v46 * v95) + (v45 * v94)) + (v47 * v96)) + v64;
          v98 = v91 + v94;
          v99 = v92 + v95;
          v100 = (v65 + ((v91 + v94) * v70)) + (v99 * v71);
          v101 = v93 + v96;
          v102 = v100 + ((v93 + v96) * v72);
          if (v97 < v64)
          {
            v103 = v64;
          }

          else
          {
            v103 = v97;
          }

          if (v97 > v66)
          {
            v103 = v66;
          }

          *v82 = llroundf(v103);
          if (v102 < v67)
          {
            v104 = v67;
          }

          else
          {
            v104 = v102;
          }

          if (v102 <= v68)
          {
            v105 = v104;
          }

          else
          {
            v105 = v68;
          }

          v82[1] = llroundf(v105);
          v8 = v66;
          if (v7 <= v66)
          {
            v8 = v7;
            if (v7 < v64)
            {
              v8 = v64;
            }
          }

          v53 = ((v65 + (v98 * v73)) + (v99 * v74)) + (v101 * v75);
          v82[2] = llroundf(v8);
          v69 = v68;
          if (v53 <= v68)
          {
            v69 = v53;
            if (v53 < v67)
            {
              v69 = v67;
            }
          }

          v82[3] = llroundf(v69);
          if (v83)
          {
            *v83++ = 0;
          }

          v80 += 2;
          v81 += 2;
          v82 += 4;
        }

        while (v80 < v38);
      }

      v79 += v54;
      result = (result + v55);
      v76 += v56;
      ++v36;
    }

    while (v36 != v25);
  }

  if (v31 && v35)
  {
    if (v25 >= 1)
    {
      v106 = 0;
      v107 = (v31 + v30 * v18 + v16);
      do
      {
        result = memcpy(v34, v107, v21);
        v107 += v30;
        v34 += v32;
        ++v106;
      }

      while (v25 > v106);
    }
  }

  else if (v35 && v25 >= 1)
  {
    v108 = 0;
    v109 = vdupq_n_s64(v21 - 1);
    do
    {
      if (v21 >= 1)
      {
        v110 = 0;
        do
        {
          v111 = vdupq_n_s64(v110);
          v112 = vmovn_s64(vcgeq_u64(v109, vorrq_s8(v111, xmmword_18FECDDB0)));
          if (vuzp1_s8(vuzp1_s16(v112, *v109.i8), *v109.i8).u8[0])
          {
            v34[v110] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(v112, *&v109), *&v109).i8[1])
          {
            v34[v110 + 1] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(*&v109, vmovn_s64(vcgeq_u64(v109, vorrq_s8(v111, xmmword_18FECDDA0)))), *&v109).i8[2])
          {
            v34[v110 + 2] = -1;
            v34[v110 + 3] = -1;
          }

          v113 = vmovn_s64(vcgeq_u64(v109, vorrq_s8(v111, xmmword_18FECDD90)));
          if (vuzp1_s8(*&v109, vuzp1_s16(v113, *&v109)).i32[1])
          {
            v34[v110 + 4] = -1;
          }

          if (vuzp1_s8(*&v109, vuzp1_s16(v113, *&v109)).i8[5])
          {
            v34[v110 + 5] = -1;
          }

          if (vuzp1_s8(*&v109, vuzp1_s16(*&v109, vmovn_s64(vcgeq_u64(v109, vorrq_s8(v111, xmmword_18FECDD80))))).i8[6])
          {
            v34[v110 + 6] = -1;
            v34[v110 + 7] = -1;
          }

          v114 = vmovn_s64(vcgeq_u64(v109, vorrq_s8(v111, xmmword_18FECDD70)));
          if (vuzp1_s8(vuzp1_s16(v114, *v109.i8), *v109.i8).u8[0])
          {
            v34[v110 + 8] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(v114, *&v109), *&v109).i8[1])
          {
            v34[v110 + 9] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(*&v109, vmovn_s64(vcgeq_u64(v109, vorrq_s8(v111, xmmword_18FECDD60)))), *&v109).i8[2])
          {
            v34[v110 + 10] = -1;
            v34[v110 + 11] = -1;
          }

          v115 = vmovn_s64(vcgeq_u64(v109, vorrq_s8(v111, xmmword_18FECDD50)));
          if (vuzp1_s8(*&v109, vuzp1_s16(v115, *&v109)).i32[1])
          {
            v34[v110 + 12] = -1;
          }

          if (vuzp1_s8(*&v109, vuzp1_s16(v115, *&v109)).i8[5])
          {
            v34[v110 + 13] = -1;
          }

          if (vuzp1_s8(*&v109, vuzp1_s16(*&v109, vmovn_s64(vcgeq_u64(v109, vorrq_s8(v111, xmmword_18FECDD40))))).i8[6])
          {
            v34[v110 + 14] = -1;
            v34[v110 + 15] = -1;
          }

          v110 += 16;
        }

        while (((v21 + 15) & 0xFFFFFFFFFFFFFFF0) != v110);
      }

      v34 += v32;
      ++v108;
    }

    while (v25 > v108);
  }

  *(a1 + a2 + 40) = 0;
  return result;
}

uint64_t vt_Copy_422vf_TRC_Tone_Mat_TRC_xf422_neon_fp16(uint64_t a1, uint64_t *a2, uint64_t a3, unint64_t *a4, unint64_t *a5, uint64_t *a6, uint64_t a7, void *a8, void *a9)
{
  v66 = a7;
  v67 = a3;
  v75 = a5;
  v68 = a4;
  v76 = *MEMORY[0x1E69E9840];
  v11 = *(a1 + 162);
  v13 = *a2;
  v12 = a2[1];
  v14 = a2[2];
  v65 = a2[3];
  v15 = a2[4];
  v70 = a2[5];
  v71 = v12;
  v16 = *a6;
  v69 = a6[1];
  v17 = a6[2];
  v18 = a6[3];
  v20 = a6[4];
  v19 = a6[5];
  v73 = v16;
  v74 = v19;
  v72 = v13;
  v22 = v15 + v14 != v13 || v20 + v17 != v16;
  if (v11 == 255)
  {
    v23 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v23)
    {
      v24 = 0;
LABEL_68:
      free(v23);
      return v24;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v11 + 160, a3, a4);
    v23 = (&v62 - v25);
    bzero(&v62 - v25, v26);
  }

  v64 = a1;
  v27 = a9;
  v28 = v17 - 1;
  v29 = v14 - 1;
  if (v20)
  {
    v30 = v15 + 1;
  }

  else
  {
    v29 = v14;
    v30 = v15;
  }

  if (v20)
  {
    v31 = v20 + 1;
  }

  else
  {
    v28 = v17;
    v31 = v20;
  }

  if (v28)
  {
    v32 = v68;
    if (v22 || (v33 = v29 + 1 + v30, v33 > *v68) || ((v33 + (v33 >> 63)) & 0xFFFFFFFFFFFFFFFELL) > v68[1] || (v34 = v68[2], v33 > v34) && v34 || (v35 = v28 + 1 + v31, v36 = 2 * v35, 2 * v35 > *a8) || ((2 * (v35 + (v35 >> 63))) & 0xFFFFFFFFFFFFFFFCLL) > a8[1] || (v37 = a8[2], v36 > v37) && v37)
    {
      --v28;
      --v29;
    }

    else
    {
      ++v72;
      ++v73;
      ++v29;
      ++v28;
    }
  }

  else
  {
    v32 = v68;
  }

  if (v29 + v30 > v72)
  {
    v29 = v72 - v30;
  }

  if (v28 + v31 > v73)
  {
    v28 = v73 - v31;
  }

  if (v70 + v65 <= v71)
  {
    v38 = v65;
  }

  else
  {
    v38 = v71 - v70;
  }

  if (v74 + v18 <= v69)
  {
    v39 = v18;
  }

  else
  {
    v39 = v69 - v74;
  }

  if (v29 >= v28)
  {
    v40 = v28;
  }

  else
  {
    v40 = v29;
  }

  if (v38 >= v39)
  {
    v41 = v39;
  }

  else
  {
    v41 = v38;
  }

  v42 = v70 + v41 - 1;
  v43 = v40 + v30;
  v44 = v40 + v30 + *v32 * v42;
  v45 = *v75;
  v46 = v66;
  v63 = v30;
  if (v44 > v45)
  {
    v47 = v11;
    v48 = v31;
    v49 = a8;
    v50 = a9;
    goto LABEL_61;
  }

  if (*(v67 + 8) && ((v43 + 1 + ((v43 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v32[1] * v42 > v75[1])
  {
    v47 = v11;
    v48 = v31;
    v49 = a8;
    v50 = a9;
    goto LABEL_61;
  }

  if (*(v67 + 16) && v43 + v32[2] * v42 > v75[2])
  {
    v47 = v11;
    v48 = v31;
    v49 = a8;
    v50 = a9;
    goto LABEL_61;
  }

  v51 = v74 + v41 - 1;
  v52 = v40 + v31;
  if ((*a8 * v51 + 2 * (v40 + v31)) > *a9)
  {
    v47 = v11;
    v48 = v31;
    v49 = a8;
    v50 = a9;
    goto LABEL_61;
  }

  if (*(v66 + 8) && a8[1] * v51 + 4 * ((v52 + 1 + ((v52 + 1) >> 63)) >> 1) > a9[1])
  {
    v47 = v11;
    v48 = v31;
    v49 = a8;
    v50 = a9;
    goto LABEL_61;
  }

  if (*(v66 + 16) && (2 * v52 + a8[2] * v51) > a9[2])
  {
    v47 = v11;
    v48 = v31;
    v49 = a8;
    v50 = a9;
LABEL_61:
    fig_log_get_emitter();
    v24 = FigSignalErrorAtGM();
    v32 = v68;
    v27 = v50;
    a8 = v49;
    v31 = v48;
    v11 = v47;
    v30 = v63;
    if (v24)
    {
      goto LABEL_67;
    }
  }

  *v23 = v11;
  v53 = v71;
  *(v23 + 4) = v72;
  *(v23 + 12) = v53;
  *(v23 + 20) = v40;
  *(v23 + 28) = v41;
  *(v23 + 36) = v30;
  v54 = v69;
  *(v23 + 44) = v70;
  v23[11] = v54;
  v23[12] = v40;
  v23[13] = v41;
  v23[14] = v31;
  v23[7] = v67;
  v23[8] = v32;
  v55 = v73;
  v56 = v74;
  v23[9] = v75;
  v23[10] = v55;
  v23[15] = v56;
  v23[16] = v46;
  v23[17] = a8;
  v23[18] = v27;
  v23[19] = v64;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v11, global_queue, v23, vt_Copy_422vf_TRC_Tone_Mat_TRC_xf422_neon_fp16_GCD);
  if (!v11)
  {
    return 0;
  }

  v58 = (v23 + 20);
  v59 = v11;
  while (1)
  {
    v60 = *v58++;
    v24 = v60;
    if (v60)
    {
      break;
    }

    if (!--v59)
    {
      v24 = 0;
      break;
    }
  }

LABEL_67:
  if (v11 == 255)
  {
    goto LABEL_68;
  }

  return v24;
}

uint64_t vt_Copy_422vf_TRC_Tone_Mat_TRC_xf422_neon_fp16_GCD(uint64_t result, uint64_t a2, double a3, double a4, float32x4_t a5, double _D3)
{
  v9 = *result;
  v236 = *(result + 28) * a2 / v9 + *(result + 44);
  v237 = *(result + 36);
  v10 = *(result + 112);
  v12 = *(result + 96);
  v11 = *(result + 104);
  v242 = result;
  v13 = v11 * a2 / v9;
  v14 = v13 + *(result + 120);
  v15 = (v11 + v11 * a2) / v9 - v13;
  v17 = *(result + 56);
  v16 = *(result + 64);
  v18 = *(result + 128);
  v19 = *(result + 136);
  v235 = v16[2];
  v239 = v17[2];
  v240 = v19[2];
  v238 = v18[2];
  v20 = (v238 + v240 * v14 + 2 * v10);
  if (v15 >= 1)
  {
    v21 = 0;
    v22 = *(result + 152);
    v23 = v12 - 7;
    v24 = *v16;
    result = v16[1];
    v25 = *v19;
    v26 = v19[1];
    v27 = v22[17].u16[2];
    v28 = v22[17].u16[3];
    v29.i32[0] = v22[3].i32[1];
    v30 = v22[18].u16[0];
    v31 = v22[18].u16[1];
    v32 = v22[18].u16[2];
    v33 = v22[18].u16[3];
    v34 = v22[19].u16[0];
    _S11 = v22[4].f32[1];
    _S4 = v22[5].i32[0];
    _S5 = v22[5].i32[1];
    v37.i32[0] = v22[6].i32[0];
    a5.f32[0] = 8191.0 / v22[16].u32[0];
    v295 = v27;
    v7.i32[0] = v22[6].i32[1];
    v39.i32[0] = v22[7].i32[0];
    v40 = v28;
    *&_D3 = a5.f32[0] * v22->f32[0];
    v267 = v30;
    v293 = v31;
    v294 = *&_D3;
    v286 = v32;
    v284 = v33;
    v285 = v34;
    __asm { FCVT            H7, S3 }

    *&_D3 = v27;
    v46 = &v22[2068] + 4;
    v47 = v12 & 0xFFFFFFFE;
    v48 = vdupq_lane_s16(*&_D3, 0);
    v49 = -v28;
    v29.i32[1] = v22[1].i32[0];
    *v8.f32 = vmul_n_f32(v29, a5.f32[0]);
    v50 = &v22[20] + 4;
    v51 = &v22[4116] + 4;
    *a5.f32 = vmul_n_f32(v22[2], a5.f32[0]);
    _Q1 = vdupq_lane_s32(vcvt_f16_f32(a5), 0);
    v248 = _Q1;
    v249 = vdupq_lane_s32(vcvt_f16_f32(v8), 0);
    v52 = vmulq_n_f16(v249, v49);
    v53 = vmulq_n_f16(_Q1, v49);
    __asm { FCVT            H1, S11 }

    v281 = *_Q1.i16;
    v37.i32[1] = v22[7].i32[1];
    *v6.f32 = vmul_f32(v37, 0x3F0000003F000000);
    v247 = vdupq_lane_s32(vcvt_f16_f32(v6), 0);
    v7.i32[1] = v22[8].i32[0];
    *v7.f32 = vmul_f32(*v7.f32, 0x3F0000003F000000);
    v246 = vdupq_lane_s32(vcvt_f16_f32(v7), 0);
    v39.i32[1] = v22[8].i32[1];
    *_Q1.i8 = vmul_f32(v39, 0x3F0000003F000000);
    v55 = vdupq_lane_s32(vcvt_f16_f32(_Q1), 0);
    v278 = v55;
    *v55.i16 = v30;
    v56 = vdupq_lane_s16(*v55.i8, 0);
    *v55.i16 = v31;
    v57 = vdupq_lane_s16(*v55.i8, 0);
    v245 = v57;
    *v57.i16 = v32;
    v58 = vdupq_lane_s16(*v57.i8, 0);
    *v57.i16 = v33;
    v59 = vdupq_lane_s16(*v57.i8, 0);
    v244 = v59;
    *v59.i16 = v34;
    v277 = vdupq_lane_s16(*v59.i8, 0);
    v60 = v22[16].u8[4];
    if (v60 >= 0x11)
    {
      v61 = 0;
    }

    else
    {
      v61 = 16 - v60;
    }

    v62 = *v18;
    v63 = v18[1];
    v252 = v26;
    v253 = v25;
    v64 = v63 + v26 * v14 + 2 * v10;
    if (!v63)
    {
      v64 = 0;
    }

    v65 = v62 + v25 * v14 + 2 * v10;
    v68 = v17;
    v67 = *v17;
    v66 = v68[1];
    if (v66)
    {
      v69 = (v66 + result * v236 + v237);
    }

    else
    {
      v69 = 0;
    }

    v70 = (v67 + v24 * v236 + v237);
    v71 = v61;
    v243 = v12 & 0xFFFFFFF8;
    _S22 = v22[13].f32[1];
    v291 = v22[5].f32[1];
    v292 = v22[5].f32[0];
    __asm
    {
      FCVT            H4, S4
      FCVT            H8, S5
      FCVT            H15, S22
    }

    v289 = v22[14].f32[1];
    v290 = v22[14].f32[0];
    __asm
    {
      FCVT            H12, S12
      FCVT            H14, S14
    }

    v287 = v22[15].f32[0];
    __asm { FCVT            H5, S5 }

    v276 = v22[9].f32[0];
    __asm { FCVT            H0, S0 }

    v264 = _H0;
    v265 = _H5;
    v275 = v22[9].f32[1];
    __asm { FCVT            H0, S18 }

    v263 = _H0;
    v274 = v22[10].f32[0];
    __asm { FCVT            H0, S10 }

    v262 = _H0;
    v82 = _H4;
    v273 = v22[10].f32[1];
    __asm { FCVT            H0, S28 }

    v261 = _H0;
    v272 = v22[11].f32[0];
    __asm { FCVT            H0, S27 }

    v260 = _H0;
    v271 = v22[11].f32[1];
    __asm { FCVT            H0, S30 }

    v259 = _H0;
    v270 = v22[12].f32[0];
    __asm { FCVT            H0, S29 }

    v258 = _H0;
    v269 = v22[12].f32[1];
    __asm { FCVT            H0, S31 }

    v257 = _H0;
    v268 = v22[13].f32[0];
    __asm { FCVT            H0, S21 }

    v256 = _H0;
    v89 = vdupq_n_s16(v61);
    v282 = v8.f32[0];
    v90 = a5.i64[0];
    v255 = v8.f32[1];
    v280 = v7.f32[0];
    v91.i32[0] = _Q1.i32[1];
    v254 = *&_Q1.i32[1];
    v279 = *_Q1.i32;
    v92.i64[0] = 0x9000900090009000;
    v92.i64[1] = 0x9000900090009000;
    v288 = v52;
    v283 = v53;
    v250 = result;
    v251 = v12;
    v266 = _H14;
    do
    {
      if (v12 < 8)
      {
        v150 = 0;
        v97 = v64;
        v96 = v65;
        v149 = v69;
        v95 = v70;
      }

      else
      {
        v93 = v24;
        v94 = 0;
        v95 = v70;
        v96 = v65;
        v97 = v64;
        do
        {
          v98 = *&v69[v94];
          *v99.i8 = vzip1_s8(v98, 0);
          v99.u64[1] = vzip2_s8(v98, 0);
          v100 = vcvtq_f16_u16(v99);
          v101 = vmlaq_f16(v52, v249, v100);
          v102 = vmlaq_f16(v53, v248, v100);
          v103 = vuzp1q_s16(v102, v100);
          *v103.i8 = vadd_f16(*v103.i8, *&vuzp2q_s16(v102, v103));
          v104 = *v95++;
          *v105.i8 = vzip1_s8(v104, 0);
          v106 = vzip1q_s16(v103, v103);
          v105.u64[1] = vzip2_s8(v104, 0);
          v107 = vsubq_f16(vcvtq_f16_u16(v105), v48);
          v108 = vmlaq_n_f16(vtrn1q_s16(v101, v101), v107, _H7);
          v109 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vtrn2q_s16(v101, v101), v107, _H7), 0), v92));
          v110.i16[0] = *&v50[2 * v109.u16[0]];
          v110.i16[1] = *&v50[2 * v109.u16[1]];
          v110.i16[2] = *&v50[2 * v109.u16[2]];
          v111 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(v106, v107, _H7), 0), v92));
          v112.i16[0] = *&v50[2 * v111.u16[0]];
          v113 = &v50[2 * v111.u16[3]];
          v114 = &v50[2 * v111.u16[4]];
          v110.i16[3] = *&v50[2 * v109.u16[3]];
          v115 = &v50[2 * v111.u16[5]];
          v116 = &v50[2 * v111.u16[6]];
          v110.i16[4] = *&v50[2 * v109.u16[4]];
          v117 = &v50[2 * v111.u16[7]];
          v112.i16[1] = *&v50[2 * v111.u16[1]];
          v112.i16[2] = *&v50[2 * v111.u16[2]];
          v118 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v108, 0), v92));
          v110.i16[5] = *&v50[2 * v109.u16[5]];
          v108.i16[0] = *&v50[2 * v118.u16[0]];
          v112.i16[3] = *v113;
          v110.i16[6] = *&v50[2 * v109.u16[6]];
          v112.i16[4] = *v114;
          v110.i16[7] = *&v50[2 * v109.u16[7]];
          v112.i16[5] = *v115;
          v108.i16[1] = *&v50[2 * v118.u16[1]];
          v112.i16[6] = *v116;
          v108.i16[2] = *&v50[2 * v118.u16[2]];
          v108.i16[3] = *&v50[2 * v118.u16[3]];
          v112.i16[7] = *v117;
          v108.i16[4] = *&v50[2 * v118.u16[4]];
          v108.i16[5] = *&v50[2 * v118.u16[5]];
          v108.i16[6] = *&v50[2 * v118.u16[6]];
          v108.i16[7] = *&v50[2 * v118.u16[7]];
          v119 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v110, _H15), v112, _H12), v108, _H14), vmaxq_f16(vmaxq_f16(v110, v112), v108), v265), 0), v92));
          v109.i16[0] = *&v46[2 * v119.u16[0]];
          v109.i16[1] = *&v46[2 * v119.u16[1]];
          v109.i16[2] = *&v46[2 * v119.u16[2]];
          v109.i16[3] = *&v46[2 * v119.u16[3]];
          v109.i16[4] = *&v46[2 * v119.u16[4]];
          v109.i16[5] = *&v46[2 * v119.u16[5]];
          v109.i16[6] = *&v46[2 * v119.u16[6]];
          v109.i16[7] = *&v46[2 * v119.u16[7]];
          v120 = vmulq_f16(v110, v109);
          v121 = vmulq_f16(v112, v109);
          v122 = vmulq_f16(v108, v109);
          v123 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v120, v261), v121, v260), v122, v259);
          v124 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v122, v256), v121, v257), v120, v258);
          v125 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v120, v264), v121, v263), v122, v262), 0), v92));
          v110.i16[0] = *&v51[2 * v125.u16[0]];
          v126 = &v51[2 * v125.u16[1]];
          v127 = &v51[2 * v125.u16[2]];
          v128 = &v51[2 * v125.u16[3]];
          v129 = &v51[2 * v125.u16[4]];
          v130 = &v51[2 * v125.u16[5]];
          LOWORD(v113) = v125.i16[7];
          v131 = &v51[2 * v125.u16[6]];
          v132 = vminq_f16(vmaxq_f16(v123, 0), v92);
          v133 = vcvtq_u16_f16(v132);
          v134 = &v51[2 * v113];
          v132.i16[0] = *&v51[2 * v133.u16[0]];
          v110.i16[1] = *v126;
          v135 = &v51[2 * v133.u16[4]];
          v110.i16[2] = *v127;
          v132.i16[1] = *&v51[2 * v133.u16[1]];
          v132.i16[2] = *&v51[2 * v133.u16[2]];
          v136 = &v51[2 * v133.u16[5]];
          v137 = &v51[2 * v133.u16[6]];
          v110.i16[3] = *v128;
          v132.i16[3] = *&v51[2 * v133.u16[3]];
          v110.i16[4] = *v129;
          v138 = &v51[2 * v133.u16[7]];
          v139 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v124, 0), v92));
          v132.i16[4] = *v135;
          v124.i16[0] = *&v51[2 * v139.u16[0]];
          v110.i16[5] = *v130;
          v132.i16[5] = *v136;
          v110.i16[6] = *v131;
          v132.i16[6] = *v137;
          v124.i16[1] = *&v51[2 * v139.u16[1]];
          v140 = v110;
          v124.i16[2] = *&v51[2 * v139.u16[2]];
          v140.i16[7] = *v134;
          v124.i16[3] = *&v51[2 * v139.u16[3]];
          v124.i16[4] = *&v51[2 * v139.u16[4]];
          v141 = v132;
          v124.i16[5] = *&v51[2 * v139.u16[5]];
          v124.i16[6] = *&v51[2 * v139.u16[6]];
          v141.i16[7] = *v138;
          v142 = vuzp1q_s16(v110, v132);
          v52 = v288;
          v143 = &v51[2 * v139.u16[7]];
          v144 = vmlaq_n_f16(vmlaq_n_f16(v56, v140, v281), v141, v82);
          v145 = vuzp2q_s16(v140, v141);
          v146 = v124;
          v146.i16[7] = *v143;
          *v96++ = vshlq_u16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(v144, v146, _H8), v56), v58)), v89);
          v147 = vaddq_f16(v142, v145);
          v148 = vmaxq_f16(vmlaq_f16(vmlaq_f16(vmlaq_f16(v245, v247, vzip1q_s16(v147, v147)), v246, vzip2q_s16(v147, v147)), v278, vaddq_f16(vtrn1q_s16(v124, v124), vtrn2q_s16(v146, v146))), v244);
          v53 = v283;
          v91 = vshlq_u16(vcvtq_u16_f16(vminq_f16(v148, v277)), v89);
          *v97++ = v91;
          v94 += 8;
        }

        while (v94 < v23);
        v149 = &v69[v94];
        v150 = v243;
        v24 = v93;
        result = v250;
        v12 = v251;
      }

      for (; v150 < v47; _H14 = v266)
      {
        v151 = v48;
        v91.i8[0] = v149[1];
        v152 = v91.u32[0] - v40;
        v153 = LODWORD(v255);
        v154 = v255 * v152;
        LOBYTE(v153) = v95->i8[0];
        v155 = LODWORD(v295);
        v156 = v294 * (v153 - v295);
        v157 = (v255 * v152) + v156;
        v158 = 8191.0;
        if (v157 <= 8191.0)
        {
          v158 = (v255 * v152) + v156;
          if (v157 < 0.0)
          {
            v158 = 0.0;
          }
        }

        LOBYTE(v155) = *v149;
        v159 = v40;
        v160 = v155 - v40;
        v161 = (*(&v90 + 1) * v152) + (v160 * *&v90);
        v162 = 8191.0;
        if ((v156 + v161) <= 8191.0)
        {
          v162 = v156 + v161;
          if ((v156 + v161) < 0.0)
          {
            v162 = 0.0;
          }
        }

        v163 = LODWORD(v282);
        v164 = v282 * v160;
        v165 = v164 + v156;
        v166 = (v164 + v156) <= 8191.0;
        v167 = 8191.0;
        if (v166)
        {
          v167 = v165;
          if (v165 < 0.0)
          {
            v167 = 0.0;
          }
        }

        LOBYTE(v163) = v95->i8[1];
        v168 = v294 * (v163 - v295);
        v169 = v154 + v168;
        v170 = 8191.0;
        if (v169 <= 8191.0)
        {
          v170 = v169;
          if (v169 < 0.0)
          {
            v170 = 0.0;
          }
        }

        v171 = v161 + v168;
        v172 = 8191.0;
        if (v171 <= 8191.0)
        {
          v172 = v171;
          if (v171 < 0.0)
          {
            v172 = 0.0;
          }
        }

        v173 = v164 + v168;
        v174 = 8191.0;
        if (v173 <= 8191.0)
        {
          v174 = v173;
          if (v173 < 0.0)
          {
            v174 = 0.0;
          }
        }

        _H0 = *&v50[2 * llroundf(fminf(fmaxf(v158, 0.0), 8191.0))];
        __asm { FCVT            S0, H0 }

        _H4 = *&v50[2 * llroundf(fminf(fmaxf(v162, 0.0), 8191.0))];
        v178 = llroundf(fminf(fmaxf(v167, 0.0), 8191.0));
        __asm { FCVT            S1, H4 }

        _H4 = *&v50[2 * v178];
        __asm { FCVT            S18, H4 }

        v182 = (((v290 * _S1) + (_S22 * _S0)) + (v289 * _S18)) + (v287 * fmaxf(_S0, fmaxf(_S1, _S18)));
        v183 = 8191.0;
        if (v182 <= 8191.0)
        {
          v183 = v182;
          if (v182 < 0.0)
          {
            v183 = 0.0;
          }
        }

        v184 = _S11;
        _H4 = *&v50[2 * llroundf(fminf(fmaxf(v170, 0.0), 8191.0))];
        __asm { FCVT            S5, H4 }

        _H3 = *&v50[2 * llroundf(fminf(fmaxf(v172, 0.0), 8191.0))];
        __asm { FCVT            S3, H3 }

        _H2 = *&v50[2 * llroundf(fminf(fmaxf(v174, 0.0), 8191.0))];
        __asm { FCVT            S2, H2 }

        _H6 = *&v46[2 * llroundf(v183)];
        v192 = (((v290 * _S3) + (_S22 * _S5)) + (v289 * _S2)) + (v287 * fmaxf(_S5, fmaxf(_S3, _S2)));
        v193 = 8191.0;
        if (v192 <= 8191.0)
        {
          v193 = v192;
          if (v192 < 0.0)
          {
            v193 = 0.0;
          }
        }

        __asm { FCVT            S6, H6 }

        _S0 = _S0 * _S6;
        _S1 = _S1 * _S6;
        v197 = _S18 * _S6;
        _H4 = *&v46[2 * llroundf(v193)];
        __asm { FCVT            S4, H4 }

        v200 = _S5 * _S4;
        v201 = _S3 * _S4;
        _S2 = _S2 * _S4;
        v203 = ((v275 * _S1) + (_S0 * v276)) + (v197 * v274);
        v204 = ((v272 * _S1) + (_S0 * v273)) + (v197 * v271);
        v205 = ((v269 * _S1) + (_S0 * v270)) + (v197 * v268);
        v206 = ((v275 * v201) + (v200 * v276)) + (_S2 * v274);
        v207 = ((v272 * v201) + (v200 * v273)) + (_S2 * v271);
        v208 = llroundf(fminf(fmaxf(v203, 0.0), 8191.0));
        v209 = ((v269 * v201) + (v200 * v270)) + (_S2 * v268);
        LOWORD(_S0) = *&v51[2 * v208];
        __asm { FCVT            S0, H0 }

        LOWORD(_S1) = *&v51[2 * llroundf(fminf(fmaxf(v204, 0.0), 8191.0))];
        __asm { FCVT            S1, H1 }

        LOWORD(_S2) = *&v51[2 * llroundf(fminf(fmaxf(v205, 0.0), 8191.0))];
        __asm { FCVT            S3, H2 }

        _H2 = *&v51[2 * llroundf(fminf(fmaxf(v206, 0.0), 8191.0))];
        _H5 = *&v51[2 * llroundf(fminf(fmaxf(v207, 0.0), 8191.0))];
        _H18 = *&v51[2 * llroundf(fminf(fmaxf(v209, 0.0), 8191.0))];
        _S11 = v184;
        v216 = (((v292 * _S1) + (v184 * _S0)) + (v291 * _S3)) + v267;
        v217 = v286;
        if (v216 <= v286)
        {
          v217 = (((v292 * _S1) + (v184 * _S0)) + (v291 * _S3)) + v267;
          if (v216 < v267)
          {
            v217 = v267;
          }
        }

        __asm
        {
          FCVT            S6, H2
          FCVT            S5, H5
          FCVT            S2, H18
        }

        v221 = (((v292 * _S5) + (v184 * _S6)) + (v291 * _S2)) + v267;
        v96->i16[0] = llroundf(v217) << v71;
        v222 = v286;
        if (v221 <= v286)
        {
          v222 = (((v292 * _S5) + (v184 * _S6)) + (v291 * _S2)) + v267;
          if (v221 < v267)
          {
            v222 = v267;
          }
        }

        v96->i16[1] = llroundf(v222) << v71;
        v223 = _S0 + _S6;
        v224 = _S1 + _S5;
        v225 = _S3 + _S2;
        v226 = ((v293 + (v223 * v6.f32[0])) + (v224 * v280)) + (v225 * v279);
        v227 = v285;
        v92.i64[0] = 0x9000900090009000;
        v92.i64[1] = 0x9000900090009000;
        if (v226 <= v285)
        {
          v227 = ((v293 + (v223 * v6.f32[0])) + (v224 * v280)) + (v225 * v279);
          if (v226 < v284)
          {
            v227 = v284;
          }
        }

        *v91.i32 = ((v293 + (v223 * v6.f32[1])) + (v224 * v7.f32[1])) + (v225 * v254);
        v97->i16[0] = llroundf(v227) << v71;
        v228 = v285;
        v40 = v159;
        v52 = v288;
        if (*v91.i32 <= v285)
        {
          v228 = *v91.i32;
          if (*v91.i32 < v284)
          {
            v228 = v284;
          }
        }

        v97->i16[1] = llroundf(v228) << v71;
        v97 = (v97 + 4);
        v150 += 2;
        v149 += 2;
        v95 = (v95 + 2);
        v96 = (v96 + 4);
        v48 = v151;
      }

      v70 = (v70 + v24);
      v69 += result;
      v65 += v253;
      v64 += v252;
      ++v21;
      v53 = v283;
    }

    while (v21 != v15);
  }

  if (v239 && v238)
  {
    if (v15 >= 1)
    {
      v229 = 0;
      v230 = (v239 + v235 * v236 + v237);
      do
      {
        if (v12 >= 1)
        {
          v231 = v12;
          v232 = v20;
          v233 = v230;
          do
          {
            v234 = *v233++;
            *v232++ = v234 | (v234 << 8);
            --v231;
          }

          while (v231);
        }

        v230 += v235;
        v20 += v240;
        ++v229;
      }

      while (v229 != v15);
    }
  }

  else if (v238 && v15 >= 1)
  {
    do
    {
      if (v12 >= 1)
      {
        result = memset(v20, 255, 2 * v12);
      }

      v20 += v240;
      --v15;
    }

    while (v15);
  }

  *(v242 + a2 + 40) = 0;
  return result;
}

uint64_t vt_Copy_422vf_TRC_Tone_Mat_TRC_xf422(uint64_t a1, uint64_t *a2, uint64_t a3, unint64_t *a4, unint64_t *a5, uint64_t *a6, uint64_t a7, void *a8, void *a9)
{
  v66 = a7;
  v67 = a3;
  v75 = a5;
  v68 = a4;
  v76 = *MEMORY[0x1E69E9840];
  v11 = *(a1 + 162);
  v13 = *a2;
  v12 = a2[1];
  v14 = a2[2];
  v65 = a2[3];
  v15 = a2[4];
  v70 = a2[5];
  v71 = v12;
  v16 = *a6;
  v69 = a6[1];
  v17 = a6[2];
  v18 = a6[3];
  v20 = a6[4];
  v19 = a6[5];
  v73 = v16;
  v74 = v19;
  v72 = v13;
  v22 = v15 + v14 != v13 || v20 + v17 != v16;
  if (v11 == 255)
  {
    v23 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v23)
    {
      v24 = 0;
LABEL_68:
      free(v23);
      return v24;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v11 + 160, a3, a4);
    v23 = (&v62 - v25);
    bzero(&v62 - v25, v26);
  }

  v64 = a1;
  v27 = a9;
  v28 = v17 - 1;
  v29 = v14 - 1;
  if (v20)
  {
    v30 = v15 + 1;
  }

  else
  {
    v29 = v14;
    v30 = v15;
  }

  if (v20)
  {
    v31 = v20 + 1;
  }

  else
  {
    v28 = v17;
    v31 = v20;
  }

  if (v28)
  {
    v32 = v68;
    if (v22 || (v33 = v29 + 1 + v30, v33 > *v68) || ((v33 + (v33 >> 63)) & 0xFFFFFFFFFFFFFFFELL) > v68[1] || (v34 = v68[2], v33 > v34) && v34 || (v35 = v28 + 1 + v31, v36 = 2 * v35, 2 * v35 > *a8) || ((2 * (v35 + (v35 >> 63))) & 0xFFFFFFFFFFFFFFFCLL) > a8[1] || (v37 = a8[2], v36 > v37) && v37)
    {
      --v28;
      --v29;
    }

    else
    {
      ++v72;
      ++v73;
      ++v29;
      ++v28;
    }
  }

  else
  {
    v32 = v68;
  }

  if (v29 + v30 > v72)
  {
    v29 = v72 - v30;
  }

  if (v28 + v31 > v73)
  {
    v28 = v73 - v31;
  }

  if (v70 + v65 <= v71)
  {
    v38 = v65;
  }

  else
  {
    v38 = v71 - v70;
  }

  if (v74 + v18 <= v69)
  {
    v39 = v18;
  }

  else
  {
    v39 = v69 - v74;
  }

  if (v29 >= v28)
  {
    v40 = v28;
  }

  else
  {
    v40 = v29;
  }

  if (v38 >= v39)
  {
    v41 = v39;
  }

  else
  {
    v41 = v38;
  }

  v42 = v70 + v41 - 1;
  v43 = v40 + v30;
  v44 = v40 + v30 + *v32 * v42;
  v45 = *v75;
  v46 = v66;
  v63 = v30;
  if (v44 > v45)
  {
    v47 = v11;
    v48 = v31;
    v49 = a8;
    v50 = a9;
    goto LABEL_61;
  }

  if (*(v67 + 8) && ((v43 + 1 + ((v43 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v32[1] * v42 > v75[1])
  {
    v47 = v11;
    v48 = v31;
    v49 = a8;
    v50 = a9;
    goto LABEL_61;
  }

  if (*(v67 + 16) && v43 + v32[2] * v42 > v75[2])
  {
    v47 = v11;
    v48 = v31;
    v49 = a8;
    v50 = a9;
    goto LABEL_61;
  }

  v51 = v74 + v41 - 1;
  v52 = v40 + v31;
  if ((*a8 * v51 + 2 * (v40 + v31)) > *a9)
  {
    v47 = v11;
    v48 = v31;
    v49 = a8;
    v50 = a9;
    goto LABEL_61;
  }

  if (*(v66 + 8) && a8[1] * v51 + 4 * ((v52 + 1 + ((v52 + 1) >> 63)) >> 1) > a9[1])
  {
    v47 = v11;
    v48 = v31;
    v49 = a8;
    v50 = a9;
    goto LABEL_61;
  }

  if (*(v66 + 16) && (2 * v52 + a8[2] * v51) > a9[2])
  {
    v47 = v11;
    v48 = v31;
    v49 = a8;
    v50 = a9;
LABEL_61:
    fig_log_get_emitter();
    v24 = FigSignalErrorAtGM();
    v32 = v68;
    v27 = v50;
    a8 = v49;
    v31 = v48;
    v11 = v47;
    v30 = v63;
    if (v24)
    {
      goto LABEL_67;
    }
  }

  *v23 = v11;
  v53 = v71;
  *(v23 + 4) = v72;
  *(v23 + 12) = v53;
  *(v23 + 20) = v40;
  *(v23 + 28) = v41;
  *(v23 + 36) = v30;
  v54 = v69;
  *(v23 + 44) = v70;
  v23[11] = v54;
  v23[12] = v40;
  v23[13] = v41;
  v23[14] = v31;
  v23[7] = v67;
  v23[8] = v32;
  v55 = v73;
  v56 = v74;
  v23[9] = v75;
  v23[10] = v55;
  v23[15] = v56;
  v23[16] = v46;
  v23[17] = a8;
  v23[18] = v27;
  v23[19] = v64;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v11, global_queue, v23, vt_Copy_422vf_TRC_Tone_Mat_TRC_xf422_GCD);
  if (!v11)
  {
    return 0;
  }

  v58 = (v23 + 20);
  v59 = v11;
  while (1)
  {
    v60 = *v58++;
    v24 = v60;
    if (v60)
    {
      break;
    }

    if (!--v59)
    {
      v24 = 0;
      break;
    }
  }

LABEL_67:
  if (v11 == 255)
  {
    goto LABEL_68;
  }

  return v24;
}

uint64_t *vt_Copy_422vf_TRC_Tone_Mat_TRC_xf422_GCD(void *a1, uint64_t a2, double a3, float a4, double a5, float a6)
{
  v11 = *(a1 + 36);
  v12 = *a1;
  v13 = *(a1 + 28) * a2 / v12 + *(a1 + 44);
  v14 = a1[14];
  v16 = a1[12];
  v15 = a1[13];
  v17 = v15 * a2 / v12;
  v18 = v17 + a1[15];
  v19 = (v15 + v15 * a2) / v12 - v17;
  v20 = a1[7];
  v21 = a1[8];
  v23 = a1[16];
  result = a1[17];
  v24 = v21[2];
  v164 = v20[2];
  v25 = result[2];
  v26 = v23[2];
  v27 = (v26 + v25 * v18 + 2 * v14);
  if (v19 >= 1)
  {
    v28 = 0;
    v29 = a1[19];
    v30 = v16 & 0xFFFFFFFE;
    v31 = *v21;
    v32 = v21[1];
    v33 = *result;
    result = result[1];
    LOWORD(a4) = *(v29 + 140);
    LOWORD(a6) = *(v29 + 142);
    LOWORD(v6) = *(v29 + 144);
    LOWORD(v7) = *(v29 + 146);
    LOWORD(v8) = *(v29 + 148);
    v34 = 8191.0 / *(v29 + 128);
    v177 = LODWORD(a4);
    v35 = LODWORD(a6);
    v36 = v34 * *v29;
    v173 = v34 * *(v29 + 16);
    v174 = v34 * *(v29 + 8);
    v37 = v34 * *(v29 + 20);
    *&v38 = v34 * *(v29 + 28);
    v171 = *&v38;
    v172 = v37;
    v39 = v6;
    v40 = v7;
    v41 = v8;
    LOWORD(v38) = *(v29 + 150);
    *&v42 = v38;
    v175 = *&v42;
    v176 = v36;
    LOWORD(v42) = *(v29 + 152);
    v43 = v42;
    v44 = *(v29 + 36);
    v45 = *(v29 + 40);
    v46 = *(v29 + 44);
    v169 = *(v29 + 52) * 0.5;
    v170 = *(v29 + 48) * 0.5;
    v167 = *(v29 + 60) * 0.5;
    v168 = *(v29 + 56) * 0.5;
    v47 = *(v29 + 72);
    v48 = *(v29 + 68) * 0.5;
    v165 = v48;
    v166 = *(v29 + 64) * 0.5;
    v50 = *(v29 + 76);
    v49 = *(v29 + 80);
    v51 = *(v29 + 84);
    v52 = *(v29 + 88);
    v53 = *(v29 + 92);
    v54 = *(v29 + 96);
    v55 = *(v29 + 100);
    v56 = *(v29 + 104);
    v57 = v29 + 164;
    v58 = v29 + 16548;
    v59 = *(v29 + 132);
    v60 = 16 - v59;
    if (v59 >= 0x11)
    {
      v60 = 0;
    }

    v61 = v23[1];
    _ZF = v61 == 0;
    v63 = v61 + result * v18;
    v64 = *v23 + v33 * v18;
    v65 = v29 + 32932;
    v66 = v63 + 2 * v14;
    if (_ZF)
    {
      v66 = 0;
    }

    v67 = (v64 + 2 * v14);
    v69 = *v20;
    v68 = v20[1];
    v70 = v68 + v32 * v13 + v11;
    if (!v68)
    {
      v70 = 0;
    }

    v71 = (v69 + v31 * v13 + v11);
    v73 = *(v29 + 108);
    v72 = *(v29 + 112);
    v74 = *(v29 + 116);
    v75 = *(v29 + 120);
    do
    {
      if (v30 >= 1)
      {
        v76 = 0;
        v77 = v71;
        v78 = v67;
        do
        {
          LOBYTE(v48) = *(v70 + v76 + 1);
          v79 = LODWORD(v48) - v35;
          v80 = LODWORD(v174);
          v81 = v174 * v79;
          LOBYTE(v80) = *v77;
          v82 = v80 - v177;
          v83 = v176 * v82;
          v84 = (v174 * v79) + (v176 * v82);
          v85 = 8191.0;
          if (v84 <= 8191.0)
          {
            v85 = (v174 * v79) + (v176 * v82);
            if (v84 < 0.0)
            {
              v85 = 0.0;
            }
          }

          LOBYTE(v82) = *(v70 + v76);
          v86 = v35;
          v87 = LODWORD(v82) - v35;
          v88 = (v172 * v79) + (v87 * v173);
          v89 = 8191.0;
          if ((v83 + v88) <= 8191.0)
          {
            v89 = v83 + v88;
            if ((v83 + v88) < 0.0)
            {
              v89 = 0.0;
            }
          }

          v90 = LODWORD(v171);
          v91 = v171 * v87;
          v92 = v91 + v83;
          v93 = (v91 + v83) <= 8191.0;
          v94 = 8191.0;
          if (v93)
          {
            v94 = v92;
            if (v92 < 0.0)
            {
              v94 = 0.0;
            }
          }

          LOBYTE(v90) = v77[1];
          v95 = v176 * (v90 - v177);
          v96 = v81 + v95;
          v97 = 8191.0;
          if (v96 <= 8191.0)
          {
            v97 = v96;
            if (v96 < 0.0)
            {
              v97 = 0.0;
            }
          }

          v98 = v88 + v95;
          v93 = (v88 + v95) <= 8191.0;
          v99 = 8191.0;
          if (v93)
          {
            v99 = v98;
            if (v98 < 0.0)
            {
              v99 = 0.0;
            }
          }

          v100 = v91 + v95;
          v93 = (v91 + v95) <= 8191.0;
          v101 = 8191.0;
          if (v93)
          {
            v101 = v100;
            if (v100 < 0.0)
            {
              v101 = 0.0;
            }
          }

          _H0 = *(v57 + 2 * llroundf(fminf(fmaxf(v85, 0.0), 8191.0)));
          __asm { FCVT            S24, H0 }

          _H0 = *(v57 + 2 * llroundf(fminf(fmaxf(v89, 0.0), 8191.0)));
          __asm { FCVT            S25, H0 }

          _H0 = *(v57 + 2 * llroundf(fminf(fmaxf(v94, 0.0), 8191.0)));
          __asm { FCVT            S26, H0 }

          _H19 = *(v57 + 2 * llroundf(fminf(fmaxf(v97, 0.0), 8191.0)));
          _H28 = *(v57 + 2 * llroundf(fminf(fmaxf(v99, 0.0), 8191.0)));
          _H30 = *(v57 + 2 * llroundf(fminf(fmaxf(v101, 0.0), 8191.0)));
          v114 = (((v72 * _S25) + (v73 * _S24)) + (v74 * _S26)) + (v75 * fmaxf(_S24, fmaxf(_S25, _S26)));
          v115 = 8191.0;
          if (v114 <= 8191.0)
          {
            v115 = v114;
            if (v114 < 0.0)
            {
              v115 = 0.0;
            }
          }

          __asm
          {
            FCVT            S27, H19
            FCVT            S28, H28
            FCVT            S30, H30
          }

          _H19 = *(v58 + 2 * llroundf(v115));
          v120 = (((v72 * _S28) + (v73 * _S27)) + (v74 * _S30)) + (v75 * fmaxf(_S27, fmaxf(_S28, _S30)));
          v121 = 8191.0;
          if (v120 <= 8191.0)
          {
            v121 = v120;
            if (v120 < 0.0)
            {
              v121 = 0.0;
            }
          }

          __asm { FCVT            S18, H19 }

          v123 = _S24 * _S18;
          _S24 = _S25 * _S18;
          v125 = _S26 * _S18;
          _H0 = *(v58 + 2 * llroundf(v121));
          __asm { FCVT            S0, H0 }

          _S25 = _S27 * _S0;
          v129 = _S28 * _S0;
          v130 = _S30 * _S0;
          v131 = ((v50 * _S24) + (v123 * v47)) + (v125 * v49);
          v132 = ((v52 * _S24) + (v123 * v51)) + (v125 * v53);
          _S18 = ((v55 * _S24) + (v123 * v54)) + (v125 * v56);
          v134 = ((v50 * v129) + (_S25 * v47)) + (v130 * v49);
          v135 = ((v52 * v129) + (_S25 * v51)) + (v130 * v53);
          v136 = ((v55 * v129) + (_S25 * v54)) + (v130 * v56);
          LOWORD(_S24) = *(v65 + 2 * llroundf(fminf(fmaxf(v131, 0.0), 8191.0)));
          __asm { FCVT            S24, H24 }

          LOWORD(_S25) = *(v65 + 2 * llroundf(fminf(fmaxf(v132, 0.0), 8191.0)));
          __asm { FCVT            S25, H25 }

          LOWORD(_S18) = *(v65 + 2 * llroundf(fminf(fmaxf(_S18, 0.0), 8191.0)));
          __asm { FCVT            S26, H18 }

          _H19 = *(v65 + 2 * llroundf(fminf(fmaxf(v134, 0.0), 8191.0)));
          _H27 = *(v65 + 2 * llroundf(fminf(fmaxf(v135, 0.0), 8191.0)));
          _H30 = *(v65 + 2 * llroundf(fminf(fmaxf(v136, 0.0), 8191.0)));
          v143 = (((v45 * _S25) + (v44 * _S24)) + (v46 * _S26)) + v39;
          v144 = v41;
          if (v143 <= v41)
          {
            v144 = (((v45 * _S25) + (v44 * _S24)) + (v46 * _S26)) + v39;
            if (v143 < v39)
            {
              v144 = v39;
            }
          }

          __asm
          {
            FCVT            S28, H19
            FCVT            S27, H27
            FCVT            S19, H30
          }

          v148 = (((v45 * _S27) + (v44 * _S28)) + (v46 * _S19)) + v39;
          *v78 = llroundf(v144) << v60;
          v149 = v41;
          if (v148 <= v41)
          {
            v149 = (((v45 * _S27) + (v44 * _S28)) + (v46 * _S19)) + v39;
            if (v148 < v39)
            {
              v149 = v39;
            }
          }

          v78[1] = llroundf(v149) << v60;
          v150 = _S24 + _S28;
          v151 = _S25 + _S27;
          v152 = _S26 + _S19;
          v153 = ((v40 + (v150 * v170)) + (v151 * v169)) + (v152 * v168);
          v154 = v43;
          if (v153 <= v43)
          {
            v154 = ((v40 + (v150 * v170)) + (v151 * v169)) + (v152 * v168);
            if (v153 < v175)
            {
              v154 = v175;
            }
          }

          v155 = (v66 + 2 * v76);
          v48 = (v40 + (v150 * v167)) + (v151 * v166);
          v156 = v48 + (v152 * v165);
          *v155 = llroundf(v154) << v60;
          v157 = v43;
          if (v156 <= v43)
          {
            v48 = v175;
            v157 = v156;
            if (v156 < v175)
            {
              v157 = v175;
            }
          }

          v155[1] = llroundf(v157) << v60;
          v76 += 2;
          v77 += 2;
          v78 += 2;
          v35 = v86;
        }

        while (v76 < v30);
      }

      v71 += v31;
      v70 += v32;
      v67 = (v67 + v33);
      v66 += result;
      ++v28;
    }

    while (v28 != v19);
  }

  if (v164 && v26)
  {
    if (v19 >= 1)
    {
      v158 = 0;
      v159 = (v164 + v24 * v13 + v11);
      do
      {
        if (v16 >= 1)
        {
          v160 = v16;
          v161 = v27;
          v162 = v159;
          do
          {
            v163 = *v162++;
            *v161++ = v163 | (v163 << 8);
            --v160;
          }

          while (v160);
        }

        v159 += v24;
        v27 += v25;
        ++v158;
      }

      while (v158 != v19);
    }
  }

  else if (v26 && v19 >= 1)
  {
    do
    {
      if (v16 >= 1)
      {
        result = memset(v27, 255, 2 * v16);
      }

      v27 += v25;
      --v19;
    }

    while (v19);
  }

  *(a1 + a2 + 40) = 0;
  return result;
}

uint64_t vt_Copy_422vf_TRC_Mat_TRC_xf422_neon_fp16(uint64_t a1, uint64_t *a2, uint64_t a3, unint64_t *a4, unint64_t *a5, uint64_t *a6, uint64_t a7, void *a8, void *a9)
{
  v66 = a7;
  v67 = a3;
  v75 = a5;
  v68 = a4;
  v76 = *MEMORY[0x1E69E9840];
  v11 = *(a1 + 162);
  v13 = *a2;
  v12 = a2[1];
  v14 = a2[2];
  v65 = a2[3];
  v15 = a2[4];
  v70 = a2[5];
  v71 = v12;
  v16 = *a6;
  v69 = a6[1];
  v17 = a6[2];
  v18 = a6[3];
  v20 = a6[4];
  v19 = a6[5];
  v73 = v16;
  v74 = v19;
  v72 = v13;
  v22 = v15 + v14 != v13 || v20 + v17 != v16;
  if (v11 == 255)
  {
    v23 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v23)
    {
      v24 = 0;
LABEL_68:
      free(v23);
      return v24;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v11 + 160, a3, a4);
    v23 = (&v62 - v25);
    bzero(&v62 - v25, v26);
  }

  v64 = a1;
  v27 = a9;
  v28 = v17 - 1;
  v29 = v14 - 1;
  if (v20)
  {
    v30 = v15 + 1;
  }

  else
  {
    v29 = v14;
    v30 = v15;
  }

  if (v20)
  {
    v31 = v20 + 1;
  }

  else
  {
    v28 = v17;
    v31 = v20;
  }

  if (v28)
  {
    v32 = v68;
    if (v22 || (v33 = v29 + 1 + v30, v33 > *v68) || ((v33 + (v33 >> 63)) & 0xFFFFFFFFFFFFFFFELL) > v68[1] || (v34 = v68[2], v33 > v34) && v34 || (v35 = v28 + 1 + v31, v36 = 2 * v35, 2 * v35 > *a8) || ((2 * (v35 + (v35 >> 63))) & 0xFFFFFFFFFFFFFFFCLL) > a8[1] || (v37 = a8[2], v36 > v37) && v37)
    {
      --v28;
      --v29;
    }

    else
    {
      ++v72;
      ++v73;
      ++v29;
      ++v28;
    }
  }

  else
  {
    v32 = v68;
  }

  if (v29 + v30 > v72)
  {
    v29 = v72 - v30;
  }

  if (v28 + v31 > v73)
  {
    v28 = v73 - v31;
  }

  if (v70 + v65 <= v71)
  {
    v38 = v65;
  }

  else
  {
    v38 = v71 - v70;
  }

  if (v74 + v18 <= v69)
  {
    v39 = v18;
  }

  else
  {
    v39 = v69 - v74;
  }

  if (v29 >= v28)
  {
    v40 = v28;
  }

  else
  {
    v40 = v29;
  }

  if (v38 >= v39)
  {
    v41 = v39;
  }

  else
  {
    v41 = v38;
  }

  v42 = v70 + v41 - 1;
  v43 = v40 + v30;
  v44 = v40 + v30 + *v32 * v42;
  v45 = *v75;
  v46 = v66;
  v63 = v30;
  if (v44 > v45)
  {
    v47 = v11;
    v48 = v31;
    v49 = a8;
    v50 = a9;
    goto LABEL_61;
  }

  if (*(v67 + 8) && ((v43 + 1 + ((v43 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v32[1] * v42 > v75[1])
  {
    v47 = v11;
    v48 = v31;
    v49 = a8;
    v50 = a9;
    goto LABEL_61;
  }

  if (*(v67 + 16) && v43 + v32[2] * v42 > v75[2])
  {
    v47 = v11;
    v48 = v31;
    v49 = a8;
    v50 = a9;
    goto LABEL_61;
  }

  v51 = v74 + v41 - 1;
  v52 = v40 + v31;
  if ((*a8 * v51 + 2 * (v40 + v31)) > *a9)
  {
    v47 = v11;
    v48 = v31;
    v49 = a8;
    v50 = a9;
    goto LABEL_61;
  }

  if (*(v66 + 8) && a8[1] * v51 + 4 * ((v52 + 1 + ((v52 + 1) >> 63)) >> 1) > a9[1])
  {
    v47 = v11;
    v48 = v31;
    v49 = a8;
    v50 = a9;
    goto LABEL_61;
  }

  if (*(v66 + 16) && (2 * v52 + a8[2] * v51) > a9[2])
  {
    v47 = v11;
    v48 = v31;
    v49 = a8;
    v50 = a9;
LABEL_61:
    fig_log_get_emitter();
    v24 = FigSignalErrorAtGM();
    v32 = v68;
    v27 = v50;
    a8 = v49;
    v31 = v48;
    v11 = v47;
    v30 = v63;
    if (v24)
    {
      goto LABEL_67;
    }
  }

  *v23 = v11;
  v53 = v71;
  *(v23 + 4) = v72;
  *(v23 + 12) = v53;
  *(v23 + 20) = v40;
  *(v23 + 28) = v41;
  *(v23 + 36) = v30;
  v54 = v69;
  *(v23 + 44) = v70;
  v23[11] = v54;
  v23[12] = v40;
  v23[13] = v41;
  v23[14] = v31;
  v23[7] = v67;
  v23[8] = v32;
  v55 = v73;
  v56 = v74;
  v23[9] = v75;
  v23[10] = v55;
  v23[15] = v56;
  v23[16] = v46;
  v23[17] = a8;
  v23[18] = v27;
  v23[19] = v64;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v11, global_queue, v23, vt_Copy_422vf_TRC_Mat_TRC_xf422_neon_fp16_GCD);
  if (!v11)
  {
    return 0;
  }

  v58 = (v23 + 20);
  v59 = v11;
  while (1)
  {
    v60 = *v58++;
    v24 = v60;
    if (v60)
    {
      break;
    }

    if (!--v59)
    {
      v24 = 0;
      break;
    }
  }

LABEL_67:
  if (v11 == 255)
  {
    goto LABEL_68;
  }

  return v24;
}

uint64_t vt_Copy_422vf_TRC_Mat_TRC_xf422_neon_fp16_GCD(uint64_t result, uint64_t a2, double a3, int16x4_t a4, float32x4_t a5, float32x4_t a6)
{
  v9 = *result;
  v222 = *(result + 28) * a2 / v9 + *(result + 44);
  v223 = *(result + 36);
  v10 = *(result + 112);
  v12 = *(result + 96);
  v11 = *(result + 104);
  v228 = result;
  v13 = v11 * a2 / v9;
  v14 = v13 + *(result + 120);
  v15 = (v11 + v11 * a2) / v9 - v13;
  v16 = *(result + 56);
  v17 = *(result + 64);
  v18 = *(result + 128);
  v19 = *(result + 136);
  v221 = v17[2];
  v225 = v16[2];
  v226 = v19[2];
  v224 = v18[2];
  v20 = (v224 + v226 * v14 + 2 * v10);
  if (v15 >= 1)
  {
    v21 = 0;
    v22 = *(result + 152);
    v23 = v12 - 7;
    v24 = *v17;
    result = v17[1];
    v25 = *v19;
    v26 = v19[1];
    v27 = v22[17].u16[2];
    v28 = v22[17].u16[3];
    a4.i32[0] = v22->i32[0];
    a6.i32[0] = v22[3].i32[1];
    v29 = v22[18].u16[0];
    v30 = v22[18].u16[1];
    v31 = v22[18].u16[2];
    v32 = v22[18].u16[3];
    v33 = v22[19].u16[0];
    _S19 = v22[4].i32[1];
    _S23 = v22[5].f32[0];
    v36 = 8191.0 / v22[16].u32[0];
    _S24 = v22[5].i32[1];
    v37.i32[0] = v22[6].i32[0];
    v264 = v27;
    _S4 = v36 * v22->f32[0];
    *a4.i16 = v27;
    v40.i32[0] = v22[6].i32[1];
    a5.i32[0] = v22[7].i32[0];
    v41 = vdupq_lane_s16(a4, 0);
    a6.i32[1] = v22[1].i32[0];
    *v7.f32 = vmul_n_f32(*a6.f32, v36);
    v42 = vdupq_lane_s32(vcvt_f16_f32(v7), 0);
    *a6.f32 = vmul_n_f32(v22[2], v36);
    _S20 = v22[9].i32[0];
    _S9 = v22[9].i32[1];
    _S11 = v22[10].i32[0];
    _S12 = v22[10].i32[1];
    _S14 = v22[11].i32[0];
    _S15 = v22[11].f32[1];
    v49 = -v28;
    v253 = vmulq_n_f16(v42, v49);
    v37.i32[1] = v22[7].i32[1];
    *v6.f32 = vmul_f32(v37, 0x3F0000003F000000);
    v251 = vdupq_lane_s32(vcvt_f16_f32(v6), 0);
    v40.i32[1] = v22[8].i32[0];
    *v8.f32 = vmul_f32(v40, 0x3F0000003F000000);
    v250 = vdupq_lane_s32(vcvt_f16_f32(v8), 0);
    a5.i32[1] = v22[8].i32[1];
    _S1 = v22[12].i32[0];
    _S28 = v22[12].i32[1];
    v52 = &v22[20] + 4;
    v53 = v12 & 0xFFFFFFFE;
    v54 = &v22[2068] + 4;
    *a5.f32 = vmul_f32(*a5.f32, 0x3F0000003F000000);
    v55 = vdupq_lane_s32(vcvt_f16_f32(a5), 0);
    v248 = v55;
    *v55.i16 = v29;
    v56 = vdupq_lane_s16(*v55.i8, 0);
    v232 = v56;
    *v56.i16 = v30;
    v57 = vdupq_lane_s16(*v56.i8, 0);
    v247 = v57;
    *v57.i16 = v31;
    v58 = vdupq_lane_s16(*v57.i8, 0);
    v246 = v58;
    *v58.i16 = v32;
    v59 = vdupq_lane_s16(*v58.i8, 0);
    v245 = v59;
    *v59.i16 = v33;
    v244 = vdupq_lane_s16(*v59.i8, 0);
    v254 = vdupq_lane_s32(vcvt_f16_f32(a6), 0);
    v60 = vmulq_n_f16(v254, v49);
    v243 = v60;
    v61 = v22[16].u8[4];
    if (v61 >= 0x11)
    {
      v62 = 0;
    }

    else
    {
      v62 = 16 - v61;
    }

    v64 = *v18;
    v63 = v18[1];
    v65 = v63 + v26 * v14 + 2 * v10;
    if (!v63)
    {
      v65 = 0;
    }

    v66 = v64 + v25 * v14 + 2 * v10;
    v67 = *v16;
    v68 = v16[1];
    v69 = (v68 + result * v222 + v223);
    if (!v68)
    {
      v69 = 0;
    }

    v70 = (v67 + v24 * v222 + v223);
    v71 = v62;
    v231 = v12 & 0xFFFFFFF8;
    v72 = v29;
    v262 = v30;
    v263 = v28;
    *v60.i32 = v31;
    v256 = v32;
    v73 = v33;
    v260 = v22[4].f32[1];
    v261 = _S4;
    __asm
    {
      FCVT            H8, S4
      FCVT            H5, S19
    }

    v242 = _H5;
    __asm { FCVT            H6, S23 }

    v241 = _H6;
    v259 = v22[5].f32[1];
    __asm { FCVT            H6, S24 }

    v240 = _H6;
    v258 = v22[9].f32[0];
    __asm { FCVT            H6, S20 }

    v239 = _H6;
    v83 = v22[9].f32[1];
    __asm { FCVT            H4, S9 }

    v85 = v22[10].f32[0];
    __asm { FCVT            H6, S11 }

    v238 = _H6;
    v87 = v22[10].f32[1];
    __asm { FCVT            H12, S12 }

    v89 = v22[11].f32[0];
    __asm
    {
      FCVT            H10, S14
      FCVT            H5, S15
    }

    v92 = v22[12].f32[0];
    __asm { FCVT            H6, S1 }

    v94 = v22[12].f32[1];
    __asm { FCVT            H1, S28 }

    v229 = _H1;
    v230 = _H5;
    _S20 = v22[13].f32[0];
    __asm { FCVT            H5, S29 }

    v98 = vdupq_n_s16(v62);
    v255 = a6.f32[0];
    v99 = v7.i64[0];
    v100 = v42;
    v237 = a6.f32[1];
    v101.i32[0] = v6.i32[1];
    v252 = v6.f32[0];
    v102 = v8.i64[0];
    v103.i32[0] = a5.i32[1];
    v236 = a5.f32[1];
    v249 = a5.f32[0];
    v104.i64[0] = 0x9000900090009000;
    v104.i64[1] = 0x9000900090009000;
    v257 = _H12;
    v234 = v25;
    v235 = v12;
    v233 = v26;
    do
    {
      if (v12 < 8)
      {
        v162 = 0;
        v110 = v65;
        v109 = v66;
        v161 = v69;
        v108 = v70;
      }

      else
      {
        v105 = result;
        v106 = v24;
        v107 = 0;
        v108 = v70;
        v109 = v66;
        v110 = v65;
        do
        {
          v111 = *&v69[v107];
          *v112.i8 = vzip1_s8(v111, 0);
          v112.u64[1] = vzip2_s8(v111, 0);
          v113 = vcvtq_f16_u16(v112);
          v114 = vmlaq_f16(v253, v100, v113);
          v115 = vmlaq_f16(v243, v254, v113);
          v116 = vtrn2q_s16(v114, v114);
          v117 = vtrn1q_s16(v114, v114);
          v118 = *v108++;
          *v119.i8 = vzip1_s8(v118, 0);
          v119.u64[1] = vzip2_s8(v118, 0);
          *v114.i8 = vadd_f16(*&vuzp1q_s16(v115, v60), *&vuzp2q_s16(v115, v60));
          v120 = vsubq_f16(vcvtq_f16_u16(v119), v41);
          v121 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(v116, v120, _H8), 0), v104));
          v119.i16[0] = *&v52[2 * v121.u16[0]];
          v122 = vmlaq_n_f16(v117, v120, _H8);
          v123 = &v52[2 * v121.u16[2]];
          v124 = &v52[2 * v121.u16[3]];
          v125 = &v52[2 * v121.u16[4]];
          v126 = &v52[2 * v121.u16[5]];
          v127 = &v52[2 * v121.u16[6]];
          v128 = v121.u16[7];
          v119.i16[1] = *&v52[2 * v121.u16[1]];
          v129 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vzip1q_s16(v114, v114), v120, _H8), 0), v104));
          v119.i16[2] = *v123;
          v130.i16[0] = *&v52[2 * v129.u16[0]];
          v131 = &v52[2 * v129.u16[2]];
          v132 = &v52[2 * v129.u16[3]];
          v119.i16[3] = *v124;
          v133 = &v52[2 * v129.u16[4]];
          v134 = &v52[2 * v129.u16[5]];
          v130.i16[1] = *&v52[2 * v129.u16[1]];
          v135 = &v52[2 * v129.u16[6]];
          LOWORD(v123) = v129.i16[7];
          v119.i16[4] = *v125;
          v136 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v122, 0), v104));
          v130.i16[2] = *v131;
          v114.i16[0] = *&v52[2 * v136.u16[0]];
          v119.i16[5] = *v126;
          v130.i16[3] = *v132;
          v119.i16[6] = *v127;
          v130.i16[4] = *v133;
          v119.i16[7] = *&v52[2 * v128];
          v130.i16[5] = *v134;
          v114.i16[1] = *&v52[2 * v136.u16[1]];
          v114.i16[2] = *&v52[2 * v136.u16[2]];
          v130.i16[6] = *v135;
          v114.i16[3] = *&v52[2 * v136.u16[3]];
          v114.i16[4] = *&v52[2 * v136.u16[4]];
          v130.i16[7] = *&v52[2 * v123];
          v114.i16[5] = *&v52[2 * v136.u16[5]];
          v114.i16[6] = *&v52[2 * v136.u16[6]];
          v114.i16[7] = *&v52[2 * v136.u16[7]];
          v137 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v119, _H12), v130, _H10), v114, v230);
          v138 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v114, _H5), v130, v229), v119, _H6);
          v139 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v119, v239), v130, _H4), v114, v238), 0), v104));
          v119.i16[0] = *&v54[2 * v139.u16[0]];
          v140 = &v54[2 * v139.u16[1]];
          v141 = &v54[2 * v139.u16[2]];
          v142 = &v54[2 * v139.u16[3]];
          v143 = &v54[2 * v139.u16[4]];
          v144 = &v54[2 * v139.u16[5]];
          LOWORD(v132) = v139.i16[7];
          v145 = &v54[2 * v139.u16[6]];
          v146 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v137, 0), v104));
          v147 = &v54[2 * v132];
          v122.i16[0] = *&v54[2 * v146.u16[0]];
          v119.i16[1] = *v140;
          v148 = &v54[2 * v146.u16[4]];
          v119.i16[2] = *v141;
          v122.i16[1] = *&v54[2 * v146.u16[1]];
          v122.i16[2] = *&v54[2 * v146.u16[2]];
          v149 = &v54[2 * v146.u16[5]];
          v150 = &v54[2 * v146.u16[6]];
          v119.i16[3] = *v142;
          v122.i16[3] = *&v54[2 * v146.u16[3]];
          v119.i16[4] = *v143;
          v151 = &v54[2 * v146.u16[7]];
          v152 = vmaxq_f16(v138, 0);
          _H12 = v257;
          v153 = vcvtq_u16_f16(vminq_f16(v152, v104));
          v122.i16[4] = *v148;
          v130.i16[0] = *&v54[2 * v153.u16[0]];
          v119.i16[5] = *v144;
          v122.i16[5] = *v149;
          v119.i16[6] = *v145;
          v122.i16[6] = *v150;
          v130.i16[1] = *&v54[2 * v153.u16[1]];
          v154 = v119;
          v130.i16[2] = *&v54[2 * v153.u16[2]];
          v154.i16[7] = *v147;
          v130.i16[3] = *&v54[2 * v153.u16[3]];
          v130.i16[4] = *&v54[2 * v153.u16[4]];
          v155 = v122;
          v130.i16[5] = *&v54[2 * v153.u16[5]];
          v130.i16[6] = *&v54[2 * v153.u16[6]];
          v155.i16[7] = *v151;
          v156 = &v54[2 * v153.u16[7]];
          v157 = vmlaq_n_f16(vmlaq_n_f16(v232, v154, v242), v155, v241);
          v158 = vuzp2q_s16(v154, v155);
          v159 = v130;
          v159.i16[7] = *v156;
          *v109++ = vshlq_u16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(v157, v159, v240), v232), v246)), v98);
          v160 = vaddq_f16(vuzp1q_s16(v119, v122), v158);
          v101 = vmlaq_f16(vmlaq_f16(vmlaq_f16(v247, v251, vzip1q_s16(v160, v160)), v250, vzip2q_s16(v160, v160)), v248, vaddq_f16(vtrn1q_s16(v130, v130), vtrn2q_s16(v159, v159)));
          v103 = vshlq_u16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(v101, v245), v244)), v98);
          *v110++ = v103;
          v107 += 8;
        }

        while (v107 < v23);
        v161 = &v69[v107];
        v162 = v231;
        v24 = v106;
        result = v105;
        v25 = v234;
        v12 = v235;
        v26 = v233;
      }

      for (; v162 < v53; v100 = v163)
      {
        v163 = v100;
        v103.i8[0] = v161[1];
        *v103.i32 = v103.u32[0] - v263;
        v164 = *(&v99 + 1) * *v103.i32;
        v101.i8[0] = v108->i8[0];
        v165 = v261 * (v101.u32[0] - v264);
        v166 = (*(&v99 + 1) * *v103.i32) + v165;
        v167 = 8191.0;
        if (v166 <= 8191.0)
        {
          v167 = (*(&v99 + 1) * *v103.i32) + v165;
          if (v166 < 0.0)
          {
            v167 = 0.0;
          }
        }

        v168 = v41;
        LOBYTE(v166) = *v161;
        v169 = LODWORD(v166) - v263;
        v170 = (v237 * *v103.i32) + (v169 * v255);
        v171 = 8191.0;
        if ((v165 + v170) <= 8191.0)
        {
          v171 = v165 + v170;
          if ((v165 + v170) < 0.0)
          {
            v171 = 0.0;
          }
        }

        v172 = *&v99 * v169;
        v173 = (*&v99 * v169) + v165;
        v174 = 8191.0;
        if (v173 <= 8191.0)
        {
          v174 = v173;
          if (v173 < 0.0)
          {
            v174 = 0.0;
          }
        }

        LOBYTE(v173) = v108->i8[1];
        v175 = v261 * (LODWORD(v173) - v264);
        v176 = v164 + v175;
        v177 = 8191.0;
        if (v176 <= 8191.0)
        {
          v177 = v176;
          if (v176 < 0.0)
          {
            v177 = 0.0;
          }
        }

        v178 = 8191.0;
        if ((v170 + v175) <= 8191.0)
        {
          v178 = v170 + v175;
          if ((v170 + v175) < 0.0)
          {
            v178 = 0.0;
          }
        }

        v179 = v172 + v175;
        v180 = 8191.0;
        if (v179 <= 8191.0)
        {
          v180 = v179;
          if (v179 < 0.0)
          {
            v180 = 0.0;
          }
        }

        _H1 = *&v52[2 * llroundf(fminf(fmaxf(v167, 0.0), 8191.0))];
        __asm { FCVT            S1, H1 }

        _H3 = *&v52[2 * llroundf(fminf(fmaxf(v171, 0.0), 8191.0))];
        __asm { FCVT            S3, H3 }

        _H17 = *&v52[2 * llroundf(fminf(fmaxf(v174, 0.0), 8191.0))];
        __asm { FCVT            S17, H17 }

        v187 = ((v83 * _S3) + (_S1 * v258)) + (_S17 * v85);
        v188 = ((v89 * _S3) + (_S1 * v87)) + (_S17 * _S15);
        _S1 = (v94 * _S3) + (_S1 * v92);
        LOWORD(_S3) = *&v54[2 * llroundf(fminf(fmaxf(v187, 0.0), 8191.0))];
        __asm { FCVT            S26, H3 }

        LOWORD(_S3) = *&v54[2 * llroundf(fminf(fmaxf(v188, 0.0), 8191.0))];
        __asm { FCVT            S9, H3 }

        LOWORD(_S1) = *&v54[2 * llroundf(fminf(fmaxf(_S1 + (_S17 * _S20), 0.0), 8191.0))];
        __asm { FCVT            S13, H1 }

        v193 = (((_S23 * _S9) + (v260 * _S26)) + (v259 * _S13)) + v72;
        v194 = *v60.i32;
        if (v193 <= *v60.i32)
        {
          v194 = (((_S23 * _S9) + (v260 * _S26)) + (v259 * _S13)) + v72;
          if (v193 < v72)
          {
            v194 = v72;
          }
        }

        _H1 = *&v52[2 * llroundf(fminf(fmaxf(v177, 0.0), 8191.0))];
        __asm { FCVT            S1, H1 }

        _H3 = *&v52[2 * llroundf(fminf(fmaxf(v178, 0.0), 8191.0))];
        _H2 = *&v52[2 * llroundf(fminf(fmaxf(v180, 0.0), 8191.0))];
        __asm
        {
          FCVT            S3, H3
          FCVT            S2, H2
        }

        v201 = ((v83 * _S3) + (_S1 * v258)) + (_S2 * v85);
        v202 = ((v89 * _S3) + (_S1 * v87)) + (_S2 * _S15);
        _S2 = ((v94 * _S3) + (_S1 * v92)) + (_S2 * _S20);
        LOWORD(_S1) = *&v54[2 * llroundf(fminf(fmaxf(v201, 0.0), 8191.0))];
        __asm { FCVT            S1, H1 }

        LOWORD(_S3) = *&v54[2 * llroundf(fminf(fmaxf(v202, 0.0), 8191.0))];
        LOWORD(_S2) = *&v54[2 * llroundf(fminf(fmaxf(_S2, 0.0), 8191.0))];
        __asm
        {
          FCVT            S3, H3
          FCVT            S2, H2
        }

        v207 = (((_S23 * _S3) + (v260 * _S1)) + (v259 * _S2)) + v72;
        v109->i16[0] = llroundf(v194) << v71;
        v208 = *v60.i32;
        if (v207 <= *v60.i32)
        {
          v208 = (((_S23 * _S3) + (v260 * _S1)) + (v259 * _S2)) + v72;
          if (v207 < v72)
          {
            v208 = v72;
          }
        }

        v109->i16[1] = llroundf(v208) << v71;
        v209 = _S26 + _S1;
        v210 = _S9 + _S3;
        v211 = _S13 + _S2;
        v212 = ((v262 + (v209 * v252)) + (v210 * *&v102)) + (v211 * v249);
        v6.f32[0] = v73;
        _H12 = v257;
        if (v212 <= v73)
        {
          v6.f32[0] = ((v262 + (v209 * v252)) + (v210 * *&v102)) + (v211 * v249);
          if (v212 < v256)
          {
            v6.f32[0] = v256;
          }
        }

        v213 = (v262 + (v209 * v6.f32[1])) + (v210 * *(&v102 + 1));
        *v101.i32 = v236;
        *v103.i32 = v213 + (v211 * v236);
        v110->i16[0] = llroundf(v6.f32[0]) << v71;
        v214 = v73;
        v41 = v168;
        if (*v103.i32 <= v73)
        {
          v214 = *v103.i32;
          if (*v103.i32 < v256)
          {
            v214 = v256;
          }
        }

        v110->i16[1] = llroundf(v214) << v71;
        v110 = (v110 + 4);
        v162 += 2;
        v161 += 2;
        v108 = (v108 + 2);
        v109 = (v109 + 4);
      }

      v70 = (v70 + v24);
      v69 += result;
      v66 += v25;
      v65 += v26;
      ++v21;
    }

    while (v21 != v15);
  }

  if (v225 && v224)
  {
    if (v15 >= 1)
    {
      v215 = 0;
      v216 = (v225 + v221 * v222 + v223);
      do
      {
        if (v12 >= 1)
        {
          v217 = v12;
          v218 = v20;
          v219 = v216;
          do
          {
            v220 = *v219++;
            *v218++ = v220 | (v220 << 8);
            --v217;
          }

          while (v217);
        }

        v216 += v221;
        v20 += v226;
        ++v215;
      }

      while (v215 != v15);
    }
  }

  else if (v224 && v15 >= 1)
  {
    do
    {
      if (v12 >= 1)
      {
        result = memset(v20, 255, 2 * v12);
      }

      v20 += v226;
      --v15;
    }

    while (v15);
  }

  *(v228 + a2 + 40) = 0;
  return result;
}

uint64_t vt_Copy_422vf_TRC_Mat_TRC_xf422(uint64_t a1, uint64_t *a2, uint64_t a3, unint64_t *a4, unint64_t *a5, uint64_t *a6, uint64_t a7, void *a8, void *a9)
{
  v66 = a7;
  v67 = a3;
  v75 = a5;
  v68 = a4;
  v76 = *MEMORY[0x1E69E9840];
  v11 = *(a1 + 162);
  v13 = *a2;
  v12 = a2[1];
  v14 = a2[2];
  v65 = a2[3];
  v15 = a2[4];
  v70 = a2[5];
  v71 = v12;
  v16 = *a6;
  v69 = a6[1];
  v17 = a6[2];
  v18 = a6[3];
  v20 = a6[4];
  v19 = a6[5];
  v73 = v16;
  v74 = v19;
  v72 = v13;
  v22 = v15 + v14 != v13 || v20 + v17 != v16;
  if (v11 == 255)
  {
    v23 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v23)
    {
      v24 = 0;
LABEL_68:
      free(v23);
      return v24;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v11 + 160, a3, a4);
    v23 = (&v62 - v25);
    bzero(&v62 - v25, v26);
  }

  v64 = a1;
  v27 = a9;
  v28 = v17 - 1;
  v29 = v14 - 1;
  if (v20)
  {
    v30 = v15 + 1;
  }

  else
  {
    v29 = v14;
    v30 = v15;
  }

  if (v20)
  {
    v31 = v20 + 1;
  }

  else
  {
    v28 = v17;
    v31 = v20;
  }

  if (v28)
  {
    v32 = v68;
    if (v22 || (v33 = v29 + 1 + v30, v33 > *v68) || ((v33 + (v33 >> 63)) & 0xFFFFFFFFFFFFFFFELL) > v68[1] || (v34 = v68[2], v33 > v34) && v34 || (v35 = v28 + 1 + v31, v36 = 2 * v35, 2 * v35 > *a8) || ((2 * (v35 + (v35 >> 63))) & 0xFFFFFFFFFFFFFFFCLL) > a8[1] || (v37 = a8[2], v36 > v37) && v37)
    {
      --v28;
      --v29;
    }

    else
    {
      ++v72;
      ++v73;
      ++v29;
      ++v28;
    }
  }

  else
  {
    v32 = v68;
  }

  if (v29 + v30 > v72)
  {
    v29 = v72 - v30;
  }

  if (v28 + v31 > v73)
  {
    v28 = v73 - v31;
  }

  if (v70 + v65 <= v71)
  {
    v38 = v65;
  }

  else
  {
    v38 = v71 - v70;
  }

  if (v74 + v18 <= v69)
  {
    v39 = v18;
  }

  else
  {
    v39 = v69 - v74;
  }

  if (v29 >= v28)
  {
    v40 = v28;
  }

  else
  {
    v40 = v29;
  }

  if (v38 >= v39)
  {
    v41 = v39;
  }

  else
  {
    v41 = v38;
  }

  v42 = v70 + v41 - 1;
  v43 = v40 + v30;
  v44 = v40 + v30 + *v32 * v42;
  v45 = *v75;
  v46 = v66;
  v63 = v30;
  if (v44 > v45)
  {
    v47 = v11;
    v48 = v31;
    v49 = a8;
    v50 = a9;
    goto LABEL_61;
  }

  if (*(v67 + 8) && ((v43 + 1 + ((v43 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v32[1] * v42 > v75[1])
  {
    v47 = v11;
    v48 = v31;
    v49 = a8;
    v50 = a9;
    goto LABEL_61;
  }

  if (*(v67 + 16) && v43 + v32[2] * v42 > v75[2])
  {
    v47 = v11;
    v48 = v31;
    v49 = a8;
    v50 = a9;
    goto LABEL_61;
  }

  v51 = v74 + v41 - 1;
  v52 = v40 + v31;
  if ((*a8 * v51 + 2 * (v40 + v31)) > *a9)
  {
    v47 = v11;
    v48 = v31;
    v49 = a8;
    v50 = a9;
    goto LABEL_61;
  }

  if (*(v66 + 8) && a8[1] * v51 + 4 * ((v52 + 1 + ((v52 + 1) >> 63)) >> 1) > a9[1])
  {
    v47 = v11;
    v48 = v31;
    v49 = a8;
    v50 = a9;
    goto LABEL_61;
  }

  if (*(v66 + 16) && (2 * v52 + a8[2] * v51) > a9[2])
  {
    v47 = v11;
    v48 = v31;
    v49 = a8;
    v50 = a9;
LABEL_61:
    fig_log_get_emitter();
    v24 = FigSignalErrorAtGM();
    v32 = v68;
    v27 = v50;
    a8 = v49;
    v31 = v48;
    v11 = v47;
    v30 = v63;
    if (v24)
    {
      goto LABEL_67;
    }
  }

  *v23 = v11;
  v53 = v71;
  *(v23 + 4) = v72;
  *(v23 + 12) = v53;
  *(v23 + 20) = v40;
  *(v23 + 28) = v41;
  *(v23 + 36) = v30;
  v54 = v69;
  *(v23 + 44) = v70;
  v23[11] = v54;
  v23[12] = v40;
  v23[13] = v41;
  v23[14] = v31;
  v23[7] = v67;
  v23[8] = v32;
  v55 = v73;
  v56 = v74;
  v23[9] = v75;
  v23[10] = v55;
  v23[15] = v56;
  v23[16] = v46;
  v23[17] = a8;
  v23[18] = v27;
  v23[19] = v64;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v11, global_queue, v23, vt_Copy_422vf_TRC_Mat_TRC_xf422_GCD);
  if (!v11)
  {
    return 0;
  }

  v58 = (v23 + 20);
  v59 = v11;
  while (1)
  {
    v60 = *v58++;
    v24 = v60;
    if (v60)
    {
      break;
    }

    if (!--v59)
    {
      v24 = 0;
      break;
    }
  }

LABEL_67:
  if (v11 == 255)
  {
    goto LABEL_68;
  }

  return v24;
}

uint64_t *vt_Copy_422vf_TRC_Mat_TRC_xf422_GCD(void *a1, uint64_t a2, double a3, double a4, float a5, float a6)
{
  v10 = *(a1 + 36);
  v11 = *a1;
  v12 = *(a1 + 28) * a2 / v11 + *(a1 + 44);
  v13 = a1[14];
  v15 = a1[12];
  v14 = a1[13];
  v16 = v14 * a2 / v11;
  v17 = v16 + a1[15];
  v18 = (v14 + v14 * a2) / v11 - v16;
  v19 = a1[7];
  v20 = a1[8];
  v22 = a1[16];
  result = a1[17];
  v23 = v20[2];
  v24 = v19[2];
  v25 = result[2];
  v26 = v22[2];
  v27 = (v26 + v25 * v17 + 2 * v13);
  if (v18 >= 1)
  {
    v28 = 0;
    v29 = a1[19];
    v30 = v15 & 0xFFFFFFFE;
    v31 = *v20;
    v32 = v20[1];
    v33 = *result;
    result = result[1];
    LOWORD(a5) = *(v29 + 140);
    LOWORD(a6) = *(v29 + 142);
    LOWORD(v6) = *(v29 + 144);
    LOWORD(v7) = *(v29 + 146);
    v34 = 8191.0 / *(v29 + 128);
    v35 = LODWORD(a5);
    v36 = LODWORD(a6);
    v37 = v34 * *v29;
    v150 = v34 * *(v29 + 8);
    *&v38 = v34 * *(v29 + 20);
    v148 = *&v38;
    v149 = v34 * *(v29 + 16);
    v39 = v34 * *(v29 + 28);
    v40 = v6;
    v41 = v7;
    LOWORD(v38) = *(v29 + 148);
    v42 = v38;
    LOWORD(v38) = *(v29 + 150);
    v43 = v38;
    LOWORD(v38) = *(v29 + 152);
    v44 = v38;
    v45 = *(v29 + 36);
    v46 = *(v29 + 40);
    v47 = *(v29 + 44);
    v146 = *(v29 + 48) * 0.5;
    v147 = v39;
    v144 = *(v29 + 56) * 0.5;
    v145 = *(v29 + 52) * 0.5;
    v142 = *(v29 + 64) * 0.5;
    v143 = *(v29 + 60) * 0.5;
    v48 = *(v29 + 72);
    v49 = *(v29 + 68) * 0.5;
    v141 = v49;
    v51 = *(v29 + 76);
    v50 = *(v29 + 80);
    v52 = *(v29 + 84);
    v53 = *(v29 + 88);
    v54 = *(v29 + 92);
    v55 = *(v29 + 96);
    v56 = *(v29 + 100);
    v57 = *(v29 + 104);
    v58 = v29 + 164;
    v59 = v29 + 16548;
    v60 = *(v29 + 132);
    if (v60 >= 0x11)
    {
      v61 = 0;
    }

    else
    {
      v61 = 16 - v60;
    }

    v63 = *v22;
    v62 = v22[1];
    v64 = v62 + result * v17 + 2 * v13;
    if (!v62)
    {
      v64 = 0;
    }

    v65 = v63 + v33 * v17 + 2 * v13;
    v67 = *v19;
    v66 = v19[1];
    v68 = v66 + v32 * v12 + v10;
    if (!v66)
    {
      v68 = 0;
    }

    v69 = (v67 + v31 * v12 + v10);
    do
    {
      if (v30 >= 1)
      {
        v70 = 0;
        v71 = v69;
        v72 = v65;
        do
        {
          LOBYTE(v49) = *(v68 + v70 + 1);
          v73 = LODWORD(v49) - v36;
          v74 = LODWORD(v150);
          v75 = v150 * v73;
          LOBYTE(v74) = *v71;
          v76 = v37 * (v74 - v35);
          v77 = (v150 * v73) + v76;
          v78 = 8191.0;
          if (v77 <= 8191.0)
          {
            v78 = (v150 * v73) + v76;
            if (v77 < 0.0)
            {
              v78 = 0.0;
            }
          }

          LOBYTE(v77) = *(v68 + v70);
          v79 = LODWORD(v77) - v36;
          v80 = (v148 * v73) + (v79 * v149);
          v81 = 8191.0;
          if ((v76 + v80) <= 8191.0)
          {
            v81 = v76 + v80;
            if ((v76 + v80) < 0.0)
            {
              v81 = 0.0;
            }
          }

          v82 = v147 * v79;
          v83 = v82 + v76;
          v84 = (v82 + v76) <= 8191.0;
          v85 = 8191.0;
          if (v84)
          {
            v85 = v83;
            if (v83 < 0.0)
            {
              v85 = 0.0;
            }
          }

          LOBYTE(v83) = v71[1];
          v86 = v37 * (LODWORD(v83) - v35);
          v87 = v75 + v86;
          v84 = (v75 + v86) <= 8191.0;
          v88 = 8191.0;
          if (v84)
          {
            v88 = v87;
            if (v87 < 0.0)
            {
              v88 = 0.0;
            }
          }

          v89 = v80 + v86;
          v84 = (v80 + v86) <= 8191.0;
          v90 = 8191.0;
          if (v84)
          {
            v90 = v89;
            if (v89 < 0.0)
            {
              v90 = 0.0;
            }
          }

          v91 = v82 + v86;
          v84 = (v82 + v86) <= 8191.0;
          v92 = 8191.0;
          if (v84)
          {
            v92 = v91;
            if (v91 < 0.0)
            {
              v92 = 0.0;
            }
          }

          _H4 = *(v58 + 2 * llroundf(fminf(fmaxf(v78, 0.0), 8191.0)));
          __asm { FCVT            S4, H4 }

          _H5 = *(v58 + 2 * llroundf(fminf(fmaxf(v81, 0.0), 8191.0)));
          __asm { FCVT            S5, H5 }

          _H6 = *(v58 + 2 * llroundf(fminf(fmaxf(v85, 0.0), 8191.0)));
          __asm { FCVT            S6, H6 }

          _H7 = *(v58 + 2 * llroundf(fminf(fmaxf(v88, 0.0), 8191.0)));
          _H18 = *(v58 + 2 * llroundf(fminf(fmaxf(v90, 0.0), 8191.0)));
          __asm
          {
            FCVT            S7, H7
            FCVT            S18, H18
          }

          _H24 = *(v58 + 2 * llroundf(fminf(fmaxf(v92, 0.0), 8191.0)));
          __asm { FCVT            S24, H24 }

          v109 = ((v51 * _S5) + (_S4 * v48)) + (_S6 * v50);
          v110 = ((v53 * _S5) + (_S4 * v52)) + (_S6 * v54);
          _S6 = ((v56 * _S5) + (_S4 * v55)) + (_S6 * v57);
          v112 = ((v51 * _S18) + (_S7 * v48)) + (_S24 * v50);
          v113 = ((v53 * _S18) + (_S7 * v52)) + (_S24 * v54);
          v114 = ((v56 * _S18) + (_S7 * v55)) + (_S24 * v57);
          LOWORD(_S4) = *(v59 + 2 * llroundf(fminf(fmaxf(v109, 0.0), 8191.0)));
          __asm { FCVT            S4, H4 }

          LOWORD(_S5) = *(v59 + 2 * llroundf(fminf(fmaxf(v110, 0.0), 8191.0)));
          __asm { FCVT            S5, H5 }

          LOWORD(_S6) = *(v59 + 2 * llroundf(fminf(fmaxf(_S6, 0.0), 8191.0)));
          __asm { FCVT            S6, H6 }

          _H7 = *(v59 + 2 * llroundf(fminf(fmaxf(v112, 0.0), 8191.0)));
          _H24 = *(v59 + 2 * llroundf(fminf(fmaxf(v113, 0.0), 8191.0)));
          _H26 = *(v59 + 2 * llroundf(fminf(fmaxf(v114, 0.0), 8191.0)));
          v121 = (((v46 * _S5) + (v45 * _S4)) + (v47 * _S6)) + v40;
          v122 = v42;
          if (v121 <= v42)
          {
            v122 = (((v46 * _S5) + (v45 * _S4)) + (v47 * _S6)) + v40;
            if (v121 < v40)
            {
              v122 = v40;
            }
          }

          __asm
          {
            FCVT            S25, H7
            FCVT            S24, H24
            FCVT            S7, H26
          }

          v126 = (((v46 * _S24) + (v45 * _S25)) + (v47 * _S7)) + v40;
          *v72 = llroundf(v122) << v61;
          v127 = v42;
          if (v126 <= v42)
          {
            v127 = (((v46 * _S24) + (v45 * _S25)) + (v47 * _S7)) + v40;
            if (v126 < v40)
            {
              v127 = v40;
            }
          }

          v72[1] = llroundf(v127) << v61;
          v128 = _S4 + _S25;
          v129 = _S5 + _S24;
          v130 = _S6 + _S7;
          v131 = ((v41 + (v128 * v146)) + (v129 * v145)) + (v130 * v144);
          v132 = v44;
          if (v131 <= v44)
          {
            v132 = ((v41 + (v128 * v146)) + (v129 * v145)) + (v130 * v144);
            if (v131 < v43)
            {
              v132 = v43;
            }
          }

          v133 = (v64 + 2 * v70);
          v49 = ((v41 + (v128 * v143)) + (v129 * v142)) + (v130 * v141);
          *v133 = llroundf(v132) << v61;
          v134 = v44;
          if (v49 <= v44)
          {
            v134 = v49;
            if (v49 < v43)
            {
              v134 = v43;
            }
          }

          v133[1] = llroundf(v134) << v61;
          v70 += 2;
          v71 += 2;
          v72 += 2;
        }

        while (v70 < v30);
      }

      v69 += v31;
      v68 += v32;
      v65 += v33;
      v64 += result;
      ++v28;
    }

    while (v28 != v18);
  }

  if (v24 && v26)
  {
    if (v18 >= 1)
    {
      v135 = 0;
      v136 = (v24 + v23 * v12 + v10);
      do
      {
        if (v15 >= 1)
        {
          v137 = v15;
          v138 = v27;
          v139 = v136;
          do
          {
            v140 = *v139++;
            *v138++ = v140 | (v140 << 8);
            --v137;
          }

          while (v137);
        }

        v136 += v23;
        v27 += v25;
        ++v135;
      }

      while (v135 != v18);
    }
  }

  else if (v26 && v18 >= 1)
  {
    do
    {
      if (v15 >= 1)
      {
        result = memset(v27, 255, 2 * v15);
      }

      v27 += v25;
      --v18;
    }

    while (v18);
  }

  *(a1 + a2 + 40) = 0;
  return result;
}

uint64_t vt_Copy_422vf_rgb_xf422_neon_fp16(uint64_t a1, uint64_t *a2, uint64_t a3, unint64_t *a4, unint64_t *a5, uint64_t *a6, uint64_t a7, void *a8, void *a9)
{
  v66 = a7;
  v67 = a3;
  v75 = a5;
  v68 = a4;
  v76 = *MEMORY[0x1E69E9840];
  v11 = *(a1 + 162);
  v13 = *a2;
  v12 = a2[1];
  v14 = a2[2];
  v65 = a2[3];
  v15 = a2[4];
  v70 = a2[5];
  v71 = v12;
  v16 = *a6;
  v69 = a6[1];
  v17 = a6[2];
  v18 = a6[3];
  v20 = a6[4];
  v19 = a6[5];
  v73 = v16;
  v74 = v19;
  v72 = v13;
  v22 = v15 + v14 != v13 || v20 + v17 != v16;
  if (v11 == 255)
  {
    v23 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v23)
    {
      v24 = 0;
LABEL_68:
      free(v23);
      return v24;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v11 + 160, a3, a4);
    v23 = (&v62 - v25);
    bzero(&v62 - v25, v26);
  }

  v64 = a1;
  v27 = a9;
  v28 = v17 - 1;
  v29 = v14 - 1;
  if (v20)
  {
    v30 = v15 + 1;
  }

  else
  {
    v29 = v14;
    v30 = v15;
  }

  if (v20)
  {
    v31 = v20 + 1;
  }

  else
  {
    v28 = v17;
    v31 = v20;
  }

  if (v28)
  {
    v32 = v68;
    if (v22 || (v33 = v29 + 1 + v30, v33 > *v68) || ((v33 + (v33 >> 63)) & 0xFFFFFFFFFFFFFFFELL) > v68[1] || (v34 = v68[2], v33 > v34) && v34 || (v35 = v28 + 1 + v31, v36 = 2 * v35, 2 * v35 > *a8) || ((2 * (v35 + (v35 >> 63))) & 0xFFFFFFFFFFFFFFFCLL) > a8[1] || (v37 = a8[2], v36 > v37) && v37)
    {
      --v28;
      --v29;
    }

    else
    {
      ++v72;
      ++v73;
      ++v29;
      ++v28;
    }
  }

  else
  {
    v32 = v68;
  }

  if (v29 + v30 > v72)
  {
    v29 = v72 - v30;
  }

  if (v28 + v31 > v73)
  {
    v28 = v73 - v31;
  }

  if (v70 + v65 <= v71)
  {
    v38 = v65;
  }

  else
  {
    v38 = v71 - v70;
  }

  if (v74 + v18 <= v69)
  {
    v39 = v18;
  }

  else
  {
    v39 = v69 - v74;
  }

  if (v29 >= v28)
  {
    v40 = v28;
  }

  else
  {
    v40 = v29;
  }

  if (v38 >= v39)
  {
    v41 = v39;
  }

  else
  {
    v41 = v38;
  }

  v42 = v70 + v41 - 1;
  v43 = v40 + v30;
  v44 = v40 + v30 + *v32 * v42;
  v45 = *v75;
  v46 = v66;
  v63 = v30;
  if (v44 > v45)
  {
    v47 = v11;
    v48 = v31;
    v49 = a8;
    v50 = a9;
    goto LABEL_61;
  }

  if (*(v67 + 8) && ((v43 + 1 + ((v43 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v32[1] * v42 > v75[1])
  {
    v47 = v11;
    v48 = v31;
    v49 = a8;
    v50 = a9;
    goto LABEL_61;
  }

  if (*(v67 + 16) && v43 + v32[2] * v42 > v75[2])
  {
    v47 = v11;
    v48 = v31;
    v49 = a8;
    v50 = a9;
    goto LABEL_61;
  }

  v51 = v74 + v41 - 1;
  v52 = v40 + v31;
  if ((*a8 * v51 + 2 * (v40 + v31)) > *a9)
  {
    v47 = v11;
    v48 = v31;
    v49 = a8;
    v50 = a9;
    goto LABEL_61;
  }

  if (*(v66 + 8) && a8[1] * v51 + 4 * ((v52 + 1 + ((v52 + 1) >> 63)) >> 1) > a9[1])
  {
    v47 = v11;
    v48 = v31;
    v49 = a8;
    v50 = a9;
    goto LABEL_61;
  }

  if (*(v66 + 16) && (2 * v52 + a8[2] * v51) > a9[2])
  {
    v47 = v11;
    v48 = v31;
    v49 = a8;
    v50 = a9;
LABEL_61:
    fig_log_get_emitter();
    v24 = FigSignalErrorAtGM();
    v32 = v68;
    v27 = v50;
    a8 = v49;
    v31 = v48;
    v11 = v47;
    v30 = v63;
    if (v24)
    {
      goto LABEL_67;
    }
  }

  *v23 = v11;
  v53 = v71;
  *(v23 + 4) = v72;
  *(v23 + 12) = v53;
  *(v23 + 20) = v40;
  *(v23 + 28) = v41;
  *(v23 + 36) = v30;
  v54 = v69;
  *(v23 + 44) = v70;
  v23[11] = v54;
  v23[12] = v40;
  v23[13] = v41;
  v23[14] = v31;
  v23[7] = v67;
  v23[8] = v32;
  v55 = v73;
  v56 = v74;
  v23[9] = v75;
  v23[10] = v55;
  v23[15] = v56;
  v23[16] = v46;
  v23[17] = a8;
  v23[18] = v27;
  v23[19] = v64;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v11, global_queue, v23, vt_Copy_422vf_rgb_xf422_neon_fp16_GCD);
  if (!v11)
  {
    return 0;
  }

  v58 = (v23 + 20);
  v59 = v11;
  while (1)
  {
    v60 = *v58++;
    v24 = v60;
    if (v60)
    {
      break;
    }

    if (!--v59)
    {
      v24 = 0;
      break;
    }
  }

LABEL_67:
  if (v11 == 255)
  {
    goto LABEL_68;
  }

  return v24;
}

uint64_t vt_Copy_422vf_rgb_xf422_neon_fp16_GCD(uint64_t result, uint64_t a2, float32x4_t a3)
{
  v9 = result;
  v10 = *result;
  v138 = *(result + 28) * a2 / v10 + *(result + 44);
  v139 = *(result + 36);
  v11 = *(result + 112);
  v13 = *(result + 96);
  v12 = *(result + 104);
  v14 = v12 * a2 / v10;
  v15 = v14 + *(result + 120);
  v16 = (v12 + v12 * a2) / v10 - v14;
  v17 = *(result + 56);
  v18 = *(result + 64);
  v19 = *(result + 128);
  v20 = *(result + 136);
  v21 = v18[2];
  v22 = v17[2];
  v23 = v20[2];
  v24 = v19[2];
  v25 = (v24 + v23 * v15 + 2 * v11);
  if (v16 >= 1)
  {
    v26 = 0;
    v27 = *(result + 152);
    v28 = *v18;
    v29 = v18[1];
    v30 = *v20;
    result = v20[1];
    v31 = v27[17].u16[2];
    v137 = v19[2];
    v32 = v27[17].u16[3];
    v33.i32[0] = v27[3].i32[1];
    v34 = v27[18].u16[0];
    v35 = v27[18].u16[1];
    v36 = v27[18].u16[2];
    v37 = v27[18].u16[3];
    v38 = v27[19].u16[0];
    _S23 = v27[4].f32[1];
    _S1 = v27[5].f32[0];
    _S2 = v27[5].f32[1];
    v42.i32[0] = v27[6].i32[0];
    v44.i32[0] = v27[6].i32[1];
    v43.i32[0] = v27[7].i32[0];
    v45 = v31;
    *v5.i16 = v31;
    a3.f32[0] = v27[17].u32[0] / v27[16].u32[0];
    v46 = v32;
    _S5 = a3.f32[0] * v27->f32[0];
    v48 = v34;
    v49 = v35;
    v50 = v36;
    v51 = v37;
    v52 = v38;
    v53 = vdupq_lane_s16(*v5.f32, 0);
    __asm { FCVT            H8, S5 }

    *_Q9.i16 = -v32;
    v33.i32[1] = v27[1].i32[0];
    *v5.f32 = vmul_n_f32(v33, a3.f32[0]);
    v59 = vdupq_lane_s32(vcvt_f16_f32(v5), 0);
    *a3.f32 = vmul_n_f32(v27[2], a3.f32[0]);
    v60 = vdupq_lane_s32(vcvt_f16_f32(a3), 0);
    v61 = vmulq_n_f16(v59, *_Q9.i16);
    v62 = vmulq_n_f16(v60, *_Q9.i16);
    v42.i32[1] = v27[7].i32[1];
    __asm { FCVT            H9, S23 }

    v146 = *_Q9.i16;
    *v4.f32 = vmul_f32(v42, 0x3F0000003F000000);
    v144 = vdupq_lane_s32(vcvt_f16_f32(v4), 0);
    v44.i32[1] = v27[8].i32[0];
    *v6.f32 = vmul_f32(v44, 0x3F0000003F000000);
    v63 = vdupq_lane_s32(vcvt_f16_f32(v6), 0);
    v152 = v63;
    v43.i32[1] = v27[8].i32[1];
    *v63.f32 = vmul_f32(v43, 0x3F0000003F000000);
    v64 = vcvt_f16_f32(v63);
    v65 = vdupq_lane_s32(v64, 0);
    *v64.i16 = v34;
    v66 = vdupq_lane_s16(v64, 0);
    *v64.i16 = v35;
    v67 = vdupq_lane_s16(v64, 0);
    *v64.i16 = v36;
    v68 = vdupq_lane_s16(v64, 0);
    v142 = v68;
    v143 = v67;
    *v68.i16 = v37;
    v69 = vdupq_lane_s16(*v68.i8, 0);
    __asm { FCVT            H9, S1 }

    v141 = _Q9;
    *v68.i16 = v38;
    v151 = vdupq_lane_s16(*v68.i8, 0);
    v70 = v27[16].u8[4];
    if (v70 >= 0x11)
    {
      v71 = 0;
    }

    else
    {
      v71 = 16 - v70;
    }

    v73 = *v19;
    v72 = v19[1];
    if (v72)
    {
      v74 = v72 + result * v15 + 2 * v11;
    }

    else
    {
      v74 = 0;
    }

    v75 = v73 + v30 * v15 + 2 * v11;
    v77 = *v17;
    v76 = v17[1];
    if (v76)
    {
      v78 = (v76 + v29 * v138 + v139);
    }

    else
    {
      v78 = 0;
    }

    v79 = (v77 + v28 * v138 + v139);
    v24 = v137;
    __asm { FCVT            H9, S2 }

    v140 = _H9;
    v81 = vdupq_n_s16(v71);
    v154 = a3.f32[0];
    v155 = v5.f32[0];
    v82 = v5.f32[1];
    v83 = a3.f32[1];
    v84 = v4.f32[1];
    v153 = v6.f32[0];
    v85 = v6.f32[1];
    v86.i32[0] = v63.i32[1];
    v149 = v60;
    v150 = v59;
    v147 = v62;
    v148 = v61;
    v145 = v4.i32[0];
    do
    {
      if (v13 < 8)
      {
        v108 = 0;
        v90 = v74;
        v89 = v75;
        v107 = v78;
        v88 = v79;
      }

      else
      {
        v87 = 0;
        v88 = v79;
        v89 = v75;
        v90 = v74;
        do
        {
          v91 = *&v78[v87];
          *v92.i8 = vzip1_s8(v91, 0);
          v92.u64[1] = vzip2_s8(v91, 0);
          v93 = vcvtq_f16_u16(v92);
          v94 = vmlaq_f16(v61, v59, v93);
          v95 = vmlaq_f16(v62, v60, v93);
          v96 = vuzp1q_s16(v95, v141).u64[0];
          v97 = vuzp2q_s16(v95, v141);
          *v97.i8 = vadd_f16(v96, *v97.i8);
          v98 = *v88++;
          *v99.i8 = vzip1_s8(v98, 0);
          v99.u64[1] = vzip2_s8(v98, 0);
          v100 = vsubq_f16(vcvtq_f16_u16(v99), v53);
          v101 = vmlaq_n_f16(vtrn2q_s16(v94, v94), v100, _H8);
          v102 = vmlaq_n_f16(vzip1q_s16(v97, v97), v100, _H8);
          v103 = vmlaq_n_f16(vtrn1q_s16(v94, v94), v100, _H8);
          v104 = vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v66, v101, v146), v102, *v141.i16), v103, v140), v66), v142);
          v105 = vpaddq_f16(v101, v102);
          v106 = vmlaq_f16(vmlaq_f16(v143, v144, vzip1q_s16(v105, v105)), v152, vzip2q_s16(v105, v105));
          v7 = *v151.i32;
          *v89++ = vshlq_u16(vcvtq_u16_f16(v104), v81);
          v86 = vshlq_u16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_f16(v106, v65, vaddq_f16(vtrn1q_s16(v103, v103), vtrn2q_s16(v103, v103))), v69), v151)), v81);
          *v90++ = v86;
          v87 += 8;
        }

        while (v87 < v13 - 7);
        v107 = &v78[v87];
        v108 = v13 & 0xFFFFFFF8;
        v4.i32[0] = v145;
        v83 = a3.f32[1];
        v82 = v5.f32[1];
        v85 = v6.f32[1];
        v84 = v4.f32[1];
      }

      while (v108 < (v13 & 0xFFFFFFFE))
      {
        v109 = v53;
        v86.i8[0] = *v107;
        *&v110 = v86.u32[0] - v46;
        LOBYTE(v7) = v107[1];
        v111 = LODWORD(v7) - v46;
        v112 = v82 * v111;
        v113 = (v83 * v111) + (*&v110 * v154);
        v114 = v155 * *&v110;
        LOBYTE(v110) = v88->i8[0];
        v115 = _S5 * (v110 - v45);
        v116 = (v82 * v111) + v115;
        v117 = v115 + v113;
        v118 = v114 + v115;
        v119 = (((_S1 * (v115 + v113)) + (_S23 * v116)) + (_S2 * (v114 + v115))) + v48;
        *v86.i32 = v50;
        if (v119 <= v50)
        {
          *v86.i32 = v119;
          if (v119 < v48)
          {
            *v86.i32 = v48;
          }
        }

        LOBYTE(v119) = v88->i8[1];
        v120 = _S5 * (LODWORD(v119) - v45);
        v121 = v112 + v120;
        v122 = v113 + v120;
        v123 = v114 + v120;
        v124 = (((_S1 * v122) + (_S23 * v121)) + (_S2 * (v114 + v120))) + v48;
        v89->i16[0] = llroundf(*v86.i32) << v71;
        v125 = v50;
        if (v124 <= v50)
        {
          v125 = v124;
          if (v124 < v48)
          {
            v125 = v48;
          }
        }

        v89->i16[1] = llroundf(v125) << v71;
        v126 = v116 + v121;
        v127 = v117 + v122;
        v128 = v118 + v123;
        v129 = ((v49 + ((v116 + v121) * v4.f32[0])) + (v127 * v153)) + (v128 * v63.f32[0]);
        v130 = v38;
        if (v129 <= v52)
        {
          v130 = v129;
          if (v129 < v51)
          {
            v130 = v51;
          }
        }

        *v86.i32 = ((v49 + (v126 * v84)) + (v127 * v85)) + (v128 * v63.f32[1]);
        v90->i16[0] = llroundf(v130) << v71;
        v7 = v38;
        v53 = v109;
        if (*v86.i32 <= v52)
        {
          v7 = *v86.i32;
          if (*v86.i32 < v51)
          {
            v7 = v51;
          }
        }

        v90->i16[1] = llroundf(v7) << v71;
        v90 = (v90 + 4);
        v108 += 2;
        v107 += 2;
        v88 = (v88 + 2);
        v89 = (v89 + 4);
      }

      v79 = (v79 + v28);
      v78 += v29;
      v75 += v30;
      v74 += result;
      ++v26;
      v60 = v149;
      v59 = v150;
      v62 = v147;
      v61 = v148;
    }

    while (v26 != v16);
  }

  if (v22 && v24)
  {
    if (v16 >= 1)
    {
      v131 = 0;
      v132 = (v22 + v21 * v138 + v139);
      do
      {
        if (v13 >= 1)
        {
          v133 = v13;
          v134 = v25;
          v135 = v132;
          do
          {
            v136 = *v135++;
            *v134++ = v136 | (v136 << 8);
            --v133;
          }

          while (v133);
        }

        v132 += v21;
        v25 += v23;
        ++v131;
      }

      while (v131 != v16);
    }
  }

  else if (v24 && v16 >= 1)
  {
    do
    {
      if (v13 >= 1)
      {
        result = memset(v25, 255, 2 * v13);
      }

      v25 += v23;
      --v16;
    }

    while (v16);
  }

  *(v9 + a2 + 40) = 0;
  return result;
}

uint64_t vt_Copy_422vf_rgb_xf422(uint64_t a1, uint64_t *a2, uint64_t a3, unint64_t *a4, unint64_t *a5, uint64_t *a6, uint64_t a7, void *a8, void *a9)
{
  v66 = a7;
  v67 = a3;
  v75 = a5;
  v68 = a4;
  v76 = *MEMORY[0x1E69E9840];
  v11 = *(a1 + 162);
  v13 = *a2;
  v12 = a2[1];
  v14 = a2[2];
  v65 = a2[3];
  v15 = a2[4];
  v70 = a2[5];
  v71 = v12;
  v16 = *a6;
  v69 = a6[1];
  v17 = a6[2];
  v18 = a6[3];
  v20 = a6[4];
  v19 = a6[5];
  v73 = v16;
  v74 = v19;
  v72 = v13;
  v22 = v15 + v14 != v13 || v20 + v17 != v16;
  if (v11 == 255)
  {
    v23 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v23)
    {
      v24 = 0;
LABEL_68:
      free(v23);
      return v24;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v11 + 160, a3, a4);
    v23 = (&v62 - v25);
    bzero(&v62 - v25, v26);
  }

  v64 = a1;
  v27 = a9;
  v28 = v17 - 1;
  v29 = v14 - 1;
  if (v20)
  {
    v30 = v15 + 1;
  }

  else
  {
    v29 = v14;
    v30 = v15;
  }

  if (v20)
  {
    v31 = v20 + 1;
  }

  else
  {
    v28 = v17;
    v31 = v20;
  }

  if (v28)
  {
    v32 = v68;
    if (v22 || (v33 = v29 + 1 + v30, v33 > *v68) || ((v33 + (v33 >> 63)) & 0xFFFFFFFFFFFFFFFELL) > v68[1] || (v34 = v68[2], v33 > v34) && v34 || (v35 = v28 + 1 + v31, v36 = 2 * v35, 2 * v35 > *a8) || ((2 * (v35 + (v35 >> 63))) & 0xFFFFFFFFFFFFFFFCLL) > a8[1] || (v37 = a8[2], v36 > v37) && v37)
    {
      --v28;
      --v29;
    }

    else
    {
      ++v72;
      ++v73;
      ++v29;
      ++v28;
    }
  }

  else
  {
    v32 = v68;
  }

  if (v29 + v30 > v72)
  {
    v29 = v72 - v30;
  }

  if (v28 + v31 > v73)
  {
    v28 = v73 - v31;
  }

  if (v70 + v65 <= v71)
  {
    v38 = v65;
  }

  else
  {
    v38 = v71 - v70;
  }

  if (v74 + v18 <= v69)
  {
    v39 = v18;
  }

  else
  {
    v39 = v69 - v74;
  }

  if (v29 >= v28)
  {
    v40 = v28;
  }

  else
  {
    v40 = v29;
  }

  if (v38 >= v39)
  {
    v41 = v39;
  }

  else
  {
    v41 = v38;
  }

  v42 = v70 + v41 - 1;
  v43 = v40 + v30;
  v44 = v40 + v30 + *v32 * v42;
  v45 = *v75;
  v46 = v66;
  v63 = v30;
  if (v44 > v45)
  {
    v47 = v11;
    v48 = v31;
    v49 = a8;
    v50 = a9;
    goto LABEL_61;
  }

  if (*(v67 + 8) && ((v43 + 1 + ((v43 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v32[1] * v42 > v75[1])
  {
    v47 = v11;
    v48 = v31;
    v49 = a8;
    v50 = a9;
    goto LABEL_61;
  }

  if (*(v67 + 16) && v43 + v32[2] * v42 > v75[2])
  {
    v47 = v11;
    v48 = v31;
    v49 = a8;
    v50 = a9;
    goto LABEL_61;
  }

  v51 = v74 + v41 - 1;
  v52 = v40 + v31;
  if ((*a8 * v51 + 2 * (v40 + v31)) > *a9)
  {
    v47 = v11;
    v48 = v31;
    v49 = a8;
    v50 = a9;
    goto LABEL_61;
  }

  if (*(v66 + 8) && a8[1] * v51 + 4 * ((v52 + 1 + ((v52 + 1) >> 63)) >> 1) > a9[1])
  {
    v47 = v11;
    v48 = v31;
    v49 = a8;
    v50 = a9;
    goto LABEL_61;
  }

  if (*(v66 + 16) && (2 * v52 + a8[2] * v51) > a9[2])
  {
    v47 = v11;
    v48 = v31;
    v49 = a8;
    v50 = a9;
LABEL_61:
    fig_log_get_emitter();
    v24 = FigSignalErrorAtGM();
    v32 = v68;
    v27 = v50;
    a8 = v49;
    v31 = v48;
    v11 = v47;
    v30 = v63;
    if (v24)
    {
      goto LABEL_67;
    }
  }

  *v23 = v11;
  v53 = v71;
  *(v23 + 4) = v72;
  *(v23 + 12) = v53;
  *(v23 + 20) = v40;
  *(v23 + 28) = v41;
  *(v23 + 36) = v30;
  v54 = v69;
  *(v23 + 44) = v70;
  v23[11] = v54;
  v23[12] = v40;
  v23[13] = v41;
  v23[14] = v31;
  v23[7] = v67;
  v23[8] = v32;
  v55 = v73;
  v56 = v74;
  v23[9] = v75;
  v23[10] = v55;
  v23[15] = v56;
  v23[16] = v46;
  v23[17] = a8;
  v23[18] = v27;
  v23[19] = v64;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v11, global_queue, v23, vt_Copy_422vf_rgb_xf422_GCD);
  if (!v11)
  {
    return 0;
  }

  v58 = (v23 + 20);
  v59 = v11;
  while (1)
  {
    v60 = *v58++;
    v24 = v60;
    if (v60)
    {
      break;
    }

    if (!--v59)
    {
      v24 = 0;
      break;
    }
  }

LABEL_67:
  if (v11 == 255)
  {
    goto LABEL_68;
  }

  return v24;
}

uint64_t *vt_Copy_422vf_rgb_xf422_GCD(void *a1, uint64_t a2)
{
  v9 = *(a1 + 36);
  v10 = *a1;
  v11 = *(a1 + 28) * a2 / v10 + *(a1 + 44);
  v12 = a1[14];
  v14 = a1[12];
  v13 = a1[13];
  v15 = v13 * a2 / v10;
  v16 = v15 + a1[15];
  v17 = (v13 + v13 * a2) / v10 - v15;
  v18 = a1[7];
  v19 = a1[8];
  v21 = a1[16];
  result = a1[17];
  v22 = v19[2];
  v23 = v18[2];
  v24 = result[2];
  v25 = v21[2];
  v26 = (v25 + v24 * v16 + 2 * v12);
  if (v17 >= 1)
  {
    v27 = 0;
    v28 = a1[19];
    v29 = v14 & 0xFFFFFFFE;
    v30 = *v19;
    v31 = v19[1];
    v32 = *result;
    result = result[1];
    *&v33 = *(v28 + 128);
    *&v34 = *(v28 + 136);
    v35 = *&v34 / *&v33;
    LOWORD(v33) = *(v28 + 140);
    v36 = v33;
    LOWORD(v34) = *(v28 + 142);
    v37 = v34;
    v38 = v35 * *v28;
    v39 = v35 * *(v28 + 8);
    v40 = v35 * *(v28 + 16);
    v41 = v35 * *(v28 + 20);
    v42 = *(v28 + 28);
    v43 = v35 * v42;
    LOWORD(v42) = *(v28 + 144);
    v44 = LODWORD(v42);
    LOWORD(v2) = *(v28 + 146);
    v45 = v2;
    LOWORD(v3) = *(v28 + 148);
    v46 = v3;
    LOWORD(v4) = *(v28 + 150);
    v47 = v4;
    LOWORD(v5) = *(v28 + 152);
    v48 = v5;
    v49 = *(v28 + 36);
    v50 = *(v28 + 40);
    v51 = *(v28 + 44);
    v52 = *(v28 + 48) * 0.5;
    v53 = *(v28 + 52) * 0.5;
    v54 = *(v28 + 56) * 0.5;
    v55 = *(v28 + 60) * 0.5;
    v56 = *(v28 + 64) * 0.5;
    v57 = *(v28 + 68);
    v58 = v57 * 0.5;
    v59 = *(v28 + 132);
    if (v59 >= 0x11)
    {
      v60 = 0;
    }

    else
    {
      v60 = 16 - v59;
    }

    v62 = *v21;
    v61 = v21[1];
    v63 = v61 + result * v16 + 2 * v12;
    if (!v61)
    {
      v63 = 0;
    }

    v64 = v62 + v32 * v16 + 2 * v12;
    v66 = *v18;
    v65 = v18[1];
    v67 = v65 + v31 * v11 + v9;
    if (!v65)
    {
      v67 = 0;
    }

    v68 = (v66 + v30 * v11 + v9);
    do
    {
      if (v29 >= 1)
      {
        v69 = 0;
        v70 = v68;
        v71 = v64;
        do
        {
          LOBYTE(v57) = *(v67 + v69);
          *&v72 = LODWORD(v57) - v37;
          LOBYTE(v6) = *(v67 + v69 + 1);
          v73 = LODWORD(v6) - v37;
          v74 = v39 * v73;
          v75 = (v41 * v73) + (*&v72 * v40);
          v76 = v43 * *&v72;
          LOBYTE(v72) = *v70;
          v77 = v38 * (v72 - v36);
          v78 = (v39 * v73) + v77;
          v79 = v77 + v75;
          v80 = v76 + v77;
          v81 = (((v50 * v79) + (v49 * v78)) + (v51 * v80)) + v44;
          v82 = v46;
          if (v81 <= v46)
          {
            v82 = (((v50 * v79) + (v49 * v78)) + (v51 * v80)) + v44;
            if (v81 < v44)
            {
              v82 = v44;
            }
          }

          LOBYTE(v81) = v70[1];
          v83 = v38 * (LODWORD(v81) - v36);
          v84 = v74 + v83;
          v85 = v75 + v83;
          v86 = v76 + v83;
          v87 = (((v50 * v85) + (v49 * v84)) + (v51 * (v76 + v83))) + v44;
          *v71 = llroundf(v82) << v60;
          v88 = v46;
          if (v87 <= v46)
          {
            v88 = v87;
            if (v87 < v44)
            {
              v88 = v44;
            }
          }

          v71[1] = llroundf(v88) << v60;
          v89 = v78 + v84;
          v90 = v79 + v85;
          v91 = v80 + v86;
          v92 = ((v45 + (v89 * v52)) + (v90 * v53)) + (v91 * v54);
          v93 = v48;
          if (v92 <= v48)
          {
            v93 = ((v45 + (v89 * v52)) + (v90 * v53)) + (v91 * v54);
            if (v92 < v47)
            {
              v93 = v47;
            }
          }

          v94 = (v63 + 2 * v69);
          v57 = ((v45 + (v89 * v55)) + (v90 * v56)) + (v91 * v58);
          *v94 = llroundf(v93) << v60;
          v6 = v48;
          if (v57 <= v48)
          {
            v6 = v57;
            if (v57 < v47)
            {
              v6 = v47;
            }
          }

          v94[1] = llroundf(v6) << v60;
          v69 += 2;
          v70 += 2;
          v71 += 2;
        }

        while (v69 < v29);
      }

      v68 += v30;
      v67 += v31;
      v64 += v32;
      v63 += result;
      ++v27;
    }

    while (v27 != v17);
  }

  if (v23 && v25)
  {
    if (v17 >= 1)
    {
      v95 = 0;
      v96 = (v23 + v22 * v11 + v9);
      do
      {
        if (v14 >= 1)
        {
          v97 = v14;
          v98 = v26;
          v99 = v96;
          do
          {
            v100 = *v99++;
            *v98++ = v100 | (v100 << 8);
            --v97;
          }

          while (v97);
        }

        v96 += v22;
        v26 += v24;
        ++v95;
      }

      while (v95 != v17);
    }
  }

  else if (v25 && v17 >= 1)
  {
    do
    {
      if (v14 >= 1)
      {
        result = memset(v26, 255, 2 * v14);
      }

      v26 += v24;
      --v17;
    }

    while (v17);
  }

  *(a1 + a2 + 40) = 0;
  return result;
}

uint64_t vt_Copy_422vf_TRC_Tone_Mat_TRC_v216(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4, void *a5, uint64_t *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v49 = a7;
  v50 = a8;
  v56 = a4;
  v57 = a5;
  v51 = a3;
  v58 = *MEMORY[0x1E69E9840];
  v48 = a1;
  v9 = *(a1 + 162);
  v10 = *a2;
  v11 = a2[1];
  v12 = a2[2];
  v13 = a2[3];
  v14 = a2[4];
  v15 = a2[5];
  v16 = *a6;
  v52 = a6[1];
  v53 = v10;
  v18 = a6[2];
  v17 = a6[3];
  v19 = a6[4];
  v54 = a6[5];
  v55 = v16;
  if (v9 == 255)
  {
    v20 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v20)
    {
      v21 = 0;
LABEL_39:
      free(v20);
      return v21;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v9 + 160, a3, a4);
    v20 = (&v47 - v22);
    bzero(&v47 - v22, v23);
  }

  v24 = v18 - 1;
  v25 = v12 - 1;
  if (v19)
  {
    ++v14;
  }

  else
  {
    v25 = v12;
  }

  if (v19)
  {
    v26 = v19 + 1;
  }

  else
  {
    v24 = v18;
    v26 = v19;
  }

  v27 = v25 - (v24 & 1);
  v28 = v24 & 0xFFFFFFFFFFFFFFFELL;
  if (v27 + v14 > v53)
  {
    v27 = v53 - v14;
  }

  if (v28 + v26 > v55)
  {
    v28 = v55 - v26;
  }

  if (v15 + v13 <= v11)
  {
    v29 = v13;
  }

  else
  {
    v29 = v11 - v15;
  }

  if (v54 + v17 <= v52)
  {
    v30 = v17;
  }

  else
  {
    v30 = v52 - v54;
  }

  if (v27 >= v28)
  {
    v31 = v28;
  }

  else
  {
    v31 = v27;
  }

  if (v29 >= v30)
  {
    v32 = v30;
  }

  else
  {
    v32 = v29;
  }

  v33 = v15 + v32 - 1;
  v34 = v31 + v14;
  if (((v31 + v14 + *v56 * v33) > *v57 || (v35 = v51, *(v51 + 8)) && ((v34 + 1 + ((v34 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v56[1] * v33 > v57[1] || *(v51 + 16) && (v34 + v56[2] * v33) > v57[2]) && (fig_log_get_emitter(), v36 = FigSignalErrorAtGM(), v35 = v51, v36))
  {
    v21 = v36;
  }

  else
  {
    *v20 = v9;
    v37 = v52;
    *(v20 + 4) = v53;
    *(v20 + 12) = v11;
    *(v20 + 20) = v31;
    *(v20 + 28) = v32;
    *(v20 + 36) = v14;
    *(v20 + 44) = v15;
    v20[11] = v37;
    v20[12] = v31;
    v20[13] = v32;
    v20[14] = v26;
    v39 = v55;
    v38 = v56;
    v20[7] = v35;
    v20[8] = v38;
    v20[9] = v57;
    v20[10] = v39;
    v41 = v49;
    v40 = v50;
    v20[15] = v54;
    v20[16] = v41;
    v20[17] = v40;
    v20[18] = a9;
    v20[19] = v48;
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_apply_f(v9, global_queue, v20, vt_Copy_422vf_TRC_Tone_Mat_TRC_v216_GCD);
    if (!v9)
    {
      return 0;
    }

    v43 = (v20 + 20);
    v44 = v9;
    while (1)
    {
      v45 = *v43++;
      v21 = v45;
      if (v45)
      {
        break;
      }

      if (!--v44)
      {
        v21 = 0;
        break;
      }
    }
  }

  if (v9 == 255)
  {
    goto LABEL_39;
  }

  return v21;
}

void *vt_Copy_422vf_TRC_Tone_Mat_TRC_v216_GCD(void *result, uint64_t a2, double a3, float a4, float a5)
{
  v10 = result;
  v11 = *(result + 36);
  v12 = *result;
  v13 = *(result + 28) * a2 / v12 + *(result + 44);
  v14 = result[14];
  v16 = result[12];
  v15 = result[13];
  v17 = v15 * a2 / v12;
  v18 = v17 + result[15];
  v19 = (v15 + v15 * a2) / v12 - v17;
  v20 = result[7];
  v21 = result[8];
  v22 = result[16];
  v23 = result[17];
  v24 = v21[2];
  v25 = v20[2];
  v26 = v23[1];
  v27 = v22[1];
  v28 = (v27 + v26 * v18 + 2 * v14);
  if (v27)
  {
    v29 = v27 + v26 * v18 + 2 * v14;
  }

  else
  {
    v29 = 0;
  }

  if (v19 >= 1)
  {
    v30 = 0;
    v31 = result[19];
    v32 = v16 & 0xFFFFFFFE;
    v33 = *v21;
    v34 = v21[1];
    v35 = *v23;
    LOWORD(a4) = *(v31 + 140);
    LOWORD(a5) = *(v31 + 142);
    LOWORD(v5) = *(v31 + 144);
    LOWORD(v6) = *(v31 + 146);
    LOWORD(v7) = *(v31 + 148);
    LOWORD(v8) = *(v31 + 150);
    v36 = 8191.0 / *(v31 + 128);
    v174 = LODWORD(a4);
    v37 = LODWORD(a5);
    v172 = v36 * *(v31 + 8);
    v173 = v36 * *v31;
    v170 = v36 * *(v31 + 20);
    v171 = v36 * *(v31 + 16);
    v38 = v36 * *(v31 + 28);
    v39 = v5;
    *&v40 = v6;
    v168 = v6;
    v169 = v38;
    v41 = v7;
    v42 = v8;
    LOWORD(v40) = *(v31 + 152);
    v43 = v40;
    v44 = *(v31 + 36);
    v45 = *(v31 + 40);
    v46 = *(v31 + 44);
    v166 = *(v31 + 52) * 0.5;
    v167 = *(v31 + 48) * 0.5;
    v164 = *(v31 + 60) * 0.5;
    v165 = *(v31 + 56) * 0.5;
    v47 = *(v31 + 72);
    v48 = *(v31 + 68) * 0.5;
    v162 = v48;
    v163 = *(v31 + 64) * 0.5;
    v50 = *(v31 + 76);
    v49 = *(v31 + 80);
    v51 = *(v31 + 84);
    v52 = *(v31 + 88);
    v53 = *(v31 + 92);
    v54 = *(v31 + 96);
    v55 = *(v31 + 100);
    v56 = *(v31 + 104);
    result = (v31 + 164);
    v57 = v31 + 16548;
    v58 = *v22 + v35 * v18;
    v59 = v31 + 32932;
    v60 = (v58 + 2 * v14);
    v62 = *v20;
    v61 = v20[1];
    v63 = v61 + v34 * v13 + v11;
    if (!v61)
    {
      v63 = 0;
    }

    v64 = (v62 + v33 * v13 + v11);
    v66 = *(v31 + 108);
    v65 = *(v31 + 112);
    v67 = *(v31 + 116);
    v68 = *(v31 + 120);
    do
    {
      if (v32 >= 1)
      {
        v69 = 0;
        v70 = v64;
        v71 = v29;
        v72 = v60;
        do
        {
          LOBYTE(v48) = *(v63 + v69 + 1);
          v73 = LODWORD(v48) - v37;
          v74 = LODWORD(v172);
          v75 = v172 * v73;
          LOBYTE(v74) = *v70;
          v76 = v173 * (v74 - v174);
          v77 = (v172 * v73) + v76;
          v78 = 8191.0;
          if (v77 <= 8191.0)
          {
            v78 = (v172 * v73) + v76;
            if (v77 < 0.0)
            {
              v78 = 0.0;
            }
          }

          LOBYTE(v77) = *(v63 + v69);
          v79 = v37;
          v80 = LODWORD(v77) - v37;
          v81 = (v170 * v73) + (v80 * v171);
          v82 = 8191.0;
          if ((v76 + v81) <= 8191.0)
          {
            v82 = v76 + v81;
            if ((v76 + v81) < 0.0)
            {
              v82 = 0.0;
            }
          }

          v83 = v169 * v80;
          v84 = (v169 * v80) + v76;
          v85 = 8191.0;
          if (v84 <= 8191.0)
          {
            v85 = v84;
            if (v84 < 0.0)
            {
              v85 = 0.0;
            }
          }

          LOBYTE(v84) = v70[1];
          v86 = v173 * (LODWORD(v84) - v174);
          v87 = v75 + v86;
          v88 = (v75 + v86) <= 8191.0;
          v89 = 8191.0;
          if (v88)
          {
            v89 = v87;
            if (v87 < 0.0)
            {
              v89 = 0.0;
            }
          }

          v90 = v81 + v86;
          v88 = (v81 + v86) <= 8191.0;
          v91 = 8191.0;
          if (v88)
          {
            v91 = v90;
            if (v90 < 0.0)
            {
              v91 = 0.0;
            }
          }

          v92 = v83 + v86;
          v88 = (v83 + v86) <= 8191.0;
          v93 = 8191.0;
          if (v88)
          {
            v93 = v92;
            if (v92 < 0.0)
            {
              v93 = 0.0;
            }
          }

          _H0 = *(result + llroundf(fminf(fmaxf(v78, 0.0), 8191.0)));
          __asm { FCVT            S24, H0 }

          _H0 = *(result + llroundf(fminf(fmaxf(v82, 0.0), 8191.0)));
          __asm { FCVT            S25, H0 }

          _H0 = *(result + llroundf(fminf(fmaxf(v85, 0.0), 8191.0)));
          __asm { FCVT            S26, H0 }

          _H1 = *(result + llroundf(fminf(fmaxf(v89, 0.0), 8191.0)));
          _H27 = *(result + llroundf(fminf(fmaxf(v91, 0.0), 8191.0)));
          _H2 = *(result + llroundf(fminf(fmaxf(v93, 0.0), 8191.0)));
          v107 = (((v65 * _S25) + (v66 * _S24)) + (v67 * _S26)) + (v68 * fmaxf(_S24, fmaxf(_S25, _S26)));
          v108 = 8191.0;
          if (v107 <= 8191.0)
          {
            v108 = v107;
            if (v107 < 0.0)
            {
              v108 = 0.0;
            }
          }

          __asm
          {
            FCVT            S28, H1
            FCVT            S30, H27
            FCVT            S1, H2
          }

          _H0 = *(v57 + 2 * llroundf(v108));
          __asm { FCVT            S0, H0 }

          v114 = _S24 * _S0;
          v115 = _S25 * _S0;
          v116 = _S26 * _S0;
          v117 = (((v65 * _S30) + (v66 * _S28)) + (v67 * _S1)) + (v68 * fmaxf(_S28, fmaxf(_S30, _S1)));
          v118 = 8191.0;
          if (v117 <= 8191.0)
          {
            v118 = v117;
            if (v117 < 0.0)
            {
              v118 = 0.0;
            }
          }

          _H0 = *(v57 + 2 * llroundf(v118));
          __asm { FCVT            S0, H0 }

          v121 = _S28 * _S0;
          v122 = _S30 * _S0;
          v123 = _S1 * _S0;
          _S1 = ((v50 * v115) + (v114 * v47)) + (v116 * v49);
          v125 = ((v52 * v115) + (v114 * v51)) + (v116 * v53);
          _S24 = ((v55 * v115) + (v114 * v54)) + (v116 * v56);
          v127 = (v50 * v122) + (v121 * v47);
          v128 = (v52 * v122) + (v121 * v51);
          _S2 = (v55 * v122) + (v121 * v54);
          _S25 = v127 + (v123 * v49);
          v131 = v128 + (v123 * v53);
          LOWORD(_S1) = *(v59 + 2 * llroundf(fminf(fmaxf(_S1, 0.0), 8191.0)));
          v132 = _S2 + (v123 * v56);
          __asm { FCVT            S1, H1 }

          LOWORD(_S2) = *(v59 + 2 * llroundf(fminf(fmaxf(v125, 0.0), 8191.0)));
          __asm { FCVT            S2, H2 }

          LOWORD(_S24) = *(v59 + 2 * llroundf(fminf(fmaxf(_S24, 0.0), 8191.0)));
          __asm { FCVT            S27, H24 }

          LOWORD(_S24) = *(v59 + 2 * llroundf(fminf(fmaxf(_S25, 0.0), 8191.0)));
          __asm { FCVT            S24, H24 }

          LOWORD(_S25) = *(v59 + 2 * llroundf(fminf(fmaxf(v131, 0.0), 8191.0)));
          __asm { FCVT            S25, H25 }

          v138 = llroundf(fminf(fmaxf(v132, 0.0), 8191.0));
          v139 = (v45 * _S2) + (v44 * _S1);
          v140 = _S1 + _S24;
          _S2 = _S2 + _S25;
          v142 = (v168 + (v140 * v167)) + (_S2 * v166);
          v143 = (v168 + (v140 * v164)) + (_S2 * v163);
          LOWORD(_S2) = *(v59 + 2 * v138);
          __asm { FCVT            S26, H2 }

          v145 = v139 + (v46 * _S27);
          v146 = _S27 + _S26;
          v147 = v142 + ((_S27 + _S26) * v165);
          v148 = v143 + (v146 * v162);
          if (v147 < v39)
          {
            v149 = v39;
          }

          else
          {
            v149 = v147;
          }

          v150 = v145 + v39;
          if (v147 > v41)
          {
            v149 = v41;
          }

          v151 = llroundf(v149);
          if (v150 < v42)
          {
            v152 = v42;
          }

          else
          {
            v152 = v150;
          }

          *v72 = v151;
          if (v150 <= v43)
          {
            v153 = v152;
          }

          else
          {
            v153 = v43;
          }

          v72[1] = llroundf(v153);
          v154 = v41;
          if (v148 <= v41)
          {
            v154 = v148;
            if (v148 < v39)
            {
              v154 = v39;
            }
          }

          v155 = (((v45 * _S25) + (v44 * _S24)) + (v46 * _S26)) + v39;
          v72[2] = llroundf(v154);
          v48 = v43;
          if (v155 <= v43)
          {
            v48 = (((v45 * _S25) + (v44 * _S24)) + (v46 * _S26)) + v39;
            if (v155 < v42)
            {
              v48 = v42;
            }
          }

          v72[3] = llroundf(v48);
          v37 = v79;
          if (v71)
          {
            *v71++ = 0;
          }

          v69 += 2;
          v70 += 2;
          v72 += 4;
        }

        while (v69 < v32);
      }

      v64 += v33;
      v63 += v34;
      v60 = (v60 + v35);
      ++v30;
    }

    while (v30 != v19);
  }

  if (v25 && v29)
  {
    if (v19 >= 1)
    {
      v156 = 0;
      v157 = (v25 + v24 * v13 + v11);
      do
      {
        if (v16 >= 1)
        {
          v158 = v16;
          v159 = v28;
          v160 = v157;
          do
          {
            v161 = *v160++;
            *v159++ = v161 | (v161 << 8);
            --v158;
          }

          while (v158);
        }

        v157 += v24;
        v28 += v26;
        ++v156;
      }

      while (v156 != v19);
    }
  }

  else if (v29 && v19 >= 1)
  {
    do
    {
      if (v16 >= 1)
      {
        result = memset(v28, 255, 2 * v16);
      }

      v28 += v26;
      --v19;
    }

    while (v19);
  }

  *(v10 + a2 + 40) = 0;
  return result;
}

uint64_t vt_Copy_422vf_TRC_Mat_TRC_v216(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4, void *a5, uint64_t *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v49 = a7;
  v50 = a8;
  v56 = a4;
  v57 = a5;
  v51 = a3;
  v58 = *MEMORY[0x1E69E9840];
  v48 = a1;
  v9 = *(a1 + 162);
  v10 = *a2;
  v11 = a2[1];
  v12 = a2[2];
  v13 = a2[3];
  v14 = a2[4];
  v15 = a2[5];
  v16 = *a6;
  v52 = a6[1];
  v53 = v10;
  v18 = a6[2];
  v17 = a6[3];
  v19 = a6[4];
  v54 = a6[5];
  v55 = v16;
  if (v9 == 255)
  {
    v20 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v20)
    {
      v21 = 0;
LABEL_39:
      free(v20);
      return v21;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v9 + 160, a3, a4);
    v20 = (&v47 - v22);
    bzero(&v47 - v22, v23);
  }

  v24 = v18 - 1;
  v25 = v12 - 1;
  if (v19)
  {
    ++v14;
  }

  else
  {
    v25 = v12;
  }

  if (v19)
  {
    v26 = v19 + 1;
  }

  else
  {
    v24 = v18;
    v26 = v19;
  }

  v27 = v25 - (v24 & 1);
  v28 = v24 & 0xFFFFFFFFFFFFFFFELL;
  if (v27 + v14 > v53)
  {
    v27 = v53 - v14;
  }

  if (v28 + v26 > v55)
  {
    v28 = v55 - v26;
  }

  if (v15 + v13 <= v11)
  {
    v29 = v13;
  }

  else
  {
    v29 = v11 - v15;
  }

  if (v54 + v17 <= v52)
  {
    v30 = v17;
  }

  else
  {
    v30 = v52 - v54;
  }

  if (v27 >= v28)
  {
    v31 = v28;
  }

  else
  {
    v31 = v27;
  }

  if (v29 >= v30)
  {
    v32 = v30;
  }

  else
  {
    v32 = v29;
  }

  v33 = v15 + v32 - 1;
  v34 = v31 + v14;
  if (((v31 + v14 + *v56 * v33) > *v57 || (v35 = v51, *(v51 + 8)) && ((v34 + 1 + ((v34 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v56[1] * v33 > v57[1] || *(v51 + 16) && (v34 + v56[2] * v33) > v57[2]) && (fig_log_get_emitter(), v36 = FigSignalErrorAtGM(), v35 = v51, v36))
  {
    v21 = v36;
  }

  else
  {
    *v20 = v9;
    v37 = v52;
    *(v20 + 4) = v53;
    *(v20 + 12) = v11;
    *(v20 + 20) = v31;
    *(v20 + 28) = v32;
    *(v20 + 36) = v14;
    *(v20 + 44) = v15;
    v20[11] = v37;
    v20[12] = v31;
    v20[13] = v32;
    v20[14] = v26;
    v39 = v55;
    v38 = v56;
    v20[7] = v35;
    v20[8] = v38;
    v20[9] = v57;
    v20[10] = v39;
    v41 = v49;
    v40 = v50;
    v20[15] = v54;
    v20[16] = v41;
    v20[17] = v40;
    v20[18] = a9;
    v20[19] = v48;
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_apply_f(v9, global_queue, v20, vt_Copy_422vf_TRC_Mat_TRC_v216_GCD);
    if (!v9)
    {
      return 0;
    }

    v43 = (v20 + 20);
    v44 = v9;
    while (1)
    {
      v45 = *v43++;
      v21 = v45;
      if (v45)
      {
        break;
      }

      if (!--v44)
      {
        v21 = 0;
        break;
      }
    }
  }

  if (v9 == 255)
  {
    goto LABEL_39;
  }

  return v21;
}

void *vt_Copy_422vf_TRC_Mat_TRC_v216_GCD(void *result, uint64_t a2, double a3, double a4, float a5, float a6)
{
  v11 = result;
  v12 = *(result + 36);
  v13 = *result;
  v14 = *(result + 28) * a2 / v13 + *(result + 44);
  v15 = result[14];
  v17 = result[12];
  v16 = result[13];
  v18 = v16 * a2 / v13;
  v19 = v18 + result[15];
  v20 = (v16 + v16 * a2) / v13 - v18;
  v21 = result[7];
  v22 = result[8];
  v23 = result[16];
  v24 = result[17];
  v25 = v22[2];
  v26 = v21[2];
  v27 = v24[1];
  v28 = v23[1];
  v29 = (v28 + v27 * v19 + 2 * v15);
  if (v28)
  {
    v30 = v28 + v27 * v19 + 2 * v15;
  }

  else
  {
    v30 = 0;
  }

  if (v20 >= 1)
  {
    v31 = 0;
    v32 = result[19];
    v33 = v17 & 0xFFFFFFFE;
    v34 = *v22;
    v35 = v22[1];
    v36 = *v24;
    LOWORD(a5) = *(v32 + 140);
    LOWORD(a6) = *(v32 + 142);
    LOWORD(v6) = *(v32 + 144);
    LOWORD(v7) = *(v32 + 146);
    LOWORD(v8) = *(v32 + 148);
    LOWORD(v9) = *(v32 + 150);
    v37 = 8191.0 / *(v32 + 128);
    v38 = LODWORD(a5);
    v39 = LODWORD(a6);
    v40 = v37 * *v32;
    v153 = v37 * *(v32 + 8);
    *&v41 = v37 * *(v32 + 20);
    v151 = *&v41;
    v152 = v37 * *(v32 + 16);
    v42 = v37 * *(v32 + 28);
    v43 = v6;
    v44 = v7;
    v45 = v8;
    v46 = v9;
    LOWORD(v41) = *(v32 + 152);
    v47 = v41;
    v48 = *(v32 + 36);
    v49 = *(v32 + 40);
    v50 = *(v32 + 44);
    v149 = *(v32 + 48) * 0.5;
    v150 = v42;
    v147 = *(v32 + 56) * 0.5;
    v148 = *(v32 + 52) * 0.5;
    v146 = *(v32 + 60) * 0.5;
    v51 = *(v32 + 64) * 0.5;
    v52 = *(v32 + 68);
    v53 = *(v32 + 72);
    v54 = v52 * 0.5;
    v56 = *(v32 + 76);
    v55 = *(v32 + 80);
    v57 = *(v32 + 84);
    v58 = *(v32 + 88);
    v59 = *(v32 + 92);
    v60 = *(v32 + 96);
    v61 = *(v32 + 100);
    v62 = *(v32 + 104);
    result = (v32 + 16548);
    v63 = v32 + 164;
    v64 = *v23 + v36 * v19 + 2 * v15;
    v66 = *v21;
    v65 = v21[1];
    v67 = v65 + v35 * v14 + v12;
    if (!v65)
    {
      v67 = 0;
    }

    v68 = (v66 + v34 * v14 + v12);
    do
    {
      if (v33 >= 1)
      {
        v69 = 0;
        v70 = v68;
        v71 = v30;
        v72 = v64;
        do
        {
          LOBYTE(v52) = *(v67 + v69 + 1);
          v73 = LODWORD(v52) - v39;
          v74 = LODWORD(v153);
          v75 = v153 * v73;
          LOBYTE(v74) = *v70;
          v76 = v40 * (v74 - v38);
          v77 = (v153 * v73) + v76;
          v78 = 8191.0;
          if (v77 <= 8191.0)
          {
            v78 = (v153 * v73) + v76;
            if (v77 < 0.0)
            {
              v78 = 0.0;
            }
          }

          LOBYTE(v77) = *(v67 + v69);
          v79 = LODWORD(v77) - v39;
          v80 = (v151 * v73) + (v79 * v152);
          v81 = 8191.0;
          if ((v76 + v80) <= 8191.0)
          {
            v81 = v76 + v80;
            if ((v76 + v80) < 0.0)
            {
              v81 = 0.0;
            }
          }

          v82 = v150 * v79;
          v83 = v82 + v76;
          v84 = (v82 + v76) <= 8191.0;
          v85 = 8191.0;
          if (v84)
          {
            v85 = v83;
            if (v83 < 0.0)
            {
              v85 = 0.0;
            }
          }

          LOBYTE(v83) = v70[1];
          v86 = v40 * (LODWORD(v83) - v38);
          v87 = v75 + v86;
          v88 = 8191.0;
          if (v87 <= 8191.0)
          {
            v88 = v87;
            if (v87 < 0.0)
            {
              v88 = 0.0;
            }
          }

          v89 = v80 + v86;
          v84 = (v80 + v86) <= 8191.0;
          v90 = 8191.0;
          if (v84)
          {
            v90 = v89;
            if (v89 < 0.0)
            {
              v90 = 0.0;
            }
          }

          v91 = v82 + v86;
          v84 = (v82 + v86) <= 8191.0;
          v92 = 8191.0;
          if (v84)
          {
            v92 = v91;
            if (v91 < 0.0)
            {
              v92 = 0.0;
            }
          }

          _H4 = *(v63 + 2 * llroundf(fminf(fmaxf(v78, 0.0), 8191.0)));
          __asm { FCVT            S4, H4 }

          _H5 = *(v63 + 2 * llroundf(fminf(fmaxf(v81, 0.0), 8191.0)));
          __asm { FCVT            S5, H5 }

          _H6 = *(v63 + 2 * llroundf(fminf(fmaxf(v85, 0.0), 8191.0)));
          __asm { FCVT            S6, H6 }

          _H7 = *(v63 + 2 * llroundf(fminf(fmaxf(v88, 0.0), 8191.0)));
          __asm { FCVT            S7, H7 }

          _H24 = *(v63 + 2 * llroundf(fminf(fmaxf(v90, 0.0), 8191.0)));
          __asm { FCVT            S24, H24 }

          v107 = llroundf(fminf(fmaxf(v92, 0.0), 8191.0));
          _S25 = ((v56 * _S5) + (_S4 * v53)) + (_S6 * v55);
          v109 = ((v58 * _S5) + (_S4 * v57)) + (_S6 * v59);
          _S4 = ((v61 * _S5) + (_S4 * v60)) + (_S6 * v62);
          v111 = (v56 * _S24) + (_S7 * v53);
          v112 = (v58 * _S24) + (_S7 * v57);
          v113 = (v61 * _S24) + (_S7 * v60);
          LOWORD(_S24) = *(v63 + 2 * v107);
          __asm { FCVT            S24, H24 }

          _S5 = v111 + (_S24 * v55);
          v116 = v112 + (_S24 * v59);
          LOWORD(_S25) = *(result + llroundf(fminf(fmaxf(_S25, 0.0), 8191.0)));
          v117 = v113 + (_S24 * v62);
          __asm { FCVT            S24, H25 }

          LOWORD(_S25) = *(result + llroundf(fminf(fmaxf(v109, 0.0), 8191.0)));
          __asm { FCVT            S25, H25 }

          LOWORD(_S4) = *(result + llroundf(fminf(fmaxf(_S4, 0.0), 8191.0)));
          __asm { FCVT            S26, H4 }

          LOWORD(_S4) = *(result + llroundf(fminf(fmaxf(_S5, 0.0), 8191.0)));
          __asm { FCVT            S4, H4 }

          LOWORD(_S5) = *(result + llroundf(fminf(fmaxf(v116, 0.0), 8191.0)));
          __asm { FCVT            S5, H5 }

          v123 = llroundf(fminf(fmaxf(v117, 0.0), 8191.0));
          v124 = (v49 * _S25) + (v48 * _S24);
          _S6 = _S24 + _S4;
          v126 = _S25 + _S5;
          v127 = (v44 + ((_S24 + _S4) * v149)) + (v126 * v148);
          v128 = (v44 + (_S6 * v146)) + (v126 * v51);
          LOWORD(_S6) = *(result + v123);
          __asm { FCVT            S6, H6 }

          v130 = v124 + (v50 * _S26);
          v131 = v127 + ((_S26 + _S6) * v147);
          v132 = v128 + ((_S26 + _S6) * v54);
          if (v131 < v43)
          {
            v133 = v43;
          }

          else
          {
            v133 = v131;
          }

          v84 = v131 <= v45;
          v134 = v130 + v43;
          if (!v84)
          {
            v133 = v45;
          }

          v135 = llroundf(v133);
          if (v134 < v46)
          {
            v136 = v46;
          }

          else
          {
            v136 = v130 + v43;
          }

          *v72 = v135;
          if (v134 <= v47)
          {
            v137 = v136;
          }

          else
          {
            v137 = v47;
          }

          v72[1] = llroundf(v137);
          v138 = v45;
          if (v132 <= v45)
          {
            v138 = v132;
            if (v132 < v43)
            {
              v138 = v43;
            }
          }

          v52 = (((v49 * _S5) + (v48 * _S4)) + (v50 * _S6)) + v43;
          v72[2] = llroundf(v138);
          v139 = v47;
          if (v52 <= v47)
          {
            v139 = v52;
            if (v52 < v46)
            {
              v139 = v46;
            }
          }

          v72[3] = llroundf(v139);
          if (v71)
          {
            *v71++ = 0;
          }

          v69 += 2;
          v70 += 2;
          v72 += 4;
        }

        while (v69 < v33);
      }

      v68 += v34;
      v67 += v35;
      v64 += v36;
      ++v31;
    }

    while (v31 != v20);
  }

  if (v26 && v30)
  {
    if (v20 >= 1)
    {
      v140 = 0;
      v141 = (v26 + v25 * v14 + v12);
      do
      {
        if (v17 >= 1)
        {
          v142 = v17;
          v143 = v29;
          v144 = v141;
          do
          {
            v145 = *v144++;
            *v143++ = v145 | (v145 << 8);
            --v142;
          }

          while (v142);
        }

        v141 += v25;
        v29 += v27;
        ++v140;
      }

      while (v140 != v20);
    }
  }

  else if (v30 && v20 >= 1)
  {
    do
    {
      if (v17 >= 1)
      {
        result = memset(v29, 255, 2 * v17);
      }

      v29 += v27;
      --v20;
    }

    while (v20);
  }

  *(v11 + a2 + 40) = 0;
  return result;
}