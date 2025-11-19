uint64_t vt_Copy_xf444_rgb_444vf_neon_fp16(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v12 = a4;
  v14 = a1;
  v51 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v48 = a2[2];
  v49 = v16;
  v19 = *a6;
  v18 = a6[1];
  v46 = v17;
  v47 = v19;
  v45 = v18;
  v50 = a6[2];
  if (v15 == 255)
  {
    v20 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v20)
    {
      v21 = 0;
LABEL_29:
      free(v20);
      return v21;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v20 = &v43 - v22;
    bzero(&v43 - v22, v23);
  }

  v24 = a9;
  v25 = vbslq_s8(vcgtq_s64(vaddq_s64(v48, v46), v49), vsubq_s64(v49, v48), v46);
  v26 = vbslq_s8(vcgtq_s64(vaddq_s64(v50, v45), v47), vsubq_s64(v47, v50), v45);
  v27 = vbslq_s8(vcgtq_s64(v26, v25), v25, v26);
  v25.i64[0] = v27.i64[0];
  v25.i64[1] = -1;
  v28 = vaddq_s64(v48, v25);
  v29 = v28.i64[1] + v27.i64[1];
  v30 = (*v12 * (v28.i64[1] + v27.i64[1]) + 2 * v28.i64[0]) > *a5;
  v44 = v12;
  v46 = v27;
  if (v30)
  {
    v31 = a9;
    v32 = v14;
    v33 = a8;
    v34 = a7;
  }

  else if (*(a3 + 8) && (v12[1] * v29 + 4 * v28.i64[0]) > a5[1])
  {
    v31 = a9;
    v32 = v14;
    v33 = a8;
    v34 = a7;
  }

  else if (*(a3 + 16) && (2 * v28.i64[0] + v12[2] * v29) > a5[2])
  {
    v31 = a9;
    v32 = v14;
    v33 = a8;
    v34 = a7;
  }

  else
  {
    v35 = vaddq_s64((*&v50 + __PAIR128__(-1, 0)), v27);
    if (v35.i64[0] + *a8 * v35.i64[1] <= *a9)
    {
      if (*(a7 + 8) && (a8[1] * v35.i64[1] + 2 * v35.i64[0]) > a9[1])
      {
        v31 = a9;
        v32 = v14;
        v33 = a8;
        v34 = a7;
      }

      else
      {
        if (!*(a7 + 16) || v35.i64[0] + a8[2] * v35.i64[1] <= a9[2])
        {
          goto LABEL_23;
        }

        v31 = a9;
        v32 = v14;
        v33 = a8;
        v34 = a7;
      }
    }

    else
    {
      v31 = a9;
      v32 = v14;
      v33 = a8;
      v34 = a7;
    }
  }

  fig_log_get_emitter();
  v36 = FigSignalErrorAtGM();
  a7 = v34;
  a8 = v33;
  v14 = v32;
  v24 = v31;
  v12 = v44;
  v27 = v46;
  if (v36)
  {
    v21 = v36;
    goto LABEL_28;
  }

LABEL_23:
  *v20 = v15;
  v37 = v48;
  *(v20 + 4) = v49;
  *(v20 + 20) = v27;
  *(v20 + 36) = v37;
  *(v20 + 5) = v47;
  *(v20 + 6) = v27;
  *(v20 + 7) = v50;
  *(v20 + 7) = a3;
  *(v20 + 8) = v12;
  *(v20 + 9) = a5;
  *(v20 + 16) = a7;
  *(v20 + 17) = a8;
  *(v20 + 18) = v24;
  *(v20 + 19) = v14;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v15, global_queue, v20, vt_Copy_xf444_rgb_444vf_neon_fp16_GCD);
  if (!v15)
  {
    return 0;
  }

  v39 = (v20 + 160);
  v40 = v15;
  while (1)
  {
    v41 = *v39++;
    v21 = v41;
    if (v41)
    {
      break;
    }

    if (!--v40)
    {
      v21 = 0;
      break;
    }
  }

LABEL_28:
  if (v15 == 255)
  {
    goto LABEL_29;
  }

  return v21;
}

void *vt_Copy_xf444_rgb_444vf_neon_fp16_GCD(void *result, uint64_t a2, double a3, double a4, double a5, double _D3)
{
  v7 = *(result + 36);
  v8 = *result;
  v9 = *(result + 28) * a2 / v8 + *(result + 44);
  v10 = result[14];
  v11 = result[12];
  v12 = result[13];
  v13 = v12 * a2 / v8;
  v14 = v13 + result[15];
  v15 = (v12 + v12 * a2) / v8 - v13;
  v17 = result[7];
  v16 = result[8];
  v19 = result[16];
  v18 = result[17];
  v20 = v16[2];
  v21 = v17[2];
  v22 = v18[2];
  v23 = v19[2];
  v24 = (v23 + v22 * v14 + v10);
  if (v15 >= 1)
  {
    v25 = 0;
    v26 = result[19];
    v27 = *v16;
    v28 = v16[1];
    v29 = *v18;
    v30 = v18[1];
    v31 = *(v26 + 140);
    v32 = *(v26 + 142);
    v33 = *(v26 + 144);
    v34 = *(v26 + 146);
    v35 = *(v26 + 148);
    v36 = *(v26 + 150);
    v37 = *(v26 + 152);
    _S0 = *(v26 + 36);
    _S1 = *(v26 + 40);
    _S2 = *(v26 + 44);
    _S10 = *(v26 + 48);
    _S22 = *(v26 + 52);
    _S25 = *(v26 + 56);
    _S28 = *(v26 + 60);
    _S11 = *(v26 + 64);
    _S21 = *(v26 + 68);
    *v6.i16 = v31;
    *&_D3 = *(v26 + 136) / *(v26 + 128);
    v47 = v32;
    _S19 = *&_D3 * *v26;
    _S4 = *&_D3 * *(v26 + 8);
    _S5 = *&_D3 * *(v26 + 16);
    _S6 = *&_D3 * *(v26 + 20);
    v52 = v33;
    v53 = v34;
    v54 = v35;
    _S7 = *&_D3 * *(v26 + 28);
    v56 = v36;
    v57 = v37;
    __asm { FCVT            H8, S19 }

    v63 = vdupq_lane_s16(v6, 0);
    *&_D3 = -v32;
    v64 = vdupq_lane_s16(*&_D3, 0);
    v149 = _S7;
    v150 = _S6;
    __asm { FCVT            H3, S7 }

    v148 = *&_D3;
    v151 = _S5;
    __asm { FCVT            H3, S5 }

    v147 = *&_D3;
    __asm { FCVT            H3, S6 }

    v146 = *&_D3;
    *&_D3 = v33;
    v65 = vdupq_lane_s16(*&_D3, 0);
    *&_D3 = v34;
    v66 = vdupq_lane_s16(*&_D3, 0);
    *&_D3 = v35;
    v67 = vdupq_lane_s16(*&_D3, 0);
    *&_D3 = v36;
    v68 = vdupq_lane_s16(*&_D3, 0);
    *&_D3 = v37;
    v69 = vdupq_lane_s16(*&_D3, 0);
    LODWORD(v26) = *(v26 + 124);
    v70 = 16 - v26;
    if (v26 >= 0x11)
    {
      v70 = 0;
    }

    v72 = *v19;
    v71 = v19[1];
    v73 = (v71 + v30 * v14 + v10);
    if (!v71)
    {
      v73 = 0;
    }

    v74 = (v72 + v29 * v14 + v10);
    v76 = *v17;
    v75 = v17[1];
    v77 = v75 + v28 * v9 + 2 * v7;
    if (!v75)
    {
      v77 = 0;
    }

    v78 = v76 + v27 * v9 + 2 * v7;
    v152 = _S4;
    v153 = _S25;
    __asm { FCVT            H3, S4 }

    v145 = _H3;
    __asm
    {
      FCVT            H4, S0
      FCVT            H5, S1
      FCVT            H6, S2
    }

    v154 = _S22;
    v155 = _S10;
    __asm { FCVT            H3, S10 }

    v144 = _H3;
    __asm { FCVT            H3, S22 }

    v143 = _H3;
    __asm { FCVT            H3, S25 }

    v142 = _H3;
    v86 = _S28;
    __asm { FCVT            H3, S28 }

    v141 = _H3;
    v88 = _S11;
    __asm { FCVT            H7, S11 }

    v140 = _H7;
    v90 = _S21;
    __asm { FCVT            H7, S21 }

    v92 = vdupq_n_s16(-v70);
    do
    {
      if (v11 < 8)
      {
        v108 = 0;
        v97 = v73;
        v96 = v74;
        v95 = v77;
        v94 = v78;
      }

      else
      {
        v93 = 0;
        v94 = v78;
        v95 = v77;
        v96 = v74;
        v97 = v73;
        do
        {
          if (v95)
          {
            v157 = vld2q_s16(v95);
            v95 += 16;
            v98 = vaddq_f16(v64, vcvtq_f16_u16(vshlq_u16(v157.val[0], v92)));
            v157.val[0] = vaddq_f16(v64, vcvtq_f16_u16(vshlq_u16(v157.val[1], v92)));
            v99 = vmulq_n_f16(v157.val[0], v145);
            v100 = vmlaq_n_f16(vmulq_n_f16(v98, v147), v157.val[0], v146);
            v101 = vmulq_n_f16(v98, v148);
          }

          else
          {
            v101 = 0uLL;
            v100 = 0uLL;
            v99 = 0uLL;
          }

          v102 = *v94++;
          v103 = vsubq_f16(vcvtq_f16_u16(vshlq_u16(v102, v92)), v63);
          v104 = vmlaq_n_f16(v99, v103, _H8);
          v105 = vmlaq_n_f16(v100, v103, _H8);
          v106 = vmlaq_n_f16(v101, v103, _H8);
          *v96++ = vmovn_s16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v65, v104, _H4), v105, _H5), v106, _H6), v65), v67)));
          if (v97)
          {
            v107 = vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v66, v104, v141), v105, v140), v106, _H7);
            v156.val[0] = vmovn_s16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v66, v104, v144), v105, v143), v106, v142), v68), v69), v68), v69)));
            v156.val[1] = vmovn_s16(vcvtq_u16_f16(v107));
            vst2_s8(v97, v156);
            v97 += 16;
          }

          v93 += 8;
        }

        while (v93 < v11 - 7);
        v108 = v11 & 0x7FFFFFF8;
      }

      _VF = __OFSUB__(v11, v108);
      v109 = v11 - v108;
      if (!((v109 < 0) ^ _VF | (v109 == 0)))
      {
        do
        {
          if (v95)
          {
            v110 = (*v95 >> v70) - v47;
            v111 = (*(v95 + 1) >> v70) - v47;
            v95 += 2;
            v112 = v152 * v111;
            v113 = (v150 * v111) + (v110 * v151);
            v114 = v149 * v110;
          }

          else
          {
            v114 = 0.0;
            v113 = 0.0;
            v112 = 0.0;
          }

          v115 = v94->u16[0];
          v94 = (v94 + 2);
          v116 = _S19 * ((v115 >> v70) - v31);
          v117 = v112 + v116;
          v118 = v113 + v116;
          v119 = v114 + v116;
          v120 = (((_S1 * v118) + (_S0 * v117)) + (_S2 * v119)) + v52;
          v121 = v54;
          if (v120 <= v54)
          {
            v121 = (((_S1 * v118) + (_S0 * v117)) + (_S2 * v119)) + v52;
            if (v120 < v52)
            {
              v121 = v52;
            }
          }

          v96->i8[0] = llroundf(v121);
          v96 = (v96 + 1);
          if (v97)
          {
            v122 = ((v53 + (v117 * v155)) + (v118 * v154)) + (v119 * v153);
            v123 = v57;
            if (v122 <= v57)
            {
              v123 = ((v53 + (v117 * v155)) + (v118 * v154)) + (v119 * v153);
              if (v122 < v56)
              {
                v123 = v56;
              }
            }

            v124 = ((v53 + (v117 * v86)) + (v118 * v88)) + (v119 * v90);
            *v97 = llroundf(v123);
            v125 = v57;
            if (v124 <= v57)
            {
              v125 = v124;
              if (v124 < v56)
              {
                v125 = v56;
              }
            }

            v97[1] = llroundf(v125);
            v97 += 2;
          }

          --v109;
        }

        while (v109);
      }

      v78 += v27;
      v77 += v28;
      v74 = (v74 + v29);
      v73 += v30;
      ++v25;
    }

    while (v25 != v15);
  }

  if (v21 && v23)
  {
    if (v15 >= 1)
    {
      v126 = 0;
      v127 = v21 + v20 * v9 + 2 * v7;
      do
      {
        if (v11 >= 1)
        {
          v128 = v11;
          v129 = v24;
          v130 = v127;
          do
          {
            v131 = *v130++;
            *v129++ = llroundf(v131 * 0.0038911);
            --v128;
          }

          while (v128);
        }

        v127 += v20;
        v24 += v22;
        ++v126;
      }

      while (v15 > v126);
    }
  }

  else if (v23 && v15 >= 1)
  {
    v132 = 0;
    v133 = vdupq_n_s64(v11 - 1);
    do
    {
      if (v11 >= 1)
      {
        v134 = 0;
        do
        {
          v135 = vdupq_n_s64(v134);
          v136 = vmovn_s64(vcgeq_u64(v133, vorrq_s8(v135, xmmword_18FECDDB0)));
          if (vuzp1_s8(vuzp1_s16(v136, *v133.i8), *v133.i8).u8[0])
          {
            v24[v134] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(v136, *&v133), *&v133).i8[1])
          {
            v24[v134 + 1] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(*&v133, vmovn_s64(vcgeq_u64(v133, vorrq_s8(v135, xmmword_18FECDDA0)))), *&v133).i8[2])
          {
            v24[v134 + 2] = -1;
            v24[v134 + 3] = -1;
          }

          v137 = vmovn_s64(vcgeq_u64(v133, vorrq_s8(v135, xmmword_18FECDD90)));
          if (vuzp1_s8(*&v133, vuzp1_s16(v137, *&v133)).i32[1])
          {
            v24[v134 + 4] = -1;
          }

          if (vuzp1_s8(*&v133, vuzp1_s16(v137, *&v133)).i8[5])
          {
            v24[v134 + 5] = -1;
          }

          if (vuzp1_s8(*&v133, vuzp1_s16(*&v133, vmovn_s64(vcgeq_u64(v133, vorrq_s8(v135, xmmword_18FECDD80))))).i8[6])
          {
            v24[v134 + 6] = -1;
            v24[v134 + 7] = -1;
          }

          v138 = vmovn_s64(vcgeq_u64(v133, vorrq_s8(v135, xmmword_18FECDD70)));
          if (vuzp1_s8(vuzp1_s16(v138, *v133.i8), *v133.i8).u8[0])
          {
            v24[v134 + 8] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(v138, *&v133), *&v133).i8[1])
          {
            v24[v134 + 9] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(*&v133, vmovn_s64(vcgeq_u64(v133, vorrq_s8(v135, xmmword_18FECDD60)))), *&v133).i8[2])
          {
            v24[v134 + 10] = -1;
            v24[v134 + 11] = -1;
          }

          v139 = vmovn_s64(vcgeq_u64(v133, vorrq_s8(v135, xmmword_18FECDD50)));
          if (vuzp1_s8(*&v133, vuzp1_s16(v139, *&v133)).i32[1])
          {
            v24[v134 + 12] = -1;
          }

          if (vuzp1_s8(*&v133, vuzp1_s16(v139, *&v133)).i8[5])
          {
            v24[v134 + 13] = -1;
          }

          if (vuzp1_s8(*&v133, vuzp1_s16(*&v133, vmovn_s64(vcgeq_u64(v133, vorrq_s8(v135, xmmword_18FECDD40))))).i8[6])
          {
            v24[v134 + 14] = -1;
            v24[v134 + 15] = -1;
          }

          v134 += 16;
        }

        while (((v11 + 15) & 0xFFFFFFFFFFFFFFF0) != v134);
      }

      v24 += v22;
      ++v132;
    }

    while (v15 > v132);
  }

  *(result + a2 + 40) = 0;
  return result;
}

uint64_t vt_Copy_xf444_rgb_444vf(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v12 = a4;
  v14 = a1;
  v51 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v48 = a2[2];
  v49 = v16;
  v19 = *a6;
  v18 = a6[1];
  v46 = v17;
  v47 = v19;
  v45 = v18;
  v50 = a6[2];
  if (v15 == 255)
  {
    v20 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v20)
    {
      v21 = 0;
LABEL_29:
      free(v20);
      return v21;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v20 = &v43 - v22;
    bzero(&v43 - v22, v23);
  }

  v24 = a9;
  v25 = vbslq_s8(vcgtq_s64(vaddq_s64(v48, v46), v49), vsubq_s64(v49, v48), v46);
  v26 = vbslq_s8(vcgtq_s64(vaddq_s64(v50, v45), v47), vsubq_s64(v47, v50), v45);
  v27 = vbslq_s8(vcgtq_s64(v26, v25), v25, v26);
  v25.i64[0] = v27.i64[0];
  v25.i64[1] = -1;
  v28 = vaddq_s64(v48, v25);
  v29 = v28.i64[1] + v27.i64[1];
  v30 = (*v12 * (v28.i64[1] + v27.i64[1]) + 2 * v28.i64[0]) > *a5;
  v44 = v12;
  v46 = v27;
  if (v30)
  {
    v31 = a9;
    v32 = v14;
    v33 = a8;
    v34 = a7;
  }

  else if (*(a3 + 8) && (v12[1] * v29 + 4 * v28.i64[0]) > a5[1])
  {
    v31 = a9;
    v32 = v14;
    v33 = a8;
    v34 = a7;
  }

  else if (*(a3 + 16) && (2 * v28.i64[0] + v12[2] * v29) > a5[2])
  {
    v31 = a9;
    v32 = v14;
    v33 = a8;
    v34 = a7;
  }

  else
  {
    v35 = vaddq_s64((*&v50 + __PAIR128__(-1, 0)), v27);
    if (v35.i64[0] + *a8 * v35.i64[1] <= *a9)
    {
      if (*(a7 + 8) && (a8[1] * v35.i64[1] + 2 * v35.i64[0]) > a9[1])
      {
        v31 = a9;
        v32 = v14;
        v33 = a8;
        v34 = a7;
      }

      else
      {
        if (!*(a7 + 16) || v35.i64[0] + a8[2] * v35.i64[1] <= a9[2])
        {
          goto LABEL_23;
        }

        v31 = a9;
        v32 = v14;
        v33 = a8;
        v34 = a7;
      }
    }

    else
    {
      v31 = a9;
      v32 = v14;
      v33 = a8;
      v34 = a7;
    }
  }

  fig_log_get_emitter();
  v36 = FigSignalErrorAtGM();
  a7 = v34;
  a8 = v33;
  v14 = v32;
  v24 = v31;
  v12 = v44;
  v27 = v46;
  if (v36)
  {
    v21 = v36;
    goto LABEL_28;
  }

LABEL_23:
  *v20 = v15;
  v37 = v48;
  *(v20 + 4) = v49;
  *(v20 + 20) = v27;
  *(v20 + 36) = v37;
  *(v20 + 5) = v47;
  *(v20 + 6) = v27;
  *(v20 + 7) = v50;
  *(v20 + 7) = a3;
  *(v20 + 8) = v12;
  *(v20 + 9) = a5;
  *(v20 + 16) = a7;
  *(v20 + 17) = a8;
  *(v20 + 18) = v24;
  *(v20 + 19) = v14;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v15, global_queue, v20, vt_Copy_xf444_rgb_444vf_GCD);
  if (!v15)
  {
    return 0;
  }

  v39 = (v20 + 160);
  v40 = v15;
  while (1)
  {
    v41 = *v39++;
    v21 = v41;
    if (v41)
    {
      break;
    }

    if (!--v40)
    {
      v21 = 0;
      break;
    }
  }

LABEL_28:
  if (v15 == 255)
  {
    goto LABEL_29;
  }

  return v21;
}

void *vt_Copy_xf444_rgb_444vf_GCD(void *result, uint64_t a2, double a3, double a4, float a5, float a6)
{
  v10 = *(result + 36);
  v11 = *result;
  v12 = *(result + 28) * a2 / v11 + *(result + 44);
  v13 = result[14];
  v14 = result[12];
  v15 = result[13];
  v16 = v15 * a2 / v11;
  v17 = v16 + result[15];
  v18 = (v15 + v15 * a2) / v11 - v16;
  v20 = result[7];
  v19 = result[8];
  v22 = result[16];
  v21 = result[17];
  v23 = v19[2];
  v24 = v20[2];
  v25 = v21[2];
  v26 = v22[2];
  v27 = (v26 + v25 * v17 + v13);
  if (v18 >= 1)
  {
    v28 = 0;
    v29 = result[19];
    v30 = *v19;
    v31 = v19[1];
    v32 = *v21;
    v33 = v21[1];
    LOWORD(a5) = *(v29 + 140);
    LOWORD(a6) = *(v29 + 142);
    v34 = *(v29 + 136) / *(v29 + 128);
    v35 = LODWORD(a5);
    v36 = LODWORD(a6);
    v37 = v34 * *v29;
    v38 = v34 * *(v29 + 8);
    v39 = v34 * *(v29 + 16);
    v40 = v34 * *(v29 + 20);
    v41 = *(v29 + 28);
    v42 = v34 * v41;
    LOWORD(v41) = *(v29 + 144);
    v43 = LODWORD(v41);
    LOWORD(v6) = *(v29 + 146);
    v44 = v6;
    LOWORD(v7) = *(v29 + 148);
    v45 = v7;
    LOWORD(v8) = *(v29 + 150);
    v46 = v8;
    LOWORD(v9) = *(v29 + 152);
    v47 = v9;
    v48 = *(v29 + 36);
    v49 = *(v29 + 40);
    v50 = *(v29 + 44);
    v51 = *(v29 + 48);
    v52 = *(v29 + 52);
    v53 = *(v29 + 56);
    v54 = *(v29 + 60);
    v55 = *(v29 + 64);
    v56 = *(v29 + 68);
    v57 = *(v29 + 124);
    if (v57 >= 0x11)
    {
      v58 = 0;
    }

    else
    {
      v58 = 16 - v57;
    }

    v60 = *v22;
    v59 = v22[1];
    v61 = (v59 + v33 * v17 + v13);
    if (!v59)
    {
      v61 = 0;
    }

    v62 = (v60 + v32 * v17 + v13);
    v64 = *v20;
    v63 = v20[1];
    v65 = v63 + v31 * v12 + 2 * v10;
    if (!v63)
    {
      v65 = 0;
    }

    v66 = v64 + v30 * v12 + 2 * v10;
    do
    {
      v67 = v14;
      v68 = v66;
      v69 = v65;
      v70 = v61;
      v71 = v62;
      if (v14 >= 1)
      {
        do
        {
          if (v69)
          {
            v72 = (*v69 >> v58) - v36;
            v73 = (v69[1] >> v58) - v36;
            v69 += 2;
            v74 = v38 * v73;
            v75 = (v40 * v73) + (v72 * v39);
            v76 = v42 * v72;
          }

          else
          {
            v76 = 0.0;
            v75 = 0.0;
            v74 = 0.0;
          }

          v77 = *v68++;
          v78 = v37 * ((v77 >> v58) - v35);
          v79 = v74 + v78;
          v80 = v75 + v78;
          v81 = v76 + v78;
          v82 = (((v49 * v80) + (v48 * v79)) + (v50 * v81)) + v43;
          v83 = v45;
          if (v82 <= v45)
          {
            v83 = (((v49 * v80) + (v48 * v79)) + (v50 * v81)) + v43;
            if (v82 < v43)
            {
              v83 = v43;
            }
          }

          *v71++ = llroundf(v83);
          if (v70)
          {
            v84 = ((v44 + (v79 * v51)) + (v80 * v52)) + (v81 * v53);
            v85 = v47;
            if (v84 <= v47)
            {
              v85 = ((v44 + (v79 * v51)) + (v80 * v52)) + (v81 * v53);
              if (v84 < v46)
              {
                v85 = v46;
              }
            }

            v86 = ((v44 + (v79 * v54)) + (v80 * v55)) + (v81 * v56);
            *v70 = llroundf(v85);
            v87 = v47;
            if (v86 <= v47)
            {
              v87 = v86;
              if (v86 < v46)
              {
                v87 = v46;
              }
            }

            v70[1] = llroundf(v87);
            v70 += 2;
          }

          --v67;
        }

        while (v67);
      }

      v66 += v30;
      v65 += v31;
      v62 += v32;
      v61 += v33;
      ++v28;
    }

    while (v28 != v18);
  }

  if (v24 && v26)
  {
    if (v18 >= 1)
    {
      v88 = 0;
      v89 = v24 + v23 * v12 + 2 * v10;
      do
      {
        if (v14 >= 1)
        {
          v90 = v14;
          v91 = v27;
          v92 = v89;
          do
          {
            v93 = *v92++;
            *v91++ = llroundf(v93 * 0.0038911);
            --v90;
          }

          while (v90);
        }

        v89 += v23;
        v27 += v25;
        ++v88;
      }

      while (v18 > v88);
    }
  }

  else if (v26 && v18 >= 1)
  {
    v94 = 0;
    v95 = vdupq_n_s64(v14 - 1);
    do
    {
      if (v14 >= 1)
      {
        v96 = 0;
        do
        {
          v97 = vdupq_n_s64(v96);
          v98 = vmovn_s64(vcgeq_u64(v95, vorrq_s8(v97, xmmword_18FECDDB0)));
          if (vuzp1_s8(vuzp1_s16(v98, *v95.i8), *v95.i8).u8[0])
          {
            v27[v96] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(v98, *&v95), *&v95).i8[1])
          {
            v27[v96 + 1] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(*&v95, vmovn_s64(vcgeq_u64(v95, vorrq_s8(v97, xmmword_18FECDDA0)))), *&v95).i8[2])
          {
            v27[v96 + 2] = -1;
            v27[v96 + 3] = -1;
          }

          v99 = vmovn_s64(vcgeq_u64(v95, vorrq_s8(v97, xmmword_18FECDD90)));
          if (vuzp1_s8(*&v95, vuzp1_s16(v99, *&v95)).i32[1])
          {
            v27[v96 + 4] = -1;
          }

          if (vuzp1_s8(*&v95, vuzp1_s16(v99, *&v95)).i8[5])
          {
            v27[v96 + 5] = -1;
          }

          if (vuzp1_s8(*&v95, vuzp1_s16(*&v95, vmovn_s64(vcgeq_u64(v95, vorrq_s8(v97, xmmword_18FECDD80))))).i8[6])
          {
            v27[v96 + 6] = -1;
            v27[v96 + 7] = -1;
          }

          v100 = vmovn_s64(vcgeq_u64(v95, vorrq_s8(v97, xmmword_18FECDD70)));
          if (vuzp1_s8(vuzp1_s16(v100, *v95.i8), *v95.i8).u8[0])
          {
            v27[v96 + 8] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(v100, *&v95), *&v95).i8[1])
          {
            v27[v96 + 9] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(*&v95, vmovn_s64(vcgeq_u64(v95, vorrq_s8(v97, xmmword_18FECDD60)))), *&v95).i8[2])
          {
            v27[v96 + 10] = -1;
            v27[v96 + 11] = -1;
          }

          v101 = vmovn_s64(vcgeq_u64(v95, vorrq_s8(v97, xmmword_18FECDD50)));
          if (vuzp1_s8(*&v95, vuzp1_s16(v101, *&v95)).i32[1])
          {
            v27[v96 + 12] = -1;
          }

          if (vuzp1_s8(*&v95, vuzp1_s16(v101, *&v95)).i8[5])
          {
            v27[v96 + 13] = -1;
          }

          if (vuzp1_s8(*&v95, vuzp1_s16(*&v95, vmovn_s64(vcgeq_u64(v95, vorrq_s8(v97, xmmword_18FECDD40))))).i8[6])
          {
            v27[v96 + 14] = -1;
            v27[v96 + 15] = -1;
          }

          v96 += 16;
        }

        while (((v14 + 15) & 0xFFFFFFFFFFFFFFF0) != v96);
      }

      v27 += v25;
      ++v94;
    }

    while (v18 > v94);
  }

  *(result + a2 + 40) = 0;
  return result;
}

uint64_t vt_Copy_xf444_TRC_Tone_Mat_TRC_xf444_neon_fp16(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v12 = a4;
  v14 = a1;
  v53 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v50 = a2[2];
  v51 = v16;
  v19 = *a6;
  v18 = a6[1];
  v48 = v17;
  v49 = v19;
  v47 = v18;
  v52 = a6[2];
  if (v15 == 255)
  {
    v20 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v20)
    {
      v21 = 0;
LABEL_29:
      free(v20);
      return v21;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v20 = &v45 - v22;
    bzero(&v45 - v22, v23);
  }

  v24 = a9;
  v25 = vbslq_s8(vcgtq_s64(vaddq_s64(v50, v48), v51), vsubq_s64(v51, v50), v48);
  v26 = vbslq_s8(vcgtq_s64(vaddq_s64(v52, v47), v49), vsubq_s64(v49, v52), v47);
  v27 = vbslq_s8(vcgtq_s64(v26, v25), v25, v26);
  v28.i64[0] = v27.i64[0];
  v28.i64[1] = -1;
  v29 = vaddq_s64(v50, v28);
  v30 = v29.i64[1] + v27.i64[1];
  v31 = (*v12 * (v29.i64[1] + v27.i64[1]) + 2 * v29.i64[0]) > *a5;
  v46 = v12;
  v48 = v27;
  if (v31)
  {
    v32 = a9;
    v33 = v14;
    v34 = a8;
    v35 = a7;
  }

  else if (*(a3 + 8) && (v12[1] * v30 + 4 * v29.i64[0]) > a5[1])
  {
    v32 = a9;
    v33 = v14;
    v34 = a8;
    v35 = a7;
  }

  else if (*(a3 + 16) && (2 * v29.i64[0] + v12[2] * v30) > a5[2])
  {
    v32 = a9;
    v33 = v14;
    v34 = a8;
    v35 = a7;
  }

  else
  {
    v36 = vaddq_s64(v52, v28);
    v37 = v36.i64[1] + v27.i64[1];
    if ((*a8 * (v36.i64[1] + v27.i64[1]) + 2 * v36.i64[0]) <= *a9)
    {
      if (*(a7 + 8) && (a8[1] * v37 + 4 * v36.i64[0]) > a9[1])
      {
        v32 = a9;
        v33 = v14;
        v34 = a8;
        v35 = a7;
      }

      else
      {
        if (!*(a7 + 16) || (2 * v36.i64[0] + a8[2] * v37) <= a9[2])
        {
          goto LABEL_23;
        }

        v32 = a9;
        v33 = v14;
        v34 = a8;
        v35 = a7;
      }
    }

    else
    {
      v32 = a9;
      v33 = v14;
      v34 = a8;
      v35 = a7;
    }
  }

  fig_log_get_emitter();
  v38 = FigSignalErrorAtGM();
  a7 = v35;
  a8 = v34;
  v14 = v33;
  v24 = v32;
  v12 = v46;
  v27 = v48;
  if (v38)
  {
    v21 = v38;
    goto LABEL_28;
  }

LABEL_23:
  *v20 = v15;
  v39 = v50;
  *(v20 + 4) = v51;
  *(v20 + 20) = v27;
  *(v20 + 36) = v39;
  *(v20 + 5) = v49;
  *(v20 + 6) = v27;
  *(v20 + 7) = v52;
  *(v20 + 7) = a3;
  *(v20 + 8) = v12;
  *(v20 + 9) = a5;
  *(v20 + 16) = a7;
  *(v20 + 17) = a8;
  *(v20 + 18) = v24;
  *(v20 + 19) = v14;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v15, global_queue, v20, vt_Copy_xf444_TRC_Tone_Mat_TRC_xf444_neon_fp16_GCD);
  if (!v15)
  {
    return 0;
  }

  v41 = (v20 + 160);
  v42 = v15;
  while (1)
  {
    v43 = *v41++;
    v21 = v43;
    if (v43)
    {
      break;
    }

    if (!--v42)
    {
      v21 = 0;
      break;
    }
  }

LABEL_28:
  if (v15 == 255)
  {
    goto LABEL_29;
  }

  return v21;
}

