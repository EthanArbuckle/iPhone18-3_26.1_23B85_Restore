int64_t ZSTD_compressBlock_btultra2(_DWORD *a1, void *a2, uint64_t a3, unsigned __int8 *a4, unint64_t a5)
{
  v17 = *MEMORY[0x1E69E9840];
  if (!a1[49] && a2[1] == *a2)
  {
    v5 = a1[6];
    if (v5 == a1[7] && a5 >= 9 && v5 == a4 - a1[2])
    {
      v15 = *a3;
      v16 = *(a3 + 8);
      v8 = a3;
      v9 = a1;
      v10 = a2;
      v11 = a4;
      v12 = a5;
      ZSTD_compressBlock_opt2(a1, a2, &v15, a4, a5, 0);
      a1 = v9;
      a2 = v10;
      a3 = v8;
      a4 = v11;
      a5 = v12;
      v10[3] = v10[2];
      v10[1] = *v10;
      *(v10 + 18) = 0;
      *(v9 + 1) -= v12;
      v13 = v9[6] + v12;
      v9[6] = v13;
      v9[7] = v13;
      v9[11] = v13;
    }
  }

  return ZSTD_compressBlock_opt2(a1, a2, a3, a4, a5, 0);
}

void *FSE_initDState(void *result, uint64_t a2, unsigned __int16 *a3)
{
  v3 = *a3;
  v4 = *(a2 + 8) + v3;
  v5 = (*a2 >> -(*(a2 + 8) + v3)) & BIT_mask_36272[v3];
  *(a2 + 8) = v4;
  *result = v5;
  if (v4 >= 0x41)
  {
    *(a2 + 16) = &BIT_reloadDStream_zeroFilled_36125;
    goto LABEL_10;
  }

  v6 = *(a2 + 16);
  if (v6 >= *(a2 + 32))
  {
    v10 = (v6 - (v4 >> 3));
    *(a2 + 16) = v10;
    v11 = v4 & 7;
LABEL_9:
    *(a2 + 8) = v11;
    *a2 = *v10;
    goto LABEL_10;
  }

  v7 = *(a2 + 24);
  if (v6 != v7)
  {
    v8 = v4 >> 3;
    if (v6 - v8 >= v7)
    {
      v9 = v8;
    }

    else
    {
      v9 = (v6 - v7);
    }

    v10 = (v6 - v9);
    *(a2 + 16) = v10;
    v11 = v4 - 8 * v9;
    goto LABEL_9;
  }

LABEL_10:
  result[1] = a3 + 2;
  return result;
}

unint64_t ZSTD_compressSubBlock(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, char *__src, size_t __n, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char *a11, uint64_t a12, int a13, int a14, int a15, _DWORD *a16, _DWORD *a17, int a18)
{
  v18 = a1;
  v19 = a11;
  v20 = a11 + 3;
  v21 = 200;
  if (!a14)
  {
    v21 = 0;
  }

  v22 = 3;
  if (1024 - v21 > __n)
  {
    v23 = 3;
  }

  else
  {
    v23 = 4;
  }

  if (0x4000 - v21 > __n)
  {
    v24 = v23;
  }

  else
  {
    v24 = v23 + 1;
  }

  if (a14)
  {
    v22 = *a2;
  }

  v25 = a12 - 3;
  v26 = &a11[a12];
  *a16 = 0;
  if (__n)
  {
    v27 = *a2;
    if (*a2 != 1)
    {
      if (!v27)
      {
        if (__n <= 0x1F)
        {
          LODWORD(v28) = 1;
        }

        else
        {
          LODWORD(v28) = 2;
        }

        if (__n <= 0xFFF)
        {
          v28 = v28;
        }

        else
        {
          v28 = (v28 + 1);
        }

        v29 = v28 + __n;
        if (v28 + __n > v25)
        {
          return -70;
        }

        if (v28 == 3)
        {
          v30 = a2;
          v31 = &a11[a12];
          v32 = a4;
          v33 = a3;
          v34 = a8;
          v35 = a7;
          *v20 = (16 * __n) | 0xC;
        }

        else if (v28 == 2)
        {
          v30 = a2;
          v31 = &a11[a12];
          v32 = a4;
          v33 = a3;
          v34 = a8;
          v35 = a7;
          *v20 = (16 * __n) | 4;
        }

        else
        {
          v33 = a3;
          v34 = a8;
          v35 = a7;
          v30 = a2;
          v31 = &a11[a12];
          v32 = a4;
          *v20 = 8 * __n;
        }

        memcpy(&v20[v28], __src, __n);
        result = v29;
        a4 = v32;
        v26 = v31;
        goto LABEL_87;
      }

      v76 = a8;
      v72 = a4;
      v73 = a3;
      v78 = a7;
      v38 = 0;
      v39 = &v20[v24];
      if (a14 && v27 == 2)
      {
        v40 = a2;
        v41 = __src;
        v42 = __n;
        memcpy(v39, (a2 + 4), *(a2 + 136));
        v26 = &a11[a12];
        __n = v42;
        __src = v41;
        v30 = v40;
        v38 = *(v40 + 136);
        v20 = a11 + 3;
        v39 += v38;
      }

      else
      {
        v30 = a2;
      }

      v71 = v26;
      v43 = v26 - v39;
      v74 = __src;
      v44 = __n;
      if (v24 == 3)
      {
        v45 = HUF_compress1X_usingCTable_internal(v39, v43, __src, __n, a1);
      }

      else
      {
        v45 = HUF_compress4X_usingCTable_internal(v39, v43, __src, __n, a1);
      }

      if (v45 - 1 > 0xFFFFFFFFFFFFFF87)
      {
        return 0;
      }

      v46 = v45 + v38;
      v47 = v44;
      if (a14 || v46 < v44)
      {
        v53 = 3;
        if (v46 > 0x3FF)
        {
          v53 = 4;
        }

        if ((v46 & 0xFFFFFFFFFFFFC000) != 0)
        {
          ++v53;
        }

        v19 = a11;
        v51 = v74;
        a4 = v72;
        v33 = v73;
        if (v24 >= v53)
        {
          v54 = &v39[v45];
          v55 = 16 * v47;
          if (v24 == 5)
          {
            *(a11 + 3) = v22 + v55 + (v46 << 22) + 12;
            a11[7] = v46 >> 10;
            v18 = a1;
            v26 = v71;
            a2 = v30;
          }

          else
          {
            v18 = a1;
            v26 = v71;
            a2 = v30;
            v56 = v22 + v55;
            if (v24 == 4)
            {
              *v20 = v56 + (v46 << 18) + 8;
            }

            else
            {
              v57 = v56 + (v46 << 14);
              *(a11 + 3) = v57;
              a11[5] = BYTE2(v57);
            }
          }

          v34 = v76;
          v35 = v78;
          *a16 = 1;
          result = v54 - v20;
LABEL_88:
          if (result > 0xFFFFFFFFFFFFFF88)
          {
            return result;
          }

          a7 = v35;
          a8 = v34;
          a3 = v33;
          if (!result)
          {
            return result;
          }

          goto LABEL_90;
        }

        if (v47 <= 0x1F)
        {
          LODWORD(v48) = 1;
        }

        else
        {
          LODWORD(v48) = 2;
        }

        if (v47 <= 0xFFF)
        {
          v48 = v48;
        }

        else
        {
          v48 = (v48 + 1);
        }

        v49 = v48 + v47;
        if (v48 + v47 > v25)
        {
          return -70;
        }

        if (v48 != 3)
        {
          v18 = a1;
          if (v48 != 2)
          {
            v34 = v76;
            v35 = v78;
            v52 = v72;
LABEL_85:
            *v20 = 8 * v47;
            goto LABEL_86;
          }

          v52 = v72;
          v34 = v76;
          v35 = v78;
          goto LABEL_72;
        }

        v52 = v72;
        v34 = v76;
        v35 = v78;
      }

      else
      {
        if (v44 <= 0x1F)
        {
          LODWORD(v48) = 1;
        }

        else
        {
          LODWORD(v48) = 2;
        }

        if (v44 <= 0xFFF)
        {
          v48 = v48;
        }

        else
        {
          v48 = (v48 + 1);
        }

        v49 = v48 + v44;
        v50 = v48 + v44 > v25;
        v19 = a11;
        v51 = v74;
        v34 = v76;
        v35 = v78;
        v52 = v72;
        v33 = v73;
        if (v50)
        {
          return -70;
        }

        if (v48 != 3)
        {
          v18 = a1;
          if (v48 != 2)
          {
            goto LABEL_85;
          }

LABEL_72:
          *v20 = (16 * v47) | 4;
LABEL_86:
          memcpy(&v20[v48], v51, v47);
          result = v49;
          a4 = v52;
          v26 = v71;
LABEL_87:
          a2 = v30;
          goto LABEL_88;
        }
      }

      *v20 = (16 * v47) | 0xC;
      v18 = a1;
      goto LABEL_86;
    }

    if (__n <= 0x1F)
    {
      v37 = 1;
    }

    else
    {
      v37 = 2;
    }

    if (__n > 0xFFF)
    {
      ++v37;
    }

    if (v37 == 3)
    {
      *v20 = (16 * __n) | 0xD;
    }

    else if (v37 == 2)
    {
      *v20 = (16 * __n) | 5;
    }

    else
    {
      *v20 = (8 * __n) | 1;
    }

    v20[v37] = *__src;
    result = (v37 + 1);
  }

  else
  {
    if (a12 == 3)
    {
      return -70;
    }

    *v20 = 0;
    result = 1;
  }

LABEL_90:
  v58 = a17;
  v59 = &v20[result];
  v60 = *(a10 + 4) > 0x39u;
  *a17 = 0;
  if (v26 - &v20[result] < 4)
  {
    return -70;
  }

  if (a4 >= 0x80)
  {
    if (a4 >> 8 > 0x7E)
    {
      *v59 = -1;
      *(v59 + 1) = a4 - 32512;
      v61 = v59 + 3;
    }

    else
    {
      *v59 = BYTE1(a4) | 0x80;
      v59[1] = a4;
      v61 = v59 + 2;
    }
  }

  else
  {
    *v59 = a4;
    v61 = v59 + 1;
    if (!a4)
    {
      result = 1;
LABEL_95:
      result = &v59[result - v19];
      v62 = a18 + 8 * result - 20;
      *v19 = v62;
      *(v19 + 2) = BYTE2(v62);
      return result;
    }
  }

  v63 = a3;
  v79 = a7;
  v64 = v61 + 1;
  if (a15)
  {
    *v61 = (*(a2 + 144) << 6) + 16 * *(a2 + 148) + 4 * *(a2 + 152);
    v65 = a2;
    v66 = v26;
    v67 = a4;
    v77 = a8;
    memcpy(v61 + 1, (a2 + 156), *(a2 + 296));
    v68 = &v64[*(v65 + 296)];
    result = ZSTD_encodeSequences(v68, v66 - v68, v18 + 1418, v77, v18 + 1032, a9, v18 + 2144, v79, v63, v67, v60);
    if (result >= 0xFFFFFFFFFFFFFF89)
    {
      return result;
    }

    v69 = v68 + result;
    v70 = *(v65 + 304);
    if (v70)
    {
      v58 = a17;
      if (v70 + result < 4)
      {
        return 0;
      }
    }

    else
    {
      v58 = a17;
    }
  }

  else
  {
    *v61 = -4;
    result = ZSTD_encodeSequences((v61 + 1), v26 - v64, v18 + 1418, a8, v18 + 1032, a9, v18 + 2144, a7, a3, a4, v60);
    if (result >= 0xFFFFFFFFFFFFFF89)
    {
      return result;
    }

    v69 = &v64[result];
  }

  if (v69 - v61 < 4)
  {
    return 0;
  }

  *v58 = 1;
  result = v69 - v59;
  if ((v69 - v59) <= 0xFFFFFFFFFFFFFF88 && result)
  {
    goto LABEL_95;
  }

  return result;
}

int64_t ZSTD_compressBlock_greedy(uint64_t a1, uint64_t a2, unsigned int *a3, unsigned __int16 *a4, uint64_t a5)
{
  v5 = a4;
  v7 = (a4 + a5);
  v8 = a4 + a5 - 8;
  v9 = *(a1 + 8);
  v10 = *(a1 + 24);
  v11 = *(a1 + 272);
  if (v11 >= 6)
  {
    v11 = 6;
  }

  if (v11 <= 4)
  {
    v12 = 4;
  }

  else
  {
    v12 = v11;
  }

  v13 = *a3;
  v14 = a3[1];
  v89 = v9 + v10;
  if (a4 == v9 + v10)
  {
    v15 = (a4 + 1);
  }

  else
  {
    v15 = a4;
  }

  v16 = v15 - v9;
  v17 = 1 << *(a1 + 256);
  if (v16 - v10 > v17 && *(a1 + 40) == 0)
  {
    LODWORD(v10) = v16 - v17;
  }

  v19 = v16 - v10;
  if (v14 <= v16 - v10)
  {
    v20 = v14;
  }

  else
  {
    v20 = 0;
  }

  if (v13 <= v19)
  {
    v21 = v13;
  }

  else
  {
    v21 = 0;
  }

  *(a1 + 300) = 0;
  if (v15 < v8)
  {
    v22 = a1;
    v85 = v16 - v10;
    v86 = v14;
    v87 = v13;
    v88 = a3;
    v23 = v7 - 7;
    v24 = (v7 - 3);
    v25 = (v7 - 1);
    v26 = v7 - 16;
    v90 = v12;
    while (!v21 || *(v15 - v21 + 1) != *(v15 + 1))
    {
      v92 = 999999999;
      if (v12 == 6)
      {
        BestMatch_noDict_6 = ZSTD_HcFindBestMatch_noDict_6(v22, v15, v7, &v92);
      }

      else if (v12 == 5)
      {
        BestMatch_noDict_6 = ZSTD_HcFindBestMatch_noDict_5(v22, v15, v7, &v92);
      }

      else
      {
        BestMatch_noDict_6 = ZSTD_HcFindBestMatch_noDict_4(v22, v15, v7, &v92);
      }

      v24 = (v7 - 3);
      if (BestMatch_noDict_6 <= 3)
      {
        v36 = v15 - v5;
        v15 = (v15 + ((v15 - v5) >> 8) + 1);
        v22 = a1;
        *(a1 + 300) = v36 > 0x7FF;
        v12 = v90;
        goto LABEL_24;
      }

      v22 = a1;
      v37 = v92;
      v12 = v90;
      if (v92 >= 4)
      {
        if (v15 > v5 && v15 - v92 + 3 > v89)
        {
          v38 = 2 - v92;
          v39 = v15;
          while (1)
          {
            v40 = *--v39;
            if (v40 != *(v15 + v38))
            {
              break;
            }

            ++BestMatch_noDict_6;
            if (v39 > v5)
            {
              v41 = v15 + v38;
              v15 = v39;
              if (v41 > v89)
              {
                continue;
              }
            }

            goto LABEL_82;
          }
        }

        v39 = v15;
LABEL_82:
        v20 = v21;
        v21 = (v92 - 3);
        v15 = v39;
      }

LABEL_64:
      v42 = v15 - v5;
      v43 = *(a2 + 24);
      if (v15 > v26)
      {
        if (v5 <= v26)
        {
          v44 = (v43 + v26 - v5);
          *v43 = *v5;
          if (v26 - v5 >= 17)
          {
            v45 = v43 + 1;
            v46 = (v5 + 16);
            do
            {
              *v45 = *(v46 - 1);
              v47 = *v46;
              v46 += 2;
              v45[1] = v47;
              v45 += 2;
            }

            while (v45 < v44);
          }

          v5 = v7 - 16;
          v43 = v44;
        }

        if (v5 >= v15)
        {
          goto LABEL_95;
        }

        v48 = v15 - v5;
        if ((v15 - v5) < 8)
        {
          v56 = v43;
        }

        else if ((v43 - v5) < 0x20)
        {
          v56 = v43;
        }

        else
        {
          if (v48 < 0x20)
          {
            v49 = 0;
LABEL_89:
            v61 = v48 & 0xFFFFFFFFFFFFFFF8;
            v56 = v43 + (v48 & 0xFFFFFFFFFFFFFFF8);
            v62 = v49 - (v48 & 0xFFFFFFFFFFFFFFF8);
            v63 = (v5 + v49);
            v64 = (v43 + v49);
            do
            {
              v65 = *v63++;
              *v64++ = v65;
              v62 += 8;
            }

            while (v62);
            if (v48 != v61)
            {
              v5 = (v5 + v61);
              goto LABEL_94;
            }

LABEL_95:
            *(a2 + 24) += v42;
            v55 = *(a2 + 8);
            if (v42 >= 0x10000)
            {
              v67 = (v55 - *a2) >> 3;
              *(a2 + 72) = 1;
              *(a2 + 76) = v67;
            }

            goto LABEL_97;
          }

          v49 = v48 & 0xFFFFFFFFFFFFFFE0;
          v57 = (v5 + 8);
          v58 = v43 + 1;
          v59 = v48 & 0xFFFFFFFFFFFFFFE0;
          do
          {
            v60 = *v57;
            *(v58 - 1) = *(v57 - 1);
            *v58 = v60;
            v57 += 2;
            v58 += 2;
            v59 -= 32;
          }

          while (v59);
          if (v48 == v49)
          {
            goto LABEL_95;
          }

          if ((v48 & 0x18) != 0)
          {
            goto LABEL_89;
          }

          v5 = (v5 + v49);
          v56 = v43 + v49;
        }

        do
        {
LABEL_94:
          v66 = *v5;
          v5 = (v5 + 1);
          *v56++ = v66;
        }

        while (v5 != v15);
        goto LABEL_95;
      }

      *v43 = *v5;
      v50 = *(a2 + 24);
      if (v42 > 0x10)
      {
        *(v50 + 16) = *(v5 + 1);
        if (v42 >= 33)
        {
          v51 = v50 + v42;
          v52 = (v50 + 32);
          v53 = (v5 + 24);
          do
          {
            *v52 = *(v53 - 1);
            v54 = *v53;
            v53 += 2;
            v52[1] = v54;
            v52 += 2;
          }

          while (v52 < v51);
        }

        goto LABEL_95;
      }

      *(a2 + 24) = v50 + v42;
      v55 = *(a2 + 8);
LABEL_97:
      *(v55 + 4) = v42;
      *v55 = v37;
      if (BestMatch_noDict_6 - 3 >= 0x10000)
      {
        v68 = (v55 - *a2) >> 3;
        *(a2 + 72) = 2;
        *(a2 + 76) = v68;
      }

      *(v55 + 6) = BestMatch_noDict_6 - 3;
      v69 = v55 + 8;
      *(a2 + 8) = v55 + 8;
      if (*(v22 + 300))
      {
        *(v22 + 300) = 0;
      }

      v5 = (v15 + BestMatch_noDict_6);
      if (!v20 || v5 > v8)
      {
LABEL_23:
        v15 = v5;
        goto LABEL_24;
      }

      v70 = v21;
      v71 = v20;
      while (1)
      {
        v21 = v71;
        v71 = v70;
        if (*v5 != *(v5 - v21))
        {
          v20 = v21;
          v21 = v70;
          goto LABEL_23;
        }

        v72 = (v5 + 2);
        v73 = (v5 - v21 + 4);
        if (v23 <= (v5 + 2))
        {
          v76 = v5 + 2;
          goto LABEL_112;
        }

        v74 = *v73;
        if (v74 == *v72)
        {
          v75 = v5 + 6;
          v73 = (v5 - v21 + 12);
          while (1)
          {
            v76 = v75;
            if (v75 >= v23)
            {
              break;
            }

            v78 = *v73;
            v73 += 4;
            v77 = v78;
            v75 += 4;
            if (v78 != *v76)
            {
              v76 = (v76 + (__clz(__rbit64(*v76 ^ v77)) >> 3));
              goto LABEL_119;
            }
          }

LABEL_112:
          if (v76 >= v24)
          {
            if (v76 >= v25)
            {
              goto LABEL_116;
            }
          }

          else
          {
            if (*v73 == *v76)
            {
              v73 += 2;
              v76 += 2;
            }

            if (v76 >= v25)
            {
LABEL_116:
              if (v76 < v7)
              {
                goto LABEL_117;
              }

              goto LABEL_119;
            }
          }

          if (*v73 == *v76)
          {
            ++v73;
            ++v76;
          }

          if (v76 < v7)
          {
LABEL_117:
            if (*v73 == *v76)
            {
              v76 = (v76 + 1);
            }
          }

LABEL_119:
          v79 = v76 - v72;
          if (v5 > v26)
          {
            goto LABEL_121;
          }

LABEL_120:
          **(a2 + 24) = *v5;
          v69 = *(a2 + 8);
          goto LABEL_121;
        }

        v79 = __clz(__rbit64(*v72 ^ v74)) >> 3;
        if (v5 <= v26)
        {
          goto LABEL_120;
        }

LABEL_121:
        *(v69 + 4) = 0;
        *v69 = 1;
        if (v79 + 1 >= 0x10000)
        {
          v80 = (v69 - *a2) >> 3;
          *(a2 + 72) = 2;
          *(a2 + 76) = v80;
        }

        *(v69 + 6) = v79 + 1;
        v69 += 8;
        *(a2 + 8) = v69;
        v5 = (v5 + v79 + 4);
        if (!v71)
        {
          break;
        }

        v70 = v21;
        v20 = v71;
        v15 = v5;
        if (v5 > v8)
        {
          goto LABEL_24;
        }
      }

      v20 = v71;
      v15 = v5;
LABEL_24:
      if (v15 >= v8)
      {
        a3 = v88;
        v14 = v86;
        v13 = v87;
        v19 = v85;
        goto LABEL_135;
      }
    }

    v27 = v15 + 5;
    v28 = (v15 - v21 + 5);
    if (v23 <= v15 + 5)
    {
      v31 = (v15 + 5);
    }

    else
    {
      v29 = *v28;
      if (v29 != *v27)
      {
        v35 = __clz(__rbit64(*v27 ^ v29)) >> 3;
        goto LABEL_63;
      }

      v30 = (v15 + 13);
      v28 = (v15 - v21 + 13);
      while (1)
      {
        v31 = v30;
        if (v30 >= v23)
        {
          break;
        }

        v33 = *v28;
        v28 += 8;
        v32 = v33;
        v30 += 4;
        if (v33 != *v31)
        {
          v31 = (v31 + (__clz(__rbit64(*v31 ^ v32)) >> 3));
          goto LABEL_44;
        }
      }
    }

    if (v31 >= v24)
    {
      if (v31 >= v25)
      {
        goto LABEL_41;
      }
    }

    else
    {
      if (*v28 == *v31)
      {
        v28 += 4;
        v31 += 2;
      }

      if (v31 >= v25)
      {
LABEL_41:
        if (v31 >= v7)
        {
LABEL_44:
          v35 = v31 - v27;
LABEL_63:
          BestMatch_noDict_6 = v35 + 4;
          v15 = (v15 + 1);
          v37 = 1;
          goto LABEL_64;
        }

LABEL_42:
        if (*v28 == *v31)
        {
          v31 = (v31 + 1);
        }

        goto LABEL_44;
      }
    }

    if (*v28 == *v31)
    {
      v28 += 2;
      ++v31;
    }

    if (v31 >= v7)
    {
      goto LABEL_44;
    }

    goto LABEL_42;
  }

LABEL_135:
  if (v13 <= v19)
  {
    v81 = 0;
  }

  else
  {
    v81 = v13;
  }

  if (v14 <= v19)
  {
    v82 = 0;
  }

  else
  {
    v82 = v14;
  }

  if (v21)
  {
    v81 = v21;
    v83 = v13 > v19;
  }

  else
  {
    v83 = 0;
  }

  if (v83)
  {
    v82 = v13;
  }

  if (v20)
  {
    v82 = v20;
  }

  *a3 = v81;
  a3[1] = v82;
  return v7 - v5;
}

unint64_t ZSTD_HcFindBestMatch_noDict_4(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, void *a4)
{
  v4 = *(a1 + 128);
  v5 = *(a1 + 260);
  v6 = 1 << v5;
  v7 = *(a1 + 8);
  v8 = a2 - v7;
  v9 = 1 << *(a1 + 256);
  v10 = *(a1 + 44);
  if (a2 - v7 - *(a1 + 28) > v9 && *(a1 + 40) == 0)
  {
    v12 = a2 - v7 - v9;
  }

  else
  {
    v12 = *(a1 + 28);
  }

  v13 = v8 - v6;
  if (v8 < v6)
  {
    v13 = 0;
  }

  v14 = *(a1 + 268);
  v15 = *(a1 + 112);
  v16 = ~(-1 << v5);
  v17 = 32 - *(a1 + 264);
  if (*(a1 + 300))
  {
    if (v10 < v8)
    {
      v18 = (-1640531535 * *(v7 + v10)) >> v17;
      *(v4 + 4 * (v10 & v16)) = *(v15 + 4 * v18);
      *(v15 + 4 * v18) = v10;
    }
  }

  else if (v10 < v8)
  {
    do
    {
      v19 = (-1640531535 * *(v7 + v10)) >> v17;
      *(v4 + 4 * (v10 & v16)) = *(v15 + 4 * v19);
      *(v15 + 4 * v19) = v10++;
    }

    while (v8 != v10);
  }

  *(a1 + 44) = v8;
  v20 = (a2 - 3);
  v21 = *(v15 + 4 * ((-1640531535 * *a2) >> v17));
  if (v21 < v12)
  {
    return 3;
  }

  v23 = 1 << v14;
  v24 = v6 - 1;
  v25 = (a3 - 3);
  v26 = a3 - 1;
  v27 = v8 + 3;
  if (a3 - 7 > a2)
  {
    v28 = 3;
    while (1)
    {
      v29 = (v7 + v21);
      if (*(v29 + v28 - 3) != *&v20[v28])
      {
        goto LABEL_35;
      }

      v30 = *v29;
      if (v30 == *a2)
      {
        break;
      }

      result = __clz(__rbit64(*a2 ^ v30)) >> 3;
      if (result <= v28)
      {
        goto LABEL_35;
      }

LABEL_34:
      *a4 = v27 - v21;
      v28 = result;
      if (&a2[result] == a3)
      {
        return result;
      }

LABEL_35:
      if (v21 <= v13)
      {
        return v28;
      }

      if (!--v23)
      {
        return v28;
      }

      v21 = *(v4 + 4 * (v21 & v24));
      result = v28;
      if (v21 < v12)
      {
        return result;
      }
    }

    v31 = (v7 + 8 + v21);
    v32 = a2 + 8;
    while (1)
    {
      v33 = v32;
      if (v32 >= a3 - 7)
      {
        break;
      }

      v35 = *v31;
      v31 += 4;
      v34 = v35;
      v32 += 8;
      if (v35 != *v33)
      {
        v33 += __clz(__rbit64(*v33 ^ v34)) >> 3;
        goto LABEL_33;
      }
    }

    if (v32 >= v25)
    {
      if (v32 >= v26)
      {
        goto LABEL_30;
      }
    }

    else
    {
      if (*v31 == *v32)
      {
        v31 += 2;
        v33 = v32 + 4;
      }

      if (v33 >= v26)
      {
LABEL_30:
        if (v33 >= a3)
        {
          goto LABEL_33;
        }

        goto LABEL_31;
      }
    }

    if (*v31 == *v33)
    {
      ++v31;
      v33 += 2;
    }

    if (v33 >= a3)
    {
LABEL_33:
      result = v33 - a2;
      if (result <= v28)
      {
        goto LABEL_35;
      }

      goto LABEL_34;
    }

LABEL_31:
    if (*v31 == *v33)
    {
      ++v33;
    }

    goto LABEL_33;
  }

  if (v25 <= a2)
  {
    v42 = *a2;
    v43 = v23 - 1;
    result = 3;
    while (1)
    {
      v44 = (v7 + v21);
      if (*(v44 + result - 3) != *&v20[result])
      {
        goto LABEL_72;
      }

      if (v26 <= a2)
      {
        v46 = a2;
        if (a2 >= a3)
        {
          goto LABEL_70;
        }
      }

      else
      {
        v45 = 2 * (*v44 == v42);
        v44 = (v44 + v45);
        v46 = &a2[v45];
        if (v46 >= a3)
        {
          goto LABEL_70;
        }
      }

      if (*v44 == *v46)
      {
        ++v46;
      }

LABEL_70:
      if (v46 - a2 > result)
      {
        *a4 = v27 - v21;
        result = v46 - a2;
        if (v46 == a3)
        {
          return result;
        }
      }

LABEL_72:
      if (v21 > v13)
      {
        v41 = v43-- != 0;
        if (v41)
        {
          v21 = *(v4 + 4 * (v21 & v24));
          if (v21 >= v12)
          {
            continue;
          }
        }
      }

      return result;
    }
  }

  v36 = v23 - 1;
  result = 3;
  do
  {
    v37 = (v7 + v21);
    if (*(v37 + result - 3) == *&v20[result])
    {
      v38 = 4 * (*v37 == *a2);
      v39 = &v37[v38 / 4];
      v40 = &a2[v38];
      if (&a2[v38] < v26 && *v39 == *v40)
      {
        ++v39;
        ++v40;
      }

      if (v40 < a3 && *v39 == *v40)
      {
        v40 = (v40 + 1);
      }

      if (v40 - a2 > result)
      {
        *a4 = v27 - v21;
        result = v40 - a2;
        if (v40 == a3)
        {
          break;
        }
      }
    }

    if (v21 <= v13)
    {
      break;
    }

    v41 = v36-- != 0;
    if (!v41)
    {
      break;
    }

    v21 = *(v4 + 4 * (v21 & v24));
  }

  while (v21 >= v12);
  return result;
}

