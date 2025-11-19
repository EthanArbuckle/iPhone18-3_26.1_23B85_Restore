unsigned __int8 *vt_Copy_RGfA_rgb_444vf_GCD(unsigned __int8 *result, uint64_t a2, double a3, float a4, float a5, float a6, float a7, float a8)
{
  v8 = *result;
  v9 = *(result + 13);
  v10 = v9 * a2 / v8;
  v11 = (v9 + v9 * a2) / v8 - v10;
  if (v11 >= 1)
  {
    v12 = 0;
    v13 = *(result + 24);
    v14 = *(result + 19);
    v15 = **(result + 8);
    v16 = *(result + 16);
    v17 = *(result + 17);
    v18 = *v17;
    v19 = v17[1];
    v20 = v17[2];
    v21 = *(v14 + 136);
    LOWORD(a4) = *(v14 + 144);
    v22 = LODWORD(a4);
    LOWORD(a5) = *(v14 + 146);
    v23 = LODWORD(a5);
    LOWORD(a6) = *(v14 + 148);
    v24 = LODWORD(a6);
    LOWORD(a7) = *(v14 + 150);
    v25 = LODWORD(a7);
    LOWORD(a8) = *(v14 + 152);
    v26 = LODWORD(a8);
    v27 = *(v14 + 36);
    v28 = *(v14 + 40);
    v29 = *(v14 + 44);
    v30 = *(v14 + 48);
    v31 = *(v14 + 52);
    v32 = *(v14 + 56);
    v33 = *(v14 + 60);
    v34 = *(v14 + 64);
    v35 = *(v14 + 68);
    v36 = *(result + 14);
    v37 = v10 + *(result + 15);
    v38 = *(result + 28) * a2 / v8 + *(result + 44);
    v39 = *(v14 + 157);
    v40 = *(v14 + 156);
    v41 = *(v14 + 155);
    v42 = *(v14 + 154);
    v43 = v16[2];
    if (v43)
    {
      v44 = (v43 + v20 * v37 + v36);
    }

    else
    {
      v44 = 0;
    }

    v46 = *v16;
    v45 = v16[1];
    v47 = (v45 + v19 * v37 + v36);
    if (!v45)
    {
      v47 = 0;
    }

    v48 = (v46 + v18 * v37 + v36);
    v49 = **(result + 7) + v38 * v15 + 16 * *(result + 36);
    do
    {
      if (v13 >= 1)
      {
        v50 = v13;
        v51 = v49;
        v52 = v44;
        v53 = v47;
        v54 = v48;
        do
        {
          v55 = *(v51 + 4 * v42) * v21;
          v56 = *(v51 + 4 * v41) * v21;
          v57 = *(v51 + 4 * v40) * v21;
          v58 = (((v28 * v56) + (v27 * v55)) + (v29 * v57)) + v22;
          v59 = v24;
          if (v58 <= v24)
          {
            v59 = (((v28 * v56) + (v27 * v55)) + (v29 * v57)) + v22;
            if (v58 < v22)
            {
              v59 = v22;
            }
          }

          v60 = *(v51 + 4 * v39);
          *v54++ = llroundf(v59);
          if (v53)
          {
            v61 = ((v23 + (v55 * v30)) + (v56 * v31)) + (v57 * v32);
            v62 = v26;
            if (v61 <= v26)
            {
              v62 = ((v23 + (v55 * v30)) + (v56 * v31)) + (v57 * v32);
              if (v61 < v25)
              {
                v62 = v25;
              }
            }

            v63 = ((v23 + (v55 * v33)) + (v56 * v34)) + (v57 * v35);
            *v53 = llroundf(v62);
            v64 = v26;
            if (v63 <= v26)
            {
              v64 = v63;
              if (v63 < v25)
              {
                v64 = v25;
              }
            }

            v53[1] = llroundf(v64);
            v53 += 2;
          }

          if (v52)
          {
            *v52++ = llroundf(v60 * 255.0);
          }

          v51 += 16;
          --v50;
        }

        while (v50);
      }

      v49 += v15;
      v48 += v18;
      v47 += v19;
      v44 += v20;
      ++v12;
    }

    while (v12 != v11);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_RGfA_TRC_Tone_Mat_TRC_xf444_neon_fp16(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v13 = a3;
  v48 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v46 = a2[2];
  v47 = v16;
  v18 = *a6;
  v42 = a6[1];
  v43 = v17;
  v44 = a6[2];
  v45 = v18;
  if (v15 == 255)
  {
    v19 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v19)
    {
      v20 = 0;
LABEL_22:
      free(v19);
      return v20;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v19 = &v42.i8[-v21];
    bzero(&v42 - v21, v22);
  }

  v23 = a9;
  v24 = v44;
  v25 = vbslq_s8(vcgtq_s64(vaddq_s64(v46, v43), v47), vsubq_s64(v47, v46), v43);
  v26 = vbslq_s8(vcgtq_s64(vaddq_s64(v44, v42), v45), vsubq_s64(v45, v44), v42);
  v27 = vbslq_s8(vcgtq_s64(v26, v25), v25, v26);
  v28.i64[0] = v27.i64[0];
  v28.i64[1] = -1;
  v29 = vaddq_s64(v46, v28);
  if ((*a4 * (v29.i64[1] + v27.i64[1]) + 16 * v29.i64[0]) <= *a5)
  {
    v33 = vaddq_s64(v44, v28);
    v34 = v33.i64[1] + v27.i64[1];
    if ((*a8 * (v33.i64[1] + v27.i64[1]) + 2 * v33.i64[0]) <= *a9)
    {
      if (*(a7 + 8) && (a8[1] * v34 + 4 * v33.i64[0]) > a9[1])
      {
        v42 = v27;
        v43.i64[0] = a9;
        v30 = a5;
        v31 = a7;
        v32 = v13;
      }

      else
      {
        if (!*(a7 + 16) || (2 * v33.i64[0] + a8[2] * v34) <= a9[2])
        {
          goto LABEL_16;
        }

        v42 = v27;
        v43.i64[0] = a9;
        v30 = a5;
        v31 = a7;
        v32 = v13;
      }
    }

    else
    {
      v42 = v27;
      v43.i64[0] = a9;
      v30 = a5;
      v31 = a7;
      v32 = v13;
    }
  }

  else
  {
    v42 = v27;
    v43.i64[0] = a9;
    v30 = a5;
    v31 = a7;
    v32 = v13;
  }

  fig_log_get_emitter();
  v35 = FigSignalErrorAtGM();
  v13 = v32;
  a7 = v31;
  a5 = v30;
  v24 = v44;
  v23 = v43.i64[0];
  v27 = v42;
  if (v35)
  {
    v20 = v35;
    goto LABEL_21;
  }

LABEL_16:
  *v19 = v15;
  v36 = v46;
  *(v19 + 4) = v47;
  *(v19 + 20) = v27;
  *(v19 + 36) = v36;
  *(v19 + 5) = v45;
  *(v19 + 6) = v27;
  *(v19 + 7) = v24;
  *(v19 + 7) = v13;
  *(v19 + 8) = a4;
  *(v19 + 9) = a5;
  *(v19 + 16) = a7;
  *(v19 + 17) = a8;
  *(v19 + 18) = v23;
  *(v19 + 19) = a1;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v15, global_queue, v19, vt_Copy_RGfA_TRC_Tone_Mat_TRC_xf444_neon_fp16_GCD);
  if (!v15)
  {
    return 0;
  }

  v38 = (v19 + 160);
  v39 = v15;
  while (1)
  {
    v40 = *v38++;
    v20 = v40;
    if (v40)
    {
      break;
    }

    if (!--v39)
    {
      v20 = 0;
      break;
    }
  }

LABEL_21:
  if (v15 == 255)
  {
    goto LABEL_22;
  }

  return v20;
}

__int16 *vt_Copy_RGfA_TRC_Tone_Mat_TRC_xf444_neon_fp16_GCD(unsigned __int8 *a1, uint64_t a2, double a3, double a4, double a5, int16x4_t _D3)
{
  v6 = 0;
  v154 = *(a1 + 36);
  v7 = *a1;
  v8 = *(a1 + 28) * a2 / v7 + *(a1 + 44);
  v9 = *(a1 + 14);
  v10 = *(a1 + 15);
  v12 = *(a1 + 12);
  v11 = *(a1 + 13);
  v13 = *(a1 + 19);
  v15 = *(a1 + 16);
  v14 = *(a1 + 17);
  v16 = **(a1 + 8);
  result = **(a1 + 7);
  v159 = *v14;
  v18 = v14[1];
  v19 = v14[2];
  v20 = v15[1];
  v151 = *v15;
  v21 = v15[2];
  v197 = *(v13 + 154);
  v22 = *(v13 + 144);
  v23 = *(v13 + 132);
  v24 = v11 * a2 / v7;
  v25 = v24 + v10;
  v26 = *(v13 + 146);
  v27 = v20 + v18 * (v24 + v10);
  v28 = v21 + v19 * (v24 + v10);
  v29 = *(v13 + 148);
  v30 = *(v13 + 150);
  v31 = *(v13 + 152);
  _S29 = *(v13 + 36);
  _S13 = *(v13 + 40);
  _S14 = *(v13 + 44);
  v169 = *(v13 + 52);
  v170 = *(v13 + 48);
  _S15 = *(v13 + 60);
  v167 = *(v13 + 64);
  v168 = *(v13 + 56);
  v166 = *(v13 + 68);
  v194 = *(v13 + 72);
  v193 = *(v13 + 76);
  v192 = *(v13 + 80);
  v191 = *(v13 + 84);
  v190 = *(v13 + 88);
  v189 = *(v13 + 92);
  v188 = *(v13 + 96);
  v187 = *(v13 + 100);
  v186 = *(v13 + 104);
  v185 = *(v13 + 108);
  v184 = *(v13 + 112);
  v183 = *(v13 + 116);
  v182 = *(v13 + 120);
  memset(v196, 0, sizeof(v196));
  v36 = (v11 + v11 * a2) / v7;
  do
  {
    v37 = 0;
    v38 = *(&v197 + v6);
    v39 = *(v196 + v6);
    do
    {
      v195 = v39;
      *(&v195 | v37 & 7) = v38 + 4 * v37;
      v39 = v195;
      ++v37;
    }

    while (v37 != 8);
    *(v196 + v6++) = v195;
  }

  while (v6 != 4);
  v40 = v36 - v24;
  if (v36 - v24 >= 1)
  {
    v41 = 0;
    v42 = v22;
    v43 = v26;
    __asm { FCVT            H0, S29 }

    v181 = _H0;
    v49 = v29;
    __asm { FCVT            H0, S13 }

    v180 = _H0;
    v171 = v30;
    v51 = v31;
    __asm { FCVT            H0, S14 }

    v179 = _H0;
    v53 = v13 + 16548;
    _S0 = v170;
    __asm { FCVT            H0, S0 }

    v165 = *&_S0;
    _S0 = v169;
    __asm { FCVT            H0, S0 }

    v164 = *&_S0;
    v56 = 16 - v23;
    v57 = v13 + 32932;
    v58 = v13 + 164;
    _S0 = v168;
    __asm { FCVT            H0, S0 }

    v163 = *&_S0;
    __asm { FCVT            H0, S15 }

    v162 = *&_S0;
    _S0 = v167;
    __asm { FCVT            H0, S0 }

    v161 = *&_S0;
    _S0 = v166;
    __asm { FCVT            H0, S0 }

    v160 = *&_S0;
    _S0 = v185;
    __asm { FCVT            H0, S0 }

    v178 = *&_S0;
    _S0 = v184;
    __asm { FCVT            H0, S0 }

    v177 = *&_S0;
    _S0 = v183;
    __asm { FCVT            H0, S0 }

    v176 = *&_S0;
    _S0 = v182;
    __asm { FCVT            H0, S0 }

    v175 = *&_S0;
    _S0 = v194;
    __asm { FCVT            H0, S0 }

    v174 = *&_S0;
    _S0 = v193;
    __asm { FCVT            H0, S0 }

    v173 = *&_S0;
    _S0 = v192;
    __asm { FCVT            H0, S0 }

    v172 = *&_S0;
    v69 = (v27 + 2 * v9);
    _S0 = v191;
    __asm { FCVT            H0, S0 }

    _S1 = v190;
    __asm { FCVT            H1, S1 }

    _S2 = v189;
    __asm { FCVT            H2, S2 }

    *_D3.i32 = v188;
    __asm { FCVT            H11, S3 }

    *_D3.i16 = v22;
    v77 = vdupq_lane_s16(_D3, 0);
    *_D3.i16 = v26;
    v78 = vdupq_lane_s16(_D3, 0);
    *_D3.i16 = v29;
    v79 = vdupq_lane_s16(_D3, 0);
    if (_CF)
    {
      v56 = 0;
    }

    if (v21)
    {
      v80 = (v28 + 2 * v9);
    }

    else
    {
      v80 = 0;
    }

    *_D3.i16 = v30;
    v81 = vdupq_lane_s16(_D3, 0);
    if (v20)
    {
      v82 = v69;
    }

    else
    {
      v82 = 0;
    }

    *_D3.i16 = v31;
    v83 = vdupq_lane_s16(_D3, 0);
    _S3 = v187;
    __asm { FCVT            H8, S3 }

    v86 = v151 + v159 * v25 + 2 * v9;
    v87 = v56;
    v88 = vdupq_n_s16(v56);
    v89 = &result[8 * v154] + v16 * v8;
    _S3 = v186;
    __asm { FCVT            H10, S3 }

    v92.i64[0] = 0x7000700070007000;
    v92.i64[1] = 0x7000700070007000;
    v93.i64[0] = 0x9000900090009000;
    v93.i64[1] = 0x9000900090009000;
    v157 = _S13;
    v158 = _S29;
    v155 = _S15;
    v156 = _S14;
    do
    {
      if (v12 < 8)
      {
        v123 = 0;
        v122 = v89;
        v97 = v86;
        v96 = v82;
        v95 = v80;
      }

      else
      {
        v94 = 0;
        v95 = v80;
        v96 = v82;
        v97 = v86;
        v98 = v89;
        do
        {
          v99 = v98;
          v199 = vld4q_f32(v98);
          v100 = v98 + 16;
          v200 = vld4q_f32(v100);
          if (v95)
          {
            v101 = vdupq_n_s32(0x477FFF00u);
            v102 = vuzp1q_s16(vcvtq_u32_f32(vmulq_f32(v199.val[3], v101)), vcvtq_u32_f32(vmulq_f32(v200.val[3], v101)));
          }

          else
          {
            v102 = 0uLL;
          }

          v103 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmulq_f16(vcvt_hight_f16_f32(vcvt_f16_f32(v199.val[0]), v200.val[0]), v92), 0), v93));
          v104.i16[0] = *(v58 + 2 * v103.u16[0]);
          v104.i16[1] = *(v58 + 2 * v103.u16[1]);
          v104.i16[2] = *(v58 + 2 * v103.u16[2]);
          v104.i16[3] = *(v58 + 2 * v103.u16[3]);
          v104.i16[4] = *(v58 + 2 * v103.u16[4]);
          v104.i16[5] = *(v58 + 2 * v103.u16[5]);
          v104.i16[6] = *(v58 + 2 * v103.u16[6]);
          v104.i16[7] = *(v58 + 2 * v103.u16[7]);
          v105 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmulq_f16(vcvt_hight_f16_f32(vcvt_f16_f32(v199.val[1]), v200.val[1]), v92), 0), v93));
          v106.i16[0] = *(v58 + 2 * v105.u16[0]);
          v106.i16[1] = *(v58 + 2 * v105.u16[1]);
          v106.i16[2] = *(v58 + 2 * v105.u16[2]);
          v106.i16[3] = *(v58 + 2 * v105.u16[3]);
          v106.i16[4] = *(v58 + 2 * v105.u16[4]);
          v106.i16[5] = *(v58 + 2 * v105.u16[5]);
          v106.i16[6] = *(v58 + 2 * v105.u16[6]);
          v106.i16[7] = *(v58 + 2 * v105.u16[7]);
          v107 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmulq_f16(vcvt_hight_f16_f32(vcvt_f16_f32(v199.val[2]), v200.val[2]), v92), 0), v93));
          v108.i16[0] = *(v58 + 2 * v107.u16[0]);
          v108.i16[1] = *(v58 + 2 * v107.u16[1]);
          v108.i16[2] = *(v58 + 2 * v107.u16[2]);
          v108.i16[3] = *(v58 + 2 * v107.u16[3]);
          v108.i16[4] = *(v58 + 2 * v107.u16[4]);
          v108.i16[5] = *(v58 + 2 * v107.u16[5]);
          v108.i16[6] = *(v58 + 2 * v107.u16[6]);
          v108.i16[7] = *(v58 + 2 * v107.u16[7]);
          v109 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v104, v178), v106, v177), v108, v176), vmaxq_f16(vmaxq_f16(v104, v106), v108), v175), 0), v93));
          v110.i16[0] = *(v53 + 2 * v109.u16[0]);
          v110.i16[1] = *(v53 + 2 * v109.u16[1]);
          v110.i16[2] = *(v53 + 2 * v109.u16[2]);
          v110.i16[3] = *(v53 + 2 * v109.u16[3]);
          v110.i16[4] = *(v53 + 2 * v109.u16[4]);
          v110.i16[5] = *(v53 + 2 * v109.u16[5]);
          v110.i16[6] = *(v53 + 2 * v109.u16[6]);
          v110.i16[7] = *(v53 + 2 * v109.u16[7]);
          v111 = vmulq_f16(v104, v110);
          v112 = vmulq_f16(v106, v110);
          v113 = vmulq_f16(v108, v110);
          v114 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v111, _H0), v112, _H1), v113, _H2);
          v115 = vmulq_n_f16(v113, _H10);
          v116 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v111, v174), v112, v173), v113, v172), 0), v93));
          v117.i16[0] = *(v57 + 2 * v116.u16[0]);
          v117.i16[1] = *(v57 + 2 * v116.u16[1]);
          v117.i16[2] = *(v57 + 2 * v116.u16[2]);
          v117.i16[3] = *(v57 + 2 * v116.u16[3]);
          v117.i16[4] = *(v57 + 2 * v116.u16[4]);
          v117.i16[5] = *(v57 + 2 * v116.u16[5]);
          v117.i16[6] = *(v57 + 2 * v116.u16[6]);
          v117.i16[7] = *(v57 + 2 * v116.u16[7]);
          v118 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v114, 0), v93));
          v119.i16[0] = *(v57 + 2 * v118.u16[0]);
          v119.i16[1] = *(v57 + 2 * v118.u16[1]);
          v119.i16[2] = *(v57 + 2 * v118.u16[2]);
          v119.i16[3] = *(v57 + 2 * v118.u16[3]);
          v119.i16[4] = *(v57 + 2 * v118.u16[4]);
          v119.i16[5] = *(v57 + 2 * v118.u16[5]);
          v119.i16[6] = *(v57 + 2 * v118.u16[6]);
          v119.i16[7] = *(v57 + 2 * v118.u16[7]);
          v120 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(v115, v112, _H8), v111, _H11), 0), v93));
          v121.i16[0] = *(v57 + 2 * v120.u16[0]);
          result = (v57 + 2 * v120.u16[4]);
          v121.i16[1] = *(v57 + 2 * v120.u16[1]);
          v121.i16[2] = *(v57 + 2 * v120.u16[2]);
          v121.i16[3] = *(v57 + 2 * v120.u16[3]);
          v121.i16[4] = *result;
          v121.i16[5] = *(v57 + 2 * v120.u16[5]);
          v121.i16[6] = *(v57 + 2 * v120.u16[6]);
          v121.i16[7] = *(v57 + 2 * v120.u16[7]);
          *v97++ = vshlq_u16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v77, v117, v181), v119, v180), v121, v179), v77), v79)), v88);
          if (v96)
          {
            v198.val[0] = vshlq_u16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v78, v117, v165), v119, v164), v121, v163), v81), v83), v81), v83)), v88);
            v198.val[1] = vshlq_u16(vcvtq_u16_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v78, v117, v162), v119, v161), v121, v160)), v88);
            vst2q_s16(v96, v198);
            v96 += 16;
          }

          if (v95)
          {
            *v95++ = v102;
          }

          v94 += 8;
          v98 = v99 + 32;
        }

        while (v94 < v12 - 7);
        v122 = (v99 + 32);
        v123 = v12 & 0xFFFFFFF8;
        _S13 = v157;
        _S29 = v158;
        _S15 = v155;
        _S14 = v156;
      }

      v124 = v12 - v123;
      if (v12 > v123)
      {
        do
        {
          _D4.i32[0] = *(v122 + 4 * v197);
          _D4.i32[1] = *(v122 + 4 * BYTE1(v197));
          _D5 = vdup_n_s32(0x45FFF800u);
          _D3 = vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_f32(_D4, _D5), 0), _D5)));
          _D3.i16[0] = *(v58 + 2 * _D3.u32[0]);
          __asm { FCVT            S3, H3 }

          _D4.i16[0] = *(v58 + 2 * _D3.u32[1]);
          __asm { FCVT            S4, H4 }

          _D5.i16[0] = *(v58 + 2 * llroundf(fminf(fmaxf(*(v122 + 4 * BYTE2(v197)) * 8191.0, 0.0), 8191.0)));
          __asm { FCVT            S5, H5 }

          v131 = (((v184 * _S4) + (v185 * _S3)) + (v183 * _S5)) + (v182 * fmaxf(_S3, fmaxf(_S4, _S5)));
          v132 = 8191.0;
          if (v131 <= 8191.0)
          {
            v132 = v131;
            if (v131 < 0.0)
            {
              v132 = 0.0;
            }
          }

          _H6 = *(v53 + 2 * llroundf(v132));
          __asm { FCVT            S6, H6 }

          v135 = _S3 * _S6;
          _S4 = _S4 * _S6;
          v137 = _S5 * _S6;
          v138 = ((v193 * _S4) + (v135 * v194)) + (v137 * v192);
          v139 = ((v190 * _S4) + (v135 * v191)) + (v137 * v189);
          _S3 = (v187 * _S4) + (v135 * v188);
          LOWORD(_S4) = *(v57 + 2 * llroundf(fminf(fmaxf(v138, 0.0), 8191.0)));
          __asm { FCVT            S27, H4 }

          LOWORD(_S4) = *(v57 + 2 * llroundf(fminf(fmaxf(v139, 0.0), 8191.0)));
          __asm { FCVT            S28, H4 }

          LOWORD(_S3) = *(v57 + 2 * llroundf(fminf(fmaxf(_S3 + (v137 * v186), 0.0), 8191.0)));
          __asm { FCVT            S16, H3 }

          v144 = (((_S13 * _S28) + (_S29 * _S27)) + (_S14 * _S16)) + v42;
          v145 = v49;
          if (v144 <= v49)
          {
            v145 = (((_S13 * _S28) + (_S29 * _S27)) + (_S14 * _S16)) + v42;
            if (v144 < v42)
            {
              v145 = v22;
            }
          }

          v146 = *(v122 + 4 * HIBYTE(v197));
          v97->i16[0] = llroundf(v145) << v87;
          v97 = (v97 + 2);
          if (v96)
          {
            v147 = ((v43 + (_S27 * v170)) + (_S28 * v169)) + (_S16 * v168);
            v148 = v31;
            if (v147 <= v51)
            {
              v148 = ((v43 + (_S27 * v170)) + (_S28 * v169)) + (_S16 * v168);
              if (v147 < v171)
              {
                v148 = v171;
              }
            }

            v149 = ((v43 + (_S27 * _S15)) + (_S28 * v167)) + (_S16 * v166);
            *v96 = llroundf(v148) << v87;
            v150 = v31;
            if (v149 <= v51)
            {
              v150 = ((v43 + (_S27 * _S15)) + (_S28 * v167)) + (_S16 * v166);
              if (v149 < v171)
              {
                v150 = v171;
              }
            }

            v96[1] = llroundf(v150) << v87;
            v96 += 2;
          }

          if (v95)
          {
            v95->i16[0] = llroundf(v146 * 65535.0);
            v95 = (v95 + 2);
          }

          v122 += 16;
          --v124;
        }

        while (v124);
      }

      v89 += v16;
      v86 += v159;
      v82 = (v82 + v18);
      v80 = (v80 + v19);
      ++v41;
    }

    while (v41 != v40);
  }

  *&a1[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_RGfA_TRC_Tone_Mat_TRC_xf444(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v13 = a3;
  v48 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v46 = a2[2];
  v47 = v16;
  v18 = *a6;
  v42 = a6[1];
  v43 = v17;
  v44 = a6[2];
  v45 = v18;
  if (v15 == 255)
  {
    v19 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v19)
    {
      v20 = 0;
LABEL_22:
      free(v19);
      return v20;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v19 = &v42.i8[-v21];
    bzero(&v42 - v21, v22);
  }

  v23 = a9;
  v24 = v44;
  v25 = vbslq_s8(vcgtq_s64(vaddq_s64(v46, v43), v47), vsubq_s64(v47, v46), v43);
  v26 = vbslq_s8(vcgtq_s64(vaddq_s64(v44, v42), v45), vsubq_s64(v45, v44), v42);
  v27 = vbslq_s8(vcgtq_s64(v26, v25), v25, v26);
  v28.i64[0] = v27.i64[0];
  v28.i64[1] = -1;
  v29 = vaddq_s64(v46, v28);
  if ((*a4 * (v29.i64[1] + v27.i64[1]) + 16 * v29.i64[0]) <= *a5)
  {
    v33 = vaddq_s64(v44, v28);
    v34 = v33.i64[1] + v27.i64[1];
    if ((*a8 * (v33.i64[1] + v27.i64[1]) + 2 * v33.i64[0]) <= *a9)
    {
      if (*(a7 + 8) && (a8[1] * v34 + 4 * v33.i64[0]) > a9[1])
      {
        v42 = v27;
        v43.i64[0] = a9;
        v30 = a5;
        v31 = a7;
        v32 = v13;
      }

      else
      {
        if (!*(a7 + 16) || (2 * v33.i64[0] + a8[2] * v34) <= a9[2])
        {
          goto LABEL_16;
        }

        v42 = v27;
        v43.i64[0] = a9;
        v30 = a5;
        v31 = a7;
        v32 = v13;
      }
    }

    else
    {
      v42 = v27;
      v43.i64[0] = a9;
      v30 = a5;
      v31 = a7;
      v32 = v13;
    }
  }

  else
  {
    v42 = v27;
    v43.i64[0] = a9;
    v30 = a5;
    v31 = a7;
    v32 = v13;
  }

  fig_log_get_emitter();
  v35 = FigSignalErrorAtGM();
  v13 = v32;
  a7 = v31;
  a5 = v30;
  v24 = v44;
  v23 = v43.i64[0];
  v27 = v42;
  if (v35)
  {
    v20 = v35;
    goto LABEL_21;
  }

LABEL_16:
  *v19 = v15;
  v36 = v46;
  *(v19 + 4) = v47;
  *(v19 + 20) = v27;
  *(v19 + 36) = v36;
  *(v19 + 5) = v45;
  *(v19 + 6) = v27;
  *(v19 + 7) = v24;
  *(v19 + 7) = v13;
  *(v19 + 8) = a4;
  *(v19 + 9) = a5;
  *(v19 + 16) = a7;
  *(v19 + 17) = a8;
  *(v19 + 18) = v23;
  *(v19 + 19) = a1;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v15, global_queue, v19, vt_Copy_RGfA_TRC_Tone_Mat_TRC_xf444_GCD);
  if (!v15)
  {
    return 0;
  }

  v38 = (v19 + 160);
  v39 = v15;
  while (1)
  {
    v40 = *v38++;
    v20 = v40;
    if (v40)
    {
      break;
    }

    if (!--v39)
    {
      v20 = 0;
      break;
    }
  }

LABEL_21:
  if (v15 == 255)
  {
    goto LABEL_22;
  }

  return v20;
}

unsigned __int8 *vt_Copy_RGfA_TRC_Tone_Mat_TRC_xf444_GCD(unsigned __int8 *result, uint64_t a2, float a3, float a4, float a5, float a6, float a7)
{
  v7 = *result;
  v8 = *(result + 13);
  v9 = v8 * a2 / v7;
  v10 = (v8 + v8 * a2) / v7 - v9;
  if (v10 >= 1)
  {
    v11 = 0;
    v12 = *(result + 24);
    v13 = *(result + 19);
    v14 = **(result + 8);
    v15 = *(result + 16);
    v16 = *(result + 17);
    v17 = *v16;
    v18 = v16[1];
    v19 = v16[2];
    LOWORD(a3) = *(v13 + 144);
    v20 = LODWORD(a3);
    LOWORD(a4) = *(v13 + 146);
    v21 = LODWORD(a4);
    LOWORD(a5) = *(v13 + 148);
    v22 = LODWORD(a5);
    LOWORD(a6) = *(v13 + 150);
    v23 = LODWORD(a6);
    LOWORD(a7) = *(v13 + 152);
    v24 = LODWORD(a7);
    v25 = *(v13 + 36);
    v26 = *(v13 + 40);
    v27 = *(v13 + 44);
    v102 = *(v13 + 48);
    v101 = *(v13 + 52);
    v100 = *(v13 + 56);
    v99 = *(v13 + 60);
    v28 = *(v13 + 68);
    v98 = *(v13 + 64);
    v29 = *(v13 + 72);
    v30 = *(v13 + 76);
    v31 = *(v13 + 80);
    v32 = *(v13 + 84);
    v33 = *(v13 + 88);
    v34 = *(v13 + 92);
    v35 = *(v13 + 96);
    v36 = *(v13 + 100);
    v37 = *(v13 + 104);
    v38 = *(v13 + 108);
    v39 = v13 + 164;
    v40 = v13 + 16548;
    v41 = v13 + 32932;
    v42 = *(v13 + 112);
    v43 = *(v13 + 116);
    v44 = *(v13 + 120);
    v45 = *(result + 14);
    v46 = v9 + *(result + 15);
    v47 = *(result + 28) * a2 / v7 + *(result + 44);
    v48 = *(v13 + 132);
    if (v48 >= 0x11)
    {
      v49 = 0;
    }

    else
    {
      v49 = 16 - v48;
    }

    v50 = *(v13 + 157);
    v51 = *(v13 + 156);
    v52 = *(v13 + 155);
    v53 = *(v13 + 154);
    v54 = v15[2];
    if (v54)
    {
      v55 = v54 + v19 * v46 + 2 * v45;
    }

    else
    {
      v55 = 0;
    }

    v57 = *v15;
    v56 = v15[1];
    v58 = v56 + v18 * v46 + 2 * v45;
    if (!v56)
    {
      v58 = 0;
    }

    v59 = v57 + v17 * v46 + 2 * v45;
    v60 = **(result + 7) + v47 * v14 + 16 * *(result + 36);
    v61 = v49;
    v62 = vdup_n_s32(0x45FFF800u);
    do
    {
      if (v12 >= 1)
      {
        v63 = v12;
        v64 = v55;
        v65 = v58;
        v66 = v59;
        v67 = v60;
        do
        {
          v68.i32[0] = *(v67 + 4 * v53);
          v68.i32[1] = *(v67 + 4 * v52);
          _D4 = vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_f32(v68, v62), 0), v62)));
          _D4.i16[0] = *(v39 + 2 * _D4.u32[0]);
          __asm { FCVT            S16, H4 }

          _D4.i16[0] = *(v39 + 2 * _D4.u32[1]);
          __asm { FCVT            S17, H4 }

          _D4.i16[0] = *(v39 + 2 * llroundf(fminf(fmaxf(*(v67 + 4 * v51) * 8191.0, 0.0), 8191.0)));
          __asm { FCVT            S18, H4 }

          v77 = fmaxf(_S16, fmaxf(_S17, _S18));
          v78 = (((v42 * _S17) + (v38 * _S16)) + (v43 * _S18)) + (v44 * v77);
          v79 = 8191.0;
          if (v78 <= 8191.0)
          {
            v79 = (((v42 * _S17) + (v38 * _S16)) + (v43 * _S18)) + (v44 * v77);
            if (v78 < 0.0)
            {
              v79 = 0.0;
            }
          }

          _H4 = *(v40 + 2 * llroundf(v79));
          __asm { FCVT            S4, H4 }

          _S16 = _S16 * _S4;
          _S17 = _S17 * _S4;
          v84 = _S18 * _S4;
          v85 = ((v30 * _S17) + (_S16 * v29)) + (v84 * v31);
          v86 = ((v33 * _S17) + (_S16 * v32)) + (v84 * v34);
          _S4 = ((v36 * _S17) + (_S16 * v35)) + (v84 * v37);
          LOWORD(_S16) = *(v41 + 2 * llroundf(fminf(fmaxf(v85, 0.0), 8191.0)));
          __asm { FCVT            S16, H16 }

          LOWORD(_S17) = *(v41 + 2 * llroundf(fminf(fmaxf(v86, 0.0), 8191.0)));
          __asm { FCVT            S17, H17 }

          LOWORD(_S4) = *(v41 + 2 * llroundf(fminf(fmaxf(_S4, 0.0), 8191.0)));
          __asm { FCVT            S18, H4 }

          v91 = (((v26 * _S17) + (v25 * _S16)) + (v27 * _S18)) + v20;
          v92 = v22;
          if (v91 <= v22)
          {
            v92 = (((v26 * _S17) + (v25 * _S16)) + (v27 * _S18)) + v20;
            if (v91 < v20)
            {
              v92 = v20;
            }
          }

          v93 = *(v67 + 4 * v50);
          *v66++ = llroundf(v92) << v61;
          if (v65)
          {
            v94 = ((v21 + (_S16 * v102)) + (_S17 * v101)) + (_S18 * v100);
            v95 = v24;
            if (v94 <= v24)
            {
              v95 = ((v21 + (_S16 * v102)) + (_S17 * v101)) + (_S18 * v100);
              if (v94 < v23)
              {
                v95 = v23;
              }
            }

            v96 = ((v21 + (_S16 * v99)) + (_S17 * v98)) + (_S18 * v28);
            *v65 = llroundf(v95) << v61;
            v97 = v24;
            if (v96 <= v24)
            {
              v97 = v96;
              if (v96 < v23)
              {
                v97 = v23;
              }
            }

            v65[1] = llroundf(v97) << v61;
            v65 += 2;
          }

          if (v64)
          {
            *v64++ = llroundf(v93 * 65535.0);
          }

          v67 += 16;
          --v63;
        }

        while (v63);
      }

      v60 += v14;
      v59 += v17;
      v58 += v18;
      v55 += v19;
      ++v11;
    }

    while (v11 != v10);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_RGfA_TRC_Mat_TRC_xf444_neon_fp16(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v13 = a3;
  v48 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v46 = a2[2];
  v47 = v16;
  v18 = *a6;
  v42 = a6[1];
  v43 = v17;
  v44 = a6[2];
  v45 = v18;
  if (v15 == 255)
  {
    v19 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v19)
    {
      v20 = 0;
LABEL_22:
      free(v19);
      return v20;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v19 = &v42.i8[-v21];
    bzero(&v42 - v21, v22);
  }

  v23 = a9;
  v24 = v44;
  v25 = vbslq_s8(vcgtq_s64(vaddq_s64(v46, v43), v47), vsubq_s64(v47, v46), v43);
  v26 = vbslq_s8(vcgtq_s64(vaddq_s64(v44, v42), v45), vsubq_s64(v45, v44), v42);
  v27 = vbslq_s8(vcgtq_s64(v26, v25), v25, v26);
  v28.i64[0] = v27.i64[0];
  v28.i64[1] = -1;
  v29 = vaddq_s64(v46, v28);
  if ((*a4 * (v29.i64[1] + v27.i64[1]) + 16 * v29.i64[0]) <= *a5)
  {
    v33 = vaddq_s64(v44, v28);
    v34 = v33.i64[1] + v27.i64[1];
    if ((*a8 * (v33.i64[1] + v27.i64[1]) + 2 * v33.i64[0]) <= *a9)
    {
      if (*(a7 + 8) && (a8[1] * v34 + 4 * v33.i64[0]) > a9[1])
      {
        v42 = v27;
        v43.i64[0] = a9;
        v30 = a5;
        v31 = a7;
        v32 = v13;
      }

      else
      {
        if (!*(a7 + 16) || (2 * v33.i64[0] + a8[2] * v34) <= a9[2])
        {
          goto LABEL_16;
        }

        v42 = v27;
        v43.i64[0] = a9;
        v30 = a5;
        v31 = a7;
        v32 = v13;
      }
    }

    else
    {
      v42 = v27;
      v43.i64[0] = a9;
      v30 = a5;
      v31 = a7;
      v32 = v13;
    }
  }

  else
  {
    v42 = v27;
    v43.i64[0] = a9;
    v30 = a5;
    v31 = a7;
    v32 = v13;
  }

  fig_log_get_emitter();
  v35 = FigSignalErrorAtGM();
  v13 = v32;
  a7 = v31;
  a5 = v30;
  v24 = v44;
  v23 = v43.i64[0];
  v27 = v42;
  if (v35)
  {
    v20 = v35;
    goto LABEL_21;
  }

LABEL_16:
  *v19 = v15;
  v36 = v46;
  *(v19 + 4) = v47;
  *(v19 + 20) = v27;
  *(v19 + 36) = v36;
  *(v19 + 5) = v45;
  *(v19 + 6) = v27;
  *(v19 + 7) = v24;
  *(v19 + 7) = v13;
  *(v19 + 8) = a4;
  *(v19 + 9) = a5;
  *(v19 + 16) = a7;
  *(v19 + 17) = a8;
  *(v19 + 18) = v23;
  *(v19 + 19) = a1;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v15, global_queue, v19, vt_Copy_RGfA_TRC_Mat_TRC_xf444_neon_fp16_GCD);
  if (!v15)
  {
    return 0;
  }

  v38 = (v19 + 160);
  v39 = v15;
  while (1)
  {
    v40 = *v38++;
    v20 = v40;
    if (v40)
    {
      break;
    }

    if (!--v39)
    {
      v20 = 0;
      break;
    }
  }

