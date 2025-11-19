uint64_t gc_pred_237(int *a1, int a2, const float *__A, int *a4, _DWORD *a5, float *a6)
{
  v35 = -1431655766;
  v36 = -1431655766;
  __C = NAN;
  vDSP_dotpr(__A, 1, __A, 1, &__C, 0x28uLL);
  v11 = __C;
  if (a2 == 7)
  {
    v12 = 52428 * ((vcvtd_n_s64_f64(v11, 0x19uLL) + 0x8000) >> 16);
    __C = -3.0316e-13;
    frexp(v12, &__C);
    result = Log2_norm_242((v12 << ~LOBYTE(__C)), 31 - LODWORD(__C), &v36, &v35);
    v14 = &qua_gain_code_MR122[4 * *a1];
    if (v14 >= qua_gain_code_MR122 && v14 + 4 <= qua_gain_code_239 && v14 <= v14 + 4)
    {
      v15 = &qua_gain_code_MR122[4 * a1[1]];
      if (v15 >= qua_gain_code_MR122 && v15 + 4 <= qua_gain_code_239 && v15 <= v15 + 4)
      {
        v16 = &qua_gain_code_MR122[4 * a1[2]];
        if (v16 >= qua_gain_code_MR122 && v16 + 4 <= qua_gain_code_239 && v16 <= v16 + 4)
        {
          v17 = &qua_gain_code_MR122[4 * a1[3]];
          if (v17 >= qua_gain_code_MR122 && v17 + 4 <= qua_gain_code_239 && v17 <= v17 + 4)
          {
            v18 = 2 * (44 * *v14 - v35 + 37 * *v15 + 22 * *v16 + 12 * *v17) - (v36 << 16) + 2749821;
            v19 = v18 >> 17;
            *a4 = v18 >> 17;
            v20 = v18 >> 2;
LABEL_45:
            *a5 = v20 - (v19 << 15);
            return result;
          }
        }
      }
    }

    goto LABEL_46;
  }

  __C = -3.0316e-13;
  v21 = v11 * 134217728.0;
  v22 = v11 * 134217728.0 >= 0.0 && v21 <= 2147483650.0;
  v23 = vcvtd_n_s64_f64(v11, 0x1BuLL);
  if (v22)
  {
    v24 = v23;
  }

  else
  {
    v24 = 0x7FFFFFFF;
  }

  frexp(v24, &__C);
  result = Log2_norm_242((v24 << ~LOBYTE(__C)), 31 - LODWORD(__C), &v36, &v35);
  v25 = -49320 * v36 + 2 * ((-24660 * v35) >> 15);
  if (a2 > 4)
  {
    if (a2 == 5)
    {
      v26 = v25 + 2183936;
      v27 = v21;
      *a6 = v27;
      goto LABEL_29;
    }

LABEL_26:
    v26 = v25 + 2134784;
    goto LABEL_29;
  }

  if (a2 == 3)
  {
    v26 = v25 + 2065152;
    goto LABEL_29;
  }

  if (a2 != 4)
  {
    goto LABEL_26;
  }

  v26 = v25 + 2085632;
LABEL_29:
  v28 = &qua_gain_code_239[4 * *a1];
  if (v28 >= qua_gain_code_239 && v28 + 4 <= log2_table_243 && v28 <= v28 + 4)
  {
    v29 = &qua_gain_code_239[4 * a1[1]];
    if (v29 >= qua_gain_code_239 && v29 + 4 <= log2_table_243 && v29 <= v29 + 4)
    {
      v30 = &qua_gain_code_239[4 * a1[2]];
      if (v30 >= qua_gain_code_239 && v30 + 4 <= log2_table_243 && v30 <= v30 + 4)
      {
        v31 = &qua_gain_code_239[4 * a1[3]];
        if (v31 >= qua_gain_code_239 && v31 + 4 <= log2_table_243 && v31 <= v31 + 4)
        {
          v32 = (5571 * *v28 + (v26 << 9) + 4751 * *v29 + 2785 * *v30 + 1556 * *v31) >> 15;
          if (a2 == 4)
          {
            v33 = 10878;
          }

          else
          {
            v33 = 10886;
          }

          v34 = v32 * v33;
          v20 = v34 >> 9;
          v19 = v34 >> 24;
          *a4 = v19;
          goto LABEL_45;
        }
      }
    }
  }

LABEL_46:
  __break(0x5519u);
  return result;
}

uint64_t Pow2_238(uint64_t result, int a2)
{
  v2 = &pow2_table_241[a2 >> 10];
  v3 = v2 + 1;
  v5 = v2 < pow2_table_241 || v3 > table_gain_MR475_240 || v2 >= v3;
  v6 = v2 + 2;
  if (v5 || v6 > table_gain_MR475_240 || v3 > v6)
  {
    __break(0x5519u);
  }

  else if (result < -1)
  {
    return 0;
  }

  else
  {
    v9 = ((a2 & 0x3FF) << 6) * (v2[1] - *v2) + (*v2 << 16);
    return (v9 >> (30 - result)) + ((v9 >> (29 - result)) & 1);
  }

  return result;
}

void calc_filt_energies(int a1, const float *a2, const float *a3, const float *a4, const float *__A, uint64_t a6, uint64_t a7, float *a8)
{
  if (a1)
  {
    v15 = a1 == 5;
  }

  else
  {
    v15 = 1;
  }

  v16 = 0.0;
  if (v15)
  {
    v17 = 0.0;
  }

  else
  {
    v17 = 0.01;
  }

  *a7 = *a6;
  *(a7 + 4) = *(a6 + 4) * -2.0;
  __C = NAN;
  vDSP_dotpr(__A, 1, __A, 1, &__C, 0x28uLL);
  *(a7 + 8) = v17 + __C;
  __C = NAN;
  vDSP_dotpr(a2, 1, __A, 1, &__C, 0x28uLL);
  *(a7 + 12) = (v17 + __C) * -2.0;
  __C = NAN;
  vDSP_dotpr(a4, 1, __A, 1, &__C, 0x28uLL);
  *(a7 + 16) = (v17 + __C) + (v17 + __C);
  if (a1 == 5 || !a1)
  {
    __C = NAN;
    vDSP_dotpr(a3, 1, __A, 1, &__C, 0x28uLL);
    if (__C > 0.0)
    {
      v16 = __C / *(a7 + 8);
    }

    *a8 = v16;
  }
}

void subframePostProc(void *a1, int a2, uint64_t a3, void *a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, float a9, float a10, uint64_t a11, void *a12, void *a13, void *a14, float *a15)
{
  v22 = 0;
  v23 = 0.79456;
  if (a9 <= 0.79456)
  {
    v23 = a9;
  }

  *a15 = v23;
  v24 = a14[2];
  v25 = a6 + 160;
  v26 = a2;
  v27 = 4 * a2;
  v28 = -4;
  while (1)
  {
    v29 = (*a14 + v27 + v22);
    v30 = (v29 + 1) > a14[1] || v29 > v29 + 1;
    if (v30 || v29 < v24)
    {
      break;
    }

    *v29 = floorf(((*(a6 + v22) * a10) + (a9 * *v29)) + 0.5);
    v32 = *a14 + v27 + v22;
    v33 = (v32 + 4);
    v34 = v32 + 8;
    v35 = v34 > a14[1] || v33 > v34;
    v36 = !v35 && v33 >= v24;
    v37 = (a6 + v22 + 4);
    v38 = a6 + v22 + 8;
    v39 = !v36 || v38 > v25;
    if (v39 || v37 > v38)
    {
      break;
    }

    *v33 = floorf(((*v37 * a10) + (a9 * *v33)) + 0.5);
    v41 = *a14 + v27 + v22;
    v42 = v41 + 12;
    if ((v41 + 12) > a14[1])
    {
      break;
    }

    v43 = (v41 + 8);
    if (v43 > v42)
    {
      break;
    }

    if (v43 < v24)
    {
      break;
    }

    v44 = (a6 + v22 + 8);
    if (v44 < a6)
    {
      break;
    }

    v45 = a6 + v22 + 12;
    if (v45 > v25)
    {
      break;
    }

    if (v44 > v45)
    {
      break;
    }

    *v43 = floorf(((*v44 * a10) + (a9 * *v43)) + 0.5);
    v46 = *a14 + v27 + v22;
    v47 = v46 + 16;
    if ((v46 + 16) > a14[1])
    {
      break;
    }

    v48 = (v46 + 12);
    if (v48 > v47)
    {
      break;
    }

    if (v48 < v24)
    {
      break;
    }

    v49 = (a6 + v22 + 12);
    if (v49 < a6)
    {
      break;
    }

    v50 = a6 + v22 + 16;
    if (v50 > v25 || v49 > v50)
    {
      break;
    }

    *v48 = floorf(((*v49 * a10) + (a9 * *v48)) + 0.5);
    v28 += 4;
    v22 += 16;
    if (v28 >= 0x24)
    {
      v51 = *a11;
      v52 = *(a11 + 8);
      if (*a11 <= v52 && (v52 - v51) >= 37 && *(a11 + 16) <= v51)
      {
        v53 = a4[1];
        v54 = *a4 + 4 * a2;
        if (v54 <= v53 && a4[2] <= v54 && (v53 - v54) >= 157)
        {
          v55 = a14[1];
          v56 = *a14 + 4 * a2;
          if (v56 <= v55 && v24 <= v56 && (v55 - v56) >= 157)
          {
            v57 = *a3;
            v58 = *(a3 + 8);
            if (*a3 <= v58 && *(a3 + 16) <= v57 && (v58 - v57) >= 41)
            {
              Syn_filt_235(v57, v56, *a4 + 4 * v26, v51, 1);
              v59 = 0;
              v60 = a1[2];
              v61 = 4 * v26;
              while (1)
              {
                v62 = *a1 + v61 + v59;
                v63 = (v62 + 120);
                v64 = v62 + 124;
                v65 = v64 > a1[1] || v63 > v64;
                if (v65 || v63 < v60)
                {
                  break;
                }

                v67 = *a4 + v61 + v59;
                v68 = (v67 + 120);
                v69 = v67 + 124;
                v70 = v69 > a4[1] || v68 > v69;
                if (v70 || v68 < a4[2])
                {
                  break;
                }

                v72 = (*a12 + v59);
                v73 = (v72 + 1) > a12[1] || v72 > v72 + 1;
                if (v73 || v72 < a12[2])
                {
                  break;
                }

                *v72 = *v63 - *v68;
                v75 = (*a13 + v59);
                if ((v75 + 1) > a13[1] || v75 > v75 + 1 || v75 < a13[2])
                {
                  break;
                }

                *v75 = (*(a5 + 120 + v59) - (*(a7 + 120 + v59) * a9)) - (*(a8 + 120 + v59) * a10);
                v59 += 4;
                if (v59 == 40)
                {
                  return;
                }
              }
            }
          }
        }
      }

      break;
    }
  }

  __break(0x5519u);
}

void *Pred_lt_3or6(void *result, int a2, int a3)
{
  v3 = result[1];
  v4 = -4;
  if (-2 * a3 >= 0)
  {
    v5 = 0;
  }

  else
  {
    v5 = -4;
  }

  v6 = *result + 4 * -a2 + v5;
  if (-2 * a3 >= 0)
  {
    v7 = -2 * a3;
  }

  else
  {
    v7 = 6 - 2 * a3;
  }

  v8 = &b60[v7];
  v9 = &b60[6 - v7];
  v10 = v8 + 1 > E_ROM_corrweight || v8 > v8 + 1;
  v12 = !v10 && v8 >= b60;
  v221 = v12;
  v15 = v9 + 1 > E_ROM_corrweight || v9 > v9 + 1 || v9 < b60;
  v220 = v15;
  v16 = (v8 + 6);
  v17 = v8 + 7 > E_ROM_corrweight || v16 > v8 + 28;
  v199 = v8 + 6;
  v19 = !v17 && v16 >= b60;
  v219 = v19;
  v20 = (v9 + 6);
  v21 = v9 + 7 > E_ROM_corrweight || v20 > v9 + 28;
  v198 = v9 + 6;
  v23 = v21 || v20 < b60;
  v218 = v23;
  v24 = (v8 + 12);
  v25 = v8 + 13 > E_ROM_corrweight || v24 > v8 + 52;
  v197 = v8 + 12;
  v27 = !v25 && v24 >= b60;
  v217 = v27;
  v28 = (v9 + 12);
  v29 = v9 + 13 > E_ROM_corrweight || v28 > v9 + 52;
  v196 = v9 + 12;
  v31 = v29 || v28 < b60;
  v216 = v31;
  v32 = (v8 + 18);
  v33 = v8 + 19 > E_ROM_corrweight || v32 > v8 + 76;
  v195 = v8 + 18;
  v35 = !v33 && v32 >= b60;
  v215 = v35;
  v36 = (v9 + 18);
  v37 = v9 + 19 > E_ROM_corrweight || v36 > v9 + 76;
  v194 = v9 + 18;
  v39 = v37 || v36 < b60;
  v214 = v39;
  v40 = (v8 + 24);
  v41 = v8 + 25 > E_ROM_corrweight || v40 > v8 + 100;
  v193 = v8 + 24;
  v43 = !v41 && v40 >= b60;
  v213 = v43;
  v44 = (v9 + 24);
  v45 = v9 + 25 > E_ROM_corrweight || v44 > v9 + 100;
  v192 = v9 + 24;
  v47 = v45 || v44 < b60;
  v212 = v47;
  v48 = (v8 + 30);
  v49 = v8 + 31 > E_ROM_corrweight || v48 > v8 + 124;
  v191 = v8 + 30;
  v51 = !v49 && v48 >= b60;
  v211 = v51;
  v52 = (v9 + 30);
  v53 = v9 + 31 > E_ROM_corrweight || v52 > v9 + 124;
  v190 = v9 + 30;
  v55 = v53 || v52 < b60;
  v210 = v55;
  v56 = (v8 + 36);
  v57 = v8 + 37 > E_ROM_corrweight || v56 > v8 + 148;
  v189 = v8 + 36;
  v59 = !v57 && v56 >= b60;
  v209 = v59;
  v60 = (v9 + 36);
  v61 = v9 + 37 > E_ROM_corrweight || v60 > v9 + 148;
  v188 = v9 + 36;
  v63 = v61 || v60 < b60;
  v208 = v63;
  v64 = (v8 + 42);
  v65 = v8 + 43 > E_ROM_corrweight || v64 > v8 + 172;
  v187 = v8 + 42;
  v67 = !v65 && v64 >= b60;
  v207 = v67;
  v68 = (v9 + 42);
  v69 = v9 + 43 > E_ROM_corrweight || v68 > v9 + 172;
  v186 = v9 + 42;
  v71 = v69 || v68 < b60;
  v206 = v71;
  v72 = (v8 + 48);
  v73 = v8 + 49 > E_ROM_corrweight || v72 > v8 + 196;
  v185 = v8 + 48;
  v75 = !v73 && v72 >= b60;
  v205 = v75;
  v76 = (v9 + 48);
  v79 = v9 + 49 > E_ROM_corrweight || v76 > v9 + 196 || v76 < b60;
  v204 = v79;
  v80 = (v8 + 55);
  v10 = v8 + 55 > E_ROM_corrweight;
  v200 = v9;
  v201 = v8;
  v81 = v8 + 54;
  v82 = v10 || v81 > v80;
  v183 = v81;
  v184 = v9 + 48;
  v84 = !v82 && v81 >= b60;
  v203 = v84;
  v85 = (v9 + 55);
  v10 = v9 + 55 > E_ROM_corrweight;
  v86 = v9 + 54;
  v88 = !v10 && v86 <= v85 && v86 >= b60;
  v89 = result[2];
  v90 = !v88;
  v202 = v90;
  for (i = 12; ; i += 16)
  {
    v92 = (v6 + i - 12);
    v93 = (v6 + i - 8);
    v94 = v93 > v3 || v92 > v93;
    v95 = !v94 && v92 >= v89;
    if (!v95 || !v221)
    {
      break;
    }

    v96 = v6 + i;
    v97 = (v6 + i - 4);
    v98 = v97 > v3 || v93 > v97;
    v99 = v98;
    if (v99 || v220)
    {
      break;
    }

    v100 = (v96 - 16);
    if (v96 - 16 > v92 || v100 < v89 || !v219)
    {
      break;
    }

    v101 = v6 + i;
    v102 = v6 + i > v3 || v97 > v101;
    v103 = v102;
    if ((v103 | v218))
    {
      break;
    }

    v104 = (v101 - 20);
    if (v101 - 20 > v100 || v104 < v89 || !v217)
    {
      break;
    }

    v105 = (v6 + i);
    v106 = (v6 + i + 4);
    v107 = v106 > v3 || v101 > v106;
    v108 = v107;
    if ((v108 | v216))
    {
      break;
    }

    v110 = *v105;
    v109 = v105 - 6;
    v111 = v110;
    if (v109 > v104 || v109 < v89 || !v215)
    {
      break;
    }

    v112 = v6 + i;
    v113 = (v6 + i + 8);
    v114 = v113 > v3 || v106 > v113;
    v115 = v114;
    if ((v115 | v214))
    {
      break;
    }

    v116 = (v112 - 28);
    if (v112 - 28 > v109 || v116 < v89 || !v213)
    {
      break;
    }

    v117 = v6 + i;
    v118 = (v6 + i + 12);
    v119 = v118 > v3 || v113 > v118;
    v120 = v119;
    if ((v120 | v212))
    {
      break;
    }

    v121 = (v117 - 32);
    if (v117 - 32 > v116 || v121 < v89 || !v211)
    {
      break;
    }

    v122 = v6 + i;
    v123 = (v6 + i + 16);
    v124 = v123 > v3 || v118 > v123;
    v125 = v124;
    if ((v125 | v210))
    {
      break;
    }

    v126 = (v122 - 36);
    if (v122 - 36 > v121 || v126 < v89 || !v209)
    {
      break;
    }

    v127 = v6 + i;
    v128 = (v6 + i + 20);
    v129 = v128 > v3 || v123 > v128;
    v130 = v129;
    if ((v130 | v208))
    {
      break;
    }

    v131 = (v127 - 40);
    if (v127 - 40 > v126 || v131 < v89 || !v207)
    {
      break;
    }

    v132 = v6 + i;
    v133 = (v6 + i + 24);
    v134 = v133 > v3 || v128 > v133;
    v135 = v134;
    if ((v135 | v206))
    {
      break;
    }

    v136 = (v132 - 44);
    if (v132 - 44 > v131 || v136 < v89 || !v205)
    {
      break;
    }

    v137 = v6 + i;
    v138 = (v6 + i + 28);
    v139 = v138 > v3 || v133 > v138;
    v140 = v139;
    if (v140 || v204)
    {
      break;
    }

    v141 = (v137 - 48);
    if (v137 - 48 > v136 || v141 < v89 || !v203)
    {
      break;
    }

    v142 = (v6 + i + 32);
    v143 = v142 > v3 || v138 > v142;
    v144 = v143;
    if ((v144 | v202))
    {
      break;
    }

    v145 = *result + i;
    v146 = v145 - 8;
    if ((v145 - 8) > result[1])
    {
      break;
    }

    v147 = (v145 - 12);
    if (v147 > v146)
    {
      break;
    }

    if (v147 < v89)
    {
      break;
    }

    v148 = *v201;
    v149 = *v200;
    v150 = *v199;
    v151 = *v198;
    v152 = *v197;
    v153 = *v196;
    v154 = (((*v93 * *v200) + (*v92 * *v201)) + ((*v97 * *v198) + (*v100 * *v199))) + ((v111 * *v196) + (*v104 * *v197));
    v155 = *v195;
    v156 = *v194;
    v157 = v154 + ((*v106 * *v194) + (*v109 * *v195));
    v158 = *v193;
    v159 = *v192;
    v160 = v157 + ((*v113 * *v192) + (*v116 * *v193));
    v161 = *v191;
    v162 = *v190;
    v163 = v160 + ((*v118 * *v190) + (*v121 * *v191));
    v164 = *v189;
    v165 = *v188;
    v166 = v163 + ((*v123 * *v188) + (*v126 * *v189));
    v167 = *v187;
    v168 = *v186;
    v169 = v166 + ((*v128 * *v186) + (*v131 * *v187));
    v170 = *v185;
    v171 = *v184;
    v172 = v169 + ((*v133 * *v184) + (*v136 * *v185));
    v173 = *v183;
    v174 = *v86;
    *v147 = floorf((v172 + ((*v138 * *v86) + (*v141 * *v183))) + 0.5);
    v175 = (v6 + i + 36);
    if (v175 > v3)
    {
      break;
    }

    if (v142 > v175)
    {
      break;
    }

    v176 = *result + i;
    if ((v176 - 4) > result[1])
    {
      break;
    }

    v177 = (v176 - 8);
    if (v176 - 8 > (v176 - 4))
    {
      break;
    }

    if (v177 < v89)
    {
      break;
    }

    *v177 = floorf((((((((((((v149 * *v97) + (*v93 * v148)) + ((v151 * *(v6 + i)) + (*v92 * v150))) + ((v153 * *v106) + (*v100 * v152))) + ((v156 * *v113) + (*v104 * v155))) + ((v159 * *v118) + (*v109 * v158))) + ((v162 * *v123) + (*v116 * v161))) + ((v165 * *v128) + (*v121 * v164))) + ((v168 * *v133) + (*v126 * v167))) + ((v171 * *v138) + (*v131 * v170))) + ((v174 * *v142) + (*v136 * v173))) + 0.5);
    v178 = (v6 + i + 40);
    if (v178 > v3)
    {
      break;
    }

    if (v175 > v178)
    {
      break;
    }

    v179 = *result + i;
    if (v179 > result[1])
    {
      break;
    }

    v180 = (v179 - 4);
    if (v179 < 4)
    {
      break;
    }

    if (v180 < v89)
    {
      break;
    }

    *v180 = floorf((((((((((((v149 * *(v6 + i)) + (*v97 * v148)) + ((v151 * *v106) + (*v93 * v150))) + ((v153 * *v113) + (*v92 * v152))) + ((v156 * *v118) + (*v100 * v155))) + ((v159 * *v123) + (*v104 * v158))) + ((v162 * *v128) + (*v109 * v161))) + ((v165 * *v133) + (*v116 * v164))) + ((v168 * *v138) + (*v121 * v167))) + ((v171 * *v142) + (*v126 * v170))) + ((v174 * *v175) + (*v131 * v173))) + 0.5);
    v181 = v6 + i + 44;
    if (v181 > v3)
    {
      break;
    }

    if (v178 > v181)
    {
      break;
    }

    v182 = (*result + i);
    if ((v182 + 1) > result[1] || v182 > v182 + 1 || v182 < v89)
    {
      break;
    }

    *v182 = floorf((((((((((((v149 * *v106) + (*(v6 + i) * v148)) + ((v151 * *v113) + (*v97 * v150))) + ((v153 * *v118) + (*v93 * v152))) + ((v156 * *v123) + (*v92 * v155))) + ((v159 * *v128) + (*v100 * v158))) + ((v162 * *v133) + (*v104 * v161))) + ((v165 * *v138) + (*v109 * v164))) + ((v168 * *v142) + (*v116 * v167))) + ((v171 * *v175) + (*v121 * v170))) + ((v174 * *v178) + (*v126 * v173))) + 0.5);
    v4 += 4;
    if (v4 >= 0x24)
    {
      return result;
    }
  }

  __break(0x5519u);
  return result;
}

uint64_t Convolve(uint64_t result, unint64_t a2, uint64_t a3)
{
  v3 = 0;
  v4 = 1;
  v5 = a2;
  while (2)
  {
    v6 = 0;
    v7 = 0.0;
    v8 = v5;
    do
    {
      if (v8 < a2 || (v8 + 1) > a2 + 160 || v8 > v8 + 1)
      {
        __break(0x5519u);
        return result;
      }

      v9 = *v8--;
      v7 = v7 + (*(result + 4 * v6++) * v9);
    }

    while (v4 != v6);
    *(a3 + 4 * v3++) = v7;
    ++v4;
    ++v5;
    if (v3 != 40)
    {
      continue;
    }

    break;
  }

  return result;
}

uint64_t Log2_norm_242(uint64_t result, int a2, _DWORD *a3, int *a4)
{
  if (result <= 0)
  {
    *a3 = 0;
    *a4 = 0;
  }

  else
  {
    v4 = &log2_table_243[4 * (result >> 25)];
    v5 = v4 - 128;
    v6 = v4 - 124;
    v8 = v4 - 128 < log2_table_243 || v6 > pow2_table_241 || v5 > v6;
    if (v8 || (v9 = v4 - 120, v9 > pow2_table_241) || v6 > v9)
    {
      __break(0x5519u);
    }

    else
    {
      *a4 = ((*v6 - *v5) * ((result >> 9) & 0xFFFE) + (*v5 << 16)) >> 16;
      *a3 = 30 - a2;
    }
  }

  return result;
}

float cor_h_x(const float *a1, const float *__B, float *a3)
{
  __C = NAN;
  vDSP_dotpr(a1, 1, __B, 1, &__C, 0x28uLL);
  *a3 = __C;
  v6 = a3 + 1;
  v7 = __B + 1;
  v8 = 39;
  do
  {
    v11 = NAN;
    vDSP_dotpr(a1, 1, v7, 1, &v11, v8);
    result = v11;
    *v6++ = v11;
    ++v7;
    --v8;
  }

  while (v8);
  return result;
}

void cor_h(const float *__B, unint64_t a2, float *a3)
{
  v6 = (__B + 40);
  __C = NAN;
  vDSP_dotpr(__B, 1, __B, 1, &__C, 0x28uLL);
  *a3 = __C;
  v7 = 0.0;
  v8 = 1560;
  v9 = 1640;
  v10 = 1600;
  v11 = __B;
  while (1)
  {
    v12 = &a3[v9 - 41];
    v13 = &a3[v9 - 40];
    v14 = v12 < &a3[v8] || v13 > &a3[v10];
    if (v14 || v12 > v13)
    {
      break;
    }

    v16 = *v11++;
    v7 = v7 + (v16 * v16);
    *v12 = v7;
    v8 -= 40;
    v9 -= 41;
    v10 -= 40;
    if (!(v10 * 4))
    {
      v17 = a2 + 160;
      v18 = 1;
LABEL_11:
      v19 = 0;
      v20 = 0;
      v21 = 39;
      v22 = 39 - v18;
      v23 = 0.0;
      while (1)
      {
        v24 = &__B[v20];
        v25 = v24 + 1;
        v26 = v24 < __B || v25 > v6;
        v27 = v26 || v24 > v25;
        v28 = &__B[v19 + v18];
        v29 = v28 + 1;
        v30 = !v27 && v28 >= __B;
        v31 = !v30 || v29 > v6;
        if (v31 || v28 > v29)
        {
          goto LABEL_43;
        }

        v33 = (a2 + 4 * v22);
        if (v33 < a2)
        {
          goto LABEL_43;
        }

        if ((v33 + 1) > v17)
        {
          goto LABEL_43;
        }

        if (v33 > v33 + 1)
        {
          goto LABEL_43;
        }

        v34 = (a2 + 4 * v21);
        if (v34 < a2)
        {
          goto LABEL_43;
        }

        if ((v34 + 1) > v17)
        {
          goto LABEL_43;
        }

        if (v34 > v34 + 1)
        {
          goto LABEL_43;
        }

        v35 = &a3[40 * v21];
        v36 = &v35[v22];
        if (v36 < v35)
        {
          goto LABEL_43;
        }

        if (v36 + 1 > v35 + 40)
        {
          goto LABEL_43;
        }

        if (v36 > v36 + 1)
        {
          goto LABEL_43;
        }

        v23 = v23 + (*v24 * *v28);
        v37 = (v23 * *v33) * *v34;
        *v36 = v37;
        v38 = &a3[40 * v22];
        v39 = &v38[v21];
        if (v39 < v38 || v39 + 1 > v38 + 40 || v39 > v39 + 1)
        {
          goto LABEL_43;
        }

        *v39 = v37;
        --v22;
        --v21;
        v19 = ++v20;
        if (40 - v18 <= v20)
        {
          if (++v18 != 40)
          {
            goto LABEL_11;
          }

          return;
        }
      }
    }
  }

LABEL_43:
  __break(0x5519u);
}

uint64_t set_sign(uint64_t result, uint64_t a2, unint64_t a3, int a4)
{
  for (i = 0; i != 160; i += 4)
  {
    v5 = *(result + i);
    if (v5 >= 0.0)
    {
      v6 = 1.0;
    }

    else
    {
      v6 = -1.0;
    }

    if (v5 < 0.0)
    {
      v5 = -v5;
    }

    *(a2 + i) = v6;
    *(result + i) = v5;
    *(a3 + i) = v5;
  }

  v7 = 0;
  v8 = 0;
  while (2)
  {
    v9 = 0;
    do
    {
      v10 = 3.4028e38;
      v11 = v7;
      do
      {
        if (*(a3 + 4 * v11) >= 0.0 && *(a3 + 4 * v11) < v10)
        {
          v8 = v11;
          v10 = *(a3 + 4 * v11);
        }

        v15 = v11 >= 0x23;
        v11 += 5;
      }

      while (!v15);
      v12 = (a3 + 4 * v8);
      v13 = (v12 + 1);
      v15 = v12 < a3 || v13 > a3 + 160 || v12 >= v13;
      if (v15)
      {
        __break(0x5519u);
        return result;
      }

      *v12 = -1082130432;
      ++v9;
    }

    while (v9 != 8 - a4);
    if (++v7 != 5)
    {
      continue;
    }

    break;
  }

  return result;
}

void set_sign12k2(const float *a1, const float *__A, uint64_t a3, uint64_t a4, int a5, _DWORD *a6, int a7, int a8)
{
  v39 = *MEMORY[0x1E69E9840];
  *&v16 = -1;
  *(&v16 + 1) = -1;
  v38[8] = v16;
  v38[9] = v16;
  v38[6] = v16;
  v38[7] = v16;
  v38[4] = v16;
  v38[5] = v16;
  v38[2] = v16;
  v38[3] = v16;
  v38[0] = v16;
  v38[1] = v16;
  __C = NAN;
  vDSP_dotpr(__A, 1, __A, 1, &__C, 0x28uLL);
  v17 = 1.0 / sqrt((__C + 0.01));
  __C = NAN;
  vDSP_dotpr(a1, 1, a1, 1, &__C, 0x28uLL);
  v18 = 0;
  v19 = 1.0 / sqrt((__C + 0.01));
  do
  {
    v20 = a1[v18];
    v21 = (v20 * v19) + (v17 * __A[v18]);
    *(a3 + v18 * 4) = 1065353216;
    if (v21 < 0.0)
    {
      *(a3 + v18 * 4) = -1082130432;
      v21 = -v21;
      v20 = -v20;
    }

    a1[v18] = v20;
    *(v38 + v18 * 4) = v21;
    ++v18;
  }

  while (v18 != 40);
  v22 = 0;
  v23 = 0;
  v24 = &a6[a8];
  v26 = a6 + 1 >= a6 && (a6 + 1) <= v24;
  v27 = -1.0;
  do
  {
    while (1)
    {
      v28 = -1.0;
      if (v22 <= 0x27)
      {
        for (i = v22; i < 0x28; i += a7)
        {
          if (*(v38 + i) > v28)
          {
            v23 = i;
            v28 = *(v38 + i);
          }
        }
      }

      *(a4 + 4 * v22) = v23;
      if (v28 <= v27)
      {
        break;
      }

      if (!v26)
      {
        goto LABEL_37;
      }

      *a6 = v22++;
      v27 = v28;
      if (v22 == a5)
      {
        goto LABEL_24;
      }
    }

    ++v22;
  }

  while (v22 != a5);
  if (!v26)
  {
LABEL_37:
    __break(0x5519u);
  }

LABEL_24:
  v30 = &a6[a5];
  if (v30 < a6 || v30 >= v30 + 4 || v30 + 4 > v24)
  {
    goto LABEL_37;
  }

  v31 = *a6;
  a6[a5] = *a6;
  v32 = a5 - 1;
  v33 = a5;
  v34 = a6;
  do
  {
    if (v31 + 1 < a5)
    {
      ++v31;
    }

    else
    {
      v31 = 0;
    }

    if ((v34 + 2) > v24)
    {
      goto LABEL_37;
    }

    v34[1] = v31;
    v35 = &v34[v33 + 1];
    if (v35 < a6)
    {
      goto LABEL_37;
    }

    v36 = &v34[v33 + 2];
    if (v36 > v24 || v35 > v36)
    {
      goto LABEL_37;
    }

    *v35 = v31;
    ++v34;
    --v32;
  }

  while (v32);
}

float *Interpol_3or6(float **a1, int a2, int a3)
{
  v3 = a2 << (a3 != 0);
  v4 = *a1;
  if (a2 < 0)
  {
    v3 += 6;
    *a1 = --v4;
  }

  v5 = 0;
  v6 = a1[1];
  v7 = a1[2];
  v8 = v4 + 1;
  v9 = &b24[v3];
  v10 = &b24[-v3];
  v11 = 0.0;
  while (1)
  {
    v12 = (v4 + 1) > v6 || v4 >= v4 + 1;
    v13 = !v12 && v4 >= v7;
    v14 = &v9[v5];
    result = &v9[v5 + 1];
    v16 = v13 && v14 >= b24;
    v17 = !v16 || result > inter6_236;
    if (v17 || v14 > result)
    {
      break;
    }

    result = v8 + 1;
    if ((v8 + 1) > v6)
    {
      break;
    }

    if (v8 > result)
    {
      break;
    }

    if (v8 < v7)
    {
      break;
    }

    result = &v10[v5 + 6];
    if (result < b24)
    {
      break;
    }

    v19 = &v10[v5 + 7];
    if (v19 > inter6_236 || result > v19)
    {
      break;
    }

    v20 = *v4--;
    v21 = v20;
    v22 = *v8++;
    v11 = (v11 + (v21 * *v14)) + (v22 * *result);
    v5 += 6;
    if (v5 == 24)
    {
      return result;
    }
  }

  __break(0x5519u);
  return result;
}

uint64_t Pitch_ol(unsigned int a1, uint64_t a2, __int128 *a3, unsigned int a4, int a5, int a6, int a7)
{
  v31 = *MEMORY[0x1E69E9840];
  if (a6)
  {
    v13 = *(a2 + 224);
    v14 = (v13 >> 2) | 0x2000;
    v15 = v13 >> 1;
    if (a1 < 2)
    {
      v15 = v14;
    }

    *(a2 + 224) = v15;
  }

  memset(__b, 255, sizeof(__b));
  v28 = NAN;
  v29 = NAN;
  v27 = NAN;
  vDSP_conv((*a3 - 572), 1, *a3, 1, __b, 1, 144 - a4, 8 * ((5 * (a5 / 0x28u)) & 0x1FFFLL));
  v24 = *a3;
  v25 = *(a3 + 2);
  v16 = Lag_max(a2, &__b[143], &v24, a5, 143, 4 * a4, &v29, a6);
  v24 = *a3;
  v25 = *(a3 + 2);
  v17 = Lag_max(a2, &__b[143], &v24, a5, 4 * a4 - 1, 2 * a4, &v28, a6);
  v24 = *a3;
  v25 = *(a3 + 2);
  v18 = Lag_max(a2, &__b[143], &v24, a5, 2 * a4 - 1, a4, &v27, a6);
  if (a6 && a7 == 1)
  {
    v26 = NAN;
    *&v24 = &__b[143];
    *(&v24 + 1) = &v31;
    v25 = __b;
    v22 = *a3;
    v23 = *(a3 + 2);
    hp_max(&v24, &v22, a5, a4, &v26);
    *(a2 + 188) = v26 * 0.5;
  }

  v19 = v29 * 0.85;
  if ((v29 * 0.85) >= v28)
  {
    v20 = v16;
  }

  else
  {
    v19 = v28 * 0.85;
    v20 = v17;
  }

  if (v19 >= v27)
  {
    return v20;
  }

  else
  {
    return v18;
  }
}

float *hp_max(uint64_t *a1, uint64_t a2, int a3, unsigned int a4, float *a5)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[2];
  v8 = a4;
  v9 = (*a1 - 568);
  v10 = 0xFFFFFF7300000000;
  v11 = 0xFFFFFF7100000000;
  v12 = -3.4028e38;
  v13 = 142;
  while (1)
  {
    v14 = (v9 + 1) > v6 || v9 > v9 + 1;
    v15 = !v14 && v9 >= v7;
    v16 = (v5 + (v11 >> 30));
    v17 = v16 + 1;
    v18 = !v15 || v17 > v6;
    v19 = v18 || v16 > v17;
    v20 = !v19 && v16 >= v7;
    result = (v5 + (v10 >> 30));
    v22 = result + 1;
    v23 = !v20 || v22 > v6;
    v24 = v23 || result > v22;
    if (v24 || result < v7)
    {
      break;
    }

    v26 = *v9++;
    v27 = vabds_f32(-(*v16 - (v26 * 2.0)), *result);
    if (v27 >= v12)
    {
      v12 = v27;
    }

    --v13;
    v10 += 0x100000000;
    v11 += 0x100000000;
    if (v13 <= v8)
    {
      v29 = *a2;
      v28 = *(a2 + 8);
      v30 = *(a2 + 16);
      v31 = 0.0;
      v32 = a3;
      v33 = *a2;
      while (1)
      {
        v34 = (v33 + 1) > v28 || v33 > v33 + 1;
        if (v34 || v33 < v30)
        {
          goto LABEL_64;
        }

        v31 = v31 + (*v33 * *v33);
        ++v33;
        if (!--v32)
        {
          v36 = 0.0;
          while (1)
          {
            v37 = v29 - 1;
            v38 = (v29 + 1) > v28 || v29 > v29 + 1;
            v39 = !v38 && v29 >= v30;
            v40 = !v39 || v29 > v28;
            v41 = v40 || v37 > v29;
            if (v41 || v37 < v30)
            {
              break;
            }

            v36 = v36 + (*v29 * *(v29 - 1));
            ++v29;
            if (!--a3)
            {
              v43 = v31 - v36;
              if (v43 == 0.0)
              {
                v44 = 0.0;
              }

              else
              {
                v44 = v12 / fabsf(v43);
              }

              *a5 = v44;
              return result;
            }
          }

          goto LABEL_64;
        }
      }
    }
  }

LABEL_64:
  __break(0x5519u);
  return result;
}

uint64_t Lag_max(uint64_t a1, uint64_t a2, void *a3, int a4, int a5, int a6, float *a7, int a8)
{
  v20 = NAN;
  __C = NAN;
  v19 = 0xAAAAAAAAAAAAAAAALL;
  vDSP_maxvi((a2 + 4 * -a5), 1, &__C, &v19, a5 - a6 + 1);
  v14 = a5 - v19;
  vDSP_svesq((*a3 + 4 * -v14), 1, &v20, a4);
  v15 = v20;
  if (a8)
  {
    if (v20 > 0.0 && (v20 * 0.65) < __C)
    {
      *(a1 + 224) |= 0x4000u;
    }
  }

  v17 = 0.0;
  if (v15 > 0.0)
  {
    v17 = 1.0 / sqrtf(v15);
  }

  *a7 = v17 * __C;
  return v14;
}

