uint64_t decode_position_ari_fx(uint64_t result, int a2, uint64_t a3, _WORD *a4, uint64_t *a5)
{
  v113 = result;
  v5 = a3;
  v117[1] = *MEMORY[0x1E69E9840];
  memset(v115, 0, sizeof(v115));
  memset(v116, 0, sizeof(v116));
  if (a2 >= 1)
  {
    v7 = 0;
    v8 = a5[2];
    while (1)
    {
      v9 = (*a5 + v7);
      v10 = (v9 + 1) > a5[1] || v9 >= v9 + 1;
      if (v10 || v9 < v8)
      {
        break;
      }

      *v9 = 0;
      v7 += 4;
      if (4 * a2 == v7)
      {
        goto LABEL_12;
      }
    }

LABEL_176:
    __break(0x5519u);
  }

LABEL_12:
  if (a3 <= 1)
  {
    if ((a3 & ((a3 - 1) ^ a3)) < 0 != __OFSUB__(a3, 1) || a3 != 1)
    {
LABEL_159:
      *a4 = 0;
      return result;
    }

    *a4 = 1;
    v116[0] = 0x3FFF;
    if (a2 >= 1)
    {
      v73 = 0;
      v74 = &v116[1];
      while (1)
      {
        v75 = div_l((~v73 + a2) << 16, a2, &v114);
        if (v74 < v116 || v74 + 1 > v117 || v74 > v74 + 1)
        {
          goto LABEL_176;
        }

        v76 = (v75 << 15) + 0x8000;
        v77 = (v76 ^ (v75 << 15)) > -1 || v75 < 0;
        v78 = HIWORD(v76);
        if (!v77)
        {
          LOWORD(v78) = 0x7FFF;
        }

        *v74++ = v78;
        if (a2 == ++v73)
        {
          goto LABEL_171;
        }
      }
    }

    goto LABEL_171;
  }

  BitsFromPulses_fx = GetBitsFromPulses_fx(a3, a2);
  if (v5 >= a2)
  {
    v13 = a2;
  }

  else
  {
    v13 = v5;
  }

  v110 = v13;
  if (a2 >= 1)
  {
    v14 = BitsFromPulses_fx;
    v15 = 0;
    v16 = 0;
    v17 = &table_logcum_fx[a2];
    v18 = v17 + 1;
    v19 = v17 + 2;
    v20 = v19 > ddec || v18 > v19;
    v108 = v18;
    v22 = !v20 && v18 >= table_logcum_fx;
    v109 = v22;
    v23 = &table_logcum_fx[v5];
    v26 = v23 + 1 <= ddec && v23 < v23 + 1 && v23 >= table_logcum_fx;
    v107 = v26;
    while (1)
    {
      v27 = v16 + 1;
      v28 = (v16 + 1) << 16;
      if (v16 == 0x7FFF)
      {
        v28 = 2147418112;
      }

      v29 = v28 - v14;
      v30 = v14 ^ v28;
      v31 = (v28 - v14) ^ v28;
      v32 = (v28 >> 31) ^ 0x7FFFFFFF;
      if ((v30 & v31) < 0 == __OFSUB__(0x7FFF, v16))
      {
        v32 = v29;
      }

      if (!v109)
      {
        goto LABEL_176;
      }

      v33 = &table_logcum_fx[v16];
      v34 = v33 + 2;
      if (v33 + 2 < table_logcum_fx)
      {
        goto LABEL_176;
      }

      if (v33 + 3 > ddec)
      {
        goto LABEL_176;
      }

      if (v34 > v33 + 3)
      {
        goto LABEL_176;
      }

      v35 = &table_logcum_fx[a2 - v15];
      if (v35 < table_logcum_fx || v35 + 1 > ddec || v35 > v35 + 1)
      {
        goto LABEL_176;
      }

      v36 = *v108;
      v37 = *v35;
      v38 = v37 + *v34;
      v39 = v37 ^ *v34;
      v40 = (v38 ^ *v34) > -1 || v39 < 0;
      v41 = (*v34 >> 31) ^ 0x7FFFFFFF;
      if (v40)
      {
        v41 = v38;
      }

      v42 = v36 - v41;
      v43 = v41 ^ v36;
      v44 = v42 ^ v36;
      v45 = (v36 >> 31) ^ 0x7FFFFFFF;
      v46 = (v43 & v44) < 0 ? v45 : v42;
      if (!v107)
      {
        goto LABEL_176;
      }

      v47 = v33 + 1;
      if (v47 < table_logcum_fx)
      {
        goto LABEL_176;
      }

      if (v47 > v34)
      {
        goto LABEL_176;
      }

      v48 = &table_logcum_fx[v5 - v15];
      if (v48 < table_logcum_fx || v48 + 1 > ddec || v48 > v48 + 1)
      {
        goto LABEL_176;
      }

      v49 = v16;
      v50 = *v23;
      v51 = *v47;
      v52 = *v48;
      v53 = v52 + v51;
      v54 = v52 ^ v51;
      v55 = (v53 ^ v51) > -1 || v54 < 0;
      v56 = (v51 >> 31) ^ 0x7FFFFFFF;
      if (v55)
      {
        v56 = v53;
      }

      v57 = v50 - v56;
      v58 = v56 ^ v50;
      v59 = v57 ^ v50;
      v60 = (v50 >> 31) ^ 0x7FFFFFFF;
      if ((v58 & v59) >= 0)
      {
        v60 = v57;
      }

      v61 = v60 + v46;
      v62 = v60 ^ v46;
      v63 = (v61 ^ v46) > -1 || v62 < 0;
      v64 = (v46 >> 31) ^ 0x7FFFFFFF;
      if (v63)
      {
        v64 = v61;
      }

      v65 = v64 + v32;
      v66 = v64 ^ v32;
      if ((v65 ^ v32) <= -1 && v66 >= 0)
      {
        v65 = (v32 >> 31) ^ 0x7FFFFFFF;
      }

      v68 = v65 + 917498;
      v69 = v115 + v49;
      if ((v65 & 0x80000000) == 0 && (v68 ^ v65) < 0)
      {
        break;
      }

      if (v65 >= -917497)
      {
        goto LABEL_82;
      }

      if (v69 < v115 || v69 + 1 > v116 || v69 > v69 + 1)
      {
        goto LABEL_176;
      }

      LOWORD(v71) = 1;
LABEL_96:
      *v69 = v71;
      v15 = v27;
      v16 = v27;
      if (v110 <= v27)
      {
        goto LABEL_97;
      }
    }

    v68 = 0x7FFFFFFF;
LABEL_82:
    v70 = Pow2_11469(v68 >> 16, v68 >> 1, &v114);
    if (v69 < v115 || v69 + 1 > v116 || v69 > v69 + 1)
    {
      goto LABEL_176;
    }

    if (v70 <= -32768)
    {
      v71 = -32768;
    }

    else
    {
      v71 = v70;
    }

    if (v71 >= 0x7FFF)
    {
      v71 = 0x7FFF;
    }

    if (v71 <= 1)
    {
      LOWORD(v71) = 1;
    }

    goto LABEL_96;
  }

LABEL_97:
  if (v110 > 0x78)
  {
    goto LABEL_176;
  }

  ar_make_model(v115, v116, v117, v110);
  result = ar_decode(v113, v116, v117);
  v72 = 0x7FFF;
  if (result == 0x7FFF)
  {
    *a4 = 0x7FFF;
    v116[0] = 0x3FFF;
    goto LABEL_116;
  }

  v72 = result + 1;
  *a4 = result + 1;
  v116[0] = 0x3FFF;
  if (!result)
  {
    if (a2 >= 1)
    {
      v96 = 0;
      v97 = &v116[1];
      do
      {
        v98 = div_l((~v96 + a2) << 16, a2, &v114);
        if (v97 < v116 || v97 + 1 > v117 || v97 > v97 + 1)
        {
          goto LABEL_176;
        }

        v99 = (v98 << 15) + 0x8000;
        v100 = (v99 ^ (v98 << 15)) > -1 || v98 < 0;
        v101 = HIWORD(v99);
        if (!v100)
        {
          LOWORD(v101) = 0x7FFF;
        }

        *v97++ = v101;
      }

      while (a2 != ++v96);
    }

LABEL_171:
    v103 = a5[1];
    v102 = a5[2];
    v104 = *a5;
    result = ar_decode(v113, v116, v117);
    v105 = (v104 + 4 * result);
    if ((v105 + 1) > v103 || v105 > v105 + 1 || v105 < v102)
    {
      goto LABEL_176;
    }

    *v105 = 1;
    return result;
  }

  if (result <= 0x7FFEu)
  {
LABEL_116:
    v79 = 0;
    v80 = 0;
    v81 = v72;
    while (1)
    {
      v111 = v79;
      v82 = 0;
      if (a2 > v79)
      {
        break;
      }

LABEL_144:
      if (v80)
      {
LABEL_145:
        v80 = 1;
      }

      else
      {
        result = ar_decode(v113, v116, v117);
        v80 = 0;
        v82 += result;
      }

      v91 = v82 + v111;
      if (v91 >= a2)
      {
        goto LABEL_159;
      }

      v92 = (*a5 + 4 * v91);
      if ((v92 + 1) > a5[1] || v92 >= v92 + 1 || v92 < a5[2])
      {
        goto LABEL_176;
      }

      *v92 = 1;
      v79 = v111 + v82 + 1;
      v95 = __OFSUB__(v81--, 1);
      if ((v81 < 0) ^ v95 | (v81 == 0))
      {
        return result;
      }
    }

    v83 = v79;
    LODWORD(v84) = 0x1000000;
    while (a2 - v79 != v81)
    {
      result = div_l(v81 << 16, (a2 - v79), &v114);
      v85 = 0x8000 - result;
      if (v84 != 0x80000000 || result)
      {
        goto LABEL_121;
      }

      v86 = 0x7FFFFFFF;
      LODWORD(v84) = 0x7FFFFFFF;
LABEL_127:
      v87 = ((v86 + 0x8000) ^ v86) > -1 || v86 < 0;
      v88 = (v86 + 0x8000) >> 16;
      if (!v87)
      {
        v88 = 0x7FFF;
      }

      v89 = &v116[v79 - (v83 + v82)];
      v90 = v89 + 1;
      if (v89 + 1 < v116 || v89 + 2 > v117 || v90 > v89 + 2)
      {
        goto LABEL_176;
      }

      *v90 = v88;
      if (v84 >= 1 && !v88)
      {
        goto LABEL_140;
      }

      if (v89 < v116 || v89 > v90)
      {
        goto LABEL_176;
      }

      if (*v89 != v88)
      {
        v80 = 0;
      }

      else
      {
LABEL_140:
        result = ar_decode(v113, v116, v117);
        v82 += result;
        if (v79 - v83 != result)
        {
          goto LABEL_145;
        }

        LOWORD(v79) = v79 - 1;
        LODWORD(v84) = 0x1000000;
        v80 = 1;
      }

      v79 = (v79 + 1);
      if (v79 >= a2)
      {
        goto LABEL_144;
      }
    }

    v85 = 0;
LABEL_121:
    v84 = 2 * v85 * SWORD1(v84) + ((v84 * v85) >> 15);
    if ((v84 - 0x2000000) >> 26 == 63)
    {
      v86 = v84 << 6;
    }

    else
    {
      v86 = (v84 >> 31) ^ 0x7FFFFFFF;
    }

    goto LABEL_127;
  }

  return result;
}

unint64_t decode_mangitude_tcq_fx(unint64_t result, int a2, int a3, int a4, int *a5, _DWORD *a6, int *a7)
{
  v113 = result;
  v123 = 0x3FFF;
  v124 = 0;
  v122 = 0;
  v7 = &table_logcum_fx[a3];
  v8 = v7 + 1;
  v10 = v7 < table_logcum_fx || v8 > ddec || v7 >= v8;
  if (v10)
  {
    goto LABEL_234;
  }

  v11 = &table_logcum_fx[a4];
  if (v11 < table_logcum_fx)
  {
    goto LABEL_234;
  }

  if (v11 + 1 > ddec)
  {
    goto LABEL_234;
  }

  if (v11 > v11 + 1)
  {
    goto LABEL_234;
  }

  v12 = &table_logcum_fx[a3 - a4 + 1];
  if (v12 < table_logcum_fx || v12 + 1 > ddec || v12 > v12 + 1)
  {
    goto LABEL_234;
  }

  v13 = *v7;
  v14 = *v11;
  v15 = *v12 + *v11;
  if (((*v12 ^ v14) & 0x80000000) == 0 && (v15 ^ v14) < 0)
  {
    v15 = (v14 >> 31) ^ 0x7FFFFFFF;
    v122 = 1;
  }

  v16 = v13 - v15;
  if ((v15 ^ v13) < 0)
  {
    v18 = a5;
    v17 = a6;
    v19 = a2;
    if ((v16 ^ v13) < 0)
    {
      v16 = (v13 >> 31) ^ 0x7FFFFFFF;
      v122 = 1;
    }
  }

  else
  {
    v18 = a5;
    v17 = a6;
    v19 = a2;
  }

  if (a4 - a3 < 0x8000 && a4 - a3 > -32769)
  {
    if (a4 == a3)
    {
      if (v19 >= 1)
      {
        v70 = v19;
        do
        {
          v71 = *v18++;
          *v17++ = v71;
          --v70;
        }

        while (v70);
      }

      return result;
    }
  }

  else
  {
    v122 = 1;
  }

  if (a4 == -32768)
  {
    v107 = -32768 - a3;
    v108 = v16;
    LOWORD(v20) = 0;
    v114 = 0;
    v121 = 0x8000;
    v122 = 1;
    LOWORD(v21) = a3;
    goto LABEL_188;
  }

  v22 = v19 > 0;
  if (a4 == 1 && v19 >= 1)
  {
    for (i = 0; i != v19; ++i)
    {
      if (v18[i])
      {
        v17[i] = a3;
        return result;
      }
    }

    v22 = 1;
  }

  v107 = a4 - a3;
  v108 = v16;
  LOWORD(v20) = 0;
  if (!v22)
  {
    v121 = a4;
    LOWORD(v21) = a3;
    v114 = 0;
LABEL_188:
    if (v19 > v20)
    {
      v72 = v19;
      v73 = &v17[v19];
      v74 = a5;
      v75 = &a5[v19];
      v76 = v20;
      v77 = v20;
      v78 = v21 - v121;
      v79 = v78 < -32768;
      v80 = (v78 + 1);
      if (v78 < -32768)
      {
        v80 = -32767;
      }

      if (v78 != 0x7FFF)
      {
        v79 = 1;
      }

      v81 = v72 - v76;
      v82 = v77;
      v83 = v17;
      do
      {
        result = &v83[v82];
        v84 = &v83[v82 + 1];
        v85 = &v83[v82] < v17 || v84 > v73;
        if (v85 || result > v84)
        {
          goto LABEL_234;
        }

        *result = 0;
        v87 = &v74[v82];
        if (&v74[v82] < a5 || (v87 + 1) > v75 || v87 > v87 + 1)
        {
          goto LABEL_234;
        }

        if (*v87)
        {
          if (v79)
          {
            v88 = v80;
          }

          else
          {
            v88 = 0x7FFF;
          }

          if (v78 >= 0x8000)
          {
            v88 = 0x7FFF;
          }

          *result = v88;
        }

        ++v74;
        ++v83;
        --v81;
        v17 = a6;
      }

      while (v81);
    }

    if (v107 < 0x8000)
    {
      v91 = a4 != a3 || v107 <= -32769;
      v89 = v108;
      v90 = v114;
      if (!v91 || a4 <= 1)
      {
        return result;
      }
    }

    else
    {
      v89 = v108;
      v90 = v114;
      if (a4 < 2)
      {
        return result;
      }
    }

    v92 = *a7;
    v93 = v90 - 0x40000000;
    v94 = 2 * v90;
    v95 = (v90 >> 31) ^ 0x7FFFFFFF;
    if (v93 >= 0)
    {
      v96 = v95;
    }

    else
    {
      v96 = v94;
    }

    v97 = v89 - v96;
    v98 = v96 ^ v89;
    v99 = v97 ^ v89;
    v100 = (v89 >> 31) ^ 0x7FFFFFFF;
    if ((v98 & v99) < 0)
    {
      v101 = v100;
    }

    else
    {
      v101 = v97;
    }

    v102 = v101 + v92;
    v103 = v101 ^ v92;
    v104 = (v102 ^ v92) > -1 || v103 < 0;
    v105 = (v92 >> 31) ^ 0x7FFFFFFF;
    if (v104)
    {
      v105 = v102;
    }

    *a7 = v105;
    return result;
  }

  v121 = a4;
  LOWORD(v21) = a3;
  v114 = 0;
  if (a4 < 2)
  {
    goto LABEL_188;
  }

  v20 = 0;
  v114 = 0;
  v24 = 0;
  v112 = v19;
  LOWORD(v21) = a3;
  v121 = a4;
  while (2)
  {
    v115 = v24;
    v116 = v20;
    v25 = a5[v20];
    v17[v20] = v25;
    if (!v25)
    {
      v27 = 0;
      goto LABEL_147;
    }

    if (v21 < 1)
    {
      v27 = 0;
      goto LABEL_142;
    }

    v26 = 0;
    v27 = 0;
    v28 = &ddec[4 * v24];
    v29 = v28 + 2;
    v31 = (v28 + 2) <= v28 + 4 && v28 < v29;
    v120 = v31;
    v33 = v28 + 1 <= v28 + 4 && v29 <= (v28 + 1);
    v119 = v33;
    while (1)
    {
      v34 = v26;
      v35 = v121 - 1;
      if (v121 == 0x8000)
      {
        v122 = 1;
        v35 = 0x8000;
      }

      v36 = v21 - ++v26;
      if ((v21 - v26) >= 0x8000)
      {
        v122 = 1;
        v36 = 0x7FFF;
      }

      result = v35;
      v37 = result - v36;
      if (v37 >= 0x8000)
      {
        v38 = 0;
        v122 = 1;
LABEL_60:
        v39 = 0x7FFFLL;
        goto LABEL_84;
      }

      if (v37 > -32769)
      {
        if ((v37 & 0x80000000) == 0)
        {
          v38 = 0;
          goto LABEL_60;
        }
      }

      else
      {
        v122 = 1;
      }

      if (!v35)
      {
        goto LABEL_69;
      }

      if (v35 != 0xFFFF)
      {
        v41 = (v35 ^ (result >> 15));
        if (v41 < 0x4000)
        {
          v42 = 0;
          do
          {
            v40 = v42;
            v41 = (2 * v41);
            ++v42;
          }

          while (v41 < 0x4000);
          if (v42 == 0x8000)
          {
            v122 = 1;
            v40 = 0x8000;
          }

          goto LABEL_70;
        }

LABEL_69:
        v40 = -1;
        goto LABEL_70;
      }

      v40 = 14;
LABEL_70:
      v43 = v36;
      if (v36)
      {
        if (v36 == 0xFFFF)
        {
          v36 = 15;
        }

        else
        {
          v44 = (v36 ^ (v43 >> 15));
          if (v44 >= 0x4000)
          {
            v36 = 0;
          }

          else
          {
            v36 = 0;
            do
            {
              v44 = (2 * v44);
              ++v36;
            }

            while (v44 < 0x4000);
          }
        }
      }

      v45 = shl(result, v40, &v122);
      v46 = shl(v43, v36, &v122);
      v47 = div_s(v45, v46);
      if ((v40 - v36 + 15) > -32753)
      {
        v48 = v36 - v40;
      }

      else
      {
        v122 = 1;
        v48 = 0x7FFF;
      }

      result = shl(v47, v48, &v122);
      v39 = result;
      if ((result & 0x80000000) != 0)
      {
        v122 = 1;
        v38 = 0x7FFFLL;
      }

      else
      {
        v38 = result ^ 0x7FFF;
      }

LABEL_84:
      v49 = v21 - v34;
      if ((v21 - v34) < 0x8000)
      {
        v50 = v49 - v121;
        if (((v21 - v34) & 0x8000) != 0 && (v50 ^ v49) < 0)
        {
          v122 = 1;
          goto LABEL_91;
        }
      }

      else
      {
        v122 = 1;
        v50 = v121 ^ 0x7FFF;
      }

      if (!v50)
      {
        v60 = v114;
        goto LABEL_141;
      }

LABEL_91:
      if (((v26 >> 5) & 0x1FFFF) != 0)
      {
        v122 = 1;
        if (!v120)
        {
          goto LABEL_234;
        }

        v51 = 0x7FFF;
        result = quantize_fx(0x7FFFLL, *v28);
        v52 = result;
        v122 = 1;
      }

      else
      {
        if (!v120)
        {
          goto LABEL_234;
        }

        v51 = v26 << 10;
        result = quantize_fx((v26 << 10), *v28);
        v52 = result;
      }

      if (!v119)
      {
        goto LABEL_234;
      }

      result = quantize_fx(v51, *(v28 + 1));
      if ((v52 - v26) < 0x8000 && (v52 - v26) > -32769)
      {
        if (v52 == v26)
        {
          goto LABEL_109;
        }
      }

      else
      {
        v122 = 1;
      }

      if ((result - v26) >= 0x8000 || (result - v26) <= -32769)
      {
        v122 = 1;
        goto LABEL_103;
      }

      if (result != v26)
      {
        goto LABEL_103;
      }

LABEL_109:
      if (v38 > -2)
      {
        if (v38 == 0x7FFF)
        {
          goto LABEL_103;
        }
      }

      else
      {
        v122 = 1;
      }

      if (v39 <= -2)
      {
        break;
      }

      if (v39 != 0x7FFF)
      {
        goto LABEL_115;
      }

LABEL_103:
      v27 = v26;
LABEL_104:
      if (v21 == v26)
      {
        goto LABEL_142;
      }
    }

    v122 = 1;
LABEL_115:
    v53 = (0x3FFF * v39) >> 15;
    if ((v53 & 0x10000) != 0)
    {
      v54 = v53 | 0xFFFF0000;
    }

    else
    {
      v54 = (0x3FFF * v39) >> 15;
    }

    if (v54 <= -32769)
    {
      v122 = 1;
      LOWORD(v54) = 0x8000;
    }

    HIWORD(v123) = v54;
    if (!ar_decode(v113, &v123, &v125))
    {
      v55 = v38;
      if (v38)
      {
        if (v38 == 0xFFFF)
        {
          v55 = 15;
        }

        else
        {
          v56 = v38 ^ (v38 >> 15);
          if (v56 >= 0x4000)
          {
            v55 = 0;
          }

          else
          {
            v55 = 0;
            do
            {
              v56 = (2 * v56);
              ++v55;
            }

            while (v56 < 0x4000);
          }
        }
      }

      v57 = shl(v38, v55, &v122);
      result = Log2_norm_lc((v57 << 16), &v122);
      if (v55 == 0x7FFF)
      {
        v122 = 1;
        v58 = 1073709056;
      }

      else
      {
        v58 = (v55 + 1) << 16 >> 1;
      }

      v59 = result - v58;
      if (((v58 ^ result) & 0x80000000) != 0 && ((v59 ^ result) & 0x80000000) != 0)
      {
        v59 = (result >> 15) ^ 0x7FFFFFFF;
        v122 = 1;
      }

      if ((v59 ^ v114) < 0 && ((v114 - v59) ^ v114) < 0)
      {
        v114 = (v114 >> 31) ^ 0x7FFFFFFF;
        v122 = 1;
      }

      else
      {
        v114 -= v59;
      }

      goto LABEL_104;
    }

    v65 = v39;
    if (v39)
    {
      if (v39 == 0xFFFF)
      {
        v65 = 15;
      }

      else
      {
        v66 = v39 ^ (v39 >> 15);
        if (v66 >= 0x4000)
        {
          v65 = 0;
        }

        else
        {
          v65 = 0;
          do
          {
            v66 = (2 * v66);
            ++v65;
          }

          while (v66 < 0x4000);
        }
      }
    }

    v67 = shl(v39, v65, &v122);
    result = Log2_norm_lc((v67 << 16), &v122);
    if (v65 == 0x7FFF)
    {
      v122 = 1;
      v68 = 1073709056;
    }

    else
    {
      v68 = (v65 + 1) << 16 >> 1;
    }

    v69 = result - v68;
    if (((v68 ^ result) & 0x80000000) != 0 && ((v69 ^ result) & 0x80000000) != 0)
    {
      v69 = (result >> 15) ^ 0x7FFFFFFF;
      v122 = 1;
    }

    v60 = v114 - v69;
    if ((v69 ^ v114) < 0 && (v60 ^ v114) < 0)
    {
      v60 = (v114 >> 31) ^ 0x7FFFFFFF;
      v122 = 1;
    }

LABEL_141:
    v27 = v26;
    v114 = v60;
LABEL_142:
    a6[v116] = v27;
    v21 = v21 - v27;
    if (v21 < 0x8000)
    {
      v24 = v115;
      if (v21 <= -32769)
      {
        v122 = 1;
        LOWORD(v21) = 0x8000;
      }
    }

    else
    {
      v122 = 1;
      LOWORD(v21) = 0x7FFF;
      v24 = v115;
    }

    --v121;
LABEL_147:
    v61 = &ddec[4 * v24];
    if ((v61 + 2) > v61 + 4 || v61 >= (v61 + 2))
    {
      goto LABEL_234;
    }

    result = quantize_fx(v27, *v61);
    v63 = SLOWORD(a6[v116]);
    v64 = (&nextstate + 4 * v115);
    if (result - v63 != (result - LOWORD(a6[v116])))
    {
      v122 = 1;
LABEL_157:
      if (v64 + 1 > v64 + 2)
      {
        goto LABEL_234;
      }

      v10 = v64 + 1 >= v64;
      ++v64;
      if (!v10)
      {
        goto LABEL_234;
      }

LABEL_160:
      v20 = v116 + 1;
      v17 = a6;
      if (v116 + 1 >= v112 || (v24 = *v64, v121 <= 1))
      {
        v19 = a2;
        goto LABEL_188;
      }

      continue;
    }

    break;
  }

  if (result != v63)
  {
    goto LABEL_157;
  }

  if (v64 + 1 <= v64 + 2 && v64 <= v64 + 1)
  {
    goto LABEL_160;
  }

LABEL_234:
  __break(0x5519u);
  return result;
}

uint64_t decode_signs_fx(uint64_t result, int a2, int *a3)
{
  if (a2 >= 1)
  {
    v4 = result;
    v5 = a2;
    do
    {
      if (*a3)
      {
        result = ar_decode(v4, uniform_model, &step_LSB);
        v6 = *a3;
        if (result <= 0)
        {
          v6 = -v6;
        }

        *a3 = v6;
      }

      ++a3;
      --v5;
    }

    while (v5);
  }

  return result;
}

