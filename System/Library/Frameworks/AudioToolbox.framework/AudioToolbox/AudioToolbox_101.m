void FEC_scale_syn(unint64_t a1, int a2, __int16 a3, float *a4, float *a5, unint64_t a6, int a7, unsigned __int16 a8, float a9, float a10, __int16 *a11, float *a12, float *a13, __int16 a14, unint64_t a15, __int16 a16, uint64_t a17, float *a18, unint64_t a19, unint64_t a20, uint64_t a21, float *a22, __int128 *a23, _OWORD *a24, int a25, __int16 a26)
{
  v98 = *MEMORY[0x1E69E9840];
  v96 = NAN;
  v93 = -1;
  v94 = -1;
  *&v33 = -1;
  *(&v33 + 1) = -1;
  __C[30] = v33;
  __C[31] = v33;
  __C[28] = v33;
  __C[29] = v33;
  __C[26] = v33;
  __C[27] = v33;
  __C[24] = v33;
  __C[25] = v33;
  __C[22] = v33;
  __C[23] = v33;
  __C[20] = v33;
  __C[21] = v33;
  __C[18] = v33;
  __C[19] = v33;
  __C[16] = v33;
  __C[17] = v33;
  __C[14] = v33;
  __C[15] = v33;
  __C[12] = v33;
  __C[13] = v33;
  __C[10] = v33;
  __C[11] = v33;
  __C[8] = v33;
  __C[9] = v33;
  __C[6] = v33;
  __C[7] = v33;
  __C[4] = v33;
  __C[5] = v33;
  __C[2] = v33;
  __C[3] = v33;
  __C[0] = v33;
  __C[1] = v33;
  v88 = a2 - 2;
  v34 = 0.0;
  if ((a2 - 2) <= 3u)
  {
    if (a1 == 256)
    {
      v35 = a20 + 204;
    }

    else
    {
      v35 = a20 + 272;
    }

    if (v35 < a20)
    {
      goto LABEL_168;
    }

    v34 = enr_1_Az(v35, a21, 64);
  }

  if (a14)
  {
    v36 = 1.0;
    LOWORD(v37) = 1;
LABEL_9:
    *a11 = v37;
    goto LABEL_10;
  }

  if (a16)
  {
    v36 = 1.5;
    if (a8 - 1 >= 2)
    {
      LOWORD(v37) = a7 != 4;
    }

    else
    {
      LOWORD(v37) = 2;
    }

    goto LABEL_9;
  }

  v60 = *a11;
  v61 = *a11 == 2 && a8 == 2;
  v36 = 2.0;
  if (!v61)
  {
    v62 = __OFSUB__(v60, 1);
    v37 = v60 - 1;
    if (v37 < 0 == v62)
    {
      goto LABEL_9;
    }
  }

LABEL_10:
  __A = a4;
  v91 = &a4[a1];
  v92 = a4;
  v38 = &a5[a1 >> 6];
  v39 = v38 - 1;
  if (v38 - 1 < a5 || v38 > a6 || v39 > v38)
  {
    goto LABEL_168;
  }

  v41 = a1;
  v95 = NAN;
  fer_energy(a1, a2, &__A, &v95, a1, *v39);
  if (a14)
  {
    if (*a11 < 1)
    {
      goto LABEL_112;
    }

    v95 = v95 + 0.01;
    v42 = sqrtf(a9 / v95);
    if (v42 <= 1.0)
    {
      v43 = v42;
    }

    else
    {
      v43 = 1.0;
    }

    __A = a4;
    v91 = &a4[a1];
    v92 = a4;
    if ((a5 + 1) > a6 || a5 + 1 < a5)
    {
      goto LABEL_168;
    }

    fer_energy(a1, a2, &__A, &v96, 0, *a5);
    v44 = sqrtf(a9 / (v96 + 0.1));
    v45 = 1.0;
    if (v44 <= 1.0)
    {
      v45 = v44;
    }

    v46 = a19;
    goto LABEL_102;
  }

  v47 = a17;
  if (a15 != 8000 && a15 != 7200)
  {
    if (a7 == 4 || !a16)
    {
      goto LABEL_108;
    }

    v63 = v95 + 0.01;
    v95 = v95 + 0.01;
    if (a10 == 0.0)
    {
      LODWORD(__A) = 0;
      vDSP_vfill(&__A, __C, 1, 0x80uLL);
      LODWORD(__C[0]) = 1065353216;
      if (a20 + 204 < a20)
      {
        goto LABEL_168;
      }

      syn_filt(a20 + 204);
      LODWORD(__A) = -1;
      vDSP_dotpr(__C, 1, __C, 1, &__A, 0x7FuLL);
      v64 = *&__A;
      LODWORD(__A) = -1;
      vDSP_dotpr(__C, 1, __C + 1, 1, &__A, 0x7FuLL);
      v65 = vdupq_n_s64(a15);
      if (((a15 != 9600) & ~vmaxv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(v65, xmmword_19B0B32A0), vceqq_s64(v65, xmmword_19B0B32B0))))) != 0 || (*&__A / (v64 + 0.001)) <= 0.7 || a2 != 6 && a2)
      {
        a10 = v63;
        if (((a3 - 2) | v88) <= 3u)
        {
          if (*a22 == 0.0 || (v79 = *a22 + *a22, v34 <= v79))
          {
            a10 = v63;
            if (a25)
            {
              a10 = v63;
              if (v34 > 20.0)
              {
                a10 = sqrt((20.0 / v34)) * v63;
              }
            }
          }

          else
          {
            a10 = (v63 / v34) * v79;
          }
        }
      }

      else
      {
        a10 = v63;
        if (v63 > (v36 * a9))
        {
          a10 = v36 * a9;
        }
      }

      if (a26)
      {
        v80 = 0;
      }

      else
      {
        v80 = ((a3 - 2) | v88) > 3u;
      }

      if (!v80 && a10 > a9)
      {
        a10 = (a10 * 0.3) + (a9 * 0.7);
      }

      v47 = a17;
    }

    v81 = sqrtf(a10 / v63);
    if (a10 >= 1.1)
    {
      v46 = a19;
      if (v81 > 1.2)
      {
        v81 = 1.2;
      }
    }

    else
    {
      v46 = a19;
      if (v81 > 1.0)
      {
        v81 = 1.0;
      }
    }

    if (a2 == 5)
    {
      v82 = v81 * 0.5;
LABEL_138:
      if (a1 >= 1)
      {
        v83 = v46;
        do
        {
          v82 = (v81 * 0.02) + (v82 * 0.98);
          *a18 = v82 * *a18;
          ++a18;
          *v83 = v82 * *v83;
          ++v83;
          --v41;
        }

        while (v41);
      }

      v73 = *a23;
      v74 = a23[1];
      v75 = a23[2];
      v76 = a23[3];
LABEL_106:
      a24[2] = v75;
      a24[3] = v76;
      *a24 = v73;
      a24[1] = v74;
      if (a24 + 4 >= a24)
      {
        syn_12k8(a1, a20, a21, v46, a4);
        goto LABEL_108;
      }

LABEL_168:
      __break(0x5519u);
    }

    v82 = v81;
    if ((a3 - 2) > 3u)
    {
      if (!v47)
      {
        goto LABEL_138;
      }

      v82 = v81;
      if (v47 == 1750)
      {
        goto LABEL_138;
      }
    }

    else
    {
      if (v47 == 1750)
      {
        goto LABEL_138;
      }

      v82 = v81;
      if (!a2)
      {
        goto LABEL_138;
      }

      v82 = v81;
      if (a2 == 6)
      {
        goto LABEL_138;
      }

      v82 = v81;
      if (!v47)
      {
        goto LABEL_138;
      }
    }

    v82 = v81;
    if (v47 != 2400)
    {
      __A = a4;
      v91 = &a4[a1];
      v92 = a4;
      if ((a5 + 1) > a6 || a5 + 1 < a5)
      {
        goto LABEL_168;
      }

      fer_energy(a1, a2, &__A, &v96, 0, *a5);
      v82 = sqrtf(a9 / (v96 + 0.1));
      if (v82 > 1.2)
      {
        v82 = 1.2;
      }

      if (a25 && v34 > 20.0 && v34 <= (*a22 + *a22) && v82 > 1.0)
      {
        v82 = 1.0;
      }

      v46 = a19;
      if (v82 > v81 && a2 == 4)
      {
        v82 = v81;
      }
    }

    goto LABEL_138;
  }

  if (*a11 > 0)
  {
    v48 = v95 + 0.01;
    if (a10 == 0.0)
    {
      LODWORD(__A) = 0;
      vDSP_vfill(&__A, __C, 1, 0x80uLL);
      LODWORD(__C[0]) = 1065353216;
      if (a20 + 204 < a20)
      {
        goto LABEL_168;
      }

      syn_filt(a20 + 204);
      LODWORD(__A) = -1;
      vDSP_dotpr(__C, 1, __C, 1, &__A, 0x7FuLL);
      v49 = *&__A;
      LODWORD(__A) = -1;
      vDSP_dotpr(__C, 1, __C + 1, 1, &__A, 0x7FuLL);
      if ((a5 + 1) > a6 || a5 + 1 < a5)
      {
        goto LABEL_168;
      }

      v50 = (a5 + 1);
      v51 = *a5;
      v52 = 0.0;
      v53 = 3;
      do
      {
        if (v50 < a5 || v50 + 4 > a6 || v50 > v50 + 4)
        {
          goto LABEL_168;
        }

        v54 = *(v50 - 4);
        v55 = vcvt_s32_f32(vadd_f32(v54, 0x3F0000003F000000));
        v56 = v55.i32[1] - v55.i32[0];
        if (v55.i32[1] - v55.i32[0] < 0)
        {
          v56 = v55.i32[0] - v55.i32[1];
        }

        v52 = v52 + v56;
        v51 = v51 + v54.f32[1];
        v50 += 4;
        --v53;
      }

      while (v53);
      if ((*&__A / (v49 + 0.001)) > 0.7 && ((v57 = v51 * 0.25, (v52 / 3.0) <= 8.0) ? (v58 = v57 < 34.0) : (v58 = 1), v58 && (a16 || a7 == 3 && a8 == 2)))
      {
        v59 = v36 * a9;
      }

      else
      {
        v66 = a13;
        if ((a2 - 6) < 0xFFFDu)
        {
          v66 = a12;
        }

        v67 = *v66;
        if (*v66 < a9)
        {
          v67 = a9;
        }

        v59 = v36 * v67;
      }

      a10 = v48;
      v47 = a17;
      if (v48 > v59)
      {
        a10 = v59;
      }
    }

    v43 = sqrtf(a10 / v48);
    if ((a3 - 2) > 3u)
    {
      v46 = a19;
      if (v47 == 1750)
      {
        goto LABEL_79;
      }
    }

    else
    {
      v46 = a19;
      if (v47 == 1750 || !a2 || a2 == 6)
      {
LABEL_79:
        v45 = v43;
        v68 = a16;
        if (!a16)
        {
LABEL_90:
          __A = a4;
          v91 = &a4[a1];
          v92 = a4;
          if ((a5 + 1) > a6 || a5 + 1 < a5)
          {
            goto LABEL_168;
          }

          fer_energy(a1, a2, &__A, &v96, 0, *a5);
          v45 = sqrtf(a9 / (v96 + 0.1));
          if (v45 > 1.2)
          {
            v45 = 1.2;
          }

          if (a2 == 4 && v45 > v43 && v68 != 0)
          {
            v45 = v43;
          }

          v46 = a19;
        }

LABEL_101:
        v95 = a10;
LABEL_102:
        if (a1 >= 1)
        {
          v72 = v46;
          do
          {
            v45 = (v43 * 0.02) + (v45 * 0.98);
            *a18 = v45 * *a18;
            ++a18;
            *v72 = v45 * *v72;
            ++v72;
            --v41;
          }

          while (v41);
        }

        v73 = *a23;
        v74 = a23[1];
        v75 = a23[2];
        v76 = a23[3];
        goto LABEL_106;
      }
    }

    v70 = v47 == 2400 || v47 == 0;
    v68 = a16;
    if (!a16)
    {
      goto LABEL_90;
    }

    v45 = v43;
    if (!v70)
    {
      goto LABEL_90;
    }

    goto LABEL_101;
  }

LABEL_108:
  if (v88 <= 3u && !a14)
  {
    v77 = v95;
    __A = a4;
    v91 = &a4[a1];
    v92 = a4;
    if (a2 == 2)
    {
      fer_energy(a1, 3u, &__A, &v93, a1, *v39);
      v78 = *&v93;
    }

    else
    {
      fer_energy(a1, 0, &__A, &v94, a1, *v39);
      v78 = v77;
      v77 = *&v94;
    }

    *a12 = (*a12 * 0.95) + (v77 * 0.05);
    *a13 = (*a13 * 0.95) + (v78 * 0.05);
    goto LABEL_116;
  }

LABEL_112:
  if (v88 <= 3u)
  {
LABEL_116:
    *a22 = v34;
  }
}

unint64_t longshiftright(unint64_t result, unint64_t a2, unsigned int a3, unsigned int a4)
{
  v4 = result + 2 * a3;
  v5 = a2 + 2 * a4;
  v6 = a3 - 1;
  if (a3 > 1)
  {
    v7 = 0;
    while (1)
    {
      v8 = (result + v7);
      v9 = (result + v7 + 2);
      v10 = v9 > v4 || v8 > v9;
      v11 = v8 + 2;
      v12 = !v10 && v9 >= result;
      v13 = !v12 || v11 > v4;
      v14 = v13 || v9 > v11;
      v15 = (a2 + v7);
      v16 = a2 + v7 + 2;
      v17 = !v14 && v15 >= a2;
      v18 = !v17 || v16 > v5;
      if (v18 || v15 > v16)
      {
        goto LABEL_41;
      }

      HIDWORD(v20) = *v9;
      LODWORD(v20) = *v8 << 16;
      *v15 = v20 >> 18;
      v7 += 2;
      if (2 * (a3 - 1) == v7)
      {
        goto LABEL_28;
      }
    }
  }

  v6 = 0;
LABEL_28:
  v21 = (result + 2 * v6);
  if (v21 < result)
  {
    goto LABEL_41;
  }

  if ((v21 + 1) > v4)
  {
    goto LABEL_41;
  }

  if (v21 > v21 + 1)
  {
    goto LABEL_41;
  }

  v22 = (a2 + 2 * v6);
  if (v22 < a2 || (v22 + 1) > v5 || v22 > v22 + 1)
  {
    goto LABEL_41;
  }

  *v22 = *v21 >> 2;
  v23 = v6 + 1;
  if ((v6 + 1) < a4)
  {
    v24 = a4 - v23;
    for (i = (a2 + 2 * v23); i >= a2 && (i + 1) <= v5 && i <= i + 1; ++i)
    {
      *i = 0;
      if (!--v24)
      {
        return result;
      }
    }

LABEL_41:
    __break(0x5519u);
  }

  return result;
}

unint64_t D_ACELP_decode_arithtrack(unint64_t result, unint64_t a2, unint64_t a3, int a4)
{
  v4 = 15;
  for (i = &pulsestostates; ; i -= 72)
  {
    v6 = v4;
    v7 = (result + 16 * v4);
    v8 = v7 + 1;
    v9 = v7 < result || v8 > a2;
    v10 = v9 || v7 >= v8;
    if (v10)
    {
      break;
    }

    *v7 = 0.0;
    if (a4)
    {
      v11 = &pulsestostates + 72 * v6;
      v12 = a4;
      v13 = 8 * a4;
      v14 = 0.0;
      while (1)
      {
        v15 = &i[v13 + 1080];
        v16 = &i[v13 + 1072];
        v17 = v16 < v11 || v15 > (v11 + 72);
        if (v17 || v16 > v15)
        {
          goto LABEL_33;
        }

        v19 = *&i[8 * v12 + 1072];
        v10 = a3 >= v19;
        v20 = a3 - v19;
        if (!v10)
        {
          a4 = v12;
          break;
        }

        if (v14 == 0.0)
        {
          if (v20)
          {
            v14 = -1.0;
          }

          else
          {
            v14 = 1.0;
          }

          *v7 = v14;
          a3 = v20 >> 1;
        }

        else
        {
          if (v14 <= 0.0)
          {
            v14 = v14 + -1.0;
          }

          else
          {
            v14 = v14 + 1.0;
          }

          *v7 = v14;
          a3 = v20;
        }

        v13 -= 8;
        if (!--v12)
        {
          a4 = 0;
          break;
        }
      }
    }

    v4 = v6 - 1;
    if (!v6)
    {
      return result;
    }
  }

LABEL_33:
  __break(0x5519u);
  return result;
}

uint64_t fcb_decode_PI(int a1, void *a2)
{
  *&v80[2] = *MEMORY[0x1E69E9840];
  memset(v79, 170, sizeof(v79));
  memset(v77, 170, sizeof(v77));
  v2 = -3;
  v3 = &dword_19B38C844;
  while (1)
  {
    v4 = v3 + 1;
    if (v3 < dword_19B38C840 || v4 > dword_19B38C860 || v3 > v4)
    {
      goto LABEL_123;
    }

    if (*v3 > a1)
    {
      break;
    }

    ++v3;
    v53 = __CFADD__(v2++, 1);
    if (v53)
    {
      v7 = 4;
      goto LABEL_14;
    }
  }

  v7 = v2 + 4;
LABEL_14:
  v8 = &dword_19B38C840[v7];
  v9 = v8 - 4;
  if (v8 - 4 < dword_19B38C840 || v8 > dword_19B38C860 || v9 > v8 || (v10 = 5 - v7, v11 = &dword_19B38CAE0[v10], v11 < dword_19B38CAE0) || v11 + 1 > dword_19B38CB00 || v11 > v11 + 1)
  {
LABEL_123:
    __break(0x5519u);
  }

  v12 = a1 - *v9;
  v13 = v12 >> (5 - v7);
  v14 = *v11;
  v15 = v13 / *v11;
  if (v7 == 4)
  {
    LOWORD(v21) = 0;
    v22 = 0;
    v77[0] = 3;
    LOWORD(v23) = v13 - v15 * v14;
    v24 = 1;
    goto LABEL_84;
  }

  if (v7 != 3)
  {
    v25 = 3;
    v26 = v77;
    while (1)
    {
      v27 = v26 + 1;
      v28 = v26 < v77 || v27 > v78;
      if (v28 || v26 > v27)
      {
        goto LABEL_123;
      }

      *v26++ = 1;
      if (!--v25)
      {
        goto LABEL_42;
      }
    }
  }

  v16 = v77;
  v17 = 2;
  do
  {
    v18 = v16 + 1;
    if (v16 < v77 || v18 > v78 || v16 > v18)
    {
      goto LABEL_123;
    }

    *v16++ = 1;
    --v17;
  }

  while (v17);
  ++v77[v15];
LABEL_42:
  v23 = v13 - v15 * v14;
  if (v7 <= 3)
  {
    v30 = 0;
    LODWORD(v21) = 0;
    v22 = 4 - v7;
    v31 = 4 * v10;
    v32 = v10;
    while (1)
    {
      v33 = &PI_select_table + 32 * (16 - v21);
      v34 = &v33[4 * v32];
      v35 = (v34 + 4);
      v36 = v34 < v33 || v35 > (v33 + 32);
      if (v36 || v34 > v35)
      {
        goto LABEL_123;
      }

      v38 = *v34 - v23;
      v21 = v21;
      v39 = &PI_select_table - 32 * v21 + 448;
      while (1)
      {
        v40 = &v39[v31];
        if (*&v39[v31 + 64] < v38)
        {
          break;
        }

        if (v40 >= v39 && v40 + 4 <= (v39 + 32))
        {
          v21 += 2;
          v39 -= 64;
          if (v40 <= v40 + 4)
          {
            continue;
          }
        }

        goto LABEL_123;
      }

      v41 = &PI_select_table + ((0x1100000000 - (v21 << 32)) >> 27);
      v42 = &v41[4 * v32];
      v43 = (v42 + 4);
      v44 = v42 < v41 || v43 > (v41 + 32);
      if (v44 || v42 > v43)
      {
        goto LABEL_123;
      }

      LODWORD(v21) = v21 - (v38 > *v42);
      v46 = &PI_select_table + 32 * (17 - v21);
      v47 = &v46[4 * v32];
      v48 = (v47 + 4);
      v49 = v47 < v46 || v48 > (v46 + 32);
      v50 = v49 || v47 > v48;
      v51 = &v79[v30];
      v52 = v51 + 1;
      v53 = !v50 && v51 >= v79;
      v54 = !v53 || v52 > &v79[v10];
      if (v54 || v51 > v52)
      {
        goto LABEL_123;
      }

      --v32;
      v23 = *v47 - v38;
      v79[v30++] = v21 - 1;
      v31 -= 4;
      if (v30 == v22)
      {
        goto LABEL_83;
      }
    }
  }

  LOWORD(v21) = 0;
  v22 = 0;
LABEL_83:
  v24 = v10;
LABEL_84:
  v56 = &v79[v22];
  if (v56 < v79 || v56 + 1 > &v79[v24] || v56 > v56 + 1)
  {
    goto LABEL_123;
  }

  *v56 = v23 + v21;
  v57 = v10;
  do
  {
    v58 = &v79[--v57];
    v59 = v58 + 1;
    if (v58 < v79 || v59 > v80 || v58 > v59)
    {
      goto LABEL_123;
    }

    *v58 += 16 * (v12 & 1);
    v12 >>= 1;
  }

  while (v57 > 0);
  v62 = 0;
  v64 = a2[1];
  v63 = a2[2];
  v65 = &v79[v10];
  result = *a2 + 6;
  do
  {
    v67 = &v77[v10 + ~v62];
    v68 = v67 + 1;
    if (v67 < v77 || v68 > v78 || v67 > v68)
    {
      goto LABEL_123;
    }

    v71 = v65 - 1;
    v74 = v65 <= v80 && v71 <= v65 && v71 >= v79;
    if (*v67 >= 1)
    {
      v75 = 0;
      v76 = (result - 2);
      do
      {
        if (!v74 || (v76 + 1) > v64 || v76 > v76 + 1 || v76 < v63)
        {
          goto LABEL_123;
        }

        *v76-- = *v71;
        ++v75;
      }

      while (v75 < *v67);
      result = (v76 + 1);
    }

    ++v62;
    v65 = v71;
  }

  while (v62 != v10);
  return result;
}

__int16 *add_pulses(__int16 *result, int a2, __int16 a3, unint64_t a4, unint64_t a5)
{
  if (a2 >= 1)
  {
    v5 = a2;
    while (1)
    {
      v7 = *result++;
      v6 = v7;
      v8 = (a4 + 4 * (4 * (v7 & 0xF) + a3));
      v9 = v8 + 1;
      v10 = v8 < a4 || v9 > a5;
      if (v10 || v8 > v9)
      {
        break;
      }

      if ((v6 & 0x10) != 0)
      {
        v12 = -1.0;
      }

      else
      {
        v12 = 1.0;
      }

      *v8 = *v8 + v12;
      if (!--v5)
      {
        return result;
      }
    }

    __break(0x5519u);
  }

  return result;
}

uint64_t dec_2p_2N1(uint64_t result, char a2, __int16 a3, _WORD *a4, unint64_t a5)
{
  v5 = (result >> a2) & ~(-1 << a2);
  v6 = v5 + a3;
  v7 = result & ~(-1 << a2);
  v8 = v7 + a3;
  v9 = (1 << (2 * a2)) & result;
  v10 = v9 == 0;
  if (v9)
  {
    LOWORD(v11) = v7 + a3 + 16;
  }

  else
  {
    v11 = (v7 + a3);
  }

  if (v10)
  {
    v8 = v7 + a3 + 16;
  }

  else
  {
    v6 = v5 + a3 + 16;
  }

  if (v7 < v5)
  {
    v12 = v8;
  }

  else
  {
    v12 = v11;
  }

  v13 = a4 + 1;
  if ((a4 + 1) > a5 || v13 < a4 || (*a4 = v6, v14 = a4 + 2, v14 > a5) || v13 > v14)
  {
    __break(0x5519u);
  }

  else
  {
    *v13 = v12;
  }

  return result;
}

_DWORD *Mode2_abs_pit_dec(_DWORD *result, int *a2, int *a3, unint64_t *a4, int a5, int a6, int a7, int a8)
{
  v8 = *a4;
  v9 = *a4 + 4;
  if (v9 > a4[1] || v8 > v9)
  {
    __break(0x5519u);
  }

  else
  {
    v11 = *v8;
    *a4 = v9;
    v12 = (a7 - a5) * a8;
    v13 = v11 - v12;
    if (v11 >= v12)
    {
      a8 >>= 1;
      v15 = v12 + a8 * (a6 - a7);
      if (v11 >= v15)
      {
        v14 = 0;
        *result = a6 - v15 + v11;
        a8 = 1;
      }

      else
      {
        *result = v13 / a8 + a7;
        v14 = v13 % a8;
      }
    }

    else
    {
      *result = v11 / a8 + a5;
      v14 = v11 % a8;
    }

    *a2 = v14;
    *a3 = a8;
  }

  return result;
}

