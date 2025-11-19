uint64_t vt_Copy_BGRA_TRC_Tone_Mat_TRC_xf422_neon_fp16(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4, void *a5, uint64_t *a6, uint64_t a7, void *a8, void *a9)
{
  v62 = a8;
  v60 = a7;
  v65 = a5;
  v67 = a4;
  v68 = *MEMORY[0x1E69E9840];
  v10 = *(a1 + 162);
  v12 = *a2;
  v11 = a2[1];
  v13 = a2[2];
  v59 = a2[3];
  v14 = a2[4];
  v15 = a2[5];
  v16 = *a6;
  v63 = a6[1];
  v64 = v11;
  v18 = a6[2];
  v17 = a6[3];
  v57 = a1;
  v58 = v17;
  v19 = a6[4];
  v61 = a6[5];
  v66 = v16;
  v21 = v14 + v13 != v12 || v19 + v18 != v16;
  if (v10 == 255)
  {
    v22 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v22)
    {
      v23 = 0;
LABEL_59:
      free(v22);
      return v23;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v10 + 160, a3, a4);
    v22 = (&v55 - v24);
    bzero(&v55 - v24, v25);
  }

  v56 = a3;
  v26 = a9;
  v27 = v18 - 1;
  v28 = v13 - 1;
  if (v19)
  {
    v29 = v14 + 1;
  }

  else
  {
    v28 = v13;
    v29 = v14;
  }

  if (v19)
  {
    v30 = v19 + 1;
  }

  else
  {
    v27 = v18;
    v30 = v19;
  }

  if (v27)
  {
    v31 = v61;
    if (v21 || (4 * (v29 + v28) + 4) > *v67 || (v32 = v27 + 1 + v30, v33 = 2 * v32, 2 * v32 > *v62) || ((2 * (v32 + (v32 >> 63))) & 0xFFFFFFFFFFFFFFFCLL) > v62[1] || (v34 = v62[2], v33 > v34) && v34)
    {
      --v27;
      --v28;
    }

    else
    {
      ++v66;
      ++v28;
      ++v12;
      ++v27;
    }
  }

  else
  {
    v31 = v61;
  }

  if (v28 + v29 > v12)
  {
    v28 = v12 - v29;
  }

  if (v27 + v30 > v66)
  {
    v27 = v66 - v30;
  }

  if (v15 + v59 <= v64)
  {
    v35 = v59;
  }

  else
  {
    v35 = v64 - v15;
  }

  if (v31 + v58 <= v63)
  {
    v36 = v58;
  }

  else
  {
    v36 = v63 - v31;
  }

  if (v28 >= v27)
  {
    v37 = v27;
  }

  else
  {
    v37 = v28;
  }

  if (v35 >= v36)
  {
    v38 = v36;
  }

  else
  {
    v38 = v35;
  }

  if ((*v67 * (v15 + v38 - 1) + 4 * (v37 + v29)) <= *v65)
  {
    v43 = v31 + v38 - 1;
    v44 = v37 + v30;
    if ((*v62 * v43 + 2 * (v37 + v30)) <= *a9)
    {
      v45 = v60;
      if (*(v60 + 8) && v62[1] * v43 + 4 * ((v44 + 1 + ((v44 + 1) >> 63)) >> 1) > a9[1])
      {
        v59 = v29;
        v39 = v10;
        v40 = v12;
        v41 = v15;
        v42 = a9;
      }

      else
      {
        if (!*(v60 + 16) || (2 * v44 + v62[2] * v43) <= a9[2])
        {
          goto LABEL_53;
        }

        v59 = v29;
        v39 = v10;
        v40 = v12;
        v41 = v15;
        v42 = a9;
      }
    }

    else
    {
      v59 = v29;
      v39 = v10;
      v40 = v12;
      v41 = v15;
      v42 = a9;
    }
  }

  else
  {
    v59 = v29;
    v39 = v10;
    v40 = v12;
    v41 = v15;
    v42 = a9;
  }

  fig_log_get_emitter();
  v46 = FigSignalErrorAtGM();
  v45 = v60;
  v31 = v61;
  v26 = v42;
  v15 = v41;
  v12 = v40;
  v10 = v39;
  v29 = v59;
  if (v46)
  {
    v23 = v46;
    goto LABEL_58;
  }

LABEL_53:
  *v22 = v10;
  *(v22 + 4) = v12;
  v47 = v63;
  *(v22 + 12) = v64;
  *(v22 + 20) = v37;
  *(v22 + 28) = v38;
  *(v22 + 36) = v29;
  *(v22 + 44) = v15;
  v22[11] = v47;
  v22[12] = v37;
  v22[13] = v38;
  v22[14] = v30;
  v49 = v66;
  v48 = v67;
  v22[7] = v56;
  v22[8] = v48;
  v22[9] = v65;
  v22[10] = v49;
  v22[15] = v31;
  v22[16] = v45;
  v22[17] = v62;
  v22[18] = v26;
  v22[19] = v57;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v10, global_queue, v22, vt_Copy_BGRA_TRC_Tone_Mat_TRC_xf422_neon_fp16_GCD);
  if (!v10)
  {
    return 0;
  }

  v51 = (v22 + 20);
  v52 = v10;
  while (1)
  {
    v53 = *v51++;
    v23 = v53;
    if (v53)
    {
      break;
    }

    if (!--v52)
    {
      v23 = 0;
      break;
    }
  }

LABEL_58:
  if (v10 == 255)
  {
    goto LABEL_59;
  }

  return v23;
}

uint64_t vt_Copy_BGRA_TRC_Tone_Mat_TRC_xf422_neon_fp16_GCD(unsigned __int8 *a1, uint64_t a2, double a3, float32x4_t _Q1, float32x4_t a5, float32x4_t a6)
{
  v6 = 0;
  v224 = *(a1 + 36);
  v7 = *(a1 + 24);
  v8 = *a1;
  v9 = *(a1 + 28) * a2 / v8 + *(a1 + 44);
  v11 = *(a1 + 13);
  v10 = *(a1 + 14);
  v12 = *(a1 + 19);
  v13 = *(a1 + 15);
  v14 = *(a1 + 16);
  v15 = *(a1 + 17);
  v16 = **(a1 + 8);
  v17 = **(a1 + 7);
  result = *v15;
  v19 = v15[1];
  v20 = v15[2];
  v21 = v14[1];
  v222 = *v14;
  v22 = v14[2];
  v23 = *(v12 + 128);
  v236 = *(v12 + 154);
  v24 = *(v12 + 144);
  v25 = *(v12 + 132);
  v26 = v11 * a2 / v8;
  v27 = v26 + v13;
  v28 = *(v12 + 146);
  v220 = v16 * v9;
  v29 = v21 + v19 * (v26 + v13);
  v30 = v22 + v20 * (v26 + v13);
  v31 = *(v12 + 148);
  v32 = *(v12 + 150);
  v33 = *(v12 + 152);
  _S13 = *(v12 + 36);
  _S14 = *(v12 + 40);
  a6.i32[0] = *(v12 + 48);
  v232 = *(v12 + 44);
  a5.i32[0] = *(v12 + 52);
  v36.i32[0] = *(v12 + 56);
  v38 = *(v12 + 60);
  v37 = *(v12 + 64);
  _Q1.i32[0] = *(v12 + 68);
  v231 = *(v12 + 72);
  v230 = *(v12 + 76);
  v229 = *(v12 + 80);
  v228 = *(v12 + 84);
  v227 = *(v12 + 88);
  _S10 = *(v12 + 92);
  _S17 = *(v12 + 96);
  _S18 = *(v12 + 100);
  _S19 = *(v12 + 104);
  _S20 = *(v12 + 108);
  _S21 = *(v12 + 112);
  _S22 = *(v12 + 116);
  _S23 = *(v12 + 120);
  v234 = 0u;
  v235 = 0u;
  v47 = (v11 + v11 * a2) / v8;
  do
  {
    v48 = 0;
    v49 = *(&v236 + v6);
    v50 = *(&v234 + v6);
    do
    {
      v233 = v50;
      *(&v233 | v48 & 7) = v49 + 4 * v48;
      v50 = v233;
      ++v48;
    }

    while (v48 != 8);
    *(&v234 + v6++) = v233;
  }

  while (v6 != 4);
  v51 = v47 - v26;
  if (v47 - v26 >= 1)
  {
    v52 = 0;
    v53 = v24;
    v54 = v28;
    v55 = v31;
    v226 = v32;
    v56 = v33;
    _S30 = 8191.0 / v23;
    a6.i32[1] = v38;
    v58 = 1056964608;
    a5.i32[1] = v37;
    *a6.f32 = vmul_f32(*a6.f32, 0x3F0000003F000000);
    *a5.f32 = vmul_f32(*a5.f32, 0x3F0000003F000000);
    v36.i32[1] = _Q1.i32[0];
    *_Q1.f32 = vmul_f32(v36, 0x3F0000003F000000);
    __asm { FCVT            H0, S13 }

    v219 = _H0;
    __asm { FCVT            H0, S14 }

    v218 = _H0;
    _S0 = v232;
    __asm { FCVT            H0, S0 }

    v217 = *&_S0;
    _Q0 = vdupq_lane_s32(vcvt_f16_f32(a5), 0);
    v215 = _Q0;
    v216 = vdupq_lane_s32(vcvt_f16_f32(a6), 0);
    *_Q0.i8 = vcvt_f16_f32(_Q1);
    v67 = v12 + 16548;
    v68 = v7 & 0xFFFFFFFE;
    v69 = v12 + 32932;
    v70 = v12 + 164;
    v71 = vdupq_lane_s32(*_Q0.i8, 0);
    __asm { FCVT            H0, S20 }

    v213 = *_Q0.i16;
    v214 = v71;
    __asm { FCVT            H0, S21 }

    v212 = *_Q0.i16;
    __asm { FCVT            H0, S22 }

    v211 = *_Q0.i16;
    __asm { FCVT            H0, S23 }

    v210 = *_Q0.i16;
    *_Q0.i32 = v231;
    __asm { FCVT            H0, S0 }

    v209 = *_Q0.i16;
    *_Q0.i32 = v230;
    __asm { FCVT            H0, S0 }

    v208 = *_Q0.i16;
    *_Q0.i32 = v229;
    __asm { FCVT            H0, S0 }

    v207 = *_Q0.i16;
    *_Q0.i32 = v228;
    __asm { FCVT            H0, S0 }

    v206 = *_Q0.i16;
    *_Q0.i32 = v227;
    __asm { FCVT            H0, S0 }

    v205 = *_Q0.i16;
    __asm { FCVT            H0, S10 }

    v204 = *_Q0.i16;
    __asm { FCVT            H0, S17 }

    v203 = _Q0;
    *_Q0.i16 = v24;
    v72 = vdupq_lane_s16(*_Q0.i8, 0);
    *_Q0.i16 = v28;
    v73 = vdupq_lane_s16(*_Q0.i8, 0);
    *_Q0.i16 = v31;
    v74 = vdupq_lane_s16(*_Q0.i8, 0);
    v201 = v74;
    v202 = v73;
    *v74.i16 = v32;
    v75 = vdupq_lane_s16(*v74.i8, 0);
    *v74.i16 = v33;
    v199 = vdupq_lane_s16(*v74.i8, 0);
    v200 = v75;
    v76 = 16 - v25;
    if (v25 >= 0x11)
    {
      v76 = 0;
    }

    if (v22)
    {
      v77 = (v30 + 2 * v10);
    }

    else
    {
      v77 = 0;
    }

    if (v21)
    {
      v78 = (v29 + 2 * v10);
    }

    else
    {
      v78 = 0;
    }

    v79 = v222 + result * v27 + 2 * v10;
    v80 = v17 + v220 + 4 * v224;
    v81 = v76;
    __asm { FCVT            H0, S18 }

    v198 = _H0;
    __asm { FCVT            H0, S19 }

    v197 = _H0;
    __asm { FCVT            H9, S30 }

    v85 = vdupq_n_s16(v76);
    v223 = a5.f32[0];
    v225 = a6.f32[0];
    v195 = a5.f32[1];
    v196 = a6.f32[1];
    v86.i32[0] = _Q1.i32[1];
    v221 = _Q1.f32[0];
    v193 = _S13;
    v194 = _Q1.f32[1];
    v87.i64[0] = 0x9000900090009000;
    v87.i64[1] = 0x9000900090009000;
    v191 = _S10;
    v192 = _S14;
    do
    {
      if (v7 < 8)
      {
        v130 = 0;
        v92 = v79;
        v91 = v78;
        v90 = v77;
        v89 = v80;
      }

      else
      {
        v88 = 0;
        v89 = v80;
        v90 = v77;
        v91 = v78;
        v92 = v79;
        do
        {
          v93 = *(&v235 + 8);
          v86.i64[0] = *v89;
          v94 = v89[1];
          v95.i64[0] = v89[2];
          v96 = v89[3];
          v89 += 4;
          v86.i64[1] = v94;
          v95.i64[1] = v96;
          _Q1 = v95;
          v97 = vqtbl2_s8(*(&_Q1 - 1), *&v234);
          v98 = vqtbl2_s8(*(&_Q1 - 1), *(&v234 + 8));
          v99 = vqtbl2_s8(*(&_Q1 - 1), *&v235);
          *v100.i8 = vzip1_s8(v97, 0);
          v100.u64[1] = vzip2_s8(v97, 0);
          v101 = vcvtq_f16_u16(v100);
          *v100.i8 = vzip1_s8(v98, 0);
          v100.u64[1] = vzip2_s8(v98, 0);
          *v102.i8 = vzip1_s8(v99, 0);
          v102.u64[1] = vzip2_s8(v99, 0);
          v103 = vcvtq_f16_u16(v100);
          v104 = vmulq_n_f16(v101, _H9);
          v105 = vmulq_n_f16(vcvtq_f16_u16(v102), _H9);
          v106 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v104, 0), v87));
          v107.i16[0] = *(v70 + 2 * v106.u16[0]);
          v107.i16[1] = *(v70 + 2 * v106.u16[1]);
          v107.i16[2] = *(v70 + 2 * v106.u16[2]);
          v107.i16[3] = *(v70 + 2 * v106.u16[3]);
          v107.i16[4] = *(v70 + 2 * v106.u16[4]);
          v107.i16[5] = *(v70 + 2 * v106.u16[5]);
          v107.i16[6] = *(v70 + 2 * v106.u16[6]);
          v107.i16[7] = *(v70 + 2 * v106.u16[7]);
          v108 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmulq_n_f16(v103, _H9), 0), v87));
          v109.i16[0] = *(v70 + 2 * v108.u16[0]);
          v109.i16[1] = *(v70 + 2 * v108.u16[1]);
          v109.i16[2] = *(v70 + 2 * v108.u16[2]);
          v109.i16[3] = *(v70 + 2 * v108.u16[3]);
          v109.i16[4] = *(v70 + 2 * v108.u16[4]);
          v109.i16[5] = *(v70 + 2 * v108.u16[5]);
          v109.i16[6] = *(v70 + 2 * v108.u16[6]);
          v109.i16[7] = *(v70 + 2 * v108.u16[7]);
          v110 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v105, 0), v87));
          v105.i16[0] = *(v70 + 2 * v110.u16[0]);
          v105.i16[1] = *(v70 + 2 * v110.u16[1]);
          v105.i16[2] = *(v70 + 2 * v110.u16[2]);
          v105.i16[3] = *(v70 + 2 * v110.u16[3]);
          v105.i16[4] = *(v70 + 2 * v110.u16[4]);
          v105.i16[5] = *(v70 + 2 * v110.u16[5]);
          v105.i16[6] = *(v70 + 2 * v110.u16[6]);
          v105.i16[7] = *(v70 + 2 * v110.u16[7]);
          v111 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v107, v213), v109, v212), v105, v211), vmaxq_f16(vmaxq_f16(v107, v109), v105), v210), 0), v87));
          v103.i16[0] = *(v67 + 2 * v111.u16[0]);
          v103.i16[1] = *(v67 + 2 * v111.u16[1]);
          v103.i16[2] = *(v67 + 2 * v111.u16[2]);
          v103.i16[3] = *(v67 + 2 * v111.u16[3]);
          v103.i16[4] = *(v67 + 2 * v111.u16[4]);
          v103.i16[5] = *(v67 + 2 * v111.u16[5]);
          v103.i16[6] = *(v67 + 2 * v111.u16[6]);
          v103.i16[7] = *(v67 + 2 * v111.u16[7]);
          v112 = vmulq_f16(v107, v103);
          v113 = vmulq_f16(v109, v103);
          v114 = vmulq_f16(v105, v103);
          v115 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v112, v206), v113, v205), v114, v204);
          v116 = vmulq_n_f16(v114, v197);
          v117 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v112, v209), v113, v208), v114, v207), 0), v87));
          v107.i16[0] = *(v69 + 2 * v117.u16[0]);
          v107.i16[1] = *(v69 + 2 * v117.u16[1]);
          v107.i16[2] = *(v69 + 2 * v117.u16[2]);
          v107.i16[3] = *(v69 + 2 * v117.u16[3]);
          v107.i16[4] = *(v69 + 2 * v117.u16[4]);
          v107.i16[5] = *(v69 + 2 * v117.u16[5]);
          v107.i16[6] = *(v69 + 2 * v117.u16[6]);
          v118 = vmlaq_n_f16(v116, v113, v198);
          v119 = v107;
          v119.i16[7] = *(v69 + 2 * v117.u16[7]);
          v120 = vminq_f16(vmaxq_f16(v115, 0), v87);
          v121 = vcvtq_u16_f16(v120);
          v120.i16[0] = *(v69 + 2 * v121.u16[0]);
          v120.i16[1] = *(v69 + 2 * v121.u16[1]);
          v120.i16[2] = *(v69 + 2 * v121.u16[2]);
          v120.i16[3] = *(v69 + 2 * v121.u16[3]);
          v120.i16[4] = *(v69 + 2 * v121.u16[4]);
          v120.i16[5] = *(v69 + 2 * v121.u16[5]);
          v120.i16[6] = *(v69 + 2 * v121.u16[6]);
          v122 = (v69 + 2 * v121.u16[7]);
          v123 = v120;
          v123.i16[7] = *v122;
          v115.i16[7] = v203.i16[7];
          v124 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(v118, v112, *v203.i16), 0), v87));
          v115.i16[0] = *(v69 + 2 * v124.u16[0]);
          v115.i16[1] = *(v69 + 2 * v124.u16[1]);
          v115.i16[2] = *(v69 + 2 * v124.u16[2]);
          v115.i16[3] = *(v69 + 2 * v124.u16[3]);
          v115.i16[4] = *(v69 + 2 * v124.u16[4]);
          v115.i16[5] = *(v69 + 2 * v124.u16[5]);
          v115.i16[6] = *(v69 + 2 * v124.u16[6]);
          v125 = (v69 + 2 * v124.u16[7]);
          v126 = v115;
          v126.i16[7] = *v125;
          *v92++ = vshlq_u16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v72, v119, v219), v123, v218), v126, v217), v72), v201)), v85);
          v127 = vaddq_f16(vuzp1q_s16(v107, v120), vuzp2q_s16(v119, v123));
          v128 = vmlaq_f16(vmlaq_f16(vmlaq_f16(v202, v216, vzip1q_s16(v127, v127)), v215, vzip2q_s16(v127, v127)), v214, vaddq_f16(vtrn1q_s16(v115, v115), vtrn2q_s16(v126, v126)));
          v58 = v199.i32[0];
          *v91++ = vshlq_u16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(v128, v200), v199)), v85);
          if (v90)
          {
            *v86.i8 = vqtbl2_s8(*(&_Q1 - 1), v93);
            *_Q1.f32 = vzip1_s8(*v86.i8, 0);
            *&_Q1.u32[2] = vzip2_s8(*v86.i8, 0);
            v129.i64[0] = 0x101010101010101;
            v129.i64[1] = 0x101010101010101;
            v86 = vmulq_s16(_Q1, v129);
            *v90++ = v86;
          }

          v88 += 8;
        }

        while (v88 < v7 - 7);
        v130 = v7 & 0xFFFFFFF8;
        _S14 = v192;
        _S13 = v193;
        _S10 = v191;
      }

      if (v130 < v68)
      {
        v131 = v89 + 4;
        do
        {
          v132 = &v131[v236];
          v86.i8[0] = *(v132 - 4);
          v133 = &v131[BYTE1(v236)];
          _Q1.i8[0] = *(v133 - 4);
          *&v134 = _Q1.u32[0];
          v135 = _S30 * *&v134;
          v136 = &v131[BYTE2(v236)];
          LOBYTE(v134) = *(v136 - 4);
          _H0 = *(v70 + 2 * llroundf(fminf(fmaxf(_S30 * v86.u32[0], 0.0), 8191.0)));
          v138 = _S30 * v134;
          __asm { FCVT            S1, H0 }

          _H0 = *(v70 + 2 * llroundf(fminf(fmaxf(v135, 0.0), 8191.0)));
          __asm { FCVT            S2, H0 }

          _H0 = *(v70 + 2 * llroundf(fminf(fmaxf(v138, 0.0), 8191.0)));
          __asm { FCVT            S3, H0 }

          v143 = fmaxf(_Q1.f32[0], fmaxf(_S2, _S3));
          v144 = (((_S21 * _S2) + (_S20 * _Q1.f32[0])) + (_S22 * _S3)) + (_S23 * v143);
          v145 = 8191.0;
          if (v144 <= 8191.0)
          {
            v145 = (((_S21 * _S2) + (_S20 * _Q1.f32[0])) + (_S22 * _S3)) + (_S23 * v143);
            if (v144 < 0.0)
            {
              v145 = 0.0;
            }
          }

          LOBYTE(v144) = *v132;
          LOBYTE(v143) = *v133;
          LOBYTE(v58) = *v136;
          _H0 = *(v70 + 2 * llroundf(fminf(fmaxf(_S30 * LODWORD(v144), 0.0), 8191.0)));
          __asm { FCVT            S0, H0 }

          _H4 = *(v70 + 2 * llroundf(fminf(fmaxf(_S30 * LODWORD(v143), 0.0), 8191.0)));
          __asm { FCVT            S4, H4 }

          _H5 = *(v70 + 2 * llroundf(fminf(fmaxf(_S30 * v58, 0.0), 8191.0)));
          __asm { FCVT            S5, H5 }

          v152 = fmaxf(_S0, fmaxf(_S4, _S5));
          v153 = (((_S21 * _S4) + (_S20 * _S0)) + (_S22 * _S5)) + (_S23 * v152);
          v154 = 8191.0;
          if (v153 <= 8191.0)
          {
            v154 = (((_S21 * _S4) + (_S20 * _S0)) + (_S22 * _S5)) + (_S23 * v152);
            if (v153 < 0.0)
            {
              v154 = 0.0;
            }
          }

          _H7 = *(v67 + 2 * llroundf(v145));
          __asm { FCVT            S7, H7 }

          _S1 = _Q1.f32[0] * _S7;
          _S2 = _S2 * _S7;
          v159 = _S3 * _S7;
          v160 = ((v230 * _S2) + (_S1 * v231)) + (v159 * v229);
          v161 = ((v227 * _S2) + (_S1 * v228)) + (v159 * _S10);
          _S3 = ((_S18 * _S2) + (_S1 * _S17)) + (v159 * _S19);
          LOWORD(_S1) = *(v69 + 2 * llroundf(fminf(fmaxf(v160, 0.0), 8191.0)));
          __asm { FCVT            S1, H1 }

          LOWORD(_S2) = *(v69 + 2 * llroundf(fminf(fmaxf(v161, 0.0), 8191.0)));
          __asm { FCVT            S2, H2 }

          LOWORD(_S3) = *(v69 + 2 * llroundf(fminf(fmaxf(_S3, 0.0), 8191.0)));
          __asm { FCVT            S3, H3 }

          v166 = (((_S14 * _S2) + (_S13 * _S1)) + (v232 * _S3)) + v53;
          v167 = v55;
          if (v166 <= v55)
          {
            v167 = (((_S14 * _S2) + (_S13 * _S1)) + (v232 * _S3)) + v53;
            if (v166 < v53)
            {
              v167 = v53;
            }
          }

          v168 = &v131[HIBYTE(v236)];
          v169 = *(v168 - 4);
          v170 = *v168;
          _H6 = *(v67 + 2 * llroundf(v154));
          __asm { FCVT            S6, H6 }

          _S0 = _S0 * _S6;
          v174 = _S4 * _S6;
          _S5 = _S5 * _S6;
          v176 = ((v230 * v174) + (_S0 * v231)) + (_S5 * v229);
          v177 = ((v227 * v174) + (_S0 * v228)) + (_S5 * _S10);
          _S4 = ((_S18 * v174) + (_S0 * _S17)) + (_S5 * _S19);
          LOWORD(_S0) = *(v69 + 2 * llroundf(fminf(fmaxf(v176, 0.0), 8191.0)));
          __asm { FCVT            S0, H0 }

          LOWORD(_S5) = *(v69 + 2 * llroundf(fminf(fmaxf(v177, 0.0), 8191.0)));
          LOWORD(_S4) = *(v69 + 2 * llroundf(fminf(fmaxf(_S4, 0.0), 8191.0)));
          __asm
          {
            FCVT            S5, H5
            FCVT            S4, H4
          }

          v182 = (((_S14 * _S5) + (_S13 * _S0)) + (v232 * _S4)) + v53;
          v92->i16[0] = llroundf(v167) << v81;
          v183 = v55;
          if (v182 <= v55)
          {
            v183 = (((_S14 * _S5) + (_S13 * _S0)) + (v232 * _S4)) + v53;
            if (v182 < v53)
            {
              v183 = v53;
            }
          }

          v92->i16[1] = llroundf(v183) << v81;
          v184 = _S1 + _S0;
          v185 = _S2 + _S5;
          v186 = _S3 + _S4;
          v187 = ((v54 + (v184 * v225)) + (v185 * v223)) + ((_S3 + _S4) * v221);
          v188 = v56;
          if (v187 <= v56)
          {
            v188 = ((v54 + (v184 * v225)) + (v185 * v223)) + (v186 * v221);
            if (v187 < v226)
            {
              v188 = v32;
            }
          }

          v58 = LODWORD(v196);
          *v86.i32 = ((v54 + (v184 * v196)) + (v185 * v195)) + (v186 * v194);
          v91->i16[0] = llroundf(v188) << v81;
          _Q1.f32[0] = v56;
          if (*v86.i32 <= v56)
          {
            _Q1.i32[0] = v86.i32[0];
            if (*v86.i32 < v226)
            {
              _Q1.f32[0] = v32;
            }
          }

          v91->i16[1] = llroundf(_Q1.f32[0]) << v81;
          if (v90)
          {
            v90->i16[0] = v169 | (v169 << 8);
            v90->i16[1] = v170 | (v170 << 8);
            v90 = (v90 + 4);
          }

          v131 += 8;
          v130 += 2;
          v92 = (v92 + 4);
          v91 = (v91 + 4);
        }

        while (v130 < v68);
      }

      v80 += v16;
      v79 += result;
      v78 = (v78 + v19);
      v77 = (v77 + v20);
      ++v52;
    }

    while (v52 != v51);
  }

  *&a1[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_BGRA_TRC_Tone_Mat_TRC_xf422(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4, void *a5, uint64_t *a6, uint64_t a7, void *a8, void *a9)
{
  v62 = a8;
  v60 = a7;
  v65 = a5;
  v67 = a4;
  v68 = *MEMORY[0x1E69E9840];
  v10 = *(a1 + 162);
  v12 = *a2;
  v11 = a2[1];
  v13 = a2[2];
  v59 = a2[3];
  v14 = a2[4];
  v15 = a2[5];
  v16 = *a6;
  v63 = a6[1];
  v64 = v11;
  v18 = a6[2];
  v17 = a6[3];
  v57 = a1;
  v58 = v17;
  v19 = a6[4];
  v61 = a6[5];
  v66 = v16;
  v21 = v14 + v13 != v12 || v19 + v18 != v16;
  if (v10 == 255)
  {
    v22 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v22)
    {
      v23 = 0;
LABEL_59:
      free(v22);
      return v23;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v10 + 160, a3, a4);
    v22 = (&v55 - v24);
    bzero(&v55 - v24, v25);
  }

  v56 = a3;
  v26 = a9;
  v27 = v18 - 1;
  v28 = v13 - 1;
  if (v19)
  {
    v29 = v14 + 1;
  }

  else
  {
    v28 = v13;
    v29 = v14;
  }

  if (v19)
  {
    v30 = v19 + 1;
  }

  else
  {
    v27 = v18;
    v30 = v19;
  }

  if (v27)
  {
    v31 = v61;
    if (v21 || (4 * (v29 + v28) + 4) > *v67 || (v32 = v27 + 1 + v30, v33 = 2 * v32, 2 * v32 > *v62) || ((2 * (v32 + (v32 >> 63))) & 0xFFFFFFFFFFFFFFFCLL) > v62[1] || (v34 = v62[2], v33 > v34) && v34)
    {
      --v27;
      --v28;
    }

    else
    {
      ++v66;
      ++v28;
      ++v12;
      ++v27;
    }
  }

  else
  {
    v31 = v61;
  }

  if (v28 + v29 > v12)
  {
    v28 = v12 - v29;
  }

  if (v27 + v30 > v66)
  {
    v27 = v66 - v30;
  }

  if (v15 + v59 <= v64)
  {
    v35 = v59;
  }

  else
  {
    v35 = v64 - v15;
  }

  if (v31 + v58 <= v63)
  {
    v36 = v58;
  }

  else
  {
    v36 = v63 - v31;
  }

  if (v28 >= v27)
  {
    v37 = v27;
  }

  else
  {
    v37 = v28;
  }

  if (v35 >= v36)
  {
    v38 = v36;
  }

  else
  {
    v38 = v35;
  }

  if ((*v67 * (v15 + v38 - 1) + 4 * (v37 + v29)) <= *v65)
  {
    v43 = v31 + v38 - 1;
    v44 = v37 + v30;
    if ((*v62 * v43 + 2 * (v37 + v30)) <= *a9)
    {
      v45 = v60;
      if (*(v60 + 8) && v62[1] * v43 + 4 * ((v44 + 1 + ((v44 + 1) >> 63)) >> 1) > a9[1])
      {
        v59 = v29;
        v39 = v10;
        v40 = v12;
        v41 = v15;
        v42 = a9;
      }

      else
      {
        if (!*(v60 + 16) || (2 * v44 + v62[2] * v43) <= a9[2])
        {
          goto LABEL_53;
        }

        v59 = v29;
        v39 = v10;
        v40 = v12;
        v41 = v15;
        v42 = a9;
      }
    }

    else
    {
      v59 = v29;
      v39 = v10;
      v40 = v12;
      v41 = v15;
      v42 = a9;
    }
  }

  else
  {
    v59 = v29;
    v39 = v10;
    v40 = v12;
    v41 = v15;
    v42 = a9;
  }

  fig_log_get_emitter();
  v46 = FigSignalErrorAtGM();
  v45 = v60;
  v31 = v61;
  v26 = v42;
  v15 = v41;
  v12 = v40;
  v10 = v39;
  v29 = v59;
  if (v46)
  {
    v23 = v46;
    goto LABEL_58;
  }

LABEL_53:
  *v22 = v10;
  *(v22 + 4) = v12;
  v47 = v63;
  *(v22 + 12) = v64;
  *(v22 + 20) = v37;
  *(v22 + 28) = v38;
  *(v22 + 36) = v29;
  *(v22 + 44) = v15;
  v22[11] = v47;
  v22[12] = v37;
  v22[13] = v38;
  v22[14] = v30;
  v49 = v66;
  v48 = v67;
  v22[7] = v56;
  v22[8] = v48;
  v22[9] = v65;
  v22[10] = v49;
  v22[15] = v31;
  v22[16] = v45;
  v22[17] = v62;
  v22[18] = v26;
  v22[19] = v57;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v10, global_queue, v22, vt_Copy_BGRA_TRC_Tone_Mat_TRC_xf422_GCD);
  if (!v10)
  {
    return 0;
  }

  v51 = (v22 + 20);
  v52 = v10;
  while (1)
  {
    v53 = *v51++;
    v23 = v53;
    if (v53)
    {
      break;
    }

    if (!--v52)
    {
      v23 = 0;
      break;
    }
  }

LABEL_58:
  if (v10 == 255)
  {
    goto LABEL_59;
  }

  return v23;
}