float32x2_t *Vq_subvec3(float32x2_t *result, void *a2, unsigned __int16 a3, int a4, float32x2_t a5, float a6)
{
  v6 = a2[1];
  v7 = a2[2];
  v8 = 0;
  v9 = 0;
  v10 = (*a2 + 8);
  v11 = 3.40282347e38;
  if (a4)
  {
    while (1)
    {
      v12 = v10 - 2;
      v13 = v10 - 1;
      v14 = (v10 - 1) > v6 || v12 > v13;
      v15 = !v14 && v12 >= v7;
      v16 = !v15 || v10 > v6;
      v17 = v16 || v13 >= v10;
      v18 = v10 + 1;
      v19 = v17 || v18 > v6;
      if (v19 || v10 >= v18)
      {
        break;
      }

      v21 = vmul_f32(vsub_f32(*result, *(v10 - 2)), a5);
      v22 = *v10;
      v10 += 6;
      v23 = vaddvq_f64(vcvtq_f64_f32(vmul_f32(v21, v21))) + (((result[1].f32[0] - v22) * a6) * ((result[1].f32[0] - v22) * a6));
      if (v23 < v11)
      {
        v9 = v8;
        v11 = v23;
      }

      if (a3 == ++v8)
      {
        v24 = 6 * v9;
        goto LABEL_48;
      }
    }
  }

  else
  {
    while (1)
    {
      v25 = v10 - 2;
      v26 = v10 - 1;
      v27 = (v10 - 1) > v6 || v25 > v26;
      v28 = !v27 && v25 >= v7;
      v29 = !v28 || v10 > v6;
      v30 = v29 || v26 >= v10;
      v31 = v10 + 1;
      v32 = v30 || v31 > v6;
      if (v32 || v10 >= v31)
      {
        break;
      }

      v34 = vmul_f32(vsub_f32(*result, *(v10 - 2)), a5);
      v35 = *v10;
      v10 += 3;
      v36 = vaddvq_f64(vcvtq_f64_f32(vmul_f32(v34, v34))) + (((result[1].f32[0] - v35) * a6) * ((result[1].f32[0] - v35) * a6));
      if (v36 < v11)
      {
        v9 = v8;
        v11 = v36;
      }

      if (a3 == ++v8)
      {
        v24 = 3 * v9;
LABEL_48:
        v37 = (*a2 + 4 * v24);
        v38 = v37 + 1;
        if ((v37 + 1) <= v6 && v37 < v38 && v37 >= v7)
        {
          v41 = v37 + 2;
          result->i32[0] = *v37;
          if ((v37 + 2) <= v6 && v38 <= v41)
          {
            result->i32[1] = v37[1];
            v43 = v37 + 3;
            if (v43 <= v6 && v41 <= v43)
            {
              result[1].i32[0] = *v41;
              return v9;
            }
          }
        }

        break;
      }
    }
  }

  __break(0x5519u);
  return result;
}

float32x2_t *Vq_subvec4(float32x2_t *result, void *a2, float32x2_t *a3, unsigned __int16 a4)
{
  v4 = 0;
  v5 = 0;
  v6 = a2[1];
  v7 = a2[2];
  v8 = (*a2 + 8);
  v9 = 3.40282347e38;
  while (1)
  {
    v10 = v8 - 2;
    v11 = v8 - 1;
    v12 = (v8 - 1) > v6 || v10 > v11;
    v13 = !v12 && v10 >= v7;
    v14 = !v13 || v8 > v6;
    v15 = v14 || v11 >= v8;
    v16 = v8 + 1;
    v17 = v15 || v16 > v6;
    v18 = v17 || v8 >= v16;
    v19 = v8 + 2;
    v20 = v18 || v19 > v6;
    if (v20 || v16 > v19)
    {
      break;
    }

    v22 = vmul_f32(vsub_f32(*result, *(v8 - 2)), *a3);
    v23 = *v8;
    v24 = v8[1];
    v8 += 4;
    v25 = vaddvq_f64(vcvtq_f64_f32(vmul_f32(v22, v22))) + (((result[1].f32[0] - v23) * a3[1].f32[0]) * ((result[1].f32[0] - v23) * a3[1].f32[0])) + (((result[1].f32[1] - v24) * a3[1].f32[1]) * ((result[1].f32[1] - v24) * a3[1].f32[1]));
    if (v25 < v9)
    {
      v5 = v4;
      v9 = v25;
    }

    if (a4 == ++v4)
    {
      v26 = (*a2 + 16 * v5);
      v27 = v26 + 1;
      if ((v26 + 1) <= v6 && v26 < v27 && v26 >= v7)
      {
        v30 = v26 + 2;
        result->i32[0] = *v26;
        if ((v26 + 2) <= v6 && v27 <= v30)
        {
          result->i32[1] = v26[1];
          v32 = v26 + 3;
          if ((v26 + 3) <= v6 && v30 <= v32)
          {
            result[1].i32[0] = v26[2];
            v34 = v26 + 4;
            if (v34 <= v6 && v32 <= v34)
            {
              result[1].i32[1] = *v32;
              return v5;
            }
          }
        }
      }

      break;
    }
  }

  __break(0x5519u);
  return result;
}

float *Get_lsp_pol_255(float *result, unint64_t a2)
{
  v2 = a2 + 24;
  *a2 = 1065353216;
  *(a2 + 4) = *result * -2.0;
  v3 = 2;
  while (1)
  {
    v4 = &result[2 * v3];
    v5 = v4 - 2;
    v6 = (v4 - 1);
    v7 = v5 < result || v6 > (result + 9);
    if (v7 || v5 > v6)
    {
      break;
    }

    v9 = (a2 + 4 * v3);
    v10 = v9 - 1;
    if ((v9 - 1) < a2 || v9 > v2 || v10 > v9 || v10 > v2 || v9 - 2 > v10)
    {
      break;
    }

    v11 = *v5 * -2.0;
    *v9 = (*(v9 - 2) + *(v9 - 2)) + (v11 * *v10);
    if (v3 >= 3)
    {
      v12 = v3;
      do
      {
        v13 = (a2 + 4 * --v12);
        v14 = v13 + 1;
        v15 = v13 < a2 || v14 > v2;
        if (v15 || v13 > v14)
        {
          goto LABEL_35;
        }

        v17 = (v13 - 1);
        v18 = (v13 - 1) < a2 || v13 > v2;
        v19 = v18 || v17 > v13;
        if (v19 || (v13 - 2) < a2 || (v13 - 2) > v17)
        {
          goto LABEL_35;
        }

        *v13 = (*v13 + (v11 * *(v13 - 1))) + *(v13 - 2);
      }

      while (v12 > 2);
    }

    *(a2 + 4) = v11 + *(a2 + 4);
    if (++v3 == 6)
    {
      return result;
    }
  }

LABEL_35:
  __break(0x5519u);
  return result;
}

void Speech_Encode_Frame_exit(void ***a1)
{
  v1 = *a1;
  if (*a1)
  {
    v2 = v1 + 1;
    if (v1 + 1 > v1 + 2)
    {
      goto LABEL_11;
    }

    if (*v2)
    {
      free(*v2);
      *v2 = 0;
      v1 = *a1;
    }

    if (v1 >= v1 + 1)
    {
LABEL_11:
      __break(0x5519u);
    }

    else
    {
      if (v1)
      {
        if (*v1)
        {
          free(*(*v1 + 565));
          free(*(*(*v1 + 562) + 40));
          free(*(*(*v1 + 562) + 48));
          free(*(*(*v1 + 562) + 56));
          free(**(*v1 + 561));
          free(*(*(*v1 + 560) + 80));
          free(**(*v1 + 559));
          free(*(*v1 + 559));
          free(*(*v1 + 560));
          free(*(*v1 + 561));
          free(*(*v1 + 562));
          free(*(*v1 + 563));
          free(*(*v1 + 564));
          free(*(*v1 + 567));
          free(*v1);
          *v1 = 0;
          v1 = *a1;
        }
      }

      free(v1);
      *a1 = 0;
    }
  }
}

