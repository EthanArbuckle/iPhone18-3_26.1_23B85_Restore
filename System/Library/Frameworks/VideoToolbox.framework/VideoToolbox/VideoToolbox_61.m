void *vt_Copy_444vf_TRC_Mat_TRC_xf444_neon_fp16_GCD(void *result, uint64_t a2, double a3)
{
  v3 = *result;
  v166 = *(result + 28) * a2 / v3 + *(result + 44);
  v167 = *(result + 36);
  v4 = result[14];
  v6 = result[12];
  v5 = result[13];
  v171 = result;
  v7 = v5 * a2 / v3;
  v8 = v7 + result[15];
  v9 = (v5 + v5 * a2) / v3 - v7;
  v10 = result[7];
  v11 = result[8];
  v12 = result[16];
  v13 = result[17];
  v165 = v11[2];
  v14 = v13[2];
  v168 = v12[2];
  v169 = v10[2];
  v15 = (v168 + v14 * v8 + 2 * v4);
  if (v9 >= 1)
  {
    v16 = 0;
    v17 = result[19];
    v18 = *v11;
    v19 = v11[1];
    v20 = *v13;
    v21 = v13[1];
    v22 = *(v17 + 140);
    v23 = *(v17 + 142);
    v24 = *(v17 + 144);
    v25 = *(v17 + 146);
    v26 = *(v17 + 148);
    v27 = *(v17 + 150);
    v28 = *(v17 + 152);
    _S7 = *(v17 + 36);
    _S10 = *(v17 + 40);
    _S18 = *(v17 + 44);
    _S12 = *(v17 + 48);
    _Q20.i32[0] = *(v17 + 52);
    _S21 = *(v17 + 56);
    *&a3 = 8191.0 / *(v17 + 128);
    v207 = v22;
    v35 = v23;
    _S1 = *&a3 * *v17;
    _S22 = *(v17 + 60);
    _S26 = *(v17 + 64);
    result = (v17 + 164);
    _S2 = *&a3 * *(v17 + 8);
    _S3 = *&a3 * *(v17 + 16);
    _S4 = *&a3 * *(v17 + 20);
    v42 = v24;
    v43 = v25;
    v44 = v26;
    _S5 = *&a3 * *(v17 + 28);
    *&a3 = v27;
    v192 = v27;
    v46 = v28;
    *&a3 = v22;
    v47 = v17 + 16548;
    v206 = _S1;
    __asm { FCVT            H8, S1 }

    _Q0 = vdupq_lane_s16(*&a3, 0);
    v205 = _Q0;
    *_Q0.i16 = -v23;
    v54 = vdupq_lane_s16(*_Q0.i8, 0);
    v183 = _S5;
    __asm { FCVT            H0, S5 }

    v182 = *_Q0.i16;
    v185 = _S3;
    __asm { FCVT            H0, S3 }

    v181 = *_Q0.i16;
    *_Q0.i16 = v24;
    v55 = vdupq_lane_s16(*_Q0.i8, 0);
    *_Q0.i16 = v25;
    v56 = vdupq_lane_s16(*_Q0.i8, 0);
    *_Q0.i16 = v26;
    v57 = vdupq_lane_s16(*_Q0.i8, 0);
    v204 = v57;
    *v57.i16 = v27;
    v58 = vdupq_lane_s16(*v57.i8, 0);
    *v57.i16 = v28;
    v59 = vdupq_lane_s16(*v57.i8, 0);
    v60 = *(v17 + 132);
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
    v64 = v62 + v21 * v8 + 2 * v4;
    if (!v62)
    {
      v64 = 0;
    }

    v65 = v63 + v20 * v8 + 2 * v4;
    v67 = *v10;
    v66 = v10[1];
    v68 = v66 + v19 * v166 + v167;
    if (!v66)
    {
      v68 = 0;
    }

    v69 = (v67 + v18 * v166 + v167);
    v184 = _S4;
    __asm { FCVT            H4, S4 }

    v186 = _S2;
    __asm { FCVT            H2, S2 }

    v178 = _H2;
    v179 = _H4;
    v208 = *(v17 + 40);
    v209 = *(v17 + 36);
    __asm { FCVT            H2, S7 }

    v203 = _H2;
    _Q19.i32[0] = *(v17 + 104);
    __asm { FCVT            H2, S10 }

    v202 = _H2;
    __asm { FCVT            H2, S18 }

    v201 = _H2;
    v191 = *(v17 + 48);
    __asm { FCVT            H2, S12 }

    v177 = _H2;
    v190 = *(v17 + 52);
    __asm { FCVT            H2, S20 }

    v176 = _H2;
    v189 = *(v17 + 56);
    __asm { FCVT            H2, S21 }

    v175 = _H2;
    v188 = *(v17 + 60);
    __asm { FCVT            H2, S22 }

    v174 = _H2;
    v187 = *(v17 + 64);
    __asm { FCVT            H2, S26 }

    v180 = *(v17 + 68);
    __asm { FCVT            H0, S0 }

    v172 = _H0;
    v173 = _H2;
    v193 = *(v17 + 72);
    __asm { FCVT            H1, S1 }

    v200 = _H1;
    _S10 = *(v17 + 76);
    __asm { FCVT            H1, S3 }

    v199 = _H1;
    _S1 = *(v17 + 80);
    __asm { FCVT            H2, S5 }

    v198 = _H2;
    _S2 = *(v17 + 84);
    __asm { FCVT            H3, S27 }

    v197 = _H3;
    _S7 = *(v17 + 88);
    __asm { FCVT            H3, S29 }

    v196 = _H3;
    _S12 = *(v17 + 92);
    __asm { FCVT            H3, S9 }

    v195 = _H3;
    _S3 = *(v17 + 96);
    __asm { FCVT            H0, S15 }

    v194 = _H0;
    _S4 = *(v17 + 100);
    __asm { FCVT            H0, S17 }

    v97 = vdupq_n_s16(v61);
    v98.i64[0] = 0x9000900090009000;
    v98.i64[1] = 0x9000900090009000;
    v99 = *_Q19.i32;
    __asm { FCVT            H15, S19 }

    do
    {
      if (v6 < 8)
      {
        v130 = 0;
        v105 = v64;
        v104 = v65;
        v103 = v68;
        v102 = v69;
      }

      else
      {
        v101 = 0;
        v102 = v69;
        v103 = v68;
        v104 = v65;
        v105 = v64;
        do
        {
          if (v103)
          {
            v210 = vld2_s8(v103);
            v103 += 16;
            *v106.i8 = vzip1_s8(v210.val[0], 0);
            v106.u64[1] = vzip2_s8(v210.val[0], 0);
            *v107.i8 = vzip1_s8(v210.val[1], 0);
            v107.u64[1] = vzip2_s8(v210.val[1], 0);
            v108 = vaddq_f16(v54, vcvtq_f16_u16(v106));
            v109 = vaddq_f16(v54, vcvtq_f16_u16(v107));
            v110 = vmulq_n_f16(v109, v178);
            v111 = vmlaq_n_f16(vmulq_n_f16(v108, v181), v109, v179);
            v112 = vmulq_n_f16(v108, v182);
          }

          else
          {
            v112 = 0uLL;
            v111 = 0uLL;
            v110 = 0uLL;
          }

          v113 = *v102++;
          *v114.i8 = vzip1_s8(v113, 0);
          v114.u64[1] = vzip2_s8(v113, 0);
          v115 = vsubq_f16(vcvtq_f16_u16(v114), v205);
          v116 = vmlaq_n_f16(v111, v115, _H8);
          v117 = vmlaq_n_f16(v112, v115, _H8);
          v118 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(v110, v115, _H8), 0), v98));
          v119.i16[0] = *(result + v118.u16[0]);
          v119.i16[1] = *(result + v118.u16[1]);
          v119.i16[2] = *(result + v118.u16[2]);
          v119.i16[3] = *(result + v118.u16[3]);
          v119.i16[4] = *(result + v118.u16[4]);
          v119.i16[5] = *(result + v118.u16[5]);
          v119.i16[6] = *(result + v118.u16[6]);
          v119.i16[7] = *(result + v118.u16[7]);
          v120 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v116, 0), v98));
          v116.i16[0] = *(result + v120.u16[0]);
          v116.i16[1] = *(result + v120.u16[1]);
          v116.i16[2] = *(result + v120.u16[2]);
          v116.i16[3] = *(result + v120.u16[3]);
          v116.i16[4] = *(result + v120.u16[4]);
          v116.i16[5] = *(result + v120.u16[5]);
          v116.i16[6] = *(result + v120.u16[6]);
          v116.i16[7] = *(result + v120.u16[7]);
          v121 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v117, 0), v98));
          v120.i16[0] = *(result + v121.u16[0]);
          v120.i16[1] = *(result + v121.u16[1]);
          v120.i16[2] = *(result + v121.u16[2]);
          v120.i16[3] = *(result + v121.u16[3]);
          v120.i16[4] = *(result + v121.u16[4]);
          v120.i16[5] = *(result + v121.u16[5]);
          v120.i16[6] = *(result + v121.u16[6]);
          v120.i16[7] = *(result + v121.u16[7]);
          v122 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v119, v197), v116, v196), v120, v195);
          v123 = vmulq_n_f16(v120, _H15);
          v124 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v119, v200), v116, v199), v120, v198), 0), v98));
          v125.i16[0] = *(v47 + 2 * v124.u16[0]);
          v125.i16[1] = *(v47 + 2 * v124.u16[1]);
          v125.i16[2] = *(v47 + 2 * v124.u16[2]);
          v125.i16[3] = *(v47 + 2 * v124.u16[3]);
          v125.i16[4] = *(v47 + 2 * v124.u16[4]);
          v125.i16[5] = *(v47 + 2 * v124.u16[5]);
          v125.i16[6] = *(v47 + 2 * v124.u16[6]);
          v125.i16[7] = *(v47 + 2 * v124.u16[7]);
          v126 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v122, 0), v98));
          v127.i16[0] = *(v47 + 2 * v126.u16[0]);
          v127.i16[1] = *(v47 + 2 * v126.u16[1]);
          v127.i16[2] = *(v47 + 2 * v126.u16[2]);
          v127.i16[3] = *(v47 + 2 * v126.u16[3]);
          v127.i16[4] = *(v47 + 2 * v126.u16[4]);
          v127.i16[5] = *(v47 + 2 * v126.u16[5]);
          v127.i16[6] = *(v47 + 2 * v126.u16[6]);
          v127.i16[7] = *(v47 + 2 * v126.u16[7]);
          v128 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(v123, v116, _H0), v119, v194), 0), v98));
          _Q19.i16[0] = *(v47 + 2 * v128.u16[0]);
          _Q19.i16[1] = *(v47 + 2 * v128.u16[1]);
          _Q19.i16[2] = *(v47 + 2 * v128.u16[2]);
          _Q19.i16[3] = *(v47 + 2 * v128.u16[3]);
          _Q19.i16[4] = *(v47 + 2 * v128.u16[4]);
          _Q19.i16[5] = *(v47 + 2 * v128.u16[5]);
          _Q19.i16[6] = *(v47 + 2 * v128.u16[6]);
          _Q19.i16[7] = *(v47 + 2 * v128.u16[7]);
          _Q20 = vshlq_u16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v55, v125, v203), v127, v202), _Q19, v201), v55), v204)), v97);
          *v104++ = _Q20;
          if (v105)
          {
            v129 = vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v56, v125, v174), v127, v173), _Q19, v172);
            _Q19 = vshlq_u16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v56, v125, v177), v127, v176), _Q19, v175), v58), v59), v58), v59)), v97);
            _Q20 = vshlq_u16(vcvtq_u16_f16(v129), v97);
            vst2q_s16(v105, *(&_Q20 - 1));
            v105 += 16;
          }

          v101 += 8;
        }

        while (v101 < v6 - 7);
        v130 = v6 & 0xFFFFFFF8;
      }

      _VF = __OFSUB__(v6, v130);
      v131 = v6 - v130;
      if (!((v131 < 0) ^ _VF | (v131 == 0)))
      {
        do
        {
          if (v103)
          {
            _Q19.i8[0] = *v103;
            v132 = _Q19.u32[0] - v35;
            _Q20.i8[0] = *(v103 + 1);
            v133 = _Q20.u32[0] - v35;
            v103 += 2;
            v134 = v186 * v133;
            v135 = (v184 * v133) + (v132 * v185);
            *_Q19.i32 = v183 * v132;
          }

          else
          {
            _Q19.i32[0] = 0;
            v135 = 0.0;
            v134 = 0.0;
          }

          v136 = v102->u8[0];
          v102 = (v102 + 1);
          v137 = v206 * (v136 - v207);
          v138 = v134 + v137;
          v139 = (v134 + v137) <= 8191.0;
          v140 = 8191.0;
          if (v139)
          {
            v140 = v138;
            if (v138 < 0.0)
            {
              v140 = 0.0;
            }
          }

          v141 = v135 + v137;
          v139 = (v135 + v137) <= 8191.0;
          v142 = 8191.0;
          if (v139)
          {
            v142 = v141;
            if (v141 < 0.0)
            {
              v142 = 0.0;
            }
          }

          v143 = *_Q19.i32 + v137;
          v144 = 8191.0;
          if (v143 <= 8191.0)
          {
            v144 = v143;
            if (v143 < 0.0)
            {
              v144 = 0.0;
            }
          }

          _H20 = *(result + llroundf(fminf(fmaxf(v140, 0.0), 8191.0)));
          __asm { FCVT            S20, H20 }

          _H21 = *(result + llroundf(fminf(fmaxf(v142, 0.0), 8191.0)));
          __asm { FCVT            S21, H21 }

          _H19 = *(result + llroundf(fminf(fmaxf(v144, 0.0), 8191.0)));
          __asm { FCVT            S19, H19 }

          v151 = ((_S10 * _S21) + (_S20 * v193)) + (_S19 * _S1);
          v152 = ((_S7 * _S21) + (_S20 * _S2)) + (_S19 * _S12);
          _S21 = ((_S4 * _S21) + (_S20 * _S3)) + (_S19 * v99);
          LOWORD(_S19) = *(v47 + 2 * llroundf(fminf(fmaxf(v151, 0.0), 8191.0)));
          __asm { FCVT            S19, H19 }

          LOWORD(_S20) = *(v47 + 2 * llroundf(fminf(fmaxf(v152, 0.0), 8191.0)));
          __asm { FCVT            S20, H20 }

          LOWORD(_S21) = *(v47 + 2 * llroundf(fminf(fmaxf(_S21, 0.0), 8191.0)));
          __asm { FCVT            S21, H21 }

          v155 = (((v208 * *_Q20.i32) + (v209 * *_Q19.i32)) + (_S18 * _S21)) + v42;
          v156 = v44;
          if (v155 <= v44)
          {
            v156 = (((v208 * *_Q20.i32) + (v209 * *_Q19.i32)) + (_S18 * _S21)) + v42;
            if (v155 < v42)
            {
              v156 = v42;
            }
          }

          v104->i16[0] = llroundf(v156) << v61;
          v104 = (v104 + 2);
          if (v105)
          {
            v157 = ((v43 + (*_Q19.i32 * v191)) + (*_Q20.i32 * v190)) + (_S21 * v189);
            v158 = v46;
            if (v157 <= v46)
            {
              v158 = ((v43 + (*_Q19.i32 * v191)) + (*_Q20.i32 * v190)) + (_S21 * v189);
              if (v157 < v192)
              {
                v158 = v192;
              }
            }

            *_Q19.i32 = ((v43 + (*_Q19.i32 * v188)) + (*_Q20.i32 * v187)) + (_S21 * v180);
            *v105 = llroundf(v158) << v61;
            *_Q20.i32 = v46;
            if (*_Q19.i32 <= v46)
            {
              _Q20.i32[0] = _Q19.i32[0];
              if (*_Q19.i32 < v192)
              {
                *_Q20.i32 = v192;
              }
            }

            v105[1] = llroundf(*_Q20.i32) << v61;
            v105 += 2;
          }

          --v131;
        }

        while (v131);
      }

      v69 = (v69 + v18);
      v68 += v19;
      v65 += v20;
      v64 += v21;
      ++v16;
    }

    while (v16 != v9);
  }

  if (v169 && v168)
  {
    if (v9 >= 1)
    {
      v159 = 0;
      v160 = (v169 + v165 * v166 + v167);
      do
      {
        if (v6 >= 1)
        {
          v161 = v6;
          v162 = v15;
          v163 = v160;
          do
          {
            v164 = *v163++;
            *v162++ = v164 | (v164 << 8);
            --v161;
          }

          while (v161);
        }

        v160 += v165;
        v15 += v14;
        ++v159;
      }

      while (v159 != v9);
    }
  }

  else if (v168 && v9 >= 1)
  {
    do
    {
      if (v6 >= 1)
      {
        result = memset(v15, 255, 2 * v6);
      }

      v15 += v14;
      --v9;
    }

    while (v9);
  }

  *(v171 + a2 + 40) = 0;
  return result;
}

uint64_t vt_Copy_444vf_TRC_Mat_TRC_xf444(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v14 = a1;
  v52 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v47 = a2[1];
  v48 = v16;
  v18 = *a6;
  v17 = a6[1];
  v49 = a2[2];
  v50 = v18;
  v46 = v17;
  v51 = a6[2];
  if (v15 == 255)
  {
    v19 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v19)
    {
      v20 = 0;
LABEL_29:
      free(v19);
      return v20;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v19 = &v44 - v21;
    bzero(&v44 - v21, v22);
  }

  v23 = a9;
  v24 = vbslq_s8(vcgtq_s64(vaddq_s64(v49, v47), v48), vsubq_s64(v48, v49), v47);
  v25 = vbslq_s8(vcgtq_s64(vaddq_s64(v51, v46), v50), vsubq_s64(v50, v51), v46);
  v26 = vbslq_s8(vcgtq_s64(v25, v24), v24, v25);
  v27 = v49.i64[1];
  v28 = vaddq_s64((*&v49 + __PAIR128__(-1, 0)), v26);
  v29 = v28.i64[0] + *a4 * v28.i64[1] > *a5;
  v45 = a9;
  v46.i64[0] = v49.i64[1];
  v47 = v26;
  if (v29)
  {
    v30 = v14;
    v31 = a7;
    v32 = a8;
  }

  else if (*(a3 + 8) && (a4[1] * v28.i64[1] + 2 * v28.i64[0]) > a5[1])
  {
    v30 = v14;
    v31 = a7;
    v32 = a8;
  }

  else if (*(a3 + 16) && v28.i64[0] + a4[2] * v28.i64[1] > a5[2])
  {
    v30 = v14;
    v31 = a7;
    v32 = a8;
  }

  else
  {
    v33.i64[0] = v26.i64[0];
    v33.i64[1] = -1;
    v34 = vaddq_s64(v51, v33);
    v35 = v34.i64[1] + v26.i64[1];
    if ((*a8 * (v34.i64[1] + v26.i64[1]) + 2 * v34.i64[0]) <= *a9)
    {
      if (*(a7 + 8) && (a8[1] * v35 + 4 * v34.i64[0]) > a9[1])
      {
        v30 = v14;
        v31 = a7;
        v32 = a8;
      }

      else
      {
        if (!*(a7 + 16) || (2 * v34.i64[0] + a8[2] * v35) <= a9[2])
        {
          goto LABEL_23;
        }

        v30 = v14;
        v31 = a7;
        v32 = a8;
      }
    }

    else
    {
      v30 = v14;
      v31 = a7;
      v32 = a8;
    }
  }

  fig_log_get_emitter();
  v36 = FigSignalErrorAtGM();
  a8 = v32;
  a7 = v31;
  v14 = v30;
  v23 = v45;
  v27 = v46.i64[0];
  v26 = v47;
  if (v36)
  {
    v20 = v36;
    goto LABEL_28;
  }

LABEL_23:
  *v19 = v15;
  v37 = v49.i64[0];
  *(v19 + 4) = v48;
  *(v19 + 20) = v26;
  *(v19 + 36) = v37;
  *(v19 + 44) = v27;
  v38 = v51;
  *(v19 + 5) = v50;
  *(v19 + 6) = v26;
  *(v19 + 7) = v38;
  *(v19 + 7) = a3;
  *(v19 + 8) = a4;
  *(v19 + 9) = a5;
  *(v19 + 16) = a7;
  *(v19 + 17) = a8;
  *(v19 + 18) = v23;
  *(v19 + 19) = v14;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v15, global_queue, v19, vt_Copy_444vf_TRC_Mat_TRC_xf444_GCD);
  if (!v15)
  {
    return 0;
  }

  v40 = (v19 + 160);
  v41 = v15;
  while (1)
  {
    v42 = *v40++;
    v20 = v42;
    if (v42)
    {
      break;
    }

    if (!--v41)
    {
      v20 = 0;
      break;
    }
  }

LABEL_28:
  if (v15 == 255)
  {
    goto LABEL_29;
  }

  return v20;
}

void *vt_Copy_444vf_TRC_Mat_TRC_xf444_GCD(void *result, uint64_t a2, double a3, float a4, float a5)
{
  v8 = result;
  v9 = *(result + 36);
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
  v23 = v18[2];
  v24 = v21[2];
  v25 = v20[2];
  v26 = (v25 + v24 * v16 + 2 * v12);
  if (v17 >= 1)
  {
    v27 = 0;
    v28 = result[19];
    v29 = *v19;
    v30 = v19[1];
    v31 = *v21;
    v32 = v21[1];
    LOWORD(a4) = *(v28 + 140);
    LOWORD(a5) = *(v28 + 142);
    LOWORD(v5) = *(v28 + 144);
    LOWORD(v6) = *(v28 + 146);
    v33 = 8191.0 / *(v28 + 128);
    v34 = LODWORD(a4);
    v35 = LODWORD(a5);
    v36 = v33 * *v28;
    v121 = v33 * *(v28 + 8);
    v120 = v33 * *(v28 + 16);
    _S4 = v33 * *(v28 + 20);
    *&v38 = v33 * *(v28 + 28);
    v118 = *&v38;
    v119 = _S4;
    v39 = v5;
    v40 = v6;
    LOWORD(v38) = *(v28 + 148);
    v41 = v38;
    LOWORD(v38) = *(v28 + 150);
    v42 = v38;
    LOWORD(v38) = *(v28 + 152);
    v43 = v38;
    v44 = *(v28 + 36);
    v45 = *(v28 + 40);
    v47 = *(v28 + 44);
    v46 = *(v28 + 48);
    v117 = v46;
    v48 = *(v28 + 52);
    v49 = *(v28 + 56);
    v50 = *(v28 + 60);
    v51 = *(v28 + 64);
    v52 = *(v28 + 68);
    v53 = *(v28 + 72);
    v55 = *(v28 + 76);
    v54 = *(v28 + 80);
    v56 = *(v28 + 84);
    v57 = *(v28 + 88);
    v58 = *(v28 + 92);
    v59 = *(v28 + 96);
    v60 = *(v28 + 100);
    v61 = *(v28 + 104);
    result = (v28 + 164);
    v62 = v28 + 16548;
    v63 = *(v28 + 132);
    if (v63 >= 0x11)
    {
      v64 = 0;
    }

    else
    {
      v64 = 16 - v63;
    }

    v66 = *v20;
    v65 = v20[1];
    v67 = v65 + v32 * v16 + 2 * v12;
    if (!v65)
    {
      v67 = 0;
    }

    v68 = v66 + v31 * v16 + 2 * v12;
    v70 = *v18;
    v69 = v18[1];
    v71 = (v69 + v30 * v11 + v9);
    if (!v69)
    {
      v71 = 0;
    }

    v72 = (v70 + v29 * v11 + v9);
    do
    {
      v73 = v14;
      v74 = v72;
      v75 = v71;
      v76 = v67;
      v77 = v68;
      if (v14 >= 1)
      {
        do
        {
          if (v75)
          {
            LOBYTE(v46) = *v75;
            v78 = LODWORD(v46) - v35;
            LOBYTE(_S4) = v75[1];
            v79 = LODWORD(_S4) - v35;
            v75 += 2;
            v80 = v121 * v79;
            v81 = (v119 * v79) + (v78 * v120);
            v82 = v118 * v78;
          }

          else
          {
            v82 = 0.0;
            v81 = 0.0;
            v80 = 0.0;
          }

          v83 = *v74++;
          v84 = v36 * (v83 - v34);
          v85 = v80 + v84;
          v86 = 8191.0;
          if (v85 <= 8191.0)
          {
            v86 = v85;
            if (v85 < 0.0)
            {
              v86 = 0.0;
            }
          }

          v87 = v81 + v84;
          v88 = (v81 + v84) <= 8191.0;
          v89 = 8191.0;
          if (v88)
          {
            v89 = v87;
            if (v87 < 0.0)
            {
              v89 = 0.0;
            }
          }

          v90 = v82 + v84;
          v88 = (v82 + v84) <= 8191.0;
          v91 = 8191.0;
          if (v88)
          {
            v91 = v90;
            if (v90 < 0.0)
            {
              v91 = 0.0;
            }
          }

          _H0 = *(result + llroundf(fminf(fmaxf(v86, 0.0), 8191.0)));
          __asm { FCVT            S0, H0 }

          _H5 = *(result + llroundf(fminf(fmaxf(v89, 0.0), 8191.0)));
          __asm { FCVT            S5, H5 }

          _H4 = *(result + llroundf(fminf(fmaxf(v91, 0.0), 8191.0)));
          __asm { FCVT            S4, H4 }

          v102 = ((v55 * _S5) + (_S0 * v53)) + (_S4 * v54);
          v103 = ((v57 * _S5) + (_S0 * v56)) + (_S4 * v58);
          _S0 = ((v60 * _S5) + (_S0 * v59)) + (_S4 * v61);
          LOWORD(_S4) = *(v62 + 2 * llroundf(fminf(fmaxf(v102, 0.0), 8191.0)));
          __asm { FCVT            S4, H4 }

          LOWORD(_S5) = *(v62 + 2 * llroundf(fminf(fmaxf(v103, 0.0), 8191.0)));
          __asm { FCVT            S5, H5 }

          LOWORD(_S0) = *(v62 + 2 * llroundf(fminf(fmaxf(_S0, 0.0), 8191.0)));
          __asm { FCVT            S6, H0 }

          v46 = (((v45 * _S5) + (v44 * _S4)) + (v47 * _S6)) + v39;
          v107 = v41;
          if (v46 <= v41)
          {
            v107 = (((v45 * _S5) + (v44 * _S4)) + (v47 * _S6)) + v39;
            if (v46 < v39)
            {
              v107 = v39;
            }
          }

          *v77++ = llroundf(v107) << v64;
          if (v76)
          {
            v108 = ((v40 + (_S4 * v117)) + (_S5 * v48)) + (_S6 * v49);
            v109 = v43;
            if (v108 <= v43)
            {
              v109 = ((v40 + (_S4 * v117)) + (_S5 * v48)) + (_S6 * v49);
              if (v108 < v42)
              {
                v109 = v42;
              }
            }

            v46 = (v40 + (_S4 * v50)) + (_S5 * v51);
            _S4 = v46 + (_S6 * v52);
            *v76 = llroundf(v109) << v64;
            v110 = v43;
            if (_S4 <= v43)
            {
              v110 = v46 + (_S6 * v52);
              if (_S4 < v42)
              {
                v110 = v42;
              }
            }

            v76[1] = llroundf(v110) << v64;
            v76 += 2;
          }

          --v73;
        }

        while (v73);
      }

      v72 += v29;
      v71 += v30;
      v68 += v31;
      v67 += v32;
      ++v27;
    }

    while (v27 != v17);
  }

  if (v23 && v25)
  {
    if (v17 >= 1)
    {
      v111 = 0;
      v112 = (v23 + v22 * v11 + v9);
      do
      {
        if (v14 >= 1)
        {
          v113 = v14;
          v114 = v26;
          v115 = v112;
          do
          {
            v116 = *v115++;
            *v114++ = v116 | (v116 << 8);
            --v113;
          }

          while (v113);
        }

        v112 += v22;
        v26 += v24;
        ++v111;
      }

      while (v111 != v17);
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

  *(v8 + a2 + 40) = 0;
  return result;
}

uint64_t vt_Copy_444vf_rgb_xf444_neon_fp16(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v14 = a1;
  v52 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v47 = a2[1];
  v48 = v16;
  v18 = *a6;
  v17 = a6[1];
  v49 = a2[2];
  v50 = v18;
  v46 = v17;
  v51 = a6[2];
  if (v15 == 255)
  {
    v19 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v19)
    {
      v20 = 0;
LABEL_29:
      free(v19);
      return v20;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v19 = &v44 - v21;
    bzero(&v44 - v21, v22);
  }

  v23 = a9;
  v24 = vbslq_s8(vcgtq_s64(vaddq_s64(v49, v47), v48), vsubq_s64(v48, v49), v47);
  v25 = vbslq_s8(vcgtq_s64(vaddq_s64(v51, v46), v50), vsubq_s64(v50, v51), v46);
  v26 = vbslq_s8(vcgtq_s64(v25, v24), v24, v25);
  v27 = v49.i64[1];
  v28 = vaddq_s64((*&v49 + __PAIR128__(-1, 0)), v26);
  v29 = v28.i64[0] + *a4 * v28.i64[1] > *a5;
  v45 = a9;
  v46.i64[0] = v49.i64[1];
  v47 = v26;
  if (v29)
  {
    v30 = v14;
    v31 = a7;
    v32 = a8;
  }

  else if (*(a3 + 8) && (a4[1] * v28.i64[1] + 2 * v28.i64[0]) > a5[1])
  {
    v30 = v14;
    v31 = a7;
    v32 = a8;
  }

  else if (*(a3 + 16) && v28.i64[0] + a4[2] * v28.i64[1] > a5[2])
  {
    v30 = v14;
    v31 = a7;
    v32 = a8;
  }

  else
  {
    v33.i64[0] = v26.i64[0];
    v33.i64[1] = -1;
    v34 = vaddq_s64(v51, v33);
    v35 = v34.i64[1] + v26.i64[1];
    if ((*a8 * (v34.i64[1] + v26.i64[1]) + 2 * v34.i64[0]) <= *a9)
    {
      if (*(a7 + 8) && (a8[1] * v35 + 4 * v34.i64[0]) > a9[1])
      {
        v30 = v14;
        v31 = a7;
        v32 = a8;
      }

      else
      {
        if (!*(a7 + 16) || (2 * v34.i64[0] + a8[2] * v35) <= a9[2])
        {
          goto LABEL_23;
        }

        v30 = v14;
        v31 = a7;
        v32 = a8;
      }
    }

    else
    {
      v30 = v14;
      v31 = a7;
      v32 = a8;
    }
  }

  fig_log_get_emitter();
  v36 = FigSignalErrorAtGM();
  a8 = v32;
  a7 = v31;
  v14 = v30;
  v23 = v45;
  v27 = v46.i64[0];
  v26 = v47;
  if (v36)
  {
    v20 = v36;
    goto LABEL_28;
  }

LABEL_23:
  *v19 = v15;
  v37 = v49.i64[0];
  *(v19 + 4) = v48;
  *(v19 + 20) = v26;
  *(v19 + 36) = v37;
  *(v19 + 44) = v27;
  v38 = v51;
  *(v19 + 5) = v50;
  *(v19 + 6) = v26;
  *(v19 + 7) = v38;
  *(v19 + 7) = a3;
  *(v19 + 8) = a4;
  *(v19 + 9) = a5;
  *(v19 + 16) = a7;
  *(v19 + 17) = a8;
  *(v19 + 18) = v23;
  *(v19 + 19) = v14;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v15, global_queue, v19, vt_Copy_444vf_rgb_xf444_neon_fp16_GCD);
  if (!v15)
  {
    return 0;
  }

  v40 = (v19 + 160);
  v41 = v15;
  while (1)
  {
    v42 = *v40++;
    v20 = v42;
    if (v42)
    {
      break;
    }

    if (!--v41)
    {
      v20 = 0;
      break;
    }
  }

LABEL_28:
  if (v15 == 255)
  {
    goto LABEL_29;
  }

  return v20;
}

unint64_t vt_Copy_444vf_rgb_xf444_neon_fp16_GCD(unint64_t result, uint64_t a2, double a3, double a4, double a5, double _D3)
{
  v8 = result;
  v9 = *(result + 36);
  v10 = *result;
  v11 = *(result + 28) * a2 / v10 + *(result + 44);
  v12 = *(result + 112);
  v14 = *(result + 96);
  v13 = *(result + 104);
  v15 = v13 * a2 / v10;
  v16 = v15 + *(result + 120);
  v17 = (v13 + v13 * a2) / v10 - v15;
  v18 = *(result + 56);
  v19 = *(result + 64);
  v20 = *(result + 128);
  v21 = *(result + 136);
  v22 = v19[2];
  v23 = v18[2];
  v24 = v21[2];
  v25 = v20[2];
  v26 = (v25 + v24 * v16 + 2 * v12);
  if (v17 >= 1)
  {
    v27 = 0;
    v28 = *(result + 152);
    v29 = *v19;
    v30 = v19[1];
    v31 = *v21;
    v32 = v21[1];
    v33 = *(v28 + 140);
    v34 = *(v28 + 142);
    v35 = *(v28 + 144);
    v36 = *(v28 + 146);
    v37 = *(v28 + 148);
    v38 = *(v28 + 150);
    v39 = *(v28 + 152);
    _S0 = *(v28 + 36);
    _S1 = *(v28 + 40);
    _S2 = *(v28 + 44);
    _S11 = *(v28 + 48);
    _S22 = *(v28 + 52);
    _S25 = *(v28 + 56);
    _S26 = *(v28 + 60);
    _S28 = *(v28 + 64);
    v48 = v33;
    _Q21.i32[0] = *(v28 + 68);
    *v6.i16 = v33;
    result = (v14 - 7);
    *&_D3 = *(v28 + 136) / *(v28 + 128);
    v50 = v34;
    _S19 = *&_D3 * *v28;
    _S4 = *&_D3 * *(v28 + 8);
    _S5 = *&_D3 * *(v28 + 16);
    _S6 = *&_D3 * *(v28 + 20);
    v55 = v35;
    v56 = v36;
    v57 = v37;
    _S7 = *&_D3 * *(v28 + 28);
    v59 = v38;
    v60 = v39;
    __asm { FCVT            H8, S19 }

    v66 = vdupq_lane_s16(v6, 0);
    *&_D3 = -v34;
    v67 = vdupq_lane_s16(*&_D3, 0);
    v146 = _S7;
    __asm { FCVT            H3, S7 }

    v145 = *&_D3;
    v148 = _S5;
    __asm { FCVT            H3, S5 }

    v143 = *&_D3;
    v147 = _S6;
    __asm { FCVT            H3, S6 }

    v142 = *&_D3;
    *&_D3 = v35;
    v68 = vdupq_lane_s16(*&_D3, 0);
    *&_D3 = v36;
    v69 = vdupq_lane_s16(*&_D3, 0);
    *&_D3 = v37;
    v70 = vdupq_lane_s16(*&_D3, 0);
    *&_D3 = v38;
    v71 = vdupq_lane_s16(*&_D3, 0);
    *&_D3 = v39;
    v72 = vdupq_lane_s16(*&_D3, 0);
    v73 = *(v28 + 132);
    if (v73 >= 0x11)
    {
      v74 = 0;
    }

    else
    {
      v74 = 16 - v73;
    }

    v76 = *v20;
    v75 = v20[1];
    v77 = v75 + v32 * v16 + 2 * v12;
    if (!v75)
    {
      v77 = 0;
    }

    v78 = v76 + v31 * v16 + 2 * v12;
    v80 = *v18;
    v79 = v18[1];
    v81 = v79 + v30 * v11 + v9;
    if (!v79)
    {
      v81 = 0;
    }

    v82 = (v80 + v29 * v11 + v9);
    v149 = _S4;
    __asm { FCVT            H3, S4 }

    v141 = _H3;
    __asm
    {
      FCVT            H4, S0
      FCVT            H5, S1
      FCVT            H6, S2
    }

    v152 = _S11;
    __asm { FCVT            H3, S11 }

    v140 = _H3;
    v151 = _S22;
    __asm { FCVT            H3, S22 }

    v139 = _H3;
    v150 = _S25;
    __asm { FCVT            H3, S25 }

    v138 = _H3;
    v144 = _S26;
    __asm { FCVT            H3, S26 }

    v137 = _H3;
    v91 = _S28;
    __asm { FCVT            H3, S28 }

    v136 = _H3;
    v93 = *_Q21.i32;
    __asm { FCVT            H11, S21 }

    v95 = vdupq_n_s16(v74);
    do
    {
      if (v14 < 8)
      {
        v114 = 0;
        v100 = v77;
        v99 = v78;
        v98 = v81;
        v97 = v82;
      }

      else
      {
        v96 = 0;
        v97 = v82;
        v98 = v81;
        v99 = v78;
        v100 = v77;
        do
        {
          if (v98)
          {
            v153 = vld2_s8(v98);
            v98 += 16;
            *v101.i8 = vzip1_s8(*v153.i8, 0);
            v101.u64[1] = vzip2_s8(*v153.i8, 0);
            *v102.i8 = vzip1_s8(v153.u64[1], 0);
            v102.u64[1] = vzip2_s8(v153.u64[1], 0);
            v103 = vaddq_f16(v67, vcvtq_f16_u16(v101));
            v153 = vaddq_f16(v67, vcvtq_f16_u16(v102));
            v104 = vmulq_n_f16(v153, v141);
            v105 = vmlaq_n_f16(vmulq_n_f16(v103, v143), v153, v142);
            v106 = vmulq_n_f16(v103, v145);
          }

          else
          {
            v106 = 0uLL;
            v105 = 0uLL;
            v104 = 0uLL;
          }

          v107 = *v97++;
          *v108.i8 = vzip1_s8(v107, 0);
          v108.u64[1] = vzip2_s8(v107, 0);
          v109 = vsubq_f16(vcvtq_f16_u16(v108), v66);
          v110 = vmlaq_n_f16(v104, v109, _H8);
          v111 = vmlaq_n_f16(v105, v109, _H8);
          _Q21 = vmlaq_n_f16(v106, v109, _H8);
          *v99++ = vshlq_u16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v68, v110, _H4), v111, _H5), _Q21, _H6), v68), v70)), v95);
          if (v100)
          {
            v112 = vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v69, v110, v137), v111, v136), _Q21, _H11);
            _Q21 = vshlq_u16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v69, v110, v140), v111, v139), _Q21, v138), v71), v72), v71), v72)), v95);
            v113 = vshlq_u16(vcvtq_u16_f16(v112), v95);
            vst2q_s16(v100, *_Q21.i8);
            v100 += 16;
          }

          v96 += 8;
        }

        while (v96 < result);
        v114 = v14 & 0x7FFFFFF8;
      }

      _VF = __OFSUB__(v14, v114);
      v115 = v14 - v114;
      if (!((v115 < 0) ^ _VF | (v115 == 0)))
      {
        do
        {
          if (v98)
          {
            _Q21.i8[0] = *v98;
            *&v116 = _Q21.u32[0];
            v117 = *&v116 - v50;
            LOBYTE(v116) = *(v98 + 1);
            v118 = v116 - v50;
            v98 += 2;
            *_Q21.i32 = v149 * v118;
            v119 = (v147 * v118) + (v117 * v148);
            v120 = v146 * v117;
          }

          else
          {
            v120 = 0.0;
            v119 = 0.0;
            _Q21.i32[0] = 0;
          }

          v121 = v97->u8[0];
          v97 = (v97 + 1);
          v122 = _S19 * (v121 - v48);
          *_Q21.i32 = *_Q21.i32 + v122;
          v123 = v119 + v122;
          v124 = v120 + v122;
          v125 = (((_S1 * v123) + (_S0 * *_Q21.i32)) + (_S2 * v124)) + v55;
          v126 = v57;
          if (v125 <= v57)
          {
            v126 = (((_S1 * v123) + (_S0 * *_Q21.i32)) + (_S2 * v124)) + v55;
            if (v125 < v55)
            {
              v126 = v55;
            }
          }

          v99->i16[0] = llroundf(v126) << v74;
          v99 = (v99 + 2);
          if (v100)
          {
            v127 = ((v56 + (*_Q21.i32 * v152)) + (v123 * v151)) + (v124 * v150);
            v128 = v60;
            if (v127 <= v60)
            {
              v128 = ((v56 + (*_Q21.i32 * v152)) + (v123 * v151)) + (v124 * v150);
              if (v127 < v59)
              {
                v128 = v59;
              }
            }

            *_Q21.i32 = ((v56 + (*_Q21.i32 * v144)) + (v123 * v91)) + (v124 * v93);
            *v100 = llroundf(v128) << v74;
            v129 = v60;
            if (*_Q21.i32 <= v60)
            {
              v129 = *_Q21.i32;
              if (*_Q21.i32 < v59)
              {
                v129 = v59;
              }
            }

            v100[1] = llroundf(v129) << v74;
            v100 += 2;
          }

          --v115;
        }

        while (v115);
      }

      v82 = (v82 + v29);
      v81 += v30;
      v78 += v31;
      v77 += v32;
      ++v27;
    }

    while (v27 != v17);
  }

  if (v23 && v25)
  {
    if (v17 >= 1)
    {
      v130 = 0;
      v131 = (v23 + v22 * v11 + v9);
      do
      {
        if (v14 >= 1)
        {
          v132 = v14;
          v133 = v26;
          v134 = v131;
          do
          {
            v135 = *v134++;
            *v133++ = v135 | (v135 << 8);
            --v132;
          }

          while (v132);
        }

        v131 += v22;
        v26 += v24;
        ++v130;
      }

      while (v130 != v17);
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

  *(v8 + 4 * a2 + 160) = 0;
  return result;
}

uint64_t vt_Copy_444vf_rgb_xf444(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v14 = a1;
  v52 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v47 = a2[1];
  v48 = v16;
  v18 = *a6;
  v17 = a6[1];
  v49 = a2[2];
  v50 = v18;
  v46 = v17;
  v51 = a6[2];
  if (v15 == 255)
  {
    v19 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v19)
    {
      v20 = 0;
LABEL_29:
      free(v19);
      return v20;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v19 = &v44 - v21;
    bzero(&v44 - v21, v22);
  }

  v23 = a9;
  v24 = vbslq_s8(vcgtq_s64(vaddq_s64(v49, v47), v48), vsubq_s64(v48, v49), v47);
  v25 = vbslq_s8(vcgtq_s64(vaddq_s64(v51, v46), v50), vsubq_s64(v50, v51), v46);
  v26 = vbslq_s8(vcgtq_s64(v25, v24), v24, v25);
  v27 = v49.i64[1];
  v28 = vaddq_s64((*&v49 + __PAIR128__(-1, 0)), v26);
  v29 = v28.i64[0] + *a4 * v28.i64[1] > *a5;
  v45 = a9;
  v46.i64[0] = v49.i64[1];
  v47 = v26;
  if (v29)
  {
    v30 = v14;
    v31 = a7;
    v32 = a8;
  }

  else if (*(a3 + 8) && (a4[1] * v28.i64[1] + 2 * v28.i64[0]) > a5[1])
  {
    v30 = v14;
    v31 = a7;
    v32 = a8;
  }

  else if (*(a3 + 16) && v28.i64[0] + a4[2] * v28.i64[1] > a5[2])
  {
    v30 = v14;
    v31 = a7;
    v32 = a8;
  }

  else
  {
    v33.i64[0] = v26.i64[0];
    v33.i64[1] = -1;
    v34 = vaddq_s64(v51, v33);
    v35 = v34.i64[1] + v26.i64[1];
    if ((*a8 * (v34.i64[1] + v26.i64[1]) + 2 * v34.i64[0]) <= *a9)
    {
      if (*(a7 + 8) && (a8[1] * v35 + 4 * v34.i64[0]) > a9[1])
      {
        v30 = v14;
        v31 = a7;
        v32 = a8;
      }

      else
      {
        if (!*(a7 + 16) || (2 * v34.i64[0] + a8[2] * v35) <= a9[2])
        {
          goto LABEL_23;
        }

        v30 = v14;
        v31 = a7;
        v32 = a8;
      }
    }

    else
    {
      v30 = v14;
      v31 = a7;
      v32 = a8;
    }
  }

  fig_log_get_emitter();
  v36 = FigSignalErrorAtGM();
  a8 = v32;
  a7 = v31;
  v14 = v30;
  v23 = v45;
  v27 = v46.i64[0];
  v26 = v47;
  if (v36)
  {
    v20 = v36;
    goto LABEL_28;
  }

LABEL_23:
  *v19 = v15;
  v37 = v49.i64[0];
  *(v19 + 4) = v48;
  *(v19 + 20) = v26;
  *(v19 + 36) = v37;
  *(v19 + 44) = v27;
  v38 = v51;
  *(v19 + 5) = v50;
  *(v19 + 6) = v26;
  *(v19 + 7) = v38;
  *(v19 + 7) = a3;
  *(v19 + 8) = a4;
  *(v19 + 9) = a5;
  *(v19 + 16) = a7;
  *(v19 + 17) = a8;
  *(v19 + 18) = v23;
  *(v19 + 19) = v14;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v15, global_queue, v19, vt_Copy_444vf_rgb_xf444_GCD);
  if (!v15)
  {
    return 0;
  }

  v40 = (v19 + 160);
  v41 = v15;
  while (1)
  {
    v42 = *v40++;
    v20 = v42;
    if (v42)
    {
      break;
    }

    if (!--v41)
    {
      v20 = 0;
      break;
    }
  }

LABEL_28:
  if (v15 == 255)
  {
    goto LABEL_29;
  }

  return v20;
}

