void *vt_Copy_xf420_TRC_Mat_TRC_420vf_GCD(void *result, uint64_t a2, double a3, double a4, float a5, float a6)
{
  v9 = 2 * *result;
  v182 = *(result + 44) + 2 * (*(result + 28) * a2 / v9);
  v183 = *(result + 36);
  v10 = result[14];
  v11 = result[12];
  v12 = result[13];
  v13 = v12 * a2 / v9;
  v14 = result[15] + 2 * v13;
  v15 = 2 * ((v12 + v12 * a2) / v9 - v13);
  v17 = result[7];
  v16 = result[8];
  v19 = result[16];
  v18 = result[17];
  v20 = v16[2];
  v184 = v17[2];
  v21 = v18[2];
  v22 = v19[2];
  v23 = (v22 + v21 * v14 + v10);
  if (v15 >= 1)
  {
    v24 = 0;
    v25 = result[19];
    v26 = v11 & 0xFFFFFFFE;
    v27 = *v16;
    v28 = v16[1];
    v29 = *v18;
    v30 = v18[1];
    LOWORD(a5) = *(v25 + 140);
    LOWORD(a6) = *(v25 + 142);
    LOWORD(v6) = *(v25 + 144);
    LOWORD(v7) = *(v25 + 146);
    LOWORD(v8) = *(v25 + 148);
    v31 = 8191.0 / *(v25 + 128);
    v32 = LODWORD(a5);
    v33 = LODWORD(a6);
    v34 = v31 * *v25;
    v200 = v31 * *(v25 + 16);
    v201 = v31 * *(v25 + 8);
    v35 = v31 * *(v25 + 20);
    *&v36 = v31 * *(v25 + 28);
    v198 = *&v36;
    v199 = v35;
    v37 = v6;
    v38 = v7;
    v39 = v8;
    LOWORD(v36) = *(v25 + 150);
    v40 = v36;
    v203 = v40;
    LOWORD(v40) = *(v25 + 152);
    v194 = *(v25 + 40);
    v195 = *(v25 + 36);
    v193 = *(v25 + 44);
    v191 = *(v25 + 52) * 0.25;
    v192 = *(v25 + 48) * 0.25;
    v189 = *(v25 + 60) * 0.25;
    v190 = *(v25 + 56) * 0.25;
    v187 = *(v25 + 72);
    v188 = *(v25 + 64) * 0.25;
    v186 = *(v25 + 68) * 0.25;
    v42 = *(v25 + 76);
    v41 = *(v25 + 80);
    v43 = *(v25 + 84);
    v44 = *(v25 + 88);
    v45 = *(v25 + 92);
    v46 = *(v25 + 96);
    v47 = *(v25 + 100);
    v48 = *(v25 + 104);
    v49 = v25 + 164;
    v50 = v25 + 16548;
    v51 = v19[1];
    v52 = (*v19 + v29 * v14 + v10);
    v53 = *(v25 + 124);
    v54 = v17[1];
    v55 = (*v17 + v27 * v182 + 2 * v183);
    if (v53 >= 0x11)
    {
      v56 = 0;
    }

    else
    {
      v56 = 16 - v53;
    }

    v57 = v51 + v30 * (v14 / 2) + v10;
    v58 = v54 + v28 * (v182 / 2) + 2 * v183;
    v59 = v56;
    v202 = v34;
    v196 = LODWORD(v40);
    v197 = v38;
    do
    {
      v60 = &v55[v27];
      v61 = &v52[v29];
      if (v26 >= 1)
      {
        v62 = 0;
        v63 = &v55[v27];
        v64 = &v52[v29];
        do
        {
          v65 = (v58 + 2 * v62);
          v66 = (v65[1] >> v59) - v33;
          v67 = v201 * v66;
          v68 = v34 * ((*v55 >> v59) - v32);
          v69 = (v201 * v66) + v68;
          v70 = 8191.0;
          if (v69 <= 8191.0)
          {
            v70 = (v201 * v66) + v68;
            if (v69 < 0.0)
            {
              v70 = 0.0;
            }
          }

          v71 = (*v65 >> v59) - v33;
          v72 = (v199 * v66) + (v71 * v200);
          v73 = 8191.0;
          if ((v68 + v72) <= 8191.0)
          {
            v73 = v68 + v72;
            if ((v68 + v72) < 0.0)
            {
              v73 = 0.0;
            }
          }

          v74 = v198 * v71;
          v75 = (v198 * v71) + v68;
          v76 = 8191.0;
          if (v75 <= 8191.0)
          {
            v76 = v75;
            if (v75 < 0.0)
            {
              v76 = 0.0;
            }
          }

          v77 = v34 * ((*(v55 + 1) >> v59) - v32);
          v78 = 8191.0;
          if ((v67 + v77) <= 8191.0)
          {
            v78 = v67 + v77;
            if ((v67 + v77) < 0.0)
            {
              v78 = 0.0;
            }
          }

          v79 = 8191.0;
          if ((v72 + v77) <= 8191.0)
          {
            v79 = v72 + v77;
            if ((v72 + v77) < 0.0)
            {
              v79 = 0.0;
            }
          }

          v80 = v74 + v77;
          v81 = 8191.0;
          if (v80 <= 8191.0)
          {
            v81 = v80;
            if (v80 < 0.0)
            {
              v81 = 0.0;
            }
          }

          v82 = v34 * ((*v63 >> v59) - v32);
          v83 = 8191.0;
          if ((v67 + v82) <= 8191.0)
          {
            v83 = v67 + v82;
            if ((v67 + v82) < 0.0)
            {
              v83 = 0.0;
            }
          }

          v84 = 8191.0;
          if ((v72 + v82) <= 8191.0)
          {
            v84 = v72 + v82;
            if ((v72 + v82) < 0.0)
            {
              v84 = 0.0;
            }
          }

          v85 = v74 + v82;
          v86 = (v74 + v82) <= 8191.0;
          v87 = 8191.0;
          if (v86)
          {
            v87 = v85;
            if (v85 < 0.0)
            {
              v87 = 0.0;
            }
          }

          v88 = v34 * ((*(v63 + 1) >> v59) - v32);
          v89 = v67 + v88;
          v90 = 8191.0;
          if (v89 <= 8191.0)
          {
            v90 = v89;
            if (v89 < 0.0)
            {
              v90 = 0.0;
            }
          }

          v91 = v72 + v88;
          v86 = (v72 + v88) <= 8191.0;
          v92 = 8191.0;
          if (v86)
          {
            v92 = v91;
            if (v91 < 0.0)
            {
              v92 = 0.0;
            }
          }

          v93 = v32;
          v94 = v74 + v88;
          v86 = (v74 + v88) <= 8191.0;
          v95 = 8191.0;
          if (v86)
          {
            v95 = v94;
            if (v94 < 0.0)
            {
              v95 = 0.0;
            }
          }

          _H4 = *(v49 + 2 * llroundf(fminf(fmaxf(v70, 0.0), 8191.0)));
          __asm { FCVT            S4, H4 }

          _H5 = *(v49 + 2 * llroundf(fminf(fmaxf(v73, 0.0), 8191.0)));
          __asm { FCVT            S5, H5 }

          _H6 = *(v49 + 2 * llroundf(fminf(fmaxf(v76, 0.0), 8191.0)));
          __asm { FCVT            S6, H6 }

          _H7 = *(v49 + 2 * llroundf(fminf(fmaxf(v78, 0.0), 8191.0)));
          __asm { FCVT            S7, H7 }

          _H17 = *(v49 + 2 * llroundf(fminf(fmaxf(v79, 0.0), 8191.0)));
          _H24 = *(v49 + 2 * llroundf(fminf(fmaxf(v81, 0.0), 8191.0)));
          __asm
          {
            FCVT            S17, H17
            FCVT            S24, H24
          }

          _H27 = *(v49 + 2 * llroundf(fminf(fmaxf(v83, 0.0), 8191.0)));
          v113 = llroundf(fminf(fmaxf(v84, 0.0), 8191.0));
          __asm { FCVT            S19, H27 }

          _H27 = *(v49 + 2 * v113);
          __asm { FCVT            S27, H27 }

          _H2 = *(v49 + 2 * llroundf(fminf(fmaxf(v87, 0.0), 8191.0)));
          __asm { FCVT            S2, H2 }

          _H1 = *(v49 + 2 * llroundf(fminf(fmaxf(v90, 0.0), 8191.0)));
          __asm { FCVT            S1, H1 }

          _H25 = *(v49 + 2 * llroundf(fminf(fmaxf(v92, 0.0), 8191.0)));
          _H26 = *(v49 + 2 * llroundf(fminf(fmaxf(v95, 0.0), 8191.0)));
          __asm
          {
            FCVT            S25, H25
            FCVT            S26, H26
          }

          v125 = ((v42 * _S5) + (_S4 * v187)) + (_S6 * v41);
          v126 = ((v44 * _S5) + (_S4 * v43)) + (_S6 * v45);
          v127 = ((v47 * _S5) + (_S4 * v46)) + (_S6 * v48);
          _S3 = ((v42 * _S17) + (_S7 * v187)) + (_S24 * v41);
          v129 = ((v44 * _S17) + (_S7 * v43)) + (_S24 * v45);
          _S7 = ((v47 * _S17) + (_S7 * v46)) + (_S24 * v48);
          v131 = ((v42 * _S27) + (_S19 * v187)) + (_S2 * v41);
          v132 = ((v44 * _S27) + (_S19 * v43)) + (_S2 * v45);
          v133 = ((v47 * _S27) + (_S19 * v46)) + (_S2 * v48);
          v134 = ((v42 * _S25) + (_S1 * v187)) + (_S26 * v41);
          v135 = ((v44 * _S25) + (_S1 * v43)) + (_S26 * v45);
          _S1 = ((v47 * _S25) + (_S1 * v46)) + (_S26 * v48);
          LOWORD(_S2) = *(v50 + 2 * llroundf(fminf(fmaxf(v125, 0.0), 8191.0)));
          __asm { FCVT            S6, H2 }

          LOWORD(_S2) = *(v50 + 2 * llroundf(fminf(fmaxf(v126, 0.0), 8191.0)));
          __asm { FCVT            S4, H2 }

          LOWORD(_S2) = *(v50 + 2 * llroundf(fminf(fmaxf(v127, 0.0), 8191.0)));
          __asm { FCVT            S5, H2 }

          LOWORD(_S2) = *(v50 + 2 * llroundf(fminf(fmaxf(_S3, 0.0), 8191.0)));
          __asm { FCVT            S2, H2 }

          LOWORD(_S3) = *(v50 + 2 * llroundf(fminf(fmaxf(v129, 0.0), 8191.0)));
          LOWORD(_S7) = *(v50 + 2 * llroundf(fminf(fmaxf(_S7, 0.0), 8191.0)));
          __asm
          {
            FCVT            S19, H3
            FCVT            S7, H7
          }

          LOWORD(_S3) = *(v50 + 2 * llroundf(fminf(fmaxf(v131, 0.0), 8191.0)));
          __asm { FCVT            S26, H3 }

          LOWORD(_S3) = *(v50 + 2 * llroundf(fminf(fmaxf(v132, 0.0), 8191.0)));
          __asm { FCVT            S25, H3 }

          LOWORD(_S3) = *(v50 + 2 * llroundf(fminf(fmaxf(v133, 0.0), 8191.0)));
          __asm { FCVT            S24, H3 }

          LOWORD(_S3) = *(v50 + 2 * llroundf(fminf(fmaxf(v134, 0.0), 8191.0)));
          __asm { FCVT            S28, H3 }

          LOWORD(_S3) = *(v50 + 2 * llroundf(fminf(fmaxf(v135, 0.0), 8191.0)));
          LOWORD(_S1) = *(v50 + 2 * llroundf(fminf(fmaxf(_S1, 0.0), 8191.0)));
          __asm
          {
            FCVT            S3, H3
            FCVT            S27, H1
          }

          v149 = (((v194 * _S4) + (v195 * _S6)) + (v193 * _S5)) + v37;
          if (v149 < v37)
          {
            v150 = v37;
          }

          else
          {
            v150 = (((v194 * _S4) + (v195 * _S6)) + (v193 * _S5)) + v37;
          }

          v86 = v149 <= v39;
          v151 = (((v194 * _S19) + (v195 * _S2)) + (v193 * _S7)) + v37;
          if (!v86)
          {
            v150 = v39;
          }

          v152 = llroundf(v150);
          if (v151 < v37)
          {
            v153 = v37;
          }

          else
          {
            v153 = (((v194 * _S19) + (v195 * _S2)) + (v193 * _S7)) + v37;
          }

          v86 = v151 <= v39;
          v154 = (((v194 * _S25) + (v195 * _S26)) + (v193 * _S24)) + v37;
          if (!v86)
          {
            v153 = v39;
          }

          v155 = llroundf(v153);
          if (v154 < v37)
          {
            v156 = v37;
          }

          else
          {
            v156 = (((v194 * _S25) + (v195 * _S26)) + (v193 * _S24)) + v37;
          }

          v86 = v154 <= v39;
          v157 = (((v194 * _S3) + (v195 * _S28)) + (v193 * _S27)) + v37;
          if (!v86)
          {
            v156 = v39;
          }

          v158 = llroundf(v156);
          if (v157 < v37)
          {
            v159 = v37;
          }

          else
          {
            v159 = (((v194 * _S3) + (v195 * _S28)) + (v193 * _S27)) + v37;
          }

          if (v157 <= v39)
          {
            v160 = v159;
          }

          else
          {
            v160 = v39;
          }

          v161 = ((_S6 + _S2) + _S26) + _S28;
          v162 = ((_S4 + _S19) + _S25) + _S3;
          *v52 = v152;
          v52[1] = v155;
          *v64 = v158;
          v64[1] = llroundf(v160);
          v163 = ((_S5 + _S7) + _S24) + _S27;
          v164 = ((v197 + (v161 * v192)) + (v162 * v191)) + (v163 * v190);
          v165 = v196;
          if (v164 <= v196)
          {
            v165 = ((v197 + (v161 * v192)) + (v162 * v191)) + (v163 * v190);
            if (v164 < v203)
            {
              v165 = v203;
            }
          }

          v166 = ((v197 + (v161 * v189)) + (v162 * v188)) + (v163 * v186);
          *(v57 + v62) = llroundf(v165);
          v167 = v196;
          v32 = v93;
          if (v166 <= v196)
          {
            v167 = v166;
            if (v166 < v203)
            {
              v167 = v203;
            }
          }

          v55 += 4;
          v63 += 4;
          v52 += 2;
          v64 += 2;
          *(v57 + v62 + 1) = llroundf(v167);
          v62 += 2;
          v34 = v202;
        }

        while (v62 < v26);
      }

      v55 = &v60[v27];
      v58 += v28;
      v52 = &v61[v29];
      v57 += v30;
      v24 += 2;
    }

    while (v24 < v15);
  }

  if (v184 && v22)
  {
    if (v15 >= 1)
    {
      v168 = 0;
      v169 = v184 + v20 * v182 + 2 * v183;
      do
      {
        if (v11 >= 1)
        {
          v170 = v11;
          v171 = v23;
          v172 = v169;
          do
          {
            v173 = *v172++;
            *v171++ = llroundf(v173 * 0.0038911);
            --v170;
          }

          while (v170);
        }

        v169 += v20;
        v23 += v21;
        ++v168;
      }

      while (v15 > v168);
    }
  }

  else if (v22 && v15 >= 1)
  {
    v174 = 0;
    v175 = vdupq_n_s64(v11 - 1);
    do
    {
      if (v11 >= 1)
      {
        v176 = 0;
        do
        {
          v177 = vdupq_n_s64(v176);
          v178 = vmovn_s64(vcgeq_u64(v175, vorrq_s8(v177, xmmword_18FECDDB0)));
          if (vuzp1_s8(vuzp1_s16(v178, *v175.i8), *v175.i8).u8[0])
          {
            v23[v176] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(v178, *&v175), *&v175).i8[1])
          {
            v23[v176 + 1] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(*&v175, vmovn_s64(vcgeq_u64(v175, vorrq_s8(v177, xmmword_18FECDDA0)))), *&v175).i8[2])
          {
            v23[v176 + 2] = -1;
            v23[v176 + 3] = -1;
          }

          v179 = vmovn_s64(vcgeq_u64(v175, vorrq_s8(v177, xmmword_18FECDD90)));
          if (vuzp1_s8(*&v175, vuzp1_s16(v179, *&v175)).i32[1])
          {
            v23[v176 + 4] = -1;
          }

          if (vuzp1_s8(*&v175, vuzp1_s16(v179, *&v175)).i8[5])
          {
            v23[v176 + 5] = -1;
          }

          if (vuzp1_s8(*&v175, vuzp1_s16(*&v175, vmovn_s64(vcgeq_u64(v175, vorrq_s8(v177, xmmword_18FECDD80))))).i8[6])
          {
            v23[v176 + 6] = -1;
            v23[v176 + 7] = -1;
          }

          v180 = vmovn_s64(vcgeq_u64(v175, vorrq_s8(v177, xmmword_18FECDD70)));
          if (vuzp1_s8(vuzp1_s16(v180, *v175.i8), *v175.i8).u8[0])
          {
            v23[v176 + 8] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(v180, *&v175), *&v175).i8[1])
          {
            v23[v176 + 9] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(*&v175, vmovn_s64(vcgeq_u64(v175, vorrq_s8(v177, xmmword_18FECDD60)))), *&v175).i8[2])
          {
            v23[v176 + 10] = -1;
            v23[v176 + 11] = -1;
          }

          v181 = vmovn_s64(vcgeq_u64(v175, vorrq_s8(v177, xmmword_18FECDD50)));
          if (vuzp1_s8(*&v175, vuzp1_s16(v181, *&v175)).i32[1])
          {
            v23[v176 + 12] = -1;
          }

          if (vuzp1_s8(*&v175, vuzp1_s16(v181, *&v175)).i8[5])
          {
            v23[v176 + 13] = -1;
          }

          if (vuzp1_s8(*&v175, vuzp1_s16(*&v175, vmovn_s64(vcgeq_u64(v175, vorrq_s8(v177, xmmword_18FECDD40))))).i8[6])
          {
            v23[v176 + 14] = -1;
            v23[v176 + 15] = -1;
          }

          v176 += 16;
        }

        while (((v11 + 15) & 0xFFFFFFFFFFFFFFF0) != v176);
      }

      v23 += v21;
      ++v174;
    }

    while (v15 > v174);
  }

  *(result + a2 + 40) = 0;
  return result;
}

uint64_t vt_Copy_xf420_rgb_420vf_neon_fp16(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, unint64_t *a8, void *a9)
{
  v13 = a3;
  v73 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v69 = a2[2];
  v70 = v17;
  v18 = a6[1];
  v71 = *a6;
  v72 = v16;
  v67 = a6[2];
  v68 = v18;
  if (v15 == 255)
  {
    v19 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v19)
    {
      v20 = 0;
LABEL_71:
      free(v19);
      return v20;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v19 = (&v59 - v21);
    bzero(&v59 - v21, v22);
  }

  v23 = vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_s64(vaddq_s64(v67, v68), v71), vceqq_s64(vaddq_s64(v69, v70), v72))));
  v24 = v67.i64[0];
  v25 = v68.i64[0];
  v26 = v70.i64[0];
  v27 = v69.i64[0];
  if (v67.i8[0])
  {
    v24 = v67.i64[0] + 1;
    v27 = v69.i64[0] + 1;
    v25 = v68.i64[0] - 1;
    v26 = v70.i64[0] - 1;
  }

  v28 = a9;
  v29 = v71.i64[0];
  v30 = v72.i64[0];
  if (v25)
  {
    if (v23.i8[4] & 1 | v23.i8[0] & 1 || (v31 = v26 + 1 + v27, v32 = 2 * v31, 2 * v31 > *a4) || ((2 * (v31 + (v31 >> 63))) & 0xFFFFFFFFFFFFFFFCLL) > a4[1] || (v33 = a4[2], v32 > v33) && v33 || (v34 = v25 + 1 + v24, v34 > *a8) || ((v34 + (v34 >> 63)) & 0xFFFFFFFFFFFFFFFELL) > a8[1] || (v35 = a8[2], v34 > v35) && v35)
    {
      --v25;
      --v26;
    }

    else
    {
      v29 = v71.i64[0] + 1;
      v30 = v72.i64[0] + 1;
      ++v26;
      ++v25;
    }
  }

  v36 = v68.i64[1];
  v37 = v70.i64[1];
  if (v67.i8[8])
  {
    v37 = v70.i64[1] - 1;
    v38 = v69.i64[1] + 1;
  }

  else
  {
    v38 = v69.i64[1];
  }

  if (v67.i8[8])
  {
    v36 = v68.i64[1] - 1;
    v39 = v67.i64[1] + 1;
  }

  else
  {
    v39 = v67.i64[1];
  }

  v40 = v71.i64[1];
  v41 = v72.i64[1];
  v66 = a1;
  if (v36)
  {
    if (v23.i8[6] & 1 | v23.i8[2] & 1 || (v42 = v37 + 1 + v38, (*a4 * v42) > *a5) || (a4[1] * (v42 / 2)) > a5[1] || (a4[2] * v42) > a5[2] || (v43 = v36 + 1 + v39, *a8 * v43 > *a9) || a8[1] * (v43 / 2) > a9[1] || a8[2] * v43 > a9[2])
    {
      --v36;
      --v37;
    }

    else
    {
      v40 = v71.i64[1] + 1;
      v41 = v72.i64[1] + 1;
      ++v37;
      ++v36;
    }
  }

  if (v26 + v27 > v30)
  {
    v26 = v30 - v27;
  }

  if (v25 + v24 > v29)
  {
    v25 = v29 - v24;
  }

  if (v37 + v38 > v41)
  {
    v37 = v41 - v38;
  }

  if (v36 + v39 > v40)
  {
    v36 = v40 - v39;
  }

  if (v26 >= v25)
  {
    v44 = v25;
  }

  else
  {
    v44 = v26;
  }

  if (v37 >= v36)
  {
    v45 = v36;
  }

  else
  {
    v45 = v37;
  }

  v46 = v45 + v38 - 1;
  v47 = v44 + v27;
  v48 = (v46 * *a4 + 2 * (v44 + v27)) > *a5;
  v64 = v24;
  v65 = v13;
  v62 = a9;
  v63 = v27;
  v60 = v30;
  v61 = v29;
  v70.i64[0] = v39;
  v69.i64[0] = v38;
  v72.i64[0] = v40;
  v71.i64[0] = v41;
  if (v48)
  {
    v49 = a5;
    v50 = a8;
    v51 = v15;
    goto LABEL_64;
  }

  if (*(v13 + 8) && a4[1] * ((v45 + v38 + 1) / 2 - 1) + 4 * ((v47 + 1 + ((v47 + 1) >> 63)) >> 1) > a5[1])
  {
    v49 = a5;
    v50 = a8;
    v51 = v15;
    goto LABEL_64;
  }

  if (*(v13 + 16) && (2 * v47 + a4[2] * v46) > a5[2])
  {
    v49 = a5;
    v50 = a8;
    v51 = v15;
    goto LABEL_64;
  }

  v52 = v45 + v39 - 1;
  v53 = v44 + v24;
  if (v44 + v24 + *a8 * v52 > *a9)
  {
    v49 = a5;
    v50 = a8;
    v51 = v15;
    goto LABEL_64;
  }

  if (*(a7 + 8) && ((v53 + 1 + ((v53 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + a8[1] * ((v45 + v39 + 1) / 2 - 1) > a9[1])
  {
    v49 = a5;
    v50 = a8;
    v51 = v15;
    goto LABEL_64;
  }

  if (*(a7 + 16) && v53 + a8[2] * v52 > a9[2])
  {
    v49 = a5;
    v50 = a8;
    v51 = v15;
LABEL_64:
    fig_log_get_emitter();
    v20 = FigSignalErrorAtGM();
    v15 = v51;
    a8 = v50;
    a5 = v49;
    v24 = v64;
    v13 = v65;
    v28 = v62;
    v27 = v63;
    v30 = v60;
    v29 = v61;
    v39 = v70.i64[0];
    v38 = v69.i64[0];
    v40 = v72.i64[0];
    v41 = v71.i64[0];
    if (v20)
    {
      goto LABEL_70;
    }
  }

  *v19 = v15;
  *(v19 + 4) = v30;
  *(v19 + 12) = v41;
  *(v19 + 20) = v44;
  *(v19 + 28) = v45;
  *(v19 + 36) = v27;
  *(v19 + 44) = v38;
  v19[11] = v40;
  v19[12] = v44;
  v19[13] = v45;
  v19[14] = v24;
  v19[7] = v13;
  v19[8] = a4;
  v19[9] = a5;
  v19[10] = v29;
  v19[15] = v39;
  v19[16] = a7;
  v19[17] = a8;
  v19[18] = v28;
  v19[19] = v66;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v15, global_queue, v19, vt_Copy_xf420_rgb_420vf_neon_fp16_GCD);
  if (!v15)
  {
    return 0;
  }

  v55 = (v19 + 20);
  v56 = v15;
  while (1)
  {
    v57 = *v55++;
    v20 = v57;
    if (v57)
    {
      break;
    }

    if (!--v56)
    {
      v20 = 0;
      break;
    }
  }

LABEL_70:
  if (v15 == 255)
  {
    goto LABEL_71;
  }

  return v20;
}

uint64_t vt_Copy_xf420_rgb_420vf_neon_fp16_GCD(void *a1, uint64_t a2, int16x8_t _Q0)
{
  v7 = 2 * *a1;
  v162 = *(a1 + 44) + 2 * (*(a1 + 28) * a2 / v7);
  v163 = *(a1 + 36);
  v8 = a1[14];
  v9 = a1[12];
  v10 = a1[13];
  v11 = v10 * a2 / v7;
  v12 = a1[15] + 2 * v11;
  v13 = 2 * ((v10 + v10 * a2) / v7 - v11);
  v15 = a1[7];
  v14 = a1[8];
  v17 = a1[16];
  v16 = a1[17];
  result = v14[2];
  v165 = v15[2];
  v19 = v16[2];
  v164 = v17[2];
  v20 = (v164 + v19 * v12 + v8);
  if (v13 >= 1)
  {
    v21 = 0;
    v22 = a1[19];
    v23 = *v14;
    v24 = v14[1];
    v25 = *v16;
    v26 = v16[1];
    v27 = v22[17].u16[2];
    v28 = v22[17].u16[3];
    v29.i32[0] = v22[3].i32[1];
    v30 = v22[18].u16[0];
    v31 = v22[18].u16[1];
    v32 = v22[18].u16[2];
    v33 = v22[18].u16[3];
    v34 = v22[19].u16[0];
    _Q0.i32[0] = v22[4].i32[1];
    _S1 = v22[5].f32[0];
    _S2 = v22[5].f32[1];
    v37.i32[0] = v22[6].i32[0];
    v5.i32[0] = v22[6].i32[1];
    v38.i32[0] = v22[7].i32[0];
    v39 = v27;
    *v4.i16 = v27;
    v6.f32[0] = v22[17].u32[0] / v22[16].u32[0];
    v40 = v28;
    _S5 = v6.f32[0] * v22->f32[0];
    v42 = v30;
    v43 = v31;
    v44 = v32;
    v182 = v33;
    v45 = v34;
    v46 = vdupq_lane_s16(v4, 0);
    __asm { FCVT            H8, S5 }

    v52 = -v28;
    v29.i32[1] = v22[1].i32[0];
    *v3.f32 = vmul_n_f32(v29, v6.f32[0]);
    *v6.f32 = vmul_n_f32(v22[2], v6.f32[0]);
    v171 = vdupq_lane_s32(vcvt_f16_f32(v6), 0);
    v172 = vdupq_lane_s32(vcvt_f16_f32(v3), 0);
    v55 = vmulq_n_f16(v172, v52);
    v169 = vmulq_n_f16(v171, v52);
    v170 = v55;
    v37.i32[1] = v22[7].i32[1];
    __asm
    {
      FCVT            H9, S0
      FMOV            V23.2S, #0.25
    }

    *v55.f32 = vmul_f32(v37, _D23);
    v56 = vdupq_lane_s32(vcvt_f16_f32(v55), 0);
    v168 = v56;
    v5.i32[1] = v22[8].i32[0];
    *v56.f32 = vmul_f32(*v5.f32, _D23);
    v57 = vdupq_lane_s32(vcvt_f16_f32(v56), 0);
    v38.i32[1] = v22[8].i32[1];
    *v5.f32 = vmul_f32(v38, _D23);
    v58 = vcvt_f16_f32(v5);
    v59 = vdupq_lane_s32(v58, 0);
    *v58.i16 = v30;
    v60 = vdupq_lane_s16(v58, 0);
    *v58.i16 = v31;
    v61 = vdupq_lane_s16(v58, 0);
    v176 = v61;
    v177 = v59;
    *v61.i16 = v32;
    v62 = vdupq_lane_s16(*v61.i8, 0);
    *v61.i16 = v33;
    v63 = vdupq_lane_s16(*v61.i8, 0);
    __asm { FCVT            H14, S1 }

    *v61.i16 = v34;
    v174 = vdupq_lane_s16(*v61.i8, 0);
    v175 = v63;
    v65 = v22[15].u8[4];
    if (v65 >= 0x11)
    {
      v66 = 0;
    }

    else
    {
      v66 = 16 - v65;
    }

    v67 = *v17;
    v68 = (v17[1] + v26 * (v12 / 2) + v8);
    v69 = (v67 + v25 * v12 + v8);
    v70 = v15[1] + v24 * (v162 / 2) + 2 * v163;
    v71 = (*v15 + v23 * v162 + 2 * v163);
    v72 = v66;
    v73 = vdupq_n_s16(-v66);
    __asm { FCVT            H11, S2 }

    v180 = v6.f32[0];
    v181 = v3.f32[0];
    v178 = v56.f32[0];
    v179 = v55.f32[0];
    v75 = v5.i64[0];
    v173 = v57;
    do
    {
      v76 = &v71->i8[v23];
      v77 = v69 + v25;
      if (v9 < 8)
      {
        v105 = 0;
        v104 = v68;
        v81 = (v69 + v25);
        v80 = v70;
        v79 = (v71 + v23);
      }

      else
      {
        v78 = 0;
        v79 = (v71 + v23);
        v80 = v70;
        v81 = (v69 + v25);
        do
        {
          v82 = *v80++;
          v83 = vcvtq_f16_u16(vshlq_u16(v82, v73));
          v84 = vmlaq_f16(v170, v172, v83);
          v85 = vmlaq_f16(v169, v171, v83);
          v86 = vtrn2q_s16(v84, v84);
          v87 = vtrn1q_s16(v84, v84);
          v88 = vuzp1q_s16(v85, _Q0).u64[0];
          v89 = vuzp2q_s16(v85, _Q0);
          *v89.i8 = vadd_f16(v88, *v89.i8);
          v90 = *v71++;
          v91 = vshlq_u16(v90, v73);
          v92 = *v79++;
          v93 = vzip1q_s16(v89, v89);
          v94 = vsubq_f16(vcvtq_f16_u16(v91), v46);
          v95 = vsubq_f16(vcvtq_f16_u16(vshlq_u16(v92, v73)), v46);
          v96 = vmlaq_n_f16(v86, v94, _H8);
          v97 = vmlaq_n_f16(v86, v95, _H8);
          v98 = vmlaq_n_f16(v93, v94, _H8);
          v99 = vmlaq_n_f16(v93, v95, _H8);
          v100 = vmlaq_n_f16(v87, v94, _H8);
          v101 = vmlaq_n_f16(v87, v95, _H8);
          v102 = vmlaq_n_f16(vmlaq_n_f16(v60, v97, _H9), v99, _H14);
          v103 = vaddq_f16(vuzp2q_s16(v97, v99), vaddq_f16(vuzp1q_s16(v97, v99), vpaddq_f16(v96, v98)));
          *v69++ = vmovn_s16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v60, v96, _H9), v98, _H14), v100, _H11), v60), v62)));
          *v81++ = vmovn_s16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(v102, v101, _H11), v60), v62)));
          *&v68[v78] = vmovn_s16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_f16(vmlaq_f16(vmlaq_f16(v176, v168, vzip1q_s16(v103, v103)), v57, vzip2q_s16(v103, v103)), v177, vaddq_f16(vtrn2q_s16(v101, v101), vaddq_f16(vaddq_f16(vtrn1q_s16(v100, v100), vtrn2q_s16(v100, v100)), vtrn1q_s16(v101, v101)))), v175), v174)));
          v78 += 8;
        }

        while (v78 < v9 - 7);
        v104 = &v68[v78];
        v105 = v9 & 0xFFFFFFF8;
      }

      while (v105 < (v9 & 0xFFFFFFFE))
      {
        v106 = (v80->u16[0] >> v72) - v40;
        v107 = (v80->u16[1] >> v72) - v40;
        v108 = v3.f32[1] * v107;
        v109 = (v6.f32[1] * v107) + (v106 * v180);
        v110 = v181 * v106;
        v111 = _S5 * ((v71->u16[0] >> v72) - v39);
        v112 = _S5 * ((v71->u16[1] >> v72) - v39);
        v113 = _S5 * ((v79->u16[0] >> v72) - v39);
        v114 = _S5 * ((v79->u16[1] >> v72) - v39);
        v115 = v108 + v111;
        v116 = v111 + v109;
        v117 = v110 + v111;
        v118 = v108 + v112;
        v119 = v109 + v112;
        v120 = v110 + v112;
        v121 = v108 + v113;
        v122 = v109 + v113;
        v123 = v110 + v113;
        v124 = v108 + v114;
        v125 = v109 + v114;
        v126 = v110 + v114;
        v127 = (((_S1 * v116) + (*_Q0.i32 * v115)) + (_S2 * v117)) + v42;
        if (v127 < v42)
        {
          v128 = v42;
        }

        else
        {
          v128 = (((_S1 * v116) + (*_Q0.i32 * v115)) + (_S2 * v117)) + v42;
        }

        v129 = v127 <= v44;
        v130 = (((_S1 * v119) + (*_Q0.i32 * v118)) + (_S2 * v120)) + v42;
        if (!v129)
        {
          v128 = v44;
        }

        v131 = llroundf(v128);
        if (v130 < v42)
        {
          v132 = v42;
        }

        else
        {
          v132 = (((_S1 * v119) + (*_Q0.i32 * v118)) + (_S2 * v120)) + v42;
        }

        v129 = v130 <= v44;
        v133 = (((_S1 * v122) + (*_Q0.i32 * v121)) + (_S2 * v123)) + v42;
        if (!v129)
        {
          v132 = v44;
        }

        v134 = llroundf(v132);
        if (v133 < v42)
        {
          v135 = v42;
        }

        else
        {
          v135 = (((_S1 * v122) + (*_Q0.i32 * v121)) + (_S2 * v123)) + v42;
        }

        v129 = v133 <= v44;
        v136 = (((_S1 * v125) + (*_Q0.i32 * v124)) + (_S2 * v126)) + v42;
        if (!v129)
        {
          v135 = v44;
        }

        v137 = llroundf(v135);
        if (v136 < v42)
        {
          v138 = v42;
        }

        else
        {
          v138 = (((_S1 * v125) + (*_Q0.i32 * v124)) + (_S2 * v126)) + v42;
        }

        if (v136 <= v44)
        {
          v139 = v138;
        }

        else
        {
          v139 = v44;
        }

        v140 = llroundf(v139);
        v141 = ((v115 + v118) + v121) + v124;
        v142 = ((v116 + v119) + v122) + v125;
        v69->i8[0] = v131;
        v69->i8[1] = v134;
        v81->i8[0] = v137;
        v81->i8[1] = v140;
        v143 = ((v117 + v120) + v123) + v126;
        v144 = ((v43 + (v141 * v179)) + (v142 * v178)) + (v143 * *&v75);
        v145 = v45;
        if (v144 <= v45)
        {
          v145 = ((v43 + (v141 * v179)) + (v142 * v178)) + (v143 * *&v75);
          if (v144 < v182)
          {
            v145 = v182;
          }
        }

        v146 = ((v43 + (v141 * v55.f32[1])) + (v142 * v56.f32[1])) + (v143 * *(&v75 + 1));
        *v104 = llroundf(v145);
        v147 = v45;
        if (v146 <= v45)
        {
          v147 = v146;
          if (v146 < v182)
          {
            v147 = v182;
          }
        }

        v105 += 2;
        v80 = (v80 + 4);
        v71 = (v71 + 4);
        v79 = (v79 + 4);
        v104[1] = llroundf(v147);
        v69 = (v69 + 2);
        v81 = (v81 + 2);
        v104 += 2;
      }

      v71 = &v76[v23];
      v70 += v24;
      v69 = &v77[v25];
      v68 += v26;
      v21 += 2;
      v57 = v173;
    }

    while (v21 < v13);
  }

  if (v165 && v164)
  {
    if (v13 >= 1)
    {
      v148 = 0;
      v149 = v165 + result * v162 + 2 * v163;
      do
      {
        if (v9 >= 1)
        {
          v150 = v9;
          v151 = v20;
          v152 = v149;
          do
          {
            v153 = *v152++;
            *v151++ = llroundf(v153 * 0.0038911);
            --v150;
          }

          while (v150);
        }

        v149 += result;
        v20 += v19;
        ++v148;
      }

      while (v13 > v148);
    }
  }

  else if (v164 && v13 >= 1)
  {
    v154 = 0;
    v155 = vdupq_n_s64(v9 - 1);
    do
    {
      if (v9 >= 1)
      {
        v156 = 0;
        do
        {
          v157 = vdupq_n_s64(v156);
          v158 = vmovn_s64(vcgeq_u64(v155, vorrq_s8(v157, xmmword_18FECDDB0)));
          if (vuzp1_s8(vuzp1_s16(v158, *v155.i8), *v155.i8).u8[0])
          {
            v20[v156] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(v158, *&v155), *&v155).i8[1])
          {
            v20[v156 + 1] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(*&v155, vmovn_s64(vcgeq_u64(v155, vorrq_s8(v157, xmmword_18FECDDA0)))), *&v155).i8[2])
          {
            v20[v156 + 2] = -1;
            v20[v156 + 3] = -1;
          }

          v159 = vmovn_s64(vcgeq_u64(v155, vorrq_s8(v157, xmmword_18FECDD90)));
          if (vuzp1_s8(*&v155, vuzp1_s16(v159, *&v155)).i32[1])
          {
            v20[v156 + 4] = -1;
          }

          if (vuzp1_s8(*&v155, vuzp1_s16(v159, *&v155)).i8[5])
          {
            v20[v156 + 5] = -1;
          }

          if (vuzp1_s8(*&v155, vuzp1_s16(*&v155, vmovn_s64(vcgeq_u64(v155, vorrq_s8(v157, xmmword_18FECDD80))))).i8[6])
          {
            v20[v156 + 6] = -1;
            v20[v156 + 7] = -1;
          }

          v160 = vmovn_s64(vcgeq_u64(v155, vorrq_s8(v157, xmmword_18FECDD70)));
          if (vuzp1_s8(vuzp1_s16(v160, *v155.i8), *v155.i8).u8[0])
          {
            v20[v156 + 8] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(v160, *&v155), *&v155).i8[1])
          {
            v20[v156 + 9] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(*&v155, vmovn_s64(vcgeq_u64(v155, vorrq_s8(v157, xmmword_18FECDD60)))), *&v155).i8[2])
          {
            v20[v156 + 10] = -1;
            v20[v156 + 11] = -1;
          }

          v161 = vmovn_s64(vcgeq_u64(v155, vorrq_s8(v157, xmmword_18FECDD50)));
          if (vuzp1_s8(*&v155, vuzp1_s16(v161, *&v155)).i32[1])
          {
            v20[v156 + 12] = -1;
          }

          if (vuzp1_s8(*&v155, vuzp1_s16(v161, *&v155)).i8[5])
          {
            v20[v156 + 13] = -1;
          }

          if (vuzp1_s8(*&v155, vuzp1_s16(*&v155, vmovn_s64(vcgeq_u64(v155, vorrq_s8(v157, xmmword_18FECDD40))))).i8[6])
          {
            v20[v156 + 14] = -1;
            v20[v156 + 15] = -1;
          }

          v156 += 16;
        }

        while (((v9 + 15) & 0xFFFFFFFFFFFFFFF0) != v156);
      }

      v20 += v19;
      ++v154;
    }

    while (v13 > v154);
  }

  *(a1 + a2 + 40) = 0;
  return result;
}