unint64_t ZSTD_HcFindBestMatch_noDict_5(uint64_t a1, unsigned __int16 *a2, unsigned __int16 *a3, void *a4)
{
  v4 = *(a1 + 128);
  v5 = *(a1 + 260);
  v6 = 1 << v5;
  v7 = *(a1 + 8);
  v8 = a2 - v7;
  v9 = 1 << *(a1 + 256);
  v10 = *(a1 + 44);
  if (a2 - v7 - *(a1 + 28) > v9 && *(a1 + 40) == 0)
  {
    v12 = a2 - v7 - v9;
  }

  else
  {
    v12 = *(a1 + 28);
  }

  v13 = v8 - v6;
  if (v8 < v6)
  {
    v13 = 0;
  }

  v14 = *(a1 + 268);
  v15 = *(a1 + 112);
  v16 = ~(-1 << v5);
  v17 = 64 - *(a1 + 264);
  if (*(a1 + 300))
  {
    if (v10 < v8)
    {
      v18 = (0xCF1BBCDCBB000000 * *(v7 + v10)) >> v17;
      *(v4 + 4 * (v10 & v16)) = *(v15 + 4 * v18);
      *(v15 + 4 * v18) = v10;
    }
  }

  else if (v10 < v8)
  {
    do
    {
      v19 = (0xCF1BBCDCBB000000 * *(v7 + v10)) >> v17;
      *(v4 + 4 * (v10 & v16)) = *(v15 + 4 * v19);
      *(v15 + 4 * v19) = v10++;
    }

    while (v8 != v10);
  }

  v21 = a2 - 3;
  v20 = *a2;
  *(a1 + 44) = v8;
  v22 = *(v15 + 4 * ((0xCF1BBCDCBB000000 * v20) >> v17));
  if (v22 < v12)
  {
    return 3;
  }

  v24 = 1 << v14;
  v25 = v6 - 1;
  v26 = a3 - 3;
  v27 = a3 - 1;
  v28 = v8 + 3;
  if ((a3 - 7) > a2)
  {
    v29 = 3;
    while (1)
    {
      v30 = (v7 + v22);
      if (*(v30 + v29 - 3) != *&v21[v29])
      {
        goto LABEL_35;
      }

      v31 = *v30;
      if (v31 == *a2)
      {
        break;
      }

      result = __clz(__rbit64(*a2 ^ v31)) >> 3;
      if (result <= v29)
      {
        goto LABEL_35;
      }

LABEL_34:
      *a4 = v28 - v22;
      v29 = result;
      if ((a2 + result) == a3)
      {
        return result;
      }

LABEL_35:
      if (v22 <= v13)
      {
        return v29;
      }

      if (!--v24)
      {
        return v29;
      }

      v22 = *(v4 + 4 * (v22 & v25));
      result = v29;
      if (v22 < v12)
      {
        return result;
      }
    }

    v32 = (v7 + 8 + v22);
    v33 = a2 + 4;
    while (1)
    {
      v34 = v33;
      if (v33 >= (a3 - 7))
      {
        break;
      }

      v36 = *v32;
      v32 += 4;
      v35 = v36;
      v33 += 4;
      if (v36 != *v34)
      {
        v34 = (v34 + (__clz(__rbit64(*v34 ^ v35)) >> 3));
        goto LABEL_33;
      }
    }

    if (v33 >= v26)
    {
      if (v33 >= v27)
      {
        goto LABEL_30;
      }
    }

    else
    {
      if (*v32 == *v33)
      {
        v32 += 2;
        v34 = v33 + 2;
      }

      if (v34 >= v27)
      {
LABEL_30:
        if (v34 >= a3)
        {
          goto LABEL_33;
        }

        goto LABEL_31;
      }
    }

    if (*v32 == *v34)
    {
      ++v32;
      ++v34;
    }

    if (v34 >= a3)
    {
LABEL_33:
      result = v34 - a2;
      if (result <= v29)
      {
        goto LABEL_35;
      }

      goto LABEL_34;
    }

LABEL_31:
    if (*v32 == *v34)
    {
      v34 = (v34 + 1);
    }

    goto LABEL_33;
  }

  v37 = v24 - 1;
  result = 3;
  if (v26 <= a2)
  {
    while (1)
    {
      v43 = (v7 + v22);
      if (*(v43 + result - 3) != *&v21[result])
      {
        goto LABEL_68;
      }

      if (v27 <= a2)
      {
        v45 = a2;
        if (a2 >= a3)
        {
          goto LABEL_66;
        }
      }

      else
      {
        v44 = *v43 == *a2;
        v43 = (v43 + v44 * 2);
        v45 = &a2[v44];
        if (v45 >= a3)
        {
          goto LABEL_66;
        }
      }

      if (*v43 == *v45)
      {
        ++v45;
      }

LABEL_66:
      if (v45 - a2 > result)
      {
        *a4 = v28 - v22;
        result = v45 - a2;
        if (v45 == a3)
        {
          return result;
        }
      }

LABEL_68:
      if (v22 > v13)
      {
        v42 = v37-- != 0;
        if (v42)
        {
          v22 = *(v4 + 4 * (v22 & v25));
          if (v22 >= v12)
          {
            continue;
          }
        }
      }

      return result;
    }
  }

  do
  {
    v38 = (v7 + v22);
    if (*(v38 + result - 3) == *&v21[result])
    {
      v39 = 2 * (*v38 == *a2);
      v40 = &v38[v39 / 2];
      v41 = &a2[v39];
      if (&a2[v39] < v27 && *v40 == *v41)
      {
        ++v40;
        ++v41;
      }

      if (v41 < a3 && *v40 == *v41)
      {
        v41 = (v41 + 1);
      }

      if (v41 - a2 > result)
      {
        *a4 = v28 - v22;
        result = v41 - a2;
        if (v41 == a3)
        {
          break;
        }
      }
    }

    if (v22 <= v13)
    {
      break;
    }

    v42 = v37-- != 0;
    if (!v42)
    {
      break;
    }

    v22 = *(v4 + 4 * (v22 & v25));
  }

  while (v22 >= v12);
  return result;
}

unint64_t ZSTD_HcFindBestMatch_noDict_6(uint64_t a1, unsigned __int16 *a2, unsigned __int16 *a3, void *a4)
{
  v4 = *(a1 + 128);
  v5 = *(a1 + 260);
  v6 = 1 << v5;
  v7 = *(a1 + 8);
  v8 = a2 - v7;
  v9 = 1 << *(a1 + 256);
  v10 = *(a1 + 44);
  if (a2 - v7 - *(a1 + 28) > v9 && *(a1 + 40) == 0)
  {
    v12 = a2 - v7 - v9;
  }

  else
  {
    v12 = *(a1 + 28);
  }

  v13 = v8 - v6;
  if (v8 < v6)
  {
    v13 = 0;
  }

  v14 = *(a1 + 268);
  v15 = *(a1 + 112);
  v16 = ~(-1 << v5);
  v17 = 64 - *(a1 + 264);
  if (*(a1 + 300))
  {
    if (v10 < v8)
    {
      v18 = (0xCF1BBCDCBF9B0000 * *(v7 + v10)) >> v17;
      *(v4 + 4 * (v10 & v16)) = *(v15 + 4 * v18);
      *(v15 + 4 * v18) = v10;
    }
  }

  else if (v10 < v8)
  {
    do
    {
      v19 = (0xCF1BBCDCBF9B0000 * *(v7 + v10)) >> v17;
      *(v4 + 4 * (v10 & v16)) = *(v15 + 4 * v19);
      *(v15 + 4 * v19) = v10++;
    }

    while (v8 != v10);
  }

  v21 = a2 - 3;
  v20 = *a2;
  *(a1 + 44) = v8;
  v22 = *(v15 + 4 * ((0xCF1BBCDCBF9B0000 * v20) >> v17));
  if (v22 < v12)
  {
    return 3;
  }

  v24 = 1 << v14;
  v25 = v6 - 1;
  v26 = a3 - 3;
  v27 = a3 - 1;
  v28 = v8 + 3;
  if ((a3 - 7) > a2)
  {
    v29 = 3;
    while (1)
    {
      v30 = (v7 + v22);
      if (*(v30 + v29 - 3) != *&v21[v29])
      {
        goto LABEL_35;
      }

      v31 = *v30;
      if (v31 == *a2)
      {
        break;
      }

      result = __clz(__rbit64(*a2 ^ v31)) >> 3;
      if (result <= v29)
      {
        goto LABEL_35;
      }

LABEL_34:
      *a4 = v28 - v22;
      v29 = result;
      if ((a2 + result) == a3)
      {
        return result;
      }

LABEL_35:
      if (v22 <= v13)
      {
        return v29;
      }

      if (!--v24)
      {
        return v29;
      }

      v22 = *(v4 + 4 * (v22 & v25));
      result = v29;
      if (v22 < v12)
      {
        return result;
      }
    }

    v32 = (v7 + 8 + v22);
    v33 = a2 + 4;
    while (1)
    {
      v34 = v33;
      if (v33 >= (a3 - 7))
      {
        break;
      }

      v36 = *v32;
      v32 += 4;
      v35 = v36;
      v33 += 4;
      if (v36 != *v34)
      {
        v34 = (v34 + (__clz(__rbit64(*v34 ^ v35)) >> 3));
        goto LABEL_33;
      }
    }

    if (v33 >= v26)
    {
      if (v33 >= v27)
      {
        goto LABEL_30;
      }
    }

    else
    {
      if (*v32 == *v33)
      {
        v32 += 2;
        v34 = v33 + 2;
      }

      if (v34 >= v27)
      {
LABEL_30:
        if (v34 >= a3)
        {
          goto LABEL_33;
        }

        goto LABEL_31;
      }
    }

    if (*v32 == *v34)
    {
      ++v32;
      ++v34;
    }

    if (v34 >= a3)
    {
LABEL_33:
      result = v34 - a2;
      if (result <= v29)
      {
        goto LABEL_35;
      }

      goto LABEL_34;
    }

LABEL_31:
    if (*v32 == *v34)
    {
      v34 = (v34 + 1);
    }

    goto LABEL_33;
  }

  v37 = v24 - 1;
  result = 3;
  if (v26 <= a2)
  {
    while (1)
    {
      v43 = (v7 + v22);
      if (*(v43 + result - 3) != *&v21[result])
      {
        goto LABEL_68;
      }

      if (v27 <= a2)
      {
        v45 = a2;
        if (a2 >= a3)
        {
          goto LABEL_66;
        }
      }

      else
      {
        v44 = *v43 == *a2;
        v43 = (v43 + v44 * 2);
        v45 = &a2[v44];
        if (v45 >= a3)
        {
          goto LABEL_66;
        }
      }

      if (*v43 == *v45)
      {
        ++v45;
      }

LABEL_66:
      if (v45 - a2 > result)
      {
        *a4 = v28 - v22;
        result = v45 - a2;
        if (v45 == a3)
        {
          return result;
        }
      }

LABEL_68:
      if (v22 > v13)
      {
        v42 = v37-- != 0;
        if (v42)
        {
          v22 = *(v4 + 4 * (v22 & v25));
          if (v22 >= v12)
          {
            continue;
          }
        }
      }

      return result;
    }
  }

  do
  {
    v38 = (v7 + v22);
    if (*(v38 + result - 3) == *&v21[result])
    {
      v39 = 2 * (*v38 == *a2);
      v40 = &v38[v39 / 2];
      v41 = &a2[v39];
      if (&a2[v39] < v27 && *v40 == *v41)
      {
        ++v40;
        ++v41;
      }

      if (v41 < a3 && *v40 == *v41)
      {
        v41 = (v41 + 1);
      }

      if (v41 - a2 > result)
      {
        *a4 = v28 - v22;
        result = v41 - a2;
        if (v41 == a3)
        {
          break;
        }
      }
    }

    if (v22 <= v13)
    {
      break;
    }

    v42 = v37-- != 0;
    if (!v42)
    {
      break;
    }

    v22 = *(v4 + 4 * (v22 & v25));
  }

  while (v22 >= v12);
  return result;
}

unint64_t ZSTD_compressBlock_greedy_dictMatchState(uint64_t a1, uint64_t a2, unsigned int *a3, unsigned __int8 *a4, uint64_t a5)
{
  v5 = a4;
  v6 = &a4[a5];
  v7 = &a4[a5 - 8];
  v8 = *(a1 + 8);
  v9 = *(a1 + 24);
  v10 = *(a1 + 272);
  if (v10 >= 6)
  {
    v10 = 6;
  }

  if (v10 <= 4)
  {
    v11 = 4;
  }

  else
  {
    v11 = v10;
  }

  v12 = *a3;
  v13 = a3[1];
  v14 = *(a1 + 248);
  v16 = *v14;
  v15 = *(v14 + 8);
  v102 = (v8 + v9);
  v94 = v15 + *(v14 + 24);
  if (v5 - (v8 + v9) - v94 + *v14)
  {
    v17 = v5;
  }

  else
  {
    v17 = (v5 + 1);
  }

  *(a1 + 300) = 0;
  if (v17 < v7)
  {
    v19 = a1;
    v95 = v11;
    v93 = a3;
    v20 = v6 - 7;
    v96 = v9 + v15 - v16;
    v99 = v7;
    v97 = v16;
    v98 = v15;
    v101 = v15 - v96;
    while (1)
    {
      v22 = (v17 - v8 - v12 + 1);
      v23 = v15 + v22 - v96;
      if (v22 >= v9)
      {
        v23 = v8 + v22;
      }

      if ((v22 - v9) <= 0xFFFFFFFC && (v24 = (v17 + 1), *v23 == *(v17 + 1)))
      {
        v25 = (v22 >= v9 ? v6 : v16);
        v26 = ZSTD_count_2segments((v17 + 5), (v23 + 4), v6, v25, v102);
        v28 = v9 + v8 + 8;
        v27 = (v6 - 32);
        v29 = v99;
        BestMatch_dictMatchState_6 = v26 + 4;
        v31 = 1;
      }

      else
      {
        v103 = 999999999;
        if (v95 == 6)
        {
          BestMatch_dictMatchState_6 = ZSTD_HcFindBestMatch_dictMatchState_6(v19, v17, v6, &v103);
        }

        else if (v95 == 5)
        {
          BestMatch_dictMatchState_6 = ZSTD_HcFindBestMatch_dictMatchState_5(v19, v17, v6, &v103);
        }

        else
        {
          BestMatch_dictMatchState_6 = ZSTD_HcFindBestMatch_dictMatchState_4(v19, v17, v6, &v103);
        }

        v29 = v99;
        v28 = v9 + v8 + 8;
        v27 = (v6 - 32);
        if (BestMatch_dictMatchState_6 <= 3)
        {
          v21 = v17 - v5;
          v17 += ((v17 - v5) >> 8) + 1;
          v19 = a1;
          *(a1 + 300) = v21 > 0x7FF;
          v16 = v97;
          v15 = v98;
          goto LABEL_12;
        }

        v31 = v103;
        if (v103 >= 4)
        {
          v32 = v17 - v8 - v103 + 3;
          v33 = v8 + v9;
          if (v9 <= v32)
          {
            v34 = v8;
          }

          else
          {
            v33 = v94;
            v34 = v101;
          }

          if (v17 > v5 && v34 + v32 > v33)
          {
            v35 = (v34 + v32 - 1);
            v36 = (v17 - 1);
            while (*v36 == *v35)
            {
              ++BestMatch_dictMatchState_6;
              v37 = v36 - 1;
              if (v36 > v5)
              {
                --v36;
                if (v35-- > v33)
                {
                  continue;
                }
              }

              v17 = (v37 + 1);
              goto LABEL_39;
            }

            v17 = (v36 + 1);
          }

LABEL_39:
          v13 = v12;
          v12 = (v103 - 3);
        }

        v24 = v17;
      }

      v39 = v24 - v5;
      v40 = *(a2 + 24);
      if (v24 > v27)
      {
        break;
      }

      *v40 = *v5;
      v47 = *(a2 + 24);
      v19 = a1;
      v16 = v97;
      v15 = v98;
      if (v39 > 0x10)
      {
        *(v47 + 16) = *(v5 + 1);
        if (v39 >= 33)
        {
          v48 = v47 + v39;
          v49 = (v47 + 32);
          v50 = (v5 + 48);
          do
          {
            *v49 = *(v50 - 1);
            v51 = *v50;
            v50 += 2;
            v49[1] = v51;
            v49 += 2;
          }

          while (v49 < v48);
        }

        goto LABEL_70;
      }

      *(a2 + 24) = v47 + v39;
      v52 = *(a2 + 8);
LABEL_72:
      *(v52 + 4) = v39;
      *v52 = v31;
      if (BestMatch_dictMatchState_6 - 3 >= 0x10000)
      {
        v65 = (v52 - *a2) >> 3;
        *(a2 + 72) = 2;
        *(a2 + 76) = v65;
      }

      *(v52 + 6) = BestMatch_dictMatchState_6 - 3;
      v66 = v52 + 8;
      *(a2 + 8) = v52 + 8;
      if (*(v19 + 300))
      {
        *(v19 + 300) = 0;
      }

      v5 = &v24[BestMatch_dictMatchState_6];
      if (&v24[BestMatch_dictMatchState_6] > v29)
      {
        v17 = &v24[BestMatch_dictMatchState_6];
        goto LABEL_12;
      }

      v67 = v12;
      v68 = v13;
      while (1)
      {
        v12 = v68;
        v68 = v67;
        v69 = (v5 - v8 - v12);
        v70 = v69 >= v9 ? v8 : v101;
        if ((v69 - v9) > 0xFFFFFFFC)
        {
          break;
        }

        v71 = v70 + v69;
        if (*(v70 + v69) != *v5)
        {
          break;
        }

        if (v69 >= v9)
        {
          v72 = v6;
        }

        else
        {
          v72 = v16;
        }

        v73 = (v5 + 4);
        v74 = (v71 + 4);
        v75 = v72 + v5 - v71;
        if (v75 >= v6)
        {
          v75 = v6;
        }

        if (v75 - 7 <= v73)
        {
          v76 = v74;
          v78 = v5 + 4;
        }

        else
        {
          if (*v74 != *v73)
          {
            v81 = __clz(__rbit64(*v73 ^ *v74)) >> 3;
            goto LABEL_108;
          }

          v76 = (v70 + v69 + 12);
          v77 = (v5 + 12);
          while (1)
          {
            v78 = v77;
            if (v77 >= (v75 - 7))
            {
              break;
            }

            v80 = *v76;
            v76 += 4;
            v79 = v80;
            v77 += 8;
            if (v80 != *v78)
            {
              v81 = v78 + (__clz(__rbit64(*v78 ^ v79)) >> 3) - v73;
              goto LABEL_108;
            }
          }
        }

        if (v78 < (v75 - 3) && *v76 == *v78)
        {
          v76 += 2;
          v78 = (v78 + 4);
        }

        if (v78 < (v75 - 1) && *v76 == *v78)
        {
          ++v76;
          v78 = (v78 + 2);
        }

        if (v78 < v75 && *v76 == *v78)
        {
          v78 = (v78 + 1);
        }

        v81 = v78 - v73;
LABEL_108:
        if ((v74 + v81) == v72)
        {
          v83 = &v73[v81];
          if (v20 > v83)
          {
            if (*v102 == *v83)
            {
              v84 = 0;
              v85 = &v5[v81];
              while (1)
              {
                v86 = &v85[v84 + 12];
                if (v86 >= v20)
                {
                  break;
                }

                v87 = *(v28 + v84);
                v88 = *v86;
                v84 += 8;
                if (v87 != v88)
                {
                  v89 = &v85[v84 + 4 + (__clz(__rbit64(v88 ^ v87)) >> 3)];
                  goto LABEL_131;
                }
              }

              v90 = (v28 + v84);
              v89 = &v5[v81 + 12 + v84];
LABEL_122:
              if (v89 < v6 - 3 && *v90 == *v89)
              {
                ++v90;
                v89 += 4;
              }

              if (v89 < v6 - 1 && *v90 == *v89)
              {
                v90 = (v90 + 2);
                v89 += 2;
              }

              if (v89 < v6 && *v90 == *v89)
              {
                ++v89;
              }

LABEL_131:
              v91 = v89 - v83;
            }

            else
            {
              v91 = __clz(__rbit64(*v83 ^ *v102)) >> 3;
            }

            v81 += v91;
            if (v5 > v27)
            {
              goto LABEL_111;
            }

LABEL_110:
            **(a2 + 24) = *v5;
            v66 = *(a2 + 8);
            goto LABEL_111;
          }

          v90 = (v8 + v9);
          v89 = v83;
          goto LABEL_122;
        }

        if (v5 <= v27)
        {
          goto LABEL_110;
        }

LABEL_111:
        *(v66 + 4) = 0;
        *v66 = 1;
        if (v81 + 1 >= 0x10000)
        {
          v82 = (v66 - *a2) >> 3;
          *(a2 + 72) = 2;
          *(a2 + 76) = v82;
        }

        *(v66 + 6) = v81 + 1;
        v66 += 8;
        v5 += v81 + 4;
        *(a2 + 8) = v66;
        v67 = v12;
        v13 = v68;
        v17 = v5;
        if (v5 > v29)
        {
          goto LABEL_12;
        }
      }

      v13 = v12;
      v12 = v67;
      v17 = v5;
LABEL_12:
      if (v17 >= v29)
      {
        a3 = v93;
        goto LABEL_136;
      }
    }

    v19 = a1;
    v16 = v97;
    v15 = v98;
    if (v5 <= v27)
    {
      v41 = (v40 + v27 - v5);
      *v40 = *v5;
      if (v27 - v5 >= 17)
      {
        v42 = v40 + 1;
        v43 = (v5 + 32);
        do
        {
          *v42 = *(v43 - 1);
          v44 = *v43;
          v43 += 2;
          v42[1] = v44;
          v42 += 2;
        }

        while (v42 < v41);
      }

      v5 = v27;
      v40 = v41;
    }

    if (v5 < v24)
    {
      v45 = v24 - v5;
      if ((v24 - v5) < 8)
      {
        v53 = v40;
        goto LABEL_69;
      }

      if ((v40 - v5) < 0x20)
      {
        v53 = v40;
        goto LABEL_69;
      }

      if (v45 >= 0x20)
      {
        v46 = v45 & 0xFFFFFFFFFFFFFFE0;
        v54 = (v5 + 16);
        v55 = v40 + 1;
        v56 = v45 & 0xFFFFFFFFFFFFFFE0;
        do
        {
          v57 = *v54;
          *(v55 - 1) = *(v54 - 1);
          *v55 = v57;
          v54 += 2;
          v55 += 2;
          v56 -= 32;
        }

        while (v56);
        if (v45 == v46)
        {
          goto LABEL_70;
        }

        if ((v45 & 0x18) == 0)
        {
          v5 += v46;
          v53 = v40 + v46;
          do
          {
LABEL_69:
            v63 = *v5++;
            *v53++ = v63;
          }

          while (v5 != v24);
          goto LABEL_70;
        }
      }

      else
      {
        v46 = 0;
      }

      v58 = v45 & 0xFFFFFFFFFFFFFFF8;
      v53 = v40 + (v45 & 0xFFFFFFFFFFFFFFF8);
      v59 = v46 - (v45 & 0xFFFFFFFFFFFFFFF8);
      v60 = &v5[v46];
      v61 = (v40 + v46);
      do
      {
        v62 = *v60++;
        *v61++ = v62;
        v59 += 8;
      }

      while (v59);
      if (v45 != v58)
      {
        v5 += v58;
        goto LABEL_69;
      }
    }

LABEL_70:
    *(a2 + 24) += v39;
    v52 = *(a2 + 8);
    if (v39 >= 0x10000)
    {
      v64 = (v52 - *a2) >> 3;
      *(a2 + 72) = 1;
      *(a2 + 76) = v64;
    }

    goto LABEL_72;
  }

LABEL_136:
  *a3 = v12;
  a3[1] = v13;
  return v6 - v5;
}