void *vt_Copy_444vf_rgb_xf444_GCD(void *a1, uint64_t a2)
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
  v23 = v18[2];
  v24 = v21[2];
  v25 = result[2];
  v26 = (v25 + v24 * v16 + 2 * v12);
  if (v17 >= 1)
  {
    v27 = 0;
    v28 = a1[19];
    v29 = *v19;
    v30 = v19[1];
    v31 = *v21;
    v32 = v21[1];
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
    v52 = *(v28 + 48);
    v53 = *(v28 + 52);
    v54 = *(v28 + 56);
    v55 = *(v28 + 60);
    v56 = *(v28 + 64);
    v57 = *(v28 + 68);
    v58 = *(v28 + 132);
    if (v58 >= 0x11)
    {
      v59 = 0;
    }

    else
    {
      v59 = 16 - v58;
    }

    v61 = *result;
    v60 = result[1];
    result = (v60 + v32 * v16 + 2 * v12);
    if (!v60)
    {
      result = 0;
    }

    v62 = v61 + v31 * v16 + 2 * v12;
    v64 = *v18;
    v63 = v18[1];
    v65 = (v63 + v30 * v11 + v9);
    if (!v63)
    {
      v65 = 0;
    }

    v66 = (v64 + v29 * v11 + v9);
    do
    {
      v67 = v14;
      v68 = v66;
      v69 = v65;
      v70 = result;
      v71 = v62;
      if (v14 >= 1)
      {
        do
        {
          if (v69)
          {
            LOBYTE(v6) = *v69;
            *&v72 = LODWORD(v6);
            v73 = *&v72 - v37;
            LOBYTE(v72) = v69[1];
            v74 = v72 - v37;
            v69 += 2;
            v75 = v39 * v74;
            v76 = (v41 * v74) + (v73 * v40);
            v77 = v43 * v73;
          }

          else
          {
            v77 = 0.0;
            v76 = 0.0;
            v75 = 0.0;
          }

          v78 = *v68++;
          v79 = v38 * (v78 - v36);
          v6 = v75 + v79;
          v80 = v76 + v79;
          v81 = v77 + v79;
          v82 = (((v50 * v80) + (v49 * v6)) + (v51 * v81)) + v44;
          v83 = v46;
          if (v82 <= v46)
          {
            v83 = (((v50 * v80) + (v49 * v6)) + (v51 * v81)) + v44;
            if (v82 < v44)
            {
              v83 = v44;
            }
          }

          *v71++ = llroundf(v83) << v59;
          if (v70)
          {
            v84 = ((v45 + (v6 * v52)) + (v80 * v53)) + (v81 * v54);
            v85 = v48;
            if (v84 <= v48)
            {
              v85 = ((v45 + (v6 * v52)) + (v80 * v53)) + (v81 * v54);
              if (v84 < v47)
              {
                v85 = v47;
              }
            }

            v6 = ((v45 + (v6 * v55)) + (v80 * v56)) + (v81 * v57);
            *v70 = llroundf(v85) << v59;
            v86 = v48;
            if (v6 <= v48)
            {
              v86 = v6;
              if (v6 < v47)
              {
                v86 = v47;
              }
            }

            v70[1] = llroundf(v86) << v59;
            v70 += 2;
          }

          --v67;
        }

        while (v67);
      }

      v66 += v29;
      v65 += v30;
      v62 += v31;
      result = (result + v32);
      ++v27;
    }

    while (v27 != v17);
  }

  if (v23 && v25)
  {
    if (v17 >= 1)
    {
      v87 = 0;
      v88 = (v23 + v22 * v11 + v9);
      do
      {
        if (v14 >= 1)
        {
          v89 = v14;
          v90 = v26;
          v91 = v88;
          do
          {
            v92 = *v91++;
            *v90++ = v92 | (v92 << 8);
            --v89;
          }

          while (v89);
        }

        v88 += v22;
        v26 += v24;
        ++v87;
      }

      while (v87 != v17);
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

uint64_t vt_Copy_444vf_TRC_Tone_Mat_TRC_BGRA_neon_fp16(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v47 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v42 = a2[1];
  v43 = v16;
  v18 = *a6;
  v17 = a6[1];
  v44 = a2[2];
  v45 = v18;
  v41 = v17;
  v46 = a6[2];
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
    v19 = &v39 - v21;
    bzero(&v39 - v21, v22);
  }

  v23 = a9;
  v24 = vbslq_s8(vcgtq_s64(vaddq_s64(v44, v42), v43), vsubq_s64(v43, v44), v42);
  v25 = vbslq_s8(vcgtq_s64(vaddq_s64(v46, v41), v45), vsubq_s64(v45, v46), v41);
  v26 = vbslq_s8(vcgtq_s64(v25, v24), v24, v25);
  v27 = v44.i64[1];
  v28 = vaddq_s64((*&v44 + __PAIR128__(-1, 0)), v26);
  if ((v28.i64[0] + *a4 * v28.i64[1] > *a5 || *(a3 + 8) && (a4[1] * v28.i64[1] + 2 * v28.i64[0]) > a5[1] || *(a3 + 16) && v28.i64[0] + a4[2] * v28.i64[1] > a5[2] || (v29.i64[0] = v26.i64[0], v29.i64[1] = -1, v30 = vaddq_s64(v46, v29), (*a8 * (v30.i64[1] + v26.i64[1]) + 4 * v30.i64[0]) > *a9)) && (v40 = v44.i64[1], v41 = v26, v42.i64[0] = a9, fig_log_get_emitter(), v31 = FigSignalErrorAtGM(), v23 = v42.i64[0], v26 = v41, v27 = v40, v31))
  {
    v20 = v31;
  }

  else
  {
    *v19 = v15;
    v32 = v44.i64[0];
    *(v19 + 4) = v43;
    *(v19 + 20) = v26;
    *(v19 + 36) = v32;
    *(v19 + 44) = v27;
    v33 = v46;
    *(v19 + 5) = v45;
    *(v19 + 6) = v26;
    *(v19 + 7) = v33;
    *(v19 + 7) = a3;
    *(v19 + 8) = a4;
    *(v19 + 9) = a5;
    *(v19 + 16) = a7;
    *(v19 + 17) = a8;
    *(v19 + 18) = v23;
    *(v19 + 19) = a1;
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_444vf_TRC_Tone_Mat_TRC_BGRA_neon_fp16_GCD);
    if (!v15)
    {
      return 0;
    }

    v35 = (v19 + 160);
    v36 = v15;
    while (1)
    {
      v37 = *v35++;
      v20 = v37;
      if (v37)
      {
        break;
      }

      if (!--v36)
      {
        v20 = 0;
        break;
      }
    }
  }

  if (v15 == 255)
  {
    goto LABEL_19;
  }

  return v20;
}

uint64_t vt_Copy_444vf_TRC_Tone_Mat_TRC_BGRA_neon_fp16_GCD(void *a1, uint64_t a2, double _D0)
{
  v3 = 0;
  v4 = 0;
  v5 = *(a1 + 36);
  v6 = *a1;
  v7 = *(a1 + 28) * a2 / v6 + *(a1 + 44);
  v8 = a1[15];
  v174 = a1[14];
  v10 = a1[12];
  v9 = a1[13];
  v11 = a1[19];
  v13 = a1[7];
  v12 = a1[8];
  v14 = a1[16];
  v15 = a1[17];
  result = *v12;
  v17 = v12[1];
  v18 = v12[2];
  v19 = v13[1];
  v171 = *v13;
  v20 = v13[2];
  v21 = *v15;
  v170 = *v14;
  v22 = *(v11 + 128);
  v182 = *(v11 + 158);
  v205[0] = *(v11 + 158);
  v23 = v9 * a2 / v6;
  v24 = v9 + v9 * a2;
  v25 = v21 * (v23 + v8);
  v181 = *(v11 + 159);
  v205[1] = *(v11 + 159);
  v180 = *(v11 + 160);
  v205[2] = *(v11 + 160);
  v179 = *(v11 + 161);
  v205[3] = *(v11 + 161);
  v26 = *(v11 + 140);
  v27 = *(v11 + 142);
  LODWORD(_D0) = *v11;
  v28 = *(v11 + 8);
  v29 = *(v11 + 16);
  v30 = *(v11 + 20);
  v31 = *(v11 + 28);
  _S22 = *(v11 + 72);
  _S24 = *(v11 + 76);
  _S28 = *(v11 + 80);
  _S31 = *(v11 + 84);
  v201 = *(v11 + 92);
  v202 = *(v11 + 88);
  v199 = *(v11 + 100);
  v200 = *(v11 + 96);
  v197 = *(v11 + 108);
  v198 = *(v11 + 104);
  v195 = *(v11 + 116);
  v196 = *(v11 + 112);
  v194 = *(v11 + 120);
  v203 = 0u;
  v204 = 0u;
  v36 = v24 / v6;
  do
  {
    v37 = 0;
    v38 = v205[v4];
    do
    {
      *((&v203 + ((v38 + 4 * v37) & 0xF8)) | (v38 + 4 * v37) & 7) = v3 + v37;
      ++v37;
    }

    while (v37 != 8);
    ++v4;
    v3 += 8;
  }

  while (v4 != 4);
  v39 = v36 - v23;
  if (v36 - v23 >= 1)
  {
    v40 = 0;
    *_D6.i32 = v26;
    v42 = 8191.0 / v22;
    v43 = v27;
    *&_D0 = v42 * *&_D0;
    v193 = *&_D0;
    __asm { FCVT            H8, S0 }

    *&_D0 = v26;
    v49 = vdupq_lane_s16(*&_D0, 0);
    *&_D0 = -v27;
    v50 = vdupq_lane_s16(*&_D0, 0);
    v187 = v42 * v31;
    v188 = v42 * v30;
    __asm { FCVT            H0, S4 }

    v186 = _H0;
    v189 = v42 * v29;
    v190 = v42 * v28;
    __asm { FCVT            H0, S2 }

    v185 = _H0;
    v53 = v11 + 16548;
    v54 = v11 + 164;
    v55 = v11 + 32932;
    __asm { FCVT            H0, S3 }

    v184 = _H0;
    __asm { FCVT            H0, S1 }

    v183 = _H0;
    _S0 = v197;
    __asm { FCVT            H0, S0 }

    v192 = *&_S0;
    _S0 = v196;
    __asm { FCVT            H0, S0 }

    v191 = *&_S0;
    _S0 = v194;
    _S1 = v195;
    __asm
    {
      FCVT            H15, S1
      FCVT            H9, S0
      FCVT            H10, S22
      FCVT            H11, S24
      FCVT            H12, S28
      FCVT            H0, S31
    }

    _S2 = v201;
    _S1 = v202;
    __asm
    {
      FCVT            H1, S1
      FCVT            H2, S2
    }

    _S4 = v199;
    _S3 = v200;
    __asm
    {
      FCVT            H3, S3
      FCVT            H4, S4
    }

    _S5 = v198;
    __asm { FCVT            H5, S5 }

    v78 = v170 + v25 + 4 * v174;
    if (v20)
    {
      v79 = (v20 + v18 * v7 + v5);
    }

    else
    {
      v79 = 0;
    }

    if (v19)
    {
      v80 = v19 + v17 * v7 + v5;
    }

    else
    {
      v80 = 0;
    }

    v81 = (v171 + result * v7 + v5);
    v82.i64[0] = 0x9000900090009000;
    v82.i64[1] = 0x9000900090009000;
    v177 = _S24;
    v178 = _S22;
    v175 = _S31;
    v176 = _S28;
    do
    {
      if (v10 < 8)
      {
        v124 = 0;
        v89 = v80;
        v88 = v79;
        v87 = v78;
        v86 = v81;
      }

      else
      {
        v83 = 0;
        v85 = *(&v203 + 8);
        v84 = v203;
        v86 = v81;
        v87 = v78;
        v88 = v79;
        v89 = v80;
        v90 = *(&v204 + 8);
        _D6 = v204;
        do
        {
          if (v89)
          {
            v206 = vld2_s8(v89);
            v89 += 16;
            *v91.i8 = vzip1_s8(*v206.i8, 0);
            v91.u64[1] = vzip2_s8(*v206.i8, 0);
            *v92.i8 = vzip1_s8(v206.u64[1], 0);
            v92.u64[1] = vzip2_s8(v206.u64[1], 0);
            *(&v206 + 8) = vaddq_f16(v50, vcvtq_f16_u16(v91));
            v206 = vaddq_f16(v50, vcvtq_f16_u16(v92));
            v93 = vmulq_n_f16(v206, v183);
            v94 = vmlaq_n_f16(vmulq_n_f16(*(&v206 + 8), v185), v206, v184);
            v95 = vmulq_n_f16(*(&v206 + 8), v186);
          }

          else
          {
            v95 = 0uLL;
            v94 = 0uLL;
            v93 = 0uLL;
          }

          v96 = *v86++;
          v97 = 0;
          *v98.i8 = vzip1_s8(v96, 0);
          v98.u64[1] = vzip2_s8(v96, 0);
          v99 = vsubq_f16(vcvtq_f16_u16(v98), v49);
          v100 = vmlaq_n_f16(v93, v99, _H8);
          v101 = vmlaq_n_f16(v94, v99, _H8);
          v102 = vmlaq_n_f16(v95, v99, _H8);
          if (v88)
          {
            v103 = *v88;
            v88 += 8;
            v97 = v103;
          }

          v104 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v100, 0), v82));
          v105.i16[0] = *(v54 + 2 * v104.u16[0]);
          v105.i16[1] = *(v54 + 2 * v104.u16[1]);
          v105.i16[2] = *(v54 + 2 * v104.u16[2]);
          v105.i16[3] = *(v54 + 2 * v104.u16[3]);
          v105.i16[4] = *(v54 + 2 * v104.u16[4]);
          v105.i16[5] = *(v54 + 2 * v104.u16[5]);
          v105.i16[6] = *(v54 + 2 * v104.u16[6]);
          v105.i16[7] = *(v54 + 2 * v104.u16[7]);
          v106 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v101, 0), v82));
          v107.i16[0] = *(v54 + 2 * v106.u16[0]);
          v107.i16[1] = *(v54 + 2 * v106.u16[1]);
          v107.i16[2] = *(v54 + 2 * v106.u16[2]);
          v107.i16[3] = *(v54 + 2 * v106.u16[3]);
          v107.i16[4] = *(v54 + 2 * v106.u16[4]);
          v107.i16[5] = *(v54 + 2 * v106.u16[5]);
          v107.i16[6] = *(v54 + 2 * v106.u16[6]);
          v107.i16[7] = *(v54 + 2 * v106.u16[7]);
          v108 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v102, 0), v82));
          v109.i16[0] = *(v54 + 2 * v108.u16[0]);
          v109.i16[1] = *(v54 + 2 * v108.u16[1]);
          v109.i16[2] = *(v54 + 2 * v108.u16[2]);
          v109.i16[3] = *(v54 + 2 * v108.u16[3]);
          v109.i16[4] = *(v54 + 2 * v108.u16[4]);
          v109.i16[5] = *(v54 + 2 * v108.u16[5]);
          v109.i16[6] = *(v54 + 2 * v108.u16[6]);
          v109.i16[7] = *(v54 + 2 * v108.u16[7]);
          v110 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v105, v192), v107, v191), v109, _H15), vmaxq_f16(vmaxq_f16(v105, v107), v109), _H9), 0), v82));
          v111.i16[0] = *(v53 + 2 * v110.u16[0]);
          v111.i16[1] = *(v53 + 2 * v110.u16[1]);
          v111.i16[2] = *(v53 + 2 * v110.u16[2]);
          v111.i16[3] = *(v53 + 2 * v110.u16[3]);
          v111.i16[4] = *(v53 + 2 * v110.u16[4]);
          v111.i16[5] = *(v53 + 2 * v110.u16[5]);
          v111.i16[6] = *(v53 + 2 * v110.u16[6]);
          v111.i16[7] = *(v53 + 2 * v110.u16[7]);
          v112 = vmulq_f16(v105, v111);
          v113 = vmulq_f16(v107, v111);
          v114 = vmulq_f16(v109, v111);
          v115 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v112, _H10), v113, _H11), v114, _H12);
          v116 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v112, _H0), v113, _H1), v114, _H2);
          v117 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v114, _H5), v113, _H4), v112, _H3);
          v118 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v115, 0), v82));
          v112.i16[0] = *(v55 + 2 * v118.u16[0]);
          v112.i16[1] = *(v55 + 2 * v118.u16[1]);
          v112.i16[2] = *(v55 + 2 * v118.u16[2]);
          v112.i16[3] = *(v55 + 2 * v118.u16[3]);
          v112.i16[4] = *(v55 + 2 * v118.u16[4]);
          v112.i16[5] = *(v55 + 2 * v118.u16[5]);
          v112.i16[6] = *(v55 + 2 * v118.u16[6]);
          v112.i16[7] = *(v55 + 2 * v118.u16[7]);
          v119 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v116, 0), v82));
          v118.i16[0] = *(v55 + 2 * v119.u16[0]);
          v118.i16[1] = *(v55 + 2 * v119.u16[1]);
          v118.i16[2] = *(v55 + 2 * v119.u16[2]);
          v118.i16[3] = *(v55 + 2 * v119.u16[3]);
          v118.i16[4] = *(v55 + 2 * v119.u16[4]);
          v118.i16[5] = *(v55 + 2 * v119.u16[5]);
          v118.i16[6] = *(v55 + 2 * v119.u16[6]);
          v118.i16[7] = *(v55 + 2 * v119.u16[7]);
          v120 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v117, 0), v82));
          v119.i16[0] = *(v55 + 2 * v120.u16[0]);
          v119.i16[1] = *(v55 + 2 * v120.u16[1]);
          v119.i16[2] = *(v55 + 2 * v120.u16[2]);
          v119.i16[3] = *(v55 + 2 * v120.u16[3]);
          v119.i16[4] = *(v55 + 2 * v120.u16[4]);
          v119.i16[5] = *(v55 + 2 * v120.u16[5]);
          v119.i16[6] = *(v55 + 2 * v120.u16[6]);
          v119.i16[7] = *(v55 + 2 * v120.u16[7]);
          v121 = vmaxq_f16(v112, 0);
          v122 = vdupq_n_s16(0x5BF8u);
          *v207.val[1].i8 = vmovn_s16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(v119, 0), v122)));
          v207.val[0] = vuzp1q_s8(vcvtq_u16_f16(vminq_f16(v121, v122)), vcvtq_u16_f16(vminq_f16(vmaxq_f16(v118, 0), v122)));
          v207.val[1].u64[1] = vorr_s8(v97, vceqd_s64(v88, 0));
          *&v123 = vqtbl2_s8(v207, v84);
          *(&v123 + 1) = vqtbl2_s8(v207, v85);
          *v121.i8 = vqtbl2_s8(v207, _D6);
          v121.u64[1] = vqtbl2_s8(v207, v90);
          *v87 = v123;
          v87[1] = v121;
          v87 += 2;
          v83 += 8;
        }

        while (v83 < v10 - 7);
        v124 = v10 & 0xFFFFFFF8;
        _S24 = v177;
        _S22 = v178;
        _S31 = v175;
        _S28 = v176;
      }

      v125 = v10 - v124;
      if (v10 > v124)
      {
        v126 = v87 + v179;
        v127 = v87 + v180;
        v128 = v87 + v181;
        v129 = v87 + v182;
        do
        {
          if (v89)
          {
            _D6.i8[0] = *v89;
            *&v130 = _D6.u32[0];
            v131 = *&v130 - v43;
            LOBYTE(v130) = *(v89 + 1);
            v132 = v130 - v43;
            v89 += 2;
            *_D6.i32 = v190 * v132;
            v133 = (v188 * v132) + (v131 * v189);
            v134 = v187 * v131;
          }

          else
          {
            v134 = 0.0;
            v133 = 0.0;
            _D6.i32[0] = 0;
          }

          v135 = v86->u8[0];
          v86 = (v86 + 1);
          v136 = v193 * (v135 - v26);
          v137 = *_D6.i32 + v136;
          v138 = (*_D6.i32 + v136) <= 8191.0;
          v139 = 8191.0;
          if (v138)
          {
            v139 = v137;
            if (v137 < 0.0)
            {
              v139 = 0.0;
            }
          }

          v140 = v133 + v136;
          v138 = (v133 + v136) <= 8191.0;
          v141 = 8191.0;
          if (v138)
          {
            v141 = v140;
            if (v140 < 0.0)
            {
              v141 = 0.0;
            }
          }

          v142 = v134 + v136;
          v143 = 8191.0;
          if (v142 <= 8191.0)
          {
            v143 = v142;
            if (v142 < 0.0)
            {
              v143 = 0.0;
            }
          }

          if (v88)
          {
            v145 = *v88++;
            v144 = v145;
          }

          else
          {
            v144 = 0;
          }

          _H17 = *(v54 + 2 * llroundf(fminf(fmaxf(v139, 0.0), 8191.0)));
          __asm { FCVT            S17, H17 }

          _H16 = *(v54 + 2 * llroundf(fminf(fmaxf(v141, 0.0), 8191.0)));
          v149 = llroundf(fminf(fmaxf(v143, 0.0), 8191.0));
          __asm { FCVT            S7, H16 }

          _H16 = *(v54 + 2 * v149);
          __asm { FCVT            S19, H16 }

          v153 = (((v196 * _S7) + (v197 * _S17)) + (v195 * _S19)) + (v194 * fmaxf(_S17, fmaxf(_S7, _S19)));
          v154 = 8191.0;
          if (v153 <= 8191.0)
          {
            v154 = v153;
            if (v153 < 0.0)
            {
              v154 = 0.0;
            }
          }

          _H16 = *(v53 + 2 * llroundf(v154));
          __asm { FCVT            S20, H16 }

          v157 = _S17 * _S20;
          v158 = _S7 * _S20;
          v159 = _S19 * _S20;
          v160 = *(v55 + 2 * llroundf(fminf(fmaxf(((_S24 * (_S7 * _S20)) + (v157 * _S22)) + ((_S19 * _S20) * _S28), 0.0), 8191.0)));
          if (!v88)
          {
            v144 = -1;
          }

          if (v160 <= COERCE_SHORT_FLOAT(23544))
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

          v163 = ((v202 * v158) + (v157 * _S31)) + (v159 * v201);
          v164 = ((v199 * v158) + (v157 * v200)) + (v159 * v198);
          v165 = *(v55 + 2 * llroundf(fminf(fmaxf(v163, 0.0), 8191.0)));
          v166 = *(v55 + 2 * llroundf(fminf(fmaxf(v164, 0.0), 8191.0)));
          *v129 = llroundf(_S19);
          if (v165 <= COERCE_SHORT_FLOAT(23544))
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

          *v128 = llroundf(_S16);
          if (v166 <= COERCE_SHORT_FLOAT(23544))
          {
            __asm { FCMP            H6, #0 }

            if (_NF)
            {
              _D6.i32[0] = 0;
            }

            else
            {
              __asm { FCVT            S6, H6 }
            }
          }

          else
          {
            _D6.i32[0] = 1132396544;
          }

          *v127 = llroundf(*_D6.i32);
          v127 += 4;
          *v126 = v144;
          v126 += 4;
          v128 += 4;
          v129 += 4;
          --v125;
        }

        while (v125);
      }

      v81 = (v81 + result);
      v80 += v17;
      v79 += v18;
      v78 += v21;
      ++v40;
    }

    while (v40 != v39);
  }

  *(a1 + a2 + 40) = 0;
  return result;
}