uint64_t D_MAIN_decode(int a1, __int16 *a2, unint64_t a3, unint64_t a4, int a5)
{
  v886 = *MEMORY[0x1E69E9840];
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v868 = v7;
  v867[14] = v7;
  v867[13] = v7;
  v867[12] = v7;
  v867[11] = v7;
  v867[10] = v7;
  v867[9] = v7;
  v867[8] = v7;
  v867[7] = v7;
  v867[6] = v7;
  v867[5] = v7;
  v867[3] = v7;
  v867[4] = v7;
  v867[1] = v7;
  v867[2] = v7;
  v866[23] = v7;
  v867[0] = v7;
  v866[21] = v7;
  v866[22] = v7;
  v866[19] = v7;
  v866[20] = v7;
  v866[17] = v7;
  v866[18] = v7;
  v866[15] = v7;
  v866[16] = v7;
  v866[13] = v7;
  v866[14] = v7;
  v866[11] = v7;
  v866[12] = v7;
  v866[9] = v7;
  v866[10] = v7;
  v866[7] = v7;
  v866[8] = v7;
  v866[5] = v7;
  v866[6] = v7;
  v866[3] = v7;
  v866[4] = v7;
  v866[1] = v7;
  v866[2] = v7;
  v865 = v7;
  v866[0] = v7;
  v863 = v7;
  v864 = v7;
  v861 = v7;
  v862 = v7;
  v859 = v7;
  v860 = v7;
  v858 = v7;
  v856 = 0xAAAAAAAAAAAAAAAALL;
  v855[6] = v7;
  v855[7] = v7;
  v855[4] = v7;
  v855[5] = v7;
  v855[2] = v7;
  v855[3] = v7;
  v855[0] = v7;
  v855[1] = v7;
  v853 = v7;
  v854 = v7;
  v851 = v7;
  v852 = v7;
  v849 = v7;
  v850 = v7;
  v847 = v7;
  v848 = v7;
  v845 = v7;
  v846 = v7;
  v843 = v7;
  v844 = v7;
  v841 = v7;
  v842 = v7;
  v839 = v7;
  v840 = v7;
  v838 = 0xAAAAAAAAAAAAAAAALL;
  v837[1] = v7;
  v836 = v7;
  v837[0] = v7;
  v834 = v7;
  v835 = v7;
  *&v830 = 0xAAAAAAAAAAAAAAAALL;
  *(&v830 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v8 = a5 & 0xFE;
  v9 = *(a4 + 1664);
  v11 = a5 == 6 || v8 == 4;
  v12 = *(v9 + 351);
  v832 = v7;
  v833 = v7;
  _CF = a5 != 7 && v8 != 2 || (v12 - 1) >= 2u;
  v15 = !_CF;
  v831 = v7;
  if (a5 - 4) < 3 || (v15)
  {
    v19 = (*(v9 + 352) + 1) > 0x32u && a5 != 5;
    if (((~a5 & 6) == 0 || a5 == 2 || a5 == 4) && v12 == 2 || v19)
    {
      v24 = 2;
    }

    else
    {
      v24 = 1;
    }

    v824 = v24;
    ++*(v9 + 352);
    if (a5 == 5 && !*(v9 + 353))
    {
      v25 = (v9 + 350);
      *(v9 + 350) = 1;
      *(v9 + 357) = 0;
      goto LABEL_51;
    }
  }

  else
  {
    v824 = 0;
    *(v9 + 352) = 0;
  }

  v16 = 0;
  v17 = *(v9 + 350) + 1;
  v18 = v17;
  if (v17 >= 0x7Fu)
  {
    v18 = 127;
  }

  *(v9 + 350) = v18;
  *(v9 + 357) = 0;
  if (a5 == 7)
  {
    if (v12)
    {
      v16 = 1;
    }

    else
    {
      v16 = *(v9 + 358) > 6;
    }
  }

  if (!v16 && !v11)
  {
    v26 = 0;
    v27 = 7;
LABEL_53:
    *(v9 + 354) = v27;
    goto LABEL_55;
  }

  if (v17 >= 0x1Fu)
  {
    v26 = 1;
    *(v9 + 357) = 1;
    *(v9 + 350) = 0;
    *(v9 + 354) = 0;
    goto LABEL_55;
  }

  v25 = (v9 + 350);
LABEL_51:
  if (*(v9 + 354))
  {
    v26 = 0;
    v27 = *(v9 + 354) - 1;
    goto LABEL_53;
  }

  v26 = 0;
  *v25 = 0;
LABEL_55:
  v814 = (a2 + 56);
  v28 = a2;
  v826 = a4;
  if (!v824)
  {
    goto LABEL_230;
  }

  *(v9 + 355) = 0;
  switch(a5)
  {
    case 4:
      *(v9 + 355) = 1;
      break;
    case 5:
      *(v9 + 355) = 257;
      break;
    case 6:
      v26 = 0;
      *(v9 + 355) = 1;
      *(v9 + 357) = 0;
      break;
    default:
      v829 = -1431655766;
      v828 = -21846;
      v30 = (v9 + 357);
LABEL_167:
      v28 = a2;
      goto LABEL_168;
  }

  v29 = 0;
  v829 = -1431655766;
  v828 = -21846;
  v30 = (v9 + 357);
  if (v26)
  {
    v31 = *(v9 + 344);
    if (v31 == 7)
    {
      v32 = 0;
    }

    else
    {
      v32 = v31 + 1;
    }

    if (v31 == 8)
    {
      goto LABEL_1167;
    }

    v33 = (v9 + 256);
    v34 = (v9 + 32 * *(v9 + 344));
    if (v34 > v9 + 256)
    {
      goto LABEL_1167;
    }

    if (v34 < v9)
    {
      goto LABEL_1167;
    }

    v35 = (v9 + 32 * v32);
    if (v35 > v33)
    {
      goto LABEL_1167;
    }

    if (v35 < v9)
    {
      goto LABEL_1167;
    }

    v36 = v34[1];
    *v35 = *v34;
    v35[1] = v36;
    if (v35 >= v35 + 2)
    {
      goto LABEL_1167;
    }

    v37 = v9 + 320;
    v38 = (v9 + 320 + 2 * *(v9 + 344));
    if (v38 < v9 + 320)
    {
      goto LABEL_1167;
    }

    v39 = v9 + 336;
    if ((v38 + 1) > v9 + 336)
    {
      goto LABEL_1167;
    }

    if (v38 > v38 + 1)
    {
      goto LABEL_1167;
    }

    v40 = (v37 + 2 * v32);
    if (v40 < v37 || (v40 + 1) > v39 || v40 > v40 + 1)
    {
      goto LABEL_1167;
    }

    v41 = 0;
    v42 = 0;
    *v40 = *v38;
    *(v9 + 338) = 0;
    v869 = 0u;
    v870 = 0u;
    v871 = 0u;
    v872 = 0u;
    v43 = v9;
    do
    {
      v44 = (v37 + 2 * v42);
      if ((v44 + 1) > v39 || v44 > v44 + 1)
      {
        goto LABEL_1167;
      }

      v46 = 0;
      v41 += *v44;
      *(v9 + 338) = v41;
      v47 = &v869;
      do
      {
        v48 = *(v43 + v46);
        v49 = vaddw_high_s16(v47[1], v48);
        *v47 = vaddw_s16(*v47, *v48.i8);
        v47[1] = v49;
        v47 += 2;
        v46 += 16;
      }

      while (v46 != 32);
      ++v42;
      v43 += 32;
    }

    while (v42 != 8);
    v50 = 0;
    v51 = v41 >> 1;
    v52 = v51 >= -1024 ? v51 + 1024 : 0;
    *(v9 + 338) = v52;
    do
    {
      if ((v33 + 1) > v9 + 288 || v33 > v33 + 1)
      {
        goto LABEL_1167;
      }

      *v33++ = *(&v869 + v50) >> 3;
      v50 += 4;
    }

    while (v50 != 64);
    v29 = *(v9 + 355) == 0;
    if (!*(v9 + 355))
    {
      goto LABEL_167;
    }
  }

  v54 = *(v9 + 272);
  *(v9 + 288) = *(v9 + 256);
  *(v9 + 304) = v54;
  *(v9 + 340) = *(v9 + 338);
  if (!*(v9 + 356))
  {
    goto LABEL_167;
  }

  v55 = *(v9 + 352);
  if (v55 < 2)
  {
    LOWORD(v56) = 0x4000;
  }

  else
  {
    if (v55 >= 0x20)
    {
      v55 = 32;
    }

    v56 = 0x2000000 / (v55 << 10);
  }

  v57 = 0;
  v58 = (v9 + 256);
  *(v9 + 336) = v56;
  v59 = 1;
  do
  {
    v60 = v59;
    v61 = &D_ROM_dico1_isf_noise[(v57 | (2 * *a2))];
    v62 = v61 + 2;
    if (v61 < D_ROM_dico1_isf_noise || v62 > D_ROM_dico2_isf_noise || v61 > v62)
    {
      goto LABEL_1167;
    }

    v59 = 0;
    *(v58 + v57) = *v61;
    v57 = 1;
  }

  while ((v60 & 1) != 0);
  v65 = 130;
  v66 = D_ROM_dico2_isf_noise;
  do
  {
    v67 = &v66[6 * a2[1]];
    v68 = v67 + 2;
    if (v67 < D_ROM_dico2_isf_noise || v68 > D_ROM_dico3_isf_noise || v67 > v68)
    {
      goto LABEL_1167;
    }

    *(v9 + 2 * v65++) = *v67;
    v66 += 2;
  }

  while (v65 != 133);
  v71 = D_ROM_dico3_isf_noise;
  do
  {
    v72 = &v71[6 * a2[2]];
    v73 = v72 + 2;
    if (v72 < D_ROM_dico3_isf_noise || v73 > D_ROM_dico4_isf_noise || v72 > v73)
    {
      goto LABEL_1167;
    }

    *(v9 + 2 * v65++) = *v72;
    v71 += 2;
  }

  while (v65 != 136);
  for (i = 0; i != 4; ++i)
  {
    v77 = &D_ROM_dico4_isf_noise[8 * a2[3] + 2 * i];
    v78 = (v77 + 2);
    if (v77 < D_ROM_dico4_isf_noise || v78 > D_ROM_dico5_isf_noise || v77 > v78)
    {
      goto LABEL_1167;
    }

    *(v9 + 272 + 2 * i) = *v77;
  }

  v81 = a2 + 4;
  v82 = a2 + 5;
  if (a2 + 4 > a2 + 5 || v81 < a2)
  {
    goto LABEL_1167;
  }

  for (j = 0; j != 4; ++j)
  {
    v84 = (D_ROM_dico5_isf_noise + 8 * *v81 + 2 * j);
    v85 = (v84 + 2);
    if (v84 < D_ROM_dico5_isf_noise || v85 > D_ROM_mean_isf_noise || v84 > v85)
    {
      goto LABEL_1167;
    }

    *(v9 + 280 + 2 * j) = *v84;
  }

  for (k = 0; k != 2; ++k)
  {
    v58[k] = vaddq_s16(v58[k], D_ROM_mean_isf_noise[k]);
  }

  v89 = 0;
  v90 = 128;
  do
  {
    v91 = *(v58 + v89);
    if (v90 > v91)
    {
      *(v58 + v89) = v90;
      v91 = v90;
    }

    v90 = v91 + 128;
    v89 += 2;
  }

  while (v89 != 30);
  v92 = a2 + 6;
  if ((a2 + 6) > v814 || v82 > v92 || v82 < a2 || (v28 = a2 + 7, (a2 + 7) > v814) || v92 > v28)
  {
LABEL_1167:
    __break(0x5519u);
  }

  v93 = *v82;
  *(v9 + 348) = *v92;
  v94 = (12483 * (v93 << 9)) >> 15;
  *(v9 + 338) = v94;
  if (!*(v9 + 353) || !*(v9 + 351))
  {
    v95 = *(v9 + 272);
    *(v9 + 288) = *v58;
    *(v9 + 304) = v95;
    *(v9 + 340) = v94;
  }

  if (!v29 && *(v9 + 356))
  {
    *(v9 + 352) = 0;
  }

LABEL_168:
  v96 = *(v9 + 352);
  if (v96 >= 0x20)
  {
    v97 = 0x7FFF;
  }

  else
  {
    v97 = v96 << 10;
  }

  v98 = (v97 * *(v9 + 336)) >> 15;
  if (v98 >= 1024)
  {
    v98 = 1024;
  }

  v99 = 16 * v98;
  v100 = v99 * *(v9 + 338);
  v101 = (v9 + 256);
  v102 = (v9 + 288);
  for (m = 258; m != 290; m += 2)
  {
    if (v101 + 1 > v102 || v101 > v101 + 1)
    {
      goto LABEL_1167;
    }

    v105 = *v101++;
    *(&v833 + m - 258) = (v99 * v105) >> 15;
  }

  v106 = 0x4000 - v99;
  v107 = 2 * (v100 + (0x4000 - v99) * *(v9 + 340));
  do
  {
    if ((v102 + 1) > v9 + 320 || v102 > v102 + 1)
    {
      goto LABEL_1167;
    }

    v109 = *v102++;
    *(&v833 + m - 290) = 2 * (*(&v833 + m - 290) + ((v106 * v109) >> 15));
    m += 2;
  }

  while (m != 322);
  if (*(v9 + 348))
  {
    v110 = 0;
    v111 = 31821 * *(v9 + 346) + 13849;
    v112 = v111;
    v113 = 31821 * v111 + 13849;
    v114 = v107 + 150 * ((v113 >> 1) + (v112 >> 1));
    v107 = v114 & ~(v114 >> 31);
    v115 = 31821 * v113 + 13849;
    v116 = v115;
    v117 = 31821 * v115 + 13849;
    v118 = v833 + (((((v117 >> 1) + (v116 >> 1)) << 8) + 0x4000) >> 15);
    if (v118 <= 128)
    {
      LOWORD(v118) = 128;
    }

    LOWORD(v833) = v118;
    do
    {
      v119 = 31821 * v117 + 13849;
      v117 = 31821 * v119 + 13849;
      *(v9 + 346) = 31821 * v119 + 13849;
      v120 = &v833 + v110;
      if ((&v833 + v110) < &v833 || v120 >= v120 + 2)
      {
        goto LABEL_1167;
      }

      v121 = *(v120 + 1) + (((v110 + 258) * ((v117 >> 1) + (v119 >> 1)) + 0x4000) >> 15);
      v122 = *(&v833 + v110);
      v123 = v121 - v122;
      v124 = v122 + 448;
      if (v123 < 448)
      {
        LOWORD(v121) = v124;
      }

      *(v120 + 1) = v121;
      v110 += 2;
    }

    while (v110 != 28);
    if (SWORD6(v834) > 0x4000)
    {
      WORD6(v834) = 0x4000;
    }
  }

  v125 = a2;
  v126 = D_UTIL_pow2(((v107 >> 25) + 15), (((v107 >> 9) - (v107 >> 25 << 16)) >> 1));
  if (v126)
  {
    if (v126 == -1)
    {
      v127 = 31;
      goto LABEL_204;
    }

    v128 = v126 ^ (v126 >> 31);
    if (v128 <= 0x3FFFFFFF)
    {
      v127 = 0;
      do
      {
        v129 = v128 >> 29;
        v128 *= 2;
        ++v127;
      }

      while (!v129);
      goto LABEL_204;
    }
  }

  v127 = 0;
LABEL_204:
  v130 = 0;
  v131 = *(v9 + 342);
  do
  {
    v131 = 31821 * v131 + 13849;
    *(v9 + 342) = v131;
    *(&v858 + v130) = v131 >> 4;
    v130 += 2;
  }

  while (v130 != 512);
  v132 = v126 << v127;
  v829 = D_UTIL_dot_product12(&v858, &v858, 256, &v828);
  D_UTIL_normalised_inverse_sqrt(&v829, &v828);
  v133 = (SHIWORD(v829) * (v132 >> 16)) >> 15;
  v134 = 0;
  if (((v828 - v127 + 19) & 0x8000) != 0)
  {
    v137 = vdupq_n_s32(v133);
    v138 = vnegq_s32(vdupq_n_s32((-19 - (v828 - v127))));
    a4 = v826;
    a2 = v125;
    do
    {
      *(&v858 + v134) = vuzp1q_s16(vshlq_s32(vshrq_n_s32(vmulq_s32(v137, vmovl_s16(*(&v858 + v134))), 0xFuLL), v138), vshlq_s32(vshrq_n_s32(vmulq_s32(v137, vmovl_high_s16(*(&v858 + v134))), 0xFuLL), v138));
      v134 += 16;
    }

    while (v134 != 512);
  }

  else
  {
    v135 = vdupq_n_s32(v133);
    v136 = vdupq_n_s32((v828 - v127 + 19));
    a4 = v826;
    a2 = v125;
    do
    {
      *(&v858 + v134) = vuzp1q_s16(vshlq_u32(vshrq_n_u32(vmulq_s32(v135, vmovl_s16(*(&v858 + v134))), 0xFuLL), v136), vshlq_u32(vshrq_n_u32(vmulq_s32(v135, vmovl_high_s16(*(&v858 + v134))), 0xFuLL), v136));
      v134 += 16;
    }

    while (v134 != 512);
  }

  if (v824 == 2)
  {
    if (*(v9 + 352) >= 0x20u)
    {
      v139 = 32;
    }

    else
    {
      v139 = *(v9 + 352);
    }

    if (*(v9 + 352))
    {
      v140 = v139;
    }

    else
    {
      v140 = 8;
    }

    if (v140 < 2)
    {
      LOWORD(v141) = 0x7FFF;
    }

    else
    {
      v141 = 0x2000000 / (v140 << 10);
    }

    *(v9 + 336) = v141;
    *(v9 + 352) = 0;
    v142 = *(v9 + 338);
    *(v9 + 340) = v142;
    if (v142 >= -32703)
    {
      v143 = v142 - 64;
    }

    else
    {
      v143 = 0x8000;
    }

    *(v9 + 338) = v143;
  }

  if (*(v9 + 355) && (*(v9 + 356) || *v30))
  {
    *(v9 + 352) = 256;
  }

LABEL_230:
  v808 = (a5 & 0xFFFFFFFD) == 1;
  if ((a5 & 0xFFFFFFFD) == 1 || a5 == 7 || a5 == 2)
  {
    v813 = 0;
    v144 = (*(a4 + 1673) + 1);
    if (v144 >= 6)
    {
      LOBYTE(v144) = 6;
    }

    *(a4 + 1673) = v144;
    v812 = 1;
  }

  else
  {
    v812 = 0;
    *(a4 + 1673) >>= 1;
    v813 = 1;
    v808 = 1;
  }

  v145 = *(a4 + 1664);
  v146 = *(v145 + 351);
  if (v146 == 1)
  {
    v147 = 0;
  }

  else
  {
    if (v146 != 2)
    {
      goto LABEL_241;
    }

    v147 = 1;
  }

  *(a4 + 1673) = 5;
  *(a4 + 1672) = v147;
LABEL_241:
  v823 = a1;
  v818 = a4 + 1680;
  if (!v824)
  {
    v164 = v28 + 1;
    if ((v28 + 1) > v814 || v28 > v164 || v28 < a2)
    {
      goto LABEL_1167;
    }

    v165 = a4 + 1014;
    if (v813)
    {
      v166 = a1;
      if (*v28)
      {
        *(a4 + 1658) = 0;
        *(v145 + 358) = 0;
      }

      else
      {
        v168 = *(a4 + 1658) + 1;
        *(a4 + 1658) = v168;
        ++*(v145 + 358);
        if (v168 < 0)
        {
          *(a4 + 1658) = 0x7FFF;
        }
      }
    }

    else
    {
      v167 = *(v145 + 358);
      v166 = a1;
      if (v167 >= 1)
      {
        *(v145 + 358) = v167 + 1;
      }
    }

    v169 = v28 + 2;
    v171 = (v28 + 2) <= v814 && v164 <= v169;
    v816 = a4 + 1014;
    if (v166 <= 0)
    {
      if (!v171)
      {
        goto LABEL_1167;
      }

      v241 = v28[1];
      LOWORD(v830) = v28[1];
      v242 = v28 + 3;
      if ((v28 + 3) > v814)
      {
        goto LABEL_1167;
      }

      if (v169 > v242)
      {
        goto LABEL_1167;
      }

      v243 = v28[2];
      WORD1(v830) = v28[2];
      v244 = (v28 + 4);
      if ((v28 + 4) > v814)
      {
        goto LABEL_1167;
      }

      if (v242 > v244)
      {
        goto LABEL_1167;
      }

      v245 = v28[3];
      WORD2(v830) = v28[3];
      v246 = v28 + 5;
      if ((v28 + 5) > v814)
      {
        goto LABEL_1167;
      }

      if (v244 > v246)
      {
        goto LABEL_1167;
      }

      v247 = v28[4];
      WORD3(v830) = v28[4];
      v822 = (v28 + 6);
      if ((v28 + 6) > v814 || v246 > v822)
      {
        goto LABEL_1167;
      }

      v248 = *v246;
      WORD4(v830) = *v246;
      v249 = a4 + 1488;
      *&v250 = 0xAAAAAAAAAAAAAAAALL;
      *(&v250 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v872 = v250;
      v871 = v250;
      v870 = v250;
      v869 = v250;
      if (v813)
      {
        v251 = 0;
        v252 = (9 * v241) << 32;
        do
        {
          v253 = (D_ROM_dico1_isf + (v252 >> 31));
          v254 = v253 + 1;
          if (v253 < D_ROM_dico1_isf || v254 > D_ROM_dico2_isf || v253 > v254)
          {
            goto LABEL_1167;
          }

          *(&v833 + v251) = *v253;
          v251 += 2;
          v252 += 0x100000000;
        }

        while (v251 != 18);
        v257 = 0;
        v258 = 0x700000000 * v243;
        do
        {
          v259 = (D_ROM_dico2_isf + (v258 >> 31));
          v260 = v259 + 1;
          if (v259 < D_ROM_dico2_isf || v260 > D_ROM_dico21_isf_36b || v259 > v260)
          {
            goto LABEL_1167;
          }

          *(&v834 + v257 + 2) = *v259;
          v257 += 2;
          v258 += 0x100000000;
        }

        while (v257 != 14);
        v263 = 0;
        v264 = (5 * v245) << 32;
        do
        {
          v265 = (D_ROM_dico21_isf_36b + (v264 >> 31));
          v266 = v265 + 1;
          if (v265 < D_ROM_dico21_isf_36b || v266 > D_ROM_dico22_isf_36b || v265 > v266)
          {
            goto LABEL_1167;
          }

          *(&v833 + v263) += *v265;
          v263 += 2;
          v264 += 0x100000000;
        }

        while (v263 != 10);
        v269 = 0;
        v270 = 4 * v247;
        do
        {
          v271 = &D_ROM_dico22_isf_36b[v270];
          v272 = v271 + 1;
          if (v271 < D_ROM_dico22_isf_36b || v272 > D_ROM_dico23_isf_36b || v271 > v272)
          {
            goto LABEL_1167;
          }

          *((&v833 | 0xA) + v269) += *v271;
          v269 += 2;
          ++v270;
        }

        while (v269 != 8);
        v275 = 0;
        v276 = 0x700000000 * v248;
        do
        {
          v277 = (D_ROM_dico23_isf_36b + (v276 >> 31));
          v278 = v277 + 1;
          if (v277 < D_ROM_dico23_isf_36b || v278 > D_ROM_dico21_isf || v277 > v278)
          {
            goto LABEL_1167;
          }

          *(&v834 + v275 + 2) += *v277;
          v275 += 2;
          v276 += 0x100000000;
        }

        while (v275 != 14);
        v281 = 0;
        v282 = vdupq_n_s16(0x2AABu);
        do
        {
          v283 = *(&v833 + v281);
          *(&v833 + v281) = vuzp1q_s16(vsraq_n_u32(vaddl_u16(*&E_ROM_mean_isf[v281 / 0x10], *v283.i8), vmull_s16(*(v249 + v281), *v282.i8), 0xFuLL), vsraq_n_u32(vaddl_high_u16(E_ROM_mean_isf[v281 / 0x10], v283), vmull_high_s16(*(v249 + v281), v282), 0xFuLL));
          *(v249 + v281) = v283;
          v281 += 16;
        }

        while (v281 != 32);
        v284 = 0;
        v285 = a4 + 1110;
        v286 = a4 + 1080;
        do
        {
          v287 = v286;
          for (n = 3; n > 1; --n)
          {
            v289 = v287 - 32;
            v291 = v287 - 34 < v165 || v289 > v285 || v287 - 34 > v289;
            if (v291 || v287 - 2 < v165 || v287 > v285 || v287 - 2 > v287)
            {
              goto LABEL_1167;
            }

            *(v287 - 2) = *(v287 - 34);
            v287 -= 32;
          }

          *(v165 + 2 * v284) = *(&v833 + v284);
          ++v284;
          v286 += 2;
        }

        while (v284 != 16);
      }

      else
      {
        v316 = 0;
        v317 = &v869;
        v318.i64[0] = 0x100000001;
        v318.i64[1] = 0x100000001;
        v319 = a4 + 1014;
        do
        {
          v320 = E_ROM_mean_isf[v316];
          v321 = vaddl_s16(*v320.i8, *v319);
          v322 = *(v319 + 32);
          v323 = vaddw_high_s16(vaddl_high_s16(v320, *v319), v322);
          v324 = vaddw_s16(v321, *v322.i8);
          v325 = *(v319 + 64);
          *v317 = vshrq_n_s32(vaddq_s32(vaddw_s16(v324, *v325.i8), v318), 2uLL);
          v317[1] = vshrq_n_s32(vaddq_s32(vaddw_high_s16(v323, v325), v318), 2uLL);
          v317 += 2;
          v319 += 16;
          ++v316;
        }

        while (v316 != 2);
        v326 = 0;
        v327 = &v869;
        v328 = vdupq_n_s16(0x7333u);
        v329 = vdupq_n_s32(0xCCDu);
        do
        {
          v331 = *v327;
          v330 = v327[1];
          v327 += 2;
          *(&v833 + v326) = vuzp1q_s16(vsraq_n_u32(vshrq_n_u32(vmull_s16(*(a4 + 1456 + v326), *v328.i8), 0xFuLL), vmulq_s32(v331, v329), 0xFuLL), vsraq_n_u32(vshrq_n_u32(vmull_high_s16(*(a4 + 1456 + v326), v328), 0xFuLL), vmulq_s32(v330, v329), 0xFuLL));
          v326 += 16;
        }

        while (v326 != 32);
        v332 = 0;
        v333 = &v869;
        v334 = vdupq_n_s16(0x2AABu);
        do
        {
          v336 = *v333;
          v335 = v333[1];
          v333 += 2;
          *(v249 + v332) = vshrn_high_n_s32(vshrn_n_s32(vsubq_s32(vmovl_s16(*(&v833 + v332)), vsraq_n_u32(v336, vmull_s16(*(v249 + v332), *v334.i8), 0xFuLL)), 1uLL), vsubq_s32(vmovl_high_s16(*(&v833 + v332)), vsraq_n_u32(v335, vmull_high_s16(*(v249 + v332), v334), 0xFuLL)), 1uLL);
          v332 += 16;
        }

        while (v332 != 32);
      }

      v337 = 0;
      v338 = 128;
      do
      {
        v339 = *(&v833 + v337);
        if (v338 > v339)
        {
          *(&v833 + v337) = v338;
          v339 = v338;
        }

        v338 = v339 + 128;
        v337 += 2;
      }

      while (v337 != 30);
    }

    else
    {
      if (!v171)
      {
        goto LABEL_1167;
      }

      v172 = v28[1];
      LOWORD(v830) = v28[1];
      v173 = v28 + 3;
      if ((v28 + 3) > v814)
      {
        goto LABEL_1167;
      }

      if (v169 > v173)
      {
        goto LABEL_1167;
      }

      v174 = v28[2];
      WORD1(v830) = v28[2];
      v175 = v28 + 4;
      if ((v28 + 4) > v814)
      {
        goto LABEL_1167;
      }

      if (v173 > v175)
      {
        goto LABEL_1167;
      }

      v176 = v28[3];
      WORD2(v830) = v28[3];
      v177 = v28 + 5;
      if ((v28 + 5) > v814)
      {
        goto LABEL_1167;
      }

      if (v175 > v177)
      {
        goto LABEL_1167;
      }

      v178 = v28[4];
      WORD3(v830) = v28[4];
      v179 = (v28 + 6);
      if ((v28 + 6) > v814)
      {
        goto LABEL_1167;
      }

      if (v177 > v179)
      {
        goto LABEL_1167;
      }

      v180 = v28[5];
      WORD4(v830) = v28[5];
      v181 = v28 + 7;
      if ((v28 + 7) > v814)
      {
        goto LABEL_1167;
      }

      if (v179 > v181)
      {
        goto LABEL_1167;
      }

      v182 = v28[6];
      WORD5(v830) = v28[6];
      v822 = (v28 + 8);
      if ((v28 + 8) > v814 || v181 > v822)
      {
        goto LABEL_1167;
      }

      v183 = *v181;
      WORD6(v830) = *v181;
      v184 = a4 + 1488;
      *&v185 = 0xAAAAAAAAAAAAAAAALL;
      *(&v185 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v872 = v185;
      v871 = v185;
      v870 = v185;
      v869 = v185;
      if (v813)
      {
        v186 = 0;
        v187 = (9 * v172) << 32;
        do
        {
          v188 = (D_ROM_dico1_isf + (v187 >> 31));
          v189 = v188 + 1;
          if (v188 < D_ROM_dico1_isf || v189 > D_ROM_dico2_isf || v188 > v189)
          {
            goto LABEL_1167;
          }

          *(&v833 + v186) = *v188;
          v186 += 2;
          v187 += 0x100000000;
        }

        while (v186 != 18);
        v192 = 0;
        v193 = 0x700000000 * v174;
        do
        {
          v194 = (D_ROM_dico2_isf + (v193 >> 31));
          v195 = v194 + 1;
          if (v194 < D_ROM_dico2_isf || v195 > D_ROM_dico21_isf_36b || v194 > v195)
          {
            goto LABEL_1167;
          }

          *(&v834 + v192 + 2) = *v194;
          v192 += 2;
          v193 += 0x100000000;
        }

        while (v192 != 14);
        v198 = &D_ROM_dico21_isf[3 * v176];
        v199 = &v833;
        v200 = 3;
        do
        {
          v201 = v198 + 1;
          if (v198 < D_ROM_dico21_isf || v201 > D_ROM_dico22_isf || v198 > v201)
          {
            goto LABEL_1167;
          }

          v204 = *v198++;
          *v199 += v204;
          v199 = (v199 + 2);
          --v200;
        }

        while (v200);
        v205 = &v833 + 3;
        v206 = &D_ROM_dico22_isf[3 * v178];
        v207 = 3;
        do
        {
          v208 = v206 + 1;
          if (v206 < D_ROM_dico22_isf || v208 > D_ROM_dico23_isf || v206 > v208)
          {
            goto LABEL_1167;
          }

          v211 = *v206++;
          *v205++ += v211;
          --v207;
        }

        while (v207);
        v212 = 6;
        v213 = &D_ROM_dico23_isf[3 * v180];
        do
        {
          v214 = v213 + 1;
          if (v213 < D_ROM_dico23_isf || v214 > D_ROM_dico24_isf || v213 > v214)
          {
            goto LABEL_1167;
          }

          v217 = *v213++;
          *(&v833 + v212++) += v217;
        }

        while (v212 != 9);
        v218 = &D_ROM_dico24_isf[3 * v182];
        for (ii = 9; ii != 12; ++ii)
        {
          v220 = v218 + 1;
          if (v218 < D_ROM_dico24_isf || v220 > D_ROM_dico25_isf || v218 > v220)
          {
            goto LABEL_1167;
          }

          v223 = *v218++;
          *(&v833 + ii) += v223;
        }

        v224 = 0;
        v225 = 4 * v183;
        do
        {
          v226 = (D_ROM_dico25_isf + 2 * v225);
          v227 = (v226 + 2);
          if (v226 < D_ROM_dico25_isf || v227 > E_ROM_dico1_isf || v226 > v227)
          {
            goto LABEL_1167;
          }

          *(&v834 + v224 + 8) += *v226;
          v224 += 2;
          ++v225;
        }

        while (v224 != 8);
        v230 = 0;
        v231 = vdupq_n_s16(0x2AABu);
        do
        {
          v232 = *(&v833 + v230);
          *(&v833 + v230) = vuzp1q_s16(vsraq_n_u32(vaddl_u16(*&E_ROM_mean_isf[v230 / 0x10], *v232.i8), vmull_s16(*(v184 + v230), *v231.i8), 0xFuLL), vsraq_n_u32(vaddl_high_u16(E_ROM_mean_isf[v230 / 0x10], v232), vmull_high_s16(*(v184 + v230), v231), 0xFuLL));
          *(v184 + v230) = v232;
          v230 += 16;
        }

        while (v230 != 32);
        v233 = 0;
        v234 = a4 + 1110;
        v235 = a4 + 1080;
        do
        {
          v236 = v235;
          for (jj = 3; jj > 1; --jj)
          {
            v238 = v236 - 32;
            v240 = v236 - 34 < v165 || v238 > v234 || v236 - 34 > v238;
            if (v240 || v236 - 2 < v165 || v236 > v234 || v236 - 2 > v236)
            {
              goto LABEL_1167;
            }

            *(v236 - 2) = *(v236 - 34);
            v236 -= 32;
          }

          *(v165 + 2 * v233) = *(&v833 + v233);
          ++v233;
          v235 += 2;
        }

        while (v233 != 16);
      }

      else
      {
        v292 = 0;
        v293 = &v869;
        v294.i64[0] = 0x100000001;
        v294.i64[1] = 0x100000001;
        v295 = a4 + 1014;
        do
        {
          v296 = E_ROM_mean_isf[v292];
          v297 = vaddl_s16(*v296.i8, *v295);
          v298 = *(v295 + 32);
          v299 = vaddw_high_s16(vaddl_high_s16(v296, *v295), v298);
          v300 = vaddw_s16(v297, *v298.i8);
          v301 = *(v295 + 64);
          *v293 = vshrq_n_s32(vaddq_s32(vaddw_s16(v300, *v301.i8), v294), 2uLL);
          v293[1] = vshrq_n_s32(vaddq_s32(vaddw_high_s16(v299, v301), v294), 2uLL);
          v293 += 2;
          v295 += 16;
          ++v292;
        }

        while (v292 != 2);
        v302 = 0;
        v303 = &v869;
        v304 = vdupq_n_s16(0x7333u);
        v305 = vdupq_n_s32(0xCCDu);
        do
        {
          v307 = *v303;
          v306 = v303[1];
          v303 += 2;
          *(&v833 + v302) = vuzp1q_s16(vsraq_n_u32(vshrq_n_u32(vmull_s16(*(a4 + 1456 + v302), *v304.i8), 0xFuLL), vmulq_s32(v307, v305), 0xFuLL), vsraq_n_u32(vshrq_n_u32(vmull_high_s16(*(a4 + 1456 + v302), v304), 0xFuLL), vmulq_s32(v306, v305), 0xFuLL));
          v302 += 16;
        }

        while (v302 != 32);
        v308 = 0;
        v309 = &v869;
        v310 = vdupq_n_s16(0x2AABu);
        do
        {
          v312 = *v309;
          v311 = v309[1];
          v309 += 2;
          *(v184 + v308) = vshrn_high_n_s32(vshrn_n_s32(vsubq_s32(vmovl_s16(*(&v833 + v308)), vsraq_n_u32(v312, vmull_s16(*(v184 + v308), *v310.i8), 0xFuLL)), 1uLL), vsubq_s32(vmovl_high_s16(*(&v833 + v308)), vsraq_n_u32(v311, vmull_high_s16(*(v184 + v308), v310), 0xFuLL)), 1uLL);
          v308 += 16;
        }

        while (v308 != 32);
      }

      v313 = 0;
      v314 = 128;
      do
      {
        v315 = *(&v833 + v313);
        if (v314 > v315)
        {
          *(&v833 + v313) = v314;
          v315 = v314;
        }

        v314 = v315 + 128;
        v313 += 2;
      }

      while (v313 != 30);
    }

    v340 = a2;
    v815 = (a4 + 4);
    v802 = a4 + 500;
    D_LPC_isf_isp_conversion(&v833, &v835, 0x10u);
    if (*(v826 + 1674))
    {
      *(v826 + 1674) = 0;
      v341 = v836;
      *(v826 + 1424) = v835;
      *(v826 + 1440) = v341;
    }

    v342 = 0;
    v343 = v855;
    *&v344 = 0xAAAAAAAAAAAAAAAALL;
    *(&v344 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v870 = v344;
    v869 = v344;
    do
    {
      v345 = 0;
      v346 = D_ROM_interpol_frac[v342];
      v347 = vdupq_n_s32(0x8000 - v346);
      v348 = vdupq_n_s16(v346);
      do
      {
        *(&v869 + v345) = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmulq_s32(v347, vmovl_s16(*(v826 + v345 + 1424))), *v348.i8, *(&v835 + v345)), 0xFuLL), vmlal_high_s16(vmulq_s32(v347, vmovl_high_s16(*(v826 + v345 + 1424))), v348, *(&v835 + v345)), 0xFuLL);
        v345 += 16;
      }

      while (v345 != 32);
      D_LPC_isp_a_conversion(&v869, v343, 0x10u, 17);
      v343 = (v343 + 34);
      if (v343 > &v857)
      {
        goto LABEL_1167;
      }

      ++v342;
    }

    while (v342 != 3);
    D_LPC_isp_a_conversion(&v835, v343, 0x10u, 17);
    v349 = 0;
    v350 = 0;
    v351 = v836;
    *(v826 + 1424) = v835;
    *(v826 + 1440) = v351;
    v352 = v826;
    v353 = (v826 + 1456);
    v355 = v815;
    v354 = v816;
    v356 = v802;
    do
    {
      v357 = (v826 + v349 + 1456);
      v358 = v826 + v349 + 1458;
      if (v358 > v826 + 1488 || v357 > v358)
      {
        goto LABEL_1167;
      }

      v360 = (*(&v833 + v349) - *v357);
      v350 += v360 * v360;
      v349 += 2;
    }

    while (v349 != 30);
    if (v350 > 0x32007F)
    {
      v798 = 0;
    }

    else
    {
      v361 = 40960 - (((26214 * (v350 >> 7)) >> 14) & 0xFFFE);
      if (v361 >= 0x7FFF)
      {
        v361 = 0x7FFF;
      }

      v798 = v361;
    }

    v362 = a1;
    v363 = 0;
    v801 = 0;
    v803 = 0;
    v364 = *(v826 + 1472);
    v365 = v826 + 1624;
    v807 = v826 + 1338;
    v831 = *v353;
    v832 = v364;
    if (a1 < 2)
    {
      v366 = 1;
    }

    else
    {
      v366 = 2;
    }

    v367 = v834;
    *v353 = v833;
    *(v826 + 1472) = v367;
    if (a1 >= 2)
    {
      v368 = &D_ROM_qua_gain7b;
    }

    else
    {
      v368 = &D_ROM_qua_gain6b;
    }

    v794 = v368;
    if (a1 >= 2)
    {
      v369 = &D_ROM_inter4_2_start3;
    }

    else
    {
      v369 = &D_ROM_qua_gain7b;
    }

    if (a1 >= 1)
    {
      v370 = v366;
    }

    else
    {
      v370 = 0;
    }

    v797 = v370;
    v371 = (v826 + 1384);
    v796 = a3 + 640;
    v795 = (v816 + 612);
    v800 = v369;
    v809 = 0xFFFFFFFF00000000;
    v372 = v826;
    v373 = v855;
    v799 = v340;
    while (1)
    {
      v374 = v362 > 0 && v363 == 128;
      v375 = v374;
      v825 = (v822 + 1);
      v376 = (v822 + 1) > v814 || v822 > v822 + 1;
      v377 = !v376 && v822 >= v340;
      v378 = v377;
      v821 = v363;
      v819 = v373;
      if (!v363 || v375)
      {
        if (v362 > 1)
        {
          if (!v378)
          {
            goto LABEL_1167;
          }

          v383 = *v822;
          v384 = v383 - 280;
          v385 = 2 * ((v383 - 376) & 1);
          if (v383 > 0x1B7)
          {
            v385 = 0;
          }

          else
          {
            v384 = ((*v822 - 376) >> 1) + 128;
          }

          v380 = v383 <= 375 ? (v383 >> 2) + 34 : v384;
          v381 = v383 <= 375 ? v383 & 3 : v385;
        }

        else
        {
          if (!v378)
          {
            goto LABEL_1167;
          }

          v382 = *v822;
          v380 = v382 <= 115 ? (v382 >> 1) + 34 : v382 - 24;
          v381 = v382 <= 115 ? 2 * (v382 & 1) : 0;
        }

        if (v380 <= 42)
        {
          v386 = 42;
        }

        else
        {
          v386 = v380;
        }

        v387 = v386 - 8;
        if (v380 > 224)
        {
          v387 = 216;
        }

        v801 = v387;
      }

      else if (v362 > 1)
      {
        if (!v378)
        {
          goto LABEL_1167;
        }

        v388 = *v822;
        v380 = v801 + (v388 >> 2);
        v381 = v388 & 3;
      }

      else
      {
        if (!v378)
        {
          goto LABEL_1167;
        }

        v379 = *v822;
        v380 = v801 + (v379 >> 1);
        v381 = 2 * (v379 & 1);
      }

      v389 = v363;
      if ((v813 & 1) == 0)
      {
        break;
      }

      v390 = (v356 + 2 * v363);
      v391 = &v390[-v380];
      v392 = -2;
      if (v381 <= 0)
      {
        v392 = 0;
      }

      v393 = v823;
LABEL_627:
      v810 = v380;
      v431 = &v391[v392];
      v432 = (v431 - 30);
      if (v431 != 30)
      {
        v433 = (v431 - 28);
        if (v433 > v354 || v432 > v433 || v432 < v355)
        {
          goto LABEL_1167;
        }
      }

      if (v390)
      {
        v434 = v826 + 502 + 2 * v389;
        if (v434 > v354 || v390 > v434 || v390 < v355)
        {
          goto LABEL_1167;
        }
      }

      v435 = (&D_ROM_inter4_2_all + (-v381 & 3));
      if (v435 < &D_ROM_inter4_2_all || v435 + 1 > &off_1E752ECE0 || v435 > v435 + 1)
      {
        goto LABEL_1167;
      }

      AMR_D_GAIN_adaptive_codebook_excitation_loop(v432, v390, *v435);
      v817 = v390;
      if (v808)
      {
        v436 = v826;
        v437 = (v826 + 1642);
        v438 = v340;
        if (v393 >= 2)
        {
          if ((v822 + 2) > v814 || v825 > v822 + 2 || v825 < v340)
          {
            goto LABEL_1167;
          }

          v439 = *v825;
          v825 = (v822 + 2);
          v440 = v823;
          if (v439)
          {
            goto LABEL_680;
          }
        }

        v441 = 0;
        v442 = v809;
        do
        {
          v443 = (v802 + (v442 >> 31));
          v445 = (v443 + 1) <= v816 && v443 <= v443 + 1 && v443 >= v815;
          v446 = (v372 + v441 + 500);
          v447 = (v372 + v441 + 502);
          v450 = v445 && v447 <= v816 && v446 <= v447 && v446 >= v815;
          v451 = v372 + v441 + 504;
          if (!v450 || v451 > v816 || v447 > v451)
          {
            goto LABEL_1167;
          }

          *(&v847 + v441) = (2949 * (*v447 + *v443) + 10486 * *v446 + 0x2000) >> 14;
          v441 += 2;
          v442 += 0x100000000;
        }

        while (v441 != 128);
        if (v816 - v390 < 0x80)
        {
          goto LABEL_1167;
        }

        v454 = v852;
        *(v390 + 4) = v851;
        *(v390 + 5) = v454;
        v455 = v854;
        *(v390 + 6) = v853;
        *(v390 + 7) = v455;
        v456 = v848;
        *v390 = v847;
        *(v390 + 1) = v456;
        v457 = v850;
        *(v390 + 2) = v849;
        *(v390 + 3) = v457;
        if (v390 > v802 + 2 * v821 + 128)
        {
          goto LABEL_1167;
        }

        v440 = v823;
        if (v823 > 0)
        {
          if (v823 == 1)
          {
            if (v814 < v825 || v825 < v340 || v814 - v825 < 8)
            {
              goto LABEL_1167;
            }

            v458 = *v825;
            v825 += 4;
            *&v830 = v458;
            v459 = 20;
          }

          else
          {
LABEL_680:
            v462 = v814 - v825;
            v464 = v814 >= v825 && v825 >= v340;
            if (v440 > 2)
            {
              if (v440 == 3)
              {
                v467 = !v464;
                if (v462 < 8)
                {
                  v467 = 1;
                }

                if (v467)
                {
                  goto LABEL_1167;
                }

                v468 = *v825;
                v825 += 4;
                *&v830 = v468;
                v459 = 44;
              }

              else if (v440 > 4)
              {
                if (v462 <= 0xF)
                {
                  v464 = 0;
                }

                if (v440 == 5)
                {
                  if (!v464)
                  {
                    goto LABEL_1167;
                  }

                  v830 = *v825;
                  v825 += 8;
                  v459 = 64;
                }

                else if (v440 > 6)
                {
                  if (!v464)
                  {
                    goto LABEL_1167;
                  }

                  v830 = *v825;
                  v825 += 8;
                  v459 = 88;
                }

                else
                {
                  if (!v464)
                  {
                    goto LABEL_1167;
                  }

                  v830 = *v825;
                  v825 += 8;
                  v459 = 72;
                }
              }

              else
              {
                v474 = !v464;
                if (v462 < 8)
                {
                  v474 = 1;
                }

                if (v474)
                {
                  goto LABEL_1167;
                }

                v475 = *v825;
                v825 += 4;
                *&v830 = v475;
                v459 = 52;
              }
            }

            else
            {
              v465 = !v464;
              if (v462 < 8)
              {
                v465 = 1;
              }

              if (v465)
              {
                goto LABEL_1167;
              }

              v466 = *v825;
              v825 += 4;
              *&v830 = v466;
              v459 = 36;
            }
          }

          D_ACELP_decode_4t(&v830, v459, &v847);
          v438 = v340;
          v437 = (v826 + 1642);
          v436 = v826;
          goto LABEL_728;
        }

        if ((v825 + 1) > v814)
        {
          goto LABEL_1167;
        }

        if (v825 > v825 + 1)
        {
          goto LABEL_1167;
        }

        if (v825 < v340)
        {
          goto LABEL_1167;
        }

        LOWORD(v830) = *v825;
        v469 = v830;
        v847 = 0uLL;
        v848 = 0uLL;
        v849 = 0uLL;
        v850 = 0uLL;
        v851 = 0uLL;
        v852 = 0uLL;
        v853 = 0uLL;
        v854 = 0uLL;
        v470 = &v847 + 2 * ((v830 >> 5) & 0x3E);
        if (v470 < &v847 || (v470 | 2) > v855 || v470 > (v470 | 2))
        {
          goto LABEL_1167;
        }

        v471 = (v830 & 0x800) != 0 ? -512 : 512;
        *v470 = v471;
        v472 = &v847 + ((2 * (v469 & 0x1F)) | 1u);
        if (v472 < &v847 || v472 + 1 > v855 || v472 > v472 + 1)
        {
          goto LABEL_1167;
        }

        if ((v469 & 0x20) != 0)
        {
          v473 = -512;
        }

        else
        {
          v473 = 512;
        }

        *v472 = v473;
        ++v825;
      }

      else
      {
        v436 = v826;
        v437 = (v826 + 1642);
        if (v818 < v826)
        {
          goto LABEL_1167;
        }

        v438 = v340;
        v460 = 0;
        v461 = *(v826 + 1648);
        do
        {
          v461 = 31821 * v461 + 13849;
          *(&v847 + v460) = v461 >> 3;
          v460 += 2;
        }

        while (v460 != 128);
        *(v826 + 1648) = v461;
      }

LABEL_728:
      v476 = *v437;
      v477 = 64;
      do
      {
        v478 = (&v847 + 2 * --v477);
        v479 = (v478 + 2);
        if (v478 < &v847 || v479 > v855 || v478 > v479)
        {
          goto LABEL_1167;
        }

        if ((v478 - 2) < &v847 || (v478 - 2) > v478)
        {
          goto LABEL_1167;
        }

        *v478 = (((*v478 << 15) | 0x4000u) - v476 * *(v478 - 1)) >> 15;
      }

      while (v477 > 1);
      if (v381 <= 2)
      {
        v483 = v810;
      }

      else
      {
        v483 = v810 + 1;
      }

      if (v483 <= 63)
      {
        v484 = v483;
        v485 = &v847;
        v486 = 64 - v483;
        do
        {
          v487 = &v485[v484];
          if (&v485[v484] < &v847)
          {
            goto LABEL_1167;
          }

          v488 = v487 + 1 > v855 || v487 > v487 + 1;
          v489 = v485 + 1;
          v490 = !v488 && v485 >= &v847;
          v491 = !v490 || v489 > v855;
          if (v491 || v485 > v489)
          {
            goto LABEL_1167;
          }

          v493 = *v485++;
          *v487 = (27853 * v493 + (*v487 << 15) + 0x4000) >> 15;
        }

        while (--v486);
      }

      v822 = (v825 + 1);
      if ((v825 + 1) > v814 || v825 > v822 || v825 < v438)
      {
        goto LABEL_1167;
      }

      v494 = *v825;
      v495 = *(v436 + 1672);
      v496 = *(v436 + 1673);
      v497 = *(v436 + 1658);
      v828 = -21846;
      v827 = -21846;
      v498 = v436;
      v829 = D_UTIL_dot_product12(&v847, &v847, 64, &v828);
      v828 -= 24;
      D_UTIL_normalised_inverse_sqrt(&v829, &v828);
      v499 = v829 << (v828 - 3);
      if (v828 <= 3)
      {
        v499 = v829 >> (3 - v828);
      }

      v805 = v499;
      if (v813)
      {
        v500 = (5443 * ((3277 * v498[670] + (v498[669] << 12) + 2458 * v498[671] + 1638 * v498[672] + 251658240) >> 15)) >> 7;
        v501 = D_UTIL_pow2(14, v500 >> 1);
        v502 = &v794[2 * v494];
        if (v502 < v794)
        {
          goto LABEL_1167;
        }

        v503 = v502 + 1;
        if ((v502 + 1) > v800)
        {
          goto LABEL_1167;
        }

        if (v502 > v503)
        {
          goto LABEL_1167;
        }

        v506 = *v502;
        v504 = v502 + 2;
        v505 = v506;
        if (v504 > v800 || v503 > v504)
        {
          goto LABEL_1167;
        }

        v507 = v501;
        v508 = *v503;
        v509 = v507 * v508;
        v510 = v509 >> (9 - BYTE2(v500));
        v511 = v509 << (BYTE2(v500) - 9);
        if ((HIWORD(v500) - 9) < 0)
        {
          v511 = v510;
        }

        if (v495 == 1)
        {
          v512 = v511 >= 10240 * *(v826 + 1350) ? 10240 * *(v826 + 1350) : v511;
          if (v511 > 6553600)
          {
            v511 = v512;
          }
        }

        v513 = (v511 + 4096) >> 13;
        v829 = v513;
        if (v513 >= 0x8000)
        {
          LOWORD(v513) = 0x7FFF;
        }

        *(v826 + 1348) = v513;
        *(v826 + 1346) = v505;
        *(v826 + 1350) = v513;
        v514 = (v826 + 1362);
        v515 = 4;
        do
        {
          v516 = (v514 + 1);
          if (v514 + 2 > v371 || v516 > (v514 + 2) || v514 < v807 || v514 > v516)
          {
            goto LABEL_1167;
          }

          *v514 = v514[1];
          ++v514;
          --v515;
        }

        while (v515);
        *(v826 + 1370) = *(v826 + 1348);
        v520 = (v826 + 1352);
        v521 = 4;
        do
        {
          v522 = (v520 + 1);
          if (v520 + 2 > v371 || v522 > (v520 + 2) || v520 < v807 || v520 > v522)
          {
            goto LABEL_1167;
          }

          *v520 = v520[1];
          ++v520;
          --v521;
        }

        while (v521);
        *(v826 + 1360) = *(v826 + 1346);
        v526 = (v826 + 1372);
        v527 = 4;
        do
        {
          v528 = (v526 + 1);
          if (v526 + 2 > v371 || v528 > (v526 + 2) || v526 < v807 || v526 > v528)
          {
            goto LABEL_1167;
          }

          *v526 = v526[1];
          ++v526;
          --v527;
        }

        while (v527);
        *(v826 + 1380) = *(v826 + 1346);
        v828 = HIWORD(v511);
        v827 = v511 >> 1;
        v532 = (v805 >> 16) * (v511 >> 16) + (((v805 >> 16) * (v511 >> 1)) >> 15);
        if (v532 >= 0x8000000)
        {
          v533 = 0x7FFFFFFF;
        }

        else
        {
          v533 = 16 * v532;
        }

        v534 = v505;
        D_UTIL_log2(v508, &v828, &v827);
        v535 = v534;
        v536 = 0uLL;
        v537 = (v826 + 1634);
        v538 = v826 + 1642;
        v539 = v826 + 1624;
        v541 = v815;
        v540 = v816;
        v542 = v826;
        v543 = (24660 * (v828 - 11) + ((24660 * v827) >> 15)) >> 2;
        *(v826 + 1344) = *(v826 + 1342);
        *(v826 + 1340) = *(v826 + 1338);
        *(v826 + 1338) = v543;
      }

      else
      {
        *&v869 = v826 + 1356;
        *(&v869 + 1) = v371;
        *&v870 = v826 + 1338;
        v544 = D_GAIN_median(&v869);
        if (v544 >= 15565)
        {
          v545 = 15565;
        }

        else
        {
          v545 = v544;
        }

        v498[673] = v545;
        if (v808)
        {
          v546 = &D_ROM_pdown_usable[v496];
          v547 = v826 + 1338;
          if (v546 < D_ROM_pdown_usable || v546 + 1 > D_ROM_cdown_usable || v546 > v546 + 1)
          {
            goto LABEL_1167;
          }

          v548 = (*v546 * v545) >> 15;
        }

        else
        {
          v549 = &D_ROM_pdown_unusable[v496];
          v547 = v826 + 1338;
          if (v549 < D_ROM_pdown_unusable || v549 + 1 > D_ROM_cdown_unusable || v549 > v549 + 1)
          {
            goto LABEL_1167;
          }

          v548 = (*v549 * v545) >> 15;
        }

        *&v869 = v826 + 1366;
        *(&v869 + 1) = v371;
        *&v870 = v547;
        v550 = D_GAIN_median(&v869);
        v539 = v826 + 1624;
        v541 = v815;
        v540 = v816;
        v538 = v826 + 1642;
        v537 = (v826 + 1634);
        v536 = 0uLL;
        v535 = v548;
        if (v497 <= 2)
        {
          if (v808)
          {
            v551 = &D_ROM_cdown_usable[v496];
            if (v551 < D_ROM_cdown_usable)
            {
              goto LABEL_1167;
            }

            v552 = v551 + 2;
            v553 = D_ROM_fir_6k_7k;
          }

          else
          {
            v551 = &D_ROM_cdown_unusable[v496];
            if (v551 < D_ROM_cdown_unusable)
            {
              goto LABEL_1167;
            }

            v552 = v551 + 2;
            v553 = D_ROM_pdown_usable;
          }

          if (v552 > v553 || v551 > v552)
          {
            goto LABEL_1167;
          }

          v550 = (*v551 * v550) >> 15;
        }

        *(v826 + 1348) = v550;
        v554 = *(v826 + 1338);
        v555 = *(v826 + 1340);
        v556 = *(v826 + 1342);
        v829 = v555 + v554 + v556 + *(v826 + 1344);
        v557 = v829 >> 2;
        if (v829 >> 2 <= -11264)
        {
          LOWORD(v557) = -11264;
        }

        *(v826 + 1344) = v556;
        *(v826 + 1342) = v555;
        *(v826 + 1340) = v554;
        *(v826 + 1338) = v557 - 3072;
        v558 = (v826 + 1362);
        v559 = 4;
        do
        {
          v560 = (v558 + 1);
          if (v558 + 2 > v371 || v560 > (v558 + 2) || v558 < v807 || v558 > v560)
          {
            goto LABEL_1167;
          }

          *v558 = v558[1];
          ++v558;
          --v559;
        }

        while (v559);
        *(v826 + 1370) = *(v826 + 1348);
        v564 = (v826 + 1352);
        v565 = 4;
        do
        {
          v566 = (v564 + 1);
          if (v564 + 2 > v371 || v566 > (v564 + 2) || v564 < v807 || v564 > v566)
          {
            goto LABEL_1167;
          }

          *v564 = v564[1];
          ++v564;
          --v565;
        }

        while (v565);
        v542 = v826;
        *(v826 + 1360) = *(v826 + 1346);
        v533 = ((v805 >> 15) & 0xFFFFFFFE) * *(v826 + 1348);
      }

      v570 = 0;
      v571 = *v537;
      do
      {
        v572 = (v542 + v570 + 1636);
        v573 = v542 + v570 + 1638;
        if (v573 > v538 || v572 > v573)
        {
          goto LABEL_1167;
        }

        v575 = *v572;
        if (v575 < v571)
        {
          v571 = v575;
        }

        v570 += 2;
      }

      while (v570 != 6);
      v576 = 0;
      v577 = v571;
      if (v571 >= 8)
      {
        v578 = 8;
      }

      else
      {
        v578 = v571;
      }

      v579 = v533;
      if (v533 > 0x7FFFFFF)
      {
        v580 = v821;
      }

      else
      {
        v580 = v821;
        if (v577 >= 1)
        {
          LOWORD(v576) = 0;
          v579 = v533;
          do
          {
            v579 *= 2;
            v576 = (v576 + 1);
          }

          while (v579 <= 0x7FFFFFF && v576 < v578);
        }
      }

      if (v579 >= 2147450879)
      {
        i1 = 0x7FFF;
      }

      else
      {
        i1 = (v579 + 0x8000) >> 16;
      }

      v582 = *(v542 + 1644);
      v583 = &v541[v580];
      v586 = v540 >= v583 && v541 <= v583 && (v540 - v583) > 622;
      if (v576 <= v582)
      {
        if (!v586)
        {
          goto LABEL_1167;
        }

        v589 = vnegq_s32(vdupq_n_s32((v582 - v576)));
        for (kk = 4; kk != 628; kk += 16)
        {
          _Q1 = *(v372 + kk);
          v592 = vshll_n_s16(*_Q1.i8, 0x10uLL);
          __asm { SHLL2           V1.4S, V1.8H, #0x10 }

          *(v372 + kk) = vraddhn_high_s32(vraddhn_s32(vshlq_s32(v592, v589), v536), vshlq_s32(_Q1, v589), v536);
        }
      }

      else
      {
        if (!v586)
        {
          goto LABEL_1167;
        }

        v587 = vdupq_n_s32((v576 - v582));
        for (mm = 4; mm != 628; mm += 16)
        {
          *(v372 + mm) = vqmovn_high_s32(vqmovn_s32(vshlq_u32(vmovl_s16(*(v372 + mm)), v587)), vshlq_u32(vmovl_high_s16(*(v372 + mm)), v587));
        }
      }

      *(v542 + 1644) = v576;
      if (v813)
      {
        v595 = (v826 + 1630);
        for (nn = 5; nn > 1; --nn)
        {
          if (v595 < v539)
          {
            goto LABEL_1167;
          }

          v597 = (v595 + 1);
          if (v595 + 1 > v537 || v595 > v597 || v597 < v539 || v597 > (v595 + 2))
          {
            goto LABEL_1167;
          }

          v595[1] = *v595;
          --v595;
        }

        *(v542 + 1624) = v810;
        *(v542 + 1654) = v810;
      }

      v598 = 0;
      v599 = v817[5];
      v862 = v817[4];
      v863 = v599;
      v600 = v817[7];
      v864 = v817[6];
      v865 = v600;
      v601 = v817[1];
      v858 = *v817;
      v859 = v601;
      v602 = v817[3];
      v860 = v817[2];
      v861 = v602;
      do
      {
        *(&v858 + v598) = vraddhn_high_s32(vraddhn_s32(vshll_n_s16(*(&v858 + v598), 0xDuLL), v536), vshll_high_n_s16(*(&v858 + v598), 0xDuLL), v536);
        v598 += 16;
      }

      while (v598 != 128);
      v603 = v535;
      if (v823 <= 1)
      {
        v803 = 2 * v535;
        if (((2 * v535) & 0xFFFE) > 0x4000)
        {
          v604 = 0;
          v605 = v803;
          if (v803 >= 0x7FFFu)
          {
            v605 = 0x7FFF;
          }

          v803 = v605;
          v606 = vdupq_n_s32(v605);
          v607 = vdupq_n_s32(v535);
          do
          {
            *(&v839 + v604) = vraddhn_high_s32(vraddhn_s32(vmulq_s32(vshrq_n_s32(vmulq_s32(v606, vmovl_s16(*(&v858 + v604))), 0xFuLL), v607), v536), vmulq_s32(vshrq_n_s32(vmulq_s32(v606, vmovl_high_s16(*(&v858 + v604))), 0xFuLL), v607), v536);
            v604 += 16;
          }

          while (v604 != 128);
        }
      }

      v806 = v533;
      v811 = v535;
      LOWORD(v869) = -21846;
      LOWORD(v829) = -21846;
      v608 = 2 * v535 * v535;
      v804 = D_UTIL_dot_product12(&v858, &v858, 64, &v869);
      if (v608 && (v609 = v608 ^ (v608 >> 31), v609 <= 0x3FFFFFFF))
      {
        v610 = 0;
        do
        {
          v611 = v609 >> 29;
          v609 *= 2;
          ++v610;
        }

        while (!v611);
      }

      else
      {
        v610 = 0;
      }

      v612 = v869;
      v613 = D_UTIL_dot_product12(&v847, &v847, 64, &v829);
      v614 = i1;
      if (i1)
      {
        v615 = v826;
        v617 = v815;
        v616 = v816;
        v618 = (v826 + 1642);
        v619 = 0uLL;
        v620.i64[0] = 0x200000002000;
        v620.i64[1] = 0x200000002000;
        v621 = v811;
        v622 = v804;
        v623 = v612;
        if (i1 != 0xFFFF)
        {
          v651 = (i1 ^ (i1 >> 15));
          v371 = (v826 + 1384);
          for (i1 = 0; v651 < 0x4000; ++i1)
          {
            v651 = (2 * v651);
          }

          goto LABEL_936;
        }

        LOWORD(i1) = 15;
      }

      else
      {
        v615 = v826;
        v617 = v815;
        v616 = v816;
        v618 = (v826 + 1642);
        v619 = 0uLL;
        v620.i64[0] = 0x200000002000;
        v620.i64[1] = 0x200000002000;
        v621 = v811;
        v622 = v804;
        v623 = v612;
      }

      v371 = (v826 + 1384);
LABEL_936:
      v624 = (v608 << v610 >> 16) * (v622 >> 16);
      v625 = v623 + 6 - v610 - 10;
      v626 = (((v614 << i1) * (v614 << i1)) >> 15) * (v613 >> 16);
      v627 = v625 - (v829 - 2 * i1);
      if (v627 < 0)
      {
        v628 = v624 >> 15 >> (1 - v627);
        _CF = __CFADD__(v627, 15);
        v629 = v626 >> 16;
        if (!_CF)
        {
          v628 = 0;
        }
      }

      else
      {
        v628 = v624 >> 16;
        v629 = v626 >> 15 >> (v627 + 1);
      }

      v630 = v799;
      v631 = 0;
      v632 = ((v628 - v629) << 15) / (v629 + v628 + 1);
      v633 = v632;
      *v618 = (v632 >> 2) + 0x2000;
      v634 = v817[5];
      v862 = v817[4];
      v863 = v634;
      v635 = v817[7];
      v864 = v817[6];
      v865 = v635;
      v636 = v817[1];
      v858 = *v817;
      v859 = v636;
      v637 = v817[3];
      v638 = v632 << 16;
      v860 = v817[2];
      v861 = v637;
      v639 = 32 * v614;
      v640 = 1;
      do
      {
        v641 = (v372 + v631 + 500);
        v642 = v372 + v631 + 502;
        if (v642 > v616 || v641 > v642 || v641 < v617)
        {
          goto LABEL_1167;
        }

        v645 = v603 * *v641 + v639 * *(&v847 + v631) + 0x2000;
        v646 = v645 >> 14;
        if (((v645 >> 14) + 0x7FFF) > 0xFFFE)
        {
          if (v646 < 0x8000)
          {
            *v641 = 0x8000;
            v640 = 0x7FFF;
          }

          else
          {
            v640 = 0x7FFF;
            *v641 = 0x7FFF;
          }
        }

        else
        {
          *v641 = v645 >> 14;
          if (v646 >= 0)
          {
            v647 = v645 >> 14;
          }

          else
          {
            v647 = -v646;
          }

          if (v647 > v640)
          {
            v640 = v647;
          }
        }

        v631 += 2;
      }

      while (v631 != 128);
      if (v640)
      {
        v648 = v826 + 1600;
        v649 = (v826 + 1584);
        v650 = (v826 + 1588);
        if (v640 == 0xFFFF)
        {
          v640 = 15;
        }

        else
        {
          v652 = (v640 ^ (v640 >> 15));
          if (v652 >= 0x4000)
          {
            v640 = 0;
          }

          else
          {
            v640 = 0;
            do
            {
              v652 = (2 * v652);
              ++v640;
            }

            while (v652 < 0x4000);
          }
        }
      }

      else
      {
        v648 = v826 + 1600;
        v649 = (v826 + 1584);
        v650 = (v826 + 1588);
      }

      *(v615 + 1640) = *(v615 + 1638);
      *(v615 + 1636) = *(v615 + 1634);
      *(v615 + 1634) = v576 + v640 - 1;
      v885[15] = v619;
      v885[14] = v619;
      v885[13] = v619;
      v885[12] = v619;
      v885[11] = v619;
      v885[10] = v619;
      v885[9] = v619;
      v885[8] = v619;
      v885[7] = v619;
      v885[6] = v619;
      v885[5] = v619;
      v885[4] = v619;
      v885[3] = v619;
      v885[2] = v619;
      v885[1] = v619;
      v885[0] = v619;
      v884 = v619;
      v883 = v619;
      v882 = v619;
      v881 = v619;
      v880 = v619;
      v879 = v619;
      v878 = v619;
      v877 = v619;
      v876 = v619;
      v875 = v619;
      v874 = v619;
      v873 = v619;
      v872 = v619;
      if (v621 < 0x399Au)
      {
        v653 = 1;
      }

      else
      {
        v653 = 2;
      }

      v871 = v619;
      v870 = v619;
      if (v621 >= 9830)
      {
        v654 = v653;
      }

      else
      {
        v654 = 0;
      }

      v655 = 6;
      v869 = v619;
      do
      {
        v656 = &v650[--v655];
        v658 = v656 - 1 < v649 || v656 > v648 || v656 - 1 > v656;
        v659 = v656 + 1;
        if (v658 || v659 > v648 || v656 > v659)
        {
          goto LABEL_1167;
        }

        *v656 = *(v656 - 1);
      }

      while (v655 > 1);
      *(v615 + 1588) = v621;
      v662 = v806 >> 16;
      if ((v806 >> 16) - *(v615 + 1586) <= 2 * *(v615 + 1586))
      {
        v664 = 0;
        v665 = v650;
        v666 = 6;
        do
        {
          if ((v665 + 1) > v648 || v665 > v665 + 1)
          {
            goto LABEL_1167;
          }

          v668 = *v665++;
          if (v668 < 9830)
          {
            ++v664;
          }

          --v666;
        }

        while (v666);
        if (v664 > 2)
        {
          v654 = 0;
        }

        v663 = v654 - (v654 - *v649 > 1);
      }

      else if (v621 < 14746)
      {
        v663 = v654 + 1;
      }

      else
      {
        v663 = 2;
      }

      *(v615 + 1586) = HIWORD(v806);
      *(v615 + 1584) = v663;
      v669 = v663 + v797;
      if (v669)
      {
        if (v669 == 1)
        {
          v670 = 0;
          v671 = &v869;
          do
          {
            if (*(&v847 + v670))
            {
              v672 = 0;
              v673 = vdupq_n_s16(*(&v847 + v670));
              v674 = v671;
              do
              {
                v675 = D_ROM_ph_imp_mid[v672];
                v676.i64[0] = 0x400000004000;
                v676.i64[1] = 0x400000004000;
                v677.i64[0] = 0x400000004000;
                v677.i64[1] = 0x400000004000;
                v678 = vsraq_n_s32(v674[1], vmlal_high_s16(v676, v673, v675), 0xFuLL);
                *v674 = vsraq_n_s32(*v674, vmlal_s16(v677, *v673.i8, *v675.i8), 0xFuLL);
                v674[1] = v678;
                v674 += 2;
                ++v672;
              }

              while (v672 != 8);
            }

            ++v670;
            v671 = (v671 + 4);
          }

          while (v670 != 64);
        }
      }

      else
      {
        v679 = 0;
        v680 = &v869;
        do
        {
          if (*(&v847 + v679))
          {
            v681 = 0;
            v682 = vdupq_n_s16(*(&v847 + v679));
            v683 = v680;
            do
            {
              v684 = D_ROM_ph_imp_low[v681];
              v685.i64[0] = 0x400000004000;
              v685.i64[1] = 0x400000004000;
              v686.i64[0] = 0x400000004000;
              v686.i64[1] = 0x400000004000;
              v687 = vsraq_n_s32(v683[1], vmlal_high_s16(v685, v682, v684), 0xFuLL);
              *v683 = vsraq_n_s32(*v683, vmlal_s16(v686, *v682.i8, *v684.i8), 0xFuLL);
              v683[1] = v687;
              v683 += 2;
              ++v681;
            }

            while (v681 != 8);
          }

          ++v679;
          v680 = (v680 + 4);
        }

        while (v679 != 64);
      }

      if (v669 <= 1)
      {
        v688 = 0;
        v689 = v885;
        do
        {
          v690 = v689[-16];
          v691 = v689[-15];
          v692 = *v689;
          v693 = v689[1];
          v689 += 2;
          *(&v847 + v688) = vuzp1q_s16(vaddq_s32(v692, v690), vaddq_s32(v693, v691));
          v688 += 16;
        }

        while (v688 != 128);
      }

      v694 = (0x4000 - (v633 >> 1)) * v798;
      v695 = *v615;
      v696 = v806 >> 1;
      v697 = 2 * (27536 * v662 + ((27536 * v696) >> 15));
      if (v697 <= *v615)
      {
        v697 = *v615;
      }

      v698 = v806 + 2 * (6226 * v662 + ((6226 * v696) >> 15));
      if (v698 >= v695)
      {
        v698 = *v615;
      }

      if (v806 < v695)
      {
        v699 = v698;
      }

      else
      {
        v699 = v697;
      }

      *v615 = v699;
      v700 = 2 * ((v694 >> 15) * (v699 >> 16) + (((v694 >> 15) * (v699 >> 1)) >> 15) + (((2 * v694) & 0xFFFF0000 ^ 0x7FFF0000) >> 16) * v662 + (((((2 * v694) & 0xFFFF0000 ^ 0x7FFF0000) >> 16) * v696) >> 15));
      v701 = (v638 >> 19) + 4096;
      LODWORD(v867[0]) = (((v847 << 15) | 0x4000) - v701 * SWORD1(v847)) >> 15;
      v702 = -4096 - (v638 >> 19);
      v703 = &v847 + 1;
      for (i2 = 4; i2 != 252; i2 += 4)
      {
        if (v703 - 1 < &v847 || v703 - 1 > v703)
        {
          goto LABEL_1167;
        }

        v706 = *v703;
        v707 = *(v703 - 1);
        v708 = v703[1];
        ++v703;
        *(v867 + i2) = ((v707 + v708) * v702 + (v706 << 15) + 0x4000) >> 15;
      }

      v709 = 0;
      HIDWORD(v868) = (((SHIWORD(v854) << 15) | 0x4000) - v701 * SWORD6(v854)) >> 15;
      v710 = vdupq_n_s32(((v700 << v576) + 0x8000) >> 16);
      v711 = v867;
      v712 = vdupq_n_s16(v603);
      do
      {
        v714 = *v711;
        v713 = v711[1];
        v711 += 2;
        *(&v858 + v709) = vqmovn_high_s32(vqmovn_s32(vshrq_n_s32(vaddq_s32(vmlal_s16(vshlq_n_s32(vmulq_s32(v714, v710), 5uLL), *v712.i8, *(&v858 + v709)), v620), 0xEuLL)), vshrq_n_s32(vaddq_s32(vmlal_high_s16(vshlq_n_s32(vmulq_s32(v713, v710), 5uLL), v712, *(&v858 + v709)), v620), 0xEuLL));
        v709 += 16;
      }

      while (v709 != 128);
      v715 = v823;
      if (v823 <= 1 && v803 > 0x4000u)
      {
        for (i3 = 0; i3 != 128; i3 += 16)
        {
          *(&v839 + i3) = vqaddq_s16(*(&v858 + i3), *(&v839 + i3));
        }

        v717 = 0;
        v718 = (v839 >> 2) * (v839 >> 2);
        do
        {
          v719 = (&v839 + v717 + 2);
          v720 = (&v839 + v717 + 4);
          if (v719 < &v839 || v720 > &v847 || v719 > v720)
          {
            goto LABEL_1167;
          }

          v723 = (*v719 >> 2) * (*v719 >> 2);
          v724 = v723 ^ 0x7FFFFFFF;
          v725 = v723 + v718;
          if (v724 <= v718)
          {
            v718 = 0x7FFFFFFF;
          }

          else
          {
            v718 = v725;
          }

          v717 += 2;
        }

        while (v717 != 126);
        v726 = v718 + 0x3FFFFFFF;
        v727 = 2 * v718;
        v728 = (v718 >> 31) ^ 0x7FFFFFFF;
        if (v726 < 0x7FFFFFFE)
        {
          v728 = v727;
        }

        if (v728)
        {
          v729 = v728 ^ (v728 >> 31);
          if (v729 > 0x3FFFFFFF)
          {
            v733 = 0;
            v735 = v728 >> 1;
          }

          else
          {
            v730 = 0;
            do
            {
              v731 = v730;
              v732 = v729 >> 29;
              v729 *= 2;
              ++v730;
            }

            while (!v732);
            v733 = v730;
            v734 = v728 << (v730 - 1);
            v735 = v728 >> (1 - v730);
            if (v731 < 0x7FFFu)
            {
              v735 = v734;
            }
          }

          v736 = v735 + 0x8000;
          v737 = (v858 >> 2) * (v858 >> 2);
          v738 = &v858 + 1;
          v739 = 63;
          do
          {
            v740 = v738 + 1;
            if (v738 < &v858 || v740 > v866 || v738 > v740)
            {
              goto LABEL_1167;
            }

            v743 = *v738++;
            v744 = (v743 >> 2) * (v743 >> 2);
            v745 = v744 ^ 0x7FFFFFFF;
            v746 = v744 + v737;
            if (v745 <= v737)
            {
              v737 = 0x7FFFFFFF;
            }

            else
            {
              v737 = v746;
            }

            --v739;
          }

          while (v739);
          v747 = v737 + 0x3FFFFFFF;
          v748 = 2 * v737;
          v749 = (v737 >> 31) ^ 0x7FFFFFFF;
          if (v747 < 0x7FFFFFFE)
          {
            v749 = v748;
          }

          if (v749)
          {
            v750 = v749 ^ (v749 >> 31);
            if (v750 > 0x3FFFFFFF)
            {
              v753 = 0;
            }

            else
            {
              v751 = 0;
              do
              {
                v752 = v750 >> 29;
                v750 *= 2;
                ++v751;
              }

              while (!v752);
              v753 = v751;
            }

            v755 = v749 << v753;
            if (v755 >= 2147450879)
            {
              v756 = 0x7FFF;
            }

            else
            {
              v756 = (v755 + 0x8000) >> 16;
            }

            if ((v756 - 1) >= 0x7FFF)
            {
              v756 = 0x7FFF;
            }

            v757 = (((v736 >> 1) & 0xFFFF8000) / v756) << (v753 - v733 + 8);
            if (v757)
            {
              if (v757 == -1)
              {
                v758 = v799;
                v759 = 31;
                goto LABEL_1099;
              }

              v760 = v757 ^ (v757 >> 31);
              if (v760 <= 0x3FFFFFFF)
              {
                v758 = v799;
                v759 = 0;
                do
                {
                  v761 = v760 >> 29;
                  v760 *= 2;
                  ++v759;
                }

                while (!v761);
                goto LABEL_1099;
              }
            }

            v758 = v799;
            v759 = 0;
LABEL_1099:
            LODWORD(v869) = v757 << v759;
            LOWORD(v829) = 31 - v759;
            D_UTIL_normalised_inverse_sqrt(&v869, &v829);
            if ((v829 & 0x8000u) == 0)
            {
              v762 = v869 << v829;
            }

            else
            {
              v762 = v869 >> -v829;
            }

            v754 = ((v762 << 9) + 0x8000) >> 16;
            v615 = v826;
            v630 = v758;
          }

          else
          {
            v754 = 0;
          }

          v763 = &v839;
          v764 = 64;
          do
          {
            v765 = v763 + 1;
            v766 = v763 < &v839 || v765 > &v847;
            if (v766 || v763 > v765)
            {
              goto LABEL_1167;
            }

            v768 = (v754 * *v763) >> 13;
            if (v768 <= -32768)
            {
              v768 = -32768;
            }

            if (v768 >= 0x7FFF)
            {
              LOWORD(v768) = 0x7FFF;
            }

            *v763++ = v768;
          }

          while (--v764);
        }

        v862 = v843;
        v863 = v844;
        v864 = v845;
        v865 = v846;
        v858 = v839;
        v859 = v840;
        v860 = v841;
        v861 = v842;
      }

      if (v823 < 1)
      {
        v769 = (D_ROM_interpol_frac + (v821 >> 5));
        if (v769 < D_ROM_interpol_frac || v769 + 1 > &order_MRDTX || v769 > v769 + 1)
        {
          goto LABEL_1167;
        }

        v770 = 0;
        v771 = *v769;
        v772 = vdupq_n_s32(0x7FFF - v771);
        v773 = vdupq_n_s16(v771);
        v715 = v823;
        do
        {
          v837[v770 / 0x10] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmulq_s32(v772, vmovl_s16(*(&v831 + v770))), *v773.i8, *(&v833 + v770)), 0xFuLL), vmlal_high_s16(vmulq_s32(v772, vmovl_high_s16(*(&v831 + v770))), v773, *(&v833 + v770)), 0xFuLL);
          v770 += 16;
        }

        while (v770 != 32);
      }

      else
      {
        *v371 = 0;
      }

      if (v715 < 8)
      {
        if (v818 < v615)
        {
          goto LABEL_1167;
        }

        v777 = a3 + 2 * (v821 | (v821 >> 2));
        if (v777 > v796 || v777 < a3 || v819 > &v857 || v855 > v819 || &v857 - v819 < 33)
        {
          goto LABEL_1167;
        }

        v775 = v630;
        v776 = v819;
        v362 = v823;
        D_UTIL_dec_synthesis(v819, &v858, v576, v777, 0, v837, v823, 0, v812, v615);
      }

      else
      {
        if ((v825 + 2) > v814)
        {
          goto LABEL_1167;
        }

        if (v822 > v825 + 2)
        {
          goto LABEL_1167;
        }

        if (v822 < v630)
        {
          goto LABEL_1167;
        }

        if (v818 < v615)
        {
          goto LABEL_1167;
        }

        v774 = a3 + 2 * (v821 | (v821 >> 2));
        if (v774 > v796 || v774 < a3 || v819 > &v857 || v855 > v819 || &v857 - v819 < 33)
        {
          goto LABEL_1167;
        }

        v775 = v630;
        v776 = v819;
        v362 = v823;
        D_UTIL_dec_synthesis(v819, &v858, v576, v774, *v822, v837, v823, 0, v812, v615);
        v822 = (v825 + 2);
      }

      v373 = v776 + 17;
      v363 = v821 + 64;
      v372 += 128;
      v809 += 0x4000000000;
      v352 = v826;
      v355 = v815;
      v354 = v816;
      v356 = v802;
      v365 = v826 + 1624;
      v340 = v775;
      if (v821 >= 0xC0)
      {
        memcpy(v815, (v826 + 516), 0x1F0uLL);
        v778 = 0;
        v779 = vnegq_s32(vdupq_n_s32(v576));
        do
        {
          _Q2 = *(v802 + v778);
          v781 = vshll_n_s16(*_Q2.i8, 0x10uLL);
          __asm { SHLL2           V2.4S, V2.8H, #0x10 }

          *(v802 + v778) = vraddhn_high_s32(vraddhn_s32(vshlq_s32(v781, v779), 0), vshlq_s32(_Q2, v779), 0);
          v778 += 16;
        }

        while (v778 != 512);
        v782 = *(v826 + 1664);
        LOWORD(v869) = -21846;
        LOWORD(v829) = -21846;
        v783 = *(v782 + 344);
        if (v783 == 7)
        {
          v784 = 0;
        }

        else
        {
          v784 = v783 + 1;
        }

        *(v782 + 344) = v784;
        v785 = (v782 + 32 * v784);
        if (v785 <= v782 + 256 && v785 >= v782)
        {
          v787 = v834;
          *v785 = v833;
          v785[1] = v787;
          if (v785 < v785 + 2)
          {
            v788 = 0;
            LODWORD(v789) = 0;
            while (1)
            {
              v789 = (v789 + *(v802 + v788) * *(v802 + v788));
              if (v789 >> 30)
              {
                break;
              }

              v788 += 2;
              if (v788 == 512)
              {
                goto LABEL_1159;
              }
            }

            v789 = 0x3FFFFFFFLL;
LABEL_1159:
            D_UTIL_log2(v789, &v869, &v829);
            v790 = (v782 + 320 + 2 * *(v782 + 344));
            v791 = (v790 + 1);
            v792 = v790 < v782 + 320 || v791 > v782 + 336;
            if (!v792 && v790 <= v791)
            {
              *v790 = SBYTE1(v829) + (v869 << 7) - 1024;
              *(*(v826 + 1664) + 351) = 0;
              *(v826 + 1672) = v812;
              return v813 ^ 1u;
            }
          }
        }

        goto LABEL_1167;
      }
    }

    if (v818 < v352)
    {
      goto LABEL_1167;
    }

    v394 = v380;
    v395 = v352[690];
    v396 = v352[689];
    v397 = v352[812];
    v398 = vdup_n_s16(v397);
    v399 = (v826 + 1374);
    v400 = vminv_s16(vmin_s16(*v795, v398));
    v401 = vmaxv_s16(vmax_s16(*v795, v398));
    v402 = v352[686];
    v403 = 4;
    v393 = v823;
    do
    {
      if ((v399 + 1) > v826 + 1382 || v399 > v399 + 1)
      {
        goto LABEL_1167;
      }

      v406 = *v399++;
      v405 = v406;
      if (v406 < v402)
      {
        v402 = v405;
      }

      --v403;
    }

    while (v403);
    v407 = v401;
    v408 = v400;
    v409 = v401 - v400;
    if (v808)
    {
      v410 = 0;
      v411 = 0;
      v389 = v821;
      do
      {
        v411 += *(v365 + v410);
        v410 += 2;
      }

      while (v410 != 10);
      v380 = v394;
      if (v409 <= 9 && v394 > v408 - 5 && v394 - v407 < 5)
      {
        goto LABEL_626;
      }

      v412 = v395 <= 0x2000 || v396 <= 0x2000;
      v413 = !v412;
      if (v413 && (v394 - v397 + 9) < 0x13)
      {
        goto LABEL_626;
      }

      if (v402 <= 6553 && v352[690] == v402 && v394 > v408 && v394 < v407)
      {
        goto LABEL_626;
      }

      v414 = v409 >= 70 || v394 <= v408;
      v415 = v414 && v394 <= (6554 * v411) >> 15;
      v416 = !v415;
      if (v394 < v407 && v416)
      {
        goto LABEL_626;
      }

      v418 = v409 < 10 && v402 > 0x2000 || v413;
      v380 = v352[812];
      if ((v418 & 1) == 0)
      {
        *&v869 = *v365;
        WORD4(v869) = *(v365 + 8);
        D_GAIN_sort_lag(&v869);
        v389 = v821;
        v355 = v815;
        v354 = v816;
        v356 = v802;
        v419 = SWORD4(v869);
        v420 = SWORD2(v869);
        v421 = SWORD4(v869) - SWORD2(v869);
        if (v421 >= 40)
        {
          v421 = 40;
        }

        v422 = 31821 * *(v826 + 1652) + 13849;
        *(v826 + 1652) = v422;
        v380 = ((10923 * (SWORD3(v869) + v420 + v419)) >> 15) + (((v421 >> 1) * v422) >> 15);
      }

      v423 = v380 >= v407 ? v407 : v380;
      v424 = v423 <= v408 ? v408 : v423;
      if (v380 <= v407 && v423 >= v408)
      {
        goto LABEL_626;
      }
    }

    else
    {
      v389 = v821;
      if (v409 > 9 || v402 <= 0x2000)
      {
        if (v395 <= 0x2000 || v396 <= 0x2000)
        {
          *&v869 = *v365;
          WORD4(v869) = *(v365 + 8);
          D_GAIN_sort_lag(&v869);
          v389 = v821;
          v355 = v815;
          v354 = v816;
          v356 = v802;
          v425 = SWORD4(v869);
          v426 = SWORD2(v869);
          v427 = SWORD4(v869) - SWORD2(v869);
          if (v427 >= 40)
          {
            v427 = 40;
          }

          v428 = 31821 * *(v826 + 1652) + 13849;
          *(v826 + 1652) = v428;
          v397 = ((10923 * (SWORD3(v869) + v426 + v425)) >> 15) + (((v427 >> 1) * v428) >> 15);
        }
      }

      else
      {
        v397 = v352[827];
      }

      if (v397 >= v407)
      {
        v429 = v407;
      }

      else
      {
        v429 = v397;
      }

      if (v429 <= v408)
      {
        v424 = v408;
      }

      else
      {
        v424 = v429;
      }

      v430 = v397 > v407 || v429 < v408;
      v380 = v397;
      if (!v430)
      {
        goto LABEL_626;
      }
    }

    v380 = v424;
LABEL_626:
    v381 = 0;
    v392 = 0;
    v390 = (v356 + 2 * v389);
    v391 = &v390[-v380];
    goto LABEL_627;
  }

  D_LPC_isf_isp_conversion(&v833, &v835, 0x10u);
  D_LPC_isp_a_conversion(&v835, v855, 0x10u, 17);
  v148 = v826;
  v149 = 0;
  v150 = *(v826 + 1472);
  v831 = *(v826 + 1456);
  v832 = v150;
  v151 = 0uLL;
  do
  {
    v152 = (D_ROM_interpol_frac + (v149 >> 5));
    v153 = v152 + 1;
    if (v152 < D_ROM_interpol_frac || v153 > &order_MRDTX || v152 > v153)
    {
      goto LABEL_1167;
    }

    v156 = 0;
    v157 = *v152;
    v158 = vdupq_n_s32(65534 - 2 * v157);
    v159 = vdupq_n_s32(2 * v157);
    do
    {
      v837[v156 / 0x10] = vraddhn_high_s32(vraddhn_s32(vmlaq_s32(vmulq_s32(v158, vmovl_s16(*(&v831 + v156))), v159, vmovl_s16(*(&v833 + v156))), v151), vmlaq_s32(vmulq_s32(v158, vmovl_high_s16(*(&v831 + v156))), v159, vmovl_high_s16(*(&v833 + v156))), v151);
      v156 += 16;
    }

    while (v156 != 32);
    v160 = &v858 + v149;
    if (v818 < v148)
    {
      goto LABEL_1167;
    }

    v161 = a3 + 2 * (v149 | (v149 >> 2));
    if (v161 > a3 + 640 || v161 < a3 || v160 > v867 || &v858 > v160)
    {
      goto LABEL_1167;
    }

    D_UTIL_dec_synthesis(v855, v160, 0, v161, 1, v837, a1, v824, v812, v148);
    v151 = 0uLL;
    v148 = v826;
    _CF = v149 >= 0xC0;
    v149 += 64;
  }

  while (!_CF);
  if (v818 <= v826)
  {
    goto LABEL_1167;
  }

  D_MAIN_reset(v826, 0);
  v162 = v834;
  *(v826 + 1456) = v833;
  *(v826 + 1472) = v162;
  *(v826 + 1672) = v812;
  *(*(v826 + 1664) + 351) = v824;
  if (a5 == 6)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

void D_MAIN_reset(uint64_t a1, int a2)
{
  *(a1 + 4) = 0u;
  *(a1 + 468) = 0u;
  *(a1 + 484) = 0u;
  *(a1 + 436) = 0u;
  *(a1 + 452) = 0u;
  *(a1 + 404) = 0u;
  *(a1 + 420) = 0u;
  *(a1 + 372) = 0u;
  *(a1 + 388) = 0u;
  *(a1 + 340) = 0u;
  *(a1 + 356) = 0u;
  *(a1 + 308) = 0u;
  *(a1 + 324) = 0u;
  *(a1 + 276) = 0u;
  *(a1 + 292) = 0u;
  *(a1 + 244) = 0u;
  *(a1 + 260) = 0u;
  *(a1 + 212) = 0u;
  *(a1 + 228) = 0u;
  *(a1 + 180) = 0u;
  *(a1 + 196) = 0u;
  *(a1 + 148) = 0u;
  *(a1 + 164) = 0u;
  *(a1 + 116) = 0u;
  *(a1 + 132) = 0u;
  *(a1 + 84) = 0u;
  *(a1 + 100) = 0u;
  *(a1 + 52) = 0u;
  *(a1 + 68) = 0u;
  *(a1 + 20) = 0u;
  *(a1 + 36) = 0u;
  if (a1 + 4 > (a1 + 500) || (*(a1 + 1504) = 0uLL, *(a1 + 1488) = 0uLL, v3 = (a1 + 1520), a1 + 1488 > (a1 + 1520)))
  {
LABEL_9:
    __break(0x5519u);
    return;
  }

  v4 = (a1 + 1338);
  *(a1 + 1654) = 64;
  *(a1 + 1674) = 1;
  *a1 = 0;
  *(a1 + 1642) = 0x80000;
  *(a1 + 1584) = 0uLL;
  *(a1 + 1634) = 0x8000800080008;
  if (a2)
  {
    *v4 = 0xC800C800C800C800;
    *(a1 + 1346) = 0uLL;
    *(a1 + 1362) = 0uLL;
    *(a1 + 1378) = 0;
    *(a1 + 1382) = 21845;
    *(a1 + 1110) = 0uLL;
    *(a1 + 1126) = 0uLL;
    *(a1 + 1142) = 0uLL;
    *(a1 + 1154) = 0uLL;
    *(a1 + 1230) = 0uLL;
    *(a1 + 1246) = 0uLL;
    *(a1 + 1262) = 0uLL;
    *(a1 + 1278) = 0uLL;
    *(a1 + 1294) = 0uLL;
    *(a1 + 1310) = 0uLL;
    *(a1 + 1322) = 0uLL;
    *(a1 + 1616) = 0;
    *(a1 + 1600) = 0uLL;
    memset_pattern16((a1 + 1624), asc_19B0B3930, 0xAuLL);
    *(a1 + 1424) = E_ROM_isp;
    *(a1 + 1440) = unk_19B316D60;
    *(a1 + 1456) = D_ROM_isf;
    *(a1 + 1472) = unk_19B309B46;
    v5 = (a1 + 1014);
    v6 = 3;
    while (1)
    {
      *v5 = D_ROM_isf;
      v5[1] = unk_19B309B46;
      if (v5 >= v5 + 2)
      {
        break;
      }

      v5 += 2;
      if (!--v6)
      {
        *(v4 + 308) = 0x5555555555550000;
        *(a1 + 1672) = 0;
        *(a1 + 1416) = 0;
        *(a1 + 1384) = 0u;
        *(a1 + 1400) = 0u;
        *v3 = 0u;
        v3[1] = 0u;
        v3[2] = 0u;
        v3[3] = 0u;
        D_DTX_reset(*(a1 + 1664));
        *(a1 + 1658) = 0;
        return;
      }
    }

    goto LABEL_9;
  }
}

uint64_t D_DTX_reset(uint64_t result)
{
  if (result)
  {
    v1 = 0;
    v2 = 0;
    *(result + 352) = 0;
    *(result + 336) = 0x55550DAC0DAC2000;
    *(result + 344) = 0;
    *(result + 256) = D_ROM_isf;
    *(result + 272) = unk_19B309B46;
    *(result + 288) = D_ROM_isf;
    *(result + 304) = unk_19B309B46;
    while (1)
    {
      v3 = (result + v2);
      *v3 = D_ROM_isf;
      v3[1] = unk_19B309B46;
      if (result + v2 > (result + v2 + 32))
      {
        break;
      }

      v4 = result + v1 + 322;
      if (v4 > result + 336)
      {
        break;
      }

      v5 = (result + v1 + 320);
      if (v5 > v4)
      {
        break;
      }

      *v5 = 437;
      v2 += 32;
      v1 += 2;
      if (v2 == 256)
      {
        *(result + 350) = 127;
        *(result + 357) = 0;
        *(result + 353) = 1792;
        *(result + 346) = 21845;
        *(result + 358) = 0;
        return result;
      }
    }

    __break(0x5519u);
  }

  return result;
}

unint64_t D_LPC_isf_isp_conversion(unint64_t result, __int16 *a2, unsigned __int16 a3)
{
  v3 = 0;
  v4 = a3;
  v5 = a3 - 1;
  v6 = result + 2 * a3;
  v7 = &a2[a3];
  v8 = v5;
  while (1)
  {
    v9 = (result + v3 * 2);
    v10 = result + v3 * 2 + 2;
    v11 = result + v3 * 2 < result || v10 > v6;
    v12 = v11 || v9 > v10;
    v13 = &a2[v3];
    v14 = &a2[v3 + 1];
    v15 = !v12 && v13 >= a2;
    v16 = !v15 || v14 > v7;
    if (v16 || v13 > v14)
    {
      break;
    }

    *v13 = *v9;
    ++v3;
    if (!--v8)
    {
      v18 = (result + 2 * v5);
      if (v18 >= result && (v18 + 1) <= v6 && v18 <= v18 + 1)
      {
        v19 = &a2[v5];
        if (v19 >= a2 && (v19 + 1) <= v7 && v19 <= v19 + 1)
        {
          *v19 = 2 * *v18;
          for (i = a2; i >= a2 && (i + 1) <= v7 && i <= i + 1; ++i)
          {
            v21 = *i;
            v22 = v21 >> 7;
            if (v21 >> 7 >= 127)
            {
              v22 = 127;
            }

            v23 = &table[v22];
            v24 = v23 + 1;
            v25 = v23 + 2;
            v26 = v23 + 1 < table || v25 > &word_19B0E55FE;
            v27 = v26 || v24 > v25;
            v28 = !v27 && v23 >= table;
            if (!v28 || v23 > v24)
            {
              break;
            }

            *i = *v23 + (((v23[1] - *v23) * (v21 & 0x7Fu)) >> 7);
            if (!--v4)
            {
              return result;
            }
          }
        }
      }

      break;
    }
  }

  __break(0x5519u);
  return result;
}

_OWORD *D_LPC_isp_a_conversion(__int16 *a1, _WORD *a2, unsigned int a3, int a4)
{
  v5 = a3;
  *&v80[12] = *MEMORY[0x1E69E9840];
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v79[12] = v8;
  v78 = v8;
  *v79 = v8;
  v76 = 0xAAAAAAAAAAAAAAAALL;
  v75[0] = v8;
  v75[1] = v8;
  v9 = a3 >> 1;
  v10 = a3 >> 1;
  if (a3 < 0x12)
  {
    v72 = &v78;
    v73 = v80;
    v74 = &v78;
    D_LPC_isp_pol_get(a1, &v72, 8, a3 & 0x1E, 0);
    v22 = a1 + 1;
    if (a1 + 1 >= a1 && v22 <= &a1[v5 & 0x7FFF])
    {
      v72 = v75;
      v73 = &v77;
      v74 = v75;
      D_LPC_isp_pol_get(v22, &v72, 7, 14, 0);
      goto LABEL_25;
    }

    goto LABEL_99;
  }

  v72 = &v78;
  v73 = v80;
  v74 = &v78;
  D_LPC_isp_pol_get(a1, &v72, a3 >> 1, a3 & 0x7FFE, 1);
  v11 = (v9 + 1);
  v12 = &v78;
  do
  {
    v13 = (v12 + 4);
    if (v12 < &v78 || v13 > v80 || v12 > v13)
    {
      goto LABEL_99;
    }

    *v12 *= 4;
    v12 = (v12 + 4);
    --v11;
  }

  while (v11);
  v16 = (2 * (v9 - 1));
  if (v16 > (2 * (v5 & 0x7FFF) - 2) >> 1)
  {
    goto LABEL_99;
  }

  v72 = v75;
  v73 = &v77;
  v74 = v75;
  D_LPC_isp_pol_get(a1 + 1, &v72, v9 - 1, v16, 1);
  v17 = v75;
  v18 = v9;
  do
  {
    v19 = (v17 + 4);
    if (v17 < v75 || v19 > &v77 || v17 > v19)
    {
      goto LABEL_99;
    }

    *v17 *= 4;
    v17 = (v17 + 4);
    --v18;
  }

  while (v18);
  do
  {
LABEL_25:
    v23 = (v75 + 4 * v10 - 4);
    v24 = (v23 + 4);
    if (v23 < v75 || v24 > &v77 || v23 > v24)
    {
      goto LABEL_99;
    }

    v27 = v75 + 4 * v10;
    v28 = v27 - 12;
    if (v27 - 12 < v75)
    {
      goto LABEL_99;
    }

    v29 = v27 - 8;
    if (v29 > &v77 || v28 > v29)
    {
      goto LABEL_99;
    }

    *v23 -= *v28;
    v30 = v10--;
  }

  while (v30 > 3);
  v31 = 0;
  v32 = &a1[v5];
  v33 = (v32 - 2);
  v34 = v32 >= 2 && v33 >= a1;
  v35 = !v34;
  v36 = v9;
  do
  {
    v37 = &v79[v31 - 16];
    v38 = &v79[v31 - 12];
    v41 = v38 > v80 || v37 > v38 || v37 < &v78;
    if (v41 || v35)
    {
      goto LABEL_99;
    }

    v42 = *v33;
    *&v79[v31 - 16] += 2 * ((*&v79[v31 - 16] >> 16) * v42 + (((*&v79[v31 - 16] >> 1) * v42) >> 15));
    v43 = v75 + v31;
    if ((v75 + v31) < v75 || v43 + 4 > &v77 || v43 > v43 + 4)
    {
      goto LABEL_99;
    }

    *(v75 + v31) -= 2 * ((*(v75 + v31) >> 16) * v42 + (((*(v75 + v31) >> 1) * v42) >> 15));
    v31 += 4;
    --v36;
  }

  while (v36);
  if (a2 + 1 < a2)
  {
    goto LABEL_99;
  }

  v44 = &a2[a4];
  if ((a2 + 1) > v44)
  {
    goto LABEL_99;
  }

  v45 = 0;
  v46 = 0;
  *a2 = 4096;
  v47 = v9 - 1;
  v48 = v5;
  result = v75;
  do
  {
    v50 = &v79[v45 - 12];
    v51 = &v79[v45 - 8];
    v53 = v50 < &v78 || v51 > v80 || v50 > v51;
    v54 = v75 + v45 + 4;
    v55 = v75 + v45 + 8;
    v58 = v53 || v54 < v75 || v55 > &v77 || v54 > v55;
    v59 = &a2[v46 + 1];
    v60 = &a2[v46 + 2];
    if (v58 || v59 < a2 || v60 > v44 || v59 > v60)
    {
      goto LABEL_99;
    }

    v64 = *v50;
    v65 = *v54;
    v66 = v64 + 2048;
    *v59 = (v64 + 2048 + v65) >> 12;
    v67 = &a2[v48];
    v68 = &a2[v48 - 1];
    if (v68 < a2 || v67 > v44 || v68 > v67)
    {
      goto LABEL_99;
    }

    *v68 = (v66 - v65) >> 12;
    ++v46;
    v45 += 4;
    --v48;
    --v47;
  }

  while (v47);
  v69 = &v79[4 * v9 - 16];
  if (v69 < &v78 || v69 + 1 > v80 || v69 > v69 + 1 || (v70 = &a2[v9], v70 < a2) || (v70 + 1) > v44 || v70 > v70 + 1 || (*v70 = (*v69 + 2 * ((*v69 >> 16) * *v33 + (((*v69 >> 1) * *v33) >> 15)) + 2048) >> 12, v71 = &a2[v5], v71 < a2) || (v71 + 1) > v44 || v71 > v71 + 1)
  {
LABEL_99:
    __break(0x5519u);
  }

  *v71 = (*v33 + 4) >> 3;
  return result;
}

int16x8_t D_UTIL_dec_synthesis(__int16 *a1, __int16 *a2, __int16 a3, uint64_t a4, int a5, __int16 *a6, int a7, int a8, __int16 a9, uint64_t a10)
{
  v12 = 0;
  *&v306[4] = *MEMORY[0x1E69E9840];
  *&v13 = 0xAAAAAAAAAAAAAAAALL;
  *(&v13 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v291 = v13;
  v292 = v13;
  v289 = v13;
  v290 = v13;
  v287 = v13;
  v288 = v13;
  v285 = v13;
  v286 = v13;
  v283 = v13;
  v284 = v13;
  v281 = v13;
  v282 = v13;
  v279 = v13;
  v280 = v13;
  v277 = v13;
  v278 = v13;
  v275 = v13;
  v276 = v13;
  *&v274[10] = v13;
  v273 = v13;
  *v274 = v13;
  *&v272[10] = v13;
  v271 = v13;
  *v272 = v13;
  v299 = v13;
  v300 = v13;
  v298[4] = v13;
  v298[5] = v13;
  v298[2] = v13;
  v298[3] = v13;
  v298[0] = v13;
  v298[1] = v13;
  v14 = *(a10 + 1536);
  v297[0] = *(a10 + 1520);
  v297[1] = v14;
  v15 = (a10 + 1552);
  v295 = v13;
  v296 = v13;
  v294[4] = v13;
  v294[5] = v13;
  v294[2] = v13;
  v294[3] = v13;
  v294[0] = v13;
  v294[1] = v13;
  v16 = *(a10 + 1568);
  v17 = *a1 >> (a3 + 4);
  v18 = v297;
  v19 = v293;
  v293[0] = *(a10 + 1552);
  v293[1] = v16;
  do
  {
    v20 = 0;
    v21 = 0;
    v22 = 1;
    do
    {
      v23 = (v19 + v20 + 30);
      v24 = v19 + v20 + 32;
      v25 = v23 < v293 || v24 > v297;
      if (v25 || v23 > v24)
      {
        goto LABEL_346;
      }

      v21 -= a1[v22] * *v23;
      v20 -= 2;
      ++v22;
    }

    while (v20 != -32);
    v27 = 0;
    v28 = v21 >> 11;
    v29 = v17 * a2[v12];
    v30 = 1;
    do
    {
      v31 = (v18 + v27 + 30);
      v32 = v18 + v27 + 32;
      if (v31 < v297 || v32 > &v301 || v31 > v32)
      {
        goto LABEL_346;
      }

      v29 -= a1[v30] * *v31;
      v27 -= 2;
      ++v30;
    }

    while (v27 != -32);
    v35 = v298 + v12;
    if (v35 + 1 > &v301)
    {
      goto LABEL_346;
    }

    if (v35 > v35 + 1)
    {
      goto LABEL_346;
    }

    v36 = v28 + 2 * v29;
    *v35 = v36 >> 13;
    v37 = v294 + v12;
    if (v37 + 1 > v297 || v37 > v37 + 1)
    {
      goto LABEL_346;
    }

    *v37 = (v36 >> 1) - ((v36 >> 13) << 12);
    ++v12;
    v19 = (v19 + 2);
    v18 = (v18 + 2);
  }

  while (v12 != 64);
  v38 = v300;
  *(a10 + 1520) = v299;
  *(a10 + 1536) = v38;
  v39 = v296;
  *v15 = v295;
  *(a10 + 1568) = v39;
  if (v15 > a10 + 1584 || a10 + 1646 > (a10 + 1648))
  {
    goto LABEL_346;
  }

  v40 = SLOWORD(v294[0]) + (SLOWORD(v298[0]) << 12);
  v41 = v40 + 0x1FFFFFF;
  v42 = v40 << 6;
  v43 = (v40 >> 31) ^ 0x7FFFFFFF;
  if (v41 < 0x3FFFFFE)
  {
    v43 = v42;
  }

  v44 = 11141 * *(a10 + 1646);
  if (((COERCE_UNSIGNED_INT(v43) ^ COERCE_UNSIGNED_INT(v44)) & 0x80000000) != 0)
  {
    v45 = v43 + v44;
  }

  else if (v43 < 0)
  {
    if ((0x80000000 - v43) >= v44)
    {
      v45 = 0x80000000;
    }

    else
    {
      v45 = v43 + v44;
    }
  }

  else if ((v43 ^ 0x7FFFFFFF) <= v44)
  {
    v45 = 0x7FFFFFFF;
  }

  else
  {
    v45 = v43 + v44;
  }

  v46 = 0;
  if ((v45 + 0x2000) >> 14 <= -32768)
  {
    v47 = -32768;
  }

  else
  {
    v47 = (v45 + 0x2000) >> 14;
  }

  if (v47 >= 0x7FFF)
  {
    LOWORD(v47) = 0x7FFF;
  }

  v48 = v45 >= 2147475455 ? 0x7FFF : v47;
  LOWORD(v285) = v48;
  do
  {
    v49 = *(v294 + v46 + 2) + (*(v298 + v46 + 2) << 12);
    v50 = v49 + 0x1FFFFFF;
    v51 = v49 << 6;
    v52 = (v49 >> 31) ^ 0x7FFFFFFF;
    if (v50 >= 0x3FFFFFE)
    {
      v53 = v52;
    }

    else
    {
      v53 = v51;
    }

    v54 = (&v285 + v46);
    if ((&v285 + v46) < &v285)
    {
      goto LABEL_346;
    }

    v55 = v54 + 1;
    if (v54 >= v54 + 1)
    {
      goto LABEL_346;
    }

    v56 = 11141 * *v54;
    if (((COERCE_UNSIGNED_INT(v56) ^ COERCE_UNSIGNED_INT(v53)) & 0x80000000) != 0)
    {
      v59 = v56 + v53;
    }

    else
    {
      if ((0x80000000 - v53) >= v56)
      {
        v57 = 0x80000000;
      }

      else
      {
        v57 = v56 + v53;
      }

      if ((v53 ^ 0x7FFFFFFF) <= v56)
      {
        v58 = 0x7FFFFFFF;
      }

      else
      {
        v58 = v56 + v53;
      }

      if (v53 >= 0)
      {
        v59 = v58;
      }

      else
      {
        v59 = v57;
      }
    }

    v60 = (v59 + 0x2000) >> 14;
    if (v60 <= -32768)
    {
      v60 = -32768;
    }

    if (v60 >= 0x7FFF)
    {
      LOWORD(v60) = 0x7FFF;
    }

    if (v59 >= 2147475455)
    {
      LOWORD(v60) = 0x7FFF;
    }

    *v55 = v60;
    v46 += 2;
  }

  while (v46 != 126);
  v61 = 0;
  *(a10 + 1646) = HIWORD(v292);
  v62 = *(a10 + 1600);
  v63 = *(a10 + 1602);
  LOWORD(v64) = *(a10 + 1604);
  v65 = *(a10 + 1606);
  v66 = *(a10 + 1608);
  v67 = *(a10 + 1610);
  do
  {
    v68 = v64;
    v69 = v65;
    v70 = *(&v285 + v61) + v67;
    v67 = v66;
    v66 = *(&v285 + v61);
    v71 = -16042 * v62 - 16212 * v67 + 32422 * v68 + ((16211 * v65 - 8021 * v63 + 0x2000) >> 14) + 8106 * v70;
    v72 = v71 + 0x1FFFFFFF;
    v73 = 4 * v71;
    v74 = (v71 >> 31) ^ 0x7FFFFFFF;
    if (v72 >= 0x3FFFFFFE)
    {
      v73 = v74;
    }

    v64 = HIWORD(v73);
    v65 = v73 >> 1;
    v75 = (v73 + 0x4000) >> 15;
    if (v75 <= -32768)
    {
      v75 = -32768;
    }

    if (v75 >= 0x7FFF)
    {
      LOWORD(v75) = 0x7FFF;
    }

    if (v73 >= 2147467263)
    {
      v76 = 0x7FFF;
    }

    else
    {
      v76 = v75;
    }

    *(&v285 + v61) = v76;
    v61 += 2;
    v62 = v68;
    v63 = v69;
  }

  while (v61 != 128);
  v77 = 0;
  v78 = 0;
  v79 = 0;
  v80 = *(a10 + 1306);
  v301 = *(a10 + 1290);
  v302 = v80;
  v81 = *(a10 + 1322);
  v82 = v289;
  *&v303[96] = v290;
  *&v303[112] = v291;
  *&v303[128] = v292;
  *v303 = v81;
  *&v303[16] = v285;
  v83 = v288;
  *&v303[32] = v286;
  *&v303[48] = v287;
  *(a10 + 1600) = v68;
  *(a10 + 1602) = v69;
  *(a10 + 1604) = v64;
  *(a10 + 1606) = v65;
  *(a10 + 1608) = v66;
  *(a10 + 1610) = v67;
  *&v303[64] = v83;
  *&v303[80] = v82;
  do
  {
    v84 = &v303[2 * (v77 >> 15) - 8];
    v85 = v84 - 11;
    if (v84 != 22)
    {
      v86 = v84 - 10 > &v303[128] || v85 > v84 - 10;
      if (v86 || v85 < &v301)
      {
        goto LABEL_346;
      }
    }

    v87 = AMR_D_UTIL_interpol_loop(v85, &D_ROM_fir_up, 24, (4 - (v79 - 5 * (v77 >> 15))), 5);
    if (v87 > 536846336)
    {
      v88 = 0x7FFF;
    }

    else
    {
      v88 = 0x8000;
    }

    if ((v87 + 536879103) >= 0x3FFFBFFF)
    {
      v89 = v88;
    }

    else
    {
      v89 = (v87 + 0x2000) >> 14;
    }

    *(a4 + v78) = v89;
    v79 += 4;
    v78 += 2;
    v77 += 26216;
  }

  while (v78 != 160);
  v90 = *&v303[112];
  *(a10 + 1290) = *&v303[96];
  *(a10 + 1306) = v90;
  *(a10 + 1322) = *&v303[128];
  v91 = (a10 + 1650);
  if (a10 + 1650 > (a10 + 1652))
  {
    goto LABEL_346;
  }

  v92 = 0;
  v93 = *v91;
  do
  {
    v93 = 31821 * v93 + 13849;
    *(&v275 + v92) = v93 >> 3;
    v92 += 2;
  }

  while (v92 != 160);
  v94 = 0;
  *v91 = v93;
  do
  {
    *&a2[v94] = vraddhn_high_s32(vraddhn_s32(vshll_n_s16(*&a2[v94], 0xDuLL), 0), vshll_high_n_s16(*&a2[v94], 0xDuLL), 0);
    v94 += 8;
  }

  while (v94 != 64);
  v269 = -21846;
  v268 = -21846;
  v95 = D_UTIL_dot_product12(a2, a2, 64, &v268);
  v96 = v268;
  v97 = D_UTIL_dot_product12(&v275, &v275, 80, &v269);
  v98 = v97 >> 16;
  v99 = v269;
  if (v97 >> 16 > v95 >> 16)
  {
    v99 = v269 + 1;
  }

  if (v98 > v95 >> 16)
  {
    v98 = v97 >> 17;
  }

  v100 = v99 - v96 + 2 * a3;
  v101 = (v98 << 15) / (v95 >> 16);
  if (v101 >= 0x7FFF)
  {
    v101 = 0x7FFF;
  }

  v270 = v101 << 16;
  v269 = v100 - 6;
  D_UTIL_normalised_inverse_sqrt(&v270, &v269);
  v102 = 0;
  if (v269 >= 0)
  {
    v103 = v270 >> (15 - v269);
  }

  else
  {
    v103 = v270 >> -v269 >> 15;
  }

  if (v103 >= 0x7FFF)
  {
    v103 = 0x7FFF;
  }

  v104 = vdupq_n_s32(v103);
  do
  {
    *(&v275 + v102) = vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v104, vmovl_s16(*(&v275 + v102))), 0xFuLL), vmulq_s32(v104, vmovl_high_s16(*(&v275 + v102))), 0xFuLL);
    v102 += 16;
  }

  while (v102 != 160);
  v105 = 0;
  v106 = *(a10 + 1622);
  v107 = *(a10 + 1620);
  v108 = *(a10 + 1618);
  v109 = *(a10 + 1616);
  v110 = *(a10 + 1614);
  v111 = *(a10 + 1612);
  do
  {
    v112 = v109;
    v113 = v108;
    v114 = *(&v285 + v105) + v106;
    v106 = v107;
    v107 = *(&v285 + v105);
    v115 = 58560 * v112 - 3660 * v106 - 28320 * v111 + ((-14160 * v110 + 29280 * v108 + 0x2000) >> 14) + 1830 * v114;
    v116 = 2 * v115;
    v109 = v115 >> 15;
    v108 = v115 & 0x7FFF;
    *(&v285 + v105) = (v116 + 0x8000) >> 16;
    v105 += 2;
    v111 = v112;
    v110 = v113;
  }

  while (v105 != 128);
  v117 = 0;
  *(a10 + 1612) = v112;
  *(a10 + 1614) = v113;
  *(a10 + 1616) = HIWORD(v116);
  *(a10 + 1618) = v108;
  *(a10 + 1620) = v107;
  v118 = 0uLL;
  v119 = 0uLL;
  *(a10 + 1622) = v106;
  do
  {
    v120 = *(&v285 + v117);
    v119 = vmlal_high_s16(v119, v120, v120);
    v118 = vmlal_s16(v118, *v120.i8, *v120.i8);
    v117 += 16;
  }

  while (v117 != 128);
  v121 = vaddvq_s32(vaddq_s32(v118, v119));
  v122 = (2 * v121) | 1;
  if (v121 == 0x7FFFFFFF)
  {
    v123 = 31;
  }

  else
  {
    v124 = v122 ^ ((2 * v121) >> 31);
    if (v124 > 0x3FFFFFFF)
    {
      v123 = 0;
    }

    else
    {
      v125 = 0;
      do
      {
        v126 = v124 >> 29;
        v124 *= 2;
        ++v125;
      }

      while (!v126);
      v123 = v125;
    }
  }

  v127 = 0;
  v128 = 0;
  v129 = v122 << v123;
  do
  {
    v130 = &v285 + v127;
    if ((&v285 + v127) < &v285 || v130 > &v285 + v127 + 2)
    {
      goto LABEL_346;
    }

    v128 += *(&v285 + v127) * *(v130 + 1);
    v127 += 2;
  }

  while (v127 != 126);
  v132 = ((2 * v128) | 1) << v123 >> 16;
  v133 = 0x7FFF;
  if (v132 >= 1)
  {
    v134 = (v132 << 15) / (v129 >> 16);
    if (v134 >= 0x7FFF)
    {
      v134 = 0x7FFF;
    }

    v133 = 0x7FFF - v134;
  }

  if (a7 != 8 || a9)
  {
    v138 = 0;
    v139 = ((5 * v133) >> 2) & 0x3FFFE;
    if (v139 >= 0x7FFF)
    {
      v139 = 0x7FFF;
    }

    if (*(a10 + 1658))
    {
      v140 = 0x7FFF;
    }

    else
    {
      v140 = 0;
    }

    v141 = (v139 * v140) >> 15;
    if (*(a10 + 1658))
    {
      v142 = 0;
    }

    else
    {
      v142 = 0x7FFF;
    }

    v143 = v141 + ((v142 * v133) >> 15);
    if (v143 <= 0xCCC)
    {
      v143 = 3276;
    }

    v144 = vdupq_n_s32(v143 + 1);
    do
    {
      *(&v275 + v138) = vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v144, vmovl_s16(*(&v275 + v138))), 0xFuLL), vmulq_s32(v144, vmovl_high_s16(*(&v275 + v138))), 0xFuLL);
      v138 += 16;
    }

    while (v138 != 160);
  }

  else
  {
    v135 = &D_ROM_hp_gain[a5];
    if (v135 < D_ROM_hp_gain || v135 + 1 > D_ROM_pdown_unusable || v135 > v135 + 1)
    {
      goto LABEL_346;
    }

    v136 = 0;
    v137 = vdupq_n_s16(*v135);
    do
    {
      *(&v275 + v136) = *&vshrn_high_n_s32(vshrn_n_s32(vmull_s16(*v137.i8, *(&v275 + v136)), 0xEuLL), vmull_high_s16(v137, *(&v275 + v136)), 0xEuLL) & __PAIR128__(0xFFFEFFFEFFFEFFFELL, 0xFFFEFFFEFFFEFFFELL);
      v136 += 16;
    }

    while (v136 != 160);
  }

  if (a7 > 0 || a8)
  {
    D_LPC_a_weight(a1, &v273, 0x4CCDu, 0x10u, 17);
    D_UTIL_synthesis(&v273, 16, &v275, &v275, (a10 + 1392));
    D_UTIL_bp_6k_7k(&v275, (a10 + 1110));
    if (a7 == 8)
    {
      v165 = 0;
      v166 = *(a10 + 1246);
      v301 = *(a10 + 1230);
      v302 = v166;
      *v303 = *(a10 + 1262);
      *&v303[12] = *(a10 + 1274);
      *&v303[124] = v281;
      *&v303[140] = v282;
      *&v303[156] = v283;
      *&v303[172] = v284;
      *&v303[60] = v277;
      *&v303[76] = v278;
      *&v303[92] = v279;
      *&v303[108] = v280;
      *&v303[28] = v275;
      v167 = &v301;
      *&v303[44] = v276;
      do
      {
        v168 = 0;
        v169 = 0;
        do
        {
          v169 += D_ROM_fir_7k[v168] * *(v167 + v168 * 2);
          ++v168;
        }

        while (v168 != 31);
        *(&v275 + v165++) = (v169 + 0x4000) >> 15;
        v167 = (v167 + 2);
      }

      while (v165 != 80);
      v170 = *&v303[144];
      *(a10 + 1230) = *&v303[128];
      *(a10 + 1246) = v170;
      *(a10 + 1262) = *&v303[160];
      *(a10 + 1274) = *&v303[172];
    }

    goto LABEL_343;
  }

  v145 = 0;
  *&v303[16] = 0xAAAAAAAAAAAAAAAALL;
  *&v146 = 0xAAAAAAAAAAAAAAAALL;
  *(&v146 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v302 = v146;
  *v303 = v146;
  v301 = v146;
  v304 = 0xAAAAAAAAAAAAAAAALL;
  v305 = -1431655766;
  v147 = a6 + 20;
  a6[19] = a6[15];
  v148 = &v301;
  do
  {
    v149 = &a6[v145];
    v150 = &a6[v145 + 1];
    v152 = &a6[v145] < a6 || v150 > v147 || v149 > v150;
    v153 = (v148 + 4);
    if (v152 || v148 < &v301 || v153 > &v303[24] || v148 > v153)
    {
      goto LABEL_346;
    }

    *v148 = v149[1] - *v149;
    v148 = (v148 + 4);
    ++v145;
  }

  while (v145 != 14);
  v157 = 0;
  v158 = 0;
  do
  {
    v159 = (&v301 + v157 + 8);
    if (v159 < &v301 || v159 > (&v301 + v157 + 12))
    {
      goto LABEL_346;
    }

    v158 += 2731 * *v159;
    v157 += 4;
  }

  while (v157 != 48);
  v161 = 0;
  v162 = 0;
  v163 = v158 + 0x4000;
  v304 = 0;
  v305 = 0;
  do
  {
    if (*(&v301 + v161) > v162)
    {
      v162 = *(&v301 + v161);
    }

    v161 += 4;
  }

  while (v161 != 56);
  v164 = v162;
  if (v162)
  {
    if (v162 == 0xFFFF)
    {
      v164 = 15;
    }

    else
    {
      v171 = (v162 ^ (v162 >> 15));
      if (v171 >= 0x4000)
      {
        v164 = 0;
      }

      else
      {
        v164 = 0;
        do
        {
          v171 = (2 * v171);
          ++v164;
        }

        while (v171 < 0x4000);
      }
    }
  }

  v172 = 0;
  v173 = v163 >> 15;
  do
  {
    *(&v301 + v172) <<= v164;
    v172 += 4;
  }

  while (v172 != 56);
  v174 = 0;
  v175 = 0;
  v176 = v173 << v164;
  do
  {
    v177 = &v303[v174 - 12];
    v178 = &v303[v174 - 8];
    if (&v303[v174 - 12] < &v301 || v178 > &v303[24] || v177 > v178)
    {
      goto LABEL_346;
    }

    v181 = (*&v303[v174 - 4] - v176) * (*v177 - v176);
    v175 += 2 * (((((v181 >> 15) * (v181 & 0x7FFF)) >> 14) & 0x7FFFFFFE) + (v181 >> 15) * (v181 >> 15));
    LODWORD(v304) = v175;
    v174 += 4;
  }

  while (v174 != 28);
  v182 = 0;
  v183 = 0;
  do
  {
    v184 = (&v301 + v182 + 16);
    v185 = &v303[v182 - 12];
    if (v184 < &v301 || v185 > &v303[24] || v184 > v185)
    {
      goto LABEL_346;
    }

    v188 = (*&v303[v182 - 4] - v176) * (*v184 - v176);
    v183 += 2 * (((((v188 >> 15) * (v188 & 0x7FFF)) >> 14) & 0x7FFFFFFE) + (v188 >> 15) * (v188 >> 15));
    HIDWORD(v304) = v183;
    v182 += 4;
  }

  while (v182 != 28);
  v189 = 0;
  v190 = -28;
  do
  {
    v191 = &v303[v190 + 12];
    if (&v303[v190 + 8] < &v301 || v191 > &v303[24] || &v303[v190 + 8] > v191)
    {
      goto LABEL_346;
    }

    v194 = (*&v303[v190 + 24] - v176) * (*&v303[v190 + 8] - v176);
    v189 += 2 * (((((v194 >> 15) * (v194 & 0x7FFF)) >> 14) & 0x7FFFFFFE) + (v194 >> 15) * (v194 >> 15));
    v305 = v189;
    v190 += 4;
  }

  while (v190);
  v195 = (&v304 | (4 * (v175 <= v183)));
  if (v195 < &v304 || v195 + 4 > v306 || v195 > (v195 + 4))
  {
LABEL_346:
    __break(0x5519u);
  }

  v196 = 0;
  v197 = *v195;
  v25 = v175 <= v183;
  v198 = 1;
  if (v25)
  {
    v198 = 2;
  }

  if (v189 > v197)
  {
    v198 = 3;
  }

  v199 = -1 * v198;
  do
  {
    v200 = &a6[v199 + 14];
    v201 = &a6[v199 + 15];
    v203 = v200 < a6 || v201 > v147 || v200 > v201;
    v204 = &a6[v199 + 13];
    v207 = v203 || v204 < a6 || v200 > v147 || v204 > v200;
    v208 = &a6[v196 + 14];
    v209 = &a6[v196 + 15];
    if (v207 || v208 < a6 || v209 > v147 || v208 > v209)
    {
      goto LABEL_346;
    }

    a6[v196 + 15] = *v208 - *v204 + *v200;
    ++v196;
    ++v199;
  }

  while (v196 != 4);
  v213 = (5461 * (a6[2] - (a6[4] + a6[3]))) >> 15;
  if (v213 >= -934)
  {
    v213 = -934;
  }

  v214 = a6[14];
  v215 = v213 - v214 + 20390;
  v216 = a6[18] - v214;
  v217 = v216;
  if (v216)
  {
    if (v216 == 0xFFFF)
    {
      v217 = 15;
    }

    else
    {
      v218 = (v216 ^ (v216 >> 15));
      if (v218 >= 0x4000)
      {
        v217 = 0;
      }

      else
      {
        v219 = 0;
        do
        {
          v218 = (2 * v218);
          ++v219;
        }

        while (v218 < 0x4000);
        v217 = v219;
      }
    }
  }

  if (!v215)
  {
LABEL_278:
    v220 = -1;
    goto LABEL_279;
  }

  if (v215 != 0xFFFF)
  {
    v221 = (v215 ^ (v215 >> 15));
    if (v221 < 0x4000)
    {
      v222 = 0;
      do
      {
        v221 = (2 * v221);
        ++v222;
      }

      while (v221 < 0x4000);
      v220 = v222 - 1;
      goto LABEL_279;
    }

    goto LABEL_278;
  }

  v220 = 14;
LABEL_279:
  v223 = (v215 << v220 << 15) / (v216 << v217);
  v224 = v217 - v220;
  if (v217 - v220 >= 0)
  {
    v225 = 0;
    v226 = a6 + 15;
    while (1)
    {
      v227 = v226 - 1 < a6 || v226 - 1 > v226;
      v228 = &v301 + v225;
      v229 = &v301 + v225 + 4;
      v230 = !v227 && v228 >= &v301;
      v231 = !v230 || v229 > &v303[24];
      if (v231 || v228 > v229)
      {
        goto LABEL_346;
      }

      *(&v301 + v225) = ((*v226 - *(v226 - 1)) * v223) >> 15 << v224;
      v225 += 4;
      ++v226;
      if (v225 == 16)
      {
        goto LABEL_311;
      }
    }
  }

  v233 = 0;
  v234 = 15 - v224;
  v235 = a6 + 15;
  do
  {
    v236 = v235 - 1 < a6 || v235 - 1 > v235;
    v237 = &v301 + v233;
    v238 = &v301 + v233 + 4;
    if (v236 || v237 < &v301 || v238 > &v303[24] || v237 > v238)
    {
      goto LABEL_346;
    }

    *(&v301 + v233) = ((*v235 - *(v235 - 1)) * v223) >> v234;
    v233 += 4;
    ++v235;
  }

  while (v233 != 16);
LABEL_311:
  for (i = 0; i != 12; i += 4)
  {
    v243 = &v301 + i;
    v244 = &v301 + i + 4;
    v245 = &v301 + i + 8;
    v247 = v244 < &v301 || v245 > &v303[24] || v244 > v245;
    if (v247 || v243 < &v301)
    {
      goto LABEL_346;
    }

    v248 = *v244;
    if (*v243 + *v244 <= 1279)
    {
      if (v248 <= *v243)
      {
        v248 = *v243;
        v243 = &v301 + i + 4;
      }

      *v243 = 1280 - v248;
    }
  }

  v249 = 0;
  v250 = &v301;
  do
  {
    v251 = &a6[v249 + 15];
    v252 = &a6[v249 + 14];
    v253 = v252 < a6 || v252 > v251;
    v254 = v250 + 2;
    if (v253 || v250 < &v301 || v254 > &v303[24] || v250 > v254)
    {
      goto LABEL_346;
    }

    v258 = *v250;
    v250 += 2;
    *v251 = *v252 + v258;
    ++v249;
  }

  while (v249 != 4);
  for (j = 0; j != 19; ++j)
  {
    a6[j] = (13107 * a6[j]) >> 14;
  }

  D_LPC_isf_isp_conversion(a6, a6, 0x14u);
  D_LPC_isp_a_conversion(a6, &v271, 0x14u, 21);
  D_LPC_a_weight(&v271, &v273, 0x7333u, 0x14u, 21);
  D_UTIL_synthesis(&v273, 20, &v275, &v275, (a10 + 1384));
  D_UTIL_bp_6k_7k(&v275, (a10 + 1110));
LABEL_343:
  for (k = 0; k != 160; k += 16)
  {
    result = vqaddq_s16(*(&v275 + k), *(a4 + k));
    *(a4 + k) = result;
  }

  return result;
}