unint64_t ZSTD_count_2segments(char *a1, void *a2, unint64_t a3, char *a4, uint64_t *a5)
{
  v6 = &a1[a4 - a2];
  if (v6 >= a3)
  {
    v6 = a3;
  }

  v7 = a2;
  v8 = a1;
  if (v6 - 7 > a1)
  {
    if (*a2 != *a1)
    {
      result = __clz(__rbit64(*a1 ^ *a2)) >> 3;
      goto LABEL_20;
    }

    v7 = (a2 + 1);
    v9 = (a1 + 8);
    while (1)
    {
      v8 = v9;
      if (v9 >= (v6 - 7))
      {
        break;
      }

      v11 = *v7;
      v7 += 4;
      v10 = v11;
      v9 += 8;
      if (v11 != *v8)
      {
        result = &v8[__clz(__rbit64(*v8 ^ v10)) >> 3] - a1;
        goto LABEL_20;
      }
    }
  }

  if (v8 < v6 - 3 && *v7 == *v8)
  {
    v7 += 2;
    v8 += 4;
  }

  if (v8 < v6 - 1 && *v7 == *v8)
  {
    ++v7;
    v8 += 2;
  }

  if (v8 < v6 && *v7 == *v8)
  {
    ++v8;
  }

  result = v8 - a1;
LABEL_20:
  if (a2 + result != a4)
  {
    return result;
  }

  v13 = &a1[result];
  if (a3 - 7 <= &a1[result])
  {
    v15 = &a1[result];
  }

  else
  {
    if (*a5 != *v13)
    {
      result += __clz(__rbit64(*v13 ^ *a5)) >> 3;
      return result;
    }

    ++a5;
    v14 = &a1[result + 8];
    while (1)
    {
      v15 = v14;
      if (v14 >= a3 - 7)
      {
        break;
      }

      v17 = *a5++;
      v16 = v17;
      v14 += 8;
      if (v17 != *v15)
      {
        v15 += __clz(__rbit64(*v15 ^ v16)) >> 3;
        goto LABEL_37;
      }
    }
  }

  if (v15 < a3 - 3 && *a5 == *v15)
  {
    a5 = (a5 + 4);
    v15 += 4;
  }

  if (v15 < a3 - 1 && *a5 == *v15)
  {
    a5 = (a5 + 2);
    v15 += 2;
  }

  if (v15 < a3 && *a5 == *v15)
  {
    ++v15;
  }

LABEL_37:
  result += v15 - v13;
  return result;
}

unint64_t ZSTD_HcFindBestMatch_dictMatchState_4(uint64_t a1, unint64_t a2, unint64_t a3, void *a4)
{
  v6 = *(a1 + 128);
  v7 = *(a1 + 260);
  v8 = 1 << v7;
  v9 = *(a1 + 8);
  v10 = a2 - v9;
  v11 = 1 << *(a1 + 256);
  v58 = *(a1 + 24);
  v12 = *(a1 + 28);
  v13 = *(a1 + 44);
  if (a2 - v9 - v12 > v11 && *(a1 + 40) == 0)
  {
    v12 = a2 - v9 - v11;
  }

  if (v10 >= v8)
  {
    v15 = v10 - v8;
  }

  else
  {
    v15 = 0;
  }

  v16 = 1 << *(a1 + 268);
  v17 = *(a1 + 248);
  v18 = *(a1 + 112);
  v19 = ~(-1 << v7);
  v20 = 32 - *(a1 + 264);
  if (*(a1 + 300))
  {
    if (v13 < v10)
    {
      v21 = (-1640531535 * *(v9 + v13)) >> v20;
      *(v6 + 4 * (v13 & v19)) = *(v18 + 4 * v21);
      *(v18 + 4 * v21) = v13;
    }
  }

  else if (v13 < v10)
  {
    do
    {
      v22 = (-1640531535 * *(v9 + v13)) >> v20;
      *(v6 + 4 * (v13 & v19)) = *(v18 + 4 * v22);
      *(v18 + 4 * v22) = v13++;
    }

    while (v10 != v13);
  }

  *(a1 + 44) = v10;
  v23 = a2 - 3;
  v24 = *a2;
  v25 = *(v18 + 4 * ((-1640531535 * *a2) >> v20));
  if (v25 < v12)
  {
    result = 3;
    goto LABEL_16;
  }

  v39 = v8 - 1;
  v40 = a3 - 3;
  v41 = a3 - 1;
  v42 = v10 + 3;
  if (a3 - 7 > a2)
  {
    result = 3;
    while (1)
    {
      v43 = (v9 + v25);
      if (*(v43 + result - 3) != *(v23 + result))
      {
        goto LABEL_49;
      }

      v44 = *v43;
      if (v44 != *a2)
      {
        v50 = __clz(__rbit64(*a2 ^ v44)) >> 3;
        if (v50 > result)
        {
          goto LABEL_48;
        }

        goto LABEL_49;
      }

      v45 = (v9 + 8 + v25);
      v46 = (a2 + 8);
      while (1)
      {
        v47 = v46;
        if (v46 >= a3 - 7)
        {
          break;
        }

        v49 = *v45;
        v45 += 8;
        v48 = v49;
        v46 += 2;
        if (v49 != *v47)
        {
          v47 = (v47 + (__clz(__rbit64(*v47 ^ v48)) >> 3));
          goto LABEL_47;
        }
      }

      if (v46 >= v40)
      {
        if (v46 >= v41)
        {
          goto LABEL_44;
        }
      }

      else
      {
        if (*v45 == *v46)
        {
          v45 += 4;
          v47 = v46 + 1;
        }

        if (v47 >= v41)
        {
LABEL_44:
          if (v47 >= a3)
          {
            goto LABEL_47;
          }

LABEL_45:
          if (*v45 == *v47)
          {
            v47 = (v47 + 1);
          }

          goto LABEL_47;
        }
      }

      if (*v45 == *v47)
      {
        v45 += 2;
        v47 = (v47 + 2);
      }

      if (v47 < a3)
      {
        goto LABEL_45;
      }

LABEL_47:
      v50 = v47 - a2;
      if (v50 > result)
      {
LABEL_48:
        *a4 = v42 - v25;
        result = v50;
        if (a2 + v50 == a3)
        {
          goto LABEL_75;
        }
      }

LABEL_49:
      if (v25 > v15)
      {
        if (--v16)
        {
          v25 = *(v6 + 4 * (v25 & v39));
          if (v25 >= v12)
          {
            continue;
          }
        }
      }

      goto LABEL_16;
    }
  }

  result = 3;
  while (1)
  {
    v51 = (v9 + v25);
    if (*(v51 + result - 3) == *(v23 + result))
    {
      break;
    }

LABEL_71:
    if (v25 > v15)
    {
      if (--v16)
      {
        v25 = *(v6 + 4 * (v25 & v39));
        if (v25 >= v12)
        {
          continue;
        }
      }
    }

    goto LABEL_16;
  }

  if (v40 <= a2)
  {
    v53 = a2;
    if (a2 >= v41)
    {
      goto LABEL_66;
    }
  }

  else
  {
    v52 = 4 * (*v51 == v24);
    v51 = (v51 + v52);
    v53 = (a2 + v52);
    if (v53 >= v41)
    {
      goto LABEL_66;
    }
  }

  if (*v51 == *v53)
  {
    v51 = (v51 + 2);
    ++v53;
  }

LABEL_66:
  if (v53 < a3 && *v51 == *v53)
  {
    v53 = (v53 + 1);
  }

  v50 = v53 - a2;
  if (v53 - a2 <= result)
  {
    goto LABEL_71;
  }

  *a4 = v42 - v25;
  result = v53 - a2;
  if (v53 != a3)
  {
    goto LABEL_71;
  }

LABEL_75:
  result = v50;
LABEL_16:
  v27 = 1 << *(v17 + 260);
  v28 = *(v17 + 8);
  v57 = *v17;
  v29 = *v17 - v28;
  if (v29 >= v27)
  {
    v30 = v29 - v27;
  }

  else
  {
    v30 = 0;
  }

  if (v16)
  {
    v31 = *(v17 + 24);
    v32 = *(*(v17 + 112) + 4 * ((-1640531535 * v24) >> -*(v17 + 264)));
    if (v32 >= v31)
    {
      v56 = *(v17 + 8);
      v33 = *(v17 + 128);
      v34 = v27 - 1;
      v54 = v10 - v58 + v29 + 3;
      v35 = v16 - 1;
      do
      {
        v36 = v28 + v32;
        if (*v36 == v24)
        {
          v59 = result;
          v37 = ZSTD_count_2segments((a2 + 4), (v36 + 4), a3, v57, (v9 + v58)) + 4;
          v28 = v56;
          result = v59;
          if (v37 > v59)
          {
            *a4 = v54 - v32;
            result = v37;
            if (a2 + v37 == a3)
            {
              break;
            }
          }
        }

        if (v32 <= v30)
        {
          break;
        }

        if (v35-- == 0)
        {
          break;
        }

        v32 = *(v33 + 4 * (v32 & v34));
      }

      while (v32 >= v31);
    }
  }

  return result;
}

unint64_t ZSTD_HcFindBestMatch_dictMatchState_5(uint64_t a1, void *a2, unint64_t a3, void *a4)
{
  v5 = *(a1 + 128);
  v6 = *(a1 + 260);
  v7 = 1 << v6;
  v8 = *(a1 + 8);
  v9 = a2 - v8;
  v10 = 1 << *(a1 + 256);
  v62 = *(a1 + 24);
  v11 = *(a1 + 28);
  v12 = *(a1 + 44);
  if (a2 - v8 - v11 > v10 && *(a1 + 40) == 0)
  {
    v11 = a2 - v8 - v10;
  }

  if (v9 >= v7)
  {
    v14 = v9 - v7;
  }

  else
  {
    v14 = 0;
  }

  v15 = 1 << *(a1 + 268);
  v16 = *(a1 + 248);
  v17 = *(a1 + 112);
  v18 = ~(-1 << v6);
  v19 = 64 - *(a1 + 264);
  if (*(a1 + 300))
  {
    if (v12 < v9)
    {
      v20 = (0xCF1BBCDCBB000000 * *(v8 + v12)) >> v19;
      *(v5 + 4 * (v12 & v18)) = *(v17 + 4 * v20);
      *(v17 + 4 * v20) = v12;
    }
  }

  else if (v12 < v9)
  {
    do
    {
      v21 = (0xCF1BBCDCBB000000 * *(v8 + v12)) >> v19;
      *(v5 + 4 * (v12 & v18)) = *(v17 + 4 * v21);
      *(v17 + 4 * v21) = v12++;
    }

    while (v9 != v12);
  }

  v23 = a2 - 3;
  v22 = *a2;
  *(a1 + 44) = v9;
  v24 = 0xCF1BBCDCBB000000 * v22;
  v25 = *(v17 + 4 * ((0xCF1BBCDCBB000000 * v22) >> v19));
  if (v25 < v11)
  {
    v26 = 3;
    goto LABEL_16;
  }

  v41 = v7 - 1;
  v42 = a3 - 3;
  v43 = a3 - 1;
  v44 = v9 + 3;
  if (a3 - 7 > a2)
  {
    v26 = 3;
    while (1)
    {
      v45 = (v8 + v25);
      if (*(v45 + v26 - 3) != *&v23[v26])
      {
        goto LABEL_49;
      }

      v46 = *v45;
      if (v46 != *a2)
      {
        v52 = __clz(__rbit64(*a2 ^ v46)) >> 3;
        if (v52 > v26)
        {
          goto LABEL_48;
        }

        goto LABEL_49;
      }

      v47 = (v8 + 8 + v25);
      v48 = a2 + 1;
      while (1)
      {
        v49 = v48;
        if (v48 >= a3 - 7)
        {
          break;
        }

        v51 = *v47;
        v47 += 8;
        v50 = v51;
        v48 += 2;
        if (v51 != *v49)
        {
          v49 = (v49 + (__clz(__rbit64(*v49 ^ v50)) >> 3));
          goto LABEL_47;
        }
      }

      if (v48 >= v42)
      {
        if (v48 >= v43)
        {
          goto LABEL_44;
        }
      }

      else
      {
        if (*v47 == *v48)
        {
          v47 += 4;
          v49 = v48 + 1;
        }

        if (v49 >= v43)
        {
LABEL_44:
          if (v49 >= a3)
          {
            goto LABEL_47;
          }

LABEL_45:
          if (*v47 == *v49)
          {
            v49 = (v49 + 1);
          }

          goto LABEL_47;
        }
      }

      if (*v47 == *v49)
      {
        v47 += 2;
        v49 = (v49 + 2);
      }

      if (v49 < a3)
      {
        goto LABEL_45;
      }

LABEL_47:
      v52 = v49 - a2;
      if (v52 > v26)
      {
LABEL_48:
        *a4 = v44 - v25;
        v26 = v52;
        if ((a2 + v52) == a3)
        {
          goto LABEL_75;
        }
      }

LABEL_49:
      if (v25 > v14)
      {
        if (--v15)
        {
          v25 = *(v5 + 4 * (v25 & v41));
          if (v25 >= v11)
          {
            continue;
          }
        }
      }

      goto LABEL_16;
    }
  }

  v26 = 3;
  while (1)
  {
    v53 = (v8 + v25);
    if (*(v53 + v26 - 3) == *&v23[v26])
    {
      break;
    }

LABEL_71:
    if (v25 > v14)
    {
      if (--v15)
      {
        v25 = *(v5 + 4 * (v25 & v41));
        if (v25 >= v11)
        {
          continue;
        }
      }
    }

    goto LABEL_16;
  }

  if (v42 <= a2)
  {
    v55 = a2;
    if (a2 >= v43)
    {
      goto LABEL_66;
    }
  }

  else
  {
    v54 = 4 * (*v53 == *a2);
    v53 = (v53 + v54);
    v55 = (a2 + v54);
    if (v55 >= v43)
    {
      goto LABEL_66;
    }
  }

  if (*v53 == *v55)
  {
    v53 = (v53 + 2);
    ++v55;
  }

LABEL_66:
  if (v55 < a3 && *v53 == *v55)
  {
    v55 = (v55 + 1);
  }

  v52 = v55 - a2;
  if (v55 - a2 <= v26)
  {
    goto LABEL_71;
  }

  *a4 = v44 - v25;
  v26 = v55 - a2;
  if (v55 != a3)
  {
    goto LABEL_71;
  }

LABEL_75:
  v26 = v52;
LABEL_16:
  v27 = 1 << *(v16 + 260);
  v28 = *(v16 + 8);
  v61 = *v16;
  v29 = *v16 - v28;
  if (v29 >= v27)
  {
    v30 = v29 - v27;
  }

  else
  {
    v30 = 0;
  }

  if (v15)
  {
    v60 = v8;
    v31 = *(v16 + 24);
    v32 = *(*(v16 + 112) + 4 * (v24 >> -*(v16 + 264)));
    if (v32 >= v31)
    {
      v33 = *(v16 + 128);
      v34 = v27 - 1;
      v35 = *a2;
      v59 = a2 + 4;
      v56 = v9 - v62 + v29 + 3;
      v36 = v15 - 1;
      do
      {
        v37 = v28 + v32;
        if (*v37 == v35)
        {
          v38 = ZSTD_count_2segments(v59, (v37 + 4), a3, v61, (v60 + v62));
          if (v38 + 4 > v26)
          {
            *a4 = v56 - v32;
            v26 = v38 + 4;
            if ((a2 + v38 + 4) == a3)
            {
              break;
            }
          }
        }

        if (v32 <= v30)
        {
          break;
        }

        if (v36-- == 0)
        {
          break;
        }

        v32 = *(v33 + 4 * (v32 & v34));
      }

      while (v32 >= v31);
    }
  }

  return v26;
}

unint64_t ZSTD_HcFindBestMatch_dictMatchState_6(uint64_t a1, void *a2, unint64_t a3, void *a4)
{
  v5 = *(a1 + 128);
  v6 = *(a1 + 260);
  v7 = 1 << v6;
  v8 = *(a1 + 8);
  v9 = a2 - v8;
  v10 = 1 << *(a1 + 256);
  v62 = *(a1 + 24);
  v11 = *(a1 + 28);
  v12 = *(a1 + 44);
  if (a2 - v8 - v11 > v10 && *(a1 + 40) == 0)
  {
    v11 = a2 - v8 - v10;
  }

  if (v9 >= v7)
  {
    v14 = v9 - v7;
  }

  else
  {
    v14 = 0;
  }

  v15 = 1 << *(a1 + 268);
  v16 = *(a1 + 248);
  v17 = *(a1 + 112);
  v18 = ~(-1 << v6);
  v19 = 64 - *(a1 + 264);
  if (*(a1 + 300))
  {
    if (v12 < v9)
    {
      v20 = (0xCF1BBCDCBF9B0000 * *(v8 + v12)) >> v19;
      *(v5 + 4 * (v12 & v18)) = *(v17 + 4 * v20);
      *(v17 + 4 * v20) = v12;
    }
  }

  else if (v12 < v9)
  {
    do
    {
      v21 = (0xCF1BBCDCBF9B0000 * *(v8 + v12)) >> v19;
      *(v5 + 4 * (v12 & v18)) = *(v17 + 4 * v21);
      *(v17 + 4 * v21) = v12++;
    }

    while (v9 != v12);
  }

  v23 = a2 - 3;
  v22 = *a2;
  *(a1 + 44) = v9;
  v24 = 0xCF1BBCDCBF9B0000 * v22;
  v25 = *(v17 + 4 * ((0xCF1BBCDCBF9B0000 * v22) >> v19));
  if (v25 < v11)
  {
    v26 = 3;
    goto LABEL_16;
  }

  v41 = v7 - 1;
  v42 = a3 - 3;
  v43 = a3 - 1;
  v44 = v9 + 3;
  if (a3 - 7 > a2)
  {
    v26 = 3;
    while (1)
    {
      v45 = (v8 + v25);
      if (*(v45 + v26 - 3) != *&v23[v26])
      {
        goto LABEL_49;
      }

      v46 = *v45;
      if (v46 != *a2)
      {
        v52 = __clz(__rbit64(*a2 ^ v46)) >> 3;
        if (v52 > v26)
        {
          goto LABEL_48;
        }

        goto LABEL_49;
      }

      v47 = (v8 + 8 + v25);
      v48 = a2 + 1;
      while (1)
      {
        v49 = v48;
        if (v48 >= a3 - 7)
        {
          break;
        }

        v51 = *v47;
        v47 += 8;
        v50 = v51;
        v48 += 2;
        if (v51 != *v49)
        {
          v49 = (v49 + (__clz(__rbit64(*v49 ^ v50)) >> 3));
          goto LABEL_47;
        }
      }

      if (v48 >= v42)
      {
        if (v48 >= v43)
        {
          goto LABEL_44;
        }
      }

      else
      {
        if (*v47 == *v48)
        {
          v47 += 4;
          v49 = v48 + 1;
        }

        if (v49 >= v43)
        {
LABEL_44:
          if (v49 >= a3)
          {
            goto LABEL_47;
          }

LABEL_45:
          if (*v47 == *v49)
          {
            v49 = (v49 + 1);
          }

          goto LABEL_47;
        }
      }

      if (*v47 == *v49)
      {
        v47 += 2;
        v49 = (v49 + 2);
      }

      if (v49 < a3)
      {
        goto LABEL_45;
      }

LABEL_47:
      v52 = v49 - a2;
      if (v52 > v26)
      {
LABEL_48:
        *a4 = v44 - v25;
        v26 = v52;
        if ((a2 + v52) == a3)
        {
          goto LABEL_75;
        }
      }

LABEL_49:
      if (v25 > v14)
      {
        if (--v15)
        {
          v25 = *(v5 + 4 * (v25 & v41));
          if (v25 >= v11)
          {
            continue;
          }
        }
      }

      goto LABEL_16;
    }
  }

  v26 = 3;
  while (1)
  {
    v53 = (v8 + v25);
    if (*(v53 + v26 - 3) == *&v23[v26])
    {
      break;
    }

LABEL_71:
    if (v25 > v14)
    {
      if (--v15)
      {
        v25 = *(v5 + 4 * (v25 & v41));
        if (v25 >= v11)
        {
          continue;
        }
      }
    }

    goto LABEL_16;
  }

  if (v42 <= a2)
  {
    v55 = a2;
    if (a2 >= v43)
    {
      goto LABEL_66;
    }
  }

  else
  {
    v54 = 4 * (*v53 == *a2);
    v53 = (v53 + v54);
    v55 = (a2 + v54);
    if (v55 >= v43)
    {
      goto LABEL_66;
    }
  }

  if (*v53 == *v55)
  {
    v53 = (v53 + 2);
    ++v55;
  }

LABEL_66:
  if (v55 < a3 && *v53 == *v55)
  {
    v55 = (v55 + 1);
  }

  v52 = v55 - a2;
  if (v55 - a2 <= v26)
  {
    goto LABEL_71;
  }

  *a4 = v44 - v25;
  v26 = v55 - a2;
  if (v55 != a3)
  {
    goto LABEL_71;
  }

LABEL_75:
  v26 = v52;
LABEL_16:
  v27 = 1 << *(v16 + 260);
  v28 = *(v16 + 8);
  v61 = *v16;
  v29 = *v16 - v28;
  if (v29 >= v27)
  {
    v30 = v29 - v27;
  }

  else
  {
    v30 = 0;
  }

  if (v15)
  {
    v60 = v8;
    v31 = *(v16 + 24);
    v32 = *(*(v16 + 112) + 4 * (v24 >> -*(v16 + 264)));
    if (v32 >= v31)
    {
      v33 = *(v16 + 128);
      v34 = v27 - 1;
      v35 = *a2;
      v59 = a2 + 4;
      v56 = v9 - v62 + v29 + 3;
      v36 = v15 - 1;
      do
      {
        v37 = v28 + v32;
        if (*v37 == v35)
        {
          v38 = ZSTD_count_2segments(v59, (v37 + 4), a3, v61, (v60 + v62));
          if (v38 + 4 > v26)
          {
            *a4 = v56 - v32;
            v26 = v38 + 4;
            if ((a2 + v38 + 4) == a3)
            {
              break;
            }
          }
        }

        if (v32 <= v30)
        {
          break;
        }

        if (v36-- == 0)
        {
          break;
        }

        v32 = *(v33 + 4 * (v32 & v34));
      }

      while (v32 >= v31);
    }
  }

  return v26;
}