unint64_t pitch_pred_linear_fit(unint64_t result, unsigned __int16 a2, uint64_t *a3, uint64_t a4, uint64_t a5, int a6, int a7, void *a8, int a9, __int16 a10, __int16 *a11, int a12)
{
  v423 = *MEMORY[0x1E69E9840];
  v421 = -1;
  v420[0] = -1;
  v420[1] = -1;
  *&v13 = -1;
  *(&v13 + 1) = -1;
  v418 = v13;
  v416[2] = v13;
  v417 = v13;
  v416[0] = v13;
  v416[1] = v13;
  v410 = 0;
  v15 = *a3;
  v14 = a3[1];
  v16 = a3[2];
  if (a12 == 4)
  {
    v17 = 0;
    v18 = (v15 + 36);
    while (1)
    {
      v19 = (v18 + 1) > v14 || v18 > v18 + 1;
      v20 = !v19 && v18 >= v16;
      if (!v20)
      {
        goto LABEL_789;
      }

      v21 = *v18--;
      *(v416 + v17) = v21;
      v17 += 4;
      if (v17 == 40)
      {
        goto LABEL_23;
      }
    }
  }

  v22 = 0;
  v23 = (v15 + 44);
  do
  {
    if ((v23 + 1) > v14 || v23 > v23 + 1 || v23 < v16)
    {
      goto LABEL_789;
    }

    v26 = *v23--;
    *(v416 + v22) = v26;
    v22 += 4;
  }

  while (v22 != 48);
LABEL_23:
  v27 = *a4;
  v28 = *a4 + 4;
  if (v28 > *(a4 + 8) || v27 > v28 || v27 < *(a4 + 16))
  {
LABEL_789:
    __break(0x5519u);
  }

  v31 = *v27;
  if (*v27 > a7)
  {
    *a11 = 1;
    v32 = *a5;
    v33 = *a5 + 4;
    if (v33 > *(a5 + 8) || v32 > v33 || v32 < *(a5 + 16))
    {
      goto LABEL_789;
    }

    v31 = a7;
    goto LABEL_85;
  }

  if (result != 1 || a2 - 1 > 2)
  {
    *a11 = 1;
    goto LABEL_82;
  }

  if (a10)
  {
    v34 = 2;
  }

  else
  {
    v34 = 4;
  }

  v35 = (*a8 + 4 * v34 - 8);
  if (v35 < a8[2])
  {
    goto LABEL_789;
  }

  v36 = a8[1];
  v20 = v36 >= v35;
  v37 = v36 - v35;
  if (!v20)
  {
    goto LABEL_789;
  }

  if (v37 <= 0x1F)
  {
    goto LABEL_789;
  }

  v38 = *(*a8 + 4 * v34 + 8);
  v419[0] = *v35;
  v419[1] = v38;
  v39 = &v415[v34];
  if (v39 < v416 || &v417 < v39 || (&v417 - v39) <= 0x1F)
  {
    goto LABEL_789;
  }

  v40 = 0;
  v41 = *(v416 + 4 * v34 + 8);
  v417 = *v39;
  v418 = v41;
  v42 = 0.0;
  do
  {
    v43 = (&v417 + v40 + 16);
    v44 = (&v418 + v40 + 4);
    v46 = v43 < &v417 || v44 > v419 || v43 > v44;
    result = &v420[2] + v40;
    v47 = &v422[v40];
    if (v46 || result < v420 || v47 > v422 || result > v47)
    {
      goto LABEL_789;
    }

    v51 = *v43 - *v44;
    *result = v51;
    v42 = v42 + v51;
    v40 -= 4;
  }

  while (v40 != -20);
  v52 = 0;
  v53 = fabsf(*v420);
  for (i = 1; i != 5; ++i)
  {
    v55 = fabsf(*(v420 + i));
    if (v53 < v55)
    {
      v52 = i;
      v53 = v55;
    }
  }

  v56 = v420 + v52;
  v57 = v56 + 1;
  v58 = v56 < v420 || v57 > v422;
  if (v58 || v56 > v57)
  {
    goto LABEL_789;
  }

  v60 = fabsf(*v56);
  if (v60 < (*v27 * 0.15) && (a9 == 1 || v60 < fabsf(v42)))
  {
    v62 = 0;
    v414 = 0xAAAAAAAAAAAAAAAALL;
    LOWORD(v415[0]) = -21846;
    memset(v413, 170, 20);
    v411 = 0x3800400048005000;
    v412 = 12288;
    v409 = -21846;
    v408 = -21846;
    do
    {
      *(&v415[-2] + v62) = vcvtd_n_s64_f64(*(v419 + v62), 0xEuLL);
      *(v413 + v62) = vcvtd_n_s64_f64(*(&v417 + v62), 0x10uLL);
      ++v62;
    }

    while (v62 != 5);
    for (j = 0; j != 10; j += 2)
    {
      v64 = *(&v415[-2] + j) * *(&v415[-2] + j);
      if (v64 >> 30)
      {
        v410 = 1;
        v65 = 0x7FFF;
      }

      else
      {
        v65 = v64 >> 15;
      }

      v66 = (v65 * *(&v411 + j)) >> 15;
      if ((v66 & 0x10000) != 0)
      {
        v67 = v66 | 0xFFFF0000;
      }

      else
      {
        v67 = (v65 * *(&v411 + j)) >> 15;
      }

      if (v67 < 0x8000)
      {
        if (v67 <= -32769)
        {
          v410 = 1;
          LOWORD(v67) = 0x8000;
        }
      }

      else
      {
        v410 = 1;
        LOWORD(v67) = 0x7FFF;
      }

      *(&v415[-2] + j) = v67;
    }

    v407 = -21846;
    v406 = -21846;
    v405 = -21846;
    v68 = SLOWORD(v415[0]);
    v69 = SHIWORD(v414);
    v70 = SHIWORD(v414) + 4 * SLOWORD(v415[0]);
    if ((SHIWORD(v414) ^ (4 * SLOWORD(v415[0]))) < 0 || ((v70 ^ SHIWORD(v414)) & 0x80000000) == 0)
    {
      if (!v70)
      {
LABEL_110:
        v71 = 0;
LABEL_111:
        v74 = L_shl(v70, v71);
        v75 = SWORD2(v414);
        v76 = Mpy_32_16_1(v74, SWORD2(v414));
        if (v71 > -32746)
        {
          v77 = 22 - v71;
        }

        else
        {
          v410 = 1;
          v77 = 0x7FFF;
        }

        v78 = 4 * v69;
        v79 = 9 * v68;
        if (((v68 ^ (8 * v68)) & 0x80000000) == 0 && (v79 ^ (8 * v68)) < 0)
        {
          v79 = (v68 >> 15) ^ 0x7FFFFFFF;
          v410 = 1;
        }

        v80 = v79 + v78;
        if (((v79 ^ v78) & 0x80000000) == 0 && (v80 ^ v78) < 0)
        {
          v80 = (v69 >> 15) ^ 0x7FFFFFFF;
          v410 = 1;
        }

        v81 = v80 + v75;
        v402 = v76;
        v400 = v77;
        if ((v80 ^ v75) < 0 || ((v81 ^ v75) & 0x80000000) == 0)
        {
          if (!v81)
          {
LABEL_130:
            v82 = 0;
LABEL_131:
            v85 = L_shl(v81, v82);
            v403 = SWORD1(v414);
            v86 = Mpy_32_16_1(v85, SWORD1(v414));
            if (v82 > -32746)
            {
              v87 = 22 - v82;
            }

            else
            {
              v410 = 1;
              v87 = 0x7FFF;
            }

            v88 = 9 * v69;
            if (((v69 ^ (8 * v69)) & 0x80000000) == 0 && (v88 ^ (8 * v69)) < 0)
            {
              v88 = (v69 >> 15) ^ 0x7FFFFFFF;
              v410 = 1;
            }

            v89 = 4 * v75;
            v90 = v88 + 16 * v68;
            if (((v88 ^ (16 * v68)) & 0x80000000) == 0 && (v90 ^ v88) < 0)
            {
              v90 = (v88 >> 31) ^ 0x7FFFFFFF;
              v410 = 1;
            }

            v91 = v90 + v89;
            if (((v90 ^ v89) & 0x80000000) == 0 && (v91 ^ v89) < 0)
            {
              v91 = (v75 >> 15) ^ 0x7FFFFFFF;
              v410 = 1;
            }

            v92 = v69 * v68;
            v93 = v91 + v403;
            v396 = v34;
            v398 = v69;
            if ((v91 ^ v403) < 0 || ((v93 ^ v403) & 0x80000000) == 0)
            {
              if (!v93)
              {
LABEL_153:
                v94 = v86;
                v95 = 0;
LABEL_154:
                v98 = L_shl(v93, v95);
                v99 = v414;
                v100 = Mpy_32_16_1(v98, v414);
                if (v95 > -32746)
                {
                  v101 = 22 - v95;
                }

                else
                {
                  v410 = 1;
                  v101 = 0x7FFF;
                }

                v102 = BASOP_Util_Add_Mant32Exp(v92, 7, v402, v400, &v407, &v410);
                v103 = BASOP_Util_Add_Mant32Exp(v94, v87, v100, v101, &v406, &v410);
                v104 = BASOP_Util_Add_Mant32Exp(v102, v407, v103, v406, &v405, &v410);
                if (v104)
                {
                  v105 = v99;
                  v106 = v403;
                  v107 = v398;
                  if (v104 == -1)
                  {
                    v108 = 31;
                    v109 = v75;
                  }

                  else
                  {
                    v110 = v104 ^ (v104 >> 31);
                    v109 = v75;
                    v108 = 0;
                    if (v110 <= 0x3FFFFFFF)
                    {
                      do
                      {
                        v111 = v110 >> 29;
                        v110 *= 2;
                        ++v108;
                      }

                      while (!v111);
                    }
                  }
                }

                else
                {
                  v108 = 0;
                  v105 = v99;
                  v109 = v75;
                  v106 = v403;
                  v107 = v398;
                }

                v112 = v108;
                result = L_shl(v104, v108);
                if (((result + 0x8000) ^ result) > -1 || (result & 0x80000000) != 0)
                {
                  v114 = (result + 0x8000) >> 16;
                }

                else
                {
                  v114 = 0x7FFF;
                }

                v115 = v112 - v405;
                if (v115 >= 0x8000)
                {
                  goto LABEL_170;
                }

                if (v115 > -32769)
                {
                  if (v115 >= 32753)
                  {
LABEL_170:
                    v410 = 1;
                    v116 = 0x7FFF;
                    goto LABEL_175;
                  }

                  v116 = v115 + 15;
                }

                else
                {
                  v410 = 1;
                  v116 = -32753;
                }

LABEL_175:
                if (!v114)
                {
                  v31 = 0.0;
                  v120 = 1;
                  v121 = a11;
LABEL_788:
                  *v121 = v120;
                  goto LABEL_82;
                }

                if ((v114 & 1) == 0)
                {
                  do
                  {
                    v117 = v114;
                    if (v116 == 0x8000)
                    {
                      v410 = 1;
                      v116 = 0x8000;
                    }

                    else
                    {
                      --v116;
                    }

                    v114 = v114 >> 1;
                  }

                  while ((v117 & 2) == 0);
                }

                v118 = (-32768 * v105) >> 15;
                if ((v118 & 0x10000) != 0)
                {
                  v119 = v118 | 0xFFFF0000;
                }

                else
                {
                  v119 = (-32768 * v105) >> 15;
                }

                if (v119 < 0x8000)
                {
                  if (v119 > -32769)
                  {
                    v119 = v119;
                  }

                  else
                  {
                    v410 = 1;
                    v119 = -32768;
                  }
                }

                else
                {
                  v410 = 1;
                  v119 = 0x7FFF;
                }

                v122 = v119 * v68;
                v123 = 2 * v119 * v68;
                v124 = (-18432 * v106 + 0x4000) >> 15;
                if ((v124 & 0x10000) != 0)
                {
                  v125 = v124 | 0xFFFF0000;
                }

                else
                {
                  v125 = (-18432 * v106 + 0x4000) >> 15;
                }

                v126 = v125;
                if (v125 < -32768)
                {
                  v126 = -32768;
                }

                v127 = v126 * v68;
                v128 = 2 * v126 * v68;
                if (v127 == 0x40000000)
                {
                  v128 = 0x7FFFFFFF;
                }

                v129 = v122 == 0x40000000;
                if (v122 == 0x40000000)
                {
                  v130 = 0x7FFFFFFF;
                }

                else
                {
                  v130 = v123;
                }

                if (v129 || v125 < -32768 || v127 == 0x40000000)
                {
                  v410 = 1;
                }

                v131 = v128 + v130;
                if (((v128 ^ v130) & 0x80000000) == 0 && (v131 ^ v130) < 0)
                {
                  v131 = (v130 >> 31) ^ 0x7FFFFFFF;
                  v410 = 1;
                }

                v132 = (0x4000 - (v109 << 13)) >> 15;
                if ((v132 & 0x10000) != 0)
                {
                  v133 = v132 | 0xFFFF0000;
                }

                else
                {
                  v133 = (0x4000 - (v109 << 13)) >> 15;
                }

                if (v133 < 0x8000)
                {
                  if (v133 > -32769)
                  {
                    v133 = v133;
                  }

                  else
                  {
                    v410 = 1;
                    v133 = -32768;
                  }
                }

                else
                {
                  v410 = 1;
                  v133 = 0x7FFF;
                }

                v134 = v133 * v68;
                if (v134 == 0x40000000)
                {
                  v410 = 1;
                  v135 = 0x7FFFFFFF;
                }

                else
                {
                  v135 = 2 * v134;
                }

                v136 = v135 + v131;
                if (((v135 ^ v131) & 0x80000000) == 0 && (v136 ^ v131) < 0)
                {
                  v136 = (v131 >> 31) ^ 0x7FFFFFFF;
                  v410 = 1;
                }

                v137 = (0x4000 - (v68 << 12)) >> 15;
                if ((v137 & 0x10000) != 0)
                {
                  v138 = v137 | 0xFFFF0000;
                }

                else
                {
                  v138 = (0x4000 - (v68 << 12)) >> 15;
                }

                if (v138 < 0x8000)
                {
                  if (v138 <= -32769)
                  {
                    v410 = 1;
                    LOWORD(v138) = 0x8000;
                  }
                }

                else
                {
                  v410 = 1;
                  LOWORD(v138) = 0x7FFF;
                }

                v139 = ((v107 << 14) + 0x4000) >> 15;
                if ((v139 & 0x10000) != 0)
                {
                  v140 = v139 | 0xFFFF0000;
                }

                else
                {
                  v140 = ((v107 << 14) + 0x4000) >> 15;
                }

                if (v140 < 0x8000)
                {
                  if (v140 > -32769)
                  {
                    v141 = v140;
                  }

                  else
                  {
                    v410 = 1;
                    v141 = 0x8000;
                  }
                }

                else
                {
                  v410 = 1;
                  v141 = 0x7FFF;
                }

                v142 = mac_r(v136, v138, v141, &v410);
                v143 = (0x4000 - 24576 * v105) >> 15;
                if ((v143 & 0x10000) != 0)
                {
                  v144 = v143 | 0xFFFF0000;
                }

                else
                {
                  v144 = (0x4000 - 24576 * v105) >> 15;
                }

                v145 = v144;
                if (v144 < -32768)
                {
                  v145 = -32768;
                }

                v146 = v145 * v107;
                v147 = 2 * v145 * v107;
                if (v146 == 0x40000000)
                {
                  v147 = 0x7FFFFFFF;
                }

                v148 = (0x4000 - 12288 * v106) >> 15;
                if ((v148 & 0x10000) != 0)
                {
                  v149 = v148 | 0xFFFF0000;
                }

                else
                {
                  v149 = (0x4000 - 12288 * v106) >> 15;
                }

                if (v149 >= -32768)
                {
                  v150 = v149;
                }

                else
                {
                  v150 = -32768;
                }

                v151 = v150 * v107;
                v152 = 2 * v150 * v107;
                if (v151 == 0x40000000)
                {
                  v152 = 0x7FFFFFFF;
                }

                if (v144 < -32768 || v146 == 0x40000000 || v149 < -32768 || v151 == 0x40000000)
                {
                  v410 = 1;
                }

                v153 = v152 + v147;
                if (((v152 ^ v147) & 0x80000000) == 0 && (v153 ^ v147) < 0)
                {
                  v153 = (v147 >> 31) ^ 0x7FFFFFFF;
                  v410 = 1;
                }

                v154 = (0x4000 - (v109 << 12)) >> 15;
                if ((v154 & 0x10000) != 0)
                {
                  v155 = v154 | 0xFFFF0000;
                }

                else
                {
                  v155 = (0x4000 - (v109 << 12)) >> 15;
                }

                v393 = v142;
                if (v155 < 0x8000)
                {
                  if (v155 <= -32769)
                  {
                    v410 = 1;
                    LOWORD(v155) = 0x8000;
                  }
                }

                else
                {
                  v410 = 1;
                  LOWORD(v155) = 0x7FFF;
                }

                v156 = mac_r(v153, v155, v107, &v410);
                v157 = (0x4000 - (v105 << 14)) >> 15;
                if ((v157 & 0x10000) != 0)
                {
                  v158 = v157 | 0xFFFF0000;
                }

                else
                {
                  v158 = (0x4000 - (v105 << 14)) >> 15;
                }

                v391 = v156;
                if (v158 < 0x8000)
                {
                  if (v158 > -32769)
                  {
                    v158 = v158;
                  }

                  else
                  {
                    v410 = 1;
                    v158 = -32768;
                  }
                }

                else
                {
                  v410 = 1;
                  v158 = 0x7FFF;
                }

                v159 = v158 * v109;
                v160 = (0x4000 - 6144 * v106) >> 15;
                if ((v160 & 0x10000) != 0)
                {
                  v161 = v160 | 0xFFFF0000;
                }

                else
                {
                  v161 = (0x4000 - 6144 * v106) >> 15;
                }

                v162 = v161;
                if (v161 < -32768)
                {
                  v162 = -32768;
                }

                v163 = v162 * v109;
                v164 = 2 * v162 * v109;
                if (v163 == 0x40000000)
                {
                  v164 = 0x7FFFFFFF;
                }

                v165 = v159 == 0x40000000;
                if (v159 == 0x40000000)
                {
                  v166 = 0x7FFFFFFF;
                }

                else
                {
                  v166 = 2 * v159;
                }

                if (v165 || v161 < -32768 || v163 == 0x40000000)
                {
                  v410 = 1;
                }

                v167 = v164 + v166;
                if (((v164 ^ v166) & 0x80000000) == 0 && (v167 ^ v166) < 0)
                {
                  v167 = (v166 >> 31) ^ 0x7FFFFFFF;
                  v410 = 1;
                }

                v168 = ((v109 << 12) + 0x4000) >> 15;
                if ((v168 & 0x10000) != 0)
                {
                  v169 = v168 | 0xFFFF0000;
                }

                else
                {
                  v169 = ((v109 << 12) + 0x4000) >> 15;
                }

                if (v169 < 0x8000)
                {
                  if (v169 <= -32769)
                  {
                    v410 = 1;
                    LOWORD(v169) = 0x8000;
                  }
                }

                else
                {
                  v410 = 1;
                  LOWORD(v169) = 0x7FFF;
                }

                if (v140 < 0x8000)
                {
                  if (v140 <= -32769)
                  {
                    v410 = 1;
                    LOWORD(v140) = 0x8000;
                  }
                }

                else
                {
                  v410 = 1;
                  LOWORD(v140) = 0x7FFF;
                }

                v170 = mac_r(v167, v169, v140, &v410);
                v171 = ((v106 << 12) + 0x4000) >> 15;
                if ((v171 & 0x10000) != 0)
                {
                  v171 |= 0xFFFF0000;
                }

                if (v171 < 0x8000)
                {
                  if (v171 > -32769)
                  {
                    v172 = v171;
                  }

                  else
                  {
                    v410 = 1;
                    v172 = -32768;
                  }
                }

                else
                {
                  v410 = 1;
                  v172 = 0x7FFF;
                }

                v173 = v172 * v109;
                if (v173 == 0x40000000)
                {
                  v410 = 1;
                  v174 = 0x7FFFFFFF;
                }

                else
                {
                  v174 = 2 * v173;
                }

                if (v171 < 0x8000)
                {
                  if (v171 > -32769)
                  {
                    v171 = v171;
                  }

                  else
                  {
                    v410 = 1;
                    v171 = -32768;
                  }
                }

                else
                {
                  v410 = 1;
                  v171 = 0x7FFF;
                }

                v175 = v171 * v107;
                if (v175 == 0x40000000)
                {
                  v410 = 1;
                  v176 = 0x7FFFFFFF;
                }

                else
                {
                  v176 = 2 * v175;
                }

                v177 = v176 + v174;
                if (((v176 ^ v174) & 0x80000000) == 0 && (v177 ^ v174) < 0)
                {
                  v177 = (v174 >> 31) ^ 0x7FFFFFFF;
                  v410 = 1;
                }

                v178 = (0x4000 - (v105 << 13)) >> 15;
                if ((v178 & 0x10000) != 0)
                {
                  v179 = v178 | 0xFFFF0000;
                }

                else
                {
                  v179 = (0x4000 - (v105 << 13)) >> 15;
                }

                v389 = v170;
                if (v179 < 0x8000)
                {
                  if (v179 <= -32769)
                  {
                    v410 = 1;
                    LOWORD(v179) = 0x8000;
                  }
                }

                else
                {
                  v410 = 1;
                  LOWORD(v179) = 0x7FFF;
                }

                v180 = v105 << 13;
                v181 = mac_r(v177, v179, v403, &v410);
                v182 = (6144 * v105 + 0x4000) >> 15;
                if ((v182 & 0x10000) != 0)
                {
                  v183 = v182 | 0xFFFF0000;
                }

                else
                {
                  v183 = (6144 * v105 + 0x4000) >> 15;
                }

                v184 = v183;
                if (v183 < -32768)
                {
                  v184 = -32768;
                }

                v185 = v184 * v403;
                v186 = 2 * v184 * v403;
                if (v185 == 0x40000000)
                {
                  v186 = 0x7FFFFFFF;
                }

                if (v183 < -32768 || v185 == 0x40000000)
                {
                  v410 = 1;
                }

                v187 = (v180 + 0x4000) >> 15;
                if ((v187 & 0x10000) != 0)
                {
                  v188 = v187 | 0xFFFF0000;
                }

                else
                {
                  v188 = (v180 + 0x4000) >> 15;
                }

                if (v188 < 0x8000)
                {
                  if (v188 > -32769)
                  {
                    v188 = v188;
                  }

                  else
                  {
                    v410 = 1;
                    v188 = -32768;
                  }
                }

                else
                {
                  v410 = 1;
                  v188 = 0x7FFF;
                }

                v189 = v188 * v109;
                if (v189 == 0x40000000)
                {
                  v410 = 1;
                  v190 = 0x7FFFFFFF;
                }

                else
                {
                  v190 = 2 * v189;
                }

                v191 = v190 + v186;
                if (((v190 ^ v186) & 0x80000000) == 0 && (v191 ^ v186) < 0)
                {
                  v191 = (v186 >> 31) ^ 0x7FFFFFFF;
                  v410 = 1;
                }

                if (v183 <= -32769)
                {
                  v410 = 1;
                  LOWORD(v183) = 0x8000;
                }

                v192 = SHIWORD(v414);
                v193 = mac_r(v191, v183, SHIWORD(v414), &v410);
                v194 = (SLODWORD(v413[0]) >> 31) ^ 0x7FFFFFFF;
                if ((LODWORD(v413[0]) - 0x8000000) >> 28 == 15)
                {
                  v194 = 16 * LODWORD(v413[0]);
                }

                v195 = ((v194 + 0x8000) ^ v194) > -1 || v194 < 0;
                v196 = (v194 + 0x8000) >> 16;
                if (!v195)
                {
                  v196 = 0x7FFF;
                }

                v197 = v196 * v193;
                if (v197 == 0x40000000)
                {
                  v410 = 1;
                  v198 = 0x7FFFFFFF;
                }

                else
                {
                  v198 = 2 * v197;
                }

                v199 = (SHIDWORD(v413[0]) >> 31) ^ 0x7FFFFFFF;
                if ((HIDWORD(v413[0]) - 0x8000000) >> 28 == 15)
                {
                  v199 = 16 * HIDWORD(v413[0]);
                }

                v200 = ((v199 + 0x8000) ^ v199) > -1 || v199 < 0;
                v201 = (v199 + 0x8000) >> 16;
                if (!v200)
                {
                  v201 = 0x7FFF;
                }

                v202 = v201 * v181;
                if (v202 == 0x40000000)
                {
                  v410 = 1;
                  v203 = 0x7FFFFFFF;
                }

                else
                {
                  v203 = 2 * v202;
                }

                v204 = v203 + v198;
                if (((v203 ^ v198) & 0x80000000) == 0 && (v204 ^ v198) < 0)
                {
                  v204 = (v198 >> 31) ^ 0x7FFFFFFF;
                  v410 = 1;
                }

                v205 = (SLODWORD(v413[1]) >> 31) ^ 0x7FFFFFFF;
                if ((LODWORD(v413[1]) - 0x8000000) >> 28 == 15)
                {
                  v205 = 16 * LODWORD(v413[1]);
                }

                v206 = ((v205 + 0x8000) ^ v205) > -1 || v205 < 0;
                v207 = (v205 + 0x8000) >> 16;
                if (!v206)
                {
                  v207 = 0x7FFF;
                }

                v208 = v207 * v389;
                if (v208 == 0x40000000)
                {
                  v410 = 1;
                  v209 = 0x7FFFFFFF;
                }

                else
                {
                  v209 = 2 * v208;
                }

                v210 = v209 + v204;
                if (((v209 ^ v204) & 0x80000000) == 0 && (v210 ^ v204) < 0)
                {
                  v210 = (v204 >> 31) ^ 0x7FFFFFFF;
                  v410 = 1;
                }

                v211 = (SHIDWORD(v413[1]) >> 31) ^ 0x7FFFFFFF;
                if ((HIDWORD(v413[1]) - 0x8000000) >> 28 == 15)
                {
                  v211 = 16 * HIDWORD(v413[1]);
                }

                v212 = ((v211 + 0x8000) ^ v211) > -1 || v211 < 0;
                v213 = (v211 + 0x8000) >> 16;
                if (!v212)
                {
                  v213 = 0x7FFF;
                }

                v214 = v213 * v391;
                if (v214 == 0x40000000)
                {
                  v410 = 1;
                  v215 = 0x7FFFFFFF;
                }

                else
                {
                  v215 = 2 * v214;
                }

                v216 = v215 + v210;
                if (((v215 ^ v210) & 0x80000000) == 0 && (v216 ^ v210) < 0)
                {
                  v216 = (v210 >> 31) ^ 0x7FFFFFFF;
                  v410 = 1;
                }

                v217 = (SLODWORD(v413[2]) >> 31) ^ 0x7FFFFFFF;
                if ((LODWORD(v413[2]) - 0x8000000) >> 28 == 15)
                {
                  v217 = 16 * LODWORD(v413[2]);
                }

                v218 = ((v217 + 0x8000) ^ v217) > -1 || v217 < 0;
                v219 = (v217 + 0x8000) >> 16;
                if (!v218)
                {
                  v219 = 0x7FFF;
                }

                v220 = v219 * v393;
                if (v220 == 0x40000000)
                {
                  v410 = 1;
                  v221 = 0x7FFFFFFF;
                }

                else
                {
                  v221 = 2 * v220;
                }

                v222 = v221 + v216;
                if ((v221 ^ v216) < 0 || ((v222 ^ v216) & 0x80000000) == 0)
                {
                  if (!v222)
                  {
LABEL_425:
                    v223 = 0;
LABEL_426:
                    v226 = v105 << 14;
                    v227 = L_shl(v222, v223);
                    if (v227 == 0x80000000)
                    {
                      v228 = 0x7FFFFFFF;
                    }

                    else
                    {
                      v228 = -v227;
                    }

                    v229 = v114;
                    v230 = BASOP_Util_Divide3216_Scale(v228, v114, &v409, &v410);
                    v231 = SWORD1(v414);
                    v232 = (v105 * SWORD1(v414) + 0x4000) >> 15;
                    if ((v232 & 0x10000) != 0)
                    {
                      v233 = v232 | 0xFFFF0000;
                    }

                    else
                    {
                      v233 = (v105 * SWORD1(v414) + 0x4000) >> 15;
                    }

                    v399 = v230;
                    if (v233 < 0x8000)
                    {
                      if (v233 > -32769)
                      {
                        v234 = v233 << 16 >> 2;
                      }

                      else
                      {
                        v410 = 1;
                        v234 = -536870912;
                      }
                    }

                    else
                    {
                      v410 = 1;
                      v234 = 536854528;
                    }

                    v235 = (v226 + 0x4000) >> 15;
                    if ((v235 & 0x10000) != 0)
                    {
                      v236 = v235 | 0xFFFF0000;
                    }

                    else
                    {
                      v236 = (v226 + 0x4000) >> 15;
                    }

                    v394 = v229;
                    if (v236 < 0x8000)
                    {
                      if (v236 > -32769)
                      {
                        v236 = v236;
                      }

                      else
                      {
                        v410 = 1;
                        v236 = -32768;
                      }
                    }

                    else
                    {
                      v410 = 1;
                      v236 = 0x7FFF;
                    }

                    v237 = SWORD2(v414);
                    v238 = v236 * SWORD2(v414);
                    if (v238 == 0x40000000)
                    {
                      v410 = 1;
                      v239 = 0x7FFFFFFF;
                    }

                    else
                    {
                      v239 = 2 * v238;
                    }

                    v240 = v239 + v234;
                    if (((v239 ^ v234) & 0x80000000) == 0 && (v240 ^ v234) < 0)
                    {
                      v240 = (v234 >> 31) ^ 0x7FFFFFFF;
                      v410 = 1;
                    }

                    v241 = (24576 * v105 + 0x4000) >> 15;
                    if ((v241 & 0x10000) != 0)
                    {
                      v242 = v241 | 0xFFFF0000;
                    }

                    else
                    {
                      v242 = (24576 * v105 + 0x4000) >> 15;
                    }

                    v243 = v242;
                    if (v242 < -32768)
                    {
                      v243 = -32768;
                    }

                    v244 = v243 * v192;
                    v245 = 2 * v243 * v192;
                    if (v244 == 0x40000000)
                    {
                      v245 = 0x7FFFFFFF;
                    }

                    if (v242 < -32768 || v244 == 0x40000000)
                    {
                      v410 = 1;
                    }

                    v246 = v245 + v240;
                    if (((v245 ^ v240) & 0x80000000) == 0 && (v246 ^ v240) < 0)
                    {
                      v246 = (v240 >> 31) ^ 0x7FFFFFFF;
                      v410 = 1;
                    }

                    v247 = SLOWORD(v415[0]);
                    v404 = v414;
                    v248 = mac_r(v246, v414, SLOWORD(v415[0]), &v410);
                    v249 = (v231 * v237 + 0x4000) >> 15;
                    if ((v249 & 0x10000) != 0)
                    {
                      v250 = v249 | 0xFFFF0000;
                    }

                    else
                    {
                      v250 = (v231 * v237 + 0x4000) >> 15;
                    }

                    v401 = v248;
                    if (v250 < 0x8000)
                    {
                      if (v250 > -32769)
                      {
                        v251 = v250 << 16 >> 2;
                      }

                      else
                      {
                        v410 = 1;
                        v251 = -536870912;
                      }
                    }

                    else
                    {
                      v410 = 1;
                      v251 = 536854528;
                    }

                    v252 = v231 << 14;
                    v253 = ((v231 << 14) + 0x4000) >> 15;
                    if ((v253 & 0x10000) != 0)
                    {
                      v254 = v253 | 0xFFFF0000;
                    }

                    else
                    {
                      v254 = ((v231 << 14) + 0x4000) >> 15;
                    }

                    if (v254 < 0x8000)
                    {
                      if (v254 > -32769)
                      {
                        v255 = v254;
                      }

                      else
                      {
                        v410 = 1;
                        v255 = -32768;
                      }
                    }

                    else
                    {
                      v410 = 1;
                      v255 = 0x7FFF;
                    }

                    v256 = v255 * v192;
                    if (v256 == 0x40000000)
                    {
                      v410 = 1;
                      v257 = 0x7FFFFFFF;
                    }

                    else
                    {
                      v257 = 2 * v256;
                    }

                    v258 = v257 + v251;
                    if (((v257 ^ v251) & 0x80000000) == 0 && (v258 ^ v251) < 0)
                    {
                      v258 = (v251 >> 31) ^ 0x7FFFFFFF;
                      v410 = 1;
                    }

                    v259 = (24576 * v231 + 0x4000) >> 15;
                    if ((v259 & 0x10000) != 0)
                    {
                      v260 = v259 | 0xFFFF0000;
                    }

                    else
                    {
                      v260 = (24576 * v231 + 0x4000) >> 15;
                    }

                    v261 = v260;
                    if (v260 < -32768)
                    {
                      v261 = -32768;
                    }

                    v262 = v261 * v247;
                    v263 = 2 * v261 * v247;
                    if (v262 == 0x40000000)
                    {
                      v263 = 0x7FFFFFFF;
                    }

                    if (v260 < -32768 || v262 == 0x40000000)
                    {
                      v410 = 1;
                    }

                    v264 = v263 + v258;
                    v392 = v231;
                    if (((v263 ^ v258) & 0x80000000) == 0 && (v264 ^ v258) < 0)
                    {
                      v264 = (v258 >> 31) ^ 0x7FFFFFFF;
                      v410 = 1;
                    }

                    v265 = (0x4000 - v252) >> 15;
                    if ((v265 & 0x10000) != 0)
                    {
                      v266 = v265 | 0xFFFF0000;
                    }

                    else
                    {
                      v266 = (0x4000 - v252) >> 15;
                    }

                    if (v266 < 0x8000)
                    {
                      if (v266 > -32769)
                      {
                        v267 = v266;
                      }

                      else
                      {
                        v410 = 1;
                        v267 = 0x8000;
                      }
                    }

                    else
                    {
                      v410 = 1;
                      v267 = 0x7FFF;
                    }

                    v268 = v404 << 14;
                    v269 = ((v404 << 14) + 0x4000) >> 15;
                    if ((v269 & 0x10000) != 0)
                    {
                      v270 = v269 | 0xFFFF0000;
                    }

                    else
                    {
                      v270 = ((v404 << 14) + 0x4000) >> 15;
                    }

                    if (v270 < 0x8000)
                    {
                      if (v270 <= -32769)
                      {
                        v410 = 1;
                        LOWORD(v270) = 0x8000;
                      }
                    }

                    else
                    {
                      v410 = 1;
                      LOWORD(v270) = 0x7FFF;
                    }

                    v271 = mac_r(v264, v267, v270, &v410);
                    v272 = (0x4000 - v268) >> 15;
                    if ((v272 & 0x10000) != 0)
                    {
                      v273 = v272 | 0xFFFF0000;
                    }

                    else
                    {
                      v273 = (0x4000 - v268) >> 15;
                    }

                    if (v273 < 0x8000)
                    {
                      if (v273 > -32769)
                      {
                        v273 = v273;
                      }

                      else
                      {
                        v410 = 1;
                        v273 = -32768;
                      }
                    }

                    else
                    {
                      v410 = 1;
                      v273 = 0x7FFF;
                    }

                    v274 = v273 * v237;
                    if (v274 == 0x40000000)
                    {
                      v410 = 1;
                      v275 = 0x7FFFFFFF;
                    }

                    else
                    {
                      v275 = 2 * v274;
                    }

                    v276 = (0x4000 - (v237 << 14)) >> 15;
                    if ((v276 & 0x10000) != 0)
                    {
                      v277 = v276 | 0xFFFF0000;
                    }

                    else
                    {
                      v277 = (0x4000 - (v237 << 14)) >> 15;
                    }

                    if (v277 < 0x8000)
                    {
                      if (v277 > -32769)
                      {
                        v278 = v277;
                      }

                      else
                      {
                        v410 = 1;
                        v278 = -32768;
                      }
                    }

                    else
                    {
                      v410 = 1;
                      v278 = 0x7FFF;
                    }

                    if (v254 < 0x8000)
                    {
                      if (v254 > -32769)
                      {
                        v279 = v254;
                      }

                      else
                      {
                        v410 = 1;
                        v279 = -32768;
                      }
                    }

                    else
                    {
                      v410 = 1;
                      v279 = 0x7FFF;
                    }

                    v280 = v279 * v278;
                    if (v280 == 0x40000000)
                    {
                      v410 = 1;
                      v281 = 0x7FFFFFFF;
                    }

                    else
                    {
                      v281 = 2 * v280;
                    }

                    v282 = v281 + v275;
                    if (((v281 ^ v275) & 0x80000000) == 0 && (v282 ^ v275) < 0)
                    {
                      v282 = (v275 >> 31) ^ 0x7FFFFFFF;
                      v410 = 1;
                    }

                    v283 = v237 << 14;
                    v284 = v192 << 14;
                    v285 = ((v192 << 14) + 0x4000) >> 15;
                    if ((v285 & 0x10000) != 0)
                    {
                      v286 = v285 | 0xFFFF0000;
                    }

                    else
                    {
                      v286 = ((v192 << 14) + 0x4000) >> 15;
                    }

                    if (v286 < 0x8000)
                    {
                      if (v286 > -32769)
                      {
                        v287 = v286;
                      }

                      else
                      {
                        v410 = 1;
                        v287 = -32768;
                      }
                    }

                    else
                    {
                      v410 = 1;
                      v287 = 0x7FFF;
                    }

                    v288 = (v283 + 0x4000) >> 15;
                    if ((v288 & 0x10000) != 0)
                    {
                      v289 = v288 | 0xFFFF0000;
                    }

                    else
                    {
                      v289 = (v283 + 0x4000) >> 15;
                    }

                    if (v289 < 0x8000)
                    {
                      if (v289 > -32769)
                      {
                        v290 = v289;
                      }

                      else
                      {
                        v410 = 1;
                        v290 = -32768;
                      }
                    }

                    else
                    {
                      v410 = 1;
                      v290 = 0x7FFF;
                    }

                    v291 = v290 * v287;
                    if (v291 == 0x40000000)
                    {
                      v410 = 1;
                      v292 = 0x7FFFFFFF;
                    }

                    else
                    {
                      v292 = 2 * v291;
                    }

                    v293 = v292 + v282;
                    if (((v292 ^ v282) & 0x80000000) == 0 && (v293 ^ v282) < 0)
                    {
                      v293 = (v282 >> 31) ^ 0x7FFFFFFF;
                      v410 = 1;
                    }

                    v388 = v277;
                    v390 = v271;
                    if (v289 < 0x8000)
                    {
                      if (v289 > -32769)
                      {
                        v294 = v289;
                      }

                      else
                      {
                        v410 = 1;
                        v294 = 0x8000;
                      }
                    }

                    else
                    {
                      v410 = 1;
                      v294 = 0x7FFF;
                    }

                    v295 = mac_r(v293, v294, v247, &v410);
                    v296 = (0x4000 - 24576 * v404) >> 15;
                    if ((v296 & 0x10000) != 0)
                    {
                      v297 = v296 | 0xFFFF0000;
                    }

                    else
                    {
                      v297 = (0x4000 - 24576 * v404) >> 15;
                    }

                    v298 = v297;
                    if (v297 < -32768)
                    {
                      v298 = -32768;
                    }

                    v299 = v298 * v192;
                    v300 = 2 * v299;
                    if (v299 == 0x40000000)
                    {
                      v300 = 0x7FFFFFFF;
                    }

                    if (v297 < -32768 || v299 == 0x40000000)
                    {
                      v410 = 1;
                    }

                    if (v266 < 0x8000)
                    {
                      if (v266 > -32769)
                      {
                        v301 = v266;
                      }

                      else
                      {
                        v410 = 1;
                        v301 = -32768;
                      }
                    }

                    else
                    {
                      v410 = 1;
                      v301 = 0x7FFF;
                    }

                    v302 = v301 * v192;
                    if (v302 == 0x40000000)
                    {
                      v410 = 1;
                      v303 = 0x7FFFFFFF;
                    }

                    else
                    {
                      v303 = 2 * v302;
                    }

                    v304 = v303 + v300;
                    if (((v303 ^ v300) & 0x80000000) == 0 && (v304 ^ v300) < 0)
                    {
                      v304 = (v300 >> 31) ^ 0x7FFFFFFF;
                      v410 = 1;
                    }

                    v305 = (0x4000 - v284) >> 15;
                    if ((v305 & 0x10000) != 0)
                    {
                      v306 = v305 | 0xFFFF0000;
                    }

                    else
                    {
                      v306 = (0x4000 - v284) >> 15;
                    }

                    if (v306 < 0x8000)
                    {
                      if (v306 > -32769)
                      {
                        v306 = v306;
                      }

                      else
                      {
                        v410 = 1;
                        v306 = -32768;
                      }
                    }

                    else
                    {
                      v410 = 1;
                      v306 = 0x7FFF;
                    }

                    if (v289 < 0x8000)
                    {
                      if (v289 > -32769)
                      {
                        v307 = v289;
                      }

                      else
                      {
                        v410 = 1;
                        v307 = -32768;
                      }
                    }

                    else
                    {
                      v410 = 1;
                      v307 = 0x7FFF;
                    }

                    v308 = v307 * v306;
                    if (v308 == 0x40000000)
                    {
                      v410 = 1;
                      v309 = 0x7FFFFFFF;
                    }

                    else
                    {
                      v309 = 2 * v308;
                    }

                    v310 = v309 + v304;
                    if (((v309 ^ v304) & 0x80000000) == 0 && (v310 ^ v304) < 0)
                    {
                      v310 = (v304 >> 31) ^ 0x7FFFFFFF;
                      v410 = 1;
                    }

                    v311 = v247 << 14;
                    v312 = ((v247 << 14) + 0x4000) >> 15;
                    if ((v312 & 0x10000) != 0)
                    {
                      v313 = v312 | 0xFFFF0000;
                    }

                    else
                    {
                      v313 = ((v247 << 14) + 0x4000) >> 15;
                    }

                    if (v313 < 0x8000)
                    {
                      if (v313 <= -32769)
                      {
                        v410 = 1;
                        LOWORD(v313) = 0x8000;
                      }
                    }

                    else
                    {
                      v410 = 1;
                      LOWORD(v313) = 0x7FFF;
                    }

                    if (v286 < 0x8000)
                    {
                      v314 = v295;
                      if (v286 <= -32769)
                      {
                        v410 = 1;
                        LOWORD(v286) = 0x8000;
                      }
                    }

                    else
                    {
                      v314 = v295;
                      v410 = 1;
                      LOWORD(v286) = 0x7FFF;
                    }

                    v315 = mac_r(v310, v313, v286, &v410);
                    v316 = (-32768 * v404) >> 15;
                    if ((v316 & 0x10000) != 0)
                    {
                      v317 = v316 | 0xFFFF0000;
                    }

                    else
                    {
                      v317 = (-32768 * v404) >> 15;
                    }

                    if (v317 < 0x8000)
                    {
                      v318 = v394;
                      v319 = v388;
                      if (v317 > -32769)
                      {
                        v317 = v317;
                      }

                      else
                      {
                        v410 = 1;
                        v317 = -32768;
                      }
                    }

                    else
                    {
                      v410 = 1;
                      v317 = 0x7FFF;
                      v318 = v394;
                      v319 = v388;
                    }

                    v320 = v317 * v247;
                    v321 = 2 * v317 * v247;
                    v322 = (0x4000 - 24576 * v392) >> 15;
                    if ((v322 & 0x10000) != 0)
                    {
                      v323 = v322 | 0xFFFF0000;
                    }

                    else
                    {
                      v323 = (0x4000 - 24576 * v392) >> 15;
                    }

                    v324 = v323;
                    if (v323 < -32768)
                    {
                      v324 = -32768;
                    }

                    v325 = v324 * v247;
                    v326 = 2 * v324 * v247;
                    if (v325 == 0x40000000)
                    {
                      v326 = 0x7FFFFFFF;
                    }

                    v327 = v320 == 0x40000000;
                    if (v320 == 0x40000000)
                    {
                      v328 = 0x7FFFFFFF;
                    }

                    else
                    {
                      v328 = v321;
                    }

                    if (v327 || v323 < -32768 || v325 == 0x40000000)
                    {
                      v410 = 1;
                    }

                    v329 = v326 + v328;
                    if (((v326 ^ v328) & 0x80000000) == 0 && (v329 ^ v328) < 0)
                    {
                      v329 = (v328 >> 31) ^ 0x7FFFFFFF;
                      v410 = 1;
                    }

                    if (v319 < 0x8000)
                    {
                      if (v319 > -32769)
                      {
                        v330 = v319;
                      }

                      else
                      {
                        v410 = 1;
                        v330 = -32768;
                      }
                    }

                    else
                    {
                      v410 = 1;
                      v330 = 0x7FFF;
                    }

                    v331 = v330 * v247;
                    if (v331 == 0x40000000)
                    {
                      v410 = 1;
                      v332 = 0x7FFFFFFF;
                    }

                    else
                    {
                      v332 = 2 * v331;
                    }

                    v333 = v332 + v329;
                    if (((v332 ^ v329) & 0x80000000) == 0 && (v333 ^ v329) < 0)
                    {
                      v333 = (v329 >> 31) ^ 0x7FFFFFFF;
                      v410 = 1;
                    }

                    v334 = (0x4000 - v311) >> 15;
                    if ((v334 & 0x10000) != 0)
                    {
                      v335 = v334 | 0xFFFF0000;
                    }

                    else
                    {
                      v335 = (0x4000 - v311) >> 15;
                    }

                    if (v335 < 0x8000)
                    {
                      if (v335 <= -32769)
                      {
                        v410 = 1;
                        LOWORD(v335) = 0x8000;
                      }
                    }

                    else
                    {
                      v410 = 1;
                      LOWORD(v335) = 0x7FFF;
                    }

                    v336 = ((SHIWORD(v414) << 14) + 0x4000) >> 15;
                    if ((v336 & 0x10000) != 0)
                    {
                      v337 = v336 | 0xFFFF0000;
                    }

                    else
                    {
                      v337 = ((SHIWORD(v414) << 14) + 0x4000) >> 15;
                    }

                    if (v337 < 0x8000)
                    {
                      if (v337 <= -32769)
                      {
                        v410 = 1;
                        LOWORD(v337) = 0x8000;
                      }
                    }

                    else
                    {
                      v410 = 1;
                      LOWORD(v337) = 0x7FFF;
                    }

                    v338 = mac_r(v333, v335, v337, &v410);
                    v339 = (SLODWORD(v413[0]) >> 31) ^ 0x7FFFFFFF;
                    if ((LODWORD(v413[0]) - 0x8000000) >> 28 == 15)
                    {
                      v339 = 16 * LODWORD(v413[0]);
                    }

                    v340 = ((v339 + 0x8000) ^ v339) > -1 || v339 < 0;
                    v341 = (v339 + 0x8000) >> 16;
                    if (!v340)
                    {
                      v341 = 0x7FFF;
                    }

                    v342 = v341 * v401;
                    if (v342 == 0x40000000)
                    {
                      v410 = 1;
                      v343 = 0x7FFFFFFF;
                    }

                    else
                    {
                      v343 = 2 * v342;
                    }

                    v344 = (SHIDWORD(v413[0]) >> 31) ^ 0x7FFFFFFF;
                    if ((HIDWORD(v413[0]) - 0x8000000) >> 28 == 15)
                    {
                      v344 = 16 * HIDWORD(v413[0]);
                    }

                    v345 = ((v344 + 0x8000) ^ v344) > -1 || v344 < 0;
                    v346 = (v344 + 0x8000) >> 16;
                    if (!v345)
                    {
                      v346 = 0x7FFF;
                    }

                    v347 = v346 * v390;
                    if (v347 == 0x40000000)
                    {
                      v410 = 1;
                      v348 = 0x7FFFFFFF;
                    }

                    else
                    {
                      v348 = 2 * v347;
                    }

                    v349 = v348 + v343;
                    if (((v348 ^ v343) & 0x80000000) == 0 && (v349 ^ v343) < 0)
                    {
                      v349 = (v343 >> 31) ^ 0x7FFFFFFF;
                      v410 = 1;
                    }

                    v350 = (SLODWORD(v413[1]) >> 31) ^ 0x7FFFFFFF;
                    if ((LODWORD(v413[1]) - 0x8000000) >> 28 == 15)
                    {
                      v350 = 16 * LODWORD(v413[1]);
                    }

                    v351 = ((v350 + 0x8000) ^ v350) > -1 || v350 < 0;
                    v352 = (v350 + 0x8000) >> 16;
                    if (!v351)
                    {
                      v352 = 0x7FFF;
                    }

                    v353 = v352 * v314;
                    if (v353 == 0x40000000)
                    {
                      v410 = 1;
                      v354 = 0x7FFFFFFF;
                    }

                    else
                    {
                      v354 = 2 * v353;
                    }

                    v355 = v354 + v349;
                    if (((v354 ^ v349) & 0x80000000) == 0 && (v355 ^ v349) < 0)
                    {
                      v355 = (v349 >> 31) ^ 0x7FFFFFFF;
                      v410 = 1;
                    }

                    v356 = (SHIDWORD(v413[1]) >> 31) ^ 0x7FFFFFFF;
                    if ((HIDWORD(v413[1]) - 0x8000000) >> 28 == 15)
                    {
                      v356 = 16 * HIDWORD(v413[1]);
                    }

                    v357 = ((v356 + 0x8000) ^ v356) > -1 || v356 < 0;
                    v358 = (v356 + 0x8000) >> 16;
                    if (!v357)
                    {
                      v358 = 0x7FFF;
                    }

                    v359 = v358 * v315;
                    if (v359 == 0x40000000)
                    {
                      v410 = 1;
                      v360 = 0x7FFFFFFF;
                    }

                    else
                    {
                      v360 = 2 * v359;
                    }

                    v361 = v360 + v355;
                    if (((v360 ^ v355) & 0x80000000) == 0 && (v361 ^ v355) < 0)
                    {
                      v361 = (v355 >> 31) ^ 0x7FFFFFFF;
                      v410 = 1;
                    }

                    v362 = (SLODWORD(v413[2]) >> 31) ^ 0x7FFFFFFF;
                    if ((LODWORD(v413[2]) - 0x8000000) >> 28 == 15)
                    {
                      v362 = 16 * LODWORD(v413[2]);
                    }

                    v363 = ((v362 + 0x8000) ^ v362) > -1 || v362 < 0;
                    v364 = (v362 + 0x8000) >> 16;
                    if (!v363)
                    {
                      v364 = 0x7FFF;
                    }

                    v365 = v364 * v338;
                    if (v365 == 0x40000000)
                    {
                      v410 = 1;
                      v366 = 0x7FFFFFFF;
                    }

                    else
                    {
                      v366 = 2 * v365;
                    }

                    v367 = v366 + v361;
                    if ((v366 ^ v361) < 0 || ((v367 ^ v361) & 0x80000000) == 0)
                    {
                      if (!v367)
                      {
LABEL_741:
                        v368 = 0;
LABEL_742:
                        v371 = L_shl(v367, v368);
                        v372 = BASOP_Util_Divide3216_Scale(v371, v318, &v408, &v410);
                        if (v116 < 32761)
                        {
                          v373 = (v116 + 7);
                        }

                        else
                        {
                          v410 = 1;
                          v373 = 0x7FFF;
                        }

                        v374 = v409 - v223;
                        if (v374 < 0x8000)
                        {
                          if (v374 > -32769)
                          {
                            v374 = v374;
                          }

                          else
                          {
                            v410 = 1;
                            v374 = -32768;
                          }
                        }

                        else
                        {
                          v410 = 1;
                          v374 = 0x7FFF;
                        }

                        v375 = v374 + v373;
                        if (v375 < 0x8000)
                        {
                          if (v375 <= -32769)
                          {
                            v410 = 1;
                            LOWORD(v375) = 0x8000;
                          }
                        }

                        else
                        {
                          v410 = 1;
                          LOWORD(v375) = 0x7FFF;
                        }

                        v376 = L_shl(v399, v375);
                        v377 = v396 + a12;
                        v378 = (v396 + a12);
                        if (v377 >= 0x8000)
                        {
                          v378 = 0x7FFF;
                        }

                        v379 = v378 * v372;
                        if (v379 == 0x40000000)
                        {
                          v380 = 0x7FFFFFFF;
                        }

                        else
                        {
                          v380 = 2 * v379;
                        }

                        if (v377 >= 0x8000 || v379 == 0x40000000)
                        {
                          v410 = 1;
                        }

                        if (v116 < 32764)
                        {
                          v381 = (v116 + 4);
                        }

                        else
                        {
                          v410 = 1;
                          v381 = 0x7FFF;
                        }

                        v382 = v408 - v368;
                        if (v382 < 0x8000)
                        {
                          if (v382 > -32769)
                          {
                            v382 = v382;
                          }

                          else
                          {
                            v410 = 1;
                            v382 = -32768;
                          }
                        }

                        else
                        {
                          v410 = 1;
                          v382 = 0x7FFF;
                        }

                        v383 = v382 + v381;
                        if (v382 + v381 >= 0x8000)
                        {
                          v410 = 1;
                          LOWORD(v383) = 0x7FFF;
LABEL_775:
                          result = L_shl(v380, v383);
LABEL_780:
                          v385 = result + v376;
                          if (((result ^ v376) & 0x80000000) != 0)
                          {
                            v386 = a6;
                            v121 = a11;
                            v387 = a7;
                          }

                          else
                          {
                            v386 = a6;
                            v121 = a11;
                            v387 = a7;
                            if (((v385 ^ v376) & 0x80000000) != 0)
                            {
                              v385 = (v376 >> 31) ^ 0x7FFFFFFF;
                              v410 = 1;
                            }
                          }

                          v120 = 0;
                          v31 = vcvts_n_f32_s32(v385, 0x10uLL);
                          if (v31 > v387)
                          {
                            v31 = v387;
                          }

                          if (v31 < v386)
                          {
                            v31 = v386;
                          }

                          goto LABEL_788;
                        }

                        if (v383 > -32769)
                        {
                          if ((v383 & 0x80000000) == 0)
                          {
                            goto LABEL_775;
                          }
                        }

                        else
                        {
                          v410 = 1;
                          LOWORD(v383) = 0x8000;
                        }

                        result = 0;
                        v384 = -v383;
                        if (v384 <= 31)
                        {
                          LODWORD(result) = L_shr(v380, -v383);
                          if (v384 >= 1)
                          {
                            result = result + ((v380 >> ~v383) & 1);
                          }

                          else
                          {
                            result = result;
                          }
                        }

                        goto LABEL_780;
                      }

                      if (v367 == -1)
                      {
                        v368 = 31;
                        goto LABEL_742;
                      }
                    }

                    else
                    {
                      v410 = 1;
                      v367 = (v361 >> 31) ^ 0x7FFFFFFF;
                    }

                    v369 = v367 ^ (v367 >> 31);
                    if (v369 <= 0x3FFFFFFF)
                    {
                      v368 = 0;
                      do
                      {
                        v370 = v369 >> 29;
                        v369 *= 2;
                        ++v368;
                      }

                      while (!v370);
                      goto LABEL_742;
                    }

                    goto LABEL_741;
                  }

                  if (v222 == -1)
                  {
                    v223 = 31;
                    goto LABEL_426;
                  }
                }

                else
                {
                  v410 = 1;
                  v222 = (v216 >> 31) ^ 0x7FFFFFFF;
                }

                v224 = v222 ^ (v222 >> 31);
                if (v224 <= 0x3FFFFFFF)
                {
                  v223 = 0;
                  do
                  {
                    v225 = v224 >> 29;
                    v224 *= 2;
                    ++v223;
                  }

                  while (!v225);
                  goto LABEL_426;
                }

                goto LABEL_425;
              }

              if (v93 == -1)
              {
                v94 = v86;
                v95 = 31;
                goto LABEL_154;
              }
            }

            else
            {
              v410 = 1;
              v93 = (v403 >> 15) ^ 0x7FFFFFFF;
            }

            v96 = v93 ^ (v93 >> 31);
            if (v96 <= 0x3FFFFFFF)
            {
              v95 = 0;
              do
              {
                v97 = v96 >> 29;
                v96 *= 2;
                ++v95;
              }

              while (!v97);
              v94 = v86;
              goto LABEL_154;
            }

            goto LABEL_153;
          }

          if (v81 == -1)
          {
            v82 = 31;
            goto LABEL_131;
          }
        }

        else
        {
          v410 = 1;
          v81 = (v75 >> 15) ^ 0x7FFFFFFF;
        }

        v83 = v81 ^ (v81 >> 31);
        if (v83 <= 0x3FFFFFFF)
        {
          v82 = 0;
          do
          {
            v84 = v83 >> 29;
            v83 *= 2;
            ++v82;
          }

          while (!v84);
          goto LABEL_131;
        }

        goto LABEL_130;
      }

      if (v70 == -1)
      {
        v71 = 31;
        goto LABEL_111;
      }
    }

    else
    {
      v410 = 1;
      v70 = (SHIWORD(v414) >> 15) ^ 0x7FFFFFFF;
    }

    v72 = v70 ^ (v70 >> 31);
    if (v72 <= 0x3FFFFFFF)
    {
      v71 = 0;
      do
      {
        v73 = v72 >> 29;
        v72 *= 2;
        ++v71;
      }

      while (!v73);
      goto LABEL_111;
    }

    goto LABEL_110;
  }

  *a11 = 1;
  v31 = 0.0;
LABEL_82:
  v32 = *a5;
  v61 = *a5 + 4;
  if (v61 > *(a5 + 8) || v32 > v61 || v32 < *(a5 + 16))
  {
    goto LABEL_789;
  }

LABEL_85:
  *v32 = v31;
  return result;
}