uint64_t vt_Copy_xf420_rgb_420vf(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, unint64_t *a8, void *a9)
{
  v13 = a3;
  v73 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v69 = a2[2];
  v70 = v17;
  v18 = a6[1];
  v71 = *a6;
  v72 = v16;
  v67 = a6[2];
  v68 = v18;
  if (v15 == 255)
  {
    v19 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v19)
    {
      v20 = 0;
LABEL_71:
      free(v19);
      return v20;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v19 = (&v59 - v21);
    bzero(&v59 - v21, v22);
  }

  v23 = vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_s64(vaddq_s64(v67, v68), v71), vceqq_s64(vaddq_s64(v69, v70), v72))));
  v24 = v67.i64[0];
  v25 = v68.i64[0];
  v26 = v70.i64[0];
  v27 = v69.i64[0];
  if (v67.i8[0])
  {
    v24 = v67.i64[0] + 1;
    v27 = v69.i64[0] + 1;
    v25 = v68.i64[0] - 1;
    v26 = v70.i64[0] - 1;
  }

  v28 = a9;
  v29 = v71.i64[0];
  v30 = v72.i64[0];
  if (v25)
  {
    if (v23.i8[4] & 1 | v23.i8[0] & 1 || (v31 = v26 + 1 + v27, v32 = 2 * v31, 2 * v31 > *a4) || ((2 * (v31 + (v31 >> 63))) & 0xFFFFFFFFFFFFFFFCLL) > a4[1] || (v33 = a4[2], v32 > v33) && v33 || (v34 = v25 + 1 + v24, v34 > *a8) || ((v34 + (v34 >> 63)) & 0xFFFFFFFFFFFFFFFELL) > a8[1] || (v35 = a8[2], v34 > v35) && v35)
    {
      --v25;
      --v26;
    }

    else
    {
      v29 = v71.i64[0] + 1;
      v30 = v72.i64[0] + 1;
      ++v26;
      ++v25;
    }
  }

  v36 = v68.i64[1];
  v37 = v70.i64[1];
  if (v67.i8[8])
  {
    v37 = v70.i64[1] - 1;
    v38 = v69.i64[1] + 1;
  }

  else
  {
    v38 = v69.i64[1];
  }

  if (v67.i8[8])
  {
    v36 = v68.i64[1] - 1;
    v39 = v67.i64[1] + 1;
  }

  else
  {
    v39 = v67.i64[1];
  }

  v40 = v71.i64[1];
  v41 = v72.i64[1];
  v66 = a1;
  if (v36)
  {
    if (v23.i8[6] & 1 | v23.i8[2] & 1 || (v42 = v37 + 1 + v38, (*a4 * v42) > *a5) || (a4[1] * (v42 / 2)) > a5[1] || (a4[2] * v42) > a5[2] || (v43 = v36 + 1 + v39, *a8 * v43 > *a9) || a8[1] * (v43 / 2) > a9[1] || a8[2] * v43 > a9[2])
    {
      --v36;
      --v37;
    }

    else
    {
      v40 = v71.i64[1] + 1;
      v41 = v72.i64[1] + 1;
      ++v37;
      ++v36;
    }
  }

  if (v26 + v27 > v30)
  {
    v26 = v30 - v27;
  }

  if (v25 + v24 > v29)
  {
    v25 = v29 - v24;
  }

  if (v37 + v38 > v41)
  {
    v37 = v41 - v38;
  }

  if (v36 + v39 > v40)
  {
    v36 = v40 - v39;
  }

  if (v26 >= v25)
  {
    v44 = v25;
  }

  else
  {
    v44 = v26;
  }

  if (v37 >= v36)
  {
    v45 = v36;
  }

  else
  {
    v45 = v37;
  }

  v46 = v45 + v38 - 1;
  v47 = v44 + v27;
  v48 = (v46 * *a4 + 2 * (v44 + v27)) > *a5;
  v64 = v24;
  v65 = v13;
  v62 = a9;
  v63 = v27;
  v60 = v30;
  v61 = v29;
  v70.i64[0] = v39;
  v69.i64[0] = v38;
  v72.i64[0] = v40;
  v71.i64[0] = v41;
  if (v48)
  {
    v49 = a5;
    v50 = a8;
    v51 = v15;
    goto LABEL_64;
  }

  if (*(v13 + 8) && a4[1] * ((v45 + v38 + 1) / 2 - 1) + 4 * ((v47 + 1 + ((v47 + 1) >> 63)) >> 1) > a5[1])
  {
    v49 = a5;
    v50 = a8;
    v51 = v15;
    goto LABEL_64;
  }

  if (*(v13 + 16) && (2 * v47 + a4[2] * v46) > a5[2])
  {
    v49 = a5;
    v50 = a8;
    v51 = v15;
    goto LABEL_64;
  }

  v52 = v45 + v39 - 1;
  v53 = v44 + v24;
  if (v44 + v24 + *a8 * v52 > *a9)
  {
    v49 = a5;
    v50 = a8;
    v51 = v15;
    goto LABEL_64;
  }

  if (*(a7 + 8) && ((v53 + 1 + ((v53 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + a8[1] * ((v45 + v39 + 1) / 2 - 1) > a9[1])
  {
    v49 = a5;
    v50 = a8;
    v51 = v15;
    goto LABEL_64;
  }

  if (*(a7 + 16) && v53 + a8[2] * v52 > a9[2])
  {
    v49 = a5;
    v50 = a8;
    v51 = v15;
LABEL_64:
    fig_log_get_emitter();
    v20 = FigSignalErrorAtGM();
    v15 = v51;
    a8 = v50;
    a5 = v49;
    v24 = v64;
    v13 = v65;
    v28 = v62;
    v27 = v63;
    v30 = v60;
    v29 = v61;
    v39 = v70.i64[0];
    v38 = v69.i64[0];
    v40 = v72.i64[0];
    v41 = v71.i64[0];
    if (v20)
    {
      goto LABEL_70;
    }
  }

  *v19 = v15;
  *(v19 + 4) = v30;
  *(v19 + 12) = v41;
  *(v19 + 20) = v44;
  *(v19 + 28) = v45;
  *(v19 + 36) = v27;
  *(v19 + 44) = v38;
  v19[11] = v40;
  v19[12] = v44;
  v19[13] = v45;
  v19[14] = v24;
  v19[7] = v13;
  v19[8] = a4;
  v19[9] = a5;
  v19[10] = v29;
  v19[15] = v39;
  v19[16] = a7;
  v19[17] = a8;
  v19[18] = v28;
  v19[19] = v66;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v15, global_queue, v19, vt_Copy_xf420_rgb_420vf_GCD);
  if (!v15)
  {
    return 0;
  }

  v55 = (v19 + 20);
  v56 = v15;
  while (1)
  {
    v57 = *v55++;
    v20 = v57;
    if (v57)
    {
      break;
    }

    if (!--v56)
    {
      v20 = 0;
      break;
    }
  }

LABEL_70:
  if (v15 == 255)
  {
    goto LABEL_71;
  }

  return v20;
}

void *vt_Copy_xf420_rgb_420vf_GCD(void *result, uint64_t a2, double a3, double a4, float a5, float a6)
{
  v10 = *(result + 36);
  v11 = 2 * *result;
  v12 = *(result + 44) + 2 * (*(result + 28) * a2 / v11);
  v13 = result[14];
  v14 = result[12];
  v15 = result[13];
  v16 = v15 * a2 / v11;
  v17 = result[15] + 2 * v16;
  v18 = 2 * ((v15 + v15 * a2) / v11 - v16);
  v20 = result[7];
  v19 = result[8];
  v22 = result[16];
  v21 = result[17];
  v23 = v19[2];
  v123 = v20[2];
  v24 = v21[2];
  v25 = v22[2];
  v26 = (v25 + v24 * v17 + v13);
  if (v18 >= 1)
  {
    v27 = 0;
    v28 = result[19];
    v29 = v14 & 0xFFFFFFFE;
    v30 = *v19;
    v31 = v19[1];
    v32 = *v21;
    v33 = v21[1];
    LOWORD(a5) = *(v28 + 140);
    LOWORD(a6) = *(v28 + 142);
    v34 = *(v28 + 136) / *(v28 + 128);
    v35 = LODWORD(a5);
    v36 = LODWORD(a6);
    v37 = v34 * *v28;
    v127 = v34 * *(v28 + 16);
    v128 = v34 * *(v28 + 8);
    v38 = *(v28 + 28);
    v125 = v34 * v38;
    v126 = v34 * *(v28 + 20);
    LOWORD(v38) = *(v28 + 144);
    v39 = LODWORD(v38);
    LOWORD(v6) = *(v28 + 146);
    v40 = v6;
    LOWORD(v7) = *(v28 + 148);
    v41 = v7;
    LOWORD(v8) = *(v28 + 150);
    v42 = v8;
    LOWORD(v9) = *(v28 + 152);
    v43 = v9;
    v44 = *(v28 + 36);
    v45 = *(v28 + 40);
    v46 = *(v28 + 44);
    v47 = *(v28 + 48) * 0.25;
    v48 = *(v28 + 52) * 0.25;
    v49 = *(v28 + 56) * 0.25;
    v50 = *(v28 + 60) * 0.25;
    v51 = *(v28 + 64) * 0.25;
    v52 = *(v28 + 68) * 0.25;
    v53 = v22[1];
    v54 = (*v22 + v32 * v17 + v13);
    v55 = *(v28 + 124);
    v56 = v20[1];
    v57 = (*v20 + v30 * v12 + 2 * v10);
    if (v55 >= 0x11)
    {
      v58 = 0;
    }

    else
    {
      v58 = 16 - v55;
    }

    v59 = v53 + v33 * (v17 / 2) + v13;
    v60 = v56 + v31 * (v12 / 2) + 2 * v10;
    do
    {
      v61 = &v57[v30];
      v62 = &v54[v32];
      if (v29 >= 1)
      {
        v63 = 0;
        v64 = &v57[v30];
        v65 = &v54[v32];
        do
        {
          v66 = (v60 + 2 * v63);
          v67 = (*v66 >> v58) - v36;
          v68 = (v66[1] >> v58) - v36;
          v69 = v128 * v68;
          v70 = (v126 * v68) + (v67 * v127);
          v71 = v125 * v67;
          v72 = v37 * ((*v57 >> v58) - v35);
          v73 = v37 * ((*(v57 + 1) >> v58) - v35);
          v74 = v37 * ((*v64 >> v58) - v35);
          v75 = v37 * ((*(v64 + 1) >> v58) - v35);
          v76 = v69 + v72;
          v77 = v72 + v70;
          v78 = v71 + v72;
          v79 = v69 + v73;
          v80 = v70 + v73;
          v81 = v71 + v73;
          v82 = v69 + v74;
          v83 = v70 + v74;
          v84 = v71 + v74;
          v85 = v69 + v75;
          v86 = v70 + v75;
          v87 = v71 + v75;
          v88 = (((v45 * v77) + (v44 * v76)) + (v46 * v78)) + v39;
          if (v88 < v39)
          {
            v89 = v39;
          }

          else
          {
            v89 = (((v45 * v77) + (v44 * v76)) + (v46 * v78)) + v39;
          }

          v90 = v88 <= v41;
          v91 = (((v45 * v80) + (v44 * v79)) + (v46 * v81)) + v39;
          if (!v90)
          {
            v89 = v41;
          }

          v92 = llroundf(v89);
          if (v91 < v39)
          {
            v93 = v39;
          }

          else
          {
            v93 = (((v45 * v80) + (v44 * v79)) + (v46 * v81)) + v39;
          }

          v90 = v91 <= v41;
          v94 = (((v45 * v83) + (v44 * v82)) + (v46 * v84)) + v39;
          if (!v90)
          {
            v93 = v41;
          }

          v95 = llroundf(v93);
          if (v94 < v39)
          {
            v96 = v39;
          }

          else
          {
            v96 = (((v45 * v83) + (v44 * v82)) + (v46 * v84)) + v39;
          }

          v90 = v94 <= v41;
          v97 = (((v45 * v86) + (v44 * v85)) + (v46 * v87)) + v39;
          if (!v90)
          {
            v96 = v41;
          }

          v98 = llroundf(v96);
          if (v97 < v39)
          {
            v99 = v39;
          }

          else
          {
            v99 = (((v45 * v86) + (v44 * v85)) + (v46 * v87)) + v39;
          }

          if (v97 <= v41)
          {
            v100 = v99;
          }

          else
          {
            v100 = v41;
          }

          v101 = llroundf(v100);
          v102 = ((v76 + v79) + v82) + v85;
          v103 = ((v77 + v80) + v83) + v86;
          *v54 = v92;
          v54[1] = v95;
          *v65 = v98;
          v65[1] = v101;
          v104 = ((v78 + v81) + v84) + v87;
          v105 = ((v40 + (v102 * v47)) + (v103 * v48)) + (v104 * v49);
          v106 = v43;
          if (v105 <= v43)
          {
            v106 = ((v40 + (v102 * v47)) + (v103 * v48)) + (v104 * v49);
            if (v105 < v42)
            {
              v106 = v42;
            }
          }

          v107 = ((v40 + (v102 * v50)) + (v103 * v51)) + (v104 * v52);
          *(v59 + v63) = llroundf(v106);
          v108 = v43;
          if (v107 <= v43)
          {
            v108 = v107;
            if (v107 < v42)
            {
              v108 = v42;
            }
          }

          v57 += 4;
          v64 += 4;
          v54 += 2;
          v65 += 2;
          *(v59 + v63 + 1) = llroundf(v108);
          v63 += 2;
        }

        while (v63 < v29);
      }

      v57 = &v61[v30];
      v60 += v31;
      v54 = &v62[v32];
      v59 += v33;
      v27 += 2;
    }

    while (v27 < v18);
  }

  if (v123 && v25)
  {
    if (v18 >= 1)
    {
      v109 = 0;
      v110 = v123 + v23 * v12 + 2 * v10;
      do
      {
        if (v14 >= 1)
        {
          v111 = v14;
          v112 = v26;
          v113 = v110;
          do
          {
            v114 = *v113++;
            *v112++ = llroundf(v114 * 0.0038911);
            --v111;
          }

          while (v111);
        }

        v110 += v23;
        v26 += v24;
        ++v109;
      }

      while (v18 > v109);
    }
  }

  else if (v25 && v18 >= 1)
  {
    v115 = 0;
    v116 = vdupq_n_s64(v14 - 1);
    do
    {
      if (v14 >= 1)
      {
        v117 = 0;
        do
        {
          v118 = vdupq_n_s64(v117);
          v119 = vmovn_s64(vcgeq_u64(v116, vorrq_s8(v118, xmmword_18FECDDB0)));
          if (vuzp1_s8(vuzp1_s16(v119, *v116.i8), *v116.i8).u8[0])
          {
            v26[v117] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(v119, *&v116), *&v116).i8[1])
          {
            v26[v117 + 1] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(*&v116, vmovn_s64(vcgeq_u64(v116, vorrq_s8(v118, xmmword_18FECDDA0)))), *&v116).i8[2])
          {
            v26[v117 + 2] = -1;
            v26[v117 + 3] = -1;
          }

          v120 = vmovn_s64(vcgeq_u64(v116, vorrq_s8(v118, xmmword_18FECDD90)));
          if (vuzp1_s8(*&v116, vuzp1_s16(v120, *&v116)).i32[1])
          {
            v26[v117 + 4] = -1;
          }

          if (vuzp1_s8(*&v116, vuzp1_s16(v120, *&v116)).i8[5])
          {
            v26[v117 + 5] = -1;
          }

          if (vuzp1_s8(*&v116, vuzp1_s16(*&v116, vmovn_s64(vcgeq_u64(v116, vorrq_s8(v118, xmmword_18FECDD80))))).i8[6])
          {
            v26[v117 + 6] = -1;
            v26[v117 + 7] = -1;
          }

          v121 = vmovn_s64(vcgeq_u64(v116, vorrq_s8(v118, xmmword_18FECDD70)));
          if (vuzp1_s8(vuzp1_s16(v121, *v116.i8), *v116.i8).u8[0])
          {
            v26[v117 + 8] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(v121, *&v116), *&v116).i8[1])
          {
            v26[v117 + 9] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(*&v116, vmovn_s64(vcgeq_u64(v116, vorrq_s8(v118, xmmword_18FECDD60)))), *&v116).i8[2])
          {
            v26[v117 + 10] = -1;
            v26[v117 + 11] = -1;
          }

          v122 = vmovn_s64(vcgeq_u64(v116, vorrq_s8(v118, xmmword_18FECDD50)));
          if (vuzp1_s8(*&v116, vuzp1_s16(v122, *&v116)).i32[1])
          {
            v26[v117 + 12] = -1;
          }

          if (vuzp1_s8(*&v116, vuzp1_s16(v122, *&v116)).i8[5])
          {
            v26[v117 + 13] = -1;
          }

          if (vuzp1_s8(*&v116, vuzp1_s16(*&v116, vmovn_s64(vcgeq_u64(v116, vorrq_s8(v118, xmmword_18FECDD40))))).i8[6])
          {
            v26[v117 + 14] = -1;
            v26[v117 + 15] = -1;
          }

          v117 += 16;
        }

        while (((v14 + 15) & 0xFFFFFFFFFFFFFFF0) != v117);
      }

      v26 += v24;
      ++v115;
    }

    while (v18 > v115);
  }

  *(result + a2 + 40) = 0;
  return result;
}

uint64_t vt_Copy_xf420_TRC_Tone_Mat_TRC_xf420_neon_fp16(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v13 = a3;
  v14 = a1;
  v73 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v69 = a2[2];
  v70 = v17;
  v18 = a6[1];
  v71 = *a6;
  v72 = v16;
  v67 = a6[2];
  v68 = v18;
  if (v15 == 255)
  {
    v19 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v19)
    {
      v20 = 0;
LABEL_71:
      free(v19);
      return v20;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v19 = (&v61 - v21);
    bzero(&v61 - v21, v22);
  }

  v23 = vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_s64(vaddq_s64(v67, v68), v71), vceqq_s64(vaddq_s64(v69, v70), v72))));
  v24 = v67.i64[0];
  v25 = v68.i64[0];
  v26 = v70.i64[0];
  v27 = v69.i64[0];
  if (v67.i8[0])
  {
    v24 = v67.i64[0] + 1;
    v27 = v69.i64[0] + 1;
    v25 = v68.i64[0] - 1;
    v26 = v70.i64[0] - 1;
  }

  v28 = a9;
  v29 = v71.i64[0];
  v30 = v72.i64[0];
  if (v25)
  {
    if (v23.i8[4] & 1 | v23.i8[0] & 1 || (v31 = v26 + 1 + v27, v32 = 2 * v31, 2 * v31 > *a4) || ((2 * (v31 + (v31 >> 63))) & 0xFFFFFFFFFFFFFFFCLL) > a4[1] || (v33 = a4[2], v32 > v33) && v33 || (v34 = v25 + 1 + v24, v35 = 2 * v34, 2 * v34 > *a8) || ((2 * (v34 + (v34 >> 63))) & 0xFFFFFFFFFFFFFFFCLL) > a8[1] || (v36 = a8[2], v35 > v36) && v36)
    {
      --v25;
      --v26;
    }

    else
    {
      v29 = v71.i64[0] + 1;
      v30 = v72.i64[0] + 1;
      ++v26;
      ++v25;
    }
  }

  v37 = v68.i64[1];
  v38 = v70.i64[1];
  if (v67.i8[8])
  {
    v38 = v70.i64[1] - 1;
    v39 = v69.i64[1] + 1;
  }

  else
  {
    v39 = v69.i64[1];
  }

  if (v67.i8[8])
  {
    v37 = v68.i64[1] - 1;
    v40 = v67.i64[1] + 1;
  }

  else
  {
    v40 = v67.i64[1];
  }

  v41 = v71.i64[1];
  v42 = v72.i64[1];
  if (v37)
  {
    if (v23.i8[6] & 1 | v23.i8[2] & 1 || (v43 = v38 + 1 + v39, (*a4 * v43) > *a5) || (a4[1] * (v43 / 2)) > a5[1] || (a4[2] * v43) > a5[2] || (v44 = v37 + 1 + v40, (*a8 * v44) > *a9) || (a8[1] * (v44 / 2)) > a9[1] || (a8[2] * v44) > a9[2])
    {
      --v37;
      --v38;
    }

    else
    {
      v41 = v71.i64[1] + 1;
      v42 = v72.i64[1] + 1;
      ++v38;
      ++v37;
    }
  }

  if (v26 + v27 > v30)
  {
    v26 = v30 - v27;
  }

  if (v25 + v24 > v29)
  {
    v25 = v29 - v24;
  }

  if (v38 + v39 > v42)
  {
    v38 = v42 - v39;
  }

  if (v37 + v40 > v41)
  {
    v37 = v41 - v40;
  }

  if (v26 >= v25)
  {
    v45 = v25;
  }

  else
  {
    v45 = v26;
  }

  if (v38 >= v37)
  {
    v46 = v37;
  }

  else
  {
    v46 = v38;
  }

  v47 = v46 + v39 - 1;
  v48 = v45 + v27;
  v49 = (v47 * *a4 + 2 * (v45 + v27)) > *a5;
  v65 = v24;
  v66 = v14;
  v63 = a9;
  v64 = v27;
  v61 = v30;
  v62 = v29;
  v70.i64[0] = v40;
  v69.i64[0] = v39;
  v72.i64[0] = v41;
  v71.i64[0] = v42;
  v68.i64[0] = v45;
  if (v49)
  {
    v50 = v13;
    v51 = a5;
    v52 = a8;
    v53 = v15;
    goto LABEL_64;
  }

  if (*(v13 + 8) && a4[1] * ((v46 + v39 + 1) / 2 - 1) + 4 * ((v48 + 1 + ((v48 + 1) >> 63)) >> 1) > a5[1])
  {
    v50 = v13;
    v51 = a5;
    v52 = a8;
    v53 = v15;
    goto LABEL_64;
  }

  if (*(v13 + 16) && (2 * v48 + a4[2] * v47) > a5[2])
  {
    v50 = v13;
    v51 = a5;
    v52 = a8;
    v53 = v15;
    goto LABEL_64;
  }

  v54 = v46 + v40 - 1;
  v55 = v45 + v24;
  if ((*a8 * v54 + 2 * (v45 + v24)) > *a9)
  {
    v50 = v13;
    v51 = a5;
    v52 = a8;
    v53 = v15;
    goto LABEL_64;
  }

  if (*(a7 + 8) && a8[1] * ((v46 + v40 + 1) / 2 - 1) + 4 * ((v55 + 1 + ((v55 + 1) >> 63)) >> 1) > a9[1])
  {
    v50 = v13;
    v51 = a5;
    v52 = a8;
    v53 = v15;
    goto LABEL_64;
  }

  if (*(a7 + 16) && (2 * v55 + a8[2] * v54) > a9[2])
  {
    v50 = v13;
    v51 = a5;
    v52 = a8;
    v53 = v15;
LABEL_64:
    fig_log_get_emitter();
    v20 = FigSignalErrorAtGM();
    v15 = v53;
    a8 = v52;
    a5 = v51;
    v13 = v50;
    v24 = v65;
    v14 = v66;
    v28 = v63;
    v27 = v64;
    v30 = v61;
    v29 = v62;
    v40 = v70.i64[0];
    v39 = v69.i64[0];
    v41 = v72.i64[0];
    v42 = v71.i64[0];
    v45 = v68.i64[0];
    if (v20)
    {
      goto LABEL_70;
    }
  }

  *v19 = v15;
  *(v19 + 4) = v30;
  *(v19 + 12) = v42;
  *(v19 + 20) = v45;
  *(v19 + 28) = v46;
  *(v19 + 36) = v27;
  *(v19 + 44) = v39;
  v19[11] = v41;
  v19[12] = v45;
  v19[13] = v46;
  v19[14] = v24;
  v19[7] = v13;
  v19[8] = a4;
  v19[9] = a5;
  v19[10] = v29;
  v19[15] = v40;
  v19[16] = a7;
  v19[17] = a8;
  v19[18] = v28;
  v19[19] = v14;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v15, global_queue, v19, vt_Copy_xf420_TRC_Tone_Mat_TRC_xf420_neon_fp16_GCD);
  if (!v15)
  {
    return 0;
  }

  v57 = (v19 + 20);
  v58 = v15;
  while (1)
  {
    v59 = *v57++;
    v20 = v59;
    if (v59)
    {
      break;
    }

    if (!--v58)
    {
      v20 = 0;
      break;
    }
  }

LABEL_70:
  if (v15 == 255)
  {
    goto LABEL_71;
  }

  return v20;
}