unint64_t vt_Copy_xf444_TRC_Tone_Mat_TRC_xf444_neon_fp16_GCD(unint64_t result, uint64_t a2, double a3)
{
  v3 = *result;
  v179 = *(result + 28) * a2 / v3 + *(result + 44);
  v180 = *(result + 36);
  v4 = *(result + 112);
  v6 = *(result + 96);
  v5 = *(result + 104);
  v185 = result;
  v7 = v5 * a2 / v3;
  v8 = v7 + *(result + 120);
  v9 = (v5 + v5 * a2) / v3 - v7;
  v10 = *(result + 56);
  v11 = *(result + 64);
  v12 = *(result + 128);
  v13 = *(result + 136);
  v178 = v11[2];
  v182 = v10[2];
  v183 = v13[2];
  v181 = v12[2];
  v14 = (v181 + v183 * v8 + 2 * v4);
  if (v9 >= 1)
  {
    v15 = 0;
    v16 = *(result + 152);
    v18 = *v11;
    v17 = v11[1];
    v19 = *v13;
    v20 = v13[1];
    v21 = *(v16 + 140);
    v22 = *(v16 + 142);
    v23 = *(v16 + 144);
    v24 = *(v16 + 146);
    v25 = *(v16 + 148);
    v26 = *(v16 + 150);
    v27 = *(v16 + 152);
    _S17 = *(v16 + 40);
    _S18 = *(v16 + 44);
    _S27 = *(v16 + 48);
    _S20 = *(v16 + 52);
    _S21 = *(v16 + 56);
    v33 = v16 + 16548;
    result = (v6 - 7);
    v229 = v21;
    v34 = v22;
    *&a3 = 8191.0 / *(v16 + 128);
    _S1 = *&a3 * *v16;
    _S2 = *&a3 * *(v16 + 8);
    _S3 = *&a3 * *(v16 + 16);
    _S4 = *&a3 * *(v16 + 20);
    _S5 = *&a3 * *(v16 + 28);
    v40 = v23;
    v41 = v24;
    v42 = v25;
    *&a3 = v26;
    v205 = v26;
    v43 = v27;
    v44 = v16 + 164;
    *&a3 = v21;
    v45 = v16 + 32932;
    v228 = _S1;
    __asm { FCVT            H8, S1 }

    _Q0 = vdupq_lane_s16(*&a3, 0);
    v227 = _Q0;
    *_Q0.i16 = -v22;
    v52 = vdupq_lane_s16(*_Q0.i8, 0);
    v199 = _S5;
    __asm { FCVT            H0, S5 }

    v198 = *_Q0.i16;
    v201 = _S3;
    __asm { FCVT            H0, S3 }

    v197 = *_Q0.i16;
    v200 = _S4;
    __asm { FCVT            H0, S4 }

    v196 = *_Q0.i16;
    v202 = _S2;
    __asm { FCVT            H0, S2 }

    v195 = *_Q0.i16;
    v232 = *(v16 + 36);
    __asm { FCVT            H0, S7 }

    v226 = *_Q0.i16;
    *_Q0.i16 = v23;
    v53 = vdupq_lane_s16(*_Q0.i8, 0);
    *_Q0.i16 = v24;
    v54 = vdupq_lane_s16(*_Q0.i8, 0);
    *_Q0.i16 = v25;
    v55 = vdupq_lane_s16(*_Q0.i8, 0);
    v225 = v55;
    *v55.i16 = v26;
    v56 = vdupq_lane_s16(*v55.i8, 0);
    *v55.i16 = v27;
    v57 = vdupq_lane_s16(*v55.i8, 0);
    v58 = *(v16 + 132);
    if (v58 >= 0x11)
    {
      v59 = 0;
    }

    else
    {
      v59 = 16 - v58;
    }

    v60 = *(v16 + 124);
    if (v60 >= 0x11)
    {
      v61 = 0;
    }

    else
    {
      v61 = 16 - v60;
    }

    v63 = *v12;
    v62 = v12[1];
    v64 = v62 + v20 * v8 + 2 * v4;
    if (!v62)
    {
      v64 = 0;
    }

    v65 = v63 + v19 * v8 + 2 * v4;
    v68 = v10;
    v66 = *v10;
    v67 = v68[1];
    if (v67)
    {
      v69 = v67 + v17 * v179 + 2 * v180;
    }

    else
    {
      v69 = 0;
    }

    v70 = v66 + v18 * v179 + 2 * v180;
    v71 = v61;
    v72 = -v61;
    v73 = v59;
    v230 = *(v16 + 44);
    v231 = *(v16 + 40);
    __asm { FCVT            H0, S17 }

    v224 = _H0;
    __asm { FCVT            H0, S18 }

    v223 = _H0;
    v204 = *(v16 + 48);
    __asm { FCVT            H9, S27 }

    v191 = _H9;
    __asm { FCVT            H9, S20 }

    v190 = _H9;
    v203 = *(v16 + 56);
    __asm { FCVT            H9, S21 }

    v193 = *(v16 + 64);
    v194 = *(v16 + 60);
    __asm { FCVT            H0, S0 }

    v188 = _H0;
    v189 = _H9;
    __asm { FCVT            H0, S1 }

    v187 = _H0;
    v192 = *(v16 + 68);
    __asm { FCVT            H0, S2 }

    v186 = _H0;
    v218 = *(v16 + 108);
    __asm { FCVT            H0, S17 }

    v214 = _H0;
    v217 = *(v16 + 112);
    __asm { FCVT            H0, S31 }

    v213 = _H0;
    v216 = *(v16 + 116);
    __asm { FCVT            H0, S20 }

    v212 = _H0;
    v215 = *(v16 + 120);
    __asm { FCVT            H0, S21 }

    v211 = _H0;
    v222 = *(v16 + 72);
    __asm { FCVT            H0, S3 }

    v210 = _H0;
    v221 = *(v16 + 76);
    __asm { FCVT            H0, S4 }

    v209 = _H0;
    v220 = *(v16 + 80);
    __asm { FCVT            H0, S5 }

    v208 = _H0;
    v219 = *(v16 + 84);
    __asm { FCVT            H0, S7 }

    v207 = _H0;
    v90 = vdupq_n_s16(v72);
    v91 = vdupq_n_s16(v59);
    v92.i64[0] = 0x9000900090009000;
    v92.i64[1] = 0x9000900090009000;
    _S9 = *(v16 + 88);
    __asm { FCVT            H0, S18 }

    v206 = _H0;
    _S10 = *(v16 + 92);
    __asm { FCVT            H0, S25 }

    _S11 = *(v16 + 96);
    __asm { FCVT            H1, S13 }

    _S12 = *(v16 + 100);
    __asm { FCVT            H2, S19 }

    _S5 = *(v16 + 104);
    __asm { FCVT            H7, S3 }

    do
    {
      if (v6 < 8)
      {
        v134 = 0;
        v107 = v64;
        v106 = v65;
        v105 = v69;
        v104 = v70;
      }

      else
      {
        v103 = 0;
        v104 = v70;
        v105 = v69;
        v106 = v65;
        v107 = v64;
        do
        {
          if (v105)
          {
            v234 = vld2q_s16(v105);
            v105 += 16;
            v108 = vaddq_f16(v52, vcvtq_f16_u16(vshlq_u16(v234.val[0], v90)));
            v234.val[0] = vaddq_f16(v52, vcvtq_f16_u16(vshlq_u16(v234.val[1], v90)));
            v109 = vmulq_n_f16(v234.val[0], v195);
            v110 = vmlaq_n_f16(vmulq_n_f16(v108, v197), v234.val[0], v196);
            v111 = vmulq_n_f16(v108, v198);
          }

          else
          {
            v111 = 0uLL;
            v110 = 0uLL;
            v109 = 0uLL;
          }

          v112 = *v104++;
          v113 = vsubq_f16(vcvtq_f16_u16(vshlq_u16(v112, v90)), v227);
          v114 = vmlaq_n_f16(v110, v113, _H8);
          v115 = vmlaq_n_f16(v111, v113, _H8);
          v116 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(v109, v113, _H8), 0), v92));
          v113.i16[0] = *(v44 + 2 * v116.u16[0]);
          v113.i16[1] = *(v44 + 2 * v116.u16[1]);
          v113.i16[2] = *(v44 + 2 * v116.u16[2]);
          v113.i16[3] = *(v44 + 2 * v116.u16[3]);
          v113.i16[4] = *(v44 + 2 * v116.u16[4]);
          v113.i16[5] = *(v44 + 2 * v116.u16[5]);
          v113.i16[6] = *(v44 + 2 * v116.u16[6]);
          v113.i16[7] = *(v44 + 2 * v116.u16[7]);
          v117 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v114, 0), v92));
          v114.i16[0] = *(v44 + 2 * v117.u16[0]);
          v114.i16[1] = *(v44 + 2 * v117.u16[1]);
          v114.i16[2] = *(v44 + 2 * v117.u16[2]);
          v114.i16[3] = *(v44 + 2 * v117.u16[3]);
          v114.i16[4] = *(v44 + 2 * v117.u16[4]);
          v114.i16[5] = *(v44 + 2 * v117.u16[5]);
          v114.i16[6] = *(v44 + 2 * v117.u16[6]);
          v114.i16[7] = *(v44 + 2 * v117.u16[7]);
          v118 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v115, 0), v92));
          v119.i16[0] = *(v44 + 2 * v118.u16[0]);
          v119.i16[1] = *(v44 + 2 * v118.u16[1]);
          v119.i16[2] = *(v44 + 2 * v118.u16[2]);
          v119.i16[3] = *(v44 + 2 * v118.u16[3]);
          v119.i16[4] = *(v44 + 2 * v118.u16[4]);
          v119.i16[5] = *(v44 + 2 * v118.u16[5]);
          v119.i16[6] = *(v44 + 2 * v118.u16[6]);
          v119.i16[7] = *(v44 + 2 * v118.u16[7]);
          v120 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v113, v214), v114, v213), v119, v212), vmaxq_f16(vmaxq_f16(v113, v114), v119), v211), 0), v92));
          v121.i16[0] = *(v33 + 2 * v120.u16[0]);
          v121.i16[1] = *(v33 + 2 * v120.u16[1]);
          v121.i16[2] = *(v33 + 2 * v120.u16[2]);
          v121.i16[3] = *(v33 + 2 * v120.u16[3]);
          v121.i16[4] = *(v33 + 2 * v120.u16[4]);
          v121.i16[5] = *(v33 + 2 * v120.u16[5]);
          v121.i16[6] = *(v33 + 2 * v120.u16[6]);
          v121.i16[7] = *(v33 + 2 * v120.u16[7]);
          v122 = vmulq_f16(v113, v121);
          v123 = vmulq_f16(v114, v121);
          v124 = vmulq_f16(v119, v121);
          v125 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v122, v207), v123, v206), v124, _H0);
          v126 = vmulq_n_f16(v124, _H7);
          v127 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v122, v210), v123, v209), v124, v208), 0), v92));
          v128.i16[0] = *(v45 + 2 * v127.u16[0]);
          v128.i16[1] = *(v45 + 2 * v127.u16[1]);
          v128.i16[2] = *(v45 + 2 * v127.u16[2]);
          v128.i16[3] = *(v45 + 2 * v127.u16[3]);
          v128.i16[4] = *(v45 + 2 * v127.u16[4]);
          v128.i16[5] = *(v45 + 2 * v127.u16[5]);
          v128.i16[6] = *(v45 + 2 * v127.u16[6]);
          v128.i16[7] = *(v45 + 2 * v127.u16[7]);
          v129 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v125, 0), v92));
          v130.i16[0] = *(v45 + 2 * v129.u16[0]);
          v130.i16[1] = *(v45 + 2 * v129.u16[1]);
          v130.i16[2] = *(v45 + 2 * v129.u16[2]);
          v130.i16[3] = *(v45 + 2 * v129.u16[3]);
          v130.i16[4] = *(v45 + 2 * v129.u16[4]);
          v130.i16[5] = *(v45 + 2 * v129.u16[5]);
          v130.i16[6] = *(v45 + 2 * v129.u16[6]);
          v130.i16[7] = *(v45 + 2 * v129.u16[7]);
          v131 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(v126, v123, _H2), v122, _H1), 0), v92));
          v132.i16[0] = *(v45 + 2 * v131.u16[0]);
          v132.i16[1] = *(v45 + 2 * v131.u16[1]);
          v132.i16[2] = *(v45 + 2 * v131.u16[2]);
          v132.i16[3] = *(v45 + 2 * v131.u16[3]);
          v132.i16[4] = *(v45 + 2 * v131.u16[4]);
          v132.i16[5] = *(v45 + 2 * v131.u16[5]);
          v132.i16[6] = *(v45 + 2 * v131.u16[6]);
          v132.i16[7] = *(v45 + 2 * v131.u16[7]);
          *v106++ = vshlq_u16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v53, v128, v226), v130, v224), v132, v223), v53), v225)), v91);
          if (v107)
          {
            v133 = vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v54, v128, v188), v130, v187), v132, v186);
            v233.val[0] = vshlq_u16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v54, v128, v191), v130, v190), v132, v189), v56), v57), v56), v57)), v91);
            v233.val[1] = vshlq_u16(vcvtq_u16_f16(v133), v91);
            vst2q_s16(v107, v233);
            v107 += 16;
          }

          v103 += 8;
        }

        while (v103 < result);
        v134 = v6 & 0xFFFFFFF8;
      }

      _VF = __OFSUB__(v6, v134);
      v135 = v6 - v134;
      if (!((v135 < 0) ^ _VF | (v135 == 0)))
      {
        do
        {
          if (v105)
          {
            v136 = (*v105 >> v71) - v34;
            v137 = (*(v105 + 1) >> v71) - v34;
            v105 += 2;
            v138 = v202 * v137;
            v139 = (v200 * v137) + (v136 * v201);
            v140 = v199 * v136;
          }

          else
          {
            v140 = 0.0;
            v139 = 0.0;
            v138 = 0.0;
          }

          v141 = v104->u16[0];
          v104 = (v104 + 2);
          v142 = v228 * ((v141 >> v71) - v229);
          v143 = v138 + v142;
          v144 = (v138 + v142) <= 8191.0;
          v145 = 8191.0;
          if (v144)
          {
            v145 = v143;
            if (v143 < 0.0)
            {
              v145 = 0.0;
            }
          }

          v146 = v139 + v142;
          v144 = (v139 + v142) <= 8191.0;
          v147 = 8191.0;
          if (v144)
          {
            v147 = v146;
            if (v146 < 0.0)
            {
              v147 = 0.0;
            }
          }

          v148 = v140 + v142;
          v149 = 8191.0;
          if (v148 <= 8191.0)
          {
            v149 = v148;
            if (v148 < 0.0)
            {
              v149 = 0.0;
            }
          }

          _H3 = *(v44 + 2 * llroundf(fminf(fmaxf(v145, 0.0), 8191.0)));
          __asm { FCVT            S3, H3 }

          _H4 = *(v44 + 2 * llroundf(fminf(fmaxf(v147, 0.0), 8191.0)));
          __asm { FCVT            S18, H4 }

          _H4 = *(v44 + 2 * llroundf(fminf(fmaxf(v149, 0.0), 8191.0)));
          __asm { FCVT            S19, H4 }

          v156 = (((v217 * _S18) + (v218 * _S3)) + (v216 * _S19)) + (v215 * fmaxf(_S3, fmaxf(_S18, _S19)));
          v157 = 8191.0;
          if (v156 <= 8191.0)
          {
            v157 = v156;
            if (v156 < 0.0)
            {
              v157 = 0.0;
            }
          }

          _H4 = *(v33 + 2 * llroundf(v157));
          __asm { FCVT            S4, H4 }

          _S3 = _S3 * _S4;
          _S18 = _S18 * _S4;
          v162 = _S19 * _S4;
          v163 = ((v221 * _S18) + (_S3 * v222)) + (v162 * v220);
          v164 = ((_S9 * _S18) + (_S3 * v219)) + (v162 * _S10);
          _S4 = ((_S12 * _S18) + (_S3 * _S11)) + (v162 * _S5);
          LOWORD(_S3) = *(v45 + 2 * llroundf(fminf(fmaxf(v163, 0.0), 8191.0)));
          __asm { FCVT            S3, H3 }

          LOWORD(_S18) = *(v45 + 2 * llroundf(fminf(fmaxf(v164, 0.0), 8191.0)));
          __asm { FCVT            S18, H18 }

          LOWORD(_S4) = *(v45 + 2 * llroundf(fminf(fmaxf(_S4, 0.0), 8191.0)));
          __asm { FCVT            S19, H4 }

          v169 = ((v231 * _S18) + (v232 * _S3)) + (v230 * _S19);
          v170 = v42;
          if ((v169 + v40) <= v42)
          {
            v170 = v169 + v40;
            if ((v169 + v40) < v40)
            {
              v170 = v23;
            }
          }

          v106->i16[0] = llroundf(v170) << v73;
          v106 = (v106 + 2);
          if (v107)
          {
            v171 = ((v41 + (_S3 * v204)) + (_S18 * _S20)) + (_S19 * v203);
            v172 = v43;
            if (v171 <= v43)
            {
              v172 = ((v41 + (_S3 * v204)) + (_S18 * _S20)) + (_S19 * v203);
              if (v171 < v205)
              {
                v172 = v205;
              }
            }

            v173 = ((v41 + (_S3 * v194)) + (_S18 * v193)) + (_S19 * v192);
            *v107 = llroundf(v172) << v73;
            v174 = v43;
            if (v173 <= v43)
            {
              v174 = v173;
              if (v173 < v205)
              {
                v174 = v205;
              }
            }

            v107[1] = llroundf(v174) << v73;
            v107 += 2;
          }

          --v135;
        }

        while (v135);
      }

      v70 += v18;
      v69 += v17;
      v65 += v19;
      v64 += v20;
      ++v15;
    }

    while (v15 != v9);
  }

  if (v182 && v181)
  {
    if (v9 >= 1)
    {
      v175 = 0;
      v176 = (v182 + v178 * v179 + 2 * v180);
      v177 = 2 * v6;
      do
      {
        result = memcpy(v14, v176, v177);
        v176 += v178;
        v14 += v183;
        ++v175;
      }

      while (v9 > v175);
    }
  }

  else if (v181 && v9 >= 1)
  {
    do
    {
      if (v6 >= 1)
      {
        result = memset(v14, 255, 2 * v6);
      }

      v14 += v183;
      --v9;
    }

    while (v9);
  }

  *(v185 + 4 * a2 + 160) = 0;
  return result;
}

uint64_t vt_Copy_xf444_TRC_Tone_Mat_TRC_xf444(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v12 = a4;
  v14 = a1;
  v53 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v50 = a2[2];
  v51 = v16;
  v19 = *a6;
  v18 = a6[1];
  v48 = v17;
  v49 = v19;
  v47 = v18;
  v52 = a6[2];
  if (v15 == 255)
  {
    v20 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v20)
    {
      v21 = 0;
LABEL_29:
      free(v20);
      return v21;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v20 = &v45 - v22;
    bzero(&v45 - v22, v23);
  }

  v24 = a9;
  v25 = vbslq_s8(vcgtq_s64(vaddq_s64(v50, v48), v51), vsubq_s64(v51, v50), v48);
  v26 = vbslq_s8(vcgtq_s64(vaddq_s64(v52, v47), v49), vsubq_s64(v49, v52), v47);
  v27 = vbslq_s8(vcgtq_s64(v26, v25), v25, v26);
  v28.i64[0] = v27.i64[0];
  v28.i64[1] = -1;
  v29 = vaddq_s64(v50, v28);
  v30 = v29.i64[1] + v27.i64[1];
  v31 = (*v12 * (v29.i64[1] + v27.i64[1]) + 2 * v29.i64[0]) > *a5;
  v46 = v12;
  v48 = v27;
  if (v31)
  {
    v32 = a9;
    v33 = v14;
    v34 = a8;
    v35 = a7;
  }

  else if (*(a3 + 8) && (v12[1] * v30 + 4 * v29.i64[0]) > a5[1])
  {
    v32 = a9;
    v33 = v14;
    v34 = a8;
    v35 = a7;
  }

  else if (*(a3 + 16) && (2 * v29.i64[0] + v12[2] * v30) > a5[2])
  {
    v32 = a9;
    v33 = v14;
    v34 = a8;
    v35 = a7;
  }

  else
  {
    v36 = vaddq_s64(v52, v28);
    v37 = v36.i64[1] + v27.i64[1];
    if ((*a8 * (v36.i64[1] + v27.i64[1]) + 2 * v36.i64[0]) <= *a9)
    {
      if (*(a7 + 8) && (a8[1] * v37 + 4 * v36.i64[0]) > a9[1])
      {
        v32 = a9;
        v33 = v14;
        v34 = a8;
        v35 = a7;
      }

      else
      {
        if (!*(a7 + 16) || (2 * v36.i64[0] + a8[2] * v37) <= a9[2])
        {
          goto LABEL_23;
        }

        v32 = a9;
        v33 = v14;
        v34 = a8;
        v35 = a7;
      }
    }

    else
    {
      v32 = a9;
      v33 = v14;
      v34 = a8;
      v35 = a7;
    }
  }

  fig_log_get_emitter();
  v38 = FigSignalErrorAtGM();
  a7 = v35;
  a8 = v34;
  v14 = v33;
  v24 = v32;
  v12 = v46;
  v27 = v48;
  if (v38)
  {
    v21 = v38;
    goto LABEL_28;
  }

LABEL_23:
  *v20 = v15;
  v39 = v50;
  *(v20 + 4) = v51;
  *(v20 + 20) = v27;
  *(v20 + 36) = v39;
  *(v20 + 5) = v49;
  *(v20 + 6) = v27;
  *(v20 + 7) = v52;
  *(v20 + 7) = a3;
  *(v20 + 8) = v12;
  *(v20 + 9) = a5;
  *(v20 + 16) = a7;
  *(v20 + 17) = a8;
  *(v20 + 18) = v24;
  *(v20 + 19) = v14;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v15, global_queue, v20, vt_Copy_xf444_TRC_Tone_Mat_TRC_xf444_GCD);
  if (!v15)
  {
    return 0;
  }

  v41 = (v20 + 160);
  v42 = v15;
  while (1)
  {
    v43 = *v41++;
    v21 = v43;
    if (v43)
    {
      break;
    }

    if (!--v42)
    {
      v21 = 0;
      break;
    }
  }

LABEL_28:
  if (v15 == 255)
  {
    goto LABEL_29;
  }

  return v21;
}

void *vt_Copy_xf444_TRC_Tone_Mat_TRC_xf444_GCD(void *result, uint64_t a2, double a3, float a4, float a5)
{
  v9 = result;
  v127 = *(result + 36);
  v10 = *result;
  v11 = *(result + 28) * a2 / v10 + *(result + 44);
  v12 = result[14];
  v14 = result[12];
  v13 = result[13];
  v15 = v13 * a2 / v10;
  v16 = v15 + result[15];
  v17 = (v13 + v13 * a2) / v10 - v15;
  v18 = result[7];
  v19 = result[8];
  v20 = result[16];
  v21 = result[17];
  v22 = v19[2];
  v128 = v18[2];
  v23 = v21[2];
  v24 = v20[2];
  v25 = (v24 + v23 * v16 + 2 * v12);
  if (v17 >= 1)
  {
    v26 = 0;
    v27 = result[19];
    v28 = *v19;
    v29 = v19[1];
    v30 = *v21;
    v31 = v21[1];
    LOWORD(a4) = *(v27 + 140);
    LOWORD(a5) = *(v27 + 142);
    LOWORD(v5) = *(v27 + 144);
    LOWORD(v6) = *(v27 + 146);
    LOWORD(v7) = *(v27 + 148);
    v32 = 8191.0 / *(v27 + 128);
    v33 = LODWORD(a4);
    v34 = LODWORD(a5);
    v35 = v32 * *v27;
    v137 = v32 * *(v27 + 8);
    v136 = v32 * *(v27 + 16);
    v36 = v32 * *(v27 + 20);
    *&v37 = v32 * *(v27 + 28);
    v134 = *&v37;
    v135 = v36;
    v38 = v5;
    v39 = v6;
    v40 = v7;
    LOWORD(v37) = *(v27 + 150);
    v41 = v37;
    LOWORD(v37) = *(v27 + 152);
    v42 = v37;
    v43 = *(v27 + 36);
    v44 = *(v27 + 40);
    v45 = *(v27 + 44);
    v132 = *(v27 + 52);
    v133 = *(v27 + 48);
    v130 = *(v27 + 60);
    v131 = *(v27 + 56);
    v129 = *(v27 + 64);
    v46 = *(v27 + 68);
    v47 = *(v27 + 72);
    v49 = *(v27 + 76);
    v48 = *(v27 + 80);
    v50 = *(v27 + 84);
    v51 = *(v27 + 88);
    v52 = *(v27 + 92);
    v53 = *(v27 + 96);
    v54 = *(v27 + 100);
    v55 = *(v27 + 104);
    v56 = v27 + 164;
    result = (v27 + 16548);
    v57 = *(v27 + 132);
    if (v57 >= 0x11)
    {
      v58 = 0;
    }

    else
    {
      v58 = 16 - v57;
    }

    v59 = *(v27 + 124);
    if (v59 >= 0x11)
    {
      v60 = 0;
    }

    else
    {
      v60 = 16 - v59;
    }

    v61 = v20[1];
    v62 = *v20 + v30 * v16;
    v63 = v27 + 32932;
    v64 = v61 + v31 * v16 + 2 * v12;
    if (!v61)
    {
      v64 = 0;
    }

    v65 = (v62 + 2 * v12);
    v67 = *v18;
    v66 = v18[1];
    _ZF = v66 == 0;
    v69 = v66 + v29 * v11 + 2 * v127;
    if (_ZF)
    {
      v70 = 0;
    }

    else
    {
      v70 = v69;
    }

    v71 = v67 + v28 * v11 + 2 * v127;
    v73 = *(v27 + 108);
    v72 = *(v27 + 112);
    v74 = *(v27 + 116);
    v75 = *(v27 + 120);
    do
    {
      v76 = v14;
      v77 = v71;
      v78 = v70;
      v79 = v64;
      v80 = v65;
      if (v14 >= 1)
      {
        do
        {
          if (v78)
          {
            v81 = (*v78 >> v60) - v34;
            v82 = (v78[1] >> v60) - v34;
            v78 += 2;
            v83 = v137 * v82;
            v84 = (v135 * v82) + (v81 * v136);
            v85 = v134 * v81;
          }

          else
          {
            v85 = 0.0;
            v84 = 0.0;
            v83 = 0.0;
          }

          v86 = *v77++;
          v87 = v35 * ((v86 >> v60) - v33);
          v88 = v83 + v87;
          v89 = 8191.0;
          if (v88 <= 8191.0)
          {
            v89 = v88;
            if (v88 < 0.0)
            {
              v89 = 0.0;
            }
          }

          v90 = v84 + v87;
          v91 = (v84 + v87) <= 8191.0;
          v92 = 8191.0;
          if (v91)
          {
            v92 = v90;
            if (v90 < 0.0)
            {
              v92 = 0.0;
            }
          }

          v93 = v85 + v87;
          v94 = 8191.0;
          if (v93 <= 8191.0)
          {
            v94 = v93;
            if (v93 < 0.0)
            {
              v94 = 0.0;
            }
          }

          _H0 = *(v56 + 2 * llroundf(fminf(fmaxf(v89, 0.0), 8191.0)));
          __asm { FCVT            S24, H0 }

          _H0 = *(v56 + 2 * llroundf(fminf(fmaxf(v92, 0.0), 8191.0)));
          __asm { FCVT            S25, H0 }

          _H0 = *(v56 + 2 * llroundf(fminf(fmaxf(v94, 0.0), 8191.0)));
          __asm { FCVT            S26, H0 }

          v104 = (((v72 * _S25) + (v73 * _S24)) + (v74 * _S26)) + (v75 * fmaxf(_S24, fmaxf(_S25, _S26)));
          v105 = 8191.0;
          if (v104 <= 8191.0)
          {
            v105 = v104;
            if (v104 < 0.0)
            {
              v105 = 0.0;
            }
          }

          _H0 = *(result + llroundf(v105));
          __asm { FCVT            S0, H0 }

          _S24 = _S24 * _S0;
          _S25 = _S25 * _S0;
          v110 = _S26 * _S0;
          v111 = ((v49 * _S25) + (_S24 * v47)) + (v110 * v48);
          v112 = ((v51 * _S25) + (_S24 * v50)) + (v110 * v52);
          _S0 = ((v54 * _S25) + (_S24 * v53)) + (v110 * v55);
          LOWORD(_S24) = *(v63 + 2 * llroundf(fminf(fmaxf(v111, 0.0), 8191.0)));
          __asm { FCVT            S24, H24 }

          LOWORD(_S25) = *(v63 + 2 * llroundf(fminf(fmaxf(v112, 0.0), 8191.0)));
          __asm { FCVT            S25, H25 }

          LOWORD(_S0) = *(v63 + 2 * llroundf(fminf(fmaxf(_S0, 0.0), 8191.0)));
          __asm { FCVT            S26, H0 }

          v117 = (((v44 * _S25) + (v43 * _S24)) + (v45 * _S26)) + v38;
          v118 = v40;
          if (v117 <= v40)
          {
            v118 = (((v44 * _S25) + (v43 * _S24)) + (v45 * _S26)) + v38;
            if (v117 < v38)
            {
              v118 = v38;
            }
          }

          *v80++ = llroundf(v118) << v58;
          if (v79)
          {
            v119 = ((v39 + (_S24 * v133)) + (_S25 * v132)) + (_S26 * v131);
            v120 = v42;
            if (v119 <= v42)
            {
              v120 = ((v39 + (_S24 * v133)) + (_S25 * v132)) + (_S26 * v131);
              if (v119 < v41)
              {
                v120 = v41;
              }
            }

            v121 = (v39 + (_S24 * v130)) + (_S25 * v129);
            v122 = v121 + (_S26 * v46);
            *v79 = llroundf(v120) << v58;
            v123 = v42;
            if (v122 <= v42)
            {
              v123 = v121 + (_S26 * v46);
              if (v122 < v41)
              {
                v123 = v41;
              }
            }

            v79[1] = llroundf(v123) << v58;
            v79 += 2;
          }

          --v76;
        }

        while (v76);
      }

      v71 += v28;
      v70 = (v70 + v29);
      v65 = (v65 + v30);
      v64 += v31;
      ++v26;
    }

    while (v26 != v17);
  }

  if (v128 && v24)
  {
    if (v17 >= 1)
    {
      v124 = 0;
      v125 = (v128 + v22 * v11 + 2 * v127);
      v126 = 2 * v14;
      do
      {
        result = memcpy(v25, v125, v126);
        v125 += v22;
        v25 += v23;
        ++v124;
      }

      while (v17 > v124);
    }
  }

  else if (v24 && v17 >= 1)
  {
    do
    {
      if (v14 >= 1)
      {
        result = memset(v25, 255, 2 * v14);
      }

      v25 += v23;
      --v17;
    }

    while (v17);
  }

  *(v9 + a2 + 40) = 0;
  return result;
}

uint64_t vt_Copy_xf444_TRC_Mat_TRC_xf444_neon_fp16(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v12 = a4;
  v14 = a1;
  v53 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v50 = a2[2];
  v51 = v16;
  v19 = *a6;
  v18 = a6[1];
  v48 = v17;
  v49 = v19;
  v47 = v18;
  v52 = a6[2];
  if (v15 == 255)
  {
    v20 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v20)
    {
      v21 = 0;
LABEL_29:
      free(v20);
      return v21;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v20 = &v45 - v22;
    bzero(&v45 - v22, v23);
  }

  v24 = a9;
  v25 = vbslq_s8(vcgtq_s64(vaddq_s64(v50, v48), v51), vsubq_s64(v51, v50), v48);
  v26 = vbslq_s8(vcgtq_s64(vaddq_s64(v52, v47), v49), vsubq_s64(v49, v52), v47);
  v27 = vbslq_s8(vcgtq_s64(v26, v25), v25, v26);
  v28.i64[0] = v27.i64[0];
  v28.i64[1] = -1;
  v29 = vaddq_s64(v50, v28);
  v30 = v29.i64[1] + v27.i64[1];
  v31 = (*v12 * (v29.i64[1] + v27.i64[1]) + 2 * v29.i64[0]) > *a5;
  v46 = v12;
  v48 = v27;
  if (v31)
  {
    v32 = a9;
    v33 = v14;
    v34 = a8;
    v35 = a7;
  }

  else if (*(a3 + 8) && (v12[1] * v30 + 4 * v29.i64[0]) > a5[1])
  {
    v32 = a9;
    v33 = v14;
    v34 = a8;
    v35 = a7;
  }

  else if (*(a3 + 16) && (2 * v29.i64[0] + v12[2] * v30) > a5[2])
  {
    v32 = a9;
    v33 = v14;
    v34 = a8;
    v35 = a7;
  }

  else
  {
    v36 = vaddq_s64(v52, v28);
    v37 = v36.i64[1] + v27.i64[1];
    if ((*a8 * (v36.i64[1] + v27.i64[1]) + 2 * v36.i64[0]) <= *a9)
    {
      if (*(a7 + 8) && (a8[1] * v37 + 4 * v36.i64[0]) > a9[1])
      {
        v32 = a9;
        v33 = v14;
        v34 = a8;
        v35 = a7;
      }

      else
      {
        if (!*(a7 + 16) || (2 * v36.i64[0] + a8[2] * v37) <= a9[2])
        {
          goto LABEL_23;
        }

        v32 = a9;
        v33 = v14;
        v34 = a8;
        v35 = a7;
      }
    }

    else
    {
      v32 = a9;
      v33 = v14;
      v34 = a8;
      v35 = a7;
    }
  }

  fig_log_get_emitter();
  v38 = FigSignalErrorAtGM();
  a7 = v35;
  a8 = v34;
  v14 = v33;
  v24 = v32;
  v12 = v46;
  v27 = v48;
  if (v38)
  {
    v21 = v38;
    goto LABEL_28;
  }

LABEL_23:
  *v20 = v15;
  v39 = v50;
  *(v20 + 4) = v51;
  *(v20 + 20) = v27;
  *(v20 + 36) = v39;
  *(v20 + 5) = v49;
  *(v20 + 6) = v27;
  *(v20 + 7) = v52;
  *(v20 + 7) = a3;
  *(v20 + 8) = v12;
  *(v20 + 9) = a5;
  *(v20 + 16) = a7;
  *(v20 + 17) = a8;
  *(v20 + 18) = v24;
  *(v20 + 19) = v14;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v15, global_queue, v20, vt_Copy_xf444_TRC_Mat_TRC_xf444_neon_fp16_GCD);
  if (!v15)
  {
    return 0;
  }

  v41 = (v20 + 160);
  v42 = v15;
  while (1)
  {
    v43 = *v41++;
    v21 = v43;
    if (v43)
    {
      break;
    }

    if (!--v42)
    {
      v21 = 0;
      break;
    }
  }

