uint64_t vt_Copy_BGRA_TRC_Tone_Mat_TRC_xf420_neon_fp16(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4, void *a5, uint64_t *a6, uint64_t a7, void *a8, void *a9)
{
  v60 = a7;
  v61 = a8;
  v66 = a4;
  v67 = a5;
  v59 = a3;
  v68 = *MEMORY[0x1E69E9840];
  v58 = a1;
  v9 = *(a1 + 162);
  v10 = a2[1];
  v12 = a2[2];
  v11 = a2[3];
  v14 = a2[4];
  v13 = a2[5];
  v15 = *a6;
  v62 = *a2;
  v63 = v15;
  v16 = a6[1];
  v17 = a6[2];
  v18 = a6[3];
  v19 = a6[4];
  v20 = a6[5];
  v64 = v16;
  v65 = v10;
  v22 = v13 + v11 != v10 || v20 + v18 != v16;
  LODWORD(v57) = v22;
  if (v9 == 255)
  {
    v23 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v23)
    {
      v24 = 0;
LABEL_61:
      free(v23);
      return v24;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v9 + 160, a3, a4);
    v23 = (&v56 - v25);
    bzero(&v56 - v25, v26);
  }

  v27 = v17 - 1;
  v28 = a9;
  v29 = v12 - 1;
  if (v19)
  {
    v30 = v14 + 1;
  }

  else
  {
    v29 = v12;
    v30 = v14;
  }

  if (v19)
  {
    v31 = v19 + 1;
  }

  else
  {
    v27 = v17;
    v31 = v19;
  }

  v32 = v29 - (v27 & 1);
  v33 = v27 & 0xFFFFFFFFFFFFFFFELL;
  v34 = v18 - 1;
  v35 = v11 - 1;
  if (v20)
  {
    v36 = v13 + 1;
  }

  else
  {
    v35 = v11;
    v36 = v13;
  }

  if (v20)
  {
    v37 = v20 + 1;
  }

  else
  {
    v34 = v18;
    v37 = v20;
  }

  if (v34)
  {
    if ((v57 & 1) != 0 || (*v66 * (v35 + 1 + v36)) > *v67 || (v38 = v34 + 1 + v37, (*v61 * v38) > *a9) || (v61[1] * (v38 / 2)) > a9[1] || (v61[2] * v38) > a9[2])
    {
      --v34;
      --v35;
    }

    else
    {
      ++v64;
      ++v65;
      ++v35;
      ++v34;
    }
  }

  if (v32 + v30 > v62)
  {
    v32 = v62 - v30;
  }

  if (v33 + v31 > v63)
  {
    v33 = v63 - v31;
  }

  if (v35 + v36 > v65)
  {
    v35 = v65 - v36;
  }

  if (v34 + v37 > v64)
  {
    v34 = v64 - v37;
  }

  if (v32 >= v33)
  {
    v39 = v33;
  }

  else
  {
    v39 = v32;
  }

  if (v35 >= v34)
  {
    v40 = v34;
  }

  else
  {
    v40 = v35;
  }

  if (((v36 + v40 - 1) * *v66 + 4 * (v39 + v30)) > *v67)
  {
    v57 = v36;
    v41 = v30;
    v42 = v31;
    v43 = v9;
    v44 = a9;
    goto LABEL_54;
  }

  v45 = v40 + v37 - 1;
  v46 = v39 + v31;
  if ((*v61 * v45 + 2 * (v39 + v31)) > *a9)
  {
    v57 = v36;
    v41 = v30;
    v42 = v31;
    v43 = v9;
    v44 = a9;
    goto LABEL_54;
  }

  v47 = v60;
  if (*(v60 + 8) && v61[1] * ((v40 + v37 + 1) / 2 - 1) + 4 * ((v46 + 1 + ((v46 + 1) >> 63)) >> 1) > a9[1])
  {
    v57 = v36;
    v41 = v30;
    v42 = v31;
    v43 = v9;
    v44 = a9;
    goto LABEL_54;
  }

  if (*(v60 + 16) && (2 * v46 + v61[2] * v45) > a9[2])
  {
    v57 = v36;
    v41 = v30;
    v42 = v31;
    v43 = v9;
    v44 = a9;
LABEL_54:
    fig_log_get_emitter();
    v24 = FigSignalErrorAtGM();
    v47 = v60;
    v28 = v44;
    v9 = v43;
    v31 = v42;
    v30 = v41;
    v36 = v57;
    if (v24)
    {
      goto LABEL_60;
    }
  }

  *v23 = v9;
  *(v23 + 4) = v62;
  v48 = v64;
  *(v23 + 12) = v65;
  *(v23 + 20) = v39;
  *(v23 + 28) = v40;
  *(v23 + 36) = v30;
  *(v23 + 44) = v36;
  v23[11] = v48;
  v23[12] = v39;
  v23[13] = v40;
  v23[14] = v31;
  v49 = v66;
  v23[7] = v59;
  v23[8] = v49;
  v50 = v63;
  v23[9] = v67;
  v23[10] = v50;
  v23[15] = v37;
  v23[16] = v47;
  v23[17] = v61;
  v23[18] = v28;
  v23[19] = v58;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v9, global_queue, v23, vt_Copy_BGRA_TRC_Tone_Mat_TRC_xf420_neon_fp16_GCD);
  if (!v9)
  {
    return 0;
  }

  v52 = (v23 + 20);
  v53 = v9;
  while (1)
  {
    v54 = *v52++;
    v24 = v54;
    if (v54)
    {
      break;
    }

    if (!--v53)
    {
      v24 = 0;
      break;
    }
  }

LABEL_60:
  if (v9 == 255)
  {
    goto LABEL_61;
  }

  return v24;
}

uint64_t vt_Copy_BGRA_TRC_Tone_Mat_TRC_xf420_neon_fp16_GCD(unsigned __int8 *a1, uint64_t a2, double a3, float16x8_t a4, float16x8_t _Q2, float16x8_t a6)
{
  v8 = 0;
  v9 = *(a1 + 36);
  v10 = *(a1 + 24);
  v11 = 2 * *a1;
  v12 = *(a1 + 44) + 2 * (*(a1 + 28) * a2 / v11);
  v14 = *(a1 + 13);
  v13 = *(a1 + 14);
  v15 = v14 * a2;
  v16 = *(a1 + 19);
  v17 = *(a1 + 15);
  v18 = *(a1 + 16);
  v19 = *(a1 + 17);
  v20 = **(a1 + 8);
  v21 = **(a1 + 7);
  v22 = *v19;
  v23 = v19[1];
  v301 = v22;
  v25 = *v18;
  v24 = v18[1];
  v26 = *(v16 + 128);
  v364 = *(v16 + 154);
  _Q2.i32[0] = v364;
  v27 = v15 / v11;
  v28 = v17 + 2 * (v15 / v11);
  v29 = *(v16 + 144);
  v30 = *(v16 + 132);
  v31 = v14 + v15;
  v32 = *(v16 + 146);
  v33 = *(v16 + 148);
  result = *(v16 + 150);
  v35 = *(v16 + 152);
  v356 = *(v16 + 36);
  v355 = *(v16 + 40);
  v36.i32[0] = *(v16 + 48);
  v354 = *(v16 + 44);
  v38.i32[0] = *(v16 + 52);
  v37.i32[0] = *(v16 + 56);
  v39 = *(v16 + 60);
  v40 = *(v16 + 64);
  v41 = v31 / v11 - v27;
  v302 = v20;
  v42 = v20 * v12;
  a4.i32[0] = *(v16 + 68);
  v353 = *(v16 + 72);
  v352 = *(v16 + 76);
  v351 = *(v16 + 80);
  v350 = *(v16 + 84);
  v349 = *(v16 + 88);
  _Q4.i32[0] = *(v16 + 92);
  v348 = *_Q4.i32;
  v347 = *(v16 + 96);
  v308 = v23;
  v44 = v23 * (v28 / 2);
  v45 = vmovl_u8(*_Q2.i8);
  v346 = *(v16 + 100);
  v345 = *(v16 + 104);
  _S19 = *(v16 + 108);
  _S20 = *(v16 + 112);
  _S21 = *(v16 + 116);
  _S22 = *(v16 + 120);
  _Q2.i64[1] = 0;
  v362 = 0u;
  v363 = 0u;
  do
  {
    v50 = 0;
    v51 = *(&v364 + v8);
    v52 = *(&v362 + v8);
    do
    {
      v361 = v52;
      *(&v361 | v50 & 7) = v51 + 4 * v50;
      v52 = v361;
      ++v50;
    }

    while (v50 != 8);
    *(&v362 + v8++) = v361;
  }

  while (v8 != 4);
  v307 = 2 * v41;
  v54 = v301;
  v53 = v302;
  if (2 * v41 >= 1)
  {
    _S17 = 8191.0 / v26;
    v343 = v29;
    v341 = v33;
    v359 = result;
    v56 = v35;
    v36.i32[1] = v39;
    __asm { FMOV            V2.2S, #0.25 }

    *a6.i8 = vmul_f32(v36, *_Q2.i8);
    v38.i32[1] = v40;
    v37.i32[1] = a4.i32[0];
    *a4.i8 = vmul_f32(v38, *_Q2.i8);
    *_Q2.i8 = vmul_f32(v37, *_Q2.i8);
    _S0 = v356;
    __asm { FCVT            H8, S0 }

    _S0 = v355;
    __asm { FCVT            H10, S0 }

    _S0 = v354;
    __asm { FCVT            H12, S0 }

    v67 = vdupq_lane_s32(vcvt_f16_f32(a6), 0);
    v68 = vdupq_lane_s32(vcvt_f16_f32(a4), 0);
    v333 = v10 - 7;
    v69 = v16 + 16548;
    v70 = v16 + 32932;
    v71 = v16 + 164;
    _D0 = vcvt_f16_f32(_Q2);
    v73 = vdupq_lane_s32(_D0, 0);
    __asm
    {
      FCVT            H4, S19
      FCVT            H5, S20
      FCVT            H7, S21
      FCVT            H9, S22
    }

    *_D0.i32 = v353;
    __asm { FCVT            H13, S0 }

    *_D0.i32 = v352;
    __asm { FCVT            H14, S0 }

    *_D0.i32 = v351;
    __asm { FCVT            H15, S0 }

    *_D0.i32 = v350;
    __asm { FCVT            H0, S0 }

    v324 = *_D0.i16;
    *_D0.i32 = v349;
    __asm { FCVT            H0, S0 }

    v323 = *_D0.i16;
    *_D0.i16 = v29;
    v78 = vdupq_lane_s16(_D0, 0);
    *_D0.i16 = v32;
    v79 = vdupq_lane_s16(_D0, 0);
    *_D0.i16 = v33;
    v80 = vdupq_lane_s16(_D0, 0);
    *_D0.i16 = result;
    LODWORD(result) = 0;
    _Q0 = vdupq_lane_s16(_D0, 0);
    v319 = _Q0;
    *_Q0.i32 = v348;
    __asm { FCVT            H0, S0 }

    v318 = _Q0;
    *_Q0.i16 = v35;
    v317 = vdupq_lane_s16(*_Q0.i8, 0);
    v298 = v45.u16[1];
    *_Q0.i32 = v347;
    __asm { FCVT            H0, S0 }

    v316 = *_Q0.i16;
    v82 = 16 - v30;
    v83 = v24 + v44;
    v84 = v10 & 0xFFFFFFFE;
    if (v30 >= 0x11)
    {
      v82 = 0;
    }

    v85 = (v83 + 2 * v13);
    v86 = (v25 + v301 * v28 + 2 * v13);
    v87 = (v21 + v42 + 4 * v9);
    v88 = v82;
    v296 = v10 & 0xFFFFFFF8;
    _S0 = v346;
    __asm { FCVT            H0, S0 }

    v315 = *&_S0;
    _S0 = v345;
    __asm { FCVT            H0, S0 }

    v314 = *&_S0;
    __asm { FCVT            H0, S17 }

    v313 = *&_S0;
    v312 = vdupq_n_s16(v82);
    v338 = *a4.i32;
    v339 = *a6.i32;
    a6.i32[0] = v68.i32[0];
    v311 = *&a6.i32[1];
    v310 = *&a4.i32[1];
    v336 = _H8;
    v92.i32[0] = _Q2.i32[1];
    v309 = *&_Q2.i32[1];
    v337 = *_Q2.i32;
    v299 = v10 & 0xFFFFFFFE;
    v300 = v10;
    v344 = 8191.0 / v26;
    v342 = v32;
    v340 = _S20;
    v335 = _H12;
    v334 = v67;
    v331 = *_Q4.i16;
    v332 = v73;
    v329 = _H7;
    v330 = _H5;
    v327 = _H13;
    v328 = _H9;
    v325 = _Q15;
    v326 = _Q14;
    v321 = v79;
    v322 = v78;
    v320 = v80;
    v297 = v82;
    do
    {
      v93 = v87 + v53;
      v94 = &v86->i8[v54];
      if (v10 < 8)
      {
        v180 = 0;
        v98 = (v86 + v54);
        v97 = v85;
        v96 = (v87 + v53);
      }

      else
      {
        v306 = result;
        v95 = 0;
        v358 = *(&v362 + 8);
        v357 = v363;
        v304 = v87 + v53;
        v305 = v85;
        v96 = (v87 + v53);
        v97 = v85;
        v303 = &v86->i8[v54];
        v98 = (v86 + v54);
        v99.i64[0] = 0x9000900090009000;
        v99.i64[1] = 0x9000900090009000;
        do
        {
          v360 = v95;
          v365.val[0].i64[0] = *v87;
          v100 = v87[1];
          v101.i64[0] = v87[2];
          v102 = v87[3];
          v87 += 4;
          v365.val[0].i64[1] = v100;
          v101.i64[1] = v102;
          v365.val[1] = v101;
          v103 = vqtbl2_s8(v365, *&v362);
          v104 = vqtbl2_s8(v365, v358);
          *v365.val[0].i8 = vqtbl2_s8(v365, v357);
          *v365.val[1].i8 = vzip1_s8(v103, 0);
          *v105.i8 = vzip1_s8(v104, 0);
          v365.val[1].u64[1] = vzip2_s8(v103, 0);
          v105.u64[1] = vzip2_s8(v104, 0);
          *v101.i8 = vzip1_s8(*v365.val[0].i8, 0);
          v101.u64[1] = vzip2_s8(*v365.val[0].i8, 0);
          v365.val[0] = vcvtq_f16_u16(v365.val[1]);
          v365.val[1] = vcvtq_f16_u16(v105);
          v106 = vqtbl2_s8(*v96, *&v362);
          *v105.i8 = vzip1_s8(v106, 0);
          v105.u64[1] = vzip2_s8(v106, 0);
          v107 = vqtbl2_s8(*v96, v358);
          v108 = vqtbl2_s8(*v96, v357);
          *v109.i8 = vzip1_s8(v107, 0);
          v109.u64[1] = vzip2_s8(v107, 0);
          *v110.i8 = vzip1_s8(v108, 0);
          v110.u64[1] = vzip2_s8(v108, 0);
          v365.val[0] = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmulq_n_f16(v365.val[0], v313), 0), v99));
          v111.i16[0] = *(v71 + 2 * v365.val[0].u16[0]);
          v112 = (v71 + 2 * v365.val[0].u16[1]);
          v113 = (v71 + 2 * v365.val[0].u16[2]);
          v114 = (v71 + 2 * v365.val[0].u16[3]);
          v115 = (v71 + 2 * v365.val[0].u16[4]);
          v116 = (v71 + 2 * v365.val[0].u16[5]);
          v117 = (v71 + 2 * v365.val[0].u16[6]);
          v118 = v365.val[0].u16[7];
          v365.val[0] = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmulq_n_f16(v365.val[1], v313), 0), v99));
          v119 = (v71 + 2 * v118);
          v120.i16[0] = *(v71 + 2 * v365.val[0].u16[0]);
          v121 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmulq_n_f16(vcvtq_f16_u16(v101), v313), 0), v99));
          v122.i16[0] = *(v71 + 2 * v121.u16[0]);
          v123 = (v71 + 2 * v121.u16[1]);
          v124 = (v71 + 2 * v121.u16[2]);
          v125 = (v71 + 2 * v121.u16[3]);
          v126 = (v71 + 2 * v121.u16[4]);
          v127 = (v71 + 2 * v121.u16[5]);
          v128 = (v71 + 2 * v121.u16[6]);
          v111.i16[1] = *v112;
          v129 = (v71 + 2 * v121.u16[7]);
          v130 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmulq_n_f16(vcvtq_f16_u16(v105), v313), 0), v99));
          v120.i16[1] = *(v71 + 2 * v365.val[0].u16[1]);
          v131.i16[0] = *(v71 + 2 * v130.u16[0]);
          v122.i16[1] = *v123;
          v111.i16[2] = *v113;
          v120.i16[2] = *(v71 + 2 * v365.val[0].u16[2]);
          v132 = (v71 + 2 * v130.u16[3]);
          v133 = (v71 + 2 * v130.u16[4]);
          v122.i16[2] = *v124;
          v131.i16[1] = *(v71 + 2 * v130.u16[1]);
          v111.i16[3] = *v114;
          v134 = (v71 + 2 * v130.u16[5]);
          v135 = (v71 + 2 * v130.u16[6]);
          v120.i16[3] = *(v71 + 2 * v365.val[0].u16[3]);
          ++v96;
          v131.i16[2] = *(v71 + 2 * v130.u16[2]);
          v122.i16[3] = *v125;
          v136 = (v71 + 2 * v130.u16[7]);
          v137 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmulq_n_f16(vcvtq_f16_u16(v109), v313), 0), v99));
          v131.i16[3] = *v132;
          v138.i16[0] = *(v71 + 2 * v137.u16[0]);
          v111.i16[4] = *v115;
          v120.i16[4] = *(v71 + 2 * v365.val[0].u16[4]);
          v122.i16[4] = *v126;
          v131.i16[4] = *v133;
          v138.i16[1] = *(v71 + 2 * v137.u16[1]);
          v111.i16[5] = *v116;
          v139 = (v71 + 2 * v137.u16[6]);
          v120.i16[5] = *(v71 + 2 * v365.val[0].u16[5]);
          v138.i16[2] = *(v71 + 2 * v137.u16[2]);
          v122.i16[5] = *v127;
          v138.i16[3] = *(v71 + 2 * v137.u16[3]);
          v138.i16[4] = *(v71 + 2 * v137.u16[4]);
          v131.i16[5] = *v134;
          v140 = (v71 + 2 * v137.u16[7]);
          v138.i16[5] = *(v71 + 2 * v137.u16[5]);
          v111.i16[6] = *v117;
          v141 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmulq_n_f16(vcvtq_f16_u16(v110), v313), 0), v99));
          v120.i16[6] = *(v71 + 2 * v365.val[0].u16[6]);
          v142.i16[0] = *(v71 + 2 * v141.u16[0]);
          v122.i16[6] = *v128;
          v131.i16[6] = *v135;
          v138.i16[6] = *v139;
          v111.i16[7] = *v119;
          v120.i16[7] = *(v71 + 2 * v365.val[0].u16[7]);
          v142.i16[1] = *(v71 + 2 * v141.u16[1]);
          v122.i16[7] = *v129;
          v142.i16[2] = *(v71 + 2 * v141.u16[2]);
          v142.i16[3] = *(v71 + 2 * v141.u16[3]);
          v131.i16[7] = *v136;
          v142.i16[4] = *(v71 + 2 * v141.u16[4]);
          v142.i16[5] = *(v71 + 2 * v141.u16[5]);
          v138.i16[7] = *v140;
          v142.i16[6] = *(v71 + 2 * v141.u16[6]);
          v142.i16[7] = *(v71 + 2 * v141.u16[7]);
          v365.val[0] = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v111, v331), v120, v330), v122, v329), vmaxq_f16(vmaxq_f16(v111, v120), v122), v328), 0), v99));
          v141.i16[0] = *(v69 + 2 * v365.val[0].u16[0]);
          v143 = (v69 + 2 * v365.val[0].u16[2]);
          v144 = (v69 + 2 * v365.val[0].u16[3]);
          v145 = (v69 + 2 * v365.val[0].u16[4]);
          LOWORD(v126) = v365.val[0].i16[6];
          v146 = (v69 + 2 * v365.val[0].u16[5]);
          LOWORD(v125) = v365.val[0].i16[7];
          v141.i16[1] = *(v69 + 2 * v365.val[0].u16[1]);
          v365.val[0] = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v131, v331), v138, v330), v142, v329), vmaxq_f16(vmaxq_f16(v131, v138), v142), v328), 0), v99));
          v141.i16[2] = *v143;
          v365.val[1].i16[0] = *(v69 + 2 * v365.val[0].u16[0]);
          v141.i16[3] = *v144;
          v147 = (v69 + 2 * v125);
          v141.i16[4] = *v145;
          v148 = (v69 + 2 * v365.val[0].u16[3]);
          v141.i16[5] = *v146;
          LOWORD(v125) = v365.val[0].i16[5];
          v141.i16[6] = *(v69 + 2 * v126);
          LOWORD(v126) = v365.val[0].i16[6];
          LOWORD(v124) = v365.val[0].i16[7];
          v141.i16[7] = *v147;
          v149 = (v69 + 2 * v365.val[0].u16[4]);
          v365.val[1].i16[1] = *(v69 + 2 * v365.val[0].u16[1]);
          v365.val[1].i16[2] = *(v69 + 2 * v365.val[0].u16[2]);
          v365.val[0] = vmulq_f16(v111, v141);
          v365.val[1].i16[3] = *v148;
          v365.val[1].i16[4] = *v149;
          v150 = vmulq_f16(v120, v141);
          v365.val[1].i16[5] = *(v69 + 2 * v125);
          v365.val[1].i16[6] = *(v69 + 2 * v126);
          v151 = vmulq_f16(v122, v141);
          v365.val[1].i16[7] = *(v69 + 2 * v124);
          v152 = vmulq_f16(v131, v365.val[1]);
          v153 = vmulq_f16(v138, v365.val[1]);
          _Q2 = vmulq_f16(v142, v365.val[1]);
          v120.i16[7] = HIWORD(v326);
          v111.i16[7] = HIWORD(v325);
          v154 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v365.val[0], v327), v150, *&v326), v151, *&v325);
          v122.i16[7] = v318.i16[7];
          v155 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v365.val[0], v324), v150, v323), v151, *v318.i16);
          v156 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v151, v314), v150, v315), v365.val[0], v316);
          v157 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v152, v327), v153, *&v326), _Q2, *&v325);
          v158 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v152, v324), v153, v323), _Q2, *v318.i16);
          v365.val[0] = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v154, 0), v99));
          v111.i16[0] = *(v70 + 2 * v365.val[0].u16[0]);
          v159 = (v70 + 2 * v365.val[0].u16[1]);
          v160 = (v70 + 2 * v365.val[0].u16[2]);
          v161 = (v70 + 2 * v365.val[0].u16[3]);
          v162 = (v70 + 2 * v365.val[0].u16[4]);
          v163 = (v70 + 2 * v365.val[0].u16[5]);
          v164 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v155, 0), v99));
          v165 = (v70 + 2 * v365.val[0].u16[6]);
          v120.i16[0] = *(v70 + 2 * v164.u16[0]);
          v166 = (v70 + 2 * v365.val[0].u16[7]);
          v167 = (v70 + 2 * v164.u16[2]);
          v168 = (v70 + 2 * v164.u16[3]);
          v169 = (v70 + 2 * v164.u16[4]);
          LOWORD(v145) = v164.i16[6];
          LOWORD(v134) = v164.i16[7];
          v170 = (v70 + 2 * v164.u16[5]);
          v365.val[0] = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v156, 0), v99));
          v122.i16[0] = *(v70 + 2 * v365.val[0].u16[0]);
          v111.i16[1] = *v159;
          v120.i16[1] = *(v70 + 2 * v164.u16[1]);
          v122.i16[1] = *(v70 + 2 * v365.val[0].u16[1]);
          v171 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v157, 0), v99));
          v111.i16[2] = *v160;
          v157.i16[0] = *(v70 + 2 * v171.u16[0]);
          v120.i16[2] = *v167;
          v122.i16[2] = *(v70 + 2 * v365.val[0].u16[2]);
          v157.i16[1] = *(v70 + 2 * v171.u16[1]);
          v111.i16[3] = *v161;
          v172 = (v70 + 2 * v365.val[0].u16[4]);
          v120.i16[3] = *v168;
          v157.i16[2] = *(v70 + 2 * v171.u16[2]);
          v122.i16[3] = *(v70 + 2 * v365.val[0].u16[3]);
          v173 = (v70 + 2 * v365.val[0].u16[5]);
          v157.i16[3] = *(v70 + 2 * v171.u16[3]);
          v174 = (v70 + 2 * v365.val[0].u16[6]);
          LOWORD(v159) = v365.val[0].i16[7];
          v111.i16[4] = *v162;
          v365.val[0] = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v158, 0), v99));
          v120.i16[4] = *v169;
          v158.i16[0] = *(v70 + 2 * v365.val[0].u16[0]);
          v122.i16[4] = *v172;
          v157.i16[4] = *(v70 + 2 * v171.u16[4]);
          v158.i16[1] = *(v70 + 2 * v365.val[0].u16[1]);
          v111.i16[5] = *v163;
          v120.i16[5] = *v170;
          v158.i16[2] = *(v70 + 2 * v365.val[0].u16[2]);
          v122.i16[5] = *v173;
          v157.i16[5] = *(v70 + 2 * v171.u16[5]);
          v158.i16[3] = *(v70 + 2 * v365.val[0].u16[3]);
          v111.i16[6] = *v165;
          v120.i16[6] = *(v70 + 2 * v145);
          v158.i16[4] = *(v70 + 2 * v365.val[0].u16[4]);
          v122.i16[6] = *v174;
          v157.i16[6] = *(v70 + 2 * v171.u16[6]);
          v158.i16[5] = *(v70 + 2 * v365.val[0].u16[5]);
          LOWORD(v169) = v365.val[0].i16[7];
          v158.i16[6] = *(v70 + 2 * v365.val[0].u16[6]);
          v175 = (v70 + 2 * v171.u16[7]);
          v176 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(_Q2, v314), v153, v315), v152, v316), 0), v99));
          v365.val[0] = vuzp1q_s16(v111, v120);
          _Q2.i16[0] = *(v70 + 2 * v176.u16[0]);
          v111.i16[7] = *v166;
          v120.i16[7] = *(v70 + 2 * v134);
          v177 = vuzp1q_s16(v157, v158);
          _Q2.i16[1] = *(v70 + 2 * v176.u16[1]);
          v157.i16[7] = *v175;
          _Q2.i16[2] = *(v70 + 2 * v176.u16[2]);
          _Q2.i16[3] = *(v70 + 2 * v176.u16[3]);
          _Q2.i16[4] = *(v70 + 2 * v176.u16[4]);
          v158.i16[7] = *(v70 + 2 * v169);
          v79 = v122;
          _Q2.i16[5] = *(v70 + 2 * v176.u16[5]);
          _Q2.i16[6] = *(v70 + 2 * v176.u16[6]);
          v79.i16[7] = *(v70 + 2 * v159);
          _Q4 = _Q2;
          _Q4.i16[7] = *(v70 + 2 * v176.u16[7]);
          *v86++ = vshlq_u16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v78, v111, _H8), v120, _H10), v79, _H12), v78), v80)), v312);
          v178 = vaddq_f16(vaddq_f16(vaddq_f16(v365.val[0], vuzp2q_s16(v111, v120)), v177), vuzp2q_s16(v157, v158));
          v179 = vtrn2q_s16(v79, v79);
          v79.i32[0] = v321.i32[0];
          *v98++ = vshlq_u16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v78, v157, _H8), v158, _H10), _Q4, _H12), v78), v80)), v312);
          a4 = vaddq_f16(vaddq_f16(vtrn1q_s16(v122, v122), v179), vtrn1q_s16(_Q2, _Q2));
          _Q2.i32[0] = v68.i32[0];
          a6 = vmlaq_f16(vmlaq_f16(vmlaq_f16(v321, v67, vzip1q_s16(v178, v178)), v68, vzip2q_s16(v178, v178)), v73, vaddq_f16(a4, vtrn2q_s16(_Q4, _Q4)));
          a4.i32[0] = v317.i32[0];
          v92 = vshlq_u16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(a6, v319), v317)), v312);
          *v97++ = v92;
          v95 = v360 + 8;
        }

        while (v360 + 8 < v333);
        v180 = v296;
        v88 = v297;
        v84 = v299;
        v10 = v300;
        v54 = v301;
        v53 = v302;
        LODWORD(result) = v306;
        v93 = v304;
        v85 = v305;
        v94 = v303;
      }

      if (v180 < v84)
      {
        v181 = 0;
        v182 = v87 + v298;
        v183 = v96 + v298;
        do
        {
          v184 = v181 + v364;
          v92.i8[0] = *(v87 + v184);
          a4.i8[0] = v182[v181];
          v185 = v181 + BYTE2(v364);
          _Q2.i8[0] = *(v87 + v185);
          _H0 = *(v71 + 2 * llroundf(fminf(fmaxf(_S17 * v92.u32[0], 0.0), 8191.0)));
          *_Q2.i32 = _S17 * _Q2.u32[0];
          __asm { FCVT            S27, H0 }

          _H0 = *(v71 + 2 * llroundf(fminf(fmaxf(_S17 * a4.u32[0], 0.0), 8191.0)));
          __asm { FCVT            S29, H0 }

          _H0 = *(v71 + 2 * llroundf(fminf(fmaxf(*_Q2.i32, 0.0), 8191.0)));
          __asm { FCVT            S9, H0 }

          v192 = fmaxf(_S27, fmaxf(_S29, _S9));
          v193 = (((_S20 * _S29) + (_S19 * _S27)) + (_S21 * _S9)) + (_S22 * v192);
          v194 = 8191.0;
          if (v193 <= 8191.0)
          {
            v194 = (((_S20 * _S29) + (_S19 * _S27)) + (_S21 * _S9)) + (_S22 * v192);
            if (v193 < 0.0)
            {
              v194 = 0.0;
            }
          }

          LOBYTE(v193) = *(v87 + v184 + 4);
          LOBYTE(v192) = v182[v181 + 4];
          _Q2.i8[0] = *(v87 + v185 + 4);
          _H0 = *(v71 + 2 * llroundf(fminf(fmaxf(_S17 * LODWORD(v193), 0.0), 8191.0)));
          __asm { FCVT            S14, H0 }

          _H0 = *(v71 + 2 * llroundf(fminf(fmaxf(_S17 * LODWORD(v192), 0.0), 8191.0)));
          __asm { FCVT            S0, H0 }

          _H1 = *(v71 + 2 * llroundf(fminf(fmaxf(_S17 * _Q2.u32[0], 0.0), 8191.0)));
          __asm { FCVT            S15, H1 }

          v201 = (((_S20 * _S0) + (_S19 * _S14)) + (_S21 * _S15)) + (_S22 * fmaxf(_S14, fmaxf(_S0, _S15)));
          v202 = 8191.0;
          if (v201 <= 8191.0)
          {
            v202 = v201;
            if (v201 < 0.0)
            {
              v202 = 0.0;
            }
          }

          v203 = v96 + v184;
          LOBYTE(v201) = *v203;
          a6.i8[0] = v183[v181];
          v204 = v96 + v185;
          _Q4.i8[0] = *v204;
          _H2 = *(v71 + 2 * llroundf(fminf(fmaxf(_S17 * LODWORD(v201), 0.0), 8191.0)));
          __asm { FCVT            S2, H2 }

          _H3 = *(v71 + 2 * llroundf(fminf(fmaxf(_S17 * a6.u32[0], 0.0), 8191.0)));
          __asm { FCVT            S3, H3 }

          _H4 = *(v71 + 2 * llroundf(fminf(fmaxf(_S17 * _Q4.u32[0], 0.0), 8191.0)));
          __asm { FCVT            S4, H4 }

          v211 = fmaxf(_S2, fmaxf(_S3, _S4));
          v212 = (((_S20 * _S3) + (_S19 * _S2)) + (_S21 * _S4)) + (_S22 * v211);
          v213 = 8191.0;
          if (v212 <= 8191.0)
          {
            v213 = (((_S20 * _S3) + (_S19 * _S2)) + (_S21 * _S4)) + (_S22 * v211);
            if (v212 < 0.0)
            {
              v213 = 0.0;
            }
          }

          LOBYTE(v212) = v203[4];
          LOBYTE(v211) = v183[v181 + 4];
          v79.i8[0] = v204[4];
          _H5 = *(v71 + 2 * llroundf(fminf(fmaxf(_S17 * LODWORD(v212), 0.0), 8191.0)));
          __asm { FCVT            S5, H5 }

          _H7 = *(v71 + 2 * llroundf(fminf(fmaxf(_S17 * LODWORD(v211), 0.0), 8191.0)));
          v217 = llroundf(fminf(fmaxf(_S17 * v79.u32[0], 0.0), 8191.0));
          __asm { FCVT            S17, H7 }

          _H7 = *(v71 + 2 * v217);
          __asm { FCVT            S18, H7 }

          _H7 = *(v69 + 2 * llroundf(v194));
          __asm { FCVT            S7, H7 }

          v223 = _S27 * _S7;
          v224 = _S29 * _S7;
          v225 = _S9 * _S7;
          _H1 = *(v69 + 2 * llroundf(v202));
          __asm { FCVT            S1, H1 }

          v228 = _S14 * _S1;
          v229 = _S0 * _S1;
          v230 = _S15 * _S1;
          _H0 = *(v69 + 2 * llroundf(v213));
          __asm { FCVT            S1, H0 }

          v233 = _S2 * _S1;
          v234 = _S3 * _S1;
          v235 = _S4 * _S1;
          v236 = _S19;
          v237 = _S21;
          v238 = _S22;
          v239 = (((_S20 * _S17) + (_S19 * _S5)) + (_S21 * _S18)) + (_S22 * fmaxf(_S5, fmaxf(_S17, _S18)));
          v240 = 8191.0;
          if (v239 <= 8191.0)
          {
            v240 = v239;
            if (v239 < 0.0)
            {
              v240 = 0.0;
            }
          }

          _H3 = *(v69 + 2 * llroundf(v240));
          __asm { FCVT            S3, H3 }

          _S4 = _S5 * _S3;
          _S5 = _S17 * _S3;
          v245 = _S18 * _S3;
          v246 = ((v352 * v224) + (v223 * v353)) + (v225 * v351);
          v247 = ((v349 * v224) + (v223 * v350)) + (v225 * v348);
          v248 = ((v346 * v224) + (v223 * v347)) + (v225 * v345);
          v249 = ((v352 * v229) + (v228 * v353)) + (v230 * v351);
          v250 = ((v349 * v229) + (v228 * v350)) + (v230 * v348);
          v251 = ((v346 * v229) + (v228 * v347)) + (v230 * v345);
          v252 = ((v352 * v234) + (v233 * v353)) + (v235 * v351);
          v253 = ((v349 * v234) + (v233 * v350)) + (v235 * v348);
          v254 = ((v346 * v234) + (v233 * v347)) + (v235 * v345);
          v255 = ((v352 * _S5) + (_S4 * v353)) + (v245 * v351);
          v256 = ((v349 * _S5) + (_S4 * v350)) + (v245 * v348);
          _S3 = ((v346 * _S5) + (_S4 * v347)) + (v245 * v345);
          _H0 = *(v70 + 2 * llroundf(fminf(fmaxf(v246, 0.0), 8191.0)));
          __asm { FCVT            S0, H0 }

          _H1 = *(v70 + 2 * llroundf(fminf(fmaxf(v247, 0.0), 8191.0)));
          __asm { FCVT            S27, H1 }

          _H1 = *(v70 + 2 * llroundf(fminf(fmaxf(v248, 0.0), 8191.0)));
          _H2 = *(v70 + 2 * llroundf(fminf(fmaxf(v249, 0.0), 8191.0)));
          __asm
          {
            FCVT            S29, H1
            FCVT            S1, H2
          }

          _H2 = *(v70 + 2 * llroundf(fminf(fmaxf(v250, 0.0), 8191.0)));
          __asm { FCVT            S13, H2 }

          _H2 = *(v70 + 2 * llroundf(fminf(fmaxf(v251, 0.0), 8191.0)));
          __asm { FCVT            S9, H2 }

          _H2 = *(v70 + 2 * llroundf(fminf(fmaxf(v252, 0.0), 8191.0)));
          __asm { FCVT            S15, H2 }

          _H2 = *(v70 + 2 * llroundf(fminf(fmaxf(v253, 0.0), 8191.0)));
          __asm { FCVT            S2, H2 }

          LOWORD(_S4) = *(v70 + 2 * llroundf(fminf(fmaxf(v254, 0.0), 8191.0)));
          LOWORD(_S5) = *(v70 + 2 * llroundf(fminf(fmaxf(v255, 0.0), 8191.0)));
          __asm
          {
            FCVT            S14, H4
            FCVT            S4, H5
          }

          LOWORD(_S5) = *(v70 + 2 * llroundf(fminf(fmaxf(v256, 0.0), 8191.0)));
          __asm { FCVT            S5, H5 }

          LOWORD(_S3) = *(v70 + 2 * llroundf(fminf(fmaxf(_S3, 0.0), 8191.0)));
          __asm { FCVT            S3, H3 }

          v278 = (((v355 * _S27) + (v356 * _S0)) + (v354 * _S29)) + v343;
          if (v278 < v343)
          {
            v279 = v343;
          }

          else
          {
            v279 = (((v355 * _S27) + (v356 * _S0)) + (v354 * _S29)) + v343;
          }

          v280 = v278 <= v341;
          v281 = (((v355 * _S13) + (v356 * _S1)) + (v354 * _S9)) + v343;
          if (!v280)
          {
            v279 = v341;
          }

          v282 = llroundf(v279);
          if (v281 < v343)
          {
            v283 = v343;
          }

          else
          {
            v283 = (((v355 * _S13) + (v356 * _S1)) + (v354 * _S9)) + v343;
          }

          v280 = v281 <= v341;
          v284 = (((v355 * _S2) + (v356 * _S15)) + (v354 * _S14)) + v343;
          if (!v280)
          {
            v283 = v341;
          }

          v285 = llroundf(v283);
          if (v284 < v343)
          {
            v286 = v343;
          }

          else
          {
            v286 = (((v355 * _S2) + (v356 * _S15)) + (v354 * _S14)) + v343;
          }

          v280 = v284 <= v341;
          v287 = (((v355 * _S5) + (v356 * _S4)) + (v354 * _S3)) + v343;
          if (!v280)
          {
            v286 = v341;
          }

          v288 = llroundf(v286);
          if (v287 < v343)
          {
            *v79.i32 = v343;
          }

          else
          {
            *v79.i32 = (((v355 * _S5) + (v356 * _S4)) + (v354 * _S3)) + v343;
          }

          if (v287 <= v341)
          {
            v289 = *v79.i32;
          }

          else
          {
            v289 = v341;
          }

          v290 = ((_S0 + _S1) + _S15) + _S4;
          v291 = ((_S27 + _S13) + _S2) + _S5;
          v86->i16[0] = v282 << v88;
          v86->i16[1] = v285 << v88;
          v98->i16[0] = v288 << v88;
          v98->i16[1] = llroundf(v289) << v88;
          v292 = ((_S29 + _S9) + _S14) + _S3;
          v293 = ((v342 + (v290 * v339)) + (v291 * v338)) + (v292 * v337);
          *a6.i32 = v56;
          if (v293 <= v56)
          {
            *a6.i32 = ((v342 + (v290 * v339)) + (v291 * v338)) + (v292 * v337);
            if (v293 < v359)
            {
              *a6.i32 = v359;
            }
          }

          *_Q4.i32 = v310;
          *v92.i32 = ((v342 + (v290 * v311)) + (v291 * v310)) + (v292 * v309);
          v97->i16[0] = llroundf(*a6.i32) << v88;
          *a4.i32 = v56;
          _S17 = v344;
          _Q2.i32[0] = v334.i32[0];
          _H12 = v335;
          v80 = v320;
          if (*v92.i32 <= v56)
          {
            a4.i32[0] = v92.i32[0];
            if (*v92.i32 < v359)
            {
              *a4.i32 = v359;
            }
          }

          v97->i16[1] = llroundf(*a4.i32) << v88;
          v97 = (v97 + 4);
          v180 += 2;
          v181 += 8;
          v86 = (v86 + 4);
          v98 = (v98 + 4);
          _S19 = v236;
          _S20 = v340;
          _S21 = v237;
          _S22 = v238;
          _H8 = v336;
          v73 = v332;
          v78 = v322;
          v67 = v334;
        }

        while (v180 < v84);
      }

      v87 = &v93[v53];
      v86 = &v94[v54];
      v85 = (v85 + v308);
      result = (result + 2);
    }

    while (result < v307);
  }

  *&a1[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_BGRA_TRC_Tone_Mat_TRC_xf420(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4, void *a5, uint64_t *a6, uint64_t a7, void *a8, void *a9)
{
  v60 = a7;
  v61 = a8;
  v66 = a4;
  v67 = a5;
  v59 = a3;
  v68 = *MEMORY[0x1E69E9840];
  v58 = a1;
  v9 = *(a1 + 162);
  v10 = a2[1];
  v12 = a2[2];
  v11 = a2[3];
  v14 = a2[4];
  v13 = a2[5];
  v15 = *a6;
  v62 = *a2;
  v63 = v15;
  v16 = a6[1];
  v17 = a6[2];
  v18 = a6[3];
  v19 = a6[4];
  v20 = a6[5];
  v64 = v16;
  v65 = v10;
  v22 = v13 + v11 != v10 || v20 + v18 != v16;
  LODWORD(v57) = v22;
  if (v9 == 255)
  {
    v23 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v23)
    {
      v24 = 0;
LABEL_61:
      free(v23);
      return v24;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v9 + 160, a3, a4);
    v23 = (&v56 - v25);
    bzero(&v56 - v25, v26);
  }

  v27 = v17 - 1;
  v28 = a9;
  v29 = v12 - 1;
  if (v19)
  {
    v30 = v14 + 1;
  }

  else
  {
    v29 = v12;
    v30 = v14;
  }

  if (v19)
  {
    v31 = v19 + 1;
  }

  else
  {
    v27 = v17;
    v31 = v19;
  }

  v32 = v29 - (v27 & 1);
  v33 = v27 & 0xFFFFFFFFFFFFFFFELL;
  v34 = v18 - 1;
  v35 = v11 - 1;
  if (v20)
  {
    v36 = v13 + 1;
  }

  else
  {
    v35 = v11;
    v36 = v13;
  }

  if (v20)
  {
    v37 = v20 + 1;
  }

  else
  {
    v34 = v18;
    v37 = v20;
  }

  if (v34)
  {
    if ((v57 & 1) != 0 || (*v66 * (v35 + 1 + v36)) > *v67 || (v38 = v34 + 1 + v37, (*v61 * v38) > *a9) || (v61[1] * (v38 / 2)) > a9[1] || (v61[2] * v38) > a9[2])
    {
      --v34;
      --v35;
    }

    else
    {
      ++v64;
      ++v65;
      ++v35;
      ++v34;
    }
  }

  if (v32 + v30 > v62)
  {
    v32 = v62 - v30;
  }

  if (v33 + v31 > v63)
  {
    v33 = v63 - v31;
  }

  if (v35 + v36 > v65)
  {
    v35 = v65 - v36;
  }

  if (v34 + v37 > v64)
  {
    v34 = v64 - v37;
  }

  if (v32 >= v33)
  {
    v39 = v33;
  }

  else
  {
    v39 = v32;
  }

  if (v35 >= v34)
  {
    v40 = v34;
  }

  else
  {
    v40 = v35;
  }

  if (((v36 + v40 - 1) * *v66 + 4 * (v39 + v30)) > *v67)
  {
    v57 = v36;
    v41 = v30;
    v42 = v31;
    v43 = v9;
    v44 = a9;
    goto LABEL_54;
  }

  v45 = v40 + v37 - 1;
  v46 = v39 + v31;
  if ((*v61 * v45 + 2 * (v39 + v31)) > *a9)
  {
    v57 = v36;
    v41 = v30;
    v42 = v31;
    v43 = v9;
    v44 = a9;
    goto LABEL_54;
  }

  v47 = v60;
  if (*(v60 + 8) && v61[1] * ((v40 + v37 + 1) / 2 - 1) + 4 * ((v46 + 1 + ((v46 + 1) >> 63)) >> 1) > a9[1])
  {
    v57 = v36;
    v41 = v30;
    v42 = v31;
    v43 = v9;
    v44 = a9;
    goto LABEL_54;
  }

  if (*(v60 + 16) && (2 * v46 + v61[2] * v45) > a9[2])
  {
    v57 = v36;
    v41 = v30;
    v42 = v31;
    v43 = v9;
    v44 = a9;
LABEL_54:
    fig_log_get_emitter();
    v24 = FigSignalErrorAtGM();
    v47 = v60;
    v28 = v44;
    v9 = v43;
    v31 = v42;
    v30 = v41;
    v36 = v57;
    if (v24)
    {
      goto LABEL_60;
    }
  }

  *v23 = v9;
  *(v23 + 4) = v62;
  v48 = v64;
  *(v23 + 12) = v65;
  *(v23 + 20) = v39;
  *(v23 + 28) = v40;
  *(v23 + 36) = v30;
  *(v23 + 44) = v36;
  v23[11] = v48;
  v23[12] = v39;
  v23[13] = v40;
  v23[14] = v31;
  v49 = v66;
  v23[7] = v59;
  v23[8] = v49;
  v50 = v63;
  v23[9] = v67;
  v23[10] = v50;
  v23[15] = v37;
  v23[16] = v47;
  v23[17] = v61;
  v23[18] = v28;
  v23[19] = v58;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v9, global_queue, v23, vt_Copy_BGRA_TRC_Tone_Mat_TRC_xf420_GCD);
  if (!v9)
  {
    return 0;
  }

  v52 = (v23 + 20);
  v53 = v9;
  while (1)
  {
    v54 = *v52++;
    v24 = v54;
    if (v54)
    {
      break;
    }

    if (!--v53)
    {
      v24 = 0;
      break;
    }
  }