int *D_ACELP_decode_4t(int *result, int a2, _OWORD *a3)
{
  v85 = *MEMORY[0x1E69E9840];
  v82 = 0;
  v83 = 0;
  v84 = 0;
  *a3 = 0u;
  a3[1] = 0u;
  a3[2] = 0u;
  a3[3] = 0u;
  a3[4] = 0u;
  a3[5] = 0u;
  a3[6] = 0u;
  a3[7] = 0u;
  if (a3 + 8 < a3)
  {
    __break(0x5519u);
  }

  v4 = result;
  if (a2 <= 51)
  {
    switch(a2)
    {
      case 20:
        for (i = 0; i != 4; ++i)
        {
          LODWORD(v82) = *(v4 + i) & 0x1F;
          result = D_ACELP_add_pulse(&v82, 1u, i, a3);
        }

        break;
      case 36:
        for (j = 0; j != 4; ++j)
        {
          v75 = *(v4 + j);
          v76 = v75 >> 4;
          v77 = v75 & 0xF;
          v78 = v76 | 0x10;
          v79 = v77 | 0x10;
          v80 = (v75 & 0x100) == 0;
          if ((v75 & 0x100) != 0)
          {
            v81 = v75 & 0xF | 0x10;
          }

          else
          {
            v81 = v75 & 0xF;
          }

          if (v80)
          {
            v78 = v76;
          }

          else
          {
            v79 = v77;
          }

          if (v77 < v76)
          {
            v81 = v79;
          }

          v82 = __PAIR64__(v81, v78);
          result = D_ACELP_add_pulse(&v82, 2u, j, a3);
        }

        break;
      case 44:
        v6 = 0;
        v7 = 1;
        do
        {
          v8 = v7;
          v9 = *(v4 + v6);
          v10 = (v9 >> 4) & 8 | (v9 >> 3) & 7;
          v11 = (v9 >> 4) & 8 | v9 & 7;
          if ((v9 & 0x40) != 0)
          {
            v12 = v11 | 0x10;
          }

          else
          {
            v12 = (v9 >> 4) & 8 | v9 & 7;
          }

          if ((v9 & 0x40) != 0)
          {
            v10 |= 0x10u;
          }

          else
          {
            v11 |= 0x10u;
          }

          if ((v9 & 7) >= ((v9 >> 3) & 7))
          {
            v11 = v12;
          }

          v82 = __PAIR64__(v11, v10);
          LODWORD(v83) = (v9 >> 8) & 0x1F;
          D_ACELP_add_pulse(&v82, 3u, v6, a3);
          v7 = 0;
          v6 = 1;
        }

        while ((v8 & 1) != 0);
        v13 = 0;
        v14 = 2;
        do
        {
          v15 = v13;
          v16 = *(v4 + v14);
          v17 = v16 >> 4;
          v18 = v16 & 0xF;
          v19 = v17 | 0x10;
          v20 = v18 | 0x10;
          v21 = (v16 & 0x100) == 0;
          if ((v16 & 0x100) != 0)
          {
            v22 = v16 & 0xF | 0x10;
          }

          else
          {
            v22 = v16 & 0xF;
          }

          if (v21)
          {
            v19 = v17;
          }

          else
          {
            v20 = v18;
          }

          if (v18 < v17)
          {
            v22 = v20;
          }

          v82 = __PAIR64__(v22, v19);
          result = D_ACELP_add_pulse(&v82, 2u, v14, a3);
          v13 = 1;
          v14 = 3;
        }

        while ((v15 & 1) == 0);
        break;
    }
  }

  else if (a2 > 71)
  {
    if (a2 == 72)
    {
      v51 = 0;
      v52 = 1;
      do
      {
        v53 = v52;
        v54 = v4 + v51;
        v55 = *v54;
        v56 = v54[4];
        v57 = v56 + (v55 << 10);
        v58 = (v57 >> 14) & 0x10 | (v57 >> 15) & 7 | HIWORD(v57) & 8;
        v59 = ((v57 >> 9) >> 2) & 3;
        v60 = HIWORD(v57) & 8 | (v57 >> 12) & 4 | v59;
        v61 = (v57 >> 9) & 3;
        v62 = HIWORD(v57) & 8 | (v57 >> 12) & 4 | v61;
        v63 = v60 | 0x10;
        v64 = (v57 & 0x2000) == 0;
        if ((v57 & 0x2000) != 0)
        {
          v65 = v62 | 0x10;
        }

        else
        {
          v65 = HIWORD(v57) & 8 | (v57 >> 12) & 4 | (v57 >> 9) & 3;
        }

        if (v64)
        {
          v63 = v60;
          v62 |= 0x10u;
        }

        if (v61 < v59)
        {
          v65 = v62;
        }

        v82 = __PAIR64__(v65, v63);
        v66 = v56 >> 4;
        v67 = v56 & 0xF;
        v68 = v66 | 0x10;
        v69 = v67 | 0x10;
        v70 = (v56 & 0x100) == 0;
        if ((v56 & 0x100) != 0)
        {
          v71 = v56 & 0xF | 0x10;
        }

        else
        {
          v71 = v56 & 0xF;
        }

        if (v70)
        {
          v68 = v66;
        }

        else
        {
          v69 = v67;
        }

        if (v67 < v66)
        {
          v71 = v69;
        }

        v83 = __PAIR64__(v68, v58);
        LODWORD(v84) = v71;
        D_ACELP_add_pulse(&v82, 5u, v51, a3);
        v52 = 0;
        v51 = 1;
      }

      while ((v53 & 1) != 0);
      v72 = (v4 + 3);
      for (k = 2; k != 4; ++k)
      {
        D_ACELP_decode_4p_4N((*v72 + (*(v72 - 4) << 14)), 4, 0, &v82);
        result = D_ACELP_add_pulse(&v82, 4u, k, a3);
        ++v72;
      }
    }

    else if (a2 == 88)
    {
      for (m = 0; m != 4; ++m)
      {
        v24 = v4 + m;
        v25 = v24[4];
        v26 = v25 + (*v24 << 11);
        v27 = HIWORD(v26) & 8;
        v28 = v27 ^ 8;
        v29 = (v26 >> 20) & 3;
        if (v29 > 1)
        {
          if (v29 == 2)
          {
            D_ACELP_decode_4p_4N((v26 >> 7), 3, HIWORD(v26) & 8, &v82);
            v32 = (v25 >> 3) & 7;
            v33 = v28 | v32;
            v34 = v28 | v25 & 7;
            if ((v25 & 0x40) != 0)
            {
              v35 = v34 | 0x10;
            }

            else
            {
              v35 = v28 | v25 & 7;
            }

            if ((v25 & 0x40) != 0)
            {
              v33 = v28 | v32 | 0x10;
            }

            else
            {
              v34 |= 0x10u;
            }

            if ((v25 & 7) < v32)
            {
              v31 = v34;
            }

            else
            {
              v31 = v35;
            }

            LODWORD(v84) = v33;
          }

          else
          {
            v37 = (v26 >> 13) & 4 | (v26 >> 10) & 3;
            v38 = (v26 >> 13) & 4 | ((v26 >> 10) >> 2) & 3 | 0x10;
            if ((v26 & 0x4000) != 0)
            {
              v39 = v37 | 0x10;
            }

            else
            {
              v39 = (v26 >> 13) & 4 | (v26 >> 10) & 3;
            }

            if ((v26 & 0x4000) == 0)
            {
              v38 = (v26 >> 13) & 4 | ((v26 >> 10) >> 2) & 3;
              v37 |= 0x10u;
            }

            if (((v26 >> 10) & 3u) >= (((v26 >> 10) >> 2) & 3))
            {
              v37 = v39;
            }

            v82 = __PAIR64__(v37, v38);
            v40 = (v26 >> 15) & 0x10 | HIWORD(v26) & 7;
            v41 = (v25 >> 3) & 4 | 8 | (v25 >> 2) & 3;
            v42 = (v25 >> 3) & 4 | 8 | v25 & 3;
            if ((v25 & 0x10) != 0)
            {
              v43 = v42 | 0x10;
            }

            else
            {
              v43 = (v25 >> 3) & 4 | 8 | v25 & 3;
            }

            if ((v25 & 0x10) != 0)
            {
              v41 |= 0x10u;
            }

            else
            {
              v42 |= 0x10u;
            }

            if ((v25 & 3) >= ((v25 >> 2) & 3))
            {
              v42 = v43;
            }

            v83 = __PAIR64__(v41, v40);
            LODWORD(v84) = v42;
            if ((v25 & 0x200) != 0)
            {
              v44 = 24;
            }

            else
            {
              v44 = 8;
            }

            v31 = v44 & 0xFFFFFFF8 | (v25 >> 6) & 7;
          }
        }

        else if (v29)
        {
          v36 = v26 >> 3;
          D_ACELP_decode_5p_5N((v26 >> 4), HIWORD(v26) & 8, &v82);
          v31 = v25 & 7 | (16 * (v36 & 1)) | v28;
        }

        else
        {
          v30 = v26 >> 3;
          D_ACELP_decode_5p_5N((v26 >> 4), HIWORD(v26) & 8, &v82);
          v31 = v25 & 7 | (16 * (v30 & 1)) | v27;
        }

        HIDWORD(v84) = v31;
        result = D_ACELP_add_pulse(&v82, 6u, m, a3);
      }
    }
  }

  else if (a2 == 52)
  {
    for (n = 0; n != 4; ++n)
    {
      v47 = *(v4 + n);
      v48 = (v47 >> 4) & 8 | (v47 >> 3) & 7;
      v49 = (v47 >> 4) & 8 | v47 & 7;
      if ((v47 & 0x40) != 0)
      {
        v50 = v49 | 0x10;
      }

      else
      {
        v50 = (v47 >> 4) & 8 | v47 & 7;
      }

      if ((v47 & 0x40) != 0)
      {
        v48 |= 0x10u;
      }

      else
      {
        v49 |= 0x10u;
      }

      if ((v47 & 7) >= ((v47 >> 3) & 7))
      {
        v49 = v50;
      }

      v82 = __PAIR64__(v49, v48);
      LODWORD(v83) = (v47 >> 8) & 0x1F;
      result = D_ACELP_add_pulse(&v82, 3u, n, a3);
    }
  }

  else if (a2 == 64)
  {
    for (ii = 0; ii != 4; ++ii)
    {
      D_ACELP_decode_4p_4N((*(v4 + ii + 4) + (*(v4 + ii) << 14)), 4, 0, &v82);
      result = D_ACELP_add_pulse(&v82, 4u, ii, a3);
    }
  }

  return result;
}