LABEL_21:
  if (v15 == 255)
  {
    goto LABEL_22;
  }

  return v20;
}

__int16 *vt_Copy_RGfA_TRC_Mat_TRC_xf444_neon_fp16_GCD(unsigned __int8 *a1, uint64_t a2, double a3, double a4)
{
  v4 = 0;
  v129 = *(a1 + 36);
  v5 = *a1;
  v6 = *(a1 + 28) * a2 / v5 + *(a1 + 44);
  v7 = *(a1 + 14);
  v8 = *(a1 + 15);
  v10 = *(a1 + 12);
  v9 = *(a1 + 13);
  v11 = *(a1 + 19);
  v13 = *(a1 + 16);
  v12 = *(a1 + 17);
  v14 = **(a1 + 8);
  result = **(a1 + 7);
  v16 = v12[1];
  v130 = *v12;
  v17 = v12[2];
  v19 = *v13;
  v18 = v13[1];
  v20 = v13[2];
  v21 = v9 * a2 / v5;
  v22 = v21 + v8;
  v23 = v14 * v6;
  v24 = v18 + v16 * (v21 + v8);
  v25 = v20 + v17 * (v21 + v8);
  v163 = *(v11 + 154);
  v26 = *(v11 + 144);
  v27 = *(v11 + 132);
  v28 = *(v11 + 146);
  v29 = *(v11 + 148);
  v30 = *(v11 + 150);
  v31 = *(v11 + 152);
  v160 = *(v11 + 36);
  v159 = *(v11 + 40);
  v158 = *(v11 + 44);
  v141 = *(v11 + 52);
  v142 = *(v11 + 48);
  v139 = *(v11 + 60);
  v140 = *(v11 + 56);
  v137 = *(v11 + 68);
  v138 = *(v11 + 64);
  v157 = *(v11 + 72);
  v156 = *(v11 + 76);
  v155 = *(v11 + 80);
  v154 = *(v11 + 84);
  v153 = *(v11 + 88);
  v152 = *(v11 + 92);
  v151 = *(v11 + 96);
  LODWORD(a4) = *(v11 + 100);
  v150 = *&a4;
  v149 = *(v11 + 104);
  memset(v162, 0, sizeof(v162));
  v32 = (v9 + v9 * a2) / v5;
  do
  {
    v33 = 0;
    v34 = *(&v163 + v4);
    _D0 = *(v162 + 8 * v4);
    do
    {
      v161 = _D0;
      *(&v161 | v33 & 7) = v34 + 4 * v33;
      _D0 = v161;
      ++v33;
    }

    while (v33 != 8);
    *(v162 + v4++) = v161;
  }

  while (v4 != 4);
  v36 = v32 - v21;
  if (v32 - v21 >= 1)
  {
    v37 = 0;
    v38 = v26;
    v39 = v28;
    v40 = v29;
    v143 = v30;
    _S0 = v160;
    __asm { FCVT            H0, S0 }

    v148 = *&_S0;
    v46 = v31;
    v47 = v11 + 164;
    v48 = v11 + 16548;
    v49 = 16 - v27;
    _S0 = v159;
    __asm { FCVT            H0, S0 }

    v147 = *&_S0;
    _S0 = v158;
    __asm { FCVT            H0, S0 }

    v146 = *&_S0;
    _S0 = v142;
    __asm { FCVT            H0, S0 }

    v136 = *&_S0;
    _S0 = v141;
    __asm { FCVT            H0, S0 }

    v135 = *&_S0;
    _S0 = v140;
    __asm { FCVT            H0, S0 }

    v134 = *&_S0;
    _S0 = v139;
    __asm { FCVT            H0, S0 }

    v133 = *&_S0;
    _S0 = v138;
    __asm { FCVT            H0, S0 }

    v132 = *&_S0;
    _S0 = v137;
    __asm { FCVT            H0, S0 }

    v131 = *&_S0;
    _S0 = v157;
    __asm { FCVT            H0, S0 }

    v145 = *&_S0;
    _S0 = v156;
    __asm { FCVT            H9, S0 }

    _S0 = v155;
    __asm { FCVT            H10, S0 }

    _S0 = v154;
    __asm { FCVT            H0, S0 }

    v144 = *&_S0;
    _S0 = v153;
    __asm { FCVT            H11, S0 }

    _S0 = v152;
    __asm { FCVT            H12, S0 }

    v68 = (v24 + 2 * v7);
    if (_CF)
    {
      v49 = 0;
    }

    if (v20)
    {
      v69 = (v25 + 2 * v7);
    }

    else
    {
      v69 = 0;
    }

    *_D0.i32 = v151;
    __asm { FCVT            H13, S0 }

    _D0.i32[0] = LODWORD(a4);
    __asm { FCVT            H14, S0 }

    *_D0.i32 = v149;
    __asm { FCVT            H15, S0 }

    *_D0.i16 = v26;
    v73 = vdupq_lane_s16(_D0, 0);
    *_D0.i16 = v28;
    v74 = vdupq_lane_s16(_D0, 0);
    *_D0.i16 = v29;
    v75 = vdupq_lane_s16(_D0, 0);
    if (v18)
    {
      v76 = v68;
    }

    else
    {
      v76 = 0;
    }

    *_D0.i16 = v30;
    v77 = vdupq_lane_s16(_D0, 0);
    *&a4 = v31;
    v78 = v19 + v130 * v22 + 2 * v7;
    v79 = vdupq_lane_s16(*&a4, 0);
    v80 = &result[8 * v129] + v23;
    v81 = v49;
    v82 = vdupq_n_s16(v49);
    v83.i64[0] = 0x7000700070007000;
    v83.i64[1] = 0x7000700070007000;
    v84.i64[0] = 0x9000900090009000;
    v84.i64[1] = 0x9000900090009000;
    do
    {
      if (v10 < 8)
      {
        v107 = 0;
        v106 = v80;
        v88 = v78;
        v87 = v76;
        v86 = v69;
      }

      else
      {
        v85 = 0;
        v86 = v69;
        v87 = v76;
        v88 = v78;
        v89 = v80;
        do
        {
          v90 = v89;
          v165 = vld4q_f32(v89);
          v91 = v89 + 16;
          v166 = vld4q_f32(v91);
          if (v86)
          {
            v92 = vdupq_n_s32(0x477FFF00u);
            v93 = vuzp1q_s16(vcvtq_u32_f32(vmulq_f32(v165.val[3], v92)), vcvtq_u32_f32(vmulq_f32(v166.val[3], v92)));
          }

          else
          {
            v93 = 0uLL;
          }

          v94 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmulq_f16(vcvt_hight_f16_f32(vcvt_f16_f32(v165.val[0]), v166.val[0]), v83), 0), v84));
          v95.i16[0] = *(v47 + 2 * v94.u16[0]);
          v95.i16[1] = *(v47 + 2 * v94.u16[1]);
          v95.i16[2] = *(v47 + 2 * v94.u16[2]);
          v95.i16[3] = *(v47 + 2 * v94.u16[3]);
          v95.i16[4] = *(v47 + 2 * v94.u16[4]);
          v95.i16[5] = *(v47 + 2 * v94.u16[5]);
          v95.i16[6] = *(v47 + 2 * v94.u16[6]);
          v95.i16[7] = *(v47 + 2 * v94.u16[7]);
          v96 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmulq_f16(vcvt_hight_f16_f32(vcvt_f16_f32(v165.val[1]), v166.val[1]), v83), 0), v84));
          v97.i16[0] = *(v47 + 2 * v96.u16[0]);
          v97.i16[1] = *(v47 + 2 * v96.u16[1]);
          v97.i16[2] = *(v47 + 2 * v96.u16[2]);
          v97.i16[3] = *(v47 + 2 * v96.u16[3]);
          v97.i16[4] = *(v47 + 2 * v96.u16[4]);
          v97.i16[5] = *(v47 + 2 * v96.u16[5]);
          v97.i16[6] = *(v47 + 2 * v96.u16[6]);
          v97.i16[7] = *(v47 + 2 * v96.u16[7]);
          v98 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmulq_f16(vcvt_hight_f16_f32(vcvt_f16_f32(v165.val[2]), v166.val[2]), v83), 0), v84));
          v99.i16[0] = *(v47 + 2 * v98.u16[0]);
          v99.i16[1] = *(v47 + 2 * v98.u16[1]);
          v99.i16[2] = *(v47 + 2 * v98.u16[2]);
          v99.i16[3] = *(v47 + 2 * v98.u16[3]);
          v99.i16[4] = *(v47 + 2 * v98.u16[4]);
          v99.i16[5] = *(v47 + 2 * v98.u16[5]);
          v99.i16[6] = *(v47 + 2 * v98.u16[6]);
          v99.i16[7] = *(v47 + 2 * v98.u16[7]);
          v100 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v95, v145), v97, _H9), v99, _H10), 0), v84));
          v101.i16[0] = *(v48 + 2 * v100.u16[0]);
          v101.i16[1] = *(v48 + 2 * v100.u16[1]);
          v101.i16[2] = *(v48 + 2 * v100.u16[2]);
          v101.i16[3] = *(v48 + 2 * v100.u16[3]);
          v101.i16[4] = *(v48 + 2 * v100.u16[4]);
          v101.i16[5] = *(v48 + 2 * v100.u16[5]);
          v101.i16[6] = *(v48 + 2 * v100.u16[6]);
          v101.i16[7] = *(v48 + 2 * v100.u16[7]);
          v102 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v95, v144), v97, _H11), v99, _H12), 0), v84));
          v103.i16[0] = *(v48 + 2 * v102.u16[0]);
          v103.i16[1] = *(v48 + 2 * v102.u16[1]);
          v103.i16[2] = *(v48 + 2 * v102.u16[2]);
          v103.i16[3] = *(v48 + 2 * v102.u16[3]);
          v103.i16[4] = *(v48 + 2 * v102.u16[4]);
          v103.i16[5] = *(v48 + 2 * v102.u16[5]);
          v103.i16[6] = *(v48 + 2 * v102.u16[6]);
          v103.i16[7] = *(v48 + 2 * v102.u16[7]);
          v104 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v99, _H15), v97, _H14), v95, _H13), 0), v84));
          v105.i16[0] = *(v48 + 2 * v104.u16[0]);
          result = (v48 + 2 * v104.u16[3]);
          v105.i16[1] = *(v48 + 2 * v104.u16[1]);
          v105.i16[2] = *(v48 + 2 * v104.u16[2]);
          v105.i16[3] = *result;
          v105.i16[4] = *(v48 + 2 * v104.u16[4]);
          v105.i16[5] = *(v48 + 2 * v104.u16[5]);
          v105.i16[6] = *(v48 + 2 * v104.u16[6]);
          v105.i16[7] = *(v48 + 2 * v104.u16[7]);
          *v88++ = vshlq_u16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v73, v101, v148), v103, v147), v105, v146), v73), v75)), v82);
          if (v87)
          {
            v164.val[0] = vshlq_u16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v74, v101, v136), v103, v135), v105, v134), v77), v79), v77), v79)), v82);
            v164.val[1] = vshlq_u16(vcvtq_u16_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v74, v101, v133), v103, v132), v105, v131)), v82);
            vst2q_s16(v87, v164);
            v87 += 16;
          }

          if (v86)
          {
            *v86++ = v93;
          }

          v85 += 8;
          v89 = v90 + 32;
        }

        while (v85 < v10 - 7);
        v106 = (v90 + 32);
        v107 = v10 & 0xFFFFFFF8;
      }

      v108 = v10 - v107;
      if (v10 > v107)
      {
        do
        {
          result = BYTE2(v163);
          v109.i32[0] = *(v106 + 4 * v163);
          v109.i32[1] = *(v106 + 4 * BYTE1(v163));
          _D7 = vdup_n_s32(0x45FFF800u);
          _D6 = vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_f32(v109, _D7), 0), _D7)));
          _D6.i16[0] = *(v47 + 2 * _D6.u32[0]);
          __asm { FCVT            S6, H6 }

          _D7.i16[0] = *(v47 + 2 * _D6.u32[1]);
          __asm { FCVT            S7, H7 }

          _H4 = *(v47 + 2 * llroundf(fminf(fmaxf(*(v106 + 4 * BYTE2(v163)) * 8191.0, 0.0), 8191.0)));
          __asm { FCVT            S4, H4 }

          v114 = ((v156 * _D7.f32[0]) + (*_D6.i32 * v157)) + (_S4 * v155);
          v115 = ((v153 * _D7.f32[0]) + (*_D6.i32 * v154)) + (_S4 * v152);
          _S4 = ((v150 * _D7.f32[0]) + (*_D6.i32 * v151)) + (_S4 * v149);
          _D6.i16[0] = *(v48 + 2 * llroundf(fminf(fmaxf(v114, 0.0), 8191.0)));
          __asm { FCVT            S22, H6 }

          _D6.i16[0] = *(v48 + 2 * llroundf(fminf(fmaxf(v115, 0.0), 8191.0)));
          __asm { FCVT            S23, H6 }

          LOWORD(_S4) = *(v48 + 2 * llroundf(fminf(fmaxf(_S4, 0.0), 8191.0)));
          __asm { FCVT            S24, H4 }

          v120 = (((v159 * _S23) + (v160 * _S22)) + (v158 * _S24)) + v38;
          v121 = v40;
          if (v120 <= v40)
          {
            v121 = (((v159 * _S23) + (v160 * _S22)) + (v158 * _S24)) + v38;
            if (v120 < v38)
            {
              v121 = v38;
            }
          }

          v122 = *(v106 + 4 * HIBYTE(v163));
          v88->i16[0] = llroundf(v121) << v81;
          v88 = (v88 + 2);
          if (v87)
          {
            v123 = ((v39 + (_S22 * v142)) + (_S23 * v141)) + (_S24 * v140);
            v124 = v31;
            if (v123 <= v46)
            {
              v124 = ((v39 + (_S22 * v142)) + (_S23 * v141)) + (_S24 * v140);
              if (v123 < v143)
              {
                v124 = v30;
              }
            }

            v125 = ((v39 + (_S22 * v139)) + (_S23 * v138)) + (_S24 * v137);
            *v87 = llroundf(v124) << v81;
            v126 = v31;
            if (v125 <= v46)
            {
              v126 = ((v39 + (_S22 * v139)) + (_S23 * v138)) + (_S24 * v137);
              if (v125 < v143)
              {
                v126 = v30;
              }
            }

            v87[1] = llroundf(v126) << v81;
            v87 += 2;
          }

          if (v86)
          {
            v86->i16[0] = llroundf(v122 * 65535.0);
            v86 = (v86 + 2);
          }

          v106 += 16;
          --v108;
        }

        while (v108);
      }

      v80 += v14;
      v78 += v130;
      v76 = (v76 + v16);
      v69 = (v69 + v17);
      ++v37;
    }

    while (v37 != v36);
  }

  *&a1[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_RGfA_TRC_Mat_TRC_xf444(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v13 = a3;
  v48 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v46 = a2[2];
  v47 = v16;
  v18 = *a6;
  v42 = a6[1];
  v43 = v17;
  v44 = a6[2];
  v45 = v18;
  if (v15 == 255)
  {
    v19 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v19)
    {
      v20 = 0;
LABEL_22:
      free(v19);
      return v20;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v19 = &v42.i8[-v21];
    bzero(&v42 - v21, v22);
  }

  v23 = a9;
  v24 = v44;
  v25 = vbslq_s8(vcgtq_s64(vaddq_s64(v46, v43), v47), vsubq_s64(v47, v46), v43);
  v26 = vbslq_s8(vcgtq_s64(vaddq_s64(v44, v42), v45), vsubq_s64(v45, v44), v42);
  v27 = vbslq_s8(vcgtq_s64(v26, v25), v25, v26);
  v28.i64[0] = v27.i64[0];
  v28.i64[1] = -1;
  v29 = vaddq_s64(v46, v28);
  if ((*a4 * (v29.i64[1] + v27.i64[1]) + 16 * v29.i64[0]) <= *a5)
  {
    v33 = vaddq_s64(v44, v28);
    v34 = v33.i64[1] + v27.i64[1];
    if ((*a8 * (v33.i64[1] + v27.i64[1]) + 2 * v33.i64[0]) <= *a9)
    {
      if (*(a7 + 8) && (a8[1] * v34 + 4 * v33.i64[0]) > a9[1])
      {
        v42 = v27;
        v43.i64[0] = a9;
        v30 = a5;
        v31 = a7;
        v32 = v13;
      }

      else
      {
        if (!*(a7 + 16) || (2 * v33.i64[0] + a8[2] * v34) <= a9[2])
        {
          goto LABEL_16;
        }

        v42 = v27;
        v43.i64[0] = a9;
        v30 = a5;
        v31 = a7;
        v32 = v13;
      }
    }

    else
    {
      v42 = v27;
      v43.i64[0] = a9;
      v30 = a5;
      v31 = a7;
      v32 = v13;
    }
  }

  else
  {
    v42 = v27;
    v43.i64[0] = a9;
    v30 = a5;
    v31 = a7;
    v32 = v13;
  }

  fig_log_get_emitter();
  v35 = FigSignalErrorAtGM();
  v13 = v32;
  a7 = v31;
  a5 = v30;
  v24 = v44;
  v23 = v43.i64[0];
  v27 = v42;
  if (v35)
  {
    v20 = v35;
    goto LABEL_21;
  }

LABEL_16:
  *v19 = v15;
  v36 = v46;
  *(v19 + 4) = v47;
  *(v19 + 20) = v27;
  *(v19 + 36) = v36;
  *(v19 + 5) = v45;
  *(v19 + 6) = v27;
  *(v19 + 7) = v24;
  *(v19 + 7) = v13;
  *(v19 + 8) = a4;
  *(v19 + 9) = a5;
  *(v19 + 16) = a7;
  *(v19 + 17) = a8;
  *(v19 + 18) = v23;
  *(v19 + 19) = a1;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v15, global_queue, v19, vt_Copy_RGfA_TRC_Mat_TRC_xf444_GCD);
  if (!v15)
  {
    return 0;
  }

  v38 = (v19 + 160);
  v39 = v15;
  while (1)
  {
    v40 = *v38++;
    v20 = v40;
    if (v40)
    {
      break;
    }

    if (!--v39)
    {
      v20 = 0;
      break;
    }
  }

LABEL_21:
  if (v15 == 255)
  {
    goto LABEL_22;
  }

  return v20;
}

unsigned __int8 *vt_Copy_RGfA_TRC_Mat_TRC_xf444_GCD(unsigned __int8 *result, uint64_t a2, float a3, float a4, float a5, float a6, float a7)
{
  v7 = *result;
  v8 = *(result + 13);
  v9 = v8 * a2 / v7;
  v10 = (v8 + v8 * a2) / v7 - v9;
  if (v10 >= 1)
  {
    v11 = 0;
    v12 = *(result + 24);
    v13 = *(result + 19);
    v14 = **(result + 8);
    v15 = *(result + 16);
    v16 = *(result + 17);
    v17 = *v16;
    v18 = v16[1];
    v19 = v16[2];
    LOWORD(a3) = *(v13 + 144);
    v20 = LODWORD(a3);
    LOWORD(a4) = *(v13 + 146);
    v21 = LODWORD(a4);
    LOWORD(a5) = *(v13 + 148);
    v22 = LODWORD(a5);
    LOWORD(a6) = *(v13 + 150);
    v23 = LODWORD(a6);
    LOWORD(a7) = *(v13 + 152);
    v24 = LODWORD(a7);
    v25 = *(v13 + 36);
    v26 = *(v13 + 40);
    v27 = *(v13 + 44);
    v89 = *(v13 + 48);
    v28 = *(v13 + 56);
    v88 = *(v13 + 52);
    v29 = *(v13 + 60);
    v30 = *(v13 + 64);
    v31 = *(v13 + 68);
    v32 = *(v13 + 72);
    v33 = *(v13 + 76);
    v34 = *(v13 + 80);
    v35 = *(v13 + 84);
    v36 = *(v13 + 88);
    v37 = *(v13 + 92);
    v38 = *(v13 + 96);
    v39 = *(v13 + 100);
    v40 = *(v13 + 104);
    v41 = v13 + 164;
    v42 = v13 + 16548;
    v43 = *(result + 14);
    v44 = v9 + *(result + 15);
    v45 = *(result + 28) * a2 / v7 + *(result + 44);
    v46 = *(v13 + 132);
    if (v46 >= 0x11)
    {
      v47 = 0;
    }

    else
    {
      v47 = 16 - v46;
    }

    v48 = *(v13 + 157);
    v49 = *(v13 + 156);
    v50 = *(v13 + 155);
    v51 = *(v13 + 154);
    v52 = v15[2];
    if (v52)
    {
      v53 = v52 + v19 * v44 + 2 * v43;
    }

    else
    {
      v53 = 0;
    }

    v55 = *v15;
    v54 = v15[1];
    v56 = v54 + v18 * v44 + 2 * v43;
    if (!v54)
    {
      v56 = 0;
    }

    v57 = v55 + v17 * v44 + 2 * v43;
    v58 = **(result + 7) + v45 * v14 + 16 * *(result + 36);
    v59 = v47;
    v60 = vdup_n_s32(0x45FFF800u);
    do
    {
      if (v12 >= 1)
      {
        v61 = v12;
        v62 = v58;
        v63 = v53;
        v64 = v56;
        v65 = v57;
        do
        {
          v66.i32[0] = *(v62 + 4 * v51);
          v66.i32[1] = *(v62 + 4 * v50);
          _D4 = vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_f32(v66, v60), 0), v60)));
          _D4.i16[0] = *(v41 + 2 * _D4.u32[0]);
          __asm { FCVT            S4, H4 }

          _H12 = *(v41 + 2 * _D4.u32[1]);
          __asm { FCVT            S12, H12 }

          _H16 = *(v41 + 2 * llroundf(fminf(fmaxf(*(v62 + 4 * v49) * 8191.0, 0.0), 8191.0)));
          __asm { FCVT            S16, H16 }

          v76 = ((v33 * _S12) + (*_D4.i32 * v32)) + (_S16 * v34);
          v77 = ((v36 * _S12) + (*_D4.i32 * v35)) + (_S16 * v37);
          *_D4.i32 = ((v39 * _S12) + (*_D4.i32 * v38)) + (_S16 * v40);
          LOWORD(_S16) = *(v42 + 2 * llroundf(fminf(fmaxf(v76, 0.0), 8191.0)));
          __asm { FCVT            S13, H16 }

          LOWORD(_S16) = *(v42 + 2 * llroundf(fminf(fmaxf(v77, 0.0), 8191.0)));
          __asm { FCVT            S14, H16 }

          _D4.i16[0] = *(v42 + 2 * llroundf(fminf(fmaxf(*_D4.i32, 0.0), 8191.0)));
          __asm { FCVT            S15, H4 }

          v81 = (((v26 * _S14) + (v25 * _S13)) + (v27 * _S15)) + v20;
          v82 = v22;
          if (v81 <= v22)
          {
            v82 = (((v26 * _S14) + (v25 * _S13)) + (v27 * _S15)) + v20;
            if (v81 < v20)
            {
              v82 = v20;
            }
          }

          v83 = *(v62 + 4 * v48);
          *v65++ = llroundf(v82) << v59;
          if (v64)
          {
            v84 = ((v21 + (_S13 * v89)) + (_S14 * v88)) + (_S15 * v28);
            v85 = v24;
            if (v84 <= v24)
            {
              v85 = ((v21 + (_S13 * v89)) + (_S14 * v88)) + (_S15 * v28);
              if (v84 < v23)
              {
                v85 = v23;
              }
            }

            v86 = ((v21 + (_S13 * v29)) + (_S14 * v30)) + (_S15 * v31);
            *v64 = llroundf(v85) << v59;
            v87 = v24;
            if (v86 <= v24)
            {
              v87 = v86;
              if (v86 < v23)
              {
                v87 = v23;
              }
            }

            v64[1] = llroundf(v87) << v59;
            v64 += 2;
          }

          if (v63)
          {
            *v63++ = llroundf(v83 * 65535.0);
          }

          v62 += 16;
          --v61;
        }

        while (v61);
      }

      v58 += v14;
      v57 += v17;
      v56 += v18;
      v53 += v19;
      ++v11;
    }

    while (v11 != v10);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_RGfA_rgb_xf444_neon_fp16(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v13 = a3;
  v48 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v46 = a2[2];
  v47 = v16;
  v18 = *a6;
  v42 = a6[1];
  v43 = v17;
  v44 = a6[2];
  v45 = v18;
  if (v15 == 255)
  {
    v19 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v19)
    {
      v20 = 0;
LABEL_22:
      free(v19);
      return v20;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v19 = &v42.i8[-v21];
    bzero(&v42 - v21, v22);
  }

  v23 = a9;
  v24 = v44;
  v25 = vbslq_s8(vcgtq_s64(vaddq_s64(v46, v43), v47), vsubq_s64(v47, v46), v43);
  v26 = vbslq_s8(vcgtq_s64(vaddq_s64(v44, v42), v45), vsubq_s64(v45, v44), v42);
  v27 = vbslq_s8(vcgtq_s64(v26, v25), v25, v26);
  v28.i64[0] = v27.i64[0];
  v28.i64[1] = -1;
  v29 = vaddq_s64(v46, v28);
  if ((*a4 * (v29.i64[1] + v27.i64[1]) + 16 * v29.i64[0]) <= *a5)
  {
    v33 = vaddq_s64(v44, v28);
    v34 = v33.i64[1] + v27.i64[1];
    if ((*a8 * (v33.i64[1] + v27.i64[1]) + 2 * v33.i64[0]) <= *a9)
    {
      if (*(a7 + 8) && (a8[1] * v34 + 4 * v33.i64[0]) > a9[1])
      {
        v42 = v27;
        v43.i64[0] = a9;
        v30 = a5;
        v31 = a7;
        v32 = v13;
      }

      else
      {
        if (!*(a7 + 16) || (2 * v33.i64[0] + a8[2] * v34) <= a9[2])
        {
          goto LABEL_16;
        }

        v42 = v27;
        v43.i64[0] = a9;
        v30 = a5;
        v31 = a7;
        v32 = v13;
      }
    }

    else
    {
      v42 = v27;
      v43.i64[0] = a9;
      v30 = a5;
      v31 = a7;
      v32 = v13;
    }
  }

  else
  {
    v42 = v27;
    v43.i64[0] = a9;
    v30 = a5;
    v31 = a7;
    v32 = v13;
  }

  fig_log_get_emitter();
  v35 = FigSignalErrorAtGM();
  v13 = v32;
  a7 = v31;
  a5 = v30;
  v24 = v44;
  v23 = v43.i64[0];
  v27 = v42;
  if (v35)
  {
    v20 = v35;
    goto LABEL_21;
  }

LABEL_16:
  *v19 = v15;
  v36 = v46;
  *(v19 + 4) = v47;
  *(v19 + 20) = v27;
  *(v19 + 36) = v36;
  *(v19 + 5) = v45;
  *(v19 + 6) = v27;
  *(v19 + 7) = v24;
  *(v19 + 7) = v13;
  *(v19 + 8) = a4;
  *(v19 + 9) = a5;
  *(v19 + 16) = a7;
  *(v19 + 17) = a8;
  *(v19 + 18) = v23;
  *(v19 + 19) = a1;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v15, global_queue, v19, vt_Copy_RGfA_rgb_xf444_neon_fp16_GCD);
  if (!v15)
  {
    return 0;
  }

  v38 = (v19 + 160);
  v39 = v15;
  while (1)
  {
    v40 = *v38++;
    v20 = v40;
    if (v40)
    {
      break;
    }

    if (!--v39)
    {
      v20 = 0;
      break;
    }
  }

LABEL_21:
  if (v15 == 255)
  {
    goto LABEL_22;
  }

  return v20;
}

unsigned __int8 *vt_Copy_RGfA_rgb_xf444_neon_fp16_GCD(unsigned __int8 *result, uint64_t a2)
{
  v2 = 0;
  v92 = *(result + 36);
  v3 = *result;
  v4 = *(result + 14);
  v5 = *(result + 12);
  v6 = *(result + 13);
  v7 = *(result + 19);
  v9 = *(result + 16);
  v8 = *(result + 17);
  v10 = v6 * a2 / v3;
  v11 = v10 + *(result + 15);
  v12 = **(result + 8);
  v13 = v6 + v6 * a2;
  v90 = v12 * (*(result + 28) * a2 / v3 + *(result + 44));
  v91 = **(result + 7);
  v14 = *v8;
  v15 = v8[1];
  v16 = v8[2];
  v17 = *v9;
  v18 = v9[1];
  v19 = v9[2];
  v20 = *(v7 + 136);
  v107 = *(v7 + 154);
  v21 = *(v7 + 144);
  v22 = *(v7 + 132);
  v23 = *(v7 + 146);
  v24 = *(v7 + 148);
  v25 = *(v7 + 150);
  v26 = *(v7 + 152);
  _S16 = *(v7 + 36);
  _S6 = *(v7 + 40);
  _S7 = *(v7 + 44);
  v103 = *(v7 + 52);
  v104 = *(v7 + 48);
  v101 = *(v7 + 60);
  v102 = *(v7 + 56);
  v99 = *(v7 + 68);
  v100 = *(v7 + 64);
  memset(v106, 0, sizeof(v106));
  v30 = v13 / v3;
  do
  {
    v31 = 0;
    v32 = *(&v107 + v2);
    _D0 = *(v106 + 8 * v2);
    do
    {
      v105 = _D0;
      *(&v105 | v31 & 7) = v32 + 4 * v31;
      _D0 = v105;
      ++v31;
    }

    while (v31 != 8);
    *(v106 + v2++) = v105;
  }

  while (v2 != 4);
  v34 = v30 - v10;
  if (v30 - v10 >= 1)
  {
    v35 = 0;
    _S17 = v20;
    v37 = v21;
    v38 = v23;
    v39 = v25;
    v40 = v26;
    __asm
    {
      FCVT            H8, S16
      FCVT            H9, S6
      FCVT            H10, S7
    }

    *_D0.i32 = v104;
    __asm { FCVT            H0, S0 }

    v98 = *_D0.i16;
    *_D0.i32 = v103;
    __asm { FCVT            H0, S0 }

    v97 = *_D0.i16;
    *_D0.i32 = v102;
    __asm { FCVT            H0, S0 }

    v96 = *_D0.i16;
    *_D0.i32 = v101;
    __asm { FCVT            H0, S0 }

    v95 = *_D0.i16;
    *_D0.i32 = v100;
    __asm { FCVT            H0, S0 }

    v94 = *_D0.i16;
    *_D0.i32 = v99;
    __asm { FCVT            H15, S0 }

    *_D0.i16 = v21;
    v49 = vdupq_lane_s16(_D0, 0);
    *_D0.i16 = v23;
    v50 = vdupq_lane_s16(_D0, 0);
    *_D0.i16 = v24;
    v51 = vdupq_lane_s16(_D0, 0);
    *_D0.i16 = v25;
    v52 = vdupq_lane_s16(_D0, 0);
    *_D0.i16 = v26;
    v53 = vdupq_lane_s16(_D0, 0);
    v54 = 16 - v22;
    if (v22 >= 0x11)
    {
      v54 = 0;
    }

    if (v19)
    {
      v55 = v19 + v16 * v11 + 2 * v4;
    }

    else
    {
      v55 = 0;
    }

    if (v18)
    {
      v56 = v18 + v15 * v11 + 2 * v4;
    }

    else
    {
      v56 = 0;
    }

    v57 = v17 + v14 * v11 + 2 * v4;
    v58 = v91 + v90 + 16 * v92;
    __asm { FCVT            H4, S17 }

    v60 = v54;
    v61 = vdupq_n_s16(v54);
    do
    {
      if (v5 < 8)
      {
        v78 = 0;
        v77 = v58;
        v65 = v57;
        v64 = v56;
        v63 = v55;
      }

      else
      {
        v62 = 0;
        v63 = v55;
        v64 = v56;
        v65 = v57;
        v66 = v58;
        do
        {
          v67 = v66;
          v109 = vld4q_f32(v66);
          v68 = v66 + 16;
          v110 = vld4q_f32(v68);
          if (v63)
          {
            v69 = vdupq_n_s32(0x477FFF00u);
            v70 = vuzp1q_s16(vcvtq_u32_f32(vmulq_f32(v109.val[3], v69)), vcvtq_u32_f32(vmulq_f32(v110.val[3], v69)));
          }

          else
          {
            v70 = 0uLL;
          }

          v71 = vcvt_hight_f16_f32(vcvt_f16_f32(v109.val[0]), v110.val[0]);
          v72 = vcvt_hight_f16_f32(vcvt_f16_f32(v109.val[2]), v110.val[2]);
          v73 = vmulq_n_f16(v71, _H4);
          v74 = vmulq_n_f16(vcvt_hight_f16_f32(vcvt_f16_f32(v109.val[1]), v110.val[1]), _H4);
          v75 = vmulq_n_f16(v72, _H4);
          *v65++ = vshlq_u16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v49, v73, _H8), v74, _H9), v75, _H10), v49), v51)), v61);
          if (v64)
          {
            v76 = vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v50, v73, v95), v74, v94), v75, _H15);
            v108.val[0] = vshlq_u16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v50, v73, v98), v74, v97), v75, v96), v52), v53), v52), v53)), v61);
            v108.val[1] = vshlq_u16(vcvtq_u16_f16(v76), v61);
            vst2q_s16(v64, v108);
            v64 += 16;
          }

          if (v63)
          {
            *v63++ = v70;
          }

          v62 += 8;
          v66 = v67 + 32;
        }

        while (v62 < v5 - 7);
        v77 = (v67 + 32);
        v78 = v5 & 0xFFFFFFF8;
      }

      v79 = v5 - v78;
      if (v5 > v78)
      {
        do
        {
          v80 = *(v77 + 4 * v107) * _S17;
          v81 = *(v77 + 4 * BYTE1(v107)) * _S17;
          v82 = *(v77 + 4 * BYTE2(v107)) * _S17;
          v83 = (((_S6 * v81) + (_S16 * v80)) + (_S7 * v82)) + v37;
          v84 = v24;
          if (v83 <= v24)
          {
            v84 = (((_S6 * v81) + (_S16 * v80)) + (_S7 * v82)) + v37;
            if (v83 < v37)
            {
              v84 = v21;
            }
          }

          v85 = *(v77 + 4 * HIBYTE(v107));
          v65->i16[0] = llroundf(v84) << v60;
          v65 = (v65 + 2);
          if (v64)
          {
            v86 = ((v38 + (v80 * v104)) + (v81 * v103)) + (v82 * v102);
            v87 = v40;
            if (v86 <= v40)
            {
              v87 = ((v38 + (v80 * v104)) + (v81 * v103)) + (v82 * v102);
              if (v86 < v39)
              {
                v87 = v39;
              }
            }

            v88 = ((v38 + (v80 * v101)) + (v81 * v100)) + (v82 * v99);
            *v64 = llroundf(v87) << v60;
            v89 = v40;
            if (v88 <= v40)
            {
              v89 = ((v38 + (v80 * v101)) + (v81 * v100)) + (v82 * v99);
              if (v88 < v39)
              {
                v89 = v39;
              }
            }

            v64[1] = llroundf(v89) << v60;
            v64 += 2;
          }

          if (v63)
          {
            v63->i16[0] = llroundf(v85 * 65535.0);
            v63 = (v63 + 2);
          }

          v77 += 16;
          --v79;
        }

        while (v79);
      }

      v58 += v12;
      v57 += v14;
      v56 += v15;
      v55 += v16;
      ++v35;
    }

    while (v35 != v34);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_RGfA_rgb_xf444(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v13 = a3;
  v48 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v46 = a2[2];
  v47 = v16;
  v18 = *a6;
  v42 = a6[1];
  v43 = v17;
  v44 = a6[2];
  v45 = v18;
  if (v15 == 255)
  {
    v19 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v19)
    {
      v20 = 0;
LABEL_22:
      free(v19);
      return v20;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v19 = &v42.i8[-v21];
    bzero(&v42 - v21, v22);
  }

  v23 = a9;
  v24 = v44;
  v25 = vbslq_s8(vcgtq_s64(vaddq_s64(v46, v43), v47), vsubq_s64(v47, v46), v43);
  v26 = vbslq_s8(vcgtq_s64(vaddq_s64(v44, v42), v45), vsubq_s64(v45, v44), v42);
  v27 = vbslq_s8(vcgtq_s64(v26, v25), v25, v26);
  v28.i64[0] = v27.i64[0];
  v28.i64[1] = -1;
  v29 = vaddq_s64(v46, v28);
  if ((*a4 * (v29.i64[1] + v27.i64[1]) + 16 * v29.i64[0]) <= *a5)
  {
    v33 = vaddq_s64(v44, v28);
    v34 = v33.i64[1] + v27.i64[1];
    if ((*a8 * (v33.i64[1] + v27.i64[1]) + 2 * v33.i64[0]) <= *a9)
    {
      if (*(a7 + 8) && (a8[1] * v34 + 4 * v33.i64[0]) > a9[1])
      {
        v42 = v27;
        v43.i64[0] = a9;
        v30 = a5;
        v31 = a7;
        v32 = v13;
      }

      else
      {
        if (!*(a7 + 16) || (2 * v33.i64[0] + a8[2] * v34) <= a9[2])
        {
          goto LABEL_16;
        }

        v42 = v27;
        v43.i64[0] = a9;
        v30 = a5;
        v31 = a7;
        v32 = v13;
      }
    }

    else
    {
      v42 = v27;
      v43.i64[0] = a9;
      v30 = a5;
      v31 = a7;
      v32 = v13;
    }
  }

  else
  {
    v42 = v27;
    v43.i64[0] = a9;
    v30 = a5;
    v31 = a7;
    v32 = v13;
  }

  fig_log_get_emitter();
  v35 = FigSignalErrorAtGM();
  v13 = v32;
  a7 = v31;
  a5 = v30;
  v24 = v44;
  v23 = v43.i64[0];
  v27 = v42;
  if (v35)
  {
    v20 = v35;
    goto LABEL_21;
  }

LABEL_16:
  *v19 = v15;
  v36 = v46;
  *(v19 + 4) = v47;
  *(v19 + 20) = v27;
  *(v19 + 36) = v36;
  *(v19 + 5) = v45;
  *(v19 + 6) = v27;
  *(v19 + 7) = v24;
  *(v19 + 7) = v13;
  *(v19 + 8) = a4;
  *(v19 + 9) = a5;
  *(v19 + 16) = a7;
  *(v19 + 17) = a8;
  *(v19 + 18) = v23;
  *(v19 + 19) = a1;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v15, global_queue, v19, vt_Copy_RGfA_rgb_xf444_GCD);
  if (!v15)
  {
    return 0;
  }

  v38 = (v19 + 160);
  v39 = v15;
  while (1)
  {
    v40 = *v38++;
    v20 = v40;
    if (v40)
    {
      break;
    }

    if (!--v39)
    {
      v20 = 0;
      break;
    }
  }