unint64_t ZSTD_compressBlock_greedy_dedicatedDictSearch(uint64_t a1, uint64_t a2, unsigned int *a3, unsigned __int8 *a4, uint64_t a5)
{
  v5 = a4;
  v6 = &a4[a5];
  v7 = &a4[a5 - 8];
  v8 = *(a1 + 8);
  v9 = *(a1 + 24);
  v10 = *(a1 + 272);
  if (v10 >= 6)
  {
    v10 = 6;
  }

  if (v10 <= 4)
  {
    v11 = 4;
  }

  else
  {
    v11 = v10;
  }

  v12 = *a3;
  v13 = a3[1];
  v14 = *(a1 + 248);
  v16 = *v14;
  v15 = *(v14 + 8);
  v102 = (v8 + v9);
  v94 = v15 + *(v14 + 24);
  if (v5 - (v8 + v9) - v94 + *v14)
  {
    v17 = v5;
  }

  else
  {
    v17 = (v5 + 1);
  }

  *(a1 + 300) = 0;
  if (v17 < v7)
  {
    v19 = a1;
    v95 = v11;
    v93 = a3;
    v20 = v6 - 7;
    v96 = v9 + v15 - v16;
    v99 = v7;
    v97 = v16;
    v98 = v15;
    v101 = v15 - v96;
    while (1)
    {
      v22 = (v17 - v8 - v12 + 1);
      v23 = v15 + v22 - v96;
      if (v22 >= v9)
      {
        v23 = v8 + v22;
      }

      if ((v22 - v9) <= 0xFFFFFFFC && (v24 = (v17 + 1), *v23 == *(v17 + 1)))
      {
        v25 = (v22 >= v9 ? v6 : v16);
        v26 = ZSTD_count_2segments((v17 + 5), (v23 + 4), v6, v25, v102);
        v28 = v9 + v8 + 8;
        v27 = (v6 - 32);
        v29 = v99;
        BestMatch_dedicatedDictSearch_6 = v26 + 4;
        v31 = 1;
      }

      else
      {
        v103 = 999999999;
        if (v95 == 6)
        {
          BestMatch_dedicatedDictSearch_6 = ZSTD_HcFindBestMatch_dedicatedDictSearch_6(v19, v17, v6, &v103);
        }

        else if (v95 == 5)
        {
          BestMatch_dedicatedDictSearch_6 = ZSTD_HcFindBestMatch_dedicatedDictSearch_5(v19, v17, v6, &v103);
        }

        else
        {
          BestMatch_dedicatedDictSearch_6 = ZSTD_HcFindBestMatch_dedicatedDictSearch_4(v19, v17, v6, &v103);
        }

        v29 = v99;
        v28 = v9 + v8 + 8;
        v27 = (v6 - 32);
        if (BestMatch_dedicatedDictSearch_6 <= 3)
        {
          v21 = v17 - v5;
          v17 += ((v17 - v5) >> 8) + 1;
          v19 = a1;
          *(a1 + 300) = v21 > 0x7FF;
          v16 = v97;
          v15 = v98;
          goto LABEL_12;
        }

        v31 = v103;
        if (v103 >= 4)
        {
          v32 = v17 - v8 - v103 + 3;
          v33 = v8 + v9;
          if (v9 <= v32)
          {
            v34 = v8;
          }

          else
          {
            v33 = v94;
            v34 = v101;
          }

          if (v17 > v5 && v34 + v32 > v33)
          {
            v35 = (v34 + v32 - 1);
            v36 = (v17 - 1);
            while (*v36 == *v35)
            {
              ++BestMatch_dedicatedDictSearch_6;
              v37 = v36 - 1;
              if (v36 > v5)
              {
                --v36;
                if (v35-- > v33)
                {
                  continue;
                }
              }

              v17 = (v37 + 1);
              goto LABEL_39;
            }

            v17 = (v36 + 1);
          }

LABEL_39:
          v13 = v12;
          v12 = (v103 - 3);
        }

        v24 = v17;
      }

      v39 = v24 - v5;
      v40 = *(a2 + 24);
      if (v24 > v27)
      {
        break;
      }

      *v40 = *v5;
      v47 = *(a2 + 24);
      v19 = a1;
      v16 = v97;
      v15 = v98;
      if (v39 > 0x10)
      {
        *(v47 + 16) = *(v5 + 1);
        if (v39 >= 33)
        {
          v48 = v47 + v39;
          v49 = (v47 + 32);
          v50 = (v5 + 48);
          do
          {
            *v49 = *(v50 - 1);
            v51 = *v50;
            v50 += 2;
            v49[1] = v51;
            v49 += 2;
          }

          while (v49 < v48);
        }

        goto LABEL_70;
      }

      *(a2 + 24) = v47 + v39;
      v52 = *(a2 + 8);
LABEL_72:
      *(v52 + 4) = v39;
      *v52 = v31;
      if (BestMatch_dedicatedDictSearch_6 - 3 >= 0x10000)
      {
        v65 = (v52 - *a2) >> 3;
        *(a2 + 72) = 2;
        *(a2 + 76) = v65;
      }

      *(v52 + 6) = BestMatch_dedicatedDictSearch_6 - 3;
      v66 = v52 + 8;
      *(a2 + 8) = v52 + 8;
      if (*(v19 + 300))
      {
        *(v19 + 300) = 0;
      }

      v5 = &v24[BestMatch_dedicatedDictSearch_6];
      if (&v24[BestMatch_dedicatedDictSearch_6] > v29)
      {
        v17 = &v24[BestMatch_dedicatedDictSearch_6];
        goto LABEL_12;
      }

      v67 = v12;
      v68 = v13;
      while (1)
      {
        v12 = v68;
        v68 = v67;
        v69 = (v5 - v8 - v12);
        v70 = v69 >= v9 ? v8 : v101;
        if ((v69 - v9) > 0xFFFFFFFC)
        {
          break;
        }

        v71 = v70 + v69;
        if (*(v70 + v69) != *v5)
        {
          break;
        }

        if (v69 >= v9)
        {
          v72 = v6;
        }

        else
        {
          v72 = v16;
        }

        v73 = (v5 + 4);
        v74 = (v71 + 4);
        v75 = v72 + v5 - v71;
        if (v75 >= v6)
        {
          v75 = v6;
        }

        if (v75 - 7 <= v73)
        {
          v76 = v74;
          v78 = v5 + 4;
        }

        else
        {
          if (*v74 != *v73)
          {
            v81 = __clz(__rbit64(*v73 ^ *v74)) >> 3;
            goto LABEL_108;
          }

          v76 = (v70 + v69 + 12);
          v77 = (v5 + 12);
          while (1)
          {
            v78 = v77;
            if (v77 >= (v75 - 7))
            {
              break;
            }

            v80 = *v76;
            v76 += 4;
            v79 = v80;
            v77 += 8;
            if (v80 != *v78)
            {
              v81 = v78 + (__clz(__rbit64(*v78 ^ v79)) >> 3) - v73;
              goto LABEL_108;
            }
          }
        }

        if (v78 < (v75 - 3) && *v76 == *v78)
        {
          v76 += 2;
          v78 = (v78 + 4);
        }

        if (v78 < (v75 - 1) && *v76 == *v78)
        {
          ++v76;
          v78 = (v78 + 2);
        }

        if (v78 < v75 && *v76 == *v78)
        {
          v78 = (v78 + 1);
        }

        v81 = v78 - v73;
LABEL_108:
        if ((v74 + v81) == v72)
        {
          v83 = &v73[v81];
          if (v20 > v83)
          {
            if (*v102 == *v83)
            {
              v84 = 0;
              v85 = &v5[v81];
              while (1)
              {
                v86 = &v85[v84 + 12];
                if (v86 >= v20)
                {
                  break;
                }

                v87 = *(v28 + v84);
                v88 = *v86;
                v84 += 8;
                if (v87 != v88)
                {
                  v89 = &v85[v84 + 4 + (__clz(__rbit64(v88 ^ v87)) >> 3)];
                  goto LABEL_131;
                }
              }

              v90 = (v28 + v84);
              v89 = &v5[v81 + 12 + v84];
LABEL_122:
              if (v89 < v6 - 3 && *v90 == *v89)
              {
                ++v90;
                v89 += 4;
              }

              if (v89 < v6 - 1 && *v90 == *v89)
              {
                v90 = (v90 + 2);
                v89 += 2;
              }

              if (v89 < v6 && *v90 == *v89)
              {
                ++v89;
              }

LABEL_131:
              v91 = v89 - v83;
            }

            else
            {
              v91 = __clz(__rbit64(*v83 ^ *v102)) >> 3;
            }

            v81 += v91;
            if (v5 > v27)
            {
              goto LABEL_111;
            }

LABEL_110:
            **(a2 + 24) = *v5;
            v66 = *(a2 + 8);
            goto LABEL_111;
          }

          v90 = (v8 + v9);
          v89 = v83;
          goto LABEL_122;
        }

        if (v5 <= v27)
        {
          goto LABEL_110;
        }

LABEL_111:
        *(v66 + 4) = 0;
        *v66 = 1;
        if (v81 + 1 >= 0x10000)
        {
          v82 = (v66 - *a2) >> 3;
          *(a2 + 72) = 2;
          *(a2 + 76) = v82;
        }

        *(v66 + 6) = v81 + 1;
        v66 += 8;
        v5 += v81 + 4;
        *(a2 + 8) = v66;
        v67 = v12;
        v13 = v68;
        v17 = v5;
        if (v5 > v29)
        {
          goto LABEL_12;
        }
      }

      v13 = v12;
      v12 = v67;
      v17 = v5;
LABEL_12:
      if (v17 >= v29)
      {
        a3 = v93;
        goto LABEL_136;
      }
    }

    v19 = a1;
    v16 = v97;
    v15 = v98;
    if (v5 <= v27)
    {
      v41 = (v40 + v27 - v5);
      *v40 = *v5;
      if (v27 - v5 >= 17)
      {
        v42 = v40 + 1;
        v43 = (v5 + 32);
        do
        {
          *v42 = *(v43 - 1);
          v44 = *v43;
          v43 += 2;
          v42[1] = v44;
          v42 += 2;
        }

        while (v42 < v41);
      }

      v5 = v27;
      v40 = v41;
    }

    if (v5 < v24)
    {
      v45 = v24 - v5;
      if ((v24 - v5) < 8)
      {
        v53 = v40;
        goto LABEL_69;
      }

      if ((v40 - v5) < 0x20)
      {
        v53 = v40;
        goto LABEL_69;
      }

      if (v45 >= 0x20)
      {
        v46 = v45 & 0xFFFFFFFFFFFFFFE0;
        v54 = (v5 + 16);
        v55 = v40 + 1;
        v56 = v45 & 0xFFFFFFFFFFFFFFE0;
        do
        {
          v57 = *v54;
          *(v55 - 1) = *(v54 - 1);
          *v55 = v57;
          v54 += 2;
          v55 += 2;
          v56 -= 32;
        }

        while (v56);
        if (v45 == v46)
        {
          goto LABEL_70;
        }

        if ((v45 & 0x18) == 0)
        {
          v5 += v46;
          v53 = v40 + v46;
          do
          {
LABEL_69:
            v63 = *v5++;
            *v53++ = v63;
          }

          while (v5 != v24);
          goto LABEL_70;
        }
      }

      else
      {
        v46 = 0;
      }

      v58 = v45 & 0xFFFFFFFFFFFFFFF8;
      v53 = v40 + (v45 & 0xFFFFFFFFFFFFFFF8);
      v59 = v46 - (v45 & 0xFFFFFFFFFFFFFFF8);
      v60 = &v5[v46];
      v61 = (v40 + v46);
      do
      {
        v62 = *v60++;
        *v61++ = v62;
        v59 += 8;
      }

      while (v59);
      if (v45 != v58)
      {
        v5 += v58;
        goto LABEL_69;
      }
    }

LABEL_70:
    *(a2 + 24) += v39;
    v52 = *(a2 + 8);
    if (v39 >= 0x10000)
    {
      v64 = (v52 - *a2) >> 3;
      *(a2 + 72) = 1;
      *(a2 + 76) = v64;
    }

    goto LABEL_72;
  }

LABEL_136:
  *a3 = v12;
  a3[1] = v13;
  return v6 - v5;
}

