uint64_t expfp(int a1, int a2)
{
  v2 = a1 << 16;
  v3 = a2 - 15;
  if (a2 < -32753)
  {
    v3 = 0x8000;
  }

  v4 = L_shl(v2, v3);
  if (v4 == 0x80000000)
  {
    v5 = 0x7FFFFFFF;
  }

  else
  {
    v5 = -v4;
  }

  v6 = ((v5 + 0x8000) ^ v5) > -1 || v5 < 0;
  v7 = (v5 + 0x8000) >> 16;
  if (!v6)
  {
    LOWORD(v7) = 0x7FFF;
  }

  v8 = v5;
  v9 = -v5;
  if (v8 == 0x8000)
  {
    v9 = 0x7FFF;
  }

  v10 = (v9 * v9) >> 17;
  if ((v9 * v9) >> 30)
  {
    v10 = 0x1FFF;
  }

  v11 = v9 + v10;
  v12 = (v9 * v10) >> 15;
  if ((v12 & 0x10000) != 0)
  {
    v13 = v12 | 0xFFFF0000;
  }

  else
  {
    v13 = (v9 * v10) >> 15;
  }

  if (v13 >= -32768)
  {
    if ((v13 & 0x80000000) == 0)
    {
      v14 = v13 >> 1;
      goto LABEL_23;
    }
  }

  else
  {
    LOWORD(v13) = 0x8000;
  }

  v14 = v13 >> 1;
LABEL_23:
  v15 = v11 + 0x10000;
  v16 = (21845 * v14) >> 15;
  if ((v16 & 0x10000) != 0)
  {
    v17 = v16 | 0xFFFF0000;
  }

  else
  {
    v17 = (21845 * v14) >> 15;
  }

  if (v17 >= -32768)
  {
    if ((v17 & 0x80000000) == 0)
    {
      v18 = v17 >> 1;
      goto LABEL_31;
    }
  }

  else
  {
    LOWORD(v17) = 0x8000;
  }

  v18 = v17 >> 1;
LABEL_31:
  v19 = v15 + v18;
  v20 = (v9 * v18) >> 15;
  if ((v20 & 0x10000) != 0)
  {
    v21 = v20 | 0xFFFF0000;
  }

  else
  {
    v21 = v20;
  }

  if (v21 >= -32768)
  {
    if ((v21 & 0x80000000) == 0)
    {
      v22 = v21 >> 3;
      goto LABEL_39;
    }
  }

  else
  {
    LOWORD(v21) = 0x8000;
  }

  v22 = v21 >> 3;
LABEL_39:
  v23 = v19 + v22;
  if (v7)
  {
    v23 = 48218 * HIWORD(v23) + ((24109 * v23) >> 15);
  }

  if ((v7 & 2) != 0)
  {
    v23 = 35478 * HIWORD(v23) + ((17739 * v23) >> 15);
  }

  if ((v7 & 4) != 0)
  {
    v23 = 38410 * HIWORD(v23) + ((19205 * v23) >> 15);
  }

  if ((v7 & 8) != 0)
  {
    v24 = 45026 * HIWORD(v23) + ((22513 * v23) >> 15);
  }

  else
  {
    v24 = v23;
  }

  v25 = v7 + (v7 >> 2);
  if (v25 < 0x8000)
  {
    if (v25 >= -32768)
    {
      v25 = v25;
    }

    else
    {
      v25 = -32768;
    }
  }

  else
  {
    v25 = 0x7FFF;
  }

  if (v7 <= 15)
  {
    v27 = v25 + ((v7 & 8) >> 3);
    if (v27 >= 0x7FFF)
    {
      LOWORD(v27) = 0x7FFF;
    }

    v28 = L_shr(v24, v27);
    if ((v28 - 0x10000) >= 0xFFFE0000)
    {
      v26 = v28 << 15;
    }

    else
    {
      v26 = (v28 >> 31) ^ 0x7FFFFFFF;
    }
  }

  else
  {
    v26 = 0;
  }

  v29 = ((v26 + 0x8000) ^ v26) > -1 || v26 < 0;
  v30 = (v26 + 0x8000) >> 16;
  if (!v29)
  {
    LOWORD(v30) = 0x7FFF;
  }

  return v30;
}

float tcx_arith_rateloop(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, unint64_t a10, unint64_t a11, float *a12)
{
  v12 = MEMORY[0x1EEE9AC00](a1);
  v166 = v13;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v169 = v24;
  v25 = v12;
  v185 = *MEMORY[0x1E69E9840];
  v174 = v22;
  v165 = v26;
  v173 = v26;
  memset(v184, 255, sizeof(v184));
  v27 = 0.01;
  if (v23 >= 1)
  {
    v28 = v25;
    v29 = v21;
    v30 = v23;
    while (v28 >= v25 && (v28 + 1) <= v169 && v28 <= v28 + 1 && v29 >= v21 && (v29 + 1) <= v19 && v29 <= v29 + 1)
    {
      v31 = *v28++;
      v32 = v31;
      v33 = *v29++;
      v27 = v27 + ((v32 * v33) * (v32 * v33));
      if (!--v30)
      {
        goto LABEL_10;
      }
    }

LABEL_184:
    __break(0x5519u);
  }

LABEL_10:
  v34 = 0;
  v161 = a11;
  v160 = a10;
  v156 = a9;
  v163 = v17;
  *&v162 = v23;
  v159 = a12;
  v35 = sqrtf((((v23 * (1 << (15 - v17))) * (1 << (15 - v17))) * 4.0) / v27) * *a12;
  v172 = v35;
  v181[1] = unk_19B397B30;
  v181[2] = xmmword_19B397B40;
  v181[3] = unk_19B397B50;
  v182 = 0xAAAAAAAAFFFFFFFFLL;
  v180 = unk_19B397B10;
  v183[0] = 10;
  v175 = 0u;
  v176 = 0u;
  v177 = 0u;
  v178 = 0u;
  v181[0] = xmmword_19B397B20;
  v179 = 0u;
  v36 = v181 + 2;
  v37 = vdupq_n_s64(0xBuLL);
  do
  {
    v38 = vdupq_n_s64(v34);
    v39 = vorrq_s8(v38, xmmword_19B0A5850);
    if (vuzp1_s16(vmovn_s64(vcgtq_u64(v37, v39)), 2).u8[0])
    {
      *(v36 - 6) = 2139095039;
    }

    if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0xBuLL), v39)), 2).i8[2])
    {
      *(v36 - 4) = 2139095039;
    }

    if (vuzp1_s16(2, vmovn_s64(vcgtq_u64(vdupq_n_s64(0xBuLL), vorrq_s8(v38, xmmword_19B0A5840)))).i32[1])
    {
      *(v36 - 2) = 2139095039;
      *v36 = 2139095039;
    }

    v34 += 4;
    v36 += 8;
  }

  while (v34 != 12);
  v164 = v23;
  v158 = v35;
  LOWORD(v171) = -21846;
  LOWORD(v170) = -21846;
  v157 = v23;
  if (v23 >= 1)
  {
    v40 = 0;
    v41 = v164;
    while (1)
    {
      v42 = &v21[v40];
      v43 = (v42 + 1);
      v45 = v42 < v21 || v43 > v19 || v42 > v43;
      v46 = (v25 + 4 * v40);
      v47 = (v46 + 1);
      if (v45 || v46 < v25 || v47 > v169 || v46 > v47)
      {
        goto LABEL_184;
      }

      v51 = *v46 * *v42;
      if (v51 > *&v175)
      {
        *&v175 = *v46 * *v42;
        DWORD1(v175) = v40;
        v52 = (&v175 | (8 * (*(&v175 + 2) < v51)));
        v53 = v52 + 2;
        if (v52 < &v175 || v53 > v183 || v52 > v53)
        {
          goto LABEL_184;
        }

        v56 = *(&v175 + 2) < v51;
        if (*&v176 < *v52)
        {
          v56 = 2;
        }

        if (v56)
        {
          break;
        }
      }

LABEL_82:
      if (++v40 == v41)
      {
        goto LABEL_83;
      }
    }

    v57 = 0;
    while (1)
    {
      v58 = (&v175 + 8 * v57);
      v57 = v56;
      v59 = (v58 + 8);
      v60 = v58 < &v175 || v59 > v183;
      v61 = v60 || v58 > v59;
      v62 = (&v175 + 8 * v57);
      v63 = (v62 + 8);
      v64 = !v61 && v62 >= &v175;
      v65 = !v64 || v63 > v183;
      if (v65 || v62 > v63)
      {
        goto LABEL_184;
      }

      *(v58 + 1) = *(v62 + 1);
      *v58 = *v62;
      *(v62 + 1) = v40;
      *v62 = v51;
      v67 = (2 * v57) | 1;
      v68 = &v175 + 2 * v67;
      if (v68 < &v175 || v68 + 2 > v183 || v68 > v68 + 2)
      {
        goto LABEL_184;
      }

      v56 = 2 * v57 + 2;
      if (*v68 >= v51)
      {
        LODWORD(v67) = v57;
      }

      v69 = &v175 + 2 * v56;
      if (v69 < &v175 || v69 + 2 > v183 || v69 > v69 + 2)
      {
        goto LABEL_184;
      }

      v70 = &v175 + 2 * v67;
      v71 = v70 + 2;
      v72 = v70 < &v175 || v71 > v183;
      if (v72 || v70 > v71)
      {
        goto LABEL_184;
      }

      if (*v69 >= *v70)
      {
        v56 = v67;
      }

      if (v56 == v57)
      {
        goto LABEL_82;
      }
    }
  }

LABEL_83:
  v167 = v21;
  v168 = v25;
  v74 = ldexp(1.0, v163 - 16);
  v75 = v21;
  v76 = 0;
  *&v74 = v74;
  v77 = -*&v74;
  v78 = 1.0 / sqrtf(*&v162 * 0.5);
  do
  {
    v79 = &v175 + 8 * v76;
    v80 = v79 + 8;
    if (v79 < &v175 || v80 > v183 || v79 > v80)
    {
      goto LABEL_184;
    }

    v83 = *(v79 + 1);
    v84 = &v15[v83];
    v85 = (v84 + 1);
    v86 = v84 < v15 || v85 > v166;
    v87 = v86 || v84 > v85;
    v88 = &v75[v83];
    v89 = (v88 + 1);
    v90 = !v87 && v88 >= v75;
    v91 = !v90 || v89 > v19;
    if (v91 || v88 > v89)
    {
      goto LABEL_184;
    }

    v93 = *v84;
    v94 = vcvtd_n_f64_s32(v93, 0xFuLL);
    v95 = vcvtpd_s64_f64(((-9.70406055 - log(1.0 - v94 * v94)) / (v77 * *v88) + -1.0) * 0.5);
    powfp_odd2(v93, v95, &v171, &v170);
    if (v171 - v170 < 2)
    {
      v96 = v95 - 1;
      powfp_odd2(*v84, (v95 - 1), &v171, &v170);
      if (v171 - v170 <= 1)
      {
        do
        {
          powfp_odd2(*v84, --v96, &v171, &v170);
        }

        while (v171 - v170 < 2);
      }
    }

    else
    {
      powfp_odd2(*v84, (v95 + 1), &v171, &v170);
      if (v171 - v170 < 2)
      {
        v96 = v95;
      }

      else
      {
        do
        {
          v96 = v95 + 1;
          powfp_odd2(*v84, (v95++ + 2), &v171, &v170);
        }

        while (v171 - v170 > 1);
      }
    }

    v75 = v167;
    v97 = (v168 + 4 * v83);
    if (v97 < v168 || (v97 + 1) > v169 || v97 > v97 + 1)
    {
      goto LABEL_184;
    }

    v98 = *v97 + 0.000001;
    if (v78 >= (((v96 + 0.99) - v165) / v98))
    {
      v78 = ((v96 + 0.99) - v165) / v98;
    }

    ++v76;
  }

  while (v76 < v183[0]);
  v99 = v158;
  if (v158 > v78)
  {
    v172 = v78;
    v99 = v78;
  }

  v101 = ldexp(1.0, v163 - 15);
  v102 = v164;
  if (v157 < 1)
  {
    return 0.0;
  }

  v155 = &v155;
  v103 = *&v162 * 96.0;
  v104 = v101;
  v105 = 4 * v157;
  MEMORY[0x1EEE9AC00](v100);
  v106 = &v155 - ((v105 + 15) & 0x7FFFFFFF0);
  memset(v106, 255, v105);
  vDSP_vflt16(v167, 1, v106, 1, v102);
  v107 = v104 * -0.5 * 1.44269502;
  *&v175 = v107;
  MEMORY[0x19EAE6090](v106, 1, &v175, v106, 1, v102);
  v171 = 1065353216;
  v108 = MEMORY[0x19EAE6000](v106, 1, &v171, v106, 1, v102);
  MEMORY[0x1EEE9AC00](v108);
  memset(v106, 255, v105);
  vDSP_vflt16(v15, 1, v106, 1, v102);
  LODWORD(v175) = 939524096;
  v109 = MEMORY[0x19EAE6090](v106, 1, &v175, v106, 1, v102);
  MEMORY[0x1EEE9AC00](v109);
  memset(v106, 255, v105);
  v170 = -1082130432;
  v110 = MEMORY[0x19EAE6060](v106, 1, &v170, &v171, v106, 1, v102);
  MEMORY[0x1EEE9AC00](v110);
  memset(v106, 255, v105);
  vvlog2f(v106, v106, &v174);
  MEMORY[0x19EAE5FB0](v106, 1, v184, 1, v174);
  MEMORY[0x19EAE60E0](v106, 1, v106, 1, v174);
  MEMORY[0x19EAE6060](v106, 1, &v170, &v171, v106, 1, v174);
  vvlog2f(v106, v106, &v174);
  MEMORY[0x19EAE6050](v106, 1, &v170, v106, 1, &v184[200], 1, v174);
  v111 = v174;
  if (((11 * v174) + 48.0) < v103)
  {
    v112 = v103;
    v113 = 0.0;
    v114 = 0;
    v115 = v104 * 1.4427;
    v116 = v156;
    *&v157 = v156 * 1.25;
    v158 = v156 * 0.8;
    v117 = &v106[4 * v102];
    v118 = 0.0;
    v119 = 0.0;
    v120 = 0.0;
    while (1)
    {
      LODWORD(v164) = v114;
      v165 = v113;
      kMax = tcx_arith_find_kMax(v168, v169, v111, v160, v161, v172, v173);
      v163 = v174;
      v122 = kMax + 1;
      vDSP_vflt16(v167, 1, v106, 1, v122);
      *&v175 = v115;
      v123 = MEMORY[0x19EAE6090](v106, 1, &v175, v106, 1, v122);
      v162 = &v155;
      v124 = MEMORY[0x1EEE9AC00](v123);
      v126 = &v155 - v125;
      v127 = (kMax + 1);
      v166 = v127;
      v128 = 4 * v127;
      if (kMax == -1)
      {
        MEMORY[0x1EEE9AC00](v124);
        v129 = &v155 - ((v128 + 15) & 0x7FFFFFFF0);
      }

      else
      {
        v130 = memset(v126, 170, 4 * v127);
        MEMORY[0x1EEE9AC00](v130);
        v129 = &v155 - ((v128 + 15) & 0x7FFFFFFF0);
        memset(v129, 255, v128);
      }

      MEMORY[0x19EAE6060](v168, 1, &v172, &v173, v129, 1, v122);
      vDSP_vfix32(v129, 1, v126, 1, v122);
      v131 = v166;
      if ((kMax & 0x80000000) == 0)
      {
        break;
      }

LABEL_153:
      v146 = (kMax * 0.0) + 1.0;
      v147 = v172;
      v148 = v165;
      if (v165 == 0.0 && v172 < v78)
      {
        v149 = (v116 / v146) * *v159;
        if (v149 > 1.25)
        {
          v149 = 1.25;
        }

        *v159 = v149;
        if (v149 < 0.75)
        {
          *v159 = 0.75;
        }
      }

      if (v146 <= v116)
      {
        if (v147 >= v99 || v164 == 0)
        {
          v99 = v147;
        }

        if (v119 <= 0.0)
        {
          v153 = *&v157 / v146;
          if (v153 > 2.0)
          {
            v153 = 2.0;
          }

          v172 = v153 * v147;
          if ((v153 * v147) > v78)
          {
            v172 = v78;
          }
        }

        else
        {
          v172 = (v119 + v147) * 0.5;
        }

        v114 = 1;
      }

      else
      {
        v150 = v158 / v146;
        if (v150 < 0.5)
        {
          v150 = 0.5;
        }

        v151 = v150 * v147;
        if (v118 > 0.0)
        {
          v151 = (v118 + v147) * 0.5;
        }

        v172 = v151;
        v114 = v164 != 0;
        if (!v164)
        {
          v99 = v151;
        }

        v119 = v147;
        v147 = v118;
      }

      v120 = (v120 + (5 * (v163 - kMax) + 2 * v131 + 16)) + (6 * kMax + 32);
      LODWORD(v113) = LODWORD(v148) + 1;
      v111 = v174;
      v118 = v147;
      if (((v120 + 48.0) + (11 * v174)) >= v112)
      {
        return v99;
      }
    }

    v132 = v184;
    v133 = v126;
    v134 = v106;
    v135 = v166;
    while (v133 >= v126 && v133 + 1 <= &v126[4 * v166] && v133 <= v133 + 1)
    {
      v136 = *v133;
      if (*v133 >= 1)
      {
        v136 = 1;
      }

      v137 = &v184[200 * v136];
      v138 = &v132[200 * v136];
      v139 = v138 + 4;
      v140 = v138 < v137 || v139 > (v137 + 200);
      v141 = v140 || v138 > v139;
      v142 = v134 + 4;
      v143 = !v141 && v134 >= v106;
      v144 = !v143 || v142 > v117;
      if (v144 || v134 > v142)
      {
        break;
      }

      v132 = (v132 + 4);
      ++v133;
      v134 += 4;
      if (!--v135)
      {
        goto LABEL_153;
      }
    }

    goto LABEL_184;
  }

  return v99;
}

unint64_t tcx_arith_find_kMax(unint64_t result, unint64_t a2, int a3, unint64_t a4, unint64_t a5, float a6, float a7)
{
  v7 = a3;
  v8 = (a3 & (a3 >> 31)) - 1;
  while (1)
  {
    if (v7 < 1)
    {
      return v8;
    }

    v9 = (result + 4 * --v7);
    v10 = v9 + 1;
    v11 = v9 < result || v10 > a2;
    v12 = v11 || v9 > v10;
    v13 = (a4 + 4 * v7);
    v14 = v13 + 1;
    v15 = !v12 && v13 >= a4;
    v16 = !v15 || v14 > a5;
    if (v16 || v13 > v14)
    {
      break;
    }

    if ((*v9 * a6) >= ((1.0 - a7) + (a7 * *v13)))
    {
      return v7;
    }
  }

  __break(0x5519u);
  return result;
}

unint64_t ari_encode_14bits_range(unint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, int *a5, int a6, int a7)
{
  v7 = *a5;
  v8 = a5[1] - v7 + 1;
  v9 = v7 + ((v8 * a7) >> 14);
  v10 = v7 + ((v8 * a6) >> 14);
  LODWORD(v11) = a5[2];
  if (a3 + v11 + 16 >= a4)
  {
LABEL_36:
    *a5 = v10;
    a5[1] = v9 - 1;
    a5[2] = v11;
    return a3;
  }

  v11 = v11;
  while (1)
  {
    v12 = v9 - 0x8000;
    if (v9 > 0x8000)
    {
      break;
    }

    v13 = (result + 4 * a3);
    v14 = v13 + 1;
    if (v13 < result || v14 > a2 || v13 >= v14)
    {
      goto LABEL_37;
    }

    *v13 = 0;
    if (v11 >= 1)
    {
      v17 = ~a3;
      v18 = v11 + 1;
      while (v14 >= result && (v14 + 1) <= a2 && v14 <= v14 + 1)
      {
        *v14++ = 1;
        --v17;
        if (--v18 <= 1)
        {
          v11 = 0;
          a3 = -v17;
          goto LABEL_35;
        }
      }

      goto LABEL_37;
    }

    ++a3;
LABEL_35:
    v10 *= 2;
    v9 *= 2;
    if (v11 + a3 + 16 >= a4)
    {
      goto LABEL_36;
    }
  }

  v19 = v10 - 0x8000;
  if (v10 < 0x8000)
  {
    if (v10 < 0x4000 || v9 > 0xC000)
    {
      goto LABEL_36;
    }

    ++v11;
    v9 -= 0x4000;
    v10 -= 0x4000;
    goto LABEL_35;
  }

  v20 = (result + 4 * a3);
  if (v20 < result)
  {
    goto LABEL_37;
  }

  v21 = v20 + 1;
  if ((v20 + 1) > a2 || v20 > v21)
  {
    goto LABEL_37;
  }

  *v20 = 1;
  if (v11 < 1)
  {
    ++a3;
LABEL_34:
    v9 = v12;
    v10 = v19;
    goto LABEL_35;
  }

  v22 = ~a3;
  v23 = v11 + 1;
  while (v21 >= result && (v21 + 1) <= a2 && v21 <= v21 + 1)
  {
    *v21++ = 0;
    --v22;
    if (--v23 <= 1)
    {
      v11 = 0;
      a3 = -v22;
      goto LABEL_34;
    }
  }

LABEL_37:
  __break(0x5519u);
  return result;
}

uint64_t powfp_odd2(uint64_t result, int a2, _WORD *a3, _WORD *a4)
{
  v6 = result;
  v32 = *MEMORY[0x1E69E9840];
  memset(v31, 170, sizeof(v31));
  v29 = 0;
  if (!a2)
  {
    LOWORD(v10) = 0x7FFF;
    LOWORD(v11) = result;
    goto LABEL_69;
  }

  if (a2 == -32768)
  {
    v12 = 1;
    v29 = 1;
    v8 = 0x8000;
  }

  else
  {
    v8 = a2 - 1;
    if (a2 == -1)
    {
      v9 = 0;
      v30 = result;
      goto LABEL_27;
    }

    v12 = 0;
  }

  v13 = a2 ^ (a2 >> 15);
  if (v13 >= 0x4000)
  {
    v30 = result;
    v9 = 15;
    goto LABEL_15;
  }

  LOWORD(v14) = 0;
  do
  {
    v15 = v14;
    v13 = (2 * v13);
    v14 = (v14 + 1);
  }

  while (v13 < 0x4000);
  if (v14 <= -32753)
  {
    v30 = result;
    v9 = 0x7FFF;
    v12 = 1;
    goto LABEL_15;
  }

  v9 = (14 - v15);
  v30 = result;
  if (v9 >= 1)
  {
LABEL_15:
    v16 = v9;
    v17 = v31;
    do
    {
      if (v17 - 1 < &v30)
      {
        goto LABEL_74;
      }

      v18 = *(v17 - 1) * *(v17 - 1);
      if (v18 > 0x3FFFBFFF)
      {
        v12 = 1;
      }

      if (v17 < &v30 || v17 + 1 > &v32 || v17 > v17 + 1)
      {
        goto LABEL_74;
      }

      if (v18 <= 0x3FFFBFFF)
      {
        v19 = (v18 + 0x4000) >> 15;
      }

      else
      {
        v19 = 0x7FFF;
      }

      *v17++ = v19;
      --v16;
    }

    while (v16);
    v29 = v12;
    goto LABEL_27;
  }

  v9 = 0;
LABEL_27:
  result = shl(1, (v9 - 1), &v29);
  v20 = &v31[2 * (v9 - 1) - 2];
  v21 = (v20 + 2);
  if (v20 + 2 < &v30 || (v22 = (v20 + 4), v22 > &v32) || v21 > v22)
  {
LABEL_74:
    __break(0x5519u);
  }

  v23 = (*v21 * v6 + 0x4000) >> 15;
  if ((v23 & 0x10000) != 0)
  {
    v23 |= 0xFFFF0000;
  }

  if (v23 < 0x8000)
  {
    if (v23 > -32769)
    {
      LOWORD(v11) = v23;
    }

    else
    {
      v29 = 1;
      LOWORD(v11) = 0x8000;
    }

    if ((result & v8) != 0)
    {
      if (v23 > -32769)
      {
        LOWORD(v6) = v23;
      }

      else
      {
        v29 = 1;
        LOWORD(v6) = 0x8000;
      }
    }
  }

  else
  {
    v29 = 1;
    LOWORD(v11) = 0x7FFF;
    if ((result & v8) != 0)
    {
      v29 = 1;
      LOWORD(v6) = 0x7FFF;
    }
  }

  if (v9 >= 2)
  {
    v24 = (v9 - 2) + 1;
    v25 = &v31[2 * (v9 - 2)];
    LOWORD(v10) = v6;
    while (1)
    {
      if ((a2 & (result >> 1)) != 0)
      {
        if (v25 < &v30 || v25 + 1 > &v32 || v25 > v25 + 1)
        {
          goto LABEL_74;
        }

        v26 = (*v25 * v11 + 0x4000) >> 15;
        if ((v26 & 0x10000) != 0)
        {
          v11 = v26 | 0xFFFF0000;
        }

        else
        {
          v11 = (*v25 * v11 + 0x4000) >> 15;
        }

        if (v11 < 0x8000)
        {
          if (v11 <= -32768)
          {
            LOWORD(v11) = 0x8000;
          }
        }

        else
        {
          LOWORD(v11) = 0x7FFF;
        }
      }

      result = (result >> 1);
      if ((result & v8) != 0)
      {
        if (v25 < &v30 || v25 + 1 > &v32 || v25 > v25 + 1)
        {
          goto LABEL_74;
        }

        v27 = (*v25 * v10 + 0x4000) >> 15;
        if ((v27 & 0x10000) != 0)
        {
          v10 = v27 | 0xFFFF0000;
        }

        else
        {
          v10 = (*v25 * v10 + 0x4000) >> 15;
        }

        if (v10 < 0x8000)
        {
          if (v10 <= -32768)
          {
            LOWORD(v10) = 0x8000;
          }
        }

        else
        {
          LOWORD(v10) = 0x7FFF;
        }
      }

      --v25;
      if (v24-- <= 1)
      {
        goto LABEL_69;
      }
    }
  }

  LOWORD(v10) = v6;
LABEL_69:
  *a3 = v10;
  *a4 = v11;
  return result;
}

unint64_t ari_done_cbr_encoding_14bits(unint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, int *a5)
{
  v8 = result;
  v9 = a4 - 16;
  v10 = a5[2];
  if (a4 - 16 <= a3 + v10)
  {
    v11 = v10;
  }

  else
  {
    do
    {
      result = ari_encode_14bits_sign(v8, a2, a3, a4, a5, 0);
      a3 = result;
      v10 = a5[2];
    }

    while ((v9 - (result + v10)) > 0);
    v11 = v10;
  }

  v12 = a5[1];
  if (v10)
  {
    v13 = (v8 + 4 * a3);
    v14 = v13 + 1;
    v15 = (v13 + 1) > a2 || v13 >= v14;
    v17 = !v15 && v13 >= v8;
    if (v12 >= 0x8000)
    {
      if (v17)
      {
        *v13 = 1;
        if (v11 >= 1)
        {
          v18 = ~a3;
          v25 = v11 + 1;
          while (v14 >= v8 && (v14 + 1) <= a2 && v14 <= v14 + 1)
          {
            *v14++ = 0;
            --v18;
            if (--v25 <= 1)
            {
LABEL_38:
              v26 = -v18;
              goto LABEL_40;
            }
          }

          goto LABEL_47;
        }

        goto LABEL_39;
      }
    }

    else if (v17)
    {
      *v13 = 0;
      if (v11 >= 1)
      {
        v18 = ~a3;
        v19 = v11 + 1;
        while (v14 >= v8 && (v14 + 1) <= a2 && v14 <= v14 + 1)
        {
          *v14++ = 1;
          --v18;
          if (--v19 <= 1)
          {
            goto LABEL_38;
          }
        }

        goto LABEL_47;
      }

LABEL_39:
      v26 = a3 + 1;
LABEL_40:
      v27 = v26 + 1;
      v28 = (v8 + 4 * v26);
      v29 = 0x4000;
      while (v28 >= v8 && (v28 + 1) <= a2 && v28 <= v28 + 1)
      {
        *v28++ = (v29 & v12) != 0;
        v23 = v27 + 1;
        if (v27 < a4)
        {
          ++v27;
          v15 = v29 >= 2;
          v29 >>= 1;
          if (v15)
          {
            continue;
          }
        }

        return v23 - 1;
      }
    }
  }

  else
  {
    v20 = a3 + 1;
    v21 = (v8 + 4 * a3);
    v22 = 0x8000;
    while (v21 >= v8 && (v21 + 1) <= a2 && v21 <= v21 + 1)
    {
      *v21++ = (v22 & v12) != 0;
      v23 = v20 + 1;
      if (v20 < a4)
      {
        ++v20;
        v24 = v22 > 1;
        v22 >>= 1;
        if (v24)
        {
          continue;
        }
      }

      return v23 - 1;
    }
  }

LABEL_47:
  __break(0x5519u);
  return result;
}

uint64_t L_shr(int a1, unsigned int a2)
{
  if ((a2 & 0x80000000) != 0)
  {
    if (a2 <= 0xFFFFFFE0)
    {
      v4 = -32;
    }

    else
    {
      v4 = a2;
    }

    return L_shl(a1, -v4);
  }

  else
  {
    v2 = a1 >> a2;
    if (a1 < 0)
    {
      v2 = a1 >> a2;
    }

    if (a2 >= 0x1F)
    {
      return (a1 >> 31);
    }

    else
    {
      return v2;
    }
  }
}

