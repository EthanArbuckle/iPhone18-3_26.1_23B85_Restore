unint64_t hq2_bit_alloc(unint64_t result, unint64_t a2, int a3, int *a4, unint64_t a5, _WORD *a6, unsigned __int16 *a7, unint64_t a8, __int16 a9, unint64_t a10, unint64_t a11, __int16 a12, __int16 a13, __int16 a14, __int16 a15)
{
  v15 = a5;
  *v185 = *MEMORY[0x1E69E9840];
  *&v17 = 0xAAAAAAAAAAAAAAAALL;
  *(&v17 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v184[6] = v17;
  v184[7] = v17;
  v184[4] = v17;
  v184[5] = v17;
  v184[2] = v17;
  v184[3] = v17;
  v184[0] = v17;
  v184[1] = v17;
  if (a3 >= 1)
  {
    v18 = a3;
    v19 = result;
    v20 = v184;
    do
    {
      if (v19 < result || (v19 + 1) > a2 || v19 > v19 + 1 || v20 < v184 || v20 + 1 > v185 || v20 > v20 + 1)
      {
        goto LABEL_381;
      }

      v21 = *v19++;
      *v20++ = vcvts_n_s32_f32(v21, 0xEuLL);
      --v18;
    }

    while (v18);
  }

  if (a12 >= -32440)
  {
    if ((a12 - 328) >= 1)
    {
      if (a3 < 1)
      {
        return result;
      }

      v23 = a3;
      v24 = a7;
      v25 = a4;
      do
      {
        if (v24 < a7 || (v24 + 1) > a8 || v24 > v24 + 1 || v25 < a4 || (v25 + 1) > a5 || v25 > v25 + 1)
        {
          goto LABEL_381;
        }

        v26 = *v24++;
        *v25++ = v26 << 16;
        --v23;
      }

      while (v23);
      v22 = 0;
      v27 = a3;
LABEL_54:
      if (v27 < 1)
      {
        return result;
      }

      goto LABEL_55;
    }

    v22 = 0;
  }

  else
  {
    v22 = 1;
  }

  if (a5 < a4 || a3 < 0 || (a5 - a4) >> 2 < a3)
  {
    goto LABEL_381;
  }

  v27 = a3;
  result = set_val_Word32(a4, 0x10000, a3);
  if (!a15 || a3 != 32)
  {
    goto LABEL_54;
  }

  if (a4 + 6 < a4)
  {
    goto LABEL_381;
  }

  v28 = (a4 + 7);
  if ((a4 + 7) > v15)
  {
    goto LABEL_381;
  }

  if ((a4 + 6) > v28)
  {
    goto LABEL_381;
  }

  a4[6] = 0;
  if (v28 < a4)
  {
    goto LABEL_381;
  }

  if ((a4 + 8) > v15)
  {
    goto LABEL_381;
  }

  if (v28 > (a4 + 8))
  {
    goto LABEL_381;
  }

  a4[7] = 0;
  if (a4 + 14 < a4)
  {
    goto LABEL_381;
  }

  v29 = (a4 + 15);
  if ((a4 + 15) > v15)
  {
    goto LABEL_381;
  }

  if ((a4 + 14) > v29)
  {
    goto LABEL_381;
  }

  a4[14] = 0;
  if (v29 < a4)
  {
    goto LABEL_381;
  }

  if ((a4 + 16) > v15)
  {
    goto LABEL_381;
  }

  if (v29 > (a4 + 16))
  {
    goto LABEL_381;
  }

  a4[15] = 0;
  if (a4 + 22 < a4)
  {
    goto LABEL_381;
  }

  v30 = (a4 + 23);
  if ((a4 + 23) > v15)
  {
    goto LABEL_381;
  }

  if ((a4 + 22) > v30)
  {
    goto LABEL_381;
  }

  a4[22] = 0;
  if (v30 < a4)
  {
    goto LABEL_381;
  }

  if ((a4 + 24) > v15)
  {
    goto LABEL_381;
  }

  if (v30 > (a4 + 24))
  {
    goto LABEL_381;
  }

  a4[23] = 0;
  if (a4 + 30 < a4)
  {
    goto LABEL_381;
  }

  v31 = a4 + 31;
  if ((a4 + 31) > v15)
  {
    goto LABEL_381;
  }

  if (a4 + 30 > v31)
  {
    goto LABEL_381;
  }

  a4[30] = 0;
  if (v31 < a4 || (a4 + 32) > v15 || v31 > a4 + 32)
  {
    goto LABEL_381;
  }

  *v31 = 0;
  LOWORD(v27) = a3;
LABEL_55:
  LOWORD(v177) = 0;
  v32 = 0;
  v179 = v27;
  if (a13)
  {
    v33 = 0;
  }

  else
  {
    v33 = a12 < 328;
  }

  v34 = v33;
  v172 = v34;
  v173 = &a7[a3];
  while (2)
  {
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v176 = v32;
    v38 = v179;
    do
    {
      v39 = &a4[v35];
      v40 = &a4[v35 + 1];
      if (&a4[v35] < a4 || v40 > v15 || v39 > v40)
      {
        goto LABEL_381;
      }

      if (*v39 >= 1)
      {
        v43 = (v184 + v35 * 4);
        if ((v184 + v35 * 4) < v184 || v43 + 1 > v185 || v43 > v43 + 1)
        {
          goto LABEL_381;
        }

        v44 = *v43;
        v45 = v44 - 0x20000000;
        v46 = 4 * v44;
        v47 = (v44 >> 31) ^ 0x7FFFFFFF;
        if (v45 >> 30 == 3)
        {
          v47 = v46;
        }

        v48 = v47 + v36;
        v49 = (v47 ^ v36) < 0;
        v50 = (v47 + v36) ^ v36;
        v52 = v49 || v50 >= 0;
        v53 = v52 == 0;
        if (v52)
        {
          v54 = v22;
        }

        else
        {
          v54 = 1;
        }

        if (v53)
        {
          v36 = (v36 >> 31) ^ 0x7FFFFFFF;
        }

        else
        {
          v36 = v48;
        }

        if (v37 == 0x7FFF)
        {
          v22 = 1;
        }

        else
        {
          v22 = v54;
        }

        if (v37 == 0x7FFF)
        {
          v37 = 0x7FFF;
        }

        else
        {
          ++v37;
        }
      }

      ++v35;
      --v38;
    }

    while (v38);
    v183 = v22;
    if (!v36)
    {
      goto LABEL_103;
    }

    if (v36 == -1)
    {
      v55 = 30;
      goto LABEL_104;
    }

    v56 = v36 ^ (v36 >> 31);
    if (v56 <= 0x3FFFFFFF)
    {
      v57 = 0;
      do
      {
        v55 = v57;
        v58 = v56 >> 29;
        v56 *= 2;
        ++v57;
      }

      while (!v58);
      if (v57 == 0x8000)
      {
        v183 = 1;
        v55 = 0x8000;
      }
    }

    else
    {
LABEL_103:
      v55 = -1;
    }

LABEL_104:
    v59 = v37;
    if (v37)
    {
      if (v37 == 0xFFFF)
      {
        v37 = 15;
      }

      else
      {
        v60 = (v37 ^ (v59 >> 15));
        if (v60 >= 0x4000)
        {
          v37 = 0;
        }

        else
        {
          v37 = 0;
          do
          {
            v60 = (2 * v60);
            ++v37;
          }

          while (v60 < 0x4000);
        }
      }
    }

    v61 = v37;
    v62 = shl(v59, v37, &v183);
    if (v62 <= 1)
    {
      v63 = 1;
    }

    else
    {
      v63 = v62;
    }

    if (v36 < 1)
    {
      if (v36 >= 0)
      {
        v66 = v36;
      }

      else
      {
        v66 = -v36;
      }

      if (v36 == 0x80000000)
      {
        v67 = 0x7FFFFFFF;
      }

      else
      {
        v67 = v66;
      }

      v68 = L_shl(v67, v55);
      v69 = div_l(v68, v63, &v183);
      if (v69 == -32768)
      {
        LOWORD(v65) = 0x7FFF;
      }

      else
      {
        v65 = -v69;
      }
    }

    else
    {
      v64 = L_shl(v36, v55);
      LOWORD(v65) = div_l(v64, v63, &v183);
    }

    if (v55 < 32752)
    {
      v70 = (v55 + 16);
    }

    else
    {
      v183 = 1;
      v70 = 0x7FFF;
    }

    v71 = v70 - v37;
    if (v71 < 0x8000)
    {
      if (v71 < -32768 || v71 == 0x8000)
      {
        v65 = v65;
      }

      else
      {
        v73 = (v71 - 1);
        v65 = v65;
        if (v73 > -32753)
        {
          v72 = v73 - 16;
          goto LABEL_137;
        }
      }

      v183 = 1;
      v72 = 0x8000;
      goto LABEL_137;
    }

    v183 = 1;
    v65 = v65;
    v72 = 32750;
LABEL_137:
    v74 = L_shr(v65, v72);
    v75 = *a6;
    v76 = v75;
    if (!*a6)
    {
      goto LABEL_145;
    }

    if (v75 == 0xFFFF)
    {
      v77 = 14;
      goto LABEL_146;
    }

    v78 = v76 ^ (v76 >> 15);
    if (v78 < 0x4000)
    {
      v79 = 0;
      do
      {
        v77 = v79;
        v78 = (2 * v78);
        ++v79;
      }

      while (v78 < 0x4000);
      if (v79 == 0x8000)
      {
        v183 = 1;
        v77 = 0x8000;
      }
    }

    else
    {
LABEL_145:
      v77 = -1;
    }

LABEL_146:
    v80 = v77;
    result = shl(v76, v77, &v183);
    if (result < 1)
    {
LABEL_150:
      v182 = 0;
      goto LABEL_151;
    }

    v81 = result - v63;
    if (v81 < 0x8000)
    {
      if (v81 < 0)
      {
        result = div_s(result, v63);
        v182 = result;
        goto LABEL_151;
      }

      goto LABEL_150;
    }

    v182 = 0;
    v183 = 1;
LABEL_151:
    v82 = v80 - v61;
    v175 = v76;
    if (v80 - v61 >= 0x8000)
    {
      goto LABEL_152;
    }

    if (v82 < -32768)
    {
      v83 = -32769;
      goto LABEL_155;
    }

    if (v82 > 32752)
    {
LABEL_152:
      v83 = 32751;
LABEL_155:
      v84 = 1;
      goto LABEL_156;
    }

    v84 = v183;
    v83 = (v82 + 15) - 16;
LABEL_156:
    if (v83 <= -32768)
    {
      v85 = 0x8000;
    }

    else
    {
      v85 = v83;
    }

    v86 = v184;
    v87 = v85;
    v88 = a4;
    v89 = v179;
    do
    {
      if (v88 < a4 || (v88 + 1) > v15 || v88 > v88 + 1)
      {
        goto LABEL_381;
      }

      if (*v88 >= 1)
      {
        if (v86 < v184 || v86 + 1 > v185 || v86 > v86 + 1)
        {
          goto LABEL_381;
        }

        v90 = (*v86 >> 31) ^ 0x7FFFFFFF;
        if ((*v86 - 0x20000000) >> 30 == 3)
        {
          v90 = 4 * *v86;
        }

        v91 = v90 - v74;
        v92 = v74 ^ v90;
        v93 = (v90 - v74) ^ v90;
        v94 = (v90 >> 31) ^ 0x7FFFFFFF;
        if ((v92 & v93) < 0 != __OFSUB__((*v86 - 0x20000000) >> 30, 3))
        {
          v95 = 1;
        }

        else
        {
          v95 = v84;
        }

        if ((v92 & v93) < 0 != __OFSUB__((*v86 - 0x20000000) >> 30, 3))
        {
          v96 = v94;
        }

        else
        {
          v96 = v91;
        }

        v97 = Mpy_32_16_1(v96, a9);
        v98 = v15;
        if ((v97 - 0x20000000) >> 30 == 3)
        {
          v99 = 4 * v97;
        }

        else
        {
          v99 = (v97 >> 31) ^ 0x7FFFFFFF;
        }

        if (v83 < -32768)
        {
          v95 = 1;
        }

        result = L_shr(v182, v87);
        v100 = v99 + result;
        v101 = v99 ^ result;
        v15 = v98;
        v103 = v101 < 0 || ((v100 ^ result) & 0x80000000) == 0;
        v104 = !v103;
        if (v103)
        {
          v84 = v95;
        }

        else
        {
          v84 = 1;
        }

        if (v104)
        {
          v100 = (result >> 31) ^ 0x7FFFFFFF;
        }

        *v88 = v100;
      }

      ++v86;
      ++v88;
      --v89;
    }

    while (v89);
    v32 = 0;
    v105 = 0;
    v106 = a4;
    v107 = v179;
    do
    {
      if (v106 < a4 || (v106 + 1) > v15 || v106 > v106 + 1)
      {
        goto LABEL_381;
      }

      v108 = *v106;
      if (*v106 < 0)
      {
        v108 = 0;
        *v106 = 0;
        v105 = 1;
      }

      v109 = v108 + v32;
      v49 = v32 < 0;
      v110 = v109 ^ v32;
      if (v49 || v110 >= 0)
      {
        v32 = v109;
      }

      else
      {
        v84 = 1;
        v32 = 0x7FFFFFFF;
      }

      ++v106;
      --v107;
    }

    while (v107);
    if (a12 < -32440)
    {
      v22 = 1;
    }

    else
    {
      v22 = v84;
    }

    v183 = v22;
    if (a12 > 328 || v105)
    {
      goto LABEL_277;
    }

    v113 = 0;
    v114 = -1;
    v115 = v179;
    do
    {
      v116 = (v115 - 1);
      v117 = (a10 + 2 * v116);
      v118 = v117 + 1;
      v120 = v117 < a10 || v118 > a11 || v117 > v118;
      v121 = &a4[v116];
      v122 = v121 + 1;
      if (v120 || v121 < a4 || v122 > v15 || v121 > v122)
      {
        goto LABEL_381;
      }

      v126 = *v117;
      v127 = v126 >> 2;
      if (v126 >> 2 <= 12)
      {
        v127 = 12;
      }

      v128 = __OFSUB__(v126, v127);
      if (v126 < v127)
      {
        v127 = v126;
      }

      v129 = *v121;
      v130 = (v127 << 16) - v129;
      v131 = v129 ^ (v127 << 16);
      v132 = v130 ^ (v127 << 16);
      v133 = (v126 >> 15) ^ 0x7FFFFFFF;
      if ((v131 & v132) < 0 != v128)
      {
        v22 = 1;
      }

      if ((v131 & v132) < 0 == v128)
      {
        v133 = v130;
      }

      v134 = &a7[v116];
      if (v134 < a7 || (v134 + 1) > a8 || v134 > v134 + 1)
      {
        goto LABEL_381;
      }

      if (!*v134)
      {
        v135 = v133 - v113;
        if ((v113 ^ v133) < 0 && (v135 ^ v133) < 0)
        {
          v22 = 1;
          if (v133 < 0)
          {
            goto LABEL_252;
          }
        }

        else if (v135 < 1)
        {
          goto LABEL_252;
        }

        if (v129 > 0)
        {
          v114 = v115 - 1;
          v113 = v133;
        }
      }

LABEL_252:
      v136 = v115--;
    }

    while (v136 > 1);
    if (v114 == 0x7FFF)
    {
      v22 = 1;
LABEL_258:
      v137 = &a4[v114];
      if (v137 >= a4 && (v137 + 1) <= v15 && v137 <= v137 + 1)
      {
        *v137 = 0;
        goto LABEL_262;
      }

LABEL_381:
      __break(0x5519u);
    }

    if (v114 <= 0x7FFEu)
    {
      goto LABEL_258;
    }

LABEL_262:
    v32 = 0;
    v138 = a4;
    v139 = v179;
    do
    {
      if (v138 < a4 || (v138 + 1) > v15 || v138 > v138 + 1)
      {
        goto LABEL_381;
      }

      v140 = *v138++;
      v141 = v140 + v32;
      v142 = (v140 + v32) ^ v32;
      v144 = (v140 ^ v32) < 0 || v142 >= 0;
      v32 = (v32 >> 31) ^ 0x7FFFFFFF;
      if (v144)
      {
        v32 = v141;
      }

      else
      {
        v22 = 1;
      }

      --v139;
    }

    while (v139);
    v183 = v22;
LABEL_277:
    v145 = a3;
    if ((v176 ^ v32) < 0 && ((v32 - v176) ^ v32) < 0)
    {
      v22 = 1;
      v183 = 1;
      goto LABEL_289;
    }

    if (v32 != v176)
    {
      goto LABEL_284;
    }

    if (a14 <= -32767)
    {
      v22 = 1;
      v183 = 1;
      goto LABEL_284;
    }

    if (a14 != 2)
    {
LABEL_284:
      if (v32 != v176 || a14 == 2)
      {
        goto LABEL_289;
      }

      return result;
    }

    if (a12 < -32440)
    {
      v22 = 1;
    }

    if (!v172)
    {
      return result;
    }

    v147 = 0;
    v148 = 0;
    v149 = a4;
    v150 = v179;
    while (2)
    {
      if (((v147 - 11) & 0x8000) != 0)
      {
        if (v149 < a4 || (v149 + 1) > v15 || v149 > v149 + 1)
        {
          goto LABEL_381;
        }

        v152 = &a4[v147];
        v153 = *v149;
        if (*v149 < 0 && ((v153 - 0x40000) ^ v153) < 0)
        {
          goto LABEL_313;
        }

        if (v153 >= 0x40000)
        {
          if (((v147 - 16) & 0x8000) != 0)
          {
            goto LABEL_323;
          }

LABEL_298:
          v151 = v147 - a3;
          if (v151 >= -32768)
          {
            if ((v151 & 0x80000000) == 0)
            {
              goto LABEL_323;
            }
          }

          else
          {
            v22 = 1;
          }

          if (v149 < a4 || (v149 + 1) > v15 || v149 > v149 + 1)
          {
            goto LABEL_381;
          }

          v155 = *v149;
          if (*v149 < 0 && ((v155 - 393216) ^ v155) < 0)
          {
            v22 = 1;
            v152 = v149;
          }

          else
          {
            v152 = v149;
            if (v155 >= 393216)
            {
              goto LABEL_323;
            }
          }
        }

LABEL_322:
        *v152 = 0;
        goto LABEL_323;
      }

      if (((v147 - 16) & 0x8000) == 0)
      {
        goto LABEL_298;
      }

      if (v149 < a4 || (v149 + 1) > v15 || v149 > v149 + 1)
      {
        goto LABEL_381;
      }

      v152 = &a4[v147];
      v154 = *v149;
      if (*v149 < 0 && ((v154 - 327680) ^ v154) < 0)
      {
LABEL_313:
        v22 = 1;
        goto LABEL_322;
      }

      if (v154 < 327680)
      {
        goto LABEL_322;
      }

LABEL_323:
      if (v149 < a4 || (v149 + 1) > v15 || v149 > v149 + 1)
      {
        goto LABEL_381;
      }

      v156 = *v149++;
      v157 = v156 + v148;
      v158 = (v156 + v148) ^ v148;
      v160 = (v156 ^ v148) < 0 || v158 >= 0;
      v148 = (v148 >> 31) ^ 0x7FFFFFFF;
      if (v160)
      {
        v148 = v157;
      }

      else
      {
        v22 = 1;
      }

      ++v147;
      if (--v150)
      {
        continue;
      }

      break;
    }

    v183 = v22;
    if ((v32 ^ v148) < 0 && ((v148 - v32) ^ v148) < 0)
    {
      goto LABEL_341;
    }

    v145 = a3;
    if (v148 != v32)
    {
      goto LABEL_289;
    }

    if (a12 < -32440)
    {
      v22 = 1;
    }

    if (a12 <= 327)
    {
      v161 = 0;
      v162 = &a4[a3 - 4];
      do
      {
        v163 = &v173[v161 - 4];
        v164 = &v173[v161 - 3];
        if (v163 < a7 || v164 > a8 || v163 > v164)
        {
          goto LABEL_381;
        }

        if (*v163 == 1)
        {
          if (v162 < a4 || (v162 + 1) > v15 || v162 > v162 + 1)
          {
            goto LABEL_381;
          }

          if (!*v162)
          {
            *v163 = 0;
            v167 = v175 - bits_lagIndices_modeNormal[v161];
            if (v167 < -32768)
            {
              v168 = 1;
            }

            else
            {
              v168 = v22;
            }

            if (v167 <= -32768)
            {
              v169 = 0x8000;
            }

            else
            {
              v169 = v175 - bits_lagIndices_modeNormal[v161];
            }

            if (v167 < 0x8000)
            {
              v22 = v168;
            }

            else
            {
              v22 = 1;
            }

            if (v167 < 0x8000)
            {
              v170 = v169;
            }

            else
            {
              v170 = 0x7FFF;
            }

            v175 = v170;
          }
        }

        ++v161;
        ++v162;
      }

      while (v161 != 4);
      v183 = v22;
      v171 = v175 - *a6;
      if (v171 >= 0x8000)
      {
LABEL_341:
        v22 = 1;
        v183 = 1;
        v145 = a3;
      }

      else
      {
        if (v171 <= -32769)
        {
          v22 = 1;
          v183 = 1;
          v145 = a3;
          goto LABEL_379;
        }

        v145 = a3;
        if (v171 < 0)
        {
LABEL_379:
          *a6 = v175;
        }

        else if (*a6 == v175)
        {
          return result;
        }
      }

LABEL_289:
      v177 = (v177 + 1);
      if (v177 >= v145)
      {
        return result;
      }

      continue;
    }

    return result;
  }
}

uint64_t hq2_bit_alloc_har(float *a1, unint64_t a2, int a3, uint64_t a4, unint64_t a5, unint64_t a6, unsigned int a7, int a8, unint64_t a9, unint64_t a10, unint64_t a11, unint64_t a12)
{
  *v471 = *MEMORY[0x1E69E9840];
  v463 = 0xAAAAAAAAAAAAAAAALL;
  v464 = 0xAAAAAAAAAAAAAAAALL;
  memset(v462, 0, sizeof(v462));
  v461 = 0xAAAAAAAAAAAAAAAALL;
  *&v16 = 0xAAAAAAAAAAAAAAAALL;
  *(&v16 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v459[6] = v16;
  v459[7] = v16;
  v459[4] = v16;
  v459[5] = v16;
  v459[2] = v16;
  v459[3] = v16;
  v459[0] = v16;
  v459[1] = v16;
  v451 = 0;
  v450 = 0;
  v457 = 0xAAAAAAAAAAAAAAAALL;
  v458 = 0xAAAAAAAAAAAAAAAALL;
  memset(v456, 170, 26);
  v455[7] = v16;
  v455[5] = v16;
  v455[6] = v16;
  v455[3] = v16;
  v455[4] = v16;
  v455[1] = v16;
  v455[2] = v16;
  v455[0] = v16;
  v449 = 0;
  if (a4 >= 1)
  {
    v17 = a4;
    v18 = a1;
    v19 = v455;
    do
    {
      if (v18 < a1 || (v18 + 1) > a2 || v18 > v18 + 1 || v19 < v455 || v19 + 1 > v456 || v19 > v19 + 1)
      {
        goto LABEL_815;
      }

      v20 = *v18++;
      *v19++ = vcvts_n_s32_f32(v20, 0xEuLL);
      --v17;
    }

    while (v17);
  }

  set_val_Word16(&v461, 4);
  v21 = a4 - a7;
  if ((a4 - a7) < 0x8000)
  {
    if (v21 <= -32769)
    {
      v449 = 1;
      v22 = -32767;
      goto LABEL_16;
    }

    if (v21 != 0x7FFF)
    {
      v22 = v21 + 1;
      goto LABEL_16;
    }
  }

  v449 = 1;
  v22 = 0x7FFF;
LABEL_16:
  v23 = __OFSUB__(a4, 1);
  if (a4 >= 1)
  {
    v24 = 0;
    v12 = 4 * a4;
    do
    {
      v25 = (a5 + v24);
      v26 = a5 + v24 + 4;
      if (a5 + v24 < a5 || v26 > a6 || v25 > v26)
      {
        goto LABEL_815;
      }

      *v25 = 0x10000;
      v29 = v455 + v24;
      if ((v455 + v24) < v455)
      {
        goto LABEL_815;
      }

      if (v29 + 4 > v456)
      {
        goto LABEL_815;
      }

      if (v29 > v29 + 4)
      {
        goto LABEL_815;
      }

      v30 = &v462[v24 / 4];
      if (&v462[v24 / 4] < v462 || v30 + 1 > &v463 || v30 > v30 + 1)
      {
        goto LABEL_815;
      }

      v462[v24 / 4] = *(v455 + v24);
      v24 += 4;
      v23 = __OFSUB__(v12, v24);
    }

    while (v12 != v24);
  }

  v453 = 4;
  v452 = 15;
  v31 = a8 - 16400;
  if ((a8 & ((a8 - 16400) ^ a8)) < 0 != v23)
  {
    v449 = 1;
  }

  else if (a8 == 16400)
  {
    v452 = 17;
  }

  v32 = (a8 & ((a8 - 16400) ^ a8)) >= 0;
  v450 = 16;
  v451 = 7;
  v33 = &v453;
  v34 = &v451;
  v35 = 1;
  LODWORD(v12) = 0x7FFF;
  LODWORD(v36) = v449;
  do
  {
    v37 = v35;
    v38 = *v33;
    v39 = &v462[v38];
    v40 = (v39 - 4);
    if (v39 - 4 < v462 || v39 > &v463 || v40 > v39)
    {
      goto LABEL_814;
    }

    v43 = 0;
    v44 = *v33;
    while (1)
    {
      v45 = &v462[v44];
      v46 = (v45 + 4);
      if (v45 < v462 || v46 > &v463 || v45 > v46)
      {
        goto LABEL_814;
      }

      v49 = *v40;
      v50 = *v45;
      v51 = *v40 - *v45;
      if ((v50 ^ *v40) < 0 && (v51 ^ v49) < 0)
      {
        LODWORD(v36) = 1;
        if (v49 < 0)
        {
          goto LABEL_74;
        }
      }

      else if (v51 < 0)
      {
        goto LABEL_74;
      }

      v52 = v44 - *v34;
      if (v52 >= 0x8000)
      {
        break;
      }

      if (v52 >= -32768)
      {
        if ((v52 & 0x80000000) == 0)
        {
          goto LABEL_74;
        }
      }

      else
      {
        LODWORD(v36) = 1;
      }

      v53 = v44 == 0x7FFF;
      if (v44 == 0x7FFF)
      {
        v44 = 0x7FFF;
      }

      else
      {
        ++v44;
      }

      if (v53 || v43 == 0x7FFF)
      {
        LODWORD(v36) = 1;
      }

      if (v43 == 0x7FFF)
      {
        v43 = 0x7FFF;
      }

      else
      {
        ++v43;
      }
    }

    LODWORD(v36) = 1;
LABEL_74:
    if ((v43 - 1) < 1)
    {
      LOWORD(v55) = v43;
      goto LABEL_104;
    }

    v55 = 2;
    while (1)
    {
      v56 = &v462[v55 + v38];
      v58 = v56 - 4 < v462 || v56 > &v463 || (v56 - 4) > v56;
      v59 = (v56 + 4);
      if (v58 || v59 > &v463 || v56 > v59)
      {
        goto LABEL_814;
      }

      v62 = *(v56 - 1);
      v63 = *v56;
      v64 = v62 - *v56;
      if ((v63 ^ v62) < 0 && (v64 ^ v62) < 0)
      {
        LODWORD(v36) = 1;
        if (v62 < 0)
        {
          goto LABEL_104;
        }
      }

      else if (v64 < 0)
      {
        goto LABEL_104;
      }

      if (v55 == 0x7FFF)
      {
        LODWORD(v36) = 1;
        LOWORD(v55) = 0x7FFF;
      }

      else
      {
        LOWORD(v55) = v55 + 1;
      }

      v55 = v55;
      v65 = v55 - v43;
      if (v65 >= -32768)
      {
        break;
      }

      LODWORD(v36) = 1;
LABEL_100:
      if (v55 > v43)
      {
        goto LABEL_104;
      }
    }

    if (v65 < 1)
    {
      goto LABEL_100;
    }

    LOWORD(v55) = v55 - 1;
LABEL_104:
    v35 = 0;
    v66 = v38 + v55;
    if (v66 >= -32768)
    {
      v67 = v66;
    }

    else
    {
      v67 = 0x8000;
    }

    if (v66 < -32768 || v66 > 0x7FFF)
    {
      LODWORD(v36) = 1;
    }

    if (v66 < 0x8000)
    {
      v69 = v67;
    }

    else
    {
      v69 = 0x7FFF;
    }

    *v33 = v69;
    v33 = &v452;
    v34 = &v450;
  }

  while ((v37 & 1) != 0);
  v12 = 0;
  v449 = v36;
  LOWORD(v456[2]) = 0;
  v70 = v453;
  WORD1(v456[2]) = v453;
  v71 = v452;
  WORD2(v456[2]) = v452;
  HIWORD(v456[2]) = v22;
  LOWORD(v456[3]) = a4;
  do
  {
    *(&v463 + v12) = 0;
    v72 = &v456[2] + v12;
    LODWORD(v73) = *v72;
    v74 = v72[1];
    if (v73 < v74)
    {
      v75 = 0;
      v73 = v73;
      v76 = v73;
      do
      {
        v77 = &v462[v76 + 1];
        if (&v462[v76] < v462 || v77 > &v463 || &v462[v76] > v77)
        {
          goto LABEL_814;
        }

        v80 = v462[v73];
        if (v80 >= 1)
        {
          v81 = v80 + v75;
          v82 = (v80 ^ v75) < 0;
          v83 = (v80 + v75) ^ v75;
          v85 = v82 || v83 >= 0;
          v75 = (v75 >> 31) ^ 0x7FFFFFFF;
          if (v85)
          {
            v75 = v81;
          }

          else
          {
            LODWORD(v36) = 1;
          }

          *(&v463 + v12) = v75;
        }

        ++v73;
        ++v76;
      }

      while (v73 < v74);
    }

    ++v12;
  }

  while (v12 != 4);
  v449 = v36;
  LODWORD(v459[0]) = v462[0];
  v86 = v22;
  if (v86 > 1)
  {
    v87 = 0;
    v88 = v22;
    LODWORD(v12) = v449;
    do
    {
      v89 = &v462[v87 / 4];
      v90 = &v462[v87 / 4 + 1];
      v91 = &v462[v87 / 4 + 2];
      if (v90 < v462 || v91 > &v463 || v90 > v91)
      {
        v95 = 0;
        v94 = 0;
      }

      else
      {
        v95 = __OFSUB__(v89, v462);
        v94 = v89 >= v462;
      }

      if (!v94)
      {
        goto LABEL_816;
      }

      v96 = v462[v87 / 4];
      v97 = *v90;
      v98 = v97 - v96;
      v99 = v96 ^ v97;
      v100 = v98 ^ v97;
      v101 = (v97 >> 31) ^ 0x7FFFFFFF;
      if ((v99 & v100) < 0 != v95)
      {
        LODWORD(v12) = 1;
      }

      if ((v99 & v100) < 0 == v95)
      {
        v101 = v98;
      }

      v102 = (v459 + v87 + 4);
      if (v102 < v459)
      {
        goto LABEL_816;
      }

      v103 = v459 + v87 + 8;
      if (v103 > &v460 || v102 > v103)
      {
        goto LABEL_816;
      }

      if (v101 >= 0)
      {
        v104 = v101;
      }

      else
      {
        v104 = -v101;
      }

      if (v101 == 0x80000000)
      {
        v105 = 0x7FFFFFFF;
      }

      else
      {
        v105 = v104;
      }

      *v102 = v105;
      v87 += 4;
    }

    while (4 * v22 - 4 != v87);
    v106 = 0;
    v107 = 0;
    v449 = v12;
    v108 = 1;
    while (1)
    {
      v109 = v459 + v108;
      v110 = (v109 + 1);
      if (v109 < v459 || v110 > &v460 || v109 > v110)
      {
        goto LABEL_816;
      }

      v113 = *v109;
      v114 = v113 - v107;
      if ((v107 ^ v113) < 0 && (v114 ^ v113) < 0)
      {
        break;
      }

      if (v114 >= 1)
      {
        goto LABEL_180;
      }

LABEL_181:
      if (++v108 == v22)
      {
        v449 = v12;
        goto LABEL_184;
      }
    }

    LODWORD(v12) = 1;
    if (v113 < 0)
    {
      goto LABEL_181;
    }

LABEL_180:
    v107 = v113;
    v106 = v108;
    goto LABEL_181;
  }

  v106 = 0;
  v88 = v22;
LABEL_184:
  v115 = v106 - v70;
  if (v115 >= 0x8000)
  {
    v449 = 1;
    goto LABEL_186;
  }

  if (v115 > -32769)
  {
    if (v115 >= 0)
    {
LABEL_203:
      if (v115 <= -32769)
      {
        goto LABEL_204;
      }

      if (v115 < 0)
      {
        goto LABEL_205;
      }

LABEL_186:
      v116 = v106 - v71;
      if (v116 < 0x8000)
      {
        if (v116 <= -32769)
        {
          v440 = 1;
          v449 = 1;
          if (v32)
          {
            goto LABEL_196;
          }

          goto LABEL_195;
        }

        if (v116 < 0)
        {
          v440 = 1;
          if (v32)
          {
            goto LABEL_196;
          }

          goto LABEL_195;
        }

LABEL_205:
        if (v32)
        {
          v440 = 0;
          if (v31)
          {
            v119 = 15073;
          }

          else
          {
            v119 = 15892;
          }
        }

        else
        {
          v440 = 0;
          v449 = 1;
          v119 = 15073;
        }

        v442 = v119;
        v444 = 0x4000;
        goto LABEL_211;
      }

LABEL_204:
      v449 = 1;
      goto LABEL_205;
    }
  }

  else
  {
    v449 = 1;
  }

  if (v106 <= 0)
  {
    goto LABEL_203;
  }

  v440 = 0;
  if (!v32)
  {
LABEL_195:
    v449 = 1;
    v31 = 0x80000000;
  }

LABEL_196:
  if (v31)
  {
    v117 = 15892;
  }

  else
  {
    v117 = 15073;
  }

  if (v31)
  {
    v118 = 17203;
  }

  else
  {
    v118 = 18022;
  }

  v442 = v118;
  v444 = v117;
LABEL_211:
  v120 = 0;
  v121 = 0;
  v12 = 0;
  v122 = a4 - v22;
  v123 = v449;
  v36 = &v462[v88];
  while (v122 >= 0x8000)
  {
    v123 = 1;
    if (v12 >= 0x7FFF)
    {
      v449 = 1;
      LOWORD(v122) = 0x7FFF;
      goto LABEL_247;
    }

LABEL_219:
    v125 = v36 + v121;
    if (v36 + v121 < v462)
    {
      goto LABEL_813;
    }

    if (v125 + 4 > &v463)
    {
      goto LABEL_813;
    }

    if (v125 > v125 + 4)
    {
      goto LABEL_813;
    }

    v126 = &v457 + v120;
    if ((&v457 + v120) < &v457 || v126 + 2 > &v458 || v126 > v126 + 2)
    {
      goto LABEL_813;
    }

    v127 = v86 + v12;
    if (v86 + v12 >= -32768)
    {
      v128 = v22 + v12;
    }

    else
    {
      v128 = 0x8000;
    }

    v129 = *(v36 + 4 * v12);
    v130 = 4 * v129;
    if (v127 < -32768 || v127 > 0x7FFF)
    {
      v123 = 1;
    }

    v82 = v129 < 0;
    v132 = (v129 - 0x20000000) >> 30;
    v133 = v82 ? 0x8000 : 0x7FFF;
    v134 = v132 >= 3 ? HIWORD(v130) : v133;
    *(&v457 + v120) = v134;
    v135 = v127 < 0x8000 ? v128 : 0x7FFF;
    v136 = &v458 + v120;
    if ((&v458 + v120) < &v458 || v136 + 2 > v459 || v136 > v136 + 2)
    {
      goto LABEL_813;
    }

    *(&v458 + v120) = v135;
    ++v12;
    v121 += 4;
    v120 += 2;
  }

  if (v122 >= -32768)
  {
    v124 = (a4 - v22);
  }

  else
  {
    v123 = 1;
    v124 = -32768;
  }

  if (v12 < v124)
  {
    goto LABEL_219;
  }

  v449 = v123;
  if (v122 <= -32769)
  {
    v449 = 1;
    LOWORD(v122) = 0x8000;
  }

LABEL_247:
  reordvct(&v457, &v458, v122, &v458, v459);
  v137 = (a11 + 2 * v458);
  v138 = (v137 + 1);
  if (v137 < a11 || v138 > a12 || v137 > v138)
  {
    goto LABEL_815;
  }

  v141 = *v137;
  v142 = *v137;
  if (*v137)
  {
    if (v142 == 0xFFFF)
    {
      v142 = 31;
    }

    else
    {
      v143 = v141 ^ (v141 >> 31);
      if (v143 > 0x3FFFFFFF)
      {
        v142 = 0;
      }

      else
      {
        v142 = 0;
        do
        {
          v144 = v143 >> 29;
          v143 *= 2;
          ++v142;
        }

        while (!v144);
      }
    }
  }

  v145 = L_shl(v141, v142);
  v146 = Log2_norm_lc(v145, &v449);
  if (v142 > -32738)
  {
    v147 = (30 - v142) << 16;
  }

  else
  {
    v449 = 1;
    v147 = 2147418112;
  }

  v148 = v147 + 2 * v146;
  if (((v147 ^ (2 * v146)) & 0x80000000) == 0 && (v148 ^ v147) < 0)
  {
    v148 = (v147 >> 31) ^ 0x7FFFFFFF;
    v449 = 1;
  }

  if (v148)
  {
    v149 = v148 + 0x10000;
    if ((v148 & 0x80000000) == 0 && (v149 ^ v148) < 0)
    {
      v449 = 1;
      v149 = 0x7FFFFFFF;
    }
  }

  else
  {
    v149 = v148;
  }

  v150 = 0;
  v456[0] = 0x5000000040000;
  LODWORD(v456[1]) = 393216;
  HIDWORD(v456[1]) = v149 & 0xFFFF0000;
  v151 = 1;
  v152 = v449;
  do
  {
    v153 = *(&v463 + v150);
    v154 = v153 + v151;
    v82 = (v153 ^ v151) < 0;
    v155 = (v153 + v151) ^ v151;
    if (v82 || v155 >= 0)
    {
      v151 = v154;
    }

    else
    {
      v152 = 1;
      v151 = (v151 >> 31) ^ 0x7FFFFFFF;
    }

    v150 += 4;
  }

  while (v150 != 12);
  v449 = v152;
  v158 = HIDWORD(v464);
  v159 = HIDWORD(v464) + v151;
  v432 = v149;
  if (((HIDWORD(v464) ^ v151) & 0x80000000) == 0 && (v159 ^ v151) < 0)
  {
    v449 = 1;
    v159 = (v151 >> 31) ^ 0x7FFFFFFF;
    goto LABEL_292;
  }

  if (!v159)
  {
    goto LABEL_297;
  }

  if (v159 == -1)
  {
    v160 = 30;
    goto LABEL_298;
  }

LABEL_292:
  v161 = v159 ^ (v159 >> 31);
  if (v161 <= 0x3FFFFFFF)
  {
    v162 = 0;
    do
    {
      v160 = v162;
      v163 = v161 >> 29;
      v161 *= 2;
      ++v162;
    }

    while (!v163);
    if (v162 == 0x8000)
    {
      v449 = 1;
      v160 = 0x8000;
    }
  }

  else
  {
LABEL_297:
    v160 = -1;
  }

LABEL_298:
  v164 = a4;
  if (a4)
  {
    if (a4 == -1)
    {
      v164 = 15;
    }

    else
    {
      v165 = a4 ^ (a4 >> 15);
      if (v165 >= 0x4000)
      {
        v164 = 0;
      }

      else
      {
        v164 = 0;
        do
        {
          v165 = (2 * v165);
          ++v164;
        }

        while (v165 < 0x4000);
      }
    }
  }

  v166 = v160;
  v167 = L_shl(v159, v160);
  v168 = shl(a4, v164, &v449);
  v169 = div_l(v167, v168, &v449) << 16;
  v170 = v166 - v164;
  if (v170 < 0x8000)
  {
    if (v170 > -32769)
    {
      if (v170 >= 32753)
      {
        goto LABEL_307;
      }

      v171 = v170 + 15;
    }

    else
    {
      v449 = 1;
      v171 = -32753;
    }
  }

  else
  {
LABEL_307:
    v449 = 1;
    v171 = 0x7FFF;
  }

  v172 = L_shr(v169, v171);
  if (!v151)
  {
    goto LABEL_320;
  }

  if (v151 == -1)
  {
    v173 = 31;
    goto LABEL_321;
  }

  v174 = v151 ^ (v151 >> 31);
  if (v174 <= 0x3FFFFFFF)
  {
    LOWORD(v173) = 0;
    do
    {
      v175 = v174 >> 29;
      v174 *= 2;
      v173 = (v173 + 1);
    }

    while (!v175);
    v176 = L_shl(v151, v173) >> 16;
    if (v173 >= 32754)
    {
      v449 = 1;
      v177 = 32751;
      goto LABEL_325;
    }
  }

  else
  {
LABEL_320:
    v173 = 0;
LABEL_321:
    v176 = L_shl(v151, v173) >> 16;
  }

  if ((v173 + 14) <= -32753)
  {
    v449 = 1;
    v446 = div_s(0x4000, v176);
    v438 = -32768;
    goto LABEL_326;
  }

  v177 = v173 - 2;
LABEL_325:
  v438 = v177;
  v446 = div_s(0x4000, v176);
  if (v173 > -32737)
  {
    v179 = (31 - v173) + 14;
    v178 = a7;
    if (!a3)
    {
      goto LABEL_331;
    }

LABEL_327:
    v180 = -1;
    v181 = a3;
    if (a3)
    {
      if (a3 == 0xFFFF)
      {
        v180 = 14;
      }

      else
      {
        v183 = (a3 ^ (v181 >> 15));
        if (v183 < 0x4000)
        {
          v184 = 0;
          do
          {
            v185 = v184;
            v183 = (2 * v183);
            ++v184;
          }

          while (v183 < 0x4000);
          if (v184 == 0x8000)
          {
            v180 = 0x8000;
          }

          else
          {
            v180 = v185;
          }
        }
      }
    }

    v186 = shl(v181, v180, v469);
    v187 = shl(4, 0xCu, v469);
    v188 = div_s(v186, v187);
    if (v180 >= -32756)
    {
      if ((v180 - 12) <= 32752)
      {
        v189 = v180 + 3;
      }

      else
      {
        v189 = 0x7FFF;
      }
    }

    else
    {
      v189 = -32753;
    }

    v182 = shr(v188, v189, v469);
    v178 = a7;
  }

  else
  {
LABEL_326:
    v178 = a7;
    v449 = 1;
    v179 = 32781;
    if (a3)
    {
      goto LABEL_327;
    }

LABEL_331:
    v182 = 0;
  }

  v190 = v178;
  if (v178)
  {
    if (v178 == -1)
    {
      v190 = 15;
    }

    else
    {
      v191 = v178 ^ (v178 >> 15);
      if (v191 >= 0x4000)
      {
        v190 = 0;
      }

      else
      {
        v190 = 0;
        do
        {
          v191 = (2 * v191);
          ++v190;
        }

        while (v191 < 0x4000);
      }
    }
  }

  v192 = shl(v178, v190, &v449);
  v193 = div_s(0x3FFF, v192);
  if (v190 > -32739)
  {
    v194 = (29 - v190);
  }

  else
  {
    v449 = 1;
    v194 = 0x7FFF;
  }

  v434 = v193;
  v195 = Mpy_32_16_1(v158, v193);
  v196 = (v194 << 16) - 0x10000;
  v436 = v194;
  if (v196 >> 16 > -32754)
  {
    v197 = 14 - HIWORD(v196);
  }

  else
  {
    v449 = 1;
    LOWORD(v197) = 0x7FFF;
  }

  v198 = L_shl(v195, v197);
  v199 = v198 - v172;
  if ((v172 ^ v198) < 0 && (v199 ^ v198) < 0)
  {
    v199 = (v198 >> 31) ^ 0x7FFFFFFF;
    v449 = 1;
  }

  if (v179 >= 0x8000)
  {
    v449 = 1;
    LOWORD(v200) = 32737;
    goto LABEL_363;
  }

  if (v179 >= -32738 && (v200 = (v179 - 30), v200 > -32737))
  {
LABEL_363:
    v201 = 31 - v200;
  }

  else
  {
    v449 = 1;
    v201 = 0x7FFF;
  }

  v202 = v176;
  if (!v176)
  {
    goto LABEL_375;
  }

  if (v176 == 0xFFFF)
  {
    v203 = 14;
    goto LABEL_376;
  }

  v204 = (v176 ^ (v202 >> 15));
  if (v204 < 0x4000)
  {
    v205 = 0;
    do
    {
      v203 = v205;
      v204 = (2 * v204);
      ++v205;
    }

    while (v204 < 0x4000);
    if (v205 == 0x8000)
    {
      v449 = 1;
      v203 = 0x8000;
    }
  }

  else
  {
LABEL_375:
    v203 = -1;
  }

LABEL_376:
  v448 = v182;
  if (v22 == 0xFFFF)
  {
    v22 = 15;
  }

  else if (v22)
  {
    v206 = (v22 ^ (v86 >> 15));
    if (v206 >= 0x4000)
    {
      v22 = 0;
    }

    else
    {
      v22 = 0;
      do
      {
        v206 = (2 * v206);
        ++v22;
      }

      while (v206 < 0x4000);
    }
  }

  v207 = v203;
  v208 = shl(v202, v203, &v449);
  v209 = shl(v86, v22, &v449);
  v210 = div_s(v208, v209);
  v211 = &v462[v458];
  v212 = v211 + 1;
  if (v211 < v462 || v212 > &v463 || v211 > v212)
  {
    goto LABEL_815;
  }

  v215 = v210;
  v216 = Mpy_32_16_1(6 * (v158 >> 16) + ((3 * v158) >> 15), v446);
  v217 = L_shl(v216, v201);
  v218 = v217 + 0x8000;
  v220 = v217 < 0 || ((v217 + 0x8000) ^ v217) >= 0;
  v221 = v215 << 16;
  v222 = v207 - v22;
  if (v222 < 0x8000)
  {
    v223 = a5;
    v224 = v438;
    if (v222 > -32769)
    {
      v222 = v222;
    }

    else
    {
      v449 = 1;
      v222 = -32768;
    }
  }

  else
  {
    v449 = 1;
    v222 = 0x7FFF;
    v223 = a5;
    v224 = v438;
  }

  v225 = *v211;
  v226 = v222 + v224;
  if (v226 < 0x8000)
  {
    if (v226 < -32768 || v226 <= -32754)
    {
      v449 = 1;
      v227 = 32736;
    }

    else
    {
      v228 = (14 - v226);
      if (v228 <= -32738)
      {
        goto LABEL_403;
      }

      v227 = v228 - 31;
    }
  }

  else
  {
LABEL_403:
    v449 = 1;
    v227 = 0x8000;
  }

  v229 = v218 >> 16;
  v230 = L_shl(v221, v227);
  v231 = v225 - v230;
  if ((v230 ^ v225) < 0 && (v231 ^ v225) < 0)
  {
    v231 = (v225 >> 31) ^ 0x7FFFFFFF;
    v449 = 1;
  }

  v232 = v229 - 26214;
  if (!v220)
  {
    v232 = 6553;
  }

  if (v232 <= -32769)
  {
LABEL_418:
    v449 = 1;
  }

  else if (v232 >= 1)
  {
    if (v231 < 0 && ((v231 - 0x20000) ^ v231) < 0)
    {
      goto LABEL_418;
    }

    if (v231 > 0x20000)
    {
      if (v199 >= 0)
      {
        v262 = 6554;
      }

      else
      {
        v262 = 13107;
      }

      if (v448 * v434 == 0x40000000)
      {
        v449 = 1;
        v263 = 0x7FFFFFFF;
      }

      else
      {
        v263 = 2 * v448 * v434;
      }

      v415 = Mpy_32_16_1(v199, v262);
      if (v436 < 0x7FFF)
      {
        v416 = v436 + 1;
      }

      else
      {
        v449 = 1;
        v416 = 0x7FFF;
      }

      v417 = L_shr(v263, v416);
      v418 = v417 << 14;
      if ((v417 - 0x20000) < 0xFFFC0000)
      {
        v418 = (v417 >> 31) ^ 0x7FFFFFFF;
      }

      v419 = v415 + v418;
      if (((v415 ^ v418) & 0x80000000) == 0 && (v419 ^ v418) < 0)
      {
        v419 = (v418 >> 31) ^ 0x7FFFFFFF;
        v449 = 1;
      }

      v420 = v419 - 0x20000000;
      v421 = 4 * v419;
      if (v419 >= 0)
      {
        v422 = 2147418112;
      }

      else
      {
        v422 = 0x80000000;
      }

      if (v420 >> 30 == 3)
      {
        v422 = v421;
      }

      v423 = v422 >> 16;
      if (v423 >= 10)
      {
        v423 = 10;
      }

      HIWORD(v461) = v423;
      v424 = v423 - (v432 >> 16);
      if (v424 < 0x8000)
      {
        if (v424 > -32769)
        {
          if ((v424 & 0x80000000) == 0)
          {
            goto LABEL_808;
          }
        }

        else
        {
          v449 = 1;
        }

        v423 = 0;
        HIWORD(v461) = 0;
        goto LABEL_808;
      }

      v449 = 1;
LABEL_808:
      a3 = a3 - v423;
      if (a3 < 0x8000)
      {
        if (a3 <= -32769)
        {
          v449 = 1;
          LOWORD(a3) = 0x8000;
        }
      }

      else
      {
        v449 = 1;
        LOWORD(a3) = 0x7FFF;
      }
    }
  }

  if (v179 >= 0x8000)
  {
    v449 = 1;
    v233 = 32720;
    goto LABEL_424;
  }

  if (v179 > -32722)
  {
    v233 = v179 - 47;
LABEL_424:
    v235 = v444;
    v234 = v233;
  }

  else
  {
    v449 = 1;
    v234 = -32768;
    v235 = v444;
  }

  v236 = a3;
  if (a3)
  {
    if (a3 == 0xFFFF)
    {
      LOWORD(a3) = 15;
    }

    else
    {
      v237 = (a3 ^ (v236 >> 15));
      if (v237 >= 0x4000)
      {
        LOWORD(a3) = 0;
      }

      else
      {
        LOWORD(a3) = 0;
        do
        {
          v237 = (2 * v237);
          LOWORD(a3) = a3 + 1;
        }

        while (v237 < 0x4000);
      }
    }
  }

  v238 = shl(v236, a3, &v449);
  v239 = v234 + a3;
  if (v239 < 0x8000)
  {
    v240 = v440;
    if (v239 <= -32769)
    {
      v449 = 1;
      LOWORD(v239) = 0x8000;
    }
  }

  else
  {
    v449 = 1;
    LOWORD(v239) = 0x7FFF;
    v240 = v440;
  }

  v241 = v442 * v238;
  v242 = v235 * v238;
  if (v240)
  {
    v243 = Mpy_32_16_1(SHIDWORD(v463), (v241 >> 15));
    v244 = Mpy_32_16_1(v243, v446);
    v245 = v239;
    v246 = L_shr(v244, v239);
    v247 = HIWORD(v246);
    WORD1(v461) = HIWORD(v246);
    v248 = Mpy_32_16_1(v464, (v242 >> 15));
    v249 = Mpy_32_16_1(v248, v446);
    v250 = L_shr(v249, v245);
    v251 = HIWORD(v250);
    WORD2(v461) = HIWORD(v250);
    v252 = v236 - (v246 >> 16);
    if (v252 < 0x8000)
    {
      v253 = a6;
      v254 = &v463;
      if (v252 > -32769)
      {
        v252 = v252;
      }

      else
      {
        v449 = 1;
        v252 = -32768;
      }
    }

    else
    {
      v449 = 1;
      v252 = 0x7FFF;
      v253 = a6;
      v254 = &v463;
    }

    v264 = v252 - (v250 >> 16);
    if (v264 < 0x8000)
    {
      if (v264 <= -32769)
      {
        v449 = 1;
        LOWORD(v264) = 0x8000;
      }
    }

    else
    {
      v449 = 1;
      LOWORD(v264) = 0x7FFF;
    }

    LOWORD(v461) = v264;
  }

  else
  {
    v255 = Mpy_32_16_1(v463, (v241 >> 15));
    v256 = Mpy_32_16_1(v255, v446);
    v257 = L_shr(v256, v239);
    LOWORD(v461) = HIWORD(v257);
    v258 = Mpy_32_16_1(v464, (v242 >> 15));
    v259 = Mpy_32_16_1(v258, v446);
    v260 = L_shr(v259, v239);
    v251 = HIWORD(v260);
    WORD2(v461) = HIWORD(v260);
    v261 = v236 - (v257 >> 16);
    if (v261 < 0x8000)
    {
      v253 = a6;
      v254 = &v463;
      if (v261 > -32769)
      {
        v261 = v261;
      }

      else
      {
        v449 = 1;
        v261 = -32768;
      }
    }

    else
    {
      v449 = 1;
      v261 = 0x7FFF;
      v253 = a6;
      v254 = &v463;
    }

    v247 = v261 - (v260 >> 16);
    if (v247 < 0x8000)
    {
      if (v247 <= -32769)
      {
        v449 = 1;
        LOWORD(v247) = 0x8000;
      }
    }

    else
    {
      v449 = 1;
      LOWORD(v247) = 0x7FFF;
    }

    WORD1(v461) = v247;
  }

  if (v251 <= -32764)
  {
    v449 = 1;
    goto LABEL_472;
  }

  if (((v251 - 5) & 0x8000) != 0)
  {
LABEL_472:
    v265 = v251 + v247;
    if (v265 < 0x8000)
    {
      if (v265 <= -32769)
      {
        v449 = 1;
        LOWORD(v265) = 0x8000;
      }
    }

    else
    {
      v449 = 1;
      LOWORD(v265) = 0x7FFF;
    }

    *(&v461 + 2) = v265;
  }

  v266 = 0;
  v425 = v449;
  while (2)
  {
    v267 = *(&v462[-2] + v266);
    v268 = &v456[2] + v266;
    v269 = *v268;
    if (v267 >= 1)
    {
      v270 = v268[1];
      v430 = *(v456 + v266);
      v470 = 0;
      memset(v469, 0, sizeof(v469));
      memset(v467, 170, sizeof(v467));
      LODWORD(v12) = v270 - v269;
      memset(v465, 170, sizeof(v465));
      if (v270 - v269 >= 0x8000)
      {
        LOWORD(v12) = 0x7FFF;
        v271 = 1;
        v272 = a9;
LABEL_504:
        v284 = 0;
        v285 = 0;
        v36 = 0;
        v286 = &v462[v269];
        LODWORD(v12) = v12;
        v433 = v223 + 4 * v269;
        v287 = v12;
        v439 = v272 + 2 * v269;
        do
        {
          v288 = &v286[v284];
          if (&v286[v284] < v462)
          {
            goto LABEL_812;
          }

          v289 = v288 + 4 > v254 || v288 > v288 + 4;
          v290 = v465 + v285;
          v12 = v465 + v285 + 2;
          v291 = !v289 && v290 >= v465;
          v292 = !v291 || v12 > v466;
          if (v292 || v290 > v12)
          {
            goto LABEL_812;
          }

          v294 = v286[v36];
          v295 = v294 - 0x20000000;
          v296 = 4 * v294;
          if (v294 >= 0)
          {
            v297 = 0x7FFF;
          }

          else
          {
            v297 = 0x8000;
          }

          LODWORD(v12) = v295 >> 30;
          if (v12 >= 3)
          {
            v297 = HIWORD(v296);
          }

          *(v465 + v285) = v297;
          v298 = v467 + v285;
          if ((v467 + v285) < v467)
          {
            goto LABEL_812;
          }

          v12 = (v298 + 2);
          if (v298 + 2 > v468 || v298 > v12)
          {
            goto LABEL_812;
          }

          *(v467 + v285) = v36++;
          v285 += 2;
          ++v284;
        }

        while (v287 != v36);
        v429 = v267;
        result = reordvct(v465, v466, v287, v467, v468);
        v299 = 0;
        v300 = 0;
        v301 = v469;
        v36 = v287;
        do
        {
          v302 = (v465 + v299);
          v303 = (v465 + v299 + 2);
          v12 = v466;
          if ((v465 + v299) < v465 || v303 > v466 || v302 > v303)
          {
            goto LABEL_812;
          }

          if (*v302 < 1)
          {
            goto LABEL_554;
          }

          v306 = (v467 + v299);
          if ((v467 + v299) < v467)
          {
            goto LABEL_812;
          }

          v12 = (v306 + 1);
          if (v306 + 1 > v468 || v306 > v12)
          {
            goto LABEL_812;
          }

          v307 = (v439 + 2 * *v306);
          v12 = (v307 + 1);
          v308 = v307 < v272 || v12 > a10;
          if (v308 || v307 > v12)
          {
            goto LABEL_812;
          }

          if (*v307)
          {
            if (v301 < v469 || v301 + 1 > v471 || v301 > v301 + 1)
            {
              goto LABEL_812;
            }

            *v301 = 0x10000;
            if (v300 == 0x7FFF)
            {
              v271 = 1;
              v300 = 0x7FFF;
            }

            else
            {
              ++v300;
            }
          }

          else
          {
LABEL_554:
            *v302 = 0;
            if (v301 < v469 || v301 + 1 > v471 || v301 > v301 + 1)
            {
              goto LABEL_812;
            }

            *v301 = 0;
          }

          ++v301;
          v299 += 2;
          --v36;
        }

        while (v36);
        v310 = v300;
        v441 = v287;
        v426 = v266;
        if (v300 == 0x8000)
        {
          LOWORD(v311) = 0;
          v310 = 0x8000;
          v312 = -1;
          v313 = 0x8000;
          v314 = v433;
LABEL_561:
          v315 = (v310 ^ (v310 >> 15));
          v445 = v313;
          for (i = 0; v315 < 0x4000; ++i)
          {
            v315 = (2 * v315);
          }

          goto LABEL_604;
        }

        v317 = (v300 - 1);
        LODWORD(v12) = -32768;
        v314 = v433;
        v445 = v317;
        if (v317 < 0)
        {
          LOWORD(v311) = 0;
        }

        else
        {
          LOWORD(v318) = 0;
          LOWORD(v311) = 0;
          do
          {
            v319 = &v469[v318];
            v36 = (v319 + 1);
            if (v319 < v469 || v36 > v471 || v319 > v36)
            {
              goto LABEL_812;
            }

            v318 = v318;
            if (*v319 >= 1)
            {
              v322 = v465 + v318;
              if (v322 < v465)
              {
                goto LABEL_812;
              }

              v36 = (v322 + 1);
              if (v322 + 1 > v466 || v322 > v36)
              {
                goto LABEL_812;
              }

              v323 = *v322 + v311;
              if (v323 < -32768)
              {
                v324 = 1;
              }

              else
              {
                v324 = v271;
              }

              if (v323 <= -32768)
              {
                v325 = 0x8000;
              }

              else
              {
                v325 = v323;
              }

              if (v323 < 0x8000)
              {
                v271 = v324;
              }

              else
              {
                v271 = 1;
              }

              if (v323 < 0x8000)
              {
                LOWORD(v311) = v325;
              }

              else
              {
                LOWORD(v311) = 0x7FFF;
              }
            }

            LODWORD(v318) = (v318 + 1);
          }

          while (v318 <= v317);
          v454 = v271;
        }

        if (!v310)
        {
          goto LABEL_737;
        }

        if (v311)
        {
          if (v311 == 0xFFFF)
          {
            v312 = 14;
            goto LABEL_599;
          }

          v408 = (v311 ^ (v311 >> 15));
          v313 = v317;
          if (v408 >= 0x4000)
          {
            v312 = -1;
          }

          else
          {
            v409 = 0;
            do
            {
              v410 = v409;
              v408 = (2 * v408);
              ++v409;
            }

            while (v408 < 0x4000);
            if (v409 == 0x8000)
            {
              v312 = 0x8000;
            }

            else
            {
              v312 = v410;
            }
          }
        }

        else
        {
          v312 = -1;
LABEL_599:
          v313 = v317;
        }

        if (v310)
        {
          if (v310 != 0xFFFF)
          {
            goto LABEL_561;
          }

          i = 15;
        }

        else
        {
          i = v310;
        }

LABEL_604:
        v326 = v312;
        v327 = shl(v311, v312, &v454);
        v431 = v310;
        v328 = v310;
        v329 = shl(v328, i, &v454);
        v330 = div_s(v327, v329);
        v331 = v326 - i;
        if (v331 >= 0x8000)
        {
          v454 = 1;
          goto LABEL_606;
        }

        if (v331 > -32769)
        {
          if (v331 > 32754)
          {
LABEL_606:
            v332 = 0x7FFF;
          }

          else
          {
            v332 = v331 + 13;
          }
        }

        else
        {
          v454 = 1;
          v332 = -32755;
        }

        v333 = v332;
        result = shl(5, v332, &v454);
        if (v328 < 1)
        {
LABEL_737:
          v396 = v469;
          v397 = v467;
          v223 = a5;
          v253 = a6;
          v254 = &v463;
          v266 = v426;
          while (1)
          {
            v398 = v397 + 1;
            v399 = v397 < v467 || v398 > v468;
            v400 = v399 || v397 > v398;
            v36 = (v396 + 1);
            v401 = !v400 && v396 >= v469;
            v402 = !v401 || v36 > v471;
            if (v402 || v396 > v36)
            {
              goto LABEL_812;
            }

            v36 = v314 + 4 * *v397;
            v404 = v36 + 4;
            v405 = v36 < a5 || v404 > a6;
            if (v405 || v36 > v404)
            {
              goto LABEL_812;
            }

            v407 = *v396++;
            *v36 = v407;
            ++v397;
            if (!--v441)
            {
              goto LABEL_762;
            }
          }
        }

        v334 = result;
        v335 = 0;
        v336 = v330 >> 2;
        v337 = v431;
        v338 = v465;
        while (2)
        {
          v339 = v338 + 1;
          if (v338 < v465 || v339 > v466 || v338 > v339)
          {
            goto LABEL_812;
          }

          v342 = v336 - shl(*v338, v333, &v454);
          if (v342 < 0x8000)
          {
            v344 = v342;
            if ((v342 & 0x8000u) != 0)
            {
              v344 = -v342;
            }

            LODWORD(v36) = -32767;
            if (v342 >= -32767)
            {
              v343 = v344;
            }

            else
            {
              v343 = 0x7FFF;
            }
          }

          else
          {
            v343 = 0x7FFF;
          }

          v345 = v343 - v334;
          if (v345 < 0x8000)
          {
            if (v345 >= 1)
            {
              goto LABEL_630;
            }
          }

          else
          {
            v454 = 1;
LABEL_630:
            if (v335 == 0x7FFF)
            {
              v454 = 1;
              v335 = 0x7FFF;
            }

            else
            {
              ++v335;
            }
          }

          ++v338;
          if (--v337)
          {
            continue;
          }

          break;
        }

        LOWORD(v437) = 0;
        if (v335 <= 0)
        {
          v346 = 19661;
        }

        else
        {
          v346 = 11468;
        }

        v443 = v346;
        while (2)
        {
          if (v445 == 0x7FFF)
          {
            v347 = v445;
          }

          else
          {
            v347 = v445 + 1;
          }

          v348 = v311;
          if (!v311)
          {
            goto LABEL_650;
          }

          if (v311 == 0xFFFF)
          {
            v349 = 14;
            goto LABEL_651;
          }

          v350 = (v311 ^ (v311 >> 15));
          if (v350 < 0x4000)
          {
            v351 = 0;
            do
            {
              v352 = v351;
              v350 = (2 * v350);
              ++v351;
            }

            while (v350 < 0x4000);
            if (v351 == 0x8000)
            {
              v349 = 0x8000;
            }

            else
            {
              v349 = v352;
            }
          }

          else
          {
LABEL_650:
            v349 = -1;
          }

LABEL_651:
          v353 = v347;
          v354 = v347;
          if (v347)
          {
            if (v347 == 0xFFFF)
            {
              v354 = 15;
            }

            else
            {
              v355 = v353 ^ (v353 >> 15);
              if (v355 >= 0x4000)
              {
                v354 = 0;
              }

              else
              {
                v354 = 0;
                do
                {
                  v355 = (2 * v355);
                  ++v354;
                }

                while (v355 < 0x4000);
              }
            }
          }

          v356 = v349;
          v357 = shl(v311, v349, &v454);
          v358 = shl(v353, v354, &v454);
          v359 = div_s(v357, v358);
          v360 = v356 - v354;
          if (v360 < 0x8000)
          {
            if (v360 > -32769)
            {
              if (v360 >= 32755)
              {
                goto LABEL_660;
              }

              v361 = v360 + 13;
            }

            else
            {
              v454 = 1;
              v361 = -32755;
            }
          }

          else
          {
LABEL_660:
            v454 = 1;
            v361 = 0x7FFF;
          }

          if (v348 <= 1)
          {
            v362 = 1;
          }

          else
          {
            v362 = v348;
          }

          v363 = -1;
          if (v429 < 0x4000)
          {
            v364 = 0;
            LOWORD(v365) = v429;
            do
            {
              v363 = v364;
              v365 = (2 * v365);
              ++v364;
            }

            while (v365 < 0x4000);
            if (v364 == 0x8000)
            {
              v454 = 1;
              v363 = 0x8000;
            }
          }

          if (v348 >= 0x4000)
          {
            v366 = 0;
          }

          else
          {
            v366 = 0;
            LOWORD(v367) = v362;
            do
            {
              v367 = (2 * v367);
              ++v366;
            }

            while (v367 < 0x4000);
          }

          v368 = v363;
          v369 = shl(v429, v363, &v454);
          v370 = shl(v362, v366, &v454);
          result = div_s(v369, v370);
          v371 = v368 - v366;
          v435 = v362;
          if (v371 < 0x8000)
          {
            if (v371 > -32769)
            {
              if (v371 >= 32755)
              {
                goto LABEL_679;
              }

              v374 = v371 + 13;
            }

            else
            {
              v454 = 1;
              v374 = -32755;
            }

            v373 = v445;
            v372 = v374 + 1;
            if ((v445 & 0x8000) == 0)
            {
LABEL_686:
              LOWORD(v375) = 0;
              v376 = result >> 2;
              while (1)
              {
                v377 = &v469[v375];
                v378 = v377 + 1;
                v36 = v471;
                v379 = v377 < v469 || v378 > v471;
                if (v379 || v377 > v378)
                {
                  break;
                }

                v381 = v375;
                if (*v377 >= 1)
                {
                  v382 = v465 + v375;
                  if (v382 < v465)
                  {
                    break;
                  }

                  v36 = v466;
                  if (v382 + 1 > v466 || v382 > v382 + 1)
                  {
                    break;
                  }

                  v383 = *v382;
                  v384 = shl(v383, v361, &v454) - (v359 >> 2);
                  if (v384 < 0x8000)
                  {
                    if (v384 > -32769)
                    {
                      v385 = v384;
                    }

                    else
                    {
                      v454 = 1;
                      v385 = -32768;
                    }
                  }

                  else
                  {
                    v454 = 1;
                    v385 = 0x7FFF;
                  }

                  if (v372 < 0x8000)
                  {
                    v386 = v372 - 16;
                    if (v372 <= -32753)
                    {
                      v454 = 1;
                      v386 = 0x8000;
                    }
                  }

                  else
                  {
                    v454 = 1;
                    v386 = 32751;
                  }

                  v387 = L_shr(2 * v383 * v376, v386);
                  v388 = v361;
                  if (v361 >= 32752)
                  {
                    v454 = 1;
                    v388 = 32751;
                  }

                  result = L_shr(2 * v385 * v443, v388);
                  v389 = result + v387;
                  if (((result ^ v387) & 0x80000000) == 0 && (v389 ^ v387) < 0)
                  {
                    v389 = (v387 >> 31) ^ 0x7FFFFFFF;
                    v454 = 1;
                  }

                  *v377 = v389;
                  v373 = v445;
                }

                v375 = (v381 + 1);
                if (v375 > v373)
                {
                  goto LABEL_714;
                }
              }

LABEL_812:
              v123 = v425;
LABEL_813:
              v449 = v123;
              __break(0x5519u);
LABEL_814:
              v449 = v36;
LABEL_815:
              __break(0x5519u);
LABEL_816:
              v449 = v12;
              __break(0x5519u);
LABEL_817:
              v414 = v425;
LABEL_818:
              v449 = v414;
              __break(0x5519u);
            }
          }

          else
          {
LABEL_679:
            v454 = 1;
            v372 = 0x8000;
            v373 = v445;
            if ((v445 & 0x8000) == 0)
            {
              goto LABEL_686;
            }
          }

LABEL_714:
          v390 = &v469[v373];
          v314 = v433;
          LODWORD(v12) = v431;
          if (v390 < v469)
          {
            goto LABEL_812;
          }

          v36 = v471;
          if (v390 + 1 > v471 || v390 > v390 + 1)
          {
            goto LABEL_812;
          }

          v391 = *v390;
          v392 = v391 - v430;
          if ((v430 ^ v391) < 0 && (v392 ^ v391) < 0)
          {
            v454 = 1;
            if ((v391 & 0x80000000) == 0)
            {
              goto LABEL_737;
            }
          }

          else if ((v392 & 0x80000000) == 0)
          {
            goto LABEL_737;
          }

          v469[v445] = 0;
          v36 = v467;
          v393 = v467 + v445;
          if (v393 < v467)
          {
            goto LABEL_812;
          }

          v36 = (v393 + 1);
          if (v393 + 1 > v468)
          {
            goto LABEL_812;
          }

          if (v393 > v36)
          {
            goto LABEL_812;
          }

          LODWORD(v36) = v439;
          v394 = (v439 + 2 * *v393);
          if (v394 < a9)
          {
            goto LABEL_812;
          }

          v36 = (v394 + 1);
          if ((v394 + 1) > a10)
          {
            goto LABEL_812;
          }

          if (v394 > v36)
          {
            goto LABEL_812;
          }

          *v394 = 0;
          v395 = v465 + v445;
          if (v395 < v465)
          {
            goto LABEL_812;
          }

          v36 = v466;
          if (v395 + 1 > v466 || v395 > v395 + 1)
          {
            goto LABEL_812;
          }

          v311 = v435 - *v395;
          if (v311 >= 0x8000)
          {
            v454 = 1;
            LOWORD(v311) = 0x7FFF;
          }

          if (v445 == 0x8000)
          {
            v454 = 1;
            v445 = 0x8000;
          }

          else
          {
            --v445;
          }

          v437 = (v437 + 1);
          if (v437 >= v431)
          {
            goto LABEL_737;
          }

          continue;
        }
      }

      v272 = a9;
      if (v12 >= -32768)
      {
        if (v12 >= 1)
        {
          v271 = 0;
          goto LABEL_504;
        }

        v283 = v254;
      }

      else
      {
        v283 = v254;
        LOWORD(v12) = 0x8000;
      }

      result = reordvct(v465, v466, v12, v467, v468);
      v254 = v283;
LABEL_762:
      if (++v266 == 4)
      {
        return result;
      }

      continue;
    }

    break;
  }

  v273 = *v268;
  v274 = v268[1] - v269;
  if (v274 >= -32768)
  {
    v275 = v268[1] - v269;
  }

  else
  {
    v275 = 0x8000;
  }

  v276 = v223 + 4 * v269;
  v277 = v274 >= -32768 && v274 <= 0x7FFF;
  v278 = v425;
  if (!v277)
  {
    v278 = 1;
  }

  v425 = v278;
  if (v274 >= 0x8000)
  {
    v275 = 0x7FFF;
  }

  v279 = v276 <= v253 && v276 >= v223;
  if (!v279 || v275 < 0 || (v253 - v276) >> 2 < v275)
  {
    goto LABEL_817;
  }

  v280 = v223;
  v281 = v254;
  result = set_val_Word32(v276, 0, v275);
  v254 = v281;
  v223 = v280;
  if (v266 != 3)
  {
    goto LABEL_762;
  }

  if (v274 >= -32768)
  {
    v411 = v274;
  }

  else
  {
    v411 = 0x8000;
  }

  v412 = v274 >= -32768 && v274 <= 0x7FFF;
  v413 = a9 + 2 * v273;
  v414 = v425;
  if (!v412)
  {
    v414 = 1;
  }

  if (v274 >= 0x8000)
  {
    v411 = 0x7FFF;
  }

  if (v413 > a10 || v413 < a9 || v411 < 0 || (a10 - v413) >> 1 < v411)
  {
    goto LABEL_818;
  }

  return set_val_Word16(v413, v411);
}

void mdct_spectrum_denorm(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7, unint64_t a8, float a9, float a10, unint64_t a11, unint64_t a12, unint64_t a13, unint64_t a14, unint64_t a15, unint64_t a16, __int16 a17)
{
  if (a17 >= 1)
  {
    v23 = 0;
    v24 = a17;
    v61 = a6;
    v62 = a8;
    while (1)
    {
      v25 = (a5 + 2 * v23);
      v26 = v25 + 1;
      v27 = v25 < a5 || v26 > a6;
      v28 = v27 || v25 > v26;
      v29 = (a7 + 2 * v23);
      v30 = v29 + 1;
      v31 = !v28 && v29 >= a7;
      v32 = !v31 || v30 > a8;
      if (v32 || v29 > v30)
      {
        break;
      }

      v34 = *v25;
      v35 = *v29;
      if (v34 <= v35)
      {
        v36 = 0.0;
        LOWORD(v25) = *v25;
        while (1)
        {
          v37 = (a1 + 4 * v25);
          v38 = v37 + 1;
          v39 = v37 < a1 || v38 > a2;
          if (v39 || v37 > v38)
          {
            goto LABEL_61;
          }

          v36 = v36 + (*v37 * *v37);
          LODWORD(v25) = (v25 + 1);
          if (v25 > v35)
          {
            if (v36 <= 0.0)
            {
              break;
            }

            v41 = (a13 + 4 * v23);
            if (v41 >= a13 && (v41 + 1) <= a14 && v41 <= v41 + 1)
            {
              v42 = a7;
              v43 = a5;
              v44 = v24;
              v45 = exp2(*v41);
              a6 = v61;
              a8 = v62;
              v46 = (a15 + 4 * v23);
              if (v46 >= a15 && (v46 + 1) <= a16 && v46 <= v46 + 1)
              {
                v47 = (a11 + 2 * v23);
                if (v47 >= a11 && (v47 + 1) <= a12 && v47 <= v47 + 1)
                {
                  v48 = sqrt(v45 / v36);
                  v49 = *v46 / *v47;
                  if (v49 >= a10)
                  {
                    v24 = v44;
                    a5 = v43;
                    a7 = v42;
                  }

                  else
                  {
                    v50 = log((v49 / a10)) / 0.693147181;
                    v51 = exp2((v50 * a9));
                    v24 = v44;
                    a5 = v43;
                    a7 = v42;
                    a6 = v61;
                    a8 = v62;
                    *&v51 = v51;
                    v48 = v48 * *&v51;
                  }

                  while (1)
                  {
                    v52 = (a1 + 4 * v34);
                    v53 = v52 + 1;
                    v54 = v52 < a1 || v53 > a2;
                    v55 = v54 || v52 > v53;
                    v56 = (a3 + 4 * v34);
                    v57 = v56 + 1;
                    v58 = !v55 && v56 >= a3;
                    v59 = !v58 || v57 > a4;
                    if (v59 || v56 > v57)
                    {
                      break;
                    }

                    *v56 = v48 * *v52;
                    v34 = (v34 + 1);
                    if (v34 > v35)
                    {
                      goto LABEL_59;
                    }
                  }
                }
              }
            }

            goto LABEL_61;
          }
        }
      }

LABEL_59:
      if (++v23 == v24)
      {
        return;
      }
    }

LABEL_61:
    __break(0x5519u);
  }
}

uint64_t div_l(unsigned int a1, int a2, _DWORD *a3)
{
  v3 = 0;
  if (a2)
  {
    if ((a1 & 0x80000000) == 0 && (a2 & 0x80000000) == 0)
    {
      v3 = 0x7FFF;
      if (a1 < a2 << 16)
      {
        v4 = 0;
        v3 = 0;
        v5 = a1 >> 1;
        v6 = a2 << 15;
        do
        {
          if (2 * v3 == (2 * v3))
          {
            v3 *= 2;
          }

          else
          {
            *a3 = 1;
            if (v3 > 0)
            {
              v3 = 0x7FFF;
            }

            else
            {
              v3 = 0x8000;
            }
          }

          v7 = v5 - 0x40000000;
          v8 = 2 * v5;
          v9 = (v5 >> 31) ^ 0x7FFFFFFF;
          if (v7 >= 0)
          {
            v10 = v9;
          }

          else
          {
            v10 = v8;
          }

          v5 = v10 - v6;
          if (v10 >= v6)
          {
            if (v3 == 0x7FFF)
            {
              *a3 = 1;
              v3 = 0x7FFF;
            }

            else
            {
              ++v3;
            }
          }

          else
          {
            v5 = v10;
          }
        }

        while (v4++ < 0xE);
      }
    }
  }

  return v3;
}

unint64_t spt_shorten_domain_band_restore(int a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7, uint64_t a8, unint64_t a9, unint64_t a10, unint64_t a11, unint64_t a12, unint64_t a13, unint64_t a14)
{
  v14 = 0;
  v15 = a6 + 2 * a1;
  v16 = a4 + 2 * a1;
  v17 = a2 + 2 * a1;
  while (1)
  {
    result = a9 + v14;
    v19 = a9 + v14 + 2;
    v20 = a9 + v14 < a9 || v19 > a10;
    if (v20 || result > v19)
    {
      break;
    }

    v22 = (v17 + v14 - 8);
    if (v22 < a2)
    {
      break;
    }

    v23 = v17 + v14 - 6;
    if (v23 > a3)
    {
      break;
    }

    if (v22 > v23)
    {
      break;
    }

    *v22 = *result;
    result = a11 + v14;
    if (a11 + v14 < a11)
    {
      break;
    }

    if (result + 2 > a12)
    {
      break;
    }

    if (result > result + 2)
    {
      break;
    }

    v24 = (v16 + v14 - 8);
    if (v24 < a4)
    {
      break;
    }

    v25 = v16 + v14 - 6;
    if (v25 > a5)
    {
      break;
    }

    if (v24 > v25)
    {
      break;
    }

    *v24 = *result;
    result = a13 + v14;
    if (a13 + v14 < a13)
    {
      break;
    }

    if (result + 2 > a14)
    {
      break;
    }

    if (result > result + 2)
    {
      break;
    }

    v26 = (v15 + v14 - 8);
    if (v26 < a6)
    {
      break;
    }

    v27 = v15 + v14 - 6;
    if (v27 > a7 || v26 > v27)
    {
      break;
    }

    result = *result;
    *v26 = result;
    v14 += 2;
    if (v14 == 8)
    {
      return result;
    }
  }

  __break(0x5519u);
  return result;
}

float *hq2_noise_inject(float *result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7, unint64_t a8, float a9, float a10, unint64_t a11, unint64_t a12, unint64_t a13, unint64_t a14, unint64_t a15, unint64_t a16, __int16 a17, __int16 a18, __int16 a19, __int16 a20, float *a21, unint64_t a22, float *a23, unint64_t a24, __int16 *a25, unint64_t a26, unint64_t a27, unint64_t a28, __int16 a29, __int16 a30, __int16 a31, uint64_t a32)
{
  v198[0] = *MEMORY[0x1E69E9840];
  v32 = a18;
  memset(__src, 0, sizeof(__src));
  if ((a30 | 2) == 2)
  {
    v32 = a32 == 16400 ? 19 : 17;
    v33 = a32 == 13200 || a32 == 16400;
    if (!v33 || a31 != 2)
    {
      v32 = a18;
    }
  }

  v35 = a26;
  *&v36 = 0xAAAAAAAAAAAAAAAALL;
  *(&v36 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v197[2] = v36;
  v197[3] = v36;
  v197[0] = v36;
  v197[1] = v36;
  *&v36 = -1;
  *(&v36 + 1) = -1;
  v196[0] = v36;
  v196[1] = v36;
  v196[2] = v36;
  v196[3] = v36;
  v196[4] = v36;
  v196[5] = v36;
  v196[6] = v36;
  v196[7] = v36;
  v195[0] = v36;
  v195[1] = v36;
  v195[2] = v36;
  v195[3] = v36;
  v195[4] = v36;
  v195[5] = v36;
  v195[6] = v36;
  v195[7] = v36;
  v194[6] = v36;
  v194[7] = v36;
  v194[4] = v36;
  v194[5] = v36;
  v194[2] = v36;
  v194[3] = v36;
  v194[0] = v36;
  v194[1] = v36;
  v192 = a18 - 1;
  if (a18 < 1)
  {
    v190 = a18;
    goto LABEL_368;
  }

  v189 = v32;
  v37 = 0;
  v38 = a17;
  v190 = a18;
  do
  {
    v39 = (a13 + 4 * v37);
    v40 = v39 + 1;
    v42 = v39 < a13 || v40 > a14 || v39 > v40;
    v43 = (a7 + 2 * v37);
    v44 = v43 + 1;
    v47 = v42 || v43 < a7 || v44 > a8 || v43 > v44;
    v48 = v195 + 4 * v37;
    v49 = v48 + 4;
    if (v47 || v48 < v195 || v49 > v196 || v48 > v49)
    {
      goto LABEL_371;
    }

    v53 = *v43;
    *(v195 + v37) = *v39 / v53;
    v54 = (a11 + 4 * v37);
    if (v54 < a11)
    {
      goto LABEL_371;
    }

    if ((v54 + 1) > a12)
    {
      goto LABEL_371;
    }

    if (v54 > v54 + 1)
    {
      goto LABEL_371;
    }

    v55 = __src + 4 * v37;
    if (v55 < __src)
    {
      goto LABEL_371;
    }

    if (v55 + 4 > v194)
    {
      goto LABEL_371;
    }

    if (v55 > v55 + 4)
    {
      goto LABEL_371;
    }

    v56 = sqrtf(*v54 / v53);
    *(__src + v37) = v56;
    v57 = v194 + v37;
    if (v57 < v194)
    {
      goto LABEL_371;
    }

    if (v57 + 1 > v195)
    {
      goto LABEL_371;
    }

    if (v57 > v57 + 1)
    {
      goto LABEL_371;
    }

    *(v194 + v37) = 0;
    v58 = v197 + v37;
    if (v58 < v197)
    {
      goto LABEL_371;
    }

    if (v58 + 1 > v198)
    {
      goto LABEL_371;
    }

    if (v58 > v58 + 1)
    {
      goto LABEL_371;
    }

    *(v197 + v37) = 0;
    v59 = (a15 + 4 * v37);
    if (v59 < a15 || (v59 + 1) > a16 || v59 > v59 + 1)
    {
      goto LABEL_371;
    }

    if (*v59)
    {
      v60 = (a3 + 2 * v37);
      if (v60 < a3)
      {
        goto LABEL_371;
      }

      if ((v60 + 1) > a4)
      {
        goto LABEL_371;
      }

      if (v60 > v60 + 1)
      {
        goto LABEL_371;
      }

      v61 = (a5 + 2 * v37);
      if (v61 < a5 || (v61 + 1) > a6 || v61 > v61 + 1)
      {
        goto LABEL_371;
      }

      v62 = *v60;
      v63 = *v61;
      if (v62 <= v63)
      {
        v65 = 0;
        v66 = 0.0;
        do
        {
          v67 = &result[v62];
          v68 = v67 + 1;
          if (v67 < result || v68 > a2 || v67 > v68)
          {
            goto LABEL_371;
          }

          v64 = *v54 - (*v67 * *v67);
          *v54 = v64;
          v71 = *v67;
          v72 = fabsf(*v67);
          if (v72 > v66)
          {
            *v57 = v72;
            v66 = v72;
          }

          if (v71 != 0.0)
          {
            *v58 = ++v65;
          }

          v62 = (v62 + 1);
        }

        while (v62 <= v63);
      }

      else
      {
        v64 = *v54;
      }

      v56 = 0.0;
      if (v64 > 0.0)
      {
        v56 = sqrtf(v64 / v53);
      }

      v190 = v37;
    }

    *v54 = v56;
    ++v37;
  }

  while (v37 != a18);
  v73 = 0;
  v74 = a18 - a29;
  v75 = a31 == 2 && a30 == 2;
  v76 = a19 * a10;
  v77 = a20 * a9;
  if (v75)
  {
    v78 = 0.8;
  }

  else
  {
    v78 = 1.1;
  }

  v80 = (a25 + 1) <= a26 && a25 + 1 >= a25;
  v188 = v80;
  v81 = 4 * a18 - 8;
  v82 = __src + v81;
  v85 = (__src + v81 + 4) > v194 || v82 > v82 + 4 || v82 < __src;
  v86 = (a23 + v81);
  v87 = a23 + v81 + 4;
  v90 = v87 > a24 || v86 > v87 || v86 < a23;
  v187 = v85 || v90;
  v186 = v86;
  do
  {
    v91 = v195 + v73;
    v92 = v91 + 1;
    if (v91 < v195 || v92 > v196 || v91 > v92)
    {
      goto LABEL_371;
    }

    v95 = *v91;
    v96 = v196 + v73;
    if (*v91 < 0.8)
    {
      v97 = (a11 + 4 * v73);
      if (v97 < a11 || (v97 + 1) > a12 || v97 > v97 + 1)
      {
        goto LABEL_371;
      }

      v98 = *v97;
      if (*v97 > 0.0)
      {
        v99 = (a15 + 4 * v73);
        if (v99 < a15 || (v99 + 1) > a16 || v99 > v99 + 1)
        {
          goto LABEL_371;
        }

        v100 = v78;
        if (!*v99)
        {
          goto LABEL_209;
        }

        if (a31 == 2)
        {
          v100 = 1.1;
          if (a30 == 1)
          {
            goto LABEL_209;
          }

          if (a30 == 2)
          {
            if (v73 <= v189)
            {
              v124 = __src + v73;
              if (v124 < __src)
              {
                goto LABEL_371;
              }

              if (v124 + 1 > v194)
              {
                goto LABEL_371;
              }

              if (v124 > v124 + 1)
              {
                goto LABEL_371;
              }

              v125 = v194 + v73;
              if (v125 < v194 || v125 + 1 > v195 || v125 > v125 + 1)
              {
                goto LABEL_371;
              }

              v102 = v98 * (((1.5 - v95) * 6.0) * *v124);
              v126 = *v125 * *v125;
              goto LABEL_208;
            }

            v101 = v194 + v73;
            if (v101 < v194 || v101 + 1 > v195 || v101 > v101 + 1)
            {
              goto LABEL_371;
            }

            v102 = v98 * 1.5;
          }

          else
          {
            v101 = v194 + v73;
            v123 = v101 + 1 <= v195 && v101 <= v101 + 1 && v101 >= v194;
            if (v73 <= v189)
            {
              if (!v123)
              {
                goto LABEL_371;
              }

              v102 = ((1.5 - v95) * 5.0) * v98;
            }

            else
            {
              if (!v123)
              {
                goto LABEL_371;
              }

              v102 = v98 * 4.0;
            }
          }

          v126 = *v101;
LABEL_208:
          v100 = v102 / v126;
LABEL_209:
          if (v96 < v196 || v96 + 1 > v197 || v96 > v96 + 1)
          {
            goto LABEL_371;
          }

          v103 = v98 * v100;
          *v96 = v103;
          goto LABEL_213;
        }

        v104 = __src + 4 * v73;
        if (v104 < __src)
        {
          goto LABEL_371;
        }

        if (v104 + 4 > v194)
        {
          goto LABEL_371;
        }

        if (v104 > v104 + 4)
        {
          goto LABEL_371;
        }

        v105 = v194 + 4 * v73;
        if (v105 < v194 || v105 + 4 > v195 || v105 > v105 + 4)
        {
          goto LABEL_371;
        }

        v106 = *(__src + v73);
        if ((1.5 - v95) <= 1.0)
        {
          v107 = (1.5 - v95) * 20.0;
        }

        else
        {
          v107 = 20.0;
        }

        v108 = *(v194 + v73);
        v100 = (v98 * (v107 * v106)) / (v108 * v108);
        if (v73 >= 2 && v192 > v73)
        {
          v109 = (v73 + 1);
          v110 = v197 + v109;
          if (v110 < v197 || v110 + 1 > v198 || v110 > v110 + 1)
          {
            goto LABEL_371;
          }

          if (!*v110)
          {
            v111 = __src + v109;
            if (v111 < __src || v111 + 1 > v194 || v111 > v111 + 1)
            {
              goto LABEL_371;
            }

            v112 = *v111;
            if (v106 > (*v111 * 0.5))
            {
              v113 = (v104 - 4);
              if (v104 - 4 < __src || v104 > v194 || v113 > v104)
              {
                goto LABEL_371;
              }

              if (v106 < (*v113 + *v113))
              {
                v114 = v112 * 1.5;
LABEL_173:
                v100 = v114 / v106;
                goto LABEL_174;
              }
            }
          }

          v115 = (v73 - 1);
          v116 = v197 + v115;
          if (v116 < v197 || v116 + 1 > v198 || v116 > v116 + 1)
          {
            goto LABEL_371;
          }

          if (!*v116 && v108 > (v106 + v106))
          {
            v117 = __src + v115;
            if (v117 < __src || v117 + 1 > v194 || v117 > v117 + 1)
            {
              goto LABEL_371;
            }

            v114 = *v117;
            goto LABEL_173;
          }
        }

LABEL_174:
        if (a31 == 1 && v74 <= v73)
        {
          v118 = v108 < (v106 + v106);
          v119 = (2.0 - (v98 / v108)) * v100;
          if (!v118)
          {
            v119 = v100;
          }

          if (v76 > v77)
          {
            v100 = v119;
          }

          v120 = (a27 + 2 * v73);
          if (v120 < a27 || (v120 + 1) > a28 || v120 > v120 + 1)
          {
            goto LABEL_371;
          }

          if (!*v120 && v100 > 0.0)
          {
            v100 = v100 * fminf((v106 * 1.25) / (v98 * v100), 1.5);
          }
        }

        goto LABEL_209;
      }
    }

    if (v96 < v196 || v96 + 1 > v197 || v96 > v96 + 1)
    {
      goto LABEL_371;
    }

    *v96 = 0.0;
    v103 = 0.0;
LABEL_213:
    v127 = v192;
    if (a31 != 2)
    {
      if (!v188)
      {
        goto LABEL_371;
      }

      v127 = v190;
      if (v190 <= *a25)
      {
        v127 = *a25;
      }
    }

    if (v73 > v127)
    {
      goto LABEL_265;
    }

    if (v73 && v192 > v73)
    {
      v128 = __src + 4 * v73;
      if (v128 < __src)
      {
        goto LABEL_371;
      }

      if (v128 + 4 > v194)
      {
        goto LABEL_371;
      }

      if (v128 > v128 + 4)
      {
        goto LABEL_371;
      }

      v129 = &a23[v73];
      if (v129 < a23 || (v129 + 1) > a24 || v129 > v129 + 1)
      {
        goto LABEL_371;
      }

      v130 = *(__src + v73);
      v131 = *v129;
      if (v130 > (*v129 * 0.5) && v130 < (v131 + v131))
      {
        goto LABEL_255;
      }

      v132 = (v73 - 1);
      v133 = __src + 4 * v132;
      if (v133 < __src)
      {
        goto LABEL_371;
      }

      if (v133 + 4 > v194)
      {
        goto LABEL_371;
      }

      if (v133 > v133 + 4)
      {
        goto LABEL_371;
      }

      v134 = (v73 + 1);
      v135 = __src + v134;
      if (v135 < __src)
      {
        goto LABEL_371;
      }

      if (v135 + 1 > v194)
      {
        goto LABEL_371;
      }

      if (v135 > v135 + 1)
      {
        goto LABEL_371;
      }

      v136 = &a23[v132];
      if (v136 < a23)
      {
        goto LABEL_371;
      }

      if ((v136 + 1) > a24)
      {
        goto LABEL_371;
      }

      if (v136 > v136 + 1)
      {
        goto LABEL_371;
      }

      v137 = &a23[v134];
      if (v137 < a23 || (v137 + 1) > a24 || v137 > v137 + 1)
      {
        goto LABEL_371;
      }

      v138 = (v130 + *(__src + v132)) + *v135;
      v139 = (v131 + *v136) + *v137;
      if (v138 > (v139 * 0.5) && v138 < (v139 + v139))
      {
        goto LABEL_255;
      }
    }

    else if (v192 == v73)
    {
      v140 = __src + 4 * v73;
      if (v140 < __src)
      {
        goto LABEL_371;
      }

      if (v140 + 4 > v194)
      {
        goto LABEL_371;
      }

      if (v140 > v140 + 4)
      {
        goto LABEL_371;
      }

      v141 = &a23[v73];
      if (v141 < a23 || (v141 + 1) > a24 || v141 > v141 + 1)
      {
        goto LABEL_371;
      }

      v142 = *(__src + v73);
      v143 = *v141;
      if (v142 > (*v141 * 0.5) && v142 < (v143 + v143))
      {
        goto LABEL_255;
      }

      if (v187)
      {
        goto LABEL_371;
      }

      v144 = v142 + *(__src + a18 - 2);
      v145 = v143 + *v186;
      if (v144 > (v145 * 0.5) && v144 < (v145 + v145))
      {
LABEL_255:
        if (v96 < v196)
        {
          goto LABEL_371;
        }

        if (v96 + 1 > v197)
        {
          goto LABEL_371;
        }

        if (v96 > v96 + 1)
        {
          goto LABEL_371;
        }

        v146 = &a21[v73];
        if (v146 < a21 || (v146 + 1) > a22 || v146 > v146 + 1)
        {
          goto LABEL_371;
        }

        v147 = *v146;
        if (v103 <= *v146)
        {
          v148 = v147 * 0.4;
          v149 = 0.6;
        }

        else
        {
          v148 = v147 * 0.8;
          v149 = 0.2;
        }

        v103 = v148 + (v103 * v149);
        *v96 = v103;
      }
    }

LABEL_265:
    if (v74 <= v73)
    {
      v165 = (a27 + 2 * v73);
      if (v165 < a27 || (v165 + 1) > a28 || v165 > v165 + 1)
      {
        goto LABEL_371;
      }

      if (a31 != 2 && !*v165)
      {
        v166 = (a3 + 2 * v73);
        if (v166 < a3)
        {
          goto LABEL_371;
        }

        if ((v166 + 1) > a4)
        {
          goto LABEL_371;
        }

        if (v166 > v166 + 1)
        {
          goto LABEL_371;
        }

        v167 = (a5 + 2 * v73);
        if (v167 < a5 || (v167 + 1) > a6 || v167 > v167 + 1)
        {
          goto LABEL_371;
        }

        v168 = *v166;
        v169 = *v167;
        if (v168 <= v169)
        {
          while (1)
          {
            v181 = &result[v168];
            v182 = v181 + 1;
            v183 = v181 < result || v182 > a2;
            if (v183 || v181 > v182)
            {
              break;
            }

            if (*v181 != 0.0)
            {
              *v181 = *v181 * 0.8;
            }

            v168 = (v168 + 1);
            if (v168 > v169)
            {
              goto LABEL_266;
            }
          }

LABEL_371:
          __break(0x5519u);
        }
      }

LABEL_320:
      v170 = (a3 + 2 * v73);
      if (v170 < a3)
      {
        goto LABEL_371;
      }

      if ((v170 + 1) > a4)
      {
        goto LABEL_371;
      }

      if (v170 > v170 + 1)
      {
        goto LABEL_371;
      }

      v171 = (a5 + 2 * v73);
      if (v171 < a5 || (v171 + 1) > a6 || v171 > v171 + 1)
      {
        goto LABEL_371;
      }

      v172 = *v170;
      v175 = v96 + 1 <= v197 && v96 <= v96 + 1 && v96 >= v196;
      v176 = *v171;
      while (v172 <= v176)
      {
        v177 = &result[v172];
        v178 = v177 + 1;
        if (v177 < result || v178 > a2 || v177 > v178)
        {
          goto LABEL_371;
        }

        if (*v177 == 0.0)
        {
          if (!v175)
          {
            goto LABEL_371;
          }

          v38 = 31821 * v38 + 13849;
          *v177 = *v177 + (v103 * vcvts_n_f32_s32(v38, 0xFuLL));
        }

        v172 = (v172 + 1);
      }

      goto LABEL_306;
    }

LABEL_266:
    if (a31 == 2 || v73 != v190 || v74 <= v73 || v95 >= 0.8)
    {
      goto LABEL_320;
    }

    if (v96 < v196 || v96 + 1 > v197 || v96 > v96 + 1)
    {
      goto LABEL_371;
    }

    v150 = 0.0;
    if (v103 >= 0.01)
    {
      v151 = (a11 + 4 * v73);
      if (v151 < a11 || (v151 + 1) > a12 || v151 > v151 + 1)
      {
        goto LABEL_371;
      }

      v150 = fmaxf(*v151 / v103, 1.0);
    }

    v152 = (a3 + 2 * v73);
    if (v152 < a3)
    {
      goto LABEL_371;
    }

    if ((v152 + 1) > a4)
    {
      goto LABEL_371;
    }

    if (v152 > v152 + 1)
    {
      goto LABEL_371;
    }

    v153 = (a5 + 2 * v73);
    if (v153 < a5 || (v153 + 1) > a6 || v153 > v153 + 1)
    {
      goto LABEL_371;
    }

    v154 = *v152;
    v155 = (a7 + 2 * v73);
    v158 = (v155 + 1) <= a8 && v155 <= v155 + 1 && v155 >= a7;
    v159 = *v153;
    if (v154 <= v159)
    {
      v160 = 0;
      do
      {
        v161 = &result[v154];
        v162 = v161 + 1;
        v163 = v161 < result || v162 > a2;
        if (v163 || v161 > v162)
        {
          goto LABEL_371;
        }

        if (*v161 == 0.0)
        {
          if (!v158)
          {
            goto LABEL_371;
          }

          v38 = 31821 * v38 + 13849;
          *v161 = *v161 + ((v103 * (v150 - (((v150 + -1.0) * v160) / *v155))) * vcvts_n_f32_s32(v38, 0xFuLL));
        }

        ++v160;
        v154 = (v154 + 1);
      }

      while (v154 <= v159);
    }

LABEL_306:
    ++v73;
  }

  while (v73 != a18);
  if (a24 < a23)
  {
    goto LABEL_371;
  }

  if (a18 > 0x20)
  {
    goto LABEL_371;
  }

  v185 = 4 * a18;
  if (v185 > a24 - a23)
  {
    goto LABEL_371;
  }

  memmove(a23, __src, 4 * a18);
  if (&a23[v185 / 4] < a23)
  {
    goto LABEL_371;
  }

  if (a22 < a21)
  {
    goto LABEL_371;
  }

  if (v185 > a22 - a21)
  {
    goto LABEL_371;
  }

  result = memmove(a21, v196, v185);
  v35 = a26;
  if (&a21[v185 / 4] < a21)
  {
    goto LABEL_371;
  }

LABEL_368:
  if ((a25 + 1) > v35 || a25 + 1 < a25)
  {
    goto LABEL_371;
  }

  *a25 = v190;
  return result;
}

void preset_hq2_swb(int a1, unint64_t a2, unint64_t a3, _WORD *a4, __int16 a5, int a6, int a7, _WORD *a8, _WORD *a9, float *a10)
{
  if (a1 == 2)
  {
    v12 = a7 - a5 + 1;
    *a4 = v12;
    v13 = a2 + 2 * v12;
    v14 = (v13 - 2);
  }

  else
  {
    v15 = a2 + 2 * a7;
    v14 = (v15 - 10);
    v13 = v15 - 8;
  }

  if (v14 < a2 || v13 > a3 || v14 > v13)
  {
    __break(0x5519u);
  }

  else
  {
    v20 = v10;
    v21 = v11;
    v18 = *v14 + 1;
    *a8 = v18;
    *a9 = a6 - v18;
    v19 = 0.0;
    vDSP_vfill(&v19, a10, 1, a6);
  }
}

unint64_t post_hq2_swb(unint64_t result, unint64_t a2, int a3, int a4, int a5, int a6, int a7, unint64_t a8, unint64_t a9, unint64_t a10, unint64_t a11, unint64_t a12, unint64_t a13)
{
  v14 = (result + 4 * a3);
  v15 = a11 + 4 * a3;
  v16 = v14 >= result && v15 >= a11;
  if (!v16 || a4 >= 1 && ((v21 = 4 * a4, a12 >= v15) ? (v22 = a2 >= v14) : (v22 = 0), v22 ? (v23 = v21 > a2 - v14) : (v23 = 1), !v23 ? (v24 = v21 > a12 - v15) : (v24 = 1), v24 || (result = memmove((a11 + 4 * a3), v14, 4 * a4), v15 + v21 < v15)))
  {
LABEL_51:
    __break(0x5519u);
    return result;
  }

  if (a5 == 2)
  {
    LODWORD(v25) = a6;
  }

  else
  {
    LODWORD(v25) = a7 - 4;
  }

  if (v25 < a7)
  {
    v25 = v25;
    while (1)
    {
      v26 = (a8 + 2 * v25);
      result = (v26 + 1);
      v27 = v26 < a8 || result > a8 + 2 * a7;
      if (v27 || v26 > result)
      {
        goto LABEL_51;
      }

      if (!*v26)
      {
        v29 = (a13 + 4 * v25);
        if (v29 < a13)
        {
          goto LABEL_51;
        }

        result = (v29 + 1);
        if ((v29 + 1) > a13 + 4 * a7 || v29 > result)
        {
          goto LABEL_51;
        }

        result = *v29;
        if (!result)
        {
          result = a9 + 2 * v25;
          if (result < a9)
          {
            goto LABEL_51;
          }

          if (result + 2 > a9 + 2 * a7)
          {
            goto LABEL_51;
          }

          if (result > result + 2)
          {
            goto LABEL_51;
          }

          v30 = (a10 + 2 * v25);
          if (v30 < a10 || (v30 + 1) > a10 + 2 * a7 || v30 > v30 + 1)
          {
            goto LABEL_51;
          }

          v31 = *result;
          v32 = *v30;
          if (v31 <= v32)
          {
            result = 0;
            v33 = v32 - v31 + 1;
            v34 = (a11 + 4 * v31);
            while (v34 >= a11 && (v34 + 1) <= a12 && v34 <= v34 + 1)
            {
              if (*v34 != 0.0)
              {
                result = (result + 1);
                *v29 = result;
              }

              ++v34;
              if (!--v33)
              {
                goto LABEL_49;
              }
            }

            goto LABEL_51;
          }
        }
      }

LABEL_49:
      if (++v25 == a7)
      {
        return result;
      }
    }
  }

  return result;
}

unint64_t spt_swb_peakpos_tmp_save(unint64_t result, unint64_t a2, int a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7, uint64_t a8, unint64_t a9, unint64_t a10)
{
  if (a3 >= -32764)
  {
    v10 = 0;
    for (i = (a3 - 4); ; ++i)
    {
      v12 = (a9 + 2 * v10);
      v13 = v12 + 1;
      v14 = v12 < a9 || v13 > a10;
      if (v14 || v12 > v13)
      {
        break;
      }

      *v12 = 0;
      v16 = (a4 + 2 * i);
      if (v16 < a4)
      {
        break;
      }

      if ((v16 + 1) > a5)
      {
        break;
      }

      if (v16 > v16 + 1)
      {
        break;
      }

      v17 = (a6 + 2 * i);
      if (v17 < a6 || (v17 + 1) > a7 || v17 > v17 + 1)
      {
        break;
      }

      v18 = *v16;
      v19 = *v17;
      if (v18 <= v19)
      {
        v20 = 0.0;
        do
        {
          v21 = (result + 4 * v18);
          v22 = v21 + 1;
          v23 = v21 < result || v22 > a2;
          if (v23 || v21 > v22)
          {
            goto LABEL_30;
          }

          v25 = fabsf(*v21);
          if (v20 < v25)
          {
            *v12 = v18;
            LOWORD(v19) = *v17;
            v20 = v25;
          }

          v18 = (v18 + 1);
        }

        while (v18 <= v19);
      }

      if (++v10 == 4)
      {
        return result;
      }
    }

LABEL_30:
    __break(0x5519u);
  }

  return result;
}

void updat_prev_frm(char *__src, unint64_t a2, char *__dst, unint64_t a4, uint64_t a5, int a6, int a7, int a8, __int16 a9, __int16 a10, __int16 a11, _WORD *a12, unint64_t a13, unint64_t a14, unint64_t a15, unint64_t a16, _WORD *a17, _WORD *a18, __int16 a19)
{
  if (!a10)
  {
    if (a6 < 1 || a4 >= __dst && a2 >= __src && (v33 = 4 * a6, v33 <= a2 - __src) && v33 <= a4 - __dst && (memmove(__dst, __src, 4 * a6), &__dst[v33] >= __dst))
    {
      if (a7 <= a6)
      {
        goto LABEL_33;
      }

      v34 = &__dst[4 * a6];
      if (v34 >= __dst)
      {
        v46 = 0.0;
        vDSP_vfill(&v46, v34, 1, (a7 - a6));
        goto LABEL_33;
      }
    }

LABEL_53:
    __break(0x5519u);
    return;
  }

  if (a7 != a6 && a19 <= 0)
  {
    v23 = 0;
    v24 = 0;
    v45 = (a6 + ((a6 >> 29) & 3)) >> 2;
    v26 = a7 - a6;
    if (a7 < a6)
    {
      v26 = a7 - a6 + 3;
    }

    v27 = (a6 + ((a6 >> 29) & 3)) & 0xFFFCLL;
    v28 = v26 >> 2;
    v29 = 4;
    while (1)
    {
      v30 = &__src[4 * (v23 / 4)];
      if (v30 < __src)
      {
        goto LABEL_53;
      }

      v31 = &__dst[4 * (v24 / 4)];
      if (v31 < __dst)
      {
        goto LABEL_53;
      }

      if (a6 >= 4)
      {
        if (a4 < v31)
        {
          goto LABEL_53;
        }

        if (a2 < v30)
        {
          goto LABEL_53;
        }

        if (a2 - v30 < v27)
        {
          goto LABEL_53;
        }

        if (a4 - v31 < v27)
        {
          goto LABEL_53;
        }

        memmove(v31, v30, v27);
        if (&v31[v27] < v31)
        {
          goto LABEL_53;
        }
      }

      v32 = &v31[4 * v45];
      if (v32 < __dst)
      {
        goto LABEL_53;
      }

      __A = 0.0;
      vDSP_vfill(&__A, v32, 1, v28);
      v24 += a7;
      v23 += a6;
      if (!--v29)
      {
        goto LABEL_33;
      }
    }
  }

  if (a6 >= 1)
  {
    if (a4 < __dst)
    {
      goto LABEL_53;
    }

    if (a2 < __src)
    {
      goto LABEL_53;
    }

    v35 = 4 * a6;
    if (v35 > a2 - __src)
    {
      goto LABEL_53;
    }

    if (v35 > a4 - __dst)
    {
      goto LABEL_53;
    }

    memmove(__dst, __src, 4 * a6);
    if (&__dst[v35] < __dst)
    {
      goto LABEL_53;
    }
  }

LABEL_33:
  v36 = a5 == 13200 || a5 == 16400;
  if (v36 && a9 == 2)
  {
    *a12 = a11;
    if (a11 != 2)
    {
      *a17 = 0;
      *a18 = 0;
      if (!a11 && a8 >= -32764)
      {
        v37 = 4;
        v38 = a13;
        v39 = a15;
        while (v39 >= a15 && (v39 + 1) <= a16 && v39 <= v39 + 1 && v38 >= a13 && (v38 + 1) <= a14 && v38 <= v38 + 1)
        {
          v40 = *v39++;
          *v38++ = v40;
          if (!--v37)
          {
            return;
          }
        }

        goto LABEL_53;
      }
    }
  }

  else
  {
    *a12 = a10;
  }
}

uint64_t hf_parinitiz(uint64_t result, int a2, __int16 a3, __int16 a4, _WORD *a5, unint64_t a6, void *a7, unint64_t a8, void *a9, unint64_t a10, _WORD *a11, _WORD *a12, _WORD *a13, _WORD *a14)
{
  *a13 = a3;
  *a14 = a4;
  *a11 = 4;
  v14 = a5 + 1;
  v16 = (a5 + 1) <= a6 && v14 >= a5;
  if (a2 != 2)
  {
    *a12 = 4;
    if (result == 13200)
    {
      if (!v16)
      {
        goto LABEL_65;
      }

      *a5 = 55;
      v20 = a5 + 2;
      if ((a5 + 2) > a6)
      {
        goto LABEL_65;
      }

      if (v14 > v20)
      {
        goto LABEL_65;
      }

      a5[1] = 68;
      if (v20 < a5)
      {
        goto LABEL_65;
      }

      v21 = a5 + 3;
      if ((a5 + 3) > a6)
      {
        goto LABEL_65;
      }

      if (v20 > v21)
      {
        goto LABEL_65;
      }

      a5[2] = 84;
      if (v21 < a5)
      {
        goto LABEL_65;
      }

      if ((a5 + 4) > a6)
      {
        goto LABEL_65;
      }

      if (v21 > a5 + 4)
      {
        goto LABEL_65;
      }

      *v21 = 105;
      if ((a9 + 2) > a10 || a9 + 2 < a9)
      {
        goto LABEL_65;
      }

      v22 = &subband_offsets_12KBPS;
    }

    else
    {
      if (!v16)
      {
        goto LABEL_65;
      }

      *a5 = 59;
      v26 = a5 + 2;
      if ((a5 + 2) > a6)
      {
        goto LABEL_65;
      }

      if (v14 > v26)
      {
        goto LABEL_65;
      }

      a5[1] = 74;
      if (v26 < a5)
      {
        goto LABEL_65;
      }

      v27 = a5 + 3;
      if ((a5 + 3) > a6)
      {
        goto LABEL_65;
      }

      if (v26 > v27)
      {
        goto LABEL_65;
      }

      a5[2] = 92;
      if (v27 < a5)
      {
        goto LABEL_65;
      }

      if ((a5 + 4) > a6)
      {
        goto LABEL_65;
      }

      if (v27 > a5 + 4)
      {
        goto LABEL_65;
      }

      *v27 = 115;
      if ((a9 + 2) > a10 || a9 + 2 < a9)
      {
        goto LABEL_65;
      }

      v22 = &subband_offsets_16KBPS;
    }

    *a9 = v22;
    v25 = v22 + 8;
    a7 = a9;
    goto LABEL_64;
  }

  *a12 = 2;
  if (result == 13200)
  {
    if (v16)
    {
      *a5 = 56;
      v17 = a5 + 2;
      if ((a5 + 2) <= a6 && v14 <= v17)
      {
        a5[1] = 100;
        if (v17 >= a5)
        {
          v18 = a5 + 3;
          if ((a5 + 3) <= a6 && v17 <= v18)
          {
            a5[2] = 100;
            if (v18 >= a5 && (a5 + 4) <= a6 && v18 <= a5 + 4)
            {
              *v18 = 56;
              if ((a9 + 2) <= a10 && a9 + 2 >= a9)
              {
                *a9 = &subband_offsets_sub5_13p2kbps_Har;
                a9[1] = &unk_19B3A0FF4;
                if ((a7 + 2) <= a8 && a7 + 2 >= a7)
                {
                  v19 = &subband_search_offsets_13p2kbps_Har;
LABEL_50:
                  *a7 = v19;
                  v25 = v19 + 4;
LABEL_64:
                  a7[1] = v25;
                  return result;
                }
              }
            }
          }
        }
      }
    }
  }

  else if (v16)
  {
    *a5 = 60;
    v23 = a5 + 2;
    if ((a5 + 2) <= a6 && v14 <= v23)
    {
      a5[1] = 110;
      if (v23 >= a5)
      {
        v24 = a5 + 3;
        if ((a5 + 3) <= a6 && v23 <= v24)
        {
          a5[2] = 110;
          if (v24 >= a5 && (a5 + 4) <= a6 && v24 <= a5 + 4)
          {
            *v24 = 60;
            if ((a9 + 2) <= a10 && a9 + 2 >= a9)
            {
              *a9 = &subband_offsets_sub5_16p4kbps_Har;
              a9[1] = &subband_search_offsets_16p4kbps_Har;
              if ((a7 + 2) <= a8 && a7 + 2 >= a7)
              {
                v19 = &subband_search_offsets_16p4kbps_Har;
                goto LABEL_50;
              }
            }
          }
        }
      }
    }
  }

LABEL_65:
  __break(0x5519u);
  return result;
}

void noise_extr_corcod(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, char *a5, unint64_t a6, unint64_t a7, unint64_t a8, char *a9, unint64_t a10, __int16 a11, __int16 a12, float *a13)
{
  v64 = *MEMORY[0x1E69E9840];
  memset(__b, 255, sizeof(__b));
  if (a6 < a5 || a2 < a1 || a11 < 0 || (a6 - a5) >> 2 < a11 || a11 > (a2 - a1) >> 2)
  {
    goto LABEL_77;
  }

  v62 = a6;
  SpectrumSmoothing_nss(a1);
  v21 = a11;
  if (a11 <= 0)
  {
    v40 = a11 == 0;
    v25 = a11;
    v24 = a8;
  }

  else
  {
    if (a10 < a9)
    {
      goto LABEL_77;
    }

    v22 = 4 * a11;
    if (v22 > a6 - a5)
    {
      goto LABEL_77;
    }

    if (v22 > a10 - a9)
    {
      goto LABEL_77;
    }

    memmove(a9, a5, 4 * a11);
    if (&a9[v22] < a9)
    {
      goto LABEL_77;
    }

    v23 = 0;
    v25 = a11;
    v24 = a8;
    v21 = a11;
    do
    {
      v26 = (a3 + v23);
      v27 = a3 + v23 + 4;
      v29 = a3 + v23 < a3 || v27 > a4 || v26 > v27;
      v30 = (a1 + v23);
      v31 = a1 + v23 + 4;
      v34 = v29 || v30 < a1 || v31 > a2 || v30 > v31;
      v35 = (__b + v23);
      v36 = (__b + v23 + 4);
      if (v34 || v35 < __b || v36 > &v64 || v35 > v36)
      {
        goto LABEL_77;
      }

      *(__b + v23) = *v26 - *v30;
      v23 += 4;
    }

    while (v22 != v23);
    v40 = 0;
  }

  if (v24 < a7 || v21 > 640 || (v24 - a7) >> 2 < v25)
  {
    goto LABEL_77;
  }

  v41 = v21;
  SpectrumSmoothing_nss(__b);
  v42 = 0.0;
  if (v40)
  {
    v43 = a8;
    v44 = v62;
  }

  else
  {
    v45 = 0;
    v46 = v41;
    v47 = a1;
    v43 = a8;
    v44 = v62;
    do
    {
      if (v47 < a1 || (v47 + 1) > a2 || v47 > v47 + 1)
      {
        goto LABEL_77;
      }

      v48 = *v47++;
      if (v48 != 0.0)
      {
        ++v45;
      }

      --v46;
    }

    while (v46);
    if (v45)
    {
      v42 = ((v41 - v45) / v41) * 0.9;
    }
  }

  if (a12 == 2)
  {
    v49 = *a13;
    if (v42 <= *a13)
    {
      v50 = v49 * 0.4;
      v51 = 0.6;
    }

    else
    {
      v50 = v49 * 0.2;
      v51 = 0.8;
    }

    v52 = v50 + (v42 * v51);
  }

  else
  {
    v52 = v42 * 0.7;
  }

  *a13 = v52;
  if (!v40)
  {
    v53 = 0;
    v54 = v41;
    while (1)
    {
      v55 = (a7 + v53);
      v56 = a7 + v53 + 4;
      v57 = a7 + v53 < a7 || v56 > v43;
      if (v57 || v55 > v56)
      {
        break;
      }

      v59 = v52 * *v55;
      *v55 = v59;
      v60 = &a5[v53];
      if (&a5[v53] < a5)
      {
        break;
      }

      if ((v60 + 1) > v44)
      {
        break;
      }

      if (v60 > v60 + 1)
      {
        break;
      }

      v61 = &a9[v53];
      if (&a9[v53] < a9 || (v61 + 1) > a10 || v61 > v61 + 1)
      {
        break;
      }

      *v61 = v59 + *v60;
      v53 += 4;
      if (!--v54)
      {
        return;
      }
    }

LABEL_77:
    __break(0x5519u);
  }
}

void *FindNBiggest2_simple(float *a1, unint64_t a2, unint64_t a3, int a4, _WORD *a5, int a6)
{
  v49 = *MEMORY[0x1E69E9840];
  result = memset(__b, 255, sizeof(__b));
  if (a4 < 1)
  {
    v22 = 0.0 / a4;
  }

  else
  {
    v13 = a4;
    v14 = 0.0;
    v15 = __b;
    v16 = 0.0;
    do
    {
      v17 = v15 + 1;
      if (v15 < __b || v17 > &v49 || v15 >= v17)
      {
        goto LABEL_71;
      }

      v20 = *a1++;
      v21 = fabsf(v20);
      *v15++ = v21;
      if (v16 < v21)
      {
        v16 = v21;
      }

      v14 = v14 + v21;
      --v13;
    }

    while (v13);
    v22 = v14 / a4;
    if (v16 > 0.0001)
    {
      v23 = 0;
      goto LABEL_25;
    }
  }

  v24 = 0;
  if (a6 <= 1)
  {
    v25 = 1;
  }

  else
  {
    v25 = a6;
  }

  v26 = a2;
  do
  {
    if (v26 < a2 || v26 + 8 > a3 || v26 > v26 + 8)
    {
      goto LABEL_71;
    }

    *v26 = 0;
    *(v26 + 4) = v24++;
    v26 += 8;
  }

  while (v25 != v24);
  v23 = a6;
LABEL_25:
  if (a4 > 0x190)
  {
LABEL_71:
    __break(0x5519u);
  }

  if (a4)
  {
    v27 = a4;
    v28 = 0.0;
    v29 = __b;
    do
    {
      v30 = *v29++;
      v28 = v28 + (v30 * v30);
      --v27;
    }

    while (v27);
  }

  else
  {
    v28 = 0.0;
  }

  v31 = v22 + (sqrtf((v28 / (a4 - 1)) - (v22 * v22)) * 1.15);
  if (v23 < a6 && a4)
  {
    v32 = 0;
    while (1)
    {
      v33 = __b[v32];
      if (v33 > v31)
      {
        v34 = a2 + 8 * v23;
        if (v34 < a2)
        {
          goto LABEL_71;
        }

        if (v34 + 8 > a3 || v34 >= v34 + 8)
        {
          goto LABEL_71;
        }

        *v34 = v33;
        *(v34 + 4) = v32;
        __b[v32] = 0.0;
        LOWORD(v23) = v23 + 1;
        if (v23 == a6)
        {
          break;
        }
      }

      if (a4 == ++v32)
      {
        goto LABEL_44;
      }
    }

    LOWORD(v23) = a6;
  }

LABEL_44:
  v36 = a6;
  v37 = v23;
  v38 = v31 * (((0.3 / v36) * v37) + 0.7);
  if (v23 < a6 && a4)
  {
    v39 = 0;
    while (1)
    {
      v40 = __b[v39];
      if (v40 > v38)
      {
        v41 = a2 + 8 * v23;
        if (v41 < a2)
        {
          goto LABEL_71;
        }

        if (v41 + 8 > a3 || v41 >= v41 + 8)
        {
          goto LABEL_71;
        }

        *v41 = v40;
        *(v41 + 4) = v39;
        __b[v39] = 0.0;
        LOWORD(v23) = v23 + 1;
        if (v23 == a6)
        {
          break;
        }
      }

      if (a4 == ++v39)
      {
        v37 = v23;
        goto LABEL_56;
      }
    }

LABEL_69:
    LOWORD(v23) = a6;
  }

  else
  {
LABEL_56:
    if (a6 > v23 && a4)
    {
      v43 = 0;
      v44 = v38 * (((0.6 / v36) * v37) + 0.3);
      do
      {
        v45 = __b[v43];
        if (v45 > v44)
        {
          v46 = a2 + 8 * v23;
          if (v46 < a2)
          {
            goto LABEL_71;
          }

          if (v46 + 8 > a3 || v46 >= v46 + 8)
          {
            goto LABEL_71;
          }

          *v46 = v45;
          *(v46 + 4) = v43;
          __b[v43] = 0.0;
          LOWORD(v23) = v23 + 1;
          if (v23 == a6)
          {
            goto LABEL_69;
          }
        }

        ++v43;
      }

      while (a4 != v43);
    }
  }

  *a5 = v23;
  return result;
}

unint64_t genhf_noise(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int16 a9, __int16 a10, unint64_t a11, unint64_t a12, unint64_t a13, unint64_t a14, __int16 a15, __int16 a16, unint64_t a17, unint64_t a18, unint64_t a19, unint64_t a20, unint64_t a21, unint64_t a22, unint64_t a23, unint64_t a24)
{
  v24 = MEMORY[0x1EEE9AC00](a1);
  v148 = v25;
  v149 = v26;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v37 = v24;
  *v155 = *MEMORY[0x1E69E9840];
  memset(__b, 255, sizeof(__b));
  v153 = 0;
  memset(v152, 255, sizeof(v152));
  bzero(v151, 0x500uLL);
  __A = 0.0;
  vDSP_vfill(&__A, __b, 1, 0x280uLL);
  for (i = 0; i != 6; i += 2)
  {
    v39 = (a21 + i + 2);
    v40 = a21 + i + 4;
    if (v39 < a21 || v40 > a22 || v39 > v40)
    {
      goto LABEL_185;
    }

    *(&__b[-2] + i) = *v39 + a15;
  }

  LODWORD(result) = 0;
  v44 = 0;
  HIWORD(v153) = a16 + a15;
  v45 = (~a10 + a15 + a10 + (~a10 + a15) / a9 * a9 - (~a10 + a15));
  do
  {
    v46 = (a21 + 2 * result);
    v47 = v46 + 1;
    if (v46 < a21 || v47 > a22 || v46 > v47)
    {
      goto LABEL_185;
    }

    v50 = result;
    v51 = *v46 + a15;
    v52 = (~a10 + a15 + a10 + (~a10 + a15) / a9 * a9 - (~a10 + a15));
    do
    {
      result = v52;
      v52 = (v52 + a9);
    }

    while (v51 > result);
    v53 = (a23 + 2 * v50);
    v56 = (v53 + 1) <= a24 && v53 <= v53 + 1 && v53 >= a23;
    v57 = (a19 + 2 * v50);
    v58 = !v56;
    v59 = v57 + 1;
    v60 = !v58 && v57 >= a19;
    if (v50)
    {
      if (!v60 || v59 > a20 || v57 > v59)
      {
        goto LABEL_185;
      }

      v63 = (a17 + 2 * v50);
      if (v63 < a17)
      {
        goto LABEL_185;
      }

      if ((v63 + 1) > a18)
      {
        goto LABEL_185;
      }

      if (v63 > v63 + 1)
      {
        goto LABEL_185;
      }

      v64 = v63 - 1;
      v65 = *v63;
      if ((v63 - 1) < a17 || v64 > v63)
      {
        goto LABEL_185;
      }

      v66 = (*v53 - *v57 + 1);
      v67 = (*v53 - *v57 + 1 - v65);
      if (v66 <= v67)
      {
        break;
      }

      LOWORD(v68) = 0;
      v69 = *v64;
      v70 = v69 + v65;
      v71 = v66;
      v72 = v67;
      v73 = 4 * v66;
      v74 = v37;
      v75 = v30;
      while (v70 > v69)
      {
        v76 = (v74 + v73);
        if (v74 + v73 < v37)
        {
          goto LABEL_185;
        }

        if ((v76 + 1) > v36)
        {
          goto LABEL_185;
        }

        if (v76 > v76 + 1)
        {
          goto LABEL_185;
        }

        v77 = (v34 + 4 * v69);
        if (v77 < v34)
        {
          goto LABEL_185;
        }

        if ((v77 + 1) > v32)
        {
          goto LABEL_185;
        }

        if (v77 > v77 + 1)
        {
          goto LABEL_185;
        }

        v78 = *v76;
        *v77 = *v76;
        v79 = &__b[v69];
        if (v79 < __b)
        {
          goto LABEL_185;
        }

        if (v79 + 1 > v155)
        {
          goto LABEL_185;
        }

        if (v79 > v79 + 1)
        {
          goto LABEL_185;
        }

        *v79 = v78;
        v80 = (v75 + v73);
        if (v75 + v73 < v30 || (v80 + 1) > v28 || v80 > v80 + 1)
        {
          goto LABEL_185;
        }

        v81 = *v80;
        if (*v80 != 0.0)
        {
          v82 = &v152[v68];
          if (v82 < v152 || v82 + 1 > &v153 || v82 > v82 + 1)
          {
            goto LABEL_185;
          }

          *v82 = v81;
          LOWORD(v68) = v68 + 1;
        }

        ++v69;
        --v71;
        v75 -= 4;
        v74 -= 4;
        if (v71 <= v72)
        {
          break;
        }
      }

LABEL_107:
      if (v68 >= 1)
      {
        v106 = 0;
        LOWORD(result) = result - a9;
        v68 = v68;
        v107 = *(&__b[-2] + v50);
        v108 = v152;
        do
        {
          LODWORD(result) = (result + a9);
          if (result < v107)
          {
            if (v108 < v152)
            {
              goto LABEL_185;
            }

            if (v108 + 1 > &v153)
            {
              goto LABEL_185;
            }

            if (v108 > v108 + 1)
            {
              goto LABEL_185;
            }

            v109 = a13 + 8 * (8 * v50 + v106);
            if (v109 < a13)
            {
              goto LABEL_185;
            }

            if (v109 + 8 > a14)
            {
              goto LABEL_185;
            }

            if (v109 > v109 + 8)
            {
              goto LABEL_185;
            }

            v110 = *v108;
            *(v109 + 4) = result - a15;
            v111 = *(a11 + 2 * v50);
            *v109 = v110;
            *(a11 + 2 * v50) = v111 + 1;
            v112 = &v151[v44];
            if (v112 < v151 || v112 + 1 > v152 || v112 > v112 + 1)
            {
              goto LABEL_185;
            }

            *v112 = v110;
            ++v44;
            ++v106;
          }

          ++v108;
          --v68;
        }

        while (v68);
      }
    }

    else
    {
      v84 = !v60 || v59 > a20 || v57 > v59;
      v85 = (a17 + 2 * v50);
      v86 = v85 + 1;
      if (v84 || v85 < a17 || v86 > a18 || v85 > v86)
      {
        goto LABEL_185;
      }

      v90 = *v85;
      if (v90 >= 1)
      {
        v91 = 0;
        LOWORD(v68) = 0;
        v92 = (*v53 + *v57 - 1);
        v93 = 4 * (v90 & ~(v90 >> 31));
        v94 = v30 + 4 * v92;
        v95 = v37 + 4 * v92;
        while (1)
        {
          v96 = (v95 + v91);
          v97 = v95 + v91 + 4;
          v98 = v95 + v91 < v37 || v97 > v36;
          if (v98 || v96 > v97)
          {
            break;
          }

          v100 = (v34 + v91);
          if (v34 + v91 < v34)
          {
            break;
          }

          if ((v100 + 1) > v32)
          {
            break;
          }

          if (v100 > v100 + 1)
          {
            break;
          }

          v101 = *v96;
          *v100 = *v96;
          v102 = &__b[v91 / 4];
          if (&__b[v91 / 4] < __b)
          {
            break;
          }

          if (v102 + 1 > v155)
          {
            break;
          }

          if (v102 > v102 + 1)
          {
            break;
          }

          __b[v91 / 4] = v101;
          v103 = (v94 + v91);
          if (v94 + v91 < v30 || (v103 + 1) > v28 || v103 > v103 + 1)
          {
            break;
          }

          v104 = *v103;
          if (*v103 != 0.0)
          {
            v105 = &v152[v68];
            if (v105 < v152 || v105 + 1 > &v153 || v105 > v105 + 1)
            {
              break;
            }

            *v105 = v104;
            LOWORD(v68) = v68 + 1;
          }

          v91 += 4;
          if (v93 == v91)
          {
            goto LABEL_107;
          }
        }

LABEL_185:
        __break(0x5519u);
      }
    }

    result = (v50 + 1);
  }

  while (!v50);
  if (v148 - v149 >= 3)
  {
    v113 = WORD1(v153) + ~a15;
    v114 = v44 - 1;
    v115 = 1;
    result = v151;
    v116 = 2;
    LOWORD(v117) = 2;
    while (1)
    {
      v118 = &__b[-2] + v117;
      v119 = v118 - 1 < &v153 || v118 > __b;
      if (v119 || v118 - 1 > v118)
      {
        goto LABEL_185;
      }

      if (v118 + 1 > __b || v118 > v118 + 1)
      {
        goto LABEL_185;
      }

      v122 = *(v118 - 1);
      v123 = v122 - a15;
      v124 = *v118;
      while (v124 - a15 > v123)
      {
        v125 = &__b[v113];
        v126 = v125 + 1;
        if (v125 < __b || v126 > v155 || v125 > v126)
        {
          goto LABEL_185;
        }

        v129 = (v34 + 4 * v123);
        if (v129 < v34)
        {
          goto LABEL_185;
        }

        if ((v129 + 1) > v32)
        {
          goto LABEL_185;
        }

        if (v129 > v129 + 1)
        {
          goto LABEL_185;
        }

        v130 = *v125;
        *v129 = *v125;
        v131 = &__b[v123];
        if (v131 < __b || v131 + 1 > v155 || v131 > v131 + 1)
        {
          goto LABEL_185;
        }

        *v131 = v130;
        --v113;
        ++v123;
      }

      v117 = v117;
      do
      {
        v132 = v45;
        v45 = (v45 + a9);
      }

      while (v122 > v132);
      if (v124 > v132)
      {
        v133 = (a11 + 2 * v117);
        if (v133 < a11)
        {
          goto LABEL_185;
        }

        if ((v133 + 1) > a12)
        {
          goto LABEL_185;
        }

        if (v133 > v133 + 1)
        {
          goto LABEL_185;
        }

        v134 = (a11 + 2 * (2 - v115));
        if (v134 < a11 || (v134 + 1) > a12 || v134 > v134 + 1)
        {
          goto LABEL_185;
        }

        v135 = 0;
        v136 = 8 * v116;
        v137 = *v133;
        do
        {
          if (*v134 <= v137 || v115 > 2)
          {
            break;
          }

          v139 = &v151[v114];
          v140 = v139 + 1;
          v142 = v139 < v151 || v140 > v152 || v139 > v140;
          v143 = a13 + 8 * (v136 + v135);
          v144 = v143 + 8;
          if (v142 || v143 < a13 || v144 > a14 || v143 > v144)
          {
            goto LABEL_185;
          }

          *v143 = *v139;
          *(v143 + 4) = v132 - a15;
          v137 = *v133 + 1;
          *v133 = v137;
          --v114;
          ++v135;
          v132 = (v132 + a9);
        }

        while (v132 < v124);
      }

      ++v115;
      LOWORD(v117) = v117 + 1;
      v116 = v117;
      v45 = v132;
      if (v148 - v149 <= v117)
      {
        return result;
      }
    }
  }

  return result;
}

void ton_ene_est(float *a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7, float a8, uint64_t a9, unint64_t a10, unint64_t a11, unint64_t a12, unint64_t a13, __int16 a14, __int16 a15, unsigned __int16 a16, __int16 a17, unint64_t a18, unint64_t a19, unint64_t a20, unint64_t a21)
{
  v23 = 0;
  v130[1] = *MEMORY[0x1E69E9840];
  *&v24 = 0xAAAAAAAAAAAAAAAALL;
  *(&v24 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v129[8] = v24;
  v129[9] = v24;
  v129[6] = v24;
  v129[7] = v24;
  v129[4] = v24;
  v129[5] = v24;
  v129[2] = v24;
  v129[3] = v24;
  v129[0] = v24;
  v129[1] = v24;
  *&v25 = -1;
  *(&v25 + 1) = -1;
  v128[18] = v25;
  v128[19] = v25;
  v128[16] = v25;
  v128[17] = v25;
  v128[14] = v25;
  v128[15] = v25;
  v128[12] = v25;
  v128[13] = v25;
  v128[10] = v25;
  v128[11] = v25;
  v128[8] = v25;
  v128[9] = v25;
  v128[6] = v25;
  v128[7] = v25;
  v128[5] = v25;
  v128[3] = v25;
  v128[4] = v25;
  v128[1] = v25;
  v128[2] = v25;
  v127[0] = -1;
  v127[1] = -1;
  __C[1] = -1;
  v126 = 0xAAAAAAAAAAAAAAAALL;
  v124[1] = -1;
  __C[0] = -1;
  v124[0] = -1;
  v128[0] = v25;
  do
  {
    v26 = v129 + v23 + 2;
    if ((v129 + v23) < v129 || v26 > v130 || v129 + v23 > v26)
    {
      goto LABEL_159;
    }

    *(v129 + v23) = -1;
    v23 += 2;
  }

  while (v23 != 160);
  __A = 0.0;
  vDSP_vfill(&__A, __C, 1, 4uLL);
  __A = 0.0;
  vDSP_vfill(&__A, v124, 1, 4uLL);
  __A = 0.0;
  vDSP_vfill(&__A, v128, 1, 4uLL);
  __A = 0.0;
  vDSP_vfill(&__A, v127, 1, 4uLL);
  if (a15 >= 1)
  {
    v29 = a15;
    v30 = a1;
    do
    {
      *v30 = *v30 * a8;
      ++v30;
      --v29;
    }

    while (v29);
  }

  if (a16 - a17 >= 1)
  {
    v31 = 0;
    v32 = 0;
    do
    {
      v33 = (a20 + 2 * v32);
      v34 = v33 + 1;
      if (v33 < a20 || v34 > a21 || v33 > v34)
      {
        goto LABEL_159;
      }

      v37 = *v33;
      if (v37 >= 1)
      {
        v38 = a18 + 64 * v32;
        do
        {
          if (v38 < a18)
          {
            goto LABEL_159;
          }

          if (v38 + 8 > a19)
          {
            goto LABEL_159;
          }

          if (v38 > v38 + 8)
          {
            goto LABEL_159;
          }

          v39 = v129 + 2 * v31;
          if (v39 < v129)
          {
            goto LABEL_159;
          }

          if (v39 + 2 > v130)
          {
            goto LABEL_159;
          }

          if (v39 > v39 + 2)
          {
            goto LABEL_159;
          }

          *(v129 + v31) = *(v38 + 4);
          v40 = v128 + v31;
          if (v40 < v128 || v40 + 1 > v129 || v40 > v40 + 1)
          {
            goto LABEL_159;
          }

          v41 = *v38;
          v38 += 8;
          *v40 = v41;
          ++v31;
          --v37;
        }

        while (v37);
      }

      ++v32;
    }

    while (a16 - a17 > v32);
  }

  v42 = 0;
  v43 = 0;
  do
  {
    v44 = v129 + 2 * v43;
    v45 = v44 + 2;
    v47 = v44 < v129 || v45 > v130 || v44 > v45;
    v48 = (a10 + 2 * (v42 + a17));
    v49 = v48 + 1;
    if (v47 || v48 < a10 || v49 > a11 || v48 > v49)
    {
      goto LABEL_159;
    }

    v53 = v43;
    v54 = *v48 - a14;
    v55 = v43;
    while (1)
    {
      v56 = *v44;
      if (v56 < 0 || v54 < v56)
      {
        break;
      }

      v55 = (v55 + 1);
      v44 = v129 + 2 * v55;
      v57 = v44 + 2;
      if (v44 < v129 || v57 > v130 || v44 > v57)
      {
        goto LABEL_159;
      }
    }

    v60 = (&v127[-1] + 2 * v42);
    v61 = (v60 + 2);
    v62 = v60 < &v126 || v61 > v127;
    if (v62 || v60 > v61)
    {
LABEL_159:
      __break(0x5519u);
    }

    v64 = v55 - v43;
    *v60 = v64;
    if (v64 >= 1)
    {
      v65 = v128 + v53;
      if (v65 < v128)
      {
        goto LABEL_159;
      }

      if (v65 + 1 > v129)
      {
        goto LABEL_159;
      }

      if (v65 > v65 + 1)
      {
        goto LABEL_159;
      }

      v66 = v127 + v42;
      if (v66 < v127 || v66 + 1 > v128 || v66 > v66 + 1)
      {
        goto LABEL_159;
      }

      *v66 = fabsf(*v65);
    }

    ++v42;
    v43 = v55;
  }

  while (v42 != 4);
  if (a17 < a16)
  {
    v67 = 0;
    v68 = a17;
    v69 = &a1[a15];
    do
    {
      v70 = (a6 + 2 * v68);
      v71 = v70 + 1;
      if (v70 < a6 || v71 > a7 || v70 > v71)
      {
        goto LABEL_159;
      }

      v74 = (a12 + 2 * v68);
      if (v74 < a12 || (v74 + 1) > a13 || v74 > v74 + 1)
      {
        goto LABEL_159;
      }

      v75 = *v70;
      v76 = &a1[v75 - a14];
      if (v76 > v69 || v76 < a1)
      {
        goto LABEL_159;
      }

      v78 = *v74;
      if ((v78 & 0x80000000) != 0 || (4 * a15 - 4 * (v75 - a14)) >> 2 < v78)
      {
        goto LABEL_159;
      }

      v79 = 0.0;
      if (v78 >= 1)
      {
        v80 = &a1[v75 - a14];
        v81 = v78;
        do
        {
          v82 = *v80++;
          v79 = v79 + (v82 * v82);
          --v81;
        }

        while (v81);
      }

      v83 = (a4 + 4 * v68);
      if (v83 < a4)
      {
        goto LABEL_159;
      }

      if ((v83 + 1) > a5 || v83 > v83 + 1)
      {
        goto LABEL_159;
      }

      v85 = exp2(*v83);
      v86 = v85;
      v87 = v79 / v86;
      if (v87 < 0.06)
      {
        v88 = v124 + 4 * v67;
        if (v88 < v124)
        {
          goto LABEL_159;
        }

        if (v88 + 4 > __C)
        {
          goto LABEL_159;
        }

        if (v88 > v88 + 4)
        {
          goto LABEL_159;
        }

        v89 = sqrt(v85 / v78);
        *(v124 + v67) = v89;
        v90 = (&v127[-1] + 2 * v67);
        if (v90 < &v126 || (v90 + 2) > v127 || v90 > (v90 + 2))
        {
          goto LABEL_159;
        }

        v91 = 0.6;
        if (*v90)
        {
          v92 = v127 + v67;
          if (v92 < v127 || v92 + 1 > v128 || v92 > v92 + 1)
          {
            goto LABEL_159;
          }

          v91 = sqrtf(v79 / v78) / *v92;
        }

        v93 = __C + v67;
        if (v93 < __C || v93 + 1 > &v126 || v93 > v93 + 1)
        {
          goto LABEL_159;
        }

        v94 = v91 * v89;
        if ((v87 * (v94 * v94)) >= 0.12)
        {
          v94 = v94 * 0.05;
        }

        v95 = fmaxf(v94, 1.4);
        *v93 = v95;
        v96 = (a10 + 2 * v68);
        if (v96 < a10 || (v96 + 1) > a11 || v96 > v96 + 1)
        {
          goto LABEL_159;
        }

        v97 = *v96;
        if (v75 <= v97)
        {
          LOWORD(v98) = v75;
          do
          {
            v99 = &a1[v98 - a14];
            v100 = v99 + 1;
            v101 = v99 < a1 || v100 > v69;
            if (v101 || v99 > v100)
            {
              goto LABEL_159;
            }

            *v99 = v95 * *v99;
            v98 = (v98 + 1);
          }

          while (v98 <= v97);
        }

        v79 = 0.0;
        if (v78 >= 1)
        {
          do
          {
            v103 = *v76++;
            v79 = v79 + (v103 * v103);
            --v78;
          }

          while (v78);
        }
      }

      v104 = (a2 + 4 * v68);
      if (v104 < a2 || (v104 + 1) > a3 || v104 > v104 + 1)
      {
        goto LABEL_159;
      }

      v105 = exp2(*v83);
      v106 = v105 - v79;
      *v104 = v106;
      if (v106 < 0.0)
      {
        v107 = (a10 + 2 * v68);
        if (v107 < a10 || (v107 + 1) > a11 || v107 > v107 + 1)
        {
          goto LABEL_159;
        }

        v108 = v75 - a14;
        v109 = *v107 - a14;
        v110 = 0.0;
        while (v109 >= v108)
        {
          v111 = &a1[v108];
          v112 = v111 + 1;
          if (v111 < a1 || v112 > v69 || v111 > v112)
          {
            goto LABEL_159;
          }

          v115 = *v111 * 0.25;
          *v111 = v115;
          v110 = v110 + (v115 * v115);
          ++v108;
        }

        v116 = exp2(*v83);
        *v104 = v116 - v110;
      }

      ++v67;
      ++v68;
    }

    while (v68 != a16);
  }
}

void Gettonl_scalfact(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, int a5, unsigned __int16 a6, int a7, int a8, unint64_t a9, unint64_t a10, unint64_t a11, unint64_t a12, unint64_t a13, unint64_t a14, unint64_t a15, unint64_t a16, unint64_t a17, unint64_t a18, unint64_t a19, unint64_t a20, unint64_t a21, unint64_t a22)
{
  v125[1] = *MEMORY[0x1E69E9840];
  *&v27 = 0xAAAAAAAAAAAAAAAALL;
  *(&v27 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v124[8] = v27;
  v124[9] = v27;
  v124[6] = v27;
  v124[7] = v27;
  v124[4] = v27;
  v124[5] = v27;
  v124[2] = v27;
  v124[3] = v27;
  v124[0] = v27;
  v124[1] = v27;
  memset(v123, 0, sizeof(v123));
  __C[0] = -1;
  __C[1] = -1;
  memset(v121, 0, sizeof(v121));
  __A = 0.0;
  vDSP_vfill(&__A, __C, 1, 4uLL);
  for (i = 0; i != 160; i += 2)
  {
    v29 = v124 + i + 2;
    if ((v124 + i) < v124 || v29 > v125 || v124 + i > v29)
    {
      goto LABEL_168;
    }

    *(v124 + i) = -1;
  }

  v32 = a7;
  v117 = a8 - a7;
  if (a8 - a7 >= 1)
  {
    v33 = 0;
    v34 = 0;
    do
    {
      v35 = (a21 + 2 * v33);
      v36 = v35 + 1;
      if (v35 < a21 || v36 > a22 || v35 > v36)
      {
        goto LABEL_168;
      }

      v39 = *v35;
      if (v39 >= 1)
      {
        v40 = a19 + 64 * v33;
        do
        {
          if (v40 < a19)
          {
            goto LABEL_168;
          }

          if (v40 + 8 > a20)
          {
            goto LABEL_168;
          }

          if (v40 > v40 + 8)
          {
            goto LABEL_168;
          }

          v41 = v124 + 2 * v34;
          if (v41 < v124)
          {
            goto LABEL_168;
          }

          if (v41 + 2 > v125)
          {
            goto LABEL_168;
          }

          if (v41 > v41 + 2)
          {
            goto LABEL_168;
          }

          *(v124 + v34) = *(v40 + 4);
          v42 = &v123[v34];
          if (v42 < v123 || v42 + 1 > v124 || v42 > v42 + 1)
          {
            goto LABEL_168;
          }

          v43 = *v40;
          v40 += 8;
          *v42 = v43;
          ++v34;
          --v39;
        }

        while (v39);
      }

      ++v33;
    }

    while (v117 > v33);
  }

  v44 = 0;
  v45 = 0;
  v46 = 0;
  do
  {
    v47 = v124 + 2 * v45;
    v48 = v47 + 2;
    v50 = v47 < v124 || v48 > v125 || v47 > v48;
    v51 = (a13 + 2 * (v44 + a7));
    v52 = v51 + 1;
    if (v50 || v51 < a13 || v52 > a14 || v51 > v52)
    {
      goto LABEL_168;
    }

    v56 = *v51 - a5;
    v57 = v45;
    while (1)
    {
      v58 = *v47;
      if (v58 < 0 || v56 < v58)
      {
        break;
      }

      v57 = (v57 + 1);
      v47 = v124 + 2 * v57;
      v59 = v47 + 2;
      if (v47 < v124 || v59 > v125 || v47 > v59)
      {
        goto LABEL_168;
      }
    }

    v62 = __C + v44;
    if (v45 < v57)
    {
      v65 = v62 + 1 > v123 || v62 > v62 + 1 || v62 < __C;
      v66 = v57 - v45;
      v67 = &v123[v45];
      do
      {
        v70 = v67 + 1 > v124 || v67 > v67 + 1 || v67 < v123;
        if (v70 || v65)
        {
          goto LABEL_168;
        }

        v71 = *v67++;
        *v62 = *v62 + (v71 * v71);
        --v66;
      }

      while (v66);
    }

    if (v62 < __C)
    {
      goto LABEL_168;
    }

    if (v62 + 1 > v123 || v62 > v62 + 1)
    {
      goto LABEL_168;
    }

    v73 = *v62;
    if (*v62 <= 0.0)
    {
      *v62 = 0.01;
      v73 = 0.01;
    }

    v74 = (a17 + 4 * (v44 + a7));
    if (v74 < a17 || (v74 + 1) > a18 || v74 > v74 + 1)
    {
LABEL_168:
      __break(0x5519u);
    }

    v75 = 0.0;
    if (*v74 > 0.0)
    {
      v75 = sqrtf(*v74 / v73);
    }

    for (; v45 < v57; LODWORD(v45) = (v45 + 1))
    {
      v76 = v121 + v46;
      v77 = v76 + 1;
      if (v76 < v121 || v77 > __C || v76 > v77)
      {
        goto LABEL_168;
      }

      *v76 = v75;
      ++v46;
    }

    ++v44;
    v45 = v57;
  }

  while (v44 != 4);
  if (v117 >= 1)
  {
    v80 = 0;
    v81 = 0;
    v82 = 1.0 / (a6 * 0.077);
    v83 = 0.9;
    do
    {
      v84 = v80 + v32;
      v85 = (a17 + 4 * (v80 + v32));
      v86 = v85 + 1;
      if (v85 < a17 || v86 > a18 || v85 > v86)
      {
        goto LABEL_168;
      }

      v89 = v84;
      v90 = 0.0;
      if (*v85 > 0.0)
      {
        v91 = (a9 + 4 * v84);
        if (v91 < a9 || (v91 + 1) > a10 || v91 > v91 + 1)
        {
          goto LABEL_168;
        }

        v32 = a7;
        v92 = sqrt(*v85 / exp2(*v91));
        v90 = v83 * v92;
      }

      v93 = (a15 + 2 * v89);
      if (v93 < a15 || (v93 + 1) > a16 || v93 > v93 + 1)
      {
        goto LABEL_168;
      }

      v83 = v90 - v82;
      if (*v93 == 1)
      {
        v94 = (a11 + 2 * v89);
        if (v94 < a11)
        {
          goto LABEL_168;
        }

        if ((v94 + 1) > a12)
        {
          goto LABEL_168;
        }

        if (v94 > v94 + 1)
        {
          goto LABEL_168;
        }

        v95 = (a13 + 2 * v89);
        if (v95 < a13 || (v95 + 1) > a14 || v95 > v95 + 1)
        {
          goto LABEL_168;
        }

        v96 = *v94;
        v97 = *v95;
        while (v96 <= v97)
        {
          v98 = (a3 + 4 * v96);
          v99 = v98 + 1;
          if (v98 < a3 || v99 > a4 || v98 > v99)
          {
            goto LABEL_168;
          }

          v102 = (a1 + 4 * (v96 - a5));
          v103 = v102 + 1;
          v104 = v102 < a1 || v103 > a2;
          if (v104 || v102 > v103)
          {
            goto LABEL_168;
          }

          *v102 = *v98;
          v96 = (v96 + 1);
        }

        v107 = v80;
      }

      else
      {
        v106 = (a21 + 2 * v80);
        if (v106 < a21 || (v106 + 1) > a22 || v106 > v106 + 1)
        {
          goto LABEL_168;
        }

        v107 = v80;
        v108 = *v106;
        if (v108 >= 1)
        {
          v109 = a19 + 64 * v80;
          v110 = v81;
          v111 = v108 & ~(v108 >> 31);
          while (v109 >= a19)
          {
            if (v109 + 8 > a20)
            {
              break;
            }

            if (v109 > v109 + 8)
            {
              break;
            }

            v112 = v121 + v110;
            if (v112 < v121)
            {
              break;
            }

            if (v112 + 1 > __C)
            {
              break;
            }

            if (v112 > v112 + 1)
            {
              break;
            }

            v113 = (a1 + 4 * *(v109 + 4));
            if (v113 < a1 || (v113 + 1) > a2 || v113 > v113 + 1)
            {
              break;
            }

            v114 = *v109;
            v109 += 8;
            *v113 = v83 * (v114 * *v112);
            ++v110;
            if (!--v111)
            {
              goto LABEL_163;
            }
          }

          goto LABEL_168;
        }
      }

LABEL_163:
      v115 = (a21 + 2 * v107);
      if (v115 < a21 || (v115 + 1) > a22 || v115 > v115 + 1)
      {
        goto LABEL_168;
      }

      v81 += *v115;
      ++v80;
    }

    while (v117 > v80);
  }
}

float spectrumsmooth_noiseton(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char *a9, unint64_t a10, unsigned __int16 a11, __int16 *a12)
{
  v12 = MEMORY[0x1EEE9AC00](a1);
  v70 = v13;
  v71 = v14;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v25 = v12;
  v75 = *MEMORY[0x1E69E9840];
  memset(__b, 255, sizeof(__b));
  memset(v72, 255, sizeof(v72));
  if (a11 < 1)
  {
    v33 = 0.0;
    goto LABEL_16;
  }

  v26 = a11;
  v27 = *a12;
  v28 = v72;
  v29 = a11;
  do
  {
    v27 = 31821 * v27 + 13849;
    if (v28 < v72 || v28 + 1 > __b || v28 > v28 + 1)
    {
      *a12 = v27;
      goto LABEL_86;
    }

    *v28++ = vcvts_n_f32_s32(v27, 0xFuLL);
    --v29;
  }

  while (v29);
  v30 = 0;
  *a12 = v27;
  v31 = v25;
  do
  {
    if (v31 < v25 || (v31 + 1) > v24 || v31 > v31 + 1)
    {
      goto LABEL_86;
    }

    v32 = *v31++;
    if (v32 != 0.0)
    {
      ++v30;
    }

    --v26;
  }

  while (v26);
  v33 = v30 * 4.0;
LABEL_16:
  v34 = v33 / a11;
  if (v34 <= 0.9)
  {
    v35 = v34;
  }

  else
  {
    v35 = 0.9;
  }

  v36 = v35 * 10.0;
  if (a11 >= 1)
  {
    v37 = a11;
    v38 = __b;
    v39 = v25;
    while (1)
    {
      v40 = v38 + 1;
      v41 = v38 < __b || v40 > v74;
      if (v41 || v38 > v40)
      {
        break;
      }

      *v38 = 0.0;
      if (v39 < v25 || (v39 + 1) > v24 || v39 > v39 + 1)
      {
        break;
      }

      if (fabsf(*v39) > 0.1)
      {
        *v38 = *v39;
      }

      ++v39;
      ++v38;
      if (!--v37)
      {
        goto LABEL_34;
      }
    }

LABEL_86:
    __break(0x5519u);
  }

LABEL_34:
  v43 = v16 - v18;
  if (v16 < v18 || a11 > 0x280 || v43 >> 2 < a11)
  {
    goto LABEL_86;
  }

  SpectrumSmoothing(__b);
  v44 = v71;
  v45 = v70;
  if (a11 >= 1)
  {
    if (a10 < a9)
    {
      goto LABEL_86;
    }

    v46 = 4 * (a11 & 0x3FFF);
    if (v43 < v46)
    {
      goto LABEL_86;
    }

    if (a10 - a9 < v46)
    {
      goto LABEL_86;
    }

    memmove(a9, v18, 4 * (a11 & 0x3FFF));
    if (&a9[v46] < a9)
    {
      goto LABEL_86;
    }

    v47 = v74;
    memset(v74, 255, sizeof(v74));
    v44 = v71;
    v48 = a11;
    v49 = v22;
    v50 = v25;
    v51 = a11;
    v45 = v70;
    do
    {
      if (v49 < v22 || (v49 + 1) > v20 || v49 > v49 + 1 || v50 < v25 || (v50 + 1) > v24 || v50 > v50 + 1)
      {
        goto LABEL_86;
      }

      v52 = *v49++;
      v53 = v52;
      v54 = *v50++;
      *v47++ = v53 - v54;
      --v51;
    }

    while (v51);
    v55 = v74;
    v56 = __b;
    do
    {
      *v56 = 0.0;
      if (fabsf(*v55) > 0.1)
      {
        *v56 = *v55;
      }

      ++v55;
      ++v56;
      --v48;
    }

    while (v48);
  }

  if (v44 < v45 || a11 > (v44 - v45) >> 2)
  {
    goto LABEL_86;
  }

  SpectrumSmoothing(__b);
  if (a11 >= 1)
  {
    v57 = 0;
    while (1)
    {
      v58 = &v18[v57];
      v59 = &v18[v57 + 4];
      v60 = &v18[v57] < v18 || v59 > v16;
      if (v60 || v58 > v59)
      {
        goto LABEL_86;
      }

      v62 = *v58;
      v63 = fabsf(*v58);
      if (v63 > v36)
      {
        v64 = v36 + (((10.0 - v36) / 10.0) * v63);
        if (v62 >= 0.0)
        {
          v62 = v64;
        }

        else
        {
          v62 = -v64;
        }

        *v58 = v62;
      }

      if (v62 == 0.0)
      {
        v66 = (v70 + v57);
        if (v70 + v57 < v70)
        {
          goto LABEL_86;
        }

        if ((v66 + 1) > v71)
        {
          goto LABEL_86;
        }

        if (v66 > v66 + 1)
        {
          goto LABEL_86;
        }

        v67 = &a9[v57];
        if (&a9[v57] < a9 || (v67 + 1) > a10 || v67 > v67 + 1)
        {
          goto LABEL_86;
        }

        v68 = v35 * *v66;
        *v67 = v68;
        if (v68 == 0.0)
        {
          *v67 = (v35 * 5.0) * v72[v57 / 4];
        }
      }

      else
      {
        v65 = &a9[v57];
        if (&a9[v57] < a9 || (v65 + 1) > a10 || v65 > v65 + 1)
        {
          goto LABEL_86;
        }

        *v65 = v62;
      }

      v57 += 4;
      if (4 * a11 == v57)
      {
        return v35 * 10.0;
      }
    }
  }

  return v35 * 10.0;
}

uint64_t convert_lagIndices_pls2smp(uint64_t result, int a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6, int a7)
{
  if (a2 >= 1)
  {
    v7 = 0;
    v8 = a2;
    while (2)
    {
      v9 = 0;
      v10 = 0;
      v11 = &subband_search_offsets[v7];
      v14 = v11 + 1 <= &stable_LSP && v11 < v11 + 1 && v11 >= subband_search_offsets;
      while (v10 <= *(result + 2 * v7))
      {
        if (!v14)
        {
          goto LABEL_29;
        }

        v15 = *v11;
        v16 = (a4 + 4 * (v9 + v15));
        v17 = v16 + 1;
        v18 = v16 < a4 || v17 > a5;
        if (v18 || v16 >= v17)
        {
          goto LABEL_29;
        }

        if (*v16 != 0.0)
        {
          ++v10;
        }

        if (v15 + ++v9 + *(a6 + 2 * v7) >= a7)
        {
          v20 = *v11;
          goto LABEL_27;
        }
      }

      if (!v14)
      {
LABEL_29:
        __break(0x5519u);
        return result;
      }

      v20 = *v11;
LABEL_27:
      *(a3 + 2 * v7++) = v9 + v20 - 1;
      if (v7 != v8)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void GetlagGains(unint64_t a1, unint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8)
{
  *v36 = *MEMORY[0x1E69E9840];
  if (a4 >= 1)
  {
    memset(__b, 255, sizeof(__b));
    v15 = 0;
    while (1)
    {
      v16 = *(a5 + 2 * v15);
      v17 = *(a6 + 2 * v15);
      if (v17 + v16 > a7)
      {
        LOWORD(v17) = a7 - v16;
      }

      v18 = (a1 + 4 * v17);
      if (a1 > v18)
      {
LABEL_34:
        __break(0x5519u);
      }

      v19 = *(a5 + 2 * v15);
      if (v19 < 1)
      {
        break;
      }

      LOWORD(v20) = 0;
      v21 = __b;
      do
      {
        v22 = v18 + 1 < v18 || (v18 + 1) > a2;
        v23 = v21 + 1;
        if (v22 || v23 < v21 || v23 > v36)
        {
          goto LABEL_34;
        }

        *v21 = *v18;
        v20 = (v20 + 1);
        ++v18;
        ++v21;
      }

      while (v20 < v19);
      v26 = 0.0;
      v27 = __b;
      do
      {
        v28 = v27 + 1;
        if (v27 < __b || v28 > v36 || v27 >= v28)
        {
          goto LABEL_34;
        }

        v31 = *v27++;
        v26 = v26 + (v31 * v31);
        --v19;
      }

      while (v19);
      if (v26 == 0.0)
      {
        goto LABEL_31;
      }

      v32 = exp2(*(a3 + 4 * v15));
LABEL_32:
      v33 = sqrt(v32 / v26);
      *(a8 + 4 * v15++) = v33;
      if (v15 == a4)
      {
        return;
      }
    }

    v26 = 0.0;
LABEL_31:
    v32 = exp2(*(a3 + 4 * v15));
    v26 = v26 + 0.001;
    goto LABEL_32;
  }
}

unint64_t GetSynthesizedSpecThinOut(unint64_t result, unint64_t a2, float *a3, unint64_t a4, int a5, unint64_t a6, unint64_t a7, uint64_t a8, unint64_t a9, unint64_t a10, unint64_t a11, unint64_t a12, __int16 a13)
{
  if (a5 >= 1)
  {
    v13 = 0;
    v14 = a5;
    while (1)
    {
      v15 = (a6 + 2 * v13);
      v16 = v15 + 1;
      v17 = v15 < a6 || v16 > a7;
      if (v17 || v15 > v16)
      {
        break;
      }

      v19 = (a9 + 2 * v13);
      if (v19 < a9)
      {
        break;
      }

      if ((v19 + 1) > a10)
      {
        break;
      }

      if (v19 > v19 + 1)
      {
        break;
      }

      v20 = (a11 + 4 * v13);
      if (v20 < a11 || (v20 + 1) > a12 || v20 > v20 + 1)
      {
        break;
      }

      v21 = *v15;
      v22 = *v19;
      if (v22 + v21 > a13)
      {
        LOWORD(v22) = a13 - v21;
      }

      v23 = (result + 4 * v22);
      if (result > v23)
      {
        break;
      }

      if (v21 >= 1)
      {
        LOWORD(v24) = 0;
        v25 = *v20;
        v26 = a3;
        do
        {
          v27 = v23 + 1 < v23 || (v23 + 1) > a2;
          v28 = v26 + 1;
          v29 = !v27 && v28 >= v26;
          if (!v29 || v28 > a4)
          {
            goto LABEL_35;
          }

          *v26 = v25 * *v23;
          v24 = (v24 + 1);
          ++v23;
          ++v26;
        }

        while (v24 < v21);
      }

      v31 = &a3[v21];
      if (v31 < a3)
      {
        break;
      }

      ++v13;
      a3 = v31;
      if (v13 == v14)
      {
        return result;
      }
    }

LABEL_35:
    __break(0x5519u);
  }

  return result;
}

void *noiseinj_hf(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7, unint64_t a8, unint64_t a9, unint64_t a10, __int16 a11, unint64_t a12, unint64_t a13, unint64_t a14, unint64_t a15, __int16 a16)
{
  *v132 = *MEMORY[0x1E69E9840];
  v131[0] = 0;
  v131[1] = 0;
  v130[0] = 0;
  v130[1] = 0;
  memset(__b, 170, sizeof(__b));
  memset(v128, 170, sizeof(v128));
  v22 = a14 + 2 * a11;
  v23 = (v22 - 2);
  if (v22 - 2 < a14 || v22 > a15 || v23 > v22)
  {
    goto LABEL_208;
  }

  v26 = *v23;
  if (v26 < 0x7FFF)
  {
    v27 = v26 + 1;
    v28 = __b;
    v29 = v26 + 1;
    do
    {
      v30 = v28 + 1;
      if (v28 < __b || v30 > v130 || v28 > v30)
      {
        goto LABEL_208;
      }

      *v28++ = 0;
      --v29;
    }

    while (v29);
    v33 = v128;
    do
    {
      v34 = v33 + 1;
      if (v33 < v128 || v34 > __b || v33 > v34)
      {
        goto LABEL_208;
      }

      *v33++ = 0;
      --v27;
    }

    while (v27);
  }

  v37 = a11 - 4;
  if (a11 <= (a11 - 4))
  {
    v38 = a16;
  }

  else
  {
    v38 = a16;
    v39 = v37;
    v40 = v131;
    do
    {
      if (v40 + 1 > v132)
      {
        goto LABEL_208;
      }

      *v40 = 0.0;
      v41 = (a9 + 2 * v39);
      if (v41 < a9)
      {
        goto LABEL_208;
      }

      if ((v41 + 1) > a10 || v41 > v41 + 1)
      {
        goto LABEL_208;
      }

      if (!*v41)
      {
        v43 = (a12 + 2 * v39);
        if (v43 < a12)
        {
          goto LABEL_208;
        }

        if ((v43 + 1) > a13)
        {
          goto LABEL_208;
        }

        if (v43 > v43 + 1)
        {
          goto LABEL_208;
        }

        v44 = (a14 + 2 * v39);
        if (v44 < a14 || (v44 + 1) > a15 || v44 > v44 + 1)
        {
          goto LABEL_208;
        }

        LODWORD(v45) = *v43;
        v46 = (a3 + 4 * (v39 - v37));
        v49 = (v46 + 1) <= a4 && v46 <= v46 + 1 && v46 >= a3;
        v50 = *v44;
        v51 = 0.0;
        while (v45 <= v50)
        {
          v45 = v45;
          v52 = (a1 + 4 * (v45 - a16));
          v53 = v52 + 1;
          v55 = v52 < a1 || v53 > a2 || v52 > v53;
          if (v55 || !v49)
          {
            goto LABEL_208;
          }

          if (fabsf(*v52) <= *v46)
          {
            v51 = v51 + (*v52 * *v52);
            *v40 = v51;
          }

          else
          {
            v56 = &__b[v45];
            if (v56 < __b || v56 + 1 > v130 || v56 > v56 + 1)
            {
              goto LABEL_208;
            }

            *v56 = 1;
          }

          LODWORD(v45) = (v45 + 1);
        }

        *v40 = sqrtf(v51);
      }

      ++v39;
      ++v40;
    }

    while (v39 != a11);
    v57 = 0;
    v58 = a11 - v37;
    v59 = v37 - a11 + 4;
    v60 = a5 + 4 * v37;
    v61 = (a9 + 2 * v37);
    do
    {
      v62 = (a7 + 4 * v59);
      v63 = v62 + 1;
      if (v62 < a7 || v63 > a8 || v62 > v63 || (v130 + v57 + 4) > v131)
      {
        goto LABEL_208;
      }

      v67 = *v62;
      *(v130 + v57) = *v62;
      if (v61 < a9 || (v61 + 1) > a10 || v61 > v61 + 1)
      {
        goto LABEL_208;
      }

      if (!*v61)
      {
        v68 = (v60 + v57);
        if (v60 + v57 < a5 || (v68 + 1) > a6 || v68 > v68 + 1)
        {
          goto LABEL_208;
        }

        v69 = (v131 + v57);
        v70 = *v68 * 0.8;
        v72 = (v131 + v57) >= v131 && (v131 + v57 + 4) <= v132;
        if (v67 >= v70)
        {
          if (!v72)
          {
            goto LABEL_208;
          }

          v73 = (v67 * 0.2) + (*v69 * 0.8);
        }

        else
        {
          if (!v72)
          {
            goto LABEL_208;
          }

          v73 = (v67 * 0.85) + (*v69 * 0.15);
        }

        *(v130 + v57) = v73;
      }

      v57 += 4;
      ++v61;
      ++v59;
      --v58;
    }

    while (v58);
  }

  v74 = &__b[v38];
  if (v74 < __b)
  {
    goto LABEL_208;
  }

  if (v74 + 1 > v130)
  {
    goto LABEL_208;
  }

  if (v74 > v74 + 1)
  {
    goto LABEL_208;
  }

  v75 = a16 + 1;
  v76 = &__b[a16 + 1];
  if (v76 < __b)
  {
    goto LABEL_208;
  }

  if (v76 + 1 > v130)
  {
    goto LABEL_208;
  }

  if (v76 > v76 + 1)
  {
    goto LABEL_208;
  }

  v77 = &v128[v38];
  if (v77 < v128 || v77 + 1 > __b || v77 > v77 + 1)
  {
    goto LABEL_208;
  }

  *v77 = *v76 | *v74;
  v78 = v75;
  if (v26 > v75)
  {
    v79 = v26;
    v80 = v75;
    v81 = __b;
    v82 = v128;
    do
    {
      v83 = &v81[v80];
      v84 = &v81[v80 - 1];
      v86 = v84 < __b || v83 > v130 || v84 > v83;
      v87 = v83 + 1;
      v89 = v86 || v87 > v130 || v83 > v87;
      v90 = v83 + 2;
      v92 = v89 || v90 > v130 || v87 > v90;
      v93 = &v82[v80];
      v94 = &v82[v80 + 1];
      if (v92 || v93 < v128 || v94 > __b || v93 > v94)
      {
        goto LABEL_208;
      }

      *v93 = *v83 | *v84 | *v87;
      ++v78;
      ++v82;
      ++v81;
    }

    while (v79 != v78);
  }

  v98 = &__b[v78];
  if (v98 - 1 < __b)
  {
    goto LABEL_208;
  }

  if (v98 > v130)
  {
    goto LABEL_208;
  }

  if (v98 - 1 > v98)
  {
    goto LABEL_208;
  }

  if (v98 + 1 > v130)
  {
    goto LABEL_208;
  }

  if (v98 > v98 + 1)
  {
    goto LABEL_208;
  }

  v99 = &v128[v78];
  if (v99 < v128 || v99 + 1 > __b || v99 > v99 + 1)
  {
    goto LABEL_208;
  }

  v100 = *(v98 - 1);
  result = *v98;
  *v99 = result | v100;
  if (a11 > v37)
  {
    v102 = v37;
    result = v130;
    v103 = v131;
    v104 = v130;
    do
    {
      v105 = (a9 + 2 * v102);
      v106 = v105 + 1;
      if (v105 < a9 || v106 > a10 || v105 > v106)
      {
        goto LABEL_208;
      }

      if (!*v105)
      {
        if (v103 < v131 || v103 + 1 > v132)
        {
          goto LABEL_208;
        }

        if (*v103 != 0.0)
        {
          if (v104 < v130 || v104 + 1 > v131)
          {
            goto LABEL_208;
          }

          v109 = *v104;
          v110 = sqrtf(*v104 / *v103);
          if (v110 > 1.25)
          {
            v110 = 1.25;
          }

          if (v110 < 0.75)
          {
            v110 = 0.75;
          }

          v111 = (a12 + 2 * v102);
          if (v111 < a12)
          {
            goto LABEL_208;
          }

          if ((v111 + 1) > a13)
          {
            goto LABEL_208;
          }

          if (v111 > v111 + 1)
          {
            goto LABEL_208;
          }

          v112 = (a14 + 2 * v102);
          if (v112 < a14 || (v112 + 1) > a15 || v112 > v112 + 1)
          {
            goto LABEL_208;
          }

          v113 = *v111;
          v114 = *v112;
          v115 = (a3 + 4 * (v102 - v37));
          v118 = (v115 + 1) <= a4 && v115 <= v115 + 1 && v115 >= a3;
          if (v113 <= v114)
          {
            v119 = v110 * 0.8;
            while (1)
            {
              v120 = (a1 + 4 * (v113 - a16));
              v121 = v120 + 1;
              v122 = v120 < a1 || v121 > a2;
              v123 = v122 || v120 > v121;
              if (v123 || !v118)
              {
                break;
              }

              if (fabsf(*v120) <= *v115)
              {
                v124 = &v128[v113];
                if (v124 < v128 || v124 + 1 > __b || v124 > v124 + 1)
                {
                  break;
                }

                if (!*v124)
                {
                  *v120 = v119 * *v120;
                }
              }

              v113 = (v113 + 1);
              if (v113 > v114)
              {
                goto LABEL_202;
              }
            }

LABEL_208:
            __break(0x5519u);
          }

LABEL_202:
          v125 = (a7 + 4 * (v102 - v37));
          if (v125 < a7 || (v125 + 1) > a8 || v125 > v125 + 1)
          {
            goto LABEL_208;
          }

          *v125 = v109;
        }
      }

      ++v104;
      ++v103;
      ++v102;
    }

    while (v102 != a11);
  }

  return result;
}

unint64_t SpectrumSmoothing(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = v1;
  v100 = *MEMORY[0x1E69E9840];
  bzero(v99, 0xA00uLL);
  result = memset(__b, 255, sizeof(__b));
  v96 = -1;
  *&v10 = -1;
  *(&v10 + 1) = -1;
  v95[1] = v10;
  v95[2] = v10;
  v94[9] = v10;
  v95[0] = v10;
  v94[7] = v10;
  v94[8] = v10;
  v94[5] = v10;
  v94[6] = v10;
  v94[3] = v10;
  v94[4] = v10;
  v94[1] = v10;
  v94[2] = v10;
  *&v11 = 0xAAAAAAAAAAAAAAAALL;
  *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v93[3] = v11;
  v94[0] = v10;
  v93[1] = v11;
  v93[2] = v11;
  v93[0] = v11;
  v12 = v5 / 0xCu;
  if ((v5 / 12.0) <= v12)
  {
    v13 = v5 / 0xCu;
  }

  else
  {
    v13 = v12 + 1;
  }

  if (v5 >= 1)
  {
    v14 = v5;
    v15 = v99;
    v16 = __b;
    while (1)
    {
      v17 = (v15 + 1);
      v18 = v15 < v99 || v17 > &v100;
      v19 = v18 || v15 >= v17;
      if (v19)
      {
        break;
      }

      *v15 = *v8;
      if (v16 < __b || v16 + 1 > v99 || v16 > v16 + 1)
      {
        break;
      }

      *v16++ = 0.0;
      ++v8;
      ++v15;
      if (!--v14)
      {
        goto LABEL_17;
      }
    }

LABEL_169:
    __break(0x5519u);
  }

LABEL_17:
  if (12 * v13 > v5)
  {
    LOWORD(v20) = v5;
    do
    {
      v21 = &v99[v20];
      v22 = (v21 + 1);
      v23 = v21 < v99 || v22 > &v100;
      if (v23 || v21 >= v22)
      {
        goto LABEL_169;
      }

      v20 = v20;
      v99[v20] = 0.0;
      v25 = &__b[v20];
      if (v25 < __b || v25 + 1 > v99 || v25 > v25 + 1)
      {
        goto LABEL_169;
      }

      __b[v20] = 0.0;
      LOWORD(v20) = v20 + 1;
    }

    while (12 * v13 > v20);
  }

  if (v13)
  {
    v26 = 0;
    v27 = 0;
    do
    {
      v28 = v94 + v26;
      v29 = v28 + 1;
      if (v28 < v94 || v29 > v97 || v28 >= v29)
      {
        goto LABEL_169;
      }

      v32 = 0;
      *v28 = 0.0;
      v33 = 0.0;
      do
      {
        v34 = &v99[v27];
        v35 = v34 + 1;
        if (v34 < v99 || v35 > &v100 || v34 >= v35)
        {
          goto LABEL_169;
        }

        v38 = fabsf(*v34);
        if (v33 < v38)
        {
          *v28 = v38;
          v33 = v38;
        }

        ++v27;
        v19 = v32++ >= 0xB;
      }

      while (!v19);
      ++v26;
    }

    while (v13 > v26);
    v39 = 0;
    v40 = 0;
    while (1)
    {
      v41 = v94 + v39;
      v42 = v41 + 1;
      v43 = v41 < v94 || v42 > v97;
      if (v43 || v41 >= v42)
      {
        goto LABEL_169;
      }

      v45 = 0;
      v46 = *v41;
      v47 = 10.0 / *v41;
      if (*v41 == 0.0)
      {
        v47 = 0.0;
      }

      do
      {
        v48 = &v99[v40];
        v49 = v48 + 1;
        if (v48 < v99 || v49 > &v100 || v48 >= v49)
        {
          goto LABEL_169;
        }

        v52 = *v48;
        v73 = *v48 == 0.0;
        v53 = &__b[v40];
        if (v73)
        {
          if (v53 < __b || v53 + 1 > v99 || v53 > v53 + 1)
          {
            goto LABEL_169;
          }

          *v53 = 0.0;
        }

        else
        {
          v54 = fabsf(v52);
          v57 = v53 + 1 <= v99 && v53 < v53 + 1 && v53 >= __b;
          if (v54 >= v46)
          {
            if (!v57)
            {
              goto LABEL_169;
            }

            *v53 = 10.0;
            if (v52 < 0.0)
            {
              *v53 = -10.0;
            }
          }

          else
          {
            if (!v57)
            {
              goto LABEL_169;
            }

            *v53 = v47 * v52;
          }
        }

        ++v40;
        v19 = v45++ >= 0xB;
      }

      while (!v19);
      if (v13 <= ++v39)
      {
        v58 = 0;
        v59 = 0;
        v60 = 0;
        result = 0;
        v61 = 0;
        LOWORD(v93[0]) = 0;
        v62 = 12;
        while (1)
        {
          v63 = 0;
          v64 = 0;
          v65 = v58;
          v66 = 4 * v62;
          v58 += 12;
          do
          {
            v67 = &__b[v65];
            v68 = v67 + 1;
            if (v67 < __b || v68 > v99 || v67 >= v68)
            {
              goto LABEL_169;
            }

            if (*v67 == 0.0)
            {
              ++v64;
            }

            else
            {
              v64 = 0;
            }

            ++v65;
            v19 = v63++ >= 0xB;
          }

          while (!v19);
          if (v64)
          {
            if (v61 == 0 && v59 > 0)
            {
              v61 = 1;
              v71 = 0;
            }

            else
            {
              v71 = result;
            }

            v72 = v93 + v71;
            if (v72 < v93 || v72 + 1 > v94 || v72 > v72 + 1)
            {
              goto LABEL_169;
            }

            *v72 = v59;
            result = (v71 + 1);
            if (v71)
            {
              v73 = 0;
            }

            else
            {
              v73 = v61 == 1;
            }

            if (v73)
            {
              v60 = 0;
            }

            if (v64 >= 10)
            {
              v74 = 0;
              v75 = v93 + v60;
              v78 = v75 + 1 <= v94 && v75 < v75 + 1 && v75 >= v93;
              do
              {
                v79 = (v95 + v66 + 8);
                v80 = (v95 + v66 + 12);
                if ((v95 + v66 + 8) < __b || v80 > v99 || v79 > v80)
                {
                  goto LABEL_169;
                }

                if (*v79 == 0.0)
                {
                  if (!v78)
                  {
                    goto LABEL_169;
                  }

                  v83 = &__b[12 * *v75 + v74];
                  v84 = v83 + 1;
                  v85 = v83 < __b || v84 > v99;
                  if (v85 || v83 >= v84)
                  {
                    goto LABEL_169;
                  }

                  *v79 = __b[12 * *v75 + v74] * 0.5;
                }

                ++v74;
                v66 += 4;
              }

              while (v74 != 12);
              ++v60;
            }
          }

          else if (result == 1 && v61 == 1)
          {
            v60 = 0;
          }

          ++v59;
          v62 += 12;
          if (v13 <= v59)
          {
            goto LABEL_156;
          }
        }
      }
    }
  }

  LOWORD(v93[0]) = 0;
LABEL_156:
  if (v5 >= 1)
  {
    v88 = v5;
    for (i = __b; ; ++i)
    {
      *v7 = 0;
      v90 = i + 1;
      v91 = i < __b || v90 > v99;
      if (v91 || i >= v90)
      {
        break;
      }

      if (fabsf(*i) > v3)
      {
        *v7 = *i;
      }

      ++v7;
      if (!--v88)
      {
        return result;
      }
    }

    goto LABEL_169;
  }

  return result;
}

void SpectrumSmoothing_nss(uint64_t a1)
{
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = v8;
  v160 = v10;
  v11 = v7;
  *v170 = *MEMORY[0x1E69E9840];
  v12 = v169;
  bzero(v169, 0xA20uLL);
  memset(__b, 255, sizeof(__b));
  v14 = vcvts_n_f32_s32(v9, 3uLL);
  v15 = v9 + 7;
  if (v9 >= 0)
  {
    v16 = v9;
  }

  else
  {
    v16 = v9 + 7;
  }

  v17 = v16 >> 3;
  v23 = v14 <= v17;
  *&v18 = -1;
  *(&v18 + 1) = -1;
  v167[8] = v18;
  v167[9] = v18;
  v167[6] = v18;
  v167[7] = v18;
  v167[4] = v18;
  v167[5] = v18;
  v167[2] = v18;
  v167[3] = v18;
  v167[0] = v18;
  v167[1] = v18;
  v166[8] = v18;
  v166[9] = v18;
  v166[6] = v18;
  v166[7] = v18;
  v166[4] = v18;
  v166[5] = v18;
  v166[2] = v18;
  v166[3] = v18;
  v166[0] = v18;
  v166[1] = v18;
  v165[8] = v18;
  v165[9] = v18;
  v165[6] = v18;
  v165[7] = v18;
  v165[4] = v18;
  v165[5] = v18;
  v165[2] = v18;
  v165[3] = v18;
  v165[0] = v18;
  v165[1] = v18;
  __src[8] = v18;
  __src[9] = v18;
  __src[6] = v18;
  __src[7] = v18;
  __src[4] = v18;
  __src[5] = v18;
  __src[2] = v18;
  __src[3] = v18;
  __src[0] = v18;
  __src[1] = v18;
  __dst[8] = v18;
  __dst[9] = v18;
  __dst[6] = v18;
  __dst[7] = v18;
  __dst[4] = v18;
  __dst[5] = v18;
  __dst[2] = v18;
  __dst[3] = v18;
  __dst[0] = v18;
  __dst[1] = v18;
  v162[8] = v18;
  v162[9] = v18;
  v162[6] = v18;
  v162[7] = v18;
  v162[4] = v18;
  v162[5] = v18;
  v162[2] = v18;
  v162[3] = v18;
  if (!v23)
  {
    LOWORD(v17) = v17 + 1;
  }

  v162[0] = v18;
  v162[1] = v18;
  v159 = v9;
  if (v9 < 1)
  {
LABEL_19:
    v6 = v9;
    v25 = v17;
    v2 = v170;
    v1 = v169;
    if (v9 > v15)
    {
      v15 = v9;
    }

    v26 = v15 - v9 + 1;
    v27 = v9;
    v19 = v169;
    v28 = __b;
    while (1)
    {
      v20 = v19 + v27 * 4;
      if (v19 + v27 * 4 < v169)
      {
        break;
      }

      v13 = v20 + 4;
      if (v20 + 4 > v170 || v20 > v13)
      {
        break;
      }

      *v20 = 0;
      v20 = &v28[v27];
      if (&v28[v27] < __b)
      {
        break;
      }

      v13 = v20 + 4;
      if (v20 + 4 > v169 || v20 > v13)
      {
        break;
      }

      *v20 = 0;
      ++v28;
      v19 += 4;
      if (!--v26)
      {
        v12 = v9;
        if (v9 < 1)
        {
          v43 = 0.0;
          v30 = 0.0;
LABEL_54:
          v5 = log10(v43 / ((v30 / v6) + 1.0e-20) + 1.0e-20);
          if (v25 < 1)
          {
            goto LABEL_205;
          }

          v44 = 0;
          v19 = __b;
          v20 = v167;
          v13 = v165;
          v4 = v166;
          v45 = v169;
          v161 = v25;
LABEL_56:
          v46 = v167 + v44;
          v47 = v46 + 1;
          if (v46 >= v167 && v47 <= __b && v46 <= v47)
          {
            *(v167 + v44) = 0;
            v50 = v166 + v44;
            if (v50 >= v166 && v50 + 1 <= v167 && v50 <= v50 + 1)
            {
              *v50 = 0.0;
              v51 = 0.0;
              v52 = v45;
              v53 = 4;
              while (1)
              {
                v54 = v52 + 1;
                v55 = v52 < v169 || v54 > v170;
                if (v55 || v52 > v54)
                {
                  break;
                }

                v57 = *v52++;
                v51 = v51 + fabsf(v57);
                *v46 = v51;
                if (!--v53)
                {
                  v58 = 0;
                  v59 = 0.0;
                  while (1)
                  {
                    v60 = &v45[v58 + 4];
                    v61 = &v45[v58 + 5];
                    v62 = v60 < v169 || v61 > v170;
                    if (v62 || v60 > v61)
                    {
                      goto LABEL_150;
                    }

                    v59 = v59 + fabsf(*v60);
                    *v50 = v59;
                    if (++v58 == 4)
                    {
                      v64 = v51 * 0.25;
                      *(v167 + v44) = v64;
                      v65 = v59 * 0.25;
                      *(v166 + v44) = v65;
                      v66 = v165 + 4 * v44;
                      if (v66 < v165 || v66 + 4 > v166 || v66 > v66 + 4)
                      {
                        goto LABEL_150;
                      }

                      v67 = v64 * v65;
                      v68 = v64 + v65;
                      if (v67 != 0.0)
                      {
                        v68 = v67;
                      }

                      *(v165 + v44++) = v68;
                      v45 += 8;
                      if (v44 == v25)
                      {
                        LOWORD(v69) = 0;
                        v70 = __src;
                        v3 = v165;
                        v71 = v165;
                        while (1)
                        {
                          v72 = v71 + 1;
                          v73 = v71 + 1 > v166 || v71 > v72;
                          v74 = v70 + 1;
                          v75 = !v73 && v74 >= v70;
                          if (!v75 || v74 > v165)
                          {
                            goto LABEL_150;
                          }

                          v77 = log10(fabs(*v71 + 1.0)) * 20.0;
                          *v70 = v77;
                          v69 = (v69 + 1);
                          v71 = v72;
                          ++v70;
                          if (v69 >= v25)
                          {
                            v78 = __src;
                            v19 = v25;
                            while (1)
                            {
                              v79 = v78 + 1;
                              v80 = v78 < __src || v79 > v165;
                              if (v80 || v78 > v79)
                              {
                                goto LABEL_150;
                              }

                              *v78 = *v78 * 0.5;
                              ++v78;
                              if (!--v19)
                              {
                                v4 = __src;
                                if (v25 > 6)
                                {
                                  v83 = 0;
                                  v20 = __dst + 4;
                                  LODWORD(__dst[0]) = __src[0];
                                  v84 = *__src + *(__src + 1);
                                  v13 = 3;
                                  v85 = 1;
                                  v19 = __src;
                                  while (1)
                                  {
                                    v86 = (__src + v83 + 12);
                                    if (v86 > v165)
                                    {
                                      break;
                                    }

                                    v87 = (v20 + 4);
                                    if (v20 + 4 > __src)
                                    {
                                      break;
                                    }

                                    v13 = v13;
                                    v88 = v84 + *(__src + v83 + 8);
                                    *v20 = v88 / v13;
                                    v20 = &__src[1] + v83;
                                    if (v20 > v165)
                                    {
                                      break;
                                    }

                                    v84 = v88 + *v86;
                                    v13 = (v13 + 2);
                                    v83 += 8;
                                    v20 = v87;
                                    v75 = v85++ >= 2;
                                    if (v75)
                                    {
                                      v20 = __src + v83 + 8;
                                      v19 = __src;
                                      if (v20 >= __src)
                                      {
                                        v89 = __src + v83 + 12;
                                        if (v89 <= v165 && v20 <= v89)
                                        {
                                          v19 = (v87 + 1);
                                          if (v87 + 1 >= v87 && v19 <= __src)
                                          {
                                            v90 = 0;
                                            v91 = v84 + *v20;
                                            *v87 = v91 * 0.14286;
                                            v20 = (v25 - 3);
                                            LODWORD(v13) = 3;
                                            LOWORD(v87) = 4;
                                            while (1)
                                            {
                                              v92 = (__src + v90);
                                              v13 = (v13 + 1);
                                              if (v20 <= v13)
                                              {
                                                break;
                                              }

                                              v93 = (__src + v83);
                                              v94 = __src + v83 + 12;
                                              if (v94 >= __src && v93 + 4 <= v165 && v94 <= v93 + 16 && v92 >= __src)
                                              {
                                                v95 = (__src + v90 + 4);
                                                if (v95 <= v165 && v92 <= v95 && v19 + 4 >= v19 && v19 + 4 <= __src)
                                                {
                                                  v96 = v91 + v93[3];
                                                  v97 = &__src[1] + v90 + 4;
                                                  v91 = v96 - *(__src + v90);
                                                  *v19 = v91 * 0.14286;
                                                  LOWORD(v87) = v87 + 1;
                                                  v90 += 4;
                                                  v83 += 4;
                                                  v19 += 4;
                                                  if (v97 >= __src + v90 + 12)
                                                  {
                                                    continue;
                                                  }
                                                }
                                              }

                                              goto LABEL_150;
                                            }

                                            if (v92 >= __src && v92 + 1 <= v165 && v92 <= v92 + 1)
                                            {
                                              v98 = v91 - *v92;
                                              LODWORD(v87) = v87;
                                              v99 = 5;
                                              v20 = __src;
                                              v13 = v90;
                                              do
                                              {
                                                if (v25 - 1 <= v87)
                                                {
                                                  goto LABEL_151;
                                                }

                                                v100 = __src + v90;
                                                v101 = (__src + v90 + 4);
                                                if (v101 < __src)
                                                {
                                                  break;
                                                }

                                                v102 = (v100 + 8);
                                                if (v100 + 8 > v165)
                                                {
                                                  break;
                                                }

                                                if (v101 > v102)
                                                {
                                                  break;
                                                }

                                                v103 = v19 + 4;
                                                if (v19 + 4 < v19)
                                                {
                                                  break;
                                                }

                                                if (v103 > __src)
                                                {
                                                  break;
                                                }

                                                v104 = v98 - *v101;
                                                *v19 = v104 / v99;
                                                v19 = __src + v90 + 12;
                                                if (v19 > v165)
                                                {
                                                  break;
                                                }

                                                if (v102 > v19)
                                                {
                                                  break;
                                                }

                                                v99 -= 2;
                                                v98 = v104 - *v102;
                                                LODWORD(v87) = v87 + 1;
                                                v105 = __src + v13;
                                                v13 += 4;
                                                v106 = v105 + 20;
                                                v90 += 8;
                                                v19 = v103;
                                              }

                                              while (v106 >= __src + v13 + 12);
                                            }
                                          }
                                        }
                                      }

                                      goto LABEL_150;
                                    }
                                  }
                                }

                                else
                                {
                                  v82 = 4 * (v25 & 0x3FFF);
                                  memcpy(__dst, __src, v82);
                                  if ((__dst + v82) >= __dst)
                                  {
                                    goto LABEL_162;
                                  }
                                }

                                goto LABEL_150;
                              }
                            }
                          }
                        }
                      }

                      goto LABEL_56;
                    }
                  }
                }
              }
            }
          }
        }

        else
        {
          v30 = 0.0;
          v31 = v169;
          v19 = v9;
          while (1)
          {
            v32 = v31 + 1;
            v33 = v31 < v169 || v32 > v170;
            if (v33 || v31 > v32)
            {
              break;
            }

            v35 = *v31++;
            v30 = v30 + fabsf(v35);
            if (!--v19)
            {
              v36 = 0.0;
              v37 = v169;
              v19 = v9;
              while (1)
              {
                v38 = v37 + 1;
                v39 = v37 < v169 || v38 > v170;
                if (v39 || v37 > v38)
                {
                  goto LABEL_150;
                }

                v41 = *v37++;
                v42 = fabsf(v41);
                if (v36 < v42)
                {
                  v36 = v42;
                }

                if (!--v19)
                {
                  v43 = v36;
                  goto LABEL_54;
                }
              }
            }
          }
        }

        goto LABEL_150;
      }
    }
  }

  else
  {
    v19 = v170;
    v20 = v169;
    v13 = __b;
    v21 = v9;
    while (1)
    {
      v22 = v20 + 4;
      v23 = v20 < v169 || v22 > v170;
      if (v23 || v20 > v22)
      {
        break;
      }

      *v20 = *v11;
      if (v13 < __b || v13 + 4 > v169 || v13 > v13 + 4)
      {
        break;
      }

      *v13 = 0;
      v13 += 4;
      ++v11;
      v20 += 4;
      if (!--v21)
      {
        goto LABEL_19;
      }
    }
  }

  while (1)
  {
    while (1)
    {
      do
      {
LABEL_150:
        __break(0x5519u);
LABEL_151:
        v107 = (v20 + v13 + 16);
        v108 = v20 + v13 + 20;
        v109 = v108 > v3 || v107 > v108;
        v110 = v19 + 4;
      }

      while (v109 || v110 > v4 || v19 > v110);
      *v19 = *v107;
LABEL_162:
      v3 = v162;
      v113 = __dst;
      v114 = v162;
      v115 = v161;
      do
      {
        v116 = v113 + 1;
        v118 = v113 < __dst || v116 > v4 || v113 > v116;
        v119 = v114 + 1;
        if (v118 || v114 < v162 || v119 > __dst || v114 > v119)
        {
          goto LABEL_150;
        }

        v123 = *v113++;
        v124 = __exp10((v123 / -20.0));
        *v114++ = v124;
        --v115;
      }

      while (v115);
      v125 = 0;
      v19 = v169;
      v20 = v169;
      v13 = __b;
      do
      {
        v126 = 0;
        v127 = v162 + v125;
        v130 = v127 + 1 > __dst || v127 > v127 + 1 || v127 < v162;
        do
        {
          v131 = (v20 + v126);
          v132 = v20 + v126 + 4;
          v135 = v132 > v2 || v131 > v132 || v131 < v169;
          if (v135 || v130)
          {
            goto LABEL_150;
          }

          v136 = (v13 + v126);
          if (v13 + v126 < __b || v136 + 1 > v1 || v136 > v136 + 1)
          {
            goto LABEL_150;
          }

          *v136 = *v131 * *v127;
          v126 += 4;
        }

        while (v126 != 32);
        ++v125;
        v13 += 32;
        v20 += 32;
      }

      while (v125 != v161);
LABEL_205:
      v137 = 0.0;
      v138 = 0.0;
      if (v159 < 1)
      {
        break;
      }

      v139 = __b;
      v19 = v12;
      while (1)
      {
        v140 = v139 + 1;
        v141 = v139 < __b || v140 > v1;
        if (v141 || v139 > v140)
        {
          break;
        }

        v143 = *v139++;
        v138 = v138 + fabsf(v143);
        if (!--v19)
        {
          goto LABEL_215;
        }
      }
    }

LABEL_215:
    v144 = v5;
    v145 = (v144 * 10.0) + -16.0;
    if (v145 >= 0.0)
    {
      v137 = v145;
    }

    if (v159 < 1)
    {
      break;
    }

    v146 = v138 / v6;
    v147 = (v137 + 2.5) * (v138 / v6);
    v148 = fabsf(v147);
    v149 = __b;
    v19 = v12;
    while (1)
    {
      v150 = v149 + 1;
      v151 = v149 < __b || v150 > v1;
      if (v151 || v149 > v150)
      {
        break;
      }

      v153 = fabsf(*v149);
      if (v153 > v147)
      {
        if (*v149 >= 0.0)
        {
          v154 = v147;
        }

        else
        {
          v154 = -v147;
        }

        *v149 = v154;
        v153 = v148;
      }

      if (v153 < (v146 * 0.25))
      {
        *v149 = 0.0;
      }

      ++v149;
      if (!--v19)
      {
        v155 = __b;
        while (1)
        {
          v19 = (v155 + 1);
          v156 = v155 < __b || v19 > v1;
          if (v156 || v155 > v19)
          {
            break;
          }

          v158 = *v155++;
          *v160++ = v158;
          if (!--v12)
          {
            return;
          }
        }

        goto LABEL_150;
      }
    }
  }
}

uint64_t ar_div(int a1, int a2)
{
  if (a1 >= 0)
  {
    v3 = a1;
  }

  else
  {
    v3 = -a1;
  }

  if (a1 == 0x80000000)
  {
    v4 = 0x7FFFFFFF;
  }

  else
  {
    v4 = v3;
  }

  if (a2 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = -a2;
  }

  if (a2 == 0x80000000)
  {
    v6 = 0x7FFFFFFF;
  }

  else
  {
    v6 = v5;
  }

  if (v6 - 1 >= v4)
  {
    return 0;
  }

  if (v4 == v6)
  {
    return 1;
  }

  v8 = v4 >> 30;
  if (v4 >> 30)
  {
    v8 = 0;
  }

  else
  {
    v9 = v4;
    do
    {
      v10 = v9 >> 29;
      v9 *= 2;
      LOWORD(v8) = v8 + 1;
    }

    while (!v10);
    v8 = v8;
  }

  if ((v6 - 1) > 0x3FFFFFFE)
  {
    v11 = 0;
  }

  else
  {
    LOWORD(v11) = 0;
    v12 = v6;
    do
    {
      v13 = v12 >> 29;
      v12 *= 2;
      LOWORD(v11) = v11 + 1;
    }

    while (!v13);
    v11 = v11;
  }

  v14 = a2 ^ a1;
  v15 = v11 - v8;
  if ((v11 - v8) >= 0x8000)
  {
    v16 = 0x7FFF;
    v18 = L_shl(v6, 0x7FFF);
LABEL_29:
    LOWORD(v19) = 0;
    v20 = 0;
    while (1)
    {
      v21 = v4 - v18;
      if ((((v18 ^ v4) & ((v4 - v18) ^ v4) & 0x80000000) != 0) != v17)
      {
        v21 = (v4 >> 31) ^ 0x7FFFFFFF;
      }

      v22 = v20 - 0x40000000;
      v23 = 2 * v20;
      v20 = (v20 >> 31) ^ 0x7FFFFFFF;
      if (v22 < 0)
      {
        v20 = v23;
      }

      if ((v21 & 0x80000000) == 0)
      {
        if (v21 <= 0x3FFFFFFF)
        {
          v4 = 2 * v21;
        }

        else
        {
          v4 = 0x7FFFFFFF;
        }

        if (((v20 + 1) ^ v20) > -1 || v20 < 0)
        {
          ++v20;
        }

        else
        {
          v20 = 0x7FFFFFFF;
        }

        goto LABEL_54;
      }

      v25 = v18 + v21;
      if ((v18 ^ v21) < 0 || ((v25 ^ v21) & 0x80000000) == 0)
      {
        v27 = v25 - 0x40000000;
        v26 = 2 * v25;
        if ((v25 & 0x80000000) == 0)
        {
          v28 = 0x7FFFFFFF;
          goto LABEL_51;
        }
      }

      else
      {
        v26 = 0;
        v27 = 0x40000000;
      }

      v28 = 0x80000000;
LABEL_51:
      if (v27 >= 0)
      {
        v4 = v28;
      }

      else
      {
        v4 = v26;
      }

LABEL_54:
      v19 = (v19 + 1);
      v17 = __OFSUB__(v19, v16);
      if (v19 >= v16)
      {
        goto LABEL_58;
      }
    }
  }

  if (v15 >= -32768)
  {
    v18 = L_shl(v6, v15);
    v16 = 0x7FFF;
    v17 = __OFSUB__(v15, 0x7FFF);
    if (v15 == 0x7FFF)
    {
      goto LABEL_29;
    }

    v16 = (v15 + 1);
    v17 = __OFSUB__(v16, 1);
    if (v16 >= 1)
    {
      goto LABEL_29;
    }
  }

  v20 = 0;
LABEL_58:
  if (v20 == 0x80000000)
  {
    v29 = 0x7FFFFFFF;
  }

  else
  {
    v29 = -v20;
  }

  if (v14 < 0)
  {
    return v29;
  }

  else
  {
    return v20;
  }
}

uint64_t srt_vec_ind_fx(uint64_t result, unint64_t a2, unint64_t a3, int a4)
{
  if (a4 >= 1)
  {
    v4 = 0;
    v5 = a4;
    v6 = vdupq_n_s64(a4 - 1);
    v7 = xmmword_19B0B2390;
    v8 = xmmword_19B0B23A0;
    v9 = xmmword_19B0A5840;
    v10 = xmmword_19B0A5850;
    v11 = (a3 + 8);
    v12 = vdupq_n_s64(8uLL);
    do
    {
      v13 = vmovn_s64(vcgeq_u64(v6, v10));
      if (vuzp1_s8(vuzp1_s16(v13, *v6.i8), *v6.i8).u8[0])
      {
        *(v11 - 4) = v4;
      }

      if (vuzp1_s8(vuzp1_s16(v13, *&v6), *&v6).i8[1])
      {
        *(v11 - 3) = v4 | 1;
      }

      if (vuzp1_s8(vuzp1_s16(*&v6, vmovn_s64(vcgeq_u64(v6, *&v9))), *&v6).i8[2])
      {
        *(v11 - 2) = v4 | 2;
        *(v11 - 1) = v4 | 3;
      }

      v14 = vmovn_s64(vcgeq_u64(v6, v8));
      if (vuzp1_s8(*&v6, vuzp1_s16(v14, *&v6)).i32[1])
      {
        *v11 = v4 | 4;
      }

      if (vuzp1_s8(*&v6, vuzp1_s16(v14, *&v6)).i8[5])
      {
        v11[1] = v4 | 5;
      }

      if (vuzp1_s8(*&v6, vuzp1_s16(*&v6, vmovn_s64(vcgeq_u64(v6, *&v7)))).i8[6])
      {
        v11[2] = v4 | 6;
        v11[3] = v4 | 7;
      }

      v4 += 8;
      v8 = vaddq_s64(v8, v12);
      v9 = vaddq_s64(v9, v12);
      v10 = vaddq_s64(v10, v12);
      v7 = vaddq_s64(v7, v12);
      v11 += 8;
    }

    while (((a4 + 7) & 0xFFF8) != v4);
    v15 = 0;
    do
    {
      *(a2 + v15) = *(result + v15);
      v15 += 4;
    }

    while (4 * a4 != v15);
    if (a4 != 1)
    {
      v16 = 0;
      v17 = a2 + 4 * v5;
      v18 = 1;
      v19 = a3 + 2 * v5;
      while (1)
      {
        v20 = (v16 + 1);
        if (v20 < v5)
        {
          break;
        }

LABEL_61:
        ++v18;
        v16 = v20;
        if (v5 - 1 <= v20)
        {
          return result;
        }
      }

      v21 = (a2 + 4 * v18);
      v22 = (a3 + 2 * v18);
      v23 = v18 + 1;
      v24 = (a2 + 4 * v16);
      result = (v24 + 1) > v17 || v24 >= v24 + 1 || v24 < a2;
      v27 = (a3 + 2 * v16);
      v30 = (v27 + 1) <= v19 && v27 < v27 + 1 && v27 >= a3;
      while (1)
      {
        v33 = (v21 + 1) > v17 || v21 >= v21 + 1 || v21 < a2;
        if ((v33 | result))
        {
LABEL_63:
          __break(0x5519u);
          return result;
        }

        v34 = *v21;
        v35 = *v24;
        v36 = *v21 - *v24;
        if ((*v24 ^ *v21) < 0 && (v36 ^ v34) < 0)
        {
          if ((v34 & 0x80000000) == 0)
          {
            goto LABEL_59;
          }
        }

        else if ((v36 & 0x80000000) == 0)
        {
          goto LABEL_59;
        }

        if (!v30 || v22 < a3 || (v22 + 1) > v19 || v22 > v22 + 1)
        {
          goto LABEL_63;
        }

        v37 = *v27;
        *v27 = *v22;
        *v22 = v37;
        *v24 = v34;
        *v21 = v35;
LABEL_59:
        ++v21;
        ++v22;
        if (v5 == v23++)
        {
          goto LABEL_61;
        }
      }
    }
  }

  return result;
}