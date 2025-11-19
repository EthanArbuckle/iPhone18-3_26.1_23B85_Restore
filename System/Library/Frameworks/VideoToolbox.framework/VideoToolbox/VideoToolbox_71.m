uint64_t vt_Copy_BGRA_TRC_Tone_Mat_TRC_BGRA_neon_fp16(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
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
  if (((*a4 * (v29.i64[1] + v27.i64[1]) + 4 * v29.i64[0]) > *a5 || (v30 = vaddq_s64(v40, v28), (*a8 * (v30.i64[1] + v27.i64[1]) + 4 * v30.i64[0]) > *a9)) && (v38 = v27, v39.i64[0] = a9, fig_log_get_emitter(), v31 = FigSignalErrorAtGM(), v24 = v40, v23 = v39.i64[0], v27 = v38, v31))
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
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_BGRA_TRC_Tone_Mat_TRC_BGRA_neon_fp16_GCD);
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

unsigned __int8 *vt_Copy_BGRA_TRC_Tone_Mat_TRC_BGRA_neon_fp16_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, double a5, double a6, double a7, float _S5, float _S6, float _S7)
{
  v12 = 0;
  v13 = 0;
  v179 = *(result + 36);
  v14 = *result;
  v15 = *(result + 28) * a2 / v14 + *(result + 44);
  v17 = *(result + 14);
  v16 = *(result + 15);
  v18 = *(result + 12);
  v19 = *(result + 13);
  v20 = *(result + 19);
  v21 = **(result + 8);
  v22 = **(result + 7);
  v23 = **(result + 17);
  v24 = **(result + 16);
  v25 = *(v20 + 128);
  v173 = *(v20 + 154);
  v187[0] = *(v20 + 154);
  v172 = *(v20 + 155);
  v187[1] = *(v20 + 155);
  v26 = v19 * a2 / v14;
  v188 = *(v20 + 156);
  v27 = v21 * v15;
  v28 = v23 * (v26 + v16);
  v170 = *(v20 + 157);
  v171 = v188;
  v189 = *(v20 + 157);
  v169 = *(v20 + 158);
  v186[0] = *(v20 + 158);
  v168 = *(v20 + 159);
  v186[1] = *(v20 + 159);
  v167 = *(v20 + 160);
  v186[2] = *(v20 + 160);
  v166 = *(v20 + 161);
  v186[3] = *(v20 + 161);
  _S20 = *(v20 + 72);
  _S23 = *(v20 + 76);
  _S24 = *(v20 + 80);
  _S25 = *(v20 + 84);
  _S26 = *(v20 + 88);
  _S27 = *(v20 + 92);
  _S28 = *(v20 + 96);
  _S8 = *(v20 + 100);
  _S9 = *(v20 + 104);
  _S10 = *(v20 + 108);
  _S11 = *(v20 + 112);
  _S12 = *(v20 + 116);
  v177 = *(v20 + 120);
  v184 = 0u;
  v185 = 0u;
  v182 = 0u;
  v183 = 0u;
  v41 = (v19 + v19 * a2) / v14;
  do
  {
    v42 = 0;
    v43 = v187[v13];
    v44 = v186[v13];
    v45 = *(&v184 + v13);
    do
    {
      v181 = v45;
      *(&v181 | v42 & 7) = v43 + 4 * v42;
      v45 = v181;
      *((&v182 + ((v44 + 4 * v42) & 0xF8)) | (v44 + 4 * v42) & 7) = v12 + v42;
      ++v42;
    }

    while (v42 != 8);
    *(&v184 + v13++) = v45;
    v12 += 8;
  }

  while (v13 != 4);
  v46 = v41 - v26;
  if (v41 - v26 >= 1)
  {
    v47 = 0;
    _S22 = 8191.0 / v25;
    __asm { FCVT            H0, S10 }

    v176 = _H0;
    __asm
    {
      FCVT            H14, S11
      FCVT            H15, S12
    }

    _S0 = v177;
    __asm
    {
      FCVT            H0, S0
      FCVT            H1, S20
    }

    v59 = v20 + 16548;
    v60 = v20 + 32932;
    v61 = v20 + 164;
    __asm
    {
      FCVT            H2, S23
      FCVT            H3, S24
      FCVT            H4, S25
      FCVT            H13, S26
      FCVT            H5, S27
    }

    v153 = _S5;
    __asm { FCVT            H5, S28 }

    v175 = _H5;
    __asm { FCVT            H5, S8 }

    v152 = _H5;
    __asm { FCVT            H5, S9 }

    v174 = _H5;
    v68 = v24 + v28 + 4 * v17;
    v69 = v22 + v27 + 4 * v179;
    __asm { FCVT            H5, S22 }

    v71.i64[0] = 0x9000900090009000;
    v71.i64[1] = 0x9000900090009000;
    v164 = _S23;
    v165 = _S20;
    v162 = _S25;
    v163 = _S24;
    v160 = _S27;
    v161 = _S26;
    v158 = _S8;
    v159 = _S28;
    v156 = _S10;
    v157 = _S9;
    v154 = _S12;
    v155 = _S11;
    do
    {
      if (v18 < 8)
      {
        v119 = 0;
        v78 = v68;
        v77 = v69;
      }

      else
      {
        v72 = 0;
        v178 = *(&v184 + 8);
        v180 = v184;
        v74 = *(&v185 + 8);
        v73 = v185;
        v76 = *(&v182 + 8);
        v75 = v182;
        v77 = v69;
        v78 = v68;
        v80 = *(&v183 + 8);
        v79 = v183;
        _S6 = _S13;
        _S7 = v153;
        do
        {
          v190.val[0].i64[0] = *v77;
          v81 = v77[1];
          v82.i64[0] = v77[2];
          v83 = v77[3];
          v77 += 4;
          v190.val[0].i64[1] = v81;
          v82.i64[1] = v83;
          v190.val[1] = v82;
          v84 = vqtbl2_s8(v190, v180);
          v85 = vqtbl2_s8(v190, v178);
          *v86.i8 = vzip1_s8(v84, 0);
          v86.u64[1] = vzip2_s8(v84, 0);
          *v87.i8 = vzip1_s8(v85, 0);
          v87.u64[1] = vzip2_s8(v85, 0);
          v88 = vqtbl2_s8(v190, v73);
          *v89.i8 = vzip1_s8(v88, 0);
          v89.u64[1] = vzip2_s8(v88, 0);
          v90 = vcvtq_f16_u16(v86);
          v91 = vcvtq_f16_u16(v89);
          v92 = vmulq_n_f16(vcvtq_f16_u16(v87), _H5);
          v93 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmulq_n_f16(v90, _H5), 0), v71));
          v87.i16[0] = *(v61 + 2 * v93.u16[0]);
          v94 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v92, 0), v71));
          v93.i16[0] = *(v61 + 2 * v94.u16[0]);
          v95 = (v61 + 2 * v94.u16[3]);
          v96 = (v61 + 2 * v94.u16[4]);
          v97 = (v61 + 2 * v94.u16[5]);
          v98 = (v61 + 2 * v94.u16[6]);
          v87.i16[1] = *(v61 + 2 * v93.u16[1]);
          v93.i16[1] = *(v61 + 2 * v94.u16[1]);
          v87.i16[2] = *(v61 + 2 * v93.u16[2]);
          v99 = (v61 + 2 * v94.u16[7]);
          v93.i16[2] = *(v61 + 2 * v94.u16[2]);
          v87.i16[3] = *(v61 + 2 * v93.u16[3]);
          v100 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmulq_n_f16(v91, _H5), 0), v71));
          v93.i16[3] = *v95;
          v91.i16[0] = *(v61 + 2 * v100.u16[0]);
          v87.i16[4] = *(v61 + 2 * v93.u16[4]);
          v93.i16[4] = *v96;
          v87.i16[5] = *(v61 + 2 * v93.u16[5]);
          v93.i16[5] = *v97;
          v87.i16[6] = *(v61 + 2 * v93.u16[6]);
          v91.i16[1] = *(v61 + 2 * v100.u16[1]);
          v93.i16[6] = *v98;
          v91.i16[2] = *(v61 + 2 * v100.u16[2]);
          v91.i16[3] = *(v61 + 2 * v100.u16[3]);
          v87.i16[7] = *(v61 + 2 * v93.u16[7]);
          v91.i16[4] = *(v61 + 2 * v100.u16[4]);
          v91.i16[5] = *(v61 + 2 * v100.u16[5]);
          v93.i16[7] = *v99;
          v91.i16[6] = *(v61 + 2 * v100.u16[6]);
          v91.i16[7] = *(v61 + 2 * v100.u16[7]);
          v101 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v87, v176), v93, _H14), v91, _H15), vmaxq_f16(vmaxq_f16(v87, v93), v91), _H0), 0), v71));
          v102.i16[0] = *(v59 + 2 * v101.u16[0]);
          v102.i16[1] = *(v59 + 2 * v101.u16[1]);
          v102.i16[2] = *(v59 + 2 * v101.u16[2]);
          v102.i16[3] = *(v59 + 2 * v101.u16[3]);
          v102.i16[4] = *(v59 + 2 * v101.u16[4]);
          v102.i16[5] = *(v59 + 2 * v101.u16[5]);
          v102.i16[6] = *(v59 + 2 * v101.u16[6]);
          v102.i16[7] = *(v59 + 2 * v101.u16[7]);
          v103 = vmulq_f16(v87, v102);
          v104 = vmulq_f16(v93, v102);
          v105 = vmulq_f16(v91, v102);
          v106 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v103, _H4), v104, *&_S13), v105, *&v153);
          v107 = vmlaq_n_f16(vmulq_n_f16(v105, v174), v104, v152);
          v108 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v103, _H1), v104, _H2), v105, _H3), 0), v71));
          v104.i16[0] = *(v60 + 2 * v108.u16[0]);
          v109 = vmlaq_n_f16(v107, v103, v175);
          v110 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v106, 0), v71));
          v108.i16[0] = *(v60 + 2 * v110.u16[0]);
          v111 = (v60 + 2 * v110.u16[3]);
          v104.i16[1] = *(v60 + 2 * v108.u16[1]);
          v112 = (v60 + 2 * v110.u16[4]);
          v113 = (v60 + 2 * v110.u16[5]);
          v104.i16[2] = *(v60 + 2 * v108.u16[2]);
          v108.i16[1] = *(v60 + 2 * v110.u16[1]);
          v108.i16[2] = *(v60 + 2 * v110.u16[2]);
          v114 = (v60 + 2 * v110.u16[6]);
          v115 = v110.u16[7];
          v104.i16[3] = *(v60 + 2 * v108.u16[3]);
          v116 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v109, 0), v71));
          v108.i16[3] = *v111;
          v109.i16[0] = *(v60 + 2 * v116.u16[0]);
          v104.i16[4] = *(v60 + 2 * v108.u16[4]);
          v108.i16[4] = *v112;
          v104.i16[5] = *(v60 + 2 * v108.u16[5]);
          v109.i16[1] = *(v60 + 2 * v116.u16[1]);
          v108.i16[5] = *v113;
          v104.i16[6] = *(v60 + 2 * v108.u16[6]);
          v109.i16[2] = *(v60 + 2 * v116.u16[2]);
          v108.i16[6] = *v114;
          v104.i16[7] = *(v60 + 2 * v108.u16[7]);
          v109.i16[3] = *(v60 + 2 * v116.u16[3]);
          v109.i16[4] = *(v60 + 2 * v116.u16[4]);
          v108.i16[7] = *(v60 + 2 * v115);
          v109.i16[5] = *(v60 + 2 * v116.u16[5]);
          v109.i16[6] = *(v60 + 2 * v116.u16[6]);
          v109.i16[7] = *(v60 + 2 * v116.u16[7]);
          v117 = vdupq_n_s16(0x5BF8u);
          *v190.val[0].i8 = vqtbl2_s8(v190, v74);
          *v82.i8 = vmovn_s16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(v109, 0), v117)));
          v190.val[1] = vuzp1q_s8(vcvtq_u16_f16(vminq_f16(vmaxq_f16(v104, 0), v117)), vcvtq_u16_f16(vminq_f16(vmaxq_f16(v108, 0), v117)));
          v82.i64[1] = v190.val[0].i64[0];
          *&_Q16 = vqtbl2_s8(*(&v190 + 16), v75);
          *(&_Q16 + 1) = vqtbl2_s8(*(&v190 + 16), v76);
          *&v118 = vqtbl2_s8(*(&v190 + 16), v79);
          *(&v118 + 1) = vqtbl2_s8(*(&v190 + 16), v80);
          *v78 = _Q16;
          v78[1] = v118;
          v78 += 2;
          v72 += 8;
        }

        while (v72 < v18 - 7);
        v119 = v18 & 0xFFFFFFF8;
        _S23 = v164;
        _S20 = v165;
        _S25 = v162;
        _S24 = v163;
        _S27 = v160;
        _S26 = v161;
        _S8 = v158;
        _S28 = v159;
        _S10 = v156;
        _S9 = v157;
        _S12 = v154;
        _S11 = v155;
      }

      v120 = v18 - v119;
      if (v18 > v119)
      {
        v121 = 0;
        v122 = v77 + v170;
        v123 = v77 + v171;
        v124 = v77 + v172;
        v125 = v77 + v173;
        v126 = v78 + v166;
        v127 = v78 + v167;
        v128 = v78 + v168;
        v129 = v78 + v169;
        do
        {
          LOBYTE(_S6) = v125[v121];
          LOBYTE(_S7) = v124[v121];
          LOBYTE(_Q16) = v123[v121];
          _H6 = *(v61 + 2 * llroundf(fminf(fmaxf(_S22 * LODWORD(_S6), 0.0), 8191.0)));
          __asm { FCVT            S6, H6 }

          _H7 = *(v61 + 2 * llroundf(fminf(fmaxf(_S22 * LODWORD(_S7), 0.0), 8191.0)));
          v133 = llroundf(fminf(fmaxf(_S22 * _Q16, 0.0), 8191.0));
          __asm { FCVT            S16, H7 }

          _H7 = *(v61 + 2 * v133);
          __asm { FCVT            S18, H7 }

          v137 = (((_S11 * _S16) + (_S10 * _S6)) + (_S12 * _S18)) + (v177 * fmaxf(_S6, fmaxf(_S16, _S18)));
          v138 = 8191.0;
          if (v137 <= 8191.0)
          {
            v138 = v137;
            if (v137 < 0.0)
            {
              v138 = 0.0;
            }
          }

          _H7 = *(v59 + 2 * llroundf(v138));
          __asm { FCVT            S19, H7 }

          v141 = _S6 * _S19;
          v142 = _S16 * _S19;
          v143 = _S18 * _S19;
          if (*(v60 + 2 * llroundf(fminf(fmaxf(((_S23 * v142) + ((_S6 * _S19) * _S20)) + ((_S18 * _S19) * _S24), 0.0), 8191.0))) <= COERCE_SHORT_FLOAT(23544))
          {
            __asm { FCMP            H18, #0 }

            if (_NF)
            {
              _S18 = 0.0;
            }

            else
            {
              __asm { FCVT            S18, H18 }
            }
          }

          else
          {
            _S18 = 255.0;
          }

          v146 = v122[v121];
          v147 = ((_S26 * v142) + (v141 * _S25)) + (v143 * _S27);
          v148 = ((_S8 * v142) + (v141 * _S28)) + (v143 * _S9);
          v149 = *(v60 + 2 * llroundf(fminf(fmaxf(v147, 0.0), 8191.0)));
          _S7 = fminf(fmaxf(v148, 0.0), 8191.0);
          LOWORD(_S7) = *(v60 + 2 * llroundf(_S7));
          v129[v121] = llroundf(_S18);
          if (v149 <= COERCE_SHORT_FLOAT(23544))
          {
            __asm { FCMP            H16, #0 }

            if (_NF)
            {
              LODWORD(_Q16) = 0;
            }

            else
            {
              __asm { FCVT            S16, H16 }
            }
          }

          else
          {
            LODWORD(_Q16) = 1132396544;
          }

          v128[v121] = llroundf(*&_Q16);
          if (*&_S7 <= COERCE_SHORT_FLOAT(23544))
          {
            __asm { FCMP            H7, #0 }

            if (_NF)
            {
              _S6 = 0.0;
            }

            else
            {
              __asm { FCVT            S6, H7 }
            }
          }

          else
          {
            _S6 = 255.0;
          }

          v127[v121] = llroundf(_S6);
          v126[v121] = v146;
          v121 += 4;
          --v120;
        }

        while (v120);
      }

      v69 += v21;
      v68 += v23;
      ++v47;
    }

    while (v47 != v46);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_BGRA_TRC_Tone_Mat_TRC_BGRA(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
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
  if (((*a4 * (v29.i64[1] + v27.i64[1]) + 4 * v29.i64[0]) > *a5 || (v30 = vaddq_s64(v40, v28), (*a8 * (v30.i64[1] + v27.i64[1]) + 4 * v30.i64[0]) > *a9)) && (v38 = v27, v39.i64[0] = a9, fig_log_get_emitter(), v31 = FigSignalErrorAtGM(), v24 = v40, v23 = v39.i64[0], v27 = v38, v31))
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
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_BGRA_TRC_Tone_Mat_TRC_BGRA_GCD);
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

unsigned __int8 *vt_Copy_BGRA_TRC_Tone_Mat_TRC_BGRA_GCD(unsigned __int8 *result, uint64_t a2)
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
    v12 = **(result + 8);
    v13 = **(result + 17);
    v14 = 8191.0 / *(v11 + 128);
    v15 = *(v11 + 72);
    v16 = *(v11 + 76);
    v17 = *(v11 + 80);
    v18 = *(v11 + 84);
    v19 = *(v11 + 88);
    v20 = *(v11 + 92);
    v21 = *(v11 + 96);
    v22 = *(v11 + 100);
    v23 = v11 + 164;
    v24 = v11 + 16548;
    v25 = v11 + 32932;
    v26 = *(v11 + 104);
    v27 = *(v11 + 108);
    v28 = *(v11 + 112);
    v29 = *(v11 + 116);
    v30 = *(v11 + 120);
    v31 = v7 + *(result + 15);
    v32 = *(result + 28) * a2 / v5 + *(result + 44);
    v33 = *(v11 + 161);
    v34 = *(v11 + 160);
    v35 = *(v11 + 159);
    v36 = *(v11 + 158);
    v37 = *(v11 + 157);
    v38 = *(v11 + 156);
    v39 = *(v11 + 155);
    v40 = *(v11 + 154);
    v41 = **(result + 16) + v13 * v31 + 4 * *(result + 14);
    v42 = **(result + 7) + v32 * v12 + 4 * *(result + 36);
    do
    {
      if (v10 >= 1)
      {
        v43 = v10;
        v44 = v42;
        v45 = v41;
        do
        {
          LOBYTE(_S25) = *(v44 + v40);
          LOBYTE(_S26) = *(v44 + v39);
          LOBYTE(v4) = *(v44 + v38);
          _H25 = *(v23 + 2 * llroundf(fminf(fmaxf(v14 * LODWORD(_S25), 0.0), 8191.0)));
          __asm { FCVT            S25, H25 }

          _H26 = *(v23 + 2 * llroundf(fminf(fmaxf(v14 * LODWORD(_S26), 0.0), 8191.0)));
          __asm { FCVT            S26, H26 }

          _H27 = *(v23 + 2 * llroundf(fminf(fmaxf(v14 * LODWORD(v4), 0.0), 8191.0)));
          __asm { FCVT            S28, H27 }

          v56 = (((v28 * _S26) + (v27 * _S25)) + (v29 * _S28)) + (v30 * fmaxf(_S25, fmaxf(_S26, _S28)));
          v57 = 8191.0;
          if (v56 <= 8191.0)
          {
            v57 = v56;
            if (v56 < 0.0)
            {
              v57 = 0.0;
            }
          }

          _H27 = *(v24 + 2 * llroundf(v57));
          __asm { FCVT            S29, H27 }

          v60 = _S25 * _S29;
          v61 = _S26 * _S29;
          v62 = _S28 * _S29;
          if (*(v25 + 2 * llroundf(fminf(fmaxf(((v16 * v61) + (v60 * v15)) + ((_S28 * _S29) * v17), 0.0), 8191.0))) <= COERCE_SHORT_FLOAT(23544))
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

          v65 = *(v44 + v37);
          v66 = ((v19 * v61) + (v60 * v18)) + (v62 * v20);
          v4 = v22 * v61;
          v67 = (v4 + (v60 * v21)) + (v62 * v26);
          v68 = *(v25 + 2 * llroundf(fminf(fmaxf(v66, 0.0), 8191.0)));
          v69 = *(v25 + 2 * llroundf(fminf(fmaxf(v67, 0.0), 8191.0)));
          *(v45 + v36) = llroundf(_S28);
          if (v68 <= COERCE_SHORT_FLOAT(23544))
          {
            __asm { FCMP            H26, #0 }

            if (_NF)
            {
              _S26 = 0.0;
            }

            else
            {
              __asm { FCVT            S26, H26 }
            }
          }

          else
          {
            _S26 = 255.0;
          }

          *(v45 + v35) = llroundf(_S26);
          if (v69 <= COERCE_SHORT_FLOAT(23544))
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

          v44 += 4;
          *(v45 + v34) = llroundf(_S25);
          *(v45 + v33) = v65;
          v45 += 4;
          --v43;
        }

        while (v43);
      }

      v42 += v12;
      v41 += v13;
      ++v9;
    }

    while (v9 != v8);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_BGRA_TRC_Mat_TRC_BGRA_neon_fp16(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
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
  if (((*a4 * (v29.i64[1] + v27.i64[1]) + 4 * v29.i64[0]) > *a5 || (v30 = vaddq_s64(v40, v28), (*a8 * (v30.i64[1] + v27.i64[1]) + 4 * v30.i64[0]) > *a9)) && (v38 = v27, v39.i64[0] = a9, fig_log_get_emitter(), v31 = FigSignalErrorAtGM(), v24 = v40, v23 = v39.i64[0], v27 = v38, v31))
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
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_BGRA_TRC_Mat_TRC_BGRA_neon_fp16_GCD);
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

unsigned __int8 *vt_Copy_BGRA_TRC_Mat_TRC_BGRA_neon_fp16_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, __n128 _Q2, double _D3)
{
  v6 = 0;
  v7 = 0;
  v8 = *result;
  v9 = *(result + 28) * a2 / v8 + *(result + 44);
  v10 = *(result + 15);
  v134 = *(result + 14);
  v135 = *(result + 36);
  v11 = *(result + 12);
  v12 = *(result + 13);
  v13 = *(result + 19);
  v14 = **(result + 8);
  v15 = **(result + 7);
  v16 = **(result + 17);
  v17 = **(result + 16);
  v18 = *(v13 + 128);
  v19 = v12 * a2 / v8;
  v159[0] = *(v13 + 154);
  v20 = v14 * v9;
  v151 = *(v13 + 155);
  v152 = v159[0];
  v159[1] = *(v13 + 155);
  v150 = *(v13 + 156);
  v159[2] = *(v13 + 156);
  v149 = *(v13 + 157);
  v159[3] = *(v13 + 157);
  v148 = *(v13 + 158);
  v158[0] = *(v13 + 158);
  v147 = *(v13 + 159);
  v158[1] = *(v13 + 159);
  v146 = *(v13 + 160);
  v158[2] = *(v13 + 160);
  v21 = *(v13 + 161);
  v158[3] = *(v13 + 161);
  _S16 = *(v13 + 72);
  _S19 = *(v13 + 76);
  _S20 = *(v13 + 80);
  _S24 = *(v13 + 84);
  _S25 = *(v13 + 88);
  _S26 = *(v13 + 92);
  _S27 = *(v13 + 96);
  _S28 = *(v13 + 100);
  _S29 = *(v13 + 104);
  v156 = 0u;
  v157 = 0u;
  v154 = 0u;
  v155 = 0u;
  v31 = (v12 + v12 * a2) / v8;
  do
  {
    v32 = 0;
    v33 = v159[v7];
    v34 = v158[v7];
    v35 = *(&v156 + v7);
    do
    {
      v153 = v35;
      *(&v153 | v32 & 7) = v33 + 4 * v32;
      v35 = v153;
      *((&v154 + ((v34 + 4 * v32) & 0xF8)) | (v34 + 4 * v32) & 7) = v6 + v32;
      ++v32;
    }

    while (v32 != 8);
    *(&v156 + v7++) = v35;
    v6 += 8;
  }

  while (v7 != 4);
  v36 = v31 - v19;
  if (v31 - v19 >= 1)
  {
    v37 = 0;
    _S18 = 8191.0 / v18;
    __asm { FCVT            H8, S16 }

    v44 = v13 + 164;
    v45 = v13 + 16548;
    __asm
    {
      FCVT            H9, S19
      FCVT            H10, S20
      FCVT            H11, S24
      FCVT            H12, S25
      FCVT            H13, S26
      FCVT            H14, S27
      FCVT            H15, S28
      FCVT            H0, S29
    }

    v54 = v17 + v16 * (v12 * a2 / v8 + v10) + 4 * v134;
    v55 = v15 + v20 + 4 * v135;
    __asm { FCVT            H1, S18 }

    v57.i64[0] = 0x9000900090009000;
    v57.i64[1] = 0x9000900090009000;
    v144 = _S19;
    v145 = _S16;
    v142 = _S24;
    v143 = _S20;
    v140 = _S26;
    v141 = _S25;
    v138 = _S28;
    v139 = _S27;
    v137 = _S29;
    do
    {
      if (v11 < 8)
      {
        v107 = 0;
        v66 = v54;
        v65 = v55;
      }

      else
      {
        v58 = 0;
        v60 = *(&v156 + 8);
        v59 = v156;
        v62 = *(&v157 + 8);
        v61 = v157;
        v64 = *(&v154 + 8);
        v63 = v154;
        v65 = v55;
        v66 = v54;
        v68 = *(&v155 + 8);
        v67 = v155;
        do
        {
          v160.val[0].i64[0] = *v65;
          v69 = v65[1];
          v70.i64[0] = v65[2];
          v71 = v65[3];
          v65 += 4;
          v160.val[0].i64[1] = v69;
          v70.i64[1] = v71;
          v160.val[1] = v70;
          v72 = vqtbl2_s8(v160, v59);
          v73 = vqtbl2_s8(v160, v60);
          *v74.i8 = vzip1_s8(v72, 0);
          v74.u64[1] = vzip2_s8(v72, 0);
          v75 = vqtbl2_s8(v160, v61);
          *v76.i8 = vzip1_s8(v73, 0);
          v76.u64[1] = vzip2_s8(v73, 0);
          v77 = vcvtq_f16_u16(v74);
          *v74.i8 = vzip1_s8(v75, 0);
          v74.u64[1] = vzip2_s8(v75, 0);
          v78 = vmulq_n_f16(vcvtq_f16_u16(v74), _H1);
          v79 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmulq_n_f16(v77, _H1), 0), v57));
          v77.i16[0] = *(v44 + 2 * v79.u16[0]);
          v80 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmulq_n_f16(vcvtq_f16_u16(v76), _H1), 0), v57));
          v79.i16[0] = *(v44 + 2 * v80.u16[0]);
          v81 = (v44 + 2 * v80.u16[3]);
          v82 = (v44 + 2 * v80.u16[4]);
          v77.i16[1] = *(v44 + 2 * v79.u16[1]);
          v83 = (v44 + 2 * v80.u16[5]);
          v84 = (v44 + 2 * v80.u16[6]);
          v77.i16[2] = *(v44 + 2 * v79.u16[2]);
          v79.i16[1] = *(v44 + 2 * v80.u16[1]);
          v79.i16[2] = *(v44 + 2 * v80.u16[2]);
          v85 = (v44 + 2 * v80.u16[7]);
          v86 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v78, 0), v57));
          v77.i16[3] = *(v44 + 2 * v79.u16[3]);
          v78.i16[0] = *(v44 + 2 * v86.u16[0]);
          v79.i16[3] = *v81;
          v77.i16[4] = *(v44 + 2 * v79.u16[4]);
          v79.i16[4] = *v82;
          v77.i16[5] = *(v44 + 2 * v79.u16[5]);
          v79.i16[5] = *v83;
          v77.i16[6] = *(v44 + 2 * v79.u16[6]);
          v78.i16[1] = *(v44 + 2 * v86.u16[1]);
          v78.i16[2] = *(v44 + 2 * v86.u16[2]);
          v79.i16[6] = *v84;
          v78.i16[3] = *(v44 + 2 * v86.u16[3]);
          v78.i16[4] = *(v44 + 2 * v86.u16[4]);
          v77.i16[7] = *(v44 + 2 * v79.u16[7]);
          v78.i16[5] = *(v44 + 2 * v86.u16[5]);
          v78.i16[6] = *(v44 + 2 * v86.u16[6]);
          v79.i16[7] = *v85;
          v78.i16[7] = *(v44 + 2 * v86.u16[7]);
          v87 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v77, _H8), v79, _H9), v78, _H10);
          v88 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v77, _H11), v79, _H12), v78, _H13);
          v89 = vmlaq_n_f16(vmulq_n_f16(v78, _H0), v79, _H15);
          v90 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v87, 0), v57));
          v79.i16[0] = *(v45 + 2 * v90.u16[0]);
          v91 = vmlaq_n_f16(v89, v77, _H14);
          v92 = (v45 + 2 * v90.u16[1]);
          v93 = (v45 + 2 * v90.u16[2]);
          v94 = (v45 + 2 * v90.u16[3]);
          v95 = (v45 + 2 * v90.u16[4]);
          LOWORD(v83) = v90.i16[6];
          v96 = (v45 + 2 * v90.u16[5]);
          v97 = v90.u16[7];
          v98 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v88, 0), v57));
          v99 = (v45 + 2 * v83);
          v77.i16[0] = *(v45 + 2 * v98.u16[0]);
          v100 = (v45 + 2 * v98.u16[3]);
          v79.i16[1] = *v92;
          v101 = (v45 + 2 * v98.u16[4]);
          v102 = (v45 + 2 * v98.u16[5]);
          v79.i16[2] = *v93;
          v77.i16[1] = *(v45 + 2 * v98.u16[1]);
          v77.i16[2] = *(v45 + 2 * v98.u16[2]);
          v103 = (v45 + 2 * v98.u16[6]);
          LOWORD(v83) = v98.i16[7];
          v79.i16[3] = *v94;
          v104 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v91, 0), v57));
          v77.i16[3] = *v100;
          v91.i16[0] = *(v45 + 2 * v104.u16[0]);
          v79.i16[4] = *v95;
          v77.i16[4] = *v101;
          v79.i16[5] = *v96;
          v91.i16[1] = *(v45 + 2 * v104.u16[1]);
          v77.i16[5] = *v102;
          v79.i16[6] = *v99;
          v91.i16[2] = *(v45 + 2 * v104.u16[2]);
          v77.i16[6] = *v103;
          v79.i16[7] = *(v45 + 2 * v97);
          v91.i16[3] = *(v45 + 2 * v104.u16[3]);
          v91.i16[4] = *(v45 + 2 * v104.u16[4]);
          v77.i16[7] = *(v45 + 2 * v83);
          v91.i16[5] = *(v45 + 2 * v104.u16[5]);
          v91.i16[6] = *(v45 + 2 * v104.u16[6]);
          v91.i16[7] = *(v45 + 2 * v104.u16[7]);
          v105 = vdupq_n_s16(0x5BF8u);
          *v160.val[0].i8 = vqtbl2_s8(v160, v62);
          *v70.i8 = vmovn_s16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(v91, 0), v105)));
          v160.val[1] = vuzp1q_s8(vcvtq_u16_f16(vminq_f16(vmaxq_f16(v79, 0), v105)), vcvtq_u16_f16(vminq_f16(vmaxq_f16(v77, 0), v105)));
          v70.i64[1] = v160.val[0].i64[0];
          _Q2.n128_u64[0] = vqtbl2_s8(*(&v160 + 16), v63);
          *&_Q2.n128_i8[8] = vqtbl2_s8(*(&v160 + 16), v64);
          *&v106 = vqtbl2_s8(*(&v160 + 16), v67);
          _D3 = COERCE_DOUBLE(vqtbl2_s8(*(&v160 + 16), v68));
          *(&v106 + 1) = _D3;
          *v66 = _Q2;
          *(v66 + 16) = v106;
          v66 += 32;
          v58 += 8;
        }

        while (v58 < v11 - 7);
        v107 = v11 & 0x7FFFFFF8;
        _S19 = v144;
        _S16 = v145;
        _S24 = v142;
        _S20 = v143;
        _S26 = v140;
        _S25 = v141;
        _S28 = v138;
        _S27 = v139;
        _S29 = v137;
      }

      v108 = v11 - v107;
      if (v11 > v107)
      {
        v109 = 0;
        v110 = v65 + v149;
        v111 = v65 + v150;
        v112 = v65 + v151;
        v113 = v65 + v152;
        v114 = v66 + v21;
        v115 = v66 + v146;
        v116 = v66 + v147;
        v117 = v66 + v148;
        do
        {
          _Q2.n128_u8[0] = v113[v109];
          LOBYTE(_D3) = v112[v109];
          *&v118 = LODWORD(_D3);
          v119 = _S18 * *&v118;
          LOBYTE(v118) = v111[v109];
          v120 = _S18 * v118;
          _H2 = *(v44 + 2 * llroundf(fminf(fmaxf(_S18 * _Q2.n128_u32[0], 0.0), 8191.0)));
          __asm { FCVT            S3, H2 }

          _H2 = *(v44 + 2 * llroundf(fminf(fmaxf(v119, 0.0), 8191.0)));
          __asm { FCVT            S4, H2 }

          _H2 = *(v44 + 2 * llroundf(fminf(fmaxf(v120, 0.0), 8191.0)));
          __asm { FCVT            S5, H2 }

          if (*(v45 + 2 * llroundf(fminf(fmaxf(((_S19 * _S4) + (*&_D3 * _S16)) + (_S5 * _S20), 0.0), 8191.0))) <= COERCE_SHORT_FLOAT(23544))
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

          v128 = v110[v109];
          v129 = ((_S25 * _S4) + (*&_D3 * _S24)) + (_S5 * _S26);
          v130 = ((_S28 * _S4) + (*&_D3 * _S27)) + (_S5 * _S29);
          v131 = *(v45 + 2 * llroundf(fminf(fmaxf(v129, 0.0), 8191.0)));
          *&_D3 = fminf(fmaxf(v130, 0.0), 8191.0);
          LOWORD(_D3) = *(v45 + 2 * llroundf(*&_D3));
          *(v117 + v109) = llroundf(_S6);
          if (v131 <= COERCE_SHORT_FLOAT(23544))
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

          *(v116 + v109) = llroundf(_S4);
          if (*&_D3 <= COERCE_SHORT_FLOAT(23544))
          {
            __asm { FCMP            H3, #0 }

            if (_NF)
            {
              _Q2.n128_u32[0] = 0;
            }

            else
            {
              __asm { FCVT            S2, H3 }
            }
          }

          else
          {
            _Q2.n128_u32[0] = 1132396544;
          }

          *(v115 + v109) = llroundf(_Q2.n128_f32[0]);
          *(v114 + v109) = v128;
          v109 += 4;
          --v108;
        }

        while (v108);
      }

      v55 += v14;
      v54 += v16;
      ++v37;
    }

    while (v37 != v36);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_BGRA_TRC_Mat_TRC_BGRA(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
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
  if (((*a4 * (v29.i64[1] + v27.i64[1]) + 4 * v29.i64[0]) > *a5 || (v30 = vaddq_s64(v40, v28), (*a8 * (v30.i64[1] + v27.i64[1]) + 4 * v30.i64[0]) > *a9)) && (v38 = v27, v39.i64[0] = a9, fig_log_get_emitter(), v31 = FigSignalErrorAtGM(), v24 = v40, v23 = v39.i64[0], v27 = v38, v31))
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
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_BGRA_TRC_Mat_TRC_BGRA_GCD);
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