uint64_t Inv16(int a1, __int16 *a2, _DWORD *a3)
{
  if (a1 >= 0)
  {
    LOWORD(v6) = a1;
  }

  else
  {
    v6 = -a1;
  }

  if (a1 == -32768)
  {
    LOWORD(v6) = 0x7FFF;
  }

  v7 = v6;
  if ((v6 - 1) > 0x3FFEu)
  {
    v8 = 0;
  }

  else
  {
    v8 = 0;
    LOWORD(v9) = v7;
    do
    {
      v9 = (2 * v9);
      ++v8;
    }

    while (v9 < 0x4000);
  }

  v10 = *a2 - v8;
  if (v10 < 0x8000)
  {
    if (v10 > -32769)
    {
      v11 = 1 - v10;
    }

    else
    {
      *a3 = 1;
      v11 = 32769;
    }
  }

  else
  {
    *a3 = 1;
    v11 = -32766;
  }

  v12 = shl(v7, v8, a3);
  v13 = v12;
  result = mac_r(-2129920, v12, 64, a3);
  v15 = &InvTable[result];
  if (v15 < InvTable || v15 + 1 > InvDiffTable || v15 > v15 + 1 || (v16 = InvDiffTable + result, v16 < InvDiffTable) || v16 + 1 > SqrtTable || v16 > v16 + 1)
  {
    __break(0x5519u);
  }

  else
  {
    v17 = msu_r(*v15, *v16, 2 * (v13 & 0x1FFu), a3);
    if (v11 >= 0x8000)
    {
      *a3 = 1;
      LOWORD(v11) = 0x7FFF;
    }

    if (v17 == -32768)
    {
      LOWORD(v18) = 0x7FFF;
    }

    else
    {
      v18 = -v17;
    }

    if (a1 >= 0)
    {
      LOWORD(v18) = v17;
    }

    *a2 = v11;
    return v18;
  }

  return result;
}

uint64_t BASOP_Util_Divide1616_Scale(int a1, int a2, __int16 *a3, _DWORD *a4)
{
  if (a1 == -32768)
  {
    LOWORD(v8) = 0x7FFF;
  }

  else
  {
    v8 = -a1;
  }

  if (a1 >= 0)
  {
    LOWORD(v8) = a1;
  }

  v9 = v8;
  if (a2 == -32768)
  {
    LOWORD(v10) = 0x7FFF;
  }

  else
  {
    v10 = -a2;
  }

  if (a2 >= 0)
  {
    LOWORD(v10) = a2;
  }

  if (v8 == 0xFFFF)
  {
    v12 = 15;
  }

  else
  {
    if (!v8)
    {
      LOWORD(v11) = 0;
      *a3 = 0;
      return v11;
    }

    v13 = v9 ^ (v9 >> 15);
    if (v13 >= 0x4000)
    {
      v12 = 0;
    }

    else
    {
      v12 = 0;
      do
      {
        v13 = (2 * v13);
        ++v12;
      }

      while (v13 < 0x4000);
    }
  }

  v14 = v10;
  v15 = shl(v9, v12, a4);
  if (v12 > -32767)
  {
    v16 = 1 - v12;
  }

  else
  {
    *a4 = 1;
    v16 = 0x7FFF;
  }

  v17 = v15 >> 1;
  *a3 = v16;
  v18 = v14;
  if (v14)
  {
    if (v14 == 0xFFFF)
    {
      v18 = 15;
    }

    else
    {
      v19 = v14 ^ (v14 >> 15);
      if (v19 >= 0x4000)
      {
        v18 = 0;
      }

      else
      {
        v18 = 0;
        do
        {
          v19 = (2 * v19);
          ++v18;
        }

        while (v19 < 0x4000);
      }
    }
  }

  v20 = a1 ^ a2;
  v21 = shl(v14, v18, a4);
  v22 = *a3 + v18;
  if (v22 < 0x8000)
  {
    if (v22 <= -32769)
    {
      *a4 = 1;
      LOWORD(v22) = 0x8000;
    }
  }

  else
  {
    *a4 = 1;
    LOWORD(v22) = 0x7FFF;
  }

  *a3 = v22;
  v23 = div_s(v17, v21);
  if (v23 == -32768)
  {
    LOWORD(v11) = 0x7FFF;
  }

  else
  {
    v11 = -v23;
  }

  if (v20 >= 0)
  {
    LOWORD(v11) = v23;
  }

  return v11;
}

uint64_t BASOP_util_Pow2(int a1, int a2, __int16 *a3, _DWORD *a4)
{
  if (a2 < 1)
  {
    v9 = L_shl(a1, a2);
    v10 = v9;
    v11 = v9 - 0x40000000;
    if ((v9 & 0x80000000) != 0 && ((v11 ^ v9) & 0x80000000) != 0)
    {
      *a4 = 1;
      v8 = v9 > -1073741825;
      if (v9 <= -1073741825)
      {
        v10 = v9 & 0x3FFFFFFF;
      }

      else
      {
        v10 = v9;
      }

      goto LABEL_23;
    }

    if (v9 > 0x3FFFFFFF)
    {
      v8 = 2;
LABEL_22:
      v10 = (v11 - 0x40000000);
      goto LABEL_23;
    }

    v8 = 1;
  }

  else
  {
    v7 = L_shr(a1, (31 - a2));
    if (v7 == 0x7FFF)
    {
      *a4 = 1;
      v8 = 0x7FFF;
    }

    else
    {
      v8 = v7 + 1;
    }

    v10 = 0;
    if (a1)
    {
      if (a2 <= 0x1F)
      {
        v10 = (a1 << a2) & 0x7FFFFFFE;
        if (((a1 << a2) >> 30))
        {
          v11 = v10 - 0x40000000;
          if (v8 == 0x7FFF)
          {
            *a4 = 1;
            v8 = 0x7FFF;
          }

          else
          {
            ++v8;
          }

          goto LABEL_22;
        }
      }
    }
  }

  if ((v10 & 0x80000000) == 0 && (((v10 + 0x40000000) ^ v10) & 0x80000000) != 0)
  {
    *a4 = 1;
  }

LABEL_23:
  LODWORD(v12) = ((45426 * (v10 >> 16) + ((22713 * v10) >> 15)) >> 1) + 0x40000000;
  v19 = -1431655766;
  v20 = -1431655766;
  Mpy_32_32_ss(v10, v10, &v20, &v19, a4);
  v13 = v20;
  v14 = 1u;
  do
  {
    v15 = v12;
    v16 = Mpy_32_16_1(v13, BASOP_util_Pow2_pow2Coeff[v14]);
    v12 = (v12 + (v16 >> 1));
    if (((v15 ^ (v16 >> 1)) & 0x80000000) == 0 && ((v12 ^ v15) & 0x80000000) != 0)
    {
      v12 = (v15 >> 31) ^ 0x7FFFFFFFu;
      *a4 = 1;
    }

    v19 = -1431655766;
    v20 = -1431655766;
    Mpy_32_32_ss(v13, v10, &v20, &v19, a4);
    v13 = v20;
    ++v14;
  }

  while (v14 != 7);
  *a3 = v8;
  return v12;
}

uint64_t BASOP_Util_Add_MantExp(int a1, int a2, int a3, int a4, _WORD *a5, _DWORD *a6)
{
  v8 = a2 - a4;
  if (a2 - a4 < 0x8000)
  {
    if (v8 <= -32769)
    {
      *a6 = 1;
      LOWORD(v8) = 0x8000;
    }
  }

  else
  {
    *a6 = 1;
    LOWORD(v8) = 0x7FFF;
  }

  v9 = v8;
  if (v8 <= 0xFFF1u)
  {
    v10 = -15;
  }

  else
  {
    v10 = v8;
  }

  if (v8 >= 0xFu)
  {
    v9 = 15;
  }

  if (a2 <= a4)
  {
    v11 = a4;
  }

  else
  {
    v11 = a2;
  }

  v12 = (v8 & 0x8000u) != 0;
  if ((v8 & 0x8000u) != 0)
  {
    v13 = a3;
  }

  else
  {
    v13 = a1;
  }

  if (v12)
  {
    v14 = a1;
  }

  else
  {
    v14 = a3;
  }

  if (v12)
  {
    LOWORD(v15) = v10;
  }

  else
  {
    v15 = -v9;
  }

  v16 = L_shr(v13, v15);
  v17 = v16;
  v18 = v11 + v15;
  if (v18 > -32769)
  {
    v19 = v18;
  }

  else
  {
    *a6 = 1;
    v19 = -32768;
  }

  v20 = v14 + v16;
  if ((v14 ^ v17) < 0 || ((v20 ^ v17) & 0x80000000) == 0)
  {
    if (!v20)
    {
LABEL_35:
      v21 = 0;
      goto LABEL_36;
    }

    if (v20 == -1)
    {
      v21 = 31;
      goto LABEL_36;
    }
  }

  else
  {
    *a6 = 1;
    v20 = (v17 >> 31) ^ 0x7FFFFFFF;
  }

  v22 = v20 ^ (v20 >> 31);
  if (v22 > 0x3FFFFFFF)
  {
    goto LABEL_35;
  }

  v21 = 0;
  do
  {
    v23 = v22 >> 29;
    v22 *= 2;
    ++v21;
  }

  while (!v23);
LABEL_36:
  v24 = L_shl(v20, v21);
  *a5 = HIWORD(v24);
  v25 = v19 - v21;
  if (v25 >= 0x8000)
  {
    *a6 = 1;
    if (!v24)
    {
LABEL_39:
      LOWORD(v25) = 0x7FFF;
      return v25;
    }

LABEL_38:
    *a6 = 1;
    goto LABEL_39;
  }

  if (v25 >= -32768)
  {
    if (!v24)
    {
      return v25;
    }

    if (v25 < 32752)
    {
      LOWORD(v25) = v25 + 16;
      return v25;
    }

    goto LABEL_38;
  }

  *a6 = 1;
  if (v24)
  {
    LOWORD(v25) = -32752;
  }

  else
  {
    LOWORD(v25) = 0x8000;
  }

  return v25;
}

uint64_t BASOP_Util_Add_Mant32Exp(int a1, int a2, int a3, int a4, _WORD *a5, _DWORD *a6)
{
  v8 = a3;
  v9 = a1;
  if (a1)
  {
    v10 = a2;
  }

  else
  {
    v10 = a4;
  }

  if (a3)
  {
    v11 = a4;
  }

  else
  {
    v11 = v10;
  }

  v12 = v10 - v11;
  if (v10 - v11 >= 0x8000)
  {
    *a6 = 1;
    LOWORD(v13) = 31;
LABEL_9:
    v8 = L_shr(a3, v13);
    goto LABEL_20;
  }

  if (v12 <= -32769)
  {
    *a6 = 1;
    LOWORD(v13) = -31;
LABEL_19:
    v9 = L_shl(a1, v13);
    goto LABEL_20;
  }

  v13 = v12;
  if (v12 <= -31)
  {
    v13 = -31;
  }

  if (v13 >= 31)
  {
    LOWORD(v13) = 31;
  }

  if (v12 < 0)
  {
    goto LABEL_19;
  }

  if (v10 != v11)
  {
    goto LABEL_9;
  }

LABEL_20:
  v14 = v11;
  if (v10 > v11)
  {
    v14 = v10;
  }

  if (v14 == 0x7FFF)
  {
    *a6 = 1;
    v15 = 0x7FFF;
  }

  else
  {
    v15 = (v14 + 1);
  }

  result = ((v8 >> 1) + (v9 >> 1));
  if (((v8 >> 1) ^ (v9 >> 1)) < 0 || ((result ^ (v9 >> 1)) & 0x80000000) == 0)
  {
    if (result == -1)
    {
      v18 = 31;
      goto LABEL_38;
    }

    if (!result)
    {
      goto LABEL_41;
    }
  }

  else
  {
    *a6 = 1;
    result = (v9 >> 31) ^ 0x7FFFFFFFu;
  }

  v17 = result ^ (result >> 31);
  if (v17 > 0x3FFFFFFF)
  {
    v18 = 0;
    goto LABEL_39;
  }

  v18 = 0;
  do
  {
    v19 = v17 >> 29;
    v17 *= 2;
    ++v18;
  }

  while (!v19);
  if (v18)
  {
LABEL_38:
    result = L_shl(result, v18);
    if (result)
    {
      goto LABEL_39;
    }

LABEL_41:
    LOWORD(v20) = 0;
    goto LABEL_44;
  }

  v18 = 0;
  if (!result)
  {
    goto LABEL_41;
  }

LABEL_39:
  v20 = v15 - v18;
  if (v20 < 0x8000)
  {
    if (v20 <= -32769)
    {
      *a6 = 1;
      LOWORD(v20) = 0x8000;
    }
  }

  else
  {
    *a6 = 1;
    LOWORD(v20) = 0x7FFF;
  }

LABEL_44:
  *a5 = v20;
  return result;
}

uint64_t mac_r(int a1, int a2, int a3, _DWORD *a4)
{
  if (a3 * a2 == 0x40000000)
  {
    *a4 = 1;
    v4 = 0x7FFFFFFF;
  }

  else
  {
    v4 = 2 * a3 * a2;
  }

  v5 = v4 + a1;
  if (((v4 ^ a1) & 0x80000000) == 0 && (v5 ^ a1) < 0)
  {
    v5 = (a1 >> 31) ^ 0x7FFFFFFF;
    *a4 = 1;
  }

  v6 = v5 + 0x8000;
  if ((v5 & 0x80000000) == 0 && (v6 ^ v5) < 0)
  {
    *a4 = 1;
    v6 = 0x7FFFFFFF;
  }

  return (v6 >> 16);
}

uint64_t Mpy_32_32_ss(uint64_t result, int a2, _DWORD *a3, _DWORD *a4, _DWORD *a5)
{
  if (result == 0x80000000 && a2 == 0x80000000)
  {
    *a3 = 0x7FFFFFFF;
    *a4 = -1;
  }

  else
  {
    v6 = a2 * result;
    *a4 = 2 * (v6 & 0x7FFF);
    v7 = (a2 >> 16) * result;
    v8 = (v6 >> 15) + 2 * v7;
    v9 = v8 & 0x8000000000;
    if ((v7 & 0x4000000000) == 0 && v9)
    {
      *a5 = 1;
    }

    v10 = a2 * (result >> 16);
    v11 = v8 + 2 * v10;
    v12 = v9 & (2 * v10);
    v13 = v11 & 0x8000000000;
    if (v12)
    {
      v14 = v13 == 0;
    }

    else
    {
      v14 = 0;
    }

    if (v14 || ((v8 | (2 * v10)) & 0x8000000000) == 0 && v13)
    {
      *a5 = 1;
    }

    *a4 |= v11 << 16;
    *a3 = (v11 >> 16) + 2 * SWORD1(result) * SHIWORD(a2);
  }

  return result;
}

uint64_t BASOP_Util_Log2(int a1, _DWORD *a2)
{
  if (a1 == -1)
  {
    v4 = 31;
  }

  else
  {
    if (!a1)
    {
      return 0x80000000;
    }

    v5 = a1 ^ (a1 >> 31);
    if (v5 > 0x3FFFFFFF)
    {
      v4 = 0;
    }

    else
    {
      v4 = 0;
      do
      {
        v6 = v5 >> 29;
        v5 *= 2;
        ++v4;
      }

      while (!v6);
    }
  }

  v7 = v4;
  v8 = L_shl(a1, v4) ^ 0x7FFFFFFF;
  v9 = HIWORD(v8);
  v10 = (v9 * v9) >> 15;
  v11 = -65536 * HIWORD(v8) - (v10 << 15);
  if ((((-32768 * v10) ^ (-65536 * HIWORD(v8))) & 0x80000000) == 0 && (v11 ^ (-65536 * HIWORD(v8))) < 0)
  {
    if (v8 < 0x10000)
    {
      v11 = 0x7FFFFFFF;
    }

    else
    {
      v11 = 0x80000000;
    }

    *a2 = 1;
  }

  v12 = (v9 * v10) >> 15;
  v13 = -21846 * v12 + v11;
  if ((((-21846 * v12) ^ v11) & 0x80000000) == 0 && (v13 ^ v11) < 0)
  {
    v13 = (v11 >> 31) ^ 0x7FFFFFFF;
    *a2 = 1;
  }

  v14 = (v9 * v12) >> 15;
  v15 = v13 - (v14 << 14);
  if ((((-16384 * v14) ^ v13) & 0x80000000) == 0 && (v15 ^ v13) < 0)
  {
    v15 = (v13 >> 31) ^ 0x7FFFFFFF;
    *a2 = 1;
  }

  v16 = (v9 * v14) >> 15;
  v17 = -13108 * v16 + v15;
  if ((((-13108 * v16) ^ v15) & 0x80000000) == 0 && (v17 ^ v15) < 0)
  {
    v17 = (v15 >> 31) ^ 0x7FFFFFFF;
    *a2 = 1;
  }

  v18 = (v9 * v16) >> 15;
  v19 = -10922 * v18 + v17;
  if ((((-10922 * v18) ^ v17) & 0x80000000) == 0 && (v19 ^ v17) < 0)
  {
    v19 = (v17 >> 31) ^ 0x7FFFFFFF;
    *a2 = 1;
  }

  v20 = -9362 * ((v9 * v18) >> 15);
  v21 = v20 + v19;
  if (((v20 ^ v19) & 0x80000000) != 0 || ((v21 ^ v19) & 0x80000000) == 0)
  {
    if ((v21 & 0x80000000) == 0)
    {
      goto LABEL_33;
    }

LABEL_35:
    v22 = v21 >> 1;
    goto LABEL_36;
  }

  *a2 = 1;
  if (v19 < 0)
  {
    v21 = 0x80000000;
    goto LABEL_35;
  }

  v21 = 0x7FFFFFFF;
LABEL_33:
  v22 = v21 >> 1;
LABEL_36:
  v23 = 14506 * (v21 >> 16);
  v24 = v23 + v22;
  if ((v23 ^ v22) < 0 || ((v24 ^ v22) & 0x80000000) == 0)
  {
    if ((v24 & 0x80000000) == 0)
    {
      goto LABEL_41;
    }

LABEL_43:
    v25 = v24 >> 5;
    goto LABEL_44;
  }

  *a2 = 1;
  if (v22 < 0)
  {
    v24 = 0x80000000;
    goto LABEL_43;
  }

  v24 = 0x7FFFFFFF;
LABEL_41:
  v25 = v24 >> 5;
LABEL_44:
  if (((v7 - 64) >> 7) >= 0x1FFu)
  {
    v26 = v7 << 25;
  }

  else
  {
    v26 = (v7 >> 15) ^ 0x7FFFFFFF;
  }

  result = (v25 - v26);
  if ((v26 ^ v25) < 0 && ((result ^ v25) & 0x80000000) != 0)
  {
    result = (v25 >> 31) ^ 0x7FFFFFFFu;
    *a2 = 1;
  }

  return result;
}

uint64_t msu_r(int a1, int a2, int a3, _DWORD *a4)
{
  if (a3 * a2 == 0x40000000)
  {
    *a4 = 1;
    v4 = 0x7FFFFFFF;
  }

  else
  {
    v4 = 2 * a3 * a2;
  }

  v5 = a1 - v4;
  if ((v4 ^ a1) < 0 && (v5 ^ a1) < 0)
  {
    v5 = (a1 >> 31) ^ 0x7FFFFFFF;
    *a4 = 1;
  }

  v6 = v5 + 0x8000;
  if ((v5 & 0x80000000) == 0 && (v6 ^ v5) < 0)
  {
    *a4 = 1;
    v6 = 0x7FFFFFFF;
  }

  return (v6 >> 16);
}

uint64_t UnmapIndex(uint64_t result, unsigned int a2, int a3, int a4, _DWORD *a5, int *a6)
{
  if ((result & 0x100) == 0 || a3 < 1)
  {
    if (result > 15)
    {
      if (result > 0x4F)
      {
        if (result > 0xCF)
        {
          if (result < 0xE0 || a4)
          {
            *a5 = 1;
            v17 = result - 152;
          }

          else
          {
            *a5 = 0;
            v17 = result - 36;
          }
        }

        else
        {
          *a5 = 3;
          v17 = result + 16;
        }
      }

      else
      {
        *a5 = 4;
        v17 = result + 112;
      }
    }

    else
    {
      *a5 = 3;
      v17 = result + 48;
    }

    goto LABEL_28;
  }

  *a5 = 7;
  v6 = (&Ratios + 34 * a2);
  v7 = &v6[2 * (result >> 9)];
  v8 = (v7 + 2);
  if (v7 >= v6 && v8 <= (v6 + 34) && v7 < v8)
  {
    v11 = *v7;
    v12 = v7[1];
    v13 = *v7 + 4 * result;
    v14 = (v13 - 4);
    v15 = v13 - 4 < v11 || v13 > v12;
    if (!v15 && v14 < v13)
    {
      v17 = (vcvts_n_s32_f32(*v14, 2uLL) * a3) >> 2;
LABEL_28:
      *a6 = v17;
      return result;
    }
  }

  __break(0x5519u);
  return result;
}