uint64_t genPlcFiltBWAdap(uint64_t result, float *a2, unint64_t a3, int a4, float a5)
{
  v5 = flt_19B0B0290[result == 16000];
  if (a4)
  {
    v6 = (a2 + 1);
    if (a2 < a2 + 1 && v6 <= a3 && v6 >= a2)
    {
      v7 = v5 * a5;
      v8 = -(v5 * a5);
      v9 = (v7 * 2.0) + 1.0;
      v10 = v8 / v9;
      *a2 = v10;
      v11 = a2 + 2;
      if ((a2 + 2) >= v6 && v11 <= a3)
      {
        a2[1] = 1.0 / v9;
        if ((a2 + 3) <= a3 && v11 <= a2 + 3)
        {
          *v11 = v10;
          return result;
        }
      }
    }
  }

  else
  {
    v13 = (a2 + 1);
    if (a2 < a2 + 1 && v13 <= a3 && v13 >= a2)
    {
      v14 = (v5 * 2.0) + 1.0;
      *a2 = v5 / v14;
      v15 = a2 + 2;
      if ((a2 + 2) >= v13 && v15 <= a3)
      {
        a2[1] = 1.0 / v14;
        if ((a2 + 3) <= a3 && v15 <= a2 + 3)
        {
          *v15 = v5 / v14;
          return result;
        }
      }
    }
  }

  __break(0x5519u);
  return result;
}

uint64_t get_subframe_pitch(uint64_t result, float *a2, float a3, float a4)
{
  v4 = &a2[result];
  v5 = a2 + 1;
  if ((a2 + 1) > v4 || v5 < a2)
  {
LABEL_14:
    __break(0x5519u);
    return result;
  }

  v6 = (a4 - a3) / result;
  *a2 = v6 + a3;
  if (result >= 2)
  {
    v7 = result - 1;
    while (1)
    {
      v8 = v5 + 1;
      v9 = v5 - 1 < a2 || v8 > v4;
      if (v9 || v5 >= v8)
      {
        break;
      }

      *v5 = v6 + *(v5 - 1);
      ++v5;
      if (!--v7)
      {
        return result;
      }
    }

    goto LABEL_14;
  }

  return result;
}