uint64_t vt_Copy_444vf_TRC_Tone_Mat_TRC_BGRA(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v47 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v42 = a2[1];
  v43 = v16;
  v18 = *a6;
  v17 = a6[1];
  v44 = a2[2];
  v45 = v18;
  v41 = v17;
  v46 = a6[2];
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
    v19 = &v39 - v21;
    bzero(&v39 - v21, v22);
  }

  v23 = a9;
  v24 = vbslq_s8(vcgtq_s64(vaddq_s64(v44, v42), v43), vsubq_s64(v43, v44), v42);
  v25 = vbslq_s8(vcgtq_s64(vaddq_s64(v46, v41), v45), vsubq_s64(v45, v46), v41);
  v26 = vbslq_s8(vcgtq_s64(v25, v24), v24, v25);
  v27 = v44.i64[1];
  v28 = vaddq_s64((*&v44 + __PAIR128__(-1, 0)), v26);
  if ((v28.i64[0] + *a4 * v28.i64[1] > *a5 || *(a3 + 8) && (a4[1] * v28.i64[1] + 2 * v28.i64[0]) > a5[1] || *(a3 + 16) && v28.i64[0] + a4[2] * v28.i64[1] > a5[2] || (v29.i64[0] = v26.i64[0], v29.i64[1] = -1, v30 = vaddq_s64(v46, v29), (*a8 * (v30.i64[1] + v26.i64[1]) + 4 * v30.i64[0]) > *a9)) && (v40 = v44.i64[1], v41 = v26, v42.i64[0] = a9, fig_log_get_emitter(), v31 = FigSignalErrorAtGM(), v23 = v42.i64[0], v26 = v41, v27 = v40, v31))
  {
    v20 = v31;
  }

  else
  {
    *v19 = v15;
    v32 = v44.i64[0];
    *(v19 + 4) = v43;
    *(v19 + 20) = v26;
    *(v19 + 36) = v32;
    *(v19 + 44) = v27;
    v33 = v46;
    *(v19 + 5) = v45;
    *(v19 + 6) = v26;
    *(v19 + 7) = v33;
    *(v19 + 7) = a3;
    *(v19 + 8) = a4;
    *(v19 + 9) = a5;
    *(v19 + 16) = a7;
    *(v19 + 17) = a8;
    *(v19 + 18) = v23;
    *(v19 + 19) = a1;
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_444vf_TRC_Tone_Mat_TRC_BGRA_GCD);
    if (!v15)
    {
      return 0;
    }

    v35 = (v19 + 160);
    v36 = v15;
    while (1)
    {
      v37 = *v35++;
      v20 = v37;
      if (v37)
      {
        break;
      }

      if (!--v36)
      {
        v20 = 0;
        break;
      }
    }
  }

  if (v15 == 255)
  {
    goto LABEL_19;
  }

  return v20;
}

unsigned __int8 *vt_Copy_444vf_TRC_Tone_Mat_TRC_BGRA_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, float a5)
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
    v14 = *(result + 7);
    v13 = *(result + 8);
    v15 = *v13;
    v16 = v13[1];
    v17 = v13[2];
    v18 = **(result + 17);
    *&v19 = *(v12 + 128);
    v20 = 8191.0 / *&v19;
    LOWORD(v19) = *(v12 + 140);
    v21 = v19;
    LOWORD(a5) = *(v12 + 142);
    v22 = LODWORD(a5);
    v23 = v20 * *v12;
    v24 = v20 * *(v12 + 8);
    v25 = v20 * *(v12 + 16);
    v26 = v20 * *(v12 + 20);
    v27 = v20 * *(v12 + 28);
    v28 = *(v12 + 72);
    v29 = *(v12 + 76);
    v30 = *(v12 + 80);
    v31 = *(v12 + 84);
    v32 = *(v12 + 88);
    v33 = *(v12 + 92);
    v34 = *(v12 + 96);
    v35 = *(v12 + 100);
    v36 = v12 + 164;
    v37 = v12 + 16548;
    v38 = v12 + 32932;
    v39 = *(v12 + 104);
    v40 = *(v12 + 108);
    v41 = *(v12 + 112);
    v42 = *(v12 + 116);
    v43 = *(v12 + 120);
    v44 = v8 + *(result + 15);
    v45 = *(result + 28) * a2 / v6 + *(result + 44);
    v46 = *(result + 36);
    v47 = *(v12 + 161);
    v48 = *(v12 + 160);
    v49 = *(v12 + 159);
    v50 = *(v12 + 158);
    v51 = **(result + 16) + v18 * v44 + 4 * *(result + 14);
    v52 = v14[2];
    if (v52)
    {
      v53 = (v52 + v45 * v17 + v46);
    }

    else
    {
      v53 = 0;
    }

    v55 = *v14;
    v54 = v14[1];
    v56 = (v54 + v45 * v16 + v46);
    if (!v54)
    {
      v56 = 0;
    }

    v57 = (v55 + v45 * v15 + v46);
    do
    {
      if (v11 >= 1)
      {
        v58 = v11;
        v59 = v57;
        v60 = v51;
        v61 = v53;
        v62 = v56;
        do
        {
          if (v62)
          {
            LOBYTE(_S31) = *v62;
            *&v63 = LODWORD(_S31);
            v64 = *&v63 - v22;
            LOBYTE(v63) = v62[1];
            v65 = v63 - v22;
            v62 += 2;
            v66 = v24 * v65;
            v67 = (v26 * v65) + (v64 * v25);
            v68 = v27 * v64;
          }

          else
          {
            v68 = 0.0;
            v67 = 0.0;
            v66 = 0.0;
          }

          v69 = *v59++;
          v70 = v23 * (v69 - v21);
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

          if (v61)
          {
            v79 = *v61++;
            v78 = v79;
          }

          else
          {
            v78 = 0;
          }

          _H31 = *(v36 + 2 * llroundf(fminf(fmaxf(v73, 0.0), 8191.0)));
          __asm { FCVT            S31, H31 }

          _H9 = *(v36 + 2 * llroundf(fminf(fmaxf(v75, 0.0), 8191.0)));
          v87 = llroundf(fminf(fmaxf(v77, 0.0), 8191.0));
          __asm { FCVT            S8, H9 }

          _H9 = *(v36 + 2 * v87);
          __asm { FCVT            S10, H9 }

          v91 = (((v41 * _S8) + (v40 * _S31)) + (v42 * _S10)) + (v43 * fmaxf(_S31, fmaxf(_S8, _S10)));
          v92 = 8191.0;
          if (v91 <= 8191.0)
          {
            v92 = v91;
            if (v91 < 0.0)
            {
              v92 = 0.0;
            }
          }

          _H9 = *(v37 + 2 * llroundf(v92));
          __asm { FCVT            S11, H9 }

          v95 = _S31 * _S11;
          v96 = _S8 * _S11;
          v97 = _S10 * _S11;
          v98 = *(v38 + 2 * llroundf(fminf(fmaxf(((v29 * v96) + (v95 * v28)) + ((_S10 * _S11) * v30), 0.0), 8191.0)));
          if (!v61)
          {
            v78 = -1;
          }

          if (v98 <= COERCE_SHORT_FLOAT(23544))
          {
            __asm { FCMP            H10, #0 }

            if (_NF)
            {
              _S10 = 0.0;
            }

            else
            {
              __asm { FCVT            S10, H10 }
            }
          }

          else
          {
            _S10 = 255.0;
          }

          v101 = ((v32 * v96) + (v95 * v31)) + (v97 * v33);
          v102 = ((v35 * v96) + (v95 * v34)) + (v97 * v39);
          v103 = *(v38 + 2 * llroundf(fminf(fmaxf(v101, 0.0), 8191.0)));
          v104 = *(v38 + 2 * llroundf(fminf(fmaxf(v102, 0.0), 8191.0)));
          *(v60 + v50) = llroundf(_S10);
          if (v103 <= COERCE_SHORT_FLOAT(23544))
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

          *(v60 + v49) = llroundf(_S8);
          if (v104 <= COERCE_SHORT_FLOAT(23544))
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

          *(v60 + v48) = llroundf(_S31);
          *(v60 + v47) = v78;
          v60 += 4;
          --v58;
        }

        while (v58);
      }

      v57 += v15;
      v56 += v16;
      v53 += v17;
      v51 += v18;
      ++v10;
    }

    while (v10 != v9);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_444vf_TRC_Mat_TRC_BGRA_neon_fp16(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v47 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v42 = a2[1];
  v43 = v16;
  v18 = *a6;
  v17 = a6[1];
  v44 = a2[2];
  v45 = v18;
  v41 = v17;
  v46 = a6[2];
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
    v19 = &v39 - v21;
    bzero(&v39 - v21, v22);
  }

  v23 = a9;
  v24 = vbslq_s8(vcgtq_s64(vaddq_s64(v44, v42), v43), vsubq_s64(v43, v44), v42);
  v25 = vbslq_s8(vcgtq_s64(vaddq_s64(v46, v41), v45), vsubq_s64(v45, v46), v41);
  v26 = vbslq_s8(vcgtq_s64(v25, v24), v24, v25);
  v27 = v44.i64[1];
  v28 = vaddq_s64((*&v44 + __PAIR128__(-1, 0)), v26);
  if ((v28.i64[0] + *a4 * v28.i64[1] > *a5 || *(a3 + 8) && (a4[1] * v28.i64[1] + 2 * v28.i64[0]) > a5[1] || *(a3 + 16) && v28.i64[0] + a4[2] * v28.i64[1] > a5[2] || (v29.i64[0] = v26.i64[0], v29.i64[1] = -1, v30 = vaddq_s64(v46, v29), (*a8 * (v30.i64[1] + v26.i64[1]) + 4 * v30.i64[0]) > *a9)) && (v40 = v44.i64[1], v41 = v26, v42.i64[0] = a9, fig_log_get_emitter(), v31 = FigSignalErrorAtGM(), v23 = v42.i64[0], v26 = v41, v27 = v40, v31))
  {
    v20 = v31;
  }

  else
  {
    *v19 = v15;
    v32 = v44.i64[0];
    *(v19 + 4) = v43;
    *(v19 + 20) = v26;
    *(v19 + 36) = v32;
    *(v19 + 44) = v27;
    v33 = v46;
    *(v19 + 5) = v45;
    *(v19 + 6) = v26;
    *(v19 + 7) = v33;
    *(v19 + 7) = a3;
    *(v19 + 8) = a4;
    *(v19 + 9) = a5;
    *(v19 + 16) = a7;
    *(v19 + 17) = a8;
    *(v19 + 18) = v23;
    *(v19 + 19) = a1;
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_444vf_TRC_Mat_TRC_BGRA_neon_fp16_GCD);
    if (!v15)
    {
      return 0;
    }

    v35 = (v19 + 160);
    v36 = v15;
    while (1)
    {
      v37 = *v35++;
      v20 = v37;
      if (v37)
      {
        break;
      }

      if (!--v36)
      {
        v20 = 0;
        break;
      }
    }
  }

  if (v15 == 255)
  {
    goto LABEL_19;
  }

  return v20;
}

unsigned __int8 *vt_Copy_444vf_TRC_Mat_TRC_BGRA_neon_fp16_GCD(unsigned __int8 *result, uint64_t a2, double a3)
{
  v3 = 0;
  v4 = 0;
  v5 = *(result + 36);
  v6 = *result;
  v7 = *(result + 28) * a2 / v6 + *(result + 44);
  v152 = *(result + 14);
  v8 = *(result + 12);
  v9 = *(result + 13);
  v10 = v9 * a2;
  v11 = *(result + 19);
  v13 = *(result + 7);
  v12 = *(result + 8);
  v14 = *v12;
  v15 = v12[1];
  v16 = v12[2];
  v17 = *v13;
  v18 = v13[1];
  v19 = v13[2];
  v20 = **(result + 17);
  v21 = v10 / v6;
  v22 = v9 + v10;
  v150 = **(result + 16);
  v23 = v20 * (v10 / v6 + *(result + 15));
  v24 = *(v11 + 128);
  v159 = *(v11 + 158);
  v175[0] = *(v11 + 158);
  v158 = *(v11 + 159);
  v175[1] = *(v11 + 159);
  v157 = *(v11 + 160);
  v175[2] = *(v11 + 160);
  v156 = *(v11 + 161);
  v175[3] = *(v11 + 161);
  v25 = *(v11 + 140);
  v26 = *(v11 + 142);
  LODWORD(a3) = *v11;
  v27 = *(v11 + 8);
  v28 = *(v11 + 16);
  v29 = *(v11 + 20);
  v30 = *(v11 + 28);
  _S7 = *(v11 + 72);
  _S24 = *(v11 + 76);
  _S27 = *(v11 + 80);
  v171 = *(v11 + 88);
  v172 = *(v11 + 84);
  v169 = *(v11 + 96);
  v170 = *(v11 + 92);
  _S16 = *(v11 + 104);
  v168 = *(v11 + 100);
  v173 = 0u;
  v174 = 0u;
  v35 = v22 / v6;
  do
  {
    v36 = 0;
    v37 = v175[v4];
    do
    {
      *((&v173 + ((v37 + 4 * v36) & 0xF8)) | (v37 + 4 * v36) & 7) = v3 + v36;
      ++v36;
    }

    while (v36 != 8);
    ++v4;
    v3 += 8;
  }

  while (v4 != 4);
  v38 = v35 - v21;
  if (v35 - v21 >= 1)
  {
    v39 = 0;
    v40 = v11 + 164;
    v41 = v11 + 16548;
    v42 = v25;
    v43 = v26;
    v44 = 8191.0 / v24;
    _S20 = v44 * *&a3;
    *&_Q2 = v44 * v28;
    __asm { FCVT            H8, S20 }

    *&a3 = v25;
    v52 = vdupq_lane_s16(*&a3, 0);
    *&a3 = -v26;
    v53 = vdupq_lane_s16(*&a3, 0);
    v164 = v44 * v30;
    v165 = v44 * v29;
    __asm { FCVT            H0, S4 }

    v163 = _H0;
    v166 = *&_Q2;
    v167 = v44 * v27;
    __asm { FCVT            H0, S2 }

    v162 = _H0;
    __asm { FCVT            H0, S3 }

    v161 = _H0;
    __asm { FCVT            H0, S1 }

    v160 = _H0;
    __asm
    {
      FCVT            H13, S7
      FCVT            H14, S24
      FCVT            H15, S27
    }

    _S0 = v171;
    _S1 = v172;
    __asm
    {
      FCVT            H9, S1
      FCVT            H10, S0
    }

    _S0 = v169;
    _S1 = v170;
    __asm
    {
      FCVT            H11, S1
      FCVT            H12, S0
    }

    _S0 = v168;
    __asm
    {
      FCVT            H0, S0
      FCVT            H1, S16
    }

    v72 = v150 + v23 + 4 * v152;
    if (v19)
    {
      v73 = (v19 + v16 * v7 + v5);
    }

    else
    {
      v73 = 0;
    }

    if (v18)
    {
      v74 = v18 + v15 * v7 + v5;
    }

    else
    {
      v74 = 0;
    }

    v75 = (v17 + v14 * v7 + v5);
    v76.i64[0] = 0x9000900090009000;
    v76.i64[1] = 0x9000900090009000;
    v154 = _S24;
    v155 = _S7;
    v153 = _S27;
    do
    {
      if (v8 < 8)
      {
        v112 = 0;
        v83 = v74;
        v82 = v73;
        v81 = v72;
        v80 = v75;
      }

      else
      {
        v77 = 0;
        v79 = *(&v173 + 8);
        v78 = v173;
        v80 = v75;
        v81 = v72;
        v82 = v73;
        v83 = v74;
        v85 = *(&v174 + 8);
        v84 = v174;
        do
        {
          if (v83)
          {
            v176 = vld2_s8(v83);
            v83 += 16;
            *v86.i8 = vzip1_s8(v176.val[0], 0);
            v86.u64[1] = vzip2_s8(v176.val[0], 0);
            *v87.i8 = vzip1_s8(v176.val[1], 0);
            v87.u64[1] = vzip2_s8(v176.val[1], 0);
            *(&v176 + 8) = vaddq_f16(v53, vcvtq_f16_u16(v86));
            v88 = vaddq_f16(v53, vcvtq_f16_u16(v87));
            v89 = vmulq_n_f16(v88, v160);
            v90 = vmlaq_n_f16(vmulq_n_f16(*(&v176 + 8), v162), v88, v161);
            v91 = vmulq_n_f16(*(&v176 + 8), v163);
          }

          else
          {
            v91 = 0uLL;
            v90 = 0uLL;
            v89 = 0uLL;
          }

          v92 = *v80++;
          v93 = 0;
          *v94.i8 = vzip1_s8(v92, 0);
          v94.u64[1] = vzip2_s8(v92, 0);
          v95 = vsubq_f16(vcvtq_f16_u16(v94), v52);
          v96 = vmlaq_n_f16(v89, v95, _H8);
          v97 = vmlaq_n_f16(v90, v95, _H8);
          v98 = vmlaq_n_f16(v91, v95, _H8);
          if (v82)
          {
            v99 = *v82;
            v82 += 8;
            v93 = v99;
          }

          v100 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v96, 0), v76));
          v101.i16[0] = *(v40 + 2 * v100.u16[0]);
          v101.i16[1] = *(v40 + 2 * v100.u16[1]);
          v101.i16[2] = *(v40 + 2 * v100.u16[2]);
          v101.i16[3] = *(v40 + 2 * v100.u16[3]);
          v101.i16[4] = *(v40 + 2 * v100.u16[4]);
          v101.i16[5] = *(v40 + 2 * v100.u16[5]);
          v101.i16[6] = *(v40 + 2 * v100.u16[6]);
          v101.i16[7] = *(v40 + 2 * v100.u16[7]);
          v102 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v97, 0), v76));
          v103.i16[0] = *(v40 + 2 * v102.u16[0]);
          v103.i16[1] = *(v40 + 2 * v102.u16[1]);
          v103.i16[2] = *(v40 + 2 * v102.u16[2]);
          v103.i16[3] = *(v40 + 2 * v102.u16[3]);
          v103.i16[4] = *(v40 + 2 * v102.u16[4]);
          v103.i16[5] = *(v40 + 2 * v102.u16[5]);
          v103.i16[6] = *(v40 + 2 * v102.u16[6]);
          v103.i16[7] = *(v40 + 2 * v102.u16[7]);
          v104 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v98, 0), v76));
          v102.i16[0] = *(v40 + 2 * v104.u16[0]);
          v102.i16[1] = *(v40 + 2 * v104.u16[1]);
          v102.i16[2] = *(v40 + 2 * v104.u16[2]);
          v102.i16[3] = *(v40 + 2 * v104.u16[3]);
          v102.i16[4] = *(v40 + 2 * v104.u16[4]);
          v102.i16[5] = *(v40 + 2 * v104.u16[5]);
          v102.i16[6] = *(v40 + 2 * v104.u16[6]);
          v102.i16[7] = *(v40 + 2 * v104.u16[7]);
          v105 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v101, _H9), v103, _H10), v102, _H11);
          v106 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v102, _H1), v103, _H0), v101, _H12);
          v107 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v101, _H13), v103, _H14), v102, _H15), 0), v76));
          v101.i16[0] = *(v41 + 2 * v107.u16[0]);
          v101.i16[1] = *(v41 + 2 * v107.u16[1]);
          v101.i16[2] = *(v41 + 2 * v107.u16[2]);
          v101.i16[3] = *(v41 + 2 * v107.u16[3]);
          v101.i16[4] = *(v41 + 2 * v107.u16[4]);
          v101.i16[5] = *(v41 + 2 * v107.u16[5]);
          v101.i16[6] = *(v41 + 2 * v107.u16[6]);
          v101.i16[7] = *(v41 + 2 * v107.u16[7]);
          v108 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v105, 0), v76));
          v107.i16[0] = *(v41 + 2 * v108.u16[0]);
          v107.i16[1] = *(v41 + 2 * v108.u16[1]);
          v107.i16[2] = *(v41 + 2 * v108.u16[2]);
          v107.i16[3] = *(v41 + 2 * v108.u16[3]);
          v107.i16[4] = *(v41 + 2 * v108.u16[4]);
          v107.i16[5] = *(v41 + 2 * v108.u16[5]);
          v107.i16[6] = *(v41 + 2 * v108.u16[6]);
          v107.i16[7] = *(v41 + 2 * v108.u16[7]);
          v109 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v106, 0), v76));
          v108.i16[0] = *(v41 + 2 * v109.u16[0]);
          v108.i16[1] = *(v41 + 2 * v109.u16[1]);
          v108.i16[2] = *(v41 + 2 * v109.u16[2]);
          v108.i16[3] = *(v41 + 2 * v109.u16[3]);
          v108.i16[4] = *(v41 + 2 * v109.u16[4]);
          v108.i16[5] = *(v41 + 2 * v109.u16[5]);
          v108.i16[6] = *(v41 + 2 * v109.u16[6]);
          v108.i16[7] = *(v41 + 2 * v109.u16[7]);
          v177.val[1] = vdupq_n_s16(0x5BF8u);
          v110 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v101, 0), v177.val[1]));
          v111 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v107, 0), v177.val[1]));
          *v177.val[1].i8 = vmovn_s16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(v108, 0), v177.val[1])));
          v177.val[0] = vuzp1q_s8(v110, v111);
          v177.val[1].u64[1] = vorr_s8(v93, vceqd_s64(v82, 0));
          *&_Q2 = vqtbl2_s8(v177, v78);
          *(&_Q2 + 1) = vqtbl2_s8(v177, v79);
          *v109.i8 = vqtbl2_s8(v177, v84);
          v109.u64[1] = vqtbl2_s8(v177, v85);
          *v81 = _Q2;
          v81[1] = v109;
          v81 += 2;
          v77 += 8;
        }

        while (v77 < v8 - 7);
        v112 = v8 & 0xFFFFFFF8;
        _S24 = v154;
        _S7 = v155;
        _S27 = v153;
      }

      v113 = v8 - v112;
      if (v8 > v112)
      {
        v114 = v81 + v156;
        v115 = v81 + v157;
        v116 = v81 + v158;
        v117 = v81 + v159;
        do
        {
          if (v83)
          {
            LOBYTE(_Q2) = *v83;
            *&v118 = _Q2;
            v119 = *&v118 - v43;
            LOBYTE(v118) = *(v83 + 1);
            v120 = v118 - v43;
            v83 += 2;
            *&_Q2 = v167 * v120;
            v121 = (v165 * v120) + (v119 * v166);
            v122 = v164 * v119;
          }

          else
          {
            v122 = 0.0;
            v121 = 0.0;
            LODWORD(_Q2) = 0;
          }

          v123 = v80->u8[0];
          v80 = (v80 + 1);
          v124 = _S20 * (v123 - v42);
          v125 = *&_Q2 + v124;
          v126 = 8191.0;
          if (v125 <= 8191.0)
          {
            v126 = v125;
            if (v125 < 0.0)
            {
              v126 = 0.0;
            }
          }

          v127 = v121 + v124;
          v128 = (v121 + v124) <= 8191.0;
          v129 = 8191.0;
          if (v128)
          {
            v129 = v127;
            if (v127 < 0.0)
            {
              v129 = 0.0;
            }
          }

          v130 = v122 + v124;
          v131 = 8191.0;
          if (v130 <= 8191.0)
          {
            v131 = v130;
            if (v130 < 0.0)
            {
              v131 = 0.0;
            }
          }

          if (v82)
          {
            v133 = *v82++;
            v132 = v133;
          }

          else
          {
            v132 = 0;
          }

          _H2 = *(v40 + 2 * llroundf(fminf(fmaxf(v126, 0.0), 8191.0)));
          v135 = llroundf(fminf(fmaxf(v129, 0.0), 8191.0));
          __asm { FCVT            S4, H2 }

          _H2 = *(v40 + 2 * v135);
          __asm { FCVT            S22, H2 }

          _H2 = *(v40 + 2 * llroundf(fminf(fmaxf(v131, 0.0), 8191.0)));
          __asm { FCVT            S21, H2 }

          v141 = *(v41 + 2 * llroundf(fminf(fmaxf(((_S24 * _S22) + (_S4 * _S7)) + (_S21 * _S27), 0.0), 8191.0)));
          if (!v82)
          {
            v132 = -1;
          }

          if (v141 <= COERCE_SHORT_FLOAT(23544))
          {
            __asm { FCMP            H23, #0 }

            if (_NF)
            {
              _S23 = 0.0;
            }

            else
            {
              __asm { FCVT            S23, H23 }
            }
          }

          else
          {
            _S23 = 255.0;
          }

          v144 = ((v168 * _S22) + (_S4 * v169)) + (_S21 * _S16);
          v145 = *(v41 + 2 * llroundf(fminf(fmaxf(((v171 * _S22) + (_S4 * v172)) + (_S21 * v170), 0.0), 8191.0)));
          v146 = *(v41 + 2 * llroundf(fminf(fmaxf(v144, 0.0), 8191.0)));
          *v117 = llroundf(_S23);
          if (v145 <= COERCE_SHORT_FLOAT(23544))
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

          *v116 = llroundf(_S4);
          if (v146 <= COERCE_SHORT_FLOAT(23544))
          {
            __asm { FCMP            H3, #0 }

            if (_NF)
            {
              LODWORD(_Q2) = 0;
            }

            else
            {
              __asm { FCVT            S2, H3 }
            }
          }

          else
          {
            LODWORD(_Q2) = 1132396544;
          }

          *v115 = llroundf(*&_Q2);
          v115 += 4;
          *v114 = v132;
          v114 += 4;
          v116 += 4;
          v117 += 4;
          --v113;
        }

        while (v113);
      }

      v75 = (v75 + v14);
      v74 += v15;
      v73 += v16;
      v72 += v20;
      ++v39;
    }

    while (v39 != v38);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_444vf_TRC_Mat_TRC_BGRA(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v47 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v42 = a2[1];
  v43 = v16;
  v18 = *a6;
  v17 = a6[1];
  v44 = a2[2];
  v45 = v18;
  v41 = v17;
  v46 = a6[2];
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
    v19 = &v39 - v21;
    bzero(&v39 - v21, v22);
  }

  v23 = a9;
  v24 = vbslq_s8(vcgtq_s64(vaddq_s64(v44, v42), v43), vsubq_s64(v43, v44), v42);
  v25 = vbslq_s8(vcgtq_s64(vaddq_s64(v46, v41), v45), vsubq_s64(v45, v46), v41);
  v26 = vbslq_s8(vcgtq_s64(v25, v24), v24, v25);
  v27 = v44.i64[1];
  v28 = vaddq_s64((*&v44 + __PAIR128__(-1, 0)), v26);
  if ((v28.i64[0] + *a4 * v28.i64[1] > *a5 || *(a3 + 8) && (a4[1] * v28.i64[1] + 2 * v28.i64[0]) > a5[1] || *(a3 + 16) && v28.i64[0] + a4[2] * v28.i64[1] > a5[2] || (v29.i64[0] = v26.i64[0], v29.i64[1] = -1, v30 = vaddq_s64(v46, v29), (*a8 * (v30.i64[1] + v26.i64[1]) + 4 * v30.i64[0]) > *a9)) && (v40 = v44.i64[1], v41 = v26, v42.i64[0] = a9, fig_log_get_emitter(), v31 = FigSignalErrorAtGM(), v23 = v42.i64[0], v26 = v41, v27 = v40, v31))
  {
    v20 = v31;
  }

  else
  {
    *v19 = v15;
    v32 = v44.i64[0];
    *(v19 + 4) = v43;
    *(v19 + 20) = v26;
    *(v19 + 36) = v32;
    *(v19 + 44) = v27;
    v33 = v46;
    *(v19 + 5) = v45;
    *(v19 + 6) = v26;
    *(v19 + 7) = v33;
    *(v19 + 7) = a3;
    *(v19 + 8) = a4;
    *(v19 + 9) = a5;
    *(v19 + 16) = a7;
    *(v19 + 17) = a8;
    *(v19 + 18) = v23;
    *(v19 + 19) = a1;
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_444vf_TRC_Mat_TRC_BGRA_GCD);
    if (!v15)
    {
      return 0;
    }

    v35 = (v19 + 160);
    v36 = v15;
    while (1)
    {
      v37 = *v35++;
      v20 = v37;
      if (v37)
      {
        break;
      }

      if (!--v36)
      {
        v20 = 0;
        break;
      }
    }
  }

  if (v15 == 255)
  {
    goto LABEL_19;
  }

  return v20;
}

unsigned __int8 *vt_Copy_444vf_TRC_Mat_TRC_BGRA_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, float a5)
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
    v13 = *(result + 7);
    v14 = *(result + 8);
    v15 = *v14;
    v16 = v14[1];
    v17 = v14[2];
    v18 = **(result + 17);
    *&v19 = *(v12 + 128);
    v20 = 8191.0 / *&v19;
    LOWORD(v19) = *(v12 + 140);
    v21 = v19;
    LOWORD(a5) = *(v12 + 142);
    v22 = LODWORD(a5);
    v23 = v20 * *v12;
    v24 = v20 * *(v12 + 8);
    v25 = v20 * *(v12 + 16);
    v26 = v20 * *(v12 + 20);
    v27 = v20 * *(v12 + 28);
    v28 = *(v12 + 72);
    v29 = *(v12 + 76);
    v30 = *(v12 + 80);
    v31 = *(v12 + 84);
    v32 = *(v12 + 88);
    v33 = *(v12 + 92);
    v34 = *(v12 + 96);
    v35 = *(v12 + 100);
    v36 = *(v12 + 104);
    v37 = v12 + 164;
    v38 = v12 + 16548;
    v39 = v8 + *(result + 15);
    v40 = *(result + 28) * a2 / v6 + *(result + 44);
    v41 = *(result + 36);
    v42 = *(v12 + 161);
    v43 = *(v12 + 160);
    v44 = *(v12 + 159);
    v45 = *(v12 + 158);
    v46 = **(result + 16) + v18 * v39 + 4 * *(result + 14);
    v47 = v13[2];
    if (v47)
    {
      v48 = (v47 + v40 * v17 + v41);
    }

    else
    {
      v48 = 0;
    }

    v50 = *v13;
    v49 = v13[1];
    v51 = (v49 + v40 * v16 + v41);
    if (!v49)
    {
      v51 = 0;
    }

    v52 = (v50 + v40 * v15 + v41);
    do
    {
      if (v11 >= 1)
      {
        v53 = v11;
        v54 = v52;
        v55 = v46;
        v56 = v48;
        v57 = v51;
        do
        {
          if (v57)
          {
            LOBYTE(_S27) = *v57;
            *&v58 = LODWORD(_S27);
            v59 = *&v58 - v22;
            LOBYTE(v58) = v57[1];
            v60 = v58 - v22;
            v57 += 2;
            v61 = v24 * v60;
            v62 = (v26 * v60) + (v59 * v25);
            v63 = v27 * v59;
          }

          else
          {
            v63 = 0.0;
            v62 = 0.0;
            v61 = 0.0;
          }

          v64 = *v54++;
          v65 = v23 * (v64 - v21);
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

          if (v56)
          {
            v74 = *v56++;
            v73 = v74;
          }

          else
          {
            v73 = 0;
          }

          _H27 = *(v37 + 2 * llroundf(fminf(fmaxf(v68, 0.0), 8191.0)));
          __asm { FCVT            S27, H27 }

          _H29 = *(v37 + 2 * llroundf(fminf(fmaxf(v70, 0.0), 8191.0)));
          __asm { FCVT            S29, H29 }

          _H28 = *(v37 + 2 * llroundf(fminf(fmaxf(v72, 0.0), 8191.0)));
          __asm { FCVT            S28, H28 }

          v85 = *(v38 + 2 * llroundf(fminf(fmaxf(((v29 * _S29) + (_S27 * v28)) + (_S28 * v30), 0.0), 8191.0)));
          if (!v56)
          {
            v73 = -1;
          }

          if (v85 <= COERCE_SHORT_FLOAT(23544))
          {
            __asm { FCMP            H30, #0 }

            if (_NF)
            {
              _S30 = 0.0;
            }

            else
            {
              __asm { FCVT            S30, H30 }
            }
          }

          else
          {
            _S30 = 255.0;
          }

          v88 = ((v32 * _S29) + (_S27 * v31)) + (_S28 * v33);
          v89 = ((v35 * _S29) + (_S27 * v34)) + (_S28 * v36);
          v90 = *(v38 + 2 * llroundf(fminf(fmaxf(v88, 0.0), 8191.0)));
          v91 = *(v38 + 2 * llroundf(fminf(fmaxf(v89, 0.0), 8191.0)));
          *(v55 + v45) = llroundf(_S30);
          if (v90 <= COERCE_SHORT_FLOAT(23544))
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

          *(v55 + v44) = llroundf(_S28);
          if (v91 <= COERCE_SHORT_FLOAT(23544))
          {
            __asm { FCMP            H27, #0 }

            if (_NF)
            {
              _S27 = 0.0;
            }

            else
            {
              __asm { FCVT            S27, H27 }
            }
          }

          else
          {
            _S27 = 255.0;
          }

          *(v55 + v43) = llroundf(_S27);
          *(v55 + v42) = v73;
          v55 += 4;
          --v53;
        }

        while (v53);
      }

      v52 += v15;
      v51 += v16;
      v48 += v17;
      v46 += v18;
      ++v10;
    }

    while (v10 != v9);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_444vf_rgb_BGRA_neon_fp16(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v47 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v42 = a2[1];
  v43 = v16;
  v18 = *a6;
  v17 = a6[1];
  v44 = a2[2];
  v45 = v18;
  v41 = v17;
  v46 = a6[2];
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
    v19 = &v39 - v21;
    bzero(&v39 - v21, v22);
  }

  v23 = a9;
  v24 = vbslq_s8(vcgtq_s64(vaddq_s64(v44, v42), v43), vsubq_s64(v43, v44), v42);
  v25 = vbslq_s8(vcgtq_s64(vaddq_s64(v46, v41), v45), vsubq_s64(v45, v46), v41);
  v26 = vbslq_s8(vcgtq_s64(v25, v24), v24, v25);
  v27 = v44.i64[1];
  v28 = vaddq_s64((*&v44 + __PAIR128__(-1, 0)), v26);
  if ((v28.i64[0] + *a4 * v28.i64[1] > *a5 || *(a3 + 8) && (a4[1] * v28.i64[1] + 2 * v28.i64[0]) > a5[1] || *(a3 + 16) && v28.i64[0] + a4[2] * v28.i64[1] > a5[2] || (v29.i64[0] = v26.i64[0], v29.i64[1] = -1, v30 = vaddq_s64(v46, v29), (*a8 * (v30.i64[1] + v26.i64[1]) + 4 * v30.i64[0]) > *a9)) && (v40 = v44.i64[1], v41 = v26, v42.i64[0] = a9, fig_log_get_emitter(), v31 = FigSignalErrorAtGM(), v23 = v42.i64[0], v26 = v41, v27 = v40, v31))
  {
    v20 = v31;
  }

  else
  {
    *v19 = v15;
    v32 = v44.i64[0];
    *(v19 + 4) = v43;
    *(v19 + 20) = v26;
    *(v19 + 36) = v32;
    *(v19 + 44) = v27;
    v33 = v46;
    *(v19 + 5) = v45;
    *(v19 + 6) = v26;
    *(v19 + 7) = v33;
    *(v19 + 7) = a3;
    *(v19 + 8) = a4;
    *(v19 + 9) = a5;
    *(v19 + 16) = a7;
    *(v19 + 17) = a8;
    *(v19 + 18) = v23;
    *(v19 + 19) = a1;
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_444vf_rgb_BGRA_neon_fp16_GCD);
    if (!v15)
    {
      return 0;
    }

    v35 = (v19 + 160);
    v36 = v15;
    while (1)
    {
      v37 = *v35++;
      v20 = v37;
      if (v37)
      {
        break;
      }

      if (!--v36)
      {
        v20 = 0;
        break;
      }
    }
  }

  if (v15 == 255)
  {
    goto LABEL_19;
  }

  return v20;
}