void decode_magnitude_usq_fx(_DWORD *a1, int a2, int a3, int a4, int *a5, int *a6)
{
  v6 = a6;
  v7 = a5;
  *v60 = *MEMORY[0x1E69E9840];
  if (a4 - a3 < 0x8000 && a4 - a3 >= -32768 && a4 == a3)
  {
    if (a2 >= 1)
    {
      v8 = a2;
      do
      {
        v9 = *v7++;
        *v6++ = v9;
        --v8;
      }

      while (v8);
    }

    return;
  }

  if (a4 == -32768)
  {
    v50 = 0x8000;
  }

  else if (a4 == 1 && a2 > 0)
  {
    for (i = 0; i != a2; ++i)
    {
      if (a5[i])
      {
        a6[i] = a3;
        return;
      }
    }

    v50 = 0;
  }

  else
  {
    v50 = a4 - 1;
  }

  if (a2)
  {
    v54 = &a6[a2];
    if (a3 == -32768)
    {
      v11 = 0x8000;
    }

    else
    {
      v11 = a3 - 1;
    }

    bzero(a6, 4 * a2);
    bzero(v59, 0x462uLL);
    v12 = 0;
    LOWORD(v13) = 0;
    v58[0] = 0x3FFF;
    v52 = &v7[a2];
    v53 = 0;
    while (1)
    {
      v51 = v13;
      v14 = &v7[v13];
      v15 = v14 + 1;
      if (v14 < v7 || v15 > v52 || v14 >= v15)
      {
        goto LABEL_112;
      }

      if (!*v14)
      {
        v30 = &v6[v53];
        if (v30 >= v6 && v30 + 1 <= v54 && v30 <= v30 + 1)
        {
          *v30 = 0;
          v31 = v53 + 1;
LABEL_77:
          LOWORD(v37) = v51;
          goto LABEL_78;
        }

        goto LABEL_112;
      }

      if (v11 < 1)
      {
        break;
      }

      v18 = 0;
      v19 = 0;
      LODWORD(v20) = 0x1000000;
      do
      {
        if (v11 - v18 == v50)
        {
          v21 = 0;
        }

        else
        {
          v22 = div_l(v50 << 16, (v11 - v18), &v57);
          if (!v22)
          {
            break;
          }

          v21 = (0x8000 - v22);
        }

        v20 = 2 * v21 * SWORD1(v20) + ((v21 * v20) >> 15);
        if ((v20 - 0x2000000) >> 26 == 63)
        {
          v23 = v20 << 6;
        }

        else
        {
          v23 = (v20 >> 31) ^ 0x7FFFFFFF;
        }

        if (((v23 + 0x8000) ^ v23) > -1 || v23 < 0)
        {
          v25 = (v23 + 0x8000) >> 16;
        }

        else
        {
          v25 = 0x7FFF;
        }

        v26 = &v58[v18 - v19];
        v27 = v26 + 1;
        if (v26 + 1 < v58 || v26 + 2 > v60 || v27 > v26 + 2)
        {
          goto LABEL_112;
        }

        *v27 = v25;
        if (v20 >= 1 && !v25)
        {
          goto LABEL_53;
        }

        if (v26 < v58 || v26 > v27)
        {
          goto LABEL_112;
        }

        if (*v26 == v25)
        {
LABEL_53:
          *v27 = 0;
          v28 = ar_decode(a1, v58, v60);
          v19 += v28;
          if (v18 > v28)
          {
            v29 = v19 + 1;
            goto LABEL_67;
          }

          LOWORD(v18) = v18 - 1;
          LODWORD(v20) = 0x1000000;
        }

        v18 = (v18 + 1);
      }

      while (v18 < v11);
      v29 = v19 + 1;
LABEL_62:
      v32 = ar_decode(a1, v58, v60);
      v33 = &v6[v53];
      if (v33 < v6 || v33 + 1 > v54 || v33 > v33 + 1)
      {
        goto LABEL_112;
      }

      v12 = 0;
      v34 = v53;
      v29 += v32;
      *v33 = v29;
LABEL_71:
      v36 = &v6[v34];
      if (v36 < v6 || v36 + 4 > v54 || v36 > v36 + 4)
      {
        goto LABEL_112;
      }

      v11 -= v29;
      v31 = v53 + 1;
      if (v50 != 1)
      {
        if ((v50 - 1) != v11)
        {
          --v50;
          goto LABEL_77;
        }

        if ((v51 + 1) < a2)
        {
          v45 = &v7[(v51 + 1)];
          v46 = (v51 + 1) + 1;
          while (v45 >= v7)
          {
            if ((v45 + 1) > v52)
            {
              break;
            }

            if (v45 > v45 + 1)
            {
              break;
            }

            v47 = &v6[v31];
            if (v47 < v6 || v47 + 1 > v54 || v47 > v47 + 1)
            {
              break;
            }

            v48 = *v45++;
            *v47 = v48;
            LOWORD(v31) = v31 + 1;
            v49 = v46++;
            if (v49 == a2)
            {
              return;
            }
          }

          goto LABEL_112;
        }

        return;
      }

      v37 = (v51 + 1);
      if (v37 < a2)
      {
        v38 = &v7[(v51 + 1)];
        v39 = (v51 + 1) + 1;
        while (1)
        {
          if (v38 < v7 || (v38 + 1) > v52 || v38 > v38 + 1)
          {
            goto LABEL_112;
          }

          v40 = &v6[v31];
          v41 = v40 + 1 > v54 || v40 >= v40 + 1;
          v42 = !v41 && v40 >= v6;
          v43 = v42;
          if (*v38)
          {
            break;
          }

          if (!v43)
          {
            goto LABEL_112;
          }

          *v40 = 0;
          ++v31;
          v44 = v39;
          ++v38;
          ++v39;
          if (v44 == a2)
          {
            v50 = 0;
            LOWORD(v37) = a2;
            goto LABEL_78;
          }
        }

        if (v43)
        {
          *v40 = v11 + 1;
          return;
        }

LABEL_112:
        __break(0x5519u);
      }

      v50 = 0;
LABEL_78:
      v13 = (v37 + 1);
      v53 = v31;
      if (v13 >= a2)
      {
        return;
      }
    }

    v29 = 1;
    if (!v12)
    {
      goto LABEL_62;
    }

LABEL_67:
    v35 = &v6[v53];
    if (v35 >= v6 && v35 + 1 <= v54 && v35 <= v35 + 1)
    {
      v34 = v53;
      *v35 = v29;
      v12 = 1;
      goto LABEL_71;
    }

    goto LABEL_112;
  }
}

int *RestoreTCQdec(int *result, int a2, __int16 *a3, unint64_t a4, unint64_t a5)
{
  if (a2 >= 1)
  {
    v5 = 0;
    v6 = 0;
    v7 = a2;
    v8 = result;
    v9 = a2;
    do
    {
      v10 = *v8;
      if (*v8)
      {
        ++v5;
        if (v10 >= 0)
        {
          v11 = *v8;
        }

        else
        {
          v11 = -v10;
        }

        if (v11 > 1)
        {
          v6 = 1;
        }

        *v8 = (v10 * 5.0);
      }

      ++v8;
      --v9;
    }

    while (v9);
    if (v5 >= 2 && v6)
    {
      v12 = *a3;
      while (v12 <= 19)
      {
        if (*result)
        {
          v13 = (a4 + 4 * v12);
          if (v13 < a4 || (v13 + 1) > a5 || v13 > v13 + 1)
          {
            __break(0x5519u);
            return result;
          }

          v14 = *result + (*v13 * 5.0);
          *v13 = v14;
          if (v14 <= 0.0)
          {
            v15 = -(0.5 - v14);
          }

          else
          {
            v15 = (v14 + 0.5);
          }

          *result = v15;
          *a3 = ++v12;
        }

        ++result;
        if (!--v7)
        {
          return result;
        }
      }
    }
  }

  return result;
}

uint64_t ar_decode(_DWORD *a1, __int16 *a2, unint64_t a3)
{
  v9 = (a2 + 1);
  if ((a2 + 1) <= a3 && v9 >= a2)
  {
    v4 = a2 + 2;
    v3 = *a2;
    if ((a2 + 2) <= a3 && v9 <= v4)
    {
      v7 = a1;
      LODWORD(v4) = a1[2];
      v5 = a1[3] - v4 + 1;
      v8 = a1[4];
      v9 = 1;
      do
      {
        v10 = &a2[v9];
        LODWORD(v6) = *v10;
        if (((v3 + v3 * (v8 - v4) - 1) / v5) >= v6)
        {
          goto LABEL_16;
        }

        ++v9;
        v6 = (v10 + 2);
        v11 = v10 + 1;
      }

      while (v11 >= a2 && v6 <= a3 && v11 <= v6);
    }
  }

  do
  {
    __break(0x5519u);
LABEL_16:
    v14 = (v9 - 1);
    v9 = &a2[v14];
    v15 = v9 + 2;
  }

  while (v9 < a2 || v15 > a3 || v9 >= v15);
  v18 = v4 + v5 * *v9 / v3 - 1;
  v19 = v5 * v6 / v3 + v4;
  v7[2] = v19;
  for (v7[3] = v18; ; v18 = v7[3])
  {
    if (v18 < 0x8000)
    {
      goto LABEL_31;
    }

    if (!(v19 >> 15))
    {
      break;
    }

    v20 = -32768;
LABEL_30:
    v8 += v20;
    v7[4] = v8;
    v19 += v20;
    v18 += v20;
LABEL_31:
    v7[2] = 2 * v19;
    v7[3] = (2 * v18) | 1;
    v8 = bitstream_load_bit(*v7) | (2 * v8);
    v7[4] = v8;
    v19 = v7[2];
  }

  if (v18 >> 14 <= 2 && v19 >= 0x4000)
  {
    v20 = -16384;
    goto LABEL_30;
  }

  return v14;
}

unint64_t bitstream_load_bit(unint64_t result)
{
  v1 = *(result + 1028);
  if (v1 >= *(result + 1036))
  {
    return 0;
  }

  v2 = (result + 1024);
  v3 = (result + v1);
  if (result + v1 >= result + 1024 || v3 < result)
  {
    __break(0x5519u);
    return result;
  }

  v5 = *v3;
  v6 = *v2;
  *v2 = v6 - 1;
  v7 = (v5 >> v6) & 1;
  if (((v6 - 1) & 0x80) != 0)
  {
    *(result + 1028) = v1 + 1;
    *(result + 1024) = 7;
  }

  return v7;
}

unint64_t trans_ana(float *a1, unint64_t a2, unint64_t a3, unint64_t a4, float *a5, unint64_t a6, unint64_t a7, int a8, float a9, __int16 a10, __int16 a11, float *a12, float *a13, float *a14, unint64_t a15)
{
  *v168 = *MEMORY[0x1E69E9840];
  memset(__b, 255, sizeof(__b));
  memset(v166, 255, sizeof(v166));
  v21 = 0;
  v164 = -1;
  *&v22 = -1;
  *(&v22 + 1) = -1;
  v163[0] = v22;
  v163[1] = v22;
  v161 = -1;
  v160[0] = v22;
  v160[1] = v22;
  memset(v158, 170, sizeof(v158));
  v23 = a10 / a8;
  v152 = v23 + 1;
  memset(v156, 170, sizeof(v156));
  do
  {
    v24 = &v158[v21 + 2];
    if (&v158[v21] < v158 || v24 > v159 || &v158[v21] > v24)
    {
      goto LABEL_218;
    }

    *&v158[v21] = 0;
    v21 += 2;
  }

  while (v21 != 18);
  v27 = (a9 + 0.5);
  v28 = (v27 + 3);
  v29 = (v27 + 2);
  v30 = 0.0;
  v31 = 0.0;
  if (v28 <= v23)
  {
    v32 = (v152 - v28) * 0.5;
    v31 = 6.2832;
    if (v32 <= 1.0)
    {
      v31 = v32 * 6.2832;
    }
  }

  *a5 = v31;
  if (v29 <= v23)
  {
    v33 = (4 - v27) * 0.1;
    v34 = 9;
    v35 = v158;
    do
    {
      v36 = v35 + 1;
      if (v35 < v158 || v36 > v159 || v35 > v36)
      {
        goto LABEL_218;
      }

      *v35++ = 1;
      --v34;
    }

    while (v34);
    v39 = v152 - v29;
    if (v39 > 15)
    {
      v30 = ((v39 - 15) * 6.0206) + (v33 * 15.0);
    }

    else
    {
      v30 = v33 * v39;
    }
  }

  if (a8 == 960)
  {
    v40 = 0;
    v41 = &w_hamm48k_2;
    v42 = &w_hamm32k_2;
    v43 = 8;
  }

  else
  {
    if (a8 == 640)
    {
      v43 = 7;
    }

    else
    {
      v43 = 6;
    }

    if (a8 == 640)
    {
      v40 = 8;
    }

    else
    {
      v40 = 7;
    }

    v42 = &w_hamm16k_2;
    if (a8 == 640)
    {
      v41 = &w_hamm32k_2;
    }

    else
    {
      v42 = gw;
      v41 = &w_hamm16k_2;
    }
  }

  if (v23 < 1 || a11 && v152 == 2)
  {
    v145 = v40;
    v146 = a10 / a8;
    v147 = a8;
    v44 = 1717986919 * (8 * a8);
    v45 = (0x333333338000 * (8 * a8)) >> 48;
    LODWORD(__A) = 1065353216;
    v46 = v42;
    vDSP_vfill(&__A, a12, 1, 9uLL);
    LODWORD(__A) = 0;
    vDSP_vfill(&__A, a13, 1, 9uLL);
    *a14 = 0.5;
    if ((v45 - 3080) < 0xFFFFF3F1)
    {
      goto LABEL_218;
    }

    if (v41 > v46)
    {
      goto LABEL_218;
    }

    if (a2 < a1)
    {
      goto LABEL_218;
    }

    v47 = v44 >> 33;
    v48 = ((v44 >> 33) + ((v45 >> 15) >> 13)) >> 3;
    if (v46 - v41 < v48 || v48 > (a2 - a1) >> 2)
    {
      goto LABEL_218;
    }

    v49 = v47;
    if (v47 >= 8)
    {
      v50 = __b;
      v51 = a1;
      v52 = v41;
      v53 = v48;
      do
      {
        v54 = *v51++;
        v55 = v54;
        v56 = *v52++;
        *v50++ = v55 * v56;
        --v53;
      }

      while (v53);
    }

    v57 = &__b[v48];
    if (v57 > v168)
    {
      goto LABEL_218;
    }

    if (__b > v57)
    {
      goto LABEL_218;
    }

    v58 = &a1[v48];
    if (v58 < a1)
    {
      goto LABEL_218;
    }

    if (v58 > a2)
    {
      goto LABEL_218;
    }

    v59 = v48;
    if ((1536 - v59 * 4) >> 2 < v48 || v48 > (a2 - v58) >> 2)
    {
      goto LABEL_218;
    }

    if (v47 >= 8)
    {
      v60 = v48;
      do
      {
        v61 = &v41[--v60];
        v62 = (v61 + 1);
        v63 = v61 < v41 || v62 > &v41[v48];
        if (v63 || v61 > v62)
        {
          goto LABEL_218;
        }

        v65 = *v58++;
        *v57++ = v65 * *v61;
      }

      while (v60);
    }

    v150 = (v47 + ((v45 >> 15) >> 14)) << 16 >> 18;
    v66 = &a1[v45 - v150];
    if (v66 > a2 || v66 < a1 || v48 > (a2 - v66) >> 2)
    {
      goto LABEL_218;
    }

    if (v47 >= 8)
    {
      v67 = v166;
      v68 = &a1[v45 - v150];
      v69 = v41;
      v70 = v48;
      do
      {
        v71 = *v68++;
        v72 = v71;
        v73 = *v69++;
        *v67++ = v72 * v73;
        --v70;
      }

      while (v70);
    }

    v74 = &v166[v59];
    v75 = v166 > &v166[v59];
    if (v74 > __b)
    {
      goto LABEL_218;
    }

    if (v75)
    {
      goto LABEL_218;
    }

    v76 = (v66 + 4 * v48);
    if (v76 > a2 || v76 < a1 || v48 > (a2 - v76) >> 2)
    {
      goto LABEL_218;
    }

    if (v49 >= 8)
    {
      v77 = v48;
      do
      {
        v78 = &v41[--v77];
        v79 = (v78 + 1);
        v80 = v78 < v41 || v79 > &v41[v48];
        if (v80 || v78 > v79)
        {
          goto LABEL_218;
        }

        v82 = *v76++;
        *v74++ = v82 * *v78;
      }

      while (v77);
    }

    if (v147 == 960)
    {
      __A = __b;
      v154 = v168;
      v155 = __b;
      fft3(&__A);
      __A = v166;
      v154 = __b;
      v155 = v166;
      fft3(&__A);
      if (v45 > 0x603)
      {
        goto LABEL_218;
      }
    }

    else
    {
      if ((v45 + 3) > 0x606)
      {
        goto LABEL_218;
      }

      fft_rel(__b, v150, v145);
      fft_rel(v166, v150, v145);
    }

    fft_spec2(__b, v150);
    fft_spec2(v166, v150);
    v83 = &__b[v48];
    if (v83 < __b || v83 + 1 > v168 || v83 > v83 + 1 || (__b[v48] = 0.0, v84 = &v166[v48], v84 < v166) || v84 + 1 > __b || v84 > v84 + 1)
    {
LABEL_218:
      __break(0x5519u);
    }

    *v84 = 0.0;
    v23 = v146;
  }

  v85 = __exp10(v30 / -20.0);
  v86 = 0;
  if (a11)
  {
    v87 = v152 == 2;
  }

  else
  {
    v87 = 0;
  }

  v88 = v85;
  result = a15 + 36;
  v91 = v87 || v23 < 1;
  do
  {
    v92 = v86;
    if (!v91)
    {
      v106 = (a3 + 4 * v86);
      if (v152 > 0x1Du)
      {
        v115 = v106 + 1;
        if (v106 < a3 || v115 > a4 || v106 > v115)
        {
          goto LABEL_218;
        }

        *v106 = 0.0;
      }

      else
      {
        v107 = (a6 + 4 * v92);
        v108 = v107 + 1;
        v110 = v107 < a6 || v108 > a7 || v107 > v108;
        v111 = v106 + 1;
        if (v110 || v106 < a3 || v111 > a4 || v106 > v111)
        {
          goto LABEL_218;
        }

        *v106 = *v107 * v88;
        if (v152 < 0xBu)
        {
LABEL_152:
          if (v106 < a3)
          {
            goto LABEL_218;
          }

          if ((v106 + 1) > a4)
          {
            goto LABEL_218;
          }

          if (v106 > v106 + 1)
          {
            goto LABEL_218;
          }

          v118 = &a12[v92];
          if (v118 < a12)
          {
            goto LABEL_218;
          }

          if (v118 + 1 > a12 + 9)
          {
            goto LABEL_218;
          }

          if (v118 > v118 + 1)
          {
            goto LABEL_218;
          }

          v119 = *v106;
          *v118 = *v106;
          v120 = &a13[v92];
          if (v120 < a13 || v120 + 1 > a13 + 9 || v120 > v120 + 1)
          {
            goto LABEL_218;
          }

          v121 = sqrt((1.0 - (v119 * v119))) * *a14;
          *v120 = v121;
          if (v92 < 6)
          {
            if (v92 != 5)
            {
              goto LABEL_209;
            }

            v122 = v121 * 0.5;
          }

          else
          {
            v122 = v121 * 0.1;
          }

          goto LABEL_208;
        }
      }

      *a14 = *a14 * 0.5;
      goto LABEL_152;
    }

    v93 = &gw[v86];
    v94 = v93 + 1;
    if (v93 < gw || v94 > &word_19B35C7C6 || v93 > v94)
    {
      goto LABEL_218;
    }

    v99 = *v93;
    v97 = v93 + 2;
    v98 = v99;
    if (v97 > &word_19B35C7C6)
    {
      goto LABEL_218;
    }

    if (v94 > v97)
    {
      goto LABEL_218;
    }

    v100 = &__b[v98];
    if (v100 > v168)
    {
      goto LABEL_218;
    }

    if (__b > v100)
    {
      goto LABEL_218;
    }

    v101 = *v94 - v98;
    if (v101 < 0)
    {
      goto LABEL_218;
    }

    v102 = v98;
    if ((1536 - v102 * 4) >> 2 < v101)
    {
      goto LABEL_218;
    }

    if (v101 < 1)
    {
      v104 = 0.0;
    }

    else
    {
      v103 = v101;
      v104 = 0.0;
      do
      {
        v105 = *v100++;
        v104 = v104 + v105;
        --v103;
      }

      while (v103);
    }

    v123 = v163 + v92;
    v124 = v123 + 1;
    v125 = v123 < v163 || v124 > &v165;
    if (v125 || v123 > v124)
    {
      goto LABEL_218;
    }

    *v123 = v104;
    v127 = &v166[v102];
    if (&v166[v102] > __b || v166 > &v166[v102])
    {
      goto LABEL_218;
    }

    if (v101 < 1)
    {
      v131 = 1.1755e-38;
    }

    else
    {
      v128 = v101;
      v129 = 0.0;
      do
      {
        v130 = *v127++;
        v129 = v129 + v130;
        --v128;
      }

      while (v128);
      v131 = v129 + 1.1755e-38;
    }

    v132 = v160 + 4 * v92;
    v133 = v132 + 4;
    v134 = v132 < v160 || v133 > &v162;
    if (v134 || v132 > v133)
    {
      goto LABEL_218;
    }

    v136 = v104 + 1.1755e-38;
    *(v163 + v92) = v136;
    *(v160 + v92) = v131;
    v137 = (a15 + 4 * v92);
    if (v137 < a15)
    {
      goto LABEL_218;
    }

    if ((v137 + 1) > result)
    {
      goto LABEL_218;
    }

    if (v137 > v137 + 1)
    {
      goto LABEL_218;
    }

    *v137 = sqrtf(((v131 + v136) * 0.5) / v101);
    v138 = &v156[2 * v92];
    if (v138 < v156 || v138 + 1 > v157 || v138 > v138 + 1)
    {
      goto LABEL_218;
    }

    v139 = v131 / v136;
    v140 = v139 > 10.0;
    if (v139 < 0.1)
    {
      v140 = 1;
    }

    *v138 = v140;
    if (v140)
    {
      goto LABEL_200;
    }

    v141 = &v158[2 * v92];
    if (v141 < v158 || v141 + 1 > v159 || v141 > v141 + 1)
    {
      goto LABEL_218;
    }

    if (*v141)
    {
LABEL_200:
      if (v139 >= 1.0)
      {
        v139 = 1.0;
      }

      v142 = (a6 + 4 * v92);
      if (v142 < a6)
      {
        goto LABEL_218;
      }

      if ((v142 + 1) > a7)
      {
        goto LABEL_218;
      }

      if (v142 > v142 + 1)
      {
        goto LABEL_218;
      }

      v122 = sqrtf(v139);
      *v142 = v122;
      v120 = (a3 + 4 * v92);
      if (v120 < a3 || (v120 + 1) > a4 || v120 > v120 + 1)
      {
        goto LABEL_218;
      }

LABEL_208:
      *v120 = v122;
      goto LABEL_209;
    }

    v143 = (a6 + 4 * v92);
    if (v143 < a6)
    {
      goto LABEL_218;
    }

    if ((v143 + 1) > a7)
    {
      goto LABEL_218;
    }

    if (v143 > v143 + 1)
    {
      goto LABEL_218;
    }

    *v143 = 1065353216;
    v144 = (a3 + 4 * v92);
    if (v144 < a3 || (v144 + 1) > a4 || v144 > v144 + 1)
    {
      goto LABEL_218;
    }

    *v144 = 1065353216;
LABEL_209:
    v86 = v92 + 1;
  }

  while (v43 > (v92 + 1));
  return result;
}