unint64_t PulseResynchronization(unint64_t result, void *a2, int a3, int a4, float a5, float a6)
{
  *v129 = *MEMORY[0x1E69E9840];
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v128[2] = v8;
  v128[3] = v8;
  v128[0] = v8;
  v128[1] = v8;
  v127[2] = v8;
  v127[3] = v8;
  v9 = (a5 + 0.5);
  v10 = 1.0 / v9;
  v11 = ((1.0 / v9) * (((((a6 - a5) / a4) * 0.5) * a3) * (a4 + 1))) - (a3 * (1.0 - (a5 * (1.0 / v9))));
  v12 = vcvtms_s32_f32(v11 + 0.5);
  v127[0] = v8;
  v127[1] = v8;
  if (v12 >= 0)
  {
    v13 = v12;
  }

  else
  {
    v13 = -v12;
  }

  v15 = *result;
  v14 = *(result + 8);
  if (*result > v14)
  {
    goto LABEL_171;
  }

  v16 = result;
  v17 = *(result + 16);
  if (v17 > v15)
  {
    goto LABEL_171;
  }

  v18 = (a5 + 0.5);
  if ((v18 & 0x80000000) != 0 || (v14 - v15) >> 2 < v18)
  {
    goto LABEL_171;
  }

  if (v18)
  {
    v19 = 0;
    v20 = 0;
    v21 = 0.0;
    do
    {
      v22 = fabsf(*(v15 + 4 * v19));
      if (v22 > v21)
      {
        v21 = v22;
        v20 = v19;
      }

      ++v19;
    }

    while (v18 != v19);
  }

  else
  {
    v20 = 0;
  }

  v23 = a3 - v12;
  v24 = vcvtps_s32_f32(((a3 - v12 - v20) * v10) + -1.0);
  if ((v24 & 0x80000000) != 0 || v24 > 0xE)
  {
    return result;
  }

  v25 = v24 + 1;
  v26 = vabds_f32(v9, a6);
  v27 = ((v26 * (a3 - v11)) - (fabsf(v11) * v9)) / ((v20 + (vcvts_n_f32_u32(v24, 1uLL) * v9)) * v25);
  v28 = v10 * ((v26 - (v25 * v27)) * v20);
  if (v28 < 0.0)
  {
    v28 = 0.0;
  }

  v29 = v28;
  LODWORD(v127[0]) = v28;
  v30 = v13 - v28;
  if (v24)
  {
    v31 = v28 - v29;
    v32 = v25 - 1;
    v33 = v127 + 1;
    v34 = 1;
    do
    {
      v35 = v31 + (v26 - (v32 * v27));
      if (v35 < 0.0)
      {
        v35 = 0.0;
      }

      v36 = v33 + 1 > v128 || v33 > v33 + 1;
      v38 = !v36 && v33 >= v127;
      if (v35 >= v29)
      {
        v39 = v33;
        if (!v38)
        {
          goto LABEL_171;
        }
      }

      else
      {
        if (!v38)
        {
          goto LABEL_171;
        }

        *v33 = v29;
        if (v33 - 1 < v127 || v33 - 1 > v33)
        {
          goto LABEL_171;
        }

        v39 = v127 + v34 - 1;
      }

      v29 = v35;
      *v39 = v35;
      v31 = v35 - v35;
      v30 -= v29;
      ++v34;
      ++v33;
      --v32;
    }

    while (v32);
    v40 = v24 + 1;
  }

  else
  {
    v40 = 1;
  }

  v41 = v30 & ~(v30 >> 31);
  v125 = v40;
  *(v127 + v40) = v41;
  v42 = v15 + 4 * v20;
  if (v42 < v17)
  {
    goto LABEL_171;
  }

  v126 = a2;
  v43 = *(v127 + v24);
  if (v43 <= v41)
  {
    v43 = v41;
  }

  if ((a4 + 1) * a3 / a4 - v20 >= v18)
  {
    v44 = v18;
  }

  else
  {
    v44 = (a4 + 1) * a3 / a4 - v20;
  }

  v46 = GetMinimumPosition(v42, v14, v44, v43) + v20;
  if (v12 < 0)
  {
    v54 = v18 + SLODWORD(v127[0]) / 2;
    v55 = __OFSUB__(v46, v54);
    v56 = v46 - v54;
    if ((v56 < 0) ^ v55 | (v56 == 0))
    {
      if (*v16 < v16[2])
      {
        goto LABEL_171;
      }

      MinimumPosition = GetMinimumPosition(*v16, v16[1], v20, v127[0]);
      v56 = MinimumPosition - SLODWORD(v127[0]) / 2;
    }

    LODWORD(v128[0]) = v56;
    v58 = v126;
    if (v24)
    {
      v59 = 0;
      v60 = v25 - 1;
      v61 = v46;
      do
      {
        v62 = v127 + v59 + 4;
        v63 = v127 + v59 + 8;
        v65 = v62 < v127 || v63 > v128 || v62 > v63;
        v66 = v128 + v59 + 4;
        v67 = v128 + v59 + 8;
        if (v65 || v66 < v128 || v67 > v129 || v66 > v67)
        {
          goto LABEL_171;
        }

        *v66 = v61 - *v62 / 2;
        v61 += v18;
        v59 += 4;
        --v60;
      }

      while (v60);
    }

    v71 = v24 * v18;
    v72 = v46 + v24 * v18;
    v73 = v125;
    v74 = *(v127 + v125);
    if (v74 + v72 - v74 / 2 >= v23)
    {
      v95 = *v16 + 4 * v20 + 4 * v71;
      if (v95 < v16[2])
      {
        goto LABEL_171;
      }

      v96 = v71 + v20;
      v97 = GetMinimumPosition(v95, v16[1], v23 - (v71 + v20), v74);
      v73 = v125;
      v58 = v126;
      v74 = *(v127 + v125);
      v75 = v97 + v96 - v74 / 2;
    }

    else
    {
      v75 = v72 - v74 / 2;
    }

    *(v128 + v73) = v75;
    if (v74 + v75 > v23)
    {
      *(v127 + v24) += v74 + v75 - v23;
      *(v127 + v73) = v23 - v75;
    }

    v99 = *v16;
    v98 = v16[1];
    v100 = v16[2];
    v102 = v58[1];
    v101 = v58[2];
    v103 = v24 + 2;
    result = *v58 + 4 * a3;
    v104 = v128 + v103;
    v105 = v127 + 4 * v103;
    do
    {
      v106 = v128 + v103 - 1;
      v107 = v106 + 1;
      v109 = v106 < v128 || v107 > v104 || v106 > v107;
      v110 = v127 + 4 * v103 - 4;
      v111 = v110 + 4;
      if (v109 || v110 < v127 || v111 > v105 || v110 > v111)
      {
        goto LABEL_171;
      }

      v115 = *v106;
      v116 = v23 - (v115 + *v110);
      if (v116 >= 1)
      {
        v117 = v99 + 4 * v23;
        v118 = (result - 4);
        v119 = v116 + 1;
        do
        {
          if (v117 > v98)
          {
            goto LABEL_171;
          }

          v120 = (v117 - 4);
          if (v117 < 4 || v120 < v100 || (v118 + 1) > v102 || v118 > v118 + 1 || v118 < v101)
          {
            goto LABEL_171;
          }

          *v118-- = *v120;
          --v119;
          v117 -= 4;
        }

        while (v119 > 1);
        result = (v118 + 1);
      }

      v23 = v115;
      v36 = v103-- < 2;
    }

    while (!v36);
    if (v115 >= 1)
    {
      v121 = v99 + 4 * v115;
      v122 = v115 + 1;
      do
      {
        if (v121 > v98)
        {
          goto LABEL_171;
        }

        v123 = (v121 - 4);
        if (v121 < 4)
        {
          goto LABEL_171;
        }

        if (v123 < v100)
        {
          goto LABEL_171;
        }

        if (result > v102)
        {
          goto LABEL_171;
        }

        v124 = (result - 4);
        if (result < 4 || v124 < v101)
        {
          goto LABEL_171;
        }

        *v124 = *v123;
        --v122;
        result -= 4;
        v121 = v123;
      }

      while (v122 > 1);
    }

    return result;
  }

  v47 = v46 - v18;
  if (v46 <= v18)
  {
    if (*v16 < v16[2])
    {
      goto LABEL_171;
    }

    v47 = GetMinimumPosition(*v16, v16[1], v20, v127[0]);
  }

  LODWORD(v128[0]) = v47;
  if (v24)
  {
    v48 = v25 - 1;
    v49 = v128 + 1;
    do
    {
      v50 = v49 + 1;
      if (v49 < v128 || v50 > v129 || v49 > v50)
      {
        goto LABEL_171;
      }

      *v49++ = v46;
      v46 += v18;
      --v48;
    }

    while (v48);
  }

  if (v46 >= v23)
  {
    v76 = *v16 + 4 * v20 + 4 * v24 * v18;
    if (v76 < v16[2])
    {
      goto LABEL_171;
    }

    v46 = GetMinimumPosition(v76, v16[1], v23 - (v24 * v18 + v20), *(v127 + v125)) + v45 + v20;
    v53 = v125;
    *(v128 + v125) = v46;
  }

  else
  {
    v53 = v125;
    *(v128 + v125) = v46;
  }

  v77 = *(v127 + v53) + v46;
  v55 = __OFSUB__(v77, v23);
  v78 = v77 - v23;
  if (!((v78 < 0) ^ v55 | (v78 == 0)))
  {
    *(v127 + v24) += v78;
    *(v127 + v53) = v23 - v46;
  }

  v79 = *v16;
  if (*v16 < v16[2] || (v80 = *v126, *v126 < v126[2]))
  {
LABEL_171:
    __break(0x5519u);
  }

  v81 = 0;
  v82 = 0;
  v83 = v16[1];
  v84 = v126[1];
  v85 = *v126;
  v86 = *v16;
  do
  {
    result = *(v128 + v81);
    v87 = result - v82;
    if (v87 >= 1)
    {
      v88 = v87 + 1;
      v89 = v86;
      while (v89 >= v79)
      {
        v86 = v89 + 1;
        if ((v89 + 1) > v83)
        {
          break;
        }

        if (v89 > v86)
        {
          break;
        }

        if (v85 < v80)
        {
          break;
        }

        v90 = v85 + 1;
        if ((v85 + 1) > v84 || v85 > v90)
        {
          break;
        }

        *v85 = *v89;
        --v88;
        ++v85;
        ++v89;
        if (v88 <= 1)
        {
          goto LABEL_106;
        }
      }

      goto LABEL_171;
    }

    v90 = v85;
LABEL_106:
    if (v86 < v79 || (v86 + 1) > v83 || v86 > v86 + 1)
    {
      goto LABEL_171;
    }

    v91 = *(v127 + v81);
    if (v91 >= 1)
    {
      v92 = *v86 / -20.0;
      while (v90 >= v80)
      {
        v85 = v90 + 1;
        if ((v90 + 1) > v84 || v90 > v85)
        {
          break;
        }

        *v90 = v92;
        v92 = -v92;
        ++v90;
        if (!--v91)
        {
          goto LABEL_117;
        }
      }

      goto LABEL_171;
    }

    v85 = v90;
LABEL_117:
    ++v81;
    v82 = result;
  }

  while (v81 != v24 + 2);
  v93 = a3 - (result + v12);
  if (v93 >= 1)
  {
    v94 = v93 + 1;
    while (v86 >= v79 && (v86 + 1) <= v83 && v86 <= v86 + 1 && v85 >= v80 && (v85 + 1) <= v84 && v85 <= v85 + 1)
    {
      *v85 = *v86;
      --v94;
      ++v85;
      ++v86;
      if (v94 <= 1)
      {
        return result;
      }
    }

    goto LABEL_171;
  }

  return result;
}

float getLevelSynDeemph(float *a1, unint64_t a2, uint64_t *a3, unsigned int a4, int a5, float a6)
{
  v25 = *MEMORY[0x1E69E9840];
  v18 = 0;
  if (a5 >= 1)
  {
    v6 = a5;
    memset(__b, 255, sizeof(__b));
    *&v12 = -1;
    *(&v12 + 1) = -1;
    v20 = v12;
    v21 = v12;
    v22 = v12;
    v23 = v12;
    v14 = (a1 + 1) <= a2 && a1 + 1 >= a1;
    if (a4 <= 0x12C)
    {
      v15 = 1.0 / v6;
      v16 = 0.0;
      while (1)
      {
        if (a4)
        {
          bzero(__b, 4 * a4);
        }

        v22 = 0u;
        v23 = 0u;
        v20 = 0u;
        v21 = 0u;
        if (!v14)
        {
          break;
        }

        __b[0] = *a1;
        if (*a3 < a3[2])
        {
          break;
        }

        syn_filt(*a3);
        deemph(__b, a4, &v18, a6);
        *a3 += 68;
        __C = NAN;
        vDSP_dotpr(__b, 1, __b, 1, &__C, a4);
        v16 = v16 + (v15 * sqrtf(__C));
        if (!--v6)
        {
          return v16;
        }
      }
    }

    __break(0x5519u);
  }

  return 0.0;
}

void highPassFiltering(int a1, int a2, float *__A, unint64_t a4, const float *__B, unsigned __int16 a6)
{
  if (a1 >= 2 && a2 >= 1)
  {
    v9 = a6;
    v10 = a6;
    v11 = a4 - __A;
    v12 = __A;
    v13 = a2;
    while (v12 <= a4)
    {
      if (v12 < __A)
      {
        break;
      }

      if (v9 > v11 >> 2)
      {
        break;
      }

      __C = NAN;
      vDSP_dotpr(v12, 1, __B, 1, &__C, v10);
      if ((v12 + 1) > a4 || v12 > v12 + 1)
      {
        break;
      }

      *v12++ = __C;
      v11 -= 4;
      if (!--v13)
      {
        return;
      }
    }

    __break(0x5519u);
  }
}

uint64_t GetMinimumPosition(unint64_t a1, unint64_t a2, unsigned int a3, unsigned int a4)
{
  if (a4 >= a3)
  {
    v5 = a3;
  }

  else
  {
    v5 = a4;
  }

  result = (v5 / 2);
  if (v5 >= 1)
  {
    if (a2 < a1 || (v5 & 0x8000) != 0 || (a2 - a1) >> 2 < v5)
    {
LABEL_31:
      __break(0x5519u);
      return result;
    }

    if ((a3 - v5) >= 1)
    {
      v7 = 0;
      v8 = 4 * (a3 - v5);
      v9 = result + 1;
      v10 = 0.0;
      v11 = a1 + 4 * v5;
      while (1)
      {
        v12 = (a1 + v7);
        v13 = a1 + v7 + 4;
        v14 = a1 + v7 < a1 || v13 > a2;
        v15 = v14 || v12 > v13;
        v16 = (v11 + v7);
        v17 = v11 + v7 + 4;
        v18 = !v15 && v16 >= a1;
        v19 = !v18 || v17 > a2;
        if (v19 || v16 > v17)
        {
          break;
        }

        v10 = (v10 - (*v12 * *v12)) + (*v16 * *v16);
        if (v10 >= 0.0)
        {
          result = result;
        }

        else
        {
          v10 = 0.0;
          result = v9;
        }

        v7 += 4;
        ++v9;
        if (v8 == v7)
        {
          return result;
        }
      }

      goto LABEL_31;
    }
  }

  return result;
}

uint64_t Mpy_32_16_1(int a1, int a2)
{
  if (a1 == 0x80000000 && a2 == -32768)
  {
    return 0x7FFFFFFFLL;
  }

  else
  {
    return ((a1 * a2) >> 15) + 2 * a2 * (a1 >> 16);
  }
}

uint64_t BASOP_Util_Divide3216_Scale(int a1, int a2, _WORD *a3, _DWORD *a4)
{
  if (a1)
  {
    if (a1 >= 0)
    {
      v6 = a1;
    }

    else
    {
      v6 = -a1;
    }

    if (a1 == 0x80000000)
    {
      v6 = 0x7FFFFFFF;
    }

    if (a2 >= 0)
    {
      LOWORD(v7) = a2;
    }

    else
    {
      v7 = -a2;
    }

    if (a2 == -32768)
    {
      LOWORD(v7) = 0x7FFF;
    }

    v8 = v7;
    if (v6 >> 30)
    {
      v11 = -1;
    }

    else
    {
      v9 = 0;
      v10 = v6;
      do
      {
        v11 = v9;
        v12 = v10 >> 29;
        v10 *= 2;
        ++v9;
      }

      while (!v12);
      if (v9 == 0x8000)
      {
        *a4 = 1;
        v11 = 0x8000;
      }
    }

    v13 = a2 ^ HIWORD(a1);
    v14 = L_shl(v6, v11);
    if ((v8 - 1) > 0x3FFEu)
    {
      v15 = 0;
    }

    else
    {
      v15 = 0;
      LOWORD(v16) = v8;
      do
      {
        v16 = (2 * v16);
        ++v15;
      }

      while (v16 < 0x4000);
    }

    v17 = v13;
    v18 = v15;
    v19 = shl(v8, v15, a4);
    v20 = v18 - v11;
    if (v20 < 0x8000)
    {
      if (v20 <= -32769)
      {
        *a4 = 1;
        LOWORD(v20) = 0x8000;
      }
    }

    else
    {
      *a4 = 1;
      LOWORD(v20) = 0x7FFF;
    }

    *a3 = v20;
    v21 = ((v14 + 0x8000) ^ v14) > -1 || v14 < 0;
    v22 = (v14 + 0x8000) >> 16;
    if (!v21)
    {
      LOWORD(v22) = 0x7FFF;
    }

    a1 = div_s(v22, v19);
    if (v17 < 0)
    {
      if (a1 == -32768)
      {
        LOWORD(a1) = 0x7FFF;
      }

      else
      {
        a1 = -a1;
      }
    }
  }

  else
  {
    *a3 = 0;
  }

  return a1;
}

unint64_t lsf_end_dec(_WORD *a1, int a2, int a3, __int16 a4, unint64_t a5, float32x4_t *a6, float32x4_t *a7, uint64_t a8, float a9, unint64_t *a10, unint64_t *a11, unint64_t *a12, unint64_t *a13, unint64_t *a14, unint64_t *a15, _WORD *a16, uint64_t a17, _WORD *a18, int *a19)
{
  v25 = a2;
  v245 = *MEMORY[0x1E69E9840];
  memset(v235, 170, sizeof(v235));
  memset(v233, 170, sizeof(v233));
  if (a2 == 3 && a9 == 16000.0)
  {
    if (*a1 == 1)
    {
      next_indice = get_next_indice(a1, 1);
      v25 = next_indice + 2;
      a4 -= next_indice == 1;
    }

    else
    {
      v25 = 3;
    }
  }

  *&v28 = -1;
  *(&v28 + 1) = -1;
  v240 = v28;
  v241 = v28;
  v238 = v28;
  v239 = v28;
  v237[0] = v28;
  v237[1] = v28;
  v237[2] = v28;
  v237[3] = v28;
  v236[0] = v28;
  v236[1] = v28;
  v236[2] = v28;
  v236[3] = v28;
  v232 = -21846;
  v231 = -21846;
  v230 = -21846;
  v229 = -21846;
  v225 = a1;
  if (a8 == 2400)
  {
    v29 = *a10;
    if (*a10 >= a10[2])
    {
      v30 = *a11;
      if (*a11 >= a11[2])
      {
        v31 = *a14;
        if (*a14 >= a14[2])
        {
          v32 = a14[1];
          v33 = a11[1];
          v34 = a10[1];
          WORD3(v242) = -21846;
          v35 = get_next_indice(a1, 4);
          LOWORD(v242) = v35;
          WORD1(v242) = get_next_indice(a1, 15);
          WORD2(v242) = get_next_indice(a1, 10);
          v224 = a1[2584];
          v36 = decode_indexes(&v242 + 1, 25, &scales, no_lead, v31, v32, v29, v34, v30, v33, a5, v35 + 112);
          v37 = 0;
          v38 = &sigma_MSLVQ + 64 * (v35 + 18);
          do
          {
            v39 = &v38[v37];
            v40 = &v38[v37 + 4];
            if (&v38[v37] < v38 || v40 > (v38 + 64) || v39 > v40)
            {
              goto LABEL_308;
            }

            *(a5 + v37) = *v39 * *(a5 + v37);
            v37 += 4;
          }

          while (v37 != 64);
          v43 = &cng_sort[v35];
          if (v43 >= cng_sort && v43 + 1 <= perm_MSLVQ && v43 <= v43 + 1)
          {
            v44 = a5 + 64;
            if (*v43)
            {
              permute(a5, a5 + 64, &perm_MSLVQ[4 * v35]);
            }

            a1[2584] = v36 | v224;
            if (v242 <= 15)
            {
              v45 = &CNG_SN1[16 * v242];
              if (v45 <= CB_lsf && v45 >= CNG_SN1)
              {
                MEMORY[0x19EAE5DC0](a5, 1);
                v46 = a1[2620];
                if (v46 != 320)
                {
                  if (v46 <= 319)
                  {
                    v56 = (a5 + 60);
                    if (a5 + 60 > v44 || v56 < a5)
                    {
                      goto LABEL_308;
                    }

                    if (*v56 > 6350.0)
                    {
LABEL_39:
                      a1[2584] = 1;
                    }
                  }

LABEL_40:
                  v_sort(a5, 0, 15, 16);
                  return reorder_lsf(a5, 70.0, a9);
                }

                v47 = (a5 + 60);
                if (a5 + 60 <= v44 && v47 >= a5)
                {
                  if (*v47 > 6350.0)
                  {
                    goto LABEL_40;
                  }

                  goto LABEL_39;
                }
              }
            }
          }
        }
      }
    }

    goto LABEL_308;
  }

  pred_mode = find_pred_mode(v25, a3, &v230, &v229, a1[2588], a9);
  v219 = a4;
  *&v242 = &v235[6];
  *(&v242 + 1) = v236;
  *&v243 = &v235[6];
  v228[0] = &v235[5];
  v228[1] = &v235[6];
  v228[2] = &v235[5];
  v227[0] = &v235[1];
  v227[1] = &v235[2];
  v227[2] = &v235[1];
  v49 = &v235[1];
  v226[0] = v235;
  v226[1] = &v235[1];
  v226[2] = v235;
  v222 = v230;
  v221 = v229;
  lsf_allocate((a4 - (pred_mode >> 1)), v230, v229, &v232, &v231, &v242, v228, v227, v226);
  v52 = *a17;
  v51 = *(a17 + 8);
  v53 = pred_mode;
  v54 = *(a17 + 16);
  v216 = pred_mode;
  if (pred_mode)
  {
    if (pred_mode == 1)
    {
      v53 = 0;
      v55 = 0;
    }

    else if (*v225 == 2)
    {
      if (v52)
      {
        if ((v52 + 1) > v51 || v52 > v52 + 1 || v52 < v54)
        {
          goto LABEL_308;
        }

        v55 = *v52;
        v53 = 1;
        ++v52;
      }

      else
      {
        v55 = 0;
        v53 = 1;
      }
    }

    else
    {
      v55 = get_next_indice(v225, 1);
      v53 = 0;
    }
  }

  else
  {
    v55 = 1;
  }

  if (v55)
  {
    v49 = &v235[2];
    v58 = &v235[1];
  }

  else
  {
    v58 = v235;
  }

  if (v55)
  {
    v59 = v236;
  }

  else
  {
    v59 = &v235[6];
  }

  if (v55)
  {
    v60 = &v235[6];
  }

  else
  {
    v60 = &v235[5];
  }

  v61 = v231;
  v217 = v231;
  v220 = v232;
  if (v55)
  {
    v61 = v232;
  }

  v62 = v25 == 2 && a9 == 16000.0;
  *a16 = v55;
  v63 = v62;
  v218 = v55;
  if (a19 && *v225 == 2)
  {
    if (v63)
    {
      v64 = 0;
      *a19 = 10;
      v65 = *a17;
      v66 = *(a17 + 8);
      v67 = *(a17 + 16);
      while (1)
      {
        v68 = (v65 + 1) > v66 || v65 > v65 + 1;
        v69 = !v68 && v65 >= v67;
        if (!v69)
        {
          goto LABEL_308;
        }

        v70 = *v65++;
        *(&v235[2] + v64) = v70;
        v64 += 2;
        if (v64 == 20)
        {
          goto LABEL_170;
        }
      }
    }

    v90 = v61 - 1;
    if (v61 >= 2)
    {
      v91 = 0;
      v92 = v52;
      while (1)
      {
        v52 = v92 + 1;
        v93 = (v92 + 1) > v51 || v92 > v52;
        v94 = !v93 && v92 >= v54;
        v95 = &v233[v91];
        v96 = v95 + 1;
        v97 = v95 + 2;
        v98 = v94 && v96 >= v233;
        v99 = !v98 || v97 > v234;
        if (v99 || v96 > v97)
        {
          goto LABEL_308;
        }

        *v96 = *v92;
        ++v53;
        ++v91;
        ++v92;
        if (v90 <= v91)
        {
          goto LABEL_147;
        }
      }
    }

    v91 = 0;
LABEL_147:
    v111 = &v60[v90];
    if (v111 >= v60 && v111 + 1 <= v59 && v111 <= v111 + 1)
    {
      v112 = *v111;
      if (v112 >= 1)
      {
        v113 = v112 + 15;
        do
        {
          v114 = (v52 + 1) > v51 || v52 > v52 + 1;
          v115 = !v114 && v52 >= v54;
          v116 = &v233[v91];
          v117 = v116 + 1;
          v118 = v116 + 2;
          v119 = v115 && v117 >= v233;
          v120 = !v119 || v118 > v234;
          if (v120 || v117 > v118)
          {
            goto LABEL_308;
          }

          *v117 = *v52;
          ++v53;
          ++v91;
          v113 -= 15;
          ++v52;
        }

        while (v113 > 0xF);
      }

      *a19 = v53;
      goto LABEL_170;
    }

LABEL_308:
    __break(0x5519u);
  }

  if (v63)
  {
    v71 = 0;
    LOWORD(v235[2]) = v55;
    while (1)
    {
      v72 = &BC_TCVQ_BIT_ALLOC_40B[v71 + 1];
      v73 = &BC_TCVQ_BIT_ALLOC_40B[v71 + 2];
      v74 = v72 < BC_TCVQ_BIT_ALLOC_40B || v73 > CNG_SN1;
      if (v74 || v72 > v73)
      {
        goto LABEL_308;
      }

      v76 = get_next_indice(v225, *v72);
      v77 = &v235[2] + v71 * 2 + 4;
      if (v77 > &v235[5])
      {
        goto LABEL_308;
      }

      v78 = &v235[2] + v71 * 2 + 2;
      if (v78 > v77)
      {
        goto LABEL_308;
      }

      *v78 = v76;
      if (++v71 == 11)
      {
        goto LABEL_170;
      }
    }
  }

  v215 = v59;
  v79 = v61 - 1;
  if (v61 >= 2)
  {
    v80 = 0;
    while (1)
    {
      v81 = &v58[v80];
      v82 = v81 + 1;
      v83 = v81 < v58 || v82 > v49;
      if (v83 || v81 > v82)
      {
        goto LABEL_308;
      }

      v85 = v80;
      v86 = get_next_indice(v225, *v81);
      v87 = &v233[v85];
      v88 = v87 + 1;
      if (v87 + 1 < v233)
      {
        goto LABEL_308;
      }

      v89 = v87 + 2;
      if (v89 > v234 || v88 > v89)
      {
        goto LABEL_308;
      }

      *v88 = v86;
      v80 = v85 + 1;
      if (v79 <= (v85 + 1))
      {
        goto LABEL_129;
      }
    }
  }

  v80 = 0;
LABEL_129:
  v101 = &v60[v79];
  if (v101 < v60 || (v101 + 1) > v215 || v101 > v101 + 1)
  {
    goto LABEL_308;
  }

  v102 = *v101;
  if (v102 >= 1)
  {
    v103 = v80;
    do
    {
      v104 = v102 >= 0xF ? 15 : v102;
      v105 = get_next_indice(v225, v104);
      v106 = &v233[v103];
      v107 = v106 + 1;
      v108 = v106 + 2;
      v109 = v107 < v233 || v108 > v234;
      if (v109 || v107 > v108)
      {
        goto LABEL_308;
      }

      *v107 = v105;
      ++v103;
      v69 = v102 >= 0xF;
      v102 -= 15;
    }

    while (v102 != 0 && v69);
  }

LABEL_170:
  v122 = v225;
  if (*(v225 + 138516) == 1)
  {
    v123 = (&ModeMeans + 2 * v222);
    if (v123 < &ModeMeans || v123 + 2 > &Predictors || v123 > v123 + 2)
    {
      goto LABEL_308;
    }

    v124 = 0;
    v125 = *v123;
    v126 = v123[1];
    do
    {
      v127 = (v125 + v124);
      v128 = v125 + v124 + 4;
      v130 = v125 + v124 < v125 || v128 > v126 || v127 > v128;
      v131 = (v225 + 21416 + v124);
      v132 = v225 + 21420 + v124;
      if (v130 || v132 > v225 + 21480 || v131 > v132)
      {
        goto LABEL_308;
      }

      *v131 = *v127;
      v124 += 4;
    }

    while (v124 != 64);
    v122 = v225;
    *(v225 + 138516) = 0;
  }

  *a18 = 0;
  if (v63)
  {
    v135 = (v219 - 1);
    *&v136 = -1;
    *(&v136 + 1) = -1;
    v244[0] = v136;
    v244[1] = v136;
    v242 = v136;
    v243 = v136;
    v137 = SLOWORD(v235[2]);
    if (SLOWORD(v235[2]) == 1)
    {
      tcvq_Dec(&v235[2] + 1, a5, 1);
      if (v135 < 31)
      {
        v193 = *a5;
        v194 = *(a5 + 16);
        v195 = *(a5 + 48);
        a7[2] = *(a5 + 32);
        a7[3] = v195;
        *a7 = v193;
        a7[1] = v194;
        if (&a7[4] < a7)
        {
          goto LABEL_308;
        }

        goto LABEL_286;
      }

      v138 = 0;
      v139 = &AR_SVQ_CB1 + 32 * SWORD2(v235[4]);
      v140 = &AR_SVQ_CB2 + 32 * SHIWORD(v235[4]);
      do
      {
        v141 = &v139[v138];
        v142 = &v139[v138 + 4];
        if (&v139[v138] < v139 || v142 > (v139 + 32) || v141 > v142)
        {
          goto LABEL_308;
        }

        *(&v242 + v138) = *v141;
        v145 = &v140[v138];
        if (&v140[v138] < v140 || v145 + 4 > v140 + 32 || v145 > v145 + 4)
        {
          goto LABEL_308;
        }

        *(v244 + v138) = *v145;
        v138 += 4;
      }

      while (v138 != 32);
      for (i = 0; i != 4; ++i)
      {
        *(a5 + i * 16) = vmlaq_f32(*(a5 + i * 16), scale_ARSN[i], *(&v242 + i * 16));
      }
    }

    else
    {
      tcvq_Dec(&v235[2] + 1, a5, SLOWORD(v235[2]));
      if (v135 >= 31)
      {
        v160 = 0;
        v161 = &AR_SVQ_CB1 + 32 * SWORD2(v235[4]);
        v162 = &AR_SVQ_CB2 + 32 * SHIWORD(v235[4]);
        do
        {
          v163 = &v161[v160];
          v164 = &v161[v160 + 4];
          if (&v161[v160] < v161 || v164 > (v161 + 32) || v163 > v164)
          {
            goto LABEL_308;
          }

          *(&v242 + v160) = *v163;
          v167 = &v162[v160];
          if (&v162[v160] < v162 || v167 + 4 > v162 + 32 || v167 > v167 + 4)
          {
            goto LABEL_308;
          }

          *(v244 + v160) = *v167;
          v160 += 4;
        }

        while (v160 != 32);
        for (j = 0; j != 64; j += 16)
        {
          *(a5 + j) = vaddq_f32(*(a5 + j), *(&v242 + j));
        }
      }
    }

    v169 = *a5;
    v170 = *(a5 + 16);
    v171 = *(a5 + 48);
    a7[2] = *(a5 + 32);
    a7[3] = v171;
    *a7 = v169;
    a7[1] = v170;
    if (&a7[4] < a7)
    {
      goto LABEL_308;
    }

    if (!v137)
    {
      v172 = (&ModeMeans + 2 * v222);
      v173 = (&Predictors + 2 * v221);
      v176 = v173 + 2 <= &Quantizers && v173 <= v173 + 2 && v173 >= &Predictors;
      if (v172 < &ModeMeans || v172 + 2 > &Predictors || v172 > v172 + 2)
      {
        goto LABEL_308;
      }

      v177 = 0;
      v178 = *v172;
      v179 = v172[1];
      do
      {
        v180 = (v178 + v177 * 4);
        v181 = v178 + v177 * 4 + 4;
        v183 = v178 + v177 * 4 < v178 || v181 > v179 || v180 > v181;
        if (v183 || !v176)
        {
          goto LABEL_308;
        }

        v184 = &(*v173)[v177];
        v185 = v184 + 1;
        v186 = v184 < *v173 || v185 > v173[1];
        if (v186 || v184 > v185)
        {
          goto LABEL_308;
        }

        *(&v238 + v177 * 4) = *v180 + (*v184 * (a6->f32[v177] - *v180));
        ++v177;
      }

      while (v177 != 16);
      *a18 = 2;
      v122 = v225;
      goto LABEL_290;
    }

LABEL_286:
    v196 = &ModeMeans + 2 * v222;
    v197 = *v196;
    v198 = v196[1];
    v69 = v198 >= v197;
    v199 = v198 - v197;
    if (!v69 || v199 <= 0x3F)
    {
      goto LABEL_308;
    }

    v200 = *v197;
    v201 = v197[1];
    v202 = v197[3];
    v240 = v197[2];
    v241 = v202;
    v238 = v200;
    v239 = v201;
LABEL_290:
    MEMORY[0x19EAE5DC0](a5, 1, &v238, 1, a5, 1, 16);
    goto LABEL_291;
  }

  v147 = &ModeMeans + 2 * v222;
  v149 = *v147;
  v148 = v147[1];
  v69 = v148 >= v149;
  v150 = v148 - v149;
  if (!v69 || v150 <= 0x3F)
  {
    goto LABEL_308;
  }

  v151 = 0;
  v152 = *v149;
  v153 = v149[1];
  v154 = v149[3];
  v240 = v149[2];
  v241 = v154;
  v238 = v152;
  v239 = v153;
  v155 = vdupq_n_s32(0x3EAAAAABu);
  do
  {
    v237[v151] = vmlaq_f32(*(&v238 + v151 * 16), v155, a7[v151]);
    ++v151;
  }

  while (v151 != 4);
  v156 = *(v122 + 5168);
  if (v218)
  {
    v157 = &v235[6] + v220;
    v158 = (v157 - 1);
    if (v157 - 1 < &v235[6] || v157 > v236 || v158 > v157 || *a10 < a10[2] || *a11 < a11[2] || *a12 < a12[2] || *a13 < a13[2] || *a14 < a14[2] || *a15 < a15[2])
    {
      goto LABEL_308;
    }

    v122 = v225;
    *(v225 + 5168) = vq_dec_lvq(1, a5, &v233[1], v234, v220, v222, *v158, v50, *a10, a10[1], *a11, a11[1], *a12, a12[1], *a13, a13[1], *a14, a14[1], *a15, a15[1]) | v156;
    MEMORY[0x19EAE5DC0](a5, 1, &v238, 1, a5, 1, 16);
    for (k = 0; k != 16; ++k)
    {
      a7->f32[k] = *(a5 + k * 4) - *(v237 + k * 4);
    }
  }

  else
  {
    v188 = &v235[5] + v217;
    v189 = (v188 - 1);
    if (v188 - 1 < &v235[5] || v188 > &v235[6] || v189 > v188 || *a10 < a10[2] || *a11 < a11[2] || *a12 < a12[2] || *a13 < a13[2] || *a14 < a14[2] || *a15 < a15[2])
    {
      goto LABEL_308;
    }

    v122 = v225;
    *(v225 + 5168) = vq_dec_lvq(0, a5, &v233[1], v234, v217, v221, *v189, v50, *a10, a10[1], *a11, a11[1], *a12, a12[1], *a13, a13[1], *a14, a14[1], *a15, a15[1]) | v156;
    if (v216 == 1)
    {
      v190 = *a5;
      v191 = *(a5 + 16);
      v192 = *(a5 + 48);
      a7[2] = *(a5 + 32);
      a7[3] = v192;
      *a7 = v190;
      a7[1] = v191;
      if (&a7[4] < a7)
      {
        goto LABEL_308;
      }

      MEMORY[0x19EAE5DC0](a5, 1, v237, 1, a5, 1, 16);
      *a18 = 1;
    }

    else
    {
      v206 = (&Predictors + 2 * v221);
      if (v206 < &Predictors || v206 + 2 > &Quantizers || v206 > v206 + 2)
      {
        goto LABEL_308;
      }

      v207 = 0;
      v208 = *v206;
      v209 = v206[1];
      do
      {
        v210 = (v208 + v207);
        v211 = v208 + v207 + 4;
        if (v208 + v207 < v208 || v211 > v209 || v210 > v211)
        {
          goto LABEL_308;
        }

        *(v236 + v207) = *(&v238 + v207) + (*v210 * (a6->f32[v207 / 4] - *(&v238 + v207)));
        v207 += 4;
      }

      while (v207 != 64);
      MEMORY[0x19EAE5DC0](a5, 1, v236, 1, a5, 1, 16);
      for (m = 0; m != 16; ++m)
      {
        a7->f32[m] = *(a5 + m * 4) - *(v237 + m * 4);
      }

      *a18 = 2;
      v122 = v225;
    }
  }

LABEL_291:
  v_sort(a5, 0, 15, 16);
  result = reorder_lsf(a5, 70.0, a9);
  v203 = *a5;
  v204 = *(a5 + 16);
  v205 = *(a5 + 48);
  a6[2] = *(a5 + 32);
  a6[3] = v205;
  *a6 = v203;
  a6[1] = v204;
  if (&a6[4] < a6)
  {
    goto LABEL_308;
  }

  *(v122 + 24414) = v222;
  return result;
}