LABEL_28:
  if (v15 == 255)
  {
    goto LABEL_29;
  }

  return v21;
}

unint64_t vt_Copy_xf444_TRC_Mat_TRC_xf444_neon_fp16_GCD(unint64_t result, uint64_t a2, double a3)
{
  v3 = *result;
  v163 = *(result + 28) * a2 / v3 + *(result + 44);
  v164 = *(result + 36);
  v4 = *(result + 112);
  v6 = *(result + 96);
  v5 = *(result + 104);
  v169 = result;
  v7 = v5 * a2 / v3;
  v8 = v7 + *(result + 120);
  v9 = (v5 + v5 * a2) / v3 - v7;
  v10 = *(result + 56);
  v11 = *(result + 64);
  v12 = *(result + 128);
  v13 = *(result + 136);
  v162 = v11[2];
  v166 = v10[2];
  v167 = v13[2];
  v165 = v12[2];
  v14 = (v165 + v167 * v8 + 2 * v4);
  if (v9 >= 1)
  {
    v15 = 0;
    v16 = *(result + 152);
    v17 = *v11;
    v18 = v11[1];
    v19 = *v13;
    v20 = v13[1];
    v21 = *(v16 + 140);
    v22 = *(v16 + 142);
    v23 = *(v16 + 144);
    v24 = *(v16 + 146);
    v25 = *(v16 + 148);
    v26 = *(v16 + 150);
    v27 = *(v16 + 152);
    _S6 = *(v16 + 36);
    _S7 = *(v16 + 40);
    _S17 = *(v16 + 44);
    _S19 = *(v16 + 48);
    _S20 = *(v16 + 52);
    _S12 = *(v16 + 56);
    _S22 = *(v16 + 60);
    _S26 = *(v16 + 64);
    v36 = v16 + 164;
    result = (v6 - 7);
    *&a3 = 8191.0 / *(v16 + 128);
    v207 = v21;
    v37 = v22;
    _S1 = *&a3 * *v16;
    _S2 = *&a3 * *(v16 + 8);
    _S3 = *&a3 * *(v16 + 16);
    _S4 = *&a3 * *(v16 + 20);
    v42 = v23;
    v43 = v24;
    v44 = v25;
    v189 = v26;
    _S5 = *&a3 * *(v16 + 28);
    v46 = v27;
    *&a3 = v21;
    v47 = v16 + 16548;
    _Q0 = vdupq_lane_s16(*&a3, 0);
    v205 = _Q0;
    *_Q0.i16 = -v22;
    v49 = vdupq_lane_s16(*_Q0.i8, 0);
    v206 = _S1;
    __asm { FCVT            H8, S1 }

    v181 = _S5;
    __asm { FCVT            H0, S5 }

    v180 = *_Q0.i16;
    v183 = _S3;
    __asm { FCVT            H0, S3 }

    v179 = *_Q0.i16;
    *_Q0.i16 = v23;
    v55 = vdupq_lane_s16(*_Q0.i8, 0);
    *_Q0.i16 = v24;
    v56 = vdupq_lane_s16(*_Q0.i8, 0);
    *_Q0.i16 = v25;
    _Q0 = vdupq_lane_s16(*_Q0.i8, 0);
    v204 = _Q0;
    *_Q0.i16 = v26;
    v58 = vdupq_lane_s16(*_Q0.i8, 0);
    *_Q0.i16 = v27;
    v59 = vdupq_lane_s16(*_Q0.i8, 0);
    v182 = _S4;
    __asm { FCVT            H0, S4 }

    v178 = *_Q0.i16;
    v60 = *(v16 + 132);
    v61 = 16 - v60;
    if (v60 >= 0x11)
    {
      v61 = 0;
    }

    v62 = *(v16 + 124);
    if (v62 >= 0x11)
    {
      v63 = 0;
    }

    else
    {
      v63 = 16 - v62;
    }

    v65 = *v12;
    v64 = v12[1];
    v66 = v64 + v20 * v8 + 2 * v4;
    if (!v64)
    {
      v66 = 0;
    }

    v67 = v65 + v19 * v8 + 2 * v4;
    v69 = *v10;
    v68 = v10[1];
    v70 = v68 + v18 * v163 + 2 * v164;
    if (!v68)
    {
      v70 = 0;
    }

    v71 = v69 + v17 * v163 + 2 * v164;
    v184 = _S2;
    __asm { FCVT            H2, S2 }

    v176 = _H2;
    v209 = *(v16 + 40);
    v210 = *(v16 + 36);
    __asm { FCVT            H2, S6 }

    v202 = _H2;
    __asm { FCVT            H2, S7 }

    v201 = _H2;
    v208 = *(v16 + 44);
    __asm { FCVT            H2, S17 }

    v198 = _H2;
    v188 = *(v16 + 48);
    __asm { FCVT            H2, S19 }

    v175 = _H2;
    __asm { FCVT            H2, S20 }

    v174 = _H2;
    v187 = *(v16 + 56);
    __asm { FCVT            H2, S12 }

    v173 = _H2;
    v186 = *(v16 + 60);
    __asm { FCVT            H2, S22 }

    v172 = _H2;
    v185 = *(v16 + 64);
    __asm { FCVT            H2, S26 }

    v177 = *(v16 + 68);
    __asm { FCVT            H0, S0 }

    v170 = _H0;
    v171 = _H2;
    v203 = *(v16 + 72);
    __asm { FCVT            H0, S1 }

    v197 = _H0;
    v200 = *(v16 + 76);
    __asm { FCVT            H0, S3 }

    v196 = _H0;
    v199 = *(v16 + 80);
    __asm { FCVT            H0, S5 }

    v195 = _H0;
    _S5 = *(v16 + 84);
    __asm { FCVT            H0, S27 }

    v194 = _H0;
    _S6 = *(v16 + 88);
    __asm { FCVT            H0, S29 }

    v193 = _H0;
    _S7 = *(v16 + 92);
    __asm { FCVT            H0, S9 }

    v192 = _H0;
    _S2 = *(v16 + 96);
    __asm { FCVT            H0, S10 }

    v191 = _H0;
    _S12 = *(v16 + 100);
    __asm { FCVT            H0, S15 }

    v190 = _H0;
    v95 = vdupq_n_s16(-v63);
    v96 = vdupq_n_s16(v61);
    v97.i64[0] = 0x9000900090009000;
    v97.i64[1] = 0x9000900090009000;
    _S4 = *(v16 + 104);
    __asm { FCVT            H10, S21 }

    do
    {
      if (v6 < 8)
      {
        v125 = 0;
        v104 = v66;
        v103 = v67;
        v102 = v70;
        v101 = v71;
      }

      else
      {
        v100 = 0;
        v101 = v71;
        v102 = v70;
        v103 = v67;
        v104 = v66;
        do
        {
          if (v102)
          {
            v212 = vld2q_s16(v102);
            v102 += 16;
            v105 = vaddq_f16(v49, vcvtq_f16_u16(vshlq_u16(v212.val[0], v95)));
            v106 = vaddq_f16(v49, vcvtq_f16_u16(vshlq_u16(v212.val[1], v95)));
            v107 = vmulq_n_f16(v106, v176);
            v108 = vmlaq_n_f16(vmulq_n_f16(v105, v179), v106, v178);
            v109 = vmulq_n_f16(v105, v180);
          }

          else
          {
            v109 = 0uLL;
            v108 = 0uLL;
            v107 = 0uLL;
          }

          v110 = *v101++;
          v111 = vsubq_f16(vcvtq_f16_u16(vshlq_u16(v110, v95)), v205);
          v112 = vmlaq_n_f16(v108, v111, _H8);
          v113 = vmlaq_n_f16(v109, v111, _H8);
          v114 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(v107, v111, _H8), 0), v97));
          v115.i16[0] = *(v36 + 2 * v114.u16[0]);
          v115.i16[1] = *(v36 + 2 * v114.u16[1]);
          v115.i16[2] = *(v36 + 2 * v114.u16[2]);
          v115.i16[3] = *(v36 + 2 * v114.u16[3]);
          v115.i16[4] = *(v36 + 2 * v114.u16[4]);
          v115.i16[5] = *(v36 + 2 * v114.u16[5]);
          v115.i16[6] = *(v36 + 2 * v114.u16[6]);
          v115.i16[7] = *(v36 + 2 * v114.u16[7]);
          v116 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v112, 0), v97));
          v112.i16[0] = *(v36 + 2 * v116.u16[0]);
          v112.i16[1] = *(v36 + 2 * v116.u16[1]);
          v112.i16[2] = *(v36 + 2 * v116.u16[2]);
          v112.i16[3] = *(v36 + 2 * v116.u16[3]);
          v112.i16[4] = *(v36 + 2 * v116.u16[4]);
          v112.i16[5] = *(v36 + 2 * v116.u16[5]);
          v112.i16[6] = *(v36 + 2 * v116.u16[6]);
          v112.i16[7] = *(v36 + 2 * v116.u16[7]);
          v117 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v113, 0), v97));
          v118.i16[0] = *(v36 + 2 * v117.u16[0]);
          v118.i16[1] = *(v36 + 2 * v117.u16[1]);
          v118.i16[2] = *(v36 + 2 * v117.u16[2]);
          v118.i16[3] = *(v36 + 2 * v117.u16[3]);
          v118.i16[4] = *(v36 + 2 * v117.u16[4]);
          v118.i16[5] = *(v36 + 2 * v117.u16[5]);
          v118.i16[6] = *(v36 + 2 * v117.u16[6]);
          v118.i16[7] = *(v36 + 2 * v117.u16[7]);
          v119 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v115, v197), v112, v196), v118, v195), 0), v97));
          v120.i16[0] = *(v47 + 2 * v119.u16[0]);
          v120.i16[1] = *(v47 + 2 * v119.u16[1]);
          v120.i16[2] = *(v47 + 2 * v119.u16[2]);
          v120.i16[3] = *(v47 + 2 * v119.u16[3]);
          v120.i16[4] = *(v47 + 2 * v119.u16[4]);
          v120.i16[5] = *(v47 + 2 * v119.u16[5]);
          v120.i16[6] = *(v47 + 2 * v119.u16[6]);
          v120.i16[7] = *(v47 + 2 * v119.u16[7]);
          v121 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v115, v194), v112, v193), v118, v192), 0), v97));
          v122.i16[0] = *(v47 + 2 * v121.u16[0]);
          v122.i16[1] = *(v47 + 2 * v121.u16[1]);
          v122.i16[2] = *(v47 + 2 * v121.u16[2]);
          v122.i16[3] = *(v47 + 2 * v121.u16[3]);
          v122.i16[4] = *(v47 + 2 * v121.u16[4]);
          v122.i16[5] = *(v47 + 2 * v121.u16[5]);
          v122.i16[6] = *(v47 + 2 * v121.u16[6]);
          v122.i16[7] = *(v47 + 2 * v121.u16[7]);
          v123 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v118, _H10), v112, v190), v115, v191), 0), v97));
          v124.i16[0] = *(v47 + 2 * v123.u16[0]);
          v124.i16[1] = *(v47 + 2 * v123.u16[1]);
          v124.i16[2] = *(v47 + 2 * v123.u16[2]);
          v124.i16[3] = *(v47 + 2 * v123.u16[3]);
          v124.i16[4] = *(v47 + 2 * v123.u16[4]);
          v124.i16[5] = *(v47 + 2 * v123.u16[5]);
          v124.i16[6] = *(v47 + 2 * v123.u16[6]);
          v124.i16[7] = *(v47 + 2 * v123.u16[7]);
          *v103++ = vshlq_u16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v55, v120, v202), v122, v201), v124, v198), v55), v204)), v96);
          if (v104)
          {
            v211.val[0] = vshlq_u16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v56, v120, v175), v122, v174), v124, v173), v58), v59), v58), v59)), v96);
            v211.val[1] = vshlq_u16(vcvtq_u16_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v56, v120, v172), v122, v171), v124, v170)), v96);
            vst2q_s16(v104, v211);
            v104 += 16;
          }

          v100 += 8;
        }

        while (v100 < result);
        v125 = v6 & 0xFFFFFFF8;
      }

      _VF = __OFSUB__(v6, v125);
      v126 = v6 - v125;
      if (!((v126 < 0) ^ _VF | (v126 == 0)))
      {
        do
        {
          if (v102)
          {
            v127 = (*v102 >> v63) - v37;
            v128 = (*(v102 + 1) >> v63) - v37;
            v102 += 2;
            v129 = v184 * v128;
            v130 = (v182 * v128) + (v127 * v183);
            v131 = v181 * v127;
          }

          else
          {
            v131 = 0.0;
            v130 = 0.0;
            v129 = 0.0;
          }

          v132 = v101->u16[0];
          v101 = (v101 + 2);
          v133 = v206 * ((v132 >> v63) - v207);
          v134 = v129 + v133;
          v135 = 8191.0;
          if (v134 <= 8191.0)
          {
            v135 = v134;
            if (v134 < 0.0)
            {
              v135 = 0.0;
            }
          }

          v136 = v130 + v133;
          v137 = (v130 + v133) <= 8191.0;
          v138 = 8191.0;
          if (v137)
          {
            v138 = v136;
            if (v136 < 0.0)
            {
              v138 = 0.0;
            }
          }

          v139 = v131 + v133;
          v140 = 8191.0;
          if (v139 <= 8191.0)
          {
            v140 = v139;
            if (v139 < 0.0)
            {
              v140 = 0.0;
            }
          }

          _H0 = *(v36 + 2 * llroundf(fminf(fmaxf(v135, 0.0), 8191.0)));
          __asm { FCVT            S0, H0 }

          _H1 = *(v36 + 2 * llroundf(fminf(fmaxf(v138, 0.0), 8191.0)));
          __asm { FCVT            S1, H1 }

          _H3 = *(v36 + 2 * llroundf(fminf(fmaxf(v140, 0.0), 8191.0)));
          __asm { FCVT            S3, H3 }

          v147 = ((v200 * _S1) + (_S0 * v203)) + (_S3 * v199);
          v148 = ((_S6 * _S1) + (_S0 * _S5)) + (_S3 * _S7);
          _S0 = (_S12 * _S1) + (_S0 * _S2);
          LOWORD(_S1) = *(v47 + 2 * llroundf(fminf(fmaxf(v147, 0.0), 8191.0)));
          __asm { FCVT            S21, H1 }

          LOWORD(_S1) = *(v47 + 2 * llroundf(fminf(fmaxf(v148, 0.0), 8191.0)));
          __asm { FCVT            S22, H1 }

          LOWORD(_S0) = *(v47 + 2 * llroundf(fminf(fmaxf(_S0 + (_S3 * _S4), 0.0), 8191.0)));
          __asm { FCVT            S27, H0 }

          v153 = ((v209 * _S22) + (v210 * _S21)) + (v208 * _S27);
          v154 = v44;
          if ((v153 + v42) <= v44)
          {
            v154 = v153 + v42;
            if ((v153 + v42) < v42)
            {
              v154 = v42;
            }
          }

          v103->i16[0] = llroundf(v154) << v61;
          v103 = (v103 + 2);
          if (v104)
          {
            v155 = ((v43 + (_S21 * v188)) + (_S22 * _S20)) + (_S27 * v187);
            v156 = v46;
            if (v155 <= v46)
            {
              v156 = ((v43 + (_S21 * v188)) + (_S22 * _S20)) + (_S27 * v187);
              if (v155 < v189)
              {
                v156 = v189;
              }
            }

            v157 = ((v43 + (_S21 * v186)) + (_S22 * v185)) + (_S27 * v177);
            *v104 = llroundf(v156) << v61;
            v158 = v46;
            if (v157 <= v46)
            {
              v158 = v157;
              if (v157 < v189)
              {
                v158 = v189;
              }
            }

            v104[1] = llroundf(v158) << v61;
            v104 += 2;
          }

          --v126;
        }

        while (v126);
      }

      v71 += v17;
      v70 += v18;
      v67 += v19;
      v66 += v20;
      ++v15;
    }

    while (v15 != v9);
  }

  if (v166 && v165)
  {
    if (v9 >= 1)
    {
      v159 = 0;
      v160 = (v166 + v162 * v163 + 2 * v164);
      v161 = 2 * v6;
      do
      {
        result = memcpy(v14, v160, v161);
        v160 += v162;
        v14 += v167;
        ++v159;
      }

      while (v9 > v159);
    }
  }

  else if (v165 && v9 >= 1)
  {
    do
    {
      if (v6 >= 1)
      {
        result = memset(v14, 255, 2 * v6);
      }

      v14 += v167;
      --v9;
    }

    while (v9);
  }

  *(v169 + 4 * a2 + 160) = 0;
  return result;
}

uint64_t vt_Copy_xf444_TRC_Mat_TRC_xf444(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v12 = a4;
  v14 = a1;
  v53 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v50 = a2[2];
  v51 = v16;
  v19 = *a6;
  v18 = a6[1];
  v48 = v17;
  v49 = v19;
  v47 = v18;
  v52 = a6[2];
  if (v15 == 255)
  {
    v20 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v20)
    {
      v21 = 0;
LABEL_29:
      free(v20);
      return v21;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v20 = &v45 - v22;
    bzero(&v45 - v22, v23);
  }

  v24 = a9;
  v25 = vbslq_s8(vcgtq_s64(vaddq_s64(v50, v48), v51), vsubq_s64(v51, v50), v48);
  v26 = vbslq_s8(vcgtq_s64(vaddq_s64(v52, v47), v49), vsubq_s64(v49, v52), v47);
  v27 = vbslq_s8(vcgtq_s64(v26, v25), v25, v26);
  v28.i64[0] = v27.i64[0];
  v28.i64[1] = -1;
  v29 = vaddq_s64(v50, v28);
  v30 = v29.i64[1] + v27.i64[1];
  v31 = (*v12 * (v29.i64[1] + v27.i64[1]) + 2 * v29.i64[0]) > *a5;
  v46 = v12;
  v48 = v27;
  if (v31)
  {
    v32 = a9;
    v33 = v14;
    v34 = a8;
    v35 = a7;
  }

  else if (*(a3 + 8) && (v12[1] * v30 + 4 * v29.i64[0]) > a5[1])
  {
    v32 = a9;
    v33 = v14;
    v34 = a8;
    v35 = a7;
  }

  else if (*(a3 + 16) && (2 * v29.i64[0] + v12[2] * v30) > a5[2])
  {
    v32 = a9;
    v33 = v14;
    v34 = a8;
    v35 = a7;
  }

  else
  {
    v36 = vaddq_s64(v52, v28);
    v37 = v36.i64[1] + v27.i64[1];
    if ((*a8 * (v36.i64[1] + v27.i64[1]) + 2 * v36.i64[0]) <= *a9)
    {
      if (*(a7 + 8) && (a8[1] * v37 + 4 * v36.i64[0]) > a9[1])
      {
        v32 = a9;
        v33 = v14;
        v34 = a8;
        v35 = a7;
      }

      else
      {
        if (!*(a7 + 16) || (2 * v36.i64[0] + a8[2] * v37) <= a9[2])
        {
          goto LABEL_23;
        }

        v32 = a9;
        v33 = v14;
        v34 = a8;
        v35 = a7;
      }
    }

    else
    {
      v32 = a9;
      v33 = v14;
      v34 = a8;
      v35 = a7;
    }
  }

  fig_log_get_emitter();
  v38 = FigSignalErrorAtGM();
  a7 = v35;
  a8 = v34;
  v14 = v33;
  v24 = v32;
  v12 = v46;
  v27 = v48;
  if (v38)
  {
    v21 = v38;
    goto LABEL_28;
  }

LABEL_23:
  *v20 = v15;
  v39 = v50;
  *(v20 + 4) = v51;
  *(v20 + 20) = v27;
  *(v20 + 36) = v39;
  *(v20 + 5) = v49;
  *(v20 + 6) = v27;
  *(v20 + 7) = v52;
  *(v20 + 7) = a3;
  *(v20 + 8) = v12;
  *(v20 + 9) = a5;
  *(v20 + 16) = a7;
  *(v20 + 17) = a8;
  *(v20 + 18) = v24;
  *(v20 + 19) = v14;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v15, global_queue, v20, vt_Copy_xf444_TRC_Mat_TRC_xf444_GCD);
  if (!v15)
  {
    return 0;
  }

  v41 = (v20 + 160);
  v42 = v15;
  while (1)
  {
    v43 = *v41++;
    v21 = v43;
    if (v43)
    {
      break;
    }

    if (!--v42)
    {
      v21 = 0;
      break;
    }
  }

LABEL_28:
  if (v15 == 255)
  {
    goto LABEL_29;
  }

  return v21;
}

void *vt_Copy_xf444_TRC_Mat_TRC_xf444_GCD(void *result, uint64_t a2, double a3, float a4, float a5)
{
  v9 = result;
  v10 = *(result + 36);
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
  v119 = v19[2];
  v24 = v22[2];
  v25 = v21[2];
  v26 = (v25 + v24 * v17 + 2 * v13);
  if (v18 >= 1)
  {
    v27 = 0;
    v28 = result[19];
    v29 = *v20;
    v30 = v20[1];
    v31 = *v22;
    v32 = v22[1];
    LOWORD(a4) = *(v28 + 140);
    LOWORD(a5) = *(v28 + 142);
    LOWORD(v5) = *(v28 + 144);
    LOWORD(v6) = *(v28 + 146);
    LOWORD(v7) = *(v28 + 148);
    v33 = 8191.0 / *(v28 + 128);
    v34 = LODWORD(a4);
    v35 = LODWORD(a5);
    v36 = v33 * *v28;
    v124 = v33 * *(v28 + 8);
    v123 = v33 * *(v28 + 16);
    v37 = v33 * *(v28 + 20);
    *&v38 = v33 * *(v28 + 28);
    v121 = *&v38;
    v122 = v37;
    v39 = v5;
    v40 = v6;
    v41 = v7;
    LOWORD(v38) = *(v28 + 150);
    v42 = v38;
    LOWORD(v38) = *(v28 + 152);
    v43 = v38;
    v44 = *(v28 + 36);
    v45 = *(v28 + 40);
    v46 = *(v28 + 44);
    v120 = *(v28 + 48);
    v47 = *(v28 + 52);
    v48 = *(v28 + 56);
    v49 = *(v28 + 60);
    v50 = *(v28 + 64);
    v51 = *(v28 + 68);
    v52 = *(v28 + 72);
    v54 = *(v28 + 76);
    v53 = *(v28 + 80);
    v55 = *(v28 + 84);
    v56 = *(v28 + 88);
    v57 = *(v28 + 92);
    v58 = *(v28 + 96);
    v59 = *(v28 + 100);
    v60 = *(v28 + 104);
    v61 = v28 + 164;
    result = (v28 + 16548);
    v62 = *(v28 + 132);
    _CF = v62 >= 0x11;
    v64 = 16 - v62;
    if (_CF)
    {
      v64 = 0;
    }

    v65 = *(v28 + 124);
    if (v65 >= 0x11)
    {
      v66 = 0;
    }

    else
    {
      v66 = 16 - v65;
    }

    v68 = *v21;
    v67 = v21[1];
    v69 = v67 + v32 * v17 + 2 * v13;
    if (!v67)
    {
      v69 = 0;
    }

    v70 = v68 + v31 * v17 + 2 * v13;
    v72 = *v19;
    v71 = v19[1];
    v73 = v71 + v30 * v12 + 2 * v10;
    if (!v71)
    {
      v73 = 0;
    }

    v74 = v72 + v29 * v12 + 2 * v10;
    do
    {
      v75 = v15;
      v76 = v74;
      v77 = v73;
      v78 = v69;
      v79 = v70;
      if (v15 >= 1)
      {
        do
        {
          if (v77)
          {
            v80 = (*v77 >> v66) - v35;
            v81 = (v77[1] >> v66) - v35;
            v77 += 2;
            v82 = v124 * v81;
            v83 = (v122 * v81) + (v80 * v123);
            v84 = v121 * v80;
          }

          else
          {
            v84 = 0.0;
            v83 = 0.0;
            v82 = 0.0;
          }

          v85 = *v76++;
          v86 = v36 * ((v85 >> v66) - v34);
          v87 = v82 + v86;
          v88 = 8191.0;
          if (v87 <= 8191.0)
          {
            v88 = v87;
            if (v87 < 0.0)
            {
              v88 = 0.0;
            }
          }

          v89 = v83 + v86;
          v90 = (v83 + v86) <= 8191.0;
          v91 = 8191.0;
          if (v90)
          {
            v91 = v89;
            if (v89 < 0.0)
            {
              v91 = 0.0;
            }
          }

          v92 = v84 + v86;
          v90 = (v84 + v86) <= 8191.0;
          v93 = 8191.0;
          if (v90)
          {
            v93 = v92;
            if (v92 < 0.0)
            {
              v93 = 0.0;
            }
          }

          _H0 = *(v61 + 2 * llroundf(fminf(fmaxf(v88, 0.0), 8191.0)));
          __asm { FCVT            S0, H0 }

          _H5 = *(v61 + 2 * llroundf(fminf(fmaxf(v91, 0.0), 8191.0)));
          __asm { FCVT            S5, H5 }

          _H4 = *(v61 + 2 * llroundf(fminf(fmaxf(v93, 0.0), 8191.0)));
          __asm { FCVT            S4, H4 }

          v103 = ((v54 * _S5) + (_S0 * v52)) + (_S4 * v53);
          v104 = ((v56 * _S5) + (_S0 * v55)) + (_S4 * v57);
          _S0 = ((v59 * _S5) + (_S0 * v58)) + (_S4 * v60);
          LOWORD(_S4) = *(result + llroundf(fminf(fmaxf(v103, 0.0), 8191.0)));
          __asm { FCVT            S4, H4 }

          LOWORD(_S5) = *(result + llroundf(fminf(fmaxf(v104, 0.0), 8191.0)));
          __asm { FCVT            S5, H5 }

          LOWORD(_S0) = *(result + llroundf(fminf(fmaxf(_S0, 0.0), 8191.0)));
          __asm { FCVT            S6, H0 }

          v109 = (((v45 * _S5) + (v44 * _S4)) + (v46 * _S6)) + v39;
          v110 = v41;
          if (v109 <= v41)
          {
            v110 = (((v45 * _S5) + (v44 * _S4)) + (v46 * _S6)) + v39;
            if (v109 < v39)
            {
              v110 = v39;
            }
          }

          *v79++ = llroundf(v110) << v64;
          if (v78)
          {
            v111 = ((v40 + (_S4 * v120)) + (_S5 * v47)) + (_S6 * v48);
            v112 = v43;
            if (v111 <= v43)
            {
              v112 = ((v40 + (_S4 * v120)) + (_S5 * v47)) + (_S6 * v48);
              if (v111 < v42)
              {
                v112 = v42;
              }
            }

            v113 = (v40 + (_S4 * v49)) + (_S5 * v50);
            v114 = v113 + (_S6 * v51);
            *v78 = llroundf(v112) << v64;
            v115 = v43;
            if (v114 <= v43)
            {
              v115 = v113 + (_S6 * v51);
              if (v114 < v42)
              {
                v115 = v42;
              }
            }

            v78[1] = llroundf(v115) << v64;
            v78 += 2;
          }

          --v75;
        }

        while (v75);
      }

      v74 += v29;
      v73 += v30;
      v70 += v31;
      v69 += v32;
      ++v27;
    }

    while (v27 != v18);
  }

  if (v119 && v25)
  {
    if (v18 >= 1)
    {
      v116 = 0;
      v117 = (v119 + v23 * v12 + 2 * v10);
      v118 = 2 * v15;
      do
      {
        result = memcpy(v26, v117, v118);
        v117 += v23;
        v26 += v24;
        ++v116;
      }

      while (v18 > v116);
    }
  }

  else if (v25 && v18 >= 1)
  {
    do
    {
      if (v15 >= 1)
      {
        result = memset(v26, 255, 2 * v15);
      }

      v26 += v24;
      --v18;
    }

    while (v18);
  }

  *(v9 + a2 + 40) = 0;
  return result;
}

uint64_t vt_Copy_xf444_rgb_xf444_neon_fp16(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v12 = a4;
  v14 = a1;
  v53 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v50 = a2[2];
  v51 = v16;
  v19 = *a6;
  v18 = a6[1];
  v48 = v17;
  v49 = v19;
  v47 = v18;
  v52 = a6[2];
  if (v15 == 255)
  {
    v20 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v20)
    {
      v21 = 0;
LABEL_29:
      free(v20);
      return v21;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v20 = &v45 - v22;
    bzero(&v45 - v22, v23);
  }

  v24 = a9;
  v25 = vbslq_s8(vcgtq_s64(vaddq_s64(v50, v48), v51), vsubq_s64(v51, v50), v48);
  v26 = vbslq_s8(vcgtq_s64(vaddq_s64(v52, v47), v49), vsubq_s64(v49, v52), v47);
  v27 = vbslq_s8(vcgtq_s64(v26, v25), v25, v26);
  v28.i64[0] = v27.i64[0];
  v28.i64[1] = -1;
  v29 = vaddq_s64(v50, v28);
  v30 = v29.i64[1] + v27.i64[1];
  v31 = (*v12 * (v29.i64[1] + v27.i64[1]) + 2 * v29.i64[0]) > *a5;
  v46 = v12;
  v48 = v27;
  if (v31)
  {
    v32 = a9;
    v33 = v14;
    v34 = a8;
    v35 = a7;
  }

  else if (*(a3 + 8) && (v12[1] * v30 + 4 * v29.i64[0]) > a5[1])
  {
    v32 = a9;
    v33 = v14;
    v34 = a8;
    v35 = a7;
  }

  else if (*(a3 + 16) && (2 * v29.i64[0] + v12[2] * v30) > a5[2])
  {
    v32 = a9;
    v33 = v14;
    v34 = a8;
    v35 = a7;
  }

  else
  {
    v36 = vaddq_s64(v52, v28);
    v37 = v36.i64[1] + v27.i64[1];
    if ((*a8 * (v36.i64[1] + v27.i64[1]) + 2 * v36.i64[0]) <= *a9)
    {
      if (*(a7 + 8) && (a8[1] * v37 + 4 * v36.i64[0]) > a9[1])
      {
        v32 = a9;
        v33 = v14;
        v34 = a8;
        v35 = a7;
      }

      else
      {
        if (!*(a7 + 16) || (2 * v36.i64[0] + a8[2] * v37) <= a9[2])
        {
          goto LABEL_23;
        }

        v32 = a9;
        v33 = v14;
        v34 = a8;
        v35 = a7;
      }
    }

    else
    {
      v32 = a9;
      v33 = v14;
      v34 = a8;
      v35 = a7;
    }
  }

  fig_log_get_emitter();
  v38 = FigSignalErrorAtGM();
  a7 = v35;
  a8 = v34;
  v14 = v33;
  v24 = v32;
  v12 = v46;
  v27 = v48;
  if (v38)
  {
    v21 = v38;
    goto LABEL_28;
  }

LABEL_23:
  *v20 = v15;
  v39 = v50;
  *(v20 + 4) = v51;
  *(v20 + 20) = v27;
  *(v20 + 36) = v39;
  *(v20 + 5) = v49;
  *(v20 + 6) = v27;
  *(v20 + 7) = v52;
  *(v20 + 7) = a3;
  *(v20 + 8) = v12;
  *(v20 + 9) = a5;
  *(v20 + 16) = a7;
  *(v20 + 17) = a8;
  *(v20 + 18) = v24;
  *(v20 + 19) = v14;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v15, global_queue, v20, vt_Copy_xf444_rgb_xf444_neon_fp16_GCD);
  if (!v15)
  {
    return 0;
  }

  v41 = (v20 + 160);
  v42 = v15;
  while (1)
  {
    v43 = *v41++;
    v21 = v43;
    if (v43)
    {
      break;
    }

    if (!--v42)
    {
      v21 = 0;
      break;
    }
  }

LABEL_28:
  if (v15 == 255)
  {
    goto LABEL_29;
  }

  return v21;
}