unsigned __int8 *vt_Copy_444vf_rgb_BGRA_neon_fp16_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10)
{
  v13 = 0;
  v14 = 0;
  v15 = *(result + 36);
  v16 = *result;
  v17 = *(result + 28) * a2 / v16 + *(result + 44);
  v115 = *(result + 14);
  v18 = *(result + 12);
  v19 = *(result + 13);
  v20 = v19 * a2;
  v21 = *(result + 19);
  v22 = *(result + 7);
  v23 = *(result + 8);
  v24 = v20 / v16;
  v25 = v20 / v16 + *(result + 15);
  v26 = v19 + v20;
  v27 = *v23;
  v28 = v23[1];
  v29 = v23[2];
  v30 = v22[1];
  v114 = *v22;
  v31 = v22[2];
  v32 = **(result + 17);
  v113 = **(result + 16);
  v112 = v32 * v25;
  v33 = *(v21 + 128);
  v34 = *(v21 + 136);
  v35 = *(v21 + 158);
  v119[0] = *(v21 + 158);
  v36 = *(v21 + 159);
  v119[1] = *(v21 + 159);
  v37 = *(v21 + 160);
  v119[2] = *(v21 + 160);
  v38 = *(v21 + 161);
  v119[3] = *(v21 + 161);
  v39 = *(v21 + 140);
  v40 = *(v21 + 142);
  v41 = *v21;
  v42 = *(v21 + 8);
  v43 = *(v21 + 16);
  v44 = *(v21 + 20);
  v45 = *(v21 + 28);
  v117 = 0u;
  v118 = 0u;
  v46 = v26 / v16;
  do
  {
    v47 = 0;
    v48 = v119[v14];
    do
    {
      *((&v117 + ((v48 + 4 * v47) & 0xF8)) | (v48 + 4 * v47) & 7) = v13 + v47;
      ++v47;
    }

    while (v47 != 8);
    ++v14;
    v13 += 8;
  }

  while (v14 != 4);
  if (v46 - v24 >= 1)
  {
    v49 = 0;
    *&a10 = v34 / v33;
    v50 = v39;
    v51 = v40;
    _S2 = *&a10 * v41;
    _S3 = *&a10 * v42;
    _S4 = *&a10 * v43;
    _S5 = *&a10 * v44;
    _S6 = *&a10 * v45;
    *&a10 = v39;
    v57 = vdupq_lane_s16(*&a10, 0);
    __asm { FCVT            H8, S2 }

    *v10.i16 = -v40;
    v63 = vdupq_lane_s16(v10, 0);
    __asm
    {
      FCVT            H9, S6
      FCVT            H10, S4
      FCVT            H11, S5
      FCVT            H12, S3
    }

    v68 = v113 + v112 + 4 * v115;
    if (v31)
    {
      v69 = (v31 + v29 * v17 + v15);
    }

    else
    {
      v69 = 0;
    }

    if (v30)
    {
      v70 = v30 + v28 * v17 + v15;
    }

    else
    {
      v70 = 0;
    }

    v71 = (v114 + v27 * v17 + v15);
    v72 = vdupq_n_s16(0x5BF8u);
    while (1)
    {
      if (v18 < 8)
      {
        v94 = 0;
        v77 = v70;
        v76 = v69;
        v75 = v68;
        v74 = v71;
      }

      else
      {
        v73 = 0;
        v12 = *(&v117 + 8);
        v11 = v117;
        v74 = v71;
        v75 = v68;
        v76 = v69;
        v77 = v70;
        v79 = *(&v118 + 8);
        v78 = v118;
        do
        {
          if (v77)
          {
            v120 = vld2_s8(v77);
            v77 += 16;
            *v80.i8 = vzip1_s8(*v120.i8, 0);
            v80.u64[1] = vzip2_s8(*v120.i8, 0);
            *v81.i8 = vzip1_s8(v120.u64[1], 0);
            v81.u64[1] = vzip2_s8(v120.u64[1], 0);
            v120 = vcvtq_f16_u16(v81);
            v82 = vaddq_f16(v63, vcvtq_f16_u16(v80));
            v120 = vaddq_f16(v63, v120);
            v83 = vmulq_n_f16(v120, _H12);
            v84 = vmlaq_n_f16(vmulq_n_f16(v82, _H10), v120, _H11);
            v85 = vmulq_n_f16(v82, _H9);
          }

          else
          {
            v85 = 0uLL;
            v84 = 0uLL;
            v83 = 0uLL;
          }

          v86 = *v74++;
          v87 = v86;
          if (v76)
          {
            v88 = *v76++;
            v89 = v88;
          }

          else
          {
            v89 = 0;
          }

          *v90.i8 = vzip1_s8(v87, 0);
          v90.u64[1] = vzip2_s8(v87, 0);
          v91 = vsubq_f16(vcvtq_f16_u16(v90), v57);
          *v121.val[1].i8 = vmovn_s16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(v85, v91, _H8), 0), v72)));
          v121.val[0] = vuzp1q_s8(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(v83, v91, _H8), 0), v72)), vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(v84, v91, _H8), 0), v72)));
          v121.val[1].u64[1] = vorr_s8(v89, vceqd_s64(v76, 0));
          *&v92 = vqtbl2_s8(v121, v11);
          *(&v92 + 1) = vqtbl2_s8(v121, v12);
          *&v93 = vqtbl2_s8(v121, v78);
          *(&v93 + 1) = vqtbl2_s8(v121, v79);
          *v75 = v92;
          v75[1] = v93;
          v75 += 2;
          v73 += 8;
        }

        while (v73 < v18 - 7);
        v94 = v18 & 0x7FFFFFF8;
      }

      v95 = v18 - v94;
      if (v18 > v94)
      {
        break;
      }

LABEL_44:
      v71 = (v71 + v27);
      v70 += v28;
      v69 = (v69 + v29);
      v68 += v32;
      if (++v49 == v46 - v24)
      {
        goto LABEL_45;
      }
    }

    v96 = v75 + v38;
    v97 = v75 + v37;
    v98 = v75 + v36;
    v99 = v75 + v35;
    while (1)
    {
      if (v77)
      {
        v11.i8[0] = *v77;
        v100 = v11.u32[0] - v51;
        v12.i8[0] = *(v77 + 1);
        v101 = v12.u32[0] - v51;
        v77 += 2;
        v102 = _S3 * v101;
        *v12.i32 = (_S5 * v101) + (v100 * _S4);
        *v11.i32 = _S6 * v100;
        if (!v76)
        {
          goto LABEL_30;
        }
      }

      else
      {
        v11.i32[0] = 0;
        v12.i32[0] = 0;
        v102 = 0.0;
        if (!v76)
        {
LABEL_30:
          v103 = 0;
          goto LABEL_31;
        }
      }

      v104 = v76->i8[0];
      v76 = (v76 + 1);
      v103 = v104;
LABEL_31:
      v105 = v74->u8[0];
      v74 = (v74 + 1);
      v106 = _S2 * (v105 - v50);
      v107 = v102 + v106;
      if (v76)
      {
        v108 = v103;
      }

      else
      {
        v108 = -1;
      }

      v109 = 255.0;
      if (v107 <= 255.0)
      {
        v109 = v107;
        if (v107 < 0.0)
        {
          v109 = 0.0;
        }
      }

      v110 = *v12.i32 + v106;
      *v99 = llroundf(v109);
      v12.i32[0] = 1132396544;
      if (v110 <= 255.0)
      {
        *v12.i32 = v110;
        if (v110 < 0.0)
        {
          v12.i32[0] = 0;
        }
      }

      v111 = *v11.i32 + v106;
      *v98 = llroundf(*v12.i32);
      v11.i32[0] = 1132396544;
      if (v111 <= 255.0)
      {
        *v11.i32 = v111;
        if (v111 < 0.0)
        {
          v11.i32[0] = 0;
        }
      }

      *v97 = llroundf(*v11.i32);
      v97 += 4;
      *v96 = v108;
      v96 += 4;
      v98 += 4;
      v99 += 4;
      if (!--v95)
      {
        goto LABEL_44;
      }
    }
  }

LABEL_45:
  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_444vf_rgb_BGRA(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v47 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v42 = a2[1];
  v43 = v16;
  v18 = *a6;
  v17 = a6[1];
  v44 = a2[2];
  v45 = v18;
  v41 = v17;
  v46 = a6[2];
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
    v19 = &v39 - v21;
    bzero(&v39 - v21, v22);
  }

  v23 = a9;
  v24 = vbslq_s8(vcgtq_s64(vaddq_s64(v44, v42), v43), vsubq_s64(v43, v44), v42);
  v25 = vbslq_s8(vcgtq_s64(vaddq_s64(v46, v41), v45), vsubq_s64(v45, v46), v41);
  v26 = vbslq_s8(vcgtq_s64(v25, v24), v24, v25);
  v27 = v44.i64[1];
  v28 = vaddq_s64((*&v44 + __PAIR128__(-1, 0)), v26);
  if ((v28.i64[0] + *a4 * v28.i64[1] > *a5 || *(a3 + 8) && (a4[1] * v28.i64[1] + 2 * v28.i64[0]) > a5[1] || *(a3 + 16) && v28.i64[0] + a4[2] * v28.i64[1] > a5[2] || (v29.i64[0] = v26.i64[0], v29.i64[1] = -1, v30 = vaddq_s64(v46, v29), (*a8 * (v30.i64[1] + v26.i64[1]) + 4 * v30.i64[0]) > *a9)) && (v40 = v44.i64[1], v41 = v26, v42.i64[0] = a9, fig_log_get_emitter(), v31 = FigSignalErrorAtGM(), v23 = v42.i64[0], v26 = v41, v27 = v40, v31))
  {
    v20 = v31;
  }

  else
  {
    *v19 = v15;
    v32 = v44.i64[0];
    *(v19 + 4) = v43;
    *(v19 + 20) = v26;
    *(v19 + 36) = v32;
    *(v19 + 44) = v27;
    v33 = v46;
    *(v19 + 5) = v45;
    *(v19 + 6) = v26;
    *(v19 + 7) = v33;
    *(v19 + 7) = a3;
    *(v19 + 8) = a4;
    *(v19 + 9) = a5;
    *(v19 + 16) = a7;
    *(v19 + 17) = a8;
    *(v19 + 18) = v23;
    *(v19 + 19) = a1;
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_444vf_rgb_BGRA_GCD);
    if (!v15)
    {
      return 0;
    }

    v35 = (v19 + 160);
    v36 = v15;
    while (1)
    {
      v37 = *v35++;
      v20 = v37;
      if (v37)
      {
        break;
      }

      if (!--v36)
      {
        v20 = 0;
        break;
      }
    }
  }

  if (v15 == 255)
  {
    goto LABEL_19;
  }

  return v20;
}

unsigned __int8 *vt_Copy_444vf_rgb_BGRA_GCD(unsigned __int8 *result, uint64_t a2)
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
    v10 = *(result + 7);
    v11 = *(result + 8);
    v12 = *v11;
    v13 = v11[1];
    v14 = v11[2];
    v15 = **(result + 17);
    *&v16 = *(v9 + 128);
    *&v17 = *(v9 + 136);
    v18 = *&v17 / *&v16;
    LOWORD(v16) = *(v9 + 140);
    v19 = v16;
    LOWORD(v17) = *(v9 + 142);
    v20 = v17;
    v21 = v18 * *v9;
    v22 = v18 * *(v9 + 8);
    v23 = v18 * *(v9 + 16);
    v24 = v18 * *(v9 + 20);
    v25 = *(v9 + 28);
    v26 = v18 * v25;
    v27 = v5 + *(result + 15);
    v28 = *(result + 28) * a2 / v3 + *(result + 44);
    v29 = *(result + 36);
    v30 = *(v9 + 161);
    v31 = *(v9 + 160);
    v32 = *(v9 + 159);
    v33 = *(v9 + 158);
    v34 = **(result + 16) + v15 * v27 + 4 * *(result + 14);
    v35 = v10[2];
    if (v35)
    {
      v36 = (v35 + v28 * v14 + v29);
    }

    else
    {
      v36 = 0;
    }

    v38 = *v10;
    v37 = v10[1];
    v39 = (v37 + v28 * v13 + v29);
    if (!v37)
    {
      v39 = 0;
    }

    v40 = (v38 + v28 * v12 + v29);
    while (v8 < 1)
    {
LABEL_27:
      v40 += v12;
      v39 += v13;
      v36 += v14;
      v34 += v15;
      if (++v7 == v6)
      {
        goto LABEL_28;
      }
    }

    v41 = v8;
    v42 = v40;
    v43 = v34;
    v44 = v36;
    v45 = v39;
    while (1)
    {
      if (v45)
      {
        LOBYTE(v25) = *v45;
        v46 = LODWORD(v25) - v20;
        LOBYTE(v2) = v45[1];
        v47 = LODWORD(v2) - v20;
        v45 += 2;
        v48 = v22 * v47;
        v49 = (v24 * v47) + (v46 * v23);
        v50 = v26 * v46;
        if (!v44)
        {
          goto LABEL_14;
        }
      }

      else
      {
        v50 = 0.0;
        v49 = 0.0;
        v48 = 0.0;
        if (!v44)
        {
LABEL_14:
          v51 = 0;
          goto LABEL_15;
        }
      }

      v52 = *v44++;
      v51 = v52;
LABEL_15:
      v53 = *v42++;
      v54 = v21 * (v53 - v19);
      v55 = v48 + v54;
      if (!v44)
      {
        v51 = -1;
      }

      v56 = 255.0;
      if (v55 <= 255.0)
      {
        v56 = v55;
        if (v55 < 0.0)
        {
          v56 = 0.0;
        }
      }

      v57 = llroundf(v56);
      v58 = v49 + v54;
      *(v43 + v33) = v57;
      v59 = 255.0;
      if (v58 <= 255.0)
      {
        v59 = v58;
        if (v58 < 0.0)
        {
          v59 = 0.0;
        }
      }

      v60 = llroundf(v59);
      v2 = v50 + v54;
      *(v43 + v32) = v60;
      v25 = 255.0;
      if (v2 <= 255.0)
      {
        v25 = v2;
        if (v2 < 0.0)
        {
          v25 = 0.0;
        }
      }

      *(v43 + v31) = llroundf(v25);
      *(v43 + v30) = v51;
      v43 += 4;
      if (!--v41)
      {
        goto LABEL_27;
      }
    }
  }

LABEL_28:
  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_444vf_TRC_Tone_Mat_TRC_l10r(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v14 = a1;
  v51 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v46 = a2[1];
  v47 = v16;
  v18 = *a6;
  v17 = a6[1];
  v48 = a2[2];
  v49 = v18;
  v45 = v17;
  v50 = a6[2];
  if (v15 == 255)
  {
    v19 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v19)
    {
      v20 = 0;
LABEL_26:
      free(v19);
      return v20;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v19 = &v43 - v21;
    bzero(&v43 - v21, v22);
  }

  v23 = a9;
  v24 = vbslq_s8(vcgtq_s64(vaddq_s64(v48, v46), v47), vsubq_s64(v47, v48), v46);
  v25 = vbslq_s8(vcgtq_s64(vaddq_s64(v50, v45), v49), vsubq_s64(v49, v50), v45);
  v26 = vbslq_s8(vcgtq_s64(v25, v24), v24, v25);
  v27 = v48.i64[1];
  v28 = vaddq_s64((*&v48 + __PAIR128__(-1, 0)), v26);
  v29 = v28.i64[0] + *a4 * v28.i64[1] > *a5;
  v44 = a9;
  v45.i64[0] = v48.i64[1];
  v46 = v26;
  if (v29)
  {
    v30 = v14;
    v31 = a7;
    v32 = a8;
  }

  else if (*(a3 + 8) && (a4[1] * v28.i64[1] + 2 * v28.i64[0]) > a5[1])
  {
    v30 = v14;
    v31 = a7;
    v32 = a8;
  }

  else if (*(a3 + 16) && v28.i64[0] + a4[2] * v28.i64[1] > a5[2])
  {
    v30 = v14;
    v31 = a7;
    v32 = a8;
  }

  else
  {
    v33.i64[0] = v26.i64[0];
    v33.i64[1] = -1;
    v34 = vaddq_s64(v50, v33);
    if ((*a8 * (v34.i64[1] + v26.i64[1]) + 4 * v34.i64[0]) <= *a9)
    {
      if (!*(a7 + 8) || v34.i64[0] + a8[1] * (v34.i64[1] + v26.i64[1]) <= a9[1])
      {
        goto LABEL_20;
      }

      v30 = v14;
      v31 = a7;
      v32 = a8;
    }

    else
    {
      v30 = v14;
      v31 = a7;
      v32 = a8;
    }
  }

  fig_log_get_emitter();
  v35 = FigSignalErrorAtGM();
  a8 = v32;
  a7 = v31;
  v14 = v30;
  v23 = v44;
  v27 = v45.i64[0];
  v26 = v46;
  if (v35)
  {
    v20 = v35;
    goto LABEL_25;
  }

LABEL_20:
  *v19 = v15;
  v36 = v48.i64[0];
  *(v19 + 4) = v47;
  *(v19 + 20) = v26;
  *(v19 + 36) = v36;
  *(v19 + 44) = v27;
  v37 = v50;
  *(v19 + 5) = v49;
  *(v19 + 6) = v26;
  *(v19 + 7) = v37;
  *(v19 + 7) = a3;
  *(v19 + 8) = a4;
  *(v19 + 9) = a5;
  *(v19 + 16) = a7;
  *(v19 + 17) = a8;
  *(v19 + 18) = v23;
  *(v19 + 19) = v14;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v15, global_queue, v19, vt_Copy_444vf_TRC_Tone_Mat_TRC_l10r_GCD);
  if (!v15)
  {
    return 0;
  }

  v39 = (v19 + 160);
  v40 = v15;
  while (1)
  {
    v41 = *v39++;
    v20 = v41;
    if (v41)
    {
      break;
    }

    if (!--v40)
    {
      v20 = 0;
      break;
    }
  }

LABEL_25:
  if (v15 == 255)
  {
    goto LABEL_26;
  }

  return v20;
}

unsigned __int8 *vt_Copy_444vf_TRC_Tone_Mat_TRC_l10r_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, float a5)
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
    v13 = *(result + 7);
    v14 = *(result + 8);
    v15 = *v14;
    v16 = v14[1];
    v17 = v14[2];
    v18 = **(result + 17);
    *&v19 = *(v12 + 128);
    v20 = 8191.0 / *&v19;
    LOWORD(v19) = *(v12 + 140);
    v21 = v19;
    LOWORD(a5) = *(v12 + 142);
    v22 = LODWORD(a5);
    v23 = v20 * *v12;
    v24 = v20 * *(v12 + 8);
    v25 = v20 * *(v12 + 16);
    v26 = v20 * *(v12 + 20);
    v27 = *(v12 + 28);
    v28 = v20 * v27;
    LOWORD(v27) = *(v12 + 144);
    v29 = LODWORD(v27);
    v30 = *(v12 + 72);
    v31 = *(v12 + 76);
    v32 = *(v12 + 80);
    v33 = *(v12 + 84);
    v34 = *(v12 + 88);
    v35 = *(v12 + 92);
    v36 = *(v12 + 96);
    v37 = *(v12 + 100);
    v38 = v12 + 164;
    v39 = v12 + 16548;
    v40 = v12 + 32932;
    v41 = *(v12 + 104);
    v42 = *(v12 + 108);
    v43 = *(v12 + 112);
    v44 = *(v12 + 116);
    v45 = *(v12 + 120);
    v46 = *(result + 28) * a2 / v6 + *(result + 44);
    v47 = *(result + 36);
    v48 = **(result + 16) + v18 * (v8 + *(result + 15)) + 16 * *(result + 14);
    v49 = v13[2];
    if (v49)
    {
      v50 = (v49 + v46 * v17 + v47);
    }

    else
    {
      v50 = 0;
    }

    v52 = *v13;
    v51 = *(*(result + 7) + 8);
    _ZF = v51 == 0;
    v54 = (v51 + v46 * v16 + v47);
    if (_ZF)
    {
      v54 = 0;
    }

    v55 = (v52 + v46 * v15 + v47);
    do
    {
      if (v11 >= 1)
      {
        v56 = v11;
        v57 = v55;
        v58 = v48;
        v59 = v50;
        v60 = v54;
        do
        {
          if (v60)
          {
            LOBYTE(v5) = *v60;
            *&v61 = LODWORD(v5);
            v62 = *&v61 - v22;
            LOBYTE(v61) = v60[1];
            v63 = v61 - v22;
            v60 += 2;
            v64 = v24 * v63;
            v65 = (v26 * v63) + (v62 * v25);
            v66 = v28 * v62;
          }

          else
          {
            v66 = 0.0;
            v65 = 0.0;
            v64 = 0.0;
          }

          v67 = *v57++;
          v68 = v23 * (v67 - v21);
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

          if (v59)
          {
            v76 = *v59++;
            v77 = v76 * 3.0;
          }

          else
          {
            v77 = 0.0;
          }

          v78 = 8191.0;
          _H9 = *(v38 + 2 * llroundf(fminf(fmaxf(v71, 0.0), 8191.0)));
          v80 = llroundf(fminf(fmaxf(v73, 0.0), 8191.0));
          __asm { FCVT            S11, H9 }

          _H9 = *(v38 + 2 * v80);
          __asm { FCVT            S13, H9 }

          _H9 = *(v38 + 2 * llroundf(fminf(fmaxf(v75, 0.0), 8191.0)));
          __asm { FCVT            S14, H9 }

          v89 = fmaxf(_S11, fmaxf(_S13, _S14));
          v90 = (((v43 * _S13) + (v42 * _S11)) + (v44 * _S14)) + (v45 * v89);
          if (v90 <= 8191.0)
          {
            v78 = (((v43 * _S13) + (v42 * _S11)) + (v44 * _S14)) + (v45 * v89);
            if (v90 < 0.0)
            {
              v78 = 0.0;
            }
          }

          if (v59)
          {
            v91 = v77 / 255.0;
            v5 = llroundf(v91);
          }

          else
          {
            v5 = 3.0;
          }

          _H10 = *(v39 + 2 * llroundf(v78));
          __asm { FCVT            S10, H10 }

          v94 = _S11 * _S10;
          v95 = _S13 * _S10;
          v96 = _S14 * _S10;
          v97 = ((v31 * v95) + (v94 * v30)) + (v96 * v32);
          v98 = ((v34 * v95) + (v94 * v33)) + (v96 * v35);
          _S10 = ((v37 * v95) + (v94 * v36)) + (v96 * v41);
          _H12 = *(v40 + 2 * llroundf(fminf(fmaxf(v97, 0.0), 8191.0)));
          _H13 = *(v40 + 2 * llroundf(fminf(fmaxf(v98, 0.0), 8191.0)));
          LOWORD(_S10) = *(v40 + 2 * llroundf(fminf(fmaxf(_S10, 0.0), 8191.0)));
          __asm { FCVT            S10, H10 }

          v103 = v29 + _S10;
          v104 = 1023.0;
          v105 = 1023.0;
          if (v103 <= 1023.0)
          {
            v105 = v103;
            if (v103 < 0.0)
            {
              v105 = 0.0;
            }
          }

          __asm { FCVT            S13, H13 }

          v107 = v29 + _S13;
          v70 = (v29 + _S13) <= 1023.0;
          v108 = 1023.0;
          if (v70)
          {
            v108 = v107;
            if (v107 < 0.0)
            {
              v108 = 0.0;
            }
          }

          __asm { FCVT            S12, H12 }

          v110 = v29 + _S12;
          if (v110 <= 1023.0)
          {
            v104 = v110;
            if (v110 < 0.0)
            {
              v104 = 0.0;
            }
          }

          v111 = llroundf(v105);
          v112 = llroundf(v108) << 10;
          v113 = llroundf(v104);
          if (v5 > 3.0)
          {
            v5 = 3.0;
          }

          *v58++ = v112 | v111 | (llroundf(v5) << 30) | (v113 << 20);
          --v56;
        }

        while (v56);
      }

      v55 += v15;
      v54 += v16;
      v50 += v17;
      v48 += v18;
      ++v10;
    }

    while (v10 != v9);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_444vf_TRC_Mat_TRC_l10r(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v14 = a1;
  v51 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v46 = a2[1];
  v47 = v16;
  v18 = *a6;
  v17 = a6[1];
  v48 = a2[2];
  v49 = v18;
  v45 = v17;
  v50 = a6[2];
  if (v15 == 255)
  {
    v19 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v19)
    {
      v20 = 0;
LABEL_26:
      free(v19);
      return v20;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v19 = &v43 - v21;
    bzero(&v43 - v21, v22);
  }

  v23 = a9;
  v24 = vbslq_s8(vcgtq_s64(vaddq_s64(v48, v46), v47), vsubq_s64(v47, v48), v46);
  v25 = vbslq_s8(vcgtq_s64(vaddq_s64(v50, v45), v49), vsubq_s64(v49, v50), v45);
  v26 = vbslq_s8(vcgtq_s64(v25, v24), v24, v25);
  v27 = v48.i64[1];
  v28 = vaddq_s64((*&v48 + __PAIR128__(-1, 0)), v26);
  v29 = v28.i64[0] + *a4 * v28.i64[1] > *a5;
  v44 = a9;
  v45.i64[0] = v48.i64[1];
  v46 = v26;
  if (v29)
  {
    v30 = v14;
    v31 = a7;
    v32 = a8;
  }

  else if (*(a3 + 8) && (a4[1] * v28.i64[1] + 2 * v28.i64[0]) > a5[1])
  {
    v30 = v14;
    v31 = a7;
    v32 = a8;
  }

  else if (*(a3 + 16) && v28.i64[0] + a4[2] * v28.i64[1] > a5[2])
  {
    v30 = v14;
    v31 = a7;
    v32 = a8;
  }

  else
  {
    v33.i64[0] = v26.i64[0];
    v33.i64[1] = -1;
    v34 = vaddq_s64(v50, v33);
    if ((*a8 * (v34.i64[1] + v26.i64[1]) + 4 * v34.i64[0]) <= *a9)
    {
      if (!*(a7 + 8) || v34.i64[0] + a8[1] * (v34.i64[1] + v26.i64[1]) <= a9[1])
      {
        goto LABEL_20;
      }

      v30 = v14;
      v31 = a7;
      v32 = a8;
    }

    else
    {
      v30 = v14;
      v31 = a7;
      v32 = a8;
    }
  }

  fig_log_get_emitter();
  v35 = FigSignalErrorAtGM();
  a8 = v32;
  a7 = v31;
  v14 = v30;
  v23 = v44;
  v27 = v45.i64[0];
  v26 = v46;
  if (v35)
  {
    v20 = v35;
    goto LABEL_25;
  }

LABEL_20:
  *v19 = v15;
  v36 = v48.i64[0];
  *(v19 + 4) = v47;
  *(v19 + 20) = v26;
  *(v19 + 36) = v36;
  *(v19 + 44) = v27;
  v37 = v50;
  *(v19 + 5) = v49;
  *(v19 + 6) = v26;
  *(v19 + 7) = v37;
  *(v19 + 7) = a3;
  *(v19 + 8) = a4;
  *(v19 + 9) = a5;
  *(v19 + 16) = a7;
  *(v19 + 17) = a8;
  *(v19 + 18) = v23;
  *(v19 + 19) = v14;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v15, global_queue, v19, vt_Copy_444vf_TRC_Mat_TRC_l10r_GCD);
  if (!v15)
  {
    return 0;
  }

  v39 = (v19 + 160);
  v40 = v15;
  while (1)
  {
    v41 = *v39++;
    v20 = v41;
    if (v41)
    {
      break;
    }

    if (!--v40)
    {
      v20 = 0;
      break;
    }
  }

LABEL_25:
  if (v15 == 255)
  {
    goto LABEL_26;
  }

  return v20;
}