char *tcvq_Dec(__int16 *a1, unint64_t a2, int a3)
{
  *&v123[6] = *MEMORY[0x1E69E9840];
  memset(v122, 170, sizeof(v122));
  v120 = 0xAAAAAAAAAAAAAAAALL;
  v121 = 0xAAAAAAAAAAAAAAAALL;
  v117 = 0xAAAAAAAAAAAAAAAALL;
  v118 = 0xAAAAAAAAAAAAAAAALL;
  *&v5 = -1;
  *(&v5 + 1) = -1;
  v112[0] = v5;
  v112[1] = v5;
  v110 = v5;
  v111 = v5;
  mvs2s(a1, (a1 + 9), v122, v123, 9);
  if (a3)
  {
    v6 = &SN_TCVQ_CB_SUB1;
    v7 = &SN_TCVQ_CB_SUB2;
    v8 = &SN_TCVQ_CB_SUB3;
    v9 = &SN_IntraCoeff;
  }

  else
  {
    v6 = &AR_TCVQ_CB_SUB1;
    v7 = &AR_TCVQ_CB_SUB2;
    v8 = &AR_TCVQ_CB_SUB3;
    v9 = &AR_IntraCoeff;
  }

  v10.i64[0] = *&v122[2];
  v10.i16[4] = *v122;
  v10.i16[5] = *v122 >> 1;
  v10.i32[3] = vuzp1_s16(vshl_u32(vdup_n_s32(*v122), 0xFFFFFFFDFFFFFFFELL), *&v122[2]).u32[0];
  v11 = vshlq_s16(v10, xmmword_19B0B32C0).u64[0];
  v12.i64[0] = 0x1000100010001;
  v12.i64[1] = 0x1000100010001;
  v13 = vandq_s8(v10, v12);
  v10.i64[0] = v11;
  v10.i64[1] = v13.i64[1];
  v119 = v10;
  v113[0] = 8 * (v122[2] & 0xF);
  v113[1] = 8 * (v122[4] & 0xF);
  *v13.i8 = vand_s8(vshl_n_s32(*&vmovl_u16(vdup_lane_s32(*&v122[2], 1)), 3uLL), 0x3800000038);
  v115 = v13.i16[2];
  v114 = v13.i16[0];
  v116 = vand_s8(vshl_n_s16(*&v122[10], 3uLL), 0x18001800180018);
  v14 = (&NTRANS2 + 64 * v11);
  v15 = v122[0] & 0xC;
  v16 = &v14[2 * v15 + 64];
  v17 = (v16 + 4);
  v19 = v16 < v14 + 128 || v17 > (v14 + 96) || v16 > v17;
  if (v19 || ((v20 = &v6[8 * (8 * (v122[2] & 0xF) + *v16)], v20 + 1 <= v20 + 2) ? (v21 = v20 > v20 + 1) : (v21 = 1), v21 || ((v22 = *v20, v23 = v20[1], *&v110 = *v20, *(&v110 + 1) = v23, v24 = &v14[2 * v15], v25 = (v24 + 2), v24 >= v14) ? (v26 = v25 > (v14 + 32)) : (v26 = 1), !v26 ? (v27 = v24 > v25) : (v27 = 1), v27 || ((v28 = *v24, v29 = &NTRANS2 + 64 * SWORD1(v11), v30 = &v29[4 * v28 + 128], v31 = (v30 + 4), v30 >= v29 + 128) ? (v32 = v31 > (v29 + 192)) : (v32 = 1), !v32 ? (v33 = v30 > v31) : (v33 = 1), v33 || ((v34 = &v6[8 * (8 * (v122[4] & 0xF) + *v30)], v35 = (v34 + 1024), v36 = v34 + 1032, v37 = (v34 + 1028), v37 <= v36) ? (v38 = v35 > v37) : (v38 = 1), v38 || ((v39 = (v23 * v9[1]) + (*v9 * v22), v40 = ((v23 * v9[3]) + (v9[2] * v22)) + v35[1], *(&v110 + 2) = v39 + *v35, *(&v110 + 3) = v40, v41 = &v29[4 * v28], v42 = (v41 + 4), v41 >= v29) ? (v43 = v42 > (v29 + 64)) : (v43 = 1), !v43 ? (v44 = v41 > v42) : (v44 = 1), v44))))))
  {
LABEL_117:
    __break(0x5519u);
  }

  v45 = 0;
  v46 = &v111;
  v47 = &v114;
  v48 = &v119.i8[4];
  v49 = *v41;
  v50 = 2;
  do
  {
    v51 = v45;
    v52 = &v9[4 * v50 - 4];
    v53 = v52 + 2;
    v54 = v52 + 1 > v52 + 2 || v52 > v52 + 1;
    v55 = &v110 + 8 * v50 - 8;
    v56 = v55 | 4;
    if (v54 || v56 > v55 + 8 || v55 > v56)
    {
      goto LABEL_117;
    }

    v59 = v52 + 3;
    if (v52 + 3 > v52 + 4 || v53 > v59)
    {
      goto LABEL_117;
    }

    v60 = &NTRANS2 + 64 * *v48;
    v61 = &v60[4 * v49 + 128];
    v62 = (v61 + 4);
    v63 = v61 < v60 + 128 || v62 > (v60 + 192);
    if (v63 || v61 > v62)
    {
      goto LABEL_117;
    }

    v65 = v7 + 512 * v50 + 8 * (*v47 + *v61);
    v66 = (v65 - 1024);
    v67 = v65 - 1016;
    v68 = v65 - 1020;
    if (v68 > v67 || v66 > v68)
    {
      goto LABEL_117;
    }

    v70 = *(v55 + 4);
    v71.f32[0] = (v52[1] * v70) + (*v52 * *v55);
    v71.f32[1] = (v70 * *v59) + (*v53 * *v55);
    *v46 = vadd_f32(v71, *v66);
    v72 = &v60[4 * v49];
    if (v72 < v60 || v72 + 4 > v60 + 64 || v72 > v72 + 4)
    {
      goto LABEL_117;
    }

    v45 = 1;
    v49 = *v72;
    v46 = &v111 + 1;
    v47 = &v115;
    v48 = &v119.i8[6];
    v50 = 3;
  }

  while ((v51 & 1) == 0);
  v73 = 0;
  v74 = 0;
  v75 = 4;
  do
  {
    v76 = &v9[v74];
    v77 = &v9[v74 + 12];
    v78 = &v9[v74 + 14];
    v79 = &v9[v74 + 13];
    v80 = v79 > v78 || v77 > v79;
    v81 = (&v111 + v73 + 8);
    v82 = (&v111 + v73 + 12);
    if (v80 || v82 > (v112 + v73) || v81 > v82)
    {
      goto LABEL_117;
    }

    v85 = v76 + 15;
    if (v76 + 15 > v76 + 16 || v78 > v85)
    {
      goto LABEL_117;
    }

    v86 = &NTRANS2 + 64 * v119.i16[v75];
    v87 = &v86[4 * v49 + 128];
    v88 = (v87 + 4);
    v89 = v87 < v86 + 128 || v88 > (v86 + 192);
    if (v89 || v87 > v88)
    {
      goto LABEL_117;
    }

    v91 = &v8[8 * (v113[v75] + *v87)];
    if (&v91->i32[1] > &v91[1] || v91 > &v91->i32[1])
    {
      goto LABEL_117;
    }

    v93.f32[0] = (*v79 * *v82) + (*v77 * *v81);
    v93.f32[1] = (*v82 * *v85) + (*v78 * *v81);
    *(v112 + v73) = vadd_f32(v93, *v91);
    v94 = &v86[4 * v49];
    if (v94 < v86)
    {
      goto LABEL_117;
    }

    result = v94 + 4;
    if (v94 + 4 > v86 + 64 || v94 > result)
    {
      goto LABEL_117;
    }

    v74 += 4;
    v49 = *v94;
    v73 += 8;
    v8 += 256;
    ++v75;
  }

  while (v74 != 16);
  for (i = 0; i != 8; ++i)
  {
    v97 = 0;
    v98 = &v110 + 8 * i;
    v99 = 1;
    do
    {
      v100 = v99;
      v101 = &v98[4 * v97];
      v102 = (v101 + 4);
      v104 = v101 < v98 || v102 > (v98 + 8) || v101 > v102;
      v105 = (a2 + 8 * i + 4 * v97);
      v106 = (v105 + 1);
      if (v104 || v105 < a2 || v106 > a2 + 64 || v105 > v106)
      {
        goto LABEL_117;
      }

      v99 = 0;
      *v105 = *v101;
      v97 = 1;
    }

    while ((v100 & 1) != 0);
  }

  return result;
}

unint64_t vlpc_2st_dec(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, int a5, float a6)
{
  v65 = *MEMORY[0x1E69E9840];
  *&v7 = -1;
  *(&v7 + 1) = -1;
  v61[2] = v7;
  v61[3] = v7;
  v61[0] = v7;
  v61[1] = v7;
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v60[2] = v7;
  v60[3] = v7;
  v60[0] = v7;
  v60[1] = v7;
  if (a2 < a1 || (a2 - a1) <= 60)
  {
    goto LABEL_72;
  }

  lsf_weight_2st(a1, v61, &v62, a5, a6);
  v10 = 0;
  v11 = 0;
  *&v12 = 0xAAAAAAAAAAAAAAAALL;
  *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v64[0] = v12;
  v64[1] = v12;
  v62 = v12;
  v63 = v12;
  LODWORD(v13) = 1;
  do
  {
    v14 = v10;
    v15 = (a3 + 4 * v11);
    v16 = v15 + 1;
    v17 = v15 < a3 || v16 > a4;
    if (v17 || v15 > v16)
    {
      goto LABEL_72;
    }

    LODWORD(v13) = *v15 + v13;
    v10 = 1;
    v11 = 1;
  }

  while ((v14 & 1) == 0);
  v19 = 1;
  v20 = 2;
  do
  {
    v21 = v19;
    v22 = (a3 + 4 * v19);
    v23 = v22 + 1;
    if (v22 < a3 || v23 > a4 || v22 > v23)
    {
      goto LABEL_72;
    }

    v26 = *v22;
    v27 = (v26 - 3) & 0xFFFFFFFE;
    if (v26 < 5)
    {
      v27 = 0;
    }

    v62 = 0u;
    v63 = 0u;
    if (v26 >= 5)
    {
      v28 = (v26 - 3) >> 1;
      v13 = v13;
      while (1)
      {
        v29 = (a3 + 4 * v13);
        v30 = v29 + 1;
        v31 = v29 < a3 || v30 > a4;
        v32 = v31 || v29 > v30;
        if (v32 || (v29 - 1) < a3 || v29 - 1 > v29)
        {
          break;
        }

        v13 -= 2;
        v33 = *(v29 - 1) & 0xF | (16 * (*v29 & 0xF));
        for (i = 7; i != -1; --i)
        {
          v35 = &v62 + i;
          v36 = v35 + 1;
          if (v35 < &v62 || v36 > v64 || v35 > v36)
          {
            goto LABEL_72;
          }

          *v35 = v33 & 1 | (2 * *v35);
          v33 >>= 1;
        }

        v17 = v28-- <= 1;
        if (v17)
        {
          goto LABEL_44;
        }
      }

LABEL_72:
      __break(0x5519u);
    }

LABEL_44:
    v39 = v26 - v27;
    v59 = v21;
    v40 = 0;
    if (v26 - v27 >= 1)
    {
      v41 = v13;
      v42 = 4 * v13;
      v43 = v39 + 1;
      do
      {
        v44 = a3 + v42 + 4;
        v45 = a3 + v42 < a3 || v44 > a4;
        if (v45 || a3 + v42 > v44)
        {
          goto LABEL_72;
        }

        LODWORD(v13) = v41 - 1;
        v40 = *(a3 + 4 * v41) & 0xF | (16 * v40);
        v42 -= 4;
        --v43;
        --v41;
      }

      while (v43 > 1);
    }

    v47 = &v60[v20];
    re8_dec(v26, v40, &v62, v64, v64, &v65);
    for (j = 0; j != 32; j += 4)
    {
      v49 = &v47[j];
      if (&v47[j] < v60)
      {
        goto LABEL_72;
      }

      if (v49 + 4 > v61 || v49 > v49 + 4)
      {
        goto LABEL_72;
      }

      *v49 = *(v64 + j);
    }

    v19 = v59 - 1;
    v20 -= 2;
  }

  while (v59);
  for (k = 0; k != 64; k += 4)
  {
    v52 = (a1 + k);
    v53 = a1 + k + 4;
    if (a1 + k < a1 || v53 > a2 || v52 > v53)
    {
      goto LABEL_72;
    }

    *v52 = *v52 + ((a6 / 12800.0) * (*(v61 + k) * *(v60 + k)));
  }

  v_sort(a1, 0, 15, 16);
  return reorder_lsf(a1, 50.0, a6);
}

unint64_t re8_dec(unint64_t a1, uint64_t a2, int *a3, unint64_t a4, unint64_t a5, unint64_t a6)
{
  v19[1] = *MEMORY[0x1E69E9840];
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v18[0] = v8;
  v18[1] = v8;
  if (a1 >= 5)
  {
    v12 = 1;
    do
    {
      v13 = a1;
      v12 *= 2;
      a1 = (a1 - 2);
    }

    while (v13 > 6);
    re8_decode_base_index(a1, a2, a5, a6);
    v14 = v18;
    result = re8_k2y(a3, a4, v12, v18, v19);
    v15 = 8;
    v16 = a5;
    do
    {
      if (v16 < a5 || (v16 + 1) > a6 || v16 > v16 + 1)
      {
        __break(0x5519u);
      }

      v17 = *v14++;
      *v16 = v17 + *v16 * v12;
      ++v16;
      --v15;
    }

    while (v15);
  }

  else
  {

    return re8_decode_base_index(a1, a2, a5, a6);
  }

  return result;
}

unint64_t re8_decode_base_index(unint64_t result, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v113[1] = *MEMORY[0x1E69E9840];
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v112[0] = v6;
  v112[1] = v6;
  v111[0] = v6;
  v111[1] = v6;
  if (result <= 1)
  {
    v7 = 8;
    for (i = a3; i >= a3 && (i + 1) <= a4 && i <= i + 1; ++i)
    {
      *i = 0;
      if (!--v7)
      {
        return result;
      }
    }

    goto LABEL_180;
  }

  if (a2 <= 65519)
  {
    v9 = a2;
  }

  else
  {
    v9 = 0;
  }

  v10 = 1;
  if (result >= 4)
  {
    do
    {
      if (v9 < II4[v10])
      {
        break;
      }

      ++v10;
    }

    while (v10 != 27);
    v11 = &AA4[v10];
    v12 = (v11 - 1);
    v13 = v11 - 1 >= AA4;
    v14 = &mult_avq_tab;
  }

  else
  {
    do
    {
      if (v9 < II3[v10])
      {
        break;
      }

      ++v10;
    }

    while (v10 != 9);
    v11 = &AA3[v10];
    v12 = (v11 - 1);
    v13 = v11 - 1 >= AA3;
    v14 = II4;
  }

  if (!v13 || v11 > v14 || v12 > v11)
  {
    goto LABEL_180;
  }

  v17 = *v12;
  v18 = (&vals_q + 16 * v17);
  v19 = (v18 + 4);
  v20 = v18 + 1;
  if (v18 + 1 > v18 + 4 || v18 > v20)
  {
    goto LABEL_180;
  }

  v23 = v18 + 2;
  v22 = *v18;
  if ((v18 + 2) > v19 || v20 > v23)
  {
    goto LABEL_180;
  }

  v25 = &Is[4 * v17];
  if (v25 < Is)
  {
    goto LABEL_180;
  }

  if (v25 + 4 > select_table22)
  {
    goto LABEL_180;
  }

  if (v25 > v25 + 4)
  {
    goto LABEL_180;
  }

  v26 = &vals_a[16 * v17];
  v27 = v26 + 1;
  v110 = (v26 + 4);
  if (v26 + 1 > v26 + 4 || v26 > v27)
  {
    goto LABEL_180;
  }

  v28 = 0;
  v29 = *v20;
  v30 = v9 - *v25;
  result = (v30 >> v22);
  v31 = *v26;
  v108 = 0;
  if (*v20 == 2)
  {
    v109 = 0;
    v33 = 0;
  }

  else
  {
    if (v29 == 3)
    {
      v109 = 0;
    }

    else
    {
      v32 = 0;
      v109 = 0;
      v33 = 0;
      v34 = 0;
      if (v29 != 4)
      {
        goto LABEL_76;
      }

      v108 = result & 1;
      LODWORD(result) = result >> 1;
      v109 = 1;
    }

    v35 = v18 + 3;
    if ((v18 + 3) > v19)
    {
      goto LABEL_180;
    }

    if (v23 > v35)
    {
      goto LABEL_180;
    }

    v36 = *v23;
    v33 = *v35;
    v37 = &select_table22[36 * *v35];
    v38 = &v37[4 * v36];
    if (v38 < v37)
    {
      goto LABEL_180;
    }

    if (v38 + 1 > v37 + 9 || v38 > v38 + 1)
    {
      goto LABEL_180;
    }

    v40 = *v38;
    v41 = &mult_avq_tab + 4 * v40;
    v42 = v41 + 4;
    v43 = v41 < &mult_avq_tab || v42 > &shift_avq_tab;
    v44 = v43 || v41 > v42;
    v45 = &shift_avq_tab + 4 * v40;
    v46 = v45 + 4;
    v47 = !v44 && v45 >= &shift_avq_tab;
    v48 = !v47 || v46 > vals_a;
    if (v48 || v45 > v46)
    {
      goto LABEL_180;
    }

    v106 = (*(&mult_avq_tab + v40) * result) >> *(&shift_avq_tab + v40);
    v107 = v18;
    v50 = *v18;
    v51 = v18 + 4;
    fcb_decode_pos(result - v106 * v40, v111, v112, v36, v33);
    v18 = v107;
    v52 = v26 + 2;
    if (v26 + 2 < v26 || (v26 + 3) > v110 || v52 > v26 + 3)
    {
      goto LABEL_180;
    }

    v27 = v26 + 1;
    v19 = v51;
    v22 = v50;
    v28 = *v52;
    result = v106;
  }

  if ((v18 + 3) > v19)
  {
    goto LABEL_180;
  }

  if (v23 > v18 + 3)
  {
    goto LABEL_180;
  }

  v34 = *v23;
  v53 = *v23;
  v54 = v22;
  v55 = v27;
  result = fcb_decode_pos(result, v112, v113, 8, v53);
  if ((v26 + 2) > v110 || v55 > v26 + 2)
  {
    goto LABEL_180;
  }

  v22 = v54;
  v32 = *v55;
LABEL_76:
  for (j = 0; j != 32; j += 4)
  {
    v57 = (a3 + j);
    v58 = a3 + j + 4;
    if (a3 + j < a3 || v58 > a4 || v57 > v58)
    {
      goto LABEL_180;
    }

    *v57 = v31;
  }

  if (v34 >= 1)
  {
    v61 = v34;
    v62 = v112;
    while (1)
    {
      v63 = v62 + 1;
      v64 = v62 < v112 || v63 > v113;
      if (v64 || v62 > v63)
      {
        break;
      }

      v66 = (a3 + 4 * *v62);
      v67 = v66 + 1;
      v68 = v66 < a3 || v67 > a4;
      if (v68 || v66 > v67)
      {
        break;
      }

      *v66 = v32;
      ++v62;
      if (!--v61)
      {
        goto LABEL_102;
      }
    }

LABEL_180:
    __break(0x5519u);
  }

LABEL_102:
  if (v33 >= 1)
  {
    v70 = v33;
    v71 = v111;
    do
    {
      v72 = v71 + 1;
      v73 = v71 < v111 || v72 > v112;
      if (v73 || v71 > v72)
      {
        goto LABEL_180;
      }

      v75 = v112 + *v71;
      v76 = v75 + 1;
      v77 = v75 < v112 || v76 > v113;
      if (v77 || v75 > v76)
      {
        goto LABEL_180;
      }

      v79 = (a3 + 4 * *v75);
      v80 = v79 + 1;
      v81 = v79 < a3 || v80 > a4;
      if (v81 || v79 > v80)
      {
        goto LABEL_180;
      }

      *v79 = v28;
      ++v71;
    }

    while (--v70);
  }

  if (v109)
  {
    v83 = (v111 | (4 * v108));
    if (v83 < v111)
    {
      goto LABEL_180;
    }

    if (v83 + 1 > v112)
    {
      goto LABEL_180;
    }

    if (v83 > v83 + 1)
    {
      goto LABEL_180;
    }

    v84 = v112 + *v83;
    if (v84 < v112 || v84 + 1 > v113 || v84 > v84 + 1)
    {
      goto LABEL_180;
    }

    v85 = (a3 + 4 * *v84);
    v86 = v85 + 1;
    v87 = v85 < a3 || v86 > a4;
    if (v87 || v85 > v86)
    {
      goto LABEL_180;
    }

    *v85 = 6;
  }

  v89 = 0;
  v90 = v22 - 1;
  v91 = 1;
  do
  {
    v92 = (a3 + v89);
    v93 = a3 + v89 + 4;
    if (a3 + v89 < a3 || v93 > a4 || v92 > v93)
    {
      goto LABEL_180;
    }

    v91 *= *v92;
    v89 += 4;
  }

  while (v89 != 32);
  v96 = v91 > 0 && v22 == 7;
  v97 = 7;
  if (!v96)
  {
    v97 = 8;
  }

  v98 = a3;
  do
  {
    if (v98 < a3 || (v98 + 1) > a4 || v98 > v98 + 1)
    {
      goto LABEL_180;
    }

    if (*v98)
    {
      if (((1 << v90) & ~(-1 << v22) & v30) != 0)
      {
        *v98 = -*v98;
      }

      --v90;
    }

    ++v98;
    --v97;
  }

  while (v97);
  if (v22 == 7)
  {
    v99 = 0;
    v100 = 0;
    do
    {
      v101 = (a3 + v99);
      v102 = a3 + v99 + 4;
      if (a3 + v99 < a3 || v102 > a4 || v101 > v102)
      {
        goto LABEL_180;
      }

      v100 += *v101;
      v99 += 4;
    }

    while (v99 != 32);
    if ((v100 & 3) != 0)
    {
      v105 = (a3 + 28);
      if (a3 + 28 < a3 || a3 + 32 > a4 || v105 > a3 + 32)
      {
        goto LABEL_180;
      }

      *v105 = -*v105;
    }
  }

  return result;
}