unsigned __int8 *vt_Copy_BGRA_TRC_Tone_Mat_TRC_xf422_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, float a5, float a6, float a7, float a8)
{
  v9 = *result;
  v10 = *(result + 13);
  v11 = v10 * a2 / v9;
  v12 = (v10 + v10 * a2) / v9 - v11;
  if (v12 >= 1)
  {
    v13 = 0;
    v14 = *(result + 19);
    v15 = *(result + 24) & 0xFFFFFFFE;
    v16 = **(result + 8);
    v17 = *(result + 16);
    v18 = *(result + 17);
    v19 = *v18;
    v20 = v18[1];
    v21 = v18[2];
    v22 = 8191.0 / *(v14 + 128);
    LOWORD(a5) = *(v14 + 144);
    v23 = LODWORD(a5);
    LOWORD(a6) = *(v14 + 146);
    v24 = LODWORD(a6);
    LOWORD(a7) = *(v14 + 148);
    v25 = LODWORD(a7);
    LOWORD(a8) = *(v14 + 150);
    v128 = LODWORD(a8);
    LOWORD(a8) = *(v14 + 152);
    v26 = LODWORD(a8);
    v27 = *(v14 + 40);
    v129 = *(v14 + 36);
    v28 = *(v14 + 44);
    v29 = 0.5;
    v127 = *(v14 + 48) * 0.5;
    v126 = *(v14 + 52) * 0.5;
    v125 = *(v14 + 56) * 0.5;
    v30 = *(v14 + 64);
    v124 = *(v14 + 60) * 0.5;
    v123 = v30 * 0.5;
    v31 = *(v14 + 68);
    v32 = *(v14 + 72);
    v122 = v31 * 0.5;
    v33 = *(v14 + 76);
    v34 = *(v14 + 80);
    v35 = *(v14 + 84);
    v36 = *(v14 + 88);
    v37 = *(v14 + 92);
    v38 = *(v14 + 96);
    v40 = *(v14 + 100);
    v39 = *(v14 + 104);
    v41 = v14 + 164;
    v42 = v14 + 16548;
    v43 = v14 + 32932;
    v44 = *(v14 + 108);
    v45 = *(v14 + 112);
    v46 = *(v14 + 116);
    v47 = *(v14 + 120);
    v48 = *(result + 14);
    v49 = v11 + *(result + 15);
    v50 = *(result + 28) * a2 / v9 + *(result + 44);
    v51 = *(v14 + 132);
    if (v51 >= 0x11)
    {
      v52 = 0;
    }

    else
    {
      v52 = 16 - v51;
    }

    v53 = *(v14 + 157);
    v54 = *(v14 + 156);
    v55 = *(v14 + 155);
    v56 = *(v14 + 154);
    v57 = v17[2];
    if (v57)
    {
      v58 = v57 + v21 * v49 + 2 * v48;
    }

    else
    {
      v58 = 0;
    }

    v60 = *v17;
    v59 = v17[1];
    v61 = v59 + v20 * v49 + 2 * v48;
    if (!v59)
    {
      v61 = 0;
    }

    v62 = v60 + v19 * v49 + 2 * v48;
    v63 = **(result + 7) + v50 * v16 + 4 * *(result + 36);
    v64 = v52;
    do
    {
      if (v15 >= 1)
      {
        v65 = 0;
        v66 = v58;
        v67 = v62;
        v68 = v63;
        do
        {
          LOBYTE(v31) = *(v68 + v56);
          LOBYTE(v29) = *(v68 + v55);
          LOBYTE(v30) = *(v68 + v54);
          _H5 = *(v41 + 2 * llroundf(fminf(fmaxf(v22 * LODWORD(v31), 0.0), 8191.0)));
          __asm { FCVT            S14, H5 }

          _H5 = *(v41 + 2 * llroundf(fminf(fmaxf(v22 * LODWORD(v29), 0.0), 8191.0)));
          __asm { FCVT            S18, H5 }

          _H5 = *(v41 + 2 * llroundf(fminf(fmaxf(v22 * LODWORD(v30), 0.0), 8191.0)));
          __asm { FCVT            S19, H5 }

          v79 = ((v45 * _S18) + (v44 * _S14)) + (v46 * _S19);
          v80 = v79 + (v47 * fmaxf(_S14, fmaxf(_S18, _S19)));
          v81 = 8191.0;
          if (v80 <= 8191.0)
          {
            v81 = v80;
            if (v80 < 0.0)
            {
              v81 = 0.0;
            }
          }

          LOBYTE(v79) = *(v68 + 4 + v56);
          LOBYTE(v80) = *(v68 + 4 + v55);
          LOBYTE(v8) = *(v68 + 4 + v54);
          _H5 = *(v41 + 2 * llroundf(fminf(fmaxf(v22 * LODWORD(v79), 0.0), 8191.0)));
          __asm { FCVT            S15, H5 }

          _H5 = *(v41 + 2 * llroundf(fminf(fmaxf(v22 * LODWORD(v80), 0.0), 8191.0)));
          __asm { FCVT            S20, H5 }

          _H5 = *(v41 + 2 * llroundf(fminf(fmaxf(v22 * LODWORD(v8), 0.0), 8191.0)));
          __asm { FCVT            S21, H5 }

          v88 = (((v45 * _S20) + (v44 * _S15)) + (v46 * _S21)) + (v47 * fmaxf(_S15, fmaxf(_S20, _S21)));
          v89 = 8191.0;
          if (v88 <= 8191.0)
          {
            v89 = v88;
            if (v88 < 0.0)
            {
              v89 = 0.0;
            }
          }

          _H22 = *(v42 + 2 * llroundf(v81));
          __asm { FCVT            S22, H22 }

          _S18 = _S18 * _S22;
          v93 = _S19 * _S22;
          _S3 = ((v36 * _S18) + ((_S14 * _S22) * v35)) + (v93 * v37);
          v95 = llroundf(fminf(fmaxf(((v33 * _S18) + ((_S14 * _S22) * v32)) + (v93 * v34), 0.0), 8191.0));
          v96 = ((v40 * _S18) + ((_S14 * _S22) * v38)) + (v93 * v39);
          LOWORD(_S18) = *(v43 + 2 * v95);
          __asm { FCVT            S14, H18 }

          LOWORD(_S3) = *(v43 + 2 * llroundf(fminf(fmaxf(_S3, 0.0), 8191.0)));
          __asm { FCVT            S18, H3 }

          LOWORD(_S3) = *(v43 + 2 * llroundf(fminf(fmaxf(v96, 0.0), 8191.0)));
          __asm { FCVT            S19, H3 }

          v100 = (((v27 * _S18) + (v129 * _S14)) + (v28 * _S19)) + v23;
          v101 = v25;
          if (v100 <= v25)
          {
            v101 = (((v27 * _S18) + (v129 * _S14)) + (v28 * _S19)) + v23;
            if (v100 < v23)
            {
              v101 = v23;
            }
          }

          v102 = *(v68 + v53);
          v103 = *(v68 + 4 + v53);
          _H3 = *(v42 + 2 * llroundf(v89));
          __asm { FCVT            S3, H3 }

          _S5 = _S15 * _S3;
          v107 = _S20 * _S3;
          v108 = _S21 * _S3;
          v109 = ((v33 * v107) + (_S5 * v32)) + (v108 * v34);
          v110 = ((v36 * v107) + (_S5 * v35)) + (v108 * v37);
          _S3 = ((v40 * v107) + (_S5 * v38)) + (v108 * v39);
          LOWORD(_S5) = *(v43 + 2 * llroundf(fminf(fmaxf(v109, 0.0), 8191.0)));
          __asm { FCVT            S20, H5 }

          LOWORD(_S5) = *(v43 + 2 * llroundf(fminf(fmaxf(v110, 0.0), 8191.0)));
          LOWORD(_S3) = *(v43 + 2 * llroundf(fminf(fmaxf(_S3, 0.0), 8191.0)));
          __asm
          {
            FCVT            S24, H5
            FCVT            S21, H3
          }

          v115 = (((v27 * _S24) + (v129 * _S20)) + (v28 * _S21)) + v23;
          *v67 = llroundf(v101) << v64;
          v116 = v25;
          if (v115 <= v25)
          {
            v116 = (((v27 * _S24) + (v129 * _S20)) + (v28 * _S21)) + v23;
            if (v115 < v23)
            {
              v116 = v23;
            }
          }

          v67[1] = llroundf(v116) << v64;
          v117 = _S14 + _S20;
          v118 = _S18 + _S24;
          v119 = _S19 + _S21;
          v120 = ((v24 + (v117 * v127)) + (v118 * v126)) + (v119 * v125);
          v8 = v26;
          if (v120 <= v26)
          {
            v8 = ((v24 + (v117 * v127)) + (v118 * v126)) + (v119 * v125);
            if (v120 < v128)
            {
              v8 = v128;
            }
          }

          v121 = (v61 + 2 * v65);
          v31 = v122;
          v29 = ((v24 + (v117 * v124)) + (v118 * v123)) + (v119 * v122);
          *v121 = llroundf(v8) << v64;
          v30 = v26;
          if (v29 <= v26)
          {
            v30 = v29;
            if (v29 < v128)
            {
              v30 = v128;
            }
          }

          v121[1] = llroundf(v30) << v64;
          if (v66)
          {
            *v66 = v102 | (v102 << 8);
            v66[1] = v103 | (v103 << 8);
            v66 += 2;
          }

          v68 += 8;
          v65 += 2;
          v67 += 2;
        }

        while (v65 < v15);
      }

      v63 += v16;
      v62 += v19;
      v61 += v20;
      v58 += v21;
      ++v13;
    }

    while (v13 != v12);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_BGRA_TRC_Mat_TRC_xf422_neon_fp16(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4, void *a5, uint64_t *a6, uint64_t a7, void *a8, void *a9)
{
  v62 = a8;
  v60 = a7;
  v65 = a5;
  v67 = a4;
  v68 = *MEMORY[0x1E69E9840];
  v10 = *(a1 + 162);
  v12 = *a2;
  v11 = a2[1];
  v13 = a2[2];
  v59 = a2[3];
  v14 = a2[4];
  v15 = a2[5];
  v16 = *a6;
  v63 = a6[1];
  v64 = v11;
  v18 = a6[2];
  v17 = a6[3];
  v57 = a1;
  v58 = v17;
  v19 = a6[4];
  v61 = a6[5];
  v66 = v16;
  v21 = v14 + v13 != v12 || v19 + v18 != v16;
  if (v10 == 255)
  {
    v22 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v22)
    {
      v23 = 0;
LABEL_59:
      free(v22);
      return v23;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v10 + 160, a3, a4);
    v22 = (&v55 - v24);
    bzero(&v55 - v24, v25);
  }

  v56 = a3;
  v26 = a9;
  v27 = v18 - 1;
  v28 = v13 - 1;
  if (v19)
  {
    v29 = v14 + 1;
  }

  else
  {
    v28 = v13;
    v29 = v14;
  }

  if (v19)
  {
    v30 = v19 + 1;
  }

  else
  {
    v27 = v18;
    v30 = v19;
  }

  if (v27)
  {
    v31 = v61;
    if (v21 || (4 * (v29 + v28) + 4) > *v67 || (v32 = v27 + 1 + v30, v33 = 2 * v32, 2 * v32 > *v62) || ((2 * (v32 + (v32 >> 63))) & 0xFFFFFFFFFFFFFFFCLL) > v62[1] || (v34 = v62[2], v33 > v34) && v34)
    {
      --v27;
      --v28;
    }

    else
    {
      ++v66;
      ++v28;
      ++v12;
      ++v27;
    }
  }

  else
  {
    v31 = v61;
  }

  if (v28 + v29 > v12)
  {
    v28 = v12 - v29;
  }

  if (v27 + v30 > v66)
  {
    v27 = v66 - v30;
  }

  if (v15 + v59 <= v64)
  {
    v35 = v59;
  }

  else
  {
    v35 = v64 - v15;
  }

  if (v31 + v58 <= v63)
  {
    v36 = v58;
  }

  else
  {
    v36 = v63 - v31;
  }

  if (v28 >= v27)
  {
    v37 = v27;
  }

  else
  {
    v37 = v28;
  }

  if (v35 >= v36)
  {
    v38 = v36;
  }

  else
  {
    v38 = v35;
  }

  if ((*v67 * (v15 + v38 - 1) + 4 * (v37 + v29)) <= *v65)
  {
    v43 = v31 + v38 - 1;
    v44 = v37 + v30;
    if ((*v62 * v43 + 2 * (v37 + v30)) <= *a9)
    {
      v45 = v60;
      if (*(v60 + 8) && v62[1] * v43 + 4 * ((v44 + 1 + ((v44 + 1) >> 63)) >> 1) > a9[1])
      {
        v59 = v29;
        v39 = v10;
        v40 = v12;
        v41 = v15;
        v42 = a9;
      }

      else
      {
        if (!*(v60 + 16) || (2 * v44 + v62[2] * v43) <= a9[2])
        {
          goto LABEL_53;
        }

        v59 = v29;
        v39 = v10;
        v40 = v12;
        v41 = v15;
        v42 = a9;
      }
    }

    else
    {
      v59 = v29;
      v39 = v10;
      v40 = v12;
      v41 = v15;
      v42 = a9;
    }
  }

  else
  {
    v59 = v29;
    v39 = v10;
    v40 = v12;
    v41 = v15;
    v42 = a9;
  }

  fig_log_get_emitter();
  v46 = FigSignalErrorAtGM();
  v45 = v60;
  v31 = v61;
  v26 = v42;
  v15 = v41;
  v12 = v40;
  v10 = v39;
  v29 = v59;
  if (v46)
  {
    v23 = v46;
    goto LABEL_58;
  }

LABEL_53:
  *v22 = v10;
  *(v22 + 4) = v12;
  v47 = v63;
  *(v22 + 12) = v64;
  *(v22 + 20) = v37;
  *(v22 + 28) = v38;
  *(v22 + 36) = v29;
  *(v22 + 44) = v15;
  v22[11] = v47;
  v22[12] = v37;
  v22[13] = v38;
  v22[14] = v30;
  v49 = v66;
  v48 = v67;
  v22[7] = v56;
  v22[8] = v48;
  v22[9] = v65;
  v22[10] = v49;
  v22[15] = v31;
  v22[16] = v45;
  v22[17] = v62;
  v22[18] = v26;
  v22[19] = v57;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v10, global_queue, v22, vt_Copy_BGRA_TRC_Mat_TRC_xf422_neon_fp16_GCD);
  if (!v10)
  {
    return 0;
  }

  v51 = (v22 + 20);
  v52 = v10;
  while (1)
  {
    v53 = *v51++;
    v23 = v53;
    if (v53)
    {
      break;
    }

    if (!--v52)
    {
      v23 = 0;
      break;
    }
  }

LABEL_58:
  if (v10 == 255)
  {
    goto LABEL_59;
  }

  return v23;
}

unsigned __int8 *vt_Copy_BGRA_TRC_Mat_TRC_xf422_neon_fp16_GCD(unsigned __int8 *result, uint64_t a2, double a3, float32x4_t a4, float32x4_t a5, float32x4_t a6)
{
  v7 = 0;
  v183 = *(result + 36);
  v8 = *(result + 24);
  v9 = *result;
  v10 = *(result + 13);
  v11 = *(result + 14);
  v12 = *(result + 19);
  v13 = *(result + 16);
  v14 = *(result + 17);
  v15 = **(result + 8);
  v181 = **(result + 7);
  v16 = *v14;
  v17 = v14[1];
  v18 = v14[2];
  v19 = v13[1];
  v179 = *v13;
  v20 = v13[2];
  v21 = *(v12 + 128);
  v22 = v10 * a2 / v9;
  v23 = v22 + *(result + 15);
  v159 = v15 * (*(result + 28) * a2 / v9 + *(result + 44));
  v189 = *(v12 + 154);
  v24 = *(v12 + 144);
  v25 = *(v12 + 132);
  v26 = *(v12 + 146);
  v27 = *(v12 + 148);
  v28 = *(v12 + 150);
  v29 = *(v12 + 152);
  _S8 = *(v12 + 36);
  _S9 = *(v12 + 40);
  _S12 = *(v12 + 44);
  a6.i32[0] = *(v12 + 48);
  a5.i32[0] = *(v12 + 52);
  v33.i32[0] = *(v12 + 56);
  v35.i32[0] = *(v12 + 60);
  v34 = *(v12 + 64);
  a4.i32[0] = *(v12 + 68);
  v185 = *(v12 + 72);
  _S4 = *(v12 + 76);
  _S5 = *(v12 + 80);
  _S6 = *(v12 + 84);
  _S7 = *(v12 + 88);
  _S16 = *(v12 + 92);
  _S17 = *(v12 + 96);
  _S18 = *(v12 + 100);
  _S19 = *(v12 + 104);
  v187 = 0u;
  v188 = 0u;
  v44 = (v10 + v10 * a2) / v9;
  do
  {
    v45 = 0;
    v46 = *(&v189 + v7);
    v47 = *(&v187 + v7);
    do
    {
      v186 = v47;
      *(&v186 | v45 & 7) = v46 + 4 * v45;
      v47 = v186;
      ++v45;
    }

    while (v45 != 8);
    *(&v187 + v7++) = v186;
  }

  while (v7 != 4);
  v48 = v44 - v22;
  if (v44 - v22 >= 1)
  {
    v49 = 0;
    v50 = v24;
    v51 = v26;
    v52 = v27;
    v184 = v28;
    v53 = v29;
    _S26 = 8191.0 / v21;
    a6.i32[1] = v35.i32[0];
    v55.i32[0] = 1056964608;
    a5.i32[1] = v34;
    *a6.f32 = vmul_f32(*a6.f32, 0x3F0000003F000000);
    *a5.f32 = vmul_f32(*a5.f32, 0x3F0000003F000000);
    v33.i32[1] = a4.i32[0];
    *a4.f32 = vmul_f32(v33, 0x3F0000003F000000);
    __asm { FCVT            H0, S8 }

    v178 = _H0;
    __asm { FCVT            H0, S9 }

    v177 = _H0;
    v176 = vdupq_lane_s32(vcvt_f16_f32(a6), 0);
    v62 = v12 + 164;
    v63 = v12 + 16548;
    v64 = v8 & 0xFFFFFFFE;
    v175 = vdupq_lane_s32(vcvt_f16_f32(a5), 0);
    __asm { FCVT            H0, S12 }

    v174 = _H0;
    _Q0 = vdupq_lane_s32(vcvt_f16_f32(a4), 0);
    v173 = _Q0;
    *_Q0.i32 = v185;
    __asm { FCVT            H0, S0 }

    v172 = *_Q0.i16;
    __asm { FCVT            H0, S4 }

    v171 = *_Q0.i16;
    __asm { FCVT            H0, S5 }

    v170 = *_Q0.i16;
    __asm { FCVT            H0, S6 }

    v169 = *_Q0.i16;
    __asm { FCVT            H0, S7 }

    v168 = *_Q0.i16;
    __asm { FCVT            H0, S16 }

    v167 = *_Q0.i16;
    __asm { FCVT            H0, S17 }

    v166 = *_Q0.i16;
    __asm { FCVT            H0, S18 }

    v165 = *_Q0.i16;
    *_Q0.i16 = v24;
    v67 = vdupq_lane_s16(*_Q0.i8, 0);
    *_Q0.i16 = v26;
    v68 = vdupq_lane_s16(*_Q0.i8, 0);
    v164 = v68;
    *v68.i16 = v27;
    v69 = vdupq_lane_s16(*v68.i8, 0);
    v163 = v69;
    *v69.i16 = v28;
    _Q0 = vdupq_lane_s16(*v69.i8, 0);
    v162 = _Q0;
    __asm { FCVT            H0, S19 }

    v161 = *_Q0.i16;
    *_Q0.i16 = v29;
    v160 = vdupq_lane_s16(*_Q0.i8, 0);
    v71 = 16 - v25;
    if (v25 >= 0x11)
    {
      v71 = 0;
    }

    if (v20)
    {
      v72 = v20 + v18 * v23 + 2 * v11;
    }

    else
    {
      v72 = 0;
    }

    if (v19)
    {
      v73 = v19 + v17 * v23 + 2 * v11;
    }

    else
    {
      v73 = 0;
    }

    v74 = v179 + v16 * v23 + 2 * v11;
    v75 = v181 + v159 + 4 * v183;
    __asm { FCVT            H13, S26 }

    v77 = v71;
    v78 = vdupq_n_s16(v71);
    v182 = a5.f32[0];
    v79 = a6.i64[0];
    v80.i32[0] = a4.i32[1];
    v157 = a4.f32[1];
    v180 = a4.f32[0];
    v158 = a5.f32[1];
    v81.i64[0] = 0x9000900090009000;
    v81.i64[1] = 0x9000900090009000;
    v155 = _S9;
    v156 = _S8;
    v153 = _S4;
    v154 = _S12;
    do
    {
      if (v8 < 8)
      {
        v112 = 0;
        v86 = v73;
        v85 = v72;
        v84 = v74;
        v83 = v75;
      }

      else
      {
        v82 = 0;
        v83 = v75;
        v84 = v74;
        v85 = v72;
        v86 = v73;
        do
        {
          v87 = *(&v188 + 8);
          v80.i64[0] = *v83;
          v88 = v83[1];
          a5.i64[0] = v83[2];
          v89 = v83[3];
          v83 += 4;
          v80.i64[1] = v88;
          a5.i64[1] = v89;
          a4 = a5;
          v90 = vqtbl2_s8(*(&a4 - 1), *&v187);
          v91 = vqtbl2_s8(*(&a4 - 1), *(&v187 + 8));
          v92 = vqtbl2_s8(*(&a4 - 1), *&v188);
          *v93.i8 = vzip1_s8(v90, 0);
          v93.u64[1] = vzip2_s8(v90, 0);
          v94 = vcvtq_f16_u16(v93);
          *v93.i8 = vzip1_s8(v91, 0);
          v93.u64[1] = vzip2_s8(v91, 0);
          *v95.i8 = vzip1_s8(v92, 0);
          v95.u64[1] = vzip2_s8(v92, 0);
          v96 = vmulq_n_f16(vcvtq_f16_u16(v93), _H13);
          v97 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmulq_n_f16(v94, _H13), 0), v81));
          v93.i16[0] = *(v62 + 2 * v97.u16[0]);
          v93.i16[1] = *(v62 + 2 * v97.u16[1]);
          v93.i16[2] = *(v62 + 2 * v97.u16[2]);
          v93.i16[3] = *(v62 + 2 * v97.u16[3]);
          v93.i16[4] = *(v62 + 2 * v97.u16[4]);
          v93.i16[5] = *(v62 + 2 * v97.u16[5]);
          v93.i16[6] = *(v62 + 2 * v97.u16[6]);
          v93.i16[7] = *(v62 + 2 * v97.u16[7]);
          v98 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v96, 0), v81));
          v97.i16[0] = *(v62 + 2 * v98.u16[0]);
          v97.i16[1] = *(v62 + 2 * v98.u16[1]);
          v97.i16[2] = *(v62 + 2 * v98.u16[2]);
          v97.i16[3] = *(v62 + 2 * v98.u16[3]);
          v97.i16[4] = *(v62 + 2 * v98.u16[4]);
          v97.i16[5] = *(v62 + 2 * v98.u16[5]);
          v97.i16[6] = *(v62 + 2 * v98.u16[6]);
          v97.i16[7] = *(v62 + 2 * v98.u16[7]);
          v99 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmulq_n_f16(vcvtq_f16_u16(v95), _H13), 0), v81));
          v98.i16[0] = *(v62 + 2 * v99.u16[0]);
          v98.i16[1] = *(v62 + 2 * v99.u16[1]);
          v98.i16[2] = *(v62 + 2 * v99.u16[2]);
          v98.i16[3] = *(v62 + 2 * v99.u16[3]);
          v98.i16[4] = *(v62 + 2 * v99.u16[4]);
          v98.i16[5] = *(v62 + 2 * v99.u16[5]);
          v98.i16[6] = *(v62 + 2 * v99.u16[6]);
          v98.i16[7] = *(v62 + 2 * v99.u16[7]);
          v100 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v93, v169), v97, v168), v98, v167);
          v101 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v93, v172), v97, v171), v98, v170), 0), v81));
          v6.i16[0] = *(v63 + 2 * v101.u16[0]);
          v6.i16[1] = *(v63 + 2 * v101.u16[1]);
          v6.i16[2] = *(v63 + 2 * v101.u16[2]);
          v6.i16[3] = *(v63 + 2 * v101.u16[3]);
          v6.i16[4] = *(v63 + 2 * v101.u16[4]);
          v6.i16[5] = *(v63 + 2 * v101.u16[5]);
          v6.i16[6] = *(v63 + 2 * v101.u16[6]);
          v102 = vmlaq_n_f16(vmulq_n_f16(v98, v161), v97, v165);
          v103 = v6;
          v103.i16[7] = *(v63 + 2 * v101.u16[7]);
          v104 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v100, 0), v81));
          v100.i16[0] = *(v63 + 2 * v104.u16[0]);
          v100.i16[1] = *(v63 + 2 * v104.u16[1]);
          v100.i16[2] = *(v63 + 2 * v104.u16[2]);
          v100.i16[3] = *(v63 + 2 * v104.u16[3]);
          v100.i16[4] = *(v63 + 2 * v104.u16[4]);
          v100.i16[5] = *(v63 + 2 * v104.u16[5]);
          v100.i16[6] = *(v63 + 2 * v104.u16[6]);
          v105 = (v63 + 2 * v104.u16[7]);
          v106 = v100;
          v106.i16[7] = *v105;
          v107 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(v102, v93, v166), 0), v81));
          v93.i16[0] = *(v63 + 2 * v107.u16[0]);
          v93.i16[1] = *(v63 + 2 * v107.u16[1]);
          v93.i16[2] = *(v63 + 2 * v107.u16[2]);
          v93.i16[3] = *(v63 + 2 * v107.u16[3]);
          v93.i16[4] = *(v63 + 2 * v107.u16[4]);
          v93.i16[5] = *(v63 + 2 * v107.u16[5]);
          v93.i16[6] = *(v63 + 2 * v107.u16[6]);
          v108 = (v63 + 2 * v107.u16[7]);
          v109 = v93;
          v109.i16[7] = *v108;
          *v84++ = vshlq_u16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v67, v103, v178), v106, v177), v109, v174), v67), v163)), v78);
          v110 = vaddq_f16(vuzp1q_s16(v6, v100), vuzp2q_s16(v103, v106));
          v35 = vzip1q_s16(v110, v110);
          v55 = vaddq_f16(vtrn1q_s16(v93, v93), vtrn2q_s16(v109, v109));
          *v86++ = vshlq_u16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_f16(vmlaq_f16(vmlaq_f16(v164, v176, v35), v175, vzip2q_s16(v110, v110)), v173, v55), v162), v160)), v78);
          if (v85)
          {
            *v80.i8 = vqtbl2_s8(*(&a4 - 1), v87);
            *a4.f32 = vzip1_s8(*v80.i8, 0);
            *&a4.u32[2] = vzip2_s8(*v80.i8, 0);
            v111.i64[0] = 0x101010101010101;
            v111.i64[1] = 0x101010101010101;
            v80 = vmulq_s16(a4, v111);
            *v85++ = v80;
          }

          v82 += 8;
        }

        while (v82 < v8 - 7);
        v112 = v8 & 0xFFFFFFF8;
        _S9 = v155;
        _S8 = v156;
        _S4 = v153;
        _S12 = v154;
      }

      if (v112 < v64)
      {
        v113 = v83 + 4;
        do
        {
          v114 = &v113[v189];
          v80.i8[0] = *(v114 - 4);
          v115 = &v113[BYTE1(v189)];
          a4.i8[0] = *(v115 - 4);
          v116 = &v113[BYTE2(v189)];
          a5.i8[0] = *(v116 - 4);
          v117 = llroundf(fminf(fmaxf(_S26 * v80.u32[0], 0.0), 8191.0));
          _S0 = _S26 * a5.u32[0];
          _H2 = *(v62 + 2 * v117);
          __asm { FCVT            S2, H2 }

          _H1 = *(v62 + 2 * llroundf(fminf(fmaxf(_S26 * a4.u32[0], 0.0), 8191.0)));
          __asm { FCVT            S1, H1 }

          LOWORD(_S0) = *(v62 + 2 * llroundf(fminf(fmaxf(_S0, 0.0), 8191.0)));
          __asm { FCVT            S0, H0 }

          v124 = ((_S4 * _S1) + (_S2 * v185)) + (_S0 * _S5);
          v125 = ((_S7 * _S1) + (_S2 * _S6)) + (_S0 * _S16);
          _S2 = ((_S18 * _S1) + (_S2 * _S17)) + (_S0 * _S19);
          LOWORD(_S0) = *(v63 + 2 * llroundf(fminf(fmaxf(v124, 0.0), 8191.0)));
          __asm { FCVT            S0, H0 }

          LOWORD(_S1) = *(v63 + 2 * llroundf(fminf(fmaxf(v125, 0.0), 8191.0)));
          __asm { FCVT            S1, H1 }

          LOWORD(_S2) = *(v63 + 2 * llroundf(fminf(fmaxf(_S2, 0.0), 8191.0)));
          __asm { FCVT            S2, H2 }

          v130 = (((_S9 * _S1) + (_S8 * _S0)) + (_S12 * _S2)) + v50;
          v131 = v52;
          if (v130 <= v52)
          {
            v131 = (((_S9 * _S1) + (_S8 * _S0)) + (_S12 * _S2)) + v50;
            if (v130 < v50)
            {
              v131 = v24;
            }
          }

          v132 = &v113[HIBYTE(v189)];
          v133 = *(v132 - 4);
          LOBYTE(v130) = *v114;
          v55.i8[0] = *v115;
          v35.i8[0] = *v116;
          v134 = *v132;
          _H24 = *(v62 + 2 * llroundf(fminf(fmaxf(_S26 * LODWORD(v130), 0.0), 8191.0)));
          __asm { FCVT            S24, H24 }

          _H27 = *(v62 + 2 * llroundf(fminf(fmaxf(_S26 * v55.u32[0], 0.0), 8191.0)));
          _H28 = *(v62 + 2 * llroundf(fminf(fmaxf(_S26 * v35.u32[0], 0.0), 8191.0)));
          __asm
          {
            FCVT            S27, H27
            FCVT            S28, H28
          }

          v141 = ((_S4 * _S27) + (_S24 * v185)) + (_S28 * _S5);
          v142 = ((_S7 * _S27) + (_S24 * _S6)) + (_S28 * _S16);
          _S27 = ((_S18 * _S27) + (_S24 * _S17)) + (_S28 * _S19);
          LOWORD(_S24) = *(v63 + 2 * llroundf(fminf(fmaxf(v141, 0.0), 8191.0)));
          __asm { FCVT            S24, H24 }

          LOWORD(_S28) = *(v63 + 2 * llroundf(fminf(fmaxf(v142, 0.0), 8191.0)));
          LOWORD(_S27) = *(v63 + 2 * llroundf(fminf(fmaxf(_S27, 0.0), 8191.0)));
          __asm
          {
            FCVT            S29, H28
            FCVT            S27, H27
          }

          *v35.i32 = ((_S9 * _S29) + (_S8 * _S24)) + (_S12 * _S27);
          v84->i16[0] = llroundf(v131) << v77;
          v147 = v52;
          if ((*v35.i32 + v50) <= v52)
          {
            v147 = *v35.i32 + v50;
            if ((*v35.i32 + v50) < v50)
            {
              v147 = v24;
            }
          }

          v84->i16[1] = llroundf(v147) << v77;
          v148 = _S0 + _S24;
          v149 = _S1 + _S29;
          a5.f32[0] = _S2 + _S27;
          v150 = ((v51 + (v148 * *&v79)) + (v149 * v182)) + (a5.f32[0] * v180);
          v151 = v53;
          if (v150 <= v53)
          {
            v151 = ((v51 + (v148 * *&v79)) + (v149 * v182)) + (a5.f32[0] * v180);
            if (v150 < v184)
            {
              v151 = v184;
            }
          }

          v55.i32[0] = HIDWORD(v79);
          *v80.i32 = ((v51 + (v148 * *(&v79 + 1))) + (v149 * v158)) + (a5.f32[0] * v157);
          v86->i16[0] = llroundf(v151) << v77;
          a4.f32[0] = v53;
          if (*v80.i32 <= v53)
          {
            a4.i32[0] = v80.i32[0];
            if (*v80.i32 < v184)
            {
              a4.f32[0] = v184;
            }
          }

          v86->i16[1] = llroundf(a4.f32[0]) << v77;
          if (v85)
          {
            v85->i16[0] = v133 | (v133 << 8);
            v85->i16[1] = v134 | (v134 << 8);
            v85 = (v85 + 4);
          }

          v113 += 8;
          v112 += 2;
          v84 = (v84 + 4);
          v86 = (v86 + 4);
        }

        while (v112 < v64);
      }

      v75 += v15;
      v74 += v16;
      v73 += v17;
      v72 += v18;
      ++v49;
    }

    while (v49 != v48);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_BGRA_TRC_Mat_TRC_xf422(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4, void *a5, uint64_t *a6, uint64_t a7, void *a8, void *a9)
{
  v62 = a8;
  v60 = a7;
  v65 = a5;
  v67 = a4;
  v68 = *MEMORY[0x1E69E9840];
  v10 = *(a1 + 162);
  v12 = *a2;
  v11 = a2[1];
  v13 = a2[2];
  v59 = a2[3];
  v14 = a2[4];
  v15 = a2[5];
  v16 = *a6;
  v63 = a6[1];
  v64 = v11;
  v18 = a6[2];
  v17 = a6[3];
  v57 = a1;
  v58 = v17;
  v19 = a6[4];
  v61 = a6[5];
  v66 = v16;
  v21 = v14 + v13 != v12 || v19 + v18 != v16;
  if (v10 == 255)
  {
    v22 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v22)
    {
      v23 = 0;
LABEL_59:
      free(v22);
      return v23;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v10 + 160, a3, a4);
    v22 = (&v55 - v24);
    bzero(&v55 - v24, v25);
  }

  v56 = a3;
  v26 = a9;
  v27 = v18 - 1;
  v28 = v13 - 1;
  if (v19)
  {
    v29 = v14 + 1;
  }

  else
  {
    v28 = v13;
    v29 = v14;
  }

  if (v19)
  {
    v30 = v19 + 1;
  }

  else
  {
    v27 = v18;
    v30 = v19;
  }

  if (v27)
  {
    v31 = v61;
    if (v21 || (4 * (v29 + v28) + 4) > *v67 || (v32 = v27 + 1 + v30, v33 = 2 * v32, 2 * v32 > *v62) || ((2 * (v32 + (v32 >> 63))) & 0xFFFFFFFFFFFFFFFCLL) > v62[1] || (v34 = v62[2], v33 > v34) && v34)
    {
      --v27;
      --v28;
    }

    else
    {
      ++v66;
      ++v28;
      ++v12;
      ++v27;
    }
  }

  else
  {
    v31 = v61;
  }

  if (v28 + v29 > v12)
  {
    v28 = v12 - v29;
  }

  if (v27 + v30 > v66)
  {
    v27 = v66 - v30;
  }

  if (v15 + v59 <= v64)
  {
    v35 = v59;
  }

  else
  {
    v35 = v64 - v15;
  }

  if (v31 + v58 <= v63)
  {
    v36 = v58;
  }

  else
  {
    v36 = v63 - v31;
  }

  if (v28 >= v27)
  {
    v37 = v27;
  }

  else
  {
    v37 = v28;
  }

  if (v35 >= v36)
  {
    v38 = v36;
  }

  else
  {
    v38 = v35;
  }

  if ((*v67 * (v15 + v38 - 1) + 4 * (v37 + v29)) <= *v65)
  {
    v43 = v31 + v38 - 1;
    v44 = v37 + v30;
    if ((*v62 * v43 + 2 * (v37 + v30)) <= *a9)
    {
      v45 = v60;
      if (*(v60 + 8) && v62[1] * v43 + 4 * ((v44 + 1 + ((v44 + 1) >> 63)) >> 1) > a9[1])
      {
        v59 = v29;
        v39 = v10;
        v40 = v12;
        v41 = v15;
        v42 = a9;
      }

      else
      {
        if (!*(v60 + 16) || (2 * v44 + v62[2] * v43) <= a9[2])
        {
          goto LABEL_53;
        }

        v59 = v29;
        v39 = v10;
        v40 = v12;
        v41 = v15;
        v42 = a9;
      }
    }

    else
    {
      v59 = v29;
      v39 = v10;
      v40 = v12;
      v41 = v15;
      v42 = a9;
    }
  }

  else
  {
    v59 = v29;
    v39 = v10;
    v40 = v12;
    v41 = v15;
    v42 = a9;
  }

  fig_log_get_emitter();
  v46 = FigSignalErrorAtGM();
  v45 = v60;
  v31 = v61;
  v26 = v42;
  v15 = v41;
  v12 = v40;
  v10 = v39;
  v29 = v59;
  if (v46)
  {
    v23 = v46;
    goto LABEL_58;
  }