__int16 *vt_Copy_xf444_rgb_xf444_neon_fp16_GCD(void *a1, uint64_t a2, double a3, double a4, double a5, double _D3)
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
  result = a1[16];
  v21 = a1[17];
  v22 = v19[2];
  v132 = v18[2];
  v23 = v21[2];
  v24 = *(result + 2);
  v25 = (v24 + v23 * v16 + 2 * v12);
  if (v17 >= 1)
  {
    v26 = 0;
    v27 = a1[19];
    v28 = *v19;
    v29 = v19[1];
    v30 = *v21;
    v31 = v21[1];
    v32 = *(v27 + 140);
    v33 = *(v27 + 142);
    v34 = *(v27 + 144);
    v35 = *(v27 + 146);
    v36 = *(v27 + 148);
    v37 = *(v27 + 150);
    v38 = *(v27 + 152);
    _S0 = *(v27 + 36);
    _S1 = *(v27 + 40);
    _S2 = *(v27 + 44);
    _S21 = *(v27 + 48);
    _S22 = *(v27 + 52);
    _S23 = *(v27 + 56);
    _S26 = *(v27 + 60);
    _S28 = *(v27 + 64);
    v131 = *(v27 + 68);
    *v6.i16 = v32;
    v47 = v33;
    *&_D3 = *(v27 + 136) / *(v27 + 128);
    _S19 = *&_D3 * *v27;
    _S4 = *&_D3 * *(v27 + 8);
    _S5 = *&_D3 * *(v27 + 16);
    _S6 = *&_D3 * *(v27 + 20);
    _S7 = *&_D3 * *(v27 + 28);
    v53 = v34;
    v54 = v35;
    v55 = v36;
    v56 = v37;
    v57 = v38;
    v58 = vdupq_lane_s16(v6, 0);
    __asm { FCVT            H8, S19 }

    *&_D3 = -v33;
    v64 = vdupq_lane_s16(*&_D3, 0);
    v143 = _S7;
    __asm { FCVT            H3, S7 }

    v142 = *&_D3;
    v145 = _S5;
    __asm { FCVT            H3, S5 }

    v140 = *&_D3;
    v144 = _S6;
    __asm { FCVT            H3, S6 }

    v139 = *&_D3;
    *&_D3 = v34;
    v65 = vdupq_lane_s16(*&_D3, 0);
    *&_D3 = v35;
    v66 = vdupq_lane_s16(*&_D3, 0);
    *&_D3 = v36;
    v67 = vdupq_lane_s16(*&_D3, 0);
    *&_D3 = v37;
    v68 = vdupq_lane_s16(*&_D3, 0);
    *&_D3 = v38;
    v69 = vdupq_lane_s16(*&_D3, 0);
    v70 = *(v27 + 132);
    if (v70 >= 0x11)
    {
      v71 = 0;
    }

    else
    {
      v71 = 16 - v70;
    }

    v72 = *(v27 + 124);
    v73 = 16 - v72;
    if (v72 >= 0x11)
    {
      v73 = 0;
    }

    v75 = *result;
    v74 = *(result + 1);
    result = (v74 + v31 * v16 + 2 * v12);
    if (!v74)
    {
      result = 0;
    }

    v76 = v75 + v30 * v16 + 2 * v12;
    v78 = *v18;
    v77 = v18[1];
    v79 = v77 + v29 * v11 + 2 * v9;
    if (!v77)
    {
      v79 = 0;
    }

    v80 = v78 + v28 * v11 + 2 * v9;
    v146 = _S4;
    __asm { FCVT            H3, S4 }

    v138 = _H3;
    __asm
    {
      FCVT            H4, S0
      FCVT            H5, S1
      FCVT            H6, S2
    }

    v149 = _S21;
    __asm { FCVT            H3, S21 }

    v137 = _H3;
    v148 = _S22;
    __asm { FCVT            H3, S22 }

    v136 = _H3;
    v147 = _S23;
    __asm { FCVT            H3, S23 }

    v135 = _H3;
    v141 = _S26;
    __asm { FCVT            H3, S26 }

    v134 = _H3;
    v89 = _S28;
    __asm { FCVT            H3, S28 }

    v133 = _H3;
    _S7 = v131;
    __asm { FCVT            H3, S3 }

    v93 = vdupq_n_s16(-v73);
    v94 = vdupq_n_s16(v71);
    do
    {
      if (v14 < 8)
      {
        v110 = 0;
        v99 = result;
        v98 = v76;
        v97 = v79;
        v96 = v80;
      }

      else
      {
        v95 = 0;
        v96 = v80;
        v97 = v79;
        v98 = v76;
        v99 = result;
        do
        {
          if (v97)
          {
            v150 = vld2q_s16(v97);
            v97 += 16;
            v100 = vaddq_f16(v64, vcvtq_f16_u16(vshlq_u16(v150.val[0], v93)));
            v150.val[0] = vaddq_f16(v64, vcvtq_f16_u16(vshlq_u16(v150.val[1], v93)));
            v101 = vmulq_n_f16(v150.val[0], v138);
            v102 = vmlaq_n_f16(vmulq_n_f16(v100, v140), v150.val[0], v139);
            v103 = vmulq_n_f16(v100, v142);
          }

          else
          {
            v103 = 0uLL;
            v102 = 0uLL;
            v101 = 0uLL;
          }

          v104 = *v96++;
          v105 = vsubq_f16(vcvtq_f16_u16(vshlq_u16(v104, v93)), v58);
          v106 = vmlaq_n_f16(v101, v105, _H8);
          v107 = vmlaq_n_f16(v102, v105, _H8);
          v108 = vmlaq_n_f16(v103, v105, _H8);
          *v98++ = vshlq_u16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v65, v106, _H4), v107, _H5), v108, _H6), v65), v67)), v94);
          if (v99)
          {
            v109 = vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v66, v106, v134), v107, v133), v108, _H3);
            v151.val[0] = vshlq_u16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v66, v106, v137), v107, v136), v108, v135), v68), v69), v68), v69)), v94);
            v151.val[1] = vshlq_u16(vcvtq_u16_f16(v109), v94);
            vst2q_s16(v99, v151);
            v99 += 16;
          }

          v95 += 8;
        }

        while (v95 < v14 - 7);
        v110 = v14 & 0x7FFFFFF8;
      }

      _VF = __OFSUB__(v14, v110);
      v111 = v14 - v110;
      if (!((v111 < 0) ^ _VF | (v111 == 0)))
      {
        do
        {
          if (v97)
          {
            v112 = (*v97 >> v73) - v47;
            v113 = (*(v97 + 1) >> v73) - v47;
            v97 += 2;
            v114 = v146 * v113;
            v115 = (v144 * v113) + (v112 * v145);
            v116 = v143 * v112;
          }

          else
          {
            v116 = 0.0;
            v115 = 0.0;
            v114 = 0.0;
          }

          v117 = v96->u16[0];
          v96 = (v96 + 2);
          v118 = _S19 * ((v117 >> v73) - v32);
          v119 = v114 + v118;
          v120 = v115 + v118;
          v121 = v116 + v118;
          v122 = (((_S1 * v120) + (_S0 * v119)) + (_S2 * v121)) + v53;
          v123 = v55;
          if (v122 <= v55)
          {
            v123 = (((_S1 * v120) + (_S0 * v119)) + (_S2 * v121)) + v53;
            if (v122 < v53)
            {
              v123 = v53;
            }
          }

          v98->i16[0] = llroundf(v123) << v71;
          v98 = (v98 + 2);
          if (v99)
          {
            v124 = ((v54 + (v119 * v149)) + (v120 * v148)) + (v121 * v147);
            v125 = v57;
            if (v124 <= v57)
            {
              v125 = ((v54 + (v119 * v149)) + (v120 * v148)) + (v121 * v147);
              if (v124 < v56)
              {
                v125 = v56;
              }
            }

            v126 = ((v54 + (v119 * v141)) + (v120 * v89)) + (v121 * v131);
            *v99 = llroundf(v125) << v71;
            v127 = v57;
            if (v126 <= v57)
            {
              v127 = v126;
              if (v126 < v56)
              {
                v127 = v56;
              }
            }

            v99[1] = llroundf(v127) << v71;
            v99 += 2;
          }

          --v111;
        }

        while (v111);
      }

      v80 += v28;
      v79 += v29;
      v76 += v30;
      result = (result + v31);
      ++v26;
    }

    while (v26 != v17);
  }

  if (v132 && v24)
  {
    if (v17 >= 1)
    {
      v128 = 0;
      v129 = (v132 + v22 * v11 + 2 * v9);
      v130 = 2 * v14;
      do
      {
        result = memcpy(v25, v129, v130);
        v129 += v22;
        v25 += v23;
        ++v128;
      }

      while (v17 > v128);
    }
  }

  else if (v24 && v17 >= 1)
  {
    do
    {
      if (v14 >= 1)
      {
        result = memset(v25, 255, 2 * v14);
      }

      v25 += v23;
      --v17;
    }

    while (v17);
  }

  *(a1 + a2 + 40) = 0;
  return result;
}

uint64_t vt_Copy_xf444_rgb_xf444(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v12 = a4;
  v14 = a1;
  v53 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v50 = a2[2];
  v51 = v16;
  v19 = *a6;
  v18 = a6[1];
  v48 = v17;
  v49 = v19;
  v47 = v18;
  v52 = a6[2];
  if (v15 == 255)
  {
    v20 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v20)
    {
      v21 = 0;
LABEL_29:
      free(v20);
      return v21;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v20 = &v45 - v22;
    bzero(&v45 - v22, v23);
  }

  v24 = a9;
  v25 = vbslq_s8(vcgtq_s64(vaddq_s64(v50, v48), v51), vsubq_s64(v51, v50), v48);
  v26 = vbslq_s8(vcgtq_s64(vaddq_s64(v52, v47), v49), vsubq_s64(v49, v52), v47);
  v27 = vbslq_s8(vcgtq_s64(v26, v25), v25, v26);
  v28.i64[0] = v27.i64[0];
  v28.i64[1] = -1;
  v29 = vaddq_s64(v50, v28);
  v30 = v29.i64[1] + v27.i64[1];
  v31 = (*v12 * (v29.i64[1] + v27.i64[1]) + 2 * v29.i64[0]) > *a5;
  v46 = v12;
  v48 = v27;
  if (v31)
  {
    v32 = a9;
    v33 = v14;
    v34 = a8;
    v35 = a7;
  }

  else if (*(a3 + 8) && (v12[1] * v30 + 4 * v29.i64[0]) > a5[1])
  {
    v32 = a9;
    v33 = v14;
    v34 = a8;
    v35 = a7;
  }

  else if (*(a3 + 16) && (2 * v29.i64[0] + v12[2] * v30) > a5[2])
  {
    v32 = a9;
    v33 = v14;
    v34 = a8;
    v35 = a7;
  }

  else
  {
    v36 = vaddq_s64(v52, v28);
    v37 = v36.i64[1] + v27.i64[1];
    if ((*a8 * (v36.i64[1] + v27.i64[1]) + 2 * v36.i64[0]) <= *a9)
    {
      if (*(a7 + 8) && (a8[1] * v37 + 4 * v36.i64[0]) > a9[1])
      {
        v32 = a9;
        v33 = v14;
        v34 = a8;
        v35 = a7;
      }

      else
      {
        if (!*(a7 + 16) || (2 * v36.i64[0] + a8[2] * v37) <= a9[2])
        {
          goto LABEL_23;
        }

        v32 = a9;
        v33 = v14;
        v34 = a8;
        v35 = a7;
      }
    }

    else
    {
      v32 = a9;
      v33 = v14;
      v34 = a8;
      v35 = a7;
    }
  }

  fig_log_get_emitter();
  v38 = FigSignalErrorAtGM();
  a7 = v35;
  a8 = v34;
  v14 = v33;
  v24 = v32;
  v12 = v46;
  v27 = v48;
  if (v38)
  {
    v21 = v38;
    goto LABEL_28;
  }

LABEL_23:
  *v20 = v15;
  v39 = v50;
  *(v20 + 4) = v51;
  *(v20 + 20) = v27;
  *(v20 + 36) = v39;
  *(v20 + 5) = v49;
  *(v20 + 6) = v27;
  *(v20 + 7) = v52;
  *(v20 + 7) = a3;
  *(v20 + 8) = v12;
  *(v20 + 9) = a5;
  *(v20 + 16) = a7;
  *(v20 + 17) = a8;
  *(v20 + 18) = v24;
  *(v20 + 19) = v14;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v15, global_queue, v20, vt_Copy_xf444_rgb_xf444_GCD);
  if (!v15)
  {
    return 0;
  }

  v41 = (v20 + 160);
  v42 = v15;
  while (1)
  {
    v43 = *v41++;
    v21 = v43;
    if (v43)
    {
      break;
    }

    if (!--v42)
    {
      v21 = 0;
      break;
    }
  }

LABEL_28:
  if (v15 == 255)
  {
    goto LABEL_29;
  }

  return v21;
}

uint64_t vt_Copy_xf444_rgb_xf444_GCD(void *a1, uint64_t a2, double a3, double a4, float a5)
{
  v11 = *(a1 + 36);
  v12 = *a1;
  v13 = *(a1 + 28) * a2 / v12 + *(a1 + 44);
  result = a1[14];
  v15 = a1[16];
  v17 = a1[12];
  v16 = a1[13];
  v18 = v16 * a2 / v12;
  v19 = v18 + a1[15];
  v20 = (v16 + v16 * a2) / v12 - v18;
  v21 = a1[7];
  v22 = a1[8];
  v23 = a1[17];
  v24 = v22[2];
  v25 = v21[2];
  v26 = v23[2];
  v27 = v15[2];
  v28 = (v27 + v26 * v19 + 2 * result);
  if (v20 >= 1)
  {
    v29 = 0;
    v30 = a1[19];
    v31 = *v22;
    v32 = v22[1];
    v33 = *v23;
    v34 = v23[1];
    *&v35 = *(v30 + 136);
    LOWORD(a5) = *(v30 + 140);
    v36 = *&v35 / *(v30 + 128);
    v37 = LODWORD(a5);
    LOWORD(v35) = *(v30 + 142);
    v38 = v35;
    v39 = v36 * *v30;
    v40 = v36 * *(v30 + 8);
    v41 = v36 * *(v30 + 16);
    v42 = v36 * *(v30 + 20);
    v43 = *(v30 + 28);
    v44 = v36 * v43;
    LOWORD(v43) = *(v30 + 144);
    v45 = LODWORD(v43);
    LOWORD(v5) = *(v30 + 146);
    v46 = v5;
    LOWORD(v6) = *(v30 + 148);
    v47 = v6;
    LOWORD(v7) = *(v30 + 150);
    v48 = v7;
    LOWORD(v8) = *(v30 + 152);
    v49 = v8;
    v50 = *(v30 + 36);
    v51 = *(v30 + 40);
    v52 = *(v30 + 44);
    v53 = *(v30 + 48);
    v54 = *(v30 + 52);
    v55 = *(v30 + 56);
    v56 = *(v30 + 60);
    v57 = *(v30 + 64);
    v58 = *(v30 + 68);
    v59 = *(v30 + 132);
    v60 = v59 >= 0x11;
    v61 = 16 - v59;
    if (v60)
    {
      v61 = 0;
    }

    v62 = *(v30 + 124);
    if (v62 >= 0x11)
    {
      v63 = 0;
    }

    else
    {
      v63 = 16 - v62;
    }

    v65 = *v15;
    v64 = v15[1];
    v66 = v64 + v34 * v19 + 2 * result;
    if (!v64)
    {
      v66 = 0;
    }

    result = v65 + v33 * v19 + 2 * result;
    v68 = *v21;
    v67 = v21[1];
    v69 = v67 + v32 * v13 + 2 * v11;
    if (!v67)
    {
      v69 = 0;
    }

    v70 = v68 + v31 * v13 + 2 * v11;
    do
    {
      v71 = v17;
      v72 = v70;
      v73 = v69;
      v74 = v66;
      v75 = result;
      if (v17 >= 1)
      {
        do
        {
          if (v73)
          {
            v76 = (*v73 >> v63) - v38;
            v77 = (v73[1] >> v63) - v38;
            v73 += 2;
            v78 = v40 * v77;
            v79 = (v42 * v77) + (v76 * v41);
            v80 = v44 * v76;
          }

          else
          {
            v80 = 0.0;
            v79 = 0.0;
            v78 = 0.0;
          }

          v81 = *v72++;
          v82 = v39 * ((v81 >> v63) - v37);
          v83 = v78 + v82;
          v84 = v79 + v82;
          v85 = v80 + v82;
          v86 = (((v51 * v84) + (v50 * v83)) + (v52 * v85)) + v45;
          v87 = v47;
          if (v86 <= v47)
          {
            v87 = (((v51 * v84) + (v50 * v83)) + (v52 * v85)) + v45;
            if (v86 < v45)
            {
              v87 = v45;
            }
          }

          *v75++ = llroundf(v87) << v61;
          if (v74)
          {
            v88 = ((v46 + (v83 * v53)) + (v84 * v54)) + (v85 * v55);
            v89 = v49;
            if (v88 <= v49)
            {
              v89 = ((v46 + (v83 * v53)) + (v84 * v54)) + (v85 * v55);
              if (v88 < v48)
              {
                v89 = v48;
              }
            }

            v90 = ((v46 + (v83 * v56)) + (v84 * v57)) + (v85 * v58);
            *v74 = llroundf(v89) << v61;
            v91 = v49;
            if (v90 <= v49)
            {
              v91 = v90;
              if (v90 < v48)
              {
                v91 = v48;
              }
            }

            v74[1] = llroundf(v91) << v61;
            v74 += 2;
          }

          --v71;
        }

        while (v71);
      }

      v70 += v31;
      v69 += v32;
      result += v33;
      v66 += v34;
      ++v29;
    }

    while (v29 != v20);
  }

  if (v25 && v27)
  {
    if (v20 >= 1)
    {
      v92 = 0;
      v93 = (v25 + v24 * v13 + 2 * v11);
      v94 = 2 * v17;
      do
      {
        result = memcpy(v28, v93, v94);
        v93 += v24;
        v28 += v26;
        ++v92;
      }

      while (v20 > v92);
    }
  }

  else if (v27 && v20 >= 1)
  {
    do
    {
      if (v17 >= 1)
      {
        result = memset(v28, 255, 2 * v17);
      }

      v28 += v26;
      --v20;
    }

    while (v20);
  }

  *(a1 + a2 + 40) = 0;
  return result;
}

uint64_t vt_Copy_xf444_TRC_Tone_Mat_TRC_BGRA_neon_fp16(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v12 = a4;
  v45 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v42 = a2[2];
  v43 = v16;
  v19 = *a6;
  v18 = a6[1];
  v40 = v17;
  v41 = v19;
  v39 = v18;
  v44 = a6[2];
  if (v15 == 255)
  {
    v20 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v20)
    {
      v21 = 0;
LABEL_19:
      free(v20);
      return v21;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v20 = &v39.i8[-v22];
    bzero(&v39 - v22, v23);
  }

  v24 = a9;
  v25 = vbslq_s8(vcgtq_s64(vaddq_s64(v42, v40), v43), vsubq_s64(v43, v42), v40);
  v26 = vbslq_s8(vcgtq_s64(vaddq_s64(v44, v39), v41), vsubq_s64(v41, v44), v39);
  v27 = vbslq_s8(vcgtq_s64(v26, v25), v25, v26);
  v28.i64[0] = v27.i64[0];
  v28.i64[1] = -1;
  v29 = vaddq_s64(v42, v28);
  v30 = v29.i64[1] + v27.i64[1];
  if (((*v12 * (v29.i64[1] + v27.i64[1]) + 2 * v29.i64[0]) > *a5 || *(a3 + 8) && (v12[1] * v30 + 4 * v29.i64[0]) > a5[1] || *(a3 + 16) && (2 * v29.i64[0] + v12[2] * v30) > a5[2] || (v31 = vaddq_s64(v44, v28), (*a8 * (v31.i64[1] + v27.i64[1]) + 4 * v31.i64[0]) > *a9)) && (v39 = v27, v40.i64[0] = v12, fig_log_get_emitter(), v32 = FigSignalErrorAtGM(), v24 = a9, v12 = v40.i64[0], v27 = v39, v32))
  {
    v21 = v32;
  }

  else
  {
    *v20 = v15;
    v33 = v42;
    *(v20 + 4) = v43;
    *(v20 + 20) = v27;
    *(v20 + 36) = v33;
    *(v20 + 5) = v41;
    *(v20 + 6) = v27;
    *(v20 + 7) = v44;
    *(v20 + 7) = a3;
    *(v20 + 8) = v12;
    *(v20 + 9) = a5;
    *(v20 + 16) = a7;
    *(v20 + 17) = a8;
    *(v20 + 18) = v24;
    *(v20 + 19) = a1;
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_apply_f(v15, global_queue, v20, vt_Copy_xf444_TRC_Tone_Mat_TRC_BGRA_neon_fp16_GCD);
    if (!v15)
    {
      return 0;
    }

    v35 = (v20 + 160);
    v36 = v15;
    while (1)
    {
      v37 = *v35++;
      v21 = v37;
      if (v37)
      {
        break;
      }

      if (!--v36)
      {
        v21 = 0;
        break;
      }
    }
  }

  if (v15 == 255)
  {
    goto LABEL_19;
  }

  return v21;
}

__int16 *vt_Copy_xf444_TRC_Tone_Mat_TRC_BGRA_neon_fp16_GCD(void *a1, uint64_t a2, double _D0)
{
  v3 = 0;
  v4 = 0;
  v5 = *(a1 + 36);
  v6 = *a1;
  v7 = *(a1 + 28) * a2 / v6 + *(a1 + 44);
  v8 = a1[15];
  v191 = a1[14];
  v10 = a1[12];
  v9 = a1[13];
  v11 = v9 * a2;
  v12 = a1[19];
  v14 = a1[7];
  v13 = a1[8];
  v15 = a1[16];
  v16 = a1[17];
  v199 = *v13;
  v17 = v13[1];
  v18 = v13[2];
  result = *v14;
  v20 = *(v14 + 8);
  v21 = *(v14 + 16);
  v22 = *v16;
  v23 = *v15;
  v24 = *(v12 + 128);
  v198 = *(v12 + 158);
  v223 = *(v12 + 158);
  v25 = v11 / v6;
  v224 = *(v12 + 159);
  v26 = v9 + v11;
  v27 = v22 * (v11 / v6 + v8);
  v196 = *(v12 + 160);
  v197 = v224;
  v225 = *(v12 + 160);
  v195 = *(v12 + 161);
  v226 = *(v12 + 161);
  v28 = *(v12 + 140);
  v29 = *(v12 + 124);
  v30 = *(v12 + 142);
  LODWORD(_D0) = *v12;
  v31 = *(v12 + 8);
  v32 = *(v12 + 16);
  v33 = *(v12 + 20);
  v34 = *(v12 + 28);
  _S22 = *(v12 + 72);
  _S24 = *(v12 + 76);
  _S31 = *(v12 + 80);
  v220 = *(v12 + 84);
  v219 = *(v12 + 88);
  v218 = *(v12 + 92);
  v217 = *(v12 + 96);
  v216 = *(v12 + 100);
  v215 = *(v12 + 104);
  v214 = *(v12 + 108);
  v212 = *(v12 + 116);
  v213 = *(v12 + 112);
  v211 = *(v12 + 120);
  v221 = 0u;
  v222 = 0u;
  v38 = v26 / v6;
  do
  {
    v39 = 0;
    v40 = *(&v223 + v4);
    do
    {
      *((&v221 + ((v40 + 4 * v39) & 0xF8)) | (v40 + 4 * v39) & 7) = v3 + v39;
      ++v39;
    }

    while (v39 != 8);
    ++v4;
    v3 += 8;
  }

  while (v4 != 4);
  v41 = v38 - v25;
  if (v38 - v25 >= 1)
  {
    v42 = 0;
    v43 = v24;
    v44 = v12 + 16548;
    v45 = 8191.0 / v43;
    v46 = v30;
    *&_D0 = v45 * *&_D0;
    _S1 = v45 * v31;
    _S2 = v45 * v32;
    _S3 = v45 * v33;
    _S4 = v45 * v34;
    v51 = v12 + 32932;
    v52 = v12 + 164;
    v53 = *&_D0;
    __asm { FCVT            H8, S0 }

    *&_D0 = v28;
    _Q5 = vdupq_lane_s16(*&_D0, 0);
    *&_D0 = -v30;
    v60 = vdupq_lane_s16(*&_D0, 0);
    v204 = _S4;
    v205 = _S3;
    __asm { FCVT            H0, S4 }

    v203 = _H0;
    v206 = _S2;
    v207 = _S1;
    __asm { FCVT            H0, S2 }

    v202 = _H0;
    __asm { FCVT            H0, S3 }

    v201 = _H0;
    __asm { FCVT            H0, S1 }

    v200 = _H0;
    _S0 = v214;
    __asm { FCVT            H0, S0 }

    v209 = *&_S0;
    v210 = _Q5;
    _S0 = v213;
    __asm { FCVT            H0, S0 }

    v208 = *&_S0;
    _S0 = v211;
    _S1 = v212;
    __asm
    {
      FCVT            H15, S1
      FCVT            H9, S0
      FCVT            H10, S22
      FCVT            H11, S24
      FCVT            H12, S31
    }

    _S0 = v220;
    __asm { FCVT            H0, S0 }

    _S1 = v219;
    __asm { FCVT            H1, S1 }

    _S2 = v218;
    __asm { FCVT            H2, S2 }

    _S3 = v217;
    __asm { FCVT            H3, S3 }

    _S4 = v216;
    __asm { FCVT            H4, S4 }

    *_Q5.i32 = v215;
    __asm { FCVT            H5, S5 }

    v85 = 16 - v29;
    if (v29 >= 0x11)
    {
      v85 = 0;
    }

    v86 = v23 + v27 + 4 * v191;
    if (v21)
    {
      v87 = v21 + v18 * v7 + 2 * v5;
    }

    else
    {
      v87 = 0;
    }

    if (v20)
    {
      v88 = v20 + v17 * v7 + 2 * v5;
    }

    else
    {
      v88 = 0;
    }

    v89 = &result[v5] + v199 * v7;
    v90 = v85;
    v91 = vdupq_n_s16(-v85);
    v92.i64[0] = 0x9000900090009000;
    v92.i64[1] = 0x9000900090009000;
    v193 = _S24;
    v194 = _S22;
    v192 = _S31;
    do
    {
      if (v10 < 8)
      {
        v141 = 0;
        v99 = v88;
        v98 = v87;
        v97 = v86;
        v96 = v89;
      }

      else
      {
        v93 = 0;
        v94 = *(&v221 + 8);
        v95 = v221;
        v96 = v89;
        v97 = v86;
        v98 = v87;
        v99 = v88;
        v101 = *(&v222 + 8);
        v100 = v222;
        do
        {
          v102 = 0uLL;
          if (v99)
          {
            v228 = vld2q_s16(v99);
            v99 += 16;
            v103 = vaddq_f16(v60, vcvtq_f16_u16(vshlq_u16(v228.val[0], v91)));
            v104 = vaddq_f16(v60, vcvtq_f16_u16(vshlq_u16(v228.val[1], v91)));
            v105 = vmulq_n_f16(v104, v200);
            v106 = vmlaq_n_f16(vmulq_n_f16(v103, v202), v104, v201);
            v107 = vmulq_n_f16(v103, v203);
          }

          else
          {
            v107 = 0uLL;
            v106 = 0uLL;
            v105 = 0uLL;
          }

          v108 = *v96++;
          v109 = v108;
          if (v98)
          {
            v110 = *v98++;
            v102 = v110;
          }

          v111 = vsubq_f16(vcvtq_f16_u16(vshlq_u16(v109, v91)), v210);
          v112 = vmlaq_n_f16(v106, v111, _H8);
          v113 = vmlaq_n_f16(v107, v111, _H8);
          v114 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(v105, v111, _H8), 0), v92));
          v115.i16[0] = *(v52 + 2 * v114.u16[0]);
          v115.i16[1] = *(v52 + 2 * v114.u16[1]);
          v115.i16[2] = *(v52 + 2 * v114.u16[2]);
          v115.i16[3] = *(v52 + 2 * v114.u16[3]);
          v115.i16[4] = *(v52 + 2 * v114.u16[4]);
          v115.i16[5] = *(v52 + 2 * v114.u16[5]);
          v115.i16[6] = *(v52 + 2 * v114.u16[6]);
          v115.i16[7] = *(v52 + 2 * v114.u16[7]);
          v116 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v112, 0), v92));
          v112.i16[0] = *(v52 + 2 * v116.u16[0]);
          v112.i16[1] = *(v52 + 2 * v116.u16[1]);
          v112.i16[2] = *(v52 + 2 * v116.u16[2]);
          v112.i16[3] = *(v52 + 2 * v116.u16[3]);
          v112.i16[4] = *(v52 + 2 * v116.u16[4]);
          v112.i16[5] = *(v52 + 2 * v116.u16[5]);
          v112.i16[6] = *(v52 + 2 * v116.u16[6]);
          v112.i16[7] = *(v52 + 2 * v116.u16[7]);
          v117 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v113, 0), v92));
          v113.i16[0] = *(v52 + 2 * v117.u16[0]);
          v113.i16[1] = *(v52 + 2 * v117.u16[1]);
          v113.i16[2] = *(v52 + 2 * v117.u16[2]);
          v113.i16[3] = *(v52 + 2 * v117.u16[3]);
          v113.i16[4] = *(v52 + 2 * v117.u16[4]);
          v113.i16[5] = *(v52 + 2 * v117.u16[5]);
          v113.i16[6] = *(v52 + 2 * v117.u16[6]);
          v113.i16[7] = *(v52 + 2 * v117.u16[7]);
          v118 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v115, v209), v112, v208), v113, _H15), vmaxq_f16(vmaxq_f16(v115, v112), v113), _H9), 0), v92));
          v119.i16[0] = *(v44 + 2 * v118.u16[0]);
          v119.i16[1] = *(v44 + 2 * v118.u16[1]);
          v119.i16[2] = *(v44 + 2 * v118.u16[2]);
          v119.i16[3] = *(v44 + 2 * v118.u16[3]);
          v119.i16[4] = *(v44 + 2 * v118.u16[4]);
          v119.i16[5] = *(v44 + 2 * v118.u16[5]);
          v119.i16[6] = *(v44 + 2 * v118.u16[6]);
          v119.i16[7] = *(v44 + 2 * v118.u16[7]);
          v120 = vmulq_f16(v115, v119);
          v121 = vmulq_f16(v112, v119);
          v122 = vmulq_f16(v113, v119);
          v123 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v120, _H10), v121, _H11), v122, _H12);
          v124 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v120, _H0), v121, _H1), v122, _H2);
          v131 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v122, _H5), v121, _H4), v120, _H3);
          v125 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v123, 0), v92));
          v126.i16[0] = *(v51 + 2 * v125.u16[0]);
          v126.i16[1] = *(v51 + 2 * v125.u16[1]);
          v126.i16[2] = *(v51 + 2 * v125.u16[2]);
          v126.i16[3] = *(v51 + 2 * v125.u16[3]);
          v126.i16[4] = *(v51 + 2 * v125.u16[4]);
          v126.i16[5] = *(v51 + 2 * v125.u16[5]);
          v126.i16[6] = *(v51 + 2 * v125.u16[6]);
          v126.i16[7] = *(v51 + 2 * v125.u16[7]);
          v127 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v124, 0), v92));
          v128.i16[0] = *(v51 + 2 * v127.u16[0]);
          v128.i16[1] = *(v51 + 2 * v127.u16[1]);
          v128.i16[2] = *(v51 + 2 * v127.u16[2]);
          v128.i16[3] = *(v51 + 2 * v127.u16[3]);
          v128.i16[4] = *(v51 + 2 * v127.u16[4]);
          v128.i16[5] = *(v51 + 2 * v127.u16[5]);
          v128.i16[6] = *(v51 + 2 * v127.u16[6]);
          v128.i16[7] = *(v51 + 2 * v127.u16[7]);
          v129 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v131, 0), v92));
          v131.i16[0] = *(v51 + 2 * v129.u16[0]);
          result = (v51 + 2 * v129.u16[6]);
          v130 = (v51 + 2 * v129.u16[7]);
          v131.i16[1] = *(v51 + 2 * v129.u16[1]);
          v131.i16[2] = *(v51 + 2 * v129.u16[2]);
          v131.i16[3] = *(v51 + 2 * v129.u16[3]);
          v131.i16[4] = *(v51 + 2 * v129.u16[4]);
          v131.i16[5] = *(v51 + 2 * v129.u16[5]);
          if (v98)
          {
            *v132.i8 = vzip1_s16(*v102.i8, 0);
            v132.u64[1] = vzip2_s16(*v102.i8, 0);
            v133 = vextq_s8(v102, v102, 8uLL).u64[0];
            *v134.i8 = vzip1_s16(v133, 0);
            v134.u64[1] = vzip2_s16(v133, 0);
            v135 = vcvtq_f32_u32(v134);
            v136 = vdupq_n_s32(0x3B7F00FFu);
            v137 = vmovn_s16(vuzp1q_s16(vcvtq_u32_f32(vmulq_f32(vcvtq_f32_u32(v132), v136)), vcvtq_u32_f32(vmulq_f32(v135, v136))));
          }

          else
          {
            v137 = -1;
          }

          v138 = vdupq_n_s16(0x5BF8u);
          v131.i16[7] = *v130;
          v131.i16[6] = *result;
          *v227.val[1].i8 = vmovn_s16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(v131, 0), v138)));
          v227.val[0] = vuzp1q_s8(vcvtq_u16_f16(vminq_f16(vmaxq_f16(v126, 0), v138)), vcvtq_u16_f16(vminq_f16(vmaxq_f16(v128, 0), v138)));
          v227.val[1].u64[1] = v137;
          *&v139 = vqtbl2_s8(v227, v95);
          *(&v139 + 1) = vqtbl2_s8(v227, v94);
          *&v140 = vqtbl2_s8(v227, v100);
          *(&v140 + 1) = vqtbl2_s8(v227, v101);
          *v97 = v139;
          v97[1] = v140;
          v97 += 2;
          v93 += 8;
        }

        while (v93 < v10 - 7);
        v141 = v10 & 0xFFFFFFF8;
        _S24 = v193;
        _S22 = v194;
        _S31 = v192;
      }

      v142 = v10 - v141;
      if (v10 > v141)
      {
        v143 = v97 + v195;
        v144 = v97 + v196;
        v145 = v97 + v197;
        v146 = v97 + v198;
        do
        {
          if (v99)
          {
            v147 = (*v99 >> v90) - v46;
            v148 = (*(v99 + 1) >> v90) - v46;
            v99 += 2;
            v149 = v207 * v148;
            v150 = (v205 * v148) + (v147 * v206);
            v151 = v204 * v147;
          }

          else
          {
            v151 = 0.0;
            v150 = 0.0;
            v149 = 0.0;
          }

          v152 = v96->u16[0];
          v96 = (v96 + 2);
          v153 = v53 * ((v152 >> v90) - v28);
          v154 = v149 + v153;
          v155 = (v149 + v153) <= 8191.0;
          v156 = 8191.0;
          if (v155)
          {
            v156 = v154;
            if (v154 < 0.0)
            {
              v156 = 0.0;
            }
          }

          v157 = v150 + v153;
          v155 = (v150 + v153) <= 8191.0;
          v158 = 8191.0;
          if (v155)
          {
            v158 = v157;
            if (v157 < 0.0)
            {
              v158 = 0.0;
            }
          }

          v159 = v151 + v153;
          v160 = 8191.0;
          if (v159 <= 8191.0)
          {
            v160 = v159;
            if (v159 < 0.0)
            {
              v160 = 0.0;
            }
          }

          if (v98)
          {
            v161 = v98->u16[0];
            v98 = (v98 + 2);
            v162 = v161 * 0.0038911;
          }

          else
          {
            v162 = 0.0;
          }

          _H18 = *(v52 + 2 * llroundf(fminf(fmaxf(v156, 0.0), 8191.0)));
          __asm { FCVT            S18, H18 }

          _H16 = *(v52 + 2 * llroundf(fminf(fmaxf(v158, 0.0), 8191.0)));
          v166 = llroundf(fminf(fmaxf(v160, 0.0), 8191.0));
          __asm { FCVT            S17, H16 }

          _H16 = *(v52 + 2 * v166);
          __asm { FCVT            S19, H16 }

          v170 = (((v213 * _S17) + (v214 * _S18)) + (v212 * _S19)) + (v211 * fmaxf(_S18, fmaxf(_S17, _S19)));
          v171 = 8191.0;
          if (v170 <= 8191.0)
          {
            v171 = v170;
            if (v170 < 0.0)
            {
              v171 = 0.0;
            }
          }

          _H16 = *(v44 + 2 * llroundf(v171));
          __asm { FCVT            S20, H16 }

          v174 = _S18 * _S20;
          v175 = _S17 * _S20;
          v176 = _S19 * _S20;
          v177 = *(v51 + 2 * llroundf(fminf(fmaxf(((_S24 * v175) + (v174 * _S22)) + ((_S19 * _S20) * _S31), 0.0), 8191.0)));
          v178 = llroundf(v162);
          if (!v98)
          {
            v178 = -1;
          }

          if (v177 <= COERCE_SHORT_FLOAT(23544))
          {
            __asm { FCMP            H19, #0 }

            if (_NF)
            {
              _S19 = 0.0;
            }

            else
            {
              __asm { FCVT            S19, H19 }
            }
          }

          else
          {
            _S19 = 255.0;
          }

          v181 = ((v219 * v175) + (v174 * v220)) + (v176 * v218);
          v182 = ((v216 * v175) + (v174 * v217)) + (v176 * v215);
          v183 = *(v51 + 2 * llroundf(fminf(fmaxf(v181, 0.0), 8191.0)));
          v184 = *(v51 + 2 * llroundf(fminf(fmaxf(v182, 0.0), 8191.0)));
          *v146 = llroundf(_S19);
          if (v183 <= COERCE_SHORT_FLOAT(23544))
          {
            __asm { FCMP            H16, #0 }

            if (_NF)
            {
              _S16 = 0.0;
            }

            else
            {
              __asm { FCVT            S16, H16 }
            }
          }

          else
          {
            _S16 = 255.0;
          }

          *v145 = llroundf(_S16);
          if (v184 <= COERCE_SHORT_FLOAT(23544))
          {
            __asm { FCMP            H6, #0 }

            if (_NF)
            {
              _S6 = 0.0;
            }

            else
            {
              __asm { FCVT            S6, H6 }
            }
          }

          else
          {
            _S6 = 255.0;
          }

          *v144 = llroundf(_S6);
          v144 += 4;
          *v143 = v178;
          v143 += 4;
          v145 += 4;
          v146 += 4;
          --v142;
        }

        while (v142);
      }

      v89 += v199;
      v88 += v17;
      v87 += v18;
      v86 += v22;
      ++v42;
    }

    while (v42 != v41);
  }

  *(a1 + a2 + 40) = 0;
  return result;
}