uint64_t tcx_hm_render(int a1, __int16 a2, void *a3)
{
  v4 = 15 - a2;
  if (a2 < -32752)
  {
    v4 = 0x7FFF;
  }

  v5 = L_shl(a1, v4);
  v6 = v5;
  v7 = SHIWORD(v5);
  v8 = ((0x7FFFFFFF9896 * v5) >> 15) - 52948 * SHIWORD(v5);
  v9 = v8 - 0x1000000;
  v10 = v8 << 7;
  v11 = (v8 >> 31) ^ 0x7FFFFFFF;
  if (v9 >> 25 == 127)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  v13 = BASOP_Util_InvLog2(v12, &v63);
  v14 = ((v13 >> 1) & 1) + (v13 >> 2);
  v15 = 603979776 - v14;
  v16 = 2 * (603979776 - v14);
  if (v14 > 603979776)
  {
    v17 = 0x80000000;
  }

  else
  {
    v17 = 0x7FFFFFFF;
  }

  if ((v15 ^ (2 * v15)) >= 0)
  {
    v17 = v16;
  }

  v18 = 52428 * (v15 >> 16) + ((26214 * v15) >> 15);
  v19 = v18 + v17;
  v20 = v18 ^ v17;
  v21 = (v19 ^ v17) > -1 || v20 < 0;
  v22 = (v17 >> 31) ^ 0x7FFFFFFF;
  if (v21)
  {
    v22 = v19;
  }

  v23 = ((v22 + 0x8000) ^ v22) > -1 || v22 < 0;
  v24 = (v22 + 0x8000) >> 16;
  if (v23)
  {
    v25 = v24;
  }

  else
  {
    v25 = 0x7FFF;
  }

  v26 = ((0x7FFFFFFFB622 * v6) >> 15) - 37820 * v7;
  v27 = v26 - 0x1000000;
  v28 = v26 << 7;
  v29 = (v26 >> 31) ^ 0x7FFFFFFF;
  if (v27 >> 25 == 127)
  {
    v30 = v28;
  }

  else
  {
    v30 = v29;
  }

  v31 = BASOP_Util_InvLog2(v30, &v63);
  v32 = 1395897139 - (((v31 >> 1) & 1) + (v31 >> 2));
  if (v32 < 0x365B0000)
  {
    return 1;
  }

  result = div_s(13915, v32 >> 16);
  if ((result * result) <= 0x3FFFBFFF)
  {
    v34 = (2 * result * result + 0x8000) >> 16;
  }

  else
  {
    v34 = 0x7FFF;
  }

  v35 = *a3 + 10;
  if (v35 <= a3[1])
  {
    v36 = (*a3 + 8);
    if (v36 <= v35 && v36 >= a3[2])
    {
      v37 = v25;
      *v36 = v25;
      v38 = 1;
      v39 = 10;
      while (1)
      {
        if (v38 == 0x8000)
        {
          LOWORD(v40) = 0x7FFF;
        }

        else
        {
          v40 = -v38;
        }

        v41 = v34 * (v40 * v38);
        v42 = v41 - 0x200000;
        v43 = v41 << 10;
        v44 = (v41 >> 31) ^ 0x7FFFFFFF;
        v45 = v42 >= 0xFFC00000 ? v43 : v44;
        result = BASOP_Util_InvLog2(v45, &v63);
        v46 = a3[2];
        v47 = (*a3 + v39);
        v48 = (v47 + 1) > a3[1] || v47 > v47 + 1;
        if (v48 || v47 < v46)
        {
          break;
        }

        result = Mpy_32_16_1(result, v37);
        v50 = ((result + 0x8000) ^ result) > -1 || result < 0;
        v51 = (result + 0x8000) >> 16;
        if (!v50)
        {
          LOWORD(v51) = 0x7FFF;
        }

        *v47 = v51;
        ++v38;
        v39 += 2;
        if (v39 == 18)
        {
          v52 = 0;
          v53 = 16;
          while (1)
          {
            v54 = a3[1];
            v55 = (*a3 + v53);
            v56 = (v55 + 1) > v54 || v55 > v55 + 1;
            v57 = !v56 && v55 >= v46;
            v58 = (*a3 + v52);
            v59 = v58 + 1;
            v60 = !v57 || v59 > v54;
            v61 = v60 || v58 > v59;
            if (v61 || v58 < v46)
            {
              break;
            }

            *v58 = *v55;
            v53 -= 2;
            v52 += 2;
            if (v53 == 8)
            {
              return 0;
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

double tcx_hm_get_re(unint64_t a1, unint64_t a2, uint64_t a3, int a4, char a5, uint64_t a6, uint64_t a7, int a8, unint64_t a9, unint64_t a10, vDSP_Length __N)
{
  v18 = __N;
  *v43 = *MEMORY[0x1E69E9840];
  memset(v42, 170, sizeof(v42));
  v41 = -1;
  if (__N >= 1)
  {
    v19 = a9;
    v20 = v42;
    v21 = __N;
    do
    {
      if (v19 < a9 || (v19 + 1) > a10 || v19 > v19 + 1 || v20 < v42 || v20 + 1 > v43 || v20 > v20 + 1)
      {
LABEL_31:
        __break(0x5519u);
      }

      v22 = *v19++;
      *v20++ = v22;
      --v21;
    }

    while (v21);
  }

  v40[0] = a6;
  v40[1] = a7;
  v40[2] = a6;
  v23 = tcx_hm_modify_envelope(a3, a4, a5, v40, v42, v43, v18);
  if (v18 < 1)
  {
    return 0.0;
  }

  v24 = 0;
  v25 = 0.0;
  do
  {
    v26 = (a1 + v24 * 4);
    v27 = a1 + v24 * 4 + 4;
    v29 = a1 + v24 * 4 < a1 || v27 > a2 || v26 > v27;
    v30 = &v42[v24];
    v31 = &v42[v24 + 1];
    if (v29 || v30 < v42 || v31 > v43 || v30 > v31)
    {
      goto LABEL_31;
    }

    v25 = v25 + (*v26 * v42[v24++]);
  }

  while (v18 != v24);
  *v40 = 1.0 / v25;
  MEMORY[0x1EEE9AC00](v23);
  v36 = &v38 - ((v35 + 15) & 0x7FFFFFFF0);
  memset(v36, 255, v35);
  vDSP_vflt32(v42, 1, v36, 1, v18);
  MEMORY[0x19EAE6090](v36, 1, v40, v36, 1, v18);
  MEMORY[0x19EAE5FA0](v36, 1, a1, 1, v36, 1, v18);
  v39 = 4.0;
  vvpowsf(v36, &v39, v36, &__N);
  vDSP_sve(v36, 1, &v41, __N);
  LODWORD(result) = v41;
  return result;
}

uint64_t tcx_hm_modify_envelope(uint64_t result, int a2, char a3, uint64_t *a4, unint64_t a5, unint64_t a6, int a7)
{
  *&v34[6] = *MEMORY[0x1E69E9840];
  memset(v33, 170, sizeof(v33));
  if (result)
  {
    v9 = result;
    v10 = 0;
    v11 = *a4;
    v12 = a4[1];
    v13 = a4[2];
    do
    {
      v14 = (v11 + v10);
      v15 = v11 + v10 + 2;
      if (v15 > v12 || v14 > v15 || v14 < v13)
      {
        goto LABEL_40;
      }

      v18 = *v14 * v9;
      if (v18 == 0x40000000)
      {
        v19 = 0x7FFFFFFF;
      }

      else
      {
        v19 = 2 * v18;
      }

      v20 = (v19 + 0x8000) >> 16;
      if (v20 >= 32255)
      {
        LOWORD(v20) = 32255;
      }

      v21 = ((v19 + 0x8000) ^ v19) > -1 || v19 < 0;
      v22 = v20 + 512;
      if (!v21)
      {
        v22 = 0x7FFF;
      }

      result = div_s(512, v22);
      *&v33[v10] = result;
      v10 += 2;
    }

    while (v10 != 18);
    v23 = a2 >> a3;
    if (a2 >> a3 <= a7 + 3)
    {
      v24 = 1;
      while (1)
      {
        v25 = v23 <= 4 ? 4 : v23;
        v26 = v23 + 4;
        if (v23 + 4 >= a7 - 1)
        {
          v26 = a7 - 1;
        }

        if ((v25 - 4) <= v26)
        {
          break;
        }

LABEL_38:
        v23 = (++v24 * a2) >> a3;
        if (v23 > a7 + 3)
        {
          return result;
        }
      }

      v27 = v26 - v25 + 5;
      v28 = &v33[2 * v25 + 2 + -2 * v23];
      v29 = (a5 - 16 + 4 * v25);
      while (v29 >= a5 && (v29 + 1) <= a6 && v29 <= v29 + 1 && v28 - 2 >= v33 && v28 <= v34 && v28 - 2 <= v28)
      {
        result = Mpy_32_16_1(*v29, *(v28 - 1));
        *v29++ = result;
        v28 += 2;
        if (!--v27)
        {
          goto LABEL_38;
        }
      }

LABEL_40:
      __break(0x5519u);
    }
  }

  return result;
}

uint64_t BASOP_Util_InvLog2(uint64_t result, _DWORD *a2)
{
  if (result < -1040187392)
  {
    return 0;
  }

  v4 = result - 1040187392;
  if ((result & 0x80000000) != 0 && ((v4 ^ result) & 0x80000000) != 0)
  {
    *a2 = 1;
    v4 = 0x80000000;
  }

  v2 = 0x7FFFFFFFLL;
  if (!result || (v4 & 0x80000000) == 0)
  {
    return v2;
  }

  if (result < 0)
  {
    v5 = -(result >> 25);
  }

  else
  {
    v5 = 31 - (result >> 25);
  }

  v6 = &exp2x_tab_long[(result >> 10) & 0x1F];
  if (v6 < exp2x_tab_long || v6 + 1 > exp2_tab_long || v6 > v6 + 1)
  {
    goto LABEL_27;
  }

  v7 = *v6;
  v8 = v7 + ((44 * (result & 0x3FF) + ((12335 * (result & 0x3FF)) >> 15)) >> 1);
  if ((v7 & 0x80000000) == 0 && (v8 ^ v7) < 0)
  {
    *a2 = 1;
    v8 = 0x7FFFFFFF;
  }

  v9 = &exp2_tab_long[(result >> 20) & 0x1F];
  if (v9 < exp2_tab_long || v9 + 1 > exp2w_tab_long || v9 > v9 + 1 || (v10 = &exp2w_tab_long[(result >> 15) & 0x1F], v10 < exp2w_tab_long) || v10 + 1 > InvTable || v10 > v10 + 1)
  {
LABEL_27:
    __break(0x5519u);
  }

  else
  {
    v11 = *v9;
    v12 = *v10;
    v15 = -1431655766;
    v16 = -1431655766;
    Mpy_32_32_ss(v11, v12, &v16, &v15, a2);
    v13 = v16;
    v15 = -1431655766;
    v16 = -1431655766;
    Mpy_32_32_ss(v13, v8, &v16, &v15, a2);
    v14 = v16;

    return L_shr(v14, (v5 - 3));
  }

  return result;
}

uint64_t basop_lpc2mdct(__int16 *a1, unint64_t a2, int a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7, uint64_t a8, unint64_t a9, unint64_t a10, unint64_t a11, unint64_t a12)
{
  v12 = 0;
  LOWORD(v13) = 0;
  v610[1] = *MEMORY[0x1E69E9840];
  *&v14 = 0xAAAAAAAAAAAAAAAALL;
  *(&v14 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v601[14] = v14;
  v601[15] = v14;
  v601[12] = v14;
  v601[13] = v14;
  v601[10] = v14;
  v601[11] = v14;
  v601[8] = v14;
  v601[9] = v14;
  v601[6] = v14;
  v601[7] = v14;
  v601[4] = v14;
  v601[5] = v14;
  v601[2] = v14;
  v601[3] = v14;
  v601[0] = v14;
  v601[1] = v14;
  v600[14] = v14;
  v600[15] = v14;
  v600[12] = v14;
  v600[13] = v14;
  v600[10] = v14;
  v600[11] = v14;
  v600[8] = v14;
  v600[9] = v14;
  v600[6] = v14;
  v600[7] = v14;
  v600[4] = v14;
  v600[5] = v14;
  v600[2] = v14;
  v600[3] = v14;
  v599 = -21846;
  v598 = -21846;
  v15 = 1;
  v597 = -21846;
  v596 = -21846;
  v16 = &SineTable512_fx;
  v600[0] = v14;
  v600[1] = v14;
  do
  {
    v17 = v15;
    v18 = v13;
    v19 = &a1[v13];
    v20 = v19 + 1;
    v21 = v19 < a1 || v20 > a2;
    v23 = !v21 && v19 <= v20 && v16 >= &SineTable512_fx;
    v24 = !v23 || v16 + 2 > &word_19B39DA5A;
    v25 = v601 + 4 * v18;
    v26 = v25 + 4;
    if (v24 || v25 < v601 || v26 > v602 || v25 > v26)
    {
      goto LABEL_970;
    }

    v30 = *v19;
    v31 = *v16 * v30;
    v32 = v16[1] * v30;
    v33 = v31 == 0x40000000;
    if (v31 == 0x40000000)
    {
      v34 = 0x7FFFFFFF;
    }

    else
    {
      v34 = 2 * v31;
    }

    *(v601 + v18) = v34;
    if (v33 || v32 == 0x40000000)
    {
      v12 = 1;
    }

    v36 = v600 + 4 * v18;
    if (v36 < v600 || v36 + 4 > v601 || v36 > v36 + 4)
    {
      goto LABEL_970;
    }

    if (v32 == 0x40000000)
    {
      v37 = 0x7FFFFFFF;
    }

    else
    {
      v37 = 2 * v32;
    }

    if (v37 == 0x80000000)
    {
      v38 = 0x7FFFFFFF;
    }

    else
    {
      v38 = -v37;
    }

    *(v600 + v18) = v38;
    v16 += 16;
    v13 = (v18 + 1);
    v15 = v17 + 1;
  }

  while (v13 <= a3);
  v595 = v12;
  if (v13 <= 63)
  {
    v39 = v17 - 64;
    v40 = 4 * v17;
    v41 = v601;
    v42 = v600;
    while (1)
    {
      v43 = (v41 + v40);
      if ((v41 + v40) < v601)
      {
        break;
      }

      if (v43 + 1 > v602 || v43 > v43 + 1)
      {
        break;
      }

      *v43 = 0;
      v45 = (v42 + v40);
      if ((v42 + v40) < v600 || v45 + 1 > v601 || v45 > v45 + 1)
      {
        break;
      }

      *v45 = 0;
      v42 = (v42 + 4);
      v41 = (v41 + 4);
      v23 = __CFADD__(v39++, 1);
      if (v23)
      {
        goto LABEL_54;
      }
    }

LABEL_970:
    __break(0x5519u);
  }

LABEL_54:
  if ((a1 + 1) > a2 || a1 + 1 < a1)
  {
    goto LABEL_970;
  }

  v46 = *a1;
  if (!*a1)
  {
    goto LABEL_64;
  }

  if (v46 == 0xFFFF)
  {
    v47 = 16;
    goto LABEL_65;
  }

  v48 = (v46 ^ (v46 >> 15));
  if (v48 < 0x4000)
  {
    v49 = 0;
    do
    {
      v50 = v49;
      v48 = (2 * v48);
      ++v49;
    }

    while (v48 < 0x4000);
    if (v49 == 0x7FFF)
    {
      v595 = 1;
      v47 = 0x7FFF;
    }

    else
    {
      v47 = v50 + 2;
    }
  }

  else
  {
LABEL_64:
    v47 = 1;
  }

LABEL_65:
  v51 = 0;
  v52 = 0;
  *&v53 = 0xAAAAAAAAAAAAAAAALL;
  *(&v53 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v609[2] = v53;
  v609[3] = v53;
  v554 = v47;
  v609[0] = v53;
  v609[1] = v53;
  v608[2] = v53;
  v608[3] = v53;
  v608[0] = v53;
  v608[1] = v53;
  v607[2] = v53;
  v607[3] = v53;
  v607[0] = v53;
  v607[1] = v53;
  v606[2] = v53;
  v606[3] = v53;
  v606[0] = v53;
  v606[1] = v53;
  v605[2] = v53;
  v605[3] = v53;
  v605[0] = v53;
  v605[1] = v53;
  v604[2] = v53;
  v604[3] = v53;
  v604[0] = v53;
  v604[1] = v53;
  v603[2] = v53;
  v603[3] = v53;
  v603[0] = v53;
  v603[1] = v53;
  v602[2] = v53;
  v602[3] = v53;
  v54 = v602 + 4;
  v602[0] = v53;
  v602[1] = v53;
  do
  {
    v55 = v51;
    v56 = v54;
    v57 = 8;
    do
    {
      v58 = v601 + (v55 >> 30);
      v59 = v58 + 4;
      if (v58 < v601 || v59 > v602 || v58 > v59)
      {
        goto LABEL_970;
      }

      v62 = v56 - 1;
      if (v56 - 1 < v602)
      {
        goto LABEL_970;
      }

      if (v56 > v610)
      {
        goto LABEL_970;
      }

      if (v62 > v56)
      {
        goto LABEL_970;
      }

      *v62 = *(v601 + (v55 >> 32));
      v63 = v600 + (v55 >> 32);
      if (v63 < v600 || v63 + 1 > v601 || v63 > v63 + 1 || v56 < v602 || v56 + 1 > v610 || v56 > v56 + 1)
      {
        goto LABEL_970;
      }

      *v56 = *v63;
      v56 += 2;
      v55 += 0x800000000;
      --v57;
    }

    while (v57);
    ++v52;
    v54 += 64;
    v51 += 0x100000000;
  }

  while (v52 != 8);
  for (i = 0; i != 32; i += 4)
  {
    v65 = &v602[i];
    v66 = &v602[i] + 1;
    if (&v602[i] < v602 || v66 < v602)
    {
      goto LABEL_970;
    }

    if (v66 > v610)
    {
      goto LABEL_970;
    }

    if (v66 < v65)
    {
      goto LABEL_970;
    }

    v68 = &v602[i] + 8;
    if (v68 > v610)
    {
      goto LABEL_970;
    }

    if (v68 < v66)
    {
      goto LABEL_970;
    }

    v69 = &v602[i] + 2;
    if (v69 < v65)
    {
      goto LABEL_970;
    }

    v70 = &v602[i] + 3;
    if (v70 > v610)
    {
      goto LABEL_970;
    }

    if (v69 > v70)
    {
      goto LABEL_970;
    }

    v71 = &v602[i] + 3;
    if (v71 < v66)
    {
      goto LABEL_970;
    }

    v72 = &v602[i + 1];
    if (v72 > v610)
    {
      goto LABEL_970;
    }

    if (v71 > v72)
    {
      goto LABEL_970;
    }

    v73 = &v602[i + 1];
    if (v73 < v65)
    {
      goto LABEL_970;
    }

    v74 = &v602[i + 1] + 1;
    if (v74 > v610)
    {
      goto LABEL_970;
    }

    if (v73 > v74)
    {
      goto LABEL_970;
    }

    v75 = &v602[i + 1] + 1;
    if (v75 < v66)
    {
      goto LABEL_970;
    }

    v76 = &v602[i + 1] + 2;
    if (v76 > v610)
    {
      goto LABEL_970;
    }

    if (v75 > v76)
    {
      goto LABEL_970;
    }

    v77 = &v602[i + 1] + 2;
    if (v77 < v65)
    {
      goto LABEL_970;
    }

    v78 = &v602[i + 1] + 3;
    if (v78 > v610)
    {
      goto LABEL_970;
    }

    if (v77 > v78)
    {
      goto LABEL_970;
    }

    v79 = &v602[i + 1] + 3;
    if (v79 < v66)
    {
      goto LABEL_970;
    }

    v80 = &v602[i + 2];
    if (v80 > v610)
    {
      goto LABEL_970;
    }

    if (v79 > v80)
    {
      goto LABEL_970;
    }

    v81 = &v602[i + 2];
    if (v81 < v65)
    {
      goto LABEL_970;
    }

    v82 = &v602[i + 2] + 1;
    if (v82 > v610)
    {
      goto LABEL_970;
    }

    if (v81 > v82)
    {
      goto LABEL_970;
    }

    v83 = &v602[i + 2] + 1;
    if (v83 < v66)
    {
      goto LABEL_970;
    }

    v84 = &v602[i + 2] + 2;
    if (v84 > v610)
    {
      goto LABEL_970;
    }

    if (v83 > v84)
    {
      goto LABEL_970;
    }

    v85 = &v602[i + 2] + 2;
    if (v85 < v65)
    {
      goto LABEL_970;
    }

    v86 = &v602[i + 2] + 3;
    if (v86 > v610)
    {
      goto LABEL_970;
    }

    if (v85 > v86)
    {
      goto LABEL_970;
    }

    v87 = &v602[i + 2] + 3;
    if (v87 < v66)
    {
      goto LABEL_970;
    }

    v88 = &v602[i + 3];
    if (v88 > v610)
    {
      goto LABEL_970;
    }

    if (v87 > v88)
    {
      goto LABEL_970;
    }

    v89 = &v602[i + 3];
    if (v89 < v65)
    {
      goto LABEL_970;
    }

    v90 = &v602[i + 3] + 1;
    if (v90 > v610)
    {
      goto LABEL_970;
    }

    if (v89 > v90)
    {
      goto LABEL_970;
    }

    v91 = &v602[i + 3] + 1;
    if (v91 < v66)
    {
      goto LABEL_970;
    }

    v92 = &v602[i + 3] + 2;
    if (v92 > v610)
    {
      goto LABEL_970;
    }

    if (v91 > v92)
    {
      goto LABEL_970;
    }

    v93 = &v602[i + 3] + 2;
    if (v93 < v65)
    {
      goto LABEL_970;
    }

    v94 = &v602[i + 3] + 12;
    if (v94 > v610)
    {
      goto LABEL_970;
    }

    if (v93 > v94)
    {
      goto LABEL_970;
    }

    v95 = &v602[i + 3] + 3;
    if (v95 < v66)
    {
      goto LABEL_970;
    }

    v96 = &v602[i + 4];
    if (v96 > v610 || v95 > v96)
    {
      goto LABEL_970;
    }

    v97 = SLODWORD(v602[i]) >> 4;
    v98 = *v66 >> 4;
    v99 = *v69 >> 4;
    v100 = *v71 >> 4;
    v101 = *v73 >> 4;
    v102 = *v75 >> 4;
    v103 = *v77 >> 4;
    v104 = *v81 >> 4;
    v105 = *v83 >> 4;
    v106 = *v85 >> 4;
    v107 = *v87 >> 4;
    v108 = *v89 >> 4;
    v109 = *v91 >> 4;
    v110 = v104 + v97;
    v111 = v104 ^ v97;
    if (((v104 + v97) ^ v97) <= -1 && v111 >= 0)
    {
      v110 = (SLODWORD(v602[i]) >> 31) ^ 0x7FFFFFFF;
    }

    v113 = v97 - v104;
    if ((v111 & (v113 ^ v97)) < 0)
    {
      v114 = (SLODWORD(v602[i]) >> 31) ^ 0x7FFFFFFF;
    }

    else
    {
      v114 = v113;
    }

    v115 = v105 ^ v98;
    if (((v105 + v98) ^ v98) > -1 || v115 < 0)
    {
      v117 = v105 + v98;
    }

    else
    {
      v117 = (*v66 >> 31) ^ 0x7FFFFFFF;
    }

    if ((v115 & ((v98 - v105) ^ v98)) < 0)
    {
      v118 = (*v66 >> 31) ^ 0x7FFFFFFF;
    }

    else
    {
      v118 = v98 - v105;
    }

    v119 = v106 + v99;
    v120 = v106 ^ v99;
    if (((v106 + v99) ^ v99) <= -1 && v120 >= 0)
    {
      v119 = (v99 >> 31) ^ 0x7FFFFFFF;
    }

    v122 = v99 - v106;
    if ((v120 & (v122 ^ v99)) < 0)
    {
      v123 = (v99 >> 31) ^ 0x7FFFFFFF;
    }

    else
    {
      v123 = v122;
    }

    v124 = v107 + v100;
    v125 = v107 ^ v100;
    if (((v107 + v100) ^ v100) <= -1 && v125 >= 0)
    {
      v124 = (v100 >> 31) ^ 0x7FFFFFFF;
    }

    v127 = v100 - v107;
    if ((v125 & (v127 ^ v100)) < 0)
    {
      v128 = (v100 >> 31) ^ 0x7FFFFFFF;
    }

    else
    {
      v128 = v127;
    }

    v129 = v108 ^ v101;
    if (((v108 + v101) ^ v101) > -1 || v129 < 0)
    {
      v131 = v108 + v101;
    }

    else
    {
      v131 = (v101 >> 31) ^ 0x7FFFFFFF;
    }

    v132 = v101 - v108;
    if ((v129 & ((v101 - v108) ^ v101)) < 0)
    {
      v132 = (v101 >> 31) ^ 0x7FFFFFFF;
    }

    v133 = v109 ^ v102;
    v134 = ((v109 + v102) ^ v102) > -1 || v133 < 0;
    v135 = (v102 >> 31) ^ 0x7FFFFFFF;
    if (v134)
    {
      v136 = v109 + v102;
    }

    else
    {
      v136 = (v102 >> 31) ^ 0x7FFFFFFF;
    }

    v137 = v102 - v109;
    v21 = (v133 & ((v102 - v109) ^ v102)) < 0;
    v138 = *v93;
    if (!v21)
    {
      v135 = v137;
    }

    v139 = v103 ^ (v138 >> 4);
    if (((v103 + (v138 >> 4)) ^ v103) > -1 || v139 < 0)
    {
      v141 = v103 + (v138 >> 4);
    }

    else
    {
      v141 = (v103 >> 31) ^ 0x7FFFFFFF;
    }

    v142 = v103 - (v138 >> 4);
    v143 = *v79 >> 4;
    if ((v139 & (v142 ^ v103)) < 0)
    {
      v142 = (v103 >> 31) ^ 0x7FFFFFFF;
    }

    v144 = v143 + (*v95 >> 4);
    v145 = v143 ^ (*v95 >> 4);
    if ((v144 ^ v143) <= -1 && v145 >= 0)
    {
      v144 = (*v79 >> 31) ^ 0x7FFFFFFF;
    }

    if ((v145 & ((v143 - (*v95 >> 4)) ^ v143)) < 0)
    {
      v147 = (*v79 >> 31) ^ 0x7FFFFFFF;
    }

    else
    {
      v147 = v143 - (*v95 >> 4);
    }

    v148 = v131 ^ v110;
    if (((v131 + v110) ^ v110) > -1 || v148 < 0)
    {
      v150 = v131 + v110;
    }

    else
    {
      v150 = (v110 >> 31) ^ 0x7FFFFFFF;
    }

    if ((v148 & ((v110 - v131) ^ v110)) < 0)
    {
      v151 = (v110 >> 31) ^ 0x7FFFFFFF;
    }

    else
    {
      v151 = v110 - v131;
    }

    v152 = v136 ^ v117;
    v153 = ((v136 + v117) ^ v117) > -1 || v152 < 0;
    v154 = (v117 >> 31) ^ 0x7FFFFFFF;
    if (v153)
    {
      v155 = v136 + v117;
    }

    else
    {
      v155 = (v117 >> 31) ^ 0x7FFFFFFF;
    }

    if ((v152 & ((v117 - v136) ^ v117)) >= 0)
    {
      v154 = v117 - v136;
    }

    if (((v135 ^ v114) & ((v114 - v135) ^ v114)) < 0)
    {
      v156 = (v114 >> 31) ^ 0x7FFFFFFF;
    }

    else
    {
      v156 = v114 - v135;
    }

    if (((v135 + v114) ^ v114) > -1 || (v135 ^ v114) < 0)
    {
      v158 = v135 + v114;
    }

    else
    {
      v158 = (v114 >> 31) ^ 0x7FFFFFFF;
    }

    v159 = v132 ^ v118;
    if (((v132 + v118) ^ v118) > -1 || v159 < 0)
    {
      v161 = v132 + v118;
    }

    else
    {
      v161 = (v118 >> 31) ^ 0x7FFFFFFF;
    }

    if ((v159 & ((v118 - v132) ^ v118)) < 0)
    {
      v162 = (v118 >> 31) ^ 0x7FFFFFFF;
    }

    else
    {
      v162 = v118 - v132;
    }

    v163 = v141 ^ v119;
    if (((v141 + v119) ^ v119) > -1 || v163 < 0)
    {
      v165 = v141 + v119;
    }

    else
    {
      v165 = (v119 >> 31) ^ 0x7FFFFFFF;
    }

    if ((v163 & ((v119 - v141) ^ v119)) < 0)
    {
      v166 = (v119 >> 31) ^ 0x7FFFFFFF;
    }

    else
    {
      v166 = v119 - v141;
    }

    v167 = v144 ^ v124;
    v168 = ((v144 + v124) ^ v124) > -1 || v167 < 0;
    v169 = (v124 >> 31) ^ 0x7FFFFFFF;
    if (v168)
    {
      v169 = v144 + v124;
    }

    if ((v167 & ((v144 - v124) ^ v144)) < 0)
    {
      v170 = (v144 >> 31) ^ 0x7FFFFFFF;
    }

    else
    {
      v170 = v144 - v124;
    }

    v171 = v142 ^ v123;
    if (((v142 + v123) ^ v123) > -1 || v171 < 0)
    {
      v173 = v142 + v123;
    }

    else
    {
      v173 = (v123 >> 31) ^ 0x7FFFFFFF;
    }

    v174 = v123 - v142;
    if ((v171 & ((v123 - v142) ^ v123)) < 0)
    {
      v174 = (v123 >> 31) ^ 0x7FFFFFFF;
    }

    v175 = v147 ^ v128;
    if (((v147 + v128) ^ v128) > -1 || v175 < 0)
    {
      v177 = v147 + v128;
    }

    else
    {
      v177 = (v128 >> 31) ^ 0x7FFFFFFF;
    }

    if ((v175 & ((v128 - v147) ^ v128)) < 0)
    {
      v178 = (v128 >> 31) ^ 0x7FFFFFFF;
    }

    else
    {
      v178 = v128 - v147;
    }

    v179 = v174 + v177;
    v180 = v174 ^ v177;
    if (((v174 + v177) ^ v177) <= -1 && v180 >= 0)
    {
      v179 = (v177 >> 31) ^ 0x7FFFFFFF;
    }

    v182 = v177 - v174;
    if ((v180 & (v182 ^ v177)) < 0)
    {
      v183 = (v177 >> 31) ^ 0x7FFFFFFF;
    }

    else
    {
      v183 = v182;
    }

    if (((v173 ^ v178) & ((v178 - v173) ^ v178)) < 0)
    {
      v184 = (v178 >> 31) ^ 0x7FFFFFFF;
    }

    else
    {
      v184 = v178 - v173;
    }

    v185 = v178 + v173;
    v186 = ((v178 + v173) ^ v173) > -1 || (v173 ^ v178) < 0;
    v187 = (v173 >> 31) ^ 0x7FFFFFFF;
    if (v186)
    {
      v188 = v185;
    }

    else
    {
      v188 = v187;
    }

    v189 = v165 ^ v150;
    if (((v165 + v150) ^ v150) > -1 || v189 < 0)
    {
      v191 = v165 + v150;
    }

    else
    {
      v191 = (v150 >> 31) ^ 0x7FFFFFFF;
    }

    v192 = v150 - v165;
    if ((v189 & ((v150 - v165) ^ v150)) < 0)
    {
      v192 = (v150 >> 31) ^ 0x7FFFFFFF;
    }

    *v81 = v192;
    v193 = v169 + v155;
    v194 = v169 ^ v155;
    if (((v169 + v155) ^ v155) <= -1 && v194 >= 0)
    {
      v193 = (v155 >> 31) ^ 0x7FFFFFFF;
    }

    *v66 = v193;
    v196 = v155 - v169;
    if ((v194 & ((v155 - v169) ^ v155)) < 0)
    {
      v196 = (v155 >> 31) ^ 0x7FFFFFFF;
    }

    *v83 = v196;
    v197 = v151 - v170;
    if (((v170 ^ v151) & ((v151 - v170) ^ v151)) < 0)
    {
      v197 = (v151 >> 31) ^ 0x7FFFFFFF;
    }

    LODWORD(v602[i + 1]) = v197;
    v198 = v170 + v151;
    if (((v170 + v151) ^ v151) <= -1 && (v170 ^ v151) >= 0)
    {
      v198 = (v151 >> 31) ^ 0x7FFFFFFF;
    }

    *v89 = v198;
    v200 = v154 - v166;
    v201 = v166 ^ v154;
    if (((v166 ^ v154) & ((v154 - v166) ^ v154)) < 0)
    {
      v200 = (v154 >> 31) ^ 0x7FFFFFFF;
    }

    DWORD1(v602[i + 1]) = v200;
    v202 = 46340 * (v183 >> 16) + ((23170 * v183) >> 15);
    v203 = v166 + v154;
    if ((v203 ^ v154) <= -1 && v201 >= 0)
    {
      v203 = (v154 >> 31) ^ 0x7FFFFFFF;
    }

    *v91 = v203;
    v205 = v202 + v156;
    v206 = v202 ^ v156;
    if (((v202 + v156) ^ v156) <= -1 && v206 >= 0)
    {
      v205 = (v156 >> 31) ^ 0x7FFFFFFF;
    }

    DWORD2(v602[i + 1]) = v205;
    v208 = v156 - v202;
    v209 = ((0x7FFFFFFFA57ELL * v188) >> 15) - 46340 * (v188 >> 16);
    if ((v206 & (v208 ^ v156)) < 0)
    {
      v208 = (v156 >> 31) ^ 0x7FFFFFFF;
    }

    *v93 = v208;
    v210 = v161 + v209;
    v211 = v161 ^ v209;
    if (((v161 + v209) ^ v161) <= -1 && v211 >= 0)
    {
      v210 = (v161 >> 31) ^ 0x7FFFFFFF;
    }

    HIDWORD(v602[i + 1]) = v210;
    v213 = v161 - v209;
    v214 = 46340 * (v179 >> 16) + ((23170 * v179) >> 15);
    if ((v211 & ((v161 - v209) ^ v161)) < 0)
    {
      v213 = (v161 >> 31) ^ 0x7FFFFFFF;
    }

    *v95 = v213;
    v215 = v214 + v158;
    v216 = v214 ^ v158;
    if (((v214 + v158) ^ v158) <= -1 && v216 >= 0)
    {
      v215 = (v158 >> 31) ^ 0x7FFFFFFF;
    }

    DWORD2(v602[i]) = v215;
    v218 = v158 - v214;
    v219 = 46340 * (v184 >> 16) + ((23170 * v184) >> 15);
    if ((v216 & (v218 ^ v158)) < 0)
    {
      v218 = (v158 >> 31) ^ 0x7FFFFFFF;
    }

    DWORD2(v602[i + 2]) = v218;
    v220 = v219 + v162;
    v221 = v219 ^ v162;
    if (((v219 + v162) ^ v162) <= -1 && v221 >= 0)
    {
      v220 = (v162 >> 31) ^ 0x7FFFFFFF;
    }

    HIDWORD(v602[i]) = v220;
    v223 = v162 - v219;
    if ((v221 & ((v162 - v219) ^ v162) & 0x80000000) != 0)
    {
      v223 = (v162 >> 31) ^ 0x7FFFFFFF;
    }

    HIDWORD(v602[i + 2]) = v223;
    LODWORD(v602[i]) = v191;
  }

  v224 = 0;
  v593 = 0;
  v567 = SDWORD1(v603[0]) >> 1;
  v568 = SLODWORD(v603[0]) >> 1;
  v565 = SDWORD1(v604[0]) >> 1;
  v566 = SLODWORD(v604[0]) >> 1;
  v564 = SLODWORD(v605[0]) >> 1;
  v563 = SDWORD1(v605[0]) >> 1;
  v561 = SDWORD1(v606[0]) >> 1;
  v562 = SLODWORD(v606[0]) >> 1;
  v559 = SDWORD1(v607[0]) >> 1;
  v560 = SLODWORD(v607[0]) >> 1;
  v591 = &unk_19B378FB4;
  v557 = SDWORD1(v608[0]) >> 1;
  v558 = SLODWORD(v608[0]) >> 1;
  v555 = DWORD1(v609[0]);
  v556 = SLODWORD(v609[0]) >> 1;
  do
  {
    v592 = v224;
    v225 = (v602 + v224);
    v226 = (v602 + v224 + 4);
    if ((v602 + v224) < v602 || v226 > v610 || v225 > v226)
    {
      goto LABEL_970;
    }

    if (v226 < v602)
    {
      goto LABEL_970;
    }

    v230 = *v225;
    v229 = v225 + 2;
    v587 = v230;
    if (v229 > v610)
    {
      goto LABEL_970;
    }

    v231 = __OFSUB__(v226, v229);
    if (v226 > v229)
    {
      goto LABEL_970;
    }

    v232 = v555;
    v233 = v556;
    v234 = *v226;
    v235 = v557;
    v236 = v558;
    v237 = v559;
    v238 = v560;
    v240 = v561;
    v239 = v562;
    v242 = v563;
    v241 = v564;
    v244 = v565;
    v243 = v566;
    v245 = v567;
    v246 = v568;
    if (!v593)
    {
      goto LABEL_510;
    }

    v247 = v602 + v224;
    v248 = (&v602[4] + v224);
    if (v248 < v602)
    {
      goto LABEL_970;
    }

    v249 = (v247 + 68);
    if (v247 + 68 > v610 || v248 > v249 || (v603 + v224 + 8) > v610 || v249 > (v603 + v224 + 8))
    {
      goto LABEL_970;
    }

    v250 = *v248;
    v251 = *(v591 - 386);
    v252 = Mpy_32_16_1(*v248, v251);
    v253 = *v249;
    v254 = *(v591 - 385);
    v255 = Mpy_32_16_1(*v249, v254);
    v256 = v252 - v255;
    if ((v255 ^ v252) < 0 && (v256 ^ v252) < 0)
    {
      if (v252 < 0)
      {
        v256 = 0x80000000;
LABEL_370:
        v246 = v256 >> 1;
        goto LABEL_371;
      }

      v256 = 0x7FFFFFFF;
    }

    else if (v256 < 0)
    {
      goto LABEL_370;
    }

    v246 = v256 >> 1;
LABEL_371:
    v257 = Mpy_32_16_1(v250, v254);
    v258 = Mpy_32_16_1(v253, v251);
    v259 = v258 + v257;
    if ((v258 ^ v257) < 0 || ((v259 ^ v257) & 0x80000000) == 0)
    {
      if (v259 < 0)
      {
        goto LABEL_378;
      }
    }

    else
    {
      if (v257 < 0)
      {
        v259 = 0x80000000;
LABEL_378:
        v260 = v259 >> 1;
        goto LABEL_379;
      }

      v259 = 0x7FFFFFFF;
    }

    v260 = v259 >> 1;
LABEL_379:
    v584 = v260;
    v261 = v602 + v592;
    v262 = (v604 + v592);
    if ((v604 + v592) < v602)
    {
      goto LABEL_970;
    }

    v263 = (v261 + 132);
    if (v261 + 132 > v610 || v262 > v263 || (v604 + v592 + 8) > v610 || v263 > (v604 + v592 + 8))
    {
      goto LABEL_970;
    }

    v264 = *v262;
    v265 = *(v591 - 322);
    v266 = Mpy_32_16_1(*v262, v265);
    v267 = *v263;
    v268 = *(v591 - 321);
    v269 = Mpy_32_16_1(*v263, v268);
    v270 = v266 - v269;
    if ((v269 ^ v266) < 0 && (v270 ^ v266) < 0)
    {
      if (v266 < 0)
      {
        v270 = 0x80000000;
LABEL_391:
        v271 = v270 >> 1;
        goto LABEL_392;
      }

      v270 = 0x7FFFFFFF;
    }

    else if (v270 < 0)
    {
      goto LABEL_391;
    }

    v271 = v270 >> 1;
LABEL_392:
    v580 = v271;
    v272 = Mpy_32_16_1(v264, v268);
    v273 = Mpy_32_16_1(v267, v265);
    v274 = v273 + v272;
    if ((v273 ^ v272) < 0 || ((v274 ^ v272) & 0x80000000) == 0)
    {
      if (v274 < 0)
      {
        goto LABEL_399;
      }
    }

    else
    {
      if (v272 < 0)
      {
        v274 = 0x80000000;
LABEL_399:
        v275 = v274 >> 1;
        goto LABEL_400;
      }

      v274 = 0x7FFFFFFF;
    }

    v275 = v274 >> 1;
LABEL_400:
    v582 = v275;
    v276 = v602 + v592;
    v277 = (v605 + v592);
    if ((v605 + v592) < v602)
    {
      goto LABEL_970;
    }

    v278 = (v276 + 196);
    if (v276 + 196 > v610 || v277 > v278 || (v605 + v592 + 8) > v610 || v278 > (v605 + v592 + 8))
    {
      goto LABEL_970;
    }

    v279 = *v277;
    v280 = *(v591 - 258);
    v281 = Mpy_32_16_1(*v277, v280);
    v282 = *v278;
    v283 = *(v591 - 257);
    v284 = Mpy_32_16_1(*v278, v283);
    v285 = v281 - v284;
    if ((v284 ^ v281) < 0 && (v285 ^ v281) < 0)
    {
      if (v281 < 0)
      {
        v285 = 0x80000000;
LABEL_412:
        v286 = v285 >> 1;
        goto LABEL_413;
      }

      v285 = 0x7FFFFFFF;
    }

    else if (v285 < 0)
    {
      goto LABEL_412;
    }

    v286 = v285 >> 1;
LABEL_413:
    v579 = v286;
    v287 = Mpy_32_16_1(v279, v283);
    v288 = Mpy_32_16_1(v282, v280);
    v289 = v288 + v287;
    if ((v288 ^ v287) < 0 || ((v289 ^ v287) & 0x80000000) == 0)
    {
      if (v289 < 0)
      {
        goto LABEL_420;
      }
    }

    else
    {
      if (v287 < 0)
      {
        v289 = 0x80000000;
LABEL_420:
        v290 = v289 >> 1;
        goto LABEL_421;
      }

      v289 = 0x7FFFFFFF;
    }

    v290 = v289 >> 1;
LABEL_421:
    v577 = v290;
    v291 = v602 + v592;
    v292 = (v606 + v592);
    if ((v606 + v592) < v602)
    {
      goto LABEL_970;
    }

    v293 = (v291 + 260);
    if (v291 + 260 > v610 || v292 > v293 || (v606 + v592 + 8) > v610 || v293 > (v606 + v592 + 8))
    {
      goto LABEL_970;
    }

    v294 = *v292;
    v295 = *(v591 - 194);
    v296 = Mpy_32_16_1(*v292, v295);
    v297 = *v293;
    v298 = *(v591 - 193);
    v299 = Mpy_32_16_1(*v293, v298);
    v300 = v296 - v299;
    if ((v299 ^ v296) < 0 && (v300 ^ v296) < 0)
    {
      if (v296 < 0)
      {
        v300 = 0x80000000;
LABEL_433:
        v301 = v300 >> 1;
        goto LABEL_434;
      }

      v300 = 0x7FFFFFFF;
    }

    else if (v300 < 0)
    {
      goto LABEL_433;
    }

    v301 = v300 >> 1;
LABEL_434:
    v573 = v301;
    v302 = Mpy_32_16_1(v294, v298);
    v303 = Mpy_32_16_1(v297, v295);
    v304 = v303 + v302;
    if ((v303 ^ v302) < 0 || ((v304 ^ v302) & 0x80000000) == 0)
    {
      if (v304 < 0)
      {
        goto LABEL_441;
      }
    }

    else
    {
      if (v302 < 0)
      {
        v304 = 0x80000000;
LABEL_441:
        v305 = v304 >> 1;
        goto LABEL_442;
      }

      v304 = 0x7FFFFFFF;
    }

    v305 = v304 >> 1;
LABEL_442:
    v574 = v305;
    v306 = v602 + v592;
    v307 = (v607 + v592);
    if ((v607 + v592) < v602)
    {
      goto LABEL_970;
    }

    v308 = (v306 + 324);
    if (v306 + 324 > v610 || v307 > v308 || (v607 + v592 + 8) > v610 || v308 > (v607 + v592 + 8))
    {
      goto LABEL_970;
    }

    v309 = *v307;
    v310 = *(v591 - 130);
    v311 = Mpy_32_16_1(*v307, v310);
    v312 = *v308;
    v313 = *(v591 - 129);
    v314 = Mpy_32_16_1(*v308, v313);
    v315 = v311 - v314;
    if ((v314 ^ v311) < 0 && (v315 ^ v311) < 0)
    {
      if (v311 < 0)
      {
        v315 = 0x80000000;
LABEL_454:
        v316 = v315 >> 1;
        goto LABEL_455;
      }

      v315 = 0x7FFFFFFF;
    }

    else if (v315 < 0)
    {
      goto LABEL_454;
    }

    v316 = v315 >> 1;
LABEL_455:
    v572 = v316;
    v317 = Mpy_32_16_1(v309, v313);
    v318 = Mpy_32_16_1(v312, v310);
    v319 = v318 + v317;
    if ((v318 ^ v317) < 0 || ((v319 ^ v317) & 0x80000000) == 0)
    {
      if (v319 < 0)
      {
        goto LABEL_462;
      }
    }

    else
    {
      if (v317 < 0)
      {
        v319 = 0x80000000;
LABEL_462:
        v320 = v319 >> 1;
        goto LABEL_463;
      }

      v319 = 0x7FFFFFFF;
    }

    v320 = v319 >> 1;
LABEL_463:
    v571 = v320;
    v321 = v602 + v592;
    v322 = (v608 + v592);
    if ((v608 + v592) < v602)
    {
      goto LABEL_970;
    }

    v323 = (v321 + 388);
    if (v321 + 388 > v610)
    {
      goto LABEL_970;
    }

    if (v322 > v323)
    {
      goto LABEL_970;
    }

    v324 = *v322;
    v325 = *(v591 - 66);
    v326 = Mpy_32_16_1(*v322, v325);
    if ((v608 + v592 + 8) > v610)
    {
      goto LABEL_970;
    }

    if (v323 > (v608 + v592 + 8))
    {
      goto LABEL_970;
    }

    v327 = v591 - 65;
    if (v591 - 65 < RotVector_256 || v591 - 64 > Odx_fft16 || v327 > v591 - 64)
    {
      goto LABEL_970;
    }

    v328 = v326;
    v329 = *v323;
    v330 = *v327;
    v331 = Mpy_32_16_1(*v323, v330);
    v332 = v328 - v331;
    if ((v331 ^ v328) < 0 && (v332 ^ v328) < 0)
    {
      if (v328 < 0)
      {
        v332 = 0x80000000;
LABEL_478:
        v333 = v332 >> 1;
        goto LABEL_479;
      }

      v332 = 0x7FFFFFFF;
    }

    else if (v332 < 0)
    {
      goto LABEL_478;
    }

    v333 = v332 >> 1;
LABEL_479:
    v569 = v333;
    v334 = Mpy_32_16_1(v324, v330);
    v335 = Mpy_32_16_1(v329, v325);
    v336 = v335 + v334;
    if ((v335 ^ v334) < 0 || ((v336 ^ v334) & 0x80000000) == 0)
    {
      if (v336 < 0)
      {
        goto LABEL_486;
      }
    }

    else
    {
      if (v334 < 0)
      {
        v336 = 0x80000000;
LABEL_486:
        v337 = v336 >> 1;
        goto LABEL_487;
      }

      v336 = 0x7FFFFFFF;
    }

    v337 = v336 >> 1;
LABEL_487:
    v570 = v337;
    v338 = v602 + v592;
    v339 = (v609 + v592);
    if ((v609 + v592) < v602)
    {
      goto LABEL_970;
    }

    v340 = (v338 + 452);
    if (v338 + 452 > v610)
    {
      goto LABEL_970;
    }

    if (v339 > v340)
    {
      goto LABEL_970;
    }

    v341 = v591 - 2;
    if (v591 - 2 < RotVector_256)
    {
      goto LABEL_970;
    }

    v342 = v591 - 1;
    if (v591 - 1 > Odx_fft16)
    {
      goto LABEL_970;
    }

    if (v341 > v342)
    {
      goto LABEL_970;
    }

    v343 = *v339;
    v344 = *v341;
    v345 = Mpy_32_16_1(*v339, v344);
    if ((v609 + v592 + 8) > v610 || v340 > (v609 + v592 + 8) || v591 > Odx_fft16 || v342 > v591)
    {
      goto LABEL_970;
    }

    v346 = v345;
    v347 = *v340;
    v348 = *v342;
    v349 = Mpy_32_16_1(*v340, v348);
    v350 = v346 - v349;
    if ((v349 ^ v346) < 0 && (v350 ^ v346) < 0)
    {
      v245 = v584;
      if (v346 < 0)
      {
        v350 = 0x80000000;
        v244 = v582;
LABEL_504:
        v233 = v350 >> 1;
        goto LABEL_505;
      }

      v350 = 0x7FFFFFFF;
      v244 = v582;
    }

    else
    {
      v245 = v584;
      v244 = v582;
      if (v350 < 0)
      {
        goto LABEL_504;
      }
    }

    v233 = v350 >> 1;
LABEL_505:
    v351 = Mpy_32_16_1(v343, v348);
    v352 = Mpy_32_16_1(v347, v344);
    v232 = v352 + v351;
    if ((v352 ^ v351) < 0 || ((v232 ^ v351) & 0x80000000) == 0)
    {
      v242 = v577;
      v241 = v579;
      v243 = v580;
      v239 = v573;
      v240 = v574;
      v237 = v571;
      v238 = v572;
      v236 = v569;
      v235 = v570;
LABEL_510:
      v353 = v587;
      if (v232 < 0)
      {
        goto LABEL_513;
      }

      goto LABEL_511;
    }

    if (v351 < 0)
    {
      v232 = 0x80000000;
      v242 = v577;
      v241 = v579;
      v243 = v580;
      v353 = v587;
      v239 = v573;
      v240 = v574;
      v237 = v571;
      v238 = v572;
      v236 = v569;
      v235 = v570;
LABEL_513:
      v354 = v232 >> 1;
      goto LABEL_514;
    }

    v232 = 0x7FFFFFFF;
    v242 = v577;
    v241 = v579;
    v243 = v580;
    v353 = v587;
    v239 = v573;
    v240 = v574;
    v237 = v571;
    v238 = v572;
    v236 = v569;
    v235 = v570;
LABEL_511:
    v354 = v232 >> 1;
LABEL_514:
    v355 = v353 >> 1;
    v356 = v239 + (v353 >> 1);
    if ((v239 ^ v355) < 0 || ((v356 ^ v355) & 0x80000000) == 0)
    {
      if (v356 < 0)
      {
        goto LABEL_521;
      }
    }

    else
    {
      if (v355 < 0)
      {
        v356 = 0x80000000;
LABEL_521:
        v357 = v356 >> 2;
        goto LABEL_522;
      }

      v356 = 0x7FFFFFFF;
    }

    v357 = v356 >> 2;
LABEL_522:
    v358 = v355 - v239;
    if ((v239 ^ v355) < 0 && (v358 ^ v355) < 0)
    {
      if (v355 < 0)
      {
        v358 = 0x80000000;
LABEL_529:
        v359 = v358 >> 2;
        goto LABEL_530;
      }

      v358 = 0x7FFFFFFF;
    }

    else if (v358 < 0)
    {
      goto LABEL_529;
    }

    v359 = v358 >> 2;
LABEL_530:
    v360 = v234 >> 1;
    v361 = v240 + (v234 >> 1);
    v362 = v240 ^ (v234 >> 1);
    if (v362 < 0 || ((v361 ^ v360) & 0x80000000) == 0)
    {
      if (v361 < 0)
      {
        goto LABEL_537;
      }
    }

    else
    {
      if (v360 < 0)
      {
        v361 = 0x80000000;
LABEL_537:
        v363 = v361 >> 2;
        goto LABEL_538;
      }

      v361 = 0x7FFFFFFF;
    }

    v363 = v361 >> 2;
LABEL_538:
    v364 = v360 - v240;
    if (v362 < 0 && (v364 ^ v360) < 0)
    {
      if (v360 < 0)
      {
        v364 = 0x80000000;
LABEL_545:
        v365 = v364 >> 2;
        goto LABEL_546;
      }

      v364 = 0x7FFFFFFF;
    }

    else if (v364 < 0)
    {
      goto LABEL_545;
    }

    v365 = v364 >> 2;
LABEL_546:
    v366 = v238 + v246;
    if ((v238 ^ v246) < 0 || ((v366 ^ v246) & 0x80000000) == 0)
    {
      if ((v366 & 0x80000000) == 0)
      {
        goto LABEL_551;
      }
    }

    else
    {
      if ((v246 & 0x80000000) == 0)
      {
        v366 = 0x7FFFFFFF;
LABEL_551:
        v367 = v366 >> 2;
        goto LABEL_554;
      }

      v366 = 0x80000000;
    }

    v367 = v366 >> 2;
LABEL_554:
    if (((v238 ^ v246) & ((v246 - v238) ^ v246)) < 0 != v231)
    {
      v368 = (v246 >> 31) ^ 0x7FFFFFFF;
    }

    else
    {
      v368 = v246 - v238;
    }

    v369 = v237 + v245;
    if ((v237 ^ v245) < 0 || ((v369 ^ v245) & 0x80000000) == 0)
    {
      if ((v369 & 0x80000000) == 0)
      {
        goto LABEL_562;
      }
    }

    else
    {
      if ((v245 & 0x80000000) == 0)
      {
        v369 = 0x7FFFFFFF;
LABEL_562:
        v370 = v369 >> 2;
        goto LABEL_565;
      }

      v369 = 0x80000000;
    }

    v370 = v369 >> 2;
LABEL_565:
    if (((v237 ^ v245) & ((v245 - v237) ^ v245)) < 0 != v231)
    {
      v371 = (v245 >> 31) ^ 0x7FFFFFFF;
    }

    else
    {
      v371 = v245 - v237;
    }

    v372 = v236 + v243;
    if ((v236 ^ v243) < 0 || ((v372 ^ v243) & 0x80000000) == 0)
    {
      if (v372 < 0)
      {
        goto LABEL_575;
      }
    }

    else
    {
      if (v243 < 0)
      {
        v372 = 0x80000000;
LABEL_575:
        v373 = v372 >> 2;
        goto LABEL_576;
      }

      v372 = 0x7FFFFFFF;
    }

    v373 = v372 >> 2;
LABEL_576:
    v374 = v243 - v236;
    if ((v236 ^ v243) < 0 && (v374 ^ v243) < 0)
    {
      if (v243 < 0)
      {
        v374 = 0x80000000;
LABEL_583:
        v375 = v374 >> 2;
        goto LABEL_584;
      }

      v374 = 0x7FFFFFFF;
    }

    else if (v374 < 0)
    {
      goto LABEL_583;
    }

    v375 = v374 >> 2;
LABEL_584:
    v376 = v235 + v244;
    if ((v235 ^ v244) < 0 || ((v376 ^ v244) & 0x80000000) == 0)
    {
      if (v376 < 0)
      {
        goto LABEL_591;
      }
    }

    else
    {
      if (v244 < 0)
      {
        v376 = 0x80000000;
LABEL_591:
        v377 = v376 >> 2;
        goto LABEL_592;
      }

      v376 = 0x7FFFFFFF;
    }

    v377 = v376 >> 2;
LABEL_592:
    v378 = v244 - v235;
    if ((v235 ^ v244) < 0 && (v378 ^ v244) < 0)
    {
      if (v244 < 0)
      {
        v378 = 0x80000000;
LABEL_599:
        v379 = v378 >> 2;
        goto LABEL_600;
      }

      v378 = 0x7FFFFFFF;
    }

    else if (v378 < 0)
    {
      goto LABEL_599;
    }

    v379 = v378 >> 2;
LABEL_600:
    v380 = v233 + v241;
    v381 = v233 ^ v241;
    if ((v233 ^ v241) < 0 || ((v380 ^ v241) & 0x80000000) == 0)
    {
      if ((v380 & 0x80000000) == 0)
      {
        goto LABEL_605;
      }
    }

    else
    {
      if ((v241 & 0x80000000) == 0)
      {
        v380 = 0x7FFFFFFF;
LABEL_605:
        v382 = v380 >> 2;
        goto LABEL_608;
      }

      v380 = 0x80000000;
    }

    v382 = v380 >> 2;
LABEL_608:
    v383 = v241 - v233;
    v384 = (v241 - v233) ^ v241;
    v385 = (v241 >> 31) ^ 0x7FFFFFFF;
    if ((v381 & v384) < 0 != v231)
    {
      v386 = v385;
    }

    else
    {
      v386 = v383;
    }

    v387 = v354 + v242;
    v388 = v354 ^ v242;
    if ((v354 ^ v242) < 0 || ((v387 ^ v242) & 0x80000000) == 0)
    {
      if ((v387 & 0x80000000) == 0)
      {
        goto LABEL_616;
      }
    }

    else
    {
      if ((v242 & 0x80000000) == 0)
      {
        v387 = 0x7FFFFFFF;
LABEL_616:
        v389 = v387 >> 2;
        goto LABEL_619;
      }

      v387 = 0x80000000;
    }

    v389 = v387 >> 2;
LABEL_619:
    v390 = v242 - v354;
    v391 = (v242 >> 31) ^ 0x7FFFFFFF;
    if ((v388 & (v390 ^ v242)) < 0 == v231)
    {
      v391 = v390;
    }

    v392 = v373 ^ v357;
    if (((v373 + v357) ^ v357) > -1 || v392 < 0)
    {
      v394 = v373 + v357;
    }

    else
    {
      v394 = (v357 >> 31) ^ 0x7FFFFFFF;
    }

    if ((v392 & ((v357 - v373) ^ v357)) < 0)
    {
      v395 = (v357 >> 31) ^ 0x7FFFFFFF;
    }

    else
    {
      v395 = v357 - v373;
    }

    v396 = v377 ^ v363;
    if (((v377 + v363) ^ v363) > -1 || v396 < 0)
    {
      v398 = v377 + v363;
    }

    else
    {
      v398 = (v363 >> 31) ^ 0x7FFFFFFF;
    }

    v399 = v363 - v377;
    if ((v396 & ((v363 - v377) ^ v363)) < 0)
    {
      v399 = (v363 >> 31) ^ 0x7FFFFFFF;
    }

    v583 = v399;
    if (((v379 ^ v359) & ((v359 - v379) ^ v359)) < 0)
    {
      v400 = (v359 >> 31) ^ 0x7FFFFFFF;
    }

    else
    {
      v400 = v359 - v379;
    }

    if (((v379 + v359) ^ v359) > -1 || (v379 ^ v359) < 0)
    {
      v402 = v379 + v359;
    }

    else
    {
      v402 = (v359 >> 31) ^ 0x7FFFFFFF;
    }

    v403 = v375 + v365;
    v404 = v375 ^ v365;
    if (((v375 + v365) ^ v365) <= -1 && v404 >= 0)
    {
      v403 = (v365 >> 31) ^ 0x7FFFFFFF;
    }

    v578 = v403;
    if ((v404 & ((v365 - v375) ^ v365)) < 0)
    {
      v406 = (v365 >> 31) ^ 0x7FFFFFFF;
    }

    else
    {
      v406 = v365 - v375;
    }

    v407 = v382 + v367;
    v408 = v382 ^ v367;
    if (((v382 + v367) ^ v367) <= -1 && v408 >= 0)
    {
      v407 = (v367 >> 31) ^ 0x7FFFFFFF;
    }

    v588 = v407;
    v410 = v367 - v382;
    if ((v408 & ((v367 - v382) ^ v367) & 0x80000000) != 0)
    {
      v410 = (v367 >> 31) ^ 0x7FFFFFFF;
    }

    v581 = v410;
    v411 = v389 + v370;
    v412 = v389 ^ v370;
    if (((v389 + v370) ^ v370) <= -1 && v412 >= 0)
    {
      v411 = (v370 >> 31) ^ 0x7FFFFFFF;
    }

    v586 = v411;
    v414 = v389 - v370;
    if ((v412 & ((v389 - v370) ^ v389)) < 0)
    {
      v414 = (v389 >> 31) ^ 0x7FFFFFFF;
    }

    v585 = v414;
    v415 = v386 + v368;
    if ((v386 ^ v368) < 0 || ((v415 ^ v368) & 0x80000000) == 0)
    {
      if (v415 < 0)
      {
        goto LABEL_676;
      }
    }

    else
    {
      if (v368 < 0)
      {
        v415 = 0x80000000;
LABEL_676:
        v416 = v415 >> 2;
        goto LABEL_677;
      }

      v415 = 0x7FFFFFFF;
    }

    v416 = v415 >> 2;
LABEL_677:
    v417 = v368 - v386;
    if ((v386 ^ v368) < 0 && (v417 ^ v368) < 0)
    {
      if (v368 < 0)
      {
        v417 = 0x80000000;
LABEL_684:
        v418 = v417 >> 2;
        goto LABEL_685;
      }

      v417 = 0x7FFFFFFF;
    }

    else if (v417 < 0)
    {
      goto LABEL_684;
    }

    v418 = v417 >> 2;
LABEL_685:
    v419 = v391 + v371;
    if ((v391 ^ v371) < 0 || ((v419 ^ v371) & 0x80000000) == 0)
    {
      if (v419 < 0)
      {
        goto LABEL_692;
      }
    }

    else
    {
      if (v371 < 0)
      {
        v419 = 0x80000000;
LABEL_692:
        v420 = v419 >> 2;
        goto LABEL_693;
      }

      v419 = 0x7FFFFFFF;
    }

    v420 = v419 >> 2;
LABEL_693:
    v421 = v371 - v391;
    if ((v391 ^ v371) < 0 && (v421 ^ v371) < 0)
    {
      if (v371 < 0)
      {
        v421 = 0x80000000;
LABEL_700:
        v422 = v421 >> 2;
        goto LABEL_701;
      }

      v421 = 0x7FFFFFFF;
    }

    else if (v421 < 0)
    {
      goto LABEL_700;
    }

    v422 = v421 >> 2;
LABEL_701:
    v423 = v418 ^ v420;
    if (((v418 + v420) ^ v420) > -1 || v423 < 0)
    {
      v425 = v418 + v420;
    }

    else
    {
      v425 = (v420 >> 31) ^ 0x7FFFFFFF;
    }

    if ((v423 & ((v420 - v418) ^ v420)) < 0)
    {
      v426 = (v420 >> 31) ^ 0x7FFFFFFF;
    }

    else
    {
      v426 = v420 - v418;
    }

    v427 = v416 ^ v422;
    if (((v416 ^ v422) & ((v422 - v416) ^ v422)) < 0)
    {
      v428 = (v422 >> 31) ^ 0x7FFFFFFF;
    }

    else
    {
      v428 = v422 - v416;
    }

    v429 = v422 + v416;
    if ((v429 ^ v416) > -1 || v427 < 0)
    {
      v431 = v429;
    }

    else
    {
      v431 = (v416 >> 31) ^ 0x7FFFFFFF;
    }

    v432 = v601 + v593;
    if ((v601 + v593) < v601 || v432 + 4 > v602 || v432 > v432 + 4)
    {
      goto LABEL_970;
    }

    v433 = v588 ^ v394;
    v434 = v588 + v394;
    if (((v588 + v394) ^ v394) <= -1 && v433 >= 0)
    {
      v434 = (v394 >> 31) ^ 0x7FFFFFFF;
    }

    *(v601 + v593) = v434;
    v436 = v600 + v593;
    if ((v600 + v593) < v600 || v436 + 4 > v601 || v436 > v436 + 4)
    {
      goto LABEL_970;
    }

    v437 = v586 ^ v398;
    v438 = v586 + v398;
    if (((v586 + v398) ^ v398) <= -1 && v437 >= 0)
    {
      v438 = (v398 >> 31) ^ 0x7FFFFFFF;
    }

    *(v600 + v593) = v438;
    v440 = (&v601[2] + v593);
    if (v440 < v601)
    {
      goto LABEL_970;
    }

    v441 = &v601[2] + v593 + 4;
    if (v441 > v602 || v440 > v441)
    {
      goto LABEL_970;
    }

    v442 = 46340 * (v425 >> 16) + ((23170 * v425) >> 15);
    v443 = v442 ^ v402;
    v444 = v442 + v402;
    if (((v442 + v402) ^ v402) <= -1 && v443 >= 0)
    {
      v444 = (v402 >> 31) ^ 0x7FFFFFFF;
    }

    *v440 = v444;
    v446 = (v600 + v593);
    v447 = (&v600[2] + v593);
    if (v447 < v600 || v446 + 9 > v601 || v447 > v446 + 9)
    {
      goto LABEL_970;
    }

    v448 = 46340 * (v428 >> 16) + ((23170 * v428) >> 15);
    v449 = v448 ^ v406;
    v450 = v448 + v406;
    if (((v448 + v406) ^ v406) <= -1 && v449 >= 0)
    {
      v450 = (v406 >> 31) ^ 0x7FFFFFFF;
    }

    *v447 = v450;
    v452 = (&v601[4] + v593);
    if (v452 < v601)
    {
      goto LABEL_970;
    }

    v453 = &v601[4] + v593 + 4;
    if (v453 > v602)
    {
      goto LABEL_970;
    }

    v454 = __OFSUB__(v452, v453);
    if (v452 > v453)
    {
      goto LABEL_970;
    }

    v455 = v395 - v585;
    if (((v585 ^ v395) & ((v395 - v585) ^ v395)) < 0 != v454)
    {
      v455 = (v395 >> 31) ^ 0x7FFFFFFF;
    }

    *v452 = v455;
    v456 = v600 + v593;
    v457 = (&v600[4] + v593);
    if (v457 < v600)
    {
      goto LABEL_970;
    }

    v458 = v456 + 68;
    if (v456 + 68 > v601)
    {
      goto LABEL_970;
    }

    v459 = __OFSUB__(v457, v458);
    if (v457 > v458)
    {
      goto LABEL_970;
    }

    v460 = v583 - v581;
    if (((v581 ^ v583) & ((v583 - v581) ^ v583)) < 0 != v459)
    {
      v460 = (v583 >> 31) ^ 0x7FFFFFFF;
    }

    *v457 = v460;
    v461 = (&v601[6] + v593);
    if (v461 < v601)
    {
      goto LABEL_970;
    }

    v462 = &v601[6] + v593 + 4;
    if (v462 > v602 || v461 > v462)
    {
      goto LABEL_970;
    }

    v463 = 46340 * (v426 >> 16) + ((23170 * v426) >> 15);
    v464 = v463 ^ v400;
    v465 = v463 + v400;
    if (((v463 + v400) ^ v400) <= -1 && v464 >= 0)
    {
      v465 = (v400 >> 31) ^ 0x7FFFFFFF;
    }

    *v461 = v465;
    v467 = (v600 + v593);
    v468 = (&v600[6] + v593);
    if (v468 < v600 || v467 + 25 > v601 || v468 > v467 + 25)
    {
      goto LABEL_970;
    }

    v469 = ((0x7FFFFFFFA57ELL * v431) >> 15) - 46340 * (v431 >> 16);
    v470 = v578 ^ v469;
    v471 = v578 + v469;
    if (((v578 + v469) ^ v578) <= -1 && v470 >= 0)
    {
      v471 = (v578 >> 31) ^ 0x7FFFFFFF;
    }

    *v468 = v471;
    v473 = (&v601[8] + v593);
    if (v473 < v601)
    {
      goto LABEL_970;
    }

    v474 = &v601[8] + v593 + 4;
    if (v474 > v602)
    {
      goto LABEL_970;
    }

    v475 = __OFSUB__(v473, v474);
    if (v473 > v474)
    {
      goto LABEL_970;
    }

    v476 = v394 - v588;
    if ((v433 & ((v394 - v588) ^ v394)) < 0 != v475)
    {
      v476 = (v394 >> 31) ^ 0x7FFFFFFF;
    }

    *v473 = v476;
    v477 = (&v600[8] + v593);
    if (v477 < v600)
    {
      goto LABEL_970;
    }

    v478 = &v600[8] + v593 + 4;
    if (v478 > v601)
    {
      goto LABEL_970;
    }

    v479 = __OFSUB__(v477, v478);
    if (v477 > v478)
    {
      goto LABEL_970;
    }

    v480 = v398 - v586;
    if ((v437 & ((v398 - v586) ^ v398)) < 0 != v479)
    {
      v480 = (v398 >> 31) ^ 0x7FFFFFFF;
    }

    *v477 = v480;
    v481 = (&v601[10] + v593);
    if (v481 < v601)
    {
      goto LABEL_970;
    }

    v482 = &v601[10] + v593 + 4;
    if (v482 > v602)
    {
      goto LABEL_970;
    }

    v483 = __OFSUB__(v481, v482);
    if (v481 > v482)
    {
      goto LABEL_970;
    }

    v484 = v402 - v442;
    if (((v443 & ((v402 - v442) ^ v402) & 0x80000000) != 0) != v483)
    {
      v484 = (v402 >> 31) ^ 0x7FFFFFFF;
    }

    *v481 = v484;
    v485 = (&v600[10] + v593);
    if (v485 < v600)
    {
      goto LABEL_970;
    }

    v486 = &v600[10] + v593 + 4;
    if (v486 > v601)
    {
      goto LABEL_970;
    }

    v487 = __OFSUB__(v485, v486);
    if (v485 > v486)
    {
      goto LABEL_970;
    }

    v488 = v406 - v448;
    if (((v449 & ((v406 - v448) ^ v406) & 0x80000000) != 0) != v487)
    {
      v488 = (v406 >> 31) ^ 0x7FFFFFFF;
    }

    *v485 = v488;
    v489 = (&v601[12] + v593);
    if (v489 < v601)
    {
      goto LABEL_970;
    }

    v490 = &v601[12] + v593 + 4;
    if (v490 > v602 || v489 > v490)
    {
      goto LABEL_970;
    }

    v491 = v585 + v395;
    if (((v585 + v395) ^ v395) <= -1 && (v585 ^ v395) >= 0)
    {
      v491 = (v395 >> 31) ^ 0x7FFFFFFF;
    }

    *v489 = v491;
    v493 = (&v600[12] + v593);
    if (v493 < v600)
    {
      goto LABEL_970;
    }

    v494 = &v600[12] + v593 + 4;
    if (v494 > v601 || v493 > v494)
    {
      goto LABEL_970;
    }

    v495 = v581 + v583;
    if (((v581 + v583) ^ v583) <= -1 && (v581 ^ v583) >= 0)
    {
      v495 = (v583 >> 31) ^ 0x7FFFFFFF;
    }

    *v493 = v495;
    v497 = (&v601[14] + v593);
    if (v497 < v601)
    {
      goto LABEL_970;
    }

    v498 = &v601[14] + v593 + 4;
    if (v498 > v602)
    {
      goto LABEL_970;
    }

    v499 = __OFSUB__(v497, v498);
    if (v497 > v498)
    {
      goto LABEL_970;
    }

    v500 = v400 - v463;
    if (((v464 & ((v400 - v463) ^ v400) & 0x80000000) != 0) != v499)
    {
      v500 = (v400 >> 31) ^ 0x7FFFFFFF;
    }

    *v497 = v500;
    v501 = (&v600[14] + v593);
    if (v501 < v600)
    {
      goto LABEL_970;
    }

    v502 = &v600[14] + v593 + 4;
    if (v502 > v601)
    {
      goto LABEL_970;
    }

    v503 = __OFSUB__(v501, v502);
    if (v501 > v502)
    {
      goto LABEL_970;
    }

    v504 = v578 - v469;
    if ((v470 & ((v578 - v469) ^ v578)) < 0 != v503)
    {
      v504 = (v578 >> 31) ^ 0x7FFFFFFF;
    }

    *v501 = v504;
    v224 = v592 + 8;
    v591 += 8;
    v593 += 4;
  }

  while (v593 != 32);
  v505 = 0;
  v506 = 0;
  v507 = v554 + 7;
  if (v554 > 32760)
  {
    v507 = 0x7FFF;
  }

  v594 = v507;
  v508 = 63;
  do
  {
    v509 = v600 + 4 * v505;
    v510 = v509 + 4;
    if (v509 < v600 || v510 > v601 || v509 > v510)
    {
      goto LABEL_970;
    }

    v513 = *(v601 + v505);
    if (v513 >= 0)
    {
      v514 = *(v601 + v505);
    }

    else
    {
      v514 = -v513;
    }

    if (v513 == 0x80000000)
    {
      v514 = 0x7FFFFFFF;
    }

    v515 = *(v600 + v505);
    if (v515 >= 0)
    {
      v516 = *(v600 + v505);
    }

    else
    {
      v516 = -v515;
    }

    if (v515 == 0x80000000)
    {
      v516 = 0x7FFFFFFF;
    }

    if (v514 <= v516)
    {
      v514 = v516;
    }

    if ((v514 - 1) > 0x3FFFFFFE)
    {
      v520 = -1;
    }

    else
    {
      v517 = 0;
      do
      {
        v518 = v517;
        v519 = v514 >> 29;
        v514 *= 2;
        ++v517;
      }

      while (!v519);
      if (v517 == 0x8000)
      {
        v520 = 0x8000;
      }

      else
      {
        v520 = v518;
      }
    }

    v521 = L_shl(v513, v520);
    v522 = (v521 >> 16) * (v521 >> 16);
    if (v522 == 0x40000000)
    {
      v523 = 0x7FFFFFFF;
    }

    else
    {
      v523 = 2 * v522;
    }

    v524 = L_shl(v515, v520);
    LODWORD(v525) = mac_r(v523, v524 >> 16, v524 >> 16, &v595);
    v526 = v594 - v520;
    if (v526 >= 0x8000)
    {
LABEL_865:
      v527 = 0x7FFF;
      goto LABEL_870;
    }

    if (v526 < -32768)
    {
      goto LABEL_867;
    }

    if (2 * v526 != (2 * v526))
    {
      if (v526 >= 1)
      {
        goto LABEL_865;
      }

LABEL_867:
      v527 = 0x8000;
      goto LABEL_870;
    }

    v527 = 2 * v526;
LABEL_870:
    if (!v525)
    {
      v527 = -16;
    }

    if (v525 <= 1)
    {
      v525 = 1;
    }

    else
    {
      v525 = v525;
    }

    BASOP_Util_Sqrt_InvSqrt_MantExp(v525, v527, &v599, &v598, &v597, &v596, &v595);
    if (a4)
    {
      v528 = (a4 + 2 * v506);
      if (v528 < a4 || (v528 + 1) > a5 || v528 > v528 + 1)
      {
        goto LABEL_970;
      }

      *v528 = v599;
    }

    if (a6)
    {
      v529 = (a6 + 2 * v506);
      if (v529 < a6 || (v529 + 1) > a7 || v529 > v529 + 1)
      {
        goto LABEL_970;
      }

      *v529 = v598;
    }

    if (a9)
    {
      v530 = (a9 + 2 * v506);
      if (v530 < a9 || (v530 + 1) > a10 || v530 > v530 + 1)
      {
        goto LABEL_970;
      }

      *v530 = v597;
    }

    if (a11)
    {
      v531 = (a11 + 2 * v506);
      if (v531 < a11 || (v531 + 1) > a12 || v531 > v531 + 1)
      {
        goto LABEL_970;
      }

      *v531 = v596;
    }

    if (v506 == 0x7FFF)
    {
      v506 = v506;
    }

    else
    {
      ++v506;
    }

    v532 = v601 + v508;
    if (v532 < v601)
    {
      goto LABEL_970;
    }

    if (v532 + 1 > v602)
    {
      goto LABEL_970;
    }

    if (v532 > v532 + 1)
    {
      goto LABEL_970;
    }

    v533 = v600 + v508;
    if (v533 < v600 || v533 + 1 > v601 || v533 > v533 + 1)
    {
      goto LABEL_970;
    }

    v534 = *v532;
    if (*v532 >= 0)
    {
      v535 = *v532;
    }

    else
    {
      v535 = -v534;
    }

    if (v534 == 0x80000000)
    {
      v535 = 0x7FFFFFFF;
    }

    v536 = *v533;
    if (*v533 >= 0)
    {
      v537 = *v533;
    }

    else
    {
      v537 = -v536;
    }

    if (v536 == 0x80000000)
    {
      v537 = 0x7FFFFFFF;
    }

    if (v535 <= v537)
    {
      v535 = v537;
    }

    if ((v535 - 1) > 0x3FFFFFFE)
    {
      v541 = -1;
    }

    else
    {
      v538 = 0;
      do
      {
        v539 = v538;
        v540 = v535 >> 29;
        v535 *= 2;
        ++v538;
      }

      while (!v540);
      if (v538 == 0x8000)
      {
        v541 = 0x8000;
      }

      else
      {
        v541 = v539;
      }
    }

    v542 = L_shl(v534, v541);
    v543 = (v542 >> 16) * (v542 >> 16);
    if (v543 == 0x40000000)
    {
      v544 = 0x7FFFFFFF;
    }

    else
    {
      v544 = 2 * v543;
    }

    v545 = L_shl(v536, v541);
    LODWORD(v546) = mac_r(v544, v545 >> 16, v545 >> 16, &v595);
    v547 = v594 - v541;
    if (v547 >= 0x8000)
    {
LABEL_927:
      v548 = 0x7FFF;
      goto LABEL_932;
    }

    if (v547 < -32768)
    {
      goto LABEL_929;
    }

    if (2 * v547 != (2 * v547))
    {
      if (v547 >= 1)
      {
        goto LABEL_927;
      }

LABEL_929:
      v548 = 0x8000;
      goto LABEL_932;
    }

    v548 = 2 * v547;
LABEL_932:
    if (!v546)
    {
      v548 = -16;
    }

    if (v546 <= 1)
    {
      v546 = 1;
    }

    else
    {
      v546 = v546;
    }

    result = BASOP_Util_Sqrt_InvSqrt_MantExp(v546, v548, &v599, &v598, &v597, &v596, &v595);
    if (a4)
    {
      v550 = (a4 + 2 * v506);
      if (v550 < a4 || (v550 + 1) > a5 || v550 > v550 + 1)
      {
        goto LABEL_970;
      }

      *v550 = v599;
    }

    if (a6)
    {
      v551 = (a6 + 2 * v506);
      if (v551 < a6 || (v551 + 1) > a7 || v551 > v551 + 1)
      {
        goto LABEL_970;
      }

      *v551 = v598;
    }

    if (a9)
    {
      v552 = (a9 + 2 * v506);
      if (v552 < a9 || (v552 + 1) > a10 || v552 > v552 + 1)
      {
        goto LABEL_970;
      }

      *v552 = v597;
    }

    if (a11)
    {
      v553 = (a11 + 2 * v506);
      if (v553 < a11 || (v553 + 1) > a12 || v553 > v553 + 1)
      {
        goto LABEL_970;
      }

      *v553 = v596;
    }

    if (v508 == 0x8000)
    {
      v508 = 0x8000;
    }

    else
    {
      --v508;
    }

    if (v506 == 0x7FFF)
    {
      v506 = v506;
    }

    else
    {
      ++v506;
    }

    ++v505;
  }

  while (v505 != 32);
  return result;
}

uint64_t compMantExp16Unorm(int a1, int a2, int a3, int a4)
{
  v4 = a2 - a4;
  if (a1 - a3 <= -32768)
  {
    v5 = 0x8000;
  }

  else
  {
    v5 = a1 - a3;
  }

  if (a1 - a3 < 0x8000)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0x7FFF;
  }

  if (a2 != a4)
  {
    v6 = a2 - a4;
  }

  if (v4 >= -32768)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x8000;
  }

  if (v4 < 0x8000)
  {
    return v7;
  }

  else
  {
    return 0x7FFF;
  }
}

uint64_t BASOP_Util_Sqrt_InvSqrt_MantExp(uint64_t a1, int a2, _WORD *a3, _WORD *a4, _WORD *a5, _WORD *a6, _DWORD *a7)
{
  v12 = a1;
  if (a1)
  {
    if (a1 == -1)
    {
      v12 = 15;
    }

    else
    {
      v13 = a1 ^ (a1 >> 15);
      if (v13 >= 0x4000)
      {
        v12 = 0;
      }

      else
      {
        v12 = 0;
        do
        {
          v13 = (2 * v13);
          ++v12;
        }

        while (v13 < 0x4000);
      }
    }
  }

  v14 = a2 - v12;
  if (v14 < 0x8000)
  {
    if (v14 <= -32769)
    {
      *a7 = 1;
      v14 = 0x8000;
    }
  }

  else
  {
    *a7 = 1;
    v14 = 0x7FFF;
  }

  v15 = shl(a1, v12, a7);
  v16 = v15;
  result = mac_r(-2129920, v15, 64, a7);
  v18 = &SqrtTable[2 * result];
  if (v18 < SqrtTable || v18 + 2 > SqrtDiffTable || v18 > v18 + 2 || (v19 = result, v20 = &SqrtDiffTable[result], v20 < SqrtDiffTable) || v20 + 2 > ISqrtTable || v20 > v20 + 2 || (result = mac_r(*&SqrtTable[2 * result], SqrtDiffTable[result], v16 & 0x1FF, a7), v21 = &ISqrtTable[v19], v21 < ISqrtTable) || v21 + 1 > ISqrtDiffTable || v21 > v21 + 1 || (v22 = ISqrtDiffTable + v19, v22 < ISqrtDiffTable) || v22 + 1 > &BASOP_util_Pow2_pow2Coeff || v22 > v22 + 1)
  {
    __break(0x5519u);
  }

  else
  {
    v23 = result;
    v24 = msu_r(*v21, *v22, v16 & 0x1FF, a7);
    LOWORD(v25) = v24;
    if (v14)
    {
      v27 = (23170 * v23 + 0x4000) >> 15;
      if ((v27 & 0x10000) != 0)
      {
        v23 = v27 | 0xFFFF0000;
      }

      else
      {
        v23 = (23170 * v23 + 0x4000) >> 15;
      }

      if (v23 <= -32769)
      {
        *a7 = 1;
        LOWORD(v23) = 0x8000;
      }
    }

    else
    {
      v26 = (23170 * v24 + 0x4000) >> 15;
      if ((v26 & 0x10000) != 0)
      {
        v25 = v26 | 0xFFFF0000;
      }

      else
      {
        v25 = (23170 * v24 + 0x4000) >> 15;
      }

      if (v25 <= -32769)
      {
        *a7 = 1;
        LOWORD(v25) = 0x8000;
      }
    }

    v28 = ((v14 << 16 >> 2) + 0x4000) >> 15;
    if ((v28 & 0x10000) != 0)
    {
      v29 = v28 | 0xFFFF0000;
    }

    else
    {
      v29 = ((v14 << 16 >> 2) + 0x4000) >> 15;
    }

    if (v29 < 0x8000)
    {
      if (v29 <= -32769)
      {
        *a7 = 1;
        LOWORD(v29) = 0x8000;
      }
    }

    else
    {
      *a7 = 1;
      LOWORD(v29) = 0x7FFF;
    }

    *a4 = v29;
    result = msu_r(0x8000, v14, 0x4000, a7);
    *a6 = result;
    *a3 = v23;
    *a5 = v25;
  }

  return result;
}

void PsychAdaptLowFreqEmph(unint64_t a1, unint64_t a2, float *a3, unint64_t a4)
{
  v4 = a3 + 1;
  if ((a3 + 1) <= a4 && v4 >= a3)
  {
    v8 = *a3;
    v9 = 8;
    v10 = *a3;
    while (v4 >= a3 && (v4 + 1) <= a4 && v4 <= v4 + 1)
    {
      v11 = *v4++;
      v12 = v11;
      if (v10 > v11)
      {
        v10 = v12;
      }

      if (v8 < v12)
      {
        v8 = v12;
      }

      if (!--v9)
      {
        v13 = v10 * 32.0;
        if (v8 >= v13 || v8 <= 1.1755e-38)
        {
          return;
        }

        v15 = pow((v13 / v8), 0.0078125);
        v16 = 31;
        v17 = v15;
        while (1)
        {
          v18 = (a1 + 4 * v16);
          v19 = v18 + 1;
          v20 = v18 < a1 || v19 > a2;
          if (v20 || v18 > v19)
          {
            break;
          }

          *v18 = v17 * *v18;
          v17 = v17 * v15;
          if (--v16 == -1)
          {
            return;
          }
        }

        break;
      }
    }
  }

  __break(0x5519u);
}

double SearchPeriodicityIndex_Single(unint64_t a1, unint64_t a2, int a3, int a4, char a5)
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = (a3 - 1) << a5;
  v6 = ((v5 - 1) / a4);
  v33 = v6;
  if (v6 < 1)
  {
    return 0.0;
  }

  v28[1] = v28;
  MEMORY[0x1EEE9AC00](a1);
  v11 = v28 - ((8 * v6 + 15) & 0xFFFFFFFF0);
  v12 = memset(v11, 255, 8 * v6);
  MEMORY[0x1EEE9AC00](v12);
  v13 = memset(v11, 255, 8 * v6);
  MEMORY[0x1EEE9AC00](v13);
  memset(v11, 255, 8 * v6);
  __A = 0.3;
  vDSP_vfillD(&__A, v11, 1, v6);
  v31 = 1.0;
  __B = (3 * v6 - 2);
  vDSP_vgenD(&v31, &__B, v11, 1, v6);
  vvpows(v11, v11, v11, &v33);
  v29 = 0.189687165;
  vDSP_vsmulD(v11, 1, &v29, v11, 1, v33);
  result = 0.0;
  if (v5 > a4)
  {
    v15 = 0;
    v16 = (v28 - ((8 * v6 + 15) & 0xFFFFFFFF0));
    v17 = a4;
    do
    {
      v18 = (a1 + 4 * (v17 >> a5));
      v19 = v18 + 1;
      v21 = v18 < a1 || v19 > a2 || v18 >= v19;
      v22 = (v16 + 1);
      if (v21 || v16 < v11 || v22 > &v11[8 * v6] || v16 >= v22)
      {
        __break(0x5519u);
      }

      v26 = *v16++;
      v27 = v26;
      *&result = *&result + (*v18 * v27);
      v17 += a4;
      ++v15;
    }

    while (v17 < v5);
    *&result = *&result / (v15 + 0.00001);
  }

  return result;
}

void SearchPeriodicityIndex_Range(unint64_t a1, unint64_t a2, int a3, signed int a4, signed int a5, char a6, int a7, unsigned int a8, signed int *a9, float *a10)
{
  if (a4 >= a5)
  {
    v17 = 0;
    v18 = -1.0e30;
  }

  else
  {
    v17 = 0;
    v18 = -1.0e30;
    v19 = a4;
    do
    {
      v20 = SearchPeriodicityIndex_Single(a1, a2, a3, a7 + v19, a6);
      if (*&v20 > v18)
      {
        v17 = v19;
        v18 = *&v20;
      }

      v19 += a8;
    }

    while (v19 < a5);
  }

  if (v18 > *a10)
  {
    *a10 = v18;
    *a9 = v17;
  }

  if ((v17 - (a8 >> 1)) <= a4)
  {
    v21 = a4;
  }

  else
  {
    v21 = v17 - (a8 >> 1);
  }

  if (v21 < v17)
  {
    do
    {
      v22 = SearchPeriodicityIndex_Single(a1, a2, a3, a7 + v21, a6);
      if (*&v22 > *a10)
      {
        *a10 = *&v22;
        *a9 = v21;
      }

      ++v21;
    }

    while (v17 != v21);
  }

  if (a8 >= 2)
  {
    v23 = v17 + (a8 >> 1);
    v24 = a7 + 1;
    do
    {
      v25 = v17 + 1;
      v26 = SearchPeriodicityIndex_Single(a1, a2, a3, v24 + v17, a6);
      if (*&v26 > *a10)
      {
        *a10 = *&v26;
        *a9 = v25;
      }

      ++v17;
    }

    while (v25 < v23);
  }
}

void lpc2mdct(unint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = 0;
  v33[1] = *MEMORY[0x1E69E9840];
  *&v8 = -1;
  *(&v8 + 1) = -1;
  *&v32[416] = v8;
  *&v32[432] = v8;
  *&v32[384] = v8;
  *&v32[400] = v8;
  *&v32[352] = v8;
  *&v32[368] = v8;
  *&v32[320] = v8;
  *&v32[336] = v8;
  *&v32[288] = v8;
  *&v32[304] = v8;
  *&v32[256] = v8;
  *&v32[272] = v8;
  *&v32[224] = v8;
  *&v32[240] = v8;
  *&v32[192] = v8;
  *&v32[208] = v8;
  *&v32[160] = v8;
  *&v32[176] = v8;
  *&v32[128] = v8;
  *&v32[144] = v8;
  *&v32[96] = v8;
  *&v32[112] = v8;
  *&v32[64] = v8;
  *&v32[80] = v8;
  *&v32[32] = v8;
  *&v32[48] = v8;
  *v32 = v8;
  *&v32[16] = v8;
  v31[2] = v8;
  v31[3] = v8;
  v31[0] = v8;
  v31[1] = v8;
  *&v30[416] = v8;
  *&v30[432] = v8;
  *&v30[384] = v8;
  *&v30[400] = v8;
  *&v30[352] = v8;
  *&v30[368] = v8;
  *&v30[320] = v8;
  *&v30[336] = v8;
  *&v30[288] = v8;
  *&v30[304] = v8;
  *&v30[256] = v8;
  *&v30[272] = v8;
  *&v30[224] = v8;
  *&v30[240] = v8;
  *&v30[192] = v8;
  *&v30[208] = v8;
  *&v30[160] = v8;
  *&v30[176] = v8;
  *&v30[128] = v8;
  *&v30[144] = v8;
  *&v30[96] = v8;
  *&v30[112] = v8;
  *&v30[64] = v8;
  *&v30[80] = v8;
  *&v30[32] = v8;
  *&v30[48] = v8;
  *v30 = v8;
  *&v30[16] = v8;
  v29[2] = v8;
  v29[3] = v8;
  v29[0] = v8;
  v29[1] = v8;
  do
  {
    v9 = (a1 + v7);
    v10 = a1 + v7 + 4;
    v12 = a1 + v7 < a1 || v10 > a2 || v9 > v10;
    if (v12 || (v13 = v31 + v7, (v31 + v7) < v31) || v13 + 4 > v33 || v13 > v13 + 4 || (v14 = cos(((v6 * 3.1416) * 0.0078125)), v15 = *v9, *&v14 = v14 * *v9, *(v31 + v7) = LODWORD(v14), v16 = v29 + v7, (v29 + v7) < v29) || v16 + 4 > v31 || v16 > v16 + 4)
    {
      __break(0x5519u);
    }

    v17 = sin(((v6 * 3.1416) * 0.0078125)) * -v15;
    *(v29 + v7) = v17;
    v7 += 4;
    ++v6;
  }

  while (v7 != 68);
  memset(&v32[4], 0, 444);
  memset(&v30[4], 0, 444);
  DoRTFTn(v31);
  v18 = 0;
  v19 = vdupq_n_s64(0x3CD203AFA0000000uLL);
  __asm { FMOV            V1.2D, #1.0 }

  do
  {
    v25 = vmlaq_f32(vmulq_f32(v29[v18], v29[v18]), v31[v18], v31[v18]);
    v26 = vcvt_hight_f64_f32(v25);
    v27 = vsqrtq_f64(vcvtq_f64_f32(*v25.f32));
    v28 = vsqrtq_f64(v26);
    *(a3 + v18 * 16) = vcvt_hight_f32_f64(vcvt_f32_f64(vdivq_f64(_Q1, vbslq_s8(vcgtq_f64(v19, v27), v19, v27))), vdivq_f64(_Q1, vbslq_s8(vcgtq_f64(v19, v28), v19, v28)));
    ++v18;
  }

  while (v18 != 16);
}

unint64_t mdct_preShaping(unint64_t result, unint64_t a2, int a3, unint64_t a4, unint64_t a5)
{
  if (a3 >= 0)
  {
    v5 = a3;
  }

  else
  {
    v5 = a3 + 63;
  }

  v6 = v5 >> 6;
  v7 = a3 - (v5 & 0xFFFFFFC0);
  if (v7)
  {
    v22 = (64 - v7);
    v23 = (64 / v7);
    v24 = v7 <= 32;
    if (v7 > 32)
    {
      v25 = v6;
    }

    else
    {
      v25 = v6 + 1;
    }

    if (!v24)
    {
      ++v6;
    }

    v26 = 0x40 / v22;
    if (v24)
    {
      v26 = v23;
    }

    if (a3 >= 1)
    {
      v27 = 0;
      v28 = 0;
      while (1)
      {
        v29 = (a4 + 4 * v27);
        v30 = v29 + 1;
        v31 = v29 < a4 || v30 > a5;
        if (v31 || v29 >= v30)
        {
          goto LABEL_60;
        }

        if (v27 % v26)
        {
          v33 = v6;
        }

        else
        {
          v33 = v25;
        }

        if (v33 >= a3 - v28)
        {
          v33 = a3 - v28;
        }

        if (v33 >= 1)
        {
          v34 = *v29;
          v35 = v28;
          v36 = 4 * v28;
          v37 = 1.0 / v34;
          do
          {
            v38 = result + v36 + 4;
            v39 = result + v36 < result || v38 > a2;
            if (v39 || result + v36 > v38)
            {
              goto LABEL_60;
            }

            v28 = v35 + 1;
            *(result + 4 * v35) = v37 * *(result + 4 * v35);
            v36 += 4;
            ++v35;
          }

          while (--v33);
        }

        ++v27;
        if (v28 >= a3)
        {
          return result;
        }
      }
    }
  }

  else if (a3 >= 1)
  {
    v8 = 0;
    v9 = 0;
    while (1)
    {
      v10 = (a4 + 4 * v8);
      v11 = v10 + 1;
      v12 = v10 < a4 || v11 > a5;
      if (v12 || v10 >= v11)
      {
        break;
      }

      if (a3 >= 0x40)
      {
        v14 = *v10;
        v15 = v9;
        v16 = 4 * v9;
        v17 = v6;
        v18 = 1.0 / v14;
        do
        {
          v19 = result + v16 + 4;
          v20 = result + v16 < result || v19 > a2;
          if (v20 || result + v16 > v19)
          {
            goto LABEL_60;
          }

          v9 = v15 + 1;
          *(result + 4 * v15) = v18 * *(result + 4 * v15);
          v16 += 4;
          ++v15;
        }

        while (--v17);
      }

      ++v8;
      if (v9 >= a3)
      {
        return result;
      }
    }

LABEL_60:
    __break(0x5519u);
  }

  return result;
}

unint64_t lsf_end_enc(uint64_t a1, float *a2, unint64_t a3, unint64_t a4, unint64_t a5, _OWORD *a6, unint64_t a7, __n128 a8, float a9, uint64_t a10, float *a11, unint64_t a12, __int16 a13, __int16 a14, __int16 a15, uint64_t a16, uint64_t a17, float *a18, __int16 *a19, __int16 a20, __int16 a21, int *a22, unint64_t a23, __int16 *a24, _WORD *a25, unint64_t a26, __int16 a27)
{
  v386[1] = *MEMORY[0x1E69E9840];
  memset(v363, 170, sizeof(v363));
  memset(v361, 170, sizeof(v361));
  v301 = 0;
  v300 = 0;
  memset(v359, 170, sizeof(v359));
  *&v29 = -1;
  *(&v29 + 1) = -1;
  v358[2] = v29;
  v358[3] = v29;
  v358[0] = v29;
  v358[1] = v29;
  v356 = v29;
  v357 = v29;
  v354 = v29;
  v355 = v29;
  v353[2] = v29;
  v353[3] = v29;
  v353[0] = v29;
  v353[1] = v29;
  v352[2] = v29;
  v352[3] = v29;
  v352[0] = v29;
  v352[1] = v29;
  __B[2] = v29;
  __B[3] = v29;
  __B[0] = v29;
  __B[1] = v29;
  v299 = -21846;
  v348[2] = v29;
  v348[3] = v29;
  v348[0] = v29;
  v348[1] = v29;
  v347[2] = v29;
  v347[3] = v29;
  v347[0] = v29;
  v347[1] = v29;
  v346[2] = v29;
  v346[3] = v29;
  v346[0] = v29;
  v346[1] = v29;
  v344 = v29;
  v345 = v29;
  v342 = v29;
  v343 = v29;
  v341[2] = v29;
  v341[3] = v29;
  v341[0] = v29;
  v341[1] = v29;
  v340[2] = v29;
  v340[3] = v29;
  v340[0] = v29;
  v340[1] = v29;
  *&v30 = 0xAAAAAAAAAAAAAAAALL;
  *(&v30 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v298 = -21846;
  v31 = a9 == 16000.0 && a14 == 3;
  v350 = 0xAAAAAAAAAAAAAAAALL;
  v32 = v31;
  v349 = 0xAAAAAAAAAAAAAAAALL;
  v33 = a21 == 0;
  if (a27 == 2)
  {
    v34 = 2;
  }

  else
  {
    v34 = a14;
  }

  v337[0] = v30;
  v337[1] = v30;
  v291 = v32;
  v35 = v32 & v33;
  if ((v32 & v33) != 0)
  {
    v36 = v34;
  }

  else
  {
    v36 = a14;
  }

  v338 = -1431655766;
  *__A = a16 + 512;
  *&__A[8] = a8;
  Unified_weighting(__A, a2, a3, __B, v352, a15 == 0, v36 == 1, a9);
  if (a17 == 2400)
  {
    if (a3 >= a2 && (a3 - a2) >= 61)
    {
      v302 = -1431655766;
      v303 = -21846;
      *&v38 = -1;
      *(&v38 + 1) = -1;
      v377 = v38;
      v378 = v38;
      v375 = v38;
      v376 = v38;
      v373 = v38;
      v374 = v38;
      v371 = v38;
      v372 = v38;
      v369 = 0xAAAAAAAAAAAAAAAALL;
      v370 = 0xAAAAAAAAAAAAAAAALL;
      v367 = v38;
      v368 = v38;
      v39 = a2 + 16;
      v40 = a2 + 15;
      v365 = v38;
      v366 = v38;
      if (a2 + 15 <= a2 + 16 && v40 >= a2)
      {
        v41 = 0;
        v42 = a1 + 14268;
        v43 = *v40 <= 6350.0 ? 16 : 6;
        v44 = *v40 <= 6350.0 ? 6 : 0;
        v45 = *v40 <= 6350.0 ? &CNG_SN1[96] : CNG_SN1;
        v46 = 1.0e30;
        do
        {
          v47 = 0;
          v48 = 0.0;
          do
          {
            v49 = &v45[v47];
            v50 = __B + v47 * 4 + 4;
            v52 = (__B + v47 * 4) < __B || v50 > v352 || __B + v47 * 4 > v50;
            v53 = v49 + 1;
            v56 = v52 || v49 < CNG_SN1 || v53 > CB_lsf || v49 > v53;
            v57 = &a2[v47];
            v58 = &a2[v47 + 1];
            if (v56 || v58 > v39 || v57 > v58)
            {
              goto LABEL_457;
            }

            v48 = v48 + ((*(__B + v47 * 4) * *v49) * (*v49 + (*v57 * -2.0)));
            ++v47;
          }

          while (v47 != 16);
          if (v48 < v46)
          {
            v46 = v48;
            v41 = v44;
          }

          ++v44;
          v45 += 16;
        }

        while (v43 > v44);
        v61 = 0;
        v62 = &CNG_SN1[16 * v41];
        do
        {
          v63 = &a2[v61];
          v64 = &a2[v61 + 1];
          v65 = v64 > v39 || v63 > v64;
          v66 = &v62[v61];
          v67 = &v62[v61 + 1];
          if (v65 || v66 < CNG_SN1 || v67 > CB_lsf || v66 > v67)
          {
            goto LABEL_457;
          }

          *(&v375 + v61 * 4) = *v63 - *v66;
          ++v61;
        }

        while (v61 != 16);
        *&v71 = -1;
        *(&v71 + 1) = -1;
        v384 = v71;
        v385 = v71;
        *__A = v71;
        *&__A[16] = v71;
        v381 = v71;
        v382 = v71;
        __C = v71;
        v380 = v71;
        v72 = &cng_sort[v41];
        if (v72 >= cng_sort && v72 + 1 <= perm_MSLVQ && v72 <= v72 + 1)
        {
          v73 = (v41 + 18);
          v74 = &sigma_MSLVQ + 64 * v73;
          v75 = &inv_sigma_MSLVQ + 64 * v73;
          v76 = &scales + 24 * (v41 + 112);
          v77 = &no_lead[6 * (v41 + 112)];
          if (*v72)
          {
            v282 = v42 + 4 * (v41 + 112);
            v284 = v74 + 64;
            v285 = v75 + 64;
            v286 = &sigma_MSLVQ + 64 * v73;
            v287 = &inv_sigma_MSLVQ + 64 * v73;
            for (i = 0; i != 64; i += 4)
            {
              v79 = &v375 + i + 4;
              if ((&v375 + i) < &v375 || v79 > &__C || &v375 + i > v79)
              {
                goto LABEL_457;
              }

              *&__A[i] = *(&v375 + i);
              v82 = __B + i;
              if ((__B + i) < __B || v82 + 4 > v352 || v82 > v82 + 4)
              {
                goto LABEL_457;
              }

              *(&__C + i) = *(__B + i);
            }

            v83 = (a1 + 14268);
            permute(__A, v386, &perm_MSLVQ[4 * v41]);
            permute(&__C, __A, &perm_MSLVQ[4 * v41]);
            v335 = v386;
            v336 = __A;
            p_C = &__C;
            v332 = __A;
            v333 = &__C;
            v334 = __A;
            v329 = &v369;
            v330 = &v365;
            v325 = &v371;
            v326 = &v375;
            v327 = &v371;
            v328 = &v365;
            v323 = &v371;
            v324 = &v370;
            v319 = &v369;
            v320 = &v370;
            v321 = &v369;
            v322 = &v370;
            v316 = v286;
            v317 = v284;
            v318 = v286;
            v313 = v287;
            v314 = v285;
            v315 = v287;
            v310 = &scales + 24 * (v41 + 112);
            v311 = v76 + 24;
            v312 = v310;
            v84 = (a1 + 14780);
            v307 = v282;
            v308 = a1 + 14780;
            v309 = a1 + 14268;
            v304 = &no_lead[6 * (v41 + 112)];
            v305 = v77 + 6;
            v306 = v304;
            q_data(&v334, &p_C, &v328, &v325, &v322, &v319, &v316, &v313, &v310, &v307, &v304);
            permute(&v365, &v369, &perm_MSLVQ[4 * v41]);
          }

          else
          {
            v335 = &__C;
            v336 = &v375;
            p_C = __B;
            v332 = v352;
            v333 = __B;
            v334 = &v375;
            v329 = &v369;
            v330 = &v365;
            v325 = &v371;
            v326 = &v375;
            v327 = &v371;
            v328 = &v365;
            v323 = &v371;
            v324 = &v370;
            v319 = &v369;
            v320 = &v370;
            v321 = &v369;
            v322 = &v370;
            v316 = &sigma_MSLVQ + 64 * v73;
            v317 = v74 + 64;
            v318 = v316;
            v313 = &inv_sigma_MSLVQ + 64 * v73;
            v314 = v75 + 64;
            v315 = v313;
            v310 = &scales + 24 * (v41 + 112);
            v311 = v76 + 24;
            v312 = v310;
            v84 = (a1 + 14780);
            v307 = v42 + 4 * (v41 + 112);
            v308 = a1 + 14780;
            v309 = a1 + 14268;
            v304 = &no_lead[6 * (v41 + 112)];
            v305 = v77 + 6;
            v306 = v304;
            v83 = (a1 + 14268);
            q_data(&v334, &p_C, &v328, &v325, &v322, &v319, &v316, &v313, &v310, &v307, &v304);
          }

          *__A = a1 + 5468;
          *&__A[8] = a1 + 7532;
          *&__A[16] = a1 + 5468;
          *&__C = a1 + 7532;
          *(&__C + 1) = a1 + 9596;
          *&v380 = a1 + 7532;
          v334 = v83;
          v335 = v84;
          v336 = v83;
          index_lvq(&v371, &v375, &v370, &v371, &v369, &v370, v41 + 112, v86, v87, v85, &v302, &v304, __A, &__C, &v334);
          v114 = &CNG_SN1[16 * v41];
          if (v114 <= CB_lsf && v114 >= CNG_SN1 && v41 <= 15)
          {
            MEMORY[0x19EAE5DC0](&v365, 1);
            push_indice(a1, 34, v41, 4);
            push_indice(a1, 35, v302, 15);
            push_indice(a1, 35, SHIWORD(v302), 10);
            v115 = a5 - a4;
            if (a5 >= a4 && v115 > 0x3F)
            {
              v116 = v365;
              v117 = v366;
              v118 = v368;
              *(a4 + 32) = v367;
              *(a4 + 48) = v118;
              *a4 = v116;
              *(a4 + 16) = v117;
              if (a4 + 64 >= a4 && v115 >= 61)
              {
                v_sort(a4, 0, 15, 16);
                return reorder_lsf(a4, 70.0, a9);
              }
            }
          }
        }
      }
    }

    goto LABEL_457;
  }

  v289 = v36;
  pred_mode = find_pred_mode(v36, a15, &v301, &v300, *(a1 + 64), a9);
  v89 = v301;
  v90 = v300;
  v292 = pred_mode;
  v283 = a13 - ((a27 != 2) & v35);
  *__A = &v350;
  *&__A[8] = __B;
  *&__A[16] = &v350;
  *&__C = &v349;
  *(&__C + 1) = &v350;
  *&v380 = &v349;
  *&v375 = &v359[8];
  *(&v375 + 1) = &v359[16];
  *&v376 = &v359[8];
  *&v371 = v359;
  *(&v371 + 1) = &v359[8];
  *&v372 = v359;
  lsf_allocate((v283 - (pred_mode >> 1)), v301, v300, &v299, &v298, __A, &__C, &v375, &v371);
  v288 = v89;
  v91 = (&ModeMeans + 2 * v89);
  if (v91 < &ModeMeans || v91 + 2 > &Predictors || v91 > v91 + 2)
  {
    goto LABEL_457;
  }

  v92 = a3;
  v93 = 0;
  v94 = flt_19B0AFFE8[a15 == 0];
  v290 = v90;
  v96 = *v91;
  v95 = v91[1];
  do
  {
    v97 = (v96 + v93 * 4);
    v98 = v96 + v93 * 4 + 4;
    v100 = (v96 + v93 * 4) < v96 || v98 > v95 || v97 > v98;
    v101 = &a11[v93];
    v102 = &a11[v93 + 1];
    if (v100 || v101 < a11 || v102 > a12 || v101 > v102)
    {
      goto LABEL_457;
    }

    *(v353 + v93 * 4) = *v97 + (*v101 * 0.33333);
    ++v93;
  }

  while (v93 != 16);
  if (v292 == 1)
  {
    if (a3 < a2 || (a3 - a2) < 61)
    {
      goto LABEL_457;
    }

    for (j = 0; j != 16; ++j)
    {
      *(v348 + j * 4) = a2[j] - *(v353 + j * 4);
    }

    v110 = a1;
    *__A = a1 + 9596;
    *&__A[8] = a1 + 11932;
    *&__A[16] = a1 + 9596;
    *&__C = a1 + 11932;
    *(&__C + 1) = a1 + 14268;
    *&v380 = a1 + 11932;
    *&v375 = a1 + 14780;
    *(&v375 + 1) = a1 + 15360;
    *&v376 = a1 + 14780;
    vq_lvq_lsf_enc(2, v90, v348, &v349, &v349, &v350, v298, a18, __B, v352, v361, v362, a2, v92, v353, &v354, __A, &__C, &v375, v340, &v342, &v342, v347);
    v113 = 0;
    goto LABEL_130;
  }

  if (v292)
  {
    if ((v95 - v96) <= 0x3F)
    {
      goto LABEL_457;
    }

    v121 = *v96;
    v122 = v96[1];
    v123 = v96[3];
    v356 = v96[2];
    v357 = v123;
    v354 = v121;
    v355 = v122;
    if (a3 < a2)
    {
      goto LABEL_457;
    }

    if ((a3 - a2) < 61)
    {
      goto LABEL_457;
    }

    for (k = 0; k != 16; ++k)
    {
      *(v358 + k * 4) = a2[k] - *(&v354 + k * 4);
    }

    v125 = (&Predictors + 2 * v90);
    if (v125 < &Predictors || v125 + 2 > &Quantizers || v125 > v125 + 2)
    {
      goto LABEL_457;
    }

    v126 = 0;
    v127 = *v125;
    v128 = v125[1];
    do
    {
      v129 = (v127 + v126);
      if (v127 + v126 < v127)
      {
        goto LABEL_457;
      }

      if ((v129 + 1) > v128)
      {
        goto LABEL_457;
      }

      if (v129 > v129 + 1)
      {
        goto LABEL_457;
      }

      v130 = (a6 + v126);
      if ((a6 + v126) < a6)
      {
        goto LABEL_457;
      }

      if ((v130 + 1) > a7)
      {
        goto LABEL_457;
      }

      if (v130 > v130 + 1)
      {
        goto LABEL_457;
      }

      v131 = *(&v354 + v126) + (*v129 * (*v130 - *(&v354 + v126)));
      *(v352 + v126) = v131;
      v132 = &a2[v126 / 4];
      if (&a2[v126 / 4] < a2 || (v132 + 1) > a3 || v132 > v132 + 1)
      {
        goto LABEL_457;
      }

      *(v347 + v126) = *v132 - v131;
      v126 += 4;
    }

    while (v126 != 64);
    v133 = *a19;
    if ((v289 != 2 || v133 <= 6) && (v289 == 2 || v133 < 4))
    {
      v110 = a1;
      if (*a19)
      {
LABEL_156:
        if (a9 != 16000.0 || v289 != 2)
        {
          *__A = v110 + 5468;
          *&__A[8] = v110 + 7532;
          *&__A[16] = v110 + 5468;
          *&__C = v110 + 7532;
          *(&__C + 1) = v110 + 9596;
          *&v380 = v110 + 7532;
          *&v375 = v110 + 14268;
          *(&v375 + 1) = v110 + 14780;
          *&v376 = v110 + 14268;
          v281 = v92;
          vq_lvq_lsf_enc(0, v89, v358, v359, &v350, __B, v299, a18, __B, v352, v363, v364, a2, v92, &v354, v358, __A, &__C, &v375, v340, &v342, &v342, v347);
          v141 = v140;
          if (a20 && v140 <= v94 || (*__A = v110 + 9596, *&__A[8] = v110 + 11932, *&__A[16] = v110 + 9596, *&__C = v110 + 11932, *(&__C + 1) = v110 + 14268, *&v380 = v110 + 11932, *&v375 = v110 + 14780, *(&v375 + 1) = v110 + 15360, *&v376 = v110 + 14780, vq_lvq_lsf_enc(2, v90, v347, v348, &v349, &v350, v298, v111, __B, v352, v361, v362, a2, v281, v352, v353, __A, &__C, &v375, v341, &v342, v346, v347), a20) || v141 < v94 || v142 * 1.05 > (v141 * *a18))
          {
            v112 = 0;
            *a19 = 0;
            v113 = 1;
          }

          else
          {
            v113 = 0;
            ++*a19;
            v112 = 1;
          }

          goto LABEL_172;
        }

        v135 = 0;
        v136 = *a18;
        *&v137 = -1;
        *(&v137 + 1) = -1;
        v384 = v137;
        v385 = v137;
        *__A = v137;
        *&__A[16] = v137;
        do
        {
          *&__A[v135 * 4] = a2[v135] - *(v352 + v135 * 4);
          ++v135;
        }

        while (v135 != 16);
        for (m = 0; m != 64; m += 16)
        {
          *&__A[m] = vmulq_f32(*&__A[m], *&__A[m]);
        }

        LODWORD(__C) = -1;
        vDSP_dotpr(__A, 1, __B, 1, &__C, 0x10uLL);
        v139 = (v283 - 1);
        if (a20 == 1 || *&__C > (v136 * 3784500.0))
        {
          *__A = v337;
          *&__A[8] = v339;
          *&__A[16] = v337;
          v113 = 1;
          qlsf_ARSN_tcvq_Enc_16k(v358, v359, &v342, v347, __A, __B, v352, v139, 1);
          v112 = 0;
          *a19 = 0;
          goto LABEL_172;
        }

        *__A = v337;
        *&__A[8] = v339;
        *&__A[16] = v337;
        qlsf_ARSN_tcvq_Enc_16k(v347, v348, &v342, v347, __A, __B, v352, v139, 0);
        v113 = 0;
        ++*a19;
LABEL_130:
        v112 = 1;
        goto LABEL_172;
      }

      v134 = 1.0;
    }

    else
    {
      v134 = *a18 * 0.8;
      v110 = a1;
    }

    *a18 = v134;
    goto LABEL_156;
  }

  if ((v95 - v96) <= 0x3F)
  {
    goto LABEL_457;
  }

  v106 = *v96;
  v107 = v96[1];
  v108 = v96[3];
  v356 = v96[2];
  v357 = v108;
  v354 = v106;
  v355 = v107;
  if (a3 < a2 || (a3 - a2) < 61)
  {
    goto LABEL_457;
  }

  for (n = 0; n != 16; ++n)
  {
    *(v358 + n * 4) = a2[n] - *(&v354 + n * 4);
  }

  v110 = a1;
  *__A = a1 + 5468;
  *&__A[8] = a1 + 7532;
  *&__A[16] = a1 + 5468;
  *&__C = a1 + 7532;
  *(&__C + 1) = a1 + 9596;
  *&v380 = a1 + 7532;
  *&v375 = a1 + 14268;
  *(&v375 + 1) = a1 + 14780;
  *&v376 = a1 + 14268;
  vq_lvq_lsf_enc(0, v89, v358, v359, &v350, __B, v299, a18, __B, v352, v363, v364, a2, v92, &v354, v358, __A, &__C, &v375, v340, &v342, &v342, v347);
  v112 = 0;
  *a19 = 0;
  v113 = 1;
LABEL_172:
  if (a21)
  {
    v143 = a12;
    v144 = &v359[8];
    if (a9 == 16000.0 && a14 == 2)
    {
      v145 = 0;
      v146 = 0;
      v147 = 0;
      *a24 = 10;
      do
      {
        v148 = v337 + v146 * 2 + 2;
        v150 = (v337 + v146 * 2) < v337 || v148 > v339 || v337 + v146 * 2 > v148;
        v151 = &a22[v145];
        v152 = &a22[v145 + 1];
        if (v150 || v151 < a22 || v152 > a23 || v151 > v152)
        {
          goto LABEL_457;
        }

        a22[v147] = *(v337 + v146 * 2);
        v156 = &BC_TCVQ_BIT_ALLOC_40B[v146];
        if (&BC_TCVQ_BIT_ALLOC_40B[v146] < BC_TCVQ_BIT_ALLOC_40B)
        {
          goto LABEL_457;
        }

        if (v156 + 1 > CNG_SN1)
        {
          goto LABEL_457;
        }

        if (v156 > v156 + 1)
        {
          goto LABEL_457;
        }

        v157 = &a25[v146];
        if (&a25[v146] < a25 || (v157 + 1) > a26 || v157 > v157 + 1)
        {
          goto LABEL_457;
        }

        *v157 = BC_TCVQ_BIT_ALLOC_40B[v146];
        ++v147;
        ++v146;
        ++v145;
      }

      while (v147 < *a24);
      v158 = 1;
      if (v112)
      {
LABEL_200:
        if (v158)
        {
          if (v143 < a11)
          {
            goto LABEL_457;
          }

          if (v143 - a11 <= 0x3F)
          {
            goto LABEL_457;
          }

          v159 = v342;
          v160 = v343;
          v161 = v345;
          *(a11 + 2) = v344;
          *(a11 + 3) = v161;
          *a11 = v159;
          *(a11 + 1) = v160;
          if (a11 + 16 < a11)
          {
            goto LABEL_457;
          }

          v162 = a5 - a4;
          if (a5 < a4 || v162 < 61)
          {
            goto LABEL_457;
          }

          v163 = &v342;
          v164 = v352;
LABEL_437:
          v197 = a4;
LABEL_438:
          MEMORY[0x19EAE5DC0](v163, 1, v164, 1, v197, 1, 16);
          goto LABEL_448;
        }

        v195 = &v349 + v298;
        v196 = (v195 - 1);
        if (v195 - 1 < &v349)
        {
          goto LABEL_457;
        }

        if (v195 > &v350)
        {
          goto LABEL_457;
        }

        if (v196 > v195)
        {
          goto LABEL_457;
        }

        v162 = a5 - a4;
        if (a5 < a4 || v162 < 61)
        {
          goto LABEL_457;
        }

        v197 = a4;
        vq_dec_lvq(0, a4, &v359[16], v360, v298, v290, *v196, v111, a1 + 5468, a1 + 7532, a1 + 7532, a1 + 9596, a1 + 9596, a1 + 11932, a1 + 11932, a1 + 14268, a1 + 14268, a1 + 14780, a1 + 14780, a1 + 15360);
        if (v292 == 1)
        {
          if (a12 < a11)
          {
            goto LABEL_457;
          }

          if (v162 < 0x40)
          {
            goto LABEL_457;
          }

          if (a12 - a11 <= 0x3F)
          {
            goto LABEL_457;
          }

          v198 = *a4;
          v199 = *(a4 + 16);
          v200 = *(a4 + 48);
          *(a11 + 2) = *(a4 + 32);
          *(a11 + 3) = v200;
          *a11 = v198;
          *(a11 + 1) = v199;
          if (a11 + 16 < a11)
          {
            goto LABEL_457;
          }

          v164 = v353;
          v163 = a4;
          goto LABEL_438;
        }

        MEMORY[0x19EAE5DC0](a4, 1, v352, 1, a4, 1, 16);
        if (a12 < a11 || (a12 - a11) < 61)
        {
          goto LABEL_457;
        }

        v231 = 0;
        v197 = a4;
        do
        {
          a11[v231] = *(a4 + v231 * 4) - *(v353 + v231 * 4);
          ++v231;
        }

        while (v231 != 16);
        goto LABEL_448;
      }
    }

    else
    {
      if (v112)
      {
        v174 = v298;
        *a24 = v298 + 1;
        if (v174 > 0)
        {
          v175 = 0;
          v176 = a22;
          do
          {
            v177 = &v361[v175 + 1];
            v178 = &v361[v175] < v361 || v177 > v362;
            v179 = v178 || &v361[v175] > v177;
            v180 = v176 + 1;
            v181 = !v179 && v176 >= a22;
            v182 = !v181 || v180 > a23;
            if (v182 || v176 > v180)
            {
              goto LABEL_457;
            }

            v184 = v361[v175];
            *v176 = v184;
            v185 = &v359[v175 * 2 + 16];
            if (&v359[v175 * 2 + 16] < &v359[16])
            {
              goto LABEL_457;
            }

            if (v185 + 2 > v360)
            {
              goto LABEL_457;
            }

            if (v185 > v185 + 2)
            {
              goto LABEL_457;
            }

            *&v359[v175 * 2 + 16] = v184;
            v186 = &v359[v175 * 2];
            if (&v359[v175 * 2] < v359)
            {
              goto LABEL_457;
            }

            if (v186 + 2 > &v359[8])
            {
              goto LABEL_457;
            }

            if (v186 > v186 + 2)
            {
              goto LABEL_457;
            }

            v187 = &a25[v175];
            if (&a25[v175] < a25 || (v187 + 1) > a26 || v187 > v187 + 1)
            {
              goto LABEL_457;
            }

            *v187 = *&v359[v175 * 2];
            ++v175;
            ++v176;
          }

          while (v174 != v175);
        }

        v188 = &v361[v174];
        if (v188 < v361)
        {
          goto LABEL_457;
        }

        if (v188 + 1 > v362)
        {
          goto LABEL_457;
        }

        if (v188 > v188 + 1)
        {
          goto LABEL_457;
        }

        v189 = &a22[v174];
        if (v189 < a22)
        {
          goto LABEL_457;
        }

        if ((v189 + 1) > a23)
        {
          goto LABEL_457;
        }

        if (v189 > v189 + 1)
        {
          goto LABEL_457;
        }

        v190 = v361[v174];
        *v189 = v190;
        v191 = &v359[2 * v174 + 16];
        if (v191 < &v359[16])
        {
          goto LABEL_457;
        }

        if (v191 + 2 > v360)
        {
          goto LABEL_457;
        }

        if (v191 > v191 + 2)
        {
          goto LABEL_457;
        }

        *&v359[2 * v174 + 16] = v190;
        v192 = &a25[v174];
        v193 = v192 - 1;
        if (v192 - 1 < a25 || v192 > a26 || v193 > v192)
        {
          goto LABEL_457;
        }

        *v193 = 15;
        v194 = v359;
      }

      else
      {
        v174 = v299;
        *a24 = v299 + 1;
        if (v174 > 0)
        {
          v218 = 0;
          v219 = a22;
          v144 = &v359[16];
          while (1)
          {
            v220 = &v363[v218 + 1];
            v221 = &v363[v218] < v363 || v220 > v364;
            v222 = v221 || &v363[v218] > v220;
            v223 = v219 + 1;
            v224 = !v222 && v219 >= a22;
            v225 = !v224 || v223 > a23;
            if (v225 || v219 > v223)
            {
              goto LABEL_457;
            }

            v227 = v363[v218];
            *v219 = v227;
            v228 = &v359[v218 * 2 + 16];
            if (&v359[v218 * 2 + 16] < &v359[16])
            {
              goto LABEL_457;
            }

            if (v228 + 2 > v360)
            {
              goto LABEL_457;
            }

            if (v228 > v228 + 2)
            {
              goto LABEL_457;
            }

            *&v359[v218 * 2 + 16] = v227;
            v229 = &v359[v218 * 2 + 8];
            if (&v359[v218 * 2 + 8] < &v359[8])
            {
              goto LABEL_457;
            }

            if (v229 + 2 > &v359[16])
            {
              goto LABEL_457;
            }

            if (v229 > v229 + 2)
            {
              goto LABEL_457;
            }

            v230 = &a25[v218];
            if (&a25[v218] < a25 || (v230 + 1) > a26 || v230 > v230 + 1)
            {
              goto LABEL_457;
            }

            *v230 = *&v359[v218 * 2 + 8];
            ++v218;
            ++v219;
            if (v174 == v218)
            {
              goto LABEL_370;
            }
          }
        }

        v144 = &v359[16];
LABEL_370:
        v244 = &v363[v174];
        if (v244 < v363 || v244 + 1 > v364 || v244 > v244 + 1 || (v245 = &a22[v174], v245 < a22) || (v245 + 1) > a23 || v245 > v245 + 1 || (v246 = v363[v174], *v245 = v246, v247 = &v359[2 * v174 + 16], v247 < &v359[16]) || v247 + 2 > v360 || v247 > v247 + 2 || (*&v359[2 * v174 + 16] = v246, v192 = &a25[v174], v248 = v192 - 1, v192 - 1 < a25) || v192 > a26 || v248 > v192)
        {
LABEL_457:
          __break(0x5519u);
        }

        *v248 = 15;
        v194 = &v359[8];
      }

      v249 = &v194[2 * v174];
      v250 = v249 - 2;
      if (v249 - 2 < v194 || v249 > v144 || v250 > v249 || (v192 + 1) > a26 || v192 > v192 + 1)
      {
        goto LABEL_457;
      }

      *v192 = *v250 - 15;
      if (v292 == 2)
      {
        LODWORD(v251) = *a24;
        if (v251 >= 1)
        {
          do
          {
            v252 = v251;
            v253 = v251 - 1;
            v254 = &a22[v253];
            v255 = v254 + 1;
            v256 = v254 < a22 || v255 > a23;
            v257 = v256 || v254 > v255;
            v258 = &a22[v252];
            v259 = v258 + 1;
            v260 = !v257 && v258 >= a22;
            v261 = !v260 || v259 > a23;
            if (v261 || v258 > v259)
            {
              goto LABEL_457;
            }

            *v258 = *v254;
            v251 = &a25[v253];
            v263 = v251 + 1;
            v264 = v251 < a25 || v263 > a26;
            v265 = v264 || v251 > v263;
            v266 = &a25[v252];
            v267 = v266 + 1;
            v268 = !v265 && v266 >= a25;
            v269 = !v268 || v267 > a26;
            if (v269 || v266 > v267)
            {
              goto LABEL_457;
            }

            *v266 = *v251;
            LOWORD(v251) = v252 - 1;
          }

          while (v252 > 1);
        }

        if ((a22 + 1) > a23)
        {
          goto LABEL_457;
        }

        if (a22 + 1 < a22)
        {
          goto LABEL_457;
        }

        *a22 = v113;
        if ((a25 + 1) > a26 || a25 + 1 < a25)
        {
          goto LABEL_457;
        }

        v158 = 0;
        *a25 = 1;
        ++*a24;
      }

      else
      {
        v158 = 0;
      }

      if (v112)
      {
        goto LABEL_200;
      }
    }
  }

  else
  {
    if (v291)
    {
      push_indice(v110, 15, v289 - 2, 1);
    }

    if (v292 == 2)
    {
      push_indice(v110, 15, v113, 1);
    }

    v143 = a12;
    if (a9 == 16000.0 && v289 == 2)
    {
      for (ii = 0; ii != 11; ++ii)
      {
        v166 = (v337 + ii * 2 + 2);
        v167 = (v337 + ii * 2 + 4);
        v168 = v167 > v339 || v166 > v167;
        v169 = &BC_TCVQ_BIT_ALLOC_40B[ii + 1];
        v170 = &BC_TCVQ_BIT_ALLOC_40B[ii + 2];
        if (v168 || v169 < BC_TCVQ_BIT_ALLOC_40B || v170 > CNG_SN1 || v169 > v170)
        {
          goto LABEL_457;
        }

        push_indice(a1, 16, *v166, *v169);
        v143 = a12;
      }

      v158 = 1;
      if (v112)
      {
        goto LABEL_200;
      }
    }

    else
    {
      LOWORD(v201) = v283 - (v292 == 2);
      if (v112)
      {
        v202 = v361;
      }

      else
      {
        v202 = v363;
      }

      if (v112)
      {
        v203 = &v359[8];
      }

      else
      {
        v203 = &v359[16];
      }

      if (v112)
      {
        v204 = v359;
      }

      else
      {
        v204 = &v359[8];
      }

      v205 = v202 + 7;
      v206 = &v299;
      if (v112)
      {
        v206 = &v298;
      }

      v207 = *v206;
      v208 = v207 - 1;
      if (v207 > 1)
      {
        v209 = 0;
        while (1)
        {
          v210 = &v202[v209];
          v211 = v210 + 1;
          v212 = v210 < v202 || v211 > v205;
          if (v212 || v210 > v211)
          {
            goto LABEL_457;
          }

          v214 = v209;
          v215 = &v359[2 * v209 + 16];
          if (v215 < &v359[16])
          {
            goto LABEL_457;
          }

          if (v215 + 2 > v360)
          {
            goto LABEL_457;
          }

          if (v215 > v215 + 2)
          {
            goto LABEL_457;
          }

          v216 = *v210;
          *&v359[2 * v214 + 16] = *v210;
          v217 = &v204[v214];
          if (v217 < v204 || v217 + 1 > v203 || v217 > v217 + 1)
          {
            goto LABEL_457;
          }

          LOWORD(v201) = v201 - *v217;
          push_indice(a1, 16, v216, *v217);
          v143 = a12;
          v209 = v214 + 1;
          if (v208 <= (v214 + 1))
          {
            goto LABEL_346;
          }
        }
      }

      v209 = 0;
LABEL_346:
      if (v201 >= 1)
      {
        do
        {
          v232 = v209;
          v233 = &v202[v209];
          v234 = v233 + 1;
          v235 = v233 < v202 || v234 > v205;
          v236 = v235 || v233 > v234;
          v237 = &v359[2 * v232 + 16];
          v238 = v237 + 2;
          v239 = !v236 && v237 >= &v359[16];
          v240 = !v239 || v238 > v360;
          if (v240 || v237 > v238)
          {
            goto LABEL_457;
          }

          v242 = *v233;
          *&v359[2 * v232 + 16] = *v233;
          if (v201 >= 0xFu)
          {
            v243 = 15;
          }

          else
          {
            v243 = v201;
          }

          v201 = (v201 - v243);
          push_indice(a1, 16, v242, v243);
          v143 = a12;
          v209 = v232 + 1;
        }

        while (v201 > 0);
      }

      v158 = 0;
      if (v112)
      {
        goto LABEL_200;
      }
    }
  }

  if (v158)
  {
    if (v143 < a11)
    {
      goto LABEL_457;
    }

    if (v143 - a11 <= 0x3F)
    {
      goto LABEL_457;
    }

    v271 = v342;
    v272 = v343;
    v273 = v345;
    *(a11 + 2) = v344;
    *(a11 + 3) = v273;
    *a11 = v271;
    *(a11 + 1) = v272;
    if (a11 + 16 < a11)
    {
      goto LABEL_457;
    }

    v162 = a5 - a4;
    if (a5 < a4 || v162 < 61)
    {
      goto LABEL_457;
    }

    v163 = &v342;
    v164 = &v354;
    goto LABEL_437;
  }

  v274 = &v350 + v299;
  v275 = (v274 - 1);
  if (v274 - 1 < &v350)
  {
    goto LABEL_457;
  }

  if (v274 > __B)
  {
    goto LABEL_457;
  }

  if (v275 > v274)
  {
    goto LABEL_457;
  }

  v162 = a5 - a4;
  if (a5 < a4)
  {
    goto LABEL_457;
  }

  if (v162 < 61)
  {
    goto LABEL_457;
  }

  v276 = v143;
  vq_dec_lvq(1, a4, &v359[16], v360, v299, v288, *v275, v111, a1 + 5468, a1 + 7532, a1 + 7532, a1 + 9596, a1 + 9596, a1 + 11932, a1 + 11932, a1 + 14268, a1 + 14268, a1 + 14780, a1 + 14780, a1 + 15360);
  MEMORY[0x19EAE5DC0](a4, 1, &v354, 1, a4, 1, 16);
  if (v276 < a11 || (v276 - a11) < 61)
  {
    goto LABEL_457;
  }

  v277 = 0;
  v197 = a4;
  do
  {
    a11[v277] = *(a4 + v277 * 4) - *(v353 + v277 * 4);
    ++v277;
  }

  while (v277 != 16);
LABEL_448:
  v_sort(v197, 0, 15, 16);
  result = reorder_lsf(v197, 70.0, a9);
  if (a7 < a6)
  {
    goto LABEL_457;
  }

  if (a5 < v197)
  {
    goto LABEL_457;
  }

  if (v162 < 0x40)
  {
    goto LABEL_457;
  }

  if (a7 - a6 <= 0x3F)
  {
    goto LABEL_457;
  }

  v278 = *v197;
  v279 = v197[1];
  v280 = v197[3];
  a6[2] = v197[2];
  a6[3] = v280;
  *a6 = v278;
  a6[1] = v279;
  if (a6 + 4 < a6)
  {
    goto LABEL_457;
  }

  return result;
}

unint64_t FEC_lsf_estim_enc(uint64_t a1, int a2, unint64_t a3, unint64_t a4)
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = &GEWB2_Ave;
  if (a2 == 256)
  {
    v4 = &UVWB_Ave;
  }

  v5 = v4[1];
  v19[0] = *v4;
  v19[1] = v5;
  v6 = v4[3];
  v19[2] = v4[2];
  v19[3] = v6;
  v7 = *(a1 + 18610);
  v8 = 1.0;
  if (v7 == 1)
  {
    goto LABEL_6;
  }

  if (v7 == 5)
  {
    goto LABEL_5;
  }

  v18 = *(a1 + 3536);
  if (v18 <= 2)
  {
    if (!*(a1 + 3536))
    {
      v8 = (*(a1 + 15360) * 0.2) + 0.8;
      goto LABEL_6;
    }

    if (v18 == 1)
    {
      v8 = 0.8;
      goto LABEL_6;
    }

    goto LABEL_32;
  }

  if (v18 - 3 < 2)
  {
    goto LABEL_6;
  }

  if (v18 == 5)
  {
    v8 = 0.6;
    goto LABEL_6;
  }

  if (v18 != 6)
  {
LABEL_32:
    v8 = 0.4;
    goto LABEL_6;
  }

LABEL_5:
  v8 = 0.995;
LABEL_6:
  v9 = 0;
  v10 = a1 + 5272;
  v11 = a1 + 23264;
  do
  {
    v12 = (a1 + 23260 + v9);
    if (v11 + v9 > (a1 + 23324) || v12 > v11 + v9)
    {
      goto LABEL_35;
    }

    v14 = (*v12 * 0.25) + (*(v19 + v9) * 0.75);
    *(v19 + v9) = v14;
    if (v10 + v9 > (a1 + 5332))
    {
      goto LABEL_35;
    }

    if (a1 + 5268 + v9 > (v10 + v9))
    {
      goto LABEL_35;
    }

    v15 = (a3 + v9);
    if (a3 + v9 < a3 || (v15 + 1) > a4 || v15 > v15 + 1)
    {
      goto LABEL_35;
    }

    *v15 = ((1.0 - v8) * v14) + (v8 * *(a1 + v9 + 5268));
    v9 += 4;
  }

  while (v9 != 64);
  if (a4 < a3 || (a4 - a3) < 61)
  {
LABEL_35:
    __break(0x5519u);
  }

  v16 = 12800.0;
  if (a2 != 256)
  {
    v16 = 16000.0;
  }

  return reorder_lsf(a3, 70.0, v16);
}

void *lsf_stab(void *result, void *a2, int a3)
{
  v3 = 0;
  if (a3)
  {
    v4 = 15;
  }

  else
  {
    v4 = 16;
  }

  v5 = 0.0;
  while (1)
  {
    v6 = (*result + 4 * v3);
    v7 = (v6 + 1) > result[1] || v6 > v6 + 1;
    if (v7 || v6 < result[2])
    {
      break;
    }

    v9 = (*a2 + 4 * v3);
    v10 = (v9 + 1) > a2[1] || v9 > v9 + 1;
    if (v10 || v9 < a2[2])
    {
      break;
    }

    v5 = v5 + ((*v6 - *v9) * (*v6 - *v9));
    if (v4 <= ++v3)
    {
      return result;
    }
  }

  __break(0x5519u);
  return result;
}

uint64_t midlsf_dec(uint64_t result, uint64_t a2, int a3, unint64_t a4, int a5, _WORD *a6, int a7, int a8)
{
  v8 = 0;
  v9 = &tbl_mid_gen_wb_5b;
  v10 = &min_distance_thr;
  if (a5 == 1)
  {
    v10 = &tbl_mid_gen_wb_5b;
    v9 = &tbl_mid_unv_wb_5b;
  }

  v11 = &v9[64 * a3];
  do
  {
    v12 = &v11[v8];
    v13 = &v11[v8 + 4];
    if (&v11[v8] < v9 || v13 > v10 || v12 > v13)
    {
      goto LABEL_57;
    }

    *(a4 + v8) = (*v12 * *(a2 + v8)) + ((1.0 - *v12) * *(result + v8));
    v8 += 4;
  }

  while (v8 != 64);
  if (!a6)
  {
    v22 = 0;
    for (i = a4; ; ++i)
    {
      if (v22)
      {
        if ((i - 1) < a4 || i - 1 > i)
        {
          goto LABEL_57;
        }

        v24 = *(i - 1) + 80.0;
        if (*i < v24)
        {
          *i = v24;
        }
      }

      if (++v22 == 16)
      {
        return result;
      }
    }
  }

  v16 = *a6;
  if (v16 == 1)
  {
    v17 = (a4 + 4);
    v18 = 14;
    while (v17 >= a4 && (v17 + 1) <= a4 + 64 && v17 <= v17 + 1 && v17 >= 4)
    {
      v19 = *(v17 - 1);
      v20 = *v17 < v19;
      if (*v17++ < v19 || v18-- == 0)
      {
        goto LABEL_34;
      }
    }

LABEL_57:
    __break(0x5519u);
    return result;
  }

  v20 = 0;
LABEL_34:
  v25 = a7 != 0;
  v26 = v16 == 1 && v20;
  if (a7 || v26)
  {
    v30 = 0;
    while (1)
    {
      v31 = (*(a2 + v30) * 0.6) + (*(result + v30) * 0.4);
      v32 = (a4 + v30);
      *(a4 + v30) = v31;
      if (v30)
      {
        v33 = v32 - 1;
        if ((v32 - 1) < a4 || v33 > v32)
        {
          goto LABEL_57;
        }

        v34 = *v33 + 80.0;
        if (v31 < v34)
        {
          *v32 = v34;
        }
      }

      v30 += 4;
      if (v30 == 64)
      {
        goto LABEL_54;
      }
    }
  }

  v27 = 0;
  v28 = a4;
  do
  {
    if (v27)
    {
      if ((v28 - 1) < a4 || v28 - 1 > v28)
      {
        goto LABEL_57;
      }

      v29 = *(v28 - 1) + 80.0;
      if (*v28 < v29)
      {
        *v28 = v29;
      }
    }

    ++v27;
    ++v28;
  }

  while (v27 != 16);
  v25 = 0;
LABEL_54:
  if (v25 || a8)
  {
    *a6 = a8 == 0;
  }

  return result;
}

unint64_t reorder_lsf(unint64_t result, float a2, float a3)
{
  v3 = 0;
  v4 = a2;
  do
  {
    v5 = *(result + v3);
    if (v5 < v4)
    {
      *(result + v3) = v4;
      v5 = v4;
    }

    v4 = v5 + a2;
    v3 += 4;
  }

  while (v3 != 64);
  v6 = (result + 60);
  if (result + 60 < result || v6 > result + 64)
  {
LABEL_21:
    __break(0x5519u);
    return result;
  }

  v7 = (a3 * 0.5) - a2;
  if (*v6 > v7)
  {
    v8 = 15;
    while (1)
    {
      v9 = (result + 4 * v8);
      v10 = (v9 + 1);
      v11 = v9 < result || v10 > result + 64;
      if (v11 || v9 >= v10)
      {
        break;
      }

      v13 = *v9;
      if (*v9 > v7)
      {
        *v9 = v7;
        v13 = v7;
      }

      v7 = v13 - a2;
      if (v8-- == 0)
      {
        return result;
      }
    }

    goto LABEL_21;
  }

  return result;
}

__int16 *Unified_weighting(uint64_t a1, float *a2, unint64_t a3, float *a4, unint64_t a5, int a6, int a7, int a8)
{
  v109 = a5;
  v113 = *MEMORY[0x1E69E9840];
  *&v15 = -1;
  *(&v15 + 1) = -1;
  v111[2] = v15;
  v111[3] = v15;
  v111[0] = v15;
  v111[1] = v15;
  memset(__b, 255, sizeof(__b));
  if (a6)
  {
    v16 = *a1;
    v17 = &lsf_unified_fit_model_nb;
  }

  else
  {
    v16 = *a1;
    if (a8 != 12800)
    {
      v23 = __b;
      if (v16 < *(a1 + 16))
      {
        goto LABEL_161;
      }

      v95 = *(a1 + 8);
      v30 = v95 >= v16;
      v96 = v95 - v16;
      if (!v30 || v96 <= 0x1FF)
      {
        goto LABEL_161;
      }

      v20 = v111;
      memmove(__b, v16, 0x200uLL);
      v97 = 0;
      for (i = 380; i != 508; i += 16)
      {
        *v97.i32 = (((*v97.i32 + COERCE_FLOAT(*&__b[i])) + COERCE_FLOAT(HIDWORD(*&__b[i]))) + COERCE_FLOAT(*&__b[i + 8])) + COERCE_FLOAT(HIDWORD(*&__b[i]));
      }

      v99 = 0;
      *v97.i32 = *v97.i32 * 0.03125;
      v100 = &__b[520];
      v101 = vdupq_n_s64(0x21uLL);
      v17 = &lsf_unified_fit_model_wbhb;
      v18 = v109;
      do
      {
        v102 = vdupq_n_s64(v99);
        v103 = vorrq_s8(v102, xmmword_19B0A5850);
        if (vuzp1_s16(vmovn_s64(vcgtq_u64(v101, v103)), v97).u8[0])
        {
          *(v100 - 3) = v97.i32[0];
        }

        if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x21uLL), v103)), v97).i8[2])
        {
          *(v100 - 2) = v97.i32[0];
        }

        if (vuzp1_s16(v97, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x21uLL), vorrq_s8(v102, xmmword_19B0A5840)))).i32[1])
        {
          *(v100 - 1) = v97.i32[0];
          *v100 = v97.i32[0];
        }

        v99 += 4;
        v100 += 4;
      }

      while (v99 != 36);
      v19 = __b;
      v21 = 159;
      v22 = 8000.0;
      goto LABEL_6;
    }

    v17 = &lsf_unified_fit_model_wb;
  }

  v18 = v109;
  v20 = *(a1 + 8);
  v19 = *(a1 + 16);
  v21 = 127;
  v22 = 6400.0;
  v23 = v16;