unint64_t fcb_decode_pos(unint64_t result, unint64_t a2, unint64_t a3, int a4, int a5)
{
  if (a5 < 2)
  {
    v6 = 0;
    v7 = 0;
LABEL_36:
    v25 = (a2 + 4 * v7);
    if (v25 >= a2 && (v25 + 1) <= a3 && v25 <= v25 + 1)
    {
      *v25 = result + v6;
      return result;
    }
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v7 = (a5 - 1);
    v8 = a5;
    v9 = &select_table22 + 36 * a5 + 4 * a4 - 4;
    while (1)
    {
      v10 = &select_table22 + 36 * v8;
      v11 = v10 + 36;
      v12 = &v10[4 * (a4 - v6)];
      v13 = v12 + 4;
      v14 = v12 < v10 || v13 > v11;
      if (v14 || v12 > v13)
      {
        break;
      }

      v16 = *v12 - result;
      result = &v9[-4 * v6];
      while (v16 <= *v12)
      {
        if (result >= v10 && v12 <= v11)
        {
          ++v6;
          v14 = result > v12;
          result -= 4;
          v12 -= 4;
          if (!v14)
          {
            continue;
          }
        }

        goto LABEL_42;
      }

      result = &v10[4 * (a4 + 1 - v6)];
      v17 = result + 4;
      v18 = result < v10 || v17 > v11;
      v19 = v18 || result > v17;
      v20 = (a2 + 4 * v5);
      v21 = v20 + 1;
      v22 = !v19 && v20 >= a2;
      v23 = !v22 || v21 > a3;
      if (v23 || v20 > v21)
      {
        break;
      }

      result = (*result - v16);
      *v20 = v6 - 1;
      --v8;
      ++v5;
      v9 -= 36;
      if (v5 == v7)
      {
        goto LABEL_36;
      }
    }
  }

LABEL_42:
  __break(0x5519u);
  return result;
}

void TonalMDCTConceal_Detect(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v5 = v4;
  v6 = v1;
  v30 = *MEMORY[0x1E69E9840];
  memset(__b, 255, sizeof(__b));
  memset(v28, 255, sizeof(v28));
  if (!*(v6 + 80) || !*(v6 + 136) || (v7 = *(v6 + 16), *(v6 + 40) != v7) || *(v6 + 96) != v7 || *(v6 + 140) && v5 == 0.0 && !*(v6 + 144))
  {
    **(v6 + 14160) = 0;
LABEL_9:
    *v3 = **(v6 + 14160);
    return;
  }

  if (*(v6 + 84))
  {
    goto LABEL_9;
  }

  if (*(v6 + 144))
  {
    v8 = *(v6 + 24);
    mvr2r(*(v6 + 14136), *(v6 + 14144), __b, &v30, v8);
    mdct_noiseShaping(__b, &v30, *(v6 + 20), *(v6 + 120), *(v6 + 128));
    v9 = *(v6 + 20);
    v10 = v8 - v9;
    if ((v8 - v9) >= 1)
    {
      v11 = *(v6 + 120);
      v12 = (v11 + 252);
      if (v11 + 252 < v11)
      {
        goto LABEL_43;
      }

      v13 = v11 + 256;
      if (v13 > *(v6 + 128))
      {
        goto LABEL_43;
      }

      if (v12 > v13)
      {
        goto LABEL_43;
      }

      v14 = __b + v9;
      if (v14 > &v30 || __b > v14 || ((v8 - v9) & 0x8000) != 0 || (3840 - 4 * v9) >> 2 < v10)
      {
        goto LABEL_43;
      }

      if (v10 >= 1)
      {
        v15 = *v12;
        v16 = (v8 - v9) & 0x7FFF;
        do
        {
          *v14 = *v14 * v15;
          ++v14;
          --v16;
        }

        while (v16);
      }
    }

    if (v8 <= 960 && (v8 & 0x8000) == 0)
    {
      if (v8 >= 1)
      {
        v17 = v8 & 0x7FFF;
        v18 = __b;
        do
        {
          *v18 = *v18 * *v18;
          ++v18;
          --v17;
        }

        while (v17);
      }

      v19 = *(v6 + 14160);
      if (v19 < v19 + 1)
      {
        RefineTonalComponents((v19 + 1), (v19 + 16), (v19 + 16), (v19 + 31), (v19 + 31), (v19 + 46), (v19 + 46), (v19 + 76), v19 + 76, (v19 + 286), v19, *(v6 + 48), *(v6 + 56), *(v6 + 64), *(v6 + 72), __b, &v30, v8, v9);
        goto LABEL_9;
      }
    }
  }

  else
  {
    CalcMDXT(*v6);
    CalcMDXT(*v6);
    *(v6 + 24) = 0;
    v20 = *(v6 + 16);
    if (!v20)
    {
      v27 = 23;
LABEL_40:
      if (v20 >= v27)
      {
        v20 = v27;
      }

      *(v6 + 24) = v20;
      CalcPowerSpecAndDetectTonalComponents(v6);
      goto LABEL_9;
    }

    v21 = 0;
    v22 = 0;
    v23 = *(v6 + 104);
    v24 = *(v6 + 112);
    v25 = v23;
    v26 = *(v6 + 16);
    while (v25 >= v23 && (v25 + 1) <= v24 && v25 <= v25 + 1)
    {
      if (*v25 != 0.0)
      {
        *(v6 + 24) = v21;
        v22 = v21;
      }

      ++v21;
      ++v25;
      if (!--v26)
      {
        v27 = v22 + 23;
        goto LABEL_40;
      }
    }
  }

LABEL_43:
  __break(0x5519u);
}

void CalcMDXT(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = v1;
  v16 = *MEMORY[0x1E69E9840];
  memset(__b, 255, sizeof(__b));
  v13 = -1431655766;
  v14 = -1431655766;
  v9 = *(v8 + 17152);
  v12 = v7;
  v10 = *v3;
  v11 = *(v3 + 2);
  WindowSignal(v8, v9, 0, 0, &v14, &v13, &v10, &v12, __b, &v16, 1);
  if (v5 == 83)
  {
    TCX_MDST(__b);
  }

  else
  {
    TCX_MDCT(__b);
  }
}

unint64_t CalcPowerSpecAndDetectTonalComponents(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v115 = v3;
  __y = v2;
  v114 = v4;
  v6 = v5;
  v7 = v1;
  *&v122 = *MEMORY[0x1E69E9840];
  memset(__b, 255, sizeof(__b));
  v119 = 0u;
  memset(v118, 0, sizeof(v118));
  v8 = *(v7 + 24);
  if (v8 >= 0x3C1)
  {
    goto LABEL_138;
  }

  v9 = *(v7 + 16);
  if (v8 >= 3)
  {
    v10 = 0;
    do
    {
      v11 = (__y + v10 + 4);
      v12 = __y + v10 + 8;
      v14 = v11 < __y || v12 > v115 || v11 > v12;
      v15 = (v6 + v10 + 4);
      v16 = v6 + v10 + 8;
      v17 = !v14 && v15 >= v6;
      if (!v17 || v16 > v114 || v15 > v16)
      {
        goto LABEL_138;
      }

      v20 = (*v15 * *v15) + (*v11 * *v11);
      if (v20 < ((v9 * v9) / 400.0))
      {
        v20 = (v9 * v9) / 400.0;
      }

      *(__b + v10 + 4) = v20;
      v10 += 4;
    }

    while (4 * (v8 - 1) - 4 != v10);
    *__b = *(__b + 1) * 0.5;
    *(__b + (v8 - 1)) = *&v120[v8] * 0.5;
  }

  v21 = __b + v8;
  if (v21 < __b)
  {
LABEL_138:
    __break(0x5519u);
  }

  __A = (v9 * v9) / 400.0;
  vDSP_vfill(&__A, v21, 1, (v9 - v8));
  v22 = *(v7 + 16);
  v23 = *(v7 + 20);
  if (v23 > v22)
  {
    v24 = (__b + 4 * v22);
    if (v24 > &v122)
    {
      goto LABEL_138;
    }

    if (__b > v24)
    {
      goto LABEL_138;
    }

    v25 = v23 - v22;
    if (((v23 - v22) & 0x80000000) != 0 || (3840 - 4 * v22) >> 2 < v25)
    {
      goto LABEL_138;
    }

    if (v25 >= 1)
    {
      bzero(v24, 4 * (v23 - v22));
    }
  }

  v26 = *(v7 + 48);
  v27 = *(v7 + 56);
  if (v26 > v27)
  {
    goto LABEL_138;
  }

  if (v8 > (v27 - v26) >> 2)
  {
    goto LABEL_138;
  }

  v28 = *(v7 + 14160);
  if (v28 >= v28 + 4)
  {
    goto LABEL_138;
  }

  result = DetectTonalComponents(v28 + 4, v28 + 64, v28 + 64, v28 + 124, v28 + 124, v28 + 184, v28, v26, *(v7 + 64), *(v7 + 72), __b, &v122, v8, v23);
  v30 = *(v7 + 14160);
  v111 = *v30;
  if (v111)
  {
    v107 = v8;
    v108 = v7;
    v109 = *(v7 + 14160);
    v31 = 0;
    v32 = v30 + 76;
    v33 = v30 + 286;
    v110 = v30 + 31;
    v112 = v30 + 46;
    v113 = v30 + 16;
    v34 = v30 + 76;
    do
    {
      v35 = v113 + v31;
      v36 = v35 + 1;
      v38 = v35 < v113 || v36 > v110 || v35 > v36;
      v39 = v110 + v31;
      v40 = v39 + 1;
      if (v38 || v39 < v110 || v40 > v112 || v39 > v40)
      {
        goto LABEL_138;
      }

      v44 = *v35;
      v45 = *v39;
      if (v44 <= v45)
      {
        v46 = 0;
        v47 = v45 - v44 + 1;
        v48 = __y + 4 * v44;
        v49 = v6 + 4 * v44;
        do
        {
          v50 = (v49 + v46);
          if (v49 + v46 < v6)
          {
            goto LABEL_138;
          }

          v51 = &v34[v46 / 4];
          v52 = (v50 + 1) > v114 || v50 > v50 + 1;
          v53 = (v48 + v46);
          v54 = v48 + v46 + 4;
          v55 = !v52 && v53 >= __y;
          v56 = !v55 || v54 > v115;
          v57 = v56 || v53 > v54;
          v58 = v51 + 1;
          v59 = v57 || v58 > v33;
          v60 = v59 || v51 > v58;
          if (v60 || v51 < v32)
          {
            goto LABEL_138;
          }

          v62 = atan2(*v50, *v53);
          *v51 = v62;
          v46 += 4;
          --v47;
        }

        while (v47);
        v34 = (v34 + v46);
      }

      ++v31;
    }

    while (v31 != v111);
    v63 = tan(0.0);
    v64 = 0;
    v65 = 0;
    v66 = tan(0.897597909);
    do
    {
      v67 = (v109 + v65 + 4);
      v68 = v109 + v65 + 6;
      if (v67 < v109 + 4 || v68 > v113 || v67 > v68)
      {
        goto LABEL_138;
      }

      v71 = *v67;
      v72 = __b + v71 - 1;
      v73 = v72 + 1;
      v74 = v72 < __b || v73 > &v122;
      if (v74 || v72 > v73)
      {
        goto LABEL_138;
      }

      v76 = __b + 4 * v71;
      v77 = (v76 + 4);
      v78 = v76 + 8;
      v79 = v77 < __b || v78 > &v122;
      if (v79 || v77 > v78)
      {
        goto LABEL_138;
      }

      v81 = *v72;
      v82 = *v77;
      v83 = v63;
      if (*v72 < (*v77 * 44.8))
      {
        v83 = v66;
        if (v82 < (v81 * 44.8))
        {
          v84 = pow((v81 / v82), 0.367647052);
          v83 = ((v84 * -0.22252) + 0.90097) / ((v84 * 0.97493) + 0.43388);
        }
      }

      v85 = v109 + v64;
      v86 = v109 + v64 + 188;
      if (v86 > v32)
      {
        goto LABEL_138;
      }

      v87 = (v85 + 184);
      if (v85 + 184 > v86 || v87 < v112)
      {
        goto LABEL_138;
      }

      v88 = atan(v83);
      *v87 = (v88 * 3.5) + ((v71 & 3) * 3.1416);
      v65 += 2;
      v64 += 4;
    }

    while (2 * v111 != v65);
    v89 = v107;
    *(v108 + 14136) = *(v108 + 104);
    if (v107)
    {
      v90 = __b;
      do
      {
        *v90 = sqrtf(*v90);
        ++v90;
        --v89;
      }

      while (v89);
    }

    v91 = *(v108 + 28);
    if (v91)
    {
      v92 = *(v108 + 120);
      v93 = *(v108 + 128);
      v94 = v92;
      v95 = v118;
      while (v94 >= v92 && (v94 + 1) <= v93 && v94 <= v94 + 1 && v95 >= v118 && v95 + 1 <= v120 && v95 <= v95 + 1)
      {
        v96 = *v94++;
        *v95++ = 1.0 / v96;
        if (!--v91)
        {
          goto LABEL_123;
        }
      }

      goto LABEL_138;
    }

LABEL_123:
    result = mdct_noiseShaping(__b, &v122, *(v108 + 20), v118, v120);
    v97 = *(v108 + 16);
    v98 = *(v108 + 20);
    v99 = v97 - v98;
    if (v97 - v98 >= 1)
    {
      v100 = __b + v98;
      if (v100 > &v122 || __b > v100 || ((v97 - v98) & 0x8000) != 0 || (3840 - 4 * v98) >> 2 < v99)
      {
        goto LABEL_138;
      }

      if (v99 >= 1)
      {
        v101 = *(&v119 + 3);
        v102 = (v97 - v98) & 0x7FFF;
        do
        {
          *v100 = *v100 * v101;
          ++v100;
          --v102;
        }

        while (v102);
      }
    }

    if (v97 >= 1)
    {
      v103 = *(v108 + 14136);
      v104 = *(v108 + 14144);
      v17 = v104 >= v103;
      v105 = v104 - v103;
      if (!v17)
      {
        goto LABEL_138;
      }

      v106 = 4 * (v97 & 0x7FFF);
      if (v106 > 0xF00)
      {
        goto LABEL_138;
      }

      if (v105 < v106)
      {
        goto LABEL_138;
      }

      result = memmove(*(v108 + 14136), __b, 4 * (v97 & 0x7FFF));
      if (v103 + v106 < v103)
      {
        goto LABEL_138;
      }
    }
  }

  return result;
}