uint64_t vt_Copy_xf444_TRC_Tone_Mat_TRC_BGRA(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v12 = a4;
  v45 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v42 = a2[2];
  v43 = v16;
  v19 = *a6;
  v18 = a6[1];
  v40 = v17;
  v41 = v19;
  v39 = v18;
  v44 = a6[2];
  if (v15 == 255)
  {
    v20 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v20)
    {
      v21 = 0;
LABEL_19:
      free(v20);
      return v21;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v20 = &v39.i8[-v22];
    bzero(&v39 - v22, v23);
  }

  v24 = a9;
  v25 = vbslq_s8(vcgtq_s64(vaddq_s64(v42, v40), v43), vsubq_s64(v43, v42), v40);
  v26 = vbslq_s8(vcgtq_s64(vaddq_s64(v44, v39), v41), vsubq_s64(v41, v44), v39);
  v27 = vbslq_s8(vcgtq_s64(v26, v25), v25, v26);
  v28.i64[0] = v27.i64[0];
  v28.i64[1] = -1;
  v29 = vaddq_s64(v42, v28);
  v30 = v29.i64[1] + v27.i64[1];
  if (((*v12 * (v29.i64[1] + v27.i64[1]) + 2 * v29.i64[0]) > *a5 || *(a3 + 8) && (v12[1] * v30 + 4 * v29.i64[0]) > a5[1] || *(a3 + 16) && (2 * v29.i64[0] + v12[2] * v30) > a5[2] || (v31 = vaddq_s64(v44, v28), (*a8 * (v31.i64[1] + v27.i64[1]) + 4 * v31.i64[0]) > *a9)) && (v39 = v27, v40.i64[0] = v12, fig_log_get_emitter(), v32 = FigSignalErrorAtGM(), v24 = a9, v12 = v40.i64[0], v27 = v39, v32))
  {
    v21 = v32;
  }

  else
  {
    *v20 = v15;
    v33 = v42;
    *(v20 + 4) = v43;
    *(v20 + 20) = v27;
    *(v20 + 36) = v33;
    *(v20 + 5) = v41;
    *(v20 + 6) = v27;
    *(v20 + 7) = v44;
    *(v20 + 7) = a3;
    *(v20 + 8) = v12;
    *(v20 + 9) = a5;
    *(v20 + 16) = a7;
    *(v20 + 17) = a8;
    *(v20 + 18) = v24;
    *(v20 + 19) = a1;
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_apply_f(v15, global_queue, v20, vt_Copy_xf444_TRC_Tone_Mat_TRC_BGRA_GCD);
    if (!v15)
    {
      return 0;
    }

    v35 = (v20 + 160);
    v36 = v15;
    while (1)
    {
      v37 = *v35++;
      v21 = v37;
      if (v37)
      {
        break;
      }

      if (!--v36)
      {
        v21 = 0;
        break;
      }
    }
  }

  if (v15 == 255)
  {
    goto LABEL_19;
  }

  return v21;
}

unsigned __int8 *vt_Copy_xf444_TRC_Tone_Mat_TRC_BGRA_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, float a5)
{
  v5 = *result;
  v6 = *(result + 13);
  v7 = v6 * a2 / v5;
  v8 = (v6 + v6 * a2) / v5 - v7;
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = *(result + 24);
    v11 = *(result + 19);
    v13 = *(result + 7);
    v12 = *(result + 8);
    v14 = *v12;
    v15 = v12[1];
    v16 = v12[2];
    v17 = **(result + 17);
    *&v18 = *(v11 + 128);
    v19 = 8191.0 / *&v18;
    LOWORD(v18) = *(v11 + 140);
    v20 = v18;
    LOWORD(a5) = *(v11 + 142);
    v21 = LODWORD(a5);
    v22 = v19 * *v11;
    v23 = v19 * *(v11 + 8);
    v24 = v19 * *(v11 + 16);
    v25 = v19 * *(v11 + 20);
    v26 = v19 * *(v11 + 28);
    v27 = *(v11 + 72);
    v28 = *(v11 + 76);
    v29 = *(v11 + 80);
    v30 = *(v11 + 84);
    v31 = *(v11 + 88);
    v32 = *(v11 + 92);
    v33 = *(v11 + 96);
    v34 = *(v11 + 100);
    v35 = v11 + 164;
    v36 = v11 + 16548;
    v37 = v11 + 32932;
    v38 = *(v11 + 104);
    v39 = *(v11 + 108);
    v40 = *(v11 + 112);
    v41 = *(v11 + 116);
    v42 = *(v11 + 120);
    v43 = v7 + *(result + 15);
    v44 = *(result + 28) * a2 / v5 + *(result + 44);
    v45 = *(result + 36);
    v46 = *(v11 + 124);
    if (v46 >= 0x11)
    {
      v47 = 0;
    }

    else
    {
      v47 = 16 - v46;
    }

    v48 = *(v11 + 161);
    v49 = *(v11 + 160);
    v50 = *(v11 + 159);
    v51 = *(v11 + 158);
    v52 = **(result + 16) + v17 * v43 + 4 * *(result + 14);
    v53 = v13[2];
    if (v53)
    {
      v54 = v53 + v44 * v16 + 2 * v45;
    }

    else
    {
      v54 = 0;
    }

    v56 = *v13;
    v55 = v13[1];
    v57 = v55 + v44 * v15 + 2 * v45;
    if (!v55)
    {
      v57 = 0;
    }

    v58 = v56 + v44 * v14 + 2 * v45;
    v59 = v47;
    do
    {
      if (v10 >= 1)
      {
        v60 = v10;
        v61 = v58;
        v62 = v52;
        v63 = v54;
        v64 = v57;
        do
        {
          if (v64)
          {
            v65 = (*v64 >> v59) - v21;
            v66 = (v64[1] >> v59) - v21;
            v64 += 2;
            v67 = v23 * v66;
            v68 = (v25 * v66) + (v65 * v24);
            v69 = v26 * v65;
          }

          else
          {
            v69 = 0.0;
            v68 = 0.0;
            v67 = 0.0;
          }

          v70 = *v61++;
          v71 = v22 * ((v70 >> v59) - v20);
          v72 = v67 + v71;
          v73 = (v67 + v71) <= 8191.0;
          v74 = 8191.0;
          if (v73)
          {
            v74 = v72;
            if (v72 < 0.0)
            {
              v74 = 0.0;
            }
          }

          v75 = v68 + v71;
          v73 = (v68 + v71) <= 8191.0;
          v76 = 8191.0;
          if (v73)
          {
            v76 = v75;
            if (v75 < 0.0)
            {
              v76 = 0.0;
            }
          }

          v77 = v69 + v71;
          v78 = 8191.0;
          if (v77 <= 8191.0)
          {
            v78 = v77;
            if (v77 < 0.0)
            {
              v78 = 0.0;
            }
          }

          if (v63)
          {
            v79 = *v63++;
            v80 = v79 * 0.0038911;
          }

          else
          {
            v80 = 0.0;
          }

          _H8 = *(v35 + 2 * llroundf(fminf(fmaxf(v74, 0.0), 8191.0)));
          __asm { FCVT            S8, H8 }

          _H9 = *(v35 + 2 * llroundf(fminf(fmaxf(v76, 0.0), 8191.0)));
          __asm { FCVT            S9, H9 }

          _H10 = *(v35 + 2 * llroundf(fminf(fmaxf(v78, 0.0), 8191.0)));
          __asm { FCVT            S11, H10 }

          v91 = (((v40 * _S9) + (v39 * _S8)) + (v41 * _S11)) + (v42 * fmaxf(_S8, fmaxf(_S9, _S11)));
          v92 = 8191.0;
          if (v91 <= 8191.0)
          {
            v92 = v91;
            if (v91 < 0.0)
            {
              v92 = 0.0;
            }
          }

          _H10 = *(v36 + 2 * llroundf(v92));
          __asm { FCVT            S12, H10 }

          v95 = _S8 * _S12;
          v96 = _S9 * _S12;
          v97 = _S11 * _S12;
          v98 = *(v37 + 2 * llroundf(fminf(fmaxf(((v28 * v96) + (v95 * v27)) + ((_S11 * _S12) * v29), 0.0), 8191.0)));
          v99 = llroundf(v80);
          if (!v63)
          {
            v99 = -1;
          }

          if (v98 <= COERCE_SHORT_FLOAT(23544))
          {
            __asm { FCMP            H11, #0 }

            if (_NF)
            {
              _S11 = 0.0;
            }

            else
            {
              __asm { FCVT            S11, H11 }
            }
          }

          else
          {
            _S11 = 255.0;
          }

          v102 = ((v31 * v96) + (v95 * v30)) + (v97 * v32);
          v103 = ((v34 * v96) + (v95 * v33)) + (v97 * v38);
          v104 = *(v37 + 2 * llroundf(fminf(fmaxf(v102, 0.0), 8191.0)));
          v105 = *(v37 + 2 * llroundf(fminf(fmaxf(v103, 0.0), 8191.0)));
          *(v62 + v51) = llroundf(_S11);
          if (v104 <= COERCE_SHORT_FLOAT(23544))
          {
            __asm { FCMP            H8, #0 }

            if (_NF)
            {
              _S8 = 0.0;
            }

            else
            {
              __asm { FCVT            S8, H8 }
            }
          }

          else
          {
            _S8 = 255.0;
          }

          *(v62 + v50) = llroundf(_S8);
          if (v105 <= COERCE_SHORT_FLOAT(23544))
          {
            __asm { FCMP            H31, #0 }

            if (_NF)
            {
              _S31 = 0.0;
            }

            else
            {
              __asm { FCVT            S31, H31 }
            }
          }

          else
          {
            _S31 = 255.0;
          }

          *(v62 + v49) = llroundf(_S31);
          *(v62 + v48) = v99;
          v62 += 4;
          --v60;
        }

        while (v60);
      }

      v58 += v14;
      v57 += v15;
      v54 += v16;
      v52 += v17;
      ++v9;
    }

    while (v9 != v8);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_xf444_TRC_Mat_TRC_BGRA_neon_fp16(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v12 = a4;
  v45 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v42 = a2[2];
  v43 = v16;
  v19 = *a6;
  v18 = a6[1];
  v40 = v17;
  v41 = v19;
  v39 = v18;
  v44 = a6[2];
  if (v15 == 255)
  {
    v20 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v20)
    {
      v21 = 0;
LABEL_19:
      free(v20);
      return v21;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v20 = &v39.i8[-v22];
    bzero(&v39 - v22, v23);
  }

  v24 = a9;
  v25 = vbslq_s8(vcgtq_s64(vaddq_s64(v42, v40), v43), vsubq_s64(v43, v42), v40);
  v26 = vbslq_s8(vcgtq_s64(vaddq_s64(v44, v39), v41), vsubq_s64(v41, v44), v39);
  v27 = vbslq_s8(vcgtq_s64(v26, v25), v25, v26);
  v28.i64[0] = v27.i64[0];
  v28.i64[1] = -1;
  v29 = vaddq_s64(v42, v28);
  v30 = v29.i64[1] + v27.i64[1];
  if (((*v12 * (v29.i64[1] + v27.i64[1]) + 2 * v29.i64[0]) > *a5 || *(a3 + 8) && (v12[1] * v30 + 4 * v29.i64[0]) > a5[1] || *(a3 + 16) && (2 * v29.i64[0] + v12[2] * v30) > a5[2] || (v31 = vaddq_s64(v44, v28), (*a8 * (v31.i64[1] + v27.i64[1]) + 4 * v31.i64[0]) > *a9)) && (v39 = v27, v40.i64[0] = v12, fig_log_get_emitter(), v32 = FigSignalErrorAtGM(), v24 = a9, v12 = v40.i64[0], v27 = v39, v32))
  {
    v21 = v32;
  }

  else
  {
    *v20 = v15;
    v33 = v42;
    *(v20 + 4) = v43;
    *(v20 + 20) = v27;
    *(v20 + 36) = v33;
    *(v20 + 5) = v41;
    *(v20 + 6) = v27;
    *(v20 + 7) = v44;
    *(v20 + 7) = a3;
    *(v20 + 8) = v12;
    *(v20 + 9) = a5;
    *(v20 + 16) = a7;
    *(v20 + 17) = a8;
    *(v20 + 18) = v24;
    *(v20 + 19) = a1;
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_apply_f(v15, global_queue, v20, vt_Copy_xf444_TRC_Mat_TRC_BGRA_neon_fp16_GCD);
    if (!v15)
    {
      return 0;
    }

    v35 = (v20 + 160);
    v36 = v15;
    while (1)
    {
      v37 = *v35++;
      v21 = v37;
      if (v37)
      {
        break;
      }

      if (!--v36)
      {
        v21 = 0;
        break;
      }
    }
  }

  if (v15 == 255)
  {
    goto LABEL_19;
  }

  return v21;
}

__int16 *vt_Copy_xf444_TRC_Mat_TRC_BGRA_neon_fp16_GCD(void *a1, uint64_t a2, double a3)
{
  v3 = 0;
  v4 = 0;
  v5 = *(a1 + 36);
  v6 = *a1;
  v7 = *(a1 + 28) * a2 / v6 + *(a1 + 44);
  v9 = a1[14];
  v8 = a1[15];
  v10 = a1[12];
  v11 = a1[13];
  v12 = v11 * a2;
  v13 = a1[19];
  v15 = a1[7];
  v14 = a1[8];
  v16 = a1[16];
  v17 = a1[17];
  v176 = *v14;
  v18 = v14[1];
  v19 = v14[2];
  result = *v15;
  v21 = *(v15 + 8);
  v22 = *(v15 + 16);
  v23 = *v17;
  v168 = *v16;
  v24 = v12 / v6;
  v25 = v12 / v6 + v8;
  v26 = *(v13 + 128);
  v27 = v11 + v12;
  v175 = v18;
  v28 = *v17 * v25;
  v174 = *(v13 + 158);
  v193[0] = *(v13 + 158);
  v173 = *(v13 + 159);
  v193[1] = *(v13 + 159);
  v172 = *(v13 + 160);
  v193[2] = *(v13 + 160);
  v171 = *(v13 + 161);
  v193[3] = *(v13 + 161);
  v29 = *(v13 + 140);
  v30 = *(v13 + 124);
  v31 = *(v13 + 142);
  LODWORD(a3) = *v13;
  v32 = *(v13 + 8);
  v33 = *(v13 + 16);
  v34 = *(v13 + 20);
  v35 = *(v13 + 28);
  _S27 = *(v13 + 72);
  _S28 = *(v13 + 76);
  v189 = *(v13 + 84);
  v190 = *(v13 + 80);
  v187 = *(v13 + 92);
  v188 = *(v13 + 88);
  v185 = *(v13 + 100);
  v186 = *(v13 + 96);
  _S16 = *(v13 + 104);
  v191 = 0u;
  v192 = 0u;
  v39 = v27 / v6;
  do
  {
    v40 = 0;
    v41 = v193[v4];
    do
    {
      *((&v191 + ((v41 + 4 * v40) & 0xF8)) | (v41 + 4 * v40) & 7) = v3 + v40;
      ++v40;
    }

    while (v40 != 8);
    ++v4;
    v3 += 8;
  }

  while (v4 != 4);
  if (v39 - v24 >= 1)
  {
    v42 = 0;
    v43 = v26;
    v44 = v13 + 164;
    v45 = v13 + 16548;
    v46 = 8191.0 / v43;
    v47 = v31;
    _S20 = v46 * *&a3;
    __asm { FCVT            H8, S20 }

    *&a3 = v29;
    v54 = vdupq_lane_s16(*&a3, 0);
    *&a3 = -v31;
    v55 = vdupq_lane_s16(*&a3, 0);
    v181 = v46 * v35;
    v182 = v46 * v34;
    __asm { FCVT            H0, S4 }

    v180 = _H0;
    v183 = v46 * v33;
    v184 = v46 * v32;
    __asm { FCVT            H0, S2 }

    v179 = _H0;
    __asm { FCVT            H0, S3 }

    v178 = _H0;
    __asm { FCVT            H0, S1 }

    v177 = _H0;
    __asm
    {
      FCVT            H13, S27
      FCVT            H14, S28
    }

    _S0 = v189;
    _S1 = v190;
    __asm
    {
      FCVT            H15, S1
      FCVT            H9, S0
    }

    _S0 = v187;
    _S1 = v188;
    __asm
    {
      FCVT            H10, S1
      FCVT            H11, S0
    }

    _S0 = v185;
    _S1 = v186;
    __asm
    {
      FCVT            H12, S1
      FCVT            H0, S0
      FCVT            H1, S16
    }

    if (v30 >= 0x11)
    {
      v75 = 0;
    }

    else
    {
      v75 = 16 - v30;
    }

    v76 = v168 + v28 + 4 * v9;
    if (v22)
    {
      v77 = v22 + v19 * v7 + 2 * v5;
    }

    else
    {
      v77 = 0;
    }

    if (v21)
    {
      v78 = v21 + v18 * v7 + 2 * v5;
    }

    else
    {
      v78 = 0;
    }

    v79 = &result[v5] + v176 * v7;
    v80 = v75;
    v81 = vdupq_n_s16(-v75);
    v82.i64[0] = 0x9000900090009000;
    v82.i64[1] = 0x9000900090009000;
    v169 = _S28;
    v170 = _S27;
    do
    {
      if (v10 < 8)
      {
        v125 = 0;
        v89 = v78;
        v88 = v77;
        v87 = v76;
        v86 = v79;
      }

      else
      {
        v83 = 0;
        v85 = *(&v191 + 8);
        v84 = v191;
        v86 = v79;
        v87 = v76;
        v88 = v77;
        v89 = v78;
        v91 = *(&v192 + 8);
        v90 = v192;
        do
        {
          v92 = 0uLL;
          if (v89)
          {
            v194 = vld2q_s16(v89);
            v89 += 16;
            v93 = vcvtq_f16_u16(vshlq_u16(v194.val[0], v81));
            v194.val[0] = vcvtq_f16_u16(vshlq_u16(v194.val[1], v81));
            v194.val[1] = vaddq_f16(v55, v93);
            v94 = vaddq_f16(v55, v194.val[0]);
            v95 = vmulq_n_f16(v94, v177);
            v96 = vmlaq_n_f16(vmulq_n_f16(v194.val[1], v179), v94, v178);
            v97 = vmulq_n_f16(v194.val[1], v180);
          }

          else
          {
            v97 = 0uLL;
            v96 = 0uLL;
            v95 = 0uLL;
          }

          v98 = *v86++;
          v99 = v98;
          if (v88)
          {
            v100 = *v88++;
            v92 = v100;
          }

          v101 = vsubq_f16(vcvtq_f16_u16(vshlq_u16(v99, v81)), v54);
          v102 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(v95, v101, _H8), 0), v82));
          v103.i16[0] = *(v44 + 2 * v102.u16[0]);
          v103.i16[1] = *(v44 + 2 * v102.u16[1]);
          v103.i16[2] = *(v44 + 2 * v102.u16[2]);
          v103.i16[3] = *(v44 + 2 * v102.u16[3]);
          v103.i16[4] = *(v44 + 2 * v102.u16[4]);
          v103.i16[5] = *(v44 + 2 * v102.u16[5]);
          v103.i16[6] = *(v44 + 2 * v102.u16[6]);
          v103.i16[7] = *(v44 + 2 * v102.u16[7]);
          v104 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(v96, v101, _H8), 0), v82));
          v105.i16[0] = *(v44 + 2 * v104.u16[0]);
          v105.i16[1] = *(v44 + 2 * v104.u16[1]);
          v105.i16[2] = *(v44 + 2 * v104.u16[2]);
          v105.i16[3] = *(v44 + 2 * v104.u16[3]);
          v105.i16[4] = *(v44 + 2 * v104.u16[4]);
          v105.i16[5] = *(v44 + 2 * v104.u16[5]);
          v105.i16[6] = *(v44 + 2 * v104.u16[6]);
          v105.i16[7] = *(v44 + 2 * v104.u16[7]);
          v106 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(v97, v101, _H8), 0), v82));
          v101.i16[0] = *(v44 + 2 * v106.u16[0]);
          v101.i16[1] = *(v44 + 2 * v106.u16[1]);
          v101.i16[2] = *(v44 + 2 * v106.u16[2]);
          v101.i16[3] = *(v44 + 2 * v106.u16[3]);
          v101.i16[4] = *(v44 + 2 * v106.u16[4]);
          v101.i16[5] = *(v44 + 2 * v106.u16[5]);
          v101.i16[6] = *(v44 + 2 * v106.u16[6]);
          v101.i16[7] = *(v44 + 2 * v106.u16[7]);
          v107 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v103, _H13), v105, _H14), v101, _H15);
          v108 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v103, _H9), v105, _H10), v101, _H11);
          v115 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v101, _H1), v105, _H0), v103, _H12);
          v109 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v107, 0), v82));
          v110.i16[0] = *(v45 + 2 * v109.u16[0]);
          v110.i16[1] = *(v45 + 2 * v109.u16[1]);
          v110.i16[2] = *(v45 + 2 * v109.u16[2]);
          v110.i16[3] = *(v45 + 2 * v109.u16[3]);
          v110.i16[4] = *(v45 + 2 * v109.u16[4]);
          v110.i16[5] = *(v45 + 2 * v109.u16[5]);
          v110.i16[6] = *(v45 + 2 * v109.u16[6]);
          v110.i16[7] = *(v45 + 2 * v109.u16[7]);
          v111 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v108, 0), v82));
          v112.i16[0] = *(v45 + 2 * v111.u16[0]);
          v112.i16[1] = *(v45 + 2 * v111.u16[1]);
          v112.i16[2] = *(v45 + 2 * v111.u16[2]);
          v112.i16[3] = *(v45 + 2 * v111.u16[3]);
          v112.i16[4] = *(v45 + 2 * v111.u16[4]);
          v112.i16[5] = *(v45 + 2 * v111.u16[5]);
          v112.i16[6] = *(v45 + 2 * v111.u16[6]);
          v112.i16[7] = *(v45 + 2 * v111.u16[7]);
          v113 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v115, 0), v82));
          v115.i16[0] = *(v45 + 2 * v113.u16[0]);
          result = (v45 + 2 * v113.u16[6]);
          v114 = (v45 + 2 * v113.u16[7]);
          v115.i16[1] = *(v45 + 2 * v113.u16[1]);
          v115.i16[2] = *(v45 + 2 * v113.u16[2]);
          v115.i16[3] = *(v45 + 2 * v113.u16[3]);
          v115.i16[4] = *(v45 + 2 * v113.u16[4]);
          v115.i16[5] = *(v45 + 2 * v113.u16[5]);
          if (v88)
          {
            *v116.i8 = vzip1_s16(*v92.i8, 0);
            v116.u64[1] = vzip2_s16(*v92.i8, 0);
            v117 = vextq_s8(v92, v92, 8uLL).u64[0];
            *v118.i8 = vzip1_s16(v117, 0);
            v118.u64[1] = vzip2_s16(v117, 0);
            v119 = vcvtq_f32_u32(v118);
            v120 = vdupq_n_s32(0x3B7F00FFu);
            v121 = vmovn_s16(vuzp1q_s16(vcvtq_u32_f32(vmulq_f32(vcvtq_f32_u32(v116), v120)), vcvtq_u32_f32(vmulq_f32(v119, v120))));
          }

          else
          {
            v121 = -1;
          }

          v122 = vdupq_n_s16(0x5BF8u);
          v115.i16[7] = *v114;
          v115.i16[6] = *result;
          *v195.val[1].i8 = vmovn_s16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(v115, 0), v122)));
          v195.val[0] = vuzp1q_s8(vcvtq_u16_f16(vminq_f16(vmaxq_f16(v110, 0), v122)), vcvtq_u16_f16(vminq_f16(vmaxq_f16(v112, 0), v122)));
          v195.val[1].u64[1] = v121;
          *&v123 = vqtbl2_s8(v195, v84);
          *(&v123 + 1) = vqtbl2_s8(v195, v85);
          *&v124 = vqtbl2_s8(v195, v90);
          *(&v124 + 1) = vqtbl2_s8(v195, v91);
          *v87 = v123;
          v87[1] = v124;
          v87 += 2;
          v83 += 8;
        }

        while (v83 < v10 - 7);
        v125 = v10 & 0xFFFFFFF8;
        _S28 = v169;
        _S27 = v170;
      }

      v126 = v10 - v125;
      if (v10 > v125)
      {
        v127 = v87 + v171;
        v128 = v87 + v172;
        v129 = v87 + v173;
        v130 = v87 + v174;
        do
        {
          if (v89)
          {
            v131 = (*v89 >> v80) - v47;
            v132 = (*(v89 + 1) >> v80) - v47;
            v89 += 2;
            v133 = v184 * v132;
            v134 = (v182 * v132) + (v131 * v183);
            v135 = v181 * v131;
          }

          else
          {
            v135 = 0.0;
            v134 = 0.0;
            v133 = 0.0;
          }

          v136 = v86->u16[0];
          v86 = (v86 + 2);
          v137 = _S20 * ((v136 >> v80) - v29);
          v138 = v133 + v137;
          v139 = (v133 + v137) <= 8191.0;
          v140 = 8191.0;
          if (v139)
          {
            v140 = v138;
            if (v138 < 0.0)
            {
              v140 = 0.0;
            }
          }

          v141 = v134 + v137;
          v139 = (v134 + v137) <= 8191.0;
          v142 = 8191.0;
          if (v139)
          {
            v142 = v141;
            if (v141 < 0.0)
            {
              v142 = 0.0;
            }
          }

          v143 = v135 + v137;
          v144 = 8191.0;
          if (v143 <= 8191.0)
          {
            v144 = v143;
            if (v143 < 0.0)
            {
              v144 = 0.0;
            }
          }

          if (v88)
          {
            v145 = v88->u16[0];
            v88 = (v88 + 2);
            v146 = v145 * 0.0038911;
          }

          else
          {
            v146 = 0.0;
          }

          _H2 = *(v44 + 2 * llroundf(fminf(fmaxf(v140, 0.0), 8191.0)));
          _H6 = *(v44 + 2 * llroundf(fminf(fmaxf(v142, 0.0), 8191.0)));
          __asm
          {
            FCVT            S4, H2
            FCVT            S22, H6
          }

          _H2 = *(v44 + 2 * llroundf(fminf(fmaxf(v144, 0.0), 8191.0)));
          __asm { FCVT            S5, H2 }

          v153 = *(v45 + 2 * llroundf(fminf(fmaxf(((_S28 * _S22) + (_S4 * _S27)) + (_S5 * v190), 0.0), 8191.0)));
          v154 = llroundf(v146);
          if (v88)
          {
            v155 = v154;
          }

          else
          {
            v155 = -1;
          }

          if (v153 <= COERCE_SHORT_FLOAT(23544))
          {
            __asm { FCMP            H24, #0 }

            if (_NF)
            {
              _S23 = 0.0;
            }

            else
            {
              __asm { FCVT            S23, H24 }
            }
          }

          else
          {
            _S23 = 255.0;
          }

          v158 = ((v188 * _S22) + (_S4 * v189)) + (_S5 * v187);
          v159 = ((v185 * _S22) + (_S4 * v186)) + (_S5 * _S16);
          v160 = *(v45 + 2 * llroundf(fminf(fmaxf(v158, 0.0), 8191.0)));
          v161 = *(v45 + 2 * llroundf(fminf(fmaxf(v159, 0.0), 8191.0)));
          *v130 = llroundf(_S23);
          if (v160 <= COERCE_SHORT_FLOAT(23544))
          {
            __asm { FCMP            H4, #0 }

            if (_NF)
            {
              _S4 = 0.0;
            }

            else
            {
              __asm { FCVT            S4, H4 }
            }
          }

          else
          {
            _S4 = 255.0;
          }

          *v129 = llroundf(_S4);
          if (v161 <= COERCE_SHORT_FLOAT(23544))
          {
            __asm { FCMP            H3, #0 }

            if (_NF)
            {
              _S2 = 0.0;
            }

            else
            {
              __asm { FCVT            S2, H3 }
            }
          }

          else
          {
            _S2 = 255.0;
          }

          *v128 = llroundf(_S2);
          v128 += 4;
          *v127 = v155;
          v127 += 4;
          v129 += 4;
          v130 += 4;
          --v126;
        }

        while (v126);
      }

      v79 += v176;
      v78 += v175;
      v77 += v19;
      v76 += v23;
      ++v42;
    }

    while (v42 != v39 - v24);
  }

  *(a1 + a2 + 40) = 0;
  return result;
}