LABEL_53:
  *v22 = v10;
  *(v22 + 4) = v12;
  v47 = v63;
  *(v22 + 12) = v64;
  *(v22 + 20) = v37;
  *(v22 + 28) = v38;
  *(v22 + 36) = v29;
  *(v22 + 44) = v15;
  v22[11] = v47;
  v22[12] = v37;
  v22[13] = v38;
  v22[14] = v30;
  v49 = v66;
  v48 = v67;
  v22[7] = v56;
  v22[8] = v48;
  v22[9] = v65;
  v22[10] = v49;
  v22[15] = v31;
  v22[16] = v45;
  v22[17] = v62;
  v22[18] = v26;
  v22[19] = v57;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v10, global_queue, v22, vt_Copy_BGRA_TRC_Mat_TRC_xf422_GCD);
  if (!v10)
  {
    return 0;
  }

  v51 = (v22 + 20);
  v52 = v10;
  while (1)
  {
    v53 = *v51++;
    v23 = v53;
    if (v53)
    {
      break;
    }

    if (!--v52)
    {
      v23 = 0;
      break;
    }
  }

LABEL_58:
  if (v10 == 255)
  {
    goto LABEL_59;
  }

  return v23;
}

unsigned __int8 *vt_Copy_BGRA_TRC_Mat_TRC_xf422_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, float a5, float a6, float a7, float a8, float a9)
{
  v11 = *result;
  v12 = *(result + 13);
  v13 = v12 * a2 / v11;
  v14 = (v12 + v12 * a2) / v11 - v13;
  if (v14 >= 1)
  {
    v15 = 0;
    v16 = *(result + 19);
    v17 = *(result + 24) & 0xFFFFFFFE;
    v18 = **(result + 8);
    v19 = *(result + 16);
    v20 = *(result + 17);
    v21 = *v20;
    v22 = v20[1];
    v23 = v20[2];
    v24 = 8191.0 / *(v16 + 128);
    LOWORD(a5) = *(v16 + 144);
    v25 = LODWORD(a5);
    LOWORD(a6) = *(v16 + 146);
    v26 = LODWORD(a6);
    LOWORD(a7) = *(v16 + 148);
    v27 = LODWORD(a7);
    LOWORD(a8) = *(v16 + 150);
    v28 = LODWORD(a8);
    LOWORD(a9) = *(v16 + 152);
    v29 = LODWORD(a9);
    v30 = *(v16 + 36);
    v31 = *(v16 + 40);
    v32 = *(v16 + 44);
    v33 = 0.5;
    v111 = *(v16 + 52) * 0.5;
    v112 = *(v16 + 48) * 0.5;
    v110 = *(v16 + 56) * 0.5;
    v34 = *(v16 + 60) * 0.5;
    v35 = *(v16 + 64) * 0.5;
    v36 = *(v16 + 68);
    v37 = *(v16 + 72);
    v38 = v36 * 0.5;
    v39 = *(v16 + 76);
    v40 = *(v16 + 80);
    v41 = *(v16 + 84);
    v42 = *(v16 + 88);
    v43 = *(v16 + 92);
    v44 = *(v16 + 96);
    v46 = *(v16 + 100);
    v45 = *(v16 + 104);
    v47 = v16 + 164;
    v48 = v16 + 16548;
    v49 = *(result + 14);
    v50 = v13 + *(result + 15);
    v51 = *(result + 28) * a2 / v11 + *(result + 44);
    v52 = *(v16 + 132);
    if (v52 >= 0x11)
    {
      v53 = 0;
    }

    else
    {
      v53 = 16 - v52;
    }

    v54 = *(v16 + 157);
    v55 = *(v16 + 156);
    v56 = *(v16 + 155);
    v57 = *(v16 + 154);
    v58 = v19[2];
    if (v58)
    {
      v59 = v58 + v23 * v50 + 2 * v49;
    }

    else
    {
      v59 = 0;
    }

    v61 = *v19;
    v60 = v19[1];
    v62 = v60 + v22 * v50 + 2 * v49;
    if (!v60)
    {
      v62 = 0;
    }

    v63 = v61 + v21 * v50 + 2 * v49;
    v64 = **(result + 7) + v51 * v18 + 4 * *(result + 36);
    v65 = v53;
    do
    {
      if (v17 >= 1)
      {
        v66 = 0;
        v67 = v64;
        v68 = v59;
        v69 = v63;
        do
        {
          LOBYTE(v36) = *(v67 + v57);
          LOBYTE(v33) = *(v67 + v56);
          LOBYTE(v9) = *(v67 + v55);
          v70 = llroundf(fminf(fmaxf(v24 * LODWORD(v36), 0.0), 8191.0));
          _S18 = v24 * LODWORD(v9);
          _H10 = *(v47 + 2 * v70);
          __asm { FCVT            S10, H10 }

          _H19 = *(v47 + 2 * llroundf(fminf(fmaxf(v24 * LODWORD(v33), 0.0), 8191.0)));
          __asm { FCVT            S19, H19 }

          LOWORD(_S18) = *(v47 + 2 * llroundf(fminf(fmaxf(_S18, 0.0), 8191.0)));
          __asm { FCVT            S18, H18 }

          v81 = ((v39 * _S19) + (_S10 * v37)) + (_S18 * v40);
          v82 = ((v42 * _S19) + (_S10 * v41)) + (_S18 * v43);
          _S18 = ((v46 * _S19) + (_S10 * v44)) + (_S18 * v45);
          LOWORD(_S19) = *(v48 + 2 * llroundf(fminf(fmaxf(v81, 0.0), 8191.0)));
          __asm { FCVT            S10, H19 }

          _S19 = fminf(fmaxf(v82, 0.0), 8191.0);
          LOWORD(_S19) = *(v48 + 2 * llroundf(_S19));
          __asm { FCVT            S11, H19 }

          LOWORD(_S18) = *(v48 + 2 * llroundf(fminf(fmaxf(_S18, 0.0), 8191.0)));
          __asm { FCVT            S12, H18 }

          v88 = (((v31 * _S11) + (v30 * _S10)) + (v32 * _S12)) + v25;
          v89 = v27;
          if (v88 <= v27)
          {
            v89 = (((v31 * _S11) + (v30 * _S10)) + (v32 * _S12)) + v25;
            if (v88 < v25)
            {
              v89 = v25;
            }
          }

          v90 = *(v67 + v54);
          LOBYTE(v88) = *(v67 + 4 + v57);
          LOBYTE(_S19) = *(v67 + 4 + v56);
          LOBYTE(_S14) = *(v67 + 4 + v55);
          v91 = *(v67 + 4 + v54);
          _H18 = *(v47 + 2 * llroundf(fminf(fmaxf(v24 * LODWORD(v88), 0.0), 8191.0)));
          __asm { FCVT            S18, H18 }

          _H19 = *(v47 + 2 * llroundf(fminf(fmaxf(v24 * LODWORD(_S19), 0.0), 8191.0)));
          _H14 = *(v47 + 2 * llroundf(fminf(fmaxf(v24 * LODWORD(_S14), 0.0), 8191.0)));
          __asm
          {
            FCVT            S19, H19
            FCVT            S14, H14
          }

          v98 = ((v39 * _S19) + (_S18 * v37)) + (_S14 * v40);
          _S20 = ((v42 * _S19) + (_S18 * v41)) + (_S14 * v43);
          v100 = ((v46 * _S19) + (_S18 * v44)) + (_S14 * v45);
          LOWORD(_S19) = *(v48 + 2 * llroundf(fminf(fmaxf(v98, 0.0), 8191.0)));
          __asm { FCVT            S14, H19 }

          LOWORD(_S19) = *(v48 + 2 * llroundf(fminf(fmaxf(_S20, 0.0), 8191.0)));
          LOWORD(_S20) = *(v48 + 2 * llroundf(fminf(fmaxf(v100, 0.0), 8191.0)));
          __asm
          {
            FCVT            S18, H19
            FCVT            S15, H20
          }

          v103 = (((v31 * _S18) + (v30 * _S14)) + (v32 * _S15)) + v25;
          *v69 = llroundf(v89) << v65;
          v104 = v27;
          if (v103 <= v27)
          {
            v104 = (((v31 * _S18) + (v30 * _S14)) + (v32 * _S15)) + v25;
            if (v103 < v25)
            {
              v104 = v25;
            }
          }

          v69[1] = llroundf(v104) << v65;
          v9 = _S10 + _S14;
          v105 = _S11 + _S18;
          v106 = _S12 + _S15;
          v107 = ((v26 + (v9 * v112)) + (v105 * v111)) + ((_S12 + _S15) * v110);
          v108 = v29;
          if (v107 <= v29)
          {
            v108 = v107;
            if (v107 < v28)
            {
              v108 = v28;
            }
          }

          v109 = (v62 + 2 * v66);
          v36 = ((v26 + (v9 * v34)) + (v105 * v35)) + (v106 * v38);
          *v109 = llroundf(v108) << v65;
          v33 = v29;
          if (v36 <= v29)
          {
            v33 = v36;
            if (v36 < v28)
            {
              v33 = v28;
            }
          }

          v109[1] = llroundf(v33) << v65;
          if (v68)
          {
            *v68 = v90 | (v90 << 8);
            v68[1] = v91 | (v91 << 8);
            v68 += 2;
          }

          v67 += 8;
          v66 += 2;
          v69 += 2;
        }

        while (v66 < v17);
      }

      v64 += v18;
      v63 += v21;
      v62 += v22;
      v59 += v23;
      ++v15;
    }

    while (v15 != v14);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_BGRA_rgb_xf422_neon_fp16(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4, void *a5, uint64_t *a6, uint64_t a7, void *a8, void *a9)
{
  v62 = a8;
  v60 = a7;
  v65 = a5;
  v67 = a4;
  v68 = *MEMORY[0x1E69E9840];
  v10 = *(a1 + 162);
  v12 = *a2;
  v11 = a2[1];
  v13 = a2[2];
  v59 = a2[3];
  v14 = a2[4];
  v15 = a2[5];
  v16 = *a6;
  v63 = a6[1];
  v64 = v11;
  v18 = a6[2];
  v17 = a6[3];
  v57 = a1;
  v58 = v17;
  v19 = a6[4];
  v61 = a6[5];
  v66 = v16;
  v21 = v14 + v13 != v12 || v19 + v18 != v16;
  if (v10 == 255)
  {
    v22 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v22)
    {
      v23 = 0;
LABEL_59:
      free(v22);
      return v23;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v10 + 160, a3, a4);
    v22 = (&v55 - v24);
    bzero(&v55 - v24, v25);
  }

  v56 = a3;
  v26 = a9;
  v27 = v18 - 1;
  v28 = v13 - 1;
  if (v19)
  {
    v29 = v14 + 1;
  }

  else
  {
    v28 = v13;
    v29 = v14;
  }

  if (v19)
  {
    v30 = v19 + 1;
  }

  else
  {
    v27 = v18;
    v30 = v19;
  }

  if (v27)
  {
    v31 = v61;
    if (v21 || (4 * (v29 + v28) + 4) > *v67 || (v32 = v27 + 1 + v30, v33 = 2 * v32, 2 * v32 > *v62) || ((2 * (v32 + (v32 >> 63))) & 0xFFFFFFFFFFFFFFFCLL) > v62[1] || (v34 = v62[2], v33 > v34) && v34)
    {
      --v27;
      --v28;
    }

    else
    {
      ++v66;
      ++v28;
      ++v12;
      ++v27;
    }
  }

  else
  {
    v31 = v61;
  }

  if (v28 + v29 > v12)
  {
    v28 = v12 - v29;
  }

  if (v27 + v30 > v66)
  {
    v27 = v66 - v30;
  }

  if (v15 + v59 <= v64)
  {
    v35 = v59;
  }

  else
  {
    v35 = v64 - v15;
  }

  if (v31 + v58 <= v63)
  {
    v36 = v58;
  }

  else
  {
    v36 = v63 - v31;
  }

  if (v28 >= v27)
  {
    v37 = v27;
  }

  else
  {
    v37 = v28;
  }

  if (v35 >= v36)
  {
    v38 = v36;
  }

  else
  {
    v38 = v35;
  }

  if ((*v67 * (v15 + v38 - 1) + 4 * (v37 + v29)) <= *v65)
  {
    v43 = v31 + v38 - 1;
    v44 = v37 + v30;
    if ((*v62 * v43 + 2 * (v37 + v30)) <= *a9)
    {
      v45 = v60;
      if (*(v60 + 8) && v62[1] * v43 + 4 * ((v44 + 1 + ((v44 + 1) >> 63)) >> 1) > a9[1])
      {
        v59 = v29;
        v39 = v10;
        v40 = v12;
        v41 = v15;
        v42 = a9;
      }

      else
      {
        if (!*(v60 + 16) || (2 * v44 + v62[2] * v43) <= a9[2])
        {
          goto LABEL_53;
        }

        v59 = v29;
        v39 = v10;
        v40 = v12;
        v41 = v15;
        v42 = a9;
      }
    }

    else
    {
      v59 = v29;
      v39 = v10;
      v40 = v12;
      v41 = v15;
      v42 = a9;
    }
  }

  else
  {
    v59 = v29;
    v39 = v10;
    v40 = v12;
    v41 = v15;
    v42 = a9;
  }

  fig_log_get_emitter();
  v46 = FigSignalErrorAtGM();
  v45 = v60;
  v31 = v61;
  v26 = v42;
  v15 = v41;
  v12 = v40;
  v10 = v39;
  v29 = v59;
  if (v46)
  {
    v23 = v46;
    goto LABEL_58;
  }

LABEL_53:
  *v22 = v10;
  *(v22 + 4) = v12;
  v47 = v63;
  *(v22 + 12) = v64;
  *(v22 + 20) = v37;
  *(v22 + 28) = v38;
  *(v22 + 36) = v29;
  *(v22 + 44) = v15;
  v22[11] = v47;
  v22[12] = v37;
  v22[13] = v38;
  v22[14] = v30;
  v49 = v66;
  v48 = v67;
  v22[7] = v56;
  v22[8] = v48;
  v22[9] = v65;
  v22[10] = v49;
  v22[15] = v31;
  v22[16] = v45;
  v22[17] = v62;
  v22[18] = v26;
  v22[19] = v57;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v10, global_queue, v22, vt_Copy_BGRA_rgb_xf422_neon_fp16_GCD);
  if (!v10)
  {
    return 0;
  }

  v51 = (v22 + 20);
  v52 = v10;
  while (1)
  {
    v53 = *v51++;
    v23 = v53;
    if (v53)
    {
      break;
    }

    if (!--v52)
    {
      v23 = 0;
      break;
    }
  }

LABEL_58:
  if (v10 == 255)
  {
    goto LABEL_59;
  }

  return v23;
}

unsigned __int8 *vt_Copy_BGRA_rgb_xf422_neon_fp16_GCD(unsigned __int8 *result, uint64_t a2)
{
  v6 = 0;
  v132 = *(result + 36);
  v7 = *(result + 24);
  v8 = *result;
  v9 = *(result + 28) * a2 / v8 + *(result + 44);
  v11 = *(result + 13);
  v10 = *(result + 14);
  v12 = v11 * a2;
  v13 = *(result + 19);
  v14 = *(result + 16);
  v15 = *(result + 17);
  v16 = **(result + 8);
  v17 = v12 / v8;
  v18 = v12 / v8 + *(result + 15);
  v19 = v11 + v12;
  v130 = v16 * v9;
  v131 = **(result + 7);
  v20 = *v15;
  v21 = v15[1];
  v22 = v15[2];
  v23 = v14[1];
  v129 = *v14;
  v24 = v14[2];
  v25 = *(v13 + 128);
  v26 = *(v13 + 136);
  v144 = *(v13 + 154);
  v27 = *(v13 + 144);
  v28 = *(v13 + 132);
  v29 = *(v13 + 146);
  v30 = *(v13 + 148);
  v31 = *(v13 + 150);
  v32 = *(v13 + 152);
  _S0 = *(v13 + 36);
  _S1 = *(v13 + 40);
  _S2 = *(v13 + 44);
  v4.i32[0] = *(v13 + 48);
  v5.i32[0] = *(v13 + 52);
  v36.i32[0] = *(v13 + 56);
  v37 = *(v13 + 60);
  v38 = *(v13 + 64);
  v39 = *(v13 + 68);
  v142 = 0u;
  v143 = 0u;
  v40 = v19 / v8;
  do
  {
    v41 = 0;
    v42 = *(&v144 + v6);
    v43 = *(&v142 + v6);
    do
    {
      v141 = v43;
      *(&v141 | v41 & 7) = v42 + 4 * v41;
      v43 = v141;
      ++v41;
    }

    while (v41 != 8);
    *(&v142 + v6++) = v141;
  }

  while (v6 != 4);
  v44 = v40 - v17;
  if (v40 - v17 >= 1)
  {
    v45 = 0;
    v46 = v25;
    v47 = v7 & 0xFFFFFFFE;
    v48 = v27;
    v49 = v29;
    v50 = v30;
    v51 = v31;
    v52 = v32;
    v4.i32[1] = v37;
    _S16 = v26 / v46;
    *v3.f32 = vmul_f32(*v4.f32, 0x3F0000003F000000);
    v5.i32[1] = v38;
    *v4.f32 = vmul_f32(*v5.f32, 0x3F0000003F000000);
    v36.i32[1] = v39;
    *v5.f32 = vmul_f32(v36, 0x3F0000003F000000);
    __asm { FCVT            H5, S0 }

    v140 = _H5;
    __asm { FCVT            H5, S1 }

    v139 = _H5;
    __asm { FCVT            H5, S2 }

    v138 = _H5;
    v137 = vdupq_lane_s32(vcvt_f16_f32(v3), 0);
    v136 = vdupq_lane_s32(vcvt_f16_f32(v4), 0);
    v65 = vdupq_lane_s32(vcvt_f16_f32(v5), 0);
    v135 = v65;
    *v65.i16 = v27;
    v61 = vdupq_lane_s16(*v65.i8, 0);
    *v65.i16 = v29;
    v62 = vdupq_lane_s16(*v65.i8, 0);
    *v65.i16 = v30;
    v63 = vdupq_lane_s16(*v65.i8, 0);
    *v65.i16 = v31;
    v64 = vdupq_lane_s16(*v65.i8, 0);
    *v65.i16 = v32;
    v66 = vdupq_lane_s16(*v65.i8, 0);
    v67 = 16 - v28;
    if (v28 >= 0x11)
    {
      v67 = 0;
    }

    if (v24)
    {
      v68 = v24 + v22 * v18 + 2 * v10;
    }

    else
    {
      v68 = 0;
    }

    if (v23)
    {
      v69 = v23 + v21 * v18 + 2 * v10;
    }

    else
    {
      v69 = 0;
    }

    v70 = v129 + v20 * v18 + 2 * v10;
    v71 = v131 + v130 + 4 * v132;
    __asm { FCVT            H11, S16 }

    v73 = v67;
    v74 = vdupq_n_s16(v67);
    v75 = v3.f32[1];
    v76 = v4.i64[0];
    v77 = v5.i64[0];
    v134 = v3.i32[0];
    do
    {
      if (v7 < 8)
      {
        v102 = 0;
        v82 = v69;
        v81 = v68;
        v80 = v70;
        v79 = v71;
      }

      else
      {
        v78 = 0;
        v79 = v71;
        v80 = v70;
        v81 = v68;
        v82 = v69;
        do
        {
          v83 = *(&v143 + 8);
          *&v87 = *v79;
          v84 = v79[1];
          *&v85 = v79[2];
          v86 = v79[3];
          v79 += 4;
          *(&v87 + 1) = v84;
          *(&v85 + 1) = v86;
          v88 = v85;
          v89 = vqtbl2_s8(*&v87, *&v142);
          v90 = vqtbl2_s8(*&v87, *(&v142 + 8));
          v91 = vqtbl2_s8(*&v87, *&v143);
          *v92.i8 = vzip1_s8(v89, 0);
          v92.u64[1] = vzip2_s8(v89, 0);
          *v93.i8 = vzip1_s8(v90, 0);
          v93.u64[1] = vzip2_s8(v90, 0);
          v94 = vcvtq_f16_u16(v92);
          *v92.i8 = vzip1_s8(v91, 0);
          v92.u64[1] = vzip2_s8(v91, 0);
          v95 = vmulq_n_f16(v94, _H11);
          v96 = vmulq_n_f16(vcvtq_f16_u16(v93), _H11);
          v97 = vmulq_n_f16(vcvtq_f16_u16(v92), _H11);
          *v80++ = vshlq_u16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v61, v95, v140), v96, v139), v97, v138), v61), v63)), v74);
          v98 = vpaddq_f16(v95, v96);
          v2 = *v136.i32;
          v65 = vshlq_u16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_f16(vmlaq_f16(vmlaq_f16(v62, v137, vzip1q_s16(v98, v98)), v136, vzip2q_s16(v98, v98)), v135, vaddq_f16(vtrn1q_s16(v97, v97), vtrn2q_s16(v97, v97))), v64), v66)), v74);
          *v82++ = v65;
          if (v81)
          {
            v99 = vqtbl2_s8(*&v87, v83);
            *v100.i8 = vzip1_s8(v99, 0);
            v100.u64[1] = vzip2_s8(v99, 0);
            v101.i64[0] = 0x101010101010101;
            v101.i64[1] = 0x101010101010101;
            v65 = vmulq_s16(v100, v101);
            *v81++ = v65;
          }

          v78 += 8;
        }

        while (v78 < v7 - 7);
        v102 = v7 & 0x7FFFFFF8;
        v3.i32[0] = v134;
      }

      if (v102 < v47)
      {
        v103 = v79 + 4;
        do
        {
          v104 = &v103[v144];
          v65.i8[0] = *(v104 - 4);
          *&v105 = v65.u32[0];
          v106 = _S16 * *&v105;
          v107 = &v103[BYTE1(v144)];
          LOBYTE(v105) = *(v107 - 4);
          *&v108 = v105;
          v109 = _S16 * *&v108;
          v110 = &v103[BYTE2(v144)];
          LOBYTE(v108) = *(v110 - 4);
          v111 = _S16 * v108;
          v112 = (((_S1 * v109) + (_S0 * v106)) + (_S2 * v111)) + v48;
          *v65.i32 = v50;
          if (v112 <= v50)
          {
            *v65.i32 = (((_S1 * v109) + (_S0 * v106)) + (_S2 * v111)) + v48;
            if (v112 < v48)
            {
              *v65.i32 = v27;
            }
          }

          v113 = &v103[HIBYTE(v144)];
          v114 = *(v113 - 4);
          LOBYTE(v112) = *v104;
          v115 = _S16 * LODWORD(v112);
          LOBYTE(v2) = *v107;
          *&v116 = LODWORD(v2);
          v117 = _S16 * *&v116;
          LOBYTE(v116) = *v110;
          v118 = _S16 * v116;
          v119 = *v113;
          v2 = (((_S1 * v117) + (_S0 * v115)) + (_S2 * v118)) + v48;
          v80->i16[0] = llroundf(*v65.i32) << v73;
          v120 = v50;
          if (v2 <= v50)
          {
            v120 = (((_S1 * v117) + (_S0 * v115)) + (_S2 * v118)) + v48;
            if (v2 < v48)
            {
              v120 = v27;
            }
          }

          v80->i16[1] = llroundf(v120) << v73;
          v121 = v106 + v115;
          v122 = v49 + ((v106 + v115) * v3.f32[0]);
          v123 = v109 + v117;
          v124 = v122 + ((v109 + v117) * *&v76);
          v125 = v111 + v118;
          v126 = v124 + ((v111 + v118) * *&v77);
          v127 = v52;
          if (v126 <= v52)
          {
            v127 = v126;
            if (v126 < v51)
            {
              v127 = v51;
            }
          }

          *v65.i32 = ((v49 + (v121 * v75)) + (v123 * *(&v76 + 1))) + (v125 * *(&v77 + 1));
          v82->i16[0] = llroundf(v127) << v73;
          v128 = v52;
          if (*v65.i32 <= v52)
          {
            v128 = *v65.i32;
            if (*v65.i32 < v51)
            {
              v128 = v51;
            }
          }

          v82->i16[1] = llroundf(v128) << v73;
          if (v81)
          {
            v81->i16[0] = v114 | (v114 << 8);
            v81->i16[1] = v119 | (v119 << 8);
            v81 = (v81 + 4);
          }

          v103 += 8;
          v102 += 2;
          v80 = (v80 + 4);
          v82 = (v82 + 4);
        }

        while (v102 < v47);
      }

      v71 += v16;
      v70 += v20;
      v69 += v21;
      v68 += v22;
      ++v45;
    }

    while (v45 != v44);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_BGRA_rgb_xf422(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4, void *a5, uint64_t *a6, uint64_t a7, void *a8, void *a9)
{
  v62 = a8;
  v60 = a7;
  v65 = a5;
  v67 = a4;
  v68 = *MEMORY[0x1E69E9840];
  v10 = *(a1 + 162);
  v12 = *a2;
  v11 = a2[1];
  v13 = a2[2];
  v59 = a2[3];
  v14 = a2[4];
  v15 = a2[5];
  v16 = *a6;
  v63 = a6[1];
  v64 = v11;
  v18 = a6[2];
  v17 = a6[3];
  v57 = a1;
  v58 = v17;
  v19 = a6[4];
  v61 = a6[5];
  v66 = v16;
  v21 = v14 + v13 != v12 || v19 + v18 != v16;
  if (v10 == 255)
  {
    v22 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v22)
    {
      v23 = 0;
LABEL_59:
      free(v22);
      return v23;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v10 + 160, a3, a4);
    v22 = (&v55 - v24);
    bzero(&v55 - v24, v25);
  }

  v56 = a3;
  v26 = a9;
  v27 = v18 - 1;
  v28 = v13 - 1;
  if (v19)
  {
    v29 = v14 + 1;
  }

  else
  {
    v28 = v13;
    v29 = v14;
  }

  if (v19)
  {
    v30 = v19 + 1;
  }

  else
  {
    v27 = v18;
    v30 = v19;
  }

  if (v27)
  {
    v31 = v61;
    if (v21 || (4 * (v29 + v28) + 4) > *v67 || (v32 = v27 + 1 + v30, v33 = 2 * v32, 2 * v32 > *v62) || ((2 * (v32 + (v32 >> 63))) & 0xFFFFFFFFFFFFFFFCLL) > v62[1] || (v34 = v62[2], v33 > v34) && v34)
    {
      --v27;
      --v28;
    }

    else
    {
      ++v66;
      ++v28;
      ++v12;
      ++v27;
    }
  }

  else
  {
    v31 = v61;
  }

  if (v28 + v29 > v12)
  {
    v28 = v12 - v29;
  }

  if (v27 + v30 > v66)
  {
    v27 = v66 - v30;
  }

  if (v15 + v59 <= v64)
  {
    v35 = v59;
  }

  else
  {
    v35 = v64 - v15;
  }

  if (v31 + v58 <= v63)
  {
    v36 = v58;
  }

  else
  {
    v36 = v63 - v31;
  }

  if (v28 >= v27)
  {
    v37 = v27;
  }

  else
  {
    v37 = v28;
  }

  if (v35 >= v36)
  {
    v38 = v36;
  }

  else
  {
    v38 = v35;
  }

  if ((*v67 * (v15 + v38 - 1) + 4 * (v37 + v29)) <= *v65)
  {
    v43 = v31 + v38 - 1;
    v44 = v37 + v30;
    if ((*v62 * v43 + 2 * (v37 + v30)) <= *a9)
    {
      v45 = v60;
      if (*(v60 + 8) && v62[1] * v43 + 4 * ((v44 + 1 + ((v44 + 1) >> 63)) >> 1) > a9[1])
      {
        v59 = v29;
        v39 = v10;
        v40 = v12;
        v41 = v15;
        v42 = a9;
      }

      else
      {
        if (!*(v60 + 16) || (2 * v44 + v62[2] * v43) <= a9[2])
        {
          goto LABEL_53;
        }

        v59 = v29;
        v39 = v10;
        v40 = v12;
        v41 = v15;
        v42 = a9;
      }
    }

    else
    {
      v59 = v29;
      v39 = v10;
      v40 = v12;
      v41 = v15;
      v42 = a9;
    }
  }

  else
  {
    v59 = v29;
    v39 = v10;
    v40 = v12;
    v41 = v15;
    v42 = a9;
  }

  fig_log_get_emitter();
  v46 = FigSignalErrorAtGM();
  v45 = v60;
  v31 = v61;
  v26 = v42;
  v15 = v41;
  v12 = v40;
  v10 = v39;
  v29 = v59;
  if (v46)
  {
    v23 = v46;
    goto LABEL_58;
  }

LABEL_53:
  *v22 = v10;
  *(v22 + 4) = v12;
  v47 = v63;
  *(v22 + 12) = v64;
  *(v22 + 20) = v37;
  *(v22 + 28) = v38;
  *(v22 + 36) = v29;
  *(v22 + 44) = v15;
  v22[11] = v47;
  v22[12] = v37;
  v22[13] = v38;
  v22[14] = v30;
  v49 = v66;
  v48 = v67;
  v22[7] = v56;
  v22[8] = v48;
  v22[9] = v65;
  v22[10] = v49;
  v22[15] = v31;
  v22[16] = v45;
  v22[17] = v62;
  v22[18] = v26;
  v22[19] = v57;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v10, global_queue, v22, vt_Copy_BGRA_rgb_xf422_GCD);
  if (!v10)
  {
    return 0;
  }

  v51 = (v22 + 20);
  v52 = v10;
  while (1)
  {
    v53 = *v51++;
    v23 = v53;
    if (v53)
    {
      break;
    }

    if (!--v52)
    {
      v23 = 0;
      break;
    }
  }

LABEL_58:
  if (v10 == 255)
  {
    goto LABEL_59;
  }

  return v23;
}