LABEL_6:
  v24 = 0;
  *&v25 = 0xAAAAAAAAAAAAAAAALL;
  *(&v25 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v112[2] = v25;
  v112[3] = v25;
  v112[0] = v25;
  v112[1] = v25;
  if (a7)
  {
    v26 = &w_spmus;
  }

  else
  {
    v26 = &Freq_Weight_UV;
  }

  if (a7)
  {
    v27 = &Freq_Weight_UV;
  }

  else
  {
    v27 = &Freq_Weight_Com;
  }

  v28 = &v23[4 * (v21 - 1)];
  v29 = v28 + 4 > v20 || v28 > v28 + 4;
  v104 = &v23[4 * (v21 - 1)];
  v30 = !v29 && v28 >= v19;
  v31 = v30;
  v105 = v31;
  v32 = (v23 + 4);
  v33 = v23 + 8 > v20 || v32 > (v23 + 8);
  v106 = (v23 + 4);
  v35 = !v33 && v32 >= v19;
  v107 = v35;
  v36 = 1000.0;
  v108 = a2;
  do
  {
    v37 = &a2[v24];
    v38 = &a2[v24 + 1];
    if (&a2[v24] < a2 || v38 > a3 || v37 > v38)
    {
      goto LABEL_161;
    }

    v41 = ((*v37 / 50.0) + 0.5);
    *(v112 + v24 * 4) = v41;
    if (!v41)
    {
      if (!v107)
      {
        goto LABEL_161;
      }

      v42 = v106;
      goto LABEL_44;
    }

    if (v21 == v41)
    {
      if (!v105)
      {
        goto LABEL_161;
      }

      v42 = v104;
LABEL_44:
      v43 = *v42;
      goto LABEL_74;
    }

    v44 = &v23[4 * v41];
    if (v44 + 1 > v20 || v44 > v44 + 1 || v44 < v19)
    {
      goto LABEL_161;
    }

    v47 = &v23[4 * v41];
    v48 = v47 - 1;
    v49 = v47 > v20 || v48 > v47;
    v50 = !v49 && v48 >= v19;
    v51 = v47 + 1;
    v52 = (v47 + 2);
    v53 = !v50 || v52 > v20;
    v54 = v53 || v51 > v52;
    if (v54 || v51 < v19)
    {
      goto LABEL_161;
    }

    v43 = *v51;
    v56 = *v44;
    if (*v44 <= *v48)
    {
      v56 = *v48;
    }

    if (v43 <= v56)
    {
      v43 = v56;
    }

LABEL_74:
    if (v43 >= 0.000001)
    {
      v58 = v23;
      v59 = v17;
      v60 = v19;
      v61 = a4;
      v62 = a3;
      v63 = v26;
      v64 = log10(v43);
      v26 = v63;
      a3 = v62;
      a4 = v61;
      a2 = v108;
      v18 = v109;
      v19 = v60;
      v17 = v59;
      v23 = v58;
      v57 = v64 * 10.0;
    }

    else
    {
      v57 = -60.0;
    }

    *(v111 + v24 * 4) = v57;
    if (v57 < v36)
    {
      v36 = v57;
    }

    ++v24;
  }

  while (v24 != 16);
  for (j = 0; j != 64; j += 4)
  {
    v66 = sqrt((*(v111 + j) - v36)) + 2.0;
    *(v111 + j) = v66;
    v67 = &v27[*(v112 + j)];
    if (v67 < v27)
    {
      goto LABEL_161;
    }

    if (v67 + 1 > v26 || v67 > v67 + 1)
    {
      goto LABEL_161;
    }

    *(v111 + j) = *v67 * v66;
  }

  v69 = a2 + 1;
  if ((a2 + 1) > a3 || v69 < a2 || (a2 + 2) > a3 || v69 > a2 + 2 || (a4 + 1) > v18 || a4 + 1 < a4)
  {
    goto LABEL_161;
  }

  *a4 = (1.0 / *a2) + (1.0 / (*v69 - *a2));
  v70 = 1;
  do
  {
    v71 = &a2[v70];
    v72 = v71 + 1;
    if (v71 < a2 || v72 > a3 || v71 > v72)
    {
      goto LABEL_161;
    }

    if (v71 - 1 < a2 || v71 - 1 > v71)
    {
      goto LABEL_161;
    }

    if ((v71 + 2) > a3)
    {
      goto LABEL_161;
    }

    if (v72 > v71 + 2)
    {
      goto LABEL_161;
    }

    v76 = &a4[v70];
    if (v76 < a4 || (v76 + 1) > v18 || v76 > v76 + 1)
    {
      goto LABEL_161;
    }

    *v76 = (1.0 / (*v71 - *(v71 - 1))) + (1.0 / (*v72 - *v71));
    v30 = v70++ >= 0xE;
  }

  while (!v30);
  v77 = (a2 + 15);
  if (a2 + 15 < a2 || (a2 + 16) > a3 || v77 > (a2 + 16) || v77 > a3 || (v78 = a4 + 15, a4 + 15 < a4) || (a4 + 16) > v18 || v78 > a4 + 16)
  {
LABEL_161:
    __break(0x5519u);
  }

  v79 = 0;
  *v78 = (1.0 / (v22 - a2[15])) + (1.0 / (a2[15] - a2[14]));
  v80 = (v17 + 16);
  v81 = (v17 + 32);
  v82 = (v17 + 48);
  do
  {
    v83 = &a4[v79];
    v84 = v83 + 1;
    if (v83 < a4 || v84 > v18 || v83 > v84)
    {
      goto LABEL_161;
    }

    v87 = v79;
    v88 = (v22 / 3.1416) * *v83;
    *v83 = v88;
    v89 = &v17[v79];
    if (v89 < v17)
    {
      goto LABEL_161;
    }

    if ((v89 + 1) > v80)
    {
      goto LABEL_161;
    }

    if (v89 > v89 + 1)
    {
      goto LABEL_161;
    }

    v90 = (v80 + 2 * v87);
    if (v90 < v80)
    {
      goto LABEL_161;
    }

    if ((v90 + 1) > v81)
    {
      goto LABEL_161;
    }

    if (v90 > v90 + 1)
    {
      goto LABEL_161;
    }

    result = (v81 + 2 * v87);
    if (result < v81)
    {
      goto LABEL_161;
    }

    if ((result + 1) > v82)
    {
      goto LABEL_161;
    }

    if (result > result + 1)
    {
      goto LABEL_161;
    }

    v92 = v111 + 4 * v87;
    if (v92 < v111)
    {
      goto LABEL_161;
    }

    if (v92 + 4 > v112)
    {
      goto LABEL_161;
    }

    if (v92 > v92 + 4)
    {
      goto LABEL_161;
    }

    v93 = (v82 + 2 * v87);
    if (v93 < v82 || v93 + 1 > v17 + 64 || v93 > v93 + 1)
    {
      goto LABEL_161;
    }

    v94 = ((vcvts_n_f32_s32(*v89, 0xAuLL) + (v88 * vcvts_n_f32_s32(*v90, 0xFuLL))) + ((v88 * v88) * vcvts_n_f32_s32(*result, 0x12uLL))) + (*(v111 + v87) * vcvts_n_f32_s32(*v93, 0xCuLL));
    v79 = v87 + 1;
    if (v94 < (1.0 / (v87 + 1)))
    {
      v94 = 1.0 / v79;
    }

    *v83 = v94;
    v79 = v79;
  }

  while (v87 < 0xF);
  return result;
}