LABEL_60:
  if (v9 == 255)
  {
    goto LABEL_61;
  }

  return v24;
}

unsigned __int8 *vt_Copy_BGRA_TRC_Tone_Mat_TRC_xf420_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, float a5, float a6)
{
  v6 = 2 * *result;
  v7 = *(result + 13);
  v8 = v7 * a2 / v6;
  v9 = 2 * ((v7 + v7 * a2) / v6 - v8);
  if (v9 >= 1)
  {
    v10 = 0;
    v11 = *(result + 19);
    v12 = *(result + 24) & 0xFFFFFFFE;
    v13 = **(result + 8);
    v14 = *(result + 16);
    v15 = *(result + 17);
    v16 = *v15;
    v17 = v15[1];
    v18 = 8191.0 / *(v11 + 128);
    LOWORD(a5) = *(v11 + 144);
    v19 = LODWORD(a5);
    LOWORD(a6) = *(v11 + 146);
    v20 = LODWORD(a6);
    LOWORD(a6) = *(v11 + 148);
    v21 = LODWORD(a6);
    LOWORD(a6) = *(v11 + 150);
    *&v22 = LODWORD(a6);
    v195 = *&v22;
    LOWORD(v22) = *(v11 + 152);
    v23 = v22;
    v191 = *(v11 + 40);
    v192 = *(v11 + 36);
    v190 = *(v11 + 44);
    v188 = *(v11 + 52) * 0.25;
    v189 = *(v11 + 48) * 0.25;
    v186 = *(v11 + 60) * 0.25;
    v187 = *(v11 + 56) * 0.25;
    v184 = *(v11 + 72);
    v185 = *(v11 + 64) * 0.25;
    v182 = *(v11 + 76);
    v183 = *(v11 + 68) * 0.25;
    v24 = *(v11 + 88);
    v180 = *(v11 + 84);
    v181 = *(v11 + 80);
    v178 = *(v11 + 92);
    v179 = *&v24;
    v26 = *(v11 + 100);
    v25 = *(v11 + 104);
    v176 = v26;
    v177 = *(v11 + 96);
    v175 = v25;
    v27 = v11 + 164;
    v28 = v11 + 16548;
    v29 = v11 + 32932;
    v30 = *(v11 + 108);
    v31 = *(v11 + 112);
    v32 = *(v11 + 116);
    v33 = *(v11 + 120);
    v34 = *(result + 14);
    v35 = *(result + 15) + 2 * v8;
    v36 = *(result + 44) + 2 * (*(result + 28) * a2 / v6);
    v38 = *v14;
    v37 = v14[1];
    v39 = (v38 + v16 * v35 + 2 * v34);
    v40 = **(result + 7) + v36 * v13 + 4 * *(result + 36);
    v41 = *(v11 + 132);
    v42 = 16 - v41;
    if (v41 >= 0x11)
    {
      v42 = 0;
    }

    v43 = *(v11 + 156);
    v44 = v37 + v17 * (v35 / 2);
    v45 = *(v11 + 155);
    v46 = *(v11 + 154);
    v47 = v44 + 2 * v34;
    v48 = v42;
    v193 = v23;
    v194 = v20;
    v173 = v30;
    v174 = v31;
    v172 = v32;
    do
    {
      v49 = v40 + v13;
      v50 = &v39[v16];
      if (v12 >= 1)
      {
        v51 = 0;
        v52 = v40 + v13;
        v53 = &v39[v16];
        do
        {
          LOBYTE(v25) = *(v40 + v46);
          LOBYTE(v26) = *(v40 + v45);
          LOBYTE(v24) = *(v40 + v43);
          _H3 = *(v27 + 2 * llroundf(fminf(fmaxf(v18 * LODWORD(v25), 0.0), 8191.0)));
          v55 = v18 * v24;
          __asm { FCVT            S14, H3 }

          _H3 = *(v27 + 2 * llroundf(fminf(fmaxf(v18 * LODWORD(v26), 0.0), 8191.0)));
          __asm { FCVT            S15, H3 }

          _H3 = *(v27 + 2 * llroundf(fminf(fmaxf(v55, 0.0), 8191.0)));
          __asm { FCVT            S18, H3 }

          v65 = fmaxf(_S14, fmaxf(_S15, _S18));
          v66 = (((v31 * _S15) + (v30 * _S14)) + (v32 * _S18)) + (v33 * v65);
          v67 = 8191.0;
          if (v66 <= 8191.0)
          {
            v67 = (((v31 * _S15) + (v30 * _S14)) + (v32 * _S18)) + (v33 * v65);
            if (v66 < 0.0)
            {
              v67 = 0.0;
            }
          }

          LOBYTE(v66) = *(v40 + 4 + v46);
          LOBYTE(v65) = *(v40 + 4 + v45);
          LOBYTE(v55) = *(v40 + 4 + v43);
          _H3 = *(v27 + 2 * llroundf(fminf(fmaxf(v18 * LODWORD(v66), 0.0), 8191.0)));
          __asm { FCVT            S20, H3 }

          _H3 = *(v27 + 2 * llroundf(fminf(fmaxf(v18 * LODWORD(v65), 0.0), 8191.0)));
          __asm { FCVT            S21, H3 }

          _H3 = *(v27 + 2 * llroundf(fminf(fmaxf(v18 * LODWORD(v55), 0.0), 8191.0)));
          __asm { FCVT            S22, H3 }

          v74 = fmaxf(_S20, fmaxf(_S21, _S22));
          v75 = (((v31 * _S21) + (v30 * _S20)) + (v32 * _S22)) + (v33 * v74);
          v76 = 8191.0;
          if (v75 <= 8191.0)
          {
            v76 = (((v31 * _S21) + (v30 * _S20)) + (v32 * _S22)) + (v33 * v74);
            if (v75 < 0.0)
            {
              v76 = 0.0;
            }
          }

          LOBYTE(v75) = *(v52 + v46);
          LOBYTE(v74) = *(v52 + v45);
          *&v77 = LODWORD(v74);
          _S6 = v18 * *&v77;
          LOBYTE(v77) = *(v52 + v43);
          _H3 = *(v27 + 2 * llroundf(fminf(fmaxf(v18 * LODWORD(v75), 0.0), 8191.0)));
          v80 = v18 * v77;
          __asm { FCVT            S5, H3 }

          _H3 = *(v27 + 2 * llroundf(fminf(fmaxf(_S6, 0.0), 8191.0)));
          __asm { FCVT            S3, H3 }

          LOWORD(_S6) = *(v27 + 2 * llroundf(fminf(fmaxf(v80, 0.0), 8191.0)));
          __asm { FCVT            S7, H6 }

          v85 = fmaxf(_S5, fmaxf(_S3, _S7));
          v86 = (((v31 * _S3) + (v30 * _S5)) + (v32 * _S7)) + (v33 * v85);
          v87 = 8191.0;
          if (v86 <= 8191.0)
          {
            v87 = (((v31 * _S3) + (v30 * _S5)) + (v32 * _S7)) + (v33 * v85);
            if (v86 < 0.0)
            {
              v87 = 0.0;
            }
          }

          LOBYTE(v86) = *(v52 + 4 + v46);
          LOBYTE(v85) = *(v52 + 4 + v45);
          *&v88 = LODWORD(v85);
          v89 = v18 * *&v88;
          LOBYTE(v88) = *(v52 + 4 + v43);
          _H6 = *(v27 + 2 * llroundf(fminf(fmaxf(v18 * LODWORD(v86), 0.0), 8191.0)));
          v91 = v18 * v88;
          __asm { FCVT            S16, H6 }

          _H6 = *(v27 + 2 * llroundf(fminf(fmaxf(v89, 0.0), 8191.0)));
          __asm { FCVT            S23, H6 }

          _H6 = *(v27 + 2 * llroundf(fminf(fmaxf(v91, 0.0), 8191.0)));
          __asm { FCVT            S25, H6 }

          _H6 = *(v28 + 2 * llroundf(v67));
          __asm { FCVT            S19, H6 }

          v99 = _S14 * _S19;
          v100 = _S15 * _S19;
          v101 = _S18 * _S19;
          _H18 = *(v28 + 2 * llroundf(v76));
          __asm { FCVT            S19, H18 }

          v104 = _S20 * _S19;
          v105 = _S21 * _S19;
          v106 = _S22 * _S19;
          _H17 = *(v28 + 2 * llroundf(v87));
          __asm { FCVT            S21, H17 }

          v109 = _S5 * _S21;
          v110 = _S3 * _S21;
          v111 = _S7 * _S21;
          v112 = (((v31 * _S23) + (v30 * _S16)) + (v32 * _S25)) + (v33 * fmaxf(_S16, fmaxf(_S23, _S25)));
          v113 = 8191.0;
          if (v112 <= 8191.0)
          {
            v113 = v112;
            if (v112 < 0.0)
            {
              v113 = 0.0;
            }
          }

          _H7 = *(v28 + 2 * llroundf(v113));
          __asm { FCVT            S7, H7 }

          v116 = _S16 * _S7;
          v117 = _S23 * _S7;
          v118 = _S25 * _S7;
          v119 = ((v182 * v100) + (v99 * v184)) + (v101 * v181);
          v120 = ((v179 * v100) + (v99 * v180)) + (v101 * v178);
          _S6 = ((v176 * v100) + (v99 * v177)) + (v101 * v175);
          v122 = ((v182 * v105) + (v104 * v184)) + (v106 * v181);
          v123 = ((v179 * v105) + (v104 * v180)) + (v106 * v178);
          v124 = ((v176 * v105) + (v104 * v177)) + (v106 * v175);
          v125 = ((v182 * v110) + (v109 * v184)) + (v111 * v181);
          v126 = ((v179 * v110) + (v109 * v180)) + (v111 * v178);
          _S3 = ((v176 * v110) + (v109 * v177)) + (v111 * v175);
          v128 = ((v182 * v117) + (v116 * v184)) + (v118 * v181);
          v129 = ((v179 * v117) + (v116 * v180)) + (v118 * v178);
          v130 = ((v176 * v117) + (v116 * v177)) + (v118 * v175);
          _H5 = *(v29 + 2 * llroundf(fminf(fmaxf(v119, 0.0), 8191.0)));
          __asm { FCVT            S18, H5 }

          _H5 = *(v29 + 2 * llroundf(fminf(fmaxf(v120, 0.0), 8191.0)));
          __asm { FCVT            S19, H5 }

          _H5 = *(v29 + 2 * llroundf(fminf(fmaxf(_S6, 0.0), 8191.0)));
          LOWORD(_S6) = *(v29 + 2 * llroundf(fminf(fmaxf(v122, 0.0), 8191.0)));
          __asm
          {
            FCVT            S20, H5
            FCVT            S21, H6
          }

          _H5 = *(v29 + 2 * llroundf(fminf(fmaxf(v123, 0.0), 8191.0)));
          __asm { FCVT            S24, H5 }

          _H5 = *(v29 + 2 * llroundf(fminf(fmaxf(v124, 0.0), 8191.0)));
          __asm { FCVT            S22, H5 }

          _H5 = *(v29 + 2 * llroundf(fminf(fmaxf(v125, 0.0), 8191.0)));
          __asm { FCVT            S15, H5 }

          _H5 = *(v29 + 2 * llroundf(fminf(fmaxf(v126, 0.0), 8191.0)));
          __asm { FCVT            S5, H5 }

          LOWORD(_S3) = *(v29 + 2 * llroundf(fminf(fmaxf(_S3, 0.0), 8191.0)));
          LOWORD(_S6) = *(v29 + 2 * llroundf(fminf(fmaxf(v128, 0.0), 8191.0)));
          __asm
          {
            FCVT            S14, H3
            FCVT            S7, H6
          }

          LOWORD(_S3) = *(v29 + 2 * llroundf(fminf(fmaxf(v129, 0.0), 8191.0)));
          v148 = llroundf(fminf(fmaxf(v130, 0.0), 8191.0));
          __asm { FCVT            S16, H3 }

          LOWORD(_S3) = *(v29 + 2 * v148);
          __asm { FCVT            S3, H3 }

          v151 = (((v191 * _S19) + (v192 * _S18)) + (v190 * _S20)) + v19;
          if (v151 < v19)
          {
            v152 = v19;
          }

          else
          {
            v152 = (((v191 * _S19) + (v192 * _S18)) + (v190 * _S20)) + v19;
          }

          v153 = v151 <= v21;
          v154 = (((v191 * _S24) + (v192 * _S21)) + (v190 * _S22)) + v19;
          if (!v153)
          {
            v152 = v21;
          }

          v155 = llroundf(v152);
          if (v154 < v19)
          {
            v156 = v19;
          }

          else
          {
            v156 = (((v191 * _S24) + (v192 * _S21)) + (v190 * _S22)) + v19;
          }

          v153 = v154 <= v21;
          v157 = (((v191 * _S5) + (v192 * _S15)) + (v190 * _S14)) + v19;
          if (!v153)
          {
            v156 = v21;
          }

          v158 = llroundf(v156);
          if (v157 < v19)
          {
            v159 = v19;
          }

          else
          {
            v159 = (((v191 * _S5) + (v192 * _S15)) + (v190 * _S14)) + v19;
          }

          v153 = v157 <= v21;
          v160 = (((v191 * _S16) + (v192 * _S7)) + (v190 * _S3)) + v19;
          if (!v153)
          {
            v159 = v21;
          }

          v161 = llroundf(v159);
          if (v160 < v19)
          {
            v162 = v19;
          }

          else
          {
            v162 = (((v191 * _S16) + (v192 * _S7)) + (v190 * _S3)) + v19;
          }

          if (v160 <= v21)
          {
            v163 = v162;
          }

          else
          {
            v163 = v21;
          }

          v164 = llroundf(v163);
          v165 = ((_S18 + _S21) + _S15) + _S7;
          v166 = ((_S19 + _S24) + _S5) + _S16;
          *v39 = v155 << v48;
          *(v39 + 1) = v158 << v48;
          *v53 = v161 << v48;
          *(v53 + 1) = v164 << v48;
          v167 = ((_S20 + _S22) + _S14) + _S3;
          v168 = ((v194 + (v165 * v189)) + (v166 * v188)) + (v167 * v187);
          v169 = v193;
          if (v168 <= v193)
          {
            v169 = ((v194 + (v165 * v189)) + (v166 * v188)) + (v167 * v187);
            if (v168 < v195)
            {
              v169 = v195;
            }
          }

          v170 = (v47 + 2 * v51);
          v171 = (v194 + (v165 * v186)) + (v166 * v185);
          *&v24 = v183;
          v26 = v171 + (v167 * v183);
          *v170 = llroundf(v169) << v48;
          v25 = v193;
          if (v26 <= v193)
          {
            v25 = v26;
            if (v26 < v195)
            {
              v25 = v195;
            }
          }

          v40 += 8;
          v52 += 8;
          v39 += 4;
          v53 += 4;
          v170[1] = llroundf(v25) << v48;
          v51 += 2;
          v30 = v173;
          v31 = v174;
          v32 = v172;
        }

        while (v51 < v12);
      }

      v40 = v49 + v13;
      v39 = &v50[v16];
      v47 += v17;
      v10 += 2;
    }

    while (v10 < v9);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_BGRA_TRC_Mat_TRC_xf420_neon_fp16(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4, void *a5, uint64_t *a6, uint64_t a7, void *a8, void *a9)
{
  v60 = a7;
  v61 = a8;
  v66 = a4;
  v67 = a5;
  v59 = a3;
  v68 = *MEMORY[0x1E69E9840];
  v58 = a1;
  v9 = *(a1 + 162);
  v10 = a2[1];
  v12 = a2[2];
  v11 = a2[3];
  v14 = a2[4];
  v13 = a2[5];
  v15 = *a6;
  v62 = *a2;
  v63 = v15;
  v16 = a6[1];
  v17 = a6[2];
  v18 = a6[3];
  v19 = a6[4];
  v20 = a6[5];
  v64 = v16;
  v65 = v10;
  v22 = v13 + v11 != v10 || v20 + v18 != v16;
  LODWORD(v57) = v22;
  if (v9 == 255)
  {
    v23 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v23)
    {
      v24 = 0;
LABEL_61:
      free(v23);
      return v24;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v9 + 160, a3, a4);
    v23 = (&v56 - v25);
    bzero(&v56 - v25, v26);
  }

  v27 = v17 - 1;
  v28 = a9;
  v29 = v12 - 1;
  if (v19)
  {
    v30 = v14 + 1;
  }

  else
  {
    v29 = v12;
    v30 = v14;
  }

  if (v19)
  {
    v31 = v19 + 1;
  }

  else
  {
    v27 = v17;
    v31 = v19;
  }

  v32 = v29 - (v27 & 1);
  v33 = v27 & 0xFFFFFFFFFFFFFFFELL;
  v34 = v18 - 1;
  v35 = v11 - 1;
  if (v20)
  {
    v36 = v13 + 1;
  }

  else
  {
    v35 = v11;
    v36 = v13;
  }

  if (v20)
  {
    v37 = v20 + 1;
  }

  else
  {
    v34 = v18;
    v37 = v20;
  }

  if (v34)
  {
    if ((v57 & 1) != 0 || (*v66 * (v35 + 1 + v36)) > *v67 || (v38 = v34 + 1 + v37, (*v61 * v38) > *a9) || (v61[1] * (v38 / 2)) > a9[1] || (v61[2] * v38) > a9[2])
    {
      --v34;
      --v35;
    }

    else
    {
      ++v64;
      ++v65;
      ++v35;
      ++v34;
    }
  }

  if (v32 + v30 > v62)
  {
    v32 = v62 - v30;
  }

  if (v33 + v31 > v63)
  {
    v33 = v63 - v31;
  }

  if (v35 + v36 > v65)
  {
    v35 = v65 - v36;
  }

  if (v34 + v37 > v64)
  {
    v34 = v64 - v37;
  }

  if (v32 >= v33)
  {
    v39 = v33;
  }

  else
  {
    v39 = v32;
  }

  if (v35 >= v34)
  {
    v40 = v34;
  }

  else
  {
    v40 = v35;
  }

  if (((v36 + v40 - 1) * *v66 + 4 * (v39 + v30)) > *v67)
  {
    v57 = v36;
    v41 = v30;
    v42 = v31;
    v43 = v9;
    v44 = a9;
    goto LABEL_54;
  }

  v45 = v40 + v37 - 1;
  v46 = v39 + v31;
  if ((*v61 * v45 + 2 * (v39 + v31)) > *a9)
  {
    v57 = v36;
    v41 = v30;
    v42 = v31;
    v43 = v9;
    v44 = a9;
    goto LABEL_54;
  }

  v47 = v60;
  if (*(v60 + 8) && v61[1] * ((v40 + v37 + 1) / 2 - 1) + 4 * ((v46 + 1 + ((v46 + 1) >> 63)) >> 1) > a9[1])
  {
    v57 = v36;
    v41 = v30;
    v42 = v31;
    v43 = v9;
    v44 = a9;
    goto LABEL_54;
  }

  if (*(v60 + 16) && (2 * v46 + v61[2] * v45) > a9[2])
  {
    v57 = v36;
    v41 = v30;
    v42 = v31;
    v43 = v9;
    v44 = a9;
LABEL_54:
    fig_log_get_emitter();
    v24 = FigSignalErrorAtGM();
    v47 = v60;
    v28 = v44;
    v9 = v43;
    v31 = v42;
    v30 = v41;
    v36 = v57;
    if (v24)
    {
      goto LABEL_60;
    }
  }

  *v23 = v9;
  *(v23 + 4) = v62;
  v48 = v64;
  *(v23 + 12) = v65;
  *(v23 + 20) = v39;
  *(v23 + 28) = v40;
  *(v23 + 36) = v30;
  *(v23 + 44) = v36;
  v23[11] = v48;
  v23[12] = v39;
  v23[13] = v40;
  v23[14] = v31;
  v49 = v66;
  v23[7] = v59;
  v23[8] = v49;
  v50 = v63;
  v23[9] = v67;
  v23[10] = v50;
  v23[15] = v37;
  v23[16] = v47;
  v23[17] = v61;
  v23[18] = v28;
  v23[19] = v58;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v9, global_queue, v23, vt_Copy_BGRA_TRC_Mat_TRC_xf420_neon_fp16_GCD);
  if (!v9)
  {
    return 0;
  }

  v52 = (v23 + 20);
  v53 = v9;
  while (1)
  {
    v54 = *v52++;
    v24 = v54;
    if (v54)
    {
      break;
    }

    if (!--v53)
    {
      v24 = 0;
      break;
    }
  }

LABEL_60:
  if (v9 == 255)
  {
    goto LABEL_61;
  }

  return v24;
}