unsigned __int8 *vt_Copy_BGRA_TRC_Mat_TRC_BGRA_GCD(unsigned __int8 *result, uint64_t a2)
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
    v12 = **(result + 8);
    v13 = **(result + 17);
    v14 = 8191.0 / *(v11 + 128);
    v15 = *(v11 + 72);
    v16 = *(v11 + 76);
    v17 = *(v11 + 80);
    v18 = *(v11 + 84);
    v19 = *(v11 + 88);
    v20 = *(v11 + 92);
    v21 = *(v11 + 96);
    v22 = *(v11 + 100);
    v23 = *(v11 + 104);
    v24 = v11 + 164;
    v25 = v11 + 16548;
    v26 = v7 + *(result + 15);
    v27 = *(result + 28) * a2 / v5 + *(result + 44);
    v28 = *(v11 + 161);
    v29 = *(v11 + 160);
    v30 = *(v11 + 159);
    v31 = *(v11 + 158);
    v32 = *(v11 + 157);
    v33 = *(v11 + 156);
    v34 = *(v11 + 155);
    v35 = *(v11 + 154);
    v36 = **(result + 16) + v13 * v26 + 4 * *(result + 14);
    v37 = **(result + 7) + v27 * v12 + 4 * *(result + 36);
    do
    {
      if (v10 >= 1)
      {
        v38 = v10;
        v39 = v37;
        v40 = v36;
        do
        {
          LOBYTE(_S21) = *(v39 + v35);
          LOBYTE(_S22) = *(v39 + v34);
          LOBYTE(v4) = *(v39 + v33);
          _H21 = *(v24 + 2 * llroundf(fminf(fmaxf(v14 * LODWORD(_S21), 0.0), 8191.0)));
          __asm { FCVT            S21, H21 }

          _H22 = *(v24 + 2 * llroundf(fminf(fmaxf(v14 * LODWORD(_S22), 0.0), 8191.0)));
          _H24 = *(v24 + 2 * llroundf(fminf(fmaxf(v14 * LODWORD(v4), 0.0), 8191.0)));
          __asm
          {
            FCVT            S23, H22
            FCVT            S22, H24
          }

          if (*(v25 + 2 * llroundf(fminf(fmaxf(((v16 * _S23) + (_S21 * v15)) + (_S22 * v17), 0.0), 8191.0))) <= COERCE_SHORT_FLOAT(23544))
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

          v53 = *(v39 + v32);
          v54 = ((v19 * _S23) + (_S21 * v18)) + (_S22 * v20);
          v4 = v22 * _S23;
          v55 = (v4 + (_S21 * v21)) + (_S22 * v23);
          v56 = *(v25 + 2 * llroundf(fminf(fmaxf(v54, 0.0), 8191.0)));
          v57 = *(v25 + 2 * llroundf(fminf(fmaxf(v55, 0.0), 8191.0)));
          *(v40 + v31) = llroundf(_S24);
          if (v56 <= COERCE_SHORT_FLOAT(23544))
          {
            __asm { FCMP            H22, #0 }

            if (_NF)
            {
              _S22 = 0.0;
            }

            else
            {
              __asm { FCVT            S22, H22 }
            }
          }

          else
          {
            _S22 = 255.0;
          }

          *(v40 + v30) = llroundf(_S22);
          if (v57 <= COERCE_SHORT_FLOAT(23544))
          {
            __asm { FCMP            H21, #0 }

            if (_NF)
            {
              _S21 = 0.0;
            }

            else
            {
              __asm { FCVT            S21, H21 }
            }
          }

          else
          {
            _S21 = 255.0;
          }

          v39 += 4;
          *(v40 + v29) = llroundf(_S21);
          *(v40 + v28) = v53;
          v40 += 4;
          --v38;
        }

        while (v38);
      }

      v37 += v12;
      v36 += v13;
      ++v9;
    }

    while (v9 != v8);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_BGRA_rgb_BGRA_neon_fp16(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
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
  if (((*a4 * (v29.i64[1] + v27.i64[1]) + 4 * v29.i64[0]) > *a5 || (v30 = vaddq_s64(v40, v28), (*a8 * (v30.i64[1] + v27.i64[1]) + 4 * v30.i64[0]) > *a9)) && (v38 = v27, v39.i64[0] = a9, fig_log_get_emitter(), v31 = FigSignalErrorAtGM(), v24 = v40, v23 = v39.i64[0], v27 = v38, v31))
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
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_BGRA_rgb_BGRA_neon_fp16_GCD);
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

unsigned __int8 *vt_Copy_BGRA_rgb_BGRA_neon_fp16_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, double a5, double a6, double a7)
{
  v7 = 0;
  v8 = 0;
  v9 = *result;
  v10 = *(result + 28) * a2 / v9 + *(result + 44);
  v85 = *(result + 14);
  v86 = *(result + 36);
  v11 = *(result + 12);
  v12 = *(result + 13);
  v13 = *(result + 19);
  v14 = v12 * a2 / v9;
  v15 = v12 + v12 * a2;
  v16 = **(result + 8);
  v17 = **(result + 7);
  v84 = v16 * v10;
  v18 = **(result + 17);
  v83 = **(result + 16);
  v19 = v18 * (v14 + *(result + 15));
  v20 = *(v13 + 128);
  v21 = *(v13 + 136);
  v88 = *(v13 + 154);
  v95[0] = *(v13 + 154);
  v22 = *(v13 + 155);
  v95[1] = *(v13 + 155);
  v23 = *(v13 + 156);
  v95[2] = *(v13 + 156);
  v24 = *(v13 + 157);
  v95[3] = *(v13 + 157);
  v25 = *(v13 + 158);
  v94[0] = *(v13 + 158);
  v26 = *(v13 + 159);
  v94[1] = *(v13 + 159);
  v27 = *(v13 + 160);
  v94[2] = *(v13 + 160);
  v28 = *(v13 + 161);
  v94[3] = v28;
  v92 = 0u;
  v93 = 0u;
  v90 = 0u;
  v91 = 0u;
  v29 = v15 / v9;
  do
  {
    v30 = 0;
    v31 = v95[v8];
    v32 = v94[v8];
    v33 = *(&v92 + v8);
    do
    {
      v89 = v33;
      *(&v89 | v30 & 7) = v31 + 4 * v30;
      v33 = v89;
      *((&v90 + ((v32 + 4 * v30) & 0xF8)) | (v32 + 4 * v30) & 7) = v7 + v30;
      ++v30;
    }

    while (v30 != 8);
    *(&v92 + v8++) = v33;
    v7 += 8;
  }

  while (v8 != 4);
  v34 = v29 - v14;
  if (v29 - v14 >= 1)
  {
    v35 = 0;
    _S0 = v21 / v20;
    v37 = v83 + v19 + 4 * v85;
    v38 = v17 + v84 + 4 * v86;
    __asm { FCVT            H1, S0 }

    v44 = vdupq_n_s16(0x5BF8u);
    do
    {
      if (v11 < 8)
      {
        v65 = 0;
        v52 = v37;
        v51 = v38;
      }

      else
      {
        v45 = 0;
        v46 = *(&v92 + 8);
        a7 = *&v92;
        v48 = *(&v93 + 8);
        v47 = v93;
        v50 = *(&v90 + 8);
        v49 = v90;
        v51 = v38;
        v52 = v37;
        v54 = *(&v91 + 8);
        v53 = v91;
        do
        {
          v96.val[0].i64[0] = *v51;
          v55 = v51[1];
          v56.i64[0] = v51[2];
          v57 = v51[3];
          v51 += 4;
          v96.val[0].i64[1] = v55;
          v56.i64[1] = v57;
          v96.val[1] = v56;
          v58 = vqtbl2_s8(v96, *&a7);
          v59 = vqtbl2_s8(v96, v46);
          v60 = vqtbl2_s8(v96, v47);
          *v61.i8 = vzip1_s8(v58, 0);
          v61.u64[1] = vzip2_s8(v58, 0);
          *v62.i8 = vzip1_s8(v59, 0);
          *v63.i8 = vzip1_s8(v60, 0);
          v62.u64[1] = vzip2_s8(v59, 0);
          v63.u64[1] = vzip2_s8(v60, 0);
          *v96.val[0].i8 = vqtbl2_s8(v96, v48);
          *v56.i8 = vmovn_s16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmulq_n_f16(vcvtq_f16_u16(v63), _H1), 0), v44)));
          v96.val[1] = vuzp1q_s8(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmulq_n_f16(vcvtq_f16_u16(v61), _H1), 0), v44)), vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmulq_n_f16(vcvtq_f16_u16(v62), _H1), 0), v44)));
          v56.i64[1] = v96.val[0].i64[0];
          *v96.val[0].i8 = vqtbl2_s8(*(&v96 + 16), v49);
          v96.val[0].u64[1] = vqtbl2_s8(*(&v96 + 16), v50);
          *&v64 = vqtbl2_s8(*(&v96 + 16), v53);
          *(&v64 + 1) = vqtbl2_s8(*(&v96 + 16), v54);
          *v52 = v96.val[0];
          *(v52 + 16) = v64;
          v52 += 32;
          v45 += 8;
        }

        while (v45 < v11 - 7);
        v65 = v11 & 0x7FFFFFF8;
      }

      v66 = v11 - v65;
      if (v11 > v65)
      {
        v67 = 0;
        v68 = v51 + v24;
        v69 = v51 + v23;
        v70 = v51 + v22;
        v71 = v51 + v88;
        v72 = v52 + v28;
        v73 = v52 + v27;
        v74 = v52 + v26;
        v75 = v52 + v25;
        do
        {
          LOBYTE(a7) = v71[v67];
          *&a7 = _S0 * LODWORD(a7);
          v76 = 255.0;
          if (*&a7 <= 255.0)
          {
            v76 = *&a7;
            if (*&a7 < 0.0)
            {
              v76 = 0.0;
            }
          }

          LOBYTE(a7) = v70[v67];
          v77 = LODWORD(a7);
          LOBYTE(a7) = v69[v67];
          v78 = v68[v67];
          v79 = _S0 * v77;
          *(v75 + v67) = llroundf(v76);
          v80 = 255.0;
          if (v79 <= 255.0)
          {
            v80 = v79;
            if (v79 < 0.0)
            {
              v80 = 0.0;
            }
          }

          v81 = llroundf(v80);
          v82 = _S0 * LODWORD(a7);
          *(v74 + v67) = v81;
          LODWORD(a7) = 1132396544;
          if (v82 <= 255.0)
          {
            *&a7 = v82;
            if (v82 < 0.0)
            {
              LODWORD(a7) = 0;
            }
          }

          *(v73 + v67) = llroundf(*&a7);
          *(v72 + v67) = v78;
          v67 += 4;
          --v66;
        }

        while (v66);
      }

      v38 += v16;
      v37 += v18;
      ++v35;
    }

    while (v35 != v34);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_BGRA_rgb_BGRA(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
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
  if (((*a4 * (v29.i64[1] + v27.i64[1]) + 4 * v29.i64[0]) > *a5 || (v30 = vaddq_s64(v40, v28), (*a8 * (v30.i64[1] + v27.i64[1]) + 4 * v30.i64[0]) > *a9)) && (v38 = v27, v39.i64[0] = a9, fig_log_get_emitter(), v31 = FigSignalErrorAtGM(), v24 = v40, v23 = v39.i64[0], v27 = v38, v31))
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
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_BGRA_rgb_BGRA_GCD);
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