float *index_lvq(float *result, unint64_t a2, int *a3, unint64_t a4, _DWORD *a5, unint64_t a6, int a7, uint32x2_t a8, uint32x2_t a9, uint64_t a10, _WORD *a11, unint64_t a12, void *a13, void *a14, void *a15)
{
  v15 = a5 + 1;
  if ((a5 + 1) <= a6 && v15 >= a5)
  {
    v22 = result;
    if ((*a5 & 0x80000000) != 0)
    {
      v27 = 0;
    }

    else
    {
      if ((a3 + 1) > a4)
      {
        goto LABEL_64;
      }

      if (a3 + 1 < a3)
      {
        goto LABEL_64;
      }

      result = encode_comb(result, a2, *a3);
      v23 = &table_no_cv[*a3];
      if (v23 < table_no_cv || v23 + 1 > pl_HQ || v23 > v23 + 1)
      {
        goto LABEL_64;
      }

      v24 = (*a13 + 4 * (*a5 + 4 * a7));
      v25 = (v24 + 1) > a13[1] || v24 > v24 + 1;
      if (v25 || v24 < a13[2])
      {
        goto LABEL_64;
      }

      v27 = *v23 + result + *v24;
    }

    if ((a5 + 2) <= a6 && v15 <= a5 + 2)
    {
      if ((*v15 & 0x80000000) != 0)
      {
        v31 = 0;
      }

      else
      {
        result = (v22 + 32);
        if (v22 + 32 < v22)
        {
          goto LABEL_64;
        }

        v28 = a3 + 1;
        if (a3 + 1 < a3)
        {
          goto LABEL_64;
        }

        if ((a3 + 2) > a4)
        {
          goto LABEL_64;
        }

        if (v28 > a3 + 2)
        {
          goto LABEL_64;
        }

        result = encode_comb(result, a2, *v28);
        v29 = &table_no_cv[*v28];
        if (v29 < table_no_cv)
        {
          goto LABEL_64;
        }

        if (v29 + 1 > pl_HQ)
        {
          goto LABEL_64;
        }

        if (v29 > v29 + 1)
        {
          goto LABEL_64;
        }

        v30 = (*a14 + 4 * (*v15 + 4 * a7));
        if ((v30 + 1) > a14[1] || v30 > v30 + 1 || v30 < a14[2])
        {
          goto LABEL_64;
        }

        v31 = *v29 + result + *v30;
      }

      v32 = (*a15 + 2 * ((2 * a7) | 1));
      if ((v32 + 1) <= a15[1] && v32 <= v32 + 1 && v32 >= a15[2])
      {
        v35 = (*a14 + 4 * (*v32 + 4 * a7));
        v36 = (v35 + 1) > a14[1] || v35 > v35 + 1;
        if (!v36 && v35 >= a14[2])
        {
          v38 = a11 + 1;
          if ((a11 + 1) <= a12 && v38 >= a11)
          {
            v39 = *v35;
            v40 = HIWORD(v39);
            v41 = HIWORD(v39) * v27 + v39 * HIWORD(v27) + ((v39 * v27) >> 16);
            v42 = (v39 * v27) | ((HIWORD(v39) * v27 + v39 * HIWORD(v27) + ((v39 * v27) >> 16)) << 16);
            v43 = v42 + v31;
            *a11 = v43 & 0x7FFF;
            v44 = a11 + 2;
            if ((a11 + 2) <= a12 && v38 <= v44)
            {
              a11[1] = (v43 >> 15) & 0x7FFF;
              v46 = a11 + 3;
              v47 = v44 < a11 || v46 > a12;
              if (!v47 && v44 <= v46)
              {
                a8.i32[0] = v43;
                a9.i32[0] = v42;
                *v44 = (__PAIR64__(vbsl_s8(vdup_lane_s32(vcgt_u32(a9, a8), 0), vdup_n_s32(v40 * HIWORD(v27) + HIWORD(v41) + 1), vdup_n_s32(v40 * HIWORD(v27) + HIWORD(v41))).u32[1], v43) >> 30) & 0x7FFF;
                return result;
              }
            }
          }
        }
      }
    }
  }

LABEL_64:
  __break(0x5519u);
  return result;
}