uint64_t D_UTIL_log2(uint64_t result, _WORD *a2, _WORD *a3)
{
  if (!result)
  {
    goto LABEL_8;
  }

  if (result == -1)
  {
    v3 = 31;
    goto LABEL_9;
  }

  v4 = result ^ (result >> 31);
  if (v4 <= 0x3FFFFFFF)
  {
    v3 = 0;
    do
    {
      v5 = v4 >> 29;
      v4 *= 2;
      ++v3;
    }

    while (!v5);
  }

  else
  {
LABEL_8:
    v3 = 0;
  }

LABEL_9:
  v6 = result << v3;
  if ((result << v3) <= 0)
  {
    LOWORD(v13) = 0;
    *a2 = 0;
    goto LABEL_21;
  }

  *a2 = 30 - v3;
  v7 = &table_log2[v6 >> 25];
  v8 = v7 - 32;
  v9 = v7 - 31;
  if (v7 - 32 >= table_log2 && v9 <= &kHCB_ScaleFactors_Node_0 && v8 <= v9)
  {
    v12 = v7 - 30;
    if (v12 <= &kHCB_ScaleFactors_Node_0 && v9 <= v12)
    {
      v13 = *v8 + (((*v9 - *v8) * ((v6 >> 10) & 0x7FFF)) >> 15);
LABEL_21:
      *a3 = v13;
      return result;
    }
  }

  __break(0x5519u);
  return result;
}

int *D_UTIL_normalised_inverse_sqrt(int *result, __int16 *a2)
{
  if (*result <= 0)
  {
    *a2 = 0;
    v13 = 0x7FFFFFFF;
    goto LABEL_15;
  }

  v2 = *a2;
  v3 = *result >> (v2 & 1);
  *a2 = -((v2 - 1) >> 1);
  v4 = v3 >> 25;
  v5 = v3 >> 10;
  *result = v5;
  v6 = &D_ROM_isqrt[2 * v4];
  v7 = v6 - 30;
  if (v6 - 32 >= D_ROM_isqrt && v7 <= &D_ROM_isf && v6 - 32 <= v7)
  {
    v10 = *(v6 - 16);
    *result = v10 << 16;
    v11 = v6 - 28;
    if (v11 <= &D_ROM_isf && v7 <= v11)
    {
      v13 = (v10 << 16) + 2 * (v5 & 0x7FFF) * (*v7 - v10);
LABEL_15:
      *result = v13;
      return result;
    }
  }

  __break(0x5519u);
  return result;
}

uint64_t D_UTIL_dot_product12(__int16 *a1, __int16 *a2, int a3, _WORD *a4)
{
  v4 = 0;
  v5 = a3;
  do
  {
    v7 = *a1++;
    v6 = v7;
    v8 = *a2++;
    v4 += v8 * v6;
    --v5;
  }

  while (v5);
  if (v4 > 0)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = 0x80000000;
  }

  if ((v4 + 0x40000000) <= 0x7FFFFFFE)
  {
    if (v4 == -1)
    {
      v11 = 31;
      v9 = -1;
      goto LABEL_15;
    }

    v9 = (2 * v4) | 1;
  }

  v10 = v9 ^ (v9 >> 31);
  if (v10 > 0x3FFFFFFF)
  {
    v11 = 0;
  }

  else
  {
    v11 = 0;
    do
    {
      v12 = v10 >> 29;
      v10 *= 2;
      ++v11;
    }

    while (!v12);
  }

LABEL_15:
  result = (v9 << v11);
  *a4 = 30 - v11;
  return result;
}

uint64_t D_GAIN_median(uint64_t result)
{
  v1 = *result;
  v2 = *(result + 8);
  v3 = *result - 4;
  v4 = *result - 2;
  v6 = v4 <= v2 && v3 <= v4 && v3 >= *(result + 16);
  if (!v6 || (v1 <= v2 ? (v7 = v4 > v1) : (v7 = 1), v7 || ((v8 = v1 + 1, (v1 + 1) <= v2) ? (v9 = v1 >= v8) : (v9 = 1), v9 || ((v11 = v1 + 2, v10 = *v1, (v1 + 2) <= v2) ? (v12 = v8 > v11) : (v12 = 1), (v13 = v1 + 3, !v12) ? (v14 = v13 > v2) : (v14 = 1), !v14 ? (v15 = v11 > v13) : (v15 = 1), v15))))
  {
    __break(0x5519u);
  }

  else
  {
    v16 = *v8;
    v17 = *v11;
    v18 = *(v1 - 2);
    v19 = *(v1 - 1);
    if (v19 <= v18)
    {
      v20 = v18;
    }

    else
    {
      v20 = v19;
    }

    if (v19 >= v18)
    {
      v19 = v18;
    }

    if (v10 <= v19)
    {
      v21 = v19;
    }

    else
    {
      v21 = v10;
    }

    if (v10 < v19)
    {
      v19 = v10;
    }

    if (v16 <= v19)
    {
      v22 = v19;
    }

    else
    {
      v22 = v16;
    }

    if (v16 < v19)
    {
      v19 = v16;
    }

    if (v17 > v19)
    {
      v19 = v17;
    }

    if (v21 <= v20)
    {
      v23 = v20;
    }

    else
    {
      v23 = v21;
    }

    if (v21 < v20)
    {
      v20 = v21;
    }

    if (v22 <= v20)
    {
      v24 = v20;
    }

    else
    {
      v24 = v22;
    }

    if (v22 < v20)
    {
      v20 = v22;
    }

    if (v19 <= v20)
    {
      v19 = v20;
    }

    if (v24 >= v23)
    {
      v25 = v23;
    }

    else
    {
      v25 = v24;
    }

    if (v19 >= v25)
    {
      return v25;
    }

    else
    {
      return v19;
    }
  }

  return result;
}

uint64_t D_UTIL_pow2(uint64_t result, int a2)
{
  v2 = &table_pow2[a2 >> 10];
  v3 = v2 + 1;
  v5 = v2 < table_pow2 || v3 > "AuxiliaryContent" || v2 > v3;
  v6 = v2 + 2;
  if (v5 || v6 > "AuxiliaryContent" || v3 > v6)
  {
    __break(0x5519u);
  }

  else
  {
    if (result < -1)
    {
      return 0;
    }

    v10 = (v2[1] - *v2) * (a2 << 6) + (*v2 << 16);
    v9 = (v10 >> (30 - result));
    if (result <= 29)
    {
      return ((v10 >> (29 - result)) & 1) + v9;
    }

    return v9;
  }

  return result;
}

int *D_ACELP_add_pulse(int *result, unsigned int a2, int a3, unint64_t a4)
{
  v4 = a2;
  while (1)
  {
    v6 = *result++;
    v5 = v6;
    v7 = (a4 + 2 * (4 * (v6 & 0xF) + a3));
    v8 = (v7 + 1);
    v9 = v7 < a4 || v8 > a4 + 128;
    if (v9 || v7 > v8)
    {
      break;
    }

    if ((v5 & 0x10) != 0)
    {
      v11 = -512;
    }

    else
    {
      v11 = 512;
    }

    *v7 += v11;
    if (!--v4)
    {
      return result;
    }
  }

  __break(0x5519u);
  return result;
}

uint64_t D_ACELP_decode_4p_4N(uint64_t a1, char a2, int a3, int *a4)
{
  v6 = a2 - 1;
  v7 = 1 << (a2 - 1);
  v8 = v7 + a3;
  v9 = (a1 >> (4 * a2 - 2)) & 3;
  if (v9 > 1)
  {
    if (v9 == 2)
    {
      D_ACELP_decode_2p_2N1((a1 >> ((2 * (a2 - 1)) | 1)), a2 - 1, a3, a4);

      return D_ACELP_decode_2p_2N1(a1, v6, v8, a4 + 2);
    }

    else
    {
      result = D_ACELP_decode_3p_3N1(a1 >> a2, a2 - 1, a3, a4);
      v17 = (a1 & ~(-1 << v6)) + v8;
      if ((v7 & a1) != 0)
      {
        v17 += 16;
      }

      a4[3] = v17;
    }
  }

  else if (v9)
  {
    v12 = a1 >> (3 * v6 + 1);
    if ((v12 & v7) != 0)
    {
      v13 = (v12 & ~(-1 << v6)) + a3 + 16;
    }

    else
    {
      v13 = (v12 & ~(-1 << v6)) + a3;
    }

    *a4 = v13;
    v14 = a2 - 1;
    v15 = v7 + a3;
    v16 = a4 + 1;

    return D_ACELP_decode_3p_3N1(a1, v14, v15, v16);
  }

  else
  {
    v10 = a2 - 1;
    if (((a1 >> (4 * v6)) & 2) != 0)
    {
      a3 += v7;
    }

    return D_ACELP_decode_4p_4N1(a1, v10, a3, a4);
  }

  return result;
}

uint64_t D_ACELP_decode_5p_5N(uint64_t result, int a2, _DWORD *a3)
{
  v3 = ((result >> 12) & 4) + a2;
  v4 = ((result >> 9) & 2) + v3;
  v5 = ((result >> 7) >> 1) & 1;
  v6 = v5 + v4;
  v7 = (result >> 7) & 1;
  v8 = v7 + v4;
  if ((result & 0x200) != 0)
  {
    v9 = v8 + 16;
  }

  else
  {
    v9 = v8;
  }

  if ((result & 0x200) != 0)
  {
    v6 += 16;
  }

  else
  {
    v8 += 16;
  }

  if (v7 < v5)
  {
    v10 = v8;
  }

  else
  {
    v10 = v9;
  }

  *a3 = v6;
  a3[1] = v10;
  v11 = ((result >> 11) & 3) + ((result >> 9) & 0x10) + v3;
  v12 = (result >> 3) & 7;
  v13 = v12 + a2;
  v14 = (result & 7) + a2;
  if ((result & 0x40) != 0)
  {
    v15 = v14 + 16;
  }

  else
  {
    v15 = (result & 7) + a2;
  }

  if ((result & 0x40) != 0)
  {
    v13 = v12 + a2 + 16;
  }

  else
  {
    v14 += 16;
  }

  if ((result & 7u) < v12)
  {
    v16 = v14;
  }

  else
  {
    v16 = v15;
  }

  a3[2] = v11;
  a3[3] = v13;
  a3[4] = v16;
  return result;
}

uint64_t D_ACELP_decode_3p_3N1(int a1, char a2, int a3, int *a4)
{
  v8 = 2 * a2;
  result = D_ACELP_decode_2p_2N1(a1 & ~(-1 << (2 * a2 - 1)), a2 - 1, (((a1 >> (2 * a2 - 1) << 31) >> 31) & (1 << (a2 - 1))) + a3, a4);
  v10 = (a1 >> v8) & ((2 << a2) - 1);
  if ((v10 >> a2))
  {
    v11 = (v10 & ~(-1 << a2)) + a3 + 16;
  }

  else
  {
    v11 = (v10 & ~(-1 << a2)) + a3;
  }

  a4[2] = v11;
  return result;
}

uint64_t D_ACELP_decode_2p_2N1(uint64_t result, char a2, int a3, int *a4)
{
  v4 = (result >> a2) & ~(-1 << a2);
  v5 = v4 + a3;
  v6 = result & ~(-1 << a2);
  v7 = v6 + a3;
  v8 = (1 << (2 * a2)) & result;
  v9 = v8 == 0;
  if (v8)
  {
    v10 = v6 + a3 + 16;
  }

  else
  {
    v10 = v6 + a3;
  }

  if (v9)
  {
    v7 = v6 + a3 + 16;
  }

  else
  {
    v5 = v4 + a3 + 16;
  }

  if (v6 < v4)
  {
    v11 = v7;
  }

  else
  {
    v11 = v10;
  }

  *a4 = v5;
  a4[1] = v11;
  return result;
}

uint64_t D_ACELP_decode_4p_4N1(int a1, char a2, int a3, int *a4)
{
  v8 = 2 * a2;
  D_ACELP_decode_2p_2N1(a1 & ~(-1 << (2 * a2 - 1)), a2 - 1, (((a1 >> (2 * a2 - 1) << 31) >> 31) & (1 << (a2 - 1))) + a3, a4);

  return D_ACELP_decode_2p_2N1(((2 << v8) - 1) & (a1 >> v8), a2, a3, a4 + 2);
}