float32x2_t *vt_Copy_xf420_TRC_Tone_Mat_TRC_xf420_neon_fp16_GCD(float32x2_t *result, uint64_t a2, double a3, double a4, float32x4_t a5, double a6, float32x4_t a7, double a8, float32x4_t a9)
{
  v11 = 2 * result->u8[0];
  v303 = *(&result[5] + 4) + 2 * (*(&result[3] + 4) * a2 / v11);
  v304 = *(&result[4] + 4);
  v12 = result[14];
  v14 = result[12];
  v13 = result[13];
  v309 = result;
  v15 = *&v13 * a2 / v11;
  v16 = *&result[15] + 2 * v15;
  v17 = 2 * ((*&v13 + *&v13 * a2) / v11 - v15);
  v18 = result[7];
  v19 = result[8];
  v20 = result[16];
  v21 = result[17];
  v302 = v19[2];
  v306 = v18[2];
  v307 = v21[2];
  v305 = v20[2];
  v22 = (v305 + v307 * v16 + 2 * *&v12);
  if (v17 >= 1)
  {
    v23 = 0;
    v24 = result[19];
    v25 = v14 - 7;
    v26 = *v19;
    v27 = v19[1];
    v28 = *v21;
    v29 = v24[17].u16[2];
    v30 = v24[17].u16[3];
    a7.i32[0] = v24[3].i32[1];
    v31 = v24[18].u16[0];
    v32 = v24[18].u16[1];
    v33 = v24[18].u16[2];
    v34 = v24[18].u16[3];
    v35 = v24[19].u16[0];
    _S16 = v24[5].i32[0];
    _S28 = v24[5].i32[1];
    a5.i32[0] = v24[6].i32[0];
    v39.i32[0] = v24[6].i32[1];
    v38.i32[0] = v24[7].i32[0];
    result = (v24 + 16548);
    _S3 = 8191.0 / v24[16].u32[0];
    v41 = v29;
    v366 = v30;
    v42 = v14 & 0xFFFFFFFE;
    _S25 = _S3 * v24->f32[0];
    v331 = v31;
    v44 = v32;
    v359 = v33;
    *&a8 = v34;
    v369 = v34;
    v45 = v35;
    v46 = &v24[20] + 4;
    *&a8 = v29;
    __asm { FCVT            H9, S25 }

    v365 = vdupq_lane_s16(*&a8, 0);
    v52 = &v24[4116] + 4;
    v53 = -v30;
    a7.i32[1] = v24[1].i32[0];
    *v10.f32 = vmul_n_f32(*a7.f32, _S3);
    v54 = vdupq_lane_s32(vcvt_f16_f32(v10), 0);
    *v9.f32 = vmul_n_f32(v24[2], _S3);
    v368 = vdupq_lane_s32(vcvt_f16_f32(v9), 0);
    v55 = vmulq_n_f16(v54, v53);
    v56 = vmulq_n_f16(v368, v53);
    a5.i32[1] = v24[7].i32[1];
    v364 = v24[4].f32[1];
    __asm { FCVT            H3, S6 }

    v357 = *&_S3;
    __asm { FMOV            V3.2S, #0.25 }

    *a9.f32 = vmul_f32(*a5.f32, _D3);
    v58 = vdupq_lane_s32(vcvt_f16_f32(a9), 0);
    v39.i32[1] = v24[8].i32[0];
    *a7.f32 = vmul_f32(v39, _D3);
    v333 = vdupq_lane_s32(vcvt_f16_f32(a7), 0);
    v38.i32[1] = v24[8].i32[1];
    *a5.f32 = vmul_f32(v38, _D3);
    v59 = vcvt_f16_f32(a5);
    v60 = vdupq_lane_s32(v59, 0);
    *v59.i16 = v31;
    v61 = vdupq_lane_s16(v59, 0);
    *v59.i16 = v32;
    v62 = vdupq_lane_s16(v59, 0);
    v350 = v62;
    v351 = v61;
    *v62.i16 = v33;
    v63 = vdupq_lane_s16(*v62.i8, 0);
    *v62.i16 = v34;
    v64 = vdupq_lane_s16(*v62.i8, 0);
    v348 = v64;
    v349 = v63;
    *v64.i16 = v35;
    _Q0 = vdupq_lane_s16(*v64.i8, 0);
    v347 = _Q0;
    v66 = v24[16].u8[4];
    if (v66 >= 0x11)
    {
      v67 = 0;
    }

    else
    {
      v67 = 16 - v66;
    }

    v68 = v24[15].u8[4];
    if (v68 >= 0x11)
    {
      v69 = 0;
    }

    else
    {
      v69 = 16 - v68;
    }

    v70 = *v20;
    v313 = v21[1];
    v71 = v20[1] + v313 * (v16 / 2) + 2 * *&v12;
    v72 = (v70 + v28 * v16 + 2 * *&v12);
    v73 = v18[1] + v27 * (v303 / 2) + 2 * v304;
    v74 = (*v18 + v26 * v303 + 2 * v304);
    v75 = v69;
    v76 = v67;
    v311 = v14 & 0xFFFFFFF8;
    v363 = v24[5].f32[0];
    __asm { FCVT            H0, S16 }

    v346 = *_Q0.i16;
    _Q0.i32[0] = v24[9].i32[0];
    _S29 = v24[13].f32[1];
    _S21 = v24[14].f32[0];
    v362 = v24[5].f32[1];
    __asm { FCVT            H1, S28 }

    v80 = v60;
    __asm { FCVT            H3, S29 }

    v329 = _H3;
    __asm { FCVT            H5, S21 }

    v330 = v24[14].f32[1];
    __asm { FCVT            H8, S8 }

    v327 = _H8;
    v84 = _H1;
    v328 = v24[15].f32[0];
    __asm { FCVT            H1, S3 }

    v345 = *_Q0.i32;
    __asm { FCVT            H0, S0 }

    v325 = *_Q0.i16;
    v326 = _H1;
    v344 = v24[9].f32[1];
    __asm { FCVT            H0, S16 }

    v324 = _Q0;
    v343 = v24[10].f32[0];
    __asm { FCVT            H0, S20 }

    v323 = _H0;
    v342 = v24[10].f32[1];
    __asm { FCVT            H0, S22 }

    v88 = v58;
    v322 = _H0;
    v340 = v24[11].f32[0];
    __asm { FCVT            H0, S23 }

    v321 = _H0;
    v338 = v24[11].f32[1];
    __asm { FCVT            H10, S10 }

    v336 = v24[12].f32[0];
    __asm { FCVT            H12, S12 }

    v334 = v24[12].f32[1];
    __asm { FCVT            H0, S13 }

    v318 = _H0;
    v332 = v24[13].f32[0];
    __asm { FCVT            H14, S15 }

    v94 = vdupq_n_s16(-v69);
    v370 = vdupq_n_s16(v67);
    v360 = v9.f32[0];
    v361 = v10.f32[0];
    v316 = v9.f32[1];
    v317 = v10.f32[1];
    v356 = a9.f32[0];
    a9.f32[0] = v366;
    v95 = v365;
    v315 = a9.f32[1];
    v96 = a7.u32[1];
    v354 = a7.f32[0];
    v97 = v368;
    v98 = a5.i64[0];
    v314 = *&v96;
    v99 = 0uLL;
    v100.i64[0] = 0x9000900090009000;
    v100.i64[1] = 0x9000900090009000;
    v371 = _H14;
    v367 = v94;
    v312 = v14;
    v358 = v56;
    v355 = v88;
    v353 = v54;
    v352 = v55;
    v341 = _H9;
    v339 = _S25;
    v337 = v41;
    v335 = v80;
    v319 = _H12;
    v320 = _H10;
    v310 = v44;
    do
    {
      v101 = &v74->i8[v26];
      v102 = &v72->i8[v28];
      if (v14 < 8)
      {
        v169 = 0;
        v168 = v71;
        v106 = (v72 + v28);
        v167 = v73;
        v105 = (v74 + v26);
      }

      else
      {
        v103 = 0;
        v104 = 0;
        v105 = (v74 + v26);
        v106 = (v72 + v28);
        do
        {
          v107 = vcvtq_f16_u16(vshlq_u16(*(v73 + v103), v94));
          v108 = vmlaq_f16(v55, v54, v107);
          v109 = vmlaq_f16(v56, v97, v107);
          v110 = vtrn2q_s16(v108, v108);
          v111 = vtrn1q_s16(v108, v108);
          v112 = vuzp1q_s16(v109, v107);
          *v112.i8 = vadd_f16(*v112.i8, *&vuzp2q_s16(v109, v112));
          v113 = vzip1q_s16(v112, v112);
          v114 = *v74++;
          v115 = vcvtq_f16_u16(vshlq_u16(v114, v94));
          v116 = *v105++;
          v117 = vsubq_f16(v115, v95);
          v118 = vsubq_f16(vcvtq_f16_u16(vshlq_u16(v116, v94)), v95);
          v119 = vmlaq_n_f16(v110, v117, _H9);
          v120 = vmlaq_n_f16(v110, v118, _H9);
          v121 = vmlaq_n_f16(v113, v117, _H9);
          v122 = vmlaq_n_f16(v113, v118, _H9);
          v123 = vmlaq_n_f16(v111, v117, _H9);
          v124 = vmlaq_n_f16(v111, v118, _H9);
          v125 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v119, v99), v100));
          v126.i16[0] = *&v46[2 * v125.u16[0]];
          v126.i16[1] = *&v46[2 * v125.u16[1]];
          v126.i16[2] = *&v46[2 * v125.u16[2]];
          v126.i16[3] = *&v46[2 * v125.u16[3]];
          v126.i16[4] = *&v46[2 * v125.u16[4]];
          v126.i16[5] = *&v46[2 * v125.u16[5]];
          v126.i16[6] = *&v46[2 * v125.u16[6]];
          v126.i16[7] = *&v46[2 * v125.u16[7]];
          v127 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v121, v99), v100));
          v125.i16[0] = *&v46[2 * v127.u16[0]];
          v125.i16[1] = *&v46[2 * v127.u16[1]];
          v125.i16[2] = *&v46[2 * v127.u16[2]];
          v125.i16[3] = *&v46[2 * v127.u16[3]];
          v125.i16[4] = *&v46[2 * v127.u16[4]];
          v125.i16[5] = *&v46[2 * v127.u16[5]];
          v125.i16[6] = *&v46[2 * v127.u16[6]];
          v125.i16[7] = *&v46[2 * v127.u16[7]];
          v128 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v123, v99), v100));
          v123.i16[0] = *&v46[2 * v128.u16[0]];
          v123.i16[1] = *&v46[2 * v128.u16[1]];
          v123.i16[2] = *&v46[2 * v128.u16[2]];
          v123.i16[3] = *&v46[2 * v128.u16[3]];
          v123.i16[4] = *&v46[2 * v128.u16[4]];
          v123.i16[5] = *&v46[2 * v128.u16[5]];
          v123.i16[6] = *&v46[2 * v128.u16[6]];
          v123.i16[7] = *&v46[2 * v128.u16[7]];
          v129 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v120, v99), v100));
          v120.i16[0] = *&v46[2 * v129.u16[0]];
          v120.i16[1] = *&v46[2 * v129.u16[1]];
          v120.i16[2] = *&v46[2 * v129.u16[2]];
          v120.i16[3] = *&v46[2 * v129.u16[3]];
          v120.i16[4] = *&v46[2 * v129.u16[4]];
          v120.i16[5] = *&v46[2 * v129.u16[5]];
          v120.i16[6] = *&v46[2 * v129.u16[6]];
          v120.i16[7] = *&v46[2 * v129.u16[7]];
          v130 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v122, v99), v100));
          v122.i16[0] = *&v46[2 * v130.u16[0]];
          v122.i16[1] = *&v46[2 * v130.u16[1]];
          v122.i16[2] = *&v46[2 * v130.u16[2]];
          v122.i16[3] = *&v46[2 * v130.u16[3]];
          v122.i16[4] = *&v46[2 * v130.u16[4]];
          v122.i16[5] = *&v46[2 * v130.u16[5]];
          v122.i16[6] = *&v46[2 * v130.u16[6]];
          v122.i16[7] = *&v46[2 * v130.u16[7]];
          v131 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v124, v99), v100));
          v124.i16[0] = *&v46[2 * v131.u16[0]];
          v124.i16[1] = *&v46[2 * v131.u16[1]];
          v124.i16[2] = *&v46[2 * v131.u16[2]];
          v124.i16[3] = *&v46[2 * v131.u16[3]];
          v124.i16[4] = *&v46[2 * v131.u16[4]];
          v124.i16[5] = *&v46[2 * v131.u16[5]];
          v124.i16[6] = *&v46[2 * v131.u16[6]];
          v124.i16[7] = *&v46[2 * v131.u16[7]];
          v132 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v126, v329), v125, _H5), v123, v327), vmaxq_f16(vmaxq_f16(v126, v125), v123), v326), v99), v100));
          v121.i16[0] = result->i16[v132.u16[0]];
          v121.i16[1] = result->i16[v132.u16[1]];
          v121.i16[2] = result->i16[v132.u16[2]];
          v121.i16[3] = result->i16[v132.u16[3]];
          v121.i16[4] = result->i16[v132.u16[4]];
          v121.i16[5] = result->i16[v132.u16[5]];
          v121.i16[6] = result->i16[v132.u16[6]];
          v121.i16[7] = result->i16[v132.u16[7]];
          v133 = vmulq_f16(v126, v121);
          v134 = vmulq_f16(v125, v121);
          v135 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v120, v329), v122, _H5), v124, v327), vmaxq_f16(vmaxq_f16(v120, v122), v124), v326), v99), v100));
          v136 = vmulq_f16(v123, v121);
          v123.i16[0] = result->i16[v135.u16[0]];
          v123.i16[1] = result->i16[v135.u16[1]];
          v123.i16[2] = result->i16[v135.u16[2]];
          v123.i16[3] = result->i16[v135.u16[3]];
          v123.i16[4] = result->i16[v135.u16[4]];
          v123.i16[5] = result->i16[v135.u16[5]];
          v123.i16[6] = result->i16[v135.u16[6]];
          v123.i16[7] = result->i16[v135.u16[7]];
          v137 = vmulq_f16(v120, v123);
          v138 = vmulq_f16(v122, v123);
          v139 = vmulq_f16(v124, v123);
          v120.i16[7] = v324.i16[7];
          v140 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v133, v322), v134, v321), v136, v320);
          v141 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v136, _H14), v134, v318), v133, v319);
          v142 = vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v133, v325), v134, *v324.i16), v136, v323), v99), v100);
          v143 = vcvtq_u16_f16(v142);
          v142.i16[0] = *&v52[2 * v143.u16[0]];
          v142.i16[1] = *&v52[2 * v143.u16[1]];
          v142.i16[2] = *&v52[2 * v143.u16[2]];
          v142.i16[3] = *&v52[2 * v143.u16[3]];
          v142.i16[4] = *&v52[2 * v143.u16[4]];
          v142.i16[5] = *&v52[2 * v143.u16[5]];
          v142.i16[6] = *&v52[2 * v143.u16[6]];
          v144 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v140, v99), v100));
          v120.i16[0] = *&v52[2 * v144.u16[0]];
          v120.i16[1] = *&v52[2 * v144.u16[1]];
          v120.i16[2] = *&v52[2 * v144.u16[2]];
          v120.i16[3] = *&v52[2 * v144.u16[3]];
          v120.i16[4] = *&v52[2 * v144.u16[4]];
          v120.i16[5] = *&v52[2 * v144.u16[5]];
          v120.i16[6] = *&v52[2 * v144.u16[6]];
          v145 = vuzp1q_s16(v142, v120);
          v142.i16[7] = *&v52[2 * v143.u16[7]];
          v120.i16[7] = *&v52[2 * v144.u16[7]];
          v146 = vminq_f16(vmaxq_f16(v141, v99), v100);
          v147 = vcvtq_u16_f16(v146);
          v146.i16[0] = *&v52[2 * v147.u16[0]];
          v146.i16[1] = *&v52[2 * v147.u16[1]];
          v146.i16[2] = *&v52[2 * v147.u16[2]];
          v146.i16[3] = *&v52[2 * v147.u16[3]];
          v146.i16[4] = *&v52[2 * v147.u16[4]];
          v146.i16[5] = *&v52[2 * v147.u16[5]];
          v146.i16[6] = *&v52[2 * v147.u16[6]];
          v148 = &v52[2 * v147.u16[7]];
          v149 = v146;
          v149.i16[7] = *v148;
          v150 = vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v137, v325), v138, *v324.i16), v139, v323), v99), v100);
          v151 = vcvtq_u16_f16(v150);
          v152 = vmlaq_n_f16(vmulq_n_f16(v139, v371), v138, v318);
          v150.i16[0] = *&v52[2 * v151.u16[0]];
          v150.i16[1] = *&v52[2 * v151.u16[1]];
          v150.i16[2] = *&v52[2 * v151.u16[2]];
          v150.i16[3] = *&v52[2 * v151.u16[3]];
          v150.i16[4] = *&v52[2 * v151.u16[4]];
          v150.i16[5] = *&v52[2 * v151.u16[5]];
          v150.i16[6] = *&v52[2 * v151.u16[6]];
          v153 = &v52[2 * v151.u16[7]];
          v154 = v150;
          v154.i16[7] = *v153;
          v155 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v137, v322), v138, v321), v139, v320), v99), v100));
          v156 = v88;
          v88.i16[0] = *&v52[2 * v155.u16[0]];
          v88.i16[1] = *&v52[2 * v155.u16[1]];
          v88.i16[2] = *&v52[2 * v155.u16[2]];
          v88.i16[3] = *&v52[2 * v155.u16[3]];
          v88.i16[4] = *&v52[2 * v155.u16[4]];
          v88.i16[5] = *&v52[2 * v155.u16[5]];
          v88.i16[6] = *&v52[2 * v155.u16[6]];
          v157 = &v52[2 * v155.u16[7]];
          v158 = v88;
          v158.i16[7] = *v157;
          v159 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(v152, v137, v319), v99), v100));
          v99.i16[0] = *&v52[2 * v159.u16[0]];
          v99.i16[1] = *&v52[2 * v159.u16[1]];
          v99.i16[2] = *&v52[2 * v159.u16[2]];
          v99.i16[3] = *&v52[2 * v159.u16[3]];
          v99.i16[4] = *&v52[2 * v159.u16[4]];
          v99.i16[5] = *&v52[2 * v159.u16[5]];
          v99.i16[6] = *&v52[2 * v159.u16[6]];
          v160 = &v52[2 * v159.u16[7]];
          v161 = v99;
          v161.i16[7] = *v160;
          v162 = vuzp1q_s16(v150, v88);
          _H14 = v371;
          v100.i64[0] = 0x9000900090009000;
          v100.i64[1] = 0x9000900090009000;
          *v72++ = vshlq_u16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v351, v142, v357), v120, v346), v149, v84), v351), v349)), v370);
          *v106++ = vshlq_u16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v351, v154, v357), v158, v346), v161, v84), v351), v349)), v370);
          v88 = v156;
          v163 = vaddq_f16(vaddq_f16(vaddq_f16(v145, vuzp2q_s16(v142, v120)), v162), vuzp2q_s16(v154, v158));
          v164 = vaddq_f16(vtrn1q_s16(v146, v146), vtrn2q_s16(v149, v149));
          v165 = vtrn1q_s16(v99, v99);
          v99 = 0uLL;
          v166 = vmaxq_f16(vmlaq_f16(vmlaq_f16(vmlaq_f16(v350, v156, vzip1q_s16(v163, v163)), v333, vzip2q_s16(v163, v163)), v335, vaddq_f16(vaddq_f16(v164, v165), vtrn2q_s16(v161, v161))), v348);
          v94 = v367;
          v97 = v368;
          *(v71 + v103) = vshlq_u16(vcvtq_u16_f16(vminq_f16(v166, v347)), v370);
          v104 += 8;
          v103 += 16;
        }

        while (v104 < v25);
        v167 = (v73 + v103);
        v168 = (v71 + v103);
        v169 = v311;
        v14 = v312;
        v44 = v310;
        a9.f32[0] = v366;
      }

      for (; v169 < v42; v56 = v358)
      {
        v170 = (v167[1] >> v75) - a9.f32[0];
        v171 = v317 * v170;
        v172 = _S25 * ((v74->u16[0] >> v75) - v41);
        v173 = (v317 * v170) + v172;
        v174 = 8191.0;
        if (v173 <= 8191.0)
        {
          v174 = (v317 * v170) + v172;
          if (v173 < 0.0)
          {
            v174 = 0.0;
          }
        }

        v175 = (*v167 >> v75) - a9.f32[0];
        v176 = (v316 * v170) + (v175 * v360);
        v177 = 8191.0;
        if ((v172 + v176) <= 8191.0)
        {
          v177 = v172 + v176;
          if ((v172 + v176) < 0.0)
          {
            v177 = 0.0;
          }
        }

        v178 = v361 * v175;
        v179 = (v361 * v175) + v172;
        v180 = 8191.0;
        if (v179 <= 8191.0)
        {
          v180 = v179;
          if (v179 < 0.0)
          {
            v180 = 0.0;
          }
        }

        v181 = _S25 * ((v74->u16[1] >> v75) - v41);
        v182 = 8191.0;
        if ((v171 + v181) <= 8191.0)
        {
          v182 = v171 + v181;
          if ((v171 + v181) < 0.0)
          {
            v182 = 0.0;
          }
        }

        v183 = 8191.0;
        if ((v176 + v181) <= 8191.0)
        {
          v183 = v176 + v181;
          if ((v176 + v181) < 0.0)
          {
            v183 = 0.0;
          }
        }

        v184 = v178 + v181;
        v185 = 8191.0;
        if (v184 <= 8191.0)
        {
          v185 = v184;
          if (v184 < 0.0)
          {
            v185 = 0.0;
          }
        }

        v186 = _S25 * ((v105->u16[0] >> v75) - v41);
        v187 = 8191.0;
        if ((v171 + v186) <= 8191.0)
        {
          v187 = v171 + v186;
          if ((v171 + v186) < 0.0)
          {
            v187 = 0.0;
          }
        }

        v188 = 8191.0;
        if ((v176 + v186) <= 8191.0)
        {
          v188 = v176 + v186;
          if ((v176 + v186) < 0.0)
          {
            v188 = 0.0;
          }
        }

        v189 = v178 + v186;
        v190 = 8191.0;
        if (v189 <= 8191.0)
        {
          v190 = v189;
          if (v189 < 0.0)
          {
            v190 = 0.0;
          }
        }

        v191 = _S25 * ((v105->u16[1] >> v75) - v41);
        v192 = v171 + v191;
        v193 = (v171 + v191) <= 8191.0;
        v194 = 8191.0;
        if (v193)
        {
          v194 = v192;
          if (v192 < 0.0)
          {
            v194 = 0.0;
          }
        }

        v195 = v176 + v191;
        v193 = (v176 + v191) <= 8191.0;
        v196 = 8191.0;
        if (v193)
        {
          v196 = v195;
          if (v195 < 0.0)
          {
            v196 = 0.0;
          }
        }

        v197 = v178 + v191;
        v193 = (v178 + v191) <= 8191.0;
        v198 = 8191.0;
        if (v193)
        {
          v198 = v197;
          if (v197 < 0.0)
          {
            v198 = 0.0;
          }
        }

        _H0 = *&v46[2 * llroundf(fminf(fmaxf(v174, 0.0), 8191.0))];
        __asm { FCVT            S0, H0 }

        _H1 = *&v46[2 * llroundf(fminf(fmaxf(v177, 0.0), 8191.0))];
        __asm { FCVT            S1, H1 }

        _H2 = *&v46[2 * llroundf(fminf(fmaxf(v180, 0.0), 8191.0))];
        __asm { FCVT            S2, H2 }

        _H23 = *&v46[2 * llroundf(fminf(fmaxf(v182, 0.0), 8191.0))];
        _H12 = *&v46[2 * llroundf(fminf(fmaxf(v183, 0.0), 8191.0))];
        _H24 = *&v46[2 * llroundf(fminf(fmaxf(v185, 0.0), 8191.0))];
        _H10 = *&v46[2 * llroundf(fminf(fmaxf(v187, 0.0), 8191.0))];
        _H19 = *&v46[2 * llroundf(fminf(fmaxf(v188, 0.0), 8191.0))];
        _H11 = *&v46[2 * llroundf(fminf(fmaxf(v190, 0.0), 8191.0))];
        _H4 = *&v46[2 * llroundf(fminf(fmaxf(v194, 0.0), 8191.0))];
        _H6 = *&v46[2 * llroundf(fminf(fmaxf(v196, 0.0), 8191.0))];
        _H16 = *&v46[2 * llroundf(fminf(fmaxf(v198, 0.0), 8191.0))];
        v214 = (((_S21 * _S1) + (_S29 * _S0)) + (v330 * _S2)) + (v328 * fmaxf(_S0, fmaxf(_S1, _S2)));
        v215 = 8191.0;
        if (v214 <= 8191.0)
        {
          v215 = v214;
          if (v214 < 0.0)
          {
            v215 = 0.0;
          }
        }

        v216 = v45;
        v217 = v44;
        __asm
        {
          FCVT            S20, H23
          FCVT            S12, H12
          FCVT            S15, H24
        }

        _H3 = result->i16[llroundf(v215)];
        v222 = (((_S21 * _S12) + (_S29 * _S20)) + (v330 * _S15)) + (v328 * fmaxf(_S20, fmaxf(_S12, _S15)));
        v223 = 8191.0;
        if (v222 <= 8191.0)
        {
          v223 = v222;
          if (v222 < 0.0)
          {
            v223 = 0.0;
          }
        }

        __asm
        {
          FCVT            S25, H10
          FCVT            S28, H19
          FCVT            S26, H11
        }

        _H27 = result->i16[llroundf(v223)];
        v228 = (((_S21 * _S28) + (_S29 * _S25)) + (v330 * _S26)) + (v328 * fmaxf(_S25, fmaxf(_S28, _S26)));
        v229 = 8191.0;
        if (v228 <= 8191.0)
        {
          v229 = v228;
          if (v228 < 0.0)
          {
            v229 = 0.0;
          }
        }

        __asm
        {
          FCVT            S24, H4
          FCVT            S10, H6
          FCVT            S11, H16
          FCVT            S3, H3
        }

        v234 = _S0 * _S3;
        v235 = _S1 * _S3;
        v236 = _S2 * _S3;
        __asm { FCVT            S0, H27 }

        v238 = _S20 * _S0;
        v239 = _S12 * _S0;
        v240 = _S15 * _S0;
        LOWORD(_S0) = result->i16[llroundf(v229)];
        __asm { FCVT            S1, H0 }

        v242 = _S25 * _S1;
        v243 = _S28 * _S1;
        v244 = _S26 * _S1;
        v245 = (((_S21 * _S10) + (_S29 * _S24)) + (v330 * _S11)) + (v328 * fmaxf(_S24, fmaxf(_S10, _S11)));
        v246 = 8191.0;
        if (v245 <= 8191.0)
        {
          v246 = v245;
          if (v245 < 0.0)
          {
            v246 = 0.0;
          }
        }

        _H20 = result->i16[llroundf(v246)];
        __asm { FCVT            S20, H20 }

        v249 = _S24 * _S20;
        v250 = _S10 * _S20;
        v251 = _S11 * _S20;
        v252 = ((v344 * v235) + (v234 * v345)) + (v236 * v343);
        v253 = ((v340 * v235) + (v234 * v342)) + (v236 * v338);
        v254 = ((v334 * v235) + (v234 * v336)) + (v236 * v332);
        v255 = ((v344 * v239) + (v238 * v345)) + (v240 * v343);
        _S23 = ((v340 * v239) + (v238 * v342)) + (v240 * v338);
        _S3 = ((v334 * v239) + (v238 * v336)) + (v240 * v332);
        v258 = ((v344 * v243) + (v242 * v345)) + (v244 * v343);
        v259 = ((v340 * v243) + (v242 * v342)) + (v244 * v338);
        v260 = ((v334 * v243) + (v242 * v336)) + (v244 * v332);
        v261 = ((v344 * v250) + (v249 * v345)) + (v251 * v343);
        v262 = ((v340 * v250) + (v249 * v342)) + (v251 * v338);
        v263 = ((v334 * v250) + (v249 * v336)) + (v251 * v332);
        _H0 = *&v52[2 * llroundf(fminf(fmaxf(v252, 0.0), 8191.0))];
        __asm { FCVT            S0, H0 }

        _H1 = *&v52[2 * llroundf(fminf(fmaxf(v253, 0.0), 8191.0))];
        __asm { FCVT            S1, H1 }

        _H2 = *&v52[2 * llroundf(fminf(fmaxf(v254, 0.0), 8191.0))];
        _H4 = *&v52[2 * llroundf(fminf(fmaxf(v255, 0.0), 8191.0))];
        __asm
        {
          FCVT            S2, H2
          FCVT            S4, H4
        }

        _H6 = *&v52[2 * llroundf(fminf(fmaxf(_S23, 0.0), 8191.0))];
        __asm { FCVT            S16, H6 }

        LOWORD(_S3) = *&v52[2 * llroundf(fminf(fmaxf(_S3, 0.0), 8191.0))];
        __asm { FCVT            S6, H3 }

        LOWORD(_S3) = *&v52[2 * llroundf(fminf(fmaxf(v258, 0.0), 8191.0))];
        __asm { FCVT            S20, H3 }

        LOWORD(_S3) = *&v52[2 * llroundf(fminf(fmaxf(v259, 0.0), 8191.0))];
        __asm { FCVT            S10, H3 }

        LOWORD(_S3) = *&v52[2 * llroundf(fminf(fmaxf(v260, 0.0), 8191.0))];
        LOWORD(_S23) = *&v52[2 * llroundf(fminf(fmaxf(v261, 0.0), 8191.0))];
        __asm
        {
          FCVT            S19, H3
          FCVT            S12, H23
        }

        LOWORD(_S3) = *&v52[2 * llroundf(fminf(fmaxf(v262, 0.0), 8191.0))];
        __asm { FCVT            S15, H3 }

        LOWORD(_S3) = *&v52[2 * llroundf(fminf(fmaxf(v263, 0.0), 8191.0))];
        __asm { FCVT            S11, H3 }

        v281 = (((v363 * _S1) + (v364 * _S0)) + (v362 * _S2)) + v331;
        if (v281 < v331)
        {
          v282 = v331;
        }

        else
        {
          v282 = (((v363 * _S1) + (v364 * _S0)) + (v362 * _S2)) + v331;
        }

        v193 = v281 <= v359;
        v283 = (((v363 * _S16) + (v364 * _S4)) + (v362 * _S6)) + v331;
        if (!v193)
        {
          v282 = v359;
        }

        v284 = llroundf(v282);
        if (v283 < v331)
        {
          v285 = v331;
        }

        else
        {
          v285 = (((v363 * _S16) + (v364 * _S4)) + (v362 * _S6)) + v331;
        }

        v193 = v283 <= v359;
        v286 = (((v363 * _S10) + (v364 * _S20)) + (v362 * _S19)) + v331;
        if (!v193)
        {
          v285 = v359;
        }

        v287 = llroundf(v285);
        if (v286 < v331)
        {
          v288 = v331;
        }

        else
        {
          v288 = (((v363 * _S10) + (v364 * _S20)) + (v362 * _S19)) + v331;
        }

        v193 = v286 <= v359;
        v289 = (((v363 * _S15) + (v364 * _S12)) + (v362 * _S11)) + v331;
        if (!v193)
        {
          v288 = v359;
        }

        v290 = llroundf(v288);
        if (v289 < v331)
        {
          v291 = v331;
        }

        else
        {
          v291 = (((v363 * _S15) + (v364 * _S12)) + (v362 * _S11)) + v331;
        }

        if (v289 <= v359)
        {
          v292 = v291;
        }

        else
        {
          v292 = v359;
        }

        v293 = ((_S0 + _S4) + _S20) + _S12;
        v294 = ((_S1 + _S16) + _S10) + _S15;
        v72->i16[0] = v284 << v76;
        v72->i16[1] = v287 << v76;
        v106->i16[0] = v290 << v76;
        v106->i16[1] = llroundf(v292) << v76;
        v44 = v217;
        v295 = ((_S2 + _S6) + _S19) + _S11;
        v296 = ((v217 + (v293 * v356)) + (v294 * v354)) + (v295 * *&v98);
        v45 = v216;
        v297 = v216;
        if (v296 <= v216)
        {
          v297 = ((v217 + (v293 * v356)) + (v294 * v354)) + (v295 * *&v98);
          if (v296 < v369)
          {
            v297 = v369;
          }
        }

        v298 = ((v217 + (v293 * v315)) + (v294 * v314)) + (v295 * *(&v98 + 1));
        *v168 = llroundf(v297) << v76;
        v299 = v216;
        v41 = v337;
        a9.f32[0] = v366;
        v95 = v365;
        v88 = v355;
        _H14 = v371;
        v99 = 0uLL;
        v100.i64[0] = 0x9000900090009000;
        v100.i64[1] = 0x9000900090009000;
        if (v298 <= v216)
        {
          v299 = v298;
          if (v298 < v369)
          {
            v299 = v369;
          }
        }

        v169 += 2;
        v167 += 2;
        v74 = (v74 + 4);
        v105 = (v105 + 4);
        v168[1] = llroundf(v299) << v76;
        v72 = (v72 + 4);
        v106 = (v106 + 4);
        v168 += 2;
        _S25 = v339;
        _H9 = v341;
        v54 = v353;
        v55 = v352;
      }

      v74 = &v101[v26];
      v73 += v27;
      v72 = &v102[v28];
      v71 += v313;
      v23 += 2;
      v94 = v367;
      v97 = v368;
    }

    while (v23 < v17);
  }

  if (v306 && v305)
  {
    if (v17 >= 1)
    {
      v300 = 0;
      v301 = (v306 + v302 * v303 + 2 * v304);
      do
      {
        result = memcpy(v22, v301, 2 * v14);
        v301 += v302;
        v22 += v307;
        ++v300;
      }

      while (v17 > v300);
    }
  }

  else if (v305 && v17 >= 1)
  {
    do
    {
      if (v14 >= 1)
      {
        result = memset(v22, 255, 2 * v14);
      }

      v22 += v307;
      --v17;
    }

    while (v17);
  }

  v309[20].i32[a2] = 0;
  return result;
}

uint64_t vt_Copy_xf420_TRC_Tone_Mat_TRC_xf420(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v13 = a3;
  v14 = a1;
  v73 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v69 = a2[2];
  v70 = v17;
  v18 = a6[1];
  v71 = *a6;
  v72 = v16;
  v67 = a6[2];
  v68 = v18;
  if (v15 == 255)
  {
    v19 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v19)
    {
      v20 = 0;
LABEL_71:
      free(v19);
      return v20;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v19 = (&v61 - v21);
    bzero(&v61 - v21, v22);
  }

  v23 = vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_s64(vaddq_s64(v67, v68), v71), vceqq_s64(vaddq_s64(v69, v70), v72))));
  v24 = v67.i64[0];
  v25 = v68.i64[0];
  v26 = v70.i64[0];
  v27 = v69.i64[0];
  if (v67.i8[0])
  {
    v24 = v67.i64[0] + 1;
    v27 = v69.i64[0] + 1;
    v25 = v68.i64[0] - 1;
    v26 = v70.i64[0] - 1;
  }

  v28 = a9;
  v29 = v71.i64[0];
  v30 = v72.i64[0];
  if (v25)
  {
    if (v23.i8[4] & 1 | v23.i8[0] & 1 || (v31 = v26 + 1 + v27, v32 = 2 * v31, 2 * v31 > *a4) || ((2 * (v31 + (v31 >> 63))) & 0xFFFFFFFFFFFFFFFCLL) > a4[1] || (v33 = a4[2], v32 > v33) && v33 || (v34 = v25 + 1 + v24, v35 = 2 * v34, 2 * v34 > *a8) || ((2 * (v34 + (v34 >> 63))) & 0xFFFFFFFFFFFFFFFCLL) > a8[1] || (v36 = a8[2], v35 > v36) && v36)
    {
      --v25;
      --v26;
    }

    else
    {
      v29 = v71.i64[0] + 1;
      v30 = v72.i64[0] + 1;
      ++v26;
      ++v25;
    }
  }

  v37 = v68.i64[1];
  v38 = v70.i64[1];
  if (v67.i8[8])
  {
    v38 = v70.i64[1] - 1;
    v39 = v69.i64[1] + 1;
  }

  else
  {
    v39 = v69.i64[1];
  }

  if (v67.i8[8])
  {
    v37 = v68.i64[1] - 1;
    v40 = v67.i64[1] + 1;
  }

  else
  {
    v40 = v67.i64[1];
  }

  v41 = v71.i64[1];
  v42 = v72.i64[1];
  if (v37)
  {
    if (v23.i8[6] & 1 | v23.i8[2] & 1 || (v43 = v38 + 1 + v39, (*a4 * v43) > *a5) || (a4[1] * (v43 / 2)) > a5[1] || (a4[2] * v43) > a5[2] || (v44 = v37 + 1 + v40, (*a8 * v44) > *a9) || (a8[1] * (v44 / 2)) > a9[1] || (a8[2] * v44) > a9[2])
    {
      --v37;
      --v38;
    }

    else
    {
      v41 = v71.i64[1] + 1;
      v42 = v72.i64[1] + 1;
      ++v38;
      ++v37;
    }
  }

  if (v26 + v27 > v30)
  {
    v26 = v30 - v27;
  }

  if (v25 + v24 > v29)
  {
    v25 = v29 - v24;
  }

  if (v38 + v39 > v42)
  {
    v38 = v42 - v39;
  }

  if (v37 + v40 > v41)
  {
    v37 = v41 - v40;
  }

  if (v26 >= v25)
  {
    v45 = v25;
  }

  else
  {
    v45 = v26;
  }

  if (v38 >= v37)
  {
    v46 = v37;
  }

  else
  {
    v46 = v38;
  }

  v47 = v46 + v39 - 1;
  v48 = v45 + v27;
  v49 = (v47 * *a4 + 2 * (v45 + v27)) > *a5;
  v65 = v24;
  v66 = v14;
  v63 = a9;
  v64 = v27;
  v61 = v30;
  v62 = v29;
  v70.i64[0] = v40;
  v69.i64[0] = v39;
  v72.i64[0] = v41;
  v71.i64[0] = v42;
  v68.i64[0] = v45;
  if (v49)
  {
    v50 = v13;
    v51 = a5;
    v52 = a8;
    v53 = v15;
    goto LABEL_64;
  }

  if (*(v13 + 8) && a4[1] * ((v46 + v39 + 1) / 2 - 1) + 4 * ((v48 + 1 + ((v48 + 1) >> 63)) >> 1) > a5[1])
  {
    v50 = v13;
    v51 = a5;
    v52 = a8;
    v53 = v15;
    goto LABEL_64;
  }

  if (*(v13 + 16) && (2 * v48 + a4[2] * v47) > a5[2])
  {
    v50 = v13;
    v51 = a5;
    v52 = a8;
    v53 = v15;
    goto LABEL_64;
  }

  v54 = v46 + v40 - 1;
  v55 = v45 + v24;
  if ((*a8 * v54 + 2 * (v45 + v24)) > *a9)
  {
    v50 = v13;
    v51 = a5;
    v52 = a8;
    v53 = v15;
    goto LABEL_64;
  }

  if (*(a7 + 8) && a8[1] * ((v46 + v40 + 1) / 2 - 1) + 4 * ((v55 + 1 + ((v55 + 1) >> 63)) >> 1) > a9[1])
  {
    v50 = v13;
    v51 = a5;
    v52 = a8;
    v53 = v15;
    goto LABEL_64;
  }

  if (*(a7 + 16) && (2 * v55 + a8[2] * v54) > a9[2])
  {
    v50 = v13;
    v51 = a5;
    v52 = a8;
    v53 = v15;
LABEL_64:
    fig_log_get_emitter();
    v20 = FigSignalErrorAtGM();
    v15 = v53;
    a8 = v52;
    a5 = v51;
    v13 = v50;
    v24 = v65;
    v14 = v66;
    v28 = v63;
    v27 = v64;
    v30 = v61;
    v29 = v62;
    v40 = v70.i64[0];
    v39 = v69.i64[0];
    v41 = v72.i64[0];
    v42 = v71.i64[0];
    v45 = v68.i64[0];
    if (v20)
    {
      goto LABEL_70;
    }
  }

  *v19 = v15;
  *(v19 + 4) = v30;
  *(v19 + 12) = v42;
  *(v19 + 20) = v45;
  *(v19 + 28) = v46;
  *(v19 + 36) = v27;
  *(v19 + 44) = v39;
  v19[11] = v41;
  v19[12] = v45;
  v19[13] = v46;
  v19[14] = v24;
  v19[7] = v13;
  v19[8] = a4;
  v19[9] = a5;
  v19[10] = v29;
  v19[15] = v40;
  v19[16] = a7;
  v19[17] = a8;
  v19[18] = v28;
  v19[19] = v14;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v15, global_queue, v19, vt_Copy_xf420_TRC_Tone_Mat_TRC_xf420_GCD);
  if (!v15)
  {
    return 0;
  }

  v57 = (v19 + 20);
  v58 = v15;
  while (1)
  {
    v59 = *v57++;
    v20 = v59;
    if (v59)
    {
      break;
    }

    if (!--v58)
    {
      v20 = 0;
      break;
    }
  }

LABEL_70:
  if (v15 == 255)
  {
    goto LABEL_71;
  }

  return v20;
}