float fft3(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v5 = v4;
  v6 = v1;
  *v220 = *MEMORY[0x1E69E9840];
  memset(__b, 255, sizeof(__b));
  if (v3 == 384)
  {
    v7 = 7;
  }

  else
  {
    v7 = 9;
  }

  if (v3 == 384)
  {
    v8 = 4;
  }

  else
  {
    v8 = 1;
  }

  v9 = 512;
  if (v3 == 384)
  {
    v10 = 128;
  }

  else
  {
    v10 = 512;
  }

  v214 = v10;
  if (v3 == 384)
  {
    v9 = 128;
  }

  v212 = v3;
  v213 = v9;
  if (v3 >= 3)
  {
    LOWORD(v11) = 0;
    v12 = v9;
    v14 = v6[1];
    v13 = v6[2];
    v15 = 2 * v213;
    v16 = (*v6 + 8);
    v17 = __b;
    do
    {
      v18 = (v16 - 1);
      if ((v16 - 1) > v14)
      {
        goto LABEL_388;
      }

      if ((v16 - 2) > v18)
      {
        goto LABEL_388;
      }

      if ((v16 - 2) < v13)
      {
        goto LABEL_388;
      }

      if (v17 < __b)
      {
        goto LABEL_388;
      }

      v19 = v17 + 1;
      if (v17 + 1 > v220)
      {
        goto LABEL_388;
      }

      if (v17 > v19)
      {
        goto LABEL_388;
      }

      *v17 = *(v16 - 2);
      if (v16 > v14)
      {
        goto LABEL_388;
      }

      if (v18 > v16)
      {
        goto LABEL_388;
      }

      v20 = &v17[v12];
      if (&v17[v12] < __b)
      {
        goto LABEL_388;
      }

      v21 = &v17[v12 + 1];
      if (v21 > v220)
      {
        goto LABEL_388;
      }

      if (v20 > v21)
      {
        goto LABEL_388;
      }

      *v20 = *(v16 - 1);
      if ((v16 + 1) > v14)
      {
        goto LABEL_388;
      }

      if (v16 > v16 + 1)
      {
        goto LABEL_388;
      }

      v22 = &v17[v15];
      if (&v17[v15] < __b)
      {
        goto LABEL_388;
      }

      v23 = &v17[v15 + 1];
      if (v23 > v220 || v22 > v23)
      {
        goto LABEL_388;
      }

      v24 = *v16;
      v16 += 3;
      *v22 = v24;
      v11 = (v11 + 1);
      v17 = v19;
    }

    while (v11 < v3 / 3);
  }

  v25 = &__b[v213];
  fft_rel(__b, v214, v7);
  if (v25 > v220)
  {
    goto LABEL_388;
  }

  if (__b > v25)
  {
    goto LABEL_388;
  }

  v26 = &v25[v213];
  fft_rel(v25, v214, v7);
  if (v26 > v220 || __b > v26 || v213 > v220 - v26)
  {
    goto LABEL_388;
  }

  fft_rel(v26, v214, v7);
  v27 = v3 == 384 ? -8 : -2;
  v218 = v27;
  v28 = v3 == 384 ? 376 : 382;
  if (v25 + 1 > v220)
  {
    goto LABEL_388;
  }

  if (v25 > v25 + 1)
  {
    goto LABEL_388;
  }

  if (v26 + 1 > v220)
  {
    goto LABEL_388;
  }

  if (v26 > v26 + 1)
  {
    goto LABEL_388;
  }

  v30 = *v5;
  v29 = *(v5 + 8);
  v31 = *v5 + 4;
  if (v31 > v29)
  {
    goto LABEL_388;
  }

  if (v30 > v31)
  {
    goto LABEL_388;
  }

  v32 = *(v5 + 16);
  if (v30 < v32)
  {
    goto LABEL_388;
  }

  v215 = &v30[v3];
  v216 = &v26[v213];
  if (v3 == 384)
  {
    v33 = 48;
  }

  else
  {
    v33 = 192;
  }

  *v30 = (__b[0] + *v25) + *v26;
  v34 = 384 - v8;
  v35 = 1;
  v36 = 1;
  v37 = v8;
  v217 = 2 * v8;
  v38 = 2 * v8;
  do
  {
    v39 = &__b[v36];
    v40 = v39 + 1;
    if (v39 < __b || v40 > v220 || v39 > v40)
    {
      goto LABEL_388;
    }

    v43 = v36;
    v44 = &v25[v36];
    if (v44 < __b)
    {
      goto LABEL_388;
    }

    if (v44 + 1 > v220)
    {
      goto LABEL_388;
    }

    if (v44 > v44 + 1)
    {
      goto LABEL_388;
    }

    v45 = &sincos_t_rad3[v34];
    if (v45 < sincos_t_rad3)
    {
      goto LABEL_388;
    }

    if (v45 + 1 > RotVector_256)
    {
      goto LABEL_388;
    }

    if (v45 > v45 + 1)
    {
      goto LABEL_388;
    }

    v46 = -v35;
    v47 = &v26[-v35];
    if (v47 < __b)
    {
      goto LABEL_388;
    }

    if (v47 + 1 > v220)
    {
      goto LABEL_388;
    }

    if (v47 > v47 + 1)
    {
      goto LABEL_388;
    }

    v48 = &sincos_t_rad3[v37];
    if (v48 < sincos_t_rad3)
    {
      goto LABEL_388;
    }

    if (v48 + 1 > RotVector_256)
    {
      goto LABEL_388;
    }

    if (v48 > v48 + 1)
    {
      goto LABEL_388;
    }

    v49 = &v26[v43];
    if (v49 < __b)
    {
      goto LABEL_388;
    }

    if (v49 + 1 > v220)
    {
      goto LABEL_388;
    }

    if (v49 > v49 + 1)
    {
      goto LABEL_388;
    }

    v50 = &sincos_t_rad3[v28];
    if (v50 < sincos_t_rad3)
    {
      goto LABEL_388;
    }

    if (v50 + 1 > RotVector_256)
    {
      goto LABEL_388;
    }

    if (v50 > v50 + 1)
    {
      goto LABEL_388;
    }

    v51 = v46;
    v52 = &v216[v46];
    if (v52 < __b)
    {
      goto LABEL_388;
    }

    if (v52 + 1 > v220)
    {
      goto LABEL_388;
    }

    if (v52 > v52 + 1)
    {
      goto LABEL_388;
    }

    v53 = &sincos_t_rad3[v38];
    if (v53 < sincos_t_rad3)
    {
      goto LABEL_388;
    }

    if (v53 + 1 > RotVector_256)
    {
      goto LABEL_388;
    }

    if (v53 > v53 + 1)
    {
      goto LABEL_388;
    }

    v54 = &v30[v43];
    if ((v54 + 1) > v29)
    {
      goto LABEL_388;
    }

    if (v54 > v54 + 1)
    {
      goto LABEL_388;
    }

    if (v54 < v32)
    {
      goto LABEL_388;
    }

    v55 = *v45;
    v56 = *v48;
    v57 = *v50;
    v58 = *v53;
    *v54 = (((__b[v43] + (*v44 * *v45)) + (*v47 * *v48)) + (*v49 * *v50)) + (*v52 * *v53);
    v59 = &v25[v51];
    if (v59 < __b)
    {
      goto LABEL_388;
    }

    if (v59 + 1 > v220)
    {
      goto LABEL_388;
    }

    if (v59 > v59 + 1)
    {
      goto LABEL_388;
    }

    v60 = &v215[v51];
    if ((v60 + 1) > v29 || v60 > v60 + 1 || v60 < v32)
    {
      goto LABEL_388;
    }

    *v60 = (((*v59 - (*v44 * v56)) + (*v47 * v55)) - (*v49 * v58)) + (*v52 * v57);
    v36 = v43 + 1;
    v37 += v8;
    v28 += v218;
    v38 += v217;
    v34 -= v8;
    v35 = (v43 + 1);
  }

  while (v33 > v35);
  if ((v214 >> 1) > v35)
  {
    v61 = v38;
    while (1)
    {
      v62 = &__b[v36];
      v63 = v62 + 1;
      v64 = v62 < __b || v63 > v220;
      if (v64 || v62 > v63)
      {
        goto LABEL_388;
      }

      v66 = v36;
      v67 = &v25[v36];
      if (v67 < __b)
      {
        goto LABEL_388;
      }

      if (v67 + 1 > v220)
      {
        goto LABEL_388;
      }

      if (v67 > v67 + 1)
      {
        goto LABEL_388;
      }

      v68 = &sincos_t_rad3[v34];
      if (v68 < sincos_t_rad3)
      {
        goto LABEL_388;
      }

      if (v68 + 1 > RotVector_256)
      {
        goto LABEL_388;
      }

      if (v68 > v68 + 1)
      {
        goto LABEL_388;
      }

      v69 = -v35;
      v70 = &v26[-v35];
      if (v70 < __b)
      {
        goto LABEL_388;
      }

      if (v70 + 1 > v220)
      {
        goto LABEL_388;
      }

      if (v70 > v70 + 1)
      {
        goto LABEL_388;
      }

      v71 = &sincos_t_rad3[v37];
      if (v71 < sincos_t_rad3)
      {
        goto LABEL_388;
      }

      if (v71 + 1 > RotVector_256)
      {
        goto LABEL_388;
      }

      if (v71 > v71 + 1)
      {
        goto LABEL_388;
      }

      v72 = &v26[v66];
      if (v72 < __b)
      {
        goto LABEL_388;
      }

      if (v72 + 1 > v220)
      {
        goto LABEL_388;
      }

      if (v72 > v72 + 1)
      {
        goto LABEL_388;
      }

      v73 = &sincos_t_rad3[v28];
      if (v73 < sincos_t_rad3)
      {
        goto LABEL_388;
      }

      if (v73 + 1 > RotVector_256)
      {
        goto LABEL_388;
      }

      if (v73 > v73 + 1)
      {
        goto LABEL_388;
      }

      v74 = v69;
      v75 = &v216[v69];
      if (v75 < __b)
      {
        goto LABEL_388;
      }

      if (v75 + 1 > v220)
      {
        goto LABEL_388;
      }

      if (v75 > v75 + 1)
      {
        goto LABEL_388;
      }

      v76 = &sincos_t_rad3[v61];
      if (v76 < sincos_t_rad3)
      {
        goto LABEL_388;
      }

      if (v76 + 1 > RotVector_256)
      {
        goto LABEL_388;
      }

      if (v76 > v76 + 1)
      {
        goto LABEL_388;
      }

      v77 = &v30[v66];
      if ((v77 + 1) > v29)
      {
        goto LABEL_388;
      }

      if (v77 > v77 + 1)
      {
        goto LABEL_388;
      }

      if (v77 < v32)
      {
        goto LABEL_388;
      }

      v78 = *v68;
      v79 = *v71;
      v80 = *v73;
      v81 = *v76;
      *v77 = (((__b[v66] + (*v67 * *v68)) + (*v70 * *v71)) - (*v72 * *v73)) + (*v75 * *v76);
      v82 = &v25[v74];
      if (v82 < __b)
      {
        goto LABEL_388;
      }

      if (v82 + 1 > v220)
      {
        goto LABEL_388;
      }

      if (v82 > v82 + 1)
      {
        goto LABEL_388;
      }

      v83 = &v215[v74];
      if ((v83 + 1) > v29 || v83 > v83 + 1 || v83 < v32)
      {
        goto LABEL_388;
      }

      *v83 = (((*v82 - (*v67 * v79)) + (*v70 * v78)) - (*v72 * v81)) - (*v75 * v80);
      v36 = v66 + 1;
      v34 -= v8;
      v37 += v8;
      v28 -= v218;
      v61 -= v217;
      v35 = (v66 + 1);
      if ((v214 >> 1) <= v35)
      {
        goto LABEL_139;
      }
    }
  }

  v61 = v38;
LABEL_139:
  v84 = &__b[v36];
  if (v84 < __b || v84 + 1 > v220 || v84 > v84 + 1 || (v85 = v36, v86 = &v25[v36], v86 < __b) || v86 + 1 > v220 || v86 > v86 + 1 || (v87 = &sincos_t_rad3[v34], v87 < sincos_t_rad3) || v87 + 1 > RotVector_256 || v87 > v87 + 1 || (v88 = &v26[v85], v88 < __b) || v88 + 1 > v220 || v88 > v88 + 1 || (v89 = &sincos_t_rad3[v28], v89 < sincos_t_rad3) || v89 + 1 > RotVector_256 || v89 > v89 + 1 || (v90 = &v30[v85], (v90 + 1) > v29) || v90 > v90 + 1 || v90 < v32 || (*v90 = (__b[v85] + (*v86 * *v87)) - (*v88 * *v89), v91 = &sincos_t_rad3[v37], v91 < sincos_t_rad3) || v91 + 1 > RotVector_256 || v91 > v91 + 1 || (v92 = &sincos_t_rad3[v61], v92 < sincos_t_rad3) || v92 + 1 > RotVector_256 || v92 > v92 + 1 || (v93 = &v215[-v35], (v93 + 1) > v29) || v93 > v93 + 1 || v93 < v32)
  {
LABEL_388:
    __break(0x5519u);
  }

  *v93 = (-*v86 * *v91) - (*v88 * *v92);
  if (v212 == 384)
  {
    v94 = 96;
  }

  else
  {
    v94 = 384;
  }

  v95 = v61 - v217;
  v96 = v28 - v218;
  v97 = v37 + v8;
  v98 = v34 - v8;
  v99 = v85 + 1;
  v100 = v85 - 1;
  for (i = (v85 + 1); v94 > v99; i = v99)
  {
    v102 = &__b[v100];
    v103 = v102 + 1;
    v104 = v102 < __b || v103 > v220;
    if (v104 || v102 > v103)
    {
      goto LABEL_388;
    }

    v106 = v100;
    v107 = &v25[v100];
    if (v107 < __b)
    {
      goto LABEL_388;
    }

    if (v107 + 1 > v220)
    {
      goto LABEL_388;
    }

    if (v107 > v107 + 1)
    {
      goto LABEL_388;
    }

    v108 = &sincos_t_rad3[v98];
    if (v108 < sincos_t_rad3)
    {
      goto LABEL_388;
    }

    if (v108 + 1 > RotVector_256)
    {
      goto LABEL_388;
    }

    if (v108 > v108 + 1)
    {
      goto LABEL_388;
    }

    v109 = &v26[-v100];
    if (v109 < __b)
    {
      goto LABEL_388;
    }

    if (v109 + 1 > v220)
    {
      goto LABEL_388;
    }

    if (v109 > v109 + 1)
    {
      goto LABEL_388;
    }

    v110 = &sincos_t_rad3[v97];
    if (v110 < sincos_t_rad3)
    {
      goto LABEL_388;
    }

    if (v110 + 1 > RotVector_256)
    {
      goto LABEL_388;
    }

    if (v110 > v110 + 1)
    {
      goto LABEL_388;
    }

    v111 = &v26[v100];
    if (v111 < __b)
    {
      goto LABEL_388;
    }

    if (v111 + 1 > v220)
    {
      goto LABEL_388;
    }

    if (v111 > v111 + 1)
    {
      goto LABEL_388;
    }

    v112 = &sincos_t_rad3[v96];
    if (v112 < sincos_t_rad3)
    {
      goto LABEL_388;
    }

    if (v112 + 1 > RotVector_256)
    {
      goto LABEL_388;
    }

    if (v112 > v112 + 1)
    {
      goto LABEL_388;
    }

    v113 = &v216[-v100];
    if (v113 < __b)
    {
      goto LABEL_388;
    }

    if (v113 + 1 > v220)
    {
      goto LABEL_388;
    }

    if (v113 > v113 + 1)
    {
      goto LABEL_388;
    }

    v114 = &sincos_t_rad3[v95];
    if (v114 < sincos_t_rad3)
    {
      goto LABEL_388;
    }

    if (v114 + 1 > RotVector_256)
    {
      goto LABEL_388;
    }

    if (v114 > v114 + 1)
    {
      goto LABEL_388;
    }

    v115 = &v30[v99];
    if ((v115 + 1) > v29)
    {
      goto LABEL_388;
    }

    if (v115 > v115 + 1)
    {
      goto LABEL_388;
    }

    if (v115 < v32)
    {
      goto LABEL_388;
    }

    v116 = *v108;
    v117 = *v110;
    v118 = *v112;
    v119 = *v114;
    *v115 = (((__b[v106] + (*v107 * *v108)) - (*v109 * *v110)) - (*v111 * *v112)) - (*v113 * *v114);
    v120 = &v25[-v106];
    if (v120 < __b)
    {
      goto LABEL_388;
    }

    if (v120 + 1 > v220)
    {
      goto LABEL_388;
    }

    if (v120 > v120 + 1)
    {
      goto LABEL_388;
    }

    v121 = &v215[-i];
    if ((v121 + 1) > v29 || v121 > v121 + 1 || v121 < v32)
    {
      goto LABEL_388;
    }

    *v121 = ((-(*v120 + (*v107 * v117)) - (*v109 * v116)) - (*v111 * v119)) + (*v113 * v118);
    v95 -= v217;
    v96 -= v218;
    v97 += v8;
    v98 -= v8;
    ++v99;
    v100 = v106 - 1;
  }

  if (v214 > v99)
  {
    v122 = v99;
    v123 = v213 - v99;
    v124 = 4 * v212 - v122 * 4;
    do
    {
      v125 = &__b[v100];
      v126 = v125 + 1;
      if (v125 < __b || v126 > v220 || v125 > v126)
      {
        goto LABEL_388;
      }

      v129 = v100;
      v130 = &v25[v100];
      if (v130 < __b)
      {
        goto LABEL_388;
      }

      if (v130 + 1 > v220)
      {
        goto LABEL_388;
      }

      if (v130 > v130 + 1)
      {
        goto LABEL_388;
      }

      v131 = &sincos_t_rad3[v98];
      if (v131 < sincos_t_rad3)
      {
        goto LABEL_388;
      }

      if (v131 + 1 > RotVector_256)
      {
        goto LABEL_388;
      }

      if (v131 > v131 + 1)
      {
        goto LABEL_388;
      }

      v132 = &v26[-v100];
      if (v132 < __b)
      {
        goto LABEL_388;
      }

      if (v132 + 1 > v220)
      {
        goto LABEL_388;
      }

      if (v132 > v132 + 1)
      {
        goto LABEL_388;
      }

      v133 = &sincos_t_rad3[v97];
      if (v133 < sincos_t_rad3)
      {
        goto LABEL_388;
      }

      if (v133 + 1 > RotVector_256)
      {
        goto LABEL_388;
      }

      if (v133 > v133 + 1)
      {
        goto LABEL_388;
      }

      v134 = &v26[v100];
      if (v134 < __b)
      {
        goto LABEL_388;
      }

      if (v134 + 1 > v220)
      {
        goto LABEL_388;
      }

      if (v134 > v134 + 1)
      {
        goto LABEL_388;
      }

      v135 = &sincos_t_rad3[v96];
      if (v135 < sincos_t_rad3)
      {
        goto LABEL_388;
      }

      if (v135 + 1 > RotVector_256)
      {
        goto LABEL_388;
      }

      if (v135 > v135 + 1)
      {
        goto LABEL_388;
      }

      v136 = &v216[-v100];
      if (v136 < __b)
      {
        goto LABEL_388;
      }

      if (v136 + 1 > v220)
      {
        goto LABEL_388;
      }

      if (v136 > v136 + 1)
      {
        goto LABEL_388;
      }

      v137 = &sincos_t_rad3[v95];
      if (v137 < sincos_t_rad3)
      {
        goto LABEL_388;
      }

      if (v137 + 1 > RotVector_256)
      {
        goto LABEL_388;
      }

      if (v137 > v137 + 1)
      {
        goto LABEL_388;
      }

      v138 = &v30[v122];
      v139 = &v30[v122 + 1];
      if (v139 > v29)
      {
        goto LABEL_388;
      }

      if (v138 > v139)
      {
        goto LABEL_388;
      }

      if (v138 < v32)
      {
        goto LABEL_388;
      }

      v140 = *v131;
      v141 = *v133;
      v142 = *v135;
      v143 = *v137;
      *v138 = (((__b[v129] - (*v130 * *v131)) - (*v132 * *v133)) - (*v134 * *v135)) + (*v136 * *v137);
      v144 = &v25[-v129];
      if (v144 < __b)
      {
        goto LABEL_388;
      }

      if (v144 + 1 > v220)
      {
        goto LABEL_388;
      }

      if (v144 > v144 + 1)
      {
        goto LABEL_388;
      }

      v145 = (v30 + v124);
      v146 = v30 + v124 + 4;
      if (v146 > v29 || v145 > v146 || v145 < v32)
      {
        goto LABEL_388;
      }

      v147 = ((*v132 * v140) - (*v144 + (*v130 * v141))) + (*v134 * v143);
      v148 = *v136;
      v100 = v129 - 1;
      v98 += v8;
      v97 -= v8;
      v96 += v218;
      *v145 = v147 + (v148 * v142);
      v95 += v217;
      v124 -= 4;
      ++v122;
      --v123;
    }

    while (v123);
    i = v214;
    v99 = v214;
  }

  v149 = &__b[v100];
  if (v149 < __b)
  {
    goto LABEL_388;
  }

  if (v149 + 1 > v220)
  {
    goto LABEL_388;
  }

  if (v149 > v149 + 1)
  {
    goto LABEL_388;
  }

  v150 = &v25[v100];
  if (v150 < __b)
  {
    goto LABEL_388;
  }

  if (v150 + 1 > v220)
  {
    goto LABEL_388;
  }

  if (v150 > v150 + 1)
  {
    goto LABEL_388;
  }

  v151 = &sincos_t_rad3[v98];
  if (v151 < sincos_t_rad3)
  {
    goto LABEL_388;
  }

  if (v151 + 1 > RotVector_256)
  {
    goto LABEL_388;
  }

  if (v151 > v151 + 1)
  {
    goto LABEL_388;
  }

  v152 = &v26[v100];
  if (v152 < __b)
  {
    goto LABEL_388;
  }

  if (v152 + 1 > v220)
  {
    goto LABEL_388;
  }

  if (v152 > v152 + 1)
  {
    goto LABEL_388;
  }

  v153 = &sincos_t_rad3[v96];
  if (v153 < sincos_t_rad3)
  {
    goto LABEL_388;
  }

  if (v153 + 1 > RotVector_256)
  {
    goto LABEL_388;
  }

  if (v153 > v153 + 1)
  {
    goto LABEL_388;
  }

  v154 = &v30[v99];
  if ((v154 + 1) > v29)
  {
    goto LABEL_388;
  }

  if (v154 > v154 + 1)
  {
    goto LABEL_388;
  }

  if (v154 < v32)
  {
    goto LABEL_388;
  }

  *v154 = (__b[v100] - (*v150 * *v151)) - (*v152 * *v153);
  v155 = &sincos_t_rad3[v97];
  if (v155 < sincos_t_rad3)
  {
    goto LABEL_388;
  }

  if (v155 + 1 > RotVector_256)
  {
    goto LABEL_388;
  }

  if (v155 > v155 + 1)
  {
    goto LABEL_388;
  }

  v156 = &sincos_t_rad3[v95];
  if (v156 < sincos_t_rad3)
  {
    goto LABEL_388;
  }

  if (v156 + 1 > RotVector_256)
  {
    goto LABEL_388;
  }

  if (v156 > v156 + 1)
  {
    goto LABEL_388;
  }

  v157 = &v215[-i];
  if ((v157 + 1) > v29 || v157 > v157 + 1 || v157 < v32)
  {
    goto LABEL_388;
  }

  *v157 = (*v152 * *v156) + (-*v150 * *v155);
  v158 = v214 | (v214 >> 3);
  v159 = v95 + v217;
  v160 = v96 + v218;
  v161 = v97 - v8;
  v162 = v98 + v8;
  v163 = v99 + 1;
  v164 = (v99 + 1);
  v165 = 1;
  if (v158 > v164)
  {
    do
    {
      v166 = &__b[v165];
      v167 = v166 + 1;
      v168 = v166 < __b || v167 > v220;
      if (v168 || v166 > v167)
      {
        goto LABEL_388;
      }

      v170 = &v25[v165];
      if (v170 < __b)
      {
        goto LABEL_388;
      }

      if (v170 + 1 > v220)
      {
        goto LABEL_388;
      }

      if (v170 > v170 + 1)
      {
        goto LABEL_388;
      }

      v171 = &sincos_t_rad3[v162];
      if (v171 < sincos_t_rad3)
      {
        goto LABEL_388;
      }

      if (v171 + 1 > RotVector_256)
      {
        goto LABEL_388;
      }

      if (v171 > v171 + 1)
      {
        goto LABEL_388;
      }

      v172 = &v26[-v165];
      if (v172 < __b)
      {
        goto LABEL_388;
      }

      if (v172 + 1 > v220)
      {
        goto LABEL_388;
      }

      if (v172 > v172 + 1)
      {
        goto LABEL_388;
      }

      v173 = &sincos_t_rad3[v161];
      if (v173 < sincos_t_rad3)
      {
        goto LABEL_388;
      }

      if (v173 + 1 > RotVector_256)
      {
        goto LABEL_388;
      }

      if (v173 > v173 + 1)
      {
        goto LABEL_388;
      }

      v174 = &v26[v165];
      if (v174 < __b)
      {
        goto LABEL_388;
      }

      if (v174 + 1 > v220)
      {
        goto LABEL_388;
      }

      if (v174 > v174 + 1)
      {
        goto LABEL_388;
      }

      v175 = &sincos_t_rad3[v160];
      if (v175 < sincos_t_rad3)
      {
        goto LABEL_388;
      }

      if (v175 + 1 > RotVector_256)
      {
        goto LABEL_388;
      }

      if (v175 > v175 + 1)
      {
        goto LABEL_388;
      }

      v176 = &v216[-v165];
      if (v176 < __b)
      {
        goto LABEL_388;
      }

      if (v176 + 1 > v220)
      {
        goto LABEL_388;
      }

      if (v176 > v176 + 1)
      {
        goto LABEL_388;
      }

      v177 = &sincos_t_rad3[v159];
      if (v177 < sincos_t_rad3)
      {
        goto LABEL_388;
      }

      if (v177 + 1 > RotVector_256)
      {
        goto LABEL_388;
      }

      if (v177 > v177 + 1)
      {
        goto LABEL_388;
      }

      v178 = &v30[v163];
      if ((v178 + 1) > v29)
      {
        goto LABEL_388;
      }

      if (v178 > v178 + 1)
      {
        goto LABEL_388;
      }

      if (v178 < v32)
      {
        goto LABEL_388;
      }

      v179 = *v171;
      v180 = *v173;
      v181 = *v175;
      v182 = *v177;
      *v178 = (((__b[v165] - (*v170 * *v171)) + (*v172 * *v173)) - (*v174 * *v175)) - (*v176 * *v177);
      v183 = &v25[-v165];
      if (v183 < __b)
      {
        goto LABEL_388;
      }

      if (v183 + 1 > v220)
      {
        goto LABEL_388;
      }

      if (v183 > v183 + 1)
      {
        goto LABEL_388;
      }

      v184 = &v215[-v164];
      if ((v184 + 1) > v29 || v184 > v184 + 1 || v184 < v32)
      {
        goto LABEL_388;
      }

      *v184 = (((*v183 - (*v170 * v180)) - (*v172 * v179)) + (*v174 * v182)) - (*v176 * v181);
      ++v165;
      v159 += v217;
      v160 += v218;
      v161 -= v8;
      v162 += v8;
      v164 = ++v163;
    }

    while (v158 > v163);
  }

  if (v212 == 384)
  {
    v185 = 192;
  }

  else
  {
    v185 = 768;
  }

  if (v185 > v164)
  {
    do
    {
      v186 = &__b[v165];
      v187 = v186 + 1;
      v188 = v186 < __b || v187 > v220;
      if (v188 || v186 > v187)
      {
        goto LABEL_388;
      }

      v190 = &v25[v165];
      if (v190 < __b)
      {
        goto LABEL_388;
      }

      if (v190 + 1 > v220)
      {
        goto LABEL_388;
      }

      if (v190 > v190 + 1)
      {
        goto LABEL_388;
      }

      v191 = &sincos_t_rad3[v162];
      if (v191 < sincos_t_rad3)
      {
        goto LABEL_388;
      }

      if (v191 + 1 > RotVector_256)
      {
        goto LABEL_388;
      }

      if (v191 > v191 + 1)
      {
        goto LABEL_388;
      }

      v192 = &v26[-v165];
      if (v192 < __b)
      {
        goto LABEL_388;
      }

      if (v192 + 1 > v220)
      {
        goto LABEL_388;
      }

      if (v192 > v192 + 1)
      {
        goto LABEL_388;
      }

      v193 = &sincos_t_rad3[v161];
      if (v193 < sincos_t_rad3)
      {
        goto LABEL_388;
      }

      if (v193 + 1 > RotVector_256)
      {
        goto LABEL_388;
      }

      if (v193 > v193 + 1)
      {
        goto LABEL_388;
      }

      v194 = &v26[v165];
      if (v194 < __b)
      {
        goto LABEL_388;
      }

      if (v194 + 1 > v220)
      {
        goto LABEL_388;
      }

      if (v194 > v194 + 1)
      {
        goto LABEL_388;
      }

      v195 = &sincos_t_rad3[v160];
      if (v195 < sincos_t_rad3)
      {
        goto LABEL_388;
      }

      if (v195 + 1 > RotVector_256)
      {
        goto LABEL_388;
      }

      if (v195 > v195 + 1)
      {
        goto LABEL_388;
      }

      v196 = &v216[-v165];
      if (v196 < __b)
      {
        goto LABEL_388;
      }

      if (v196 + 1 > v220)
      {
        goto LABEL_388;
      }

      if (v196 > v196 + 1)
      {
        goto LABEL_388;
      }

      v197 = &sincos_t_rad3[v159];
      if (v197 < sincos_t_rad3)
      {
        goto LABEL_388;
      }

      if (v197 + 1 > RotVector_256)
      {
        goto LABEL_388;
      }

      if (v197 > v197 + 1)
      {
        goto LABEL_388;
      }

      v198 = &v30[v163];
      if ((v198 + 1) > v29)
      {
        goto LABEL_388;
      }

      if (v198 > v198 + 1)
      {
        goto LABEL_388;
      }

      if (v198 < v32)
      {
        goto LABEL_388;
      }

      v199 = *v191;
      v200 = *v193;
      v201 = *v195;
      v202 = *v197;
      *v198 = (((__b[v165] - (*v190 * *v191)) + (*v192 * *v193)) + (*v194 * *v195)) - (*v196 * *v197);
      v203 = &v25[-v165];
      if (v203 < __b)
      {
        goto LABEL_388;
      }

      if (v203 + 1 > v220)
      {
        goto LABEL_388;
      }

      if (v203 > v203 + 1)
      {
        goto LABEL_388;
      }

      v204 = &v215[-v164];
      if ((v204 + 1) > v29 || v204 > v204 + 1 || v204 < v32)
      {
        goto LABEL_388;
      }

      ++v163;
      *v204 = (((*v203 - (*v190 * v200)) - (*v192 * v199)) + (*v194 * v202)) + (*v196 * v201);
      ++v165;
      v162 += v8;
      v161 -= v8;
      v160 -= v218;
      v159 -= v217;
      v164 = v163;
    }

    while (v185 > v163);
  }

  v205 = &__b[v165];
  if (v205 < __b)
  {
    goto LABEL_388;
  }

  if (v205 + 1 > v220)
  {
    goto LABEL_388;
  }

  if (v205 > v205 + 1)
  {
    goto LABEL_388;
  }

  v206 = &v25[v165];
  if (v206 < __b)
  {
    goto LABEL_388;
  }

  if (v206 + 1 > v220)
  {
    goto LABEL_388;
  }

  if (v206 > v206 + 1)
  {
    goto LABEL_388;
  }

  v207 = &sincos_t_rad3[v162];
  if (v207 < sincos_t_rad3)
  {
    goto LABEL_388;
  }

  if (v207 + 1 > RotVector_256)
  {
    goto LABEL_388;
  }

  if (v207 > v207 + 1)
  {
    goto LABEL_388;
  }

  v208 = &v26[v165];
  if (v208 < __b)
  {
    goto LABEL_388;
  }

  if (v208 + 1 > v220)
  {
    goto LABEL_388;
  }

  if (v208 > v208 + 1)
  {
    goto LABEL_388;
  }

  v209 = &sincos_t_rad3[v160];
  if (v209 < sincos_t_rad3)
  {
    goto LABEL_388;
  }

  if (v209 + 1 > RotVector_256)
  {
    goto LABEL_388;
  }

  if (v209 > v209 + 1)
  {
    goto LABEL_388;
  }

  v210 = &v30[v163];
  if ((v210 + 1) > v29 || v210 > v210 + 1 || v210 < v32)
  {
    goto LABEL_388;
  }

  result = (__b[v165] - (*v206 * *v207)) + (*v208 * *v209);
  *v210 = result;
  return result;
}