uint64_t vt_Copy_BGRA_TRC_Mat_TRC_xf420_neon_fp16_GCD(unsigned __int8 *a1, uint64_t a2, __n128 _Q0, float16x8_t a4, float32x4_t a5, float32x4_t a6)
{
  v13 = 0;
  v14 = *(a1 + 36);
  v15 = *(a1 + 24);
  v16 = 2 * *a1;
  v17 = *(a1 + 44) + 2 * (*(a1 + 28) * a2 / v16);
  v19 = *(a1 + 13);
  v18 = *(a1 + 14);
  v20 = *(a1 + 19);
  v21 = *(a1 + 7);
  v22 = *(a1 + 8);
  v23 = *(a1 + 15);
  v24 = *(a1 + 16);
  v25 = *(a1 + 17);
  v26 = *v22;
  v27 = *v21;
  v29 = *v25;
  v28 = v25[1];
  v259 = v29;
  v30 = v19 * a2 / v16;
  v31 = v23 + 2 * v30;
  v33 = *v24;
  v32 = v24[1];
  v34 = *(v20 + 128);
  v308 = *(v20 + 154);
  _Q0.n128_u32[0] = v308;
  v35 = *(v20 + 144);
  v36 = *(v20 + 132);
  v37 = *(v20 + 146);
  v38 = *(v20 + 148);
  v39 = *(v20 + 150);
  v40 = *(v20 + 152);
  v297 = *(v20 + 36);
  v296 = *(v20 + 40);
  v41.i32[0] = *(v20 + 48);
  v295 = *(v20 + 44);
  v42 = (v19 + v19 * a2) / v16 - v30;
  v43 = v26 * v17;
  v45.i32[0] = *(v20 + 52);
  v44.i32[0] = *(v20 + 56);
  v47.i32[0] = *(v20 + 60);
  v46 = *(v20 + 64);
  v48 = *(v20 + 68);
  v294 = *(v20 + 72);
  v293 = *(v20 + 76);
  v292 = *(v20 + 80);
  v272 = v28;
  result = v28 * (v31 / 2);
  v50 = vmovl_u8(_Q0.n128_u64[0]);
  v291 = *(v20 + 84);
  v290 = *(v20 + 88);
  v289 = *(v20 + 92);
  v288 = *(v20 + 96);
  v287 = *(v20 + 100);
  v286 = *(v20 + 104);
  _Q0.n128_u64[1] = 0;
  v306 = 0u;
  v307 = 0u;
  do
  {
    v51 = 0;
    v52 = *(&v308 + v13);
    v53 = *(&v306 + v13);
    do
    {
      v305 = v53;
      *(&v305 | v51 & 7) = v52 + 4 * v51;
      v53 = v305;
      ++v51;
    }

    while (v51 != 8);
    *(&v306 + v13++) = v305;
  }

  while (v13 != 4);
  v54 = 2 * v42;
  v55 = v259;
  if (2 * v42 >= 1)
  {
    v56 = 0;
    _S21 = 8191.0 / v34;
    v58 = v35;
    v302 = v37;
    v285 = v38;
    v300 = v39;
    v301 = v40;
    v41.i32[1] = v47.i32[0];
    __asm { FMOV            V0.2S, #0.25 }

    *a4.i8 = vmul_f32(v41, _Q0.n128_u64[0]);
    v45.i32[1] = v46;
    v44.i32[1] = v48;
    *a5.f32 = vmul_f32(v45, _Q0.n128_u64[0]);
    *a6.f32 = vmul_f32(v44, _Q0.n128_u64[0]);
    _Q0.n128_f32[0] = v297;
    __asm { FCVT            H0, S0 }

    v282 = *_Q0.n128_u16;
    _Q0.n128_f32[0] = v296;
    __asm { FCVT            H0, S0 }

    v281 = *_Q0.n128_u16;
    v280 = v15 - 7;
    v63 = v20 + 164;
    v64 = v20 + 16548;
    v65 = vdupq_lane_s32(vcvt_f16_f32(a4), 0);
    v66 = vdupq_lane_s32(vcvt_f16_f32(a5), 0);
    _Q0.n128_u64[0] = vcvt_f16_f32(a6);
    v67 = vdupq_lane_s32(_Q0.n128_u64[0], 0);
    _Q0.n128_f32[0] = v295;
    __asm { FCVT            H4, S0 }

    _Q0.n128_f32[0] = v294;
    __asm { FCVT            H5, S0 }

    _Q0.n128_f32[0] = v293;
    __asm { FCVT            H14, S0 }

    _Q0.n128_f32[0] = v292;
    __asm { FCVT            H0, S0 }

    v254 = *_Q0.n128_u16;
    _Q0.n128_f32[0] = v291;
    __asm { FCVT            H0, S0 }

    v253 = *_Q0.n128_u16;
    _Q0.n128_f32[0] = v290;
    __asm { FCVT            H0, S0 }

    v277 = *_Q0.n128_u16;
    _Q0.n128_f32[0] = v289;
    __asm { FCVT            H0, S0 }

    v252 = *_Q0.n128_u16;
    _Q0.n128_f32[0] = v288;
    __asm { FCVT            H0, S0 }

    v276 = _Q0;
    _Q0.n128_f32[0] = v287;
    __asm { FCVT            H0, S0 }

    v251 = *_Q0.n128_u16;
    *_Q0.n128_u16 = v35;
    v70 = vdupq_lane_s16(_Q0.n128_u64[0], 0);
    *_Q0.n128_u16 = v37;
    v71 = vdupq_lane_s16(_Q0.n128_u64[0], 0);
    *_Q0.n128_u16 = v38;
    v72 = vdupq_lane_s16(_Q0.n128_u64[0], 0);
    *_Q0.n128_u16 = v39;
    v73 = vdupq_lane_s16(_Q0.n128_u64[0], 0);
    *_Q0.n128_u16 = v40;
    v74 = vdupq_lane_s16(_Q0.n128_u64[0], 0);
    _S0 = v286;
    __asm { FCVT            H0, S0 }

    v275 = *&_S0;
    v76 = 16 - v36;
    v77 = v32 + result;
    result = v15 & 0xFFFFFFFE;
    if (v36 >= 0x11)
    {
      v76 = 0;
    }

    v78 = (v77 + 2 * v18);
    v79 = (v33 + v259 * v31 + 2 * v18);
    v80 = (v27 + v43 + 4 * v14);
    __asm { FCVT            H15, S21 }

    v81 = v76;
    v249 = v50.u16[1];
    v274 = vdupq_n_s16(v76);
    v248 = v15 & 0xFFFFFFF8;
    v284 = a5.f32[0];
    v82 = a4.i64[0];
    v83.i32[0] = a6.i32[1];
    v273 = a6.f32[1];
    v283 = a6.f32[0];
    v270 = v66;
    v271 = v65;
    v268 = v70;
    v269 = v67;
    v278 = _H5;
    v279 = _H4;
    v303 = _S15;
    v304 = _Q14;
    v266 = v72;
    v267 = v71;
    v264 = v74;
    v265 = v73;
    v258 = v15;
    v257 = v26;
    v255 = v15 & 0xFFFFFFFE;
    v256 = 2 * v42;
    v250 = v76;
    do
    {
      v84 = v80 + v26;
      v85 = &v79->i8[v55];
      if (v15 < 8)
      {
        v183 = 0;
        v89 = v78;
        v88 = (v79 + v55);
        v87 = (v80 + v26);
      }

      else
      {
        v263 = v56;
        v86 = 0;
        v299 = *(&v306 + 8);
        v298 = v307;
        v260 = &v79->i8[v55];
        v261 = v80 + v26;
        v87 = (v80 + v26);
        v88 = (v79 + v55);
        v262 = v78;
        v89 = v78;
        v90.i64[0] = 0x9000900090009000;
        v90.i64[1] = 0x9000900090009000;
        do
        {
          v309.val[0].i64[0] = *v80;
          v91 = v80[1];
          v92.i64[0] = v80[2];
          v93 = v80[3];
          v80 += 4;
          v309.val[0].i64[1] = v91;
          v92.i64[1] = v93;
          v309.val[1] = v92;
          v94 = vqtbl2_s8(v309, *&v306);
          v95 = vqtbl2_s8(v309, v299);
          v96 = v74;
          v97 = vqtbl2_s8(v309, v298);
          *v98.i8 = vzip1_s8(v94, 0);
          *v309.val[0].i8 = vzip1_s8(v95, 0);
          v98.u64[1] = vzip2_s8(v94, 0);
          v309.val[0].u64[1] = vzip2_s8(v95, 0);
          *v99.i8 = vzip1_s8(v97, 0);
          v100 = vzip2_s8(v97, 0);
          v101 = vcvtq_f16_u16(v98);
          v99.u64[1] = v100;
          v309.val[1].i64[0] = *v87;
          v92.i64[0] = v87[1];
          v102.i64[0] = v87[2];
          v103.i64[0] = v87[3];
          v87 += 4;
          v104 = vcvtq_f16_u16(v309.val[0]);
          v309.val[1].i64[1] = v92.i64[0];
          v102.i64[1] = v103.i64[0];
          v105 = v102;
          v106 = vqtbl2_s8(*(&v309 + 16), *&v306);
          *v98.i8 = vqtbl2_s8(*(&v309 + 16), v299);
          *v309.val[0].i8 = vqtbl2_s8(*(&v309 + 16), v298);
          *v309.val[1].i8 = vzip1_s8(v106, 0);
          v309.val[1].u64[1] = vzip2_s8(v106, 0);
          v107 = vcvtq_f16_u16(v309.val[1]);
          *v309.val[1].i8 = vzip1_s8(*v98.i8, 0);
          *v105.i8 = vzip2_s8(*v98.i8, 0);
          v108 = vmulq_n_f16(v104, *&_S15);
          v309.val[1].i64[1] = v105.i64[0];
          *v105.i8 = vzip1_s8(*v309.val[0].i8, 0);
          v109 = vmulq_n_f16(vcvtq_f16_u16(v99), *&_S15);
          v105.u64[1] = vzip2_s8(*v309.val[0].i8, 0);
          v110 = vmulq_n_f16(v107, *&_S15);
          v111 = vmaxq_f16(vmulq_n_f16(v101, *&_S15), 0);
          v112 = vmulq_n_f16(vcvtq_f16_u16(v309.val[1]), *&_S15);
          v113 = vcvtq_u16_f16(vminq_f16(v111, v90));
          v114.i16[0] = *(v63 + 2 * v113.u16[0]);
          v309.val[1] = vmulq_n_f16(vcvtq_f16_u16(v105), *&v303);
          v115 = (v63 + 2 * v113.u16[1]);
          v116 = (v63 + 2 * v113.u16[2]);
          v117 = (v63 + 2 * v113.u16[3]);
          v118 = (v63 + 2 * v113.u16[4]);
          v119 = v113.u16[6];
          v120 = (v63 + 2 * v113.u16[5]);
          v121 = v113.u16[7];
          v122 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v108, 0), v90));
          v123 = (v63 + 2 * v119);
          v309.val[0].i16[0] = *(v63 + 2 * v122.u16[0]);
          v124 = (v63 + 2 * v121);
          v125 = (v63 + 2 * v122.u16[1]);
          v126 = (v63 + 2 * v122.u16[2]);
          v127 = (v63 + 2 * v122.u16[3]);
          v128 = (v63 + 2 * v122.u16[4]);
          v129 = v122.u16[6];
          v130 = v122.u16[7];
          v131 = (v63 + 2 * v122.u16[5]);
          v132 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v109, 0), v90));
          v133 = (v63 + 2 * v129);
          v134 = (v63 + 2 * v130);
          v105.i16[0] = *(v63 + 2 * v132.u16[0]);
          v135 = (v63 + 2 * v132.u16[1]);
          v136 = (v63 + 2 * v132.u16[2]);
          v137 = (v63 + 2 * v132.u16[3]);
          v138 = (v63 + 2 * v132.u16[4]);
          v139 = (v63 + 2 * v132.u16[5]);
          v140 = v132.u16[7];
          v114.i16[1] = *v115;
          v141 = (v63 + 2 * v132.u16[6]);
          v142 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v110, 0), v90));
          v309.val[0].i16[1] = *v125;
          v103.i16[0] = *(v63 + 2 * v142.u16[0]);
          v105.i16[1] = *v135;
          v114.i16[2] = *v116;
          v309.val[0].i16[2] = *v126;
          v143 = (v63 + 2 * v142.u16[3]);
          v105.i16[2] = *v136;
          v144 = (v63 + 2 * v142.u16[4]);
          v145 = (v63 + 2 * v142.u16[5]);
          v114.i16[3] = *v117;
          v103.i16[1] = *(v63 + 2 * v142.u16[1]);
          v309.val[0].i16[3] = *v127;
          v103.i16[2] = *(v63 + 2 * v142.u16[2]);
          LOWORD(v127) = v142.i16[7];
          v105.i16[3] = *v137;
          v146 = (v63 + 2 * v142.u16[6]);
          v147 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v112, 0), v90));
          v103.i16[3] = *v143;
          v109.i16[0] = *(v63 + 2 * v147.u16[0]);
          v114.i16[4] = *v118;
          v309.val[0].i16[4] = *v128;
          v105.i16[4] = *v138;
          v103.i16[4] = *v144;
          v114.i16[5] = *v120;
          v109.i16[1] = *(v63 + 2 * v147.u16[1]);
          v309.val[0].i16[5] = *v131;
          v109.i16[2] = *(v63 + 2 * v147.u16[2]);
          LOWORD(v128) = v147.i16[7];
          v105.i16[5] = *v139;
          v109.i16[3] = *(v63 + 2 * v147.u16[3]);
          v109.i16[4] = *(v63 + 2 * v147.u16[4]);
          v103.i16[5] = *v145;
          v148 = (v63 + 2 * v147.u16[6]);
          v109.i16[5] = *(v63 + 2 * v147.u16[5]);
          v114.i16[6] = *v123;
          v149 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v309.val[1], 0), v90));
          v309.val[0].i16[6] = *v133;
          v309.val[1].i16[0] = *(v63 + 2 * v149.u16[0]);
          v105.i16[6] = *v141;
          v103.i16[6] = *v146;
          v109.i16[6] = *v148;
          v114.i16[7] = *v124;
          v309.val[0].i16[7] = *v134;
          v105.i16[7] = *(v63 + 2 * v140);
          v309.val[1].i16[1] = *(v63 + 2 * v149.u16[1]);
          v309.val[1].i16[2] = *(v63 + 2 * v149.u16[2]);
          v103.i16[7] = *(v63 + 2 * v127);
          v309.val[1].i16[3] = *(v63 + 2 * v149.u16[3]);
          v309.val[1].i16[4] = *(v63 + 2 * v149.u16[4]);
          v109.i16[7] = *(v63 + 2 * v128);
          v309.val[1].i16[5] = *(v63 + 2 * v149.u16[5]);
          v309.val[1].i16[6] = *(v63 + 2 * v149.u16[6]);
          v309.val[1].i16[7] = *(v63 + 2 * v149.u16[7]);
          v150 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v114, v278), v309.val[0], *_Q14.i16), v105, v254);
          v151 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v114, v253), v309.val[0], v277), v105, v252);
          v152 = vmlaq_n_f16(vmulq_n_f16(v105, v275), v309.val[0], v251);
          _Q8.i16[7] = v276.n128_i16[7];
          _Q14 = vmlaq_n_f16(v152, v114, *v276.n128_u16);
          v99.i16[7] = v304.i16[7];
          v153 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v103, v278), v109, *v304.i16), v309.val[1], v254);
          v154 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v103, v253), v109, v277), v309.val[1], v252);
          v155 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v150, 0), v90));
          v114.i16[0] = *(v64 + 2 * v155.u16[0]);
          v309.val[1] = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v309.val[1], v275), v109, v251), v103, *v276.n128_u16);
          v156 = (v64 + 2 * v155.u16[1]);
          v157 = (v64 + 2 * v155.u16[2]);
          v158 = (v64 + 2 * v155.u16[3]);
          v159 = (v64 + 2 * v155.u16[4]);
          LOWORD(v127) = v155.i16[6];
          v160 = (v64 + 2 * v155.u16[5]);
          LOWORD(v115) = v155.i16[7];
          v161 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v151, 0), v90));
          v162 = (v64 + 2 * v127);
          v105.i16[0] = *(v64 + 2 * v161.u16[0]);
          v163 = (v64 + 2 * v115);
          v164 = (v64 + 2 * v161.u16[1]);
          v165 = (v64 + 2 * v161.u16[2]);
          v166 = (v64 + 2 * v161.u16[3]);
          v167 = (v64 + 2 * v161.u16[4]);
          LOWORD(v144) = v161.i16[6];
          LOWORD(v135) = v161.i16[7];
          v168 = (v64 + 2 * v161.u16[5]);
          v169 = vmaxq_f16(_Q14, 0);
          _Q14.i32[0] = v304.i32[0];
          v170 = vcvtq_u16_f16(vminq_f16(v169, v90));
          _Q8.i16[0] = *(v64 + 2 * v170.u16[0]);
          v114.i16[1] = *v156;
          v105.i16[1] = *v164;
          _Q8.i16[1] = *(v64 + 2 * v170.u16[1]);
          v171 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v153, 0), v90));
          v114.i16[2] = *v157;
          v153.i16[0] = *(v64 + 2 * v171.u16[0]);
          v105.i16[2] = *v165;
          _Q8.i16[2] = *(v64 + 2 * v170.u16[2]);
          v153.i16[1] = *(v64 + 2 * v171.u16[1]);
          v114.i16[3] = *v158;
          v105.i16[3] = *v166;
          v153.i16[2] = *(v64 + 2 * v171.u16[2]);
          _Q8.i16[3] = *(v64 + 2 * v170.u16[3]);
          v153.i16[3] = *(v64 + 2 * v171.u16[3]);
          _S12 = *v274.i32;
          v114.i16[4] = *v159;
          v172 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v154, 0), v90));
          v105.i16[4] = *v167;
          v154.i16[0] = *(v64 + 2 * v172.u16[0]);
          _Q8.i16[4] = *(v64 + 2 * v170.u16[4]);
          v153.i16[4] = *(v64 + 2 * v171.u16[4]);
          v154.i16[1] = *(v64 + 2 * v172.u16[1]);
          v114.i16[5] = *v160;
          v105.i16[5] = *v168;
          v154.i16[2] = *(v64 + 2 * v172.u16[2]);
          _Q8.i16[5] = *(v64 + 2 * v170.u16[5]);
          v153.i16[5] = *(v64 + 2 * v171.u16[5]);
          v154.i16[3] = *(v64 + 2 * v172.u16[3]);
          v114.i16[6] = *v162;
          v105.i16[6] = *(v64 + 2 * v144);
          v154.i16[4] = *(v64 + 2 * v172.u16[4]);
          _Q8.i16[6] = *(v64 + 2 * v170.u16[6]);
          v153.i16[6] = *(v64 + 2 * v171.u16[6]);
          v154.i16[5] = *(v64 + 2 * v172.u16[5]);
          LOWORD(v156) = v172.i16[7];
          v154.i16[6] = *(v64 + 2 * v172.u16[6]);
          v173 = (v64 + 2 * v171.u16[7]);
          v174 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v309.val[1], 0), v90));
          v175 = vuzp1q_s16(v114, v105);
          v99.i16[0] = *(v64 + 2 * v174.u16[0]);
          v114.i16[7] = *v163;
          v105.i16[7] = *(v64 + 2 * v135);
          v47 = vuzp1q_s16(v153, v154);
          v99.i16[1] = *(v64 + 2 * v174.u16[1]);
          v153.i16[7] = *v173;
          v176 = (v64 + 2 * v174.u16[5]);
          v99.i16[2] = *(v64 + 2 * v174.u16[2]);
          v99.i16[3] = *(v64 + 2 * v174.u16[3]);
          v99.i16[4] = *(v64 + 2 * v174.u16[4]);
          v154.i16[7] = *(v64 + 2 * v156);
          v177 = (v64 + 2 * v174.u16[6]);
          LOWORD(v168) = v174.i16[7];
          v178 = vmlaq_n_f16(vmlaq_n_f16(v70, v114, v282), v105, v281);
          v309.val[1] = vuzp2q_s16(v114, v105);
          _S15 = v303;
          v179 = vmlaq_n_f16(vmlaq_n_f16(v70, v153, v282), v154, v281);
          v180 = vuzp2q_s16(v153, v154);
          _Q11 = _Q8;
          v99.i16[5] = *v176;
          v99.i16[6] = *v177;
          _Q11.i16[7] = *(v64 + 2 * v170.u16[7]);
          v181 = vaddq_f16(v175, v309.val[1]);
          _Q9 = v99;
          _Q9.i16[7] = *(v64 + 2 * v168);
          *v79++ = vshlq_u16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(v178, _Q11, v279), v70), v72)), v274);
          v182 = vaddq_f16(vaddq_f16(v181, v47), v180);
          _Q10 = vmlaq_n_f16(v179, _Q9, v279);
          *v88++ = vshlq_u16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(_Q10, v70), v72)), v274);
          v50 = vzip1q_s16(v182, v182);
          a4 = vaddq_f16(vaddq_f16(vaddq_f16(vtrn1q_s16(_Q8, _Q8), vtrn2q_s16(_Q11, _Q11)), vtrn1q_s16(v99, v99)), vtrn2q_s16(_Q9, _Q9));
          v74 = v96;
          v83 = vshlq_u16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_f16(vmlaq_f16(vmlaq_f16(v71, v65, v50), v66, vzip2q_s16(v182, v182)), v67, a4), v73), v96)), v274);
          *v89++ = v83;
          v86 += 8;
        }

        while (v86 < v280);
        v183 = v248;
        v15 = v258;
        v26 = v257;
        v55 = v259;
        v85 = v260;
        result = v255;
        v54 = v256;
        v56 = v263;
        v84 = v261;
        v78 = v262;
        v81 = v250;
      }

      if (v183 < result)
      {
        v184 = 0;
        v185 = v80 + v249;
        v186 = v87 + v249;
        do
        {
          v187 = v184 + v308;
          v83.i8[0] = *(v80 + v187);
          a4.i8[0] = v185[v184];
          v188 = v184 + BYTE2(v308);
          v50.i8[0] = *(v80 + v188);
          v74.i8[0] = *(v80 + v187 + 4);
          v47.i8[0] = v185[v184 + 4];
          _Q8.i8[0] = *(v80 + v188 + 4);
          v189 = v87 + v187;
          _Q9.i8[0] = *v189;
          _Q10.i8[0] = v186[v184];
          _Q11.i8[0] = *(v87 + v188);
          LOBYTE(_S12) = v189[4];
          _Q14.i8[0] = v186[v184 + 4];
          LOBYTE(_S15) = *(v87 + v188 + 4);
          _H0 = *(v63 + 2 * llroundf(fminf(fmaxf(_S21 * v83.u32[0], 0.0), 8191.0)));
          __asm { FCVT            S0, H0 }

          _H1 = *(v63 + 2 * llroundf(fminf(fmaxf(_S21 * a4.u32[0], 0.0), 8191.0)));
          __asm { FCVT            S1, H1 }

          _H23 = *(v63 + 2 * llroundf(fminf(fmaxf(_S21 * v50.u32[0], 0.0), 8191.0)));
          _H30 = *(v63 + 2 * llroundf(fminf(fmaxf(_S21 * v74.u32[0], 0.0), 8191.0)));
          __asm
          {
            FCVT            S23, H23
            FCVT            S30, H30
          }

          _H31 = *(v63 + 2 * llroundf(fminf(fmaxf(_S21 * v47.u32[0], 0.0), 8191.0)));
          __asm { FCVT            S31, H31 }

          _H8 = *(v63 + 2 * llroundf(fminf(fmaxf(_S21 * _Q8.u32[0], 0.0), 8191.0)));
          __asm { FCVT            S8, H8 }

          _H9 = *(v63 + 2 * llroundf(fminf(fmaxf(_S21 * _Q9.u32[0], 0.0), 8191.0)));
          __asm { FCVT            S9, H9 }

          _H10 = *(v63 + 2 * llroundf(fminf(fmaxf(_S21 * _Q10.u32[0], 0.0), 8191.0)));
          __asm { FCVT            S10, H10 }

          _H11 = *(v63 + 2 * llroundf(fminf(fmaxf(_S21 * _Q11.u32[0], 0.0), 8191.0)));
          _H12 = *(v63 + 2 * llroundf(fminf(fmaxf(_S21 * LODWORD(_S12), 0.0), 8191.0)));
          __asm
          {
            FCVT            S11, H11
            FCVT            S12, H12
          }

          _H14 = *(v63 + 2 * llroundf(fminf(fmaxf(_S21 * _Q14.u32[0], 0.0), 8191.0)));
          __asm { FCVT            S14, H14 }

          _H15 = *(v63 + 2 * llroundf(fminf(fmaxf(_S21 * LODWORD(_S15), 0.0), 8191.0)));
          __asm { FCVT            S15, H15 }

          _S2 = ((v293 * _S1) + (_S0 * v294)) + (_S23 * v292);
          v215 = ((v290 * _S1) + (_S0 * v291)) + (_S23 * v289);
          _S0 = ((v287 * _S1) + (_S0 * v288)) + (_S23 * v286);
          _S1 = ((v293 * _S31) + (_S30 * v294)) + (_S8 * v292);
          v218 = ((v290 * _S31) + (_S30 * v291)) + (_S8 * v289);
          v219 = ((v287 * _S31) + (_S30 * v288)) + (_S8 * v286);
          v220 = ((v293 * _S10) + (_S9 * v294)) + (_S11 * v292);
          v221 = ((v290 * _S10) + (_S9 * v291)) + (_S11 * v289);
          v222 = ((v287 * _S10) + (_S9 * v288)) + (_S11 * v286);
          v223 = ((v293 * _S14) + (_S12 * v294)) + (_S15 * v292);
          v224 = ((v290 * _S14) + (_S12 * v291)) + (_S15 * v289);
          v225 = ((v287 * _S14) + (_S12 * v288)) + (_S15 * v286);
          LOWORD(_S2) = *(v64 + 2 * llroundf(fminf(fmaxf(_S2, 0.0), 8191.0)));
          __asm { FCVT            S23, H2 }

          LOWORD(_S2) = *(v64 + 2 * llroundf(fminf(fmaxf(v215, 0.0), 8191.0)));
          __asm { FCVT            S30, H2 }

          LOWORD(_S0) = *(v64 + 2 * llroundf(fminf(fmaxf(_S0, 0.0), 8191.0)));
          LOWORD(_S1) = *(v64 + 2 * llroundf(fminf(fmaxf(_S1, 0.0), 8191.0)));
          __asm
          {
            FCVT            S8, H0
            FCVT            S9, H1
          }

          LOWORD(_S0) = *(v64 + 2 * llroundf(fminf(fmaxf(v218, 0.0), 8191.0)));
          __asm { FCVT            S11, H0 }

          LOWORD(_S0) = *(v64 + 2 * llroundf(fminf(fmaxf(v219, 0.0), 8191.0)));
          __asm { FCVT            S10, H0 }

          LOWORD(_S0) = *(v64 + 2 * llroundf(fminf(fmaxf(v220, 0.0), 8191.0)));
          __asm { FCVT            S14, H0 }

          LOWORD(_S0) = *(v64 + 2 * llroundf(fminf(fmaxf(v221, 0.0), 8191.0)));
          __asm { FCVT            S15, H0 }

          LOWORD(_S0) = *(v64 + 2 * llroundf(fminf(fmaxf(v222, 0.0), 8191.0)));
          LOWORD(_S1) = *(v64 + 2 * llroundf(fminf(fmaxf(v223, 0.0), 8191.0)));
          __asm
          {
            FCVT            S12, H0
            FCVT            S0, H1
          }

          LOWORD(_S1) = *(v64 + 2 * llroundf(fminf(fmaxf(v224, 0.0), 8191.0)));
          __asm { FCVT            S1, H1 }

          LOWORD(_S2) = *(v64 + 2 * llroundf(fminf(fmaxf(v225, 0.0), 8191.0)));
          __asm { FCVT            S31, H2 }

          v231 = (((v296 * _S30) + (v297 * _S23)) + (v295 * *_Q8.i32)) + v58;
          if (v231 < v58)
          {
            v232 = v58;
          }

          else
          {
            v232 = (((v296 * _S30) + (v297 * _S23)) + (v295 * *_Q8.i32)) + v58;
          }

          v233 = v231 <= v285;
          v234 = (((v296 * *_Q11.i32) + (v297 * *_Q9.i32)) + (v295 * *_Q10.i32)) + v58;
          if (!v233)
          {
            v232 = v285;
          }

          v235 = llroundf(v232);
          if (v234 < v58)
          {
            v236 = v58;
          }

          else
          {
            v236 = (((v296 * *_Q11.i32) + (v297 * *_Q9.i32)) + (v295 * *_Q10.i32)) + v58;
          }

          v233 = v234 <= v285;
          v237 = (((v296 * _S15) + (v297 * *_Q14.i32)) + (v295 * _S12)) + v58;
          if (!v233)
          {
            v236 = v285;
          }

          v238 = llroundf(v236);
          if (v237 < v58)
          {
            v239 = v58;
          }

          else
          {
            v239 = (((v296 * _S15) + (v297 * *_Q14.i32)) + (v295 * _S12)) + v58;
          }

          v233 = v237 <= v285;
          v240 = (((v296 * _S1) + (v297 * _S0)) + (v295 * _S31)) + v58;
          if (!v233)
          {
            v239 = v285;
          }

          v241 = llroundf(v239);
          if (v240 < v58)
          {
            v242 = v58;
          }

          else
          {
            v242 = (((v296 * _S1) + (v297 * _S0)) + (v295 * _S31)) + v58;
          }

          if (v240 <= v285)
          {
            v243 = v242;
          }

          else
          {
            v243 = v285;
          }

          v244 = ((_S23 + *_Q9.i32) + *_Q14.i32) + _S0;
          v245 = ((_S30 + *_Q11.i32) + _S15) + _S1;
          v79->i16[0] = v235 << v81;
          v79->i16[1] = v238 << v81;
          v88->i16[0] = v241 << v81;
          v88->i16[1] = llroundf(v243) << v81;
          *v50.i32 = ((*_Q8.i32 + *_Q10.i32) + _S12) + _S31;
          *v47.i32 = ((v302 + (v244 * *&v82)) + (v245 * v284)) + (*v50.i32 * v283);
          *v74.i32 = v301;
          if (*v47.i32 <= v301)
          {
            *v74.i32 = ((v302 + (v244 * *&v82)) + (v245 * v284)) + (*v50.i32 * v283);
            if (*v47.i32 < v300)
            {
              *v74.i32 = v300;
            }
          }

          *v83.i32 = ((v302 + (v244 * *(&v82 + 1))) + (v245 * a5.f32[1])) + (*v50.i32 * v273);
          v89->i16[0] = llroundf(*v74.i32) << v81;
          *a4.i32 = v301;
          if (*v83.i32 <= v301)
          {
            a4.i32[0] = v83.i32[0];
            if (*v83.i32 < v300)
            {
              *a4.i32 = v300;
            }
          }

          v89->i16[1] = llroundf(*a4.i32) << v81;
          v89 = (v89 + 4);
          v183 += 2;
          v184 += 8;
          v79 = (v79 + 4);
          v88 = (v88 + 4);
        }

        while (v183 < result);
      }

      v80 = &v84[v26];
      v79 = &v85[v55];
      v78 = (v78 + v272);
      v56 += 2;
      v66 = v270;
      v65 = v271;
      v70 = v268;
      v67 = v269;
      _S15 = v303;
      _Q14.i32[0] = v304.i32[0];
      v72 = v266;
      v71 = v267;
      v74 = v264;
      v73 = v265;
    }

    while (v56 < v54);
  }

  *&a1[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_BGRA_TRC_Mat_TRC_xf420(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4, void *a5, uint64_t *a6, uint64_t a7, void *a8, void *a9)
{
  v60 = a7;
  v61 = a8;
  v66 = a4;
  v67 = a5;
  v59 = a3;
  v68 = *MEMORY[0x1E69E9840];
  v58 = a1;
  v9 = *(a1 + 162);
  v10 = a2[1];
  v12 = a2[2];
  v11 = a2[3];
  v14 = a2[4];
  v13 = a2[5];
  v15 = *a6;
  v62 = *a2;
  v63 = v15;
  v16 = a6[1];
  v17 = a6[2];
  v18 = a6[3];
  v19 = a6[4];
  v20 = a6[5];
  v64 = v16;
  v65 = v10;
  v22 = v13 + v11 != v10 || v20 + v18 != v16;
  LODWORD(v57) = v22;
  if (v9 == 255)
  {
    v23 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v23)
    {
      v24 = 0;
LABEL_61:
      free(v23);
      return v24;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v9 + 160, a3, a4);
    v23 = (&v56 - v25);
    bzero(&v56 - v25, v26);
  }

  v27 = v17 - 1;
  v28 = a9;
  v29 = v12 - 1;
  if (v19)
  {
    v30 = v14 + 1;
  }

  else
  {
    v29 = v12;
    v30 = v14;
  }

  if (v19)
  {
    v31 = v19 + 1;
  }

  else
  {
    v27 = v17;
    v31 = v19;
  }

  v32 = v29 - (v27 & 1);
  v33 = v27 & 0xFFFFFFFFFFFFFFFELL;
  v34 = v18 - 1;
  v35 = v11 - 1;
  if (v20)
  {
    v36 = v13 + 1;
  }

  else
  {
    v35 = v11;
    v36 = v13;
  }

  if (v20)
  {
    v37 = v20 + 1;
  }

  else
  {
    v34 = v18;
    v37 = v20;
  }

  if (v34)
  {
    if ((v57 & 1) != 0 || (*v66 * (v35 + 1 + v36)) > *v67 || (v38 = v34 + 1 + v37, (*v61 * v38) > *a9) || (v61[1] * (v38 / 2)) > a9[1] || (v61[2] * v38) > a9[2])
    {
      --v34;
      --v35;
    }

    else
    {
      ++v64;
      ++v65;
      ++v35;
      ++v34;
    }
  }

  if (v32 + v30 > v62)
  {
    v32 = v62 - v30;
  }

  if (v33 + v31 > v63)
  {
    v33 = v63 - v31;
  }

  if (v35 + v36 > v65)
  {
    v35 = v65 - v36;
  }

  if (v34 + v37 > v64)
  {
    v34 = v64 - v37;
  }

  if (v32 >= v33)
  {
    v39 = v33;
  }

  else
  {
    v39 = v32;
  }

  if (v35 >= v34)
  {
    v40 = v34;
  }

  else
  {
    v40 = v35;
  }

  if (((v36 + v40 - 1) * *v66 + 4 * (v39 + v30)) > *v67)
  {
    v57 = v36;
    v41 = v30;
    v42 = v31;
    v43 = v9;
    v44 = a9;
    goto LABEL_54;
  }

  v45 = v40 + v37 - 1;
  v46 = v39 + v31;
  if ((*v61 * v45 + 2 * (v39 + v31)) > *a9)
  {
    v57 = v36;
    v41 = v30;
    v42 = v31;
    v43 = v9;
    v44 = a9;
    goto LABEL_54;
  }

  v47 = v60;
  if (*(v60 + 8) && v61[1] * ((v40 + v37 + 1) / 2 - 1) + 4 * ((v46 + 1 + ((v46 + 1) >> 63)) >> 1) > a9[1])
  {
    v57 = v36;
    v41 = v30;
    v42 = v31;
    v43 = v9;
    v44 = a9;
    goto LABEL_54;
  }

  if (*(v60 + 16) && (2 * v46 + v61[2] * v45) > a9[2])
  {
    v57 = v36;
    v41 = v30;
    v42 = v31;
    v43 = v9;
    v44 = a9;
LABEL_54:
    fig_log_get_emitter();
    v24 = FigSignalErrorAtGM();
    v47 = v60;
    v28 = v44;
    v9 = v43;
    v31 = v42;
    v30 = v41;
    v36 = v57;
    if (v24)
    {
      goto LABEL_60;
    }
  }

  *v23 = v9;
  *(v23 + 4) = v62;
  v48 = v64;
  *(v23 + 12) = v65;
  *(v23 + 20) = v39;
  *(v23 + 28) = v40;
  *(v23 + 36) = v30;
  *(v23 + 44) = v36;
  v23[11] = v48;
  v23[12] = v39;
  v23[13] = v40;
  v23[14] = v31;
  v49 = v66;
  v23[7] = v59;
  v23[8] = v49;
  v50 = v63;
  v23[9] = v67;
  v23[10] = v50;
  v23[15] = v37;
  v23[16] = v47;
  v23[17] = v61;
  v23[18] = v28;
  v23[19] = v58;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v9, global_queue, v23, vt_Copy_BGRA_TRC_Mat_TRC_xf420_GCD);
  if (!v9)
  {
    return 0;
  }

  v52 = (v23 + 20);
  v53 = v9;
  while (1)
  {
    v54 = *v52++;
    v24 = v54;
    if (v54)
    {
      break;
    }

    if (!--v53)
    {
      v24 = 0;
      break;
    }
  }