unsigned __int8 *vt_Copy_BGRA_rgb_xf422_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, float a5, float a6, float a7, float a8)
{
  v12 = *result;
  v13 = *(result + 13);
  v14 = v13 * a2 / v12;
  v15 = (v13 + v13 * a2) / v12 - v14;
  if (v15 >= 1)
  {
    v16 = 0;
    v17 = *(result + 19);
    v18 = *(result + 24) & 0xFFFFFFFE;
    v19 = **(result + 8);
    v20 = *(result + 16);
    v21 = *(result + 17);
    v22 = *v21;
    v23 = v21[1];
    v24 = v21[2];
    *&v25 = *(v17 + 136);
    v26 = *&v25 / *(v17 + 128);
    LOWORD(v25) = *(v17 + 144);
    v27 = v25;
    LOWORD(a5) = *(v17 + 146);
    v28 = LODWORD(a5);
    LOWORD(a6) = *(v17 + 148);
    v29 = LODWORD(a6);
    LOWORD(a7) = *(v17 + 150);
    v30 = LODWORD(a7);
    LOWORD(a8) = *(v17 + 152);
    v31 = LODWORD(a8);
    v32 = *(v17 + 36);
    v33 = *(v17 + 40);
    v34 = *(v17 + 44);
    v35 = *(v17 + 48) * 0.5;
    v36 = *(v17 + 52) * 0.5;
    v37 = *(v17 + 56) * 0.5;
    v38 = *(v17 + 60) * 0.5;
    v39 = *(v17 + 64) * 0.5;
    v40 = *(v17 + 68);
    v41 = v40 * 0.5;
    v42 = *(result + 14);
    v43 = v14 + *(result + 15);
    v44 = *(result + 28) * a2 / v12 + *(result + 44);
    v45 = *(v17 + 132);
    if (v45 >= 0x11)
    {
      v46 = 0;
    }

    else
    {
      v46 = 16 - v45;
    }

    v47 = *(v17 + 157);
    v48 = *(v17 + 156);
    v49 = *(v17 + 155);
    v50 = *(v17 + 154);
    v51 = v20[2];
    if (v51)
    {
      v52 = v51 + v24 * v43 + 2 * v42;
    }

    else
    {
      v52 = 0;
    }

    v54 = *v20;
    v53 = v20[1];
    v55 = v53 + v23 * v43 + 2 * v42;
    if (!v53)
    {
      v55 = 0;
    }

    v56 = v54 + v22 * v43 + 2 * v42;
    v57 = **(result + 7) + v44 * v19 + 4 * *(result + 36);
    v58 = v46;
    do
    {
      if (v18 >= 1)
      {
        v59 = 0;
        v60 = v57;
        v61 = v52;
        v62 = v56;
        do
        {
          LOBYTE(v40) = *(v60 + v50);
          v63 = v26 * LODWORD(v40);
          LOBYTE(v8) = *(v60 + v49);
          v64 = v26 * LODWORD(v8);
          LOBYTE(v9) = *(v60 + v48);
          v65 = v26 * LODWORD(v9);
          v66 = (((v33 * v64) + (v32 * v63)) + (v34 * v65)) + v27;
          v67 = v29;
          if (v66 <= v29)
          {
            v67 = (((v33 * v64) + (v32 * v63)) + (v34 * v65)) + v27;
            if (v66 < v27)
            {
              v67 = v27;
            }
          }

          v68 = *(v60 + v47);
          LOBYTE(v66) = *(v60 + 4 + v50);
          v69 = v26 * LODWORD(v66);
          LOBYTE(v10) = *(v60 + 4 + v49);
          v70 = v26 * LODWORD(v10);
          LOBYTE(v11) = *(v60 + 4 + v48);
          v11 = v26 * LODWORD(v11);
          v71 = *(v60 + 4 + v47);
          v72 = (((v33 * v70) + (v32 * v69)) + (v34 * v11)) + v27;
          *v62 = llroundf(v67) << v58;
          v73 = v29;
          if (v72 <= v29)
          {
            v73 = (((v33 * v70) + (v32 * v69)) + (v34 * v11)) + v27;
            if (v72 < v27)
            {
              v73 = v27;
            }
          }

          v62[1] = llroundf(v73) << v58;
          v74 = v63 + v69;
          v75 = v64 + v70;
          v9 = v65 + v11;
          v10 = ((v28 + (v74 * v35)) + (v75 * v36)) + (v9 * v37);
          v76 = v31;
          if (v10 <= v31)
          {
            v76 = ((v28 + (v74 * v35)) + (v75 * v36)) + (v9 * v37);
            if (v10 < v30)
            {
              v76 = v30;
            }
          }

          v77 = (v55 + 2 * v59);
          v40 = ((v28 + (v74 * v38)) + (v75 * v39)) + (v9 * v41);
          *v77 = llroundf(v76) << v58;
          v8 = v31;
          if (v40 <= v31)
          {
            v8 = v40;
            if (v40 < v30)
            {
              v8 = v30;
            }
          }

          v77[1] = llroundf(v8) << v58;
          if (v61)
          {
            *v61 = v68 | (v68 << 8);
            v61[1] = v71 | (v71 << 8);
            v61 += 2;
          }

          v60 += 8;
          v59 += 2;
          v62 += 2;
        }

        while (v59 < v18);
      }

      v57 += v19;
      v56 += v22;
      v55 += v23;
      v52 += v24;
      ++v16;
    }

    while (v16 != v15);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_BGRA_TRC_Tone_Mat_TRC_v216(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v41 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v39 = a2[2];
  v40 = v16;
  v18 = *a6;
  v35 = a6[1];
  v36 = v17;
  v37 = a6[2];
  v38 = v18;
  if (v15 == 255)
  {
    v19 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v19)
    {
      v20 = 0;
LABEL_13:
      free(v19);
      return v20;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v19 = &v35.i8[-v21];
    bzero(&v35 - v21, v22);
  }

  v23 = vbslq_s8(vcgtq_s64(vaddq_s64(v39, v36), v40), vsubq_s64(v40, v39), v36);
  v24 = vbslq_s8(vcgtq_s64(vaddq_s64(v37, v35), v38), vsubq_s64(v38, v37), v35);
  v25 = vbslq_s8(vcgtq_s64(v24, v23), v23, v24);
  v23.i64[0] = v25.i64[0];
  v23.i64[1] = -1;
  v26 = vaddq_s64(v39, v23);
  if ((*a4 * (v26.i64[1] + v25.i64[1]) + 4 * v26.i64[0]) > *a5 && (v36 = v25, fig_log_get_emitter(), v27 = FigSignalErrorAtGM(), v25 = v36, v27))
  {
    v20 = v27;
  }

  else
  {
    *v19 = v15;
    v28 = v39;
    *(v19 + 4) = v40;
    *(v19 + 20) = v25;
    *(v19 + 36) = v28;
    v29 = v37;
    *(v19 + 5) = v38;
    *(v19 + 6) = v25;
    *(v19 + 7) = v29;
    *(v19 + 7) = a3;
    *(v19 + 8) = a4;
    *(v19 + 9) = a5;
    *(v19 + 16) = a7;
    *(v19 + 17) = a8;
    *(v19 + 18) = a9;
    *(v19 + 19) = a1;
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_BGRA_TRC_Tone_Mat_TRC_v216_GCD);
    if (!v15)
    {
      return 0;
    }

    v31 = (v19 + 160);
    v32 = v15;
    while (1)
    {
      v33 = *v31++;
      v20 = v33;
      if (v33)
      {
        break;
      }

      if (!--v32)
      {
        v20 = 0;
        break;
      }
    }
  }

  if (v15 == 255)
  {
    goto LABEL_13;
  }

  return v20;
}

unsigned __int8 *vt_Copy_BGRA_TRC_Tone_Mat_TRC_v216_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, double a5, double a6, double a7, float a8, float a9, float a10)
{
  v12 = *result;
  v13 = *(result + 13);
  v14 = *(result + 14);
  v15 = v13 * a2 / v12;
  v16 = *(result + 16);
  v17 = v15 + *(result + 15);
  v18 = (v13 + v13 * a2) / v12 - v15;
  v19 = *(result + 17);
  v20 = v16[1];
  if (v20)
  {
    v20 = (v20 + 2 * v14 + v19[1] * v17);
  }

  if (v18 >= 1)
  {
    v21 = 0;
    v22 = *(result + 28) * a2 / v12 + *(result + 44);
    v23 = **(result + 8);
    v24 = *v19;
    v25 = *(result + 19);
    v26 = *v16 + v24 * v17;
    v27 = **(result + 7) + v23 * v22 + 4 * *(result + 36);
    v28 = (v26 + 2 * v14);
    v29 = *(result + 24) & 0xFFFFFFFE;
    LOWORD(a8) = *(v25 + 144);
    LOWORD(a9) = *(v25 + 146);
    LOWORD(a10) = *(v25 + 148);
    LOWORD(v10) = *(v25 + 150);
    LOWORD(v11) = *(v25 + 152);
    v30 = *(v25 + 36);
    v31 = *(v25 + 40);
    v32 = *(v25 + 44);
    v33 = *(v25 + 56);
    v34 = *(v25 + 60);
    v35 = 8191.0 / *(v25 + 128);
    v36 = LODWORD(a8);
    v37 = LODWORD(a9);
    v38 = LODWORD(a10);
    v39 = v10;
    v40 = v11;
    v132 = *(v25 + 52) * 0.5;
    v133 = *(v25 + 48) * 0.5;
    v130 = v34 * 0.5;
    v131 = v33 * 0.5;
    v41 = *(v25 + 64) * 0.5;
    v42 = *(v25 + 68);
    v43 = *(v25 + 72);
    v44 = v42 * 0.5;
    v128 = v42 * 0.5;
    v129 = v41;
    v45 = *(v25 + 76);
    v46 = *(v25 + 80);
    v47 = *(v25 + 84);
    v48 = *(v25 + 88);
    v49 = *(v25 + 92);
    v50 = *(v25 + 96);
    v52 = *(v25 + 100);
    v51 = *(v25 + 104);
    v53 = v25 + 164;
    v54 = v25 + 16548;
    v55 = v25 + 32932;
    v56 = *(v25 + 108);
    v57 = *(v25 + 112);
    v58 = *(v25 + 116);
    v59 = *(v25 + 120);
    v60 = *(v25 + 157);
    v61 = *(v25 + 156);
    v62 = *(v25 + 155);
    v63 = *(v25 + 154);
    do
    {
      if (v29 >= 1)
      {
        v64 = 0;
        v65 = v20;
        v66 = v28;
        v67 = v27;
        do
        {
          LOBYTE(v44) = *(v67 + v63);
          LOBYTE(v42) = *(v67 + v62);
          LOBYTE(v41) = *(v67 + v61);
          _H0 = *(v53 + 2 * llroundf(fminf(fmaxf(v35 * LODWORD(v44), 0.0), 8191.0)));
          __asm { FCVT            S14, H0 }

          _H0 = *(v53 + 2 * llroundf(fminf(fmaxf(v35 * LODWORD(v42), 0.0), 8191.0)));
          __asm { FCVT            S15, H0 }

          _H0 = *(v53 + 2 * llroundf(fminf(fmaxf(v35 * LODWORD(v41), 0.0), 8191.0)));
          __asm { FCVT            S18, H0 }

          v78 = (((v57 * _S15) + (v56 * _S14)) + (v58 * _S18)) + (v59 * fmaxf(_S14, fmaxf(_S15, _S18)));
          v79 = 8191.0;
          if (v78 <= 8191.0)
          {
            v79 = v78;
            if (v78 < 0.0)
            {
              v79 = 0.0;
            }
          }

          LOBYTE(v78) = *(v67 + 4 + v63);
          LOBYTE(v33) = *(v67 + 4 + v62);
          LOBYTE(v34) = *(v67 + 4 + v61);
          _H19 = *(v53 + 2 * llroundf(fminf(fmaxf(v35 * LODWORD(v78), 0.0), 8191.0)));
          __asm { FCVT            S19, H19 }

          _H20 = *(v53 + 2 * llroundf(fminf(fmaxf(v35 * LODWORD(v33), 0.0), 8191.0)));
          _H22 = *(v53 + 2 * llroundf(fminf(fmaxf(v35 * LODWORD(v34), 0.0), 8191.0)));
          __asm
          {
            FCVT            S21, H20
            FCVT            S22, H22
          }

          _H0 = *(v54 + 2 * llroundf(v79));
          __asm { FCVT            S20, H0 }

          v88 = _S14 * _S20;
          v89 = _S15 * _S20;
          v90 = _S18 * _S20;
          v91 = (((v57 * _S21) + (v56 * _S19)) + (v58 * _S22)) + (v59 * fmaxf(_S19, fmaxf(_S21, _S22)));
          v92 = 8191.0;
          if (v91 <= 8191.0)
          {
            v92 = v91;
            if (v91 < 0.0)
            {
              v92 = 0.0;
            }
          }

          _H20 = *(v54 + 2 * llroundf(v92));
          __asm { FCVT            S20, H20 }

          v95 = _S19 * _S20;
          v96 = _S21 * _S20;
          _S20 = _S22 * _S20;
          _S22 = ((v45 * v89) + (v88 * v43)) + (v90 * v46);
          v99 = ((v48 * v89) + (v88 * v47)) + (v90 * v49);
          _S0 = ((v52 * v89) + (v88 * v50)) + (v90 * v51);
          v101 = (v45 * v96) + (v95 * v43);
          v102 = (v48 * v96) + (v95 * v47);
          v103 = (v52 * v96) + (v95 * v50);
          v104 = v101 + (_S20 * v46);
          _S21 = v102 + (_S20 * v49);
          v106 = v103 + (_S20 * v51);
          LOWORD(_S20) = *(v55 + 2 * llroundf(fminf(fmaxf(_S22, 0.0), 8191.0)));
          __asm { FCVT            S20, H20 }

          LOWORD(_S22) = *(v55 + 2 * llroundf(fminf(fmaxf(v99, 0.0), 8191.0)));
          __asm { FCVT            S22, H22 }

          LOWORD(_S0) = *(v55 + 2 * llroundf(fminf(fmaxf(_S0, 0.0), 8191.0)));
          __asm { FCVT            S15, H0 }

          LOWORD(_S0) = *(v55 + 2 * llroundf(fminf(fmaxf(v104, 0.0), 8191.0)));
          LOWORD(_S21) = *(v55 + 2 * llroundf(fminf(fmaxf(_S21, 0.0), 8191.0)));
          __asm
          {
            FCVT            S18, H0
            FCVT            S14, H21
          }

          v112 = llroundf(fminf(fmaxf(v106, 0.0), 8191.0));
          v113 = (v31 * _S22) + (v30 * _S20);
          _S0 = _S20 + _S18;
          v115 = (v37 + ((_S20 + _S18) * v133)) + ((_S22 + _S14) * v132);
          v116 = (v37 + (_S0 * v130)) + ((_S22 + _S14) * v129);
          LOWORD(_S0) = *(v55 + 2 * v112);
          __asm { FCVT            S0, H0 }

          v118 = v113 + (v32 * _S15);
          v119 = v115 + ((_S15 + _S0) * v131);
          v120 = v116 + ((_S15 + _S0) * v128);
          if (v119 < v36)
          {
            v121 = v36;
          }

          else
          {
            v121 = v119;
          }

          v122 = v119 <= v38;
          v123 = v118 + v36;
          if (!v122)
          {
            v121 = v38;
          }

          v124 = llroundf(v121);
          if (v123 < v39)
          {
            v125 = v39;
          }

          else
          {
            v125 = v118 + v36;
          }

          v126 = *(v67 + v60);
          v127 = *(v67 + 4 + v60);
          *v66 = v124;
          if (v123 <= v40)
          {
            v33 = v125;
          }

          else
          {
            v33 = v40;
          }

          v66[1] = llroundf(v33);
          v34 = v38;
          if (v120 <= v38)
          {
            v34 = v120;
            if (v120 < v36)
            {
              v34 = v36;
            }
          }

          v41 = v31 * _S14;
          v44 = (((v31 * _S14) + (v30 * _S18)) + (v32 * _S0)) + v36;
          v66[2] = llroundf(v34);
          v42 = v40;
          if (v44 <= v40)
          {
            v42 = v44;
            if (v44 < v39)
            {
              v42 = v39;
            }
          }

          v66[3] = llroundf(v42);
          if (v65)
          {
            *v65 = v126 | (v126 << 8);
            v65[1] = v127 | (v127 << 8);
            v65 += 2;
          }

          v67 += 8;
          v64 += 2;
          v66 += 4;
        }

        while (v64 < v29);
      }

      v27 += v23;
      v28 = (v28 + v24);
      ++v21;
    }

    while (v21 != v18);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_BGRA_TRC_Mat_TRC_v216(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v41 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v39 = a2[2];
  v40 = v16;
  v18 = *a6;
  v35 = a6[1];
  v36 = v17;
  v37 = a6[2];
  v38 = v18;
  if (v15 == 255)
  {
    v19 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v19)
    {
      v20 = 0;
LABEL_13:
      free(v19);
      return v20;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v19 = &v35.i8[-v21];
    bzero(&v35 - v21, v22);
  }

  v23 = vbslq_s8(vcgtq_s64(vaddq_s64(v39, v36), v40), vsubq_s64(v40, v39), v36);
  v24 = vbslq_s8(vcgtq_s64(vaddq_s64(v37, v35), v38), vsubq_s64(v38, v37), v35);
  v25 = vbslq_s8(vcgtq_s64(v24, v23), v23, v24);
  v23.i64[0] = v25.i64[0];
  v23.i64[1] = -1;
  v26 = vaddq_s64(v39, v23);
  if ((*a4 * (v26.i64[1] + v25.i64[1]) + 4 * v26.i64[0]) > *a5 && (v36 = v25, fig_log_get_emitter(), v27 = FigSignalErrorAtGM(), v25 = v36, v27))
  {
    v20 = v27;
  }

  else
  {
    *v19 = v15;
    v28 = v39;
    *(v19 + 4) = v40;
    *(v19 + 20) = v25;
    *(v19 + 36) = v28;
    v29 = v37;
    *(v19 + 5) = v38;
    *(v19 + 6) = v25;
    *(v19 + 7) = v29;
    *(v19 + 7) = a3;
    *(v19 + 8) = a4;
    *(v19 + 9) = a5;
    *(v19 + 16) = a7;
    *(v19 + 17) = a8;
    *(v19 + 18) = a9;
    *(v19 + 19) = a1;
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_BGRA_TRC_Mat_TRC_v216_GCD);
    if (!v15)
    {
      return 0;
    }

    v31 = (v19 + 160);
    v32 = v15;
    while (1)
    {
      v33 = *v31++;
      v20 = v33;
      if (v33)
      {
        break;
      }

      if (!--v32)
      {
        v20 = 0;
        break;
      }
    }
  }

  if (v15 == 255)
  {
    goto LABEL_13;
  }

  return v20;
}

unsigned __int8 *vt_Copy_BGRA_TRC_Mat_TRC_v216_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, double a5, double a6, double a7, float a8, float a9, float a10)
{
  v18 = *result;
  v19 = *(result + 13);
  v20 = *(result + 14);
  v21 = v19 * a2 / v18;
  v22 = *(result + 16);
  v23 = v21 + *(result + 15);
  v24 = (v19 + v19 * a2) / v18 - v21;
  v25 = *(result + 17);
  v26 = v22[1];
  if (v26)
  {
    v26 = (v26 + 2 * v20 + v25[1] * v23);
  }

  if (v24 >= 1)
  {
    v27 = 0;
    v28 = *(result + 28) * a2 / v18 + *(result + 44);
    v29 = **(result + 8);
    v30 = *v25;
    v31 = *(result + 19);
    v32 = *v22 + v30 * v23;
    v33 = **(result + 7) + v29 * v28 + 4 * *(result + 36);
    v34 = (v32 + 2 * v20);
    v35 = *(result + 24) & 0xFFFFFFFE;
    LOWORD(a8) = *(v31 + 144);
    LOWORD(a9) = *(v31 + 146);
    LOWORD(a10) = *(v31 + 148);
    LOWORD(v16) = *(v31 + 150);
    LOWORD(v17) = *(v31 + 152);
    v36 = *(v31 + 36);
    v37 = *(v31 + 40);
    v38 = *(v31 + 44);
    v39 = 8191.0 / *(v31 + 128);
    v40 = LODWORD(a8);
    v41 = LODWORD(a9);
    v42 = LODWORD(a10);
    v43 = v16;
    v44 = v17;
    v114 = *(v31 + 52) * 0.5;
    v115 = *(v31 + 48) * 0.5;
    v45 = *(v31 + 56) * 0.5;
    v46 = *(v31 + 60) * 0.5;
    v47 = *(v31 + 64) * 0.5;
    v48 = *(v31 + 72);
    v49 = *(v31 + 68) * 0.5;
    v50 = *(v31 + 76);
    v51 = *(v31 + 80);
    v52 = *(v31 + 84);
    v53 = *(v31 + 88);
    v54 = *(v31 + 92);
    v55 = *(v31 + 96);
    v57 = *(v31 + 100);
    v56 = *(v31 + 104);
    v58 = v31 + 164;
    v59 = v31 + 16548;
    v60 = *(v31 + 157);
    v61 = *(v31 + 156);
    v62 = *(v31 + 155);
    v63 = *(v31 + 154);
    do
    {
      if (v35 >= 1)
      {
        v64 = 0;
        v65 = v33;
        v66 = v26;
        v67 = v34;
        do
        {
          LOBYTE(v10) = *(v65 + v63);
          LOBYTE(v11) = *(v65 + v62);
          LOBYTE(_S12) = *(v65 + v61);
          LOBYTE(v13) = *(v65 + 4 + v63);
          LOBYTE(v14) = *(v65 + 4 + v62);
          LOBYTE(v15) = *(v65 + 4 + v61);
          v68 = llroundf(fminf(fmaxf(v39 * LODWORD(v10), 0.0), 8191.0));
          v69 = v39 * LODWORD(v15);
          _H15 = *(v58 + 2 * v68);
          __asm { FCVT            S15, H15 }

          _H11 = *(v58 + 2 * llroundf(fminf(fmaxf(v39 * LODWORD(v11), 0.0), 8191.0)));
          __asm { FCVT            S11, H11 }

          _H12 = *(v58 + 2 * llroundf(fminf(fmaxf(v39 * LODWORD(_S12), 0.0), 8191.0)));
          __asm { FCVT            S12, H12 }

          _H13 = *(v58 + 2 * llroundf(fminf(fmaxf(v39 * LODWORD(v13), 0.0), 8191.0)));
          _H14 = *(v58 + 2 * llroundf(fminf(fmaxf(v39 * LODWORD(v14), 0.0), 8191.0)));
          __asm
          {
            FCVT            S13, H13
            FCVT            S14, H14
          }

          v84 = llroundf(fminf(fmaxf(v69, 0.0), 8191.0));
          _S10 = ((v50 * _S11) + (_S15 * v48)) + (_S12 * v51);
          _S18 = ((v53 * _S11) + (_S15 * v52)) + (_S12 * v54);
          _S11 = ((v57 * _S11) + (_S15 * v55)) + (_S12 * v56);
          v88 = (v50 * _S14) + (_S13 * v48);
          v89 = (v53 * _S14) + (_S13 * v52);
          v90 = (v57 * _S14) + (_S13 * v55);
          LOWORD(_S14) = *(v58 + 2 * v84);
          __asm { FCVT            S14, H14 }

          v92 = v88 + (_S14 * v51);
          v93 = v89 + (_S14 * v54);
          v94 = v90 + (_S14 * v56);
          LOWORD(_S10) = *(v59 + 2 * llroundf(fminf(fmaxf(_S10, 0.0), 8191.0)));
          __asm { FCVT            S14, H10 }

          LOWORD(_S18) = *(v59 + 2 * llroundf(fminf(fmaxf(_S18, 0.0), 8191.0)));
          __asm { FCVT            S18, H18 }

          LOWORD(_S10) = *(v59 + 2 * llroundf(fminf(fmaxf(_S11, 0.0), 8191.0)));
          __asm { FCVT            S19, H10 }

          LOWORD(_S10) = *(v59 + 2 * llroundf(fminf(fmaxf(v92, 0.0), 8191.0)));
          LOWORD(_S11) = *(v59 + 2 * llroundf(fminf(fmaxf(v93, 0.0), 8191.0)));
          __asm
          {
            FCVT            S10, H10
            FCVT            S11, H11
          }

          v100 = llroundf(fminf(fmaxf(v94, 0.0), 8191.0));
          v101 = (v37 * _S18) + (v36 * _S14);
          _S12 = _S14 + _S10;
          v103 = _S18 + _S11;
          v104 = (v41 + ((_S14 + _S10) * v115)) + (v103 * v114);
          v105 = (v41 + (_S12 * v46)) + (v103 * v47);
          LOWORD(_S12) = *(v59 + 2 * v100);
          __asm { FCVT            S12, H12 }

          v15 = v101 + (v38 * _S19);
          v106 = _S19 + _S12;
          v107 = v104 + (v106 * v45);
          v13 = v105 + (v106 * v49);
          if (v107 < v40)
          {
            v108 = v40;
          }

          else
          {
            v108 = v107;
          }

          v109 = v15 + v40;
          if (v107 > v42)
          {
            v108 = v42;
          }

          v110 = llroundf(v108);
          if (v109 < v43)
          {
            v111 = v43;
          }

          else
          {
            v111 = v15 + v40;
          }

          v112 = *(v65 + v60);
          v113 = *(v65 + 4 + v60);
          *v67 = v110;
          if (v109 > v44)
          {
            v111 = v44;
          }

          v67[1] = llroundf(v111);
          v14 = v42;
          if (v13 <= v42)
          {
            v14 = v13;
            if (v13 < v40)
            {
              v14 = v40;
            }
          }

          v10 = (((v37 * _S11) + (v36 * _S10)) + (v38 * _S12)) + v40;
          v67[2] = llroundf(v14);
          v11 = v44;
          if (v10 <= v44)
          {
            v11 = v10;
            if (v10 < v43)
            {
              v11 = v43;
            }
          }

          v67[3] = llroundf(v11);
          if (v66)
          {
            *v66 = v112 | (v112 << 8);
            v66[1] = v113 | (v113 << 8);
            v66 += 2;
          }

          v65 += 8;
          v64 += 2;
          v67 += 4;
        }

        while (v64 < v35);
      }

      v33 += v29;
      v34 = (v34 + v30);
      ++v27;
    }

    while (v27 != v24);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_BGRA_rgb_v216(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v41 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v39 = a2[2];
  v40 = v16;
  v18 = *a6;
  v35 = a6[1];
  v36 = v17;
  v37 = a6[2];
  v38 = v18;
  if (v15 == 255)
  {
    v19 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v19)
    {
      v20 = 0;
LABEL_13:
      free(v19);
      return v20;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v19 = &v35.i8[-v21];
    bzero(&v35 - v21, v22);
  }

  v23 = vbslq_s8(vcgtq_s64(vaddq_s64(v39, v36), v40), vsubq_s64(v40, v39), v36);
  v24 = vbslq_s8(vcgtq_s64(vaddq_s64(v37, v35), v38), vsubq_s64(v38, v37), v35);
  v25 = vbslq_s8(vcgtq_s64(v24, v23), v23, v24);
  v23.i64[0] = v25.i64[0];
  v23.i64[1] = -1;
  v26 = vaddq_s64(v39, v23);
  if ((*a4 * (v26.i64[1] + v25.i64[1]) + 4 * v26.i64[0]) > *a5 && (v36 = v25, fig_log_get_emitter(), v27 = FigSignalErrorAtGM(), v25 = v36, v27))
  {
    v20 = v27;
  }

  else
  {
    *v19 = v15;
    v28 = v39;
    *(v19 + 4) = v40;
    *(v19 + 20) = v25;
    *(v19 + 36) = v28;
    v29 = v37;
    *(v19 + 5) = v38;
    *(v19 + 6) = v25;
    *(v19 + 7) = v29;
    *(v19 + 7) = a3;
    *(v19 + 8) = a4;
    *(v19 + 9) = a5;
    *(v19 + 16) = a7;
    *(v19 + 17) = a8;
    *(v19 + 18) = a9;
    *(v19 + 19) = a1;
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_BGRA_rgb_v216_GCD);
    if (!v15)
    {
      return 0;
    }

    v31 = (v19 + 160);
    v32 = v15;
    while (1)
    {
      v33 = *v31++;
      v20 = v33;
      if (v33)
      {
        break;
      }

      if (!--v32)
      {
        v20 = 0;
        break;
      }
    }
  }

  if (v15 == 255)
  {
    goto LABEL_13;
  }

  return v20;
}

unsigned __int8 *vt_Copy_BGRA_rgb_v216_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, float a5, float a6, float a7, float a8)
{
  v10 = *result;
  v11 = *(result + 13);
  v12 = *(result + 14);
  v13 = v11 * a2 / v10;
  v14 = *(result + 16);
  v15 = v13 + *(result + 15);
  v16 = (v11 + v11 * a2) / v10 - v13;
  v17 = *(result + 17);
  v18 = v14[1];
  if (v18)
  {
    v18 = (v18 + 2 * v12 + v17[1] * v15);
  }

  if (v16 >= 1)
  {
    v19 = 0;
    v20 = *(result + 28) * a2 / v10 + *(result + 44);
    v21 = **(result + 8);
    v22 = *v17;
    v23 = *(result + 19);
    v24 = *v14 + v22 * v15;
    v25 = **(result + 7) + v21 * v20 + 4 * *(result + 36);
    v26 = (v24 + 2 * v12);
    v27 = *(result + 24) & 0xFFFFFFFE;
    LOWORD(a5) = *(v23 + 144);
    LOWORD(a6) = *(v23 + 146);
    v28 = *(v23 + 136) / *(v23 + 128);
    v29 = LODWORD(a5);
    v30 = LODWORD(a6);
    LOWORD(a6) = *(v23 + 148);
    v31 = LODWORD(a6);
    LOWORD(a7) = *(v23 + 150);
    v32 = LODWORD(a7);
    LOWORD(a8) = *(v23 + 152);
    v33 = LODWORD(a8);
    v34 = *(v23 + 36);
    v35 = *(v23 + 40);
    v36 = *(v23 + 44);
    v37 = *(v23 + 48) * 0.5;
    v38 = *(v23 + 52) * 0.5;
    v39 = *(v23 + 56) * 0.5;
    v40 = *(v23 + 60) * 0.5;
    v41 = *(v23 + 64) * 0.5;
    v42 = *(v23 + 68);
    v43 = v42 * 0.5;
    v44 = *(v23 + 157);
    v45 = *(v23 + 156);
    v46 = *(v23 + 155);
    v47 = *(v23 + 154);
    do
    {
      if (v27 >= 1)
      {
        v48 = 0;
        v49 = v25;
        v50 = v18;
        v51 = v26;
        do
        {
          LOBYTE(v42) = *(v49 + v47);
          *&v52 = LODWORD(v42);
          v53 = v28 * *&v52;
          LOBYTE(v52) = *(v49 + v46);
          *&v54 = v52;
          v55 = v28 * *&v54;
          LOBYTE(v54) = *(v49 + v45);
          v56 = *(v49 + v44);
          LOBYTE(v8) = *(v49 + 4 + v47);
          v57 = v28 * v54;
          v58 = v28 * LODWORD(v8);
          LOBYTE(v8) = *(v49 + 4 + v46);
          v59 = v28 * LODWORD(v8);
          LOBYTE(v9) = *(v49 + 4 + v45);
          v60 = *(v49 + 4 + v44);
          v9 = v28 * LODWORD(v9);
          v61 = (((v35 * v55) + (v34 * v53)) + (v36 * v57)) + v29;
          v62 = v53 + v58;
          v63 = v55 + v59;
          v64 = v57 + v9;
          v65 = ((v30 + (v62 * v37)) + (v63 * v38)) + (v64 * v39);
          v66 = ((v30 + (v62 * v40)) + (v63 * v41)) + (v64 * v43);
          if (v65 < v29)
          {
            v67 = v29;
          }

          else
          {
            v67 = v65;
          }

          if (v65 > v31)
          {
            v67 = v31;
          }

          *v51 = llroundf(v67);
          if (v61 < v32)
          {
            v68 = v32;
          }

          else
          {
            v68 = v61;
          }

          if (v61 > v33)
          {
            v68 = v33;
          }

          v51[1] = llroundf(v68);
          v69 = v31;
          if (v66 <= v31)
          {
            v69 = v66;
            if (v66 < v29)
            {
              v69 = v29;
            }
          }

          v42 = (((v35 * v59) + (v34 * v58)) + (v36 * v9)) + v29;
          v51[2] = llroundf(v69);
          v8 = v33;
          if (v42 <= v33)
          {
            v8 = v42;
            if (v42 < v32)
            {
              v8 = v32;
            }
          }

          v51[3] = llroundf(v8);
          if (v50)
          {
            *v50 = v56 | (v56 << 8);
            v50[1] = v60 | (v60 << 8);
            v50 += 2;
          }

          v49 += 8;
          v48 += 2;
          v51 += 4;
        }

        while (v48 < v27);
      }

      v25 += v21;
      v26 = (v26 + v22);
      ++v19;
    }

    while (v19 != v16);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_BGRA_TRC_Tone_Mat_TRC_444vf_neon_fp16(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v13 = a3;
  v46 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v44 = a2[2];
  v45 = v16;
  v18 = *a6;
  v40 = a6[1];
  v41 = v17;
  v42 = a6[2];
  v43 = v18;
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
    v19 = &v40.i8[-v21];
    bzero(&v40 - v21, v22);
  }

  v23 = a9;
  v24 = v42;
  v25 = vbslq_s8(vcgtq_s64(vaddq_s64(v44, v41), v45), vsubq_s64(v45, v44), v41);
  v26 = vbslq_s8(vcgtq_s64(vaddq_s64(v42, v40), v43), vsubq_s64(v43, v42), v40);
  v27 = vbslq_s8(vcgtq_s64(v26, v25), v25, v26);
  v25.i64[0] = v27.i64[0];
  v25.i64[1] = -1;
  v28 = vaddq_s64(v44, v25);
  if ((*a4 * (v28.i64[1] + v27.i64[1]) + 4 * v28.i64[0]) <= *a5)
  {
    v32 = vaddq_s64((*&v42 + __PAIR128__(-1, 0)), v27);
    if (v32.i64[0] + *a8 * v32.i64[1] <= *a9)
    {
      if (*(a7 + 8) && (a8[1] * v32.i64[1] + 2 * v32.i64[0]) > a9[1])
      {
        v40 = v27;
        v41.i64[0] = a9;
        v29 = a5;
        v30 = a7;
        v31 = v13;
      }

      else
      {
        if (!*(a7 + 16) || v32.i64[0] + a8[2] * v32.i64[1] <= a9[2])
        {
          goto LABEL_16;
        }

        v40 = v27;
        v41.i64[0] = a9;
        v29 = a5;
        v30 = a7;
        v31 = v13;
      }
    }

    else
    {
      v40 = v27;
      v41.i64[0] = a9;
      v29 = a5;
      v30 = a7;
      v31 = v13;
    }
  }

  else
  {
    v40 = v27;
    v41.i64[0] = a9;
    v29 = a5;
    v30 = a7;
    v31 = v13;
  }

  fig_log_get_emitter();
  v33 = FigSignalErrorAtGM();
  v13 = v31;
  a7 = v30;
  a5 = v29;
  v24 = v42;
  v23 = v41.i64[0];
  v27 = v40;
  if (v33)
  {
    v20 = v33;
    goto LABEL_21;
  }

LABEL_16:
  *v19 = v15;
  v34 = v44;
  *(v19 + 4) = v45;
  *(v19 + 20) = v27;
  *(v19 + 36) = v34;
  *(v19 + 5) = v43;
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
  dispatch_apply_f(v15, global_queue, v19, vt_Copy_BGRA_TRC_Tone_Mat_TRC_444vf_neon_fp16_GCD);
  if (!v15)
  {
    return 0;
  }

  v36 = (v19 + 160);
  v37 = v15;
  while (1)
  {
    v38 = *v36++;
    v20 = v38;
    if (v38)
    {
      break;
    }

    if (!--v37)
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

unsigned __int8 *vt_Copy_BGRA_TRC_Tone_Mat_TRC_444vf_neon_fp16_GCD(unsigned __int8 *result, uint64_t a2)
{
  v2 = 0;
  v133 = *(result + 36);
  v3 = *result;
  v4 = *(result + 28) * a2 / v3 + *(result + 44);
  v5 = *(result + 14);
  v6 = *(result + 15);
  v8 = *(result + 12);
  v7 = *(result + 13);
  v9 = *(result + 19);
  v11 = *(result + 16);
  v10 = *(result + 17);
  v12 = **(result + 8);
  v132 = **(result + 7);
  v13 = *v10;
  v14 = v10[1];
  v15 = v10[2];
  v16 = v11[1];
  v131 = *v11;
  v17 = v11[2];
  v18 = *(v9 + 128);
  v178 = *(v9 + 154);
  v19 = *(v9 + 144);
  v20 = v7 * a2 / v3;
  v21 = v20 + v6;
  v22 = *(v9 + 146);
  v23 = v12 * v4;
  v24 = v16 + v14 * (v20 + v6);
  v25 = v17 + v15 * (v20 + v6);
  v26 = *(v9 + 148);
  v27 = *(v9 + 150);
  v28 = *(v9 + 152);
  _S25 = *(v9 + 36);
  _S26 = *(v9 + 40);
  _S27 = *(v9 + 44);
  _Q2.i32[0] = *(v9 + 52);
  v148 = *_Q2.i32;
  v149 = *(v9 + 48);
  _S28 = *(v9 + 60);
  _S29 = *(v9 + 64);
  v146 = *(v9 + 68);
  v147 = *(v9 + 56);
  v174 = *(v9 + 72);
  v173 = *(v9 + 76);
  v172 = *(v9 + 80);
  v171 = *(v9 + 84);
  v170 = *(v9 + 88);
  v169 = *(v9 + 92);
  v168 = *(v9 + 96);
  v167 = *(v9 + 100);
  v166 = *(v9 + 104);
  v165 = *(v9 + 108);
  v164 = *(v9 + 112);
  v35.i32[0] = *(v9 + 116);
  v163 = *v35.i32;
  v162 = *(v9 + 120);
  v176 = 0u;
  v177 = 0u;
  v36 = (v7 + v7 * a2) / v3;
  do
  {
    v37 = 0;
    v38 = *(&v178 + v2);
    _D0 = *(&v176 + 8 * v2);
    do
    {
      v175 = _D0;
      *(&v175 | v37 & 7) = v38 + 4 * v37;
      _D0 = v175;
      ++v37;
    }

    while (v37 != 8);
    *(&v176 + v2++) = v175;
  }

  while (v2 != 4);
  v40 = v36 - v20;
  if (v36 - v20 >= 1)
  {
    v41 = 0;
    _S31 = 8191.0 / v18;
    v43 = v19;
    v44 = v22;
    *_D0.i32 = v27;
    v150 = v27;
    v45 = v28;
    __asm { FCVT            H0, S25 }

    v161 = *_D0.i16;
    __asm { FCVT            H0, S26 }

    v160 = *_D0.i16;
    __asm { FCVT            H0, S27 }

    v159 = _D0.i32[0];
    v50 = v9 + 16548;
    v51 = v9 + 32932;
    v52 = v9 + 164;
    *_D0.i32 = v149;
    __asm { FCVT            H0, S0 }

    v145 = *_D0.i16;
    _D0.i32[0] = _Q2.i32[0];
    __asm { FCVT            H0, S0 }

    v144 = *_D0.i16;
    *_D0.i32 = v147;
    __asm { FCVT            H0, S0 }

    v143 = *_D0.i16;
    __asm { FCVT            H0, S28 }

    v142 = *_D0.i16;
    __asm { FCVT            H0, S29 }

    v141 = *_D0.i16;
    *_D0.i32 = v146;
    __asm { FCVT            H0, S0 }

    v140 = *_D0.i16;
    *_D0.i32 = v165;
    __asm { FCVT            H0, S0 }

    v158 = *_D0.i16;
    *_D0.i32 = v164;
    __asm { FCVT            H0, S0 }

    v157 = *_D0.i16;
    _D0.i32[0] = v35.i32[0];
    __asm { FCVT            H0, S0 }

    v156 = *_D0.i16;
    *_D0.i32 = v162;
    __asm { FCVT            H0, S0 }

    v155 = *_D0.i16;
    *_D0.i32 = v174;
    __asm { FCVT            H0, S0 }

    v154 = *_D0.i16;
    *_D0.i32 = v173;
    __asm { FCVT            H0, S0 }

    v153 = *_D0.i16;
    *_D0.i32 = v172;
    __asm { FCVT            H0, S0 }

    v152 = *_D0.i16;
    *_D0.i32 = v171;
    __asm { FCVT            H0, S0 }

    v151 = *_D0.i16;
    *_D0.i32 = v170;
    __asm { FCVT            H11, S0 }

    *_D0.i32 = v169;
    __asm { FCVT            H13, S0 }

    *_D0.i16 = v19;
    v55 = vdupq_lane_s16(_D0, 0);
    *_D0.i16 = v22;
    v56 = vdupq_lane_s16(_D0, 0);
    *_D0.i16 = v26;
    v57 = vdupq_lane_s16(_D0, 0);
    *_D0.i16 = v27;
    v58 = vdupq_lane_s16(_D0, 0);
    *_D0.i16 = v28;
    v59 = vdupq_lane_s16(_D0, 0);
    _S0 = v168;
    __asm { FCVT            H14, S0 }

    if (v17)
    {
      v62 = (v25 + v5);
    }

    else
    {
      v62 = 0;
    }

    if (v16)
    {
      v63 = (v24 + v5);
    }

    else
    {
      v63 = 0;
    }

    v64 = (v131 + v13 * v21 + v5);
    v65 = v132 + v23 + 4 * v133;
    _S0 = v167;
    __asm { FCVT            H15, S0 }

    *_Q0.i32 = v166;
    __asm { FCVT            H4, S0 }

    v70.i64[0] = 0x9000900090009000;
    v70.i64[1] = 0x9000900090009000;
    __asm { FCVT            H5, S31 }

    v138 = _S26;
    v139 = _S25;
    v136 = _S28;
    v137 = _S27;
    v135 = _S29;
    do
    {
      if (v8 < 8)
      {
        v105 = 0;
        v76 = v64;
        v75 = v63;
        v74 = v62;
        v73 = v65;
      }

      else
      {
        v72 = 0;
        v73 = v65;
        v74 = v62;
        v75 = v63;
        v76 = v64;
        do
        {
          v77 = *(&v177 + 8);
          *&v81 = *v73;
          v78 = v73[1];
          *&v79 = v73[2];
          v80 = v73[3];
          v73 += 4;
          *(&v81 + 1) = v78;
          *(&v79 + 1) = v80;
          v82 = v79;
          v83 = vqtbl2_s8(*&v81, *&v176);
          v84 = vqtbl2_s8(*&v81, *(&v176 + 8));
          *v85.i8 = vqtbl2_s8(*&v81, *&v177);
          *v86.i8 = vzip1_s8(v83, 0);
          v86.u64[1] = vzip2_s8(v83, 0);
          v87 = vcvtq_f16_u16(v86);
          *v86.i8 = vzip1_s8(v84, 0);
          v86.u64[1] = vzip2_s8(v84, 0);
          *v88.i8 = vzip1_s8(*v85.i8, 0);
          v88.u64[1] = vzip2_s8(*v85.i8, 0);
          v89 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmulq_n_f16(v87, _H5), 0), v70));
          v90.i16[0] = *(v52 + 2 * v89.u16[0]);
          v90.i16[1] = *(v52 + 2 * v89.u16[1]);
          v90.i16[2] = *(v52 + 2 * v89.u16[2]);
          v90.i16[3] = *(v52 + 2 * v89.u16[3]);
          v90.i16[4] = *(v52 + 2 * v89.u16[4]);
          v90.i16[5] = *(v52 + 2 * v89.u16[5]);
          v90.i16[6] = *(v52 + 2 * v89.u16[6]);
          v90.i16[7] = *(v52 + 2 * v89.u16[7]);
          v91 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmulq_n_f16(vcvtq_f16_u16(v86), _H5), 0), v70));
          v85.i16[0] = *(v52 + 2 * v91.u16[0]);
          v85.i16[1] = *(v52 + 2 * v91.u16[1]);
          v85.i16[2] = *(v52 + 2 * v91.u16[2]);
          v85.i16[3] = *(v52 + 2 * v91.u16[3]);
          v85.i16[4] = *(v52 + 2 * v91.u16[4]);
          v85.i16[5] = *(v52 + 2 * v91.u16[5]);
          v85.i16[6] = *(v52 + 2 * v91.u16[6]);
          v85.i16[7] = *(v52 + 2 * v91.u16[7]);
          v92 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmulq_n_f16(vcvtq_f16_u16(v88), _H5), 0), v70));
          v88.i16[0] = *(v52 + 2 * v92.u16[0]);
          v88.i16[1] = *(v52 + 2 * v92.u16[1]);
          v88.i16[2] = *(v52 + 2 * v92.u16[2]);
          v88.i16[3] = *(v52 + 2 * v92.u16[3]);
          v88.i16[4] = *(v52 + 2 * v92.u16[4]);
          v88.i16[5] = *(v52 + 2 * v92.u16[5]);
          v88.i16[6] = *(v52 + 2 * v92.u16[6]);
          v88.i16[7] = *(v52 + 2 * v92.u16[7]);
          v93 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v90, v158), v85, v157), v88, v156), vmaxq_f16(vmaxq_f16(v90, v85), v88), v155), 0), v70));
          v94.i16[0] = *(v50 + 2 * v93.u16[0]);
          v94.i16[1] = *(v50 + 2 * v93.u16[1]);
          v94.i16[2] = *(v50 + 2 * v93.u16[2]);
          v94.i16[3] = *(v50 + 2 * v93.u16[3]);
          v94.i16[4] = *(v50 + 2 * v93.u16[4]);
          v94.i16[5] = *(v50 + 2 * v93.u16[5]);
          v94.i16[6] = *(v50 + 2 * v93.u16[6]);
          v94.i16[7] = *(v50 + 2 * v93.u16[7]);
          v95 = vmulq_f16(v90, v94);
          v96 = vmulq_f16(v85, v94);
          v97 = vmulq_f16(v88, v94);
          _Q2 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v95, v151), v96, _H11), v97, _H13);
          v98 = vmulq_n_f16(v97, _H4);
          v99 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v95, v154), v96, v153), v97, v152), 0), v70));
          v100.i16[0] = *(v51 + 2 * v99.u16[0]);
          v100.i16[1] = *(v51 + 2 * v99.u16[1]);
          v100.i16[2] = *(v51 + 2 * v99.u16[2]);
          v100.i16[3] = *(v51 + 2 * v99.u16[3]);
          v100.i16[4] = *(v51 + 2 * v99.u16[4]);
          v100.i16[5] = *(v51 + 2 * v99.u16[5]);
          v100.i16[6] = *(v51 + 2 * v99.u16[6]);
          v100.i16[7] = *(v51 + 2 * v99.u16[7]);
          v101 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(_Q2, 0), v70));
          v102.i16[0] = *(v51 + 2 * v101.u16[0]);
          v102.i16[1] = *(v51 + 2 * v101.u16[1]);
          v102.i16[2] = *(v51 + 2 * v101.u16[2]);
          v102.i16[3] = *(v51 + 2 * v101.u16[3]);
          v102.i16[4] = *(v51 + 2 * v101.u16[4]);
          v102.i16[5] = *(v51 + 2 * v101.u16[5]);
          v102.i16[6] = *(v51 + 2 * v101.u16[6]);
          v102.i16[7] = *(v51 + 2 * v101.u16[7]);
          v103 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(v98, v96, _H15), v95, _H14), 0), v70));
          _Q0.i16[0] = *(v51 + 2 * v103.u16[0]);
          _Q0.i16[1] = *(v51 + 2 * v103.u16[1]);
          _Q0.i16[2] = *(v51 + 2 * v103.u16[2]);
          _Q0.i16[3] = *(v51 + 2 * v103.u16[3]);
          _Q0.i16[4] = *(v51 + 2 * v103.u16[4]);
          _Q0.i16[5] = *(v51 + 2 * v103.u16[5]);
          _Q0.i16[6] = *(v51 + 2 * v103.u16[6]);
          _Q0.i16[7] = *(v51 + 2 * v103.u16[7]);
          _Q2.i32[0] = v159;
          v35 = vmovn_s16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v55, v100, v161), v102, v160), _Q0, *&v159), v55), v57)));
          *v76++ = v35;
          if (v75)
          {
            v104 = vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v56, v100, v142), v102, v141), _Q0, v140);
            *_Q0.i8 = vmovn_s16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v56, v100, v145), v102, v144), _Q0, v143), v58), v59), v58), v59)));
            _Q2 = vcvtq_u16_f16(v104);
            v35 = vmovn_s16(_Q2);
            vst2_s8(v75, *(&v35 - 1));
            v75 += 16;
          }

          if (v74)
          {
            v35 = vqtbl2_s8(*&v81, v77);
            _Q2.i32[0] = v74;
            *_Q0.i8 = vbic_s8(v35, vceqd_s64(v74, 0));
            *v74++ = _Q0.i64[0];
          }

          v72 += 8;
        }

        while (v72 < v8 - 7);
        v105 = v8 & 0x7FFFFFF8;
        _S26 = v138;
        _S25 = v139;
        _S28 = v136;
        _S27 = v137;
        _S29 = v135;
      }

      v106 = v8 - v105;
      if (v8 > v105)
      {
        do
        {
          _Q0.i8[0] = *(v73 + v178);
          v35.i8[0] = *(v73 + BYTE1(v178));
          _Q2.i8[0] = *(v73 + BYTE2(v178));
          _H0 = *(v52 + 2 * llroundf(fminf(fmaxf(_S31 * _Q0.u32[0], 0.0), 8191.0)));
          __asm { FCVT            S0, H0 }

          _H1 = *(v52 + 2 * llroundf(fminf(fmaxf(_S31 * v35.u32[0], 0.0), 8191.0)));
          __asm { FCVT            S3, H1 }

          _H1 = *(v52 + 2 * llroundf(fminf(fmaxf(_S31 * _Q2.u32[0], 0.0), 8191.0)));
          __asm { FCVT            S6, H1 }

          v113 = fmaxf(_S0, fmaxf(_S3, _S6));
          v114 = (((v164 * _S3) + (v165 * _S0)) + (v163 * _S6)) + (v162 * v113);
          v115 = 8191.0;
          if (v114 <= 8191.0)
          {
            v115 = (((v164 * _S3) + (v165 * _S0)) + (v163 * _S6)) + (v162 * v113);
            if (v114 < 0.0)
            {
              v115 = 0.0;
            }
          }

          _H1 = *(v50 + 2 * llroundf(v115));
          __asm { FCVT            S1, H1 }

          _S0 = _S0 * _S1;
          v119 = _S3 * _S1;
          v120 = _S6 * _S1;
          v121 = ((v173 * v119) + (_S0 * v174)) + (v120 * v172);
          v122 = ((v170 * v119) + (_S0 * v171)) + (v120 * v169);
          _S1 = ((v167 * v119) + (_S0 * v168)) + (v120 * v166);
          LOWORD(_S0) = *(v51 + 2 * llroundf(fminf(fmaxf(v121, 0.0), 8191.0)));
          __asm { FCVT            S0, H0 }

          *_Q2.i32 = fminf(fmaxf(v122, 0.0), 8191.0);
          _Q2.i16[0] = *(v51 + 2 * llroundf(*_Q2.i32));
          __asm { FCVT            S3, H2 }

          LOWORD(_S1) = *(v51 + 2 * llroundf(fminf(fmaxf(_S1, 0.0), 8191.0)));
          __asm { FCVT            S6, H1 }

          *v35.i32 = ((_S26 * _S3) + (_S25 * *_Q0.i32)) + (_S27 * _S6);
          v126 = v26;
          if ((*v35.i32 + v43) <= v26)
          {
            v126 = *v35.i32 + v43;
            if ((*v35.i32 + v43) < v43)
            {
              v126 = v19;
            }
          }

          v127 = *(v73 + HIBYTE(v178));
          v76->i8[0] = llroundf(v126);
          v76 = (v76 + 1);
          if (v75)
          {
            *_Q2.i32 = v147;
            v128 = ((v44 + (*_Q0.i32 * v149)) + (_S3 * v148)) + (_S6 * v147);
            v129 = v45;
            if (v128 <= v45)
            {
              v129 = ((v44 + (*_Q0.i32 * v149)) + (_S3 * v148)) + (_S6 * v147);
              if (v128 < v150)
              {
                v129 = v27;
              }
            }

            *v35.i32 = v146;
            *_Q0.i32 = ((v44 + (*_Q0.i32 * _S28)) + (_S3 * _S29)) + (_S6 * v146);
            *v75 = llroundf(v129);
            v130 = v45;
            if (*_Q0.i32 <= v45)
            {
              *v35.i32 = v27;
              v130 = *_Q0.i32;
              if (*_Q0.i32 < v150)
              {
                v130 = v27;
              }
            }

            v75[1] = llroundf(v130);
            v75 += 2;
          }

          if (v74)
          {
            *v74 = v127;
            v74 = (v74 + 1);
          }

          v73 = (v73 + 4);
          --v106;
        }

        while (v106);
      }

      v65 += v12;
      v64 = (v64 + v13);
      v63 += v14;
      v62 = (v62 + v15);
      ++v41;
    }

    while (v41 != v40);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_BGRA_TRC_Tone_Mat_TRC_444vf(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v13 = a3;
  v46 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v44 = a2[2];
  v45 = v16;
  v18 = *a6;
  v40 = a6[1];
  v41 = v17;
  v42 = a6[2];
  v43 = v18;
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
    v19 = &v40.i8[-v21];
    bzero(&v40 - v21, v22);
  }

  v23 = a9;
  v24 = v42;
  v25 = vbslq_s8(vcgtq_s64(vaddq_s64(v44, v41), v45), vsubq_s64(v45, v44), v41);
  v26 = vbslq_s8(vcgtq_s64(vaddq_s64(v42, v40), v43), vsubq_s64(v43, v42), v40);
  v27 = vbslq_s8(vcgtq_s64(v26, v25), v25, v26);
  v25.i64[0] = v27.i64[0];
  v25.i64[1] = -1;
  v28 = vaddq_s64(v44, v25);
  if ((*a4 * (v28.i64[1] + v27.i64[1]) + 4 * v28.i64[0]) <= *a5)
  {
    v32 = vaddq_s64((*&v42 + __PAIR128__(-1, 0)), v27);
    if (v32.i64[0] + *a8 * v32.i64[1] <= *a9)
    {
      if (*(a7 + 8) && (a8[1] * v32.i64[1] + 2 * v32.i64[0]) > a9[1])
      {
        v40 = v27;
        v41.i64[0] = a9;
        v29 = a5;
        v30 = a7;
        v31 = v13;
      }

      else
      {
        if (!*(a7 + 16) || v32.i64[0] + a8[2] * v32.i64[1] <= a9[2])
        {
          goto LABEL_16;
        }

        v40 = v27;
        v41.i64[0] = a9;
        v29 = a5;
        v30 = a7;
        v31 = v13;
      }
    }

    else
    {
      v40 = v27;
      v41.i64[0] = a9;
      v29 = a5;
      v30 = a7;
      v31 = v13;
    }
  }

  else
  {
    v40 = v27;
    v41.i64[0] = a9;
    v29 = a5;
    v30 = a7;
    v31 = v13;
  }

  fig_log_get_emitter();
  v33 = FigSignalErrorAtGM();
  v13 = v31;
  a7 = v30;
  a5 = v29;
  v24 = v42;
  v23 = v41.i64[0];
  v27 = v40;
  if (v33)
  {
    v20 = v33;
    goto LABEL_21;
  }