float *fft_spec2(float *result, int a2)
{
  v2 = (a2 + ((a2 & 0x8000) >> 15)) << 16 >> 17;
  v3 = &result[a2];
  if (a2 < 4)
  {
LABEL_13:
    if (result + 1 >= result && (result + 1) <= v3)
    {
      *result = *result * *result;
      v8 = &result[v2];
      v9 = v8 + 1;
      v10 = v8 < result || v9 > v3;
      if (!v10 && v8 <= v9)
      {
        *v8 = *v8 * *v8;
        return result;
      }
    }
  }

  else
  {
    if (v2 <= 2)
    {
      v4 = 2;
    }

    else
    {
      v4 = v2;
    }

    v5 = v4 - 1;
    v6 = result + 1;
    while (v6 >= result)
    {
      if ((v6 + 1) > v3)
      {
        break;
      }

      if (v6 > v6 + 1)
      {
        break;
      }

      v7 = &result[--a2];
      if (v7 < result || (v7 + 1) > v3 || v7 > v7 + 1)
      {
        break;
      }

      *v6 = (*v7 * *v7) + (*v6 * *v6);
      ++v6;
      if (!--v5)
      {
        goto LABEL_13;
      }
    }
  }

  __break(0x5519u);
  return result;
}

float imax(float *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = ((*a1 * -2.0) + (v2 * 4.0)) + (v3 * -2.0);
  result = 0.0;
  if (v4 != 0.0)
  {
    v6 = (v1 + v3) + (v2 * -2.0);
    if (v6 != 0.0)
    {
      v7 = (v3 - v1) / v4;
      if (fabsf(v7) >= 1.0)
      {
        v7 = -1.0;
        if (v3 > v1)
        {
          v7 = 1.0;
        }
      }

      else
      {
        v8 = v2 + ((((v3 - v1) * (v3 - v1)) * -0.125) / v6);
        if (v1 >= v8)
        {
          v7 = 1.0;
          if (v1 > v3)
          {
            v7 = -1.0;
          }
        }

        else if (v3 >= v8)
        {
          v7 = 1.0;
        }
      }

      return v7 + 1.0;
    }
  }

  return result;
}

uint64_t rand_phase(__int16 a1, float *a2, float *a3)
{
  v3 = 31821 * a1 + 13849;
  result = v3;
  v5 = &sincos_t_ext[v3 >> 8];
  v6 = v5 + 128;
  v7 = (v5 + 129);
  v10 = v7 <= &stab_trans_fx && v6 <= v7 && v6 >= sincos_t_ext;
  if ((v3 & 0x40) != 0)
  {
    if (!v10)
    {
      goto LABEL_30;
    }

    v11 = *v6;
  }

  else
  {
    if (!v10)
    {
      goto LABEL_30;
    }

    v11 = -*v6;
  }

  *a2 = v11;
  v12 = &sincos_t_ext[-(v3 >> 8)];
  v13 = v12 + 128;
  v14 = (v12 + 129);
  v17 = v14 <= &stab_trans_fx && v13 <= v14 && v13 >= sincos_t_ext;
  if ((result & 0x80) != 0)
  {
    if (v17)
    {
      v18 = *v13;
      goto LABEL_29;
    }
  }

  else if (v17)
  {
    v18 = -*v13;
LABEL_29:
    *a3 = v18;
    return result;
  }

LABEL_30:
  __break(0x5519u);
  return result;
}

void CNG_dec(uint64_t a1, int a2, unint64_t a3, unint64_t a4, uint64_t a5, __int128 *a6, _OWORD *a7, _WORD *a8, _WORD *a9, _DWORD *a10)
{
  *&v299 = *MEMORY[0x1E69E9840];
  *&v16 = -1;
  *(&v16 + 1) = -1;
  v298 = v16;
  v297 = v16;
  v296 = v16;
  v295 = v16;
  v294 = v16;
  v293 = v16;
  v292 = v16;
  v291 = v16;
  v290 = v16;
  v289 = v16;
  v288 = v16;
  v287 = v16;
  v286 = v16;
  v285 = v16;
  v284 = v16;
  v283 = v16;
  v282 = v16;
  v281 = v16;
  v280 = v16;
  v279 = v16;
  v278 = v16;
  v277 = v16;
  v276 = v16;
  v275 = v16;
  v274 = v16;
  v273 = v16;
  v272 = v16;
  v271 = v16;
  v270 = v16;
  v269 = v16;
  v268 = v16;
  v267 = v16;
  v266 = v16;
  v265[2] = v16;
  v265[1] = v16;
  v265[0] = v16;
  __C = -1;
  v253 = -1431655766;
  v262 = v16;
  v263 = v16;
  v260 = v16;
  v261 = v16;
  v258 = v16;
  v259 = v16;
  v256 = v16;
  v257 = v16;
  v255 = v16;
  memset(__b, 255, sizeof(__b));
  v252 = -21846;
  if (a5 == 2400 || a5 == 1750)
  {
    if (*(a1 + 5244))
    {
      isf_dec_amr_wb(a1, a3, a4, a7, a6);
    }

    else
    {
      *&v229 = a7;
      *(&v229 + 1) = a7 + 4;
      lsf_dec(a1, 0, a2, 0, -1, a3, a4, &v252, v229, a6, (a6 + 4), 0, 0);
    }
  }

  else
  {
    v17 = *(a1 + 11144);
    v18 = *(a1 + 11160);
    v19 = *(a1 + 11192);
    a6[2] = *(a1 + 11176);
    a6[3] = v19;
    *a6 = v17;
    a6[1] = v18;
    if (a6 + 4 < a6)
    {
      goto LABEL_342;
    }

    v20 = *(a1 + 11208);
    v21 = *(a1 + 11224);
    v22 = *(a1 + 11256);
    a7[2] = *(a1 + 11240);
    a7[3] = v22;
    *a7 = v20;
    a7[1] = v21;
    if (a7 + 4 < a7)
    {
      goto LABEL_342;
    }
  }

  v23 = (a1 + 29512);
  v24 = a1 + 24310;
  v248 = (a1 + 28280);
  if (!*(a1 + 28280))
  {
    v25 = *(a1 + 11160);
    *(a1 + 28216) = *(a1 + 11144);
    *(a1 + 28232) = v25;
    v26 = *(a1 + 11192);
    *(a1 + 28248) = *(a1 + 11176);
    *(a1 + 28264) = v26;
  }

  *a8 = 0;
  v243 = a1;
  v232 = a5;
  v233 = a8;
  v245 = (a1 + 29512);
  v247 = a1 + 24310;
  if (a5 == 2400 || (v27 = 0, a5 == 1750))
  {
    if (a5 == 2400)
    {
      v28 = 5.25;
    }

    else
    {
      v28 = 2.625;
    }

    if (*(a1 + 5244))
    {
      v29 = 6;
    }

    else
    {
      v29 = 7;
    }

    next_indice = get_next_indice(a1, v29);
    LOWORD(v31) = next_indice;
    v32 = *(a1 + 5216);
    v33 = 20;
    if (v32 >= 2401)
    {
      if (*v247 == 1)
      {
        v33 = 20;
      }

      else
      {
        v33 = 40;
      }
    }

    v34 = *(a1 + 28288);
    v35 = v34 + v33;
    if (next_indice > v35 && (v34 & 0x80000000) == 0)
    {
      v31 = v35;
      v36 = *(a1 + 5244) ? 63 : 127;
      if (v36 < v31)
      {
        LOWORD(v31) = v36;
      }
    }

    if (v32 >= 2401 && *v248 && (v34 & 0x80000000) == 0 && *(a1 + 28288) + 1 < v31)
    {
      *a8 = 1;
    }

    if (v31)
    {
      v37 = v31;
    }

    else
    {
      v37 = -5;
    }

    *(a1 + 28288) = v31;
    v38 = exp2(((v37 / v28) + -2.0));
    *(a1 + 28284) = v38;
    if (a5 == 2400)
    {
      v27 = get_next_indice(a1, 3);
      v39 = get_next_indice(a1, 1);
      *a9 = v39;
      if (!v39)
      {
        v40 = &CNG_details_codebook[20 * get_next_indice(a1, 6)];
        v41 = 20;
        v42 = v40;
        v43 = a10;
        v23 = (a1 + 29512);
        while (v42 >= v40 && v42 + 1 <= v40 + 20 && v42 <= v42 + 1)
        {
          v44 = *v42++;
          *v43++ = v44;
          if (!--v41)
          {
            goto LABEL_48;
          }
        }

LABEL_342:
        __break(0x5519u);
      }
    }

    else
    {
      v27 = 0;
    }

    v23 = (a1 + 29512);
LABEL_48:
    v24 = a1 + 24310;
    if (*(a1 + 5242) == 1 && *v248 && *(a1 + 5240) != *(a1 + 30736))
    {
      *(a1 + 28314) = 0;
    }
  }

  v45 = *(a1 + 5216);
  if (!v45 || v45 == 2400 || v45 == 1750)
  {
    if (*(a1 + 5208) < 1)
    {
      if (*(v23 + 596) >= 3 && *(v24 + 3974) >= (*(v24 + 22) * 1.5))
      {
        v51 = 0;
        goto LABEL_150;
      }
    }

    else
    {
      *(v23 + 596) = 0;
    }

    v46 = (v24 + 3906);
    v47 = 16;
    v48 = a6;
    do
    {
      if (v46 + 1 > v248 || v46 > v46 + 1)
      {
        goto LABEL_342;
      }

      v50 = *a6;
      a6 = (a6 + 4);
      *v46 = (v50 * 0.1) + (*v46 * 0.9);
      ++v46;
      --v47;
    }

    while (v47);
    v51 = 0;
    a6 = v48;
    goto LABEL_66;
  }

  if ((*(a1 + 5244) || *(a1 + 5242) == 1) && (!*v248 || *(v23 + 613) >= 20))
  {
    v52 = *(a1 + 30728);
    if (v52 >= 16401)
    {
      v53 = -1;
LABEL_82:
      *(v23 + 605) = v53;
      goto LABEL_83;
    }

    if (v52 >= 13201)
    {
      v53 = 4;
      goto LABEL_82;
    }

    if (v52 >= 9601)
    {
      v53 = 3;
      goto LABEL_82;
    }

    if (v52 >= 8001)
    {
      v53 = 2;
      goto LABEL_82;
    }

    if (v52 >= 7201)
    {
      v53 = 1;
      goto LABEL_82;
    }

    *(v23 + 605) = 0;
  }

LABEL_83:
  __src = a6;
  v54 = *(v23 + 1);
  if (v27 >= v54)
  {
    v55 = v54;
  }

  else
  {
    v55 = v27;
  }

  *v23 = 0;
  if (v55 > 0)
  {
    v56 = *(v23 + 2) - v55 + 1;
    v57 = (v54 & (v56 >> 15)) + v56;
    __x = a1 + 30706;
    v235 = a1 + 30722;
    v58 = a1 + 29520;
    v59 = a1 + 30032;
    v240 = a1 + 28328;
    v60 = a1 + 28840;
    v61 = v243 + 30064;
    v62 = v243 + 28872;
    v63 = v243 + 30704;
    while (1)
    {
      v64 = *(v24 + 4006);
      if (v64 == 7)
      {
        v65 = 0;
      }

      else
      {
        v65 = v64 + 1;
      }

      *(v24 + 4006) = v65;
      if (a2 == 256)
      {
        v67 = (__x + 2 * v57);
        if (v67 < __x || (v67 + 1) > v235 || v67 > v67 + 1)
        {
          goto LABEL_342;
        }

        if (*v67 != 1)
        {
          goto LABEL_106;
        }
      }

      else
      {
        if (a2 != 320)
        {
          goto LABEL_106;
        }

        v66 = (__x + 2 * v57);
        if (v66 < __x || (v66 + 1) > v235 || v66 > v66 + 1)
        {
          goto LABEL_342;
        }

        if (*v66)
        {
          goto LABEL_106;
        }
      }

      v68 = (v58 + (v57 << 6));
      if (v59 < v68 || v58 > v68 || (v59 - v68) < 61)
      {
        goto LABEL_342;
      }

      lsp_convert_poly(v68, a2, 0);
      v23 = v245;
LABEL_106:
      v69 = (v58 + (v57 << 6));
      if (v69 < v58)
      {
        goto LABEL_342;
      }

      v70 = (v240 + (*(v247 + 4006) << 6));
      if (v70 < v240)
      {
        goto LABEL_342;
      }

      if (v60 < v70 || v69 > v59)
      {
        goto LABEL_342;
      }

      if (v59 - v69 < 0x40)
      {
        goto LABEL_342;
      }

      if (v60 - v70 <= 0x3F)
      {
        goto LABEL_342;
      }

      v73 = v69[2];
      v72 = v69[3];
      v74 = v69[1];
      *v70 = *v69;
      v70[1] = v74;
      v70[2] = v73;
      v70[3] = v72;
      if (v70 + 4 < v70)
      {
        goto LABEL_342;
      }

      v75 = (v59 + 4 * v57);
      if (v75 < v59)
      {
        goto LABEL_342;
      }

      v76 = (v60 + 4 * *(v247 + 4006));
      if (v76 < v60)
      {
        goto LABEL_342;
      }

      if (v62 < v76)
      {
        goto LABEL_342;
      }

      if (v75 > v61)
      {
        goto LABEL_342;
      }

      if (v61 - v75 < 4)
      {
        goto LABEL_342;
      }

      if (v62 - v76 <= 3)
      {
        goto LABEL_342;
      }

      *v76 = *v75;
      if (v76 + 1 < v76)
      {
        goto LABEL_342;
      }

      *(v243 + 28320) = 2 * (*(v243 + 28320) & 0x3FFFFFFFLL);
      v77 = (v61 + 80 * v57);
      if (v77 < v61)
      {
        goto LABEL_342;
      }

      v78 = v62 + 80 * *(v247 + 4006);
      if (v78 < v62)
      {
        goto LABEL_342;
      }

      if (v23 < v78)
      {
        goto LABEL_342;
      }

      if (v77 > v63)
      {
        goto LABEL_342;
      }

      if (v63 - v77 < 0x50)
      {
        goto LABEL_342;
      }

      if (&v23[-v78] <= 0x4F)
      {
        goto LABEL_342;
      }

      memmove((v62 + 80 * *(v247 + 4006)), v77, 0x50uLL);
      if (v78 + 80 < v78)
      {
        goto LABEL_342;
      }

      v24 = v247;
      v79 = (*(v247 + 4004) + 1);
      if (v79 >= 8)
      {
        LOWORD(v79) = 8;
      }

      *(v247 + 4004) = v79;
      v23 = v245;
      if (*(v245 + 1) == (v57 + 1))
      {
        LOWORD(v57) = 0;
      }

      else
      {
        LOWORD(v57) = v57 + 1;
      }

      v80 = v55--;
      if (v80 <= 1)
      {
        a8 = v233;
        goto LABEL_137;
      }
    }
  }

  LOWORD(v79) = *(v24 + 4004);
LABEL_137:
  v81 = v243;
  if (v79 < 1)
  {
    v83 = *a8;
  }

  else
  {
    v82 = (v243 + 28840 + 4 * *(v24 + 4006));
    if (v82 < v243 + 28840 || (v82 + 1) > v243 + 28872 || v82 > v82 + 1)
    {
      goto LABEL_342;
    }

    v24 = v247;
    a8 = v233;
    v83 = *v233 | (*v82 > (*(v247 + 22) * 4.0));
    *v233 = v83;
    v81 = v243;
  }

  a6 = __src;
  if (v83 || (v110 = *(v24 + 4004), v110 < 1))
  {
    v51 = 0;
    v84 = (__src + 4);
    v85 = (v81 + 28216);
    v86 = 64;
    v87 = __src;
    goto LABEL_145;
  }

  v111 = *(v24 + 4006);
  v112 = *(v24 + 4006);
  v113 = v81 + 28328;
  v114 = (v81 + 28328 + (v112 << 6));
  if (v114 < v81 + 28328)
  {
    goto LABEL_342;
  }

  v115 = v243 + 28840;
  if (v243 + 28840 < v114 || (v243 + 28840 - v114) <= 0x3F)
  {
    goto LABEL_342;
  }

  v116 = v114[1];
  v267 = *v114;
  v268 = v116;
  v117 = v114[3];
  v269 = v114[2];
  v270 = v117;
  v118 = *(v243 + 28320);
  if (v118)
  {
    v122 = 0;
  }

  else
  {
    v119 = (v243 + 28872 + 80 * v111);
    if (v119 < v243 + 28872 || v23 < v119 || (v23 - v119) <= 0x4F)
    {
      goto LABEL_342;
    }

    v120 = *(v119 + 3);
    __b[2] = *(v119 + 2);
    __b[3] = v120;
    __b[4] = *(v119 + 4);
    v121 = *(v119 + 1);
    __b[0] = *v119;
    __b[1] = v121;
    v122 = 1;
  }

  v135 = (v115 + 4 * v112);
  if (v135 < v115)
  {
    goto LABEL_342;
  }

  v136 = v243 + 28872;
  if ((v135 + 1) > v243 + 28872 || v135 > v135 + 1)
  {
    goto LABEL_342;
  }

  v137 = *v135;
  v138 = 0.2;
  v139 = *v135 * 0.2;
  if (v110 != 1)
  {
    v140 = 0;
    v141 = v111;
    v142 = v137 * 1.03;
    v143 = v137 * 0.7;
    v144 = 1;
    v138 = 0.2;
    v51 = 1;
    while (1)
    {
      if (--v141 < 0)
      {
        v141 = 7;
      }

      v145 = (v115 + 4 * v141);
      v146 = v145 + 1;
      v147 = v145 < v115 || v146 > v136;
      if (v147 || v145 > v146)
      {
        goto LABEL_342;
      }

      v149 = *v145;
      if (*v145 < v142 && v149 > v143)
      {
        v151 = &W_DTX_HO[v140 + 1];
        if (v151 < W_DTX_HO)
        {
          goto LABEL_342;
        }

        v152 = &W_DTX_HO[v140 + 2];
        if (v152 > HO_ATT)
        {
          goto LABEL_342;
        }

        if (v151 > v152)
        {
          goto LABEL_342;
        }

        v153 = (v113 + (v141 << 6));
        if (v153 < v113)
        {
          goto LABEL_342;
        }

        v154 = &v267 + 4 * v51;
        if (v154 < &v267)
        {
          goto LABEL_342;
        }

        if (v154 > &v299)
        {
          goto LABEL_342;
        }

        if (v153 > v115)
        {
          goto LABEL_342;
        }

        if (v115 - v153 < 0x40)
        {
          goto LABEL_342;
        }

        if (v51 == 8)
        {
          goto LABEL_342;
        }

        v155 = W_DTX_HO[v144];
        v156 = v153[1];
        *v154 = *v153;
        v154[1] = v156;
        v157 = v153[3];
        v154[2] = v153[2];
        v154[3] = v157;
        if (v154 + 4 < v154)
        {
          goto LABEL_342;
        }

        if (((v118 >> v144) & 1) == 0)
        {
          v158 = (v136 + 80 * v141);
          if (v158 < v136)
          {
            goto LABEL_342;
          }

          v159 = &__b[5 * v122];
          if (v159 < __b)
          {
            goto LABEL_342;
          }

          if (v159 > &v255)
          {
            goto LABEL_342;
          }

          if (v158 > v23)
          {
            goto LABEL_342;
          }

          if ((v23 - v158) < 0x50)
          {
            goto LABEL_342;
          }

          if ((80 * v122 - 561) <= 0x4F)
          {
            goto LABEL_342;
          }

          v160 = *(v158 + 3);
          v159[2] = *(v158 + 2);
          v159[3] = v160;
          v159[4] = *(v158 + 4);
          v161 = *(v158 + 1);
          *v159 = *v158;
          v159[1] = v161;
          if (v159 + 5 < v159)
          {
            goto LABEL_342;
          }

          ++v122;
        }

        v139 = v139 + (v155 * v149);
        v138 = v138 + v155;
        ++v51;
      }

      ++v144;
      ++v140;
      if (v144 >= v110)
      {
        goto LABEL_250;
      }
    }
  }

  v51 = 1;
LABEL_250:
  *(v247 + 22) = v139 / v138;
  LODWORD(__A[0]) = 0;
  vDSP_vfill(__A, &__C, 1, 2uLL);
  v253 = 0;
  v162 = v51;
  if (v51 <= 0)
  {
    v170 = v253;
    v181 = v51;
    v23 = v245;
    goto LABEL_274;
  }

  v230 = v122;
  v163 = 0;
  v164 = flt_19B0B0020[*(v243 + 5240) == 256];
  v165 = flt_19B0B0028[*(v243 + 5240) == 256];
  v166 = flt_19B0B0030[*(v243 + 5240) == 256];
  if (*(v243 + 5240) == 256)
  {
    v167 = 6400.0;
  }

  else
  {
    v167 = 8000.0;
  }

  v168 = *(&__C + 1);
  LODWORD(v169) = __C;
  v170 = v253;
  v171 = HIWORD(v253);
  v172 = &v267;
  __xa = v253;
  do
  {
    v173 = &v267 + 4 * v163;
    if (v163 > 7 || (v173 <= &v299 ? (v174 = &v267 > v173) : (v174 = 1), v174))
    {
      HIWORD(v253) = v171;
      LOWORD(v253) = __xa;
      goto LABEL_342;
    }

    for (i = 0; i != 64; i += 4)
    {
      *(v265 + i) = v166 * acosf(*(v172 + i));
    }

    v176 = (((v167 - *(&v266 + 3)) + v165) * ((v167 - *(&v266 + 3)) + v165)) + ((*v265 - v164) * (*v265 - v164));
    v177 = v265 + 1;
    v178 = 15;
    do
    {
      v179 = (*v177 - *(v177 - 1)) - v164;
      v176 = v176 + (v179 * v179);
      ++v177;
      --v178;
    }

    while (v178);
    v180 = v176 * 0.058823;
    v23 = v245;
    if (v180 <= v169)
    {
      if (v180 > v168)
      {
        *(&__C + 1) = v180;
        v171 = v163;
        v168 = v180;
      }

      v180 = v169;
    }

    else
    {
      __C = __PAIR64__(LODWORD(v169), LODWORD(v180));
      __xa = v163;
      v171 = v170;
      v170 = v163;
      v168 = v169;
    }

    ++v163;
    v172 += 4;
    v169 = v180;
  }

  while (v163 != v51);
  HIWORD(v253) = v171;
  LOWORD(v253) = __xa;
  v181 = v51;
  v122 = v230;
  if (v51 != 1)
  {
    v162 = v51;
    if (v51 >= 4)
    {
      v192 = 0;
      v193 = &v267 + 4 * SHIWORD(v253);
      v194 = &v267;
      while (1)
      {
        v195 = 0.0;
        v196 = v194;
        v197 = v51;
        do
        {
          v198 = v196 + 1;
          if (v196 < &v267 || v198 > &v299 || v196 > v198)
          {
            goto LABEL_342;
          }

          v201 = *v196;
          v196 += 16;
          v195 = v201 + v195;
          *(&v260 + v192) = v195;
          --v197;
        }

        while (v197);
        v202 = &v267 + 16 * v170 + v192;
        if (v202 < &v267)
        {
          goto LABEL_342;
        }

        if (v202 + 1 > &v299)
        {
          goto LABEL_342;
        }

        if (v202 > v202 + 1)
        {
          goto LABEL_342;
        }

        v203 = v193 + v192;
        if (v203 < &v267 || v203 + 1 > &v299 || v203 > v203 + 1)
        {
          goto LABEL_342;
        }

        *(&v260 + v192++) = (v195 - (*v202 + *v203)) / (v51 - 2);
        v194 = (v194 + 4);
        if (v192 == 16)
        {
          goto LABEL_307;
        }
      }
    }

LABEL_274:
    v182 = 0;
    v183 = &v267;
    while (1)
    {
      v184 = 0.0;
      if (v162 >= 1)
      {
        break;
      }

LABEL_285:
      v191 = &v267 + 16 * v170 + v182;
      if (v191 < &v267 || v191 + 1 > &v299 || v191 > v191 + 1)
      {
        goto LABEL_342;
      }

      *(&v260 + v182++) = (v184 - *v191) / (v181 - 1);
      v183 = (v183 + 4);
      if (v182 == 16)
      {
        goto LABEL_307;
      }
    }

    v185 = v183;
    v186 = v51;
    while (1)
    {
      v187 = v185 + 1;
      v188 = v185 < &v267 || v187 > &v299;
      if (v188 || v185 > v187)
      {
        goto LABEL_342;
      }

      v190 = *v185;
      v185 += 16;
      v184 = v190 + v184;
      *(&v260 + v182) = v184;
      if (!--v186)
      {
        goto LABEL_285;
      }
    }
  }

  v260 = v267;
  v261 = v268;
  v262 = v269;
  v263 = v270;
LABEL_307:
  v204 = 0;
  v205 = 0.0;
  v206 = 0.0;
  do
  {
    v207 = vabds_f32(*(&v260 + v204), *(__src + v204));
    v206 = v206 + v207;
    if (v207 > v205)
    {
      v205 = v207;
    }

    v204 += 4;
  }

  while (v204 != 64);
  v208 = (v247 + 3906);
  if (v206 <= 0.4 && v205 <= 0.1)
  {
    v209 = &v260;
    v210 = 16;
    v211 = __src;
    while (v208 + 1 <= v248 && v208 <= v208 + 1)
    {
      v213 = *v209++;
      v214 = v213;
      v215 = *v211++;
      *v208++ = (v215 * 0.2) + (v214 * 0.8);
      if (!--v210)
      {
        goto LABEL_326;
      }
    }

    goto LABEL_342;
  }

  v216 = &v260;
  v217 = 16;
  do
  {
    if (v208 + 1 > v248 || v208 > v208 + 1)
    {
      goto LABEL_342;
    }

    v219 = *v216++;
    *v208++ = v219;
    --v217;
  }

  while (v217);
LABEL_326:
  if (v122 < 1)
  {
    a1 = v243;
    a6 = __src;
LABEL_66:
    a8 = v233;
    goto LABEL_150;
  }

  v220 = 0;
  v221 = __b;
  do
  {
    *(&v255 + v220) = 0;
    v222 = 0.0;
    v223 = v221;
    v224 = v122;
    do
    {
      v225 = v223 + 1;
      if (v223 < __b || v225 > &v255 || v223 > v225)
      {
        goto LABEL_342;
      }

      v228 = *v223;
      v223 += 20;
      v222 = v228 + v222;
      *(&v255 + v220) = v222;
      --v224;
    }

    while (v224);
    *(&v255 + v220++) = (v222 / v122) + (*(v247 + 22) * -2.0);
    v221 = (v221 + 4);
  }

  while (v220 != 20);
  v87 = &v255;
  v84 = &v260;
  v85 = (v243 + 30824);
  v248 = (v243 + 30904);
  v86 = 80;
  a6 = __src;
  a8 = v233;
LABEL_145:
  if (v248 < v85)
  {
    goto LABEL_342;
  }

  if (v87 > v84)
  {
    goto LABEL_342;
  }

  if (v86 > v84 - v87)
  {
    goto LABEL_342;
  }

  if (v86 > v248 - v85)
  {
    goto LABEL_342;
  }

  memmove(v85, v87, v86);
  a1 = v243;
  v23 = v245;
  if (&v85[v86 / 4] < v85)
  {
    goto LABEL_342;
  }

LABEL_150:
  v88 = v232;
  if (v232 != 2400 && v232 != 1750)
  {
    goto LABEL_189;
  }

  if (!*a8)
  {
    v89 = (v247 + 3974);
    if (*(v247 + 3974) < (*(v247 + 22) * 1.5))
    {
      v90 = *(v247 + 4006);
      if (v90 == 7)
      {
        v91 = 0;
      }

      else
      {
        v91 = v90 + 1;
      }

      *(v247 + 4006) = v91;
      v92 = (a1 + 28328 + 64 * v91);
      if (v92 < a1 + 28328)
      {
        goto LABEL_342;
      }

      v93 = v243 + 28840;
      if (v243 + 28840 < v92)
      {
        goto LABEL_342;
      }

      if ((v243 + 28840 - v92) <= 0x3F)
      {
        goto LABEL_342;
      }

      v94 = *a6;
      v95 = a6[1];
      v96 = a6[3];
      v92[2] = a6[2];
      v92[3] = v96;
      *v92 = v94;
      v92[1] = v95;
      if (v92 + 4 < v92)
      {
        goto LABEL_342;
      }

      v97 = *(v247 + 4006);
      v98 = (v93 + 4 * v97);
      if (v98 < v93)
      {
        goto LABEL_342;
      }

      v99 = v243 + 28872;
      if ((v98 + 1) > v243 + 28872 || v98 > v98 + 1)
      {
        goto LABEL_342;
      }

      v100 = *v89;
      *v98 = *v89;
      v88 = v232;
      if (v232 == 2400)
      {
        a1 = v243;
        v101 = v247;
        if (!*a9)
        {
          *&v249 = (v100 + v100);
          v102 = log10(((v100 * a2) + 0.1));
          v103 = 0;
          *&v102 = v102;
          *&v102 = *&v102 / 0.30103;
          v234 = vdupq_lane_s64(v249, 0);
          v236 = vdupq_lane_s32(*&v102, 0);
          do
          {
            v104 = vsubq_f32(v236, *&a10[v103]);
            v250 = vcvt_hight_f64_f32(v104);
            __xb = vcvtq_f64_f32(*v104.f32);
            v241 = exp2(__xb.f64[1]);
            v105.f64[0] = exp2(__xb.f64[0]);
            v105.f64[1] = v241;
            v242 = v105;
            __xb.f64[0] = exp2(v250.f64[1]);
            v106.f64[0] = exp2(v250.f64[0]);
            v106.f64[1] = __xb.f64[0];
            *(&v255 + v103 * 4) = vcvt_hight_f32_f64(vcvt_f32_f64(vaddq_f64(v242, v234)), vaddq_f64(v106, v234));
            v103 += 4;
          }

          while (v103 != 20);
          *(v243 + 28320) = 2 * (*(v243 + 28320) & 0x3FFFFFFFLL);
          v107 = (v99 + 80 * v97);
          v23 = v245;
          if (v107 < v99)
          {
            goto LABEL_342;
          }

          a1 = v243;
          if (v243 + 29512 < v107)
          {
            goto LABEL_342;
          }

          if ((v243 + 29512 - v107) <= 0x4F)
          {
            goto LABEL_342;
          }

          v108 = v258;
          v107[2] = v257;
          v107[3] = v108;
          v107[4] = v259;
          v109 = v256;
          *v107 = v255;
          v107[1] = v109;
          v88 = 2400;
          v101 = v247;
          if (v107 + 5 < v107)
          {
            goto LABEL_342;
          }

          goto LABEL_184;
        }
      }

      else
      {
        a1 = v243;
        v101 = v247;
        if (!*a9)
        {
LABEL_184:
          v123 = (*(v101 + 4004) + 1);
          if (v123 >= 8)
          {
            LOWORD(v123) = 8;
          }

          *(v101 + 4004) = v123;
          goto LABEL_187;
        }
      }

      *(a1 + 28320) = (2 * (*(a1 + 28320) & 0x3FFFFFFFLL)) | 1;
      goto LABEL_184;
    }
  }

LABEL_187:
  *(v23 + 612) = *(a1 + 5240);
  if (v88 != 1750)
  {
    *(v23 + 596) = v51;
  }

LABEL_189:
  if (*(a1 + 5244))
  {
    isp2a((a1 + 28216), a3, a4);
  }

  else
  {
    __A[0] = a3;
    __A[1] = a4;
    __A[2] = a3;
    lsp2a_stab(a1 + 28216, __A);
  }

  if (a2 >= 128)
  {
    v124 = a4 - a3;
    v126 = a4 < a3 || v124 < 0x44;
    v127 = (a2 >> 6) - 1;
    v128 = a3 + 68;
    v129 = v124 - 68;
    for (j = a3 + 68; j >= a3; j += 68)
    {
      v131 = a4 < v128 || v126;
      if (v131)
      {
        break;
      }

      if (v129 <= 0x43)
      {
        break;
      }

      *j = *a3;
      v132 = *(a3 + 16);
      v133 = *(a3 + 32);
      v134 = *(a3 + 48);
      *(j + 64) = *(a3 + 64);
      *(j + 32) = v133;
      *(j + 48) = v134;
      *(j + 16) = v132;
      if (j + 68 < j)
      {
        break;
      }

      v128 += 68;
      v129 -= 68;
      if (!--v127)
      {
        return;
      }
    }

    goto LABEL_342;
  }
}