LABEL_60:
  if (v9 == 255)
  {
    goto LABEL_61;
  }

  return v24;
}

unsigned __int8 *vt_Copy_BGRA_TRC_Mat_TRC_xf420_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, float a5, float a6, float a7, float a8, float a9)
{
  v18 = 2 * *result;
  v19 = *(result + 13);
  v20 = v19 * a2 / v18;
  v21 = 2 * ((v19 + v19 * a2) / v18 - v20);
  if (v21 >= 1)
  {
    v22 = 0;
    v23 = *(result + 19);
    v24 = *(result + 24) & 0xFFFFFFFE;
    v25 = **(result + 8);
    v26 = *(result + 16);
    v27 = *(result + 17);
    v28 = *v27;
    v29 = v27[1];
    v30 = 8191.0 / *(v23 + 128);
    LOWORD(a5) = *(v23 + 144);
    v31 = LODWORD(a5);
    LOWORD(a6) = *(v23 + 146);
    LOWORD(a7) = *(v23 + 148);
    v32 = LODWORD(a7);
    LOWORD(a8) = *(v23 + 150);
    v137 = LODWORD(a8);
    LOWORD(a9) = *(v23 + 152);
    v138 = LODWORD(a9);
    v139 = LODWORD(a6);
    v135 = *(v23 + 40);
    v136 = *(v23 + 36);
    v33 = 0.25;
    v133 = *(v23 + 48) * 0.25;
    v134 = *(v23 + 44);
    v131 = *(v23 + 56) * 0.25;
    v132 = *(v23 + 52) * 0.25;
    v34 = *(v23 + 64);
    v129 = v34 * 0.25;
    v130 = *(v23 + 60) * 0.25;
    v35 = *(v23 + 68);
    v36 = *(v23 + 72);
    v128 = v35 * 0.25;
    v37 = *(v23 + 76);
    v38 = *(v23 + 80);
    v39 = *(v23 + 84);
    v40 = *(v23 + 88);
    v41 = *(v23 + 92);
    v42 = *(v23 + 96);
    v44 = *(v23 + 100);
    v43 = *(v23 + 104);
    v45 = v23 + 164;
    v46 = v23 + 16548;
    v47 = *(result + 14);
    v48 = *(result + 15) + 2 * v20;
    v49 = *(result + 44) + 2 * (*(result + 28) * a2 / v18);
    v51 = *v26;
    v50 = v26[1];
    v52 = (v51 + v28 * v48 + 2 * v47);
    v53 = **(result + 7) + v49 * v25 + 4 * *(result + 36);
    v54 = *(v23 + 132);
    v55 = 16 - v54;
    if (v54 >= 0x11)
    {
      v55 = 0;
    }

    v56 = *(v23 + 156);
    v57 = v50 + v29 * (v48 / 2);
    v58 = *(v23 + 155);
    v59 = *(v23 + 154);
    v60 = v57 + 2 * v47;
    v61 = v55;
    do
    {
      v62 = v53 + v25;
      v63 = &v52[v28];
      if (v24 >= 1)
      {
        v64 = 0;
        v65 = v53 + v25;
        v66 = &v52[v28];
        do
        {
          LOBYTE(v35) = *(v53 + v59);
          LOBYTE(v33) = *(v53 + v58);
          LOBYTE(v34) = *(v53 + v56);
          LOBYTE(v15) = *(v53 + 4 + v59);
          LOBYTE(v16) = *(v53 + 4 + v58);
          LOBYTE(_S24) = *(v53 + 4 + v56);
          LOBYTE(_S10) = *(v65 + v59);
          LOBYTE(_S11) = *(v65 + v58);
          LOBYTE(_S12) = *(v65 + v56);
          LOBYTE(_S13) = *(v65 + 4 + v59);
          LOBYTE(_S14) = *(v65 + 4 + v58);
          LOBYTE(_S15) = *(v65 + 4 + v56);
          _H18 = *(v45 + 2 * llroundf(fminf(fmaxf(v30 * LODWORD(v35), 0.0), 8191.0)));
          __asm { FCVT            S18, H18 }

          _H19 = *(v45 + 2 * llroundf(fminf(fmaxf(v30 * LODWORD(v33), 0.0), 8191.0)));
          __asm { FCVT            S19, H19 }

          _H20 = *(v45 + 2 * llroundf(fminf(fmaxf(v30 * LODWORD(v34), 0.0), 8191.0)));
          _H21 = *(v45 + 2 * llroundf(fminf(fmaxf(v30 * LODWORD(v15), 0.0), 8191.0)));
          __asm
          {
            FCVT            S20, H20
            FCVT            S21, H21
          }

          _H22 = *(v45 + 2 * llroundf(fminf(fmaxf(v30 * LODWORD(v16), 0.0), 8191.0)));
          __asm { FCVT            S22, H22 }

          _H24 = *(v45 + 2 * llroundf(fminf(fmaxf(v30 * LODWORD(_S24), 0.0), 8191.0)));
          __asm { FCVT            S24, H24 }

          _H10 = *(v45 + 2 * llroundf(fminf(fmaxf(v30 * LODWORD(_S10), 0.0), 8191.0)));
          __asm { FCVT            S10, H10 }

          _H11 = *(v45 + 2 * llroundf(fminf(fmaxf(v30 * LODWORD(_S11), 0.0), 8191.0)));
          __asm { FCVT            S11, H11 }

          _H12 = *(v45 + 2 * llroundf(fminf(fmaxf(v30 * LODWORD(_S12), 0.0), 8191.0)));
          _H13 = *(v45 + 2 * llroundf(fminf(fmaxf(v30 * LODWORD(_S13), 0.0), 8191.0)));
          __asm
          {
            FCVT            S12, H12
            FCVT            S13, H13
          }

          _H14 = *(v45 + 2 * llroundf(fminf(fmaxf(v30 * LODWORD(_S14), 0.0), 8191.0)));
          __asm { FCVT            S14, H14 }

          _H15 = *(v45 + 2 * llroundf(fminf(fmaxf(v30 * LODWORD(_S15), 0.0), 8191.0)));
          __asm { FCVT            S15, H15 }

          _S5 = ((v37 * _S19) + (_S18 * v36)) + (_S20 * v38);
          _S3 = ((v40 * _S19) + (_S18 * v39)) + (_S20 * v41);
          v97 = ((v44 * _S19) + (_S18 * v42)) + (_S20 * v43);
          v98 = ((v37 * _S22) + (_S21 * v36)) + (_S24 * v38);
          v99 = ((v40 * _S22) + (_S21 * v39)) + (_S24 * v41);
          v100 = ((v44 * _S22) + (_S21 * v42)) + (_S24 * v43);
          v101 = ((v37 * _S11) + (_S10 * v36)) + (_S12 * v38);
          v102 = ((v40 * _S11) + (_S10 * v39)) + (_S12 * v41);
          v103 = ((v44 * _S11) + (_S10 * v42)) + (_S12 * v43);
          v104 = ((v37 * _S14) + (_S13 * v36)) + (_S15 * v38);
          v105 = ((v40 * _S14) + (_S13 * v39)) + (_S15 * v41);
          v106 = ((v44 * _S14) + (_S13 * v42)) + (_S15 * v43);
          LOWORD(_S5) = *(v46 + 2 * llroundf(fminf(fmaxf(_S5, 0.0), 8191.0)));
          __asm { FCVT            S10, H5 }

          LOWORD(_S3) = *(v46 + 2 * llroundf(fminf(fmaxf(_S3, 0.0), 8191.0)));
          __asm { FCVT            S11, H3 }

          LOWORD(_S3) = *(v46 + 2 * llroundf(fminf(fmaxf(v97, 0.0), 8191.0)));
          LOWORD(_S5) = *(v46 + 2 * llroundf(fminf(fmaxf(v98, 0.0), 8191.0)));
          __asm
          {
            FCVT            S12, H3
            FCVT            S13, H5
          }

          LOWORD(_S3) = *(v46 + 2 * llroundf(fminf(fmaxf(v99, 0.0), 8191.0)));
          __asm { FCVT            S15, H3 }

          LOWORD(_S3) = *(v46 + 2 * llroundf(fminf(fmaxf(v100, 0.0), 8191.0)));
          __asm { FCVT            S14, H3 }

          LOWORD(_S3) = *(v46 + 2 * llroundf(fminf(fmaxf(v101, 0.0), 8191.0)));
          __asm { FCVT            S19, H3 }

          LOWORD(_S3) = *(v46 + 2 * llroundf(fminf(fmaxf(v102, 0.0), 8191.0)));
          __asm { FCVT            S20, H3 }

          LOWORD(_S3) = *(v46 + 2 * llroundf(fminf(fmaxf(v103, 0.0), 8191.0)));
          LOWORD(_S5) = *(v46 + 2 * llroundf(fminf(fmaxf(v104, 0.0), 8191.0)));
          __asm
          {
            FCVT            S18, H3
            FCVT            S22, H5
          }

          LOWORD(_S3) = *(v46 + 2 * llroundf(fminf(fmaxf(v105, 0.0), 8191.0)));
          __asm { FCVT            S24, H3 }

          LOWORD(_S3) = *(v46 + 2 * llroundf(fminf(fmaxf(v106, 0.0), 8191.0)));
          __asm { FCVT            S21, H3 }

          v112 = (((v135 * _S11) + (v136 * _S10)) + (v134 * _S12)) + v31;
          if (v112 < v31)
          {
            v113 = v31;
          }

          else
          {
            v113 = (((v135 * _S11) + (v136 * _S10)) + (v134 * _S12)) + v31;
          }

          v114 = v112 <= v32;
          v115 = (((v135 * _S15) + (v136 * _S13)) + (v134 * _S14)) + v31;
          if (!v114)
          {
            v113 = v32;
          }

          v116 = llroundf(v113);
          if (v115 < v31)
          {
            v117 = v31;
          }

          else
          {
            v117 = (((v135 * _S15) + (v136 * _S13)) + (v134 * _S14)) + v31;
          }

          v114 = v115 <= v32;
          v118 = (((v135 * _S20) + (v136 * _S19)) + (v134 * _S18)) + v31;
          if (!v114)
          {
            v117 = v32;
          }

          v119 = llroundf(v117);
          if (v118 < v31)
          {
            v120 = v31;
          }

          else
          {
            v120 = (((v135 * _S20) + (v136 * _S19)) + (v134 * _S18)) + v31;
          }

          v114 = v118 <= v32;
          v121 = (((v135 * _S24) + (v136 * _S22)) + (v134 * _S21)) + v31;
          if (!v114)
          {
            v120 = v32;
          }

          v122 = llroundf(v120);
          if (v121 < v31)
          {
            v123 = v31;
          }

          else
          {
            v123 = (((v135 * _S24) + (v136 * _S22)) + (v134 * _S21)) + v31;
          }

          if (v121 <= v32)
          {
            v124 = v123;
          }

          else
          {
            v124 = v32;
          }

          v125 = ((_S10 + _S13) + _S19) + _S22;
          v34 = ((_S11 + _S15) + _S20) + _S24;
          *v52 = v116 << v61;
          *(v52 + 1) = v119 << v61;
          *v66 = v122 << v61;
          *(v66 + 1) = llroundf(v124) << v61;
          v126 = ((_S12 + _S14) + _S18) + _S21;
          v16 = ((v139 + (v125 * v133)) + (v34 * v132)) + (v126 * v131);
          v15 = v138;
          if (v16 <= v138)
          {
            v15 = ((v139 + (v125 * v133)) + (v34 * v132)) + (v126 * v131);
            if (v16 < v137)
            {
              v15 = v137;
            }
          }

          v127 = (v60 + 2 * v64);
          v33 = ((v139 + (v125 * v130)) + (v34 * v129)) + (v126 * v128);
          *v127 = llroundf(v15) << v61;
          v35 = v138;
          if (v33 <= v138)
          {
            v35 = v33;
            if (v33 < v137)
            {
              v35 = v137;
            }
          }

          v53 += 8;
          v65 += 8;
          v52 += 4;
          v66 += 4;
          v127[1] = llroundf(v35) << v61;
          v64 += 2;
        }

        while (v64 < v24);
      }

      v53 = v62 + v25;
      v52 = &v63[v28];
      v60 += v29;
      v22 += 2;
    }

    while (v22 < v21);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_BGRA_rgb_xf420_neon_fp16(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4, void *a5, uint64_t *a6, uint64_t a7, void *a8, void *a9)
{
  v60 = a7;
  v61 = a8;
  v66 = a4;
  v67 = a5;
  v59 = a3;
  v68 = *MEMORY[0x1E69E9840];
  v58 = a1;
  v9 = *(a1 + 162);
  v10 = a2[1];
  v12 = a2[2];
  v11 = a2[3];
  v14 = a2[4];
  v13 = a2[5];
  v15 = *a6;
  v62 = *a2;
  v63 = v15;
  v16 = a6[1];
  v17 = a6[2];
  v18 = a6[3];
  v19 = a6[4];
  v20 = a6[5];
  v64 = v16;
  v65 = v10;
  v22 = v13 + v11 != v10 || v20 + v18 != v16;
  LODWORD(v57) = v22;
  if (v9 == 255)
  {
    v23 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v23)
    {
      v24 = 0;
LABEL_61:
      free(v23);
      return v24;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v9 + 160, a3, a4);
    v23 = (&v56 - v25);
    bzero(&v56 - v25, v26);
  }

  v27 = v17 - 1;
  v28 = a9;
  v29 = v12 - 1;
  if (v19)
  {
    v30 = v14 + 1;
  }

  else
  {
    v29 = v12;
    v30 = v14;
  }

  if (v19)
  {
    v31 = v19 + 1;
  }

  else
  {
    v27 = v17;
    v31 = v19;
  }

  v32 = v29 - (v27 & 1);
  v33 = v27 & 0xFFFFFFFFFFFFFFFELL;
  v34 = v18 - 1;
  v35 = v11 - 1;
  if (v20)
  {
    v36 = v13 + 1;
  }

  else
  {
    v35 = v11;
    v36 = v13;
  }

  if (v20)
  {
    v37 = v20 + 1;
  }

  else
  {
    v34 = v18;
    v37 = v20;
  }

  if (v34)
  {
    if ((v57 & 1) != 0 || (*v66 * (v35 + 1 + v36)) > *v67 || (v38 = v34 + 1 + v37, (*v61 * v38) > *a9) || (v61[1] * (v38 / 2)) > a9[1] || (v61[2] * v38) > a9[2])
    {
      --v34;
      --v35;
    }

    else
    {
      ++v64;
      ++v65;
      ++v35;
      ++v34;
    }
  }

  if (v32 + v30 > v62)
  {
    v32 = v62 - v30;
  }

  if (v33 + v31 > v63)
  {
    v33 = v63 - v31;
  }

  if (v35 + v36 > v65)
  {
    v35 = v65 - v36;
  }

  if (v34 + v37 > v64)
  {
    v34 = v64 - v37;
  }

  if (v32 >= v33)
  {
    v39 = v33;
  }

  else
  {
    v39 = v32;
  }

  if (v35 >= v34)
  {
    v40 = v34;
  }

  else
  {
    v40 = v35;
  }

  if (((v36 + v40 - 1) * *v66 + 4 * (v39 + v30)) > *v67)
  {
    v57 = v36;
    v41 = v30;
    v42 = v31;
    v43 = v9;
    v44 = a9;
    goto LABEL_54;
  }

  v45 = v40 + v37 - 1;
  v46 = v39 + v31;
  if ((*v61 * v45 + 2 * (v39 + v31)) > *a9)
  {
    v57 = v36;
    v41 = v30;
    v42 = v31;
    v43 = v9;
    v44 = a9;
    goto LABEL_54;
  }

  v47 = v60;
  if (*(v60 + 8) && v61[1] * ((v40 + v37 + 1) / 2 - 1) + 4 * ((v46 + 1 + ((v46 + 1) >> 63)) >> 1) > a9[1])
  {
    v57 = v36;
    v41 = v30;
    v42 = v31;
    v43 = v9;
    v44 = a9;
    goto LABEL_54;
  }

  if (*(v60 + 16) && (2 * v46 + v61[2] * v45) > a9[2])
  {
    v57 = v36;
    v41 = v30;
    v42 = v31;
    v43 = v9;
    v44 = a9;
LABEL_54:
    fig_log_get_emitter();
    v24 = FigSignalErrorAtGM();
    v47 = v60;
    v28 = v44;
    v9 = v43;
    v31 = v42;
    v30 = v41;
    v36 = v57;
    if (v24)
    {
      goto LABEL_60;
    }
  }

  *v23 = v9;
  *(v23 + 4) = v62;
  v48 = v64;
  *(v23 + 12) = v65;
  *(v23 + 20) = v39;
  *(v23 + 28) = v40;
  *(v23 + 36) = v30;
  *(v23 + 44) = v36;
  v23[11] = v48;
  v23[12] = v39;
  v23[13] = v40;
  v23[14] = v31;
  v49 = v66;
  v23[7] = v59;
  v23[8] = v49;
  v50 = v63;
  v23[9] = v67;
  v23[10] = v50;
  v23[15] = v37;
  v23[16] = v47;
  v23[17] = v61;
  v23[18] = v28;
  v23[19] = v58;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v9, global_queue, v23, vt_Copy_BGRA_rgb_xf420_neon_fp16_GCD);
  if (!v9)
  {
    return 0;
  }

  v52 = (v23 + 20);
  v53 = v9;
  while (1)
  {
    v54 = *v52++;
    v24 = v54;
    if (v54)
    {
      break;
    }

    if (!--v53)
    {
      v24 = 0;
      break;
    }
  }

LABEL_60:
  if (v9 == 255)
  {
    goto LABEL_61;
  }

  return v24;
}

unsigned __int8 *vt_Copy_BGRA_rgb_xf420_neon_fp16_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, uint8x8_t a5, double a6, double a7, double a8, double a9, float32x4_t a10)
{
  v14 = 0;
  v169 = *(result + 36);
  v15 = *(result + 24);
  v16 = 2 * *result;
  v17 = *(result + 44) + 2 * (*(result + 28) * a2 / v16);
  v18 = *(result + 13);
  v19 = *(result + 14);
  v20 = *(result + 19);
  v21 = *(result + 16);
  v22 = v18 * a2 / v16;
  v23 = *(result + 15) + 2 * v22;
  v24 = v18 + v18 * a2;
  v25 = *(result + 17);
  v26 = **(result + 8);
  v27 = **(result + 7);
  v28 = *v25;
  v29 = v25[1];
  v30 = *v21;
  v31 = v21[1];
  v32 = *(v20 + 128);
  v33 = *(v20 + 136);
  v173 = *(v20 + 154);
  a5.i32[0] = v173;
  v34 = *(v20 + 144);
  v35 = v24 / v16 - v22;
  v36 = v26 * v17;
  v37 = *(v20 + 132);
  v38 = *(v20 + 146);
  v39 = *(v20 + 148);
  v40 = *(v20 + 150);
  v41 = *(v20 + 152);
  _S0 = *(v20 + 36);
  _S1 = *(v20 + 40);
  v44 = vmovl_u8(a5);
  _S2 = *(v20 + 44);
  v46.i32[0] = *(v20 + 48);
  v11.i32[0] = *(v20 + 52);
  v12.i32[0] = *(v20 + 56);
  v48 = *(v20 + 60);
  v47 = *(v20 + 64);
  v49 = *(v20 + 68);
  v171 = 0u;
  v172 = 0u;
  do
  {
    v50 = 0;
    v51 = *(&v173 + v14);
    v52 = *(&v171 + v14);
    do
    {
      v170 = v52;
      *(&v170 | v50 & 7) = v51 + 4 * v50;
      v52 = v170;
      ++v50;
    }

    while (v50 != 8);
    *(&v171 + v14++) = v170;
  }

  while (v14 != 4);
  v53 = 2 * v35;
  if (2 * v35 >= 1)
  {
    v54 = 0;
    v55 = v32;
    v56 = v15 & 0xFFFFFFFE;
    _S3 = v33 / v55;
    v58 = v34;
    v59 = v38;
    v60 = v39;
    v61 = v40;
    v62 = v41;
    v46.i32[1] = v48;
    __asm { FMOV            V22.2S, #0.25 }

    *a10.f32 = vmul_f32(v46, _D22);
    v11.i32[1] = v47;
    *v11.f32 = vmul_f32(*v11.f32, _D22);
    v12.i32[1] = v49;
    *v12.f32 = vmul_f32(*v12.f32, _D22);
    __asm
    {
      FCVT            H5, S0
      FCVT            H8, S1
    }

    v166 = _H8;
    __asm { FCVT            H8, S2 }

    v157 = vdupq_lane_s32(vcvt_f16_f32(a10), 0);
    v70 = vdupq_lane_s32(vcvt_f16_f32(v11), 0);
    v71 = vcvt_f16_f32(v12);
    v72 = vdupq_lane_s32(v71, 0);
    *v71.i16 = v34;
    v73 = vdupq_lane_s16(v71, 0);
    *v71.i16 = v38;
    v74 = vdupq_lane_s16(v71, 0);
    v164 = v74;
    v165 = *_Q8.i16;
    *v74.i16 = v39;
    v75 = vdupq_lane_s16(*v74.i8, 0);
    *v74.i16 = v40;
    v76 = vdupq_lane_s16(*v74.i8, 0);
    *v74.i16 = v41;
    v162 = vdupq_lane_s16(*v74.i8, 0);
    v163 = v76;
    v77 = v31 + v29 * (v23 / 2);
    if (v37 >= 0x11)
    {
      v78 = 0;
    }

    else
    {
      v78 = 16 - v37;
    }

    v79 = (v77 + 2 * v19);
    v80 = (v30 + v28 * v23 + 2 * v19);
    v81 = (v27 + v36 + 4 * v169);
    v82 = v78;
    v83 = vdupq_n_s16(v78);
    v84 = v44.u16[1];
    __asm { FCVT            H11, S3 }

    v168 = v11.f32[0];
    v86 = a10.i64[0];
    v161 = v11.f32[1];
    v87.i32[0] = v12.i32[1];
    v160 = v12.f32[1];
    v167 = v12.f32[0];
    v158 = v72;
    v159 = v70;
    do
    {
      v88 = v81 + v26;
      v89 = &v80->i8[v28];
      if (v15 < 8)
      {
        v115 = 0;
        v95 = v79;
        v94 = (v80 + v28);
        v93 = (v81 + v26);
      }

      else
      {
        v90 = 0;
        v91 = *(&v171 + 8);
        v92 = v172;
        v93 = (v81 + v26);
        v94 = (v80 + v28);
        v95 = v79;
        do
        {
          v175.val[0].i64[0] = *v81;
          v96 = v81[1];
          v97.i64[0] = v81[2];
          v98 = v81[3];
          v81 += 4;
          v175.val[0].i64[1] = v96;
          v97.i64[1] = v98;
          v175.val[1] = v97;
          v99 = vqtbl2_s8(v175, *&v171);
          v100 = vqtbl2_s8(v175, v91);
          *v101.i8 = vzip1_s8(v99, 0);
          v101.u64[1] = vzip2_s8(v99, 0);
          *v175.val[0].i8 = vqtbl2_s8(v175, v92);
          *v175.val[1].i8 = vzip1_s8(v100, 0);
          *v102.i8 = vzip1_s8(*v175.val[0].i8, 0);
          v175.val[1].u64[1] = vzip2_s8(v100, 0);
          v174.val[0].i64[0] = *v93;
          v103 = v93[1];
          v104.i64[0] = v93[2];
          v105 = v93[3];
          v93 += 4;
          v102.u64[1] = vzip2_s8(*v175.val[0].i8, 0);
          v174.val[0].i64[1] = v103;
          v104.i64[1] = v105;
          v106 = vcvtq_f16_u16(v102);
          v174.val[1] = v104;
          v107 = vqtbl2_s8(v174, *&v171);
          *v102.i8 = vqtbl2_s8(v174, v91);
          *v174.val[0].i8 = vqtbl2_s8(v174, v92);
          v175.val[0] = vmulq_n_f16(vcvtq_f16_u16(v101), _H11);
          *v108.i8 = vzip1_s8(v107, 0);
          v108.u64[1] = vzip2_s8(v107, 0);
          v109 = vcvtq_f16_u16(v108);
          v175.val[1] = vmulq_n_f16(vcvtq_f16_u16(v175.val[1]), _H11);
          *v108.i8 = vzip1_s8(*v102.i8, 0);
          v108.u64[1] = vzip2_s8(*v102.i8, 0);
          v110 = vcvtq_f16_u16(v108);
          v111 = vmulq_n_f16(v106, _H11);
          *v108.i8 = vzip1_s8(*v174.val[0].i8, 0);
          v108.u64[1] = vzip2_s8(*v174.val[0].i8, 0);
          v112 = vmulq_n_f16(v109, _H11);
          v113 = vmulq_n_f16(v110, _H11);
          v174.val[0] = vmulq_n_f16(vcvtq_f16_u16(v108), _H11);
          v13 = vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v73, v112, _H5), v113, v166), v174.val[0], v165), v73), v75);
          _Q8 = vuzp1q_s16(v112, v113);
          v114 = vaddq_f16(vuzp2q_s16(v112, v113), vaddq_f16(vpaddq_f16(v175.val[0], v175.val[1]), _Q8));
          *v80++ = vshlq_u16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v73, v175.val[0], _H5), v175.val[1], v166), v111, v165), v73), v75)), v83);
          *v94++ = vshlq_u16(vcvtq_u16_f16(v13), v83);
          v87 = vshlq_u16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_f16(vmlaq_f16(vmlaq_f16(v164, v157, vzip1q_s16(v114, v114)), v70, vzip2q_s16(v114, v114)), v72, vaddq_f16(vtrn2q_s16(v174.val[0], v174.val[0]), vaddq_f16(vaddq_f16(vtrn1q_s16(v111, v111), vtrn2q_s16(v111, v111)), vtrn1q_s16(v174.val[0], v174.val[0])))), v163), v162)), v83);
          *v95++ = v87;
          v90 += 8;
        }

        while (v90 < v15 - 7);
        v115 = v15 & 0x7FFFFFF8;
      }

      if (v115 < v56)
      {
        v116 = 0;
        v117 = v81 + v84;
        v118 = v93 + v84;
        do
        {
          v119 = v116 + v173;
          v87.i8[0] = *(v81 + v119);
          *&v120 = v87.u32[0];
          v121 = _S3 * *&v120;
          LOBYTE(v120) = v117[v116];
          *&v122 = v120;
          v123 = _S3 * *&v122;
          v124 = v116 + BYTE2(v173);
          LOBYTE(v122) = *(v81 + v124);
          *&v125 = v122;
          v126 = _S3 * *&v125;
          LOBYTE(v125) = *(v81 + v119 + 4);
          *&v127 = v125;
          v128 = _S3 * *&v127;
          LOBYTE(v127) = v117[v116 + 4];
          *&v129 = v127;
          v130 = _S3 * *&v129;
          LOBYTE(v129) = *(v81 + v124 + 4);
          *&v131 = v129;
          v132 = _S3 * *&v131;
          v133 = v93 + v119;
          LOBYTE(v131) = *v133;
          *&v134 = v131;
          v135 = _S3 * *&v134;
          LOBYTE(v134) = v118[v116];
          *&v136 = v134;
          v137 = _S3 * *&v136;
          LOBYTE(v136) = *(v93 + v124);
          *&v138 = v136;
          v139 = _S3 * *&v138;
          LOBYTE(v138) = v133[4];
          *v87.i32 = _S3 * v138;
          v13.i8[0] = v118[v116 + 4];
          *v13.i32 = _S3 * v13.u32[0];
          _Q8.i8[0] = *(v93 + v124 + 4);
          *_Q8.i32 = _S3 * _Q8.u32[0];
          v140 = (((_S1 * v123) + (_S0 * v121)) + (_S2 * v126)) + v58;
          v141 = (((_S1 * v130) + (_S0 * v128)) + (_S2 * v132)) + v58;
          v142 = (((_S1 * v137) + (_S0 * v135)) + (_S2 * v139)) + v58;
          v143 = (((_S1 * *v13.i32) + (_S0 * *v87.i32)) + (_S2 * *_Q8.i32)) + v58;
          if (v140 < v58)
          {
            v144 = v58;
          }

          else
          {
            v144 = (((_S1 * v123) + (_S0 * v121)) + (_S2 * v126)) + v58;
          }

          if (v140 > v60)
          {
            v144 = v60;
          }

          v80->i16[0] = llroundf(v144) << v82;
          if (v141 < v58)
          {
            v145 = v58;
          }

          else
          {
            v145 = (((_S1 * v130) + (_S0 * v128)) + (_S2 * v132)) + v58;
          }

          if (v141 > v60)
          {
            v145 = v60;
          }

          v80->i16[1] = llroundf(v145) << v82;
          if (v142 < v58)
          {
            v146 = v58;
          }

          else
          {
            v146 = (((_S1 * v137) + (_S0 * v135)) + (_S2 * v139)) + v58;
          }

          if (v142 <= v60)
          {
            v147 = v146;
          }

          else
          {
            v147 = v60;
          }

          v94->i16[0] = llroundf(v147) << v82;
          if (v143 < v58)
          {
            v148 = v58;
          }

          else
          {
            v148 = (((_S1 * *v13.i32) + (_S0 * *v87.i32)) + (_S2 * *_Q8.i32)) + v58;
          }

          if (v143 > v60)
          {
            v148 = v60;
          }

          v94->i16[1] = llroundf(v148) << v82;
          v149 = ((v121 + v128) + v135) + *v87.i32;
          v150 = ((v123 + v130) + v137) + *v13.i32;
          v151 = ((v126 + v132) + v139) + *_Q8.i32;
          v152 = ((v59 + (v149 * *&v86)) + (v150 * v168)) + (v151 * v167);
          v153 = v62;
          if (v152 <= v62)
          {
            v153 = ((v59 + (v149 * *&v86)) + (v150 * v168)) + (v151 * v167);
            if (v152 < v61)
            {
              v153 = v61;
            }
          }

          *v87.i32 = (v59 + (v149 * *(&v86 + 1))) + (v150 * v161);
          v154 = *v87.i32 + (v151 * v160);
          v95->i16[0] = llroundf(v153) << v82;
          v155 = v62;
          if (v154 <= v62)
          {
            v155 = *v87.i32 + (v151 * v160);
            if (v154 < v61)
            {
              v155 = v61;
            }
          }

          v95->i16[1] = llroundf(v155) << v82;
          v95 = (v95 + 4);
          v115 += 2;
          v116 += 8;
          v80 = (v80 + 4);
          v94 = (v94 + 4);
        }

        while (v115 < v56);
      }

      v81 = &v88[v26];
      v80 = &v89[v28];
      v79 = (v79 + v29);
      v54 += 2;
      v72 = v158;
      v70 = v159;
    }

    while (v54 < v53);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_BGRA_rgb_xf420(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4, void *a5, uint64_t *a6, uint64_t a7, void *a8, void *a9)
{
  v60 = a7;
  v61 = a8;
  v66 = a4;
  v67 = a5;
  v59 = a3;
  v68 = *MEMORY[0x1E69E9840];
  v58 = a1;
  v9 = *(a1 + 162);
  v10 = a2[1];
  v12 = a2[2];
  v11 = a2[3];
  v14 = a2[4];
  v13 = a2[5];
  v15 = *a6;
  v62 = *a2;
  v63 = v15;
  v16 = a6[1];
  v17 = a6[2];
  v18 = a6[3];
  v19 = a6[4];
  v20 = a6[5];
  v64 = v16;
  v65 = v10;
  v22 = v13 + v11 != v10 || v20 + v18 != v16;
  LODWORD(v57) = v22;
  if (v9 == 255)
  {
    v23 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v23)
    {
      v24 = 0;
LABEL_61:
      free(v23);
      return v24;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v9 + 160, a3, a4);
    v23 = (&v56 - v25);
    bzero(&v56 - v25, v26);
  }

  v27 = v17 - 1;
  v28 = a9;
  v29 = v12 - 1;
  if (v19)
  {
    v30 = v14 + 1;
  }

  else
  {
    v29 = v12;
    v30 = v14;
  }

  if (v19)
  {
    v31 = v19 + 1;
  }

  else
  {
    v27 = v17;
    v31 = v19;
  }

  v32 = v29 - (v27 & 1);
  v33 = v27 & 0xFFFFFFFFFFFFFFFELL;
  v34 = v18 - 1;
  v35 = v11 - 1;
  if (v20)
  {
    v36 = v13 + 1;
  }

  else
  {
    v35 = v11;
    v36 = v13;
  }

  if (v20)
  {
    v37 = v20 + 1;
  }

  else
  {
    v34 = v18;
    v37 = v20;
  }

  if (v34)
  {
    if ((v57 & 1) != 0 || (*v66 * (v35 + 1 + v36)) > *v67 || (v38 = v34 + 1 + v37, (*v61 * v38) > *a9) || (v61[1] * (v38 / 2)) > a9[1] || (v61[2] * v38) > a9[2])
    {
      --v34;
      --v35;
    }

    else
    {
      ++v64;
      ++v65;
      ++v35;
      ++v34;
    }
  }

  if (v32 + v30 > v62)
  {
    v32 = v62 - v30;
  }

  if (v33 + v31 > v63)
  {
    v33 = v63 - v31;
  }

  if (v35 + v36 > v65)
  {
    v35 = v65 - v36;
  }

  if (v34 + v37 > v64)
  {
    v34 = v64 - v37;
  }

  if (v32 >= v33)
  {
    v39 = v33;
  }

  else
  {
    v39 = v32;
  }

  if (v35 >= v34)
  {
    v40 = v34;
  }

  else
  {
    v40 = v35;
  }

  if (((v36 + v40 - 1) * *v66 + 4 * (v39 + v30)) > *v67)
  {
    v57 = v36;
    v41 = v30;
    v42 = v31;
    v43 = v9;
    v44 = a9;
    goto LABEL_54;
  }

  v45 = v40 + v37 - 1;
  v46 = v39 + v31;
  if ((*v61 * v45 + 2 * (v39 + v31)) > *a9)
  {
    v57 = v36;
    v41 = v30;
    v42 = v31;
    v43 = v9;
    v44 = a9;
    goto LABEL_54;
  }

  v47 = v60;
  if (*(v60 + 8) && v61[1] * ((v40 + v37 + 1) / 2 - 1) + 4 * ((v46 + 1 + ((v46 + 1) >> 63)) >> 1) > a9[1])
  {
    v57 = v36;
    v41 = v30;
    v42 = v31;
    v43 = v9;
    v44 = a9;
    goto LABEL_54;
  }

  if (*(v60 + 16) && (2 * v46 + v61[2] * v45) > a9[2])
  {
    v57 = v36;
    v41 = v30;
    v42 = v31;
    v43 = v9;
    v44 = a9;
LABEL_54:
    fig_log_get_emitter();
    v24 = FigSignalErrorAtGM();
    v47 = v60;
    v28 = v44;
    v9 = v43;
    v31 = v42;
    v30 = v41;
    v36 = v57;
    if (v24)
    {
      goto LABEL_60;
    }
  }

  *v23 = v9;
  *(v23 + 4) = v62;
  v48 = v64;
  *(v23 + 12) = v65;
  *(v23 + 20) = v39;
  *(v23 + 28) = v40;
  *(v23 + 36) = v30;
  *(v23 + 44) = v36;
  v23[11] = v48;
  v23[12] = v39;
  v23[13] = v40;
  v23[14] = v31;
  v49 = v66;
  v23[7] = v59;
  v23[8] = v49;
  v50 = v63;
  v23[9] = v67;
  v23[10] = v50;
  v23[15] = v37;
  v23[16] = v47;
  v23[17] = v61;
  v23[18] = v28;
  v23[19] = v58;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v9, global_queue, v23, vt_Copy_BGRA_rgb_xf420_GCD);
  if (!v9)
  {
    return 0;
  }

  v52 = (v23 + 20);
  v53 = v9;
  while (1)
  {
    v54 = *v52++;
    v24 = v54;
    if (v54)
    {
      break;
    }

    if (!--v53)
    {
      v24 = 0;
      break;
    }
  }