LABEL_16:
  *v19 = v15;
  v34 = v44;
  *(v19 + 4) = v45;
  *(v19 + 20) = v27;
  *(v19 + 36) = v34;
  *(v19 + 5) = v43;
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
  dispatch_apply_f(v15, global_queue, v19, vt_Copy_BGRA_TRC_Tone_Mat_TRC_444vf_GCD);
  if (!v15)
  {
    return 0;
  }

  v36 = (v19 + 160);
  v37 = v15;
  while (1)
  {
    v38 = *v36++;
    v20 = v38;
    if (v38)
    {
      break;
    }

    if (!--v37)
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

unsigned __int8 *vt_Copy_BGRA_TRC_Tone_Mat_TRC_444vf_GCD(unsigned __int8 *result, uint64_t a2)
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
    v11 = *(result + 16);
    v12 = *(result + 17);
    v13 = *v12;
    v14 = v12[1];
    v15 = v12[2];
    *&v16 = *(v9 + 128);
    v17 = 8191.0 / *&v16;
    LOWORD(v16) = *(v9 + 144);
    v18 = v16;
    LOWORD(v16) = *(v9 + 146);
    v19 = v16;
    LOWORD(v16) = *(v9 + 148);
    v20 = v16;
    LOWORD(v16) = *(v9 + 150);
    v21 = v16;
    LOWORD(v16) = *(v9 + 152);
    v22 = v16;
    v23 = *(v9 + 36);
    v24 = *(v9 + 40);
    v26 = *(v9 + 44);
    v25 = *(v9 + 48);
    v94 = *(v9 + 52);
    v95 = v25;
    v27 = *(v9 + 56);
    v28 = *(v9 + 60);
    v93 = v27;
    v29 = *(v9 + 64);
    v30 = *(v9 + 68);
    v31 = *(v9 + 72);
    v32 = *(v9 + 76);
    v33 = *(v9 + 80);
    v34 = *(v9 + 84);
    v35 = *(v9 + 88);
    v36 = *(v9 + 92);
    v37 = *(v9 + 96);
    v38 = *(v9 + 100);
    v39 = *(v9 + 104);
    v40 = *(v9 + 108);
    v41 = v9 + 164;
    v42 = v9 + 16548;
    v43 = v9 + 32932;
    v44 = *(v9 + 112);
    v45 = *(v9 + 116);
    v46 = *(v9 + 120);
    v47 = *(result + 14);
    v48 = v5 + *(result + 15);
    v49 = *(result + 28) * a2 / v3 + *(result + 44);
    v50 = *(v9 + 157);
    v51 = *(v9 + 156);
    v52 = *(v9 + 155);
    v53 = *(v9 + 154);
    v54 = v11[2];
    if (v54)
    {
      v55 = (v54 + v15 * v48 + v47);
    }

    else
    {
      v55 = 0;
    }

    v57 = *v11;
    v56 = v11[1];
    v58 = (v56 + v14 * v48 + v47);
    if (!v56)
    {
      v58 = 0;
    }

    v59 = (v57 + v13 * v48 + v47);
    v60 = **(result + 7) + v49 * v10 + 4 * *(result + 36);
    do
    {
      if (v8 >= 1)
      {
        v61 = v8;
        v62 = v55;
        v63 = v58;
        v64 = v59;
        v65 = v60;
        do
        {
          LOBYTE(v27) = *(v65 + v53);
          LOBYTE(v25) = *(v65 + v52);
          LOBYTE(_S18) = *(v65 + v51);
          _H0 = *(v41 + 2 * llroundf(fminf(fmaxf(v17 * LODWORD(v27), 0.0), 8191.0)));
          v67 = v17 * LODWORD(_S18);
          __asm { FCVT            S18, H0 }

          _H0 = *(v41 + 2 * llroundf(fminf(fmaxf(v17 * LODWORD(v25), 0.0), 8191.0)));
          v74 = llroundf(fminf(fmaxf(v67, 0.0), 8191.0));
          __asm { FCVT            S14, H0 }

          _H0 = *(v41 + 2 * v74);
          __asm { FCVT            S15, H0 }

          v78 = (((v44 * _S14) + (v40 * _S18)) + (v45 * _S15)) + (v46 * fmaxf(_S18, fmaxf(_S14, _S15)));
          v79 = 8191.0;
          if (v78 <= 8191.0)
          {
            v79 = v78;
            if (v78 < 0.0)
            {
              v79 = 0.0;
            }
          }

          _H0 = *(v42 + 2 * llroundf(v79));
          __asm { FCVT            S0, H0 }

          _S6 = _S18 * _S0;
          v83 = _S14 * _S0;
          v84 = _S15 * _S0;
          v85 = ((v32 * v83) + (_S6 * v31)) + (v84 * v33);
          v86 = ((v35 * v83) + (_S6 * v34)) + (v84 * v36);
          _S0 = ((v38 * v83) + (_S6 * v37)) + (v84 * v39);
          LOWORD(_S6) = *(v43 + 2 * llroundf(fminf(fmaxf(v85, 0.0), 8191.0)));
          __asm { FCVT            S14, H6 }

          LOWORD(_S6) = *(v43 + 2 * llroundf(fminf(fmaxf(v86, 0.0), 8191.0)));
          __asm { FCVT            S15, H6 }

          LOWORD(_S0) = *(v43 + 2 * llroundf(fminf(fmaxf(_S0, 0.0), 8191.0)));
          __asm { FCVT            S18, H0 }

          v27 = (((v24 * _S15) + (v23 * _S14)) + (v26 * _S18)) + v18;
          v25 = v20;
          if (v27 <= v20)
          {
            v25 = (((v24 * _S15) + (v23 * _S14)) + (v26 * _S18)) + v18;
            if (v27 < v18)
            {
              v25 = v18;
            }
          }

          v90 = *(v65 + v50);
          *v64++ = llroundf(v25);
          if (v63)
          {
            v91 = ((v19 + (_S14 * v95)) + (_S15 * v94)) + (_S18 * v93);
            v92 = v22;
            if (v91 <= v22)
            {
              v92 = ((v19 + (_S14 * v95)) + (_S15 * v94)) + (_S18 * v93);
              if (v91 < v21)
              {
                v92 = v21;
              }
            }

            v27 = (v19 + (_S14 * v28)) + (_S15 * v29);
            _S18 = v27 + (_S18 * v30);
            *v63 = llroundf(v92);
            v25 = v22;
            if (_S18 <= v22)
            {
              v25 = _S18;
              if (_S18 < v21)
              {
                v25 = v21;
              }
            }

            v63[1] = llroundf(v25);
            v63 += 2;
          }

          if (v62)
          {
            *v62++ = v90;
          }

          v65 += 4;
          --v61;
        }

        while (v61);
      }

      v60 += v10;
      v59 += v13;
      v58 += v14;
      v55 += v15;
      ++v7;
    }

    while (v7 != v6);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_BGRA_TRC_Mat_TRC_444vf_neon_fp16(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v13 = a3;
  v46 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v44 = a2[2];
  v45 = v16;
  v18 = *a6;
  v40 = a6[1];
  v41 = v17;
  v42 = a6[2];
  v43 = v18;
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
    v19 = &v40.i8[-v21];
    bzero(&v40 - v21, v22);
  }

  v23 = a9;
  v24 = v42;
  v25 = vbslq_s8(vcgtq_s64(vaddq_s64(v44, v41), v45), vsubq_s64(v45, v44), v41);
  v26 = vbslq_s8(vcgtq_s64(vaddq_s64(v42, v40), v43), vsubq_s64(v43, v42), v40);
  v27 = vbslq_s8(vcgtq_s64(v26, v25), v25, v26);
  v25.i64[0] = v27.i64[0];
  v25.i64[1] = -1;
  v28 = vaddq_s64(v44, v25);
  if ((*a4 * (v28.i64[1] + v27.i64[1]) + 4 * v28.i64[0]) <= *a5)
  {
    v32 = vaddq_s64((*&v42 + __PAIR128__(-1, 0)), v27);
    if (v32.i64[0] + *a8 * v32.i64[1] <= *a9)
    {
      if (*(a7 + 8) && (a8[1] * v32.i64[1] + 2 * v32.i64[0]) > a9[1])
      {
        v40 = v27;
        v41.i64[0] = a9;
        v29 = a5;
        v30 = a7;
        v31 = v13;
      }

      else
      {
        if (!*(a7 + 16) || v32.i64[0] + a8[2] * v32.i64[1] <= a9[2])
        {
          goto LABEL_16;
        }

        v40 = v27;
        v41.i64[0] = a9;
        v29 = a5;
        v30 = a7;
        v31 = v13;
      }
    }

    else
    {
      v40 = v27;
      v41.i64[0] = a9;
      v29 = a5;
      v30 = a7;
      v31 = v13;
    }
  }

  else
  {
    v40 = v27;
    v41.i64[0] = a9;
    v29 = a5;
    v30 = a7;
    v31 = v13;
  }

  fig_log_get_emitter();
  v33 = FigSignalErrorAtGM();
  v13 = v31;
  a7 = v30;
  a5 = v29;
  v24 = v42;
  v23 = v41.i64[0];
  v27 = v40;
  if (v33)
  {
    v20 = v33;
    goto LABEL_21;
  }

LABEL_16:
  *v19 = v15;
  v34 = v44;
  *(v19 + 4) = v45;
  *(v19 + 20) = v27;
  *(v19 + 36) = v34;
  *(v19 + 5) = v43;
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
  dispatch_apply_f(v15, global_queue, v19, vt_Copy_BGRA_TRC_Mat_TRC_444vf_neon_fp16_GCD);
  if (!v15)
  {
    return 0;
  }

  v36 = (v19 + 160);
  v37 = v15;
  while (1)
  {
    v38 = *v36++;
    v20 = v38;
    if (v38)
    {
      break;
    }

    if (!--v37)
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

unsigned __int8 *vt_Copy_BGRA_TRC_Mat_TRC_444vf_neon_fp16_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, double a5, double a6, double a7, float16x8_t _Q5, float16x8_t _Q6, int16x8_t a10)
{
  v10 = 0;
  v111 = *(result + 36);
  v11 = *result;
  v12 = *(result + 14);
  v14 = *(result + 12);
  v13 = *(result + 13);
  v15 = *(result + 19);
  v17 = *(result + 16);
  v16 = *(result + 17);
  v18 = **(result + 8);
  v110 = **(result + 7);
  v19 = *v16;
  v20 = v16[1];
  v21 = v16[2];
  v22 = v17[1];
  v109 = *v17;
  v23 = v17[2];
  v24 = v13 * a2 / v11;
  v25 = v24 + *(result + 15);
  v26 = *(v15 + 128);
  v27 = v18 * (*(result + 28) * a2 / v11 + *(result + 44));
  v147 = *(v15 + 154);
  v28 = *(v15 + 144);
  v29 = *(v15 + 146);
  v30 = *(v15 + 148);
  v31 = *(v15 + 150);
  v32 = *(v15 + 152);
  v143 = *(v15 + 36);
  v142 = *(v15 + 40);
  v141 = *(v15 + 44);
  v123 = *(v15 + 52);
  v124 = *(v15 + 48);
  LODWORD(a5) = *(v15 + 64);
  v121 = *(v15 + 60);
  v122 = *(v15 + 56);
  v119 = *(v15 + 68);
  v120 = *&a5;
  v140 = *(v15 + 72);
  v139 = *(v15 + 76);
  v138 = *(v15 + 80);
  v137 = *(v15 + 84);
  v136 = *(v15 + 88);
  v135 = *(v15 + 92);
  v134 = *(v15 + 96);
  LODWORD(a4) = *(v15 + 100);
  v133 = *&a4;
  v132 = *(v15 + 104);
  v145 = 0u;
  *v146[0].i8 = 0u;
  v33 = (v13 + v13 * a2) / v11;
  do
  {
    v34 = 0;
    v35 = *(&v147 + v10);
    _D0 = v146[v10 - 2];
    do
    {
      v144 = _D0;
      *(&v144 | v34 & 7) = v35 + 4 * v34;
      _D0 = v144;
      ++v34;
    }

    while (v34 != 8);
    v146[v10++ - 2] = v144;
  }

  while (v10 != 4);
  v37 = v33 - v24;
  if (v33 - v24 >= 1)
  {
    v38 = 0;
    _S27 = 8191.0 / v26;
    v40 = v28;
    v41 = v29;
    v125 = v31;
    v42 = v15 + 164;
    v43 = v15 + 16548;
    v44 = v32;
    *_D0.i32 = v143;
    __asm { FCVT            H0, S0 }

    v131 = *_D0.i16;
    *_D0.i32 = v142;
    __asm { FCVT            H0, S0 }

    v130 = *_D0.i16;
    *_D0.i32 = v141;
    __asm { FCVT            H0, S0 }

    v129 = *_D0.i16;
    *_D0.i32 = v124;
    __asm { FCVT            H0, S0 }

    v118 = *_D0.i16;
    *_D0.i32 = v123;
    __asm { FCVT            H0, S0 }

    v117 = *_D0.i16;
    *_D0.i32 = v122;
    __asm { FCVT            H0, S0 }

    v116 = *_D0.i16;
    *_D0.i32 = v121;
    __asm { FCVT            H0, S0 }

    v115 = *_D0.i16;
    _D0.i32[0] = LODWORD(a5);
    __asm { FCVT            H0, S0 }

    v114 = *_D0.i16;
    *_D0.i32 = v119;
    __asm { FCVT            H0, S0 }

    v113 = *_D0.i16;
    *_D0.i32 = v140;
    __asm { FCVT            H0, S0 }

    v128 = *_D0.i16;
    *_D0.i32 = v139;
    __asm { FCVT            H0, S0 }

    v127 = *_D0.i16;
    *_D0.i32 = v138;
    __asm { FCVT            H0, S0 }

    v126 = *_D0.i16;
    *_D0.i32 = v137;
    __asm { FCVT            H12, S0 }

    *_D0.i32 = v136;
    __asm { FCVT            H13, S0 }

    *_D0.i32 = v135;
    __asm { FCVT            H14, S0 }

    *_D0.i32 = v134;
    __asm { FCVT            H15, S0 }

    _D0.i32[0] = LODWORD(a4);
    __asm { FCVT            H3, S0 }

    *_D0.i32 = v132;
    __asm { FCVT            H4, S0 }

    *_D0.i16 = v28;
    v55 = vdupq_lane_s16(_D0, 0);
    *_D0.i16 = v29;
    v56 = vdupq_lane_s16(_D0, 0);
    *&a4 = v30;
    v57 = vdupq_lane_s16(*&a4, 0);
    *&a5 = v31;
    v58 = vdupq_lane_s16(*&a5, 0);
    *_Q5.i16 = v32;
    v59 = vdupq_lane_s16(*_Q5.i8, 0);
    if (v23)
    {
      v60 = (v23 + v21 * v25 + v12);
    }

    else
    {
      v60 = 0;
    }

    if (v22)
    {
      v61 = (v22 + v20 * v25 + v12);
    }

    else
    {
      v61 = 0;
    }

    v62 = (v109 + v19 * v25 + v12);
    v63 = v110 + v27 + 4 * v111;
    __asm { FCVT            H9, S27 }

    v65.i64[0] = 0x9000900090009000;
    v65.i64[1] = 0x9000900090009000;
    do
    {
      if (v14 < 8)
      {
        v92 = 0;
        v70 = v61;
        v69 = v60;
        v68 = v62;
        v67 = v63;
      }

      else
      {
        v66 = 0;
        v67 = v63;
        v68 = v62;
        v69 = v60;
        v70 = v61;
        do
        {
          v71 = v146[1];
          *&v75 = *v67;
          v72 = v67[1];
          *&v73 = v67[2];
          v74 = v67[3];
          v67 += 4;
          *(&v75 + 1) = v72;
          *(&v73 + 1) = v74;
          v76 = v73;
          v77 = vqtbl2_s8(*&v75, *&v145);
          v78 = vqtbl2_s8(*&v75, *(&v145 + 8));
          *v79.i8 = vzip1_s8(v77, 0);
          v79.u64[1] = vzip2_s8(v77, 0);
          v80 = vqtbl2_s8(*&v75, v146[0]);
          v81 = vcvtq_f16_u16(v79);
          *v79.i8 = vzip1_s8(v78, 0);
          v79.u64[1] = vzip2_s8(v78, 0);
          v82 = vcvtq_f16_u16(v79);
          *v79.i8 = vzip1_s8(v80, 0);
          v79.u64[1] = vzip2_s8(v80, 0);
          v83 = vmulq_n_f16(vcvtq_f16_u16(v79), _H9);
          v84 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmulq_n_f16(v81, _H9), 0), v65));
          v81.i16[0] = *(v42 + 2 * v84.u16[0]);
          v81.i16[1] = *(v42 + 2 * v84.u16[1]);
          v81.i16[2] = *(v42 + 2 * v84.u16[2]);
          v81.i16[3] = *(v42 + 2 * v84.u16[3]);
          v81.i16[4] = *(v42 + 2 * v84.u16[4]);
          v81.i16[5] = *(v42 + 2 * v84.u16[5]);
          v81.i16[6] = *(v42 + 2 * v84.u16[6]);
          v81.i16[7] = *(v42 + 2 * v84.u16[7]);
          v85 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmulq_n_f16(v82, _H9), 0), v65));
          v86.i16[0] = *(v42 + 2 * v85.u16[0]);
          v86.i16[1] = *(v42 + 2 * v85.u16[1]);
          v86.i16[2] = *(v42 + 2 * v85.u16[2]);
          v86.i16[3] = *(v42 + 2 * v85.u16[3]);
          v86.i16[4] = *(v42 + 2 * v85.u16[4]);
          v86.i16[5] = *(v42 + 2 * v85.u16[5]);
          v86.i16[6] = *(v42 + 2 * v85.u16[6]);
          v86.i16[7] = *(v42 + 2 * v85.u16[7]);
          v87 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v83, 0), v65));
          v85.i16[0] = *(v42 + 2 * v87.u16[0]);
          v85.i16[1] = *(v42 + 2 * v87.u16[1]);
          v85.i16[2] = *(v42 + 2 * v87.u16[2]);
          v85.i16[3] = *(v42 + 2 * v87.u16[3]);
          v85.i16[4] = *(v42 + 2 * v87.u16[4]);
          v85.i16[5] = *(v42 + 2 * v87.u16[5]);
          v85.i16[6] = *(v42 + 2 * v87.u16[6]);
          v85.i16[7] = *(v42 + 2 * v87.u16[7]);
          v88 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v81, v128), v86, v127), v85, v126), 0), v65));
          v89.i16[0] = *(v43 + 2 * v88.u16[0]);
          v89.i16[1] = *(v43 + 2 * v88.u16[1]);
          v89.i16[2] = *(v43 + 2 * v88.u16[2]);
          v89.i16[3] = *(v43 + 2 * v88.u16[3]);
          v89.i16[4] = *(v43 + 2 * v88.u16[4]);
          v89.i16[5] = *(v43 + 2 * v88.u16[5]);
          v89.i16[6] = *(v43 + 2 * v88.u16[6]);
          v89.i16[7] = *(v43 + 2 * v88.u16[7]);
          v90 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v81, _H12), v86, _H13), v85, _H14), 0), v65));
          _Q5.i16[0] = *(v43 + 2 * v90.u16[0]);
          _Q5.i16[1] = *(v43 + 2 * v90.u16[1]);
          _Q5.i16[2] = *(v43 + 2 * v90.u16[2]);
          _Q5.i16[3] = *(v43 + 2 * v90.u16[3]);
          _Q5.i16[4] = *(v43 + 2 * v90.u16[4]);
          _Q5.i16[5] = *(v43 + 2 * v90.u16[5]);
          _Q5.i16[6] = *(v43 + 2 * v90.u16[6]);
          _Q5.i16[7] = *(v43 + 2 * v90.u16[7]);
          a10 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v85, _H4), v86, _H3), v81, _H15), 0), v65));
          _Q6.i16[0] = *(v43 + 2 * a10.u16[0]);
          _Q6.i16[1] = *(v43 + 2 * a10.u16[1]);
          _Q6.i16[2] = *(v43 + 2 * a10.u16[2]);
          _Q6.i16[3] = *(v43 + 2 * a10.u16[3]);
          _Q6.i16[4] = *(v43 + 2 * a10.u16[4]);
          _Q6.i16[5] = *(v43 + 2 * a10.u16[5]);
          _Q6.i16[6] = *(v43 + 2 * a10.u16[6]);
          _Q6.i16[7] = *(v43 + 2 * a10.u16[7]);
          *a10.i8 = vmovn_s16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v55, v89, v131), _Q5, v130), _Q6, v129), v55), v57)));
          *v68++ = a10.i64[0];
          if (v70)
          {
            v91 = vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v56, v89, v115), _Q5, v114), _Q6, v113);
            *_Q5.i8 = vmovn_s16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v56, v89, v118), _Q5, v117), _Q6, v116), v58), v59), v58), v59)));
            a10 = vcvtq_u16_f16(v91);
            *_Q6.i8 = vmovn_s16(a10);
            vst2_s8(v70, _Q5);
            v70 += 16;
          }

          if (v69)
          {
            *_Q6.i8 = vqtbl2_s8(*&v75, v71);
            a10.i32[0] = v69;
            *_Q5.i8 = vbic_s8(*_Q6.i8, vceqd_s64(v69, 0));
            *v69++ = _Q5.i64[0];
          }

          v66 += 8;
        }

        while (v66 < v14 - 7);
        v92 = v14 & 0x7FFFFFF8;
      }

      v93 = v14 - v92;
      if (v14 > v92)
      {
        do
        {
          _Q5.i8[0] = *(v67 + v147);
          _Q6.i8[0] = *(v67 + BYTE1(v147));
          a10.i8[0] = *(v67 + BYTE2(v147));
          v94 = llroundf(fminf(fmaxf(_S27 * _Q5.u32[0], 0.0), 8191.0));
          _S5 = _S27 * a10.u32[0];
          _H7 = *(v42 + 2 * v94);
          __asm { FCVT            S7, H7 }

          _H6 = *(v42 + 2 * llroundf(fminf(fmaxf(_S27 * _Q6.u32[0], 0.0), 8191.0)));
          __asm { FCVT            S6, H6 }

          LOWORD(_S5) = *(v42 + 2 * llroundf(fminf(fmaxf(_S5, 0.0), 8191.0)));
          __asm { FCVT            S5, H5 }

          v101 = ((v139 * _S6) + (_S7 * v140)) + (_S5 * v138);
          v102 = ((v136 * _S6) + (_S7 * v137)) + (_S5 * v135);
          _S7 = ((v133 * _S6) + (_S7 * v134)) + (_S5 * v132);
          LOWORD(_S5) = *(v43 + 2 * llroundf(fminf(fmaxf(v101, 0.0), 8191.0)));
          __asm { FCVT            S5, H5 }

          LOWORD(_S6) = *(v43 + 2 * llroundf(fminf(fmaxf(v102, 0.0), 8191.0)));
          __asm { FCVT            S6, H6 }

          LOWORD(_S7) = *(v43 + 2 * llroundf(fminf(fmaxf(_S7, 0.0), 8191.0)));
          __asm { FCVT            S21, H7 }

          *a10.i32 = ((v142 * *_Q6.i32) + (v143 * *_Q5.i32)) + (v141 * _S21);
          v105 = v30;
          if ((*a10.i32 + v40) <= v30)
          {
            v105 = *a10.i32 + v40;
            if ((*a10.i32 + v40) < v40)
            {
              v105 = v28;
            }
          }

          v106 = *(v67 + HIBYTE(v147));
          *v68 = llroundf(v105);
          v68 = (v68 + 1);
          if (v70)
          {
            v107 = ((v41 + (*_Q5.i32 * v124)) + (*_Q6.i32 * v123)) + (_S21 * v122);
            v108 = v44;
            if (v107 <= v44)
            {
              v108 = ((v41 + (*_Q5.i32 * v124)) + (*_Q6.i32 * v123)) + (_S21 * v122);
              if (v107 < v125)
              {
                v108 = v31;
              }
            }

            *a10.i32 = v120;
            *_Q5.i32 = ((v41 + (*_Q5.i32 * v121)) + (*_Q6.i32 * v120)) + (_S21 * v119);
            *v70 = llroundf(v108);
            *_Q6.i32 = v44;
            if (*_Q5.i32 <= v44)
            {
              _Q6.i32[0] = _Q5.i32[0];
              if (*_Q5.i32 < v125)
              {
                *_Q6.i32 = v31;
              }
            }

            v70[1] = llroundf(*_Q6.i32);
            v70 += 2;
          }

          if (v69)
          {
            *v69 = v106;
            v69 = (v69 + 1);
          }

          v67 = (v67 + 4);
          --v93;
        }

        while (v93);
      }

      v63 += v18;
      v62 = (v62 + v19);
      v61 += v20;
      v60 = (v60 + v21);
      ++v38;
    }

    while (v38 != v37);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_BGRA_TRC_Mat_TRC_444vf(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v13 = a3;
  v46 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v44 = a2[2];
  v45 = v16;
  v18 = *a6;
  v40 = a6[1];
  v41 = v17;
  v42 = a6[2];
  v43 = v18;
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
    v19 = &v40.i8[-v21];
    bzero(&v40 - v21, v22);
  }

  v23 = a9;
  v24 = v42;
  v25 = vbslq_s8(vcgtq_s64(vaddq_s64(v44, v41), v45), vsubq_s64(v45, v44), v41);
  v26 = vbslq_s8(vcgtq_s64(vaddq_s64(v42, v40), v43), vsubq_s64(v43, v42), v40);
  v27 = vbslq_s8(vcgtq_s64(v26, v25), v25, v26);
  v25.i64[0] = v27.i64[0];
  v25.i64[1] = -1;
  v28 = vaddq_s64(v44, v25);
  if ((*a4 * (v28.i64[1] + v27.i64[1]) + 4 * v28.i64[0]) <= *a5)
  {
    v32 = vaddq_s64((*&v42 + __PAIR128__(-1, 0)), v27);
    if (v32.i64[0] + *a8 * v32.i64[1] <= *a9)
    {
      if (*(a7 + 8) && (a8[1] * v32.i64[1] + 2 * v32.i64[0]) > a9[1])
      {
        v40 = v27;
        v41.i64[0] = a9;
        v29 = a5;
        v30 = a7;
        v31 = v13;
      }

      else
      {
        if (!*(a7 + 16) || v32.i64[0] + a8[2] * v32.i64[1] <= a9[2])
        {
          goto LABEL_16;
        }

        v40 = v27;
        v41.i64[0] = a9;
        v29 = a5;
        v30 = a7;
        v31 = v13;
      }
    }

    else
    {
      v40 = v27;
      v41.i64[0] = a9;
      v29 = a5;
      v30 = a7;
      v31 = v13;
    }
  }

  else
  {
    v40 = v27;
    v41.i64[0] = a9;
    v29 = a5;
    v30 = a7;
    v31 = v13;
  }

  fig_log_get_emitter();
  v33 = FigSignalErrorAtGM();
  v13 = v31;
  a7 = v30;
  a5 = v29;
  v24 = v42;
  v23 = v41.i64[0];
  v27 = v40;
  if (v33)
  {
    v20 = v33;
    goto LABEL_21;
  }