void CNG_reset_dec(uint64_t a1, float *a2, uint64_t a3, float *a4)
{
  *(a1 + 21416) = UVWB_Ave;
  *(a1 + 21432) = unk_19B3A1508;
  *(a1 + 21448) = xmmword_19B3A1518;
  *(a1 + 21464) = unk_19B3A1528;
  if (a1 + 21480 < (a1 + 21416))
  {
    __break(0x5519u);
  }

  else
  {
    v7 = (a1 + 30738);
    v8 = a1 + 21164;
    __A = 0.0;
    vDSP_vfill(&__A, (a1 + 21480), 1, 0x10uLL);
    __A = 0.0;
    vDSP_vfill(&__A, (a1 + 23800), 1, 8uLL);
    *v8 = 0;
    *(v8 + 2632) = 0;
    *(a1 + 138212) = 0;
    *(v8 + 3156) = 0;
    *(v8 + 3160) = 0;
    *(v8 + 3164) = sqrtf(*(v8 + 3168));
    if (*(a1 + 5240) == 256)
    {
      __A = 64.0;
      v9 = a2;
      v10 = 4;
    }

    else
    {
      __A = 80.0;
      v9 = a2;
      v10 = 5;
    }

    vDSP_vfill(&__A, v9, 1, v10);
    __A = 1.0;
    vDSP_vfill(&__A, a4, 1, 5uLL);
    v7[191] = 1;
    *v7 = 0;
  }
}

void lsf_dec(uint64_t a1, int a2, unsigned int a3, int a4, int a5, unint64_t a6, unint64_t a7, _WORD *a8, __int128 a9, __int128 *a10, unint64_t a11, __int128 *a12, unint64_t a13)
{
  v138 = *MEMORY[0x1E69E9840];
  v15 = (a1 + 34718);
  if (a3 == 256)
  {
    v16 = 12800.0;
  }

  else
  {
    v16 = 16000.0;
  }

  v17 = *(a1 + 5208);
  v103 = (a1 + 34718);
  if (v17 == 2400)
  {
    v18 = 29;
    goto LABEL_67;
  }

  if (*(a1 + 34722))
  {
    if (*(a1 + 34722) == 1)
    {
      if (a4 == 1)
      {
        if (a5)
        {
          v18 = 30;
        }

        else
        {
          v18 = 32;
        }
      }

      else
      {
        v18 = 0;
      }

      goto LABEL_67;
    }

    v19 = *v15;
    goto LABEL_21;
  }

  v19 = *v15;
  if (*v15)
  {
LABEL_21:
    if (v19 == 1)
    {
      v18 = 26;
    }

    else
    {
      v18 = 0;
    }

    goto LABEL_67;
  }

  if (v17 > 24399)
  {
    if (v17 <= 30399)
    {
      if (v17 > 29199)
      {
        if (v17 == 29200)
        {
          v20 = 66;
        }

        else
        {
          if (v17 != 30200)
          {
            goto LABEL_61;
          }

          v20 = 72;
        }
      }

      else if (v17 == 24400)
      {
        v20 = 54;
      }

      else
      {
        if (v17 != 29000)
        {
          goto LABEL_61;
        }

        v20 = 60;
      }
    }

    else if (v17 <= 47999)
    {
      if (v17 == 30400)
      {
        v20 = 78;
      }

      else
      {
        if (v17 != 32000)
        {
          goto LABEL_61;
        }

        v20 = 84;
      }
    }

    else
    {
      switch(v17)
      {
        case 48000:
          v20 = 90;
          break;
        case 64000:
          v20 = 96;
          break;
        case 96000:
          v20 = 102;
          break;
        default:
          goto LABEL_61;
      }
    }
  }

  else if (v17 <= 12849)
  {
    if (v17 > 11599)
    {
      if (v17 == 11600)
      {
        v20 = 12;
      }

      else
      {
        if (v17 != 12150)
        {
          goto LABEL_61;
        }

        v20 = 18;
      }
    }

    else if (v17 == 7200)
    {
      v20 = 0;
    }

    else
    {
      if (v17 != 8000)
      {
        goto LABEL_61;
      }

      v20 = 6;
    }
  }

  else if (v17 <= 14799)
  {
    if (v17 == 12850)
    {
      v20 = 24;
    }

    else
    {
      if (v17 != 13200)
      {
        goto LABEL_61;
      }

      v20 = 30;
    }
  }

  else
  {
    switch(v17)
    {
      case 14800:
        v20 = 36;
        break;
      case 16400:
        v20 = 42;
        break;
      case 22600:
        v20 = 48;
        break;
      default:
LABEL_61:
        v20 = 108;
        if (v17 != 128000)
        {
          v20 = -6;
        }

        break;
    }
  }

  v21 = &LSF_bits_tbl[v20 + a4];
  if (v21 < LSF_bits_tbl || v21 + 1 > BC_TCVQ_BIT_ALLOC_40B || v21 > v21 + 1)
  {
    goto LABEL_239;
  }

  v18 = *v21;
LABEL_67:
  v22 = *(&a9 + 1) - a9;
  if (*(&a9 + 1) < a9)
  {
    goto LABEL_239;
  }

  if (v22 < 61)
  {
    goto LABEL_239;
  }

  v23 = *(a1 + 5242);
  v24 = a1 + 11272;
  *&v134 = a1 + 11272;
  *(&v134 + 1) = a1 + 13336;
  v106 = a1 + 21544;
  *&v135 = a1 + 11272;
  *&v130 = a1 + 13336;
  *(&v130 + 1) = a1 + 15400;
  *&v131 = a1 + 13336;
  *&v126 = a1 + 15400;
  *(&v126 + 1) = a1 + 17736;
  *&v127 = a1 + 15400;
  v119[0] = a1 + 17736;
  v119[1] = a1 + 20072;
  v119[2] = a1 + 17736;
  v118[0] = a1 + 20072;
  v118[1] = a1 + 20584;
  v118[2] = a1 + 20072;
  v117[0] = a1 + 20584;
  v117[1] = a1 + 21164;
  v117[2] = a1 + 20584;
  if (a1 + 21582 > (a1 + 21584))
  {
    goto LABEL_239;
  }

  v124 = -1;
  *&v25 = -1;
  *(&v25 + 1) = -1;
  v123[2] = v25;
  v123[3] = v25;
  v123[0] = v25;
  v123[1] = v25;
  v120[0] = v25;
  v120[1] = v25;
  v120[2] = v25;
  v120[3] = v25;
  v121 = -1;
  memset(v116, 0, sizeof(v116));
  lsf_end_dec(a1, a4, v23, v18, a9, (a1 + 21416), (a1 + 21480), v17, v16, &v134, &v130, &v126, v119, v118, v117, (a1 + 21582), v116, a8, 0);
  v27 = a11 - a10;
  if (a11 < a10 || v27 < 61)
  {
    goto LABEL_239;
  }

  v28 = 0;
  v29 = (a1 + 11208);
  *v26.i32 = v16 * 0.5;
  v115 = v26;
  do
  {
    v30 = cosf((*(a9 + v28) * 3.1416) / *v26.i32);
    v26.i32[0] = v115.i32[0];
    *(a10 + v28) = v30;
    v28 += 4;
  }

  while (v28 != 64);
  if (*(a1 + 5208) != 2400)
  {
    v98 = *(a1 + 5208);
    v31 = 0;
    v32 = a1 + 24480;
    v33 = a1 + 24544;
    v34 = a1 + 24416;
    v35 = a1 + 24548;
    v36 = a1 + 24420;
    v37 = a1 + 24484;
    do
    {
      if (v37 + v31 > v33)
      {
        goto LABEL_239;
      }

      if (v32 + v31 > v37 + v31)
      {
        goto LABEL_239;
      }

      if (v36 + v31 > v32)
      {
        goto LABEL_239;
      }

      if (v34 + v31 > (v36 + v31))
      {
        goto LABEL_239;
      }

      v38 = (a9 + v31);
      if (a9 + v31 < a9 || (v38 + 1) > *(&a9 + 1) || v38 > v38 + 1 || v35 + v31 > (a1 + 24608) || v33 + v31 > v35 + v31)
      {
        goto LABEL_239;
      }

      *(v34 + v31 + 128) = ((*(v34 + v31 + 64) + *(v34 + v31)) + *v38) / 3.0;
      v31 += 4;
    }

    while (v31 != 64);
    v99 = *(v106 + 2766);
    if (a4 == 4 && *(v106 + 2766) && a3 - 64 == a2)
    {
      v29->f32[0] = v16 / 34.0;
      v39 = 15;
      v40 = (a1 + 11208);
      do
      {
        if (v40 < v29 || v40 >= v40 + 1 || (v40 + 2) > v24 || v40 + 1 > v40 + 2)
        {
          goto LABEL_239;
        }

        v40[1] = (v16 / 34.0) + *v40;
        ++v40;
        --v39;
      }

      while (v39);
      v41 = 16;
      v107 = vdupq_n_s32(0x40490FDBu);
      v108 = vdupq_lane_s32(v115, 0);
      do
      {
        v113 = vdivq_f32(vmulq_f32(*v29, v107), v108);
        v110 = cosf(v113.f32[1]);
        v42.f32[0] = cosf(v113.f32[0]);
        v42.f32[1] = v110;
        v111 = v42;
        v43 = cosf(v113.f32[2]);
        v44 = v111;
        v44.f32[2] = v43;
        v112 = v44;
        v45 = cosf(v113.f32[3]);
        v46 = v112;
        v46.f32[3] = v45;
        v29[-4] = v46;
        ++v29;
        v41 -= 4;
      }

      while (v41);
    }

    if (*(a1 + 157364))
    {
      if (v27 <= 0x3F)
      {
        goto LABEL_239;
      }

      v47 = *a10;
      v48 = a10[1];
      v49 = a10[3];
      *(a1 + 11176) = a10[2];
      *(a1 + 11192) = v49;
      *(a1 + 11144) = v47;
      *(a1 + 11160) = v48;
      if (v22 <= 0x3F)
      {
        goto LABEL_239;
      }

      v50 = *a9;
      v51 = *(a9 + 16);
      v52 = *(a9 + 48);
      *(a1 + 11240) = *(a9 + 32);
      *(a1 + 11256) = v52;
      *(a1 + 11208) = v50;
      *(a1 + 11224) = v51;
    }

    if (a13 < a12 || (a13 - a12) < 61)
    {
      goto LABEL_239;
    }

    v53 = 0;
    v114 = (a1 + 11144);
    v54 = v103[2];
    v109 = *(v106 + 38);
    v55 = *v103;
    *&v56 = -1;
    *(&v56 + 1) = -1;
    v136 = v56;
    v137 = v56;
    v134 = v56;
    v135 = v56;
    v132 = v56;
    v133 = v56;
    v130 = v56;
    v131 = v56;
    v128 = v56;
    v129 = v56;
    v126 = v56;
    v127 = v56;
    v57 = *v115.i32 / 3.1416;
    do
    {
      *(&v134 + v53) = v57 * acosf(*(a1 + v53 + 11144));
      v53 += 4;
    }

    while (v53 != 64);
    for (i = 0; i != 64; i += 4)
    {
      *(&v130 + i) = v57 * acosf(*(a10 + i));
    }

    v59 = tbl_mid_voi_wb_1b;
    if (v55 == 1)
    {
      v60 = &tbl_mid_unv_wb_4b;
      LOWORD(v61) = 1;
      v62 = a4;
      v63 = v99;
LABEL_173:
      next_indice = get_next_indice(a1, v61);
      v67 = 0;
      v68 = 16 * next_indice;
      do
      {
        v69 = &v59[2 * v68];
        v70 = v69 + 1;
        if (v69 < v59 || v70 > v60 || v69 > v70)
        {
          goto LABEL_239;
        }

        *(&v126 + v67) = (*v69 * *(&v130 + v67)) + ((1.0 - *v69) * *(&v134 + v67));
        v67 += 4;
        ++v68;
      }

      while (v67 != 64);
      v73 = *(v106 + 36);
      if (v73 == 1)
      {
        v74 = &v126 + 1;
        v75 = 14;
        while (v74 - 1 >= &v126 && v74 - 1 <= v74)
        {
          v77 = *(v74 - 1);
          v78 = *v74 < v77;
          if (*v74++ < v77 || v75-- == 0)
          {
            goto LABEL_195;
          }
        }

LABEL_239:
        __break(0x5519u);
      }

      v78 = 0;
LABEL_195:
      v80 = v73 == 1 && v78;
      if (!v63 && !v80)
      {
        v81 = 0;
        v82 = &v126;
        while (1)
        {
          if (v81)
          {
            if (v82 - 1 < &v126 || v82 - 1 > v82)
            {
              goto LABEL_239;
            }

            v83 = *(v82 - 1) + 80.0;
            if (*v82 < v83)
            {
              *v82 = v83;
            }
          }

          ++v81;
          ++v82;
          if (v81 == 16)
          {
            goto LABEL_215;
          }
        }
      }

      for (j = 0; j != 64; j += 4)
      {
        v85 = (*(&v130 + j) * 0.6) + (*(&v134 + j) * 0.4);
        v86 = (&v126 + j);
        *(&v126 + j) = v85;
        if (j)
        {
          v87 = v86 - 1;
          if (v86 - 1 < &v126 || v87 > v86)
          {
            goto LABEL_239;
          }

          v88 = *v87 + 80.0;
          if (v85 < v88)
          {
            *v86 = v88;
          }
        }
      }

LABEL_215:
      if (v63 | v109)
      {
        *(v106 + 36) = v109 == 0;
      }

      reorder_lsf(&v126, 80.0, v16);
      for (k = 0; k != 64; k += 4)
      {
        *(a12 + k) = cosf((*(&v126 + k) * 3.1416) / *v115.i32);
      }

      if (v62 == 4 && *(v106 + 2766))
      {
        if (a3 - 64 == a2)
        {
LABEL_229:
          if (*(a1 + 58172) == 3 && !*(a1 + 5200))
          {
            if (a13 - a12 <= 0x3F)
            {
              goto LABEL_239;
            }

            v93 = 0;
            v94 = *a12;
            v95 = a12[1];
            v96 = a12[3];
            *(a1 + 11176) = a12[2];
            *(a1 + 11192) = v96;
            *v114 = v94;
            *(a1 + 11160) = v95;
            do
            {
              *(a1 + 11208 + v93) = v57 * acosf(*(a12 + v93));
              v93 += 4;
            }

            while (v93 != 64);
          }

          int_lsp4(a3, v114, a12, a10, a6, a7, *(a1 + 27172));
          v134 = a9;
          *&v135 = a9;
          *&v130 = a1 + 11208;
          *(&v130 + 1) = a1 + 11272;
          *&v131 = a1 + 11208;
          lsf_stab(&v134, &v130, 0);
          *v106 = v97;
          return;
        }
      }

      else if (!*(v106 + 2766))
      {
        goto LABEL_229;
      }

      *&v134 = v123;
      *(&v134 + 1) = v125;
      *&v135 = v123;
      lsp2a_stab(v114, &v134);
      v90 = enr_1_Az(v123, v125, 128);
      *&v134 = v120;
      *(&v134 + 1) = v122;
      *&v135 = v120;
      lsp2a_stab(a10, &v134);
      v91 = enr_1_Az(v120, v122, 128);
      if (*(v106 + 2766))
      {
        if ((v91 / v90) < 0.3)
        {
          *(a1 + 27172) = -1;
          v92 = *(a1 + 138212);
          if (!*(a1 + 138212) || v92 == 5 || (v62 - 3) < 2u || v92 == 6)
          {
            *(a1 + 27172) = 1;
          }
        }
      }

      goto LABEL_229;
    }

    v62 = a4;
    v63 = v99;
    if (v54 == 1)
    {
      v59 = &tbl_mid_unv_wb_4b;
      v60 = FCB_bits_tbl;
      LOWORD(v61) = 4;
      goto LABEL_173;
    }

    if (v98 > 24399)
    {
      if (v98 <= 30399)
      {
        if (v98 > 29199)
        {
          if (v98 == 29200)
          {
            v64 = 66;
            goto LABEL_156;
          }

          if (v98 == 30200)
          {
            v64 = 72;
            goto LABEL_156;
          }
        }

        else
        {
          if (v98 == 24400)
          {
            v64 = 54;
            goto LABEL_156;
          }

          if (v98 == 29000)
          {
            v64 = 60;
            goto LABEL_156;
          }
        }
      }

      else if (v98 <= 47999)
      {
        if (v98 == 30400)
        {
          v64 = 78;
          goto LABEL_156;
        }

        if (v98 == 32000)
        {
          v64 = 84;
          goto LABEL_156;
        }
      }

      else
      {
        switch(v98)
        {
          case 48000:
            v64 = 90;
            goto LABEL_156;
          case 64000:
            v64 = 96;
            goto LABEL_156;
          case 96000:
            v64 = 102;
            goto LABEL_156;
        }
      }
    }

    else if (v98 <= 12849)
    {
      if (v98 > 11599)
      {
        if (v98 == 11600)
        {
          v64 = 12;
          goto LABEL_156;
        }

        if (v98 == 12150)
        {
          v64 = 18;
          goto LABEL_156;
        }
      }

      else
      {
        if (v98 == 7200)
        {
          v64 = 0;
          goto LABEL_156;
        }

        if (v98 == 8000)
        {
          v64 = 6;
          goto LABEL_156;
        }
      }
    }

    else if (v98 <= 14799)
    {
      if (v98 == 12850)
      {
        v64 = 24;
        goto LABEL_156;
      }

      if (v98 == 13200)
      {
        v64 = 30;
        goto LABEL_156;
      }
    }

    else
    {
      switch(v98)
      {
        case 14800:
          v64 = 36;
          goto LABEL_156;
        case 16400:
          v64 = 42;
          goto LABEL_156;
        case 22600:
          v64 = 48;
          goto LABEL_156;
      }
    }

    v64 = 108;
    if (v98 != 128000)
    {
      v64 = -6;
    }

LABEL_156:
    v65 = &mid_LSF_bits_tbl[v64 + a4];
    if (v65 < mid_LSF_bits_tbl || v65 + 1 > tbl_mid_voi_wb_4b || v65 > v65 + 1)
    {
      goto LABEL_239;
    }

    v61 = *v65;
    if (a4 == 1)
    {
      v59 = tbl_mid_unv_wb_5b;
      goto LABEL_168;
    }

    if (a4 == 2)
    {
      if (v61 != 4)
      {
        if (v61 == 5)
        {
          v59 = &tbl_mid_voi_wb_5b;
LABEL_168:
          v60 = v59 + 1024;
          goto LABEL_173;
        }

LABEL_169:
        v60 = &tbl_mid_unv_wb_4b;
        goto LABEL_173;
      }

      v59 = tbl_mid_voi_wb_4b;
    }

    else
    {
      if (v61 != 2)
      {
        if (v61 == 5)
        {
          v59 = &tbl_mid_gen_wb_5b;
          goto LABEL_168;
        }

        goto LABEL_169;
      }

      v59 = &tbl_mid_gen_wb_2b;
    }

    v60 = v59 + 512;
    goto LABEL_173;
  }
}