LABEL_60:
  if (v9 == 255)
  {
    goto LABEL_61;
  }

  return v24;
}

unsigned __int8 *vt_Copy_BGRA_rgb_xf420_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, float a5, float a6, float a7, float a8)
{
  v17 = 2 * *result;
  v18 = *(result + 13);
  v19 = v18 * a2 / v17;
  v20 = 2 * ((v18 + v18 * a2) / v17 - v19);
  if (v20 >= 1)
  {
    v21 = 0;
    v22 = *(result + 19);
    v23 = *(result + 24) & 0xFFFFFFFE;
    v24 = **(result + 8);
    v26 = *(result + 16);
    v25 = *(result + 17);
    v27 = *v25;
    v28 = v25[1];
    *&v29 = *(v22 + 136);
    v30 = *&v29 / *(v22 + 128);
    LOWORD(v29) = *(v22 + 144);
    v31 = v29;
    LOWORD(a5) = *(v22 + 146);
    v32 = LODWORD(a5);
    LOWORD(a6) = *(v22 + 148);
    v33 = LODWORD(a6);
    LOWORD(a7) = *(v22 + 150);
    v34 = LODWORD(a7);
    LOWORD(a8) = *(v22 + 152);
    v35 = LODWORD(a8);
    v36 = *(v22 + 36);
    v37 = *(v22 + 40);
    v38 = *(v22 + 44);
    v39 = *(v22 + 48) * 0.25;
    v40 = *(v22 + 52) * 0.25;
    v41 = *(v22 + 56) * 0.25;
    v42 = *(v22 + 60) * 0.25;
    v43 = *(v22 + 64) * 0.25;
    v44 = *(v22 + 68);
    v45 = v44 * 0.25;
    v46 = *(result + 14);
    v47 = *(result + 15) + 2 * v19;
    v48 = *(result + 44) + 2 * (*(result + 28) * a2 / v17);
    v49 = *v26;
    v50 = v26[1];
    v51 = (v49 + v27 * v47 + 2 * v46);
    v52 = **(result + 7) + v48 * v24 + 4 * *(result + 36);
    v53 = *(v22 + 132);
    v54 = 16 - v53;
    if (v53 >= 0x11)
    {
      v54 = 0;
    }

    v55 = *(v22 + 156);
    v56 = v50 + v28 * (v47 / 2);
    v57 = *(v22 + 155);
    v58 = *(v22 + 154);
    v59 = v56 + 2 * v46;
    v60 = v54;
    do
    {
      v61 = v52 + v24;
      v62 = &v51[v27];
      if (v23 >= 1)
      {
        v63 = 0;
        v64 = v52 + v24;
        v65 = &v51[v27];
        do
        {
          LOBYTE(v44) = *(v52 + v58);
          v66 = v30 * LODWORD(v44);
          LOBYTE(v11) = *(v52 + v57);
          v67 = v30 * LODWORD(v11);
          LOBYTE(v12) = *(v52 + v55);
          v68 = v30 * LODWORD(v12);
          LOBYTE(v13) = *(v52 + 4 + v58);
          v69 = v30 * LODWORD(v13);
          LOBYTE(v14) = *(v52 + 4 + v57);
          LOBYTE(v15) = *(v52 + 4 + v55);
          v70 = v30 * LODWORD(v14);
          v71 = v30 * LODWORD(v15);
          LOBYTE(v15) = *(v64 + v58);
          v15 = v30 * LODWORD(v15);
          LOBYTE(v16) = *(v64 + v57);
          LOBYTE(v8) = *(v64 + v55);
          v72 = v30 * LODWORD(v16);
          v16 = v30 * LODWORD(v8);
          LOBYTE(v8) = *(v64 + 4 + v58);
          v8 = v30 * LODWORD(v8);
          LOBYTE(v9) = *(v64 + 4 + v57);
          v9 = v30 * LODWORD(v9);
          LOBYTE(v10) = *(v64 + 4 + v55);
          v10 = v30 * LODWORD(v10);
          v73 = (((v37 * v67) + (v36 * v66)) + (v38 * v68)) + v31;
          v74 = (((v37 * v70) + (v36 * v69)) + (v38 * v71)) + v31;
          v75 = (((v37 * v72) + (v36 * v15)) + (v38 * v16)) + v31;
          v76 = (((v37 * v9) + (v36 * v8)) + (v38 * v10)) + v31;
          if (v73 < v31)
          {
            v77 = v31;
          }

          else
          {
            v77 = (((v37 * v67) + (v36 * v66)) + (v38 * v68)) + v31;
          }

          if (v73 <= v33)
          {
            v78 = v77;
          }

          else
          {
            v78 = v33;
          }

          *v51 = llroundf(v78) << v60;
          if (v74 < v31)
          {
            v79 = v31;
          }

          else
          {
            v79 = (((v37 * v70) + (v36 * v69)) + (v38 * v71)) + v31;
          }

          if (v74 > v33)
          {
            v79 = v33;
          }

          *(v51 + 1) = llroundf(v79) << v60;
          if (v75 < v31)
          {
            v80 = v31;
          }

          else
          {
            v80 = (((v37 * v72) + (v36 * v15)) + (v38 * v16)) + v31;
          }

          if (v75 > v33)
          {
            v80 = v33;
          }

          *v65 = llroundf(v80) << v60;
          if (v76 < v31)
          {
            v81 = v31;
          }

          else
          {
            v81 = (((v37 * v9) + (v36 * v8)) + (v38 * v10)) + v31;
          }

          if (v76 > v33)
          {
            v81 = v33;
          }

          *(v65 + 1) = llroundf(v81) << v60;
          v82 = ((v66 + v69) + v15) + v8;
          v83 = ((v67 + v70) + v72) + v9;
          v12 = ((v68 + v71) + v16) + v10;
          v14 = ((v32 + (v82 * v39)) + (v83 * v40)) + (v12 * v41);
          v13 = v35;
          if (v14 <= v35)
          {
            v13 = ((v32 + (v82 * v39)) + (v83 * v40)) + (v12 * v41);
            if (v14 < v34)
            {
              v13 = v34;
            }
          }

          v84 = (v59 + 2 * v63);
          v11 = ((v32 + (v82 * v42)) + (v83 * v43)) + (v12 * v45);
          *v84 = llroundf(v13) << v60;
          v44 = v35;
          if (v11 <= v35)
          {
            v44 = v11;
            if (v11 < v34)
            {
              v44 = v34;
            }
          }

          v52 += 8;
          v64 += 8;
          v51 += 4;
          v65 += 4;
          v84[1] = llroundf(v44) << v60;
          v63 += 2;
        }

        while (v63 < v23);
      }

      v52 = v61 + v24;
      v51 = &v62[v27];
      v59 += v28;
      v21 += 2;
    }

    while (v21 < v20);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_BGRA_TRC_Tone_Mat_TRC_422vf_neon_fp16(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4, void *a5, uint64_t *a6, uint64_t a7, unint64_t *a8, void *a9)
{
  v61 = a8;
  v59 = a7;
  v64 = a5;
  v66 = a4;
  v67 = *MEMORY[0x1E69E9840];
  v10 = *(a1 + 162);
  v12 = *a2;
  v11 = a2[1];
  v13 = a2[2];
  v58 = a2[3];
  v14 = a2[4];
  v15 = a2[5];
  v16 = *a6;
  v62 = a6[1];
  v63 = v11;
  v18 = a6[2];
  v17 = a6[3];
  v56 = a1;
  v57 = v17;
  v19 = a6[4];
  v60 = a6[5];
  v65 = v16;
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
    v22 = (&v54 - v24);
    bzero(&v54 - v24, v25);
  }

  v55 = a3;
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
    v31 = v60;
    if (v21 || (4 * (v29 + v28) + 4) > *v66 || (v32 = v27 + 1 + v30, v32 > *v61) || ((v32 + (v32 >> 63)) & 0xFFFFFFFFFFFFFFFELL) > v61[1] || (v33 = v61[2], v32 > v33) && v33)
    {
      --v27;
      --v28;
    }

    else
    {
      ++v65;
      ++v28;
      ++v12;
      ++v27;
    }
  }

  else
  {
    v31 = v60;
  }

  if (v28 + v29 > v12)
  {
    v28 = v12 - v29;
  }

  if (v27 + v30 > v65)
  {
    v27 = v65 - v30;
  }

  if (v15 + v58 <= v63)
  {
    v34 = v58;
  }

  else
  {
    v34 = v63 - v15;
  }

  if (v31 + v57 <= v62)
  {
    v35 = v57;
  }

  else
  {
    v35 = v62 - v31;
  }

  if (v28 >= v27)
  {
    v36 = v27;
  }

  else
  {
    v36 = v28;
  }

  if (v34 >= v35)
  {
    v37 = v35;
  }

  else
  {
    v37 = v34;
  }

  if ((*v66 * (v15 + v37 - 1) + 4 * (v36 + v29)) <= *v64)
  {
    v42 = v31 + v37 - 1;
    v43 = v36 + v30;
    if (v36 + v30 + *v61 * v42 <= *a9)
    {
      v44 = v59;
      if (*(v59 + 8) && ((v43 + 1 + ((v43 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v61[1] * v42 > a9[1])
      {
        v58 = v29;
        v38 = v10;
        v39 = v12;
        v40 = v15;
        v41 = a9;
      }

      else
      {
        if (!*(v59 + 16) || v43 + v61[2] * v42 <= a9[2])
        {
          goto LABEL_53;
        }

        v58 = v29;
        v38 = v10;
        v39 = v12;
        v40 = v15;
        v41 = a9;
      }
    }

    else
    {
      v58 = v29;
      v38 = v10;
      v39 = v12;
      v40 = v15;
      v41 = a9;
    }
  }

  else
  {
    v58 = v29;
    v38 = v10;
    v39 = v12;
    v40 = v15;
    v41 = a9;
  }

  fig_log_get_emitter();
  v45 = FigSignalErrorAtGM();
  v44 = v59;
  v31 = v60;
  v26 = v41;
  v15 = v40;
  v12 = v39;
  v10 = v38;
  v29 = v58;
  if (v45)
  {
    v23 = v45;
    goto LABEL_58;
  }

LABEL_53:
  *v22 = v10;
  *(v22 + 4) = v12;
  v46 = v62;
  *(v22 + 12) = v63;
  *(v22 + 20) = v36;
  *(v22 + 28) = v37;
  *(v22 + 36) = v29;
  *(v22 + 44) = v15;
  v22[11] = v46;
  v22[12] = v36;
  v22[13] = v37;
  v22[14] = v30;
  v48 = v65;
  v47 = v66;
  v22[7] = v55;
  v22[8] = v47;
  v22[9] = v64;
  v22[10] = v48;
  v22[15] = v31;
  v22[16] = v44;
  v22[17] = v61;
  v22[18] = v26;
  v22[19] = v56;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v10, global_queue, v22, vt_Copy_BGRA_TRC_Tone_Mat_TRC_422vf_neon_fp16_GCD);
  if (!v10)
  {
    return 0;
  }

  v50 = (v22 + 20);
  v51 = v10;
  while (1)
  {
    v52 = *v50++;
    v23 = v52;
    if (v52)
    {
      break;
    }

    if (!--v51)
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

unsigned __int8 *vt_Copy_BGRA_TRC_Tone_Mat_TRC_422vf_neon_fp16_GCD(unsigned __int8 *result, uint64_t a2, double a3, float32x4_t a4, float32x4_t a5, double a6, float32x4_t a7)
{
  v7 = 0;
  v205 = *(result + 36);
  v8 = *(result + 24);
  v9 = *result;
  v10 = *(result + 28) * a2 / v9 + *(result + 44);
  v12 = *(result + 13);
  v11 = *(result + 14);
  v13 = *(result + 19);
  v14 = *(result + 15);
  v15 = *(result + 16);
  v16 = *(result + 17);
  v17 = **(result + 8);
  v203 = **(result + 7);
  v18 = *v16;
  v19 = v16[1];
  v20 = v16[2];
  v21 = v15[1];
  v201 = *v15;
  v22 = v15[2];
  v23 = *(v13 + 128);
  v221 = *(v13 + 154);
  v24 = *(v13 + 144);
  v25 = v12 * a2 / v9;
  v26 = v25 + v14;
  v27 = *(v13 + 146);
  v28 = v17 * v10;
  v29 = v21 + v19 * (v25 + v14);
  v30 = v22 + v20 * (v25 + v14);
  v31 = *(v13 + 148);
  v32 = *(v13 + 150);
  v33 = *(v13 + 152);
  _S12 = *(v13 + 36);
  _S13 = *(v13 + 40);
  a7.i32[0] = *(v13 + 48);
  v216 = *(v13 + 44);
  a5.i32[0] = *(v13 + 52);
  v36.i32[0] = *(v13 + 56);
  _Q28.i32[0] = *(v13 + 60);
  v37 = *(v13 + 64);
  a4.i32[0] = *(v13 + 68);
  v215 = *(v13 + 72);
  v214 = *(v13 + 76);
  v213 = *(v13 + 80);
  v212 = *(v13 + 84);
  v211 = *(v13 + 88);
  v210 = *(v13 + 92);
  v209 = *(v13 + 96);
  v208 = *(v13 + 100);
  v207 = *(v13 + 104);
  _S7 = *(v13 + 108);
  _S16 = *(v13 + 112);
  _S17 = *(v13 + 116);
  _S18 = *(v13 + 120);
  v219 = 0u;
  v220 = 0u;
  v43 = (v12 + v12 * a2) / v9;
  do
  {
    v44 = 0;
    v45 = *(&v221 + v7);
    v46 = *(&v219 + v7);
    do
    {
      v218 = v46;
      *(&v218 | v44 & 7) = v45 + 4 * v44;
      v46 = v218;
      ++v44;
    }

    while (v44 != 8);
    *(&v219 + v7++) = v218;
  }

  while (v7 != 4);
  v47 = v43 - v25;
  if (v43 - v25 >= 1)
  {
    v48 = 0;
    v49 = v24;
    v50 = v27;
    v51 = v31;
    v217 = v32;
    _S29 = 8191.0 / v23;
    v53 = v33;
    a7.i32[1] = _Q28.i32[0];
    v54 = 1056964608;
    *a7.f32 = vmul_f32(*a7.f32, 0x3F0000003F000000);
    a5.i32[1] = v37;
    *a5.f32 = vmul_f32(*a5.f32, 0x3F0000003F000000);
    v36.i32[1] = a4.i32[0];
    *a4.f32 = vmul_f32(v36, 0x3F0000003F000000);
    __asm { FCVT            H0, S12 }

    v200 = _H0;
    __asm { FCVT            H0, S13 }

    v199 = _H0;
    _S0 = v216;
    __asm { FCVT            H0, S0 }

    v197 = *&_S0;
    v198 = vdupq_lane_s32(vcvt_f16_f32(a7), 0);
    v62 = v13 + 16548;
    v63 = v8 & 0xFFFFFFFE;
    v64 = v13 + 32932;
    v65 = v13 + 164;
    _Q0 = vdupq_lane_s32(vcvt_f16_f32(a4), 0);
    v195 = _Q0;
    v196 = vdupq_lane_s32(vcvt_f16_f32(a5), 0);
    __asm { FCVT            H0, S7 }

    v194 = *_Q0.i16;
    __asm { FCVT            H0, S16 }

    v193 = *_Q0.i16;
    __asm { FCVT            H0, S17 }

    v192 = *_Q0.i16;
    __asm { FCVT            H0, S18 }

    v191 = *_Q0.i16;
    *_Q0.i32 = v215;
    __asm { FCVT            H0, S0 }

    v190 = *_Q0.i16;
    *_Q0.i32 = v214;
    __asm { FCVT            H0, S0 }

    v189 = *_Q0.i16;
    *_Q0.i32 = v213;
    __asm { FCVT            H0, S0 }

    v188 = *_Q0.i16;
    *_Q0.i32 = v212;
    __asm { FCVT            H0, S0 }

    v187 = *_Q0.i16;
    *_Q0.i32 = v211;
    __asm { FCVT            H0, S0 }

    v186 = *_Q0.i16;
    *_Q0.i32 = v210;
    __asm { FCVT            H0, S0 }

    v185 = *_Q0.i16;
    *_Q0.i16 = v24;
    v67 = vdupq_lane_s16(*_Q0.i8, 0);
    *_Q0.i16 = v27;
    v68 = vdupq_lane_s16(*_Q0.i8, 0);
    v183 = v68;
    v184 = v67;
    *v68.i16 = v31;
    v69 = vdupq_lane_s16(*v68.i8, 0);
    *v68.i16 = v32;
    _Q0 = vdupq_lane_s16(*v68.i8, 0);
    v181 = _Q0;
    v182 = v69;
    *_Q0.i32 = v209;
    __asm { FCVT            H0, S0 }

    v180 = *_Q0.i16;
    *_Q0.i16 = v33;
    v71 = vdupq_lane_s16(*_Q0.i8, 0);
    if (v22)
    {
      v72 = v30 + v11;
    }

    else
    {
      v72 = 0;
    }

    if (v21)
    {
      v73 = (v29 + v11);
    }

    else
    {
      v73 = 0;
    }

    v74 = (v201 + v18 * v26 + v11);
    v75 = v203 + v28 + 4 * v205;
    _S0 = v208;
    __asm { FCVT            H0, S0 }

    v178 = *&_S0;
    v179 = v71;
    _S0 = v207;
    __asm { FCVT            H0, S0 }

    v177 = *&_S0;
    __asm { FCVT            H0, S29 }

    v176 = *&_S0;
    v204 = a5.f32[0];
    v206 = a7.f32[0];
    v174 = a5.f32[1];
    v175 = a7.f32[1];
    LODWORD(v78) = a4.i32[1];
    v202 = a4.f32[0];
    v172 = _S12;
    v173 = a4.f32[1];
    v79.i64[0] = 0x9000900090009000;
    v79.i64[1] = 0x9000900090009000;
    v171 = _S13;
    do
    {
      if (v8 < 8)
      {
        v117 = 0;
        v83 = v74;
        v116 = v73;
        v82 = v72;
        v81 = v75;
      }

      else
      {
        v80 = 0;
        v81 = v75;
        v82 = v72;
        v83 = v74;
        do
        {
          v84 = *(&v220 + 8);
          *&v78 = *v81;
          v85 = v81[1];
          a5.i64[0] = v81[2];
          v86 = v81[3];
          v81 += 4;
          *(&v78 + 1) = v85;
          a5.i64[1] = v86;
          a4 = a5;
          v87 = vqtbl2_s8(*(&a4 - 1), *&v219);
          v88 = vqtbl2_s8(*(&a4 - 1), *(&v219 + 8));
          v89 = vqtbl2_s8(*(&a4 - 1), *&v220);
          *v90.i8 = vzip1_s8(v87, 0);
          v90.u64[1] = vzip2_s8(v87, 0);
          v91 = vcvtq_f16_u16(v90);
          *v90.i8 = vzip1_s8(v88, 0);
          v90.u64[1] = vzip2_s8(v88, 0);
          *v92.i8 = vzip1_s8(v89, 0);
          v92.u64[1] = vzip2_s8(v89, 0);
          v93 = vcvtq_f16_u16(v90);
          v94 = vmulq_n_f16(v91, v176);
          v95 = vmulq_n_f16(vcvtq_f16_u16(v92), v176);
          v96 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v94, 0), v79));
          v94.i16[0] = *(v65 + 2 * v96.u16[0]);
          v94.i16[1] = *(v65 + 2 * v96.u16[1]);
          v94.i16[2] = *(v65 + 2 * v96.u16[2]);
          v94.i16[3] = *(v65 + 2 * v96.u16[3]);
          v94.i16[4] = *(v65 + 2 * v96.u16[4]);
          v94.i16[5] = *(v65 + 2 * v96.u16[5]);
          v94.i16[6] = *(v65 + 2 * v96.u16[6]);
          v94.i16[7] = *(v65 + 2 * v96.u16[7]);
          v97 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmulq_n_f16(v93, v176), 0), v79));
          v98.i16[0] = *(v65 + 2 * v97.u16[0]);
          v98.i16[1] = *(v65 + 2 * v97.u16[1]);
          v98.i16[2] = *(v65 + 2 * v97.u16[2]);
          v98.i16[3] = *(v65 + 2 * v97.u16[3]);
          v98.i16[4] = *(v65 + 2 * v97.u16[4]);
          v98.i16[5] = *(v65 + 2 * v97.u16[5]);
          v98.i16[6] = *(v65 + 2 * v97.u16[6]);
          v98.i16[7] = *(v65 + 2 * v97.u16[7]);
          v99 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v95, 0), v79));
          v93.i16[0] = *(v65 + 2 * v99.u16[0]);
          v93.i16[1] = *(v65 + 2 * v99.u16[1]);
          v93.i16[2] = *(v65 + 2 * v99.u16[2]);
          v93.i16[3] = *(v65 + 2 * v99.u16[3]);
          v93.i16[4] = *(v65 + 2 * v99.u16[4]);
          v93.i16[5] = *(v65 + 2 * v99.u16[5]);
          v93.i16[6] = *(v65 + 2 * v99.u16[6]);
          v93.i16[7] = *(v65 + 2 * v99.u16[7]);
          v100 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v94, v194), v98, v193), v93, v192), vmaxq_f16(vmaxq_f16(v94, v98), v93), v191), 0), v79));
          v97.i16[0] = *(v62 + 2 * v100.u16[0]);
          v97.i16[1] = *(v62 + 2 * v100.u16[1]);
          v97.i16[2] = *(v62 + 2 * v100.u16[2]);
          v97.i16[3] = *(v62 + 2 * v100.u16[3]);
          v97.i16[4] = *(v62 + 2 * v100.u16[4]);
          v97.i16[5] = *(v62 + 2 * v100.u16[5]);
          v97.i16[6] = *(v62 + 2 * v100.u16[6]);
          v97.i16[7] = *(v62 + 2 * v100.u16[7]);
          v101 = vmulq_f16(v94, v97);
          v102 = vmulq_f16(v98, v97);
          v103 = vmulq_f16(v93, v97);
          v104 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v101, v187), v102, v186), v103, v185);
          v105 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v101, v190), v102, v189), v103, v188), 0), v79));
          v94.i16[0] = *(v64 + 2 * v105.u16[0]);
          v94.i16[1] = *(v64 + 2 * v105.u16[1]);
          v94.i16[2] = *(v64 + 2 * v105.u16[2]);
          v94.i16[3] = *(v64 + 2 * v105.u16[3]);
          v94.i16[4] = *(v64 + 2 * v105.u16[4]);
          v94.i16[5] = *(v64 + 2 * v105.u16[5]);
          v94.i16[6] = *(v64 + 2 * v105.u16[6]);
          v106 = vmlaq_n_f16(vmulq_n_f16(v103, v177), v102, v178);
          v107 = v94;
          v107.i16[7] = *(v64 + 2 * v105.u16[7]);
          v108 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v104, 0), v79));
          v104.i16[0] = *(v64 + 2 * v108.u16[0]);
          v104.i16[1] = *(v64 + 2 * v108.u16[1]);
          v104.i16[2] = *(v64 + 2 * v108.u16[2]);
          v104.i16[3] = *(v64 + 2 * v108.u16[3]);
          v104.i16[4] = *(v64 + 2 * v108.u16[4]);
          v104.i16[5] = *(v64 + 2 * v108.u16[5]);
          v104.i16[6] = *(v64 + 2 * v108.u16[6]);
          v109 = (v64 + 2 * v108.u16[7]);
          v110 = v104;
          v110.i16[7] = *v109;
          v111 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(v106, v101, v180), 0), v79));
          v101.i16[0] = *(v64 + 2 * v111.u16[0]);
          v101.i16[1] = *(v64 + 2 * v111.u16[1]);
          v101.i16[2] = *(v64 + 2 * v111.u16[2]);
          v101.i16[3] = *(v64 + 2 * v111.u16[3]);
          v101.i16[4] = *(v64 + 2 * v111.u16[4]);
          v101.i16[5] = *(v64 + 2 * v111.u16[5]);
          v101.i16[6] = *(v64 + 2 * v111.u16[6]);
          v112 = (v64 + 2 * v111.u16[7]);
          v113 = v101;
          v113.i16[7] = *v112;
          *v83++ = vmovn_s16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v184, v107, v200), v110, v199), v113, v197), v184), v182)));
          v114 = vaddq_f16(vuzp1q_s16(v94, v104), vuzp2q_s16(v107, v110));
          _Q28 = vzip1q_s16(v114, v114);
          v115 = vmaxq_f16(vmlaq_f16(vmlaq_f16(vmlaq_f16(v183, v198, _Q28), v196, vzip2q_s16(v114, v114)), v195, vaddq_f16(vtrn1q_s16(v101, v101), vtrn2q_s16(v113, v113))), v181);
          v54 = v179.i32[0];
          *&v73[v80] = vmovn_s16(vcvtq_u16_f16(vminq_f16(v115, v179)));
          if (v82)
          {
            *&v78 = vqtbl2_s8(*(&a4 - 1), v84);
            *v82 = v78;
            v82 += 8;
          }

          v80 += 8;
        }

        while (v80 < v8 - 7);
        v116 = &v73[v80];
        v117 = v8 & 0xFFFFFFF8;
        _S13 = v171;
        _S12 = v172;
      }

      if (v117 < v63)
      {
        v118 = v81 + 4;
        do
        {
          v119 = &v118[v221];
          LOBYTE(v78) = *(v119 - 4);
          v120 = &v118[BYTE1(v221)];
          a4.i8[0] = *(v120 - 4);
          v121 = &v118[BYTE2(v221)];
          a5.i8[0] = *(v121 - 4);
          _H0 = *(v65 + 2 * llroundf(fminf(fmaxf(_S29 * v78, 0.0), 8191.0)));
          __asm { FCVT            S0, H0 }

          _H1 = *(v65 + 2 * llroundf(fminf(fmaxf(_S29 * a4.u32[0], 0.0), 8191.0)));
          __asm { FCVT            S1, H1 }

          _H2 = *(v65 + 2 * llroundf(fminf(fmaxf(_S29 * a5.u32[0], 0.0), 8191.0)));
          __asm { FCVT            S2, H2 }

          v128 = (((_S16 * _S1) + (_S7 * _S0)) + (_S17 * _S2)) + (_S18 * fmaxf(_S0, fmaxf(_S1, _S2)));
          v129 = 8191.0;
          if (v128 <= 8191.0)
          {
            v129 = v128;
            if (v128 < 0.0)
            {
              v129 = 0.0;
            }
          }

          LOBYTE(v128) = *v119;
          LOBYTE(v54) = *v120;
          _Q28.i8[0] = *v121;
          _H4 = *(v65 + 2 * llroundf(fminf(fmaxf(_S29 * LODWORD(v128), 0.0), 8191.0)));
          __asm { FCVT            S4, H4 }

          _H5 = *(v65 + 2 * llroundf(fminf(fmaxf(_S29 * v54, 0.0), 8191.0)));
          __asm { FCVT            S5, H5 }

          _H28 = *(v65 + 2 * llroundf(fminf(fmaxf(_S29 * _Q28.u32[0], 0.0), 8191.0)));
          __asm { FCVT            S28, H28 }

          v136 = (((_S16 * _S5) + (_S7 * _S4)) + (_S17 * _S28)) + (_S18 * fmaxf(_S4, fmaxf(_S5, _S28)));
          v137 = 8191.0;
          if (v136 <= 8191.0)
          {
            v137 = v136;
            if (v136 < 0.0)
            {
              v137 = 0.0;
            }
          }

          _H3 = *(v62 + 2 * llroundf(v129));
          __asm { FCVT            S3, H3 }

          v140 = _S0 * _S3;
          v141 = _S1 * _S3;
          v142 = _S2 * _S3;
          v143 = &v118[HIBYTE(v221)];
          v144 = *(v143 - 4);
          v145 = *v143;
          LOWORD(_S3) = *(v62 + 2 * llroundf(v137));
          __asm { FCVT            S3, H3 }

          _S4 = _S4 * _S3;
          _S5 = _S5 * _S3;
          v149 = _S28 * _S3;
          v150 = ((v214 * v141) + (v140 * v215)) + (v142 * v213);
          v151 = ((v211 * v141) + (v140 * v212)) + (v142 * v210);
          _S0 = ((v208 * v141) + (v140 * v209)) + (v142 * v207);
          _S1 = ((v214 * _S5) + (_S4 * v215)) + (v149 * v213);
          _S2 = ((v211 * _S5) + (_S4 * v212)) + (v149 * v210);
          v155 = ((v208 * _S5) + (_S4 * v209)) + (v149 * v207);
          LOWORD(_S4) = *(v64 + 2 * llroundf(fminf(fmaxf(v150, 0.0), 8191.0)));
          LOWORD(_S5) = *(v64 + 2 * llroundf(fminf(fmaxf(v151, 0.0), 8191.0)));
          __asm
          {
            FCVT            S4, H4
            FCVT            S5, H5
          }

          LOWORD(_S0) = *(v64 + 2 * llroundf(fminf(fmaxf(_S0, 0.0), 8191.0)));
          __asm { FCVT            S28, H0 }

          LOWORD(_S0) = *(v64 + 2 * llroundf(fminf(fmaxf(_S1, 0.0), 8191.0)));
          __asm { FCVT            S0, H0 }

          LOWORD(_S1) = *(v64 + 2 * llroundf(fminf(fmaxf(_S2, 0.0), 8191.0)));
          __asm { FCVT            S1, H1 }

          LOWORD(_S2) = *(v64 + 2 * llroundf(fminf(fmaxf(v155, 0.0), 8191.0)));
          __asm { FCVT            S2, H2 }

          v161 = (((_S13 * _S5) + (_S12 * _S4)) + (v216 * *_Q28.i32)) + v49;
          v162 = (((_S13 * _S1) + (_S12 * _S0)) + (v216 * _S2)) + v49;
          if (v161 < v49)
          {
            v163 = v49;
          }

          else
          {
            v163 = (((_S13 * _S5) + (_S12 * _S4)) + (v216 * *_Q28.i32)) + v49;
          }

          if (v161 <= v51)
          {
            v164 = v163;
          }

          else
          {
            v164 = v31;
          }

          v83->i8[0] = llroundf(v164);
          if (v162 < v49)
          {
            v165 = v49;
          }

          else
          {
            v165 = (((_S13 * _S1) + (_S12 * _S0)) + (v216 * _S2)) + v49;
          }

          if (v162 > v51)
          {
            v165 = v31;
          }

          v83->i8[1] = llroundf(v165);
          v166 = _S4 + _S0;
          v167 = _S5 + _S1;
          a5.f32[0] = *_Q28.i32 + _S2;
          v168 = ((v50 + (v166 * v206)) + (v167 * v204)) + (a5.f32[0] * v202);
          v169 = v53;
          if (v168 <= v53)
          {
            v169 = ((v50 + (v166 * v206)) + (v167 * v204)) + (a5.f32[0] * v202);
            if (v168 < v217)
            {
              v169 = v32;
            }
          }

          v54 = LODWORD(v175);
          *&v78 = ((v50 + (v166 * v175)) + (v167 * v174)) + (a5.f32[0] * v173);
          *v116 = llroundf(v169);
          a4.f32[0] = v53;
          if (*&v78 <= v53)
          {
            a4.i32[0] = v78;
            if (*&v78 < v217)
            {
              a4.f32[0] = v32;
            }
          }

          v116[1] = llroundf(a4.f32[0]);
          if (v82)
          {
            *v82 = v144;
            *(v82 + 1) = v145;
            v82 += 2;
          }

          v118 += 8;
          v117 += 2;
          v83 = (v83 + 2);
          v116 += 2;
        }

        while (v117 < v63);
      }

      v75 += v17;
      v74 = (v74 + v18);
      v73 += v19;
      v72 += v20;
      ++v48;
    }

    while (v48 != v47);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_BGRA_TRC_Tone_Mat_TRC_422vf(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4, void *a5, uint64_t *a6, uint64_t a7, unint64_t *a8, void *a9)
{
  v61 = a8;
  v59 = a7;
  v64 = a5;
  v66 = a4;
  v67 = *MEMORY[0x1E69E9840];
  v10 = *(a1 + 162);
  v12 = *a2;
  v11 = a2[1];
  v13 = a2[2];
  v58 = a2[3];
  v14 = a2[4];
  v15 = a2[5];
  v16 = *a6;
  v62 = a6[1];
  v63 = v11;
  v18 = a6[2];
  v17 = a6[3];
  v56 = a1;
  v57 = v17;
  v19 = a6[4];
  v60 = a6[5];
  v65 = v16;
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
    v22 = (&v54 - v24);
    bzero(&v54 - v24, v25);
  }

  v55 = a3;
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
    v31 = v60;
    if (v21 || (4 * (v29 + v28) + 4) > *v66 || (v32 = v27 + 1 + v30, v32 > *v61) || ((v32 + (v32 >> 63)) & 0xFFFFFFFFFFFFFFFELL) > v61[1] || (v33 = v61[2], v32 > v33) && v33)
    {
      --v27;
      --v28;
    }

    else
    {
      ++v65;
      ++v28;
      ++v12;
      ++v27;
    }
  }

  else
  {
    v31 = v60;
  }

  if (v28 + v29 > v12)
  {
    v28 = v12 - v29;
  }

  if (v27 + v30 > v65)
  {
    v27 = v65 - v30;
  }

  if (v15 + v58 <= v63)
  {
    v34 = v58;
  }

  else
  {
    v34 = v63 - v15;
  }

  if (v31 + v57 <= v62)
  {
    v35 = v57;
  }

  else
  {
    v35 = v62 - v31;
  }

  if (v28 >= v27)
  {
    v36 = v27;
  }

  else
  {
    v36 = v28;
  }

  if (v34 >= v35)
  {
    v37 = v35;
  }

  else
  {
    v37 = v34;
  }

  if ((*v66 * (v15 + v37 - 1) + 4 * (v36 + v29)) <= *v64)
  {
    v42 = v31 + v37 - 1;
    v43 = v36 + v30;
    if (v36 + v30 + *v61 * v42 <= *a9)
    {
      v44 = v59;
      if (*(v59 + 8) && ((v43 + 1 + ((v43 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v61[1] * v42 > a9[1])
      {
        v58 = v29;
        v38 = v10;
        v39 = v12;
        v40 = v15;
        v41 = a9;
      }

      else
      {
        if (!*(v59 + 16) || v43 + v61[2] * v42 <= a9[2])
        {
          goto LABEL_53;
        }

        v58 = v29;
        v38 = v10;
        v39 = v12;
        v40 = v15;
        v41 = a9;
      }
    }

    else
    {
      v58 = v29;
      v38 = v10;
      v39 = v12;
      v40 = v15;
      v41 = a9;
    }
  }

  else
  {
    v58 = v29;
    v38 = v10;
    v39 = v12;
    v40 = v15;
    v41 = a9;
  }

  fig_log_get_emitter();
  v45 = FigSignalErrorAtGM();
  v44 = v59;
  v31 = v60;
  v26 = v41;
  v15 = v40;
  v12 = v39;
  v10 = v38;
  v29 = v58;
  if (v45)
  {
    v23 = v45;
    goto LABEL_58;
  }

LABEL_53:
  *v22 = v10;
  *(v22 + 4) = v12;
  v46 = v62;
  *(v22 + 12) = v63;
  *(v22 + 20) = v36;
  *(v22 + 28) = v37;
  *(v22 + 36) = v29;
  *(v22 + 44) = v15;
  v22[11] = v46;
  v22[12] = v36;
  v22[13] = v37;
  v22[14] = v30;
  v48 = v65;
  v47 = v66;
  v22[7] = v55;
  v22[8] = v47;
  v22[9] = v64;
  v22[10] = v48;
  v22[15] = v31;
  v22[16] = v44;
  v22[17] = v61;
  v22[18] = v26;
  v22[19] = v56;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v10, global_queue, v22, vt_Copy_BGRA_TRC_Tone_Mat_TRC_422vf_GCD);
  if (!v10)
  {
    return 0;
  }

  v50 = (v22 + 20);
  v51 = v10;
  while (1)
  {
    v52 = *v50++;
    v23 = v52;
    if (v52)
    {
      break;
    }

    if (!--v51)
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

unsigned __int8 *vt_Copy_BGRA_TRC_Tone_Mat_TRC_422vf_GCD(unsigned __int8 *result, uint64_t a2)
{
  v3 = *result;
  v4 = *(result + 13);
  v5 = v4 * a2 / v3;
  v6 = (v4 + v4 * a2) / v3 - v5;
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = *(result + 19);
    v9 = *(result + 24) & 0xFFFFFFFE;
    v10 = **(result + 8);
    v11 = *(result + 16);
    v12 = *(result + 17);
    v13 = *v12;
    v14 = v12[1];
    v15 = v12[2];
    *&v16 = *(v8 + 128);
    v17 = 8191.0 / *&v16;
    LOWORD(v16) = *(v8 + 144);
    v18 = v16;
    LOWORD(v16) = *(v8 + 146);
    v19 = v16;
    LOWORD(v16) = *(v8 + 148);
    v20 = v16;
    LOWORD(v16) = *(v8 + 150);
    *&v21 = v16;
    v128 = *&v21;
    LOWORD(v21) = *(v8 + 152);
    v22 = v21;
    v23 = *(v8 + 36);
    v24 = *(v8 + 40);
    v25 = *(v8 + 44);
    v26 = 0.5;
    v127 = *(v8 + 48) * 0.5;
    v126 = *(v8 + 52) * 0.5;
    v125 = *(v8 + 56) * 0.5;
    v27 = *(v8 + 64);
    v124 = *(v8 + 60) * 0.5;
    v123 = v27 * 0.5;
    v28 = *(v8 + 72);
    v29 = *(v8 + 68) * 0.5;
    v122 = v29;
    v30 = *(v8 + 76);
    v31 = *(v8 + 80);
    v32 = *(v8 + 84);
    v33 = *(v8 + 88);
    v34 = *(v8 + 92);
    v35 = *(v8 + 96);
    v37 = *(v8 + 100);
    v36 = *(v8 + 104);
    v38 = v8 + 164;
    v39 = v8 + 16548;
    v40 = v8 + 32932;
    v41 = *(v8 + 108);
    v42 = *(v8 + 112);
    v43 = *(v8 + 116);
    v44 = *(v8 + 120);
    v45 = *(result + 14);
    v46 = v5 + *(result + 15);
    v47 = *(result + 28) * a2 / v3 + *(result + 44);
    v48 = *(v8 + 157);
    v49 = *(v8 + 156);
    v50 = *(v8 + 155);
    v51 = *(v8 + 154);
    v52 = v11[2];
    if (v52)
    {
      v53 = (v52 + v15 * v46 + v45);
    }

    else
    {
      v53 = 0;
    }

    v55 = *v11;
    v54 = v11[1];
    v56 = v54 + v14 * v46 + v45;
    if (!v54)
    {
      v56 = 0;
    }

    v57 = (v55 + v13 * v46 + v45);
    v58 = **(result + 7) + v47 * v10 + 4 * *(result + 36);
    do
    {
      if (v9 >= 1)
      {
        v59 = 0;
        v60 = v53;
        v61 = v57;
        v62 = v58;
        do
        {
          LOBYTE(v29) = *(v62 + v51);
          LOBYTE(v26) = *(v62 + v50);
          LOBYTE(v27) = *(v62 + v49);
          _H0 = *(v38 + 2 * llroundf(fminf(fmaxf(v17 * LODWORD(v29), 0.0), 8191.0)));
          __asm { FCVT            S14, H0 }

          _H0 = *(v38 + 2 * llroundf(fminf(fmaxf(v17 * LODWORD(v26), 0.0), 8191.0)));
          __asm { FCVT            S15, H0 }

          _H0 = *(v38 + 2 * llroundf(fminf(fmaxf(v17 * LODWORD(v27), 0.0), 8191.0)));
          __asm { FCVT            S18, H0 }

          v73 = (((v42 * _S15) + (v41 * _S14)) + (v43 * _S18)) + (v44 * fmaxf(_S14, fmaxf(_S15, _S18)));
          v74 = 8191.0;
          if (v73 <= 8191.0)
          {
            v74 = v73;
            if (v73 < 0.0)
            {
              v74 = 0.0;
            }
          }

          LOBYTE(v73) = *(v62 + 4 + v51);
          LOBYTE(v2) = *(v62 + 4 + v50);
          *&v75 = LODWORD(v2);
          v76 = v17 * *&v75;
          LOBYTE(v75) = *(v62 + 4 + v49);
          _H0 = *(v38 + 2 * llroundf(fminf(fmaxf(v17 * LODWORD(v73), 0.0), 8191.0)));
          v78 = v17 * v75;
          __asm { FCVT            S20, H0 }

          _H0 = *(v38 + 2 * llroundf(fminf(fmaxf(v76, 0.0), 8191.0)));
          __asm { FCVT            S21, H0 }

          _H0 = *(v38 + 2 * llroundf(fminf(fmaxf(v78, 0.0), 8191.0)));
          __asm { FCVT            S22, H0 }

          v84 = (((v42 * _S21) + (v41 * _S20)) + (v43 * _S22)) + (v44 * fmaxf(_S20, fmaxf(_S21, _S22)));
          v85 = 8191.0;
          if (v84 <= 8191.0)
          {
            v85 = v84;
            if (v84 < 0.0)
            {
              v85 = 0.0;
            }
          }

          _H0 = *(v39 + 2 * llroundf(v74));
          __asm { FCVT            S0, H0 }

          v88 = _S14 * _S0;
          v89 = _S15 * _S0;
          v90 = _S18 * _S0;
          v91 = *(v62 + v48);
          v92 = *(v62 + 4 + v48);
          _H18 = *(v39 + 2 * llroundf(v85));
          __asm { FCVT            S18, H18 }

          _S20 = _S20 * _S18;
          _S21 = _S21 * _S18;
          v97 = _S22 * _S18;
          _S22 = ((v30 * v89) + (v88 * v28)) + (v90 * v31);
          v99 = ((v33 * v89) + (v88 * v32)) + (v90 * v34);
          _S0 = ((v37 * v89) + (v88 * v35)) + (v90 * v36);
          _S19 = ((v30 * _S21) + (_S20 * v28)) + (v97 * v31);
          v102 = ((v33 * _S21) + (_S20 * v32)) + (v97 * v34);
          _S18 = ((v37 * _S21) + (_S20 * v35)) + (v97 * v36);
          LOWORD(_S20) = *(v40 + 2 * llroundf(fminf(fmaxf(_S22, 0.0), 8191.0)));
          LOWORD(_S21) = *(v40 + 2 * llroundf(fminf(fmaxf(v99, 0.0), 8191.0)));
          __asm
          {
            FCVT            S20, H20
            FCVT            S21, H21
          }

          LOWORD(_S0) = *(v40 + 2 * llroundf(fminf(fmaxf(_S0, 0.0), 8191.0)));
          __asm { FCVT            S0, H0 }

          LOWORD(_S19) = *(v40 + 2 * llroundf(fminf(fmaxf(_S19, 0.0), 8191.0)));
          __asm { FCVT            S19, H19 }

          LOWORD(_S22) = *(v40 + 2 * llroundf(fminf(fmaxf(v102, 0.0), 8191.0)));
          __asm { FCVT            S22, H22 }

          LOWORD(_S18) = *(v40 + 2 * llroundf(fminf(fmaxf(_S18, 0.0), 8191.0)));
          __asm { FCVT            S24, H18 }

          v110 = (((v24 * _S21) + (v23 * _S20)) + (v25 * _S0)) + v18;
          v111 = (((v24 * _S22) + (v23 * _S19)) + (v25 * _S24)) + v18;
          if (v110 < v18)
          {
            v112 = v18;
          }

          else
          {
            v112 = (((v24 * _S21) + (v23 * _S20)) + (v25 * _S0)) + v18;
          }

          if (v110 <= v20)
          {
            v113 = v112;
          }

          else
          {
            v113 = v20;
          }

          *v61 = llroundf(v113);
          if (v111 < v18)
          {
            v114 = v18;
          }

          else
          {
            v114 = (((v24 * _S22) + (v23 * _S19)) + (v25 * _S24)) + v18;
          }

          if (v111 > v20)
          {
            v114 = v20;
          }

          v61[1] = llroundf(v114);
          v115 = _S20 + _S19;
          v116 = v19 + ((_S20 + _S19) * v127);
          v117 = _S21 + _S22;
          v118 = v116 + ((_S21 + _S22) * v126);
          v2 = _S0 + _S24;
          v119 = v118 + ((_S0 + _S24) * v125);
          v120 = v22;
          if (v119 <= v22)
          {
            v120 = v119;
            if (v119 < v128)
            {
              v120 = v128;
            }
          }

          v121 = (v19 + (v115 * v124)) + (v117 * v123);
          v27 = v122;
          v26 = v121 + (v2 * v122);
          *(v56 + v59) = llroundf(v120);
          v29 = v22;
          if (v26 <= v22)
          {
            v29 = v26;
            if (v26 < v128)
            {
              v29 = v128;
            }
          }

          *(v56 + v59 + 1) = llroundf(v29);
          if (v60)
          {
            *v60 = v91;
            v60[1] = v92;
            v60 += 2;
          }

          v62 += 8;
          v59 += 2;
          v61 += 2;
        }

        while (v59 < v9);
      }

      v58 += v10;
      v57 += v13;
      v56 += v14;
      v53 += v15;
      ++v7;
    }

    while (v7 != v6);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_BGRA_TRC_Mat_TRC_422vf_neon_fp16(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4, void *a5, uint64_t *a6, uint64_t a7, unint64_t *a8, void *a9)
{
  v61 = a8;
  v59 = a7;
  v64 = a5;
  v66 = a4;
  v67 = *MEMORY[0x1E69E9840];
  v10 = *(a1 + 162);
  v12 = *a2;
  v11 = a2[1];
  v13 = a2[2];
  v58 = a2[3];
  v14 = a2[4];
  v15 = a2[5];
  v16 = *a6;
  v62 = a6[1];
  v63 = v11;
  v18 = a6[2];
  v17 = a6[3];
  v56 = a1;
  v57 = v17;
  v19 = a6[4];
  v60 = a6[5];
  v65 = v16;
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
    v22 = (&v54 - v24);
    bzero(&v54 - v24, v25);
  }

  v55 = a3;
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
    v31 = v60;
    if (v21 || (4 * (v29 + v28) + 4) > *v66 || (v32 = v27 + 1 + v30, v32 > *v61) || ((v32 + (v32 >> 63)) & 0xFFFFFFFFFFFFFFFELL) > v61[1] || (v33 = v61[2], v32 > v33) && v33)
    {
      --v27;
      --v28;
    }

    else
    {
      ++v65;
      ++v28;
      ++v12;
      ++v27;
    }
  }

  else
  {
    v31 = v60;
  }

  if (v28 + v29 > v12)
  {
    v28 = v12 - v29;
  }

  if (v27 + v30 > v65)
  {
    v27 = v65 - v30;
  }

  if (v15 + v58 <= v63)
  {
    v34 = v58;
  }

  else
  {
    v34 = v63 - v15;
  }

  if (v31 + v57 <= v62)
  {
    v35 = v57;
  }

  else
  {
    v35 = v62 - v31;
  }

  if (v28 >= v27)
  {
    v36 = v27;
  }

  else
  {
    v36 = v28;
  }

  if (v34 >= v35)
  {
    v37 = v35;
  }

  else
  {
    v37 = v34;
  }

  if ((*v66 * (v15 + v37 - 1) + 4 * (v36 + v29)) <= *v64)
  {
    v42 = v31 + v37 - 1;
    v43 = v36 + v30;
    if (v36 + v30 + *v61 * v42 <= *a9)
    {
      v44 = v59;
      if (*(v59 + 8) && ((v43 + 1 + ((v43 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v61[1] * v42 > a9[1])
      {
        v58 = v29;
        v38 = v10;
        v39 = v12;
        v40 = v15;
        v41 = a9;
      }

      else
      {
        if (!*(v59 + 16) || v43 + v61[2] * v42 <= a9[2])
        {
          goto LABEL_53;
        }

        v58 = v29;
        v38 = v10;
        v39 = v12;
        v40 = v15;
        v41 = a9;
      }
    }

    else
    {
      v58 = v29;
      v38 = v10;
      v39 = v12;
      v40 = v15;
      v41 = a9;
    }
  }

  else
  {
    v58 = v29;
    v38 = v10;
    v39 = v12;
    v40 = v15;
    v41 = a9;
  }

  fig_log_get_emitter();
  v45 = FigSignalErrorAtGM();
  v44 = v59;
  v31 = v60;
  v26 = v41;
  v15 = v40;
  v12 = v39;
  v10 = v38;
  v29 = v58;
  if (v45)
  {
    v23 = v45;
    goto LABEL_58;
  }

LABEL_53:
  *v22 = v10;
  *(v22 + 4) = v12;
  v46 = v62;
  *(v22 + 12) = v63;
  *(v22 + 20) = v36;
  *(v22 + 28) = v37;
  *(v22 + 36) = v29;
  *(v22 + 44) = v15;
  v22[11] = v46;
  v22[12] = v36;
  v22[13] = v37;
  v22[14] = v30;
  v48 = v65;
  v47 = v66;
  v22[7] = v55;
  v22[8] = v47;
  v22[9] = v64;
  v22[10] = v48;
  v22[15] = v31;
  v22[16] = v44;
  v22[17] = v61;
  v22[18] = v26;
  v22[19] = v56;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v10, global_queue, v22, vt_Copy_BGRA_TRC_Mat_TRC_422vf_neon_fp16_GCD);
  if (!v10)
  {
    return 0;
  }

  v50 = (v22 + 20);
  v51 = v10;
  while (1)
  {
    v52 = *v50++;
    v23 = v52;
    if (v52)
    {
      break;
    }

    if (!--v51)
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

unsigned __int8 *vt_Copy_BGRA_TRC_Mat_TRC_422vf_neon_fp16_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, float32x4_t a5)
{
  v7 = 0;
  v182 = *(result + 36);
  v8 = *(result + 24);
  v9 = *result;
  v10 = *(result + 13);
  v11 = *(result + 14);
  v12 = *(result + 19);
  v13 = *(result + 16);
  v14 = *(result + 17);
  v15 = **(result + 8);
  v180 = **(result + 7);
  v16 = *v14;
  v17 = v14[1];
  v18 = v14[2];
  v19 = v13[1];
  v178 = *v13;
  v20 = v13[2];
  v21 = v10 * a2 / v9;
  v22 = v21 + *(result + 15);
  v23 = *(v12 + 128);
  v24 = v15 * (*(result + 28) * a2 / v9 + *(result + 44));
  v187 = *(v12 + 154);
  v25 = *(v12 + 144);
  v26 = *(v12 + 146);
  v27 = *(v12 + 148);
  v28 = *(v12 + 150);
  v29 = *(v12 + 152);
  _S12 = *(v12 + 36);
  _S14 = *(v12 + 40);
  _S15 = *(v12 + 44);
  LODWORD(v33) = *(v12 + 48);
  v6.i32[0] = *(v12 + 52);
  v34.i32[0] = *(v12 + 56);
  v36 = *(v12 + 60);
  v35 = *(v12 + 64);
  v38.i32[0] = *(v12 + 68);
  _S3 = *(v12 + 72);
  _S4 = *(v12 + 76);
  _S5 = *(v12 + 80);
  _S6 = *(v12 + 84);
  _S7 = *(v12 + 88);
  _S16 = *(v12 + 92);
  _S17 = *(v12 + 96);
  _S18 = *(v12 + 100);
  _S19 = *(v12 + 104);
  v47.i64[1] = 0;
  v185 = 0u;
  v186 = 0u;
  v48 = (v10 + v10 * a2) / v9;
  do
  {
    v49 = 0;
    v50 = *(&v187 + v7);
    v51 = *(&v185 + v7);
    do
    {
      v184 = v51;
      *(&v184 | v49 & 7) = v50 + 4 * v49;
      v51 = v184;
      ++v49;
    }

    while (v49 != 8);
    *(&v185 + v7++) = v184;
  }

  while (v7 != 4);
  v52 = v48 - v21;
  if (v48 - v21 >= 1)
  {
    v53 = 0;
    v54 = v25;
    v55 = v26;
    v56 = v27;
    v183 = v28;
    _S25 = 8191.0 / v23;
    v58 = v29;
    DWORD1(v33) = v36;
    *a5.f32 = vmul_f32(*&v33, 0x3F0000003F000000);
    v6.i32[1] = v35;
    *v6.i8 = vmul_f32(*v6.i8, 0x3F0000003F000000);
    v34.i32[1] = v38.i32[0];
    *v47.f32 = vmul_f32(v34, 0x3F0000003F000000);
    __asm { FCVT            H0, S12 }

    v177 = _H0;
    __asm { FCVT            H0, S14 }

    v176 = _H0;
    v65 = v12 + 164;
    v66 = v12 + 16548;
    v67 = v8 & 0xFFFFFFFE;
    __asm { FCVT            H0, S15 }

    v175 = _H0;
    v174 = vdupq_lane_s32(vcvt_f16_f32(a5), 0);
    v173 = vdupq_lane_s32(vcvt_f16_f32(v6), 0);
    _Q0 = vdupq_lane_s32(vcvt_f16_f32(v47), 0);
    v172 = _Q0;
    __asm { FCVT            H0, S3 }

    v171 = *_Q0.i16;
    __asm { FCVT            H0, S4 }

    v170 = *_Q0.i16;
    __asm { FCVT            H0, S5 }

    v169 = *_Q0.i16;
    __asm { FCVT            H0, S6 }

    v168 = *_Q0.i16;
    __asm { FCVT            H0, S7 }

    v167 = *_Q0.i16;
    __asm { FCVT            H0, S16 }

    v166 = *_Q0.i16;
    __asm { FCVT            H0, S17 }

    v165 = *_Q0.i16;
    __asm { FCVT            H0, S18 }

    v164 = *_Q0.i16;
    __asm { FCVT            H0, S19 }

    v163 = *_Q0.i16;
    *_Q0.i16 = v25;
    v70 = vdupq_lane_s16(*_Q0.i8, 0);
    *_Q0.i16 = v26;
    v71 = vdupq_lane_s16(*_Q0.i8, 0);
    v162 = v71;
    *v71.i16 = v27;
    v72 = vdupq_lane_s16(*v71.i8, 0);
    v161 = v72;
    *v72.i16 = v28;
    v73 = vdupq_lane_s16(*v72.i8, 0);
    v160 = v73;
    *v73.i16 = v29;
    v159 = vdupq_lane_s16(*v73.i8, 0);
    if (v20)
    {
      v74 = (v20 + v18 * v22 + v11);
    }

    else
    {
      v74 = 0;
    }

    if (v19)
    {
      v75 = (v19 + v17 * v22 + v11);
    }

    else
    {
      v75 = 0;
    }

    v76 = (v178 + v16 * v22 + v11);
    v77 = v180 + v24 + 4 * v182;
    __asm { FCVT            H13, S25 }

    v181 = *v6.i32;
    v79 = a5.i64[0];
    v80 = v6.u32[1];
    v81.i32[0] = v47.i32[1];
    v157 = v47.f32[1];
    v179 = v47.f32[0];
    v158 = *&v6.i32[1];
    v82.i64[0] = 0x9000900090009000;
    v82.i64[1] = 0x9000900090009000;
    v155 = _S14;
    v156 = _S12;
    v153 = _S3;
    v154 = _S15;
    do
    {
      if (v8 < 8)
      {
        v113 = 0;
        v112 = v75;
        v86 = v74;
        v85 = v76;
        v84 = v77;
      }

      else
      {
        v83 = 0;
        v84 = v77;
        v85 = v76;
        v86 = v74;
        do
        {
          v87 = *(&v186 + 8);
          *&v33 = *v84;
          v88 = v84[1];
          *&v89 = v84[2];
          v81 = v84[3];
          v84 += 4;
          *(&v33 + 1) = v88;
          *(&v89 + 1) = v81;
          v90 = v89;
          v91 = vqtbl2_s8(*&v33, *&v185);
          v92 = vqtbl2_s8(*&v33, *(&v185 + 8));
          v93 = vqtbl2_s8(*&v33, *&v186);
          *v94.i8 = vzip1_s8(v91, 0);
          v94.u64[1] = vzip2_s8(v91, 0);
          *v95.i8 = vzip1_s8(v92, 0);
          v95.u64[1] = vzip2_s8(v92, 0);
          v96 = vcvtq_f16_u16(v95);
          *v95.i8 = vzip1_s8(v93, 0);
          v95.u64[1] = vzip2_s8(v93, 0);
          v97 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmulq_n_f16(vcvtq_f16_u16(v94), _H13), 0), v82));
          v98.i16[0] = *(v65 + 2 * v97.u16[0]);
          v98.i16[1] = *(v65 + 2 * v97.u16[1]);
          v98.i16[2] = *(v65 + 2 * v97.u16[2]);
          v98.i16[3] = *(v65 + 2 * v97.u16[3]);
          v98.i16[4] = *(v65 + 2 * v97.u16[4]);
          v98.i16[5] = *(v65 + 2 * v97.u16[5]);
          v98.i16[6] = *(v65 + 2 * v97.u16[6]);
          v98.i16[7] = *(v65 + 2 * v97.u16[7]);
          v99 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmulq_n_f16(v96, _H13), 0), v82));
          v94.i16[0] = *(v65 + 2 * v99.u16[0]);
          v94.i16[1] = *(v65 + 2 * v99.u16[1]);
          v94.i16[2] = *(v65 + 2 * v99.u16[2]);
          v94.i16[3] = *(v65 + 2 * v99.u16[3]);
          v94.i16[4] = *(v65 + 2 * v99.u16[4]);
          v94.i16[5] = *(v65 + 2 * v99.u16[5]);
          v94.i16[6] = *(v65 + 2 * v99.u16[6]);
          v94.i16[7] = *(v65 + 2 * v99.u16[7]);
          v100 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmulq_n_f16(vcvtq_f16_u16(v95), _H13), 0), v82));
          v99.i16[0] = *(v65 + 2 * v100.u16[0]);
          v99.i16[1] = *(v65 + 2 * v100.u16[1]);
          v99.i16[2] = *(v65 + 2 * v100.u16[2]);
          v99.i16[3] = *(v65 + 2 * v100.u16[3]);
          v99.i16[4] = *(v65 + 2 * v100.u16[4]);
          v99.i16[5] = *(v65 + 2 * v100.u16[5]);
          v99.i16[6] = *(v65 + 2 * v100.u16[6]);
          v99.i16[7] = *(v65 + 2 * v100.u16[7]);
          v101 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v98, v168), v94, v167), v99, v166);
          v102 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v98, v171), v94, v170), v99, v169), 0), v82));
          v5.i16[0] = *(v66 + 2 * v102.u16[0]);
          v5.i16[1] = *(v66 + 2 * v102.u16[1]);
          v5.i16[2] = *(v66 + 2 * v102.u16[2]);
          v5.i16[3] = *(v66 + 2 * v102.u16[3]);
          v5.i16[4] = *(v66 + 2 * v102.u16[4]);
          v5.i16[5] = *(v66 + 2 * v102.u16[5]);
          v5.i16[6] = *(v66 + 2 * v102.u16[6]);
          v103 = vmlaq_n_f16(vmulq_n_f16(v99, v163), v94, v164);
          v104 = v5;
          v104.i16[7] = *(v66 + 2 * v102.u16[7]);
          v105 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v101, 0), v82));
          v99.i16[0] = *(v66 + 2 * v105.u16[0]);
          v99.i16[1] = *(v66 + 2 * v105.u16[1]);
          v99.i16[2] = *(v66 + 2 * v105.u16[2]);
          v99.i16[3] = *(v66 + 2 * v105.u16[3]);
          v99.i16[4] = *(v66 + 2 * v105.u16[4]);
          v99.i16[5] = *(v66 + 2 * v105.u16[5]);
          v99.i16[6] = *(v66 + 2 * v105.u16[6]);
          v106 = (v66 + 2 * v105.u16[7]);
          v107 = v99;
          v107.i16[7] = *v106;
          v108 = vmlaq_n_f16(v103, v98, v165);
          v109 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v108, 0), v82));
          v108.i16[0] = *(v66 + 2 * v109.u16[0]);
          v108.i16[1] = *(v66 + 2 * v109.u16[1]);
          v108.i16[2] = *(v66 + 2 * v109.u16[2]);
          v108.i16[3] = *(v66 + 2 * v109.u16[3]);
          v108.i16[4] = *(v66 + 2 * v109.u16[4]);
          v108.i16[5] = *(v66 + 2 * v109.u16[5]);
          v108.i16[6] = *(v66 + 2 * v109.u16[6]);
          v110 = (v66 + 2 * v109.u16[7]);
          v111 = v108;
          v111.i16[7] = *v110;
          *v85++ = vmovn_s16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v70, v104, v177), v107, v176), v111, v175), v70), v161)));
          v47 = vaddq_f16(vuzp1q_s16(v5, v99), vuzp2q_s16(v104, v107));
          v38 = vzip1q_s16(v47, v47);
          v6 = vmlaq_f16(vmlaq_f16(vmlaq_f16(v162, v174, v38), v173, vzip2q_s16(v47, v47)), v172, vaddq_f16(vtrn1q_s16(v108, v108), vtrn2q_s16(v111, v111)));
          v80 = v159.i32[0];
          *v47.f32 = vmovn_s16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(v6, v160), v159)));
          *&v75[v83] = v47.i64[0];
          if (v86)
          {
            v81 = vqtbl2_s8(*&v33, v87);
            *v86++ = v81;
          }

          v83 += 8;
        }

        while (v83 < v8 - 7);
        v112 = &v75[v83];
        v113 = v8 & 0xFFFFFFF8;
        _S14 = v155;
        _S12 = v156;
        _S3 = v153;
        _S15 = v154;
      }

      if (v113 < v67)
      {
        v114 = v84 + 4;
        do
        {
          v115 = &v114[v187];
          v81.i8[0] = *(v115 - 4);
          v116 = &v114[BYTE1(v187)];
          v47.i8[0] = *(v116 - 4);
          v117 = &v114[BYTE2(v187)];
          LOBYTE(v80) = *(v117 - 4);
          v118 = &v114[HIBYTE(v187)];
          v119 = *(v118 - 4);
          v38.i8[0] = *v115;
          v6.i8[0] = *v116;
          LOBYTE(v33) = *v117;
          v120 = *v118;
          _H0 = *(v65 + 2 * llroundf(fminf(fmaxf(_S25 * v81.u32[0], 0.0), 8191.0)));
          _H1 = *(v65 + 2 * llroundf(fminf(fmaxf(_S25 * v47.u32[0], 0.0), 8191.0)));
          __asm
          {
            FCVT            S0, H0
            FCVT            S1, H1
          }

          _H2 = *(v65 + 2 * llroundf(fminf(fmaxf(_S25 * v80, 0.0), 8191.0)));
          __asm { FCVT            S2, H2 }

          _H24 = *(v65 + 2 * llroundf(fminf(fmaxf(_S25 * v38.u32[0], 0.0), 8191.0)));
          __asm { FCVT            S24, H24 }

          _H27 = *(v65 + 2 * llroundf(fminf(fmaxf(_S25 * v6.u32[0], 0.0), 8191.0)));
          __asm { FCVT            S27, H27 }

          _H29 = *(v65 + 2 * llroundf(fminf(fmaxf(_S25 * v33, 0.0), 8191.0)));
          __asm { FCVT            S29, H29 }

          v133 = ((_S4 * _S1) + (_S0 * _S3)) + (_S2 * _S5);
          v134 = ((_S7 * _S1) + (_S0 * _S6)) + (_S2 * _S16);
          _S0 = ((_S18 * _S1) + (_S0 * _S17)) + (_S2 * _S19);
          _S1 = ((_S4 * _S27) + (_S24 * _S3)) + (_S29 * _S5);
          _S2 = ((_S7 * _S27) + (_S24 * _S6)) + (_S29 * _S16);
          v138 = ((_S18 * _S27) + (_S24 * _S17)) + (_S29 * _S19);
          LOWORD(_S27) = *(v66 + 2 * llroundf(fminf(fmaxf(v133, 0.0), 8191.0)));
          LOWORD(_S29) = *(v66 + 2 * llroundf(fminf(fmaxf(v134, 0.0), 8191.0)));
          __asm
          {
            FCVT            S27, H27
            FCVT            S29, H29
          }

          LOWORD(_S0) = *(v66 + 2 * llroundf(fminf(fmaxf(_S0, 0.0), 8191.0)));
          __asm { FCVT            S30, H0 }

          LOWORD(_S0) = *(v66 + 2 * llroundf(fminf(fmaxf(_S1, 0.0), 8191.0)));
          __asm { FCVT            S0, H0 }

          LOWORD(_S1) = *(v66 + 2 * llroundf(fminf(fmaxf(_S2, 0.0), 8191.0)));
          __asm { FCVT            S1, H1 }

          LOWORD(_S2) = *(v66 + 2 * llroundf(fminf(fmaxf(v138, 0.0), 8191.0)));
          __asm { FCVT            S2, H2 }

          v145 = (((_S14 * _S29) + (_S12 * _S27)) + (_S15 * _S30)) + v54;
          v146 = (((_S14 * _S1) + (_S12 * _S0)) + (_S15 * _S2)) + v54;
          if (v145 < v54)
          {
            v147 = v25;
          }

          else
          {
            v147 = (((_S14 * _S29) + (_S12 * _S27)) + (_S15 * _S30)) + v54;
          }

          if (v145 <= v56)
          {
            v148 = v147;
          }

          else
          {
            v148 = v56;
          }

          v85->i8[0] = llroundf(v148);
          if (v146 < v54)
          {
            v149 = v25;
          }

          else
          {
            v149 = (((_S14 * _S1) + (_S12 * _S0)) + (_S15 * _S2)) + v54;
          }

          if (v146 > v56)
          {
            v149 = v56;
          }

          v85->i8[1] = llroundf(v149);
          v150 = _S27 + _S0;
          v151 = _S29 + _S1;
          *v38.i32 = _S30 + _S2;
          *&v33 = ((v55 + (v150 * *&v79)) + (v151 * v181)) + ((_S30 + _S2) * v179);
          *v6.i32 = v58;
          if (*&v33 <= v58)
          {
            *v6.i32 = ((v55 + (v150 * *&v79)) + (v151 * v181)) + (*v38.i32 * v179);
            if (*&v33 < v183)
            {
              *v6.i32 = v183;
            }
          }

          v80 = LODWORD(v158);
          *v81.i32 = ((v55 + (v150 * *(&v79 + 1))) + (v151 * v158)) + (*v38.i32 * v157);
          *v112 = llroundf(*v6.i32);
          v47.f32[0] = v58;
          if (*v81.i32 <= v58)
          {
            v47.i32[0] = v81.i32[0];
            if (*v81.i32 < v183)
            {
              v47.f32[0] = v183;
            }
          }

          v112[1] = llroundf(v47.f32[0]);
          if (v86)
          {
            v86->i8[0] = v119;
            v86->i8[1] = v120;
            v86 = (v86 + 2);
          }

          v114 += 8;
          v113 += 2;
          v85 = (v85 + 2);
          v112 += 2;
        }

        while (v113 < v67);
      }

      v77 += v15;
      v76 = (v76 + v16);
      v75 += v17;
      v74 = (v74 + v18);
      ++v53;
    }

    while (v53 != v52);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_BGRA_TRC_Mat_TRC_422vf(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4, void *a5, uint64_t *a6, uint64_t a7, unint64_t *a8, void *a9)
{
  v61 = a8;
  v59 = a7;
  v64 = a5;
  v66 = a4;
  v67 = *MEMORY[0x1E69E9840];
  v10 = *(a1 + 162);
  v12 = *a2;
  v11 = a2[1];
  v13 = a2[2];
  v58 = a2[3];
  v14 = a2[4];
  v15 = a2[5];
  v16 = *a6;
  v62 = a6[1];
  v63 = v11;
  v18 = a6[2];
  v17 = a6[3];
  v56 = a1;
  v57 = v17;
  v19 = a6[4];
  v60 = a6[5];
  v65 = v16;
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
    v22 = (&v54 - v24);
    bzero(&v54 - v24, v25);
  }

  v55 = a3;
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
    v31 = v60;
    if (v21 || (4 * (v29 + v28) + 4) > *v66 || (v32 = v27 + 1 + v30, v32 > *v61) || ((v32 + (v32 >> 63)) & 0xFFFFFFFFFFFFFFFELL) > v61[1] || (v33 = v61[2], v32 > v33) && v33)
    {
      --v27;
      --v28;
    }

    else
    {
      ++v65;
      ++v28;
      ++v12;
      ++v27;
    }
  }

  else
  {
    v31 = v60;
  }

  if (v28 + v29 > v12)
  {
    v28 = v12 - v29;
  }

  if (v27 + v30 > v65)
  {
    v27 = v65 - v30;
  }

  if (v15 + v58 <= v63)
  {
    v34 = v58;
  }

  else
  {
    v34 = v63 - v15;
  }

  if (v31 + v57 <= v62)
  {
    v35 = v57;
  }

  else
  {
    v35 = v62 - v31;
  }

  if (v28 >= v27)
  {
    v36 = v27;
  }

  else
  {
    v36 = v28;
  }

  if (v34 >= v35)
  {
    v37 = v35;
  }

  else
  {
    v37 = v34;
  }

  if ((*v66 * (v15 + v37 - 1) + 4 * (v36 + v29)) <= *v64)
  {
    v42 = v31 + v37 - 1;
    v43 = v36 + v30;
    if (v36 + v30 + *v61 * v42 <= *a9)
    {
      v44 = v59;
      if (*(v59 + 8) && ((v43 + 1 + ((v43 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v61[1] * v42 > a9[1])
      {
        v58 = v29;
        v38 = v10;
        v39 = v12;
        v40 = v15;
        v41 = a9;
      }

      else
      {
        if (!*(v59 + 16) || v43 + v61[2] * v42 <= a9[2])
        {
          goto LABEL_53;
        }

        v58 = v29;
        v38 = v10;
        v39 = v12;
        v40 = v15;
        v41 = a9;
      }
    }

    else
    {
      v58 = v29;
      v38 = v10;
      v39 = v12;
      v40 = v15;
      v41 = a9;
    }
  }

  else
  {
    v58 = v29;
    v38 = v10;
    v39 = v12;
    v40 = v15;
    v41 = a9;
  }

  fig_log_get_emitter();
  v45 = FigSignalErrorAtGM();
  v44 = v59;
  v31 = v60;
  v26 = v41;
  v15 = v40;
  v12 = v39;
  v10 = v38;
  v29 = v58;
  if (v45)
  {
    v23 = v45;
    goto LABEL_58;
  }

LABEL_53:
  *v22 = v10;
  *(v22 + 4) = v12;
  v46 = v62;
  *(v22 + 12) = v63;
  *(v22 + 20) = v36;
  *(v22 + 28) = v37;
  *(v22 + 36) = v29;
  *(v22 + 44) = v15;
  v22[11] = v46;
  v22[12] = v36;
  v22[13] = v37;
  v22[14] = v30;
  v48 = v65;
  v47 = v66;
  v22[7] = v55;
  v22[8] = v47;
  v22[9] = v64;
  v22[10] = v48;
  v22[15] = v31;
  v22[16] = v44;
  v22[17] = v61;
  v22[18] = v26;
  v22[19] = v56;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v10, global_queue, v22, vt_Copy_BGRA_TRC_Mat_TRC_422vf_GCD);
  if (!v10)
  {
    return 0;
  }

  v50 = (v22 + 20);
  v51 = v10;
  while (1)
  {
    v52 = *v50++;
    v23 = v52;
    if (v52)
    {
      break;
    }

    if (!--v51)
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

unsigned __int8 *vt_Copy_BGRA_TRC_Mat_TRC_422vf_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, float a5, float a6, float a7, float a8, float a9)
{
  v15 = *result;
  v16 = *(result + 13);
  v17 = v16 * a2 / v15;
  v18 = (v16 + v16 * a2) / v15 - v17;
  if (v18 >= 1)
  {
    v19 = 0;
    v20 = *(result + 19);
    v21 = *(result + 24) & 0xFFFFFFFE;
    v22 = **(result + 8);
    v23 = *(result + 16);
    v24 = *(result + 17);
    v25 = *v24;
    v26 = v24[1];
    v27 = v24[2];
    v28 = 8191.0 / *(v20 + 128);
    LOWORD(a5) = *(v20 + 144);
    v29 = LODWORD(a5);
    LOWORD(a6) = *(v20 + 146);
    v30 = LODWORD(a6);
    LOWORD(a7) = *(v20 + 148);
    v31 = LODWORD(a7);
    LOWORD(a8) = *(v20 + 150);
    v32 = LODWORD(a8);
    LOWORD(a9) = *(v20 + 152);
    v33 = LODWORD(a9);
    v34 = *(v20 + 36);
    v35 = *(v20 + 40);
    v36 = *(v20 + 44);
    v105 = *(v20 + 52) * 0.5;
    v106 = *(v20 + 48) * 0.5;
    v104 = *(v20 + 56) * 0.5;
    v37 = *(v20 + 60) * 0.5;
    v38 = *(v20 + 64) * 0.5;
    v39 = *(v20 + 72);
    v40 = *(v20 + 68) * 0.5;
    v41 = *(v20 + 76);
    v42 = *(v20 + 80);
    v43 = *(v20 + 84);
    v44 = *(v20 + 88);
    v45 = *(v20 + 92);
    v46 = *(v20 + 96);
    v48 = *(v20 + 100);
    v47 = *(v20 + 104);
    v49 = v20 + 164;
    v50 = v20 + 16548;
    v51 = *(result + 14);
    v52 = v17 + *(result + 15);
    v53 = *(result + 28) * a2 / v15 + *(result + 44);
    v54 = *(v20 + 157);
    v55 = *(v20 + 156);
    v56 = *(v20 + 155);
    v57 = *(v20 + 154);
    v58 = v23[2];
    if (v58)
    {
      v59 = (v58 + v27 * v52 + v51);
    }

    else
    {
      v59 = 0;
    }

    v61 = *v23;
    v60 = v23[1];
    v62 = v60 + v26 * v52 + v51;
    if (!v60)
    {
      v62 = 0;
    }

    v63 = (v61 + v25 * v52 + v51);
    v64 = **(result + 7) + v53 * v22 + 4 * *(result + 36);
    do
    {
      if (v21 >= 1)
      {
        v65 = 0;
        v66 = v64;
        v67 = v59;
        v68 = v63;
        do
        {
          LOBYTE(v9) = *(v66 + v57);
          LOBYTE(v10) = *(v66 + v56);
          LOBYTE(v11) = *(v66 + v55);
          v69 = *(v66 + v54);
          LOBYTE(v12) = *(v66 + 4 + v57);
          LOBYTE(v13) = *(v66 + 4 + v56);
          LOBYTE(v14) = *(v66 + 4 + v55);
          v70 = *(v66 + 4 + v54);
          _H10 = *(v49 + 2 * llroundf(fminf(fmaxf(v28 * LODWORD(v9), 0.0), 8191.0)));
          _H11 = *(v49 + 2 * llroundf(fminf(fmaxf(v28 * LODWORD(v10), 0.0), 8191.0)));
          __asm
          {
            FCVT            S10, H10
            FCVT            S11, H11
          }

          _H12 = *(v49 + 2 * llroundf(fminf(fmaxf(v28 * LODWORD(v11), 0.0), 8191.0)));
          __asm { FCVT            S12, H12 }

          _H13 = *(v49 + 2 * llroundf(fminf(fmaxf(v28 * LODWORD(v12), 0.0), 8191.0)));
          __asm { FCVT            S13, H13 }

          _H14 = *(v49 + 2 * llroundf(fminf(fmaxf(v28 * LODWORD(v13), 0.0), 8191.0)));
          __asm { FCVT            S14, H14 }

          _H15 = *(v49 + 2 * llroundf(fminf(fmaxf(v28 * LODWORD(v14), 0.0), 8191.0)));
          __asm { FCVT            S15, H15 }

          _S18 = ((v41 * _S11) + (_S10 * v39)) + (_S12 * v42);
          _S19 = ((v44 * _S11) + (_S10 * v43)) + (_S12 * v45);
          _S10 = ((v48 * _S11) + (_S10 * v46)) + (_S12 * v47);
          _S11 = ((v41 * _S14) + (_S13 * v39)) + (_S15 * v42);
          _S12 = ((v44 * _S14) + (_S13 * v43)) + (_S15 * v45);
          v92 = ((v48 * _S14) + (_S13 * v46)) + (_S15 * v47);
          LOWORD(_S18) = *(v50 + 2 * llroundf(fminf(fmaxf(_S18, 0.0), 8191.0)));
          LOWORD(_S19) = *(v50 + 2 * llroundf(fminf(fmaxf(_S19, 0.0), 8191.0)));
          __asm
          {
            FCVT            S18, H18
            FCVT            S19, H19
          }

          LOWORD(_S10) = *(v50 + 2 * llroundf(fminf(fmaxf(_S10, 0.0), 8191.0)));
          __asm { FCVT            S14, H10 }

          LOWORD(_S10) = *(v50 + 2 * llroundf(fminf(fmaxf(_S11, 0.0), 8191.0)));
          __asm { FCVT            S10, H10 }

          LOWORD(_S11) = *(v50 + 2 * llroundf(fminf(fmaxf(_S12, 0.0), 8191.0)));
          __asm { FCVT            S11, H11 }

          LOWORD(_S12) = *(v50 + 2 * llroundf(fminf(fmaxf(v92, 0.0), 8191.0)));
          __asm { FCVT            S12, H12 }

          v99 = (((v35 * _S19) + (v34 * _S18)) + (v36 * _S14)) + v29;
          v14 = (((v35 * _S11) + (v34 * _S10)) + (v36 * _S12)) + v29;
          if (v99 < v29)
          {
            v100 = v29;
          }

          else
          {
            v100 = (((v35 * _S19) + (v34 * _S18)) + (v36 * _S14)) + v29;
          }

          if (v99 > v31)
          {
            v100 = v31;
          }

          *v68 = llroundf(v100);
          if (v14 < v29)
          {
            v101 = v29;
          }

          else
          {
            v101 = (((v35 * _S11) + (v34 * _S10)) + (v36 * _S12)) + v29;
          }

          if (v14 > v31)
          {
            v101 = v31;
          }

          v68[1] = llroundf(v101);
          v102 = _S18 + _S10;
          v103 = _S19 + _S11;
          v11 = _S14 + _S12;
          v13 = ((v30 + (v102 * v106)) + (v103 * v105)) + (v11 * v104);
          v12 = v33;
          if (v13 <= v33)
          {
            v12 = ((v30 + (v102 * v106)) + (v103 * v105)) + (v11 * v104);
            if (v13 < v32)
            {
              v12 = v32;
            }
          }

          v9 = ((v30 + (v102 * v37)) + (v103 * v38)) + (v11 * v40);
          *(v62 + v65) = llroundf(v12);
          v10 = v33;
          if (v9 <= v33)
          {
            v10 = v9;
            if (v9 < v32)
            {
              v10 = v32;
            }
          }

          *(v62 + v65 + 1) = llroundf(v10);
          if (v67)
          {
            *v67 = v69;
            v67[1] = v70;
            v67 += 2;
          }

          v66 += 8;
          v65 += 2;
          v68 += 2;
        }

        while (v65 < v21);
      }

      v64 += v22;
      v63 += v25;
      v62 += v26;
      v59 += v27;
      ++v19;
    }

    while (v19 != v18);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_BGRA_rgb_422vf_neon_fp16(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4, void *a5, uint64_t *a6, uint64_t a7, unint64_t *a8, void *a9)
{
  v61 = a8;
  v59 = a7;
  v64 = a5;
  v66 = a4;
  v67 = *MEMORY[0x1E69E9840];
  v10 = *(a1 + 162);
  v12 = *a2;
  v11 = a2[1];
  v13 = a2[2];
  v58 = a2[3];
  v14 = a2[4];
  v15 = a2[5];
  v16 = *a6;
  v62 = a6[1];
  v63 = v11;
  v18 = a6[2];
  v17 = a6[3];
  v56 = a1;
  v57 = v17;
  v19 = a6[4];
  v60 = a6[5];
  v65 = v16;
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
    v22 = (&v54 - v24);
    bzero(&v54 - v24, v25);
  }

  v55 = a3;
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
    v31 = v60;
    if (v21 || (4 * (v29 + v28) + 4) > *v66 || (v32 = v27 + 1 + v30, v32 > *v61) || ((v32 + (v32 >> 63)) & 0xFFFFFFFFFFFFFFFELL) > v61[1] || (v33 = v61[2], v32 > v33) && v33)
    {
      --v27;
      --v28;
    }

    else
    {
      ++v65;
      ++v28;
      ++v12;
      ++v27;
    }
  }

  else
  {
    v31 = v60;
  }

  if (v28 + v29 > v12)
  {
    v28 = v12 - v29;
  }

  if (v27 + v30 > v65)
  {
    v27 = v65 - v30;
  }

  if (v15 + v58 <= v63)
  {
    v34 = v58;
  }

  else
  {
    v34 = v63 - v15;
  }

  if (v31 + v57 <= v62)
  {
    v35 = v57;
  }

  else
  {
    v35 = v62 - v31;
  }

  if (v28 >= v27)
  {
    v36 = v27;
  }

  else
  {
    v36 = v28;
  }

  if (v34 >= v35)
  {
    v37 = v35;
  }

  else
  {
    v37 = v34;
  }

  if ((*v66 * (v15 + v37 - 1) + 4 * (v36 + v29)) <= *v64)
  {
    v42 = v31 + v37 - 1;
    v43 = v36 + v30;
    if (v36 + v30 + *v61 * v42 <= *a9)
    {
      v44 = v59;
      if (*(v59 + 8) && ((v43 + 1 + ((v43 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v61[1] * v42 > a9[1])
      {
        v58 = v29;
        v38 = v10;
        v39 = v12;
        v40 = v15;
        v41 = a9;
      }

      else
      {
        if (!*(v59 + 16) || v43 + v61[2] * v42 <= a9[2])
        {
          goto LABEL_53;
        }

        v58 = v29;
        v38 = v10;
        v39 = v12;
        v40 = v15;
        v41 = a9;
      }
    }

    else
    {
      v58 = v29;
      v38 = v10;
      v39 = v12;
      v40 = v15;
      v41 = a9;
    }
  }

  else
  {
    v58 = v29;
    v38 = v10;
    v39 = v12;
    v40 = v15;
    v41 = a9;
  }

  fig_log_get_emitter();
  v45 = FigSignalErrorAtGM();
  v44 = v59;
  v31 = v60;
  v26 = v41;
  v15 = v40;
  v12 = v39;
  v10 = v38;
  v29 = v58;
  if (v45)
  {
    v23 = v45;
    goto LABEL_58;
  }

LABEL_53:
  *v22 = v10;
  *(v22 + 4) = v12;
  v46 = v62;
  *(v22 + 12) = v63;
  *(v22 + 20) = v36;
  *(v22 + 28) = v37;
  *(v22 + 36) = v29;
  *(v22 + 44) = v15;
  v22[11] = v46;
  v22[12] = v36;
  v22[13] = v37;
  v22[14] = v30;
  v48 = v65;
  v47 = v66;
  v22[7] = v55;
  v22[8] = v47;
  v22[9] = v64;
  v22[10] = v48;
  v22[15] = v31;
  v22[16] = v44;
  v22[17] = v61;
  v22[18] = v26;
  v22[19] = v56;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v10, global_queue, v22, vt_Copy_BGRA_rgb_422vf_neon_fp16_GCD);
  if (!v10)
  {
    return 0;
  }

  v50 = (v22 + 20);
  v51 = v10;
  while (1)
  {
    v52 = *v50++;
    v23 = v52;
    if (v52)
    {
      break;
    }

    if (!--v51)
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

unsigned __int8 *vt_Copy_BGRA_rgb_422vf_neon_fp16_GCD(unsigned __int8 *result, uint64_t a2)
{
  v7 = 0;
  v107 = *(result + 36);
  v8 = *(result + 24);
  v9 = *result;
  v11 = *(result + 13);
  v10 = *(result + 14);
  v12 = *(result + 19);
  v13 = *(result + 16);
  v14 = *(result + 17);
  v15 = v11 * a2 / v9;
  v16 = v15 + *(result + 15);
  v17 = **(result + 8);
  v18 = v11 + v11 * a2;
  v105 = v17 * (*(result + 28) * a2 / v9 + *(result + 44));
  v106 = **(result + 7);
  v19 = *v14;
  v20 = v14[1];
  v21 = v14[2];
  v23 = *v13;
  v22 = v13[1];
  v24 = v13[2];
  v25 = *(v12 + 128);
  v26 = *(v12 + 136);
  v117 = *(v12 + 154);
  v27 = *(v12 + 144);
  v28 = *(v12 + 146);
  v29 = *(v12 + 148);
  v30 = *(v12 + 150);
  v31 = *(v12 + 152);
  _S0 = *(v12 + 36);
  _S1 = *(v12 + 40);
  _S2 = *(v12 + 44);
  v35.i32[0] = *(v12 + 48);
  v4.i32[0] = *(v12 + 52);
  v5.i32[0] = *(v12 + 56);
  v37 = *(v12 + 60);
  v36 = *(v12 + 64);
  v38 = *(v12 + 68);
  v115 = 0u;
  v116 = 0u;
  v39 = v18 / v9;
  do
  {
    v40 = 0;
    v41 = *(&v117 + v7);
    v42 = *(&v115 + v7);
    do
    {
      v114 = v42;
      *(&v114 | v40 & 7) = v41 + 4 * v40;
      v42 = v114;
      ++v40;
    }

    while (v40 != 8);
    *(&v115 + v7++) = v114;
  }

  while (v7 != 4);
  v43 = v39 - v15;
  if (v39 - v15 >= 1)
  {
    v44 = 0;
    v45 = v26;
    v46 = v8 & 0xFFFFFFFE;
    v47 = v27;
    v48 = v28;
    v49 = v29;
    v50 = v30;
    v51 = v31;
    _S16 = v45 / v25;
    v35.i32[1] = v37;
    v4.i32[1] = v36;
    *v6.f32 = vmul_f32(v35, 0x3F0000003F000000);
    *v4.f32 = vmul_f32(*v4.f32, 0x3F0000003F000000);
    v5.i32[1] = v38;
    *v5.f32 = vmul_f32(*v5.f32, 0x3F0000003F000000);
    __asm { FCVT            H8, S0 }

    v113 = _H8;
    __asm { FCVT            H8, S1 }

    v112 = _H8;
    __asm { FCVT            H8, S2 }

    v111 = vdupq_lane_s32(vcvt_f16_f32(v6), 0);
    v60 = vdupq_lane_s32(vcvt_f16_f32(v4), 0);
    v65 = vdupq_lane_s32(vcvt_f16_f32(v5), 0);
    v109 = v65;
    v110 = v60;
    *v65.i16 = v27;
    v61 = vdupq_lane_s16(*v65.i8, 0);
    *v65.i16 = v28;
    v62 = vdupq_lane_s16(*v65.i8, 0);
    *v65.i16 = v29;
    v63 = vdupq_lane_s16(*v65.i8, 0);
    *v65.i16 = v30;
    v64 = vdupq_lane_s16(*v65.i8, 0);
    *v65.i16 = v31;
    v66 = vdupq_lane_s16(*v65.i8, 0);
    if (v24)
    {
      v67 = v24 + v21 * v16 + v10;
    }

    else
    {
      v67 = 0;
    }

    if (v22)
    {
      v68 = (v22 + v20 * v16 + v10);
    }

    else
    {
      v68 = 0;
    }

    v69 = (v23 + v19 * v16 + v10);
    v70 = v106 + v105 + 4 * v107;
    __asm { FCVT            H11, S16 }

    v72 = v4.i64[0];
    v73 = v5.i64[0];
    do
    {
      if (v8 < 8)
      {
        v90 = 0;
        v89 = v68;
        v77 = v67;
        v76 = v69;
        v75 = v70;
      }

      else
      {
        v74 = 0;
        v75 = v70;
        v76 = v69;
        v77 = v67;
        do
        {
          v3 = *(&v116 + 8);
          v65.i64[0] = *v75;
          v78 = v75[1];
          v5.i64[0] = v75[2];
          v60.i64[0] = v75[3];
          v75 += 4;
          v65.i64[1] = v78;
          v5.i64[1] = v60.i64[0];
          v4 = v5;
          v79 = vqtbl2_s8(*(&v4 - 1), *&v115);
          v80 = vqtbl2_s8(*(&v4 - 1), *(&v115 + 8));
          v81 = vqtbl2_s8(*(&v4 - 1), *&v116);
          *v82.i8 = vzip1_s8(v79, 0);
          v82.u64[1] = vzip2_s8(v79, 0);
          *v83.i8 = vzip1_s8(v80, 0);
          v83.u64[1] = vzip2_s8(v80, 0);
          *v84.i8 = vzip1_s8(v81, 0);
          v84.u64[1] = vzip2_s8(v81, 0);
          v85 = vmulq_n_f16(vcvtq_f16_u16(v82), _H11);
          v86 = vmulq_n_f16(vcvtq_f16_u16(v83), _H11);
          v87 = vmulq_n_f16(vcvtq_f16_u16(v84), _H11);
          *v76++ = vmovn_s16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v61, v85, v113), v86, v112), v87, _H8), v61), v63)));
          v88 = vpaddq_f16(v85, v86);
          v2 = vmovn_s16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_f16(vmlaq_f16(vmlaq_f16(v62, v111, vzip1q_s16(v88, v88)), v110, vzip2q_s16(v88, v88)), v109, vaddq_f16(vtrn1q_s16(v87, v87), vtrn2q_s16(v87, v87))), v64), v66)));
          *&v68[v74] = v2;
          if (v77)
          {
            *v65.i8 = vqtbl2_s8(*(&v4 - 1), v3);
            *v77 = v65.i64[0];
            v77 += 8;
          }

          v74 += 8;
        }

        while (v74 < v8 - 7);
        v89 = &v68[v74];
        v90 = v8 & 0xFFFFFFF8;
      }

      if (v90 < v46)
      {
        v91 = v75 + 4;
        do
        {
          v92 = &v91[v117];
          v65.i8[0] = *(v92 - 4);
          *v65.i32 = _S16 * v65.u32[0];
          v93 = &v91[BYTE1(v117)];
          v4.i8[0] = *(v93 - 4);
          v4.f32[0] = _S16 * v4.u32[0];
          v94 = &v91[BYTE2(v117)];
          v5.i8[0] = *(v94 - 4);
          v5.f32[0] = _S16 * v5.u32[0];
          v95 = &v91[HIBYTE(v117)];
          v96 = *(v95 - 4);
          v60.i8[0] = *v92;
          *v60.i32 = _S16 * v60.u32[0];
          v2.i8[0] = *v93;
          *v2.i32 = _S16 * v2.u32[0];
          v3.i8[0] = *v94;
          *v3.i32 = _S16 * v3.u32[0];
          v97 = *v95;
          v98 = (((_S1 * v4.f32[0]) + (_S0 * *v65.i32)) + (_S2 * v5.f32[0])) + v47;
          v99 = (((_S1 * *v2.i32) + (_S0 * *v60.i32)) + (_S2 * *v3.i32)) + v47;
          if (v98 < v47)
          {
            v100 = v27;
          }

          else
          {
            v100 = (((_S1 * v4.f32[0]) + (_S0 * *v65.i32)) + (_S2 * v5.f32[0])) + v47;
          }

          if (v98 <= v49)
          {
            v101 = v100;
          }

          else
          {
            v101 = v49;
          }

          v76->i8[0] = llroundf(v101);
          if (v99 < v47)
          {
            v102 = v27;
          }

          else
          {
            v102 = (((_S1 * *v2.i32) + (_S0 * *v60.i32)) + (_S2 * *v3.i32)) + v47;
          }

          if (v99 > v49)
          {
            v102 = v49;
          }

          v76->i8[1] = llroundf(v102);
          v103 = *v65.i32 + *v60.i32;
          v104 = v4.f32[0] + *v2.i32;
          v5.f32[0] = v5.f32[0] + *v3.i32;
          *v3.i32 = ((v48 + (v103 * v6.f32[0])) + (v104 * *&v72)) + (v5.f32[0] * *&v73);
          *v60.i32 = v51;
          if (*v3.i32 <= v51)
          {
            *v60.i32 = ((v48 + (v103 * v6.f32[0])) + (v104 * *&v72)) + (v5.f32[0] * *&v73);
            if (*v3.i32 < v50)
            {
              *v60.i32 = v50;
            }
          }

          *v65.i32 = ((v48 + (v103 * v6.f32[1])) + (v104 * *(&v72 + 1))) + (v5.f32[0] * *(&v73 + 1));
          *v89 = llroundf(*v60.i32);
          v4.f32[0] = v51;
          if (*v65.i32 <= v51)
          {
            v4.i32[0] = v65.i32[0];
            if (*v65.i32 < v50)
            {
              v4.f32[0] = v50;
            }
          }

          v89[1] = llroundf(v4.f32[0]);
          if (v77)
          {
            *v77 = v96;
            *(v77 + 1) = v97;
            v77 += 2;
          }

          v91 += 8;
          v90 += 2;
          v76 = (v76 + 2);
          v89 += 2;
        }

        while (v90 < v46);
      }

      v70 += v17;
      v69 = (v69 + v19);
      v68 += v20;
      v67 += v21;
      ++v44;
    }

    while (v44 != v43);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_BGRA_rgb_422vf(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4, void *a5, uint64_t *a6, uint64_t a7, unint64_t *a8, void *a9)
{
  v61 = a8;
  v59 = a7;
  v64 = a5;
  v66 = a4;
  v67 = *MEMORY[0x1E69E9840];
  v10 = *(a1 + 162);
  v12 = *a2;
  v11 = a2[1];
  v13 = a2[2];
  v58 = a2[3];
  v14 = a2[4];
  v15 = a2[5];
  v16 = *a6;
  v62 = a6[1];
  v63 = v11;
  v18 = a6[2];
  v17 = a6[3];
  v56 = a1;
  v57 = v17;
  v19 = a6[4];
  v60 = a6[5];
  v65 = v16;
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
    v22 = (&v54 - v24);
    bzero(&v54 - v24, v25);
  }

  v55 = a3;
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
    v31 = v60;
    if (v21 || (4 * (v29 + v28) + 4) > *v66 || (v32 = v27 + 1 + v30, v32 > *v61) || ((v32 + (v32 >> 63)) & 0xFFFFFFFFFFFFFFFELL) > v61[1] || (v33 = v61[2], v32 > v33) && v33)
    {
      --v27;
      --v28;
    }

    else
    {
      ++v65;
      ++v28;
      ++v12;
      ++v27;
    }
  }

  else
  {
    v31 = v60;
  }

  if (v28 + v29 > v12)
  {
    v28 = v12 - v29;
  }

  if (v27 + v30 > v65)
  {
    v27 = v65 - v30;
  }

  if (v15 + v58 <= v63)
  {
    v34 = v58;
  }

  else
  {
    v34 = v63 - v15;
  }

  if (v31 + v57 <= v62)
  {
    v35 = v57;
  }

  else
  {
    v35 = v62 - v31;
  }

  if (v28 >= v27)
  {
    v36 = v27;
  }

  else
  {
    v36 = v28;
  }

  if (v34 >= v35)
  {
    v37 = v35;
  }

  else
  {
    v37 = v34;
  }

  if ((*v66 * (v15 + v37 - 1) + 4 * (v36 + v29)) <= *v64)
  {
    v42 = v31 + v37 - 1;
    v43 = v36 + v30;
    if (v36 + v30 + *v61 * v42 <= *a9)
    {
      v44 = v59;
      if (*(v59 + 8) && ((v43 + 1 + ((v43 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v61[1] * v42 > a9[1])
      {
        v58 = v29;
        v38 = v10;
        v39 = v12;
        v40 = v15;
        v41 = a9;
      }

      else
      {
        if (!*(v59 + 16) || v43 + v61[2] * v42 <= a9[2])
        {
          goto LABEL_53;
        }

        v58 = v29;
        v38 = v10;
        v39 = v12;
        v40 = v15;
        v41 = a9;
      }
    }

    else
    {
      v58 = v29;
      v38 = v10;
      v39 = v12;
      v40 = v15;
      v41 = a9;
    }
  }

  else
  {
    v58 = v29;
    v38 = v10;
    v39 = v12;
    v40 = v15;
    v41 = a9;
  }

  fig_log_get_emitter();
  v45 = FigSignalErrorAtGM();
  v44 = v59;
  v31 = v60;
  v26 = v41;
  v15 = v40;
  v12 = v39;
  v10 = v38;
  v29 = v58;
  if (v45)
  {
    v23 = v45;
    goto LABEL_58;
  }

LABEL_53:
  *v22 = v10;
  *(v22 + 4) = v12;
  v46 = v62;
  *(v22 + 12) = v63;
  *(v22 + 20) = v36;
  *(v22 + 28) = v37;
  *(v22 + 36) = v29;
  *(v22 + 44) = v15;
  v22[11] = v46;
  v22[12] = v36;
  v22[13] = v37;
  v22[14] = v30;
  v48 = v65;
  v47 = v66;
  v22[7] = v55;
  v22[8] = v47;
  v22[9] = v64;
  v22[10] = v48;
  v22[15] = v31;
  v22[16] = v44;
  v22[17] = v61;
  v22[18] = v26;
  v22[19] = v56;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v10, global_queue, v22, vt_Copy_BGRA_rgb_422vf_GCD);
  if (!v10)
  {
    return 0;
  }

  v50 = (v22 + 20);
  v51 = v10;
  while (1)
  {
    v52 = *v50++;
    v23 = v52;
    if (v52)
    {
      break;
    }

    if (!--v51)
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

unsigned __int8 *vt_Copy_BGRA_rgb_422vf_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, float a5, float a6, float a7, float a8)
{
  v13 = *result;
  v14 = *(result + 13);
  v15 = v14 * a2 / v13;
  v16 = (v14 + v14 * a2) / v13 - v15;
  if (v16 >= 1)
  {
    v17 = 0;
    v18 = *(result + 19);
    v19 = *(result + 24) & 0xFFFFFFFE;
    v20 = **(result + 8);
    v21 = *(result + 16);
    v22 = *(result + 17);
    v23 = *v22;
    v24 = v22[1];
    v25 = v22[2];
    *&v26 = *(v18 + 136);
    v27 = *&v26 / *(v18 + 128);
    LOWORD(v26) = *(v18 + 144);
    v28 = v26;
    LOWORD(a5) = *(v18 + 146);
    v29 = LODWORD(a5);
    LOWORD(a6) = *(v18 + 148);
    v30 = LODWORD(a6);
    LOWORD(a7) = *(v18 + 150);
    v31 = LODWORD(a7);
    LOWORD(a8) = *(v18 + 152);
    v32 = LODWORD(a8);
    v33 = *(v18 + 36);
    v34 = *(v18 + 40);
    v35 = *(v18 + 44);
    v36 = *(v18 + 48) * 0.5;
    v37 = *(v18 + 52) * 0.5;
    v38 = *(v18 + 56) * 0.5;
    v39 = *(v18 + 60) * 0.5;
    v40 = *(v18 + 64) * 0.5;
    v41 = *(v18 + 68);
    v42 = v41 * 0.5;
    v43 = *(result + 14);
    v44 = v15 + *(result + 15);
    v45 = *(result + 28) * a2 / v13 + *(result + 44);
    v46 = *(v18 + 157);
    v47 = *(v18 + 156);
    v48 = *(v18 + 155);
    v49 = *(v18 + 154);
    v50 = v21[2];
    if (v50)
    {
      v51 = (v50 + v25 * v44 + v43);
    }

    else
    {
      v51 = 0;
    }

    v53 = *v21;
    v52 = v21[1];
    v54 = v52 + v24 * v44 + v43;
    if (!v52)
    {
      v54 = 0;
    }

    v55 = (v53 + v23 * v44 + v43);
    v56 = **(result + 7) + v45 * v20 + 4 * *(result + 36);
    do
    {
      if (v19 >= 1)
      {
        v57 = 0;
        v58 = v56;
        v59 = v51;
        v60 = v55;
        do
        {
          LOBYTE(v41) = *(v58 + v49);
          LOBYTE(v8) = *(v58 + v48);
          v61 = v27 * LODWORD(v41);
          v62 = v27 * LODWORD(v8);
          LOBYTE(v9) = *(v58 + v47);
          v63 = v27 * LODWORD(v9);
          v64 = *(v58 + v46);
          LOBYTE(v10) = *(v58 + 4 + v49);
          v65 = v27 * LODWORD(v10);
          LOBYTE(v11) = *(v58 + 4 + v48);
          v66 = v27 * LODWORD(v11);
          LOBYTE(v12) = *(v58 + 4 + v47);
          v12 = v27 * LODWORD(v12);
          v67 = *(v58 + 4 + v46);
          v68 = (((v34 * v62) + (v33 * v61)) + (v35 * v63)) + v28;
          v69 = (((v34 * v66) + (v33 * v65)) + (v35 * v12)) + v28;
          if (v68 < v28)
          {
            v70 = v28;
          }

          else
          {
            v70 = (((v34 * v62) + (v33 * v61)) + (v35 * v63)) + v28;
          }

          if (v68 <= v30)
          {
            v71 = v70;
          }

          else
          {
            v71 = v30;
          }

          *v60 = llroundf(v71);
          if (v69 < v28)
          {
            v72 = v28;
          }

          else
          {
            v72 = (((v34 * v66) + (v33 * v65)) + (v35 * v12)) + v28;
          }

          if (v69 > v30)
          {
            v72 = v30;
          }

          v60[1] = llroundf(v72);
          v73 = v61 + v65;
          v74 = v62 + v66;
          v9 = v63 + v12;
          v11 = ((v29 + (v73 * v36)) + (v74 * v37)) + (v9 * v38);
          v10 = v32;
          if (v11 <= v32)
          {
            v10 = ((v29 + (v73 * v36)) + (v74 * v37)) + (v9 * v38);
            if (v11 < v31)
            {
              v10 = v31;
            }
          }

          v41 = ((v29 + (v73 * v39)) + (v74 * v40)) + (v9 * v42);
          *(v54 + v57) = llroundf(v10);
          v8 = v32;
          if (v41 <= v32)
          {
            v8 = v41;
            if (v41 < v31)
            {
              v8 = v31;
            }
          }

          *(v54 + v57 + 1) = llroundf(v8);
          if (v59)
          {
            *v59 = v64;
            v59[1] = v67;
            v59 += 2;
          }

          v58 += 8;
          v57 += 2;
          v60 += 2;
        }

        while (v57 < v19);
      }

      v56 += v20;
      v55 += v23;
      v54 += v24;
      v51 += v25;
      ++v17;
    }

    while (v17 != v16);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_BGRA_TRC_Tone_Mat_TRC_2vuyf(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, uint64_t a8, uint64_t a9)
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
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_BGRA_TRC_Tone_Mat_TRC_2vuyf_GCD);
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

unsigned __int8 *vt_Copy_BGRA_TRC_Tone_Mat_TRC_2vuyf_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, double a5, double a6, double a7, float a8, float a9, float a10)
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
    v20 += v19[1] * v17 + v14;
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
    v28 = (v26 + v14);
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
          if (v119 < v39)
          {
            v121 = v39;
          }

          else
          {
            v121 = v119;
          }

          v122 = v119 <= v40;
          v123 = v118 + v36;
          if (!v122)
          {
            v121 = v40;
          }

          v124 = llroundf(v121);
          if (v123 < v36)
          {
            v125 = v36;
          }

          else
          {
            v125 = v118 + v36;
          }

          v126 = *(v67 + v60);
          v127 = *(v67 + 4 + v60);
          *v66 = v124;
          if (v123 <= v38)
          {
            v33 = v125;
          }

          else
          {
            v33 = v38;
          }

          v66[1] = llroundf(v33);
          v34 = v40;
          if (v120 <= v40)
          {
            v34 = v120;
            if (v120 < v39)
            {
              v34 = v39;
            }
          }

          v41 = v31 * _S14;
          v44 = (((v31 * _S14) + (v30 * _S18)) + (v32 * _S0)) + v36;
          v66[2] = llroundf(v34);
          v42 = v38;
          if (v44 <= v38)
          {
            v42 = v44;
            if (v44 < v36)
            {
              v42 = v36;
            }
          }

          v66[3] = llroundf(v42);
          if (v65)
          {
            *v65 = v126;
            v65[1] = v127;
            v65 += 2;
          }

          v67 += 8;
          v64 += 2;
          v66 += 4;
        }

        while (v64 < v29);
      }

      v27 += v23;
      v28 += v24;
      ++v21;
    }

    while (v21 != v18);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_BGRA_TRC_Mat_TRC_2vuyf(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, uint64_t a8, uint64_t a9)
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
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_BGRA_TRC_Mat_TRC_2vuyf_GCD);
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