unsigned __int8 *vt_Copy_BGRA_rgb_BGRA_GCD(unsigned __int8 *result, uint64_t a2)
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
    v12 = v11 / *(v8 + 128);
    v13 = v4 + *(result + 15);
    v14 = *(result + 28) * a2 / v2 + *(result + 44);
    v15 = *(v8 + 161);
    v16 = *(v8 + 160);
    v17 = *(v8 + 159);
    v18 = *(v8 + 158);
    v19 = *(v8 + 157);
    v20 = *(v8 + 156);
    v21 = *(v8 + 155);
    v22 = *(v8 + 154);
    v23 = **(result + 16) + v10 * v13 + 4 * *(result + 14);
    v24 = **(result + 7) + v14 * v9 + 4 * *(result + 36);
    do
    {
      if (v7 >= 1)
      {
        v25 = v7;
        v26 = v24;
        v27 = v23;
        do
        {
          LOBYTE(v11) = *(v26 + v22);
          v28 = v12 * LODWORD(v11);
          v29 = 255.0;
          if (v28 <= 255.0)
          {
            v29 = v28;
            if (v28 < 0.0)
            {
              v29 = 0.0;
            }
          }

          LOBYTE(v28) = *(v26 + v21);
          v30 = LODWORD(v28);
          LOBYTE(v28) = *(v26 + v20);
          v31 = *(v26 + v19);
          v32 = v12 * v30;
          *(v27 + v18) = llroundf(v29);
          v33 = 255.0;
          if (v32 <= 255.0)
          {
            v33 = v32;
            if (v32 < 0.0)
            {
              v33 = 0.0;
            }
          }

          v34 = llroundf(v33);
          v35 = v12 * LODWORD(v28);
          *(v27 + v17) = v34;
          v11 = 255.0;
          if (v35 <= 255.0)
          {
            v11 = v35;
            if (v35 < 0.0)
            {
              v11 = 0.0;
            }
          }

          v26 += 4;
          *(v27 + v16) = llroundf(v11);
          *(v27 + v15) = v31;
          v27 += 4;
          --v25;
        }

        while (v25);
      }

      v24 += v9;
      v23 += v10;
      ++v6;
    }

    while (v6 != v5);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_BGRA_TRC_Tone_Mat_TRC_l10r(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
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
  if ((*a4 * (v29.i64[1] + v27.i64[1]) + 4 * v29.i64[0]) <= *a5)
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
  dispatch_apply_f(v15, global_queue, v19, vt_Copy_BGRA_TRC_Tone_Mat_TRC_l10r_GCD);
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

unsigned __int8 *vt_Copy_BGRA_TRC_Tone_Mat_TRC_l10r_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, float a5)
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
    v16 = **(result + 17);
    v17 = 8191.0 / *(v14 + 128);
    LOWORD(a5) = *(v14 + 144);
    v18 = LODWORD(a5);
    v19 = *(v14 + 72);
    v20 = *(v14 + 76);
    v21 = *(v14 + 80);
    v22 = *(v14 + 84);
    v23 = *(v14 + 88);
    v24 = *(v14 + 92);
    v25 = *(v14 + 96);
    v26 = *(v14 + 100);
    v27 = v14 + 164;
    v28 = v14 + 16548;
    v29 = v14 + 32932;
    v30 = *(v14 + 104);
    v31 = *(v14 + 108);
    v32 = *(v14 + 112);
    v33 = *(v14 + 116);
    v34 = *(v14 + 120);
    v35 = v10 + *(result + 15);
    v36 = *(result + 28) * a2 / v8 + *(result + 44);
    v37 = *(v14 + 157);
    v38 = *(v14 + 156);
    v39 = *(v14 + 155);
    v40 = *(v14 + 154);
    v41 = **(result + 16) + v16 * v35 + 16 * *(result + 14);
    v42 = **(result + 7) + v36 * v15 + 4 * *(result + 36);
    do
    {
      if (v13 >= 1)
      {
        v43 = v13;
        v44 = v41;
        v45 = v42;
        do
        {
          LOBYTE(v5) = *(v45 + v40);
          LOBYTE(v6) = *(v45 + v39);
          LOBYTE(v7) = *(v45 + v38);
          _H29 = *(v27 + 2 * llroundf(fminf(fmaxf(v17 * LODWORD(v5), 0.0), 8191.0)));
          __asm { FCVT            S29, H29 }

          _H30 = *(v27 + 2 * llroundf(fminf(fmaxf(v17 * LODWORD(v6), 0.0), 8191.0)));
          v53 = llroundf(fminf(fmaxf(v17 * LODWORD(v7), 0.0), 8191.0));
          __asm { FCVT            S31, H30 }

          _H30 = *(v27 + 2 * v53);
          __asm { FCVT            S9, H30 }

          v57 = (((v32 * _S31) + (v31 * _S29)) + (v33 * _S9)) + (v34 * fmaxf(_S29, fmaxf(_S31, _S9)));
          v58 = 8191.0;
          if (v57 <= 8191.0)
          {
            v58 = v57;
            if (v57 < 0.0)
            {
              v58 = 0.0;
            }
          }

          _H30 = *(v28 + 2 * llroundf(v58));
          __asm { FCVT            S10, H30 }

          v61 = _S29 * _S10;
          v62 = _S31 * _S10;
          v63 = _S9 * _S10;
          _H29 = *(v29 + 2 * llroundf(fminf(fmaxf(((v26 * v62) + ((_S29 * _S10) * v25)) + ((_S9 * _S10) * v30), 0.0), 8191.0)));
          __asm { FCVT            S29, H29 }

          v66 = v18 + _S29;
          v67 = (v18 + _S29) <= 1023.0;
          v68 = 1023.0;
          if (v67)
          {
            v68 = v66;
            if (v66 < 0.0)
            {
              v68 = 0.0;
            }
          }

          _H9 = *(v29 + 2 * llroundf(fminf(fmaxf(((v23 * v62) + (v61 * v22)) + (v63 * v24), 0.0), 8191.0)));
          __asm { FCVT            S9, H9 }

          v71 = v18 + _S9;
          v67 = (v18 + _S9) <= 1023.0;
          v72 = 1023.0;
          if (v67)
          {
            v72 = v71;
            if (v71 < 0.0)
            {
              v72 = 0.0;
            }
          }

          _H30 = *(v29 + 2 * llroundf(fminf(fmaxf(((v20 * v62) + (v61 * v19)) + (v63 * v21), 0.0), 8191.0)));
          __asm { FCVT            S30, H30 }

          v75 = v18 + _S30;
          v67 = (v18 + _S30) <= 1023.0;
          v6 = 1023.0;
          if (v67)
          {
            v6 = v75;
            if (v75 < 0.0)
            {
              v6 = 0.0;
            }
          }

          v7 = *(v45 + v37) * 3.0 / 255.0;
          v76 = llroundf(v68);
          v45 += 4;
          v77 = llroundf(v72) << 10;
          v78 = llroundf(v6);
          v5 = llroundf(v7);
          if (v5 > 3.0)
          {
            v5 = 3.0;
          }

          *v44++ = v77 | v76 | (llroundf(v5) << 30) | (v78 << 20);
          --v43;
        }

        while (v43);
      }

      v42 += v15;
      v41 += v16;
      ++v12;
    }

    while (v12 != v11);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_BGRA_TRC_Mat_TRC_l10r(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
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
  if ((*a4 * (v29.i64[1] + v27.i64[1]) + 4 * v29.i64[0]) <= *a5)
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
  dispatch_apply_f(v15, global_queue, v19, vt_Copy_BGRA_TRC_Mat_TRC_l10r_GCD);
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

unsigned __int8 *vt_Copy_BGRA_TRC_Mat_TRC_l10r_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, float a5)
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
    v16 = **(result + 17);
    v17 = 8191.0 / *(v14 + 128);
    LOWORD(a5) = *(v14 + 144);
    v18 = LODWORD(a5);
    v19 = *(v14 + 72);
    v20 = *(v14 + 76);
    v21 = *(v14 + 80);
    v22 = *(v14 + 84);
    v23 = *(v14 + 88);
    v24 = *(v14 + 92);
    v25 = *(v14 + 96);
    v26 = *(v14 + 100);
    v27 = *(v14 + 104);
    v28 = v14 + 164;
    v29 = v14 + 16548;
    v30 = v10 + *(result + 15);
    v31 = *(result + 28) * a2 / v8 + *(result + 44);
    v32 = *(v14 + 157);
    v33 = *(v14 + 156);
    v34 = *(v14 + 155);
    v35 = *(v14 + 154);
    v36 = **(result + 16) + v16 * v30 + 16 * *(result + 14);
    v37 = **(result + 7) + v31 * v15 + 4 * *(result + 36);
    do
    {
      if (v13 >= 1)
      {
        v38 = v13;
        v39 = v37;
        v40 = v36;
        do
        {
          LOBYTE(v5) = *(v39 + v35);
          LOBYTE(v6) = *(v39 + v34);
          LOBYTE(v7) = *(v39 + v33);
          v41 = v17 * LODWORD(v7);
          _H25 = *(v28 + 2 * llroundf(fminf(fmaxf(v17 * LODWORD(v5), 0.0), 8191.0)));
          v43 = llroundf(fminf(fmaxf(v17 * LODWORD(v6), 0.0), 8191.0));
          __asm { FCVT            S26, H25 }

          _H25 = *(v28 + 2 * v43);
          __asm { FCVT            S27, H25 }

          _H25 = *(v28 + 2 * llroundf(fminf(fmaxf(v41, 0.0), 8191.0)));
          __asm { FCVT            S28, H25 }

          _H25 = *(v29 + 2 * llroundf(fminf(fmaxf(((v26 * _S27) + (_S26 * v25)) + (_S28 * v27), 0.0), 8191.0)));
          __asm { FCVT            S25, H25 }

          v55 = v18 + _S25;
          v56 = (v18 + _S25) <= 1023.0;
          v57 = 1023.0;
          if (v56)
          {
            v57 = v55;
            if (v55 < 0.0)
            {
              v57 = 0.0;
            }
          }

          _H29 = *(v29 + 2 * llroundf(fminf(fmaxf(((v23 * _S27) + (_S26 * v22)) + (_S28 * v24), 0.0), 8191.0)));
          __asm { FCVT            S29, H29 }

          v60 = v18 + _S29;
          v56 = (v18 + _S29) <= 1023.0;
          v61 = 1023.0;
          if (v56)
          {
            v61 = v60;
            if (v60 < 0.0)
            {
              v61 = 0.0;
            }
          }

          _H26 = *(v29 + 2 * llroundf(fminf(fmaxf(((v20 * _S27) + (_S26 * v19)) + (_S28 * v21), 0.0), 8191.0)));
          __asm { FCVT            S26, H26 }

          *&v7 = v18 + _S26;
          v56 = (v18 + _S26) <= 1023.0;
          v6 = 1023.0;
          if (v56)
          {
            v6 = *&v7;
            if (*&v7 < 0.0)
            {
              v6 = 0.0;
            }
          }

          LOBYTE(v7) = *(v39 + v32);
          v39 += 4;
          v7 = *&v7 * 3.0 / 255.0;
          *&v7 = v7;
          v64 = llroundf(v57);
          v65 = llroundf(v6);
          v5 = llroundf(*&v7);
          v66 = llroundf(v61) << 10;
          if (v5 > 3.0)
          {
            v5 = 3.0;
          }

          *v40++ = v66 | v64 | (llroundf(v5) << 30) | (v65 << 20);
          --v38;
        }

        while (v38);
      }

      v37 += v15;
      v36 += v16;
      ++v12;
    }

    while (v12 != v11);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_BGRA_rgb_l10r(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
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
  if ((*a4 * (v29.i64[1] + v27.i64[1]) + 4 * v29.i64[0]) <= *a5)
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
  dispatch_apply_f(v15, global_queue, v19, vt_Copy_BGRA_rgb_l10r_GCD);
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

unsigned __int8 *vt_Copy_BGRA_rgb_l10r_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, float a10)
{
  v13 = *result;
  v14 = *(result + 13);
  v15 = v14 * a2 / v13;
  v16 = (v14 + v14 * a2) / v13 - v15;
  if (v16 >= 1)
  {
    v17 = 0;
    v18 = *(result + 24);
    v19 = *(result + 19);
    v20 = **(result + 8);
    v21 = **(result + 17);
    *&v22 = *(v19 + 136);
    v23 = *&v22 / *(v19 + 128);
    LOWORD(v22) = *(v19 + 144);
    v24 = v22;
    v25 = v15 + *(result + 15);
    v26 = *(result + 28) * a2 / v13 + *(result + 44);
    v27 = *(v19 + 157);
    v28 = *(v19 + 156);
    v29 = *(v19 + 155);
    v30 = *(v19 + 154);
    v31 = **(result + 16) + v21 * v25 + 16 * *(result + 14);
    v32 = **(result + 7) + v26 * v20 + 4 * *(result + 36);
    do
    {
      if (v18 >= 1)
      {
        v33 = v18;
        v34 = v32;
        v35 = v31;
        do
        {
          LOBYTE(a10) = *(v34 + v30);
          LOBYTE(v10) = *(v34 + v29);
          LOBYTE(v11) = *(v34 + v28);
          v36 = v23 * LODWORD(a10);
          v37 = LODWORD(v10);
          LOBYTE(v12) = *(v34 + v27);
          v12 = *&v12 * 3.0 / 255.0;
          v38 = (v23 * LODWORD(v11)) + v24;
          if (v38 < 0.0)
          {
            v39 = 0.0;
          }

          else
          {
            v39 = v38;
          }

          v40 = v38 <= 1023.0;
          v41 = v12;
          if (v40)
          {
            *&v12 = v39;
          }

          else
          {
            *&v12 = 1023.0;
          }

          v42 = llroundf(*&v12);
          v43 = llroundf(v41);
          v44 = (v23 * v37) + v24;
          if (v44 < 0.0)
          {
            v11 = 0.0;
          }

          else
          {
            v11 = v44;
          }

          if (v44 <= 1023.0)
          {
            v45 = v11;
          }

          else
          {
            v45 = 1023.0;
          }

          v46 = llroundf(v45);
          v47 = v36 + v24;
          if (v47 < 0.0)
          {
            v48 = 0.0;
          }

          else
          {
            v48 = v47;
          }

          v49 = v46 << 10;
          if (v47 <= 1023.0)
          {
            v50 = v48;
          }

          else
          {
            v50 = 1023.0;
          }

          v10 = v43;
          v51 = llroundf(v50);
          if (v10 <= 3.0)
          {
            a10 = v10;
          }

          else
          {
            a10 = 3.0;
          }

          v34 += 4;
          *v35++ = v49 | v42 | (llroundf(a10) << 30) | (v51 << 20);
          --v33;
        }

        while (v33);
      }

      v32 += v20;
      v31 += v21;
      ++v17;
    }

    while (v17 != v16);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_BGRA_TRC_Tone_Mat_TRC_l64r(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
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
  if (((*a4 * (v29.i64[1] + v27.i64[1]) + 4 * v29.i64[0]) > *a5 || (v30 = vaddq_s64(v40, v28), (*a8 * (v30.i64[1] + v27.i64[1]) + 8 * v30.i64[0]) > *a9)) && (v38 = v27, v39.i64[0] = a9, fig_log_get_emitter(), v31 = FigSignalErrorAtGM(), v24 = v40, v23 = v39.i64[0], v27 = v38, v31))
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
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_BGRA_TRC_Tone_Mat_TRC_l64r_GCD);
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

unsigned __int8 *vt_Copy_BGRA_TRC_Tone_Mat_TRC_l64r_GCD(unsigned __int8 *result, uint64_t a2)
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
    v12 = **(result + 8);
    v13 = **(result + 17);
    v14 = 8191.0 / *(v11 + 128);
    v15 = *(v11 + 72);
    v16 = *(v11 + 76);
    v17 = *(v11 + 80);
    v18 = *(v11 + 84);
    v19 = *(v11 + 88);
    v20 = *(v11 + 92);
    v21 = *(v11 + 96);
    v22 = *(v11 + 100);
    v23 = v11 + 164;
    v24 = v11 + 16548;
    v25 = v11 + 32932;
    v26 = *(v11 + 104);
    v27 = *(v11 + 108);
    v28 = *(v11 + 112);
    v29 = *(v11 + 116);
    v30 = *(v11 + 120);
    v31 = v7 + *(result + 15);
    v32 = *(result + 28) * a2 / v5 + *(result + 44);
    v33 = *(v11 + 157);
    v34 = *(v11 + 156);
    v35 = *(v11 + 155);
    v36 = *(v11 + 154);
    v37 = **(result + 16) + v13 * v31 + 8 * *(result + 14);
    v38 = **(result + 7) + v32 * v12 + 4 * *(result + 36);
    do
    {
      if (v10 >= 1)
      {
        v39 = v10;
        v40 = v38;
        v41 = v37;
        do
        {
          LOBYTE(_S25) = *(v40 + v36);
          LOBYTE(v3) = *(v40 + v35);
          LOBYTE(v4) = *(v40 + v34);
          _H25 = *(v23 + 2 * llroundf(fminf(fmaxf(v14 * LODWORD(_S25), 0.0), 8191.0)));
          __asm { FCVT            S25, H25 }

          _H26 = *(v23 + 2 * llroundf(fminf(fmaxf(v14 * LODWORD(v3), 0.0), 8191.0)));
          __asm { FCVT            S26, H26 }

          _H27 = *(v23 + 2 * llroundf(fminf(fmaxf(v14 * LODWORD(v4), 0.0), 8191.0)));
          __asm { FCVT            S28, H27 }

          v52 = (((v28 * _S26) + (v27 * _S25)) + (v29 * _S28)) + (v30 * fmaxf(_S25, fmaxf(_S26, _S28)));
          v53 = 8191.0;
          if (v52 <= 8191.0)
          {
            v53 = v52;
            if (v52 < 0.0)
            {
              v53 = 0.0;
            }
          }

          _H27 = *(v24 + 2 * llroundf(v53));
          __asm { FCVT            S29, H27 }

          v56 = _S25 * _S29;
          v57 = _S26 * _S29;
          v58 = _S28 * _S29;
          LOWORD(_S29) = *(v25 + 2 * llroundf(fminf(fmaxf(((v16 * v57) + (v56 * v15)) + ((_S28 * _S29) * v17), 0.0), 8191.0)));
          __asm { FCVT            S30, H29 }

          v60 = 65535.0;
          if (_S30 <= 65535.0)
          {
            __asm { FCMP            H29, #0 }

            v60 = _S30;
            if (_NF)
            {
              v60 = 0.0;
            }
          }

          v62 = *(v40 + v33);
          v63 = ((v19 * v57) + (v56 * v18)) + (v58 * v20);
          v64 = ((v22 * v57) + (v56 * v21)) + (v58 * v26);
          _H26 = *(v25 + 2 * llroundf(fminf(fmaxf(v63, 0.0), 8191.0)));
          _S25 = fminf(fmaxf(v64, 0.0), 8191.0);
          LOWORD(_S25) = *(v25 + 2 * llroundf(_S25));
          __asm { FCVT            S29, H26 }

          *v41 = llroundf(v60);
          v4 = 65535.0;
          if (_S29 <= 65535.0)
          {
            __asm { FCMP            H26, #0 }

            v4 = _S29;
            if (_NF)
            {
              v4 = 0.0;
            }
          }

          __asm { FCVT            S28, H25 }

          v41[1] = llroundf(v4);
          v3 = 65535.0;
          if (_S28 <= 65535.0)
          {
            __asm { FCMP            H25, #0 }

            v3 = _S28;
            if (_NF)
            {
              v3 = 0.0;
            }
          }

          v40 += 4;
          v41[2] = llroundf(v3);
          v41[3] = v62 | (v62 << 8);
          v41 += 4;
          --v39;
        }

        while (v39);
      }

      v38 += v12;
      v37 += v13;
      ++v9;
    }

    while (v9 != v8);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_BGRA_TRC_Mat_TRC_l64r(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
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
  if (((*a4 * (v29.i64[1] + v27.i64[1]) + 4 * v29.i64[0]) > *a5 || (v30 = vaddq_s64(v40, v28), (*a8 * (v30.i64[1] + v27.i64[1]) + 8 * v30.i64[0]) > *a9)) && (v38 = v27, v39.i64[0] = a9, fig_log_get_emitter(), v31 = FigSignalErrorAtGM(), v24 = v40, v23 = v39.i64[0], v27 = v38, v31))
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
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_BGRA_TRC_Mat_TRC_l64r_GCD);
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

unsigned __int8 *vt_Copy_BGRA_TRC_Mat_TRC_l64r_GCD(unsigned __int8 *result, uint64_t a2)
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
    v12 = **(result + 8);
    v13 = **(result + 17);
    v14 = 8191.0 / *(v11 + 128);
    v15 = *(v11 + 72);
    v16 = *(v11 + 76);
    v17 = *(v11 + 80);
    v18 = *(v11 + 84);
    v19 = *(v11 + 88);
    v20 = *(v11 + 92);
    v21 = *(v11 + 96);
    v22 = *(v11 + 100);
    v23 = *(v11 + 104);
    v24 = v11 + 164;
    v25 = v11 + 16548;
    v26 = v7 + *(result + 15);
    v27 = *(result + 28) * a2 / v5 + *(result + 44);
    v28 = *(v11 + 157);
    v29 = *(v11 + 156);
    v30 = *(v11 + 155);
    v31 = *(v11 + 154);
    v32 = **(result + 16) + v13 * v26 + 8 * *(result + 14);
    v33 = **(result + 7) + v27 * v12 + 4 * *(result + 36);
    do
    {
      if (v10 >= 1)
      {
        v34 = v10;
        v35 = v33;
        v36 = v32;
        do
        {
          LOBYTE(_S21) = *(v35 + v31);
          LOBYTE(v3) = *(v35 + v30);
          LOBYTE(v4) = *(v35 + v29);
          _H21 = *(v24 + 2 * llroundf(fminf(fmaxf(v14 * LODWORD(_S21), 0.0), 8191.0)));
          __asm { FCVT            S21, H21 }

          _H22 = *(v24 + 2 * llroundf(fminf(fmaxf(v14 * LODWORD(v3), 0.0), 8191.0)));
          __asm { FCVT            S22, H22 }

          _H23 = *(v24 + 2 * llroundf(fminf(fmaxf(v14 * LODWORD(v4), 0.0), 8191.0)));
          __asm { FCVT            S23, H23 }

          _H25 = *(v25 + 2 * llroundf(fminf(fmaxf(((v16 * _S22) + (_S21 * v15)) + (_S23 * v17), 0.0), 8191.0)));
          __asm { FCVT            S26, H25 }

          v49 = 65535.0;
          if (_S26 <= 65535.0)
          {
            __asm { FCMP            H25, #0 }

            v49 = _S26;
            if (_NF)
            {
              v49 = 0.0;
            }
          }

          v51 = *(v35 + v28);
          v52 = ((v19 * _S22) + (_S21 * v18)) + (_S23 * v20);
          v53 = ((v22 * _S22) + (_S21 * v21)) + (_S23 * v23);
          _H22 = *(v25 + 2 * llroundf(fminf(fmaxf(v52, 0.0), 8191.0)));
          _S21 = fminf(fmaxf(v53, 0.0), 8191.0);
          LOWORD(_S21) = *(v25 + 2 * llroundf(_S21));
          __asm { FCVT            S25, H22 }

          *v36 = llroundf(v49);
          v4 = 65535.0;
          if (_S25 <= 65535.0)
          {
            __asm { FCMP            H22, #0 }

            v4 = _S25;
            if (_NF)
            {
              v4 = 0.0;
            }
          }

          __asm { FCVT            S24, H21 }

          v36[1] = llroundf(v4);
          v3 = 65535.0;
          if (_S24 <= 65535.0)
          {
            __asm { FCMP            H21, #0 }

            v3 = _S24;
            if (_NF)
            {
              v3 = 0.0;
            }
          }

          v35 += 4;
          v36[2] = llroundf(v3);
          v36[3] = v51 | (v51 << 8);
          v36 += 4;
          --v34;
        }

        while (v34);
      }

      v33 += v12;
      v32 += v13;
      ++v9;
    }

    while (v9 != v8);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_BGRA_rgb_l64r(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
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
  if (((*a4 * (v29.i64[1] + v27.i64[1]) + 4 * v29.i64[0]) > *a5 || (v30 = vaddq_s64(v40, v28), (*a8 * (v30.i64[1] + v27.i64[1]) + 8 * v30.i64[0]) > *a9)) && (v38 = v27, v39.i64[0] = a9, fig_log_get_emitter(), v31 = FigSignalErrorAtGM(), v24 = v40, v23 = v39.i64[0], v27 = v38, v31))
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
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_BGRA_rgb_l64r_GCD);
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

unsigned __int8 *vt_Copy_BGRA_rgb_l64r_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, float a5)
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
    v12 = **(result + 8);
    v13 = **(result + 17);
    v14 = *(v11 + 136) / *(v11 + 128);
    v15 = v7 + *(result + 15);
    v16 = *(result + 28) * a2 / v5 + *(result + 44);
    v17 = *(v11 + 157);
    v18 = *(v11 + 156);
    v19 = *(v11 + 155);
    v20 = *(v11 + 154);
    v21 = **(result + 16) + v13 * v15 + 8 * *(result + 14);
    v22 = **(result + 7) + v16 * v12 + 4 * *(result + 36);
    do
    {
      if (v10 >= 1)
      {
        v23 = v10;
        v24 = v22;
        v25 = v21;
        do
        {
          LOBYTE(a5) = *(v24 + v20);
          v26 = v14 * LODWORD(a5);
          v27 = 65535.0;
          if (v26 <= 65535.0)
          {
            v27 = v26;
            if (v26 < 0.0)
            {
              v27 = 0.0;
            }
          }

          LOBYTE(v26) = *(v24 + v19);
          v28 = LODWORD(v26);
          LOBYTE(v26) = *(v24 + v18);
          v29 = *(v24 + v17);
          v30 = v14 * v28;
          *v25 = llroundf(v27);
          v31 = 65535.0;
          if (v30 <= 65535.0)
          {
            v31 = v30;
            if (v30 < 0.0)
            {
              v31 = 0.0;
            }
          }

          v32 = v14 * LODWORD(v26);
          v25[1] = llroundf(v31);
          a5 = 65535.0;
          if (v32 <= 65535.0)
          {
            a5 = v32;
            if (v32 < 0.0)
            {
              a5 = 0.0;
            }
          }

          v24 += 4;
          v25[2] = llroundf(a5);
          v25[3] = v29 | (v29 << 8);
          v25 += 4;
          --v23;
        }

        while (v23);
      }

      v22 += v12;
      v21 += v13;
      ++v9;
    }

    while (v9 != v8);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_BGRA_TRC_Tone_Mat_TRC_b64a(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
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
  if (((*a4 * (v29.i64[1] + v27.i64[1]) + 4 * v29.i64[0]) > *a5 || (v30 = vaddq_s64(v40, v28), (*a8 * (v30.i64[1] + v27.i64[1]) + 8 * v30.i64[0]) > *a9)) && (v38 = v27, v39.i64[0] = a9, fig_log_get_emitter(), v31 = FigSignalErrorAtGM(), v24 = v40, v23 = v39.i64[0], v27 = v38, v31))
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
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_BGRA_TRC_Tone_Mat_TRC_b64a_GCD);
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

unsigned __int8 *vt_Copy_BGRA_TRC_Tone_Mat_TRC_b64a_GCD(unsigned __int8 *result, uint64_t a2)
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
    v12 = **(result + 8);
    v13 = **(result + 17);
    v14 = 8191.0 / *(v11 + 128);
    v15 = *(v11 + 72);
    v16 = *(v11 + 76);
    v17 = *(v11 + 80);
    v18 = *(v11 + 84);
    v19 = *(v11 + 88);
    v20 = *(v11 + 92);
    v21 = *(v11 + 96);
    v22 = *(v11 + 100);
    v23 = v11 + 164;
    v24 = v11 + 16548;
    v25 = v11 + 32932;
    v26 = *(v11 + 104);
    v27 = *(v11 + 108);
    v28 = *(v11 + 112);
    v29 = *(v11 + 116);
    v30 = *(v11 + 120);
    v31 = v7 + *(result + 15);
    v32 = *(result + 28) * a2 / v5 + *(result + 44);
    v33 = *(v11 + 157);
    v34 = *(v11 + 156);
    v35 = *(v11 + 155);
    v36 = *(v11 + 154);
    v37 = **(result + 16) + v13 * v31 + 8 * *(result + 14);
    v38 = **(result + 7) + v32 * v12 + 4 * *(result + 36);
    do
    {
      if (v10 >= 1)
      {
        v39 = v10;
        v40 = v38;
        v41 = v37;
        do
        {
          LOBYTE(v2) = *(v40 + v36);
          LOBYTE(v3) = *(v40 + v35);
          LOBYTE(_S27) = *(v40 + v34);
          _H25 = *(v23 + 2 * llroundf(fminf(fmaxf(v14 * LODWORD(v2), 0.0), 8191.0)));
          __asm { FCVT            S25, H25 }

          _H26 = *(v23 + 2 * llroundf(fminf(fmaxf(v14 * LODWORD(v3), 0.0), 8191.0)));
          v49 = llroundf(fminf(fmaxf(v14 * LODWORD(_S27), 0.0), 8191.0));
          __asm { FCVT            S27, H26 }

          _H26 = *(v23 + 2 * v49);
          __asm { FCVT            S29, H26 }

          v53 = (((v28 * _S27) + (v27 * _S25)) + (v29 * _S29)) + (v30 * fmaxf(_S25, fmaxf(_S27, _S29)));
          v54 = 8191.0;
          if (v53 <= 8191.0)
          {
            v54 = v53;
            if (v53 < 0.0)
            {
              v54 = 0.0;
            }
          }

          _H26 = *(v24 + 2 * llroundf(v54));
          __asm { FCVT            S30, H26 }

          v57 = _S25 * _S30;
          v58 = _S27 * _S30;
          _S27 = _S29 * _S30;
          _H29 = *(v25 + 2 * llroundf(fminf(fmaxf(((v16 * v58) + ((_S25 * _S30) * v15)) + ((_S29 * _S30) * v17), 0.0), 8191.0)));
          __asm { FCVT            S30, H29 }

          v2 = 65535.0;
          if (_S30 <= 65535.0)
          {
            __asm { FCMP            H29, #0 }

            v2 = _S30;
            if (_NF)
            {
              v2 = 0.0;
            }
          }

          _H30 = *(v25 + 2 * llroundf(fminf(fmaxf(((v19 * v58) + (v57 * v18)) + (_S27 * v20), 0.0), 8191.0)));
          __asm { FCVT            S31, H30 }

          v64 = 65535.0;
          if (_S31 <= 65535.0)
          {
            __asm { FCMP            H30, #0 }

            v64 = _S31;
            if (_NF)
            {
              v64 = 0.0;
            }
          }

          LOWORD(_S27) = *(v25 + 2 * llroundf(fminf(fmaxf(((v22 * v58) + (v57 * v21)) + (_S27 * v26), 0.0), 8191.0)));
          __asm { FCVT            S28, H27 }

          v3 = 65535.0;
          if (_S28 <= 65535.0)
          {
            __asm { FCMP            H27, #0 }

            v3 = _S28;
            if (_NF)
            {
              v3 = 0.0;
            }
          }

          v67 = *(v40 + v33);
          v40 += 4;
          *v41 = __rev16(v67 | (v67 << 8));
          v41[1] = __rev16(llroundf(v2));
          v41[2] = __rev16(llroundf(v64));
          v41[3] = __rev16(llroundf(v3));
          v41 += 4;
          --v39;
        }

        while (v39);
      }

      v38 += v12;
      v37 += v13;
      ++v9;
    }

    while (v9 != v8);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_BGRA_TRC_Mat_TRC_b64a(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
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
  if (((*a4 * (v29.i64[1] + v27.i64[1]) + 4 * v29.i64[0]) > *a5 || (v30 = vaddq_s64(v40, v28), (*a8 * (v30.i64[1] + v27.i64[1]) + 8 * v30.i64[0]) > *a9)) && (v38 = v27, v39.i64[0] = a9, fig_log_get_emitter(), v31 = FigSignalErrorAtGM(), v24 = v40, v23 = v39.i64[0], v27 = v38, v31))
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
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_BGRA_TRC_Mat_TRC_b64a_GCD);
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

unsigned __int8 *vt_Copy_BGRA_TRC_Mat_TRC_b64a_GCD(unsigned __int8 *result, uint64_t a2)
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
    v12 = **(result + 8);
    v13 = **(result + 17);
    v14 = 8191.0 / *(v11 + 128);
    v15 = *(v11 + 72);
    v16 = *(v11 + 76);
    v17 = *(v11 + 80);
    v18 = *(v11 + 84);
    v19 = *(v11 + 88);
    v20 = *(v11 + 92);
    v21 = *(v11 + 96);
    v22 = *(v11 + 100);
    v23 = *(v11 + 104);
    v24 = v11 + 164;
    v25 = v11 + 16548;
    v26 = v7 + *(result + 15);
    v27 = *(result + 28) * a2 / v5 + *(result + 44);
    v28 = *(v11 + 157);
    v29 = *(v11 + 156);
    v30 = *(v11 + 155);
    v31 = *(v11 + 154);
    v32 = **(result + 16) + v13 * v26 + 8 * *(result + 14);
    v33 = **(result + 7) + v27 * v12 + 4 * *(result + 36);
    do
    {
      if (v10 >= 1)
      {
        v34 = v10;
        v35 = v33;
        v36 = v32;
        do
        {
          LOBYTE(v2) = *(v35 + v31);
          LOBYTE(v3) = *(v35 + v30);
          LOBYTE(_S23) = *(v35 + v29);
          v37 = v14 * LODWORD(_S23);
          _H21 = *(v24 + 2 * llroundf(fminf(fmaxf(v14 * LODWORD(v2), 0.0), 8191.0)));
          v39 = llroundf(fminf(fmaxf(v14 * LODWORD(v3), 0.0), 8191.0));
          __asm { FCVT            S22, H21 }

          _H21 = *(v24 + 2 * v39);
          __asm { FCVT            S23, H21 }

          _H21 = *(v24 + 2 * llroundf(fminf(fmaxf(v37, 0.0), 8191.0)));
          __asm { FCVT            S24, H21 }

          _H25 = *(v25 + 2 * llroundf(fminf(fmaxf(((v16 * _S23) + (_S22 * v15)) + (_S24 * v17), 0.0), 8191.0)));
          __asm { FCVT            S26, H25 }

          v2 = 65535.0;
          if (_S26 <= 65535.0)
          {
            __asm { FCMP            H25, #0 }

            v2 = _S26;
            if (_NF)
            {
              v2 = 0.0;
            }
          }

          _H26 = *(v25 + 2 * llroundf(fminf(fmaxf(((v19 * _S23) + (_S22 * v18)) + (_S24 * v20), 0.0), 8191.0)));
          __asm { FCVT            S27, H26 }

          v54 = 65535.0;
          if (_S27 <= 65535.0)
          {
            __asm { FCMP            H26, #0 }

            v54 = _S27;
            if (_NF)
            {
              v54 = 0.0;
            }
          }

          _S23 = v22 * _S23;
          LOWORD(_S23) = *(v25 + 2 * llroundf(fminf(fmaxf((_S23 + (_S22 * v21)) + (_S24 * v23), 0.0), 8191.0)));
          __asm { FCVT            S24, H23 }

          v3 = 65535.0;
          if (_S24 <= 65535.0)
          {
            __asm { FCMP            H23, #0 }

            v3 = _S24;
            if (_NF)
            {
              v3 = 0.0;
            }
          }

          v57 = *(v35 + v28);
          v35 += 4;
          *v36 = __rev16(v57 | (v57 << 8));
          v36[1] = __rev16(llroundf(v2));
          v36[2] = __rev16(llroundf(v54));
          v36[3] = __rev16(llroundf(v3));
          v36 += 4;
          --v34;
        }

        while (v34);
      }

      v33 += v12;
      v32 += v13;
      ++v9;
    }

    while (v9 != v8);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_BGRA_rgb_b64a(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
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
  if (((*a4 * (v29.i64[1] + v27.i64[1]) + 4 * v29.i64[0]) > *a5 || (v30 = vaddq_s64(v40, v28), (*a8 * (v30.i64[1] + v27.i64[1]) + 8 * v30.i64[0]) > *a9)) && (v38 = v27, v39.i64[0] = a9, fig_log_get_emitter(), v31 = FigSignalErrorAtGM(), v24 = v40, v23 = v39.i64[0], v27 = v38, v31))
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
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_BGRA_rgb_b64a_GCD);
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

unsigned __int8 *vt_Copy_BGRA_rgb_b64a_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, float a5)
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
    v12 = **(result + 8);
    v13 = **(result + 17);
    v14 = *(v11 + 136) / *(v11 + 128);
    v15 = v7 + *(result + 15);
    v16 = *(result + 28) * a2 / v5 + *(result + 44);
    v17 = *(v11 + 157);
    v18 = *(v11 + 156);
    v19 = *(v11 + 155);
    v20 = *(v11 + 154);
    v21 = **(result + 16) + v13 * v15 + 8 * *(result + 14);
    v22 = **(result + 7) + v16 * v12 + 4 * *(result + 36);
    do
    {
      if (v10 >= 1)
      {
        v23 = v10;
        v24 = v22;
        v25 = v21;
        do
        {
          LOBYTE(a5) = *(v24 + v20);
          v26 = v14 * LODWORD(a5);
          a5 = 65535.0;
          if (v26 <= 65535.0)
          {
            a5 = v26;
            if (v26 < 0.0)
            {
              a5 = 0.0;
            }
          }

          LOBYTE(v26) = *(v24 + v19);
          v27 = v14 * LODWORD(v26);
          v28 = 65535.0;
          if (v27 <= 65535.0)
          {
            v28 = v27;
            if (v27 < 0.0)
            {
              v28 = 0.0;
            }
          }

          LOBYTE(v27) = *(v24 + v18);
          v29 = v14 * LODWORD(v27);
          v30 = 65535.0;
          if (v29 <= 65535.0)
          {
            v30 = v29;
            if (v29 < 0.0)
            {
              v30 = 0.0;
            }
          }

          v31 = *(v24 + v17);
          v24 += 4;
          *v25 = __rev16(v31 | (v31 << 8));
          v25[1] = __rev16(llroundf(a5));
          v25[2] = __rev16(llroundf(v28));
          v25[3] = __rev16(llroundf(v30));
          v25 += 4;
          --v23;
        }

        while (v23);
      }

      v22 += v12;
      v21 += v13;
      ++v9;
    }

    while (v9 != v8);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_BGRA_TRC_Tone_Mat_TRC_RGhA_neon_fp16(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
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
  if (((*a4 * (v29.i64[1] + v27.i64[1]) + 4 * v29.i64[0]) > *a5 || (v30 = vaddq_s64(v40, v28), (*a8 * (v30.i64[1] + v27.i64[1]) + 8 * v30.i64[0]) > *a9)) && (v38 = v27, v39.i64[0] = a9, fig_log_get_emitter(), v31 = FigSignalErrorAtGM(), v24 = v40, v23 = v39.i64[0], v27 = v38, v31))
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
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_BGRA_TRC_Tone_Mat_TRC_RGhA_neon_fp16_GCD);
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

uint64_t vt_Copy_BGRA_TRC_Tone_Mat_TRC_RGhA_neon_fp16_GCD(unsigned __int8 *a1, uint64_t a2)
{
  v2 = 0;
  v3 = *(a1 + 36);
  v4 = *a1;
  v5 = *(a1 + 28) * a2 / v4 + *(a1 + 44);
  v6 = *(a1 + 14);
  v7 = *(a1 + 15);
  v8 = *(a1 + 12);
  v9 = *(a1 + 13);
  v10 = v9 * a2;
  v11 = *(a1 + 19);
  v12 = *(a1 + 7);
  v13 = *(a1 + 16);
  v14 = *(a1 + 17);
  v15 = v10 / v4;
  result = **(a1 + 8);
  v17 = *v12;
  v18 = result * v5;
  v19 = *v14;
  v20 = *v13;
  v21 = *v14 * (v10 / v4 + v7);
  v22 = *(v11 + 128);
  v151 = *(v11 + 154);
  v160[0] = *(v11 + 154);
  v150 = *(v11 + 155);
  v160[1] = *(v11 + 155);
  v149 = *(v11 + 156);
  v160[2] = *(v11 + 156);
  v148 = *(v11 + 157);
  v160[3] = *(v11 + 157);
  _S19 = *(v11 + 72);
  _S23 = *(v11 + 76);
  _S24 = *(v11 + 80);
  _S25 = *(v11 + 84);
  _S26 = *(v11 + 88);
  _S27 = *(v11 + 92);
  _S28 = *(v11 + 96);
  _S8 = *(v11 + 100);
  _S9 = *(v11 + 104);
  v155 = *(v11 + 112);
  v156 = *(v11 + 108);
  v154 = *(v11 + 116);
  _S20 = *(v11 + 120);
  v158 = 0u;
  v159 = 0u;
  v33 = (v9 + v10) / v4;
  do
  {
    v34 = 0;
    v35 = v160[v2];
    v36 = *(&v158 + v2);
    do
    {
      v157 = v36;
      *(&v157 | v34 & 7) = v35 + 4 * v34;
      v36 = v157;
      ++v34;
    }

    while (v34 != 8);
    *(&v158 + v2++) = v157;
  }

  while (v2 != 4);
  v37 = v33 - v15;
  if (v33 - v15 >= 1)
  {
    v38 = 0;
    _S22 = 8191.0 / v22;
    _S0 = v156;
    __asm { FCVT            H0, S0 }

    v153 = *&_S0;
    _S0 = v154;
    _S1 = v155;
    __asm
    {
      FCVT            H11, S1
      FCVT            H12, S0
      FCVT            H13, S20
      FCVT            H14, S19
    }

    v51 = v11 + 16548;
    v52 = v11 + 32932;
    v53 = v11 + 164;
    __asm
    {
      FCVT            H15, S23
      FCVT            H0, S24
      FCVT            H1, S25
      FCVT            H2, S26
      FCVT            H3, S27
      FCVT            H4, S28
      FCVT            H10, S8
      FCVT            H5, S9
    }

    v152 = _H5;
    v62 = _H4;
    v63 = v20 + v21 + 8 * v6;
    v64 = v17 + v18 + 4 * v3;
    __asm { FCVT            H4, S22 }

    v66.i64[0] = 0x9000900090009000;
    v66.i64[1] = 0x9000900090009000;
    v146 = _S23;
    v147 = _S19;
    v144 = _S25;
    v145 = _S24;
    v142 = _S27;
    v143 = _S26;
    v140 = _S8;
    v141 = _S28;
    v139 = _S9;
    do
    {
      if (v8 < 8)
      {
        v110 = 0;
        v71 = v63;
        v70 = v64;
      }

      else
      {
        v67 = 0;
        v69 = *(&v158 + 8);
        v68 = v158;
        v70 = v64;
        v71 = v63;
        v73 = *(&v159 + 8);
        v72 = v159;
        do
        {
          v161.val[0].i64[0] = *v70;
          v74 = v70[1];
          v75.i64[0] = v70[2];
          v76 = v70[3];
          v70 += 4;
          v161.val[0].i64[1] = v74;
          v75.i64[1] = v76;
          v161.val[1] = v75;
          v77 = vqtbl2_s8(v161, v68);
          v78 = vqtbl2_s8(v161, v69);
          *v79.i8 = vzip1_s8(v77, 0);
          v79.u64[1] = vzip2_s8(v77, 0);
          *v80.i8 = vzip1_s8(v78, 0);
          v80.u64[1] = vzip2_s8(v78, 0);
          v81 = vqtbl2_s8(v161, v72);
          *v82.i8 = vzip1_s8(v81, 0);
          v82.u64[1] = vzip2_s8(v81, 0);
          v83 = vcvtq_f16_u16(v79);
          v84 = vcvtq_f16_u16(v82);
          v85 = vmulq_n_f16(vcvtq_f16_u16(v80), _H4);
          v86 = vmulq_n_f16(v84, _H4);
          v87 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmulq_n_f16(v83, _H4), 0), v66));
          v84.i16[0] = *(v53 + 2 * v87.u16[0]);
          v88 = (v53 + 2 * v87.u16[1]);
          v89 = (v53 + 2 * v87.u16[2]);
          v90 = (v53 + 2 * v87.u16[3]);
          v91 = (v53 + 2 * v87.u16[4]);
          v92 = (v53 + 2 * v87.u16[5]);
          v93 = (v53 + 2 * v87.u16[6]);
          v94 = v87.u16[7];
          v95 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v85, 0), v66));
          v96 = (v53 + 2 * v94);
          v85.i16[0] = *(v53 + 2 * v95.u16[0]);
          v97 = (v53 + 2 * v95.u16[3]);
          v98 = (v53 + 2 * v95.u16[4]);
          v99 = (v53 + 2 * v95.u16[5]);
          v100 = (v53 + 2 * v95.u16[6]);
          v84.i16[1] = *v88;
          v85.i16[1] = *(v53 + 2 * v95.u16[1]);
          v84.i16[2] = *v89;
          v101 = (v53 + 2 * v95.u16[7]);
          v85.i16[2] = *(v53 + 2 * v95.u16[2]);
          v84.i16[3] = *v90;
          v102 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v86, 0), v66));
          v85.i16[3] = *v97;
          v86.i16[0] = *(v53 + 2 * v102.u16[0]);
          v84.i16[4] = *v91;
          v85.i16[4] = *v98;
          v84.i16[5] = *v92;
          v85.i16[5] = *v99;
          v84.i16[6] = *v93;
          v86.i16[1] = *(v53 + 2 * v102.u16[1]);
          v85.i16[6] = *v100;
          v86.i16[2] = *(v53 + 2 * v102.u16[2]);
          v86.i16[3] = *(v53 + 2 * v102.u16[3]);
          v84.i16[7] = *v96;
          v86.i16[4] = *(v53 + 2 * v102.u16[4]);
          v86.i16[5] = *(v53 + 2 * v102.u16[5]);
          v85.i16[7] = *v101;
          v86.i16[6] = *(v53 + 2 * v102.u16[6]);
          v86.i16[7] = *(v53 + 2 * v102.u16[7]);
          v103 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v84, v153), v85, _H11), v86, _H12), vmaxq_f16(vmaxq_f16(v84, v85), v86), _H13), 0), v66));
          v162.val[2].i16[0] = *(v51 + 2 * v103.u16[0]);
          v162.val[2].i16[1] = *(v51 + 2 * v103.u16[1]);
          v162.val[2].i16[2] = *(v51 + 2 * v103.u16[2]);
          v162.val[2].i16[3] = *(v51 + 2 * v103.u16[3]);
          v162.val[2].i16[4] = *(v51 + 2 * v103.u16[4]);
          v162.val[2].i16[5] = *(v51 + 2 * v103.u16[5]);
          v162.val[2].i16[6] = *(v51 + 2 * v103.u16[6]);
          v162.val[2].i16[7] = *(v51 + 2 * v103.u16[7]);
          v162.val[1] = vmulq_f16(v84, v162.val[2]);
          v104 = vmulq_f16(v85, v162.val[2]);
          v105 = vmulq_f16(v86, v162.val[2]);
          v106 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v162.val[1], _H1), v104, _H2), v105, _H3);
          v107 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v105, v152), v104, _H10), v162.val[1], v62);
          v162.val[0] = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v162.val[1], _H14), v104, _H15), v105, _H0), 0), v66));
          v162.val[0].i16[0] = *(v52 + 2 * v162.val[0].u16[0]);
          v162.val[0].i16[1] = *(v52 + 2 * v162.val[0].u16[1]);
          v162.val[0].i16[2] = *(v52 + 2 * v162.val[0].u16[2]);
          v162.val[0].i16[3] = *(v52 + 2 * v162.val[0].u16[3]);
          v162.val[0].i16[4] = *(v52 + 2 * v162.val[0].u16[4]);
          v108 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v106, 0), v66));
          v162.val[0].i16[5] = *(v52 + 2 * v162.val[0].u16[5]);
          v162.val[0].i16[6] = *(v52 + 2 * v162.val[0].u16[6]);
          v162.val[0].i16[7] = *(v52 + 2 * v162.val[0].u16[7]);
          v162.val[1].i16[0] = *(v52 + 2 * v108.u16[0]);
          v162.val[1].i16[1] = *(v52 + 2 * v108.u16[1]);
          v162.val[1].i16[2] = *(v52 + 2 * v108.u16[2]);
          v162.val[1].i16[3] = *(v52 + 2 * v108.u16[3]);
          v162.val[1].i16[4] = *(v52 + 2 * v108.u16[4]);
          v109 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v107, 0), v66));
          v162.val[1].i16[5] = *(v52 + 2 * v108.u16[5]);
          v162.val[1].i16[6] = *(v52 + 2 * v108.u16[6]);
          *v161.val[0].i8 = vqtbl2_s8(v161, v73);
          v162.val[1].i16[7] = *(v52 + 2 * v108.u16[7]);
          v162.val[2].i16[0] = *(v52 + 2 * v109.u16[0]);
          v162.val[2].i16[1] = *(v52 + 2 * v109.u16[1]);
          v162.val[2].i16[2] = *(v52 + 2 * v109.u16[2]);
          v162.val[2].i16[3] = *(v52 + 2 * v109.u16[3]);
          v162.val[2].i16[4] = *(v52 + 2 * v109.u16[4]);
          v162.val[2].i16[5] = *(v52 + 2 * v109.u16[5]);
          v162.val[2].i16[6] = *(v52 + 2 * v109.u16[6]);
          *v161.val[1].i8 = vzip1_s8(*v161.val[0].i8, 0);
          v161.val[1].u64[1] = vzip2_s8(*v161.val[0].i8, 0);
          v162.val[2].i16[7] = *(v52 + 2 * v109.u16[7]);
          v162.val[3] = vmulq_f16(vcvtq_f16_u16(v161.val[1]), vdupq_n_s16(0x1C04u));
          vst4q_s16(v71, v162);
          v71 += 32;
          v67 += 8;
        }

        while (v67 < v8 - 7);
        v110 = v8 & 0xFFFFFFF8;
        _S23 = v146;
        _S19 = v147;
        _S25 = v144;
        _S24 = v145;
        _S27 = v142;
        _S26 = v143;
        _S8 = v140;
        _S28 = v141;
        _S9 = v139;
      }

      v111 = v8 - v110;
      if (v8 > v110)
      {
        v112 = v70 + v148;
        v113 = v70 + v149;
        v114 = v70 + v150;
        v115 = v70 + v151;
        do
        {
          v116 = *v115;
          v115 += 4;
          _S6 = v116;
          v118 = *v114;
          v114 += 4;
          _S7 = _S22 * v118;
          v120 = *v113;
          v113 += 4;
          LOWORD(_S6) = *(v53 + 2 * llroundf(fminf(fmaxf(_S22 * _S6, 0.0), 8191.0)));
          __asm { FCVT            S6, H6 }

          LOWORD(_S7) = *(v53 + 2 * llroundf(fminf(fmaxf(_S7, 0.0), 8191.0)));
          __asm { FCVT            S7, H7 }

          _H16 = *(v53 + 2 * llroundf(fminf(fmaxf(_S22 * v120, 0.0), 8191.0)));
          __asm { FCVT            S16, H16 }

          v125 = (((v155 * _S7) + (v156 * _S6)) + (v154 * _S16)) + (_S20 * fmaxf(_S6, fmaxf(_S7, _S16)));
          v126 = 8191.0;
          if (v125 <= 8191.0)
          {
            v126 = v125;
            if (v125 < 0.0)
            {
              v126 = 0.0;
            }
          }

          v127 = *v112;
          v112 += 4;
          _H17 = *(v51 + 2 * llroundf(v126));
          __asm { FCVT            S17, H17 }

          v130 = _S6 * _S17;
          v131 = _S7 * _S17;
          v132 = _S16 * _S17;
          v133 = ((_S23 * v131) + (v130 * _S19)) + (v132 * _S24);
          v134 = ((_S26 * v131) + (v130 * _S25)) + (v132 * _S27);
          _S6 = ((_S8 * v131) + (v130 * _S28)) + (v132 * _S9);
          LOWORD(v131) = *(v52 + 2 * llroundf(fminf(fmaxf(v133, 0.0), 8191.0)));
          LOWORD(v132) = *(v52 + 2 * llroundf(fminf(fmaxf(v134, 0.0), 8191.0)));
          LOWORD(_S6) = *(v52 + 2 * llroundf(fminf(fmaxf(_S6, 0.0), 8191.0)));
          _S17 = v127 * 0.0039216;
          *v71 = LOWORD(v131);
          v71[1] = LOWORD(v132);
          v71[2] = LOWORD(_S6);
          __asm { FCVT            H6, S17 }

          v71[3] = LOWORD(_S6);
          v71 += 4;
          --v111;
        }

        while (v111);
      }

      v64 += result;
      v63 += v19;
      ++v38;
    }

    while (v38 != v37);
  }

  *&a1[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_BGRA_TRC_Tone_Mat_TRC_RGhA(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
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
  if (((*a4 * (v29.i64[1] + v27.i64[1]) + 4 * v29.i64[0]) > *a5 || (v30 = vaddq_s64(v40, v28), (*a8 * (v30.i64[1] + v27.i64[1]) + 8 * v30.i64[0]) > *a9)) && (v38 = v27, v39.i64[0] = a9, fig_log_get_emitter(), v31 = FigSignalErrorAtGM(), v24 = v40, v23 = v39.i64[0], v27 = v38, v31))
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
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_BGRA_TRC_Tone_Mat_TRC_RGhA_GCD);
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

unsigned __int8 *vt_Copy_BGRA_TRC_Tone_Mat_TRC_RGhA_GCD(unsigned __int8 *result, uint64_t a2)
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
    v12 = **(result + 8);
    v13 = **(result + 17);
    v14 = 8191.0 / *(v11 + 128);
    v15 = *(v11 + 72);
    v16 = *(v11 + 76);
    v17 = *(v11 + 80);
    v18 = *(v11 + 84);
    v19 = *(v11 + 88);
    v20 = *(v11 + 92);
    v21 = *(v11 + 96);
    v22 = *(v11 + 100);
    v23 = v11 + 164;
    v24 = v11 + 16548;
    v25 = v11 + 32932;
    v26 = *(v11 + 104);
    v27 = *(v11 + 108);
    v28 = *(v11 + 112);
    v29 = *(v11 + 116);
    v30 = *(v11 + 120);
    v31 = v7 + *(result + 15);
    v32 = *(result + 28) * a2 / v5 + *(result + 44);
    v33 = *(v11 + 157);
    v34 = *(v11 + 156);
    v35 = *(v11 + 155);
    v36 = *(v11 + 154);
    v37 = **(result + 16) + v13 * v31 + 8 * *(result + 14);
    v38 = **(result + 7) + v32 * v12 + 4 * *(result + 36);
    do
    {
      if (v10 >= 1)
      {
        v39 = v10;
        v40 = v38;
        v41 = v37;
        do
        {
          LOBYTE(_S25) = *(v40 + v36);
          LOBYTE(v3) = *(v40 + v35);
          LOBYTE(v4) = *(v40 + v34);
          _H25 = *(v23 + 2 * llroundf(fminf(fmaxf(v14 * LODWORD(_S25), 0.0), 8191.0)));
          __asm { FCVT            S25, H25 }

          _H26 = *(v23 + 2 * llroundf(fminf(fmaxf(v14 * LODWORD(v3), 0.0), 8191.0)));
          __asm { FCVT            S26, H26 }

          _H27 = *(v23 + 2 * llroundf(fminf(fmaxf(v14 * LODWORD(v4), 0.0), 8191.0)));
          __asm { FCVT            S27, H27 }

          v52 = (((v28 * _S26) + (v27 * _S25)) + (v29 * _S27)) + (v30 * fmaxf(_S25, fmaxf(_S26, _S27)));
          v53 = 8191.0;
          if (v52 <= 8191.0)
          {
            v53 = v52;
            if (v52 < 0.0)
            {
              v53 = 0.0;
            }
          }

          v54 = *(v40 + v33);
          _H28 = *(v24 + 2 * llroundf(v53));
          v40 += 4;
          __asm { FCVT            S28, H28 }

          v57 = _S25 * _S28;
          v58 = _S26 * _S28;
          v59 = _S27 * _S28;
          v60 = ((v16 * v58) + (v57 * v15)) + (v59 * v17);
          v61 = ((v19 * v58) + (v57 * v18)) + (v59 * v20);
          v62 = ((v22 * v58) + (v57 * v21)) + (v59 * v26);
          v3 = fminf(fmaxf(v60, 0.0), 8191.0);
          LOWORD(v3) = *(v25 + 2 * llroundf(v3));
          v4 = fminf(fmaxf(v61, 0.0), 8191.0);
          LOWORD(v4) = *(v25 + 2 * llroundf(v4));
          _S25 = fminf(fmaxf(v62, 0.0), 8191.0);
          LOWORD(_S25) = *(v25 + 2 * llroundf(_S25));
          _S28 = v54 * 0.0039216;
          *v41 = LOWORD(v3);
          v41[1] = LOWORD(v4);
          v41[2] = LOWORD(_S25);
          __asm { FCVT            H25, S28 }

          v41[3] = LOWORD(_S25);
          v41 += 4;
          --v39;
        }

        while (v39);
      }

      v38 += v12;
      v37 += v13;
      ++v9;
    }

    while (v9 != v8);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_BGRA_TRC_Mat_TRC_RGhA_neon_fp16(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
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
  if (((*a4 * (v29.i64[1] + v27.i64[1]) + 4 * v29.i64[0]) > *a5 || (v30 = vaddq_s64(v40, v28), (*a8 * (v30.i64[1] + v27.i64[1]) + 8 * v30.i64[0]) > *a9)) && (v38 = v27, v39.i64[0] = a9, fig_log_get_emitter(), v31 = FigSignalErrorAtGM(), v24 = v40, v23 = v39.i64[0], v27 = v38, v31))
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
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_BGRA_TRC_Mat_TRC_RGhA_neon_fp16_GCD);
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

unsigned __int8 *vt_Copy_BGRA_TRC_Mat_TRC_RGhA_neon_fp16_GCD(unsigned __int8 *result, uint64_t a2)
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
  v16 = *(v8 + 128);
  v125 = *(v8 + 154);
  v129[0] = *(v8 + 154);
  v124 = *(v8 + 155);
  v129[1] = *(v8 + 155);
  v17 = *(v8 + 156);
  v129[2] = *(v8 + 156);
  v18 = *(v8 + 157);
  v129[3] = *(v8 + 157);
  _S20 = *(v8 + 72);
  _S25 = *(v8 + 76);
  _S26 = *(v8 + 80);
  _S27 = *(v8 + 84);
  _S28 = *(v8 + 88);
  _S19 = *(v8 + 92);
  _S29 = *(v8 + 96);
  _S7 = *(v8 + 100);
  _S16 = *(v8 + 104);
  v127 = 0u;
  v128 = 0u;
  v28 = (v7 + v7 * a2) / v4;
  do
  {
    v29 = 0;
    v30 = v129[v2];
    v31 = *(&v127 + v2);
    do
    {
      v126 = v31;
      *(&v126 | v29 & 7) = v30 + 4 * v29;
      v31 = v126;
      ++v29;
    }

    while (v29 != 8);
    *(&v127 + v2++) = v126;
  }

  while (v2 != 4);
  v32 = v28 - v9;
  if (v28 - v9 >= 1)
  {
    v33 = 0;
    v34 = v16;
    v35 = v8 + 164;
    v36 = v8 + 16548;
    _S18 = 8191.0 / v34;
    __asm
    {
      FCVT            H8, S20
      FCVT            H9, S25
      FCVT            H10, S26
      FCVT            H11, S27
      FCVT            H12, S28
      FCVT            H13, S19
      FCVT            H14, S29
      FCVT            H15, S7
      FCVT            H0, S16
    }

    v51 = v14 + v15 + 8 * v5;
    v52 = v11 + v12 + 4 * v3;
    __asm { FCVT            H1, S18 }

    v54.i64[0] = 0x9000900090009000;
    v54.i64[1] = 0x9000900090009000;
    v55 = vdupq_n_s16(0x1C04u);
    v122 = _S25;
    v123 = _S20;
    v120 = _S27;
    v121 = _S26;
    v119 = _S28;
    do
    {
      if (v6 < 8)
      {
        v97 = 0;
        v60 = v51;
        v59 = v52;
      }

      else
      {
        v56 = 0;
        v58 = *(&v127 + 8);
        v57 = v127;
        v59 = v52;
        v60 = v51;
        v62 = *(&v128 + 8);
        v61 = v128;
        do
        {
          v130.val[0].i64[0] = *v59;
          v63 = v59[1];
          v64.i64[0] = v59[2];
          v65 = v59[3];
          v59 += 4;
          v130.val[0].i64[1] = v63;
          v64.i64[1] = v65;
          v130.val[1] = v64;
          v66 = vqtbl2_s8(v130, v57);
          v67 = vqtbl2_s8(v130, v58);
          v68 = vqtbl2_s8(v130, v61);
          *v69.i8 = vzip1_s8(v66, 0);
          v69.u64[1] = vzip2_s8(v66, 0);
          v70 = vcvtq_f16_u16(v69);
          *v69.i8 = vzip1_s8(v67, 0);
          v69.u64[1] = vzip2_s8(v67, 0);
          *v71.i8 = vzip1_s8(v68, 0);
          v71.u64[1] = vzip2_s8(v68, 0);
          v72 = vmulq_n_f16(vcvtq_f16_u16(v71), _H1);
          v73 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmulq_n_f16(v70, _H1), 0), v54));
          v71.i16[0] = *(v35 + 2 * v73.u16[0]);
          v74 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmulq_n_f16(vcvtq_f16_u16(v69), _H1), 0), v54));
          v73.i16[0] = *(v35 + 2 * v74.u16[0]);
          v71.i16[1] = *(v35 + 2 * v73.u16[1]);
          v75 = (v35 + 2 * v74.u16[3]);
          v76 = (v35 + 2 * v74.u16[4]);
          v73.i16[1] = *(v35 + 2 * v74.u16[1]);
          v77 = (v35 + 2 * v74.u16[5]);
          v78 = (v35 + 2 * v74.u16[6]);
          v71.i16[2] = *(v35 + 2 * v73.u16[2]);
          v73.i16[2] = *(v35 + 2 * v74.u16[2]);
          v71.i16[3] = *(v35 + 2 * v73.u16[3]);
          v79 = (v35 + 2 * v74.u16[7]);
          v80 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v72, 0), v54));
          v73.i16[3] = *v75;
          v72.i16[0] = *(v35 + 2 * v80.u16[0]);
          v71.i16[4] = *(v35 + 2 * v73.u16[4]);
          v73.i16[4] = *v76;
          v71.i16[5] = *(v35 + 2 * v73.u16[5]);
          v73.i16[5] = *v77;
          v72.i16[1] = *(v35 + 2 * v80.u16[1]);
          v71.i16[6] = *(v35 + 2 * v73.u16[6]);
          v73.i16[6] = *v78;
          v72.i16[2] = *(v35 + 2 * v80.u16[2]);
          v71.i16[7] = *(v35 + 2 * v73.u16[7]);
          v72.i16[3] = *(v35 + 2 * v80.u16[3]);
          v72.i16[4] = *(v35 + 2 * v80.u16[4]);
          v73.i16[7] = *v79;
          v72.i16[5] = *(v35 + 2 * v80.u16[5]);
          v72.i16[6] = *(v35 + 2 * v80.u16[6]);
          *v130.val[0].i8 = vqtbl2_s8(v130, v62);
          v72.i16[7] = *(v35 + 2 * v80.u16[7]);
          v130.val[1] = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v71, _H8), v73, _H9), v72, _H10);
          v81 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v71, _H11), v73, _H12), v72, _H13);
          v82 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v72, _H0), v73, _H15), v71, _H14);
          v83 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v130.val[1], 0), v54));
          v130.val[1].i16[0] = *(v36 + 2 * v83.u16[0]);
          v84 = (v36 + 2 * v83.u16[5]);
          v85 = (v36 + 2 * v83.u16[6]);
          v130.val[1].i16[1] = *(v36 + 2 * v83.u16[1]);
          v130.val[1].i16[2] = *(v36 + 2 * v83.u16[2]);
          v86 = (v36 + 2 * v83.u16[7]);
          v130.val[1].i16[3] = *(v36 + 2 * v83.u16[3]);
          v130.val[1].i16[4] = *(v36 + 2 * v83.u16[4]);
          v87 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v81, 0), v54));
          v130.val[1].i16[5] = *v84;
          v130.val[1].i16[6] = *v85;
          v130.val[1].i16[7] = *v86;
          v88 = (v36 + 2 * v87.u16[5]);
          v89 = (v36 + 2 * v87.u16[6]);
          v64.i16[0] = *(v36 + 2 * v87.u16[0]);
          v64.i16[1] = *(v36 + 2 * v87.u16[1]);
          v64.i16[2] = *(v36 + 2 * v87.u16[2]);
          v90 = (v36 + 2 * v87.u16[7]);
          v64.i16[3] = *(v36 + 2 * v87.u16[3]);
          v64.i16[4] = *(v36 + 2 * v87.u16[4]);
          v91 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v82, 0), v54));
          v64.i16[5] = *v88;
          v64.i16[6] = *v89;
          v64.i16[7] = *v90;
          LOWORD(v65) = *(v36 + 2 * v91.u16[0]);
          WORD1(v65) = *(v36 + 2 * v91.u16[1]);
          WORD2(v65) = *(v36 + 2 * v91.u16[2]);
          HIWORD(v65) = *(v36 + 2 * v91.u16[3]);
          v92 = *(v36 + 2 * v91.u16[4]);
          v93 = *(v36 + 2 * v91.u16[5]);
          v94 = *(v36 + 2 * v91.u16[6]);
          *v91.i8 = vzip1_s8(*v130.val[0].i8, 0);
          v95 = *(v36 + 2 * v91.u16[7]);
          v91.u64[1] = vzip2_s8(*v130.val[0].i8, 0);
          v96 = vmulq_f16(vcvtq_f16_u16(v91), v55);
          vst4q_s16(v60, *v130.val[1].i8);
          v60 += 32;
          v56 += 8;
        }

        while (v56 < v6 - 7);
        v97 = v6 & 0x7FFFFFF8;
        _S25 = v122;
        _S20 = v123;
        _S27 = v120;
        _S26 = v121;
        _S28 = v119;
      }

      _VF = __OFSUB__(v6, v97);
      v98 = v6 - v97;
      if (!((v98 < 0) ^ _VF | (v98 == 0)))
      {
        v99 = v59 + v18;
        v100 = v59 + v17;
        v101 = v59 + v124;
        v102 = v59 + v125;
        do
        {
          v104 = *v102;
          v102 += 4;
          v103 = v104;
          v105 = *v101;
          v101 += 4;
          _S3 = v105;
          v107 = *v100;
          v100 += 4;
          _S2 = fminf(fmaxf(_S18 * _S3, 0.0), 8191.0);
          LOWORD(_S3) = *(v35 + 2 * llroundf(fminf(fmaxf(_S18 * v103, 0.0), 8191.0)));
          LOWORD(_S2) = *(v35 + 2 * llroundf(_S2));
          __asm { FCVT            S2, H2 }

          _H4 = *(v35 + 2 * llroundf(fminf(fmaxf(_S18 * v107, 0.0), 8191.0)));
          __asm
          {
            FCVT            S3, H3
            FCVT            S4, H4
          }

          v113 = ((_S25 * _S2) + (_S3 * _S20)) + (_S4 * _S26);
          v114 = ((_S28 * _S2) + (_S3 * _S27)) + (_S4 * _S19);
          _S2 = ((_S7 * _S2) + (_S3 * _S29)) + (_S4 * _S16);
          v116 = *v99;
          v99 += 4;
          LOWORD(_S3) = *(v36 + 2 * llroundf(fminf(fmaxf(v113, 0.0), 8191.0)));
          LOWORD(_S4) = *(v36 + 2 * llroundf(fminf(fmaxf(v114, 0.0), 8191.0)));
          LOWORD(_S2) = *(v36 + 2 * llroundf(fminf(fmaxf(_S2, 0.0), 8191.0)));
          _S5 = v116 * 0.0039216;
          *v60 = LOWORD(_S3);
          v60[1] = LOWORD(_S4);
          v60[2] = LOWORD(_S2);
          __asm { FCVT            H2, S5 }

          v60[3] = LOWORD(_S2);
          v60 += 4;
          --v98;
        }

        while (v98);
      }

      v52 += v10;
      v51 += v13;
      ++v33;
    }

    while (v33 != v32);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_BGRA_TRC_Mat_TRC_RGhA(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
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
  if (((*a4 * (v29.i64[1] + v27.i64[1]) + 4 * v29.i64[0]) > *a5 || (v30 = vaddq_s64(v40, v28), (*a8 * (v30.i64[1] + v27.i64[1]) + 8 * v30.i64[0]) > *a9)) && (v38 = v27, v39.i64[0] = a9, fig_log_get_emitter(), v31 = FigSignalErrorAtGM(), v24 = v40, v23 = v39.i64[0], v27 = v38, v31))
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
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_BGRA_TRC_Mat_TRC_RGhA_GCD);
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