void *FEC_SinOnset(char **a1, int a2, int a3, uint64_t *a4, int a5, float a6)
{
  v59 = *MEMORY[0x1E69E9840];
  *&v12 = -1;
  *(&v12 + 1) = -1;
  __C[18] = v12;
  __C[19] = v12;
  __C[16] = v12;
  __C[17] = v12;
  __C[14] = v12;
  __C[15] = v12;
  __C[12] = v12;
  __C[13] = v12;
  __C[10] = v12;
  __C[11] = v12;
  __C[8] = v12;
  __C[9] = v12;
  __C[6] = v12;
  __C[7] = v12;
  __C[4] = v12;
  __C[5] = v12;
  __C[2] = v12;
  __C[3] = v12;
  __C[0] = v12;
  __C[1] = v12;
  v57[2] = v12;
  v57[3] = v12;
  v57[0] = v12;
  v57[1] = v12;
  memset(__b, 255, sizeof(__b));
  __A = 0.0;
  vDSP_vfill(&__A, __b, 1, (a5 + 5));
  __A = 0.0;
  if (a5 == 320)
  {
    v13 = 80;
  }

  else
  {
    v13 = 64;
  }

  vDSP_vfill(&__A, __C, 1, v13);
  __A = 0.0;
  vDSP_vfill(&__A, v57, 1, 0x10uLL);
  LODWORD(__C[0]) = 1065353216;
  v14 = *a4;
  if (*a4 < a4[2])
  {
    goto LABEL_78;
  }

  if (a2 >= 0)
  {
    LOWORD(v15) = a2;
  }

  else
  {
    LODWORD(v15) = -a2;
  }

  v16 = v15;
  if (v15 >= 289)
  {
    v17 = 289;
  }

  else
  {
    v17 = v15;
  }

  if (a5 == 320)
  {
    LOWORD(v15) = v17;
  }

  v18 = a5 != 256 || v16 <= 231;
  v15 = v15;
  if (v18)
  {
    v19 = v15;
  }

  else
  {
    v19 = 231;
  }

  if (2 * v13 <= a3)
  {
    v20 = a3;
  }

  else
  {
    v20 = 2 * v13;
  }

  syn_filt(v14);
  __A = NAN;
  vDSP_dotpr(__C, 1, __C, 1, &__A, v13);
  v21 = __A;
  v22 = &__b[a5];
  v23 = ((4 * a5 - 4 * v19 - 4 * v20 - 12) >> 2);
  if (a2 < 0)
  {
    if (v23 >= 1)
    {
      v33 = 0;
      LODWORD(v34) = ((4 * a5 - 4 * (v19 + v20) + 262132) >> 2);
      if (v34 >= 5)
      {
        LOWORD(v34) = 5;
      }

      if ((v34 & 0xFFFE) != 0)
      {
        v34 = v34;
      }

      else
      {
        v34 = 1;
      }

      v35 = 4 * v34;
      v36 = __b + 4 * a5 - 4 * v19;
      while (1)
      {
        v37 = &h_low[v33 / 4 + 1];
        v38 = &h_low[v33 / 4] < h_low || v37 > &h_high3_16;
        if (v38 || &h_low[v33 / 4] > v37)
        {
          break;
        }

        v40 = &v36[v33 - 12];
        if (v40 < __b)
        {
          break;
        }

        v41 = &v36[v33 - 8];
        if (v41 > v57 || v40 > v41)
        {
          break;
        }

        *v40 = *v40 - *&h_low[v33 / 4];
        v33 += 4;
        if (v35 == v33)
        {
          goto LABEL_60;
        }
      }

LABEL_78:
      __break(0x5519u);
    }
  }

  else if (v23 >= 1)
  {
    v24 = 0;
    LODWORD(v25) = ((4 * a5 - 4 * (v19 + v20) - 12) >> 2);
    if (v25 >= 5)
    {
      LOWORD(v25) = 5;
    }

    if ((v25 & 0xFFFE) != 0)
    {
      v25 = v25;
    }

    else
    {
      v25 = 1;
    }

    v26 = 4 * v25;
    v27 = __b + 4 * a5 - 4 * v19;
    do
    {
      v28 = &h_low[v24 / 4 + 1];
      v29 = &h_low[v24 / 4] < h_low || v28 > &h_high3_16;
      if (v29 || &h_low[v24 / 4] > v28)
      {
        goto LABEL_78;
      }

      v31 = &v27[v24 - 12];
      if (v31 < __b)
      {
        goto LABEL_78;
      }

      v32 = &v27[v24 - 8];
      if (v32 > v57 || v31 > v32)
      {
        goto LABEL_78;
      }

      *v31 = *&h_low[v24 / 4] + *v31;
      v24 += 4;
    }

    while (v26 != v24);
  }

LABEL_60:
  if (a5 >= 1)
  {
    v42 = sqrt(a6 * 1.5 / (v21 + 0.01));
    v43 = v42 * 0.96;
    v44 = a5;
    v45 = __b;
    do
    {
      v46 = v45 + 1;
      v47 = v45 < __b || v46 > v57;
      if (v47 || v45 > v46)
      {
        goto LABEL_78;
      }

      *v45 = v43 * *v45;
      ++v45;
    }

    while (--v44);
  }

  v49 = v22 - 320;
  if (v22 - 320 < __b)
  {
    goto LABEL_78;
  }

  v50 = *a1;
  if (*a1 < a1[2])
  {
    goto LABEL_78;
  }

  v51 = a1[1];
  v52 = v51 >= v50;
  v53 = v51 - v50;
  if (!v52)
  {
    goto LABEL_78;
  }

  if (v49 > v57)
  {
    goto LABEL_78;
  }

  if ((v57 - v49) < 0x500)
  {
    goto LABEL_78;
  }

  if (v53 <= 0x4FF)
  {
    goto LABEL_78;
  }

  result = memmove(*a1, v49, 0x500uLL);
  if (v50 + 1280 < v50)
  {
    goto LABEL_78;
  }

  return result;
}

uint64_t FEC_enhACB(int a1, int a2, const void **a3, int a4, int a5, float a6)
{
  v130[0] = *MEMORY[0x1E69E9840];
  memset(__b, 255, sizeof(__b));
  __A[0] = 0.0;
  vDSP_vfill(__A, __b, 1, 0);
  __A[0] = 0.0;
  vDSP_vfill(__A, &__b[320], 1, 0x40uLL);
  v11 = *a3;
  if (*a3 < a3[2])
  {
    goto LABEL_225;
  }

  v12 = a3[1];
  v77 = v12 >= v11;
  v13 = v12 - v11;
  if (!v77)
  {
    goto LABEL_225;
  }

  if (v13 <= 0x4FF)
  {
    goto LABEL_225;
  }

  memmove(__b, v11, 0x500uLL);
  v14 = a6;
  v15 = &__b[-a6 + 320];
  if (v15 < __b || v126 < v15 || (v126 - v15) <= 0xFF)
  {
    goto LABEL_225;
  }

  memmove(&__b[320], v15, 0x100uLL);
  v124 = 0;
  if (a5 < 0)
  {
    v124 = 1;
    a5 = -a5;
  }

  v16 = a1 == 256 ? 231 : 289;
  v17 = v16 >= a5 ? a5 : v16;
  v18 = &__b[a1 - v14];
  if (v18 < __b)
  {
    goto LABEL_225;
  }

  v120 = a3;
  v19 = v14 - findpulse(a1, &__b[a1 - v14], v126, a6, 1, &v124);
  v20 = v17;
  v21 = v17;
  v22 = v19 - v17;
  v23 = a1;
  if (v22 >= 0)
  {
    v24 = v22;
  }

  else
  {
    v24 = -v22;
  }

  v25 = findpulse(v23, v18, v126, (v14 + 64), 1, &v124);
  v26 = 0;
  v27 = v20 - v14 + v25;
  if (v27 < 0)
  {
    v27 = -v27;
  }

  if (v24 <= v27)
  {
    v28 = v24;
  }

  else
  {
    v28 = v27;
  }

  v29 = a4 - v14;
  if (a4 - v14 < 0)
  {
    v29 = v14 - a4;
  }

  v30 = v28 > 63 || v28 << 16 == 0;
  if (!v30 && (((v23 / v14) + 0.5) * v29) >= v28)
  {
    if (v24 <= v27)
    {
      v31 = v19;
    }

    else
    {
      v31 = v14 - v25;
    }

    v127 = 0;
    memset(v126, 0, sizeof(v126));
    memset_pattern16(v128, &unk_19B0B39B0, 0x24uLL);
    v32 = v23 - v31;
    v33 = (v23 - v31) / v14;
    if ((v33 & 0xFFFE) != 0)
    {
      v34 = (v23 - v31) / v14;
    }

    else
    {
      v34 = 1;
    }

    if (v33 < 2 && v14 < 129)
    {
      v36 = 2;
    }

    else
    {
      v36 = v34;
    }

    v37 = v32;
    v38 = -3 * v14 / 4;
    if (v38 + v32 < 0)
    {
      if (v32 >= 0)
      {
        v39 = v32;
      }

      else
      {
        v39 = -v32;
      }

      if (v39 < (v14 + ((v14 >> 28) & 7)) >> 3)
      {
        v26 = 0;
        v40 = v120;
LABEL_217:
        v115 = *v40;
        if (*v40 >= v40[2])
        {
          v116 = v40[1];
          v77 = v116 >= v115;
          v117 = v116 - v115;
          if (v77 && v117 > 0x4FF)
          {
            memmove(*v40, __b, 0x500uLL);
            if (v115 + 1280 >= v115)
            {
              goto LABEL_222;
            }
          }
        }

LABEL_225:
        __break(0x5519u);
      }

      v38 = -v32;
    }

    v119 = v23;
    memset(__A, 255, sizeof(__A));
    v41 = &__b[(v23 - v31) + v38];
    if (v41 < __b)
    {
      goto LABEL_225;
    }

    v42 = v41 + 1;
    if (v41 + 1 > v126)
    {
      goto LABEL_225;
    }

    if (v41 > v42)
    {
      goto LABEL_225;
    }

    v43 = v41 + 2;
    if (v41 + 2 > v126)
    {
      goto LABEL_225;
    }

    if (v42 > v43)
    {
      goto LABEL_225;
    }

    v44 = v41 + 3;
    if (v41 + 3 > v126)
    {
      goto LABEL_225;
    }

    if (v43 > v44)
    {
      goto LABEL_225;
    }

    v45 = (v41 + 4);
    if (v41 + 4 > v126 || v44 > v45 || v41 + 5 > v126 || v45 > (v41 + 5))
    {
      goto LABEL_225;
    }

    v46 = v38;
    v47 = ((((*v41 * *v41) + (v41[1] * v41[1])) + (v41[2] * v41[2])) + (v41[3] * v41[3])) + (v41[4] * v41[4]);
    v48 = 4295000000.0;
    if (v47 < 4295000000.0)
    {
      v128[0] = v37 + v38 + 2;
      v48 = v47;
    }

    if (v38 <= -6)
    {
      v49 = &__b[v38 + 5 + v37];
      while (v49 - 5 >= __b && v49 - 4 <= v126 && v49 - 5 <= v49 - 4 && v49 >= __b && v49 + 1 <= v126 && v49 <= v49 + 1)
      {
        v47 = (v47 - (*(v49 - 5) * *(v49 - 5))) + (*v49 * *v49);
        if (v47 < v48)
        {
          v128[0] = v37 + 2 + v46;
          v48 = v47;
        }

        ++v46;
        ++v49;
        if (v46 == -5)
        {
          goto LABEL_75;
        }
      }

      goto LABEL_225;
    }

LABEL_75:
    if (v36 >= 2)
    {
      v50 = 0;
      v51 = 1;
      v34 = v36;
      do
      {
        v52 = &v128[v50 + 2];
        v53 = &v128[v50] < v128 || v52 > __A;
        if (v53 || &v128[v50 + 1] > v52)
        {
          goto LABEL_225;
        }

        v55 = v128[v50] - v14;
        v128[v51] = v55;
        if (v55 < 0)
        {
          v128[v51] = -10000;
          --v34;
        }

        ++v51;
        ++v50;
      }

      while (v51 < v34);
    }

    v40 = v120;
    if (v48 >= 4295000000.0)
    {
      v26 = 0;
      goto LABEL_217;
    }

    v56 = (v31 - v21);
    if (v56 >= 0)
    {
      LOWORD(v57) = v31 - v21;
    }

    else
    {
      v57 = -v56;
    }

    if (v34 == 1 || v57 == 1)
    {
      LOWORD(v126[0]) = v57;
      v68 = v130;
      v70 = v128;
      v69 = __A;
      v34 = 1;
      if (v56 > 0)
      {
        goto LABEL_112;
      }
    }

    else
    {
      v58 = v57 / (v34 * v34);
      v59 = (v58 + 0.5);
      LOWORD(v126[0]) = v59;
      if (v34 > 1)
      {
        LOWORD(v60) = 2;
        do
        {
          v61 = v126 + v60;
          v62 = v61 - 1;
          v63 = v61 - 1 < v126 || v61 > v128;
          if (v63 || v62 > v61)
          {
            goto LABEL_225;
          }

          v65 = (-(v59 - (v58 * (v60 * v60))) + 0.5);
          *(v61 - 1) = v65;
          v66 = v61 - 2;
          if (v66 < v126 || v66 > v62)
          {
            goto LABEL_225;
          }

          v67 = *v66;
          if (v67 > v65)
          {
            *v66 = v65;
            *v62 = v67;
          }

          LOWORD(v59) = v59 + v65;
          v60 = (v60 + 1);
        }

        while (v60 <= v34);
      }

      v68 = v130;
      v69 = __A;
      v70 = &v128[v34 - 1];
      if (v56 >= 1)
      {
        if (v34 < 1)
        {
LABEL_203:
          v72 = __A;
          v73 = __b;
          v74 = v23;
LABEL_204:
          if (v73 < __b)
          {
            goto LABEL_225;
          }

          if (v72 < __A)
          {
            goto LABEL_225;
          }

          v40 = v120;
          if (v74 >= 1)
          {
            if (v68 < v72)
            {
              goto LABEL_225;
            }

            if (v73 > v126)
            {
              goto LABEL_225;
            }

            v113 = 4 * v74;
            if (v113 > v126 - v73)
            {
              goto LABEL_225;
            }

            if (v113 > v68 - v72)
            {
              goto LABEL_225;
            }

            memmove(v72, v73, 4 * v74);
            if (&v72[v113 / 4] < v72)
            {
              goto LABEL_225;
            }
          }

          if (v119 >= 1)
          {
            v114 = 4 * v119;
            if (v114 > v68 - __A || v119 >= 0x181)
            {
              goto LABEL_225;
            }

            memcpy(__b, __A, v114);
          }

          v26 = 1;
          goto LABEL_217;
        }

LABEL_112:
        v71 = 0;
        v122 = v34;
        v72 = __A;
        v73 = __b;
        v74 = v23;
        while (1)
        {
          v75 = (v70 + 2);
          v76 = (v70 + 2) > v69 || v70 > v75;
          v77 = !v76 && v70 >= v128;
          v78 = v77;
          v79 = v126 + v71;
          if (v71)
          {
            v30 = !v78;
            v80 = v70 + 1;
            if (v30 || v80 > v69 || v75 > v80)
            {
              goto LABEL_225;
            }

            v83 = v79 - 1;
            if (v79 - 1 < v126 || v83 > v79)
            {
              goto LABEL_225;
            }

            v84 = *v70 - *(v70 + 1) - *v83;
          }

          else
          {
            if (!v78)
            {
              goto LABEL_225;
            }

            v84 = *v70;
          }

          if (v73 < __b)
          {
            goto LABEL_225;
          }

          if (v72 < __A)
          {
            goto LABEL_225;
          }

          if (v84 >= 1)
          {
            if (v68 < v72)
            {
              goto LABEL_225;
            }

            if (v73 > v126)
            {
              goto LABEL_225;
            }

            v85 = 4 * v84;
            if (v85 > v126 - v73)
            {
              goto LABEL_225;
            }

            if (v85 > v68 - v72)
            {
              goto LABEL_225;
            }

            v86 = v70;
            v87 = v69;
            v88 = v68;
            v89 = v73;
            v90 = v84;
            memmove(v72, v73, 4 * v84);
            v73 = v89;
            v84 = v90;
            v79 = v126 + v71;
            v69 = v87;
            v68 = v88;
            v70 = v86;
            if (&v72[v85 / 4] < v72)
            {
              goto LABEL_225;
            }
          }

          v73 += v84;
          if (v73 < __b || v73 + 1 > v126 || v73 > v73 + 1 || v79 < v126 || v79 + 1 > v128 || v79 > v79 + 1)
          {
            goto LABEL_225;
          }

          v91 = &v72[v84];
          v92 = *v79;
          if (v92 >= 1)
          {
            break;
          }

          v72 += v84;
LABEL_161:
          v74 -= v84 + v92;
          v70 = (v70 - 2);
          if (++v71 == v122)
          {
            goto LABEL_204;
          }
        }

        LOWORD(v93) = 0;
        v94 = *v73 / -20.0;
        while (1)
        {
          v72 = v91 + 1;
          v95 = v91 < __A || v72 > v68;
          if (v95 || v91 > v72)
          {
            goto LABEL_225;
          }

          *v91 = v94;
          v94 = -v94;
          v93 = (v93 + 1);
          ++v91;
          if (v93 >= v92)
          {
            goto LABEL_161;
          }
        }
      }

      if (v34 < 1)
      {
        goto LABEL_203;
      }
    }

    v97 = 0;
    v123 = v34;
    v98 = v126;
    v72 = __A;
    v73 = __b;
    v74 = v23;
    while (1)
    {
      v99 = (v70 + 2);
      v102 = (v70 + 2) <= v69 && v70 <= v99 && v70 >= v128;
      if (v97)
      {
        v30 = !v102;
        v103 = v70 + 1;
        if (v30 || v103 > v69 || v99 > v103)
        {
          goto LABEL_225;
        }

        v106 = v98 - 1;
        if (v98 - 1 < v126 || v106 > v98)
        {
          goto LABEL_225;
        }

        v107 = *v70 - *(v70 + 1) - *v106;
      }

      else
      {
        if (!v102)
        {
          goto LABEL_225;
        }

        v107 = *v70;
      }

      if (v73 < __b)
      {
        goto LABEL_225;
      }

      if (v72 < __A)
      {
        goto LABEL_225;
      }

      if (v107 >= 1)
      {
        if (v130 < v72)
        {
          goto LABEL_225;
        }

        if (v73 > v126)
        {
          goto LABEL_225;
        }

        v108 = 4 * v107;
        if (v108 > v126 - v73)
        {
          goto LABEL_225;
        }

        if (v108 > v130 - v72)
        {
          goto LABEL_225;
        }

        v109 = v69;
        v110 = v73;
        memcpy(v72, v73, 4 * v107);
        v73 = v110;
        v69 = v109;
        if (&v72[v108 / 4] < v72)
        {
          goto LABEL_225;
        }
      }

      if (v98 < v126 || v98 + 1 > v128 || v98 > v98 + 1)
      {
        goto LABEL_225;
      }

      v72 += v107;
      v74 -= v107;
      v111 = *v98++;
      v112 = &v73[v107 + 1 + (v111 - 1)];
      if (v111 <= 0)
      {
        v73 += v107;
      }

      else
      {
        v73 = v112;
      }

      v70 = (v70 - 2);
      if (v123 == ++v97)
      {
        goto LABEL_204;
      }
    }
  }

LABEL_222:
  if (a2 == 320)
  {
    return v26;
  }

  else
  {
    return 0;
  }
}

