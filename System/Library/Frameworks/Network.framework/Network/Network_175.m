unint64_t ZSTD_RowFindBestMatch_extDict_6_5(uint64_t a1, unint64_t a2, unint64_t a3, void *a4)
{
  v113 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 112);
  v6 = *(a1 + 56);
  v7 = *(a1 + 52);
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  v10 = a2 - v8;
  v11 = 1 << *(a1 + 256);
  v12 = *(a1 + 24);
  if (a2 - v8 - *(a1 + 28) > v11 && *(a1 + 40) == 0)
  {
    v14 = a2 - v8 - v11;
  }

  else
  {
    v14 = *(a1 + 28);
  }

  v15 = *(a1 + 268);
  if (v15 >= 5)
  {
    LOBYTE(v15) = 5;
  }

  v16 = *(a1 + 96);
  v111 = *(a1 + 8);
  if (*(a1 + 300))
  {
    _X14 = ((0xCF1BBCDCBF9B0000 * *a2) ^ v16) >> (56 - v7);
    *(a1 + 44) = v10;
    goto LABEL_38;
  }

  v18 = a1 + 64;
  v19 = *(a1 + 44);
  if (v10 - v19 >= 0x181)
  {
    v20 = *(a1 + 56);
    v21 = *(a1 + 112);
    if (v19 <= 0xFFFFFF9F)
    {
      v42 = v19 + 96;
      do
      {
        v43 = ((0xCF1BBCDCBF9B0000 * *(v8 + 8 + v19)) ^ *(a1 + 96)) >> (56 - v7);
        v44 = (v43 >> 3) & 0x1FFFFFE0;
        _X19 = v5 + 4 * v44;
        __asm
        {
          PRFM            #0, [X19]
          PRFM            #0, [X19,#0x40]
        }

        _X7 = v6 + v44;
        __asm { PRFM            #0, [X7] }

        v50 = *(v18 + 4 * (v19 & 7));
        *(v18 + 4 * (v19 & 7)) = v43;
        v51 = (v50 >> 3) & 0x1FFFFFE0;
        v52 = v5 + 4 * v51;
        v53 = (v6 + v51);
        if (((*v53 - 1) & 0x1F) != 0)
        {
          v54 = 0;
        }

        else
        {
          v54 = 31;
        }

        v55 = v54 + ((*v53 - 1) & 0x1F);
        *v53 = v55;
        v53[v55] = v50;
        *(v52 + 4 * v55) = v19++;
      }

      while (v42 != v19);
      v21 = *(a1 + 112);
      v20 = *(a1 + 56);
      v8 = v111;
    }

    v56 = v10 - 32;
    LODWORD(v19) = v10 - 32;
    v57 = a2 + 1 - (v8 + v56);
    if ((v57 + 1) < 8)
    {
      v58 = v57 + 1;
    }

    else
    {
      v58 = 8;
    }

    if (a2 + 1 >= v8 + v56)
    {
      v59 = v58;
    }

    else
    {
      v59 = 0;
    }

    if (v56 < v59 + v56)
    {
      v60 = *(a1 + 96);
      v61 = 56 - *(a1 + 52);
      do
      {
        v62 = ((0xCF1BBCDCBF9B0000 * *(v8 + v56)) ^ v60) >> v61;
        v63 = (v62 >> 3) & 0x1FFFFFE0;
        _X23 = v21 + 4 * v63;
        __asm
        {
          PRFM            #0, [X23]
          PRFM            #0, [X23,#0x40]
        }

        _X20 = v20 + v63;
        __asm { PRFM            #0, [X20] }

        *(v18 + 4 * (v56++ & 7)) = v62;
        --v59;
      }

      while (v59);
    }

    if (v19 < v10)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v20 = *(a1 + 56);
    v21 = *(a1 + 112);
    if (v19 < v10)
    {
LABEL_13:
      v22 = *(a1 + 8) + 8;
      v23 = 56 - *(a1 + 52);
      v24 = v19;
      v25 = v10;
      do
      {
        v26 = ((0xCF1BBCDCBF9B0000 * *(v22 + v24)) ^ *(a1 + 96)) >> v23;
        v27 = (v26 >> 3) & 0x1FFFFFE0;
        _X23 = v21 + 4 * v27;
        __asm
        {
          PRFM            #0, [X23]
          PRFM            #0, [X23,#0x40]
        }

        _X20 = v20 + v27;
        __asm { PRFM            #0, [X20] }

        v36 = *(v18 + 4 * (v24 & 7));
        *(v18 + 4 * (v24 & 7)) = v26;
        v37 = (v36 >> 3) & 0x1FFFFFE0;
        v38 = v21 + 4 * v37;
        v39 = (v20 + v37);
        if (((*v39 - 1) & 0x1F) != 0)
        {
          v40 = 0;
        }

        else
        {
          v40 = 31;
        }

        v41 = v40 + ((*v39 - 1) & 0x1F);
        *v39 = v41;
        v39[v41] = v36;
        *(v38 + 4 * v41) = v24++;
      }

      while (v10 != v24);
      goto LABEL_37;
    }
  }

  v25 = v10;
LABEL_37:
  *(a1 + 44) = v10;
  v69 = ((0xCF1BBCDCBF9B0000 * *(v8 + v25 + 8)) ^ v16) >> (56 - v7);
  v70 = (v69 >> 3) & 0x1FFFFFE0;
  _X17 = v5 + 4 * v70;
  __asm
  {
    PRFM            #0, [X17]
    PRFM            #0, [X17,#0x40]
  }

  _X14 = v6 + v70;
  __asm { PRFM            #0, [X14] }

  LODWORD(_X14) = *(v18 + 4 * (v10 & 7));
  *(v18 + 4 * (v10 & 7)) = v69;
LABEL_38:
  *(a1 + 104) += _X14;
  v75 = (_X14 >> 3) & 0x1FFFFFE0;
  v76 = v5 + 4 * v75;
  v77 = (v6 + v75);
  v114 = vld2q_s16(v77);
  v78 = *v77;
  v79 = 2 * *v77;
  v80 = vdupq_n_s8(_X14);
  v81 = 0;
  v82 = __ROR8__(vsli_n_s8(vshrn_n_s16(vceqq_s8(v80, v114.val[0]), 6uLL), vshrn_n_s16(vceqq_s8(v80, v114.val[1]), 6uLL), 4uLL), v79) & 0x5555555555555555;
  if (v82)
  {
    v83 = 1 << v15;
    do
    {
      v84 = ((__clz(__rbit64(v82)) + (v79 & 0xFE)) >> 1) & 0x1F;
      if (v84)
      {
        v85 = *(v76 + 4 * v84);
        if (v85 < v14)
        {
          break;
        }

        if (v85 >= v12)
        {
          v86 = v8;
        }

        else
        {
          v86 = v9;
        }

        _X3 = v86 + v85;
        __asm { PRFM            #0, [X3] }

        v112[v81++] = v85;
        --v83;
      }

      v82 &= v82 - 1;
    }

    while (v82 && v83);
  }

  if (((v78 - 1) & 0x1F) != 0)
  {
    v89 = 0;
  }

  else
  {
    v89 = 31;
  }

  v90 = v89 + ((v78 - 1) & 0x1F);
  *v77 = v90;
  *(v77 + v90) = _X14;
  v91 = *(a1 + 44);
  *(a1 + 44) = v91 + 1;
  *(v76 + 4 * v90) = v91;
  if (v81)
  {
    v92 = 0;
    v93 = a3 - 7;
    v107 = a3 - 1;
    v108 = a3 - 3;
    v109 = v10 + 3;
    v106 = v8 + 8;
    v94 = 3;
    while (1)
    {
      v96 = v112[v92];
      if (v96 >= v12)
      {
        v100 = (v8 + v96);
        if (*(v8 + v96 + v94 - 3) != *(a2 - 3 + v94))
        {
          goto LABEL_53;
        }

        if (v93 <= a2)
        {
          v103 = a2;
        }

        else
        {
          v101 = *v100;
          if (v101 != *a2)
          {
            result = __clz(__rbit64(*a2 ^ v101)) >> 3;
            if (result <= v94)
            {
              goto LABEL_53;
            }

            goto LABEL_79;
          }

          v102 = (a2 + 8);
          v100 = (v106 + v96);
          while (1)
          {
            v103 = v102;
            if (v102 >= v93)
            {
              break;
            }

            v105 = *v100;
            v100 += 4;
            v104 = v105;
            ++v102;
            if (v105 != *v103)
            {
              result = v103 + (__clz(__rbit64(*v103 ^ v104)) >> 3) - a2;
              if (result <= v94)
              {
                goto LABEL_53;
              }

              goto LABEL_79;
            }
          }
        }

        if (v103 < v108 && *v100 == *v103)
        {
          v100 += 2;
          v103 = (v103 + 4);
        }

        if (v103 < v107 && *v100 == *v103)
        {
          ++v100;
          v103 = (v103 + 2);
        }

        if (v103 < a3 && *v100 == *v103)
        {
          v103 = (v103 + 1);
        }

        result = v103 - a2;
        if (v103 - a2 <= v94)
        {
          goto LABEL_53;
        }
      }

      else
      {
        if (*(v9 + v96) != *a2)
        {
          goto LABEL_53;
        }

        v97 = (v8 + v12);
        v98 = a3;
        v99 = ZSTD_count_2segments((a2 + 4), (v9 + v96 + 4), a3, (v9 + v12), v97);
        a3 = v98;
        v8 = v111;
        result = v99 + 4;
        if (result <= v94)
        {
          goto LABEL_53;
        }
      }

LABEL_79:
      *a4 = v109 - v96;
      v94 = result;
      if (a2 + result == a3)
      {
        return result;
      }

LABEL_53:
      ++v92;
      result = v94;
      if (v92 == v81)
      {
        return result;
      }
    }
  }

  return 3;
}

unint64_t ZSTD_RowFindBestMatch_extDict_6_6(uint64_t a1, unint64_t a2, unint64_t a3, void *a4)
{
  v117 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 112);
  v6 = *(a1 + 56);
  v7 = *(a1 + 52);
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  v10 = a2 - v8;
  v11 = 1 << *(a1 + 256);
  v12 = *(a1 + 24);
  if (a2 - v8 - *(a1 + 28) > v11 && *(a1 + 40) == 0)
  {
    v14 = a2 - v8 - v11;
  }

  else
  {
    v14 = *(a1 + 28);
  }

  v15 = *(a1 + 268);
  if (v15 >= 6)
  {
    LOBYTE(v15) = 6;
  }

  v16 = *(a1 + 96);
  v115 = *(a1 + 8);
  if (*(a1 + 300))
  {
    _X14 = ((0xCF1BBCDCBF9B0000 * *a2) ^ v16) >> (56 - v7);
    *(a1 + 44) = v10;
    goto LABEL_38;
  }

  v18 = a1 + 64;
  v19 = *(a1 + 44);
  if (v10 - v19 >= 0x181)
  {
    v20 = *(a1 + 56);
    v21 = *(a1 + 112);
    if (v19 <= 0xFFFFFF9F)
    {
      v43 = v19 + 96;
      do
      {
        v44 = ((0xCF1BBCDCBF9B0000 * *(v8 + 8 + v19)) ^ *(a1 + 96)) >> (56 - v7);
        v45 = (v44 >> 2) & 0x3FFFFFC0;
        _X19 = v5 + 4 * v45;
        __asm
        {
          PRFM            #0, [X19]
          PRFM            #0, [X19,#0x40]
        }

        _X7 = v6 + v45;
        __asm
        {
          PRFM            #0, [X7]
          PRFM            #0, [X7,#0x20]
        }

        v52 = *(v18 + 4 * (v19 & 7));
        *(v18 + 4 * (v19 & 7)) = v44;
        v53 = (v52 >> 2) & 0x3FFFFFC0;
        v54 = v5 + 4 * v53;
        v55 = (v6 + v53);
        if (((*v55 - 1) & 0x3F) != 0)
        {
          v56 = 0;
        }

        else
        {
          v56 = 63;
        }

        v57 = v56 + ((*v55 - 1) & 0x3F);
        *v55 = v57;
        v55[v57] = v52;
        *(v54 + 4 * v57) = v19++;
      }

      while (v43 != v19);
      v21 = *(a1 + 112);
      v20 = *(a1 + 56);
      v8 = v115;
    }

    v58 = v10 - 32;
    LODWORD(v19) = v10 - 32;
    v59 = a2 + 1 - (v8 + v58);
    if ((v59 + 1) < 8)
    {
      v60 = v59 + 1;
    }

    else
    {
      v60 = 8;
    }

    if (a2 + 1 >= v8 + v58)
    {
      v61 = v60;
    }

    else
    {
      v61 = 0;
    }

    if (v58 < v61 + v58)
    {
      v62 = *(a1 + 96);
      v63 = 56 - *(a1 + 52);
      do
      {
        v64 = ((0xCF1BBCDCBF9B0000 * *(v8 + v58)) ^ v62) >> v63;
        v65 = (v64 >> 2) & 0x3FFFFFC0;
        _X23 = v21 + 4 * v65;
        __asm
        {
          PRFM            #0, [X23]
          PRFM            #0, [X23,#0x40]
        }

        _X20 = v20 + v65;
        __asm
        {
          PRFM            #0, [X20]
          PRFM            #0, [X20,#0x20]
        }

        *(v18 + 4 * (v58++ & 7)) = v64;
        --v61;
      }

      while (v61);
    }

    if (v19 < v10)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v20 = *(a1 + 56);
    v21 = *(a1 + 112);
    if (v19 < v10)
    {
LABEL_13:
      v22 = *(a1 + 8) + 8;
      v23 = 56 - *(a1 + 52);
      v24 = v19;
      v25 = v10;
      do
      {
        v26 = ((0xCF1BBCDCBF9B0000 * *(v22 + v24)) ^ *(a1 + 96)) >> v23;
        v27 = (v26 >> 2) & 0x3FFFFFC0;
        _X23 = v21 + 4 * v27;
        __asm
        {
          PRFM            #0, [X23]
          PRFM            #0, [X23,#0x40]
        }

        _X20 = v20 + v27;
        __asm
        {
          PRFM            #0, [X20]
          PRFM            #0, [X20,#0x20]
        }

        v37 = *(v18 + 4 * (v24 & 7));
        *(v18 + 4 * (v24 & 7)) = v26;
        v38 = (v37 >> 2) & 0x3FFFFFC0;
        v39 = v21 + 4 * v38;
        v40 = (v20 + v38);
        if (((*v40 - 1) & 0x3F) != 0)
        {
          v41 = 0;
        }

        else
        {
          v41 = 63;
        }

        v42 = v41 + ((*v40 - 1) & 0x3F);
        *v40 = v42;
        v40[v42] = v37;
        *(v39 + 4 * v42) = v24++;
      }

      while (v10 != v24);
      goto LABEL_37;
    }
  }

  v25 = v10;
LABEL_37:
  *(a1 + 44) = v10;
  v72 = ((0xCF1BBCDCBF9B0000 * *(v8 + v25 + 8)) ^ v16) >> (56 - v7);
  v73 = (v72 >> 2) & 0x3FFFFFC0;
  _X17 = v5 + 4 * v73;
  __asm
  {
    PRFM            #0, [X17]
    PRFM            #0, [X17,#0x40]
  }

  _X14 = v6 + v73;
  __asm
  {
    PRFM            #0, [X14]
    PRFM            #0, [X14,#0x20]
  }

  LODWORD(_X14) = *(v18 + 4 * (v10 & 7));
  *(v18 + 4 * (v10 & 7)) = v72;
LABEL_38:
  *(a1 + 104) += _X14;
  v79 = (_X14 >> 2) & 0x3FFFFFC0;
  v80 = v5 + 4 * v79;
  v81 = (v6 + v79);
  v82 = *v81;
  v118 = vld4q_s8(v81);
  v83 = vdupq_n_s8(_X14);
  v118.val[0] = vsriq_n_s8(vsriq_n_s8(vceqq_s8(v118.val[3], v83), vceqq_s8(v118.val[2], v83), 1uLL), vsriq_n_s8(vceqq_s8(v118.val[1], v83), vceqq_s8(v118.val[0], v83), 1uLL), 2uLL);
  v84 = vshrn_n_s16(vsriq_n_s8(v118.val[0], v118.val[0], 4uLL), 4uLL);
  v85 = 0;
  if (v84)
  {
    v86 = 1 << v15;
    v87 = __ROR8__(*&v84, v82);
    do
    {
      v88 = (__clz(__rbit64(v87)) + v82) & 0x3F;
      if (v88)
      {
        v89 = *(v80 + 4 * v88);
        if (v89 < v14)
        {
          break;
        }

        if (v89 >= v12)
        {
          v90 = v8;
        }

        else
        {
          v90 = v9;
        }

        _X1 = v90 + v89;
        __asm { PRFM            #0, [X1] }

        v116[v85++] = v89;
        --v86;
      }

      v87 &= v87 - 1;
    }

    while (v87 && v86);
  }

  if (((v82 - 1) & 0x3F) != 0)
  {
    v93 = 0;
  }

  else
  {
    v93 = 63;
  }

  v94 = v93 + ((v82 - 1) & 0x3F);
  *v81 = v94;
  v81[v94] = _X14;
  v95 = *(a1 + 44);
  *(a1 + 44) = v95 + 1;
  *(v80 + 4 * v94) = v95;
  if (v85)
  {
    v96 = 0;
    v97 = a3 - 7;
    v111 = a3 - 1;
    v112 = a3 - 3;
    v113 = v10 + 3;
    v110 = v8 + 8;
    v98 = 3;
    while (1)
    {
      v100 = v116[v96];
      if (v100 >= v12)
      {
        v104 = (v8 + v100);
        if (*(v8 + v100 + v98 - 3) != *(a2 - 3 + v98))
        {
          goto LABEL_53;
        }

        if (v97 <= a2)
        {
          v107 = a2;
        }

        else
        {
          v105 = *v104;
          if (v105 != *a2)
          {
            result = __clz(__rbit64(*a2 ^ v105)) >> 3;
            if (result <= v98)
            {
              goto LABEL_53;
            }

            goto LABEL_79;
          }

          v106 = (a2 + 8);
          v104 = (v110 + v100);
          while (1)
          {
            v107 = v106;
            if (v106 >= v97)
            {
              break;
            }

            v109 = *v104;
            v104 += 4;
            v108 = v109;
            ++v106;
            if (v109 != *v107)
            {
              result = v107 + (__clz(__rbit64(*v107 ^ v108)) >> 3) - a2;
              if (result <= v98)
              {
                goto LABEL_53;
              }

              goto LABEL_79;
            }
          }
        }

        if (v107 < v112 && *v104 == *v107)
        {
          v104 += 2;
          v107 = (v107 + 4);
        }

        if (v107 < v111 && *v104 == *v107)
        {
          ++v104;
          v107 = (v107 + 2);
        }

        if (v107 < a3 && *v104 == *v107)
        {
          v107 = (v107 + 1);
        }

        result = v107 - a2;
        if (v107 - a2 <= v98)
        {
          goto LABEL_53;
        }
      }

      else
      {
        if (*(v9 + v100) != *a2)
        {
          goto LABEL_53;
        }

        v101 = (v8 + v12);
        v102 = a3;
        v103 = ZSTD_count_2segments((a2 + 4), (v9 + v100 + 4), a3, (v9 + v12), v101);
        a3 = v102;
        v8 = v115;
        result = v103 + 4;
        if (result <= v98)
        {
          goto LABEL_53;
        }
      }

LABEL_79:
      *a4 = v113 - v100;
      v98 = result;
      if (a2 + result == a3)
      {
        return result;
      }

LABEL_53:
      ++v96;
      result = v98;
      if (v96 == v85)
      {
        return result;
      }
    }
  }

  return 3;
}

unint64_t ZSTD_compressBlock_lazy_extDict(uint64_t a1, uint64_t a2, _DWORD *a3, unsigned __int8 *a4, uint64_t a5)
{
  v5 = a4;
  v6 = &a4[a5];
  v7 = &a4[a5 - 8];
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  v10 = *(a1 + 24);
  v11 = *(a1 + 28);
  v12 = *(a1 + 256);
  v13 = *(a1 + 272);
  if (v13 >= 6)
  {
    v13 = 6;
  }

  if (v13 <= 4)
  {
    v13 = 4;
  }

  v137 = v13;
  LODWORD(v14) = *a3;
  v134 = a3[1];
  *(a1 + 300) = 0;
  v128 = (v8 + v10);
  if ((v8 + v10) == v5)
  {
    v15 = (v5 + 1);
  }

  else
  {
    v15 = v5;
  }

  if (v15 < v7)
  {
    v16 = a2;
    v17 = a1;
    v18 = (v9 + v10);
    v121 = (v9 + v11);
    v19 = 1 << v12;
    v20 = v10 - 1;
    v120 = v6 - 7;
    v124 = v6 - 1;
    v125 = v6 - 3;
    v119 = 1 - v8;
    v117 = 1 - v8 - (1 << v12);
    v118 = v10 + v8 - 2;
    v116 = v10 + v8 + 8;
    v135 = v10;
    v127 = (v9 + v10);
    v133 = 1 << v12;
    v126 = v10 - 1;
    v136 = v6;
    v131 = v8;
    v132 = v9;
    v123 = (v6 - 32);
    while (1)
    {
      v22 = 0;
      v23 = v15 - v8 + 1;
      if (v23 - v17[7] > v19 && v17[10] == 0)
      {
        v25 = v23 - v19;
      }

      else
      {
        v25 = v17[7];
      }

      v26 = (v23 - v14);
      if (v26 >= v10)
      {
        v27 = v8;
      }

      else
      {
        v27 = v9;
      }

      if ((v20 - v26) >= 3 && v14 <= v23 - v25)
      {
        if (*(v15 + 1) == *(v27 + v26))
        {
          if (v26 >= v10)
          {
            v28 = v6;
          }

          else
          {
            v28 = v18;
          }

          v29 = ZSTD_count_2segments(v15 + 5, (v27 + v26 + 4), v6, v28, v128);
          v17 = a1;
          v22 = v29 + 4;
        }

        else
        {
          v22 = 0;
        }
      }

      *v139 = 999999999;
      v130 = v14;
      if (v137 == 6)
      {
        v31 = v15 + 1;
        v30 = v16;
        v32 = v8;
        v33 = v6;
        BestMatch_extDict_6 = ZSTD_HcFindBestMatch_extDict_6(v17, v15, v6, v139);
      }

      else
      {
        v30 = v16;
        if (v137 == 5)
        {
          v31 = v15 + 1;
          v32 = v8;
          v33 = v6;
          BestMatch_extDict_6 = ZSTD_HcFindBestMatch_extDict_5(v17, v15, v6, v139);
        }

        else
        {
          v32 = v8;
          v31 = v15 + 1;
          v33 = v6;
          BestMatch_extDict_6 = ZSTD_HcFindBestMatch_extDict_4(v17, v15, v6, v139);
        }
      }

      if (BestMatch_extDict_6 <= v22)
      {
        v35 = v22;
      }

      else
      {
        v35 = BestMatch_extDict_6;
      }

      if (v35 < 4)
      {
        v21 = v15 - v5;
        v15 += ((v15 - v5) >> 8) + 1;
        v17 = a1;
        *(a1 + 300) = v21 > 0x8FF;
        LODWORD(v10) = v135;
        v18 = v127;
        v19 = v133;
        v20 = v126;
        v6 = v33;
        v8 = v32;
        v16 = v30;
        LODWORD(v14) = v130;
        goto LABEL_11;
      }

      v17 = a1;
      v36 = BestMatch_extDict_6 <= v22 ? 1 : *v139;
      v37 = (BestMatch_extDict_6 <= v22 ? v31 : v15);
      if (v15 >= v7)
      {
        v6 = v33;
        v8 = v32;
        v16 = v30;
        v14 = v130;
      }

      else
      {
        v38 = 0;
        v14 = v130;
        v39 = v118 + v130 - v15;
        v129 = v119 + v15;
        while (1)
        {
          v40 = v7;
          v41 = &v15[v38 + 1];
          if (v36)
          {
            v42 = v117 + v15 + v38;
            if (v129 + v38 - v17[7] <= v133 || v17[10] != 0)
            {
              v42 = v17[7];
            }

            v44 = v119 + v15 - v130 + v38;
            v45 = v131;
            if (v44 < v135)
            {
              v45 = v132;
            }

            if (v39 >= 3 && v130 <= v129 + v38 - v42 && *v41 == *(v45 + v44))
            {
              if (v44 >= v135)
              {
                v46 = v136;
              }

              else
              {
                v46 = v127;
              }

              v47 = ZSTD_count_2segments(&v15[v38 + 5], (v45 + v44 + 4), v136, v46, v128);
              if (v47 > 0xFFFFFFFFFFFFFFFBLL)
              {
                v17 = a1;
              }

              else
              {
                v17 = a1;
                if (3 * (v47 + 4) > (__clz(v36) + 3 * v35 - 30))
                {
                  v37 = &v15[v38 + 1];
                  v36 = 1;
                  v35 = v47 + 4;
                }
              }
            }
          }

          *v139 = 999999999;
          v48 = &v15[v38 + 1];
          if (v137 == 6)
          {
            v49 = ZSTD_HcFindBestMatch_extDict_6(v17, v48, v136, v139);
          }

          else
          {
            v49 = v137 == 5 ? ZSTD_HcFindBestMatch_extDict_5(v17, v48, v136, v139) : ZSTD_HcFindBestMatch_extDict_4(v17, v48, v136, v139);
          }

          v17 = a1;
          if (v49 < 4 || (__clz(v139[0]) + 4 * v49 - 31) <= (__clz(v36) + 4 * v35 - 27))
          {
            break;
          }

          ++v38;
          --v39;
          v35 = v49;
          v36 = *v139;
          v37 = v41;
          v7 = v40;
          if (&v15[v38] >= v40)
          {
            v37 = &v15[v38];
            v36 = *v139;
            v35 = v49;
            v6 = v136;
            v16 = a2;
            goto LABEL_75;
          }
        }

        v6 = v136;
        v16 = a2;
        v7 = v40;
LABEL_75:
        v8 = v131;
      }

      if (v36 > 3)
      {
        v50 = v37 - (v36 + v8) + 3;
        if (v135 <= v50)
        {
          v51 = v8;
        }

        else
        {
          v51 = v132;
        }

        v52 = v128;
        if (v135 > v50)
        {
          v52 = v121;
        }

        if (v37 > v5)
        {
          v53 = v50;
          if (v51 + v50 > v52)
          {
            v54 = (v37 - 1);
            v55 = (v51 + v53 - 1);
            while (*v54 == *v55)
            {
              ++v35;
              v56 = v54 - 1;
              if (v54 > v5)
              {
                --v54;
                if (v55-- > v52)
                {
                  continue;
                }
              }

              v37 = (v56 + 1);
              goto LABEL_90;
            }

            v37 = (v54 + 1);
          }
        }

LABEL_90:
        v134 = v14;
        v14 = (v36 - 3);
      }

      v58 = v37 - v5;
      v59 = *(v16 + 24);
      if (v37 > v123)
      {
        break;
      }

      *v59 = *v5;
      v66 = *(v16 + 24);
      if (v58 > 0x10)
      {
        *(v66 + 16) = *(v5 + 1);
        if (v58 >= 33)
        {
          v67 = v66 + v58;
          v68 = (v66 + 32);
          v69 = (v5 + 48);
          do
          {
            *v68 = *(v69 - 1);
            v70 = *v69;
            v69 += 2;
            v68[1] = v70;
            v68 += 2;
          }

          while (v68 < v67);
        }

        goto LABEL_120;
      }

      *(v16 + 24) = v66 + v58;
      v71 = *(v16 + 8);
LABEL_122:
      *(v71 + 4) = v58;
      *v71 = v36;
      if (v35 - 3 >= 0x10000)
      {
        v84 = (v71 - *v16) >> 3;
        *(v16 + 72) = 2;
        *(v16 + 76) = v84;
      }

      *(v71 + 6) = v35 - 3;
      v85 = v71 + 8;
      *(v16 + 8) = v71 + 8;
      v9 = v132;
      if (v17[75])
      {
        v17[75] = 0;
      }

      v5 = (v37 + v35);
      if (v37 + v35 > v7)
      {
        v15 = (v37 + v35);
        LODWORD(v10) = v135;
        v18 = v127;
        v19 = v133;
        v20 = v126;
        goto LABEL_11;
      }

      v86 = v14;
      v19 = v133;
      v87 = v134;
      LODWORD(v10) = v135;
      v18 = v127;
      v20 = v126;
      while (1)
      {
        v14 = v87;
        v87 = v86;
        v88 = v5 - v8;
        v89 = v17[7];
        if (v5 - v8 - v89 > v133 && v17[10] == 0)
        {
          v89 = v5 - v8 - v133;
        }

        v91 = (v88 - v14);
        v92 = v91 >= v135 ? v8 : v132;
        if ((v126 - v91) < 3)
        {
          break;
        }

        if (v14 > v88 - v89)
        {
          break;
        }

        v93 = v92 + v91;
        if (*v5 != *(v92 + v91))
        {
          break;
        }

        if (v91 >= v135)
        {
          v94 = v6;
        }

        else
        {
          v94 = v127;
        }

        v95 = (v5 + 4);
        v96 = (v93 + 4);
        v97 = v94 + v5 - v93;
        if (v97 >= v6)
        {
          v97 = v6;
        }

        if (v97 - 7 <= v95)
        {
          v98 = v96;
          v100 = v5 + 4;
        }

        else
        {
          if (*v96 != *v95)
          {
            v103 = __clz(__rbit64(*v95 ^ *v96)) >> 3;
            goto LABEL_164;
          }

          v98 = (v92 + v91 + 12);
          v99 = (v5 + 12);
          while (1)
          {
            v100 = v99;
            if (v99 >= (v97 - 7))
            {
              break;
            }

            v102 = *v98;
            v98 += 4;
            v101 = v102;
            v99 += 8;
            if (v102 != *v100)
            {
              v103 = v100 + (__clz(__rbit64(*v100 ^ v101)) >> 3) - v95;
              goto LABEL_164;
            }
          }
        }

        if (v100 < (v97 - 3) && *v98 == *v100)
        {
          v98 += 2;
          v100 = (v100 + 4);
        }

        if (v100 < (v97 - 1) && *v98 == *v100)
        {
          ++v98;
          v100 = (v100 + 2);
        }

        if (v100 < v97 && *v98 == *v100)
        {
          v100 = (v100 + 1);
        }

        v103 = v100 - v95;
LABEL_164:
        if ((v96 + v103) == v94)
        {
          v105 = &v95[v103];
          if (v120 > v105)
          {
            if (*v128 == *v105)
            {
              v106 = 0;
              v107 = &v5[v103];
              while (1)
              {
                v108 = &v107[v106 + 12];
                if (v108 >= v120)
                {
                  break;
                }

                v109 = *(v116 + v106);
                v110 = *v108;
                v106 += 8;
                if (v109 != v110)
                {
                  v111 = &v107[v106 + 4 + (__clz(__rbit64(v110 ^ v109)) >> 3)];
                  goto LABEL_187;
                }
              }

              v112 = (v116 + v106);
              v111 = &v5[v103 + 12 + v106];
LABEL_178:
              if (v111 < v125 && *v112 == *v111)
              {
                v112 = (v112 + 4);
                v111 += 4;
              }

              if (v111 < v124 && *v112 == *v111)
              {
                v112 = (v112 + 2);
                v111 += 2;
              }

              if (v111 < v6 && *v112 == *v111)
              {
                ++v111;
              }

LABEL_187:
              v113 = v111 - v105;
            }

            else
            {
              v113 = __clz(__rbit64(*v105 ^ *v128)) >> 3;
            }

            v103 += v113;
            if (v5 > v123)
            {
              goto LABEL_167;
            }

LABEL_166:
            **(v16 + 24) = *v5;
            v85 = *(v16 + 8);
            goto LABEL_167;
          }

          v112 = v128;
          v111 = v105;
          goto LABEL_178;
        }

        if (v5 <= v123)
        {
          goto LABEL_166;
        }

LABEL_167:
        *(v85 + 4) = 0;
        *v85 = 1;
        if (v103 + 1 >= 0x10000)
        {
          v104 = (v85 - *v16) >> 3;
          *(v16 + 72) = 2;
          *(v16 + 76) = v104;
        }

        *(v85 + 6) = v103 + 1;
        v85 += 8;
        v5 += v103 + 4;
        *(v16 + 8) = v85;
        v86 = v14;
        v134 = v87;
        v15 = v5;
        if (v5 > v7)
        {
          goto LABEL_11;
        }
      }

      v134 = v14;
      LODWORD(v14) = v86;
      v15 = v5;
LABEL_11:
      if (v15 >= v7)
      {
        goto LABEL_191;
      }
    }

    if (v5 <= v123)
    {
      v60 = (v59 + v123 - v5);
      *v59 = *v5;
      if (v123 - v5 >= 17)
      {
        v61 = v59 + 1;
        v62 = (v5 + 32);
        do
        {
          *v61 = *(v62 - 1);
          v63 = *v62;
          v62 += 2;
          v61[1] = v63;
          v61 += 2;
        }

        while (v61 < v60);
      }

      v5 = v123;
      v59 = v60;
    }

    if (v5 < v37)
    {
      v64 = v37 - v5;
      if (v37 - v5 < 8)
      {
        v72 = v59;
        goto LABEL_119;
      }

      if ((v59 - v5) < 0x20)
      {
        v72 = v59;
        goto LABEL_119;
      }

      if (v64 >= 0x20)
      {
        v65 = v64 & 0xFFFFFFFFFFFFFFE0;
        v73 = (v5 + 16);
        v74 = v59 + 1;
        v75 = v64 & 0xFFFFFFFFFFFFFFE0;
        do
        {
          v76 = *v73;
          *(v74 - 1) = *(v73 - 1);
          *v74 = v76;
          v73 += 2;
          v74 += 2;
          v75 -= 32;
        }

        while (v75);
        if (v64 == v65)
        {
          goto LABEL_120;
        }

        if ((v64 & 0x18) == 0)
        {
          v5 += v65;
          v72 = v59 + v65;
          do
          {
LABEL_119:
            v82 = *v5++;
            *v72++ = v82;
          }

          while (v5 != v37);
          goto LABEL_120;
        }
      }

      else
      {
        v65 = 0;
      }

      v77 = v64 & 0xFFFFFFFFFFFFFFF8;
      v72 = v59 + (v64 & 0xFFFFFFFFFFFFFFF8);
      v78 = v65 - (v64 & 0xFFFFFFFFFFFFFFF8);
      v79 = &v5[v65];
      v80 = (v59 + v65);
      do
      {
        v81 = *v79++;
        *v80++ = v81;
        v78 += 8;
      }

      while (v78);
      if (v64 != v77)
      {
        v5 += v77;
        goto LABEL_119;
      }
    }

LABEL_120:
    *(v16 + 24) += v58;
    v71 = *(v16 + 8);
    if (v58 >= 0x10000)
    {
      v83 = (v71 - *v16) >> 3;
      *(v16 + 72) = 1;
      *(v16 + 76) = v83;
    }

    goto LABEL_122;
  }

LABEL_191:
  *a3 = v14;
  a3[1] = v134;
  return v6 - v5;
}

unint64_t ZSTD_compressBlock_lazy_extDict_row(uint64_t a1, uint64_t a2, unsigned int *a3, unsigned __int8 *a4, uint64_t a5)
{
  v5 = a4;
  v7 = a1;
  v8 = &a4[a5];
  v9 = &a4[a5 - 16];
  v10 = *(a1 + 8);
  v11 = *(a1 + 16);
  v13 = *(a1 + 24);
  v12 = *(a1 + 28);
  v14 = *(a1 + 256);
  v15 = *(a1 + 272);
  if (v15 >= 6)
  {
    v15 = 6;
  }

  if (v15 <= 4)
  {
    v16 = 4;
  }

  else
  {
    v16 = v15;
  }

  v17 = *(a1 + 268);
  v195 = v17;
  if (v17 >= 6)
  {
    v17 = 6;
  }

  if (v17 <= 4)
  {
    v17 = 4;
  }

  v213 = v17;
  v18 = *a3;
  v205 = a3[1];
  *(a1 + 300) = 0;
  v199 = (v10 + v13);
  if ((v10 + v13) == a4)
  {
    v19 = (a4 + 1);
  }

  else
  {
    v19 = a4;
  }

  v20 = *(a1 + 44);
  v21 = v9 - (v10 + v20);
  if ((v21 + 1) < 8)
  {
    v22 = v21 + 1;
  }

  else
  {
    v22 = 8;
  }

  if (v9 >= v10 + v20)
  {
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  v24 = (v23 + v20);
  if (v20 < v24)
  {
    v25 = *(a1 + 112);
    v26 = *(a1 + 56);
    v27 = *(a1 + 52);
    v28 = *(a1 + 96);
    v29 = 56 - v27;
    v30 = 24 - v27;
    v31 = a1 + 64;
    if (v195 > 4)
    {
      if (v195 == 5)
      {
        do
        {
          if (v16 == 6)
          {
            v42 = ((0xCF1BBCDCBF9B0000 * *(v10 + v20)) ^ v28) >> v29;
            v43 = v213;
          }

          else
          {
            v43 = v213;
            if (v16 == 5)
            {
              v42 = ((0xCF1BBCDCBB000000 * *(v10 + v20)) ^ v28) >> v29;
            }

            else
            {
              LODWORD(v42) = ((-1640531535 * *(v10 + v20)) ^ v28) >> v30;
            }
          }

          v44 = v42 >> 8 << v43;
          _X5 = v25 + 4 * v44;
          __asm
          {
            PRFM            #0, [X5]
            PRFM            #0, [X5,#0x40]
          }

          _X4 = v26 + v44;
          __asm { PRFM            #0, [X4] }

          *(v31 + 4 * (v20++ & 7)) = v42;
        }

        while (v24 != v20);
      }

      else if (v16 == 6)
      {
        do
        {
          v58 = ((0xCF1BBCDCBF9B0000 * *(v10 + v20)) ^ v28) >> v29;
          v59 = v58 >> 8 << v213;
          _X2 = v25 + 4 * v59;
          __asm
          {
            PRFM            #0, [X2]
            PRFM            #0, [X2,#0x40]
          }

          _X1 = v26 + v59;
          __asm
          {
            PRFM            #0, [X1]
            PRFM            #0, [X1,#0x20]
          }

          *(v31 + 4 * (v20++ & 7)) = v58;
        }

        while (v24 != v20);
      }

      else if (v16 == 5)
      {
        do
        {
          v50 = ((0xCF1BBCDCBB000000 * *(v10 + v20)) ^ v28) >> v29;
          v51 = v50 >> 8 << v213;
          _X2 = v25 + 4 * v51;
          __asm
          {
            PRFM            #0, [X2]
            PRFM            #0, [X2,#0x40]
          }

          _X1 = v26 + v51;
          __asm
          {
            PRFM            #0, [X1]
            PRFM            #0, [X1,#0x20]
          }

          *(v31 + 4 * (v20++ & 7)) = v50;
        }

        while (v24 != v20);
      }

      else
      {
        do
        {
          v66 = ((-1640531535 * *(v10 + v20)) ^ v28) >> v30;
          v67 = v66 >> 8 << v213;
          _X2 = v25 + 4 * v67;
          __asm
          {
            PRFM            #0, [X2]
            PRFM            #0, [X2,#0x40]
          }

          _X1 = v26 + v67;
          __asm
          {
            PRFM            #0, [X1]
            PRFM            #0, [X1,#0x20]
          }

          *(v31 + 4 * (v20++ & 7)) = v66;
        }

        while (v24 != v20);
      }
    }

    else
    {
      do
      {
        if (v16 == 6)
        {
          v32 = ((0xCF1BBCDCBF9B0000 * *(v10 + v20)) ^ v28) >> v29;
          v33 = v213;
        }

        else
        {
          v33 = v213;
          if (v16 == 5)
          {
            v32 = ((0xCF1BBCDCBB000000 * *(v10 + v20)) ^ v28) >> v29;
          }

          else
          {
            LODWORD(v32) = ((-1640531535 * *(v10 + v20)) ^ v28) >> v30;
          }
        }

        v34 = v32 >> 8 << v33;
        _X5 = v25 + 4 * v34;
        __asm { PRFM            #0, [X5] }

        _X4 = v26 + v34;
        __asm { PRFM            #0, [X4] }

        *(v31 + 4 * (v20++ & 7)) = v32;
      }

      while (v24 != v20);
    }
  }

  if (v19 < v9)
  {
    v204 = (v11 + v13);
    v192 = (v11 + v12);
    v207 = v13 - 1;
    v194 = v7 + 64;
    v211 = v8 - 7;
    v196 = v8 - 1;
    v197 = v8 - 3;
    v191 = 1 - v10;
    v190 = v13 + v10 - 2;
    v212 = 1 << v14;
    v189 = 1 - v10 - (1 << v14);
    v208 = v13 + v10 + 8;
    v210 = v7;
    v206 = v13;
    v209 = v16;
    v74 = v213;
    v193 = a2;
    v202 = v10;
    v203 = v9;
    v201 = v11;
    v198 = (v8 - 32);
    while (1)
    {
      v76 = 0;
      v77 = v19 - v10 + 1;
      if (v77 - *(v7 + 28) > v212 && *(v7 + 40) == 0)
      {
        v79 = v77 - v212;
      }

      else
      {
        v79 = *(v7 + 28);
      }

      v80 = (v77 - v18);
      if (v80 >= v13)
      {
        v81 = v10;
      }

      else
      {
        v81 = v11;
      }

      if ((v207 - v80) >= 3 && v18 <= v77 - v79)
      {
        if (*(v19 + 1) == *(v81 + v80))
        {
          if (v80 >= v13)
          {
            v82 = v8;
          }

          else
          {
            v82 = v204;
          }

          v83 = ZSTD_count_2segments((v19 + 5), (v81 + v80 + 4), v8, v82, v199);
          v74 = v213;
          v16 = v209;
          v7 = v210;
          v76 = v83 + 4;
        }

        else
        {
          v76 = 0;
        }
      }

      *v214 = 999999999;
      if (v16 == 6)
      {
        if (v74 == 6)
        {
          BestMatch_extDict_6_6 = ZSTD_RowFindBestMatch_extDict_6_6(v7, v19, v8, v214);
        }

        else if (v74 == 5)
        {
          BestMatch_extDict_6_6 = ZSTD_RowFindBestMatch_extDict_6_5(v7, v19, v8, v214);
        }

        else
        {
          BestMatch_extDict_6_6 = ZSTD_RowFindBestMatch_extDict_6_4(v7, v19, v8, v214);
        }
      }

      else if (v16 == 5)
      {
        if (v74 == 6)
        {
          BestMatch_extDict_6_6 = ZSTD_RowFindBestMatch_extDict_5_6(v7, v19, v8, v214);
        }

        else if (v74 == 5)
        {
          BestMatch_extDict_6_6 = ZSTD_RowFindBestMatch_extDict_5_5(v7, v19, v8, v214);
        }

        else
        {
          BestMatch_extDict_6_6 = ZSTD_RowFindBestMatch_extDict_5_4(v7, v19, v8, v214);
        }
      }

      else if (v74 == 6)
      {
        BestMatch_extDict_6_6 = ZSTD_RowFindBestMatch_extDict_4_6(v7, v19, v8, v214);
      }

      else if (v74 == 5)
      {
        BestMatch_extDict_6_6 = ZSTD_RowFindBestMatch_extDict_4_5(v7, v19, v8, v214);
      }

      else
      {
        BestMatch_extDict_6_6 = ZSTD_RowFindBestMatch_extDict_4_4(v7, v19, v8, v214);
      }

      if (BestMatch_extDict_6_6 <= v76)
      {
        v13 = v76;
      }

      else
      {
        v13 = BestMatch_extDict_6_6;
      }

      if (v13 < 4)
      {
        v75 = v19 - v5;
        v19 += ((v19 - v5) >> 8) + 1;
        v7 = v210;
        *(v210 + 300) = v75 > 0x8FF;
        v10 = v202;
        LODWORD(v13) = v206;
        v16 = v209;
        v74 = v213;
        goto LABEL_46;
      }

      v85 = BestMatch_extDict_6_6 > v76;
      if (BestMatch_extDict_6_6 <= v76)
      {
        v86 = 1;
      }

      else
      {
        v86 = *v214;
      }

      if (v85)
      {
        v87 = v19;
      }

      else
      {
        v87 = v19 + 1;
      }

      v7 = v210;
      v16 = v209;
      v74 = v213;
      if (v19 < v9)
      {
        v88 = v8;
        v89 = 0;
        v90 = v190 + v18 - v19;
        v200 = v191 + v19;
        while (1)
        {
          v91 = (v19 + v89 + 1);
          if (v86)
          {
            v92 = v189 + v19 + v89;
            if (v200 + v89 - *(v7 + 28) <= v212 || *(v7 + 40) != 0)
            {
              v92 = *(v7 + 28);
            }

            v94 = (v191 + v19 - v18 + v89);
            v95 = v202;
            if (v94 < v206)
            {
              v95 = v201;
            }

            if (v90 >= 3 && v18 <= v200 + v89 - v92 && *v91 == *(v95 + v94))
            {
              if (v94 >= v206)
              {
                v96 = v88;
              }

              else
              {
                v96 = v204;
              }

              v97 = ZSTD_count_2segments((v19 + v89 + 5), (v95 + v94 + 4), v88, v96, v199);
              if (v97 > 0xFFFFFFFFFFFFFFFBLL)
              {
                v7 = v210;
                v74 = v213;
              }

              else
              {
                v7 = v210;
                v74 = v213;
                if (3 * (v97 + 4) > (__clz(v86) + 3 * v13 - 30))
                {
                  v87 = v19 + v89 + 1;
                  v86 = 1;
                  v13 = v97 + 4;
                }
              }
            }
          }

          *v214 = 999999999;
          v98 = v19 + v89 + 1;
          if (v209 == 6)
          {
            if (v74 == 6)
            {
              BestMatch_extDict_5_6 = ZSTD_RowFindBestMatch_extDict_6_6(v7, v98, v88, v214);
            }

            else
            {
              BestMatch_extDict_5_6 = v74 == 5 ? ZSTD_RowFindBestMatch_extDict_6_5(v7, v98, v88, v214) : ZSTD_RowFindBestMatch_extDict_6_4(v7, v98, v88, v214);
            }
          }

          else if (v209 == 5)
          {
            if (v74 == 6)
            {
              BestMatch_extDict_5_6 = ZSTD_RowFindBestMatch_extDict_5_6(v7, v98, v88, v214);
            }

            else
            {
              BestMatch_extDict_5_6 = v74 == 5 ? ZSTD_RowFindBestMatch_extDict_5_5(v7, v98, v88, v214) : ZSTD_RowFindBestMatch_extDict_5_4(v7, v98, v88, v214);
            }
          }

          else if (v74 == 6)
          {
            BestMatch_extDict_5_6 = ZSTD_RowFindBestMatch_extDict_4_6(v7, v98, v88, v214);
          }

          else
          {
            BestMatch_extDict_5_6 = v74 == 5 ? ZSTD_RowFindBestMatch_extDict_4_5(v7, v98, v88, v214) : ZSTD_RowFindBestMatch_extDict_4_4(v7, v98, v88, v214);
          }

          v7 = v210;
          v16 = v209;
          v74 = v213;
          if (BestMatch_extDict_5_6 < 4 || (__clz(v214[0]) + 4 * BestMatch_extDict_5_6 - 31) <= (__clz(v86) + 4 * v13 - 27))
          {
            break;
          }

          ++v89;
          --v90;
          v13 = BestMatch_extDict_5_6;
          v86 = *v214;
          v87 = v91;
          if (v19 + v89 >= v203)
          {
            v87 = v19 + v89;
            v86 = *v214;
            v13 = BestMatch_extDict_5_6;
            break;
          }
        }

        v8 = v88;
        a2 = v193;
        v9 = v203;
      }

      v10 = v202;
      if (v86 > 3)
      {
        v100 = v87 - (v86 + v202) + 3;
        if (v206 <= v100)
        {
          v101 = v202;
        }

        else
        {
          v101 = v201;
        }

        v102 = v199;
        if (v206 > v100)
        {
          v102 = v192;
        }

        if (v87 > v5)
        {
          v103 = v100;
          if (v101 + v100 > v102)
          {
            v104 = (v87 - 1);
            v105 = (v101 + v103 - 1);
            while (*v104 == *v105)
            {
              ++v13;
              v106 = v104 - 1;
              if (v104 > v5)
              {
                --v104;
                v85 = v105-- > v102;
                if (v85)
                {
                  continue;
                }
              }

              v87 = (v106 + 1);
              goto LABEL_147;
            }

            v87 = (v104 + 1);
          }
        }

LABEL_147:
        v205 = v18;
        v18 = (v86 - 3);
      }

      v107 = v87 - v5;
      v108 = *(a2 + 24);
      if (v87 > v198)
      {
        break;
      }

      *v108 = *v5;
      v110 = *(a2 + 24);
      if (v107 > 0x10)
      {
        *(v110 + 16) = *(v5 + 1);
        if (v107 >= 33)
        {
          v111 = v110 + v107;
          v112 = (v110 + 32);
          v113 = (v5 + 48);
          do
          {
            *v112 = *(v113 - 1);
            v114 = *v113;
            v113 += 2;
            v112[1] = v114;
            v112 += 2;
          }

          while (v112 < v111);
        }

        goto LABEL_179;
      }

      *(a2 + 24) = v110 + v107;
      v115 = *(a2 + 8);
      v116 = v195;
      v117 = v194;
LABEL_181:
      *(v115 + 4) = v107;
      *v115 = v86;
      if (v13 - 3 >= 0x10000)
      {
        v135 = (v115 - *a2) >> 3;
        *(a2 + 72) = 2;
        *(a2 + 76) = v135;
      }

      *(v115 + 6) = v13 - 3;
      v136 = v115 + 8;
      *(a2 + 8) = v115 + 8;
      if (*(v7 + 300))
      {
        v137 = *(v7 + 44);
        v138 = v9 - (v202 + v137);
        if ((v138 + 1) < 8)
        {
          v139 = v138 + 1;
        }

        else
        {
          v139 = 8;
        }

        if (v9 >= v202 + v137)
        {
          v140 = v139;
        }

        else
        {
          v140 = 0;
        }

        v141 = (v140 + v137);
        if (v137 < v141)
        {
          v142 = *(v7 + 112);
          v143 = *(v7 + 56);
          v144 = *(v7 + 52);
          v145 = *(v7 + 96);
          v146 = 56 - v144;
          v147 = 24 - v144;
          do
          {
            if (v209 == 5)
            {
              v150 = 0xCF1BBCDCBB000000 * *(v202 + v137);
            }

            else
            {
              if (v209 != 6)
              {
                LODWORD(v151) = ((-1640531535 * *(v202 + v137)) ^ v145) >> v147;
                goto LABEL_200;
              }

              v150 = 0xCF1BBCDCBF9B0000 * *(v202 + v137);
            }

            v151 = (v150 ^ v145) >> v146;
LABEL_200:
            v152 = v151 >> 8 << v74;
            _X0 = v142 + 4 * v152;
            __asm { PRFM            #0, [X0] }

            if (v116 <= 4)
            {
              _X17 = v143 + v152;
              __asm { PRFM            #0, [X17] }
            }

            else
            {
              __asm { PRFM            #0, [X0,#0x40] }

              _X17 = v143 + v152;
              __asm { PRFM            #0, [X17] }

              if (v116 != 5)
              {
                __asm { PRFM            #0, [X17,#0x20] }
              }
            }

            *(v117 + 4 * (v137++ & 7)) = v151;
          }

          while (v141 != v137);
        }

        *(v7 + 300) = 0;
      }

      v5 = (v87 + v13);
      if (v87 + v13 > v9)
      {
        v19 = v87 + v13;
        v11 = v201;
        LODWORD(v13) = v206;
        goto LABEL_46;
      }

      v159 = v18;
      v160 = v205;
      v11 = v201;
      LODWORD(v13) = v206;
      while (1)
      {
        v18 = v160;
        v160 = v159;
        v161 = v5 - v202;
        v162 = *(v7 + 28);
        if (v5 - v202 - v162 > v212 && *(v7 + 40) == 0)
        {
          v162 = v5 - v202 - v212;
        }

        v164 = (v161 - v18);
        v165 = v164 >= v206 ? v202 : v201;
        if ((v207 - v164) < 3)
        {
          break;
        }

        if (v18 > v161 - v162)
        {
          break;
        }

        v166 = v165 + v164;
        if (*v5 != *(v165 + v164))
        {
          break;
        }

        if (v164 >= v206)
        {
          v167 = v8;
        }

        else
        {
          v167 = v204;
        }

        v168 = (v5 + 4);
        v169 = (v166 + 4);
        v170 = v167 + v5 - v166;
        if (v170 >= v8)
        {
          v170 = v8;
        }

        if (v170 - 7 <= v168)
        {
          v171 = v169;
          v173 = v5 + 4;
        }

        else
        {
          if (*v169 != *v168)
          {
            v176 = __clz(__rbit64(*v168 ^ *v169)) >> 3;
            goto LABEL_242;
          }

          v171 = (v165 + v164 + 12);
          v172 = (v5 + 12);
          while (1)
          {
            v173 = v172;
            if (v172 >= (v170 - 7))
            {
              break;
            }

            v175 = *v171;
            v171 += 4;
            v174 = v175;
            v172 += 8;
            if (v175 != *v173)
            {
              v176 = v173 + (__clz(__rbit64(*v173 ^ v174)) >> 3) - v168;
              goto LABEL_242;
            }
          }
        }

        if (v173 < (v170 - 3) && *v171 == *v173)
        {
          v171 += 2;
          v173 = (v173 + 4);
        }

        if (v173 < (v170 - 1) && *v171 == *v173)
        {
          ++v171;
          v173 = (v173 + 2);
        }

        if (v173 < v170 && *v171 == *v173)
        {
          v173 = (v173 + 1);
        }

        v176 = v173 - v168;
LABEL_242:
        if ((v169 + v176) == v167)
        {
          v178 = &v168[v176];
          if (v211 > v178)
          {
            if (*v199 == *v178)
            {
              v179 = 0;
              v180 = &v5[v176];
              while (1)
              {
                v181 = &v180[v179 + 12];
                if (v181 >= v211)
                {
                  break;
                }

                v182 = *(v208 + v179);
                v183 = *v181;
                v179 += 8;
                if (v182 != v183)
                {
                  v184 = &v180[v179 + 4 + (__clz(__rbit64(v183 ^ v182)) >> 3)];
                  goto LABEL_265;
                }
              }

              v185 = (v208 + v179);
              v184 = &v5[v176 + 12 + v179];
LABEL_256:
              if (v184 < v197 && *v185 == *v184)
              {
                v185 = (v185 + 4);
                v184 += 4;
              }

              if (v184 < v196 && *v185 == *v184)
              {
                v185 = (v185 + 2);
                v184 += 2;
              }

              if (v184 < v8 && *v185 == *v184)
              {
                ++v184;
              }

LABEL_265:
              v186 = v184 - v178;
            }

            else
            {
              v186 = __clz(__rbit64(*v178 ^ *v199)) >> 3;
            }

            v176 += v186;
            if (v5 > v198)
            {
              goto LABEL_245;
            }

LABEL_244:
            **(a2 + 24) = *v5;
            v136 = *(a2 + 8);
            goto LABEL_245;
          }

          v185 = v199;
          v184 = v178;
          goto LABEL_256;
        }

        if (v5 <= v198)
        {
          goto LABEL_244;
        }

LABEL_245:
        *(v136 + 4) = 0;
        *v136 = 1;
        if (v176 + 1 >= 0x10000)
        {
          v177 = (v136 - *a2) >> 3;
          *(a2 + 72) = 2;
          *(a2 + 76) = v177;
        }

        *(v136 + 6) = v176 + 1;
        v136 += 8;
        v5 += v176 + 4;
        *(a2 + 8) = v136;
        v159 = v18;
        v205 = v160;
        v19 = v5;
        if (v5 > v9)
        {
          goto LABEL_46;
        }
      }

      v205 = v18;
      v18 = v159;
      v19 = v5;
LABEL_46:
      if (v19 >= v9)
      {
        goto LABEL_269;
      }
    }

    if (v5 <= v198)
    {
      v109 = (v108 + v198 - v5);
      *v108 = *v5;
      if (v198 - v5 >= 17)
      {
        v118 = v108 + 1;
        v119 = (v5 + 32);
        do
        {
          *v118 = *(v119 - 1);
          v120 = *v119;
          v119 += 2;
          v118[1] = v120;
          v118 += 2;
        }

        while (v118 < v109);
        v5 = v198;
      }

      else
      {
        v5 = v198;
      }

      v108 = v109;
    }

    if (v5 < v87)
    {
      v121 = v87 - v5;
      if (v87 - v5 < 8)
      {
        v123 = v108;
        goto LABEL_178;
      }

      if ((v108 - v5) < 0x20)
      {
        v123 = v108;
        goto LABEL_178;
      }

      if (v121 >= 0x20)
      {
        v122 = v121 & 0xFFFFFFFFFFFFFFE0;
        v124 = (v5 + 16);
        v125 = v108 + 1;
        v126 = v121 & 0xFFFFFFFFFFFFFFE0;
        do
        {
          v127 = *v124;
          *(v125 - 1) = *(v124 - 1);
          *v125 = v127;
          v124 += 2;
          v125 += 2;
          v126 -= 32;
        }

        while (v126);
        if (v121 == v122)
        {
          goto LABEL_179;
        }

        if ((v121 & 0x18) == 0)
        {
          v5 += v122;
          v123 = v108 + v122;
          do
          {
LABEL_178:
            v133 = *v5++;
            *v123++ = v133;
          }

          while (v5 != v87);
          goto LABEL_179;
        }
      }

      else
      {
        v122 = 0;
      }

      v128 = v121 & 0xFFFFFFFFFFFFFFF8;
      v123 = v108 + (v121 & 0xFFFFFFFFFFFFFFF8);
      v129 = v122 - (v121 & 0xFFFFFFFFFFFFFFF8);
      v130 = &v5[v122];
      v131 = (v108 + v122);
      do
      {
        v132 = *v130++;
        *v131++ = v132;
        v129 += 8;
      }

      while (v129);
      if (v121 != v128)
      {
        v5 += v128;
        goto LABEL_178;
      }
    }

LABEL_179:
    *(a2 + 24) += v107;
    v115 = *(a2 + 8);
    v116 = v195;
    v117 = v194;
    if (v107 >= 0x10000)
    {
      v134 = (v115 - *a2) >> 3;
      *(a2 + 72) = 1;
      *(a2 + 76) = v134;
    }

    goto LABEL_181;
  }

LABEL_269:
  *a3 = v18;
  a3[1] = v205;
  return v8 - v5;
}

unint64_t ZSTD_compressBlock_lazy2_extDict(uint64_t a1, uint64_t a2, unsigned int *a3, unsigned __int8 *a4, uint64_t a5)
{
  v5 = a4;
  v6 = &a4[a5];
  v7 = &a4[a5 - 8];
  v9 = *(a1 + 8);
  v8 = *(a1 + 16);
  v10 = *(a1 + 24);
  v11 = *(a1 + 28);
  v12 = *(a1 + 256);
  v13 = *(a1 + 272);
  if (v13 >= 6)
  {
    v13 = 6;
  }

  if (v13 <= 4)
  {
    v13 = 4;
  }

  v137 = v13;
  v14 = *a3;
  LODWORD(v15) = a3[1];
  *(a1 + 300) = 0;
  v133 = (v9 + v10);
  if ((v9 + v10) == v5)
  {
    v16 = v5 + 1;
  }

  else
  {
    v16 = v5;
  }

  v141 = v7;
  if (v16 < v7)
  {
    v17 = a1;
    v18 = (v8 + v10);
    v124 = (v8 + v11);
    v139 = v10 - 1;
    v140 = 1 << v12;
    v126 = v6 - 7;
    v127 = v6 - 32;
    v129 = v6 - 1;
    v130 = v6 - 3;
    v125 = v10 + v9 + 8;
    v135 = v8;
    v136 = v10;
    v131 = (v8 + v10);
    v134 = v9;
    while (1)
    {
      v20 = 0;
      v21 = v16 + 1;
      v22 = v16 - v9;
      v23 = v16 - v9 + 1;
      if (v23 - v17[7] > v140 && v17[10] == 0)
      {
        v25 = v23 - v140;
      }

      else
      {
        v25 = v17[7];
      }

      v26 = (v23 - v14);
      if (v26 >= v10)
      {
        v27 = v9;
      }

      else
      {
        v27 = v8;
      }

      if ((v139 - v26) >= 3 && v14 <= v23 - v25)
      {
        if (*v21 == *(v27 + v26))
        {
          if (v26 >= v10)
          {
            v28 = v6;
          }

          else
          {
            v28 = v18;
          }

          v29 = ZSTD_count_2segments(v16 + 5, (v27 + v26 + 4), v6, v28, v133);
          v17 = a1;
          v20 = v29 + 4;
        }

        else
        {
          v20 = 0;
        }
      }

      *v142 = 999999999;
      v132 = v15;
      if (v137 == 6)
      {
        BestMatch_extDict_6 = ZSTD_HcFindBestMatch_extDict_6(v17, v16, v6, v142);
      }

      else if (v137 == 5)
      {
        BestMatch_extDict_6 = ZSTD_HcFindBestMatch_extDict_5(v17, v16, v6, v142);
      }

      else
      {
        BestMatch_extDict_6 = ZSTD_HcFindBestMatch_extDict_4(v17, v16, v6, v142);
      }

      if (BestMatch_extDict_6 <= v20)
      {
        v31 = v20;
      }

      else
      {
        v31 = BestMatch_extDict_6;
      }

      if (v31 < 4)
      {
        v19 = v16 - v5;
        v16 += ((v16 - v5) >> 8) + 1;
        v17 = a1;
        *(a1 + 300) = v19 > 0x8FF;
        v8 = v135;
        LODWORD(v10) = v136;
        v18 = v131;
        LODWORD(v15) = v132;
        goto LABEL_11;
      }

      if (BestMatch_extDict_6 <= v20)
      {
        v32 = 1;
      }

      else
      {
        v32 = *v142;
      }

      if (BestMatch_extDict_6 > v20)
      {
        v21 = v16;
      }

      v33 = v21;
      v34 = v32;
      BestMatch_extDict_5 = v31;
      v17 = a1;
      if (v16 < v141)
      {
        do
        {
          v36 = v6;
          v33 = v16 + 1;
          v37 = v22 + 1;
          if (v32)
          {
            if (v37 - v17[7] > v140 && v17[10] == 0)
            {
              v39 = v37 - v140;
            }

            else
            {
              v39 = v17[7];
            }

            v40 = (v37 - v14);
            v41 = v134;
            if (v40 < v136)
            {
              v41 = v135;
            }

            if ((v139 - v40) >= 3 && v14 <= v37 - v39)
            {
              v42 = v41 + v40;
              if (*v33 == *v42)
              {
                if (v40 >= v136)
                {
                  v43 = v36;
                }

                else
                {
                  v43 = v131;
                }

                v44 = ZSTD_count_2segments(v16 + 5, (v42 + 4), v36, v43, v133);
                if (v44 > 0xFFFFFFFFFFFFFFFBLL)
                {
                  v17 = a1;
                }

                else
                {
                  v17 = a1;
                  if (3 * (v44 + 4) > (__clz(v32) + 3 * v31 - 30))
                  {
                    v21 = v16 + 1;
                    v32 = 1;
                    v31 = v44 + 4;
                  }
                }
              }
            }
          }

          *v142 = 999999999;
          v45 = (v16 + 1);
          if (v137 == 6)
          {
            BestMatch_extDict_5 = ZSTD_HcFindBestMatch_extDict_6(v17, v45, v36, v142);
          }

          else if (v137 == 5)
          {
            BestMatch_extDict_5 = ZSTD_HcFindBestMatch_extDict_5(v17, v45, v36, v142);
          }

          else
          {
            BestMatch_extDict_5 = ZSTD_HcFindBestMatch_extDict_4(v17, v45, v36, v142);
          }

          v17 = a1;
          if (BestMatch_extDict_5 >= 4 && (v34 = *v142, (__clz(v142[0]) + 4 * BestMatch_extDict_5 - 31) > (__clz(v32) + 4 * v31 - 27)))
          {
            ++v22;
            v6 = v36;
          }

          else
          {
            if (v33 >= v141)
            {
              v33 = v21;
              v34 = v32;
              BestMatch_extDict_5 = v31;
              v6 = v36;
              break;
            }

            v33 = v16 + 2;
            v22 += 2;
            v6 = v36;
            if (v32)
            {
              if (v22 - *(a1 + 28) > v140 && *(a1 + 40) == 0)
              {
                v47 = v22 - v140;
              }

              else
              {
                v47 = *(a1 + 28);
              }

              v48 = (v22 - v14);
              v49 = v134;
              if (v48 < v136)
              {
                v49 = v135;
              }

              if ((v139 - v48) >= 3 && v14 <= v22 - v47)
              {
                v50 = v49 + v48;
                if (*v33 == *v50)
                {
                  if (v48 >= v136)
                  {
                    v51 = v36;
                  }

                  else
                  {
                    v51 = v131;
                  }

                  v52 = ZSTD_count_2segments(v16 + 6, (v50 + 4), v36, v51, v133);
                  if (v52 > 0xFFFFFFFFFFFFFFFBLL)
                  {
                    v17 = a1;
                  }

                  else
                  {
                    v17 = a1;
                    if ((__clz(v32) + 4 * v31 - 30) < 4 * (v52 + 4))
                    {
                      v21 = v16 + 2;
                      v32 = 1;
                      v31 = v52 + 4;
                    }
                  }
                }
              }
            }

            *v142 = 999999999;
            v53 = (v16 + 2);
            if (v137 == 6)
            {
              BestMatch_extDict_5 = ZSTD_HcFindBestMatch_extDict_6(v17, v53, v36, v142);
              if (BestMatch_extDict_5 < 4)
              {
                goto LABEL_102;
              }
            }

            else if (v137 == 5)
            {
              BestMatch_extDict_5 = ZSTD_HcFindBestMatch_extDict_5(v17, v53, v36, v142);
              if (BestMatch_extDict_5 < 4)
              {
                goto LABEL_102;
              }
            }

            else
            {
              BestMatch_extDict_5 = ZSTD_HcFindBestMatch_extDict_4(v17, v53, v36, v142);
              if (BestMatch_extDict_5 < 4)
              {
                goto LABEL_102;
              }
            }

            v34 = *v142;
            if ((__clz(v142[0]) + 4 * BestMatch_extDict_5 - 31) <= (__clz(v32) + 4 * v31 - 24))
            {
LABEL_102:
              v33 = v21;
              v34 = v32;
              BestMatch_extDict_5 = v31;
              v17 = a1;
              break;
            }

            v17 = a1;
          }

          v16 = v33;
          v31 = BestMatch_extDict_5;
          v32 = v34;
          v21 = v33;
        }

        while (v33 < v141);
      }

      v15 = v132;
      if (v34 <= 3)
      {
        v57 = v127;
        v58 = a2;
        v9 = v134;
        v8 = v135;
        LODWORD(v10) = v136;
        v18 = v131;
        v63 = v125;
        v62 = v126;
      }

      else
      {
        v9 = v134;
        v8 = v135;
        v54 = v33 - (v34 + v134) + 3;
        LODWORD(v10) = v136;
        if (v136 <= v54)
        {
          v55 = v134;
        }

        else
        {
          v55 = v135;
        }

        v56 = v133;
        if (v136 > v54)
        {
          v56 = v124;
        }

        v57 = v127;
        v58 = a2;
        if (v33 <= v5 || (v59 = v54, v55 + v54 <= v56))
        {
          v18 = v131;
          v63 = v125;
          v62 = v126;
        }

        else
        {
          v60 = v33 - 1;
          v61 = (v55 + v59 - 1);
          v18 = v131;
          v63 = v125;
          v62 = v126;
          while (*v60 == *v61)
          {
            ++BestMatch_extDict_5;
            v64 = v60 - 1;
            if (v60 > v5)
            {
              --v60;
              if (v61-- > v56)
              {
                continue;
              }
            }

            v33 = v64 + 1;
            goto LABEL_120;
          }

          v33 = v60 + 1;
        }

LABEL_120:
        v15 = v14;
        v14 = (v34 - 3);
      }

      v66 = v33 - v5;
      v67 = *(v58 + 24);
      if (v33 > v57)
      {
        break;
      }

      *v67 = *v5;
      v74 = *(v58 + 24);
      if (v66 > 0x10)
      {
        *(v74 + 16) = *(v5 + 1);
        if (v66 >= 33)
        {
          v75 = v74 + v66;
          v76 = (v74 + 32);
          v77 = (v5 + 48);
          do
          {
            *v76 = *(v77 - 1);
            v78 = *v77;
            v77 += 2;
            v76[1] = v78;
            v76 += 2;
          }

          while (v76 < v75);
        }

        goto LABEL_150;
      }

      *(v58 + 24) = v74 + v66;
      v79 = *(v58 + 8);
LABEL_152:
      *(v79 + 4) = v66;
      *v79 = v34;
      if (BestMatch_extDict_5 - 3 >= 0x10000)
      {
        v92 = (v79 - *v58) >> 3;
        *(v58 + 72) = 2;
        *(v58 + 76) = v92;
      }

      *(v79 + 6) = BestMatch_extDict_5 - 3;
      v93 = v79 + 8;
      *(v58 + 8) = v79 + 8;
      if (v17[75])
      {
        v17[75] = 0;
      }

      v5 = &v33[BestMatch_extDict_5];
      if (&v33[BestMatch_extDict_5] > v141)
      {
        v16 = &v33[BestMatch_extDict_5];
        goto LABEL_11;
      }

      v94 = v14;
      v95 = v15;
      while (1)
      {
        v14 = v95;
        v95 = v94;
        v96 = v5 - v9;
        v97 = v17[7];
        if (v5 - v9 - v97 > v140 && v17[10] == 0)
        {
          v97 = v5 - v9 - v140;
        }

        v99 = (v96 - v14);
        v100 = v99 >= v10 ? v9 : v8;
        if ((v139 - v99) < 3)
        {
          break;
        }

        if (v14 > v96 - v97)
        {
          break;
        }

        v101 = v100 + v99;
        if (*v5 != *(v100 + v99))
        {
          break;
        }

        if (v99 >= v10)
        {
          v102 = v6;
        }

        else
        {
          v102 = v18;
        }

        v103 = (v5 + 4);
        v104 = (v101 + 4);
        v105 = v102 + v5 - v101;
        if (v105 >= v6)
        {
          v105 = v6;
        }

        if (v105 - 7 <= v103)
        {
          v106 = v104;
          v108 = v5 + 4;
        }

        else
        {
          if (*v104 != *v103)
          {
            v111 = __clz(__rbit64(*v103 ^ *v104)) >> 3;
            goto LABEL_194;
          }

          v106 = (v100 + v99 + 12);
          v107 = (v5 + 12);
          while (1)
          {
            v108 = v107;
            if (v107 >= (v105 - 7))
            {
              break;
            }

            v110 = *v106;
            v106 += 4;
            v109 = v110;
            v107 += 8;
            if (v110 != *v108)
            {
              v111 = v108 + (__clz(__rbit64(*v108 ^ v109)) >> 3) - v103;
              goto LABEL_194;
            }
          }
        }

        if (v108 < (v105 - 3) && *v106 == *v108)
        {
          v106 += 2;
          v108 = (v108 + 4);
        }

        if (v108 < (v105 - 1) && *v106 == *v108)
        {
          ++v106;
          v108 = (v108 + 2);
        }

        if (v108 < v105 && *v106 == *v108)
        {
          v108 = (v108 + 1);
        }

        v111 = v108 - v103;
LABEL_194:
        if ((v104 + v111) == v102)
        {
          v113 = &v103[v111];
          if (v62 > v113)
          {
            if (*v133 == *v113)
            {
              v114 = 0;
              v115 = &v5[v111];
              while (1)
              {
                v116 = &v115[v114 + 12];
                if (v116 >= v62)
                {
                  break;
                }

                v117 = *(v63 + v114);
                v118 = *v116;
                v114 += 8;
                if (v117 != v118)
                {
                  v119 = &v115[v114 + 4 + (__clz(__rbit64(v118 ^ v117)) >> 3)];
                  goto LABEL_217;
                }
              }

              v120 = (v63 + v114);
              v119 = &v5[v111 + 12 + v114];
LABEL_208:
              if (v119 < v130 && *v120 == *v119)
              {
                v120 = (v120 + 4);
                v119 += 4;
              }

              if (v119 < v129 && *v120 == *v119)
              {
                v120 = (v120 + 2);
                v119 += 2;
              }

              if (v119 < v6 && *v120 == *v119)
              {
                ++v119;
              }

LABEL_217:
              v121 = v119 - v113;
            }

            else
            {
              v121 = __clz(__rbit64(*v113 ^ *v133)) >> 3;
            }

            v111 += v121;
            if (v5 > v57)
            {
              goto LABEL_197;
            }

LABEL_196:
            **(v58 + 24) = *v5;
            v93 = *(v58 + 8);
            goto LABEL_197;
          }

          v120 = v133;
          v119 = v113;
          goto LABEL_208;
        }

        if (v5 <= v57)
        {
          goto LABEL_196;
        }

LABEL_197:
        *(v93 + 4) = 0;
        *v93 = 1;
        if (v111 + 1 >= 0x10000)
        {
          v112 = (v93 - *v58) >> 3;
          *(v58 + 72) = 2;
          *(v58 + 76) = v112;
        }

        *(v93 + 6) = v111 + 1;
        v93 += 8;
        v5 += v111 + 4;
        *(v58 + 8) = v93;
        v94 = v14;
        LODWORD(v15) = v95;
        v16 = v5;
        if (v5 > v141)
        {
          goto LABEL_11;
        }
      }

      LODWORD(v15) = v14;
      v14 = v94;
      v16 = v5;
LABEL_11:
      if (v16 >= v141)
      {
        goto LABEL_221;
      }
    }

    if (v5 <= v57)
    {
      v68 = (v67 + v57 - v5);
      *v67 = *v5;
      if (v57 - v5 >= 17)
      {
        v69 = v67 + 1;
        v70 = (v5 + 32);
        do
        {
          *v69 = *(v70 - 1);
          v71 = *v70;
          v70 += 2;
          v69[1] = v71;
          v69 += 2;
        }

        while (v69 < v68);
      }

      v5 = v57;
      v67 = v68;
    }

    if (v5 < v33)
    {
      v72 = v33 - v5;
      if ((v33 - v5) < 8)
      {
        v80 = v67;
        goto LABEL_149;
      }

      if ((v67 - v5) < 0x20)
      {
        v80 = v67;
        goto LABEL_149;
      }

      if (v72 >= 0x20)
      {
        v73 = v72 & 0xFFFFFFFFFFFFFFE0;
        v81 = (v5 + 16);
        v82 = v67 + 1;
        v83 = v72 & 0xFFFFFFFFFFFFFFE0;
        do
        {
          v84 = *v81;
          *(v82 - 1) = *(v81 - 1);
          *v82 = v84;
          v81 += 2;
          v82 += 2;
          v83 -= 32;
        }

        while (v83);
        if (v72 == v73)
        {
          goto LABEL_150;
        }

        if ((v72 & 0x18) == 0)
        {
          v5 += v73;
          v80 = v67 + v73;
          do
          {
LABEL_149:
            v90 = *v5++;
            *v80++ = v90;
          }

          while (v5 != v33);
          goto LABEL_150;
        }
      }

      else
      {
        v73 = 0;
      }

      v85 = v72 & 0xFFFFFFFFFFFFFFF8;
      v80 = v67 + (v72 & 0xFFFFFFFFFFFFFFF8);
      v86 = v73 - (v72 & 0xFFFFFFFFFFFFFFF8);
      v87 = &v5[v73];
      v88 = (v67 + v73);
      do
      {
        v89 = *v87++;
        *v88++ = v89;
        v86 += 8;
      }

      while (v86);
      if (v72 != v85)
      {
        v5 += v85;
        goto LABEL_149;
      }
    }

LABEL_150:
    *(v58 + 24) += v66;
    v79 = *(v58 + 8);
    if (v66 >= 0x10000)
    {
      v91 = (v79 - *v58) >> 3;
      *(v58 + 72) = 1;
      *(v58 + 76) = v91;
    }

    goto LABEL_152;
  }

LABEL_221:
  *a3 = v14;
  a3[1] = v15;
  return v6 - v5;
}

unint64_t ZSTD_compressBlock_lazy2_extDict_row(uint64_t a1, uint64_t a2, unsigned int *a3, unsigned __int8 *a4, uint64_t a5)
{
  v5 = a4;
  v215 = &a4[a5];
  v8 = &a4[a5 - 16];
  v9 = *(a1 + 8);
  v214 = *(a1 + 16);
  v11 = *(a1 + 24);
  v10 = *(a1 + 28);
  v12 = *(a1 + 256);
  v13 = *(a1 + 272);
  if (v13 >= 6)
  {
    v13 = 6;
  }

  if (v13 <= 4)
  {
    v14 = 4;
  }

  else
  {
    v14 = v13;
  }

  v15 = *(a1 + 268);
  v203 = v15;
  if (v15 >= 6)
  {
    v15 = 6;
  }

  if (v15 <= 4)
  {
    v16 = 4;
  }

  else
  {
    v16 = v15;
  }

  v18 = *a3;
  LODWORD(v17) = a3[1];
  *(a1 + 300) = 0;
  v206 = (v9 + v11);
  if ((v9 + v11) == a4)
  {
    v19 = (a4 + 1);
  }

  else
  {
    v19 = a4;
  }

  v20 = *(a1 + 44);
  v21 = v8 - (v9 + v20);
  if ((v21 + 1) < 8)
  {
    v22 = v21 + 1;
  }

  else
  {
    v22 = 8;
  }

  if (v8 >= v9 + v20)
  {
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  v24 = (v23 + v20);
  if (v20 < v24)
  {
    v25 = *(a1 + 112);
    v26 = *(a1 + 56);
    v27 = *(a1 + 52);
    v28 = *(a1 + 96);
    v29 = 56 - v27;
    v30 = 24 - v27;
    v31 = a1 + 64;
    if (v203 <= 4)
    {
      while (1)
      {
        if (v14 == 6)
        {
          v32 = 0xCF1BBCDCBF9B0000 * *(v9 + v20);
        }

        else
        {
          if (v14 != 5)
          {
            LODWORD(v33) = ((-1640531535 * *(v9 + v20)) ^ v28) >> v30;
            goto LABEL_25;
          }

          v32 = 0xCF1BBCDCBB000000 * *(v9 + v20);
        }

        v33 = (v32 ^ v28) >> v29;
LABEL_25:
        v34 = v33 >> 8 << v16;
        _X5 = v25 + 4 * v34;
        __asm { PRFM            #0, [X5] }

        _X4 = v26 + v34;
        __asm { PRFM            #0, [X4] }

        *(v31 + 4 * (v20++ & 7)) = v33;
        if (v24 == v20)
        {
          goto LABEL_46;
        }
      }
    }

    if (v203 == 5)
    {
      while (1)
      {
        if (v14 == 6)
        {
          v42 = 0xCF1BBCDCBF9B0000 * *(v9 + v20);
        }

        else
        {
          if (v14 != 5)
          {
            LODWORD(v43) = ((-1640531535 * *(v9 + v20)) ^ v28) >> v30;
            goto LABEL_34;
          }

          v42 = 0xCF1BBCDCBB000000 * *(v9 + v20);
        }

        v43 = (v42 ^ v28) >> v29;
LABEL_34:
        v44 = v43 >> 8 << v16;
        _X5 = v25 + 4 * v44;
        __asm
        {
          PRFM            #0, [X5]
          PRFM            #0, [X5,#0x40]
        }

        _X4 = v26 + v44;
        __asm { PRFM            #0, [X4] }

        *(v31 + 4 * (v20++ & 7)) = v43;
        if (v24 == v20)
        {
          goto LABEL_46;
        }
      }
    }

    if (v14 == 6)
    {
      do
      {
        v58 = ((0xCF1BBCDCBF9B0000 * *(v9 + v20)) ^ v28) >> v29;
        v59 = v58 >> 8 << v16;
        _X2 = v25 + 4 * v59;
        __asm
        {
          PRFM            #0, [X2]
          PRFM            #0, [X2,#0x40]
        }

        _X1 = v26 + v59;
        __asm
        {
          PRFM            #0, [X1]
          PRFM            #0, [X1,#0x20]
        }

        *(v31 + 4 * (v20++ & 7)) = v58;
      }

      while (v24 != v20);
    }

    else if (v14 == 5)
    {
      do
      {
        v50 = ((0xCF1BBCDCBB000000 * *(v9 + v20)) ^ v28) >> v29;
        v51 = v50 >> 8 << v16;
        _X2 = v25 + 4 * v51;
        __asm
        {
          PRFM            #0, [X2]
          PRFM            #0, [X2,#0x40]
        }

        _X1 = v26 + v51;
        __asm
        {
          PRFM            #0, [X1]
          PRFM            #0, [X1,#0x20]
        }

        *(v31 + 4 * (v20++ & 7)) = v50;
      }

      while (v24 != v20);
    }

    else
    {
      do
      {
        v66 = ((-1640531535 * *(v9 + v20)) ^ v28) >> v30;
        v67 = v66 >> 8 << v16;
        _X2 = v25 + 4 * v67;
        __asm
        {
          PRFM            #0, [X2]
          PRFM            #0, [X2,#0x40]
        }

        _X1 = v26 + v67;
        __asm
        {
          PRFM            #0, [X1]
          PRFM            #0, [X1,#0x20]
        }

        *(v31 + 4 * (v20++ & 7)) = v66;
      }

      while (v24 != v20);
    }
  }

LABEL_46:
  if (v19 < v8)
  {
    v74 = (v214 + v11);
    v201 = (v214 + v10);
    v212 = v11 - 1;
    v213 = 1 << v12;
    v208 = v9;
    v211 = v14;
    v210 = v16;
    v204 = (v214 + v11);
    v202 = a2;
    v207 = v8;
    v209 = v11;
    v199 = v11 + v9 + 8;
    v200 = v215 - 7;
    while (1)
    {
      v205 = v17;
      v77 = 0;
      v78 = (v19 + 1);
      v79 = v19 - v9;
      v80 = v19 - v9 + 1;
      if (v80 - *(a1 + 28) > v213 && *(a1 + 40) == 0)
      {
        v82 = v80 - v213;
      }

      else
      {
        v82 = *(a1 + 28);
      }

      v83 = (v80 - v18);
      v84 = v214;
      if (v83 >= v11)
      {
        v84 = v9;
      }

      if ((v212 - v83) >= 3 && v18 <= v80 - v82)
      {
        if (*v78 == *(v84 + v83))
        {
          if (v83 >= v11)
          {
            v74 = v215;
          }

          v85 = ZSTD_count_2segments((v19 + 5), (v84 + v83 + 4), v215, v74, v206);
          v16 = v210;
          v14 = v211;
          v77 = v85 + 4;
        }

        else
        {
          v77 = 0;
        }
      }

      *v216 = 999999999;
      if (v14 == 6)
      {
        if (v16 == 6)
        {
          BestMatch_extDict_6_6 = ZSTD_RowFindBestMatch_extDict_6_6(a1, v19, v215, v216);
        }

        else if (v16 == 5)
        {
          BestMatch_extDict_6_6 = ZSTD_RowFindBestMatch_extDict_6_5(a1, v19, v215, v216);
        }

        else
        {
          BestMatch_extDict_6_6 = ZSTD_RowFindBestMatch_extDict_6_4(a1, v19, v215, v216);
        }
      }

      else if (v14 == 5)
      {
        if (v16 == 6)
        {
          BestMatch_extDict_6_6 = ZSTD_RowFindBestMatch_extDict_5_6(a1, v19, v215, v216);
        }

        else if (v16 == 5)
        {
          BestMatch_extDict_6_6 = ZSTD_RowFindBestMatch_extDict_5_5(a1, v19, v215, v216);
        }

        else
        {
          BestMatch_extDict_6_6 = ZSTD_RowFindBestMatch_extDict_5_4(a1, v19, v215, v216);
        }
      }

      else if (v16 == 6)
      {
        BestMatch_extDict_6_6 = ZSTD_RowFindBestMatch_extDict_4_6(a1, v19, v215, v216);
      }

      else if (v16 == 5)
      {
        BestMatch_extDict_6_6 = ZSTD_RowFindBestMatch_extDict_4_5(a1, v19, v215, v216);
      }

      else
      {
        BestMatch_extDict_6_6 = ZSTD_RowFindBestMatch_extDict_4_4(a1, v19, v215, v216);
      }

      if (BestMatch_extDict_6_6 <= v77)
      {
        v87 = v77;
      }

      else
      {
        v87 = BestMatch_extDict_6_6;
      }

      if (v87 < 4)
      {
        v75 = v19 - v5;
        v19 += ((v19 - v5) >> 8) + 1;
        *(a1 + 300) = v75 > 0x8FF;
        v76 = v207;
        v9 = v208;
        v14 = v211;
        v16 = v210;
        v74 = v204;
        LODWORD(v17) = v205;
        goto LABEL_49;
      }

      if (BestMatch_extDict_6_6 <= v77)
      {
        v88 = 1;
      }

      else
      {
        v88 = *v216;
      }

      if (BestMatch_extDict_6_6 > v77)
      {
        v78 = v19;
      }

      v11 = v78;
      v89 = v88;
      BestMatch_extDict_6_5 = v87;
      v76 = v207;
      v14 = v211;
      v16 = v210;
      if (v19 < v207)
      {
        do
        {
          v11 = v19 + 1;
          v91 = v79 + 1;
          if (v88)
          {
            if (v91 - *(a1 + 28) > v213 && *(a1 + 40) == 0)
            {
              v93 = v91 - v213;
            }

            else
            {
              v93 = *(a1 + 28);
            }

            v94 = (v91 - v18);
            v95 = v208;
            if (v94 < v209)
            {
              v95 = v214;
            }

            if ((v212 - v94) >= 3 && v18 <= v91 - v93)
            {
              v96 = v95 + v94;
              if (*v11 == *v96)
              {
                if (v94 >= v209)
                {
                  v97 = v215;
                }

                else
                {
                  v97 = v204;
                }

                v98 = ZSTD_count_2segments((v19 + 5), (v96 + 4), v215, v97, v206);
                if (v98 > 0xFFFFFFFFFFFFFFFBLL)
                {
                  v14 = v211;
                }

                else
                {
                  v14 = v211;
                  if (3 * (v98 + 4) > (__clz(v88) + 3 * v87 - 30))
                  {
                    v78 = (v19 + 1);
                    v88 = 1;
                    v87 = v98 + 4;
                  }
                }
              }
            }
          }

          *v216 = 999999999;
          v99 = v19 + 1;
          if (v14 == 6)
          {
            if (v210 == 6)
            {
              BestMatch_extDict_6_5 = ZSTD_RowFindBestMatch_extDict_6_6(a1, v99, v215, v216);
            }

            else if (v210 == 5)
            {
              BestMatch_extDict_6_5 = ZSTD_RowFindBestMatch_extDict_6_5(a1, v99, v215, v216);
            }

            else
            {
              BestMatch_extDict_6_5 = ZSTD_RowFindBestMatch_extDict_6_4(a1, v99, v215, v216);
            }
          }

          else if (v14 == 5)
          {
            if (v210 == 6)
            {
              BestMatch_extDict_6_5 = ZSTD_RowFindBestMatch_extDict_5_6(a1, v99, v215, v216);
            }

            else if (v210 == 5)
            {
              BestMatch_extDict_6_5 = ZSTD_RowFindBestMatch_extDict_5_5(a1, v99, v215, v216);
            }

            else
            {
              BestMatch_extDict_6_5 = ZSTD_RowFindBestMatch_extDict_5_4(a1, v99, v215, v216);
            }
          }

          else if (v210 == 6)
          {
            BestMatch_extDict_6_5 = ZSTD_RowFindBestMatch_extDict_4_6(a1, v99, v215, v216);
          }

          else if (v210 == 5)
          {
            BestMatch_extDict_6_5 = ZSTD_RowFindBestMatch_extDict_4_5(a1, v99, v215, v216);
          }

          else
          {
            BestMatch_extDict_6_5 = ZSTD_RowFindBestMatch_extDict_4_4(a1, v99, v215, v216);
          }

          v16 = v210;
          if (BestMatch_extDict_6_5 >= 4 && (v89 = *v216, (__clz(v216[0]) + 4 * BestMatch_extDict_6_5 - 31) > (__clz(v88) + 4 * v87 - 27)))
          {
            ++v79;
            v76 = v207;
            v14 = v211;
          }

          else
          {
            v76 = v207;
            v14 = v211;
            if (v11 >= v207)
            {
              v11 = v78;
              v89 = v88;
              BestMatch_extDict_6_5 = v87;
              break;
            }

            v11 = v19 + 2;
            v79 += 2;
            if (v88)
            {
              if (v79 - *(a1 + 28) > v213 && *(a1 + 40) == 0)
              {
                v101 = v79 - v213;
              }

              else
              {
                v101 = *(a1 + 28);
              }

              v102 = (v79 - v18);
              v103 = v208;
              if (v102 < v209)
              {
                v103 = v214;
              }

              if ((v212 - v102) >= 3 && v18 <= v79 - v101)
              {
                v104 = v103 + v102;
                if (*v11 == *v104)
                {
                  if (v102 >= v209)
                  {
                    v105 = v215;
                  }

                  else
                  {
                    v105 = v204;
                  }

                  v106 = ZSTD_count_2segments((v19 + 6), (v104 + 4), v215, v105, v206);
                  if (v106 > 0xFFFFFFFFFFFFFFFBLL)
                  {
                    v14 = v211;
                  }

                  else
                  {
                    v14 = v211;
                    if ((__clz(v88) + 4 * v87 - 30) < 4 * (v106 + 4))
                    {
                      v78 = (v19 + 2);
                      v88 = 1;
                      v87 = v106 + 4;
                    }
                  }
                }
              }
            }

            *v216 = 999999999;
            v107 = v19 + 2;
            if (v14 == 6)
            {
              if (v210 == 6)
              {
                BestMatch_extDict_6_5 = ZSTD_RowFindBestMatch_extDict_6_6(a1, v107, v215, v216);
                if (BestMatch_extDict_6_5 < 4)
                {
                  goto LABEL_180;
                }
              }

              else if (v210 == 5)
              {
                BestMatch_extDict_6_5 = ZSTD_RowFindBestMatch_extDict_6_5(a1, v107, v215, v216);
                if (BestMatch_extDict_6_5 < 4)
                {
                  goto LABEL_180;
                }
              }

              else
              {
                BestMatch_extDict_6_5 = ZSTD_RowFindBestMatch_extDict_6_4(a1, v107, v215, v216);
                if (BestMatch_extDict_6_5 < 4)
                {
                  goto LABEL_180;
                }
              }
            }

            else if (v14 == 5)
            {
              if (v210 == 6)
              {
                BestMatch_extDict_6_5 = ZSTD_RowFindBestMatch_extDict_5_6(a1, v107, v215, v216);
                if (BestMatch_extDict_6_5 < 4)
                {
                  goto LABEL_180;
                }
              }

              else if (v210 == 5)
              {
                BestMatch_extDict_6_5 = ZSTD_RowFindBestMatch_extDict_5_5(a1, v107, v215, v216);
                if (BestMatch_extDict_6_5 < 4)
                {
                  goto LABEL_180;
                }
              }

              else
              {
                BestMatch_extDict_6_5 = ZSTD_RowFindBestMatch_extDict_5_4(a1, v107, v215, v216);
                if (BestMatch_extDict_6_5 < 4)
                {
                  goto LABEL_180;
                }
              }
            }

            else if (v210 == 6)
            {
              BestMatch_extDict_6_5 = ZSTD_RowFindBestMatch_extDict_4_6(a1, v107, v215, v216);
              if (BestMatch_extDict_6_5 < 4)
              {
                goto LABEL_180;
              }
            }

            else if (v210 == 5)
            {
              BestMatch_extDict_6_5 = ZSTD_RowFindBestMatch_extDict_4_5(a1, v107, v215, v216);
              if (BestMatch_extDict_6_5 < 4)
              {
                goto LABEL_180;
              }
            }

            else
            {
              BestMatch_extDict_6_5 = ZSTD_RowFindBestMatch_extDict_4_4(a1, v107, v215, v216);
              if (BestMatch_extDict_6_5 < 4)
              {
                goto LABEL_180;
              }
            }

            v89 = *v216;
            if ((__clz(v216[0]) + 4 * BestMatch_extDict_6_5 - 31) <= (__clz(v88) + 4 * v87 - 24))
            {
LABEL_180:
              v11 = v78;
              v89 = v88;
              BestMatch_extDict_6_5 = v87;
              v14 = v211;
              v16 = v210;
              break;
            }

            v14 = v211;
            v16 = v210;
          }

          v19 = v11;
          v87 = BestMatch_extDict_6_5;
          v88 = v89;
          v78 = v11;
        }

        while (v11 < v76);
      }

      v17 = v205;
      if (v89 <= 3)
      {
        v9 = v208;
        v74 = v204;
        v111 = (v215 - 32);
      }

      else
      {
        v9 = v208;
        v108 = v11 - (v89 + v208) + 3;
        if (v209 <= v108)
        {
          v109 = v208;
        }

        else
        {
          v109 = v214;
        }

        v110 = v206;
        if (v209 > v108)
        {
          v110 = v201;
        }

        v111 = (v215 - 32);
        if (v11 <= v5 || (v112 = v108, v109 + v108 <= v110))
        {
          v74 = v204;
        }

        else
        {
          v113 = (v11 - 1);
          v114 = (v109 + v112 - 1);
          v74 = v204;
          while (*v113 == *v114)
          {
            ++BestMatch_extDict_6_5;
            v115 = v113 - 1;
            if (v113 > v5)
            {
              --v113;
              if (v114-- > v110)
              {
                continue;
              }
            }

            v11 = (v115 + 1);
            goto LABEL_198;
          }

          v11 = (v113 + 1);
        }

LABEL_198:
        v17 = v18;
        v18 = (v89 - 3);
      }

      v117 = v11 - v5;
      v118 = *(v202 + 24);
      if (v11 > v111)
      {
        break;
      }

      *v118 = *v5;
      v125 = *(v202 + 24);
      if (v117 > 0x10)
      {
        *(v125 + 16) = *(v5 + 1);
        if (v117 >= 33)
        {
          v126 = v125 + v117;
          v127 = (v125 + 32);
          v128 = (v5 + 48);
          do
          {
            *v127 = *(v128 - 1);
            v129 = *v128;
            v128 += 2;
            v127[1] = v129;
            v127 += 2;
          }

          while (v127 < v126);
        }

        goto LABEL_228;
      }

      *(v202 + 24) = v125 + v117;
      v130 = *(v202 + 8);
      v131 = v203;
      v132 = a1 + 64;
LABEL_230:
      *(v130 + 4) = v117;
      *v130 = v89;
      if (BestMatch_extDict_6_5 - 3 >= 0x10000)
      {
        v145 = (v130 - *v202) >> 3;
        *(v202 + 72) = 2;
        *(v202 + 76) = v145;
      }

      *(v130 + 6) = BestMatch_extDict_6_5 - 3;
      v146 = v130 + 8;
      *(v202 + 8) = v130 + 8;
      if (*(a1 + 300))
      {
        v147 = *(a1 + 44);
        v148 = v76 - (v9 + v147);
        if ((v148 + 1) < 8)
        {
          v149 = v148 + 1;
        }

        else
        {
          v149 = 8;
        }

        if (v76 >= v9 + v147)
        {
          v150 = v149;
        }

        else
        {
          v150 = 0;
        }

        v151 = (v150 + v147);
        if (v147 < v151)
        {
          v152 = *(a1 + 112);
          v153 = *(a1 + 56);
          v154 = *(a1 + 52);
          v155 = *(a1 + 96);
          v156 = 56 - v154;
          v157 = 24 - v154;
          do
          {
            if (v14 == 5)
            {
              v160 = 0xCF1BBCDCBB000000 * *(v9 + v147);
            }

            else
            {
              if (v14 != 6)
              {
                LODWORD(v161) = ((-1640531535 * *(v9 + v147)) ^ v155) >> v157;
                goto LABEL_249;
              }

              v160 = 0xCF1BBCDCBF9B0000 * *(v9 + v147);
            }

            v161 = (v160 ^ v155) >> v156;
LABEL_249:
            v162 = v161 >> 8 << v210;
            _X1 = v152 + 4 * v162;
            __asm { PRFM            #0, [X1] }

            if (v131 <= 4)
            {
              _X17 = v153 + v162;
              __asm { PRFM            #0, [X17] }
            }

            else
            {
              __asm { PRFM            #0, [X1,#0x40] }

              _X17 = v153 + v162;
              __asm { PRFM            #0, [X17] }

              if (v131 != 5)
              {
                __asm { PRFM            #0, [X17,#0x20] }
              }
            }

            *(v132 + 4 * (v147++ & 7)) = v161;
          }

          while (v151 != v147);
        }

        *(a1 + 300) = 0;
      }

      v5 = (v11 + BestMatch_extDict_6_5);
      if (v11 + BestMatch_extDict_6_5 > v76)
      {
        v19 = v11 + BestMatch_extDict_6_5;
        LODWORD(v11) = v209;
        goto LABEL_49;
      }

      v169 = v18;
      v170 = v17;
      LODWORD(v11) = v209;
      while (1)
      {
        v18 = v170;
        v170 = v169;
        v171 = v5 - v9;
        v172 = *(a1 + 28);
        if (v5 - v9 - v172 > v213 && *(a1 + 40) == 0)
        {
          v172 = v5 - v9 - v213;
        }

        v174 = (v171 - v18);
        v175 = v174 >= v209 ? v9 : v214;
        if ((v212 - v174) < 3)
        {
          break;
        }

        if (v18 > v171 - v172)
        {
          break;
        }

        v176 = v175 + v174;
        if (*v5 != *(v175 + v174))
        {
          break;
        }

        if (v174 >= v209)
        {
          v177 = v215;
        }

        else
        {
          v177 = v74;
        }

        v178 = (v5 + 4);
        v179 = (v176 + 4);
        v180 = v177 + v5 - v176;
        if (v180 >= v215)
        {
          v180 = v215;
        }

        if (v180 - 7 <= v178)
        {
          v181 = v179;
          v183 = v5 + 4;
        }

        else
        {
          if (*v179 != *v178)
          {
            v186 = __clz(__rbit64(*v178 ^ *v179)) >> 3;
            goto LABEL_291;
          }

          v181 = (v175 + v174 + 12);
          v182 = (v5 + 12);
          while (1)
          {
            v183 = v182;
            if (v182 >= (v180 - 7))
            {
              break;
            }

            v185 = *v181;
            v181 += 4;
            v184 = v185;
            v182 += 8;
            if (v185 != *v183)
            {
              v186 = v183 + (__clz(__rbit64(*v183 ^ v184)) >> 3) - v178;
              goto LABEL_291;
            }
          }
        }

        if (v183 < (v180 - 3) && *v181 == *v183)
        {
          v181 += 2;
          v183 = (v183 + 4);
        }

        if (v183 < (v180 - 1) && *v181 == *v183)
        {
          ++v181;
          v183 = (v183 + 2);
        }

        if (v183 < v180 && *v181 == *v183)
        {
          v183 = (v183 + 1);
        }

        v186 = v183 - v178;
LABEL_291:
        if ((v179 + v186) == v177)
        {
          v188 = &v178[v186];
          if (v200 > v188)
          {
            if (*v206 == *v188)
            {
              v189 = 0;
              v190 = &v5[v186];
              while (1)
              {
                v191 = &v190[v189 + 12];
                if (v191 >= v200)
                {
                  break;
                }

                v192 = *(v199 + v189);
                v193 = *v191;
                v189 += 8;
                if (v192 != v193)
                {
                  v194 = &v190[v189 + 4 + (__clz(__rbit64(v193 ^ v192)) >> 3)];
                  goto LABEL_314;
                }
              }

              v195 = (v199 + v189);
              v194 = &v5[v186 + 12 + v189];
LABEL_305:
              if (v194 < v215 - 3 && *v195 == *v194)
              {
                v195 = (v195 + 4);
                v194 += 4;
              }

              if (v194 < v215 - 1 && *v195 == *v194)
              {
                v195 = (v195 + 2);
                v194 += 2;
              }

              if (v194 < v215 && *v195 == *v194)
              {
                ++v194;
              }

LABEL_314:
              v196 = v194 - v188;
            }

            else
            {
              v196 = __clz(__rbit64(*v188 ^ *v206)) >> 3;
            }

            v186 += v196;
            if (v5 > v111)
            {
              goto LABEL_294;
            }

LABEL_293:
            **(v202 + 24) = *v5;
            v146 = *(v202 + 8);
            goto LABEL_294;
          }

          v195 = v206;
          v194 = v188;
          goto LABEL_305;
        }

        if (v5 <= v111)
        {
          goto LABEL_293;
        }

LABEL_294:
        *(v146 + 4) = 0;
        *v146 = 1;
        if (v186 + 1 >= 0x10000)
        {
          v187 = (v146 - *v202) >> 3;
          *(v202 + 72) = 2;
          *(v202 + 76) = v187;
        }

        *(v146 + 6) = v186 + 1;
        v146 += 8;
        v5 += v186 + 4;
        *(v202 + 8) = v146;
        v169 = v18;
        LODWORD(v17) = v170;
        v19 = v5;
        if (v5 > v76)
        {
          goto LABEL_49;
        }
      }

      LODWORD(v17) = v18;
      v18 = v169;
      v19 = v5;
LABEL_49:
      if (v19 >= v76)
      {
        goto LABEL_318;
      }
    }

    if (v5 <= v111)
    {
      v119 = (v118 + v111 - v5);
      *v118 = *v5;
      if (v111 - v5 >= 17)
      {
        v120 = v118 + 1;
        v121 = (v5 + 32);
        do
        {
          *v120 = *(v121 - 1);
          v122 = *v121;
          v121 += 2;
          v120[1] = v122;
          v120 += 2;
        }

        while (v120 < v119);
      }

      v5 = v111;
      v118 = v119;
    }

    if (v5 < v11)
    {
      v123 = v11 - v5;
      if (v11 - v5 < 8)
      {
        v133 = v118;
        goto LABEL_227;
      }

      if ((v118 - v5) < 0x20)
      {
        v133 = v118;
        goto LABEL_227;
      }

      if (v123 >= 0x20)
      {
        v124 = v123 & 0xFFFFFFFFFFFFFFE0;
        v134 = (v5 + 16);
        v135 = v118 + 1;
        v136 = v123 & 0xFFFFFFFFFFFFFFE0;
        do
        {
          v137 = *v134;
          *(v135 - 1) = *(v134 - 1);
          *v135 = v137;
          v134 += 2;
          v135 += 2;
          v136 -= 32;
        }

        while (v136);
        if (v123 == v124)
        {
          goto LABEL_228;
        }

        if ((v123 & 0x18) == 0)
        {
          v5 += v124;
          v133 = v118 + v124;
          do
          {
LABEL_227:
            v143 = *v5++;
            *v133++ = v143;
          }

          while (v5 != v11);
          goto LABEL_228;
        }
      }

      else
      {
        v124 = 0;
      }

      v138 = v123 & 0xFFFFFFFFFFFFFFF8;
      v133 = v118 + (v123 & 0xFFFFFFFFFFFFFFF8);
      v139 = v124 - (v123 & 0xFFFFFFFFFFFFFFF8);
      v140 = &v5[v124];
      v141 = (v118 + v124);
      do
      {
        v142 = *v140++;
        *v141++ = v142;
        v139 += 8;
      }

      while (v139);
      if (v123 != v138)
      {
        v5 += v138;
        goto LABEL_227;
      }
    }

LABEL_228:
    *(v202 + 24) += v117;
    v130 = *(v202 + 8);
    v131 = v203;
    v132 = a1 + 64;
    if (v117 >= 0x10000)
    {
      v144 = (v130 - *v202) >> 3;
      *(v202 + 72) = 1;
      *(v202 + 76) = v144;
    }

    goto LABEL_230;
  }

LABEL_318:
  *a3 = v18;
  a3[1] = v17;
  return v215 - v5;
}

unint64_t ZSTD_compressBlock_btlazy2_extDict(uint64_t a1, uint64_t a2, unsigned int *a3, char *a4, uint64_t a5)
{
  v5 = a4;
  v6 = &a4[a5];
  v7 = &a4[a5 - 8];
  v9 = *(a1 + 8);
  v8 = *(a1 + 16);
  v10 = *(a1 + 24);
  v11 = *(a1 + 28);
  v12 = *(a1 + 256);
  v13 = *(a1 + 272);
  if (v13 >= 6)
  {
    v13 = 6;
  }

  if (v13 <= 4)
  {
    v13 = 4;
  }

  v137 = v13;
  v14 = *a3;
  LODWORD(v15) = a3[1];
  *(a1 + 300) = 0;
  v133 = (v9 + v10);
  if ((v9 + v10) == v5)
  {
    v16 = v5 + 1;
  }

  else
  {
    v16 = v5;
  }

  v141 = v7;
  if (v16 < v7)
  {
    v17 = a1;
    v18 = (v8 + v10);
    v124 = (v8 + v11);
    v139 = v10 - 1;
    v140 = 1 << v12;
    v126 = v6 - 7;
    v127 = v6 - 32;
    v129 = v6 - 1;
    v130 = v6 - 3;
    v125 = v10 + v9 + 8;
    v135 = v8;
    v136 = v10;
    v131 = (v8 + v10);
    v134 = v9;
    while (1)
    {
      v20 = 0;
      v21 = v16 + 1;
      v22 = v16 - v9;
      v23 = v16 - v9 + 1;
      if (v23 - v17[7] > v140 && v17[10] == 0)
      {
        v25 = v23 - v140;
      }

      else
      {
        v25 = v17[7];
      }

      v26 = (v23 - v14);
      if (v26 >= v10)
      {
        v27 = v9;
      }

      else
      {
        v27 = v8;
      }

      if ((v139 - v26) >= 3 && v14 <= v23 - v25)
      {
        if (*v21 == *(v27 + v26))
        {
          if (v26 >= v10)
          {
            v28 = v6;
          }

          else
          {
            v28 = v18;
          }

          v29 = ZSTD_count_2segments(v16 + 5, (v27 + v26 + 4), v6, v28, v133);
          v17 = a1;
          v20 = v29 + 4;
        }

        else
        {
          v20 = 0;
        }
      }

      *v142 = 999999999;
      v132 = v15;
      if (v137 == 6)
      {
        BestMatch_extDict_6 = ZSTD_BtFindBestMatch_extDict_6(v17, v16, v6, v142);
      }

      else if (v137 == 5)
      {
        BestMatch_extDict_6 = ZSTD_BtFindBestMatch_extDict_5(v17, v16, v6, v142);
      }

      else
      {
        BestMatch_extDict_6 = ZSTD_BtFindBestMatch_extDict_4(v17, v16, v6, v142);
      }

      if (BestMatch_extDict_6 <= v20)
      {
        v31 = v20;
      }

      else
      {
        v31 = BestMatch_extDict_6;
      }

      if (v31 < 4)
      {
        v19 = v16 - v5;
        v16 += ((v16 - v5) >> 8) + 1;
        v17 = a1;
        *(a1 + 300) = v19 > 0x8FF;
        v8 = v135;
        LODWORD(v10) = v136;
        v18 = v131;
        LODWORD(v15) = v132;
        goto LABEL_11;
      }

      if (BestMatch_extDict_6 <= v20)
      {
        v32 = 1;
      }

      else
      {
        v32 = *v142;
      }

      if (BestMatch_extDict_6 > v20)
      {
        v21 = v16;
      }

      v33 = v21;
      v34 = v32;
      BestMatch_extDict_5 = v31;
      v17 = a1;
      if (v16 < v141)
      {
        do
        {
          v36 = v6;
          v33 = v16 + 1;
          v37 = v22 + 1;
          if (v32)
          {
            if (v37 - v17[7] > v140 && v17[10] == 0)
            {
              v39 = v37 - v140;
            }

            else
            {
              v39 = v17[7];
            }

            v40 = (v37 - v14);
            v41 = v134;
            if (v40 < v136)
            {
              v41 = v135;
            }

            if ((v139 - v40) >= 3 && v14 <= v37 - v39)
            {
              v42 = v41 + v40;
              if (*v33 == *v42)
              {
                if (v40 >= v136)
                {
                  v43 = v36;
                }

                else
                {
                  v43 = v131;
                }

                v44 = ZSTD_count_2segments(v16 + 5, (v42 + 4), v36, v43, v133);
                if (v44 > 0xFFFFFFFFFFFFFFFBLL)
                {
                  v17 = a1;
                }

                else
                {
                  v17 = a1;
                  if (3 * (v44 + 4) > (__clz(v32) + 3 * v31 - 30))
                  {
                    v21 = v16 + 1;
                    v32 = 1;
                    v31 = v44 + 4;
                  }
                }
              }
            }
          }

          *v142 = 999999999;
          v45 = v16 + 1;
          if (v137 == 6)
          {
            BestMatch_extDict_5 = ZSTD_BtFindBestMatch_extDict_6(v17, v45, v36, v142);
          }

          else if (v137 == 5)
          {
            BestMatch_extDict_5 = ZSTD_BtFindBestMatch_extDict_5(v17, v45, v36, v142);
          }

          else
          {
            BestMatch_extDict_5 = ZSTD_BtFindBestMatch_extDict_4(v17, v45, v36, v142);
          }

          v17 = a1;
          if (BestMatch_extDict_5 >= 4 && (v34 = *v142, (__clz(v142[0]) + 4 * BestMatch_extDict_5 - 31) > (__clz(v32) + 4 * v31 - 27)))
          {
            ++v22;
            v6 = v36;
          }

          else
          {
            if (v33 >= v141)
            {
              v33 = v21;
              v34 = v32;
              BestMatch_extDict_5 = v31;
              v6 = v36;
              break;
            }

            v33 = v16 + 2;
            v22 += 2;
            v6 = v36;
            if (v32)
            {
              if (v22 - *(a1 + 28) > v140 && *(a1 + 40) == 0)
              {
                v47 = v22 - v140;
              }

              else
              {
                v47 = *(a1 + 28);
              }

              v48 = (v22 - v14);
              v49 = v134;
              if (v48 < v136)
              {
                v49 = v135;
              }

              if ((v139 - v48) >= 3 && v14 <= v22 - v47)
              {
                v50 = v49 + v48;
                if (*v33 == *v50)
                {
                  if (v48 >= v136)
                  {
                    v51 = v36;
                  }

                  else
                  {
                    v51 = v131;
                  }

                  v52 = ZSTD_count_2segments(v16 + 6, (v50 + 4), v36, v51, v133);
                  if (v52 > 0xFFFFFFFFFFFFFFFBLL)
                  {
                    v17 = a1;
                  }

                  else
                  {
                    v17 = a1;
                    if ((__clz(v32) + 4 * v31 - 30) < 4 * (v52 + 4))
                    {
                      v21 = v16 + 2;
                      v32 = 1;
                      v31 = v52 + 4;
                    }
                  }
                }
              }
            }

            *v142 = 999999999;
            v53 = v16 + 2;
            if (v137 == 6)
            {
              BestMatch_extDict_5 = ZSTD_BtFindBestMatch_extDict_6(v17, v53, v36, v142);
              if (BestMatch_extDict_5 < 4)
              {
                goto LABEL_102;
              }
            }

            else if (v137 == 5)
            {
              BestMatch_extDict_5 = ZSTD_BtFindBestMatch_extDict_5(v17, v53, v36, v142);
              if (BestMatch_extDict_5 < 4)
              {
                goto LABEL_102;
              }
            }

            else
            {
              BestMatch_extDict_5 = ZSTD_BtFindBestMatch_extDict_4(v17, v53, v36, v142);
              if (BestMatch_extDict_5 < 4)
              {
                goto LABEL_102;
              }
            }

            v34 = *v142;
            if ((__clz(v142[0]) + 4 * BestMatch_extDict_5 - 31) <= (__clz(v32) + 4 * v31 - 24))
            {
LABEL_102:
              v33 = v21;
              v34 = v32;
              BestMatch_extDict_5 = v31;
              v17 = a1;
              break;
            }

            v17 = a1;
          }

          v16 = v33;
          v31 = BestMatch_extDict_5;
          v32 = v34;
          v21 = v33;
        }

        while (v33 < v141);
      }

      v15 = v132;
      if (v34 <= 3)
      {
        v57 = v127;
        v58 = a2;
        v9 = v134;
        v8 = v135;
        LODWORD(v10) = v136;
        v18 = v131;
        v63 = v125;
        v62 = v126;
      }

      else
      {
        v9 = v134;
        v8 = v135;
        v54 = v33 - (v34 + v134) + 3;
        LODWORD(v10) = v136;
        if (v136 <= v54)
        {
          v55 = v134;
        }

        else
        {
          v55 = v135;
        }

        v56 = v133;
        if (v136 > v54)
        {
          v56 = v124;
        }

        v57 = v127;
        v58 = a2;
        if (v33 <= v5 || (v59 = v54, v55 + v54 <= v56))
        {
          v18 = v131;
          v63 = v125;
          v62 = v126;
        }

        else
        {
          v60 = v33 - 1;
          v61 = (v55 + v59 - 1);
          v18 = v131;
          v63 = v125;
          v62 = v126;
          while (*v60 == *v61)
          {
            ++BestMatch_extDict_5;
            v64 = (v60 - 1);
            if (v60 > v5)
            {
              --v60;
              if (v61-- > v56)
              {
                continue;
              }
            }

            v33 = (v64 + 1);
            goto LABEL_120;
          }

          v33 = v60 + 1;
        }

LABEL_120:
        v15 = v14;
        v14 = (v34 - 3);
      }

      v66 = v33 - v5;
      v67 = *(v58 + 24);
      if (v33 > v57)
      {
        break;
      }

      *v67 = *v5;
      v74 = *(v58 + 24);
      if (v66 > 0x10)
      {
        *(v74 + 16) = *(v5 + 1);
        if (v66 >= 33)
        {
          v75 = v74 + v66;
          v76 = (v74 + 32);
          v77 = (v5 + 48);
          do
          {
            *v76 = *(v77 - 1);
            v78 = *v77;
            v77 += 2;
            v76[1] = v78;
            v76 += 2;
          }

          while (v76 < v75);
        }

        goto LABEL_150;
      }

      *(v58 + 24) = v74 + v66;
      v79 = *(v58 + 8);
LABEL_152:
      *(v79 + 4) = v66;
      *v79 = v34;
      if (BestMatch_extDict_5 - 3 >= 0x10000)
      {
        v92 = (v79 - *v58) >> 3;
        *(v58 + 72) = 2;
        *(v58 + 76) = v92;
      }

      *(v79 + 6) = BestMatch_extDict_5 - 3;
      v93 = v79 + 8;
      *(v58 + 8) = v79 + 8;
      if (v17[75])
      {
        v17[75] = 0;
      }

      v5 = &v33[BestMatch_extDict_5];
      if (&v33[BestMatch_extDict_5] > v141)
      {
        v16 = &v33[BestMatch_extDict_5];
        goto LABEL_11;
      }

      v94 = v14;
      v95 = v15;
      while (1)
      {
        v14 = v95;
        v95 = v94;
        v96 = v5 - v9;
        v97 = v17[7];
        if (v5 - v9 - v97 > v140 && v17[10] == 0)
        {
          v97 = v5 - v9 - v140;
        }

        v99 = (v96 - v14);
        v100 = v99 >= v10 ? v9 : v8;
        if ((v139 - v99) < 3)
        {
          break;
        }

        if (v14 > v96 - v97)
        {
          break;
        }

        v101 = v100 + v99;
        if (*v5 != *(v100 + v99))
        {
          break;
        }

        if (v99 >= v10)
        {
          v102 = v6;
        }

        else
        {
          v102 = v18;
        }

        v103 = v5 + 4;
        v104 = (v101 + 4);
        v105 = v102 + v5 - v101;
        if (v105 >= v6)
        {
          v105 = v6;
        }

        if (v105 - 7 <= v103)
        {
          v106 = v104;
          v108 = v5 + 4;
        }

        else
        {
          if (*v104 != *v103)
          {
            v111 = __clz(__rbit64(*v103 ^ *v104)) >> 3;
            goto LABEL_194;
          }

          v106 = (v100 + v99 + 12);
          v107 = (v5 + 12);
          while (1)
          {
            v108 = v107;
            if (v107 >= (v105 - 7))
            {
              break;
            }

            v110 = *v106;
            v106 += 4;
            v109 = v110;
            v107 += 8;
            if (v110 != *v108)
            {
              v111 = v108 + (__clz(__rbit64(*v108 ^ v109)) >> 3) - v103;
              goto LABEL_194;
            }
          }
        }

        if (v108 < (v105 - 3) && *v106 == *v108)
        {
          v106 += 2;
          v108 = (v108 + 4);
        }

        if (v108 < (v105 - 1) && *v106 == *v108)
        {
          ++v106;
          v108 = (v108 + 2);
        }

        if (v108 < v105 && *v106 == *v108)
        {
          v108 = (v108 + 1);
        }

        v111 = v108 - v103;
LABEL_194:
        if ((v104 + v111) == v102)
        {
          v113 = &v103[v111];
          if (v62 > v113)
          {
            if (*v133 == *v113)
            {
              v114 = 0;
              v115 = &v5[v111];
              while (1)
              {
                v116 = &v115[v114 + 12];
                if (v116 >= v62)
                {
                  break;
                }

                v117 = *(v63 + v114);
                v118 = *v116;
                v114 += 8;
                if (v117 != v118)
                {
                  v119 = &v115[v114 + 4 + (__clz(__rbit64(v118 ^ v117)) >> 3)];
                  goto LABEL_217;
                }
              }

              v120 = (v63 + v114);
              v119 = &v5[v111 + 12 + v114];
LABEL_208:
              if (v119 < v130 && *v120 == *v119)
              {
                v120 = (v120 + 4);
                v119 += 4;
              }

              if (v119 < v129 && *v120 == *v119)
              {
                v120 = (v120 + 2);
                v119 += 2;
              }

              if (v119 < v6 && *v120 == *v119)
              {
                ++v119;
              }

LABEL_217:
              v121 = v119 - v113;
            }

            else
            {
              v121 = __clz(__rbit64(*v113 ^ *v133)) >> 3;
            }

            v111 += v121;
            if (v5 > v57)
            {
              goto LABEL_197;
            }

LABEL_196:
            **(v58 + 24) = *v5;
            v93 = *(v58 + 8);
            goto LABEL_197;
          }

          v120 = v133;
          v119 = v113;
          goto LABEL_208;
        }

        if (v5 <= v57)
        {
          goto LABEL_196;
        }

LABEL_197:
        *(v93 + 4) = 0;
        *v93 = 1;
        if (v111 + 1 >= 0x10000)
        {
          v112 = (v93 - *v58) >> 3;
          *(v58 + 72) = 2;
          *(v58 + 76) = v112;
        }

        *(v93 + 6) = v111 + 1;
        v93 += 8;
        v5 += v111 + 4;
        *(v58 + 8) = v93;
        v94 = v14;
        LODWORD(v15) = v95;
        v16 = v5;
        if (v5 > v141)
        {
          goto LABEL_11;
        }
      }

      LODWORD(v15) = v14;
      v14 = v94;
      v16 = v5;
LABEL_11:
      if (v16 >= v141)
      {
        goto LABEL_221;
      }
    }

    if (v5 <= v57)
    {
      v68 = (v67 + v57 - v5);
      *v67 = *v5;
      if (v57 - v5 >= 17)
      {
        v69 = v67 + 1;
        v70 = (v5 + 32);
        do
        {
          *v69 = *(v70 - 1);
          v71 = *v70;
          v70 += 2;
          v69[1] = v71;
          v69 += 2;
        }

        while (v69 < v68);
      }

      v5 = v57;
      v67 = v68;
    }

    if (v5 < v33)
    {
      v72 = v33 - v5;
      if ((v33 - v5) < 8)
      {
        v80 = v67;
        goto LABEL_149;
      }

      if ((v67 - v5) < 0x20)
      {
        v80 = v67;
        goto LABEL_149;
      }

      if (v72 >= 0x20)
      {
        v73 = v72 & 0xFFFFFFFFFFFFFFE0;
        v81 = (v5 + 16);
        v82 = v67 + 1;
        v83 = v72 & 0xFFFFFFFFFFFFFFE0;
        do
        {
          v84 = *v81;
          *(v82 - 1) = *(v81 - 1);
          *v82 = v84;
          v81 += 2;
          v82 += 2;
          v83 -= 32;
        }

        while (v83);
        if (v72 == v73)
        {
          goto LABEL_150;
        }

        if ((v72 & 0x18) == 0)
        {
          v5 += v73;
          v80 = v67 + v73;
          do
          {
LABEL_149:
            v90 = *v5++;
            *v80++ = v90;
          }

          while (v5 != v33);
          goto LABEL_150;
        }
      }

      else
      {
        v73 = 0;
      }

      v85 = v72 & 0xFFFFFFFFFFFFFFF8;
      v80 = v67 + (v72 & 0xFFFFFFFFFFFFFFF8);
      v86 = v73 - (v72 & 0xFFFFFFFFFFFFFFF8);
      v87 = &v5[v73];
      v88 = (v67 + v73);
      do
      {
        v89 = *v87;
        v87 += 8;
        *v88++ = v89;
        v86 += 8;
      }

      while (v86);
      if (v72 != v85)
      {
        v5 += v85;
        goto LABEL_149;
      }
    }

LABEL_150:
    *(v58 + 24) += v66;
    v79 = *(v58 + 8);
    if (v66 >= 0x10000)
    {
      v91 = (v79 - *v58) >> 3;
      *(v58 + 72) = 1;
      *(v58 + 76) = v91;
    }

    goto LABEL_152;
  }

LABEL_221:
  *a3 = v14;
  a3[1] = v15;
  return v6 - v5;
}

unint64_t ZSTD_BtFindBestMatch_extDict_4(uint64_t a1, char *a2, unint64_t a3, unsigned int *a4)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 44);
  if (v4 + v5 > a2)
  {
    return 0;
  }

  v7 = a2 - v4;
  if (v5 < a2 - v4)
  {
    v8 = *(a1 + 112);
    v9 = *(a1 + 128);
    v10 = ~(-1 << (*(a1 + 260) - 1));
    v11 = 32 - *(a1 + 264);
    do
    {
      v12 = (-1640531535 * *(v4 + v5)) >> v11;
      v13 = *(v8 + 4 * v12);
      v14 = (v9 + 8 * (v5 & v10));
      *(v8 + 4 * v12) = v5;
      *v14 = v13;
      v14[1] = 1;
      ++v5;
    }

    while (v7 != v5);
  }

  *(a1 + 44) = v7;
  return ZSTD_DUBT_findBestMatch(a1, a2, a3, a4, 4, 1);
}

unint64_t ZSTD_BtFindBestMatch_extDict_5(uint64_t a1, char *a2, unint64_t a3, unsigned int *a4)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 44);
  if (v4 + v5 > a2)
  {
    return 0;
  }

  v7 = a2 - v4;
  if (v5 < a2 - v4)
  {
    v8 = *(a1 + 112);
    v9 = *(a1 + 128);
    v10 = ~(-1 << (*(a1 + 260) - 1));
    v11 = 64 - *(a1 + 264);
    do
    {
      v12 = (0xCF1BBCDCBB000000 * *(v4 + v5)) >> v11;
      v13 = *(v8 + 4 * v12);
      v14 = (v9 + 8 * (v5 & v10));
      *(v8 + 4 * v12) = v5;
      *v14 = v13;
      v14[1] = 1;
      ++v5;
    }

    while (v7 != v5);
  }

  *(a1 + 44) = v7;
  return ZSTD_DUBT_findBestMatch(a1, a2, a3, a4, 5, 1);
}

unint64_t ZSTD_BtFindBestMatch_extDict_6(uint64_t a1, char *a2, unint64_t a3, unsigned int *a4)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 44);
  if (v4 + v5 > a2)
  {
    return 0;
  }

  v7 = a2 - v4;
  if (v5 < a2 - v4)
  {
    v8 = *(a1 + 112);
    v9 = *(a1 + 128);
    v10 = ~(-1 << (*(a1 + 260) - 1));
    v11 = 64 - *(a1 + 264);
    do
    {
      v12 = (0xCF1BBCDCBF9B0000 * *(v4 + v5)) >> v11;
      v13 = *(v8 + 4 * v12);
      v14 = (v9 + 8 * (v5 & v10));
      *(v8 + 4 * v12) = v5;
      *v14 = v13;
      v14[1] = 1;
      ++v5;
    }

    while (v7 != v5);
  }

  *(a1 + 44) = v7;
  return ZSTD_DUBT_findBestMatch(a1, a2, a3, a4, 6, 1);
}

unint64_t HUF_readDTableX1_wksp(int *a1, char *a2, unint64_t a3, uint64_t a4)
{
  v201 = 0;
  v6 = (a4 + 1236);
  result = HUF_readStats_wksp(a4 + 1236, a4, &v201, &v201 + 1, a2, a3, (a4 + 104));
  if (result <= 0xFFFFFFFFFFFFFF88)
  {
    v9 = *a1;
    v10 = *a1;
    v11 = v10 + 1;
    if ((v10 + 1) < 0xB)
    {
      v12 = v10 + 1;
    }

    else
    {
      v12 = 11;
    }

    v14 = v201;
    v13 = HIDWORD(v201);
    v15 = HIDWORD(v201) - v12;
    if (HIDWORD(v201) > v12)
    {
      v12 = HIDWORD(v201);
      if (HIDWORD(v201) > v11)
      {
        return -44;
      }

LABEL_31:
      v32 = 0;
      v33 = a1 + 1;
      *a1 = v9;
      *(a1 + 1) = 0;
      *(a1 + 2) = v12;
      *(a1 + 3) = HIBYTE(v9);
      v34 = a4 + 52;
      v35 = v12 + 1;
      v36 = a4;
      v37 = v35;
      do
      {
        v38 = *v36;
        v36[13] = v32;
        v32 += v38;
        ++v36;
        --v37;
      }

      while (v37);
      if (v14 < 4)
      {
        LODWORD(v39) = 0;
        if (v14 <= 0)
        {
LABEL_41:
          v51 = 0;
          v52 = *a4;
          v53 = a4 + 980;
          v54 = a1 + 1;
          v196 = a4 + 996;
          v55 = a1 + 17;
          v198 = a1 + 7;
          v199 = a1 + 3;
          v195 = a1 + 9;
          v197 = a1 + 5;
          v200 = a1 + 7;
          v56.i64[0] = 255;
          v56.i64[1] = 255;
          v57 = 1;
          while (1)
          {
            v58 = *(a4 + 4 * v57);
            v59 = 1 << v57 >> 1;
            v60 = v35 - v57;
            if (v59 > 3)
            {
              if (v59 == 4)
              {
                if (v58 >= 1)
                {
                  v97 = (v35 - v57);
                  v98 = v51;
                  if (v58 <= 3 || (v99 = (v33 + 2 * v51), v99 < v53 + v52 + v58) && v53 + v52 < v99 + 8 * v58)
                  {
                    v100 = 0;
                    goto LABEL_89;
                  }

                  v106 = vdupq_n_s64(v97);
                  if (v58 >= 0x10)
                  {
                    v100 = v58 & 0x7FFFFFF0;
                    v164 = (v53 + v52);
                    v165 = v100;
                    do
                    {
                      v166 = *v164++;
                      v167 = vmovl_high_u8(v166);
                      v168 = vmovl_high_u16(v167);
                      v169 = vmovl_u16(*v167.i8);
                      v170 = vmovl_u8(*v166.i8);
                      v171 = vmovl_high_u16(v170);
                      v172 = vmovl_u16(*v170.i8);
                      v173 = vshll_n_u32(*v172.i8, 8uLL);
                      v174 = vshll_high_n_u32(v168, 8uLL);
                      v175 = vshll_n_u32(*v171.i8, 8uLL);
                      v176 = vshll_n_u32(*v169.i8, 8uLL);
                      v177 = vorrq_s8(vshll_high_n_u32(v169, 8uLL), v106);
                      v178 = vorrq_s8(vshll_high_n_u32(v171, 8uLL), v106);
                      v179 = vorrq_s8(vshll_n_u32(*v168.i8, 8uLL), v106);
                      v180 = vorrq_s8(v176, v106);
                      v181 = vorrq_s8(v175, v106);
                      v182 = vorrq_s8(vshll_high_n_u32(v172, 8uLL), v106);
                      v183 = vorrq_s8(v174, v106);
                      v184 = vorrq_s8(v173, v106);
                      v184.i64[0] *= 0x1000100010001;
                      v184.i64[1] *= 0x1000100010001;
                      v183.i64[0] *= 0x1000100010001;
                      v183.i64[1] *= 0x1000100010001;
                      v8.i64[0] = 0x1000100010001 * v182.i64[0];
                      v8.i64[1] = 0x1000100010001 * v182.i64[1];
                      v181.i64[0] *= 0x1000100010001;
                      v181.i64[1] *= 0x1000100010001;
                      v180.i64[0] *= 0x1000100010001;
                      v180.i64[1] *= 0x1000100010001;
                      v179.i64[0] *= 0x1000100010001;
                      v179.i64[1] *= 0x1000100010001;
                      v178.i64[0] *= 0x1000100010001;
                      v178.i64[1] *= 0x1000100010001;
                      v177.i64[0] *= 0x1000100010001;
                      v177.i64[1] *= 0x1000100010001;
                      v99[4] = v180;
                      v99[5] = v177;
                      v99[2] = v181;
                      v99[3] = v178;
                      v99[6] = v179;
                      v99[7] = v183;
                      *v99 = v184;
                      v99[1] = v8;
                      v99 += 8;
                      v165 -= 16;
                    }

                    while (v165);
                    if (v100 == v58)
                    {
                      goto LABEL_42;
                    }

                    if ((v58 & 0xC) == 0)
                    {
                      v98 = v51 + 4 * v100;
LABEL_89:
                      v101 = (v54 + 2 * v98);
                      v102 = v58 - v100;
                      v103 = (v53 + v100 + v52);
                      do
                      {
                        v104 = *v103++;
                        *v101++ = 0x1000100010001 * (v97 | (v104 << 8));
                        --v102;
                      }

                      while (v102);
                      goto LABEL_42;
                    }
                  }

                  else
                  {
                    v100 = 0;
                  }

                  v185 = v100;
                  v100 = v58 & 0x7FFFFFFC;
                  v186 = v185 - v100;
                  v187 = (&v54[2 * v185] + 2 * v51);
                  v188 = (v53 + v185 + v52);
                  do
                  {
                    v189 = *v188++;
                    v8.i32[0] = v189;
                    v190 = vmovl_u16(*&vmovl_u8(*v8.i8));
                    v191.i64[0] = v190.u32[2];
                    v191.i64[1] = v190.u32[3];
                    v192 = vandq_s8(v191, v56);
                    v191.i64[0] = v190.u32[0];
                    v191.i64[1] = v190.u32[1];
                    v193 = vorrq_s8(vshlq_n_s64(v192, 8uLL), v106);
                    v194 = vorrq_s8(vshlq_n_s64(vandq_s8(v191, v56), 8uLL), v106);
                    v8.i64[0] = 0x1000100010001 * v194.i64[0];
                    v193.i64[0] *= 0x1000100010001;
                    v8.i64[1] = 0x1000100010001 * v194.i64[1];
                    v193.i64[1] *= 0x1000100010001;
                    *v187 = v8;
                    v187[1] = v193;
                    v187 += 2;
                    v186 += 4;
                  }

                  while (v186);
                  if (v100 == v58)
                  {
                    goto LABEL_42;
                  }

                  v98 = 4 * (v58 & 0x7FFFFFFC) + v51;
                  goto LABEL_89;
                }
              }

              else
              {
                if (v59 != 8)
                {
LABEL_64:
                  if (v58 < 1)
                  {
                    goto LABEL_42;
                  }

                  v77 = 0;
                  v78 = ((v59 - 1) >> 4) + 1;
                  v79 = 2 * v51;
                  v80 = (v55 + v79);
                  v81 = 2 * v59;
                  v82 = v200 + v79;
                  while (2)
                  {
                    if (v59 >= 1)
                    {
                      v83 = 0x1000100010001 * ((v35 - v57) | (*(v53 + v77 + v52) << 8));
                      if (v59 < 0x31)
                      {
                        v84 = 0;
                        goto LABEL_73;
                      }

                      v85 = vdupq_n_s64(v83);
                      v86 = v80;
                      v87 = v78 & 0x1FFFFFFFFFFFFFFCLL;
                      do
                      {
                        v86[-4] = v85;
                        v86[-3] = v85;
                        v86[-2] = v85;
                        v86[-1] = v85;
                        *v86 = v85;
                        v86[1] = v85;
                        v86[2] = v85;
                        v86[3] = v85;
                        v86 += 8;
                        v87 -= 4;
                      }

                      while (v87);
                      v84 = 16 * (v78 & 0x1FFFFFFFFFFFFFFCLL);
                      if (v78 != (v78 & 0x1FFFFFFFFFFFFFFCLL))
                      {
LABEL_73:
                        v88 = 2 * v84;
                        v89 = v82;
                        do
                        {
                          v90 = (v89 + v88);
                          *(v90 - 3) = v83;
                          *(v90 - 2) = v83;
                          *(v90 - 1) = v83;
                          *v90 = v83;
                          v84 += 16;
                          v89 += 32;
                        }

                        while (v84 < v59);
                      }
                    }

                    ++v77;
                    v80 = (v80 + v81);
                    v82 += v81;
                    if (v77 == v58)
                    {
                      goto LABEL_42;
                    }

                    continue;
                  }
                }

                if (v58 >= 1)
                {
                  v68 = (v35 - v57);
                  v69 = v51;
                  if (v58 <= 3 || (v70 = v33 + 2 * v51, v70 < v53 + v52 + v58) && v53 + v52 < v70 + 16 * v58)
                  {
                    v71 = 0;
                    goto LABEL_61;
                  }

                  v105 = vdupq_n_s64(v68);
                  if (v58 >= 0x10)
                  {
                    v71 = v58 & 0x7FFFFFF0;
                    v122 = (v53 + v52);
                    v123 = v71;
                    do
                    {
                      v124 = *v122++;
                      v125 = vmovl_u8(*v124.i8);
                      v126 = vmovl_u16(*v125.i8);
                      v127 = vmovl_high_u16(v125);
                      v128 = vmovl_high_u8(v124);
                      v129 = vmovl_u16(*v128.i8);
                      v130 = vmovl_high_u16(v128);
                      v131 = vshll_high_n_u32(v126, 8uLL);
                      v132 = vorrq_s8(vshll_n_u32(*v126.i8, 8uLL), v105);
                      v133 = vorrq_s8(v131, v105);
                      v134 = vorrq_s8(vshll_n_u32(*v127.i8, 8uLL), v105);
                      v208.val[0] = vorrq_s8(vshll_high_n_u32(v127, 8uLL), v105);
                      v207.val[0] = vorrq_s8(vshll_n_u32(*v129.i8, 8uLL), v105);
                      v206.val[0] = vorrq_s8(vshll_high_n_u32(v129, 8uLL), v105);
                      v204.val[0] = vorrq_s8(vshll_n_u32(*v130.i8, 8uLL), v105);
                      v135 = vorrq_s8(vshll_high_n_u32(v130, 8uLL), v105);
                      v8.i64[0] = 0x1000100010001 * v135.i64[0];
                      v8.i64[1] = 0x1000100010001 * v135.i64[1];
                      v136 = v8;
                      *&v204.val[0].f64[0] *= 0x1000100010001;
                      *&v204.val[0].f64[1] *= 0x1000100010001;
                      v204.val[1] = v204.val[0];
                      *&v206.val[0].f64[0] *= 0x1000100010001;
                      *&v206.val[0].f64[1] *= 0x1000100010001;
                      v206.val[1] = v206.val[0];
                      *&v207.val[0].f64[0] *= 0x1000100010001;
                      *&v207.val[0].f64[1] *= 0x1000100010001;
                      v207.val[1] = v207.val[0];
                      *&v208.val[0].f64[0] *= 0x1000100010001;
                      *&v208.val[0].f64[1] *= 0x1000100010001;
                      v208.val[1] = v208.val[0];
                      *&v209.val[0].f64[0] = 0x1000100010001 * v134.i64[0];
                      *&v209.val[0].f64[1] = 0x1000100010001 * v134.i64[1];
                      *&v209.val[1].f64[0] = 0x1000100010001 * v134.i64[0];
                      *&v209.val[1].f64[1] = 0x1000100010001 * v134.i64[1];
                      *&v210.val[0].f64[0] = 0x1000100010001 * v133.i64[0];
                      *&v210.val[0].f64[1] = 0x1000100010001 * v133.i64[1];
                      *&v210.val[1].f64[0] = 0x1000100010001 * v133.i64[0];
                      *&v211.val[0].f64[0] = 0x1000100010001 * v132.i64[0];
                      *&v211.val[0].f64[1] = 0x1000100010001 * v132.i64[1];
                      *&v211.val[1].f64[0] = 0x1000100010001 * v132.i64[0];
                      *&v211.val[1].f64[1] = 0x1000100010001 * v132.i64[1];
                      v137 = v70;
                      vst2q_f64(v137, v211);
                      v137 += 4;
                      *&v210.val[1].f64[1] = 0x1000100010001 * v133.i64[1];
                      vst2q_f64(v137, v210);
                      v138 = (v70 + 64);
                      vst2q_f64(v138, v209);
                      v139 = (v70 + 96);
                      vst2q_f64(v139, v208);
                      v140 = (v70 + 128);
                      vst2q_f64(v140, v207);
                      v141 = (v70 + 160);
                      vst2q_f64(v141, v206);
                      v142 = (v70 + 192);
                      vst2q_f64(v142, v204);
                      v143 = (v70 + 224);
                      vst2q_f64(v143, *v8.i8);
                      v70 += 256;
                      v123 -= 16;
                    }

                    while (v123);
                    if (v71 == v58)
                    {
                      goto LABEL_42;
                    }

                    if ((v58 & 0xC) == 0)
                    {
                      v69 = v51 + 8 * v71;
LABEL_61:
                      v72 = (v199 + 2 * v69);
                      v73 = v58 - v71;
                      v74 = (v53 + v71 + v52);
                      do
                      {
                        v75 = *v74++;
                        v76 = 0x1000100010001 * (v68 | (v75 << 8));
                        *(v72 - 1) = v76;
                        *v72 = v76;
                        v72 += 2;
                        --v73;
                      }

                      while (v73);
                      goto LABEL_42;
                    }
                  }

                  else
                  {
                    v71 = 0;
                  }

                  v144 = v71;
                  v71 = v58 & 0x7FFFFFFC;
                  v145 = v144 - v71;
                  v146 = (&v54[4 * v144] + 2 * v51);
                  v147 = (v53 + v144 + v52);
                  do
                  {
                    v148 = *v147++;
                    v8.i32[0] = v148;
                    v149 = vmovl_u16(*&vmovl_u8(*v8.i8));
                    v150 = vshll_high_n_u32(v149, 8uLL);
                    v8 = vorrq_s8(vshll_n_u32(*v149.i8, 8uLL), v105);
                    v202.val[0] = vorrq_s8(v150, v105);
                    *&v202.val[1].f64[0] = 0x1000100010001 * *&v202.val[0].f64[0];
                    *&v202.val[1].f64[1] = 0x1000100010001 * *&v202.val[0].f64[1];
                    *&v202.val[0].f64[0] *= 0x1000100010001;
                    *&v202.val[0].f64[1] *= 0x1000100010001;
                    *&v205.val[1].f64[0] = 0x1000100010001 * v8.i64[0];
                    *&v205.val[1].f64[1] = 0x1000100010001 * v8.i64[1];
                    *&v205.val[0].f64[0] = 0x1000100010001 * v8.i64[0];
                    *&v205.val[0].f64[1] = 0x1000100010001 * v8.i64[1];
                    v151 = v146 + 8;
                    vst2q_f64(v146, v205);
                    v152 = v146 + 4;
                    vst2q_f64(v152, v202);
                    v146 = v151;
                    v145 += 4;
                  }

                  while (v145);
                  if (v71 == v58)
                  {
                    goto LABEL_42;
                  }

                  v69 = 8 * (v58 & 0x7FFFFFFC) + v51;
                  goto LABEL_61;
                }
              }
            }

            else if (v59 == 1)
            {
              if (v58 >= 1)
              {
                v91 = v51;
                if (v58 <= 7 || v33 + 2 * v51 < v53 + v52 + v58 && v53 + v52 < v33 + 2 * v51 + 2 * v58)
                {
                  v92 = 0;
                  goto LABEL_81;
                }

                if (v58 >= 0x20)
                {
                  v92 = v58 & 0x7FFFFFE0;
                  v153 = vdupq_n_s8(v60);
                  v154 = (v196 + v52);
                  v155 = v195 + 2 * v51;
                  v156 = v92;
                  do
                  {
                    v203.val[1] = v154[-1];
                    v8 = *v154;
                    v157 = v155 - 32;
                    v203.val[0] = v153;
                    vst2q_s8(v157, v203);
                    vst2q_s8(v155, *(&v8 - 1));
                    v154 += 2;
                    v155 += 64;
                    v156 -= 32;
                  }

                  while (v156);
                  if (v92 == v58)
                  {
                    goto LABEL_42;
                  }

                  if ((v58 & 0x18) != 0)
                  {
                    goto LABEL_120;
                  }
                }

                else
                {
                  v92 = 0;
LABEL_120:
                  v158 = v92;
                  v92 = v58 & 0x7FFFFFF8;
                  v159 = vdup_n_s8(v60);
                  v160 = v158 - v92;
                  v161 = v54 + 2 * v158 + 2 * v51;
                  v162 = (v53 + v158 + v52);
                  do
                  {
                    v163 = *v162++;
                    v8.i64[0] = v163;
                    vst2_s8(v161, *(&v8 - 8));
                    v161 += 16;
                    v160 += 8;
                  }

                  while (v160);
                  if (v92 == v58)
                  {
                    goto LABEL_42;
                  }
                }

                v91 = v92 + v51;
LABEL_81:
                v93 = (v197 + 2 * v91);
                v94 = v58 - v92;
                v95 = (v53 + v92 + v52);
                do
                {
                  v96 = *v95++;
                  *(v93 - 1) = v60;
                  *v93 = v96;
                  v93 += 2;
                  --v94;
                }

                while (v94);
              }
            }

            else
            {
              if (v59 != 2)
              {
                goto LABEL_64;
              }

              if (v58 >= 1)
              {
                v61 = v51;
                if (v58 <= 7 || (v62 = v33 + 2 * v51, v62 < v53 + v52 + v58) && v53 + v52 < v62 + 4 * v58)
                {
                  v63 = 0;
                  goto LABEL_51;
                }

                if (v58 >= 0x20)
                {
                  v63 = v58 & 0x7FFFFFE0;
                  v107 = vdupq_n_s8(v60);
                  v108 = (v196 + v52);
                  v109 = v55 + 2 * v51;
                  v110 = v63;
                  do
                  {
                    v212.val[1] = v108[-1];
                    v8 = *v108;
                    v111 = v109 - 64;
                    v112 = v107;
                    v113 = *v108;
                    v212.val[0] = v107;
                    v212.val[2] = v107;
                    v212.val[3] = v212.val[1];
                    vst4q_s8(v111, v212);
                    vst4q_s8(v109, *(&v8 - 1));
                    v108 += 2;
                    v109 += 128;
                    v110 -= 32;
                  }

                  while (v110);
                  if (v63 == v58)
                  {
                    goto LABEL_42;
                  }

                  if ((v58 & 0x18) == 0)
                  {
                    v61 = v51 + 2 * v63;
LABEL_51:
                    v64 = (v53 + v63 + v52);
                    v65 = v58 - v63;
                    v66 = (v198 + 2 * v61);
                    do
                    {
                      v67 = *v64++;
                      *(v66 - 3) = v60;
                      *(v66 - 2) = v67;
                      *(v66 - 1) = v60;
                      *v66 = v67;
                      v66 += 4;
                      --v65;
                    }

                    while (v65);
                    goto LABEL_42;
                  }
                }

                else
                {
                  v63 = 0;
                }

                v114 = v63;
                v63 = v58 & 0x7FFFFFF8;
                v115 = vdup_n_s8(v60);
                v116 = v114 - v63;
                v117 = &v54[v114] + 2 * v51;
                v118 = (v53 + v114 + v52);
                do
                {
                  v119 = *v118++;
                  v8.i64[0] = v119;
                  v120 = v115;
                  v121 = v119;
                  vst4_s8(v117, *(&v8 - 8));
                  v117 += 32;
                  v116 += 8;
                }

                while (v116);
                if (v63 == v58)
                {
                  goto LABEL_42;
                }

                v61 = 2 * (v58 & 0x7FFFFFF8) + v51;
                goto LABEL_51;
              }
            }

LABEL_42:
            v52 += v58;
            v51 += v58 * v59;
            if (++v57 == v35)
            {
              return result;
            }
          }
        }
      }

      else
      {
        v39 = 0;
        v40 = a4 + 980;
        do
        {
          v41 = *(a4 + v39 + 1236);
          v42 = *(v34 + 4 * v41);
          *(v34 + 4 * v41) = v42 + 1;
          *(v40 + v42) = v39;
          v43 = *(a4 + v39 + 1237);
          v44 = *(v34 + 4 * v43);
          *(v34 + 4 * v43) = v44 + 1;
          *(v40 + v44) = v39 + 1;
          v45 = *(a4 + v39 + 1238);
          v46 = *(v34 + 4 * v45);
          *(v34 + 4 * v45) = v46 + 1;
          *(v40 + v46) = v39 + 2;
          v47 = *(a4 + v39 + 1239);
          v48 = *(v34 + 4 * v47);
          *(v34 + 4 * v47) = v48 + 1;
          *(v40 + v48) = v39 + 3;
          v39 += 4;
        }

        while (v39 < (v14 - 3));
        if (v39 >= v14)
        {
          goto LABEL_41;
        }
      }

      v39 = v39;
      do
      {
        v49 = v6->u8[v39];
        v50 = *(v34 + 4 * v49);
        *(v34 + 4 * v49) = v50 + 1;
        *(a4 + 980 + v50) = v39++;
      }

      while (v14 != v39);
      goto LABEL_41;
    }

    if (HIDWORD(v201) >= v12)
    {
      goto LABEL_31;
    }

    v16 = v12 - HIDWORD(v201);
    if (v201)
    {
      if (v201 <= 7)
      {
        v17 = 0;
        goto LABEL_22;
      }

      if (v201 >= 0x20)
      {
        v17 = v201 & 0xFFFFFFE0;
        v18 = vdupq_n_s8(v16);
        v19 = v6;
        v20 = v17;
        do
        {
          v21 = vaddq_s8(vbicq_s8(v18, vceqzq_s8(v19[1])), v19[1]);
          *v19 = vaddq_s8(vbicq_s8(v18, vceqzq_s8(*v19)), *v19);
          v19[1] = v21;
          v19 += 2;
          v20 -= 32;
        }

        while (v20);
        if (v17 == v14)
        {
          goto LABEL_27;
        }

        if ((v14 & 0x18) == 0)
        {
          goto LABEL_22;
        }
      }

      else
      {
        v17 = 0;
      }

      v22 = v17;
      v17 = v14 & 0xFFFFFFF8;
      v23 = vdup_n_s8(v16);
      v24 = v22 - v17;
      v25 = (v22 + a4 + 1236);
      do
      {
        *v25 = vadd_s8(vbic_s8(v23, vceqz_s8(*v25)), *v25);
        ++v25;
        v24 += 8;
      }

      while (v24);
      if (v17 != v14)
      {
LABEL_22:
        v26 = v14 - v17;
        v27 = (v17 + a4 + 1236);
        do
        {
          if (*v27)
          {
            v28 = v16;
          }

          else
          {
            v28 = 0;
          }

          *v27++ += v28;
          --v26;
        }

        while (v26);
      }
    }

LABEL_27:
    v29 = result;
    if (v16 < v12)
    {
      v30 = (a4 + 4 * v12);
      v31 = v12;
      do
      {
        *v30-- = *(a4 + 4 * (v15 + v31--));
      }

      while (v16 < v31);
    }

    bzero((a4 + 4 * (v16 - (v12 + ~v13))), 4 * (v12 + ~v13) + 4);
    result = v29;
    goto LABEL_31;
  }

  return result;
}

unint64_t HUF_readDTableX2_wksp(_DWORD *a1, char *a2, unint64_t a3, uint64_t a4)
{
  v4 = *a1;
  *(a4 + 704) = 0u;
  *(a4 + 720) = 0u;
  *(a4 + 672) = 0u;
  *(a4 + 688) = 0u;
  v5 = v4;
  *(a4 + 640) = 0u;
  *(a4 + 656) = 0u;
  *(a4 + 624) = 0u;
  if (v4 > 0xCu)
  {
    return -44;
  }

  v7 = a4;
  v370 = (a1 + 1);
  v364 = v4;
  v9 = a4 + 624;
  *v381 = 0;
  v10 = a4 + 992;
  result = HUF_readStats_wksp(a4 + 992, a4 + 624, v381, &v381[1], a2, a3, (a4 + 1248));
  if (result <= 0xFFFFFFFFFFFFFF88)
  {
    v13 = v381[1];
    if (v381[1] > v5)
    {
      return -44;
    }

    LODWORD(v14) = 0;
    v15 = v7 + 676;
    v16 = (v7 + 680);
    v367 = v381[1] + 1;
    v17 = 1;
    v18 = 1;
    do
    {
      --v17;
      v18 -= 2;
      v14 = (v14 + 1);
    }

    while (!*(v9 + 4 * (v381[1] + v17)));
    v360 = result;
    v361 = a1;
    v363 = v381[1] + v17;
    v19 = v381[1] + v17 + 1;
    if (v5 != 12 || v381[1] >= 0xC)
    {
      v21 = v5;
    }

    else
    {
      v21 = 11;
    }

    if (v19 < 2)
    {
      v26 = 0;
      v25 = v370;
    }

    else
    {
      v22 = 0;
      v23 = v19 - 1;
      v24 = (v7 + 684);
      v25 = v370;
      do
      {
        v26 = *(v24 - 14) + v22;
        *v24++ = v22;
        v22 = v26;
        --v23;
      }

      while (v23);
    }

    *v16 = v26;
    v16[v19] = v26;
    v27 = v381[0];
    if (v381[0])
    {
      v28 = 0;
      do
      {
        v29 = *(v10 + v28);
        v30 = v16[v29];
        v16[v29] = v30 + 1;
        *(v7 + 736 + v30) = v28++;
      }

      while (v27 != v28);
    }

    *v16 = 0;
    if (v19 < 2)
    {
LABEL_242:
      result = v360;
      *v361 = v364;
      v361[1] = 1;
      v361[2] = v21;
      v361[3] = HIBYTE(v364);
      return result;
    }

    v31 = 0;
    v32 = v19 - 1;
    v33 = v21 - v13;
    v34 = v7;
    do
    {
      *(v34 + 4) = v31;
      v34 += 4;
      v31 += *(v34 + 624) << v33++;
      --v32;
    }

    while (v32);
    if (v367 - v363 >= (v21 - (v367 - v363) + 1))
    {
LABEL_30:
      if (v363 >= 1)
      {
        v40 = v7 + 736;
        v362 = v367 - v21;
        v375 = a1 + 17;
        v365 = a1 + 5;
        v369 = a1 + 1;
        v359 = v7 + 752;
        v41 = 1;
        v366 = v7;
        while (1)
        {
          v42 = *(v15 + 4 * v41);
          v43 = v367 - v41;
          v44 = *(v7 + 4 * v41);
          v368 = v41 + 1;
          v45 = *(v15 + 4 * (v41 + 1));
          v46 = (1 << (v21 - (v367 - v41)));
          if (v21 - (v367 - v41) >= (v367 - v363))
          {
            if (v42 != v45)
            {
              v54 = v43 + v362;
              if ((v43 + v362) <= 1)
              {
                v55 = 1;
              }

              else
              {
                v55 = v54;
              }

              v56 = v366 + 52 * v43;
              v374 = (v43 << 16) + 0x1000000;
              v57 = v43 + v367;
              v376 = v55;
              if (v55 > v363)
              {
                if (v54 < 2)
                {
                  goto LABEL_32;
                }

                while (2)
                {
                  v59 = v44;
                  v58 = &v25[v59 * 4];
                  v60 = v374 | *(v40 + v42);
                  v61 = v60 | (v60 << 32);
                  if (v46 != 2)
                  {
                    if (v46 != 4)
                    {
                      v62 = *(v56 + 4 * v376);
                      if (v62 >= 1)
                      {
                        if (v62 >= 0x19)
                        {
                          v64 = &v375[v59];
                          v65 = ((v62 - 1) >> 3) + 1;
                          v66 = v65 & 0x3FFFFFFFFFFFFFFCLL;
                          v67 = vdupq_n_s64(v61);
                          v68 = v65 & 0x3FFFFFFFFFFFFFFCLL;
                          do
                          {
                            v64[-4] = v67;
                            v64[-3] = v67;
                            v64[-2] = v67;
                            v64[-1] = v67;
                            *v64 = v67;
                            v64[1] = v67;
                            v64[2] = v67;
                            v64[3] = v67;
                            v64 += 8;
                            v68 -= 4;
                          }

                          while (v68);
                          if (v65 != v66)
                          {
                            v63 = 8 * v66;
                            goto LABEL_62;
                          }
                        }

                        else
                        {
                          v63 = 0;
LABEL_62:
                          v69 = &v365[v63 + v59];
                          do
                          {
                            *(v69 - 2) = v61;
                            *(v69 - 1) = v61;
                            *v69 = v61;
                            v69[1] = v61;
                            v69 += 4;
                            v63 += 8;
                          }

                          while (v63 < v62);
                        }
                      }

LABEL_52:
                      LODWORD(v44) = v44 + v46;
                      if (v45 == ++v42)
                      {
                        goto LABEL_32;
                      }

                      continue;
                    }

                    *v58++ = v61;
                  }

                  break;
                }

                *v58 = v61;
                goto LABEL_52;
              }

              v74 = *(v7 + 4 * v41);
              v372 = v45;
              v373 = 1 << (v21 - v43);
              v371 = v43 + v362;
              while (2)
              {
                v75 = v74;
                v379 = &v375[v75];
                v76 = &v25[v75 * 4];
                v77 = *(v40 + v42);
                if (v54 >= 2)
                {
                  v78 = v374 | v77 | ((v374 | v77) << 32);
                  if (v46 == 2)
                  {
                    v79 = &v25[v75 * 4];
LABEL_80:
                    *v79 = v78;
                  }

                  else
                  {
                    if (v46 == 4)
                    {
                      *v76 = v78;
                      v79 = v76 + 1;
                      goto LABEL_80;
                    }

                    v220 = *(v56 + 4 * v376);
                    if (v220 >= 1)
                    {
                      if (v220 > 0x18)
                      {
                        v222 = ((v220 - 1) >> 3) + 1;
                        v223 = v222 & 0x3FFFFFFFFFFFFFFCLL;
                        v224 = vdupq_n_s64(v78);
                        v225 = &v375[v75];
                        v226 = v222 & 0x3FFFFFFFFFFFFFFCLL;
                        do
                        {
                          v225[-4] = v224;
                          v225[-3] = v224;
                          v225[-2] = v224;
                          v225[-1] = v224;
                          *v225 = v224;
                          v225[1] = v224;
                          v225[2] = v224;
                          v225[3] = v224;
                          v225 += 8;
                          v226 -= 4;
                        }

                        while (v226);
                        if (v222 != v223)
                        {
                          v221 = 8 * v223;
                          goto LABEL_173;
                        }
                      }

                      else
                      {
                        v221 = 0;
LABEL_173:
                        v227 = &v365[v221 + v75];
                        do
                        {
                          *(v227 - 2) = v78;
                          *(v227 - 1) = v78;
                          *v227 = v78;
                          v227[1] = v78;
                          v227 += 4;
                          v221 += 8;
                        }

                        while (v221 < v220);
                      }
                    }
                  }
                }

                v377 = v42;
                v80 = v74;
                v380 = &v369[v75];
                v81 = v376;
                v378 = v74;
LABEL_83:
                v82 = *(v15 + 4 * v81);
                v83 = v57 - v81;
                v84 = *(v56 + 4 * v81++);
                v85 = *(v15 + 4 * v81);
                v86 = v76 + 4 * v84;
                v87 = (v40 + v82);
                v88 = (v40 + v85);
                v89 = (1 << (v21 - v83));
                if (v89 <= 3)
                {
                  if (v89 != 1)
                  {
                    if (v89 == 2)
                    {
                      if (v82 == v85)
                      {
                        goto LABEL_82;
                      }

                      v90 = (v83 << 16) + 0x2000000;
                      v91 = v85 - v82;
                      if ((v85 - v82) > 3 && (v86 >= v88 || v87 >= &v25[8 * v85 + 4 * (v80 + v84) - 8 * v82]))
                      {
                        if (v91 <= 0xF)
                        {
                          v92 = 0;
                          v93 = v90 | v77;
LABEL_130:
                          v145 = v91 & 0xFFFFFFFFFFFFFFFCLL;
                          v86 += 8 * (v91 & 0xFFFFFFFFFFFFFFFCLL);
                          v146 = vdupq_n_s32(v93);
                          v147 = v92 - (v91 & 0xFFFFFFFFFFFFFFFCLL);
                          v148 = (v40 + v92 + v82);
                          v149 = &v380[2 * v92 + v84];
                          do
                          {
                            v150 = *v148++;
                            v11.i32[0] = v150;
                            v151 = vmovl_u8(*v11.i8).u64[0];
                            v12.i8[0] = v151;
                            v12.i8[1] = BYTE2(v151);
                            v12.i8[2] = BYTE4(v151);
                            v12.i8[3] = BYTE6(v151);
                            v12.i8[4] = v151;
                            v12.i8[5] = BYTE2(v151);
                            v12.i8[6] = BYTE4(v151);
                            v12.i8[7] = BYTE6(v151);
                            v152 = vqtbl1q_s8(v12, xmmword_182B08DD0);
                            v12 = vshlq_n_s32(vqtbl1q_s8(v12, xmmword_182B08DC0), 8uLL);
                            v11 = vshlq_n_s32(v152, 8uLL);
                            v385.val[0] = vorrq_s8(v146, v11);
                            v385.val[1] = vorrq_s8(v146, v12);
                            vst2q_f32(v149, v385);
                            v149 += 8;
                            v147 += 4;
                          }

                          while (v147);
                          v80 = v378;
                          if (v91 != v145)
                          {
                            v87 += v145;
                            goto LABEL_158;
                          }

LABEL_82:
                          if (v81 == v19)
                          {
                            LODWORD(v46) = v373;
                            v74 = v80 + v373;
                            v42 = v377 + 1;
                            v54 = v371;
                            if (v372 == v377 + 1)
                            {
                              goto LABEL_32;
                            }

                            continue;
                          }

                          goto LABEL_83;
                        }

                        v92 = v91 & 0xFFFFFFFFFFFFFFF0;
                        v93 = v90 | v77;
                        v136 = vdupq_n_s32(v90 | v77);
                        v137 = &v380[v84];
                        v138 = (v40 + v82);
                        v139 = v91 & 0xFFFFFFFFFFFFFFF0;
                        do
                        {
                          v140 = *v138++;
                          v11 = vshlq_n_s32(vqtbl1q_s8(v140, xmmword_182B08DD0), 8uLL);
                          v386.val[0] = vorrq_s8(v136, vshlq_n_s32(vqtbl1q_s8(v140, xmmword_182B08DF0), 8uLL));
                          v386.val[1] = v386.val[0];
                          v12 = vorrq_s8(v136, vshlq_n_s32(vqtbl1q_s8(v140, xmmword_182B08DE0), 8uLL));
                          v141 = v12;
                          v392.val[0] = vorrq_s8(v136, v11);
                          v392.val[1] = v392.val[0];
                          v142 = v137;
                          vst2q_f32(v142, v392);
                          v142 += 8;
                          v392.val[0] = vorrq_s8(v136, vshlq_n_s32(vqtbl1q_s8(v140, xmmword_182B08DC0), 8uLL));
                          v392.val[1] = v392.val[0];
                          vst2q_f32(v142, v392);
                          v143 = v137 + 16;
                          vst2q_f32(v143, *v12.i8);
                          v144 = v137 + 24;
                          vst2q_f32(v144, v386);
                          v137 += 32;
                          v139 -= 16;
                        }

                        while (v139);
                        if (v91 == v92)
                        {
                          goto LABEL_82;
                        }

                        if ((v91 & 0xC) != 0)
                        {
                          goto LABEL_130;
                        }

                        v87 += v92;
                        v86 += 8 * v92;
                      }

                      do
                      {
LABEL_158:
                        v215 = *v87++;
                        v216 = v90 | (v215 << 8) | v77;
                        *v86 = v216;
                        *(v86 + 1) = v216;
                        v86 += 8;
                      }

                      while (v87 != v88);
                      goto LABEL_82;
                    }

LABEL_100:
                    if (v82 == v85)
                    {
                      goto LABEL_82;
                    }

                    v98 = (v83 << 16) + 0x2000000;
                    v99 = 4 * v89;
                    v100 = ((v99 - 32) >> 5) + 1;
                    v101 = &v379[v84];
                    while (2)
                    {
                      v102 = v98 | (*v87 << 8) | v77;
                      v103 = v102 | (v102 << 32);
                      v104 = &v86[4 * v89];
                      if ((v99 - 32) < 0x60)
                      {
                        do
                        {
LABEL_108:
                          *v86 = v103;
                          *(v86 + 1) = v103;
                          *(v86 + 2) = v103;
                          *(v86 + 3) = v103;
                          v86 += 32;
                        }

                        while (v86 != v104);
                      }

                      else
                      {
                        v105 = vdupq_n_s64(v103);
                        v106 = v101;
                        v107 = v100 & 0xFFFFFFFFFFFFFFCLL;
                        do
                        {
                          v106[-4] = v105;
                          v106[-3] = v105;
                          v106[-2] = v105;
                          v106[-1] = v105;
                          *v106 = v105;
                          v106[1] = v105;
                          v106[2] = v105;
                          v106[3] = v105;
                          v106 += 8;
                          v107 -= 4;
                        }

                        while (v107);
                        if (v100 != (v100 & 0xFFFFFFFFFFFFFFCLL))
                        {
                          v86 += 32 * (v100 & 0xFFFFFFFFFFFFFFCLL);
                          goto LABEL_108;
                        }
                      }

                      ++v87;
                      v101 = (v101 + v99);
                      v86 = v104;
                      if (v87 == v88)
                      {
                        goto LABEL_82;
                      }

                      continue;
                    }
                  }

                  if (v82 == v85)
                  {
                    goto LABEL_82;
                  }

                  v108 = (v83 << 16) + 0x2000000;
                  v109 = v85 - v82;
                  if ((v85 - v82) > 3 && (v86 >= v88 || v87 >= &v25[4 * (v80 + v85 + v84 - v82)]))
                  {
                    if (v109 <= 0xF)
                    {
                      v110 = 0;
                      v111 = v108 | v77;
                      goto LABEL_146;
                    }

                    v110 = v109 & 0xFFFFFFFFFFFFFFF0;
                    v111 = v108 | v77;
                    v180 = vdupq_n_s32(v108 | v77);
                    v181 = &v380[v84];
                    v182 = (v40 + v82);
                    v183 = v109 & 0xFFFFFFFFFFFFFFF0;
                    do
                    {
                      v184 = *v182++;
                      v12 = vorrq_s8(v180, vshlq_n_s32(vqtbl1q_s8(v184, xmmword_182B08DD0), 8uLL));
                      v181[2] = vorrq_s8(v180, vshlq_n_s32(vqtbl1q_s8(v184, xmmword_182B08DE0), 8uLL));
                      v181[3] = vorrq_s8(v180, vshlq_n_s32(vqtbl1q_s8(v184, xmmword_182B08DF0), 8uLL));
                      v11 = vorrq_s8(v180, vshlq_n_s32(vqtbl1q_s8(v184, xmmword_182B08DC0), 8uLL));
                      *v181 = v12;
                      v181[1] = v11;
                      v181 += 4;
                      v183 -= 16;
                    }

                    while (v183);
                    if (v109 == v110)
                    {
                      goto LABEL_82;
                    }

                    if ((v109 & 0xC) != 0)
                    {
LABEL_146:
                      v185 = v109 & 0xFFFFFFFFFFFFFFFCLL;
                      v86 += 4 * (v109 & 0xFFFFFFFFFFFFFFFCLL);
                      v186 = vdupq_n_s32(v111);
                      v187 = v110 - (v109 & 0xFFFFFFFFFFFFFFFCLL);
                      v188 = (v40 + v110 + v82);
                      v189 = &v380[v110 + v84];
                      do
                      {
                        v190 = *v188++;
                        v11.i32[0] = v190;
                        v11 = vorrq_s8(v186, vshll_n_u16(*&vmovl_u8(*v11.i8), 8uLL));
                        *v189++ = v11;
                        v187 += 4;
                      }

                      while (v187);
                      if (v109 == v185)
                      {
                        goto LABEL_82;
                      }

                      v87 += v185;
                    }

                    else
                    {
                      v87 += v110;
                      v86 += 4 * v110;
                    }
                  }

                  do
                  {
                    v219 = *v87++;
                    *v86 = v108 | (v219 << 8) | v77;
                    v86 += 4;
                  }

                  while (v87 != v88);
                  goto LABEL_82;
                }

                break;
              }

              if (v89 != 4)
              {
                if (v89 != 8)
                {
                  goto LABEL_100;
                }

                if (v82 == v85)
                {
                  goto LABEL_82;
                }

                v94 = (v83 << 16) + 0x2000000;
                v95 = v85 - v82;
                if ((v85 - v82) > 3 && (v86 >= v88 || v87 >= &v25[32 * v85 + 4 * (v80 + v84) - 32 * v82]))
                {
                  if (v95 <= 0xF)
                  {
                    v96 = 0;
                    v97 = v94 | v77;
                    goto LABEL_138;
                  }

                  v96 = v95 & 0xFFFFFFFFFFFFFFF0;
                  v153 = vdupq_n_s32(v94 | v77);
                  v154 = &v380[v84];
                  v155 = (v40 + v82);
                  v156 = v95 & 0xFFFFFFFFFFFFFFF0;
                  do
                  {
                    v157 = *v155++;
                    v158 = vorrq_s8(v153, vshlq_n_s32(vqtbl1q_s8(v157, xmmword_182B08DD0), 8uLL));
                    LODWORD(v408.val[0].f64[0]) = v158.i32[0];
                    HIDWORD(v408.val[0].f64[0]) = v158.i32[0];
                    LODWORD(v408.val[0].f64[1]) = v158.i32[1];
                    HIDWORD(v408.val[0].f64[1]) = v158.i32[1];
                    v408.val[1] = v408.val[0];
                    v408.val[2] = v408.val[0];
                    v408.val[3] = v408.val[0];
                    v159 = v154;
                    vst4q_f64(v159, v408);
                    v159 += 8;
                    v160 = vorrq_s8(v153, vshlq_n_s32(vqtbl1q_s8(v157, xmmword_182B08DC0), 8uLL));
                    LODWORD(v408.val[0].f64[0]) = v158.i32[2];
                    HIDWORD(v408.val[0].f64[0]) = v158.i32[2];
                    LODWORD(v408.val[0].f64[1]) = v158.i32[3];
                    HIDWORD(v408.val[0].f64[1]) = v158.i32[3];
                    v408.val[1] = v408.val[0];
                    v408.val[2] = v408.val[0];
                    v408.val[3] = v408.val[0];
                    vst4q_f64(v159, v408);
                    LODWORD(v408.val[0].f64[0]) = v160.i32[0];
                    HIDWORD(v408.val[0].f64[0]) = v160.i32[0];
                    LODWORD(v408.val[0].f64[1]) = v160.i32[1];
                    HIDWORD(v408.val[0].f64[1]) = v160.i32[1];
                    v408.val[1] = v408.val[0];
                    v408.val[2] = v408.val[0];
                    v408.val[3] = v408.val[0];
                    v161 = v154 + 16;
                    vst4q_f64(v161, v408);
                    LODWORD(v408.val[0].f64[0]) = v160.i32[2];
                    HIDWORD(v408.val[0].f64[0]) = v160.i32[2];
                    LODWORD(v408.val[0].f64[1]) = v160.i32[3];
                    HIDWORD(v408.val[0].f64[1]) = v160.i32[3];
                    v408.val[1] = v408.val[0];
                    v408.val[2] = v408.val[0];
                    v408.val[3] = v408.val[0];
                    v162 = v154 + 24;
                    vst4q_f64(v162, v408);
                    v12 = vorrq_s8(v153, vshlq_n_s32(vqtbl1q_s8(v157, xmmword_182B08DE0), 8uLL));
                    LODWORD(v408.val[0].f64[0]) = v12.i32[0];
                    HIDWORD(v408.val[0].f64[0]) = v12.i32[0];
                    LODWORD(v408.val[0].f64[1]) = v12.i32[1];
                    HIDWORD(v408.val[0].f64[1]) = v12.i32[1];
                    v408.val[1] = v408.val[0];
                    v11 = vorrq_s8(v153, vshlq_n_s32(vqtbl1q_s8(v157, xmmword_182B08DF0), 8uLL));
                    v408.val[2] = v408.val[0];
                    v408.val[3] = v408.val[0];
                    v163 = v154 + 32;
                    vst4q_f64(v163, v408);
                    LODWORD(v408.val[0].f64[0]) = v12.i32[2];
                    HIDWORD(v408.val[0].f64[0]) = v12.i32[2];
                    LODWORD(v408.val[0].f64[1]) = v12.i32[3];
                    HIDWORD(v408.val[0].f64[1]) = v12.i32[3];
                    v408.val[1] = v408.val[0];
                    v408.val[2] = v408.val[0];
                    v408.val[3] = v408.val[0];
                    v164 = v154 + 40;
                    vst4q_f64(v164, v408);
                    LODWORD(v408.val[0].f64[0]) = v11.i32[0];
                    HIDWORD(v408.val[0].f64[0]) = v11.i32[0];
                    LODWORD(v408.val[0].f64[1]) = v11.i32[1];
                    HIDWORD(v408.val[0].f64[1]) = v11.i32[1];
                    v12.i64[1] = v11.u32[1];
                    v408.val[1] = v408.val[0];
                    v408.val[2] = v408.val[0];
                    v408.val[3] = v408.val[0];
                    v165 = v154 + 48;
                    vst4q_f64(v165, v408);
                    v11.i32[1] = 0;
                    LODWORD(v408.val[0].f64[0]) = v11.i32[2];
                    HIDWORD(v408.val[0].f64[0]) = v11.i32[2];
                    LODWORD(v408.val[0].f64[1]) = v11.i32[3];
                    HIDWORD(v408.val[0].f64[1]) = v11.i32[3];
                    v408.val[1] = v408.val[0];
                    v408.val[2] = v408.val[0];
                    v408.val[3] = v408.val[0];
                    v166 = v154 + 56;
                    vst4q_f64(v166, v408);
                    v154 += 64;
                    v156 -= 16;
                  }

                  while (v156);
                  v25 = v370;
                  v80 = v378;
                  if (v95 == v96)
                  {
                    goto LABEL_82;
                  }

                  v97 = v94 | v77;
                  if ((v95 & 0xC) != 0)
                  {
LABEL_138:
                    v167 = v95 & 0xFFFFFFFFFFFFFFFCLL;
                    v86 += 32 * (v95 & 0xFFFFFFFFFFFFFFFCLL);
                    v168 = vdupq_n_s32(v97);
                    v169 = v96 - (v95 & 0xFFFFFFFFFFFFFFFCLL);
                    v170 = (v40 + v96 + v82);
                    v171 = &v380[8 * v96 + v84];
                    do
                    {
                      v172 = *v170++;
                      v11.i32[0] = v172;
                      v173 = vmovl_u8(*v11.i8);
                      v174.i64[0] = v173.u8[0];
                      v174.i8[4] = v173.i8[2];
                      v174.i64[1] = v173.u8[4];
                      v174.i8[12] = v173.i8[6];
                      v12 = vorrq_s8(v168, vshlq_n_s32(v174, 8uLL));
                      *&v175.f64[0] = v12.u32[0];
                      *&v175.f64[1] = v12.u32[1];
                      v11 = v175;
                      *&v175.f64[0] = v12.u32[0];
                      *&v175.f64[1] = v12.u32[1];
                      v176 = v175;
                      *&v175.f64[0] = v12.u32[0];
                      *&v175.f64[1] = v12.u32[1];
                      v412.val[0] = v175;
                      *&v175.f64[1] = v12.u32[3];
                      v177 = v12.u32[2];
                      v12.i64[1] = v12.u32[1];
                      *&v409.val[3].f64[0] = v177 | (v177 << 32);
                      *&v409.val[3].f64[1] = *&v175.f64[1] | (*&v175.f64[1] << 32);
                      v409.val[2] = v409.val[3];
                      *&v412.val[3].f64[0] = *&v412.val[0].f64[0] | (*&v412.val[0].f64[0] << 32);
                      *&v412.val[3].f64[1] = *&v412.val[0].f64[1] | (*&v412.val[0].f64[1] << 32);
                      v409.val[1] = v409.val[3];
                      *&v412.val[2].f64[0] = *&v176.f64[0] | (*&v176.f64[0] << 32);
                      *&v412.val[2].f64[1] = *&v176.f64[1] | (*&v176.f64[1] << 32);
                      v409.val[0] = v409.val[3];
                      LODWORD(v412.val[1].f64[0]) = v12.i32[0];
                      HIDWORD(v412.val[1].f64[0]) = v12.i32[0];
                      *&v412.val[1].f64[1] = v12.i64[1] | (v12.i64[1] << 32);
                      *&v412.val[0].f64[0] = v11.i64[0] | (v11.i64[0] << 32);
                      *&v412.val[0].f64[1] = v11.i64[1] | (v11.i64[1] << 32);
                      v178 = v171 + 16;
                      vst4q_f64(v171, v412);
                      v179 = v171 + 8;
                      vst4q_f64(v179, v409);
                      v171 = v178;
                      v169 += 4;
                    }

                    while (v169);
                    v80 = v378;
                    if (v95 == v167)
                    {
                      goto LABEL_82;
                    }

                    v87 += v167;
                  }

                  else
                  {
                    v87 += v96;
                    v86 += 32 * v96;
                  }
                }

                do
                {
                  v217 = *v87++;
                  v218 = v94 | (v217 << 8) | v77 | ((v94 | (v217 << 8) | v77) << 32);
                  *v86 = v218;
                  *(v86 + 1) = v218;
                  *(v86 + 2) = v218;
                  *(v86 + 3) = v218;
                  v86 += 32;
                }

                while (v87 != v88);
                goto LABEL_82;
              }

              if (v82 == v85)
              {
                goto LABEL_82;
              }

              v112 = (v83 << 16) + 0x2000000;
              v113 = v85 - v82;
              if ((v85 - v82) > 7 && (v86 >= v88 || v87 >= &v25[16 * v85 + 4 * (v80 + v84) - 16 * v82]))
              {
                if (v113 <= 0xF)
                {
                  v114 = 0;
                  v115 = v112 | v77;
                  goto LABEL_122;
                }

                v114 = v113 & 0xFFFFFFFFFFFFFFF0;
                v115 = v112 | v77;
                v191 = vdupq_n_s32(v112 | v77);
                v192 = &v380[v84];
                v193 = (v40 + v82);
                v194 = v113 & 0xFFFFFFFFFFFFFFF0;
                do
                {
                  v195 = *v193++;
                  v387.val[0] = vorrq_s8(v191, vshlq_n_s32(vqtbl1q_s8(v195, xmmword_182B08DF0), 8uLL));
                  v196 = vorrq_s8(v191, vshlq_n_s32(vqtbl1q_s8(v195, xmmword_182B08DE0), 8uLL));
                  v197 = vorrq_s8(v191, vshlq_n_s32(vqtbl1q_s8(v195, xmmword_182B08DC0), 8uLL));
                  v387.val[1] = vorrq_s8(v191, vshlq_n_s32(vqtbl1q_s8(v195, xmmword_182B08DD0), 8uLL));
                  *&v198.f64[0] = LODWORD(v387.val[1].f64[0]);
                  *&v198.f64[1] = HIDWORD(v387.val[1].f64[0]);
                  v11 = v198;
                  *&v198.f64[0] = LODWORD(v387.val[1].f64[0]);
                  *&v198.f64[1] = HIDWORD(v387.val[1].f64[0]);
                  v199 = v198;
                  *&v198.f64[0] = LODWORD(v387.val[1].f64[1]);
                  *&v198.f64[1] = HIDWORD(v387.val[1].f64[1]);
                  v200 = v198;
                  *&v198.f64[0] = v197.u32[0];
                  *&v198.f64[1] = v197.u32[1];
                  v201 = v198;
                  *&v198.f64[0] = v197.u32[0];
                  *&v198.f64[1] = v197.u32[1];
                  v202 = v198;
                  *&v198.f64[0] = v197.u32[2];
                  *&v198.f64[1] = v197.u32[3];
                  v402.val[0] = v198;
                  *&v198.f64[0] = v196.u32[0];
                  *&v198.f64[1] = v196.u32[1];
                  v402.val[1] = v198;
                  *&v198.f64[0] = v196.u32[0];
                  *&v198.f64[1] = v196.u32[1];
                  v400.val[0] = v198;
                  *&v198.f64[0] = v196.u32[2];
                  *&v198.f64[1] = v196.u32[3];
                  v395.val[0] = v198;
                  *&v198.f64[0] = LODWORD(v387.val[0].f64[0]);
                  *&v198.f64[1] = HIDWORD(v387.val[0].f64[0]);
                  v395.val[1] = v198;
                  v12.i64[0] = LODWORD(v387.val[0].f64[1]) | (LODWORD(v387.val[0].f64[1]) << 32);
                  v12.i64[1] = HIDWORD(v387.val[0].f64[1]) | (HIDWORD(v387.val[0].f64[1]) << 32);
                  *&v198.f64[1] = HIDWORD(v387.val[0].f64[0]);
                  v203 = v12;
                  HIDWORD(v387.val[0].f64[0]) = LODWORD(v387.val[0].f64[0]);
                  *&v387.val[0].f64[1] = *&v198.f64[1] | (*&v198.f64[1] << 32);
                  *&v387.val[1].f64[0] = *&v395.val[1].f64[0] | (*&v395.val[1].f64[0] << 32);
                  *&v387.val[1].f64[1] = *&v395.val[1].f64[1] | (*&v395.val[1].f64[1] << 32);
                  v204 = v395.val[0].f64[0];
                  *&v395.val[0].f64[0] |= *&v395.val[0].f64[0] << 32;
                  *&v395.val[0].f64[1] |= *&v395.val[0].f64[1] << 32;
                  *&v395.val[1].f64[0] = *&v204 | (*&v204 << 32);
                  v395.val[1].f64[1] = v395.val[0].f64[1];
                  *&v400.val[0].f64[0] |= *&v400.val[0].f64[0] << 32;
                  *&v400.val[0].f64[1] |= *&v400.val[0].f64[1] << 32;
                  *&v400.val[1].f64[0] = *&v402.val[1].f64[0] | (*&v402.val[1].f64[0] << 32);
                  *&v400.val[1].f64[1] = *&v402.val[1].f64[1] | (*&v402.val[1].f64[1] << 32);
                  v205 = v402.val[0].f64[0];
                  *&v402.val[0].f64[0] |= *&v402.val[0].f64[0] << 32;
                  *&v402.val[0].f64[1] |= *&v402.val[0].f64[1] << 32;
                  *&v402.val[1].f64[0] = *&v205 | (*&v205 << 32);
                  v402.val[1].f64[1] = v402.val[0].f64[1];
                  *&v404.val[0].f64[0] = *&v202.f64[0] | (*&v202.f64[0] << 32);
                  *&v404.val[0].f64[1] = *&v202.f64[1] | (*&v202.f64[1] << 32);
                  *&v404.val[1].f64[0] = *&v201.f64[0] | (*&v201.f64[0] << 32);
                  *&v404.val[1].f64[1] = *&v201.f64[1] | (*&v201.f64[1] << 32);
                  *&v406.val[0].f64[0] = *&v200.f64[0] | (*&v200.f64[0] << 32);
                  *&v406.val[0].f64[1] = *&v200.f64[1] | (*&v200.f64[1] << 32);
                  v406.val[1] = v406.val[0];
                  *&v383.val[0].f64[0] = *&v199.f64[0] | (*&v199.f64[0] << 32);
                  *&v383.val[0].f64[1] = *&v199.f64[1] | (*&v199.f64[1] << 32);
                  *&v383.val[1].f64[0] = v11.i64[0] | (v11.i64[0] << 32);
                  *&v383.val[1].f64[1] = v11.i64[1] | (v11.i64[1] << 32);
                  v206 = v192;
                  vst2q_f64(v206, v383);
                  v206 += 4;
                  vst2q_f64(v206, v406);
                  v207 = v192 + 8;
                  vst2q_f64(v207, v404);
                  v208 = v192 + 12;
                  vst2q_f64(v208, v402);
                  v209 = v192 + 16;
                  vst2q_f64(v209, v400);
                  v210 = v192 + 20;
                  vst2q_f64(v210, v395);
                  v211 = v192 + 24;
                  vst2q_f64(v211, v387);
                  v212 = v192 + 28;
                  vst2q_f64(v212, *v12.i8);
                  v192 += 32;
                  v194 -= 16;
                }

                while (v194);
                v80 = v378;
                if (v113 == v114)
                {
                  goto LABEL_82;
                }

                if ((v113 & 8) != 0)
                {
LABEL_122:
                  v116 = v113 & 0xFFFFFFFFFFFFFFF8;
                  v86 += 16 * (v113 & 0xFFFFFFFFFFFFFFF8);
                  v117 = vdupq_n_s32(v115);
                  v118 = v114 - (v113 & 0xFFFFFFFFFFFFFFF8);
                  v119 = (v40 + v114 + v82);
                  v120 = &v380[4 * v114 + v84];
                  do
                  {
                    v121 = *v119++;
                    v122.i64[0] = v121;
                    v122.i64[1] = v121;
                    v123 = vqtbl1q_s8(v122, xmmword_182B08DC0);
                    v124 = vorrq_s8(v117, vshlq_n_s32(vqtbl1q_s8(v122, xmmword_182B08DF0), 8uLL));
                    v125 = vorrq_s8(v117, vshlq_n_s32(vqtbl1q_s8(v122, xmmword_182B08DE0), 8uLL));
                    v126 = vorrq_s8(v117, vshlq_n_s32(vqtbl1q_s8(v122, xmmword_182B08DD0), 8uLL));
                    v390.val[1] = vorrq_s8(v117, vshlq_n_s32(v123, 8uLL));
                    *&v127.f64[0] = v126.u32[0];
                    *&v127.f64[1] = v126.u32[1];
                    v128 = v127;
                    *&v127.f64[0] = v125.u32[0];
                    *&v127.f64[1] = v125.u32[1];
                    v129 = v127;
                    *&v127.f64[0] = v126.u32[2];
                    *&v127.f64[1] = v126.u32[3];
                    v130 = v127;
                    *&v127.f64[0] = v125.u32[2];
                    *&v127.f64[1] = v125.u32[3];
                    v394.val[0] = v127;
                    *&v127.f64[0] = LODWORD(v390.val[1].f64[0]);
                    *&v127.f64[1] = HIDWORD(v390.val[1].f64[0]);
                    v394.val[1] = v127;
                    *&v127.f64[0] = v124.u32[0];
                    *&v127.f64[1] = v124.u32[1];
                    v390.val[0] = v127;
                    *&v127.f64[1] = HIDWORD(v390.val[1].f64[1]);
                    v12.i64[0] = v124.u32[2] | (v124.u32[2] << 32);
                    v12.i64[1] = v124.u32[3] | (v124.u32[3] << 32);
                    *&v390.val[1].f64[0] = *&v390.val[0].f64[0] | (*&v390.val[0].f64[0] << 32);
                    v131 = v394.val[1].f64[1];
                    v11.i64[0] = LODWORD(v390.val[1].f64[1]) | (LODWORD(v390.val[1].f64[1]) << 32);
                    *&v132 = *&v394.val[1].f64[0] | (*&v394.val[1].f64[0] << 32);
                    *&v390.val[1].f64[1] = *&v390.val[0].f64[1] | (*&v390.val[0].f64[1] << 32);
                    *&v394.val[1].f64[0] = *&v394.val[0].f64[0] | (*&v394.val[0].f64[0] << 32);
                    v390.val[0].f64[0] = v132;
                    *&v394.val[1].f64[1] = *&v394.val[0].f64[1] | (*&v394.val[0].f64[1] << 32);
                    *&v398.val[1].f64[0] = *&v129.f64[0] | (*&v129.f64[0] << 32);
                    *&v394.val[0].f64[0] = *&v130.f64[0] | (*&v130.f64[0] << 32);
                    *&v398.val[1].f64[1] = *&v129.f64[1] | (*&v129.f64[1] << 32);
                    v11.i64[1] = *&v127.f64[1] | (*&v127.f64[1] << 32);
                    *&v398.val[0].f64[0] = *&v128.f64[0] | (*&v128.f64[0] << 32);
                    *&v390.val[0].f64[1] = *&v131 | (*&v131 << 32);
                    *&v398.val[0].f64[1] = *&v128.f64[1] | (*&v128.f64[1] << 32);
                    *&v394.val[0].f64[1] = *&v130.f64[1] | (*&v130.f64[1] << 32);
                    v133 = v120;
                    vst2q_f64(v133, v398);
                    v133 += 4;
                    v134 = v120 + 8;
                    vst2q_f64(v134, v390);
                    v135 = v120 + 12;
                    vst2q_f64(v133, v394);
                    vst2q_f64(v135, *v11.i8);
                    v120 += 16;
                    v118 += 8;
                  }

                  while (v118);
                  v25 = v370;
                  v80 = v378;
                  if (v113 == v116)
                  {
                    goto LABEL_82;
                  }

                  v87 += v116;
                }

                else
                {
                  v87 += v114;
                  v86 += 16 * v114;
                }
              }

              do
              {
                v213 = *v87++;
                v214 = v112 | (v213 << 8) | v77 | ((v112 | (v213 << 8) | v77) << 32);
                *v86 = v214;
                *(v86 + 1) = v214;
                v86 += 16;
              }

              while (v87 != v88);
              goto LABEL_82;
            }
          }

          else
          {
            v47 = &v25[4 * v44];
            v48 = (v40 + v42);
            v49 = (v40 + v45);
            if (v46 > 3)
            {
              if (v46 != 4)
              {
                if (v46 == 8)
                {
                  if (v42 == v45)
                  {
                    goto LABEL_32;
                  }

                  v70 = (v43 << 16) + 0x1000000;
                  v71 = v45 - v42;
                  if ((v45 - v42) >= 4 && (v47 >= v49 || v48 >= &v25[32 * v45 + 4 * v44 - 32 * v42]))
                  {
                    v72 = vdupq_n_s32(v70);
                    if (v71 < 0x10)
                    {
                      v73 = 0;
                      goto LABEL_214;
                    }

                    v73 = v71 & 0xFFFFFFFFFFFFFFF0;
                    v280 = &v25[4 * v44];
                    v281 = (v40 + v42);
                    v282 = v71 & 0xFFFFFFFFFFFFFFF0;
                    do
                    {
                      v283 = *v281++;
                      v284 = vorrq_s8(v72, vqtbl1q_s8(v283, xmmword_182B08DD0));
                      LODWORD(v411.val[0].f64[0]) = v284.i32[0];
                      HIDWORD(v411.val[0].f64[0]) = v284.i32[0];
                      LODWORD(v411.val[0].f64[1]) = v284.i32[1];
                      HIDWORD(v411.val[0].f64[1]) = v284.i32[1];
                      v285 = vorrq_s8(v72, vqtbl1q_s8(v283, xmmword_182B08DC0));
                      v411.val[1] = v411.val[0];
                      v411.val[2] = v411.val[0];
                      v411.val[3] = v411.val[0];
                      v286 = v280;
                      vst4q_f64(v286, v411);
                      v286 += 8;
                      *&v287.f64[0] = v284.u32[2] | (v284.u32[2] << 32);
                      *&v287.f64[1] = v284.u32[3] | (v284.u32[3] << 32);
                      v411.val[0] = v287;
                      v411.val[1] = v287;
                      v411.val[2] = v287;
                      vst4q_f64(v286, v411);
                      *&v287.f64[0] = v285.u32[0] | (v285.u32[0] << 32);
                      *&v287.f64[1] = v285.u32[1] | (v285.u32[1] << 32);
                      v411.val[0] = v287;
                      v411.val[1] = v287;
                      v411.val[2] = v287;
                      v288 = v280 + 16;
                      vst4q_f64(v288, v411);
                      *&v287.f64[0] = v285.u32[2] | (v285.u32[2] << 32);
                      *&v287.f64[1] = v285.u32[3] | (v285.u32[3] << 32);
                      v411.val[0] = v287;
                      v411.val[1] = v287;
                      v411.val[2] = v287;
                      v289 = v280 + 24;
                      vst4q_f64(v289, v411);
                      v12 = vorrq_s8(v72, vqtbl1q_s8(v283, xmmword_182B08DE0));
                      *&v287.f64[0] = v12.u32[0] | (v12.u32[0] << 32);
                      *&v287.f64[1] = v12.u32[1] | (v12.u32[1] << 32);
                      v411.val[0] = v287;
                      v11 = vorrq_s8(v72, vqtbl1q_s8(v283, xmmword_182B08DF0));
                      v411.val[1] = v287;
                      v411.val[2] = v287;
                      v290 = v280 + 32;
                      vst4q_f64(v290, v411);
                      *&v287.f64[0] = v12.u32[2] | (v12.u32[2] << 32);
                      *&v287.f64[1] = v12.u32[3] | (v12.u32[3] << 32);
                      v411.val[0] = v287;
                      v411.val[1] = v287;
                      v411.val[2] = v287;
                      v291 = v280 + 40;
                      vst4q_f64(v291, v411);
                      *&v287.f64[0] = v11.u32[0] | (v11.u32[0] << 32);
                      *&v287.f64[1] = v11.u32[1] | (v11.u32[1] << 32);
                      v12.i64[1] = v11.u32[1];
                      v411.val[0] = v287;
                      v411.val[1] = v287;
                      v411.val[2] = v287;
                      v292 = v280 + 48;
                      vst4q_f64(v292, v411);
                      v11.i32[1] = 0;
                      *&v287.f64[0] = v11.u32[2] | (v11.u32[2] << 32);
                      *&v287.f64[1] = v11.u32[3] | (v11.u32[3] << 32);
                      v411.val[0] = v287;
                      v411.val[1] = v287;
                      v411.val[2] = v287;
                      v293 = v280 + 56;
                      vst4q_f64(v293, v411);
                      v280 += 64;
                      v282 -= 16;
                    }

                    while (v282);
                    v25 = v370;
                    if (v71 == v73)
                    {
                      goto LABEL_32;
                    }

                    if ((v71 & 0xC) != 0)
                    {
LABEL_214:
                      v294 = v71 & 0xFFFFFFFFFFFFFFFCLL;
                      v47 += 32 * (v71 & 0xFFFFFFFFFFFFFFFCLL);
                      v295 = v73 - (v71 & 0xFFFFFFFFFFFFFFFCLL);
                      v296 = (v40 + v73 + v42);
                      v297 = &v369[8 * v73 + v44];
                      do
                      {
                        v298 = *v296++;
                        v11.i32[0] = v298;
                        v299 = vmovl_u8(*v11.i8);
                        v300.i64[0] = v299.u8[0];
                        v300.i8[4] = v299.i8[2];
                        v300.i64[1] = v299.u8[4];
                        v300.i8[12] = v299.i8[6];
                        v12 = vorrq_s8(v72, v300);
                        *&v301.f64[0] = v12.u32[0];
                        *&v301.f64[1] = v12.u32[1];
                        v11 = v301;
                        *&v301.f64[0] = v12.u32[0];
                        *&v301.f64[1] = v12.u32[1];
                        v302 = v301;
                        *&v301.f64[0] = v12.u32[0];
                        *&v301.f64[1] = v12.u32[1];
                        v413.val[0] = v301;
                        *&v301.f64[1] = v12.u32[3];
                        v303 = v12.u32[2];
                        v12.i64[1] = v12.u32[1];
                        *&v410.val[3].f64[0] = v303 | (v303 << 32);
                        *&v410.val[3].f64[1] = *&v301.f64[1] | (*&v301.f64[1] << 32);
                        v410.val[2] = v410.val[3];
                        *&v413.val[3].f64[0] = *&v413.val[0].f64[0] | (*&v413.val[0].f64[0] << 32);
                        *&v413.val[3].f64[1] = *&v413.val[0].f64[1] | (*&v413.val[0].f64[1] << 32);
                        v410.val[1] = v410.val[3];
                        *&v413.val[2].f64[0] = *&v302.f64[0] | (*&v302.f64[0] << 32);
                        *&v413.val[2].f64[1] = *&v302.f64[1] | (*&v302.f64[1] << 32);
                        v410.val[0] = v410.val[3];
                        LODWORD(v413.val[1].f64[0]) = v12.i32[0];
                        HIDWORD(v413.val[1].f64[0]) = v12.i32[0];
                        *&v413.val[1].f64[1] = v12.i64[1] | (v12.i64[1] << 32);
                        *&v413.val[0].f64[0] = v11.i64[0] | (v11.i64[0] << 32);
                        *&v413.val[0].f64[1] = v11.i64[1] | (v11.i64[1] << 32);
                        v304 = v297 + 16;
                        vst4q_f64(v297, v413);
                        v305 = v297 + 8;
                        vst4q_f64(v305, v410);
                        v297 = v304;
                        v295 += 4;
                      }

                      while (v295);
                      if (v71 == v294)
                      {
                        goto LABEL_32;
                      }

                      v48 += v294;
                    }

                    else
                    {
                      v48 += v73;
                      v47 += 32 * v73;
                    }
                  }

                  do
                  {
                    v343 = *v48++;
                    v344 = v70 | v343 | ((v70 | v343) << 32);
                    *v47 = v344;
                    *(v47 + 8) = v344;
                    *(v47 + 16) = v344;
                    *(v47 + 24) = v344;
                    v47 += 32;
                  }

                  while (v48 != v49);
                  goto LABEL_32;
                }

LABEL_176:
                if (v42 == v45)
                {
                  goto LABEL_32;
                }

                v228 = (v43 << 16) + 0x1000000;
                v229 = 4 * v46;
                v230 = ((v229 - 32) >> 5) + 1;
                v231 = &v375[v44];
                while (2)
                {
                  v232 = v228 | *v48 | ((v228 | *v48) << 32);
                  v233 = v47 + 4 * v46;
                  if ((v229 - 32) < 0x60)
                  {
                    do
                    {
LABEL_184:
                      *v47 = v232;
                      *(v47 + 8) = v232;
                      *(v47 + 16) = v232;
                      *(v47 + 24) = v232;
                      v47 += 32;
                    }

                    while (v47 != v233);
                  }

                  else
                  {
                    v234 = vdupq_n_s64(v232);
                    v235 = v231;
                    v236 = v230 & 0xFFFFFFFFFFFFFFCLL;
                    do
                    {
                      v235[-4] = v234;
                      v235[-3] = v234;
                      v235[-2] = v234;
                      v235[-1] = v234;
                      *v235 = v234;
                      v235[1] = v234;
                      v235[2] = v234;
                      v235[3] = v234;
                      v235 += 8;
                      v236 -= 4;
                    }

                    while (v236);
                    if (v230 != (v230 & 0xFFFFFFFFFFFFFFCLL))
                    {
                      v47 += 32 * (v230 & 0xFFFFFFFFFFFFFFCLL);
                      goto LABEL_184;
                    }
                  }

                  ++v48;
                  v231 = (v231 + v229);
                  v47 = v233;
                  if (v48 == v49)
                  {
                    goto LABEL_32;
                  }

                  continue;
                }
              }

              if (v42 == v45)
              {
                goto LABEL_32;
              }

              v241 = (v43 << 16) + 0x1000000;
              v242 = v45 - v42;
              if ((v45 - v42) >= 8 && (v47 >= v49 || v48 >= &v25[16 * v45 + 4 * v44 - 16 * v42]))
              {
                v243 = vdupq_n_s32(v241);
                if (v242 < 0x10)
                {
                  v244 = 0;
                  goto LABEL_198;
                }

                v244 = v242 & 0xFFFFFFFFFFFFFFF0;
                v319 = &v25[4 * v44];
                v320 = (v40 + v42);
                v321 = v242 & 0xFFFFFFFFFFFFFFF0;
                do
                {
                  v322 = *v320++;
                  v389.val[0] = vorrq_s8(v243, vqtbl1q_s8(v322, xmmword_182B08DF0));
                  v389.val[1] = vorrq_s8(v243, vqtbl1q_s8(v322, xmmword_182B08DE0));
                  v323 = vorrq_s8(v243, vqtbl1q_s8(v322, xmmword_182B08DC0));
                  v324 = vorrq_s8(v243, vqtbl1q_s8(v322, xmmword_182B08DD0));
                  *&v325.f64[0] = v324.u32[0];
                  *&v325.f64[1] = v324.u32[1];
                  v11 = v325;
                  *&v325.f64[0] = v324.u32[0];
                  *&v325.f64[1] = v324.u32[1];
                  v326 = v325;
                  *&v325.f64[0] = v324.u32[2];
                  *&v325.f64[1] = v324.u32[3];
                  v327 = v325;
                  *&v325.f64[0] = v323.u32[0];
                  *&v325.f64[1] = v323.u32[1];
                  v328 = v325;
                  *&v325.f64[0] = v323.u32[0];
                  *&v325.f64[1] = v323.u32[1];
                  v329 = v325;
                  *&v325.f64[0] = v323.u32[2];
                  *&v325.f64[1] = v323.u32[3];
                  v403.val[0] = v325;
                  *&v325.f64[0] = LODWORD(v389.val[1].f64[0]);
                  *&v325.f64[1] = HIDWORD(v389.val[1].f64[0]);
                  v403.val[1] = v325;
                  *&v325.f64[0] = LODWORD(v389.val[1].f64[0]);
                  *&v325.f64[1] = HIDWORD(v389.val[1].f64[0]);
                  v401.val[0] = v325;
                  *&v325.f64[0] = LODWORD(v389.val[1].f64[1]);
                  *&v325.f64[1] = HIDWORD(v389.val[1].f64[1]);
                  v397.val[0] = v325;
                  *&v325.f64[0] = LODWORD(v389.val[0].f64[0]);
                  *&v325.f64[1] = HIDWORD(v389.val[0].f64[0]);
                  v397.val[1] = v325;
                  v12.i64[0] = LODWORD(v389.val[0].f64[1]) | (LODWORD(v389.val[0].f64[1]) << 32);
                  v12.i64[1] = HIDWORD(v389.val[0].f64[1]) | (HIDWORD(v389.val[0].f64[1]) << 32);
                  *&v325.f64[1] = HIDWORD(v389.val[0].f64[0]);
                  v330 = v12;
                  HIDWORD(v389.val[0].f64[0]) = LODWORD(v389.val[0].f64[0]);
                  *&v389.val[0].f64[1] = *&v325.f64[1] | (*&v325.f64[1] << 32);
                  *&v389.val[1].f64[0] = *&v397.val[1].f64[0] | (*&v397.val[1].f64[0] << 32);
                  *&v389.val[1].f64[1] = *&v397.val[1].f64[1] | (*&v397.val[1].f64[1] << 32);
                  v331 = v397.val[0].f64[0];
                  *&v397.val[0].f64[0] |= *&v397.val[0].f64[0] << 32;
                  *&v397.val[0].f64[1] |= *&v397.val[0].f64[1] << 32;
                  *&v397.val[1].f64[0] = *&v331 | (*&v331 << 32);
                  v397.val[1].f64[1] = v397.val[0].f64[1];
                  *&v401.val[0].f64[0] |= *&v401.val[0].f64[0] << 32;
                  *&v401.val[0].f64[1] |= *&v401.val[0].f64[1] << 32;
                  *&v401.val[1].f64[0] = *&v403.val[1].f64[0] | (*&v403.val[1].f64[0] << 32);
                  *&v401.val[1].f64[1] = *&v403.val[1].f64[1] | (*&v403.val[1].f64[1] << 32);
                  v332 = v403.val[0].f64[0];
                  *&v403.val[0].f64[0] |= *&v403.val[0].f64[0] << 32;
                  *&v403.val[0].f64[1] |= *&v403.val[0].f64[1] << 32;
                  *&v403.val[1].f64[0] = *&v332 | (*&v332 << 32);
                  v403.val[1].f64[1] = v403.val[0].f64[1];
                  *&v405.val[0].f64[0] = *&v329.f64[0] | (*&v329.f64[0] << 32);
                  *&v405.val[0].f64[1] = *&v329.f64[1] | (*&v329.f64[1] << 32);
                  *&v405.val[1].f64[0] = *&v328.f64[0] | (*&v328.f64[0] << 32);
                  *&v405.val[1].f64[1] = *&v328.f64[1] | (*&v328.f64[1] << 32);
                  *&v407.val[0].f64[0] = *&v327.f64[0] | (*&v327.f64[0] << 32);
                  *&v407.val[0].f64[1] = *&v327.f64[1] | (*&v327.f64[1] << 32);
                  v407.val[1] = v407.val[0];
                  *&v384.val[0].f64[0] = *&v326.f64[0] | (*&v326.f64[0] << 32);
                  *&v384.val[0].f64[1] = *&v326.f64[1] | (*&v326.f64[1] << 32);
                  *&v384.val[1].f64[0] = v11.i64[0] | (v11.i64[0] << 32);
                  *&v384.val[1].f64[1] = v11.i64[1] | (v11.i64[1] << 32);
                  v333 = v319;
                  vst2q_f64(v333, v384);
                  v333 += 4;
                  vst2q_f64(v333, v407);
                  v334 = v319 + 8;
                  vst2q_f64(v334, v405);
                  v335 = v319 + 12;
                  vst2q_f64(v335, v403);
                  v336 = v319 + 16;
                  vst2q_f64(v336, v401);
                  v337 = v319 + 20;
                  vst2q_f64(v337, v397);
                  v338 = v319 + 24;
                  vst2q_f64(v338, v389);
                  v339 = v319 + 28;
                  vst2q_f64(v339, *v12.i8);
                  v319 += 32;
                  v321 -= 16;
                }

                while (v321);
                if (v242 == v244)
                {
                  goto LABEL_32;
                }

                if ((v242 & 8) != 0)
                {
LABEL_198:
                  v245 = v242 & 0xFFFFFFFFFFFFFFF8;
                  v47 += 16 * (v242 & 0xFFFFFFFFFFFFFFF8);
                  v246 = v244 - (v242 & 0xFFFFFFFFFFFFFFF8);
                  v247 = (v40 + v244 + v42);
                  v248 = &v369[4 * v244 + v44];
                  do
                  {
                    v249 = *v247++;
                    v250.i64[0] = v249;
                    v250.i64[1] = v249;
                    v251 = vqtbl1q_s8(v250, xmmword_182B08DE0);
                    v252 = vqtbl1q_s8(v250, xmmword_182B08DD0);
                    v253 = vqtbl1q_s8(v250, xmmword_182B08DC0);
                    v254 = vorrq_s8(v243, vqtbl1q_s8(v250, xmmword_182B08DF0));
                    v255 = vorrq_s8(v243, v251);
                    v256 = vorrq_s8(v243, v252);
                    v391.val[1] = vorrq_s8(v243, v253);
                    *&v257.f64[0] = v256.u32[0];
                    *&v257.f64[1] = v256.u32[1];
                    v258 = v257;
                    *&v257.f64[0] = v255.u32[0];
                    *&v257.f64[1] = v255.u32[1];
                    v259 = v257;
                    *&v257.f64[0] = v256.u32[2];
                    *&v257.f64[1] = v256.u32[3];
                    v260 = v257;
                    *&v257.f64[0] = v255.u32[2];
                    *&v257.f64[1] = v255.u32[3];
                    v396.val[0] = v257;
                    *&v257.f64[0] = LODWORD(v391.val[1].f64[0]);
                    *&v257.f64[1] = HIDWORD(v391.val[1].f64[0]);
                    v396.val[1] = v257;
                    *&v257.f64[0] = v254.u32[0];
                    *&v257.f64[1] = v254.u32[1];
                    v391.val[0] = v257;
                    *&v257.f64[1] = HIDWORD(v391.val[1].f64[1]);
                    v12.i64[0] = v254.u32[2] | (v254.u32[2] << 32);
                    v12.i64[1] = v254.u32[3] | (v254.u32[3] << 32);
                    *&v391.val[1].f64[0] = *&v391.val[0].f64[0] | (*&v391.val[0].f64[0] << 32);
                    v261 = v396.val[1].f64[1];
                    v11.i64[0] = LODWORD(v391.val[1].f64[1]) | (LODWORD(v391.val[1].f64[1]) << 32);
                    *&v262 = *&v396.val[1].f64[0] | (*&v396.val[1].f64[0] << 32);
                    *&v391.val[1].f64[1] = *&v391.val[0].f64[1] | (*&v391.val[0].f64[1] << 32);
                    *&v396.val[1].f64[0] = *&v396.val[0].f64[0] | (*&v396.val[0].f64[0] << 32);
                    v391.val[0].f64[0] = v262;
                    *&v396.val[1].f64[1] = *&v396.val[0].f64[1] | (*&v396.val[0].f64[1] << 32);
                    *&v399.val[1].f64[0] = *&v259.f64[0] | (*&v259.f64[0] << 32);
                    *&v396.val[0].f64[0] = *&v260.f64[0] | (*&v260.f64[0] << 32);
                    *&v399.val[1].f64[1] = *&v259.f64[1] | (*&v259.f64[1] << 32);
                    v11.i64[1] = *&v257.f64[1] | (*&v257.f64[1] << 32);
                    *&v399.val[0].f64[0] = *&v258.f64[0] | (*&v258.f64[0] << 32);
                    *&v391.val[0].f64[1] = *&v261 | (*&v261 << 32);
                    *&v399.val[0].f64[1] = *&v258.f64[1] | (*&v258.f64[1] << 32);
                    *&v396.val[0].f64[1] = *&v260.f64[1] | (*&v260.f64[1] << 32);
                    v263 = v248;
                    vst2q_f64(v263, v399);
                    v263 += 4;
                    v264 = v248 + 8;
                    vst2q_f64(v264, v391);
                    v265 = v248 + 12;
                    vst2q_f64(v263, v396);
                    vst2q_f64(v265, *v11.i8);
                    v248 += 16;
                    v246 += 8;
                  }

                  while (v246);
                  if (v242 == v245)
                  {
                    goto LABEL_32;
                  }

                  v48 += v245;
                }

                else
                {
                  v48 += v244;
                  v47 += 16 * v244;
                }
              }

              do
              {
                v340 = *v48++;
                v341 = v241 | v340 | ((v241 | v340) << 32);
                *v47 = v341;
                *(v47 + 8) = v341;
                v47 += 16;
              }

              while (v48 != v49);
              goto LABEL_32;
            }

            if (v46 == 1)
            {
              if (v42 == v45)
              {
                goto LABEL_32;
              }

              v237 = (v43 << 16) + 0x1000000;
              v238 = v45 - v42;
              if ((v45 - v42) >= 4 && (v47 >= v49 || v48 >= &v25[4 * (v45 + v44 - v42)]))
              {
                v239 = vdupq_n_s32(v237);
                if (v238 < 0x20)
                {
                  v240 = 0;
                  goto LABEL_222;
                }

                v240 = v238 & 0xFFFFFFFFFFFFFFE0;
                v306 = &v375[v44];
                v307 = (v359 + v42);
                v308 = v238 & 0xFFFFFFFFFFFFFFE0;
                do
                {
                  v309 = v307[-1];
                  v310 = *v307;
                  v311 = vqtbl1q_s8(*v307, xmmword_182B08DE0);
                  v312 = vqtbl1q_s8(*v307, xmmword_182B08DC0);
                  v313 = vqtbl1q_s8(*v307, xmmword_182B08DD0);
                  v306[-4] = vorrq_s8(v239, vqtbl1q_s8(v309, xmmword_182B08DD0));
                  v306[-3] = vorrq_s8(v239, vqtbl1q_s8(v309, xmmword_182B08DC0));
                  v12 = vorrq_s8(v239, vqtbl1q_s8(v310, xmmword_182B08DF0));
                  v306[-2] = vorrq_s8(v239, vqtbl1q_s8(v309, xmmword_182B08DE0));
                  v306[-1] = vorrq_s8(v239, vqtbl1q_s8(v309, xmmword_182B08DF0));
                  *v306 = vorrq_s8(v239, v313);
                  v306[1] = vorrq_s8(v239, v312);
                  v11 = vorrq_s8(v239, v311);
                  v306[2] = v11;
                  v306[3] = v12;
                  v306 += 8;
                  v307 += 2;
                  v308 -= 32;
                }

                while (v308);
                if (v238 == v240)
                {
                  goto LABEL_32;
                }

                if ((v238 & 0x1C) != 0)
                {
LABEL_222:
                  v314 = v238 & 0xFFFFFFFFFFFFFFFCLL;
                  v47 += 4 * (v238 & 0xFFFFFFFFFFFFFFFCLL);
                  v315 = v240 - (v238 & 0xFFFFFFFFFFFFFFFCLL);
                  v316 = (v40 + v240 + v42);
                  v317 = &v369[v240 + v44];
                  do
                  {
                    v318 = *v316++;
                    v11.i32[0] = v318;
                    v11 = vorrq_s8(v239, vmovl_u16(*&vmovl_u8(*v11.i8)));
                    *v317++ = v11;
                    v315 += 4;
                  }

                  while (v315);
                  if (v238 == v314)
                  {
                    goto LABEL_32;
                  }

                  v48 += v314;
                }

                else
                {
                  v48 += v240;
                  v47 += 4 * v240;
                }
              }

              do
              {
                v345 = *v48++;
                *v47 = v237 | v345;
                v47 += 4;
              }

              while (v48 != v49);
              goto LABEL_32;
            }

            if (v46 != 2)
            {
              goto LABEL_176;
            }

            if (v42 != v45)
            {
              v50 = (v43 << 16) + 0x1000000;
              v51 = v45 - v42;
              if ((v45 - v42) >= 4 && (v47 >= v49 || v48 >= &v25[8 * v45 + 4 * v44 - 8 * v42]))
              {
                v52 = vdupq_n_s32(v50);
                if (v51 < 0x10)
                {
                  v53 = 0;
LABEL_206:
                  v273 = v51 & 0xFFFFFFFFFFFFFFFCLL;
                  v47 += 8 * (v51 & 0xFFFFFFFFFFFFFFFCLL);
                  v274 = v53 - (v51 & 0xFFFFFFFFFFFFFFFCLL);
                  v275 = (v40 + v53 + v42);
                  v276 = &v369[2 * v53 + v44];
                  do
                  {
                    v277 = *v275++;
                    v11.i32[0] = v277;
                    v278 = vmovl_u8(*v11.i8).u64[0];
                    v12.i8[0] = v278;
                    v12.i8[1] = BYTE2(v278);
                    v12.i8[2] = BYTE4(v278);
                    v12.i8[3] = BYTE6(v278);
                    v12.i8[4] = v278;
                    v12.i8[5] = BYTE2(v278);
                    v12.i8[6] = BYTE4(v278);
                    v12.i8[7] = BYTE6(v278);
                    v11 = vqtbl1q_s8(v12, xmmword_182B08DC0);
                    v12 = vorrq_s8(v52, vqtbl1q_s8(v12, xmmword_182B08DD0));
                    v279 = vorrq_s8(v52, v11);
                    vst2q_f32(v276, *v12.i8);
                    v276 += 8;
                    v274 += 4;
                  }

                  while (v274);
                  if (v51 == v273)
                  {
                    goto LABEL_32;
                  }

                  v48 += v273;
                  goto LABEL_234;
                }

                v53 = v51 & 0xFFFFFFFFFFFFFFF0;
                v266 = &v25[4 * v44];
                v267 = (v40 + v42);
                v268 = v51 & 0xFFFFFFFFFFFFFFF0;
                do
                {
                  v269 = *v267++;
                  v388.val[0] = vorrq_s8(v52, vqtbl1q_s8(v269, xmmword_182B08DF0));
                  v388.val[1] = v388.val[0];
                  v393.val[0] = vorrq_s8(v52, vqtbl1q_s8(v269, xmmword_182B08DE0));
                  v393.val[1] = v393.val[0];
                  v382.val[0] = vorrq_s8(v52, vqtbl1q_s8(v269, xmmword_182B08DD0));
                  v382.val[1] = v382.val[0];
                  v270 = v266;
                  vst2q_f32(v270, v382);
                  v270 += 8;
                  v11 = vorrq_s8(v52, vqtbl1q_s8(v269, xmmword_182B08DC0));
                  v12 = v11;
                  vst2q_f32(v270, *v11.i8);
                  v271 = v266 + 16;
                  vst2q_f32(v271, v393);
                  v272 = v266 + 24;
                  vst2q_f32(v272, v388);
                  v266 += 32;
                  v268 -= 16;
                }

                while (v268);
                if (v51 == v53)
                {
                  goto LABEL_32;
                }

                if ((v51 & 0xC) != 0)
                {
                  goto LABEL_206;
                }

                v48 += v53;
                v47 += 8 * v53;
              }

              do
              {
LABEL_234:
                v342 = *v48++;
                *v47 = v50 | v342;
                *(v47 + 4) = v50 | v342;
                v47 += 8;
              }

              while (v48 != v49);
            }
          }

LABEL_32:
          v41 = v368;
          v7 = v366;
          if (v368 == v19)
          {
            goto LABEL_242;
          }
        }
      }

      goto LABEL_242;
    }

    v35 = v19 - 1;
    if ((v19 - 1) < 8)
    {
      v36 = v21 + v17;
      v37 = 13 * v14;
      do
      {
        v38 = (v7 + 4);
        v39 = v19 - 1;
        do
        {
          v38[v37] = *v38 >> v14;
          ++v38;
          --v39;
        }

        while (v39);
        LODWORD(v14) = v14 + 1;
        v37 += 13;
      }

      while (v36 != v14);
      goto LABEL_30;
    }

    v346 = 0;
    v347 = v21 + v18;
    v348 = 13 * v14;
    v349 = (v7 + 20 + v348 * 4);
    v350 = v14;
    while (1)
    {
      if (v346 | v14)
      {
        v351 = vnegq_s32(vdupq_n_s32(v350));
        v352 = (v7 + 20);
        v353 = v349;
        v354 = (v19 - 1) & 0xFFFFFFFFFFFFFFF8;
        do
        {
          v355 = vshlq_u32(*v352, v351);
          v353[-1] = vshlq_u32(v352[-1], v351);
          *v353 = v355;
          v353 += 2;
          v352 += 2;
          v354 -= 8;
        }

        while (v354);
        v356 = v35 & 0xFFFFFFFFFFFFFFF8 | 1;
        if (v35 == (v35 & 0xFFFFFFFFFFFFFFF8))
        {
          goto LABEL_245;
        }
      }

      else
      {
        v356 = 1;
      }

      v357 = v19 - v356;
      v358 = (v7 + 4 * v356);
      do
      {
        v358[v348] = *v358 >> v350;
        ++v358;
        --v357;
      }

      while (v357);
LABEL_245:
      ++v350;
      ++v346;
      v349 = (v349 + 52);
      v348 += 13;
      if (v347 == v346)
      {
        goto LABEL_30;
      }
    }
  }

  return result;
}

uint64_t HUF_decompress1X1_usingDTable_internal(_BYTE *a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5)
{
  if (!a4)
  {
    return -72;
  }

  v5 = a2 & ~(a2 >> 63);
  v6 = &a1[v5];
  v7 = a5 + 4;
  v8 = *(a5 + 2);
  v9 = a4 - 8;
  if (a4 < 8)
  {
    v11 = *a3;
    if (a4 > 4)
    {
      if (a4 != 5)
      {
        if (a4 != 6)
        {
          v11 |= a3[6] << 48;
        }

        v11 += a3[5] << 40;
      }

      v11 += a3[4] << 32;
    }

    else
    {
      if (a4 == 2)
      {
LABEL_24:
        v11 += a3[1] << 8;
LABEL_25:
        if (!a3[a4 - 1])
        {
          return -20;
        }

        v12 = __clz(a3[a4 - 1]) - 8 * a4 + 41;
        if (a2 < 4)
        {
          v10 = a3;
          goto LABEL_43;
        }

        v9 = 0;
LABEL_28:
        v15 = -v8 & 0x3F;
        v16 = a1;
        while (1)
        {
          if (v9 >= 8)
          {
            LODWORD(v17) = v12 >> 3;
            v12 &= 7u;
            v19 = 1;
          }

          else
          {
            v10 = &a3[v9];
            if (!v9)
            {
              goto LABEL_49;
            }

            v17 = v12 >> 3;
            v18 = &v10[-v17] >= a3;
            v19 = v18;
            if (!v18)
            {
              LODWORD(v17) = v9;
            }

            v12 -= 8 * v17;
          }

          v9 -= v17;
          v11 = *&a3[v9];
          if (v16 >= v6 - 3 || !v19)
          {
            break;
          }

          v20 = (v7 + 2 * ((v11 << v12) >> v15));
          v21 = v12 + *v20;
          *v16 = v20[1];
          v22 = (v7 + 2 * ((v11 << v21) >> v15));
          v23 = v21 + *v22;
          v16[1] = v22[1];
          v24 = (v7 + 2 * ((v11 << v23) >> v15));
          v25 = v23 + *v24;
          v16[2] = v24[1];
          v26 = (v7 + 2 * ((v11 << v25) >> v15));
          v12 = v25 + *v26;
          v27 = v16 + 4;
          v16[3] = v26[1];
          v16 += 4;
          if (v12 > 0x40)
          {
            v10 = &BIT_reloadDStream_zeroFilled_36196;
            v16 = v27;
            if (v27 < v6)
            {
              goto LABEL_50;
            }

            goto LABEL_52;
          }
        }

        v10 = &a3[v9];
        if (v16 < v6)
        {
          goto LABEL_50;
        }

        goto LABEL_52;
      }

      if (a4 == 3)
      {
LABEL_23:
        v11 += a3[2] << 16;
        goto LABEL_24;
      }

      if (a4 != 4)
      {
        goto LABEL_25;
      }
    }

    v11 += a3[3] << 24;
    goto LABEL_23;
  }

  if (!a3[a4 - 1])
  {
    return -1;
  }

  if (a4 > 0xFFFFFFFFFFFFFF88)
  {
    return a4;
  }

  v10 = &a3[v9];
  v11 = *&a3[v9];
  v12 = 8 - (__clz(a3[a4 - 1]) ^ 0x1F);
  if (a2 > 3)
  {
    goto LABEL_28;
  }

  if (a4 < 16)
  {
    if (a4 != 8)
    {
      v13 = v12 >> 3;
      if (&v10[-v13] < a3)
      {
        LODWORD(v13) = a4 - 8;
      }

      v12 -= 8 * v13;
      goto LABEL_48;
    }

LABEL_43:
    v16 = a1;
    if (a1 >= v6)
    {
      goto LABEL_52;
    }

    goto LABEL_50;
  }

  LODWORD(v13) = v12 >> 3;
  v12 &= 7u;
LABEL_48:
  v10 -= v13;
  v11 = *v10;
  v16 = a1;
LABEL_49:
  if (v16 >= v6)
  {
    goto LABEL_52;
  }

LABEL_50:
  v28 = -v8 & 0x3F;
  v29 = &a1[v5] - v16;
  do
  {
    v30 = (v7 + 2 * ((v11 << v12) >> v28));
    v12 += *v30;
    *v16++ = v30[1];
    --v29;
  }

  while (v29);
LABEL_52:
  if (v12 == 64 && v10 == a3)
  {
    return a2;
  }

  else
  {
    return -20;
  }
}

unint64_t HUF_decompress1X1_DCtx_wksp(int *a1, _BYTE *a2, uint64_t a3, char *a4, unint64_t a5, uint64_t a6)
{
  result = HUF_readDTableX1_wksp(a1, a4, a5, a6);
  if (result <= 0xFFFFFFFFFFFFFF88)
  {
    if (a5 <= result)
    {
      return -72;
    }

    else
    {

      return HUF_decompress1X1_usingDTable_internal(a2, a3, &a4[result], a5 - result, a1);
    }
  }

  return result;
}

uint64_t HUF_decompress1X_usingDTable(_BYTE *a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, unsigned int *a5)
{
  v5 = *a5;
  if ((*a5 & 0xFF00) == 0)
  {
    return HUF_decompress1X1_usingDTable_internal(a1, a2, a3, a4, a5);
  }

  if (!a4)
  {
    return -72;
  }

  v6 = a4 - 8;
  if (a4 < 8)
  {
    v8 = *a3;
    if (a4 > 4)
    {
      if (a4 != 5)
      {
        if (a4 != 6)
        {
          v8 |= a3[6] << 48;
        }

        v8 += a3[5] << 40;
      }

      v8 += a3[4] << 32;
    }

    else
    {
      if (a4 == 2)
      {
LABEL_25:
        v8 += a3[1] << 8;
LABEL_26:
        if (!a3[a4 - 1])
        {
          return -20;
        }

        v9 = __clz(a3[a4 - 1]) - 8 * a4 + 41;
        v10 = &a1[a2 & ~(a2 >> 63)];
        v11 = a5 + 1;
        v12 = HIWORD(v5);
        if (a2 < 8)
        {
          v7 = a3;
          goto LABEL_57;
        }

        v6 = 0;
LABEL_29:
        v15 = v5 & 0xFC0000;
        v16 = -v12 & 0x3F;
        v17 = a5 + 1;
        if (v15 >= 0xC0000)
        {
          while (1)
          {
            if (v6 >= 8)
            {
              LODWORD(v34) = v9 >> 3;
              v9 &= 7u;
              v35 = 1;
            }

            else
            {
              v7 = &a3[v6];
              if (!v6)
              {
                goto LABEL_57;
              }

              v34 = v9 >> 3;
              v19 = &v7[-v34] >= a3;
              v35 = v19;
              if (!v19)
              {
                LODWORD(v34) = v6;
              }

              v9 -= 8 * v34;
            }

            v6 -= v34;
            v8 = *&a3[v6];
            if (a1 >= v10 - 7 || !v35)
            {
              break;
            }

            v36 = &v17[(v8 << v9) >> v16];
            *a1 = *v36;
            v37 = v9 + *(v36 + 2);
            v38 = &a1[*(v36 + 3)];
            v39 = &v17[(v8 << v37) >> v16];
            *v38 = *v39;
            v40 = v37 + *(v39 + 2);
            v41 = (v38 + *(v39 + 3));
            v42 = &v17[(v8 << v40) >> v16];
            *v41 = *v42;
            v43 = v40 + *(v42 + 2);
            v44 = (v41 + *(v42 + 3));
            v45 = &v17[(v8 << v43) >> v16];
            *v44 = *v45;
            v9 = v43 + *(v45 + 2);
            a1 = v44 + *(v45 + 3);
            if (v9 > 0x40)
            {
LABEL_52:
              v7 = &BIT_reloadDStream_zeroFilled_36196;
              goto LABEL_57;
            }
          }

          v7 = &a3[v6];
        }

        else
        {
          while (1)
          {
            if (v6 >= 8)
            {
              LODWORD(v18) = v9 >> 3;
              v9 &= 7u;
              v20 = 1;
            }

            else
            {
              v7 = &a3[v6];
              if (!v6)
              {
                goto LABEL_57;
              }

              v18 = v9 >> 3;
              v19 = &v7[-v18] >= a3;
              v20 = v19;
              if (!v19)
              {
                LODWORD(v18) = v6;
              }

              v9 -= 8 * v18;
            }

            v6 -= v18;
            v8 = *&a3[v6];
            if (a1 >= v10 - 9 || !v20)
            {
              break;
            }

            v21 = &v17[(v8 << v9) >> v16];
            *a1 = *v21;
            v22 = v9 + *(v21 + 2);
            v23 = &a1[*(v21 + 3)];
            v24 = &v17[(v8 << v22) >> v16];
            *v23 = *v24;
            v25 = v22 + *(v24 + 2);
            v26 = (v23 + *(v24 + 3));
            v27 = &v17[(v8 << v25) >> v16];
            *v26 = *v27;
            v28 = v25 + *(v27 + 2);
            v29 = (v26 + *(v27 + 3));
            v30 = &v17[(v8 << v28) >> v16];
            *v29 = *v30;
            v31 = v28 + *(v30 + 2);
            v32 = (v29 + *(v30 + 3));
            v33 = &v17[(v8 << v31) >> v16];
            *v32 = *v33;
            v9 = v31 + *(v33 + 2);
            a1 = v32 + *(v33 + 3);
            if (v9 > 0x40)
            {
              goto LABEL_52;
            }
          }

          v7 = &a3[v6];
        }

        goto LABEL_57;
      }

      if (a4 == 3)
      {
LABEL_24:
        v8 += a3[2] << 16;
        goto LABEL_25;
      }

      if (a4 != 4)
      {
        goto LABEL_26;
      }
    }

    v8 += a3[3] << 24;
    goto LABEL_24;
  }

  if (!a3[a4 - 1])
  {
    return -1;
  }

  v7 = &a3[v6];
  v8 = *&a3[v6];
  v9 = 8 - (__clz(a3[a4 - 1]) ^ 0x1F);
  v10 = &a1[a2 & ~(a2 >> 63)];
  v11 = a5 + 1;
  v12 = HIWORD(v5);
  if (a2 > 7)
  {
    goto LABEL_29;
  }

  if (a4 >= 16)
  {
    LODWORD(v13) = v9 >> 3;
    v9 &= 7u;
  }

  else
  {
    if (a4 == 8)
    {
      goto LABEL_57;
    }

    v13 = v9 >> 3;
    if (&v7[-v13] < a3)
    {
      LODWORD(v13) = a4 - 8;
    }

    v9 -= 8 * v13;
  }

  v7 -= v13;
  v8 = *v7;
LABEL_57:
  if ((v10 - a1) < 2)
  {
    goto LABEL_74;
  }

  v46 = (v10 - 2);
  v47 = -v12 & 0x3F;
  if (v9 > 0x40)
  {
    v7 = &BIT_reloadDStream_zeroFilled_36196;
    if (a1 <= v46)
    {
      goto LABEL_73;
    }

    goto LABEL_74;
  }

  while (1)
  {
    if (v7 >= a3 + 8)
    {
      LODWORD(v48) = v9 >> 3;
      v9 &= 7u;
      v49 = 1;
      goto LABEL_65;
    }

    if (v7 == a3)
    {
      break;
    }

    v48 = v9 >> 3;
    v49 = &v7[-v48] >= a3;
    if (&v7[-v48] < a3)
    {
      LODWORD(v48) = v7 - a3;
    }

    v9 -= 8 * v48;
LABEL_65:
    v7 -= v48;
    v8 = *v7;
    if (a1 > v46 || !v49)
    {
      if (a1 <= v46)
      {
        goto LABEL_73;
      }

      goto LABEL_74;
    }

    v50 = &v11[(v8 << v9) >> v47];
    *a1 = *v50;
    v9 += *(v50 + 2);
    a1 += *(v50 + 3);
    if (v9 > 0x40)
    {
      v7 = &BIT_reloadDStream_zeroFilled_36196;
      if (a1 <= v46)
      {
        goto LABEL_73;
      }

      goto LABEL_74;
    }
  }

  v7 = a3;
  if (a1 > v46)
  {
    goto LABEL_74;
  }

  do
  {
LABEL_73:
    v51 = &v11[(v8 << v9) >> v47];
    *a1 = *v51;
    v9 += *(v51 + 2);
    a1 += *(v51 + 3);
  }

  while (a1 <= v46);
LABEL_74:
  if (a1 < v10)
  {
    v52 = &v11[(v8 << v9) >> -v12];
    *a1 = *v52;
    if (v52[3] == 1)
    {
      v9 += v52[2];
    }

    else if (v9 <= 0x3F)
    {
      v53 = v9 + v52[2];
      if (v53 >= 0x40)
      {
        v9 = 64;
      }

      else
      {
        v9 = v53;
      }
    }
  }

  if (v9 == 64 && v7 == a3)
  {
    return a2;
  }

  else
  {
    return -20;
  }
}

unint64_t HUF_decompress4X_usingDTable(uint64_t a1, uint64_t a2, unsigned __int16 *a3, unint64_t a4, int *a5)
{
  if (*(a5 + 1))
  {
    return HUF_decompress4X2_usingDTable_internal(a1, a2, a3, a4, a5);
  }

  else
  {
    return HUF_decompress4X1_usingDTable_internal(a1, a2, a3, a4, a5);
  }
}

unint64_t HUF_decompress4X2_usingDTable_internal(uint64_t a1, uint64_t a2, unsigned __int16 *a3, unint64_t a4, int *a5)
{
  v5 = a5;
  v6 = a4;
  v7 = a3;
  v8 = a2;
  v9 = a1;
  v473 = 0;
  memset(v472, 0, sizeof(v472));
  v10 = a5 + 1;
  v470 = 0u;
  v471 = 0u;
  v468 = 0u;
  v469 = 0u;
  v466 = 0u;
  v467 = 0u;
  v465 = 0u;
  result = HUF_DecompressFastArgs_init(&v465, a1, a2, a3, a4, a5);
  if (result - 1 <= 0xFFFFFFFFFFFFFF87)
  {
    v457 = v6;
    v459 = v5;
    v12 = v471;
    v461 = v9;
    v463 = v8;
    v13 = v9 + (v8 & ~(v8 >> 63));
    v454 = v7;
    v15 = *(&v469 + 1);
    v14 = v469;
    v16 = *(&v470 + 1);
    v17 = v470;
    v19 = *(&v465 + 1);
    v18 = v465;
    v21 = *(&v466 + 1);
    v20 = v466;
    v22 = *(&v467 + 1);
    v23 = v467;
    v24 = v468;
    v25 = *(&v467 + 1);
    v26 = *(&v468 + 1);
    v27 = v468;
    v28 = *&v472[0];
    while (1)
    {
      v29 = ((v18 - *(&v12 + 1)) * 0x2492492492492493uLL) >> 64;
      v30 = (v29 + ((v18 - *(&v12 + 1) - v29) >> 1)) >> 2;
      if (v30 >= (v22 - v23) / 0xAuLL)
      {
        v30 = (v22 - v23) / 0xAuLL;
      }

      if (v30 >= (v24 - v25) / 0xAuLL)
      {
        v30 = (v24 - v25) / 0xAuLL;
      }

      if (v30 >= (*(&v24 + 1) - v27) / 0xAuLL)
      {
        v30 = (*(&v24 + 1) - v27) / 0xAuLL;
      }

      if (v30 >= (v28 - v26) / 0xAuLL)
      {
        v30 = (v28 - v26) / 0xAuLL;
      }

      v31 = v30 && v19 >= v18;
      v32 = v31 && v20 >= v19;
      if (!v32 || v21 < v20)
      {
        break;
      }

      v34 = &v26[5 * v30];
      do
      {
        v35 = (v12 + 4 * (v14 >> 53));
        v36 = *v35;
        v37 = *(v35 + 2);
        v38 = *(v35 + 3);
        *v23 = v36;
        v39 = v14 << v37;
        v40 = (v23 + v38);
        v41 = (v12 + 4 * (v15 >> 53));
        v42 = *v41;
        v43 = *(v41 + 2);
        v44 = *(v41 + 3);
        *v25 = v42;
        v45 = v15 << v43;
        v46 = (v25 + v44);
        v47 = (v12 + 4 * (v17 >> 53));
        v48 = *v47;
        v49 = *(v47 + 2);
        v50 = *(v47 + 3);
        *v27 = v48;
        v51 = v17 << v49;
        v52 = (v12 + 4 * (v39 >> 53));
        v53 = *v52;
        v54 = (v27 + v50);
        LOBYTE(v50) = *(v52 + 2);
        v55 = *(v52 + 3);
        *v40 = v53;
        v56 = v39 << v50;
        v57 = (v40 + v55);
        v58 = v12 + 4 * (v45 >> 53);
        LOWORD(v55) = *v58;
        LOBYTE(v53) = *(v58 + 2);
        v59 = *(v58 + 3);
        *v46 = v55;
        v60 = v45 << v53;
        v61 = (v46 + v59);
        v62 = v12 + 4 * (v51 >> 53);
        LOWORD(v55) = *v62;
        LOBYTE(v53) = *(v62 + 2);
        v63 = *(v62 + 3);
        *v54 = v55;
        v64 = v51 << v53;
        v65 = (v12 + 4 * (v56 >> 53));
        v66 = *v65;
        v67 = (v54 + v63);
        LOBYTE(v63) = *(v65 + 2);
        v68 = *(v65 + 3);
        *v57 = v66;
        v69 = v56 << v63;
        v70 = (v57 + v68);
        v71 = v12 + 4 * (v60 >> 53);
        LOWORD(v68) = *v71;
        LOBYTE(v66) = *(v71 + 2);
        v72 = *(v71 + 3);
        *v61 = v68;
        v73 = v60 << v66;
        v74 = (v61 + v72);
        v75 = v12 + 4 * (v64 >> 53);
        LOWORD(v68) = *v75;
        LOBYTE(v66) = *(v75 + 2);
        v76 = *(v75 + 3);
        *v67 = v68;
        v77 = v64 << v66;
        v78 = (v12 + 4 * (v69 >> 53));
        v79 = *v78;
        v80 = (v67 + v76);
        LOBYTE(v76) = *(v78 + 2);
        v81 = *(v78 + 3);
        *v70 = v79;
        v82 = v69 << v76;
        v83 = (v70 + v81);
        v84 = v12 + 4 * (v73 >> 53);
        LOWORD(v81) = *v84;
        LOBYTE(v79) = *(v84 + 2);
        v85 = *(v84 + 3);
        *v74 = v81;
        v86 = v73 << v79;
        v87 = (v74 + v85);
        v88 = v12 + 4 * (v77 >> 53);
        LOWORD(v85) = *v88;
        LOBYTE(v79) = *(v88 + 2);
        v89 = *(v88 + 3);
        *v80 = v85;
        v90 = v77 << v79;
        v91 = (v12 + 4 * (v82 >> 53));
        v92 = *v91;
        v93 = (v80 + v89);
        LOBYTE(v89) = *(v91 + 2);
        v94 = *(v91 + 3);
        *v83 = v92;
        v95 = v82 << v89;
        v23 = (v83 + v94);
        v96 = v12 + 4 * (v86 >> 53);
        LOWORD(v94) = *v96;
        LOBYTE(v92) = *(v96 + 2);
        v97 = *(v96 + 3);
        *v87 = v94;
        v98 = v86 << v92;
        v25 = (v87 + v97);
        v99 = v12 + 4 * (v90 >> 53);
        LOWORD(v87) = *v99;
        LOBYTE(v86) = *(v99 + 2);
        v100 = *(v99 + 3);
        *v93 = v87;
        v101 = v90 << v86;
        v27 = (v93 + v100);
        v102 = v12 + 4 * (v16 >> 53);
        LOWORD(v87) = *v102;
        LOBYTE(v86) = *(v102 + 2);
        v103 = *(v102 + 3);
        *v26 = v87;
        v104 = v16 << v86;
        v105 = &v26[v103];
        v106 = v12 + 4 * (v104 >> 53);
        LOWORD(v87) = *v106;
        LOBYTE(v86) = *(v106 + 2);
        v107 = *(v106 + 3);
        v108 = v104 << v86;
        *v105 = v87;
        v109 = &v105[v107];
        v110 = __clz(__rbit64(v95));
        v18 = (v18 - (v110 >> 3));
        v111 = v12 + 4 * (v108 >> 53);
        v112 = *(v111 + 2);
        v14 = (*v18 | 1) << (v110 & 7);
        v113 = *(v111 + 3);
        *v109 = *v111;
        v114 = v108 << v112;
        v115 = __clz(__rbit64(v98));
        v116 = &v109[v113];
        v19 = (v19 - (v115 >> 3));
        v15 = (*v19 | 1) << (v115 & 7);
        v117 = v12 + 4 * (v114 >> 53);
        LOWORD(v113) = *v117;
        LOBYTE(v95) = *(v117 + 2);
        v118 = *(v117 + 3);
        v119 = v114 << v95;
        *v116 = v113;
        v120 = &v116[v118];
        v121 = __clz(__rbit64(v101));
        v20 = (v20 - (v121 >> 3));
        v122 = v12 + 4 * (v119 >> 53);
        v123 = *(v122 + 2);
        v17 = (*v20 | 1) << (v121 & 7);
        v124 = *(v122 + 3);
        *v120 = *v122;
        v125 = __clz(__rbit64(v119 << v123));
        v26 = &v120[v124];
        v21 = (v21 - (v125 >> 3));
        v16 = (*v21 | 1) << (v125 & 7);
      }

      while (v26 < v34);
    }

    v126 = 0;
    *&v469 = v14;
    *(&v469 + 1) = v15;
    *&v470 = v17;
    *(&v470 + 1) = v16;
    *&v465 = v18;
    *(&v465 + 1) = v19;
    *&v466 = v20;
    *(&v466 + 1) = v21;
    v9 = v461;
    v8 = v463;
    v127 = (v463 + 3) >> 2;
    *&v467 = v23;
    *(&v467 + 1) = v25;
    v128 = v461;
    *&v468 = v27;
    *(&v468 + 1) = v26;
    v6 = v457;
    v5 = v459;
    while (1)
    {
      v129 = &v13[-v128];
      v128 += v127;
      if (v127 > v129)
      {
        v128 = v13;
      }

      v130 = *(&v467 + v126);
      if (v130 > v128)
      {
        return -20;
      }

      v131 = *(&v465 + v126);
      if (v131 < *(v472 + v126 + 1) - 8)
      {
        return -20;
      }

      v132 = *v131;
      v133 = __clz(__rbit64(*(&v469 + v126)));
      v134 = *(&v471 + 1);
      v135 = *(&v471 + 1) + 8;
      if (v128 - v130 >= 8)
      {
        v136 = *(&v467 + v126);
        while (1)
        {
          if (v131 >= v135)
          {
            v139 = v133 >> 3;
            LODWORD(v133) = v133 & 7;
            v138 = 1;
          }

          else
          {
            if (v131 == v134)
            {
              break;
            }

            v137 = v133 >> 3;
            v138 = (v131 - v137) >= v134;
            v139 = (v131 - v137) < v134 ? v131 - v134 : v133 >> 3;
            LODWORD(v133) = v133 - 8 * v139;
          }

          v131 = (v131 - v139);
          v132 = *v131;
          if (v136 >= v128 - 9 || !v138)
          {
            break;
          }

          v140 = &v10[(v132 << v133) >> 53];
          *v136 = *v140;
          v141 = v133 + *(v140 + 2);
          v142 = (v136 + *(v140 + 3));
          v143 = &v10[(v132 << v141) >> 53];
          *v142 = *v143;
          v144 = v141 + *(v143 + 2);
          v145 = (v142 + *(v143 + 3));
          v146 = &v10[(v132 << v144) >> 53];
          *v145 = *v146;
          v147 = v144 + *(v146 + 2);
          v148 = (v145 + *(v146 + 3));
          v149 = &v10[(v132 << v147) >> 53];
          *v148 = *v149;
          v150 = v147 + *(v149 + 2);
          v151 = (v148 + *(v149 + 3));
          v152 = &v10[(v132 << v150) >> 53];
          *v151 = *v152;
          LODWORD(v133) = v150 + *(v152 + 2);
          v136 = (v151 + *(v152 + 3));
          if (v133 > 0x40)
          {
            v131 = &BIT_reloadDStream_zeroFilled_36196;
            break;
          }
        }

        v155 = v133;
        if (v128 - v136 < 2)
        {
          goto LABEL_68;
        }

LABEL_53:
        for (i = v128 - 2; v155 <= 0x40; v136 = (v136 + *(v160 + 3)))
        {
          if (v131 >= v135)
          {
            v159 = v155 >> 3;
            v155 &= 7u;
            v158 = 1;
          }

          else
          {
            if (v131 == v134)
            {
              break;
            }

            v157 = v155 >> 3;
            v158 = (v131 - v157) >= v134;
            if ((v131 - v157) < v134)
            {
              v159 = v131 - v134;
            }

            else
            {
              v159 = v155 >> 3;
            }

            v155 -= 8 * v159;
          }

          v131 = (v131 - v159);
          v132 = *v131;
          if (v136 > i)
          {
            break;
          }

          if (!v158)
          {
            break;
          }

          v160 = &v10[(v132 << v155) >> 53];
          *v136 = *v160;
          v155 += *(v160 + 2);
        }

        while (v136 <= i)
        {
          v161 = &v10[(v132 << v155) >> 53];
          *v136 = *v161;
          LOBYTE(v155) = v155 + *(v161 + 2);
          v136 = (v136 + *(v161 + 3));
        }

        goto LABEL_68;
      }

      if (v131 >= v135)
      {
        break;
      }

      if (v131 != *(&v471 + 1))
      {
        v153 = v133 >> 3;
        if (v131 - v153 >= *(&v471 + 1))
        {
          v154 = v153;
        }

        else
        {
          v154 = (v131 - DWORD2(v471));
        }

        v155 = v133 - 8 * v154;
        goto LABEL_51;
      }

      v155 = v133;
LABEL_52:
      v136 = *(&v467 + v126);
      if (v128 - v130 >= 2)
      {
        goto LABEL_53;
      }

LABEL_68:
      if (v136 < v128)
      {
        *v136 = *(v10 + (((v132 << v155) >> 51) & 0x1FFC));
        v136 = (v136 + 1);
      }

      v162 = v136 + *(&v467 + v126) - v130;
      *(&v467 + v126) = v162;
      if (v162 != v128)
      {
        return -20;
      }

      if (++v126 == 4)
      {
        result = v463;
        v7 = v454;
        goto LABEL_74;
      }
    }

    v154 = v133 >> 3;
    v155 = v133 & 7;
LABEL_51:
    v131 = (v131 - v154);
    v132 = *v131;
    goto LABEL_52;
  }

LABEL_74:
  if (result)
  {
    return result;
  }

  result = -20;
  if (v8 < 6)
  {
    return result;
  }

  if (v6 < 0xA)
  {
    return result;
  }

  *&v467 = 0;
  v465 = 0u;
  v466 = 0u;
  v163 = *v7;
  v164 = v7[1];
  v165 = v7[2];
  v166 = v163 + v164 + v165 + 6;
  v167 = v6 - v166;
  if (v6 < v166)
  {
    return result;
  }

  v168 = v9 + v8;
  v169 = (v8 + 3) >> 2;
  v170 = (v9 + v169);
  v171 = v9 + v169 + v169;
  v172 = (v171 + v169);
  if (v171 + v169 > v9 + v8)
  {
    return result;
  }

  if (!*v7)
  {
    return -72;
  }

  v173 = v9;
  v174 = v7 + v163 + 6;
  v175 = *v5;
  if (v163 < 8)
  {
    v177 = *(v7 + 6);
    if (*v7 > 4u)
    {
      if (v163 != 5)
      {
        if (v163 != 6)
        {
          v177 |= *(v7 + 12) << 48;
        }

        v177 += *(v7 + 11) << 40;
      }

      v177 += *(v7 + 10) << 32;
    }

    else
    {
      if (v163 == 2)
      {
LABEL_95:
        v177 += *(v7 + 7) << 8;
LABEL_96:
        if (!*(v174 - 1))
        {
          return -20;
        }

        v178 = __clz(*(v174 - 1)) - 8 * v163 + 41;
        v176 = v7 + 3;
        goto LABEL_98;
      }

      if (v163 == 3)
      {
LABEL_94:
        v177 += *(v7 + 8) << 16;
        goto LABEL_95;
      }

      if (v163 != 4)
      {
        goto LABEL_96;
      }
    }

    v177 += *(v7 + 9) << 24;
    goto LABEL_94;
  }

  if (!*(v174 - 1))
  {
    return -1;
  }

  v176 = (v174 - 8);
  v177 = *(v174 - 1);
  v178 = 8 - (__clz(*(v174 - 1)) ^ 0x1F);
LABEL_98:
  if (!v7[1])
  {
    return -72;
  }

  v179 = &v174[v164];
  if (v164 >= 8)
  {
    if (*(v179 - 1))
    {
      v453 = v170;
      v180 = v179 - 8;
      v181 = *(v179 - 1);
      v182 = 8 - (__clz(*(v179 - 1)) ^ 0x1F);
      goto LABEL_117;
    }

    return -1;
  }

  v181 = *v174;
  if (v7[1] > 4u)
  {
    if (v164 != 5)
    {
      if (v164 != 6)
      {
        v181 |= v174[6] << 48;
      }

      v181 += v174[5] << 40;
    }

    v181 += v174[4] << 32;
    goto LABEL_112;
  }

  if (v164 != 2)
  {
    if (v164 == 3)
    {
LABEL_113:
      v181 += v174[2] << 16;
      goto LABEL_114;
    }

    if (v164 != 4)
    {
      goto LABEL_115;
    }

LABEL_112:
    v181 += v174[3] << 24;
    goto LABEL_113;
  }

LABEL_114:
  v181 += v174[1] << 8;
LABEL_115:
  if (!*(v179 - 1))
  {
    return -20;
  }

  v453 = v170;
  v182 = __clz(*(v179 - 1)) - 8 * v164 + 41;
  v180 = v7 + v163 + 6;
LABEL_117:
  if (!v7[2])
  {
    return -72;
  }

  v452 = v171;
  v183 = &v179[v165];
  if (v165 < 8)
  {
    v462 = *v179;
    if (v7[2] > 4u)
    {
      if (v165 == 5)
      {
        v188 = *v179;
      }

      else
      {
        if (v165 == 6)
        {
          v186 = *v179;
        }

        else
        {
          v186 = v462 | (v179[6] << 48);
        }

        v188 = v186 + (v179[5] << 40);
      }

      v462 = v188 + (v179[4] << 32);
    }

    else
    {
      if (v165 == 2)
      {
        v187 = *v179;
LABEL_139:
        v462 = v187 + (v179[1] << 8);
        goto LABEL_140;
      }

      if (v165 == 3)
      {
        v189 = *v179;
LABEL_138:
        v187 = v189 + (v179[2] << 16);
        goto LABEL_139;
      }

      if (v165 != 4)
      {
LABEL_140:
        if (*(v183 - 1))
        {
          v445 = v175;
          v448 = v7 + 3;
          v449 = v172;
          v446 = v176;
          v447 = v174;
          v460 = v180;
          v450 = v9 + v8;
          v185 = __clz(*(v183 - 1)) - 8 * v165 + 41;
          v184 = &v174[v164];
          v444 = &v174[v164];
          goto LABEL_142;
        }

        return -20;
      }
    }

    v189 = v462 + (v179[3] << 24);
    goto LABEL_138;
  }

  if (!*(v183 - 1))
  {
    return -1;
  }

  v445 = v175;
  v448 = v7 + 3;
  v449 = v172;
  v446 = v176;
  v447 = v7 + v163 + 6;
  v184 = &v174[v164];
  v450 = v168;
  v460 = v180;
  v462 = *(v183 - 1);
  v444 = v183 - 8;
  v185 = 8 - (__clz(*(v183 - 1)) ^ 0x1F);
LABEL_142:
  result = BIT_initDStream_36203(&v465, v183, v167);
  v191 = v449;
  v190 = v450;
  v193 = v446;
  v192 = v447;
  v194 = v448;
  j = v452;
  v196 = v453;
  if (result > 0xFFFFFFFFFFFFFF88)
  {
    return result;
  }

  v197 = v184;
  v198 = (v450 - 7);
  v199 = HIWORD(v445);
  v455 = v7 + 7;
  v456 = (v447 + 8);
  v458 = (v197 + 8);
  if ((v450 - v449) < 8)
  {
    v205 = v449;
    v207 = v452;
    v202 = v453;
    v200 = v444;
  }

  else
  {
    v200 = v444;
    if (v449 >= v198)
    {
      v205 = v449;
      v207 = v452;
      v202 = v453;
    }

    else
    {
      v443 = v197;
      v464 = v8;
      v201 = v465;
      v202 = v453;
      v203 = -v199 & 0x3F;
      v204 = DWORD2(v465);
      v205 = v449;
      v206 = v467;
      v207 = v452;
      v208 = v466;
      v209 = v173;
      do
      {
        v210 = &v10[(v177 << v178) >> v203];
        *v209 = *v210;
        v211 = v178 + *(v210 + 2);
        v212 = (v209 + *(v210 + 3));
        v213 = &v10[(v181 << v182) >> v203];
        *v202 = *v213;
        v214 = v182 + *(v213 + 2);
        v215 = (v202 + *(v213 + 3));
        v216 = &v10[v462 << v185 >> v203];
        *v207 = *v216;
        v217 = v185 + *(v216 + 2);
        v218 = (v207 + *(v216 + 3));
        v219 = &v10[(v201 << v204) >> v203];
        *v205 = *v219;
        v220 = v204 + *(v219 + 2);
        v221 = (v205 + *(v219 + 3));
        v222 = &v10[(v177 << v211) >> v203];
        *v212 = *v222;
        v223 = v211 + *(v222 + 2);
        v224 = *(v222 + 3);
        v225 = &v10[(v181 << v214) >> v203];
        *v215 = *v225;
        v226 = v214 + *(v225 + 2);
        v227 = (v215 + *(v225 + 3));
        v228 = &v10[v462 << v217 >> v203];
        *v218 = *v228;
        v229 = v217 + *(v228 + 2);
        v230 = (v218 + *(v228 + 3));
        v231 = &v10[(v201 << v220) >> v203];
        *v221 = *v231;
        v232 = v220 + *(v231 + 2);
        v233 = (v221 + *(v231 + 3));
        v234 = (v212 + v224);
        v235 = &v10[(v177 << v223) >> v203];
        *v234 = *v235;
        LODWORD(v224) = v223 + *(v235 + 2);
        v236 = (v234 + *(v235 + 3));
        v237 = &v10[(v181 << v226) >> v203];
        *v227 = *v237;
        v238 = v226 + *(v237 + 2);
        v239 = (v227 + *(v237 + 3));
        v240 = &v10[v462 << v229 >> v203];
        *v230 = *v240;
        v241 = v229 + *(v240 + 2);
        v242 = (v230 + *(v240 + 3));
        v243 = &v10[(v201 << v232) >> v203];
        *v233 = *v243;
        v244 = v232 + *(v243 + 2);
        v245 = (v233 + *(v243 + 3));
        v246 = &v10[(v177 << v224) >> v203];
        *v236 = *v246;
        v178 = v224 + *(v246 + 2);
        v247 = *(v246 + 3);
        v248 = &v10[(v181 << v238) >> v203];
        *v239 = *v248;
        v249 = *(v248 + 2);
        v250 = *(v248 + 3);
        v251 = &v10[v462 << v241 >> v203];
        *v242 = *v251;
        v252 = *(v251 + 2);
        v253 = *(v251 + 3);
        v254 = &v10[(v201 << v244) >> v203];
        *v245 = *v254;
        v255 = v200;
        if (v193 < v455)
        {
          v256 = 3;
        }

        else
        {
          v256 = 0;
          v193 = (v193 - (v178 >> 3));
          v178 &= 7u;
          v177 = *v193;
        }

        v257 = v193;
        v182 = v238 + v249;
        v258 = *(v254 + 3);
        if (v460 < v456)
        {
          v259 = 3;
        }

        else
        {
          v259 = 0;
          v260 = &v460[-(v182 >> 3)];
          v182 &= 7u;
          v460 = v260;
          v181 = *v260;
        }

        v185 = v241 + v252;
        v200 = v255;
        if (v255 < v458)
        {
          v261 = 3;
        }

        else
        {
          v261 = 0;
          v200 = &v255[-(v185 >> 3)];
          v185 &= 7u;
          v462 = *v200;
        }

        v204 = v244 + *(v254 + 2);
        if (v208 < v206)
        {
          v262 = 3;
        }

        else
        {
          v262 = 0;
          v208 = (v208 - (v204 >> 3));
          *&v466 = v208;
          v204 &= 7u;
          v201 = *v208;
          *&v465 = *v208;
        }

        v209 = (v236 + v247);
        v202 = (v239 + v250);
        v207 = (v242 + v253);
        v205 = (v245 + v258);
        v263 = v259 | v256 | v261 | v262;
        v264 = v245 + v258 < v198 && v263 == 0;
        v193 = v257;
      }

      while (v264);
      v173 = v209;
      DWORD2(v465) = v204;
      v8 = v464;
      v192 = v447;
      v194 = v448;
      v191 = v449;
      v190 = v450;
      v197 = v443;
      v199 = HIWORD(v445);
      j = v452;
      v196 = v453;
    }
  }

  result = -20;
  if (v173 > v196 || v202 > j || v207 > v191)
  {
    return result;
  }

  v265 = v196;
  v451 = v190;
  v442 = v198;
  if (v196 - v173 >= 8)
  {
    if (BYTE2(v445) >= 0xCu)
    {
      if (v178 <= 0x40)
      {
        v286 = v196 - 7;
        v287 = -v199 & 0x3F;
        while (1)
        {
          if (v193 >= v455)
          {
            LODWORD(v288) = v178 >> 3;
            v178 &= 7u;
            v289 = 1;
          }

          else
          {
            if (v193 == v194)
            {
LABEL_205:
              v193 = v194;
              goto LABEL_206;
            }

            v288 = v178 >> 3;
            v289 = (v193 - v288) >= v194;
            if ((v193 - v288) < v194)
            {
              LODWORD(v288) = v193 - v194;
            }

            v178 -= 8 * v288;
          }

          v193 = (v193 - v288);
          v177 = *v193;
          if (v173 >= v286 || !v289)
          {
            goto LABEL_206;
          }

          v290 = &v10[(v177 << v178) >> v287];
          *v173 = *v290;
          v291 = v178 + *(v290 + 2);
          v292 = (v173 + *(v290 + 3));
          v293 = &v10[(v177 << v291) >> v287];
          *v292 = *v293;
          v294 = v291 + *(v293 + 2);
          v295 = (v292 + *(v293 + 3));
          v296 = &v10[(v177 << v294) >> v287];
          *v295 = *v296;
          v297 = v294 + *(v296 + 2);
          v298 = (v295 + *(v296 + 3));
          v299 = &v10[(v177 << v297) >> v287];
          *v298 = *v299;
          v178 = v297 + *(v299 + 2);
          v173 = (v298 + *(v299 + 3));
          if (v178 > 0x40)
          {
LABEL_201:
            v193 = &BIT_reloadDStream_zeroFilled_36196;
            goto LABEL_206;
          }
        }
      }
    }

    else if (v178 <= 0x40)
    {
      v266 = v196 - 9;
      v267 = -v199 & 0x3F;
      while (1)
      {
        if (v193 >= v455)
        {
          LODWORD(v268) = v178 >> 3;
          v178 &= 7u;
          v269 = 1;
        }

        else
        {
          if (v193 == v194)
          {
            goto LABEL_205;
          }

          v268 = v178 >> 3;
          v269 = (v193 - v268) >= v194;
          if ((v193 - v268) < v194)
          {
            LODWORD(v268) = v193 - v194;
          }

          v178 -= 8 * v268;
        }

        v193 = (v193 - v268);
        v177 = *v193;
        if (v173 >= v266 || !v269)
        {
          goto LABEL_206;
        }

        v270 = &v10[(v177 << v178) >> v267];
        *v173 = *v270;
        v271 = v178 + *(v270 + 2);
        v272 = (v173 + *(v270 + 3));
        v273 = &v10[(v177 << v271) >> v267];
        *v272 = *v273;
        v274 = v271 + *(v273 + 2);
        v275 = (v272 + *(v273 + 3));
        v276 = &v10[(v177 << v274) >> v267];
        *v275 = *v276;
        v277 = v274 + *(v276 + 2);
        v278 = (v275 + *(v276 + 3));
        v279 = &v10[(v177 << v277) >> v267];
        *v278 = *v279;
        v280 = v277 + *(v279 + 2);
        v281 = (v278 + *(v279 + 3));
        v282 = &v10[(v177 << v280) >> v267];
        *v281 = *v282;
        v178 = v280 + *(v282 + 2);
        v173 = (v281 + *(v282 + 3));
        if (v178 > 0x40)
        {
          goto LABEL_201;
        }
      }
    }

    v193 = &BIT_reloadDStream_zeroFilled_36196;
LABEL_206:
    v283 = v460;
    v284 = v200;
    j = v452;
    goto LABEL_207;
  }

  v283 = v460;
  v284 = v200;
  if (v178 > 0x40)
  {
    v193 = &BIT_reloadDStream_zeroFilled_36196;
    goto LABEL_207;
  }

  if (v193 >= v455)
  {
    LODWORD(v285) = v178 >> 3;
    v178 &= 7u;
  }

  else
  {
    if (v193 == v194)
    {
      v193 = v194;
      goto LABEL_207;
    }

    v285 = v178 >> 3;
    if ((v193 - v285) < v194)
    {
      LODWORD(v285) = v193 - v194;
    }

    v178 -= 8 * v285;
  }

  v193 = (v193 - v285);
  v177 = *v193;
LABEL_207:
  if (v265 - v173 < 2)
  {
    goto LABEL_223;
  }

  v300 = v265 - 2;
  v301 = -v199 & 0x3F;
  if (v178 > 0x40)
  {
    v193 = &BIT_reloadDStream_zeroFilled_36196;
    goto LABEL_221;
  }

  while (v193 >= v455)
  {
    LODWORD(v302) = v178 >> 3;
    v178 &= 7u;
    v303 = 1;
LABEL_215:
    v193 = (v193 - v302);
    v177 = *v193;
    if (v173 > v300 || !v303)
    {
      goto LABEL_221;
    }

    v304 = &v10[(v177 << v178) >> v301];
    *v173 = *v304;
    v178 += *(v304 + 2);
    v173 = (v173 + *(v304 + 3));
    if (v178 > 0x40)
    {
      v193 = &BIT_reloadDStream_zeroFilled_36196;
      goto LABEL_221;
    }
  }

  if (v193 != v194)
  {
    v302 = v178 >> 3;
    v303 = (v193 - v302) >= v194;
    if ((v193 - v302) < v194)
    {
      LODWORD(v302) = v193 - v194;
    }

    v178 -= 8 * v302;
    goto LABEL_215;
  }

  v193 = v194;
LABEL_221:
  for (j = v452; v173 <= v300; v173 = (v173 + *(v305 + 3)))
  {
    v305 = &v10[(v177 << v178) >> v301];
    *v173 = *v305;
    v178 += *(v305 + 2);
  }

LABEL_223:
  v306 = v178;
  if (v173 >= v265)
  {
    v308 = BYTE2(v445);
  }

  else
  {
    v307 = &v10[(v177 << v178) >> -v199];
    *v173 = *v307;
    v308 = BYTE2(v445);
    if (*(v307 + 3) == 1)
    {
      v306 = v178 + *(v307 + 2);
    }

    else if (v178 <= 0x3F)
    {
      v327 = v178 + *(v307 + 2);
      if (v327 >= 0x40)
      {
        v306 = 64;
      }

      else
      {
        v306 = v327;
      }
    }
  }

  if (j - v202 < 8)
  {
    if (v182 <= 0x40)
    {
      if (v283 >= v456)
      {
        LODWORD(v326) = v182 >> 3;
        v182 &= 7u;
      }

      else
      {
        if (v283 == v192)
        {
          v283 = v192;
          goto LABEL_269;
        }

        v326 = v182 >> 3;
        if (&v283[-v326] < v192)
        {
          LODWORD(v326) = v283 - v192;
        }

        v182 -= 8 * v326;
      }

      v283 -= v326;
      v181 = *v283;
      goto LABEL_269;
    }

    goto LABEL_441;
  }

  if (v308 >= 0xC)
  {
    if (v182 <= 0x40)
    {
      v328 = j - 7;
      v329 = -v199 & 0x3F;
      while (1)
      {
        if (v283 >= v456)
        {
          LODWORD(v330) = v182 >> 3;
          v182 &= 7u;
          v331 = 1;
        }

        else
        {
          if (v283 == v192)
          {
LABEL_266:
            v283 = v192;
            j = v452;
            goto LABEL_269;
          }

          v330 = v182 >> 3;
          v331 = &v283[-v330] >= v192;
          if (&v283[-v330] < v192)
          {
            LODWORD(v330) = v283 - v192;
          }

          v182 -= 8 * v330;
        }

        v283 -= v330;
        v181 = *v283;
        if (v202 >= v328 || !v331)
        {
          goto LABEL_263;
        }

        v332 = &v10[(v181 << v182) >> v329];
        *v202 = *v332;
        v333 = v182 + *(v332 + 2);
        v334 = (v202 + *(v332 + 3));
        v335 = &v10[(v181 << v333) >> v329];
        *v334 = *v335;
        v336 = v333 + *(v335 + 2);
        v337 = (v334 + *(v335 + 3));
        v338 = &v10[(v181 << v336) >> v329];
        *v337 = *v338;
        v339 = v336 + *(v338 + 2);
        v340 = (v337 + *(v338 + 3));
        v341 = &v10[(v181 << v339) >> v329];
        *v340 = *v341;
        v182 = v339 + *(v341 + 2);
        v202 = (v340 + *(v341 + 3));
        if (v182 > 0x40)
        {
LABEL_262:
          v283 = &BIT_reloadDStream_zeroFilled_36196;
          j = v452;
          goto LABEL_269;
        }
      }
    }

    goto LABEL_441;
  }

  if (v182 > 0x40)
  {
LABEL_441:
    v283 = &BIT_reloadDStream_zeroFilled_36196;
    goto LABEL_269;
  }

  v309 = j - 9;
  v310 = -v199 & 0x3F;
  while (1)
  {
    if (v283 >= v456)
    {
      LODWORD(v311) = v182 >> 3;
      v182 &= 7u;
      v312 = 1;
    }

    else
    {
      if (v283 == v192)
      {
        goto LABEL_266;
      }

      v311 = v182 >> 3;
      v312 = &v283[-v311] >= v192;
      if (&v283[-v311] < v192)
      {
        LODWORD(v311) = v283 - v192;
      }

      v182 -= 8 * v311;
    }

    v283 -= v311;
    v181 = *v283;
    if (v202 >= v309 || !v312)
    {
      break;
    }

    v313 = &v10[(v181 << v182) >> v310];
    *v202 = *v313;
    v314 = v182 + *(v313 + 2);
    v315 = (v202 + *(v313 + 3));
    v316 = &v10[(v181 << v314) >> v310];
    *v315 = *v316;
    v317 = v314 + *(v316 + 2);
    v318 = (v315 + *(v316 + 3));
    v319 = &v10[(v181 << v317) >> v310];
    *v318 = *v319;
    v320 = v317 + *(v319 + 2);
    v321 = (v318 + *(v319 + 3));
    v322 = &v10[(v181 << v320) >> v310];
    *v321 = *v322;
    v323 = v320 + *(v322 + 2);
    v324 = (v321 + *(v322 + 3));
    v325 = &v10[(v181 << v323) >> v310];
    *v324 = *v325;
    v182 = v323 + *(v325 + 2);
    v202 = (v324 + *(v325 + 3));
    if (v182 > 0x40)
    {
      goto LABEL_262;
    }
  }

LABEL_263:
  j = v452;
LABEL_269:
  if (j - v202 < 2)
  {
    goto LABEL_285;
  }

  v342 = j - 2;
  v343 = -v199 & 0x3F;
  if (v182 > 0x40)
  {
    v283 = &BIT_reloadDStream_zeroFilled_36196;
    goto LABEL_283;
  }

  while (2)
  {
    if (v283 >= v456)
    {
      LODWORD(v344) = v182 >> 3;
      v182 &= 7u;
      v345 = 1;
      goto LABEL_277;
    }

    if (v283 != v192)
    {
      v344 = v182 >> 3;
      v345 = &v283[-v344] >= v192;
      if (&v283[-v344] < v192)
      {
        LODWORD(v344) = v283 - v192;
      }

      v182 -= 8 * v344;
LABEL_277:
      v283 -= v344;
      v181 = *v283;
      if (v202 > v342 || !v345)
      {
        goto LABEL_283;
      }

      v346 = &v10[(v181 << v182) >> v343];
      *v202 = *v346;
      v182 += *(v346 + 2);
      v202 = (v202 + *(v346 + 3));
      if (v182 > 0x40)
      {
        v283 = &BIT_reloadDStream_zeroFilled_36196;
        goto LABEL_283;
      }

      continue;
    }

    break;
  }

  v283 = v192;
LABEL_283:
  for (j = v452; v202 <= v342; v202 = (v202 + *(v347 + 3)))
  {
    v347 = &v10[(v181 << v182) >> v343];
    *v202 = *v347;
    v182 += *(v347 + 2);
  }

LABEL_285:
  v348 = v191;
  if (v202 >= j)
  {
LABEL_288:
    v350 = v462;
  }

  else
  {
    v349 = &v10[(v181 << v182) >> -v199];
    *v202 = *v349;
    if (*(v349 + 3) == 1)
    {
      v182 += *(v349 + 2);
      goto LABEL_288;
    }

    v350 = v462;
    if (v182 <= 0x3F)
    {
      v369 = v182 + *(v349 + 2);
      if (v369 >= 0x40)
      {
        v182 = 64;
      }

      else
      {
        v182 = v369;
      }
    }
  }

  if (v191 - v207 < 8)
  {
    if (v185 <= 0x40)
    {
      if (v284 >= v458)
      {
        LODWORD(v368) = v185 >> 3;
        v185 &= 7u;
      }

      else
      {
        if (v284 == v197)
        {
          v284 = v197;
          goto LABEL_330;
        }

        v368 = v185 >> 3;
        if (&v284[-v368] < v197)
        {
          LODWORD(v368) = v284 - v197;
        }

        v185 -= 8 * v368;
      }

      v284 -= v368;
      v350 = *v284;
      goto LABEL_330;
    }

    goto LABEL_442;
  }

  if (v308 >= 0xC)
  {
    if (v185 <= 0x40)
    {
      v351 = v191;
      v370 = -v199 & 0x3F;
      while (1)
      {
        if (v284 >= v458)
        {
          LODWORD(v371) = v185 >> 3;
          v185 &= 7u;
          v372 = 1;
        }

        else
        {
          if (v284 == v197)
          {
LABEL_328:
            v284 = v197;
            v348 = v351;
            goto LABEL_330;
          }

          v371 = v185 >> 3;
          v372 = &v284[-v371] >= v197;
          if (&v284[-v371] < v197)
          {
            LODWORD(v371) = v284 - v197;
          }

          v185 -= 8 * v371;
        }

        v284 -= v371;
        v350 = *v284;
        if (v207 >= v191 - 7 || !v372)
        {
          goto LABEL_325;
        }

        v373 = &v10[v350 << v185 >> v370];
        *v207 = *v373;
        v374 = v185 + *(v373 + 2);
        v375 = (v207 + *(v373 + 3));
        v376 = &v10[v350 << v374 >> v370];
        *v375 = *v376;
        v377 = v374 + *(v376 + 2);
        v378 = (v375 + *(v376 + 3));
        v379 = &v10[v350 << v377 >> v370];
        *v378 = *v379;
        v380 = v377 + *(v379 + 2);
        v381 = (v378 + *(v379 + 3));
        v382 = &v10[v350 << v380 >> v370];
        *v381 = *v382;
        v185 = v380 + *(v382 + 2);
        v207 = (v381 + *(v382 + 3));
        if (v185 > 0x40)
        {
LABEL_324:
          v284 = &BIT_reloadDStream_zeroFilled_36196;
          v348 = v351;
          goto LABEL_330;
        }
      }
    }

    goto LABEL_442;
  }

  if (v185 > 0x40)
  {
LABEL_442:
    v284 = &BIT_reloadDStream_zeroFilled_36196;
    goto LABEL_330;
  }

  v351 = v191;
  v352 = -v199 & 0x3F;
  while (1)
  {
    if (v284 >= v458)
    {
      LODWORD(v353) = v185 >> 3;
      v185 &= 7u;
      v354 = 1;
    }

    else
    {
      if (v284 == v197)
      {
        goto LABEL_328;
      }

      v353 = v185 >> 3;
      v354 = &v284[-v353] >= v197;
      if (&v284[-v353] < v197)
      {
        LODWORD(v353) = v284 - v197;
      }

      v185 -= 8 * v353;
    }

    v284 -= v353;
    v350 = *v284;
    if (v207 >= v191 - 9 || !v354)
    {
      break;
    }

    v355 = &v10[v350 << v185 >> v352];
    *v207 = *v355;
    v356 = v185 + *(v355 + 2);
    v357 = (v207 + *(v355 + 3));
    v358 = &v10[v350 << v356 >> v352];
    *v357 = *v358;
    v359 = v356 + *(v358 + 2);
    v360 = (v357 + *(v358 + 3));
    v361 = &v10[v350 << v359 >> v352];
    *v360 = *v361;
    v362 = v359 + *(v361 + 2);
    v363 = (v360 + *(v361 + 3));
    v364 = &v10[v350 << v362 >> v352];
    *v363 = *v364;
    v365 = v362 + *(v364 + 2);
    v366 = (v363 + *(v364 + 3));
    v367 = &v10[v350 << v365 >> v352];
    *v366 = *v367;
    v185 = v365 + *(v367 + 2);
    v207 = (v366 + *(v367 + 3));
    if (v185 > 0x40)
    {
      goto LABEL_324;
    }
  }

LABEL_325:
  v348 = v351;
LABEL_330:
  if (v348 - v207 < 2)
  {
    goto LABEL_346;
  }

  v383 = v348 - 2;
  v384 = -v199 & 0x3F;
  if (v185 > 0x40)
  {
    v284 = &BIT_reloadDStream_zeroFilled_36196;
    goto LABEL_344;
  }

  while (2)
  {
    if (v284 >= v458)
    {
      LODWORD(v385) = v185 >> 3;
      v185 &= 7u;
      v386 = 1;
      goto LABEL_338;
    }

    if (v284 != v197)
    {
      v385 = v185 >> 3;
      v386 = &v284[-v385] >= v197;
      if (&v284[-v385] < v197)
      {
        LODWORD(v385) = v284 - v197;
      }

      v185 -= 8 * v385;
LABEL_338:
      v284 -= v385;
      v350 = *v284;
      if (v207 > v383 || !v386)
      {
        goto LABEL_344;
      }

      v387 = &v10[v350 << v185 >> v384];
      *v207 = *v387;
      v185 += *(v387 + 2);
      v207 = (v207 + *(v387 + 3));
      if (v185 > 0x40)
      {
        v284 = &BIT_reloadDStream_zeroFilled_36196;
        goto LABEL_344;
      }

      continue;
    }

    break;
  }

  v284 = v197;
LABEL_344:
  while (v207 <= v383)
  {
    v388 = &v10[v350 << v185 >> v384];
    *v207 = *v388;
    v185 += *(v388 + 2);
    v207 = (v207 + *(v388 + 3));
  }

LABEL_346:
  v389 = v284;
  if (v207 >= v348)
  {
    v392 = v442;
    v391 = v451;
  }

  else
  {
    v390 = &v10[v350 << v185 >> -v199];
    *v207 = *v390;
    v391 = v451;
    if (*(v390 + 3) == 1)
    {
      v185 += *(v390 + 2);
      v392 = v442;
    }

    else
    {
      v392 = v442;
      if (v185 <= 0x3F)
      {
        v412 = v185 + *(v390 + 2);
        if (v412 >= 0x40)
        {
          v185 = 64;
        }

        else
        {
          v185 = v412;
        }
      }
    }
  }

  if (v391 - v205 >= 8)
  {
    v393 = DWORD2(v465);
    if (v308 >= 0xC)
    {
      if (DWORD2(v465) <= 0x40)
      {
        v413 = -v199 & 0x3F;
        do
        {
          if (v466 >= v467)
          {
            v416 = (v466 - (v393 >> 3));
            *&v466 = v416;
            v393 &= 7u;
            v415 = 1;
          }

          else
          {
            if (v466 == *(&v466 + 1))
            {
LABEL_392:
              v391 = v451;
              goto LABEL_393;
            }

            v414 = v393 >> 3;
            v415 = (v466 - v414) >= *(&v466 + 1);
            if ((v466 - v414) < *(&v466 + 1))
            {
              v414 = (v466 - DWORD2(v466));
            }

            else
            {
              v414 = v414;
            }

            v416 = (v466 - v414);
            *&v466 = v466 - v414;
            v393 -= 8 * v414;
          }

          DWORD2(v465) = v393;
          v417 = *v416;
          *&v465 = v417;
          if (v205 >= v392 || !v415)
          {
            goto LABEL_389;
          }

          v418 = &v10[(v417 << v393) >> v413];
          *v205 = *v418;
          DWORD2(v465) = v393 + *(v418 + 2);
          v419 = (v205 + *(v418 + 3));
          v420 = &v10[v465 << SBYTE8(v465) >> v413];
          *v419 = *v420;
          DWORD2(v465) += *(v420 + 2);
          v421 = (v419 + *(v420 + 3));
          v422 = &v10[v465 << SBYTE8(v465) >> v413];
          *v421 = *v422;
          DWORD2(v465) += *(v422 + 2);
          v423 = (v421 + *(v422 + 3));
          v424 = &v10[v465 << SBYTE8(v465) >> v413];
          *v423 = *v424;
          v393 = DWORD2(v465) + *(v424 + 2);
          DWORD2(v465) = v393;
          v205 = (v423 + *(v424 + 3));
        }

        while (v393 <= 0x40);
      }
    }

    else if (DWORD2(v465) <= 0x40)
    {
      v394 = v391 - 9;
      v395 = -v199 & 0x3F;
      while (1)
      {
        if (v466 >= v467)
        {
          v398 = (v466 - (v393 >> 3));
          *&v466 = v398;
          v393 &= 7u;
          v397 = 1;
        }

        else
        {
          if (v466 == *(&v466 + 1))
          {
            goto LABEL_392;
          }

          v396 = v393 >> 3;
          v397 = (v466 - v396) >= *(&v466 + 1);
          v396 = (v466 - v396) < *(&v466 + 1) ? (v466 - DWORD2(v466)) : v396;
          v398 = (v466 - v396);
          *&v466 = v466 - v396;
          v393 -= 8 * v396;
        }

        DWORD2(v465) = v393;
        v399 = *v398;
        *&v465 = v399;
        if (v205 >= v394 || !v397)
        {
          break;
        }

        v400 = &v10[(v399 << v393) >> v395];
        *v205 = *v400;
        DWORD2(v465) = v393 + *(v400 + 2);
        v401 = (v205 + *(v400 + 3));
        v402 = &v10[v465 << SBYTE8(v465) >> v395];
        *v401 = *v402;
        DWORD2(v465) += *(v402 + 2);
        v403 = (v401 + *(v402 + 3));
        v404 = &v10[v465 << SBYTE8(v465) >> v395];
        *v403 = *v404;
        DWORD2(v465) += *(v404 + 2);
        v405 = (v403 + *(v404 + 3));
        v406 = &v10[v465 << SBYTE8(v465) >> v395];
        *v405 = *v406;
        DWORD2(v465) += *(v406 + 2);
        v407 = (v405 + *(v406 + 3));
        v408 = &v10[v465 << SBYTE8(v465) >> v395];
        *v407 = *v408;
        v393 = DWORD2(v465) + *(v408 + 2);
        DWORD2(v465) = v393;
        v205 = (v407 + *(v408 + 3));
        if (v393 > 0x40)
        {
          goto LABEL_388;
        }
      }

LABEL_389:
      v391 = v451;
      goto LABEL_393;
    }

LABEL_388:
    *&v466 = &BIT_reloadDStream_zeroFilled_36196;
    v391 = v451;
    goto LABEL_393;
  }

  v393 = DWORD2(v465);
  if (DWORD2(v465) >= 0x41)
  {
    *&v466 = &BIT_reloadDStream_zeroFilled_36196;
  }

  else
  {
    if (v466 >= v467)
    {
      v411 = (v466 - (DWORD2(v465) >> 3));
      *&v466 = v411;
      v393 = BYTE8(v465) & 7;
    }

    else
    {
      if (v466 == *(&v466 + 1))
      {
        goto LABEL_393;
      }

      v409 = DWORD2(v465) >> 3;
      v391 = v451;
      if (v466 - v409 >= *(&v466 + 1))
      {
        v410 = v409;
      }

      else
      {
        v410 = (v466 - DWORD2(v466));
      }

      v411 = (v466 - v410);
      *&v466 = v466 - v410;
      v393 = DWORD2(v465) - 8 * v410;
    }

    DWORD2(v465) = v393;
    *&v465 = *v411;
  }

LABEL_393:
  if (v391 - v205 >= 2)
  {
    v425 = v391 - 2;
    v426 = -v199 & 0x3F;
    if (v393 > 0x40)
    {
LABEL_405:
      *&v466 = &BIT_reloadDStream_zeroFilled_36196;
    }

    else
    {
      while (1)
      {
        if (v466 >= v467)
        {
          v429 = (v466 - (v393 >> 3));
          *&v466 = v429;
          v393 &= 7u;
          v428 = 1;
        }

        else
        {
          if (v466 == *(&v466 + 1))
          {
            break;
          }

          v427 = v393 >> 3;
          v428 = (v466 - v427) >= *(&v466 + 1);
          v427 = (v466 - v427) < *(&v466 + 1) ? (v466 - DWORD2(v466)) : v427;
          v429 = (v466 - v427);
          *&v466 = v466 - v427;
          v393 -= 8 * v427;
        }

        DWORD2(v465) = v393;
        v430 = *v429;
        *&v465 = v430;
        if (v205 > v425 || !v428)
        {
          break;
        }

        v431 = &v10[(v430 << v393) >> v426];
        *v205 = *v431;
        v393 = DWORD2(v465) + *(v431 + 2);
        DWORD2(v465) = v393;
        v205 = (v205 + *(v431 + 3));
        if (v393 > 0x40)
        {
          goto LABEL_405;
        }
      }
    }

    while (v205 <= v425)
    {
      v432 = &v10[v465 << v393 >> v426];
      *v205 = *v432;
      v393 = DWORD2(v465) + *(v432 + 2);
      DWORD2(v465) = v393;
      v205 = (v205 + *(v432 + 3));
    }
  }

  if (v205 < v451)
  {
    v433 = &v10[v465 << v393 >> -v199];
    *v205 = *v433;
    if (*(v433 + 3) == 1)
    {
      v393 = DWORD2(v465) + *(v433 + 2);
    }

    else
    {
      v393 = DWORD2(v465);
      if (DWORD2(v465) <= 0x3F)
      {
        v434 = DWORD2(v465) + *(v433 + 2);
        if (v434 >= 0x40)
        {
          v393 = 64;
        }

        else
        {
          v393 = v434;
        }
      }
    }
  }

  if (v393 == 64 && v466 == *(&v466 + 1) && v185 == 64 && v389 == v197 && v182 == 64 && v283 == v192 && v306 == 64 && v193 == v194)
  {
    return v8;
  }

  else
  {
    return -20;
  }
}