unsigned __int8 *vt_Copy_BGRA_TRC_Mat_TRC_RGhA_GCD(unsigned __int8 *result, uint64_t a2)
{
  v6 = *result;
  v7 = *(result + 13);
  v8 = v7 * a2 / v6;
  v9 = (v7 + v7 * a2) / v6 - v8;
  if (v9 >= 1)
  {
    v10 = 0;
    v11 = *(result + 24);
    v12 = *(result + 19);
    v13 = **(result + 8);
    v14 = **(result + 17);
    v15 = 8191.0 / *(v12 + 128);
    v16 = *(v12 + 72);
    v17 = *(v12 + 76);
    v18 = *(v12 + 80);
    v19 = *(v12 + 84);
    v20 = *(v12 + 88);
    v21 = *(v12 + 92);
    v22 = *(v12 + 96);
    v23 = *(v12 + 100);
    v24 = *(v12 + 104);
    v25 = v12 + 164;
    v26 = v12 + 16548;
    v27 = v8 + *(result + 15);
    v28 = *(result + 28) * a2 / v6 + *(result + 44);
    v29 = *(v12 + 157);
    v30 = *(v12 + 156);
    v31 = *(v12 + 155);
    v32 = *(v12 + 154);
    v33 = **(result + 16) + v14 * v27 + 8 * *(result + 14);
    v34 = **(result + 7) + v28 * v13 + 4 * *(result + 36);
    do
    {
      if (v11 >= 1)
      {
        v35 = v11;
        v36 = v34;
        v37 = v33;
        do
        {
          LOBYTE(_S21) = *(v36 + v32);
          LOBYTE(v3) = *(v36 + v31);
          LOBYTE(v4) = *(v36 + v30);
          LOBYTE(_S24) = *(v36 + v29);
          v36 += 4;
          _H21 = *(v25 + 2 * llroundf(fminf(fmaxf(v15 * LODWORD(_S21), 0.0), 8191.0)));
          __asm { FCVT            S21, H21 }

          _H22 = *(v25 + 2 * llroundf(fminf(fmaxf(v15 * LODWORD(v3), 0.0), 8191.0)));
          __asm { FCVT            S22, H22 }

          v46 = llroundf(fminf(fmaxf(v15 * LODWORD(v4), 0.0), 8191.0));
          v47 = (v17 * _S22) + (_S21 * v16);
          v48 = (v20 * _S22) + (_S21 * v19);
          v49 = (v23 * _S22) + (_S21 * v22);
          LOWORD(_S22) = *(v25 + 2 * v46);
          __asm { FCVT            S22, H22 }

          v4 = v47 + (_S22 * v18);
          v51 = v49 + (_S22 * v24);
          v3 = fminf(fmaxf(v48 + (_S22 * v21), 0.0), 8191.0);
          v52 = llroundf(v3);
          LOWORD(v3) = *(v26 + 2 * llroundf(fminf(fmaxf(v4, 0.0), 8191.0)));
          _S21 = fminf(fmaxf(v51, 0.0), 8191.0);
          v53 = llroundf(_S21);
          LOWORD(_S21) = *(v26 + 2 * v52);
          LOWORD(v4) = *(v26 + 2 * v53);
          _S24 = LODWORD(_S24) * 0.0039216;
          *v37 = LOWORD(v3);
          v37[1] = LOWORD(_S21);
          v37[2] = LOWORD(v4);
          __asm { FCVT            H21, S24 }

          v37[3] = LOWORD(_S21);
          v37 += 4;
          --v35;
        }

        while (v35);
      }

      v34 += v13;
      v33 += v14;
      ++v10;
    }

    while (v10 != v9);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_BGRA_rgb_RGhA_neon_fp16(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
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
  if (((*a4 * (v29.i64[1] + v27.i64[1]) + 4 * v29.i64[0]) > *a5 || (v30 = vaddq_s64(v40, v28), (*a8 * (v30.i64[1] + v27.i64[1]) + 8 * v30.i64[0]) > *a9)) && (v38 = v27, v39.i64[0] = a9, fig_log_get_emitter(), v31 = FigSignalErrorAtGM(), v24 = v40, v23 = v39.i64[0], v27 = v38, v31))
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
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_BGRA_rgb_RGhA_neon_fp16_GCD);
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

unsigned __int8 *vt_Copy_BGRA_rgb_RGhA_neon_fp16_GCD(unsigned __int8 *result, uint64_t a2)
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
  v17 = *(v10 + 128);
  v18 = *(v10 + 154);
  v73[0] = *(v10 + 154);
  v19 = *(v10 + 155);
  v73[1] = *(v10 + 155);
  v20 = *(v10 + 156);
  v73[2] = *(v10 + 156);
  v21 = *(v10 + 157);
  v73[3] = v21;
  v71 = 0u;
  v72 = 0u;
  v22 = v9 / v4;
  do
  {
    v23 = 0;
    v24 = v73[v2];
    v25 = *(&v71 + v2);
    do
    {
      v70 = v25;
      *(&v70 | v23 & 7) = v24 + 4 * v23;
      v25 = v70;
      ++v23;
    }

    while (v23 != 8);
    *(&v71 + v2++) = v70;
  }

  while (v2 != 4);
  v26 = v22 - v8;
  if (v22 - v8 >= 1)
  {
    v27 = 0;
    _S2 = 1.0 / v17;
    v29 = v15 + v16 + 8 * v5;
    v30 = v12 + v13 + 4 * v3;
    __asm { FCVT            H0, S2 }

    v36 = &dword_18FECDD34;
    v37 = vld1q_dup_f32(v36);
    *v37.i32 = _S2;
    v38 = vzip1q_s32(v37, v37);
    v38.f32[2] = _S2;
    v39 = vdupq_n_s16(0x1C04u);
    do
    {
      if (v6 < 8)
      {
        v56 = 0;
        v44 = v29;
        v43 = v30;
      }

      else
      {
        v40 = 0;
        v42 = *(&v71 + 8);
        v41 = v71;
        v43 = v30;
        v44 = v29;
        v46 = *(&v72 + 8);
        v45 = v72;
        do
        {
          v74.val[0].i64[0] = *v43;
          v47 = v43[1];
          v48.i64[0] = v43[2];
          v49 = v43[3];
          v43 += 4;
          v74.val[0].i64[1] = v47;
          v48.i64[1] = v49;
          v74.val[1] = v48;
          v50 = vqtbl2_s8(v74, v41);
          v51 = vqtbl2_s8(v74, v42);
          v52 = vqtbl2_s8(v74, v45);
          *v53.i8 = vzip1_s8(v50, 0);
          v53.u64[1] = vzip2_s8(v50, 0);
          *v54.i8 = vzip1_s8(v51, 0);
          v54.u64[1] = vzip2_s8(v51, 0);
          *v74.val[0].i8 = vqtbl2_s8(v74, v46);
          *v74.val[1].i8 = vzip1_s8(v52, 0);
          v74.val[1].u64[1] = vzip2_s8(v52, 0);
          v55 = vcvtq_f16_u16(v54);
          v75.val[0] = vmulq_n_f16(vcvtq_f16_u16(v53), _H0);
          v75.val[1] = vmulq_n_f16(v55, _H0);
          *v48.i8 = vzip1_s8(*v74.val[0].i8, 0);
          v75.val[2] = vmulq_n_f16(vcvtq_f16_u16(v74.val[1]), _H0);
          v48.u64[1] = vzip2_s8(*v74.val[0].i8, 0);
          v75.val[3] = vmulq_f16(vcvtq_f16_u16(v48), v39);
          vst4q_s16(v44, v75);
          v44 += 32;
          v40 += 8;
        }

        while (v40 < v6 - 7);
        v56 = v6 & 0x7FFFFFF8;
      }

      _VF = __OFSUB__(v6, v56);
      v57 = v6 - v56;
      if (!((v57 < 0) ^ _VF | (v57 == 0)))
      {
        v58 = v43 + v21;
        v59 = v43 + v20;
        v60 = v43 + v19;
        v61 = v43 + v18;
        do
        {
          v63 = *v61;
          v61 += 4;
          v62 = v63;
          v65 = *v60;
          v60 += 4;
          v64 = v65;
          v67 = *v59;
          v59 += 4;
          v66 = v67;
          v68 = *v58;
          v58 += 4;
          v69.i16[0] = v62;
          v69.i16[1] = v64;
          v69.i16[2] = v66;
          v69.i16[3] = v68;
          *v44 = vcvt_f16_f32(vmulq_f32(v38, vcvtq_f32_u32(vmovl_u16(v69))));
          v44 += 4;
          --v57;
        }

        while (v57);
      }

      v30 += v11;
      v29 += v14;
      ++v27;
    }

    while (v27 != v26);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_BGRA_rgb_RGhA(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
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
  if (((*a4 * (v29.i64[1] + v27.i64[1]) + 4 * v29.i64[0]) > *a5 || (v30 = vaddq_s64(v40, v28), (*a8 * (v30.i64[1] + v27.i64[1]) + 8 * v30.i64[0]) > *a9)) && (v38 = v27, v39.i64[0] = a9, fig_log_get_emitter(), v31 = FigSignalErrorAtGM(), v24 = v40, v23 = v39.i64[0], v27 = v38, v31))
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
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_BGRA_rgb_RGhA_GCD);
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

unsigned __int8 *vt_Copy_BGRA_rgb_RGhA_GCD(unsigned __int8 *result, uint64_t a2)
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
    v11 = 1.0 / *(v8 + 128);
    v12 = v4 + *(result + 15);
    v13 = *(result + 28) * a2 / v2 + *(result + 44);
    v14 = *(v8 + 157);
    v15 = *(v8 + 156);
    v16 = *(v8 + 155);
    v17 = *(v8 + 154);
    v18 = **(result + 16) + v10 * v12 + 8 * *(result + 14);
    v19 = &dword_18FECDD34;
    v20 = vld1q_dup_f32(v19);
    v21 = **(result + 7) + v13 * v9 + 4 * *(result + 36);
    *v20.i32 = v11;
    v22 = vzip1q_s32(v20, v20);
    v22.f32[2] = v11;
    do
    {
      if (v7 >= 1)
      {
        v23 = v7;
        v24 = v21;
        v25 = v18;
        do
        {
          v26 = (v24 + v17);
          v27 = (v24 + v16);
          v28 = (v24 + v15);
          v29 = (v24 + v14);
          v24 += 4;
          v30.i16[0] = *v26;
          v30.i16[1] = *v27;
          v30.i16[2] = *v28;
          v30.i16[3] = *v29;
          *v25++ = vcvt_f16_f32(vmulq_f32(v22, vcvtq_f32_u32(vmovl_u16(v30))));
          --v23;
        }

        while (v23);
      }

      v21 += v9;
      v18 += v10;
      ++v6;
    }

    while (v6 != v5);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_BGRA_TRC_Tone_Mat_TRC_RGfA_neon_fp16(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
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
  if (((*a4 * (v29.i64[1] + v27.i64[1]) + 4 * v29.i64[0]) > *a5 || (v30 = vaddq_s64(v40, v28), (*a8 * (v30.i64[1] + v27.i64[1]) + 16 * v30.i64[0]) > *a9)) && (v38 = v27, v39.i64[0] = a9, fig_log_get_emitter(), v31 = FigSignalErrorAtGM(), v24 = v40, v23 = v39.i64[0], v27 = v38, v31))
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
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_BGRA_TRC_Tone_Mat_TRC_RGfA_neon_fp16_GCD);
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

unint64_t vt_Copy_BGRA_TRC_Tone_Mat_TRC_RGfA_neon_fp16_GCD(unsigned __int8 *a1, uint64_t a2, double a3, double a4, double a5, double a6, double a7, double a8, float16x4_t _D6, float32x4_t a10)
{
  v11 = 0;
  v12 = *(a1 + 36);
  v13 = *a1;
  v14 = *(a1 + 14);
  v16 = *(a1 + 12);
  v15 = *(a1 + 13);
  v17 = *(a1 + 19);
  v18 = v15 * a2 / v13;
  v19 = **(a1 + 8);
  v20 = v15 + v15 * a2;
  v21 = **(a1 + 7);
  v22 = v19 * (*(a1 + 28) * a2 / v13 + *(a1 + 44));
  v23 = **(a1 + 17);
  v24 = **(a1 + 16);
  v25 = v23 * (v18 + *(a1 + 15));
  v26 = *(v17 + 128);
  v178[0] = *(v17 + 154);
  v27 = *(v17 + 155);
  v178[1] = *(v17 + 155);
  v28 = *(v17 + 156);
  v178[2] = *(v17 + 156);
  v29 = *(v17 + 157);
  v178[3] = *(v17 + 157);
  _S19 = *(v17 + 72);
  _S23 = *(v17 + 76);
  _S24 = *(v17 + 80);
  _S25 = *(v17 + 84);
  _S26 = *(v17 + 88);
  _S27 = *(v17 + 92);
  _S28 = *(v17 + 96);
  _S8 = *(v17 + 100);
  _S9 = *(v17 + 104);
  _S10 = *(v17 + 108);
  v173 = *(v17 + 116);
  v174 = *(v17 + 112);
  _S20 = *(v17 + 120);
  v176 = 0u;
  v177 = 0u;
  v41 = v20 / v13;
  do
  {
    v42 = 0;
    v43 = v178[v11];
    v44 = *(&v176 + v11);
    do
    {
      result = (v43 + 4 * v42);
      v175 = v44;
      *(&v175 | v42 & 7) = v43 + 4 * v42;
      v44 = v175;
      ++v42;
    }

    while (v42 != 8);
    *(&v176 + v11++) = v175;
  }

  while (v11 != 4);
  v46 = v41 - v18;
  if (v46 >= 1)
  {
    v47 = 0;
    _S22 = 8191.0 / v26;
    __asm { FCVT            H0, S10 }

    v172 = _H0;
    _S0 = v173;
    _S1 = v174;
    __asm
    {
      FCVT            H12, S1
      FCVT            H13, S0
      FCVT            H14, S20
      FCVT            H15, S19
    }

    v60 = v17 + 16548;
    v61 = v16 - 7;
    v62 = v17 + 32932;
    v63 = v17 + 164;
    __asm
    {
      FCVT            H0, S23
      FCVT            H1, S24
      FCVT            H2, S25
      FCVT            H3, S26
      FCVT            H4, S27
      FCVT            H11, S28
      FCVT            H5, S8
    }

    v171 = _H5;
    __asm { FCVT            H5, S9 }

    v170 = _H5;
    v72 = v24 + v25 + 16 * v14;
    v73 = v21 + v22 + 4 * v12;
    __asm { FCVT            H5, S22 }

    v151 = v16 & 0xFFFFFFF8;
    v152 = v46;
    v75.i64[0] = 0x9000900090009000;
    v75.i64[1] = 0x9000900090009000;
    result = &qword_18FECD000;
    v166 = v19;
    v167 = v16;
    v164 = v27;
    v165 = v23;
    v163 = v28;
    v161 = _S23;
    v162 = _S19;
    v159 = _S25;
    v160 = _S24;
    v157 = _S27;
    v158 = _S26;
    v155 = _S8;
    v156 = _S28;
    v153 = _S10;
    v154 = _S9;
    do
    {
      if (v16 < 8)
      {
        v128 = 0;
        v80 = v72;
        v79 = v73;
      }

      else
      {
        v76 = 0;
        v78 = *(&v176 + 8);
        v77 = v176;
        v168 = v73;
        v169 = v72;
        v79 = v73;
        v80 = v72;
        v82 = *(&v177 + 8);
        v81 = v177;
        do
        {
          v179.val[0].i64[0] = *v79;
          v83 = v79[1];
          v84.i64[0] = v79[2];
          v85 = v79[3];
          v79 += 4;
          v179.val[0].i64[1] = v83;
          v84.i64[1] = v85;
          v179.val[1] = v84;
          v86 = vqtbl2_s8(v179, v77);
          v87 = vqtbl2_s8(v179, v78);
          *v88.i8 = vzip1_s8(v86, 0);
          v88.u64[1] = vzip2_s8(v86, 0);
          *v89.i8 = vzip1_s8(v87, 0);
          v89.u64[1] = vzip2_s8(v87, 0);
          v90 = vqtbl2_s8(v179, v81);
          *v91.i8 = vzip1_s8(v90, 0);
          v91.u64[1] = vzip2_s8(v90, 0);
          v92 = vcvtq_f16_u16(v88);
          v93 = vcvtq_f16_u16(v91);
          v94 = vmulq_n_f16(vcvtq_f16_u16(v89), _H5);
          v95 = vmulq_n_f16(v93, _H5);
          v96 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmulq_n_f16(v92, _H5), 0), v75));
          v93.i16[0] = *(v63 + 2 * v96.u16[0]);
          v97 = (v63 + 2 * v96.u16[1]);
          v98 = (v63 + 2 * v96.u16[2]);
          v99 = (v63 + 2 * v96.u16[3]);
          v100 = (v63 + 2 * v96.u16[4]);
          v101 = (v63 + 2 * v96.u16[5]);
          v102 = (v63 + 2 * v96.u16[6]);
          v103 = v96.u16[7];
          v104 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v94, 0), v75));
          v105 = (v63 + 2 * v103);
          v94.i16[0] = *(v63 + 2 * v104.u16[0]);
          v106 = (v63 + 2 * v104.u16[3]);
          v107 = (v63 + 2 * v104.u16[4]);
          v108 = (v63 + 2 * v104.u16[5]);
          v109 = (v63 + 2 * v104.u16[6]);
          v93.i16[1] = *v97;
          v94.i16[1] = *(v63 + 2 * v104.u16[1]);
          v93.i16[2] = *v98;
          v110 = (v63 + 2 * v104.u16[7]);
          v94.i16[2] = *(v63 + 2 * v104.u16[2]);
          v93.i16[3] = *v99;
          v111 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v95, 0), v75));
          v94.i16[3] = *v106;
          v95.i16[0] = *(v63 + 2 * v111.u16[0]);
          v93.i16[4] = *v100;
          v94.i16[4] = *v107;
          v93.i16[5] = *v101;
          v94.i16[5] = *v108;
          v93.i16[6] = *v102;
          v95.i16[1] = *(v63 + 2 * v111.u16[1]);
          v94.i16[6] = *v109;
          v95.i16[2] = *(v63 + 2 * v111.u16[2]);
          v95.i16[3] = *(v63 + 2 * v111.u16[3]);
          v93.i16[7] = *v105;
          v95.i16[4] = *(v63 + 2 * v111.u16[4]);
          v95.i16[5] = *(v63 + 2 * v111.u16[5]);
          v94.i16[7] = *v110;
          v95.i16[6] = *(v63 + 2 * v111.u16[6]);
          v95.i16[7] = *(v63 + 2 * v111.u16[7]);
          v112 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v93, v172), v94, _H12), v95, _H13), vmaxq_f16(vmaxq_f16(v93, v94), v95), _H14), 0), v75));
          v112.i16[0] = *(v60 + 2 * v112.u16[0]);
          v112.i16[1] = *(v60 + 2 * v112.u16[1]);
          v112.i16[2] = *(v60 + 2 * v112.u16[2]);
          v112.i16[3] = *(v60 + 2 * v112.u16[3]);
          v112.i16[4] = *(v60 + 2 * v112.u16[4]);
          v112.i16[5] = *(v60 + 2 * v112.u16[5]);
          v112.i16[6] = *(v60 + 2 * v112.u16[6]);
          v112.i16[7] = *(v60 + 2 * v112.u16[7]);
          *v179.val[1].i8 = vqtbl2_s8(v179, v82);
          v179.val[0] = vmulq_f16(v93, v112);
          v113 = vmulq_f16(v94, v112);
          v114 = vmulq_f16(v95, v112);
          v115 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v179.val[0], _H2), v113, _H3), v114, _H4);
          v116 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v114, v170), v113, v171), v179.val[0], _H11);
          v117 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v179.val[0], _H15), v113, _H0), v114, _H1), 0), v75));
          v117.i16[0] = *(v62 + 2 * v117.u16[0]);
          v118 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v115, 0), v75));
          _D16.i16[0] = *(v62 + 2 * v117.u16[4]);
          v119 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v116, 0), v75));
          v120 = v119.u16[0];
          v121 = v119.u16[1];
          v122 = v119.u16[2];
          v118.i16[0] = *(v62 + 2 * v118.u16[0]);
          LOWORD(v107) = v119.i16[3];
          v123 = v119.u16[4];
          LOWORD(v110) = v119.i16[5];
          v124 = v119.u16[6];
          v117.i16[1] = *(v62 + 2 * v117.u16[1]);
          v125 = v119.u16[7];
          *v119.i8 = vzip1_s8(*v179.val[1].i8, 0);
          v117.i16[2] = *(v62 + 2 * v117.u16[2]);
          v119.u64[1] = vzip2_s8(*v179.val[1].i8, 0);
          v117.i16[3] = *(v62 + 2 * v117.u16[3]);
          v179.val[1] = vmulq_f16(vcvtq_f16_u16(v119), vdupq_n_s16(0x1C04u));
          v180.val[3] = vcvtq_f32_f16(*v179.val[1].i8);
          v180.val[0] = vcvtq_f32_f16(*v117.i8);
          _D6.i16[0] = *(v62 + 2 * v118.u16[4]);
          v118.i16[1] = *(v62 + 2 * v118.u16[1]);
          v118.i16[2] = *(v62 + 2 * v118.u16[2]);
          v118.i16[3] = *(v62 + 2 * v118.u16[3]);
          v180.val[1] = vcvtq_f32_f16(*v118.i8);
          v118.i16[0] = *(v62 + 2 * v120);
          v118.i16[1] = *(v62 + 2 * v121);
          v118.i16[2] = *(v62 + 2 * v122);
          v118.i16[3] = *(v62 + 2 * v107);
          v180.val[2] = vcvtq_f32_f16(*v118.i8);
          v118.i16[0] = *(v62 + 2 * v123);
          _D16.i16[1] = *(v62 + 2 * v117.u16[5]);
          _D16.i16[2] = *(v62 + 2 * v117.u16[6]);
          _D6.i16[1] = *(v62 + 2 * v118.u16[5]);
          _D16.i16[3] = *(v62 + 2 * v117.u16[7]);
          _D6.i16[2] = *(v62 + 2 * v118.u16[6]);
          v118.i16[1] = *(v62 + 2 * v110);
          _D6.i16[3] = *(v62 + 2 * v118.u16[7]);
          v118.i16[2] = *(v62 + 2 * v124);
          v118.i16[3] = *(v62 + 2 * v125);
          v126 = v80 + 128;
          vst4q_f32(v80, v180);
          v127 = (v80 + 64);
          v180.val[3] = vcvtq_f32_f16(*&vextq_s8(v179.val[1], v179.val[1], 8uLL));
          a10 = vcvtq_f32_f16(_D16);
          v180.val[1] = vcvtq_f32_f16(_D6);
          v180.val[2] = vcvtq_f32_f16(*v118.i8);
          vst4q_f32(v127, *a10.f32);
          v80 = v126;
          v76 += 8;
        }

        while (v76 < v61);
        v128 = v151;
        v46 = v152;
        v19 = v166;
        LODWORD(v16) = v167;
        v27 = v164;
        v23 = v165;
        v28 = v163;
        _S23 = v161;
        _S19 = v162;
        _S25 = v159;
        _S24 = v160;
        _S27 = v157;
        _S26 = v158;
        _S8 = v155;
        _S28 = v156;
        _S10 = v153;
        _S9 = v154;
        v73 = v168;
        v72 = v169;
        result = 0x18FECD000;
      }

      v129 = v16 - v128;
      if (v16 > v128)
      {
        do
        {
          _D6.i8[0] = *(v79 + v178[0]);
          a10.i8[0] = *(v79 + v27);
          _D16.i8[0] = *(v79 + v28);
          _H6 = *(v63 + 2 * llroundf(fminf(fmaxf(_S22 * _D6.u32[0], 0.0), 8191.0)));
          __asm { FCVT            S6, H6 }

          _H7 = *(v63 + 2 * llroundf(fminf(fmaxf(_S22 * a10.u32[0], 0.0), 8191.0)));
          __asm { FCVT            S7, H7 }

          _H16 = *(v63 + 2 * llroundf(fminf(fmaxf(_S22 * _D16.u32[0], 0.0), 8191.0)));
          __asm { FCVT            S16, H16 }

          v136 = (((v174 * _S7) + (_S10 * _S6)) + (v173 * _S16)) + (_S20 * fmaxf(_S6, fmaxf(_S7, _S16)));
          v137 = 8191.0;
          if (v136 <= 8191.0)
          {
            v137 = v136;
            if (v136 < 0.0)
            {
              v137 = 0.0;
            }
          }

          v138 = *(v79 + v29);
          v79 = (v79 + 4);
          _H17 = *(v60 + 2 * llroundf(v137));
          __asm { FCVT            S17, H17 }

          v141 = _S6 * _S17;
          _S7 = _S7 * _S17;
          _S16 = _S16 * _S17;
          v144 = ((_S23 * _S7) + (v141 * _S19)) + (_S16 * _S24);
          v145 = ((_S26 * _S7) + (v141 * _S25)) + (_S16 * _S27);
          _S6 = ((_S8 * _S7) + (v141 * _S28)) + (_S16 * _S9);
          LOWORD(_S7) = *(v62 + 2 * llroundf(fminf(fmaxf(v144, 0.0), 8191.0)));
          __asm { FCVT            S7, H7 }

          LOWORD(_S16) = *(v62 + 2 * llroundf(fminf(fmaxf(v145, 0.0), 8191.0)));
          LOWORD(_S6) = *(v62 + 2 * llroundf(fminf(fmaxf(_S6, 0.0), 8191.0)));
          __asm
          {
            FCVT            S16, H16
            FCVT            S6, H6
          }

          v148 = *(result + 3380);
          *v80 = _S7;
          *(v80 + 4) = _D16.i32[0];
          a10.f32[0] = v138 * v148;
          *(v80 + 8) = _D6.i32[0];
          *(v80 + 12) = a10.i32[0];
          v80 += 16;
          --v129;
        }

        while (v129);
      }

      v73 += v19;
      v72 += v23;
      ++v47;
    }

    while (v47 != v46);
  }

  *&a1[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_BGRA_TRC_Tone_Mat_TRC_RGfA(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
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
  if (((*a4 * (v29.i64[1] + v27.i64[1]) + 4 * v29.i64[0]) > *a5 || (v30 = vaddq_s64(v40, v28), (*a8 * (v30.i64[1] + v27.i64[1]) + 16 * v30.i64[0]) > *a9)) && (v38 = v27, v39.i64[0] = a9, fig_log_get_emitter(), v31 = FigSignalErrorAtGM(), v24 = v40, v23 = v39.i64[0], v27 = v38, v31))
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
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_BGRA_TRC_Tone_Mat_TRC_RGfA_GCD);
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

unsigned __int8 *vt_Copy_BGRA_TRC_Tone_Mat_TRC_RGfA_GCD(unsigned __int8 *result, uint64_t a2)
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
    v12 = **(result + 8);
    v13 = **(result + 17);
    v14 = 8191.0 / *(v11 + 128);
    v15 = *(v11 + 72);
    v16 = *(v11 + 76);
    v17 = *(v11 + 80);
    v18 = *(v11 + 84);
    v19 = *(v11 + 88);
    v20 = *(v11 + 92);
    v21 = *(v11 + 96);
    v22 = *(v11 + 100);
    v23 = v11 + 164;
    v24 = v11 + 16548;
    v25 = v11 + 32932;
    v26 = *(v11 + 104);
    v27 = *(v11 + 108);
    v28 = *(v11 + 112);
    v29 = *(v11 + 116);
    v30 = *(v11 + 120);
    v31 = v7 + *(result + 15);
    v32 = *(result + 28) * a2 / v5 + *(result + 44);
    v33 = *(v11 + 157);
    v34 = *(v11 + 156);
    v35 = *(v11 + 155);
    v36 = *(v11 + 154);
    v37 = **(result + 16) + v13 * v31 + 16 * *(result + 14);
    v38 = **(result + 7) + v32 * v12 + 4 * *(result + 36);
    do
    {
      if (v10 >= 1)
      {
        v39 = v10;
        v40 = v38;
        v41 = v37;
        do
        {
          LOBYTE(_S25) = *(v40 + v36);
          LOBYTE(v3) = *(v40 + v35);
          LOBYTE(_S27) = *(v40 + v34);
          _H25 = *(v23 + 2 * llroundf(fminf(fmaxf(v14 * _S25, 0.0), 8191.0)));
          __asm { FCVT            S25, H25 }

          _H26 = *(v23 + 2 * llroundf(fminf(fmaxf(v14 * LODWORD(v3), 0.0), 8191.0)));
          __asm { FCVT            S26, H26 }

          _H27 = *(v23 + 2 * llroundf(fminf(fmaxf(v14 * _S27, 0.0), 8191.0)));
          __asm { FCVT            S27, H27 }

          v52 = (((v28 * _S26) + (v27 * _S25)) + (v29 * _S27)) + (v30 * fmaxf(_S25, fmaxf(_S26, _S27)));
          v53 = 8191.0;
          if (v52 <= 8191.0)
          {
            v53 = v52;
            if (v52 < 0.0)
            {
              v53 = 0.0;
            }
          }

          v54 = *(v40 + v33);
          v40 += 4;
          _H28 = *(v24 + 2 * llroundf(v53));
          __asm { FCVT            S28, H28 }

          v57 = _S25 * _S28;
          _S26 = _S26 * _S28;
          _S27 = _S27 * _S28;
          v60 = ((v16 * _S26) + (v57 * v15)) + (_S27 * v17);
          v61 = ((v19 * _S26) + (v57 * v18)) + (_S27 * v20);
          _S25 = ((v22 * _S26) + (v57 * v21)) + (_S27 * v26);
          LOWORD(_S26) = *(v25 + 2 * llroundf(fminf(fmaxf(v60, 0.0), 8191.0)));
          LOWORD(_S27) = *(v25 + 2 * llroundf(fminf(fmaxf(v61, 0.0), 8191.0)));
          __asm
          {
            FCVT            S26, H26
            FCVT            S27, H27
          }

          LOWORD(_S25) = *(v25 + 2 * llroundf(fminf(fmaxf(_S25, 0.0), 8191.0)));
          __asm { FCVT            S25, H25 }

          *v41 = _S26;
          *(v41 + 4) = _S27;
          v3 = v54 * 0.0039216;
          *(v41 + 8) = _S25;
          *(v41 + 12) = v3;
          v41 += 16;
          --v39;
        }

        while (v39);
      }

      v38 += v12;
      v37 += v13;
      ++v9;
    }

    while (v9 != v8);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_BGRA_TRC_Mat_TRC_RGfA_neon_fp16(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
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
  if (((*a4 * (v29.i64[1] + v27.i64[1]) + 4 * v29.i64[0]) > *a5 || (v30 = vaddq_s64(v40, v28), (*a8 * (v30.i64[1] + v27.i64[1]) + 16 * v30.i64[0]) > *a9)) && (v38 = v27, v39.i64[0] = a9, fig_log_get_emitter(), v31 = FigSignalErrorAtGM(), v24 = v40, v23 = v39.i64[0], v27 = v38, v31))
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
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_BGRA_TRC_Mat_TRC_RGfA_neon_fp16_GCD);
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

__int16 *vt_Copy_BGRA_TRC_Mat_TRC_RGfA_neon_fp16_GCD(unsigned __int8 *a1, uint64_t a2, double a3, double a4, float16x4_t _D2, double a6, float16x4_t _D4)
{
  v11 = 0;
  v12 = *(a1 + 36);
  v13 = *a1;
  v14 = *(a1 + 14);
  v16 = *(a1 + 12);
  v15 = *(a1 + 13);
  v17 = *(a1 + 19);
  v18 = v15 * a2 / v13;
  v19 = v15 + v15 * a2;
  v20 = **(a1 + 8);
  v21 = **(a1 + 7);
  v22 = v20 * (*(a1 + 28) * a2 / v13 + *(a1 + 44));
  v23 = **(a1 + 17);
  v24 = **(a1 + 16);
  v25 = v23 * (v18 + *(a1 + 15));
  v26 = *(v17 + 128);
  v149[0] = *(v17 + 154);
  v27 = *(v17 + 155);
  v149[1] = *(v17 + 155);
  v28 = *(v17 + 156);
  v149[2] = *(v17 + 156);
  v29 = *(v17 + 157);
  v149[3] = *(v17 + 157);
  _S7 = *(v17 + 72);
  _S20 = *(v17 + 76);
  _S25 = *(v17 + 80);
  _S26 = *(v17 + 84);
  _S27 = *(v17 + 88);
  _S28 = *(v17 + 92);
  _S31 = *(v17 + 96);
  _S19 = *(v17 + 100);
  _S16 = *(v17 + 104);
  v147 = 0u;
  v148 = 0u;
  v39 = v19 / v13;
  do
  {
    LODWORD(result) = 0;
    v41 = v149[v11];
    v42 = *(&v147 + v11);
    do
    {
      v146 = v42;
      *(&v146 | result & 7) = v41 + 4 * result;
      v42 = v146;
      result = (result + 1);
    }

    while (result != 8);
    *(&v147 + v11++) = v146;
  }

  while (v11 != 4);
  v43 = v39 - v18;
  if (v43 >= 1)
  {
    v44 = 0;
    v45 = v17 + 164;
    v46 = v17 + 16548;
    v47 = v16 - 7;
    _S18 = 8191.0 / v26;
    __asm
    {
      FCVT            H8, S7
      FCVT            H9, S20
      FCVT            H10, S25
      FCVT            H0, S26
      FCVT            H1, S27
      FCVT            H11, S28
      FCVT            H12, S31
      FCVT            H13, S19
      FCVT            H14, S16
    }

    v58 = v24 + v25 + 16 * v14;
    v59 = v21 + v22 + 4 * v12;
    __asm { FCVT            H15, S18 }

    v127 = v16 & 0xFFFFFFF8;
    v128 = v43;
    v61.i64[0] = 0x9000900090009000;
    v61.i64[1] = 0x9000900090009000;
    v62 = vdupq_n_s16(0x1C04u);
    v136 = v20;
    v137 = v16;
    v135 = v23;
    v133 = _S20;
    v134 = _S7;
    v131 = _S26;
    v132 = _S25;
    v129 = _S28;
    v130 = _S27;
    v144 = _H9;
    v145 = _H8;
    v142 = _H0;
    v143 = _H1;
    v140 = _H15;
    v141 = _H10;
    do
    {
      if (v16 < 8)
      {
        v110 = 0;
        v67 = v58;
        v66 = v59;
      }

      else
      {
        v139 = v44;
        v63 = 0;
        v65 = *(&v147 + 8);
        v64 = v147;
        v66 = v59;
        v138 = v58;
        v67 = v58;
        v69 = *(&v148 + 8);
        v68 = v148;
        do
        {
          v150.val[0].i64[0] = *v66;
          v70 = v66[1];
          v71.i64[0] = v66[2];
          v72 = v66[3];
          v66 += 4;
          v150.val[0].i64[1] = v70;
          v71.i64[1] = v72;
          v150.val[1] = v71;
          v73 = vqtbl2_s8(v150, v64);
          v74 = vqtbl2_s8(v150, v68);
          v75 = vqtbl2_s8(v150, v65);
          *v76.i8 = vzip1_s8(v73, 0);
          v76.u64[1] = vzip2_s8(v73, 0);
          *v77.i8 = vzip1_s8(v75, 0);
          v77.u64[1] = vzip2_s8(v75, 0);
          *v78.i8 = vzip1_s8(v74, 0);
          v78.u64[1] = vzip2_s8(v74, 0);
          v79 = vcvtq_f16_u16(v78);
          v80 = vmulq_n_f16(vcvtq_f16_u16(v76), _H15);
          v81 = vmulq_n_f16(vcvtq_f16_u16(v77), _H15);
          v82 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v80, 0), v61));
          v80.i16[0] = *(v45 + 2 * v82.u16[0]);
          v83 = vmulq_n_f16(v79, _H15);
          v84 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v81, 0), v61));
          v82.i16[0] = *(v45 + 2 * v84.u16[0]);
          v85 = (v45 + 2 * v84.u16[2]);
          v86 = (v45 + 2 * v84.u16[3]);
          v87 = (v45 + 2 * v84.u16[4]);
          v88 = (v45 + 2 * v84.u16[5]);
          v80.i16[1] = *(v45 + 2 * v82.u16[1]);
          v89 = v84.u16[7];
          v82.i16[1] = *(v45 + 2 * v84.u16[1]);
          v80.i16[2] = *(v45 + 2 * v82.u16[2]);
          v90 = (v45 + 2 * v84.u16[6]);
          v91 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v83, 0), v61));
          v82.i16[2] = *v85;
          v83.i16[0] = *(v45 + 2 * v91.u16[0]);
          v80.i16[3] = *(v45 + 2 * v82.u16[3]);
          v82.i16[3] = *v86;
          v80.i16[4] = *(v45 + 2 * v82.u16[4]);
          v82.i16[4] = *v87;
          v80.i16[5] = *(v45 + 2 * v82.u16[5]);
          v82.i16[5] = *v88;
          v83.i16[1] = *(v45 + 2 * v91.u16[1]);
          v80.i16[6] = *(v45 + 2 * v82.u16[6]);
          v83.i16[2] = *(v45 + 2 * v91.u16[2]);
          v83.i16[3] = *(v45 + 2 * v91.u16[3]);
          v82.i16[6] = *v90;
          v83.i16[4] = *(v45 + 2 * v91.u16[4]);
          v83.i16[5] = *(v45 + 2 * v91.u16[5]);
          v80.i16[7] = *(v45 + 2 * v82.u16[7]);
          v83.i16[6] = *(v45 + 2 * v91.u16[6]);
          v83.i16[7] = *(v45 + 2 * v91.u16[7]);
          v82.i16[7] = *(v45 + 2 * v89);
          *v81.i8 = vqtbl2_s8(v150, v69);
          v92 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v80, _H8), v82, _H9), v83, _H10), 0), v61));
          LOWORD(a6) = *(v46 + 2 * v92.u16[0]);
          _D2.i16[0] = *(v46 + 2 * v92.u16[4]);
          v93 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v80, _H0), v82, _H1), v83, *&_Q11), 0), v61));
          _D4.i16[0] = *(v46 + 2 * v93.u16[0]);
          v94 = (v46 + 2 * v93.u16[1]);
          v95 = (v46 + 2 * v93.u16[2]);
          v92.i16[0] = *(v46 + 2 * v93.u16[4]);
          result = (v46 + 2 * v93.u16[3]);
          v96 = (v46 + 2 * v93.u16[5]);
          v97 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v83, *&_Q14), v82, *&_Q13), v80, *&_Q12), 0), v61));
          v98 = (v46 + 2 * v93.u16[6]);
          v99 = (v46 + 2 * v93.u16[7]);
          v82.i16[0] = *(v46 + 2 * v97.u16[0]);
          v80.i16[0] = *(v46 + 2 * v97.u16[4]);
          v100 = (v46 + 2 * v97.u16[5]);
          *v93.i8 = vzip1_s8(*v81.i8, 0);
          v101 = (v46 + 2 * v97.u16[6]);
          v93.u64[1] = vzip2_s8(*v81.i8, 0);
          v102 = v97.u16[7];
          v103 = vmulq_f16(vcvtq_f16_u16(v93), v62);
          v151.val[3] = vcvtq_f32_f16(*v103.i8);
          v104 = _Q14;
          v105 = _Q11;
          v106 = _Q12;
          v107 = _Q13;
          v152.val[3] = vcvtq_f32_f16(*&vextq_s8(v103, v103, 8uLL));
          WORD1(a6) = *(v46 + 2 * v92.u16[1]);
          WORD2(a6) = *(v46 + 2 * v92.u16[2]);
          _D4.i16[1] = *v94;
          HIWORD(a6) = *(v46 + 2 * v92.u16[3]);
          _D4.i16[2] = *v95;
          v82.i16[1] = *(v46 + 2 * v97.u16[1]);
          _D4.i16[3] = *result;
          v82.i16[2] = *(v46 + 2 * v97.u16[2]);
          _D2.i16[1] = *(v46 + 2 * v92.u16[5]);
          v82.i16[3] = *(v46 + 2 * v97.u16[3]);
          _D2.i16[2] = *(v46 + 2 * v92.u16[6]);
          v92.i16[1] = *v96;
          _D2.i16[3] = *(v46 + 2 * v92.u16[7]);
          v151.val[0] = vcvtq_f32_f16(*&a6);
          v92.i16[2] = *v98;
          v92.i16[3] = *v99;
          v151.val[1] = vcvtq_f32_f16(_D4);
          v151.val[2] = vcvtq_f32_f16(*v82.i8);
          v80.i16[1] = *v100;
          v80.i16[2] = *v101;
          v152.val[0] = vcvtq_f32_f16(_D2);
          v152.val[1] = vcvtq_f32_f16(*v92.i8);
          v80.i16[3] = *(v46 + 2 * v102);
          v152.val[2] = vcvtq_f32_f16(*v80.i8);
          v108 = v67 + 128;
          vst4q_f32(v67, v151);
          v109 = (v67 + 64);
          _H9 = v144;
          _H8 = v145;
          vst4q_f32(v109, v152);
          _Q13 = v107;
          _Q12 = v106;
          _Q11 = v105;
          _Q14 = v104;
          _H15 = v140;
          _H10 = v141;
          _H0 = v142;
          _H1 = v143;
          v67 = v108;
          v63 += 8;
        }

        while (v63 < v47);
        v110 = v127;
        v43 = v128;
        v20 = v136;
        LODWORD(v16) = v137;
        v23 = v135;
        _S20 = v133;
        _S7 = v134;
        _S26 = v131;
        _S25 = v132;
        _S28 = v129;
        _S27 = v130;
        v44 = v139;
        v58 = v138;
      }

      v111 = v16 - v110;
      if (v16 > v110)
      {
        do
        {
          _D2.i8[0] = *(v66 + v27);
          LOBYTE(a6) = *(v66 + v149[0]);
          _D4.i8[0] = *(v66 + v28);
          v112 = llroundf(fminf(fmaxf(_S18 * _D2.u32[0], 0.0), 8191.0));
          _H2 = *(v45 + 2 * llroundf(fminf(fmaxf(_S18 * LODWORD(a6), 0.0), 8191.0)));
          _H3 = *(v45 + 2 * v112);
          __asm
          {
            FCVT            S3, H3
            FCVT            S2, H2
          }

          _H4 = *(v45 + 2 * llroundf(fminf(fmaxf(_S18 * _D4.u32[0], 0.0), 8191.0)));
          _S5 = (_S20 * _S3) + (_S2 * _S7);
          v119 = (_S27 * _S3) + (_S2 * _S26);
          *&v120 = _S19 * _S3;
          v121 = *&v120 + (_S2 * _S31);
          LOBYTE(v120) = *(v66 + v29);
          v66 = (v66 + 4);
          __asm { FCVT            S4, H4 }

          LOWORD(_S5) = *(v46 + 2 * llroundf(fminf(fmaxf(_S5 + (_S4 * _S25), 0.0), 8191.0)));
          _S2 = fmaxf(v121 + (_S4 * _S16), 0.0);
          LOWORD(_S4) = *(v46 + 2 * llroundf(fminf(fmaxf(v119 + (_S4 * _S28), 0.0), 8191.0)));
          LOWORD(_S2) = *(v46 + 2 * llroundf(fminf(_S2, 8191.0)));
          __asm
          {
            FCVT            S5, H5
            FCVT            S4, H4
            FCVT            S2, H2
          }

          *v67 = _S5;
          *(v67 + 4) = _D4.i32[0];
          *&a6 = v120 * 0.0039216;
          *(v67 + 8) = _D2.i32[0];
          *(v67 + 12) = LODWORD(a6);
          v67 += 16;
          --v111;
        }

        while (v111);
      }

      v59 += v20;
      v58 += v23;
      ++v44;
    }

    while (v44 != v43);
  }

  *&a1[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_BGRA_TRC_Mat_TRC_RGfA(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
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
  if (((*a4 * (v29.i64[1] + v27.i64[1]) + 4 * v29.i64[0]) > *a5 || (v30 = vaddq_s64(v40, v28), (*a8 * (v30.i64[1] + v27.i64[1]) + 16 * v30.i64[0]) > *a9)) && (v38 = v27, v39.i64[0] = a9, fig_log_get_emitter(), v31 = FigSignalErrorAtGM(), v24 = v40, v23 = v39.i64[0], v27 = v38, v31))
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
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_BGRA_TRC_Mat_TRC_RGfA_GCD);
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

unsigned __int8 *vt_Copy_BGRA_TRC_Mat_TRC_RGfA_GCD(unsigned __int8 *result, uint64_t a2)
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
    v12 = **(result + 8);
    v13 = **(result + 17);
    v14 = 8191.0 / *(v11 + 128);
    v15 = *(v11 + 72);
    v16 = *(v11 + 76);
    v17 = *(v11 + 80);
    v18 = *(v11 + 84);
    v19 = *(v11 + 88);
    v20 = *(v11 + 92);
    v21 = *(v11 + 96);
    v22 = *(v11 + 100);
    v23 = *(v11 + 104);
    v24 = v11 + 164;
    v25 = v11 + 16548;
    v26 = v7 + *(result + 15);
    v27 = *(result + 28) * a2 / v5 + *(result + 44);
    v28 = *(v11 + 157);
    v29 = *(v11 + 156);
    v30 = *(v11 + 155);
    v31 = *(v11 + 154);
    v32 = **(result + 16) + v13 * v26 + 16 * *(result + 14);
    v33 = **(result + 7) + v27 * v12 + 4 * *(result + 36);
    do
    {
      if (v10 >= 1)
      {
        v34 = v10;
        v35 = v33;
        v36 = v32;
        do
        {
          LOBYTE(v2) = *(v35 + v31);
          LOBYTE(v3) = *(v35 + v30);
          LOBYTE(_S23) = *(v35 + v29);
          v37 = llroundf(fminf(fmaxf(v14 * LODWORD(v2), 0.0), 8191.0));
          _S21 = v14 * _S23;
          _H23 = *(v24 + 2 * v37);
          __asm { FCVT            S23, H23 }

          _H22 = *(v24 + 2 * llroundf(fminf(fmaxf(v14 * LODWORD(v3), 0.0), 8191.0)));
          __asm { FCVT            S22, H22 }

          LOWORD(_S21) = *(v24 + 2 * llroundf(fminf(fmaxf(_S21, 0.0), 8191.0)));
          __asm { FCVT            S21, H21 }

          _S24 = ((v16 * _S22) + (_S23 * v15)) + (_S21 * v17);
          v49 = ((v19 * _S22) + (_S23 * v18)) + (_S21 * v20);
          *&v50 = (v22 * _S22) + (_S23 * v21);
          v51 = *&v50 + (_S21 * v23);
          LOBYTE(v50) = *(v35 + v28);
          v35 += 4;
          LOWORD(_S23) = *(v25 + 2 * llroundf(fminf(fmaxf(_S24, 0.0), 8191.0)));
          LOWORD(_S24) = *(v25 + 2 * llroundf(fminf(fmaxf(v49, 0.0), 8191.0)));
          __asm { FCVT            S23, H23 }

          v52 = llroundf(fminf(fmaxf(v51, 0.0), 8191.0));
          __asm { FCVT            S21, H24 }

          LOWORD(_S24) = *(v25 + 2 * v52);
          __asm { FCVT            S24, H24 }

          v3 = v50;
          *v36 = _S23;
          *(v36 + 4) = _S21;
          v2 = v3 * 0.0039216;
          *(v36 + 8) = _S24;
          *(v36 + 12) = v3 * 0.0039216;
          v36 += 16;
          --v34;
        }

        while (v34);
      }

      v33 += v12;
      v32 += v13;
      ++v9;
    }

    while (v9 != v8);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_BGRA_rgb_RGfA_neon_fp16(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
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
  if (((*a4 * (v29.i64[1] + v27.i64[1]) + 4 * v29.i64[0]) > *a5 || (v30 = vaddq_s64(v40, v28), (*a8 * (v30.i64[1] + v27.i64[1]) + 16 * v30.i64[0]) > *a9)) && (v38 = v27, v39.i64[0] = a9, fig_log_get_emitter(), v31 = FigSignalErrorAtGM(), v24 = v40, v23 = v39.i64[0], v27 = v38, v31))
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
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_BGRA_rgb_RGfA_neon_fp16_GCD);
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

unsigned __int8 *vt_Copy_BGRA_rgb_RGfA_neon_fp16_GCD(unsigned __int8 *result, uint64_t a2)
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
  v17 = *(v10 + 128);
  v76[0] = *(v10 + 154);
  v18 = *(v10 + 155);
  v76[1] = *(v10 + 155);
  v19 = *(v10 + 156);
  v76[2] = *(v10 + 156);
  v20 = *(v10 + 157);
  v76[3] = *(v10 + 157);
  v74 = 0u;
  v75 = 0u;
  v21 = v9 / v4;
  do
  {
    v22 = 0;
    v23 = v76[v2];
    v24 = *(&v74 + v2);
    do
    {
      v73 = v24;
      *(&v73 | v22 & 7) = v23 + 4 * v22;
      v24 = v73;
      ++v22;
    }

    while (v22 != 8);
    *(&v74 + v2++) = v73;
  }

  while (v2 != 4);
  v25 = v21 - v8;
  if (v21 - v8 >= 1)
  {
    v26 = 0;
    _S2 = 1.0 / v17;
    v28 = v15 + v16 + 16 * v5;
    v29 = v12 + v13 + 4 * v3;
    __asm { FCVT            H0, S2 }

    v35 = &dword_18FECDD34;
    v36 = v76[0];
    v37 = vld1q_dup_f32(v35);
    *v37.i32 = _S2;
    v38 = vzip1q_s32(v37, v37);
    v38.f32[2] = _S2;
    v39 = vdupq_n_s16(0x1C04u);
    do
    {
      if (v6 < 8)
      {
        v59 = 0;
        v44 = v28;
        v43 = v29;
      }

      else
      {
        v40 = 0;
        v42 = *(&v74 + 8);
        v41 = v74;
        v43 = v29;
        v44 = v28;
        v46 = *(&v75 + 8);
        v45 = v75;
        do
        {
          v77.val[0].i64[0] = *v43;
          v47 = v43[1];
          v48.i64[0] = v43[2];
          v49 = v43[3];
          v43 += 4;
          v77.val[0].i64[1] = v47;
          v48.i64[1] = v49;
          v77.val[1] = v48;
          v50 = vqtbl2_s8(v77, v41);
          v51 = vqtbl2_s8(v77, v42);
          v52 = vqtbl2_s8(v77, v45);
          *v77.val[0].i8 = vqtbl2_s8(v77, v46);
          *v77.val[1].i8 = vzip1_s8(v50, 0);
          v77.val[1].u64[1] = vzip2_s8(v50, 0);
          *v48.i8 = vzip1_s8(v51, 0);
          v48.u64[1] = vzip2_s8(v51, 0);
          *v53.i8 = vzip1_s8(v52, 0);
          v53.u64[1] = vzip2_s8(v52, 0);
          v77.val[1] = vmulq_n_f16(vcvtq_f16_u16(v77.val[1]), _H0);
          v54 = vmulq_n_f16(vcvtq_f16_u16(v48), _H0);
          *v55.i8 = vzip1_s8(*v77.val[0].i8, 0);
          v56 = vmulq_n_f16(vcvtq_f16_u16(v53), _H0);
          v55.u64[1] = vzip2_s8(*v77.val[0].i8, 0);
          v77.val[0] = vmulq_f16(vcvtq_f16_u16(v55), v39);
          v78.val[3] = vcvtq_f32_f16(*v77.val[0].i8);
          v79.val[3] = vcvtq_f32_f16(*&vextq_s8(v77.val[0], v77.val[0], 8uLL));
          v78.val[0] = vcvtq_f32_f16(*v77.val[1].i8);
          v78.val[1] = vcvtq_f32_f16(*v54.i8);
          v78.val[2] = vcvtq_f32_f16(*v56.i8);
          v79.val[0] = vcvtq_f32_f16(*&vextq_s8(v77.val[1], v77.val[1], 8uLL));
          v79.val[1] = vcvtq_f32_f16(*&vextq_s8(v54, v54, 8uLL));
          v79.val[2] = vcvtq_f32_f16(*&vextq_s8(v56, v56, 8uLL));
          v57 = v44 + 32;
          vst4q_f32(v44, v78);
          v58 = v44 + 16;
          vst4q_f32(v58, v79);
          v44 = v57;
          v40 += 8;
        }

        while (v40 < v6 - 7);
        v59 = v6 & 0x7FFFFFF8;
      }

      _VF = __OFSUB__(v6, v59);
      v60 = v6 - v59;
      if (!((v60 < 0) ^ _VF | (v60 == 0)))
      {
        v61 = v43 + v20;
        v62 = v43 + v19;
        v63 = v43 + v18;
        v64 = v43 + v36;
        do
        {
          v66 = *v64;
          v64 += 4;
          v65 = v66;
          v68 = *v63;
          v63 += 4;
          v67 = v68;
          v70 = *v62;
          v62 += 4;
          v69 = v70;
          v71 = *v61;
          v61 += 4;
          v72.i16[0] = v65;
          v72.i16[1] = v67;
          v72.i16[2] = v69;
          v72.i16[3] = v71;
          *v44 = vmulq_f32(v38, vcvtq_f32_u32(vmovl_u16(v72)));
          v44 += 4;
          --v60;
        }

        while (v60);
      }

      v29 += v11;
      v28 += v14;
      ++v26;
    }

    while (v26 != v25);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_BGRA_rgb_RGfA(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
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
  if (((*a4 * (v29.i64[1] + v27.i64[1]) + 4 * v29.i64[0]) > *a5 || (v30 = vaddq_s64(v40, v28), (*a8 * (v30.i64[1] + v27.i64[1]) + 16 * v30.i64[0]) > *a9)) && (v38 = v27, v39.i64[0] = a9, fig_log_get_emitter(), v31 = FigSignalErrorAtGM(), v24 = v40, v23 = v39.i64[0], v27 = v38, v31))
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
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_BGRA_rgb_RGfA_GCD);
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

unsigned __int8 *vt_Copy_BGRA_rgb_RGfA_GCD(unsigned __int8 *result, uint64_t a2)
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
    *v11.i32 = 1.0 / *(v8 + 128);
    v12 = v4 + *(result + 15);
    v13 = *(result + 28) * a2 / v2 + *(result + 44);
    v14 = *(v8 + 157);
    v15 = *(v8 + 156);
    v16 = *(v8 + 155);
    v17 = *(v8 + 154);
    v18 = **(result + 16) + v10 * v12 + 16 * *(result + 14);
    v19 = &dword_18FECDD34;
    v20 = vld1q_dup_f32(v19);
    v21 = **(result + 7) + v13 * v9 + 4 * *(result + 36);
    v20.i32[0] = v11.i32[0];
    v22 = vzip1q_s32(v20, v20);
    v22.i32[2] = v11.i32[0];
    do
    {
      if (v7 >= 1)
      {
        v23 = v7;
        v24 = v21;
        v25 = v18;
        do
        {
          v26 = (v24 + v15);
          v27 = (v24 + v14);
          v11.i8[0] = *(v24 + v17);
          v11.i8[2] = *(v24 + v16);
          v24 += 4;
          v11.i32[0] &= 0xFF00FFu;
          v11.i16[2] = *v26;
          v11.i16[3] = *v27;
          *v25++ = vmulq_f32(v22, vcvtq_f32_u32(vmovl_u16(v11)));
          --v23;
        }

        while (v23);
      }

      v21 += v9;
      v18 += v10;
      ++v6;
    }

    while (v6 != v5);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_l64r_TRC_Tone_Mat_TRC_420vf(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4, void *a5, uint64_t *a6, uint64_t a7, void *a8, void *a9)
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

  if (((v36 + v40 - 1) * *v66 + 8 * (v39 + v30)) > *v67)
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
  if ((v39 + v31 + *v61 * v45) > *a9)
  {
    v57 = v36;
    v41 = v30;
    v42 = v31;
    v43 = v9;
    v44 = a9;
    goto LABEL_54;
  }

  v47 = v60;
  if (*(v60 + 8) && ((v46 + 1 + ((v46 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v61[1] * ((v40 + v37 + 1) / 2 - 1) > a9[1])
  {
    v57 = v36;
    v41 = v30;
    v42 = v31;
    v43 = v9;
    v44 = a9;
    goto LABEL_54;
  }

  if (*(v60 + 16) && (v46 + v61[2] * v45) > a9[2])
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
  dispatch_apply_f(v9, global_queue, v23, vt_Copy_l64r_TRC_Tone_Mat_TRC_420vf_GCD);
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

int vt_Copy_l64r_TRC_Tone_Mat_TRC_420vf_GCD(unsigned __int8 *a1, uint64_t a2, double a3, double a4, float a5, float a6)
{
  v6 = 2 * *a1;
  v163 = a1;
  v7 = *(a1 + 13);
  v8 = v7 * a2;
  v9 = v7 * a2 / v6;
  v169 = 2 * ((v7 + v8) / v6 - v9);
  if (v169 >= 1)
  {
    v10 = 0;
    v11 = *(a1 + 19);
    v12 = *(a1 + 24) & 0xFFFFFFFE;
    v13 = **(a1 + 8);
    v14 = *(a1 + 16);
    v15 = *(a1 + 17);
    v17 = *v15;
    v16 = v15[1];
    v18 = v15[2];
    v19 = 8191.0 / *(v11 + 128);
    LOWORD(a5) = *(v11 + 144);
    v20 = LODWORD(a5);
    LOWORD(a6) = *(v11 + 146);
    v21 = LODWORD(a6);
    LOWORD(a6) = *(v11 + 148);
    v22 = LODWORD(a6);
    LOWORD(a6) = *(v11 + 150);
    *&v23 = LODWORD(a6);
    v192 = *&v23;
    LOWORD(v23) = *(v11 + 152);
    v24 = v23;
    v188 = *(v11 + 40);
    v189 = *(v11 + 36);
    v187 = *(v11 + 44);
    v185 = *(v11 + 52) * 0.25;
    v186 = *(v11 + 48) * 0.25;
    v183 = *(v11 + 60) * 0.25;
    v184 = *(v11 + 56) * 0.25;
    v181 = *(v11 + 72);
    v182 = *(v11 + 64) * 0.25;
    v179 = *(v11 + 76);
    v180 = *(v11 + 68) * 0.25;
    v25 = *(v11 + 88);
    v177 = *(v11 + 84);
    v178 = *(v11 + 80);
    v175 = *(v11 + 92);
    v176 = v25;
    v27 = *(v11 + 100);
    v26 = *(v11 + 104);
    v173 = v27;
    v174 = *(v11 + 96);
    v172 = v26;
    v28 = v11 + 164;
    v29 = v11 + 16548;
    v30 = v11 + 32932;
    v32 = *(v11 + 108);
    v31 = *(v11 + 112);
    v33 = *(v11 + 116);
    v34 = *(v11 + 120);
    v35 = *(a1 + 14);
    v36 = *(a1 + 15) + 2 * v9;
    v38 = v14[1];
    v37 = v14[2];
    if (v37)
    {
      v39 = (v37 + v18 * v36 + v35);
    }

    else
    {
      v39 = 0;
    }

    v40 = (*v14 + v17 * v36 + v35);
    a1 = (**(a1 + 7) + (*(a1 + 44) + 2 * (*(a1 + 28) * a2 / v6)) * v13);
    v41 = &a1[8 * *(v163 + 36)];
    v42 = *(v11 + 157);
    v43 = *(v11 + 156);
    v166 = v16;
    v167 = v17;
    v44 = v38 + v16 * (v36 / 2);
    v45 = *(v11 + 155);
    v46 = *(v11 + 154);
    v47 = v44 + v35;
    v170 = *(v11 + 120);
    v171 = *(v11 + 116);
    v168 = v13;
    v165 = v18;
    v190 = v24;
    v191 = v21;
    do
    {
      v48 = &v41[v13];
      v49 = &v40[v17];
      v50 = &v39[v18];
      if (v12 >= 1)
      {
        v51 = 0;
        v52 = v50;
        v53 = v49;
        v54 = v48;
        do
        {
          LOWORD(v26) = *&v41[2 * v46];
          LOWORD(v27) = *&v41[2 * v45];
          LOWORD(v25) = *&v41[2 * v43];
          _H3 = *(v28 + 2 * llroundf(fminf(fmaxf(v19 * LODWORD(v26), 0.0), 8191.0)));
          v56 = v19 * LODWORD(v25);
          __asm { FCVT            S14, H3 }

          _H3 = *(v28 + 2 * llroundf(fminf(fmaxf(v19 * LODWORD(v27), 0.0), 8191.0)));
          __asm { FCVT            S15, H3 }

          _H3 = *(v28 + 2 * llroundf(fminf(fmaxf(v56, 0.0), 8191.0)));
          __asm { FCVT            S18, H3 }

          v66 = fmaxf(_S14, fmaxf(_S15, _S18));
          v67 = (((v31 * _S15) + (v32 * _S14)) + (v33 * _S18)) + (v34 * v66);
          v68 = 8191.0;
          if (v67 <= 8191.0)
          {
            v68 = (((v31 * _S15) + (v32 * _S14)) + (v33 * _S18)) + (v34 * v66);
            if (v67 < 0.0)
            {
              v68 = 0.0;
            }
          }

          LOWORD(v67) = *&v41[2 * v46 + 8];
          LOWORD(v66) = *&v41[2 * v45 + 8];
          LOWORD(v56) = *&v41[2 * v43 + 8];
          _H3 = *(v28 + 2 * llroundf(fminf(fmaxf(v19 * LODWORD(v67), 0.0), 8191.0)));
          __asm { FCVT            S20, H3 }

          _H3 = *(v28 + 2 * llroundf(fminf(fmaxf(v19 * LODWORD(v66), 0.0), 8191.0)));
          __asm { FCVT            S21, H3 }

          _H3 = *(v28 + 2 * llroundf(fminf(fmaxf(v19 * LODWORD(v56), 0.0), 8191.0)));
          __asm { FCVT            S22, H3 }

          v75 = fmaxf(_S20, fmaxf(_S21, _S22));
          v76 = (((v31 * _S21) + (v32 * _S20)) + (v33 * _S22)) + (v34 * v75);
          v77 = 8191.0;
          if (v76 <= 8191.0)
          {
            v77 = (((v31 * _S21) + (v32 * _S20)) + (v33 * _S22)) + (v34 * v75);
            if (v76 < 0.0)
            {
              v77 = 0.0;
            }
          }

          LOWORD(v76) = *&v54[2 * v46];
          LOWORD(v75) = *&v54[2 * v45];
          *&v78 = LODWORD(v75);
          _S6 = v19 * *&v78;
          LOWORD(v78) = *&v54[2 * v43];
          _H3 = *(v28 + 2 * llroundf(fminf(fmaxf(v19 * LODWORD(v76), 0.0), 8191.0)));
          v81 = v19 * v78;
          __asm { FCVT            S5, H3 }

          _H3 = *(v28 + 2 * llroundf(fminf(fmaxf(_S6, 0.0), 8191.0)));
          __asm { FCVT            S3, H3 }

          LOWORD(_S6) = *(v28 + 2 * llroundf(fminf(fmaxf(v81, 0.0), 8191.0)));
          __asm { FCVT            S7, H6 }

          v86 = (((v31 * _S3) + (v32 * _S5)) + (v33 * _S7)) + (v34 * fmaxf(_S5, fmaxf(_S3, _S7)));
          v87 = 8191.0;
          if (v86 <= 8191.0)
          {
            v87 = v86;
            if (v86 < 0.0)
            {
              v87 = 0.0;
            }
          }

          LOWORD(v86) = *&v54[2 * v46 + 8];
          LOWORD(v21) = *&v54[2 * v45 + 8];
          *&v88 = LODWORD(v21);
          _S23 = v19 * *&v88;
          LOWORD(v88) = *&v54[2 * v43 + 8];
          _H6 = *(v28 + 2 * llroundf(fminf(fmaxf(v19 * LODWORD(v86), 0.0), 8191.0)));
          v91 = v19 * v88;
          __asm { FCVT            S17, H6 }

          _H6 = *(v28 + 2 * llroundf(fminf(fmaxf(_S23, 0.0), 8191.0)));
          __asm { FCVT            S6, H6 }

          LOWORD(_S23) = *(v28 + 2 * llroundf(fminf(fmaxf(v91, 0.0), 8191.0)));
          __asm { FCVT            S23, H23 }

          v96 = v32;
          v97 = (((v31 * _S6) + (v32 * _S17)) + (v33 * _S23)) + (v34 * fmaxf(_S17, fmaxf(_S6, _S23)));
          v98 = 8191.0;
          if (v97 <= 8191.0)
          {
            v98 = v97;
            if (v97 < 0.0)
            {
              v98 = 0.0;
            }
          }

          if (v39)
          {
            v99 = llroundf(*&v41[2 * v42] * 0.0038911);
            v100 = llroundf(*&v41[2 * v42 + 8] * 0.0038911);
            v101 = llroundf(*&v54[2 * v42] * 0.0038911);
            LODWORD(a1) = llroundf(*&v54[2 * v42 + 8] * 0.0038911);
          }

          else
          {
            v101 = 0;
            v99 = 0;
            v100 = 0;
            LODWORD(a1) = 0;
          }

          _H19 = *(v29 + 2 * llroundf(v68));
          __asm { FCVT            S19, H19 }

          v104 = _S14 * _S19;
          v105 = _S15 * _S19;
          v106 = _S18 * _S19;
          LOWORD(_S19) = *(v29 + 2 * llroundf(v77));
          __asm { FCVT            S19, H19 }

          v108 = _S20 * _S19;
          v109 = _S21 * _S19;
          v110 = _S22 * _S19;
          _H16 = *(v29 + 2 * llroundf(v87));
          __asm { FCVT            S16, H16 }

          _S5 = _S5 * _S16;
          _S3 = _S3 * _S16;
          v115 = _S7 * _S16;
          LOWORD(_S16) = *(v29 + 2 * llroundf(v98));
          __asm { FCVT            S16, H16 }

          _S17 = _S17 * _S16;
          _S6 = _S6 * _S16;
          v119 = _S23 * _S16;
          v120 = ((v179 * v105) + (v104 * v181)) + (v106 * v178);
          _S23 = ((v176 * v105) + (v104 * v177)) + (v106 * v175);
          v122 = ((v173 * v105) + (v104 * v174)) + (v106 * v172);
          v123 = ((v179 * v109) + (v108 * v181)) + (v110 * v178);
          v124 = ((v176 * v109) + (v108 * v177)) + (v110 * v175);
          v125 = ((v173 * v109) + (v108 * v174)) + (v110 * v172);
          v126 = ((v179 * _S3) + (_S5 * v181)) + (v115 * v178);
          _S21 = ((v176 * _S3) + (_S5 * v177)) + (v115 * v175);
          v128 = ((v173 * _S3) + (_S5 * v174)) + (v115 * v172);
          v129 = ((v179 * _S6) + (_S17 * v181)) + (v119 * v178);
          v130 = ((v176 * _S6) + (_S17 * v177)) + (v119 * v175);
          v131 = ((v173 * _S6) + (_S17 * v174)) + (v119 * v172);
          LOWORD(_S3) = *(v30 + 2 * llroundf(fminf(fmaxf(v120, 0.0), 8191.0)));
          __asm { FCVT            S7, H3 }

          LOWORD(_S3) = *(v30 + 2 * llroundf(fminf(fmaxf(_S23, 0.0), 8191.0)));
          __asm { FCVT            S3, H3 }

          LOWORD(_S5) = *(v30 + 2 * llroundf(fminf(fmaxf(v122, 0.0), 8191.0)));
          __asm { FCVT            S5, H5 }

          LOWORD(_S6) = *(v30 + 2 * llroundf(fminf(fmaxf(v123, 0.0), 8191.0)));
          __asm { FCVT            S16, H6 }

          LOWORD(_S6) = *(v30 + 2 * llroundf(fminf(fmaxf(v124, 0.0), 8191.0)));
          LOWORD(_S17) = *(v30 + 2 * llroundf(fminf(fmaxf(v125, 0.0), 8191.0)));
          __asm
          {
            FCVT            S18, H6
            FCVT            S17, H17
          }

          LOWORD(_S6) = *(v30 + 2 * llroundf(fminf(fmaxf(v126, 0.0), 8191.0)));
          __asm { FCVT            S20, H6 }

          LOWORD(_S6) = *(v30 + 2 * llroundf(fminf(fmaxf(_S21, 0.0), 8191.0)));
          __asm { FCVT            S19, H6 }

          LOWORD(_S6) = *(v30 + 2 * llroundf(fminf(fmaxf(v128, 0.0), 8191.0)));
          __asm { FCVT            S6, H6 }

          LOWORD(_S21) = *(v30 + 2 * llroundf(fminf(fmaxf(v129, 0.0), 8191.0)));
          __asm { FCVT            S22, H21 }

          LOWORD(_S21) = *(v30 + 2 * llroundf(fminf(fmaxf(v130, 0.0), 8191.0)));
          LOWORD(_S23) = *(v30 + 2 * llroundf(fminf(fmaxf(v131, 0.0), 8191.0)));
          __asm
          {
            FCVT            S24, H21
            FCVT            S21, H23
          }

          v144 = (((v188 * _S3) + (v189 * _S7)) + (v187 * _S5)) + v20;
          if (v144 < v20)
          {
            v145 = v20;
          }

          else
          {
            v145 = (((v188 * _S3) + (v189 * _S7)) + (v187 * _S5)) + v20;
          }

          v146 = v144 <= v22;
          v147 = (((v188 * _S18) + (v189 * _S16)) + (v187 * _S17)) + v20;
          if (!v146)
          {
            v145 = v22;
          }

          v148 = llroundf(v145);
          if (v147 < v20)
          {
            v149 = v20;
          }

          else
          {
            v149 = (((v188 * _S18) + (v189 * _S16)) + (v187 * _S17)) + v20;
          }

          v146 = v147 <= v22;
          v150 = (((v188 * _S19) + (v189 * _S20)) + (v187 * _S6)) + v20;
          if (!v146)
          {
            v149 = v22;
          }

          v151 = llroundf(v149);
          if (v150 < v20)
          {
            v152 = v20;
          }

          else
          {
            v152 = (((v188 * _S19) + (v189 * _S20)) + (v187 * _S6)) + v20;
          }

          v146 = v150 <= v22;
          v153 = (((v188 * _S24) + (v189 * _S22)) + (v187 * _S21)) + v20;
          if (!v146)
          {
            v152 = v22;
          }

          v154 = llroundf(v152);
          if (v153 < v20)
          {
            v155 = v20;
          }

          else
          {
            v155 = (((v188 * _S24) + (v189 * _S22)) + (v187 * _S21)) + v20;
          }

          if (v153 <= v22)
          {
            v156 = v155;
          }

          else
          {
            v156 = v22;
          }

          v157 = ((_S7 + _S16) + _S20) + _S22;
          v158 = ((_S3 + _S18) + _S19) + _S24;
          *v40 = v148;
          v40[1] = v151;
          *v53 = v154;
          v53[1] = llroundf(v156);
          v159 = (_S5 + _S17) + _S6;
          HIWORD(v21) = HIWORD(v191);
          v160 = v159 + _S21;
          v161 = ((v191 + (v157 * v186)) + (v158 * v185)) + (v160 * v184);
          v25 = v190;
          if (v161 <= v190)
          {
            v25 = ((v191 + (v157 * v186)) + (v158 * v185)) + (v160 * v184);
            if (v161 < v192)
            {
              v25 = v192;
            }
          }

          v26 = ((v191 + (v157 * v183)) + (v158 * v182)) + (v160 * v180);
          *(v47 + v51) = llroundf(v25);
          v27 = v190;
          v32 = v96;
          if (v26 <= v190)
          {
            v27 = v26;
            if (v26 < v192)
            {
              v27 = v192;
            }
          }

          *(v47 + v51 + 1) = llroundf(v27);
          v34 = v170;
          v33 = v171;
          if (v39)
          {
            *v39 = v99;
            v39[1] = v100;
            v39 += 2;
            *v52 = v101;
            v52[1] = a1;
            v52 += 2;
          }

          v41 += 16;
          v54 += 16;
          v40 += 2;
          v53 += 2;
          v51 += 2;
        }

        while (v51 < v12);
      }

      v41 = &v48[v168];
      v13 = v168;
      v40 = &v49[v167];
      v17 = v167;
      v47 += v166;
      v39 = &v50[v165];
      v18 = v165;
      v10 += 2;
    }

    while (v10 < v169);
  }

  *&v163[4 * a2 + 160] = 0;
  return a1;
}

uint64_t vt_Copy_l64r_TRC_Mat_TRC_420vf(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4, void *a5, uint64_t *a6, uint64_t a7, void *a8, void *a9)
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

  if (((v36 + v40 - 1) * *v66 + 8 * (v39 + v30)) > *v67)
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
  if ((v39 + v31 + *v61 * v45) > *a9)
  {
    v57 = v36;
    v41 = v30;
    v42 = v31;
    v43 = v9;
    v44 = a9;
    goto LABEL_54;
  }

  v47 = v60;
  if (*(v60 + 8) && ((v46 + 1 + ((v46 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v61[1] * ((v40 + v37 + 1) / 2 - 1) > a9[1])
  {
    v57 = v36;
    v41 = v30;
    v42 = v31;
    v43 = v9;
    v44 = a9;
    goto LABEL_54;
  }

  if (*(v60 + 16) && (v46 + v61[2] * v45) > a9[2])
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
  dispatch_apply_f(v9, global_queue, v23, vt_Copy_l64r_TRC_Mat_TRC_420vf_GCD);
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

int vt_Copy_l64r_TRC_Mat_TRC_420vf_GCD(unsigned __int8 *a1, uint64_t a2, double a3, double a4, float a5, float a6, float a7, float a8)
{
  v17 = 2 * *a1;
  v140 = a1;
  v18 = *(a1 + 13);
  v19 = v18 * a2;
  v20 = v18 * a2 / v17;
  v145 = 2 * ((v18 + v19) / v17 - v20);
  if (v145 >= 1)
  {
    v21 = 0;
    v22 = *(a1 + 19);
    v23 = *(a1 + 24) & 0xFFFFFFFE;
    v24 = *(a1 + 7);
    v25 = **(v140 + 8);
    v26 = *(v140 + 16);
    v27 = *(v140 + 17);
    v29 = *v27;
    v28 = v27[1];
    v30 = v27[2];
    v31 = 8191.0 / *(v22 + 128);
    LOWORD(a5) = *(v22 + 144);
    v32 = LODWORD(a5);
    LOWORD(a6) = *(v22 + 146);
    *&v33 = LODWORD(a6);
    LOWORD(a7) = *(v22 + 148);
    v34 = LODWORD(a7);
    LOWORD(a8) = *(v22 + 150);
    v156 = LODWORD(a6);
    v157 = LODWORD(a8);
    LOWORD(v33) = *(v22 + 152);
    v154 = *(v22 + 36);
    v155 = v33;
    v152 = *(v22 + 44);
    v153 = *(v22 + 40);
    v35 = 0.25;
    v150 = *(v22 + 52) * 0.25;
    v151 = *(v22 + 48) * 0.25;
    v36 = *(v22 + 64);
    v148 = *(v22 + 60) * 0.25;
    v149 = *(v22 + 56) * 0.25;
    v37 = *(v22 + 68);
    v38 = *(v22 + 72);
    v146 = v37 * 0.25;
    v147 = v36 * 0.25;
    v39 = *(v22 + 76);
    v40 = *(v22 + 80);
    v41 = *(v22 + 84);
    v42 = *(v22 + 88);
    v43 = *(v22 + 92);
    v44 = *(v22 + 96);
    v46 = *(v22 + 100);
    v45 = *(v22 + 104);
    v47 = v22 + 164;
    v48 = v22 + 16548;
    v49 = *(v140 + 14);
    v50 = *(v140 + 15) + 2 * v20;
    v51 = *(v140 + 44) + 2 * (*(v140 + 28) * a2 / v17);
    v52 = v26[1];
    v53 = v26[2];
    if (v53)
    {
      v54 = (v53 + v30 * v50 + v49);
    }

    else
    {
      v54 = 0;
    }

    v55 = (*v26 + v29 * v50 + v49);
    a1 = (*v24 + v51 * v25);
    v56 = &a1[8 * *(v140 + 36)];
    v57 = *(v22 + 157);
    v58 = *(v22 + 156);
    v143 = v28;
    v144 = v29;
    v59 = v52 + v28 * (v50 / 2);
    v60 = *(v22 + 155);
    v61 = *(v22 + 154);
    v62 = v59 + v49;
    v142 = v30;
    do
    {
      v63 = v25;
      v64 = &v56[v25];
      v65 = &v55[v29];
      v66 = &v54[v30];
      if (v23 >= 1)
      {
        v67 = 0;
        v68 = v66;
        v69 = v65;
        v70 = v64;
        do
        {
          v71 = v56 + 8;
          v72 = v70 + 8;
          if (v54)
          {
            LOWORD(v37) = *&v56[2 * v57];
            HIWORD(v35) = 15231;
            v73 = LODWORD(v37) * 0.0038911;
            v74 = llroundf(v73);
            LOWORD(v73) = *&v71[2 * v57];
            v75 = LODWORD(v73) * 0.0038911;
            v76 = llroundf(v75);
            LOWORD(v75) = *&v70[2 * v57];
            v77 = LODWORD(v75) * 0.0038911;
            v78 = llroundf(v77);
            LOWORD(v77) = *&v72[2 * v57];
            v37 = LODWORD(v77) * 0.0038911;
            v79 = llroundf(v37);
          }

          else
          {
            v78 = 0;
            v74 = 0;
            v76 = 0;
            v79 = 0;
          }

          LOWORD(v37) = *&v56[2 * v61];
          LOWORD(v35) = *&v56[2 * v60];
          LOWORD(v36) = *&v56[2 * v58];
          LOWORD(v14) = *&v71[2 * v61];
          LOWORD(v15) = *&v71[2 * v60];
          LOWORD(_S10) = *&v71[2 * v58];
          LOWORD(_S11) = *&v70[2 * v61];
          LOWORD(_S12) = *&v70[2 * v60];
          LOWORD(_S13) = *&v70[2 * v58];
          LOWORD(_S14) = *&v72[2 * v61];
          LOWORD(_S15) = *&v72[2 * v60];
          LOWORD(v16) = *&v72[2 * v58];
          _H18 = *(v47 + 2 * llroundf(fminf(fmaxf(v31 * LODWORD(v37), 0.0), 8191.0)));
          __asm { FCVT            S18, H18 }

          _H19 = *(v47 + 2 * llroundf(fminf(fmaxf(v31 * LODWORD(v35), 0.0), 8191.0)));
          __asm { FCVT            S19, H19 }

          _H20 = *(v47 + 2 * llroundf(fminf(fmaxf(v31 * LODWORD(v36), 0.0), 8191.0)));
          __asm { FCVT            S20, H20 }

          _H21 = *(v47 + 2 * llroundf(fminf(fmaxf(v31 * LODWORD(v14), 0.0), 8191.0)));
          __asm { FCVT            S21, H21 }

          _H22 = *(v47 + 2 * llroundf(fminf(fmaxf(v31 * LODWORD(v15), 0.0), 8191.0)));
          _H10 = *(v47 + 2 * llroundf(fminf(fmaxf(v31 * LODWORD(_S10), 0.0), 8191.0)));
          __asm
          {
            FCVT            S22, H22
            FCVT            S10, H10
          }

          _H11 = *(v47 + 2 * llroundf(fminf(fmaxf(v31 * LODWORD(_S11), 0.0), 8191.0)));
          __asm { FCVT            S11, H11 }

          _H12 = *(v47 + 2 * llroundf(fminf(fmaxf(v31 * LODWORD(_S12), 0.0), 8191.0)));
          __asm { FCVT            S12, H12 }

          _H13 = *(v47 + 2 * llroundf(fminf(fmaxf(v31 * LODWORD(_S13), 0.0), 8191.0)));
          __asm { FCVT            S13, H13 }

          _H14 = *(v47 + 2 * llroundf(fminf(fmaxf(v31 * LODWORD(_S14), 0.0), 8191.0)));
          __asm { FCVT            S14, H14 }

          _H15 = *(v47 + 2 * llroundf(fminf(fmaxf(v31 * LODWORD(_S15), 0.0), 8191.0)));
          _H24 = *(v47 + 2 * llroundf(fminf(fmaxf(v31 * LODWORD(v16), 0.0), 8191.0)));
          __asm
          {
            FCVT            S15, H15
            FCVT            S24, H24
          }

          _S5 = ((v39 * _S19) + (_S18 * v38)) + (_S20 * v40);
          _S3 = ((v42 * _S19) + (_S18 * v41)) + (_S20 * v43);
          v110 = ((v46 * _S19) + (_S18 * v44)) + (_S20 * v45);
          v111 = ((v39 * _S22) + (_S21 * v38)) + (_S10 * v40);
          v112 = ((v42 * _S22) + (_S21 * v41)) + (_S10 * v43);
          v113 = ((v46 * _S22) + (_S21 * v44)) + (_S10 * v45);
          v114 = ((v39 * _S12) + (_S11 * v38)) + (_S13 * v40);
          v115 = ((v42 * _S12) + (_S11 * v41)) + (_S13 * v43);
          v116 = ((v46 * _S12) + (_S11 * v44)) + (_S13 * v45);
          v117 = ((v39 * _S15) + (_S14 * v38)) + (_S24 * v40);
          v118 = ((v42 * _S15) + (_S14 * v41)) + (_S24 * v43);
          v16 = ((v46 * _S15) + (_S14 * v44)) + (_S24 * v45);
          LOWORD(_S5) = *(v48 + 2 * llroundf(fminf(fmaxf(_S5, 0.0), 8191.0)));
          __asm { FCVT            S12, H5 }

          LOWORD(_S3) = *(v48 + 2 * llroundf(fminf(fmaxf(_S3, 0.0), 8191.0)));
          __asm { FCVT            S10, H3 }

          LOWORD(_S3) = *(v48 + 2 * llroundf(fminf(fmaxf(v110, 0.0), 8191.0)));
          __asm { FCVT            S11, H3 }

          LOWORD(_S3) = *(v48 + 2 * llroundf(fminf(fmaxf(v111, 0.0), 8191.0)));
          __asm { FCVT            S13, H3 }

          LOWORD(_S3) = *(v48 + 2 * llroundf(fminf(fmaxf(v112, 0.0), 8191.0)));
          LOWORD(_S5) = *(v48 + 2 * llroundf(fminf(fmaxf(v113, 0.0), 8191.0)));
          __asm
          {
            FCVT            S15, H3
            FCVT            S14, H5
          }

          LOWORD(_S3) = *(v48 + 2 * llroundf(fminf(fmaxf(v114, 0.0), 8191.0)));
          __asm { FCVT            S20, H3 }

          LOWORD(_S3) = *(v48 + 2 * llroundf(fminf(fmaxf(v115, 0.0), 8191.0)));
          __asm { FCVT            S19, H3 }

          LOWORD(_S3) = *(v48 + 2 * llroundf(fminf(fmaxf(v116, 0.0), 8191.0)));
          __asm { FCVT            S18, H3 }

          LOWORD(_S3) = *(v48 + 2 * llroundf(fminf(fmaxf(v117, 0.0), 8191.0)));
          __asm { FCVT            S22, H3 }

          LOWORD(_S3) = *(v48 + 2 * llroundf(fminf(fmaxf(v118, 0.0), 8191.0)));
          LOWORD(_S5) = *(v48 + 2 * llroundf(fminf(fmaxf(v16, 0.0), 8191.0)));
          __asm
          {
            FCVT            S3, H3
            FCVT            S21, H5
          }

          v125 = (((v153 * _S10) + (v154 * _S12)) + (v152 * _S11)) + v32;
          if (v125 < v32)
          {
            v126 = v32;
          }

          else
          {
            v126 = (((v153 * _S10) + (v154 * _S12)) + (v152 * _S11)) + v32;
          }

          v127 = v125 <= v34;
          v128 = (((v153 * _S15) + (v154 * _S13)) + (v152 * _S14)) + v32;
          if (!v127)
          {
            v126 = v34;
          }

          v129 = llroundf(v126);
          if (v128 < v32)
          {
            v130 = v32;
          }

          else
          {
            v130 = (((v153 * _S15) + (v154 * _S13)) + (v152 * _S14)) + v32;
          }

          v127 = v128 <= v34;
          v131 = (((v153 * _S19) + (v154 * _S20)) + (v152 * _S18)) + v32;
          if (!v127)
          {
            v130 = v34;
          }

          LODWORD(a1) = llroundf(v130);
          if (v131 < v32)
          {
            v132 = v32;
          }

          else
          {
            v132 = (((v153 * _S19) + (v154 * _S20)) + (v152 * _S18)) + v32;
          }

          v127 = v131 <= v34;
          v133 = (((v153 * _S3) + (v154 * _S22)) + (v152 * _S21)) + v32;
          if (!v127)
          {
            v132 = v34;
          }

          v134 = llroundf(v132);
          if (v133 < v32)
          {
            v135 = v32;
          }

          else
          {
            v135 = (((v153 * _S3) + (v154 * _S22)) + (v152 * _S21)) + v32;
          }

          if (v133 <= v34)
          {
            v136 = v135;
          }

          else
          {
            v136 = v34;
          }

          v36 = ((_S12 + _S13) + _S20) + _S22;
          v137 = ((_S10 + _S15) + _S19) + _S3;
          *v55 = v129;
          v55[1] = a1;
          *v69 = v134;
          v69[1] = llroundf(v136);
          v138 = ((_S11 + _S14) + _S18) + _S21;
          v15 = ((v156 + (v36 * v151)) + (v137 * v150)) + (v138 * v149);
          v14 = v155;
          if (v15 <= v155)
          {
            v14 = ((v156 + (v36 * v151)) + (v137 * v150)) + (v138 * v149);
            if (v15 < v157)
            {
              v14 = v157;
            }
          }

          v37 = ((v156 + (v36 * v148)) + (v137 * v147)) + (v138 * v146);
          *(v62 + v67) = llroundf(v14);
          v35 = v155;
          if (v37 <= v155)
          {
            v35 = v37;
            if (v37 < v157)
            {
              v35 = v157;
            }
          }

          *(v62 + v67 + 1) = llroundf(v35);
          if (v54)
          {
            *v54 = v74;
            v54[1] = v76;
            v54 += 2;
            *v68 = v78;
            v68[1] = v79;
            v68 += 2;
          }

          v56 += 16;
          v70 += 16;
          v55 += 2;
          v69 += 2;
          v67 += 2;
        }

        while (v67 < v23);
      }

      v56 = &v64[v63];
      v25 = v63;
      v55 = &v65[v144];
      v29 = v144;
      v62 += v143;
      v54 = &v66[v142];
      v30 = v142;
      v21 += 2;
    }

    while (v21 < v145);
  }

  *&v140[4 * a2 + 160] = 0;
  return a1;
}

uint64_t vt_Copy_l64r_rgb_420vf(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4, void *a5, uint64_t *a6, uint64_t a7, void *a8, void *a9)
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

  if (((v36 + v40 - 1) * *v66 + 8 * (v39 + v30)) > *v67)
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
  if ((v39 + v31 + *v61 * v45) > *a9)
  {
    v57 = v36;
    v41 = v30;
    v42 = v31;
    v43 = v9;
    v44 = a9;
    goto LABEL_54;
  }

  v47 = v60;
  if (*(v60 + 8) && ((v46 + 1 + ((v46 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v61[1] * ((v40 + v37 + 1) / 2 - 1) > a9[1])
  {
    v57 = v36;
    v41 = v30;
    v42 = v31;
    v43 = v9;
    v44 = a9;
    goto LABEL_54;
  }

  if (*(v60 + 16) && (v46 + v61[2] * v45) > a9[2])
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
  dispatch_apply_f(v9, global_queue, v23, vt_Copy_l64r_rgb_420vf_GCD);
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

uint64_t vt_Copy_l64r_rgb_420vf_GCD(unsigned __int8 *a1, uint64_t a2, double a3, double a4, float a5, float a6, float a7, float a8)
{
  v19 = 2 * *a1;
  v20 = *(a1 + 13);
  v21 = v20 * a2 / v19;
  result = 2 * (((v20 + v20 * a2) / v19) - v21);
  if (result >= 1)
  {
    v23 = 0;
    v24 = *(a1 + 19);
    v25 = *(a1 + 24) & 0xFFFFFFFE;
    v26 = **(a1 + 8);
    v28 = *(a1 + 16);
    v27 = *(a1 + 17);
    v29 = *v27;
    v30 = v27[1];
    v31 = v27[2];
    *&v32 = *(v24 + 136);
    v33 = *&v32 / *(v24 + 128);
    LOWORD(v32) = *(v24 + 144);
    v34 = v32;
    LOWORD(a5) = *(v24 + 146);
    v35 = LODWORD(a5);
    LOWORD(a6) = *(v24 + 148);
    v36 = LODWORD(a6);
    LOWORD(a7) = *(v24 + 150);
    v37 = LODWORD(a7);
    LOWORD(a8) = *(v24 + 152);
    v38 = LODWORD(a8);
    v39 = *(v24 + 36);
    v40 = *(v24 + 40);
    v41 = *(v24 + 44);
    v42 = *(v24 + 48) * 0.25;
    v43 = *(v24 + 52) * 0.25;
    v44 = *(v24 + 56) * 0.25;
    v45 = *(v24 + 60) * 0.25;
    v46 = *(v24 + 64) * 0.25;
    v47 = *(v24 + 68);
    v48 = v47 * 0.25;
    v49 = *(a1 + 14);
    v50 = *(a1 + 15) + 2 * v21;
    v51 = *(a1 + 44) + 2 * (*(a1 + 28) * a2 / v19);
    v52 = v28[1];
    v53 = v28[2];
    if (v53)
    {
      v54 = (v53 + v31 * v50 + v49);
    }

    else
    {
      v54 = 0;
    }

    v55 = (*v28 + v29 * v50 + v49);
    v56 = **(a1 + 7) + v51 * v26 + 8 * *(a1 + 36);
    v57 = *(v24 + 157);
    v58 = *(v24 + 156);
    v59 = v52 + v30 * (v50 / 2);
    v60 = *(v24 + 155);
    v61 = *(v24 + 154);
    v62 = v59 + v49;
    do
    {
      v63 = v56 + v26;
      v64 = &v55[v29];
      v65 = &v54[v31];
      if (v25 >= 1)
      {
        v66 = 0;
        v67 = &v54[v31];
        v68 = &v55[v29];
        v69 = v56 + v26;
        do
        {
          v70 = v56 + 8;
          v71 = v69 + 8;
          if (v54)
          {
            LOWORD(v47) = *(v56 + 2 * v57);
            HIWORD(v11) = 15231;
            v72 = LODWORD(v47) * 0.0038911;
            v73 = llroundf(v72);
            LOWORD(v72) = *(v70 + 2 * v57);
            v74 = LODWORD(v72) * 0.0038911;
            v75 = llroundf(v74);
            LOWORD(v74) = *(v69 + 2 * v57);
            v76 = LODWORD(v74) * 0.0038911;
            v77 = llroundf(v76);
            LOWORD(v76) = *(v71 + 2 * v57);
            v47 = LODWORD(v76) * 0.0038911;
            v78 = llroundf(v47);
          }

          else
          {
            v77 = 0;
            v73 = 0;
            v75 = 0;
            v78 = 0;
          }

          LOWORD(v47) = *(v56 + 2 * v61);
          v79 = v33 * LODWORD(v47);
          LOWORD(v11) = *(v56 + 2 * v60);
          v80 = v33 * LODWORD(v11);
          LOWORD(v12) = *(v56 + 2 * v58);
          v81 = v33 * LODWORD(v12);
          LOWORD(v13) = *(v70 + 2 * v61);
          v82 = v33 * LODWORD(v13);
          LOWORD(v14) = *(v70 + 2 * v60);
          v83 = v33 * LODWORD(v14);
          LOWORD(v15) = *(v70 + 2 * v58);
          v15 = v33 * LODWORD(v15);
          LOWORD(v16) = *(v69 + 2 * v61);
          v16 = v33 * LODWORD(v16);
          LOWORD(v17) = *(v69 + 2 * v60);
          v17 = v33 * LODWORD(v17);
          LOWORD(v18) = *(v69 + 2 * v58);
          v18 = v33 * LODWORD(v18);
          LOWORD(v8) = *(v71 + 2 * v61);
          v8 = v33 * LODWORD(v8);
          LOWORD(v9) = *(v71 + 2 * v60);
          v9 = v33 * LODWORD(v9);
          LOWORD(v10) = *(v71 + 2 * v58);
          v10 = v33 * LODWORD(v10);
          v84 = (((v40 * v80) + (v39 * v79)) + (v41 * v81)) + v34;
          v85 = (((v40 * v83) + (v39 * v82)) + (v41 * v15)) + v34;
          v86 = (((v40 * v17) + (v39 * v16)) + (v41 * v18)) + v34;
          v87 = (((v40 * v9) + (v39 * v8)) + (v41 * v10)) + v34;
          if (v84 < v34)
          {
            v88 = v34;
          }

          else
          {
            v88 = (((v40 * v80) + (v39 * v79)) + (v41 * v81)) + v34;
          }

          if (v84 <= v36)
          {
            v89 = v88;
          }

          else
          {
            v89 = v36;
          }

          v90 = llroundf(v89);
          if (v85 < v34)
          {
            v91 = v34;
          }

          else
          {
            v91 = (((v40 * v83) + (v39 * v82)) + (v41 * v15)) + v34;
          }

          if (v85 > v36)
          {
            v91 = v36;
          }

          *v55 = v90;
          v55[1] = llroundf(v91);
          if (v86 < v34)
          {
            v92 = v34;
          }

          else
          {
            v92 = (((v40 * v17) + (v39 * v16)) + (v41 * v18)) + v34;
          }

          if (v86 > v36)
          {
            v92 = v36;
          }

          *v68 = llroundf(v92);
          if (v87 < v34)
          {
            v93 = v34;
          }

          else
          {
            v93 = (((v40 * v9) + (v39 * v8)) + (v41 * v10)) + v34;
          }

          if (v87 > v36)
          {
            v93 = v36;
          }

          v68[1] = llroundf(v93);
          v94 = ((v79 + v82) + v16) + v8;
          v95 = ((v80 + v83) + v17) + v9;
          v12 = ((v81 + v15) + v18) + v10;
          v14 = ((v35 + (v94 * v42)) + (v95 * v43)) + (v12 * v44);
          v13 = v38;
          if (v14 <= v38)
          {
            v13 = ((v35 + (v94 * v42)) + (v95 * v43)) + (v12 * v44);
            if (v14 < v37)
            {
              v13 = v37;
            }
          }

          v47 = ((v35 + (v94 * v45)) + (v95 * v46)) + (v12 * v48);
          *(v62 + v66) = llroundf(v13);
          v11 = v38;
          if (v47 <= v38)
          {
            v11 = v47;
            if (v47 < v37)
            {
              v11 = v37;
            }
          }

          *(v62 + v66 + 1) = llroundf(v11);
          if (v54)
          {
            *v54 = v73;
            v54[1] = v75;
            v54 += 2;
            *v67 = v77;
            v67[1] = v78;
            v67 += 2;
          }

          v56 += 16;
          v69 += 16;
          v55 += 2;
          v68 += 2;
          v66 += 2;
        }

        while (v66 < v25);
      }

      v56 = v63 + v26;
      v55 = &v64[v29];
      v62 += v30;
      v54 = &v65[v31];
      v23 += 2;
    }

    while (v23 < result);
  }

  *&a1[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_l64r_TRC_Tone_Mat_TRC_xf420(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4, void *a5, uint64_t *a6, uint64_t a7, void *a8, void *a9)
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

  if (((v36 + v40 - 1) * *v66 + 8 * (v39 + v30)) > *v67)
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
  dispatch_apply_f(v9, global_queue, v23, vt_Copy_l64r_TRC_Tone_Mat_TRC_xf420_GCD);
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

unsigned __int8 *vt_Copy_l64r_TRC_Tone_Mat_TRC_xf420_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, float a5, float a6)
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
    v40 = **(result + 7) + v36 * v13 + 8 * *(result + 36);
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
          LOWORD(v25) = *(v40 + 2 * v46);
          LOWORD(v26) = *(v40 + 2 * v45);
          LOWORD(v24) = *(v40 + 2 * v43);
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

          LOWORD(v66) = *(v40 + 8 + 2 * v46);
          LOWORD(v65) = *(v40 + 8 + 2 * v45);
          LOWORD(v55) = *(v40 + 8 + 2 * v43);
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

          LOWORD(v75) = *(v52 + 2 * v46);
          LOWORD(v74) = *(v52 + 2 * v45);
          *&v77 = LODWORD(v74);
          _S6 = v18 * *&v77;
          LOWORD(v77) = *(v52 + 2 * v43);
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

          LOWORD(v86) = *(v52 + 8 + 2 * v46);
          LOWORD(v85) = *(v52 + 8 + 2 * v45);
          *&v88 = LODWORD(v85);
          v89 = v18 * *&v88;
          LOWORD(v88) = *(v52 + 8 + 2 * v43);
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
          HIWORD(v24) = HIWORD(v183);
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

          v40 += 16;
          v52 += 16;
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