void *vt_Copy_xf420_TRC_Tone_Mat_TRC_xf420_GCD(void *result, uint64_t a2, double a3, double a4, float a5, float a6)
{
  v9 = result;
  v198 = *(result + 36);
  v10 = 2 * *result;
  v197 = *(result + 44) + 2 * (*(result + 28) * a2 / v10);
  v11 = result[14];
  v12 = result[13];
  v202 = result[12];
  v13 = v12 * a2 / v10;
  v14 = result[15] + 2 * v13;
  v15 = 2 * ((v12 + v12 * a2) / v10 - v13);
  v16 = result[7];
  v17 = result[8];
  v18 = result[16];
  v19 = result[17];
  v20 = v17[2];
  v200 = v16[2];
  v21 = v19[2];
  v199 = v18[2];
  v22 = (v199 + v21 * v14 + 2 * v11);
  if (v15 >= 1)
  {
    v23 = 0;
    v24 = result[19];
    v25 = v202 & 0xFFFFFFFE;
    v26 = *v17;
    v27 = v17[1];
    v28 = *v19;
    v29 = v19[1];
    LOWORD(a5) = *(v24 + 140);
    LOWORD(a6) = *(v24 + 142);
    LOWORD(v6) = *(v24 + 144);
    LOWORD(v7) = *(v24 + 146);
    LOWORD(v8) = *(v24 + 148);
    v30 = 8191.0 / *(v24 + 128);
    v31 = LODWORD(a5);
    v32 = LODWORD(a6);
    v33 = v30 * *v24;
    v226 = v30 * *(v24 + 16);
    v227 = v30 * *(v24 + 8);
    v34 = v30 * *(v24 + 20);
    *&v35 = v30 * *(v24 + 28);
    v224 = *&v35;
    v225 = v34;
    v36 = v6;
    v37 = v7;
    v38 = v8;
    LOWORD(v35) = *(v24 + 150);
    v39 = v35;
    v231 = v39;
    v220 = *(v24 + 40);
    v221 = *(v24 + 36);
    v219 = *(v24 + 44);
    v217 = *(v24 + 52) * 0.25;
    v218 = *(v24 + 48) * 0.25;
    v215 = *(v24 + 60) * 0.25;
    v216 = *(v24 + 56) * 0.25;
    v213 = *(v24 + 72);
    v214 = *(v24 + 64) * 0.25;
    v211 = *(v24 + 76);
    v212 = *(v24 + 68) * 0.25;
    v209 = *(v24 + 84);
    v210 = *(v24 + 80);
    v207 = *(v24 + 92);
    v208 = *(v24 + 88);
    v205 = *(v24 + 100);
    v206 = *(v24 + 96);
    v204 = *(v24 + 104);
    result = (v24 + 164);
    v40 = v24 + 16548;
    v41 = v24 + 32932;
    v42 = v18[1];
    v43 = (*v18 + v28 * v14 + 2 * v11);
    v44 = *(v24 + 132);
    if (v44 >= 0x11)
    {
      v45 = 0;
    }

    else
    {
      v45 = 16 - v44;
    }

    v46 = *(v24 + 124);
    v47 = v16[1];
    v48 = (*v16 + v26 * v197 + 2 * v198);
    if (v46 >= 0x11)
    {
      v49 = 0;
    }

    else
    {
      v49 = 16 - v46;
    }

    v50 = v42 + v29 * (v14 / 2) + 2 * v11;
    v51 = v47 + v27 * (v197 / 2) + 2 * v198;
    v52 = v45;
    v54 = *(v24 + 108);
    v53 = *(v24 + 112);
    v55 = *(v24 + 116);
    v56 = *(v24 + 120);
    v229 = LODWORD(a6);
    v230 = v31;
    v228 = v33;
    LOWORD(v39) = *(v24 + 152);
    v222 = LODWORD(v39);
    v223 = v37;
    v203 = v53;
    do
    {
      v57 = &v48[v26];
      v58 = &v43[v28];
      if (v25 >= 1)
      {
        v59 = 0;
        v60 = &v48[v26];
        v61 = &v43[v28];
        do
        {
          v62 = (v51 + 2 * v59);
          v63 = (v62[1] >> v49) - v32;
          v64 = v227 * v63;
          v65 = v33 * ((*v48 >> v49) - v31);
          v66 = (v227 * v63) + v65;
          v67 = 8191.0;
          if (v66 <= 8191.0)
          {
            v67 = (v227 * v63) + v65;
            if (v66 < 0.0)
            {
              v67 = 0.0;
            }
          }

          v68 = (*v62 >> v49) - v32;
          v69 = (v225 * v63) + (v68 * v226);
          v70 = 8191.0;
          if ((v65 + v69) <= 8191.0)
          {
            v70 = v65 + v69;
            if ((v65 + v69) < 0.0)
            {
              v70 = 0.0;
            }
          }

          v71 = v224 * v68;
          v72 = (v224 * v68) + v65;
          v73 = 8191.0;
          if (v72 <= 8191.0)
          {
            v73 = v72;
            if (v72 < 0.0)
            {
              v73 = 0.0;
            }
          }

          v74 = v33 * ((*(v48 + 1) >> v49) - v31);
          v75 = 8191.0;
          if ((v64 + v74) <= 8191.0)
          {
            v75 = v64 + v74;
            if ((v64 + v74) < 0.0)
            {
              v75 = 0.0;
            }
          }

          v76 = 8191.0;
          if ((v69 + v74) <= 8191.0)
          {
            v76 = v69 + v74;
            if ((v69 + v74) < 0.0)
            {
              v76 = 0.0;
            }
          }

          v77 = v71 + v74;
          v78 = 8191.0;
          if (v77 <= 8191.0)
          {
            v78 = v77;
            if (v77 < 0.0)
            {
              v78 = 0.0;
            }
          }

          v79 = v33 * ((*v60 >> v49) - v31);
          v80 = 8191.0;
          if ((v64 + v79) <= 8191.0)
          {
            v80 = v64 + v79;
            if ((v64 + v79) < 0.0)
            {
              v80 = 0.0;
            }
          }

          v81 = 8191.0;
          if ((v69 + v79) <= 8191.0)
          {
            v81 = v69 + v79;
            if ((v69 + v79) < 0.0)
            {
              v81 = 0.0;
            }
          }

          v82 = v71 + v79;
          v83 = 8191.0;
          if (v82 <= 8191.0)
          {
            v83 = v82;
            if (v82 < 0.0)
            {
              v83 = 0.0;
            }
          }

          v84 = v33 * ((*(v60 + 1) >> v49) - v31);
          v85 = v64 + v84;
          v86 = (v64 + v84) <= 8191.0;
          v87 = 8191.0;
          if (v86)
          {
            v87 = v85;
            if (v85 < 0.0)
            {
              v87 = 0.0;
            }
          }

          v88 = v69 + v84;
          v86 = (v69 + v84) <= 8191.0;
          v89 = 8191.0;
          if (v86)
          {
            v89 = v88;
            if (v88 < 0.0)
            {
              v89 = 0.0;
            }
          }

          v90 = v71 + v84;
          v91 = 8191.0;
          if (v90 <= 8191.0)
          {
            v91 = v90;
            if (v90 < 0.0)
            {
              v91 = 0.0;
            }
          }

          _H19 = *(result + llroundf(fminf(fmaxf(v67, 0.0), 8191.0)));
          __asm { FCVT            S19, H19 }

          _H20 = *(result + llroundf(fminf(fmaxf(v70, 0.0), 8191.0)));
          __asm { FCVT            S24, H20 }

          _H20 = *(result + llroundf(fminf(fmaxf(v73, 0.0), 8191.0)));
          __asm { FCVT            S25, H20 }

          _H28 = *(result + llroundf(fminf(fmaxf(v75, 0.0), 8191.0)));
          _H23 = *(result + llroundf(fminf(fmaxf(v76, 0.0), 8191.0)));
          _H20 = *(result + llroundf(fminf(fmaxf(v78, 0.0), 8191.0)));
          _H17 = *(result + llroundf(fminf(fmaxf(v80, 0.0), 8191.0)));
          _H26 = *(result + llroundf(fminf(fmaxf(v81, 0.0), 8191.0)));
          _H21 = *(result + llroundf(fminf(fmaxf(v83, 0.0), 8191.0)));
          _H1 = *(result + llroundf(fminf(fmaxf(v87, 0.0), 8191.0)));
          _H2 = *(result + llroundf(fminf(fmaxf(v89, 0.0), 8191.0)));
          _H3 = *(result + llroundf(fminf(fmaxf(v91, 0.0), 8191.0)));
          v111 = (((v53 * _S24) + (v54 * _S19)) + (v55 * _S25)) + (v56 * fmaxf(_S19, fmaxf(_S24, _S25)));
          v112 = 8191.0;
          if (v111 <= 8191.0)
          {
            v112 = v111;
            if (v111 < 0.0)
            {
              v112 = 0.0;
            }
          }

          __asm
          {
            FCVT            S27, H28
            FCVT            S28, H23
            FCVT            S30, H20
          }

          _H22 = *(v40 + 2 * llroundf(v112));
          v117 = (((v53 * _S28) + (v54 * _S27)) + (v55 * _S30)) + (v56 * fmaxf(_S27, fmaxf(_S28, _S30)));
          v118 = 8191.0;
          if (v117 <= 8191.0)
          {
            v118 = v117;
            if (v117 < 0.0)
            {
              v118 = 0.0;
            }
          }

          __asm
          {
            FCVT            S8, H17
            FCVT            S9, H26
            FCVT            S10, H21
          }

          _H17 = *(v40 + 2 * llroundf(v118));
          v123 = fmaxf(_S8, fmaxf(_S9, _S10));
          v124 = (((v53 * _S9) + (v54 * _S8)) + (v55 * _S10)) + (v56 * v123);
          v125 = 8191.0;
          if (v124 <= 8191.0)
          {
            v125 = (((v53 * _S9) + (v54 * _S8)) + (v55 * _S10)) + (v56 * v123);
            if (v124 < 0.0)
            {
              v125 = 0.0;
            }
          }

          __asm
          {
            FCVT            S26, H1
            FCVT            S29, H2
            FCVT            S31, H3
            FCVT            S1, H22
          }

          v130 = _S19 * _S1;
          v131 = _S24 * _S1;
          v132 = _S25 * _S1;
          __asm { FCVT            S1, H17 }

          v134 = _S27 * _S1;
          v135 = _S28 * _S1;
          v136 = _S30 * _S1;
          LOWORD(_S1) = *(v40 + 2 * llroundf(v125));
          __asm { FCVT            S2, H1 }

          v138 = _S8 * _S2;
          v139 = _S9 * _S2;
          v140 = _S10 * _S2;
          v141 = (((v53 * _S29) + (v54 * _S26)) + (v55 * _S31)) + (v56 * fmaxf(_S26, fmaxf(_S29, _S31)));
          v142 = 8191.0;
          if (v141 <= 8191.0)
          {
            v142 = v141;
            if (v141 < 0.0)
            {
              v142 = 0.0;
            }
          }

          _H24 = *(v40 + 2 * llroundf(v142));
          __asm { FCVT            S24, H24 }

          v145 = _S26 * _S24;
          v146 = _S29 * _S24;
          v147 = _S31 * _S24;
          v148 = ((v211 * v131) + (v130 * v213)) + (v132 * v210);
          v149 = ((v208 * v131) + (v130 * v209)) + (v132 * v207);
          _S20 = ((v205 * v131) + (v130 * v206)) + (v132 * v204);
          _S22 = ((v211 * v135) + (v134 * v213)) + (v136 * v210);
          v152 = ((v208 * v135) + (v134 * v209)) + (v136 * v207);
          _S19 = ((v205 * v135) + (v134 * v206)) + (v136 * v204);
          v154 = ((v211 * v139) + (v138 * v213)) + (v140 * v210);
          v155 = ((v208 * v139) + (v138 * v209)) + (v140 * v207);
          v156 = ((v205 * v139) + (v138 * v206)) + (v140 * v204);
          v157 = ((v211 * v146) + (v145 * v213)) + (v147 * v210);
          v158 = ((v208 * v146) + (v145 * v209)) + (v147 * v207);
          v159 = ((v205 * v146) + (v145 * v206)) + (v147 * v204);
          _H1 = *(v41 + 2 * llroundf(fminf(fmaxf(v148, 0.0), 8191.0)));
          __asm { FCVT            S1, H1 }

          _H2 = *(v41 + 2 * llroundf(fminf(fmaxf(v149, 0.0), 8191.0)));
          __asm { FCVT            S2, H2 }

          _H3 = *(v41 + 2 * llroundf(fminf(fmaxf(_S20, 0.0), 8191.0)));
          LOWORD(_S20) = *(v41 + 2 * llroundf(fminf(fmaxf(_S22, 0.0), 8191.0)));
          __asm
          {
            FCVT            S17, H3
            FCVT            S3, H20
          }

          LOWORD(_S20) = *(v41 + 2 * llroundf(fminf(fmaxf(v152, 0.0), 8191.0)));
          __asm { FCVT            S24, H20 }

          LOWORD(_S19) = *(v41 + 2 * llroundf(fminf(fmaxf(_S19, 0.0), 8191.0)));
          __asm { FCVT            S19, H19 }

          LOWORD(_S20) = *(v41 + 2 * llroundf(fminf(fmaxf(v154, 0.0), 8191.0)));
          __asm { FCVT            S25, H20 }

          LOWORD(_S20) = *(v41 + 2 * llroundf(fminf(fmaxf(v155, 0.0), 8191.0)));
          __asm { FCVT            S26, H20 }

          LOWORD(_S20) = *(v41 + 2 * llroundf(fminf(fmaxf(v156, 0.0), 8191.0)));
          LOWORD(_S22) = *(v41 + 2 * llroundf(fminf(fmaxf(v157, 0.0), 8191.0)));
          __asm
          {
            FCVT            S21, H20
            FCVT            S28, H22
          }

          LOWORD(_S20) = *(v41 + 2 * llroundf(fminf(fmaxf(v158, 0.0), 8191.0)));
          __asm { FCVT            S30, H20 }

          LOWORD(_S20) = *(v41 + 2 * llroundf(fminf(fmaxf(v159, 0.0), 8191.0)));
          __asm { FCVT            S27, H20 }

          v175 = (((v220 * _S2) + (v221 * _S1)) + (v219 * _S17)) + v36;
          if (v175 < v36)
          {
            v176 = v36;
          }

          else
          {
            v176 = (((v220 * _S2) + (v221 * _S1)) + (v219 * _S17)) + v36;
          }

          v86 = v175 <= v38;
          v177 = (((v220 * _S24) + (v221 * _S3)) + (v219 * _S19)) + v36;
          if (!v86)
          {
            v176 = v38;
          }

          v178 = llroundf(v176);
          if (v177 < v36)
          {
            v179 = v36;
          }

          else
          {
            v179 = (((v220 * _S24) + (v221 * _S3)) + (v219 * _S19)) + v36;
          }

          v86 = v177 <= v38;
          v180 = (((v220 * _S26) + (v221 * _S25)) + (v219 * _S21)) + v36;
          if (!v86)
          {
            v179 = v38;
          }

          v181 = llroundf(v179);
          if (v180 < v36)
          {
            v182 = v36;
          }

          else
          {
            v182 = (((v220 * _S26) + (v221 * _S25)) + (v219 * _S21)) + v36;
          }

          v86 = v180 <= v38;
          v183 = (((v220 * _S30) + (v221 * _S28)) + (v219 * _S27)) + v36;
          if (!v86)
          {
            v182 = v38;
          }

          v184 = llroundf(v182);
          if (v183 < v36)
          {
            v185 = v36;
          }

          else
          {
            v185 = (((v220 * _S30) + (v221 * _S28)) + (v219 * _S27)) + v36;
          }

          if (v183 <= v38)
          {
            v186 = v185;
          }

          else
          {
            v186 = v38;
          }

          v187 = ((_S1 + _S3) + _S25) + _S28;
          v188 = ((_S2 + _S24) + _S26) + _S30;
          *v43 = v178 << v52;
          *(v43 + 1) = v181 << v52;
          *v61 = v184 << v52;
          *(v61 + 1) = llroundf(v186) << v52;
          v189 = ((_S17 + _S19) + _S21) + _S27;
          v190 = ((v223 + (v187 * v218)) + (v188 * v217)) + (v189 * v216);
          v191 = v222;
          if (v190 <= v222)
          {
            v191 = ((v223 + (v187 * v218)) + (v188 * v217)) + (v189 * v216);
            if (v190 < v231)
            {
              v191 = v231;
            }
          }

          v192 = (v50 + 2 * v59);
          v193 = ((v223 + (v187 * v215)) + (v188 * v214)) + (v189 * v212);
          *v192 = llroundf(v191) << v52;
          v194 = v222;
          v32 = v229;
          v31 = v230;
          v33 = v228;
          if (v193 <= v222)
          {
            v194 = v193;
            if (v193 < v231)
            {
              v194 = v231;
            }
          }

          v48 += 4;
          v60 += 4;
          v43 += 4;
          v61 += 4;
          v192[1] = llroundf(v194) << v52;
          v59 += 2;
          v53 = v203;
        }

        while (v59 < v25);
      }

      v48 = &v57[v26];
      v51 += v27;
      v43 = &v58[v28];
      v50 += v29;
      v23 += 2;
    }

    while (v23 < v15);
  }

  if (v200 && v199)
  {
    if (v15 >= 1)
    {
      v195 = 0;
      v196 = (v200 + v20 * v197 + 2 * v198);
      do
      {
        result = memcpy(v22, v196, 2 * v202);
        v196 += v20;
        v22 += v21;
        ++v195;
      }

      while (v15 > v195);
    }
  }

  else if (v199 && v15 >= 1)
  {
    do
    {
      if (v202 >= 1)
      {
        result = memset(v22, 255, 2 * v202);
      }

      v22 += v21;
      --v15;
    }

    while (v15);
  }

  *(v9 + a2 + 40) = 0;
  return result;
}

uint64_t vt_Copy_xf420_TRC_Mat_TRC_xf420_neon_fp16(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v13 = a3;
  v14 = a1;
  v73 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v69 = a2[2];
  v70 = v17;
  v18 = a6[1];
  v71 = *a6;
  v72 = v16;
  v67 = a6[2];
  v68 = v18;
  if (v15 == 255)
  {
    v19 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v19)
    {
      v20 = 0;
LABEL_71:
      free(v19);
      return v20;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v19 = (&v61 - v21);
    bzero(&v61 - v21, v22);
  }

  v23 = vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_s64(vaddq_s64(v67, v68), v71), vceqq_s64(vaddq_s64(v69, v70), v72))));
  v24 = v67.i64[0];
  v25 = v68.i64[0];
  v26 = v70.i64[0];
  v27 = v69.i64[0];
  if (v67.i8[0])
  {
    v24 = v67.i64[0] + 1;
    v27 = v69.i64[0] + 1;
    v25 = v68.i64[0] - 1;
    v26 = v70.i64[0] - 1;
  }

  v28 = a9;
  v29 = v71.i64[0];
  v30 = v72.i64[0];
  if (v25)
  {
    if (v23.i8[4] & 1 | v23.i8[0] & 1 || (v31 = v26 + 1 + v27, v32 = 2 * v31, 2 * v31 > *a4) || ((2 * (v31 + (v31 >> 63))) & 0xFFFFFFFFFFFFFFFCLL) > a4[1] || (v33 = a4[2], v32 > v33) && v33 || (v34 = v25 + 1 + v24, v35 = 2 * v34, 2 * v34 > *a8) || ((2 * (v34 + (v34 >> 63))) & 0xFFFFFFFFFFFFFFFCLL) > a8[1] || (v36 = a8[2], v35 > v36) && v36)
    {
      --v25;
      --v26;
    }

    else
    {
      v29 = v71.i64[0] + 1;
      v30 = v72.i64[0] + 1;
      ++v26;
      ++v25;
    }
  }

  v37 = v68.i64[1];
  v38 = v70.i64[1];
  if (v67.i8[8])
  {
    v38 = v70.i64[1] - 1;
    v39 = v69.i64[1] + 1;
  }

  else
  {
    v39 = v69.i64[1];
  }

  if (v67.i8[8])
  {
    v37 = v68.i64[1] - 1;
    v40 = v67.i64[1] + 1;
  }

  else
  {
    v40 = v67.i64[1];
  }

  v41 = v71.i64[1];
  v42 = v72.i64[1];
  if (v37)
  {
    if (v23.i8[6] & 1 | v23.i8[2] & 1 || (v43 = v38 + 1 + v39, (*a4 * v43) > *a5) || (a4[1] * (v43 / 2)) > a5[1] || (a4[2] * v43) > a5[2] || (v44 = v37 + 1 + v40, (*a8 * v44) > *a9) || (a8[1] * (v44 / 2)) > a9[1] || (a8[2] * v44) > a9[2])
    {
      --v37;
      --v38;
    }

    else
    {
      v41 = v71.i64[1] + 1;
      v42 = v72.i64[1] + 1;
      ++v38;
      ++v37;
    }
  }

  if (v26 + v27 > v30)
  {
    v26 = v30 - v27;
  }

  if (v25 + v24 > v29)
  {
    v25 = v29 - v24;
  }

  if (v38 + v39 > v42)
  {
    v38 = v42 - v39;
  }

  if (v37 + v40 > v41)
  {
    v37 = v41 - v40;
  }

  if (v26 >= v25)
  {
    v45 = v25;
  }

  else
  {
    v45 = v26;
  }

  if (v38 >= v37)
  {
    v46 = v37;
  }

  else
  {
    v46 = v38;
  }

  v47 = v46 + v39 - 1;
  v48 = v45 + v27;
  v49 = (v47 * *a4 + 2 * (v45 + v27)) > *a5;
  v65 = v24;
  v66 = v14;
  v63 = a9;
  v64 = v27;
  v61 = v30;
  v62 = v29;
  v70.i64[0] = v40;
  v69.i64[0] = v39;
  v72.i64[0] = v41;
  v71.i64[0] = v42;
  v68.i64[0] = v45;
  if (v49)
  {
    v50 = v13;
    v51 = a5;
    v52 = a8;
    v53 = v15;
    goto LABEL_64;
  }

  if (*(v13 + 8) && a4[1] * ((v46 + v39 + 1) / 2 - 1) + 4 * ((v48 + 1 + ((v48 + 1) >> 63)) >> 1) > a5[1])
  {
    v50 = v13;
    v51 = a5;
    v52 = a8;
    v53 = v15;
    goto LABEL_64;
  }

  if (*(v13 + 16) && (2 * v48 + a4[2] * v47) > a5[2])
  {
    v50 = v13;
    v51 = a5;
    v52 = a8;
    v53 = v15;
    goto LABEL_64;
  }

  v54 = v46 + v40 - 1;
  v55 = v45 + v24;
  if ((*a8 * v54 + 2 * (v45 + v24)) > *a9)
  {
    v50 = v13;
    v51 = a5;
    v52 = a8;
    v53 = v15;
    goto LABEL_64;
  }

  if (*(a7 + 8) && a8[1] * ((v46 + v40 + 1) / 2 - 1) + 4 * ((v55 + 1 + ((v55 + 1) >> 63)) >> 1) > a9[1])
  {
    v50 = v13;
    v51 = a5;
    v52 = a8;
    v53 = v15;
    goto LABEL_64;
  }

  if (*(a7 + 16) && (2 * v55 + a8[2] * v54) > a9[2])
  {
    v50 = v13;
    v51 = a5;
    v52 = a8;
    v53 = v15;
LABEL_64:
    fig_log_get_emitter();
    v20 = FigSignalErrorAtGM();
    v15 = v53;
    a8 = v52;
    a5 = v51;
    v13 = v50;
    v24 = v65;
    v14 = v66;
    v28 = v63;
    v27 = v64;
    v30 = v61;
    v29 = v62;
    v40 = v70.i64[0];
    v39 = v69.i64[0];
    v41 = v72.i64[0];
    v42 = v71.i64[0];
    v45 = v68.i64[0];
    if (v20)
    {
      goto LABEL_70;
    }
  }

  *v19 = v15;
  *(v19 + 4) = v30;
  *(v19 + 12) = v42;
  *(v19 + 20) = v45;
  *(v19 + 28) = v46;
  *(v19 + 36) = v27;
  *(v19 + 44) = v39;
  v19[11] = v41;
  v19[12] = v45;
  v19[13] = v46;
  v19[14] = v24;
  v19[7] = v13;
  v19[8] = a4;
  v19[9] = a5;
  v19[10] = v29;
  v19[15] = v40;
  v19[16] = a7;
  v19[17] = a8;
  v19[18] = v28;
  v19[19] = v14;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v15, global_queue, v19, vt_Copy_xf420_TRC_Mat_TRC_xf420_neon_fp16_GCD);
  if (!v15)
  {
    return 0;
  }

  v57 = (v19 + 20);
  v58 = v15;
  while (1)
  {
    v59 = *v57++;
    v20 = v59;
    if (v59)
    {
      break;
    }

    if (!--v58)
    {
      v20 = 0;
      break;
    }
  }

LABEL_70:
  if (v15 == 255)
  {
    goto LABEL_71;
  }

  return v20;
}

float32x2_t *vt_Copy_xf420_TRC_Mat_TRC_xf420_neon_fp16_GCD(float32x2_t *result, uint64_t a2, double a3, double a4, double a5, double a6, double a7, int16x4_t a8)
{
  v13 = 2 * result->u8[0];
  v271 = *(&result[5] + 4) + 2 * (*(&result[3] + 4) * a2 / v13);
  v272 = *(&result[4] + 4);
  v14 = result[14];
  v16 = result[12];
  v15 = result[13];
  v277 = result;
  v17 = *&v15 * a2 / v13;
  v18 = *&result[15] + 2 * v17;
  v19 = 2 * ((*&v15 + *&v15 * a2) / v13 - v17);
  v20 = result[7];
  v21 = result[8];
  v22 = result[16];
  v23 = result[17];
  v270 = v21[2];
  v274 = v20[2];
  v275 = v23[2];
  v273 = v22[2];
  v24 = (v273 + v275 * v18 + 2 * *&v14);
  if (v19 >= 1)
  {
    v25 = 0;
    v26 = result[19];
    v28 = *v21;
    v27 = v21[1];
    v30 = *v23;
    v29 = v23[1];
    v31 = v26[17].u16[2];
    v32 = v26[17].u16[3];
    a8.i32[0] = v26->i32[0];
    v10.i32[0] = v26[3].i32[1];
    v33 = v26[18].u16[0];
    v34 = v26[18].u16[1];
    v35 = v26[18].u16[2];
    v36 = v26[18].u16[3];
    v37 = v26[19].u16[0];
    _S7 = v26[4].i32[1];
    _S19 = v26[5].i32[0];
    _S25 = v26[5].i32[1];
    v40.i32[0] = v26[6].i32[0];
    v43.i32[0] = v26[6].i32[1];
    v42.i32[0] = v26[7].i32[0];
    v44 = 8191.0 / v26[16].u32[0];
    v326 = v31;
    _S20 = v26[9].i32[1];
    v314 = v26[9].f32[0];
    _S6 = v44 * v26->f32[0];
    v325 = _S6;
    *a8.i16 = v31;
    v47 = vdupq_lane_s16(a8, 0);
    _S23 = v26[10].i32[0];
    _S26 = v26[10].i32[1];
    v50 = -v32;
    v10.i32[1] = v26[1].i32[0];
    _S27 = v26[11].i32[0];
    v313 = v26[11].f32[1];
    *v12.f32 = vmul_n_f32(*v10.f32, v44);
    v52 = vdupq_lane_s32(vcvt_f16_f32(v12), 0);
    *v10.f32 = vmul_n_f32(v26[2], v44);
    v53 = vdupq_lane_s32(vcvt_f16_f32(v10), 0);
    _S17 = v26[12].i32[0];
    _S24 = v26[12].i32[1];
    result = (v26 + 164);
    v56 = v16 & 0xFFFFFFFE;
    v57 = &v26[2068] + 4;
    v321 = vmulq_n_f16(v52, v50);
    v58 = vmulq_n_f16(v53, v50);
    v40.i32[1] = v26[7].i32[1];
    __asm { FMOV            V4.2S, #0.25 }

    *v8.f32 = vmul_f32(v40, _D4);
    v312 = vdupq_lane_s32(vcvt_f16_f32(v8), 0);
    v43.i32[1] = v26[8].i32[0];
    *v9.f32 = vmul_f32(v43, _D4);
    v64 = vdupq_lane_s32(vcvt_f16_f32(v9), 0);
    v42.i32[1] = v26[8].i32[1];
    *v11.f32 = vmul_f32(v42, _D4);
    v65 = vcvt_f16_f32(v11);
    v66 = vdupq_lane_s32(v65, 0);
    *v65.i16 = v33;
    v67 = vdupq_lane_s16(v65, 0);
    *v65.i16 = v34;
    v68 = vdupq_lane_s16(v65, 0);
    *v65.i16 = v35;
    v69 = vdupq_lane_s16(v65, 0);
    *v65.i16 = v36;
    v70 = vdupq_lane_s16(v65, 0);
    *v65.i16 = v37;
    v71 = vdupq_lane_s16(v65, 0);
    v72 = v26[16].u8[4];
    if (v72 >= 0x11)
    {
      v73 = 0;
    }

    else
    {
      v73 = 16 - v72;
    }

    v74 = v26[15].u8[4];
    if (v74 >= 0x11)
    {
      v75 = 0;
    }

    else
    {
      v75 = 16 - v74;
    }

    v76 = *v22;
    v278 = v29;
    v77 = v22[1] + v29 * (v18 / 2) + 2 * *&v14;
    v78 = (v76 + v30 * v18 + 2 * *&v14);
    v79 = v20[1] + v27 * (v271 / 2) + 2 * v272;
    v80 = (*v20 + v28 * v271 + 2 * v272);
    v81 = v33;
    v319 = v34;
    v320 = v32;
    v291 = v35;
    v315 = v36;
    v318 = v37;
    __asm { FCVT            H2, S6 }

    v290 = _H2;
    v311 = v26[4].f32[1];
    __asm { FCVT            H11, S7 }

    v84 = v53;
    v85 = v47;
    v310 = v26[5].f32[0];
    __asm { FCVT            H8, S19 }

    v87 = v58;
    v309 = v26[5].f32[1];
    __asm { FCVT            H5, S25 }

    _Q0 = v64;
    _S1 = v26[9].i32[0];
    __asm { FCVT            H1, S1 }

    v286 = *&_S1;
    v308 = v26[9].f32[1];
    __asm { FCVT            H12, S20 }

    v92 = v67;
    v307 = v26[10].f32[0];
    __asm { FCVT            H13, S23 }

    v94 = _Q0;
    v306 = v26[10].f32[1];
    __asm { FCVT            H1, S26 }

    v283 = *&_S1;
    v95 = v69;
    v305 = v26[11].f32[0];
    __asm { FCVT            H15, S27 }

    _Q0.i32[0] = v26[11].i32[1];
    __asm { FCVT            H1, S0 }

    v282 = *&_S1;
    v97 = v70;
    v98 = v66;
    v304 = v26[12].f32[0];
    __asm { FCVT            H1, S17 }

    v303 = v26[12].f32[1];
    __asm { FCVT            H0, S24 }

    v99 = v97;
    v316 = _Q0;
    v100 = v68;
    v101 = *&_S1;
    v289 = v26[13].f32[0];
    __asm { FCVT            H0, S2 }

    v102 = v321;
    v281 = *_Q0.i16;
    v103 = vdupq_n_s16(-v75);
    v322 = vdupq_n_s16(v73);
    v104 = v12.i64[0];
    v105 = v312;
    v299 = v9.f32[0];
    v300 = v8.f32[0];
    v279 = v9.f32[1];
    v280 = v8.f32[1];
    v323 = _H15;
    v324 = v103;
    v317 = v101;
    v301 = v87;
    v302 = v47;
    v298 = v94;
    v296 = v92;
    v297 = v66;
    v294 = v95;
    v295 = v100;
    v292 = v71;
    v293 = v99;
    v288 = v84;
    v287 = _H5;
    v284 = _H13;
    v285 = _H12;
    do
    {
      v106 = &v80->i8[v28];
      v107 = &v78->i8[v30];
      if (v16 < 8)
      {
        v168 = 0;
        v167 = v77;
        v111 = (v78 + v30);
        v166 = v79;
        v110 = (v80 + v28);
      }

      else
      {
        v108 = 0;
        v109 = 0;
        v110 = (v80 + v28);
        v111 = (v78 + v30);
        v112.i64[0] = 0x9000900090009000;
        v112.i64[1] = 0x9000900090009000;
        do
        {
          v113 = vcvtq_f16_u16(vshlq_u16(*(v79 + v108), v103));
          v114 = vmlaq_f16(v102, v52, v113);
          v115 = v87;
          v116 = vmlaq_f16(v87, v288, v113);
          v117 = vtrn2q_s16(v114, v114);
          v118 = vtrn1q_s16(v114, v114);
          v119 = vuzp1q_s16(v116, v113);
          *v119.i8 = vadd_f16(*v119.i8, *&vuzp2q_s16(v116, v119));
          v120 = vzip1q_s16(v119, v119);
          v121 = *v80++;
          v122 = vcvtq_f16_u16(vshlq_u16(v121, v324));
          v123 = *v110++;
          v124 = vsubq_f16(v122, v85);
          v125 = vsubq_f16(vcvtq_f16_u16(vshlq_u16(v123, v324)), v85);
          v126 = vmlaq_n_f16(v117, v124, v290);
          v127 = vmlaq_n_f16(v117, v125, v290);
          v128 = vmlaq_n_f16(v120, v124, v290);
          v129 = vmlaq_n_f16(v120, v125, v290);
          v130 = vmlaq_n_f16(v118, v124, v290);
          v131 = vmlaq_n_f16(v118, v125, v290);
          v132 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v126, 0), v112));
          v133.i16[0] = result->i16[v132.u16[0]];
          v133.i16[1] = result->i16[v132.u16[1]];
          v133.i16[2] = result->i16[v132.u16[2]];
          v133.i16[3] = result->i16[v132.u16[3]];
          v133.i16[4] = result->i16[v132.u16[4]];
          v133.i16[5] = result->i16[v132.u16[5]];
          v133.i16[6] = result->i16[v132.u16[6]];
          v133.i16[7] = result->i16[v132.u16[7]];
          v134 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v128, 0), v112));
          v135 = v100;
          v136.i16[0] = result->i16[v134.u16[0]];
          v136.i16[1] = result->i16[v134.u16[1]];
          v136.i16[2] = result->i16[v134.u16[2]];
          v136.i16[3] = result->i16[v134.u16[3]];
          v136.i16[4] = result->i16[v134.u16[4]];
          v136.i16[5] = result->i16[v134.u16[5]];
          v136.i16[6] = result->i16[v134.u16[6]];
          v136.i16[7] = result->i16[v134.u16[7]];
          v137 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v130, 0), v112));
          v138.i16[0] = result->i16[v137.u16[0]];
          v138.i16[1] = result->i16[v137.u16[1]];
          v138.i16[2] = result->i16[v137.u16[2]];
          v138.i16[3] = result->i16[v137.u16[3]];
          v138.i16[4] = result->i16[v137.u16[4]];
          v138.i16[5] = result->i16[v137.u16[5]];
          v138.i16[6] = result->i16[v137.u16[6]];
          v138.i16[7] = result->i16[v137.u16[7]];
          v139 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v127, 0), v112));
          v127.i16[0] = result->i16[v139.u16[0]];
          v127.i16[1] = result->i16[v139.u16[1]];
          v127.i16[2] = result->i16[v139.u16[2]];
          v127.i16[3] = result->i16[v139.u16[3]];
          v127.i16[4] = result->i16[v139.u16[4]];
          v127.i16[5] = result->i16[v139.u16[5]];
          v127.i16[6] = result->i16[v139.u16[6]];
          v127.i16[7] = result->i16[v139.u16[7]];
          v140 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v129, 0), v112));
          v141.i16[0] = result->i16[v140.u16[0]];
          v141.i16[1] = result->i16[v140.u16[1]];
          v141.i16[2] = result->i16[v140.u16[2]];
          v141.i16[3] = result->i16[v140.u16[3]];
          v141.i16[4] = result->i16[v140.u16[4]];
          v141.i16[5] = result->i16[v140.u16[5]];
          v141.i16[6] = result->i16[v140.u16[6]];
          v141.i16[7] = result->i16[v140.u16[7]];
          v142 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v131, 0), v112));
          v131.i16[0] = result->i16[v142.u16[0]];
          v131.i16[1] = result->i16[v142.u16[1]];
          v131.i16[2] = result->i16[v142.u16[2]];
          v131.i16[3] = result->i16[v142.u16[3]];
          v131.i16[4] = result->i16[v142.u16[4]];
          v131.i16[5] = result->i16[v142.u16[5]];
          v131.i16[6] = result->i16[v142.u16[6]];
          v131.i16[7] = result->i16[v142.u16[7]];
          v143 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v133, v286), v136, v285), v138, v284);
          v144 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v133, v283), v136, _H15), v138, v282);
          v145 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v138, v281), v136, *v316.i16), v133, v101);
          v146 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v143, 0), v112));
          v133.i16[0] = *&v57[2 * v146.u16[0]];
          v133.i16[1] = *&v57[2 * v146.u16[1]];
          v133.i16[2] = *&v57[2 * v146.u16[2]];
          v133.i16[3] = *&v57[2 * v146.u16[3]];
          v133.i16[4] = *&v57[2 * v146.u16[4]];
          v133.i16[5] = *&v57[2 * v146.u16[5]];
          v133.i16[6] = *&v57[2 * v146.u16[6]];
          v147 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v144, 0), v112));
          v136.i16[0] = *&v57[2 * v147.u16[0]];
          v136.i16[1] = *&v57[2 * v147.u16[1]];
          v136.i16[2] = *&v57[2 * v147.u16[2]];
          v136.i16[3] = *&v57[2 * v147.u16[3]];
          v136.i16[4] = *&v57[2 * v147.u16[4]];
          v136.i16[5] = *&v57[2 * v147.u16[5]];
          v136.i16[6] = *&v57[2 * v147.u16[6]];
          v148 = vuzp1q_s16(v133, v136);
          v133.i16[7] = *&v57[2 * v146.u16[7]];
          v149 = &v57[2 * v147.u16[7]];
          v150 = v136;
          v150.i16[7] = *v149;
          v151 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v145, 0), v112));
          v136.i16[0] = *&v57[2 * v151.u16[0]];
          v136.i16[1] = *&v57[2 * v151.u16[1]];
          v136.i16[2] = *&v57[2 * v151.u16[2]];
          v136.i16[3] = *&v57[2 * v151.u16[3]];
          v136.i16[4] = *&v57[2 * v151.u16[4]];
          v136.i16[5] = *&v57[2 * v151.u16[5]];
          v136.i16[6] = *&v57[2 * v151.u16[6]];
          v152 = v136;
          v152.i16[7] = *&v57[2 * v151.u16[7]];
          _H15 = v323;
          v153 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v127, v286), v141, v285), v131, v284), 0), v112));
          v151.i16[7] = v316.i16[7];
          v154 = vmlaq_n_f16(vmulq_n_f16(v131, v281), v141, *v316.i16);
          v151.i16[0] = *&v57[2 * v153.u16[0]];
          v151.i16[1] = *&v57[2 * v153.u16[1]];
          v151.i16[2] = *&v57[2 * v153.u16[2]];
          v151.i16[3] = *&v57[2 * v153.u16[3]];
          v151.i16[4] = *&v57[2 * v153.u16[4]];
          v151.i16[5] = *&v57[2 * v153.u16[5]];
          v151.i16[6] = *&v57[2 * v153.u16[6]];
          v155 = &v57[2 * v153.u16[7]];
          v156 = v151;
          v156.i16[7] = *v155;
          v101 = v317;
          v157 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v127, v283), v141, v323), v131, v282), 0), v112));
          v131.i16[0] = *&v57[2 * v157.u16[0]];
          v131.i16[1] = *&v57[2 * v157.u16[1]];
          v131.i16[2] = *&v57[2 * v157.u16[2]];
          v131.i16[3] = *&v57[2 * v157.u16[3]];
          v131.i16[4] = *&v57[2 * v157.u16[4]];
          v131.i16[5] = *&v57[2 * v157.u16[5]];
          v131.i16[6] = *&v57[2 * v157.u16[6]];
          v158 = &v57[2 * v157.u16[7]];
          v159 = v131;
          v159.i16[7] = *v158;
          v160 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(v154, v127, v317), 0), v112));
          v127.i16[0] = *&v57[2 * v160.u16[0]];
          v127.i16[1] = *&v57[2 * v160.u16[1]];
          v127.i16[2] = *&v57[2 * v160.u16[2]];
          v127.i16[3] = *&v57[2 * v160.u16[3]];
          v127.i16[4] = *&v57[2 * v160.u16[4]];
          v127.i16[5] = *&v57[2 * v160.u16[5]];
          v127.i16[6] = *&v57[2 * v160.u16[6]];
          v161 = &v57[2 * v160.u16[7]];
          v162 = v127;
          v162.i16[7] = *v161;
          *v78++ = vshlq_u16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v92, v133, _H11), v150, _H8), v152, v287), v92), v95)), v322);
          *v111++ = vshlq_u16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v92, v156, _H11), v159, _H8), v162, v287), v92), v95)), v322);
          v163 = vaddq_f16(vaddq_f16(vaddq_f16(v148, vuzp2q_s16(v133, v150)), vuzp1q_s16(v151, v131)), vuzp2q_s16(v156, v159));
          v164 = vtrn1q_s16(v136, v136);
          v100 = v135;
          v165 = vmlaq_f16(vmlaq_f16(vmlaq_f16(v135, v105, vzip1q_s16(v163, v163)), v298, vzip2q_s16(v163, v163)), v98, vaddq_f16(vaddq_f16(vaddq_f16(v164, vtrn2q_s16(v152, v152)), vtrn1q_s16(v127, v127)), vtrn2q_s16(v162, v162)));
          v103 = v324;
          v87 = v115;
          v102 = v321;
          *(v77 + v108) = vshlq_u16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(v165, v99), v71)), v322);
          v109 += 8;
          v108 += 16;
        }

        while (v109 < v16 - 7);
        v166 = (v79 + v108);
        v167 = (v77 + v108);
        v168 = v16 & 0xFFFFFFF8;
      }

      for (; v168 < v56; v71 = v292)
      {
        v169 = (v166[1] >> v75) - v320;
        v170 = *(&v104 + 1) * v169;
        v171 = v325 * ((v80->u16[0] >> v75) - v326);
        v172 = (*(&v104 + 1) * v169) + v171;
        v173 = 8191.0;
        if (v172 <= 8191.0)
        {
          v173 = (*(&v104 + 1) * v169) + v171;
          if (v172 < 0.0)
          {
            v173 = 0.0;
          }
        }

        v174 = (*v166 >> v75) - v320;
        v175 = (v10.f32[1] * v169) + (v174 * v10.f32[0]);
        v176 = 8191.0;
        if ((v171 + v175) <= 8191.0)
        {
          v176 = v171 + v175;
          if ((v171 + v175) < 0.0)
          {
            v176 = 0.0;
          }
        }

        v177 = *&v104 * v174;
        v178 = (*&v104 * v174) + v171;
        v179 = 8191.0;
        if (v178 <= 8191.0)
        {
          v179 = v178;
          if (v178 < 0.0)
          {
            v179 = 0.0;
          }
        }

        v180 = v325 * ((v80->u16[1] >> v75) - v326);
        v181 = 8191.0;
        if ((v170 + v180) <= 8191.0)
        {
          v181 = v170 + v180;
          if ((v170 + v180) < 0.0)
          {
            v181 = 0.0;
          }
        }

        v182 = 8191.0;
        if ((v175 + v180) <= 8191.0)
        {
          v182 = v175 + v180;
          if ((v175 + v180) < 0.0)
          {
            v182 = 0.0;
          }
        }

        v183 = v177 + v180;
        v184 = (v177 + v180) <= 8191.0;
        v185 = 8191.0;
        if (v184)
        {
          v185 = v183;
          if (v183 < 0.0)
          {
            v185 = 0.0;
          }
        }

        v186 = v325 * ((v110->u16[0] >> v75) - v326);
        v187 = 8191.0;
        if ((v170 + v186) <= 8191.0)
        {
          v187 = v170 + v186;
          if ((v170 + v186) < 0.0)
          {
            v187 = 0.0;
          }
        }

        v188 = 8191.0;
        if ((v175 + v186) <= 8191.0)
        {
          v188 = v175 + v186;
          if ((v175 + v186) < 0.0)
          {
            v188 = 0.0;
          }
        }

        v189 = v177 + v186;
        v184 = (v177 + v186) <= 8191.0;
        v190 = 8191.0;
        if (v184)
        {
          v190 = v189;
          if (v189 < 0.0)
          {
            v190 = 0.0;
          }
        }

        v191 = v325 * ((v110->u16[1] >> v75) - v326);
        v192 = v170 + v191;
        v193 = 8191.0;
        if (v192 <= 8191.0)
        {
          v193 = v192;
          if (v192 < 0.0)
          {
            v193 = 0.0;
          }
        }

        v194 = v175 + v191;
        v184 = (v175 + v191) <= 8191.0;
        v195 = 8191.0;
        if (v184)
        {
          v195 = v194;
          if (v194 < 0.0)
          {
            v195 = 0.0;
          }
        }

        v196 = v177 + v191;
        v197 = 8191.0;
        if (v196 <= 8191.0)
        {
          v197 = v196;
          if (v196 < 0.0)
          {
            v197 = 0.0;
          }
        }

        _H4 = result->i16[llroundf(fminf(fmaxf(v173, 0.0), 8191.0))];
        __asm { FCVT            S23, H4 }

        _H4 = result->i16[llroundf(fminf(fmaxf(v176, 0.0), 8191.0))];
        __asm { FCVT            S4, H4 }

        _H27 = result->i16[llroundf(fminf(fmaxf(v179, 0.0), 8191.0))];
        _H29 = result->i16[llroundf(fminf(fmaxf(v181, 0.0), 8191.0))];
        __asm
        {
          FCVT            S27, H27
          FCVT            S29, H29
        }

        _H9 = result->i16[llroundf(fminf(fmaxf(v182, 0.0), 8191.0))];
        v207 = llroundf(fminf(fmaxf(v185, 0.0), 8191.0));
        __asm { FCVT            S0, H9 }

        _H9 = result->i16[v207];
        __asm { FCVT            S9, H9 }

        _H10 = result->i16[llroundf(fminf(fmaxf(v187, 0.0), 8191.0))];
        __asm { FCVT            S10, H10 }

        _H1 = result->i16[llroundf(fminf(fmaxf(v188, 0.0), 8191.0))];
        __asm { FCVT            S1, H1 }

        _H2 = result->i16[llroundf(fminf(fmaxf(v190, 0.0), 8191.0))];
        _H5 = result->i16[llroundf(fminf(fmaxf(v193, 0.0), 8191.0))];
        __asm
        {
          FCVT            S2, H2
          FCVT            S5, H5
        }

        _H12 = result->i16[llroundf(fminf(fmaxf(v195, 0.0), 8191.0))];
        __asm { FCVT            S12, H12 }

        _H13 = result->i16[llroundf(fminf(fmaxf(v197, 0.0), 8191.0))];
        __asm { FCVT            S13, H13 }

        v223 = ((v308 * _S4) + (_S23 * v314)) + (_S27 * v307);
        v224 = ((v305 * _S4) + (_S23 * v306)) + (_S27 * v313);
        _S4 = ((v303 * _S4) + (_S23 * v304)) + (_S27 * v289);
        v226 = ((v308 * _S0) + (_S29 * v314)) + (_S9 * v307);
        _S6 = ((v305 * _S0) + (_S29 * v306)) + (_S9 * v313);
        v228 = ((v303 * _S0) + (_S29 * v304)) + (_S9 * v289);
        v229 = ((v308 * _S1) + (_S10 * v314)) + (_S2 * v307);
        v230 = ((v305 * _S1) + (_S10 * v306)) + (_S2 * v313);
        v231 = ((v303 * _S1) + (_S10 * v304)) + (_S2 * v289);
        v232 = ((v308 * _S12) + (_S5 * v314)) + (_S13 * v307);
        v233 = ((v305 * _S12) + (_S5 * v306)) + (_S13 * v313);
        v234 = ((v303 * _S12) + (_S5 * v304)) + (_S13 * v289);
        LOWORD(_S0) = *&v57[2 * llroundf(fminf(fmaxf(v223, 0.0), 8191.0))];
        __asm { FCVT            S0, H0 }

        LOWORD(_S1) = *&v57[2 * llroundf(fminf(fmaxf(v224, 0.0), 8191.0))];
        __asm { FCVT            S23, H1 }

        LOWORD(_S1) = *&v57[2 * llroundf(fminf(fmaxf(_S4, 0.0), 8191.0))];
        LOWORD(_S2) = *&v57[2 * llroundf(fminf(fmaxf(v226, 0.0), 8191.0))];
        __asm
        {
          FCVT            S1, H1
          FCVT            S2, H2
        }

        LOWORD(_S4) = *&v57[2 * llroundf(fminf(fmaxf(_S6, 0.0), 8191.0))];
        v239 = llroundf(fminf(fmaxf(v228, 0.0), 8191.0));
        __asm { FCVT            S29, H4 }

        LOWORD(_S4) = *&v57[2 * v239];
        __asm { FCVT            S27, H4 }

        LOWORD(_S4) = *&v57[2 * llroundf(fminf(fmaxf(v229, 0.0), 8191.0))];
        __asm { FCVT            S10, H4 }

        LOWORD(_S4) = *&v57[2 * llroundf(fminf(fmaxf(v230, 0.0), 8191.0))];
        __asm { FCVT            S12, H4 }

        LOWORD(_S4) = *&v57[2 * llroundf(fminf(fmaxf(v231, 0.0), 8191.0))];
        LOWORD(_S6) = *&v57[2 * llroundf(fminf(fmaxf(v232, 0.0), 8191.0))];
        __asm
        {
          FCVT            S9, H4
          FCVT            S14, H6
        }

        LOWORD(_S4) = *&v57[2 * llroundf(fminf(fmaxf(v233, 0.0), 8191.0))];
        __asm { FCVT            S15, H4 }

        LOWORD(_S4) = *&v57[2 * llroundf(fminf(fmaxf(v234, 0.0), 8191.0))];
        __asm { FCVT            S13, H4 }

        v248 = (((v310 * _S23) + (v311 * _S0)) + (v309 * _S1)) + v81;
        if (v248 < v81)
        {
          v249 = v81;
        }

        else
        {
          v249 = (((v310 * _S23) + (v311 * _S0)) + (v309 * _S1)) + v81;
        }

        v184 = v248 <= v291;
        v250 = (((v310 * _S29) + (v311 * _S2)) + (v309 * _S27)) + v81;
        if (!v184)
        {
          v249 = v35;
        }

        v251 = llroundf(v249);
        if (v250 < v81)
        {
          v252 = v81;
        }

        else
        {
          v252 = (((v310 * _S29) + (v311 * _S2)) + (v309 * _S27)) + v81;
        }

        v184 = v250 <= v291;
        v253 = (((v310 * _S12) + (v311 * _S10)) + (v309 * _S9)) + v81;
        if (!v184)
        {
          v252 = v35;
        }

        v254 = llroundf(v252);
        if (v253 < v81)
        {
          v255 = v81;
        }

        else
        {
          v255 = (((v310 * _S12) + (v311 * _S10)) + (v309 * _S9)) + v81;
        }

        v184 = v253 <= v291;
        v256 = (((v310 * _S15) + (v311 * _S14)) + (v309 * _S13)) + v81;
        if (!v184)
        {
          v255 = v35;
        }

        v257 = llroundf(v255);
        if (v256 < v81)
        {
          v258 = v81;
        }

        else
        {
          v258 = (((v310 * _S15) + (v311 * _S14)) + (v309 * _S13)) + v81;
        }

        if (v256 <= v291)
        {
          v259 = v258;
        }

        else
        {
          v259 = v35;
        }

        v260 = ((_S0 + _S2) + _S10) + _S14;
        v261 = ((_S23 + _S29) + _S12) + _S15;
        v78->i16[0] = v251 << v73;
        v78->i16[1] = v254 << v73;
        v111->i16[0] = v257 << v73;
        v111->i16[1] = llroundf(v259) << v73;
        v262 = ((_S1 + _S27) + _S9) + _S13;
        v263 = ((v319 + (v260 * v300)) + (v261 * v299)) + (v262 * v11.f32[0]);
        v264 = v318;
        if (v263 <= v318)
        {
          v264 = ((v319 + (v260 * v300)) + (v261 * v299)) + (v262 * v11.f32[0]);
          if (v263 < v315)
          {
            v264 = v315;
          }
        }

        v265 = ((v319 + (v260 * v280)) + (v261 * v279)) + (v262 * v11.f32[1]);
        *v167 = llroundf(v264) << v73;
        v266 = v318;
        v102 = v321;
        v87 = v301;
        v98 = v297;
        v95 = v294;
        v100 = v295;
        v99 = v293;
        _H15 = v323;
        v101 = v317;
        if (v265 <= v318)
        {
          v266 = v265;
          if (v265 < v315)
          {
            v266 = v315;
          }
        }

        v168 += 2;
        v166 += 2;
        v80 = (v80 + 4);
        v110 = (v110 + 4);
        v167[1] = llroundf(v266) << v73;
        v78 = (v78 + 4);
        v111 = (v111 + 4);
        v167 += 2;
        v85 = v302;
        v105 = v312;
        v92 = v296;
      }

      v80 = &v106[v28];
      v79 += v27;
      v78 = &v107[v30];
      v77 += v278;
      v25 += 2;
      v103 = v324;
    }

    while (v25 < v19);
  }

  if (v274 && v273)
  {
    if (v19 >= 1)
    {
      v267 = 0;
      v268 = (v274 + v270 * v271 + 2 * v272);
      v269 = 2 * v16;
      do
      {
        result = memcpy(v24, v268, v269);
        v268 += v270;
        v24 += v275;
        ++v267;
      }

      while (v19 > v267);
    }
  }

  else if (v273 && v19 >= 1)
  {
    do
    {
      if (v16 >= 1)
      {
        result = memset(v24, 255, 2 * v16);
      }

      v24 += v275;
      --v19;
    }

    while (v19);
  }

  v277[20].i32[a2] = 0;
  return result;
}