LABEL_21:
  if (v15 == 255)
  {
    goto LABEL_22;
  }

  return v20;
}

unsigned __int8 *vt_Copy_RGfA_rgb_xf444_GCD(unsigned __int8 *result, uint64_t a2, double a3, float a4, float a5, float a6, float a7, float a8)
{
  v8 = *result;
  v9 = *(result + 13);
  v10 = v9 * a2 / v8;
  v11 = (v9 + v9 * a2) / v8 - v10;
  if (v11 >= 1)
  {
    v12 = 0;
    v13 = *(result + 24);
    v14 = *(result + 19);
    v15 = **(result + 8);
    v16 = *(result + 16);
    v17 = *(result + 17);
    v18 = *v17;
    v19 = v17[1];
    v20 = v17[2];
    v21 = *(v14 + 136);
    LOWORD(a4) = *(v14 + 144);
    v22 = LODWORD(a4);
    LOWORD(a5) = *(v14 + 146);
    v23 = LODWORD(a5);
    LOWORD(a6) = *(v14 + 148);
    v24 = LODWORD(a6);
    LOWORD(a7) = *(v14 + 150);
    v25 = LODWORD(a7);
    LOWORD(a8) = *(v14 + 152);
    v26 = LODWORD(a8);
    v27 = *(v14 + 36);
    v28 = *(v14 + 40);
    v29 = *(v14 + 44);
    v30 = *(v14 + 48);
    v31 = *(v14 + 52);
    v32 = *(v14 + 56);
    v33 = *(v14 + 60);
    v34 = *(v14 + 64);
    v35 = *(v14 + 68);
    v36 = *(result + 14);
    v37 = v10 + *(result + 15);
    v38 = *(result + 28) * a2 / v8 + *(result + 44);
    v39 = *(v14 + 132);
    if (v39 >= 0x11)
    {
      v40 = 0;
    }

    else
    {
      v40 = 16 - v39;
    }

    v41 = *(v14 + 157);
    v42 = *(v14 + 156);
    v43 = *(v14 + 155);
    v44 = *(v14 + 154);
    v45 = v16[2];
    if (v45)
    {
      v46 = v45 + v20 * v37 + 2 * v36;
    }

    else
    {
      v46 = 0;
    }

    v48 = *v16;
    v47 = v16[1];
    v49 = v47 + v19 * v37 + 2 * v36;
    if (!v47)
    {
      v49 = 0;
    }

    v50 = v48 + v18 * v37 + 2 * v36;
    v51 = **(result + 7) + v38 * v15 + 16 * *(result + 36);
    v52 = v40;
    do
    {
      if (v13 >= 1)
      {
        v53 = v13;
        v54 = v51;
        v55 = v46;
        v56 = v49;
        v57 = v50;
        do
        {
          v58 = *(v54 + 4 * v44) * v21;
          v59 = *(v54 + 4 * v43) * v21;
          v60 = *(v54 + 4 * v42) * v21;
          v61 = (((v28 * v59) + (v27 * v58)) + (v29 * v60)) + v22;
          v62 = v24;
          if (v61 <= v24)
          {
            v62 = (((v28 * v59) + (v27 * v58)) + (v29 * v60)) + v22;
            if (v61 < v22)
            {
              v62 = v22;
            }
          }

          v63 = *(v54 + 4 * v41);
          *v57++ = llroundf(v62) << v52;
          if (v56)
          {
            v64 = ((v23 + (v58 * v30)) + (v59 * v31)) + (v60 * v32);
            v65 = v26;
            if (v64 <= v26)
            {
              v65 = ((v23 + (v58 * v30)) + (v59 * v31)) + (v60 * v32);
              if (v64 < v25)
              {
                v65 = v25;
              }
            }

            v66 = ((v23 + (v58 * v33)) + (v59 * v34)) + (v60 * v35);
            *v56 = llroundf(v65) << v52;
            v67 = v26;
            if (v66 <= v26)
            {
              v67 = v66;
              if (v66 < v25)
              {
                v67 = v25;
              }
            }

            v56[1] = llroundf(v67) << v52;
            v56 += 2;
          }

          if (v55)
          {
            *v55++ = llroundf(v63 * 65535.0);
          }

          v54 += 16;
          --v53;
        }

        while (v53);
      }

      v51 += v15;
      v50 += v18;
      v49 += v19;
      v46 += v20;
      ++v12;
    }

    while (v12 != v11);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_RGfA_TRC_Tone_Mat_TRC_BGRA_neon_fp16(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v44 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v42 = a2[2];
  v43 = v16;
  v18 = *a6;
  v38 = a6[1];
  v39 = v17;
  v40 = a6[2];
  v41 = v18;
  if (v15 == 255)
  {
    v19 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v19)
    {
      v20 = 0;
LABEL_14:
      free(v19);
      return v20;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v19 = &v38.i8[-v21];
    bzero(&v38 - v21, v22);
  }

  v23 = a9;
  v24 = v40;
  v25 = vbslq_s8(vcgtq_s64(vaddq_s64(v42, v39), v43), vsubq_s64(v43, v42), v39);
  v26 = vbslq_s8(vcgtq_s64(vaddq_s64(v40, v38), v41), vsubq_s64(v41, v40), v38);
  v27 = vbslq_s8(vcgtq_s64(v26, v25), v25, v26);
  v28.i64[0] = v27.i64[0];
  v28.i64[1] = -1;
  v29 = vaddq_s64(v42, v28);
  if (((*a4 * (v29.i64[1] + v27.i64[1]) + 16 * v29.i64[0]) > *a5 || (v30 = vaddq_s64(v40, v28), (*a8 * (v30.i64[1] + v27.i64[1]) + 4 * v30.i64[0]) > *a9)) && (v38 = v27, v39.i64[0] = a9, fig_log_get_emitter(), v31 = FigSignalErrorAtGM(), v24 = v40, v23 = v39.i64[0], v27 = v38, v31))
  {
    v20 = v31;
  }

  else
  {
    *v19 = v15;
    v32 = v42;
    *(v19 + 4) = v43;
    *(v19 + 20) = v27;
    *(v19 + 36) = v32;
    *(v19 + 5) = v41;
    *(v19 + 6) = v27;
    *(v19 + 7) = v24;
    *(v19 + 7) = a3;
    *(v19 + 8) = a4;
    *(v19 + 9) = a5;
    *(v19 + 16) = a7;
    *(v19 + 17) = a8;
    *(v19 + 18) = v23;
    *(v19 + 19) = a1;
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_RGfA_TRC_Tone_Mat_TRC_BGRA_neon_fp16_GCD);
    if (!v15)
    {
      return 0;
    }

    v34 = (v19 + 160);
    v35 = v15;
    while (1)
    {
      v36 = *v34++;
      v20 = v36;
      if (v36)
      {
        break;
      }

      if (!--v35)
      {
        v20 = 0;
        break;
      }
    }
  }

  if (v15 == 255)
  {
    goto LABEL_14;
  }

  return v20;
}

unint64_t vt_Copy_RGfA_TRC_Tone_Mat_TRC_BGRA_neon_fp16_GCD(unsigned __int8 *a1, uint64_t a2)
{
  v2 = 0;
  v3 = 0;
  v4 = *(a1 + 36);
  v5 = *a1;
  v6 = *(a1 + 28) * a2 / v5 + *(a1 + 44);
  v7 = *(a1 + 14);
  v8 = *(a1 + 15);
  v9 = *(a1 + 13);
  v176 = *(a1 + 12);
  v10 = v9 * a2;
  v11 = *(a1 + 19);
  v12 = *(a1 + 7);
  v13 = *(a1 + 16);
  v14 = *(a1 + 17);
  v15 = **(a1 + 8);
  v16 = *v12;
  v17 = *v14;
  v18 = *v13;
  v19 = *(v11 + 154);
  v196[0] = *(v11 + 154);
  v20 = *(v11 + 155);
  v196[1] = *(v11 + 155);
  v21 = *(v11 + 156);
  v22 = v10 / v5;
  v196[2] = *(v11 + 156);
  v178 = v17;
  v179 = v15;
  v23 = v15 * v6;
  v24 = v17 * (v10 / v5 + v8);
  v25 = *(v11 + 157);
  v196[3] = *(v11 + 157);
  v175 = *(v11 + 158);
  v195[0] = *(v11 + 158);
  v174 = *(v11 + 159);
  v195[1] = *(v11 + 159);
  v173 = *(v11 + 160);
  v195[2] = *(v11 + 160);
  v172 = *(v11 + 161);
  v195[3] = *(v11 + 161);
  _S22 = *(v11 + 72);
  _S23 = *(v11 + 76);
  _S24 = *(v11 + 80);
  _S25 = *(v11 + 84);
  _S29 = *(v11 + 88);
  _S31 = *(v11 + 92);
  _S8 = *(v11 + 96);
  _S9 = *(v11 + 100);
  _S10 = *(v11 + 104);
  v188 = *(v11 + 108);
  v187 = *(v11 + 112);
  v186 = *(v11 + 116);
  v185 = *(v11 + 120);
  memset(v194, 0, sizeof(v194));
  v192 = 0u;
  v193 = 0u;
  result = v194;
  v36 = (v9 + v10) / v5;
  do
  {
    v37 = 0;
    v38 = v196[v3];
    v39 = v195[v3];
    v40 = *(v194 + v3);
    do
    {
      v191 = v40;
      *(&v191 | v37 & 7) = v38 + 4 * v37;
      v40 = v191;
      *((&v192 + ((v39 + 4 * v37) & 0xF8)) | (v39 + 4 * v37) & 7) = v2 + v37;
      ++v37;
    }

    while (v37 != 8);
    *(v194 + v3++) = v40;
    v2 += 8;
  }

  while (v3 != 4);
  v41 = v36 - v22;
  v42 = v176;
  if (v36 - v22 >= 1)
  {
    v43 = 0;
    v44 = v11 + 16548;
    result = (v176 - 7);
    _S0 = v188;
    __asm { FCVT            H0, S0 }

    v183 = *&_S0;
    _S0 = v187;
    __asm { FCVT            H12, S0 }

    _S0 = v186;
    __asm { FCVT            H13, S0 }

    v54 = v11 + 32932;
    v55 = v11 + 164;
    _S0 = v185;
    __asm
    {
      FCVT            H14, S0
      FCVT            H15, S22
      FCVT            H0, S23
      FCVT            H1, S24
      FCVT            H2, S25
      FCVT            H3, S29
    }

    v63 = v18 + v24 + 4 * v7;
    __asm
    {
      FCVT            H4, S31
      FCVT            H5, S8
    }

    v180 = _H5;
    v66 = v16 + v23 + 16 * v4;
    __asm { FCVT            H5, S9 }

    v182 = _H5;
    __asm { FCVT            H5, S10 }

    v181 = _H5;
    v160 = v21;
    v161 = v25;
    v158 = v19;
    v159 = v20;
    v69.i64[0] = 0x9000900090009000;
    v69.i64[1] = 0x9000900090009000;
    v70 = &qword_18FECD000;
    v170 = _S23;
    v171 = _S22;
    v168 = _S25;
    v169 = _S24;
    v166 = _S31;
    v167 = _S29;
    v164 = _S9;
    v165 = _S8;
    v163 = _S10;
    v162 = v41;
    v184 = v176 - 7;
    do
    {
      if (v42 < 8)
      {
        v118 = 0;
        v73 = v66;
        v72 = v63;
      }

      else
      {
        v71 = 0;
        v189 = *(&v192 + 8);
        v190 = v192;
        v177 = v66;
        v72 = v63;
        v73 = v66;
        v75 = *(&v193 + 8);
        v74 = v193;
        v76.i64[0] = 0x7000700070007000;
        v76.i64[1] = 0x7000700070007000;
        do
        {
          v77 = v73;
          v198 = vld4q_f32(v77);
          v77 += 16;
          v197 = vld4q_f32(v77);
          v78 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmulq_f16(vcvt_hight_f16_f32(vcvt_f16_f32(v198.val[0]), v197.val[0]), v76), 0), v69));
          v79.i16[0] = *(v55 + 2 * v78.u16[0]);
          v80 = (v55 + 2 * v78.u16[1]);
          v81 = (v55 + 2 * v78.u16[2]);
          v82 = (v55 + 2 * v78.u16[3]);
          v83 = (v55 + 2 * v78.u16[4]);
          v84 = (v55 + 2 * v78.u16[5]);
          v85 = v78.u16[7];
          v86 = (v55 + 2 * v78.u16[6]);
          v87 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmulq_f16(vcvt_hight_f16_f32(vcvt_f16_f32(v198.val[1]), v197.val[1]), v76), 0), v69));
          v88.i16[0] = *(v55 + 2 * v87.u16[0]);
          v89 = (v55 + 2 * v87.u16[4]);
          v79.i16[1] = *v80;
          v90 = (v55 + 2 * v87.u16[5]);
          v91 = (v55 + 2 * v87.u16[6]);
          v79.i16[2] = *v81;
          v88.i16[1] = *(v55 + 2 * v87.u16[1]);
          v79.i16[3] = *v82;
          v92 = (v55 + 2 * v87.u16[7]);
          v88.i16[2] = *(v55 + 2 * v87.u16[2]);
          v88.i16[3] = *(v55 + 2 * v87.u16[3]);
          v93 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmulq_f16(vcvt_hight_f16_f32(vcvt_f16_f32(v198.val[2]), v197.val[2]), v76), 0), v69));
          v79.i16[4] = *v83;
          v94.i16[0] = *(v55 + 2 * v93.u16[0]);
          v88.i16[4] = *v89;
          v79.i16[5] = *v84;
          v88.i16[5] = *v90;
          v79.i16[6] = *v86;
          v88.i16[6] = *v91;
          v94.i16[1] = *(v55 + 2 * v93.u16[1]);
          v79.i16[7] = *(v55 + 2 * v85);
          v94.i16[2] = *(v55 + 2 * v93.u16[2]);
          v94.i16[3] = *(v55 + 2 * v93.u16[3]);
          v88.i16[7] = *v92;
          v94.i16[4] = *(v55 + 2 * v93.u16[4]);
          v94.i16[5] = *(v55 + 2 * v93.u16[5]);
          v94.i16[6] = *(v55 + 2 * v93.u16[6]);
          v94.i16[7] = *(v55 + 2 * v93.u16[7]);
          v95 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v79, v183), v88, _H12), v94, _H13), vmaxq_f16(vmaxq_f16(v79, v88), v94), _H14), 0), v69));
          v96.i16[0] = *(v44 + 2 * v95.u16[0]);
          v96.i16[1] = *(v44 + 2 * v95.u16[1]);
          v96.i16[2] = *(v44 + 2 * v95.u16[2]);
          v96.i16[3] = *(v44 + 2 * v95.u16[3]);
          v96.i16[4] = *(v44 + 2 * v95.u16[4]);
          v96.i16[5] = *(v44 + 2 * v95.u16[5]);
          v96.i16[6] = *(v44 + 2 * v95.u16[6]);
          v96.i16[7] = *(v44 + 2 * v95.u16[7]);
          v97 = vmulq_f16(v79, v96);
          v98 = vmulq_f16(v94, v96);
          v99 = vmulq_f16(v88, v96);
          v100 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v97, _H2), v99, _H3), v98, _H4);
          v101 = vmulq_n_f16(v98, v181);
          v102 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v97, _H15), v99, _H0), v98, _H1), 0), v69));
          v103 = v102.u16[0];
          v104 = v102.u16[1];
          LOWORD(v83) = v102.i16[2];
          LOWORD(v89) = v102.i16[3];
          v105 = v102.u16[4];
          v106 = v102.u16[5];
          LOWORD(v86) = v102.i16[6];
          LOWORD(v84) = v102.i16[7];
          v107 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v100, 0), v69));
          v108 = v107.u16[0];
          LOWORD(v81) = v107.i16[1];
          v109 = v107.u16[2];
          LOWORD(v91) = v107.i16[3];
          LOWORD(v92) = v107.i16[4];
          v110 = v107.u16[5];
          v111 = v107.u16[6];
          v112 = v107.u16[7];
          v113 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(v101, v99, v182), v97, v180), 0), v69));
          v101.i16[0] = *(v54 + 2 * v103);
          v101.i16[1] = *(v54 + 2 * v104);
          v97.i16[0] = *(v54 + 2 * v108);
          v101.i16[2] = *(v54 + 2 * v83);
          v97.i16[1] = *(v54 + 2 * v81);
          v101.i16[3] = *(v54 + 2 * v89);
          v114 = (v54 + 2 * v109);
          result = v184;
          v97.i16[2] = *v114;
          v101.i16[4] = *(v54 + 2 * v105);
          v97.i16[3] = *(v54 + 2 * v91);
          v97.i16[4] = *(v54 + 2 * v92);
          v115.i16[0] = *(v54 + 2 * v113.u16[0]);
          v101.i16[5] = *(v54 + 2 * v106);
          v115.i16[1] = *(v54 + 2 * v113.u16[1]);
          v97.i16[5] = *(v54 + 2 * v110);
          v115.i16[2] = *(v54 + 2 * v113.u16[2]);
          v101.i16[6] = *(v54 + 2 * v86);
          v97.i16[6] = *(v54 + 2 * v111);
          v101.i16[7] = *(v54 + 2 * v84);
          v115.i16[3] = *(v54 + 2 * v113.u16[3]);
          v115.i16[4] = *(v54 + 2 * v113.u16[4]);
          v97.i16[7] = *(v54 + 2 * v112);
          v115.i16[5] = *(v54 + 2 * v113.u16[5]);
          v115.i16[6] = *(v54 + 2 * v113.u16[6]);
          v115.i16[7] = *(v54 + 2 * v113.u16[7]);
          v116 = vdupq_n_s16(0x5BF8u);
          v197.val[0] = vuzp1q_s8(vcvtq_u16_f16(vminq_f16(vmaxq_f16(v101, 0), v116)), vcvtq_u16_f16(vminq_f16(vmaxq_f16(v97, 0), v116)));
          v197.val[1] = vuzp1q_s8(vcvtq_u16_f16(vminq_f16(vmaxq_f16(v115, 0), v116)), vcvtq_u16_f16(vmulq_f16(vcvt_hight_f16_f32(vcvt_f16_f32(v198.val[3]), v197.val[3]), v116)));
          *&v117 = vqtbl2_s8(*v197.val[0].f32, v190);
          *(&v117 + 1) = vqtbl2_s8(*v197.val[0].f32, v189);
          *v115.i8 = vqtbl2_s8(*v197.val[0].f32, v74);
          v115.u64[1] = vqtbl2_s8(*v197.val[0].f32, v75);
          *v72 = v117;
          *(v72 + 16) = v115;
          v72 += 32;
          v73 += 32;
          v71 += 8;
        }

        while (v71 < v184);
        v118 = v176 & 0xFFFFFFF8;
        v41 = v162;
        v42 = v176;
        v66 = v177;
        _S23 = v170;
        _S22 = v171;
        _S25 = v168;
        _S24 = v169;
        _S31 = v166;
        _S29 = v167;
        _S9 = v164;
        _S8 = v165;
        _S10 = v163;
        v70 = &qword_18FECD000;
      }

      v119 = v42 - v118;
      if (v42 > v118)
      {
        v120 = 0;
        v121 = v72 + v172;
        v122 = v72 + v173;
        v123 = v72 + v174;
        v124 = v72 + v175;
        v125 = &v73[v161];
        v126 = &v73[v160];
        v127 = &v73[v159];
        v128 = &v73[v158];
        do
        {
          v129.f32[0] = v128[v120];
          v129.f32[1] = v127[v120];
          v130 = vdup_n_s32(0x45FFF800u);
          _D5 = vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_f32(v129, v130), 0), v130)));
          _D5.i16[0] = *(v55 + 2 * _D5.u32[0]);
          v132 = *(v70 + 842);
          __asm { FCVT            S5, H5 }

          _H16 = *(v55 + 2 * _D5.u32[1]);
          __asm { FCVT            S7, H16 }

          _H16 = *(v55 + 2 * llroundf(fminf(fmaxf(v126[v120] * v132, 0.0), v132)));
          __asm { FCVT            S16, H16 }

          v138 = (((v187 * _S7) + (v188 * _S5)) + (v186 * _S16)) + (v185 * fmaxf(_S5, fmaxf(_S7, _S16)));
          v139 = v132;
          if (v138 <= v132)
          {
            v139 = v138;
            if (v138 < 0.0)
            {
              v139 = 0.0;
            }
          }

          _H17 = *(v44 + 2 * llroundf(v139));
          __asm { FCVT            S18, H17 }

          v142 = _S5 * _S18;
          v143 = _S7 * _S18;
          v144 = _S16 * _S18;
          _S21 = 255.0;
          if (*(v54 + 2 * llroundf(fminf(fmaxf(((_S23 * v143) + (v142 * _S22)) + (v144 * _S24), 0.0), v132))) <= COERCE_SHORT_FLOAT(23544))
          {
            __asm { FCMP            H7, #0 }

            if (_NF)
            {
              _S21 = 0.0;
            }

            else
            {
              __asm { FCVT            S21, H7 }
            }
          }

          v147 = v125[v120];
          v148 = ((_S29 * v143) + (v142 * _S25)) + (v144 * _S31);
          v149 = ((_S9 * v143) + (v142 * _S8)) + (v144 * _S10);
          v150 = *(v54 + 2 * llroundf(fminf(fmaxf(v148, 0.0), v132)));
          v151 = *(v54 + 2 * llroundf(fminf(fmaxf(v149, 0.0), v132)));
          *(v124 + v120) = llroundf(_S21);
          if (v150 <= COERCE_SHORT_FLOAT(23544))
          {
            __asm { FCMP            H17, #0 }

            if (_NF)
            {
              _S17 = 0.0;
            }

            else
            {
              __asm { FCVT            S17, H17 }
            }
          }

          else
          {
            _S17 = 255.0;
          }

          *(v123 + v120) = llroundf(_S17);
          if (v151 <= COERCE_SHORT_FLOAT(23544))
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

          *(v122 + v120) = llroundf(_S6);
          *(v121 + v120) = llroundf(v147 * 255.0);
          v120 += 4;
          --v119;
        }

        while (v119);
      }

      v66 += v179;
      v63 += v178;
      ++v43;
    }

    while (v43 != v41);
  }

  *&a1[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_RGfA_TRC_Tone_Mat_TRC_BGRA(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v44 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v42 = a2[2];
  v43 = v16;
  v18 = *a6;
  v38 = a6[1];
  v39 = v17;
  v40 = a6[2];
  v41 = v18;
  if (v15 == 255)
  {
    v19 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v19)
    {
      v20 = 0;
LABEL_14:
      free(v19);
      return v20;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v19 = &v38.i8[-v21];
    bzero(&v38 - v21, v22);
  }

  v23 = a9;
  v24 = v40;
  v25 = vbslq_s8(vcgtq_s64(vaddq_s64(v42, v39), v43), vsubq_s64(v43, v42), v39);
  v26 = vbslq_s8(vcgtq_s64(vaddq_s64(v40, v38), v41), vsubq_s64(v41, v40), v38);
  v27 = vbslq_s8(vcgtq_s64(v26, v25), v25, v26);
  v28.i64[0] = v27.i64[0];
  v28.i64[1] = -1;
  v29 = vaddq_s64(v42, v28);
  if (((*a4 * (v29.i64[1] + v27.i64[1]) + 16 * v29.i64[0]) > *a5 || (v30 = vaddq_s64(v40, v28), (*a8 * (v30.i64[1] + v27.i64[1]) + 4 * v30.i64[0]) > *a9)) && (v38 = v27, v39.i64[0] = a9, fig_log_get_emitter(), v31 = FigSignalErrorAtGM(), v24 = v40, v23 = v39.i64[0], v27 = v38, v31))
  {
    v20 = v31;
  }

  else
  {
    *v19 = v15;
    v32 = v42;
    *(v19 + 4) = v43;
    *(v19 + 20) = v27;
    *(v19 + 36) = v32;
    *(v19 + 5) = v41;
    *(v19 + 6) = v27;
    *(v19 + 7) = v24;
    *(v19 + 7) = a3;
    *(v19 + 8) = a4;
    *(v19 + 9) = a5;
    *(v19 + 16) = a7;
    *(v19 + 17) = a8;
    *(v19 + 18) = v23;
    *(v19 + 19) = a1;
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_RGfA_TRC_Tone_Mat_TRC_BGRA_GCD);
    if (!v15)
    {
      return 0;
    }

    v34 = (v19 + 160);
    v35 = v15;
    while (1)
    {
      v36 = *v34++;
      v20 = v36;
      if (v36)
      {
        break;
      }

      if (!--v35)
      {
        v20 = 0;
        break;
      }
    }
  }

  if (v15 == 255)
  {
    goto LABEL_14;
  }

  return v20;
}

unsigned __int8 *vt_Copy_RGfA_TRC_Tone_Mat_TRC_BGRA_GCD(unsigned __int8 *result, uint64_t a2)
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
    v9 = **(result + 8);
    v10 = **(result + 17);
    v11 = *(v8 + 72);
    v12 = *(v8 + 76);
    v13 = *(v8 + 80);
    v14 = *(v8 + 84);
    v15 = *(v8 + 88);
    v16 = *(v8 + 92);
    v17 = *(v8 + 96);
    v18 = *(v8 + 100);
    v19 = v8 + 164;
    v20 = v8 + 16548;
    v21 = v8 + 32932;
    v22 = *(v8 + 104);
    v23 = *(v8 + 108);
    v24 = *(v8 + 112);
    v25 = *(v8 + 116);
    v26 = *(v8 + 120);
    v27 = v4 + *(result + 15);
    v28 = *(result + 28) * a2 / v2 + *(result + 44);
    v29 = *(v8 + 161);
    v30 = *(v8 + 160);
    v31 = *(v8 + 159);
    v32 = *(v8 + 158);
    v33 = *(v8 + 157);
    v34 = *(v8 + 156);
    v35 = *(v8 + 155);
    v36 = *(v8 + 154);
    v37 = **(result + 16) + v10 * v27 + 4 * *(result + 14);
    v38 = **(result + 7) + v28 * v9 + 16 * *(result + 36);
    v39 = vdup_n_s32(0x45FFF800u);
    do
    {
      if (v7 >= 1)
      {
        v40 = v7;
        v41 = v38;
        v42 = v37;
        do
        {
          v43.i32[0] = *(v41 + 4 * v36);
          v43.i32[1] = *(v41 + 4 * v35);
          _D26 = vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_f32(v43, v39), 0), v39)));
          _D26.i16[0] = *(v19 + 2 * _D26.u32[0]);
          __asm { FCVT            S26, H26 }

          _H28 = *(v19 + 2 * _D26.u32[1]);
          __asm { FCVT            S27, H28 }

          _H28 = *(v19 + 2 * llroundf(fminf(fmaxf(*(v41 + 4 * v34) * 8191.0, 0.0), 8191.0)));
          __asm { FCVT            S29, H28 }

          v54 = (((v24 * _S27) + (v23 * _S26)) + (v25 * _S29)) + (v26 * fmaxf(_S26, fmaxf(_S27, _S29)));
          v55 = 8191.0;
          if (v54 <= 8191.0)
          {
            v55 = v54;
            if (v54 < 0.0)
            {
              v55 = 0.0;
            }
          }

          _H28 = *(v20 + 2 * llroundf(v55));
          __asm { FCVT            S31, H28 }

          v58 = _S26 * _S31;
          v59 = _S27 * _S31;
          v60 = _S29 * _S31;
          v61 = *(v21 + 2 * llroundf(fminf(fmaxf(((v12 * (_S27 * _S31)) + ((_S26 * _S31) * v11)) + (v60 * v13), 0.0), 8191.0)));
          _S31 = 255.0;
          if (v61 <= COERCE_SHORT_FLOAT(23544))
          {
            __asm { FCMP            H27, #0 }

            if (_NF)
            {
              _S31 = 0.0;
            }

            else
            {
              __asm { FCVT            S31, H27 }
            }
          }

          v64 = *(v41 + 4 * v33);
          v65 = ((v15 * v59) + (v58 * v14)) + (v60 * v16);
          v66 = ((v18 * v59) + (v58 * v17)) + (v60 * v22);
          v67 = *(v21 + 2 * llroundf(fminf(fmaxf(v65, 0.0), 8191.0)));
          v68 = *(v21 + 2 * llroundf(fminf(fmaxf(v66, 0.0), 8191.0)));
          *(v42 + v32) = llroundf(_S31);
          if (v67 <= COERCE_SHORT_FLOAT(23544))
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

          *(v42 + v31) = llroundf(_S29);
          if (v68 <= COERCE_SHORT_FLOAT(23544))
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

          v41 += 16;
          *(v42 + v30) = llroundf(_S28);
          *(v42 + v29) = llroundf(v64 * 255.0);
          v42 += 4;
          --v40;
        }

        while (v40);
      }

      v38 += v9;
      v37 += v10;
      ++v6;
    }

    while (v6 != v5);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_RGfA_TRC_Mat_TRC_BGRA_neon_fp16(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v44 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v42 = a2[2];
  v43 = v16;
  v18 = *a6;
  v38 = a6[1];
  v39 = v17;
  v40 = a6[2];
  v41 = v18;
  if (v15 == 255)
  {
    v19 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v19)
    {
      v20 = 0;
LABEL_14:
      free(v19);
      return v20;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v19 = &v38.i8[-v21];
    bzero(&v38 - v21, v22);
  }

  v23 = a9;
  v24 = v40;
  v25 = vbslq_s8(vcgtq_s64(vaddq_s64(v42, v39), v43), vsubq_s64(v43, v42), v39);
  v26 = vbslq_s8(vcgtq_s64(vaddq_s64(v40, v38), v41), vsubq_s64(v41, v40), v38);
  v27 = vbslq_s8(vcgtq_s64(v26, v25), v25, v26);
  v28.i64[0] = v27.i64[0];
  v28.i64[1] = -1;
  v29 = vaddq_s64(v42, v28);
  if (((*a4 * (v29.i64[1] + v27.i64[1]) + 16 * v29.i64[0]) > *a5 || (v30 = vaddq_s64(v40, v28), (*a8 * (v30.i64[1] + v27.i64[1]) + 4 * v30.i64[0]) > *a9)) && (v38 = v27, v39.i64[0] = a9, fig_log_get_emitter(), v31 = FigSignalErrorAtGM(), v24 = v40, v23 = v39.i64[0], v27 = v38, v31))
  {
    v20 = v31;
  }

  else
  {
    *v19 = v15;
    v32 = v42;
    *(v19 + 4) = v43;
    *(v19 + 20) = v27;
    *(v19 + 36) = v32;
    *(v19 + 5) = v41;
    *(v19 + 6) = v27;
    *(v19 + 7) = v24;
    *(v19 + 7) = a3;
    *(v19 + 8) = a4;
    *(v19 + 9) = a5;
    *(v19 + 16) = a7;
    *(v19 + 17) = a8;
    *(v19 + 18) = v23;
    *(v19 + 19) = a1;
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_RGfA_TRC_Mat_TRC_BGRA_neon_fp16_GCD);
    if (!v15)
    {
      return 0;
    }

    v34 = (v19 + 160);
    v35 = v15;
    while (1)
    {
      v36 = *v34++;
      v20 = v36;
      if (v36)
      {
        break;
      }

      if (!--v35)
      {
        v20 = 0;
        break;
      }
    }
  }

  if (v15 == 255)
  {
    goto LABEL_14;
  }

  return v20;
}