LABEL_16:
  *v19 = v15;
  v34 = v44;
  *(v19 + 4) = v45;
  *(v19 + 20) = v27;
  *(v19 + 36) = v34;
  *(v19 + 5) = v43;
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
  dispatch_apply_f(v15, global_queue, v19, vt_Copy_BGRA_TRC_Mat_TRC_444vf_GCD);
  if (!v15)
  {
    return 0;
  }

  v36 = (v19 + 160);
  v37 = v15;
  while (1)
  {
    v38 = *v36++;
    v20 = v38;
    if (v38)
    {
      break;
    }

    if (!--v37)
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

unsigned __int8 *vt_Copy_BGRA_TRC_Mat_TRC_444vf_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, float a5, float a6, float a7, float a8, float a9)
{
  v12 = *result;
  v13 = *(result + 13);
  v14 = v13 * a2 / v12;
  v15 = (v13 + v13 * a2) / v12 - v14;
  if (v15 >= 1)
  {
    v16 = 0;
    v17 = *(result + 24);
    v18 = *(result + 19);
    v19 = **(result + 8);
    v20 = *(result + 16);
    v21 = *(result + 17);
    v22 = *v21;
    v23 = v21[1];
    v24 = v21[2];
    v25 = 8191.0 / *(v18 + 128);
    LOWORD(a5) = *(v18 + 144);
    v26 = LODWORD(a5);
    LOWORD(a6) = *(v18 + 146);
    v27 = LODWORD(a6);
    LOWORD(a7) = *(v18 + 148);
    v28 = LODWORD(a7);
    LOWORD(a8) = *(v18 + 150);
    v29 = LODWORD(a8);
    LOWORD(a9) = *(v18 + 152);
    v30 = LODWORD(a9);
    v31 = *(v18 + 36);
    v32 = *(v18 + 40);
    v33 = *(v18 + 44);
    v34 = *(v18 + 48);
    v35 = *(v18 + 52);
    v36 = *(v18 + 56);
    v37 = *(v18 + 60);
    v38 = *(v18 + 64);
    v39 = *(v18 + 68);
    v40 = *(v18 + 72);
    v41 = *(v18 + 76);
    v42 = *(v18 + 80);
    v43 = *(v18 + 84);
    v44 = *(v18 + 88);
    v45 = *(v18 + 92);
    v46 = *(v18 + 96);
    v48 = *(v18 + 100);
    v47 = *(v18 + 104);
    v49 = v18 + 164;
    v50 = v18 + 16548;
    v51 = *(result + 14);
    v52 = v14 + *(result + 15);
    v53 = *(result + 28) * a2 / v12 + *(result + 44);
    v54 = *(v18 + 157);
    v55 = *(v18 + 156);
    v56 = *(v18 + 155);
    v57 = *(v18 + 154);
    v58 = v20[2];
    if (v58)
    {
      v59 = (v58 + v24 * v52 + v51);
    }

    else
    {
      v59 = 0;
    }

    v61 = *v20;
    v60 = v20[1];
    v62 = (v60 + v23 * v52 + v51);
    if (!v60)
    {
      v62 = 0;
    }

    v63 = (v61 + v22 * v52 + v51);
    v64 = **(result + 7) + v53 * v19 + 4 * *(result + 36);
    do
    {
      if (v17 >= 1)
      {
        v65 = v17;
        v66 = v64;
        v67 = v59;
        v68 = v62;
        v69 = v63;
        do
        {
          LOBYTE(_S10) = *(v66 + v57);
          LOBYTE(_S11) = *(v66 + v56);
          LOBYTE(_S12) = *(v66 + v55);
          v70 = llroundf(fminf(fmaxf(v25 * LODWORD(_S10), 0.0), 8191.0));
          _S10 = v25 * LODWORD(_S12);
          _H12 = *(v49 + 2 * v70);
          __asm { FCVT            S12, H12 }

          _H11 = *(v49 + 2 * llroundf(fminf(fmaxf(v25 * LODWORD(_S11), 0.0), 8191.0)));
          __asm { FCVT            S11, H11 }

          LOWORD(_S10) = *(v49 + 2 * llroundf(fminf(fmaxf(_S10, 0.0), 8191.0)));
          __asm { FCVT            S10, H10 }

          v81 = ((v41 * _S11) + (_S12 * v40)) + (_S10 * v42);
          v82 = ((v44 * _S11) + (_S12 * v43)) + (_S10 * v45);
          _S12 = ((v48 * _S11) + (_S12 * v46)) + (_S10 * v47);
          LOWORD(_S10) = *(v50 + 2 * llroundf(fminf(fmaxf(v81, 0.0), 8191.0)));
          __asm { FCVT            S10, H10 }

          LOWORD(_S11) = *(v50 + 2 * llroundf(fminf(fmaxf(v82, 0.0), 8191.0)));
          __asm { FCVT            S11, H11 }

          LOWORD(_S12) = *(v50 + 2 * llroundf(fminf(fmaxf(_S12, 0.0), 8191.0)));
          __asm { FCVT            S12, H12 }

          v84 = (((v32 * _S11) + (v31 * _S10)) + (v33 * _S12)) + v26;
          v85 = v28;
          if (v84 <= v28)
          {
            v85 = (((v32 * _S11) + (v31 * _S10)) + (v33 * _S12)) + v26;
            if (v84 < v26)
            {
              v85 = v26;
            }
          }

          v86 = *(v66 + v54);
          *v69++ = llroundf(v85);
          if (v68)
          {
            v87 = ((v27 + (_S10 * v34)) + (_S11 * v35)) + (_S12 * v36);
            v88 = v30;
            if (v87 <= v30)
            {
              v88 = ((v27 + (_S10 * v34)) + (_S11 * v35)) + (_S12 * v36);
              if (v87 < v29)
              {
                v88 = v29;
              }
            }

            _S10 = ((v27 + (_S10 * v37)) + (_S11 * v38)) + (_S12 * v39);
            *v68 = llroundf(v88);
            _S11 = v30;
            if (_S10 <= v30)
            {
              _S11 = _S10;
              if (_S10 < v29)
              {
                _S11 = v29;
              }
            }

            v68[1] = llroundf(_S11);
            v68 += 2;
          }

          if (v67)
          {
            *v67++ = v86;
          }

          v66 += 4;
          --v65;
        }

        while (v65);
      }

      v64 += v19;
      v63 += v22;
      v62 += v23;
      v59 += v24;
      ++v16;
    }

    while (v16 != v15);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_BGRA_rgb_444vf_neon_fp16(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v13 = a3;
  v46 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v44 = a2[2];
  v45 = v16;
  v18 = *a6;
  v40 = a6[1];
  v41 = v17;
  v42 = a6[2];
  v43 = v18;
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
    v19 = &v40.i8[-v21];
    bzero(&v40 - v21, v22);
  }

  v23 = a9;
  v24 = v42;
  v25 = vbslq_s8(vcgtq_s64(vaddq_s64(v44, v41), v45), vsubq_s64(v45, v44), v41);
  v26 = vbslq_s8(vcgtq_s64(vaddq_s64(v42, v40), v43), vsubq_s64(v43, v42), v40);
  v27 = vbslq_s8(vcgtq_s64(v26, v25), v25, v26);
  v25.i64[0] = v27.i64[0];
  v25.i64[1] = -1;
  v28 = vaddq_s64(v44, v25);
  if ((*a4 * (v28.i64[1] + v27.i64[1]) + 4 * v28.i64[0]) <= *a5)
  {
    v32 = vaddq_s64((*&v42 + __PAIR128__(-1, 0)), v27);
    if (v32.i64[0] + *a8 * v32.i64[1] <= *a9)
    {
      if (*(a7 + 8) && (a8[1] * v32.i64[1] + 2 * v32.i64[0]) > a9[1])
      {
        v40 = v27;
        v41.i64[0] = a9;
        v29 = a5;
        v30 = a7;
        v31 = v13;
      }

      else
      {
        if (!*(a7 + 16) || v32.i64[0] + a8[2] * v32.i64[1] <= a9[2])
        {
          goto LABEL_16;
        }

        v40 = v27;
        v41.i64[0] = a9;
        v29 = a5;
        v30 = a7;
        v31 = v13;
      }
    }

    else
    {
      v40 = v27;
      v41.i64[0] = a9;
      v29 = a5;
      v30 = a7;
      v31 = v13;
    }
  }

  else
  {
    v40 = v27;
    v41.i64[0] = a9;
    v29 = a5;
    v30 = a7;
    v31 = v13;
  }

  fig_log_get_emitter();
  v33 = FigSignalErrorAtGM();
  v13 = v31;
  a7 = v30;
  a5 = v29;
  v24 = v42;
  v23 = v41.i64[0];
  v27 = v40;
  if (v33)
  {
    v20 = v33;
    goto LABEL_21;
  }

LABEL_16:
  *v19 = v15;
  v34 = v44;
  *(v19 + 4) = v45;
  *(v19 + 20) = v27;
  *(v19 + 36) = v34;
  *(v19 + 5) = v43;
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
  dispatch_apply_f(v15, global_queue, v19, vt_Copy_BGRA_rgb_444vf_neon_fp16_GCD);
  if (!v15)
  {
    return 0;
  }

  v36 = (v19 + 160);
  v37 = v15;
  while (1)
  {
    v38 = *v36++;
    v20 = v38;
    if (v38)
    {
      break;
    }

    if (!--v37)
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

unsigned __int8 *vt_Copy_BGRA_rgb_444vf_neon_fp16_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, double a5, double a6, int16x4_t _D4)
{
  v7 = 0;
  v107 = *(result + 36);
  v8 = *result;
  v9 = *(result + 14);
  v10 = *(result + 12);
  v11 = *(result + 13);
  v12 = *(result + 19);
  v14 = *(result + 16);
  v13 = *(result + 17);
  v15 = v11 * a2 / v8;
  v16 = v15 + *(result + 15);
  v17 = **(result + 8);
  v18 = v11 + v11 * a2;
  v105 = v17 * (*(result + 28) * a2 / v8 + *(result + 44));
  v106 = **(result + 7);
  v19 = *v13;
  v20 = v13[1];
  v21 = v13[2];
  v22 = *v14;
  v23 = v14[1];
  v24 = v14[2];
  v25 = *(v12 + 128);
  v26 = *(v12 + 136);
  v122 = *(v12 + 154);
  v27 = *(v12 + 144);
  v28 = *(v12 + 146);
  v29 = *(v12 + 148);
  v30 = *(v12 + 150);
  v31 = *(v12 + 152);
  _S0 = *(v12 + 36);
  _S1 = *(v12 + 40);
  _S2 = *(v12 + 44);
  v117 = *(v12 + 52);
  v118 = *(v12 + 48);
  v35.i32[0] = *(v12 + 64);
  v115 = *(v12 + 60);
  v116 = *(v12 + 56);
  v113 = *(v12 + 68);
  v114 = *v35.i32;
  v120 = 0u;
  *v121[0].i8 = 0u;
  v36 = v18 / v8;
  do
  {
    v37 = 0;
    v38 = *(&v122 + v7);
    v39 = v121[v7 - 2];
    do
    {
      v119 = v39;
      *(&v119 | v37 & 7) = v38 + 4 * v37;
      v39 = v119;
      ++v37;
    }

    while (v37 != 8);
    v121[v7++ - 2] = v119;
  }

  while (v7 != 4);
  v40 = v36 - v15;
  if (v36 - v15 >= 1)
  {
    v41 = 0;
    v42 = v27;
    v43 = v28;
    _S20 = v26 / v25;
    v45 = v30;
    v46 = v31;
    __asm
    {
      FCVT            H8, S0
      FCVT            H9, S1
      FCVT            H10, S2
    }

    _S3 = v118;
    __asm { FCVT            H3, S3 }

    v112 = *&_S3;
    _S3 = v117;
    __asm { FCVT            H3, S3 }

    v111 = *&_S3;
    _S3 = v116;
    __asm { FCVT            H3, S3 }

    v110 = *&_S3;
    _S3 = v115;
    __asm { FCVT            H3, S3 }

    v109 = *&_S3;
    _S3 = v113;
    _D4.i32[0] = v35.i32[0];
    __asm
    {
      FCVT            H7, S4
      FCVT            H3, S3
    }

    *_D4.i16 = v27;
    v61 = vdupq_lane_s16(_D4, 0);
    *_D4.i16 = v28;
    v62 = vdupq_lane_s16(_D4, 0);
    *_D4.i16 = v29;
    v63 = vdupq_lane_s16(_D4, 0);
    *_D4.i16 = v30;
    v64 = vdupq_lane_s16(_D4, 0);
    *_D4.i16 = v31;
    v65 = vdupq_lane_s16(_D4, 0);
    if (v24)
    {
      v66 = (v24 + v21 * v16 + v9);
    }

    else
    {
      v66 = 0;
    }

    if (v23)
    {
      v67 = (v23 + v20 * v16 + v9);
    }

    else
    {
      v67 = 0;
    }

    v68 = (v22 + v19 * v16 + v9);
    v69 = v106 + v105 + 4 * v107;
    __asm { FCVT            H4, S20 }

    do
    {
      if (v10 < 8)
      {
        v92 = 0;
        v75 = v67;
        v74 = v66;
        v73 = v68;
        v72 = v69;
      }

      else
      {
        v71 = 0;
        v72 = v69;
        v73 = v68;
        v74 = v66;
        v75 = v67;
        do
        {
          v76 = v121[1];
          *&v80 = *v72;
          v77 = v72[1];
          *&v78 = v72[2];
          v79 = v72[3];
          v72 += 4;
          *(&v80 + 1) = v77;
          *(&v78 + 1) = v79;
          v81 = v78;
          v82 = vqtbl2_s8(*&v80, *&v120);
          v83 = vqtbl2_s8(*&v80, *(&v120 + 8));
          v84 = vqtbl2_s8(*&v80, v121[0]);
          v85 = vzip1_s8(v82, 0);
          v35.u64[1] = vzip2_s8(v82, 0);
          *v86.i8 = vzip1_s8(v83, 0);
          v86.u64[1] = vzip2_s8(v83, 0);
          v87 = vcvtq_f16_u16(v86);
          *v86.i8 = vzip1_s8(v84, 0);
          v86.u64[1] = vzip2_s8(v84, 0);
          v88 = vcvtq_f16_u16(v86);
          v89 = vmulq_n_f16(vcvtq_f16_u16(v35), _H4);
          v90 = vmulq_n_f16(v87, _H4);
          v91 = vmulq_n_f16(v88, _H4);
          *v35.i8 = vmovn_s16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v61, v89, _H8), v90, _H9), v91, _H10), v61), v63)));
          *v73++ = v35.i64[0];
          if (v75)
          {
            v123.val[0] = vmovn_s16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v62, v89, v112), v90, v111), v91, v110), v64), v65), v64), v65)));
            v35 = vcvtq_u16_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v62, v89, v109), v90, _H7), v91, _H3));
            v123.val[1] = vmovn_s16(v35);
            vst2_s8(v75, v123);
            v75 += 16;
          }

          if (v74)
          {
            *v35.i8 = vbic_s8(vqtbl2_s8(*&v80, v76), vceqd_s64(v74, 0));
            *v74++ = v35.i64[0];
          }

          v71 += 8;
        }

        while (v71 < v10 - 7);
        v92 = v10 & 0x7FFFFFF8;
      }

      v93 = v10 - v92;
      if (v10 > v92)
      {
        do
        {
          v35.i8[0] = *(v72 + v122);
          *&v94 = v35.u32[0];
          v95 = _S20 * *&v94;
          LOBYTE(v94) = *(v72 + BYTE1(v122));
          *&v96 = v94;
          v97 = _S20 * *&v96;
          LOBYTE(v96) = *(v72 + BYTE2(v122));
          v98 = _S20 * v96;
          *v35.i32 = ((_S1 * v97) + (_S0 * v95)) + (_S2 * v98);
          v99 = v29;
          if ((*v35.i32 + v42) <= v29)
          {
            v99 = *v35.i32 + v42;
            if ((*v35.i32 + v42) < v42)
            {
              v99 = v27;
            }
          }

          v100 = *(v72 + HIBYTE(v122));
          *v73 = llroundf(v99);
          v73 = (v73 + 1);
          if (v75)
          {
            v101 = ((v43 + (v95 * v118)) + (v97 * v117)) + (v98 * v116);
            v102 = v46;
            if (v101 <= v46)
            {
              v102 = ((v43 + (v95 * v118)) + (v97 * v117)) + (v98 * v116);
              if (v101 < v45)
              {
                v102 = v30;
              }
            }

            *v35.i32 = (v43 + (v95 * v115)) + (v97 * v114);
            v103 = *v35.i32 + (v98 * v113);
            *v75 = llroundf(v102);
            v104 = v46;
            if (v103 <= v46)
            {
              v104 = *v35.i32 + (v98 * v113);
              if (v103 < v45)
              {
                v104 = v30;
              }
            }

            v75[1] = llroundf(v104);
            v75 += 2;
          }

          if (v74)
          {
            *v74 = v100;
            v74 = (v74 + 1);
          }

          v72 = (v72 + 4);
          --v93;
        }

        while (v93);
      }

      v69 += v17;
      v68 = (v68 + v19);
      v67 += v20;
      v66 = (v66 + v21);
      ++v41;
    }

    while (v41 != v40);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_BGRA_rgb_444vf(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v13 = a3;
  v46 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v44 = a2[2];
  v45 = v16;
  v18 = *a6;
  v40 = a6[1];
  v41 = v17;
  v42 = a6[2];
  v43 = v18;
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
    v19 = &v40.i8[-v21];
    bzero(&v40 - v21, v22);
  }

  v23 = a9;
  v24 = v42;
  v25 = vbslq_s8(vcgtq_s64(vaddq_s64(v44, v41), v45), vsubq_s64(v45, v44), v41);
  v26 = vbslq_s8(vcgtq_s64(vaddq_s64(v42, v40), v43), vsubq_s64(v43, v42), v40);
  v27 = vbslq_s8(vcgtq_s64(v26, v25), v25, v26);
  v25.i64[0] = v27.i64[0];
  v25.i64[1] = -1;
  v28 = vaddq_s64(v44, v25);
  if ((*a4 * (v28.i64[1] + v27.i64[1]) + 4 * v28.i64[0]) <= *a5)
  {
    v32 = vaddq_s64((*&v42 + __PAIR128__(-1, 0)), v27);
    if (v32.i64[0] + *a8 * v32.i64[1] <= *a9)
    {
      if (*(a7 + 8) && (a8[1] * v32.i64[1] + 2 * v32.i64[0]) > a9[1])
      {
        v40 = v27;
        v41.i64[0] = a9;
        v29 = a5;
        v30 = a7;
        v31 = v13;
      }

      else
      {
        if (!*(a7 + 16) || v32.i64[0] + a8[2] * v32.i64[1] <= a9[2])
        {
          goto LABEL_16;
        }

        v40 = v27;
        v41.i64[0] = a9;
        v29 = a5;
        v30 = a7;
        v31 = v13;
      }
    }

    else
    {
      v40 = v27;
      v41.i64[0] = a9;
      v29 = a5;
      v30 = a7;
      v31 = v13;
    }
  }

  else
  {
    v40 = v27;
    v41.i64[0] = a9;
    v29 = a5;
    v30 = a7;
    v31 = v13;
  }

  fig_log_get_emitter();
  v33 = FigSignalErrorAtGM();
  v13 = v31;
  a7 = v30;
  a5 = v29;
  v24 = v42;
  v23 = v41.i64[0];
  v27 = v40;
  if (v33)
  {
    v20 = v33;
    goto LABEL_21;
  }