uint64_t vt_Copy_xf420_TRC_Mat_TRC_xf420(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v13 = a3;
  v14 = a1;
  v73 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v69 = a2[2];
  v70 = v17;
  v18 = a6[1];
  v71 = *a6;
  v72 = v16;
  v67 = a6[2];
  v68 = v18;
  if (v15 == 255)
  {
    v19 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v19)
    {
      v20 = 0;
LABEL_71:
      free(v19);
      return v20;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v19 = (&v61 - v21);
    bzero(&v61 - v21, v22);
  }

  v23 = vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_s64(vaddq_s64(v67, v68), v71), vceqq_s64(vaddq_s64(v69, v70), v72))));
  v24 = v67.i64[0];
  v25 = v68.i64[0];
  v26 = v70.i64[0];
  v27 = v69.i64[0];
  if (v67.i8[0])
  {
    v24 = v67.i64[0] + 1;
    v27 = v69.i64[0] + 1;
    v25 = v68.i64[0] - 1;
    v26 = v70.i64[0] - 1;
  }

  v28 = a9;
  v29 = v71.i64[0];
  v30 = v72.i64[0];
  if (v25)
  {
    if (v23.i8[4] & 1 | v23.i8[0] & 1 || (v31 = v26 + 1 + v27, v32 = 2 * v31, 2 * v31 > *a4) || ((2 * (v31 + (v31 >> 63))) & 0xFFFFFFFFFFFFFFFCLL) > a4[1] || (v33 = a4[2], v32 > v33) && v33 || (v34 = v25 + 1 + v24, v35 = 2 * v34, 2 * v34 > *a8) || ((2 * (v34 + (v34 >> 63))) & 0xFFFFFFFFFFFFFFFCLL) > a8[1] || (v36 = a8[2], v35 > v36) && v36)
    {
      --v25;
      --v26;
    }

    else
    {
      v29 = v71.i64[0] + 1;
      v30 = v72.i64[0] + 1;
      ++v26;
      ++v25;
    }
  }

  v37 = v68.i64[1];
  v38 = v70.i64[1];
  if (v67.i8[8])
  {
    v38 = v70.i64[1] - 1;
    v39 = v69.i64[1] + 1;
  }

  else
  {
    v39 = v69.i64[1];
  }

  if (v67.i8[8])
  {
    v37 = v68.i64[1] - 1;
    v40 = v67.i64[1] + 1;
  }

  else
  {
    v40 = v67.i64[1];
  }

  v41 = v71.i64[1];
  v42 = v72.i64[1];
  if (v37)
  {
    if (v23.i8[6] & 1 | v23.i8[2] & 1 || (v43 = v38 + 1 + v39, (*a4 * v43) > *a5) || (a4[1] * (v43 / 2)) > a5[1] || (a4[2] * v43) > a5[2] || (v44 = v37 + 1 + v40, (*a8 * v44) > *a9) || (a8[1] * (v44 / 2)) > a9[1] || (a8[2] * v44) > a9[2])
    {
      --v37;
      --v38;
    }

    else
    {
      v41 = v71.i64[1] + 1;
      v42 = v72.i64[1] + 1;
      ++v38;
      ++v37;
    }
  }

  if (v26 + v27 > v30)
  {
    v26 = v30 - v27;
  }

  if (v25 + v24 > v29)
  {
    v25 = v29 - v24;
  }

  if (v38 + v39 > v42)
  {
    v38 = v42 - v39;
  }

  if (v37 + v40 > v41)
  {
    v37 = v41 - v40;
  }

  if (v26 >= v25)
  {
    v45 = v25;
  }

  else
  {
    v45 = v26;
  }

  if (v38 >= v37)
  {
    v46 = v37;
  }

  else
  {
    v46 = v38;
  }

  v47 = v46 + v39 - 1;
  v48 = v45 + v27;
  v49 = (v47 * *a4 + 2 * (v45 + v27)) > *a5;
  v65 = v24;
  v66 = v14;
  v63 = a9;
  v64 = v27;
  v61 = v30;
  v62 = v29;
  v70.i64[0] = v40;
  v69.i64[0] = v39;
  v72.i64[0] = v41;
  v71.i64[0] = v42;
  v68.i64[0] = v45;
  if (v49)
  {
    v50 = v13;
    v51 = a5;
    v52 = a8;
    v53 = v15;
    goto LABEL_64;
  }

  if (*(v13 + 8) && a4[1] * ((v46 + v39 + 1) / 2 - 1) + 4 * ((v48 + 1 + ((v48 + 1) >> 63)) >> 1) > a5[1])
  {
    v50 = v13;
    v51 = a5;
    v52 = a8;
    v53 = v15;
    goto LABEL_64;
  }

  if (*(v13 + 16) && (2 * v48 + a4[2] * v47) > a5[2])
  {
    v50 = v13;
    v51 = a5;
    v52 = a8;
    v53 = v15;
    goto LABEL_64;
  }

  v54 = v46 + v40 - 1;
  v55 = v45 + v24;
  if ((*a8 * v54 + 2 * (v45 + v24)) > *a9)
  {
    v50 = v13;
    v51 = a5;
    v52 = a8;
    v53 = v15;
    goto LABEL_64;
  }

  if (*(a7 + 8) && a8[1] * ((v46 + v40 + 1) / 2 - 1) + 4 * ((v55 + 1 + ((v55 + 1) >> 63)) >> 1) > a9[1])
  {
    v50 = v13;
    v51 = a5;
    v52 = a8;
    v53 = v15;
    goto LABEL_64;
  }

  if (*(a7 + 16) && (2 * v55 + a8[2] * v54) > a9[2])
  {
    v50 = v13;
    v51 = a5;
    v52 = a8;
    v53 = v15;
LABEL_64:
    fig_log_get_emitter();
    v20 = FigSignalErrorAtGM();
    v15 = v53;
    a8 = v52;
    a5 = v51;
    v13 = v50;
    v24 = v65;
    v14 = v66;
    v28 = v63;
    v27 = v64;
    v30 = v61;
    v29 = v62;
    v40 = v70.i64[0];
    v39 = v69.i64[0];
    v41 = v72.i64[0];
    v42 = v71.i64[0];
    v45 = v68.i64[0];
    if (v20)
    {
      goto LABEL_70;
    }
  }

  *v19 = v15;
  *(v19 + 4) = v30;
  *(v19 + 12) = v42;
  *(v19 + 20) = v45;
  *(v19 + 28) = v46;
  *(v19 + 36) = v27;
  *(v19 + 44) = v39;
  v19[11] = v41;
  v19[12] = v45;
  v19[13] = v46;
  v19[14] = v24;
  v19[7] = v13;
  v19[8] = a4;
  v19[9] = a5;
  v19[10] = v29;
  v19[15] = v40;
  v19[16] = a7;
  v19[17] = a8;
  v19[18] = v28;
  v19[19] = v14;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v15, global_queue, v19, vt_Copy_xf420_TRC_Mat_TRC_xf420_GCD);
  if (!v15)
  {
    return 0;
  }

  v57 = (v19 + 20);
  v58 = v15;
  while (1)
  {
    v59 = *v57++;
    v20 = v59;
    if (v59)
    {
      break;
    }

    if (!--v58)
    {
      v20 = 0;
      break;
    }
  }

LABEL_70:
  if (v15 == 255)
  {
    goto LABEL_71;
  }

  return v20;
}

void *vt_Copy_xf420_TRC_Mat_TRC_xf420_GCD(void *result, uint64_t a2, double a3, double a4, float a5, float a6)
{
  v9 = result;
  v174 = *(result + 36);
  v10 = 2 * *result;
  v173 = *(result + 44) + 2 * (*(result + 28) * a2 / v10);
  v11 = result[14];
  v13 = result[12];
  v12 = result[13];
  v14 = v12 * a2 / v10;
  v15 = result[15] + 2 * v14;
  v16 = 2 * ((v12 + v12 * a2) / v10 - v14);
  v17 = result[7];
  v18 = result[8];
  v19 = result[16];
  v20 = result[17];
  v21 = v18[2];
  v176 = v17[2];
  v22 = v20[2];
  v175 = v19[2];
  v23 = (v175 + v22 * v15 + 2 * v11);
  if (v16 >= 1)
  {
    v24 = 0;
    v25 = result[19];
    v26 = v13 & 0xFFFFFFFE;
    v27 = *v18;
    v28 = v18[1];
    v29 = *v20;
    v30 = v20[1];
    LOWORD(a5) = *(v25 + 140);
    LOWORD(a6) = *(v25 + 142);
    LOWORD(v6) = *(v25 + 144);
    LOWORD(v7) = *(v25 + 146);
    LOWORD(v8) = *(v25 + 148);
    v31 = 8191.0 / *(v25 + 128);
    v32 = LODWORD(a5);
    v33 = LODWORD(a6);
    v34 = v31 * *v25;
    v192 = v31 * *(v25 + 16);
    v193 = v31 * *(v25 + 8);
    v35 = v31 * *(v25 + 20);
    *&v36 = v31 * *(v25 + 28);
    v190 = *&v36;
    v191 = v35;
    v37 = v6;
    v38 = v7;
    v39 = v8;
    LOWORD(v36) = *(v25 + 150);
    v40 = v36;
    v195 = v40;
    LOWORD(v40) = *(v25 + 152);
    v186 = *(v25 + 40);
    v187 = *(v25 + 36);
    v185 = *(v25 + 44);
    v183 = *(v25 + 52) * 0.25;
    v184 = *(v25 + 48) * 0.25;
    v181 = *(v25 + 60) * 0.25;
    v182 = *(v25 + 56) * 0.25;
    v179 = *(v25 + 72);
    v180 = *(v25 + 64) * 0.25;
    v178 = *(v25 + 68) * 0.25;
    v42 = *(v25 + 76);
    v41 = *(v25 + 80);
    v43 = *(v25 + 84);
    v44 = *(v25 + 88);
    v45 = *(v25 + 92);
    v46 = *(v25 + 96);
    v47 = *(v25 + 100);
    v48 = *(v25 + 104);
    result = (v25 + 164);
    v49 = v25 + 16548;
    v50 = v19[1];
    v51 = (*v19 + v29 * v15 + 2 * v11);
    v52 = v17[1];
    v53 = (*v17 + *v18 * v173 + 2 * v174);
    v54 = *(v25 + 132);
    _CF = v54 >= 0x11;
    v56 = 16 - v54;
    if (_CF)
    {
      v56 = 0;
    }

    v57 = *(v25 + 124);
    v58 = 16 - v57;
    if (v57 >= 0x11)
    {
      v58 = 0;
    }

    v59 = v50 + v30 * (v15 / 2) + 2 * v11;
    v60 = v52 + v28 * (v173 / 2) + 2 * v174;
    v61 = v58;
    v62 = v56;
    v194 = v34;
    v188 = LODWORD(v40);
    v189 = v38;
    do
    {
      v63 = &v53[v27];
      v64 = &v51[v29];
      if (v26 >= 1)
      {
        v65 = 0;
        v66 = &v53[v27];
        v67 = &v51[v29];
        do
        {
          v68 = (v60 + 2 * v65);
          v69 = (v68[1] >> v61) - v33;
          v70 = v193 * v69;
          v71 = v34 * ((*v53 >> v61) - v32);
          v72 = (v193 * v69) + v71;
          v73 = 8191.0;
          if (v72 <= 8191.0)
          {
            v73 = (v193 * v69) + v71;
            if (v72 < 0.0)
            {
              v73 = 0.0;
            }
          }

          v74 = (*v68 >> v61) - v33;
          v75 = (v191 * v69) + (v74 * v192);
          v76 = 8191.0;
          if ((v71 + v75) <= 8191.0)
          {
            v76 = v71 + v75;
            if ((v71 + v75) < 0.0)
            {
              v76 = 0.0;
            }
          }

          v77 = v190 * v74;
          v78 = (v190 * v74) + v71;
          v79 = 8191.0;
          if (v78 <= 8191.0)
          {
            v79 = v78;
            if (v78 < 0.0)
            {
              v79 = 0.0;
            }
          }

          v80 = v34 * ((*(v53 + 1) >> v61) - v32);
          v81 = 8191.0;
          if ((v70 + v80) <= 8191.0)
          {
            v81 = v70 + v80;
            if ((v70 + v80) < 0.0)
            {
              v81 = 0.0;
            }
          }

          v82 = 8191.0;
          if ((v75 + v80) <= 8191.0)
          {
            v82 = v75 + v80;
            if ((v75 + v80) < 0.0)
            {
              v82 = 0.0;
            }
          }

          v83 = v77 + v80;
          v84 = 8191.0;
          if (v83 <= 8191.0)
          {
            v84 = v83;
            if (v83 < 0.0)
            {
              v84 = 0.0;
            }
          }

          v85 = v34 * ((*v66 >> v61) - v32);
          v86 = 8191.0;
          if ((v70 + v85) <= 8191.0)
          {
            v86 = v70 + v85;
            if ((v70 + v85) < 0.0)
            {
              v86 = 0.0;
            }
          }

          v87 = 8191.0;
          if ((v75 + v85) <= 8191.0)
          {
            v87 = v75 + v85;
            if ((v75 + v85) < 0.0)
            {
              v87 = 0.0;
            }
          }

          v88 = v77 + v85;
          v89 = (v77 + v85) <= 8191.0;
          v90 = 8191.0;
          if (v89)
          {
            v90 = v88;
            if (v88 < 0.0)
            {
              v90 = 0.0;
            }
          }

          v91 = v34 * ((*(v66 + 1) >> v61) - v32);
          v92 = v70 + v91;
          v93 = 8191.0;
          if (v92 <= 8191.0)
          {
            v93 = v92;
            if (v92 < 0.0)
            {
              v93 = 0.0;
            }
          }

          v94 = v75 + v91;
          v89 = (v75 + v91) <= 8191.0;
          v95 = 8191.0;
          if (v89)
          {
            v95 = v94;
            if (v94 < 0.0)
            {
              v95 = 0.0;
            }
          }

          v96 = v32;
          v97 = v77 + v91;
          v89 = (v77 + v91) <= 8191.0;
          v98 = 8191.0;
          if (v89)
          {
            v98 = v97;
            if (v97 < 0.0)
            {
              v98 = 0.0;
            }
          }

          _H4 = *(result + llroundf(fminf(fmaxf(v73, 0.0), 8191.0)));
          __asm { FCVT            S4, H4 }

          _H5 = *(result + llroundf(fminf(fmaxf(v76, 0.0), 8191.0)));
          __asm { FCVT            S5, H5 }

          _H6 = *(result + llroundf(fminf(fmaxf(v79, 0.0), 8191.0)));
          _H7 = *(result + llroundf(fminf(fmaxf(v81, 0.0), 8191.0)));
          __asm
          {
            FCVT            S6, H6
            FCVT            S7, H7
          }

          _H17 = *(result + llroundf(fminf(fmaxf(v82, 0.0), 8191.0)));
          __asm { FCVT            S17, H17 }

          _H24 = *(result + llroundf(fminf(fmaxf(v84, 0.0), 8191.0)));
          __asm { FCVT            S24, H24 }

          _H27 = *(result + llroundf(fminf(fmaxf(v86, 0.0), 8191.0)));
          __asm { FCVT            S27, H27 }

          _H19 = *(result + llroundf(fminf(fmaxf(v87, 0.0), 8191.0)));
          __asm { FCVT            S19, H19 }

          _H2 = *(result + llroundf(fminf(fmaxf(v90, 0.0), 8191.0)));
          _H1 = *(result + llroundf(fminf(fmaxf(v93, 0.0), 8191.0)));
          __asm
          {
            FCVT            S2, H2
            FCVT            S1, H1
          }

          _H25 = *(result + llroundf(fminf(fmaxf(v95, 0.0), 8191.0)));
          __asm { FCVT            S25, H25 }

          _H26 = *(result + llroundf(fminf(fmaxf(v98, 0.0), 8191.0)));
          __asm { FCVT            S26, H26 }

          v126 = ((v42 * _S5) + (_S4 * v179)) + (_S6 * v41);
          v127 = ((v44 * _S5) + (_S4 * v43)) + (_S6 * v45);
          v128 = ((v47 * _S5) + (_S4 * v46)) + (_S6 * v48);
          _S3 = ((v42 * _S17) + (_S7 * v179)) + (_S24 * v41);
          v130 = ((v44 * _S17) + (_S7 * v43)) + (_S24 * v45);
          v131 = ((v47 * _S17) + (_S7 * v46)) + (_S24 * v48);
          _S17 = ((v42 * _S19) + (_S27 * v179)) + (_S2 * v41);
          v133 = ((v44 * _S19) + (_S27 * v43)) + (_S2 * v45);
          v134 = ((v47 * _S19) + (_S27 * v46)) + (_S2 * v48);
          v135 = ((v42 * _S25) + (_S1 * v179)) + (_S26 * v41);
          v136 = ((v44 * _S25) + (_S1 * v43)) + (_S26 * v45);
          _S1 = ((v47 * _S25) + (_S1 * v46)) + (_S26 * v48);
          LOWORD(_S2) = *(v49 + 2 * llroundf(fminf(fmaxf(v126, 0.0), 8191.0)));
          __asm { FCVT            S4, H2 }

          LOWORD(_S2) = *(v49 + 2 * llroundf(fminf(fmaxf(v127, 0.0), 8191.0)));
          __asm { FCVT            S5, H2 }

          LOWORD(_S2) = *(v49 + 2 * llroundf(fminf(fmaxf(v128, 0.0), 8191.0)));
          LOWORD(_S3) = *(v49 + 2 * llroundf(fminf(fmaxf(_S3, 0.0), 8191.0)));
          __asm
          {
            FCVT            S6, H2
            FCVT            S2, H3
          }

          LOWORD(_S3) = *(v49 + 2 * llroundf(fminf(fmaxf(v130, 0.0), 8191.0)));
          __asm { FCVT            S19, H3 }

          LOWORD(_S3) = *(v49 + 2 * llroundf(fminf(fmaxf(v131, 0.0), 8191.0)));
          __asm { FCVT            S7, H3 }

          LOWORD(_S3) = *(v49 + 2 * llroundf(fminf(fmaxf(_S17, 0.0), 8191.0)));
          __asm { FCVT            S25, H3 }

          LOWORD(_S3) = *(v49 + 2 * llroundf(fminf(fmaxf(v133, 0.0), 8191.0)));
          __asm { FCVT            S26, H3 }

          LOWORD(_S3) = *(v49 + 2 * llroundf(fminf(fmaxf(v134, 0.0), 8191.0)));
          LOWORD(_S17) = *(v49 + 2 * llroundf(fminf(fmaxf(v135, 0.0), 8191.0)));
          __asm
          {
            FCVT            S24, H3
            FCVT            S28, H17
          }

          LOWORD(_S3) = *(v49 + 2 * llroundf(fminf(fmaxf(v136, 0.0), 8191.0)));
          __asm { FCVT            S30, H3 }

          LOWORD(_S1) = *(v49 + 2 * llroundf(fminf(fmaxf(_S1, 0.0), 8191.0)));
          __asm { FCVT            S27, H1 }

          v150 = (((v186 * _S5) + (v187 * _S4)) + (v185 * _S6)) + v37;
          if (v150 < v37)
          {
            v151 = v37;
          }

          else
          {
            v151 = (((v186 * _S5) + (v187 * _S4)) + (v185 * _S6)) + v37;
          }

          v89 = v150 <= v39;
          v152 = (((v186 * _S19) + (v187 * _S2)) + (v185 * _S7)) + v37;
          if (!v89)
          {
            v151 = v39;
          }

          v153 = llroundf(v151);
          if (v152 < v37)
          {
            v154 = v37;
          }

          else
          {
            v154 = (((v186 * _S19) + (v187 * _S2)) + (v185 * _S7)) + v37;
          }

          v89 = v152 <= v39;
          v155 = (((v186 * _S26) + (v187 * _S25)) + (v185 * _S24)) + v37;
          if (!v89)
          {
            v154 = v39;
          }

          v156 = llroundf(v154);
          if (v155 < v37)
          {
            v157 = v37;
          }

          else
          {
            v157 = (((v186 * _S26) + (v187 * _S25)) + (v185 * _S24)) + v37;
          }

          v89 = v155 <= v39;
          v158 = (((v186 * _S30) + (v187 * _S28)) + (v185 * _S27)) + v37;
          if (!v89)
          {
            v157 = v39;
          }

          v159 = llroundf(v157);
          if (v158 < v37)
          {
            v160 = v37;
          }

          else
          {
            v160 = (((v186 * _S30) + (v187 * _S28)) + (v185 * _S27)) + v37;
          }

          if (v158 <= v39)
          {
            v161 = v160;
          }

          else
          {
            v161 = v39;
          }

          v162 = ((_S4 + _S2) + _S25) + _S28;
          v163 = ((_S5 + _S19) + _S26) + _S30;
          *v51 = v153 << v62;
          *(v51 + 1) = v156 << v62;
          *v67 = v159 << v62;
          *(v67 + 1) = llroundf(v161) << v62;
          v164 = ((_S6 + _S7) + _S24) + _S27;
          v165 = ((v189 + (v162 * v184)) + (v163 * v183)) + (v164 * v182);
          v166 = v188;
          if (v165 <= v188)
          {
            v166 = ((v189 + (v162 * v184)) + (v163 * v183)) + (v164 * v182);
            if (v165 < v195)
            {
              v166 = v195;
            }
          }

          v167 = (v59 + 2 * v65);
          v168 = ((v189 + (v162 * v181)) + (v163 * v180)) + (v164 * v178);
          *v167 = llroundf(v166) << v62;
          v169 = v188;
          v32 = v96;
          if (v168 <= v188)
          {
            v169 = v168;
            if (v168 < v195)
            {
              v169 = v195;
            }
          }

          v53 += 4;
          v66 += 4;
          v51 += 4;
          v67 += 4;
          v167[1] = llroundf(v169) << v62;
          v65 += 2;
          v34 = v194;
        }

        while (v65 < v26);
      }

      v53 = &v63[v27];
      v60 += v28;
      v51 = &v64[v29];
      v59 += v30;
      v24 += 2;
    }

    while (v24 < v16);
  }

  if (v176 && v175)
  {
    if (v16 >= 1)
    {
      v170 = 0;
      v171 = (v176 + v21 * v173 + 2 * v174);
      v172 = 2 * v13;
      do
      {
        result = memcpy(v23, v171, v172);
        v171 += v21;
        v23 += v22;
        ++v170;
      }

      while (v16 > v170);
    }
  }

  else if (v175 && v16 >= 1)
  {
    do
    {
      if (v13 >= 1)
      {
        result = memset(v23, 255, 2 * v13);
      }

      v23 += v22;
      --v16;
    }

    while (v16);
  }

  *(v9 + a2 + 40) = 0;
  return result;
}

uint64_t vt_Copy_xf420_rgb_xf420_neon_fp16(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v13 = a3;
  v14 = a1;
  v73 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v69 = a2[2];
  v70 = v17;
  v18 = a6[1];
  v71 = *a6;
  v72 = v16;
  v67 = a6[2];
  v68 = v18;
  if (v15 == 255)
  {
    v19 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v19)
    {
      v20 = 0;
LABEL_71:
      free(v19);
      return v20;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v19 = (&v61 - v21);
    bzero(&v61 - v21, v22);
  }

  v23 = vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_s64(vaddq_s64(v67, v68), v71), vceqq_s64(vaddq_s64(v69, v70), v72))));
  v24 = v67.i64[0];
  v25 = v68.i64[0];
  v26 = v70.i64[0];
  v27 = v69.i64[0];
  if (v67.i8[0])
  {
    v24 = v67.i64[0] + 1;
    v27 = v69.i64[0] + 1;
    v25 = v68.i64[0] - 1;
    v26 = v70.i64[0] - 1;
  }

  v28 = a9;
  v29 = v71.i64[0];
  v30 = v72.i64[0];
  if (v25)
  {
    if (v23.i8[4] & 1 | v23.i8[0] & 1 || (v31 = v26 + 1 + v27, v32 = 2 * v31, 2 * v31 > *a4) || ((2 * (v31 + (v31 >> 63))) & 0xFFFFFFFFFFFFFFFCLL) > a4[1] || (v33 = a4[2], v32 > v33) && v33 || (v34 = v25 + 1 + v24, v35 = 2 * v34, 2 * v34 > *a8) || ((2 * (v34 + (v34 >> 63))) & 0xFFFFFFFFFFFFFFFCLL) > a8[1] || (v36 = a8[2], v35 > v36) && v36)
    {
      --v25;
      --v26;
    }

    else
    {
      v29 = v71.i64[0] + 1;
      v30 = v72.i64[0] + 1;
      ++v26;
      ++v25;
    }
  }

  v37 = v68.i64[1];
  v38 = v70.i64[1];
  if (v67.i8[8])
  {
    v38 = v70.i64[1] - 1;
    v39 = v69.i64[1] + 1;
  }

  else
  {
    v39 = v69.i64[1];
  }

  if (v67.i8[8])
  {
    v37 = v68.i64[1] - 1;
    v40 = v67.i64[1] + 1;
  }

  else
  {
    v40 = v67.i64[1];
  }

  v41 = v71.i64[1];
  v42 = v72.i64[1];
  if (v37)
  {
    if (v23.i8[6] & 1 | v23.i8[2] & 1 || (v43 = v38 + 1 + v39, (*a4 * v43) > *a5) || (a4[1] * (v43 / 2)) > a5[1] || (a4[2] * v43) > a5[2] || (v44 = v37 + 1 + v40, (*a8 * v44) > *a9) || (a8[1] * (v44 / 2)) > a9[1] || (a8[2] * v44) > a9[2])
    {
      --v37;
      --v38;
    }

    else
    {
      v41 = v71.i64[1] + 1;
      v42 = v72.i64[1] + 1;
      ++v38;
      ++v37;
    }
  }

  if (v26 + v27 > v30)
  {
    v26 = v30 - v27;
  }

  if (v25 + v24 > v29)
  {
    v25 = v29 - v24;
  }

  if (v38 + v39 > v42)
  {
    v38 = v42 - v39;
  }

  if (v37 + v40 > v41)
  {
    v37 = v41 - v40;
  }

  if (v26 >= v25)
  {
    v45 = v25;
  }

  else
  {
    v45 = v26;
  }

  if (v38 >= v37)
  {
    v46 = v37;
  }

  else
  {
    v46 = v38;
  }

  v47 = v46 + v39 - 1;
  v48 = v45 + v27;
  v49 = (v47 * *a4 + 2 * (v45 + v27)) > *a5;
  v65 = v24;
  v66 = v14;
  v63 = a9;
  v64 = v27;
  v61 = v30;
  v62 = v29;
  v70.i64[0] = v40;
  v69.i64[0] = v39;
  v72.i64[0] = v41;
  v71.i64[0] = v42;
  v68.i64[0] = v45;
  if (v49)
  {
    v50 = v13;
    v51 = a5;
    v52 = a8;
    v53 = v15;
    goto LABEL_64;
  }

  if (*(v13 + 8) && a4[1] * ((v46 + v39 + 1) / 2 - 1) + 4 * ((v48 + 1 + ((v48 + 1) >> 63)) >> 1) > a5[1])
  {
    v50 = v13;
    v51 = a5;
    v52 = a8;
    v53 = v15;
    goto LABEL_64;
  }

  if (*(v13 + 16) && (2 * v48 + a4[2] * v47) > a5[2])
  {
    v50 = v13;
    v51 = a5;
    v52 = a8;
    v53 = v15;
    goto LABEL_64;
  }

  v54 = v46 + v40 - 1;
  v55 = v45 + v24;
  if ((*a8 * v54 + 2 * (v45 + v24)) > *a9)
  {
    v50 = v13;
    v51 = a5;
    v52 = a8;
    v53 = v15;
    goto LABEL_64;
  }

  if (*(a7 + 8) && a8[1] * ((v46 + v40 + 1) / 2 - 1) + 4 * ((v55 + 1 + ((v55 + 1) >> 63)) >> 1) > a9[1])
  {
    v50 = v13;
    v51 = a5;
    v52 = a8;
    v53 = v15;
    goto LABEL_64;
  }

  if (*(a7 + 16) && (2 * v55 + a8[2] * v54) > a9[2])
  {
    v50 = v13;
    v51 = a5;
    v52 = a8;
    v53 = v15;
LABEL_64:
    fig_log_get_emitter();
    v20 = FigSignalErrorAtGM();
    v15 = v53;
    a8 = v52;
    a5 = v51;
    v13 = v50;
    v24 = v65;
    v14 = v66;
    v28 = v63;
    v27 = v64;
    v30 = v61;
    v29 = v62;
    v40 = v70.i64[0];
    v39 = v69.i64[0];
    v41 = v72.i64[0];
    v42 = v71.i64[0];
    v45 = v68.i64[0];
    if (v20)
    {
      goto LABEL_70;
    }
  }

  *v19 = v15;
  *(v19 + 4) = v30;
  *(v19 + 12) = v42;
  *(v19 + 20) = v45;
  *(v19 + 28) = v46;
  *(v19 + 36) = v27;
  *(v19 + 44) = v39;
  v19[11] = v41;
  v19[12] = v45;
  v19[13] = v46;
  v19[14] = v24;
  v19[7] = v13;
  v19[8] = a4;
  v19[9] = a5;
  v19[10] = v29;
  v19[15] = v40;
  v19[16] = a7;
  v19[17] = a8;
  v19[18] = v28;
  v19[19] = v14;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v15, global_queue, v19, vt_Copy_xf420_rgb_xf420_neon_fp16_GCD);
  if (!v15)
  {
    return 0;
  }

  v57 = (v19 + 20);
  v58 = v15;
  while (1)
  {
    v59 = *v57++;
    v20 = v59;
    if (v59)
    {
      break;
    }

    if (!--v58)
    {
      v20 = 0;
      break;
    }
  }