void decod_ppp(uint64_t a1, unint64_t a2, unint64_t a3, _OWORD *a4, unint64_t *a5, char *a6, unint64_t a7, float *a8, float *a9, unint64_t a10, float *a11, __int16 a12)
{
  v139[1] = *MEMORY[0x1E69E9840];
  v17 = a1 + 34716;
  v130 = -1;
  *&v18 = -1;
  *(&v18 + 1) = -1;
  v129[3] = v18;
  v129[2] = v18;
  v19 = a1 + 21164;
  v129[1] = v18;
  v129[0] = v18;
  memset(__b, 255, sizeof(__b));
  v20 = 0;
  *&v21 = -1;
  *(&v21 + 1) = -1;
  v127 = v21;
  v126 = v21;
  v125 = v21;
  v124 = v21;
  v123 = -1;
  v122[3] = v21;
  v122[2] = v21;
  *(&__C + 1) = -1;
  *&__C = -1;
  v22 = (a2 + 208);
  v122[1] = v21;
  v122[0] = v21;
  do
  {
    if (v22 < a2 || (v22 + 1) > a3 || v22 > v22 + 1)
    {
      goto LABEL_134;
    }

    v23 = *v22++;
    *(&v124 + v20++) = v23;
  }

  while (v20 != 16);
  __A[0] = v129;
  __A[1] = &v131;
  __A[2] = v129;
  lsp2a_stab(a1 + 11144, __A);
  v24 = 0;
  *(__A + 4) = v124;
  *(&__A[2] + 4) = v125;
  *(&__A[4] + 4) = v126;
  *(&__A[6] + 4) = v127;
  LODWORD(__A[0]) = 1065353216;
  HIDWORD(__A[8]) = 0;
  do
  {
    *(v122 + v24) = *(__A + v24 + 4) + (*(__A + v24) * -0.68);
    v24 += 4;
  }

  while (v24 != 68);
  v25 = *a5;
  v113 = *(a5 + 1);
  v116 = DTFS_new();
  v26 = DTFS_new();
  v27 = DTFS_new();
  v110 = a6;
  v111 = a7;
  if (!*(a1 + 5242))
  {
    v28 = 3300.0;
    *&v29 = 4000.0;
    goto LABEL_12;
  }

  if (*(a1 + 5242) == 1)
  {
    v28 = 4000.0;
    *&v29 = 6400.0;
LABEL_12:
    v30 = *&v29;
    goto LABEL_14;
  }

  v30 = 0.0;
  v28 = 0.0;
LABEL_14:
  v132 = -1;
  v133 = -1;
  if (*(v17 + 8))
  {
    *(v17 + 8) = 0;
    *(v17 + 828) = 0;
    *(v17 + 836) = 0;
    *(v17 + 840) = 0x457A0000454E4000;
    v31 = (v17 + 12);
    v32 = 102;
    while ((v31 + 1) <= a1 + 35136 && v31 <= v31 + 1)
    {
      *v31 = 0;
      if ((v31 + 103) > v17 + 828 || v31 + 102 > v31 + 103)
      {
        break;
      }

      v31[102] = 0;
      ++v31;
      if (!--v32)
      {
        goto LABEL_23;
      }
    }

    goto LABEL_134;
  }

LABEL_23:
  v34 = *(v19 + 3212);
  v35 = floor(v34 + 0.5);
  if (ceil(v34 + 0.5) == v35)
  {
    v36 = vcvtpd_s64_f64(v34);
    v35 = ceil(v34);
    v37 = floor(v34);
    if (v36)
    {
      v38 = v37;
    }

    else
    {
      v38 = v35;
    }

    if (v38 < 201.0)
    {
      if (v36)
      {
        v35 = v37;
      }

      goto LABEL_32;
    }
  }

  else if (v35 < 201.0)
  {
LABEL_32:
    v39 = v35;
    goto LABEL_34;
  }

  v39 = 201;
LABEL_34:
  v115 = v19;
  v40 = v39 + get_next_indice(a1, 5);
  if (v40 >= 212)
  {
    v41 = 212;
  }

  else
  {
    v41 = v40;
  }

  v42 = v41 - 11;
  v119 = v39;
  v43 = (v41 - 11);
  v120 = v43;
  if (v39 == v43)
  {
    if (v43 < 19.0)
    {
      v43 = 19.0;
    }

    if (v43 > 201.0)
    {
      v43 = 201.0;
    }

    *__A = v43;
    vDSP_vfill(__A, &__C, 1, 4uLL);
  }

  else
  {
    for (i = 0; i != 4; ++i)
    {
      Interpol_delay(&v132, &v119, &v120, i);
      v45 = *&v132;
      v46 = *&v132 < 19.0 || *&v132 > 201.0;
      if (*&v132 > 201.0 && *&v132 >= 19.0)
      {
        v47 = 201.0;
      }

      else
      {
        v47 = 19.0;
      }

      if (v46)
      {
        v45 = v47;
      }

      *(&v122[-1] + i) = v45;
    }
  }

  v48 = v115;
  if (*(v115 + 388) == 1)
  {
    v49 = v42;
  }

  else
  {
    v49 = v39;
  }

  v50 = v42 * 1.85;
  v51 = 0.5;
  if (v50 >= 0.0)
  {
    v52 = 0.5;
  }

  else
  {
    v52 = -0.5;
  }

  if (v49 <= (v52 + v50))
  {
    v53 = v49;
  }

  else
  {
    v53 = (v49 / 2);
  }

  if (v53 <= 115)
  {
    v54 = v42 * 0.54;
    if (v54 < 0.0)
    {
      v51 = -0.5;
    }

    v53 = (v53 << (v53 <= (v51 + v54)));
  }

  v55 = v27 + 840;
  if (*v17 == 1)
  {
    *(v27 + 102) = *(v17 + 828);
    *(v27 + 206) = *(v17 + 836);
    *(v27 + 828) = *(v17 + 840);
    memmove(v27, (a1 + 34728), 0x198uLL);
    memmove(v27 + 408, (a1 + 35136), 0x198uLL);
  }

  else
  {
    __A[0] = v25 - 4 * v53;
    *&__A[1] = v113;
    if (v27 > v55)
    {
      goto LABEL_134;
    }

    v56 = *(a1 + 5242) == 1 ? 16000 : 8000;
    DTFS_to_fs(__A, v53, v27, v56, 0);
    *(v17 + 848) = 0;
    if (v116 > v116 + 210)
    {
      goto LABEL_134;
    }

    memcpy(__A, v27, sizeof(__A));
    DTFS_copy(v116, __A);
    DTFS_car2pol(v116);
    v57 = v116[204];
    DTFS_setEngyHarm(v116, 92.0, 1104.5, 0.0, 1104.5, 1.0);
    v59 = log10((v58 * v57));
    *(v17 + 852) = v59;
    v60 = v116[204];
    DTFS_setEngyHarm(v116, 1104.5, v28, 1104.5, v30, 1.0);
    v62 = log10((v61 * v60));
    *(v17 + 856) = v62;
    memcpy(__A, v116, sizeof(__A));
    DTFS_to_erb(__A, (a1 + 35576), a1 + 35672);
    v55 = v27 + 840;
  }

  *(v26 + 204) = v42;
  if (v40 <= 11)
  {
    v42 = 1;
    *(v26 + 204) = 1;
    *(a1 + 5168) = 1;
  }

  v63 = v26 + 840;
  v64 = 12800.0 / v42;
  v65 = vcvtms_s32_f32(v30 / v64);
  if ((v30 - (v64 * floorf(v30 / v64))) >= v64)
  {
    ++v65;
  }

  v66 = vcvtmd_s64_f64(4000.0 / (12800 / v42));
  *(v26 + 205) = v65;
  if (4000.0 - (v64 * v66) >= v64)
  {
    ++v66;
  }

  *(v26 + 206) = v66;
  v67 = v27 + 828;
  *(v26 + 828) = *(v27 + 828);
  if (!a12)
  {
    v114 = v55;
    if (v26 > v63)
    {
      goto LABEL_134;
    }

    v68 = (v17 + 856);
    v107 = (v17 + 852);
    if (v17 + 852 > (v17 + 856))
    {
      goto LABEL_134;
    }

    v69 = a1 + 35576;
    if (v68 > a1 + 35576 || v27 > v114)
    {
      goto LABEL_134;
    }

    v112 = *(v27 + 204);
    memcpy(__dst, v27, sizeof(__dst));
    v70 = DTFS_new();
    v71 = *(v26 + 208);
    v72 = v71 == 4000.0 ? 22 : 24;
    if (v70 > v70 + 840)
    {
      goto LABEL_134;
    }

    v73 = v70;
    v74 = *(v26 + 204);
    memcpy(__A, __dst, sizeof(__A));
    DTFS_copy(v73, __A);
    next_indice = get_next_indice(a1, 6);
    v134[0] = get_next_indice(a1, 6);
    v134[1] = get_next_indice(a1, 6);
    if (v69 > a1 + 35672)
    {
      goto LABEL_134;
    }

    *&v75 = -1;
    *(&v75 + 1) = -1;
    v138[4] = v75;
    v138[5] = v75;
    v138[2] = v75;
    v138[3] = v75;
    v138[0] = v75;
    v138[1] = v75;
    v137[5] = v75;
    v137[4] = v75;
    v137[3] = v75;
    v137[2] = v75;
    v137[1] = v75;
    v137[0] = v75;
    *&v75 = 0xAAAAAAAAAAAAAAAALL;
    *(&v75 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v136[5] = v75;
    v136[4] = v75;
    v136[3] = v75;
    v136[2] = v75;
    v76 = &PowerCB_NB;
    v136[1] = v75;
    v136[0] = v75;
    if (v71 != 4000.0)
    {
      v76 = &PowerCB_WB;
    }

    v105 = v76;
    erb_add(v137, *(v26 + 204), (a1 + 35576), v112, v134, v72);
    *v137 = *(v137 + 1) * 0.3;
    v77 = v137 + v72;
    if (v77 - 3 < v137)
    {
      goto LABEL_134;
    }

    v78 = (v77 - 2);
    if (v77 - 2 > v138)
    {
      goto LABEL_134;
    }

    if ((v77 - 3) > v78)
    {
      goto LABEL_134;
    }

    v79 = (v77 - 1);
    if (v77 - 1 > v138)
    {
      goto LABEL_134;
    }

    if (v78 > v79)
    {
      goto LABEL_134;
    }

    *(v77 - 2) = *(v77 - 3) * 0.3;
    if (v79 > v77)
    {
      goto LABEL_134;
    }

    *v79 = 0;
    erb_slot(*(v26 + 204), v136, v137, v138, v139, v72);
    DTFS_erb_inv(v137, v136, v138, v26, v72);
    DTFS_setEngyHarm(v26, 92.0, 1104.5, 0.0, 1104.5, 1.0);
    DTFS_setEngyHarm(v26, 1104.5, *(v26 + 207), 1104.5, *(v26 + 208), 1.0);
    memcpy(__A, v26, sizeof(__A));
    DTFS_to_erb(__A, (a1 + 35576), v69 + 4 * v72);
    v80 = &v105[8 * next_indice];
    v81 = *v80 + *v107;
    *v107 = v81;
    *v68 = v80[1] + *v68;
    v82 = __exp10(v81);
    v83 = v82 / *(v26 + 204);
    if (v83 < 0.0)
    {
      v84 = 0.0;
    }

    else
    {
      v84 = v83;
    }

    DTFS_setEngyHarm(v26, 92.0, 1104.5, 0.0, 1104.5, v84);
    v85 = __exp10(*v68);
    v86 = v85 / *(v26 + 204);
    if (v86 < 0.0)
    {
      v87 = 0.0;
    }

    else
    {
      v87 = v86;
    }

    DTFS_setEngyHarm(v26, 1104.5, *(v26 + 207), 1104.5, *(v26 + 208), v87);
    v88 = v74;
    DTFS_adjustLag(v73, v74);
    v89 = (((256.0 - v88) * (v112 + v88)) / ((v88 + v88) * v112));
    v90 = (v89 - floor(v89)) * v74;
    v91 = floor(v90 + 0.5);
    if (ceil(v90 + 0.5) == v91)
    {
      v91 = ceil(v90);
      v92 = vcvtpd_s64_f64(v90);
      v93 = floor(v90);
      if (v92)
      {
        v91 = v93;
      }
    }

    v94 = v88 - v91;
    DTFS_phaseShift(v73, (v94 * 6.2832) / *(v26 + 204));
    DTFS_car2pol(v73);
    v95 = (*(v26 + 204) >> 1);
    v48 = v115;
    if (v95 <= 0x7FFE)
    {
      if (v95 >= 0x66)
      {
        goto LABEL_134;
      }

      memmove(v26 + 408, v73 + 408, 4 * v95 + 4);
    }

    DTFS_pol2car(v26);
    v96 = get_next_indice(a1, 3);
    DTFS_phaseShift(v26, ((v96 + -3.0) * 6.2832) / *(v26 + 204));
    free(v73);
    v55 = v114;
    v63 = v26 + 840;
    v67 = v27 + 828;
  }

  if (v27 > v55)
  {
    goto LABEL_134;
  }

  memcpy(__A, v27, sizeof(__A));
  if (v26 > v63)
  {
    goto LABEL_134;
  }

  if (a1 + 35564 > (a1 + 35568))
  {
    goto LABEL_134;
  }

  WIsyn(__A, v26, v122, (a1 + 35564), __b, v129, 256, 0);
  memcpy(__A, v26, sizeof(__A));
  DTFS_copy(v27, __A);
  *(v17 + 828) = *(v27 + 102);
  *(v17 + 836) = *(v27 + 206);
  *(v17 + 840) = *v67;
  memmove((a1 + 34728), v27, 0x198uLL);
  memmove((a1 + 35136), v27 + 408, 0x198uLL);
  free(v116);
  free(v26);
  free(v27);
  *v48 = *(v17 + 1336);
  v97 = *a5;
  if (*a5 < a5[2])
  {
    goto LABEL_134;
  }

  v98 = a5[1];
  v99 = v98 >= v97;
  v100 = v98 - v97;
  if (!v99)
  {
    goto LABEL_134;
  }

  if (v100 <= 0x3FF)
  {
    goto LABEL_134;
  }

  memmove(*a5, __b, 0x400uLL);
  if (v97 + 1024 < v97)
  {
    goto LABEL_134;
  }

  v101 = *a5;
  if (*a5 < a5[2])
  {
    goto LABEL_134;
  }

  if (v111 < v110)
  {
    goto LABEL_134;
  }

  v102 = a5[1];
  if (v101 > v102)
  {
    goto LABEL_134;
  }

  if (v102 - v101 < 0x400)
  {
    goto LABEL_134;
  }

  if (v111 - v110 <= 0x3FF)
  {
    goto LABEL_134;
  }

  memmove(v110, v101, 0x400uLL);
  if (v110 + 1024 < v110)
  {
    goto LABEL_134;
  }

  v48[659] = 0x40000000;
  v103 = v48 + 661;
  v48[661] = *(v17 + 1332);
  v104 = 4;
  do
  {
    if (v103 < v48 + 659 || v103 >= v103 + 1 || (v103 + 2) > a1 + 23832 || v103 + 1 > v103 + 2)
    {
      goto LABEL_134;
    }

    v103[1] = *v103;
    ++v103;
    --v104;
  }

  while (v104);
  *a4 = __C;
  if (a4 + 1 < a4)
  {
LABEL_134:
    __break(0x5519u);
  }

  interp_code_5over2(v110, v111, a9, a10, 256);
  LODWORD(__A[0]) = 0;
  vDSP_vfill(__A, a8, 1, 5uLL);
  LODWORD(__A[0]) = 0;
  vDSP_vfill(__A, a11, 1, 5uLL);
}

void decod_tran(uint64_t a1, int a2, int a3, float *a4, unint64_t a5, float *a6, unint64_t a7, __int128 *a8, float a9, unint64_t a10, uint64_t *a11, _WORD *a12, unsigned __int16 a13, unint64_t a14)
{
  v322[1] = *MEMORY[0x1E69E9840];
  v317 = -21846;
  v316 = -21846;
  v315 = -21846;
  v314 = -21846;
  v313 = NAN;
  v312 = NAN;
  v311 = 0.0;
  v310 = NAN;
  v309 = NAN;
  *&v22 = -1;
  *(&v22 + 1) = -1;
  __B[14] = v22;
  __B[15] = v22;
  __B[12] = v22;
  __B[13] = v22;
  __B[10] = v22;
  __B[11] = v22;
  __B[8] = v22;
  __B[9] = v22;
  __B[6] = v22;
  __B[7] = v22;
  __B[4] = v22;
  __B[5] = v22;
  __B[2] = v22;
  __B[3] = v22;
  __B[0] = v22;
  __B[1] = v22;
  __C[14] = v22;
  __C[15] = v22;
  __C[12] = v22;
  __C[13] = v22;
  __C[10] = v22;
  __C[11] = v22;
  __C[8] = v22;
  __C[9] = v22;
  __C[6] = v22;
  __C[7] = v22;
  __C[4] = v22;
  __C[5] = v22;
  __C[2] = v22;
  __C[3] = v22;
  __C[0] = v22;
  __C[1] = v22;
  v308 = 0.0;
  LODWORD(__A) = 0;
  vDSP_vfill(&__A, __C, 1, 0x40uLL);
  v307 = 0.0;
  v305 = a2;
  if (a2 >= 1)
  {
    v295 = 0;
    v301 = 0;
    LOWORD(v23) = 0;
    v302 = (a1 + 21164);
    v300 = (a6 + 4);
    v288 = (a1 + 32472);
    v276 = a1 + 32476;
    v24 = a11;
    v285 = (a1 + 24328);
    v286 = (a1 + 24324);
    v26 = a1 + 24324 > (a1 + 24328) || a1 + 24328 > (a1 + 24332);
    v287 = v26;
    v27 = a10 + 1024;
    v275 = (a1 + 23800);
    v274 = a1 + 23832;
    v283 = a1 + 36060;
    v284 = a7;
    v282 = a1 + 36080;
    v281 = a7 + 16;
    v267 = 4 * (a3 == 256);
    v268 = (a1 + 5168);
    if (a3 == 256)
    {
      v28 = 7;
    }

    else
    {
      v28 = 0;
    }

    v270 = v28;
    v29 = 4 * (a3 == 256);
    if (!((a3 >> 6) & 0xFFFC | (a3 << 10)))
    {
      v29 = ((a3 >> 6) | (a3 << 10));
    }

    v272 = v29;
    LOWORD(v293) = -21846;
    LOWORD(v30) = -21846;
    v271 = 43690;
    v299 = a6;
    v31 = a6;
    v289 = a4;
    v304 = a4;
    v306 = a1;
    v32 = a3;
    v303 = a3;
    while (1)
    {
      v33 = v23;
      v34 = *a8;
      v35 = *(a8 + 2);
      v36 = *v24;
      v37 = v24[2];
      v296 = v31;
      v297 = v23;
      v298 = *v24;
      if ((v33 | 4) < v32)
      {
        v38 = (v34 + 4 * v23);
        if (v38 < v35)
        {
          goto LABEL_745;
        }

        LODWORD(__A) = 0;
        vDSP_vfill(&__A, v38, 1, 0x40uLL);
        if (v305 == 256)
        {
          v39 = (v298 + 4 * ((5 * v33) >> 1));
          if (v39 < v37)
          {
            goto LABEL_745;
          }

          v40 = 160;
        }

        else
        {
          v39 = (v298 + 8 * v33);
          if (v39 < v37)
          {
            goto LABEL_745;
          }

          v40 = 128;
        }

        LODWORD(__A) = 0;
        vDSP_vfill(&__A, v39, 1, v40);
        v317 = 64;
        v316 = 0;
        v31 = v296;
        if ((v296 + 1) > v300 || v296 > v296 + 1 || v296 < v299)
        {
          goto LABEL_745;
        }

        LOWORD(v293) = 0;
        *v296 = 64.0;
        LOWORD(v30) = 64;
        goto LABEL_255;
      }

      v41 = *(a1 + 5208);
      v42 = v24[1];
      v294 = *(a8 + 2);
      if ((v32 - v33) > 4)
      {
        if (v33 <= v32)
        {
          goto LABEL_255;
        }

        v292 = *a8;
        if (v305 == 256)
        {
          if (v32 == 1)
          {
            if (v33 == 64)
            {
              v46 = (v30 - 8);
              if (v46 <= 34)
              {
                LOWORD(v46) = 34;
              }

              v315 = v46;
              v314 = v46 + 15;
              if ((v46 + 15) >= 232)
              {
                v314 = 231;
                v315 = 216;
              }
            }

            v47 = 1;
          }

          else
          {
            v47 = ((v33 - v32 - 64) > 4) << 6;
          }

          if (v41 > 24399)
          {
            if (v41 <= 30399)
            {
              if (v41 > 29199)
              {
                if (v41 == 29200)
                {
                  v52 = 113;
                }

                else
                {
                  if (v41 != 30200)
                  {
                    goto LABEL_542;
                  }

                  v52 = 123;
                }
              }

              else if (v41 == 24400)
              {
                v52 = 93;
              }

              else
              {
                if (v41 != 29000)
                {
                  goto LABEL_542;
                }

                v52 = 103;
              }
            }

            else if (v41 <= 47999)
            {
              if (v41 == 30400)
              {
                v52 = 133;
              }

              else
              {
                if (v41 != 32000)
                {
                  goto LABEL_542;
                }

                v52 = 143;
              }
            }

            else
            {
              switch(v41)
              {
                case 48000:
                  v52 = 153;
                  break;
                case 64000:
                  v52 = 163;
                  break;
                case 96000:
                  v52 = 173;
                  break;
                default:
                  goto LABEL_542;
              }
            }
          }

          else if (v41 <= 12849)
          {
            if (v41 > 11599)
            {
              if (v41 == 11600)
              {
                v52 = 23;
              }

              else
              {
                if (v41 != 12150)
                {
                  goto LABEL_542;
                }

                v52 = 33;
              }
            }

            else if (v41 == 7200)
            {
              v52 = 3;
            }

            else
            {
              if (v41 != 8000)
              {
                goto LABEL_542;
              }

              v52 = 13;
            }
          }

          else if (v41 <= 14799)
          {
            if (v41 == 12850)
            {
              v52 = 43;
            }

            else
            {
              if (v41 != 13200)
              {
                goto LABEL_542;
              }

              v52 = 53;
            }
          }

          else
          {
            switch(v41)
            {
              case 14800:
                v52 = 63;
                break;
              case 16400:
                v52 = 73;
                break;
              case 22600:
                v52 = 83;
                break;
              default:
LABEL_542:
                if (v41 == 128000)
                {
                  v52 = 183;
                }

                else
                {
                  v52 = -7;
                }

                break;
            }
          }

          if (v32 >= 2)
          {
            if (v32 > 63)
            {
              if (v32 == 64)
              {
                v177 = 4;
              }

              else if (v32 == 128)
              {
                v177 = 5;
              }

              else
              {
                v177 = v270;
                if (v32 == 192)
                {
                  v177 = 6;
                }
              }
            }

            else if (v32 == 2)
            {
              v177 = 1;
            }

            else if (v32 == 3)
            {
              v177 = 2;
            }

            else
            {
              v177 = v270;
              if (v32 == 4)
              {
                v177 = 3;
              }
            }
          }

          else
          {
            v177 = 0;
          }

          v178 = &ACB_bits_tbl[8 * v177 + 8 * v52 + 2 * (v33 >> 6)];
          if (v178 < ACB_bits_tbl || v178 + 2 > ACB_bits_16kHz_tbl || v178 > v178 + 2)
          {
            goto LABEL_745;
          }

          v179 = *v178;
          if (v33 == 64 && v303 >= 3)
          {
            v317 = 128;
            v316 = 0;
            a1 = v306;
            if (v34 + 256 < v294)
            {
              goto LABEL_745;
            }

            LODWORD(__A) = 0;
            v180 = v36;
            vDSP_vfill(&__A, (v34 + 256), 1, 0x41uLL);
            v181 = (v180 + 640);
            goto LABEL_554;
          }

          if (v33 == 64 && v303 == 2)
          {
            v279 = v42;
            v182 = (64 - v271);
            if (v182 <= 34)
            {
              LOWORD(v182) = 34;
            }

            if (v271 >= 34)
            {
              v183 = 34;
            }

            else
            {
              v183 = v182;
            }

            next_indice = get_next_indice(v306, v179);
            v185 = (next_indice + (next_indice >> 15)) >> 1;
            v186 = v183 + v185;
            v317 = v186;
            v187 = 2 * next_indice - 4 * v185;
            v316 = v187;
            v188 = (v186 - 8);
            if (v188 <= 34)
            {
              LOWORD(v188) = 34;
            }

            v315 = v188;
            v314 = v188 + 15;
            if ((v188 + 15) >= 232)
            {
              v314 = 231;
              v315 = 216;
            }

            v189 = v292 + 256;
            a1 = v306;
            if (*(&v292 + 1) >= (v292 + 256) && v294 <= v189 && *(&v292 + 1) - (v292 + 256) >= 257)
            {
              *&__A = v292 + 256;
              *(&__A + 1) = *(&v292 + 1);
              v319 = v294;
              pred_lt4(&__A, v189, v186, v187, 65, inter4_2, &post_dct_wind, 0x10u, 4);
              v190 = 0;
              v191 = v298 - ((((((((vcvts_n_f32_s32(v316, 2uLL) * 5.0) * 0.5) + 5.0) + 0.5) + ((5 * v317 + ((5 * v317) >> 31)) >> 1)) << 48) - 0x5000000000000) >> 46);
              while (1)
              {
                v192 = (v191 + v190 + 640);
                v193 = v191 + v190 + 644;
                v194 = v193 > v279 || v192 > v193;
                v195 = !v194 && v192 >= v37;
                v196 = (v298 + v190 + 640);
                v197 = v298 + v190 + 644;
                v198 = !v195 || v197 > v279;
                v199 = v198 || v196 > v197;
                if (v199 || v196 < v37)
                {
                  break;
                }

                *v196 = *v192;
                v190 += 4;
                if (v190 == 640)
                {
                  goto LABEL_627;
                }
              }
            }

            goto LABEL_745;
          }

          if (v33 == 128 && v303 == 3)
          {
            v201 = v42;
            v202 = get_next_indice(v306, v179);
            v317 = ((v202 + (v202 >> 15)) >> 1) - v271 + 128;
            v316 = 2 * v202 - 4 * ((v202 + (v202 >> 15)) >> 1);
            v203 = (((v202 + (v202 >> 15)) >> 1) - v271 + 120);
            if (v203 <= 34)
            {
              LOWORD(v203) = 34;
            }

            v315 = v203;
            v314 = v203 + 15;
            if ((v203 + 15) >= 232)
            {
              v314 = 231;
              v315 = 216;
            }

            v204 = v292 + 512;
            a1 = v306;
            if (*(&v292 + 1) >= (v292 + 512) && v294 <= v204 && *(&v292 + 1) - (v292 + 512) >= 257)
            {
              *&__A = v292 + 512;
              *(&__A + 1) = *(&v292 + 1);
              v319 = v294;
              pred_lt4(&__A, v204, (((v202 + (v202 >> 15)) >> 1) - v271 + 128), (2 * v202 - 4 * ((v202 + (v202 >> 15)) >> 1)), 65, inter4_2, &post_dct_wind, 0x10u, 4);
              v205 = 0;
              v206 = v298 - ((((((((vcvts_n_f32_s32(v316, 2uLL) * 5.0) * 0.5) + 5.0) + 0.5) + ((5 * v317 + ((5 * v317) >> 31)) >> 1)) << 48) - 0x5000000000000) >> 46);
              while (1)
              {
                v207 = (v206 + v205 + 1280);
                v208 = v206 + v205 + 1284;
                v209 = v208 > v201 || v207 > v208;
                v210 = !v209 && v207 >= v37;
                v211 = (v298 + v205 + 1280);
                v212 = v298 + v205 + 1284;
                v213 = !v210 || v212 > v201;
                v214 = v213 || v211 > v212;
                if (v214 || v211 < v37)
                {
                  break;
                }

                *v211 = *v207;
                v205 += 4;
                if (v205 == 640)
                {
                  goto LABEL_627;
                }
              }
            }

            goto LABEL_745;
          }

          if (v33 == 128 && v303 == 4)
          {
            v317 = 256;
            v316 = 0;
            a1 = v306;
            if (v34 + 512 < v294)
            {
              goto LABEL_745;
            }

            LODWORD(__A) = 0;
            v219 = v36;
            vDSP_vfill(&__A, (v34 + 512), 1, 0x41uLL);
            v181 = (v219 + 1280);
LABEL_554:
            if (v181 < v37)
            {
              goto LABEL_745;
            }

            LODWORD(__A) = 0;
            vDSP_vfill(&__A, v181, 1, 0xA0uLL);
            v295 = 0;
          }

          else
          {
            v280 = v42;
            if (v33 == 192 && v303 == 4)
            {
              v220 = get_next_indice(v306, v179);
              v221 = (279 - 2 * v271);
              v222 = 2 * (v221 - (192 - v271));
              if (v222 <= v220)
              {
                LOWORD(v224) = 0;
                LOWORD(v221) = v221 + v220 - v222;
              }

              else
              {
                v223 = v220 + ((v220 & 0x8000) >> 15);
                v221 = 192 - v271 + (v223 >> 1);
                v224 = 2 * v220 - 4 * (v223 >> 1);
              }

              v317 = v221;
              v316 = v224;
              a1 = v306;
              if (4 * v221 + v224 >= 927)
              {
                LOWORD(v224) = 0;
                LOWORD(v221) = 64;
                v317 = 64;
                v316 = 0;
                *v268 = 1;
              }

              v255 = v292 + 768;
              if (*(&v292 + 1) >= (v292 + 768) && v294 <= v255 && *(&v292 + 1) - (v292 + 768) >= 257)
              {
                *&__A = v292 + 768;
                *(&__A + 1) = *(&v292 + 1);
                v319 = v294;
                pred_lt4(&__A, v255, v221, v224, 65, inter4_2, &post_dct_wind, 0x10u, 4);
                v256 = 0;
                v257 = v298 - ((((((((vcvts_n_f32_s32(v316, 2uLL) * 5.0) * 0.5) + 5.0) + 0.5) + ((5 * v317 + ((5 * v317) >> 31)) >> 1)) << 48) - 0x5000000000000) >> 46);
                while (1)
                {
                  v258 = (v257 + v256 + 1920);
                  v259 = v257 + v256 + 1924;
                  v260 = v259 > v280 || v258 > v259;
                  v261 = !v260 && v258 >= v37;
                  v262 = (v298 + v256 + 1920);
                  v263 = v298 + v256 + 1924;
                  v264 = !v261 || v263 > v280;
                  v265 = v264 || v262 > v263;
                  if (v265 || v262 < v37)
                  {
                    break;
                  }

                  *v262 = *v258;
                  v256 += 4;
                  if (v256 == 640)
                  {
                    goto LABEL_627;
                  }
                }
              }

              goto LABEL_745;
            }

            v225 = get_next_indice(v306, v179);
            if (v33 == 192 && v303 == 3)
            {
              v226 = (v225 + ((v225 & 0x8000) >> 15)) >> 1;
              v227 = v315 + v226;
              v317 = v315 + v226;
              v228 = 2 * v225 - 4 * v226;
              v316 = v228;
              v229 = v292 + 768;
              a1 = v306;
              if (*(&v292 + 1) >= (v292 + 768) && v294 <= v229 && *(&v292 + 1) - (v292 + 768) >= 257)
              {
                *&__A = v292 + 768;
                *(&__A + 1) = *(&v292 + 1);
                v319 = v294;
                pred_lt4(&__A, v229, v227, v228, 65, inter4_2, &post_dct_wind, 0x10u, 4);
                v230 = 0;
                v231 = v298 - ((((((((vcvts_n_f32_s32(v316, 2uLL) * 5.0) * 0.5) + 5.0) + 0.5) + ((5 * v317 + ((5 * v317) >> 31)) >> 1)) << 48) - 0x5000000000000) >> 46);
                while (1)
                {
                  v232 = (v231 + v230 + 1920);
                  v233 = v231 + v230 + 1924;
                  v234 = v233 > v280 || v232 > v233;
                  v235 = !v234 && v232 >= v37;
                  v236 = (v298 + v230 + 1920);
                  v237 = v298 + v230 + 1924;
                  v238 = !v235 || v237 > v280;
                  v239 = v238 || v236 > v237;
                  if (v239 || v236 < v37)
                  {
                    break;
                  }

                  *v236 = *v232;
                  v230 += 4;
                  if (v230 == 640)
                  {
                    goto LABEL_627;
                  }
                }
              }

LABEL_745:
              __break(0x5519u);
            }

            pit_Q_dec(0, v225, v179, 8, v47, 0, &v317, &v316, &v315, &v314, v268);
            v241 = v292 + 4 * v33;
            a1 = v306;
            if (*(&v292 + 1) < v241 || v294 > v241 || (*(&v292 + 1) - v241) < 257)
            {
              goto LABEL_745;
            }

            *&__A = v292 + 4 * v33;
            *(&__A + 1) = *(&v292 + 1);
            v319 = v294;
            pred_lt4(&__A, v241, v317, v316, 65, inter4_2, &post_dct_wind, 0x10u, 4);
            v242 = 0;
            v243 = (5 * v33) >> 1;
            v244 = v298 + 4 * v243;
            v245 = v298 + 4 * v243 - ((((((((vcvts_n_f32_s32(v316, 2uLL) * 5.0) * 0.5) + 5.0) + 0.5) + ((5 * v317 + ((5 * v317) >> 31)) >> 1)) << 48) - 0x5000000000000) >> 46);
            do
            {
              v246 = (v245 + v242);
              v247 = v245 + v242 + 4;
              v249 = v247 <= v280 && v246 <= v247 && v246 >= v37;
              v250 = (v244 + v242);
              v251 = v244 + v242 + 4;
              if (!v249 || v251 > v280 || v250 > v251 || v250 < v37)
              {
                goto LABEL_745;
              }

              *v250 = *v246;
              v242 += 4;
            }

            while (v242 != 640);
LABEL_627:
            __A = v292;
            v319 = v294;
            v295 = 1;
            lp_filt_exc_dec(a1, 1, v41, 0, 4u, v33, 256, 0, &__A);
          }

          v31 = v296;
          if ((v296 + 1) > v300 || v296 > v296 + 1 || v296 < v299)
          {
            goto LABEL_745;
          }

          LOWORD(v30) = v317;
          LOWORD(v293) = v316;
          v216 = vcvts_n_f32_s32(v316, 2uLL) + v317;
          *v296 = v216;
          if (v33 == 192 && v303 >= 128)
          {
LABEL_633:
            v217 = (v296 - 2);
            if ((v296 - 2) > v300)
            {
              goto LABEL_745;
            }

            if ((v296 - 3) > v217)
            {
              goto LABEL_745;
            }

            if ((v296 - 3) < v299)
            {
              goto LABEL_745;
            }

            *(v296 - 3) = v216;
            v218 = v296 - 1;
            if ((v296 - 1) > v300)
            {
              goto LABEL_745;
            }

LABEL_642:
            if (v217 > v218)
            {
              goto LABEL_745;
            }

            if (v217 < v299)
            {
              goto LABEL_745;
            }

            *(v296 - 2) = v216;
            if (v296 > v300)
            {
              goto LABEL_745;
            }

LABEL_645:
            if (v218 > v296 || v218 < v299)
            {
              goto LABEL_745;
            }

            *v218 = v216;
            goto LABEL_255;
          }

          if (v33 != 128 || v303 != 64)
          {
            if (v33 == 64 && v303 == 2)
            {
              if (v296 > v300)
              {
                goto LABEL_745;
              }

              v218 = v296 - 1;
              goto LABEL_645;
            }

            if (v33 != 128 || v303 != 3)
            {
              if (v33 != 192 || v303 != 4)
              {
                goto LABEL_255;
              }

              goto LABEL_633;
            }
          }

          v218 = v296 - 1;
          if ((v296 - 1) > v300)
          {
            goto LABEL_745;
          }

          v217 = (v296 - 2);
          goto LABEL_642;
        }

        if (v33 - v32 != 64)
        {
          goto LABEL_105;
        }

        if (v293 <= 1)
        {
          v50 = v30;
        }

        else
        {
          v50 = v30 + 1;
        }

        v51 = (v50 - 8);
        if (v33 <= 127)
        {
          if (v51 <= 42)
          {
            LOWORD(v51) = 42;
          }

          v315 = v51;
          v314 = v51 + 15;
          if ((v51 + 15) <= 289)
          {
            goto LABEL_105;
          }
        }

        else
        {
          if (v51 <= 20)
          {
            v315 = 21;
            v314 = 36;
            goto LABEL_105;
          }

          v315 = v51;
          v314 = v51 + 15;
          if ((v51 + 15) < 290)
          {
LABEL_105:
            if (v33 < 0)
            {
              v53 = 1;
            }

            else
            {
              v53 = 5;
            }

            if (v41 > 28999)
            {
              if (v41 > 30399)
              {
                switch(v41)
                {
                  case 30400:
                    v54 = 51;
                    goto LABEL_461;
                  case 32000:
                    v54 = 58;
                    goto LABEL_461;
                  case 48000:
                    v54 = 65;
                    goto LABEL_461;
                }
              }

              else
              {
                switch(v41)
                {
                  case 29000:
                    v54 = 30;
                    goto LABEL_461;
                  case 29200:
                    v54 = 37;
                    goto LABEL_461;
                  case 30200:
                    v54 = 44;
LABEL_461:
                    v269 = v33 - v32;
                    if (v32)
                    {
                      if (v32 == 64)
                      {
                        v149 = 1;
                      }

                      else if (v32 == 128)
                      {
                        v149 = 2;
                      }

                      else
                      {
                        v149 = v267;
                        if (v32 == 192)
                        {
                          v149 = 3;
                        }
                      }
                    }

                    else
                    {
                      v149 = 0;
                    }

                    v150 = &ACB_bits_16kHz_tbl[2 * (v54 + v149) * v53 + 2 * (v33 >> 6)];
                    if (v150 < ACB_bits_16kHz_tbl || v150 + 2 > FCB_bits_16kHz_tbl || v150 > v150 + 2)
                    {
                      goto LABEL_745;
                    }

                    v278 = v42;
                    v151 = *v150;
                    v152 = get_next_indice(a1, v151);
                    switch(v151)
                    {
                      case 6:
                        v156 = v152 + ((v152 >> 29) & 3);
                        v317 = v315 + (v156 >> 2);
                        v316 = v152 - (v156 & 0xFFFC);
                        limit_T0(320, 8, 64, v33 > 127, v317, v316, &v315, &v314);
                        break;
                      case 8:
                        if (v152 > 163)
                        {
                          LOWORD(v154) = ((v152 - 164) >> 1) + 83;
                          v155 = 2 * (v152 & 1);
                        }

                        else
                        {
                          v153 = v152 + ((v152 >> 29) & 3);
                          v154 = (v153 >> 2) + 42;
                          v155 = v152 - (v153 & 0xFFFC);
                        }

                        v317 = v154;
                        v316 = v155;
                        if (4 * v154 + v155 >= 513)
                        {
                          v317 = 64;
                          v316 = 0;
                          *v268 = 1;
                        }

                        break;
                      case 10:
                        pit16k_Q_dec(v152, 10, v33 > 127, &v317, &v316, &v315, &v314, v268);
                        break;
                    }

                    if (v33 == 64 && v317 == 128)
                    {
                      if (v292 + 256 < v294)
                      {
                        goto LABEL_745;
                      }

                      LODWORD(__A) = 0;
                      vDSP_vfill(&__A, (v292 + 256), 1, 0x41uLL);
                      get_next_indice(a1, 1);
                      if (v298 + 512 < v37)
                      {
                        goto LABEL_745;
                      }

                      LODWORD(__A) = 0;
                      vDSP_vfill(&__A, (v298 + 512), 1, 0x80uLL);
                    }

                    else
                    {
                      v157 = v292 + 4 * v33;
                      if (*(&v292 + 1) < v157 || v294 > v157 || (*(&v292 + 1) - v157) < 257)
                      {
                        goto LABEL_745;
                      }

                      v158 = 2 * v297;
                      *&__A = v292 + 4 * v33;
                      *(&__A + 1) = *(&v292 + 1);
                      v319 = v294;
                      pred_lt4(&__A, v157, v317, v316, 65, inter4_2, &post_dct_wind, 0x10u, 4);
                      v159 = (v298 + 4 * v158);
                      a1 = v306;
                      v160 = v158 - (((v316 * 0.5) + 4.0) + 0.5) - 2 * v317;
                      v161 = 128;
                      do
                      {
                        v162 = v298 + 4 * v160;
                        v163 = (v162 + 16);
                        v164 = v162 + 20;
                        v166 = v164 <= v278 && v163 <= v164 && v163 >= v37;
                        v167 = v159 + 1;
                        if (!v166 || v167 > v278 || v159 > v167 || v159 < v37)
                        {
                          goto LABEL_745;
                        }

                        *v159++ = *v163;
                        ++v160;
                        --v161;
                      }

                      while (v161);
                      __A = v292;
                      v319 = v294;
                      v295 = 1;
                      lp_filt_exc_dec(v306, 1, v41, 0, 4u, v33, v305, 0, &__A);
                    }

                    v31 = v296;
                    if ((v296 + 1) > v300 || v296 > v296 + 1 || v296 < v299)
                    {
                      goto LABEL_745;
                    }

                    LOWORD(v30) = v317;
                    LOWORD(v293) = v316;
                    v171 = vcvts_n_f32_s32(v316, 2uLL) + v317;
                    *v296 = v171;
                    if (v303)
                    {
                      v172 = 0;
                    }

                    else
                    {
                      v172 = v33 == 128;
                    }

                    if (v172 || v269 == 64)
                    {
                      v31 = &v296[-(v33 >> 6)];
                      if (v33 >= 64)
                      {
                        v173 = 0;
                        do
                        {
                          v174 = v31 + 1;
                          if ((v31 + 1) > v300 || v31 > v174 || v31 < v299)
                          {
                            goto LABEL_745;
                          }

                          *v31 = v171;
                          ++v173;
                          ++v31;
                        }

                        while (v33 >> 6 > v173);
                        v31 = v174;
                      }
                    }

                    goto LABEL_255;
                }
              }

              goto LABEL_458;
            }

            if (v41 <= 16399)
            {
              if (v41 == 8000)
              {
                v54 = 2;
                goto LABEL_461;
              }

              if (v41 != 14800)
              {
                goto LABEL_458;
              }
            }

            else if (v41 != 16400)
            {
              if (v41 == 22600)
              {
                v54 = 16;
                goto LABEL_461;
              }

              if (v41 == 24400)
              {
                v54 = 23;
                goto LABEL_461;
              }

LABEL_458:
              if (v41 == 64000)
              {
                v54 = 72;
              }

              else
              {
                v54 = -5;
              }

              goto LABEL_461;
            }

            v54 = 9;
            goto LABEL_461;
          }
        }

        v314 = 289;
        v315 = 274;
        goto LABEL_105;
      }

      v291 = *a8;
      v43 = *a8;
      if (v34 - 1280 < v35)
      {
        goto LABEL_745;
      }

      v277 = v42;
      LODWORD(__A) = 0;
      vDSP_vfill(&__A, (v34 - 1280), 1, 0x140uLL);
      v273 = v37;
      if (v305 != 256)
      {
        if (v298 - 2312 < v37)
        {
          goto LABEL_745;
        }

        LODWORD(__A) = 0;
        vDSP_vfill(&__A, (v298 - 2312), 1, 0x242uLL);
        v48 = 5;
        if (v33 < 0)
        {
          v48 = 1;
        }

        if (v41 > 28999)
        {
          if (v41 > 30399)
          {
            switch(v41)
            {
              case 30400:
                v49 = 51;
                goto LABEL_154;
              case 32000:
                v49 = 58;
                goto LABEL_154;
              case 48000:
                v49 = 65;
                goto LABEL_154;
            }
          }

          else
          {
            switch(v41)
            {
              case 29000:
                v49 = 30;
                goto LABEL_154;
              case 29200:
                v49 = 37;
                goto LABEL_154;
              case 30200:
                v49 = 44;
                goto LABEL_154;
            }
          }

LABEL_152:
          v49 = 72;
          if (v41 != 64000)
          {
            v49 = -5;
          }

LABEL_154:
          v55 = &ACB_bits_16kHz_tbl[2 * (v272 + v49) * v48 + 2 * (v33 >> 6)];
          if (v55 < ACB_bits_16kHz_tbl || v55 + 2 > FCB_bits_16kHz_tbl || v55 > v55 + 2)
          {
            goto LABEL_745;
          }

          v56 = *v55;
          v57 = v306;
          v58 = get_next_indice(v306, v56);
          if (v56 == 6)
          {
            v317 = ((v58 + ((v58 & 0x8000) >> 15)) >> 1) + 42;
            LOWORD(v58) = 2 * v58 - 4 * ((v58 + ((v58 & 0x8000) >> 15)) >> 1);
          }

          else
          {
            if (v56 != 10)
            {
              goto LABEL_217;
            }

            if (v58 > 971)
            {
              v317 = ((v58 - 972) >> 1) + 264;
              LOWORD(v58) = 2 * (v58 & 1);
            }

            else
            {
              v317 = ((v58 + ((v58 >> 29) & 3)) >> 2) + 21;
              LOWORD(v58) = v58 - ((v58 + ((v58 >> 29) & 3)) & 0xFFFC);
            }
          }

          goto LABEL_214;
        }

        if (v41 <= 16399)
        {
          if (v41 == 8000)
          {
            v49 = 2;
            goto LABEL_154;
          }

          if (v41 != 14800)
          {
            goto LABEL_152;
          }
        }

        else if (v41 != 16400)
        {
          if (v41 == 22600)
          {
            v49 = 16;
            goto LABEL_154;
          }

          if (v41 == 24400)
          {
            v49 = 23;
            goto LABEL_154;
          }

          goto LABEL_152;
        }

        v49 = 9;
        goto LABEL_154;
      }

      if (v298 - 2308 < v37)
      {
        goto LABEL_745;
      }

      LODWORD(__A) = 0;
      vDSP_vfill(&__A, (v298 - 2308), 1, 0x241uLL);
      if (v41 > 24399)
      {
        if (v41 <= 30399)
        {
          v44 = v303;
          if (v41 > 29199)
          {
            if (v41 == 29200)
            {
              v45 = 113;
              goto LABEL_190;
            }

            if (v41 == 30200)
            {
              v45 = 123;
              goto LABEL_190;
            }
          }

          else
          {
            if (v41 == 24400)
            {
              v45 = 93;
              goto LABEL_190;
            }

            if (v41 == 29000)
            {
              v45 = 103;
              goto LABEL_190;
            }
          }
        }

        else
        {
          v44 = v303;
          if (v41 <= 47999)
          {
            if (v41 == 30400)
            {
              v45 = 133;
              goto LABEL_190;
            }

            if (v41 == 32000)
            {
              v45 = 143;
              goto LABEL_190;
            }
          }

          else
          {
            switch(v41)
            {
              case 48000:
                v45 = 153;
                goto LABEL_190;
              case 64000:
                v45 = 163;
                goto LABEL_190;
              case 96000:
                v45 = 173;
                goto LABEL_190;
            }
          }
        }
      }

      else if (v41 <= 12849)
      {
        v44 = v303;
        if (v41 > 11599)
        {
          if (v41 == 11600)
          {
            v45 = 23;
            goto LABEL_190;
          }

          if (v41 == 12150)
          {
            v45 = 33;
            goto LABEL_190;
          }
        }

        else
        {
          if (v41 == 7200)
          {
            v45 = 3;
            goto LABEL_190;
          }

          if (v41 == 8000)
          {
            v45 = 13;
            goto LABEL_190;
          }
        }
      }

      else
      {
        v44 = v303;
        if (v41 <= 14799)
        {
          if (v41 == 12850)
          {
            v45 = 43;
            goto LABEL_190;
          }

          if (v41 == 13200)
          {
            v45 = 53;
            goto LABEL_190;
          }
        }

        else
        {
          switch(v41)
          {
            case 14800:
              v45 = 63;
              goto LABEL_190;
            case 16400:
              v45 = 73;
              goto LABEL_190;
            case 22600:
              v45 = 83;
              goto LABEL_190;
          }
        }
      }

      if (v41 == 128000)
      {
        v45 = 183;
      }

      else
      {
        v45 = -7;
      }

LABEL_190:
      v59 = v44 - 2;
      if (v44 >= 2)
      {
        if (v44 > 63)
        {
          if (v44 == 64)
          {
            v60 = 4;
          }

          else if (v44 == 128)
          {
            v60 = 5;
          }

          else
          {
            v60 = v270;
            if (v44 == 192)
            {
              v60 = 6;
            }
          }
        }

        else if (v44 == 2)
        {
          v60 = 1;
        }

        else if (v44 == 3)
        {
          v60 = 2;
        }

        else
        {
          v60 = v270;
          if (v44 == 4)
          {
            v60 = 3;
          }
        }
      }

      else
      {
        v60 = 0;
      }

      v61 = &ACB_bits_tbl[8 * v60 + 8 * v45 + 2 * (v33 >> 6)];
      if (v61 < ACB_bits_tbl || v61 + 2 > ACB_bits_16kHz_tbl || v61 > v61 + 2)
      {
        goto LABEL_745;
      }

      v62 = *v61;
      if (v33)
      {
        v57 = v306;
        if (v303 != 192)
        {
          if (v303 != 64)
          {
LABEL_211:
            v66 = get_next_indice(v57, v62);
            if (v66)
            {
              if (v303 == 1)
              {
                v317 = ((v66 + (v66 >> 15)) >> 1) + 33;
                v58 = 2 * v66 - 4 * (((v66 + (v66 >> 15)) << 16) >> 17);
LABEL_214:
                v316 = v58;
                goto LABEL_217;
              }

              v317 = v66 + 33;
              goto LABEL_216;
            }
          }

LABEL_215:
          v317 = 64;
LABEL_216:
          v316 = 0;
          goto LABEL_217;
        }
      }

      else
      {
        v57 = v306;
        if (v59 <= 0x3E && ((1 << v59) & 0x4000000000000007) != 0 || !v303)
        {
          goto LABEL_215;
        }

        if (v303 != 192)
        {
          goto LABEL_211;
        }
      }

      v63 = get_next_indice(v57, v62);
      if (v62 == 9)
      {
        if (v63 > 375)
        {
          if (v63 > 0x1B7)
          {
            v65 = 0;
            v317 = v63 - 280;
          }

          else
          {
            v317 = ((v63 - 376) >> 1) + 128;
            v65 = 2 * (v63 & 1);
          }
        }

        else
        {
          v64 = v63 + ((v63 >> 29) & 3);
          v317 = (v64 >> 2) + 34;
          v65 = v63 - (v64 & 0xFFFC);
        }

        v316 = v65;
      }

      else
      {
        if (v63 > 115)
        {
          v96 = 0;
          v95 = v63 - 24;
        }

        else
        {
          v95 = ((v63 + ((v63 & 0x8000) >> 15)) >> 1) + 34;
          v96 = 2 * v63 - 4 * ((v63 + ((v63 & 0x8000) >> 15)) >> 1);
        }

        v317 = v95;
        v316 = v96;
      }

LABEL_217:
      v67 = get_next_indice(v57, 3);
      v68 = get_next_indice(v57, 6);
      v69 = get_next_indice(v57, 1);
      v70 = v57;
      v71 = v69;
      v72 = &tbl_gain_trans_tc[get_next_indice(v70, 3)];
      if (v72 < tbl_gain_trans_tc || v72 + 1 > Idx_dortft80 || v72 > v72 + 1)
      {
        goto LABEL_745;
      }

      v73 = v71 ? *v72 : -*v72;
      if (v43 + 4 * v33 < v294)
      {
        goto LABEL_745;
      }

      LODWORD(__A) = 0;
      vDSP_vfill(&__A, (v43 + 4 * v33), 1, 0x40uLL);
      v74 = v68 - 8;
      if (v68 + 8 >= (v68 - 8))
      {
        v75 = v74;
        do
        {
          if (v74 <= 0x3Fu)
          {
            v76 = &glottal_cdbk[17 * v67 - v68 + v75];
            v77 = v76 + 8;
            v78 = v76 + 9;
            v80 = v77 < glottal_cdbk || v78 > table_logcum_fx || v77 > v78;
            v81 = (v43 + 4 * (v75 + v33));
            v82 = v81 + 1;
            if (v80 || v82 > *(&v291 + 1) || v81 > v82 || v81 < v294)
            {
              goto LABEL_745;
            }

            *v81 = v73 * *v77;
          }

          v75 = ++v74;
        }

        while (v68 + 8 >= v74);
      }

      v30 = v317;
      __A = v291;
      v319 = v294;
      v293 = v316;
      pred_lt4_tc(&__A, v317, v316, v68, v33);
      if (v305 == 256)
      {
        v86 = (v298 + 4 * ((5 * v33) >> 1));
        if (v86 < v273)
        {
          goto LABEL_745;
        }

        interp_code_5over2((v43 + 4 * v33), *(&v291 + 1), v86, v277, 64);
      }

      else
      {
        v87 = v298 + 8 * v33;
        if (v87 < v273)
        {
          goto LABEL_745;
        }

        interp_code_4over2(v43 + 4 * v33, *(&v291 + 1), v87, v277, 64);
      }

      v31 = v296;
      a1 = v306;
      if ((v296 + 1) > v300 || v296 > v296 + 1 || v296 < v299)
      {
        goto LABEL_745;
      }

      v271 = v68 + v33;
      *v296 = vcvts_n_f32_s32(v293, 2uLL) + v30;
      v295 = 1;
LABEL_255:
      v88 = *(a1 + 5208);
      if (v88 >= 24401)
      {
        if (v288 > v276)
        {
          goto LABEL_745;
        }

        v89 = v31;
        transf_cdbk_dec(v306, v88, 4, 0, v33, v303, v288, &v308, a9, 0.0, &v307, __C, a12);
        v31 = v89;
        v88 = *(v306 + 5208);
      }

      if (v304 < v289)
      {
        goto LABEL_745;
      }

      v90 = v31 + 1;
      if ((v31 + 1) > v300 || v31 > v90 || v31 < v299)
      {
        goto LABEL_745;
      }

      inov_decode(v306, v88, 0, v305, 4, a13, v33, v303, *v302, *v31, v304, a5, __B, v322);
      v91 = *(v306 + 5208);
      if (v295)
      {
        if (v91 < 32001)
        {
          gain_dec_mless(v306, v91, v305, 4, v33, v303, __B, &v311, a9, &v313, &v309, &v312);
        }

        else
        {
          gain_dec_SQ(v306, v91, 4, v33, v303, __B, &v311, &v313, a9, &v309, &v312);
        }

        goto LABEL_363;
      }

      v311 = 0.0;
      if (v305 == 256)
      {
        if (v91 > 24399)
        {
          if (v91 <= 30399)
          {
            if (v91 > 29199)
            {
              if (v91 == 29200)
              {
                v92 = 113;
                goto LABEL_350;
              }

              if (v91 == 30200)
              {
                v92 = 123;
                goto LABEL_350;
              }
            }

            else
            {
              if (v91 == 24400)
              {
                v92 = 93;
                goto LABEL_350;
              }

              if (v91 == 29000)
              {
                v92 = 103;
                goto LABEL_350;
              }
            }
          }

          else if (v91 <= 47999)
          {
            if (v91 == 30400)
            {
              v92 = 133;
              goto LABEL_350;
            }

            if (v91 == 32000)
            {
              v92 = 143;
              goto LABEL_350;
            }
          }

          else
          {
            switch(v91)
            {
              case 48000:
                v92 = 153;
                goto LABEL_350;
              case 64000:
                v92 = 163;
                goto LABEL_350;
              case 96000:
                v92 = 173;
                goto LABEL_350;
            }
          }
        }

        else if (v91 <= 12849)
        {
          if (v91 > 11599)
          {
            if (v91 == 11600)
            {
              v92 = 23;
              goto LABEL_350;
            }

            if (v91 == 12150)
            {
              v92 = 33;
              goto LABEL_350;
            }
          }

          else
          {
            if (v91 == 7200)
            {
              v92 = 3;
              goto LABEL_350;
            }

            if (v91 == 8000)
            {
              v92 = 13;
              goto LABEL_350;
            }
          }
        }

        else if (v91 <= 14799)
        {
          if (v91 == 12850)
          {
            v92 = 43;
            goto LABEL_350;
          }

          if (v91 == 13200)
          {
            v92 = 53;
            goto LABEL_350;
          }
        }

        else
        {
          switch(v91)
          {
            case 14800:
              v92 = 63;
              goto LABEL_350;
            case 16400:
              v92 = 73;
              goto LABEL_350;
            case 22600:
              v92 = 83;
LABEL_350:
              if (v303 >= 2)
              {
                if (v303 > 63)
                {
                  if (v303 == 64)
                  {
                    v100 = 4;
                  }

                  else if (v303 == 128)
                  {
                    v100 = 5;
                  }

                  else
                  {
                    v100 = v270;
                    if (v303 == 192)
                    {
                      v100 = 6;
                    }
                  }
                }

                else if (v303 == 2)
                {
                  v100 = 1;
                }

                else if (v303 == 3)
                {
                  v100 = 2;
                }

                else
                {
                  v100 = v270;
                  if (v303 == 4)
                  {
                    v100 = 3;
                  }
                }
              }

              else
              {
                v100 = 0;
              }

              v97 = &gain_bits_tbl[4 * v100 + 4 * v92 + (v33 >> 6)];
              if (v97 < gain_bits_tbl)
              {
                goto LABEL_745;
              }

              v98 = v97 + 1;
              v99 = &gaus_dico;
              goto LABEL_354;
          }
        }

        if (v91 == 128000)
        {
          v92 = 183;
        }

        else
        {
          v92 = -7;
        }

        goto LABEL_350;
      }

      v93 = 5;
      if (v33 < 0)
      {
        v93 = 1;
      }

      if (v91 <= 28999)
      {
        if (v91 <= 16399)
        {
          if (v91 == 8000)
          {
            v94 = 2;
            goto LABEL_334;
          }

          if (v91 != 14800)
          {
LABEL_332:
            v94 = 72;
            if (v91 != 64000)
            {
              v94 = -5;
            }

            goto LABEL_334;
          }

LABEL_307:
          v94 = 9;
          goto LABEL_334;
        }

        switch(v91)
        {
          case 16400:
            goto LABEL_307;
          case 22600:
            v94 = 16;
            break;
          case 24400:
            v94 = 23;
            break;
          default:
            goto LABEL_332;
        }
      }

      else if (v91 > 30399)
      {
        switch(v91)
        {
          case 30400:
            v94 = 51;
            break;
          case 32000:
            v94 = 58;
            break;
          case 48000:
            v94 = 65;
            break;
          default:
            goto LABEL_332;
        }
      }

      else
      {
        switch(v91)
        {
          case 29000:
            v94 = 30;
            break;
          case 29200:
            v94 = 37;
            break;
          case 30200:
            v94 = 44;
            break;
          default:
            goto LABEL_332;
        }
      }

LABEL_334:
      v97 = &gain_bits_16kHz_tbl[(v272 + v94) * v93 + (v33 >> 6)];
      if (v97 < gain_bits_16kHz_tbl)
      {
        goto LABEL_745;
      }

      v98 = v97 + 1;
      v99 = &word_19B3773F2;
LABEL_354:
      if (v98 > v99 || v97 > v98)
      {
        goto LABEL_745;
      }

      v101 = *v97;
      LODWORD(__A) = -1;
      vDSP_dotpr(__B, 1, __B, 1, &__A, 0x40uLL);
      v102 = (*&__A + 0.01) * 0.015625;
      v103 = 1.0 / sqrtf(v102);
      v309 = v103;
      v104 = get_next_indice(v306, v101);
      if (v101 < 4)
      {
        v107 = &tbl_gain_code_tc[v104];
        if (v107 < tbl_gain_code_tc || v107 + 1 > &gp_gamma_1sfr_8b || v107 > v107 + 1)
        {
          goto LABEL_745;
        }

        v106 = *v107;
      }

      else
      {
        v105 = ((0x10000 << v101 >> 16) - 1) / 2.39793996;
        v106 = __exp10(((v104 / v105) + -1.699));
      }

      v108 = log10(v102);
      v109 = __exp10((a9 + (v108 * -10.0)) * 0.05);
      v313 = v106 * v109;
      v312 = (v106 * v109) / v103;
LABEL_363:
      if (v287)
      {
        goto LABEL_745;
      }

      v110 = v312;
      v111 = v311;
      lp_gain_updt(v33, v286, v285, v305, v311, v312 + v307);
      v112 = *(a8 + 1);
      v113 = (*a8 + 4 * v33);
      if (v113 > v112 || (v112 - v113) < 253 || *(a8 + 2) > v113)
      {
        goto LABEL_745;
      }

      v114 = 4 * v297;
      v115 = v313;
      v116 = a10 + v114;
      est_tilt(v113, __B, &v310, v111, v313);
      v118 = 0;
      *v302 = v119;
      v120 = *(a8 + 2);
      do
      {
        v121 = (*a8 + v114 + v118);
        if ((v121 + 1) > *(a8 + 1) || v121 > v121 + 1 || v121 < v120)
        {
          goto LABEL_745;
        }

        v124 = (v116 + v118);
        if (v116 + v118 < a10 || (v124 + 1) > v27 || v124 > v124 + 1)
        {
          goto LABEL_745;
        }

        v125 = v111 * *v121;
        *v124 = v125;
        v126 = (*a8 + v114 + v118);
        v127 = (v126 + 1) > *(a8 + 1) || v126 > v126 + 1;
        if (v127 || v126 < v120)
        {
          goto LABEL_745;
        }

        *v126 = v125 + (v115 * *(__B + v118));
        v118 += 4;
      }

      while (v118 != 256);
      v129 = v308;
      if (*(v306 + 5208) >= 24401)
      {
        for (i = 0; i != 256; i += 4)
        {
          v131 = (v116 + i);
          v132 = v116 + i + 4;
          v133 = v116 + i < a10 || v132 > v27;
          if (v133 || v131 > v132)
          {
            goto LABEL_745;
          }

          v135 = *(__C + i);
          *v131 = *v131 + (v129 * v135);
          v136 = (*a8 + v114 + i);
          v137 = (v136 + 1) > *(a8 + 1) || v136 > v136 + 1;
          if (v137 || v136 < v120)
          {
            goto LABEL_745;
          }

          *v136 = *v136 + (v129 * v135);
        }
      }

      v139 = v310;
      v140 = (v284 + 4 * (v301 >> 6));
      if (v140 && (v140 < v284 || (v140 + 1) > v281 || v140 > v140 + 1))
      {
        goto LABEL_745;
      }

      __A = *a11;
      v319 = a11[2];
      *&v117 = v115;
      prep_tbe_exc(v305, v33, __B, v140, &__A, __C, v111, v117, v310, v129);
      v141 = *(v306 + 5208);
      if (v141 < 32001)
      {
        if (v33 > 192)
        {
          goto LABEL_745;
        }

        v145 = a10 + 4 * v33;
        if (v145 > v27 || v145 < a10)
        {
          goto LABEL_745;
        }

        enhancer(1, v141, -1, 0, 4u, v305, (v306 + 23796), __B, v139, v302[95], v110, v309, v111, (a10 + 4 * v33), v275, v274);
      }

      else
      {
        v142 = (*a8 + 4 * v33);
        if (v142 < *(a8 + 2))
        {
          goto LABEL_745;
        }

        v143 = a10 + 4 * v33;
        if (v143 < a10)
        {
          goto LABEL_745;
        }

        if (v143 > v27)
        {
          goto LABEL_745;
        }

        v144 = *(a8 + 1);
        if (v142 > v144)
        {
          goto LABEL_745;
        }

        if (v144 - v142 < 0x100)
        {
          goto LABEL_745;
        }

        if (v33 == 256)
        {
          goto LABEL_745;
        }

        memmove((a10 + 4 * v33), v142, 0x100uLL);
        if (v143 + 256 < v143)
        {
          goto LABEL_745;
        }
      }

      v146 = v301 >> 6;
      v147 = (v283 + 4 * v146);
      if (v147 < v283)
      {
        goto LABEL_745;
      }

      if ((v147 + 1) > v282)
      {
        goto LABEL_745;
      }

      if (v147 > v147 + 1)
      {
        goto LABEL_745;
      }

      *v147 = *v302;
      v148 = (a14 + 4 * v146);
      if (v148 < a14 || (v148 + 1) > a14 + 16 || v148 > v148 + 1)
      {
        goto LABEL_745;
      }

      v31 = v90;
      v304 += 17;
      *v148 = v111;
      v23 = (v33 + 64);
      v301 = v23;
      a1 = v306;
      v32 = v303;
      v24 = a11;
      if (v23 >= v305)
      {
        goto LABEL_744;
      }
    }
  }

  v111 = 0.0;
LABEL_744:
  *(a1 + 36048) = v111;
}