unsigned __int8 *vt_Copy_RGfA_TRC_Mat_TRC_BGRA_neon_fp16_GCD(unsigned __int8 *result, uint64_t a2)
{
  v2 = 0;
  v3 = 0;
  v4 = *(result + 36);
  v5 = *result;
  v6 = *(result + 28) * a2 / v5 + *(result + 44);
  v7 = *(result + 14);
  v8 = *(result + 15);
  v9 = *(result + 12);
  v10 = *(result + 13);
  v11 = v10 * a2;
  v12 = *(result + 19);
  v13 = **(result + 8);
  v14 = **(result + 7);
  v15 = **(result + 17);
  v16 = **(result + 16);
  v17 = *(v12 + 154);
  v18 = v11 / v5;
  v154[0] = *(v12 + 154);
  v19 = v10 + v11;
  v20 = v13 * v6;
  v21 = v15 * (v11 / v5 + v8);
  v22 = *(v12 + 155);
  v154[1] = *(v12 + 155);
  v23 = *(v12 + 156);
  v154[2] = *(v12 + 156);
  v24 = *(v12 + 157);
  v154[3] = *(v12 + 157);
  v147 = *(v12 + 158);
  v153[0] = *(v12 + 158);
  v146 = *(v12 + 159);
  v153[1] = *(v12 + 159);
  v145 = *(v12 + 160);
  v153[2] = *(v12 + 160);
  v144 = *(v12 + 161);
  v153[3] = *(v12 + 161);
  _S25 = *(v12 + 72);
  _S26 = *(v12 + 76);
  _S27 = *(v12 + 80);
  _S28 = *(v12 + 84);
  _S29 = *(v12 + 88);
  _S30 = *(v12 + 92);
  _S31 = *(v12 + 96);
  v148 = *(v12 + 100);
  _S16 = *(v12 + 104);
  memset(v152, 0, sizeof(v152));
  v150 = 0u;
  v151 = 0u;
  v33 = v19 / v5;
  do
  {
    v34 = 0;
    v35 = v154[v3];
    v36 = v153[v3];
    v37 = *(v152 + v3);
    do
    {
      v149 = v37;
      *(&v149 | v34 & 7) = v35 + 4 * v34;
      v37 = v149;
      *((&v150 + ((v36 + 4 * v34) & 0xF8)) | (v36 + 4 * v34) & 7) = v2 + v34;
      ++v34;
    }

    while (v34 != 8);
    *(v152 + v3++) = v37;
    v2 += 8;
  }

  while (v3 != 4);
  v38 = v33 - v18;
  if (v33 - v18 >= 1)
  {
    v39 = 0;
    v40 = v12 + 164;
    v41 = v12 + 16548;
    __asm
    {
      FCVT            H8, S25
      FCVT            H9, S26
      FCVT            H10, S27
      FCVT            H11, S28
      FCVT            H12, S29
      FCVT            H13, S30
      FCVT            H14, S31
    }

    v53 = v16 + v21 + 4 * v7;
    _S0 = v148;
    __asm
    {
      FCVT            H15, S0
      FCVT            H0, S16
    }

    v135 = v23;
    v136 = v24;
    v134 = v22;
    v133 = v17;
    v57 = v14 + v20 + 16 * v4;
    v58.i64[0] = 0x7000700070007000;
    v58.i64[1] = 0x7000700070007000;
    v59.i64[0] = 0x9000900090009000;
    v59.i64[1] = 0x9000900090009000;
    v60 = vdupq_n_s16(0x5BF8u);
    v142 = _S26;
    v143 = _S25;
    v140 = _S28;
    v141 = _S27;
    v138 = _S30;
    v139 = _S29;
    v137 = _S31;
    do
    {
      if (v9 < 8)
      {
        v104 = 0;
        v65 = v53;
        v64 = v57;
      }

      else
      {
        v61 = 0;
        v63 = *(&v150 + 8);
        v62 = v150;
        v64 = v57;
        v65 = v53;
        v67 = *(&v151 + 8);
        v66 = v151;
        do
        {
          v68 = v64;
          v64 += 32;
          v156 = vld4q_f32(v68);
          v68 += 16;
          v155 = vld4q_f32(v68);
          v69 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmulq_f16(vcvt_hight_f16_f32(vcvt_f16_f32(v156.val[0]), v155.val[0]), v58), 0), v59));
          v70.i16[0] = *(v40 + 2 * v69.u16[0]);
          v71 = (v40 + 2 * v69.u16[1]);
          v72 = (v40 + 2 * v69.u16[2]);
          v73 = (v40 + 2 * v69.u16[3]);
          v74 = (v40 + 2 * v69.u16[4]);
          v75 = (v40 + 2 * v69.u16[5]);
          v76 = v69.u16[7];
          v77 = (v40 + 2 * v69.u16[6]);
          v78 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmulq_f16(vcvt_hight_f16_f32(vcvt_f16_f32(v156.val[1]), v155.val[1]), v58), 0), v59));
          v79.i16[0] = *(v40 + 2 * v78.u16[0]);
          v80 = (v40 + 2 * v78.u16[3]);
          v81 = (v40 + 2 * v78.u16[4]);
          v70.i16[1] = *v71;
          v82 = (v40 + 2 * v78.u16[5]);
          v83 = (v40 + 2 * v78.u16[6]);
          v70.i16[2] = *v72;
          v79.i16[1] = *(v40 + 2 * v78.u16[1]);
          v79.i16[2] = *(v40 + 2 * v78.u16[2]);
          v84 = (v40 + 2 * v78.u16[7]);
          v85 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmulq_f16(vcvt_hight_f16_f32(vcvt_f16_f32(v156.val[2]), v155.val[2]), v58), 0), v59));
          v70.i16[3] = *v73;
          v86.i16[0] = *(v40 + 2 * v85.u16[0]);
          v79.i16[3] = *v80;
          v70.i16[4] = *v74;
          v79.i16[4] = *v81;
          v70.i16[5] = *v75;
          v79.i16[5] = *v82;
          v70.i16[6] = *v77;
          v86.i16[1] = *(v40 + 2 * v85.u16[1]);
          v86.i16[2] = *(v40 + 2 * v85.u16[2]);
          v79.i16[6] = *v83;
          v86.i16[3] = *(v40 + 2 * v85.u16[3]);
          v86.i16[4] = *(v40 + 2 * v85.u16[4]);
          v70.i16[7] = *(v40 + 2 * v76);
          v86.i16[5] = *(v40 + 2 * v85.u16[5]);
          v86.i16[6] = *(v40 + 2 * v85.u16[6]);
          v79.i16[7] = *v84;
          v86.i16[7] = *(v40 + 2 * v85.u16[7]);
          v87 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v70, _H8), v79, _H9), v86, _H10);
          v88 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v70, _H11), v79, _H12), v86, _H13);
          v89 = vmlaq_n_f16(vmulq_n_f16(v86, _H0), v79, _H15);
          v90 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v87, 0), v59));
          v79.i16[0] = *(v41 + 2 * v90.u16[0]);
          v91 = vmlaq_n_f16(v89, v70, _H14);
          v92 = (v41 + 2 * v90.u16[1]);
          v93 = (v41 + 2 * v90.u16[2]);
          v94 = (v41 + 2 * v90.u16[3]);
          v95 = (v41 + 2 * v90.u16[4]);
          v96 = v90.u16[6];
          v97 = (v41 + 2 * v90.u16[5]);
          LOWORD(v77) = v90.i16[7];
          v98 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v88, 0), v59));
          v70.i16[0] = *(v41 + 2 * v98.u16[0]);
          v99 = (v41 + 2 * v98.u16[3]);
          v79.i16[1] = *v92;
          v100 = (v41 + 2 * v98.u16[4]);
          v101 = (v41 + 2 * v98.u16[5]);
          v79.i16[2] = *v93;
          v70.i16[1] = *(v41 + 2 * v98.u16[1]);
          v70.i16[2] = *(v41 + 2 * v98.u16[2]);
          v102 = (v41 + 2 * v98.u16[6]);
          LOWORD(v80) = v98.i16[7];
          v79.i16[3] = *v94;
          v103 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v91, 0), v59));
          v70.i16[3] = *v99;
          v91.i16[0] = *(v41 + 2 * v103.u16[0]);
          v79.i16[4] = *v95;
          v70.i16[4] = *v100;
          v79.i16[5] = *v97;
          v91.i16[1] = *(v41 + 2 * v103.u16[1]);
          v70.i16[5] = *v101;
          v79.i16[6] = *(v41 + 2 * v96);
          v91.i16[2] = *(v41 + 2 * v103.u16[2]);
          v70.i16[6] = *v102;
          v79.i16[7] = *(v41 + 2 * v77);
          v91.i16[3] = *(v41 + 2 * v103.u16[3]);
          v91.i16[4] = *(v41 + 2 * v103.u16[4]);
          v70.i16[7] = *(v41 + 2 * v80);
          v91.i16[5] = *(v41 + 2 * v103.u16[5]);
          v91.i16[6] = *(v41 + 2 * v103.u16[6]);
          v91.i16[7] = *(v41 + 2 * v103.u16[7]);
          v155.val[1] = vuzp1q_s8(vcvtq_u16_f16(vminq_f16(vmaxq_f16(v79, 0), v60)), vcvtq_u16_f16(vminq_f16(vmaxq_f16(v70, 0), v60)));
          v155.val[2] = vuzp1q_s8(vcvtq_u16_f16(vminq_f16(vmaxq_f16(v91, 0), v60)), vcvtq_u16_f16(vmulq_f16(vcvt_hight_f16_f32(vcvt_f16_f32(v156.val[3]), v155.val[3]), v60)));
          *v155.val[0].f32 = vqtbl2_s8(*v155.val[1].f32, v62);
          *&v155.val[0].u32[2] = vqtbl2_s8(*v155.val[1].f32, v63);
          *v155.val[3].f32 = vqtbl2_s8(*v155.val[1].f32, v66);
          *&v155.val[3].u32[2] = vqtbl2_s8(*v155.val[1].f32, v67);
          *v65 = v155.val[0];
          v65[1] = v155.val[3];
          v65 += 2;
          v61 += 8;
        }

        while (v61 < v9 - 7);
        v104 = v9 & 0xFFFFFFF8;
        _S26 = v142;
        _S25 = v143;
        _S28 = v140;
        _S27 = v141;
        _S30 = v138;
        _S29 = v139;
        _S31 = v137;
      }

      v105 = v9 - v104;
      if (v9 > v104)
      {
        v106 = 0;
        v107 = &v64[v136];
        v108 = &v64[v135];
        v109 = &v64[v134];
        v110 = &v64[v133];
        v111 = v65 + v144;
        v112 = v65 + v145;
        v113 = v65 + v146;
        v114 = v65 + v147;
        do
        {
          v115.f32[0] = v110[v106];
          v115.f32[1] = v109[v106];
          v116 = vdup_n_s32(0x45FFF800u);
          _D1 = vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_f32(v115, v116), 0), v116)));
          _D1.i16[0] = *(v40 + 2 * _D1.u32[0]);
          _H3 = *(v40 + 2 * _D1.u32[1]);
          __asm
          {
            FCVT            S5, H1
            FCVT            S17, H3
          }

          _D1.i16[0] = *(v40 + 2 * llroundf(fminf(fmaxf(v108[v106] * 8191.0, 0.0), 8191.0)));
          __asm { FCVT            S22, H1 }

          _S24 = 255.0;
          if (*(v41 + 2 * llroundf(fminf(fmaxf(((_S26 * _S17) + (_S5 * _S25)) + (_S22 * _S27), 0.0), 8191.0))) <= COERCE_SHORT_FLOAT(23544))
          {
            __asm { FCMP            H2, #0 }

            if (_NF)
            {
              _S24 = 0.0;
            }

            else
            {
              __asm { FCVT            S24, H2 }
            }
          }

          v124 = v107[v106];
          v125 = ((v148 * _S17) + (_S5 * _S31)) + (_S22 * _S16);
          v126 = *(v41 + 2 * llroundf(fminf(fmaxf(((_S29 * _S17) + (_S5 * _S28)) + (_S22 * _S30), 0.0), 8191.0)));
          v127 = *(v41 + 2 * llroundf(fminf(fmaxf(v125, 0.0), 8191.0)));
          v114[v106] = llroundf(_S24);
          if (v126 <= COERCE_SHORT_FLOAT(23544))
          {
            __asm { FCMP            H5, #0 }

            if (_NF)
            {
              _S5 = 0.0;
            }

            else
            {
              __asm { FCVT            S5, H5 }
            }
          }

          else
          {
            _S5 = 255.0;
          }

          v113[v106] = llroundf(_S5);
          if (v127 <= COERCE_SHORT_FLOAT(23544))
          {
            __asm { FCMP            H4, #0 }

            if (_NF)
            {
              _S3 = 0.0;
            }

            else
            {
              __asm { FCVT            S3, H4 }
            }
          }

          else
          {
            _S3 = 255.0;
          }

          v112[v106] = llroundf(_S3);
          v111[v106] = llroundf(v124 * 255.0);
          v106 += 4;
          --v105;
        }

        while (v105);
      }

      v57 += v13;
      v53 += v15;
      ++v39;
    }

    while (v39 != v38);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_RGfA_TRC_Mat_TRC_BGRA(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v44 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v42 = a2[2];
  v43 = v16;
  v18 = *a6;
  v38 = a6[1];
  v39 = v17;
  v40 = a6[2];
  v41 = v18;
  if (v15 == 255)
  {
    v19 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v19)
    {
      v20 = 0;
LABEL_14:
      free(v19);
      return v20;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v19 = &v38.i8[-v21];
    bzero(&v38 - v21, v22);
  }

  v23 = a9;
  v24 = v40;
  v25 = vbslq_s8(vcgtq_s64(vaddq_s64(v42, v39), v43), vsubq_s64(v43, v42), v39);
  v26 = vbslq_s8(vcgtq_s64(vaddq_s64(v40, v38), v41), vsubq_s64(v41, v40), v38);
  v27 = vbslq_s8(vcgtq_s64(v26, v25), v25, v26);
  v28.i64[0] = v27.i64[0];
  v28.i64[1] = -1;
  v29 = vaddq_s64(v42, v28);
  if (((*a4 * (v29.i64[1] + v27.i64[1]) + 16 * v29.i64[0]) > *a5 || (v30 = vaddq_s64(v40, v28), (*a8 * (v30.i64[1] + v27.i64[1]) + 4 * v30.i64[0]) > *a9)) && (v38 = v27, v39.i64[0] = a9, fig_log_get_emitter(), v31 = FigSignalErrorAtGM(), v24 = v40, v23 = v39.i64[0], v27 = v38, v31))
  {
    v20 = v31;
  }

  else
  {
    *v19 = v15;
    v32 = v42;
    *(v19 + 4) = v43;
    *(v19 + 20) = v27;
    *(v19 + 36) = v32;
    *(v19 + 5) = v41;
    *(v19 + 6) = v27;
    *(v19 + 7) = v24;
    *(v19 + 7) = a3;
    *(v19 + 8) = a4;
    *(v19 + 9) = a5;
    *(v19 + 16) = a7;
    *(v19 + 17) = a8;
    *(v19 + 18) = v23;
    *(v19 + 19) = a1;
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_RGfA_TRC_Mat_TRC_BGRA_GCD);
    if (!v15)
    {
      return 0;
    }

    v34 = (v19 + 160);
    v35 = v15;
    while (1)
    {
      v36 = *v34++;
      v20 = v36;
      if (v36)
      {
        break;
      }

      if (!--v35)
      {
        v20 = 0;
        break;
      }
    }
  }

  if (v15 == 255)
  {
    goto LABEL_14;
  }

  return v20;
}

unsigned __int8 *vt_Copy_RGfA_TRC_Mat_TRC_BGRA_GCD(unsigned __int8 *result, uint64_t a2)
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
    v9 = **(result + 8);
    v10 = **(result + 17);
    v11 = *(v8 + 72);
    v12 = *(v8 + 76);
    v13 = *(v8 + 80);
    v14 = *(v8 + 84);
    v15 = *(v8 + 88);
    v16 = *(v8 + 92);
    v17 = *(v8 + 96);
    v18 = *(v8 + 100);
    v19 = *(v8 + 104);
    v20 = v8 + 164;
    v21 = v8 + 16548;
    v22 = v4 + *(result + 15);
    v23 = *(result + 28) * a2 / v2 + *(result + 44);
    v24 = *(v8 + 161);
    v25 = *(v8 + 160);
    v26 = *(v8 + 159);
    v27 = *(v8 + 158);
    v28 = *(v8 + 157);
    v29 = *(v8 + 156);
    v30 = *(v8 + 155);
    v31 = *(v8 + 154);
    v32 = **(result + 16) + v10 * v22 + 4 * *(result + 14);
    v33 = **(result + 7) + v23 * v9 + 16 * *(result + 36);
    v34 = vdup_n_s32(0x45FFF800u);
    do
    {
      if (v7 >= 1)
      {
        v35 = v7;
        v36 = v33;
        v37 = v32;
        do
        {
          v38.i32[0] = *(v36 + 4 * v31);
          v38.i32[1] = *(v36 + 4 * v30);
          _D22 = vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_f32(v38, v34), 0), v34)));
          _D22.i16[0] = *(v20 + 2 * _D22.u32[0]);
          __asm { FCVT            S24, H22 }

          _D22.i16[0] = *(v20 + 2 * _D22.u32[1]);
          __asm { FCVT            S25, H22 }

          _D22.i16[0] = *(v20 + 2 * llroundf(fminf(fmaxf(*(v36 + 4 * v29) * 8191.0, 0.0), 8191.0)));
          __asm { FCVT            S26, H22 }

          _S27 = 255.0;
          if (*(v21 + 2 * llroundf(fminf(fmaxf(((v12 * _S25) + (_S24 * v11)) + (_S26 * v13), 0.0), 8191.0))) <= COERCE_SHORT_FLOAT(23544))
          {
            __asm { FCMP            H23, #0 }

            if (_NF)
            {
              _S27 = 0.0;
            }

            else
            {
              __asm { FCVT            S27, H23 }
            }
          }

          v49 = *(v36 + 4 * v28);
          v50 = ((v15 * _S25) + (_S24 * v14)) + (_S26 * v16);
          v51 = ((v18 * _S25) + (_S24 * v17)) + (_S26 * v19);
          v52 = *(v21 + 2 * llroundf(fminf(fmaxf(v50, 0.0), 8191.0)));
          v53 = *(v21 + 2 * llroundf(fminf(fmaxf(v51, 0.0), 8191.0)));
          *(v37 + v27) = llroundf(_S27);
          if (v52 <= COERCE_SHORT_FLOAT(23544))
          {
            __asm { FCMP            H25, #0 }

            if (_NF)
            {
              _S25 = 0.0;
            }

            else
            {
              __asm { FCVT            S25, H25 }
            }
          }

          else
          {
            _S25 = 255.0;
          }

          *(v37 + v26) = llroundf(_S25);
          if (v53 <= COERCE_SHORT_FLOAT(23544))
          {
            __asm { FCMP            H24, #0 }

            if (_NF)
            {
              _S24 = 0.0;
            }

            else
            {
              __asm { FCVT            S24, H24 }
            }
          }

          else
          {
            _S24 = 255.0;
          }

          v36 += 16;
          *(v37 + v25) = llroundf(_S24);
          *(v37 + v24) = llroundf(v49 * 255.0);
          v37 += 4;
          --v35;
        }

        while (v35);
      }

      v33 += v9;
      v32 += v10;
      ++v6;
    }

    while (v6 != v5);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_RGfA_rgb_BGRA_neon_fp16(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v44 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v42 = a2[2];
  v43 = v16;
  v18 = *a6;
  v38 = a6[1];
  v39 = v17;
  v40 = a6[2];
  v41 = v18;
  if (v15 == 255)
  {
    v19 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v19)
    {
      v20 = 0;
LABEL_14:
      free(v19);
      return v20;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v19 = &v38.i8[-v21];
    bzero(&v38 - v21, v22);
  }

  v23 = a9;
  v24 = v40;
  v25 = vbslq_s8(vcgtq_s64(vaddq_s64(v42, v39), v43), vsubq_s64(v43, v42), v39);
  v26 = vbslq_s8(vcgtq_s64(vaddq_s64(v40, v38), v41), vsubq_s64(v41, v40), v38);
  v27 = vbslq_s8(vcgtq_s64(v26, v25), v25, v26);
  v28.i64[0] = v27.i64[0];
  v28.i64[1] = -1;
  v29 = vaddq_s64(v42, v28);
  if (((*a4 * (v29.i64[1] + v27.i64[1]) + 16 * v29.i64[0]) > *a5 || (v30 = vaddq_s64(v40, v28), (*a8 * (v30.i64[1] + v27.i64[1]) + 4 * v30.i64[0]) > *a9)) && (v38 = v27, v39.i64[0] = a9, fig_log_get_emitter(), v31 = FigSignalErrorAtGM(), v24 = v40, v23 = v39.i64[0], v27 = v38, v31))
  {
    v20 = v31;
  }

  else
  {
    *v19 = v15;
    v32 = v42;
    *(v19 + 4) = v43;
    *(v19 + 20) = v27;
    *(v19 + 36) = v32;
    *(v19 + 5) = v41;
    *(v19 + 6) = v27;
    *(v19 + 7) = v24;
    *(v19 + 7) = a3;
    *(v19 + 8) = a4;
    *(v19 + 9) = a5;
    *(v19 + 16) = a7;
    *(v19 + 17) = a8;
    *(v19 + 18) = v23;
    *(v19 + 19) = a1;
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_RGfA_rgb_BGRA_neon_fp16_GCD);
    if (!v15)
    {
      return 0;
    }

    v34 = (v19 + 160);
    v35 = v15;
    while (1)
    {
      v36 = *v34++;
      v20 = v36;
      if (v36)
      {
        break;
      }

      if (!--v35)
      {
        v20 = 0;
        break;
      }
    }
  }

  if (v15 == 255)
  {
    goto LABEL_14;
  }

  return v20;
}

unsigned __int8 *vt_Copy_RGfA_rgb_BGRA_neon_fp16_GCD(unsigned __int8 *result, uint64_t a2)
{
  v2 = 0;
  v3 = 0;
  v4 = *result;
  v71 = *(result + 14);
  v72 = *(result + 36);
  v5 = *(result + 12);
  v6 = *(result + 13);
  v7 = *(result + 19);
  v8 = v6 * a2 / v4;
  v9 = **(result + 8);
  v69 = v9 * (*(result + 28) * a2 / v4 + *(result + 44));
  v70 = **(result + 7);
  v10 = **(result + 17);
  v11 = **(result + 16);
  v12 = v10 * (v8 + *(result + 15));
  v13 = *(v7 + 136);
  v14 = *(v7 + 154);
  v80[0] = *(v7 + 154);
  v15 = *(v7 + 155);
  v80[1] = *(v7 + 155);
  v16 = *(v7 + 156);
  v80[2] = *(v7 + 156);
  v17 = *(v7 + 157);
  v80[3] = *(v7 + 157);
  v74 = *(v7 + 158);
  v79[0] = *(v7 + 158);
  v18 = *(v7 + 159);
  v79[1] = *(v7 + 159);
  v19 = *(v7 + 160);
  v79[2] = *(v7 + 160);
  v20 = *(v7 + 161);
  v79[3] = v20;
  memset(v78, 0, sizeof(v78));
  v76 = 0u;
  v77 = 0u;
  v21 = (v6 + v6 * a2) / v4;
  do
  {
    v22 = 0;
    v23 = v80[v3];
    v24 = v79[v3];
    v25 = *(v78 + v3);
    do
    {
      v75 = v25;
      *(&v75 | v22 & 7) = v23 + 4 * v22;
      v25 = v75;
      *((&v76 + ((v24 + 4 * v22) & 0xF8)) | (v24 + 4 * v22) & 7) = v2 + v22;
      ++v22;
    }

    while (v22 != 8);
    *(v78 + v3++) = v25;
    v2 += 8;
  }

  while (v3 != 4);
  v26 = v21 - v8;
  if (v21 - v8 >= 1)
  {
    v27 = 0;
    _S0 = v13;
    v29 = v11 + v12 + 4 * v71;
    v30 = v70 + v69 + 16 * v72;
    __asm { FCVT            H1, S0 }

    v36 = v17;
    v37 = v16;
    v38 = v15;
    v39 = v14;
    v40 = vdupq_n_s16(0x5BF8u);
    do
    {
      if (v5 < 8)
      {
        v49 = 0;
        v45 = v29;
        v44 = v30;
      }

      else
      {
        v41 = 0;
        v43 = *(&v76 + 8);
        v42 = v76;
        v44 = v30;
        v45 = v29;
        v47 = *(&v77 + 8);
        v46 = v77;
        do
        {
          v48 = v44;
          v44 += 32;
          v81 = vld4q_f32(v48);
          v48 += 16;
          v82 = vld4q_f32(v48);
          v81.val[1] = vuzp1q_s8(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmulq_n_f16(vcvt_hight_f16_f32(vcvt_f16_f32(v81.val[0]), v82.val[0]), _H1), 0), v40)), vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmulq_n_f16(vcvt_hight_f16_f32(vcvt_f16_f32(v81.val[1]), v82.val[1]), _H1), 0), v40)));
          v81.val[2] = vuzp1q_s8(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmulq_n_f16(vcvt_hight_f16_f32(vcvt_f16_f32(v81.val[2]), v82.val[2]), _H1), 0), v40)), vcvtq_u16_f16(vmulq_f16(vcvt_hight_f16_f32(vcvt_f16_f32(v81.val[3]), v82.val[3]), v40)));
          *v81.val[0].f32 = vqtbl2_s8(*v81.val[1].f32, v42);
          *&v81.val[0].u32[2] = vqtbl2_s8(*v81.val[1].f32, v43);
          *v81.val[3].f32 = vqtbl2_s8(*v81.val[1].f32, v46);
          *&v81.val[3].u32[2] = vqtbl2_s8(*v81.val[1].f32, v47);
          *v45 = v81.val[0];
          v45[1] = v81.val[3];
          v45 += 2;
          v41 += 8;
        }

        while (v41 < v5 - 7);
        v49 = v5 & 0x7FFFFFF8;
      }

      v50 = v5 - v49;
      if (v5 > v49)
      {
        v51 = 0;
        v52 = &v44[v36];
        v53 = &v44[v37];
        v54 = &v44[v38];
        v55 = &v44[v39];
        v56 = v45 + v20;
        v57 = v45 + v19;
        v58 = v45 + v18;
        v59 = v45 + v74;
        do
        {
          v60 = v55[v51] * _S0;
          v61 = 255.0;
          if (v60 <= 255.0)
          {
            v61 = v55[v51] * _S0;
            if (v60 < 0.0)
            {
              v61 = 0.0;
            }
          }

          v62 = v53[v51];
          v63 = v52[v51];
          v64 = v54[v51] * _S0;
          v59[v51] = llroundf(v61);
          v65 = 255.0;
          if (v64 <= 255.0)
          {
            v65 = v64;
            if (v64 < 0.0)
            {
              v65 = 0.0;
            }
          }

          v66 = llroundf(v65);
          v67 = v62 * _S0;
          v58[v51] = v66;
          v68 = 255.0;
          if (v67 <= 255.0)
          {
            v68 = v67;
            if (v67 < 0.0)
            {
              v68 = 0.0;
            }
          }

          v57[v51] = llroundf(v68);
          v56[v51] = llroundf(v63 * 255.0);
          v51 += 4;
          --v50;
        }

        while (v50);
      }

      v30 += v9;
      v29 += v10;
      ++v27;
    }

    while (v27 != v26);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_RGfA_rgb_BGRA(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v44 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v42 = a2[2];
  v43 = v16;
  v18 = *a6;
  v38 = a6[1];
  v39 = v17;
  v40 = a6[2];
  v41 = v18;
  if (v15 == 255)
  {
    v19 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v19)
    {
      v20 = 0;
LABEL_14:
      free(v19);
      return v20;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v19 = &v38.i8[-v21];
    bzero(&v38 - v21, v22);
  }

  v23 = a9;
  v24 = v40;
  v25 = vbslq_s8(vcgtq_s64(vaddq_s64(v42, v39), v43), vsubq_s64(v43, v42), v39);
  v26 = vbslq_s8(vcgtq_s64(vaddq_s64(v40, v38), v41), vsubq_s64(v41, v40), v38);
  v27 = vbslq_s8(vcgtq_s64(v26, v25), v25, v26);
  v28.i64[0] = v27.i64[0];
  v28.i64[1] = -1;
  v29 = vaddq_s64(v42, v28);
  if (((*a4 * (v29.i64[1] + v27.i64[1]) + 16 * v29.i64[0]) > *a5 || (v30 = vaddq_s64(v40, v28), (*a8 * (v30.i64[1] + v27.i64[1]) + 4 * v30.i64[0]) > *a9)) && (v38 = v27, v39.i64[0] = a9, fig_log_get_emitter(), v31 = FigSignalErrorAtGM(), v24 = v40, v23 = v39.i64[0], v27 = v38, v31))
  {
    v20 = v31;
  }

  else
  {
    *v19 = v15;
    v32 = v42;
    *(v19 + 4) = v43;
    *(v19 + 20) = v27;
    *(v19 + 36) = v32;
    *(v19 + 5) = v41;
    *(v19 + 6) = v27;
    *(v19 + 7) = v24;
    *(v19 + 7) = a3;
    *(v19 + 8) = a4;
    *(v19 + 9) = a5;
    *(v19 + 16) = a7;
    *(v19 + 17) = a8;
    *(v19 + 18) = v23;
    *(v19 + 19) = a1;
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_RGfA_rgb_BGRA_GCD);
    if (!v15)
    {
      return 0;
    }

    v34 = (v19 + 160);
    v35 = v15;
    while (1)
    {
      v36 = *v34++;
      v20 = v36;
      if (v36)
      {
        break;
      }

      if (!--v35)
      {
        v20 = 0;
        break;
      }
    }
  }

  if (v15 == 255)
  {
    goto LABEL_14;
  }

  return v20;
}

unsigned __int8 *vt_Copy_RGfA_rgb_BGRA_GCD(unsigned __int8 *result, uint64_t a2)
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
    v9 = **(result + 8);
    v10 = **(result + 17);
    v11 = *(v8 + 136);
    v12 = v4 + *(result + 15);
    v13 = *(result + 28) * a2 / v2 + *(result + 44);
    v14 = *(v8 + 161);
    v15 = *(v8 + 160);
    v16 = *(v8 + 159);
    v17 = *(v8 + 158);
    v18 = *(v8 + 157);
    v19 = *(v8 + 156);
    v20 = *(v8 + 155);
    v21 = *(v8 + 154);
    v22 = **(result + 16) + v10 * v12 + 4 * *(result + 14);
    v23 = **(result + 7) + v13 * v9 + 16 * *(result + 36);
    do
    {
      if (v7 >= 1)
      {
        v24 = v7;
        v25 = v23;
        v26 = v22;
        do
        {
          v27 = *(v25 + 4 * v21) * v11;
          v28 = 255.0;
          if (v27 <= 255.0)
          {
            v28 = *(v25 + 4 * v21) * v11;
            if (v27 < 0.0)
            {
              v28 = 0.0;
            }
          }

          v29 = *(v25 + 4 * v19);
          v30 = *(v25 + 4 * v18);
          v31 = *(v25 + 4 * v20) * v11;
          *(v26 + v17) = llroundf(v28);
          v32 = 255.0;
          if (v31 <= 255.0)
          {
            v32 = v31;
            if (v31 < 0.0)
            {
              v32 = 0.0;
            }
          }

          v33 = llroundf(v32);
          v34 = v29 * v11;
          *(v26 + v16) = v33;
          v35 = 255.0;
          if (v34 <= 255.0)
          {
            v35 = v34;
            if (v34 < 0.0)
            {
              v35 = 0.0;
            }
          }

          v25 += 16;
          *(v26 + v15) = llroundf(v35);
          *(v26 + v14) = llroundf(v30 * 255.0);
          v26 += 4;
          --v24;
        }

        while (v24);
      }

      v23 += v9;
      v22 += v10;
      ++v6;
    }

    while (v6 != v5);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_RGfA_TRC_Tone_Mat_TRC_l10r(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v13 = a3;
  v47 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v45 = a2[2];
  v46 = v16;
  v18 = *a6;
  v41 = a6[1];
  v42 = v17;
  v43 = a6[2];
  v44 = v18;
  if (v15 == 255)
  {
    v19 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v19)
    {
      v20 = 0;
LABEL_19:
      free(v19);
      return v20;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v19 = &v41.i8[-v21];
    bzero(&v41 - v21, v22);
  }

  v23 = a9;
  v24 = v43;
  v25 = vbslq_s8(vcgtq_s64(vaddq_s64(v45, v42), v46), vsubq_s64(v46, v45), v42);
  v26 = vbslq_s8(vcgtq_s64(vaddq_s64(v43, v41), v44), vsubq_s64(v44, v43), v41);
  v27 = vbslq_s8(vcgtq_s64(v26, v25), v25, v26);
  v28.i64[0] = v27.i64[0];
  v28.i64[1] = -1;
  v29 = vaddq_s64(v45, v28);
  if ((*a4 * (v29.i64[1] + v27.i64[1]) + 16 * v29.i64[0]) <= *a5)
  {
    v33 = vaddq_s64(v43, v28);
    if ((*a8 * (v33.i64[1] + v27.i64[1]) + 4 * v33.i64[0]) <= *a9)
    {
      if (!*(a7 + 8) || v33.i64[0] + a8[1] * (v33.i64[1] + v27.i64[1]) <= a9[1])
      {
        goto LABEL_13;
      }

      v41 = v27;
      v42.i64[0] = a9;
      v30 = a5;
      v31 = a7;
      v32 = v13;
    }

    else
    {
      v41 = v27;
      v42.i64[0] = a9;
      v30 = a5;
      v31 = a7;
      v32 = v13;
    }
  }

  else
  {
    v41 = v27;
    v42.i64[0] = a9;
    v30 = a5;
    v31 = a7;
    v32 = v13;
  }

  fig_log_get_emitter();
  v34 = FigSignalErrorAtGM();
  v13 = v32;
  a7 = v31;
  a5 = v30;
  v24 = v43;
  v23 = v42.i64[0];
  v27 = v41;
  if (v34)
  {
    v20 = v34;
    goto LABEL_18;
  }

LABEL_13:
  *v19 = v15;
  v35 = v45;
  *(v19 + 4) = v46;
  *(v19 + 20) = v27;
  *(v19 + 36) = v35;
  *(v19 + 5) = v44;
  *(v19 + 6) = v27;
  *(v19 + 7) = v24;
  *(v19 + 7) = v13;
  *(v19 + 8) = a4;
  *(v19 + 9) = a5;
  *(v19 + 16) = a7;
  *(v19 + 17) = a8;
  *(v19 + 18) = v23;
  *(v19 + 19) = a1;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v15, global_queue, v19, vt_Copy_RGfA_TRC_Tone_Mat_TRC_l10r_GCD);
  if (!v15)
  {
    return 0;
  }

  v37 = (v19 + 160);
  v38 = v15;
  while (1)
  {
    v39 = *v37++;
    v20 = v39;
    if (v39)
    {
      break;
    }

    if (!--v38)
    {
      v20 = 0;
      break;
    }
  }

LABEL_18:
  if (v15 == 255)
  {
    goto LABEL_19;
  }

  return v20;
}