uint64_t vt_Copy_xf444_TRC_Mat_TRC_BGRA(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v12 = a4;
  v45 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v42 = a2[2];
  v43 = v16;
  v19 = *a6;
  v18 = a6[1];
  v40 = v17;
  v41 = v19;
  v39 = v18;
  v44 = a6[2];
  if (v15 == 255)
  {
    v20 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v20)
    {
      v21 = 0;
LABEL_19:
      free(v20);
      return v21;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v20 = &v39.i8[-v22];
    bzero(&v39 - v22, v23);
  }

  v24 = a9;
  v25 = vbslq_s8(vcgtq_s64(vaddq_s64(v42, v40), v43), vsubq_s64(v43, v42), v40);
  v26 = vbslq_s8(vcgtq_s64(vaddq_s64(v44, v39), v41), vsubq_s64(v41, v44), v39);
  v27 = vbslq_s8(vcgtq_s64(v26, v25), v25, v26);
  v28.i64[0] = v27.i64[0];
  v28.i64[1] = -1;
  v29 = vaddq_s64(v42, v28);
  v30 = v29.i64[1] + v27.i64[1];
  if (((*v12 * (v29.i64[1] + v27.i64[1]) + 2 * v29.i64[0]) > *a5 || *(a3 + 8) && (v12[1] * v30 + 4 * v29.i64[0]) > a5[1] || *(a3 + 16) && (2 * v29.i64[0] + v12[2] * v30) > a5[2] || (v31 = vaddq_s64(v44, v28), (*a8 * (v31.i64[1] + v27.i64[1]) + 4 * v31.i64[0]) > *a9)) && (v39 = v27, v40.i64[0] = v12, fig_log_get_emitter(), v32 = FigSignalErrorAtGM(), v24 = a9, v12 = v40.i64[0], v27 = v39, v32))
  {
    v21 = v32;
  }

  else
  {
    *v20 = v15;
    v33 = v42;
    *(v20 + 4) = v43;
    *(v20 + 20) = v27;
    *(v20 + 36) = v33;
    *(v20 + 5) = v41;
    *(v20 + 6) = v27;
    *(v20 + 7) = v44;
    *(v20 + 7) = a3;
    *(v20 + 8) = v12;
    *(v20 + 9) = a5;
    *(v20 + 16) = a7;
    *(v20 + 17) = a8;
    *(v20 + 18) = v24;
    *(v20 + 19) = a1;
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_apply_f(v15, global_queue, v20, vt_Copy_xf444_TRC_Mat_TRC_BGRA_GCD);
    if (!v15)
    {
      return 0;
    }

    v35 = (v20 + 160);
    v36 = v15;
    while (1)
    {
      v37 = *v35++;
      v21 = v37;
      if (v37)
      {
        break;
      }

      if (!--v36)
      {
        v21 = 0;
        break;
      }
    }
  }

  if (v15 == 255)
  {
    goto LABEL_19;
  }

  return v21;
}

unsigned __int8 *vt_Copy_xf444_TRC_Mat_TRC_BGRA_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, float a5)
{
  v5 = *result;
  v6 = *(result + 13);
  v7 = v6 * a2 / v5;
  v8 = (v6 + v6 * a2) / v5 - v7;
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = *(result + 24);
    v11 = *(result + 19);
    v12 = *(result + 7);
    v13 = *(result + 8);
    v14 = *v13;
    v15 = v13[1];
    v16 = v13[2];
    v17 = **(result + 17);
    *&v18 = *(v11 + 128);
    v19 = 8191.0 / *&v18;
    LOWORD(v18) = *(v11 + 140);
    v20 = v18;
    LOWORD(a5) = *(v11 + 142);
    v21 = LODWORD(a5);
    v22 = v19 * *v11;
    v23 = v19 * *(v11 + 8);
    v24 = v19 * *(v11 + 16);
    v25 = v19 * *(v11 + 20);
    v26 = v19 * *(v11 + 28);
    v27 = *(v11 + 72);
    v28 = *(v11 + 76);
    v29 = *(v11 + 80);
    v30 = *(v11 + 84);
    v31 = *(v11 + 88);
    v32 = *(v11 + 92);
    v33 = *(v11 + 96);
    v34 = *(v11 + 100);
    v35 = *(v11 + 104);
    v36 = v11 + 164;
    v37 = v11 + 16548;
    v38 = v7 + *(result + 15);
    v39 = *(result + 28) * a2 / v5 + *(result + 44);
    v40 = *(result + 36);
    v41 = *(v11 + 124);
    if (v41 >= 0x11)
    {
      v42 = 0;
    }

    else
    {
      v42 = 16 - v41;
    }

    v43 = *(v11 + 161);
    v44 = *(v11 + 160);
    v45 = *(v11 + 159);
    v46 = *(v11 + 158);
    v47 = **(result + 16) + v17 * v38 + 4 * *(result + 14);
    v48 = v12[2];
    if (v48)
    {
      v49 = v48 + v39 * v16 + 2 * v40;
    }

    else
    {
      v49 = 0;
    }

    v51 = *v12;
    v50 = v12[1];
    v52 = v50 + v39 * v15 + 2 * v40;
    if (!v50)
    {
      v52 = 0;
    }

    v53 = v51 + v39 * v14 + 2 * v40;
    v54 = v42;
    do
    {
      if (v10 >= 1)
      {
        v55 = v10;
        v56 = v53;
        v57 = v47;
        v58 = v49;
        v59 = v52;
        do
        {
          if (v59)
          {
            v60 = (*v59 >> v54) - v21;
            v61 = (v59[1] >> v54) - v21;
            v59 += 2;
            v62 = v23 * v61;
            v63 = (v25 * v61) + (v60 * v24);
            v64 = v26 * v60;
          }

          else
          {
            v64 = 0.0;
            v63 = 0.0;
            v62 = 0.0;
          }

          v65 = *v56++;
          v66 = v22 * ((v65 >> v54) - v20);
          v67 = v62 + v66;
          v68 = (v62 + v66) <= 8191.0;
          v69 = 8191.0;
          if (v68)
          {
            v69 = v67;
            if (v67 < 0.0)
            {
              v69 = 0.0;
            }
          }

          v70 = v63 + v66;
          v68 = (v63 + v66) <= 8191.0;
          v71 = 8191.0;
          if (v68)
          {
            v71 = v70;
            if (v70 < 0.0)
            {
              v71 = 0.0;
            }
          }

          v72 = v64 + v66;
          v73 = 8191.0;
          if (v72 <= 8191.0)
          {
            v73 = v72;
            if (v72 < 0.0)
            {
              v73 = 0.0;
            }
          }

          if (v58)
          {
            v74 = *v58++;
            v75 = v74 * 0.0038911;
          }

          else
          {
            v75 = 0.0;
          }

          _H28 = *(v36 + 2 * llroundf(fminf(fmaxf(v69, 0.0), 8191.0)));
          _H30 = *(v36 + 2 * llroundf(fminf(fmaxf(v71, 0.0), 8191.0)));
          __asm
          {
            FCVT            S28, H28
            FCVT            S30, H30
          }

          _H29 = *(v36 + 2 * llroundf(fminf(fmaxf(v73, 0.0), 8191.0)));
          __asm { FCVT            S29, H29 }

          v86 = *(v37 + 2 * llroundf(fminf(fmaxf(((v28 * _S30) + (_S28 * v27)) + (_S29 * v29), 0.0), 8191.0)));
          v87 = llroundf(v75);
          if (!v58)
          {
            v87 = -1;
          }

          if (v86 <= COERCE_SHORT_FLOAT(23544))
          {
            __asm { FCMP            H8, #0 }

            if (_NF)
            {
              _S31 = 0.0;
            }

            else
            {
              __asm { FCVT            S31, H8 }
            }
          }

          else
          {
            _S31 = 255.0;
          }

          v90 = ((v31 * _S30) + (_S28 * v30)) + (_S29 * v32);
          v91 = ((v34 * _S30) + (_S28 * v33)) + (_S29 * v35);
          v92 = *(v37 + 2 * llroundf(fminf(fmaxf(v90, 0.0), 8191.0)));
          v93 = *(v37 + 2 * llroundf(fminf(fmaxf(v91, 0.0), 8191.0)));
          *(v57 + v46) = llroundf(_S31);
          if (v92 <= COERCE_SHORT_FLOAT(23544))
          {
            __asm { FCMP            H29, #0 }

            if (_NF)
            {
              _S29 = 0.0;
            }

            else
            {
              __asm { FCVT            S29, H29 }
            }
          }

          else
          {
            _S29 = 255.0;
          }

          *(v57 + v45) = llroundf(_S29);
          if (v93 <= COERCE_SHORT_FLOAT(23544))
          {
            __asm { FCMP            H28, #0 }

            if (_NF)
            {
              _S28 = 0.0;
            }

            else
            {
              __asm { FCVT            S28, H28 }
            }
          }

          else
          {
            _S28 = 255.0;
          }

          *(v57 + v44) = llroundf(_S28);
          *(v57 + v43) = v87;
          v57 += 4;
          --v55;
        }

        while (v55);
      }

      v53 += v14;
      v52 += v15;
      v49 += v16;
      v47 += v17;
      ++v9;
    }

    while (v9 != v8);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_xf444_rgb_BGRA_neon_fp16(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v12 = a4;
  v45 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v42 = a2[2];
  v43 = v16;
  v19 = *a6;
  v18 = a6[1];
  v40 = v17;
  v41 = v19;
  v39 = v18;
  v44 = a6[2];
  if (v15 == 255)
  {
    v20 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v20)
    {
      v21 = 0;
LABEL_19:
      free(v20);
      return v21;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v20 = &v39.i8[-v22];
    bzero(&v39 - v22, v23);
  }

  v24 = a9;
  v25 = vbslq_s8(vcgtq_s64(vaddq_s64(v42, v40), v43), vsubq_s64(v43, v42), v40);
  v26 = vbslq_s8(vcgtq_s64(vaddq_s64(v44, v39), v41), vsubq_s64(v41, v44), v39);
  v27 = vbslq_s8(vcgtq_s64(v26, v25), v25, v26);
  v28.i64[0] = v27.i64[0];
  v28.i64[1] = -1;
  v29 = vaddq_s64(v42, v28);
  v30 = v29.i64[1] + v27.i64[1];
  if (((*v12 * (v29.i64[1] + v27.i64[1]) + 2 * v29.i64[0]) > *a5 || *(a3 + 8) && (v12[1] * v30 + 4 * v29.i64[0]) > a5[1] || *(a3 + 16) && (2 * v29.i64[0] + v12[2] * v30) > a5[2] || (v31 = vaddq_s64(v44, v28), (*a8 * (v31.i64[1] + v27.i64[1]) + 4 * v31.i64[0]) > *a9)) && (v39 = v27, v40.i64[0] = v12, fig_log_get_emitter(), v32 = FigSignalErrorAtGM(), v24 = a9, v12 = v40.i64[0], v27 = v39, v32))
  {
    v21 = v32;
  }

  else
  {
    *v20 = v15;
    v33 = v42;
    *(v20 + 4) = v43;
    *(v20 + 20) = v27;
    *(v20 + 36) = v33;
    *(v20 + 5) = v41;
    *(v20 + 6) = v27;
    *(v20 + 7) = v44;
    *(v20 + 7) = a3;
    *(v20 + 8) = v12;
    *(v20 + 9) = a5;
    *(v20 + 16) = a7;
    *(v20 + 17) = a8;
    *(v20 + 18) = v24;
    *(v20 + 19) = a1;
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_apply_f(v15, global_queue, v20, vt_Copy_xf444_rgb_BGRA_neon_fp16_GCD);
    if (!v15)
    {
      return 0;
    }

    v35 = (v20 + 160);
    v36 = v15;
    while (1)
    {
      v37 = *v35++;
      v21 = v37;
      if (v37)
      {
        break;
      }

      if (!--v36)
      {
        v21 = 0;
        break;
      }
    }
  }

  if (v15 == 255)
  {
    goto LABEL_19;
  }

  return v21;
}

unsigned __int8 *vt_Copy_xf444_rgb_BGRA_neon_fp16_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10)
{
  v11 = 0;
  v12 = 0;
  v13 = *result;
  v14 = *(result + 28) * a2 / v13 + *(result + 44);
  v123 = *(result + 14);
  v124 = *(result + 36);
  v15 = *(result + 12);
  v16 = *(result + 13);
  v17 = v16 * a2;
  v18 = *(result + 19);
  v19 = *(result + 7);
  v20 = *(result + 8);
  v21 = v17 / v13;
  v22 = v17 / v13 + *(result + 15);
  v23 = v16 + v17;
  v24 = *v20;
  v25 = v20[1];
  v26 = v20[2];
  v27 = v19[1];
  v122 = *v19;
  v28 = v19[2];
  v29 = **(result + 17);
  v120 = v29 * v22;
  v121 = **(result + 16);
  v30 = *(v18 + 128);
  v31 = *(v18 + 136);
  v126 = *(v18 + 158);
  v129[0] = *(v18 + 158);
  v32 = *(v18 + 159);
  v129[1] = *(v18 + 159);
  v33 = *(v18 + 160);
  v129[2] = *(v18 + 160);
  v34 = *(v18 + 161);
  v129[3] = *(v18 + 161);
  v35 = *(v18 + 140);
  v36 = *(v18 + 124);
  v37 = *v18;
  v38 = *(v18 + 8);
  v39 = *(v18 + 16);
  v40 = *(v18 + 20);
  v41 = *(v18 + 28);
  v42 = *(v18 + 142);
  v127 = 0u;
  v128 = 0u;
  v43 = v23 / v13;
  do
  {
    v44 = 0;
    v45 = v129[v12];
    do
    {
      *((&v127 + ((v45 + 4 * v44) & 0xF8)) | (v45 + 4 * v44) & 7) = v11 + v44;
      ++v44;
    }

    while (v44 != 8);
    ++v12;
    v11 += 8;
  }

  while (v12 != 4);
  v46 = v43 - v21;
  if (v43 - v21 >= 1)
  {
    v47 = 0;
    *&a10 = v31 / v30;
    v48 = v35;
    v49 = v42;
    _S2 = *&a10 * v37;
    _S3 = *&a10 * v38;
    _S4 = *&a10 * v39;
    _S5 = *&a10 * v40;
    _S6 = *&a10 * v41;
    *&a10 = v35;
    v55 = vdupq_lane_s16(*&a10, 0);
    __asm { FCVT            H8, S2 }

    *v10.i16 = -v42;
    v61 = vdupq_lane_s16(v10, 0);
    __asm
    {
      FCVT            H9, S6
      FCVT            H10, S4
      FCVT            H11, S5
      FCVT            H12, S3
    }

    v66 = 16 - v36;
    if (v36 >= 0x11)
    {
      v66 = 0;
    }

    v67 = v121 + v120 + 4 * v123;
    if (v28)
    {
      v68 = v28 + v26 * v14 + 2 * v124;
    }

    else
    {
      v68 = 0;
    }

    if (v27)
    {
      v69 = v27 + v25 * v14 + 2 * v124;
    }

    else
    {
      v69 = 0;
    }

    v70 = v122 + v24 * v14 + 2 * v124;
    v71 = v66;
    v72 = vdupq_n_s16(-v66);
    v73 = vdupq_n_s16(0x5BF8u);
    v74 = vdupq_n_s32(0x3B7F00FFu);
    while (1)
    {
      if (v15 < 8)
      {
        v98 = 0;
        v81 = v69;
        v80 = v68;
        v79 = v67;
        v78 = v70;
      }

      else
      {
        v75 = 0;
        v77 = *(&v127 + 8);
        v76 = v127;
        v78 = v70;
        v79 = v67;
        v80 = v68;
        v81 = v69;
        v83 = *(&v128 + 8);
        v82 = v128;
        do
        {
          if (v81)
          {
            v130 = vld2q_s16(v81);
            v81 += 16;
            v84 = vaddq_f16(v61, vcvtq_f16_u16(vshlq_u16(v130.val[0], v72)));
            v130.val[0] = vaddq_f16(v61, vcvtq_f16_u16(vshlq_u16(v130.val[1], v72)));
            v85 = vmulq_n_f16(v130.val[0], _H12);
            v86 = vmlaq_n_f16(vmulq_n_f16(v84, _H10), v130.val[0], _H11);
            v87 = vmulq_n_f16(v84, _H9);
          }

          else
          {
            v87 = 0uLL;
            v86 = 0uLL;
            v85 = 0uLL;
          }

          v88 = *v78++;
          v89 = v88;
          if (v80)
          {
            v90 = *v80++;
            *v91.i8 = vzip1_s16(*v90.i8, 0);
            v91.u64[1] = vzip2_s16(*v90.i8, 0);
            v92 = vextq_s8(v90, v90, 8uLL).u64[0];
            *v93.i8 = vzip1_s16(v92, 0);
            v93.u64[1] = vzip2_s16(v92, 0);
            v94 = vmovn_s16(vuzp1q_s16(vcvtq_u32_f32(vmulq_f32(vcvtq_f32_u32(v91), v74)), vcvtq_u32_f32(vmulq_f32(vcvtq_f32_u32(v93), v74))));
          }

          else
          {
            v94 = -1;
          }

          v95 = vsubq_f16(vcvtq_f16_u16(vshlq_u16(v89, v72)), v55);
          *v131.val[1].i8 = vmovn_s16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(v87, v95, _H8), 0), v73)));
          v131.val[0] = vuzp1q_s8(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(v85, v95, _H8), 0), v73)), vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(v86, v95, _H8), 0), v73)));
          v131.val[1].u64[1] = v94;
          *&v96 = vqtbl2_s8(v131, v76);
          *(&v96 + 1) = vqtbl2_s8(v131, v77);
          *&v97 = vqtbl2_s8(v131, v82);
          *(&v97 + 1) = vqtbl2_s8(v131, v83);
          *v79 = v96;
          v79[1] = v97;
          v79 += 2;
          v75 += 8;
        }

        while (v75 < v15 - 7);
        v98 = v15 & 0x7FFFFFF8;
      }

      v99 = v15 - v98;
      if (v15 > v98)
      {
        break;
      }

LABEL_46:
      v70 += v24;
      v69 += v25;
      v68 += v26;
      v67 += v29;
      if (++v47 == v46)
      {
        goto LABEL_47;
      }
    }

    v100 = v79 + v34;
    v101 = v79 + v33;
    v102 = v79 + v32;
    v103 = v79 + v126;
    while (1)
    {
      v104 = 0.0;
      if (!v81)
      {
        break;
      }

      v105 = (*v81 >> v71) - v49;
      v106 = (*(v81 + 1) >> v71) - v49;
      v81 += 2;
      v107 = _S3 * v106;
      v108 = (_S5 * v106) + (v105 * _S4);
      v109 = _S6 * v105;
      if (v80)
      {
        goto LABEL_30;
      }

LABEL_31:
      v111 = v78->u16[0];
      v78 = (v78 + 2);
      v112 = _S2 * ((v111 >> v71) - v48);
      v113 = llroundf(v104);
      v114 = v107 + v112;
      if (!v80)
      {
        v113 = -1;
      }

      v115 = 255.0;
      if (v114 <= 255.0)
      {
        v115 = v114;
        if (v114 < 0.0)
        {
          v115 = 0.0;
        }
      }

      v116 = v108 + v112;
      *v103 = llroundf(v115);
      v117 = 255.0;
      if (v116 <= 255.0)
      {
        v117 = v116;
        if (v116 < 0.0)
        {
          v117 = 0.0;
        }
      }

      v118 = v109 + v112;
      *v102 = llroundf(v117);
      v119 = 255.0;
      if (v118 <= 255.0)
      {
        v119 = v118;
        if (v118 < 0.0)
        {
          v119 = 0.0;
        }
      }

      *v101 = llroundf(v119);
      v101 += 4;
      *v100 = v113;
      v100 += 4;
      v102 += 4;
      v103 += 4;
      if (!--v99)
      {
        goto LABEL_46;
      }
    }

    v109 = 0.0;
    v108 = 0.0;
    v107 = 0.0;
    if (!v80)
    {
      goto LABEL_31;
    }

LABEL_30:
    v110 = v80->u16[0];
    v80 = (v80 + 2);
    v104 = v110 * 0.0038911;
    goto LABEL_31;
  }

LABEL_47:
  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_xf444_rgb_BGRA(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v12 = a4;
  v45 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v42 = a2[2];
  v43 = v16;
  v19 = *a6;
  v18 = a6[1];
  v40 = v17;
  v41 = v19;
  v39 = v18;
  v44 = a6[2];
  if (v15 == 255)
  {
    v20 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v20)
    {
      v21 = 0;
LABEL_19:
      free(v20);
      return v21;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v20 = &v39.i8[-v22];
    bzero(&v39 - v22, v23);
  }

  v24 = a9;
  v25 = vbslq_s8(vcgtq_s64(vaddq_s64(v42, v40), v43), vsubq_s64(v43, v42), v40);
  v26 = vbslq_s8(vcgtq_s64(vaddq_s64(v44, v39), v41), vsubq_s64(v41, v44), v39);
  v27 = vbslq_s8(vcgtq_s64(v26, v25), v25, v26);
  v28.i64[0] = v27.i64[0];
  v28.i64[1] = -1;
  v29 = vaddq_s64(v42, v28);
  v30 = v29.i64[1] + v27.i64[1];
  if (((*v12 * (v29.i64[1] + v27.i64[1]) + 2 * v29.i64[0]) > *a5 || *(a3 + 8) && (v12[1] * v30 + 4 * v29.i64[0]) > a5[1] || *(a3 + 16) && (2 * v29.i64[0] + v12[2] * v30) > a5[2] || (v31 = vaddq_s64(v44, v28), (*a8 * (v31.i64[1] + v27.i64[1]) + 4 * v31.i64[0]) > *a9)) && (v39 = v27, v40.i64[0] = v12, fig_log_get_emitter(), v32 = FigSignalErrorAtGM(), v24 = a9, v12 = v40.i64[0], v27 = v39, v32))
  {
    v21 = v32;
  }

  else
  {
    *v20 = v15;
    v33 = v42;
    *(v20 + 4) = v43;
    *(v20 + 20) = v27;
    *(v20 + 36) = v33;
    *(v20 + 5) = v41;
    *(v20 + 6) = v27;
    *(v20 + 7) = v44;
    *(v20 + 7) = a3;
    *(v20 + 8) = v12;
    *(v20 + 9) = a5;
    *(v20 + 16) = a7;
    *(v20 + 17) = a8;
    *(v20 + 18) = v24;
    *(v20 + 19) = a1;
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_apply_f(v15, global_queue, v20, vt_Copy_xf444_rgb_BGRA_GCD);
    if (!v15)
    {
      return 0;
    }

    v35 = (v20 + 160);
    v36 = v15;
    while (1)
    {
      v37 = *v35++;
      v21 = v37;
      if (v37)
      {
        break;
      }

      if (!--v36)
      {
        v21 = 0;
        break;
      }
    }
  }

  if (v15 == 255)
  {
    goto LABEL_19;
  }

  return v21;
}

unsigned __int8 *vt_Copy_xf444_rgb_BGRA_GCD(unsigned __int8 *result, uint64_t a2)
{
  v2 = *result;
  v3 = *(result + 13);
  v4 = v3 * a2 / v2;
  v5 = (v3 + v3 * a2) / v2 - v4;
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = *(result + 24);
    v8 = *(result + 19);
    v9 = *(result + 7);
    v10 = *(result + 8);
    v11 = *v10;
    v12 = v10[1];
    v13 = v10[2];
    v14 = **(result + 17);
    *&v15 = *(v8 + 128);
    *&v16 = *(v8 + 136);
    v17 = *&v16 / *&v15;
    LOWORD(v15) = *(v8 + 140);
    v18 = v15;
    LOWORD(v16) = *(v8 + 142);
    v19 = v16;
    v20 = v17 * *v8;
    v21 = v17 * *(v8 + 8);
    v22 = v17 * *(v8 + 16);
    v23 = v17 * *(v8 + 20);
    v24 = v17 * *(v8 + 28);
    v25 = v4 + *(result + 15);
    v26 = *(result + 28) * a2 / v2 + *(result + 44);
    v27 = *(result + 36);
    v28 = *(v8 + 124);
    if (v28 >= 0x11)
    {
      v29 = 0;
    }

    else
    {
      v29 = 16 - v28;
    }

    v30 = *(v8 + 161);
    v31 = *(v8 + 160);
    v32 = *(v8 + 159);
    v33 = *(v8 + 158);
    v34 = **(result + 16) + v14 * v25 + 4 * *(result + 14);
    v35 = v9[2];
    if (v35)
    {
      v36 = v35 + v26 * v13 + 2 * v27;
    }

    else
    {
      v36 = 0;
    }

    v38 = *v9;
    v37 = v9[1];
    v39 = v37 + v26 * v12 + 2 * v27;
    if (!v37)
    {
      v39 = 0;
    }

    v40 = v38 + v26 * v11 + 2 * v27;
    v41 = v29;
    while (v7 < 1)
    {
LABEL_31:
      v40 += v11;
      v39 += v12;
      v36 += v13;
      v34 += v14;
      if (++v6 == v5)
      {
        goto LABEL_32;
      }
    }

    v42 = v7;
    v43 = v40;
    v44 = v34;
    v45 = v36;
    v46 = v39;
    while (1)
    {
      v47 = 0.0;
      if (!v46)
      {
        break;
      }

      v48 = (*v46 >> v41) - v19;
      v49 = (v46[1] >> v41) - v19;
      v46 += 2;
      v50 = v21 * v49;
      v51 = (v23 * v49) + (v48 * v22);
      v52 = v24 * v48;
      if (v45)
      {
        goto LABEL_15;
      }

LABEL_16:
      v54 = *v43++;
      v55 = v20 * ((v54 >> v41) - v18);
      v56 = llroundf(v47);
      v57 = v50 + v55;
      if (!v45)
      {
        v56 = -1;
      }

      v58 = 255.0;
      if (v57 <= 255.0)
      {
        v58 = v57;
        if (v57 < 0.0)
        {
          v58 = 0.0;
        }
      }

      v59 = llroundf(v58);
      v60 = v51 + v55;
      *(v44 + v33) = v59;
      v61 = 255.0;
      if (v60 <= 255.0)
      {
        v61 = v60;
        if (v60 < 0.0)
        {
          v61 = 0.0;
        }
      }

      v62 = llroundf(v61);
      v63 = v52 + v55;
      *(v44 + v32) = v62;
      v64 = 255.0;
      if (v63 <= 255.0)
      {
        v64 = v63;
        if (v63 < 0.0)
        {
          v64 = 0.0;
        }
      }

      *(v44 + v31) = llroundf(v64);
      *(v44 + v30) = v56;
      v44 += 4;
      if (!--v42)
      {
        goto LABEL_31;
      }
    }

    v52 = 0.0;
    v51 = 0.0;
    v50 = 0.0;
    if (!v45)
    {
      goto LABEL_16;
    }

LABEL_15:
    v53 = *v45++;
    v47 = v53 * 0.0038911;
    goto LABEL_16;
  }

LABEL_32:
  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_xf444_TRC_Tone_Mat_TRC_l10r(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v12 = a4;
  v14 = a1;
  v52 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v49 = a2[2];
  v50 = v16;
  v19 = *a6;
  v18 = a6[1];
  v47 = v17;
  v48 = v19;
  v46 = v18;
  v51 = a6[2];
  if (v15 == 255)
  {
    v20 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v20)
    {
      v21 = 0;
LABEL_26:
      free(v20);
      return v21;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v20 = &v44 - v22;
    bzero(&v44 - v22, v23);
  }

  v24 = a9;
  v25 = vbslq_s8(vcgtq_s64(vaddq_s64(v49, v47), v50), vsubq_s64(v50, v49), v47);
  v26 = vbslq_s8(vcgtq_s64(vaddq_s64(v51, v46), v48), vsubq_s64(v48, v51), v46);
  v27 = vbslq_s8(vcgtq_s64(v26, v25), v25, v26);
  v28.i64[0] = v27.i64[0];
  v28.i64[1] = -1;
  v29 = vaddq_s64(v49, v28);
  v30 = v29.i64[1] + v27.i64[1];
  v31 = (*v12 * (v29.i64[1] + v27.i64[1]) + 2 * v29.i64[0]) > *a5;
  v45 = v12;
  v47 = v27;
  if (v31)
  {
    v32 = a9;
    v33 = v14;
    v34 = a8;
    v35 = a7;
  }

  else if (*(a3 + 8) && (v12[1] * v30 + 4 * v29.i64[0]) > a5[1])
  {
    v32 = a9;
    v33 = v14;
    v34 = a8;
    v35 = a7;
  }

  else if (*(a3 + 16) && (2 * v29.i64[0] + v12[2] * v30) > a5[2])
  {
    v32 = a9;
    v33 = v14;
    v34 = a8;
    v35 = a7;
  }

  else
  {
    v36 = vaddq_s64(v51, v28);
    if ((*a8 * (v36.i64[1] + v27.i64[1]) + 4 * v36.i64[0]) <= *a9)
    {
      if (!*(a7 + 8) || v36.i64[0] + a8[1] * (v36.i64[1] + v27.i64[1]) <= a9[1])
      {
        goto LABEL_20;
      }

      v32 = a9;
      v33 = v14;
      v34 = a8;
      v35 = a7;
    }

    else
    {
      v32 = a9;
      v33 = v14;
      v34 = a8;
      v35 = a7;
    }
  }

  fig_log_get_emitter();
  v37 = FigSignalErrorAtGM();
  a7 = v35;
  a8 = v34;
  v14 = v33;
  v24 = v32;
  v12 = v45;
  v27 = v47;
  if (v37)
  {
    v21 = v37;
    goto LABEL_25;
  }

LABEL_20:
  *v20 = v15;
  v38 = v49;
  *(v20 + 4) = v50;
  *(v20 + 20) = v27;
  *(v20 + 36) = v38;
  *(v20 + 5) = v48;
  *(v20 + 6) = v27;
  *(v20 + 7) = v51;
  *(v20 + 7) = a3;
  *(v20 + 8) = v12;
  *(v20 + 9) = a5;
  *(v20 + 16) = a7;
  *(v20 + 17) = a8;
  *(v20 + 18) = v24;
  *(v20 + 19) = v14;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v15, global_queue, v20, vt_Copy_xf444_TRC_Tone_Mat_TRC_l10r_GCD);
  if (!v15)
  {
    return 0;
  }

  v40 = (v20 + 160);
  v41 = v15;
  while (1)
  {
    v42 = *v40++;
    v21 = v42;
    if (v42)
    {
      break;
    }

    if (!--v41)
    {
      v21 = 0;
      break;
    }
  }

LABEL_25:
  if (v15 == 255)
  {
    goto LABEL_26;
  }

  return v21;
}