LABEL_70:
  if (v15 == 255)
  {
    goto LABEL_71;
  }

  return v20;
}

void *vt_Copy_xf420_rgb_xf420_neon_fp16_GCD(void *result, uint64_t a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, float32x4_t a10)
{
  v15 = result;
  v16 = 2 * *result;
  v175 = *(result + 44) + 2 * (*(result + 28) * a2 / v16);
  v176 = *(result + 36);
  v17 = result[14];
  v19 = result[12];
  v18 = result[13];
  v20 = v18 * a2;
  v21 = v18 * a2 / v16;
  v22 = result[15] + 2 * v21;
  v23 = 2 * ((v18 + v20) / v16 - v21);
  v24 = result[7];
  v25 = result[8];
  v26 = result[16];
  v27 = result[17];
  v174 = v25[2];
  v28 = v27[2];
  v177 = v26[2];
  v178 = v24[2];
  v29 = (v177 + v28 * v22 + 2 * v17);
  if (v23 >= 1)
  {
    v30 = 0;
    v31 = result[19];
    v32 = *v25;
    v33 = v25[1];
    v34 = *v27;
    v35 = v27[1];
    v36 = v31[17].u16[2];
    v37 = v31[17].u16[3];
    v10.i32[0] = v31[3].i32[1];
    v38 = v31[18].u16[0];
    v39 = v31[18].u16[1];
    v40 = v31[18].u16[2];
    v41 = v31[18].u16[3];
    v42 = v31[19].u16[0];
    _S26 = v31[5].f32[1];
    v12.i32[0] = v31[6].i32[0];
    v45.i32[0] = v31[6].i32[1];
    v44.i32[0] = v31[7].i32[0];
    *v11.i16 = v36;
    result = (result[12] & 0xFFFFFFFELL);
    v46 = v31[17].u32[0] / v31[16].u32[0];
    v47 = v38;
    v48 = v39;
    v49 = v40;
    v194 = v37;
    v195 = v41;
    v50 = v42;
    v197 = v46 * v31->f32[0];
    v198 = v36;
    __asm { FCVT            H8, S1 }

    v56 = vdupq_lane_s16(v11, 0);
    v10.i32[1] = v31[1].i32[0];
    *v13.f32 = vmul_n_f32(*v10.f32, v46);
    v57 = vdupq_lane_s32(vcvt_f16_f32(v13), 0);
    *v10.f32 = vmul_n_f32(v31[2], v46);
    v58 = vdupq_lane_s32(vcvt_f16_f32(v10), 0);
    *&v46 = -v37;
    v189 = vmulq_n_f16(v57, *&v46);
    v59 = vmulq_n_f16(v58, *&v46);
    v196 = v31[4].f32[1];
    __asm { FCVT            H9, S0 }

    v12.i32[1] = v31[7].i32[1];
    _S2 = v31[5].f32[0];
    __asm
    {
      FCVT            H10, S24
      FMOV            V4.2S, #0.25
    }

    *v12.f32 = vmul_f32(*v12.f32, _D4);
    v64 = vdupq_lane_s32(vcvt_f16_f32(v12), 0);
    v45.i32[1] = v31[8].i32[0];
    *v14.f32 = vmul_f32(v45, _D4);
    v65 = vdupq_lane_s32(vcvt_f16_f32(v14), 0);
    v44.i32[1] = v31[8].i32[1];
    *a10.f32 = vmul_f32(v44, _D4);
    v66 = vcvt_f16_f32(a10);
    v67 = vdupq_lane_s32(v66, 0);
    *v66.i16 = v38;
    v68 = vdupq_lane_s16(v66, 0);
    *v66.i16 = v39;
    v69 = vdupq_lane_s16(v66, 0);
    *v66.i16 = v40;
    v70 = vdupq_lane_s16(v66, 0);
    *v66.i16 = v41;
    v71 = vdupq_lane_s16(v66, 0);
    *v66.i16 = v42;
    v72 = vdupq_lane_s16(v66, 0);
    v73 = v31[16].u8[4];
    if (v73 >= 0x11)
    {
      v74 = 0;
    }

    else
    {
      v74 = 16 - v73;
    }

    v75 = v31[15].u8[4];
    v76 = 16 - v75;
    if (v75 >= 0x11)
    {
      v76 = 0;
    }

    v77 = *v26;
    v78 = v26[1] + v35 * (v22 / 2) + 2 * v17;
    v79 = (v77 + v34 * v22 + 2 * v17);
    v80 = v24[1] + v33 * (v175 / 2) + 2 * v176;
    v81 = (*v24 + v32 * v175 + 2 * v176);
    v82 = v76;
    v83 = v74;
    v84 = vdupq_n_s16(-v76);
    v85 = vdupq_n_s16(v74);
    v86 = _S26;
    __asm { FCVT            H4, S26 }

    v181 = _H4;
    v88 = v13.i64[0];
    v89 = v69;
    v90 = v50;
    v193 = v10.f32[0];
    v91 = v59;
    v92 = v57;
    v191 = v10.f32[1];
    v93 = v12.i64[0];
    v94 = v14.i64[0];
    v192 = a10.f32[0];
    v95 = v189;
    v190 = a10.f32[1];
    v187 = v58;
    v188 = v57;
    v185 = _H9;
    v186 = v91;
    v183 = v89;
    v184 = _H10;
    v182 = v72;
    v180 = v90;
    do
    {
      v96 = &v81->i8[v32];
      v97 = &v79->i8[v34];
      if (v19 < 8)
      {
        v125 = 0;
        v124 = v78;
        v101 = (v79 + v34);
        v123 = v80;
        v100 = (v81 + v32);
      }

      else
      {
        v98 = 0;
        v99 = 0;
        v100 = (v81 + v32);
        v101 = (v79 + v34);
        v102 = v70;
        do
        {
          v103 = vcvtq_f16_u16(vshlq_u16(*(v80 + v98), v84));
          v104 = vmlaq_f16(v95, v92, v103);
          v105 = vmlaq_f16(v91, v58, v103);
          v106 = vtrn2q_s16(v104, v104);
          v107 = vtrn1q_s16(v104, v104);
          v108 = vuzp1q_s16(v105, v71);
          *v108.i8 = vadd_f16(*v108.i8, *&vuzp2q_s16(v105, v71));
          v109 = vzip1q_s16(v108, v108);
          v110 = *v81++;
          v111 = vcvtq_f16_u16(vshlq_u16(v110, v84));
          v112 = v89;
          v113 = *v100++;
          v114 = vsubq_f16(v111, v56);
          v115 = vsubq_f16(vcvtq_f16_u16(vshlq_u16(v113, v84)), v56);
          v116 = vmlaq_n_f16(v106, v114, _H8);
          v117 = vmlaq_n_f16(v106, v115, _H8);
          v118 = vmlaq_n_f16(v109, v114, _H8);
          v119 = vmlaq_n_f16(v109, v115, _H8);
          v120 = vmlaq_n_f16(v107, v114, _H8);
          v121 = vmlaq_n_f16(v107, v115, _H8);
          *v79++ = vshlq_u16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v68, v116, _H9), v118, _H10), v120, v181), v68), v102)), v85);
          *v101++ = vshlq_u16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v68, v117, _H9), v119, _H10), v121, v181), v68), v102)), v85);
          v122 = vaddq_f16(vuzp2q_s16(v117, v119), vaddq_f16(vuzp1q_s16(v117, v119), vpaddq_f16(v116, v118)));
          v89 = v112;
          *(v78 + v98) = vshlq_u16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_f16(vmlaq_f16(vmlaq_f16(v112, v64, vzip1q_s16(v122, v122)), v65, vzip2q_s16(v122, v122)), v67, vaddq_f16(vtrn2q_s16(v121, v121), vaddq_f16(vaddq_f16(vtrn1q_s16(v120, v120), vtrn2q_s16(v120, v120)), vtrn1q_s16(v121, v121)))), v71), v72)), v85);
          v99 += 8;
          v98 += 16;
        }

        while (v99 < v19 - 7);
        v123 = (v80 + v98);
        v124 = (v78 + v98);
        v125 = v19 & 0xFFFFFFF8;
        v70 = v102;
        v90 = v180;
      }

      for (; v125 < result; v71 = v126)
      {
        v126 = v71;
        v127 = v67;
        v128 = v65;
        v129 = v64;
        v130 = v56;
        v131 = (*v123 >> v82) - v194;
        v132 = (v123[1] >> v82) - v194;
        v133 = *(&v88 + 1) * v132;
        v134 = (v191 * v132) + (v131 * v193);
        v135 = *&v88 * v131;
        v136 = v197 * ((v81->u16[0] >> v82) - v198);
        v137 = (*(&v88 + 1) * v132) + v136;
        v138 = v136 + v134;
        v139 = v135 + v136;
        v140 = (((_S2 * (v136 + v134)) + (v196 * v137)) + (v86 * (v135 + v136))) + v47;
        v141 = v49;
        if (v140 <= v49)
        {
          v141 = v140;
          if (v140 < v47)
          {
            v141 = v47;
          }
        }

        v142 = v70;
        v143 = v48;
        v144 = v197 * ((v81->u16[1] >> v82) - v198);
        v145 = v100->u16[0];
        v146 = v100->u16[1];
        v147 = v133 + v144;
        v148 = v134 + v144;
        v149 = v135 + v144;
        v150 = (((_S2 * (v134 + v144)) + (v196 * (v133 + v144))) + (v86 * (v135 + v144))) + v47;
        v79->i16[0] = llroundf(v141) << v83;
        v151 = v49;
        if (v150 <= v49)
        {
          v151 = (((_S2 * (v134 + v144)) + (v196 * (v133 + v144))) + (v86 * (v135 + v144))) + v47;
          if (v150 < v47)
          {
            v151 = v47;
          }
        }

        v152 = v197 * ((v145 >> v82) - v198);
        v153 = v133 + v152;
        v154 = v134 + v152;
        v155 = v135 + v152;
        v156 = (((_S2 * (v134 + v152)) + (v196 * (v133 + v152))) + (v86 * (v135 + v152))) + v47;
        v79->i16[1] = llroundf(v151) << v83;
        v157 = v49;
        if (v156 <= v49)
        {
          v157 = v156;
          if (v156 < v47)
          {
            v157 = v47;
          }
        }

        v158 = v197 * ((v146 >> v82) - v198);
        v159 = v133 + v158;
        v160 = v134 + v158;
        v161 = v135 + v158;
        v162 = (((_S2 * v160) + (v196 * v159)) + (v86 * (v135 + v158))) + v47;
        v101->i16[0] = llroundf(v157) << v83;
        v163 = v49;
        if (v162 <= v49)
        {
          v163 = v162;
          if (v162 < v47)
          {
            v163 = v47;
          }
        }

        v101->i16[1] = llroundf(v163) << v83;
        v164 = ((v137 + v147) + v153) + v159;
        v48 = v143;
        v165 = ((v138 + v148) + v154) + v160;
        v166 = ((v139 + v149) + v155) + v161;
        v167 = ((v143 + (v164 * *&v93)) + (v165 * *&v94)) + (v166 * v192);
        v168 = v90;
        v65 = v128;
        if (v167 <= v90)
        {
          v168 = ((v143 + (v164 * *&v93)) + (v165 * *&v94)) + (v166 * v192);
          if (v167 < v195)
          {
            v168 = v195;
          }
        }

        v169 = ((v143 + (v164 * *(&v93 + 1))) + (v165 * *(&v94 + 1))) + (v166 * v190);
        *v124 = llroundf(v168) << v83;
        v170 = v90;
        v64 = v129;
        v67 = v127;
        v70 = v142;
        if (v169 <= v90)
        {
          v170 = v169;
          if (v169 < v195)
          {
            v170 = v195;
          }
        }

        v125 += 2;
        v123 += 2;
        v81 = (v81 + 4);
        v100 = (v100 + 4);
        v124[1] = llroundf(v170) << v83;
        v79 = (v79 + 4);
        v101 = (v101 + 4);
        v124 += 2;
        v56 = v130;
      }

      v81 = &v96[v32];
      v80 += v33;
      v79 = &v97[v34];
      v78 += v35;
      v30 += 2;
      v58 = v187;
      v92 = v188;
      v95 = v189;
      _H9 = v185;
      v91 = v186;
      v89 = v183;
      _H10 = v184;
      v72 = v182;
    }

    while (v30 < v23);
  }

  if (v178 && v177)
  {
    if (v23 >= 1)
    {
      v171 = 0;
      v172 = (v178 + v174 * v175 + 2 * v176);
      v173 = 2 * v19;
      do
      {
        result = memcpy(v29, v172, v173);
        v172 += v174;
        v29 += v28;
        ++v171;
      }

      while (v23 > v171);
    }
  }

  else if (v177 && v23 >= 1)
  {
    do
    {
      if (v19 >= 1)
      {
        result = memset(v29, 255, 2 * v19);
      }

      v29 += v28;
      --v23;
    }

    while (v23);
  }

  *(v15 + a2 + 40) = 0;
  return result;
}

uint64_t vt_Copy_xf420_rgb_xf420(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v13 = a3;
  v14 = a1;
  v73 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v69 = a2[2];
  v70 = v17;
  v18 = a6[1];
  v71 = *a6;
  v72 = v16;
  v67 = a6[2];
  v68 = v18;
  if (v15 == 255)
  {
    v19 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v19)
    {
      v20 = 0;
LABEL_71:
      free(v19);
      return v20;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v19 = (&v61 - v21);
    bzero(&v61 - v21, v22);
  }

  v23 = vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_s64(vaddq_s64(v67, v68), v71), vceqq_s64(vaddq_s64(v69, v70), v72))));
  v24 = v67.i64[0];
  v25 = v68.i64[0];
  v26 = v70.i64[0];
  v27 = v69.i64[0];
  if (v67.i8[0])
  {
    v24 = v67.i64[0] + 1;
    v27 = v69.i64[0] + 1;
    v25 = v68.i64[0] - 1;
    v26 = v70.i64[0] - 1;
  }

  v28 = a9;
  v29 = v71.i64[0];
  v30 = v72.i64[0];
  if (v25)
  {
    if (v23.i8[4] & 1 | v23.i8[0] & 1 || (v31 = v26 + 1 + v27, v32 = 2 * v31, 2 * v31 > *a4) || ((2 * (v31 + (v31 >> 63))) & 0xFFFFFFFFFFFFFFFCLL) > a4[1] || (v33 = a4[2], v32 > v33) && v33 || (v34 = v25 + 1 + v24, v35 = 2 * v34, 2 * v34 > *a8) || ((2 * (v34 + (v34 >> 63))) & 0xFFFFFFFFFFFFFFFCLL) > a8[1] || (v36 = a8[2], v35 > v36) && v36)
    {
      --v25;
      --v26;
    }

    else
    {
      v29 = v71.i64[0] + 1;
      v30 = v72.i64[0] + 1;
      ++v26;
      ++v25;
    }
  }

  v37 = v68.i64[1];
  v38 = v70.i64[1];
  if (v67.i8[8])
  {
    v38 = v70.i64[1] - 1;
    v39 = v69.i64[1] + 1;
  }

  else
  {
    v39 = v69.i64[1];
  }

  if (v67.i8[8])
  {
    v37 = v68.i64[1] - 1;
    v40 = v67.i64[1] + 1;
  }

  else
  {
    v40 = v67.i64[1];
  }

  v41 = v71.i64[1];
  v42 = v72.i64[1];
  if (v37)
  {
    if (v23.i8[6] & 1 | v23.i8[2] & 1 || (v43 = v38 + 1 + v39, (*a4 * v43) > *a5) || (a4[1] * (v43 / 2)) > a5[1] || (a4[2] * v43) > a5[2] || (v44 = v37 + 1 + v40, (*a8 * v44) > *a9) || (a8[1] * (v44 / 2)) > a9[1] || (a8[2] * v44) > a9[2])
    {
      --v37;
      --v38;
    }

    else
    {
      v41 = v71.i64[1] + 1;
      v42 = v72.i64[1] + 1;
      ++v38;
      ++v37;
    }
  }

  if (v26 + v27 > v30)
  {
    v26 = v30 - v27;
  }

  if (v25 + v24 > v29)
  {
    v25 = v29 - v24;
  }

  if (v38 + v39 > v42)
  {
    v38 = v42 - v39;
  }

  if (v37 + v40 > v41)
  {
    v37 = v41 - v40;
  }

  if (v26 >= v25)
  {
    v45 = v25;
  }

  else
  {
    v45 = v26;
  }

  if (v38 >= v37)
  {
    v46 = v37;
  }

  else
  {
    v46 = v38;
  }

  v47 = v46 + v39 - 1;
  v48 = v45 + v27;
  v49 = (v47 * *a4 + 2 * (v45 + v27)) > *a5;
  v65 = v24;
  v66 = v14;
  v63 = a9;
  v64 = v27;
  v61 = v30;
  v62 = v29;
  v70.i64[0] = v40;
  v69.i64[0] = v39;
  v72.i64[0] = v41;
  v71.i64[0] = v42;
  v68.i64[0] = v45;
  if (v49)
  {
    v50 = v13;
    v51 = a5;
    v52 = a8;
    v53 = v15;
    goto LABEL_64;
  }

  if (*(v13 + 8) && a4[1] * ((v46 + v39 + 1) / 2 - 1) + 4 * ((v48 + 1 + ((v48 + 1) >> 63)) >> 1) > a5[1])
  {
    v50 = v13;
    v51 = a5;
    v52 = a8;
    v53 = v15;
    goto LABEL_64;
  }

  if (*(v13 + 16) && (2 * v48 + a4[2] * v47) > a5[2])
  {
    v50 = v13;
    v51 = a5;
    v52 = a8;
    v53 = v15;
    goto LABEL_64;
  }

  v54 = v46 + v40 - 1;
  v55 = v45 + v24;
  if ((*a8 * v54 + 2 * (v45 + v24)) > *a9)
  {
    v50 = v13;
    v51 = a5;
    v52 = a8;
    v53 = v15;
    goto LABEL_64;
  }

  if (*(a7 + 8) && a8[1] * ((v46 + v40 + 1) / 2 - 1) + 4 * ((v55 + 1 + ((v55 + 1) >> 63)) >> 1) > a9[1])
  {
    v50 = v13;
    v51 = a5;
    v52 = a8;
    v53 = v15;
    goto LABEL_64;
  }

  if (*(a7 + 16) && (2 * v55 + a8[2] * v54) > a9[2])
  {
    v50 = v13;
    v51 = a5;
    v52 = a8;
    v53 = v15;
LABEL_64:
    fig_log_get_emitter();
    v20 = FigSignalErrorAtGM();
    v15 = v53;
    a8 = v52;
    a5 = v51;
    v13 = v50;
    v24 = v65;
    v14 = v66;
    v28 = v63;
    v27 = v64;
    v30 = v61;
    v29 = v62;
    v40 = v70.i64[0];
    v39 = v69.i64[0];
    v41 = v72.i64[0];
    v42 = v71.i64[0];
    v45 = v68.i64[0];
    if (v20)
    {
      goto LABEL_70;
    }
  }

  *v19 = v15;
  *(v19 + 4) = v30;
  *(v19 + 12) = v42;
  *(v19 + 20) = v45;
  *(v19 + 28) = v46;
  *(v19 + 36) = v27;
  *(v19 + 44) = v39;
  v19[11] = v41;
  v19[12] = v45;
  v19[13] = v46;
  v19[14] = v24;
  v19[7] = v13;
  v19[8] = a4;
  v19[9] = a5;
  v19[10] = v29;
  v19[15] = v40;
  v19[16] = a7;
  v19[17] = a8;
  v19[18] = v28;
  v19[19] = v14;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v15, global_queue, v19, vt_Copy_xf420_rgb_xf420_GCD);
  if (!v15)
  {
    return 0;
  }

  v57 = (v19 + 20);
  v58 = v15;
  while (1)
  {
    v59 = *v57++;
    v20 = v59;
    if (v59)
    {
      break;
    }

    if (!--v58)
    {
      v20 = 0;
      break;
    }
  }

LABEL_70:
  if (v15 == 255)
  {
    goto LABEL_71;
  }

  return v20;
}

char *vt_Copy_xf420_rgb_xf420_GCD(void *a1, uint64_t a2, double a3, double a4, float a5, float a6)
{
  v109 = *(a1 + 36);
  v8 = 2 * *a1;
  v9 = *(a1 + 44) + 2 * (*(a1 + 28) * a2 / v8);
  v10 = a1[14];
  v12 = a1[12];
  v11 = a1[13];
  v13 = v11 * a2 / v8;
  v14 = a1[15] + 2 * v13;
  v15 = 2 * ((v11 + v11 * a2) / v8 - v13);
  v16 = a1[7];
  v17 = a1[8];
  result = a1[16];
  v19 = a1[17];
  v20 = v17[2];
  v110 = v16[2];
  v21 = v19[2];
  v22 = *(result + 2);
  v23 = (v22 + v21 * v14 + 2 * v10);
  if (v15 >= 1)
  {
    v24 = 0;
    v25 = a1[19];
    v26 = v12 & 0xFFFFFFFE;
    v27 = *v17;
    v28 = v17[1];
    v29 = *v19;
    v30 = v19[1];
    LOWORD(a5) = *(v25 + 140);
    LOWORD(a6) = *(v25 + 142);
    v31 = *(v25 + 136) / *(v25 + 128);
    v32 = LODWORD(a5);
    v33 = LODWORD(a6);
    v34 = v31 * *v25;
    v113 = v31 * *(v25 + 16);
    v114 = v31 * *(v25 + 8);
    v111 = v31 * *(v25 + 28);
    *&v35 = v111;
    v112 = v31 * *(v25 + 20);
    LOWORD(v35) = *(v25 + 144);
    v36 = v35;
    LOWORD(v35) = *(v25 + 146);
    v37 = v35;
    LOWORD(v35) = *(v25 + 148);
    v38 = v35;
    LOWORD(v35) = *(v25 + 150);
    v39 = v35;
    LOWORD(v35) = *(v25 + 152);
    v40 = v35;
    v41 = *(v25 + 36);
    v42 = *(v25 + 40);
    v43 = *(v25 + 44);
    v44 = *(v25 + 48) * 0.25;
    v45 = *(v25 + 52) * 0.25;
    v46 = *(v25 + 56) * 0.25;
    v47 = *(v25 + 60) * 0.25;
    v48 = *(v25 + 64) * 0.25;
    v49 = *(v25 + 68) * 0.25;
    v50 = *(result + 1);
    result = (*result + v29 * v14 + 2 * v10);
    v51 = v16[1];
    v52 = (*v16 + *v17 * v9 + 2 * v109);
    v53 = *(v25 + 132);
    v54 = v53 >= 0x11;
    v55 = 16 - v53;
    if (v54)
    {
      v55 = 0;
    }

    v56 = *(v25 + 124);
    if (v56 >= 0x11)
    {
      v57 = 0;
    }

    else
    {
      v57 = 16 - v56;
    }

    v58 = v50 + v30 * (v14 / 2) + 2 * v10;
    v59 = v51 + v28 * (v9 / 2) + 2 * v109;
    v60 = v55;
    do
    {
      v61 = &v52[v27];
      v62 = &result[v29];
      if (v26 >= 1)
      {
        v63 = 0;
        v64 = &v52[v27];
        v65 = &result[v29];
        do
        {
          v66 = (v59 + 2 * v63);
          v67 = (*v66 >> v57) - v33;
          v68 = (v66[1] >> v57) - v33;
          v69 = v114 * v68;
          v70 = (v112 * v68) + (v67 * v113);
          v71 = v111 * v67;
          v72 = v34 * ((*v52 >> v57) - v32);
          v73 = (v114 * v68) + v72;
          v74 = v72 + v70;
          v75 = v71 + v72;
          v76 = (((v42 * (v72 + v70)) + (v41 * v73)) + (v43 * (v71 + v72))) + v36;
          v77 = v38;
          if (v76 <= v38)
          {
            v77 = v76;
            if (v76 < v36)
            {
              v77 = v36;
            }
          }

          v78 = v34 * ((*(v52 + 1) >> v57) - v32);
          v79 = *v64;
          v80 = *(v64 + 1);
          v81 = v69 + v78;
          v82 = v70 + v78;
          v83 = v71 + v78;
          v84 = (((v42 * (v70 + v78)) + (v41 * (v69 + v78))) + (v43 * (v71 + v78))) + v36;
          *result = llroundf(v77) << v60;
          v85 = v38;
          if (v84 <= v38)
          {
            v85 = v84;
            if (v84 < v36)
            {
              v85 = v36;
            }
          }

          v86 = v34 * ((v79 >> v57) - v32);
          v87 = v69 + v86;
          v88 = v70 + v86;
          v89 = v71 + v86;
          v90 = (((v42 * (v70 + v86)) + (v41 * (v69 + v86))) + (v43 * (v71 + v86))) + v36;
          *(result + 1) = llroundf(v85) << v60;
          v91 = v38;
          if (v90 <= v38)
          {
            v91 = v90;
            if (v90 < v36)
            {
              v91 = v36;
            }
          }

          v92 = v34 * ((v80 >> v57) - v32);
          v93 = v69 + v92;
          v94 = v70 + v92;
          v95 = v71 + v92;
          v96 = (((v42 * v94) + (v41 * v93)) + (v43 * (v71 + v92))) + v36;
          *v65 = llroundf(v91) << v60;
          v97 = v38;
          if (v96 <= v38)
          {
            v97 = v96;
            if (v96 < v36)
            {
              v97 = v36;
            }
          }

          *(v65 + 1) = llroundf(v97) << v60;
          v98 = ((v73 + v81) + v87) + v93;
          v99 = ((v74 + v82) + v88) + v94;
          v100 = ((v75 + v83) + v89) + v95;
          v101 = ((v37 + (v98 * v44)) + (v99 * v45)) + (v100 * v46);
          v102 = v40;
          if (v101 <= v40)
          {
            v102 = ((v37 + (v98 * v44)) + (v99 * v45)) + (v100 * v46);
            if (v101 < v39)
            {
              v102 = v39;
            }
          }

          v103 = (v58 + 2 * v63);
          v104 = ((v37 + (v98 * v47)) + (v99 * v48)) + (v100 * v49);
          *v103 = llroundf(v102) << v60;
          v105 = v40;
          if (v104 <= v40)
          {
            v105 = v104;
            if (v104 < v39)
            {
              v105 = v39;
            }
          }

          v52 += 4;
          v64 += 4;
          result += 4;
          v65 += 4;
          v103[1] = llroundf(v105) << v60;
          v63 += 2;
        }

        while (v63 < v26);
      }

      v52 = &v61[v27];
      v59 += v28;
      result = &v62[v29];
      v58 += v30;
      v24 += 2;
    }

    while (v24 < v15);
  }

  if (v110 && v22)
  {
    if (v15 >= 1)
    {
      v106 = 0;
      v107 = (v110 + v20 * v9 + 2 * v109);
      v108 = 2 * v12;
      do
      {
        result = memcpy(v23, v107, v108);
        v107 += v20;
        v23 += v21;
        ++v106;
      }

      while (v15 > v106);
    }
  }

  else if (v22 && v15 >= 1)
  {
    do
    {
      if (v12 >= 1)
      {
        result = memset(v23, 255, 2 * v12);
      }

      v23 += v21;
      --v15;
    }

    while (v15);
  }

  *(a1 + a2 + 40) = 0;
  return result;
}