unsigned __int8 *vt_Copy_RGfA_TRC_Tone_Mat_TRC_l10r_GCD(unsigned __int8 *result, uint64_t a2, float a3)
{
  v3 = *result;
  v4 = *(result + 13);
  v5 = v4 * a2 / v3;
  v6 = (v4 + v4 * a2) / v3 - v5;
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = *(result + 24);
    v9 = *(result + 19);
    v10 = **(result + 8);
    v11 = **(result + 17);
    LOWORD(a3) = *(v9 + 144);
    v12 = LODWORD(a3);
    v13 = *(v9 + 72);
    v14 = *(v9 + 76);
    v15 = *(v9 + 80);
    v16 = *(v9 + 84);
    v17 = *(v9 + 88);
    v18 = *(v9 + 92);
    v19 = *(v9 + 96);
    v20 = *(v9 + 100);
    v21 = v9 + 164;
    v22 = v9 + 16548;
    v23 = v9 + 32932;
    v24 = *(v9 + 104);
    v25 = *(v9 + 108);
    v26 = *(v9 + 112);
    v27 = *(v9 + 116);
    v28 = *(v9 + 120);
    v29 = v5 + *(result + 15);
    v30 = *(result + 28) * a2 / v3 + *(result + 44);
    v31 = *(v9 + 157);
    v32 = *(v9 + 156);
    v33 = *(v9 + 155);
    v34 = *(v9 + 154);
    v35 = **(result + 16) + v11 * v29 + 16 * *(result + 14);
    v36 = **(result + 7) + v30 * v10 + 16 * *(result + 36);
    v37 = vdup_n_s32(0x45FFF800u);
    do
    {
      if (v8 >= 1)
      {
        v38 = v8;
        v39 = v35;
        v40 = v36;
        do
        {
          v41.i32[0] = *(v40 + 4 * v34);
          v41.i32[1] = *(v40 + 4 * v33);
          _D28 = vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_f32(v41, v37), 0), v37)));
          _D28.i16[0] = *(v21 + 2 * _D28.u32[0]);
          __asm { FCVT            S28, H28 }

          _H30 = *(v21 + 2 * _D28.u32[1]);
          __asm { FCVT            S30, H30 }

          _H29 = *(v21 + 2 * llroundf(fminf(fmaxf(*(v40 + 4 * v32) * 8191.0, 0.0), 8191.0)));
          __asm { FCVT            S8, H29 }

          v52 = (((v26 * _S30) + (v25 * _S28)) + (v27 * _S8)) + (v28 * fmaxf(_S28, fmaxf(_S30, _S8)));
          v53 = 8191.0;
          if (v52 <= 8191.0)
          {
            v53 = v52;
            if (v52 < 0.0)
            {
              v53 = 0.0;
            }
          }

          _H29 = *(v22 + 2 * llroundf(v53));
          __asm { FCVT            S9, H29 }

          v56 = _S28 * _S9;
          v57 = _S30 * _S9;
          v58 = _S8 * _S9;
          _H28 = *(v23 + 2 * llroundf(fminf(fmaxf(((v20 * v57) + ((_S28 * _S9) * v19)) + ((_S8 * _S9) * v24), 0.0), 8191.0)));
          __asm { FCVT            S28, H28 }

          v61 = v12 + _S28;
          v62 = (v12 + _S28) <= 1023.0;
          v63 = 1023.0;
          if (v62)
          {
            v63 = v61;
            if (v61 < 0.0)
            {
              v63 = 0.0;
            }
          }

          _H8 = *(v23 + 2 * llroundf(fminf(fmaxf(((v17 * v57) + (v56 * v16)) + (v58 * v18), 0.0), 8191.0)));
          __asm { FCVT            S8, H8 }

          v66 = v12 + _S8;
          v62 = (v12 + _S8) <= 1023.0;
          v67 = 1023.0;
          if (v62)
          {
            v67 = v66;
            if (v66 < 0.0)
            {
              v67 = 0.0;
            }
          }

          _H29 = *(v23 + 2 * llroundf(fminf(fmaxf(((v14 * v57) + (v56 * v13)) + (v58 * v15), 0.0), 8191.0)));
          __asm { FCVT            S29, H29 }

          v70 = v12 + _S29;
          v62 = (v12 + _S29) <= 1023.0;
          v71 = 1023.0;
          if (v62)
          {
            v71 = v70;
            if (v70 < 0.0)
            {
              v71 = 0.0;
            }
          }

          v72 = llroundf(*(v40 + 4 * v31) * 3.0);
          v73 = llroundf(v63);
          v40 += 16;
          v74 = llroundf(v67) << 10;
          v75 = llroundf(v71);
          v76 = v72;
          if (v72 > 3.0)
          {
            v76 = 3.0;
          }

          *v39++ = v74 | v73 | (llroundf(v76) << 30) | (v75 << 20);
          --v38;
        }

        while (v38);
      }

      v36 += v10;
      v35 += v11;
      ++v7;
    }

    while (v7 != v6);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_RGfA_TRC_Mat_TRC_l10r(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v13 = a3;
  v47 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v45 = a2[2];
  v46 = v16;
  v18 = *a6;
  v41 = a6[1];
  v42 = v17;
  v43 = a6[2];
  v44 = v18;
  if (v15 == 255)
  {
    v19 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v19)
    {
      v20 = 0;
LABEL_19:
      free(v19);
      return v20;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v19 = &v41.i8[-v21];
    bzero(&v41 - v21, v22);
  }

  v23 = a9;
  v24 = v43;
  v25 = vbslq_s8(vcgtq_s64(vaddq_s64(v45, v42), v46), vsubq_s64(v46, v45), v42);
  v26 = vbslq_s8(vcgtq_s64(vaddq_s64(v43, v41), v44), vsubq_s64(v44, v43), v41);
  v27 = vbslq_s8(vcgtq_s64(v26, v25), v25, v26);
  v28.i64[0] = v27.i64[0];
  v28.i64[1] = -1;
  v29 = vaddq_s64(v45, v28);
  if ((*a4 * (v29.i64[1] + v27.i64[1]) + 16 * v29.i64[0]) <= *a5)
  {
    v33 = vaddq_s64(v43, v28);
    if ((*a8 * (v33.i64[1] + v27.i64[1]) + 4 * v33.i64[0]) <= *a9)
    {
      if (!*(a7 + 8) || v33.i64[0] + a8[1] * (v33.i64[1] + v27.i64[1]) <= a9[1])
      {
        goto LABEL_13;
      }

      v41 = v27;
      v42.i64[0] = a9;
      v30 = a5;
      v31 = a7;
      v32 = v13;
    }

    else
    {
      v41 = v27;
      v42.i64[0] = a9;
      v30 = a5;
      v31 = a7;
      v32 = v13;
    }
  }

  else
  {
    v41 = v27;
    v42.i64[0] = a9;
    v30 = a5;
    v31 = a7;
    v32 = v13;
  }

  fig_log_get_emitter();
  v34 = FigSignalErrorAtGM();
  v13 = v32;
  a7 = v31;
  a5 = v30;
  v24 = v43;
  v23 = v42.i64[0];
  v27 = v41;
  if (v34)
  {
    v20 = v34;
    goto LABEL_18;
  }

LABEL_13:
  *v19 = v15;
  v35 = v45;
  *(v19 + 4) = v46;
  *(v19 + 20) = v27;
  *(v19 + 36) = v35;
  *(v19 + 5) = v44;
  *(v19 + 6) = v27;
  *(v19 + 7) = v24;
  *(v19 + 7) = v13;
  *(v19 + 8) = a4;
  *(v19 + 9) = a5;
  *(v19 + 16) = a7;
  *(v19 + 17) = a8;
  *(v19 + 18) = v23;
  *(v19 + 19) = a1;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v15, global_queue, v19, vt_Copy_RGfA_TRC_Mat_TRC_l10r_GCD);
  if (!v15)
  {
    return 0;
  }

  v37 = (v19 + 160);
  v38 = v15;
  while (1)
  {
    v39 = *v37++;
    v20 = v39;
    if (v39)
    {
      break;
    }

    if (!--v38)
    {
      v20 = 0;
      break;
    }
  }

LABEL_18:
  if (v15 == 255)
  {
    goto LABEL_19;
  }

  return v20;
}

unsigned __int8 *vt_Copy_RGfA_TRC_Mat_TRC_l10r_GCD(unsigned __int8 *result, uint64_t a2, float a3)
{
  v3 = *result;
  v4 = *(result + 13);
  v5 = v4 * a2 / v3;
  v6 = (v4 + v4 * a2) / v3 - v5;
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = *(result + 24);
    v9 = *(result + 19);
    v10 = **(result + 8);
    v11 = **(result + 17);
    LOWORD(a3) = *(v9 + 144);
    v12 = LODWORD(a3);
    v13 = *(v9 + 72);
    v14 = *(v9 + 76);
    v15 = *(v9 + 80);
    v16 = *(v9 + 84);
    v17 = *(v9 + 88);
    v18 = *(v9 + 92);
    v19 = *(v9 + 96);
    v20 = *(v9 + 100);
    v21 = *(v9 + 104);
    v22 = v9 + 164;
    v23 = v9 + 16548;
    v24 = v5 + *(result + 15);
    v25 = *(result + 28) * a2 / v3 + *(result + 44);
    v26 = *(v9 + 157);
    v27 = *(v9 + 156);
    v28 = *(v9 + 155);
    v29 = *(v9 + 154);
    v30 = **(result + 16) + v11 * v24 + 16 * *(result + 14);
    v31 = **(result + 7) + v25 * v10 + 16 * *(result + 36);
    v32 = vdup_n_s32(0x45FFF800u);
    do
    {
      if (v8 >= 1)
      {
        v33 = v8;
        v34 = v31;
        v35 = v30;
        do
        {
          v36.i32[0] = *(v34 + 4 * v29);
          v36.i32[1] = *(v34 + 4 * v28);
          _D24 = vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_f32(v36, v32), 0), v32)));
          _D24.i16[0] = *(v22 + 2 * _D24.u32[0]);
          __asm { FCVT            S25, H24 }

          _D24.i16[0] = *(v22 + 2 * _D24.u32[1]);
          __asm { FCVT            S26, H24 }

          _D24.i16[0] = *(v22 + 2 * llroundf(fminf(fmaxf(*(v34 + 4 * v27) * 8191.0, 0.0), 8191.0)));
          __asm { FCVT            S27, H24 }

          _D24.i16[0] = *(v23 + 2 * llroundf(fminf(fmaxf(((v20 * _S26) + (_S25 * v19)) + (_S27 * v21), 0.0), 8191.0)));
          __asm { FCVT            S24, H24 }

          v45 = v12 + *_D24.i32;
          v46 = (v12 + *_D24.i32) <= 1023.0;
          v47 = 1023.0;
          if (v46)
          {
            v47 = v45;
            if (v45 < 0.0)
            {
              v47 = 0.0;
            }
          }

          _H28 = *(v23 + 2 * llroundf(fminf(fmaxf(((v17 * _S26) + (_S25 * v16)) + (_S27 * v18), 0.0), 8191.0)));
          __asm { FCVT            S28, H28 }

          v50 = v12 + _S28;
          v46 = (v12 + _S28) <= 1023.0;
          v51 = 1023.0;
          if (v46)
          {
            v51 = v50;
            if (v50 < 0.0)
            {
              v51 = 0.0;
            }
          }

          _H25 = *(v23 + 2 * llroundf(fminf(fmaxf(((v14 * _S26) + (_S25 * v13)) + (_S27 * v15), 0.0), 8191.0)));
          __asm { FCVT            S25, H25 }

          v54 = v12 + _S25;
          v46 = (v12 + _S25) <= 1023.0;
          v55 = 1023.0;
          if (v46)
          {
            v55 = v54;
            if (v54 < 0.0)
            {
              v55 = 0.0;
            }
          }

          v56 = llroundf(*(v34 + 4 * v26) * 3.0);
          v57 = llroundf(v47);
          v34 += 16;
          v58 = llroundf(v51) << 10;
          v59 = llroundf(v55);
          v60 = v56;
          if (v56 > 3.0)
          {
            v60 = 3.0;
          }

          *v35++ = v58 | v57 | (llroundf(v60) << 30) | (v59 << 20);
          --v33;
        }

        while (v33);
      }

      v31 += v10;
      v30 += v11;
      ++v7;
    }

    while (v7 != v6);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_RGfA_rgb_l10r(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v13 = a3;
  v47 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v45 = a2[2];
  v46 = v16;
  v18 = *a6;
  v41 = a6[1];
  v42 = v17;
  v43 = a6[2];
  v44 = v18;
  if (v15 == 255)
  {
    v19 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v19)
    {
      v20 = 0;
LABEL_19:
      free(v19);
      return v20;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v19 = &v41.i8[-v21];
    bzero(&v41 - v21, v22);
  }

  v23 = a9;
  v24 = v43;
  v25 = vbslq_s8(vcgtq_s64(vaddq_s64(v45, v42), v46), vsubq_s64(v46, v45), v42);
  v26 = vbslq_s8(vcgtq_s64(vaddq_s64(v43, v41), v44), vsubq_s64(v44, v43), v41);
  v27 = vbslq_s8(vcgtq_s64(v26, v25), v25, v26);
  v28.i64[0] = v27.i64[0];
  v28.i64[1] = -1;
  v29 = vaddq_s64(v45, v28);
  if ((*a4 * (v29.i64[1] + v27.i64[1]) + 16 * v29.i64[0]) <= *a5)
  {
    v33 = vaddq_s64(v43, v28);
    if ((*a8 * (v33.i64[1] + v27.i64[1]) + 4 * v33.i64[0]) <= *a9)
    {
      if (!*(a7 + 8) || v33.i64[0] + a8[1] * (v33.i64[1] + v27.i64[1]) <= a9[1])
      {
        goto LABEL_13;
      }

      v41 = v27;
      v42.i64[0] = a9;
      v30 = a5;
      v31 = a7;
      v32 = v13;
    }

    else
    {
      v41 = v27;
      v42.i64[0] = a9;
      v30 = a5;
      v31 = a7;
      v32 = v13;
    }
  }

  else
  {
    v41 = v27;
    v42.i64[0] = a9;
    v30 = a5;
    v31 = a7;
    v32 = v13;
  }

  fig_log_get_emitter();
  v34 = FigSignalErrorAtGM();
  v13 = v32;
  a7 = v31;
  a5 = v30;
  v24 = v43;
  v23 = v42.i64[0];
  v27 = v41;
  if (v34)
  {
    v20 = v34;
    goto LABEL_18;
  }

LABEL_13:
  *v19 = v15;
  v35 = v45;
  *(v19 + 4) = v46;
  *(v19 + 20) = v27;
  *(v19 + 36) = v35;
  *(v19 + 5) = v44;
  *(v19 + 6) = v27;
  *(v19 + 7) = v24;
  *(v19 + 7) = v13;
  *(v19 + 8) = a4;
  *(v19 + 9) = a5;
  *(v19 + 16) = a7;
  *(v19 + 17) = a8;
  *(v19 + 18) = v23;
  *(v19 + 19) = a1;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v15, global_queue, v19, vt_Copy_RGfA_rgb_l10r_GCD);
  if (!v15)
  {
    return 0;
  }

  v37 = (v19 + 160);
  v38 = v15;
  while (1)
  {
    v39 = *v37++;
    v20 = v39;
    if (v39)
    {
      break;
    }

    if (!--v38)
    {
      v20 = 0;
      break;
    }
  }

LABEL_18:
  if (v15 == 255)
  {
    goto LABEL_19;
  }

  return v20;
}

unsigned __int8 *vt_Copy_RGfA_rgb_l10r_GCD(unsigned __int8 *result, uint64_t a2, double a3, float a4)
{
  v4 = *result;
  v5 = *(result + 13);
  v6 = v5 * a2 / v4;
  v7 = (v5 + v5 * a2) / v4 - v6;
  if (v7 >= 1)
  {
    v8 = 0;
    v9 = *(result + 24);
    v10 = *(result + 19);
    v11 = **(result + 8);
    v12 = **(result + 17);
    v13 = *(v10 + 136);
    LOWORD(a4) = *(v10 + 144);
    v14 = LODWORD(a4);
    v15 = v6 + *(result + 15);
    v16 = *(result + 28) * a2 / v4 + *(result + 44);
    v17 = *(v10 + 157);
    v18 = *(v10 + 156);
    v19 = *(v10 + 155);
    v20 = *(v10 + 154);
    v21 = **(result + 16) + v12 * v15 + 16 * *(result + 14);
    v22 = **(result + 7) + v16 * v11 + 16 * *(result + 36);
    do
    {
      if (v9 >= 1)
      {
        v23 = v9;
        v24 = v22;
        v25 = v21;
        do
        {
          v26 = llroundf(*(v24 + 4 * v17) * 3.0);
          v27 = (*(v24 + 4 * v18) * v13) + v14;
          if (v27 < 0.0)
          {
            v28 = 0.0;
          }

          else
          {
            v28 = (*(v24 + 4 * v18) * v13) + v14;
          }

          if (v27 <= 1023.0)
          {
            v29 = v28;
          }

          else
          {
            v29 = 1023.0;
          }

          v30 = llroundf(v29);
          v31 = (*(v24 + 4 * v19) * v13) + v14;
          if (v31 < 0.0)
          {
            v32 = 0.0;
          }

          else
          {
            v32 = (*(v24 + 4 * v19) * v13) + v14;
          }

          if (v31 <= 1023.0)
          {
            v33 = v32;
          }

          else
          {
            v33 = 1023.0;
          }

          v34 = llroundf(v33);
          v35 = (*(v24 + 4 * v20) * v13) + v14;
          if (v35 < 0.0)
          {
            v36 = 0.0;
          }

          else
          {
            v36 = (*(v24 + 4 * v20) * v13) + v14;
          }

          if (v35 <= 1023.0)
          {
            v37 = v36;
          }

          else
          {
            v37 = 1023.0;
          }

          v38 = v26;
          v39 = llroundf(v37);
          v24 += 16;
          if (v38 <= 3.0)
          {
            v40 = v38;
          }

          else
          {
            v40 = 3.0;
          }

          *v25++ = (v34 << 10) | v30 | (llroundf(v40) << 30) | (v39 << 20);
          --v23;
        }

        while (v23);
      }

      v22 += v11;
      v21 += v12;
      ++v8;
    }

    while (v8 != v7);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_RGfA_TRC_Tone_Mat_TRC_l64r(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v44 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v42 = a2[2];
  v43 = v16;
  v18 = *a6;
  v38 = a6[1];
  v39 = v17;
  v40 = a6[2];
  v41 = v18;
  if (v15 == 255)
  {
    v19 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v19)
    {
      v20 = 0;
LABEL_14:
      free(v19);
      return v20;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v19 = &v38.i8[-v21];
    bzero(&v38 - v21, v22);
  }

  v23 = a9;
  v24 = v40;
  v25 = vbslq_s8(vcgtq_s64(vaddq_s64(v42, v39), v43), vsubq_s64(v43, v42), v39);
  v26 = vbslq_s8(vcgtq_s64(vaddq_s64(v40, v38), v41), vsubq_s64(v41, v40), v38);
  v27 = vbslq_s8(vcgtq_s64(v26, v25), v25, v26);
  v28.i64[0] = v27.i64[0];
  v28.i64[1] = -1;
  v29 = vaddq_s64(v42, v28);
  if (((*a4 * (v29.i64[1] + v27.i64[1]) + 16 * v29.i64[0]) > *a5 || (v30 = vaddq_s64(v40, v28), (*a8 * (v30.i64[1] + v27.i64[1]) + 8 * v30.i64[0]) > *a9)) && (v38 = v27, v39.i64[0] = a9, fig_log_get_emitter(), v31 = FigSignalErrorAtGM(), v24 = v40, v23 = v39.i64[0], v27 = v38, v31))
  {
    v20 = v31;
  }

  else
  {
    *v19 = v15;
    v32 = v42;
    *(v19 + 4) = v43;
    *(v19 + 20) = v27;
    *(v19 + 36) = v32;
    *(v19 + 5) = v41;
    *(v19 + 6) = v27;
    *(v19 + 7) = v24;
    *(v19 + 7) = a3;
    *(v19 + 8) = a4;
    *(v19 + 9) = a5;
    *(v19 + 16) = a7;
    *(v19 + 17) = a8;
    *(v19 + 18) = v23;
    *(v19 + 19) = a1;
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_RGfA_TRC_Tone_Mat_TRC_l64r_GCD);
    if (!v15)
    {
      return 0;
    }

    v34 = (v19 + 160);
    v35 = v15;
    while (1)
    {
      v36 = *v34++;
      v20 = v36;
      if (v36)
      {
        break;
      }

      if (!--v35)
      {
        v20 = 0;
        break;
      }
    }
  }

  if (v15 == 255)
  {
    goto LABEL_14;
  }

  return v20;
}

unsigned __int8 *vt_Copy_RGfA_TRC_Tone_Mat_TRC_l64r_GCD(unsigned __int8 *result, uint64_t a2)
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
    v9 = **(result + 8);
    v10 = **(result + 17);
    v11 = *(v8 + 72);
    v12 = *(v8 + 76);
    v13 = *(v8 + 80);
    v14 = *(v8 + 84);
    v15 = *(v8 + 88);
    v16 = *(v8 + 92);
    v17 = *(v8 + 96);
    v18 = *(v8 + 100);
    v19 = v8 + 164;
    v20 = v8 + 16548;
    v21 = v8 + 32932;
    v22 = *(v8 + 104);
    v23 = *(v8 + 108);
    v24 = *(v8 + 112);
    v25 = *(v8 + 116);
    v26 = *(v8 + 120);
    v27 = v4 + *(result + 15);
    v28 = *(result + 28) * a2 / v2 + *(result + 44);
    v29 = *(v8 + 157);
    v30 = *(v8 + 156);
    v31 = *(v8 + 155);
    v32 = *(v8 + 154);
    v33 = **(result + 16) + v10 * v27 + 8 * *(result + 14);
    v34 = **(result + 7) + v28 * v9 + 16 * *(result + 36);
    v35 = vdup_n_s32(0x45FFF800u);
    do
    {
      if (v7 >= 1)
      {
        v36 = v7;
        v37 = v34;
        v38 = v33;
        do
        {
          v39.i32[0] = *(v37 + 4 * v32);
          v39.i32[1] = *(v37 + 4 * v31);
          _D26 = vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_f32(v39, v35), 0), v35)));
          _D26.i16[0] = *(v19 + 2 * _D26.u32[0]);
          __asm { FCVT            S26, H26 }

          _H28 = *(v19 + 2 * _D26.u32[1]);
          __asm { FCVT            S28, H28 }

          _H27 = *(v19 + 2 * llroundf(fminf(fmaxf(*(v37 + 4 * v30) * 8191.0, 0.0), 8191.0)));
          __asm { FCVT            S30, H27 }

          v50 = (((v24 * _S28) + (v23 * _S26)) + (v25 * _S30)) + (v26 * fmaxf(_S26, fmaxf(_S28, _S30)));
          v51 = 8191.0;
          if (v50 <= 8191.0)
          {
            v51 = v50;
            if (v50 < 0.0)
            {
              v51 = 0.0;
            }
          }

          _H27 = *(v20 + 2 * llroundf(v51));
          __asm { FCVT            S31, H27 }

          v54 = _S26 * _S31;
          v55 = _S28 * _S31;
          v56 = _S30 * _S31;
          _H26 = *(v21 + 2 * llroundf(fminf(fmaxf(((v12 * v55) + ((_S26 * _S31) * v11)) + ((_S30 * _S31) * v13), 0.0), 8191.0)));
          __asm { FCVT            S31, H26 }

          v59 = 65535.0;
          if (_S31 <= 65535.0)
          {
            __asm { FCMP            H26, #0 }

            v59 = _S31;
            if (_NF)
            {
              v59 = 0.0;
            }
          }

          v61 = *(v37 + 4 * v29);
          v62 = ((v15 * v55) + (v54 * v14)) + (v56 * v16);
          v63 = ((v18 * v55) + (v54 * v17)) + (v56 * v22);
          _H28 = *(v21 + 2 * llroundf(fminf(fmaxf(v62, 0.0), 8191.0)));
          _H27 = *(v21 + 2 * llroundf(fminf(fmaxf(v63, 0.0), 8191.0)));
          __asm { FCVT            S31, H28 }

          *v38 = llroundf(v59);
          v67 = 65535.0;
          if (_S31 <= 65535.0)
          {
            __asm { FCMP            H28, #0 }

            v67 = _S31;
            if (_NF)
            {
              v67 = 0.0;
            }
          }

          __asm { FCVT            S30, H27 }

          v38[1] = llroundf(v67);
          v70 = 65535.0;
          if (_S30 <= 65535.0)
          {
            __asm { FCMP            H27, #0 }

            v70 = _S30;
            if (_NF)
            {
              v70 = 0.0;
            }
          }

          v37 += 16;
          v38[2] = llroundf(v70);
          v38[3] = llroundf(v61 * 65535.0);
          v38 += 4;
          --v36;
        }

        while (v36);
      }

      v34 += v9;
      v33 += v10;
      ++v6;
    }

    while (v6 != v5);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_RGfA_TRC_Mat_TRC_l64r(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v44 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v42 = a2[2];
  v43 = v16;
  v18 = *a6;
  v38 = a6[1];
  v39 = v17;
  v40 = a6[2];
  v41 = v18;
  if (v15 == 255)
  {
    v19 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v19)
    {
      v20 = 0;
LABEL_14:
      free(v19);
      return v20;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v19 = &v38.i8[-v21];
    bzero(&v38 - v21, v22);
  }

  v23 = a9;
  v24 = v40;
  v25 = vbslq_s8(vcgtq_s64(vaddq_s64(v42, v39), v43), vsubq_s64(v43, v42), v39);
  v26 = vbslq_s8(vcgtq_s64(vaddq_s64(v40, v38), v41), vsubq_s64(v41, v40), v38);
  v27 = vbslq_s8(vcgtq_s64(v26, v25), v25, v26);
  v28.i64[0] = v27.i64[0];
  v28.i64[1] = -1;
  v29 = vaddq_s64(v42, v28);
  if (((*a4 * (v29.i64[1] + v27.i64[1]) + 16 * v29.i64[0]) > *a5 || (v30 = vaddq_s64(v40, v28), (*a8 * (v30.i64[1] + v27.i64[1]) + 8 * v30.i64[0]) > *a9)) && (v38 = v27, v39.i64[0] = a9, fig_log_get_emitter(), v31 = FigSignalErrorAtGM(), v24 = v40, v23 = v39.i64[0], v27 = v38, v31))
  {
    v20 = v31;
  }

  else
  {
    *v19 = v15;
    v32 = v42;
    *(v19 + 4) = v43;
    *(v19 + 20) = v27;
    *(v19 + 36) = v32;
    *(v19 + 5) = v41;
    *(v19 + 6) = v27;
    *(v19 + 7) = v24;
    *(v19 + 7) = a3;
    *(v19 + 8) = a4;
    *(v19 + 9) = a5;
    *(v19 + 16) = a7;
    *(v19 + 17) = a8;
    *(v19 + 18) = v23;
    *(v19 + 19) = a1;
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_RGfA_TRC_Mat_TRC_l64r_GCD);
    if (!v15)
    {
      return 0;
    }

    v34 = (v19 + 160);
    v35 = v15;
    while (1)
    {
      v36 = *v34++;
      v20 = v36;
      if (v36)
      {
        break;
      }

      if (!--v35)
      {
        v20 = 0;
        break;
      }
    }
  }

  if (v15 == 255)
  {
    goto LABEL_14;
  }

  return v20;
}

unsigned __int8 *vt_Copy_RGfA_TRC_Mat_TRC_l64r_GCD(unsigned __int8 *result, uint64_t a2)
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
    v9 = **(result + 8);
    v10 = **(result + 17);
    v11 = *(v8 + 72);
    v12 = *(v8 + 76);
    v13 = *(v8 + 80);
    v14 = *(v8 + 84);
    v15 = *(v8 + 88);
    v16 = *(v8 + 92);
    v17 = *(v8 + 96);
    v18 = *(v8 + 100);
    v19 = *(v8 + 104);
    v20 = v8 + 164;
    v21 = v8 + 16548;
    v22 = v4 + *(result + 15);
    v23 = *(result + 28) * a2 / v2 + *(result + 44);
    v24 = *(v8 + 157);
    v25 = *(v8 + 156);
    v26 = *(v8 + 155);
    v27 = *(v8 + 154);
    v28 = **(result + 16) + v10 * v22 + 8 * *(result + 14);
    v29 = **(result + 7) + v23 * v9 + 16 * *(result + 36);
    v30 = vdup_n_s32(0x45FFF800u);
    do
    {
      if (v7 >= 1)
      {
        v31 = v7;
        v32 = v29;
        v33 = v28;
        do
        {
          v34.i32[0] = *(v32 + 4 * v27);
          v34.i32[1] = *(v32 + 4 * v26);
          _D22 = vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_f32(v34, v30), 0), v30)));
          _D22.i16[0] = *(v20 + 2 * _D22.u32[0]);
          __asm { FCVT            S23, H22 }

          _D22.i16[0] = *(v20 + 2 * _D22.u32[1]);
          __asm { FCVT            S24, H22 }

          _D22.i16[0] = *(v20 + 2 * llroundf(fminf(fmaxf(*(v32 + 4 * v25) * 8191.0, 0.0), 8191.0)));
          __asm { FCVT            S25, H22 }

          _D22.i16[0] = *(v21 + 2 * llroundf(fminf(fmaxf(((v12 * _S24) + (_S23 * v11)) + (_S25 * v13), 0.0), 8191.0)));
          __asm { FCVT            S27, H22 }

          v44 = 65535.0;
          if (_S27 <= 65535.0)
          {
            __asm { FCMP            H22, #0 }

            v44 = _S27;
            if (_NF)
            {
              v44 = 0.0;
            }
          }

          v46 = *(v32 + 4 * v24);
          v47 = ((v15 * _S24) + (_S23 * v14)) + (_S25 * v16);
          v48 = ((v18 * _S24) + (_S23 * v17)) + (_S25 * v19);
          _H24 = *(v21 + 2 * llroundf(fminf(fmaxf(v47, 0.0), 8191.0)));
          _H23 = *(v21 + 2 * llroundf(fminf(fmaxf(v48, 0.0), 8191.0)));
          __asm { FCVT            S27, H24 }

          *v33 = llroundf(v44);
          v52 = 65535.0;
          if (_S27 <= 65535.0)
          {
            __asm { FCMP            H24, #0 }

            v52 = _S27;
            if (_NF)
            {
              v52 = 0.0;
            }
          }

          __asm { FCVT            S26, H23 }

          v33[1] = llroundf(v52);
          v55 = 65535.0;
          if (_S26 <= 65535.0)
          {
            __asm { FCMP            H23, #0 }

            v55 = _S26;
            if (_NF)
            {
              v55 = 0.0;
            }
          }

          v32 += 16;
          v33[2] = llroundf(v55);
          v33[3] = llroundf(v46 * 65535.0);
          v33 += 4;
          --v31;
        }

        while (v31);
      }

      v29 += v9;
      v28 += v10;
      ++v6;
    }

    while (v6 != v5);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_RGfA_rgb_l64r(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v44 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v42 = a2[2];
  v43 = v16;
  v18 = *a6;
  v38 = a6[1];
  v39 = v17;
  v40 = a6[2];
  v41 = v18;
  if (v15 == 255)
  {
    v19 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v19)
    {
      v20 = 0;
LABEL_14:
      free(v19);
      return v20;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v19 = &v38.i8[-v21];
    bzero(&v38 - v21, v22);
  }

  v23 = a9;
  v24 = v40;
  v25 = vbslq_s8(vcgtq_s64(vaddq_s64(v42, v39), v43), vsubq_s64(v43, v42), v39);
  v26 = vbslq_s8(vcgtq_s64(vaddq_s64(v40, v38), v41), vsubq_s64(v41, v40), v38);
  v27 = vbslq_s8(vcgtq_s64(v26, v25), v25, v26);
  v28.i64[0] = v27.i64[0];
  v28.i64[1] = -1;
  v29 = vaddq_s64(v42, v28);
  if (((*a4 * (v29.i64[1] + v27.i64[1]) + 16 * v29.i64[0]) > *a5 || (v30 = vaddq_s64(v40, v28), (*a8 * (v30.i64[1] + v27.i64[1]) + 8 * v30.i64[0]) > *a9)) && (v38 = v27, v39.i64[0] = a9, fig_log_get_emitter(), v31 = FigSignalErrorAtGM(), v24 = v40, v23 = v39.i64[0], v27 = v38, v31))
  {
    v20 = v31;
  }

  else
  {
    *v19 = v15;
    v32 = v42;
    *(v19 + 4) = v43;
    *(v19 + 20) = v27;
    *(v19 + 36) = v32;
    *(v19 + 5) = v41;
    *(v19 + 6) = v27;
    *(v19 + 7) = v24;
    *(v19 + 7) = a3;
    *(v19 + 8) = a4;
    *(v19 + 9) = a5;
    *(v19 + 16) = a7;
    *(v19 + 17) = a8;
    *(v19 + 18) = v23;
    *(v19 + 19) = a1;
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_RGfA_rgb_l64r_GCD);
    if (!v15)
    {
      return 0;
    }

    v34 = (v19 + 160);
    v35 = v15;
    while (1)
    {
      v36 = *v34++;
      v20 = v36;
      if (v36)
      {
        break;
      }

      if (!--v35)
      {
        v20 = 0;
        break;
      }
    }
  }

  if (v15 == 255)
  {
    goto LABEL_14;
  }

  return v20;
}

unsigned __int8 *vt_Copy_RGfA_rgb_l64r_GCD(unsigned __int8 *result, uint64_t a2)
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
    v9 = **(result + 8);
    v10 = **(result + 17);
    v11 = *(v8 + 136);
    v12 = v4 + *(result + 15);
    v13 = *(result + 28) * a2 / v2 + *(result + 44);
    v14 = *(v8 + 157);
    v15 = *(v8 + 156);
    v16 = *(v8 + 155);
    v17 = *(v8 + 154);
    v18 = **(result + 16) + v10 * v12 + 8 * *(result + 14);
    v19 = **(result + 7) + v13 * v9 + 16 * *(result + 36);
    do
    {
      if (v7 >= 1)
      {
        v20 = v7;
        v21 = v19;
        v22 = v18;
        do
        {
          v23 = *(v21 + 4 * v17) * v11;
          v24 = 65535.0;
          if (v23 <= 65535.0)
          {
            v24 = *(v21 + 4 * v17) * v11;
            if (v23 < 0.0)
            {
              v24 = 0.0;
            }
          }

          v25 = *(v21 + 4 * v15);
          v26 = *(v21 + 4 * v14);
          v27 = *(v21 + 4 * v16) * v11;
          *v22 = llroundf(v24);
          v28 = 65535.0;
          if (v27 <= 65535.0)
          {
            v28 = v27;
            if (v27 < 0.0)
            {
              v28 = 0.0;
            }
          }

          v29 = v25 * v11;
          v22[1] = llroundf(v28);
          v30 = (v25 * v11) <= 65535.0;
          v31 = 65535.0;
          if (v30)
          {
            v31 = v29;
            if (v29 < 0.0)
            {
              v31 = 0.0;
            }
          }

          v21 += 16;
          v22[2] = llroundf(v31);
          v22[3] = llroundf(v26 * 65535.0);
          v22 += 4;
          --v20;
        }

        while (v20);
      }

      v19 += v9;
      v18 += v10;
      ++v6;
    }

    while (v6 != v5);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_RGfA_TRC_Tone_Mat_TRC_b64a(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v44 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v42 = a2[2];
  v43 = v16;
  v18 = *a6;
  v38 = a6[1];
  v39 = v17;
  v40 = a6[2];
  v41 = v18;
  if (v15 == 255)
  {
    v19 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v19)
    {
      v20 = 0;
LABEL_14:
      free(v19);
      return v20;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v19 = &v38.i8[-v21];
    bzero(&v38 - v21, v22);
  }

  v23 = a9;
  v24 = v40;
  v25 = vbslq_s8(vcgtq_s64(vaddq_s64(v42, v39), v43), vsubq_s64(v43, v42), v39);
  v26 = vbslq_s8(vcgtq_s64(vaddq_s64(v40, v38), v41), vsubq_s64(v41, v40), v38);
  v27 = vbslq_s8(vcgtq_s64(v26, v25), v25, v26);
  v28.i64[0] = v27.i64[0];
  v28.i64[1] = -1;
  v29 = vaddq_s64(v42, v28);
  if (((*a4 * (v29.i64[1] + v27.i64[1]) + 16 * v29.i64[0]) > *a5 || (v30 = vaddq_s64(v40, v28), (*a8 * (v30.i64[1] + v27.i64[1]) + 8 * v30.i64[0]) > *a9)) && (v38 = v27, v39.i64[0] = a9, fig_log_get_emitter(), v31 = FigSignalErrorAtGM(), v24 = v40, v23 = v39.i64[0], v27 = v38, v31))
  {
    v20 = v31;
  }

  else
  {
    *v19 = v15;
    v32 = v42;
    *(v19 + 4) = v43;
    *(v19 + 20) = v27;
    *(v19 + 36) = v32;
    *(v19 + 5) = v41;
    *(v19 + 6) = v27;
    *(v19 + 7) = v24;
    *(v19 + 7) = a3;
    *(v19 + 8) = a4;
    *(v19 + 9) = a5;
    *(v19 + 16) = a7;
    *(v19 + 17) = a8;
    *(v19 + 18) = v23;
    *(v19 + 19) = a1;
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_RGfA_TRC_Tone_Mat_TRC_b64a_GCD);
    if (!v15)
    {
      return 0;
    }

    v34 = (v19 + 160);
    v35 = v15;
    while (1)
    {
      v36 = *v34++;
      v20 = v36;
      if (v36)
      {
        break;
      }

      if (!--v35)
      {
        v20 = 0;
        break;
      }
    }
  }

  if (v15 == 255)
  {
    goto LABEL_14;
  }

  return v20;
}