unint64_t v_sort(unint64_t result, int a2, int a3, int a4)
{
  if (a3 > a2)
  {
    LOWORD(v4) = a3 - 1;
    v5 = result + 4 * a4;
    LOWORD(v6) = a3;
    while (1)
    {
      v7 = v4;
      v8 = (result + 4 * v4);
      v9 = v8 + 1;
      v10 = v8 < result || v9 > v5;
      if (v10 || v8 >= v9)
      {
        break;
      }

      v12 = *v8;
      for (i = v6; v6 <= a3; i = i)
      {
        v14 = (result + 4 * i);
        v15 = v14 + 1;
        v16 = v14 < result || v15 > v5;
        if (v16 || v14 >= v15)
        {
          goto LABEL_27;
        }

        if (v12 <= *v14)
        {
          break;
        }

        v18 = v14 - 1;
        if ((v14 - 1) < result || v18 > v14)
        {
          goto LABEL_27;
        }

        *v18 = *v14;
        LOWORD(i) = v6 + 1;
        LODWORD(v6) = (v6 + 1);
      }

      v19 = result + 4 * i;
      v6 = (v19 - 4);
      if (v19 - 4 < result || v19 > v5 || v6 > v19)
      {
        break;
      }

      *v6 = v12;
      v4 = (v7 - 1);
      LOWORD(v6) = v7;
      if (v4 < a2)
      {
        return result;
      }
    }

LABEL_27:
    __break(0x5519u);
  }

  return result;
}