unsigned __int8 *vt_Copy_xf444_TRC_Tone_Mat_TRC_l10r_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, float a5)
{
  v5 = *result;
  v6 = *(result + 13);
  v7 = v6 * a2 / v5;
  v8 = (v6 + v6 * a2) / v5 - v7;
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = *(result + 24);
    v11 = *(result + 19);
    v12 = *(result + 7);
    v13 = *(result + 8);
    v14 = *v13;
    v15 = v13[1];
    v16 = v13[2];
    v17 = **(result + 17);
    *&v18 = *(v11 + 128);
    v19 = 8191.0 / *&v18;
    LOWORD(v18) = *(v11 + 140);
    v20 = v18;
    LOWORD(a5) = *(v11 + 142);
    v21 = LODWORD(a5);
    v22 = v19 * *v11;
    v23 = v19 * *(v11 + 8);
    v24 = v19 * *(v11 + 16);
    v25 = v19 * *(v11 + 20);
    v26 = *(v11 + 28);
    v27 = v19 * v26;
    LOWORD(v26) = *(v11 + 144);
    v28 = LODWORD(v26);
    v29 = *(v11 + 72);
    v30 = *(v11 + 76);
    v31 = *(v11 + 80);
    v32 = *(v11 + 84);
    v33 = *(v11 + 88);
    v34 = *(v11 + 92);
    v35 = *(v11 + 96);
    v36 = *(v11 + 100);
    v37 = v11 + 164;
    v38 = v11 + 16548;
    v39 = v11 + 32932;
    v40 = *(v11 + 104);
    v41 = *(v11 + 108);
    v42 = *(v11 + 112);
    v43 = *(v11 + 116);
    v44 = *(v11 + 120);
    v45 = v7 + *(result + 15);
    v46 = *(result + 28) * a2 / v5 + *(result + 44);
    v47 = *(v11 + 124);
    v48 = *(result + 36);
    if (v47 >= 0x11)
    {
      v49 = 0;
    }

    else
    {
      v49 = 16 - v47;
    }

    v50 = **(result + 16) + v17 * v45 + 16 * *(result + 14);
    v51 = v12[2];
    if (v51)
    {
      v52 = v51 + v46 * v16 + 2 * v48;
    }

    else
    {
      v52 = 0;
    }

    v54 = *v12;
    v53 = *(*(result + 7) + 8);
    _ZF = v53 == 0;
    v56 = v53 + v46 * v15 + 2 * v48;
    if (_ZF)
    {
      v56 = 0;
    }

    v57 = v54 + v46 * v14 + 2 * v48;
    v58 = v49;
    do
    {
      if (v10 >= 1)
      {
        v59 = v10;
        v60 = v57;
        v61 = v50;
        v62 = v52;
        v63 = v56;
        do
        {
          if (v63)
          {
            v64 = (*v63 >> v58) - v21;
            v65 = (v63[1] >> v58) - v21;
            v63 += 2;
            v66 = v23 * v65;
            v67 = (v25 * v65) + (v64 * v24);
            v68 = v27 * v64;
          }

          else
          {
            v68 = 0.0;
            v67 = 0.0;
            v66 = 0.0;
          }

          v69 = *v60++;
          v70 = v22 * ((v69 >> v58) - v20);
          v71 = v66 + v70;
          v72 = (v66 + v70) <= 8191.0;
          v73 = 8191.0;
          if (v72)
          {
            v73 = v71;
            if (v71 < 0.0)
            {
              v73 = 0.0;
            }
          }

          v74 = v67 + v70;
          v72 = (v67 + v70) <= 8191.0;
          v75 = 8191.0;
          if (v72)
          {
            v75 = v74;
            if (v74 < 0.0)
            {
              v75 = 0.0;
            }
          }

          v76 = v68 + v70;
          v77 = 8191.0;
          if (v76 <= 8191.0)
          {
            v77 = v76;
            if (v76 < 0.0)
            {
              v77 = 0.0;
            }
          }

          if (v62)
          {
            v78 = *v62++;
            v79 = v78 * 3.0;
          }

          else
          {
            v79 = 0.0;
          }

          v80 = 8191.0;
          _H9 = *(v37 + 2 * llroundf(fminf(fmaxf(v73, 0.0), 8191.0)));
          v82 = llroundf(fminf(fmaxf(v75, 0.0), 8191.0));
          __asm { FCVT            S11, H9 }

          _H9 = *(v37 + 2 * v82);
          __asm { FCVT            S13, H9 }

          _H9 = *(v37 + 2 * llroundf(fminf(fmaxf(v77, 0.0), 8191.0)));
          __asm { FCVT            S14, H9 }

          v91 = fmaxf(_S11, fmaxf(_S13, _S14));
          v92 = (((v42 * _S13) + (v41 * _S11)) + (v43 * _S14)) + (v44 * v91);
          if (v92 <= 8191.0)
          {
            v80 = (((v42 * _S13) + (v41 * _S11)) + (v43 * _S14)) + (v44 * v91);
            if (v92 < 0.0)
            {
              v80 = 0.0;
            }
          }

          if (v62)
          {
            v93 = v79 / 65535.0;
            v94 = llroundf(v93);
          }

          else
          {
            v94 = 3.0;
          }

          _H10 = *(v38 + 2 * llroundf(v80));
          __asm { FCVT            S10, H10 }

          v97 = _S11 * _S10;
          v98 = _S13 * _S10;
          v99 = _S14 * _S10;
          v100 = ((v30 * v98) + (v97 * v29)) + (v99 * v31);
          v101 = ((v33 * v98) + (v97 * v32)) + (v99 * v34);
          _S10 = ((v36 * v98) + (v97 * v35)) + (v99 * v40);
          _H12 = *(v39 + 2 * llroundf(fminf(fmaxf(v100, 0.0), 8191.0)));
          _H13 = *(v39 + 2 * llroundf(fminf(fmaxf(v101, 0.0), 8191.0)));
          LOWORD(_S10) = *(v39 + 2 * llroundf(fminf(fmaxf(_S10, 0.0), 8191.0)));
          __asm { FCVT            S10, H10 }

          v106 = v28 + _S10;
          v107 = 1023.0;
          v108 = 1023.0;
          if (v106 <= 1023.0)
          {
            v108 = v106;
            if (v106 < 0.0)
            {
              v108 = 0.0;
            }
          }

          __asm { FCVT            S13, H13 }

          v110 = v28 + _S13;
          v72 = (v28 + _S13) <= 1023.0;
          v111 = 1023.0;
          if (v72)
          {
            v111 = v110;
            if (v110 < 0.0)
            {
              v111 = 0.0;
            }
          }

          __asm { FCVT            S12, H12 }

          v113 = v28 + _S12;
          if (v113 <= 1023.0)
          {
            v107 = v113;
            if (v113 < 0.0)
            {
              v107 = 0.0;
            }
          }

          v114 = llroundf(v108);
          v115 = llroundf(v111) << 10;
          v116 = llroundf(v107);
          if (v94 > 3.0)
          {
            v94 = 3.0;
          }

          *v61++ = v115 | v114 | (llroundf(v94) << 30) | (v116 << 20);
          --v59;
        }

        while (v59);
      }

      v57 += v14;
      v56 += v15;
      v52 += v16;
      v50 += v17;
      ++v9;
    }

    while (v9 != v8);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_xf444_TRC_Mat_TRC_l10r(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v12 = a4;
  v14 = a1;
  v52 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v49 = a2[2];
  v50 = v16;
  v19 = *a6;
  v18 = a6[1];
  v47 = v17;
  v48 = v19;
  v46 = v18;
  v51 = a6[2];
  if (v15 == 255)
  {
    v20 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v20)
    {
      v21 = 0;
LABEL_26:
      free(v20);
      return v21;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v20 = &v44 - v22;
    bzero(&v44 - v22, v23);
  }

  v24 = a9;
  v25 = vbslq_s8(vcgtq_s64(vaddq_s64(v49, v47), v50), vsubq_s64(v50, v49), v47);
  v26 = vbslq_s8(vcgtq_s64(vaddq_s64(v51, v46), v48), vsubq_s64(v48, v51), v46);
  v27 = vbslq_s8(vcgtq_s64(v26, v25), v25, v26);
  v28.i64[0] = v27.i64[0];
  v28.i64[1] = -1;
  v29 = vaddq_s64(v49, v28);
  v30 = v29.i64[1] + v27.i64[1];
  v31 = (*v12 * (v29.i64[1] + v27.i64[1]) + 2 * v29.i64[0]) > *a5;
  v45 = v12;
  v47 = v27;
  if (v31)
  {
    v32 = a9;
    v33 = v14;
    v34 = a8;
    v35 = a7;
  }

  else if (*(a3 + 8) && (v12[1] * v30 + 4 * v29.i64[0]) > a5[1])
  {
    v32 = a9;
    v33 = v14;
    v34 = a8;
    v35 = a7;
  }

  else if (*(a3 + 16) && (2 * v29.i64[0] + v12[2] * v30) > a5[2])
  {
    v32 = a9;
    v33 = v14;
    v34 = a8;
    v35 = a7;
  }

  else
  {
    v36 = vaddq_s64(v51, v28);
    if ((*a8 * (v36.i64[1] + v27.i64[1]) + 4 * v36.i64[0]) <= *a9)
    {
      if (!*(a7 + 8) || v36.i64[0] + a8[1] * (v36.i64[1] + v27.i64[1]) <= a9[1])
      {
        goto LABEL_20;
      }

      v32 = a9;
      v33 = v14;
      v34 = a8;
      v35 = a7;
    }

    else
    {
      v32 = a9;
      v33 = v14;
      v34 = a8;
      v35 = a7;
    }
  }

  fig_log_get_emitter();
  v37 = FigSignalErrorAtGM();
  a7 = v35;
  a8 = v34;
  v14 = v33;
  v24 = v32;
  v12 = v45;
  v27 = v47;
  if (v37)
  {
    v21 = v37;
    goto LABEL_25;
  }

LABEL_20:
  *v20 = v15;
  v38 = v49;
  *(v20 + 4) = v50;
  *(v20 + 20) = v27;
  *(v20 + 36) = v38;
  *(v20 + 5) = v48;
  *(v20 + 6) = v27;
  *(v20 + 7) = v51;
  *(v20 + 7) = a3;
  *(v20 + 8) = v12;
  *(v20 + 9) = a5;
  *(v20 + 16) = a7;
  *(v20 + 17) = a8;
  *(v20 + 18) = v24;
  *(v20 + 19) = v14;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v15, global_queue, v20, vt_Copy_xf444_TRC_Mat_TRC_l10r_GCD);
  if (!v15)
  {
    return 0;
  }

  v40 = (v20 + 160);
  v41 = v15;
  while (1)
  {
    v42 = *v40++;
    v21 = v42;
    if (v42)
    {
      break;
    }

    if (!--v41)
    {
      v21 = 0;
      break;
    }
  }

LABEL_25:
  if (v15 == 255)
  {
    goto LABEL_26;
  }

  return v21;
}

unsigned __int8 *vt_Copy_xf444_TRC_Mat_TRC_l10r_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, float a5)
{
  v5 = *result;
  v6 = *(result + 13);
  v7 = v6 * a2 / v5;
  v8 = (v6 + v6 * a2) / v5 - v7;
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = *(result + 24);
    v11 = *(result + 19);
    v12 = *(result + 7);
    v13 = *(result + 8);
    v14 = *v13;
    v15 = v13[1];
    v16 = v13[2];
    v17 = **(result + 17);
    *&v18 = *(v11 + 128);
    v19 = 8191.0 / *&v18;
    LOWORD(v18) = *(v11 + 140);
    v20 = v18;
    LOWORD(a5) = *(v11 + 142);
    v21 = LODWORD(a5);
    v22 = v19 * *v11;
    v23 = v19 * *(v11 + 8);
    v24 = v19 * *(v11 + 16);
    v25 = v19 * *(v11 + 20);
    v26 = *(v11 + 28);
    v27 = v19 * v26;
    LOWORD(v26) = *(v11 + 144);
    v28 = LODWORD(v26);
    v29 = *(v11 + 72);
    v30 = *(v11 + 76);
    v31 = *(v11 + 80);
    v32 = *(v11 + 84);
    v33 = *(v11 + 88);
    v34 = *(v11 + 92);
    v35 = *(v11 + 96);
    v36 = *(v11 + 100);
    v37 = *(v11 + 104);
    v38 = v11 + 164;
    v39 = v11 + 16548;
    v40 = v7 + *(result + 15);
    v41 = *(result + 28) * a2 / v5 + *(result + 44);
    v42 = *(v11 + 124);
    v43 = *(result + 36);
    if (v42 >= 0x11)
    {
      v44 = 0;
    }

    else
    {
      v44 = 16 - v42;
    }

    v45 = **(result + 16) + v17 * v40 + 16 * *(result + 14);
    v46 = v12[2];
    if (v46)
    {
      v47 = v46 + v41 * v16 + 2 * v43;
    }

    else
    {
      v47 = 0;
    }

    v49 = *v12;
    v48 = *(*(result + 7) + 8);
    _ZF = v48 == 0;
    v51 = v48 + v41 * v15 + 2 * v43;
    if (_ZF)
    {
      v51 = 0;
    }

    v52 = v49 + v41 * v14 + 2 * v43;
    v53 = v44;
    do
    {
      if (v10 >= 1)
      {
        v54 = v10;
        v55 = v52;
        v56 = v45;
        v57 = v47;
        v58 = v51;
        do
        {
          if (v58)
          {
            v59 = (*v58 >> v53) - v21;
            v60 = (v58[1] >> v53) - v21;
            v58 += 2;
            v61 = v23 * v60;
            v62 = (v25 * v60) + (v59 * v24);
            v63 = v27 * v59;
          }

          else
          {
            v63 = 0.0;
            v62 = 0.0;
            v61 = 0.0;
          }

          v64 = *v55++;
          v65 = v22 * ((v64 >> v53) - v20);
          v66 = v61 + v65;
          v67 = (v61 + v65) <= 8191.0;
          v68 = 8191.0;
          if (v67)
          {
            v68 = v66;
            if (v66 < 0.0)
            {
              v68 = 0.0;
            }
          }

          v69 = v62 + v65;
          v67 = (v62 + v65) <= 8191.0;
          v70 = 8191.0;
          if (v67)
          {
            v70 = v69;
            if (v69 < 0.0)
            {
              v70 = 0.0;
            }
          }

          v71 = v63 + v65;
          v72 = 8191.0;
          if (v71 <= 8191.0)
          {
            v72 = v71;
            if (v71 < 0.0)
            {
              v72 = 0.0;
            }
          }

          if (v57 && (v73 = *v57, ++v57, v74 = v73 * 3.0, v57))
          {
            v75 = v74 / 65535.0;
            v76 = llroundf(v75);
          }

          else
          {
            v76 = 3.0;
          }

          _H8 = *(v38 + 2 * llroundf(fminf(fmaxf(v68, 0.0), 8191.0)));
          v78 = llroundf(fminf(fmaxf(v70, 0.0), 8191.0));
          __asm { FCVT            S9, H8 }

          _H8 = *(v38 + 2 * v78);
          __asm { FCVT            S11, H8 }

          _H8 = *(v38 + 2 * llroundf(fminf(fmaxf(v72, 0.0), 8191.0)));
          __asm { FCVT            S10, H8 }

          _H8 = *(v39 + 2 * llroundf(fminf(fmaxf(((v36 * _S11) + (_S9 * v35)) + (_S10 * v37), 0.0), 8191.0)));
          __asm { FCVT            S8, H8 }

          v89 = v28 + _S8;
          v67 = (v28 + _S8) <= 1023.0;
          v90 = 1023.0;
          if (v67)
          {
            v90 = v89;
            if (v89 < 0.0)
            {
              v90 = 0.0;
            }
          }

          v91 = ((v30 * _S11) + (_S9 * v29)) + (_S10 * v31);
          _S9 = ((v33 * _S11) + (_S9 * v32)) + (_S10 * v34);
          _H10 = *(v39 + 2 * llroundf(fminf(fmaxf(v91, 0.0), 8191.0)));
          LOWORD(_S9) = *(v39 + 2 * llroundf(fminf(fmaxf(_S9, 0.0), 8191.0)));
          __asm { FCVT            S9, H9 }

          v95 = v28 + _S9;
          v67 = (v28 + _S9) <= 1023.0;
          v96 = 1023.0;
          if (v67)
          {
            v96 = v95;
            if (v95 < 0.0)
            {
              v96 = 0.0;
            }
          }

          __asm { FCVT            S10, H10 }

          v98 = v28 + _S10;
          v67 = (v28 + _S10) <= 1023.0;
          v99 = 1023.0;
          if (v67)
          {
            v99 = v98;
            if (v98 < 0.0)
            {
              v99 = 0.0;
            }
          }

          v100 = llroundf(v90);
          v101 = llroundf(v96) << 10;
          v102 = llroundf(v99);
          if (v76 > 3.0)
          {
            v76 = 3.0;
          }

          *v56++ = v101 | v100 | (llroundf(v76) << 30) | (v102 << 20);
          --v54;
        }

        while (v54);
      }

      v52 += v14;
      v51 += v15;
      v47 += v16;
      v45 += v17;
      ++v9;
    }

    while (v9 != v8);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_xf444_rgb_l10r(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v12 = a4;
  v14 = a1;
  v52 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v49 = a2[2];
  v50 = v16;
  v19 = *a6;
  v18 = a6[1];
  v47 = v17;
  v48 = v19;
  v46 = v18;
  v51 = a6[2];
  if (v15 == 255)
  {
    v20 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v20)
    {
      v21 = 0;
LABEL_26:
      free(v20);
      return v21;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v20 = &v44 - v22;
    bzero(&v44 - v22, v23);
  }

  v24 = a9;
  v25 = vbslq_s8(vcgtq_s64(vaddq_s64(v49, v47), v50), vsubq_s64(v50, v49), v47);
  v26 = vbslq_s8(vcgtq_s64(vaddq_s64(v51, v46), v48), vsubq_s64(v48, v51), v46);
  v27 = vbslq_s8(vcgtq_s64(v26, v25), v25, v26);
  v28.i64[0] = v27.i64[0];
  v28.i64[1] = -1;
  v29 = vaddq_s64(v49, v28);
  v30 = v29.i64[1] + v27.i64[1];
  v31 = (*v12 * (v29.i64[1] + v27.i64[1]) + 2 * v29.i64[0]) > *a5;
  v45 = v12;
  v47 = v27;
  if (v31)
  {
    v32 = a9;
    v33 = v14;
    v34 = a8;
    v35 = a7;
  }

  else if (*(a3 + 8) && (v12[1] * v30 + 4 * v29.i64[0]) > a5[1])
  {
    v32 = a9;
    v33 = v14;
    v34 = a8;
    v35 = a7;
  }

  else if (*(a3 + 16) && (2 * v29.i64[0] + v12[2] * v30) > a5[2])
  {
    v32 = a9;
    v33 = v14;
    v34 = a8;
    v35 = a7;
  }

  else
  {
    v36 = vaddq_s64(v51, v28);
    if ((*a8 * (v36.i64[1] + v27.i64[1]) + 4 * v36.i64[0]) <= *a9)
    {
      if (!*(a7 + 8) || v36.i64[0] + a8[1] * (v36.i64[1] + v27.i64[1]) <= a9[1])
      {
        goto LABEL_20;
      }

      v32 = a9;
      v33 = v14;
      v34 = a8;
      v35 = a7;
    }

    else
    {
      v32 = a9;
      v33 = v14;
      v34 = a8;
      v35 = a7;
    }
  }

  fig_log_get_emitter();
  v37 = FigSignalErrorAtGM();
  a7 = v35;
  a8 = v34;
  v14 = v33;
  v24 = v32;
  v12 = v45;
  v27 = v47;
  if (v37)
  {
    v21 = v37;
    goto LABEL_25;
  }

LABEL_20:
  *v20 = v15;
  v38 = v49;
  *(v20 + 4) = v50;
  *(v20 + 20) = v27;
  *(v20 + 36) = v38;
  *(v20 + 5) = v48;
  *(v20 + 6) = v27;
  *(v20 + 7) = v51;
  *(v20 + 7) = a3;
  *(v20 + 8) = v12;
  *(v20 + 9) = a5;
  *(v20 + 16) = a7;
  *(v20 + 17) = a8;
  *(v20 + 18) = v24;
  *(v20 + 19) = v14;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v15, global_queue, v20, vt_Copy_xf444_rgb_l10r_GCD);
  if (!v15)
  {
    return 0;
  }

  v40 = (v20 + 160);
  v41 = v15;
  while (1)
  {
    v42 = *v40++;
    v21 = v42;
    if (v42)
    {
      break;
    }

    if (!--v41)
    {
      v21 = 0;
      break;
    }
  }

LABEL_25:
  if (v15 == 255)
  {
    goto LABEL_26;
  }

  return v21;
}

unsigned __int8 *vt_Copy_xf444_rgb_l10r_GCD(unsigned __int8 *result, uint64_t a2)
{
  v2 = *result;
  v3 = *(result + 13);
  v4 = v3 * a2 / v2;
  v5 = (v3 + v3 * a2) / v2 - v4;
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = *(result + 24);
    v8 = *(result + 19);
    v9 = *(result + 7);
    v10 = *(result + 8);
    v11 = *v10;
    v12 = v10[1];
    v13 = v10[2];
    v14 = **(result + 17);
    *&v15 = *(v8 + 128);
    *&v16 = *(v8 + 136);
    v17 = *&v16 / *&v15;
    LOWORD(v15) = *(v8 + 140);
    v18 = v15;
    LOWORD(v16) = *(v8 + 142);
    v19 = v16;
    v20 = v17 * *v8;
    v21 = v17 * *(v8 + 8);
    v22 = v17 * *(v8 + 16);
    v23 = v17 * *(v8 + 20);
    v24 = *(v8 + 28);
    v25 = v17 * v24;
    LOWORD(v24) = *(v8 + 144);
    v26 = LODWORD(v24);
    v27 = v4 + *(result + 15);
    v28 = *(result + 28) * a2 / v2 + *(result + 44);
    v29 = *(v8 + 124);
    v30 = *(result + 36);
    if (v29 >= 0x11)
    {
      v31 = 0;
    }

    else
    {
      v31 = 16 - v29;
    }

    v32 = **(result + 16) + v14 * v27 + 16 * *(result + 14);
    v33 = v9[2];
    if (v33)
    {
      v34 = v33 + v28 * v13 + 2 * v30;
    }

    else
    {
      v34 = 0;
    }

    v35 = *v9;
    v36 = *(*(result + 7) + 8);
    v37 = v36 == 0;
    v38 = v36 + v28 * v12 + 2 * v30;
    if (v37)
    {
      v38 = 0;
    }

    v39 = v35 + v28 * v11 + 2 * v30;
    v40 = v31;
    while (v7 < 1)
    {
LABEL_31:
      v39 += v11;
      v38 += v12;
      v34 += v13;
      v32 += v14;
      if (++v6 == v5)
      {
        goto LABEL_32;
      }
    }

    v41 = v7;
    v42 = v39;
    v43 = v32;
    v44 = v34;
    v45 = v38;
    while (1)
    {
      if (v45)
      {
        v46 = (*v45 >> v40) - v19;
        v47 = (v45[1] >> v40) - v19;
        v45 += 2;
        v48 = v21 * v47;
        v49 = (v23 * v47) + (v46 * v22);
        v50 = v25 * v46;
        if (v44)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v50 = 0.0;
        v49 = 0.0;
        v48 = 0.0;
        if (v44)
        {
LABEL_15:
          v51 = *v44++;
          v52 = v51 * 3.0 / 65535.0;
          v53 = llroundf(v52);
          goto LABEL_18;
        }
      }

      v53 = 3.0;
LABEL_18:
      v54 = *v42++;
      v55 = v20 * ((v54 >> v40) - v18);
      v56 = (v50 + v55) + v26;
      v57 = 1023.0;
      if (v56 <= 1023.0)
      {
        v57 = v56;
        if (v56 < 0.0)
        {
          v57 = 0.0;
        }
      }

      v58 = (v49 + v55) + v26;
      v59 = 1023.0;
      if (v58 <= 1023.0)
      {
        v59 = v58;
        if (v58 < 0.0)
        {
          v59 = 0.0;
        }
      }

      v60 = (v48 + v55) + v26;
      v61 = 1023.0;
      if (v60 <= 1023.0)
      {
        v61 = v60;
        if (v60 < 0.0)
        {
          v61 = 0.0;
        }
      }

      v62 = llroundf(v57);
      v63 = llroundf(v59) << 10;
      v64 = llroundf(v61);
      if (v53 <= 3.0)
      {
        v65 = v53;
      }

      else
      {
        v65 = 3.0;
      }

      *v43++ = v63 | v62 | (llroundf(v65) << 30) | (v64 << 20);
      if (!--v41)
      {
        goto LABEL_31;
      }
    }
  }

LABEL_32:
  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_xf444_TRC_Tone_Mat_TRC_l64r(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v12 = a4;
  v45 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v42 = a2[2];
  v43 = v16;
  v19 = *a6;
  v18 = a6[1];
  v40 = v17;
  v41 = v19;
  v39 = v18;
  v44 = a6[2];
  if (v15 == 255)
  {
    v20 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v20)
    {
      v21 = 0;
LABEL_19:
      free(v20);
      return v21;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v20 = &v39.i8[-v22];
    bzero(&v39 - v22, v23);
  }

  v24 = a9;
  v25 = vbslq_s8(vcgtq_s64(vaddq_s64(v42, v40), v43), vsubq_s64(v43, v42), v40);
  v26 = vbslq_s8(vcgtq_s64(vaddq_s64(v44, v39), v41), vsubq_s64(v41, v44), v39);
  v27 = vbslq_s8(vcgtq_s64(v26, v25), v25, v26);
  v28.i64[0] = v27.i64[0];
  v28.i64[1] = -1;
  v29 = vaddq_s64(v42, v28);
  v30 = v29.i64[1] + v27.i64[1];
  if (((*v12 * (v29.i64[1] + v27.i64[1]) + 2 * v29.i64[0]) > *a5 || *(a3 + 8) && (v12[1] * v30 + 4 * v29.i64[0]) > a5[1] || *(a3 + 16) && (2 * v29.i64[0] + v12[2] * v30) > a5[2] || (v31 = vaddq_s64(v44, v28), (*a8 * (v31.i64[1] + v27.i64[1]) + 8 * v31.i64[0]) > *a9)) && (v39 = v27, v40.i64[0] = v12, fig_log_get_emitter(), v32 = FigSignalErrorAtGM(), v24 = a9, v12 = v40.i64[0], v27 = v39, v32))
  {
    v21 = v32;
  }

  else
  {
    *v20 = v15;
    v33 = v42;
    *(v20 + 4) = v43;
    *(v20 + 20) = v27;
    *(v20 + 36) = v33;
    *(v20 + 5) = v41;
    *(v20 + 6) = v27;
    *(v20 + 7) = v44;
    *(v20 + 7) = a3;
    *(v20 + 8) = v12;
    *(v20 + 9) = a5;
    *(v20 + 16) = a7;
    *(v20 + 17) = a8;
    *(v20 + 18) = v24;
    *(v20 + 19) = a1;
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_apply_f(v15, global_queue, v20, vt_Copy_xf444_TRC_Tone_Mat_TRC_l64r_GCD);
    if (!v15)
    {
      return 0;
    }

    v35 = (v20 + 160);
    v36 = v15;
    while (1)
    {
      v37 = *v35++;
      v21 = v37;
      if (v37)
      {
        break;
      }

      if (!--v36)
      {
        v21 = 0;
        break;
      }
    }
  }

  if (v15 == 255)
  {
    goto LABEL_19;
  }

  return v21;
}