unsigned __int8 *vt_Copy_RGfA_TRC_Tone_Mat_TRC_b64a_GCD(unsigned __int8 *result, uint64_t a2)
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
    v9 = **(result + 8);
    v10 = **(result + 17);
    v11 = *(v8 + 72);
    v12 = *(v8 + 76);
    v13 = *(v8 + 80);
    v14 = *(v8 + 84);
    v15 = *(v8 + 88);
    v16 = *(v8 + 92);
    v17 = *(v8 + 96);
    v18 = *(v8 + 100);
    v19 = v8 + 164;
    v20 = v8 + 16548;
    v21 = v8 + 32932;
    v22 = *(v8 + 104);
    v23 = *(v8 + 108);
    v24 = *(v8 + 112);
    v25 = *(v8 + 116);
    v26 = *(v8 + 120);
    v27 = v4 + *(result + 15);
    v28 = *(result + 28) * a2 / v2 + *(result + 44);
    v29 = *(v8 + 157);
    v30 = *(v8 + 156);
    v31 = *(v8 + 155);
    v32 = *(v8 + 154);
    v33 = **(result + 16) + v10 * v27 + 8 * *(result + 14);
    v34 = **(result + 7) + v28 * v9 + 16 * *(result + 36);
    v35 = vdup_n_s32(0x45FFF800u);
    do
    {
      if (v7 >= 1)
      {
        v36 = v7;
        v37 = v34;
        v38 = v33;
        do
        {
          v39.i32[0] = *(v37 + 4 * v32);
          v39.i32[1] = *(v37 + 4 * v31);
          _D26 = vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_f32(v39, v35), 0), v35)));
          _D26.i16[0] = *(v19 + 2 * _D26.u32[0]);
          __asm { FCVT            S26, H26 }

          _H28 = *(v19 + 2 * _D26.u32[1]);
          __asm { FCVT            S28, H28 }

          _H27 = *(v19 + 2 * llroundf(fminf(fmaxf(*(v37 + 4 * v30) * 8191.0, 0.0), 8191.0)));
          __asm { FCVT            S30, H27 }

          v50 = (((v24 * _S28) + (v23 * _S26)) + (v25 * _S30)) + (v26 * fmaxf(_S26, fmaxf(_S28, _S30)));
          v51 = 8191.0;
          if (v50 <= 8191.0)
          {
            v51 = v50;
            if (v50 < 0.0)
            {
              v51 = 0.0;
            }
          }

          _H27 = *(v20 + 2 * llroundf(v51));
          __asm { FCVT            S31, H27 }

          v54 = _S26 * _S31;
          v55 = _S28 * _S31;
          v56 = _S30 * _S31;
          _H30 = *(v21 + 2 * llroundf(fminf(fmaxf(((v12 * v55) + ((_S26 * _S31) * v11)) + ((_S30 * _S31) * v13), 0.0), 8191.0)));
          __asm { FCVT            S31, H30 }

          v59 = 65535.0;
          if (_S31 <= 65535.0)
          {
            __asm { FCMP            H30, #0 }

            v59 = _S31;
            if (_NF)
            {
              v59 = 0.0;
            }
          }

          _H31 = *(v21 + 2 * llroundf(fminf(fmaxf(((v15 * v55) + (v54 * v14)) + (v56 * v16), 0.0), 8191.0)));
          __asm { FCVT            S8, H31 }

          v63 = 65535.0;
          if (_S8 <= 65535.0)
          {
            __asm { FCMP            H31, #0 }

            v63 = _S8;
            if (_NF)
            {
              v63 = 0.0;
            }
          }

          _H28 = *(v21 + 2 * llroundf(fminf(fmaxf(((v18 * v55) + (v54 * v17)) + (v56 * v22), 0.0), 8191.0)));
          __asm { FCVT            S29, H28 }

          v67 = 65535.0;
          if (_S29 <= 65535.0)
          {
            __asm { FCMP            H28, #0 }

            v67 = _S29;
            if (_NF)
            {
              v67 = 0.0;
            }
          }

          v69 = *(v37 + 4 * v29);
          v37 += 16;
          *v38 = __rev16(llroundf(v69 * 65535.0));
          v38[1] = __rev16(llroundf(v59));
          v38[2] = __rev16(llroundf(v63));
          v38[3] = __rev16(llroundf(v67));
          v38 += 4;
          --v36;
        }

        while (v36);
      }

      v34 += v9;
      v33 += v10;
      ++v6;
    }

    while (v6 != v5);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_RGfA_TRC_Mat_TRC_b64a(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v44 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v42 = a2[2];
  v43 = v16;
  v18 = *a6;
  v38 = a6[1];
  v39 = v17;
  v40 = a6[2];
  v41 = v18;
  if (v15 == 255)
  {
    v19 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v19)
    {
      v20 = 0;
LABEL_14:
      free(v19);
      return v20;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v19 = &v38.i8[-v21];
    bzero(&v38 - v21, v22);
  }

  v23 = a9;
  v24 = v40;
  v25 = vbslq_s8(vcgtq_s64(vaddq_s64(v42, v39), v43), vsubq_s64(v43, v42), v39);
  v26 = vbslq_s8(vcgtq_s64(vaddq_s64(v40, v38), v41), vsubq_s64(v41, v40), v38);
  v27 = vbslq_s8(vcgtq_s64(v26, v25), v25, v26);
  v28.i64[0] = v27.i64[0];
  v28.i64[1] = -1;
  v29 = vaddq_s64(v42, v28);
  if (((*a4 * (v29.i64[1] + v27.i64[1]) + 16 * v29.i64[0]) > *a5 || (v30 = vaddq_s64(v40, v28), (*a8 * (v30.i64[1] + v27.i64[1]) + 8 * v30.i64[0]) > *a9)) && (v38 = v27, v39.i64[0] = a9, fig_log_get_emitter(), v31 = FigSignalErrorAtGM(), v24 = v40, v23 = v39.i64[0], v27 = v38, v31))
  {
    v20 = v31;
  }

  else
  {
    *v19 = v15;
    v32 = v42;
    *(v19 + 4) = v43;
    *(v19 + 20) = v27;
    *(v19 + 36) = v32;
    *(v19 + 5) = v41;
    *(v19 + 6) = v27;
    *(v19 + 7) = v24;
    *(v19 + 7) = a3;
    *(v19 + 8) = a4;
    *(v19 + 9) = a5;
    *(v19 + 16) = a7;
    *(v19 + 17) = a8;
    *(v19 + 18) = v23;
    *(v19 + 19) = a1;
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_RGfA_TRC_Mat_TRC_b64a_GCD);
    if (!v15)
    {
      return 0;
    }

    v34 = (v19 + 160);
    v35 = v15;
    while (1)
    {
      v36 = *v34++;
      v20 = v36;
      if (v36)
      {
        break;
      }

      if (!--v35)
      {
        v20 = 0;
        break;
      }
    }
  }

  if (v15 == 255)
  {
    goto LABEL_14;
  }

  return v20;
}

unsigned __int8 *vt_Copy_RGfA_TRC_Mat_TRC_b64a_GCD(unsigned __int8 *result, uint64_t a2)
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
    v9 = **(result + 8);
    v10 = **(result + 17);
    v11 = *(v8 + 72);
    v12 = *(v8 + 76);
    v13 = *(v8 + 80);
    v14 = *(v8 + 84);
    v15 = *(v8 + 88);
    v16 = *(v8 + 92);
    v17 = *(v8 + 96);
    v18 = *(v8 + 100);
    v19 = *(v8 + 104);
    v20 = v8 + 164;
    v21 = v8 + 16548;
    v22 = v4 + *(result + 15);
    v23 = *(result + 28) * a2 / v2 + *(result + 44);
    v24 = *(v8 + 157);
    v25 = *(v8 + 156);
    v26 = *(v8 + 155);
    v27 = *(v8 + 154);
    v28 = **(result + 16) + v10 * v22 + 8 * *(result + 14);
    v29 = **(result + 7) + v23 * v9 + 16 * *(result + 36);
    v30 = vdup_n_s32(0x45FFF800u);
    do
    {
      if (v7 >= 1)
      {
        v31 = v7;
        v32 = v29;
        v33 = v28;
        do
        {
          v34.i32[0] = *(v32 + 4 * v27);
          v34.i32[1] = *(v32 + 4 * v26);
          _D22 = vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_f32(v34, v30), 0), v30)));
          _D22.i16[0] = *(v20 + 2 * _D22.u32[0]);
          __asm { FCVT            S23, H22 }

          _D22.i16[0] = *(v20 + 2 * _D22.u32[1]);
          __asm { FCVT            S24, H22 }

          _D22.i16[0] = *(v20 + 2 * llroundf(fminf(fmaxf(*(v32 + 4 * v25) * 8191.0, 0.0), 8191.0)));
          __asm { FCVT            S25, H22 }

          _H26 = *(v21 + 2 * llroundf(fminf(fmaxf(((v12 * _S24) + (_S23 * v11)) + (_S25 * v13), 0.0), 8191.0)));
          __asm { FCVT            S27, H26 }

          v45 = 65535.0;
          if (_S27 <= 65535.0)
          {
            __asm { FCMP            H26, #0 }

            v45 = _S27;
            if (_NF)
            {
              v45 = 0.0;
            }
          }

          _H27 = *(v21 + 2 * llroundf(fminf(fmaxf(((v15 * _S24) + (_S23 * v14)) + (_S25 * v16), 0.0), 8191.0)));
          __asm { FCVT            S28, H27 }

          v49 = 65535.0;
          if (_S28 <= 65535.0)
          {
            __asm { FCMP            H27, #0 }

            v49 = _S28;
            if (_NF)
            {
              v49 = 0.0;
            }
          }

          _H24 = *(v21 + 2 * llroundf(fminf(fmaxf(((v18 * _S24) + (_S23 * v17)) + (_S25 * v19), 0.0), 8191.0)));
          __asm { FCVT            S25, H24 }

          v53 = 65535.0;
          if (_S25 <= 65535.0)
          {
            __asm { FCMP            H24, #0 }

            v53 = _S25;
            if (_NF)
            {
              v53 = 0.0;
            }
          }

          v55 = *(v32 + 4 * v24);
          v32 += 16;
          *v33 = __rev16(llroundf(v55 * 65535.0));
          v33[1] = __rev16(llroundf(v45));
          v33[2] = __rev16(llroundf(v49));
          v33[3] = __rev16(llroundf(v53));
          v33 += 4;
          --v31;
        }

        while (v31);
      }

      v29 += v9;
      v28 += v10;
      ++v6;
    }

    while (v6 != v5);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_RGfA_rgb_b64a(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v44 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v42 = a2[2];
  v43 = v16;
  v18 = *a6;
  v38 = a6[1];
  v39 = v17;
  v40 = a6[2];
  v41 = v18;
  if (v15 == 255)
  {
    v19 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v19)
    {
      v20 = 0;
LABEL_14:
      free(v19);
      return v20;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v19 = &v38.i8[-v21];
    bzero(&v38 - v21, v22);
  }

  v23 = a9;
  v24 = v40;
  v25 = vbslq_s8(vcgtq_s64(vaddq_s64(v42, v39), v43), vsubq_s64(v43, v42), v39);
  v26 = vbslq_s8(vcgtq_s64(vaddq_s64(v40, v38), v41), vsubq_s64(v41, v40), v38);
  v27 = vbslq_s8(vcgtq_s64(v26, v25), v25, v26);
  v28.i64[0] = v27.i64[0];
  v28.i64[1] = -1;
  v29 = vaddq_s64(v42, v28);
  if (((*a4 * (v29.i64[1] + v27.i64[1]) + 16 * v29.i64[0]) > *a5 || (v30 = vaddq_s64(v40, v28), (*a8 * (v30.i64[1] + v27.i64[1]) + 8 * v30.i64[0]) > *a9)) && (v38 = v27, v39.i64[0] = a9, fig_log_get_emitter(), v31 = FigSignalErrorAtGM(), v24 = v40, v23 = v39.i64[0], v27 = v38, v31))
  {
    v20 = v31;
  }

  else
  {
    *v19 = v15;
    v32 = v42;
    *(v19 + 4) = v43;
    *(v19 + 20) = v27;
    *(v19 + 36) = v32;
    *(v19 + 5) = v41;
    *(v19 + 6) = v27;
    *(v19 + 7) = v24;
    *(v19 + 7) = a3;
    *(v19 + 8) = a4;
    *(v19 + 9) = a5;
    *(v19 + 16) = a7;
    *(v19 + 17) = a8;
    *(v19 + 18) = v23;
    *(v19 + 19) = a1;
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_RGfA_rgb_b64a_GCD);
    if (!v15)
    {
      return 0;
    }

    v34 = (v19 + 160);
    v35 = v15;
    while (1)
    {
      v36 = *v34++;
      v20 = v36;
      if (v36)
      {
        break;
      }

      if (!--v35)
      {
        v20 = 0;
        break;
      }
    }
  }

  if (v15 == 255)
  {
    goto LABEL_14;
  }

  return v20;
}

unsigned __int8 *vt_Copy_RGfA_rgb_b64a_GCD(unsigned __int8 *result, uint64_t a2)
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
    v9 = **(result + 8);
    v10 = **(result + 17);
    v11 = *(v8 + 136);
    v12 = v4 + *(result + 15);
    v13 = *(result + 28) * a2 / v2 + *(result + 44);
    v14 = *(v8 + 157);
    v15 = *(v8 + 156);
    v16 = *(v8 + 155);
    v17 = *(v8 + 154);
    v18 = **(result + 16) + v10 * v12 + 8 * *(result + 14);
    v19 = **(result + 7) + v13 * v9 + 16 * *(result + 36);
    do
    {
      if (v7 >= 1)
      {
        v20 = v7;
        v21 = v19;
        v22 = v18;
        do
        {
          v23 = *(v21 + 4 * v17) * v11;
          v24 = 65535.0;
          if (v23 <= 65535.0)
          {
            v24 = *(v21 + 4 * v17) * v11;
            if (v23 < 0.0)
            {
              v24 = 0.0;
            }
          }

          v25 = *(v21 + 4 * v16) * v11;
          v26 = 65535.0;
          if (v25 <= 65535.0)
          {
            v26 = *(v21 + 4 * v16) * v11;
            if (v25 < 0.0)
            {
              v26 = 0.0;
            }
          }

          v27 = *(v21 + 4 * v15) * v11;
          v28 = 65535.0;
          if (v27 <= 65535.0)
          {
            v28 = *(v21 + 4 * v15) * v11;
            if (v27 < 0.0)
            {
              v28 = 0.0;
            }
          }

          v29 = *(v21 + 4 * v14);
          v21 += 16;
          *v22 = __rev16(llroundf(v29 * 65535.0));
          v22[1] = __rev16(llroundf(v24));
          v22[2] = __rev16(llroundf(v26));
          v22[3] = __rev16(llroundf(v28));
          v22 += 4;
          --v20;
        }

        while (v20);
      }

      v19 += v9;
      v18 += v10;
      ++v6;
    }

    while (v6 != v5);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_RGfA_TRC_Tone_Mat_TRC_RGhA_neon_fp16(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v44 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v42 = a2[2];
  v43 = v16;
  v18 = *a6;
  v38 = a6[1];
  v39 = v17;
  v40 = a6[2];
  v41 = v18;
  if (v15 == 255)
  {
    v19 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v19)
    {
      v20 = 0;
LABEL_14:
      free(v19);
      return v20;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v19 = &v38.i8[-v21];
    bzero(&v38 - v21, v22);
  }

  v23 = a9;
  v24 = v40;
  v25 = vbslq_s8(vcgtq_s64(vaddq_s64(v42, v39), v43), vsubq_s64(v43, v42), v39);
  v26 = vbslq_s8(vcgtq_s64(vaddq_s64(v40, v38), v41), vsubq_s64(v41, v40), v38);
  v27 = vbslq_s8(vcgtq_s64(v26, v25), v25, v26);
  v28.i64[0] = v27.i64[0];
  v28.i64[1] = -1;
  v29 = vaddq_s64(v42, v28);
  if (((*a4 * (v29.i64[1] + v27.i64[1]) + 16 * v29.i64[0]) > *a5 || (v30 = vaddq_s64(v40, v28), (*a8 * (v30.i64[1] + v27.i64[1]) + 8 * v30.i64[0]) > *a9)) && (v38 = v27, v39.i64[0] = a9, fig_log_get_emitter(), v31 = FigSignalErrorAtGM(), v24 = v40, v23 = v39.i64[0], v27 = v38, v31))
  {
    v20 = v31;
  }

  else
  {
    *v19 = v15;
    v32 = v42;
    *(v19 + 4) = v43;
    *(v19 + 20) = v27;
    *(v19 + 36) = v32;
    *(v19 + 5) = v41;
    *(v19 + 6) = v27;
    *(v19 + 7) = v24;
    *(v19 + 7) = a3;
    *(v19 + 8) = a4;
    *(v19 + 9) = a5;
    *(v19 + 16) = a7;
    *(v19 + 17) = a8;
    *(v19 + 18) = v23;
    *(v19 + 19) = a1;
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_RGfA_TRC_Tone_Mat_TRC_RGhA_neon_fp16_GCD);
    if (!v15)
    {
      return 0;
    }

    v34 = (v19 + 160);
    v35 = v15;
    while (1)
    {
      v36 = *v34++;
      v20 = v36;
      if (v36)
      {
        break;
      }

      if (!--v35)
      {
        v20 = 0;
        break;
      }
    }
  }

  if (v15 == 255)
  {
    goto LABEL_14;
  }

  return v20;
}

unsigned __int8 *vt_Copy_RGfA_TRC_Tone_Mat_TRC_RGhA_neon_fp16_GCD(unsigned __int8 *result, uint64_t a2)
{
  v2 = 0;
  v3 = *(result + 36);
  v4 = *result;
  v5 = *(result + 14);
  v6 = *(result + 12);
  v7 = *(result + 13);
  v8 = *(result + 19);
  v9 = v7 * a2 / v4;
  v10 = **(result + 8);
  v11 = **(result + 7);
  v12 = v10 * (*(result + 28) * a2 / v4 + *(result + 44));
  v13 = **(result + 17);
  v14 = **(result + 16);
  v15 = v13 * (v9 + *(result + 15));
  v16 = *(v8 + 154);
  v133[0] = *(v8 + 154);
  v17 = *(v8 + 155);
  v133[1] = *(v8 + 155);
  v18 = *(v8 + 156);
  v133[2] = *(v8 + 156);
  v19 = *(v8 + 157);
  v133[3] = *(v8 + 157);
  _S19 = *(v8 + 72);
  _S21 = *(v8 + 76);
  _S22 = *(v8 + 80);
  _S23 = *(v8 + 84);
  _S24 = *(v8 + 88);
  _S25 = *(v8 + 92);
  _S29 = *(v8 + 96);
  _S31 = *(v8 + 100);
  _S8 = *(v8 + 104);
  v129 = *(v8 + 112);
  v130 = *(v8 + 108);
  v128 = *(v8 + 116);
  _S20 = *(v8 + 120);
  memset(v132, 0, sizeof(v132));
  v30 = (v7 + v7 * a2) / v4;
  do
  {
    v31 = 0;
    v32 = v133[v2];
    v33 = *(v132 + v2);
    do
    {
      v131 = v33;
      *(&v131 | v31 & 7) = v32 + 4 * v31;
      v33 = v131;
      ++v31;
    }

    while (v31 != 8);
    *(v132 + v2++) = v131;
  }

  while (v2 != 4);
  v34 = v30 - v9;
  if (v30 - v9 >= 1)
  {
    v35 = 0;
    v36 = v8 + 16548;
    _S0 = v130;
    __asm { FCVT            H0, S0 }

    v127 = *&_S0;
    _S0 = v128;
    _S1 = v129;
    __asm
    {
      FCVT            H10, S1
      FCVT            H11, S0
    }

    v46 = v8 + 32932;
    v47 = v8 + 164;
    __asm
    {
      FCVT            H12, S20
      FCVT            H13, S19
      FCVT            H14, S21
      FCVT            H15, S22
      FCVT            H0, S23
      FCVT            H1, S24
    }

    v54 = v14 + v15 + 8 * v5;
    __asm
    {
      FCVT            H2, S25
      FCVT            H3, S29
    }

    v57 = v11 + v12 + 16 * v3;
    __asm
    {
      FCVT            H4, S31
      FCVT            H9, S8
    }

    v117 = v18;
    v116 = v17;
    v60 = v16;
    v61.i64[0] = 0x7000700070007000;
    v61.i64[1] = 0x7000700070007000;
    v62.i64[0] = 0x9000900090009000;
    v62.i64[1] = 0x9000900090009000;
    v125 = _S21;
    v126 = _S19;
    v123 = _S23;
    v124 = _S22;
    v121 = _S25;
    v122 = _S24;
    v119 = _S31;
    v120 = _S29;
    v118 = _S8;
    do
    {
      if (v6 < 8)
      {
        v87 = 0;
        v65 = v57;
        v64 = v54;
      }

      else
      {
        v63 = 0;
        v64 = v54;
        v65 = v57;
        do
        {
          v66 = v65;
          v136 = vld4q_f32(v66);
          v66 += 16;
          v135 = vld4q_f32(v66);
          v67 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmulq_f16(vcvt_hight_f16_f32(vcvt_f16_f32(v136.val[0]), v135.val[0]), v61), 0), v62));
          v68.i16[0] = *(v47 + 2 * v67.u16[0]);
          v69 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmulq_f16(vcvt_hight_f16_f32(vcvt_f16_f32(v136.val[1]), v135.val[1]), v61), 0), v62));
          v67.i16[0] = *(v47 + 2 * v69.u16[0]);
          v68.i16[1] = *(v47 + 2 * v67.u16[1]);
          v70 = (v47 + 2 * v69.u16[4]);
          v68.i16[2] = *(v47 + 2 * v67.u16[2]);
          v67.i16[1] = *(v47 + 2 * v69.u16[1]);
          v67.i16[2] = *(v47 + 2 * v69.u16[2]);
          v71 = (v47 + 2 * v69.u16[5]);
          v72 = (v47 + 2 * v69.u16[6]);
          v68.i16[3] = *(v47 + 2 * v67.u16[3]);
          v73 = (v47 + 2 * v69.u16[7]);
          v67.i16[3] = *(v47 + 2 * v69.u16[3]);
          v74 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmulq_f16(vcvt_hight_f16_f32(vcvt_f16_f32(v136.val[2]), v135.val[2]), v61), 0), v62));
          v68.i16[4] = *(v47 + 2 * v67.u16[4]);
          v75.i16[0] = *(v47 + 2 * v74.u16[0]);
          v67.i16[4] = *v70;
          v68.i16[5] = *(v47 + 2 * v67.u16[5]);
          v67.i16[5] = *v71;
          v68.i16[6] = *(v47 + 2 * v67.u16[6]);
          v67.i16[6] = *v72;
          v75.i16[1] = *(v47 + 2 * v74.u16[1]);
          v68.i16[7] = *(v47 + 2 * v67.u16[7]);
          v75.i16[2] = *(v47 + 2 * v74.u16[2]);
          v75.i16[3] = *(v47 + 2 * v74.u16[3]);
          v67.i16[7] = *v73;
          v75.i16[4] = *(v47 + 2 * v74.u16[4]);
          v75.i16[5] = *(v47 + 2 * v74.u16[5]);
          v75.i16[6] = *(v47 + 2 * v74.u16[6]);
          v75.i16[7] = *(v47 + 2 * v74.u16[7]);
          v76 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v68, v127), v67, _H10), v75, _H11), vmaxq_f16(vmaxq_f16(v68, v67), v75), _H12), 0), v62));
          v77.i16[0] = *(v36 + 2 * v76.u16[0]);
          v77.i16[1] = *(v36 + 2 * v76.u16[1]);
          v77.i16[2] = *(v36 + 2 * v76.u16[2]);
          v77.i16[3] = *(v36 + 2 * v76.u16[3]);
          v77.i16[4] = *(v36 + 2 * v76.u16[4]);
          v77.i16[5] = *(v36 + 2 * v76.u16[5]);
          v77.i16[6] = *(v36 + 2 * v76.u16[6]);
          v77.i16[7] = *(v36 + 2 * v76.u16[7]);
          v134.val[1] = vmulq_f16(v68, v77);
          v134.val[2] = vmulq_f16(v67, v77);
          v134.val[0] = vmulq_f16(v75, v77);
          v78 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v134.val[1], _H0), v134.val[2], _H1), v134.val[0], _H2);
          v79 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v134.val[1], _H13), v134.val[2], _H14), v134.val[0], _H15), 0), v62));
          v80 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v134.val[0], _H9), v134.val[2], _H4), v134.val[1], _H3);
          v134.val[0].i16[0] = *(v46 + 2 * v79.u16[0]);
          v134.val[0].i16[1] = *(v46 + 2 * v79.u16[1]);
          v134.val[0].i16[2] = *(v46 + 2 * v79.u16[2]);
          v134.val[0].i16[3] = *(v46 + 2 * v79.u16[3]);
          v81 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v78, 0), v62));
          v134.val[0].i16[4] = *(v46 + 2 * v79.u16[4]);
          v134.val[0].i16[5] = *(v46 + 2 * v79.u16[5]);
          v82 = (v46 + 2 * v81.u16[4]);
          v134.val[0].i16[6] = *(v46 + 2 * v79.u16[6]);
          v134.val[0].i16[7] = *(v46 + 2 * v79.u16[7]);
          v83 = (v46 + 2 * v81.u16[5]);
          v84 = (v46 + 2 * v81.u16[6]);
          v134.val[1].i16[0] = *(v46 + 2 * v81.u16[0]);
          v134.val[1].i16[1] = *(v46 + 2 * v81.u16[1]);
          v134.val[1].i16[2] = *(v46 + 2 * v81.u16[2]);
          v134.val[1].i16[3] = *(v46 + 2 * v81.u16[3]);
          v85 = (v46 + 2 * v81.u16[7]);
          v86 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v80, 0), v62));
          v134.val[1].i16[4] = *v82;
          v134.val[1].i16[5] = *v83;
          v134.val[1].i16[6] = *v84;
          v134.val[1].i16[7] = *v85;
          v134.val[2].i16[0] = *(v46 + 2 * v86.u16[0]);
          v134.val[2].i16[1] = *(v46 + 2 * v86.u16[1]);
          v134.val[2].i16[2] = *(v46 + 2 * v86.u16[2]);
          v134.val[2].i16[3] = *(v46 + 2 * v86.u16[3]);
          v134.val[2].i16[4] = *(v46 + 2 * v86.u16[4]);
          v134.val[2].i16[5] = *(v46 + 2 * v86.u16[5]);
          v134.val[2].i16[6] = *(v46 + 2 * v86.u16[6]);
          v134.val[2].i16[7] = *(v46 + 2 * v86.u16[7]);
          v134.val[3] = vcvt_hight_f16_f32(vcvt_f16_f32(v136.val[3]), v135.val[3]);
          vst4q_s16(v64, v134);
          v64 += 32;
          v65 += 32;
          v63 += 8;
        }

        while (v63 < v6 - 7);
        v87 = v6 & 0x7FFFFFF8;
        _S21 = v125;
        _S19 = v126;
        _S23 = v123;
        _S22 = v124;
        _S25 = v121;
        _S24 = v122;
        _S31 = v119;
        _S29 = v120;
        _S8 = v118;
      }

      v88 = v6 - v87;
      if (v6 > v87)
      {
        v89 = &v65[v19];
        v90 = &v65[v117];
        v91 = &v65[v116];
        v92 = &v65[v60];
        do
        {
          v93.i32[0] = *v92;
          v93.i32[1] = *v91;
          _D6 = vdup_n_s32(0x45FFF800u);
          v95 = vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_f32(v93, _D6), 0), _D6)));
          _D6.i16[0] = *(v47 + 2 * v95.u32[0]);
          __asm { FCVT            S6, H6 }

          _H16 = *(v47 + 2 * v95.u32[1]);
          __asm { FCVT            S7, H16 }

          _H16 = *(v47 + 2 * llroundf(fminf(fmaxf(*v90 * 8191.0, 0.0), 8191.0)));
          __asm { FCVT            S16, H16 }

          v101 = (((v129 * _S7) + (v130 * _S6)) + (v128 * _S16)) + (_S20 * fmaxf(_S6, fmaxf(_S7, _S16)));
          v102 = 8191.0;
          if (v101 <= 8191.0)
          {
            v102 = v101;
            if (v101 < 0.0)
            {
              v102 = 0.0;
            }
          }

          _H17 = *(v36 + 2 * llroundf(v102));
          __asm { FCVT            S17, H17 }

          v105 = _S6 * _S17;
          v106 = _S7 * _S17;
          v107 = _S16 * _S17;
          v108 = ((_S21 * v106) + (v105 * _S19)) + (v107 * _S22);
          v109 = ((_S24 * v106) + (v105 * _S23)) + (v107 * _S25);
          v110 = ((_S31 * v106) + (v105 * _S29)) + (v107 * _S8);
          LOWORD(v107) = *(v46 + 2 * llroundf(fminf(fmaxf(v109, 0.0), 8191.0)));
          v111 = *(v46 + 2 * llroundf(fminf(fmaxf(v110, 0.0), 8191.0)));
          v112 = *v89;
          v89 += 4;
          _S6 = v112;
          *v64 = *(v46 + 2 * llroundf(fminf(fmaxf(v108, 0.0), 8191.0)));
          v64[1] = LOWORD(v107);
          v64[2] = v111;
          v90 += 4;
          __asm { FCVT            H5, S6 }

          v64[3] = _H5;
          v91 += 4;
          v92 += 4;
          v64 += 4;
          --v88;
        }

        while (v88);
      }

      v57 += v10;
      v54 += v13;
      ++v35;
    }

    while (v35 != v34);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_RGfA_TRC_Tone_Mat_TRC_RGhA(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v44 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v42 = a2[2];
  v43 = v16;
  v18 = *a6;
  v38 = a6[1];
  v39 = v17;
  v40 = a6[2];
  v41 = v18;
  if (v15 == 255)
  {
    v19 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v19)
    {
      v20 = 0;
LABEL_14:
      free(v19);
      return v20;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v19 = &v38.i8[-v21];
    bzero(&v38 - v21, v22);
  }

  v23 = a9;
  v24 = v40;
  v25 = vbslq_s8(vcgtq_s64(vaddq_s64(v42, v39), v43), vsubq_s64(v43, v42), v39);
  v26 = vbslq_s8(vcgtq_s64(vaddq_s64(v40, v38), v41), vsubq_s64(v41, v40), v38);
  v27 = vbslq_s8(vcgtq_s64(v26, v25), v25, v26);
  v28.i64[0] = v27.i64[0];
  v28.i64[1] = -1;
  v29 = vaddq_s64(v42, v28);
  if (((*a4 * (v29.i64[1] + v27.i64[1]) + 16 * v29.i64[0]) > *a5 || (v30 = vaddq_s64(v40, v28), (*a8 * (v30.i64[1] + v27.i64[1]) + 8 * v30.i64[0]) > *a9)) && (v38 = v27, v39.i64[0] = a9, fig_log_get_emitter(), v31 = FigSignalErrorAtGM(), v24 = v40, v23 = v39.i64[0], v27 = v38, v31))
  {
    v20 = v31;
  }

  else
  {
    *v19 = v15;
    v32 = v42;
    *(v19 + 4) = v43;
    *(v19 + 20) = v27;
    *(v19 + 36) = v32;
    *(v19 + 5) = v41;
    *(v19 + 6) = v27;
    *(v19 + 7) = v24;
    *(v19 + 7) = a3;
    *(v19 + 8) = a4;
    *(v19 + 9) = a5;
    *(v19 + 16) = a7;
    *(v19 + 17) = a8;
    *(v19 + 18) = v23;
    *(v19 + 19) = a1;
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_RGfA_TRC_Tone_Mat_TRC_RGhA_GCD);
    if (!v15)
    {
      return 0;
    }

    v34 = (v19 + 160);
    v35 = v15;
    while (1)
    {
      v36 = *v34++;
      v20 = v36;
      if (v36)
      {
        break;
      }

      if (!--v35)
      {
        v20 = 0;
        break;
      }
    }
  }

  if (v15 == 255)
  {
    goto LABEL_14;
  }

  return v20;
}

unsigned __int8 *vt_Copy_RGfA_TRC_Tone_Mat_TRC_RGhA_GCD(unsigned __int8 *result, uint64_t a2)
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
    v9 = **(result + 8);
    v10 = **(result + 17);
    v11 = *(v8 + 72);
    v12 = *(v8 + 76);
    v13 = *(v8 + 80);
    v14 = *(v8 + 84);
    v15 = *(v8 + 88);
    v16 = *(v8 + 92);
    v17 = *(v8 + 96);
    v18 = *(v8 + 100);
    v19 = v8 + 164;
    v20 = v8 + 16548;
    v21 = v8 + 32932;
    v22 = *(v8 + 104);
    v23 = *(v8 + 108);
    v24 = *(v8 + 112);
    v25 = *(v8 + 116);
    v26 = *(v8 + 120);
    v27 = v4 + *(result + 15);
    v28 = *(result + 28) * a2 / v2 + *(result + 44);
    v29 = *(v8 + 157);
    v30 = *(v8 + 156);
    v31 = *(v8 + 155);
    v32 = *(v8 + 154);
    v33 = **(result + 16) + v10 * v27 + 8 * *(result + 14);
    v34 = **(result + 7) + v28 * v9 + 16 * *(result + 36);
    v35 = vdup_n_s32(0x45FFF800u);
    do
    {
      if (v7 >= 1)
      {
        v36 = v7;
        v37 = v34;
        v38 = v33;
        do
        {
          v39.i32[0] = *(v37 + 4 * v32);
          v39.i32[1] = *(v37 + 4 * v31);
          _D25 = vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_f32(v39, v35), 0), v35)));
          _D25.i16[0] = *(v19 + 2 * _D25.u32[0]);
          __asm { FCVT            S25, H25 }

          _H27 = *(v19 + 2 * _D25.u32[1]);
          __asm { FCVT            S26, H27 }

          _H27 = *(v19 + 2 * llroundf(fminf(fmaxf(*(v37 + 4 * v30) * 8191.0, 0.0), 8191.0)));
          __asm { FCVT            S27, H27 }

          v50 = (((v24 * _S26) + (v23 * _S25)) + (v25 * _S27)) + (v26 * fmaxf(_S25, fmaxf(_S26, _S27)));
          v51 = 8191.0;
          if (v50 <= 8191.0)
          {
            v51 = v50;
            if (v50 < 0.0)
            {
              v51 = 0.0;
            }
          }

          _S29 = *(v37 + 4 * v29);
          v37 += 16;
          _H28 = *(v20 + 2 * llroundf(v51));
          __asm { FCVT            S28, H28 }

          v55 = _S25 * _S28;
          v56 = _S26 * _S28;
          v57 = _S27 * _S28;
          v58 = ((v12 * v56) + (v55 * v11)) + (v57 * v13);
          v59 = ((v15 * v56) + (v55 * v14)) + (v57 * v16);
          _S25 = ((v18 * v56) + (v55 * v17)) + (v57 * v22);
          LOWORD(v57) = *(v21 + 2 * llroundf(fminf(fmaxf(v59, 0.0), 8191.0)));
          LOWORD(_S25) = *(v21 + 2 * llroundf(fminf(fmaxf(_S25, 0.0), 8191.0)));
          *v38 = *(v21 + 2 * llroundf(fminf(fmaxf(v58, 0.0), 8191.0)));
          v38[1] = LOWORD(v57);
          v38[2] = LOWORD(_S25);
          __asm { FCVT            H25, S29 }

          v38[3] = LOWORD(_S25);
          v38 += 4;
          --v36;
        }

        while (v36);
      }

      v34 += v9;
      v33 += v10;
      ++v6;
    }

    while (v6 != v5);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_RGfA_TRC_Mat_TRC_RGhA_neon_fp16(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v44 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v42 = a2[2];
  v43 = v16;
  v18 = *a6;
  v38 = a6[1];
  v39 = v17;
  v40 = a6[2];
  v41 = v18;
  if (v15 == 255)
  {
    v19 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v19)
    {
      v20 = 0;
LABEL_14:
      free(v19);
      return v20;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v19 = &v38.i8[-v21];
    bzero(&v38 - v21, v22);
  }

  v23 = a9;
  v24 = v40;
  v25 = vbslq_s8(vcgtq_s64(vaddq_s64(v42, v39), v43), vsubq_s64(v43, v42), v39);
  v26 = vbslq_s8(vcgtq_s64(vaddq_s64(v40, v38), v41), vsubq_s64(v41, v40), v38);
  v27 = vbslq_s8(vcgtq_s64(v26, v25), v25, v26);
  v28.i64[0] = v27.i64[0];
  v28.i64[1] = -1;
  v29 = vaddq_s64(v42, v28);
  if (((*a4 * (v29.i64[1] + v27.i64[1]) + 16 * v29.i64[0]) > *a5 || (v30 = vaddq_s64(v40, v28), (*a8 * (v30.i64[1] + v27.i64[1]) + 8 * v30.i64[0]) > *a9)) && (v38 = v27, v39.i64[0] = a9, fig_log_get_emitter(), v31 = FigSignalErrorAtGM(), v24 = v40, v23 = v39.i64[0], v27 = v38, v31))
  {
    v20 = v31;
  }

  else
  {
    *v19 = v15;
    v32 = v42;
    *(v19 + 4) = v43;
    *(v19 + 20) = v27;
    *(v19 + 36) = v32;
    *(v19 + 5) = v41;
    *(v19 + 6) = v27;
    *(v19 + 7) = v24;
    *(v19 + 7) = a3;
    *(v19 + 8) = a4;
    *(v19 + 9) = a5;
    *(v19 + 16) = a7;
    *(v19 + 17) = a8;
    *(v19 + 18) = v23;
    *(v19 + 19) = a1;
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_RGfA_TRC_Mat_TRC_RGhA_neon_fp16_GCD);
    if (!v15)
    {
      return 0;
    }

    v34 = (v19 + 160);
    v35 = v15;
    while (1)
    {
      v36 = *v34++;
      v20 = v36;
      if (v36)
      {
        break;
      }

      if (!--v35)
      {
        v20 = 0;
        break;
      }
    }
  }

  if (v15 == 255)
  {
    goto LABEL_14;
  }

  return v20;
}