unint64_t RefineTonalComponents(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7, unint64_t a8, _DWORD *a9, unint64_t a10, unsigned int *a11, unint64_t a12, unint64_t a13, unint64_t a14, unint64_t a15, __int128 *a16, float *a17, unsigned int a18, unsigned int a19)
{
  *&v88[12] = *MEMORY[0x1E69E9840];
  *&v19 = 0xAAAAAAAAAAAAAAAALL;
  *(&v19 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v87[12] = v19;
  v86[1] = v19;
  *v87 = v19;
  v86[0] = v19;
  *&v84[12] = v19;
  v83[1] = v19;
  *v84 = v19;
  v83[0] = v19;
  *&v81[12] = v19;
  v80[1] = v19;
  *v81 = v19;
  v80[0] = v19;
  if (a13 < a12 || a18 > ((a13 - a12) >> 2))
  {
    goto LABEL_113;
  }

  v79 = -1431655766;
  result = DetectTonalComponents(v86, v88, v83, v85, v80, v82, &v79, a12, a14, a15, a16, a17, a18, a19);
  v27 = *a11;
  if (v27)
  {
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = v79;
    v32 = a9;
    v33 = a9;
    do
    {
      if (v29 >= v31)
      {
        goto LABEL_51;
      }

      v34 = (a1 + 2 * v30);
      v35 = v34 + 1;
      if (v34 < a1 || v35 > a2 || v34 > v35)
      {
        goto LABEL_113;
      }

      v38 = 2 * v29;
      while (1)
      {
        v39 = v80 + v38 + 2;
        if ((v80 + v38) < v80 || v39 > v82 || v80 + v38 > v39)
        {
          goto LABEL_113;
        }

        v42 = *v34;
        if (v42 < *(v80 + v29))
        {
          break;
        }

        ++v29;
        v38 += 2;
        if (v31 == v29)
        {
          v29 = v31;
          goto LABEL_51;
        }
      }

      v43 = v83 + v29;
      if (v43 < v83 || v43 + 1 > v85 || v43 > v43 + 1)
      {
        goto LABEL_113;
      }

      v29 = v29;
      if (v42 <= *v43)
      {
LABEL_51:
        v54 = (a5 + 2 * v30);
        v55 = v54 + 1;
        v57 = v54 < a5 || v55 > a6 || v54 > v55;
        v58 = (a3 + 2 * v30);
        v59 = v58 + 1;
        if (v57 || v58 < a3 || v59 > a4 || v58 > v59)
        {
          goto LABEL_113;
        }

        result = *v58;
        v32 += *v54 - result + 1;
      }

      else
      {
        v44 = v86 + v28;
        if (v44 < v86)
        {
          goto LABEL_113;
        }

        if (v44 + 1 > v88)
        {
          goto LABEL_113;
        }

        if (v44 > v44 + 1)
        {
          goto LABEL_113;
        }

        *v44 = v42;
        v45 = (a3 + 2 * v30);
        if (v45 < a3)
        {
          goto LABEL_113;
        }

        if ((v45 + 1) > a4)
        {
          goto LABEL_113;
        }

        if (v45 > v45 + 1)
        {
          goto LABEL_113;
        }

        v46 = v83 + v28;
        if (v46 < v83)
        {
          goto LABEL_113;
        }

        if (v46 + 1 > v85)
        {
          goto LABEL_113;
        }

        if (v46 > v46 + 1)
        {
          goto LABEL_113;
        }

        v47 = *v45;
        *v46 = v47;
        v48 = (a5 + 2 * v30);
        if (v48 < a5)
        {
          goto LABEL_113;
        }

        if ((v48 + 1) > a6)
        {
          goto LABEL_113;
        }

        if (v48 > v48 + 1)
        {
          goto LABEL_113;
        }

        v49 = v80 + v28;
        if (v49 < v80)
        {
          goto LABEL_113;
        }

        if (v49 + 1 > v82)
        {
          goto LABEL_113;
        }

        if (v49 > v49 + 1)
        {
          goto LABEL_113;
        }

        v50 = *v48;
        *v49 = v50;
        v51 = (a7 + 4 * v30);
        if (v51 < a7)
        {
          goto LABEL_113;
        }

        if ((v51 + 1) > a8)
        {
          goto LABEL_113;
        }

        if (v51 > v51 + 1)
        {
          goto LABEL_113;
        }

        v52 = (a7 + 4 * v28);
        if (v52 < a7 || (v52 + 1) > a8 || v52 > v52 + 1)
        {
          goto LABEL_113;
        }

        *v52 = *v51;
        if (v47 <= v50)
        {
          v63 = v50 - v47 + 1;
          while (v32 >= a9)
          {
            result = (v32 + 1);
            if ((v32 + 1) > a10)
            {
              break;
            }

            if (v32 > result)
            {
              break;
            }

            if (v33 < a9)
            {
              break;
            }

            v53 = v33 + 1;
            if ((v33 + 1) > a10 || v33 > v53)
            {
              break;
            }

            *v33++ = *v32++;
            if (!--v63)
            {
              goto LABEL_78;
            }
          }

LABEL_113:
          __break(0x5519u);
        }

        v53 = v33;
        result = v32;
LABEL_78:
        ++v28;
        v33 = v53;
        v32 = result;
      }

      ++v30;
    }

    while (v30 != v27);
    if (v28)
    {
      v64 = 0;
      do
      {
        v65 = v86 + v64 + 2;
        v66 = (v86 + v64) < v86 || v65 > v88;
        v67 = v66 || v86 + v64 > v65;
        v68 = (a1 + v64);
        v69 = a1 + v64 + 2;
        v70 = !v67 && v68 >= a1;
        v71 = !v70 || v69 > a2;
        if (v71 || v68 > v69)
        {
          goto LABEL_113;
        }

        *v68 = *(v86 + v64);
        v73 = v83 + v64;
        if ((v83 + v64) < v83)
        {
          goto LABEL_113;
        }

        if (v73 + 2 > v85)
        {
          goto LABEL_113;
        }

        if (v73 > v73 + 2)
        {
          goto LABEL_113;
        }

        v74 = (a3 + v64);
        if (a3 + v64 < a3)
        {
          goto LABEL_113;
        }

        if ((v74 + 1) > a4)
        {
          goto LABEL_113;
        }

        if (v74 > v74 + 1)
        {
          goto LABEL_113;
        }

        *v74 = *(v83 + v64);
        v75 = v80 + v64;
        if ((v80 + v64) < v80)
        {
          goto LABEL_113;
        }

        if (v75 + 2 > v82)
        {
          goto LABEL_113;
        }

        if (v75 > v75 + 2)
        {
          goto LABEL_113;
        }

        v76 = (a5 + v64);
        if (a5 + v64 < a5 || (v76 + 1) > a6 || v76 > v76 + 1)
        {
          goto LABEL_113;
        }

        *v76 = *(v80 + v64);
        v64 += 2;
      }

      while (2 * v28 != v64);
    }
  }

  else
  {
    v28 = 0;
  }

  *a11 = v28;
  return result;
}

unint64_t DetectTonalComponents(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, unint64_t a10, __int128 *a11, float *a12, unsigned int a13, unsigned int a14)
{
  v18 = MEMORY[0x1EEE9AC00](a1);
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v262 = v29;
  v263 = v30;
  v260 = v31;
  v261 = v32;
  v258 = v18;
  v259 = v33;
  v276[1] = *MEMORY[0x1E69E9840];
  v34 = __b;
  memset(__b, 255, sizeof(__b));
  LODWORD(v36) = a13;
  if (a13 >= 1)
  {
    v14 = 4 * (a13 & 0x7FFF);
    if (v14 > 4 * a13)
    {
      goto LABEL_473;
    }

    if (v14 >= 0xF01)
    {
      goto LABEL_473;
    }

    memcpy(__b, v22, 4 * (a13 & 0x7FFF));
    v36 = (__b + v14);
    if ((__b + v14) < __b)
    {
      goto LABEL_473;
    }
  }

  v22 = a10;
  v15 = v267;
  LODWORD(v34) = a14;
  mdct_noiseShaping(__b, v267, a14, a9, a10);
  LODWORD(v36) = (a13 - a14);
  if (v36 > 0)
  {
    v35 = a9 + 252;
    if (a9 + 252 < a9)
    {
      goto LABEL_473;
    }

    v36 = (a9 + 256);
    if (a9 + 256 > a10)
    {
      goto LABEL_473;
    }

    if (v35 > v36)
    {
      goto LABEL_473;
    }

    v36 = &__b[a14];
    if (v36 > v267)
    {
      goto LABEL_473;
    }

    if (__b > v36)
    {
      goto LABEL_473;
    }

    v37 = (a13 - a14) & 0x7FFF;
    if (v37 > (3840 - 4 * a14) >> 2)
    {
      goto LABEL_473;
    }

    v38 = *v35;
    do
    {
      *v36 = *v36 * v38;
      ++v36;
      --v37;
    }

    while (v37);
  }

  v264 = v28;
  v22 = &v272;
  bzero(&v272, 0xF00uLL);
  bzero(v269, 0xF00uLL);
  bzero(v267, 0xF00uLL);
  if (a13 >= 0x3C1)
  {
    goto LABEL_473;
  }

  LODWORD(v28) = a13;
  LODWORD(v36) = a13 - 2;
  if (a13 == 2)
  {
    v50 = 0.0;
  }

  else
  {
    v35 = __b;
    v39 = &__b[a13];
    v40 = 1;
    do
    {
      v41 = v40 + 1;
      v42 = &__b[v40 + 1];
      v43 = v42 + 1;
      if (v42 < __b || v43 > v39 || v42 > v43)
      {
        goto LABEL_473;
      }

      v46 = &__b[v40 - 1];
      if (v46 < __b)
      {
        goto LABEL_473;
      }

      if (v46 + 1 > v39)
      {
        goto LABEL_473;
      }

      if (v46 > v46 + 1)
      {
        goto LABEL_473;
      }

      v47 = &__b[v40];
      if (v47 < __b)
      {
        goto LABEL_473;
      }

      if (v47 + 1 > v39)
      {
        goto LABEL_473;
      }

      if (v47 > v47 + 1)
      {
        goto LABEL_473;
      }

      v48 = &v272 + v40;
      if (v48 < &v272 || v48 + 1 > &v272 + a13 || v48 > v48 + 1)
      {
        goto LABEL_473;
      }

      v49 = ((*v42 - *v46) * (*v42 - *v46)) + (*v47 * *v47);
      if (v49 < v20)
      {
        v49 = v20;
      }

      *v48 = v49;
      v40 = v41;
    }

    while (v41 <= v36);
    if (a13 < 2)
    {
      goto LABEL_473;
    }

    v50 = *(&v272 + 1) * 0.5;
  }

  v35 = &v272;
  *&v272 = v50;
  v36 = &v272 + v36;
  if (v36 < &v272)
  {
    goto LABEL_473;
  }

  v51 = &v272 + a13;
  v35 = (v36 + 1);
  if (v36 + 1 > v51)
  {
    goto LABEL_473;
  }

  if (v36 > v35)
  {
    goto LABEL_473;
  }

  v34 = (a13 - 1);
  v35 = &v272 + 4 * v34;
  if (v35 < &v272 || v35 + 4 > v51 || v35 > v35 + 4)
  {
    goto LABEL_473;
  }

  v22 = v276;
  *v35 = *v36 * 0.5;
  v17 = v269;
  v14 = &v272;
  v52 = 0.0;
  getEnvelope(a13, &v272, v276, v269, &v272, v267, v269, 0.0);
  __A = 16.0;
  v16 = __b;
  vDSP_vfill(&__A, __b, 1, a13);
  LODWORD(v28) = a13 - 4;
  if (a13 - 4 >= 3)
  {
    LODWORD(v36) = 3;
    v53 = 3;
    do
    {
      v35 = &v267[v53];
      v54 = v35 + 4;
      v56 = v35 < v267 || v54 > v269 || v35 > v54;
      v57 = v269 + v53;
      v58 = v57 + 1;
      v59 = !v56 && v57 >= v269;
      if (!v59 || v58 > &v272 || v57 > v58)
      {
        goto LABEL_473;
      }

      if (*v35 > *v57)
      {
        v62 = v53 - 1;
        v63 = &v272 + v53 - 1;
        if (v63 < &v272)
        {
          goto LABEL_473;
        }

        v35 = (v63 + 1);
        if (v63 + 1 > v276)
        {
          goto LABEL_473;
        }

        if (v63 > v35)
        {
          goto LABEL_473;
        }

        v35 = v53 + 1;
        v64 = &v272 + v35;
        if (v64 < &v272)
        {
          goto LABEL_473;
        }

        if (v64 + 1 > v276)
        {
          goto LABEL_473;
        }

        if (v64 > v64 + 1)
        {
          goto LABEL_473;
        }

        v65 = &v272 + v53;
        if (v65 < &v272 || v65 + 1 > v276 || v65 > v65 + 1)
        {
          goto LABEL_473;
        }

        v66 = *v63;
        if (*v63 <= *v64)
        {
          v66 = *v64;
        }

        if (*v65 >= v66)
        {
          if (v35 < v34)
          {
            do
            {
              v67 = &v272 + v35;
              v68 = v67 + 1;
              if (v67 < &v272 || v68 > v276 || v67 > v68)
              {
                goto LABEL_473;
              }

              v71 = (v35 + 1);
              v72 = &v272 + v71;
              if (v72 < &v272 || v72 + 1 > v276 || v72 > v72 + 1)
              {
                goto LABEL_473;
              }

              v73 = *v67;
              v74 = *v72;
              v75 = *v67 < *v72;
              v76 = (v35 + 1);
              if (v75)
              {
                if ((v73 * 3.0) < v74)
                {
                  break;
                }

                v76 = v34 <= v71 ? v71 : v34;
                v77 = v34 <= v71 ? (v35 + 1) : a13 - 1;
                v78 = v71 - 1;
                v79 = 4 * v71;
                v80 = -v77;
                v81 = v74;
                while (v80 + v78 != -1)
                {
                  v82 = (&v272 + v79 + 4);
                  v83 = (&v272 + v79 + 8);
                  if (v82 < &v272 || v83 > v276 || v82 > v83)
                  {
                    goto LABEL_473;
                  }

                  ++v78;
                  v79 += 4;
                  v75 = v81 < (*v82 * 3.0);
                  v81 = *v82;
                  if (v75)
                  {
                    v76 = v78;
                    break;
                  }
                }

                v86 = &v272 + v76;
                v87 = v86 + 1;
                if (v86 < &v272 || v87 > v276 || v86 > v87)
                {
                  goto LABEL_473;
                }

                if (((v74 + v74) * *v86) > (v73 * v73))
                {
                  break;
                }
              }

              v35 = v76;
            }

            while (v76 < v34);
          }

          if (v53 == 1)
          {
            v90 = 0;
          }

          else
          {
            v90 = v53 - 1;
            do
            {
              v91 = &v272 + v90;
              v92 = v91 + 1;
              if (v91 < &v272 || v92 > v276 || v91 > v92)
              {
                goto LABEL_473;
              }

              v95 = v90 - 1;
              v96 = &v272 + v95;
              if (v96 + 1 > v276)
              {
                goto LABEL_473;
              }

              v97 = *v91;
              v98 = *v96;
              if (*v91 < *v96)
              {
                if ((v97 * 3.0) < v98)
                {
                  break;
                }

                while (v95)
                {
                  v99 = v95--;
                  if (*(&v272 + v99) < (*(&v272 + v95) * 3.0))
                  {
                    LODWORD(v95) = v99;
                    break;
                  }
                }

                v100 = &v272 + v95;
                v101 = v100 + 1;
                if (v100 < &v272 || v101 > v276 || v100 > v101)
                {
                  goto LABEL_473;
                }

                if (((v98 + v98) * *v100) > (v97 * v97))
                {
                  break;
                }
              }

              v90 = v95;
            }

            while (v95);
          }

          if (v90 <= 3)
          {
            v90 = 3;
          }

          if (v35 >= v28)
          {
            v104 = a13 - 4;
          }

          else
          {
            v104 = v35;
          }

          if (v90 <= v104)
          {
            do
            {
              v105 = &v272 + v90;
              v106 = v105 + 1;
              v108 = v105 < &v272 || v106 > v276 || v105 > v106;
              v109 = &v272 + v53;
              v110 = v109 + 1;
              if (v108 || v109 < &v272 || v110 > v276 || v109 > v110)
              {
                goto LABEL_473;
              }

              if (*v105 > *v109)
              {
                v53 = v90;
              }

              ++v90;
            }

            while (v90 <= v104);
            v62 = v53 - 1;
          }

          if (v62 < v53 + 2)
          {
            v114 = v53 - v62 + 2;
            v115 = v62;
            v116 = __b;
            v117 = v269;
            v118 = v267;
            do
            {
              v119 = &v118[v115];
              if (&v118[v115] < v267)
              {
                goto LABEL_473;
              }

              v120 = v119 + 1 > v269 || v119 > v119 + 1;
              v121 = (v117 + v115 * 4);
              v122 = v117 + v115 * 4 + 4;
              v123 = !v120 && v121 >= v269;
              v124 = !v123 || v122 > &v272;
              v125 = v124 || v121 > v122;
              v126 = &v116[v115];
              v127 = &v116[v115 + 1];
              v128 = !v125 && v126 >= __b;
              v129 = !v128 || v127 > v267;
              if (v129 || v126 > v127)
              {
                goto LABEL_473;
              }

              if (*v119 <= *v121)
              {
                v131 = 1.5;
              }

              else
              {
                v131 = 1.1;
              }

              *v126 = v131;
              ++v116;
              v117 = (v117 + 4);
              ++v118;
              --v114;
            }

            while (v114);
          }

          v53 = v35;
        }
      }

      ++v53;
    }

    while (v53 <= v28);
  }

  v22 = a11;
  v17 = a12;
  if (vabds_f32(v26, v24) >= 0.25)
  {
    v16 = a13;
    goto LABEL_231;
  }

  v16 = a13;
  if (v26 <= 0.0 || vcvts_n_f32_u32(a14, 1uLL) < v26)
  {
    goto LABEL_231;
  }

  v26 = a14 / (v26 * 0.5);
  LODWORD(v36) = (256.0 / v26);
  if (a13 <= 0xFF)
  {
    LODWORD(v36) = (a13 / v26);
  }

  v270 = 0xAAAAAAAAAAAAAAAALL;
  *&v132 = 0xAAAAAAAAAAAAAAAALL;
  *(&v132 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v269[1] = v132;
  v269[0] = v132;
  v14 = v271;
  v274 = -1;
  *&v132 = -1;
  *(&v132 + 1) = -1;
  v273 = v132;
  v272 = v132;
  if (v36 < 2)
  {
    v35 = 0;
    LODWORD(v135) = 0;
    v145 = 1;
    v136 = 3.4028e38;
  }

  else
  {
    v133 = 0;
    v35 = 0;
    if (v36 >= 0xB)
    {
      v134 = 11;
    }

    else
    {
      v134 = v36;
    }

    v135 = (v134 - 1);
    v136 = 3.4028e38;
    v137 = &v272;
    v138 = v269;
    v139 = v135;
    do
    {
      v140 = a11 + (v26 * (v133 + 1));
      v141 = v140 + 1;
      if (v140 < a11 || v141 > a12 || v140 > v141)
      {
        goto LABEL_473;
      }

      if (v137 < &v272)
      {
        goto LABEL_473;
      }

      if (v137 + 4 > v275)
      {
        goto LABEL_473;
      }

      if (v137 > (v137 + 4))
      {
        goto LABEL_473;
      }

      v144 = *v140;
      *v137 = *v140;
      if (v138 < v269 || v138 + 1 > v271 || v138 > v138 + 1)
      {
        goto LABEL_473;
      }

      *v138++ = v133 + 1;
      if (v144 <= v136)
      {
        v35 = v133;
      }

      else
      {
        v35 = v35;
      }

      if (v144 <= v136)
      {
        v136 = v144;
      }

      ++v133;
      v137 = (v137 + 4);
      --v139;
    }

    while (v139);
    v145 = v133 + 1;
  }

  if (v145 < v36)
  {
    do
    {
      v207 = a11 + (v26 * v145);
      v208 = v207 + 1;
      if (v207 < a11 || v208 > a12 || v207 > v208)
      {
        goto LABEL_473;
      }

      v211 = *v207;
      if (*v207 <= v136)
      {
        v211 = v136;
      }

      else
      {
        v212 = &v272 + 4 * v35;
        if (v212 < &v272)
        {
          goto LABEL_473;
        }

        if (v212 + 4 > v275)
        {
          goto LABEL_473;
        }

        if (v212 > v212 + 4)
        {
          goto LABEL_473;
        }

        *(&v272 + v35) = v211;
        v213 = v269 + v35;
        if (v213 < v269 || v213 + 1 > v271 || v213 > v213 + 1)
        {
          goto LABEL_473;
        }

        v214 = 0;
        *v213 = v145;
        do
        {
          v215 = *(&v272 + v214);
          if (v215 <= v211)
          {
            v35 = v214;
          }

          else
          {
            v35 = v35;
          }

          if (v215 <= v211)
          {
            v211 = *(&v272 + v214);
          }

          ++v214;
        }

        while (v214 != 10);
      }

      ++v145;
      v136 = v211;
    }

    while (v145 != v36);
  }

  sort(v269, v135);
  memset(v267, 0, sizeof(v267));
  v52 = v26;
  if (v26 > 0.0)
  {
    v52 = v26;
    if (v135)
    {
      LODWORD(v274) = -1431655766;
      *&v216 = 0xAAAAAAAAAAAAAAAALL;
      *(&v216 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v273 = v216;
      v272 = v216;
      v217 = (v135 - 1);
      if (v135 == 1)
      {
        LODWORD(v36) = 0;
        v35 = 1;
        v225 = v269[0];
      }

      else
      {
        v36 = 0;
        v35 = &v272;
        do
        {
          v218 = v269 + v36 + 4;
          v219 = v269 + v36 + 8;
          if (v218 < v269 || v219 > v271 || v218 > v219)
          {
            goto LABEL_473;
          }

          v222 = &v272 + v36;
          if (&v272 + v36 < &v272)
          {
            goto LABEL_473;
          }

          if (v222 + 4 > &v274 + 4)
          {
            goto LABEL_473;
          }

          if (v222 > v222 + 4)
          {
            goto LABEL_473;
          }

          v223 = *v218 - *(v269 + v36);
          *(&v272 + v36) = v223;
          v224 = v267 + v36;
          if (v267 + v36 < v267 || v224 + 4 > v268 || v224 > v224 + 4)
          {
            goto LABEL_473;
          }

          *(v267 + v36++) = v223;
        }

        while ((4 * (v135 - 1)) != v36);
        sort(v267, v135 - 1);
        *&v36 = v267[0];
        v225 = v269[0];
        v35 = 1;
        if (v135 != 2 && LODWORD(v269[0]) * LODWORD(v267[0]) == 1)
        {
          v226 = v217 - 1;
          v227 = &v267[1];
          LODWORD(v35) = 1;
          do
          {
            v228 = *v227++;
            if (v228 == 1)
            {
              v35 = (v35 + 1);
            }

            else
            {
              v35 = v35;
            }

            --v226;
          }

          while (v226);
          if (v35 > 2)
          {
            goto LABEL_446;
          }
        }
      }

      if (v35 >= v217)
      {
        goto LABEL_459;
      }

      v229 = v217 - v35;
      v230 = v35;
      v231 = v35;
      v232 = v35 - 1;
      do
      {
        v233 = &v267[v232];
        v234 = v233 + 1;
        if (v233 < v267 || v234 > v268 || v233 > v234)
        {
          goto LABEL_473;
        }

        v237 = *v233;
        if (LODWORD(v267[v230]) == v237)
        {
          ++v231;
        }

        else
        {
          v238 = v36 - v225;
          if (v36 - v225 < 0)
          {
            v238 = v225 - v36;
          }

          v239 = v237 - v225;
          if (v237 - v225 < 0)
          {
            v239 = v225 - v237;
          }

          if (v238 <= v239)
          {
            v240 = v36;
          }

          else
          {
            v240 = v237;
          }

          v241 = v231 > v35;
          if (v231 == v35)
          {
            LODWORD(v36) = v240;
          }

          if (v231 <= v35)
          {
            v35 = v35;
          }

          else
          {
            v35 = v231;
          }

          v231 = 1;
          if (v241)
          {
            LODWORD(v36) = v237;
          }
        }

        ++v230;
        ++v232;
        --v229;
      }

      while (v229);
      if (v231 > v35)
      {
        v35 = v267;
        v36 = &v267[(v135 - 2)];
        if (v36 < v267)
        {
          goto LABEL_473;
        }

        v35 = (v36 + 1);
        if (v36 >= v36 + 1 || v35 > v268)
        {
          goto LABEL_473;
        }

        *&v36 = *v36;
        LODWORD(v35) = v231;
      }

LABEL_446:
      if (v35 >= 5)
      {
        if (v135 != 1)
        {
          v242 = 0;
          v35 = 0;
          do
          {
            v243 = *(&v272 + v242);
            if (v243 == v36)
            {
              v35 = v269 + 4 * v35;
              v248 = v35 + 4;
              if (v35 < v269 || v248 > v271 || v35 > v248)
              {
                goto LABEL_473;
              }

              goto LABEL_477;
            }

            if (v35 < (v135 - 2))
            {
              v244 = &v272 + v242 + 8;
              if (v244 > &v274 + 4 || &v272 + v242 + 4 > v244)
              {
                goto LABEL_473;
              }

              v245 = *(&v272 + v35 + 1);
              if (v243 == v245 && v245 + v243 == v36)
              {
                goto LABEL_474;
              }
            }

            ++v35;
            v242 += 4;
          }

          while (v217 != v35);
        }

LABEL_478:
        v52 = v26 * v36;
        goto LABEL_479;
      }

LABEL_459:
      if (v35 < 3 || v36 > 1)
      {
        v52 = 0.0;
      }

      else
      {
        v52 = v26;
      }

      goto LABEL_479;
    }
  }

  while (1)
  {
LABEL_479:
    if (v26 > 0.0 && v52 == 0.0)
    {
      v251 = (128.0 / v26);
      if (v251 >= 1)
      {
        if (v251 >= 0xA)
        {
          v252 = 10;
        }

        else
        {
          v252 = (128.0 / v26);
        }

        v253 = 1;
        do
        {
          modifyThreshold(v253, __b, v15, v26, 0.7);
          v253 = (v253 + 1);
          --v252;
        }

        while (v252);
      }
    }

    else if (v26 > 0.0 && v52 > 0.0)
    {
      v254 = (128.0 / v52);
      if (v254 >= 10)
      {
        v255 = 10;
      }

      else
      {
        v255 = (128.0 / v52);
      }

      v256 = ((v52 / v26) + 0.5);
      if (v256 >= 1)
      {
        do
        {
          modifyThreshold(v256, __b, v15, v26, 0.35);
          v59 = v256 != 0;
          v256 = (v256 - 1);
        }

        while (v256 != 0 && v59);
      }

      if (v254 >= 1)
      {
        v257 = 1;
        v26 = 0.35;
        do
        {
          modifyThreshold(v257, __b, v15, v52, 0.35);
          v257 = (v257 + 1);
          --v255;
        }

        while (v255);
      }
    }

LABEL_231:
    bzero(&v272, 0xF00uLL);
    bzero(v269, 0xF00uLL);
    v14 = v276;
    result = getEnvelope(v16, v22, v17, &v272, v276, v269, &v272, v52);
    if (v28 < 3)
    {
      break;
    }

    LODWORD(v36) = 0;
    v147 = 0;
    v35 = 3;
    v148 = 3;
    v16 = v259;
    while (1)
    {
      v149 = v269 + 4 * v148;
      v150 = v149 + 4;
      v151 = v149 < v269 || v150 > &v272;
      if (v151 || v149 > v150)
      {
        break;
      }

      v153 = &v272 + v148;
      if (v153 < &v272)
      {
        break;
      }

      if (v153 + 1 > v276)
      {
        break;
      }

      if (v153 > v153 + 1)
      {
        break;
      }

      v154 = &__b[v148];
      if (v154 < __b || v154 + 1 > v15 || v154 > v154 + 1)
      {
        break;
      }

      if (*(v269 + v148) <= (*v153 * *v154))
      {
        goto LABEL_260;
      }

      v155 = v148 - 1;
      v156 = v22 + v148 - 1;
      if (v156 < v22)
      {
        goto LABEL_473;
      }

      if (v156 + 1 > v17)
      {
        goto LABEL_473;
      }

      if (v156 > v156 + 1)
      {
        goto LABEL_473;
      }

      v157 = v148 + 1;
      v158 = v22 + v148 + 1;
      if (v158 < v22)
      {
        goto LABEL_473;
      }

      if (v158 + 1 > v17)
      {
        goto LABEL_473;
      }

      if (v158 > v158 + 1)
      {
        goto LABEL_473;
      }

      v159 = v22 + v148;
      if (v159 < v22)
      {
        goto LABEL_473;
      }

      result = (v159 + 1);
      if (v159 + 1 > v17 || v159 > result)
      {
        goto LABEL_473;
      }

      v160 = *v156;
      if (*v156 <= *v158)
      {
        v160 = *v158;
      }

      if (*v159 >= v160)
      {
        if (v157 < v34)
        {
          do
          {
            v161 = v22 + v157;
            v162 = v161 + 1;
            v163 = v161 < v22 || v162 > v17;
            if (v163 || v161 > v162)
            {
              goto LABEL_473;
            }

            result = v157 + 1;
            v165 = v22 + result;
            if (v165 < v22 || v165 + 1 > v17 || v165 > v165 + 1)
            {
              goto LABEL_473;
            }

            v166 = *v161;
            v167 = *v165;
            v75 = *v161 < *v165;
            v168 = v157 + 1;
            if (v75)
            {
              if ((v166 * 3.0) < v167)
              {
                break;
              }

              if (v34 <= result)
              {
                v169 = result;
              }

              else
              {
                v169 = v34;
              }

              v168 = v169;
              v170 = result - 1;
              result *= 4;
              v171 = v167;
              while (v170 - v169 != -1)
              {
                v172 = (v22 + result + 4);
                if (v172 < v22)
                {
                  goto LABEL_473;
                }

                v173 = v22 + result + 8;
                if (v173 > v17 || v172 > v173)
                {
                  goto LABEL_473;
                }

                ++v170;
                result += 4;
                v75 = v171 < (*v172 * 3.0);
                v171 = *v172;
                if (v75)
                {
                  v169 = v170;
                  v168 = v170;
                  break;
                }
              }

              v174 = v22 + v169;
              if (v174 < v22)
              {
                goto LABEL_473;
              }

              if (v174 + 1 > v17 || v174 > v174 + 1)
              {
                goto LABEL_473;
              }

              if (((v167 + v167) * *v174) > (v166 * v166))
              {
                break;
              }
            }

            v157 = v168;
          }

          while (v168 < v34);
        }

        if (v155 > v147)
        {
          do
          {
            v176 = v22 + v155;
            v177 = v176 + 1;
            v178 = v176 < v22 || v177 > v17;
            if (v178 || v176 > v177)
            {
              goto LABEL_473;
            }

            v180 = v155 - 1;
            v181 = v22 + v180;
            result = (v181 + 1);
            if (v181 + 1 > v17)
            {
              goto LABEL_473;
            }

            v182 = *v176;
            v183 = *v181;
            if (*v176 < *v181)
            {
              if ((v182 * 3.0) < v183)
              {
                break;
              }

              while (v180)
              {
                v184 = v180--;
                if (*(v22 + v184) < (*(v22 + v180) * 3.0))
                {
                  LODWORD(v180) = v184;
                  break;
                }
              }

              v185 = v22 + v180;
              v186 = v185 + 1;
              if (v185 < v22 || v186 > v17 || v185 > v186)
              {
                goto LABEL_473;
              }

              if (((v183 + v183) * *v185) > (v182 * v182))
              {
                break;
              }
            }

            v155 = v180;
          }

          while (v180 > v147);
        }

        if (v155 <= 3)
        {
          v189 = 3;
        }

        else
        {
          v189 = v155;
        }

        if (v157 >= v28)
        {
          v190 = v28;
        }

        else
        {
          v190 = v157;
        }

        while (v189 <= v190)
        {
          v191 = v22 + v189;
          v192 = v191 + 1;
          v194 = v191 < v22 || v192 > v17 || v191 > v192;
          v195 = v22 + v148;
          v196 = v195 + 1;
          if (v194 || v195 < v22 || v196 > v17 || v195 > v196)
          {
            goto LABEL_473;
          }

          if (*v191 > *v195)
          {
            v148 = v189;
          }

          ++v189;
        }

        v200 = (v260 + 2 * v36);
        if (v200 < v260)
        {
          goto LABEL_473;
        }

        if ((v200 + 1) > v261)
        {
          goto LABEL_473;
        }

        if (v200 > v200 + 1)
        {
          goto LABEL_473;
        }

        *v200 = v148 - 3;
        v201 = (v262 + 2 * v36);
        if (v201 < v262 || (v201 + 1) > v263 || v201 > v201 + 1)
        {
          goto LABEL_473;
        }

        *v201 = v148 + 3;
        if (v36)
        {
          v202 = (v36 - 1);
          v203 = (v262 + 2 * v202);
          if ((v203 + 1) > v263)
          {
            goto LABEL_473;
          }

          result = *v203;
          if (*v200 <= result)
          {
            v204 = (v258 + 2 * v202);
            if (v204 < v258 || (v204 + 1) > v259 || v204 > v204 + 1)
            {
              goto LABEL_473;
            }

            v205 = (v148 + *v204) >> 1;
            *v203 = v205;
            *v200 = v205 + 1;
          }
        }

        v206 = (v258 + 2 * v36);
        if (v206 < v258 || (v206 + 1) > v259 || v206 > v206 + 1)
        {
          goto LABEL_473;
        }

        LODWORD(v36) = v36 + 1;
        *v206 = v148;
        v147 = v157;
        if (v36 == 30)
        {
          goto LABEL_360;
        }
      }

      else
      {
LABEL_260:
        v157 = v148;
      }

      v148 = v157 + 1;
      if (v157 + 1 > v28)
      {
        goto LABEL_360;
      }
    }

    do
    {
LABEL_473:
      __break(0x5519u);
LABEL_474:
      v35 = v269 + 4 * v35;
    }

    while (v35 < v269 || v35 + 4 > v14 || v35 > v35 + 4);
LABEL_477:
    v52 = 0.0;
    if (*v35 <= 3u)
    {
      goto LABEL_478;
    }
  }

  LODWORD(v36) = 0;
LABEL_360:
  *v264 = v36;
  return result;
}

uint64_t getEnvelope(uint64_t result, float *a2, unint64_t a3, unint64_t a4, unint64_t a5, float *a6, unint64_t a7, float a8)
{
  if (a8 == 0.0)
  {
    v8 = 15;
  }

  else if (a8 <= 10.0)
  {
    v8 = 11;
  }

  else if (a8 < 22.0)
  {
    v8 = (2 * (a8 * 0.5)) | 1u;
  }

  else
  {
    v8 = 23;
  }

  v9 = ~(v8 >> 1);
  v10 = 0.0;
  v11 = v9 + v8;
  if (v9 + v8)
  {
    v12 = a2;
    v13 = v11;
    while (v12 >= a2 && (v12 + 1) <= a3 && v12 <= v12 + 1)
    {
      v14 = *v12++;
      v10 = v10 + (v14 * 7.59);
      if (!--v13)
      {
        goto LABEL_14;
      }
    }
  }

  else
  {
LABEL_14:
    v15 = 0;
    v16 = v8 >> 1;
    v17 = v8 - (v8 >> 1);
    while (1)
    {
      v18 = &a2[v17 - 1];
      v19 = v18 + 1;
      v20 = v18 < a2 || v19 > a3;
      v21 = v20 || v18 > v19;
      v22 = (a4 + v15);
      v23 = a4 + v15 + 4;
      v24 = !v21 && v22 >= a4;
      v25 = !v24 || v23 > a5;
      if (v25 || v22 > v23)
      {
        break;
      }

      v10 = v10 + (*v18 * 7.59);
      v27 = v10;
      *v22 = v27 / v17;
      v15 += 4;
      ++v17;
      if (((2 * v8) & 0x1FFFFFFFCLL) + 4 == v15)
      {
        v28 = v10 / v8;
        v29 = result - v11;
        if ((v8 >> 1) + 1 >= v29)
        {
LABEL_60:
          if (v29 >= result)
          {
LABEL_79:
            v62 = (result - 1);
            if (v62 < 2)
            {
LABEL_113:
              v81 = (a2 + 1);
              if ((a2 + 1) <= a3 && v81 >= a2 && (a2 + 2) <= a3 && v81 <= (a2 + 2) && (a6 + 1) <= a7 && a6 + 1 >= a6)
              {
                *a6 = *a2 + (a2[1] * 0.75);
                v82 = &a2[(result - 2)];
                if (v82 >= a2 && (v82 + 1) <= a3 && v82 <= v82 + 1)
                {
                  v83 = &a2[v62];
                  if (v83 >= a2 && (v83 + 1) <= a3 && v83 <= v83 + 1)
                  {
                    v84 = &a6[v62];
                    if (v84 >= a6 && (v84 + 1) <= a7 && v84 <= v84 + 1)
                    {
                      *v84 = *v83 + (*v82 * 0.75);
                      return result;
                    }
                  }
                }
              }
            }

            else
            {
              v63 = 0;
              v64 = v62 - 1;
              while (1)
              {
                v65 = &a2[v63];
                v66 = &a2[v63 + 1];
                v67 = v66 > a3 || v65 > v66;
                v68 = v65 + 2;
                v69 = !v67 && v66 >= a2;
                v70 = !v69 || v68 > a3;
                v71 = v70 || v66 > v68;
                v72 = v65 + 3;
                v73 = !v71 && v68 >= a2;
                v74 = !v73 || v72 > a3;
                v75 = v74 || v68 > v72;
                v76 = &a6[v63 + 1];
                v77 = &a6[v63 + 2];
                v78 = !v75 && v76 >= a6;
                v79 = !v78 || v77 > a7;
                if (v79 || v76 > v77)
                {
                  break;
                }

                *v76 = (*v66 + (*v65 * 0.75)) + (*v68 * 0.75);
                ++v63;
                if (!--v64)
                {
                  goto LABEL_113;
                }
              }
            }
          }

          else
          {
            v49 = v28 * v8;
            v50 = v8 - 1;
            v51 = (a4 + 4 * v29);
            v52 = result - v8;
            while (1)
            {
              v53 = &a2[v52];
              v54 = v53 + 1;
              v55 = v53 < a2 || v54 > a3;
              v56 = v55 || v53 > v54;
              v57 = v51 + 1;
              v58 = !v56 && v51 >= a4;
              v59 = !v58 || v57 > a5;
              if (v59 || v51 > v57)
              {
                break;
              }

              v49 = v49 + (*v53 * -7.59);
              v61 = v49;
              *v51++ = v61 / v50--;
              ++v52;
              if (v16 == v50)
              {
                goto LABEL_79;
              }
            }
          }
        }

        else
        {
          v30 = 0;
          v31 = v8 >> 1;
          v32 = v8 + v31 - v16;
          v33 = a4 + 4 * v31;
          while (1)
          {
            v34 = &a2[v32];
            v35 = v34 + 1;
            v36 = v34 < a2 || v35 > a3;
            v37 = v36 || v34 > v35;
            v38 = &a2[v30];
            v39 = &a2[v30 + 1];
            v40 = !v37 && v38 >= a2;
            v41 = !v40 || v39 > a3;
            v42 = v41 || v38 > v39;
            v43 = (v33 + v30 * 4 + 4);
            v44 = v33 + v30 * 4 + 8;
            v45 = !v42 && v43 >= a4;
            v46 = !v45 || v44 > a5;
            if (v46 || v43 > v44)
            {
              break;
            }

            v28 = v28 + (((*v34 - *v38) * 7.59) / v8);
            v48 = v28;
            *v43 = v48;
            ++v32;
            ++v30;
            if (result == v32)
            {
              goto LABEL_60;
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

unint64_t sort(unint64_t result, int a2)
{
  v2 = a2 - 2;
  if (a2 >= 2)
  {
    v3 = 0;
    v4 = result + 4 * a2;
    while (1)
    {
      v5 = (result + 4 * v2);
      v6 = v5 + 1;
      v7 = v5 < result || v6 > v4;
      if (v7 || v5 >= v6)
      {
        break;
      }

      v9 = *v5;
      if (v2 + 1 >= a2)
      {
        v11 = v2;
      }

      else
      {
        v10 = v3;
        LODWORD(v11) = v2;
        while (1)
        {
          v12 = *(result + 4 * (a2 - 1) + 4 * v10);
          v11 = v11;
          if (v9 <= v12)
          {
            break;
          }

          *(result + 4 * v11) = v12;
          LODWORD(v11) = v11 + 1;
          if (++v10 == 1)
          {
            v11 = (a2 - 1);
            break;
          }
        }
      }

      v13 = (result + 4 * v11);
      v14 = v13 + 1;
      v15 = v13 < result || v14 > v4;
      if (v15 || v13 >= v14)
      {
        break;
      }

      *v13 = v9;
      --v3;
      v7 = v2-- <= 0;
      if (v7)
      {
        return result;
      }
    }

    __break(0x5519u);
  }

  return result;
}

uint64_t modifyThreshold(uint64_t result, unint64_t a2, unint64_t a3, float a4, float a5)
{
  v5 = result * a4;
  v6 = (a2 + 4 * v5);
  v7 = v6 + 1;
  v9 = v6 < a2 || v7 > a3 || v6 >= v7;
  if (v9 || ((*v6 = a5, (v6 - 1) >= a2) ? (v10 = v6 - 1 >= v6) : (v10 = 1), v10 || ((v11 = (v5 - v5) + (v5 - v5), *(v6 - 1) = v11 + a5, v12 = v6 + 2, v12 <= a3) ? (v13 = v7 > v12) : (v13 = 1), v13)))
  {
    __break(0x5519u);
  }

  else
  {
    *v7 = (a5 + 2.0) - v11;
  }

  return result;
}

uint64_t get_next_indice_1(uint64_t result)
{
  v1 = *(result + 5160);
  v2 = *(result + 5176) / 50;
  if (v2 <= v1 && *result == 1 || v2 + 16 <= v1 && *result == 2)
  {
    v3 = 0;
    *(result + 5168) = 1;
    return v3;
  }

  *(result + 5160) = v1 + 1;
  v4 = (result + 8 + 2 * v1);
  v5 = (v4 + 1);
  if (v4 >= result + 8 && v5 <= result + 5160 && v4 <= v5)
  {
    return *v4;
  }

  __break(0x5519u);
  return result;
}

uint64_t lsf_bctcvq_decprm(uint64_t a1, _DWORD *a2, unint64_t a3)
{
  v6 = 0;
  while (1)
  {
    result = get_next_indice(a1, BC_TCVQ_BIT_ALLOC_40B[v6]);
    if ((a2 + 1) > a3 || a2 > a2 + 1)
    {
      break;
    }

    *a2 = result;
    ++v6;
    ++a2;
    if (v6 == 10)
    {
      return result;
    }
  }

  __break(0x5519u);
  return result;
}

uint64_t tcx_ltp_decode_params(_DWORD *a1, int *a2, int *a3, float *a4, int a5, int a6, int a7, int a8, int a9)
{
  if (!a1 || !*a1)
  {
    result = 0;
    *a2 = a8;
    *a3 = 0;
    *a4 = 0.0;
    return result;
  }

  v9 = a1[1];
  v10 = (a7 - a5) * a9;
  v11 = v9 - v10;
  if (v9 >= v10)
  {
    v15 = a9 >> 1;
    v16 = v10 + (a9 >> 1) * (a6 - a7);
    if (v9 >= v16)
    {
      v13 = 0;
      *a2 = a6 - v16 + v9;
    }

    else
    {
      *a2 = v11 / v15 + a7;
      v13 = 2 * (a1[1] - (v10 + v11 / v15 * v15));
    }
  }

  else
  {
    v12 = v9 / a9;
    *a2 = v12 + a5;
    v13 = a1[1] - v12 * a9;
  }

  *a3 = v13;
  *a4 = ((a1[2] + 1) * 0.625) * 0.25;
  if (*a2 <= 28)
  {
    v17 = 29;
LABEL_13:
    *a2 = v17;
    return 1;
  }

  if (*a2 >= 0x242)
  {
    v17 = 577;
    goto LABEL_13;
  }

  return 0;
}

uint64_t ReadTnsData(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t a4, uint64_t a5, _DWORD *a6)
{
  v11[0] = a4;
  v11[1] = a5;
  v8 = *(a2 + 5160);
  if (*(a1 + 1) < 2u)
  {
    v9 = &tnsEnabledWBTCX20BitMap;
  }

  else if (*(a1 + 16) >= 512)
  {
    v9 = &tnsEnabledSWBTCX20BitMap;
  }

  else
  {
    v9 = &tnsEnabledSWBTCX10BitMap;
  }

  result = ReadFromBitstream(v9, 1, a2, v11, a6);
  *a3 = *(a2 + 5160) - v8;
  return result;
}

uint64_t DecodeIndex(uint64_t result, unsigned int a2, _DWORD *a3)
{
  if (*(result + 166500) < 1 || *(result + 138560) <= 0.46)
  {
    v10 = 8;
    next_indice = get_next_indice(result, 8);
    goto LABEL_12;
  }

  v4 = ((*(result + 166500) + 64) >> 7) - 2;
  *a3 = 256;
  v5 = (&NumRatioBits + 68 * a2);
  v6 = &v5[v4];
  v7 = (v6 + 1);
  if (v6 >= v5 && v7 <= (v5 + 17) && v6 < v7)
  {
    v10 = *v6;
    next_indice = ((*a3 | get_next_indice(result, v10)) + 1) | (v4 << 9);
LABEL_12:
    *a3 = next_indice;
    return v10;
  }

  __break(0x5519u);
  return result;
}

uint64_t IGFDecReadLevel(uint64_t result, uint64_t a2, unsigned int a3, int a4)
{
  if (result)
  {
    v4 = result;
    v5 = result + 7536 + 260 * a3;
    if (result + 7536 > v5 || v5 + 260 > result + 8316)
    {
      goto LABEL_82;
    }

    v9 = result + 7520;
    v10 = result + 13008;
    v11 = *(v5 + 112);
    result = get_next_indice(a2, 1);
    v12 = result;
    if (result)
    {
      if (v9 <= v10 && v4 + 12584 <= (v4 + 13000))
      {
        *(v4 + 12848) = 0;
        v13 = v4 + 8504 + 4 * v11;
        if (v13 >= v4 + 8504)
        {
          if ((*(v5 + 116) - v11) >= 1)
          {
            v14 = (*(v5 + 116) - v11) & 0x7FFF;
            v15 = (v4 + 8504 + 4 * v11);
            while (v15 >= v13 && (v15 + 1) <= v4 + 8596 && v15 <= v15 + 1)
            {
              *v15++ = 0;
              if (!--v14)
              {
                goto LABEL_80;
              }
            }

            goto LABEL_82;
          }

          goto LABEL_80;
        }
      }

LABEL_82:
      __break(0x5519u);
      return result;
    }

    v16 = v4 + 8504;
    v17 = v4 + 8596;
    result = mvi2i((v4 + 8504), v4 + 8596, (v4 + 8596), v4 + 8688, *(v5 + 116));
    if (v9 > v10)
    {
      goto LABEL_82;
    }

    v61 = (v4 + 12584);
    if (v4 + 12584 > (v4 + 13000))
    {
      goto LABEL_82;
    }

    v18 = (v16 + 4 * v11);
    if (v18 < v16)
    {
      goto LABEL_82;
    }

    *(v4 + 12584) = *(a2 + 5160);
    if (v4 + 12984 > (v4 + 12996))
    {
      goto LABEL_82;
    }

    result = get_next_indice(a2, 16);
    *(v4 + 12984) = 0xFFFF00000000;
    *(v4 + 12992) = result;
    if (a4)
    {
      *(v4 + 12848) = 0;
      v19 = 1;
    }

    else
    {
      v19 = *(v4 + 12848) == 0;
    }

    if (v18 > v17)
    {
      goto LABEL_82;
    }

    v20 = *(v4 + 12844);
    if (v20 > 0x40 || (v17 - v18) >> 2 < v20)
    {
      goto LABEL_82;
    }

    if (!v20)
    {
      v58 = 0;
LABEL_79:
      *(a2 + 5160) -= 14;
      result = mvi2i(v18, v17, (v4 + 12588), v4 + 12844, v58);
      ++*(v4 + 12848);
      *(v4 + 12584) = *(a2 + 5160) - *(v4 + 12584);
LABEL_80:
      *(v4 + 4) = v12;
      return result;
    }

    v21 = 0;
    v22 = 0;
    v62 = -1431655766;
    v23 = 4 * v20;
    v24 = v4 + 4 * v11;
    v59 = v24 + 8496;
    v60 = v24 + 8500;
    while (1)
    {
      if (v19)
      {
        if (!v21)
        {
          ari_decode_14bits_s27_ext(a2, &v62, (v4 + 12984), *(v4 + 12856), *(v4 + 12864));
          *v18 = 4 * v62;
          result = arith_decode_bits(v61, a2, 2);
          v45 = *v18 + result;
          goto LABEL_47;
        }

        if (v21 == 1)
        {
          v62 = *v18;
          v25 = v62;
          result = arith_decode_residual(v61, a2, *(v4 + 12872), *(v4 + 12880), *(v4 + 12888));
          v18[1] = result + v25;
          goto LABEL_71;
        }

        v46 = v60 + v22;
        if (v60 + v22 < v18)
        {
          goto LABEL_82;
        }

        if (v46 > &v18[v22 / 4])
        {
          goto LABEL_82;
        }

        v26 = v24 + v22;
        v28 = *(v24 + v22 + 8500);
        v62 = v28;
        if (v59 + v22 < v18 || v46 > &v18[v23 / 4] || v59 + v22 > v46)
        {
          goto LABEL_82;
        }

        v47 = v28 - *(v24 + v22 + 8496);
        if (v47 >= 0)
        {
          v48 = v28 - *(v24 + v22 + 8496);
        }

        else
        {
          v48 = *(v24 + v22 + 8496) - v28;
        }

        if (v47 > 3)
        {
          v49 = 3;
        }

        else
        {
          v49 = -3;
        }

        if (v48 >= 4)
        {
          v47 = v49;
        }

        v50 = v47 + 3;
        v51 = *(v4 + 12896);
        v37 = v51 + 56 * v50;
        if (v37 < v51)
        {
          goto LABEL_82;
        }

        v52 = *(v4 + 12912);
        v39 = (v52 + 2 * v50);
        v53 = v39 + 1;
        v54 = v39 < v52 || v53 > *(v4 + 12920);
        if (v54 || v39 >= v53)
        {
          goto LABEL_82;
        }

        v43 = *(v4 + 12904);
      }

      else
      {
        if (!v22)
        {
          v62 = *(v4 + 12588);
          v44 = v62;
          result = arith_decode_residual(v61, a2, *(v4 + 12928), *(v4 + 12936), *(v4 + 12944));
          v45 = result + v44;
LABEL_47:
          *v18 = v45;
          goto LABEL_71;
        }

        if (v60 + v22 < v18)
        {
          goto LABEL_82;
        }

        if (v60 + v22 > &v18[v22 / 4])
        {
          goto LABEL_82;
        }

        v26 = v24 + v22;
        v27 = *(v4 + v22 + 12584);
        v28 = *(v24 + v22 + 8500) + *(v4 + v22 + 12588) - v27;
        v29.i32[0] = *(v24 + v22 + 8500);
        v29.i32[1] = *(v4 + v22 + 12588);
        v30 = vdup_n_s32(v27);
        v31 = vsub_s32(v29, v30);
        v32 = vcgt_u32(0x400000004, vabd_s32(v29, v30));
        v33 = vcgt_s32(v31, 0x300000003);
        v34 = vadd_s32(vbsl_s8(v32, v31, vorr_s8(vand_s8(v33, 0x300000003), (*&vmvn_s8(v33) & 0xFFFFFFFDFFFFFFFDLL))), 0x300000003);
        v35 = vmul_s32(v34, 0x1C000000C4);
        v62 = v28;
        v36 = *(v4 + 12952);
        v37 = v36 + 2 * vadd_s32(v35, vdup_lane_s32(v35, 1)).i32[0];
        if (v37 < v36)
        {
          goto LABEL_82;
        }

        v38 = *(v4 + 12968);
        v39 = (v38 + 2 * (v34.i32[1] - v34.i32[0] + 8 * v34.i32[0]));
        v40 = v39 + 1;
        v41 = v39 < v38 || v40 > *(v4 + 12976);
        if (v41 || v39 >= v40)
        {
          goto LABEL_82;
        }

        v43 = *(v4 + 12960);
      }

      result = arith_decode_residual(v61, a2, v37, v43, *v39);
      *(v26 + 8504) = result + v28;
LABEL_71:
      v56 = *(v24 + v22 + 8504);
      if ((v56 & 0x80000000) != 0)
      {
        v57 = 0;
        goto LABEL_75;
      }

      if (v56 >= 0x5C)
      {
        v57 = 91;
LABEL_75:
        *(v24 + v22 + 8504) = v57;
        *(a2 + 5168) = 1;
      }

      v22 += 4;
      ++v21;
      if (v23 == v22)
      {
        v58 = *(v4 + 12844);
        v12 = 0;
        v17 = v4 + 8596;
        goto LABEL_79;
      }
    }
  }

  return result;
}

uint64_t IGFDecReadData(uint64_t result, uint64_t a2, unsigned int a3, int a4)
{
  if (result)
  {
    v4 = result;
    v5 = result + 7536 + 260 * a3;
    if (result + 7536 <= v5 && v5 + 260 <= result + 8316)
    {
      v8 = result + 7520;
      v9 = result + 13008;
      v10 = *(v5 + 164);
      v11 = (result + 12448);
      v12 = result + 12468;
      v13 = 5;
      v14 = (result + 12448);
      do
      {
        if ((v14 + 1) > v12 || v14 > v14 + 1)
        {
          goto LABEL_60;
        }

        *v14++ = 0;
        --v13;
      }

      while (v13);
      if (a4 || (result = get_next_indice(a2, 1), result != 1))
      {
        if (v8 > v9)
        {
          goto LABEL_60;
        }

        IGF_decode_whitening_level(a2, (v4 + 1880), 0);
        result = get_next_indice(a2, 1);
        if (result == 1)
        {
          if (v10 >= 2)
          {
            v24 = 1;
            do
            {
              result = IGF_decode_whitening_level(a2, (v4 + 1880), v24++);
            }

            while (v10 != v24);
          }
        }

        else if (v10 >= 2)
        {
          v25 = v10 - 1;
          v26 = v4 + 3113;
          while (v26 >= v11 && (v26 + 1) <= v12 && v26 <= v26 + 1)
          {
            *v26++ = *v11;
            if (!--v25)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_60;
        }
      }

      else if (v10 >= 1)
      {
        v16 = v4 + 3112;
        do
        {
          v17 = (v16 + 6);
          v18 = (v16 + 5) < v12 || v17 > (v4 + 3122);
          v19 = v18 || (v16 + 5) > v17;
          v20 = v16 + 1;
          v21 = !v19 && v16 >= v11;
          v22 = !v21 || v20 > v12;
          if (v22 || v16 > v20)
          {
            goto LABEL_60;
          }

          *v16 = v16[5];
          ++v16;
        }

        while (--v10);
      }

LABEL_46:
      v27 = 5;
      while (1)
      {
        v28 = (v11 + 1) > v12 || v11 > v11 + 1;
        v29 = (v11 + 6);
        v30 = v28 || v29 > (v4 + 3122);
        if (v30 || (v11 + 5) > v29)
        {
          break;
        }

        v11[5] = *v11;
        ++v11;
        if (!--v27)
        {
          result = get_next_indice(a2, 1);
          v4[1878] = result;
          return result;
        }
      }
    }

LABEL_60:
    __break(0x5519u);
  }

  return result;
}

uint64_t ACcontextMapping_decode2_no_mem_s17_LC(uint64_t a1, _DWORD *a2, unint64_t a3, unint64_t a4, int a5, unsigned int a6, uint64_t a7)
{
  *v164 = *MEMORY[0x1E69E9840];
  if (a4 >= 1)
  {
    v14 = a4 & 0x7FFF;
    v15 = a2;
    do
    {
      if (v15 < a2 || (v15 + 1) > a3 || v15 > v15 + 1)
      {
        goto LABEL_228;
      }

      *v15++ = 0;
      --v14;
    }

    while (v14);
  }

  v16 = a5 > 400;
  if ((a4 >> 1) <= 1)
  {
    v17 = 0;
  }

  else
  {
    v17 = 0;
    v18 = 1;
    do
    {
      ++v17;
      v18 *= 2;
    }

    while (v18 < (a4 >> 1));
  }

  v143 = *(a1 + 5160);
  next_indice = get_next_indice(a1, v17);
  v163 = 0;
  v142 = 2 * next_indice;
  v20 = 2 * next_indice + 2;
  if (v20 <= a4 && !*(a1 + 5168))
  {
    v138 = a4 >> 1;
    v133 = a6;
    v152 = a3;
    v153 = a2;
    v162 = 0xAAAAAAAAAAAAAAAALL;
    v159 = -1431655766;
    v160 = -1431655766;
    v149 = a7;
    v134 = 2 * next_indice + 2;
    v135 = a4;
    if (a7)
    {
      v22 = *(a7 + 48);
      v23 = *(a7 + 52);
      if (v22 >= v20)
      {
        v24 = 2 * next_indice + 2;
      }

      else
      {
        v24 = *(a7 + 48);
      }

      *(a7 + 48) = v24;
      LODWORD(v25) = v20 - v24;
      if (v25 < v23)
      {
        v26 = v22;
        v27 = *(a7 + 40);
        v25 = v25;
        if (2 * next_indice + 2 < v22)
        {
          v26 = 2 * next_indice + 2;
        }

        v28 = 8 * next_indice - 4 * v26 + 12;
        do
        {
          v29 = *(a7 + 32);
          v30 = v29 + v28;
          v31 = v29 + v28 - 4;
          v32 = v31 < v29 || v30 > v27;
          if (v32 || v31 > v30)
          {
            goto LABEL_228;
          }

          *(v29 + 4 * v25++) += a4;
          a7 = v149;
          v28 += 4;
        }

        while (v25 < *(v149 + 52));
      }

      v162 = v22;
    }

    else
    {
      LODWORD(v162) = 0;
    }

    v158 = (a1 + 5160);
    v34 = (v143 + a5 - 1);
    v137 = v16 << 9;
    v161 = 0;
    v35 = get_next_indice(a1, 16);
    v36 = 0;
    v139 = 0;
    v37 = 0;
    v38 = 0;
    v39 = *(a1 + 5160);
    v40 = -14 - a5;
    v154 = a1 + 8;
    *&v41 = 0xFFFF00000000;
LABEL_35:
    v145 = v38;
    v146 = v40;
    v136 = v39;
    if (a7)
    {
      v156 = v41;
      next_coeff_mapped = get_next_coeff_mapped(&v162, &v161 + 1, &v160, a7);
      v42 = get_next_coeff_mapped(&v162, &v161, &v159, a7);
      v41 = v156;
      v147 = v42;
      v36 = v161;
      v139 = HIDWORD(v161);
      v37 = HIDWORD(v161);
    }

    else
    {
      v147 = v162 + 1;
      next_coeff_mapped = v162;
      v159 = v162 + 1;
      v160 = v162;
      LODWORD(v162) = v162 + 2;
    }

    v151 = v36;
    v144 = v37;
    v43 = &v164[(v36 | v37) - 2];
    v44 = v43 + 4;
    v45 = v43 < &v163 || v44 > v164;
    v150 = &v164[(v36 | v37) - 2];
    if (v45 || v43 > v44)
    {
      goto LABEL_228;
    }

    if (v160 >= v159)
    {
      v47 = v159;
    }

    else
    {
      v47 = v160;
    }

    v157 = *v150 + v137 + ((v47 > v138) << 8);
    if (v157 < 0 || v34 < 1)
    {
      goto LABEL_14;
    }

    v140 = v159;
    v141 = v160;
    v48 = 0;
    v49 = 0;
    v50 = 0;
    v51 = v34;
LABEL_51:
    v52 = v50;
    if (v50 >= 3)
    {
      v53 = 3;
    }

    else
    {
      v53 = v50;
    }

    v155 = v53;
    v54 = &ari_lookup_s17_LC[v157 + (v53 << 10)];
    v55 = v54 < ari_pk_s17_LC_ext && v54 >= ari_lookup_s17_LC;
    if (!v55)
    {
      goto LABEL_228;
    }

    v56 = &ari_pk_s17_LC_ext[36 * *v54];
    v57 = (v56 + 36);
    v58 = SDWORD1(v41) - v41 + 1;
    v59 = ((v35 - v41) << 14) | 0x3FFF;
    v60 = v56 + 16;
    if (v58 * *(v56 + 8) <= v59)
    {
      v60 = v56;
    }

    v61 = (v60 + 10);
    v62 = v60 + 8 < v56 || v61 > v57;
    if (v62 || (v60 + 8) > v61)
    {
      goto LABEL_228;
    }

    if (v58 * *(v60 + 4) > v59)
    {
      v60 += 8;
    }

    v64 = (v60 + 6);
    v65 = v60 + 4 < v56 || v64 > v57;
    if (v65 || (v60 + 4) > v64)
    {
      goto LABEL_228;
    }

    v67 = v58 * *(v60 + 2) <= v59 ? v60 : v60 + 4;
    v68 = v67 + 2;
    v69 = v67 + 4;
    v70 = v67 + 2 < v56 || v69 > v57;
    if (v70 || v68 > v69)
    {
      goto LABEL_228;
    }

    v72 = v67;
    if (v58 * *v68 > v59)
    {
      v72 = (v67 + 2);
      if (v68 == v56 + 30)
      {
        if ((v67 + 6) > v57 || v69 > v67 + 6)
        {
          goto LABEL_228;
        }

        if (v58 * *v69 <= v59)
        {
          v72 = (v67 + 2);
        }

        else
        {
          v72 = (v67 + 4);
        }
      }
    }

    v55 = v72 >= v56;
    v74 = v72 - v56;
    v75 = (v72 + 2);
    v77 = !v55 || v75 > v57 || v72 > v75;
    v78 = (v72 + 4);
    if (v77 || v78 > v57 || v75 > v78)
    {
      goto LABEL_228;
    }

    v81 = v41 + ((*v72 * v58) >> 14) - 1;
    for (i = v41 + ((*(v72 + 1) * v58) >> 14); ; i *= 2)
    {
      if (v81 >= 0x8000)
      {
        if (i < 0x8000)
        {
          if (v81 >> 14 > 2 || i < 0x4000)
          {
            v83 = v74 >> 1;
            *&v41 = __PAIR64__(v81, i);
            if ((v74 >> 1) < 16)
            {
              v50 = v52;
              v34 = v51;
              goto LABEL_136;
            }

            v84 = *(a1 + 5176) / 50;
            if (v84 > v51)
            {
              v85 = (v154 + 2 * v51);
              if (v85 >= v154 && v85 + 1 <= v158 && v85 <= v85 + 1)
              {
                v86 = *v85;
                goto LABEL_124;
              }

LABEL_228:
              __break(0x5519u);
            }

            v86 = 0;
            *(a1 + 5168) = 1;
LABEL_124:
            if (v84 <= (v51 - 1))
            {
              v88 = 0;
              *(a1 + 5168) = 1;
            }

            else
            {
              v87 = (v154 + 2 * (v51 - 1));
              if (v87 < v154 || v87 + 1 > v158 || v87 > v87 + 1)
              {
                goto LABEL_228;
              }

              v88 = *v87;
            }

            v48 += v86 << v52;
            v34 = (v51 - 2);
            v49 += v88 << v52;
            v50 = v52 + 1;
            if (v52 <= 0xD)
            {
              v32 = v51 <= 2;
              v51 = (v51 - 2);
              if (!v32)
              {
                goto LABEL_51;
              }
            }

            if (v52 >= 0xE)
            {
              v131 = (v153 + 4 * next_coeff_mapped);
              if (v131 < v153)
              {
                goto LABEL_228;
              }

              if ((v131 + 1) > v152)
              {
                goto LABEL_228;
              }

              if (v131 > v131 + 1)
              {
                goto LABEL_228;
              }

              *v131 = 0;
              v132 = (v153 + 4 * v147);
              if (v132 < v153 || (v132 + 1) > v152 || v132 > v132 + 1)
              {
                goto LABEL_228;
              }

              result = 0;
              *v132 = 0;
              goto LABEL_15;
            }

LABEL_136:
            v89 = v83 >> 2;
            v90 = v83 & 3;
            v91 = (v90 << v50) + v48;
            v92 = (v83 >> 2 << v50) + v49;
            v93 = v146 + 2 * v50;
            if (v92 >= 1)
            {
              v94 = 1;
            }

            else
            {
              v94 = v92;
            }

            v95 = v93 + v94;
            if (v91)
            {
              ++v95;
            }

            v96 = *v158;
            if (v95 - v143 + v96 >= 1)
            {
              *v158 = v136;
              v117 = (v153 + 4 * next_coeff_mapped);
              if (v117 < v153)
              {
                goto LABEL_228;
              }

              if ((v117 + 1) > v152)
              {
                goto LABEL_228;
              }

              if (v117 > v117 + 1)
              {
                goto LABEL_228;
              }

              *v117 = 0;
              v118 = (v153 + 4 * v147);
              if (v118 < v153 || (v118 + 1) > v152 || v118 > v118 + 1)
              {
                goto LABEL_228;
              }

              *v118 = 0;
              v39 = v136 - 14;
              *v158 = v136 - 14;
              v116 = v134;
              v115 = v153;
              a7 = v149;
              if (v145 != v134)
              {
                v114 = v143 - (v146 + v136);
LABEL_190:
                *v158 = v39 + v114;
              }

              if (a7)
              {
                v119 = v135;
              }

              else
              {
                v119 = v116;
              }

              v120 = v115;
              do
              {
                if (v120 < v115 || (v120 + 1) > v152 || v120 > v120 + 1)
                {
                  goto LABEL_228;
                }

                if (*v120 >= 1)
                {
                  *v120 -= 2 * get_next_indice_1(a1) * *v120;
                }

                ++v120;
                --v119;
                v115 = v153;
              }

              while (v119);
              v121 = v34 - *v158;
              if (v121 + 1 < v133)
              {
                v122 = (v121 + 1);
              }

              else
              {
                v122 = v133;
              }

              if (v122 >= 1)
              {
                v123 = (v153 + 4 * v135);
                v124 = *(a1 + 5176) / 50;
                for (j = v122; j; --j)
                {
                  if (v124 <= v34)
                  {
                    v130 = 0;
                    *(a1 + 5168) = 1;
                  }

                  else
                  {
                    v126 = (v154 + 2 * v34);
                    v127 = v126 + 1;
                    if (v126 < v154 || v127 > v158 || v126 > v127)
                    {
                      goto LABEL_228;
                    }

                    v130 = *v126;
                  }

                  if (v123 < v115 || (v123 + 1) > v152 || v123 > v123 + 1)
                  {
                    goto LABEL_228;
                  }

                  *v123++ = v130;
                  LOWORD(v34) = v34 - 1;
                  v115 = v153;
                }
              }

              *v158 = v143 + a5;
              return v122;
            }

            v97 = (v153 + 4 * next_coeff_mapped);
            if (v97 < v153)
            {
              goto LABEL_228;
            }

            if ((v97 + 1) > v152)
            {
              goto LABEL_228;
            }

            if (v97 > v97 + 1)
            {
              goto LABEL_228;
            }

            *v97 = v91;
            v98 = (v153 + 4 * v147);
            if (v98 < v153 || (v98 + 1) > v152 || v98 > v98 + 1)
            {
              goto LABEL_228;
            }

            *v98 = v92;
            v36 = v151;
            v37 = v144;
            if (v144 == v151)
            {
              if (v52 > 1)
              {
                v99 = v155 | 0xC;
              }

              else
              {
                v99 = v90 + v89 + (v90 + v89) * v155 + 1;
              }

              v107 = v145;
              a7 = v149;
              *v150 = 16 * (*v150 & 0xF) + v99;
              v37 = v151;
            }

            else
            {
              if (v141)
              {
                v100 = &v164[v144 - 2];
                if (v100 < &v163)
                {
                  goto LABEL_228;
                }

                if (v100 + 1 > v164)
                {
                  goto LABEL_228;
                }

                if (v100 > v100 + 1)
                {
                  goto LABEL_228;
                }

                v101 = &v164[v139 - 2];
                if (v101 < &v163 || v101 + 4 > v164 || v101 > (v101 + 4))
                {
                  goto LABEL_228;
                }

                v102 = *v100;
                v103 = (v91 & 0xFFFFFFFE) + (v91 & 0xFFFFFFFE) * (v91 >> 2);
                v104 = v91 >> 3;
                if (v104 >= 2)
                {
                  v104 = 2;
                }

                v105 = __OFSUB__(v103, 12);
                v106 = v103 - 12;
                if ((v106 < 0) ^ v105 | (v106 == 0))
                {
                  v104 = v106;
                }

                *v101 = v104 + 16 * (v102 & 0xF) + 13;
                v37 = v139;
                v36 = v151;
              }

              if (v140)
              {
                v108 = &v164[v36 - 2];
                if (v108 < &v163)
                {
                  goto LABEL_228;
                }

                if (v108 + 1 > v164)
                {
                  goto LABEL_228;
                }

                if (v108 > v108 + 1)
                {
                  goto LABEL_228;
                }

                v109 = &v164[v151 - 2];
                if (v109 < &v163 || v109 + 4 > v164 || v109 > (v109 + 4))
                {
                  goto LABEL_228;
                }

                v110 = *v108;
                v111 = (v92 & 0xFFFFFFFE) + (v92 & 0xFFFFFFFE) * (v92 >> 2);
                v112 = v92 >> 3;
                if (v112 >= 2)
                {
                  v112 = 2;
                }

                v105 = __OFSUB__(v111, 12);
                v113 = v111 - 12;
                if ((v113 < 0) ^ v105 | (v113 == 0))
                {
                  v112 = v113;
                }

                *v109 = v112 + 16 * (v110 & 0xF) + 13;
                a7 = v149;
                v107 = v145;
                v36 = v151;
              }

              else
              {
                a7 = v149;
                v107 = v145;
              }
            }

            v39 = v96;
            v38 = v107 + 2;
            v40 = v95;
            if (v107 >= v142)
            {
              v114 = -14;
              v115 = v153;
              v116 = v134;
              goto LABEL_190;
            }

            goto LABEL_35;
          }

          v35 -= 0x4000;
          v81 -= 0x4000;
          i -= 0x4000;
        }

        else
        {
          v35 -= 0x8000;
          v81 -= 0x8000;
          i -= 0x8000;
        }
      }

      v81 = (2 * v81) | 1;
      v35 = get_next_indice_1(a1) | (2 * v35);
    }
  }

LABEL_14:
  result = 0;
LABEL_15:
  *(a1 + 5168) = 1;
  return result;
}