uint64_t find_pred_mode(uint64_t result, int a2, __int16 *a3, __int16 *a4, int a5, float a6)
{
  if (a2 >= 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = a2;
  }

  if (result == 3 && a2 > 0 && a5 > 9599)
  {
    v6 = 3;
  }

  if (a6 == 16000.0)
  {
    v6 = 2;
  }

  v9 = (&predmode_tab + 12 * v6);
  v10 = &v9[result];
  v11 = (v10 + 1);
  if (v10 < v9 || v11 > (v9 + 6) || v10 >= v11)
  {
    __break(0x5519u);
  }

  else
  {
    v14 = *v10;
    if (v6 > 2)
    {
      v15 = result + 6;
      *a3 = result + 6;
      if (v14 <= 0)
      {
        v15 = -1;
      }

      if (result == 3)
      {
        v15 = 18;
      }
    }

    else
    {
      v15 = result + 6 * v6;
      *a3 = v15;
      if (v14 <= 0)
      {
        v15 = -1;
      }
    }

    *a4 = v15;
    return v14;
  }

  return result;
}

uint64_t lsf_allocate(uint64_t result, int a2, int a3, _WORD *a4, __int16 *a5, __int16 **a6, __int16 **a7, void *a8, void *a9)
{
  if (a2 == 14)
  {
    return result;
  }

  v9 = &BitsVQ + 2 * a2;
  v10 = v9 + 2;
  if (v9 < &BitsVQ || v10 > CBbits || v9 > v10)
  {
    goto LABEL_129;
  }

  v13 = &CBbits[a2];
  if (v13 < CBbits || v13 + 1 > CBsizes || v13 > v13 + 1)
  {
    goto LABEL_129;
  }

  v14 = *v13;
  if (v14 < 0)
  {
    v32 = 0;
LABEL_48:
    *a4 = v32;
    goto LABEL_49;
  }

  v15 = *(&BitsVQ + a2);
  if (*v13)
  {
    v16 = &CBsizes[v14];
    if (v16 < CBsizes)
    {
      goto LABEL_129;
    }

    if (v16 + 1 > BitsVQ_p)
    {
      goto LABEL_129;
    }

    if (v16 > v16 + 1)
    {
      goto LABEL_129;
    }

    v17 = *a6;
    v18 = (*a6 + 1);
    if (v18 > a6[1])
    {
      goto LABEL_129;
    }

    if (v17 > v18)
    {
      goto LABEL_129;
    }

    v19 = a6[2];
    if (v17 < v19)
    {
      goto LABEL_129;
    }

    *v17 = *v16;
    v20 = *a8;
    v21 = *a8 + 2;
    if (v21 > a8[1])
    {
      goto LABEL_129;
    }

    if (v20 > v21)
    {
      goto LABEL_129;
    }

    v22 = a8[2];
    if (v20 < v22)
    {
      goto LABEL_129;
    }

    *v20 = v14;
    v23 = *a8 + 4;
    if (v23 > a8[1])
    {
      goto LABEL_129;
    }

    v24 = (*a8 + 2);
    if (v24 > v23)
    {
      goto LABEL_129;
    }

    if (v24 < v22)
    {
      goto LABEL_129;
    }

    v25 = v15 - v14;
    *v24 = v25;
    v26 = *a8 + 4;
    if (v26 > a8[1])
    {
      goto LABEL_129;
    }

    v27 = (*a8 + 2);
    if (v27 > v26 || v27 < v22)
    {
      goto LABEL_129;
    }

    if (*v27)
    {
      v28 = &CBsizes[v25];
      if (v28 < CBsizes)
      {
        goto LABEL_129;
      }

      if (v28 + 1 > BitsVQ_p)
      {
        goto LABEL_129;
      }

      if (v28 > v28 + 1)
      {
        goto LABEL_129;
      }

      v29 = (*a6 + 2);
      if (v29 > a6[1])
      {
        goto LABEL_129;
      }

      v30 = *a6 + 1;
      if (v30 > v29 || v30 < v19)
      {
        goto LABEL_129;
      }

      *v30 = *v28;
      v31 = 2;
    }

    else
    {
      v31 = 1;
    }
  }

  else
  {
    v31 = 0;
  }

  v33 = (result - v15);
  *a4 = v31;
  if (v33 >= 1)
  {
    v34 = (*a8 + 2 * v31);
    if ((v34 + 1) > a8[1])
    {
      goto LABEL_129;
    }

    if (v34 > v34 + 1)
    {
      goto LABEL_129;
    }

    if (v34 < a8[2])
    {
      goto LABEL_129;
    }

    *v34 = v33;
    v35 = &(*a6)[v31];
    if (v35 + 1 > a6[1] || v35 > v35 + 1 || v35 < a6[2])
    {
      goto LABEL_129;
    }

    *v35 = v33;
    v32 = v31 + 1;
    goto LABEL_48;
  }

LABEL_49:
  if (a3 < 0)
  {
    return result;
  }

  v36 = &BitsVQ_p[a3];
  if (v36 < BitsVQ_p)
  {
    goto LABEL_129;
  }

  if (v36 + 2 > CBbits_p)
  {
    goto LABEL_129;
  }

  if (v36 > v36 + 2)
  {
    goto LABEL_129;
  }

  v37 = &CBbits_p[a3];
  if (v37 < CBbits_p || v37 + 1 > predmode_tab || v37 > v37 + 1)
  {
    goto LABEL_129;
  }

  v38 = *v37;
  if (v38 < 0)
  {
    return result;
  }

  v39 = BitsVQ_p[a3];
  v40 = result - v39;
  if (!*v37)
  {
    *a5 = 1;
    v59 = *a9;
    v60 = *a9 + 2;
    if (v60 <= a9[1] && v59 <= v60 && v59 >= a9[2])
    {
      *v59 = v40;
      v61 = *a7;
      v62 = (*a7 + 1);
      if (v62 <= a7[1] && v61 <= v62 && v61 >= a7[2])
      {
        *v61 = v40;
        return result;
      }
    }

    goto LABEL_129;
  }

  v41 = &CBsizes[v38];
  v44 = v41 + 1 <= BitsVQ_p && v41 <= v41 + 1 && v41 >= CBsizes;
  if (a3 == 7)
  {
    if (v44)
    {
      v45 = 0;
      v46 = a7[2];
      while (1)
      {
        v47 = &(*a7)[v45];
        v48 = v47 + 1 > a7[1] || v47 > v47 + 1;
        if (v48 || v47 < v46)
        {
          break;
        }

        *v47 = *v41;
        v50 = a9[2];
        v51 = (*a9 + v45 * 2);
        v52 = (v51 + 1) > a9[1] || v51 > v51 + 1;
        if (v52 || v51 < v50)
        {
          break;
        }

        *v51 = v38;
        if (++v45 == 3)
        {
          v54 = *a9;
          if ((*a9 + 8) <= a9[1])
          {
            v55 = v54 + 3;
            if ((v54 + 3) <= *a9 + 8 && v55 >= v50)
            {
              *v55 = v40;
              v56 = (*a7 + 4);
              if (v56 <= a7[1])
              {
                v57 = *a7 + 3;
                if (v57 <= v56 && v57 >= v46)
                {
                  *v57 = v40;
                  v58 = 4;
                  goto LABEL_128;
                }
              }
            }
          }

          goto LABEL_129;
        }
      }
    }

    goto LABEL_129;
  }

  if (!v44)
  {
    goto LABEL_129;
  }

  v63 = *a7;
  v64 = (*a7 + 1);
  if (v64 > a7[1])
  {
    goto LABEL_129;
  }

  if (v63 > v64)
  {
    goto LABEL_129;
  }

  v65 = a7[2];
  if (v63 < v65)
  {
    goto LABEL_129;
  }

  *v63 = *v41;
  v66 = *a9;
  v67 = *a9 + 2;
  if (v67 > a9[1])
  {
    goto LABEL_129;
  }

  if (v66 > v67)
  {
    goto LABEL_129;
  }

  v68 = a9[2];
  if (v66 < v68)
  {
    goto LABEL_129;
  }

  *v66 = v38;
  v69 = (v39 - v38);
  if (v69 < 1)
  {
    v75 = 1;
  }

  else
  {
    v70 = &CBsizes[v69];
    if (v70 < CBsizes)
    {
      goto LABEL_129;
    }

    if (v70 + 1 > BitsVQ_p)
    {
      goto LABEL_129;
    }

    if (v70 > v70 + 1)
    {
      goto LABEL_129;
    }

    v71 = (*a7 + 2);
    if (v71 > a7[1])
    {
      goto LABEL_129;
    }

    v72 = *a7 + 1;
    if (v72 > v71)
    {
      goto LABEL_129;
    }

    if (v72 < v65)
    {
      goto LABEL_129;
    }

    *v72 = *v70;
    v73 = *a9 + 4;
    if (v73 > a9[1])
    {
      goto LABEL_129;
    }

    v74 = (*a9 + 2);
    if (v74 > v73 || v74 < v68)
    {
      goto LABEL_129;
    }

    *v74 = v69;
    v75 = 2;
  }

  v76 = &(*a7)[v75];
  if (v76 + 1 > a7[1] || v76 > v76 + 1 || v76 < v65 || (*v76 = v40, v77 = (*a9 + 2 * v75), (v77 + 1) > a9[1]) || v77 > v77 + 1 || v77 < v68)
  {
LABEL_129:
    __break(0x5519u);
    return result;
  }

  *v77 = v40;
  v58 = v75 + 1;
LABEL_128:
  *a5 = v58;
  return result;
}