unsigned __int8 *vt_Copy_RGfA_TRC_Mat_TRC_RGhA_neon_fp16_GCD(unsigned __int8 *result, uint64_t a2)
{
  v2 = 0;
  v3 = *(result + 36);
  v4 = *result;
  v5 = *(result + 14);
  v6 = *(result + 12);
  v7 = *(result + 13);
  v8 = v7 * a2 / v4;
  v9 = *(result + 19);
  v10 = **(result + 8);
  v11 = **(result + 7);
  v12 = v10 * (*(result + 28) * a2 / v4 + *(result + 44));
  v13 = **(result + 17);
  v14 = **(result + 16);
  v15 = v13 * (v8 + *(result + 15));
  v16 = *(v9 + 154);
  v111[0] = *(v9 + 154);
  v17 = *(v9 + 155);
  v111[1] = *(v9 + 155);
  v18 = *(v9 + 156);
  v111[2] = *(v9 + 156);
  v19 = *(v9 + 157);
  v111[3] = *(v9 + 157);
  _S23 = *(v9 + 72);
  _S24 = *(v9 + 76);
  _S25 = *(v9 + 80);
  _S26 = *(v9 + 84);
  _S27 = *(v9 + 88);
  _S28 = *(v9 + 92);
  _S6 = *(v9 + 96);
  _S7 = *(v9 + 100);
  _S16 = *(v9 + 104);
  memset(v110, 0, sizeof(v110));
  v29 = (v7 + v7 * a2) / v4;
  do
  {
    v30 = 0;
    v31 = v111[v2];
    v32 = *(v110 + v2);
    do
    {
      v109 = v32;
      *(&v109 | v30 & 7) = v31 + 4 * v30;
      v32 = v109;
      ++v30;
    }

    while (v30 != 8);
    *(v110 + v2++) = v109;
  }

  while (v2 != 4);
  v33 = v29 - v8;
  if (v29 - v8 >= 1)
  {
    v34 = 0;
    v35 = v9 + 164;
    v36 = v9 + 16548;
    __asm
    {
      FCVT            H8, S23
      FCVT            H9, S24
      FCVT            H10, S25
      FCVT            H11, S26
      FCVT            H12, S27
      FCVT            H13, S28
      FCVT            H14, S6
    }

    v48 = v14 + v15 + 8 * v5;
    __asm { FCVT            H15, S7 }

    v102 = v19;
    __asm { FCVT            H0, S16 }

    v101 = v18;
    v51 = v16;
    v52 = v11 + v12 + 16 * v3;
    v53.i64[0] = 0x7000700070007000;
    v53.i64[1] = 0x7000700070007000;
    v54.i64[0] = 0x9000900090009000;
    v54.i64[1] = 0x9000900090009000;
    v107 = _S24;
    v108 = _S23;
    v105 = _S26;
    v106 = _S25;
    v103 = _S28;
    v104 = _S27;
    do
    {
      if (v6 < 8)
      {
        v79 = 0;
        v57 = v48;
        v56 = v52;
      }

      else
      {
        v55 = 0;
        v56 = v52;
        v57 = v48;
        do
        {
          v58 = v56;
          v113 = vld4q_f32(v58);
          v58 += 16;
          v114 = vld4q_f32(v58);
          v112.val[0] = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmulq_f16(vcvt_hight_f16_f32(vcvt_f16_f32(v113.val[0]), v114.val[0]), v53), 0), v54));
          v59.i16[0] = *(v35 + 2 * v112.val[0].u16[0]);
          v60 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmulq_f16(vcvt_hight_f16_f32(vcvt_f16_f32(v113.val[1]), v114.val[1]), v53), 0), v54));
          v112.val[0].i16[0] = *(v35 + 2 * v60.u16[0]);
          v61 = (v35 + 2 * v60.u16[3]);
          v59.i16[1] = *(v35 + 2 * v112.val[0].u16[1]);
          v62 = (v35 + 2 * v60.u16[4]);
          v63 = (v35 + 2 * v60.u16[5]);
          v59.i16[2] = *(v35 + 2 * v112.val[0].u16[2]);
          v112.val[0].i16[1] = *(v35 + 2 * v60.u16[1]);
          v112.val[0].i16[2] = *(v35 + 2 * v60.u16[2]);
          v64 = (v35 + 2 * v60.u16[6]);
          v65 = v60.u16[7];
          v59.i16[3] = *(v35 + 2 * v112.val[0].u16[3]);
          v112.val[2] = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmulq_f16(vcvt_hight_f16_f32(vcvt_f16_f32(v113.val[2]), v114.val[2]), v53), 0), v54));
          v112.val[0].i16[3] = *v61;
          v112.val[1].i16[0] = *(v35 + 2 * v112.val[2].u16[0]);
          v59.i16[4] = *(v35 + 2 * v112.val[0].u16[4]);
          v112.val[0].i16[4] = *v62;
          v59.i16[5] = *(v35 + 2 * v112.val[0].u16[5]);
          v112.val[0].i16[5] = *v63;
          v59.i16[6] = *(v35 + 2 * v112.val[0].u16[6]);
          v112.val[1].i16[1] = *(v35 + 2 * v112.val[2].u16[1]);
          v112.val[0].i16[6] = *v64;
          v112.val[1].i16[2] = *(v35 + 2 * v112.val[2].u16[2]);
          v59.i16[7] = *(v35 + 2 * v112.val[0].u16[7]);
          v112.val[1].i16[3] = *(v35 + 2 * v112.val[2].u16[3]);
          v112.val[1].i16[4] = *(v35 + 2 * v112.val[2].u16[4]);
          v112.val[0].i16[7] = *(v35 + 2 * v65);
          v112.val[1].i16[5] = *(v35 + 2 * v112.val[2].u16[5]);
          v112.val[1].i16[6] = *(v35 + 2 * v112.val[2].u16[6]);
          v112.val[1].i16[7] = *(v35 + 2 * v112.val[2].u16[7]);
          v66 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v59, _H11), v112.val[0], _H12), v112.val[1], _H13);
          v67 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v59, _H8), v112.val[0], _H9), v112.val[1], _H10), 0), v54));
          v68 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v112.val[1], _H0), v112.val[0], _H15), v59, _H14);
          v112.val[0].i16[0] = *(v36 + 2 * v67.u16[0]);
          v69 = (v36 + 2 * v67.u16[4]);
          v70 = (v36 + 2 * v67.u16[5]);
          v71 = (v36 + 2 * v67.u16[6]);
          v112.val[0].i16[1] = *(v36 + 2 * v67.u16[1]);
          v112.val[0].i16[2] = *(v36 + 2 * v67.u16[2]);
          v112.val[0].i16[3] = *(v36 + 2 * v67.u16[3]);
          v72 = (v36 + 2 * v67.u16[7]);
          v73 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v66, 0), v54));
          v112.val[0].i16[4] = *v69;
          v112.val[0].i16[5] = *v70;
          v74 = (v36 + 2 * v73.u16[4]);
          v112.val[0].i16[6] = *v71;
          v112.val[0].i16[7] = *v72;
          v75 = (v36 + 2 * v73.u16[5]);
          v76 = (v36 + 2 * v73.u16[6]);
          v112.val[1].i16[0] = *(v36 + 2 * v73.u16[0]);
          v112.val[1].i16[1] = *(v36 + 2 * v73.u16[1]);
          v112.val[1].i16[2] = *(v36 + 2 * v73.u16[2]);
          v112.val[1].i16[3] = *(v36 + 2 * v73.u16[3]);
          v77 = (v36 + 2 * v73.u16[7]);
          v78 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v68, 0), v54));
          v112.val[1].i16[4] = *v74;
          v112.val[1].i16[5] = *v75;
          v112.val[1].i16[6] = *v76;
          v112.val[1].i16[7] = *v77;
          v112.val[2].i16[0] = *(v36 + 2 * v78.u16[0]);
          v112.val[2].i16[1] = *(v36 + 2 * v78.u16[1]);
          v112.val[2].i16[2] = *(v36 + 2 * v78.u16[2]);
          v112.val[2].i16[3] = *(v36 + 2 * v78.u16[3]);
          v112.val[2].i16[4] = *(v36 + 2 * v78.u16[4]);
          v112.val[2].i16[5] = *(v36 + 2 * v78.u16[5]);
          v112.val[2].i16[6] = *(v36 + 2 * v78.u16[6]);
          v112.val[2].i16[7] = *(v36 + 2 * v78.u16[7]);
          v112.val[3] = vcvt_hight_f16_f32(vcvt_f16_f32(v113.val[3]), v114.val[3]);
          vst4q_s16(v57, v112);
          v57 += 32;
          v56 += 32;
          v55 += 8;
        }

        while (v55 < v6 - 7);
        v79 = v6 & 0x7FFFFFF8;
        _S24 = v107;
        _S23 = v108;
        _S26 = v105;
        _S25 = v106;
        _S28 = v103;
        _S27 = v104;
      }

      _VF = __OFSUB__(v6, v79);
      v80 = v6 - v79;
      if (!((v80 < 0) ^ _VF | (v80 == 0)))
      {
        v81 = &v56[v102];
        v82 = &v56[v101];
        v83 = &v56[v17];
        v84 = &v56[v51];
        do
        {
          v85 = *v84;
          v84 += 4;
          v86.i32[0] = v85;
          v87 = *v83;
          v83 += 4;
          v88 = v87;
          v89 = *v82;
          v82 += 4;
          v86.i32[1] = v88;
          _D2 = vdup_n_s32(0x45FFF800u);
          v91 = vminnm_f32(vmaxnm_f32(vmul_f32(v86, _D2), 0), _D2);
          _D2.f32[0] = v89 * 8191.0;
          _D1 = vcvt_s32_f32(vrnda_f32(v91));
          v93 = *v81;
          v81 += 4;
          _S3 = v93;
          _H5 = *(v35 + 2 * _D1.u32[1]);
          v96 = _D1.i32[0];
          *_D1.i32 = fmaxf(_D2.f32[0], 0.0);
          _D2.i16[0] = *(v35 + 2 * v96);
          _D1.i16[0] = *(v35 + 2 * llroundf(fminf(*_D1.i32, 8191.0)));
          __asm
          {
            FCVT            S2, H2
            FCVT            S5, H5
            FCVT            S1, H1
          }

          v98 = ((_S24 * _S5) + (_D2.f32[0] * _S23)) + (*_D1.i32 * _S25);
          v99 = ((_S27 * _S5) + (_D2.f32[0] * _S26)) + (*_D1.i32 * _S28);
          *_D1.i32 = ((_S7 * _S5) + (_D2.f32[0] * _S6)) + (*_D1.i32 * _S16);
          _D2.i16[0] = *(v36 + 2 * llroundf(fminf(fmaxf(v99, 0.0), 8191.0)));
          _D1.i16[0] = *(v36 + 2 * llroundf(fminf(fmaxf(*_D1.i32, 0.0), 8191.0)));
          *v57 = *(v36 + 2 * llroundf(fminf(fmaxf(v98, 0.0), 8191.0)));
          v57[1] = _D2.i16[0];
          v57[2] = _D1.i16[0];
          __asm { FCVT            H1, S3 }

          v57[3] = _D1.i16[0];
          v57 += 4;
          --v80;
        }

        while (v80);
      }

      v52 += v10;
      v48 += v13;
      ++v34;
    }

    while (v34 != v33);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_RGfA_TRC_Mat_TRC_RGhA(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v44 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v42 = a2[2];
  v43 = v16;
  v18 = *a6;
  v38 = a6[1];
  v39 = v17;
  v40 = a6[2];
  v41 = v18;
  if (v15 == 255)
  {
    v19 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v19)
    {
      v20 = 0;
LABEL_14:
      free(v19);
      return v20;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v19 = &v38.i8[-v21];
    bzero(&v38 - v21, v22);
  }

  v23 = a9;
  v24 = v40;
  v25 = vbslq_s8(vcgtq_s64(vaddq_s64(v42, v39), v43), vsubq_s64(v43, v42), v39);
  v26 = vbslq_s8(vcgtq_s64(vaddq_s64(v40, v38), v41), vsubq_s64(v41, v40), v38);
  v27 = vbslq_s8(vcgtq_s64(v26, v25), v25, v26);
  v28.i64[0] = v27.i64[0];
  v28.i64[1] = -1;
  v29 = vaddq_s64(v42, v28);
  if (((*a4 * (v29.i64[1] + v27.i64[1]) + 16 * v29.i64[0]) > *a5 || (v30 = vaddq_s64(v40, v28), (*a8 * (v30.i64[1] + v27.i64[1]) + 8 * v30.i64[0]) > *a9)) && (v38 = v27, v39.i64[0] = a9, fig_log_get_emitter(), v31 = FigSignalErrorAtGM(), v24 = v40, v23 = v39.i64[0], v27 = v38, v31))
  {
    v20 = v31;
  }

  else
  {
    *v19 = v15;
    v32 = v42;
    *(v19 + 4) = v43;
    *(v19 + 20) = v27;
    *(v19 + 36) = v32;
    *(v19 + 5) = v41;
    *(v19 + 6) = v27;
    *(v19 + 7) = v24;
    *(v19 + 7) = a3;
    *(v19 + 8) = a4;
    *(v19 + 9) = a5;
    *(v19 + 16) = a7;
    *(v19 + 17) = a8;
    *(v19 + 18) = v23;
    *(v19 + 19) = a1;
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_RGfA_TRC_Mat_TRC_RGhA_GCD);
    if (!v15)
    {
      return 0;
    }

    v34 = (v19 + 160);
    v35 = v15;
    while (1)
    {
      v36 = *v34++;
      v20 = v36;
      if (v36)
      {
        break;
      }

      if (!--v35)
      {
        v20 = 0;
        break;
      }
    }
  }

  if (v15 == 255)
  {
    goto LABEL_14;
  }

  return v20;
}

unsigned __int8 *vt_Copy_RGfA_TRC_Mat_TRC_RGhA_GCD(unsigned __int8 *result, uint64_t a2)
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
    v9 = **(result + 8);
    v10 = **(result + 17);
    v11 = *(v8 + 72);
    v12 = *(v8 + 76);
    v13 = *(v8 + 80);
    v14 = *(v8 + 84);
    v15 = *(v8 + 88);
    v16 = *(v8 + 92);
    v17 = *(v8 + 96);
    v18 = *(v8 + 100);
    v19 = *(v8 + 104);
    v20 = v8 + 164;
    v21 = v8 + 16548;
    v22 = v4 + *(result + 15);
    v23 = *(result + 28) * a2 / v2 + *(result + 44);
    v24 = *(v8 + 157);
    v25 = *(v8 + 156);
    v26 = *(v8 + 155);
    v27 = *(v8 + 154);
    v28 = **(result + 16) + v10 * v22 + 8 * *(result + 14);
    v29 = **(result + 7) + v23 * v9 + 16 * *(result + 36);
    v30 = vdup_n_s32(0x45FFF800u);
    do
    {
      if (v7 >= 1)
      {
        v31 = v7;
        v32 = v29;
        v33 = v28;
        do
        {
          v34 = (v32 + 4 * v26);
          _S21 = *(v32 + 4 * v25);
          _S22 = *(v32 + 4 * v24);
          v37.i32[0] = *(v32 + 4 * v27);
          v32 += 16;
          v37.i32[1] = *v34;
          _D23 = vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_f32(v37, v30), 0), v30)));
          _D23.i16[0] = *(v20 + 2 * _D23.u32[0]);
          _H24 = *(v20 + 2 * _D23.u32[1]);
          __asm { FCVT            S24, H24 }

          LOWORD(_S21) = *(v20 + 2 * llroundf(fminf(fmaxf(_S21 * 8191.0, 0.0), 8191.0)));
          __asm
          {
            FCVT            S23, H23
            FCVT            S21, H21
          }

          v46 = ((v12 * _S24) + (*_D23.i32 * v11)) + (_S21 * v13);
          v47 = ((v15 * _S24) + (*_D23.i32 * v14)) + (_S21 * v16);
          _S21 = ((v18 * _S24) + (*_D23.i32 * v17)) + (_S21 * v19);
          _D23.i16[0] = *(v21 + 2 * llroundf(fminf(fmaxf(v47, 0.0), 8191.0)));
          LOWORD(_S21) = *(v21 + 2 * llroundf(fminf(fmaxf(_S21, 0.0), 8191.0)));
          *v33 = *(v21 + 2 * llroundf(fminf(fmaxf(v46, 0.0), 8191.0)));
          v33[1] = _D23.i16[0];
          v33[2] = LOWORD(_S21);
          __asm { FCVT            H21, S22 }

          v33[3] = LOWORD(_S21);
          v33 += 4;
          --v31;
        }

        while (v31);
      }

      v29 += v9;
      v28 += v10;
      ++v6;
    }

    while (v6 != v5);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_RGfA_rgb_RGhA_neon_fp16(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v44 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v42 = a2[2];
  v43 = v16;
  v18 = *a6;
  v38 = a6[1];
  v39 = v17;
  v40 = a6[2];
  v41 = v18;
  if (v15 == 255)
  {
    v19 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v19)
    {
      v20 = 0;
LABEL_14:
      free(v19);
      return v20;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v19 = &v38.i8[-v21];
    bzero(&v38 - v21, v22);
  }

  v23 = a9;
  v24 = v40;
  v25 = vbslq_s8(vcgtq_s64(vaddq_s64(v42, v39), v43), vsubq_s64(v43, v42), v39);
  v26 = vbslq_s8(vcgtq_s64(vaddq_s64(v40, v38), v41), vsubq_s64(v41, v40), v38);
  v27 = vbslq_s8(vcgtq_s64(v26, v25), v25, v26);
  v28.i64[0] = v27.i64[0];
  v28.i64[1] = -1;
  v29 = vaddq_s64(v42, v28);
  if (((*a4 * (v29.i64[1] + v27.i64[1]) + 16 * v29.i64[0]) > *a5 || (v30 = vaddq_s64(v40, v28), (*a8 * (v30.i64[1] + v27.i64[1]) + 8 * v30.i64[0]) > *a9)) && (v38 = v27, v39.i64[0] = a9, fig_log_get_emitter(), v31 = FigSignalErrorAtGM(), v24 = v40, v23 = v39.i64[0], v27 = v38, v31))
  {
    v20 = v31;
  }

  else
  {
    *v19 = v15;
    v32 = v42;
    *(v19 + 4) = v43;
    *(v19 + 20) = v27;
    *(v19 + 36) = v32;
    *(v19 + 5) = v41;
    *(v19 + 6) = v27;
    *(v19 + 7) = v24;
    *(v19 + 7) = a3;
    *(v19 + 8) = a4;
    *(v19 + 9) = a5;
    *(v19 + 16) = a7;
    *(v19 + 17) = a8;
    *(v19 + 18) = v23;
    *(v19 + 19) = a1;
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_RGfA_rgb_RGhA_neon_fp16_GCD);
    if (!v15)
    {
      return 0;
    }

    v34 = (v19 + 160);
    v35 = v15;
    while (1)
    {
      v36 = *v34++;
      v20 = v36;
      if (v36)
      {
        break;
      }

      if (!--v35)
      {
        v20 = 0;
        break;
      }
    }
  }

  if (v15 == 255)
  {
    goto LABEL_14;
  }

  return v20;
}

unsigned __int8 *vt_Copy_RGfA_rgb_RGhA_neon_fp16_GCD(unsigned __int8 *result, uint64_t a2)
{
  v2 = 0;
  v3 = *(result + 36);
  v4 = *result;
  v5 = *(result + 14);
  v6 = *(result + 12);
  v7 = *(result + 13);
  v8 = v7 * a2 / v4;
  v9 = v7 + v7 * a2;
  v10 = *(result + 19);
  v11 = **(result + 8);
  v12 = **(result + 7);
  v13 = v11 * (*(result + 28) * a2 / v4 + *(result + 44));
  v14 = **(result + 17);
  v15 = **(result + 16);
  v16 = v14 * (v8 + *(result + 15));
  v17 = v10[154];
  v59[0] = v10[154];
  v18 = v10[155];
  v59[1] = v10[155];
  v19 = v10[156];
  v59[2] = v10[156];
  v20 = v10[157];
  v59[3] = v20;
  memset(v58, 0, sizeof(v58));
  v21 = v9 / v4;
  do
  {
    v22 = 0;
    v23 = v59[v2];
    v24 = *(v58 + v2);
    do
    {
      v57 = v24;
      *(&v57 | v22 & 7) = v23 + 4 * v22;
      v24 = v57;
      ++v22;
    }

    while (v22 != 8);
    *(v58 + v2++) = v57;
  }

  while (v2 != 4);
  v25 = v21 - v8;
  if (v21 - v8 >= 1)
  {
    v26 = 0;
    v27 = v20;
    v28 = v19;
    v29 = v15 + v16;
    v30 = v18;
    v31 = v12 + v13;
    v32 = (v29 + 8 * v5);
    v33 = v17;
    v34 = (v31 + 16 * v3);
    do
    {
      if (v6 < 8)
      {
        v39 = 0;
        v37 = v32;
        v36 = v34;
      }

      else
      {
        v35 = 0;
        v36 = v34;
        v37 = v32;
        do
        {
          v38 = v36;
          v60 = vld4q_f32(v38);
          v38 += 16;
          v61 = vld4q_f32(v38);
          v62.val[0] = vcvt_hight_f16_f32(vcvt_f16_f32(v60.val[0]), v61.val[0]);
          v62.val[1] = vcvt_hight_f16_f32(vcvt_f16_f32(v60.val[1]), v61.val[1]);
          v62.val[2] = vcvt_hight_f16_f32(vcvt_f16_f32(v60.val[2]), v61.val[2]);
          v62.val[3] = vcvt_hight_f16_f32(vcvt_f16_f32(v60.val[3]), v61.val[3]);
          vst4q_s16(v37, v62);
          v37 += 32;
          v36 += 32;
          v35 += 8;
        }

        while (v35 < v6 - 7);
        v39 = v6 & 0x7FFFFFF8;
      }

      _VF = __OFSUB__(v6, v39);
      v41 = v6 - v39;
      if (!((v41 < 0) ^ _VF | (v41 == 0)))
      {
        v42 = &v36[v27];
        v43 = &v36[v28];
        v44 = &v36[v30];
        v45 = &v36[v33];
        do
        {
          v46 = *v45;
          v45 += 4;
          _S0 = v46;
          v48 = *v44;
          v44 += 4;
          _S1 = v48;
          v50 = *v43;
          v43 += 4;
          _S2 = v50;
          v52 = *v42;
          v42 += 4;
          _S3 = v52;
          __asm { FCVT            H0, S0 }

          *v37 = _S0;
          __asm { FCVT            H0, S1 }

          v37[1] = _S0;
          __asm { FCVT            H0, S2 }

          v37[2] = _S0;
          __asm { FCVT            H0, S3 }

          v37[3] = _S0;
          v37 += 4;
          --v41;
        }

        while (v41);
      }

      v34 = (v34 + v11);
      v32 = (v32 + v14);
      ++v26;
    }

    while (v26 != v25);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_RGfA_rgb_RGhA(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v44 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v42 = a2[2];
  v43 = v16;
  v18 = *a6;
  v38 = a6[1];
  v39 = v17;
  v40 = a6[2];
  v41 = v18;
  if (v15 == 255)
  {
    v19 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v19)
    {
      v20 = 0;
LABEL_14:
      free(v19);
      return v20;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v19 = &v38.i8[-v21];
    bzero(&v38 - v21, v22);
  }

  v23 = a9;
  v24 = v40;
  v25 = vbslq_s8(vcgtq_s64(vaddq_s64(v42, v39), v43), vsubq_s64(v43, v42), v39);
  v26 = vbslq_s8(vcgtq_s64(vaddq_s64(v40, v38), v41), vsubq_s64(v41, v40), v38);
  v27 = vbslq_s8(vcgtq_s64(v26, v25), v25, v26);
  v28.i64[0] = v27.i64[0];
  v28.i64[1] = -1;
  v29 = vaddq_s64(v42, v28);
  if (((*a4 * (v29.i64[1] + v27.i64[1]) + 16 * v29.i64[0]) > *a5 || (v30 = vaddq_s64(v40, v28), (*a8 * (v30.i64[1] + v27.i64[1]) + 8 * v30.i64[0]) > *a9)) && (v38 = v27, v39.i64[0] = a9, fig_log_get_emitter(), v31 = FigSignalErrorAtGM(), v24 = v40, v23 = v39.i64[0], v27 = v38, v31))
  {
    v20 = v31;
  }

  else
  {
    *v19 = v15;
    v32 = v42;
    *(v19 + 4) = v43;
    *(v19 + 20) = v27;
    *(v19 + 36) = v32;
    *(v19 + 5) = v41;
    *(v19 + 6) = v27;
    *(v19 + 7) = v24;
    *(v19 + 7) = a3;
    *(v19 + 8) = a4;
    *(v19 + 9) = a5;
    *(v19 + 16) = a7;
    *(v19 + 17) = a8;
    *(v19 + 18) = v23;
    *(v19 + 19) = a1;
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_RGfA_rgb_RGhA_GCD);
    if (!v15)
    {
      return 0;
    }

    v34 = (v19 + 160);
    v35 = v15;
    while (1)
    {
      v36 = *v34++;
      v20 = v36;
      if (v36)
      {
        break;
      }

      if (!--v35)
      {
        v20 = 0;
        break;
      }
    }
  }

  if (v15 == 255)
  {
    goto LABEL_14;
  }

  return v20;
}

unsigned __int8 *vt_Copy_RGfA_rgb_RGhA_GCD(unsigned __int8 *result, uint64_t a2)
{
  v2 = *result;
  v3 = *(result + 13);
  v4 = v3 * a2 / v2;
  v5 = (v3 + v3 * a2) / v2 - v4;
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = *(result + 24);
    v8 = **(result + 8);
    v9 = **(result + 17);
    v10 = v4 + *(result + 15);
    v11 = *(result + 19);
    v12 = *(result + 28) * a2 / v2 + *(result + 44);
    v13 = v11[157];
    v14 = v11[156];
    v15 = **(result + 16) + v9 * v10;
    v16 = v11[155];
    v17 = v11[154];
    v18 = (v15 + 8 * *(result + 14));
    v19 = **(result + 7) + v12 * v8 + 16 * *(result + 36);
    do
    {
      if (v7 >= 1)
      {
        v20 = v7;
        v21 = v19;
        v22 = v18;
        do
        {
          _S0 = *(v21 + 4 * v17);
          _S1 = *(v21 + 4 * v16);
          _S2 = *(v21 + 4 * v14);
          _S3 = *(v21 + 4 * v13);
          v21 += 16;
          __asm { FCVT            H0, S0 }

          *v22 = _S0;
          __asm { FCVT            H0, S1 }

          v22[1] = _S0;
          __asm { FCVT            H0, S2 }

          v22[2] = _S0;
          __asm { FCVT            H0, S3 }

          v22[3] = _S0;
          v22 += 4;
          --v20;
        }

        while (v20);
      }

      v19 += v8;
      v18 = (v18 + v9);
      ++v6;
    }

    while (v6 != v5);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_RGfA_TRC_Tone_Mat_TRC_RGfA_neon_fp16(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v44 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v42 = a2[2];
  v43 = v16;
  v18 = *a6;
  v38 = a6[1];
  v39 = v17;
  v40 = a6[2];
  v41 = v18;
  if (v15 == 255)
  {
    v19 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v19)
    {
      v20 = 0;
LABEL_14:
      free(v19);
      return v20;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v19 = &v38.i8[-v21];
    bzero(&v38 - v21, v22);
  }

  v23 = a9;
  v24 = v40;
  v25 = vbslq_s8(vcgtq_s64(vaddq_s64(v42, v39), v43), vsubq_s64(v43, v42), v39);
  v26 = vbslq_s8(vcgtq_s64(vaddq_s64(v40, v38), v41), vsubq_s64(v41, v40), v38);
  v27 = vbslq_s8(vcgtq_s64(v26, v25), v25, v26);
  v28.i64[0] = v27.i64[0];
  v28.i64[1] = -1;
  v29 = vaddq_s64(v42, v28);
  if (((*a4 * (v29.i64[1] + v27.i64[1]) + 16 * v29.i64[0]) > *a5 || (v30 = vaddq_s64(v40, v28), (*a8 * (v30.i64[1] + v27.i64[1]) + 16 * v30.i64[0]) > *a9)) && (v38 = v27, v39.i64[0] = a9, fig_log_get_emitter(), v31 = FigSignalErrorAtGM(), v24 = v40, v23 = v39.i64[0], v27 = v38, v31))
  {
    v20 = v31;
  }

  else
  {
    *v19 = v15;
    v32 = v42;
    *(v19 + 4) = v43;
    *(v19 + 20) = v27;
    *(v19 + 36) = v32;
    *(v19 + 5) = v41;
    *(v19 + 6) = v27;
    *(v19 + 7) = v24;
    *(v19 + 7) = a3;
    *(v19 + 8) = a4;
    *(v19 + 9) = a5;
    *(v19 + 16) = a7;
    *(v19 + 17) = a8;
    *(v19 + 18) = v23;
    *(v19 + 19) = a1;
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_RGfA_TRC_Tone_Mat_TRC_RGfA_neon_fp16_GCD);
    if (!v15)
    {
      return 0;
    }

    v34 = (v19 + 160);
    v35 = v15;
    while (1)
    {
      v36 = *v34++;
      v20 = v36;
      if (v36)
      {
        break;
      }

      if (!--v35)
      {
        v20 = 0;
        break;
      }
    }
  }

  if (v15 == 255)
  {
    goto LABEL_14;
  }

  return v20;
}

uint64_t vt_Copy_RGfA_TRC_Tone_Mat_TRC_RGfA_neon_fp16_GCD(unsigned __int8 *a1, uint64_t a2)
{
  v2 = 0;
  v3 = *(a1 + 36);
  v4 = *a1;
  v5 = *(a1 + 28) * a2 / v4 + *(a1 + 44);
  v6 = *(a1 + 14);
  v8 = *(a1 + 12);
  v7 = *(a1 + 13);
  v9 = *(a1 + 19);
  v10 = v7 * a2 / v4;
  v11 = v7 + v7 * a2;
  v12 = **(a1 + 8);
  v13 = **(a1 + 7);
  v14 = v12 * v5;
  v15 = **(a1 + 17);
  v16 = **(a1 + 16);
  v17 = v15 * (v10 + *(a1 + 15));
  v137[0] = *(v9 + 154);
  v18 = *(v9 + 155);
  v137[1] = *(v9 + 155);
  v19 = *(v9 + 156);
  v137[2] = *(v9 + 156);
  v20 = *(v9 + 157);
  v137[3] = *(v9 + 157);
  _S20 = *(v9 + 72);
  _S21 = *(v9 + 76);
  _S22 = *(v9 + 80);
  _S23 = *(v9 + 84);
  _S24 = *(v9 + 88);
  _S25 = *(v9 + 92);
  _S29 = *(v9 + 96);
  _S31 = *(v9 + 100);
  v133 = *(v9 + 108);
  v134 = *(v9 + 104);
  v131 = *(v9 + 116);
  v132 = *(v9 + 112);
  v130 = *(v9 + 120);
  memset(v136, 0, sizeof(v136));
  v29 = v11 / v4;
  do
  {
    v30 = 0;
    v31 = v137[v2];
    v32 = *(v136 + v2);
    do
    {
      result = (v31 + 4 * v30);
      v135 = v32;
      *(&v135 | v30 & 7) = v31 + 4 * v30;
      v32 = v135;
      ++v30;
    }

    while (v30 != 8);
    *(v136 + v2++) = v135;
  }

  while (v2 != 4);
  v34 = v29 - v10;
  if (v29 - v10 >= 1)
  {
    v35 = 0;
    _S0 = v132;
    _S1 = v133;
    __asm
    {
      FCVT            H8, S1
      FCVT            H9, S0
    }

    _S0 = v130;
    _S1 = v131;
    __asm { FCVT            H10, S1 }

    v47 = v9 + 16548;
    v48 = v8 - 7;
    __asm
    {
      FCVT            H11, S0
      FCVT            H12, S20
      FCVT            H13, S21
    }

    v52 = v9 + 32932;
    v53 = v9 + 164;
    __asm
    {
      FCVT            H14, S22
      FCVT            H15, S23
      FCVT            H0, S24
      FCVT            H1, S25
      FCVT            H2, S29
      FCVT            H3, S31
    }

    _S4 = v134;
    __asm { FCVT            H4, S4 }

    v62 = v16 + v17 + 16 * v6;
    result = v13 + v14 + 16 * v3;
    v117 = v8 & 0xFFFFFFF8;
    v118 = v29 - v10;
    v63.i64[0] = 0x7000700070007000;
    v63.i64[1] = 0x7000700070007000;
    v64.i64[0] = 0x9000900090009000;
    v64.i64[1] = 0x9000900090009000;
    v65 = &qword_18FECD000;
    v128 = v12;
    v129 = v8;
    v127 = v15;
    v125 = _S21;
    v126 = _S20;
    v123 = _S23;
    v124 = _S22;
    v121 = _S25;
    v122 = _S24;
    v119 = _S31;
    v120 = _S29;
    do
    {
      if (v8 < 8)
      {
        v91 = 0;
        v68 = result;
        v67 = v62;
      }

      else
      {
        v66 = 0;
        v67 = v62;
        v68 = result;
        do
        {
          v69 = v68;
          v139 = vld4q_f32(v69);
          v69 += 16;
          v138 = vld4q_f32(v69);
          v70 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmulq_f16(vcvt_hight_f16_f32(vcvt_f16_f32(v139.val[0]), v138.val[0]), v63), 0), v64));
          v71.i16[0] = *(v53 + 2 * v70.u16[0]);
          v72 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmulq_f16(vcvt_hight_f16_f32(vcvt_f16_f32(v139.val[1]), v138.val[1]), v63), 0), v64));
          v70.i16[0] = *(v53 + 2 * v72.u16[0]);
          v71.i16[1] = *(v53 + 2 * v70.u16[1]);
          v70.i16[1] = *(v53 + 2 * v72.u16[1]);
          v71.i16[2] = *(v53 + 2 * v70.u16[2]);
          v70.i16[2] = *(v53 + 2 * v72.u16[2]);
          v71.i16[3] = *(v53 + 2 * v70.u16[3]);
          v73 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmulq_f16(vcvt_hight_f16_f32(vcvt_f16_f32(v139.val[2]), v138.val[2]), v63), 0), v64));
          v70.i16[3] = *(v53 + 2 * v72.u16[3]);
          v74.i16[0] = *(v53 + 2 * v73.u16[0]);
          v71.i16[4] = *(v53 + 2 * v70.u16[4]);
          v70.i16[4] = *(v53 + 2 * v72.u16[4]);
          v71.i16[5] = *(v53 + 2 * v70.u16[5]);
          v70.i16[5] = *(v53 + 2 * v72.u16[5]);
          v71.i16[6] = *(v53 + 2 * v70.u16[6]);
          v74.i16[1] = *(v53 + 2 * v73.u16[1]);
          v70.i16[6] = *(v53 + 2 * v72.u16[6]);
          v74.i16[2] = *(v53 + 2 * v73.u16[2]);
          v74.i16[3] = *(v53 + 2 * v73.u16[3]);
          v71.i16[7] = *(v53 + 2 * v70.u16[7]);
          v74.i16[4] = *(v53 + 2 * v73.u16[4]);
          v74.i16[5] = *(v53 + 2 * v73.u16[5]);
          v70.i16[7] = *(v53 + 2 * v72.u16[7]);
          v74.i16[6] = *(v53 + 2 * v73.u16[6]);
          v74.i16[7] = *(v53 + 2 * v73.u16[7]);
          v75 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v71, _H8), v70, _H9), v74, _H10), vmaxq_f16(vmaxq_f16(v71, v70), v74), _H11), 0), v64));
          v72.i16[0] = *(v47 + 2 * v75.u16[0]);
          v72.i16[1] = *(v47 + 2 * v75.u16[1]);
          v72.i16[2] = *(v47 + 2 * v75.u16[2]);
          v72.i16[3] = *(v47 + 2 * v75.u16[3]);
          v72.i16[4] = *(v47 + 2 * v75.u16[4]);
          v72.i16[5] = *(v47 + 2 * v75.u16[5]);
          v72.i16[6] = *(v47 + 2 * v75.u16[6]);
          v72.i16[7] = *(v47 + 2 * v75.u16[7]);
          v76 = vmulq_f16(v71, v72);
          v77 = vmulq_f16(v70, v72);
          v78 = vmulq_f16(v74, v72);
          v79 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v76, _H15), v77, _H0), v78, _H1);
          v80 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v78, _H4), v77, _H3), v76, _H2);
          v81 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v76, _H12), v77, _H13), v78, _H14), 0), v64));
          v77.i16[0] = *(v52 + 2 * v81.u16[0]);
          v82 = (v52 + 2 * v81.u16[1]);
          v83 = (v52 + 2 * v81.u16[2]);
          v84 = (v52 + 2 * v81.u16[3]);
          v76.i16[0] = *(v52 + 2 * v81.u16[4]);
          v85 = (v52 + 2 * v81.u16[5]);
          LOWORD(v69) = v81.i16[6];
          v86 = v81.u16[7];
          v87 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v79, 0), v64));
          v79.i16[0] = *(v52 + 2 * v87.u16[0]);
          v74.i16[0] = *(v52 + 2 * v87.u16[4]);
          v88 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v80, 0), v64));
          v80.i16[0] = *(v52 + 2 * v88.u16[0]);
          v87.i16[0] = *(v52 + 2 * v88.u16[4]);
          v77.i16[1] = *v82;
          v77.i16[2] = *v83;
          v79.i16[1] = *(v52 + 2 * v87.u16[1]);
          v77.i16[3] = *v84;
          v79.i16[2] = *(v52 + 2 * v87.u16[2]);
          v80.i16[1] = *(v52 + 2 * v88.u16[1]);
          v79.i16[3] = *(v52 + 2 * v87.u16[3]);
          v80.i16[2] = *(v52 + 2 * v88.u16[2]);
          v76.i16[1] = *v85;
          v80.i16[3] = *(v52 + 2 * v88.u16[3]);
          v76.i16[2] = *(v52 + 2 * v69);
          v74.i16[1] = *(v52 + 2 * v87.u16[5]);
          v76.i16[3] = *(v52 + 2 * v86);
          v139.val[0] = vcvtq_f32_f16(*v77.i8);
          v74.i16[2] = *(v52 + 2 * v87.u16[6]);
          v74.i16[3] = *(v52 + 2 * v87.u16[7]);
          v139.val[1] = vcvtq_f32_f16(*v79.i8);
          v139.val[2] = vcvtq_f32_f16(*v80.i8);
          v87.i16[1] = *(v52 + 2 * v88.u16[5]);
          v87.i16[2] = *(v52 + 2 * v88.u16[6]);
          v138.val[0] = vcvtq_f32_f16(*v76.i8);
          v138.val[1] = vcvtq_f32_f16(*v74.i8);
          v87.i16[3] = *(v52 + 2 * v88.u16[7]);
          v138.val[2] = vcvtq_f32_f16(*v87.i8);
          v89 = v67 + 128;
          vst4q_f32(v67, v139);
          v90 = (v67 + 64);
          vst4q_f32(v90, v138);
          v68 += 32;
          v67 = v89;
          v66 += 8;
        }

        while (v66 < v48);
        v91 = v117;
        v34 = v118;
        v12 = v128;
        LODWORD(v8) = v129;
        v15 = v127;
        _S21 = v125;
        _S20 = v126;
        _S23 = v123;
        _S22 = v124;
        _S25 = v121;
        _S24 = v122;
        _S31 = v119;
        _S29 = v120;
        v65 = &qword_18FECD000;
      }

      v92 = v8 - v91;
      if (v8 > v91)
      {
        do
        {
          v93 = *(v65 + 842);
          _D7.f32[0] = v68[v137[0]];
          _D7.f32[1] = v68[v18];
          _D16 = vdup_n_s32(0x45FFF800u);
          _D6 = vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_f32(_D7, _D16), 0), _D16)));
          _D6.i16[0] = *(v53 + 2 * _D6.u32[0]);
          __asm { FCVT            S6, H6 }

          _D7.i16[0] = *(v53 + 2 * _D6.u32[1]);
          __asm { FCVT            S7, H7 }

          _D16.i16[0] = *(v53 + 2 * llroundf(fminf(fmaxf(v68[v19] * v93, 0.0), v93)));
          __asm { FCVT            S16, H16 }

          v100 = (((v132 * _S7) + (v133 * _S6)) + (v131 * _S16)) + (v130 * fmaxf(_S6, fmaxf(_S7, _S16)));
          v101 = v93;
          if (v100 <= v93)
          {
            v101 = v100;
            if (v100 < 0.0)
            {
              v101 = 0.0;
            }
          }

          v102 = v68[v20];
          v68 += 4;
          _H17 = *(v47 + 2 * llroundf(v101));
          __asm { FCVT            S17, H17 }

          v105 = _S6 * _S17;
          _S7 = _S7 * _S17;
          _S16 = _S16 * _S17;
          v108 = ((_S21 * _S7) + (v105 * _S20)) + (_S16 * _S22);
          v109 = ((_S24 * _S7) + (v105 * _S23)) + (_S16 * _S25);
          v110 = ((_S31 * _S7) + (v105 * _S29)) + (_S16 * v134);
          LOWORD(_S7) = *(v52 + 2 * llroundf(fminf(fmaxf(v108, 0.0), v93)));
          __asm { FCVT            S7, H7 }

          LOWORD(_S16) = *(v52 + 2 * llroundf(fminf(fmaxf(v109, 0.0), v93)));
          __asm { FCVT            S16, H16 }

          _H5 = *(v52 + 2 * llroundf(fminf(fmaxf(v110, 0.0), v93)));
          *v67 = _S7;
          *(v67 + 4) = _S16;
          __asm { FCVT            S5, H5 }

          *(v67 + 8) = _S5;
          *(v67 + 12) = v102;
          v67 += 16;
          --v92;
        }

        while (v92);
      }

      result += v12;
      v62 += v15;
      ++v35;
    }

    while (v35 != v34);
  }

  *&a1[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_RGfA_TRC_Tone_Mat_TRC_RGfA(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v44 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v42 = a2[2];
  v43 = v16;
  v18 = *a6;
  v38 = a6[1];
  v39 = v17;
  v40 = a6[2];
  v41 = v18;
  if (v15 == 255)
  {
    v19 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v19)
    {
      v20 = 0;
LABEL_14:
      free(v19);
      return v20;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v19 = &v38.i8[-v21];
    bzero(&v38 - v21, v22);
  }

  v23 = a9;
  v24 = v40;
  v25 = vbslq_s8(vcgtq_s64(vaddq_s64(v42, v39), v43), vsubq_s64(v43, v42), v39);
  v26 = vbslq_s8(vcgtq_s64(vaddq_s64(v40, v38), v41), vsubq_s64(v41, v40), v38);
  v27 = vbslq_s8(vcgtq_s64(v26, v25), v25, v26);
  v28.i64[0] = v27.i64[0];
  v28.i64[1] = -1;
  v29 = vaddq_s64(v42, v28);
  if (((*a4 * (v29.i64[1] + v27.i64[1]) + 16 * v29.i64[0]) > *a5 || (v30 = vaddq_s64(v40, v28), (*a8 * (v30.i64[1] + v27.i64[1]) + 16 * v30.i64[0]) > *a9)) && (v38 = v27, v39.i64[0] = a9, fig_log_get_emitter(), v31 = FigSignalErrorAtGM(), v24 = v40, v23 = v39.i64[0], v27 = v38, v31))
  {
    v20 = v31;
  }

  else
  {
    *v19 = v15;
    v32 = v42;
    *(v19 + 4) = v43;
    *(v19 + 20) = v27;
    *(v19 + 36) = v32;
    *(v19 + 5) = v41;
    *(v19 + 6) = v27;
    *(v19 + 7) = v24;
    *(v19 + 7) = a3;
    *(v19 + 8) = a4;
    *(v19 + 9) = a5;
    *(v19 + 16) = a7;
    *(v19 + 17) = a8;
    *(v19 + 18) = v23;
    *(v19 + 19) = a1;
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_RGfA_TRC_Tone_Mat_TRC_RGfA_GCD);
    if (!v15)
    {
      return 0;
    }

    v34 = (v19 + 160);
    v35 = v15;
    while (1)
    {
      v36 = *v34++;
      v20 = v36;
      if (v36)
      {
        break;
      }

      if (!--v35)
      {
        v20 = 0;
        break;
      }
    }
  }

  if (v15 == 255)
  {
    goto LABEL_14;
  }

  return v20;
}