uint64_t vt_Copy_xf420_TRC_Tone_Mat_TRC_422vf_neon_fp16(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, unint64_t *a8, void *a9)
{
  v13 = a3;
  v73 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v69 = a2[2];
  v70 = v17;
  v18 = a6[1];
  v71 = *a6;
  v72 = v16;
  v67 = a6[2];
  v68 = v18;
  if (v15 == 255)
  {
    v19 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v19)
    {
      v20 = 0;
LABEL_71:
      free(v19);
      return v20;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v19 = (&v59 - v21);
    bzero(&v59 - v21, v22);
  }

  v23 = vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_s64(vaddq_s64(v67, v68), v71), vceqq_s64(vaddq_s64(v69, v70), v72))));
  v24 = v67.i64[0];
  v25 = v68.i64[0];
  v26 = v70.i64[0];
  v27 = v69.i64[0];
  if (v67.i8[0])
  {
    v24 = v67.i64[0] + 1;
    v27 = v69.i64[0] + 1;
    v25 = v68.i64[0] - 1;
    v26 = v70.i64[0] - 1;
  }

  v28 = a9;
  v29 = v71.i64[0];
  v30 = v72.i64[0];
  if (v25)
  {
    if (v23.i8[4] & 1 | v23.i8[0] & 1 || (v31 = v26 + 1 + v27, v32 = 2 * v31, 2 * v31 > *a4) || ((2 * (v31 + (v31 >> 63))) & 0xFFFFFFFFFFFFFFFCLL) > a4[1] || (v33 = a4[2], v32 > v33) && v33 || (v34 = v25 + 1 + v24, v34 > *a8) || ((v34 + (v34 >> 63)) & 0xFFFFFFFFFFFFFFFELL) > a8[1] || (v35 = a8[2], v34 > v35) && v35)
    {
      --v25;
      --v26;
    }

    else
    {
      v29 = v71.i64[0] + 1;
      v30 = v72.i64[0] + 1;
      ++v26;
      ++v25;
    }
  }

  v36 = v68.i64[1];
  v37 = v70.i64[1];
  if (v67.i8[8])
  {
    v37 = v70.i64[1] - 1;
    v38 = v69.i64[1] + 1;
  }

  else
  {
    v38 = v69.i64[1];
  }

  if (v67.i8[8])
  {
    v36 = v68.i64[1] - 1;
    v39 = v67.i64[1] + 1;
  }

  else
  {
    v39 = v67.i64[1];
  }

  v40 = v71.i64[1];
  v41 = v72.i64[1];
  v66 = a1;
  if (v36)
  {
    if (v23.i8[6] & 1 | v23.i8[2] & 1 || (v42 = v37 + 1 + v38, (*a4 * v42) > *a5) || (a4[1] * (v42 / 2)) > a5[1] || (a4[2] * v42) > a5[2] || (v43 = v36 + 1 + v39, *a8 * v43 > *a9) || a8[1] * v43 > a9[1] || a8[2] * v43 > a9[2])
    {
      --v36;
      --v37;
    }

    else
    {
      v40 = v71.i64[1] + 1;
      v41 = v72.i64[1] + 1;
      ++v37;
      ++v36;
    }
  }

  if (v26 + v27 > v30)
  {
    v26 = v30 - v27;
  }

  if (v25 + v24 > v29)
  {
    v25 = v29 - v24;
  }

  if (v37 + v38 > v41)
  {
    v37 = v41 - v38;
  }

  if (v36 + v39 > v40)
  {
    v36 = v40 - v39;
  }

  if (v26 >= v25)
  {
    v44 = v25;
  }

  else
  {
    v44 = v26;
  }

  if (v37 >= v36)
  {
    v45 = v36;
  }

  else
  {
    v45 = v37;
  }

  v46 = v45 + v38 - 1;
  v47 = v44 + v27;
  v48 = (v46 * *a4 + 2 * (v44 + v27)) > *a5;
  v64 = v24;
  v65 = v13;
  v62 = a9;
  v63 = v27;
  v60 = v30;
  v61 = v29;
  v70.i64[0] = v39;
  v69.i64[0] = v38;
  v72.i64[0] = v40;
  v71.i64[0] = v41;
  if (v48)
  {
    v49 = a5;
    v50 = a8;
    v51 = v15;
    goto LABEL_64;
  }

  if (*(v13 + 8) && a4[1] * ((v45 + v38 + 1) / 2 - 1) + 4 * ((v47 + 1 + ((v47 + 1) >> 63)) >> 1) > a5[1])
  {
    v49 = a5;
    v50 = a8;
    v51 = v15;
    goto LABEL_64;
  }

  if (*(v13 + 16) && (2 * v47 + a4[2] * v46) > a5[2])
  {
    v49 = a5;
    v50 = a8;
    v51 = v15;
    goto LABEL_64;
  }

  v52 = v39 + v45 - 1;
  v53 = v44 + v24;
  if (v44 + v24 + *a8 * v52 > *a9)
  {
    v49 = a5;
    v50 = a8;
    v51 = v15;
    goto LABEL_64;
  }

  if (*(a7 + 8) && ((v53 + 1 + ((v53 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + a8[1] * v52 > a9[1])
  {
    v49 = a5;
    v50 = a8;
    v51 = v15;
    goto LABEL_64;
  }

  if (*(a7 + 16) && v53 + a8[2] * v52 > a9[2])
  {
    v49 = a5;
    v50 = a8;
    v51 = v15;
LABEL_64:
    fig_log_get_emitter();
    v20 = FigSignalErrorAtGM();
    v15 = v51;
    a8 = v50;
    a5 = v49;
    v24 = v64;
    v13 = v65;
    v28 = v62;
    v27 = v63;
    v30 = v60;
    v29 = v61;
    v39 = v70.i64[0];
    v38 = v69.i64[0];
    v40 = v72.i64[0];
    v41 = v71.i64[0];
    if (v20)
    {
      goto LABEL_70;
    }
  }

  *v19 = v15;
  *(v19 + 4) = v30;
  *(v19 + 12) = v41;
  *(v19 + 20) = v44;
  *(v19 + 28) = v45;
  *(v19 + 36) = v27;
  *(v19 + 44) = v38;
  v19[11] = v40;
  v19[12] = v44;
  v19[13] = v45;
  v19[14] = v24;
  v19[7] = v13;
  v19[8] = a4;
  v19[9] = a5;
  v19[10] = v29;
  v19[15] = v39;
  v19[16] = a7;
  v19[17] = a8;
  v19[18] = v28;
  v19[19] = v66;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v15, global_queue, v19, vt_Copy_xf420_TRC_Tone_Mat_TRC_422vf_neon_fp16_GCD);
  if (!v15)
  {
    return 0;
  }

  v55 = (v19 + 20);
  v56 = v15;
  while (1)
  {
    v57 = *v55++;
    v20 = v57;
    if (v57)
    {
      break;
    }

    if (!--v56)
    {
      v20 = 0;
      break;
    }
  }

LABEL_70:
  if (v15 == 255)
  {
    goto LABEL_71;
  }

  return v20;
}

void *vt_Copy_xf420_TRC_Tone_Mat_TRC_422vf_neon_fp16_GCD(void *result, uint64_t a2, double a3, float32x4_t a4, float32x4_t a5, double a6, double a7, __n128 _Q5)
{
  v12 = 2 * *result;
  v389 = *(result + 44) + 2 * (*(result + 28) * a2 / v12);
  v390 = *(result + 36);
  v13 = result[14];
  v15 = result[12];
  v14 = result[13];
  v396 = result;
  v16 = v14 * a2 / v12;
  v17 = result[15] + 2 * v16;
  v18 = 2 * ((v14 + v14 * a2) / v12 - v16);
  v20 = result[7];
  v19 = result[8];
  v22 = result[16];
  v21 = result[17];
  v388 = v19[2];
  v392 = v20[2];
  v394 = v21[2];
  v391 = v22[2];
  v393 = (v391 + v394 * v17 + v13);
  if (v18 >= 1)
  {
    v23 = 0;
    v24 = result[19];
    v25 = (v15 - 7);
    v26 = *v19;
    v27 = v19[1];
    v28 = *v21;
    v29 = v21[1];
    v30 = v24[17].u16[2];
    v31 = v24[17].u16[3];
    v32.i32[0] = v24[3].i32[1];
    v33 = v24[18].u16[0];
    v34 = v24[18].u16[1];
    v35 = v24[18].u16[2];
    v36 = v24[18].u16[3];
    v37 = v24[19].u16[0];
    v460 = v24[5].f32[0];
    a5.i32[0] = v24[6].i32[0];
    v459 = v24[5].f32[1];
    a4.i32[0] = v24[6].i32[1];
    v38.i32[0] = v24[7].i32[0];
    v39 = 8191.0 / v24[16].u32[0];
    v40 = v30;
    v41 = v31;
    v42 = v33;
    v43 = v34;
    _Q5.n128_f32[0] = v35;
    v453 = v35;
    v44 = v36;
    v45 = &v24[2068] + 4;
    v46 = v37;
    v413 = v39 * v24->f32[0];
    __asm { FCVT            H8, S7 }

    *_Q5.n128_u16 = v30;
    v52 = v15 & 0xFFFFFFFE;
    v53 = vdupq_lane_s16(_Q5.n128_u64[0], 0);
    v32.i32[1] = v24[1].i32[0];
    v54 = &v24[20] + 4;
    *v8.f32 = vmul_n_f32(v32, v39);
    v55 = vdupq_lane_s32(vcvt_f16_f32(v8), 0);
    v56 = &v24[4116] + 4;
    *v10.f32 = vmul_n_f32(v24[2], v39);
    v57 = vdupq_lane_s32(vcvt_f16_f32(v10), 0);
    *&v39 = -v31;
    v58 = vmulq_n_f16(v55, *&v39);
    v451 = vmulq_n_f16(v57, *&v39);
    a5.i32[1] = v24[7].i32[1];
    *a5.f32 = vmul_f32(*a5.f32, 0x3F0000003F000000);
    v458 = a5.i64[0];
    v59 = vdupq_lane_s32(vcvt_f16_f32(a5), 0);
    a4.i32[1] = v24[8].i32[0];
    *a4.f32 = vmul_f32(*a4.f32, 0x3F0000003F000000);
    v457 = a4.i64[0];
    v60 = vdupq_lane_s32(vcvt_f16_f32(a4), 0);
    v38.i32[1] = v24[8].i32[1];
    v456 = v24[4].f32[1];
    __asm { FCVT            H1, S6 }

    v433 = _H1;
    *v11.f32 = vmul_f32(v38, 0x3F0000003F000000);
    v62 = vcvt_f16_f32(v11);
    v63 = vdupq_lane_s32(v62, 0);
    *v62.i16 = v33;
    v64 = v29;
    v65 = vdupq_lane_s16(v62, 0);
    *v62.i16 = v34;
    result = v28;
    v66 = vdupq_lane_s16(v62, 0);
    *v62.i16 = v35;
    v67 = vdupq_lane_s16(v62, 0);
    v444 = v67;
    v445 = v66;
    *v67.i16 = v36;
    v68 = vdupq_lane_s16(*v67.i8, 0);
    *v67.i16 = v37;
    v468 = vdupq_lane_s16(*v67.i8, 0);
    v469 = v68;
    v69 = v24[15].u8[4];
    if (v69 >= 0x11)
    {
      v70 = 0;
    }

    else
    {
      v70 = 16 - v69;
    }

    v71 = v22[1];
    if (v71)
    {
      v72 = (v71 + v29 * v17 + v13);
    }

    else
    {
      v72 = 0;
    }

    v73 = (*v22 + v28 * v17 + v13);
    v74 = v20[1] + v27 * (v389 / 2) + 2 * v390;
    v75 = (*v20 + v26 * v389 + 2 * v390);
    v76 = v70;
    v398 = v15 & 0xFFFFFFF8;
    v409 = 2 * v64;
    LODWORD(_Q12) = v24[11].i32[0];
    _Q5.n128_u32[0] = v24[12].u32[1];
    _S3 = v24[5].i32[0];
    __asm { FCVT            H3, S3 }

    v429 = *&_S3;
    _S3 = v24[5].i32[1];
    __asm { FCVT            H3, S3 }

    v432 = v24[13].f32[1];
    __asm { FCVT            H0, S0 }

    v427 = _H0;
    v428 = *&_S3;
    v431 = v24[14].f32[0];
    __asm { FCVT            H1, S1 }

    v425 = _H1;
    v430 = v24[14].f32[1];
    __asm { FCVT            H1, S2 }

    v426 = v24[15].f32[0];
    __asm { FCVT            H0, S0 }

    v423 = _H0;
    v424 = _H1;
    v443 = v24[9].f32[0];
    __asm { FCVT            H0, S4 }

    v442 = v24[9].f32[1];
    __asm { FCVT            H1, S20 }

    v441 = v24[10].f32[0];
    __asm { FCVT            H2, S6 }

    v440 = v24[10].f32[1];
    __asm { FCVT            H3, S9 }

    v439 = *&_Q12;
    __asm { FCVT            H4, S12 }

    v438 = v24[11].f32[1];
    __asm { FCVT            H6, S14 }

    v437 = v24[12].f32[0];
    __asm { FCVT            H9, S15 }

    v435 = _Q5.n128_f32[0];
    __asm { FCVT            H5, S5 }

    v434 = v24[13].f32[0];
    __asm { FCVT            H12, S16 }

    v89 = vdupq_n_s16(-v70);
    v90 = &v72[v64];
    v454 = v8.f32[0];
    v448 = v11.f32[0];
    v449 = _H8;
    v466 = v11.f32[1];
    v91 = 0uLL;
    v92.i64[0] = 0x9000900090009000;
    v92.i64[1] = 0x9000900090009000;
    v467 = v89;
    v405 = v18;
    v406 = v15;
    v403 = v27;
    v404 = v26;
    v401 = v64;
    v402 = v28;
    v399 = v76;
    v400 = v15 & 0xFFFFFFFE;
    v455 = v53;
    v452 = v58;
    v450 = v59;
    v463 = v41;
    v446 = v65;
    v447 = v57;
    v436 = v63;
    v462 = v40;
    v421 = _H1;
    v422 = _H0;
    v419 = *&_S3;
    v420 = _H2;
    v417 = _H6;
    v418 = _H4;
    v415 = _Q5;
    v416 = _H9;
    v414 = _Q12;
    v397 = v43;
    do
    {
      v464 = v90;
      v93 = (v75 + v26);
      v94 = (result + v73);
      v95 = &v72[v64];
      v411 = &v72[v64];
      v412 = result + v73;
      v410 = &v75->i8[v26];
      if (v15 < 8)
      {
        v220 = 0;
        v97 = v74;
      }

      else
      {
        v408 = v23;
        v96 = 0;
        v407 = v74;
        v97 = v74;
        v461 = v72;
        do
        {
          v465 = v73;
          v98 = *v97++;
          v99 = vcvtq_f16_u16(vshlq_u16(v98, v89));
          v100 = vmlaq_f16(v58, v55, v99);
          v101 = vmlaq_f16(v451, v57, v99);
          v102 = vtrn2q_s16(v100, v100);
          v103 = vuzp1q_s16(v101, v102).u64[0];
          v104 = vuzp2q_s16(v101, v102);
          *v104.i8 = vadd_f16(v103, *v104.i8);
          v105 = *v75++;
          v106 = vzip1q_s16(v104, v104);
          v107 = vcvtq_f16_u16(vshlq_u16(v105, v89));
          v108 = *v93++;
          v109 = vtrn1q_s16(v100, v100);
          v110 = vsubq_f16(v107, v53);
          v111 = vsubq_f16(vcvtq_f16_u16(vshlq_u16(v108, v89)), v53);
          v112 = vmlaq_n_f16(v106, v110, _H8);
          v113 = vmlaq_n_f16(v109, v110, _H8);
          v114 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(v102, v110, _H8), v91), v92));
          v115 = v114.u16[2];
          v116 = v114.u16[3];
          v117 = v114.u16[4];
          v118 = v114.u16[5];
          v119 = v114.u16[6];
          v120.i16[0] = *&v54[2 * v114.u16[0]];
          v121 = v114.u16[7];
          v122 = &v54[2 * v114.u16[1]];
          v123 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v112, v91), v92));
          v124 = v123.u16[0];
          v125 = v123.u16[1];
          v126 = &v54[2 * v115];
          v127 = &v54[2 * v116];
          v128 = v123.u16[2];
          v129 = v123.u16[3];
          v130 = &v54[2 * v117];
          v131 = &v54[2 * v118];
          v132 = v123.u16[4];
          v133 = v123.u16[5];
          v134 = &v54[2 * v119];
          v135 = v25;
          v136 = v123.u16[6];
          v137 = v123.u16[7];
          v120.i16[1] = *v122;
          v138 = &v54[2 * v121];
          v139 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v113, v91), v92));
          v120.i16[2] = *v126;
          v140.i16[0] = *&v54[2 * v139.u16[0]];
          v141.i16[0] = *&v54[2 * v124];
          v142 = &v54[2 * v125];
          v143 = &v54[2 * v139.u16[2]];
          v144 = &v54[2 * v128];
          v145 = &v54[2 * v139.u16[3]];
          v146 = &v54[2 * v139.u16[4]];
          v147 = &v54[2 * v139.u16[5]];
          v148 = &v54[2 * v129];
          v149 = &v54[2 * v139.u16[6]];
          v150 = &v54[2 * v132];
          v151 = &v54[2 * v139.u16[7]];
          v140.i16[1] = *&v54[2 * v139.u16[1]];
          v152 = &v54[2 * v133];
          v153 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(v102, v111, _H8), v91), v92));
          v102.i16[0] = *&v54[2 * v153.u16[0]];
          v154 = &v54[2 * v136];
          v140.i16[2] = *v143;
          v102.i16[1] = *&v54[2 * v153.u16[1]];
          v120.i16[3] = *v127;
          v155 = &v54[2 * v153.u16[5]];
          v141.i16[1] = *v142;
          v102.i16[2] = *&v54[2 * v153.u16[2]];
          v140.i16[3] = *v145;
          v102.i16[3] = *&v54[2 * v153.u16[3]];
          v25 = v135;
          LOWORD(v145) = v153.i16[7];
          v120.i16[4] = *v130;
          v156 = &v54[2 * v153.u16[6]];
          v102.i16[4] = *&v54[2 * v153.u16[4]];
          v141.i16[2] = *v144;
          v157 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(v106, v111, _H8), v91), v92));
          v140.i16[4] = *v146;
          v106.i16[0] = *&v54[2 * v157.u16[0]];
          v102.i16[5] = *v155;
          v120.i16[5] = *v131;
          v141.i16[3] = *v148;
          v140.i16[5] = *v147;
          v158 = &v54[2 * v157.u16[5]];
          v102.i16[6] = *v156;
          LOWORD(v156) = v157.i16[7];
          v106.i16[1] = *&v54[2 * v157.u16[1]];
          v120.i16[6] = *v134;
          v106.i16[2] = *&v54[2 * v157.u16[2]];
          v106.i16[3] = *&v54[2 * v157.u16[3]];
          v141.i16[4] = *v150;
          v159 = &v54[2 * v157.u16[6]];
          v106.i16[4] = *&v54[2 * v157.u16[4]];
          v140.i16[6] = *v149;
          v160 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(v109, v111, _H8), v91), v92));
          v102.i16[7] = *&v54[2 * v145];
          v109.i16[0] = *&v54[2 * v160.u16[0]];
          v106.i16[5] = *v158;
          v120.i16[7] = *v138;
          v141.i16[5] = *v152;
          v140.i16[7] = *v151;
          v106.i16[6] = *v159;
          v141.i16[6] = *v154;
          v109.i16[1] = *&v54[2 * v160.u16[1]];
          v109.i16[2] = *&v54[2 * v160.u16[2]];
          v141.i16[7] = *&v54[2 * v137];
          v109.i16[3] = *&v54[2 * v160.u16[3]];
          v109.i16[4] = *&v54[2 * v160.u16[4]];
          v106.i16[7] = *&v54[2 * v156];
          v109.i16[5] = *&v54[2 * v160.u16[5]];
          v109.i16[6] = *&v54[2 * v160.u16[6]];
          v109.i16[7] = *&v54[2 * v160.u16[7]];
          v161 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v120, v427), v141, v425), v140, v424), vmaxq_f16(vmaxq_f16(v120, v141), v140), v423), v91), v92));
          v113.i16[0] = *&v45[2 * v161.u16[0]];
          v162 = &v45[2 * v161.u16[1]];
          v163 = &v45[2 * v161.u16[2]];
          LOWORD(v147) = v161.i16[5];
          v164 = v161.u16[6];
          v165 = &v45[2 * v161.u16[3]];
          v166 = &v45[2 * v161.u16[4]];
          LOWORD(v145) = v161.i16[7];
          v167 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v102, v427), v106, v425), v109, v424), vmaxq_f16(vmaxq_f16(v102, v106), v109), v423), v91), v92));
          v113.i16[1] = *v162;
          v111.i16[0] = *&v45[2 * v167.u16[0]];
          v113.i16[2] = *v163;
          v113.i16[3] = *v165;
          v113.i16[4] = *v166;
          v113.i16[5] = *&v45[2 * v147];
          v168 = &v45[2 * v167.u16[4]];
          v169 = &v45[2 * v167.u16[5]];
          v113.i16[6] = *&v45[2 * v164];
          v170 = v167.u16[7];
          v111.i16[1] = *&v45[2 * v167.u16[1]];
          v113.i16[7] = *&v45[2 * v145];
          v171 = &v45[2 * v167.u16[6]];
          v111.i16[2] = *&v45[2 * v167.u16[2]];
          v111.i16[3] = *&v45[2 * v167.u16[3]];
          v172 = vmulq_f16(v120, v113);
          v111.i16[4] = *v168;
          v111.i16[5] = *v169;
          v173 = vmulq_f16(v141, v113);
          v111.i16[6] = *v171;
          v111.i16[7] = *&v45[2 * v170];
          v174 = vmulq_f16(v102, v111);
          v175 = v55;
          v176.i64[0] = 0x9000900090009000;
          v176.i64[1] = 0x9000900090009000;
          v177 = vmulq_f16(v140, v113);
          v178 = vmulq_f16(v106, v111);
          v179 = vmulq_f16(v109, v111);
          v140.i16[7] = HIWORD(v414);
          v120.i16[7] = v415.n128_i16[7];
          v180 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v172, v419), v173, v418), v177, v417);
          v181 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v174, v422), v178, v421), v179, v420);
          v182 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v174, v419), v178, v418), v179, v417);
          v183 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v177, *&v414), v173, *v415.n128_u16), v172, v416);
          v184 = vmlaq_n_f16(vmulq_n_f16(v179, *&v414), v178, *v415.n128_u16);
          v91 = 0uLL;
          v185 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v172, v422), v173, v421), v177, v420), 0), v176));
          v140.i16[0] = *&v56[2 * v185.u16[0]];
          v186 = &v56[2 * v185.u16[1]];
          v187 = &v56[2 * v185.u16[2]];
          v188 = &v56[2 * v185.u16[3]];
          v189 = &v56[2 * v185.u16[4]];
          v190 = &v56[2 * v185.u16[5]];
          LOWORD(v145) = v185.i16[7];
          v191 = &v56[2 * v185.u16[6]];
          v192 = vminq_f16(vmaxq_f16(v180, 0), v176);
          v193 = vcvtq_u16_f16(v192);
          v192.i16[0] = *&v56[2 * v193.u16[0]];
          v194 = &v56[2 * v145];
          v195 = &v56[2 * v193.u16[2]];
          v196 = &v56[2 * v193.u16[3]];
          v197 = &v56[2 * v193.u16[4]];
          v198 = &v56[2 * v193.u16[5]];
          v199 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v183, 0), v176));
          v200 = &v56[2 * v193.u16[6]];
          v120.i16[0] = *&v56[2 * v199.u16[0]];
          v201 = &v56[2 * v193.u16[7]];
          v140.i16[1] = *v186;
          v192.i16[1] = *&v56[2 * v193.u16[1]];
          v202 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v181, 0), v176));
          v120.i16[1] = *&v56[2 * v199.u16[1]];
          v181.i16[0] = *&v56[2 * v202.u16[0]];
          v140.i16[2] = *v187;
          v192.i16[2] = *v195;
          v181.i16[1] = *&v56[2 * v202.u16[1]];
          LOWORD(v187) = v199.i16[7];
          v120.i16[2] = *&v56[2 * v199.u16[2]];
          v140.i16[3] = *v188;
          v181.i16[2] = *&v56[2 * v202.u16[2]];
          v192.i16[3] = *v196;
          v120.i16[3] = *&v56[2 * v199.u16[3]];
          v181.i16[3] = *&v56[2 * v202.u16[3]];
          v181.i16[4] = *&v56[2 * v202.u16[4]];
          v203 = &v56[2 * v202.u16[5]];
          v204 = &v56[2 * v202.u16[6]];
          v140.i16[4] = *v189;
          v205 = &v56[2 * v202.u16[7]];
          v192.i16[4] = *v197;
          v206 = vminq_f16(vmaxq_f16(v182, 0), v176);
          v207 = vcvtq_u16_f16(v206);
          v120.i16[4] = *&v56[2 * v199.u16[4]];
          v206.i16[0] = *&v56[2 * v207.u16[0]];
          v181.i16[5] = *v203;
          v140.i16[5] = *v190;
          v206.i16[1] = *&v56[2 * v207.u16[1]];
          v192.i16[5] = *v198;
          v120.i16[5] = *&v56[2 * v199.u16[5]];
          v206.i16[2] = *&v56[2 * v207.u16[2]];
          v181.i16[6] = *v204;
          v206.i16[3] = *&v56[2 * v207.u16[3]];
          v140.i16[6] = *v191;
          v206.i16[4] = *&v56[2 * v207.u16[4]];
          v192.i16[6] = *v200;
          v206.i16[5] = *&v56[2 * v207.u16[5]];
          v206.i16[6] = *&v56[2 * v207.u16[6]];
          v120.i16[6] = *&v56[2 * v199.u16[6]];
          LOWORD(v203) = v207.i16[7];
          v208 = vminq_f16(vmaxq_f16(vmlaq_n_f16(v184, v174, v416), 0), v176);
          v55 = v175;
          v209 = vcvtq_u16_f16(v208);
          v210 = v181;
          v208.i16[0] = *&v56[2 * v209.u16[0]];
          v210.i16[7] = *v205;
          LOWORD(v205) = v209.i16[2];
          v211 = vuzp1q_s16(v140, v192);
          LOWORD(v186) = v209.i16[3];
          LOWORD(v197) = v209.i16[4];
          v140.i16[7] = *v194;
          LOWORD(v204) = v209.i16[5];
          LOWORD(v196) = v209.i16[6];
          v208.i16[1] = *&v56[2 * v209.u16[1]];
          LOWORD(v194) = v209.i16[7];
          v192.i16[7] = *v201;
          v212 = vmlaq_n_f16(vmlaq_n_f16(v65, v140, v433), v192, v429);
          v213 = vtrn1q_s16(v120, v120);
          v120.i16[7] = *&v56[2 * v187];
          v208.i16[2] = *&v56[2 * v205];
          v214 = vaddq_f16(v211, vuzp2q_s16(v140, v192));
          v215 = v206;
          v208.i16[3] = *&v56[2 * v186];
          v208.i16[4] = *&v56[2 * v197];
          v215.i16[7] = *&v56[2 * v203];
          v208.i16[5] = *&v56[2 * v204];
          v208.i16[6] = *&v56[2 * v196];
          v216 = vmlaq_f16(vmlaq_f16(vmlaq_f16(v445, v59, vzip1q_s16(v214, v214)), v60, vzip2q_s16(v214, v214)), v63, vaddq_f16(v213, vtrn2q_s16(v120, v120)));
          v217 = v208;
          v217.i16[7] = *&v56[2 * v194];
          *v465 = vmovn_s16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(v212, v120, v428), v65), v444)));
          v73 = v465 + 1;
          v218 = vminq_f16(vmaxq_f16(v216, v469), v468);
          v89 = v467;
          *&v461[v96] = vmovn_s16(vcvtq_u16_f16(v218));
          *v94++ = vmovn_s16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v65, v210, v433), v215, v429), v217, v428), v65), v444)));
          v219 = vaddq_f16(vuzp1q_s16(v181, v206), vuzp2q_s16(v210, v215));
          v92.i64[0] = 0x9000900090009000;
          v92.i64[1] = 0x9000900090009000;
          *&v464[v96] = vmovn_s16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_f16(vmlaq_f16(vmlaq_f16(v445, v59, vzip1q_s16(v219, v219)), v60, vzip2q_s16(v219, v219)), v63, vaddq_f16(vtrn1q_s16(v208, v208), vtrn2q_s16(v217, v217))), v469), v468)));
          v96 += 8;
        }

        while (v96 < v135);
        v72 = &v461[v96];
        v95 = &v464[v96];
        v220 = v398;
        v76 = v399;
        v18 = v405;
        v15 = v406;
        v23 = v408;
        v27 = v403;
        v26 = v404;
        v64 = v401;
        result = v402;
        v52 = v400;
        v74 = v407;
        v41 = v463;
        v43 = v397;
        v40 = v462;
      }

      for (; v220 < v52; v63 = v436)
      {
        v221 = (v97->u16[1] >> v76) - v41;
        v222 = v8.f32[1] * v221;
        v223 = v413 * ((v75->u16[0] >> v76) - v40);
        v224 = (v8.f32[1] * v221) + v223;
        v225 = 8191.0;
        if (v224 <= 8191.0)
        {
          v225 = (v8.f32[1] * v221) + v223;
          if (v224 < 0.0)
          {
            v225 = 0.0;
          }
        }

        v226 = (v97->u16[0] >> v76) - v41;
        v227 = (v10.f32[1] * v221) + (v226 * v10.f32[0]);
        v228 = 8191.0;
        if ((v223 + v227) <= 8191.0)
        {
          v228 = v223 + v227;
          if ((v223 + v227) < 0.0)
          {
            v228 = 0.0;
          }
        }

        v229 = v454 * v226;
        v230 = (v454 * v226) + v223;
        v231 = 8191.0;
        if (v230 <= 8191.0)
        {
          v231 = v230;
          if (v230 < 0.0)
          {
            v231 = 0.0;
          }
        }

        v232 = v413 * ((v75->u16[1] >> v76) - v40);
        v233 = 8191.0;
        if ((v222 + v232) <= 8191.0)
        {
          v233 = v222 + v232;
          if ((v222 + v232) < 0.0)
          {
            v233 = 0.0;
          }
        }

        v234 = 8191.0;
        if ((v227 + v232) <= 8191.0)
        {
          v234 = v227 + v232;
          if ((v227 + v232) < 0.0)
          {
            v234 = 0.0;
          }
        }

        v235 = v229 + v232;
        v236 = 8191.0;
        if (v235 <= 8191.0)
        {
          v236 = v235;
          if (v235 < 0.0)
          {
            v236 = 0.0;
          }
        }

        v237 = v413 * ((v93->u16[0] >> v76) - v40);
        v238 = 8191.0;
        if ((v222 + v237) <= 8191.0)
        {
          v238 = v222 + v237;
          if ((v222 + v237) < 0.0)
          {
            v238 = 0.0;
          }
        }

        v239 = 8191.0;
        if ((v227 + v237) <= 8191.0)
        {
          v239 = v227 + v237;
          if ((v227 + v237) < 0.0)
          {
            v239 = 0.0;
          }
        }

        v240 = v229 + v237;
        v241 = 8191.0;
        if (v240 <= 8191.0)
        {
          v241 = v240;
          if (v240 < 0.0)
          {
            v241 = 0.0;
          }
        }

        v242 = v413 * ((v93->u16[1] >> v76) - v40);
        v243 = v222 + v242;
        v244 = (v222 + v242) <= 8191.0;
        v245 = 8191.0;
        if (v244)
        {
          v245 = v243;
          if (v243 < 0.0)
          {
            v245 = 0.0;
          }
        }

        v246 = v227 + v242;
        v244 = (v227 + v242) <= 8191.0;
        v247 = 8191.0;
        if (v244)
        {
          v247 = v246;
          if (v246 < 0.0)
          {
            v247 = 0.0;
          }
        }

        v248 = v229 + v242;
        v249 = 8191.0;
        if (v248 <= 8191.0)
        {
          v249 = v248;
          if (v248 < 0.0)
          {
            v249 = 0.0;
          }
        }

        v250 = v44;
        _H0 = *&v54[2 * llroundf(fminf(fmaxf(v225, 0.0), 8191.0))];
        __asm { FCVT            S0, H0 }

        _H1 = *&v54[2 * llroundf(fminf(fmaxf(v228, 0.0), 8191.0))];
        __asm { FCVT            S1, H1 }

        _H2 = *&v54[2 * llroundf(fminf(fmaxf(v231, 0.0), 8191.0))];
        __asm { FCVT            S2, H2 }

        _H12 = *&v54[2 * llroundf(fminf(fmaxf(v233, 0.0), 8191.0))];
        _H24 = *&v54[2 * llroundf(fminf(fmaxf(v234, 0.0), 8191.0))];
        _H23 = *&v54[2 * llroundf(fminf(fmaxf(v236, 0.0), 8191.0))];
        _H11 = *&v54[2 * llroundf(fminf(fmaxf(v238, 0.0), 8191.0))];
        _H21 = *&v54[2 * llroundf(fminf(fmaxf(v239, 0.0), 8191.0))];
        _H22 = *&v54[2 * llroundf(fminf(fmaxf(v241, 0.0), 8191.0))];
        _H4 = *&v54[2 * llroundf(fminf(fmaxf(v245, 0.0), 8191.0))];
        _H6 = *&v54[2 * llroundf(fminf(fmaxf(v247, 0.0), 8191.0))];
        _H3 = *&v54[2 * llroundf(fminf(fmaxf(v249, 0.0), 8191.0))];
        v266 = (((v431 * _S1) + (v432 * _S0)) + (v430 * _S2)) + (v426 * fmaxf(_S0, fmaxf(_S1, _S2)));
        v267 = 8191.0;
        if (v266 <= 8191.0)
        {
          v267 = v266;
          if (v266 < 0.0)
          {
            v267 = 0.0;
          }
        }

        v268 = v43;
        __asm
        {
          FCVT            S9, H12
          FCVT            S12, H24
          FCVT            S14, H23
        }

        _H23 = *&v45[2 * llroundf(v267)];
        v273 = (((v431 * _S12) + (v432 * _S9)) + (v430 * _S14)) + (v426 * fmaxf(_S9, fmaxf(_S12, _S14)));
        v274 = 8191.0;
        if (v273 <= 8191.0)
        {
          v274 = v273;
          if (v273 < 0.0)
          {
            v274 = 0.0;
          }
        }

        __asm
        {
          FCVT            S26, H11
          FCVT            S5, H21
          FCVT            S20, H22
        }

        _H27 = *&v45[2 * llroundf(v274)];
        v279 = (((v431 * _S5) + (v432 * _S26)) + (v430 * _S20)) + (v426 * fmaxf(_S26, fmaxf(_S5, _S20)));
        v280 = 8191.0;
        if (v279 <= 8191.0)
        {
          v280 = v279;
          if (v279 < 0.0)
          {
            v280 = 0.0;
          }
        }

        __asm
        {
          FCVT            S24, H4
          FCVT            S11, H6
          FCVT            S25, H3
          FCVT            S3, H23
        }

        v285 = _S0 * _S3;
        v286 = _S1 * _S3;
        v287 = _S2 * _S3;
        __asm { FCVT            S0, H27 }

        v289 = _S9 * _S0;
        v290 = _S12 * _S0;
        v291 = _S14 * _S0;
        LOWORD(_S0) = *&v45[2 * llroundf(v280)];
        __asm { FCVT            S1, H0 }

        v293 = _S26 * _S1;
        v294 = _S5 * _S1;
        v295 = _S20 * _S1;
        v296 = (((v431 * _S11) + (v432 * _S24)) + (v430 * _S25)) + (v426 * fmaxf(_S24, fmaxf(_S11, _S25)));
        v297 = 8191.0;
        if (v296 <= 8191.0)
        {
          v297 = v296;
          if (v296 < 0.0)
          {
            v297 = 0.0;
          }
        }

        _H5 = *&v45[2 * llroundf(v297)];
        __asm { FCVT            S5, H5 }

        v300 = _S24 * _S5;
        v301 = _S11 * _S5;
        _S5 = _S25 * _S5;
        v303 = ((v442 * v286) + (v285 * v443)) + (v287 * v441);
        v304 = ((v439 * v286) + (v285 * v440)) + (v287 * v438);
        v305 = ((v435 * v286) + (v285 * v437)) + (v287 * v434);
        v306 = ((v442 * v290) + (v289 * v443)) + (v291 * v441);
        v307 = ((v439 * v290) + (v289 * v440)) + (v291 * v438);
        _S3 = ((v435 * v290) + (v289 * v437)) + (v291 * v434);
        v309 = ((v442 * v294) + (v293 * v443)) + (v295 * v441);
        _S6 = ((v439 * v294) + (v293 * v440)) + (v295 * v438);
        v311 = ((v435 * v294) + (v293 * v437)) + (v295 * v434);
        v312 = (v439 * v301) + (v300 * v440);
        v313 = (v435 * v301) + (v300 * v437);
        v314 = ((v442 * v301) + (v300 * v443)) + (_S5 * v441);
        v315 = v312 + (_S5 * v438);
        v316 = v313 + (_S5 * v434);
        _H0 = *&v56[2 * llroundf(fminf(fmaxf(v303, 0.0), 8191.0))];
        v318 = llroundf(fminf(fmaxf(_S3, 0.0), 8191.0));
        LOWORD(_S3) = *&v56[2 * llroundf(fminf(fmaxf(v304, 0.0), 8191.0))];
        __asm
        {
          FCVT            S1, H0
          FCVT            S0, H3
        }

        v321 = llroundf(fminf(fmaxf(v309, 0.0), 8191.0));
        LOWORD(_S3) = *&v56[2 * llroundf(fminf(fmaxf(v305, 0.0), 8191.0))];
        v322 = llroundf(fminf(fmaxf(_S6, 0.0), 8191.0));
        __asm { FCVT            S4, H3 }

        LOWORD(_S3) = *&v56[2 * llroundf(fminf(fmaxf(v306, 0.0), 8191.0))];
        __asm { FCVT            S3, H3 }

        v325 = llroundf(fminf(fmaxf(v311, 0.0), 8191.0));
        LOWORD(_S5) = *&v56[2 * llroundf(fminf(fmaxf(v307, 0.0), 8191.0))];
        __asm { FCVT            S5, H5 }

        v327 = llroundf(fminf(fmaxf(v314, 0.0), 8191.0));
        LOWORD(_S6) = *&v56[2 * v318];
        __asm { FCVT            S6, H6 }

        v329 = llroundf(fminf(fmaxf(v315, 0.0), 8191.0));
        v330 = llroundf(fminf(fmaxf(v316, 0.0), 8191.0));
        v331 = (((v460 * _S0) + (v456 * _S1)) + (v459 * _S4)) + v42;
        if (v331 < v42)
        {
          v332 = v42;
        }

        else
        {
          v332 = (((v460 * _S0) + (v456 * _S1)) + (v459 * _S4)) + v42;
        }

        v244 = v331 <= v453;
        v333 = (((v460 * _S5) + (v456 * _S3)) + (v459 * _S6)) + v42;
        if (!v244)
        {
          v332 = v453;
        }

        v334 = llroundf(v332);
        if (v333 < v42)
        {
          v335 = v42;
        }

        else
        {
          v335 = (((v460 * _S5) + (v456 * _S3)) + (v459 * _S6)) + v42;
        }

        v244 = v333 <= v453;
        _H2 = *&v56[2 * v321];
        if (!v244)
        {
          v335 = v453;
        }

        v337 = llroundf(v335);
        _H16 = *&v56[2 * v322];
        __asm
        {
          FCVT            S20, H2
          FCVT            S2, H16
        }

        _S3 = _S1 + _S3;
        _H1 = *&v56[2 * v325];
        __asm { FCVT            S1, H1 }

        v344 = _S0 + _S5;
        _H5 = *&v56[2 * v327];
        __asm { FCVT            S5, H5 }

        v347 = _S4 + _S6;
        v43 = v268;
        v348 = (v268 + (_S3 * *&v458)) + (v344 * *&v457);
        v349 = (v268 + (_S3 * *(&v458 + 1))) + (v344 * *(&v457 + 1));
        LOWORD(_S3) = *&v56[2 * v329];
        __asm { FCVT            S3, H3 }

        v351 = v348 + (v347 * v448);
        v352 = v349 + (v347 * v466);
        v44 = v250;
        if (v351 < v250)
        {
          v353 = v250;
        }

        else
        {
          v353 = v351;
        }

        _H6 = *&v56[2 * v330];
        __asm { FCVT            S6, H6 }

        if (!(_NF ^ _VF | _ZF))
        {
          v353 = v46;
        }

        v356 = llroundf(v353);
        if (v352 < v250)
        {
          v357 = v250;
        }

        else
        {
          v357 = v352;
        }

        if (v352 <= v46)
        {
          v358 = v357;
        }

        else
        {
          v358 = v46;
        }

        v359 = llroundf(v358);
        v360 = (((v460 * _S2) + (v456 * _S20)) + (v459 * _S1)) + v42;
        if (v360 < v42)
        {
          v361 = v42;
        }

        else
        {
          v361 = (((v460 * _S2) + (v456 * _S20)) + (v459 * _S1)) + v42;
        }

        v244 = v360 <= v453;
        v362 = (((v460 * _S3) + (v456 * _S5)) + (v459 * _S6)) + v42;
        if (!v244)
        {
          v361 = v453;
        }

        v363 = llroundf(v361);
        if (v362 < v42)
        {
          v364 = v42;
        }

        else
        {
          v364 = (((v460 * _S3) + (v456 * _S5)) + (v459 * _S6)) + v42;
        }

        if (v362 <= v453)
        {
          v365 = v364;
        }

        else
        {
          v365 = v453;
        }

        v73->i8[0] = v334;
        v73->i8[1] = v337;
        *v72 = v356;
        v72[1] = v359;
        v94->i8[0] = v363;
        v94->i8[1] = llroundf(v365);
        v366 = _S2 + _S3;
        v367 = _S1 + _S6;
        v368 = ((v43 + ((_S20 + _S5) * *&v458)) + (v366 * *&v457)) + (v367 * v448);
        v369 = v46;
        if (v368 <= v46)
        {
          v369 = ((v43 + ((_S20 + _S5) * *&v458)) + (v366 * *&v457)) + (v367 * v448);
          if (v368 < v250)
          {
            v369 = v250;
          }
        }

        v370 = ((v43 + ((_S20 + _S5) * *(&v458 + 1))) + (v366 * *(&v457 + 1))) + (v367 * v466);
        *v95 = llroundf(v369);
        v371 = v46;
        v40 = v462;
        v41 = v463;
        _H8 = v449;
        v53 = v455;
        v89 = v467;
        v91 = 0uLL;
        v92.i64[0] = 0x9000900090009000;
        v92.i64[1] = 0x9000900090009000;
        if (v370 <= v46)
        {
          v371 = v370;
          if (v370 < v44)
          {
            v371 = v44;
          }
        }

        v220 += 2;
        v97 = (v97 + 4);
        v75 = (v75 + 4);
        v93 = (v93 + 4);
        v73 = (v73 + 2);
        v95[1] = llroundf(v371);
        v72 += 2;
        v94 = (v94 + 2);
        v95 += 2;
        v65 = v446;
        v57 = v447;
        v58 = v452;
        v59 = v450;
      }

      v75 = &v410[v26];
      v74 += v27;
      v73 = (result + v412);
      v72 = &v411[v64];
      v23 += 2;
      v90 = &v464[v409];
    }

    while (v23 < v18);
  }

  if (v392 && v391)
  {
    v372 = v393;
    if (v18 >= 1)
    {
      v373 = 0;
      v374 = v392 + v388 * v389 + 2 * v390;
      do
      {
        if (v15 >= 1)
        {
          v375 = v15;
          v376 = v372;
          v377 = v374;
          do
          {
            v378 = *v377++;
            *v376++ = llroundf(v378 * 0.0038911);
            --v375;
          }

          while (v375);
        }

        v374 += v388;
        v372 += v394;
        ++v373;
      }

      while (v18 > v373);
    }
  }

  else
  {
    v379 = v393;
    if (v391 && v18 >= 1)
    {
      v380 = 0;
      v381 = vdupq_n_s64(v15 - 1);
      do
      {
        if (v15 >= 1)
        {
          v382 = 0;
          do
          {
            v383 = vdupq_n_s64(v382);
            v384 = vmovn_s64(vcgeq_u64(v381, vorrq_s8(v383, xmmword_18FECDDB0)));
            if (vuzp1_s8(vuzp1_s16(v384, *v381.i8), *v381.i8).u8[0])
            {
              v379[v382] = -1;
            }

            if (vuzp1_s8(vuzp1_s16(v384, *&v381), *&v381).i8[1])
            {
              v379[v382 + 1] = -1;
            }

            if (vuzp1_s8(vuzp1_s16(*&v381, vmovn_s64(vcgeq_u64(v381, vorrq_s8(v383, xmmword_18FECDDA0)))), *&v381).i8[2])
            {
              v379[v382 + 2] = -1;
              v379[v382 + 3] = -1;
            }

            v385 = vmovn_s64(vcgeq_u64(v381, vorrq_s8(v383, xmmword_18FECDD90)));
            if (vuzp1_s8(*&v381, vuzp1_s16(v385, *&v381)).i32[1])
            {
              v379[v382 + 4] = -1;
            }

            if (vuzp1_s8(*&v381, vuzp1_s16(v385, *&v381)).i8[5])
            {
              v379[v382 + 5] = -1;
            }

            if (vuzp1_s8(*&v381, vuzp1_s16(*&v381, vmovn_s64(vcgeq_u64(v381, vorrq_s8(v383, xmmword_18FECDD80))))).i8[6])
            {
              v379[v382 + 6] = -1;
              v379[v382 + 7] = -1;
            }

            v386 = vmovn_s64(vcgeq_u64(v381, vorrq_s8(v383, xmmword_18FECDD70)));
            if (vuzp1_s8(vuzp1_s16(v386, *v381.i8), *v381.i8).u8[0])
            {
              v379[v382 + 8] = -1;
            }

            if (vuzp1_s8(vuzp1_s16(v386, *&v381), *&v381).i8[1])
            {
              v379[v382 + 9] = -1;
            }

            if (vuzp1_s8(vuzp1_s16(*&v381, vmovn_s64(vcgeq_u64(v381, vorrq_s8(v383, xmmword_18FECDD60)))), *&v381).i8[2])
            {
              v379[v382 + 10] = -1;
              v379[v382 + 11] = -1;
            }

            v387 = vmovn_s64(vcgeq_u64(v381, vorrq_s8(v383, xmmword_18FECDD50)));
            if (vuzp1_s8(*&v381, vuzp1_s16(v387, *&v381)).i32[1])
            {
              v379[v382 + 12] = -1;
            }

            if (vuzp1_s8(*&v381, vuzp1_s16(v387, *&v381)).i8[5])
            {
              v379[v382 + 13] = -1;
            }

            if (vuzp1_s8(*&v381, vuzp1_s16(*&v381, vmovn_s64(vcgeq_u64(v381, vorrq_s8(v383, xmmword_18FECDD40))))).i8[6])
            {
              v379[v382 + 14] = -1;
              v379[v382 + 15] = -1;
            }

            v382 += 16;
          }

          while (((v15 + 15) & 0xFFFFFFFFFFFFFFF0) != v382);
        }

        v379 += v394;
        ++v380;
      }

      while (v18 > v380);
    }
  }

  *(v396 + a2 + 40) = 0;
  return result;
}