float *vq_lvq_lsf_enc(int a1, int a2, __int128 *a3, unint64_t a4, unint64_t a5, unint64_t a6, int a7, uint64_t a8, const float *a9, unint64_t a10, unint64_t a11, unint64_t a12, unint64_t a13, unint64_t a14, __int128 *a15, unint64_t a16, __int128 *a17, __int128 *a18, void *a19, float *a20, unint64_t a21, _OWORD *a22, unint64_t a23)
{
  v328[1] = *MEMORY[0x1E69E9840];
  *&v25 = -1;
  *(&v25 + 1) = -1;
  v310[2] = v25;
  v310[3] = v25;
  v310[0] = v25;
  v310[1] = v25;
  v309[2] = v25;
  v309[3] = v25;
  v309[0] = v25;
  v309[1] = v25;
  v308[1] = 0xAAAAAAAAAAAAAAAALL;
  v308[0] = 0xAAAAAAAAAAAAAAAALL;
  v307[0] = v25;
  v307[1] = v25;
  v306[0] = v25;
  v306[1] = v25;
  v305[2] = v25;
  v305[3] = v25;
  v305[0] = v25;
  v305[1] = v25;
  v304[2] = v25;
  v304[3] = v25;
  v304[0] = v25;
  v304[1] = v25;
  v303[2] = v25;
  v303[3] = v25;
  v303[0] = v25;
  v303[1] = v25;
  v302[2] = v25;
  v302[3] = v25;
  v302[1] = v25;
  v301[3] = v25;
  v302[0] = v25;
  v301[1] = v25;
  v301[2] = v25;
  v301[0] = v25;
  v300 = -1;
  v294 = -1;
  v279 = a7 - 1;
  v26 = a2;
  memset(v299, 170, sizeof(v299));
  v298 = 0xAAAAAAAAAAAAAAAALL;
  if (a1)
  {
    v27 = &CB_p_lsf[a2];
    if (v27 < CB_p_lsf)
    {
      goto LABEL_311;
    }

    if (v27 + 2 > &offset_lvq_modes_pred)
    {
      goto LABEL_311;
    }

    if (v27 > v27 + 2)
    {
      goto LABEL_311;
    }

    v28 = &offset_lvq_modes_pred + 2 * a2;
    if (v28 < &offset_lvq_modes_pred)
    {
      goto LABEL_311;
    }

    if (v28 + 2 > offset_in_lvq_mode_pred)
    {
      goto LABEL_311;
    }

    if (v28 > v28 + 2)
    {
      goto LABEL_311;
    }

    v29 = (a5 + 2 * v279);
    if (v29 < a5)
    {
      goto LABEL_311;
    }

    if ((v29 + 1) > a6)
    {
      goto LABEL_311;
    }

    if (v29 > v29 + 1)
    {
      goto LABEL_311;
    }

    v30 = &min_lat_bits_pred[a2];
    if (v30 < min_lat_bits_pred)
    {
      goto LABEL_311;
    }

    if (v30 + 1 > &word_19B386482)
    {
      goto LABEL_311;
    }

    if (v30 > v30 + 1)
    {
      goto LABEL_311;
    }

    v31 = &offset_in_lvq_mode_pred[64 * a2];
    v32 = &v31[2 * (*v29 - *v30)];
    if (v32 < v31 || v32 + 2 > v31 + 64 || v32 > v32 + 2)
    {
      goto LABEL_311;
    }

    v278 = (&Quantizers_p + 2 * CB_p_lsf[a2]);
    v33 = *(&offset_lvq_modes_pred + a2);
    v276 = &Quantizers_p;
    v34 = &finegain;
  }

  else
  {
    v35 = &CB_lsf + 2 * a2;
    if (v35 < &CB_lsf)
    {
      goto LABEL_311;
    }

    if (v35 + 2 > &offset_lvq_modes_SN)
    {
      goto LABEL_311;
    }

    if (v35 > v35 + 2)
    {
      goto LABEL_311;
    }

    v36 = &offset_lvq_modes_SN + 2 * a2;
    if (v36 < &offset_lvq_modes_SN)
    {
      goto LABEL_311;
    }

    if (v36 + 2 > offset_in_lvq_mode_SN)
    {
      goto LABEL_311;
    }

    if (v36 > v36 + 2)
    {
      goto LABEL_311;
    }

    v37 = (a5 + 2 * v279);
    if (v37 < a5)
    {
      goto LABEL_311;
    }

    if ((v37 + 1) > a6)
    {
      goto LABEL_311;
    }

    if (v37 > v37 + 1)
    {
      goto LABEL_311;
    }

    v38 = &min_lat_bits_SN[a2];
    if (v38 < min_lat_bits_SN)
    {
      goto LABEL_311;
    }

    if (v38 + 1 > CB_p_lsf)
    {
      goto LABEL_311;
    }

    if (v38 > v38 + 1)
    {
      goto LABEL_311;
    }

    v39 = &offset_in_lvq_mode_SN[42 * a2];
    v32 = &v39[2 * (*v37 - *v38)];
    if (v32 < v39 || v32 + 2 > v39 + 42 || v32 > v32 + 2)
    {
      goto LABEL_311;
    }

    v278 = (&Quantizers + 2 * *(&CB_lsf + a2));
    v33 = *(&offset_lvq_modes_SN + a2);
    v276 = &Quantizers;
    v34 = &Quantizers_p;
  }

  v277 = v34;
  v41 = a9;
  v40 = a10;
  v42 = *v32;
  if (a7 >= 2)
  {
    if (v278 < v276)
    {
      goto LABEL_311;
    }

    v257 = *v32;
    v259 = v33;
    v261 = a1;
    v263 = a2;
    v296 = -1;
    *&v43 = -1;
    *(&v43 + 1) = -1;
    v327[6] = v43;
    v327[7] = v43;
    v327[4] = v43;
    v327[5] = v43;
    v327[2] = v43;
    v327[3] = v43;
    v327[0] = v43;
    v327[1] = v43;
    v325 = v43;
    v326 = v43;
    v323 = v43;
    v324 = v43;
    v321 = v43;
    v322 = v43;
    v319 = v43;
    v320 = v43;
    v315 = v43;
    v316 = v43;
    v313 = v43;
    v314 = v43;
    *&v43 = 0xAAAAAAAAAAAAAAAALL;
    *(&v43 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v318 = -1;
    __C = -1;
    v295 = -1431655766;
    v255 = 2 * v279;
    v44 = &v311 + v255;
    v311 = v43;
    v312 = v43;
    if (v44 < &v311)
    {
      goto LABEL_311;
    }

    if ((4 * v279) >= 1)
    {
      v45 = (4 * v279);
      v46 = &v311;
      do
      {
        v47 = (v46 + 2);
        if (v46 < &v311 || v47 > &v313 || v46 > v47)
        {
          goto LABEL_311;
        }

        *v46 = 0;
        v46 = (v46 + 2);
        --v45;
      }

      while (v45);
    }

    v50 = 0;
    v51 = &v318;
    v52 = v327;
    v295 = 0;
    v53 = 0.0;
    do
    {
      v54 = (a3 + v50 * 4);
      v55 = a3 + v50 * 4 + 4;
      v57 = (a3 + v50 * 4) < a3 || v55 > a4 || v54 > v55;
      v58 = &a9[v50];
      v59 = &a9[v50 + 1];
      if (v57 || v58 < a9 || v59 > a10 || v58 > v59)
      {
        goto LABEL_311;
      }

      v53 = v53 + ((*v54 * *v54) * *v58);
      ++v50;
    }

    while (v50 != 16);
    __A = v53;
    vDSP_vfill(&__A, &v318, 1, 2uLL);
    if (a4 < a3 || a4 - a3 < 0x40)
    {
      goto LABEL_311;
    }

    v63 = 1;
    v64 = v327;
    do
    {
      if (v64 > v328)
      {
        goto LABEL_311;
      }

      v65 = v63;
      v63 = 0;
      v66 = *a3;
      v67 = a3[1];
      v68 = a3[3];
      v64[2] = a3[2];
      v64[3] = v68;
      *v64 = v66;
      v64[1] = v67;
      v64 += 4;
    }

    while ((v65 & 1) != 0);
    v69 = 0;
    v70 = 0;
    v71 = 0;
    v72 = &v313 + 1;
    v273 = &v319;
    v275 = &v311;
    v73 = 1;
    v74 = 8;
    p_C = &__C;
    do
    {
      v269 = v74;
      v270 = v71;
      v76 = v275;
      v275 = v44;
      v77 = &v278[2 * v69];
      v78 = v77 + 2;
      if (v77 < v278 || v78 > v277 || v77 > v78)
      {
        goto LABEL_311;
      }

      v81 = v52;
      v83 = *v77;
      v82 = v77[1];
      __A = 9.9e11;
      v287 = v76;
      v289 = v69;
      v281 = p_C;
      v283 = v73;
      v84 = v70;
      vDSP_vfill(&__A, p_C, 1, 2uLL);
      v86 = v281;
      v85 = v283;
      v87 = v287;
      v88 = v289;
      v89 = a10;
      v90 = a9;
      v272 = (a5 + 2 * v289);
      if (v272 < a5 || (v272 + 1) > a6 || v272 > v272 + 1)
      {
        goto LABEL_311;
      }

      v70 = v84;
      if (*v272 >= 1)
      {
        v91 = 0;
        v92 = 0;
        v93 = v83;
        do
        {
          for (i = 0; i != 16; ++i)
          {
            v95 = &v90[i];
            v96 = &v90[i + 1];
            v98 = &v90[i] < v90 || v96 > v89 || v95 > v96;
            v99 = &v93[i];
            v100 = &v93[i + 1];
            if (v98 || v100 > v82 || v99 > v100 || v99 < v83)
            {
              goto LABEL_311;
            }

            *(&v313 + i * 4) = *v95 * *v99;
          }

          if ((v93 + 1) > v82 || v93 > v93 + 1 || v93 < v83)
          {
            goto LABEL_311;
          }

          v104 = 0;
          v105 = *&v313;
          v106 = *v93 * *&v313;
          do
          {
            v107 = &v93[v104 + 1];
            v108 = &v93[v104 + 2];
            if (v108 > v82 || v107 > v108 || v107 < v83)
            {
              goto LABEL_311;
            }

            v106 = v106 + (*v107 * v72[v104++]);
          }

          while (v104 != 15);
          v111 = 0;
          v112 = 0;
          v93 += 16;
          v285 = v93;
          do
          {
            v113 = &v81[16 * v111];
            v114 = v113 + 1;
            if (v113 < v81 || v114 > v328 || v113 > v114)
            {
              goto LABEL_311;
            }

            v117 = &v81[16 * v112 + 1];
            v118 = v105 * *v113;
            v119 = v72;
            v120 = 15;
            do
            {
              if (v117 < v81 || v117 + 1 > v328 || v117 > v117 + 1)
              {
                goto LABEL_311;
              }

              v121 = *v117++;
              v122 = v121;
              v123 = *v119++;
              v118 = v118 + (v122 * v123);
              --v120;
            }

            while (v120);
            v124 = v51 + v112;
            if (v124 < v51)
            {
              goto LABEL_311;
            }

            if (v124 + 1 > &v319)
            {
              goto LABEL_311;
            }

            if (v124 > v124 + 1)
            {
              goto LABEL_311;
            }

            v125 = &v86[v91];
            if (v125 < v86 || v125 + 1 > &v319 || v125 > v125 + 1)
            {
              goto LABEL_311;
            }

            v126 = (v106 + (v118 * -2.0)) + *v124;
            if (v126 <= *v125)
            {
              *v125 = v126;
              v127 = &v87[(v88 + v279 * v91)];
              if (v127 < v87)
              {
                goto LABEL_311;
              }

              if (v127 + 1 > &v313)
              {
                goto LABEL_311;
              }

              if (v127 > v127 + 1)
              {
                goto LABEL_311;
              }

              *v127 = v92;
              v128 = (&v295 + 2 * v91);
              if (v128 < &v295 || (v128 + 2) > &v296 || v128 > (v128 + 2))
              {
                goto LABEL_311;
              }

              *v128 = v112;
              if (v70 <= 2999)
              {
                v129 = v82;
                v130 = v51;
                v131 = v72;
                v132 = v92;
                if (v70 == 2999)
                {
                  v91 = minimum(v86, 2, &v296);
                  v86 = v281;
                  v70 = 3000;
                }

                else
                {
                  v133 = (v70 + 1);
                  v91 = maximum(v86, 2, &v296);
                  v86 = v281;
                  v70 = v133;
                }

                v89 = a10;
                v90 = a9;
                v87 = v287;
                v88 = v289;
                v85 = v283;
                v92 = v132;
                v72 = v131;
                v51 = v130;
                v82 = v129;
                v93 = v285;
              }
            }

            v111 = ++v112;
          }

          while (v85 > v112);
          v92 = (v92 + 1);
        }

        while (v92 < *v272);
      }

      v134 = 0;
      v135 = v88;
      v136 = &v295;
      v137 = 1;
      do
      {
        v138 = v137;
        v139 = &v273[64 * v134];
        v140 = *v136;
        v141 = &v81[16 * v140];
        if (v141 < v81 || v139 < v273)
        {
          goto LABEL_311;
        }

        v143 = v328 - v139;
        if (v328 < v139)
        {
          goto LABEL_311;
        }

        if (v141 > v328)
        {
          goto LABEL_311;
        }

        if ((v328 - v141) < 0x40)
        {
          goto LABEL_311;
        }

        if (v143 <= 0x3F)
        {
          goto LABEL_311;
        }

        v144 = *v141;
        v145 = *(v141 + 1);
        v146 = *(v141 + 3);
        *(v139 + 2) = *(v141 + 2);
        *(v139 + 3) = v146;
        *v139 = v144;
        *(v139 + 1) = v145;
        if (v139 + 64 < v139)
        {
          goto LABEL_311;
        }

        v147 = v134 * v279;
        v148 = &v87[v147 + v88];
        if (v148 < v87)
        {
          goto LABEL_311;
        }

        v149 = v148 + 1 > &v313 || v148 > v148 + 1;
        if (v149 || v143 < 61)
        {
          goto LABEL_311;
        }

        v150 = &v83[16 * *v148];
        if (v150 > v82 || v83 > v150)
        {
          goto LABEL_311;
        }

        if ((v82 - v150) < 61)
        {
          goto LABEL_311;
        }

        for (j = 0; j != 64; j += 4)
        {
          *&v139[j] = *&v139[j] - *(v150 + j);
        }

        v153 = &v275[v279 * v140];
        v154 = &v87[v147];
        if (v153 < v275 || v154 < v87)
        {
          goto LABEL_311;
        }

        v156 = v70;
        mvs2s(v153, &v313, v154, &v313, v135);
        v87 = v287;
        v88 = v289;
        v70 = v156;
        v137 = 0;
        v136 = (&v295 + 2);
        v134 = 1;
      }

      while ((v138 & 1) != 0);
      v69 = v289 + 1;
      v71 = v269;
      v74 = v270;
      v51 = (&__C + v270);
      p_C = (&__C + v269);
      v73 = 2;
      v44 = v287;
      v52 = v273;
      v273 = v81;
    }

    while (v289 + 1 != v279);
    mvs2s(v287, &v313, v308, v309, v255);
    v40 = a10;
    v41 = a9;
    v26 = v263;
    a1 = v261;
    v33 = v259;
    v42 = v257;
  }

  v158 = a14 >= a13 && (a14 - a13) > 60;
  v268 = v158;
  v160 = v40 >= v41 && (v40 - v41) > 60;
  v253 = v160;
  v161 = &sigma_MSLVQ;
  if (a1)
  {
    v161 = &sigma_p;
  }

  v162 = &inv_sigma_MSLVQ;
  if (a1)
  {
    v162 = &inv_sigma_p;
  }

  v163 = &no_lead_p;
  if (!a1)
  {
    v163 = &no_lead;
  }

  v164 = &scales_p;
  if (!a1)
  {
    v164 = &scales;
  }

  if (a16 < a15 || a16 - a15 < 0x40)
  {
LABEL_311:
    __break(0x5519u);
  }

  v280 = 0;
  v165 = a12;
  v166 = v42 + v33;
  v266 = v166;
  v167 = v161 + 64 * v26;
  v168 = v162 + 64 * v26;
  v248 = v166;
  v169 = v164 + 24 * v166;
  v170 = v167 + 64;
  v292 = v168 + 64;
  v293 = v169 + 24;
  v171 = &v163[6 * v166];
  v262 = v168;
  v264 = v167;
  v251 = v168 + 32;
  v252 = v167 + 32;
  v172 = v167 + 32 >= v167 && v168 + 32 >= v168;
  v258 = v171;
  v260 = v169;
  v249 = (v171 + 12);
  v250 = (v169 + 12);
  v174 = v172 && v169 + 12 >= v169 && v171 + 12 >= v171;
  v291 = v171 + 24;
  v175 = (v41 + 8);
  v176 = !v174;
  v256 = v176;
  v177 = v309;
  v178 = v304;
  v179 = v301;
  v180 = &v300;
  v181 = &v299[1];
  v182 = &v298;
  v183 = 1;
  v254 = v170;
  do
  {
    v284 = v182;
    v286 = v181;
    v288 = v179;
    v290 = v178;
    v282 = v183;
    v184 = *a15;
    v185 = a15[1];
    v186 = a15[3];
    v177[2] = a15[2];
    v177[3] = v186;
    *v177 = v184;
    v177[1] = v185;
    if (a7 > 1)
    {
      v187 = 0;
      v188 = 0;
      do
      {
        v189 = v308 + v187 + v279 * v280;
        v190 = v189 + 1;
        v192 = v189 < v308 || v190 > v309 || v189 > v190;
        v193 = (a11 + 2 * v188);
        v194 = v193 + 1;
        if (v192 || v193 < a11 || v194 > v165 || v193 > v194)
        {
          goto LABEL_311;
        }

        *v193 = *v189;
        v187 = ++v188;
      }

      while (v279 > v188);
      v198 = 0;
      do
      {
        v199 = v198;
        v200 = &v278[2 * v198];
        v201 = v200 + 2;
        v202 = v200 < v276 || v201 > v277;
        v203 = v202 || v200 > v201;
        v204 = (a11 + 2 * v199);
        v205 = v204 + 1;
        v206 = !v203 && v204 >= a11;
        v207 = !v206 || v205 > v165;
        if (v207 || v204 > v205)
        {
          goto LABEL_311;
        }

        v209 = v200[1];
        v210 = *v200 + (*v204 << 6);
        v211 = v209 < v210 || *v200 > v210;
        if (v211 || (v209 - v210) < 61)
        {
          goto LABEL_311;
        }

        MEMORY[0x19EAE5DC0](v177, 1);
        v198 = v199 + 1;
      }

      while (v279 > (v199 + 1));
    }

    if (!v268)
    {
      goto LABEL_311;
    }

    for (k = 0; k != 64; k += 4)
    {
      *(v306 + k) = *(a13 + k) - *(v177 + k);
    }

    v213 = (*a19 + 4 * v266);
    v274 = v213 + 1;
    if (v213 + 1 > v213 + 2 || v213 > v213 + 1)
    {
      goto LABEL_311;
    }

    quantize_data(v306, v308, a9, a10, v290, (v290 + 16), v288, (v288 + 16), v286, (v286 + 2), v284, (v284 + 2), v264, v170, v262, v292, v260, v293, *v213, v258, v291);
    if ((v175 < a9) | v256 & 1)
    {
      goto LABEL_311;
    }

    quantize_data(v307, v308, v175, a10, v290 + 8, (v290 + 16), v288 + 8, (v288 + 16), v286 + 1, (v286 + 2), v284 + 1, (v284 + 2), v252, v254, v251, v292, v250, v293, *v274, v249, v291);
    MEMORY[0x19EAE5DC0](v177, 1, v290, 1, v177, 1, 16);
    v_sort(v177, 0, 15, 16);
    v215 = 0;
    v170 = v254;
    do
    {
      *(v303 + v215) = *(v177 + v215) - *(a13 + v215);
      v215 += 4;
    }

    while (v215 != 64);
    v216 = 0;
    v165 = a12;
    do
    {
      v303[v216] = vmulq_f32(v303[v216], v303[v216]);
      ++v216;
    }

    while (v216 != 4);
    if (!v253)
    {
      goto LABEL_311;
    }

    LODWORD(v319) = -1;
    v280 = 1;
    vDSP_dotpr(v303, 1, a9, 1, &v319, 0x10uLL);
    v183 = 0;
    v182 = v299;
    v181 = &v299[2];
    *v180 = v319;
    v180 = (&v300 + 4);
    v179 = v302;
    v178 = v305;
    v177 = v310;
  }

  while ((v282 & 1) != 0);
  v217 = minimum(&v300, 2, &v294);
  LODWORD(v319) = 0;
  v218 = a20;
  vDSP_vfill(&v319, a20, 1, 0x10uLL);
  if (a7 <= 1)
  {
    v237 = a21;
    v236 = (a21 - a20) > 60;
  }

  else
  {
    v219 = 0;
    v220 = 0;
    v222 = a21 >= a20 && (a21 - a20) > 60;
    do
    {
      v223 = v308 + v219 + v279 * v217;
      v224 = v223 + 1;
      if (v223 < v308 || v224 > v309 || v223 > v224)
      {
        goto LABEL_311;
      }

      v227 = (a11 + 2 * v220);
      if (v227 < a11)
      {
        goto LABEL_311;
      }

      if ((v227 + 1) > a12)
      {
        goto LABEL_311;
      }

      if (v227 > v227 + 1)
      {
        goto LABEL_311;
      }

      v228 = *v223;
      *v227 = v228;
      v229 = &v278[2 * v220];
      if (v229 < v276 || (v229 + 2) > v277 || v229 > v229 + 2)
      {
        goto LABEL_311;
      }

      v231 = *v229;
      v230 = v229[1];
      v232 = v231 + (v228 << 6);
      v233 = v230 - v232;
      v234 = v230 < v232 || v231 > v232;
      v235 = !v234;
      if (!v222 || !v235 || v233 < 61)
      {
        goto LABEL_311;
      }

      v236 = 1;
      MEMORY[0x19EAE5DC0]();
      v219 = ++v220;
    }

    while (v279 > v220);
    v237 = a21;
    v218 = a20;
  }

  if (v237 < v218)
  {
    goto LABEL_311;
  }

  if (!v236)
  {
    goto LABEL_311;
  }

  MEMORY[0x19EAE5DC0](a20, 1, &v304[4 * v217], 1, a20, 1, 16);
  if (a23 < a22)
  {
    goto LABEL_311;
  }

  if (a23 - a22 <= 0x3F)
  {
    goto LABEL_311;
  }

  v239 = &v309[4 * v217];
  v240 = *v239;
  v241 = v239[1];
  v242 = v239[3];
  a22[2] = v239[2];
  a22[3] = v242;
  *a22 = v240;
  a22[1] = v241;
  if (a22 + 4 < a22)
  {
    goto LABEL_311;
  }

  if (a11 + 2 * v279 < a11)
  {
    goto LABEL_311;
  }

  v243 = *(a17 + 2);
  v319 = *a17;
  *&v320 = v243;
  v244 = *(a18 + 2);
  v313 = *a18;
  *&v314 = v244;
  v245 = a19[2];
  v311 = *a19;
  *&v312 = v245;
  result = index_lvq(&v301[4 * v217], &v301[4 * v217 + 4], &v299[v217 + 1], &v299[v217 + 2], &v299[v217 - 1], &v299[v217], v248, *&v311, *&v241, v238, (a11 + 2 * v279), a12, &v319, &v313, &v311);
  v247 = &v300 + 4 * v217;
  if (v247 < &v300 || v247 + 4 > v301 || v247 > v247 + 4)
  {
    goto LABEL_311;
  }

  return result;
}