unsigned __int8 *vt_Copy_RGfA_TRC_Tone_Mat_TRC_RGfA_GCD(unsigned __int8 *result, uint64_t a2)
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
    v9 = **(result + 8);
    v10 = **(result + 17);
    v11 = *(v8 + 72);
    v12 = *(v8 + 76);
    v13 = *(v8 + 80);
    v14 = *(v8 + 84);
    v15 = *(v8 + 88);
    v16 = *(v8 + 92);
    v17 = *(v8 + 96);
    v18 = *(v8 + 100);
    v19 = v8 + 164;
    v20 = v8 + 16548;
    v21 = v8 + 32932;
    v22 = *(v8 + 104);
    v23 = *(v8 + 108);
    v24 = *(v8 + 112);
    v25 = *(v8 + 116);
    v26 = *(v8 + 120);
    v27 = v4 + *(result + 15);
    v28 = *(result + 28) * a2 / v2 + *(result + 44);
    v29 = *(v8 + 157);
    v30 = *(v8 + 156);
    v31 = *(v8 + 155);
    v32 = *(v8 + 154);
    v33 = **(result + 16) + v10 * v27 + 16 * *(result + 14);
    v34 = **(result + 7) + v28 * v9 + 16 * *(result + 36);
    v35 = vdup_n_s32(0x45FFF800u);
    do
    {
      if (v7 >= 1)
      {
        v36 = v7;
        v37 = v34;
        v38 = v33;
        do
        {
          v39.i32[0] = *(v37 + 4 * v32);
          v39.i32[1] = *(v37 + 4 * v31);
          _D25 = vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_f32(v39, v35), 0), v35)));
          _D25.i16[0] = *(v19 + 2 * _D25.u32[0]);
          __asm { FCVT            S25, H25 }

          _H27 = *(v19 + 2 * _D25.u32[1]);
          __asm { FCVT            S26, H27 }

          _H27 = *(v19 + 2 * llroundf(fminf(fmaxf(*(v37 + 4 * v30) * 8191.0, 0.0), 8191.0)));
          __asm { FCVT            S27, H27 }

          v50 = (((v24 * _S26) + (v23 * _S25)) + (v25 * _S27)) + (v26 * fmaxf(_S25, fmaxf(_S26, _S27)));
          v51 = 8191.0;
          if (v50 <= 8191.0)
          {
            v51 = v50;
            if (v50 < 0.0)
            {
              v51 = 0.0;
            }
          }

          v52 = *(v37 + 4 * v29);
          v37 += 16;
          _H28 = *(v20 + 2 * llroundf(v51));
          __asm { FCVT            S28, H28 }

          v55 = _S25 * _S28;
          _S26 = _S26 * _S28;
          _S27 = _S27 * _S28;
          v58 = ((v12 * _S26) + (v55 * v11)) + (_S27 * v13);
          v59 = ((v15 * _S26) + (v55 * v14)) + (_S27 * v16);
          _S25 = ((v18 * _S26) + (v55 * v17)) + (_S27 * v22);
          LOWORD(_S26) = *(v21 + 2 * llroundf(fminf(fmaxf(v58, 0.0), 8191.0)));
          __asm { FCVT            S26, H26 }

          LOWORD(_S27) = *(v21 + 2 * llroundf(fminf(fmaxf(v59, 0.0), 8191.0)));
          __asm { FCVT            S27, H27 }

          LOWORD(_S25) = *(v21 + 2 * llroundf(fminf(fmaxf(_S25, 0.0), 8191.0)));
          *v38 = _S26;
          v38[1] = _S27;
          __asm { FCVT            S25, H25 }

          v38[2] = _S25;
          v38[3] = v52;
          v38 += 4;
          --v36;
        }

        while (v36);
      }

      v34 += v9;
      v33 += v10;
      ++v6;
    }

    while (v6 != v5);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_RGfA_TRC_Mat_TRC_RGfA_neon_fp16(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v44 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v42 = a2[2];
  v43 = v16;
  v18 = *a6;
  v38 = a6[1];
  v39 = v17;
  v40 = a6[2];
  v41 = v18;
  if (v15 == 255)
  {
    v19 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v19)
    {
      v20 = 0;
LABEL_14:
      free(v19);
      return v20;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v19 = &v38.i8[-v21];
    bzero(&v38 - v21, v22);
  }

  v23 = a9;
  v24 = v40;
  v25 = vbslq_s8(vcgtq_s64(vaddq_s64(v42, v39), v43), vsubq_s64(v43, v42), v39);
  v26 = vbslq_s8(vcgtq_s64(vaddq_s64(v40, v38), v41), vsubq_s64(v41, v40), v38);
  v27 = vbslq_s8(vcgtq_s64(v26, v25), v25, v26);
  v28.i64[0] = v27.i64[0];
  v28.i64[1] = -1;
  v29 = vaddq_s64(v42, v28);
  if (((*a4 * (v29.i64[1] + v27.i64[1]) + 16 * v29.i64[0]) > *a5 || (v30 = vaddq_s64(v40, v28), (*a8 * (v30.i64[1] + v27.i64[1]) + 16 * v30.i64[0]) > *a9)) && (v38 = v27, v39.i64[0] = a9, fig_log_get_emitter(), v31 = FigSignalErrorAtGM(), v24 = v40, v23 = v39.i64[0], v27 = v38, v31))
  {
    v20 = v31;
  }

  else
  {
    *v19 = v15;
    v32 = v42;
    *(v19 + 4) = v43;
    *(v19 + 20) = v27;
    *(v19 + 36) = v32;
    *(v19 + 5) = v41;
    *(v19 + 6) = v27;
    *(v19 + 7) = v24;
    *(v19 + 7) = a3;
    *(v19 + 8) = a4;
    *(v19 + 9) = a5;
    *(v19 + 16) = a7;
    *(v19 + 17) = a8;
    *(v19 + 18) = v23;
    *(v19 + 19) = a1;
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_RGfA_TRC_Mat_TRC_RGfA_neon_fp16_GCD);
    if (!v15)
    {
      return 0;
    }

    v34 = (v19 + 160);
    v35 = v15;
    while (1)
    {
      v36 = *v34++;
      v20 = v36;
      if (v36)
      {
        break;
      }

      if (!--v35)
      {
        v20 = 0;
        break;
      }
    }
  }

  if (v15 == 255)
  {
    goto LABEL_14;
  }

  return v20;
}

uint64_t vt_Copy_RGfA_TRC_Mat_TRC_RGfA_neon_fp16_GCD(unsigned __int8 *a1, uint64_t a2)
{
  v2 = 0;
  v3 = *(a1 + 36);
  v4 = *a1;
  v5 = *(a1 + 14);
  v7 = *(a1 + 12);
  v6 = *(a1 + 13);
  v8 = v6 * a2 / v4;
  v9 = *(a1 + 19);
  v10 = v6 + v6 * a2;
  v11 = **(a1 + 8);
  v12 = **(a1 + 7);
  v13 = v11 * (*(a1 + 28) * a2 / v4 + *(a1 + 44));
  v14 = **(a1 + 17);
  v15 = **(a1 + 16);
  v16 = v14 * (v8 + *(a1 + 15));
  v97[0] = *(v9 + 154);
  v17 = *(v9 + 155);
  v97[1] = *(v9 + 155);
  v18 = *(v9 + 156);
  v97[2] = *(v9 + 156);
  v19 = *(v9 + 157);
  v97[3] = *(v9 + 157);
  _S24 = *(v9 + 72);
  _S25 = *(v9 + 76);
  _S26 = *(v9 + 80);
  _S27 = *(v9 + 84);
  _S28 = *(v9 + 88);
  _S5 = *(v9 + 92);
  _S6 = *(v9 + 96);
  _S7 = *(v9 + 100);
  _S16 = *(v9 + 104);
  memset(v96, 0, sizeof(v96));
  v29 = v10 / v4;
  do
  {
    v30 = 0;
    result = v97[v2];
    v32 = *(v96 + v2);
    do
    {
      v95 = v32;
      *(&v95 | v30 & 7) = result + 4 * v30;
      v32 = v95;
      ++v30;
    }

    while (v30 != 8);
    *(v96 + v2++) = v95;
  }

  while (v2 != 4);
  v33 = v29 - v8;
  if (v29 - v8 >= 1)
  {
    v34 = 0;
    __asm
    {
      FCVT            H8, S24
      FCVT            H9, S25
    }

    v41 = v9 + 164;
    v42 = v9 + 16548;
    v43 = v7 - 7;
    __asm
    {
      FCVT            H10, S26
      FCVT            H11, S27
      FCVT            H12, S28
      FCVT            H13, S5
      FCVT            H14, S6
      FCVT            H15, S7
      FCVT            H0, S16
    }

    v51 = v15 + v16 + 16 * v5;
    result = v12 + v13 + 16 * v3;
    v85 = v7 & 0xFFFFFFF8;
    v86 = v29 - v8;
    v52.i64[0] = 0x7000700070007000;
    v52.i64[1] = 0x7000700070007000;
    v53.i64[0] = 0x9000900090009000;
    v53.i64[1] = 0x9000900090009000;
    v93 = v11;
    v94 = v7;
    v92 = v14;
    v90 = _S25;
    v91 = _S24;
    v88 = _S27;
    v89 = _S26;
    v87 = _S28;
    do
    {
      if (v7 < 8)
      {
        v71 = 0;
        v56 = v51;
        v55 = result;
      }

      else
      {
        v54 = 0;
        v55 = result;
        v56 = v51;
        do
        {
          v57 = v55;
          v98 = vld4q_f32(v57);
          v57 += 16;
          v99 = vld4q_f32(v57);
          v58 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmulq_f16(vcvt_hight_f16_f32(vcvt_f16_f32(v98.val[0]), v99.val[0]), v52), 0), v53));
          v59.i16[0] = *(v41 + 2 * v58.u16[0]);
          v60 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmulq_f16(vcvt_hight_f16_f32(vcvt_f16_f32(v98.val[1]), v99.val[1]), v52), 0), v53));
          v58.i16[0] = *(v41 + 2 * v60.u16[0]);
          v59.i16[1] = *(v41 + 2 * v58.u16[1]);
          v59.i16[2] = *(v41 + 2 * v58.u16[2]);
          v58.i16[1] = *(v41 + 2 * v60.u16[1]);
          v58.i16[2] = *(v41 + 2 * v60.u16[2]);
          v61 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmulq_f16(vcvt_hight_f16_f32(vcvt_f16_f32(v98.val[2]), v99.val[2]), v52), 0), v53));
          v59.i16[3] = *(v41 + 2 * v58.u16[3]);
          v60.i16[0] = *(v41 + 2 * v61.u16[0]);
          v58.i16[3] = *(v41 + 2 * v60.u16[3]);
          v59.i16[4] = *(v41 + 2 * v58.u16[4]);
          v58.i16[4] = *(v41 + 2 * v60.u16[4]);
          v59.i16[5] = *(v41 + 2 * v58.u16[5]);
          v58.i16[5] = *(v41 + 2 * v60.u16[5]);
          v59.i16[6] = *(v41 + 2 * v58.u16[6]);
          v60.i16[1] = *(v41 + 2 * v61.u16[1]);
          v58.i16[6] = *(v41 + 2 * v60.u16[6]);
          v60.i16[2] = *(v41 + 2 * v61.u16[2]);
          v60.i16[3] = *(v41 + 2 * v61.u16[3]);
          v59.i16[7] = *(v41 + 2 * v58.u16[7]);
          v60.i16[4] = *(v41 + 2 * v61.u16[4]);
          v60.i16[5] = *(v41 + 2 * v61.u16[5]);
          v58.i16[7] = *(v41 + 2 * v60.u16[7]);
          v60.i16[6] = *(v41 + 2 * v61.u16[6]);
          v60.i16[7] = *(v41 + 2 * v61.u16[7]);
          v62 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v59, _H11), v58, _H12), v60, _H13);
          v63 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v60, _H0), v58, _H15), v59, _H14);
          v64 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v59, _H8), v58, _H9), v60, _H10), 0), v53));
          v65.i16[0] = *(v42 + 2 * v64.u16[0]);
          v59.i16[0] = *(v42 + 2 * v64.u16[4]);
          v66 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v62, 0), v53));
          v67.i16[0] = *(v42 + 2 * v66.u16[0]);
          v64.i16[0] = *(v42 + 2 * v66.u16[4]);
          v68 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v63, 0), v53));
          v66.i16[0] = *(v42 + 2 * v68.u16[0]);
          v63.i16[0] = *(v42 + 2 * v68.u16[4]);
          v65.i16[1] = *(v42 + 2 * v64.u16[1]);
          v65.i16[2] = *(v42 + 2 * v64.u16[2]);
          v67.i16[1] = *(v42 + 2 * v66.u16[1]);
          v65.i16[3] = *(v42 + 2 * v64.u16[3]);
          v67.i16[2] = *(v42 + 2 * v66.u16[2]);
          v66.i16[1] = *(v42 + 2 * v68.u16[1]);
          v67.i16[3] = *(v42 + 2 * v66.u16[3]);
          v66.i16[2] = *(v42 + 2 * v68.u16[2]);
          v59.i16[1] = *(v42 + 2 * v64.u16[5]);
          v66.i16[3] = *(v42 + 2 * v68.u16[3]);
          v59.i16[2] = *(v42 + 2 * v64.u16[6]);
          v64.i16[1] = *(v42 + 2 * v66.u16[5]);
          v59.i16[3] = *(v42 + 2 * v64.u16[7]);
          v98.val[0] = vcvtq_f32_f16(v65);
          v64.i16[2] = *(v42 + 2 * v66.u16[6]);
          v64.i16[3] = *(v42 + 2 * v66.u16[7]);
          v98.val[1] = vcvtq_f32_f16(v67);
          v98.val[2] = vcvtq_f32_f16(*v66.i8);
          v63.i16[1] = *(v42 + 2 * v68.u16[5]);
          v63.i16[2] = *(v42 + 2 * v68.u16[6]);
          v99.val[0] = vcvtq_f32_f16(*v59.i8);
          v99.val[1] = vcvtq_f32_f16(*v64.i8);
          v63.i16[3] = *(v42 + 2 * v68.u16[7]);
          v99.val[2] = vcvtq_f32_f16(*v63.i8);
          v69 = v56 + 128;
          vst4q_f32(v56, v98);
          v70 = (v56 + 64);
          vst4q_f32(v70, v99);
          v55 += 32;
          v56 = v69;
          v54 += 8;
        }

        while (v54 < v43);
        v71 = v85;
        v33 = v86;
        v11 = v93;
        LODWORD(v7) = v94;
        v14 = v92;
        _S25 = v90;
        _S24 = v91;
        _S27 = v88;
        _S26 = v89;
        _S28 = v87;
      }

      v72 = v7 - v71;
      if (v7 > v71)
      {
        do
        {
          _S1 = v55[v18];
          v74.f32[0] = v55[v97[0]];
          v74.f32[1] = v55[v17];
          _D4 = vdup_n_s32(0x45FFF800u);
          v76 = v55[v19];
          v55 += 4;
          _D3 = vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_f32(v74, _D4), 0), _D4)));
          _D3.i16[0] = *(v41 + 2 * _D3.u32[0]);
          __asm { FCVT            S3, H3 }

          _D4.i16[0] = *(v41 + 2 * _D3.u32[1]);
          __asm { FCVT            S4, H4 }

          LOWORD(_S1) = *(v41 + 2 * llroundf(fminf(fmaxf(_S1 * 8191.0, 0.0), 8191.0)));
          __asm { FCVT            S1, H1 }

          v79 = ((_S25 * _D4.f32[0]) + (*_D3.i32 * _S24)) + (_S1 * _S26);
          v80 = ((_S28 * _D4.f32[0]) + (*_D3.i32 * _S27)) + (_S1 * _S5);
          _S1 = ((_S7 * _D4.f32[0]) + (*_D3.i32 * _S6)) + (_S1 * _S16);
          _D3.i16[0] = *(v42 + 2 * llroundf(fminf(fmaxf(v79, 0.0), 8191.0)));
          __asm { FCVT            S3, H3 }

          _D4.i16[0] = *(v42 + 2 * llroundf(fminf(fmaxf(v80, 0.0), 8191.0)));
          __asm { FCVT            S2, H4 }

          LOWORD(_S1) = *(v42 + 2 * llroundf(fminf(fmaxf(_S1, 0.0), 8191.0)));
          *v56 = _D3.i32[0];
          *(v56 + 4) = _S2;
          __asm { FCVT            S1, H1 }

          *(v56 + 8) = _S1;
          *(v56 + 12) = v76;
          v56 += 16;
          --v72;
        }

        while (v72);
      }

      result += v11;
      v51 += v14;
      ++v34;
    }

    while (v34 != v33);
  }

  *&a1[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_RGfA_TRC_Mat_TRC_RGfA(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v44 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v42 = a2[2];
  v43 = v16;
  v18 = *a6;
  v38 = a6[1];
  v39 = v17;
  v40 = a6[2];
  v41 = v18;
  if (v15 == 255)
  {
    v19 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v19)
    {
      v20 = 0;
LABEL_14:
      free(v19);
      return v20;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v19 = &v38.i8[-v21];
    bzero(&v38 - v21, v22);
  }

  v23 = a9;
  v24 = v40;
  v25 = vbslq_s8(vcgtq_s64(vaddq_s64(v42, v39), v43), vsubq_s64(v43, v42), v39);
  v26 = vbslq_s8(vcgtq_s64(vaddq_s64(v40, v38), v41), vsubq_s64(v41, v40), v38);
  v27 = vbslq_s8(vcgtq_s64(v26, v25), v25, v26);
  v28.i64[0] = v27.i64[0];
  v28.i64[1] = -1;
  v29 = vaddq_s64(v42, v28);
  if (((*a4 * (v29.i64[1] + v27.i64[1]) + 16 * v29.i64[0]) > *a5 || (v30 = vaddq_s64(v40, v28), (*a8 * (v30.i64[1] + v27.i64[1]) + 16 * v30.i64[0]) > *a9)) && (v38 = v27, v39.i64[0] = a9, fig_log_get_emitter(), v31 = FigSignalErrorAtGM(), v24 = v40, v23 = v39.i64[0], v27 = v38, v31))
  {
    v20 = v31;
  }

  else
  {
    *v19 = v15;
    v32 = v42;
    *(v19 + 4) = v43;
    *(v19 + 20) = v27;
    *(v19 + 36) = v32;
    *(v19 + 5) = v41;
    *(v19 + 6) = v27;
    *(v19 + 7) = v24;
    *(v19 + 7) = a3;
    *(v19 + 8) = a4;
    *(v19 + 9) = a5;
    *(v19 + 16) = a7;
    *(v19 + 17) = a8;
    *(v19 + 18) = v23;
    *(v19 + 19) = a1;
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_RGfA_TRC_Mat_TRC_RGfA_GCD);
    if (!v15)
    {
      return 0;
    }

    v34 = (v19 + 160);
    v35 = v15;
    while (1)
    {
      v36 = *v34++;
      v20 = v36;
      if (v36)
      {
        break;
      }

      if (!--v35)
      {
        v20 = 0;
        break;
      }
    }
  }

  if (v15 == 255)
  {
    goto LABEL_14;
  }

  return v20;
}

unsigned __int8 *vt_Copy_RGfA_TRC_Mat_TRC_RGfA_GCD(unsigned __int8 *result, uint64_t a2)
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
    v9 = **(result + 8);
    v10 = **(result + 17);
    v11 = *(v8 + 72);
    v12 = *(v8 + 76);
    v13 = *(v8 + 80);
    v14 = *(v8 + 84);
    v15 = *(v8 + 88);
    v16 = *(v8 + 92);
    v17 = *(v8 + 96);
    v18 = *(v8 + 100);
    v19 = *(v8 + 104);
    v20 = v8 + 164;
    v21 = v8 + 16548;
    v22 = v4 + *(result + 15);
    v23 = *(result + 28) * a2 / v2 + *(result + 44);
    v24 = *(v8 + 157);
    v25 = *(v8 + 156);
    v26 = *(v8 + 155);
    v27 = *(v8 + 154);
    v28 = **(result + 16) + v10 * v22 + 16 * *(result + 14);
    v29 = **(result + 7) + v23 * v9 + 16 * *(result + 36);
    v30 = vdup_n_s32(0x45FFF800u);
    do
    {
      if (v7 >= 1)
      {
        v31 = v7;
        v32 = v29;
        v33 = v28;
        do
        {
          _S21 = *(v32 + 4 * v25);
          v35.i32[0] = *(v32 + 4 * v27);
          v35.i32[1] = *(v32 + 4 * v26);
          v36 = *(v32 + 4 * v24);
          v32 += 16;
          _D22 = vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_f32(v35, v30), 0), v30)));
          _D22.i16[0] = *(v20 + 2 * _D22.u32[0]);
          __asm { FCVT            S22, H22 }

          _H24 = *(v20 + 2 * _D22.u32[1]);
          __asm { FCVT            S24, H24 }

          LOWORD(_S21) = *(v20 + 2 * llroundf(fminf(fmaxf(_S21 * 8191.0, 0.0), 8191.0)));
          __asm { FCVT            S21, H21 }

          v45 = ((v12 * _S24) + (*_D22.i32 * v11)) + (_S21 * v13);
          v46 = ((v15 * _S24) + (*_D22.i32 * v14)) + (_S21 * v16);
          _S21 = ((v18 * _S24) + (*_D22.i32 * v17)) + (_S21 * v19);
          _D22.i16[0] = *(v21 + 2 * llroundf(fminf(fmaxf(v45, 0.0), 8191.0)));
          __asm { FCVT            S22, H22 }

          LOWORD(_S24) = *(v21 + 2 * llroundf(fminf(fmaxf(v46, 0.0), 8191.0)));
          __asm { FCVT            S24, H24 }

          LOWORD(_S21) = *(v21 + 2 * llroundf(fminf(fmaxf(_S21, 0.0), 8191.0)));
          *v33 = _D22.i32[0];
          v33[1] = _S24;
          __asm { FCVT            S21, H21 }

          v33[2] = _S21;
          v33[3] = v36;
          v33 += 4;
          --v31;
        }

        while (v31);
      }

      v29 += v9;
      v28 += v10;
      ++v6;
    }

    while (v6 != v5);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_RGfA_rgb_RGfA_neon_fp16(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v44 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v42 = a2[2];
  v43 = v16;
  v18 = *a6;
  v38 = a6[1];
  v39 = v17;
  v40 = a6[2];
  v41 = v18;
  if (v15 == 255)
  {
    v19 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v19)
    {
      v20 = 0;
LABEL_14:
      free(v19);
      return v20;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v19 = &v38.i8[-v21];
    bzero(&v38 - v21, v22);
  }

  v23 = a9;
  v24 = v40;
  v25 = vbslq_s8(vcgtq_s64(vaddq_s64(v42, v39), v43), vsubq_s64(v43, v42), v39);
  v26 = vbslq_s8(vcgtq_s64(vaddq_s64(v40, v38), v41), vsubq_s64(v41, v40), v38);
  v27 = vbslq_s8(vcgtq_s64(v26, v25), v25, v26);
  v28.i64[0] = v27.i64[0];
  v28.i64[1] = -1;
  v29 = vaddq_s64(v42, v28);
  if (((*a4 * (v29.i64[1] + v27.i64[1]) + 16 * v29.i64[0]) > *a5 || (v30 = vaddq_s64(v40, v28), (*a8 * (v30.i64[1] + v27.i64[1]) + 16 * v30.i64[0]) > *a9)) && (v38 = v27, v39.i64[0] = a9, fig_log_get_emitter(), v31 = FigSignalErrorAtGM(), v24 = v40, v23 = v39.i64[0], v27 = v38, v31))
  {
    v20 = v31;
  }

  else
  {
    *v19 = v15;
    v32 = v42;
    *(v19 + 4) = v43;
    *(v19 + 20) = v27;
    *(v19 + 36) = v32;
    *(v19 + 5) = v41;
    *(v19 + 6) = v27;
    *(v19 + 7) = v24;
    *(v19 + 7) = a3;
    *(v19 + 8) = a4;
    *(v19 + 9) = a5;
    *(v19 + 16) = a7;
    *(v19 + 17) = a8;
    *(v19 + 18) = v23;
    *(v19 + 19) = a1;
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_RGfA_rgb_RGfA_neon_fp16_GCD);
    if (!v15)
    {
      return 0;
    }

    v34 = (v19 + 160);
    v35 = v15;
    while (1)
    {
      v36 = *v34++;
      v20 = v36;
      if (v36)
      {
        break;
      }

      if (!--v35)
      {
        v20 = 0;
        break;
      }
    }
  }

  if (v15 == 255)
  {
    goto LABEL_14;
  }

  return v20;
}

unsigned __int8 *vt_Copy_RGfA_rgb_RGfA_neon_fp16_GCD(unsigned __int8 *result, uint64_t a2)
{
  v2 = 0;
  v3 = *(result + 36);
  v4 = *result;
  v5 = *(result + 14);
  v6 = *(result + 12);
  v7 = *(result + 13);
  v8 = v7 * a2 / v4;
  v9 = v7 + v7 * a2;
  v10 = *(result + 19);
  v11 = **(result + 8);
  v12 = **(result + 7);
  v13 = v11 * (*(result + 28) * a2 / v4 + *(result + 44));
  v14 = **(result + 17);
  v15 = **(result + 16);
  v16 = v14 * (v8 + *(result + 15));
  v43[0] = v10[154];
  v17 = v10[155];
  v43[1] = v10[155];
  v18 = v10[156];
  v43[2] = v10[156];
  v19 = v10[157];
  v43[3] = v10[157];
  memset(v42, 0, sizeof(v42));
  v20 = v9 / v4;
  do
  {
    v21 = 0;
    v22 = v43[v2];
    v23 = *(v42 + v2);
    do
    {
      v41 = v23;
      *(&v41 | v21 & 7) = v22 + 4 * v21;
      v23 = v41;
      ++v21;
    }

    while (v21 != 8);
    *(v42 + v2++) = v41;
  }

  while (v2 != 4);
  v24 = v20 - v8;
  if (v20 - v8 >= 1)
  {
    v25 = 0;
    v26 = v15 + v16 + 16 * v5;
    v27 = v12 + v13 + 16 * v3;
    do
    {
      if (v6 < 8)
      {
        v34 = 0;
        v30 = v26;
        v29 = v27;
      }

      else
      {
        v28 = 0;
        v29 = v27;
        v30 = v26;
        do
        {
          v31 = v29;
          v44 = vld4q_f32(v31);
          v31 += 16;
          v45 = vld4q_f32(v31);
          v44.val[0] = vcvtq_f32_f16(vcvt_f16_f32(v44.val[0]));
          v44.val[1] = vcvtq_f32_f16(vcvt_f16_f32(v44.val[1]));
          v44.val[2] = vcvtq_f32_f16(vcvt_f16_f32(v44.val[2]));
          v45.val[0] = vcvtq_f32_f16(vcvt_f16_f32(v45.val[0]));
          v45.val[1] = vcvtq_f32_f16(vcvt_f16_f32(v45.val[1]));
          v45.val[2] = vcvtq_f32_f16(vcvt_f16_f32(v45.val[2]));
          v32 = v30 + 128;
          vst4q_f32(v30, v44);
          v33 = (v30 + 64);
          vst4q_f32(v33, v45);
          v29 += 32;
          v30 = v32;
          v28 += 8;
        }

        while (v28 < v6 - 7);
        v34 = v6 & 0x7FFFFFF8;
      }

      v35 = __OFSUB__(v6, v34);
      v36 = v6 - v34;
      if (!((v36 < 0) ^ v35 | (v36 == 0)))
      {
        do
        {
          v37 = v29[v43[0]];
          v38 = v29[v17];
          v39 = v29[v18];
          v40 = v29[v19];
          v29 += 4;
          *v30 = v37;
          *(v30 + 4) = v38;
          *(v30 + 8) = v39;
          *(v30 + 12) = v40;
          v30 += 16;
          --v36;
        }

        while (v36);
      }

      v27 += v11;
      v26 += v14;
      ++v25;
    }

    while (v25 != v24);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_RGfA_rgb_RGfA(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v44 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v42 = a2[2];
  v43 = v16;
  v18 = *a6;
  v38 = a6[1];
  v39 = v17;
  v40 = a6[2];
  v41 = v18;
  if (v15 == 255)
  {
    v19 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v19)
    {
      v20 = 0;
LABEL_14:
      free(v19);
      return v20;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v19 = &v38.i8[-v21];
    bzero(&v38 - v21, v22);
  }

  v23 = a9;
  v24 = v40;
  v25 = vbslq_s8(vcgtq_s64(vaddq_s64(v42, v39), v43), vsubq_s64(v43, v42), v39);
  v26 = vbslq_s8(vcgtq_s64(vaddq_s64(v40, v38), v41), vsubq_s64(v41, v40), v38);
  v27 = vbslq_s8(vcgtq_s64(v26, v25), v25, v26);
  v28.i64[0] = v27.i64[0];
  v28.i64[1] = -1;
  v29 = vaddq_s64(v42, v28);
  if (((*a4 * (v29.i64[1] + v27.i64[1]) + 16 * v29.i64[0]) > *a5 || (v30 = vaddq_s64(v40, v28), (*a8 * (v30.i64[1] + v27.i64[1]) + 16 * v30.i64[0]) > *a9)) && (v38 = v27, v39.i64[0] = a9, fig_log_get_emitter(), v31 = FigSignalErrorAtGM(), v24 = v40, v23 = v39.i64[0], v27 = v38, v31))
  {
    v20 = v31;
  }

  else
  {
    *v19 = v15;
    v32 = v42;
    *(v19 + 4) = v43;
    *(v19 + 20) = v27;
    *(v19 + 36) = v32;
    *(v19 + 5) = v41;
    *(v19 + 6) = v27;
    *(v19 + 7) = v24;
    *(v19 + 7) = a3;
    *(v19 + 8) = a4;
    *(v19 + 9) = a5;
    *(v19 + 16) = a7;
    *(v19 + 17) = a8;
    *(v19 + 18) = v23;
    *(v19 + 19) = a1;
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_RGfA_rgb_RGfA_GCD);
    if (!v15)
    {
      return 0;
    }

    v34 = (v19 + 160);
    v35 = v15;
    while (1)
    {
      v36 = *v34++;
      v20 = v36;
      if (v36)
      {
        break;
      }

      if (!--v35)
      {
        v20 = 0;
        break;
      }
    }
  }

  if (v15 == 255)
  {
    goto LABEL_14;
  }

  return v20;
}