unsigned __int8 *vt_Copy_BGRA_TRC_Mat_TRC_2vuyf_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, double a5, double a6, double a7, float a8, float a9, float a10)
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
    v26 += v25[1] * v23 + v20;
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
    v34 = (v32 + v20);
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
          if (v107 < v43)
          {
            v108 = v43;
          }

          else
          {
            v108 = v107;
          }

          v109 = v15 + v40;
          if (v107 > v44)
          {
            v108 = v44;
          }

          v110 = llroundf(v108);
          if (v109 < v40)
          {
            v111 = v40;
          }

          else
          {
            v111 = v15 + v40;
          }

          v112 = *(v65 + v60);
          v113 = *(v65 + 4 + v60);
          *v67 = v110;
          if (v109 > v42)
          {
            v111 = v42;
          }

          v67[1] = llroundf(v111);
          v14 = v44;
          if (v13 <= v44)
          {
            v14 = v13;
            if (v13 < v43)
            {
              v14 = v43;
            }
          }

          v10 = (((v37 * _S11) + (v36 * _S10)) + (v38 * _S12)) + v40;
          v67[2] = llroundf(v14);
          v11 = v42;
          if (v10 <= v42)
          {
            v11 = v10;
            if (v10 < v40)
            {
              v11 = v40;
            }
          }

          v67[3] = llroundf(v11);
          if (v66)
          {
            *v66 = v112;
            v66[1] = v113;
            v66 += 2;
          }

          v65 += 8;
          v64 += 2;
          v67 += 4;
        }

        while (v64 < v35);
      }

      v33 += v29;
      v34 += v30;
      ++v27;
    }

    while (v27 != v24);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_BGRA_rgb_2vuyf(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, uint64_t a8, uint64_t a9)
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
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_BGRA_rgb_2vuyf_GCD);
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