unint64_t D_GAIN_sort_lag(unint64_t result)
{
  v1 = 0;
  v2 = result + 10;
  while (1)
  {
    v3 = *(result + 2 * v1);
    if (v1)
    {
      break;
    }

    v12 = 0;
LABEL_19:
    v13 = (result + 2 * v12);
    v14 = v13 + 1;
    if (v13 < result || v14 > v2 || v13 >= v14)
    {
      goto LABEL_28;
    }

    *v13 = v3;
    if (++v1 == 5)
    {
      return result;
    }
  }

  v4 = v1;
  while (1)
  {
    v5 = v4 - 1;
    v6 = (result + 2 * (v4 - 1));
    v7 = v6 + 1;
    v8 = v6 < result || v7 > v2;
    if (v8 || v6 >= v7)
    {
      break;
    }

    v10 = *v6;
    if (v10 <= v3)
    {
      goto LABEL_17;
    }

    v11 = (result + 2 * v4);
    if (v11 < result || (v11 + 1) > v2 || v11 > v11 + 1)
    {
      break;
    }

    *v11 = v10;
    v4 = v5;
    if (v5 + 1 <= 1)
    {
      v4 = 0;
LABEL_17:
      v12 = v4;
      goto LABEL_19;
    }
  }

LABEL_28:
  __break(0x5519u);
  return result;
}

__int16 *D_LPC_a_weight(__int16 *result, __int16 *a2, unsigned int a3, unsigned __int16 a4, int a5)
{
  if (result + 1 >= result)
  {
    v5 = &result[a5];
    if ((result + 1) <= v5)
    {
      v6 = 0;
      v7 = &a2[a5];
      *a2 = *result;
      v8 = a4 - 1;
      v9 = a3;
      while (1)
      {
        v10 = &result[v6 + 1];
        v11 = &result[v6 + 2];
        v12 = v10 < result || v11 > v5;
        v13 = v12 || v10 > v11;
        v14 = &a2[v6 + 1];
        v15 = &a2[v6 + 2];
        v16 = !v13 && v14 >= a2;
        v17 = !v16 || v15 > v7;
        if (v17 || v14 > v15)
        {
          break;
        }

        *v14 = (v9 * *v10 + 0x4000) >> 15;
        v9 = (v9 * a3 + 0x4000) >> 15;
        ++v6;
        if (!--v8)
        {
          v19 = &result[a4];
          if (v19 >= result && (v19 + 1) <= v5 && v19 <= v19 + 1)
          {
            v20 = &a2[a4];
            if (v20 >= a2 && (v20 + 1) <= v7 && v20 <= v20 + 1)
            {
              *v20 = (v9 * *v19 + 0x4000) >> 15;
              return result;
            }
          }

          break;
        }
      }
    }
  }

  __break(0x5519u);
  return result;
}

void *D_UTIL_synthesis(__int16 *a1, int a2, uint64_t a3, uint64_t a4, char *a5)
{
  v18 = *MEMORY[0x1E69E9840];
  v17 = 0xAAAAAAAAAAAAAAAALL;
  *&v10 = 0xAAAAAAAAAAAAAAAALL;
  *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v16[0] = v10;
  v16[1] = v10;
  v15[8] = v10;
  v15[9] = v10;
  v15[6] = v10;
  v15[7] = v10;
  v15[4] = v10;
  v15[5] = v10;
  v15[2] = v10;
  v15[3] = v10;
  v11 = 2 * a2;
  v15[0] = v10;
  v15[1] = v10;
  v12 = __memcpy_chk();
  if (v12 > v12 + 2 * a2 || a1 && (a1 + 1 < a1 || a1 + 1 > &a1[a2]) || (v13 = v15 + 2 * a2) != 0 && (v13 < v15 || v13 + 2 > &v18 || v13 > v13 + 2) || (AMR_D_UTIL_synthesis_loop(a1, a3, v13, a4, 80, a2), a2 > 0x14) || (result = memcpy(a5, v16, v11), &a5[v11] < a5))
  {
    __break(0x5519u);
  }

  return result;
}

uint64_t D_UTIL_bp_6k_7k(uint64_t a1, _WORD *a2)
{
  v2 = a2;
  v3 = 0;
  v20 = *MEMORY[0x1E69E9840];
  v19 = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v18[5] = v4;
  v18[6] = v4;
  v18[3] = v4;
  v18[4] = v4;
  v18[1] = v4;
  v18[2] = v4;
  v17[12] = v4;
  v18[0] = v4;
  v17[10] = v4;
  v17[11] = v4;
  v17[8] = v4;
  v17[9] = v4;
  v17[6] = v4;
  v17[7] = v4;
  v17[4] = v4;
  v17[5] = v4;
  v17[2] = v4;
  v17[3] = v4;
  v17[0] = v4;
  v17[1] = v4;
  v16[5] = v4;
  v16[6] = v4;
  v16[3] = v4;
  v16[4] = v4;
  v16[1] = v4;
  v16[2] = v4;
  v16[0] = v4;
  do
  {
    *(v16 + v3) = a2[v3];
    ++v3;
  }

  while (v3 != 30);
  v5 = 0;
  v6 = v17 + 2;
  do
  {
    v7 = v6 + 1;
    if (v6 < v16 || v7 > &v20 || v6 > v7)
    {
LABEL_22:
      __break(0x5519u);
    }

    *v6++ = *(a1 + v5) >> 2;
    v5 += 2;
  }

  while (v5 != 160);
  result = AMR_D_UTIL_bp_6k_7k_loop(a1, v16, D_ROM_fir_6k_7k, 80, 31);
  for (i = 0; i != 120; i += 4)
  {
    v12 = v18 + i;
    v13 = v18 + i + 4;
    if ((v18 + i) < v16 || v13 > &v20 || v12 > v13)
    {
      goto LABEL_22;
    }

    *v2++ = *v12;
  }

  return result;
}

__int16 *D_LPC_isp_pol_get(__int16 *result, unint64_t *a2, int a3, int a4, int a5)
{
  v6 = *a2;
  v5 = a2[1];
  v7 = a2[2];
  v8 = (*a2 + 4);
  if (v8 <= v5 && v6 <= v8 && v6 >= v7)
  {
    v11 = a5 ? 0x200000 : 0x800000;
    *v6 = v11;
    if (result + 1 >= result)
    {
      v12 = &result[a4];
      if ((result + 1) <= v12)
      {
        v13 = v6 + 2;
        if (v13 <= v5 && v8 <= v13)
        {
          v14 = a5 ? 7 : 9;
          *v8 = -(*result << v14);
          v15 = (a3 + 1);
          v16 = 2;
          v17 = 1;
          v18 = result;
LABEL_20:
          if ((v13 - 1) <= v5 && v13 - 2 <= v13 - 1 && (v13 - 2) >= v7 && (v13 + 1) <= v5 && v13 <= v13 + 1 && v13 >= v7)
          {
            v19 = v18 + 2;
            *v13 = *(v13 - 2);
            v20 = (v18 + 3);
            v23 = v20 <= v12 && v19 <= v20 && v19 >= result;
            v24 = v17;
            while (v13 <= v5)
            {
              v25 = v13 - 1;
              if (v13 < 4 || v25 < v7 || !v23)
              {
                break;
              }

              v26 = *v25;
              v27 = *v19;
              v28 = *v13 - 4 * ((v26 >> 16) * v27 + (((v26 >> 1) * v27) >> 15));
              *v13 = v28;
              if (v13 - 2 > v25 || (v13 - 2) < v7)
              {
                break;
              }

              *v13 = *(v13 - 2) + v28;
              --v13;
              if (!--v24)
              {
                *v25 = v26 - (v27 << v14);
                v13 = &v25[v16++];
                ++v17;
                v18 = v19;
                if (v16 != v15)
                {
                  goto LABEL_20;
                }

                return result;
              }
            }
          }
        }
      }
    }
  }

  __break(0x5519u);
  return result;
}

void Decoder_amr_reset(uint64_t a1, int a2)
{
  v2 = *(a1 + 992);
  *(v2 + 4) = 0;
  v2 += 4;
  *(v2 + 24) = 0;
  *(v2 + 8) = 0;
  *(v2 + 16) = 0;
  if (v2 >= v2 + 28)
  {
    goto LABEL_28;
  }

  v5 = *(a1 + 992);
  *(v5 + 32) = 0;
  *v5 = 0;
  *(a1 + 776) = a1 + 616;
  *(a1 + 784) = a1 + 776;
  *(a1 + 792) = a1;
  bzero(a1, 0x268uLL);
  if (a2 == 8)
  {
    *(a1 + 880) = 0x2800000000;
    *(a1 + 972) = 0;
    *(a1 + 888) = 40;
    *(a1 + 896) = 0u;
    *(a1 + 912) = 0u;
    *(a1 + 928) = 0;
  }

  else
  {
    *(a1 + 872) = 0;
    *(a1 + 840) = 0u;
    *(a1 + 856) = 0u;
    *(a1 + 880) = 0x2800000000;
    *(a1 + 800) = xmmword_19B0B2F40;
    *(a1 + 816) = xmmword_19B0B2F50;
    *(a1 + 832) = 0xFFFF9A70FFFFADF8;
    *(a1 + 972) = 0;
    *(a1 + 888) = 40;
    *(a1 + 896) = 0u;
    *(a1 + 912) = 0u;
    *(a1 + 928) = 0u;
    *(a1 + 944) = 0u;
    *(a1 + 956) = 0u;
    v6 = *(a1 + 1000);
    *v6 = xmmword_19B0B2F60;
    *(v6 + 16) = xmmword_19B0B2F70;
    *(v6 + 32) = 0x3585000031AALL;
  }

  *(a1 + 974) = 0;
  v7 = *(a1 + 1008);
  *(v7 + 32) = 0;
  *v7 = 0u;
  *(v7 + 16) = 0u;
  if (v7 >= v7 + 40)
  {
    goto LABEL_28;
  }

  v8 = *(a1 + 1008);
  *(v8 + 40) = xmmword_19B0B2F60;
  *(v8 + 56) = xmmword_19B0B2F70;
  *(v8 + 72) = 0x3585000031AALL;
  v9 = *(a1 + 1016);
  memset_pattern16(v9, &unk_19B0B3960, 0x14uLL);
  *(v9 + 20) = 0x400000000000;
  v10 = *(a1 + 1024);
  memset_pattern16(v10, &unk_19B0B3970, 0x14uLL);
  *(v10 + 20) = 0x100000000;
  if (a2 != 8)
  {
    v11 = *(a1 + 1032);
    v12 = (v11 + 16);
    v13 = v11 + 32;
    v14 = 4;
    do
    {
      *(v12 - 4) = -14336;
      if ((v12 + 1) > v13 || v12 >= v12 + 1)
      {
        goto LABEL_28;
      }

      *v12++ = -2381;
    }

    while (--v14);
  }

  *(a1 + 978) = 21845;
  v16 = *(a1 + 984);
  v16[13] = 0u;
  v16[14] = 0u;
  v16[11] = 0u;
  v16[12] = 0u;
  v16[9] = 0u;
  v16[10] = 0u;
  v16[7] = 0u;
  v16[8] = 0u;
  v16[5] = 0u;
  v16[6] = 0u;
  v16[3] = 0u;
  v16[4] = 0u;
  v16[1] = 0u;
  v16[2] = 0u;
  *v16 = 0u;
  if (v16 >= v16 + 15 || (*(*(a1 + 984) + 240) = 0, v17 = *(a1 + 1040), *v17 = 0, *(v17 + 8) = 0, *(v17 + 16) = 0, v17 >= v17 + 20))
  {
LABEL_28:
    __break(0x5519u);
    return;
  }

  v18 = *(a1 + 1040);
  *(v18 + 28) = 0;
  *(v18 + 20) = 0;
  if (a2 != 8)
  {
    v19 = 0;
    v20 = *(a1 + 1048);
    *(v20 + 768) = 0x2000;
    *(v20 + 4) = xmmword_19B0B2F80;
    *(v20 + 20) = xmmword_19B0B2F90;
    *(v20 + 36) = xmmword_19B0B2FA0;
    *(v20 + 52) = xmmword_19B0B2FB0;
    *(v20 + 68) = xmmword_19B0B2FC0;
    *(v20 + 92) = -26000;
    *(v20 + 84) = 0xFFFFADF8FFFFC568;
    *(v20 + 772) = 0;
    *(v20 + 96) = xmmword_19B0B2F60;
    *(v20 + 112) = xmmword_19B0B2F70;
    *(v20 + 128) = 0x3585000031AALL;
    while (1)
    {
      v21 = *(a1 + 1048);
      v22 = v21 + v19;
      v23 = *(v21 + 112);
      *(v22 + 136) = *(v21 + 96);
      *(v22 + 152) = v23;
      *(v22 + 168) = *(v21 + 128);
      if (v21 + v19 + 136 > (v21 + v19 + 176))
      {
        goto LABEL_28;
      }

      v19 += 40;
      if (v19 == 280)
      {
        v24 = *(a1 + 1048);
        v24[44] = 0u;
        v24[45] = 0u;
        v24[42] = 0u;
        v24[43] = 0u;
        v24[40] = 0u;
        v24[41] = 0u;
        v24[38] = 0u;
        v24[39] = 0u;
        v24[36] = 0u;
        v24[37] = 0u;
        v24[34] = 0u;
        v24[35] = 0u;
        v24[32] = 0u;
        v24[33] = 0u;
        v24[30] = 0u;
        v24[31] = 0u;
        v24[28] = 0u;
        v24[29] = 0u;
        v24[26] = 0u;
        v24[27] = 0u;
        if (v24 + 26 <= v24 + 46)
        {
          v25 = 0;
          v26 = *(a1 + 1048);
          while (1)
          {
            v27 = (v26 + v25 + 736);
            v28 = v26 + v25 + 740;
            if (v28 > v26 + 768 || v27 > v28)
            {
              break;
            }

            *v27 = *(v26 + 4);
            v25 += 4;
            if (v25 == 32)
            {
              *(v26 + 780) = 0x1F00070000;
              *(v26 + 788) = 0;
              *v26 = 1;
              *(v26 + 792) = 0;
              return;
            }
          }
        }

        goto LABEL_28;
      }
    }
  }
}

void Speech_Decode_Frame_exit(void **a1)
{
  if (a1)
  {
    v2 = a1 + 1;
    if (a1 + 1 < a1)
    {
      goto LABEL_16;
    }

    v3 = a1 + 3;
    if (*a1)
    {
      free(*(*a1 + 126));
      free(*(*a1 + 127));
      free(*(*a1 + 128));
      free(*(*a1 + 129));
      free(*(*a1 + 123));
      free(*(*a1 + 130));
      free(*(*a1 + 124));
      free(*(*a1 + 125));
      free(*(*a1 + 131));
      free(*a1);
      *a1 = 0;
    }

    if (v3 < a1)
    {
      goto LABEL_16;
    }

    v4 = a1 + 2;
    if (v2 > a1 + 2)
    {
      goto LABEL_16;
    }

    if (*v2)
    {
      free(*(*v2 + 116));
      free(*v2);
      *v2 = 0;
    }

    if (v4 > v3)
    {
LABEL_16:
      __break(0x5519u);
    }

    else
    {
      if (*v4)
      {
        free(*v4);
      }

      free(a1);
    }
  }
}