LABEL_16:
  *v19 = v15;
  v34 = v44;
  *(v19 + 4) = v45;
  *(v19 + 20) = v27;
  *(v19 + 36) = v34;
  *(v19 + 5) = v43;
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
  dispatch_apply_f(v15, global_queue, v19, vt_Copy_BGRA_rgb_444vf_GCD);
  if (!v15)
  {
    return 0;
  }

  v36 = (v19 + 160);
  v37 = v15;
  while (1)
  {
    v38 = *v36++;
    v20 = v38;
    if (v38)
    {
      break;
    }

    if (!--v37)
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

unsigned __int8 *vt_Copy_BGRA_rgb_444vf_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, float a5, float a6, float a7, float a8)
{
  v11 = *result;
  v12 = *(result + 13);
  v13 = v12 * a2 / v11;
  v14 = (v12 + v12 * a2) / v11 - v13;
  if (v14 >= 1)
  {
    v15 = 0;
    v16 = *(result + 24);
    v17 = *(result + 19);
    v18 = **(result + 8);
    v19 = *(result + 16);
    v20 = *(result + 17);
    v21 = *v20;
    v22 = v20[1];
    v23 = v20[2];
    *&v24 = *(v17 + 136);
    v25 = *&v24 / *(v17 + 128);
    LOWORD(v24) = *(v17 + 144);
    v26 = v24;
    LOWORD(a5) = *(v17 + 146);
    v27 = LODWORD(a5);
    LOWORD(a6) = *(v17 + 148);
    v28 = LODWORD(a6);
    LOWORD(a7) = *(v17 + 150);
    v29 = LODWORD(a7);
    LOWORD(a8) = *(v17 + 152);
    v30 = LODWORD(a8);
    v31 = *(v17 + 36);
    v32 = *(v17 + 40);
    v33 = *(v17 + 44);
    v34 = *(v17 + 48);
    v35 = *(v17 + 52);
    v36 = *(v17 + 56);
    v37 = *(v17 + 60);
    v38 = *(v17 + 64);
    v39 = *(v17 + 68);
    v40 = *(result + 14);
    v41 = v13 + *(result + 15);
    v42 = *(result + 28) * a2 / v11 + *(result + 44);
    v43 = *(v17 + 157);
    v44 = *(v17 + 156);
    v45 = *(v17 + 155);
    v46 = *(v17 + 154);
    v47 = v19[2];
    if (v47)
    {
      v48 = (v47 + v23 * v41 + v40);
    }

    else
    {
      v48 = 0;
    }

    v50 = *v19;
    v49 = v19[1];
    v51 = (v49 + v22 * v41 + v40);
    if (!v49)
    {
      v51 = 0;
    }

    v52 = (v50 + v21 * v41 + v40);
    v53 = **(result + 7) + v42 * v18 + 4 * *(result + 36);
    do
    {
      if (v16 >= 1)
      {
        v54 = v16;
        v55 = v53;
        v56 = v48;
        v57 = v51;
        v58 = v52;
        do
        {
          LOBYTE(v8) = *(v55 + v46);
          v8 = v25 * LODWORD(v8);
          LOBYTE(v9) = *(v55 + v45);
          v9 = v25 * LODWORD(v9);
          LOBYTE(v10) = *(v55 + v44);
          v10 = v25 * LODWORD(v10);
          v59 = (((v32 * v9) + (v31 * v8)) + (v33 * v10)) + v26;
          v60 = v28;
          if (v59 <= v28)
          {
            v60 = (((v32 * v9) + (v31 * v8)) + (v33 * v10)) + v26;
            if (v59 < v26)
            {
              v60 = v26;
            }
          }

          v61 = *(v55 + v43);
          *v58++ = llroundf(v60);
          if (v57)
          {
            v62 = ((v27 + (v8 * v34)) + (v9 * v35)) + (v10 * v36);
            v63 = v30;
            if (v62 <= v30)
            {
              v63 = ((v27 + (v8 * v34)) + (v9 * v35)) + (v10 * v36);
              if (v62 < v29)
              {
                v63 = v29;
              }
            }

            v8 = ((v27 + (v8 * v37)) + (v9 * v38)) + (v10 * v39);
            *v57 = llroundf(v63);
            v9 = v30;
            if (v8 <= v30)
            {
              v9 = v8;
              if (v8 < v29)
              {
                v9 = v29;
              }
            }

            v57[1] = llroundf(v9);
            v57 += 2;
          }

          if (v56)
          {
            *v56++ = v61;
          }

          v55 += 4;
          --v54;
        }

        while (v54);
      }

      v53 += v18;
      v52 += v21;
      v51 += v22;
      v48 += v23;
      ++v15;
    }

    while (v15 != v14);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_BGRA_TRC_Tone_Mat_TRC_xf444_neon_fp16(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
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
  if ((*a4 * (v29.i64[1] + v27.i64[1]) + 4 * v29.i64[0]) <= *a5)
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
  dispatch_apply_f(v15, global_queue, v19, vt_Copy_BGRA_TRC_Tone_Mat_TRC_xf444_neon_fp16_GCD);
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

unsigned __int8 *vt_Copy_BGRA_TRC_Tone_Mat_TRC_xf444_neon_fp16_GCD(unsigned __int8 *result, uint64_t a2)
{
  v2 = 0;
  v134 = *(result + 36);
  v3 = *result;
  v4 = *(result + 28) * a2 / v3 + *(result + 44);
  v5 = *(result + 14);
  v6 = *(result + 15);
  v8 = *(result + 12);
  v7 = *(result + 13);
  v9 = *(result + 19);
  v11 = *(result + 16);
  v10 = *(result + 17);
  v12 = **(result + 8);
  v132 = **(result + 7);
  v13 = *v10;
  v14 = v10[1];
  v15 = v10[2];
  v16 = v11[1];
  v131 = *v11;
  v17 = v11[2];
  v18 = *(v9 + 128);
  v179 = *(v9 + 154);
  v19 = *(v9 + 144);
  v20 = *(v9 + 132);
  v21 = v7 * a2 / v3;
  v22 = v21 + v6;
  v23 = *(v9 + 146);
  v130 = v12 * v4;
  v24 = v16 + v14 * (v21 + v6);
  v25 = v17 + v15 * (v21 + v6);
  v26 = *(v9 + 148);
  v27 = *(v9 + 150);
  v28 = *(v9 + 152);
  _S7 = *(v9 + 36);
  _S16 = *(v9 + 40);
  _S26 = *(v9 + 44);
  _Q2.i32[0] = *(v9 + 52);
  v148 = *_Q2.i32;
  v149 = *(v9 + 48);
  v147 = *(v9 + 56);
  _S27 = *(v9 + 60);
  _S28 = *(v9 + 64);
  _S29 = *(v9 + 68);
  v175 = *(v9 + 72);
  v174 = *(v9 + 76);
  v173 = *(v9 + 80);
  v172 = *(v9 + 84);
  v171 = *(v9 + 88);
  v170 = *(v9 + 92);
  v169 = *(v9 + 96);
  v168 = *(v9 + 100);
  v167 = *(v9 + 104);
  v166 = *(v9 + 108);
  v165 = *(v9 + 112);
  _Q1.i32[0] = *(v9 + 116);
  v164 = *_Q1.i32;
  v163 = *(v9 + 120);
  v177 = 0u;
  v178 = 0u;
  v37 = (v7 + v7 * a2) / v3;
  do
  {
    v38 = 0;
    v39 = *(&v179 + v2);
    _D0 = *(&v177 + 8 * v2);
    do
    {
      v176 = _D0;
      *(&v176 | v38 & 7) = v39 + 4 * v38;
      _D0 = v176;
      ++v38;
    }

    while (v38 != 8);
    *(&v177 + v2++) = v176;
  }

  while (v2 != 4);
  v41 = v37 - v21;
  if (v37 - v21 >= 1)
  {
    v42 = 0;
    _S31 = 8191.0 / v18;
    v44 = v19;
    v45 = v23;
    v150 = v27;
    v46 = v28;
    __asm { FCVT            H0, S7 }

    v162 = *_D0.i16;
    __asm { FCVT            H0, S16 }

    v161 = *_D0.i16;
    __asm { FCVT            H0, S26 }

    v160 = *_D0.i16;
    *_D0.i32 = v149;
    __asm { FCVT            H0, S0 }

    v146 = *_D0.i16;
    _D0.i32[0] = _Q2.i32[0];
    __asm { FCVT            H0, S0 }

    v145 = *_D0.i16;
    v51 = v9 + 16548;
    v52 = v9 + 32932;
    v53 = v9 + 164;
    *_D0.i32 = v147;
    __asm { FCVT            H0, S0 }

    v144 = *_D0.i16;
    __asm { FCVT            H0, S27 }

    v143 = *_D0.i16;
    __asm { FCVT            H0, S28 }

    v142 = *_D0.i16;
    __asm { FCVT            H0, S29 }

    v141 = *_D0.i16;
    *_D0.i32 = v166;
    __asm { FCVT            H0, S0 }

    v159 = *_D0.i16;
    *_D0.i32 = v165;
    __asm { FCVT            H0, S0 }

    v158 = *_D0.i16;
    _D0.i32[0] = _Q1.i32[0];
    __asm { FCVT            H0, S0 }

    v157 = *_D0.i16;
    *_D0.i32 = v163;
    __asm { FCVT            H0, S0 }

    v156 = *_D0.i16;
    *_D0.i32 = v175;
    __asm { FCVT            H0, S0 }

    v155 = *_D0.i16;
    *_D0.i32 = v174;
    __asm { FCVT            H0, S0 }

    v154 = *_D0.i16;
    *_D0.i32 = v173;
    __asm { FCVT            H0, S0 }

    v153 = *_D0.i16;
    *_D0.i32 = v172;
    __asm { FCVT            H0, S0 }

    v152 = *_D0.i16;
    *_D0.i32 = v171;
    __asm { FCVT            H0, S0 }

    v151 = *_D0.i16;
    *_D0.i32 = v170;
    __asm { FCVT            H13, S0 }

    *_D0.i32 = v169;
    __asm { FCVT            H14, S0 }

    *_D0.i16 = v19;
    v56 = vdupq_lane_s16(_D0, 0);
    *_D0.i16 = v23;
    v57 = vdupq_lane_s16(_D0, 0);
    *_D0.i16 = v26;
    v58 = vdupq_lane_s16(_D0, 0);
    *_D0.i16 = v27;
    v59 = vdupq_lane_s16(_D0, 0);
    *_D0.i16 = v28;
    v60 = vdupq_lane_s16(_D0, 0);
    v61 = 16 - v20;
    if (v20 >= 0x11)
    {
      v61 = 0;
    }

    if (v17)
    {
      v62 = (v25 + 2 * v5);
    }

    else
    {
      v62 = 0;
    }

    if (v16)
    {
      v63 = (v24 + 2 * v5);
    }

    else
    {
      v63 = 0;
    }

    v64 = v131 + v13 * v22 + 2 * v5;
    v65 = v132 + v130 + 4 * v134;
    v66 = v61;
    _S0 = v168;
    __asm { FCVT            H15, S0 }

    v69 = vdupq_n_s16(v61);
    *_Q0.i32 = v167;
    __asm { FCVT            H4, S0 }

    v72.i64[0] = 0x9000900090009000;
    v72.i64[1] = 0x9000900090009000;
    __asm { FCVT            H5, S31 }

    v139 = _S16;
    v140 = _S7;
    v137 = _S27;
    v138 = _S26;
    v135 = _S29;
    v136 = _S28;
    do
    {
      if (v8 < 8)
      {
        v107 = 0;
        v78 = v64;
        v77 = v63;
        v76 = v62;
        v75 = v65;
      }

      else
      {
        v74 = 0;
        v75 = v65;
        v76 = v62;
        v77 = v63;
        v78 = v64;
        do
        {
          v79 = *(&v178 + 8);
          _Q0.i64[0] = *v75;
          v80 = v75[1];
          _Q2.i64[0] = v75[2];
          v81 = v75[3];
          v75 += 4;
          _Q0.i64[1] = v80;
          _Q2.i64[1] = v81;
          _Q1 = _Q2;
          v82 = vqtbl2_s8(*(&_Q1 - 1), *&v177);
          v83 = vqtbl2_s8(*(&_Q1 - 1), *(&v177 + 8));
          *v84.i8 = vqtbl2_s8(*(&_Q1 - 1), *&v178);
          *v85.i8 = vzip1_s8(v82, 0);
          v85.u64[1] = vzip2_s8(v82, 0);
          v86 = vcvtq_f16_u16(v85);
          *v85.i8 = vzip1_s8(v83, 0);
          v85.u64[1] = vzip2_s8(v83, 0);
          *v87.i8 = vzip1_s8(*v84.i8, 0);
          v87.u64[1] = vzip2_s8(*v84.i8, 0);
          v88 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmulq_n_f16(v86, _H5), 0), v72));
          v84.i16[0] = *(v53 + 2 * v88.u16[0]);
          v84.i16[1] = *(v53 + 2 * v88.u16[1]);
          v84.i16[2] = *(v53 + 2 * v88.u16[2]);
          v84.i16[3] = *(v53 + 2 * v88.u16[3]);
          v84.i16[4] = *(v53 + 2 * v88.u16[4]);
          v84.i16[5] = *(v53 + 2 * v88.u16[5]);
          v84.i16[6] = *(v53 + 2 * v88.u16[6]);
          v84.i16[7] = *(v53 + 2 * v88.u16[7]);
          v89 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmulq_n_f16(vcvtq_f16_u16(v85), _H5), 0), v72));
          v85.i16[0] = *(v53 + 2 * v89.u16[0]);
          v85.i16[1] = *(v53 + 2 * v89.u16[1]);
          v85.i16[2] = *(v53 + 2 * v89.u16[2]);
          v85.i16[3] = *(v53 + 2 * v89.u16[3]);
          v85.i16[4] = *(v53 + 2 * v89.u16[4]);
          v85.i16[5] = *(v53 + 2 * v89.u16[5]);
          v85.i16[6] = *(v53 + 2 * v89.u16[6]);
          v85.i16[7] = *(v53 + 2 * v89.u16[7]);
          v90 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmulq_n_f16(vcvtq_f16_u16(v87), _H5), 0), v72));
          v87.i16[0] = *(v53 + 2 * v90.u16[0]);
          v87.i16[1] = *(v53 + 2 * v90.u16[1]);
          v87.i16[2] = *(v53 + 2 * v90.u16[2]);
          v87.i16[3] = *(v53 + 2 * v90.u16[3]);
          v87.i16[4] = *(v53 + 2 * v90.u16[4]);
          v87.i16[5] = *(v53 + 2 * v90.u16[5]);
          v87.i16[6] = *(v53 + 2 * v90.u16[6]);
          v87.i16[7] = *(v53 + 2 * v90.u16[7]);
          v91 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v84, v159), v85, v158), v87, v157), vmaxq_f16(vmaxq_f16(v84, v85), v87), v156), 0), v72));
          v92.i16[0] = *(v51 + 2 * v91.u16[0]);
          v92.i16[1] = *(v51 + 2 * v91.u16[1]);
          v92.i16[2] = *(v51 + 2 * v91.u16[2]);
          v92.i16[3] = *(v51 + 2 * v91.u16[3]);
          v92.i16[4] = *(v51 + 2 * v91.u16[4]);
          v92.i16[5] = *(v51 + 2 * v91.u16[5]);
          v92.i16[6] = *(v51 + 2 * v91.u16[6]);
          v92.i16[7] = *(v51 + 2 * v91.u16[7]);
          v93 = vmulq_f16(v84, v92);
          v94 = vmulq_f16(v85, v92);
          v95 = vmulq_f16(v87, v92);
          v96 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v93, v152), v94, v151), v95, _H13);
          v97 = vmulq_n_f16(v95, _H4);
          v98 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v93, v155), v94, v154), v95, v153), 0), v72));
          v99.i16[0] = *(v52 + 2 * v98.u16[0]);
          v99.i16[1] = *(v52 + 2 * v98.u16[1]);
          v99.i16[2] = *(v52 + 2 * v98.u16[2]);
          v99.i16[3] = *(v52 + 2 * v98.u16[3]);
          v99.i16[4] = *(v52 + 2 * v98.u16[4]);
          v99.i16[5] = *(v52 + 2 * v98.u16[5]);
          v99.i16[6] = *(v52 + 2 * v98.u16[6]);
          v99.i16[7] = *(v52 + 2 * v98.u16[7]);
          v100 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v96, 0), v72));
          v101.i16[0] = *(v52 + 2 * v100.u16[0]);
          v101.i16[1] = *(v52 + 2 * v100.u16[1]);
          v101.i16[2] = *(v52 + 2 * v100.u16[2]);
          v101.i16[3] = *(v52 + 2 * v100.u16[3]);
          v101.i16[4] = *(v52 + 2 * v100.u16[4]);
          v101.i16[5] = *(v52 + 2 * v100.u16[5]);
          v101.i16[6] = *(v52 + 2 * v100.u16[6]);
          v101.i16[7] = *(v52 + 2 * v100.u16[7]);
          v102 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(v97, v94, _H15), v93, _H14), 0), v72));
          v103.i16[0] = *(v52 + 2 * v102.u16[0]);
          v103.i16[1] = *(v52 + 2 * v102.u16[1]);
          v103.i16[2] = *(v52 + 2 * v102.u16[2]);
          v103.i16[3] = *(v52 + 2 * v102.u16[3]);
          v103.i16[4] = *(v52 + 2 * v102.u16[4]);
          v103.i16[5] = *(v52 + 2 * v102.u16[5]);
          v103.i16[6] = *(v52 + 2 * v102.u16[6]);
          v103.i16[7] = *(v52 + 2 * v102.u16[7]);
          *v78++ = vshlq_u16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v56, v99, v162), v101, v161), v103, v160), v56), v58)), v69);
          if (v77)
          {
            v104 = vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v57, v99, v143), v101, v142), v103, v141);
            v103 = vshlq_u16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v57, v99, v146), v101, v145), v103, v144), v59), v60), v59), v60)), v69);
            v105 = vshlq_u16(vcvtq_u16_f16(v104), v69);
            vst2q_s16(v77, *v103.i8);
            v77 += 16;
          }

          if (v76)
          {
            v103.i64[0] = 0;
            *_Q0.i8 = vqtbl2_s8(*(&_Q1 - 1), v79);
            _Q1.i64[0] = v76;
            _Q1 = vdupq_lane_s64(vceqq_s64(_Q1, v103).i64[0], 0);
            *_Q2.i8 = vzip1_s8(*_Q0.i8, 0);
            _Q2.u64[1] = vzip2_s8(*_Q0.i8, 0);
            v106.i64[0] = 0x101010101010101;
            v106.i64[1] = 0x101010101010101;
            _Q0 = vbicq_s8(vmulq_s16(_Q2, v106), _Q1);
            *v76++ = _Q0;
          }

          v74 += 8;
        }

        while (v74 < v8 - 7);
        v107 = v8 & 0xFFFFFFF8;
        _S16 = v139;
        _S7 = v140;
        _S27 = v137;
        _S26 = v138;
        _S29 = v135;
        _S28 = v136;
      }

      v108 = v8 - v107;
      if (v8 > v107)
      {
        do
        {
          _Q0.i8[0] = *(v75 + v179);
          _Q1.i8[0] = *(v75 + BYTE1(v179));
          _Q2.i8[0] = *(v75 + BYTE2(v179));
          _H0 = *(v53 + 2 * llroundf(fminf(fmaxf(_S31 * _Q0.u32[0], 0.0), 8191.0)));
          __asm { FCVT            S0, H0 }

          _H1 = *(v53 + 2 * llroundf(fminf(fmaxf(_S31 * _Q1.u32[0], 0.0), 8191.0)));
          __asm { FCVT            S1, H1 }

          _H2 = *(v53 + 2 * llroundf(fminf(fmaxf(_S31 * _Q2.u32[0], 0.0), 8191.0)));
          __asm { FCVT            S2, H2 }

          v115 = (((v165 * _S1) + (v166 * _S0)) + (v164 * _S2)) + (v163 * fmaxf(_S0, fmaxf(_S1, _S2)));
          v116 = 8191.0;
          if (v115 <= 8191.0)
          {
            v116 = v115;
            if (v115 < 0.0)
            {
              v116 = 0.0;
            }
          }

          _H3 = *(v51 + 2 * llroundf(v116));
          __asm { FCVT            S3, H3 }

          _S0 = _S0 * _S3;
          _S1 = _S1 * _S3;
          v121 = _S2 * _S3;
          v122 = ((v174 * _S1) + (_S0 * v175)) + (v121 * v173);
          v123 = ((v171 * _S1) + (_S0 * v172)) + (v121 * v170);
          _S2 = ((v168 * _S1) + (_S0 * v169)) + (v121 * v167);
          LOWORD(_S0) = *(v52 + 2 * llroundf(fminf(fmaxf(v122, 0.0), 8191.0)));
          __asm { FCVT            S0, H0 }

          LOWORD(_S1) = *(v52 + 2 * llroundf(fminf(fmaxf(v123, 0.0), 8191.0)));
          __asm { FCVT            S1, H1 }

          LOWORD(_S2) = *(v52 + 2 * llroundf(fminf(fmaxf(_S2, 0.0), 8191.0)));
          __asm { FCVT            S2, H2 }

          v125 = (((_S16 * *_Q1.i32) + (_S7 * *_Q0.i32)) + (_S26 * *_Q2.i32)) + v44;
          v126 = v26;
          if (v125 <= v26)
          {
            v126 = (((_S16 * *_Q1.i32) + (_S7 * *_Q0.i32)) + (_S26 * *_Q2.i32)) + v44;
            if (v125 < v44)
            {
              v126 = v19;
            }
          }

          v127 = *(v75 + HIBYTE(v179));
          v78->i16[0] = llroundf(v126) << v66;
          v78 = (v78 + 2);
          if (v77)
          {
            v128 = ((v45 + (*_Q0.i32 * v149)) + (*_Q1.i32 * v148)) + (*_Q2.i32 * v147);
            v129 = v46;
            if (v128 <= v46)
            {
              v129 = ((v45 + (*_Q0.i32 * v149)) + (*_Q1.i32 * v148)) + (*_Q2.i32 * v147);
              if (v128 < v150)
              {
                v129 = v27;
              }
            }

            *_Q0.i32 = ((v45 + (*_Q0.i32 * _S27)) + (*_Q1.i32 * _S28)) + (*_Q2.i32 * _S29);
            *v77 = llroundf(v129) << v66;
            *_Q1.i32 = v46;
            if (*_Q0.i32 <= v46)
            {
              _Q1.i32[0] = _Q0.i32[0];
              if (*_Q0.i32 < v150)
              {
                *_Q1.i32 = v27;
              }
            }

            v77[1] = llroundf(*_Q1.i32) << v66;
            v77 += 2;
          }

          if (v76)
          {
            v76->i16[0] = v127 | (v127 << 8);
            v76 = (v76 + 2);
          }

          v75 = (v75 + 4);
          --v108;
        }

        while (v108);
      }

      v65 += v12;
      v64 += v13;
      v63 = (v63 + v14);
      v62 = (v62 + v15);
      ++v42;
    }

    while (v42 != v41);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_BGRA_TRC_Tone_Mat_TRC_xf444(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
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
  if ((*a4 * (v29.i64[1] + v27.i64[1]) + 4 * v29.i64[0]) <= *a5)
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
  dispatch_apply_f(v15, global_queue, v19, vt_Copy_BGRA_TRC_Tone_Mat_TRC_xf444_GCD);
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

unsigned __int8 *vt_Copy_BGRA_TRC_Tone_Mat_TRC_xf444_GCD(unsigned __int8 *result, uint64_t a2)
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
    v11 = *(result + 16);
    v12 = *(result + 17);
    v13 = *v12;
    v14 = v12[1];
    v15 = v12[2];
    *&v16 = *(v9 + 128);
    v17 = 8191.0 / *&v16;
    LOWORD(v16) = *(v9 + 144);
    v18 = v16;
    LOWORD(v16) = *(v9 + 146);
    v19 = v16;
    LOWORD(v16) = *(v9 + 148);
    v20 = v16;
    LOWORD(v16) = *(v9 + 150);
    v21 = v16;
    LOWORD(v16) = *(v9 + 152);
    v22 = v16;
    v23 = *(v9 + 36);
    v24 = *(v9 + 40);
    v26 = *(v9 + 44);
    v25 = *(v9 + 48);
    v97 = *(v9 + 52);
    v98 = v25;
    v27 = *(v9 + 56);
    v28 = *(v9 + 60);
    v96 = v27;
    v29 = *(v9 + 64);
    v30 = *(v9 + 68);
    v31 = *(v9 + 72);
    v32 = *(v9 + 76);
    v33 = *(v9 + 80);
    v34 = *(v9 + 84);
    v35 = *(v9 + 88);
    v36 = *(v9 + 92);
    v37 = *(v9 + 96);
    v38 = *(v9 + 100);
    v39 = *(v9 + 104);
    v40 = *(v9 + 108);
    v41 = v9 + 164;
    v42 = v9 + 16548;
    v43 = v9 + 32932;
    v44 = *(v9 + 112);
    v45 = *(v9 + 116);
    v46 = *(v9 + 120);
    v47 = *(result + 14);
    v48 = v5 + *(result + 15);
    v49 = *(result + 28) * a2 / v3 + *(result + 44);
    v50 = *(v9 + 132);
    if (v50 >= 0x11)
    {
      v51 = 0;
    }

    else
    {
      v51 = 16 - v50;
    }

    v52 = *(v9 + 157);
    v53 = *(v9 + 156);
    v54 = *(v9 + 155);
    v55 = *(v9 + 154);
    v56 = v11[2];
    if (v56)
    {
      v57 = v56 + v15 * v48 + 2 * v47;
    }

    else
    {
      v57 = 0;
    }

    v59 = *v11;
    v58 = v11[1];
    v60 = v58 + v14 * v48 + 2 * v47;
    if (!v58)
    {
      v60 = 0;
    }

    v61 = v59 + v13 * v48 + 2 * v47;
    v62 = **(result + 7) + v49 * v10 + 4 * *(result + 36);
    v63 = v51;
    do
    {
      if (v8 >= 1)
      {
        v64 = v8;
        v65 = v57;
        v66 = v60;
        v67 = v61;
        v68 = v62;
        do
        {
          LOBYTE(v27) = *(v68 + v55);
          LOBYTE(v25) = *(v68 + v54);
          LOBYTE(_S18) = *(v68 + v53);
          _H0 = *(v41 + 2 * llroundf(fminf(fmaxf(v17 * LODWORD(v27), 0.0), 8191.0)));
          v70 = v17 * LODWORD(_S18);
          __asm { FCVT            S18, H0 }

          _H0 = *(v41 + 2 * llroundf(fminf(fmaxf(v17 * LODWORD(v25), 0.0), 8191.0)));
          v77 = llroundf(fminf(fmaxf(v70, 0.0), 8191.0));
          __asm { FCVT            S14, H0 }

          _H0 = *(v41 + 2 * v77);
          __asm { FCVT            S15, H0 }

          v81 = (((v44 * _S14) + (v40 * _S18)) + (v45 * _S15)) + (v46 * fmaxf(_S18, fmaxf(_S14, _S15)));
          v82 = 8191.0;
          if (v81 <= 8191.0)
          {
            v82 = v81;
            if (v81 < 0.0)
            {
              v82 = 0.0;
            }
          }

          _H0 = *(v42 + 2 * llroundf(v82));
          __asm { FCVT            S0, H0 }

          _S6 = _S18 * _S0;
          v86 = _S14 * _S0;
          v87 = _S15 * _S0;
          v88 = ((v32 * v86) + (_S6 * v31)) + (v87 * v33);
          v89 = ((v35 * v86) + (_S6 * v34)) + (v87 * v36);
          _S0 = ((v38 * v86) + (_S6 * v37)) + (v87 * v39);
          LOWORD(_S6) = *(v43 + 2 * llroundf(fminf(fmaxf(v88, 0.0), 8191.0)));
          __asm { FCVT            S14, H6 }

          LOWORD(_S6) = *(v43 + 2 * llroundf(fminf(fmaxf(v89, 0.0), 8191.0)));
          __asm { FCVT            S15, H6 }

          LOWORD(_S0) = *(v43 + 2 * llroundf(fminf(fmaxf(_S0, 0.0), 8191.0)));
          __asm { FCVT            S18, H0 }

          v27 = (((v24 * _S15) + (v23 * _S14)) + (v26 * _S18)) + v18;
          v25 = v20;
          if (v27 <= v20)
          {
            v25 = (((v24 * _S15) + (v23 * _S14)) + (v26 * _S18)) + v18;
            if (v27 < v18)
            {
              v25 = v18;
            }
          }

          v93 = *(v68 + v52);
          *v67++ = llroundf(v25) << v63;
          if (v66)
          {
            v94 = ((v19 + (_S14 * v98)) + (_S15 * v97)) + (_S18 * v96);
            v95 = v22;
            if (v94 <= v22)
            {
              v95 = ((v19 + (_S14 * v98)) + (_S15 * v97)) + (_S18 * v96);
              if (v94 < v21)
              {
                v95 = v21;
              }
            }

            v27 = (v19 + (_S14 * v28)) + (_S15 * v29);
            _S18 = v27 + (_S18 * v30);
            *v66 = llroundf(v95) << v63;
            v25 = v22;
            if (_S18 <= v22)
            {
              v25 = _S18;
              if (_S18 < v21)
              {
                v25 = v21;
              }
            }

            v66[1] = llroundf(v25) << v63;
            v66 += 2;
          }

          if (v65)
          {
            *v65++ = v93 | (v93 << 8);
          }

          v68 += 4;
          --v64;
        }

        while (v64);
      }

      v62 += v10;
      v61 += v13;
      v60 += v14;
      v57 += v15;
      ++v7;
    }

    while (v7 != v6);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_BGRA_TRC_Mat_TRC_xf444_neon_fp16(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
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
  if ((*a4 * (v29.i64[1] + v27.i64[1]) + 4 * v29.i64[0]) <= *a5)
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
  dispatch_apply_f(v15, global_queue, v19, vt_Copy_BGRA_TRC_Mat_TRC_xf444_neon_fp16_GCD);
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

unsigned __int8 *vt_Copy_BGRA_TRC_Mat_TRC_xf444_neon_fp16_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, double a5, double a6, double a7, double a8, int16x8_t _Q6, __n128 _Q7)
{
  v10 = 0;
  v119 = *(result + 36);
  v11 = *result;
  v12 = *(result + 14);
  v14 = *(result + 12);
  v13 = *(result + 13);
  v15 = *(result + 19);
  v17 = *(result + 16);
  v16 = *(result + 17);
  v18 = **(result + 8);
  v118 = **(result + 7);
  v19 = *v16;
  v20 = v16[1];
  v21 = v16[2];
  v22 = v17[1];
  v117 = *v17;
  v23 = v17[2];
  v24 = *(v15 + 128);
  v25 = v13 * a2 / v11;
  v26 = v25 + *(result + 15);
  v116 = v18 * (*(result + 28) * a2 / v11 + *(result + 44));
  v156 = *(v15 + 154);
  v27 = *(v15 + 144);
  v28 = *(v15 + 132);
  v29 = *(v15 + 146);
  v30 = *(v15 + 148);
  v31 = *(v15 + 150);
  v32 = *(v15 + 152);
  v152 = *(v15 + 36);
  v151 = *(v15 + 40);
  v150 = *(v15 + 44);
  v131 = *(v15 + 52);
  v132 = *(v15 + 48);
  LODWORD(a5) = *(v15 + 64);
  v129 = *(v15 + 60);
  v130 = *(v15 + 56);
  v127 = *(v15 + 68);
  v128 = *&a5;
  v149 = *(v15 + 72);
  v148 = *(v15 + 76);
  v147 = *(v15 + 80);
  v146 = *(v15 + 84);
  v145 = *(v15 + 88);
  v144 = *(v15 + 92);
  v143 = *(v15 + 96);
  LODWORD(a4) = *(v15 + 100);
  v142 = *&a4;
  v141 = *(v15 + 104);
  v154 = 0u;
  *v155[0].i8 = 0u;
  v33 = (v13 + v13 * a2) / v11;
  do
  {
    v34 = 0;
    v35 = *(&v156 + v10);
    _D0 = v155[v10 - 2];
    do
    {
      v153 = _D0;
      *(&v153 | v34 & 7) = v35 + 4 * v34;
      _D0 = v153;
      ++v34;
    }

    while (v34 != 8);
    v155[v10++ - 2] = v153;
  }

  while (v10 != 4);
  v37 = v33 - v25;
  if (v33 - v25 >= 1)
  {
    v38 = 0;
    _S27 = 8191.0 / v24;
    v40 = v27;
    v41 = v29;
    v133 = v31;
    v42 = v32;
    *_D0.i32 = v152;
    __asm { FCVT            H0, S0 }

    v140 = *_D0.i16;
    v47 = v15 + 164;
    v48 = v15 + 16548;
    *_D0.i32 = v151;
    __asm { FCVT            H0, S0 }

    v139 = *_D0.i16;
    *_D0.i32 = v150;
    __asm { FCVT            H0, S0 }

    v138 = *_D0.i16;
    *_D0.i32 = v132;
    __asm { FCVT            H0, S0 }

    v126 = *_D0.i16;
    *_D0.i32 = v131;
    __asm { FCVT            H0, S0 }

    v125 = *_D0.i16;
    *_D0.i32 = v130;
    __asm { FCVT            H0, S0 }

    v124 = *_D0.i16;
    *_D0.i32 = v129;
    __asm { FCVT            H0, S0 }

    v123 = *_D0.i16;
    _D0.i32[0] = LODWORD(a5);
    __asm { FCVT            H0, S0 }

    v122 = *_D0.i16;
    *_D0.i32 = v127;
    __asm { FCVT            H0, S0 }

    v121 = *_D0.i16;
    *_D0.i32 = v149;
    __asm { FCVT            H0, S0 }

    v137 = *_D0.i16;
    *_D0.i32 = v148;
    __asm { FCVT            H0, S0 }

    v136 = *_D0.i16;
    *_D0.i32 = v147;
    __asm { FCVT            H0, S0 }

    v135 = *_D0.i16;
    *_D0.i32 = v146;
    __asm { FCVT            H0, S0 }

    v134 = *_D0.i16;
    *_D0.i32 = v145;
    __asm { FCVT            H13, S0 }

    *_D0.i32 = v144;
    __asm { FCVT            H14, S0 }

    *_D0.i32 = v143;
    __asm { FCVT            H15, S0 }

    _D0.i32[0] = LODWORD(a4);
    __asm { FCVT            H3, S0 }

    *_D0.i16 = v27;
    v53 = vdupq_lane_s16(_D0, 0);
    *_D0.i16 = v29;
    v54 = vdupq_lane_s16(_D0, 0);
    *_D0.i16 = v30;
    v55 = vdupq_lane_s16(_D0, 0);
    *&a4 = v31;
    v56 = vdupq_lane_s16(*&a4, 0);
    *&a5 = v32;
    v57 = vdupq_lane_s16(*&a5, 0);
    *_Q5.i32 = v141;
    __asm { FCVT            H9, S5 }

    v60 = 16 - v28;
    if (v28 >= 0x11)
    {
      v60 = 0;
    }

    if (v23)
    {
      v61 = v23 + v21 * v26 + 2 * v12;
    }

    else
    {
      v61 = 0;
    }

    if (v22)
    {
      v62 = v22 + v20 * v26 + 2 * v12;
    }

    else
    {
      v62 = 0;
    }

    v63 = v117 + v19 * v26 + 2 * v12;
    v64 = v118 + v116 + 4 * v119;
    v65 = v60;
    v66 = vdupq_n_s16(v60);
    __asm { FCVT            H10, S27 }

    v68.i64[0] = 0x9000900090009000;
    v68.i64[1] = 0x9000900090009000;
    do
    {
      if (v14 < 8)
      {
        v99 = 0;
        v73 = v62;
        v72 = v61;
        v71 = v63;
        v70 = v64;
      }

      else
      {
        v69 = 0;
        v70 = v64;
        v71 = v63;
        v72 = v61;
        v73 = v62;
        do
        {
          v74 = v155[1];
          *&v78 = *v70;
          v75 = v70[1];
          *&v76 = v70[2];
          v77 = v70[3];
          v70 += 4;
          *(&v78 + 1) = v75;
          *(&v76 + 1) = v77;
          v79 = v76;
          v80 = vqtbl2_s8(*&v78, *&v154);
          v81 = vqtbl2_s8(*&v78, *(&v154 + 8));
          *v82.i8 = vzip1_s8(v80, 0);
          v82.u64[1] = vzip2_s8(v80, 0);
          v83 = vqtbl2_s8(*&v78, v155[0]);
          v84 = vcvtq_f16_u16(v82);
          *v82.i8 = vzip1_s8(v81, 0);
          v82.u64[1] = vzip2_s8(v81, 0);
          v85 = vcvtq_f16_u16(v82);
          *v82.i8 = vzip1_s8(v83, 0);
          v82.u64[1] = vzip2_s8(v83, 0);
          v86 = vmulq_n_f16(v85, _H10);
          v87 = vmulq_n_f16(vcvtq_f16_u16(v82), _H10);
          v88 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmulq_n_f16(v84, _H10), 0), v68));
          v82.i16[0] = *(v47 + 2 * v88.u16[0]);
          v82.i16[1] = *(v47 + 2 * v88.u16[1]);
          v82.i16[2] = *(v47 + 2 * v88.u16[2]);
          v82.i16[3] = *(v47 + 2 * v88.u16[3]);
          v82.i16[4] = *(v47 + 2 * v88.u16[4]);
          v82.i16[5] = *(v47 + 2 * v88.u16[5]);
          v82.i16[6] = *(v47 + 2 * v88.u16[6]);
          v82.i16[7] = *(v47 + 2 * v88.u16[7]);
          v89 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v86, 0), v68));
          v88.i16[0] = *(v47 + 2 * v89.u16[0]);
          v88.i16[1] = *(v47 + 2 * v89.u16[1]);
          v88.i16[2] = *(v47 + 2 * v89.u16[2]);
          v88.i16[3] = *(v47 + 2 * v89.u16[3]);
          v88.i16[4] = *(v47 + 2 * v89.u16[4]);
          v88.i16[5] = *(v47 + 2 * v89.u16[5]);
          v88.i16[6] = *(v47 + 2 * v89.u16[6]);
          v88.i16[7] = *(v47 + 2 * v89.u16[7]);
          v90 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v87, 0), v68));
          v89.i16[0] = *(v47 + 2 * v90.u16[0]);
          v89.i16[1] = *(v47 + 2 * v90.u16[1]);
          v89.i16[2] = *(v47 + 2 * v90.u16[2]);
          v89.i16[3] = *(v47 + 2 * v90.u16[3]);
          v89.i16[4] = *(v47 + 2 * v90.u16[4]);
          v89.i16[5] = *(v47 + 2 * v90.u16[5]);
          v89.i16[6] = *(v47 + 2 * v90.u16[6]);
          v89.i16[7] = *(v47 + 2 * v90.u16[7]);
          v91 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v82, v137), v88, v136), v89, v135), 0), v68));
          v92.i16[0] = *(v48 + 2 * v91.u16[0]);
          v92.i16[1] = *(v48 + 2 * v91.u16[1]);
          v92.i16[2] = *(v48 + 2 * v91.u16[2]);
          v92.i16[3] = *(v48 + 2 * v91.u16[3]);
          v92.i16[4] = *(v48 + 2 * v91.u16[4]);
          v92.i16[5] = *(v48 + 2 * v91.u16[5]);
          v92.i16[6] = *(v48 + 2 * v91.u16[6]);
          v92.i16[7] = *(v48 + 2 * v91.u16[7]);
          v93 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v82, v134), v88, _H13), v89, _H14), 0), v68));
          _Q6.i16[0] = *(v48 + 2 * v93.u16[0]);
          _Q6.i16[1] = *(v48 + 2 * v93.u16[1]);
          _Q6.i16[2] = *(v48 + 2 * v93.u16[2]);
          _Q6.i16[3] = *(v48 + 2 * v93.u16[3]);
          _Q6.i16[4] = *(v48 + 2 * v93.u16[4]);
          _Q6.i16[5] = *(v48 + 2 * v93.u16[5]);
          _Q6.i16[6] = *(v48 + 2 * v93.u16[6]);
          _Q6.i16[7] = *(v48 + 2 * v93.u16[7]);
          v94 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v89, _H9), v88, _H3), v82, _H15), 0), v68));
          _Q5.i16[0] = *(v48 + 2 * v94.u16[0]);
          _Q5.i16[1] = *(v48 + 2 * v94.u16[1]);
          _Q5.i16[2] = *(v48 + 2 * v94.u16[2]);
          _Q5.i16[3] = *(v48 + 2 * v94.u16[3]);
          _Q5.i16[4] = *(v48 + 2 * v94.u16[4]);
          _Q5.i16[5] = *(v48 + 2 * v94.u16[5]);
          _Q5.i16[6] = *(v48 + 2 * v94.u16[6]);
          _Q5.i16[7] = *(v48 + 2 * v94.u16[7]);
          _Q7 = vshlq_u16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v53, v92, v140), _Q6, v139), _Q5, v138), v53), v55)), v66);
          *v71++ = _Q7;
          if (v73)
          {
            v95 = vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v54, v92, v123), _Q6, v122), _Q5, v121);
            _Q5 = vshlq_u16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v54, v92, v126), _Q6, v125), _Q5, v124), v56), v57), v56), v57)), v66);
            _Q7 = vcvtq_u16_f16(v95);
            _Q6 = vshlq_u16(_Q7, v66);
            vst2q_s16(v73, *(&_Q6 - 1));
            v73 += 16;
          }

          if (v72)
          {
            _Q5.i64[0] = 0;
            v96 = vqtbl2_s8(*&v78, v74);
            _Q7.n128_u64[0] = v72;
            v97 = vdupq_lane_s64(vceqq_s64(_Q7, _Q5).i64[0], 0);
            _Q7.n128_u64[0] = vzip1_s8(v96, 0);
            *&_Q7.n128_i8[8] = vzip2_s8(v96, 0);
            v98.i64[0] = 0x101010101010101;
            v98.i64[1] = 0x101010101010101;
            _Q6 = vmulq_s16(_Q7, v98);
            _Q5 = vbicq_s8(_Q6, v97);
            *v72++ = _Q5;
          }

          v69 += 8;
        }

        while (v69 < v14 - 7);
        v99 = v14 & 0x7FFFFFF8;
      }

      v100 = v14 - v99;
      if (v14 > v99)
      {
        do
        {
          _Q5.i8[0] = *(v70 + v156);
          _Q6.i8[0] = *(v70 + BYTE1(v156));
          _Q7.n128_u8[0] = *(v70 + BYTE2(v156));
          v101 = llroundf(fminf(fmaxf(_S27 * _Q5.u32[0], 0.0), 8191.0));
          _S5 = _S27 * _Q7.n128_u32[0];
          _H7 = *(v47 + 2 * v101);
          __asm { FCVT            S7, H7 }

          _H6 = *(v47 + 2 * llroundf(fminf(fmaxf(_S27 * _Q6.u32[0], 0.0), 8191.0)));
          __asm { FCVT            S6, H6 }

          LOWORD(_S5) = *(v47 + 2 * llroundf(fminf(fmaxf(_S5, 0.0), 8191.0)));
          __asm { FCVT            S5, H5 }

          v108 = ((v148 * _S6) + (_S7 * v149)) + (_S5 * v147);
          v109 = ((v145 * _S6) + (_S7 * v146)) + (_S5 * v144);
          _S7 = ((v142 * _S6) + (_S7 * v143)) + (_S5 * v141);
          LOWORD(_S5) = *(v48 + 2 * llroundf(fminf(fmaxf(v108, 0.0), 8191.0)));
          __asm { FCVT            S5, H5 }

          LOWORD(_S6) = *(v48 + 2 * llroundf(fminf(fmaxf(v109, 0.0), 8191.0)));
          __asm { FCVT            S6, H6 }

          LOWORD(_S7) = *(v48 + 2 * llroundf(fminf(fmaxf(_S7, 0.0), 8191.0)));
          __asm { FCVT            S7, H7 }

          v111 = (((v151 * *_Q6.i32) + (v152 * *_Q5.i32)) + (v150 * _Q7.n128_f32[0])) + v40;
          v112 = v30;
          if (v111 <= v30)
          {
            v112 = (((v151 * *_Q6.i32) + (v152 * *_Q5.i32)) + (v150 * _Q7.n128_f32[0])) + v40;
            if (v111 < v40)
            {
              v112 = v27;
            }
          }

          v113 = *(v70 + HIBYTE(v156));
          v71->n128_u16[0] = llroundf(v112) << v65;
          v71 = (v71 + 2);
          if (v73)
          {
            v114 = ((v41 + (*_Q5.i32 * v132)) + (*_Q6.i32 * v131)) + (_Q7.n128_f32[0] * v130);
            v115 = v42;
            if (v114 <= v42)
            {
              v115 = ((v41 + (*_Q5.i32 * v132)) + (*_Q6.i32 * v131)) + (_Q7.n128_f32[0] * v130);
              if (v114 < v133)
              {
                v115 = v31;
              }
            }

            *_Q5.i32 = ((v41 + (*_Q5.i32 * v129)) + (*_Q6.i32 * v128)) + (_Q7.n128_f32[0] * v127);
            *v73 = llroundf(v115) << v65;
            *_Q6.i32 = v42;
            if (*_Q5.i32 <= v42)
            {
              _Q6.i32[0] = _Q5.i32[0];
              if (*_Q5.i32 < v133)
              {
                *_Q6.i32 = v31;
              }
            }

            v73[1] = llroundf(*_Q6.i32) << v65;
            v73 += 2;
          }

          if (v72)
          {
            v72->i16[0] = v113 | (v113 << 8);
            v72 = (v72 + 2);
          }

          v70 = (v70 + 4);
          --v100;
        }

        while (v100);
      }

      v64 += v18;
      v63 += v19;
      v62 += v20;
      v61 += v21;
      ++v38;
    }

    while (v38 != v37);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_BGRA_TRC_Mat_TRC_xf444(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
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
  if ((*a4 * (v29.i64[1] + v27.i64[1]) + 4 * v29.i64[0]) <= *a5)
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
  dispatch_apply_f(v15, global_queue, v19, vt_Copy_BGRA_TRC_Mat_TRC_xf444_GCD);
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

unsigned __int8 *vt_Copy_BGRA_TRC_Mat_TRC_xf444_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, float a5, float a6, float a7, float a8, float a9)
{
  v12 = *result;
  v13 = *(result + 13);
  v14 = v13 * a2 / v12;
  v15 = (v13 + v13 * a2) / v12 - v14;
  if (v15 >= 1)
  {
    v16 = 0;
    v17 = *(result + 24);
    v18 = *(result + 19);
    v19 = **(result + 8);
    v20 = *(result + 16);
    v21 = *(result + 17);
    v22 = *v21;
    v23 = v21[1];
    v24 = v21[2];
    v25 = 8191.0 / *(v18 + 128);
    LOWORD(a5) = *(v18 + 144);
    v26 = LODWORD(a5);
    LOWORD(a6) = *(v18 + 146);
    v27 = LODWORD(a6);
    LOWORD(a7) = *(v18 + 148);
    v28 = LODWORD(a7);
    LOWORD(a8) = *(v18 + 150);
    v29 = LODWORD(a8);
    LOWORD(a9) = *(v18 + 152);
    v30 = LODWORD(a9);
    v31 = *(v18 + 36);
    v32 = *(v18 + 40);
    v33 = *(v18 + 44);
    v34 = *(v18 + 48);
    v35 = *(v18 + 52);
    v36 = *(v18 + 56);
    v37 = *(v18 + 60);
    v38 = *(v18 + 64);
    v39 = *(v18 + 68);
    v40 = *(v18 + 72);
    v41 = *(v18 + 76);
    v42 = *(v18 + 80);
    v43 = *(v18 + 84);
    v44 = *(v18 + 88);
    v45 = *(v18 + 92);
    v46 = *(v18 + 96);
    v48 = *(v18 + 100);
    v47 = *(v18 + 104);
    v49 = v18 + 164;
    v50 = v18 + 16548;
    v51 = *(result + 14);
    v52 = v14 + *(result + 15);
    v53 = *(result + 28) * a2 / v12 + *(result + 44);
    v54 = *(v18 + 132);
    if (v54 >= 0x11)
    {
      v55 = 0;
    }

    else
    {
      v55 = 16 - v54;
    }

    v56 = *(v18 + 157);
    v57 = *(v18 + 156);
    v58 = *(v18 + 155);
    v59 = *(v18 + 154);
    v60 = v20[2];
    if (v60)
    {
      v61 = v60 + v24 * v52 + 2 * v51;
    }

    else
    {
      v61 = 0;
    }

    v63 = *v20;
    v62 = v20[1];
    v64 = v62 + v23 * v52 + 2 * v51;
    if (!v62)
    {
      v64 = 0;
    }

    v65 = v63 + v22 * v52 + 2 * v51;
    v66 = **(result + 7) + v53 * v19 + 4 * *(result + 36);
    v67 = v55;
    do
    {
      if (v17 >= 1)
      {
        v68 = v17;
        v69 = v66;
        v70 = v61;
        v71 = v64;
        v72 = v65;
        do
        {
          LOBYTE(_S10) = *(v69 + v59);
          LOBYTE(_S11) = *(v69 + v58);
          LOBYTE(_S12) = *(v69 + v57);
          v73 = llroundf(fminf(fmaxf(v25 * LODWORD(_S10), 0.0), 8191.0));
          _S10 = v25 * LODWORD(_S12);
          _H12 = *(v49 + 2 * v73);
          __asm { FCVT            S12, H12 }

          _H11 = *(v49 + 2 * llroundf(fminf(fmaxf(v25 * LODWORD(_S11), 0.0), 8191.0)));
          __asm { FCVT            S11, H11 }

          LOWORD(_S10) = *(v49 + 2 * llroundf(fminf(fmaxf(_S10, 0.0), 8191.0)));
          __asm { FCVT            S10, H10 }

          v84 = ((v41 * _S11) + (_S12 * v40)) + (_S10 * v42);
          v85 = ((v44 * _S11) + (_S12 * v43)) + (_S10 * v45);
          _S12 = ((v48 * _S11) + (_S12 * v46)) + (_S10 * v47);
          LOWORD(_S10) = *(v50 + 2 * llroundf(fminf(fmaxf(v84, 0.0), 8191.0)));
          __asm { FCVT            S10, H10 }

          LOWORD(_S11) = *(v50 + 2 * llroundf(fminf(fmaxf(v85, 0.0), 8191.0)));
          __asm { FCVT            S11, H11 }

          LOWORD(_S12) = *(v50 + 2 * llroundf(fminf(fmaxf(_S12, 0.0), 8191.0)));
          __asm { FCVT            S12, H12 }

          v87 = (((v32 * _S11) + (v31 * _S10)) + (v33 * _S12)) + v26;
          v88 = v28;
          if (v87 <= v28)
          {
            v88 = (((v32 * _S11) + (v31 * _S10)) + (v33 * _S12)) + v26;
            if (v87 < v26)
            {
              v88 = v26;
            }
          }

          v89 = *(v69 + v56);
          *v72++ = llroundf(v88) << v67;
          if (v71)
          {
            v90 = ((v27 + (_S10 * v34)) + (_S11 * v35)) + (_S12 * v36);
            v91 = v30;
            if (v90 <= v30)
            {
              v91 = ((v27 + (_S10 * v34)) + (_S11 * v35)) + (_S12 * v36);
              if (v90 < v29)
              {
                v91 = v29;
              }
            }

            _S10 = ((v27 + (_S10 * v37)) + (_S11 * v38)) + (_S12 * v39);
            *v71 = llroundf(v91) << v67;
            _S11 = v30;
            if (_S10 <= v30)
            {
              _S11 = _S10;
              if (_S10 < v29)
              {
                _S11 = v29;
              }
            }

            v71[1] = llroundf(_S11) << v67;
            v71 += 2;
          }

          if (v70)
          {
            *v70++ = v89 | (v89 << 8);
          }

          v69 += 4;
          --v68;
        }

        while (v68);
      }

      v66 += v19;
      v65 += v22;
      v64 += v23;
      v61 += v24;
      ++v16;
    }

    while (v16 != v15);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_BGRA_rgb_xf444_neon_fp16(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
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
  if ((*a4 * (v29.i64[1] + v27.i64[1]) + 4 * v29.i64[0]) <= *a5)
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
  dispatch_apply_f(v15, global_queue, v19, vt_Copy_BGRA_rgb_xf444_neon_fp16_GCD);
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

unsigned __int8 *vt_Copy_BGRA_rgb_xf444_neon_fp16_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, double a5, double a6, double a7)
{
  v7 = 0;
  v117 = *(result + 36);
  v8 = *result;
  v9 = *(result + 28) * a2 / v8 + *(result + 44);
  v10 = *(result + 14);
  v11 = *(result + 12);
  v12 = *(result + 13);
  v13 = v12 * a2;
  v14 = *(result + 19);
  v15 = *(result + 16);
  v16 = *(result + 17);
  v17 = **(result + 8);
  v18 = v13 / v8;
  v19 = v13 / v8 + *(result + 15);
  v20 = v12 + v13;
  v115 = v17 * v9;
  v116 = **(result + 7);
  v21 = *v16;
  v22 = v16[1];
  v23 = v16[2];
  v24 = v15[1];
  v114 = *v15;
  v25 = v15[2];
  v26 = *(v14 + 128);
  v27 = *(v14 + 136);
  v133 = *(v14 + 154);
  v28 = *(v14 + 144);
  v29 = *(v14 + 132);
  v30 = *(v14 + 146);
  v31 = *(v14 + 148);
  v32 = *(v14 + 150);
  v33 = *(v14 + 152);
  _S0 = *(v14 + 36);
  _S1 = *(v14 + 40);
  _S2 = *(v14 + 44);
  v128 = *(v14 + 52);
  v129 = *(v14 + 48);
  v37.i32[0] = *(v14 + 64);
  v126 = *(v14 + 60);
  v127 = *(v14 + 56);
  v124 = *(v14 + 68);
  v125 = *v37.i32;
  v131 = 0u;
  *v132[0].i8 = 0u;
  v38 = v20 / v8;
  do
  {
    v39 = 0;
    v40 = *(&v133 + v7);
    v41 = v132[v7 - 2];
    do
    {
      v130 = v41;
      *(&v130 | v39 & 7) = v40 + 4 * v39;
      v41 = v130;
      ++v39;
    }

    while (v39 != 8);
    v132[v7++ - 2] = v130;
  }

  while (v7 != 4);
  v42 = v38 - v18;
  if (v38 - v18 >= 1)
  {
    v43 = 0;
    *&a7 = v26;
    v44 = v28;
    v45 = v30;
    v46 = v32;
    _S21 = v27 / v26;
    v48 = v33;
    __asm
    {
      FCVT            H8, S0
      FCVT            H9, S1
      FCVT            H10, S2
    }

    _S3 = v129;
    __asm { FCVT            H3, S3 }

    v123 = *&_S3;
    _S3 = v128;
    __asm { FCVT            H3, S3 }

    v122 = *&_S3;
    _S3 = v127;
    __asm { FCVT            H3, S3 }

    v121 = *&_S3;
    _S3 = v126;
    __asm { FCVT            H3, S3 }

    v120 = *&_S3;
    _S3 = v37.i32[0];
    __asm { FCVT            H3, S3 }

    v119 = *&_S3;
    _S3 = v124;
    __asm { FCVT            H3, S3 }

    *&a7 = v28;
    v63 = vdupq_lane_s16(*&a7, 0);
    *&a7 = v30;
    v64 = vdupq_lane_s16(*&a7, 0);
    *&a7 = v31;
    v65 = vdupq_lane_s16(*&a7, 0);
    *&a7 = v32;
    v66 = vdupq_lane_s16(*&a7, 0);
    *&a7 = v33;
    v67 = vdupq_lane_s16(*&a7, 0);
    v68 = 16 - v29;
    if (v29 >= 0x11)
    {
      v68 = 0;
    }

    if (v25)
    {
      v69 = v25 + v23 * v19 + 2 * v10;
    }

    else
    {
      v69 = 0;
    }

    if (v24)
    {
      v70 = v24 + v22 * v19 + 2 * v10;
    }

    else
    {
      v70 = 0;
    }

    v71 = v114 + v21 * v19 + 2 * v10;
    v72 = v116 + v115 + 4 * v117;
    __asm { FCVT            H4, S21 }

    v74 = v68;
    v75 = vdupq_n_s16(v68);
    do
    {
      if (v11 < 8)
      {
        v102 = 0;
        v80 = v70;
        v79 = v69;
        v78 = v71;
        v77 = v72;
      }

      else
      {
        v76 = 0;
        v77 = v72;
        v78 = v71;
        v79 = v69;
        v80 = v70;
        do
        {
          v81 = v132[1];
          *&v85 = *v77;
          v82 = v77[1];
          *&v83 = v77[2];
          v84 = v77[3];
          v77 += 4;
          *(&v85 + 1) = v82;
          *(&v83 + 1) = v84;
          v86 = v83;
          v87 = vqtbl2_s8(*&v85, *&v131);
          v88 = vqtbl2_s8(*&v85, *(&v131 + 8));
          v89 = vqtbl2_s8(*&v85, v132[0]);
          *v90.i8 = vzip1_s8(v87, 0);
          v90.u64[1] = vzip2_s8(v87, 0);
          v91 = vcvtq_f16_u16(v90);
          *v90.i8 = vzip1_s8(v88, 0);
          v90.u64[1] = vzip2_s8(v88, 0);
          *v92.i8 = vzip1_s8(v89, 0);
          v92.u64[1] = vzip2_s8(v89, 0);
          v93 = vcvtq_f16_u16(v92);
          v37 = vmulq_n_f16(v91, _H4);
          v94 = vmulq_n_f16(vcvtq_f16_u16(v90), _H4);
          v95 = vmulq_n_f16(v93, _H4);
          *v78++ = vshlq_u16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v63, v37, _H8), v94, _H9), v95, _H10), v63), v65)), v75);
          if (v80)
          {
            v96 = vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v64, v37, v120), v94, v119), v95, _H3);
            v37 = vshlq_u16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v64, v37, v123), v94, v122), v95, v121), v66), v67), v66), v67)), v75);
            v94 = vcvtq_u16_f16(v96);
            v97 = vshlq_u16(v94, v75);
            vst2q_s16(v80, *v37.i8);
            v80 += 16;
          }

          if (v79)
          {
            v37.i64[0] = 0;
            v98 = vqtbl2_s8(*&v85, v81);
            v94.i64[0] = v79;
            v99 = vdupq_lane_s64(vceqq_s64(v94, v37).i64[0], 0);
            *v100.i8 = vzip1_s8(v98, 0);
            v100.u64[1] = vzip2_s8(v98, 0);
            v101.i64[0] = 0x101010101010101;
            v101.i64[1] = 0x101010101010101;
            v37 = vbicq_s8(vmulq_s16(v100, v101), v99);
            *v79++ = v37;
          }

          v76 += 8;
        }

        while (v76 < v11 - 7);
        v102 = v11 & 0x7FFFFFF8;
      }

      v103 = v11 - v102;
      if (v11 > v102)
      {
        do
        {
          v37.i8[0] = *(v77 + v133);
          *&v104 = v37.u32[0];
          v105 = _S21 * *&v104;
          LOBYTE(v104) = *(v77 + BYTE1(v133));
          *&v106 = v104;
          v107 = _S21 * *&v106;
          LOBYTE(v106) = *(v77 + BYTE2(v133));
          v108 = _S21 * v106;
          v109 = (((_S1 * v107) + (_S0 * v105)) + (_S2 * v108)) + v44;
          *v37.i32 = v31;
          if (v109 <= v31)
          {
            *v37.i32 = (((_S1 * v107) + (_S0 * v105)) + (_S2 * v108)) + v44;
            if (v109 < v44)
            {
              *v37.i32 = v28;
            }
          }

          v110 = *(v77 + HIBYTE(v133));
          v78->i16[0] = llroundf(*v37.i32) << v74;
          v78 = (v78 + 2);
          if (v80)
          {
            v111 = ((v45 + (v105 * v129)) + (v107 * v128)) + (v108 * v127);
            v112 = v48;
            if (v111 <= v48)
            {
              v112 = ((v45 + (v105 * v129)) + (v107 * v128)) + (v108 * v127);
              if (v111 < v46)
              {
                v112 = v32;
              }
            }

            v113 = ((v45 + (v105 * v126)) + (v107 * v125)) + (v108 * v124);
            *v80 = llroundf(v112) << v74;
            *v37.i32 = v48;
            if (v113 <= v48)
            {
              *v37.i32 = ((v45 + (v105 * v126)) + (v107 * v125)) + (v108 * v124);
              if (v113 < v46)
              {
                *v37.i32 = v32;
              }
            }

            v80[1] = llroundf(*v37.i32) << v74;
            v80 += 2;
          }

          if (v79)
          {
            v79->i16[0] = v110 | (v110 << 8);
            v79 = (v79 + 2);
          }

          v77 = (v77 + 4);
          --v103;
        }

        while (v103);
      }

      v72 += v17;
      v71 += v21;
      v70 += v22;
      v69 += v23;
      ++v43;
    }

    while (v43 != v42);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_BGRA_rgb_xf444(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
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
  if ((*a4 * (v29.i64[1] + v27.i64[1]) + 4 * v29.i64[0]) <= *a5)
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
  dispatch_apply_f(v15, global_queue, v19, vt_Copy_BGRA_rgb_xf444_GCD);
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

unsigned __int8 *vt_Copy_BGRA_rgb_xf444_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, float a5, float a6, float a7, float a8)
{
  v11 = *result;
  v12 = *(result + 13);
  v13 = v12 * a2 / v11;
  v14 = (v12 + v12 * a2) / v11 - v13;
  if (v14 >= 1)
  {
    v15 = 0;
    v16 = *(result + 24);
    v17 = *(result + 19);
    v18 = **(result + 8);
    v19 = *(result + 16);
    v20 = *(result + 17);
    v21 = *v20;
    v22 = v20[1];
    v23 = v20[2];
    *&v24 = *(v17 + 136);
    v25 = *&v24 / *(v17 + 128);
    LOWORD(v24) = *(v17 + 144);
    v26 = v24;
    LOWORD(a5) = *(v17 + 146);
    v27 = LODWORD(a5);
    LOWORD(a6) = *(v17 + 148);
    v28 = LODWORD(a6);
    LOWORD(a7) = *(v17 + 150);
    v29 = LODWORD(a7);
    LOWORD(a8) = *(v17 + 152);
    v30 = LODWORD(a8);
    v31 = *(v17 + 36);
    v32 = *(v17 + 40);
    v33 = *(v17 + 44);
    v34 = *(v17 + 48);
    v35 = *(v17 + 52);
    v36 = *(v17 + 56);
    v37 = *(v17 + 60);
    v38 = *(v17 + 64);
    v39 = *(v17 + 68);
    v40 = *(result + 14);
    v41 = v13 + *(result + 15);
    v42 = *(result + 28) * a2 / v11 + *(result + 44);
    v43 = *(v17 + 132);
    if (v43 >= 0x11)
    {
      v44 = 0;
    }

    else
    {
      v44 = 16 - v43;
    }

    v45 = *(v17 + 157);
    v46 = *(v17 + 156);
    v47 = *(v17 + 155);
    v48 = *(v17 + 154);
    v49 = v19[2];
    if (v49)
    {
      v50 = v49 + v23 * v41 + 2 * v40;
    }

    else
    {
      v50 = 0;
    }

    v52 = *v19;
    v51 = v19[1];
    v53 = v51 + v22 * v41 + 2 * v40;
    if (!v51)
    {
      v53 = 0;
    }

    v54 = v52 + v21 * v41 + 2 * v40;
    v55 = **(result + 7) + v42 * v18 + 4 * *(result + 36);
    v56 = v44;
    do
    {
      if (v16 >= 1)
      {
        v57 = v16;
        v58 = v55;
        v59 = v50;
        v60 = v53;
        v61 = v54;
        do
        {
          LOBYTE(v8) = *(v58 + v48);
          v8 = v25 * LODWORD(v8);
          LOBYTE(v9) = *(v58 + v47);
          v9 = v25 * LODWORD(v9);
          LOBYTE(v10) = *(v58 + v46);
          v10 = v25 * LODWORD(v10);
          v62 = (((v32 * v9) + (v31 * v8)) + (v33 * v10)) + v26;
          v63 = v28;
          if (v62 <= v28)
          {
            v63 = (((v32 * v9) + (v31 * v8)) + (v33 * v10)) + v26;
            if (v62 < v26)
            {
              v63 = v26;
            }
          }

          v64 = *(v58 + v45);
          *v61++ = llroundf(v63) << v56;
          if (v60)
          {
            v65 = ((v27 + (v8 * v34)) + (v9 * v35)) + (v10 * v36);
            v66 = v30;
            if (v65 <= v30)
            {
              v66 = ((v27 + (v8 * v34)) + (v9 * v35)) + (v10 * v36);
              if (v65 < v29)
              {
                v66 = v29;
              }
            }

            v8 = ((v27 + (v8 * v37)) + (v9 * v38)) + (v10 * v39);
            *v60 = llroundf(v66) << v56;
            v9 = v30;
            if (v8 <= v30)
            {
              v9 = v8;
              if (v8 < v29)
              {
                v9 = v29;
              }
            }

            v60[1] = llroundf(v9) << v56;
            v60 += 2;
          }

          if (v59)
          {
            *v59++ = v64 | (v64 << 8);
          }

          v58 += 4;
          --v57;
        }

        while (v57);
      }

      v55 += v18;
      v54 += v21;
      v53 += v22;
      v50 += v23;
      ++v15;
    }

    while (v15 != v14);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}