uint64_t vt_Copy_xf420_TRC_Tone_Mat_TRC_422vf(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, unint64_t *a8, void *a9)
{
  v13 = a3;
  v73 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v69 = a2[2];
  v70 = v17;
  v18 = a6[1];
  v71 = *a6;
  v72 = v16;
  v67 = a6[2];
  v68 = v18;
  if (v15 == 255)
  {
    v19 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v19)
    {
      v20 = 0;
LABEL_71:
      free(v19);
      return v20;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v19 = (&v59 - v21);
    bzero(&v59 - v21, v22);
  }

  v23 = vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_s64(vaddq_s64(v67, v68), v71), vceqq_s64(vaddq_s64(v69, v70), v72))));
  v24 = v67.i64[0];
  v25 = v68.i64[0];
  v26 = v70.i64[0];
  v27 = v69.i64[0];
  if (v67.i8[0])
  {
    v24 = v67.i64[0] + 1;
    v27 = v69.i64[0] + 1;
    v25 = v68.i64[0] - 1;
    v26 = v70.i64[0] - 1;
  }

  v28 = a9;
  v29 = v71.i64[0];
  v30 = v72.i64[0];
  if (v25)
  {
    if (v23.i8[4] & 1 | v23.i8[0] & 1 || (v31 = v26 + 1 + v27, v32 = 2 * v31, 2 * v31 > *a4) || ((2 * (v31 + (v31 >> 63))) & 0xFFFFFFFFFFFFFFFCLL) > a4[1] || (v33 = a4[2], v32 > v33) && v33 || (v34 = v25 + 1 + v24, v34 > *a8) || ((v34 + (v34 >> 63)) & 0xFFFFFFFFFFFFFFFELL) > a8[1] || (v35 = a8[2], v34 > v35) && v35)
    {
      --v25;
      --v26;
    }

    else
    {
      v29 = v71.i64[0] + 1;
      v30 = v72.i64[0] + 1;
      ++v26;
      ++v25;
    }
  }

  v36 = v68.i64[1];
  v37 = v70.i64[1];
  if (v67.i8[8])
  {
    v37 = v70.i64[1] - 1;
    v38 = v69.i64[1] + 1;
  }

  else
  {
    v38 = v69.i64[1];
  }

  if (v67.i8[8])
  {
    v36 = v68.i64[1] - 1;
    v39 = v67.i64[1] + 1;
  }

  else
  {
    v39 = v67.i64[1];
  }

  v40 = v71.i64[1];
  v41 = v72.i64[1];
  v66 = a1;
  if (v36)
  {
    if (v23.i8[6] & 1 | v23.i8[2] & 1 || (v42 = v37 + 1 + v38, (*a4 * v42) > *a5) || (a4[1] * (v42 / 2)) > a5[1] || (a4[2] * v42) > a5[2] || (v43 = v36 + 1 + v39, *a8 * v43 > *a9) || a8[1] * v43 > a9[1] || a8[2] * v43 > a9[2])
    {
      --v36;
      --v37;
    }

    else
    {
      v40 = v71.i64[1] + 1;
      v41 = v72.i64[1] + 1;
      ++v37;
      ++v36;
    }
  }

  if (v26 + v27 > v30)
  {
    v26 = v30 - v27;
  }

  if (v25 + v24 > v29)
  {
    v25 = v29 - v24;
  }

  if (v37 + v38 > v41)
  {
    v37 = v41 - v38;
  }

  if (v36 + v39 > v40)
  {
    v36 = v40 - v39;
  }

  if (v26 >= v25)
  {
    v44 = v25;
  }

  else
  {
    v44 = v26;
  }

  if (v37 >= v36)
  {
    v45 = v36;
  }

  else
  {
    v45 = v37;
  }

  v46 = v45 + v38 - 1;
  v47 = v44 + v27;
  v48 = (v46 * *a4 + 2 * (v44 + v27)) > *a5;
  v64 = v24;
  v65 = v13;
  v62 = a9;
  v63 = v27;
  v60 = v30;
  v61 = v29;
  v70.i64[0] = v39;
  v69.i64[0] = v38;
  v72.i64[0] = v40;
  v71.i64[0] = v41;
  if (v48)
  {
    v49 = a5;
    v50 = a8;
    v51 = v15;
    goto LABEL_64;
  }

  if (*(v13 + 8) && a4[1] * ((v45 + v38 + 1) / 2 - 1) + 4 * ((v47 + 1 + ((v47 + 1) >> 63)) >> 1) > a5[1])
  {
    v49 = a5;
    v50 = a8;
    v51 = v15;
    goto LABEL_64;
  }

  if (*(v13 + 16) && (2 * v47 + a4[2] * v46) > a5[2])
  {
    v49 = a5;
    v50 = a8;
    v51 = v15;
    goto LABEL_64;
  }

  v52 = v39 + v45 - 1;
  v53 = v44 + v24;
  if (v44 + v24 + *a8 * v52 > *a9)
  {
    v49 = a5;
    v50 = a8;
    v51 = v15;
    goto LABEL_64;
  }

  if (*(a7 + 8) && ((v53 + 1 + ((v53 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + a8[1] * v52 > a9[1])
  {
    v49 = a5;
    v50 = a8;
    v51 = v15;
    goto LABEL_64;
  }

  if (*(a7 + 16) && v53 + a8[2] * v52 > a9[2])
  {
    v49 = a5;
    v50 = a8;
    v51 = v15;
LABEL_64:
    fig_log_get_emitter();
    v20 = FigSignalErrorAtGM();
    v15 = v51;
    a8 = v50;
    a5 = v49;
    v24 = v64;
    v13 = v65;
    v28 = v62;
    v27 = v63;
    v30 = v60;
    v29 = v61;
    v39 = v70.i64[0];
    v38 = v69.i64[0];
    v40 = v72.i64[0];
    v41 = v71.i64[0];
    if (v20)
    {
      goto LABEL_70;
    }
  }

  *v19 = v15;
  *(v19 + 4) = v30;
  *(v19 + 12) = v41;
  *(v19 + 20) = v44;
  *(v19 + 28) = v45;
  *(v19 + 36) = v27;
  *(v19 + 44) = v38;
  v19[11] = v40;
  v19[12] = v44;
  v19[13] = v45;
  v19[14] = v24;
  v19[7] = v13;
  v19[8] = a4;
  v19[9] = a5;
  v19[10] = v29;
  v19[15] = v39;
  v19[16] = a7;
  v19[17] = a8;
  v19[18] = v28;
  v19[19] = v66;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v15, global_queue, v19, vt_Copy_xf420_TRC_Tone_Mat_TRC_422vf_GCD);
  if (!v15)
  {
    return 0;
  }

  v55 = (v19 + 20);
  v56 = v15;
  while (1)
  {
    v57 = *v55++;
    v20 = v57;
    if (v57)
    {
      break;
    }

    if (!--v56)
    {
      v20 = 0;
      break;
    }
  }

LABEL_70:
  if (v15 == 255)
  {
    goto LABEL_71;
  }

  return v20;
}

int vt_Copy_xf420_TRC_Tone_Mat_TRC_422vf_GCD(void *a1, uint64_t a2, double a3, double a4, float a5, float a6)
{
  v9 = 2 * *a1;
  v235 = *(a1 + 44) + 2 * (*(a1 + 28) * a2 / v9);
  v236 = *(a1 + 36);
  v10 = a1[14];
  v11 = a1[13];
  v241 = a1[12];
  v12 = v11 * a2 / v9;
  v13 = a1[15] + 2 * v12;
  v14 = 2 * ((v11 + v11 * a2) / v9 - v12);
  v15 = a1[7];
  v16 = a1[8];
  v18 = a1[16];
  v17 = a1[17];
  v242 = a1;
  v234 = v16[2];
  v238 = v15[2];
  v239 = v17[2];
  v237 = v18[2];
  v19 = (v237 + v239 * v13 + v10);
  if (v14 >= 1)
  {
    v20 = 0;
    v21 = a1[19];
    v22 = v241 & 0xFFFFFFFE;
    v23 = *v16;
    v24 = v16[1];
    v25 = *v17;
    v26 = v17[1];
    LOWORD(a5) = *(v21 + 140);
    LOWORD(a6) = *(v21 + 142);
    LOWORD(v6) = *(v21 + 144);
    LOWORD(v7) = *(v21 + 146);
    LOWORD(v8) = *(v21 + 148);
    v27 = 8191.0 / *(v21 + 128);
    v28 = LODWORD(a5);
    v29 = LODWORD(a6);
    v30 = v27 * *v21;
    v268 = v27 * *(v21 + 16);
    v269 = v27 * *(v21 + 8);
    v31 = v27 * *(v21 + 20);
    *&v32 = v27 * *(v21 + 28);
    v266 = *&v32;
    v267 = v31;
    v33 = v6;
    v34 = v7;
    v35 = v8;
    LOWORD(v32) = *(v21 + 150);
    v36 = v32;
    LOWORD(v32) = *(v21 + 152);
    v37 = v32;
    v263 = *(v21 + 40);
    v264 = *(v21 + 36);
    v262 = *(v21 + 44);
    v260 = *(v21 + 52) * 0.5;
    v261 = *(v21 + 48) * 0.5;
    v258 = *(v21 + 72);
    v259 = *(v21 + 56) * 0.5;
    v256 = *(v21 + 80);
    v257 = *(v21 + 76);
    v254 = *(v21 + 88);
    v255 = *(v21 + 84);
    v252 = *(v21 + 96);
    v253 = *(v21 + 92);
    v250 = *(v21 + 100);
    v248 = *(v21 + 104);
    v38 = v21 + 164;
    v39 = v21 + 16548;
    v41 = *v18;
    v40 = v18[1];
    v42 = v40 + v26 * v13 + v10;
    if (!v40)
    {
      v42 = 0;
    }

    v43 = (v41 + v25 * v13 + v10);
    v44 = *(v21 + 124);
    v45 = 16 - v44;
    _CF = v44 >= 0x11;
    v47 = *v15;
    v48 = v15[1] + v24 * (v235 / 2);
    v49 = v21 + 32932;
    v50 = (v47 + v23 * v235 + 2 * v236);
    if (_CF)
    {
      v51 = 0;
    }

    else
    {
      v51 = v45;
    }

    v52 = v48 + 2 * v236;
    v53 = v51;
    v54 = *(v21 + 108);
    v55 = *(v21 + 112);
    v57 = *(v21 + 116);
    v56 = *(v21 + 120);
    v271 = LODWORD(a6);
    v272 = v28;
    v270 = v30;
    v265 = v34;
    v251 = *(v21 + 60) * 0.5;
    v249 = *(v21 + 68) * 0.5;
    v246 = v54;
    v247 = *(v21 + 64) * 0.5;
    v244 = v57;
    v245 = v55;
    v243 = v56;
    do
    {
      v58 = &v50[v23];
      v59 = &v43[v25];
      v60 = v42 + v26;
      if (v22 >= 1)
      {
        v61 = 0;
        v62 = &v50[v23];
        v63 = &v43[v25];
        do
        {
          v64 = (v52 + 2 * v61);
          v65 = (v64[1] >> v53) - v29;
          v66 = v269 * v65;
          v67 = v30 * ((*v50 >> v53) - v28);
          v68 = (v269 * v65) + v67;
          v69 = 8191.0;
          if (v68 <= 8191.0)
          {
            v69 = (v269 * v65) + v67;
            if (v68 < 0.0)
            {
              v69 = 0.0;
            }
          }

          v70 = (*v64 >> v53) - v29;
          v71 = (v267 * v65) + (v70 * v268);
          v72 = 8191.0;
          if ((v67 + v71) <= 8191.0)
          {
            v72 = v67 + v71;
            if ((v67 + v71) < 0.0)
            {
              v72 = 0.0;
            }
          }

          v73 = v266 * v70;
          v74 = (v266 * v70) + v67;
          v75 = 8191.0;
          if (v74 <= 8191.0)
          {
            v75 = v74;
            if (v74 < 0.0)
            {
              v75 = 0.0;
            }
          }

          v76 = v30 * ((*(v50 + 1) >> v53) - v28);
          v77 = 8191.0;
          if ((v66 + v76) <= 8191.0)
          {
            v77 = v66 + v76;
            if ((v66 + v76) < 0.0)
            {
              v77 = 0.0;
            }
          }

          v78 = 8191.0;
          if ((v71 + v76) <= 8191.0)
          {
            v78 = v71 + v76;
            if ((v71 + v76) < 0.0)
            {
              v78 = 0.0;
            }
          }

          v79 = v73 + v76;
          v80 = (v73 + v76) <= 8191.0;
          v81 = 8191.0;
          if (v80)
          {
            v81 = v79;
            if (v79 < 0.0)
            {
              v81 = 0.0;
            }
          }

          v82 = v30 * ((*v62 >> v53) - v28);
          v83 = 8191.0;
          if ((v66 + v82) <= 8191.0)
          {
            v83 = v66 + v82;
            if ((v66 + v82) < 0.0)
            {
              v83 = 0.0;
            }
          }

          v84 = 8191.0;
          if ((v71 + v82) <= 8191.0)
          {
            v84 = v71 + v82;
            if ((v71 + v82) < 0.0)
            {
              v84 = 0.0;
            }
          }

          v85 = v73 + v82;
          v80 = (v73 + v82) <= 8191.0;
          v86 = 8191.0;
          if (v80)
          {
            v86 = v85;
            if (v85 < 0.0)
            {
              v86 = 0.0;
            }
          }

          v87 = v30 * ((*(v62 + 1) >> v53) - v28);
          v88 = v66 + v87;
          v80 = (v66 + v87) <= 8191.0;
          v89 = 8191.0;
          if (v80)
          {
            v89 = v88;
            if (v88 < 0.0)
            {
              v89 = 0.0;
            }
          }

          v90 = v71 + v87;
          v80 = (v71 + v87) <= 8191.0;
          v91 = 8191.0;
          if (v80)
          {
            v91 = v90;
            if (v90 < 0.0)
            {
              v91 = 0.0;
            }
          }

          v92 = v73 + v87;
          v93 = 8191.0;
          if (v92 <= 8191.0)
          {
            v93 = v92;
            if (v92 < 0.0)
            {
              v93 = 0.0;
            }
          }

          _H2 = *(v38 + 2 * llroundf(fminf(fmaxf(v69, 0.0), 8191.0)));
          __asm { FCVT            S2, H2 }

          _H23 = *(v38 + 2 * llroundf(fminf(fmaxf(v72, 0.0), 8191.0)));
          __asm { FCVT            S24, H23 }

          _H23 = *(v38 + 2 * llroundf(fminf(fmaxf(v75, 0.0), 8191.0)));
          __asm { FCVT            S25, H23 }

          _H23 = *(v38 + 2 * llroundf(fminf(fmaxf(v77, 0.0), 8191.0)));
          _H29 = *(v38 + 2 * llroundf(fminf(fmaxf(v78, 0.0), 8191.0)));
          _H31 = *(v38 + 2 * llroundf(fminf(fmaxf(v81, 0.0), 8191.0)));
          _H27 = *(v38 + 2 * llroundf(fminf(fmaxf(v83, 0.0), 8191.0)));
          _H21 = *(v38 + 2 * llroundf(fminf(fmaxf(v84, 0.0), 8191.0)));
          _H22 = *(v38 + 2 * llroundf(fminf(fmaxf(v86, 0.0), 8191.0)));
          _H1 = *(v38 + 2 * llroundf(fminf(fmaxf(v89, 0.0), 8191.0)));
          _H3 = *(v38 + 2 * llroundf(fminf(fmaxf(v91, 0.0), 8191.0)));
          _H17 = *(v38 + 2 * llroundf(fminf(fmaxf(v93, 0.0), 8191.0)));
          v112 = fmaxf(_S2, fmaxf(_S24, _S25));
          v113 = (((v55 * _S24) + (v54 * _S2)) + (v57 * _S25)) + (v56 * v112);
          v114 = 8191.0;
          if (v113 <= 8191.0)
          {
            v114 = (((v55 * _S24) + (v54 * _S2)) + (v57 * _S25)) + (v56 * v112);
            if (v113 < 0.0)
            {
              v114 = 0.0;
            }
          }

          __asm
          {
            FCVT            S26, H23
            FCVT            S28, H29
            FCVT            S30, H31
          }

          _H23 = *(v39 + 2 * llroundf(v114));
          v119 = (((v55 * _S28) + (v54 * _S26)) + (v57 * _S30)) + (v56 * fmaxf(_S26, fmaxf(_S28, _S30)));
          v120 = 8191.0;
          if (v119 <= 8191.0)
          {
            v120 = v119;
            if (v119 < 0.0)
            {
              v120 = 0.0;
            }
          }

          __asm
          {
            FCVT            S9, H27
            FCVT            S10, H21
            FCVT            S11, H22
          }

          _H21 = *(v39 + 2 * llroundf(v120));
          v125 = fmaxf(_S9, fmaxf(_S10, _S11));
          v126 = (((v55 * _S10) + (v54 * _S9)) + (v57 * _S11)) + (v56 * v125);
          v127 = 8191.0;
          if (v126 <= 8191.0)
          {
            v127 = (((v55 * _S10) + (v54 * _S9)) + (v57 * _S11)) + (v56 * v125);
            if (v126 < 0.0)
            {
              v127 = 0.0;
            }
          }

          __asm
          {
            FCVT            S29, H1
            FCVT            S31, H3
            FCVT            S8, H17
            FCVT            S1, H23
          }

          v132 = _S2 * _S1;
          v133 = _S24 * _S1;
          v134 = _S25 * _S1;
          __asm { FCVT            S1, H21 }

          v136 = _S26 * _S1;
          v137 = _S28 * _S1;
          v138 = _S30 * _S1;
          LOWORD(_S1) = *(v39 + 2 * llroundf(v127));
          __asm { FCVT            S2, H1 }

          v140 = _S9 * _S2;
          v141 = _S10 * _S2;
          v142 = _S11 * _S2;
          v143 = (((v55 * _S31) + (v54 * _S29)) + (v57 * _S8)) + (v56 * fmaxf(_S29, fmaxf(_S31, _S8)));
          v144 = 8191.0;
          if (v143 <= 8191.0)
          {
            v144 = v143;
            if (v143 < 0.0)
            {
              v144 = 0.0;
            }
          }

          _H25 = *(v39 + 2 * llroundf(v144));
          __asm { FCVT            S25, H25 }

          v147 = _S29 * _S25;
          v148 = _S31 * _S25;
          v149 = _S8 * _S25;
          v150 = ((v257 * v133) + (v132 * v258)) + (v134 * v256);
          v151 = ((v254 * v133) + (v132 * v255)) + (v134 * v253);
          _S23 = ((v250 * v133) + (v132 * v252)) + (v134 * v248);
          _S24 = ((v257 * v137) + (v136 * v258)) + (v138 * v256);
          v154 = ((v254 * v137) + (v136 * v255)) + (v138 * v253);
          _S22 = ((v250 * v137) + (v136 * v252)) + (v138 * v248);
          v156 = ((v257 * v141) + (v140 * v258)) + (v142 * v256);
          v157 = ((v254 * v141) + (v140 * v255)) + (v142 * v253);
          v158 = ((v250 * v141) + (v140 * v252)) + (v142 * v248);
          v159 = ((v254 * v148) + (v147 * v255)) + (v149 * v253);
          v160 = ((v250 * v148) + (v147 * v252)) + (v149 * v248);
          _H1 = *(v49 + 2 * llroundf(fminf(fmaxf(v150, 0.0), 8191.0)));
          _H3 = *(v49 + 2 * llroundf(fminf(fmaxf(v151, 0.0), 8191.0)));
          __asm
          {
            FCVT            S2, H1
            FCVT            S1, H3
          }

          v165 = llroundf(fminf(fmaxf(_S22, 0.0), 8191.0));
          _H3 = *(v49 + 2 * llroundf(fminf(fmaxf(_S23, 0.0), 8191.0)));
          __asm { FCVT            S3, H3 }

          LOWORD(_S22) = *(v49 + 2 * llroundf(fminf(fmaxf(_S24, 0.0), 8191.0)));
          __asm { FCVT            S22, H22 }

          v169 = llroundf(fminf(fmaxf(v157, 0.0), 8191.0));
          LOWORD(_S23) = *(v49 + 2 * llroundf(fminf(fmaxf(v154, 0.0), 8191.0)));
          __asm { FCVT            S23, H23 }

          v171 = llroundf(fminf(fmaxf(v158, 0.0), 8191.0));
          LOWORD(_S24) = *(v49 + 2 * v165);
          __asm { FCVT            S24, H24 }

          v173 = llroundf(fminf(fmaxf(((v257 * v148) + (v147 * v258)) + (v149 * v256), 0.0), 8191.0));
          _H25 = *(v49 + 2 * llroundf(fminf(fmaxf(v156, 0.0), 8191.0)));
          v175 = llroundf(fminf(fmaxf(v159, 0.0), 8191.0));
          v176 = llroundf(fminf(fmaxf(v160, 0.0), 8191.0));
          v177 = (((v263 * _S1) + (v264 * _S2)) + (v262 * _S3)) + v33;
          if (v177 < v33)
          {
            v178 = v33;
          }

          else
          {
            v178 = (((v263 * _S1) + (v264 * _S2)) + (v262 * _S3)) + v33;
          }

          v80 = v177 <= v35;
          v179 = (((v263 * _S23) + (v264 * _S22)) + (v262 * _S24)) + v33;
          if (!v80)
          {
            v178 = v35;
          }

          v180 = llroundf(v178);
          if (v179 < v33)
          {
            v181 = v33;
          }

          else
          {
            v181 = (((v263 * _S23) + (v264 * _S22)) + (v262 * _S24)) + v33;
          }

          if (v179 <= v35)
          {
            v182 = v181;
          }

          else
          {
            v182 = v35;
          }

          v183 = llroundf(v182);
          _H17 = *(v49 + 2 * v169);
          __asm
          {
            FCVT            S21, H25
            FCVT            S17, H17
          }

          _S22 = _S2 + _S22;
          _H2 = *(v49 + 2 * v171);
          __asm { FCVT            S2, H2 }

          v190 = _S1 + _S23;
          _H23 = *(v49 + 2 * v173);
          __asm { FCVT            S23, H23 }

          v193 = _S3 + _S24;
          v194 = (v265 + (_S22 * v261)) + (v190 * v260);
          v195 = (v265 + (_S22 * v251)) + (v190 * v247);
          LOWORD(_S22) = *(v49 + 2 * v175);
          __asm { FCVT            S22, H22 }

          v197 = v194 + (v193 * v259);
          v198 = v195 + (v193 * v249);
          if (v197 < v36)
          {
            v199 = v36;
          }

          else
          {
            v199 = v197;
          }

          _H24 = *(v49 + 2 * v176);
          __asm { FCVT            S24, H24 }

          if (!(_NF ^ _VF | _ZF))
          {
            v199 = v37;
          }

          v202 = llroundf(v199);
          if (v198 < v36)
          {
            v203 = v36;
          }

          else
          {
            v203 = v198;
          }

          if (v198 <= v37)
          {
            v204 = v203;
          }

          else
          {
            v204 = v37;
          }

          v205 = llroundf(v204);
          v206 = (((v263 * _S17) + (v264 * _S21)) + (v262 * _S2)) + v33;
          if (v206 < v33)
          {
            v207 = v33;
          }

          else
          {
            v207 = (((v263 * _S17) + (v264 * _S21)) + (v262 * _S2)) + v33;
          }

          v80 = v206 <= v35;
          v208 = (((v263 * _S22) + (v264 * _S23)) + (v262 * _S24)) + v33;
          if (!v80)
          {
            v207 = v35;
          }

          v209 = llroundf(v207);
          if (v208 < v33)
          {
            v210 = v33;
          }

          else
          {
            v210 = (((v263 * _S22) + (v264 * _S23)) + (v262 * _S24)) + v33;
          }

          if (v208 <= v35)
          {
            v211 = v210;
          }

          else
          {
            v211 = v35;
          }

          LODWORD(a1) = llroundf(v211);
          v212 = _S21 + _S23;
          *v43 = v180;
          v43[1] = v183;
          *(v42 + v61 + 1) = v205;
          *(v42 + v61) = v202;
          *v63 = v209;
          v63[1] = a1;
          v213 = _S17 + _S22;
          v214 = _S2 + _S24;
          v215 = ((v265 + ((_S21 + _S23) * v261)) + ((_S17 + _S22) * v260)) + (v214 * v259);
          v216 = v37;
          if (v215 <= v37)
          {
            v216 = v215;
            if (v215 < v36)
            {
              v216 = v36;
            }
          }

          v217 = ((v265 + (v212 * v251)) + (v213 * v247)) + (v214 * v249);
          *(v60 + v61) = llroundf(v216);
          v218 = v37;
          v28 = v272;
          v30 = v270;
          if (v217 <= v37)
          {
            v218 = v217;
            if (v217 < v36)
            {
              v218 = v36;
            }
          }

          v50 += 4;
          v62 += 4;
          v43 += 2;
          v63 += 2;
          *(v60 + v61 + 1) = llroundf(v218);
          v61 += 2;
          v29 = v271;
          v55 = v245;
          v54 = v246;
          v56 = v243;
          v57 = v244;
        }

        while (v61 < v22);
      }

      v50 = &v58[v23];
      v52 += v24;
      v43 = &v59[v25];
      v42 = v60 + v26;
      v20 += 2;
    }

    while (v20 < v14);
  }

  if (v238 && v237)
  {
    LODWORD(a1) = v234;
    if (v14 >= 1)
    {
      v219 = 0;
      v220 = v238 + v234 * v235 + 2 * v236;
      do
      {
        if (v241 >= 1)
        {
          v221 = v241;
          v222 = v19;
          v223 = v220;
          do
          {
            v224 = *v223++;
            *v222++ = llroundf(v224 * 0.0038911);
            --v221;
          }

          while (v221);
        }

        v220 += v234;
        v19 += v239;
        ++v219;
      }

      while (v14 > v219);
    }
  }

  else if (v237 && v14 >= 1)
  {
    v225 = 0;
    v226 = vdupq_n_s64(v241 - 1);
    do
    {
      if (v241 >= 1)
      {
        v227 = 0;
        do
        {
          v228 = vdupq_n_s64(v227);
          v229 = vmovn_s64(vcgeq_u64(v226, vorrq_s8(v228, xmmword_18FECDDB0)));
          if (vuzp1_s8(vuzp1_s16(v229, *v226.i8), *v226.i8).u8[0])
          {
            v19[v227] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(v229, *&v226), *&v226).i8[1])
          {
            v19[v227 + 1] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(*&v226, vmovn_s64(vcgeq_u64(v226, vorrq_s8(v228, xmmword_18FECDDA0)))), *&v226).i8[2])
          {
            v19[v227 + 2] = -1;
            v19[v227 + 3] = -1;
          }

          v230 = vmovn_s64(vcgeq_u64(v226, vorrq_s8(v228, xmmword_18FECDD90)));
          if (vuzp1_s8(*&v226, vuzp1_s16(v230, *&v226)).i32[1])
          {
            v19[v227 + 4] = -1;
          }

          if (vuzp1_s8(*&v226, vuzp1_s16(v230, *&v226)).i8[5])
          {
            v19[v227 + 5] = -1;
          }

          if (vuzp1_s8(*&v226, vuzp1_s16(*&v226, vmovn_s64(vcgeq_u64(v226, vorrq_s8(v228, xmmword_18FECDD80))))).i8[6])
          {
            v19[v227 + 6] = -1;
            v19[v227 + 7] = -1;
          }

          v231 = vmovn_s64(vcgeq_u64(v226, vorrq_s8(v228, xmmword_18FECDD70)));
          if (vuzp1_s8(vuzp1_s16(v231, *v226.i8), *v226.i8).u8[0])
          {
            v19[v227 + 8] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(v231, *&v226), *&v226).i8[1])
          {
            v19[v227 + 9] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(*&v226, vmovn_s64(vcgeq_u64(v226, vorrq_s8(v228, xmmword_18FECDD60)))), *&v226).i8[2])
          {
            v19[v227 + 10] = -1;
            v19[v227 + 11] = -1;
          }

          v232 = vmovn_s64(vcgeq_u64(v226, vorrq_s8(v228, xmmword_18FECDD50)));
          if (vuzp1_s8(*&v226, vuzp1_s16(v232, *&v226)).i32[1])
          {
            v19[v227 + 12] = -1;
          }

          if (vuzp1_s8(*&v226, vuzp1_s16(v232, *&v226)).i8[5])
          {
            v19[v227 + 13] = -1;
          }

          if (vuzp1_s8(*&v226, vuzp1_s16(*&v226, vmovn_s64(vcgeq_u64(v226, vorrq_s8(v228, xmmword_18FECDD40))))).i8[6])
          {
            v19[v227 + 14] = -1;
            v19[v227 + 15] = -1;
          }

          v227 += 16;
        }

        while (((v241 + 15) & 0xFFFFFFFFFFFFFFF0) != v227);
      }

      v19 += v239;
      ++v225;
    }

    while (v14 > v225);
  }

  *(v242 + a2 + 40) = 0;
  return a1;
}

uint64_t vt_Copy_xf420_TRC_Mat_TRC_422vf_neon_fp16(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, unint64_t *a8, void *a9)
{
  v13 = a3;
  v73 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v69 = a2[2];
  v70 = v17;
  v18 = a6[1];
  v71 = *a6;
  v72 = v16;
  v67 = a6[2];
  v68 = v18;
  if (v15 == 255)
  {
    v19 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v19)
    {
      v20 = 0;
LABEL_71:
      free(v19);
      return v20;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v19 = (&v59 - v21);
    bzero(&v59 - v21, v22);
  }

  v23 = vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_s64(vaddq_s64(v67, v68), v71), vceqq_s64(vaddq_s64(v69, v70), v72))));
  v24 = v67.i64[0];
  v25 = v68.i64[0];
  v26 = v70.i64[0];
  v27 = v69.i64[0];
  if (v67.i8[0])
  {
    v24 = v67.i64[0] + 1;
    v27 = v69.i64[0] + 1;
    v25 = v68.i64[0] - 1;
    v26 = v70.i64[0] - 1;
  }

  v28 = a9;
  v29 = v71.i64[0];
  v30 = v72.i64[0];
  if (v25)
  {
    if (v23.i8[4] & 1 | v23.i8[0] & 1 || (v31 = v26 + 1 + v27, v32 = 2 * v31, 2 * v31 > *a4) || ((2 * (v31 + (v31 >> 63))) & 0xFFFFFFFFFFFFFFFCLL) > a4[1] || (v33 = a4[2], v32 > v33) && v33 || (v34 = v25 + 1 + v24, v34 > *a8) || ((v34 + (v34 >> 63)) & 0xFFFFFFFFFFFFFFFELL) > a8[1] || (v35 = a8[2], v34 > v35) && v35)
    {
      --v25;
      --v26;
    }

    else
    {
      v29 = v71.i64[0] + 1;
      v30 = v72.i64[0] + 1;
      ++v26;
      ++v25;
    }
  }

  v36 = v68.i64[1];
  v37 = v70.i64[1];
  if (v67.i8[8])
  {
    v37 = v70.i64[1] - 1;
    v38 = v69.i64[1] + 1;
  }

  else
  {
    v38 = v69.i64[1];
  }

  if (v67.i8[8])
  {
    v36 = v68.i64[1] - 1;
    v39 = v67.i64[1] + 1;
  }

  else
  {
    v39 = v67.i64[1];
  }

  v40 = v71.i64[1];
  v41 = v72.i64[1];
  v66 = a1;
  if (v36)
  {
    if (v23.i8[6] & 1 | v23.i8[2] & 1 || (v42 = v37 + 1 + v38, (*a4 * v42) > *a5) || (a4[1] * (v42 / 2)) > a5[1] || (a4[2] * v42) > a5[2] || (v43 = v36 + 1 + v39, *a8 * v43 > *a9) || a8[1] * v43 > a9[1] || a8[2] * v43 > a9[2])
    {
      --v36;
      --v37;
    }

    else
    {
      v40 = v71.i64[1] + 1;
      v41 = v72.i64[1] + 1;
      ++v37;
      ++v36;
    }
  }

  if (v26 + v27 > v30)
  {
    v26 = v30 - v27;
  }

  if (v25 + v24 > v29)
  {
    v25 = v29 - v24;
  }

  if (v37 + v38 > v41)
  {
    v37 = v41 - v38;
  }

  if (v36 + v39 > v40)
  {
    v36 = v40 - v39;
  }

  if (v26 >= v25)
  {
    v44 = v25;
  }

  else
  {
    v44 = v26;
  }

  if (v37 >= v36)
  {
    v45 = v36;
  }

  else
  {
    v45 = v37;
  }

  v46 = v45 + v38 - 1;
  v47 = v44 + v27;
  v48 = (v46 * *a4 + 2 * (v44 + v27)) > *a5;
  v64 = v24;
  v65 = v13;
  v62 = a9;
  v63 = v27;
  v60 = v30;
  v61 = v29;
  v70.i64[0] = v39;
  v69.i64[0] = v38;
  v72.i64[0] = v40;
  v71.i64[0] = v41;
  if (v48)
  {
    v49 = a5;
    v50 = a8;
    v51 = v15;
    goto LABEL_64;
  }

  if (*(v13 + 8) && a4[1] * ((v45 + v38 + 1) / 2 - 1) + 4 * ((v47 + 1 + ((v47 + 1) >> 63)) >> 1) > a5[1])
  {
    v49 = a5;
    v50 = a8;
    v51 = v15;
    goto LABEL_64;
  }

  if (*(v13 + 16) && (2 * v47 + a4[2] * v46) > a5[2])
  {
    v49 = a5;
    v50 = a8;
    v51 = v15;
    goto LABEL_64;
  }

  v52 = v39 + v45 - 1;
  v53 = v44 + v24;
  if (v44 + v24 + *a8 * v52 > *a9)
  {
    v49 = a5;
    v50 = a8;
    v51 = v15;
    goto LABEL_64;
  }

  if (*(a7 + 8) && ((v53 + 1 + ((v53 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + a8[1] * v52 > a9[1])
  {
    v49 = a5;
    v50 = a8;
    v51 = v15;
    goto LABEL_64;
  }

  if (*(a7 + 16) && v53 + a8[2] * v52 > a9[2])
  {
    v49 = a5;
    v50 = a8;
    v51 = v15;
LABEL_64:
    fig_log_get_emitter();
    v20 = FigSignalErrorAtGM();
    v15 = v51;
    a8 = v50;
    a5 = v49;
    v24 = v64;
    v13 = v65;
    v28 = v62;
    v27 = v63;
    v30 = v60;
    v29 = v61;
    v39 = v70.i64[0];
    v38 = v69.i64[0];
    v40 = v72.i64[0];
    v41 = v71.i64[0];
    if (v20)
    {
      goto LABEL_70;
    }
  }

  *v19 = v15;
  *(v19 + 4) = v30;
  *(v19 + 12) = v41;
  *(v19 + 20) = v44;
  *(v19 + 28) = v45;
  *(v19 + 36) = v27;
  *(v19 + 44) = v38;
  v19[11] = v40;
  v19[12] = v44;
  v19[13] = v45;
  v19[14] = v24;
  v19[7] = v13;
  v19[8] = a4;
  v19[9] = a5;
  v19[10] = v29;
  v19[15] = v39;
  v19[16] = a7;
  v19[17] = a8;
  v19[18] = v28;
  v19[19] = v66;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v15, global_queue, v19, vt_Copy_xf420_TRC_Mat_TRC_422vf_neon_fp16_GCD);
  if (!v15)
  {
    return 0;
  }

  v55 = (v19 + 20);
  v56 = v15;
  while (1)
  {
    v57 = *v55++;
    v20 = v57;
    if (v57)
    {
      break;
    }

    if (!--v56)
    {
      v20 = 0;
      break;
    }
  }

LABEL_70:
  if (v15 == 255)
  {
    goto LABEL_71;
  }

  return v20;
}