unsigned __int8 *vt_Copy_444vf_TRC_Mat_TRC_l10r_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, float a5)
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
    v14 = *(result + 7);
    v15 = *(result + 8);
    v16 = *v15;
    v17 = v15[1];
    v18 = v15[2];
    v19 = **(result + 17);
    *&v20 = *(v13 + 128);
    v21 = 8191.0 / *&v20;
    LOWORD(v20) = *(v13 + 140);
    v22 = v20;
    LOWORD(a5) = *(v13 + 142);
    v23 = LODWORD(a5);
    v24 = v21 * *v13;
    v25 = v21 * *(v13 + 8);
    v26 = v21 * *(v13 + 16);
    v27 = v21 * *(v13 + 20);
    v28 = *(v13 + 28);
    v29 = v21 * v28;
    LOWORD(v28) = *(v13 + 144);
    v30 = LODWORD(v28);
    v31 = *(v13 + 72);
    v32 = *(v13 + 76);
    v33 = *(v13 + 80);
    v34 = *(v13 + 84);
    v35 = *(v13 + 88);
    v36 = *(v13 + 92);
    v37 = *(v13 + 96);
    v38 = *(v13 + 100);
    v39 = *(v13 + 104);
    v40 = v13 + 164;
    v41 = v13 + 16548;
    v42 = *(result + 28) * a2 / v7 + *(result + 44);
    v43 = *(result + 36);
    v44 = **(result + 16) + v19 * (v9 + *(result + 15)) + 16 * *(result + 14);
    v45 = v14[2];
    if (v45)
    {
      v46 = (v45 + v42 * v18 + v43);
    }

    else
    {
      v46 = 0;
    }

    v48 = *v14;
    v47 = v14[1];
    v49 = (v47 + v42 * v17 + v43);
    if (!v47)
    {
      v49 = 0;
    }

    v50 = (v48 + v42 * v16 + v43);
    do
    {
      if (v12 >= 1)
      {
        v51 = v12;
        v52 = v50;
        v53 = v44;
        v54 = v46;
        v55 = v49;
        do
        {
          if (v55)
          {
            LOBYTE(v6) = *v55;
            v56 = LODWORD(v6) - v23;
            LOBYTE(v5) = v55[1];
            v57 = LODWORD(v5) - v23;
            v55 += 2;
            v58 = v25 * v57;
            v59 = (v27 * v57) + (v56 * v26);
            v60 = v29 * v56;
          }

          else
          {
            v60 = 0.0;
            v59 = 0.0;
            v58 = 0.0;
          }

          v61 = *v52++;
          v62 = v24 * (v61 - v22);
          v63 = v58 + v62;
          v64 = (v58 + v62) <= 8191.0;
          v65 = 8191.0;
          if (v64)
          {
            v65 = v63;
            if (v63 < 0.0)
            {
              v65 = 0.0;
            }
          }

          v66 = v59 + v62;
          v64 = (v59 + v62) <= 8191.0;
          v67 = 8191.0;
          if (v64)
          {
            v67 = v66;
            if (v66 < 0.0)
            {
              v67 = 0.0;
            }
          }

          v68 = v60 + v62;
          v69 = 8191.0;
          if (v68 <= 8191.0)
          {
            v69 = v68;
            if (v68 < 0.0)
            {
              v69 = 0.0;
            }
          }

          if (v54 && (v70 = *v54, ++v54, v71 = v70 * 3.0, v54))
          {
            v72 = v71 / 255.0;
            v6 = llroundf(v72);
          }

          else
          {
            v6 = 3.0;
          }

          _H8 = *(v40 + 2 * llroundf(fminf(fmaxf(v65, 0.0), 8191.0)));
          v74 = llroundf(fminf(fmaxf(v67, 0.0), 8191.0));
          __asm { FCVT            S9, H8 }

          _H8 = *(v40 + 2 * v74);
          __asm { FCVT            S11, H8 }

          _H8 = *(v40 + 2 * llroundf(fminf(fmaxf(v69, 0.0), 8191.0)));
          __asm { FCVT            S10, H8 }

          _H8 = *(v41 + 2 * llroundf(fminf(fmaxf(((v38 * _S11) + (_S9 * v37)) + (_S10 * v39), 0.0), 8191.0)));
          __asm { FCVT            S8, H8 }

          v86 = v30 + _S8;
          v64 = (v30 + _S8) <= 1023.0;
          v5 = 1023.0;
          if (v64)
          {
            v5 = v86;
            if (v86 < 0.0)
            {
              v5 = 0.0;
            }
          }

          v87 = ((v32 * _S11) + (_S9 * v31)) + (_S10 * v33);
          _S9 = ((v35 * _S11) + (_S9 * v34)) + (_S10 * v36);
          _H10 = *(v41 + 2 * llroundf(fminf(fmaxf(v87, 0.0), 8191.0)));
          LOWORD(_S9) = *(v41 + 2 * llroundf(fminf(fmaxf(_S9, 0.0), 8191.0)));
          __asm { FCVT            S9, H9 }

          v91 = v30 + _S9;
          v64 = (v30 + _S9) <= 1023.0;
          v92 = 1023.0;
          if (v64)
          {
            v92 = v91;
            if (v91 < 0.0)
            {
              v92 = 0.0;
            }
          }

          __asm { FCVT            S10, H10 }

          v94 = v30 + _S10;
          v64 = (v30 + _S10) <= 1023.0;
          v95 = 1023.0;
          if (v64)
          {
            v95 = v94;
            if (v94 < 0.0)
            {
              v95 = 0.0;
            }
          }

          v96 = llroundf(v5);
          v97 = llroundf(v92) << 10;
          v98 = llroundf(v95);
          if (v6 > 3.0)
          {
            v6 = 3.0;
          }

          *v53++ = v97 | v96 | (llroundf(v6) << 30) | (v98 << 20);
          --v51;
        }

        while (v51);
      }

      v50 += v16;
      v49 += v17;
      v46 += v18;
      v44 += v19;
      ++v11;
    }

    while (v11 != v10);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_444vf_rgb_l10r(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v14 = a1;
  v51 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v46 = a2[1];
  v47 = v16;
  v18 = *a6;
  v17 = a6[1];
  v48 = a2[2];
  v49 = v18;
  v45 = v17;
  v50 = a6[2];
  if (v15 == 255)
  {
    v19 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v19)
    {
      v20 = 0;
LABEL_26:
      free(v19);
      return v20;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v19 = &v43 - v21;
    bzero(&v43 - v21, v22);
  }

  v23 = a9;
  v24 = vbslq_s8(vcgtq_s64(vaddq_s64(v48, v46), v47), vsubq_s64(v47, v48), v46);
  v25 = vbslq_s8(vcgtq_s64(vaddq_s64(v50, v45), v49), vsubq_s64(v49, v50), v45);
  v26 = vbslq_s8(vcgtq_s64(v25, v24), v24, v25);
  v27 = v48.i64[1];
  v28 = vaddq_s64((*&v48 + __PAIR128__(-1, 0)), v26);
  v29 = v28.i64[0] + *a4 * v28.i64[1] > *a5;
  v44 = a9;
  v45.i64[0] = v48.i64[1];
  v46 = v26;
  if (v29)
  {
    v30 = v14;
    v31 = a7;
    v32 = a8;
  }

  else if (*(a3 + 8) && (a4[1] * v28.i64[1] + 2 * v28.i64[0]) > a5[1])
  {
    v30 = v14;
    v31 = a7;
    v32 = a8;
  }

  else if (*(a3 + 16) && v28.i64[0] + a4[2] * v28.i64[1] > a5[2])
  {
    v30 = v14;
    v31 = a7;
    v32 = a8;
  }

  else
  {
    v33.i64[0] = v26.i64[0];
    v33.i64[1] = -1;
    v34 = vaddq_s64(v50, v33);
    if ((*a8 * (v34.i64[1] + v26.i64[1]) + 4 * v34.i64[0]) <= *a9)
    {
      if (!*(a7 + 8) || v34.i64[0] + a8[1] * (v34.i64[1] + v26.i64[1]) <= a9[1])
      {
        goto LABEL_20;
      }

      v30 = v14;
      v31 = a7;
      v32 = a8;
    }

    else
    {
      v30 = v14;
      v31 = a7;
      v32 = a8;
    }
  }

  fig_log_get_emitter();
  v35 = FigSignalErrorAtGM();
  a8 = v32;
  a7 = v31;
  v14 = v30;
  v23 = v44;
  v27 = v45.i64[0];
  v26 = v46;
  if (v35)
  {
    v20 = v35;
    goto LABEL_25;
  }

LABEL_20:
  *v19 = v15;
  v36 = v48.i64[0];
  *(v19 + 4) = v47;
  *(v19 + 20) = v26;
  *(v19 + 36) = v36;
  *(v19 + 44) = v27;
  v37 = v50;
  *(v19 + 5) = v49;
  *(v19 + 6) = v26;
  *(v19 + 7) = v37;
  *(v19 + 7) = a3;
  *(v19 + 8) = a4;
  *(v19 + 9) = a5;
  *(v19 + 16) = a7;
  *(v19 + 17) = a8;
  *(v19 + 18) = v23;
  *(v19 + 19) = v14;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v15, global_queue, v19, vt_Copy_444vf_rgb_l10r_GCD);
  if (!v15)
  {
    return 0;
  }

  v39 = (v19 + 160);
  v40 = v15;
  while (1)
  {
    v41 = *v39++;
    v20 = v41;
    if (v41)
    {
      break;
    }

    if (!--v40)
    {
      v20 = 0;
      break;
    }
  }

LABEL_25:
  if (v15 == 255)
  {
    goto LABEL_26;
  }

  return v20;
}

unsigned __int8 *vt_Copy_444vf_rgb_l10r_GCD(unsigned __int8 *result, uint64_t a2)
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
    v10 = *(result + 7);
    v11 = *(result + 8);
    v12 = *v11;
    v13 = v11[1];
    v14 = v11[2];
    v15 = **(result + 17);
    *&v16 = *(v9 + 128);
    *&v17 = *(v9 + 136);
    v18 = *&v17 / *&v16;
    LOWORD(v16) = *(v9 + 140);
    v19 = v16;
    LOWORD(v17) = *(v9 + 142);
    v20 = v17;
    v21 = v18 * *v9;
    v22 = v18 * *(v9 + 8);
    v23 = v18 * *(v9 + 16);
    v24 = v18 * *(v9 + 20);
    v25 = *(v9 + 28);
    v26 = v18 * v25;
    LOWORD(v25) = *(v9 + 144);
    v27 = LODWORD(v25);
    v28 = *(result + 28) * a2 / v3 + *(result + 44);
    v29 = *(result + 36);
    v30 = **(result + 16) + v15 * (v5 + *(result + 15)) + 16 * *(result + 14);
    v31 = v10[2];
    if (v31)
    {
      v32 = (v31 + v28 * v14 + v29);
    }

    else
    {
      v32 = 0;
    }

    v33 = *v10;
    v34 = *(*(result + 7) + 8);
    v35 = v34 == 0;
    v36 = (v34 + v28 * v13 + v29);
    if (v35)
    {
      v36 = 0;
    }

    v37 = (v33 + v28 * v12 + v29);
    while (v8 < 1)
    {
LABEL_28:
      v37 += v12;
      v36 += v13;
      v32 += v14;
      v30 += v15;
      if (++v7 == v6)
      {
        goto LABEL_29;
      }
    }

    v38 = v8;
    v39 = v37;
    v40 = v30;
    v41 = v32;
    v42 = v36;
    while (1)
    {
      if (v42)
      {
        LOBYTE(v2) = *v42;
        *&v43 = LODWORD(v2);
        v44 = *&v43 - v20;
        LOBYTE(v43) = v42[1];
        v45 = v43 - v20;
        v42 += 2;
        v46 = v22 * v45;
        v47 = (v24 * v45) + (v44 * v23);
        v48 = v26 * v44;
        if (v41)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v48 = 0.0;
        v47 = 0.0;
        v46 = 0.0;
        if (v41)
        {
LABEL_12:
          v49 = *v41++;
          v50 = v49 * 3.0 / 255.0;
          v51 = llroundf(v50);
          goto LABEL_15;
        }
      }

      v51 = 3.0;
LABEL_15:
      v52 = *v39++;
      v53 = v21 * (v52 - v19);
      v54 = (v48 + v53) + v27;
      v55 = 1023.0;
      if (v54 <= 1023.0)
      {
        v55 = v54;
        if (v54 < 0.0)
        {
          v55 = 0.0;
        }
      }

      v56 = (v47 + v53) + v27;
      v57 = 1023.0;
      if (v56 <= 1023.0)
      {
        v57 = v56;
        if (v56 < 0.0)
        {
          v57 = 0.0;
        }
      }

      v58 = (v46 + v53) + v27;
      v59 = 1023.0;
      if (v58 <= 1023.0)
      {
        v59 = v58;
        if (v58 < 0.0)
        {
          v59 = 0.0;
        }
      }

      v60 = llroundf(v55);
      v61 = llroundf(v57) << 10;
      v62 = llroundf(v59);
      if (v51 <= 3.0)
      {
        v2 = v51;
      }

      else
      {
        v2 = 3.0;
      }

      *v40++ = v61 | v60 | (llroundf(v2) << 30) | (v62 << 20);
      if (!--v38)
      {
        goto LABEL_28;
      }
    }
  }

LABEL_29:
  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_444vf_TRC_Tone_Mat_TRC_l64r(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v47 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v42 = a2[1];
  v43 = v16;
  v18 = *a6;
  v17 = a6[1];
  v44 = a2[2];
  v45 = v18;
  v41 = v17;
  v46 = a6[2];
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
    v19 = &v39 - v21;
    bzero(&v39 - v21, v22);
  }

  v23 = a9;
  v24 = vbslq_s8(vcgtq_s64(vaddq_s64(v44, v42), v43), vsubq_s64(v43, v44), v42);
  v25 = vbslq_s8(vcgtq_s64(vaddq_s64(v46, v41), v45), vsubq_s64(v45, v46), v41);
  v26 = vbslq_s8(vcgtq_s64(v25, v24), v24, v25);
  v27 = v44.i64[1];
  v28 = vaddq_s64((*&v44 + __PAIR128__(-1, 0)), v26);
  if ((v28.i64[0] + *a4 * v28.i64[1] > *a5 || *(a3 + 8) && (a4[1] * v28.i64[1] + 2 * v28.i64[0]) > a5[1] || *(a3 + 16) && v28.i64[0] + a4[2] * v28.i64[1] > a5[2] || (v29.i64[0] = v26.i64[0], v29.i64[1] = -1, v30 = vaddq_s64(v46, v29), (*a8 * (v30.i64[1] + v26.i64[1]) + 8 * v30.i64[0]) > *a9)) && (v40 = v44.i64[1], v41 = v26, v42.i64[0] = a9, fig_log_get_emitter(), v31 = FigSignalErrorAtGM(), v23 = v42.i64[0], v26 = v41, v27 = v40, v31))
  {
    v20 = v31;
  }

  else
  {
    *v19 = v15;
    v32 = v44.i64[0];
    *(v19 + 4) = v43;
    *(v19 + 20) = v26;
    *(v19 + 36) = v32;
    *(v19 + 44) = v27;
    v33 = v46;
    *(v19 + 5) = v45;
    *(v19 + 6) = v26;
    *(v19 + 7) = v33;
    *(v19 + 7) = a3;
    *(v19 + 8) = a4;
    *(v19 + 9) = a5;
    *(v19 + 16) = a7;
    *(v19 + 17) = a8;
    *(v19 + 18) = v23;
    *(v19 + 19) = a1;
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_444vf_TRC_Tone_Mat_TRC_l64r_GCD);
    if (!v15)
    {
      return 0;
    }

    v35 = (v19 + 160);
    v36 = v15;
    while (1)
    {
      v37 = *v35++;
      v20 = v37;
      if (v37)
      {
        break;
      }

      if (!--v36)
      {
        v20 = 0;
        break;
      }
    }
  }

  if (v15 == 255)
  {
    goto LABEL_19;
  }

  return v20;
}

unsigned __int8 *vt_Copy_444vf_TRC_Tone_Mat_TRC_l64r_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, float a5)
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
    v13 = *(result + 7);
    v14 = *(result + 8);
    v15 = *v14;
    v16 = v14[1];
    v17 = v14[2];
    v18 = **(result + 17);
    *&v19 = *(v12 + 128);
    v20 = 8191.0 / *&v19;
    LOWORD(v19) = *(v12 + 140);
    v21 = v19;
    LOWORD(a5) = *(v12 + 142);
    v22 = LODWORD(a5);
    v23 = v20 * *v12;
    v24 = v20 * *(v12 + 8);
    v25 = v20 * *(v12 + 16);
    v26 = v20 * *(v12 + 20);
    v27 = v20 * *(v12 + 28);
    v28 = *(v12 + 72);
    v29 = *(v12 + 76);
    v30 = *(v12 + 80);
    v31 = *(v12 + 84);
    v32 = *(v12 + 88);
    v33 = *(v12 + 92);
    v34 = *(v12 + 96);
    v35 = *(v12 + 100);
    v36 = v12 + 164;
    v37 = v12 + 16548;
    v38 = v12 + 32932;
    v39 = *(v12 + 104);
    v40 = *(v12 + 108);
    v41 = *(v12 + 112);
    v42 = *(v12 + 116);
    v43 = *(v12 + 120);
    v44 = *(result + 28) * a2 / v6 + *(result + 44);
    v45 = *(result + 36);
    v46 = **(result + 16) + v18 * (v8 + *(result + 15)) + 8 * *(result + 14);
    v47 = v13[2];
    if (v47)
    {
      v48 = (v47 + v44 * v17 + v45);
    }

    else
    {
      v48 = 0;
    }

    v50 = *v13;
    v49 = *(*(result + 7) + 8);
    _ZF = v49 == 0;
    v52 = (v49 + v44 * v16 + v45);
    if (_ZF)
    {
      v52 = 0;
    }

    v53 = (v50 + v44 * v15 + v45);
    do
    {
      if (v11 >= 1)
      {
        v54 = v11;
        v55 = v53;
        v56 = v46;
        v57 = v48;
        v58 = v52;
        do
        {
          if (v58)
          {
            LOBYTE(_S31) = *v58;
            *&v59 = LODWORD(_S31);
            v60 = *&v59 - v22;
            LOBYTE(v59) = v58[1];
            v61 = v59 - v22;
            v58 += 2;
            v62 = v24 * v61;
            v63 = (v26 * v61) + (v60 * v25);
            v64 = v27 * v60;
          }

          else
          {
            v64 = 0.0;
            v63 = 0.0;
            v62 = 0.0;
          }

          v65 = *v55++;
          v66 = v23 * (v65 - v21);
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

          if (v57)
          {
            v75 = *v57++;
            v74 = v75;
          }

          else
          {
            v74 = 0;
          }

          _H31 = *(v36 + 2 * llroundf(fminf(fmaxf(v69, 0.0), 8191.0)));
          __asm { FCVT            S31, H31 }

          _H9 = *(v36 + 2 * llroundf(fminf(fmaxf(v71, 0.0), 8191.0)));
          v82 = llroundf(fminf(fmaxf(v73, 0.0), 8191.0));
          __asm { FCVT            S8, H9 }

          _H9 = *(v36 + 2 * v82);
          __asm { FCVT            S10, H9 }

          v86 = (((v41 * _S8) + (v40 * _S31)) + (v42 * _S10)) + (v43 * fmaxf(_S31, fmaxf(_S8, _S10)));
          v87 = 8191.0;
          if (v86 <= 8191.0)
          {
            v87 = v86;
            if (v86 < 0.0)
            {
              v87 = 0.0;
            }
          }

          _H9 = *(v37 + 2 * llroundf(v87));
          __asm { FCVT            S11, H9 }

          v90 = _S31 * _S11;
          v91 = _S8 * _S11;
          v92 = _S10 * _S11;
          LOWORD(_S11) = *(v38 + 2 * llroundf(fminf(fmaxf(((v29 * v91) + (v90 * v28)) + ((_S10 * _S11) * v30), 0.0), 8191.0)));
          __asm { FCVT            S12, H11 }

          v94 = v74 | (v74 << 8);
          if (!v57)
          {
            v94 = -1;
          }

          v95 = 65535.0;
          if (_S12 <= 65535.0)
          {
            __asm { FCMP            H11, #0 }

            v95 = _S12;
            if (_NF)
            {
              v95 = 0.0;
            }
          }

          v97 = ((v32 * v91) + (v90 * v31)) + (v92 * v33);
          v98 = ((v35 * v91) + (v90 * v34)) + (v92 * v39);
          _H8 = *(v38 + 2 * llroundf(fminf(fmaxf(v97, 0.0), 8191.0)));
          _S31 = fminf(fmaxf(v98, 0.0), 8191.0);
          LOWORD(_S31) = *(v38 + 2 * llroundf(_S31));
          __asm { FCVT            S11, H8 }

          *v56 = llroundf(v95);
          v101 = 65535.0;
          if (_S11 <= 65535.0)
          {
            __asm { FCMP            H8, #0 }

            v101 = _S11;
            if (_NF)
            {
              v101 = 0.0;
            }
          }

          __asm { FCVT            S10, H31 }

          v56[1] = llroundf(v101);
          v104 = 65535.0;
          if (_S10 <= 65535.0)
          {
            __asm { FCMP            H31, #0 }

            v104 = _S10;
            if (_NF)
            {
              v104 = 0.0;
            }
          }

          v56[2] = llroundf(v104);
          v56[3] = v94;
          v56 += 4;
          --v54;
        }

        while (v54);
      }

      v53 += v15;
      v52 += v16;
      v48 += v17;
      v46 += v18;
      ++v10;
    }

    while (v10 != v9);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_444vf_TRC_Mat_TRC_l64r(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v47 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v42 = a2[1];
  v43 = v16;
  v18 = *a6;
  v17 = a6[1];
  v44 = a2[2];
  v45 = v18;
  v41 = v17;
  v46 = a6[2];
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
    v19 = &v39 - v21;
    bzero(&v39 - v21, v22);
  }

  v23 = a9;
  v24 = vbslq_s8(vcgtq_s64(vaddq_s64(v44, v42), v43), vsubq_s64(v43, v44), v42);
  v25 = vbslq_s8(vcgtq_s64(vaddq_s64(v46, v41), v45), vsubq_s64(v45, v46), v41);
  v26 = vbslq_s8(vcgtq_s64(v25, v24), v24, v25);
  v27 = v44.i64[1];
  v28 = vaddq_s64((*&v44 + __PAIR128__(-1, 0)), v26);
  if ((v28.i64[0] + *a4 * v28.i64[1] > *a5 || *(a3 + 8) && (a4[1] * v28.i64[1] + 2 * v28.i64[0]) > a5[1] || *(a3 + 16) && v28.i64[0] + a4[2] * v28.i64[1] > a5[2] || (v29.i64[0] = v26.i64[0], v29.i64[1] = -1, v30 = vaddq_s64(v46, v29), (*a8 * (v30.i64[1] + v26.i64[1]) + 8 * v30.i64[0]) > *a9)) && (v40 = v44.i64[1], v41 = v26, v42.i64[0] = a9, fig_log_get_emitter(), v31 = FigSignalErrorAtGM(), v23 = v42.i64[0], v26 = v41, v27 = v40, v31))
  {
    v20 = v31;
  }

  else
  {
    *v19 = v15;
    v32 = v44.i64[0];
    *(v19 + 4) = v43;
    *(v19 + 20) = v26;
    *(v19 + 36) = v32;
    *(v19 + 44) = v27;
    v33 = v46;
    *(v19 + 5) = v45;
    *(v19 + 6) = v26;
    *(v19 + 7) = v33;
    *(v19 + 7) = a3;
    *(v19 + 8) = a4;
    *(v19 + 9) = a5;
    *(v19 + 16) = a7;
    *(v19 + 17) = a8;
    *(v19 + 18) = v23;
    *(v19 + 19) = a1;
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_444vf_TRC_Mat_TRC_l64r_GCD);
    if (!v15)
    {
      return 0;
    }

    v35 = (v19 + 160);
    v36 = v15;
    while (1)
    {
      v37 = *v35++;
      v20 = v37;
      if (v37)
      {
        break;
      }

      if (!--v36)
      {
        v20 = 0;
        break;
      }
    }
  }

  if (v15 == 255)
  {
    goto LABEL_19;
  }

  return v20;
}

unsigned __int8 *vt_Copy_444vf_TRC_Mat_TRC_l64r_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, float a5)
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
    v13 = *(result + 7);
    v14 = *(result + 8);
    v15 = *v14;
    v16 = v14[1];
    v17 = v14[2];
    v18 = **(result + 17);
    *&v19 = *(v12 + 128);
    v20 = 8191.0 / *&v19;
    LOWORD(v19) = *(v12 + 140);
    v21 = v19;
    LOWORD(a5) = *(v12 + 142);
    v22 = LODWORD(a5);
    v23 = v20 * *v12;
    v24 = v20 * *(v12 + 8);
    v25 = v20 * *(v12 + 16);
    v26 = v20 * *(v12 + 20);
    v27 = v20 * *(v12 + 28);
    v28 = *(v12 + 72);
    v29 = *(v12 + 76);
    v30 = *(v12 + 80);
    v31 = *(v12 + 84);
    v32 = *(v12 + 88);
    v33 = *(v12 + 92);
    v34 = *(v12 + 96);
    v35 = *(v12 + 100);
    v36 = *(v12 + 104);
    v37 = v12 + 164;
    v38 = v12 + 16548;
    v39 = *(result + 28) * a2 / v6 + *(result + 44);
    v40 = *(result + 36);
    v41 = **(result + 16) + v18 * (v8 + *(result + 15)) + 8 * *(result + 14);
    v42 = v13[2];
    if (v42)
    {
      v43 = (v42 + v39 * v17 + v40);
    }

    else
    {
      v43 = 0;
    }

    v45 = *v13;
    v44 = v13[1];
    v46 = (v44 + v39 * v16 + v40);
    if (!v44)
    {
      v46 = 0;
    }

    v47 = (v45 + v39 * v15 + v40);
    do
    {
      if (v11 >= 1)
      {
        v48 = v11;
        v49 = v47;
        v50 = v41;
        v51 = v43;
        v52 = v46;
        do
        {
          if (v52)
          {
            LOBYTE(_S27) = *v52;
            *&v53 = LODWORD(_S27);
            v54 = *&v53 - v22;
            LOBYTE(v53) = v52[1];
            v55 = v53 - v22;
            v52 += 2;
            v56 = v24 * v55;
            v57 = (v26 * v55) + (v54 * v25);
            v58 = v27 * v54;
          }

          else
          {
            v58 = 0.0;
            v57 = 0.0;
            v56 = 0.0;
          }

          v59 = *v49++;
          v60 = v23 * (v59 - v21);
          v61 = v56 + v60;
          v62 = (v56 + v60) <= 8191.0;
          v63 = 8191.0;
          if (v62)
          {
            v63 = v61;
            if (v61 < 0.0)
            {
              v63 = 0.0;
            }
          }

          v64 = v57 + v60;
          v62 = (v57 + v60) <= 8191.0;
          v65 = 8191.0;
          if (v62)
          {
            v65 = v64;
            if (v64 < 0.0)
            {
              v65 = 0.0;
            }
          }

          v66 = v58 + v60;
          v67 = 8191.0;
          if (v66 <= 8191.0)
          {
            v67 = v66;
            if (v66 < 0.0)
            {
              v67 = 0.0;
            }
          }

          if (v51)
          {
            v69 = *v51++;
            v68 = v69;
          }

          else
          {
            v68 = 0;
          }

          _H27 = *(v37 + 2 * llroundf(fminf(fmaxf(v63, 0.0), 8191.0)));
          _H29 = *(v37 + 2 * llroundf(fminf(fmaxf(v65, 0.0), 8191.0)));
          __asm
          {
            FCVT            S27, H27
            FCVT            S29, H29
          }

          _H28 = *(v37 + 2 * llroundf(fminf(fmaxf(v67, 0.0), 8191.0)));
          __asm { FCVT            S28, H28 }

          _H31 = *(v38 + 2 * llroundf(fminf(fmaxf(((v29 * _S29) + (_S27 * v28)) + (_S28 * v30), 0.0), 8191.0)));
          __asm { FCVT            S8, H31 }

          v82 = v68 | (v68 << 8);
          if (!v51)
          {
            v82 = -1;
          }

          v83 = 65535.0;
          if (_S8 <= 65535.0)
          {
            __asm { FCMP            H31, #0 }

            v83 = _S8;
            if (_NF)
            {
              v83 = 0.0;
            }
          }

          v85 = ((v32 * _S29) + (_S27 * v31)) + (_S28 * v33);
          v86 = ((v35 * _S29) + (_S27 * v34)) + (_S28 * v36);
          _H28 = *(v38 + 2 * llroundf(fminf(fmaxf(v85, 0.0), 8191.0)));
          _S27 = fminf(fmaxf(v86, 0.0), 8191.0);
          LOWORD(_S27) = *(v38 + 2 * llroundf(_S27));
          __asm { FCVT            S31, H28 }

          *v50 = llroundf(v83);
          v89 = 65535.0;
          if (_S31 <= 65535.0)
          {
            __asm { FCMP            H28, #0 }

            v89 = _S31;
            if (_NF)
            {
              v89 = 0.0;
            }
          }

          __asm { FCVT            S30, H27 }

          v50[1] = llroundf(v89);
          v92 = 65535.0;
          if (_S30 <= 65535.0)
          {
            __asm { FCMP            H27, #0 }

            v92 = _S30;
            if (_NF)
            {
              v92 = 0.0;
            }
          }

          v50[2] = llroundf(v92);
          v50[3] = v82;
          v50 += 4;
          --v48;
        }

        while (v48);
      }

      v47 += v15;
      v46 += v16;
      v43 += v17;
      v41 += v18;
      ++v10;
    }

    while (v10 != v9);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_444vf_rgb_l64r(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v47 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v42 = a2[1];
  v43 = v16;
  v18 = *a6;
  v17 = a6[1];
  v44 = a2[2];
  v45 = v18;
  v41 = v17;
  v46 = a6[2];
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
    v19 = &v39 - v21;
    bzero(&v39 - v21, v22);
  }

  v23 = a9;
  v24 = vbslq_s8(vcgtq_s64(vaddq_s64(v44, v42), v43), vsubq_s64(v43, v44), v42);
  v25 = vbslq_s8(vcgtq_s64(vaddq_s64(v46, v41), v45), vsubq_s64(v45, v46), v41);
  v26 = vbslq_s8(vcgtq_s64(v25, v24), v24, v25);
  v27 = v44.i64[1];
  v28 = vaddq_s64((*&v44 + __PAIR128__(-1, 0)), v26);
  if ((v28.i64[0] + *a4 * v28.i64[1] > *a5 || *(a3 + 8) && (a4[1] * v28.i64[1] + 2 * v28.i64[0]) > a5[1] || *(a3 + 16) && v28.i64[0] + a4[2] * v28.i64[1] > a5[2] || (v29.i64[0] = v26.i64[0], v29.i64[1] = -1, v30 = vaddq_s64(v46, v29), (*a8 * (v30.i64[1] + v26.i64[1]) + 8 * v30.i64[0]) > *a9)) && (v40 = v44.i64[1], v41 = v26, v42.i64[0] = a9, fig_log_get_emitter(), v31 = FigSignalErrorAtGM(), v23 = v42.i64[0], v26 = v41, v27 = v40, v31))
  {
    v20 = v31;
  }

  else
  {
    *v19 = v15;
    v32 = v44.i64[0];
    *(v19 + 4) = v43;
    *(v19 + 20) = v26;
    *(v19 + 36) = v32;
    *(v19 + 44) = v27;
    v33 = v46;
    *(v19 + 5) = v45;
    *(v19 + 6) = v26;
    *(v19 + 7) = v33;
    *(v19 + 7) = a3;
    *(v19 + 8) = a4;
    *(v19 + 9) = a5;
    *(v19 + 16) = a7;
    *(v19 + 17) = a8;
    *(v19 + 18) = v23;
    *(v19 + 19) = a1;
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_444vf_rgb_l64r_GCD);
    if (!v15)
    {
      return 0;
    }

    v35 = (v19 + 160);
    v36 = v15;
    while (1)
    {
      v37 = *v35++;
      v20 = v37;
      if (v37)
      {
        break;
      }

      if (!--v36)
      {
        v20 = 0;
        break;
      }
    }
  }

  if (v15 == 255)
  {
    goto LABEL_19;
  }

  return v20;
}

unsigned __int8 *vt_Copy_444vf_rgb_l64r_GCD(unsigned __int8 *result, uint64_t a2)
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
    v11 = *(result + 7);
    v12 = *(result + 8);
    v13 = *v12;
    v14 = v12[1];
    v15 = v12[2];
    v16 = **(result + 17);
    *&v17 = *(v10 + 128);
    *&v18 = *(v10 + 136);
    v19 = *&v18 / *&v17;
    LOWORD(v17) = *(v10 + 140);
    v20 = v17;
    LOWORD(v18) = *(v10 + 142);
    v21 = v18;
    v22 = v19 * *v10;
    v23 = v19 * *(v10 + 8);
    v24 = v19 * *(v10 + 16);
    v25 = v19 * *(v10 + 20);
    v26 = v19 * *(v10 + 28);
    v27 = *(result + 28) * a2 / v4 + *(result + 44);
    v28 = *(result + 36);
    v29 = **(result + 16) + v16 * (v6 + *(result + 15)) + 8 * *(result + 14);
    v30 = v11[2];
    if (v30)
    {
      v31 = (v30 + v27 * v15 + v28);
    }

    else
    {
      v31 = 0;
    }

    v32 = *v11;
    v33 = *(*(result + 7) + 8);
    v34 = v33 == 0;
    v35 = (v33 + v27 * v14 + v28);
    if (v34)
    {
      v35 = 0;
    }

    v36 = (v32 + v27 * v13 + v28);
    while (v9 < 1)
    {
LABEL_29:
      v36 += v13;
      v35 += v14;
      v31 += v15;
      v29 += v16;
      if (++v8 == v7)
      {
        goto LABEL_30;
      }
    }

    v37 = v9;
    v38 = v36;
    v39 = v29;
    v40 = v31;
    v41 = v35;
    while (1)
    {
      if (v41)
      {
        LOBYTE(v2) = *v41;
        v42 = LODWORD(v2) - v21;
        LOBYTE(v3) = v41[1];
        v43 = LODWORD(v3) - v21;
        v41 += 2;
        v44 = v23 * v43;
        v45 = (v25 * v43) + (v42 * v24);
        v46 = v26 * v42;
        if (!v40)
        {
          goto LABEL_14;
        }
      }

      else
      {
        v46 = 0.0;
        v45 = 0.0;
        v44 = 0.0;
        if (!v40)
        {
LABEL_14:
          v47 = 0;
          goto LABEL_15;
        }
      }

      v48 = *v40++;
      v47 = v48;
LABEL_15:
      v49 = *v38++;
      v50 = v22 * (v49 - v20);
      v51 = v44 + v50;
      v52 = v47 | (v47 << 8);
      if (!v40)
      {
        v52 = -1;
      }

      v53 = 65535.0;
      if (v51 <= 65535.0)
      {
        v53 = v51;
        if (v51 < 0.0)
        {
          v53 = 0.0;
        }
      }

      v54 = v45 + v50;
      *v39 = llroundf(v53);
      v55 = (v45 + v50) <= 65535.0;
      v3 = 65535.0;
      if (v55)
      {
        v3 = v54;
        if (v54 < 0.0)
        {
          v3 = 0.0;
        }
      }

      v56 = v46 + v50;
      v39[1] = llroundf(v3);
      v55 = (v46 + v50) <= 65535.0;
      v2 = 65535.0;
      if (v55)
      {
        v2 = v56;
        if (v56 < 0.0)
        {
          v2 = 0.0;
        }
      }

      v39[2] = llroundf(v2);
      v39[3] = v52;
      v39 += 4;
      if (!--v37)
      {
        goto LABEL_29;
      }
    }
  }

LABEL_30:
  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_444vf_TRC_Tone_Mat_TRC_b64a(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v47 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v42 = a2[1];
  v43 = v16;
  v18 = *a6;
  v17 = a6[1];
  v44 = a2[2];
  v45 = v18;
  v41 = v17;
  v46 = a6[2];
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
    v19 = &v39 - v21;
    bzero(&v39 - v21, v22);
  }

  v23 = a9;
  v24 = vbslq_s8(vcgtq_s64(vaddq_s64(v44, v42), v43), vsubq_s64(v43, v44), v42);
  v25 = vbslq_s8(vcgtq_s64(vaddq_s64(v46, v41), v45), vsubq_s64(v45, v46), v41);
  v26 = vbslq_s8(vcgtq_s64(v25, v24), v24, v25);
  v27 = v44.i64[1];
  v28 = vaddq_s64((*&v44 + __PAIR128__(-1, 0)), v26);
  if ((v28.i64[0] + *a4 * v28.i64[1] > *a5 || *(a3 + 8) && (a4[1] * v28.i64[1] + 2 * v28.i64[0]) > a5[1] || *(a3 + 16) && v28.i64[0] + a4[2] * v28.i64[1] > a5[2] || (v29.i64[0] = v26.i64[0], v29.i64[1] = -1, v30 = vaddq_s64(v46, v29), (*a8 * (v30.i64[1] + v26.i64[1]) + 8 * v30.i64[0]) > *a9)) && (v40 = v44.i64[1], v41 = v26, v42.i64[0] = a9, fig_log_get_emitter(), v31 = FigSignalErrorAtGM(), v23 = v42.i64[0], v26 = v41, v27 = v40, v31))
  {
    v20 = v31;
  }

  else
  {
    *v19 = v15;
    v32 = v44.i64[0];
    *(v19 + 4) = v43;
    *(v19 + 20) = v26;
    *(v19 + 36) = v32;
    *(v19 + 44) = v27;
    v33 = v46;
    *(v19 + 5) = v45;
    *(v19 + 6) = v26;
    *(v19 + 7) = v33;
    *(v19 + 7) = a3;
    *(v19 + 8) = a4;
    *(v19 + 9) = a5;
    *(v19 + 16) = a7;
    *(v19 + 17) = a8;
    *(v19 + 18) = v23;
    *(v19 + 19) = a1;
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_444vf_TRC_Tone_Mat_TRC_b64a_GCD);
    if (!v15)
    {
      return 0;
    }

    v35 = (v19 + 160);
    v36 = v15;
    while (1)
    {
      v37 = *v35++;
      v20 = v37;
      if (v37)
      {
        break;
      }

      if (!--v36)
      {
        v20 = 0;
        break;
      }
    }
  }

  if (v15 == 255)
  {
    goto LABEL_19;
  }

  return v20;
}