unint64_t ZSTD_HcFindBestMatch_dedicatedDictSearch_4(uint64_t a1, unint64_t a2, unint64_t a3, void *a4)
{
  v5 = *(a1 + 128);
  v6 = *(a1 + 260);
  v7 = 1 << v6;
  v8 = *(a1 + 8);
  v9 = a2 - v8;
  v10 = 1 << *(a1 + 256);
  v96 = *(a1 + 24);
  if (a2 - v8 - *(a1 + 28) > v10 && *(a1 + 40) == 0)
  {
    v12 = a2 - v8 - v10;
  }

  else
  {
    v12 = *(a1 + 28);
  }

  if (v9 >= v7)
  {
    v13 = v9 - v7;
  }

  else
  {
    v13 = 0;
  }

  v14 = 1 << *(a1 + 268);
  v15 = *(a1 + 248);
  v16 = (-1640531535 * *a2) >> (34 - *(v15 + 264));
  v17 = *(v15 + 112);
  _X10 = v17 + 16 * v16;
  __asm { PRFM            #0, [X10] }

  v23 = *(a1 + 112);
  v24 = ~(-1 << v6);
  v25 = *(a1 + 44);
  v26 = 32 - *(a1 + 264);
  if (*(a1 + 300))
  {
    if (v25 < v9)
    {
      v27 = (-1640531535 * *(v8 + v25)) >> v26;
      *(v5 + 4 * (v25 & v24)) = *(v23 + 4 * v27);
      *(v23 + 4 * v27) = v25;
    }
  }

  else if (v25 < v9)
  {
    do
    {
      v28 = (-1640531535 * *(v8 + v25)) >> v26;
      *(v5 + 4 * (v25 & v24)) = *(v23 + 4 * v28);
      *(v23 + 4 * v28) = v25++;
    }

    while (v9 != v25);
  }

  v29 = 4 * v16;
  *(a1 + 44) = v9;
  v30 = *a2;
  v31 = *(v23 + 4 * ((-1640531535 * *a2) >> v26));
  if (v31 < v12)
  {
    v32 = 3;
    goto LABEL_17;
  }

  v55 = v7 - 1;
  v56 = a3 - 7;
  v57 = a3 - 1;
  v32 = 3;
  while (1)
  {
    v58 = (v8 + v31);
    if (*&v58[v32 - 3] != *(a2 - 3 + v32))
    {
      goto LABEL_62;
    }

    if (v56 <= a2)
    {
      v61 = a2;
      goto LABEL_46;
    }

    v59 = *v58;
    if (v59 != *a2)
    {
      break;
    }

    v58 = (v8 + 8 + v31);
    v60 = (a2 + 8);
    while (1)
    {
      v61 = v60;
      if (v60 >= v56)
      {
        break;
      }

      v63 = *v58;
      v58 += 8;
      v62 = v63;
      ++v60;
      if (v63 != *v61)
      {
        v64 = v61 + (__clz(__rbit64(*v61 ^ v62)) >> 3) - a2;
        if (v64 > v32)
        {
          goto LABEL_61;
        }

        goto LABEL_62;
      }
    }

LABEL_46:
    if (v61 < a3 - 3)
    {
      if (*v58 == *v61)
      {
        v58 += 4;
        v61 = (v61 + 4);
      }

      if (v61 >= v57)
      {
LABEL_48:
        if (v61 >= a3)
        {
          goto LABEL_51;
        }

LABEL_49:
        if (*v58 == *v61)
        {
          v61 = (v61 + 1);
        }

        goto LABEL_51;
      }
    }

    else if (v61 >= v57)
    {
      goto LABEL_48;
    }

    if (*v58 == *v61)
    {
      v58 += 2;
      v61 = (v61 + 2);
    }

    if (v61 < a3)
    {
      goto LABEL_49;
    }

LABEL_51:
    v64 = v61 - a2;
    if (v61 - a2 > v32)
    {
      goto LABEL_61;
    }

LABEL_62:
    if (v31 > v13)
    {
      if (--v14)
      {
        v31 = *(v5 + 4 * (v31 & v55));
        if (v31 >= v12)
        {
          continue;
        }
      }
    }

    goto LABEL_17;
  }

  v64 = __clz(__rbit64(*a2 ^ v59)) >> 3;
  if (v64 <= v32)
  {
    goto LABEL_62;
  }

LABEL_61:
  *a4 = v9 + 3 - v31;
  v32 = v64;
  if (a2 + v64 != a3)
  {
    goto LABEL_62;
  }

  v32 = v64;
LABEL_17:
  v34 = *v15;
  v33 = *(v15 + 8);
  v35 = *v15 - v33 - v96;
  v36 = (v17 + 4 * v29);
  v37 = *v36;
  _X9 = v33 + v37;
  __asm { PRFM            #0, [X9] }

  v41 = *(_X10 + 4);
  v40 = *(_X10 + 8);
  _X1 = v33 + v41;
  __asm { PRFM            #0, [X1] }

  _X16 = v33 + v40;
  __asm { PRFM            #0, [X16] }

  if (v14 >= 3)
  {
    v46 = 3;
  }

  else
  {
    v46 = v14;
  }

  v47 = v36[3];
  _X25 = (*(v15 + 128) + 4 * (v47 >> 8));
  __asm { PRFM            #0, [X25] }

  v95 = a3;
  if (!v14)
  {
    v46 = 0;
    goto LABEL_67;
  }

  if (v37)
  {
    v84 = v9 + v35 + 3;
    if (*_X9 != v30 || (v77 = v33 + v41, v78 = v47, v88 = v46, v91 = *v15 - v33 - v96, v85 = *(_X10 + 8), v80 = *(_X10 + 4), v82 = v33 + v40, v50 = ZSTD_count_2segments((a2 + 4), (_X9 + 4), a3, v34, (v8 + v96)), _X1 = v77, LOBYTE(v47) = v78, LODWORD(v41) = v80, _X16 = v82, LODWORD(v40) = v85, v46 = v88, v35 = v91, a3 = v95, v50 + 4 <= v32) || (*a4 = (v84 - v37), v32 = v50 + 4, a2 + v50 + 4 != v95))
    {
      if (v14 == 1)
      {
        goto LABEL_67;
      }

      if (v41)
      {
        if (*_X1 != v30 || (v89 = v46, v92 = v35, v51 = v47, v86 = v40, v81 = v41, v83 = _X16, v52 = ZSTD_count_2segments((a2 + 4), (_X1 + 4), a3, v34, (v8 + v96)), _X16 = v83, LODWORD(v40) = v86, v46 = v89, v35 = v92, LOBYTE(v47) = v51, a3 = v95, v52 + 4 <= v32) || (*a4 = (v84 - v81), v32 = v52 + 4, a2 + v52 + 4 != v95))
        {
          if (v14 == 2)
          {
            goto LABEL_67;
          }

          if (v40)
          {
            if (*_X16 == v30)
            {
              v87 = v40;
              v90 = v46;
              v93 = v35;
              v79 = v47;
              v53 = a3;
              v54 = ZSTD_count_2segments((a2 + 4), (_X16 + 4), a3, v34, (v8 + v96));
              if (v54 + 4 <= v32)
              {
                a3 = v53;
                v46 = v90;
                v35 = v93;
                LOBYTE(v47) = v79;
              }

              else
              {
                *a4 = (v84 - v87);
                v32 = v54 + 4;
                a3 = v53;
                v46 = v90;
                v35 = v93;
                LOBYTE(v47) = v79;
                if (a2 + v54 + 4 == v53)
                {
                  return v32;
                }
              }
            }

LABEL_67:
            if (v14 - v46 >= v47)
            {
              v65 = v47;
            }

            else
            {
              v65 = v14 - v46;
            }

            if (v65)
            {
              v66 = _X25;
              v67 = v65;
              do
              {
                v68 = *v66++;
                _X10 = v33 + v68;
                __asm { PRFM            #0, [X10] }

                --v67;
              }

              while (v67);
              v71 = v9 + v35 + 3;
              do
              {
                v73 = *_X25++;
                v72 = v73;
                v74 = v33 + v73;
                if (*v74 == v30)
                {
                  v75 = ZSTD_count_2segments((a2 + 4), (v74 + 4), a3, v34, (v8 + v96));
                  a3 = v95;
                  if (v75 + 4 > v32)
                  {
                    *a4 = v71 - v72;
                    v32 = v75 + 4;
                    if (a2 + v75 + 4 == v95)
                    {
                      break;
                    }
                  }
                }

                LODWORD(v65) = v65 - 1;
              }

              while (v65);
            }
          }
        }
      }
    }
  }

  return v32;
}

unint64_t ZSTD_HcFindBestMatch_dedicatedDictSearch_5(uint64_t a1, unint64_t a2, unint64_t a3, void *a4)
{
  v5 = *(a1 + 128);
  v6 = *(a1 + 260);
  v7 = 1 << v6;
  v8 = *(a1 + 8);
  v9 = a2 - v8;
  v10 = 1 << *(a1 + 256);
  v92 = *(a1 + 24);
  if (a2 - v8 - *(a1 + 28) > v10 && *(a1 + 40) == 0)
  {
    v12 = a2 - v8 - v10;
  }

  else
  {
    v12 = *(a1 + 28);
  }

  if (v9 >= v7)
  {
    v13 = v9 - v7;
  }

  else
  {
    v13 = 0;
  }

  v14 = 1 << *(a1 + 268);
  v15 = *(a1 + 248);
  v16 = 0xCF1BBCDCBB000000 * *a2;
  v17 = v16 >> (66 - *(v15 + 264));
  v18 = *(v15 + 112);
  _X10 = v18 + 16 * v17;
  __asm { PRFM            #0, [X10] }

  v24 = *(a1 + 112);
  v25 = ~(-1 << v6);
  v26 = *(a1 + 44);
  v27 = 64 - *(a1 + 264);
  if (*(a1 + 300))
  {
    if (v26 < v9)
    {
      v28 = (0xCF1BBCDCBB000000 * *(v8 + v26)) >> v27;
      *(v5 + 4 * (v26 & v25)) = *(v24 + 4 * v28);
      *(v24 + 4 * v28) = v26;
    }
  }

  else if (v26 < v9)
  {
    do
    {
      v29 = (0xCF1BBCDCBB000000 * *(v8 + v26)) >> v27;
      *(v5 + 4 * (v26 & v25)) = *(v24 + 4 * v29);
      *(v24 + 4 * v29) = v26++;
    }

    while (v9 != v26);
  }

  v30 = 4 * v17;
  *(a1 + 44) = v9;
  v31 = *(v24 + 4 * (v16 >> v27));
  if (v31 < v12)
  {
    v32 = 3;
    goto LABEL_17;
  }

  v56 = v7 - 1;
  v57 = a3 - 7;
  v58 = a3 - 1;
  v32 = 3;
  while (1)
  {
    v59 = (v8 + v31);
    if (*&v59[v32 - 3] != *(a2 - 3 + v32))
    {
      goto LABEL_62;
    }

    if (v57 <= a2)
    {
      v62 = a2;
      goto LABEL_46;
    }

    v60 = *v59;
    if (v60 != *a2)
    {
      break;
    }

    v59 = (v8 + 8 + v31);
    v61 = (a2 + 8);
    while (1)
    {
      v62 = v61;
      if (v61 >= v57)
      {
        break;
      }

      v64 = *v59;
      v59 += 8;
      v63 = v64;
      ++v61;
      if (v64 != *v62)
      {
        v65 = v62 + (__clz(__rbit64(*v62 ^ v63)) >> 3) - a2;
        if (v65 > v32)
        {
          goto LABEL_61;
        }

        goto LABEL_62;
      }
    }

LABEL_46:
    if (v62 < a3 - 3)
    {
      if (*v59 == *v62)
      {
        v59 += 4;
        v62 = (v62 + 4);
      }

      if (v62 >= v58)
      {
LABEL_48:
        if (v62 >= a3)
        {
          goto LABEL_51;
        }

LABEL_49:
        if (*v59 == *v62)
        {
          v62 = (v62 + 1);
        }

        goto LABEL_51;
      }
    }

    else if (v62 >= v58)
    {
      goto LABEL_48;
    }

    if (*v59 == *v62)
    {
      v59 += 2;
      v62 = (v62 + 2);
    }

    if (v62 < a3)
    {
      goto LABEL_49;
    }

LABEL_51:
    v65 = v62 - a2;
    if (v62 - a2 > v32)
    {
      goto LABEL_61;
    }

LABEL_62:
    if (v31 > v13)
    {
      if (--v14)
      {
        v31 = *(v5 + 4 * (v31 & v56));
        if (v31 >= v12)
        {
          continue;
        }
      }
    }

    goto LABEL_17;
  }

  v65 = __clz(__rbit64(*a2 ^ v60)) >> 3;
  if (v65 <= v32)
  {
    goto LABEL_62;
  }

LABEL_61:
  *a4 = v9 + 3 - v31;
  v32 = v65;
  if (a2 + v65 != a3)
  {
    goto LABEL_62;
  }

  v32 = v65;
LABEL_17:
  v33 = *(v15 + 8);
  v91 = *v15;
  v34 = *v15 - v33 - v92;
  v35 = (v18 + 4 * v30);
  v36 = *v35;
  _X9 = v33 + v36;
  __asm { PRFM            #0, [X9] }

  v40 = *(_X10 + 4);
  v39 = *(_X10 + 8);
  _X27 = (v33 + v40);
  __asm { PRFM            #0, [X27] }

  _X15 = v33 + v39;
  __asm { PRFM            #0, [X15] }

  if (v14 >= 3)
  {
    v45 = 3;
  }

  else
  {
    v45 = v14;
  }

  v46 = v35[3];
  _X19 = (*(v15 + 128) + 4 * (v46 >> 8));
  __asm { PRFM            #0, [X19] }

  v90 = a3;
  if (!v14)
  {
    v45 = 0;
    goto LABEL_67;
  }

  if (v36)
  {
    v85 = v9 + v34 + 3;
    if (*_X9 != *a2 || (v79 = v45, v86 = v46, v81 = v33 + v39, v83 = *(_X10 + 8), v49 = ZSTD_count_2segments((a2 + 4), (_X9 + 4), a3, v91, (v8 + v92)), _X15 = v81, LODWORD(v39) = v83, LOBYTE(v46) = v86, v45 = v79, a3 = v90, v49 + 4 <= v32) || (*a4 = (v85 - v36), v32 = v49 + 4, a2 + v49 + 4 != v90))
    {
      if (v14 == 1)
      {
        goto LABEL_67;
      }

      if (v40)
      {
        if (*_X27 != *a2 || (v50 = _X27 + 1, v87 = v46, v51 = v45, v82 = _X15, v84 = v39, v52 = ZSTD_count_2segments((a2 + 4), v50, a3, v91, (v8 + v92)), _X15 = v82, LODWORD(v39) = v84, v45 = v51, LOBYTE(v46) = v87, a3 = v90, v52 + 4 <= v32) || (*a4 = (v85 - v40), v32 = v52 + 4, a2 + v52 + 4 != v90))
        {
          if (v14 == 2)
          {
            goto LABEL_67;
          }

          if (v39)
          {
            if (*_X15 == *a2)
            {
              v53 = v39;
              v80 = v45;
              v88 = v46;
              v54 = a3;
              v55 = ZSTD_count_2segments((a2 + 4), (_X15 + 4), a3, v91, (v8 + v92));
              if (v55 + 4 <= v32)
              {
                a3 = v54;
                LOBYTE(v46) = v88;
                v45 = v80;
              }

              else
              {
                LOBYTE(v46) = v88;
                *a4 = (v85 - v53);
                v32 = v55 + 4;
                a3 = v54;
                v45 = v80;
                if (a2 + v55 + 4 == v54)
                {
                  return v32;
                }
              }
            }

LABEL_67:
            if (v14 - v45 >= v46)
            {
              v66 = v46;
            }

            else
            {
              v66 = v14 - v45;
            }

            if (v66)
            {
              v67 = _X19;
              v68 = v66;
              do
              {
                v69 = *v67++;
                _X10 = v33 + v69;
                __asm { PRFM            #0, [X10] }

                --v68;
              }

              while (v68);
              v72 = *a2;
              v73 = v9 + v34 + 3;
              do
              {
                v75 = *_X19++;
                v74 = v75;
                v76 = v33 + v75;
                if (*v76 == v72)
                {
                  v77 = ZSTD_count_2segments((a2 + 4), (v76 + 4), a3, v91, (v8 + v92));
                  a3 = v90;
                  if (v77 + 4 > v32)
                  {
                    *a4 = v73 - v74;
                    v32 = v77 + 4;
                    if (a2 + v77 + 4 == v90)
                    {
                      break;
                    }
                  }
                }

                LODWORD(v66) = v66 - 1;
              }

              while (v66);
            }
          }
        }
      }
    }
  }

  return v32;
}

unint64_t ZSTD_HcFindBestMatch_dedicatedDictSearch_6(uint64_t a1, unint64_t a2, unint64_t a3, void *a4)
{
  v5 = *(a1 + 128);
  v6 = *(a1 + 260);
  v7 = 1 << v6;
  v8 = *(a1 + 8);
  v9 = a2 - v8;
  v10 = 1 << *(a1 + 256);
  v92 = *(a1 + 24);
  if (a2 - v8 - *(a1 + 28) > v10 && *(a1 + 40) == 0)
  {
    v12 = a2 - v8 - v10;
  }

  else
  {
    v12 = *(a1 + 28);
  }

  if (v9 >= v7)
  {
    v13 = v9 - v7;
  }

  else
  {
    v13 = 0;
  }

  v14 = 1 << *(a1 + 268);
  v15 = *(a1 + 248);
  v16 = 0xCF1BBCDCBF9B0000 * *a2;
  v17 = v16 >> (66 - *(v15 + 264));
  v18 = *(v15 + 112);
  _X10 = v18 + 16 * v17;
  __asm { PRFM            #0, [X10] }

  v24 = *(a1 + 112);
  v25 = ~(-1 << v6);
  v26 = *(a1 + 44);
  v27 = 64 - *(a1 + 264);
  if (*(a1 + 300))
  {
    if (v26 < v9)
    {
      v28 = (0xCF1BBCDCBF9B0000 * *(v8 + v26)) >> v27;
      *(v5 + 4 * (v26 & v25)) = *(v24 + 4 * v28);
      *(v24 + 4 * v28) = v26;
    }
  }

  else if (v26 < v9)
  {
    do
    {
      v29 = (0xCF1BBCDCBF9B0000 * *(v8 + v26)) >> v27;
      *(v5 + 4 * (v26 & v25)) = *(v24 + 4 * v29);
      *(v24 + 4 * v29) = v26++;
    }

    while (v9 != v26);
  }

  v30 = 4 * v17;
  *(a1 + 44) = v9;
  v31 = *(v24 + 4 * (v16 >> v27));
  if (v31 < v12)
  {
    v32 = 3;
    goto LABEL_17;
  }

  v56 = v7 - 1;
  v57 = a3 - 7;
  v58 = a3 - 1;
  v32 = 3;
  while (1)
  {
    v59 = (v8 + v31);
    if (*&v59[v32 - 3] != *(a2 - 3 + v32))
    {
      goto LABEL_62;
    }

    if (v57 <= a2)
    {
      v62 = a2;
      goto LABEL_46;
    }

    v60 = *v59;
    if (v60 != *a2)
    {
      break;
    }

    v59 = (v8 + 8 + v31);
    v61 = (a2 + 8);
    while (1)
    {
      v62 = v61;
      if (v61 >= v57)
      {
        break;
      }

      v64 = *v59;
      v59 += 8;
      v63 = v64;
      ++v61;
      if (v64 != *v62)
      {
        v65 = v62 + (__clz(__rbit64(*v62 ^ v63)) >> 3) - a2;
        if (v65 > v32)
        {
          goto LABEL_61;
        }

        goto LABEL_62;
      }
    }

LABEL_46:
    if (v62 < a3 - 3)
    {
      if (*v59 == *v62)
      {
        v59 += 4;
        v62 = (v62 + 4);
      }

      if (v62 >= v58)
      {
LABEL_48:
        if (v62 >= a3)
        {
          goto LABEL_51;
        }

LABEL_49:
        if (*v59 == *v62)
        {
          v62 = (v62 + 1);
        }

        goto LABEL_51;
      }
    }

    else if (v62 >= v58)
    {
      goto LABEL_48;
    }

    if (*v59 == *v62)
    {
      v59 += 2;
      v62 = (v62 + 2);
    }

    if (v62 < a3)
    {
      goto LABEL_49;
    }

LABEL_51:
    v65 = v62 - a2;
    if (v62 - a2 > v32)
    {
      goto LABEL_61;
    }

LABEL_62:
    if (v31 > v13)
    {
      if (--v14)
      {
        v31 = *(v5 + 4 * (v31 & v56));
        if (v31 >= v12)
        {
          continue;
        }
      }
    }

    goto LABEL_17;
  }

  v65 = __clz(__rbit64(*a2 ^ v60)) >> 3;
  if (v65 <= v32)
  {
    goto LABEL_62;
  }

LABEL_61:
  *a4 = v9 + 3 - v31;
  v32 = v65;
  if (a2 + v65 != a3)
  {
    goto LABEL_62;
  }

  v32 = v65;
LABEL_17:
  v33 = *(v15 + 8);
  v91 = *v15;
  v34 = *v15 - v33 - v92;
  v35 = (v18 + 4 * v30);
  v36 = *v35;
  _X9 = v33 + v36;
  __asm { PRFM            #0, [X9] }

  v40 = *(_X10 + 4);
  v39 = *(_X10 + 8);
  _X27 = (v33 + v40);
  __asm { PRFM            #0, [X27] }

  _X15 = v33 + v39;
  __asm { PRFM            #0, [X15] }

  if (v14 >= 3)
  {
    v45 = 3;
  }

  else
  {
    v45 = v14;
  }

  v46 = v35[3];
  _X19 = (*(v15 + 128) + 4 * (v46 >> 8));
  __asm { PRFM            #0, [X19] }

  v90 = a3;
  if (!v14)
  {
    v45 = 0;
    goto LABEL_67;
  }

  if (v36)
  {
    v85 = v9 + v34 + 3;
    if (*_X9 != *a2 || (v79 = v45, v86 = v46, v81 = v33 + v39, v83 = *(_X10 + 8), v49 = ZSTD_count_2segments((a2 + 4), (_X9 + 4), a3, v91, (v8 + v92)), _X15 = v81, LODWORD(v39) = v83, LOBYTE(v46) = v86, v45 = v79, a3 = v90, v49 + 4 <= v32) || (*a4 = (v85 - v36), v32 = v49 + 4, a2 + v49 + 4 != v90))
    {
      if (v14 == 1)
      {
        goto LABEL_67;
      }

      if (v40)
      {
        if (*_X27 != *a2 || (v50 = _X27 + 1, v87 = v46, v51 = v45, v82 = _X15, v84 = v39, v52 = ZSTD_count_2segments((a2 + 4), v50, a3, v91, (v8 + v92)), _X15 = v82, LODWORD(v39) = v84, v45 = v51, LOBYTE(v46) = v87, a3 = v90, v52 + 4 <= v32) || (*a4 = (v85 - v40), v32 = v52 + 4, a2 + v52 + 4 != v90))
        {
          if (v14 == 2)
          {
            goto LABEL_67;
          }

          if (v39)
          {
            if (*_X15 == *a2)
            {
              v53 = v39;
              v80 = v45;
              v88 = v46;
              v54 = a3;
              v55 = ZSTD_count_2segments((a2 + 4), (_X15 + 4), a3, v91, (v8 + v92));
              if (v55 + 4 <= v32)
              {
                a3 = v54;
                LOBYTE(v46) = v88;
                v45 = v80;
              }

              else
              {
                LOBYTE(v46) = v88;
                *a4 = (v85 - v53);
                v32 = v55 + 4;
                a3 = v54;
                v45 = v80;
                if (a2 + v55 + 4 == v54)
                {
                  return v32;
                }
              }
            }

LABEL_67:
            if (v14 - v45 >= v46)
            {
              v66 = v46;
            }

            else
            {
              v66 = v14 - v45;
            }

            if (v66)
            {
              v67 = _X19;
              v68 = v66;
              do
              {
                v69 = *v67++;
                _X10 = v33 + v69;
                __asm { PRFM            #0, [X10] }

                --v68;
              }

              while (v68);
              v72 = *a2;
              v73 = v9 + v34 + 3;
              do
              {
                v75 = *_X19++;
                v74 = v75;
                v76 = v33 + v75;
                if (*v76 == v72)
                {
                  v77 = ZSTD_count_2segments((a2 + 4), (v76 + 4), a3, v91, (v8 + v92));
                  a3 = v90;
                  if (v77 + 4 > v32)
                  {
                    *a4 = v73 - v74;
                    v32 = v77 + 4;
                    if (a2 + v77 + 4 == v90)
                    {
                      break;
                    }
                  }
                }

                LODWORD(v66) = v66 - 1;
              }

              while (v66);
            }
          }
        }
      }
    }
  }

  return v32;
}

uint64_t ZSTD_compressBlock_greedy_row(uint64_t a1, uint64_t a2, unsigned int *a3, char *a4, uint64_t a5)
{
  v5 = a4;
  v7 = a1;
  v8 = &a4[a5];
  v9 = &a4[a5 - 16];
  v10 = *(a1 + 8);
  v11 = *(a1 + 24);
  v12 = *(a1 + 272);
  if (v12 >= 6)
  {
    v12 = 6;
  }

  if (v12 <= 4)
  {
    v13 = 4;
  }

  else
  {
    v13 = v12;
  }

  v14 = *(a1 + 268);
  if (v14 >= 6)
  {
    v15 = 6;
  }

  else
  {
    v15 = *(a1 + 268);
  }

  if (v15 <= 4)
  {
    v15 = 4;
  }

  v178 = v15;
  v16 = *a3;
  v17 = a3[1];
  v171 = v10 + v11;
  if (v5 == v10 + v11)
  {
    v18 = v5 + 1;
  }

  else
  {
    v18 = v5;
  }

  v19 = v18 - v10;
  v20 = 1 << *(a1 + 256);
  v21 = v18 - v10 - v20;
  v165 = v18 - v10 - v11 > v20;
  v22 = *(a1 + 44);
  if (v165 && *(a1 + 40) == 0)
  {
    LODWORD(v11) = v21;
  }

  v24 = v19 - v11;
  if (v17 <= v19 - v11)
  {
    v25 = v17;
  }

  else
  {
    v25 = 0;
  }

  if (v16 <= v24)
  {
    v26 = v16;
  }

  else
  {
    v26 = 0;
  }

  *(a1 + 300) = 0;
  v27 = v9 - (v10 + v22);
  if ((v27 + 1) < 8)
  {
    v28 = v27 + 1;
  }

  else
  {
    v28 = 8;
  }

  if (v9 >= v10 + v22)
  {
    v29 = v28;
  }

  else
  {
    v29 = 0;
  }

  v30 = (v29 + v22);
  v177 = v10;
  if (v22 < v30)
  {
    v31 = *(a1 + 112);
    v32 = *(a1 + 56);
    v33 = *(a1 + 52);
    v34 = *(a1 + 96);
    v35 = 56 - v33;
    v36 = 24 - v33;
    v37 = a1 + 64;
    if (v14 > 4)
    {
      if (v14 == 5)
      {
        do
        {
          if (v13 == 6)
          {
            v48 = ((0xCF1BBCDCBF9B0000 * *(v10 + v22)) ^ v34) >> v35;
            v49 = v178;
          }

          else
          {
            v49 = v178;
            if (v13 == 5)
            {
              v48 = ((0xCF1BBCDCBB000000 * *(v10 + v22)) ^ v34) >> v35;
            }

            else
            {
              LODWORD(v48) = ((-1640531535 * *(v10 + v22)) ^ v34) >> v36;
            }
          }

          v50 = v48 >> 8 << v49;
          _X3 = v31 + 4 * v50;
          __asm
          {
            PRFM            #0, [X3]
            PRFM            #0, [X3,#0x40]
          }

          _X3 = v32 + v50;
          __asm { PRFM            #0, [X3] }

          *(v37 + 4 * (v22++ & 7)) = v48;
          v10 = v177;
        }

        while (v30 != v22);
      }

      else if (v13 == 6)
      {
        do
        {
          v64 = ((0xCF1BBCDCBF9B0000 * *(v10 + v22)) ^ v34) >> v35;
          v65 = v64 >> 8 << v178;
          _X0 = v31 + 4 * v65;
          __asm
          {
            PRFM            #0, [X0]
            PRFM            #0, [X0,#0x40]
          }

          _X17 = v32 + v65;
          __asm
          {
            PRFM            #0, [X17]
            PRFM            #0, [X17,#0x20]
          }

          *(v37 + 4 * (v22++ & 7)) = v64;
        }

        while (v30 != v22);
      }

      else if (v13 == 5)
      {
        do
        {
          v56 = ((0xCF1BBCDCBB000000 * *(v10 + v22)) ^ v34) >> v35;
          v57 = v56 >> 8 << v178;
          _X0 = v31 + 4 * v57;
          __asm
          {
            PRFM            #0, [X0]
            PRFM            #0, [X0,#0x40]
          }

          _X17 = v32 + v57;
          __asm
          {
            PRFM            #0, [X17]
            PRFM            #0, [X17,#0x20]
          }

          *(v37 + 4 * (v22++ & 7)) = v56;
        }

        while (v30 != v22);
      }

      else
      {
        do
        {
          v72 = ((-1640531535 * *(v10 + v22)) ^ v34) >> v36;
          v73 = v72 >> 8 << v178;
          _X0 = v31 + 4 * v73;
          __asm
          {
            PRFM            #0, [X0]
            PRFM            #0, [X0,#0x40]
          }

          _X17 = v32 + v73;
          __asm
          {
            PRFM            #0, [X17]
            PRFM            #0, [X17,#0x20]
          }

          *(v37 + 4 * (v22++ & 7)) = v72;
        }

        while (v30 != v22);
      }
    }

    else
    {
      do
      {
        if (v13 == 6)
        {
          v38 = ((0xCF1BBCDCBF9B0000 * *(v10 + v22)) ^ v34) >> v35;
          v39 = v178;
        }

        else
        {
          v39 = v178;
          if (v13 == 5)
          {
            v38 = ((0xCF1BBCDCBB000000 * *(v10 + v22)) ^ v34) >> v35;
          }

          else
          {
            LODWORD(v38) = ((-1640531535 * *(v10 + v22)) ^ v34) >> v36;
          }
        }

        v40 = v38 >> 8 << v39;
        _X3 = v31 + 4 * v40;
        __asm { PRFM            #0, [X3] }

        _X3 = v32 + v40;
        __asm { PRFM            #0, [X3] }

        *(v37 + 4 * (v22++ & 7)) = v38;
        v10 = v177;
      }

      while (v30 != v22);
    }
  }

  if (v18 < v9)
  {
    v167 = v24;
    v168 = v17;
    v169 = v16;
    v170 = a3;
    v80 = v8;
    v81 = (v8 - 7);
    v82 = (v8 - 3);
    v83 = (v8 - 1);
    v84 = v8 - 32;
    v85 = v7 + 64;
    v173 = v7;
    v174 = v8;
    v172 = v9;
    v86 = v178;
    v175 = (v8 - 1);
    v176 = (v8 - 3);
    while (!v26 || *&v18[-v26 + 1] != *(v18 + 1))
    {
      v179 = 999999999;
      if (v13 == 6)
      {
        if (v86 == 6)
        {
          BestMatch_noDict_6_6 = ZSTD_RowFindBestMatch_noDict_6_6(v7, v18, v80, &v179);
        }

        else if (v86 == 5)
        {
          BestMatch_noDict_6_6 = ZSTD_RowFindBestMatch_noDict_6_5(v7, v18, v80, &v179);
        }

        else
        {
          BestMatch_noDict_6_6 = ZSTD_RowFindBestMatch_noDict_6_4(v7, v18, v80, &v179);
        }
      }

      else if (v13 == 5)
      {
        if (v86 == 6)
        {
          BestMatch_noDict_6_6 = ZSTD_RowFindBestMatch_noDict_5_6(v7, v18, v80, &v179);
        }

        else if (v86 == 5)
        {
          BestMatch_noDict_6_6 = ZSTD_RowFindBestMatch_noDict_5_5(v7, v18, v80, &v179);
        }

        else
        {
          BestMatch_noDict_6_6 = ZSTD_RowFindBestMatch_noDict_5_4(v7, v18, v80, &v179);
        }
      }

      else if (v86 == 6)
      {
        BestMatch_noDict_6_6 = ZSTD_RowFindBestMatch_noDict_4_6(v7, v18, v80, &v179);
      }

      else if (v86 == 5)
      {
        BestMatch_noDict_6_6 = ZSTD_RowFindBestMatch_noDict_4_5(v7, v18, v80, &v179);
      }

      else
      {
        BestMatch_noDict_6_6 = ZSTD_RowFindBestMatch_noDict_4_4(v7, v18, v80, &v179);
      }

      v9 = v172;
      v10 = v177;
      if (BestMatch_noDict_6_6 <= 3)
      {
        v111 = v18 - v5;
        v18 += ((v18 - v5) >> 8) + 1;
        v7 = v173;
        v80 = v174;
        *(v173 + 300) = v111 > 0x7FF;
        v86 = v178;
LABEL_200:
        v83 = v175;
        v82 = v176;
        goto LABEL_59;
      }

      v96 = v179;
      v7 = v173;
      v80 = v174;
      v86 = v178;
      if (v179 >= 4)
      {
        if (v18 > v5 && &v18[-v179 + 3] > v171)
        {
          v112 = 2 - v179;
          v113 = v18;
          while (1)
          {
            v114 = *--v113;
            if (v114 != v18[v112])
            {
              break;
            }

            ++BestMatch_noDict_6_6;
            if (v113 > v5)
            {
              v115 = &v18[v112];
              v18 = v113;
              if (v115 > v171)
              {
                continue;
              }
            }

            goto LABEL_129;
          }
        }

        v113 = v18;
LABEL_129:
        v25 = v26;
        v26 = (v179 - 3);
        v18 = v113;
      }

LABEL_95:
      v97 = v18 - v5;
      v98 = *(a2 + 24);
      if (v18 > v84)
      {
        if (v5 <= v84)
        {
          v99 = (v98 + v84 - v5);
          *v98 = *v5;
          if (v84 - v5 >= 17)
          {
            v100 = v98 + 1;
            v101 = (v5 + 32);
            do
            {
              *v100 = *(v101 - 1);
              v102 = *v101;
              v101 += 2;
              v100[1] = v102;
              v100 += 2;
            }

            while (v100 < v99);
          }

          v5 = v84;
          v98 = v99;
        }

        if (v5 >= v18)
        {
          goto LABEL_142;
        }

        v103 = v18 - v5;
        if ((v18 - v5) < 8)
        {
          v116 = v98;
        }

        else if ((v98 - v5) < 0x20)
        {
          v116 = v98;
        }

        else
        {
          if (v103 < 0x20)
          {
            v104 = 0;
LABEL_136:
            v121 = v103 & 0xFFFFFFFFFFFFFFF8;
            v116 = v98 + (v103 & 0xFFFFFFFFFFFFFFF8);
            v122 = v104 - (v103 & 0xFFFFFFFFFFFFFFF8);
            v123 = &v5[v104];
            v124 = (v98 + v104);
            do
            {
              v125 = *v123++;
              *v124++ = v125;
              v122 += 8;
            }

            while (v122);
            if (v103 != v121)
            {
              v5 += v121;
              goto LABEL_141;
            }

LABEL_142:
            *(a2 + 24) += v97;
            v110 = *(a2 + 8);
            if (v97 >= 0x10000)
            {
              v127 = (v110 - *a2) >> 3;
              *(a2 + 72) = 1;
              *(a2 + 76) = v127;
            }

            goto LABEL_144;
          }

          v104 = v103 & 0xFFFFFFFFFFFFFFE0;
          v117 = (v5 + 16);
          v118 = v98 + 1;
          v119 = v103 & 0xFFFFFFFFFFFFFFE0;
          do
          {
            v120 = *v117;
            *(v118 - 1) = *(v117 - 1);
            *v118 = v120;
            v117 += 2;
            v118 += 2;
            v119 -= 32;
          }

          while (v119);
          if (v103 == v104)
          {
            goto LABEL_142;
          }

          if ((v103 & 0x18) != 0)
          {
            goto LABEL_136;
          }

          v5 += v104;
          v116 = v98 + v104;
        }

        do
        {
LABEL_141:
          v126 = *v5++;
          *v116++ = v126;
        }

        while (v5 != v18);
        goto LABEL_142;
      }

      *v98 = *v5;
      v105 = *(a2 + 24);
      if (v97 > 0x10)
      {
        *(v105 + 16) = *(v5 + 1);
        if (v97 >= 33)
        {
          v106 = v105 + v97;
          v107 = (v105 + 32);
          v108 = (v5 + 48);
          do
          {
            *v107 = *(v108 - 1);
            v109 = *v108;
            v108 += 2;
            v107[1] = v109;
            v107 += 2;
          }

          while (v107 < v106);
        }

        goto LABEL_142;
      }

      *(a2 + 24) = v105 + v97;
      v110 = *(a2 + 8);
LABEL_144:
      *(v110 + 4) = v97;
      *v110 = v96;
      if (BestMatch_noDict_6_6 - 3 >= 0x10000)
      {
        v128 = (v110 - *a2) >> 3;
        *(a2 + 72) = 2;
        *(a2 + 76) = v128;
      }

      *(v110 + 6) = BestMatch_noDict_6_6 - 3;
      v129 = v110 + 8;
      *(a2 + 8) = v110 + 8;
      if (*(v7 + 300))
      {
        v130 = *(v7 + 44);
        v131 = v9 - (v10 + v130);
        if ((v131 + 1) < 8)
        {
          v132 = v131 + 1;
        }

        else
        {
          v132 = 8;
        }

        if (v9 >= v10 + v130)
        {
          v133 = v132;
        }

        else
        {
          v133 = 0;
        }

        v134 = (v133 + v130);
        if (v130 < v134)
        {
          v135 = *(v7 + 112);
          v136 = *(v7 + 56);
          v137 = *(v7 + 52);
          v138 = *(v7 + 96);
          v139 = 56 - v137;
          v140 = 24 - v137;
          do
          {
            if (v13 == 5)
            {
              v143 = 0xCF1BBCDCBB000000 * *(v10 + v130);
            }

            else
            {
              if (v13 != 6)
              {
                LODWORD(v144) = ((-1640531535 * *(v10 + v130)) ^ v138) >> v140;
                goto LABEL_163;
              }

              v143 = 0xCF1BBCDCBF9B0000 * *(v10 + v130);
            }

            v144 = (v143 ^ v138) >> v139;
LABEL_163:
            v145 = v144 >> 8 << v86;
            _X1 = v135 + 4 * v145;
            __asm { PRFM            #0, [X1] }

            if (v14 <= 4)
            {
              _X17 = v136 + v145;
              __asm { PRFM            #0, [X17] }
            }

            else
            {
              __asm { PRFM            #0, [X1,#0x40] }

              _X17 = v136 + v145;
              __asm { PRFM            #0, [X17] }

              if (v14 != 5)
              {
                __asm { PRFM            #0, [X17,#0x20] }
              }
            }

            *(v85 + 4 * (v130++ & 7)) = v144;
          }

          while (v134 != v130);
        }

        *(v7 + 300) = 0;
      }

      v5 = &v18[BestMatch_noDict_6_6];
      if (!v25)
      {
        v18 += BestMatch_noDict_6_6;
        goto LABEL_200;
      }

      v83 = v175;
      v82 = v176;
      if (v5 > v9)
      {
        goto LABEL_58;
      }

      v152 = v26;
      v153 = v25;
      while (1)
      {
        v26 = v153;
        v153 = v152;
        if (*v5 != *&v5[-v26])
        {
          v25 = v26;
          v26 = v152;
          goto LABEL_58;
        }

        v154 = v5 + 4;
        v155 = &v5[-v26 + 4];
        if (v81 <= (v5 + 4))
        {
          v158 = v5 + 4;
          goto LABEL_178;
        }

        v156 = *v155;
        if (v156 == *v154)
        {
          v157 = v5 + 12;
          v155 = &v5[-v26 + 12];
          while (1)
          {
            v158 = v157;
            if (v157 >= v81)
            {
              break;
            }

            v160 = *v155;
            v155 += 8;
            v159 = v160;
            v157 += 8;
            if (v160 != *v158)
            {
              v158 += __clz(__rbit64(*v158 ^ v159)) >> 3;
              goto LABEL_185;
            }
          }

LABEL_178:
          if (v158 >= v176)
          {
            if (v158 >= v175)
            {
              goto LABEL_182;
            }
          }

          else
          {
            if (*v155 == *v158)
            {
              v155 += 4;
              v158 += 4;
            }

            if (v158 >= v175)
            {
LABEL_182:
              if (v158 < v80)
              {
                goto LABEL_183;
              }

              goto LABEL_185;
            }
          }

          if (*v155 == *v158)
          {
            v155 += 2;
            v158 += 2;
          }

          if (v158 < v80)
          {
LABEL_183:
            if (*v155 == *v158)
            {
              ++v158;
            }
          }

LABEL_185:
          v161 = v158 - v154;
          if (v5 > v84)
          {
            goto LABEL_187;
          }

LABEL_186:
          **(a2 + 24) = *v5;
          v129 = *(a2 + 8);
          goto LABEL_187;
        }

        v161 = __clz(__rbit64(*v154 ^ v156)) >> 3;
        if (v5 <= v84)
        {
          goto LABEL_186;
        }

LABEL_187:
        *(v129 + 4) = 0;
        *v129 = 1;
        if (v161 + 1 >= 0x10000)
        {
          v162 = (v129 - *a2) >> 3;
          *(a2 + 72) = 2;
          *(a2 + 76) = v162;
        }

        *(v129 + 6) = v161 + 1;
        v129 += 8;
        *(a2 + 8) = v129;
        v5 += v161 + 4;
        if (!v153)
        {
          break;
        }

        v152 = v26;
        v25 = v153;
        v18 = v5;
        if (v5 > v9)
        {
          goto LABEL_59;
        }
      }

      v25 = v153;
LABEL_58:
      v18 = v5;
LABEL_59:
      if (v18 >= v9)
      {
        v8 = v80;
        a3 = v170;
        v17 = v168;
        v16 = v169;
        v24 = v167;
        goto LABEL_203;
      }
    }

    v87 = v18 + 5;
    v88 = &v18[-v26 + 5];
    if (v81 <= (v18 + 5))
    {
      v91 = v18 + 5;
    }

    else
    {
      v89 = *v88;
      if (v89 != *v87)
      {
        v95 = __clz(__rbit64(*v87 ^ v89)) >> 3;
        goto LABEL_94;
      }

      v90 = v18 + 13;
      v88 = &v18[-v26 + 13];
      while (1)
      {
        v91 = v90;
        if (v90 >= v81)
        {
          break;
        }

        v93 = *v88;
        v88 += 8;
        v92 = v93;
        v90 += 8;
        if (v93 != *v91)
        {
          v91 += __clz(__rbit64(*v91 ^ v92)) >> 3;
          goto LABEL_81;
        }
      }
    }

    if (v91 >= v82)
    {
      if (v91 >= v83)
      {
        goto LABEL_78;
      }
    }

    else
    {
      if (*v88 == *v91)
      {
        v88 += 4;
        v91 += 4;
      }

      if (v91 >= v83)
      {
LABEL_78:
        if (v91 >= v80)
        {
LABEL_81:
          v95 = v91 - v87;
LABEL_94:
          BestMatch_noDict_6_6 = v95 + 4;
          ++v18;
          v96 = 1;
          goto LABEL_95;
        }

LABEL_79:
        if (*v88 == *v91)
        {
          ++v91;
        }

        goto LABEL_81;
      }
    }

    if (*v88 == *v91)
    {
      v88 += 2;
      v91 += 2;
    }

    if (v91 >= v80)
    {
      goto LABEL_81;
    }

    goto LABEL_79;
  }

LABEL_203:
  if (v16 <= v24)
  {
    v163 = 0;
  }

  else
  {
    v163 = v16;
  }

  if (v17 <= v24)
  {
    v164 = 0;
  }

  else
  {
    v164 = v17;
  }

  if (v26)
  {
    v163 = v26;
    v165 = v16 > v24;
  }

  else
  {
    v165 = 0;
  }

  if (v165)
  {
    v164 = v16;
  }

  if (v25)
  {
    v164 = v25;
  }

  *a3 = v163;
  a3[1] = v164;
  return v8 - v5;
}

unint64_t ZSTD_RowFindBestMatch_noDict_4_4(uint64_t a1, _DWORD *a2, _DWORD *a3, void *a4)
{
  v98 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 112);
  v5 = *(a1 + 56);
  v6 = *(a1 + 52);
  v7 = *(a1 + 8);
  v8 = a2 - v7;
  v9 = 1 << *(a1 + 256);
  if (a2 - v7 - *(a1 + 28) > v9 && *(a1 + 40) == 0)
  {
    v11 = a2 - v7 - v9;
  }

  else
  {
    v11 = *(a1 + 28);
  }

  v12 = *(a1 + 268);
  if (v12 >= 4)
  {
    LOBYTE(v12) = 4;
  }

  v13 = *(a1 + 96);
  if (*(a1 + 300))
  {
    v14 = ((-1640531535 * *a2) ^ v13) >> (24 - v6);
    *(a1 + 44) = v8;
  }

  else
  {
    v15 = a1 + 64;
    v16 = *(a1 + 44);
    if (v8 - v16 >= 0x181)
    {
      v17 = *(a1 + 56);
      v18 = *(a1 + 112);
      if (v16 <= 0xFFFFFF9F)
      {
        v72 = v16 + 96;
        do
        {
          v73 = ((-1640531535 * *(v7 + 8 + v16)) ^ *(a1 + 96)) >> (24 - v6);
          v74 = (v73 >> 4) & 0xFFFFFF0;
          _X23 = v4 + 4 * v74;
          __asm { PRFM            #0, [X23] }

          _X22 = v5 + v74;
          __asm { PRFM            #0, [X22] }

          v79 = *(v15 + 4 * (v16 & 7));
          *(v15 + 4 * (v16 & 7)) = v73;
          v80 = (v79 >> 4) & 0xFFFFFF0;
          v81 = v4 + 4 * v80;
          v82 = (v5 + v80);
          if (((*v82 - 1) & 0xF) != 0)
          {
            v83 = 0;
          }

          else
          {
            v83 = 15;
          }

          v84 = v83 + ((*v82 - 1) & 0xF);
          *v82 = v84;
          v82[v84] = v79;
          *(v81 + 4 * v84) = v16++;
        }

        while (v72 != v16);
        v18 = *(a1 + 112);
        v17 = *(a1 + 56);
      }

      v85 = v8 - 32;
      LODWORD(v16) = v8 - 32;
      v86 = a2 + 1 - (v7 + v85);
      if ((v86 + 1) < 8)
      {
        v87 = v86 + 1;
      }

      else
      {
        v87 = 8;
      }

      if (a2 + 1 >= v7 + v85)
      {
        v88 = v87;
      }

      else
      {
        v88 = 0;
      }

      if (v85 < v88 + v85)
      {
        v89 = *(a1 + 96);
        v90 = 24 - *(a1 + 52);
        do
        {
          v91 = ((-1640531535 * *(v7 + v85)) ^ v89) >> v90;
          v92 = (v91 >> 4) & 0xFFFFFF0;
          _X25 = v18 + 4 * v92;
          __asm { PRFM            #0, [X25] }

          _X24 = v17 + v92;
          __asm { PRFM            #0, [X24] }

          *(v15 + 4 * (v85++ & 7)) = v91;
          --v88;
        }

        while (v88);
      }
    }

    else
    {
      v17 = *(a1 + 56);
      v18 = *(a1 + 112);
    }

    if (v16 >= v8)
    {
      v22 = v8;
    }

    else
    {
      v19 = *(a1 + 8) + 8;
      v20 = 24 - *(a1 + 52);
      v21 = v16;
      v22 = v8;
      do
      {
        v23 = ((-1640531535 * *(v19 + v21)) ^ *(a1 + 96)) >> v20;
        v24 = (v23 >> 4) & 0xFFFFFF0;
        _X25 = v18 + 4 * v24;
        __asm { PRFM            #0, [X25] }

        _X24 = v17 + v24;
        __asm { PRFM            #0, [X24] }

        v32 = *(v15 + 4 * (v21 & 7));
        *(v15 + 4 * (v21 & 7)) = v23;
        v33 = (v32 >> 4) & 0xFFFFFF0;
        v34 = v18 + 4 * v33;
        v35 = (v17 + v33);
        if (((*v35 - 1) & 0xF) != 0)
        {
          v36 = 0;
        }

        else
        {
          v36 = 15;
        }

        v37 = v36 + ((*v35 - 1) & 0xF);
        *v35 = v37;
        v35[v37] = v32;
        *(v34 + 4 * v37) = v21++;
      }

      while (v8 != v21);
    }

    *(a1 + 44) = v8;
    v38 = ((-1640531535 * *(v7 + v22 + 8)) ^ v13) >> (24 - v6);
    v39 = (v38 >> 4) & 0xFFFFFF0;
    _X4 = v4 + 4 * v39;
    __asm { PRFM            #0, [X4] }

    _X15 = v5 + v39;
    __asm { PRFM            #0, [X15] }

    v14 = *(v15 + 4 * (v8 & 7));
    *(v15 + 4 * (v8 & 7)) = v38;
  }

  *(a1 + 104) += v14;
  v44 = (v14 >> 4) & 0xFFFFFF0;
  v45 = v4 + 4 * v44;
  v46 = (v5 + v44);
  v47 = 4 * v46->i8[0];
  v48 = *v46;
  v49 = __ROR8__(vshrn_n_s16(vceqq_s8(*v46, vdupq_n_s8(v14)), 4uLL), v47) & 0x8888888888888888;
  if (v49)
  {
    v50 = 0;
    v51 = 1 << v12;
    do
    {
      v52 = ((__clz(__rbit64(v49)) + (v47 & 0xFC)) >> 2) & 0xF;
      if (v52)
      {
        v53 = *(v45 + 4 * v52);
        if (v53 < v11)
        {
          break;
        }

        _X7 = v7 + v53;
        __asm { PRFM            #0, [X7] }

        v97[v50++] = v53;
        --v51;
      }

      v49 &= v49 - 1;
    }

    while (v49 && v51);
  }

  else
  {
    v50 = 0;
  }

  if (((v48 - 1) & 0xF) != 0)
  {
    v56 = 0;
  }

  else
  {
    v56 = 15;
  }

  v57 = v56 + ((v48 - 1) & 0xF);
  v46->i8[0] = v57;
  v46->i8[v57] = v14;
  v58 = *(a1 + 44);
  *(a1 + 44) = v58 + 1;
  *(v45 + 4 * v57) = v58;
  if (v50)
  {
    v59 = 0;
    v60 = a3 - 7;
    v61 = a3 - 1;
    v62 = v8 + 3;
    v63 = 3;
    while (1)
    {
      v65 = v97[v59];
      v66 = (v7 + v65);
      if (*(v7 + v65 + v63 - 3) != *(a2 + v63 - 3))
      {
        goto LABEL_36;
      }

      if (v60 <= a2)
      {
        v69 = a2;
        goto LABEL_46;
      }

      v67 = *v66;
      if (v67 == *a2)
      {
        break;
      }

      result = __clz(__rbit64(*a2 ^ v67)) >> 3;
      if (result <= v63)
      {
        goto LABEL_36;
      }

LABEL_61:
      *a4 = v62 - v65;
      v63 = result;
      if ((a2 + result) == a3)
      {
        return result;
      }

LABEL_36:
      ++v59;
      result = v63;
      if (v59 == v50)
      {
        return result;
      }
    }

    v66 = (v7 + 8 + v65);
    v68 = a2 + 2;
    while (1)
    {
      v69 = v68;
      if (v68 >= v60)
      {
        break;
      }

      v71 = *v66;
      v66 += 4;
      v70 = v71;
      ++v68;
      if (v71 != *v69)
      {
        result = v69 + (__clz(__rbit64(*v69 ^ v70)) >> 3) - a2;
        if (result <= v63)
        {
          goto LABEL_36;
        }

        goto LABEL_61;
      }
    }

LABEL_46:
    if (v69 < (a3 - 3))
    {
      if (*v66 == *v69)
      {
        v66 += 2;
        v69 = (v69 + 4);
      }

      if (v69 >= v61)
      {
LABEL_48:
        if (v69 >= a3)
        {
          goto LABEL_51;
        }

        goto LABEL_49;
      }
    }

    else if (v69 >= v61)
    {
      goto LABEL_48;
    }

    if (*v66 == *v69)
    {
      ++v66;
      v69 = (v69 + 2);
    }

    if (v69 >= a3)
    {
LABEL_51:
      result = v69 - a2;
      if (v69 - a2 <= v63)
      {
        goto LABEL_36;
      }

      goto LABEL_61;
    }

LABEL_49:
    if (*v66 == *v69)
    {
      v69 = (v69 + 1);
    }

    goto LABEL_51;
  }

  return 3;
}

unint64_t ZSTD_RowFindBestMatch_noDict_4_5(uint64_t a1, _DWORD *a2, _DWORD *a3, void *a4)
{
  v103 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 112);
  v5 = *(a1 + 56);
  v6 = *(a1 + 52);
  v7 = *(a1 + 8);
  v8 = a2 - v7;
  v9 = 1 << *(a1 + 256);
  if (a2 - v7 - *(a1 + 28) > v9 && *(a1 + 40) == 0)
  {
    v11 = a2 - v7 - v9;
  }

  else
  {
    v11 = *(a1 + 28);
  }

  v12 = *(a1 + 268);
  if (v12 >= 5)
  {
    LOBYTE(v12) = 5;
  }

  v13 = *(a1 + 96);
  if (*(a1 + 300))
  {
    v14 = ((-1640531535 * *a2) ^ v13) >> (24 - v6);
    *(a1 + 44) = v8;
  }

  else
  {
    v15 = a1 + 64;
    v16 = *(a1 + 44);
    if (v8 - v16 >= 0x181)
    {
      v17 = *(a1 + 56);
      v18 = *(a1 + 112);
      if (v16 <= 0xFFFFFF9F)
      {
        v75 = v16 + 96;
        do
        {
          v76 = ((-1640531535 * *(v7 + 8 + v16)) ^ *(a1 + 96)) >> (24 - v6);
          v77 = (v76 >> 3) & 0x1FFFFFE0;
          _X23 = v4 + 4 * v77;
          __asm
          {
            PRFM            #0, [X23]
            PRFM            #0, [X23,#0x40]
          }

          _X22 = v5 + v77;
          __asm { PRFM            #0, [X22] }

          v83 = *(v15 + 4 * (v16 & 7));
          *(v15 + 4 * (v16 & 7)) = v76;
          v84 = (v83 >> 3) & 0x1FFFFFE0;
          v85 = v4 + 4 * v84;
          v86 = (v5 + v84);
          if (((*v86 - 1) & 0x1F) != 0)
          {
            v87 = 0;
          }

          else
          {
            v87 = 31;
          }

          v88 = v87 + ((*v86 - 1) & 0x1F);
          *v86 = v88;
          v86[v88] = v83;
          *(v85 + 4 * v88) = v16++;
        }

        while (v75 != v16);
        v18 = *(a1 + 112);
        v17 = *(a1 + 56);
      }

      v89 = v8 - 32;
      LODWORD(v16) = v8 - 32;
      v90 = a2 + 1 - (v7 + v89);
      if ((v90 + 1) < 8)
      {
        v91 = v90 + 1;
      }

      else
      {
        v91 = 8;
      }

      if (a2 + 1 >= v7 + v89)
      {
        v92 = v91;
      }

      else
      {
        v92 = 0;
      }

      if (v89 < v92 + v89)
      {
        v93 = *(a1 + 96);
        v94 = 24 - *(a1 + 52);
        do
        {
          v95 = ((-1640531535 * *(v7 + v89)) ^ v93) >> v94;
          v96 = (v95 >> 3) & 0x1FFFFFE0;
          _X25 = v18 + 4 * v96;
          __asm
          {
            PRFM            #0, [X25]
            PRFM            #0, [X25,#0x40]
          }

          _X24 = v17 + v96;
          __asm { PRFM            #0, [X24] }

          *(v15 + 4 * (v89++ & 7)) = v95;
          --v92;
        }

        while (v92);
      }
    }

    else
    {
      v17 = *(a1 + 56);
      v18 = *(a1 + 112);
    }

    if (v16 >= v8)
    {
      v22 = v8;
    }

    else
    {
      v19 = *(a1 + 8) + 8;
      v20 = 24 - *(a1 + 52);
      v21 = v16;
      v22 = v8;
      do
      {
        v23 = ((-1640531535 * *(v19 + v21)) ^ *(a1 + 96)) >> v20;
        v24 = (v23 >> 3) & 0x1FFFFFE0;
        _X25 = v18 + 4 * v24;
        __asm
        {
          PRFM            #0, [X25]
          PRFM            #0, [X25,#0x40]
        }

        _X24 = v17 + v24;
        __asm { PRFM            #0, [X24] }

        v33 = *(v15 + 4 * (v21 & 7));
        *(v15 + 4 * (v21 & 7)) = v23;
        v34 = (v33 >> 3) & 0x1FFFFFE0;
        v35 = v18 + 4 * v34;
        v36 = (v17 + v34);
        if (((*v36 - 1) & 0x1F) != 0)
        {
          v37 = 0;
        }

        else
        {
          v37 = 31;
        }

        v38 = v37 + ((*v36 - 1) & 0x1F);
        *v36 = v38;
        v36[v38] = v33;
        *(v35 + 4 * v38) = v21++;
      }

      while (v8 != v21);
    }

    *(a1 + 44) = v8;
    v39 = ((-1640531535 * *(v7 + v22 + 8)) ^ v13) >> (24 - v6);
    v40 = (v39 >> 3) & 0x1FFFFFE0;
    _X4 = v4 + 4 * v40;
    __asm
    {
      PRFM            #0, [X4]
      PRFM            #0, [X4,#0x40]
    }

    _X15 = v5 + v40;
    __asm { PRFM            #0, [X15] }

    v14 = *(v15 + 4 * (v8 & 7));
    *(v15 + 4 * (v8 & 7)) = v39;
  }

  *(a1 + 104) += v14;
  v46 = (v14 >> 3) & 0x1FFFFFE0;
  v47 = v4 + 4 * v46;
  v48 = (v5 + v46);
  v104 = vld2q_s16(v48);
  v49 = *v48;
  v50 = 2 * *v48;
  v51 = vdupq_n_s8(v14);
  v52 = __ROR8__(vsli_n_s8(vshrn_n_s16(vceqq_s8(v51, v104.val[0]), 6uLL), vshrn_n_s16(vceqq_s8(v51, v104.val[1]), 6uLL), 4uLL), v50) & 0x5555555555555555;
  if (v52)
  {
    v53 = 0;
    v54 = 1 << v12;
    do
    {
      v55 = ((__clz(__rbit64(v52)) + (v50 & 0xFE)) >> 1) & 0x1F;
      if (v55)
      {
        v56 = *(v47 + 4 * v55);
        if (v56 < v11)
        {
          break;
        }

        _X7 = v7 + v56;
        __asm { PRFM            #0, [X7] }

        v102[v53++] = v56;
        --v54;
      }

      v52 &= v52 - 1;
    }

    while (v52 && v54);
  }

  else
  {
    v53 = 0;
  }

  if (((v49 - 1) & 0x1F) != 0)
  {
    v59 = 0;
  }

  else
  {
    v59 = 31;
  }

  v60 = v59 + ((v49 - 1) & 0x1F);
  *v48 = v60;
  *(v48 + v60) = v14;
  v61 = *(a1 + 44);
  *(a1 + 44) = v61 + 1;
  *(v47 + 4 * v60) = v61;
  if (v53)
  {
    v62 = 0;
    v63 = a3 - 7;
    v64 = a3 - 1;
    v65 = v8 + 3;
    v66 = 3;
    while (1)
    {
      v68 = v102[v62];
      v69 = (v7 + v68);
      if (*(v7 + v68 + v66 - 3) != *(a2 + v66 - 3))
      {
        goto LABEL_36;
      }

      if (v63 <= a2)
      {
        v72 = a2;
        goto LABEL_46;
      }

      v70 = *v69;
      if (v70 == *a2)
      {
        break;
      }

      result = __clz(__rbit64(*a2 ^ v70)) >> 3;
      if (result <= v66)
      {
        goto LABEL_36;
      }

LABEL_61:
      *a4 = v65 - v68;
      v66 = result;
      if ((a2 + result) == a3)
      {
        return result;
      }

LABEL_36:
      ++v62;
      result = v66;
      if (v62 == v53)
      {
        return result;
      }
    }

    v69 = (v7 + 8 + v68);
    v71 = a2 + 2;
    while (1)
    {
      v72 = v71;
      if (v71 >= v63)
      {
        break;
      }

      v74 = *v69;
      v69 += 4;
      v73 = v74;
      ++v71;
      if (v74 != *v72)
      {
        result = v72 + (__clz(__rbit64(*v72 ^ v73)) >> 3) - a2;
        if (result <= v66)
        {
          goto LABEL_36;
        }

        goto LABEL_61;
      }
    }

LABEL_46:
    if (v72 < (a3 - 3))
    {
      if (*v69 == *v72)
      {
        v69 += 2;
        v72 = (v72 + 4);
      }

      if (v72 >= v64)
      {
LABEL_48:
        if (v72 >= a3)
        {
          goto LABEL_51;
        }

        goto LABEL_49;
      }
    }

    else if (v72 >= v64)
    {
      goto LABEL_48;
    }

    if (*v69 == *v72)
    {
      ++v69;
      v72 = (v72 + 2);
    }

    if (v72 >= a3)
    {
LABEL_51:
      result = v72 - a2;
      if (v72 - a2 <= v66)
      {
        goto LABEL_36;
      }

      goto LABEL_61;
    }

LABEL_49:
    if (*v69 == *v72)
    {
      v72 = (v72 + 1);
    }

    goto LABEL_51;
  }

  return 3;
}

unint64_t ZSTD_RowFindBestMatch_noDict_4_6(uint64_t a1, _DWORD *a2, _DWORD *a3, void *a4)
{
  v107 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 112);
  v5 = *(a1 + 56);
  v6 = *(a1 + 52);
  v7 = *(a1 + 8);
  v8 = a2 - v7;
  v9 = 1 << *(a1 + 256);
  if (a2 - v7 - *(a1 + 28) > v9 && *(a1 + 40) == 0)
  {
    v11 = a2 - v7 - v9;
  }

  else
  {
    v11 = *(a1 + 28);
  }

  v12 = *(a1 + 268);
  if (v12 >= 6)
  {
    LOBYTE(v12) = 6;
  }

  v13 = *(a1 + 96);
  if (*(a1 + 300))
  {
    v14 = ((-1640531535 * *a2) ^ v13) >> (24 - v6);
    *(a1 + 44) = v8;
  }

  else
  {
    v15 = a1 + 64;
    v16 = *(a1 + 44);
    if (v8 - v16 >= 0x181)
    {
      v17 = *(a1 + 56);
      v18 = *(a1 + 112);
      if (v16 <= 0xFFFFFF9F)
      {
        v77 = v16 + 96;
        do
        {
          v78 = ((-1640531535 * *(v7 + 8 + v16)) ^ *(a1 + 96)) >> (24 - v6);
          v79 = (v78 >> 2) & 0x3FFFFFC0;
          _X23 = v4 + 4 * v79;
          __asm
          {
            PRFM            #0, [X23]
            PRFM            #0, [X23,#0x40]
          }

          _X22 = v5 + v79;
          __asm
          {
            PRFM            #0, [X22]
            PRFM            #0, [X22,#0x20]
          }

          v86 = *(v15 + 4 * (v16 & 7));
          *(v15 + 4 * (v16 & 7)) = v78;
          v87 = (v86 >> 2) & 0x3FFFFFC0;
          v88 = v4 + 4 * v87;
          v89 = (v5 + v87);
          if (((*v89 - 1) & 0x3F) != 0)
          {
            v90 = 0;
          }

          else
          {
            v90 = 63;
          }

          v91 = v90 + ((*v89 - 1) & 0x3F);
          *v89 = v91;
          v89[v91] = v86;
          *(v88 + 4 * v91) = v16++;
        }

        while (v77 != v16);
        v18 = *(a1 + 112);
        v17 = *(a1 + 56);
      }

      v92 = v8 - 32;
      LODWORD(v16) = v8 - 32;
      v93 = a2 + 1 - (v7 + v92);
      if ((v93 + 1) < 8)
      {
        v94 = v93 + 1;
      }

      else
      {
        v94 = 8;
      }

      if (a2 + 1 >= v7 + v92)
      {
        v95 = v94;
      }

      else
      {
        v95 = 0;
      }

      if (v92 < v95 + v92)
      {
        v96 = *(a1 + 96);
        v97 = 24 - *(a1 + 52);
        do
        {
          v98 = ((-1640531535 * *(v7 + v92)) ^ v96) >> v97;
          v99 = (v98 >> 2) & 0x3FFFFFC0;
          _X25 = v18 + 4 * v99;
          __asm
          {
            PRFM            #0, [X25]
            PRFM            #0, [X25,#0x40]
          }

          _X24 = v17 + v99;
          __asm
          {
            PRFM            #0, [X24]
            PRFM            #0, [X24,#0x20]
          }

          *(v15 + 4 * (v92++ & 7)) = v98;
          --v95;
        }

        while (v95);
      }
    }

    else
    {
      v17 = *(a1 + 56);
      v18 = *(a1 + 112);
    }

    if (v16 >= v8)
    {
      v22 = v8;
    }

    else
    {
      v19 = *(a1 + 8) + 8;
      v20 = 24 - *(a1 + 52);
      v21 = v16;
      v22 = v8;
      do
      {
        v23 = ((-1640531535 * *(v19 + v21)) ^ *(a1 + 96)) >> v20;
        v24 = (v23 >> 2) & 0x3FFFFFC0;
        _X25 = v18 + 4 * v24;
        __asm
        {
          PRFM            #0, [X25]
          PRFM            #0, [X25,#0x40]
        }

        _X24 = v17 + v24;
        __asm
        {
          PRFM            #0, [X24]
          PRFM            #0, [X24,#0x20]
        }

        v34 = *(v15 + 4 * (v21 & 7));
        *(v15 + 4 * (v21 & 7)) = v23;
        v35 = (v34 >> 2) & 0x3FFFFFC0;
        v36 = v18 + 4 * v35;
        v37 = (v17 + v35);
        if (((*v37 - 1) & 0x3F) != 0)
        {
          v38 = 0;
        }

        else
        {
          v38 = 63;
        }

        v39 = v38 + ((*v37 - 1) & 0x3F);
        *v37 = v39;
        v37[v39] = v34;
        *(v36 + 4 * v39) = v21++;
      }

      while (v8 != v21);
    }

    *(a1 + 44) = v8;
    v40 = ((-1640531535 * *(v7 + v22 + 8)) ^ v13) >> (24 - v6);
    v41 = (v40 >> 2) & 0x3FFFFFC0;
    _X4 = v4 + 4 * v41;
    __asm
    {
      PRFM            #0, [X4]
      PRFM            #0, [X4,#0x40]
    }

    _X15 = v5 + v41;
    __asm
    {
      PRFM            #0, [X15]
      PRFM            #0, [X15,#0x20]
    }

    v14 = *(v15 + 4 * (v8 & 7));
    *(v15 + 4 * (v8 & 7)) = v40;
  }

  *(a1 + 104) += v14;
  v48 = (v14 >> 2) & 0x3FFFFFC0;
  v49 = v4 + 4 * v48;
  v50 = (v5 + v48);
  v51 = *v50;
  v108 = vld4q_s8(v50);
  v52 = vdupq_n_s8(v14);
  v108.val[0] = vsriq_n_s8(vsriq_n_s8(vceqq_s8(v108.val[3], v52), vceqq_s8(v108.val[2], v52), 1uLL), vsriq_n_s8(vceqq_s8(v108.val[1], v52), vceqq_s8(v108.val[0], v52), 1uLL), 2uLL);
  v53 = vshrn_n_s16(vsriq_n_s8(v108.val[0], v108.val[0], 4uLL), 4uLL);
  v54 = 0;
  if (v53)
  {
    v55 = 1 << v12;
    v56 = __ROR8__(*&v53, v51);
    do
    {
      v57 = (__clz(__rbit64(v56)) + v51) & 0x3F;
      if (v57)
      {
        v58 = *(v49 + 4 * v57);
        if (v58 < v11)
        {
          break;
        }

        _X6 = v7 + v58;
        __asm { PRFM            #0, [X6] }

        v106[v54++] = v58;
        --v55;
      }

      v56 &= v56 - 1;
    }

    while (v56 && v55);
  }

  if (((v51 - 1) & 0x3F) != 0)
  {
    v61 = 0;
  }

  else
  {
    v61 = 63;
  }

  v62 = v61 + ((v51 - 1) & 0x3F);
  *v50 = v62;
  v50[v62] = v14;
  v63 = *(a1 + 44);
  *(a1 + 44) = v63 + 1;
  *(v49 + 4 * v62) = v63;
  if (v54)
  {
    v64 = 0;
    v65 = a3 - 7;
    v66 = a3 - 1;
    v67 = v8 + 3;
    v68 = 3;
    while (1)
    {
      v70 = v106[v64];
      v71 = (v7 + v70);
      if (*(v7 + v70 + v68 - 3) != *(a2 + v68 - 3))
      {
        goto LABEL_34;
      }

      if (v65 <= a2)
      {
        v74 = a2;
        goto LABEL_44;
      }

      v72 = *v71;
      if (v72 == *a2)
      {
        break;
      }

      result = __clz(__rbit64(*a2 ^ v72)) >> 3;
      if (result <= v68)
      {
        goto LABEL_34;
      }

LABEL_59:
      *a4 = v67 - v70;
      v68 = result;
      if ((a2 + result) == a3)
      {
        return result;
      }

LABEL_34:
      ++v64;
      result = v68;
      if (v64 == v54)
      {
        return result;
      }
    }

    v71 = (v7 + 8 + v70);
    v73 = a2 + 2;
    while (1)
    {
      v74 = v73;
      if (v73 >= v65)
      {
        break;
      }

      v76 = *v71;
      v71 += 4;
      v75 = v76;
      ++v73;
      if (v76 != *v74)
      {
        result = v74 + (__clz(__rbit64(*v74 ^ v75)) >> 3) - a2;
        if (result <= v68)
        {
          goto LABEL_34;
        }

        goto LABEL_59;
      }
    }

LABEL_44:
    if (v74 < (a3 - 3))
    {
      if (*v71 == *v74)
      {
        v71 += 2;
        v74 = (v74 + 4);
      }

      if (v74 >= v66)
      {
LABEL_46:
        if (v74 >= a3)
        {
          goto LABEL_49;
        }

        goto LABEL_47;
      }
    }

    else if (v74 >= v66)
    {
      goto LABEL_46;
    }

    if (*v71 == *v74)
    {
      ++v71;
      v74 = (v74 + 2);
    }

    if (v74 >= a3)
    {
LABEL_49:
      result = v74 - a2;
      if (v74 - a2 <= v68)
      {
        goto LABEL_34;
      }

      goto LABEL_59;
    }

LABEL_47:
    if (*v71 == *v74)
    {
      v74 = (v74 + 1);
    }

    goto LABEL_49;
  }

  return 3;
}

unint64_t ZSTD_RowFindBestMatch_noDict_5_4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v97 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 112);
  v5 = *(a1 + 56);
  v6 = *(a1 + 52);
  v7 = *(a1 + 8);
  v8 = a2 - v7;
  v9 = 1 << *(a1 + 256);
  if (a2 - v7 - *(a1 + 28) > v9 && *(a1 + 40) == 0)
  {
    v11 = a2 - v7 - v9;
  }

  else
  {
    v11 = *(a1 + 28);
  }

  v12 = *(a1 + 268);
  if (v12 >= 4)
  {
    LOBYTE(v12) = 4;
  }

  v13 = *(a1 + 96);
  if (*(a1 + 300))
  {
    _X15 = ((0xCF1BBCDCBB000000 * *a2) ^ v13) >> (56 - v6);
    *(a1 + 44) = v8;
  }

  else
  {
    v15 = a1 + 64;
    v16 = *(a1 + 44);
    if (v8 - v16 >= 0x181)
    {
      v17 = *(a1 + 56);
      v18 = *(a1 + 112);
      if (v16 <= 0xFFFFFF9F)
      {
        v71 = v16 + 96;
        do
        {
          v72 = ((0xCF1BBCDCBB000000 * *(v7 + 8 + v16)) ^ *(a1 + 96)) >> (56 - v6);
          v73 = (v72 >> 4) & 0xFFFFFF0;
          _X23 = v4 + 4 * v73;
          __asm { PRFM            #0, [X23] }

          _X22 = v5 + v73;
          __asm { PRFM            #0, [X22] }

          v78 = *(v15 + 4 * (v16 & 7));
          *(v15 + 4 * (v16 & 7)) = v72;
          v79 = (v78 >> 4) & 0xFFFFFF0;
          v80 = v4 + 4 * v79;
          v81 = (v5 + v79);
          if (((*v81 - 1) & 0xF) != 0)
          {
            v82 = 0;
          }

          else
          {
            v82 = 15;
          }

          v83 = v82 + ((*v81 - 1) & 0xF);
          *v81 = v83;
          v81[v83] = v78;
          *(v80 + 4 * v83) = v16++;
        }

        while (v71 != v16);
        v18 = *(a1 + 112);
        v17 = *(a1 + 56);
      }

      v84 = v8 - 32;
      LODWORD(v16) = v8 - 32;
      v85 = a2 + 1 - (v7 + v84);
      if ((v85 + 1) < 8)
      {
        v86 = v85 + 1;
      }

      else
      {
        v86 = 8;
      }

      if (a2 + 1 >= v7 + v84)
      {
        v87 = v86;
      }

      else
      {
        v87 = 0;
      }

      if (v84 < v87 + v84)
      {
        v88 = *(a1 + 96);
        v89 = 56 - *(a1 + 52);
        do
        {
          v90 = ((0xCF1BBCDCBB000000 * *(v7 + v84)) ^ v88) >> v89;
          v91 = (v90 >> 4) & 0xFFFFFF0;
          _X25 = v18 + 4 * v91;
          __asm { PRFM            #0, [X25] }

          _X24 = v17 + v91;
          __asm { PRFM            #0, [X24] }

          *(v15 + 4 * (v84++ & 7)) = v90;
          --v87;
        }

        while (v87);
      }
    }

    else
    {
      v17 = *(a1 + 56);
      v18 = *(a1 + 112);
    }

    if (v16 >= v8)
    {
      v22 = v8;
    }

    else
    {
      v19 = *(a1 + 8) + 8;
      v20 = 56 - *(a1 + 52);
      v21 = v16;
      v22 = v8;
      do
      {
        v23 = ((0xCF1BBCDCBB000000 * *(v19 + v21)) ^ *(a1 + 96)) >> v20;
        v24 = (v23 >> 4) & 0xFFFFFF0;
        _X25 = v18 + 4 * v24;
        __asm { PRFM            #0, [X25] }

        _X24 = v17 + v24;
        __asm { PRFM            #0, [X24] }

        v32 = *(v15 + 4 * (v21 & 7));
        *(v15 + 4 * (v21 & 7)) = v23;
        v33 = (v32 >> 4) & 0xFFFFFF0;
        v34 = v18 + 4 * v33;
        v35 = (v17 + v33);
        if (((*v35 - 1) & 0xF) != 0)
        {
          v36 = 0;
        }

        else
        {
          v36 = 15;
        }

        v37 = v36 + ((*v35 - 1) & 0xF);
        *v35 = v37;
        v35[v37] = v32;
        *(v34 + 4 * v37) = v21++;
      }

      while (v8 != v21);
    }

    *(a1 + 44) = v8;
    v38 = ((0xCF1BBCDCBB000000 * *(v7 + v22 + 8)) ^ v13) >> (56 - v6);
    v39 = (v38 >> 4) & 0xFFFFFF0;
    _X4 = v4 + 4 * v39;
    __asm { PRFM            #0, [X4] }

    _X15 = v5 + v39;
    __asm { PRFM            #0, [X15] }

    LODWORD(_X15) = *(v15 + 4 * (v8 & 7));
    *(v15 + 4 * (v8 & 7)) = v38;
  }

  *(a1 + 104) += _X15;
  v43 = (_X15 >> 4) & 0xFFFFFF0;
  v44 = v4 + 4 * v43;
  v45 = (v5 + v43);
  v46 = 4 * v45->i8[0];
  v47 = *v45;
  v48 = __ROR8__(vshrn_n_s16(vceqq_s8(*v45, vdupq_n_s8(_X15)), 4uLL), v46) & 0x8888888888888888;
  if (v48)
  {
    v49 = 0;
    v50 = 1 << v12;
    do
    {
      v51 = ((__clz(__rbit64(v48)) + (v46 & 0xFC)) >> 2) & 0xF;
      if (v51)
      {
        v52 = *(v44 + 4 * v51);
        if (v52 < v11)
        {
          break;
        }

        _X7 = v7 + v52;
        __asm { PRFM            #0, [X7] }

        v96[v49++] = v52;
        --v50;
      }

      v48 &= v48 - 1;
    }

    while (v48 && v50);
  }

  else
  {
    v49 = 0;
  }

  if (((v47 - 1) & 0xF) != 0)
  {
    v55 = 0;
  }

  else
  {
    v55 = 15;
  }

  v56 = v55 + ((v47 - 1) & 0xF);
  v45->i8[0] = v56;
  v45->i8[v56] = _X15;
  v57 = *(a1 + 44);
  *(a1 + 44) = v57 + 1;
  *(v44 + 4 * v56) = v57;
  if (v49)
  {
    v58 = 0;
    v59 = a3 - 7;
    v60 = a3 - 1;
    v61 = v8 + 3;
    v62 = 3;
    while (1)
    {
      v64 = v96[v58];
      v65 = (v7 + v64);
      if (*(v7 + v64 + v62 - 3) != *(a2 + v62 - 3))
      {
        goto LABEL_36;
      }

      if (v59 <= a2)
      {
        v68 = a2;
        goto LABEL_46;
      }

      v66 = *v65;
      if (v66 == *a2)
      {
        break;
      }

      result = __clz(__rbit64(*a2 ^ v66)) >> 3;
      if (result <= v62)
      {
        goto LABEL_36;
      }

LABEL_61:
      *a4 = v61 - v64;
      v62 = result;
      if ((a2 + result) == a3)
      {
        return result;
      }

LABEL_36:
      ++v58;
      result = v62;
      if (v58 == v49)
      {
        return result;
      }
    }

    v65 = (v7 + 8 + v64);
    v67 = a2 + 1;
    while (1)
    {
      v68 = v67;
      if (v67 >= v59)
      {
        break;
      }

      v70 = *v65;
      v65 += 4;
      v69 = v70;
      ++v67;
      if (v70 != *v68)
      {
        result = v68 + (__clz(__rbit64(*v68 ^ v69)) >> 3) - a2;
        if (result <= v62)
        {
          goto LABEL_36;
        }

        goto LABEL_61;
      }
    }

LABEL_46:
    if (v68 < (a3 - 3))
    {
      if (*v65 == *v68)
      {
        v65 += 2;
        v68 = (v68 + 4);
      }

      if (v68 >= v60)
      {
LABEL_48:
        if (v68 >= a3)
        {
          goto LABEL_51;
        }

        goto LABEL_49;
      }
    }

    else if (v68 >= v60)
    {
      goto LABEL_48;
    }

    if (*v65 == *v68)
    {
      ++v65;
      v68 = (v68 + 2);
    }

    if (v68 >= a3)
    {
LABEL_51:
      result = v68 - a2;
      if (v68 - a2 <= v62)
      {
        goto LABEL_36;
      }

      goto LABEL_61;
    }

LABEL_49:
    if (*v65 == *v68)
    {
      v68 = (v68 + 1);
    }

    goto LABEL_51;
  }

  return 3;
}

unint64_t ZSTD_RowFindBestMatch_noDict_5_5(uint64_t a1, void *a2, void *a3, void *a4)
{
  v102 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 112);
  v5 = *(a1 + 56);
  v6 = *(a1 + 52);
  v7 = *(a1 + 8);
  v8 = a2 - v7;
  v9 = 1 << *(a1 + 256);
  if (a2 - v7 - *(a1 + 28) > v9 && *(a1 + 40) == 0)
  {
    v11 = a2 - v7 - v9;
  }

  else
  {
    v11 = *(a1 + 28);
  }

  v12 = *(a1 + 268);
  if (v12 >= 5)
  {
    LOBYTE(v12) = 5;
  }

  v13 = *(a1 + 96);
  if (*(a1 + 300))
  {
    _X15 = ((0xCF1BBCDCBB000000 * *a2) ^ v13) >> (56 - v6);
    *(a1 + 44) = v8;
  }

  else
  {
    v15 = a1 + 64;
    v16 = *(a1 + 44);
    if (v8 - v16 >= 0x181)
    {
      v17 = *(a1 + 56);
      v18 = *(a1 + 112);
      if (v16 <= 0xFFFFFF9F)
      {
        v74 = v16 + 96;
        do
        {
          v75 = ((0xCF1BBCDCBB000000 * *(v7 + 8 + v16)) ^ *(a1 + 96)) >> (56 - v6);
          v76 = (v75 >> 3) & 0x1FFFFFE0;
          _X23 = v4 + 4 * v76;
          __asm
          {
            PRFM            #0, [X23]
            PRFM            #0, [X23,#0x40]
          }

          _X22 = v5 + v76;
          __asm { PRFM            #0, [X22] }

          v82 = *(v15 + 4 * (v16 & 7));
          *(v15 + 4 * (v16 & 7)) = v75;
          v83 = (v82 >> 3) & 0x1FFFFFE0;
          v84 = v4 + 4 * v83;
          v85 = (v5 + v83);
          if (((*v85 - 1) & 0x1F) != 0)
          {
            v86 = 0;
          }

          else
          {
            v86 = 31;
          }

          v87 = v86 + ((*v85 - 1) & 0x1F);
          *v85 = v87;
          v85[v87] = v82;
          *(v84 + 4 * v87) = v16++;
        }

        while (v74 != v16);
        v18 = *(a1 + 112);
        v17 = *(a1 + 56);
      }

      v88 = v8 - 32;
      LODWORD(v16) = v8 - 32;
      v89 = a2 + 1 - (v7 + v88);
      if ((v89 + 1) < 8)
      {
        v90 = v89 + 1;
      }

      else
      {
        v90 = 8;
      }

      if (a2 + 1 >= v7 + v88)
      {
        v91 = v90;
      }

      else
      {
        v91 = 0;
      }

      if (v88 < v91 + v88)
      {
        v92 = *(a1 + 96);
        v93 = 56 - *(a1 + 52);
        do
        {
          v94 = ((0xCF1BBCDCBB000000 * *(v7 + v88)) ^ v92) >> v93;
          v95 = (v94 >> 3) & 0x1FFFFFE0;
          _X25 = v18 + 4 * v95;
          __asm
          {
            PRFM            #0, [X25]
            PRFM            #0, [X25,#0x40]
          }

          _X24 = v17 + v95;
          __asm { PRFM            #0, [X24] }

          *(v15 + 4 * (v88++ & 7)) = v94;
          --v91;
        }

        while (v91);
      }
    }

    else
    {
      v17 = *(a1 + 56);
      v18 = *(a1 + 112);
    }

    if (v16 >= v8)
    {
      v22 = v8;
    }

    else
    {
      v19 = *(a1 + 8) + 8;
      v20 = 56 - *(a1 + 52);
      v21 = v16;
      v22 = v8;
      do
      {
        v23 = ((0xCF1BBCDCBB000000 * *(v19 + v21)) ^ *(a1 + 96)) >> v20;
        v24 = (v23 >> 3) & 0x1FFFFFE0;
        _X25 = v18 + 4 * v24;
        __asm
        {
          PRFM            #0, [X25]
          PRFM            #0, [X25,#0x40]
        }

        _X24 = v17 + v24;
        __asm { PRFM            #0, [X24] }

        v33 = *(v15 + 4 * (v21 & 7));
        *(v15 + 4 * (v21 & 7)) = v23;
        v34 = (v33 >> 3) & 0x1FFFFFE0;
        v35 = v18 + 4 * v34;
        v36 = (v17 + v34);
        if (((*v36 - 1) & 0x1F) != 0)
        {
          v37 = 0;
        }

        else
        {
          v37 = 31;
        }

        v38 = v37 + ((*v36 - 1) & 0x1F);
        *v36 = v38;
        v36[v38] = v33;
        *(v35 + 4 * v38) = v21++;
      }

      while (v8 != v21);
    }

    *(a1 + 44) = v8;
    v39 = ((0xCF1BBCDCBB000000 * *(v7 + v22 + 8)) ^ v13) >> (56 - v6);
    v40 = (v39 >> 3) & 0x1FFFFFE0;
    _X4 = v4 + 4 * v40;
    __asm
    {
      PRFM            #0, [X4]
      PRFM            #0, [X4,#0x40]
    }

    _X15 = v5 + v40;
    __asm { PRFM            #0, [X15] }

    LODWORD(_X15) = *(v15 + 4 * (v8 & 7));
    *(v15 + 4 * (v8 & 7)) = v39;
  }

  *(a1 + 104) += _X15;
  v45 = (_X15 >> 3) & 0x1FFFFFE0;
  v46 = v4 + 4 * v45;
  v47 = (v5 + v45);
  v103 = vld2q_s16(v47);
  v48 = *v47;
  v49 = 2 * *v47;
  v50 = vdupq_n_s8(_X15);
  v51 = __ROR8__(vsli_n_s8(vshrn_n_s16(vceqq_s8(v50, v103.val[0]), 6uLL), vshrn_n_s16(vceqq_s8(v50, v103.val[1]), 6uLL), 4uLL), v49) & 0x5555555555555555;
  if (v51)
  {
    v52 = 0;
    v53 = 1 << v12;
    do
    {
      v54 = ((__clz(__rbit64(v51)) + (v49 & 0xFE)) >> 1) & 0x1F;
      if (v54)
      {
        v55 = *(v46 + 4 * v54);
        if (v55 < v11)
        {
          break;
        }

        _X7 = v7 + v55;
        __asm { PRFM            #0, [X7] }

        v101[v52++] = v55;
        --v53;
      }

      v51 &= v51 - 1;
    }

    while (v51 && v53);
  }

  else
  {
    v52 = 0;
  }

  if (((v48 - 1) & 0x1F) != 0)
  {
    v58 = 0;
  }

  else
  {
    v58 = 31;
  }

  v59 = v58 + ((v48 - 1) & 0x1F);
  *v47 = v59;
  *(v47 + v59) = _X15;
  v60 = *(a1 + 44);
  *(a1 + 44) = v60 + 1;
  *(v46 + 4 * v59) = v60;
  if (v52)
  {
    v61 = 0;
    v62 = a3 - 7;
    v63 = a3 - 1;
    v64 = v8 + 3;
    v65 = 3;
    while (1)
    {
      v67 = v101[v61];
      v68 = (v7 + v67);
      if (*(v7 + v67 + v65 - 3) != *(a2 + v65 - 3))
      {
        goto LABEL_36;
      }

      if (v62 <= a2)
      {
        v71 = a2;
        goto LABEL_46;
      }

      v69 = *v68;
      if (v69 == *a2)
      {
        break;
      }

      result = __clz(__rbit64(*a2 ^ v69)) >> 3;
      if (result <= v65)
      {
        goto LABEL_36;
      }

LABEL_61:
      *a4 = v64 - v67;
      v65 = result;
      if ((a2 + result) == a3)
      {
        return result;
      }

LABEL_36:
      ++v61;
      result = v65;
      if (v61 == v52)
      {
        return result;
      }
    }

    v68 = (v7 + 8 + v67);
    v70 = a2 + 1;
    while (1)
    {
      v71 = v70;
      if (v70 >= v62)
      {
        break;
      }

      v73 = *v68;
      v68 += 4;
      v72 = v73;
      ++v70;
      if (v73 != *v71)
      {
        result = v71 + (__clz(__rbit64(*v71 ^ v72)) >> 3) - a2;
        if (result <= v65)
        {
          goto LABEL_36;
        }

        goto LABEL_61;
      }
    }

LABEL_46:
    if (v71 < (a3 - 3))
    {
      if (*v68 == *v71)
      {
        v68 += 2;
        v71 = (v71 + 4);
      }

      if (v71 >= v63)
      {
LABEL_48:
        if (v71 >= a3)
        {
          goto LABEL_51;
        }

        goto LABEL_49;
      }
    }

    else if (v71 >= v63)
    {
      goto LABEL_48;
    }

    if (*v68 == *v71)
    {
      ++v68;
      v71 = (v71 + 2);
    }

    if (v71 >= a3)
    {
LABEL_51:
      result = v71 - a2;
      if (v71 - a2 <= v65)
      {
        goto LABEL_36;
      }

      goto LABEL_61;
    }

LABEL_49:
    if (*v68 == *v71)
    {
      v71 = (v71 + 1);
    }

    goto LABEL_51;
  }

  return 3;
}

unint64_t ZSTD_RowFindBestMatch_noDict_5_6(uint64_t a1, void *a2, void *a3, void *a4)
{
  v106 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 112);
  v5 = *(a1 + 56);
  v6 = *(a1 + 52);
  v7 = *(a1 + 8);
  v8 = a2 - v7;
  v9 = 1 << *(a1 + 256);
  if (a2 - v7 - *(a1 + 28) > v9 && *(a1 + 40) == 0)
  {
    v11 = a2 - v7 - v9;
  }

  else
  {
    v11 = *(a1 + 28);
  }

  v12 = *(a1 + 268);
  if (v12 >= 6)
  {
    LOBYTE(v12) = 6;
  }

  v13 = *(a1 + 96);
  if (*(a1 + 300))
  {
    _X15 = ((0xCF1BBCDCBB000000 * *a2) ^ v13) >> (56 - v6);
    *(a1 + 44) = v8;
  }

  else
  {
    v15 = a1 + 64;
    v16 = *(a1 + 44);
    if (v8 - v16 >= 0x181)
    {
      v17 = *(a1 + 56);
      v18 = *(a1 + 112);
      if (v16 <= 0xFFFFFF9F)
      {
        v76 = v16 + 96;
        do
        {
          v77 = ((0xCF1BBCDCBB000000 * *(v7 + 8 + v16)) ^ *(a1 + 96)) >> (56 - v6);
          v78 = (v77 >> 2) & 0x3FFFFFC0;
          _X23 = v4 + 4 * v78;
          __asm
          {
            PRFM            #0, [X23]
            PRFM            #0, [X23,#0x40]
          }

          _X22 = v5 + v78;
          __asm
          {
            PRFM            #0, [X22]
            PRFM            #0, [X22,#0x20]
          }

          v85 = *(v15 + 4 * (v16 & 7));
          *(v15 + 4 * (v16 & 7)) = v77;
          v86 = (v85 >> 2) & 0x3FFFFFC0;
          v87 = v4 + 4 * v86;
          v88 = (v5 + v86);
          if (((*v88 - 1) & 0x3F) != 0)
          {
            v89 = 0;
          }

          else
          {
            v89 = 63;
          }

          v90 = v89 + ((*v88 - 1) & 0x3F);
          *v88 = v90;
          v88[v90] = v85;
          *(v87 + 4 * v90) = v16++;
        }

        while (v76 != v16);
        v18 = *(a1 + 112);
        v17 = *(a1 + 56);
      }

      v91 = v8 - 32;
      LODWORD(v16) = v8 - 32;
      v92 = a2 + 1 - (v7 + v91);
      if ((v92 + 1) < 8)
      {
        v93 = v92 + 1;
      }

      else
      {
        v93 = 8;
      }

      if (a2 + 1 >= v7 + v91)
      {
        v94 = v93;
      }

      else
      {
        v94 = 0;
      }

      if (v91 < v94 + v91)
      {
        v95 = *(a1 + 96);
        v96 = 56 - *(a1 + 52);
        do
        {
          v97 = ((0xCF1BBCDCBB000000 * *(v7 + v91)) ^ v95) >> v96;
          v98 = (v97 >> 2) & 0x3FFFFFC0;
          _X25 = v18 + 4 * v98;
          __asm
          {
            PRFM            #0, [X25]
            PRFM            #0, [X25,#0x40]
          }

          _X24 = v17 + v98;
          __asm
          {
            PRFM            #0, [X24]
            PRFM            #0, [X24,#0x20]
          }

          *(v15 + 4 * (v91++ & 7)) = v97;
          --v94;
        }

        while (v94);
      }
    }

    else
    {
      v17 = *(a1 + 56);
      v18 = *(a1 + 112);
    }

    if (v16 >= v8)
    {
      v22 = v8;
    }

    else
    {
      v19 = *(a1 + 8) + 8;
      v20 = 56 - *(a1 + 52);
      v21 = v16;
      v22 = v8;
      do
      {
        v23 = ((0xCF1BBCDCBB000000 * *(v19 + v21)) ^ *(a1 + 96)) >> v20;
        v24 = (v23 >> 2) & 0x3FFFFFC0;
        _X25 = v18 + 4 * v24;
        __asm
        {
          PRFM            #0, [X25]
          PRFM            #0, [X25,#0x40]
        }

        _X24 = v17 + v24;
        __asm
        {
          PRFM            #0, [X24]
          PRFM            #0, [X24,#0x20]
        }

        v34 = *(v15 + 4 * (v21 & 7));
        *(v15 + 4 * (v21 & 7)) = v23;
        v35 = (v34 >> 2) & 0x3FFFFFC0;
        v36 = v18 + 4 * v35;
        v37 = (v17 + v35);
        if (((*v37 - 1) & 0x3F) != 0)
        {
          v38 = 0;
        }

        else
        {
          v38 = 63;
        }

        v39 = v38 + ((*v37 - 1) & 0x3F);
        *v37 = v39;
        v37[v39] = v34;
        *(v36 + 4 * v39) = v21++;
      }

      while (v8 != v21);
    }

    *(a1 + 44) = v8;
    v40 = ((0xCF1BBCDCBB000000 * *(v7 + v22 + 8)) ^ v13) >> (56 - v6);
    v41 = (v40 >> 2) & 0x3FFFFFC0;
    _X4 = v4 + 4 * v41;
    __asm
    {
      PRFM            #0, [X4]
      PRFM            #0, [X4,#0x40]
    }

    _X15 = v5 + v41;
    __asm
    {
      PRFM            #0, [X15]
      PRFM            #0, [X15,#0x20]
    }

    LODWORD(_X15) = *(v15 + 4 * (v8 & 7));
    *(v15 + 4 * (v8 & 7)) = v40;
  }

  *(a1 + 104) += _X15;
  v47 = (_X15 >> 2) & 0x3FFFFFC0;
  v48 = v4 + 4 * v47;
  v49 = (v5 + v47);
  v50 = *v49;
  v107 = vld4q_s8(v49);
  v51 = vdupq_n_s8(_X15);
  v107.val[0] = vsriq_n_s8(vsriq_n_s8(vceqq_s8(v107.val[3], v51), vceqq_s8(v107.val[2], v51), 1uLL), vsriq_n_s8(vceqq_s8(v107.val[1], v51), vceqq_s8(v107.val[0], v51), 1uLL), 2uLL);
  v52 = vshrn_n_s16(vsriq_n_s8(v107.val[0], v107.val[0], 4uLL), 4uLL);
  v53 = 0;
  if (v52)
  {
    v54 = 1 << v12;
    v55 = __ROR8__(*&v52, v50);
    do
    {
      v56 = (__clz(__rbit64(v55)) + v50) & 0x3F;
      if (v56)
      {
        v57 = *(v48 + 4 * v56);
        if (v57 < v11)
        {
          break;
        }

        _X6 = v7 + v57;
        __asm { PRFM            #0, [X6] }

        v105[v53++] = v57;
        --v54;
      }

      v55 &= v55 - 1;
    }

    while (v55 && v54);
  }

  if (((v50 - 1) & 0x3F) != 0)
  {
    v60 = 0;
  }

  else
  {
    v60 = 63;
  }

  v61 = v60 + ((v50 - 1) & 0x3F);
  *v49 = v61;
  v49[v61] = _X15;
  v62 = *(a1 + 44);
  *(a1 + 44) = v62 + 1;
  *(v48 + 4 * v61) = v62;
  if (v53)
  {
    v63 = 0;
    v64 = a3 - 7;
    v65 = a3 - 1;
    v66 = v8 + 3;
    v67 = 3;
    while (1)
    {
      v69 = v105[v63];
      v70 = (v7 + v69);
      if (*(v7 + v69 + v67 - 3) != *(a2 + v67 - 3))
      {
        goto LABEL_34;
      }

      if (v64 <= a2)
      {
        v73 = a2;
        goto LABEL_44;
      }

      v71 = *v70;
      if (v71 == *a2)
      {
        break;
      }

      result = __clz(__rbit64(*a2 ^ v71)) >> 3;
      if (result <= v67)
      {
        goto LABEL_34;
      }

LABEL_59:
      *a4 = v66 - v69;
      v67 = result;
      if ((a2 + result) == a3)
      {
        return result;
      }

LABEL_34:
      ++v63;
      result = v67;
      if (v63 == v53)
      {
        return result;
      }
    }

    v70 = (v7 + 8 + v69);
    v72 = a2 + 1;
    while (1)
    {
      v73 = v72;
      if (v72 >= v64)
      {
        break;
      }

      v75 = *v70;
      v70 += 4;
      v74 = v75;
      ++v72;
      if (v75 != *v73)
      {
        result = v73 + (__clz(__rbit64(*v73 ^ v74)) >> 3) - a2;
        if (result <= v67)
        {
          goto LABEL_34;
        }

        goto LABEL_59;
      }
    }

LABEL_44:
    if (v73 < (a3 - 3))
    {
      if (*v70 == *v73)
      {
        v70 += 2;
        v73 = (v73 + 4);
      }

      if (v73 >= v65)
      {
LABEL_46:
        if (v73 >= a3)
        {
          goto LABEL_49;
        }

        goto LABEL_47;
      }
    }

    else if (v73 >= v65)
    {
      goto LABEL_46;
    }

    if (*v70 == *v73)
    {
      ++v70;
      v73 = (v73 + 2);
    }

    if (v73 >= a3)
    {
LABEL_49:
      result = v73 - a2;
      if (v73 - a2 <= v67)
      {
        goto LABEL_34;
      }

      goto LABEL_59;
    }

LABEL_47:
    if (*v70 == *v73)
    {
      v73 = (v73 + 1);
    }

    goto LABEL_49;
  }

  return 3;
}

unint64_t ZSTD_RowFindBestMatch_noDict_6_4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v97 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 112);
  v5 = *(a1 + 56);
  v6 = *(a1 + 52);
  v7 = *(a1 + 8);
  v8 = a2 - v7;
  v9 = 1 << *(a1 + 256);
  if (a2 - v7 - *(a1 + 28) > v9 && *(a1 + 40) == 0)
  {
    v11 = a2 - v7 - v9;
  }

  else
  {
    v11 = *(a1 + 28);
  }

  v12 = *(a1 + 268);
  if (v12 >= 4)
  {
    LOBYTE(v12) = 4;
  }

  v13 = *(a1 + 96);
  if (*(a1 + 300))
  {
    _X15 = ((0xCF1BBCDCBF9B0000 * *a2) ^ v13) >> (56 - v6);
    *(a1 + 44) = v8;
  }

  else
  {
    v15 = a1 + 64;
    v16 = *(a1 + 44);
    if (v8 - v16 >= 0x181)
    {
      v17 = *(a1 + 56);
      v18 = *(a1 + 112);
      if (v16 <= 0xFFFFFF9F)
      {
        v71 = v16 + 96;
        do
        {
          v72 = ((0xCF1BBCDCBF9B0000 * *(v7 + 8 + v16)) ^ *(a1 + 96)) >> (56 - v6);
          v73 = (v72 >> 4) & 0xFFFFFF0;
          _X23 = v4 + 4 * v73;
          __asm { PRFM            #0, [X23] }

          _X22 = v5 + v73;
          __asm { PRFM            #0, [X22] }

          v78 = *(v15 + 4 * (v16 & 7));
          *(v15 + 4 * (v16 & 7)) = v72;
          v79 = (v78 >> 4) & 0xFFFFFF0;
          v80 = v4 + 4 * v79;
          v81 = (v5 + v79);
          if (((*v81 - 1) & 0xF) != 0)
          {
            v82 = 0;
          }

          else
          {
            v82 = 15;
          }

          v83 = v82 + ((*v81 - 1) & 0xF);
          *v81 = v83;
          v81[v83] = v78;
          *(v80 + 4 * v83) = v16++;
        }

        while (v71 != v16);
        v18 = *(a1 + 112);
        v17 = *(a1 + 56);
      }

      v84 = v8 - 32;
      LODWORD(v16) = v8 - 32;
      v85 = a2 + 1 - (v7 + v84);
      if ((v85 + 1) < 8)
      {
        v86 = v85 + 1;
      }

      else
      {
        v86 = 8;
      }

      if (a2 + 1 >= v7 + v84)
      {
        v87 = v86;
      }

      else
      {
        v87 = 0;
      }

      if (v84 < v87 + v84)
      {
        v88 = *(a1 + 96);
        v89 = 56 - *(a1 + 52);
        do
        {
          v90 = ((0xCF1BBCDCBF9B0000 * *(v7 + v84)) ^ v88) >> v89;
          v91 = (v90 >> 4) & 0xFFFFFF0;
          _X25 = v18 + 4 * v91;
          __asm { PRFM            #0, [X25] }

          _X24 = v17 + v91;
          __asm { PRFM            #0, [X24] }

          *(v15 + 4 * (v84++ & 7)) = v90;
          --v87;
        }

        while (v87);
      }
    }

    else
    {
      v17 = *(a1 + 56);
      v18 = *(a1 + 112);
    }

    if (v16 >= v8)
    {
      v22 = v8;
    }

    else
    {
      v19 = *(a1 + 8) + 8;
      v20 = 56 - *(a1 + 52);
      v21 = v16;
      v22 = v8;
      do
      {
        v23 = ((0xCF1BBCDCBF9B0000 * *(v19 + v21)) ^ *(a1 + 96)) >> v20;
        v24 = (v23 >> 4) & 0xFFFFFF0;
        _X25 = v18 + 4 * v24;
        __asm { PRFM            #0, [X25] }

        _X24 = v17 + v24;
        __asm { PRFM            #0, [X24] }

        v32 = *(v15 + 4 * (v21 & 7));
        *(v15 + 4 * (v21 & 7)) = v23;
        v33 = (v32 >> 4) & 0xFFFFFF0;
        v34 = v18 + 4 * v33;
        v35 = (v17 + v33);
        if (((*v35 - 1) & 0xF) != 0)
        {
          v36 = 0;
        }

        else
        {
          v36 = 15;
        }

        v37 = v36 + ((*v35 - 1) & 0xF);
        *v35 = v37;
        v35[v37] = v32;
        *(v34 + 4 * v37) = v21++;
      }

      while (v8 != v21);
    }

    *(a1 + 44) = v8;
    v38 = ((0xCF1BBCDCBF9B0000 * *(v7 + v22 + 8)) ^ v13) >> (56 - v6);
    v39 = (v38 >> 4) & 0xFFFFFF0;
    _X4 = v4 + 4 * v39;
    __asm { PRFM            #0, [X4] }

    _X15 = v5 + v39;
    __asm { PRFM            #0, [X15] }

    LODWORD(_X15) = *(v15 + 4 * (v8 & 7));
    *(v15 + 4 * (v8 & 7)) = v38;
  }

  *(a1 + 104) += _X15;
  v43 = (_X15 >> 4) & 0xFFFFFF0;
  v44 = v4 + 4 * v43;
  v45 = (v5 + v43);
  v46 = 4 * v45->i8[0];
  v47 = *v45;
  v48 = __ROR8__(vshrn_n_s16(vceqq_s8(*v45, vdupq_n_s8(_X15)), 4uLL), v46) & 0x8888888888888888;
  if (v48)
  {
    v49 = 0;
    v50 = 1 << v12;
    do
    {
      v51 = ((__clz(__rbit64(v48)) + (v46 & 0xFC)) >> 2) & 0xF;
      if (v51)
      {
        v52 = *(v44 + 4 * v51);
        if (v52 < v11)
        {
          break;
        }

        _X7 = v7 + v52;
        __asm { PRFM            #0, [X7] }

        v96[v49++] = v52;
        --v50;
      }

      v48 &= v48 - 1;
    }

    while (v48 && v50);
  }

  else
  {
    v49 = 0;
  }

  if (((v47 - 1) & 0xF) != 0)
  {
    v55 = 0;
  }

  else
  {
    v55 = 15;
  }

  v56 = v55 + ((v47 - 1) & 0xF);
  v45->i8[0] = v56;
  v45->i8[v56] = _X15;
  v57 = *(a1 + 44);
  *(a1 + 44) = v57 + 1;
  *(v44 + 4 * v56) = v57;
  if (v49)
  {
    v58 = 0;
    v59 = a3 - 7;
    v60 = a3 - 1;
    v61 = v8 + 3;
    v62 = 3;
    while (1)
    {
      v64 = v96[v58];
      v65 = (v7 + v64);
      if (*(v7 + v64 + v62 - 3) != *(a2 + v62 - 3))
      {
        goto LABEL_36;
      }

      if (v59 <= a2)
      {
        v68 = a2;
        goto LABEL_46;
      }

      v66 = *v65;
      if (v66 == *a2)
      {
        break;
      }

      result = __clz(__rbit64(*a2 ^ v66)) >> 3;
      if (result <= v62)
      {
        goto LABEL_36;
      }

LABEL_61:
      *a4 = v61 - v64;
      v62 = result;
      if ((a2 + result) == a3)
      {
        return result;
      }

LABEL_36:
      ++v58;
      result = v62;
      if (v58 == v49)
      {
        return result;
      }
    }

    v65 = (v7 + 8 + v64);
    v67 = a2 + 1;
    while (1)
    {
      v68 = v67;
      if (v67 >= v59)
      {
        break;
      }

      v70 = *v65;
      v65 += 4;
      v69 = v70;
      ++v67;
      if (v70 != *v68)
      {
        result = v68 + (__clz(__rbit64(*v68 ^ v69)) >> 3) - a2;
        if (result <= v62)
        {
          goto LABEL_36;
        }

        goto LABEL_61;
      }
    }

LABEL_46:
    if (v68 < (a3 - 3))
    {
      if (*v65 == *v68)
      {
        v65 += 2;
        v68 = (v68 + 4);
      }

      if (v68 >= v60)
      {
LABEL_48:
        if (v68 >= a3)
        {
          goto LABEL_51;
        }

        goto LABEL_49;
      }
    }

    else if (v68 >= v60)
    {
      goto LABEL_48;
    }

    if (*v65 == *v68)
    {
      ++v65;
      v68 = (v68 + 2);
    }

    if (v68 >= a3)
    {
LABEL_51:
      result = v68 - a2;
      if (v68 - a2 <= v62)
      {
        goto LABEL_36;
      }

      goto LABEL_61;
    }

LABEL_49:
    if (*v65 == *v68)
    {
      v68 = (v68 + 1);
    }

    goto LABEL_51;
  }

  return 3;
}

unint64_t ZSTD_RowFindBestMatch_noDict_6_5(uint64_t a1, void *a2, void *a3, void *a4)
{
  v102 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 112);
  v5 = *(a1 + 56);
  v6 = *(a1 + 52);
  v7 = *(a1 + 8);
  v8 = a2 - v7;
  v9 = 1 << *(a1 + 256);
  if (a2 - v7 - *(a1 + 28) > v9 && *(a1 + 40) == 0)
  {
    v11 = a2 - v7 - v9;
  }

  else
  {
    v11 = *(a1 + 28);
  }

  v12 = *(a1 + 268);
  if (v12 >= 5)
  {
    LOBYTE(v12) = 5;
  }

  v13 = *(a1 + 96);
  if (*(a1 + 300))
  {
    _X15 = ((0xCF1BBCDCBF9B0000 * *a2) ^ v13) >> (56 - v6);
    *(a1 + 44) = v8;
  }

  else
  {
    v15 = a1 + 64;
    v16 = *(a1 + 44);
    if (v8 - v16 >= 0x181)
    {
      v17 = *(a1 + 56);
      v18 = *(a1 + 112);
      if (v16 <= 0xFFFFFF9F)
      {
        v74 = v16 + 96;
        do
        {
          v75 = ((0xCF1BBCDCBF9B0000 * *(v7 + 8 + v16)) ^ *(a1 + 96)) >> (56 - v6);
          v76 = (v75 >> 3) & 0x1FFFFFE0;
          _X23 = v4 + 4 * v76;
          __asm
          {
            PRFM            #0, [X23]
            PRFM            #0, [X23,#0x40]
          }

          _X22 = v5 + v76;
          __asm { PRFM            #0, [X22] }

          v82 = *(v15 + 4 * (v16 & 7));
          *(v15 + 4 * (v16 & 7)) = v75;
          v83 = (v82 >> 3) & 0x1FFFFFE0;
          v84 = v4 + 4 * v83;
          v85 = (v5 + v83);
          if (((*v85 - 1) & 0x1F) != 0)
          {
            v86 = 0;
          }

          else
          {
            v86 = 31;
          }

          v87 = v86 + ((*v85 - 1) & 0x1F);
          *v85 = v87;
          v85[v87] = v82;
          *(v84 + 4 * v87) = v16++;
        }

        while (v74 != v16);
        v18 = *(a1 + 112);
        v17 = *(a1 + 56);
      }

      v88 = v8 - 32;
      LODWORD(v16) = v8 - 32;
      v89 = a2 + 1 - (v7 + v88);
      if ((v89 + 1) < 8)
      {
        v90 = v89 + 1;
      }

      else
      {
        v90 = 8;
      }

      if (a2 + 1 >= v7 + v88)
      {
        v91 = v90;
      }

      else
      {
        v91 = 0;
      }

      if (v88 < v91 + v88)
      {
        v92 = *(a1 + 96);
        v93 = 56 - *(a1 + 52);
        do
        {
          v94 = ((0xCF1BBCDCBF9B0000 * *(v7 + v88)) ^ v92) >> v93;
          v95 = (v94 >> 3) & 0x1FFFFFE0;
          _X25 = v18 + 4 * v95;
          __asm
          {
            PRFM            #0, [X25]
            PRFM            #0, [X25,#0x40]
          }

          _X24 = v17 + v95;
          __asm { PRFM            #0, [X24] }

          *(v15 + 4 * (v88++ & 7)) = v94;
          --v91;
        }

        while (v91);
      }
    }

    else
    {
      v17 = *(a1 + 56);
      v18 = *(a1 + 112);
    }

    if (v16 >= v8)
    {
      v22 = v8;
    }

    else
    {
      v19 = *(a1 + 8) + 8;
      v20 = 56 - *(a1 + 52);
      v21 = v16;
      v22 = v8;
      do
      {
        v23 = ((0xCF1BBCDCBF9B0000 * *(v19 + v21)) ^ *(a1 + 96)) >> v20;
        v24 = (v23 >> 3) & 0x1FFFFFE0;
        _X25 = v18 + 4 * v24;
        __asm
        {
          PRFM            #0, [X25]
          PRFM            #0, [X25,#0x40]
        }

        _X24 = v17 + v24;
        __asm { PRFM            #0, [X24] }

        v33 = *(v15 + 4 * (v21 & 7));
        *(v15 + 4 * (v21 & 7)) = v23;
        v34 = (v33 >> 3) & 0x1FFFFFE0;
        v35 = v18 + 4 * v34;
        v36 = (v17 + v34);
        if (((*v36 - 1) & 0x1F) != 0)
        {
          v37 = 0;
        }

        else
        {
          v37 = 31;
        }

        v38 = v37 + ((*v36 - 1) & 0x1F);
        *v36 = v38;
        v36[v38] = v33;
        *(v35 + 4 * v38) = v21++;
      }

      while (v8 != v21);
    }

    *(a1 + 44) = v8;
    v39 = ((0xCF1BBCDCBF9B0000 * *(v7 + v22 + 8)) ^ v13) >> (56 - v6);
    v40 = (v39 >> 3) & 0x1FFFFFE0;
    _X4 = v4 + 4 * v40;
    __asm
    {
      PRFM            #0, [X4]
      PRFM            #0, [X4,#0x40]
    }

    _X15 = v5 + v40;
    __asm { PRFM            #0, [X15] }

    LODWORD(_X15) = *(v15 + 4 * (v8 & 7));
    *(v15 + 4 * (v8 & 7)) = v39;
  }

  *(a1 + 104) += _X15;
  v45 = (_X15 >> 3) & 0x1FFFFFE0;
  v46 = v4 + 4 * v45;
  v47 = (v5 + v45);
  v103 = vld2q_s16(v47);
  v48 = *v47;
  v49 = 2 * *v47;
  v50 = vdupq_n_s8(_X15);
  v51 = __ROR8__(vsli_n_s8(vshrn_n_s16(vceqq_s8(v50, v103.val[0]), 6uLL), vshrn_n_s16(vceqq_s8(v50, v103.val[1]), 6uLL), 4uLL), v49) & 0x5555555555555555;
  if (v51)
  {
    v52 = 0;
    v53 = 1 << v12;
    do
    {
      v54 = ((__clz(__rbit64(v51)) + (v49 & 0xFE)) >> 1) & 0x1F;
      if (v54)
      {
        v55 = *(v46 + 4 * v54);
        if (v55 < v11)
        {
          break;
        }

        _X7 = v7 + v55;
        __asm { PRFM            #0, [X7] }

        v101[v52++] = v55;
        --v53;
      }

      v51 &= v51 - 1;
    }

    while (v51 && v53);
  }

  else
  {
    v52 = 0;
  }

  if (((v48 - 1) & 0x1F) != 0)
  {
    v58 = 0;
  }

  else
  {
    v58 = 31;
  }

  v59 = v58 + ((v48 - 1) & 0x1F);
  *v47 = v59;
  *(v47 + v59) = _X15;
  v60 = *(a1 + 44);
  *(a1 + 44) = v60 + 1;
  *(v46 + 4 * v59) = v60;
  if (v52)
  {
    v61 = 0;
    v62 = a3 - 7;
    v63 = a3 - 1;
    v64 = v8 + 3;
    v65 = 3;
    while (1)
    {
      v67 = v101[v61];
      v68 = (v7 + v67);
      if (*(v7 + v67 + v65 - 3) != *(a2 + v65 - 3))
      {
        goto LABEL_36;
      }

      if (v62 <= a2)
      {
        v71 = a2;
        goto LABEL_46;
      }

      v69 = *v68;
      if (v69 == *a2)
      {
        break;
      }

      result = __clz(__rbit64(*a2 ^ v69)) >> 3;
      if (result <= v65)
      {
        goto LABEL_36;
      }

LABEL_61:
      *a4 = v64 - v67;
      v65 = result;
      if ((a2 + result) == a3)
      {
        return result;
      }

LABEL_36:
      ++v61;
      result = v65;
      if (v61 == v52)
      {
        return result;
      }
    }

    v68 = (v7 + 8 + v67);
    v70 = a2 + 1;
    while (1)
    {
      v71 = v70;
      if (v70 >= v62)
      {
        break;
      }

      v73 = *v68;
      v68 += 4;
      v72 = v73;
      ++v70;
      if (v73 != *v71)
      {
        result = v71 + (__clz(__rbit64(*v71 ^ v72)) >> 3) - a2;
        if (result <= v65)
        {
          goto LABEL_36;
        }

        goto LABEL_61;
      }
    }

LABEL_46:
    if (v71 < (a3 - 3))
    {
      if (*v68 == *v71)
      {
        v68 += 2;
        v71 = (v71 + 4);
      }

      if (v71 >= v63)
      {
LABEL_48:
        if (v71 >= a3)
        {
          goto LABEL_51;
        }

        goto LABEL_49;
      }
    }

    else if (v71 >= v63)
    {
      goto LABEL_48;
    }

    if (*v68 == *v71)
    {
      ++v68;
      v71 = (v71 + 2);
    }

    if (v71 >= a3)
    {
LABEL_51:
      result = v71 - a2;
      if (v71 - a2 <= v65)
      {
        goto LABEL_36;
      }

      goto LABEL_61;
    }

LABEL_49:
    if (*v68 == *v71)
    {
      v71 = (v71 + 1);
    }

    goto LABEL_51;
  }

  return 3;
}

unint64_t ZSTD_RowFindBestMatch_noDict_6_6(uint64_t a1, void *a2, void *a3, void *a4)
{
  v106 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 112);
  v5 = *(a1 + 56);
  v6 = *(a1 + 52);
  v7 = *(a1 + 8);
  v8 = a2 - v7;
  v9 = 1 << *(a1 + 256);
  if (a2 - v7 - *(a1 + 28) > v9 && *(a1 + 40) == 0)
  {
    v11 = a2 - v7 - v9;
  }

  else
  {
    v11 = *(a1 + 28);
  }

  v12 = *(a1 + 268);
  if (v12 >= 6)
  {
    LOBYTE(v12) = 6;
  }

  v13 = *(a1 + 96);
  if (*(a1 + 300))
  {
    _X15 = ((0xCF1BBCDCBF9B0000 * *a2) ^ v13) >> (56 - v6);
    *(a1 + 44) = v8;
  }

  else
  {
    v15 = a1 + 64;
    v16 = *(a1 + 44);
    if (v8 - v16 >= 0x181)
    {
      v17 = *(a1 + 56);
      v18 = *(a1 + 112);
      if (v16 <= 0xFFFFFF9F)
      {
        v76 = v16 + 96;
        do
        {
          v77 = ((0xCF1BBCDCBF9B0000 * *(v7 + 8 + v16)) ^ *(a1 + 96)) >> (56 - v6);
          v78 = (v77 >> 2) & 0x3FFFFFC0;
          _X23 = v4 + 4 * v78;
          __asm
          {
            PRFM            #0, [X23]
            PRFM            #0, [X23,#0x40]
          }

          _X22 = v5 + v78;
          __asm
          {
            PRFM            #0, [X22]
            PRFM            #0, [X22,#0x20]
          }

          v85 = *(v15 + 4 * (v16 & 7));
          *(v15 + 4 * (v16 & 7)) = v77;
          v86 = (v85 >> 2) & 0x3FFFFFC0;
          v87 = v4 + 4 * v86;
          v88 = (v5 + v86);
          if (((*v88 - 1) & 0x3F) != 0)
          {
            v89 = 0;
          }

          else
          {
            v89 = 63;
          }

          v90 = v89 + ((*v88 - 1) & 0x3F);
          *v88 = v90;
          v88[v90] = v85;
          *(v87 + 4 * v90) = v16++;
        }

        while (v76 != v16);
        v18 = *(a1 + 112);
        v17 = *(a1 + 56);
      }

      v91 = v8 - 32;
      LODWORD(v16) = v8 - 32;
      v92 = a2 + 1 - (v7 + v91);
      if ((v92 + 1) < 8)
      {
        v93 = v92 + 1;
      }

      else
      {
        v93 = 8;
      }

      if (a2 + 1 >= v7 + v91)
      {
        v94 = v93;
      }

      else
      {
        v94 = 0;
      }

      if (v91 < v94 + v91)
      {
        v95 = *(a1 + 96);
        v96 = 56 - *(a1 + 52);
        do
        {
          v97 = ((0xCF1BBCDCBF9B0000 * *(v7 + v91)) ^ v95) >> v96;
          v98 = (v97 >> 2) & 0x3FFFFFC0;
          _X25 = v18 + 4 * v98;
          __asm
          {
            PRFM            #0, [X25]
            PRFM            #0, [X25,#0x40]
          }

          _X24 = v17 + v98;
          __asm
          {
            PRFM            #0, [X24]
            PRFM            #0, [X24,#0x20]
          }

          *(v15 + 4 * (v91++ & 7)) = v97;
          --v94;
        }

        while (v94);
      }
    }

    else
    {
      v17 = *(a1 + 56);
      v18 = *(a1 + 112);
    }

    if (v16 >= v8)
    {
      v22 = v8;
    }

    else
    {
      v19 = *(a1 + 8) + 8;
      v20 = 56 - *(a1 + 52);
      v21 = v16;
      v22 = v8;
      do
      {
        v23 = ((0xCF1BBCDCBF9B0000 * *(v19 + v21)) ^ *(a1 + 96)) >> v20;
        v24 = (v23 >> 2) & 0x3FFFFFC0;
        _X25 = v18 + 4 * v24;
        __asm
        {
          PRFM            #0, [X25]
          PRFM            #0, [X25,#0x40]
        }

        _X24 = v17 + v24;
        __asm
        {
          PRFM            #0, [X24]
          PRFM            #0, [X24,#0x20]
        }

        v34 = *(v15 + 4 * (v21 & 7));
        *(v15 + 4 * (v21 & 7)) = v23;
        v35 = (v34 >> 2) & 0x3FFFFFC0;
        v36 = v18 + 4 * v35;
        v37 = (v17 + v35);
        if (((*v37 - 1) & 0x3F) != 0)
        {
          v38 = 0;
        }

        else
        {
          v38 = 63;
        }

        v39 = v38 + ((*v37 - 1) & 0x3F);
        *v37 = v39;
        v37[v39] = v34;
        *(v36 + 4 * v39) = v21++;
      }

      while (v8 != v21);
    }

    *(a1 + 44) = v8;
    v40 = ((0xCF1BBCDCBF9B0000 * *(v7 + v22 + 8)) ^ v13) >> (56 - v6);
    v41 = (v40 >> 2) & 0x3FFFFFC0;
    _X4 = v4 + 4 * v41;
    __asm
    {
      PRFM            #0, [X4]
      PRFM            #0, [X4,#0x40]
    }

    _X15 = v5 + v41;
    __asm
    {
      PRFM            #0, [X15]
      PRFM            #0, [X15,#0x20]
    }

    LODWORD(_X15) = *(v15 + 4 * (v8 & 7));
    *(v15 + 4 * (v8 & 7)) = v40;
  }

  *(a1 + 104) += _X15;
  v47 = (_X15 >> 2) & 0x3FFFFFC0;
  v48 = v4 + 4 * v47;
  v49 = (v5 + v47);
  v50 = *v49;
  v107 = vld4q_s8(v49);
  v51 = vdupq_n_s8(_X15);
  v107.val[0] = vsriq_n_s8(vsriq_n_s8(vceqq_s8(v107.val[3], v51), vceqq_s8(v107.val[2], v51), 1uLL), vsriq_n_s8(vceqq_s8(v107.val[1], v51), vceqq_s8(v107.val[0], v51), 1uLL), 2uLL);
  v52 = vshrn_n_s16(vsriq_n_s8(v107.val[0], v107.val[0], 4uLL), 4uLL);
  v53 = 0;
  if (v52)
  {
    v54 = 1 << v12;
    v55 = __ROR8__(*&v52, v50);
    do
    {
      v56 = (__clz(__rbit64(v55)) + v50) & 0x3F;
      if (v56)
      {
        v57 = *(v48 + 4 * v56);
        if (v57 < v11)
        {
          break;
        }

        _X6 = v7 + v57;
        __asm { PRFM            #0, [X6] }

        v105[v53++] = v57;
        --v54;
      }

      v55 &= v55 - 1;
    }

    while (v55 && v54);
  }

  if (((v50 - 1) & 0x3F) != 0)
  {
    v60 = 0;
  }

  else
  {
    v60 = 63;
  }

  v61 = v60 + ((v50 - 1) & 0x3F);
  *v49 = v61;
  v49[v61] = _X15;
  v62 = *(a1 + 44);
  *(a1 + 44) = v62 + 1;
  *(v48 + 4 * v61) = v62;
  if (v53)
  {
    v63 = 0;
    v64 = a3 - 7;
    v65 = a3 - 1;
    v66 = v8 + 3;
    v67 = 3;
    while (1)
    {
      v69 = v105[v63];
      v70 = (v7 + v69);
      if (*(v7 + v69 + v67 - 3) != *(a2 + v67 - 3))
      {
        goto LABEL_34;
      }

      if (v64 <= a2)
      {
        v73 = a2;
        goto LABEL_44;
      }

      v71 = *v70;
      if (v71 == *a2)
      {
        break;
      }

      result = __clz(__rbit64(*a2 ^ v71)) >> 3;
      if (result <= v67)
      {
        goto LABEL_34;
      }

LABEL_59:
      *a4 = v66 - v69;
      v67 = result;
      if ((a2 + result) == a3)
      {
        return result;
      }

LABEL_34:
      ++v63;
      result = v67;
      if (v63 == v53)
      {
        return result;
      }
    }

    v70 = (v7 + 8 + v69);
    v72 = a2 + 1;
    while (1)
    {
      v73 = v72;
      if (v72 >= v64)
      {
        break;
      }

      v75 = *v70;
      v70 += 4;
      v74 = v75;
      ++v72;
      if (v75 != *v73)
      {
        result = v73 + (__clz(__rbit64(*v73 ^ v74)) >> 3) - a2;
        if (result <= v67)
        {
          goto LABEL_34;
        }

        goto LABEL_59;
      }
    }

LABEL_44:
    if (v73 < (a3 - 3))
    {
      if (*v70 == *v73)
      {
        v70 += 2;
        v73 = (v73 + 4);
      }

      if (v73 >= v65)
      {
LABEL_46:
        if (v73 >= a3)
        {
          goto LABEL_49;
        }

        goto LABEL_47;
      }
    }

    else if (v73 >= v65)
    {
      goto LABEL_46;
    }

    if (*v70 == *v73)
    {
      ++v70;
      v73 = (v73 + 2);
    }

    if (v73 >= a3)
    {
LABEL_49:
      result = v73 - a2;
      if (v73 - a2 <= v67)
      {
        goto LABEL_34;
      }

      goto LABEL_59;
    }

LABEL_47:
    if (*v70 == *v73)
    {
      v73 = (v73 + 1);
    }

    goto LABEL_49;
  }

  return 3;
}