uint64_t Decoder_amr(uint64_t a1, signed int a2, __int16 *a3, unsigned int a4, char *a5, unint64_t a6)
{
  v851[1] = *MEMORY[0x1E69E9840];
  v803 = 0xAAAAAAAAAAAAAAAALL;
  v7.i64[0] = 0xAAAAAAAAAAAAAAAALL;
  v7.i64[1] = 0xAAAAAAAAAAAAAAAALL;
  v802 = v7;
  v801 = v7;
  v800 = 0xAAAAAAAAAAAAAAAALL;
  v799[0] = v7;
  v799[1] = v7;
  v798 = 0xAAAAAAAAAAAAAAAALL;
  v796 = v7;
  v797 = v7;
  v795 = 0xAAAAAAAAAAAAAAAALL;
  v793 = v7;
  v794 = v7;
  v766 = -1431655766;
  v8 = &table_SID[a4];
  v9 = table_mute;
  v765 = 0;
  if (v8 >= table_mute || v8 < table_SID)
  {
    goto LABEL_1327;
  }

  v14 = *(a1 + 1048);
  v791 = v7;
  v792 = v7;
  v789 = v7;
  v790 = v7;
  v787 = v7;
  v788 = v7;
  v785 = v7;
  v786 = v7;
  v783 = v7;
  v784 = v7;
  v781[0] = v7;
  v781[1] = v7;
  v781[2] = v7;
  v781[3] = v7;
  v781[4] = v7;
  v781[5] = v7;
  v781[6] = v7;
  v781[7] = v7;
  v782[0] = v7;
  v782[1] = v7;
  v779 = v7;
  v780 = v7;
  v777 = v7;
  v778 = v7;
  v775 = v7;
  v776 = v7;
  v773 = v7;
  v774 = v7;
  v15 = table_speech_bad[a4];
  v16 = v15 & 1;
  v771 = v7;
  v772 = v7;
  v17 = *v14;
  if (!*v14)
  {
    v16 = 0;
  }

  if (v16 | table_SID[a4])
  {
    if ((table_mute[a4] & 1) != 0 && v17 == 2)
    {
      v19 = 2;
    }

    else
    {
      v19 = 1;
    }

    v20 = ++*(v14 + 386);
    if (v20 <= 50 || a4 == 5)
    {
      v22 = v19;
    }

    else
    {
      v22 = 2;
    }
  }

  else
  {
    v22 = 0;
    *(v14 + 386) = 0;
  }

  if (a4 != 5 || *(v14 + 396))
  {
    v23 = *(v14 + 392) + 1;
  }

  else
  {
    v23 = 1;
  }

  *(v14 + 392) = v23;
  *(v14 + 395) = 0;
  if (!table_DTX[a4] || a4 == 7 && !v22)
  {
    v24 = 7;
LABEL_27:
    *(v14 + 391) = v24;
    goto LABEL_28;
  }

  if (v23 < 31)
  {
    if (*(v14 + 391))
    {
      v24 = *(v14 + 391) - 1;
      goto LABEL_27;
    }

    *(v14 + 392) = 0;
  }

  else
  {
    *(v14 + 395) = 1;
    *(v14 + 782) = 0;
  }

LABEL_28:
  v743 = a3;
  if (v22)
  {
    *(v14 + 786) = 0;
    v759 = v22;
    switch(a4)
    {
      case 4u:
        *(v14 + 393) = 1;
        break;
      case 5u:
        *(v14 + 786) = 65537;
        break;
      case 6u:
        *(v14 + 393) = 1;
        *(v14 + 395) = 0;
        break;
    }

    Decoder_amr_reset(a1, 8);
    v27 = *(a1 + 1048);
    v28 = *(a1 + 1008);
    v29 = *(a1 + 1032);
    v757 = *(a1 + 992);
    v30.i64[0] = 0xAAAAAAAAAAAAAAAALL;
    v30.i64[1] = 0xAAAAAAAAAAAAAAAALL;
    v850 = v30;
    v849 = v30;
    v848 = v30;
    v847 = v30;
    v846 = v30;
    v845 = v30;
    v844 = v30;
    v843 = v30;
    v842 = v30;
    v841 = v30;
    *&v833[28] = v30;
    *&v833[16] = v30;
    *v833 = v30;
    *&v824[12] = v30;
    *v824 = v30;
    v823 = v30;
    v821 = 0xAAAAAAAAAAAAAAAALL;
    v820[1] = v30;
    v820[0] = v30;
    v818 = 0xAAAAAAAAAAAAAAAALL;
    v817 = v30;
    v816 = v30;
    v815[0] = 0xAAAAAAAAAAAAAAAALL;
    v814 = v30;
    v813 = v30;
    v811 = 0xAAAAAAAAAAAAAAAALL;
    v810 = v30;
    v809 = v30;
    v805 = 0xAAAAAAAAAAAAAAAALL;
    v804[1] = v30;
    v804[0] = v30;
    v770 = -1431655766;
    v769 = -1431655766;
    LODWORD(v9) = *(v27 + 790);
    v31 = *(v27 + 786);
    v763 = v27;
    if (*(v27 + 790))
    {
      v32 = a2;
      if (*(v27 + 786))
      {
        v33 = &dtx_log_en_adjust[a2];
        if (v33 < dtx_log_en_adjust)
        {
          goto LABEL_1327;
        }

        v9 = (v33 + 1);
        if (v33 + 1 > " N N N N NPF" || v33 > v9)
        {
          goto LABEL_1327;
        }

        *(v27 + 780) = *v33;
        v34 = *(v27 + 774);
        LODWORD(v9) = v34 + 10;
        if (v34 == 70)
        {
          LODWORD(v9) = 0;
        }

        v35 = (v27 + 96);
        v36 = (v27 + 416);
        v37 = v27 + 96 + 4 * v34;
        if (v37 > v27 + 416)
        {
          goto LABEL_1327;
        }

        if (v35 > v37)
        {
          goto LABEL_1327;
        }

        if (&v36[-v37] < 0x28)
        {
          goto LABEL_1327;
        }

        v9 = v35 + 4 * v9;
        if (v9 > v36)
        {
          goto LABEL_1327;
        }

        if (v35 > v9)
        {
          goto LABEL_1327;
        }

        if (&v36[-v9] < 0x28)
        {
          goto LABEL_1327;
        }

        v38 = *v37;
        v39 = *(v37 + 16);
        *(v9 + 32) = *(v37 + 32);
        *v9 = v38;
        *(v9 + 16) = v39;
        if (v9 >= v9 + 40)
        {
          goto LABEL_1327;
        }

        v9 = *(v27 + 778);
        v40 = v27 + 736;
        v41 = (v27 + 736 + 4 * v9);
        if (v41 < v27 + 736)
        {
          goto LABEL_1327;
        }

        v42 = v27 + 768;
        if ((v41 + 1) > v27 + 768 || v41 > v41 + 1)
        {
          goto LABEL_1327;
        }

        LODWORD(v9) = v9 == 7 ? 0 : v9 + 1;
        v43 = (v40 + 4 * v9);
        if (v43 < v40)
        {
          goto LABEL_1327;
        }

        v9 = (v43 + 1);
        if ((v43 + 1) > v42 || v43 > v9)
        {
          goto LABEL_1327;
        }

        LODWORD(v9) = 0;
        v44 = 0;
        *v43 = *v41;
        *(v27 + 4) = 0;
        v813 = 0u;
        v814 = 0u;
        v815[0] = 0;
        v45 = (v27 + 96);
        do
        {
          v46 = (v40 + 4 * v44);
          i = (v46 + 1);
          v47 = (v46 + 1) > v42 || v46 > i;
          if (v47)
          {
            goto LABEL_1327;
          }

          LODWORD(v9) = v9 + (*v46 >> 3);
          *(v27 + 4) = v9;
          v48 = v45;
          for (i = 100; i != 140; i += 4)
          {
            if (v48 + 1 > v36 || v48 > v48 + 1)
            {
              goto LABEL_1327;
            }

            v50 = *v48++;
            *&v806[i] += v50;
          }

          ++v44;
          v45 += 10;
        }

        while (v44 != 8);
        for (j = 0; j != 10; ++j)
        {
          v813.i32[j] >>= 3;
        }

        Lsf_lsp(&v813, v27 + 16);
        *(v763 + 4) -= *(v763 + 780);
        memcpy(v36, v35, 0x140uLL);
        v27 = v763;
        v52 = 0;
        v9 = " N N N N NPF";
        v32 = a2;
        do
        {
          v53 = 0;
          v54 = v36;
          v55 = 8;
          do
          {
            i = (v54 + 1);
            if ((v54 + 1) > v40 || v54 > i)
            {
              goto LABEL_1327;
            }

            v57 = *v54;
            v54 += 10;
            v53 += v57;
            --v55;
          }

          while (v55);
          v58 = v53 >> 3;
          v59 = v36;
          v60 = 8;
          do
          {
            i = (v59 + 1);
            if ((v59 + 1) > v40 || v59 > i)
            {
              goto LABEL_1327;
            }

            v62 = ((*v59 - v58) * *&lsf_hist_mean_scale[2 * v52]) >> 15;
            if (v62 >= 0)
            {
              v63 = ((*v59 - v58) * *&lsf_hist_mean_scale[2 * v52]) >> 15;
            }

            else
            {
              v63 = -v62;
            }

            v64 = (v63 - 655) >> 2;
            if (v64 >= 0x28F)
            {
              v64 = 655;
            }

            v65 = v64 + 655;
            if (v63 >= 0x290)
            {
              v63 = v65;
            }

            if (v62 >= 0)
            {
              i = v63;
            }

            else
            {
              i = -v63;
            }

            *v59 = i;
            v59 += 10;
            --v60;
          }

          while (v60);
          ++v52;
          v36 += 4;
        }

        while (v52 != 10);
        v31 = *(v763 + 786);
      }

      if (!v31)
      {
        goto LABEL_174;
      }
    }

    else
    {
      v32 = a2;
      if (!*(v27 + 786))
      {
LABEL_174:
        v110 = &dtx_log_en_adjust[v32];
        if (v110 < dtx_log_en_adjust)
        {
          goto LABEL_1327;
        }

        v9 = (v110 + 1);
        if (v110 + 1 > " N N N N NPF" || v110 > v9)
        {
          goto LABEL_1327;
        }

        *(v27 + 780) = (((104864 * *v110) >> 16) >> 4) + ((29491 * *(v27 + 780)) >> 15);
        v111 = *(v27 + 772);
        if (v111 <= 30)
        {
          v112 = (v111 << 10) + 1024;
        }

        else
        {
          v112 = 0x7FFF;
        }

        v113 = (*(v27 + 768) * v112) >> 15;
        if (v113 >= 1024)
        {
          LOWORD(v113) = 1024;
        }

        v114 = (16 * v113);
        LODWORD(v9) = *(v27 + 4) * v114;
        v115 = v27 + 16;
        v116 = v27 + 56;
        v117 = 5;
        v118 = (v27 + 16);
        do
        {
          if ((v118 + 1) > v116 || v118 > v118 + 1)
          {
            goto LABEL_1327;
          }

          v120 = *v118++;
          i = v820 + v117 * 4;
          v817.i32[v117 + 3] = (v120 * v114) >> 15;
          ++v117;
        }

        while (v117 != 15);
        v121 = 0x4000 - v114;
        v122 = 2 * (v9 + *(v27 + 8) * v121);
        v9 = v27 + 96;
        v123 = 60;
        v124 = (v27 + 56);
        do
        {
          if ((v124 + 1) > v9 || v124 > v124 + 1)
          {
            goto LABEL_1327;
          }

          v126 = *v124++;
          i = (2 * (*(v815 + v123 + 4) + ((v126 * v121) >> 15)));
          *(v815 + v123 + 4) = i;
          v123 += 4;
        }

        while (v123 != 100);
        v127 = 0;
        v128 = (9830 * *(v27 + 776) - 24152310) >> 15;
        v129 = 0x8000 - 8 * v128;
        if (v128 > 0x1000)
        {
          v129 = 0;
        }

        if (v128 >= 1)
        {
          v130 = v129;
        }

        else
        {
          v130 = 0x7FFF;
        }

        v131 = *(v27 + 12);
        v132 = 3;
        do
        {
          v133 = v131;
          v131 = (((v131 ^ (v131 >> 28)) & 1) << 30) | (v131 >> 1);
          LODWORD(v9) = v133 & 1 | (2 * v127);
          v127 = v9;
          --v132;
        }

        while (v132);
        *(v27 + 12) = v131;
        v134 = 63;
        v135 = 9;
        i = cos_table;
        do
        {
          v136 = v135;
          v137 = &cos_table[v134];
          v138 = v137 + 1;
          v140 = v137 < cos_table || v138 > acos_slope || v137 > v138;
          v141 = v820 + v136;
          v142 = (v141 + 1);
          v143 = !v140 && v141 >= v820;
          if (!v143 || v142 > &v822 || v141 > v142)
          {
            goto LABEL_1327;
          }

          v146 = v134;
          v147 = *v141;
          v148 = *v137;
          if (v148 < v147)
          {
            v149 = v134;
            do
            {
              v150 = &cos_table[v149];
              v151 = &cos_table[v149 - 1];
              if (v151 < cos_table || v150 > acos_slope || v151 > v150)
              {
                goto LABEL_1327;
              }

              v148 = cos_table[v146 - 1];
              --v149;
              --v146;
            }

            while (v148 < v147);
            v134 = v146;
          }

          v154 = &acos_slope[v146];
          if (v154 < acos_slope)
          {
            goto LABEL_1327;
          }

          if (v154 + 1 > log2_table)
          {
            goto LABEL_1327;
          }

          if (v154 > v154 + 1)
          {
            goto LABEL_1327;
          }

          v155 = &v809.i8[4 * v136];
          if (v155 < &v809 || v155 + 4 > &v812 || v155 > v155 + 4)
          {
            goto LABEL_1327;
          }

          v809.i32[v136] = ((*v154 * (v147 - v148) + 2048) >> 12) + (v134 << 8);
          v135 = v136 - 1;
        }

        while (v136);
        v807[0] = v809;
        v807[1] = v810;
        v808 = v811;
        v9 = v27 + 416 + 40 * v9;
        for (k = 420; k != 460; k += 4)
        {
          if (v9 < v27 + 416)
          {
            goto LABEL_1327;
          }

          i = v9 + 4;
          if (v9 + 4 > v27 + 736 || v9 > i)
          {
            goto LABEL_1327;
          }

          i = v782 + k + 12;
          v157 = *v9;
          v9 += 4;
          *(v782 + k + 12) += (v157 * v130) >> 15;
        }

        v158 = 0;
        v159 = 205;
        do
        {
          v160 = v809.i32[v158];
          if (v160 < v159)
          {
            v809.i32[v158] = v159;
            v160 = v159;
          }

          v159 = v160 + 205;
          ++v158;
        }

        while (v158 != 10);
        v161 = 0;
        v162 = 205;
        do
        {
          if (*(v807 + v161) > v162)
          {
            v162 = *(v807 + v161);
          }

          *(v807 + v161) = v162;
          v162 += 205;
          v161 += 4;
        }

        while (v161 != 40);
        v163 = v810;
        *(v28 + 40) = v809;
        *(v28 + 56) = v163;
        *(v28 + 72) = v811;
        LODWORD(v9) = v28 + 80;
        if (v28 + 40 > v28 + 80)
        {
          goto LABEL_1327;
        }

        Lsf_lsp(&v809, v820);
        Lsf_lsp(v807, v804);
        Lsp_Az(v820, v833);
        Lsp_Az(v804, &v823);
        v164 = *&v833[16];
        *a6 = *v833;
        *(a6 + 16) = v164;
        *(a6 + 28) = *&v833[28];
        v165 = (a6 + 44);
        if (a6 + 44 < a6)
        {
          goto LABEL_1327;
        }

        v166 = *&v833[16];
        *v165 = *v833;
        *(a6 + 60) = v166;
        *(a6 + 72) = *&v833[28];
        v9 = a6 + 88;
        if (v165 > a6 + 88)
        {
          goto LABEL_1327;
        }

        v167 = *&v833[16];
        *v9 = *v833;
        *(a6 + 104) = v167;
        *(a6 + 116) = *&v833[28];
        v168 = (a6 + 132);
        if (v9 > a6 + 132)
        {
          goto LABEL_1327;
        }

        v169 = *&v833[16];
        *v168 = *v833;
        *(a6 + 148) = v169;
        *(a6 + 160) = *&v833[28];
        LODWORD(v9) = a6 + 176;
        if (v168 > a6 + 176)
        {
          goto LABEL_1327;
        }

        v170 = 0;
        v828 = 0xAAAAAAAAAAAAAAAALL;
        *&v171 = 0xAAAAAAAAAAAAAAAALL;
        *(&v171 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v827 = v171;
        v826 = v171;
        v829 = *&v833[4];
        v830 = *&v833[20];
        v172 = 9;
        v831 = *&v833[36];
        i = 0x7FFFFFFFLL;
        while (1)
        {
          v173 = v172;
          v174 = &v829.i32[v172];
          v9 = (v174 + 1);
          if (v174 < &v829 || v9 > &v832 || v174 > v9)
          {
            goto LABEL_1327;
          }

          v177 = *v174;
          v178 = *v174 >= 0 ? *v174 : -v177;
          if (v178 > 0xFFF)
          {
            break;
          }

          v179 = (&v816 + 4 * v173);
          if (v179 < &v816)
          {
            goto LABEL_1327;
          }

          v9 = v179->u64 + 4;
          if (v179->i64 + 4 > &v819 || v179 > v9)
          {
            goto LABEL_1327;
          }

          v179->i32[0] = 8 * v177;
          v180 = (16 * v177 * 8 * v177) ^ 0x7FFFFFFF;
          v181 = 30 - (__clz(v180) ^ 0x1F);
          if (v180 >> 30)
          {
            v181 = 0;
          }

          v182 = v180 << v181;
          if (v182 <= 2147450879)
          {
            v183 = v182 + 0x8000;
          }

          else
          {
            v183 = 0x7FFFFFFF;
          }

          if (v183 >= 0x10000)
          {
            LODWORD(v9) = 2 * (0x20000000u / HIWORD(v183));
            if (v173)
            {
LABEL_278:
              v184 = 0;
              i = v170;
              v185 = -16 * v177;
              do
              {
                v186 = &v831 + i;
                v187 = &v831 + i + 4;
                v188 = v829.i64 + v184 * 4 + 4 <= &v832 && v186 >= &v829;
                v189 = !v188 || v187 > &v832;
                if (v189 || v186 > v187)
                {
                  goto LABEL_1327;
                }

                v191 = ((v185 * *v186 + (v829.i32[v184] << 16) + 0x8000) >> 16) * v9;
                v192 = v191 >> (15 - v181);
                v193 = (v191 >> (14 - v181)) & 1;
                if (v181 >= 0xF)
                {
                  v193 = 0;
                }

                v194 = v193 + v192;
                if (v194 >= 0)
                {
                  v195 = v194;
                }

                else
                {
                  v195 = -v194;
                }

                if (v195 >> 15)
                {
                  goto LABEL_299;
                }

                *(&v826 + v184 * 4) = v194;
                i -= 4;
                ++v184;
              }

              while (i != -36);
            }
          }

          else
          {
            LODWORD(v9) = 0x8000;
            if (v173)
            {
              goto LABEL_278;
            }
          }

          v196 = __memcpy_chk();
          if (v196 > v196 + 4 * v173)
          {
            goto LABEL_1327;
          }

          v172 = v173 - 1;
          v170 -= 4;
          i = 0x7FFFFFFFLL;
          if (!v173)
          {
            goto LABEL_300;
          }
        }

LABEL_299:
        v818 = 0;
        v817 = 0u;
        v816 = 0u;
LABEL_300:
        v197 = 0;
        v198 = 0x7FFF;
        do
        {
          v199 = (0x7FFF - ((v816.i32[v197] * v816.i32[v197]) >> 15)) * v198;
          v198 = v199 >> 15;
          ++v197;
        }

        while (v197 != 10);
        if (v199 >= 0x8000)
        {
          v200 = -1;
          v201 = v199 >> 15;
          do
          {
            v202 = v201 ^ (2 * v201);
            v201 *= 2;
            ++v200;
          }

          while ((v202 & 0x80000000) == 0);
        }

        else
        {
          v200 = 0;
        }

        Log2_norm((v198 << v200), v200, &v770, &v769);
        v203 = (v770 << 12) - 61440;
        if (v203 <= -32768)
        {
          v203 = -32768;
        }

        v204 = -(v203 + (v769 >> 3)) >> 1;
        *(v763 + 776) = ((3277 * v204) >> 15) + ((29491 * *(v763 + 776)) >> 15);
        v205 = (v122 >> 10) - 16 * v204 + 32 * *(v763 + 780) + 0x40000;
        v206 = 0;
        v207 = vdupq_n_s32(Pow2((v205 >> 16), v205 >> 1));
        v761 = v207;
        do
        {
          v208 = 0;
          v850 = 0u;
          v849 = 0u;
          v848 = 0u;
          v847 = 0u;
          v846 = 0u;
          v845 = 0u;
          v844 = 0u;
          v843 = 0u;
          v842 = 0u;
          v841 = 0u;
          i = v763;
          LODWORD(v9) = *(v763 + 12);
          do
          {
            v209 = 0;
            v210 = 2;
            do
            {
              v211 = v9;
              v212 = v9 & 1 | (2 * v209);
              LODWORD(v9) = (((v9 ^ (v9 >> 28)) & 1) << 30) | (v9 >> 1);
              v209 = v212;
              --v210;
            }

            while (v210);
            LODWORD(v9) = ((((v211 >> 1) ^ ((v211 >> 1) >> 28)) & 1) << 30) | (v9 >> 1);
            v213 = (&v841 + 4 * v208 + 4 * ((20 * v212) >> 1));
            if (v213 < &v841)
            {
              goto LABEL_1328;
            }

            if (v213->i64 + 4 > v851 || v213 > (v213->i64 + 4))
            {
              goto LABEL_1328;
            }

            if ((v211 & 2) != 0)
            {
              v215 = 4096;
            }

            else
            {
              v215 = -4096;
            }

            v213->i32[0] = v215;
            ++v208;
          }

          while (v208 != 10);
          v216 = 0;
          *(v763 + 12) = v9;
          do
          {
            *(&v841 + v216) = vshrq_n_s32(vmulq_s32(*(&v841 + v216), v207), 0xFuLL);
            v216 += 16;
          }

          while (v216 != 160);
          v829.i64[0] = &v823;
          v829.i64[1] = &v825;
          v830.i64[0] = &v823;
          *&v826 = &v841;
          *(&v826 + 1) = v851;
          *&v827 = &v841;
          v768[0] = &a5[160 * v206];
          v768[1] = a5 + 640;
          v768[2] = a5;
          v767[0] = a1 + 840;
          v767[1] = a1 + 880;
          v767[2] = a1 + 840;
          Syn_filt(&v829, &v826, v768, 0x28u, v767, 1);
          v207 = v761;
          ++v206;
        }

        while (v206 != 4);
        *(v757 + 32) = 20;
        *v757 = 0;
        if (v759 == 2)
        {
          v217 = *(v763 + 772);
          if (v217 == 1)
          {
            v218 = 0x7FFF;
            v220 = v116;
            v219 = v115;
          }

          else
          {
            v218 = 0;
            v217 = v217;
            if (v217 >= 32)
            {
              v217 = 32;
            }

            v221 = v217 << 10;
            v222 = 1024;
            v223 = 15;
            v220 = v116;
            v219 = v115;
            do
            {
              v224 = 2 * v222;
              v218 = (v224 >= v221) | (2 * v218);
              if (v224 < v221)
              {
                v225 = 0;
              }

              else
              {
                v225 = v221;
              }

              v222 = v224 - v225;
              --v223;
            }

            while (v223);
          }

          *(v763 + 768) = v218;
          *(v763 + 772) = 0;
          v226 = *(v219 + 16);
          *v220 = *v219;
          *(v220 + 16) = v226;
          *(v220 + 32) = *(v219 + 32);
          v227 = *(v763 + 4);
          v228 = v227 - 256;
          if (v227 < -32512)
          {
            v228 = -32768;
          }

          *(v763 + 4) = v228;
          *(v763 + 8) = v227;
        }

        if (*(v763 + 788))
        {
          v229 = 0;
          if (!*(v763 + 786))
          {
LABEL_343:
            Lsf_lsp(*(a1 + 1008) + 40, a1 + 800);
            v230 = 0;
            v231 = *(a1 + 1000);
            v232 = *(a1 + 1008) + 40;
            do
            {
              *(v231 + v230) = (10486 * *(v232 + v230) + 55050 * *(v231 + v230) + 0x8000) >> 16;
              v230 += 4;
            }

            while (v230 != 40);
            **(a1 + 1048) = v759;
            return 2;
          }
        }

        else
        {
          v229 = *(v763 + 790) == 0;
          if (!*(v763 + 786))
          {
            goto LABEL_343;
          }
        }

        if (!v229)
        {
          *(v763 + 772) = 0;
          *(v763 + 792) = 1;
        }

        goto LABEL_343;
      }
    }

    v66 = *(v27 + 32);
    *(v27 + 56) = *(v27 + 16);
    *(v27 + 72) = v66;
    *(v27 + 88) = *(v27 + 48);
    v67 = *(v27 + 4);
    *(v27 + 8) = v67;
    if (*(v27 + 788))
    {
      v68 = *(v27 + 772);
      *(v27 + 772) = 0;
      if (v68 < 2)
      {
        v69 = 0x4000;
      }

      else
      {
        if (v68 >= 0x20)
        {
          v68 = 32;
        }

        v69 = 0x2000000u / (v68 << 10);
      }

      *(v27 + 768) = v69;
      LODWORD(v9) = 5 * *v743;
      v107 = &past_rq_init[40 * *v743];
      if (v107 > cos_table)
      {
        goto LABEL_1327;
      }

      if (v107 < past_rq_init)
      {
        goto LABEL_1327;
      }

      v9 = 40 * *v743 - 321;
      if (v9 > 0xFFFFFFFFFFFFFFD7)
      {
        goto LABEL_1327;
      }

      *v28 = *v107;
      *(v28 + 16) = *(v107 + 1);
      *(v28 + 32) = *(v107 + 4);
      if (v28 >= v28 + 40)
      {
        goto LABEL_1327;
      }

      D_plsf_3(v28, 8u, 0, v743 + 1, v27 + 16);
      v27 = v763;
      *(v28 + 32) = 0;
      *v28 = 0u;
      *(v28 + 16) = 0u;
      if (v743[4])
      {
        LOWORD(v67) = (v743[4] << 9) - 5120;
      }

      else
      {
        LOWORD(v67) = 0x8000;
      }

      v67 = v67;
      *(v763 + 4) = v67;
      if (!*(v763 + 792) || !*v763)
      {
        v108 = *(v763 + 32);
        *(v763 + 56) = *(v763 + 16);
        *(v763 + 72) = v108;
        *(v763 + 88) = *(v763 + 48);
        *(v763 + 8) = v67;
      }

      v32 = a2;
    }

    v109 = ((v67 >> 1) - 9000) & (((v67 >> 1) - 9000) >> 31);
    if (v109 <= -14436)
    {
      v109 = -14436;
    }

    LODWORD(v9) = 10886;
    *v29 = vdupq_n_s32(v109);
    v29[1] = vdupq_n_s32((10886 * v109) >> 16);
    goto LABEL_174;
  }

  if (v15)
  {
    if (a4 != 3)
    {
      v234 = 31821 * *(a1 + 978) + 13849;
      *(a1 + 978) = v234;
      v235 = v234 & 0x7F;
      v9 = window_200_40;
      v236 = &window_200_40[4 * v235];
      if (a2 > 3)
      {
        if (a2 > 5)
        {
          if (a2 == 6)
          {
            v721 = 0;
            v722 = v236;
            i = bitno_MR102;
            do
            {
              v723 = v722 + 4;
              if (v236 < window_200_40 || v723 > bitno_MR122 || v722 > v723)
              {
                goto LABEL_1327;
              }

              a3[v721] = *v722 & ~(0xFFFF << bitno_MR102[v721]);
              ++v721;
              v722 += 4;
            }

            while (v721 != 39);
          }

          else if (a2 == 7)
          {
            v701 = 0;
            v702 = v236;
            i = bitno_MR122;
            do
            {
              v703 = v702 + 4;
              if (v236 < window_200_40 || v703 > bitno_MR122 || v702 > v703)
              {
                goto LABEL_1327;
              }

              a3[v701] = *v702 & ~(0xFFFF << bitno_MR122[v701]);
              ++v701;
              v702 += 4;
            }

            while (v701 != 57);
          }
        }

        else if (a2 == 4)
        {
          v711 = 0;
          v712 = v236;
          i = bitno_MR74;
          do
          {
            v713 = v712 + 4;
            if (v236 < window_200_40 || v713 > bitno_MR122 || v712 > v713)
            {
              goto LABEL_1327;
            }

            a3[v711] = *v712 & ~(0xFFFF << bitno_MR74[v711]);
            ++v711;
            v712 += 4;
          }

          while (v711 != 19);
        }

        else
        {
          v256 = 0;
          v257 = v236;
          i = bitno_MR795;
          do
          {
            v258 = v257 + 4;
            if (v236 < window_200_40 || v258 > bitno_MR122 || v257 > v258)
            {
              goto LABEL_1327;
            }

            a3[v256] = *v257 & ~(0xFFFF << bitno_MR795[v256]);
            ++v256;
            v257 += 4;
          }

          while (v256 != 23);
        }
      }

      else if (a2 > 1)
      {
        if (a2 == 2)
        {
          v716 = 0;
          v717 = v236;
          i = bitno_MR59;
          do
          {
            v718 = v717 + 4;
            if (v236 < window_200_40 || v718 > bitno_MR122 || v717 > v718)
            {
              goto LABEL_1327;
            }

            a3[v716] = *v717 & ~(0xFFFF << bitno_MR59[v716]);
            ++v716;
            v717 += 4;
          }

          while (v716 != 19);
        }

        else
        {
          v696 = 0;
          v697 = v236;
          i = bitno_MR67;
          do
          {
            v698 = v697 + 4;
            if (v236 < window_200_40 || v698 > bitno_MR122 || v697 > v698)
            {
              goto LABEL_1327;
            }

            a3[v696] = *v697 & ~(0xFFFF << bitno_MR67[v696]);
            ++v696;
            v697 += 4;
          }

          while (v696 != 19);
        }
      }

      else if (a2)
      {
        if (a2 == 1)
        {
          v237 = 0;
          v238 = v236;
          i = bitno_MR515;
          do
          {
            v239 = v238 + 4;
            if (v236 < window_200_40 || v239 > bitno_MR122 || v238 > v239)
            {
              goto LABEL_1327;
            }

            a3[v237] = *v238 & ~(0xFFFF << bitno_MR515[v237]);
            ++v237;
            v238 += 4;
          }

          while (v237 != 19);
        }
      }

      else
      {
        v706 = 0;
        v707 = v236;
        i = bitno_MR475;
        do
        {
          v708 = v707 + 4;
          if (v236 < window_200_40 || v708 > bitno_MR122 || v707 > v708)
          {
            goto LABEL_1327;
          }

          a3[v706] = *v707 & ~(0xFFFF << bitno_MR475[v706]);
          ++v706;
          v707 += 4;
        }

        while (v706 != 17);
      }
    }

    v25 = 0;
    v740 = 0;
    v733 = (a1 + 976);
    v26 = (*(a1 + 976) + 1);
    if (v26 >= 6)
    {
      LOWORD(v26) = 6;
    }

    *(a1 + 976) = v26;
    v727 = 1;
    v732 = 1;
  }

  else
  {
    v732 = 0;
    v25 = a4 == 1;
    v727 = a4 != 1;
    v733 = (a1 + 976);
    if (*(a1 + 976) == 6)
    {
      v70 = 5;
    }

    else
    {
      v70 = 0;
    }

    *(a1 + 976) = v70;
    v740 = a4 == 1;
  }

  v734 = v15 == 0;
  if (v17 == 1)
  {
    v71 = 0;
    goto LABEL_122;
  }

  if (v17 == 2)
  {
    v71 = 1;
LABEL_122:
    *(a1 + 976) = 5;
    *(a1 + 972) = v71;
  }

  v72 = *(a1 + 1008);
  v73 = *(v72 + 56);
  v796 = *(v72 + 40);
  v797 = v73;
  v798 = *(v72 + 72);
  v758 = v15;
  v726 = v25;
  if (a2 == 7)
  {
    v82 = (v72 + 40);
    *&v824[16] = 0xAAAAAAAAAAAAAAAALL;
    v83.i64[0] = 0xAAAAAAAAAAAAAAAALL;
    v83.i64[1] = 0xAAAAAAAAAAAAAAAALL;
    *v824 = v83;
    v823 = v83;
    v831 = 0xAAAAAAAAAAAAAAAALL;
    v830 = v83;
    v829 = v83;
    if (v15)
    {
      v84 = 0;
      v85 = v72 + 80;
      i = -2;
      v9 = mean_lsf_5;
      do
      {
        v86 = (v72 + v84 * 4 + 40);
        v87 = (v72 + v84 * 4 + 44);
        if (v87 > v85 || v86 > v87)
        {
          goto LABEL_1327;
        }

        v823.i32[v84] = ((1639 * mean_lsf_5[v84]) >> 15) + ((31128 * *v86) >> 15);
        v89 = v72 + v84 * 4 + 48;
        if (v89 > v85)
        {
          goto LABEL_1327;
        }

        if (v87 > v89)
        {
          goto LABEL_1327;
        }

        v90 = &mean_lsf_5[v84 + 2];
        if (v90 > dico1_lsf_5)
        {
          goto LABEL_1327;
        }

        v91 = &mean_lsf_5[v84 + 1];
        if (v91 > v90)
        {
          goto LABEL_1327;
        }

        v92 = &v823.i8[v84 * 4 + 8];
        if (v92 > &v824[24])
        {
          goto LABEL_1327;
        }

        v93 = &v823.i32[v84 + 1];
        if (v93 > v92)
        {
          goto LABEL_1327;
        }

        *v93 = ((1639 * *v91) >> 15) + ((31128 * *v87) >> 15);
        i += 2;
        v84 += 2;
      }

      while (i < 8);
      v94 = 0;
      v829 = v823;
      v830 = *v824;
      v831 = *&v824[16];
      v95 = -2;
      i = 21299;
      do
      {
        v96 = &mean_lsf_5[v94 / 4 + 1];
        v97 = &mean_lsf_5[v94 / 4 + 2];
        v98 = v97 > dico1_lsf_5 || v96 > v97;
        v99 = (v72 + v94 + 4);
        v100 = v72 + v94 + 8;
        if (v98 || v100 > v82 || v99 > v100)
        {
          goto LABEL_1327;
        }

        v103 = *v96;
        v104 = &v829.i8[v94];
        v105 = &v829.i8[v94 + 8];
        v106 = *v99;
        *(v72 + v94) = v829.i32[v94 / 4] - mean_lsf_5[v94 / 4] - ((21299 * *(v72 + v94)) >> 15);
        if (v105 > &v832 || v104 + 4 > v105)
        {
          goto LABEL_1327;
        }

        *v99 = *(v104 + 1) - (v103 + ((21299 * v106) >> 15));
        v95 += 2;
        v94 += 8;
      }

      while (v95 < 8);
    }

    else
    {
      v9 = &dico1_lsf_5[4 * *a3];
      if (v9 < dico1_lsf_5)
      {
        goto LABEL_1327;
      }

      v242 = v9 + 4;
      if (v9 + 4 > &dico2_lsf_5)
      {
        goto LABEL_1327;
      }

      if (v9 > v242)
      {
        goto LABEL_1327;
      }

      v243 = v9 + 8;
      v841.i32[0] = *v9;
      if (v9 + 8 > &dico2_lsf_5)
      {
        goto LABEL_1327;
      }

      if (v242 > v243)
      {
        goto LABEL_1327;
      }

      v841.i32[1] = *(v9 + 4);
      v244 = (v9 + 12);
      if (v9 + 12 > &dico2_lsf_5)
      {
        goto LABEL_1327;
      }

      if (v243 > v244)
      {
        goto LABEL_1327;
      }

      *v833 = *(v9 + 8);
      v9 += 16;
      if (v9 > &dico2_lsf_5)
      {
        goto LABEL_1327;
      }

      if (v244 > v9)
      {
        goto LABEL_1327;
      }

      *&v833[4] = *v244;
      v9 = &dico2_lsf_5 + 16 * a3[1];
      if (v9 < &dico2_lsf_5)
      {
        goto LABEL_1327;
      }

      v245 = v9 + 4;
      if (v9 + 4 > &dico3_lsf_5)
      {
        goto LABEL_1327;
      }

      if (v9 > v245)
      {
        goto LABEL_1327;
      }

      v246 = v9 + 8;
      v841.i32[2] = *v9;
      if (v9 + 8 > &dico3_lsf_5)
      {
        goto LABEL_1327;
      }

      if (v245 > v246)
      {
        goto LABEL_1327;
      }

      v841.i32[3] = *(v9 + 4);
      v247 = (v9 + 12);
      if (v9 + 12 > &dico3_lsf_5)
      {
        goto LABEL_1327;
      }

      if (v246 > v247)
      {
        goto LABEL_1327;
      }

      *&v833[8] = *(v9 + 8);
      v9 += 16;
      if (v9 > &dico3_lsf_5 || v247 > v9)
      {
        goto LABEL_1327;
      }

      v842.i64[0] = 0xAAAAAAAAAAAAAAAALL;
      *&v833[16] = 0xAAAAAAAAAAAAAAAALL;
      *&v833[12] = *v247;
      v248 = a3[2];
      v9 = &dico3_lsf_5 + 4 * ((2 * v248) & 0xFFFFFFFC);
      v249 = v9 + 4;
      v252 = v9 + 4 <= &dico4_lsf_5 && v9 <= v249 && v9 >= &dico3_lsf_5;
      if (v248)
      {
        if (!v252)
        {
          goto LABEL_1327;
        }

        v261 = v9 + 8;
        v842.i32[0] = -*v9;
        if (v9 + 8 > &dico4_lsf_5)
        {
          goto LABEL_1327;
        }

        if (v249 > v261)
        {
          goto LABEL_1327;
        }

        v842.i32[1] = -*(v9 + 4);
        v262 = (v9 + 12);
        if (v9 + 12 > &dico4_lsf_5)
        {
          goto LABEL_1327;
        }

        if (v261 > v262)
        {
          goto LABEL_1327;
        }

        *&v833[16] = -*(v9 + 8);
        v9 += 16;
        if (v9 > &dico4_lsf_5 || v262 > v9)
        {
          goto LABEL_1327;
        }

        v255 = -*v262;
      }

      else
      {
        if (!v252)
        {
          goto LABEL_1327;
        }

        v253 = v9 + 8;
        v842.i32[0] = *v9;
        if (v9 + 8 > &dico4_lsf_5)
        {
          goto LABEL_1327;
        }

        if (v249 > v253)
        {
          goto LABEL_1327;
        }

        v842.i32[1] = *(v9 + 4);
        v254 = (v9 + 12);
        if (v9 + 12 > &dico4_lsf_5)
        {
          goto LABEL_1327;
        }

        if (v253 > v254)
        {
          goto LABEL_1327;
        }

        *&v833[16] = *(v9 + 8);
        v9 += 16;
        if (v9 > &dico4_lsf_5 || v254 > v9)
        {
          goto LABEL_1327;
        }

        v255 = *v254;
      }

      *&v833[20] = v255;
      v9 = &dico4_lsf_5 + 16 * a3[3];
      if (v9 < &dico4_lsf_5 || (v263 = v9 + 4, v9 + 4 > &dico5_lsf_5) || v9 > v263 || (v264 = v9 + 8, v842.i32[2] = *v9, v9 + 8 > &dico5_lsf_5) || v263 > v264 || (v842.i32[3] = *(v9 + 4), v265 = (v9 + 12), v9 + 12 > &dico5_lsf_5) || v264 > v265 || (*&v833[24] = *(v9 + 8), v9 += 16, v9 > &dico5_lsf_5) || v265 > v9 || (*&v833[28] = *v265, v9 = &dico5_lsf_5 + 16 * a3[4], v9 < &dico5_lsf_5) || (v266 = v9 + 4, v9 + 4 > inter6) || v9 > v266 || (v267 = v9 + 8, v843.i32[0] = *v9, v9 + 8 > inter6) || v266 > v267 || (v843.i32[1] = *(v9 + 4), v268 = (v9 + 12), v9 + 12 > inter6) || v267 > v268 || (*&v833[32] = *(v9 + 8), v9 += 16, v9 > inter6) || v268 > v9)
      {
LABEL_1327:
        __break(0x5519u);
LABEL_1328:
        *(i + 12) = v9;
        __break(0x5519u);
      }

      v269 = 0;
      *&v833[36] = *v268;
      i = v833;
      do
      {
        v270 = mean_lsf_5[v269] + ((21299 * *(v72 + v269 * 4)) >> 15);
        v823.i32[v269] = v270 + v841.i32[v269];
        v271 = *&v833[v269 * 4];
        v829.i32[v269] = v271 + v270;
        *(v72 + v269 * 4) = v271;
        ++v269;
      }

      while (v269 != 10);
    }

    v272 = 0;
    v273 = 205;
    do
    {
      v274 = v823.i32[v272];
      if (v274 < v273)
      {
        v823.i32[v272] = v273;
        v274 = v273;
      }

      v273 = v274 + 205;
      ++v272;
    }

    while (v272 != 10);
    v275 = 0;
    v276 = 205;
    do
    {
      v277 = v829.i32[v275];
      if (v277 < v276)
      {
        v829.i32[v275] = v276;
        v277 = v276;
      }

      v276 = v277 + 205;
      ++v275;
    }

    while (v275 != 10);
    v278 = v830;
    *v82 = v829;
    *(v72 + 56) = v278;
    *(v72 + 72) = v831;
    LODWORD(v9) = v72 + 80;
    if (v82 > v72 + 80)
    {
      goto LABEL_1327;
    }

    Lsf_lsp(&v823, v799);
    Lsf_lsp(&v829, &v801);
    v279 = 0;
    v843.i64[0] = 0xAAAAAAAAAAAAAAAALL;
    v280.i64[0] = 0xAAAAAAAAAAAAAAAALL;
    v280.i64[1] = 0xAAAAAAAAAAAAAAAALL;
    v842 = v280;
    v841 = v280;
    do
    {
      v841.i32[v279] = (*(a1 + 800 + v279 * 4) >> 1) + (*(v799 + v279 * 4) >> 1);
      ++v279;
    }

    while (v279 != 10);
    Lsp_Az(&v841, a6);
    v281 = (a6 + 44);
    if (a6 + 44 > a6 + 176 || v281 < a6)
    {
      goto LABEL_1327;
    }

    v81 = a3 + 5;
    Lsp_Az(v799, v281);
    for (m = 0; m != 10; ++m)
    {
      v841.i32[m] = (v801.i32[m] >> 1) + (*(v799 + m * 4) >> 1);
    }

    v79 = a6;
    Lsp_Az(&v841, (a6 + 88));
    Lsp_Az(&v801, (a6 + 132));
    v80 = v743;
  }

  else
  {
    D_plsf_3(v72, a2, v732, a3, &v801);
    v74 = 0;
    v75 = a1 + 800;
    v843.i64[0] = 0xAAAAAAAAAAAAAAAALL;
    v76.i64[0] = 0xAAAAAAAAAAAAAAAALL;
    v76.i64[1] = 0xAAAAAAAAAAAAAAAALL;
    v842 = v76;
    v841 = v76;
    do
    {
      v841.i32[v74] = *(v75 + v74 * 4) + (v801.i32[v74] >> 2) - (*(v75 + v74 * 4) >> 2);
      ++v74;
    }

    while (v74 != 10);
    Lsp_Az(&v841, a6);
    for (n = 0; n != 10; ++n)
    {
      v841.i32[n] = (v801.i32[n] >> 1) + (*(v75 + n * 4) >> 1);
    }

    Lsp_Az(&v841, (a6 + 44));
    for (ii = 0; ii != 10; ++ii)
    {
      v841.i32[ii] = v801.i32[ii] + (*(v75 + ii * 4) >> 2) - (v801.i32[ii] >> 2);
    }

    v79 = a6;
    v80 = v743;
    v81 = v743 + 3;
    Lsp_Az(&v841, (a6 + 88));
    Lsp_Az(&v801, (a6 + 132));
  }

  v283 = 0;
  v746 = 0;
  v728 = 0;
  v284 = 0;
  v756 = (v80 + 57);
  v285 = a2;
  v286 = v802;
  *(a1 + 800) = v801;
  *(a1 + 816) = v286;
  *&v744 = a1 + 840;
  v741 = v79 + 44;
  *(a1 + 832) = v803;
  if (a2 <= 1)
  {
    v287 = 80;
  }

  else
  {
    v287 = 0;
  }

  v738 = v287;
  v737 = (a1 + 776);
  if (a2 == 5)
  {
    v288 = 19;
  }

  else
  {
    v288 = 9;
  }

  if (a2 == 5)
  {
    v289 = -10;
  }

  else
  {
    v289 = -5;
  }

  v730 = v289;
  v731 = v288;
  v729 = 143 - v288;
  *(&v744 + 1) = a1 + 880;
  v762 = (a1 + 972);
  v760 = a1 + 936;
  v290 = a2 != 6 && a2 > 3;
  v735 = v290;
  if (a2 <= 6)
  {
    v291 = 1;
  }

  else
  {
    v291 = 2;
  }

  v764 = v291;
  v736 = vdupq_n_s32(v291);
  v739 = a5 + 640;
  v9 = &v783;
  v751 = -1;
  i = v758;
  do
  {
    v754 = v79;
    v755 = v283;
    if (v283 == 80)
    {
      v292 = v738;
    }

    else
    {
      v292 = v283;
    }

    if (v81 < v80)
    {
      goto LABEL_1327;
    }

    v293 = v81;
    v294 = (v81 + 1);
    if (v294 > v756 || v293 > v294)
    {
      goto LABEL_1327;
    }

    ++v751;
    v295 = *v293;
    if (v285 == 7)
    {
      if (v292)
      {
        if (v284 >= 0x8B)
        {
          v302 = 139;
        }

        else
        {
          v302 = v284;
        }

        v303 = v302 - 5;
        if (v284 < 23)
        {
          v303 = 18;
        }

        v304 = (v295 + 5) / 6;
        v305 = v304 + v303 - 1;
        v306 = v295 - 6 * v304 + 3;
        if (!i)
        {
LABEL_509:
          if (!v292 || v295 < 61)
          {
            goto LABEL_512;
          }
        }
      }

      else if (v295 > 462)
      {
        v306 = 0;
        v305 = v295 - 368;
        if (!i)
        {
          goto LABEL_509;
        }
      }

      else
      {
        v305 = ((v295 + 5) / 6 + 17);
        v306 = v295 - 6 * v305 + 105;
        if (!i)
        {
          goto LABEL_509;
        }
      }

      v306 = 0;
      *(a1 + 888) = v305;
      v305 = *(a1 + 884);
LABEL_512:
      v841 = *v737;
      v842.i64[0] = *(a1 + 792);
      v752 = v305;
      Pred_lt_3or6_40(&v841, v305, v306, 0);
      v314 = a2;
      v315 = v758;
      goto LABEL_513;
    }

    v296 = *(a1 + 884);
    if (v296 + v730 <= 20)
    {
      v297 = 20;
    }

    else
    {
      v297 = v296 + v730;
    }

    v298 = v297 + v731;
    if ((v297 + v731) >= 0x8F)
    {
      v298 = 143;
    }

    if ((v297 + v731) > 0x8F)
    {
      v297 = v729;
    }

    if (v292)
    {
      if (v285 < 4)
      {
        v309 = v296 - v297;
        v310 = v297 + 5;
        if (v309 <= 5)
        {
          v311 = *(a1 + 884);
        }

        else
        {
          v311 = v310;
        }

        v312 = v298 - v311;
        v313 = v298 - 4;
        if (v312 > 4)
        {
          v311 = v313;
        }

        if (v295 > 3)
        {
          if (v295 > 0xB)
          {
            v308 = 0;
            v300 = v295 + v311 - 11;
          }

          else
          {
            v346 = 10923 * v295 - 54615;
            v300 = v311 + (v346 >> 15) - 1;
            v308 = -3 * (v346 >> 15) + v295 - 6;
          }
        }

        else
        {
          v308 = 0;
          v300 = v295 + v311 - 5;
        }

        goto LABEL_583;
      }

      v299 = 10923 * v295 + 21846;
      v300 = v297 + (v299 >> 15) - 1;
      v301 = -3 * (v299 >> 15);
    }

    else
    {
      if (v295 > 196)
      {
        v308 = 0;
        v300 = v295 - 112;
        goto LABEL_583;
      }

      v307 = (10923 * v295 + 21846) >> 15;
      v300 = v307 + 19;
      v301 = -3 * v307;
    }

    v308 = v301 + v295 + 1;
LABEL_583:
    *(a1 + 888) = v300;
    if (i)
    {
      if (v296 <= 142)
      {
        *(a1 + 884) = ++v296;
      }

      v308 = 0;
      if (*(a1 + 896) < 5 || *(a1 + 892) == 0 || v285 > 2)
      {
        v300 = v296;
      }
    }

    v349 = v285;
    v841 = *v737;
    v842.i64[0] = *(a1 + 792);
    v752 = v300;
    Pred_lt_3or6_40(&v841, v300, v308, 1);
    v314 = v349;
    if (v349 <= 1)
    {
      v350 = (v293 + 2);
      LODWORD(v9) = v756;
      v315 = v758;
      if ((v293 + 2) > v756)
      {
        goto LABEL_1327;
      }

      if (v294 > v350)
      {
        goto LABEL_1327;
      }

      v344 = v293 + 3;
      LODWORD(v9) = v756;
      if ((v293 + 3) > v756)
      {
        goto LABEL_1327;
      }

      if (v350 > v344)
      {
        goto LABEL_1327;
      }

      LODWORD(v9) = *v294;
      v351 = ((v9 >> 3) & 8) + 2 * v751;
      v352 = &startPos[v351];
      i = 4294959104;
      if (v352 >= dgray)
      {
        goto LABEL_1327;
      }

      if (v352 < startPos)
      {
        goto LABEL_1327;
      }

      v353 = &startPos[v351 + 1];
      if (v353 >= dgray || v353 < startPos)
      {
        goto LABEL_1327;
      }

      v354 = *v350;
      v355 = 5 * (v9 & 7) + *v352;
      v356 = *v353;
      v791 = 0u;
      v792 = 0u;
      LODWORD(v9) = 5 * ((v9 >> 3) & 7) + v356;
      v789 = 0u;
      v790 = 0u;
      v787 = 0u;
      v788 = 0u;
      v785 = 0u;
      v786 = 0u;
      v357 = 1;
      v783 = 0u;
      v784 = 0u;
      do
      {
        v358 = v357;
        v359 = (&v783 + 4 * v355);
        v360 = (v359->i64 + 4);
        if (v359 < &v783 || v360 > &v793 || v359 > v360)
        {
          goto LABEL_1327;
        }

        v357 = 0;
        if (v354)
        {
          v363 = 0x1FFF;
        }

        else
        {
          v363 = -8192;
        }

        v354 >>= 1;
        v359->i32[0] = v363;
        v355 = v9;
      }

      while ((v358 & 1) != 0);
      v345 = 2 * **(&v744 + 1);
      v749 = 1;
      LODWORD(v9) = a2 == 0;
      goto LABEL_684;
    }

    v315 = v758;
    if (v349 == 3)
    {
      v9 = (v293 + 2);
      if ((v293 + 2) > v756)
      {
        goto LABEL_1327;
      }

      if (v294 > v9)
      {
        goto LABEL_1327;
      }

      v344 = v293 + 3;
      if ((v293 + 3) > v756 || v9 > v344)
      {
        goto LABEL_1327;
      }

      v377 = 0;
      v378 = *v294;
      LODWORD(v9) = *v9;
      v379 = vdup_n_s32(v378);
      v841.i32[0] = 5 * (v378 & 7);
      *(v841.i64 + 4) = vadd_s32(vmla_s32(vand_s8(vshl_u32(v379, 0xFFFFFFFAFFFFFFFELL), 0x200000002), vand_s8(vshl_u32(v379, 0xFFFFFFF8FFFFFFFCLL), 0x700000007), 0x500000005), 0x200000001);
      v783 = 0u;
      v784 = 0u;
      v785 = 0u;
      v786 = 0u;
      v787 = 0u;
      v788 = 0u;
      v789 = 0u;
      v790 = 0u;
      v791 = 0u;
      v792 = 0u;
      do
      {
        v380 = (&v783 + 4 * v841.i32[v377]);
        v381 = (v380->i64 + 4);
        if (v380 < &v783 || v381 > &v793 || v380 > v381)
        {
          goto LABEL_1327;
        }

        if (v9)
        {
          v384 = 0x1FFF;
        }

        else
        {
          v384 = -8192;
        }

        LODWORD(v9) = v9 >> 1;
        v380->i32[0] = v384;
        ++v377;
      }

      while (v377 != 3);
LABEL_683:
      v749 = 0;
      LODWORD(v9) = 0;
      v345 = 2 * **(&v744 + 1);
      goto LABEL_684;
    }

    if (v349 == 2)
    {
      v364 = (v293 + 2);
      LODWORD(v9) = v756;
      if ((v293 + 2) > v756)
      {
        goto LABEL_1327;
      }

      if (v294 > v364)
      {
        goto LABEL_1327;
      }

      v344 = v293 + 3;
      LODWORD(v9) = v756;
      if ((v293 + 3) > v756 || v364 > v344)
      {
        goto LABEL_1327;
      }

      v365 = *v294;
      v366 = *v364;
      v791 = 0u;
      v792 = 0u;
      v367 = 5 * ((v365 >> 1) & 7) + 2 * (v365 & 1) + 1;
      v368 = (v365 >> 4) & 3;
      v789 = 0u;
      v790 = 0u;
      v369 = 5 * ((v365 >> 6) & 7);
      v787 = 0u;
      v788 = 0u;
      if (v368 == 3)
      {
        v368 = 4;
      }

      LODWORD(v9) = v368 + v369;
      v785 = 0uLL;
      v786 = 0uLL;
      v783 = 0uLL;
      v784 = 0uLL;
      v370 = 1;
      i = 4294959104;
      do
      {
        v371 = v370;
        v372 = (&v783 + 4 * v367);
        v373 = (v372->i64 + 4);
        if (v372 < &v783 || v373 > &v793 || v372 > v373)
        {
          goto LABEL_1327;
        }

        v370 = 0;
        if (v366)
        {
          v376 = 0x1FFF;
        }

        else
        {
          v376 = -8192;
        }

        v366 >>= 1;
        v372->i32[0] = v376;
        v367 = v9;
      }

      while ((v371 & 1) != 0);
      goto LABEL_683;
    }

    if (v349 <= 5)
    {
      v385 = (v293 + 2);
      LODWORD(v9) = v756;
      if ((v293 + 2) > v756)
      {
        goto LABEL_1327;
      }

      if (v294 > v385)
      {
        goto LABEL_1327;
      }

      v344 = v293 + 3;
      LODWORD(v9) = v756;
      if ((v293 + 3) > v756)
      {
        goto LABEL_1327;
      }

      if (v385 > v344)
      {
        goto LABEL_1327;
      }

      v9 = *v294;
      v386 = &dgray[4 * (v9 & 7)];
      if (v386 < dgray)
      {
        goto LABEL_1327;
      }

      if (v386 + 4 > pdown)
      {
        goto LABEL_1327;
      }

      if (v386 > v386 + 4)
      {
        goto LABEL_1327;
      }

      v387 = *v385;
      v841.i32[0] = 5 * *v386;
      v388 = &dgray[4 * ((v9 >> 3) & 7)];
      if (v388 < dgray)
      {
        goto LABEL_1327;
      }

      if (v388 + 4 > pdown)
      {
        goto LABEL_1327;
      }

      if (v388 > v388 + 4)
      {
        goto LABEL_1327;
      }

      v841.i32[1] = 5 * *v388 + 1;
      v389 = &dgray[4 * ((v9 >> 6) & 7)];
      if (v389 < dgray)
      {
        goto LABEL_1327;
      }

      if (v389 + 4 > pdown)
      {
        goto LABEL_1327;
      }

      if (v389 > v389 + 4)
      {
        goto LABEL_1327;
      }

      v841.i32[2] = 5 * *v389 + 2;
      v390 = &dgray[4 * ((v9 >> 10) & 7)];
      if (v390 < dgray || v390 + 4 > pdown || v390 > v390 + 4)
      {
        goto LABEL_1327;
      }

      v391 = 0;
      v841.i32[3] = ((v9 >> 9) & 1) + 5 * *v390 + 3;
      v783 = 0u;
      v784 = 0u;
      v785 = 0u;
      v786 = 0u;
      v787 = 0u;
      v788 = 0u;
      v789 = 0u;
      v790 = 0u;
      v791 = 0u;
      v792 = 0u;
      do
      {
        v9 = &v783 + 4 * v841.i32[v391];
        v392 = v9 + 4;
        if (v9 < &v783 || v392 > &v793 || v9 > v392)
        {
          goto LABEL_1327;
        }

        if (v387)
        {
          v395 = 0x1FFF;
        }

        else
        {
          v395 = -8192;
        }

        v387 >>= 1;
        *v9 = v395;
        ++v391;
      }

      while (v391 != 4);
      goto LABEL_683;
    }

    if (v349 == 6)
    {
      v622.i64[0] = 0xAAAAAAAAAAAAAAAALL;
      v622.i64[1] = 0xAAAAAAAAAAAAAAAALL;
      v842 = v622;
      v841 = v622;
      v783 = 0u;
      v784 = 0u;
      v785 = 0u;
      v786 = 0u;
      v787 = 0u;
      v788 = 0u;
      v789 = 0u;
      v790 = 0u;
      v623 = v293 + 5;
      v791 = 0u;
      v792 = 0u;
      LODWORD(v9) = v756;
      if ((v293 + 5) > v756)
      {
        goto LABEL_1327;
      }

      if (v623 < v743)
      {
        goto LABEL_1327;
      }

      LODWORD(v9) = v756;
      if ((v756 - v623) < 5)
      {
        goto LABEL_1327;
      }

      decompress10((v293[5] >> 3), v293[5] & 7, 0, 4u, 1u, &v841);
      decompress10((v293[6] >> 3), v293[6] & 7, 2u, 6u, 5u, &v841);
      v315 = v758;
      v624 = 0;
      v9 = 0;
      v625 = v293[7];
      v626 = (25 * (v625 >> 2) + 12) >> 5;
      v627 = 6554 * v626;
      v628 = (6554 * v626) >> 15;
      i = (5 * v628);
      v629 = v626 - i;
      if (v627 < 0)
      {
        v629 = 4 - v629;
      }

      v841.i32[3] = v625 & 1 | (2 * v629);
      v842.i32[3] = (v625 >> 1) & 1 | (2 * v628);
      v630 = &v842;
      do
      {
        v631 = (v293 + v9 + 2);
        v632 = v293 + v9 + 4;
        if (v631 < v743 || v632 > v756 || v631 > v632)
        {
          goto LABEL_1327;
        }

        v635 = 4 * v630[-1].i32[0];
        v636 = *v631 ? -8191 : 0x1FFF;
        v637 = (&v783 + 4 * v624 + 4 * v635);
        i = v637->u64 + 4;
        v638 = v637 < &v783 || i > &v793;
        if (v638 || v637 > i)
        {
          goto LABEL_1327;
        }

        i = v630->u32[0];
        v637->i32[0] = v636;
        v640 = (&v783 + 16 * i + 4 * v624);
        v641 = (v640->i64 + 4);
        v642 = v640 < &v783 || v641 > &v793;
        if (v642 || v640 > v641)
        {
          goto LABEL_1327;
        }

        v630 = (v630 + 4);
        i = (4 * i);
        if (i >= v635)
        {
          v644 = v636;
        }

        else
        {
          v644 = -v636;
        }

        v640->i32[0] += v644;
        v9 += 2;
        ++v624;
      }

      while (v9 != 8);
      v749 = 0;
      LODWORD(v9) = 0;
      v344 = v293 + 8;
      v345 = 2 * **(&v744 + 1);
      v314 = a2;
      goto LABEL_684;
    }

LABEL_513:
    v316 = v293 + 2;
    if ((v293 + 2) > v756 || v294 > v316)
    {
      goto LABEL_1327;
    }

    if (v315)
    {
      ec_gain_pitch(*(a1 + 1016), *(a1 + 976), &v765);
      v315 = v758;
      v314 = a2;
      v317 = v765;
      v9 = *(a1 + 1016);
    }

    else
    {
      v318 = &qua_gain_pitch[*v294];
      LODWORD(v9) = v318 + 1 <= table_gain_highrates && v318 <= v318 + 1 && v318 >= qua_gain_pitch;
      if (v314 == 7)
      {
        if ((v9 & 1) == 0)
        {
          goto LABEL_1327;
        }

        v317 = *v318 & 0xFFFFFFFC;
      }

      else
      {
        if (!v9)
        {
          goto LABEL_1327;
        }

        v317 = *v318;
      }

      v765 = v317;
      v9 = *(a1 + 1016);
      if (*(a1 + 972))
      {
        v321 = *(v9 + 24);
        if (v317 > v321)
        {
          v765 = *(v9 + 24);
          v317 = v321;
        }
      }

      *(v9 + 24) = v317;
    }

    if (v317 >= 0x4000)
    {
      v322 = 0x4000;
    }

    else
    {
      v322 = v317;
    }

    *v9 = *(v9 + 4);
    *(v9 + 16) = v322;
    *(v9 + 20) = v322;
    LODWORD(v9) = v756 - v316;
    if ((v756 - v316) < 19)
    {
      goto LABEL_1327;
    }

    v9 = 0;
    v791 = 0u;
    v792 = 0u;
    v789 = 0u;
    v790 = 0u;
    v787 = 0u;
    v788 = 0u;
    v785 = 0u;
    v786 = 0u;
    v783 = 0u;
    v784 = 0u;
    do
    {
      v323 = &v293[v9];
      v324 = v323[2];
      v325 = &dgray[4 * (v324 & 7)];
      v326 = v325 + 4;
      if (v325 < dgray || v326 > pdown || v325 > v326)
      {
        goto LABEL_1327;
      }

      v329 = 5 * *v325;
      v330 = (v324 & 8) != 0 ? -4096 : 4096;
      v331 = &dgray[4 * (v323[7] & 7)];
      v332 = v331 + 4;
      v333 = v331 < dgray || v332 > pdown;
      v334 = v333 || v331 > v332;
      v335 = (&v783 + 4 * v9 + 4 * v329);
      i = v335->u64 + 4;
      v336 = !v334 && v335 >= &v783;
      v337 = !v336 || i > &v793;
      if (v337 || v335 > i)
      {
        goto LABEL_1327;
      }

      i = (5 * *v331);
      v335->i32[0] = v330;
      v339 = (&v783 + 4 * v9 + 4 * i);
      v340 = (v339->i64 + 4);
      v341 = v339 < &v783 || v340 > &v793;
      if (v341 || v339 > v340)
      {
        goto LABEL_1327;
      }

      if (i >= v329)
      {
        v343 = v330;
      }

      else
      {
        v343 = -v330;
      }

      v339->i32[0] += v343;
      ++v9;
    }

    while (v9 != 5);
    v749 = 0;
    LODWORD(v9) = 0;
    v344 = v293 + 12;
    if (v317 < 0x4000)
    {
      v345 = 2 * v317;
    }

    else
    {
      v345 = 0x7FFF;
    }

LABEL_684:
    if (v752 <= 39)
    {
      v396 = v752 - 40;
      v397 = &v783;
      v398 = (&v783 + 4 * v752);
      do
      {
        v399 = (v397->i64 + 4);
        v401 = v397 < &v783 || v399 > &v793 || v397 > v399;
        v402 = (v398->i64 + 4);
        if (v401 || v398 < &v783 || v402 > &v793 || v398 > v402)
        {
          goto LABEL_1327;
        }

        v406 = v397->i32[0];
        v397 = (v397 + 4);
        i = v398->u32[0];
        v398->i32[0] = i + ((v406 * v345) >> 15);
        v398 = (v398 + 4);
        v143 = __CFADD__(v396++, 1);
      }

      while (!v143);
    }

    v745 = 1 - v746;
    if (!v9)
    {
      if ((a2 - 1) < 4 || v314 == 6)
      {
        if (v344 < v743)
        {
          goto LABEL_1327;
        }

        LODWORD(v9) = v344 + 2;
        v748 = v344 + 1;
        if ((v344 + 1) > v756 || v344 > v748)
        {
          goto LABEL_1327;
        }

        if (v315)
        {
          ec_gain_pitch(*(a1 + 1016), *(a1 + 976), &v765);
          ec_gain_code(*(a1 + 1024), *(a1 + 1032), *(a1 + 976), &v766);
          v9 = *(a1 + 1016);
          v409 = *(a1 + 972);
          v408 = v765;
        }

        else
        {
          Dec_gain(*(a1 + 1032), v314, *v344, &v783, v745, &v765, &v766);
          v9 = *(a1 + 1016);
          v409 = *(a1 + 972);
          v408 = v765;
          if (*(a1 + 972))
          {
            v422 = *(v9 + 24);
            if (v765 > v422)
            {
              v765 = *(v9 + 24);
              v408 = v422;
            }
          }

          *(v9 + 24) = v408;
        }

        v412 = v758;
        if (v408 >= 0x4000)
        {
          v423 = 0x4000;
        }

        else
        {
          v423 = v408;
        }

        *v9 = *(v9 + 4);
        *(v9 + 16) = v423;
        *(v9 + 20) = v423;
        v424 = *(a1 + 1024);
        LODWORD(v9) = v766;
        if (v758)
        {
          v411 = a2;
          v415 = v736;
          v416.i64[0] = 0x400000004000;
          v416.i64[1] = 0x400000004000;
          v417.i64[0] = 0x800000008000;
          v417.i64[1] = 0x800000008000;
          v418.i64[0] = 0x7F0000007FLL;
          v418.i64[1] = 0x7F0000007FLL;
        }

        else
        {
          v411 = a2;
          v415 = v736;
          v416.i64[0] = 0x400000004000;
          v416.i64[1] = 0x400000004000;
          v417.i64[0] = 0x800000008000;
          v417.i64[1] = 0x800000008000;
          v418.i64[0] = 0x7F0000007FLL;
          v418.i64[1] = 0x7F0000007FLL;
          if (v409)
          {
            v425 = *(v424 + 24);
            if (v766 > v425)
            {
              v766 = *(v424 + 24);
              LODWORD(v9) = v425;
            }
          }

          *(v424 + 24) = v9;
        }

        *v424 = *(v424 + 4);
        *(v424 + 16) = v9;
        *(v424 + 20) = v9;
        if (v408 >= 13017)
        {
          v421 = 13017;
        }

        else
        {
          v421 = v408;
        }

        if (v411 == 6)
        {
          if (*(a1 + 884) <= 45)
          {
            v420 = v421;
          }

          else
          {
            v420 = v421 >> 2;
          }
        }

        else
        {
          v420 = v421;
        }
      }

      else
      {
        if (v344 < v743)
        {
          goto LABEL_1327;
        }

        LODWORD(v9) = v344 + 2;
        v748 = v344 + 1;
        if ((v344 + 1) > v756 || v344 > v748)
        {
          goto LABEL_1327;
        }

        if (v314 == 5)
        {
          if (v315)
          {
            ec_gain_pitch(*(a1 + 1016), *(a1 + 976), &v765);
            v315 = v758;
            v408 = v765;
            v621 = *(a1 + 1016);
          }

          else
          {
            v9 = qua_gain_pitch;
            v646 = &qua_gain_pitch[*v344];
            if (v646 < qua_gain_pitch)
            {
              goto LABEL_1327;
            }

            v9 = (v646 + 1);
            if (v646 + 1 > table_gain_highrates || v646 > v9)
            {
              goto LABEL_1327;
            }

            v408 = *v646;
            v765 = *v646;
            v621 = *(a1 + 1016);
            if (*(a1 + 972))
            {
              v647 = *(v621 + 24);
              if (v408 > v647)
              {
                v765 = *(v621 + 24);
                v408 = v647;
              }
            }

            *(v621 + 24) = v408;
          }

          if (v408 >= 0x4000)
          {
            LODWORD(v9) = 0x4000;
          }

          else
          {
            LODWORD(v9) = v408;
          }

          *v621 = *(v621 + 4);
          *(v621 + 16) = v9;
          *(v621 + 20) = v9;
          v648 = v344 + 2;
          if (v648 > v756 || v748 > v648)
          {
            goto LABEL_1327;
          }

          if (v315)
          {
            ec_gain_code(*(a1 + 1024), *(a1 + 1032), *(a1 + 976), &v766);
            v649 = *(a1 + 1024);
            LODWORD(v9) = v766;
          }

          else
          {
            d_gain_code(*(a1 + 1032), 5, *v748, &v783, &v766);
            v649 = *(a1 + 1024);
            LODWORD(v9) = v766;
            if (*(a1 + 972))
            {
              v651 = *(v649 + 24);
              if (v766 > v651)
              {
                v766 = *(v649 + 24);
                LODWORD(v9) = v651;
              }
            }

            *(v649 + 24) = v9;
          }

          v411 = a2;
          v412 = v758;
          v415 = v736;
          v416.i64[0] = 0x400000004000;
          v416.i64[1] = 0x400000004000;
          v417.i64[0] = 0x800000008000;
          v417.i64[1] = 0x800000008000;
          v418.i64[0] = 0x7F0000007FLL;
          v418.i64[1] = 0x7F0000007FLL;
          *v649 = *(v649 + 4);
          *(v649 + 16) = v9;
          *(v649 + 20) = v9;
          if (v408 >= 13017)
          {
            v421 = 13017;
          }

          else
          {
            v421 = v408;
          }

          v420 = v421;
          v748 = v648;
        }

        else
        {
          if (v315)
          {
            ec_gain_code(*(a1 + 1024), *(a1 + 1032), *(a1 + 976), &v766);
            v411 = a2;
            v645 = *(a1 + 1024);
            LODWORD(v9) = v766;
          }

          else
          {
            d_gain_code(*(a1 + 1032), v314, *v344, &v783, &v766);
            v645 = *(a1 + 1024);
            LODWORD(v9) = v766;
            if (*(a1 + 972))
            {
              v650 = *(v645 + 24);
              if (v766 > v650)
              {
                v766 = *(v645 + 24);
                LODWORD(v9) = v650;
              }
            }

            *(v645 + 24) = v9;
            v411 = a2;
          }

          v412 = v758;
          v415 = v736;
          v416.i64[0] = 0x400000004000;
          v416.i64[1] = 0x400000004000;
          v417.i64[0] = 0x800000008000;
          v417.i64[1] = 0x800000008000;
          v418.i64[0] = 0x7F0000007FLL;
          v418.i64[1] = 0x7F0000007FLL;
          *v645 = *(v645 + 4);
          *(v645 + 16) = v9;
          *(v645 + 20) = v9;
          v408 = v765;
          v420 = v765;
          if (!v411)
          {
            goto LABEL_736;
          }

LABEL_737:
          if (v408 >= 13017)
          {
            v421 = 13017;
          }

          else
          {
            v421 = v408;
          }
        }
      }

      **(&v744 + 1) = v421;
      goto LABEL_762;
    }

    if (v746 == 1)
    {
      v748 = v344;
      if (v315)
      {
        goto LABEL_707;
      }
    }

    else
    {
      if (v344 < v743)
      {
        goto LABEL_1327;
      }

      LODWORD(v9) = v344 + 2;
      v748 = v344 + 1;
      if ((v344 + 1) > v756 || v344 > v748)
      {
        goto LABEL_1327;
      }

      v728 = *v344;
      if (v315)
      {
LABEL_707:
        ec_gain_pitch(*(a1 + 1016), *(a1 + 976), &v765);
        ec_gain_code(*(a1 + 1024), *(a1 + 1032), *(a1 + 976), &v766);
        v9 = *(a1 + 1016);
        v407 = *(a1 + 972);
        v408 = v765;
        goto LABEL_723;
      }
    }

    Dec_gain(*(a1 + 1032), 0, v728, &v783, v745, &v765, &v766);
    v9 = *(a1 + 1016);
    v407 = *(a1 + 972);
    v408 = v765;
    if (*(a1 + 972))
    {
      v410 = *(v9 + 24);
      if (v765 > v410)
      {
        v765 = *(v9 + 24);
        v408 = v410;
      }
    }

    *(v9 + 24) = v408;
LABEL_723:
    v411 = a2;
    v412 = v758;
    if (v408 >= 0x4000)
    {
      v413 = 0x4000;
    }

    else
    {
      v413 = v408;
    }

    *v9 = *(v9 + 4);
    *(v9 + 16) = v413;
    *(v9 + 20) = v413;
    v414 = *(a1 + 1024);
    LODWORD(v9) = v766;
    if (v758)
    {
      v415 = v736;
      v416.i64[0] = 0x400000004000;
      v416.i64[1] = 0x400000004000;
      v417.i64[0] = 0x800000008000;
      v417.i64[1] = 0x800000008000;
      v418.i64[0] = 0x7F0000007FLL;
      v418.i64[1] = 0x7F0000007FLL;
    }

    else
    {
      v415 = v736;
      v416.i64[0] = 0x400000004000;
      v416.i64[1] = 0x400000004000;
      v417.i64[0] = 0x800000008000;
      v417.i64[1] = 0x800000008000;
      v418.i64[0] = 0x7F0000007FLL;
      v418.i64[1] = 0x7F0000007FLL;
      if (v407)
      {
        v419 = *(v414 + 24);
        if (v766 > v419)
        {
          v766 = *(v414 + 24);
          LODWORD(v9) = v419;
        }
      }

      *(v414 + 24) = v9;
    }

    *v414 = *(v414 + 4);
    *(v414 + 16) = v9;
    *(v414 + 20) = v9;
    if (v408 >= 13017)
    {
      v420 = 13017;
    }

    else
    {
      v420 = v408;
    }

    if (a2)
    {
      goto LABEL_737;
    }

LABEL_736:
    if (v746 == 1)
    {
      goto LABEL_737;
    }

LABEL_762:
    if (v420 < 0x4000)
    {
      v426 = 2 * v420;
    }

    else
    {
      v426 = 0x7FFF;
    }

    if (v426 > 0x4000)
    {
      v427 = *(a1 + 776);
      v428 = *(a1 + 784);
      v429 = v781;
      v430 = 40;
      v431 = *(a1 + 792);
      do
      {
        i = (v427 + 1);
        if ((v427 + 1) > v428 || v427 > i || v427 < v431)
        {
          goto LABEL_1327;
        }

        v434 = *v427++;
        i = ((((((v434 * v426) >> 15) * v408) << (a2 != 7)) + 0x8000) >> 16);
        *v429++ = i;
        --v430;
      }

      while (v430);
    }

    if (!v412)
    {
      v435 = 8;
      v436 = (a1 + 900);
      do
      {
        v437 = (v436 + 1);
        if ((v436 + 2) > v760 || v437 > (v436 + 2) || v437 > v760 || v436 > v437)
        {
          goto LABEL_1327;
        }

        *v436 = v436[1];
        ++v436;
        --v435;
      }

      while (v435);
      *(a1 + 932) = v408;
    }

    v441 = *(a1 + 892);
    if (v411 == 2)
    {
      v442 = 0;
    }

    else
    {
      v442 = v749 ^ 1;
    }

    v443 = *(a1 + 972);
    if (v412 | v443 && !v442 && v441 && v408 > 12288)
    {
      v444 = (v408 - 12288) >> 1;
      if (v444 >= 0x999)
      {
        v444 = 2457;
      }

      v408 = v444 | 0x3000;
      v765 = v444 | 0x3000;
    }

    v445 = *(a1 + 1008) + 40;
    if (v755 > 0x4Fu)
    {
      if (v755 == 120)
      {
        v449 = *(*(a1 + 1008) + 56);
        v793 = *v445;
        v794 = v449;
        v795 = *(v445 + 32);
      }

      else if (v755 == 80)
      {
        for (jj = 0; jj != 10; ++jj)
        {
          v793.i32[jj] = *(v445 + jj * 4) + (v796.i32[jj] >> 2) - (*(v445 + jj * 4) >> 2);
        }
      }
    }

    else if (v755)
    {
      if (v755 == 40)
      {
        for (kk = 0; kk != 10; ++kk)
        {
          v793.i32[kk] = (*(v445 + kk * 4) >> 1) + (v796.i32[kk] >> 1);
        }
      }
    }

    else
    {
      for (mm = 0; mm != 10; ++mm)
      {
        v793.i32[mm] = v796.i32[mm] - (v796.i32[mm] >> 2) + (*(v445 + mm * 4) >> 2);
      }
    }

    v450 = 0;
    v451 = *(a1 + 992);
    v452 = *(a1 + 1000);
    v747 = *(a1 + 974);
    v453 = *(a1 + 896);
    v843.i64[0] = 0xAAAAAAAAAAAAAAAALL;
    v454.i64[0] = 0xAAAAAAAAAAAAAAAALL;
    v454.i64[1] = 0xAAAAAAAAAAAAAAAALL;
    v842 = v454;
    v841 = v454;
    v455 = *(v451 + 8);
    i = *(v451 + 12);
    *(v451 + 4) = v455;
    *(v451 + 8) = i;
    v456 = *(v451 + 16);
    v457 = *(v451 + 20);
    *(v451 + 12) = v456;
    *(v451 + 16) = v457;
    v458 = *(v451 + 24);
    v459 = *(v451 + 28);
    *(v451 + 20) = v458;
    *(v451 + 24) = v459;
    *(v451 + 28) = v9;
    do
    {
      v460 = *(v452 + v450 * 4);
      v461 = v460 - v793.i32[v450];
      if (v461)
      {
        if (v461 >= 0)
        {
          v462 = v460 - v793.i32[v450];
        }

        else
        {
          v462 = v793.i32[v450] - v460;
        }

        if ((v462 & 0x2000) == 0)
        {
          v463 = __clz(v462 & 0x1FFF) ^ 0x1F;
          v462 <<= 13 - v463;
          v464 = 15 - v463;
          if (!v460)
          {
            goto LABEL_823;
          }

          goto LABEL_825;
        }
      }

      else
      {
        v462 = 0;
      }

      v464 = 2;
      if (!v460)
      {
LABEL_823:
        v465 = 0;
        v466 = v462 << 15;
        goto LABEL_829;
      }

LABEL_825:
      v467 = __clz(*(v452 + v450 * 4) & 0x3FFF);
      v468 = v460 << (14 - (v467 ^ 0x1F));
      v465 = 17 - v467;
      if ((v460 & 0x4000) != 0)
      {
        v465 = 0;
      }

      else
      {
        v460 = v468;
      }

      v466 = (v462 << 15) / v460;
LABEL_829:
      v469 = __OFADD__(v465, v464);
      v470 = v465 + v464;
      v471 = v466 >> v470;
      v472 = v466 << -v470;
      if (v470 < 0 == v469)
      {
        v472 = v471;
      }

      v841.i32[v450++] = v472;
    }

    while (v450 != 10);
    v473 = vaddvq_s32(vaddq_s32(v841, v842)) + v843.i32[0] + v843.i32[1];
    if (v473 >= 0x7FFF)
    {
      v474 = 0x7FFF;
    }

    else
    {
      v474 = v473;
    }

    if (v473 >= 5326)
    {
      v475 = *(v451 + 32) + 1;
    }

    else
    {
      v475 = 0;
    }

    *(v451 + 32) = v475;
    if (v475 >= 11)
    {
      *v451 = 0;
    }

    v476 = v758;
    if (v411 < 4 || v411 == 6)
    {
      v477 = *v451;
      if (v473 > 5325 || v477 <= 39)
      {
        v479 = v443 | v732;
        v482 = 0x2000;
      }

      else
      {
        if (v747)
        {
          v478 = v740;
        }

        else
        {
          v478 = 0;
        }

        v479 = v443 | v732;
        if (v443 | v732)
        {
          v478 = 1;
        }

        if (v441 && v411 <= 2 && v453 >= 2 && v478)
        {
          v480 = v474 - 4506;
          v481 = v473 <= 4506;
        }

        else
        {
          v480 = v474 - 3277;
          v481 = v473 <= 3277;
        }

        if (v481)
        {
          v480 = 0;
        }

        if (v480 >= 2049)
        {
          v482 = 0x2000;
        }

        else
        {
          v482 = 4 * v480;
        }

        v476 = v758;
      }

      v483 = v456 + v9;
      v484 = v456 + v9 + v457 + v458 + v459;
      if (v484 <= 163822)
      {
        v485 = (3277 * v484 + 0x2000) >> 14;
      }

      else
      {
        v485 = 0x7FFF;
      }

      if (v441 && v411 <= 2 && v479)
      {
        v486 = v483 + v455 + i + v457 + v458 + v459;
        i = 9362;
        v485 = (9362 * v486 + 0x8000) >> 16;
      }

      v487 = (v485 * (0x2000 - v482) + v482 * v9 + 4096) >> 13;
    }

    else
    {
      v477 = *v451;
      v487 = v9;
    }

    if (v477 > -2)
    {
      v488 = v477 + 1;
    }

    else
    {
      v488 = 40;
    }

    *v451 = v488;
    if (v735)
    {
      v487 = v9;
    }

    v489 = *(a1 + 776);
    v490 = *(a1 + 784);
    if (v489 > v490)
    {
      goto LABEL_1327;
    }

    if (v490 - v489 < 0xA0)
    {
      goto LABEL_1327;
    }

    v491 = *(a1 + 792);
    if (v491 > v489)
    {
      goto LABEL_1327;
    }

    i = 0;
    v492 = v489[1];
    v771 = *v489;
    v772 = v492;
    v493 = v489[2];
    v494 = v489[3];
    v495 = v489[5];
    v775 = v489[4];
    v776 = v495;
    v773 = v493;
    v774 = v494;
    v496 = v489[6];
    v497 = v489[7];
    v498 = v489[8];
    v499 = v489[9];
    v500 = v408 >> (a2 > 6);
    v779 = v498;
    v780 = v499;
    v777 = v496;
    v778 = v497;
    do
    {
      v501 = (*(a1 + 776) + i);
      v502 = v501 + 1;
      if (v501 < v491 || v502 > *(a1 + 784) || v501 > v502)
      {
        goto LABEL_1327;
      }

      v505 = *v501 * v500 + *(v783.i32 + i) * v9;
      v506 = v505 << v764;
      v507 = (v505 << v764) ^ v505;
      if (v505 << v764 < 0)
      {
        v508 = -1073741824;
      }

      else
      {
        v508 = 1073725439;
      }

      if (v505 < 0)
      {
        v509 = -1073741824;
      }

      else
      {
        v509 = 1073725439;
      }

      if (v507 >= 0)
      {
        v509 = v508;
      }

      if (((v506 ^ (v506 >> 1)) & 0x40000000) == 0)
      {
        v509 = v506;
      }

      *v501 = (v509 + 0x4000) >> 15;
      i += 4;
    }

    while (i != 160);
    v510 = *(a1 + 1040);
    if (*(a1 + 896) < 4)
    {
      LOBYTE(v442) = 1;
    }

    v511 = v734;
    if (!*(a1 + 892))
    {
      v511 = 1;
    }

    v512 = v511 | v442;
    *(v510 + 28) = (v512 & 1) == 0;
    *(v510 + 4) = *v510;
    *v510 = v408;
    v513 = v408 > 9830;
    if (v408 >= 14746)
    {
      v513 = 2;
    }

    if (v487 <= 2 * *(v510 + 20))
    {
      v515 = *(v510 + 30);
      if (v515 >= 1)
      {
        *(v510 + 30) = v515 - 1;
        LOWORD(v515) = v515 - 1;
      }

      if (v515)
      {
        v514 = 0;
      }

      else
      {
        v516 = 0;
        v517 = 0;
        do
        {
          if (*(v510 + v516) < 9830)
          {
            ++v517;
          }

          v516 += 4;
        }

        while (v516 != 20);
        LOWORD(v515) = 0;
        if (v517 > 2)
        {
          v513 = 0;
        }

        v514 = 1;
      }
    }

    else
    {
      v514 = 0;
      LOWORD(v515) = 2;
      *(v510 + 30) = 2;
    }

    if (v513 <= *(v510 + 24) + 1)
    {
      v514 = 0;
    }

    v518 = v513 - v514;
    if (v515 > 0 && v518 < 2)
    {
      ++v518;
    }

    i = 2;
    if (v487 < 10)
    {
      v518 = 2;
    }

    if (v512)
    {
      LODWORD(v9) = v518;
    }

    else
    {
      LODWORD(v9) = 0;
    }

    *(v510 + 20) = v487;
    *(v510 + 24) = v9;
    if (v9 <= 1 && (v411 > 7 || ((1 << v411) & 0xD0) == 0))
    {
      v581 = 0;
      i = 0;
      v582.i64[0] = 0xAAAAAAAAAAAAAAAALL;
      v582.i64[1] = 0xAAAAAAAAAAAAAAAALL;
      v850 = v582;
      v849 = v582;
      v848 = v582;
      v847 = v582;
      v846 = v582;
      v845 = v582;
      v844 = v582;
      v843 = v582;
      v842 = v582;
      v841 = v582;
      *v833 = v582;
      *&v833[16] = v582;
      *&v833[32] = v582;
      v834 = v582;
      v835 = v582;
      v836 = v582;
      v837 = v582;
      v838 = v582;
      v839 = v582;
      v840 = v582;
      do
      {
        if (v783.i32[v581])
        {
          v583 = &v833[4 * i];
          v584 = (v583->i64 + 4);
          if (v583 < v833 || v584 > &v841 || v583 > v584)
          {
            goto LABEL_1327;
          }

          v583->i32[0] = v581;
          i = (i + 1);
        }

        ++v581;
      }

      while (v581 != 40);
      v847 = v789;
      v848 = v790;
      v849 = v791;
      v850 = v792;
      v843 = v785;
      v844 = v786;
      v845 = v787;
      v846 = v788;
      v841 = v783;
      v842 = v784;
      v791 = 0u;
      v792 = 0u;
      v789 = 0u;
      v790 = 0u;
      v587 = v9 == 0;
      if (v9)
      {
        v9 = &ph_imp_low;
      }

      else
      {
        v9 = &ph_imp_mid_MR795;
      }

      v787 = 0uLL;
      v788 = 0uLL;
      if (v587)
      {
        v588 = &ph_imp_low;
      }

      else
      {
        v588 = ph_imp_mid;
      }

      v589 = &ph_imp_low_MR795;
      if (v587)
      {
        v589 = sqrt_table;
      }

      v785 = 0uLL;
      v786 = 0uLL;
      if (v587)
      {
        v590 = &ph_imp_low_MR795;
      }

      else
      {
        v590 = &ph_imp_mid_MR795;
      }

      if (v411 == 5)
      {
        v9 = v589;
        v588 = v590;
      }

      v783 = 0uLL;
      v784 = 0uLL;
      if (i >= 1)
      {
        v591 = 0;
        i = i & ~(i >> 31);
        while (1)
        {
          v592 = &v833[4 * v591];
          v593 = v592 + 1;
          if (v592 < v833 || v593 > &v841 || v592 > v593)
          {
            goto LABEL_1327;
          }

          v596 = *v592;
          if (v596 > 39)
          {
            break;
          }

          v597 = (&v841 + 4 * v596);
          v598 = (v597->i64 + 4);
          if (v597 < &v841 || v598 > v851 || v597 > v598)
          {
            goto LABEL_1327;
          }

          v601 = (40 - v596);
          v602 = (&v783 + 4 * v596);
          v603 = v601;
          v604 = v588;
          do
          {
            if (v604 < v588 || (v604 + 1) > v9 || v604 > v604 + 1 || v602 < &v783 || (v602->i64 + 4) > &v793 || v602 > (v602->i64 + 4))
            {
              goto LABEL_1327;
            }

            v605 = *v604++;
            v602->i32[0] += (v605 * v597->i32[0]) >> 15;
            v602 = (v602 + 4);
            --v603;
          }

          while (v603);
          if (v596 >= 1)
          {
            goto LABEL_1082;
          }

LABEL_1097:
          if (++v591 == i)
          {
            goto LABEL_932;
          }
        }

        v601 = 0;
LABEL_1082:
        v606 = (&v841 + 4 * v596);
        v607 = (v606->i64 + 4);
        if (v606 < &v841 || v607 > v851 || v606 > v607)
        {
          goto LABEL_1327;
        }

        v610 = &v588[v601];
        v611 = &v783;
        do
        {
          if (v610 < v588 || (v610 + 1) > v9 || v610 > v610 + 1 || v611 < &v783 || (v611->i64 + 4) > &v793 || v611 > (v611->i64 + 4))
          {
            goto LABEL_1327;
          }

          v612 = *v610++;
          v611->i32[0] += (v612 * v606->i32[0]) >> 15;
          v611 = (v611 + 4);
          --v596;
        }

        while (v596);
        goto LABEL_1097;
      }
    }

LABEL_932:
    v520 = 0;
    v521 = vdupq_n_s32(v500);
    v522 = vdupq_n_s32(v487);
    do
    {
      v523 = vmlaq_s32(vmulq_s32(*(&v771 + v520), v521), *(&v783 + v520), v522);
      v524 = vshlq_u32(v523, v415);
      v525 = vshrq_n_s32(vaddq_s32(v524, v416), 0xFuLL);
      v526 = vcgezq_s32(vbslq_s8(vcltzq_s32(veorq_s8(v524, v523)), v523, v524));
      *(&v771 + v520) = vbslq_s8(vcgtq_u32(v417, vabsq_s32(v525)), v525, vbslq_s8(v418, v526, vmvnq_s8(v526)));
      v520 += 16;
    }

    while (v520 != 160);
    v527 = 0;
    v528 = 0uLL;
    do
    {
      v528 = vmlaq_s32(v528, *(&v771 + v527), *(&v771 + v527));
      v527 += 16;
    }

    while (v527 != 160);
    v529 = vaddvq_s32(v528);
    if (v529 >> 30)
    {
      v530 = 11584;
    }

    else if (v529)
    {
      LODWORD(v9) = (__clz(v529) - 1) & 0x1E;
      v531 = v529 << v9;
      v532 = &sqrt_table[4 * (v531 >> 25)];
      v533 = v532 - 64;
      v534 = v532 - 60;
      if (v532 - 64 < sqrt_table || v534 > inv_sqrt_table || v533 > v534)
      {
        goto LABEL_1327;
      }

      v537 = v532 - 56;
      if (v537 > inv_sqrt_table || v534 > v537)
      {
        goto LABEL_1327;
      }

      v530 = ((*v534 - *v533) * ((v531 >> 9) & 0xFFFE) + (*v533 << 16)) >> ((v9 >> 1) + 15) >> 2;
    }

    else
    {
      v530 = 0;
    }

    if (v411 == 2)
    {
      v539 = 1;
    }

    else
    {
      v539 = v749;
    }

    v540 = !v740;
    if (!v747)
    {
      v540 = 1;
    }

    if (v476)
    {
      v540 = 0;
    }

    if (v443)
    {
      v540 = 0;
    }

    if ((v540 & 1) == 0 && *(a1 + 976) <= 3)
    {
      if (*(a1 + 892))
      {
        if (v539)
        {
          v541 = *(a1 + 896);
          if (v541 >= 6)
          {
            v542 = gmed_n(v760, 9u);
            v418.i64[0] = 0x7F0000007FLL;
            v418.i64[1] = 0x7F0000007FLL;
            v476 = v758;
            if (v530 >= 6 && v542 > v530)
            {
              v543 = 0;
              v544 = __clz(v530);
              v545 = *(a1 + 968);
              v546 = *(a1 + 964) + v545;
              v47 = v545 < v546 >> 1;
              v547 = v546 >> 1;
              if (!v47)
              {
                v545 = v547;
              }

              v548 = v541 >= 7 && v443 == 0;
              v549 = 3 * v545;
              v550 = 4 * v545;
              if (!v548)
              {
                v550 = v549;
              }

              if (v542 < v550)
              {
                v550 = v542;
              }

              v551 = (2 * 0x1FFF8000u / (v530 << (14 - (v544 ^ 0x1F))) * v550) >> (37 - v544);
              v552 = v727;
              if (v551 < 3073)
              {
                v552 = 1;
              }

              if (v551 >= 0x7FFF)
              {
                v551 = 0x7FFF;
              }

              v553 = 2 * v551;
              if (!v552)
              {
                v553 = 6144;
              }

              v554 = vdupq_n_s32(v553);
              do
              {
                *(&v771 + v543) = vshrq_n_s32(vmulq_s32(*(&v771 + v543), v554), 0xBuLL);
                v543 += 16;
              }

              while (v543 != 160);
            }
          }
        }
      }
    }

    if (v476)
    {
      v555 = 0;
    }

    else
    {
      v555 = *v762 == 0;
    }

    if (*v733 > 3 || *(a1 + 892) == 0 || v555)
    {
      v558 = 8;
      v9 = a1 + 936;
      do
      {
        v559 = v9 + 4;
        if (v9 + 8 > v762 || v559 > v9 + 8 || v559 > v762 || v9 > v559)
        {
          goto LABEL_1327;
        }

        *v9 = *(v9 + 4);
        v9 += 4;
        --v558;
      }

      while (v558);
      *(a1 + 968) = v530;
    }

    if (v426 <= 0x4000)
    {
      v841.i64[0] = &v771;
      v841.i64[1] = v781;
      v842.i64[0] = &v771;
      *v833 = &a5[4 * v755];
      *&v833[8] = a5 + 640;
      *&v833[16] = a5;
      v823 = v744;
      *v824 = a1 + 840;
      v564 = v754;
    }

    else
    {
      v563 = 0;
      v564 = v754;
      do
      {
        v565 = vaddq_s32(*(&v771 + v563 * 16), v781[v563]);
        v566 = vcgezq_s32(v565);
        v781[v563++] = vbslq_s8(vcgtq_u32(vabsq_s32(v565), v418), vbslq_s8(v418, v566, vmvnq_s8(v566)), v565);
      }

      while (v563 != 10);
      v567 = energy_new(v781);
      if (v567)
      {
        v568 = 29 - (__clz(v567 & 0x1FFFFFFF) ^ 0x1F);
        if ((v567 & 0x20000000) != 0)
        {
          v569 = 0;
        }

        else
        {
          v569 = v568;
        }

        if ((v567 & 0x20000000) != 0)
        {
          v570 = v567;
        }

        else
        {
          v570 = v567 << v568;
        }

        v571 = energy_new(&v771);
        if (v571)
        {
          v572 = 30 - (__clz(v571 & 0x3FFFFFFF) ^ 0x1F);
          v573 = v571 << v572;
          if ((v571 & 0x40000000) != 0)
          {
            v572 = 0;
            v573 = v571;
          }

          if (v573 >= 2147450879)
          {
            v574 = 0x7FFF;
          }

          else
          {
            v574 = (v573 + 0x8000) >> 16;
          }

          v469 = __OFSUB__(v569, v572);
          v575 = v569 - v572;
          v576 = ((((v570 + 0x8000) >> 1) & 0xFFFF8000) / v574) << 7;
          v577 = v576 >> v575;
          v578 = v576 << -v575;
          if ((v575 < 0) ^ v469 | (v575 == 0))
          {
            v579 = v578;
          }

          else
          {
            v579 = v577;
          }

          v580 = ((Inv_sqrt(v579) << 9) + 0x8000) >> 16;
        }

        else
        {
          v580 = 0;
        }

        v613 = 0;
        v614 = vdupq_n_s32(v580);
        v564 = v754;
        do
        {
          v781[v613] = vshrq_n_s32(vmulq_s32(v781[v613], v614), 0xCuLL);
          ++v613;
        }

        while (v613 != 10);
      }

      v841.i64[0] = v781;
      v841.i64[1] = &v783;
      v842.i64[0] = v781;
      *v833 = &a5[4 * v755];
      *&v833[8] = a5 + 640;
      *&v833[16] = a5;
      v823 = v744;
      *v824 = a1 + 840;
    }

    v829.i64[0] = v564;
    v829.i64[1] = v741;
    v830.i64[0] = a6;
    if (Syn_filt(&v829, &v841, v833, 0x28u, &v823, 0))
    {
      for (nn = 0; nn != 776; nn += 4)
      {
        LODWORD(v9) = *(a1 + nn) >> 2;
        *(a1 + nn) = v9;
      }

      for (i1 = 0; i1 != 160; i1 += 16)
      {
        *(&v771 + i1) = vshrq_n_s32(*(&v771 + i1), 2uLL);
      }

      if (v741 < v564)
      {
        goto LABEL_1327;
      }

      LODWORD(v9) = a6;
      if (v754 < a6 || v741 - v564 < 41)
      {
        goto LABEL_1327;
      }

      v617 = v754;
      Syn_filt_overflow(v754, &v771, &a5[4 * v755], v744);
    }

    else
    {
      v618 = &a5[4 * v755 + 120];
      v9 = &v739[-v618];
      if (v739 < v618 || v618 < a5 || v9 < 0x28)
      {
        goto LABEL_1327;
      }

      v619 = *v618;
      v620 = *(v618 + 16);
      *(a1 + 872) = *(v618 + 32);
      *v744 = v619;
      *(a1 + 856) = v620;
      v617 = v754;
    }

    memmove(a1, (a1 + 160), 0x268uLL);
    v79 = v617 + 11;
    v284 = v752;
    *(a1 + 884) = v752;
    v283 = v755 + 40;
    v746 = v745;
    v285 = a2;
    v80 = v743;
    i = v758;
    v81 = v748;
  }

  while (v751 != 3);
  v652 = 0;
  v653 = 0;
  v654 = *(a1 + 984);
  do
  {
    v655 = *&a5[v652] * *&a5[v652];
    if (v655 >= (v653 ^ 0x7FFFFFFF))
    {
      v656 = 0x7FFF;
      goto LABEL_1197;
    }

    v653 += v655;
    v652 += 4;
  }

  while (v652 != 640);
  if (v653 >= 0xFFFFFFF)
  {
    v656 = 0x7FFF;
  }

  else
  {
    v656 = v653 >> 13;
  }

LABEL_1197:
  v657 = 0;
  v658.i64[0] = 0x7F0000007FLL;
  v658.i64[1] = 0x7F0000007FLL;
  do
  {
    v658 = vminq_s32(*(v654 + v657), v658);
    v657 += 16;
  }

  while (v657 != 240);
  v659 = vminvq_s32(v658);
  v660 = *v654;
  for (i2 = 4; i2 != 224; i2 += 4)
  {
    if (v660 <= *(v654 + i2))
    {
      v660 = *(v654 + i2);
    }
  }

  v662 = *(v654 + 160);
  for (i3 = 164; i3 != 240; i3 += 4)
  {
    if (v662 <= *(v654 + i3))
    {
      v662 = *(v654 + i3);
    }
  }

  v665 = v656 < 16 * v659 || v662 < 1953;
  if ((v656 - 21) <= 0x4494 && v660 >= 21 && v665)
  {
    v666 = *(v654 + 240);
    if (v666 >= 30)
    {
      v667 = 30;
      *(v654 + 240) = 30;
      memmove(v654, (v654 + 4), 0xECuLL);
      *(v654 + 236) = v656;
      goto LABEL_1220;
    }

    v667 = v666 + 1;
    *(v654 + 240) = v666 + 1;
    memmove(v654, (v654 + 4), 0xECuLL);
    *(v654 + 236) = v656;
    if (v666 < 8)
    {
      v670 = 13926;
    }

    else
    {
LABEL_1220:
      v670 = 15565;
    }

    if (v667 <= 15)
    {
      v669 = v670;
    }

    else
    {
      v669 = 0x3FFF;
    }

    v668 = v667 > 1;
  }

  else
  {
    *(v654 + 240) = 0;
    memmove(v654, (v654 + 4), 0xECuLL);
    v668 = 0;
    *(v654 + 236) = v656;
    v669 = 13926;
  }

  v671 = gmed_n(a1 + 916, 5u);
  if (*(v654 + 240) >= 21)
  {
    v671 = gmed_n(a1 + 900, 9u);
  }

  if (v671 <= v669)
  {
    v673 = *(a1 + 896);
    if (v673 < 10)
    {
      v672 = v673 + 1;
    }

    else
    {
      v672 = 10;
    }
  }

  else
  {
    v672 = 0;
  }

  *(a1 + 896) = v672;
  *(a1 + 892) = v668;
  v674 = *(a1 + 1048);
  v675 = *(a1 + 1008);
  v676 = *(v674 + 774) + 10;
  if (*(v674 + 774) == 70)
  {
    v676 = 0;
  }

  *(v674 + 774) = v676;
  v9 = v674 + 96 + 4 * v676;
  if (v674 + 416 < v9 || v674 + 96 > v9)
  {
    goto LABEL_1327;
  }

  if (v674 + 416 - v9 <= 0x27)
  {
    goto LABEL_1327;
  }

  v678 = *(v675 + 40);
  v679 = *(v675 + 56);
  *(v9 + 32) = *(v675 + 72);
  *v9 = v678;
  *(v9 + 16) = v679;
  if (v9 >= v9 + 40)
  {
    goto LABEL_1327;
  }

  v680 = 0;
  v681 = 0;
  do
  {
    v682 = *&a5[v680] * *&a5[v680];
    if (v682 >= (v681 ^ 0x7FFFFFFF))
    {
      goto LABEL_1247;
    }

    v681 += v682;
    v680 += 4;
  }

  while (v680 != 640);
  if (v681 >> 30)
  {
LABEL_1247:
    v681 = 2147483646;
    goto LABEL_1248;
  }

  if (!v681)
  {
    v683 = 0;
    goto LABEL_1250;
  }

  v681 *= 2;
LABEL_1248:
  v683 = -1;
  v684 = v681;
  do
  {
    v685 = v684 ^ (2 * v684);
    v684 *= 2;
    ++v683;
  }

  while ((v685 & 0x80000000) == 0);
LABEL_1250:
  v841.i32[0] = -1431655766;
  *v833 = -1431655766;
  Log2_norm(v681 << v683, v683, &v841, v833);
  LODWORD(v9) = v841.i32[0];
  v686 = *v833;
  v687 = *(v674 + 778);
  if (v687 == 7)
  {
    v688 = 0;
  }

  else
  {
    v688 = v687 + 1;
  }

  *(v674 + 778) = v688;
  v689 = (v674 + 736 + 4 * v688);
  v690 = (v689 + 1);
  if (v689 < v674 + 736 || v690 > v674 + 768 || v689 > v690)
  {
    goto LABEL_1327;
  }

  v693 = 0;
  *v689 = (v9 << 10) + (v686 >> 5) - 8521;
  *(a1 + 972) = v732;
  *(a1 + 974) = v726;
  v694 = *(a1 + 1000);
  v695 = *(a1 + 1008) + 40;
  do
  {
    *(v694 + v693) = (10486 * *(v695 + v693) + 55050 * *(v694 + v693) + 0x8000) >> 16;
    v693 += 4;
  }

  while (v693 != 40);
  **(a1 + 1048) = 0;
  return v758 != 0;
}