unsigned __int8 *vt_Copy_BGRA_rgb_2vuyf_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, float a5, float a6, float a7, float a8)
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
    v18 += v17[1] * v15 + v12;
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
    v26 = (v24 + v12);
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
          if (v65 < v32)
          {
            v67 = v32;
          }

          else
          {
            v67 = v65;
          }

          if (v65 > v33)
          {
            v67 = v33;
          }

          *v51 = llroundf(v67);
          if (v61 < v29)
          {
            v68 = v29;
          }

          else
          {
            v68 = v61;
          }

          if (v61 > v31)
          {
            v68 = v31;
          }

          v51[1] = llroundf(v68);
          v69 = v33;
          if (v66 <= v33)
          {
            v69 = v66;
            if (v66 < v32)
            {
              v69 = v32;
            }
          }

          v42 = (((v35 * v59) + (v34 * v58)) + (v36 * v9)) + v29;
          v51[2] = llroundf(v69);
          v8 = v31;
          if (v42 <= v31)
          {
            v8 = v42;
            if (v42 < v29)
            {
              v8 = v29;
            }
          }

          v51[3] = llroundf(v8);
          if (v50)
          {
            *v50 = v56;
            v50[1] = v60;
            v50 += 2;
          }

          v49 += 8;
          v48 += 2;
          v51 += 4;
        }

        while (v48 < v27);
      }

      v25 += v21;
      v26 += v22;
      ++v19;
    }

    while (v19 != v16);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_BGRA_TRC_Tone_Mat_TRC_yuvsf(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, uint64_t a8, uint64_t a9)
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
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_BGRA_TRC_Tone_Mat_TRC_yuvsf_GCD);
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