unsigned __int8 *vt_Copy_444vf_TRC_Tone_Mat_TRC_b64a_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, float a5)
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
    v13 = *(result + 7);
    v14 = *(result + 8);
    v15 = *v14;
    v16 = v14[1];
    v17 = v14[2];
    v18 = **(result + 17);
    *&v19 = *(v12 + 128);
    v20 = 8191.0 / *&v19;
    LOWORD(v19) = *(v12 + 140);
    v21 = v19;
    LOWORD(a5) = *(v12 + 142);
    v22 = LODWORD(a5);
    v23 = v20 * *v12;
    v24 = v20 * *(v12 + 8);
    v25 = v20 * *(v12 + 16);
    v26 = v20 * *(v12 + 20);
    v27 = v20 * *(v12 + 28);
    v28 = *(v12 + 72);
    v29 = *(v12 + 76);
    v30 = *(v12 + 80);
    v31 = *(v12 + 84);
    v32 = *(v12 + 88);
    v33 = *(v12 + 92);
    v34 = *(v12 + 96);
    v35 = *(v12 + 100);
    v36 = v12 + 164;
    v37 = v12 + 16548;
    v38 = v12 + 32932;
    v39 = *(v12 + 104);
    v40 = *(v12 + 108);
    v41 = *(v12 + 112);
    v42 = *(v12 + 116);
    v43 = *(v12 + 120);
    v44 = *(result + 28) * a2 / v6 + *(result + 44);
    v45 = *(result + 36);
    v46 = **(result + 16) + v18 * (v8 + *(result + 15)) + 8 * *(result + 14);
    v47 = v13[2];
    if (v47)
    {
      v48 = (v47 + v44 * v17 + v45);
    }

    else
    {
      v48 = 0;
    }

    v50 = *v13;
    v49 = *(*(result + 7) + 8);
    _ZF = v49 == 0;
    v52 = (v49 + v44 * v16 + v45);
    if (_ZF)
    {
      v52 = 0;
    }

    v53 = (v50 + v44 * v15 + v45);
    do
    {
      if (v11 >= 1)
      {
        v54 = v11;
        v55 = v53;
        v56 = v46;
        v57 = v48;
        v58 = v52;
        do
        {
          if (v58)
          {
            LOBYTE(v5) = *v58;
            *&v59 = LODWORD(v5);
            v60 = *&v59 - v22;
            LOBYTE(v59) = v58[1];
            v61 = v59 - v22;
            v58 += 2;
            v62 = v24 * v61;
            v63 = (v26 * v61) + (v60 * v25);
            v64 = v27 * v60;
          }

          else
          {
            v64 = 0.0;
            v63 = 0.0;
            v62 = 0.0;
          }

          v65 = *v55++;
          v66 = v23 * (v65 - v21);
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

          if (v57)
          {
            v75 = *v57++;
            v74 = v75;
          }

          else
          {
            v74 = 0;
          }

          _H31 = *(v36 + 2 * llroundf(fminf(fmaxf(v69, 0.0), 8191.0)));
          __asm { FCVT            S31, H31 }

          _H9 = *(v36 + 2 * llroundf(fminf(fmaxf(v71, 0.0), 8191.0)));
          v82 = llroundf(fminf(fmaxf(v73, 0.0), 8191.0));
          __asm { FCVT            S8, H9 }

          _H9 = *(v36 + 2 * v82);
          __asm { FCVT            S11, H9 }

          v86 = (((v41 * _S8) + (v40 * _S31)) + (v42 * _S11)) + (v43 * fmaxf(_S31, fmaxf(_S8, _S11)));
          v87 = 8191.0;
          if (v86 <= 8191.0)
          {
            v87 = v86;
            if (v86 < 0.0)
            {
              v87 = 0.0;
            }
          }

          _H9 = *(v37 + 2 * llroundf(v87));
          __asm { FCVT            S12, H9 }

          v90 = _S31 * _S12;
          v91 = _S8 * _S12;
          v92 = _S11 * _S12;
          _H11 = *(v38 + 2 * llroundf(fminf(fmaxf(((v29 * v91) + ((_S31 * _S12) * v28)) + ((_S11 * _S12) * v30), 0.0), 8191.0)));
          __asm { FCVT            S12, H11 }

          v95 = v74 | (v74 << 8);
          if (!v57)
          {
            v95 = -1;
          }

          v5 = 65535.0;
          if (_S12 <= 65535.0)
          {
            __asm { FCMP            H11, #0 }

            v5 = _S12;
            if (_NF)
            {
              v5 = 0.0;
            }
          }

          v97 = ((v32 * v91) + (v90 * v31)) + (v92 * v33);
          v98 = (v35 * v91) + (v90 * v34);
          _H10 = *(v38 + 2 * llroundf(fminf(fmaxf(v97, 0.0), 8191.0)));
          __asm { FCVT            S11, H10 }

          _H9 = *(v38 + 2 * llroundf(fminf(fmaxf(v98 + (v92 * v39), 0.0), 8191.0)));
          v102 = 65535.0;
          if (_S11 <= 65535.0)
          {
            __asm { FCMP            H10, #0 }

            v102 = _S11;
            if (_NF)
            {
              v102 = 0.0;
            }
          }

          __asm { FCVT            S11, H9 }

          v105 = 65535.0;
          if (_S11 <= 65535.0)
          {
            __asm { FCMP            H9, #0 }

            v105 = _S11;
            if (_NF)
            {
              v105 = 0.0;
            }
          }

          *v56 = bswap32(v95) >> 16;
          v56[1] = __rev16(llroundf(v5));
          v56[2] = __rev16(llroundf(v102));
          v56[3] = __rev16(llroundf(v105));
          v56 += 4;
          --v54;
        }

        while (v54);
      }

      v53 += v15;
      v52 += v16;
      v48 += v17;
      v46 += v18;
      ++v10;
    }

    while (v10 != v9);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_444vf_TRC_Mat_TRC_b64a(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v47 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v42 = a2[1];
  v43 = v16;
  v18 = *a6;
  v17 = a6[1];
  v44 = a2[2];
  v45 = v18;
  v41 = v17;
  v46 = a6[2];
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
    v19 = &v39 - v21;
    bzero(&v39 - v21, v22);
  }

  v23 = a9;
  v24 = vbslq_s8(vcgtq_s64(vaddq_s64(v44, v42), v43), vsubq_s64(v43, v44), v42);
  v25 = vbslq_s8(vcgtq_s64(vaddq_s64(v46, v41), v45), vsubq_s64(v45, v46), v41);
  v26 = vbslq_s8(vcgtq_s64(v25, v24), v24, v25);
  v27 = v44.i64[1];
  v28 = vaddq_s64((*&v44 + __PAIR128__(-1, 0)), v26);
  if ((v28.i64[0] + *a4 * v28.i64[1] > *a5 || *(a3 + 8) && (a4[1] * v28.i64[1] + 2 * v28.i64[0]) > a5[1] || *(a3 + 16) && v28.i64[0] + a4[2] * v28.i64[1] > a5[2] || (v29.i64[0] = v26.i64[0], v29.i64[1] = -1, v30 = vaddq_s64(v46, v29), (*a8 * (v30.i64[1] + v26.i64[1]) + 8 * v30.i64[0]) > *a9)) && (v40 = v44.i64[1], v41 = v26, v42.i64[0] = a9, fig_log_get_emitter(), v31 = FigSignalErrorAtGM(), v23 = v42.i64[0], v26 = v41, v27 = v40, v31))
  {
    v20 = v31;
  }

  else
  {
    *v19 = v15;
    v32 = v44.i64[0];
    *(v19 + 4) = v43;
    *(v19 + 20) = v26;
    *(v19 + 36) = v32;
    *(v19 + 44) = v27;
    v33 = v46;
    *(v19 + 5) = v45;
    *(v19 + 6) = v26;
    *(v19 + 7) = v33;
    *(v19 + 7) = a3;
    *(v19 + 8) = a4;
    *(v19 + 9) = a5;
    *(v19 + 16) = a7;
    *(v19 + 17) = a8;
    *(v19 + 18) = v23;
    *(v19 + 19) = a1;
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_444vf_TRC_Mat_TRC_b64a_GCD);
    if (!v15)
    {
      return 0;
    }

    v35 = (v19 + 160);
    v36 = v15;
    while (1)
    {
      v37 = *v35++;
      v20 = v37;
      if (v37)
      {
        break;
      }

      if (!--v36)
      {
        v20 = 0;
        break;
      }
    }
  }

  if (v15 == 255)
  {
    goto LABEL_19;
  }

  return v20;
}

unsigned __int8 *vt_Copy_444vf_TRC_Mat_TRC_b64a_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, float a5)
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
    v13 = *(result + 7);
    v14 = *(result + 8);
    v15 = *v14;
    v16 = v14[1];
    v17 = v14[2];
    v18 = **(result + 17);
    *&v19 = *(v12 + 128);
    v20 = 8191.0 / *&v19;
    LOWORD(v19) = *(v12 + 140);
    v21 = v19;
    LOWORD(a5) = *(v12 + 142);
    v22 = LODWORD(a5);
    v23 = v20 * *v12;
    v24 = v20 * *(v12 + 8);
    v25 = v20 * *(v12 + 16);
    v26 = v20 * *(v12 + 20);
    v27 = v20 * *(v12 + 28);
    v28 = *(v12 + 72);
    v29 = *(v12 + 76);
    v30 = *(v12 + 80);
    v31 = *(v12 + 84);
    v32 = *(v12 + 88);
    v33 = *(v12 + 92);
    v34 = *(v12 + 96);
    v35 = *(v12 + 100);
    v36 = *(v12 + 104);
    v37 = v12 + 164;
    v38 = v12 + 16548;
    v39 = *(result + 28) * a2 / v6 + *(result + 44);
    v40 = *(result + 36);
    v41 = **(result + 16) + v18 * (v8 + *(result + 15)) + 8 * *(result + 14);
    v42 = v13[2];
    if (v42)
    {
      v43 = (v42 + v39 * v17 + v40);
    }

    else
    {
      v43 = 0;
    }

    v45 = *v13;
    v44 = v13[1];
    v46 = (v44 + v39 * v16 + v40);
    if (!v44)
    {
      v46 = 0;
    }

    v47 = (v45 + v39 * v15 + v40);
    do
    {
      if (v11 >= 1)
      {
        v48 = v11;
        v49 = v47;
        v50 = v41;
        v51 = v43;
        v52 = v46;
        do
        {
          if (v52)
          {
            LOBYTE(v5) = *v52;
            *&v53 = LODWORD(v5);
            v54 = *&v53 - v22;
            LOBYTE(v53) = v52[1];
            v55 = v53 - v22;
            v52 += 2;
            v56 = v24 * v55;
            v57 = (v26 * v55) + (v54 * v25);
            v58 = v27 * v54;
          }

          else
          {
            v58 = 0.0;
            v57 = 0.0;
            v56 = 0.0;
          }

          v59 = *v49++;
          v60 = v23 * (v59 - v21);
          v61 = v56 + v60;
          v62 = (v56 + v60) <= 8191.0;
          v63 = 8191.0;
          if (v62)
          {
            v63 = v61;
            if (v61 < 0.0)
            {
              v63 = 0.0;
            }
          }

          v64 = v57 + v60;
          v62 = (v57 + v60) <= 8191.0;
          v65 = 8191.0;
          if (v62)
          {
            v65 = v64;
            if (v64 < 0.0)
            {
              v65 = 0.0;
            }
          }

          v66 = v58 + v60;
          v67 = 8191.0;
          if (v66 <= 8191.0)
          {
            v67 = v66;
            if (v66 < 0.0)
            {
              v67 = 0.0;
            }
          }

          if (v51)
          {
            v69 = *v51++;
            v68 = v69;
          }

          else
          {
            v68 = 0;
          }

          _H27 = *(v37 + 2 * llroundf(fminf(fmaxf(v63, 0.0), 8191.0)));
          _H29 = *(v37 + 2 * llroundf(fminf(fmaxf(v65, 0.0), 8191.0)));
          __asm
          {
            FCVT            S27, H27
            FCVT            S29, H29
          }

          _H28 = *(v37 + 2 * llroundf(fminf(fmaxf(v67, 0.0), 8191.0)));
          __asm { FCVT            S30, H28 }

          _H31 = *(v38 + 2 * llroundf(fminf(fmaxf(((v29 * _S29) + (_S27 * v28)) + (_S30 * v30), 0.0), 8191.0)));
          __asm { FCVT            S8, H31 }

          v82 = v68 | (v68 << 8);
          if (!v51)
          {
            v82 = -1;
          }

          v83 = 65535.0;
          if (_S8 <= 65535.0)
          {
            __asm { FCMP            H31, #0 }

            v83 = _S8;
            if (_NF)
            {
              v83 = 0.0;
            }
          }

          _H8 = *(v38 + 2 * llroundf(fminf(fmaxf(((v32 * _S29) + (_S27 * v31)) + (_S30 * v33), 0.0), 8191.0)));
          __asm { FCVT            S9, H8 }

          v87 = 65535.0;
          if (_S9 <= 65535.0)
          {
            __asm { FCMP            H8, #0 }

            v87 = _S9;
            if (_NF)
            {
              v87 = 0.0;
            }
          }

          _H29 = *(v38 + 2 * llroundf(fminf(fmaxf(((v35 * _S29) + (_S27 * v34)) + (_S30 * v36), 0.0), 8191.0)));
          __asm { FCVT            S30, H29 }

          v5 = 65535.0;
          if (_S30 <= 65535.0)
          {
            __asm { FCMP            H29, #0 }

            v5 = _S30;
            if (_NF)
            {
              v5 = 0.0;
            }
          }

          *v50 = bswap32(v82) >> 16;
          v50[1] = __rev16(llroundf(v83));
          v50[2] = __rev16(llroundf(v87));
          v50[3] = __rev16(llroundf(v5));
          v50 += 4;
          --v48;
        }

        while (v48);
      }

      v47 += v15;
      v46 += v16;
      v43 += v17;
      v41 += v18;
      ++v10;
    }

    while (v10 != v9);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_444vf_rgb_b64a(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v47 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v42 = a2[1];
  v43 = v16;
  v18 = *a6;
  v17 = a6[1];
  v44 = a2[2];
  v45 = v18;
  v41 = v17;
  v46 = a6[2];
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
    v19 = &v39 - v21;
    bzero(&v39 - v21, v22);
  }

  v23 = a9;
  v24 = vbslq_s8(vcgtq_s64(vaddq_s64(v44, v42), v43), vsubq_s64(v43, v44), v42);
  v25 = vbslq_s8(vcgtq_s64(vaddq_s64(v46, v41), v45), vsubq_s64(v45, v46), v41);
  v26 = vbslq_s8(vcgtq_s64(v25, v24), v24, v25);
  v27 = v44.i64[1];
  v28 = vaddq_s64((*&v44 + __PAIR128__(-1, 0)), v26);
  if ((v28.i64[0] + *a4 * v28.i64[1] > *a5 || *(a3 + 8) && (a4[1] * v28.i64[1] + 2 * v28.i64[0]) > a5[1] || *(a3 + 16) && v28.i64[0] + a4[2] * v28.i64[1] > a5[2] || (v29.i64[0] = v26.i64[0], v29.i64[1] = -1, v30 = vaddq_s64(v46, v29), (*a8 * (v30.i64[1] + v26.i64[1]) + 8 * v30.i64[0]) > *a9)) && (v40 = v44.i64[1], v41 = v26, v42.i64[0] = a9, fig_log_get_emitter(), v31 = FigSignalErrorAtGM(), v23 = v42.i64[0], v26 = v41, v27 = v40, v31))
  {
    v20 = v31;
  }

  else
  {
    *v19 = v15;
    v32 = v44.i64[0];
    *(v19 + 4) = v43;
    *(v19 + 20) = v26;
    *(v19 + 36) = v32;
    *(v19 + 44) = v27;
    v33 = v46;
    *(v19 + 5) = v45;
    *(v19 + 6) = v26;
    *(v19 + 7) = v33;
    *(v19 + 7) = a3;
    *(v19 + 8) = a4;
    *(v19 + 9) = a5;
    *(v19 + 16) = a7;
    *(v19 + 17) = a8;
    *(v19 + 18) = v23;
    *(v19 + 19) = a1;
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_444vf_rgb_b64a_GCD);
    if (!v15)
    {
      return 0;
    }

    v35 = (v19 + 160);
    v36 = v15;
    while (1)
    {
      v37 = *v35++;
      v20 = v37;
      if (v37)
      {
        break;
      }

      if (!--v36)
      {
        v20 = 0;
        break;
      }
    }
  }

  if (v15 == 255)
  {
    goto LABEL_19;
  }

  return v20;
}

unsigned __int8 *vt_Copy_444vf_rgb_b64a_GCD(unsigned __int8 *result, uint64_t a2)
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
    v11 = *(result + 7);
    v12 = *(result + 8);
    v13 = *v12;
    v14 = v12[1];
    v15 = v12[2];
    v16 = **(result + 17);
    *&v17 = *(v10 + 128);
    *&v18 = *(v10 + 136);
    v19 = *&v18 / *&v17;
    LOWORD(v17) = *(v10 + 140);
    v20 = v17;
    LOWORD(v18) = *(v10 + 142);
    v21 = v18;
    v22 = v19 * *v10;
    v23 = v19 * *(v10 + 8);
    v24 = v19 * *(v10 + 16);
    v25 = v19 * *(v10 + 20);
    v26 = v19 * *(v10 + 28);
    v27 = *(result + 28) * a2 / v4 + *(result + 44);
    v28 = *(result + 36);
    v29 = **(result + 16) + v16 * (v6 + *(result + 15)) + 8 * *(result + 14);
    v30 = v11[2];
    if (v30)
    {
      v31 = (v30 + v27 * v15 + v28);
    }

    else
    {
      v31 = 0;
    }

    v32 = *v11;
    v33 = *(*(result + 7) + 8);
    v34 = v33 == 0;
    v35 = (v33 + v27 * v14 + v28);
    if (v34)
    {
      v35 = 0;
    }

    v36 = (v32 + v27 * v13 + v28);
    while (v9 < 1)
    {
LABEL_28:
      v36 += v13;
      v35 += v14;
      v31 += v15;
      v29 += v16;
      if (++v8 == v7)
      {
        goto LABEL_29;
      }
    }

    v37 = v9;
    v38 = v36;
    v39 = v29;
    v40 = v31;
    v41 = v35;
    while (1)
    {
      if (v41)
      {
        LOBYTE(v2) = *v41;
        v42 = LODWORD(v2) - v21;
        LOBYTE(v3) = v41[1];
        v43 = LODWORD(v3) - v21;
        v41 += 2;
        v44 = v23 * v43;
        v45 = (v25 * v43) + (v42 * v24);
        v46 = v26 * v42;
        if (!v40)
        {
          goto LABEL_14;
        }
      }

      else
      {
        v46 = 0.0;
        v45 = 0.0;
        v44 = 0.0;
        if (!v40)
        {
LABEL_14:
          v47 = 0;
          goto LABEL_15;
        }
      }

      v48 = *v40++;
      v47 = v48;
LABEL_15:
      v49 = *v38++;
      v50 = v22 * (v49 - v20);
      v51 = v44 + v50;
      v52 = v47 | (v47 << 8);
      if (!v40)
      {
        v52 = -1;
      }

      v53 = 65535.0;
      if (v51 <= 65535.0)
      {
        v53 = v51;
        if (v51 < 0.0)
        {
          v53 = 0.0;
        }
      }

      v54 = v45 + v50;
      v55 = (v45 + v50) <= 65535.0;
      v3 = 65535.0;
      if (v55)
      {
        v3 = v54;
        if (v54 < 0.0)
        {
          v3 = 0.0;
        }
      }

      v56 = v46 + v50;
      v2 = 65535.0;
      if (v56 <= 65535.0)
      {
        v2 = v56;
        if (v56 < 0.0)
        {
          v2 = 0.0;
        }
      }

      *v39 = bswap32(v52) >> 16;
      v39[1] = __rev16(llroundf(v53));
      v39[2] = __rev16(llroundf(v3));
      v39[3] = __rev16(llroundf(v2));
      v39 += 4;
      if (!--v37)
      {
        goto LABEL_28;
      }
    }
  }

LABEL_29:
  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_444vf_TRC_Tone_Mat_TRC_RGhA_neon_fp16(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v47 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v42 = a2[1];
  v43 = v16;
  v18 = *a6;
  v17 = a6[1];
  v44 = a2[2];
  v45 = v18;
  v41 = v17;
  v46 = a6[2];
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
    v19 = &v39 - v21;
    bzero(&v39 - v21, v22);
  }

  v23 = a9;
  v24 = vbslq_s8(vcgtq_s64(vaddq_s64(v44, v42), v43), vsubq_s64(v43, v44), v42);
  v25 = vbslq_s8(vcgtq_s64(vaddq_s64(v46, v41), v45), vsubq_s64(v45, v46), v41);
  v26 = vbslq_s8(vcgtq_s64(v25, v24), v24, v25);
  v27 = v44.i64[1];
  v28 = vaddq_s64((*&v44 + __PAIR128__(-1, 0)), v26);
  if ((v28.i64[0] + *a4 * v28.i64[1] > *a5 || *(a3 + 8) && (a4[1] * v28.i64[1] + 2 * v28.i64[0]) > a5[1] || *(a3 + 16) && v28.i64[0] + a4[2] * v28.i64[1] > a5[2] || (v29.i64[0] = v26.i64[0], v29.i64[1] = -1, v30 = vaddq_s64(v46, v29), (*a8 * (v30.i64[1] + v26.i64[1]) + 8 * v30.i64[0]) > *a9)) && (v40 = v44.i64[1], v41 = v26, v42.i64[0] = a9, fig_log_get_emitter(), v31 = FigSignalErrorAtGM(), v23 = v42.i64[0], v26 = v41, v27 = v40, v31))
  {
    v20 = v31;
  }

  else
  {
    *v19 = v15;
    v32 = v44.i64[0];
    *(v19 + 4) = v43;
    *(v19 + 20) = v26;
    *(v19 + 36) = v32;
    *(v19 + 44) = v27;
    v33 = v46;
    *(v19 + 5) = v45;
    *(v19 + 6) = v26;
    *(v19 + 7) = v33;
    *(v19 + 7) = a3;
    *(v19 + 8) = a4;
    *(v19 + 9) = a5;
    *(v19 + 16) = a7;
    *(v19 + 17) = a8;
    *(v19 + 18) = v23;
    *(v19 + 19) = a1;
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_444vf_TRC_Tone_Mat_TRC_RGhA_neon_fp16_GCD);
    if (!v15)
    {
      return 0;
    }

    v35 = (v19 + 160);
    v36 = v15;
    while (1)
    {
      v37 = *v35++;
      v20 = v37;
      if (v37)
      {
        break;
      }

      if (!--v36)
      {
        v20 = 0;
        break;
      }
    }
  }

  if (v15 == 255)
  {
    goto LABEL_19;
  }

  return v20;
}

unsigned __int8 *vt_Copy_444vf_TRC_Tone_Mat_TRC_RGhA_neon_fp16_GCD(unsigned __int8 *result, uint64_t a2, double _D0)
{
  v3 = *result;
  v147 = result;
  v4 = *(result + 13);
  v5 = v4 * a2 / v3;
  v148 = (v4 + v4 * a2) / v3 - v5;
  if (v148 >= 1)
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
    v15 = *(v8 + 140);
    v16 = *(v8 + 142);
    _Q6.i32[0] = *(v8 + 72);
    _Q16.i32[0] = *(v8 + 76);
    _S17 = *(v8 + 80);
    _S23 = *(v8 + 84);
    _S24 = *(v8 + 88);
    _S25 = *(v8 + 92);
    _S26 = *(v8 + 104);
    v24 = v8 + 16548;
    v25 = 8191.0 / *(v8 + 128);
    v26 = v16;
    *&_D0 = v25 * *v8;
    _S1 = v25 * *(v8 + 8);
    _S2 = v25 * *(v8 + 16);
    _S3 = v25 * *(v8 + 20);
    _S4 = v25 * *(v8 + 28);
    v31 = v8 + 164;
    v32 = v8 + 32932;
    v163 = *&_D0;
    v164 = v15;
    __asm { FCVT            H8, S0 }

    *&_D0 = v15;
    v38 = vdupq_lane_s16(*&_D0, 0);
    *&_D0 = -v16;
    v39 = vdupq_lane_s16(*&_D0, 0);
    v153 = _S4;
    v154 = _S3;
    __asm { FCVT            H0, S4 }

    v152 = _H0;
    v155 = _S2;
    v156 = _S1;
    __asm { FCVT            H0, S2 }

    v151 = _H0;
    __asm { FCVT            H0, S3 }

    v150 = _H0;
    __asm { FCVT            H0, S1 }

    v149 = _H0;
    v167 = *(v8 + 112);
    v168 = *(v8 + 108);
    __asm { FCVT            H0, S7 }

    v161 = _H0;
    v162 = v38;
    __asm { FCVT            H0, S18 }

    v160 = _H0;
    v165 = *(v8 + 120);
    v166 = *(v8 + 116);
    __asm { FCVT            H0, S20 }

    v159 = _H0;
    __asm { FCVT            H0, S22 }

    v158 = _H0;
    v48 = *_Q6.i32;
    __asm { FCVT            H0, S6 }

    v157 = _H0;
    v50 = v9[2];
    v51 = *(result + 28) * a2 / v3 + *(result + 44);
    v52 = *(result + 36);
    v53 = (v50 + v13 * v51 + v52);
    v55 = *v9;
    v54 = v9[1];
    v56 = **(result + 16) + v14 * (v5 + *(result + 15)) + 8 * *(result + 14);
    v57 = v54 + v12 * v51 + v52;
    if (!v50)
    {
      v53 = 0;
    }

    if (!v54)
    {
      v57 = 0;
    }

    v58 = (v55 + v11 * v51 + v52);
    _S29 = *(v8 + 96);
    _S30 = *(v8 + 100);
    v61 = *(v8 + 76);
    __asm { FCVT            H11, S16 }

    v63 = *(v8 + 80);
    __asm { FCVT            H12, S17 }

    v65 = *(v8 + 84);
    __asm { FCVT            H0, S23 }

    v67 = *(v8 + 88);
    __asm
    {
      FCVT            H1, S24
      FCVT            H2, S25
      FCVT            H3, S29
      FCVT            H4, S30
    }

    v72 = *(v8 + 104);
    __asm { FCVT            H5, S26 }

    v74.i64[0] = 0x9000900090009000;
    v74.i64[1] = 0x9000900090009000;
    do
    {
      if (v7 < 8)
      {
        v113 = 0;
        v79 = v57;
        v78 = v53;
        v77 = v56;
        v76 = v58;
      }

      else
      {
        v75 = 0;
        v76 = v58;
        v77 = v56;
        v78 = v53;
        v79 = v57;
        do
        {
          if (v79)
          {
            v169 = vld2_s8(v79);
            v79 += 16;
            *v80.i8 = vzip1_s8(v169.val[0], 0);
            v80.u64[1] = vzip2_s8(v169.val[0], 0);
            *v81.i8 = vzip1_s8(v169.val[1], 0);
            v81.u64[1] = vzip2_s8(v169.val[1], 0);
            v82 = vaddq_f16(v39, vcvtq_f16_u16(v80));
            v83 = vaddq_f16(v39, vcvtq_f16_u16(v81));
            v84 = vmulq_n_f16(v83, v149);
            v85 = vmlaq_n_f16(vmulq_n_f16(v82, v151), v83, v150);
            v86 = vmulq_n_f16(v82, v152);
          }

          else
          {
            v86 = 0uLL;
            v85 = 0uLL;
            v84 = 0uLL;
          }

          v87 = *v76++;
          v88 = v87;
          if (v78)
          {
            v89 = *v78++;
            v90 = v89;
          }

          else
          {
            v90 = 0;
          }

          *v91.i8 = vzip1_s8(v88, 0);
          v91.u64[1] = vzip2_s8(v88, 0);
          v92 = vsubq_f16(vcvtq_f16_u16(v91), v162);
          v93 = vmlaq_n_f16(v85, v92, _H8);
          v94 = vmlaq_n_f16(v86, v92, _H8);
          v95 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(v84, v92, _H8), 0), v74));
          v96.i16[0] = *(v31 + 2 * v95.u16[0]);
          v96.i16[1] = *(v31 + 2 * v95.u16[1]);
          v96.i16[2] = *(v31 + 2 * v95.u16[2]);
          v96.i16[3] = *(v31 + 2 * v95.u16[3]);
          v96.i16[4] = *(v31 + 2 * v95.u16[4]);
          v96.i16[5] = *(v31 + 2 * v95.u16[5]);
          v96.i16[6] = *(v31 + 2 * v95.u16[6]);
          v96.i16[7] = *(v31 + 2 * v95.u16[7]);
          v97 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v93, 0), v74));
          v93.i16[0] = *(v31 + 2 * v97.u16[0]);
          v93.i16[1] = *(v31 + 2 * v97.u16[1]);
          v93.i16[2] = *(v31 + 2 * v97.u16[2]);
          v93.i16[3] = *(v31 + 2 * v97.u16[3]);
          v93.i16[4] = *(v31 + 2 * v97.u16[4]);
          v93.i16[5] = *(v31 + 2 * v97.u16[5]);
          v93.i16[6] = *(v31 + 2 * v97.u16[6]);
          v93.i16[7] = *(v31 + 2 * v97.u16[7]);
          v98 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v94, 0), v74));
          v94.i16[0] = *(v31 + 2 * v98.u16[0]);
          v94.i16[1] = *(v31 + 2 * v98.u16[1]);
          v94.i16[2] = *(v31 + 2 * v98.u16[2]);
          v94.i16[3] = *(v31 + 2 * v98.u16[3]);
          v94.i16[4] = *(v31 + 2 * v98.u16[4]);
          v94.i16[5] = *(v31 + 2 * v98.u16[5]);
          v94.i16[6] = *(v31 + 2 * v98.u16[6]);
          v94.i16[7] = *(v31 + 2 * v98.u16[7]);
          v99 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v96, v161), v93, v160), v94, v159), vmaxq_f16(vmaxq_f16(v96, v93), v94), v158), 0), v74));
          v100.i16[0] = *(v24 + 2 * v99.u16[0]);
          v100.i16[1] = *(v24 + 2 * v99.u16[1]);
          v100.i16[2] = *(v24 + 2 * v99.u16[2]);
          v100.i16[3] = *(v24 + 2 * v99.u16[3]);
          v100.i16[4] = *(v24 + 2 * v99.u16[4]);
          v100.i16[5] = *(v24 + 2 * v99.u16[5]);
          v100.i16[6] = *(v24 + 2 * v99.u16[6]);
          v100.i16[7] = *(v24 + 2 * v99.u16[7]);
          v101 = vmulq_f16(v96, v100);
          v102 = vmulq_f16(v93, v100);
          v103 = vmulq_f16(v94, v100);
          v104 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v101, v157), v102, _H11), v103, _H12);
          v105 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v101, _H0), v102, _H1), v103, _H2);
          v106 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v103, _H5), v102, _H4), v101, _H3);
          v107 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v104, 0), v74));
          LOWORD(v108) = *(v32 + 2 * v107.u16[0]);
          WORD1(v108) = *(v32 + 2 * v107.u16[1]);
          WORD2(v108) = *(v32 + 2 * v107.u16[2]);
          WORD3(v108) = *(v32 + 2 * v107.u16[3]);
          WORD4(v108) = *(v32 + 2 * v107.u16[4]);
          WORD5(v108) = *(v32 + 2 * v107.u16[5]);
          WORD6(v108) = *(v32 + 2 * v107.u16[6]);
          HIWORD(v108) = *(v32 + 2 * v107.u16[7]);
          v109 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v105, 0), v74));
          LOWORD(v110) = *(v32 + 2 * v109.u16[0]);
          WORD1(v110) = *(v32 + 2 * v109.u16[1]);
          WORD2(v110) = *(v32 + 2 * v109.u16[2]);
          WORD3(v110) = *(v32 + 2 * v109.u16[3]);
          WORD4(v110) = *(v32 + 2 * v109.u16[4]);
          WORD5(v110) = *(v32 + 2 * v109.u16[5]);
          WORD6(v110) = *(v32 + 2 * v109.u16[6]);
          HIWORD(v110) = *(v32 + 2 * v109.u16[7]);
          _Q6 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v106, 0), v74));
          LOWORD(v111) = *(v32 + 2 * _Q6.u16[0]);
          result = (v32 + 2 * _Q6.u16[2]);
          WORD1(v111) = *(v32 + 2 * _Q6.u16[1]);
          WORD2(v111) = *result;
          WORD3(v111) = *(v32 + 2 * _Q6.u16[3]);
          WORD4(v111) = *(v32 + 2 * _Q6.u16[4]);
          WORD5(v111) = *(v32 + 2 * _Q6.u16[5]);
          WORD6(v111) = *(v32 + 2 * _Q6.u16[6]);
          HIWORD(v111) = *(v32 + 2 * _Q6.u16[7]);
          if (v78)
          {
            *v112.i8 = vzip1_s8(v90, 0);
            v112.u64[1] = vzip2_s8(v90, 0);
            _Q6 = vcvtq_f16_u16(v112);
            _Q16 = vmulq_f16(_Q6, vdupq_n_s16(0x1C04u));
          }

          else
          {
            _Q16.i64[0] = 0x3C003C003C003C00;
            _Q16.i64[1] = 0x3C003C003C003C00;
          }

          vst4q_s16(v77, *(&_Q16 - 3));
          v77 += 32;
          v75 += 8;
        }

        while (v75 < v7 - 7);
        v113 = v7 & 0xFFFFFFF8;
      }

      _VF = __OFSUB__(v7, v113);
      v114 = v7 - v113;
      if (!((v114 < 0) ^ _VF | (v114 == 0)))
      {
        do
        {
          if (v79)
          {
            _Q6.i8[0] = *v79;
            v115 = _Q6.u32[0] - v26;
            _Q16.i8[0] = *(v79 + 1);
            v116 = _Q16.u32[0] - v26;
            v79 += 2;
            v117 = v156 * v116;
            v118 = (v154 * v116) + (v115 * v155);
            *_Q16.i32 = v153 * v115;
          }

          else
          {
            _Q16.i32[0] = 0;
            v118 = 0.0;
            v117 = 0.0;
          }

          v119 = v76->u8[0];
          v76 = (v76 + 1);
          v120 = v163 * (v119 - v164);
          v121 = v117 + v120;
          v122 = 8191.0;
          if (v121 <= 8191.0)
          {
            v122 = v121;
            if (v121 < 0.0)
            {
              v122 = 0.0;
            }
          }

          v123 = v118 + v120;
          v124 = (v118 + v120) <= 8191.0;
          v125 = 8191.0;
          if (v124)
          {
            v125 = v123;
            if (v123 < 0.0)
            {
              v125 = 0.0;
            }
          }

          v126 = *_Q16.i32 + v120;
          v127 = 8191.0;
          if (v126 <= 8191.0)
          {
            v127 = v126;
            if (v126 < 0.0)
            {
              v127 = 0.0;
            }
          }

          if (v78)
          {
            v128 = v78->u8[0];
            v78 = (v78 + 1);
            _Q16.i16[1] = 15232;
            _S6 = v128 * 0.0039216;
            __asm { FCVT            H16, S6 }
          }

          else
          {
            _Q16.i32[0] = 0;
          }

          _H6 = *(v31 + 2 * llroundf(fminf(fmaxf(v122, 0.0), 8191.0)));
          __asm { FCVT            S14, H6 }

          _H6 = *(v31 + 2 * llroundf(fminf(fmaxf(v125, 0.0), 8191.0)));
          __asm { FCVT            S31, H6 }

          _H6 = *(v31 + 2 * llroundf(fminf(fmaxf(v127, 0.0), 8191.0)));
          __asm { FCVT            S13, H6 }

          v136 = fmaxf(_S14, fmaxf(_S31, _S13));
          v137 = (((v167 * _S31) + (v168 * _S14)) + (v166 * _S13)) + (v165 * v136);
          v138 = 8191.0;
          if (v137 <= 8191.0)
          {
            v138 = (((v167 * _S31) + (v168 * _S14)) + (v166 * _S13)) + (v165 * v136);
            if (v137 < 0.0)
            {
              v138 = 0.0;
            }
          }

          _H6 = *(v24 + 2 * llroundf(v138));
          __asm { FCVT            S6, H6 }

          v141 = _S14 * _S6;
          v142 = _S31 * _S6;
          v143 = _S13 * _S6;
          v144 = ((v61 * v142) + (v141 * v48)) + (v143 * v63);
          v145 = ((v67 * v142) + (v141 * v65)) + (v143 * _S25);
          v146 = ((_S30 * v142) + (v141 * _S29)) + (v143 * v72);
          LOWORD(v142) = *(v32 + 2 * llroundf(fminf(fmaxf(v145, 0.0), 8191.0)));
          *_Q6.i32 = fminf(fmaxf(v146, 0.0), 8191.0);
          _Q6.i16[0] = *(v32 + 2 * llroundf(*_Q6.i32));
          *v77 = *(v32 + 2 * llroundf(fminf(fmaxf(v144, 0.0), 8191.0)));
          v77[1] = LOWORD(v142);
          v77[2] = _Q6.i16[0];
          _Q6.i16[0] = COERCE_UNSIGNED_INT(1.0);
          if (v78)
          {
            _Q6.i16[0] = _Q16.i16[0];
          }

          v77[3] = _Q6.i16[0];
          v77 += 4;
          --v114;
        }

        while (v114);
      }

      v58 = (v58 + v11);
      v57 += v12;
      v53 = (v53 + v13);
      v56 += v14;
      ++v6;
    }

    while (v6 != v148);
  }

  *&v147[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_444vf_TRC_Tone_Mat_TRC_RGhA(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v47 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v42 = a2[1];
  v43 = v16;
  v18 = *a6;
  v17 = a6[1];
  v44 = a2[2];
  v45 = v18;
  v41 = v17;
  v46 = a6[2];
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
    v19 = &v39 - v21;
    bzero(&v39 - v21, v22);
  }

  v23 = a9;
  v24 = vbslq_s8(vcgtq_s64(vaddq_s64(v44, v42), v43), vsubq_s64(v43, v44), v42);
  v25 = vbslq_s8(vcgtq_s64(vaddq_s64(v46, v41), v45), vsubq_s64(v45, v46), v41);
  v26 = vbslq_s8(vcgtq_s64(v25, v24), v24, v25);
  v27 = v44.i64[1];
  v28 = vaddq_s64((*&v44 + __PAIR128__(-1, 0)), v26);
  if ((v28.i64[0] + *a4 * v28.i64[1] > *a5 || *(a3 + 8) && (a4[1] * v28.i64[1] + 2 * v28.i64[0]) > a5[1] || *(a3 + 16) && v28.i64[0] + a4[2] * v28.i64[1] > a5[2] || (v29.i64[0] = v26.i64[0], v29.i64[1] = -1, v30 = vaddq_s64(v46, v29), (*a8 * (v30.i64[1] + v26.i64[1]) + 8 * v30.i64[0]) > *a9)) && (v40 = v44.i64[1], v41 = v26, v42.i64[0] = a9, fig_log_get_emitter(), v31 = FigSignalErrorAtGM(), v23 = v42.i64[0], v26 = v41, v27 = v40, v31))
  {
    v20 = v31;
  }

  else
  {
    *v19 = v15;
    v32 = v44.i64[0];
    *(v19 + 4) = v43;
    *(v19 + 20) = v26;
    *(v19 + 36) = v32;
    *(v19 + 44) = v27;
    v33 = v46;
    *(v19 + 5) = v45;
    *(v19 + 6) = v26;
    *(v19 + 7) = v33;
    *(v19 + 7) = a3;
    *(v19 + 8) = a4;
    *(v19 + 9) = a5;
    *(v19 + 16) = a7;
    *(v19 + 17) = a8;
    *(v19 + 18) = v23;
    *(v19 + 19) = a1;
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_444vf_TRC_Tone_Mat_TRC_RGhA_GCD);
    if (!v15)
    {
      return 0;
    }

    v35 = (v19 + 160);
    v36 = v15;
    while (1)
    {
      v37 = *v35++;
      v20 = v37;
      if (v37)
      {
        break;
      }

      if (!--v36)
      {
        v20 = 0;
        break;
      }
    }
  }

  if (v15 == 255)
  {
    goto LABEL_19;
  }

  return v20;
}