unsigned __int8 *vt_Copy_xf444_TRC_Tone_Mat_TRC_l64r_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, float a5)
{
  v5 = *result;
  v6 = *(result + 13);
  v7 = v6 * a2 / v5;
  v8 = (v6 + v6 * a2) / v5 - v7;
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = *(result + 24);
    v11 = *(result + 19);
    v12 = *(result + 7);
    v13 = *(result + 8);
    v14 = *v13;
    v15 = v13[1];
    v16 = v13[2];
    v17 = **(result + 17);
    *&v18 = *(v11 + 128);
    v19 = 8191.0 / *&v18;
    LOWORD(v18) = *(v11 + 140);
    v20 = v18;
    LOWORD(a5) = *(v11 + 142);
    v21 = LODWORD(a5);
    v22 = v19 * *v11;
    v23 = v19 * *(v11 + 8);
    v24 = v19 * *(v11 + 16);
    v25 = v19 * *(v11 + 20);
    v26 = v19 * *(v11 + 28);
    v27 = *(v11 + 72);
    v28 = *(v11 + 76);
    v29 = *(v11 + 80);
    v30 = *(v11 + 84);
    v31 = *(v11 + 88);
    v32 = *(v11 + 92);
    v33 = *(v11 + 96);
    v34 = *(v11 + 100);
    v35 = v11 + 164;
    v36 = v11 + 16548;
    v37 = v11 + 32932;
    v38 = *(v11 + 104);
    v39 = *(v11 + 108);
    v40 = *(v11 + 112);
    v41 = *(v11 + 116);
    v42 = *(v11 + 120);
    v43 = v7 + *(result + 15);
    v44 = *(result + 28) * a2 / v5 + *(result + 44);
    v45 = *(v11 + 124);
    v46 = *(result + 36);
    if (v45 >= 0x11)
    {
      v47 = 0;
    }

    else
    {
      v47 = 16 - v45;
    }

    v48 = **(result + 16) + v17 * v43 + 8 * *(result + 14);
    v49 = v12[2];
    if (v49)
    {
      v50 = v49 + v44 * v16 + 2 * v46;
    }

    else
    {
      v50 = 0;
    }

    v52 = *v12;
    v51 = *(*(result + 7) + 8);
    _ZF = v51 == 0;
    v54 = v51 + v44 * v15 + 2 * v46;
    if (_ZF)
    {
      v54 = 0;
    }

    v55 = v52 + v44 * v14 + 2 * v46;
    v56 = v47;
    do
    {
      if (v10 >= 1)
      {
        v57 = v10;
        v58 = v55;
        v59 = v48;
        v60 = v50;
        v61 = v54;
        do
        {
          if (v61)
          {
            v62 = (*v61 >> v56) - v21;
            v63 = (v61[1] >> v56) - v21;
            v61 += 2;
            v64 = v23 * v63;
            v65 = (v25 * v63) + (v62 * v24);
            v66 = v26 * v62;
          }

          else
          {
            v66 = 0.0;
            v65 = 0.0;
            v64 = 0.0;
          }

          v67 = *v58++;
          v68 = v22 * ((v67 >> v56) - v20);
          v69 = v64 + v68;
          v70 = (v64 + v68) <= 8191.0;
          v71 = 8191.0;
          if (v70)
          {
            v71 = v69;
            if (v69 < 0.0)
            {
              v71 = 0.0;
            }
          }

          v72 = v65 + v68;
          v70 = (v65 + v68) <= 8191.0;
          v73 = 8191.0;
          if (v70)
          {
            v73 = v72;
            if (v72 < 0.0)
            {
              v73 = 0.0;
            }
          }

          v74 = v66 + v68;
          v75 = 8191.0;
          if (v74 <= 8191.0)
          {
            v75 = v74;
            if (v74 < 0.0)
            {
              v75 = 0.0;
            }
          }

          if (v60)
          {
            v77 = *v60++;
            v76 = v77;
          }

          else
          {
            v76 = 0;
          }

          _H31 = *(v35 + 2 * llroundf(fminf(fmaxf(v71, 0.0), 8191.0)));
          __asm { FCVT            S31, H31 }

          _H9 = *(v35 + 2 * llroundf(fminf(fmaxf(v73, 0.0), 8191.0)));
          v84 = llroundf(fminf(fmaxf(v75, 0.0), 8191.0));
          __asm { FCVT            S8, H9 }

          _H9 = *(v35 + 2 * v84);
          __asm { FCVT            S10, H9 }

          v88 = (((v40 * _S8) + (v39 * _S31)) + (v41 * _S10)) + (v42 * fmaxf(_S31, fmaxf(_S8, _S10)));
          v89 = 8191.0;
          if (v88 <= 8191.0)
          {
            v89 = v88;
            if (v88 < 0.0)
            {
              v89 = 0.0;
            }
          }

          _H9 = *(v36 + 2 * llroundf(v89));
          __asm { FCVT            S11, H9 }

          v92 = _S31 * _S11;
          v93 = _S8 * _S11;
          v94 = _S10 * _S11;
          LOWORD(_S11) = *(v37 + 2 * llroundf(fminf(fmaxf(((v28 * v93) + (v92 * v27)) + ((_S10 * _S11) * v29), 0.0), 8191.0)));
          __asm { FCVT            S12, H11 }

          if (!v60)
          {
            v76 = -1;
          }

          v96 = 65535.0;
          if (_S12 <= 65535.0)
          {
            __asm { FCMP            H11, #0 }

            v96 = _S12;
            if (_NF)
            {
              v96 = 0.0;
            }
          }

          v98 = ((v31 * v93) + (v92 * v30)) + (v94 * v32);
          v99 = ((v34 * v93) + (v92 * v33)) + (v94 * v38);
          _H8 = *(v37 + 2 * llroundf(fminf(fmaxf(v98, 0.0), 8191.0)));
          _H31 = *(v37 + 2 * llroundf(fminf(fmaxf(v99, 0.0), 8191.0)));
          __asm { FCVT            S11, H8 }

          *v59 = llroundf(v96);
          v103 = 65535.0;
          if (_S11 <= 65535.0)
          {
            __asm { FCMP            H8, #0 }

            v103 = _S11;
            if (_NF)
            {
              v103 = 0.0;
            }
          }

          __asm { FCVT            S10, H31 }

          v59[1] = llroundf(v103);
          v106 = 65535.0;
          if (_S10 <= 65535.0)
          {
            __asm { FCMP            H31, #0 }

            v106 = _S10;
            if (_NF)
            {
              v106 = 0.0;
            }
          }

          v59[2] = llroundf(v106);
          v59[3] = v76;
          v59 += 4;
          --v57;
        }

        while (v57);
      }

      v55 += v14;
      v54 += v15;
      v50 += v16;
      v48 += v17;
      ++v9;
    }

    while (v9 != v8);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_xf444_TRC_Mat_TRC_l64r(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v12 = a4;
  v45 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v42 = a2[2];
  v43 = v16;
  v19 = *a6;
  v18 = a6[1];
  v40 = v17;
  v41 = v19;
  v39 = v18;
  v44 = a6[2];
  if (v15 == 255)
  {
    v20 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v20)
    {
      v21 = 0;
LABEL_19:
      free(v20);
      return v21;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v20 = &v39.i8[-v22];
    bzero(&v39 - v22, v23);
  }

  v24 = a9;
  v25 = vbslq_s8(vcgtq_s64(vaddq_s64(v42, v40), v43), vsubq_s64(v43, v42), v40);
  v26 = vbslq_s8(vcgtq_s64(vaddq_s64(v44, v39), v41), vsubq_s64(v41, v44), v39);
  v27 = vbslq_s8(vcgtq_s64(v26, v25), v25, v26);
  v28.i64[0] = v27.i64[0];
  v28.i64[1] = -1;
  v29 = vaddq_s64(v42, v28);
  v30 = v29.i64[1] + v27.i64[1];
  if (((*v12 * (v29.i64[1] + v27.i64[1]) + 2 * v29.i64[0]) > *a5 || *(a3 + 8) && (v12[1] * v30 + 4 * v29.i64[0]) > a5[1] || *(a3 + 16) && (2 * v29.i64[0] + v12[2] * v30) > a5[2] || (v31 = vaddq_s64(v44, v28), (*a8 * (v31.i64[1] + v27.i64[1]) + 8 * v31.i64[0]) > *a9)) && (v39 = v27, v40.i64[0] = v12, fig_log_get_emitter(), v32 = FigSignalErrorAtGM(), v24 = a9, v12 = v40.i64[0], v27 = v39, v32))
  {
    v21 = v32;
  }

  else
  {
    *v20 = v15;
    v33 = v42;
    *(v20 + 4) = v43;
    *(v20 + 20) = v27;
    *(v20 + 36) = v33;
    *(v20 + 5) = v41;
    *(v20 + 6) = v27;
    *(v20 + 7) = v44;
    *(v20 + 7) = a3;
    *(v20 + 8) = v12;
    *(v20 + 9) = a5;
    *(v20 + 16) = a7;
    *(v20 + 17) = a8;
    *(v20 + 18) = v24;
    *(v20 + 19) = a1;
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_apply_f(v15, global_queue, v20, vt_Copy_xf444_TRC_Mat_TRC_l64r_GCD);
    if (!v15)
    {
      return 0;
    }

    v35 = (v20 + 160);
    v36 = v15;
    while (1)
    {
      v37 = *v35++;
      v21 = v37;
      if (v37)
      {
        break;
      }

      if (!--v36)
      {
        v21 = 0;
        break;
      }
    }
  }

  if (v15 == 255)
  {
    goto LABEL_19;
  }

  return v21;
}

unsigned __int8 *vt_Copy_xf444_TRC_Mat_TRC_l64r_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, float a5)
{
  v5 = *result;
  v6 = *(result + 13);
  v7 = v6 * a2 / v5;
  v8 = (v6 + v6 * a2) / v5 - v7;
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = *(result + 24);
    v11 = *(result + 19);
    v12 = *(result + 7);
    v13 = *(result + 8);
    v14 = *v13;
    v15 = v13[1];
    v16 = v13[2];
    v17 = **(result + 17);
    *&v18 = *(v11 + 128);
    v19 = 8191.0 / *&v18;
    LOWORD(v18) = *(v11 + 140);
    v20 = v18;
    LOWORD(a5) = *(v11 + 142);
    v21 = LODWORD(a5);
    v22 = v19 * *v11;
    v23 = v19 * *(v11 + 8);
    v24 = v19 * *(v11 + 16);
    v25 = v19 * *(v11 + 20);
    v26 = v19 * *(v11 + 28);
    v27 = *(v11 + 72);
    v28 = *(v11 + 76);
    v29 = *(v11 + 80);
    v30 = *(v11 + 84);
    v31 = *(v11 + 88);
    v32 = *(v11 + 92);
    v33 = *(v11 + 96);
    v34 = *(v11 + 100);
    v35 = *(v11 + 104);
    v36 = v11 + 164;
    v37 = v11 + 16548;
    v38 = v7 + *(result + 15);
    v39 = *(result + 28) * a2 / v5 + *(result + 44);
    v40 = *(v11 + 124);
    v41 = *(result + 36);
    if (v40 >= 0x11)
    {
      v42 = 0;
    }

    else
    {
      v42 = 16 - v40;
    }

    v43 = **(result + 16) + v17 * v38 + 8 * *(result + 14);
    v44 = v12[2];
    if (v44)
    {
      v45 = v44 + v39 * v16 + 2 * v41;
    }

    else
    {
      v45 = 0;
    }

    v47 = *v12;
    v46 = *(*(result + 7) + 8);
    _ZF = v46 == 0;
    v49 = v46 + v39 * v15 + 2 * v41;
    if (_ZF)
    {
      v49 = 0;
    }

    v50 = v47 + v39 * v14 + 2 * v41;
    v51 = v42;
    do
    {
      if (v10 >= 1)
      {
        v52 = v10;
        v53 = v50;
        v54 = v43;
        v55 = v45;
        v56 = v49;
        do
        {
          if (v56)
          {
            v57 = (*v56 >> v51) - v21;
            v58 = (v56[1] >> v51) - v21;
            v56 += 2;
            v59 = v23 * v58;
            v60 = (v25 * v58) + (v57 * v24);
            v61 = v26 * v57;
          }

          else
          {
            v61 = 0.0;
            v60 = 0.0;
            v59 = 0.0;
          }

          v62 = *v53++;
          v63 = v22 * ((v62 >> v51) - v20);
          v64 = v59 + v63;
          v65 = (v59 + v63) <= 8191.0;
          v66 = 8191.0;
          if (v65)
          {
            v66 = v64;
            if (v64 < 0.0)
            {
              v66 = 0.0;
            }
          }

          v67 = v60 + v63;
          v65 = (v60 + v63) <= 8191.0;
          v68 = 8191.0;
          if (v65)
          {
            v68 = v67;
            if (v67 < 0.0)
            {
              v68 = 0.0;
            }
          }

          v69 = v61 + v63;
          v70 = 8191.0;
          if (v69 <= 8191.0)
          {
            v70 = v69;
            if (v69 < 0.0)
            {
              v70 = 0.0;
            }
          }

          if (v55)
          {
            v72 = *v55++;
            v71 = v72;
          }

          else
          {
            v71 = 0;
          }

          _H27 = *(v36 + 2 * llroundf(fminf(fmaxf(v66, 0.0), 8191.0)));
          _H29 = *(v36 + 2 * llroundf(fminf(fmaxf(v68, 0.0), 8191.0)));
          __asm
          {
            FCVT            S27, H27
            FCVT            S29, H29
          }

          _H28 = *(v36 + 2 * llroundf(fminf(fmaxf(v70, 0.0), 8191.0)));
          __asm { FCVT            S28, H28 }

          _H31 = *(v37 + 2 * llroundf(fminf(fmaxf(((v28 * _S29) + (_S27 * v27)) + (_S28 * v29), 0.0), 8191.0)));
          __asm { FCVT            S8, H31 }

          if (!v55)
          {
            v71 = -1;
          }

          v84 = 65535.0;
          if (_S8 <= 65535.0)
          {
            __asm { FCMP            H31, #0 }

            v84 = _S8;
            if (_NF)
            {
              v84 = 0.0;
            }
          }

          v86 = ((v31 * _S29) + (_S27 * v30)) + (_S28 * v32);
          v87 = ((v34 * _S29) + (_S27 * v33)) + (_S28 * v35);
          _H28 = *(v37 + 2 * llroundf(fminf(fmaxf(v86, 0.0), 8191.0)));
          _H27 = *(v37 + 2 * llroundf(fminf(fmaxf(v87, 0.0), 8191.0)));
          __asm { FCVT            S31, H28 }

          *v54 = llroundf(v84);
          v91 = 65535.0;
          if (_S31 <= 65535.0)
          {
            __asm { FCMP            H28, #0 }

            v91 = _S31;
            if (_NF)
            {
              v91 = 0.0;
            }
          }

          __asm { FCVT            S30, H27 }

          v54[1] = llroundf(v91);
          v94 = 65535.0;
          if (_S30 <= 65535.0)
          {
            __asm { FCMP            H27, #0 }

            v94 = _S30;
            if (_NF)
            {
              v94 = 0.0;
            }
          }

          v54[2] = llroundf(v94);
          v54[3] = v71;
          v54 += 4;
          --v52;
        }

        while (v52);
      }

      v50 += v14;
      v49 += v15;
      v45 += v16;
      v43 += v17;
      ++v9;
    }

    while (v9 != v8);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_xf444_rgb_l64r(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v12 = a4;
  v45 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v42 = a2[2];
  v43 = v16;
  v19 = *a6;
  v18 = a6[1];
  v40 = v17;
  v41 = v19;
  v39 = v18;
  v44 = a6[2];
  if (v15 == 255)
  {
    v20 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v20)
    {
      v21 = 0;
LABEL_19:
      free(v20);
      return v21;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v20 = &v39.i8[-v22];
    bzero(&v39 - v22, v23);
  }

  v24 = a9;
  v25 = vbslq_s8(vcgtq_s64(vaddq_s64(v42, v40), v43), vsubq_s64(v43, v42), v40);
  v26 = vbslq_s8(vcgtq_s64(vaddq_s64(v44, v39), v41), vsubq_s64(v41, v44), v39);
  v27 = vbslq_s8(vcgtq_s64(v26, v25), v25, v26);
  v28.i64[0] = v27.i64[0];
  v28.i64[1] = -1;
  v29 = vaddq_s64(v42, v28);
  v30 = v29.i64[1] + v27.i64[1];
  if (((*v12 * (v29.i64[1] + v27.i64[1]) + 2 * v29.i64[0]) > *a5 || *(a3 + 8) && (v12[1] * v30 + 4 * v29.i64[0]) > a5[1] || *(a3 + 16) && (2 * v29.i64[0] + v12[2] * v30) > a5[2] || (v31 = vaddq_s64(v44, v28), (*a8 * (v31.i64[1] + v27.i64[1]) + 8 * v31.i64[0]) > *a9)) && (v39 = v27, v40.i64[0] = v12, fig_log_get_emitter(), v32 = FigSignalErrorAtGM(), v24 = a9, v12 = v40.i64[0], v27 = v39, v32))
  {
    v21 = v32;
  }

  else
  {
    *v20 = v15;
    v33 = v42;
    *(v20 + 4) = v43;
    *(v20 + 20) = v27;
    *(v20 + 36) = v33;
    *(v20 + 5) = v41;
    *(v20 + 6) = v27;
    *(v20 + 7) = v44;
    *(v20 + 7) = a3;
    *(v20 + 8) = v12;
    *(v20 + 9) = a5;
    *(v20 + 16) = a7;
    *(v20 + 17) = a8;
    *(v20 + 18) = v24;
    *(v20 + 19) = a1;
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_apply_f(v15, global_queue, v20, vt_Copy_xf444_rgb_l64r_GCD);
    if (!v15)
    {
      return 0;
    }

    v35 = (v20 + 160);
    v36 = v15;
    while (1)
    {
      v37 = *v35++;
      v21 = v37;
      if (v37)
      {
        break;
      }

      if (!--v36)
      {
        v21 = 0;
        break;
      }
    }
  }

  if (v15 == 255)
  {
    goto LABEL_19;
  }

  return v21;
}

unsigned __int8 *vt_Copy_xf444_rgb_l64r_GCD(unsigned __int8 *result, uint64_t a2)
{
  v2 = *result;
  v3 = *(result + 13);
  v4 = v3 * a2 / v2;
  v5 = (v3 + v3 * a2) / v2 - v4;
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = *(result + 24);
    v8 = *(result + 19);
    v9 = *(result + 7);
    v10 = *(result + 8);
    v11 = *v10;
    v12 = v10[1];
    v13 = v10[2];
    v14 = **(result + 17);
    *&v15 = *(v8 + 128);
    *&v16 = *(v8 + 136);
    v17 = *&v16 / *&v15;
    LOWORD(v15) = *(v8 + 140);
    v18 = v15;
    LOWORD(v16) = *(v8 + 142);
    v19 = v16;
    v20 = v17 * *v8;
    v21 = v17 * *(v8 + 8);
    v22 = v17 * *(v8 + 16);
    v23 = v17 * *(v8 + 20);
    v24 = v17 * *(v8 + 28);
    v25 = v4 + *(result + 15);
    v26 = *(result + 28) * a2 / v2 + *(result + 44);
    v27 = *(v8 + 124);
    v28 = *(result + 36);
    if (v27 >= 0x11)
    {
      v29 = 0;
    }

    else
    {
      v29 = 16 - v27;
    }

    v30 = **(result + 16) + v14 * v25 + 8 * *(result + 14);
    v31 = v9[2];
    if (v31)
    {
      v32 = v31 + v26 * v13 + 2 * v28;
    }

    else
    {
      v32 = 0;
    }

    v33 = *v9;
    v34 = *(*(result + 7) + 8);
    v35 = v34 == 0;
    v36 = v34 + v26 * v12 + 2 * v28;
    if (v35)
    {
      v36 = 0;
    }

    v37 = v33 + v26 * v11 + 2 * v28;
    v38 = v29;
    while (v7 < 1)
    {
LABEL_32:
      v37 += v11;
      v36 += v12;
      v32 += v13;
      v30 += v14;
      if (++v6 == v5)
      {
        goto LABEL_33;
      }
    }

    v39 = v7;
    v40 = v37;
    v41 = v30;
    v42 = v32;
    v43 = v36;
    while (1)
    {
      if (v43)
      {
        v44 = (*v43 >> v38) - v19;
        v45 = (v43[1] >> v38) - v19;
        v43 += 2;
        v46 = v21 * v45;
        v47 = (v23 * v45) + (v44 * v22);
        v48 = v24 * v44;
        if (!v42)
        {
          goto LABEL_17;
        }
      }

      else
      {
        v48 = 0.0;
        v47 = 0.0;
        v46 = 0.0;
        if (!v42)
        {
LABEL_17:
          v49 = 0;
          goto LABEL_18;
        }
      }

      v50 = *v42++;
      v49 = v50;
LABEL_18:
      v51 = *v40++;
      v52 = v20 * ((v51 >> v38) - v18);
      v53 = v46 + v52;
      if (!v42)
      {
        v49 = -1;
      }

      v54 = 65535.0;
      if (v53 <= 65535.0)
      {
        v54 = v53;
        if (v53 < 0.0)
        {
          v54 = 0.0;
        }
      }

      v55 = v47 + v52;
      *v41 = llroundf(v54);
      v56 = (v47 + v52) <= 65535.0;
      v57 = 65535.0;
      if (v56)
      {
        v57 = v55;
        if (v55 < 0.0)
        {
          v57 = 0.0;
        }
      }

      v58 = v48 + v52;
      v41[1] = llroundf(v57);
      v56 = (v48 + v52) <= 65535.0;
      v59 = 65535.0;
      if (v56)
      {
        v59 = v58;
        if (v58 < 0.0)
        {
          v59 = 0.0;
        }
      }

      v41[2] = llroundf(v59);
      v41[3] = v49;
      v41 += 4;
      if (!--v39)
      {
        goto LABEL_32;
      }
    }
  }

LABEL_33:
  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_xf444_TRC_Tone_Mat_TRC_b64a(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v12 = a4;
  v45 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v42 = a2[2];
  v43 = v16;
  v19 = *a6;
  v18 = a6[1];
  v40 = v17;
  v41 = v19;
  v39 = v18;
  v44 = a6[2];
  if (v15 == 255)
  {
    v20 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v20)
    {
      v21 = 0;
LABEL_19:
      free(v20);
      return v21;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v20 = &v39.i8[-v22];
    bzero(&v39 - v22, v23);
  }

  v24 = a9;
  v25 = vbslq_s8(vcgtq_s64(vaddq_s64(v42, v40), v43), vsubq_s64(v43, v42), v40);
  v26 = vbslq_s8(vcgtq_s64(vaddq_s64(v44, v39), v41), vsubq_s64(v41, v44), v39);
  v27 = vbslq_s8(vcgtq_s64(v26, v25), v25, v26);
  v28.i64[0] = v27.i64[0];
  v28.i64[1] = -1;
  v29 = vaddq_s64(v42, v28);
  v30 = v29.i64[1] + v27.i64[1];
  if (((*v12 * (v29.i64[1] + v27.i64[1]) + 2 * v29.i64[0]) > *a5 || *(a3 + 8) && (v12[1] * v30 + 4 * v29.i64[0]) > a5[1] || *(a3 + 16) && (2 * v29.i64[0] + v12[2] * v30) > a5[2] || (v31 = vaddq_s64(v44, v28), (*a8 * (v31.i64[1] + v27.i64[1]) + 8 * v31.i64[0]) > *a9)) && (v39 = v27, v40.i64[0] = v12, fig_log_get_emitter(), v32 = FigSignalErrorAtGM(), v24 = a9, v12 = v40.i64[0], v27 = v39, v32))
  {
    v21 = v32;
  }

  else
  {
    *v20 = v15;
    v33 = v42;
    *(v20 + 4) = v43;
    *(v20 + 20) = v27;
    *(v20 + 36) = v33;
    *(v20 + 5) = v41;
    *(v20 + 6) = v27;
    *(v20 + 7) = v44;
    *(v20 + 7) = a3;
    *(v20 + 8) = v12;
    *(v20 + 9) = a5;
    *(v20 + 16) = a7;
    *(v20 + 17) = a8;
    *(v20 + 18) = v24;
    *(v20 + 19) = a1;
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_apply_f(v15, global_queue, v20, vt_Copy_xf444_TRC_Tone_Mat_TRC_b64a_GCD);
    if (!v15)
    {
      return 0;
    }

    v35 = (v20 + 160);
    v36 = v15;
    while (1)
    {
      v37 = *v35++;
      v21 = v37;
      if (v37)
      {
        break;
      }

      if (!--v36)
      {
        v21 = 0;
        break;
      }
    }
  }

  if (v15 == 255)
  {
    goto LABEL_19;
  }

  return v21;
}

unsigned __int8 *vt_Copy_xf444_TRC_Tone_Mat_TRC_b64a_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, float a5)
{
  v5 = *result;
  v6 = *(result + 13);
  v7 = v6 * a2 / v5;
  v8 = (v6 + v6 * a2) / v5 - v7;
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = *(result + 24);
    v11 = *(result + 19);
    v12 = *(result + 7);
    v13 = *(result + 8);
    v14 = *v13;
    v15 = v13[1];
    v16 = v13[2];
    v17 = **(result + 17);
    *&v18 = *(v11 + 128);
    v19 = 8191.0 / *&v18;
    LOWORD(v18) = *(v11 + 140);
    v20 = v18;
    LOWORD(a5) = *(v11 + 142);
    v21 = LODWORD(a5);
    v22 = v19 * *v11;
    v23 = v19 * *(v11 + 8);
    v24 = v19 * *(v11 + 16);
    v25 = v19 * *(v11 + 20);
    v26 = v19 * *(v11 + 28);
    v27 = *(v11 + 72);
    v28 = *(v11 + 76);
    v29 = *(v11 + 80);
    v30 = *(v11 + 84);
    v31 = *(v11 + 88);
    v32 = *(v11 + 92);
    v33 = *(v11 + 96);
    v34 = *(v11 + 100);
    v35 = v11 + 164;
    v36 = v11 + 16548;
    v37 = v11 + 32932;
    v38 = *(v11 + 104);
    v39 = *(v11 + 108);
    v40 = *(v11 + 112);
    v41 = *(v11 + 116);
    v42 = *(v11 + 120);
    v43 = v7 + *(result + 15);
    v44 = *(result + 28) * a2 / v5 + *(result + 44);
    v45 = *(v11 + 124);
    v46 = *(result + 36);
    if (v45 >= 0x11)
    {
      v47 = 0;
    }

    else
    {
      v47 = 16 - v45;
    }

    v48 = **(result + 16) + v17 * v43 + 8 * *(result + 14);
    v49 = v12[2];
    if (v49)
    {
      v50 = v49 + v44 * v16 + 2 * v46;
    }

    else
    {
      v50 = 0;
    }

    v52 = *v12;
    v51 = *(*(result + 7) + 8);
    _ZF = v51 == 0;
    v54 = v51 + v44 * v15 + 2 * v46;
    if (_ZF)
    {
      v54 = 0;
    }

    v55 = v52 + v44 * v14 + 2 * v46;
    v56 = v47;
    do
    {
      if (v10 >= 1)
      {
        v57 = v10;
        v58 = v55;
        v59 = v48;
        v60 = v50;
        v61 = v54;
        do
        {
          if (v61)
          {
            v62 = (*v61 >> v56) - v21;
            v63 = (v61[1] >> v56) - v21;
            v61 += 2;
            v64 = v23 * v63;
            v65 = (v25 * v63) + (v62 * v24);
            v66 = v26 * v62;
          }

          else
          {
            v66 = 0.0;
            v65 = 0.0;
            v64 = 0.0;
          }

          v67 = *v58++;
          v68 = v22 * ((v67 >> v56) - v20);
          v69 = v64 + v68;
          v70 = (v64 + v68) <= 8191.0;
          v71 = 8191.0;
          if (v70)
          {
            v71 = v69;
            if (v69 < 0.0)
            {
              v71 = 0.0;
            }
          }

          v72 = v65 + v68;
          v70 = (v65 + v68) <= 8191.0;
          v73 = 8191.0;
          if (v70)
          {
            v73 = v72;
            if (v72 < 0.0)
            {
              v73 = 0.0;
            }
          }

          v74 = v66 + v68;
          v75 = 8191.0;
          if (v74 <= 8191.0)
          {
            v75 = v74;
            if (v74 < 0.0)
            {
              v75 = 0.0;
            }
          }

          if (v60)
          {
            v77 = *v60++;
            v76 = v77;
          }

          else
          {
            v76 = 0;
          }

          _H31 = *(v35 + 2 * llroundf(fminf(fmaxf(v71, 0.0), 8191.0)));
          __asm { FCVT            S31, H31 }

          _H9 = *(v35 + 2 * llroundf(fminf(fmaxf(v73, 0.0), 8191.0)));
          v84 = llroundf(fminf(fmaxf(v75, 0.0), 8191.0));
          __asm { FCVT            S8, H9 }

          _H9 = *(v35 + 2 * v84);
          __asm { FCVT            S11, H9 }

          v88 = (((v40 * _S8) + (v39 * _S31)) + (v41 * _S11)) + (v42 * fmaxf(_S31, fmaxf(_S8, _S11)));
          v89 = 8191.0;
          if (v88 <= 8191.0)
          {
            v89 = v88;
            if (v88 < 0.0)
            {
              v89 = 0.0;
            }
          }

          _H9 = *(v36 + 2 * llroundf(v89));
          __asm { FCVT            S12, H9 }

          v92 = _S31 * _S12;
          v93 = _S8 * _S12;
          v94 = _S11 * _S12;
          _H11 = *(v37 + 2 * llroundf(fminf(fmaxf(((v28 * v93) + ((_S31 * _S12) * v27)) + ((_S11 * _S12) * v29), 0.0), 8191.0)));
          __asm { FCVT            S12, H11 }

          if (!v60)
          {
            v76 = -1;
          }

          v97 = 65535.0;
          if (_S12 <= 65535.0)
          {
            __asm { FCMP            H11, #0 }

            v97 = _S12;
            if (_NF)
            {
              v97 = 0.0;
            }
          }

          v99 = ((v31 * v93) + (v92 * v30)) + (v94 * v32);
          v100 = (v34 * v93) + (v92 * v33);
          _H10 = *(v37 + 2 * llroundf(fminf(fmaxf(v99, 0.0), 8191.0)));
          __asm { FCVT            S11, H10 }

          _H9 = *(v37 + 2 * llroundf(fminf(fmaxf(v100 + (v94 * v38), 0.0), 8191.0)));
          v104 = 65535.0;
          if (_S11 <= 65535.0)
          {
            __asm { FCMP            H10, #0 }

            v104 = _S11;
            if (_NF)
            {
              v104 = 0.0;
            }
          }

          __asm { FCVT            S11, H9 }

          v107 = 65535.0;
          if (_S11 <= 65535.0)
          {
            __asm { FCMP            H9, #0 }

            v107 = _S11;
            if (_NF)
            {
              v107 = 0.0;
            }
          }

          *v59 = bswap32(v76) >> 16;
          v59[1] = __rev16(llroundf(v97));
          v59[2] = __rev16(llroundf(v104));
          v59[3] = __rev16(llroundf(v107));
          v59 += 4;
          --v57;
        }

        while (v57);
      }

      v55 += v14;
      v54 += v15;
      v50 += v16;
      v48 += v17;
      ++v9;
    }

    while (v9 != v8);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_xf444_TRC_Mat_TRC_b64a(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v12 = a4;
  v45 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v42 = a2[2];
  v43 = v16;
  v19 = *a6;
  v18 = a6[1];
  v40 = v17;
  v41 = v19;
  v39 = v18;
  v44 = a6[2];
  if (v15 == 255)
  {
    v20 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v20)
    {
      v21 = 0;
LABEL_19:
      free(v20);
      return v21;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v20 = &v39.i8[-v22];
    bzero(&v39 - v22, v23);
  }

  v24 = a9;
  v25 = vbslq_s8(vcgtq_s64(vaddq_s64(v42, v40), v43), vsubq_s64(v43, v42), v40);
  v26 = vbslq_s8(vcgtq_s64(vaddq_s64(v44, v39), v41), vsubq_s64(v41, v44), v39);
  v27 = vbslq_s8(vcgtq_s64(v26, v25), v25, v26);
  v28.i64[0] = v27.i64[0];
  v28.i64[1] = -1;
  v29 = vaddq_s64(v42, v28);
  v30 = v29.i64[1] + v27.i64[1];
  if (((*v12 * (v29.i64[1] + v27.i64[1]) + 2 * v29.i64[0]) > *a5 || *(a3 + 8) && (v12[1] * v30 + 4 * v29.i64[0]) > a5[1] || *(a3 + 16) && (2 * v29.i64[0] + v12[2] * v30) > a5[2] || (v31 = vaddq_s64(v44, v28), (*a8 * (v31.i64[1] + v27.i64[1]) + 8 * v31.i64[0]) > *a9)) && (v39 = v27, v40.i64[0] = v12, fig_log_get_emitter(), v32 = FigSignalErrorAtGM(), v24 = a9, v12 = v40.i64[0], v27 = v39, v32))
  {
    v21 = v32;
  }

  else
  {
    *v20 = v15;
    v33 = v42;
    *(v20 + 4) = v43;
    *(v20 + 20) = v27;
    *(v20 + 36) = v33;
    *(v20 + 5) = v41;
    *(v20 + 6) = v27;
    *(v20 + 7) = v44;
    *(v20 + 7) = a3;
    *(v20 + 8) = v12;
    *(v20 + 9) = a5;
    *(v20 + 16) = a7;
    *(v20 + 17) = a8;
    *(v20 + 18) = v24;
    *(v20 + 19) = a1;
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_apply_f(v15, global_queue, v20, vt_Copy_xf444_TRC_Mat_TRC_b64a_GCD);
    if (!v15)
    {
      return 0;
    }

    v35 = (v20 + 160);
    v36 = v15;
    while (1)
    {
      v37 = *v35++;
      v21 = v37;
      if (v37)
      {
        break;
      }

      if (!--v36)
      {
        v21 = 0;
        break;
      }
    }
  }

  if (v15 == 255)
  {
    goto LABEL_19;
  }

  return v21;
}

unsigned __int8 *vt_Copy_xf444_TRC_Mat_TRC_b64a_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, float a5)
{
  v5 = *result;
  v6 = *(result + 13);
  v7 = v6 * a2 / v5;
  v8 = (v6 + v6 * a2) / v5 - v7;
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = *(result + 24);
    v11 = *(result + 19);
    v12 = *(result + 7);
    v13 = *(result + 8);
    v14 = *v13;
    v15 = v13[1];
    v16 = v13[2];
    v17 = **(result + 17);
    *&v18 = *(v11 + 128);
    v19 = 8191.0 / *&v18;
    LOWORD(v18) = *(v11 + 140);
    v20 = v18;
    LOWORD(a5) = *(v11 + 142);
    v21 = LODWORD(a5);
    v22 = v19 * *v11;
    v23 = v19 * *(v11 + 8);
    v24 = v19 * *(v11 + 16);
    v25 = v19 * *(v11 + 20);
    v26 = v19 * *(v11 + 28);
    v27 = *(v11 + 72);
    v28 = *(v11 + 76);
    v29 = *(v11 + 80);
    v30 = *(v11 + 84);
    v31 = *(v11 + 88);
    v32 = *(v11 + 92);
    v33 = *(v11 + 96);
    v34 = *(v11 + 100);
    v35 = *(v11 + 104);
    v36 = v11 + 164;
    v37 = v11 + 16548;
    v38 = v7 + *(result + 15);
    v39 = *(result + 28) * a2 / v5 + *(result + 44);
    v40 = *(v11 + 124);
    v41 = *(result + 36);
    if (v40 >= 0x11)
    {
      v42 = 0;
    }

    else
    {
      v42 = 16 - v40;
    }

    v43 = **(result + 16) + v17 * v38 + 8 * *(result + 14);
    v44 = v12[2];
    if (v44)
    {
      v45 = v44 + v39 * v16 + 2 * v41;
    }

    else
    {
      v45 = 0;
    }

    v47 = *v12;
    v46 = *(*(result + 7) + 8);
    _ZF = v46 == 0;
    v49 = v46 + v39 * v15 + 2 * v41;
    if (_ZF)
    {
      v49 = 0;
    }

    v50 = v47 + v39 * v14 + 2 * v41;
    v51 = v42;
    do
    {
      if (v10 >= 1)
      {
        v52 = v10;
        v53 = v50;
        v54 = v43;
        v55 = v45;
        v56 = v49;
        do
        {
          if (v56)
          {
            v57 = (*v56 >> v51) - v21;
            v58 = (v56[1] >> v51) - v21;
            v56 += 2;
            v59 = v23 * v58;
            v60 = (v25 * v58) + (v57 * v24);
            v61 = v26 * v57;
          }

          else
          {
            v61 = 0.0;
            v60 = 0.0;
            v59 = 0.0;
          }

          v62 = *v53++;
          v63 = v22 * ((v62 >> v51) - v20);
          v64 = v59 + v63;
          v65 = (v59 + v63) <= 8191.0;
          v66 = 8191.0;
          if (v65)
          {
            v66 = v64;
            if (v64 < 0.0)
            {
              v66 = 0.0;
            }
          }

          v67 = v60 + v63;
          v65 = (v60 + v63) <= 8191.0;
          v68 = 8191.0;
          if (v65)
          {
            v68 = v67;
            if (v67 < 0.0)
            {
              v68 = 0.0;
            }
          }

          v69 = v61 + v63;
          v70 = 8191.0;
          if (v69 <= 8191.0)
          {
            v70 = v69;
            if (v69 < 0.0)
            {
              v70 = 0.0;
            }
          }

          if (v55)
          {
            v72 = *v55++;
            v71 = v72;
          }

          else
          {
            v71 = 0;
          }

          _H27 = *(v36 + 2 * llroundf(fminf(fmaxf(v66, 0.0), 8191.0)));
          _H29 = *(v36 + 2 * llroundf(fminf(fmaxf(v68, 0.0), 8191.0)));
          __asm
          {
            FCVT            S28, H27
            FCVT            S29, H29
          }

          _H27 = *(v36 + 2 * llroundf(fminf(fmaxf(v70, 0.0), 8191.0)));
          __asm { FCVT            S30, H27 }

          _H31 = *(v37 + 2 * llroundf(fminf(fmaxf(((v28 * _S29) + (_S28 * v27)) + (_S30 * v29), 0.0), 8191.0)));
          __asm { FCVT            S8, H31 }

          if (!v55)
          {
            v71 = -1;
          }

          v84 = 65535.0;
          if (_S8 <= 65535.0)
          {
            __asm { FCMP            H31, #0 }

            v84 = _S8;
            if (_NF)
            {
              v84 = 0.0;
            }
          }

          _H8 = *(v37 + 2 * llroundf(fminf(fmaxf(((v31 * _S29) + (_S28 * v30)) + (_S30 * v32), 0.0), 8191.0)));
          __asm { FCVT            S9, H8 }

          v88 = 65535.0;
          if (_S9 <= 65535.0)
          {
            __asm { FCMP            H8, #0 }

            v88 = _S9;
            if (_NF)
            {
              v88 = 0.0;
            }
          }

          _H29 = *(v37 + 2 * llroundf(fminf(fmaxf(((v34 * _S29) + (_S28 * v33)) + (_S30 * v35), 0.0), 8191.0)));
          __asm { FCVT            S30, H29 }

          v92 = 65535.0;
          if (_S30 <= 65535.0)
          {
            __asm { FCMP            H29, #0 }

            v92 = _S30;
            if (_NF)
            {
              v92 = 0.0;
            }
          }

          *v54 = bswap32(v71) >> 16;
          v54[1] = __rev16(llroundf(v84));
          v54[2] = __rev16(llroundf(v88));
          v54[3] = __rev16(llroundf(v92));
          v54 += 4;
          --v52;
        }

        while (v52);
      }

      v50 += v14;
      v49 += v15;
      v45 += v16;
      v43 += v17;
      ++v9;
    }

    while (v9 != v8);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}