unsigned __int8 *vt_Copy_BGRA_TRC_Tone_Mat_TRC_yuvsf_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, double a5, double a6, double a7, float a8, float a9, float a10)
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
    v20 += v19[1] * v17 + v14;
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
    v28 = (v26 + v14);
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
    v137 = *(v25 + 52) * 0.5;
    v138 = *(v25 + 48) * 0.5;
    v135 = v34 * 0.5;
    v136 = v33 * 0.5;
    v41 = *(v25 + 64) * 0.5;
    v42 = *(v25 + 68);
    v43 = *(v25 + 72);
    v44 = v42 * 0.5;
    v133 = v42 * 0.5;
    v134 = v41;
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
          _S18 = v101 + (_S20 * v46);
          v105 = v102 + (_S20 * v49);
          v106 = v103 + (_S20 * v51);
          LOWORD(_S20) = *(v55 + 2 * llroundf(fminf(fmaxf(_S22, 0.0), 8191.0)));
          __asm { FCVT            S20, H20 }

          LOWORD(_S22) = *(v55 + 2 * llroundf(fminf(fmaxf(v99, 0.0), 8191.0)));
          __asm { FCVT            S22, H22 }

          v109 = llroundf(fminf(fmaxf(_S0, 0.0), 8191.0));
          LOWORD(_S0) = *(v55 + 2 * llroundf(fminf(fmaxf(_S18, 0.0), 8191.0)));
          __asm { FCVT            S0, H0 }

          LOWORD(_S18) = *(v55 + 2 * llroundf(fminf(fmaxf(v105, 0.0), 8191.0)));
          __asm { FCVT            S18, H18 }

          v112 = llroundf(fminf(fmaxf(v106, 0.0), 8191.0));
          v113 = (v31 * _S22) + (v30 * _S20);
          v114 = (v31 * _S18) + (v30 * _S0);
          v115 = _S20 + _S0;
          LOWORD(_S20) = *(v55 + 2 * v109);
          __asm { FCVT            S20, H20 }

          v117 = _S22 + _S18;
          LOWORD(_S22) = *(v55 + 2 * v112);
          __asm { FCVT            S22, H22 }

          v119 = v113 + (v32 * _S20);
          v34 = v114 + (v32 * _S22);
          v120 = _S20 + _S22;
          v121 = (v37 + (v115 * v138)) + (v117 * v137);
          v122 = (v37 + (v115 * v135)) + (v117 * v134);
          v123 = v119 + v36;
          v124 = v121 + (v120 * v136);
          v44 = v122 + (v120 * v133);
          if (v123 < v36)
          {
            v33 = v36;
          }

          else
          {
            v33 = v123;
          }

          if (v123 <= v38)
          {
            v125 = v33;
          }

          else
          {
            v125 = v38;
          }

          v126 = llroundf(v125);
          if (v124 < v39)
          {
            v127 = v39;
          }

          else
          {
            v127 = v124;
          }

          v128 = v124 <= v40;
          v41 = v34 + v36;
          if (!v128)
          {
            v127 = v40;
          }

          v129 = llroundf(v127);
          if (v41 < v36)
          {
            v130 = v36;
          }

          else
          {
            v130 = v34 + v36;
          }

          v131 = *(v67 + v60);
          v132 = *(v67 + 4 + v60);
          *v66 = v126;
          v66[1] = v129;
          if (v41 > v38)
          {
            v130 = v38;
          }

          v66[2] = llroundf(v130);
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
            *v65 = v131;
            v65[1] = v132;
            v65 += 2;
          }

          v67 += 8;
          v64 += 2;
          v66 += 4;
        }

        while (v64 < v29);
      }

      v27 += v23;
      v28 += v24;
      ++v21;
    }

    while (v21 != v18);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_BGRA_TRC_Mat_TRC_yuvsf(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, uint64_t a8, uint64_t a9)
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
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_BGRA_TRC_Mat_TRC_yuvsf_GCD);
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

unsigned __int8 *vt_Copy_BGRA_TRC_Mat_TRC_yuvsf_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, double a5, double a6, double a7, float a8, float a9, float a10)
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
    v26 += v25[1] * v23 + v20;
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
    v34 = (v32 + v20);
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
    v114 = *(v31 + 48) * 0.5;
    v45 = *(v31 + 52) * 0.5;
    v46 = *(v31 + 56) * 0.5;
    v47 = *(v31 + 60) * 0.5;
    v48 = *(v31 + 64) * 0.5;
    v49 = *(v31 + 72);
    v50 = *(v31 + 68) * 0.5;
    v51 = *(v31 + 76);
    v52 = *(v31 + 80);
    v53 = *(v31 + 84);
    v54 = *(v31 + 88);
    v55 = *(v31 + 92);
    v56 = *(v31 + 96);
    v58 = *(v31 + 100);
    v57 = *(v31 + 104);
    v59 = v31 + 164;
    v60 = v31 + 16548;
    v61 = *(v31 + 157);
    v62 = *(v31 + 156);
    v63 = *(v31 + 155);
    v64 = *(v31 + 154);
    do
    {
      if (v35 >= 1)
      {
        v65 = 0;
        v66 = v33;
        v67 = v26;
        v68 = v34;
        do
        {
          LOBYTE(v10) = *(v66 + v64);
          LOBYTE(v11) = *(v66 + v63);
          LOBYTE(v12) = *(v66 + v62);
          LOBYTE(v13) = *(v66 + 4 + v64);
          LOBYTE(v14) = *(v66 + 4 + v63);
          LOBYTE(v15) = *(v66 + 4 + v62);
          _H10 = *(v59 + 2 * llroundf(fminf(fmaxf(v39 * LODWORD(v10), 0.0), 8191.0)));
          __asm { FCVT            S10, H10 }

          _H11 = *(v59 + 2 * llroundf(fminf(fmaxf(v39 * LODWORD(v11), 0.0), 8191.0)));
          __asm { FCVT            S11, H11 }

          _H12 = *(v59 + 2 * llroundf(fminf(fmaxf(v39 * LODWORD(v12), 0.0), 8191.0)));
          _H13 = *(v59 + 2 * llroundf(fminf(fmaxf(v39 * LODWORD(v13), 0.0), 8191.0)));
          __asm
          {
            FCVT            S12, H12
            FCVT            S13, H13
          }

          _H14 = *(v59 + 2 * llroundf(fminf(fmaxf(v39 * LODWORD(v14), 0.0), 8191.0)));
          v82 = llroundf(fminf(fmaxf(v39 * LODWORD(v15), 0.0), 8191.0));
          __asm { FCVT            S14, H14 }

          v15 = ((v51 * _S11) + (_S10 * v49)) + (_S12 * v52);
          _S18 = ((v54 * _S11) + (_S10 * v53)) + (_S12 * v55);
          _S10 = ((v58 * _S11) + (_S10 * v56)) + (_S12 * v57);
          v86 = (v51 * _S14) + (_S13 * v49);
          v87 = (v54 * _S14) + (_S13 * v53);
          v88 = (v58 * _S14) + (_S13 * v56);
          LOWORD(_S14) = *(v59 + 2 * v82);
          __asm { FCVT            S14, H14 }

          _S11 = v86 + (_S14 * v52);
          v91 = v87 + (_S14 * v55);
          v92 = v88 + (_S14 * v57);
          LOWORD(_S14) = *(v60 + 2 * llroundf(fminf(fmaxf(v15, 0.0), 8191.0)));
          __asm { FCVT            S14, H14 }

          LOWORD(_S18) = *(v60 + 2 * llroundf(fminf(fmaxf(_S18, 0.0), 8191.0)));
          __asm { FCVT            S18, H18 }

          v95 = llroundf(fminf(fmaxf(_S10, 0.0), 8191.0));
          LOWORD(_S10) = *(v60 + 2 * llroundf(fminf(fmaxf(_S11, 0.0), 8191.0)));
          __asm { FCVT            S10, H10 }

          LOWORD(_S11) = *(v60 + 2 * llroundf(fminf(fmaxf(v91, 0.0), 8191.0)));
          __asm { FCVT            S11, H11 }

          v98 = llroundf(fminf(fmaxf(v92, 0.0), 8191.0));
          v99 = (v37 * _S18) + (v36 * _S14);
          v100 = (v37 * _S11) + (v36 * _S10);
          v101 = _S14 + _S10;
          LOWORD(_S14) = *(v60 + 2 * v95);
          __asm { FCVT            S14, H14 }

          v103 = _S18 + _S11;
          LOWORD(_S11) = *(v60 + 2 * v98);
          __asm { FCVT            S11, H11 }

          v13 = v100 + (v38 * _S11);
          v105 = _S14 + _S11;
          v12 = (v99 + (v38 * _S14)) + v40;
          v14 = ((v41 + (v101 * v114)) + (v103 * v45)) + (v105 * v46);
          v10 = ((v41 + (v101 * v47)) + (v103 * v48)) + (v105 * v50);
          if (v12 < v40)
          {
            v106 = v40;
          }

          else
          {
            v106 = v12;
          }

          if (v12 > v42)
          {
            v106 = v42;
          }

          v107 = llroundf(v106);
          if (v14 < v43)
          {
            v108 = v43;
          }

          else
          {
            v108 = v14;
          }

          v109 = v13 + v40;
          if (v14 > v44)
          {
            v108 = v44;
          }

          v110 = llroundf(v108);
          if (v109 < v40)
          {
            v111 = v40;
          }

          else
          {
            v111 = v13 + v40;
          }

          v112 = *(v66 + v61);
          v113 = *(v66 + 4 + v61);
          *v68 = v107;
          v68[1] = v110;
          if (v109 > v42)
          {
            v111 = v42;
          }

          v68[2] = llroundf(v111);
          v11 = v44;
          if (v10 <= v44)
          {
            v11 = v10;
            if (v10 < v43)
            {
              v11 = v43;
            }
          }

          v68[3] = llroundf(v11);
          if (v67)
          {
            *v67 = v112;
            v67[1] = v113;
            v67 += 2;
          }

          v66 += 8;
          v65 += 2;
          v68 += 4;
        }

        while (v65 < v35);
      }

      v33 += v29;
      v34 += v30;
      ++v27;
    }

    while (v27 != v24);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_BGRA_rgb_yuvsf(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, uint64_t a8, uint64_t a9)
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
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_BGRA_rgb_yuvsf_GCD);
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

unsigned __int8 *vt_Copy_BGRA_rgb_yuvsf_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, float a5, float a6, float a7, float a8)
{
  v13 = *result;
  v14 = *(result + 13);
  v15 = *(result + 14);
  v16 = v14 * a2 / v13;
  v17 = *(result + 16);
  v18 = v16 + *(result + 15);
  v19 = (v14 + v14 * a2) / v13 - v16;
  v20 = *(result + 17);
  v21 = v17[1];
  if (v21)
  {
    v21 += v20[1] * v18 + v15;
  }

  if (v19 >= 1)
  {
    v22 = 0;
    v23 = *(result + 28) * a2 / v13 + *(result + 44);
    v24 = **(result + 8);
    v25 = *v20;
    v26 = *(result + 19);
    v27 = *v17 + v25 * v18;
    v28 = **(result + 7) + v24 * v23 + 4 * *(result + 36);
    v29 = (v27 + v15);
    v30 = *(result + 24) & 0xFFFFFFFE;
    LOWORD(a5) = *(v26 + 144);
    LOWORD(a6) = *(v26 + 146);
    v31 = *(v26 + 136) / *(v26 + 128);
    v32 = LODWORD(a5);
    v33 = LODWORD(a6);
    LOWORD(a6) = *(v26 + 148);
    v34 = LODWORD(a6);
    LOWORD(a7) = *(v26 + 150);
    v35 = LODWORD(a7);
    LOWORD(a8) = *(v26 + 152);
    v36 = LODWORD(a8);
    v37 = *(v26 + 36);
    v38 = *(v26 + 40);
    v39 = *(v26 + 44);
    v40 = *(v26 + 48) * 0.5;
    v41 = *(v26 + 52) * 0.5;
    v42 = *(v26 + 56) * 0.5;
    v43 = *(v26 + 60) * 0.5;
    v44 = *(v26 + 64) * 0.5;
    v45 = *(v26 + 68);
    v46 = v45 * 0.5;
    v47 = *(v26 + 157);
    v48 = *(v26 + 156);
    v49 = *(v26 + 155);
    v50 = *(v26 + 154);
    do
    {
      if (v30 >= 1)
      {
        v51 = 0;
        v52 = v28;
        v53 = v21;
        v54 = v29;
        do
        {
          LOBYTE(v45) = *(v52 + v50);
          v55 = v31 * LODWORD(v45);
          LOBYTE(v8) = *(v52 + v49);
          LOBYTE(v9) = *(v52 + v48);
          v56 = v31 * LODWORD(v8);
          v57 = v31 * LODWORD(v9);
          v58 = *(v52 + v47);
          LOBYTE(v10) = *(v52 + 4 + v50);
          v59 = v31 * LODWORD(v10);
          LOBYTE(v11) = *(v52 + 4 + v49);
          v11 = v31 * LODWORD(v11);
          LOBYTE(v12) = *(v52 + 4 + v48);
          v12 = v31 * LODWORD(v12);
          v60 = *(v52 + 4 + v47);
          v61 = (((v38 * v56) + (v37 * v55)) + (v39 * v57)) + v32;
          v62 = (((v38 * v11) + (v37 * v59)) + (v39 * v12)) + v32;
          v63 = v55 + v59;
          v64 = v56 + v11;
          v9 = v57 + v12;
          v10 = ((v33 + (v63 * v40)) + (v64 * v41)) + (v9 * v42);
          v65 = (v33 + (v63 * v43)) + (v64 * v44);
          if (v61 < v32)
          {
            v66 = v32;
          }

          else
          {
            v66 = v61;
          }

          if (v61 > v34)
          {
            v66 = v34;
          }

          v45 = v65 + (v9 * v46);
          *v54 = llroundf(v66);
          if (v10 < v35)
          {
            v67 = v35;
          }

          else
          {
            v67 = v10;
          }

          if (v10 > v36)
          {
            v67 = v36;
          }

          v54[1] = llroundf(v67);
          if (v62 < v32)
          {
            v68 = v32;
          }

          else
          {
            v68 = v62;
          }

          if (v62 > v34)
          {
            v68 = v34;
          }

          v54[2] = llroundf(v68);
          v8 = v36;
          if (v45 <= v36)
          {
            v8 = v45;
            if (v45 < v35)
            {
              v8 = v35;
            }
          }

          v54[3] = llroundf(v8);
          if (v53)
          {
            *v53 = v58;
            v53[1] = v60;
            v53 += 2;
          }

          v52 += 8;
          v51 += 2;
          v54 += 4;
        }

        while (v51 < v30);
      }

      v28 += v24;
      v29 += v25;
      ++v22;
    }

    while (v22 != v19);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}