unsigned __int8 *vt_Copy_444vf_TRC_Tone_Mat_TRC_RGhA_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, float a5)
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
    v14 = *(result + 7);
    v15 = *(result + 8);
    v16 = *v15;
    v17 = v15[1];
    v18 = v15[2];
    v19 = **(result + 17);
    *&v20 = *(v13 + 128);
    v21 = 8191.0 / *&v20;
    LOWORD(v20) = *(v13 + 140);
    v22 = v20;
    LOWORD(a5) = *(v13 + 142);
    v23 = LODWORD(a5);
    v24 = v21 * *v13;
    v25 = v21 * *(v13 + 8);
    v26 = v21 * *(v13 + 16);
    v27 = v21 * *(v13 + 20);
    v28 = v21 * *(v13 + 28);
    v29 = *(v13 + 72);
    v30 = *(v13 + 76);
    v31 = *(v13 + 80);
    v32 = *(v13 + 84);
    v33 = *(v13 + 88);
    v34 = *(v13 + 92);
    v35 = *(v13 + 96);
    v36 = *(v13 + 100);
    v37 = v13 + 164;
    v38 = v13 + 16548;
    v39 = v13 + 32932;
    v40 = *(v13 + 104);
    v41 = *(v13 + 108);
    v42 = *(v13 + 112);
    v43 = *(v13 + 116);
    v44 = *(v13 + 120);
    v45 = *(result + 28) * a2 / v7 + *(result + 44);
    v46 = *(result + 36);
    v47 = **(result + 16) + v19 * (v9 + *(result + 15)) + 8 * *(result + 14);
    v48 = v14[2];
    if (v48)
    {
      v49 = (v48 + v45 * v18 + v46);
    }

    else
    {
      v49 = 0;
    }

    v51 = *v14;
    v50 = *(*(result + 7) + 8);
    _ZF = v50 == 0;
    v53 = (v50 + v45 * v17 + v46);
    if (_ZF)
    {
      v53 = 0;
    }

    v54 = (v51 + v45 * v16 + v46);
    do
    {
      if (v12 >= 1)
      {
        v55 = v12;
        v56 = v54;
        v57 = v47;
        v58 = v49;
        v59 = v53;
        do
        {
          if (v59)
          {
            LOBYTE(_S8) = *v59;
            v60 = LODWORD(_S8) - v23;
            LOBYTE(v6) = v59[1];
            v61 = LODWORD(v6) - v23;
            v59 += 2;
            v62 = v25 * v61;
            v63 = (v27 * v61) + (v60 * v26);
            v64 = v28 * v60;
          }

          else
          {
            v64 = 0.0;
            v63 = 0.0;
            v62 = 0.0;
          }

          v65 = *v56++;
          v66 = v24 * (v65 - v22);
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
            _S8 = v74 * 0.0039216;
            __asm { FCVT            H8, S8 }
          }

          else
          {
            _S8 = 0.0;
          }

          _H9 = *(v37 + 2 * llroundf(fminf(fmaxf(v69, 0.0), 8191.0)));
          __asm { FCVT            S9, H9 }

          _H10 = *(v37 + 2 * llroundf(fminf(fmaxf(v71, 0.0), 8191.0)));
          __asm { FCVT            S10, H10 }

          _H11 = *(v37 + 2 * llroundf(fminf(fmaxf(v73, 0.0), 8191.0)));
          __asm { FCVT            S11, H11 }

          v84 = (((v42 * _S10) + (v41 * _S9)) + (v43 * _S11)) + (v44 * fmaxf(_S9, fmaxf(_S10, _S11)));
          v85 = 8191.0;
          if (v84 <= 8191.0)
          {
            v85 = v84;
            if (v84 < 0.0)
            {
              v85 = 0.0;
            }
          }

          _H12 = *(v38 + 2 * llroundf(v85));
          __asm { FCVT            S12, H12 }

          v88 = _S9 * _S12;
          v89 = _S10 * _S12;
          v90 = _S11 * _S12;
          v91 = ((v30 * v89) + (v88 * v29)) + (v90 * v31);
          v92 = ((v33 * v89) + (v88 * v32)) + (v90 * v34);
          v93 = ((v36 * v89) + (v88 * v35)) + (v90 * v40);
          LOWORD(v90) = *(v39 + 2 * llroundf(fminf(fmaxf(v92, 0.0), 8191.0)));
          v6 = fminf(fmaxf(v93, 0.0), 8191.0);
          LOWORD(v6) = *(v39 + 2 * llroundf(v6));
          *v57 = *(v39 + 2 * llroundf(fminf(fmaxf(v91, 0.0), 8191.0)));
          v57[1] = LOWORD(v90);
          v57[2] = LOWORD(v6);
          if (!v58)
          {
            LOWORD(_S8) = COERCE_UNSIGNED_INT(1.0);
          }

          v57[3] = LOWORD(_S8);
          v57 += 4;
          --v55;
        }

        while (v55);
      }

      v54 += v16;
      v53 += v17;
      v49 += v18;
      v47 += v19;
      ++v11;
    }

    while (v11 != v10);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_444vf_TRC_Mat_TRC_RGhA_neon_fp16(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v47 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v42 = a2[1];
  v43 = v16;
  v18 = *a6;
  v17 = a6[1];
  v44 = a2[2];
  v45 = v18;
  v41 = v17;
  v46 = a6[2];
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
    v19 = &v39 - v21;
    bzero(&v39 - v21, v22);
  }

  v23 = a9;
  v24 = vbslq_s8(vcgtq_s64(vaddq_s64(v44, v42), v43), vsubq_s64(v43, v44), v42);
  v25 = vbslq_s8(vcgtq_s64(vaddq_s64(v46, v41), v45), vsubq_s64(v45, v46), v41);
  v26 = vbslq_s8(vcgtq_s64(v25, v24), v24, v25);
  v27 = v44.i64[1];
  v28 = vaddq_s64((*&v44 + __PAIR128__(-1, 0)), v26);
  if ((v28.i64[0] + *a4 * v28.i64[1] > *a5 || *(a3 + 8) && (a4[1] * v28.i64[1] + 2 * v28.i64[0]) > a5[1] || *(a3 + 16) && v28.i64[0] + a4[2] * v28.i64[1] > a5[2] || (v29.i64[0] = v26.i64[0], v29.i64[1] = -1, v30 = vaddq_s64(v46, v29), (*a8 * (v30.i64[1] + v26.i64[1]) + 8 * v30.i64[0]) > *a9)) && (v40 = v44.i64[1], v41 = v26, v42.i64[0] = a9, fig_log_get_emitter(), v31 = FigSignalErrorAtGM(), v23 = v42.i64[0], v26 = v41, v27 = v40, v31))
  {
    v20 = v31;
  }

  else
  {
    *v19 = v15;
    v32 = v44.i64[0];
    *(v19 + 4) = v43;
    *(v19 + 20) = v26;
    *(v19 + 36) = v32;
    *(v19 + 44) = v27;
    v33 = v46;
    *(v19 + 5) = v45;
    *(v19 + 6) = v26;
    *(v19 + 7) = v33;
    *(v19 + 7) = a3;
    *(v19 + 8) = a4;
    *(v19 + 9) = a5;
    *(v19 + 16) = a7;
    *(v19 + 17) = a8;
    *(v19 + 18) = v23;
    *(v19 + 19) = a1;
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_444vf_TRC_Mat_TRC_RGhA_neon_fp16_GCD);
    if (!v15)
    {
      return 0;
    }

    v35 = (v19 + 160);
    v36 = v15;
    while (1)
    {
      v37 = *v35++;
      v20 = v37;
      if (v37)
      {
        break;
      }

      if (!--v36)
      {
        v20 = 0;
        break;
      }
    }
  }

  if (v15 == 255)
  {
    goto LABEL_19;
  }

  return v20;
}

int vt_Copy_444vf_TRC_Mat_TRC_RGhA_neon_fp16_GCD(unsigned __int8 *a1, uint64_t a2, double _D0)
{
  v3 = *a1;
  v140 = a1;
  v4 = *(a1 + 13);
  v5 = v4 * a2 / v3;
  v6 = (v4 + v4 * a2) / v3 - v5;
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = *(a1 + 24);
    v9 = *(a1 + 19);
    v10 = *(a1 + 7);
    v11 = *(a1 + 8);
    v12 = *v11;
    v13 = v11[1];
    v14 = v11[2];
    v15 = **(a1 + 17);
    v16 = *(v9 + 140);
    v17 = *(v9 + 142);
    _S21 = *(v9 + 72);
    _S22 = *(v9 + 76);
    _S23 = *(v9 + 80);
    _S28 = *(v9 + 84);
    _S29 = *(v9 + 88);
    _S30 = *(v9 + 92);
    _S31 = *(v9 + 96);
    _S1 = *(v9 + 100);
    _S14 = *(v9 + 104);
    v27 = v9 + 164;
    v28 = 8191.0 / *(v9 + 128);
    v29 = v17;
    *&_D0 = v28 * *v9;
    _S6 = v28 * *(v9 + 8);
    _S2 = v28 * *(v9 + 16);
    _S3 = v28 * *(v9 + 20);
    _S4 = v28 * *(v9 + 28);
    v34 = v9 + 16548;
    v152 = *&_D0;
    v153 = v16;
    __asm { FCVT            H8, S0 }

    *&_D0 = v16;
    v40 = vdupq_lane_s16(*&_D0, 0);
    *&_D0 = -v17;
    v41 = vdupq_lane_s16(*&_D0, 0);
    v145 = _S4;
    v146 = _S3;
    __asm { FCVT            H0, S4 }

    v144 = _H0;
    v147 = _S2;
    v148 = _S6;
    __asm { FCVT            H0, S2 }

    v143 = _H0;
    __asm { FCVT            H0, S3 }

    v142 = _H0;
    __asm { FCVT            H0, S6 }

    v141 = _H0;
    v46 = _S21;
    __asm { FCVT            H0, S21 }

    v150 = _H0;
    v151 = v40;
    v48 = _S22;
    __asm { FCVT            H0, S22 }

    v149 = _H0;
    v50 = _S23;
    __asm { FCVT            H15, S23 }

    v52 = _S28;
    __asm
    {
      FCVT            H9, S28
      FCVT            H10, S29
    }

    v55 = _S30;
    __asm
    {
      FCVT            H11, S30
      FCVT            H12, S31
    }

    v58 = _S1;
    __asm { FCVT            H0, S1 }

    v60 = v10[2];
    v61 = *(a1 + 28) * a2 / v3 + *(a1 + 44);
    v62 = *(a1 + 36);
    v63 = (v60 + v14 * v61 + v62);
    v65 = *v10;
    v64 = v10[1];
    v66 = v64 + v13 * v61 + v62;
    v67 = **(a1 + 16) + v15 * (v5 + *(a1 + 15)) + 8 * *(a1 + 14);
    if (!v60)
    {
      v63 = 0;
    }

    if (!v64)
    {
      v66 = 0;
    }

    v68 = (v65 + v12 * v61 + v62);
    LODWORD(a1) = v8 & 0xFFFFFFF8;
    __asm { FCVT            H1, S14 }

    v70.i64[0] = 0x9000900090009000;
    v70.i64[1] = 0x9000900090009000;
    do
    {
      if (v8 < 8)
      {
        v110 = 0;
        v75 = v66;
        v74 = v63;
        v73 = v67;
        v72 = v68;
      }

      else
      {
        v71 = 0;
        v72 = v68;
        v73 = v67;
        v74 = v63;
        v75 = v66;
        do
        {
          if (v75)
          {
            v154 = vld2_s8(v75);
            v75 += 16;
            *v76.i8 = vzip1_s8(v154.val[0], 0);
            v76.u64[1] = vzip2_s8(v154.val[0], 0);
            *v77.i8 = vzip1_s8(v154.val[1], 0);
            v77.u64[1] = vzip2_s8(v154.val[1], 0);
            *(&v154 + 8) = vaddq_f16(v41, vcvtq_f16_u16(v76));
            v78 = vaddq_f16(v41, vcvtq_f16_u16(v77));
            v79 = vmulq_n_f16(v78, v141);
            v80 = vmlaq_n_f16(vmulq_n_f16(*(&v154 + 8), v143), v78, v142);
            v81 = vmulq_n_f16(*(&v154 + 8), v144);
          }

          else
          {
            v81 = 0uLL;
            v80 = 0uLL;
            v79 = 0uLL;
          }

          v82 = *v72++;
          v83 = v82;
          if (v74)
          {
            v84 = *v74++;
            v85 = v84;
          }

          else
          {
            v85 = 0;
          }

          *v86.i8 = vzip1_s8(v83, 0);
          v86.u64[1] = vzip2_s8(v83, 0);
          v87 = vsubq_f16(vcvtq_f16_u16(v86), v151);
          v88 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(v79, v87, _H8), 0), v70));
          v89.i16[0] = *(v27 + 2 * v88.u16[0]);
          v89.i16[1] = *(v27 + 2 * v88.u16[1]);
          v89.i16[2] = *(v27 + 2 * v88.u16[2]);
          v89.i16[3] = *(v27 + 2 * v88.u16[3]);
          v89.i16[4] = *(v27 + 2 * v88.u16[4]);
          v89.i16[5] = *(v27 + 2 * v88.u16[5]);
          v89.i16[6] = *(v27 + 2 * v88.u16[6]);
          v89.i16[7] = *(v27 + 2 * v88.u16[7]);
          v90 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(v80, v87, _H8), 0), v70));
          v91.i16[0] = *(v27 + 2 * v90.u16[0]);
          v91.i16[1] = *(v27 + 2 * v90.u16[1]);
          v91.i16[2] = *(v27 + 2 * v90.u16[2]);
          v91.i16[3] = *(v27 + 2 * v90.u16[3]);
          v91.i16[4] = *(v27 + 2 * v90.u16[4]);
          v91.i16[5] = *(v27 + 2 * v90.u16[5]);
          v91.i16[6] = *(v27 + 2 * v90.u16[6]);
          v91.i16[7] = *(v27 + 2 * v90.u16[7]);
          v92 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(v81, v87, _H8), 0), v70));
          v87.i16[0] = *(v27 + 2 * v92.u16[0]);
          v87.i16[1] = *(v27 + 2 * v92.u16[1]);
          v87.i16[2] = *(v27 + 2 * v92.u16[2]);
          v87.i16[3] = *(v27 + 2 * v92.u16[3]);
          v87.i16[4] = *(v27 + 2 * v92.u16[4]);
          v87.i16[5] = *(v27 + 2 * v92.u16[5]);
          v87.i16[6] = *(v27 + 2 * v92.u16[6]);
          v87.i16[7] = *(v27 + 2 * v92.u16[7]);
          v93 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v89, _H9), v91, _H10), v87, _H11);
          v94 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v87, _H1), v91, _H0), v89, _H12);
          v95 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v89, v150), v91, v149), v87, _H15), 0), v70));
          LOWORD(_S2) = *(v34 + 2 * v95.u16[0]);
          HIWORD(_S2) = *(v34 + 2 * v95.u16[1]);
          v102 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v93, 0), v70));
          LOWORD(v103) = *(v34 + 2 * v102.u16[0]);
          WORD1(v103) = *(v34 + 2 * v102.u16[1]);
          WORD2(v103) = *(v34 + 2 * v102.u16[2]);
          WORD3(v103) = *(v34 + 2 * v102.u16[3]);
          WORD4(v103) = *(v34 + 2 * v102.u16[4]);
          WORD5(v103) = *(v34 + 2 * v102.u16[5]);
          WORD6(v103) = *(v34 + 2 * v102.u16[6]);
          HIWORD(v103) = *(v34 + 2 * v102.u16[7]);
          v104 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v94, 0), v70));
          *v106 = *(v34 + 2 * v104.u16[0]);
          a1 = (v34 + 2 * v104.u16[1]);
          v105 = (v34 + 2 * v104.u16[7]);
          *&v106[2] = *a1;
          *&v106[4] = *(v34 + 2 * v104.u16[2]);
          *&v106[6] = *(v34 + 2 * v104.u16[3]);
          *&v106[8] = *(v34 + 2 * v104.u16[4]);
          *&v106[10] = *(v34 + 2 * v104.u16[5]);
          *&v106[12] = *(v34 + 2 * v104.u16[6]);
          if (v74)
          {
            *v108.i8 = vzip1_s8(v85, 0);
            v108.u64[1] = vzip2_s8(v85, 0);
            v109 = vmulq_f16(vcvtq_f16_u16(v108), vdupq_n_s16(0x1C04u));
          }

          else
          {
            v109.i64[0] = 0x3C003C003C003C00;
            v109.i64[1] = 0x3C003C003C003C00;
          }

          v101 = *(v34 + 2 * v95.u16[7]);
          v107 = *v105;
          v100 = *(v34 + 2 * v95.u16[6]);
          v99 = *(v34 + 2 * v95.u16[5]);
          v98 = *(v34 + 2 * v95.u16[4]);
          v97 = *(v34 + 2 * v95.u16[3]);
          v96 = *(v34 + 2 * v95.u16[2]);
          vst4q_s16(v73, *&_S2);
          v73 += 32;
          v71 += 8;
        }

        while (v71 < v8 - 7);
        v110 = v8 & 0xFFFFFFF8;
      }

      _VF = __OFSUB__(v8, v110);
      v111 = v8 - v110;
      if (!((v111 < 0) ^ _VF | (v111 == 0)))
      {
        do
        {
          if (v75)
          {
            LOBYTE(_S2) = *v75;
            *&v112 = LODWORD(_S2);
            v113 = *&v112 - v29;
            LOBYTE(v112) = *(v75 + 1);
            v114 = v112 - v29;
            v75 += 2;
            v115 = v148 * v114;
            v116 = (v146 * v114) + (v113 * v147);
            v117 = v145 * v113;
          }

          else
          {
            v117 = 0.0;
            v116 = 0.0;
            v115 = 0.0;
          }

          v118 = v72->u8[0];
          v72 = (v72 + 1);
          v119 = v152 * (v118 - v153);
          v120 = v115 + v119;
          v121 = (v115 + v119) <= 8191.0;
          v122 = 8191.0;
          if (v121)
          {
            v122 = v120;
            if (v120 < 0.0)
            {
              v122 = 0.0;
            }
          }

          v123 = v116 + v119;
          v121 = (v116 + v119) <= 8191.0;
          v124 = 8191.0;
          if (v121)
          {
            v124 = v123;
            if (v123 < 0.0)
            {
              v124 = 0.0;
            }
          }

          v125 = v117 + v119;
          v126 = 8191.0;
          if (v125 <= 8191.0)
          {
            v126 = v125;
            if (v125 < 0.0)
            {
              v126 = 0.0;
            }
          }

          if (v74)
          {
            v127 = v74->u8[0];
            v74 = (v74 + 1);
            _S3 = v127 * 0.0039216;
            __asm { FCVT            H3, S3 }
          }

          else
          {
            LOWORD(_H3) = 0;
          }

          _H2 = *(v27 + 2 * llroundf(fminf(fmaxf(v122, 0.0), 8191.0)));
          __asm { FCVT            S2, H2 }

          _H4 = *(v27 + 2 * llroundf(fminf(fmaxf(v124, 0.0), 8191.0)));
          __asm { FCVT            S4, H4 }

          _H5 = *(v27 + 2 * llroundf(fminf(fmaxf(v126, 0.0), 8191.0)));
          __asm { FCVT            S5, H5 }

          v136 = ((v48 * _S4) + (_S2 * v46)) + (_S5 * v50);
          v137 = ((_S29 * _S4) + (_S2 * v52)) + (_S5 * v55);
          v138 = ((v58 * _S4) + (_S2 * _S31)) + (_S5 * _S14);
          LOWORD(_S5) = *(v34 + 2 * llroundf(fminf(fmaxf(v137, 0.0), 8191.0)));
          _S2 = fminf(fmaxf(v138, 0.0), 8191.0);
          LODWORD(a1) = llroundf(_S2);
          LOWORD(_S2) = *(v34 + 2 * a1);
          *v73 = *(v34 + 2 * llroundf(fminf(fmaxf(v136, 0.0), 8191.0)));
          v73[1] = LOWORD(_S5);
          v73[2] = LOWORD(_S2);
          LOWORD(_S2) = COERCE_UNSIGNED_INT(1.0);
          if (v74)
          {
            *&_S2 = _H3;
          }

          v73[3] = LOWORD(_S2);
          v73 += 4;
          --v111;
        }

        while (v111);
      }

      v68 = (v68 + v12);
      v66 += v13;
      v63 = (v63 + v14);
      v67 += v15;
      ++v7;
    }

    while (v7 != v6);
  }

  *&v140[4 * a2 + 160] = 0;
  return a1;
}

uint64_t vt_Copy_444vf_TRC_Mat_TRC_RGhA(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v47 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v42 = a2[1];
  v43 = v16;
  v18 = *a6;
  v17 = a6[1];
  v44 = a2[2];
  v45 = v18;
  v41 = v17;
  v46 = a6[2];
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
    v19 = &v39 - v21;
    bzero(&v39 - v21, v22);
  }

  v23 = a9;
  v24 = vbslq_s8(vcgtq_s64(vaddq_s64(v44, v42), v43), vsubq_s64(v43, v44), v42);
  v25 = vbslq_s8(vcgtq_s64(vaddq_s64(v46, v41), v45), vsubq_s64(v45, v46), v41);
  v26 = vbslq_s8(vcgtq_s64(v25, v24), v24, v25);
  v27 = v44.i64[1];
  v28 = vaddq_s64((*&v44 + __PAIR128__(-1, 0)), v26);
  if ((v28.i64[0] + *a4 * v28.i64[1] > *a5 || *(a3 + 8) && (a4[1] * v28.i64[1] + 2 * v28.i64[0]) > a5[1] || *(a3 + 16) && v28.i64[0] + a4[2] * v28.i64[1] > a5[2] || (v29.i64[0] = v26.i64[0], v29.i64[1] = -1, v30 = vaddq_s64(v46, v29), (*a8 * (v30.i64[1] + v26.i64[1]) + 8 * v30.i64[0]) > *a9)) && (v40 = v44.i64[1], v41 = v26, v42.i64[0] = a9, fig_log_get_emitter(), v31 = FigSignalErrorAtGM(), v23 = v42.i64[0], v26 = v41, v27 = v40, v31))
  {
    v20 = v31;
  }

  else
  {
    *v19 = v15;
    v32 = v44.i64[0];
    *(v19 + 4) = v43;
    *(v19 + 20) = v26;
    *(v19 + 36) = v32;
    *(v19 + 44) = v27;
    v33 = v46;
    *(v19 + 5) = v45;
    *(v19 + 6) = v26;
    *(v19 + 7) = v33;
    *(v19 + 7) = a3;
    *(v19 + 8) = a4;
    *(v19 + 9) = a5;
    *(v19 + 16) = a7;
    *(v19 + 17) = a8;
    *(v19 + 18) = v23;
    *(v19 + 19) = a1;
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_444vf_TRC_Mat_TRC_RGhA_GCD);
    if (!v15)
    {
      return 0;
    }

    v35 = (v19 + 160);
    v36 = v15;
    while (1)
    {
      v37 = *v35++;
      v20 = v37;
      if (v37)
      {
        break;
      }

      if (!--v36)
      {
        v20 = 0;
        break;
      }
    }
  }

  if (v15 == 255)
  {
    goto LABEL_19;
  }

  return v20;
}

unsigned __int8 *vt_Copy_444vf_TRC_Mat_TRC_RGhA_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, float a5)
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
    v13 = *(result + 7);
    v14 = *(result + 8);
    v15 = *v14;
    v16 = v14[1];
    v17 = v14[2];
    v18 = **(result + 17);
    *&v19 = *(v12 + 128);
    v20 = 8191.0 / *&v19;
    LOWORD(v19) = *(v12 + 140);
    v21 = v19;
    LOWORD(a5) = *(v12 + 142);
    v22 = LODWORD(a5);
    v23 = v20 * *v12;
    v24 = v20 * *(v12 + 8);
    v25 = v20 * *(v12 + 16);
    v26 = v20 * *(v12 + 20);
    v27 = v20 * *(v12 + 28);
    v28 = *(v12 + 72);
    v29 = *(v12 + 76);
    v30 = *(v12 + 80);
    v31 = *(v12 + 84);
    v32 = *(v12 + 88);
    v33 = *(v12 + 92);
    v34 = *(v12 + 96);
    v35 = *(v12 + 100);
    v36 = *(v12 + 104);
    v37 = v12 + 164;
    v38 = v12 + 16548;
    v39 = *(result + 28) * a2 / v6 + *(result + 44);
    v40 = *(result + 36);
    v41 = **(result + 16) + v18 * (v8 + *(result + 15)) + 8 * *(result + 14);
    v42 = v13[2];
    if (v42)
    {
      v43 = (v42 + v39 * v17 + v40);
    }

    else
    {
      v43 = 0;
    }

    v45 = *v13;
    v44 = v13[1];
    v46 = (v44 + v39 * v16 + v40);
    if (!v44)
    {
      v46 = 0;
    }

    v47 = (v45 + v39 * v15 + v40);
    do
    {
      if (v11 >= 1)
      {
        v48 = v11;
        v49 = v47;
        v50 = v41;
        v51 = v43;
        v52 = v46;
        do
        {
          if (v52)
          {
            LOBYTE(v5) = *v52;
            *&v53 = LODWORD(v5);
            v54 = *&v53 - v22;
            LOBYTE(v53) = v52[1];
            v55 = v53 - v22;
            v52 += 2;
            v56 = v24 * v55;
            v57 = (v26 * v55) + (v54 * v25);
            v58 = v27 * v54;
          }

          else
          {
            v58 = 0.0;
            v57 = 0.0;
            v56 = 0.0;
          }

          v59 = *v49++;
          v60 = v23 * (v59 - v21);
          v61 = v56 + v60;
          v62 = (v56 + v60) <= 8191.0;
          v63 = 8191.0;
          if (v62)
          {
            v63 = v61;
            if (v61 < 0.0)
            {
              v63 = 0.0;
            }
          }

          v64 = v57 + v60;
          v62 = (v57 + v60) <= 8191.0;
          v65 = 8191.0;
          if (v62)
          {
            v65 = v64;
            if (v64 < 0.0)
            {
              v65 = 0.0;
            }
          }

          v66 = v58 + v60;
          v67 = 8191.0;
          if (v66 <= 8191.0)
          {
            v67 = v66;
            if (v66 < 0.0)
            {
              v67 = 0.0;
            }
          }

          if (v51)
          {
            v68 = *v51++;
            _S29 = v68 * 0.0039216;
            __asm { FCVT            H29, S29 }
          }

          else
          {
            LOWORD(_H29) = 0;
          }

          _H28 = *(v37 + 2 * llroundf(fminf(fmaxf(v63, 0.0), 8191.0)));
          __asm { FCVT            S28, H28 }

          _H30 = *(v37 + 2 * llroundf(fminf(fmaxf(v65, 0.0), 8191.0)));
          __asm { FCVT            S30, H30 }

          _H31 = *(v37 + 2 * llroundf(fminf(fmaxf(v67, 0.0), 8191.0)));
          __asm { FCVT            S31, H31 }

          v81 = ((v29 * _S30) + (_S28 * v28)) + (_S31 * v30);
          v82 = ((v32 * _S30) + (_S28 * v31)) + (_S31 * v33);
          v83 = ((v35 * _S30) + (_S28 * v34)) + (_S31 * v36);
          LOWORD(_S31) = *(v38 + 2 * llroundf(fminf(fmaxf(v82, 0.0), 8191.0)));
          v5 = fminf(fmaxf(v83, 0.0), 8191.0);
          LOWORD(v5) = *(v38 + 2 * llroundf(v5));
          *v50 = *(v38 + 2 * llroundf(fminf(fmaxf(v81, 0.0), 8191.0)));
          v50[1] = LOWORD(_S31);
          v50[2] = LOWORD(v5);
          if (v51)
          {
            *&v5 = _H29;
          }

          else
          {
            LOWORD(v5) = COERCE_UNSIGNED_INT(1.0);
          }

          v50[3] = LOWORD(v5);
          v50 += 4;
          --v48;
        }

        while (v48);
      }

      v47 += v15;
      v46 += v16;
      v43 += v17;
      v41 += v18;
      ++v10;
    }

    while (v10 != v9);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_444vf_rgb_RGhA_neon_fp16(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v47 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v42 = a2[1];
  v43 = v16;
  v18 = *a6;
  v17 = a6[1];
  v44 = a2[2];
  v45 = v18;
  v41 = v17;
  v46 = a6[2];
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
    v19 = &v39 - v21;
    bzero(&v39 - v21, v22);
  }

  v23 = a9;
  v24 = vbslq_s8(vcgtq_s64(vaddq_s64(v44, v42), v43), vsubq_s64(v43, v44), v42);
  v25 = vbslq_s8(vcgtq_s64(vaddq_s64(v46, v41), v45), vsubq_s64(v45, v46), v41);
  v26 = vbslq_s8(vcgtq_s64(v25, v24), v24, v25);
  v27 = v44.i64[1];
  v28 = vaddq_s64((*&v44 + __PAIR128__(-1, 0)), v26);
  if ((v28.i64[0] + *a4 * v28.i64[1] > *a5 || *(a3 + 8) && (a4[1] * v28.i64[1] + 2 * v28.i64[0]) > a5[1] || *(a3 + 16) && v28.i64[0] + a4[2] * v28.i64[1] > a5[2] || (v29.i64[0] = v26.i64[0], v29.i64[1] = -1, v30 = vaddq_s64(v46, v29), (*a8 * (v30.i64[1] + v26.i64[1]) + 8 * v30.i64[0]) > *a9)) && (v40 = v44.i64[1], v41 = v26, v42.i64[0] = a9, fig_log_get_emitter(), v31 = FigSignalErrorAtGM(), v23 = v42.i64[0], v26 = v41, v27 = v40, v31))
  {
    v20 = v31;
  }

  else
  {
    *v19 = v15;
    v32 = v44.i64[0];
    *(v19 + 4) = v43;
    *(v19 + 20) = v26;
    *(v19 + 36) = v32;
    *(v19 + 44) = v27;
    v33 = v46;
    *(v19 + 5) = v45;
    *(v19 + 6) = v26;
    *(v19 + 7) = v33;
    *(v19 + 7) = a3;
    *(v19 + 8) = a4;
    *(v19 + 9) = a5;
    *(v19 + 16) = a7;
    *(v19 + 17) = a8;
    *(v19 + 18) = v23;
    *(v19 + 19) = a1;
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_444vf_rgb_RGhA_neon_fp16_GCD);
    if (!v15)
    {
      return 0;
    }

    v35 = (v19 + 160);
    v36 = v15;
    while (1)
    {
      v37 = *v35++;
      v20 = v37;
      if (v37)
      {
        break;
      }

      if (!--v36)
      {
        v20 = 0;
        break;
      }
    }
  }

  if (v15 == 255)
  {
    goto LABEL_19;
  }

  return v20;
}

unsigned __int8 *vt_Copy_444vf_rgb_RGhA_neon_fp16_GCD(unsigned __int8 *result, uint64_t a2)
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
    v13 = *(result + 7);
    v14 = *(result + 8);
    v15 = *v14;
    v16 = v14[1];
    v17 = v14[2];
    v18 = **(result + 17);
    v19 = *(v12 + 140);
    v20 = *(v12 + 142);
    v21 = 1.0 / *(v12 + 128);
    v22 = v19;
    v23 = v20;
    _S2 = v21 * *v12;
    _S3 = v21 * *(v12 + 8);
    _S4 = v21 * *(v12 + 16);
    _S5 = v21 * *(v12 + 20);
    _S6 = v21 * *(v12 + 28);
    __asm { FCVT            H7, S2 }

    *v2.i16 = v19;
    v34 = vdupq_lane_s16(v2, 0);
    *v3.i16 = -v20;
    v35 = vdupq_lane_s16(v3, 0);
    __asm
    {
      FCVT            H8, S6
      FCVT            H9, S4
      FCVT            H10, S5
      FCVT            H11, S3
    }

    v40 = v13[2];
    v41 = *(result + 28) * a2 / v6 + *(result + 44);
    v42 = *(result + 36);
    v43 = (v40 + v17 * v41 + v42);
    v45 = *v13;
    v44 = v13[1];
    v46 = v44 + v16 * v41 + v42;
    v47 = **(result + 16) + v18 * (v8 + *(result + 15)) + 8 * *(result + 14);
    if (!v40)
    {
      v43 = 0;
    }

    if (!v44)
    {
      v46 = 0;
    }

    v48 = (v45 + v15 * v41 + v42);
    v49 = vdupq_n_s16(0x1C04u);
    while (1)
    {
      if (v11 < 8)
      {
        v71 = 0;
        v54 = v46;
        v53 = v43;
        v52 = v47;
        v51 = v48;
      }

      else
      {
        v50 = 0;
        v51 = v48;
        v52 = v47;
        v53 = v43;
        v54 = v46;
        do
        {
          if (v54)
          {
            v82 = vld2_s8(v54);
            v54 += 16;
            *v55.i8 = vzip1_s8(v82.val[0], 0);
            v55.u64[1] = vzip2_s8(v82.val[0], 0);
            *v56.i8 = vzip1_s8(v82.val[1], 0);
            v56.u64[1] = vzip2_s8(v82.val[1], 0);
            v57 = vaddq_f16(v35, vcvtq_f16_u16(v55));
            v58 = vaddq_f16(v35, vcvtq_f16_u16(v56));
            v59 = vmulq_n_f16(v58, _H11);
            v60 = vmlaq_n_f16(vmulq_n_f16(v57, _H9), v58, _H10);
            v61 = vmulq_n_f16(v57, _H8);
          }

          else
          {
            v61 = 0uLL;
            v60 = 0u;
            v59 = 0u;
          }

          v62 = *v51++;
          v63 = v62;
          if (v53)
          {
            v64 = *v53++;
            *v65.i8 = vzip1_s8(v64, 0);
            v65.u64[1] = vzip2_s8(v64, 0);
            v66 = vmulq_f16(vcvtq_f16_u16(v65), v49);
          }

          else
          {
            v66.i64[0] = 0x3C003C003C003C00;
            v66.i64[1] = 0x3C003C003C003C00;
          }

          *v67.i8 = vzip1_s8(v63, 0);
          v67.u64[1] = vzip2_s8(v63, 0);
          v68 = vsubq_f16(vcvtq_f16_u16(v67), v34);
          _Q21 = vmlaq_n_f16(v59, v68, _H7);
          _Q22 = vmlaq_n_f16(v60, v68, _H7);
          v69 = vmlaq_n_f16(v61, v68, _H7);
          v70 = v66;
          vst4q_s16(v52, *_Q21.i8);
          v52 += 32;
          v50 += 8;
        }

        while (v50 < v11 - 7);
        v71 = v11 & 0x7FFFFFF8;
      }

      _VF = __OFSUB__(v11, v71);
      v72 = v11 - v71;
      if (!((v72 < 0) ^ _VF | (v72 == 0)))
      {
        break;
      }

LABEL_28:
      v48 = (v48 + v15);
      v46 += v16;
      v43 = (v43 + v17);
      v47 += v18;
      if (++v10 == v9)
      {
        goto LABEL_29;
      }
    }

    while (1)
    {
      if (v54)
      {
        _Q21.i8[0] = *v54;
        v73 = _Q21.u32[0] - v23;
        _Q22.i8[0] = *(v54 + 1);
        v74 = _Q22.u32[0] - v23;
        v54 += 2;
        v75 = _S3 * v74;
        *_Q22.i32 = (_S5 * v74) + (v73 * _S4);
        *_Q21.i32 = _S6 * v73;
        if (!v53)
        {
          goto LABEL_23;
        }
      }

      else
      {
        _Q21.i32[0] = 0;
        _Q22.i32[0] = 0;
        v75 = 0.0;
        if (!v53)
        {
LABEL_23:
          LOWORD(_H24) = 0;
          goto LABEL_24;
        }
      }

      v76 = v53->u8[0];
      v53 = (v53 + 1);
      _S24 = v76 * 0.0039216;
      __asm { FCVT            H24, S24 }

LABEL_24:
      v79 = v51->u8[0];
      v51 = (v51 + 1);
      v80 = _S2 * (v79 - v22);
      _S23 = v75 + v80;
      *_Q22.i32 = *_Q22.i32 + v80;
      *_Q21.i32 = *_Q21.i32 + v80;
      __asm { FCVT            H23, S23 }

      *v52 = LOWORD(_S23);
      __asm { FCVT            H22, S22 }

      v52[1] = _Q22.i16[0];
      __asm { FCVT            H21, S21 }

      v52[2] = _Q21.i16[0];
      if (v53)
      {
        *_Q21.i16 = _H24;
      }

      else
      {
        _Q21.i16[0] = COERCE_UNSIGNED_INT(1.0);
      }

      v52[3] = _Q21.i16[0];
      v52 += 4;
      if (!--v72)
      {
        goto LABEL_28;
      }
    }
  }

LABEL_29:
  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_444vf_rgb_RGhA(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v47 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v42 = a2[1];
  v43 = v16;
  v18 = *a6;
  v17 = a6[1];
  v44 = a2[2];
  v45 = v18;
  v41 = v17;
  v46 = a6[2];
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
    v19 = &v39 - v21;
    bzero(&v39 - v21, v22);
  }

  v23 = a9;
  v24 = vbslq_s8(vcgtq_s64(vaddq_s64(v44, v42), v43), vsubq_s64(v43, v44), v42);
  v25 = vbslq_s8(vcgtq_s64(vaddq_s64(v46, v41), v45), vsubq_s64(v45, v46), v41);
  v26 = vbslq_s8(vcgtq_s64(v25, v24), v24, v25);
  v27 = v44.i64[1];
  v28 = vaddq_s64((*&v44 + __PAIR128__(-1, 0)), v26);
  if ((v28.i64[0] + *a4 * v28.i64[1] > *a5 || *(a3 + 8) && (a4[1] * v28.i64[1] + 2 * v28.i64[0]) > a5[1] || *(a3 + 16) && v28.i64[0] + a4[2] * v28.i64[1] > a5[2] || (v29.i64[0] = v26.i64[0], v29.i64[1] = -1, v30 = vaddq_s64(v46, v29), (*a8 * (v30.i64[1] + v26.i64[1]) + 8 * v30.i64[0]) > *a9)) && (v40 = v44.i64[1], v41 = v26, v42.i64[0] = a9, fig_log_get_emitter(), v31 = FigSignalErrorAtGM(), v23 = v42.i64[0], v26 = v41, v27 = v40, v31))
  {
    v20 = v31;
  }

  else
  {
    *v19 = v15;
    v32 = v44.i64[0];
    *(v19 + 4) = v43;
    *(v19 + 20) = v26;
    *(v19 + 36) = v32;
    *(v19 + 44) = v27;
    v33 = v46;
    *(v19 + 5) = v45;
    *(v19 + 6) = v26;
    *(v19 + 7) = v33;
    *(v19 + 7) = a3;
    *(v19 + 8) = a4;
    *(v19 + 9) = a5;
    *(v19 + 16) = a7;
    *(v19 + 17) = a8;
    *(v19 + 18) = v23;
    *(v19 + 19) = a1;
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_444vf_rgb_RGhA_GCD);
    if (!v15)
    {
      return 0;
    }

    v35 = (v19 + 160);
    v36 = v15;
    while (1)
    {
      v37 = *v35++;
      v20 = v37;
      if (v37)
      {
        break;
      }

      if (!--v36)
      {
        v20 = 0;
        break;
      }
    }
  }

  if (v15 == 255)
  {
    goto LABEL_19;
  }

  return v20;
}

unsigned __int8 *vt_Copy_444vf_rgb_RGhA_GCD(unsigned __int8 *result, uint64_t a2)
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
    v11 = *(result + 7);
    v12 = *(result + 8);
    v13 = *v12;
    v14 = v12[1];
    v15 = v12[2];
    v16 = **(result + 17);
    *&v17 = *(v10 + 128);
    v18 = 1.0;
    v19 = 1.0 / *&v17;
    LOWORD(v17) = *(v10 + 140);
    v20 = v17;
    LOWORD(v18) = *(v10 + 142);
    v21 = v18;
    v22 = v19 * *v10;
    v23 = v19 * *(v10 + 8);
    v24 = v19 * *(v10 + 16);
    v25 = v19 * *(v10 + 20);
    v26 = v19 * *(v10 + 28);
    v27 = *(result + 28) * a2 / v4 + *(result + 44);
    v28 = *(result + 36);
    v29 = **(result + 16) + v16 * (v6 + *(result + 15)) + 8 * *(result + 14);
    v30 = v11[2];
    if (v30)
    {
      v31 = (v30 + v27 * v15 + v28);
    }

    else
    {
      v31 = 0;
    }

    v32 = *v11;
    v33 = *(*(result + 7) + 8);
    _ZF = v33 == 0;
    v35 = (v33 + v27 * v14 + v28);
    if (_ZF)
    {
      v35 = 0;
    }

    v36 = (v32 + v27 * v13 + v28);
    while (v9 < 1)
    {
LABEL_19:
      v36 += v13;
      v35 += v14;
      v31 += v15;
      v29 += v16;
      if (++v8 == v7)
      {
        goto LABEL_20;
      }
    }

    v37 = v9;
    v38 = v36;
    v39 = v29;
    v40 = v31;
    v41 = v35;
    while (1)
    {
      if (v41)
      {
        LOBYTE(_S17) = *v41;
        v42 = LODWORD(_S17) - v21;
        LOBYTE(_S18) = v41[1];
        v43 = LODWORD(_S18) - v21;
        v41 += 2;
        v44 = v23 * v43;
        v45 = (v25 * v43) + (v42 * v24);
        v46 = v26 * v42;
        if (!v40)
        {
          goto LABEL_14;
        }
      }

      else
      {
        v46 = 0.0;
        v45 = 0.0;
        v44 = 0.0;
        if (!v40)
        {
LABEL_14:
          LOWORD(_H20) = 0;
          goto LABEL_15;
        }
      }

      v47 = *v40++;
      _S20 = v47 * 0.0039216;
      __asm { FCVT            H20, S20 }

LABEL_15:
      v53 = *v38++;
      v54 = v22 * (v53 - v20);
      _S19 = v44 + v54;
      _S18 = v45 + v54;
      _S17 = v46 + v54;
      __asm { FCVT            H19, S19 }

      *v39 = LOWORD(_S19);
      __asm { FCVT            H18, S18 }

      v39[1] = LOWORD(_S18);
      __asm { FCVT            H17, S17 }

      v39[2] = LOWORD(_S17);
      if (v40)
      {
        *&_S17 = _H20;
      }

      else
      {
        LOWORD(_S17) = COERCE_UNSIGNED_INT(1.0);
      }

      v39[3] = LOWORD(_S17);
      v39 += 4;
      if (!--v37)
      {
        goto LABEL_19;
      }
    }
  }

LABEL_20:
  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_444vf_TRC_Tone_Mat_TRC_RGfA_neon_fp16(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v47 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v42 = a2[1];
  v43 = v16;
  v18 = *a6;
  v17 = a6[1];
  v44 = a2[2];
  v45 = v18;
  v41 = v17;
  v46 = a6[2];
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
    v19 = &v39 - v21;
    bzero(&v39 - v21, v22);
  }

  v23 = a9;
  v24 = vbslq_s8(vcgtq_s64(vaddq_s64(v44, v42), v43), vsubq_s64(v43, v44), v42);
  v25 = vbslq_s8(vcgtq_s64(vaddq_s64(v46, v41), v45), vsubq_s64(v45, v46), v41);
  v26 = vbslq_s8(vcgtq_s64(v25, v24), v24, v25);
  v27 = v44.i64[1];
  v28 = vaddq_s64((*&v44 + __PAIR128__(-1, 0)), v26);
  if ((v28.i64[0] + *a4 * v28.i64[1] > *a5 || *(a3 + 8) && (a4[1] * v28.i64[1] + 2 * v28.i64[0]) > a5[1] || *(a3 + 16) && v28.i64[0] + a4[2] * v28.i64[1] > a5[2] || (v29.i64[0] = v26.i64[0], v29.i64[1] = -1, v30 = vaddq_s64(v46, v29), (*a8 * (v30.i64[1] + v26.i64[1]) + 16 * v30.i64[0]) > *a9)) && (v40 = v44.i64[1], v41 = v26, v42.i64[0] = a9, fig_log_get_emitter(), v31 = FigSignalErrorAtGM(), v23 = v42.i64[0], v26 = v41, v27 = v40, v31))
  {
    v20 = v31;
  }

  else
  {
    *v19 = v15;
    v32 = v44.i64[0];
    *(v19 + 4) = v43;
    *(v19 + 20) = v26;
    *(v19 + 36) = v32;
    *(v19 + 44) = v27;
    v33 = v46;
    *(v19 + 5) = v45;
    *(v19 + 6) = v26;
    *(v19 + 7) = v33;
    *(v19 + 7) = a3;
    *(v19 + 8) = a4;
    *(v19 + 9) = a5;
    *(v19 + 16) = a7;
    *(v19 + 17) = a8;
    *(v19 + 18) = v23;
    *(v19 + 19) = a1;
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_444vf_TRC_Tone_Mat_TRC_RGfA_neon_fp16_GCD);
    if (!v15)
    {
      return 0;
    }

    v35 = (v19 + 160);
    v36 = v15;
    while (1)
    {
      v37 = *v35++;
      v20 = v37;
      if (v37)
      {
        break;
      }

      if (!--v36)
      {
        v20 = 0;
        break;
      }
    }
  }

  if (v15 == 255)
  {
    goto LABEL_19;
  }

  return v20;
}

unsigned __int8 *vt_Copy_444vf_TRC_Tone_Mat_TRC_RGfA_neon_fp16_GCD(unsigned __int8 *result, uint64_t a2, double _D0)
{
  v3 = *result;
  v158 = result;
  v4 = *(result + 13);
  v5 = v4 * a2 / v3;
  v159 = (v4 + v4 * a2) / v3 - v5;
  if (v159 >= 1)
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
    v15 = *(v8 + 140);
    v16 = *(v8 + 142);
    _D6.i32[0] = *(v8 + 72);
    _Q7.i32[0] = *(v8 + 76);
    _S16 = *(v8 + 80);
    _S23 = *(v8 + 84);
    _S24 = *(v8 + 88);
    _S25 = *(v8 + 92);
    _S26 = *(v8 + 104);
    v24 = v8 + 16548;
    v25 = 8191.0 / *(v8 + 128);
    v178 = v15;
    v26 = v16;
    *&_D0 = v25 * *v8;
    _S1 = v25 * *(v8 + 8);
    _S2 = v25 * *(v8 + 16);
    _S3 = v25 * *(v8 + 20);
    _S4 = v25 * *(v8 + 28);
    v31 = v8 + 164;
    v32 = v8 + 32932;
    v177 = *&_D0;
    __asm { FCVT            H8, S0 }

    *&_D0 = v15;
    v38 = vdupq_lane_s16(*&_D0, 0);
    *&_D0 = -v16;
    v39 = vdupq_lane_s16(*&_D0, 0);
    v164 = _S4;
    v165 = _S3;
    __asm { FCVT            H0, S4 }

    v163 = _H0;
    v166 = _S2;
    v167 = _S1;
    __asm { FCVT            H0, S2 }

    v162 = _H0;
    __asm { FCVT            H0, S3 }

    v161 = _H0;
    __asm { FCVT            H0, S1 }

    v160 = _H0;
    v182 = *(v8 + 108);
    __asm { FCVT            H0, S17 }

    v175 = _H0;
    v176 = v38;
    v181 = *(v8 + 112);
    __asm { FCVT            H0, S18 }

    v174 = _H0;
    v180 = *(v8 + 116);
    __asm { FCVT            H0, S20 }

    v173 = _H0;
    v179 = *(v8 + 120);
    __asm { FCVT            H0, S22 }

    v172 = _H0;
    v183 = *_D6.i32;
    __asm { FCVT            H0, S6 }

    v171 = _H0;
    v49 = v9[2];
    v50 = *(result + 28) * a2 / v3 + *(result + 44);
    v51 = *(result + 36);
    v52 = (v49 + v13 * v50 + v51);
    v54 = *v9;
    v53 = v9[1];
    v55 = **(result + 16) + v14 * (v5 + *(result + 15)) + 16 * *(result + 14);
    v56 = v53 + v12 * v50 + v51;
    if (!v49)
    {
      v52 = 0;
    }

    if (!v53)
    {
      v56 = 0;
    }

    v57 = (v54 + v11 * v50 + v51);
    v58 = *(v8 + 76);
    __asm { FCVT            H0, S7 }

    v170 = _H0;
    v60 = *(v8 + 80);
    __asm { FCVT            H0, S16 }

    v169 = _H0;
    v62 = *(v8 + 84);
    __asm { FCVT            H0, S23 }

    v168 = _H0;
    v64 = *(v8 + 88);
    __asm
    {
      FCVT            H1, S24
      FCVT            H2, S25
    }

    _S30 = *(v8 + 96);
    __asm { FCVT            H3, S3 }

    _S0 = *(v8 + 100);
    __asm { FCVT            H4, S4 }

    v71 = *(v8 + 104);
    __asm { FCVT            H5, S26 }

    v73.i64[0] = 0x9000900090009000;
    v73.i64[1] = 0x9000900090009000;
    do
    {
      if (v7 < 8)
      {
        v122 = 0;
        v78 = v56;
        v77 = v52;
        v76 = v55;
        v75 = v57;
      }

      else
      {
        v74 = 0;
        v75 = v57;
        v76 = v55;
        v77 = v52;
        v78 = v56;
        do
        {
          if (v78)
          {
            v184 = vld2_s8(v78);
            v78 += 16;
            *v79.i8 = vzip1_s8(v184.val[0], 0);
            v79.u64[1] = vzip2_s8(v184.val[0], 0);
            *v80.i8 = vzip1_s8(v184.val[1], 0);
            v80.u64[1] = vzip2_s8(v184.val[1], 0);
            *(&v184 + 8) = vaddq_f16(v39, vcvtq_f16_u16(v79));
            v81 = vaddq_f16(v39, vcvtq_f16_u16(v80));
            v82 = vmulq_n_f16(v81, v160);
            v83 = vmlaq_n_f16(vmulq_n_f16(*(&v184 + 8), v162), v81, v161);
            v84 = vmulq_n_f16(*(&v184 + 8), v163);
          }

          else
          {
            v84 = 0uLL;
            v83 = 0uLL;
            v82 = 0uLL;
          }

          v85 = *v75++;
          v86 = v85;
          if (v77)
          {
            v87 = *v77++;
            v88 = v87;
          }

          else
          {
            v88 = 0;
          }

          *v89.i8 = vzip1_s8(v86, 0);
          v89.u64[1] = vzip2_s8(v86, 0);
          v90 = vsubq_f16(vcvtq_f16_u16(v89), v176);
          v91 = vmlaq_n_f16(v83, v90, _H8);
          v92 = vmlaq_n_f16(v84, v90, _H8);
          v93 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(v82, v90, _H8), 0), v73));
          v94.i16[0] = *(v31 + 2 * v93.u16[0]);
          v94.i16[1] = *(v31 + 2 * v93.u16[1]);
          v94.i16[2] = *(v31 + 2 * v93.u16[2]);
          v94.i16[3] = *(v31 + 2 * v93.u16[3]);
          v94.i16[4] = *(v31 + 2 * v93.u16[4]);
          v94.i16[5] = *(v31 + 2 * v93.u16[5]);
          v94.i16[6] = *(v31 + 2 * v93.u16[6]);
          v94.i16[7] = *(v31 + 2 * v93.u16[7]);
          v95 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v91, 0), v73));
          v91.i16[0] = *(v31 + 2 * v95.u16[0]);
          v91.i16[1] = *(v31 + 2 * v95.u16[1]);
          v91.i16[2] = *(v31 + 2 * v95.u16[2]);
          v91.i16[3] = *(v31 + 2 * v95.u16[3]);
          v91.i16[4] = *(v31 + 2 * v95.u16[4]);
          v91.i16[5] = *(v31 + 2 * v95.u16[5]);
          v91.i16[6] = *(v31 + 2 * v95.u16[6]);
          v91.i16[7] = *(v31 + 2 * v95.u16[7]);
          v96 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v92, 0), v73));
          v92.i16[0] = *(v31 + 2 * v96.u16[0]);
          v92.i16[1] = *(v31 + 2 * v96.u16[1]);
          v92.i16[2] = *(v31 + 2 * v96.u16[2]);
          v92.i16[3] = *(v31 + 2 * v96.u16[3]);
          v92.i16[4] = *(v31 + 2 * v96.u16[4]);
          v92.i16[5] = *(v31 + 2 * v96.u16[5]);
          v92.i16[6] = *(v31 + 2 * v96.u16[6]);
          v92.i16[7] = *(v31 + 2 * v96.u16[7]);
          v97 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v94, v175), v91, v174), v92, v173), vmaxq_f16(vmaxq_f16(v94, v91), v92), v172), 0), v73));
          v98.i16[0] = *(v24 + 2 * v97.u16[0]);
          v98.i16[1] = *(v24 + 2 * v97.u16[1]);
          v98.i16[2] = *(v24 + 2 * v97.u16[2]);
          v98.i16[3] = *(v24 + 2 * v97.u16[3]);
          v98.i16[4] = *(v24 + 2 * v97.u16[4]);
          v98.i16[5] = *(v24 + 2 * v97.u16[5]);
          v98.i16[6] = *(v24 + 2 * v97.u16[6]);
          v98.i16[7] = *(v24 + 2 * v97.u16[7]);
          v99 = vmulq_f16(v94, v98);
          v100 = vmulq_f16(v91, v98);
          v101 = vmulq_f16(v92, v98);
          v102 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v99, v171), v100, v170), v101, v169);
          v103 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v99, v168), v100, _H1), v101, _H2);
          _Q7 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v101, _H5), v100, _H4), v99, _H3);
          v104 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v102, 0), v73));
          v105.i16[0] = *(v32 + 2 * v104.u16[0]);
          v105.i16[1] = *(v32 + 2 * v104.u16[1]);
          v105.i16[2] = *(v32 + 2 * v104.u16[2]);
          v105.i16[3] = *(v32 + 2 * v104.u16[3]);
          v105.i16[4] = *(v32 + 2 * v104.u16[4]);
          v105.i16[5] = *(v32 + 2 * v104.u16[5]);
          v105.i16[6] = *(v32 + 2 * v104.u16[6]);
          v105.i16[7] = *(v32 + 2 * v104.u16[7]);
          v106 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v103, 0), v73));
          v107.i16[0] = *(v32 + 2 * v106.u16[0]);
          v107.i16[1] = *(v32 + 2 * v106.u16[1]);
          v107.i16[2] = *(v32 + 2 * v106.u16[2]);
          v107.i16[3] = *(v32 + 2 * v106.u16[3]);
          v107.i16[4] = *(v32 + 2 * v106.u16[4]);
          v107.i16[5] = *(v32 + 2 * v106.u16[5]);
          v107.i16[6] = *(v32 + 2 * v106.u16[6]);
          v107.i16[7] = *(v32 + 2 * v106.u16[7]);
          v108 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(_Q7, 0), v73));
          _Q7.i16[0] = *(v32 + 2 * v108.u16[0]);
          result = (v32 + 2 * v108.u16[2]);
          v109 = (v32 + 2 * v108.u16[7]);
          _Q7.i16[1] = *(v32 + 2 * v108.u16[1]);
          _Q7.i16[2] = *result;
          _Q7.i16[3] = *(v32 + 2 * v108.u16[3]);
          _Q7.i16[4] = *(v32 + 2 * v108.u16[4]);
          _Q7.i16[5] = *(v32 + 2 * v108.u16[5]);
          _Q7.i16[6] = *(v32 + 2 * v108.u16[6]);
          if (v77)
          {
            *v110.i8 = vzip1_s8(v88, 0);
            v110.u64[1] = vzip2_s8(v88, 0);
            v111 = vmulq_f16(vcvtq_f16_u16(v110), vdupq_n_s16(0x1C04u));
            _Q12 = vcvtq_f32_f16(*v111.i8);
            v113 = vcvtq_f32_f16(*&vextq_s8(v111, v111, 8uLL));
          }

          else
          {
            __asm { FMOV            V12.4S, #1.0 }

            v113 = _Q12;
          }

          v114 = vcvtq_f32_f16(*v105.i8);
          v115 = vcvtq_f32_f16(*v107.i8);
          _Q7.i16[7] = *v109;
          v116 = vcvtq_f32_f16(*_Q7.i8);
          v117 = vcvtq_f32_f16(*&vextq_s8(v105, v105, 8uLL));
          v118 = vcvtq_f32_f16(*&vextq_s8(v107, v107, 8uLL));
          _D6 = vextq_s8(_Q7, _Q7, 8uLL).u64[0];
          v119 = vcvtq_f32_f16(_D6);
          v120 = v76 + 128;
          vst4q_f32(v76, *(&_Q12 - 3));
          v121 = (v76 + 64);
          vst4q_f32(v121, *(&v113 - 3));
          v76 = v120;
          v74 += 8;
        }

        while (v74 < v7 - 7);
        v122 = v7 & 0xFFFFFFF8;
      }

      _VF = __OFSUB__(v7, v122);
      v123 = v7 - v122;
      if (!((v123 < 0) ^ _VF | (v123 == 0)))
      {
        do
        {
          if (v78)
          {
            _D6.i8[0] = *v78;
            v124 = _D6.u32[0] - v26;
            _Q7.i8[0] = *(v78 + 1);
            v125 = _Q7.u32[0] - v26;
            v78 += 2;
            v126 = v167 * v125;
            v127 = (v165 * v125) + (v124 * v166);
            *_D6.i32 = v164 * v124;
          }

          else
          {
            _D6.i32[0] = 0;
            v127 = 0.0;
            v126 = 0.0;
          }

          v128 = v75->u8[0];
          v75 = (v75 + 1);
          v129 = v177 * (v128 - v178);
          v130 = v126 + v129;
          v131 = (v126 + v129) <= 8191.0;
          v132 = 8191.0;
          if (v131)
          {
            v132 = v130;
            if (v130 < 0.0)
            {
              v132 = 0.0;
            }
          }

          v133 = v127 + v129;
          v134 = 8191.0;
          if (v133 <= 8191.0)
          {
            v134 = v133;
            if (v133 < 0.0)
            {
              v134 = 0.0;
            }
          }

          v135 = *_D6.i32 + v129;
          v136 = 8191.0;
          if (v135 <= 8191.0)
          {
            v136 = v135;
            if (v135 < 0.0)
            {
              v136 = 0.0;
            }
          }

          if (v77)
          {
            v137 = v77->u8[0];
            v77 = (v77 + 1);
            *_D6.i32 = v137 * 0.0039216;
          }

          else
          {
            _D6.i32[0] = 0;
          }

          _H16 = *(v31 + 2 * llroundf(fminf(fmaxf(v132, 0.0), 8191.0)));
          __asm { FCVT            S16, H16 }

          _H26 = *(v31 + 2 * llroundf(fminf(fmaxf(v134, 0.0), 8191.0)));
          __asm { FCVT            S26, H26 }

          _H31 = *(v31 + 2 * llroundf(fminf(fmaxf(v136, 0.0), 8191.0)));
          __asm { FCVT            S31, H31 }

          v144 = (((v181 * _S26) + (v182 * _S16)) + (v180 * _S31)) + (v179 * fmaxf(_S16, fmaxf(_S26, _S31)));
          v145 = 8191.0;
          if (v144 <= 8191.0)
          {
            v145 = v144;
            if (v144 < 0.0)
            {
              v145 = 0.0;
            }
          }

          _H9 = *(v24 + 2 * llroundf(v145));
          __asm { FCVT            S9, H9 }

          v148 = _S16 * _S9;
          _S26 = _S26 * _S9;
          _S31 = _S31 * _S9;
          v151 = ((v58 * _S26) + (v148 * v183)) + (_S31 * v60);
          v152 = ((v64 * _S26) + (v148 * v62)) + (_S31 * _S25);
          v153 = (_S0 * _S26) + (v148 * _S30);
          LOWORD(_S26) = *(v32 + 2 * llroundf(fminf(fmaxf(v151, 0.0), 8191.0)));
          _S16 = v153 + (_S31 * v71);
          __asm { FCVT            S26, H26 }

          LOWORD(_S31) = *(v32 + 2 * llroundf(fminf(fmaxf(v152, 0.0), 8191.0)));
          __asm { FCVT            S7, H31 }

          LOWORD(_S16) = *(v32 + 2 * llroundf(fminf(fmaxf(_S16, 0.0), 8191.0)));
          __asm { FCVT            S16, H16 }

          *v76 = _S26;
          *(v76 + 4) = _S7;
          _Q7.i32[0] = 1.0;
          if (!v77)
          {
            *_D6.i32 = 1.0;
          }

          *(v76 + 8) = _S16;
          *(v76 + 12) = _D6.i32[0];
          v76 += 16;
          --v123;
        }

        while (v123);
      }

      v57 = (v57 + v11);
      v56 += v12;
      v52 = (v52 + v13);
      v55 += v14;
      ++v6;
    }

    while (v6 != v159);
  }

  *&v158[4 * a2 + 160] = 0;
  return result;
}