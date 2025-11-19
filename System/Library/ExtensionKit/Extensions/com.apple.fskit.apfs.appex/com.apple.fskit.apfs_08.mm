uint64_t CacheDevFuncs(uint64_t result)
{
  if (result)
  {
    return *(result + 40);
  }

  return result;
}

uint64_t CacheFlush(uint64_t a1)
{
  if (*(a1 + 104))
  {
    return 16;
  }

  v3 = *(a1 + 72);
  if (v3)
  {
    for (i = 0; i < v3; ++i)
    {
      v5 = *(*(a1 + 64) + 8 * i);
      if (v5)
      {
        do
        {
          v6 = *(v5 + 40);
          if (v6)
          {
            if ((v6 & 4) != 0)
            {
              v7 = a1 + 184;
            }

            else
            {
              v7 = 0;
            }

            result = sub_1000640B8(a1, v5, v7);
            if (result)
            {
              return result;
            }

            *(v5 + 40) &= ~1u;
            --*(a1 + 84);
          }

          v5 = *(v5 + 16);
        }

        while (v5);
        v3 = *(a1 + 72);
      }
    }
  }

  *(a1 + 88) = 0;
  (*(*(a1 + 40) + 80))(*(a1 + 32), 1);
  return 0;
}

uint64_t CacheReadFinish(uint64_t a1, unint64_t a2, void *a3)
{
  v5 = a2 / *(a1 + 76) * *(a1 + 76) % *(a1 + 72);
  if (a3)
  {
    *a3 = 0;
  }

  v6 = *(*(a1 + 64) + 8 * v5);
  if (!v6)
  {
    return 2;
  }

  while (*(v6 + 48) != a2)
  {
    v6 = *(v6 + 16);
    if (!v6)
    {
      return 2;
    }
  }

  if (!*(v6 + 112))
  {
    v7 = 0;
    if (!a3)
    {
      return v7;
    }

    goto LABEL_14;
  }

  v7 = (*(*(a1 + 40) + 48))(*(a1 + 32));
  if (v7)
  {
    v9 = *(v6 + 56);
    *v9 = *(a1 + 120);
    *(a1 + 120) = v9;
    ++*(a1 + 128);
    *(v6 + 56) = 0;
  }

  free(*(v6 + 112));
  *(v6 + 112) = 0;
  if (a3)
  {
LABEL_14:
    if (!v7)
    {
      *a3 = v6;
    }
  }

  return v7;
}

uint64_t CacheReadRelease(void *a1, uint64_t a2)
{
  v2 = *(a2 + 44);
  if (!v2)
  {
    return 37;
  }

  *(a2 + 44) = v2 - 1;
  sub_100062F70(a1, a2, 0);
  return 0;
}

void *sub_100062F70(void *result, uint64_t *a2, int a3)
{
  v3 = *a2;
  if (*a2)
  {
    v4 = a2[1];
    if (v4)
    {
      *(v3 + 8) = v4;
      *a2[1] = v3;
    }
  }

  if (*(a2 + 11))
  {
    v5 = result[2];
    *a2 = v5;
    v6 = result + 2;
    result = v5;
  }

  else if (a3)
  {
    *a2 = result;
    v6 = result[1];
  }

  else
  {
    v6 = result;
    result = *result;
    *a2 = result;
  }

  a2[1] = v6;
  result[1] = a2;
  *a2[1] = a2;
  return result;
}

uint64_t CacheRead(uint64_t a1, unint64_t a2, unsigned int a3, void *a4, uint64_t a5, int a6, _BYTE *a7, __int128 *a8, uint64_t a9)
{
  v15 = *(a1 + 76);
  if ((a6 & 4) != 0 && v15 != *(a1 + 48))
  {
    return 45;
  }

  v70 = 0;
  v16 = a2 / v15 * v15;
  v17 = (a1 + 144);
  while (1)
  {
    v17 = *v17;
    if (!v17)
    {
      break;
    }

    v18 = v17[3];
    v19 = v18 < a2 || v18 >= a2 + a3;
    if (!v19)
    {
      return 11;
    }
  }

  v65 = (a1 + 144);
  v66 = a2 % v15;
  v21 = sub_100063534(a1, v16, &v70, a5, a6, a7, a8 != 0, a9);
  v20 = v21;
  if (a8 && (*a7 & 1) == 0)
  {
    v26 = v70;
    v27 = *(a1 + 32);
    if (!v70)
    {
      v28 = *(a1 + 72);
      v29 = sub_1000642C4(v16, a5, a9, a6);
      if (!v29)
      {
        return 12;
      }

      v26 = v29;
      v29[3] = 0;
      v30 = *(a1 + 64);
      v31 = *(v30 + 8 * (v16 % v28));
      v29[2] = v31;
      if (v31)
      {
        *(v31 + 24) = v29;
      }

      *(v30 + 8 * (v16 % v28)) = v29;
    }

    v32 = v26[7];
    if (v32)
    {
      if (!v26[14])
      {
        return 14;
      }

      *(a8 + 14) = v32;
      ++*(v26 + 11);
      sub_100062F70(a1, v26, 0);
      return 0;
    }

    v34 = *(a1 + 48);
    v35 = v16 / v34;
    v36 = *(a1 + 56) - 1;
    v19 = v36 >= v16 / v34;
    v37 = v36 - v16 / v34;
    if (!v19)
    {
      return 6;
    }

    v38 = *(a1 + 76) / v34;
    if (v37 < v38)
    {
      v39 = v37 + 1;
    }

    else
    {
      v39 = v38;
    }

    v40 = sub_100064338(*(v27 + 16));
    v26[7] = v40;
    if (v40)
    {
      v41 = malloc_type_malloc(0x68uLL, 0x10A2040BE83C1C8uLL);
      v26[14] = v41;
      if (v41)
      {
        v42 = *a8;
        v43 = a8[2];
        v41[1] = a8[1];
        v41[2] = v43;
        *v41 = v42;
        v44 = a8[3];
        v45 = a8[4];
        v46 = a8[5];
        *(v41 + 12) = *(a8 + 12);
        v41[4] = v45;
        v41[5] = v46;
        v41[3] = v44;
        v47 = *(v26 + 26);
        if ((v47 & 4) != 0 && *(a1 + 76) != *(a1 + 48))
        {
          sub_1000643E8();
        }

        v20 = (*(*(a1 + 40) + 40))(v27, v35, v39, v26[7], a5, 1, v26[14], v26[12], v47, 0);
        if (v20)
        {
          v48 = *(v27 + 16);
          v49 = v26[7];
          *v49 = *(v48 + 120);
          *(v48 + 120) = v49;
          ++*(v48 + 128);
          v26[7] = 0;
          free(v26[14]);
          v26[14] = 0;
        }

        else
        {
          *(a8 + 14) = v26[7];
          ++*(v26 + 11);
          sub_100062F70(a1, v26, 0);
        }

        return v20;
      }

      v60 = *(v27 + 16);
      v61 = v26[7];
      *v61 = *(v60 + 120);
      *(v60 + 120) = v61;
      ++*(v60 + 128);
      v26[7] = 0;
    }

    return 12;
  }

  if (v21)
  {
    return v20;
  }

  v22 = *(a1 + 152);
  if (!v22)
  {
    return 55;
  }

  *(a1 + 152) = *v22;
  *a4 = v22;
  *v22 = 0;
  *(v22 + 8) = 0;
  *(v22 + 16) = 0;
  *(v22 + 24) = a2;
  *(v22 + 32) = a3;
  *(v22 + 40) = 0;
  if (v16 / *(a1 + 76) == (a2 + a3 - 1) / *(a1 + 76))
  {
    v23 = v70;
    *(v22 + 40) = *(v70 + 56) + v66;
    ++*(v23 + 44);
    sub_100062F70(a1, v23, 0);
LABEL_16:
    v24 = v65;
    v25 = *v65;
    if (*v65)
    {
      *v22 = v25;
      *(v22 + 8) = 0;
      v24 = (v25 + 8);
    }

    v20 = 0;
    *v24 = v22;
    ++*(a1 + 160);
    return v20;
  }

  *(v22 + 16) = 0x80000000;
  v69 = 0;
  if (a8)
  {
    *v22 = *(a1 + 152);
    *(a1 + 152) = v22;
    return 45;
  }

  v50 = malloc_type_malloc(a3, 0xF03CC91FuLL);
  *(v22 + 40) = v50;
  if (!v50)
  {
    return 12;
  }

  v51 = *(a1 + 76) - v66;
  v52 = a3 - v51;
  memcpy(v50, (*(v70 + 56) + v66), v51);
  v53 = v70;
  ++*(v70 + 44);
  sub_100062F70(a1, v53, 0);
  if (!v52)
  {
LABEL_54:
    ++*(a1 + 176);
    goto LABEL_16;
  }

  v54 = v16 + *(a1 + 76);
  while (1)
  {
    v55 = sub_100063534(a1, v54, &v70, a5, a6, &v69, 0, 0);
    if (v55)
    {
      break;
    }

    v56 = *(a1 + 76);
    if (v52 >= v56)
    {
      v57 = v56;
    }

    else
    {
      v57 = v52;
    }

    memcpy((*(v22 + 40) + v51), *(v70 + 56), v57);
    v58 = v70;
    ++*(v70 + 44);
    v59 = *(a1 + 76);
    sub_100062F70(a1, v58, 0);
    if ((v69 & 1) == 0)
    {
      *a7 = 0;
    }

    v51 += v57;
    v54 += v59;
    v52 -= v57;
    if (!v52)
    {
      goto LABEL_54;
    }
  }

  v20 = v55;
  free(*(v22 + 40));
  *(v22 + 40) = 0;
  if (!v51)
  {
    v62 = v54 - *(a1 + 76);
    v63 = sub_100063534(a1, v62, &v70, a5, a6, a7, 0, 0);
    if (v63)
    {
      return v63;
    }

    else
    {
      do
      {
        v64 = v70;
        --*(v70 + 44);
        sub_100062F70(a1, v64, 0);
        v20 = sub_100063534(a1, v62, &v70, a5, a6, a7, 0, 0);
      }

      while (!v20);
    }
  }

  return v20;
}

uint64_t sub_100063534(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, int a5, _BYTE *a6, int a7, uint64_t a8)
{
  result = 22;
  if (!a3 || !a6)
  {
    return result;
  }

  v10 = a7;
  v13 = a2 % *(a1 + 72);
  *a6 = 0;
  *a3 = 0;
  v14 = *(a1 + 64);
  v15 = *(v14 + 8 * v13);
  if (v15)
  {
    v16 = *(v14 + 8 * v13);
    while (v16[6] != a2)
    {
      v16 = v16[2];
      if (!v16)
      {
        goto LABEL_7;
      }
    }

    if (v15 != v16)
    {
      v18 = v16[2];
      v19 = v16[3];
      if (v18)
      {
        *(v18 + 24) = v19;
      }

      *(v19 + 16) = v18;
    }

    if (v16[7] && !v16[14])
    {
      *a6 = 1;
    }
  }

  else
  {
LABEL_7:
    if (a7)
    {
      ++*(a1 + 160);
      return 2;
    }

    v17 = sub_1000642C4(a2, a4, a8, a5);
    if (!v17)
    {
      return 12;
    }

    v16 = v17;
    v14 = *(a1 + 64);
  }

  if (*(v14 + 8 * v13) != v16)
  {
    v16[3] = 0;
    v20 = *(v14 + 8 * v13);
    v16[2] = v20;
    if (v20)
    {
      *(v20 + 24) = v16;
    }

    *(v14 + 8 * v13) = v16;
  }

  if (v10)
  {
    goto LABEL_26;
  }

  if (v16[7])
  {
    if (v16[14])
    {
      CacheReadFinish(a1, a2, 0);
    }

    goto LABEL_26;
  }

  v21 = sub_100064338(a1);
  v16[7] = v21;
  if (!v21)
  {
    return 12;
  }

  v22 = *(a1 + 48);
  if (a2 % v22)
  {
    return 22;
  }

  v23 = *(a1 + 76);
  if (v23 % v22)
  {
    return 22;
  }

  if (*(a1 + 56) - 1 < a2 / v22)
  {
    return 6;
  }

  if ((v16[13] & 4) != 0 && v23 != v22)
  {
    sub_100064414();
  }

  v24 = v16[12];
  result = (*(*(a1 + 40) + 40))(*(a1 + 32));
  if (!result)
  {
    ++*(a1 + 168);
LABEL_26:
    result = 0;
    *a3 = v16;
  }

  return result;
}

uint64_t CacheWrite(_DWORD *a1, uint64_t a2, unint64_t a3, int a4, int a5, int a6, uint64_t a7, int a8, uint64_t a9)
{
  v16 = a1[19];
  if ((a8 & 4) != 0 && v16 != a1[12])
  {
    return 45;
  }

  v33 = 0;
  v29 = a2;
  v30 = a3;
  v31 = a4;
  v32 = a6;
  v28 = 0;
  v17 = a1[26];
  if (v17)
  {
    v32 = v17 | a6;
  }

  else if ((a6 & 1) == 0)
  {
    if (a1[22])
    {
      result = CacheFlush(a1);
      if (result)
      {
        return result;
      }
    }
  }

  v18 = a3 / v16 * v16;
  result = sub_100063534(a1, v18, &v33, a7, a8, &v28, 0, a9);
  if (result)
  {
    return result;
  }

  v20 = a3 - v18;
  v21 = a1[19];
  if (a3 - v18 + a4 <= v21)
  {
    result = sub_100063900(a1, &v29, v33, a5, a7);
    if (result)
    {
      return result;
    }

    goto LABEL_22;
  }

  v22 = v21 - v20;
  v31 = v21 - v20;
  result = sub_100063900(a1, &v29, v33, a5, a7);
  if (result)
  {
    return result;
  }

  v23 = a4 - v22;
  if (a4 == v22)
  {
LABEL_22:
    result = 0;
    ++a1[41];
    return result;
  }

  v24 = a1[19];
  v25 = v18 + v24;
  while (1)
  {
    v26 = v23 >= v24 ? v24 : v23;
    sub_100063534(a1, v25, &v33, a7, a8, &v28, 0, 0);
    v27 = *(v33 + 48);
    v31 = v26;
    v29 = a2 + v22;
    v30 = v27;
    result = sub_100063900(a1, &v29, v33, a5, a7);
    if (result)
    {
      return result;
    }

    v22 += v26;
    v24 = a1[19];
    v25 += v24;
    v23 -= v26;
    if (!v23)
    {
      goto LABEL_22;
    }
  }
}

uint64_t sub_100063900(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v10 = *(a2 + 8) % *(a1 + 76);
  if (*(a1 + 104))
  {
    v11 = *(a2 + 16);
    v12 = *(a3 + 64);
    if (v12)
    {
      v13 = *(a3 + 80);
      if (v13)
      {
        v14 = *(a3 + 72);
        if (v13 != v11 || v14 != v10)
        {
          v15 = v14 + v13;
          memcpy(v12, *(a3 + 56), v14);
          memcpy((*(a3 + 64) + v15), (*(a3 + 56) + v15), *(a1 + 76) - v15);
          *(a3 + 72) = 0;
          *(a3 + 80) = 0;
        }
      }
    }

    else
    {
      v16 = sub_100064338(a1);
      *(a3 + 64) = v16;
      if (!v16)
      {
        return 12;
      }

      memcpy(v16 + v10, (*(a3 + 56) + v10), v11);
      *(a3 + 72) = v10;
      v17 = *(a3 + 40);
      *(a3 + 80) = v11;
      *(a3 + 84) = v17;
      *(a3 + 32) = *(a1 + 96);
      *(a1 + 96) = a3;
      ++*(a1 + 92);
    }
  }

  memcpy((*(a3 + 56) + v10), *a2, *(a2 + 16));
  v18 = *(a2 + 8);
  v19 = *(a1 + 76);
  v20 = *(a1 + 48);
  v21 = (v18 % v19) / v20;
  LODWORD(v19) = (v18 + *(a2 + 16) - 1) % v19;
  v22 = a3 + 88;
  v23 = v21 >> 3;
  v24 = v19 / v20;
  v25 = 255 << (v21 & 7);
  if (v21 >> 3 == v24 >> 3)
  {
    v26 = (0xFFu >> (~v24 & 7)) & v25;
  }

  else
  {
    *(v22 + v23) |= v25;
    if (v23 + 1 < v24 >> 3)
    {
      memset((a3 + v23 + 89), 255, ((v24 >> 3) - v23 - 2) + 1);
    }

    v26 = 0xFFu >> (~v24 & 7);
    v23 = v24 >> 3;
  }

  *(v22 + v23) |= v26;
  v27 = *(a2 + 20) & 3;
  if (v27)
  {
    v28 = *(a3 + 40);
    if ((v28 & 1) == 0)
    {
      ++*(a1 + 84);
    }

    *(a3 + 40) = v28 | v27;
    goto LABEL_18;
  }

  result = sub_1000640B8(a1, a3, a5);
  if (!result)
  {
LABEL_18:
    sub_100062F70(a1, a3, a4);
    return 0;
  }

  return result;
}

uint64_t CacheTransactionStart(uint64_t a1)
{
  if (*(a1 + 104))
  {
    return 37;
  }

  result = 0;
  *(a1 + 104) = 1;
  ++*(a1 + 88);
  return result;
}

uint64_t CacheTransactionEnd(uint64_t a1)
{
  if (!*(a1 + 104))
  {
    return 37;
  }

  v1 = *(a1 + 96);
  if (v1)
  {
    v2 = *(a1 + 128);
    v3 = *(a1 + 120);
    do
    {
      v4 = *(v1 + 64);
      *v4 = v3;
      *(a1 + 120) = v4;
      ++v2;
      *(v1 + 64) = 0;
      *(v1 + 84) = 0;
      v1 = *(v1 + 32);
      v3 = v4;
    }

    while (v1);
    *(a1 + 128) = v2;
  }

  *(a1 + 100) = 0;
  *(a1 + 92) = 0;
  v5 = *(a1 + 80);
  v6 = v5 - *(a1 + 84);
  v7 = v5 >> 2;
  v8 = v6 >= 0x101 && v6 >= v7;
  if (v8 && *(a1 + 88) < 0x400u)
  {
    return 0;
  }

  result = CacheFlush(a1);
  if (!result)
  {
    return 84;
  }

  return result;
}

uint64_t CacheTransactionAbort(uint64_t a1)
{
  if (!*(a1 + 104))
  {
    return 22;
  }

  v2 = *(a1 + 96);
  if (v2)
  {
    v3 = -1;
    while (1)
    {
      v4 = *(v2 + 64);
      if (!v4)
      {
        return 14;
      }

      if (++v3 >= *(a1 + 92))
      {
        return 14;
      }

      v5 = *(v2 + 80);
      v6 = *(v2 + 56);
      if (v5)
      {
        memcpy(v6 + *(v2 + 72), (v4 + *(v2 + 72)), v5);
        v6 = *(v2 + 64);
      }

      else
      {
        *(v2 + 56) = v4;
      }

      *v6 = *(a1 + 120);
      *(a1 + 120) = v6;
      ++*(a1 + 128);
      *(v2 + 64) = 0;
      v7 = *(v2 + 84);
      *(v2 + 40) = v7;
      *(v2 + 84) = 0;
      if ((v7 & 1) == 0)
      {
        --*(a1 + 84);
      }

      v2 = *(v2 + 32);
      if (!v2)
      {
        goto LABEL_12;
      }
    }
  }

  else
  {
LABEL_12:
    result = 0;
    *(a1 + 100) = 0;
    *(a1 + 92) = 0;
    --*(a1 + 88);
  }

  return result;
}

double CacheRelease(uint64_t a1, uint64_t *a2, int a3)
{
  v20 = 0;
  v6 = a2[3];
  v7 = v6 / *(a1 + 76) * *(a1 + 76);
  v19 = 0;
  if (!sub_100063534(a1, v7, &v20, 0, 0, &v19, 0, 0))
  {
    if ((a2[2] & 0x80000000) != 0)
    {
      v10 = *(a2 + 8) + v6 - v7 - *(a1 + 76);
      v11 = v20;
      if ((*(v20 + 40) & 2) == 0)
      {
        --*(v20 + 44);
      }

      sub_100062F70(a1, v11, a3);
      if (v10)
      {
        v12 = v7 + *(a1 + 76);
        do
        {
          sub_100063534(a1, v12, &v20, 0, 0, &v19, 0, 0);
          v13 = *(a1 + 76);
          if (v10 >= v13)
          {
            v14 = v10 - v13;
          }

          else
          {
            v14 = 0;
          }

          v15 = v20;
          if ((*(v20 + 40) & 2) == 0)
          {
            --*(v20 + 44);
          }

          sub_100062F70(a1, v15, a3);
          v12 += *(a1 + 76);
          v16 = v10 > v13;
          v10 = v14;
        }

        while (v16);
      }

      free(a2[5]);
    }

    else
    {
      v9 = v20;
      if ((*(v20 + 40) & 2) == 0)
      {
        --*(v20 + 44);
      }

      sub_100062F70(a1, v9, a3);
    }

    v17 = *a2;
    v18 = a2[1];
    if (*a2)
    {
      *(v17 + 8) = v18;
    }

    if (v18)
    {
      *v18 = v17;
    }

    if (*(a1 + 144) == a2)
    {
      *(a1 + 144) = *a2;
    }

    result = 0.0;
    *(a2 + 1) = 0u;
    *(a2 + 2) = 0u;
    *a2 = 0u;
    *a2 = *(a1 + 152);
    *(a1 + 152) = a2;
  }

  return result;
}

uint64_t CacheRemove(uint64_t a1, _DWORD *a2)
{
  if (a2[11])
  {
    return 16;
  }

  v4 = *(a2 + 2);
  v5 = *(a2 + 3);
  if (v4)
  {
    *(v4 + 24) = v5;
  }

  if (v5)
  {
    v6 = (v5 + 16);
  }

  else
  {
    v6 = (*(a1 + 64) + 8 * (*(a2 + 6) % *(a1 + 72)));
  }

  *v6 = v4;
  if (!*(a2 + 7) || (result = sub_100063F30(a1, a2), !result))
  {
    *(a2 + 14) = 0;
    *(a2 + 5) = 0u;
    *(a2 + 6) = 0u;
    *(a2 + 3) = 0u;
    *(a2 + 4) = 0u;
    *(a2 + 1) = 0u;
    *(a2 + 2) = 0u;
    *a2 = 0u;
    free(a2);
    return 0;
  }

  return result;
}

uint64_t sub_100063F30(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  if ((v4 & 4) != 0)
  {
    v5 = a1 + 184;
  }

  else
  {
    v5 = 0;
  }

  if ((v4 & 1) != 0 || *(a2 + 64))
  {
    if (*(a1 + 104))
    {
      return 16;
    }

    if (*(a1 + 88))
    {
      result = CacheFlush(a1);
      if (result)
      {
        return result;
      }

      v4 = *(a2 + 40);
    }

    else
    {
      result = sub_1000640B8(a1, a2, v5);
      if (result)
      {
        return result;
      }

      v4 = *(a2 + 40) & 0xFFFFFFFE;
      *(a2 + 40) = v4;
      --*(a1 + 84);
    }
  }

  result = 0;
  if ((v4 & 2) == 0)
  {
    v7 = *(a2 + 56);
    *v7 = *(a1 + 120);
    *(a1 + 120) = v7;
    ++*(a1 + 128);
  }

  return result;
}

uint64_t CacheEvict(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v11 = a2;
  v4 = *(a1 + 76);
  if (a2)
  {
    v5 = *(a1 + 76);
  }

  else
  {
    v5 = a3 % v4 + a4;
  }

  if (!v5)
  {
    return 0;
  }

  v10 = 0;
  v7 = a3 - a3 % v4;
  while (!a2)
  {
    sub_100063534(a1, v7, &v11, 0, 0, &v10, 1, 0);
    a2 = v11;
    if (v11)
    {
      break;
    }

LABEL_13:
    a2 = 0;
    v11 = 0;
    v9 = *(a1 + 76);
    v7 += v9;
    v5 -= v9;
    if (!v5)
    {
      return 0;
    }
  }

  if (!*(a2 + 44))
  {
    if (*(a2 + 56))
    {
      result = sub_100063F30(a1, a2);
      if (result)
      {
        return result;
      }

      a2 = v11;
    }

    *(a2 + 56) = 0;
    goto LABEL_13;
  }

  return 16;
}

uint64_t sub_1000640B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 48);
  v4 = *(a1 + 48);
  if (v3 % v4)
  {
    return 22;
  }

  v6 = *(a1 + 76);
  v7 = v6 / v4;
  if (v6 % v4)
  {
    return 22;
  }

  result = 0;
  if (v7 >= 1)
  {
    v9 = (v7 - 1) >> 3;
    if ((v9 & 0x80000000) == 0)
    {
      v12 = *(a2 + 56);
      v13 = (a2 + 88);
      do
      {
        v14 = 0;
        v15 = (v9 + 1);
        v16 = v13;
        while (1)
        {
          v18 = *v16++;
          v17 = v18;
          if (v18)
          {
            break;
          }

          v14 += 8;
          if (!--v15)
          {
            return 0;
          }
        }

        if ((v17 & 1) == 0)
        {
          do
          {
            v19 = v17;
            ++v14;
            v17 >>= 1;
          }

          while ((v19 & 2) == 0);
        }

        result = 0;
        if (v14 >= v7 || v14 == -1)
        {
          break;
        }

        LODWORD(v20) = 0;
        do
        {
          v20 = (v20 + 1);
        }

        while (((v13[(v20 + v14) >> 3] >> ((v20 + v14) & 7)) & 1) != 0);
        v21 = v14 >> 3;
        v22 = v14 + v20 - 1;
        v23 = v22 >> 3;
        v24 = 0xFFu >> (8 - (v14 & 7));
        if (v22 >> 3 == v14 >> 3)
        {
          v25 = (510 << (v22 & 7)) | v24;
          v23 = v14 >> 3;
        }

        else
        {
          v26 = &v13[v21];
          *v26 &= v24;
          if (v21 + 1 < v23)
          {
            bzero(v26 + 1, (v23 - v21 - 2) + 1);
          }

          v25 = 510 << (v22 & 7);
        }

        v13[v23] &= v25;
        v27 = *(a1 + 48);
        if ((*(a2 + 104) & 4) != 0 && *(a1 + 76) != v27)
        {
          sub_100064440();
        }

        result = (*(*(a1 + 40) + 72))(*(a1 + 32), (v3 + (v27 * v14)) / v27, v20, v12 + (v27 * v14), a3, *(a2 + 96));
        if (result)
        {
          break;
        }

        ++*(a1 + 172);
        v7 = *(a1 + 76) / *(a1 + 48);
        if (v7 < 1)
        {
          break;
        }

        v9 = (v7 - 1) >> 3;
      }

      while ((v9 & 0x80000000) == 0);
    }
  }

  return result;
}

void *sub_1000642C4(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  result = malloc_type_calloc(0x78uLL, 1uLL, 0x10A0040F6E85490uLL);
  if (result)
  {
    result[6] = a1;
    if (a2)
    {
      *(result + 10) |= 4u;
    }

    result[12] = a3;
    *(result + 26) = a4 & 0xFFFEFFFF;
  }

  return result;
}

void *sub_100064338(uint64_t a1)
{
  result = *(a1 + 120);
  if (result && *(a1 + 128))
  {
    goto LABEL_3;
  }

  v4 = *(a1 + 8);
  if (v4 == a1)
  {
    return 0;
  }

  while (1)
  {
    v6 = *v4;
    v5 = v4[1];
    *(v6 + 8) = v5;
    *v5 = v6;
    if ((v4[5] & 1) == 0 && !*(v4 + 11))
    {
      break;
    }

    v7 = *(a1 + 16);
    *v4 = v7;
    v4[1] = a1 + 16;
    *(v7 + 8) = v4;
    *v4[1] = v4;
    v4 = *(a1 + 8);
    if (v4 == a1)
    {
      return 0;
    }
  }

  CacheRemove(a1, v4);
  result = *(a1 + 120);
  if (result)
  {
LABEL_3:
    v3 = *(a1 + 128);
    if (v3)
    {
      *(a1 + 120) = *result;
      *(a1 + 128) = v3 - 1;
      return result;
    }

    return 0;
  }

  return result;
}

uint64_t fsck_tree_node_read(uint64_t **a1, void **a2, int a3, uint64_t a4, uint64_t a5)
{
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v8 = 22;
  if (a3 <= 0x7FFFFFF)
  {
    if (a3 == 0x80000000)
    {
      v9 = _xp_lookup_obj(*a1, a5, 0, 0, &v23);
    }

    else
    {
      if (a3)
      {
        goto LABEL_17;
      }

      v9 = _omap_lookup_obj(*a1, a1[1], a5, a4, &v23);
    }

    v8 = v9;
    if (!v9)
    {
      v12 = v24;
      v13 = *(a1 + 6);
      goto LABEL_14;
    }

LABEL_17:
    v14 = *a2;
    if (!*a2)
    {
      v14 = malloc_type_malloc(*(a1 + 6), 0x6FE5E56FuLL);
      *a2 = v14;
      if (!v14)
      {
        return 12;
      }
    }

    if (!v8)
    {
      v15 = **a1;
      if ((v24 & 0x400000000) != 0)
      {
        if (BYTE4(v24) >= 0x40u)
        {
          sub_100064BB4();
        }

        v19 = (HIDWORD(v24) >> 8) & 7;
        if (v19 >= 2)
        {
          sub_100064B88();
        }

        v20 = a1[1];
        v21 = v19 == 1;
        if (v19 == 1)
        {
          v17 = 4;
        }

        else
        {
          v17 = 0;
        }

        if (v21)
        {
          v18 = a5 ^ HIDWORD(v25) | a5 & 0xFFFFFFFF00000000 ^ (v25 << 32);
        }

        else
        {
          v18 = 0;
        }

        if (v20)
        {
          if (v20[(BYTE4(v24) >> 5) + 3])
          {
            v15 = v20[(BYTE4(v24) >> 5) + 3];
            v16 = &v20[12 * (BYTE4(v24) >> 5) + 104];
          }

          else
          {
            v16 = 0;
          }
        }

        else
        {
          v16 = 0;
        }
      }

      else
      {
        v16 = 0;
        v17 = 0;
        v18 = 0;
      }

      v22 = *((*a1)[1] + 36);
      if (v24 % v22)
      {
        sub_100064BE0();
      }

      return dev_read_extended(v15, v23, v24 / v22, v14, v16, 0, 0, v18, v17);
    }

    return v8;
  }

  if (a3 == 0x40000000)
  {
    LODWORD(v24) = *(a1 + 6);
    v13 = v24;
    v23 = a5;
    v12 = v24;
LABEL_14:
    if (v12 == v13)
    {
      v8 = 0;
    }

    else
    {
      v8 = 22;
    }

    goto LABEL_17;
  }

  if (a3 != 0x8000000)
  {
    goto LABEL_17;
  }

  v10 = *(a1 + 6);

  return memory_storage_read(v10, a5, a2);
}

uint64_t fsck_tree_node_write(uint64_t **a1, void *__src, int a3, uint64_t a4, uint64_t a5)
{
  v19 = 0;
  v20 = 0;
  v21 = 0;
  result = 22;
  if (a3 <= 0x7FFFFFF)
  {
    if (a3 == 0x80000000)
    {
      result = _xp_lookup_obj(*a1, a5, 0, 0, &v19);
      if (result)
      {
        return result;
      }
    }

    else
    {
      if (a3)
      {
        return result;
      }

      result = _omap_lookup_obj(*a1, a1[1], a5, a4, &v19);
      if (result)
      {
        return result;
      }
    }

    v10 = *(a1 + 6);
    if (v20 != v10)
    {
      return 22;
    }

    goto LABEL_15;
  }

  if (a3 == 0x40000000)
  {
    v10 = *(a1 + 6);
    LODWORD(v20) = v10;
    v19 = a5;
LABEL_15:
    v11 = **a1;
    if ((v20 & 0x400000000) != 0)
    {
      if (BYTE4(v20) >= 0x40u)
      {
        sub_100064BB4();
      }

      v15 = (HIDWORD(v20) >> 8) & 7;
      if (v15 >= 2)
      {
        sub_100064B88();
      }

      v16 = a1[1];
      if (v15 == 1)
      {
        v13 = 4;
      }

      else
      {
        v13 = 0;
      }

      if (v15 == 1)
      {
        v14 = a5 ^ HIDWORD(v21) | a5 & 0xFFFFFFFF00000000 ^ (v21 << 32);
      }

      else
      {
        v14 = 0;
      }

      if (v16)
      {
        if (v16[(BYTE4(v20) >> 5) + 3])
        {
          v11 = v16[(BYTE4(v20) >> 5) + 3];
          v12 = &v16[12 * (BYTE4(v20) >> 5) + 104];
        }

        else
        {
          v12 = 0;
        }
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
      v13 = 0;
      v14 = 0;
    }

    v17 = *((*a1)[1] + 36);
    if (v10 % v17)
    {
      sub_100064C0C();
    }

    result = dev_write_extended(v11, v19, v10 / v17, __src, v12, v14, v13);
    if (!result)
    {
      v18 = a1[1];
      if (v18)
      {
        result = 0;
        *(v18 + 12) = 1;
      }

      else
      {
        return 0;
      }
    }

    return result;
  }

  if (a3 == 0x8000000)
  {
    v9 = *(a1 + 6);

    return memory_storage_write(v9, a5, __src);
  }

  return result;
}

uint64_t fsck_tree_node_allocate(uint64_t **a1, void *a2, int a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = a5;
  v30 = 0uLL;
  v31 = 0;
  if (a3 && a5)
  {
    return 22;
  }

  if (a3 && a3 != 0x40000000)
  {
    if (a3 != 0x8000000)
    {
      return 45;
    }

    result = memory_storage_create(*(a1 + 6), &v30, a2);
    if (!result)
    {
      *a6 = v30;
    }

    return result;
  }

  v13 = *a1;
  if (!(*a1)[3])
  {
    return 22;
  }

  v14 = *(a1 + 6);
  v15 = *(v13[1] + 36);
  v16 = v14 / v15;
  if (v14 % v15)
  {
    sub_100064C38();
  }

  v17 = a1[1];
  if (v17)
  {
    v18 = (*(v17[2].i64[1] + 264) & 1) == 0;
    if ((*(v17[2].i64[1] + 264) & 1) == 0 && !a3)
    {
      result = fsck_allocate_blocks(v13, v17, 0, v16, &v30);
      if (result)
      {
        return result;
      }

      v18 = 1;
      goto LABEL_29;
    }
  }

  else
  {
    v18 = 0;
  }

  if (*(a1 + 12) == 11)
  {
    v19 = 2;
  }

  else
  {
    v19 = 1;
  }

  result = fsck_allocate_blocks(v13, v17, v19, v16, &v30);
  if (result)
  {
    return result;
  }

  if (a3)
  {
    v7 = v30;
LABEL_25:
    *a6 = v7;
    if (!a2)
    {
      return 0;
    }

    if (*a2)
    {
      return 0;
    }

    v20 = malloc_type_malloc(*(a1 + 6), 0x9583098AuLL);
    *a2 = v20;
    if (v20)
    {
      return 0;
    }

    else
    {
      return 12;
    }
  }

LABEL_29:
  if (!v7)
  {
    v21 = (*a1)[1];
    v7 = *(v21 + 88);
    *(v21 + 88) = v7 + 1;
  }

  DWORD2(v30) = *(a1 + 6);
  v22 = a1[1];
  if (v18)
  {
    v23 = HIDWORD(v30) | 4;
    v24 = v22[9];
    if (v24 && (*(v24 + 32) & 0x10) != 0)
    {
      v23 = HIDWORD(v30) | 0x14;
    }

    HIDWORD(v30) = v23 & 0xFFFFFF1F | (32 * (*(v22[5] + 1096) != 0));
  }

  v25 = *a1;
  v28 = v30;
  v29 = v31;
  result = _omap_insert_obj(v25, v22, v7, a4, &v28);
  if (!result)
  {
    result = write_nx_superblock(*a1, v26, v27);
    if (!result)
    {
      goto LABEL_25;
    }
  }

  return result;
}

uint64_t fsck_tree_node_deallocate(uint64_t a1, int a2, unint64_t a3, uint64_t a4)
{
  v4 = a4;
  memset(v19, 0, sizeof(v19));
  if (a2 != 0x8000000)
  {
    if ((a2 | 0x40000000) != 0x40000000)
    {
      return 45;
    }

    v8 = *a1;
    if (!*(*a1 + 24))
    {
      return 22;
    }

    v9 = *(a1 + 24);
    v10 = *(v8[1] + 36);
    v11 = v9 / v10;
    if (v9 % v10)
    {
      sub_100064C64();
    }

    if (a2)
    {
      v19[0] = a4;
    }

    else
    {
      LODWORD(result) = _omap_delete_obj(v8, *(a1 + 8), a4, a3, v19);
      if (result == 2)
      {
        fsck_printf_warn("tried to remove oid %llu from the omap but it wasn't there\n", v12, v13, v14, v15, v16, v17, v18, v4);
        return 0;
      }

      if (result)
      {
        if (result == 17)
        {
          return 0;
        }

        else
        {
          return result;
        }
      }

      v8 = *a1;
      v4 = v19[0];
    }

    return fsck_free_range(v8, *(a1 + 8), v4, v11);
  }

  v6 = *(a1 + 24);

  return memory_storage_destroy(v6, a4);
}

uint64_t dir_register(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!qword_100103A88 || (result = sub_100064CD0(a1, a2, a3, a5, a5, a6, a7, a8), !result))
  {
    result = 0;
    qword_100103A88 = a4;
  }

  return result;
}

uint64_t sub_100064CD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = 0;
  v10 = qword_100103A90;
  v9 = HIDWORD(qword_100103A90);
  v11 = *(a2 + 40);
  if ((*(v11 + 57) & 2) != 0)
  {
    v12 = 1;
  }

  else
  {
    v12 = (*(v11 + 48) >> 1) & 1;
  }

  if (unk_100103A9C == dword_100103A98)
  {
    v13 = 0;
  }

  else
  {
    v13 = v12;
  }

  if (HIDWORD(qword_100103A90) != qword_100103A90 || v13 != 0)
  {
    result = is_file_in_purgatory(a1, a2, a3, qword_100103A88, &v29);
    if (result)
    {
      return result;
    }

    if (v29)
    {
      goto LABEL_17;
    }
  }

  v16 = qword_100103A88 & 0xFFFFFFFFFFFFFFFLL | 0x3000000000000000;
  if (v9 == v10)
  {
    goto LABEL_20;
  }

  fsck_printf_err("directory valence check: directory (oid 0x%llx): nchildren (%d) does not match drec count (%d)\n", a2, a3, a4, a5, a6, a7, a8, qword_100103A88);
  fsck_fail_func(0x330, 92);
  *v28 = 0;
  v26 = 0u;
  v27 = 0u;
  v25 = 0u;
  *&v28[8] = qword_100103A90;
  memset(&v28[12], 0, 32);
  result = sub_1000650C0(a4, 12, v16, &v25, v17, v18, v19, v20);
  if (!result)
  {
LABEL_20:
    if (!v13)
    {
      goto LABEL_17;
    }

    fsck_printf_err("directory valence check: directory (oid 0x%llx): nlink (%d) does not match subdirectory count (%d)\n", a2, a3, a4, a5, a6, a7, a8, qword_100103A88);
    fsck_fail_func(0x4B7, 92);
    memset(v28, 0, 36);
    v26 = 0u;
    v27 = 0u;
    v25 = 0u;
    *&v28[36] = dword_100103A98;
    result = sub_1000650C0(a4, 21, v16, &v25, v21, v22, v23, v24);
    if (!result)
    {
LABEL_17:
      result = 0;
      qword_100103A90 = 0;
      *&dword_100103A98 = 0;
      qword_100103A88 = 0;
    }
  }

  return result;
}

uint64_t dir_register_nchildren(uint64_t result, int a2)
{
  if (qword_100103A88 != result)
  {
    sub_100065128();
  }

  LODWORD(qword_100103A90) = 0;
  HIDWORD(qword_100103A90) = a2;
  return result;
}

uint64_t dir_register_nlink(uint64_t result, int a2)
{
  if (qword_100103A88 != result)
  {
    sub_100065154();
  }

  dword_100103A98 = 0;
  unk_100103A9C = a2;
  return result;
}

uint64_t dir_increment_drec_count(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a4 & 0xFFFFFFFFFFFFFFFLL;
  if (v8 == 1 || v8 == 7)
  {
    return 0;
  }

  if (v8 == qword_100103A88)
  {
    v12 = __OFADD__(qword_100103A90, 1);
    v13 = qword_100103A90 + 1;
    LODWORD(qword_100103A90) = qword_100103A90 + 1;
    if (v12)
    {
      fsck_printf_warn("drec count overflow (%d)\n", a2, a3, a4, a5, a6, a7, a8, v13);
      fsck_fail_func(0x4B8, 92);
      LODWORD(qword_100103A90) = 0x7FFFFFFF;
    }

    if ((*(a6 + 16) & 0xF) == 4)
    {
      v12 = __OFADD__(dword_100103A98, 1);
      v14 = ++dword_100103A98;
      if (v12)
      {
        fsck_printf_warn("subdir count overflow (%d)\n", a2, a3, a4, a5, a6, a7, a8, v14);
        fsck_fail_func(0x4B9, 92);
        dword_100103A98 = 0x7FFFFFFF;
      }
    }

    return 0;
  }

  result = sub_100064CD0(a1, a2, a3, a8, a5, a6, a7, a8);
  if (!result)
  {
    fsck_printf_warn("directory valence check: directory (oid 0x%llx): orphan directory record\n", v19, v20, v21, v22, v23, v24, v25, v8);
    fsck_fail_func(0x34C, -8);
    result = sub_100065000(a8, 0, 0, a4, a5, a6, a7, v26);
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100065000(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, _BYTE *a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    return fsck_repairs_add(a1, 7, a2, a3, 0, a4, a5, a6, a7);
  }

  return print_snapshot_warning(0, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t dir_finalize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (qword_100103A88)
  {
    return sub_100064CD0(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000650C0(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a3;
  if (a1)
  {
    return fsck_repairs_add(a1, 7, 1, a2, 1, &v9, 8u, a4, 0x5Cu);
  }

  return print_snapshot_warning(0, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t print_snapshot_warning(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((byte_100103AA0 & 1) == 0)
  {
    fsck_printf_warn("snapshot fsroot / file key rolling / doc-id / clone group tree corruptions are not repaired; they'll go away once the snapshot is deleted\n", a2, a3, a4, a5, a6, a7, a8, v9);
    byte_100103AA0 = 1;
  }

  return 0;
}

uint64_t fsck_repairs_init(uint64_t a1, uint64_t a2)
{
  result = tree_init_ext(a1, 0, a2, 0x8000000, 2, 0, 0, 4096, 0, 0, 0, 0, sub_100065250);
  if (!result)
  {

    return tree_create(a1, 0, 66);
  }

  return result;
}

uint64_t sub_100065250(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, unsigned int a5, int *a6)
{
  result = 22;
  if (a3 < 2 || a5 < 2)
  {
    return result;
  }

  result = sub_1000661BC(a2, a3, a4, a5);
  *a6 = result;
  if (result)
  {
    return 0;
  }

  v13 = *a2 & 0xF;
  if (v13 > 4)
  {
    if ((*a2 & 0xFu) <= 7)
    {
      if (v13 - 6 >= 2)
      {
        if (v13 != 5)
        {
          return result;
        }

        result = 22;
        if (a3 != 18 || a5 != 18)
        {
          return result;
        }

        v14 = *(a2 + 2);
        v15 = *(a4 + 2);
        if (v14 < v15)
        {
          result = 0;
          v16 = -1;
LABEL_53:
          *a6 = v16;
          return result;
        }

        if (v14 > v15)
        {
          result = 0;
          v16 = 1;
          goto LABEL_53;
        }

        v19 = (a2 + 10);
        v20 = (a4 + 10);
        v21 = a1;
        v17 = 8;
        v18 = 8;
LABEL_32:

        return jkey_compare(v21, v19, v17, v20, v18, a6);
      }

LABEL_29:
      result = 22;
      if (a3 < 0xD || a5 < 0xD)
      {
        return result;
      }

      v17 = a3 - 5;
      v18 = a5 - 5;
      v19 = (a2 + 5);
      v20 = (a4 + 5);
      v21 = a1;
      goto LABEL_32;
    }

    if (v13 != 8)
    {
      if (v13 == 9)
      {
        result = 22;
        if (a3 == 6 && a5 == 6)
        {

          return uint32_key_compare(a1, (a2 + 2), 4, (a4 + 2), 4, a6);
        }
      }

      else if (v13 == 10)
      {
        result = 22;
        if (a3 == 27 && a5 == 27)
        {

          return clonegroup_tree_compare(a1, (a2 + 2), 0x19uLL, (a4 + 2), 0x19u, a6);
        }
      }

      return result;
    }

    result = 22;
    if (a3 != 10 || a5 != 10)
    {
      return result;
    }

    v26 = *(a2 + 2);
    v27 = *(a4 + 2);
    v28 = v26;
    v24 = &v28;
    v25 = &v27;
    return uint64_key_compare(a1, v24, 8, v25, 8, a6);
  }

  if ((*a2 & 0xFu) > 2)
  {
    if (v13 != 3)
    {
      if (v13 != 4)
      {
        return result;
      }

      goto LABEL_29;
    }

    result = 22;
    if (a3 != 10 || a5 != 10)
    {
      return result;
    }

    v23 = *(a2 + 2);
    v29 = *(a4 + 2);
    v30 = v23;
    v24 = &v30;
    v25 = &v29;
    return uint64_key_compare(a1, v24, 8, v25, 8, a6);
  }

  if (v13 >= 2)
  {
    result = 22;
    if (a3 == 18 && a5 == 18)
    {
      v22 = *(a2 + 2);
      v31 = *(a4 + 2);
      v32 = v22;
      return omap_key_compare(a1, &v32, 16, &v31, 16, a6);
    }
  }

  else
  {
    result = 22;
    if (a3 == 18 && a5 == 18)
    {
      v34 = *(a2 + 2);
      v33 = *(a4 + 2);
      return spaceman_free_tree_key_compare(a1, &v34, 16, &v33, 16, a6);
    }
  }

  return result;
}

uint64_t fsck_repairs_add(uint64_t a1, int a2, int a3, unsigned int a4, char a5, char *a6, unsigned int a7, _BYTE *a8, unsigned int a9)
{
  if (a5)
  {
    v13 = 2048;
  }

  else
  {
    v13 = 0;
    result = 0;
    v15 = dword_100103AA4++;
    if (v15 > 999998)
    {
      return result;
    }
  }

  v16 = a9;
  v17 = a2 & 0xF | (16 * (a3 & 3)) & 0x3F | ((a4 & 0x1F) << 6);
  if (!a3 && (a2 > 6 || ((1 << a2) & 0x5C) == 0))
  {
    a8 = 0;
    v16 = 0;
  }

  v18 = v17 | v13;
  result = 22;
  if (a2 > 4)
  {
    if (a2 > 7)
    {
      if (a2 == 8)
      {
        if (a7 == 8 && v16 == 24)
        {
          v32 = v17 | v13;
          v33 = *a6;
          v19 = &v32;
          v20 = a1;
          v21 = 10;
          v23 = a8;
          v24 = 24;
          return tree_insert(v20, 0, v19, v21, v23, v24);
        }
      }

      else if (a2 == 9)
      {
        if (a7 == 4 && 8 * (a3 != 0) == v16)
        {
          v30 = v17 | v13;
          v31 = *a6;
          v19 = &v30;
          v20 = a1;
          v21 = 6;
          goto LABEL_44;
        }
      }

      else if (a2 == 10 && a7 >= 9 && (!a8 || v16 >= 0xC))
      {
        v28 = v17 | v13;
        *v29 = *a6;
        *&v29[9] = *(a6 + 9);
        v19 = &v28;
        v20 = a1;
        v21 = 27;
        goto LABEL_44;
      }

      return result;
    }

    if ((a2 - 6) >= 2)
    {
      if (a2 == 5 && a7 == 16)
      {
        v34 = v17 | v13;
        v35 = *a6;
        v19 = &v34;
LABEL_18:
        v20 = a1;
        v21 = 18;
LABEL_44:
        v23 = a8;
        v24 = v16;
        return tree_insert(v20, 0, v19, v21, v23, v24);
      }

      return result;
    }

LABEL_27:
    if (a7 - 833 < 0xFFFFFCC7)
    {
      return result;
    }

    if (a3 == 1)
    {
      v22 = 0;
      if (a4 <= 0xF && ((1 << a4) & 0x8140) != 0)
      {
        if (!v16)
        {
          return result;
        }

        v22 = *a8;
      }
    }

    else
    {
      v22 = 0;
    }

    v25 = malloc_type_malloc(a7 + 5, 0x99220D33uLL);
    if (!v25)
    {
      return 12;
    }

    v26 = v25;
    *v25 = v18;
    *(v25 + 1) = a7;
    v25[4] = v22;
    memcpy(v25 + 5, a6, a7);
    v27 = tree_insert(a1, 0, v26, a7 + 5, a8, v16);
    free(v26);
    return v27;
  }

  if (a2 > 2)
  {
    if (a2 != 3)
    {
      goto LABEL_27;
    }

    if (a7 != 8 || v16 != 16)
    {
      return result;
    }

    v36 = v17 | v13;
    v37 = *a6;
    v19 = &v36;
    v20 = a1;
    v21 = 10;
LABEL_40:
    v23 = a8;
    v24 = 16;
    return tree_insert(v20, 0, v19, v21, v23, v24);
  }

  if (a2 >= 2)
  {
    if (a2 != 2 || a7 != 16 || v16 != 16)
    {
      return result;
    }

    v38 = v17 | v13;
    v39 = *a6;
    v19 = &v38;
    v20 = a1;
    v21 = 18;
    goto LABEL_40;
  }

  if (a7 == 16 && 8 * (a3 != 0) == v16)
  {
    v40 = v17 | v13;
    v41 = *a6;
    v19 = &v40;
    goto LABEL_18;
  }

  return result;
}

uint64_t fsck_repairs_perform(uint64_t a1, uint64_t *a2, uint64_t a3, int a4, void *a5, void *a6, void *a7, void *a8)
{
  v80 = 0u;
  v79 = 0u;
  *&v78[8] = 0u;
  v77[0] = a2;
  v77[1] = a3;
  if (a4)
  {
    v15 = sub_100065CF8;
  }

  else
  {
    v15 = sub_1000661A0;
  }

  *(&v79 + 1) = 0;
  *&v80 = 0;
  v82 = 0;
  v83 = 0;
  v81 = 0;
  *v78 = -1;
  *&v78[5] = -1;
  v16 = tree_key_count(a1, 0, &v80 + 1);
  if (v16)
  {
    v17 = v16;
    v18 = strerror(v16);
    fsck_printf_err("unable to access the tree repairs structure: %s\n", v19, v20, v21, v22, v23, v24, v25, v18);
    fsck_fail_func(0x2C4, v17);
    goto LABEL_6;
  }

  if (!*(&v80 + 1))
  {
    v17 = 0;
    goto LABEL_6;
  }

  v85 = 0;
  memset(v84, 0, sizeof(v84));
  v27 = malloc_type_calloc(1uLL, 0x345uLL, 0xA70541A5uLL);
  v28 = malloc_type_calloc(1uLL, 0xEE0uLL, 0x4AAE9F65uLL);
  v75 = v28;
  v76 = v27;
  if (!v27 || (v36 = v28) == 0)
  {
    fsck_printf_err("unable to allocate memory for tree repairs\n", v29, v30, v31, v32, v33, v34, v35, v74);
    v17 = 12;
    v48 = 701;
    v49 = 12;
LABEL_27:
    fsck_fail_func(v48, v49);
    goto LABEL_36;
  }

  if (a3)
  {
    v37 = *(a3 + 40);
    if (((*(v37 + 264) & 1) == 0 || *(v37 + 976)) && *(a3 + 8) == 1)
    {
      v38 = volume_crypto_open(a3, a2, 2);
      v36 = v75;
      if (v38)
      {
        v17 = v38;
        v39 = strerror(v38);
        fsck_printf_err("unable to open the volume for repairs: %s\n", v40, v41, v42, v43, v44, v45, v46, v39);
        fsck_fail_func(0x2C5, v17);
LABEL_24:
        v47 = v76;
LABEL_37:
        volume_crypto_close(a3);
LABEL_38:
        v59 = v75;
        if (!v75)
        {
          goto LABEL_40;
        }

        goto LABEL_39;
      }
    }
  }

  v50 = tree_iterator_init(v84, a1, 0, v27, 2u, 0x345u, v36, 3808);
  if (v50)
  {
    v17 = v50;
    LOBYTE(v79) = 0;
    *(&v79 + 1) = 0;
    *&v80 = 0;
    goto LABEL_36;
  }

  v17 = fsck_iterate(v84, v15, v77, 1);
  if (*(&v79 + 1) >= 2uLL)
  {
    if (v79)
    {
      v58 = "Applied";
    }

    else
    {
      v58 = "Skipped";
    }

    fsck_printf("%s %llu/%llu repairs of this type in total.\n", v51, v52, v53, v54, v55, v56, v57, v58);
  }

  LOBYTE(v79) = 0;
  *(&v79 + 1) = 0;
  *&v80 = 0;
  if (v17)
  {
LABEL_36:
    v47 = v76;
    if (!a3)
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

  if (v82)
  {
    v60 = fsck_dev_transaction_flush(*a2);
    v17 = v60;
    if (a3 && !v60)
    {
      v61 = 0;
      v62 = 1;
      while (1)
      {
        v63 = v62;
        v64 = *(a3 + 24 + 8 * v61);
        if (v64)
        {
          v65 = fsck_dev_transaction_flush(v64);
          if (v65)
          {
            break;
          }
        }

        v62 = 0;
        v61 = 1;
        if ((v63 & 1) == 0)
        {
          goto LABEL_52;
        }
      }

      v17 = v65;
      goto LABEL_59;
    }

    if (v60)
    {
LABEL_59:
      v66 = strerror(v17);
      fsck_printf_err("unable to flush deferred repairs: %s\n", v67, v68, v69, v70, v71, v72, v73, v66);
      v48 = 900;
      v49 = v17;
      goto LABEL_27;
    }
  }

  v59 = v75;
  if (a3)
  {
LABEL_52:
    if (*(a3 + 12) == 1)
    {
      if (v82 == *(&v80 + 1))
      {
        *(*(a3 + 40) + 264) &= ~4uLL;
      }

      write_apfs_superblock(a2, a3);
      v17 = 0;
      *(a3 + 12) = 0;
    }

    else
    {
      v17 = 0;
    }

    goto LABEL_24;
  }

  v17 = 0;
  v47 = v76;
LABEL_39:
  free(v59);
LABEL_40:
  if (v47)
  {
    free(v47);
  }

LABEL_6:
  if (a5)
  {
    *a5 += *(&v80 + 1);
  }

  if (a6)
  {
    *a6 += v81;
  }

  if (a7)
  {
    *a7 += v82;
  }

  if (a8)
  {
    *a8 += v83;
  }

  tree_destroy(a1, 0);
  return v17;
}

uint64_t sub_100065CF8(unsigned __int16 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *a5;
  v10 = *(a5 + 8);
  v19 = sub_1000661BC(a1, a2, (a5 + 16), *(a5 + 36));
  if (v19)
  {
    sub_1000662D8(a5, v12, v13, v14, v15, v16, v17, v18);
  }

  v20 = *a1;
  if (((*a1 & 0x30) == 16) != ((*a1 & 0x7C0) != 0))
  {
    sub_100069938();
  }

  if (a2 <= 1)
  {
    sub_10006990C();
  }

  if ((v20 & 0xFu) > 0xA)
  {
    return 22;
  }

  if (v19 || *(a5 + 40) == 1)
  {
    v97 = off_1000E5028[v20 & 0xF];
    v98 = a3;
    v21 = a4;
    v100 = v11;
    v29 = fsck_dev_transaction_start(*v11);
    if (!v29)
    {
      LOBYTE(v38) = 0;
      v40 = 0;
      v41 = v10 + 3;
      v42 = 1;
      while (1)
      {
        v43 = v42;
        if (v10)
        {
          v44 = v41[v40];
          if (v44)
          {
            v45 = fsck_dev_transaction_start(v44);
            if (v45)
            {
              break;
            }
          }
        }

        v42 = 0;
        v38 = 1;
        v40 = 1;
        if ((v43 & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      v29 = v45;
      if ((v38 & 1) != 0 && *v41)
      {
        fsck_dev_transaction_end(*v41);
      }

      fsck_dev_transaction_end(*v100);
    }

    v30 = strerror(v29);
    fsck_printf_warn("error starting transaction: %s\n", v31, v32, v33, v34, v35, v36, v37, v30);
    fsck_fail_func(0x36E, v29);
    v38 = 0;
LABEL_16:
    if (v19)
    {
      v46 = v100;
      v47 = v21;
      if (v10)
      {
        v48 = v10[6];
        v49 = v98;
        if (!v48)
        {
          v48 = v10[5];
        }

        if ((*(v48 + 56) & 0x20) != 0 && (*a1 & 0xF) == 7)
        {
          if ((byte_100103AA9 & 1) == 0)
          {
            fsck_printf_warn("sealed volume fsroot corruptions cannot be repaired and will automatically be skipped\n", v22, v23, v24, v25, v26, v27, v28, v96);
            byte_100103AA9 = 1;
          }

          v50 = 2;
        }

        else
        {
          v50 = 0;
        }
      }

      else
      {
        v50 = 0;
        v49 = v98;
      }
    }

    else
    {
      v50 = 1;
      v47 = v21;
      v49 = v98;
      v46 = v100;
    }

    v51 = (v97)(v46, v10, a1, a2, v49, v47, v50);
    v39 = v51;
    *(a5 + 40) = v51 != 89;
    if (v51)
    {
      if (v51 == 89)
      {
        v52 = 0;
        v39 = (*a1 << 20 >> 31) & 0x5C;
      }

      else
      {
        ++*(a5 + 88);
        ++*(a5 + 56);
        v52 = 1;
      }
    }

    else
    {
      ++*(a5 + 80);
      fsck_fail_add_repair();
      v52 = 0;
    }

    if ((*a1 & 0x800) != 0)
    {
      ++*(a5 + 72);
    }

    if (!v38)
    {
      goto LABEL_101;
    }

    v53 = *v46;
    if (v52)
    {
      v54 = fsck_dev_transaction_abort(v53);
      if (!v54)
      {
        v54 = fsck_container_reload(v46);
      }

      if (v10)
      {
        v55 = 0;
        v56 = 0;
        v57 = 1;
        do
        {
          v58 = v57;
          v59 = v10[v55 + 3];
          if (v59)
          {
            v60 = fsck_dev_transaction_abort(v59);
            if (!v56)
            {
              v56 = v60;
            }
          }

          v57 = 0;
          v55 = 1;
        }

        while ((v58 & 1) != 0);
        if (!v56)
        {
          v56 = fsck_volume_reload(v100, v10);
        }
      }

      else
      {
        v56 = 0;
      }

      if (!v54)
      {
        v54 = v56;
      }

      if (!v54)
      {
        goto LABEL_98;
      }

      v70 = strerror(v54);
      fsck_printf_err("error aborting transaction: %s\n", v71, v72, v73, v74, v75, v76, v77, v70);
      v78 = 901;
      goto LABEL_97;
    }

    v61 = fsck_dev_transaction_end(v53);
    v62 = v61 == 84;
    if (v10)
    {
      v99 = v61;
      v63 = 0;
      v64 = 0;
      v65 = 1;
      do
      {
        v66 = v65;
        v67 = v10[v63 + 3];
        if (v67)
        {
          v68 = fsck_dev_transaction_end(v67);
          if (v68)
          {
            if (v68 == 84)
            {
              v62 = 1;
            }

            if (v64 == 84 || !v64)
            {
              v64 = v68;
            }
          }
        }

        v65 = 0;
        v63 = 1;
      }

      while ((v66 & 1) != 0);
      if (v99 == 84)
      {
        v54 = 0;
      }

      else
      {
        v54 = v99;
      }

      if (v64 == 84)
      {
        v69 = 0;
      }

      else
      {
        v69 = v64;
      }

      v46 = v100;
      if (v54)
      {
        goto LABEL_90;
      }
    }

    else
    {
      v69 = 0;
      if (v61 == 84)
      {
        v54 = 0;
      }

      else
      {
        v54 = v61;
      }

      if (v54)
      {
        goto LABEL_90;
      }
    }

    if (v62 && !v69)
    {
      v79 = fsck_dev_transaction_flush(*v46);
      v54 = v79;
      if (!v10 || v79)
      {
        if (!v79)
        {
LABEL_98:
          if (v39)
          {
            v39 = v39;
          }

          else
          {
            v39 = v54;
          }

          goto LABEL_101;
        }
      }

      else
      {
        v80 = 0;
        v81 = v10 + 3;
        v82 = 1;
        while (1)
        {
          v83 = v82;
          v84 = v81[v80];
          if (v84)
          {
            v85 = fsck_dev_transaction_flush(v84);
            if (v85)
            {
              break;
            }
          }

          v82 = 0;
          v80 = 1;
          if ((v83 & 1) == 0)
          {
            v54 = 0;
            goto LABEL_98;
          }
        }

        v54 = v85;
      }

      goto LABEL_96;
    }

LABEL_90:
    if (!v54)
    {
      v54 = v69;
      if (!v69)
      {
        goto LABEL_98;
      }
    }

LABEL_96:
    v86 = strerror(v54);
    fsck_printf_err("error ending transaction: %s\n", v87, v88, v89, v90, v91, v92, v93, v86);
    v78 = 879;
LABEL_97:
    fsck_fail_func(v78, v54);
    goto LABEL_98;
  }

  if ((*a1 & 0x800) != 0)
  {
    ++*(a5 + 72);
    v39 = 92;
  }

  else
  {
    v39 = 0;
  }

LABEL_101:
  if (a2 >= 0x11)
  {
    v94 = 17;
  }

  else
  {
    v94 = a2;
  }

  *(a5 + 36) = v94;
  memcpy((a5 + 16), a1, v94);
  ++*(a5 + 48);
  return v39;
}

uint64_t sub_1000661A0(_WORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((*a1 & 0x800) != 0)
  {
    ++*(a5 + 72);
  }

  return 0;
}

uint64_t sub_1000661BC(unsigned __int16 *a1, unsigned int a2, unsigned __int16 *a3, unsigned int a4)
{
  v4 = *a1;
  v5 = v4 & 0xF;
  v6 = *a3;
  if (v5 < (v6 & 0xF))
  {
    return 0xFFFFFFFFLL;
  }

  if (v5 > (v6 & 0xF))
  {
    return 1;
  }

  if (v5 != 4)
  {
    v8 = 0;
    if (a4 >= 0xD && a2 >= 0xD)
    {
      v9 = 0;
      if (v5 != 7)
      {
        goto LABEL_23;
      }

      goto LABEL_12;
    }

LABEL_22:
    v9 = 0;
    goto LABEL_23;
  }

  v8 = 0;
  if (a2 < 0xD)
  {
    goto LABEL_22;
  }

  v9 = 0;
  if (a4 < 0xD)
  {
    goto LABEL_23;
  }

LABEL_12:
  v10 = *(a1 + 5) >> 60;
  v11 = *(a3 + 5) >> 60;
  if (a4 >= 0x11 && a2 >= 0x11 && v10 == 14 && v11 == 14)
  {
    LODWORD(v10) = *(a1 + 13);
    LODWORD(v11) = *(a3 + 13);
  }

  v8 = a1;
  v9 = a3;
  if (v10 < v11)
  {
    result = 0xFFFFFFFFLL;
  }

  else
  {
    result = 1;
  }

  if (v10 == v11)
  {
LABEL_23:
    v12 = (v4 >> 4) & 3;
    v13 = (v6 >> 4) & 3;
    if (v12 >= v13)
    {
      if (v12 > v13)
      {
        return 1;
      }

      if (v12 != 1)
      {
        return 0;
      }

      v14 = (v4 >> 6) & 0x1F;
      v15 = (v6 >> 6) & 0x1F;
      if (v14 >= v15)
      {
        if (v14 > v15)
        {
          return 1;
        }

        if (!v8 || !v9)
        {
          return 0;
        }

        v16 = *(v8 + 4);
        v17 = *(v9 + 4);
        if (v16 >= v17)
        {
          return v16 > v17;
        }
      }
    }

    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t sub_1000662D8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = result;
  v10 = (result + 48);
  v9 = *(result + 48);
  if (v9 >= 2)
  {
    if (*(result + 40))
    {
      v11 = "Applied";
    }

    else
    {
      v11 = "Skipped";
    }

    v12 = v9 - *(result + 56);
    v13 = *(result + 48);
    result = fsck_printf("%s %llu/%llu repairs of this type in total.\n", a2, a3, a4, a5, a6, a7, a8, v11);
  }

  *(v8 + 40) = 0;
  *v10 = 0;
  v10[1] = 0;
  return result;
}

uint64_t sub_100066350(uint64_t *a1, uint64_t a2, unsigned __int16 *a3, uint64_t a4, void *a5, int a6, uint64_t a7)
{
  if (a2)
  {
    sub_100069964();
  }

  v8 = *a3 & 0xF;
  if (v8 >= 2)
  {
    sub_1000699E8();
  }

  if ((*a3 & 0x10) != 0)
  {
    sub_100069990();
  }

  v22 = 0;
  result = get_spaceman_fq_tree(a1, v8, &v22);
  if (!result)
  {
    v13 = *a3;
    if (a6 != 8 * ((v13 & 0x30) != 0))
    {
      sub_1000699BC();
    }

    v14 = *(a3 + 1);
    v15 = *(a3 + 5);
    v21[0] = v14;
    v21[1] = v15;
    v16 = (v13 >> 4) & 3;
    if (v16 == 2)
    {
      v17 = (v13 & 0x800) == 0;
      v20 = fsck_printf_err;
      if (v17)
      {
        v20 = fsck_printf_warn;
      }

      v20("need to insert spaceman free queue tree entry (0x%llx+%llu, xid %llu) to replace existing overlapping ranges\n", v15, *a5, v14);
      return sub_100066FD8(v22, 0, v21, 16, a5, 8, "free queue tree entry", a7);
    }

    else if (v16)
    {
      return 22;
    }

    else
    {
      v17 = (v13 & 0x800) == 0;
      v18 = fsck_printf_err;
      if (v17)
      {
        v18 = fsck_printf_warn;
      }

      v18("found spaceman free queue tree entry (0x%llx, xid %llu) which overlaps with existing range\n", v15, v14);
      return sub_1000670B4(v22, 0, v21, 16, 0, "free queue tree entry", a7 != 0, v19);
    }
  }

  return result;
}

uint64_t sub_1000664C8(uint64_t *a1, int8x16_t *a2, uint64_t a3, int a4, uint64_t a5, int a6, int a7)
{
  if ((*a3 & 0xF) != 2)
  {
    sub_100069A14();
  }

  if ((*a3 & 0x30) != 0)
  {
    sub_100069A40();
  }

  v20 = 0;
  result = get_omap_tree(a1, a2, &v20);
  if (!result)
  {
    if (a6 != 16)
    {
      sub_100069A6C();
    }

    if (a4 != 18)
    {
      sub_100069A98();
    }

    v15 = *(a3 + 2);
    v16 = *(a3 + 10);
    v19[0] = v15;
    v19[1] = v16;
    v17 = fsck_printf_err;
    if ((*a3 & 0x800) == 0)
    {
      v17 = fsck_printf_warn;
    }

    v17("found orphan omap mapping (oid %llu xid %llu)\n", v15, v16);
    result = sub_1000670B4(v20, 0, v19, 16, 0, "omap mapping", a7 != 0, v18);
    if (!result)
    {
      if (*a5)
      {
        return 0;
      }

      else
      {
        return fsck_free_range(a1, a2, *(a5 + 8), (*(a5 + 4) / *(a1[1] + 36)));
      }
    }
  }

  return result;
}

uint64_t sub_100066608(uint64_t *a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, unsigned int a6, int a7)
{
  v7 = *a3 & 0xF;
  if ((v7 - 5) <= 0xFFFFFFFD)
  {
    sub_100069C7C();
  }

  if ((*a3 & 0x30) != 0)
  {
    sub_100069AC4();
  }

  if (v7 == 3)
  {
    if (a6 != 16)
    {
      sub_100069C24();
    }

    if (a4 != 10)
    {
      sub_100069C50();
    }

    v8 = *(a3 + 2);
    v9 = *a5;
    v10 = *(a5 + 8);

    return fsck_omap_snap_delete_snapshot(a1, a2, v8, v9, v10, a7 != 0);
  }

  else
  {
    if (a6 <= 0x31)
    {
      sub_100069BF8();
    }

    if (a4 <= 0xC)
    {
      sub_100069BCC();
    }

    v12 = *(a3 + 2);
    if (v12 + 5 != a4)
    {
      sub_100069AF0();
    }

    v14 = *(a3 + 5);
    v13 = (a3 + 5);
    v15 = v14 & 0xF000000000000000;
    if (a4 <= 0x10 && v15 == 0xE000000000000000)
    {
      sub_100069BA0();
    }

    if (v12 != 8)
    {
      sub_100069B1C();
    }

    if (v15 != 0x1000000000000000)
    {
      sub_100069B48();
    }

    if (*(a5 + 48) + 50 != a6)
    {
      sub_100069B74();
    }

    return fsck_snap_meta_delete_snapshot(a1, a2, v13, a5, a7 != 0);
  }
}

uint64_t sub_1000667D0(uint64_t a1, uint64_t a2, unsigned __int16 *a3, int a4, unsigned int *a5, int a6, uint64_t a7)
{
  if ((*a3 & 0xF) != 5)
  {
    sub_100069CA8();
  }

  if ((*a3 & 0x10) != 0)
  {
    sub_100069CD4();
  }

  memset(v29, 0, sizeof(v29));
  if (a4 != 18)
  {
    sub_100069D00();
  }

  v11 = *(a3 + 1);
  result = get_extentref_tree_at_xid(v29, a1, a2, v11);
  if (!result)
  {
    if (*(a3 + 5) >> 60 != 2)
    {
      sub_100069D2C();
    }

    v13 = *a3;
    v14 = (v13 >> 4) & 3;
    if (v14 == 2)
    {
      if (a6 != 20)
      {
        sub_100069D58();
      }

      v15 = (v13 & 0x800) == 0;
      v18 = fsck_printf_err;
      if (v15)
      {
        v18 = fsck_printf_warn;
      }

      v19 = *a5 & 0xFFFFFFFFFFFFFFFLL;
      v20 = a5[4];
      if (v11)
      {
        v28 = a5[4];
        v21 = "missing/invalid physical extent (%llu + %llu) with refcnt %d at snapshot %llu\n";
      }

      else
      {
        v27 = *a5 & 0xFFFFFFFFFFFFFFFLL;
        v21 = "missing/invalid physical extent (%llu + %llu) with refcnt %d\n";
      }

      (v18)(v21);
      v25 = *(a3 + 5) >> 60;
      if (v25 == 14)
      {
        LODWORD(v25) = *(a3 + 18);
      }

      v26 = _apfs_type_to_str(v25);
      return sub_100066FD8(v29, v11, a3 + 5, 8, a5, 20, v26, a7);
    }

    else if (v14)
    {
      return 22;
    }

    else
    {
      if (a6)
      {
        sub_100069D84();
      }

      v15 = (v13 & 0x800) == 0;
      v16 = fsck_printf_err;
      if (v15)
      {
        v16 = fsck_printf_warn;
      }

      if (v11)
      {
        v17 = "orphan/invalid physical extent (%llu) at snapshot %llu\n";
      }

      else
      {
        v17 = "orphan/invalid physical extent (%llu)\n";
      }

      (v16)(v17);
      v22 = *(a3 + 5) >> 60;
      if (v22 == 14)
      {
        LODWORD(v22) = *(a3 + 18);
      }

      v23 = _apfs_type_to_str(v22);
      return sub_1000670B4(v29, v11, (a3 + 5), 8, 0, v23, a7 != 0, v24);
    }
  }

  return result;
}

uint64_t sub_1000669D4(uint64_t a1, uint64_t a2, unsigned __int16 *a3, uint64_t a4, _WORD *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = a4;
  if ((byte_100103AA8 & 1) == 0)
  {
    fsck_printf_warn("detected invalid fsroot tree nodes (& thus data loss), pruning the nodes to make the system usable\n", a2, a3, a4, a5, a6, a7, a8, v26);
    byte_100103AA8 = 1;
  }

  v15 = *(a2 + 48);
  if (!v15)
  {
    v15 = *(a2 + 40);
  }

  if ((*(v15 + 56) & 0x20) != 0)
  {
    sub_100069DB0();
  }

  if ((*a3 & 0xF) != 6)
  {
    sub_100069DDC();
  }

  if ((*a3 & 0x10) != 0)
  {
    sub_100069E08();
  }

  v27 = 0;
  result = get_fsroot_tree(a1, a2, &v27);
  if (!result)
  {
    if (v11 <= 0xC)
    {
      sub_100069BCC();
    }

    v17 = a3[1];
    if (v17 + 5 != v11)
    {
      sub_100069AF0();
    }

    v18 = *(a3 + 5);
    if (v11 <= 0x10 && (v18 & 0xF000000000000000) == 0xE000000000000000)
    {
      sub_100069BA0();
    }

    v19 = *a3;
    v20 = (v19 >> 4) & 3;
    if (v20 == 2)
    {
      v22 = (v19 & 0x800) == 0;
      v25 = fsck_printf_err;
      if (v22)
      {
        v25 = fsck_printf_warn;
      }

      v25("need to insert key at id (%llu) to repair invalid internal node\n", v18 & 0xFFFFFFFFFFFFFFFLL);
      return sub_100066FD8(v27, 0, a3 + 5, v17, a5, a6, "btree node", a7);
    }

    else if (v20)
    {
      return 22;
    }

    else
    {
      if (a6 != 2)
      {
        sub_100069E34();
      }

      v21 = *a5 + 1;
      v22 = (v19 & 0x800) == 0;
      v23 = fsck_printf_err;
      if (v22)
      {
        v23 = fsck_printf_warn;
      }

      v23("found invalid fsroot btree node key id (%llu)\n", v18 & 0xFFFFFFFFFFFFFFFLL);
      return sub_1000670B4(v27, 0, a3 + 5, v17, v21, "btree node", a7, v24);
    }
  }

  return result;
}

uint64_t sub_100066BD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((*a3 & 0xF) != 8)
  {
    sub_100069E60();
  }

  if ((*a3 & 0x30) != 0x20)
  {
    sub_100069E8C();
  }

  v9 = a6;
  v11 = a4;
  v17 = 0;
  result = get_pfkur_tree(a1, a2, &v17, a4, a5, a6, a7, a8);
  if (!result)
  {
    if (v9 != 24)
    {
      sub_100069EB8();
    }

    if (v11 != 10)
    {
      sub_100069EE4();
    }

    v14 = *(a3 + 2);
    v16 = v14;
    v15 = fsck_printf_err;
    if ((*a3 & 0x800) == 0)
    {
      v15 = fsck_printf_warn;
    }

    v15("no file key rolling entry found for inode object (%llu)\n", v14);
    return sub_100066FD8(v17, 0, &v16, 8, a5, 24, "file key rolling", a7);
  }

  return result;
}

uint64_t sub_100066CCC(uint64_t a1, uint64_t a2, unsigned __int16 *a3, int a4, void *a5, uint64_t a6, uint64_t a7)
{
  if ((*a3 & 0xF) != 9)
  {
    sub_100069F10();
  }

  if ((*a3 & 0x10) != 0)
  {
    sub_100069F3C();
  }

  v21 = 0;
  result = get_doc_id_tree(a1, a2, &v21);
  if (!result)
  {
    v13 = *a3;
    if (a6 != 8 * ((v13 & 0x30) != 0))
    {
      sub_100069F68();
    }

    if (a4 != 6)
    {
      sub_100069F94();
    }

    v14 = *(a3 + 1);
    v20 = v14;
    v15 = (v13 >> 4) & 3;
    if (v15 == 2)
    {
      v16 = (v13 & 0x800) == 0;
      v19 = fsck_printf_err;
      if (v16)
      {
        v19 = fsck_printf_warn;
      }

      v19("inode with file-id %llu has doc-id %u but doc-id tree record is missing or points to another inode\n", *a5, v14);
      return sub_100066FD8(v21, 0, &v20, 4, a5, a6, "doc-id tree entry", a7);
    }

    else if (v15)
    {
      return 22;
    }

    else
    {
      v16 = (v13 & 0x800) == 0;
      v17 = fsck_printf_err;
      if (v16)
      {
        v17 = fsck_printf_warn;
      }

      v17("doc-id tree record exists for doc-id %u, but no inode references this doc-id\n", v14);
      return sub_1000670B4(v21, 0, &v20, 4, 0, "doc-id tree entry", a7 != 0, v18);
    }
  }

  return result;
}

uint64_t sub_100066E4C(uint64_t a1, uint64_t a2, unsigned __int16 *a3, int a4, void *a5, uint64_t a6, uint64_t a7)
{
  if ((*a3 & 0xF) != 0xA)
  {
    sub_100069FC0();
  }

  if ((*a3 & 0x10) != 0)
  {
    sub_100069FEC();
  }

  v20 = 0;
  result = get_clonegroup_tree(a1, a2, &v20);
  if (!result)
  {
    if (a4 != 27)
    {
      sub_10006A018();
    }

    *v19 = *(a3 + 1);
    *&v19[9] = *(a3 + 11);
    v13 = *a3;
    v14 = (v13 >> 4) & 3;
    if (v14 == 2)
    {
      v15 = (v13 & 0x800) == 0;
      v18 = fsck_printf_err;
      if (v15)
      {
        v18 = fsck_printf_warn;
      }

      v18("clone group mapping record missing for (group_id %llu, private_id %llu, file_id %llu)\n", *v19, *&v19[9], *&v19[17]);
      return sub_100066FD8(v20, 0, v19, 25, a5, a6, "clone group tree entry", a7);
    }

    else if (v14)
    {
      return 22;
    }

    else
    {
      v15 = (v13 & 0x800) == 0;
      v16 = fsck_printf_err;
      if (v15)
      {
        v16 = fsck_printf_warn;
      }

      v16("clone group mapping record exists for (group_id %llu, private_id %llu, file_id %llu), but no inode refers to it\n", *v19, *&v19[9], *&v19[17]);
      return sub_1000670B4(v20, 0, v19, 25, 0, "clone group tree entry", a7 != 0, v17);
    }
  }

  return result;
}

uint64_t sub_100066FD8(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a7;
  if (a8 != 1 && (a8 == 2 || !fsckAskPrompt(fsck_apfs_ctx, "Insert missing %s objects? ", a3, a4, a5, a6, a7, a8, a7)))
  {
    return 89;
  }

  v15 = tree_insert(a1, a2, a3, a4, a5, a6);
  v16 = v15;
  if (v15)
  {
    strerror(v15);
    fsck_printf_err("failed to insert %s object: %s\n", v17, v18, v19, v20, v21, v22, v23, v8);
    fsck_fail_func(0x28F, v16);
  }

  return v16;
}

uint64_t sub_1000670B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a6;
  v9 = a5;
  if (a7 != 1 && (a7 == 2 || !fsckAskPrompt(fsck_apfs_ctx, "Remove orphan/invalid %s objects? ", a3, a4, a5, a6, a7, a8, a6)))
  {
    return 89;
  }

  v14 = tree_remove_at_level(a1, a2, a3, a4, v9);
  v22 = v14;
  if (v14)
  {
    if (v14 == 2)
    {
      fsck_printf_warn("tried to remove %s object but it wasn't there!\n", v15, v16, v17, v18, v19, v20, v21, v8);
      return 0;
    }

    else
    {
      strerror(v14);
      fsck_printf_err("failed to remove %s object: %s\n", v23, v24, v25, v26, v27, v28, v29, v8);
      fsck_fail_func(0x28D, v22);
    }
  }

  return v22;
}

uint64_t sub_1000671A0(uint64_t a1, void *a2, unsigned __int16 *a3, unsigned int a4, unsigned int *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a3;
  if ((v8 & 0xF) != 7)
  {
    sub_10006A044();
  }

  if ((v8 & 0x30) != 0x10)
  {
    sub_10006A070();
  }

  if (((v8 >> 6) & 0x1E) - 12 >= 0xA)
  {
    sub_10006A09C();
  }

  v9 = a7;
  v10 = a6;
  v33 = 0;
  result = get_tree_for_jobj(a1, a2, 3, &v33, a5, a6, a7, a8);
  if (!result)
  {
    if (a4 <= 0xC)
    {
      sub_100069BCC();
    }

    v15 = a3[1];
    if (v15 + 5 != a4)
    {
      sub_100069AF0();
    }

    v16 = *(a3 + 5) & 0xF000000000000000;
    if (a4 <= 0x10 && v16 == 0xE000000000000000)
    {
      sub_100069BA0();
    }

    if (v15 != 8 || v16 != 0x3000000000000000)
    {
      sub_10006A280();
    }

    v17 = *a3;
    v18 = (v17 >> 6) & 0x1F;
    result = 22;
    if (v18 > 0x10)
    {
      if (((v17 >> 6) & 0x1F) <= 0x12)
      {
        if (v18 == 17)
        {
          if (v10 != 8)
          {
            sub_10006A178();
          }

          v19 = (v17 & 0x800) == 0;
          v20 = fsck_printf_err;
          if (v19)
          {
            v20 = fsck_printf_warn;
          }

          v25 = *a5;
          v21 = "need to set flags (0x%llx) in inode (object-id %llu)\n";
        }

        else
        {
          if (v18 != 18)
          {
            return result;
          }

          if (v10 != 8)
          {
            sub_10006A14C();
          }

          v19 = (v17 & 0x800) == 0;
          v20 = fsck_printf_err;
          if (v19)
          {
            v20 = fsck_printf_warn;
          }

          v24 = *a5;
          v21 = "need to clear flags (0x%llx) in inode (object-id %llu)\n";
        }
      }

      else
      {
        switch(v18)
        {
          case 0x13u:
            if (v10 != 4)
            {
              sub_10006A120();
            }

            v19 = (v17 & 0x800) == 0;
            v20 = fsck_printf_err;
            if (v19)
            {
              v20 = fsck_printf_warn;
            }

            v27 = *a5;
            v21 = "need to set bsd flags (0x%x) in inode (object-id %llu)\n";
            break;
          case 0x14u:
            if (v10 != 4)
            {
              sub_10006A0F4();
            }

            v19 = (v17 & 0x800) == 0;
            v20 = fsck_printf_err;
            if (v19)
            {
              v20 = fsck_printf_warn;
            }

            v28 = *a5;
            v21 = "need to clear bsd flags (0x%x) in inode (object-id %llu)\n";
            break;
          case 0x15u:
            if (v10 != 92)
            {
              sub_10006A0C8();
            }

            v19 = (v17 & 0x800) == 0;
            v20 = fsck_printf_err;
            if (v19)
            {
              v20 = fsck_printf_warn;
            }

            v30 = a5[21];
            v21 = "dir_nlink of inode object (id %llu) does not match expected value (%d)\n";
            break;
          default:
            return result;
        }
      }
    }

    else if (((v17 >> 6) & 0x1F) <= 0xD)
    {
      if (v18 == 12)
      {
        if (v10 != 92)
        {
          sub_10006A254();
        }

        v19 = (v17 & 0x800) == 0;
        v20 = fsck_printf_err;
        if (v19)
        {
          v20 = fsck_printf_warn;
        }

        v32 = a5[14];
        v21 = "nchildren of inode object (id %llu) does not match expected value (%d)\n";
      }

      else
      {
        if (v18 != 13)
        {
          return result;
        }

        if (v10 != 40)
        {
          sub_10006A228();
        }

        v19 = (v17 & 0x800) == 0;
        v20 = fsck_printf_err;
        if (v19)
        {
          v20 = fsck_printf_warn;
        }

        v31 = *(a5 + 1);
        v21 = "alloced_size of dstream (object-id %llu) does not match minimum found size (%llu)\n";
      }
    }

    else
    {
      switch(v18)
      {
        case 0xEu:
          if (v10 != 40)
          {
            sub_10006A1FC();
          }

          v19 = (v17 & 0x800) == 0;
          v20 = fsck_printf_err;
          if (v19)
          {
            v20 = fsck_printf_warn;
          }

          v26 = *(a5 + 2);
          v21 = "need to update default_crypto_id (%llu) of dstream (object-id %llu) with missing crypto state\n";
          break;
        case 0xFu:
          if (v10 != 1)
          {
            sub_10006A1D0();
          }

          if ((v17 & 0x800) != 0)
          {
            v22 = fsck_printf_err;
          }

          else
          {
            v22 = fsck_printf_warn;
          }

          v23 = _xf_type_to_str(a3 + 5, *a5);
          v22("found unexpected %s xfield associated with inode (object-id %llu)\n", v23, *(a3 + 5) & 0xFFFFFFFFFFFFFFFLL);
          return sub_100068FB8(v33, (*a3 >> 6) & 0x1F, a3 + 5, v15, a5, v10, v9);
        case 0x10u:
          if (v10 != 8)
          {
            sub_10006A1A4();
          }

          v19 = (v17 & 0x800) == 0;
          v20 = fsck_printf_err;
          if (v19)
          {
            v20 = fsck_printf_warn;
          }

          v29 = *a5;
          v21 = "need to update inode (object-id %llu) sparse bytes with (%llu)\n";
          break;
        default:
          return result;
      }
    }

    (v20)(v21);
    return sub_100068FB8(v33, (*a3 >> 6) & 0x1F, a3 + 5, v15, a5, v10, v9);
  }

  return result;
}

uint64_t sub_100067614(uint64_t a1, void *a2, unsigned __int16 *a3, unsigned int a4, unsigned __int8 *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((*a3 & 0xF) != 7)
  {
    sub_10006A2AC();
  }

  if ((*a3 & 0x20) != 0)
  {
    sub_10006A2D8();
  }

  v8 = a7;
  v9 = a6;
  v26 = 0;
  result = get_tree_for_jobj(a1, a2, 4, &v26, a5, a6, a7, a8);
  if (!result)
  {
    if (a4 <= 0xC)
    {
      sub_100069BCC();
    }

    v14 = a3[1];
    if (v14 + 5 != a4)
    {
      sub_100069AF0();
    }

    v15 = *(a3 + 5);
    v16 = v15 & 0xF000000000000000;
    if (a4 <= 0x10 && v16 == 0xE000000000000000)
    {
      sub_100069BA0();
    }

    if (v14 <= 9)
    {
      sub_10006A3E0();
    }

    if (v16 != 0x4000000000000000)
    {
      sub_10006A304();
    }

    if (*(a3 + 13) + 10 != v14)
    {
      sub_10006A330();
    }

    v17 = *a3;
    v18 = (v17 >> 4) & 3;
    if (v18 == 1)
    {
      if ((v17 & 0x7C0) != 0x640)
      {
        sub_10006A35C();
      }

      if (v9 != 8)
      {
        sub_10006A388();
      }

      v19 = (v17 & 0x800) == 0;
      v25 = fsck_printf_err;
      if (v19)
      {
        v25 = fsck_printf_warn;
      }

      v25("found xattr dstream (id %llu, name %.*s) that references a missing crypto state\n", v15 & 0xFFFFFFFFFFFFFFFLL, *(a3 + 13), a3 + 15);
      return sub_100068FB8(v26, 25, a3 + 5, v14, a5, 8u, v8);
    }

    else if (v18)
    {
      return 22;
    }

    else
    {
      if (v9)
      {
        sub_10006A3B4();
      }

      v19 = (v17 & 0x800) == 0;
      v20 = fsck_printf_err;
      if (v19)
      {
        v20 = fsck_printf_warn;
      }

      v20("found orphan/invalid xattr (id %llu, name %.*s)\n", v15 & 0xFFFFFFFFFFFFFFFLL, *(a3 + 13), a3 + 15);
      v21 = v26;
      v22 = *(a3 + 5) >> 60;
      if (v22 == 14)
      {
        LODWORD(v22) = *(a3 + 13);
      }

      v23 = _apfs_type_to_str(v22);
      return sub_1000670B4(v21, 0, a3 + 5, v14, 0, v23, v8 != 0, v24);
    }
  }

  return result;
}

uint64_t sub_100067830(uint64_t a1, void *a2, unsigned __int16 *a3, unsigned int a4, unsigned __int8 *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a3;
  if ((v8 & 0xF) != 7)
  {
    sub_10006A40C();
  }

  if ((~v8 & 0x30) == 0)
  {
    sub_10006A514();
  }

  v45 = 0;
  if (a4 <= 0xC)
  {
    sub_100069BCC();
  }

  v10 = a3[1];
  if (v10 + 5 != a4)
  {
    sub_100069AF0();
  }

  v15 = (a3 + 5);
  v14 = *(a3 + 5);
  if (a4 <= 0x10 && (v14 & 0xF000000000000000) == 0xE000000000000000)
  {
    sub_100069BA0();
  }

  v16 = v14 >> 60;
  if (v14 >> 60 != 6 && v16 != 8)
  {
    sub_10006A4E8();
  }

  result = get_tree_for_jobj(a1, a2, v14 >> 60, &v45, a5, a6, a7, a8);
  if (!result)
  {
    if (v16 == 8)
    {
      if (v10 != 16)
      {
        goto LABEL_65;
      }

      v24 = *a3;
      v25 = 24;
      if ((v24 & 0x30) == 0)
      {
        v25 = 0;
      }

      if (v25 != a6)
      {
        goto LABEL_65;
      }

      if (a6)
      {
        v26 = *a5 & 0xFFFFFFFFFFFFFFLL;
      }

      else
      {
        v26 = 0;
      }

      v27 = (v24 >> 4) & 3;
      if (v27 <= 1)
      {
        if (!v27)
        {
          v28 = fsck_printf_err;
          if ((v24 & 0x800) == 0)
          {
            v28 = fsck_printf_warn;
          }

          v29 = "invalid";
          if ((v24 & 0x800) == 0)
          {
            v29 = "orphan";
          }

          v28("found %s file extent object (id %llu) at logical address %llu\n", v29, *(a3 + 5) & 0xFFFFFFFFFFFFFFFLL, *(a3 + 13));
          v22 = v45;
          v23 = *(a3 + 5);
          goto LABEL_33;
        }

        v41 = (v24 >> 6) & 0x1F;
        if ((v41 - 12) <= 0xFFFFFFFD)
        {
          sub_10006A438();
        }

        v39 = fsck_printf_err;
        if ((v24 & 0x800) == 0)
        {
          v39 = fsck_printf_warn;
        }

        v42 = *(a3 + 5) & 0xFFFFFFFFFFFFFFFLL;
        if (v41 == 10)
        {
          v40 = "found file extent overlap (id %llu) with next extent / end of dstream at logical address %llu+%llu\n";
        }

        else
        {
          v40 = "need to make file extent with missing crypto state (id %llu) at logical address %llu+%llu sparse\n";
        }

        v44 = *(a3 + 13);
LABEL_59:
        (v39)(v40);
        return sub_100068FB8(v45, (*a3 >> 6) & 0x1F, a3 + 5, v10, a5, a6, a7);
      }

      if (v27 == 2)
      {
        v33 = fsck_printf_err;
        if ((v24 & 0x800) == 0)
        {
          v33 = fsck_printf_warn;
        }

        v33("found file extent gap (id %llu) at logical address %llu+%llu\n", *(a3 + 5) & 0xFFFFFFFFFFFFFFFLL, *(a3 + 13), v26);
        v34 = v45;
        v35 = *(a3 + 5);
        goto LABEL_45;
      }
    }

    else if (v16 == 6)
    {
      if (v10 != 8 || (v18 = *a3, a6 != 4 * ((v18 & 0x30) != 0)))
      {
        sub_10006A464();
      }

      v19 = (v18 >> 4) & 3;
      if (v19 <= 1)
      {
        if (!v19)
        {
          v20 = (v18 & 0x800) == 0;
          v21 = fsck_printf_err;
          if (v20)
          {
            v21 = fsck_printf_warn;
          }

          v21("found orphan dstream id object (id %llu)\n", *v15 & 0xFFFFFFFFFFFFFFFLL);
          v22 = v45;
          v23 = *v15;
LABEL_33:
          v30 = v23 >> 60;
          if (v23 >> 60 == 14)
          {
            LODWORD(v30) = *(a3 + 13);
          }

          v31 = _apfs_type_to_str(v30);
          return sub_1000670B4(v22, 0, a3 + 5, v10, 0, v31, a7 != 0, v32);
        }

        if ((v18 & 0x7C0) != 0x240)
        {
          sub_10006A4BC();
        }

        v20 = (v18 & 0x800) == 0;
        v39 = fsck_printf_err;
        if (v20)
        {
          v39 = fsck_printf_warn;
        }

        v43 = *(a3 + 5) & 0xFFFFFFFFFFFFFFFLL;
        v40 = "refcnt of dstream id object (id %llu) less than expected\n";
        goto LABEL_59;
      }

      if (v19 == 2)
      {
        v20 = (v18 & 0x800) == 0;
        v36 = fsck_printf_err;
        if (v20)
        {
          v36 = fsck_printf_warn;
        }

        v36("dstream (id %llu) does not have an associated dstream id object\n", *v15 & 0xFFFFFFFFFFFFFFFLL);
        v34 = v45;
        v35 = *v15;
LABEL_45:
        v37 = v35 >> 60;
        if (v35 >> 60 == 14)
        {
          LODWORD(v37) = *(a3 + 13);
        }

        v38 = _apfs_type_to_str(v37);
        return sub_100066FD8(v34, 0, a3 + 5, v10, a5, a6, v38, a7);
      }

LABEL_65:
      sub_10006A490();
    }

    return 22;
  }

  return result;
}

uint64_t sub_100067C44(uint64_t a1, void *a2, unsigned __int16 *a3, unsigned int a4, unsigned __int8 *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((*a3 & 0xF) != 7)
  {
    sub_10006A540();
  }

  if ((*a3 & 0x20) != 0)
  {
    sub_10006A56C();
  }

  v8 = a7;
  v9 = a6;
  v37 = 0;
  result = get_tree_for_jobj(a1, a2, 7, &v37, a5, a6, a7, a8);
  if (!result)
  {
    if (a4 <= 0xC)
    {
      sub_100069BCC();
    }

    v21 = a3[1];
    if (v21 + 5 != a4)
    {
      sub_100069AF0();
    }

    v22 = *(a3 + 5);
    v23 = v22 & 0xF000000000000000;
    if (a4 <= 0x10 && v23 == 0xE000000000000000)
    {
      sub_100069BA0();
    }

    if (v23 != 0x7000000000000000)
    {
      sub_10006A598();
    }

    if (v21 != 8)
    {
      goto LABEL_32;
    }

    v24 = *a3;
    v25 = (v24 & 0x7C0) == 0x5C0 || (v24 & 0x30) == 0;
    v26 = 24;
    if (v25)
    {
      v26 = 0;
    }

    if (v26 != v9)
    {
LABEL_32:
      sub_10006A5C4();
    }

    v27 = (v24 >> 4) & 3;
    if (v27 == 1)
    {
      v32 = (v24 >> 6) & 0x1F;
      if ((v32 - 24) <= 0xFFFFFFFD)
      {
        sub_10006A5F0();
      }

      v33 = fsck_printf_err;
      if ((v24 & 0x800) == 0)
      {
        v33 = fsck_printf_warn;
      }

      if (v32 == 22)
      {
        v36 = *a5;
        v34 = "refcnt of crypto state object (id %llu) is %s than expected (%u)\n";
      }

      else
      {
        v35 = *a5;
        v34 = "need to increment crypto state object (id %llu) refcount (%u)\n";
      }

      (v33)(v34);
      return sub_100068FB8(v37, (*a3 >> 6) & 0x1F, a3 + 5, v21, a5, v9, v8);
    }

    else if (v27)
    {
      return 22;
    }

    else
    {
      if ((v24 & 0x800) != 0)
      {
        sub_10006A61C();
      }

      fsck_printf_warn("found orphan/unexpected crypto state object (id %llu)\n", v14, v15, v16, v17, v18, v19, v20, v22);
      v28 = v37;
      v29 = *(a3 + 5) >> 60;
      if (v29 == 14)
      {
        LODWORD(v29) = *(a3 + 13);
      }

      v30 = _apfs_type_to_str(v29);
      return sub_1000670B4(v28, 0, a3 + 5, v21, 0, v30, v8 != 0, v31);
    }
  }

  return result;
}

uint64_t sub_100067E70(uint64_t a1, void *a2, unsigned __int16 *a3, unsigned int a4, unsigned __int8 *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((*a3 & 0xF) != 7)
  {
    sub_10006A648();
  }

  v8 = a7;
  v9 = a6;
  if ((*a3 & 0x7F0) != 0 && (*a3 & 0x7F0) != 0x610)
  {
    sub_10006A750();
  }

  v28 = 0;
  result = get_tree_for_jobj(a1, a2, 9, &v28, a5, a6, a7, a8);
  if (!result)
  {
    if (a4 <= 0xC)
    {
      sub_100069BCC();
    }

    v15 = a3[1];
    if (v15 + 5 != a4)
    {
      sub_100069AF0();
    }

    v16 = *(a3 + 5);
    v17 = v16 & 0xF000000000000000;
    if (a4 <= 0x10 && v17 == 0xE000000000000000)
    {
      sub_100069BA0();
    }

    if (v17 != 0x9000000000000000)
    {
      sub_10006A674();
    }

    v18 = 12;
    if ((*(a2[5] + 56) & 9) == 0)
    {
      v18 = 10;
    }

    if (v18 > v15)
    {
      sub_10006A724();
    }

    v19 = *a3;
    v20 = (v19 >> 4) & 3;
    if (v20 == 1)
    {
      if ((v19 & 0x7C0) != 0x600)
      {
        sub_10006A6A0();
      }

      if (v9 != 4)
      {
        sub_10006A6CC();
      }

      v21 = (v19 & 0x800) == 0;
      v27 = fsck_printf_err;
      if (v21)
      {
        v27 = fsck_printf_warn;
      }

      v27("found invalid directory record object (id %llu)\n", v16 & 0xFFFFFFFFFFFFFFFLL);
      return sub_100068FB8(v28, 24, a3 + 5, v15, a5, 4u, v8);
    }

    else if (v20)
    {
      return 22;
    }

    else
    {
      if (v9)
      {
        sub_10006A6F8();
      }

      v21 = (v19 & 0x800) == 0;
      v22 = fsck_printf_err;
      if (v21)
      {
        v22 = fsck_printf_warn;
      }

      v22("found orphan directory record object (id %llu)\n", v16 & 0xFFFFFFFFFFFFFFFLL);
      v23 = v28;
      v24 = *(a3 + 5) >> 60;
      if (v24 == 14)
      {
        LODWORD(v24) = *(a3 + 13);
      }

      v25 = _apfs_type_to_str(v24);
      return sub_1000670B4(v23, 0, a3 + 5, v15, 0, v25, v8 != 0, v26);
    }
  }

  return result;
}

uint64_t sub_100068098(uint64_t a1, void *a2, unsigned __int16 *a3, unsigned int a4, unsigned int *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a3;
  if ((v8 & 0xF) != 7)
  {
    sub_10006A77C();
  }

  if ((v8 & 0x30) == 0x10)
  {
    if (((v8 >> 6) & 0x1F) - 1 >= 8)
    {
      sub_10006A7A8();
    }
  }

  else if ((v8 & 0x30) == 0x30)
  {
    sub_10006A7D4();
  }

  v50 = 0;
  if (a4 <= 0xC)
  {
    sub_100069BCC();
  }

  v13 = a3[1];
  if (v13 + 5 != a4)
  {
    sub_100069AF0();
  }

  v15 = (a3 + 5);
  v14 = *(a3 + 5);
  if (a4 <= 0x10 && (v14 & 0xF000000000000000) == 0xE000000000000000)
  {
    sub_100069BA0();
  }

  v16 = v14 >> 60;
  if (v14 >> 60 == 14)
  {
    LODWORD(v16) = *(a3 + 13);
  }

  if (v16 != 10 && v16 != 18)
  {
    sub_10006AB44();
  }

  if (v16 == 10)
  {
    if (v13 != 8)
    {
      sub_10006A82C();
    }
  }

  else if (v13 != 12)
  {
    sub_10006A800();
  }

  result = get_tree_for_jobj(a1, a2, v16, &v50, a5, a6, a7, a8);
  if (!result)
  {
    v18 = *a3;
    v19 = (v18 >> 4) & 3;
    if (v19 > 1)
    {
      if (v19 != 2)
      {
        return 22;
      }

      if (v16 == 10)
      {
        if (a6 != 32)
        {
          sub_10006AAEC();
        }
      }

      else if (a6 <= 0x33)
      {
        sub_10006AAC0();
      }

      v20 = (v18 & 0x800) == 0;
      v29 = fsck_printf_err;
      if (v20)
      {
        v29 = fsck_printf_warn;
      }

      v29("dir-stats (id %llu) is missing\n", *v15 & 0xFFFFFFFFFFFFFFFLL);
      v30 = v50;
      v31 = *v15 >> 60;
      if (v31 == 14)
      {
        LODWORD(v31) = *(a3 + 13);
      }

      v32 = _apfs_type_to_str(v31);
      return sub_100066FD8(v30, 0, a3 + 5, v13, a5, a6, v32, a7);
    }

    if (!v19)
    {
      if (a6)
      {
        sub_10006AB18();
      }

      v20 = (v18 & 0x800) == 0;
      v21 = fsck_printf_err;
      if (v20)
      {
        v21 = fsck_printf_warn;
      }

      v21("found invalid dir-stats object (id %llu)\n", *v15 & 0xFFFFFFFFFFFFFFFLL);
      v22 = v50;
      v23 = *v15 >> 60;
      if (v23 == 14)
      {
        LODWORD(v23) = *(a3 + 13);
      }

      v24 = _apfs_type_to_str(v23);
      return sub_1000670B4(v22, 0, a3 + 5, v13, 0, v24, a7 != 0, v25);
    }

    v26 = (v18 >> 6) & 0x1F;
    result = 22;
    if (v26 <= 4)
    {
      if (((v18 >> 6) & 0x1F) > 2)
      {
        if (v26 == 3)
        {
          if (v16 != 18)
          {
            sub_10006AA10();
          }

          if (a6 != 4)
          {
            sub_10006AA3C();
          }

          v20 = (v18 & 0x800) == 0;
          v27 = fsck_printf_err;
          if (v20)
          {
            v27 = fsck_printf_warn;
          }

          v41 = *v15 & 0xFFFFFFFFFFFFFFFLL;
          v47 = *a5;
          v28 = "flags of dir-stats object (id %llu) does not match expected value (0x%x)\n";
        }

        else
        {
          if (v26 != 4)
          {
            return result;
          }

          if (v16 != 18)
          {
            sub_10006A9B8();
          }

          if (a6 != 8)
          {
            sub_10006A9E4();
          }

          v20 = (v18 & 0x800) == 0;
          v27 = fsck_printf_err;
          if (v20)
          {
            v27 = fsck_printf_warn;
          }

          v38 = *v15 & 0xFFFFFFFFFFFFFFFLL;
          v44 = *a5;
          v28 = "origin_id of dir-stats object (id %llu) does not match expected value (%llu)\n";
        }
      }

      else if (v26 == 1)
      {
        if (a6 != 8)
        {
          sub_10006AA94();
        }

        v20 = (v18 & 0x800) == 0;
        v27 = fsck_printf_err;
        if (v20)
        {
          v27 = fsck_printf_warn;
        }

        v39 = *v15 & 0xFFFFFFFFFFFFFFFLL;
        v45 = *a5;
        v28 = "chained key of dir-stats object (id %llu) does not match expected value (%llu)\n";
      }

      else
      {
        if (v26 != 2)
        {
          return result;
        }

        if (a6 != 8)
        {
          sub_10006AA68();
        }

        v20 = (v18 & 0x800) == 0;
        v27 = fsck_printf_err;
        if (v20)
        {
          v27 = fsck_printf_warn;
        }

        v37 = *v15 & 0xFFFFFFFFFFFFFFFLL;
        v43 = *a5;
        v28 = "descendants of dir-stats object (id %llu) does not match expected value (%llu)\n";
      }

      goto LABEL_91;
    }

    if (((v18 >> 6) & 0x1F) > 6)
    {
      if (v26 != 7)
      {
        if (v26 != 8)
        {
          return result;
        }

        if (v16 != 18)
        {
          sub_10006A858();
        }

        if (a6 <= 3)
        {
          sub_10006A8B0();
        }

        if (*(a5 + 1) + 4 != a6)
        {
          sub_10006A884();
        }

        if ((v18 & 0x800) != 0)
        {
          v33 = fsck_printf_err;
        }

        else
        {
          v33 = fsck_printf_warn;
        }

        _xf_type_to_str(a3 + 5, *a5);
        v36 = *v15 & 0xFFFFFFFFFFFFFFFLL;
        v49 = *(a5 + 1);
        v35 = "%s xfield of dir-stats object (id %llu) does not match expected value (%llu)\n";
        goto LABEL_72;
      }

      if (v16 != 18)
      {
        sub_10006A8DC();
      }

      if (a6 != 8)
      {
        sub_10006A908();
      }

      v20 = (v18 & 0x800) == 0;
      v27 = fsck_printf_err;
      if (v20)
      {
        v27 = fsck_printf_warn;
      }

      v42 = *v15 & 0xFFFFFFFFFFFFFFFLL;
      v48 = *a5;
      v28 = "resource fork size of dir-stats object (id %llu) does not match expected value (%llu)\n";
    }

    else
    {
      if (v26 != 5)
      {
        if (v26 != 6)
        {
          return result;
        }

        if (v16 != 18)
        {
          sub_10006A934();
        }

        if (a6 != 1)
        {
          sub_10006A960();
        }

        if ((v18 & 0x800) != 0)
        {
          v33 = fsck_printf_err;
        }

        else
        {
          v33 = fsck_printf_warn;
        }

        _xf_type_to_str(a3 + 5, *a5);
        v34 = *v15 & 0xFFFFFFFFFFFFFFFLL;
        v35 = "%s xfield of dir-stats object (id %llu) exists unexpectedly\n";
LABEL_72:
        (v33)(v35);
        return sub_100068FB8(v50, (*a3 >> 6) & 0x1F, a3 + 5, v13, a5, a6, a7);
      }

      if (a6 != 8)
      {
        sub_10006A98C();
      }

      v20 = (v18 & 0x800) == 0;
      v27 = fsck_printf_err;
      if (v20)
      {
        v27 = fsck_printf_warn;
      }

      v40 = *v15 & 0xFFFFFFFFFFFFFFFLL;
      v46 = *a5;
      v28 = "physical size of dir-stats object (id %llu) does not match expected value (%llu)\n";
    }

LABEL_91:
    (v27)(v28);
    return sub_100068FB8(v50, (*a3 >> 6) & 0x1F, a3 + 5, v13, a5, a6, a7);
  }

  return result;
}

uint64_t sub_100068660(uint64_t a1, uint64_t a2, unsigned __int16 *a3, unsigned int a4, void *a5, int a6, uint64_t a7)
{
  if ((*a3 & 0xF) != 4)
  {
    sub_10006AB70();
  }

  if ((*a3 & 0x10) != 0)
  {
    sub_10006AB9C();
  }

  v27 = 0;
  result = get_snap_meta_tree(a1, a2, &v27);
  if (!result)
  {
    v13 = *a3;
    if (a6 != 8 * ((v13 & 0x30) != 0))
    {
      sub_10006ABC8();
    }

    if (a4 <= 0xC)
    {
      sub_100069BCC();
    }

    v14 = a3[1];
    if (v14 + 5 != a4)
    {
      sub_100069AF0();
    }

    v15 = *(a3 + 5);
    if (a4 <= 0x10 && (v15 & 0xF000000000000000) == 0xE000000000000000)
    {
      sub_100069BA0();
    }

    if (v14 <= 9)
    {
      sub_10006AC4C();
    }

    if (v15 != 0xBFFFFFFFFFFFFFFFLL)
    {
      sub_10006ABF4();
    }

    if (*(a3 + 13) + 10 != v14)
    {
      sub_10006AC20();
    }

    v16 = (v13 >> 4) & 3;
    if (v16 == 2)
    {
      v17 = (v13 & 0x800) == 0;
      v23 = fsck_printf_err;
      if (v17)
      {
        v23 = fsck_printf_warn;
      }

      v23("no snap_name entry found for snap_meta entry with xid %llu and name %.*s\n", *a5, *(a3 + 13), a3 + 15);
      v24 = v27;
      v25 = *(a3 + 5) >> 60;
      if (v25 == 14)
      {
        LODWORD(v25) = *(a3 + 13);
      }

      v26 = _apfs_type_to_str(v25);
      return sub_100066FD8(v24, 0, a3 + 5, v14, a5, 8, v26, a7);
    }

    else if (v16)
    {
      return 22;
    }

    else
    {
      v17 = (v13 & 0x800) == 0;
      v18 = fsck_printf_err;
      if (v17)
      {
        v18 = fsck_printf_warn;
      }

      v18("no snap_meta entry found for snap_name entry with name %.*s\n", *(a3 + 13), a3 + 15);
      v19 = v27;
      v20 = *(a3 + 5) >> 60;
      if (v20 == 14)
      {
        LODWORD(v20) = *(a3 + 13);
      }

      v21 = _apfs_type_to_str(v20);
      return sub_1000670B4(v19, 0, a3 + 5, v14, 0, v21, a7 != 0, v22);
    }
  }

  return result;
}

uint64_t sub_10006887C(uint64_t a1, void *a2, unsigned __int16 *a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a3;
  if ((v8 & 0xF) != 7)
  {
    sub_10006AC78();
  }

  if ((v8 & 0x20) != 0)
  {
    sub_10006ACA4();
  }

  v9 = a7;
  v10 = a6;
  if ((v8 & 0x10) != 0 && ((v8 >> 6) & 0x1F) - 26 >= 5)
  {
    sub_10006ACD0();
  }

  if (a4 <= 0xC)
  {
    sub_100069BCC();
  }

  v13 = a3[1];
  if (v13 + 5 != a4)
  {
    sub_100069AF0();
  }

  v15 = (a3 + 5);
  v14 = *(a3 + 5);
  if (a4 <= 0x10 && (v14 & 0xF000000000000000) == 0xE000000000000000)
  {
    sub_100069BA0();
  }

  if (v13 != 16 || v14 >> 60 != 13)
  {
    sub_10006AE5C();
  }

  v16 = HIBYTE(*(a3 + 13));
  if ((v16 - 3) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    sub_10006AE30();
  }

  v37 = 0;
  result = get_tree_for_jobj(a1, a2, 13, &v37, a5, a6, a7, a8);
  if (!result)
  {
    v18 = *a3;
    v19 = (v18 >> 4) & 3;
    if (v19 == 1)
    {
      if (HIBYTE(*(a3 + 13)) != 2)
      {
        sub_10006ACFC();
      }

      v23 = (v18 >> 6) & 0x1F;
      result = 22;
      if (v23 <= 0x1B)
      {
        if (v23 == 26)
        {
          if (v10)
          {
            sub_10006ADD8();
          }

          v20 = (v18 & 0x800) == 0;
          v24 = fsck_printf_err;
          if (v20)
          {
            v24 = fsck_printf_warn;
          }

          v36 = *v15 & 0xFFFFFFFFFFFFFFFLL;
          v25 = "file info: attribution tag (hash %llu) with invalid jobj_id (%llu)\n";
        }

        else
        {
          if (v23 != 27)
          {
            return result;
          }

          if (v10 != 8)
          {
            sub_10006AD28();
          }

          v20 = (v18 & 0x800) == 0;
          v24 = fsck_printf_err;
          if (v20)
          {
            v24 = fsck_printf_warn;
          }

          v25 = "file info: attribution tag with invalid hash (%llu)\n";
        }
      }

      else
      {
        switch(v23)
        {
          case 0x1Cu:
            if (v10 != 26)
            {
              sub_10006ADAC();
            }

            v20 = (v18 & 0x800) == 0;
            v24 = fsck_printf_err;
            if (v20)
            {
              v24 = fsck_printf_warn;
            }

            v34 = *a5;
            v25 = "file info: attribution tag (hash %llu): total count does not match expected value (%llu)\n";
            break;
          case 0x1Du:
            if (v10 != 26)
            {
              sub_10006AD80();
            }

            v20 = (v18 & 0x800) == 0;
            v24 = fsck_printf_err;
            if (v20)
            {
              v24 = fsck_printf_warn;
            }

            v35 = *(a5 + 8);
            v25 = "file info: attribution tag (hash %llu): physical size does not match expected value (%llu)\n";
            break;
          case 0x1Eu:
            if (v10 != 26)
            {
              sub_10006AD54();
            }

            v20 = (v18 & 0x800) == 0;
            v24 = fsck_printf_err;
            if (v20)
            {
              v24 = fsck_printf_warn;
            }

            v33 = *(a5 + 16);
            v25 = "file info: attribution tag (hash %llu): full clone size does not match expected value (%llu)\n";
            break;
          default:
            return result;
        }
      }

      (v24)(v25);
      return sub_100068FB8(v37, (*a3 >> 6) & 0x1F, a3 + 5, v13, a5, v10, v9);
    }

    if (v19)
    {
      return 22;
    }

    else
    {
      if (v10)
      {
        sub_10006AE04();
      }

      if (v16 == 1)
      {
        v20 = (v18 & 0x800) == 0;
        v21 = fsck_printf_err;
        if (v20)
        {
          v21 = fsck_printf_warn;
        }

        v30 = *(a3 + 5) & 0xFFFFFFFFFFFFFFFLL;
        v32 = *(a3 + 13) & 0xFFFFFFFFFFFFFFLL;
        v22 = "file info: found orphan data hash (id %llu) at logical address %llu\n";
      }

      else
      {
        v20 = (v18 & 0x800) == 0;
        v21 = fsck_printf_err;
        if (v20)
        {
          v21 = fsck_printf_warn;
        }

        v31 = *(a3 + 13) & 0x1FFFFFFFFFFFFFLL;
        v22 = "file info: found orphan attribution tag with hash (%llu)\n";
      }

      (v21)(v22);
      v26 = v37;
      v27 = *v15 >> 60;
      if (v27 == 14)
      {
        LODWORD(v27) = *(a3 + 13);
      }

      v28 = _apfs_type_to_str(v27);
      return sub_1000670B4(v26, 0, a3 + 5, v13, 0, v28, v9 != 0, v29);
    }
  }

  return result;
}

uint64_t sub_100068C38(uint64_t a1, void *a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((*a3 & 0xF) != 7)
  {
    sub_10006AE88();
  }

  if ((*a3 & 0x30) != 0)
  {
    sub_10006AEB4();
  }

  v8 = a7;
  v9 = a6;
  v20 = 0;
  result = get_tree_for_jobj(a1, a2, 16, &v20, a5, a6, a7, a8);
  if (!result)
  {
    if (a4 <= 0xC)
    {
      sub_100069BCC();
    }

    v13 = *(a3 + 2);
    if (v13 + 5 != a4)
    {
      sub_100069AF0();
    }

    if (a4 <= 0x10 && (*(a3 + 5) & 0xF000000000000000) == 0xE000000000000000)
    {
      sub_100069BA0();
    }

    if (*(a3 + 13) != 16)
    {
      sub_10006AEE0();
    }

    if (v13 != 28)
    {
      sub_10006AF0C();
    }

    if ((*a3 & 0x30) != 0)
    {
      return 22;
    }

    else
    {
      if (v9)
      {
        sub_10006AF38();
      }

      v14 = fsck_printf_err;
      if ((*a3 & 0x800) == 0)
      {
        v14 = fsck_printf_warn;
      }

      v15 = *(a3 + 25);
      v14("found orphan/invalid purgeable record (file_id %llu, atime %llu)\n", v15, *(a3 + 17));
      v16 = v20;
      v17 = *(a3 + 5) >> 60;
      if (v17 == 14)
      {
        LODWORD(v17) = *(a3 + 13);
      }

      v18 = _apfs_type_to_str(v17);
      return sub_1000670B4(v16, 0, a3 + 5, v13, 0, v18, v8 != 0, v19);
    }
  }

  return result;
}

uint64_t sub_100068DA8(uint64_t a1, void *a2, unsigned __int16 *a3, unsigned int a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((*a3 & 0xF) != 7)
  {
    sub_10006AF64();
  }

  if ((*a3 & 0x10) != 0)
  {
    sub_10006AF90();
  }

  v29 = 0;
  result = get_tree_for_jobj(a1, a2, 19, &v29, a5, a6, a7, a8);
  if (!result)
  {
    if (a4 <= 0xC)
    {
      sub_100069BCC();
    }

    v14 = a3[1];
    if (v14 + 5 != a4)
    {
      sub_100069AF0();
    }

    if (a4 <= 0x10 && (*(a3 + 5) & 0xF000000000000000) == 0xE000000000000000)
    {
      sub_100069BA0();
    }

    if (*(a3 + 13) != 19)
    {
      sub_10006AFBC();
    }

    if (v14 != 28)
    {
      sub_10006AFE8();
    }

    v15 = *a3;
    v16 = (v15 >> 4) & 3;
    if (v16 == 2)
    {
      if (a6 <= 7)
      {
        sub_10006B014();
      }

      v17 = (v15 & 0x800) == 0;
      v24 = fsck_printf_err;
      if (v17)
      {
        v24 = fsck_printf_warn;
      }

      v25 = *(a3 + 17);
      v24("need to insert missing clone mapping (private_id %llu, file_id %llu)\n", v25, *(a3 + 25));
      v26 = v29;
      v27 = *(a3 + 5) >> 60;
      if (v27 == 14)
      {
        LODWORD(v27) = *(a3 + 13);
      }

      v28 = _apfs_type_to_str(v27);
      return sub_100066FD8(v26, 0, a3 + 5, v14, a5, a6, v28, a7);
    }

    else if (v16)
    {
      return 22;
    }

    else
    {
      if (a6)
      {
        sub_10006B040();
      }

      v17 = (v15 & 0x800) == 0;
      v18 = fsck_printf_err;
      if (v17)
      {
        v18 = fsck_printf_warn;
      }

      v19 = *(a3 + 17);
      v18("found orphan/invalid clone mapping (private_id %llu, file_id %llu)\n", v19, *(a3 + 25));
      v20 = v29;
      v21 = *(a3 + 5) >> 60;
      if (v21 == 14)
      {
        LODWORD(v21) = *(a3 + 13);
      }

      v22 = _apfs_type_to_str(v21);
      return sub_1000670B4(v20, 0, a3 + 5, v14, 0, v22, a7 != 0, v23);
    }
  }

  return result;
}

uint64_t sub_100068FB8(uint64_t a1, int a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5, unsigned int a6, int a7)
{
  v13 = *a3 >> 60;
  if (v13 == 14)
  {
    LODWORD(v13) = *(a3 + 8);
  }

  v115 = _apfs_type_to_str(v13);
  v14 = malloc_type_calloc(1uLL, 0x340uLL, 0x2FA3EB61uLL);
  v122 = 0;
  v15 = malloc_type_calloc(1uLL, 0xEE0uLL, 0xF8F0F913uLL);
  v23 = v15;
  v121 = 3808;
  if (v14 && v15)
  {
    if (a7 == 1 || a7 != 2 && fsckAskPrompt(fsck_apfs_ctx, "Update %s objects? ", v17, v18, v19, v20, v21, v22, v115))
    {
      __memcpy_chk();
      v122 = a4;
      v24 = tree_lookup(a1, 0, 0, v14, &v122, 0x340u, v23, &v121);
      if (v24)
      {
        xfield = v24;
        strerror(v24);
        fsck_printf_err("failed to lookup %s object: %s\n", v26, v27, v28, v29, v30, v31, v32, v115);
        v33 = 819;
LABEL_10:
        fsck_fail_func(v33, xfield);
        goto LABEL_16;
      }

      v120 = 0;
      v119 = 0uLL;
      v118 = 0;
      if ((a2 - 13) > 1)
      {
        v43 = 0;
        v44 = 0;
        v45 = 0;
        v46 = 0;
      }

      else
      {
        if (v13 != 3)
        {
          sub_10006B06C();
        }

        xfield = get_xfield(v23 + 46, v121 - 92, 8, &v120, &v118, 0, 0);
        if (xfield)
        {
          goto LABEL_23;
        }

        if (v118 < 0x28u)
        {
          xfield = 34;
LABEL_23:
          v35 = *v14 & 0xFFFFFFFFFFFFFFFLL;
          strerror(xfield);
          fsck_printf_err("failed to get inode (id %llu) dstream: %s\n", v36, v37, v38, v39, v40, v41, v42, v35);
          v33 = 892;
          goto LABEL_10;
        }

        v46 = v120;
        v43 = *v120;
        v44 = v120[1];
        v45 = v120[2];
        v119 = *(v120 + 3);
      }

      switch(a2)
      {
        case 1:
          if (v13 != 10 && v13 != 18)
          {
            sub_10006B778();
          }

          if (a6 != 8)
          {
            sub_10006B74C();
          }

          v47 = *a5;
          if (v13 == 10)
          {
            goto LABEL_117;
          }

          *(v23 + 4) = v47;
          goto LABEL_128;
        case 2:
          if (v13 != 10 && v13 != 18)
          {
            sub_10006B720();
          }

          v60 = a5;
          if (a6 != 8)
          {
            sub_10006B6F4();
          }

          goto LABEL_73;
        case 3:
          if (v13 != 18)
          {
            sub_10006B69C();
          }

          if (a6 != 4)
          {
            sub_10006B6C8();
          }

          v23[12] = *a5;
          goto LABEL_128;
        case 4:
          if (v13 != 18)
          {
            sub_10006B644();
          }

          if (a6 != 8)
          {
            sub_10006B670();
          }

          *(v23 + 3) = *a5;
          goto LABEL_128;
        case 5:
          if (v13 != 10 && v13 != 18)
          {
            sub_10006B618();
          }

          if (a6 != 8)
          {
            sub_10006B5EC();
          }

          v59 = *a5;
          goto LABEL_113;
        case 6:
          if (v13 != 18)
          {
            sub_10006B568();
          }

          if (a6 != 1)
          {
            sub_10006B594();
          }

          v74 = *a5;
          if ((v74 - 1) >= 4u)
          {
            sub_10006B5C0();
          }

          LODWORD(v117) = v121 - 52;
          v75 = remove_xfield(v23 + 26, &v117, v74);
          if (v75)
          {
            xfield = v75;
            v76 = *v14 & 0xFFFFFFFFFFFFFFFLL;
            _xf_type_to_str(v14, v74);
            strerror(xfield);
            fsck_printf_err("failed to remove dir stats (id %llu) %s xfield: %s (%d)", v77, v78, v79, v80, v81, v82, v83, v76);
            v33 = 1377;
            goto LABEL_10;
          }

          v121 = v117 + 52;
          goto LABEL_128;
        case 7:
          if (v13 != 18)
          {
            sub_10006B510();
          }

          if (a6 != 8)
          {
            sub_10006B53C();
          }

          v47 = *a5;
          goto LABEL_117;
        case 8:
          if (v13 != 18)
          {
            sub_10006B48C();
          }

          if (a6 <= 3)
          {
            sub_10006B4E4();
          }

          v117 = 0;
          v70 = *(a5 + 1);
          if (v70 + 4 != a6)
          {
            sub_10006B4B8();
          }

          updated = update_dir_stats_xfield(v23, &v121, *a5, a5 + 4, v70, &v117);
          xfield = updated;
          if (!updated)
          {
            v72 = v117;
            if (v117)
            {
              goto LABEL_127;
            }
          }

          if (!updated)
          {
            goto LABEL_128;
          }

          goto LABEL_16;
        case 9:
          if (v13 != 6)
          {
            sub_10006B460();
          }

          goto LABEL_101;
        case 10:
          if (v13 != 8)
          {
            sub_10006B434();
          }

          goto LABEL_49;
        case 11:
          if (v13 != 8)
          {
            sub_10006B408();
          }

          *(v23 + 1) = 0;
          *(v23 + 2) = 0;
          goto LABEL_128;
        case 12:
          if (v13 != 3)
          {
            sub_10006B3DC();
          }

          v23[14] = *(a5 + 14);
          goto LABEL_128;
        case 13:
          if (!v46)
          {
            sub_10006B3B0();
          }

          v44 = *(a5 + 1);
          goto LABEL_92;
        case 14:
          if (!v46)
          {
            sub_10006B384();
          }

          v45 = *(a5 + 2);
          if (v45 == -1)
          {
            *(v23 + 6) |= 0x10uLL;
          }

LABEL_92:
          *v46 = v43;
          v46[1] = v44;
          v46[2] = v45;
          *(v46 + 3) = v119;
          goto LABEL_128;
        case 15:
          if (v13 != 3)
          {
            sub_10006B358();
          }

          v49 = *a5;
          LODWORD(v117) = v121 - 92;
          v50 = remove_xfield(v23 + 46, &v117, v49);
          v121 = v117 + 92;
          if (!v50)
          {
            goto LABEL_128;
          }

          xfield = v50;
          v51 = *v14 & 0xFFFFFFFFFFFFFFFLL;
          strerror(v50);
          fsck_printf_err("failed to remove inode (oid 0x%llx) xfield (type %u): %s\n", v52, v53, v54, v55, v56, v57, v58, v51);
          v33 = 893;
          goto LABEL_10;
        case 16:
          if (v13 != 3)
          {
            sub_10006B32C();
          }

          *(v23 + 6) |= 0x200uLL;
          v117 = 0;
          v61 = update_inode_sparse_bytes(v23, &v121, *a5, &v117);
          if (!v61)
          {
            goto LABEL_126;
          }

          xfield = v61;
          v62 = *v14 & 0xFFFFFFFFFFFFFFFLL;
          strerror(v61);
          fsck_printf_err("failed to repair inode sparse bytes (id %llu): %s\n", v63, v64, v65, v66, v67, v68, v69, v62);
          v33 = 1205;
          goto LABEL_10;
        case 17:
          if (v13 != 3)
          {
            sub_10006B300();
          }

          v48 = *(v23 + 6) | *a5;
          goto LABEL_76;
        case 18:
          if (v13 != 3)
          {
            sub_10006B2D4();
          }

          v48 = *(v23 + 6) & ~*a5;
LABEL_76:
          *(v23 + 6) = v48;
          goto LABEL_128;
        case 19:
          if (v13 != 3)
          {
            sub_10006B2A8();
          }

          v84 = v23[17] | *a5;
          goto LABEL_107;
        case 20:
          if (v13 != 3)
          {
            sub_10006B27C();
          }

          v84 = v23[17] & ~*a5;
LABEL_107:
          v23[17] = v84;
          goto LABEL_128;
        case 21:
          if (v13 != 3)
          {
            sub_10006B174();
          }

          if (a6 != 92)
          {
            sub_10006B1A0();
          }

          v73 = *(*(a1 + 8) + 40);
          if ((*(v73 + 57) & 2) != 0)
          {
            v23[21] = *(a5 + 21);
          }

          else
          {
            if ((*(v73 + 48) & 2) == 0)
            {
LABEL_81:
              xfield = 22;
              goto LABEL_16;
            }

            v116 = *(a5 + 21);
            v117 = 0;
            v95 = set_inode_xfield(v23, &v121, 17, &v116, 8, &v117);
            if (v95)
            {
              xfield = v95;
              v96 = *v14 & 0xFFFFFFFFFFFFFFFLL;
              strerror(v95);
              fsck_printf_err("failed to repair inode nlink (id %llu): %s\n", v97, v98, v99, v100, v101, v102, v103, v96);
              v33 = 1206;
              goto LABEL_10;
            }

LABEL_126:
            v72 = v117;
            if (v117)
            {
LABEL_127:
              free(v23);
              v23 = v72;
            }
          }

LABEL_128:
          v104 = tree_insert(a1, 0, v14, v122, v23, v121);
          xfield = v104;
          if (!v104)
          {
            goto LABEL_16;
          }

          strerror(v104);
          fsck_printf_err("failed to update %s object: %s\n", v105, v106, v107, v108, v109, v110, v111, v115);
          v33 = 706;
          break;
        case 22:
          if (v13 != 7)
          {
            sub_10006B250();
          }

LABEL_101:
          v85 = *a5;
          goto LABEL_104;
        case 23:
          if (v13 != 7)
          {
            sub_10006B224();
          }

          v85 = *v23 + 1;
LABEL_104:
          *v23 = v85;
          goto LABEL_128;
        case 24:
          if (v13 != 9)
          {
            sub_10006B1F8();
          }

          v86 = *(v14 + 2);
          *(v14 + 2) &= 0x3FFu;
          *(v14 + 2) = v86 & 0x3FF | (*a5 << 10);
          goto LABEL_120;
        case 25:
          if (v13 != 4)
          {
            sub_10006B1CC();
          }

          *(v23 + 7) = *a5;
          goto LABEL_128;
        case 26:
          if (v13 != 13)
          {
            sub_10006B148();
          }

          *v14 = 0xD000000000000009;
          goto LABEL_120;
        case 27:
          if (v13 != 13)
          {
            sub_10006B098();
          }

          v14[1] = *a5 & 0xFFFFFFFFFFFFFFLL | 0x200000000000000;
LABEL_120:
          v87 = tree_remove(a1, 0, a3, a4);
          if (!v87)
          {
            goto LABEL_128;
          }

          xfield = v87;
          v113 = *v14 & 0xFFFFFFFFFFFFFFFLL;
          strerror(v87);
          fsck_printf_err("failed to remove %s object (id %llu): %s\n", v88, v89, v90, v91, v92, v93, v94, v115);
          v33 = 950;
          goto LABEL_10;
        case 28:
          if (v13 != 13 || *(v14 + 15) != 2)
          {
            sub_10006B11C();
          }

LABEL_49:
          v60 = a5;
LABEL_73:
          *v23 = *v60;
          goto LABEL_128;
        case 29:
          if (v13 != 13 || *(v14 + 15) != 2)
          {
            sub_10006B0F0();
          }

          v59 = *(a5 + 1);
LABEL_113:
          *(v23 + 1) = v59;
          goto LABEL_128;
        case 30:
          if (v13 != 13 || *(v14 + 15) != 2)
          {
            sub_10006B0C4();
          }

          v47 = *(a5 + 2);
LABEL_117:
          *(v23 + 2) = v47;
          goto LABEL_128;
        default:
          goto LABEL_81;
      }

      goto LABEL_10;
    }

    xfield = 89;
LABEL_16:
    free(v14);
    if (!v23)
    {
      return xfield;
    }

    goto LABEL_13;
  }

  fsck_printf_err("unable to allocate memory for tree repairs\n", v16, v17, v18, v19, v20, v21, v22, v112);
  xfield = 12;
  fsck_fail_func(0x34B, 12);
  if (v14)
  {
    goto LABEL_16;
  }

  if (v23)
  {
LABEL_13:
    free(v23);
  }

  return xfield;
}

const char *_apfs_type_to_str(unsigned int a1)
{
  result = "unknown";
  if (a1 <= 0x14 && (a1 & 0x1E) != 0xE)
  {
    return off_1000E5120[a1];
  }

  return result;
}

const char *_xf_type_to_str(uint64_t a1, int a2)
{
  v2 = *a1 >> 60;
  if (v2 == 14)
  {
    LODWORD(v2) = *(a1 + 8);
  }

  result = "unknown";
  if (v2 <= 0xFu)
  {
    if (v2 == 3)
    {
      if ((a2 - 22) < 0xFFFFFFEB)
      {
        return result;
      }

      v4 = &unk_1000E51C8;
      return v4[a2];
    }

    if (v2 == 9)
    {
      if ((a2 - 3) < 0xFFFFFFFE)
      {
        return result;
      }

      v4 = &unk_1000E5278;
      return v4[a2];
    }

    v5 = "FILE_INFO_TAG_EXT_TYPE_SIGNING_ID";
    if (a2 != 1)
    {
      v5 = "unknown";
    }

    if (v2 == 13)
    {
      return v5;
    }
  }

  else if (v2 > 0x12u)
  {
    if (v2 == 19)
    {
      if ((a2 - 3) < 0xFFFFFFFE)
      {
        return result;
      }

      v4 = &unk_1000E52D0;
      return v4[a2];
    }

    if (v2 == 20 && (a2 - 3) >= 0xFFFFFFFE)
    {
      v4 = &unk_1000E52E8;
      return v4[a2];
    }
  }

  else
  {
    if (v2 == 16)
    {
      if ((a2 - 3) < 0xFFFFFFFE)
      {
        return result;
      }

      v4 = &unk_1000E5290;
      return v4[a2];
    }

    if (v2 == 18 && (a2 - 5) >= 0xFFFFFFFC)
    {
      v4 = &unk_1000E52A8;
      return v4[a2];
    }
  }

  return result;
}

uint64_t jkey_validate_len(uint64_t a1, unint64_t *a2, unsigned int a3, unsigned int *a4)
{
  if (!a2)
  {
    return 22;
  }

  if (a3 < 8)
  {
    return 92;
  }

  v4 = *a2;
  if (a3 <= 0xB && (v4 & 0xF000000000000000) == 0xE000000000000000)
  {
    return 92;
  }

  v6 = v4 >> 60;
  if (v6 == 14)
  {
    LODWORD(v6) = *(a2 + 8);
    if (v6 > 0x13)
    {
      v10 = 0;
      v8 = 8;
      goto LABEL_33;
    }
  }

  v7 = v6;
  if ((0xC201uLL >> v6))
  {
    v8 = 8;
  }

  else
  {
    v8 = dword_1000B31A0[v6];
  }

  v9 = v7 != 4 || v8 > a3;
  if (!v9 || v7 == 11 && v8 <= a3)
  {
    v10 = *(a2 + 4);
    goto LABEL_33;
  }

  if (v7 != 9)
  {
    v10 = 0;
    goto LABEL_33;
  }

  if (!a1)
  {
    return 22;
  }

  if ((*(a1 + 56) & 9) != 0)
  {
    if (a3 < 0xC)
    {
      v10 = 0;
    }

    else
    {
      v10 = a2[1] & 0x3FF;
    }

    v8 = 12;
  }

  else
  {
    if (a3 < 0xA)
    {
      v10 = 0;
    }

    else
    {
      v10 = *(a2 + 4);
    }

    v8 = 10;
  }

LABEL_33:
  if (a4)
  {
    *a4 = v8;
  }

  if (v10 + v8 <= a3)
  {
    return 0;
  }

  else
  {
    return 92;
  }
}

uint64_t jval_validate_len(void *a1, unsigned __int16 *a2, unsigned int a3, unsigned int *a4)
{
  if (!a2)
  {
    return 22;
  }

  v4 = *a1 >> 60;
  if (v4 == 14 && (LODWORD(v4) = *(a1 + 8), v4 > 0x13))
  {
    v5 = 0;
    LODWORD(v8) = 0;
    v6 = 0;
  }

  else
  {
    v5 = dword_1000B31F0[v4];
    v6 = v4 == 13;
    if (v4 == 13)
    {
      v8 = HIBYTE(a1[1]);
      if (v8 == 2)
      {
        v5 = 26;
      }

      if (v8 == 1)
      {
        LODWORD(v8) = 1;
        v5 = 3;
      }
    }

    else
    {
      LODWORD(v8) = 0;
    }

    if (v5 > a3)
    {
      goto LABEL_13;
    }
  }

  if (v4 > 4)
  {
    if (v4 == 5)
    {
      v9 = a2[4];
      goto LABEL_14;
    }

    if (v4 == 7)
    {
      v9 = a2[11];
      goto LABEL_14;
    }

    if (v4 == 9 && a3 - v5 >= 4)
    {
      v9 = a2[10];
      goto LABEL_14;
    }
  }

  else
  {
    switch(v4)
    {
      case 1:
        v9 = a2[24];
        goto LABEL_14;
      case 3:
        if (a3 - v5 >= 4)
        {
          v9 = a2[47];
          goto LABEL_14;
        }

        break;
      case 4:
        v9 = a2[1];
        goto LABEL_14;
    }
  }

  if (!v6)
  {
    v10 = a3 - v5;
    if (a3 - v5 >= 4 && v4 == 16)
    {
      v9 = a2[13];
    }

    else if (v10 >= 4 && v4 == 18)
    {
      v9 = a2[27];
    }

    else
    {
      v9 = 0;
      if (v10 >= 4 && v4 == 19)
      {
        v9 = a2[5];
      }
    }

    goto LABEL_14;
  }

  if (v8 == 2)
  {
    if (a3 - v5 >= 4)
    {
      v9 = a2[14];
      goto LABEL_14;
    }
  }

  else if (v8 == 1)
  {
    v9 = *(a2 + 2);
    goto LABEL_14;
  }

LABEL_13:
  v9 = 0;
LABEL_14:
  if (a4)
  {
    *a4 = v5;
  }

  if (v9 + v5 <= a3)
  {
    return 0;
  }

  else
  {
    return 92;
  }
}

uint64_t fext_tree_compare(uint64_t a1, void *a2, int a3, void *a4, int a5, int *a6)
{
  result = 22;
  if (a3 == 16 && a5 == 16)
  {
    if (*a2 >= *a4)
    {
      if (*a2 > *a4)
      {
        v7 = 1;
      }

      else
      {
        v8 = a2[1];
        v9 = a4[1];
        v10 = v8 >= v9;
        v7 = v8 > v9;
        if (!v10)
        {
          v7 = -1;
        }
      }
    }

    else
    {
      v7 = -1;
    }

    result = 0;
    *a6 = v7;
  }

  return result;
}

uint64_t clonegroup_tree_compare(int a1, void *__s1, size_t __n, void *__s2, unsigned int a5, int *a6)
{
  result = 22;
  if (__n >= 9 && a5 >= 9)
  {
    if (*__s1 < *__s2)
    {
LABEL_4:
      v8 = -1;
LABEL_7:
      result = 0;
      *a6 = v8;
      return result;
    }

    if (*__s1 > *__s2)
    {
      goto LABEL_6;
    }

    v9 = *(__s1 + 8);
    v10 = *(__s2 + 8);
    if (v9 < v10)
    {
      goto LABEL_4;
    }

    if (v9 > v10)
    {
LABEL_6:
      v8 = 1;
      goto LABEL_7;
    }

    if (v9 == 2)
    {
      result = 22;
      if (__n == a5 && __n >= 0x11 && a5 >= 0x11)
      {
        v15 = *(__s1 + 9);
        v16 = *(__s2 + 9);
        v17 = v15 >= v16;
        v8 = v15 > v16;
        if (!v17)
        {
          v8 = -1;
        }

        goto LABEL_7;
      }
    }

    else
    {
      if (v9 != 1)
      {
        if (__n != a5)
        {
          return 22;
        }

        v8 = memcmp(__s1, __s2, __n);
        goto LABEL_7;
      }

      result = 22;
      if (__n == a5 && __n >= 0x19 && a5 >= 0x19)
      {
        v11 = *(__s1 + 9);
        v12 = *(__s2 + 9);
        if (v11 < v12)
        {
          goto LABEL_4;
        }

        if (v11 <= v12)
        {
          v13 = *(__s1 + 17);
          v14 = *(__s2 + 17);
          if (v13 >= v14)
          {
            v8 = v13 > v14;
            goto LABEL_7;
          }

          goto LABEL_4;
        }

        goto LABEL_6;
      }
    }
  }

  return result;
}

uint64_t jkey_compare(uint64_t a1, unint64_t *a2, unsigned int a3, unint64_t *a4, unsigned int a5, int *a6)
{
  if (a1 && *(a1 + 24) != 13)
  {
    return 22;
  }

  v11 = 22;
  if (a3 >= 8 && a5 >= 8)
  {
    if (jkey_validate_len(a1, a2, a3, 0) || jkey_validate_len(a1, a4, a5, 0))
    {
      return 22;
    }

    v13 = *a2 & 0xFFFFFFFFFFFFFFFLL;
    v14 = *a4 & 0xFFFFFFFFFFFFFFFLL;
    if (v13 < v14)
    {
      goto LABEL_10;
    }

    if (v13 <= v14)
    {
      v16 = *a2 >> 60;
      if (v16 == 14)
      {
        LODWORD(v16) = *(a2 + 8);
      }

      v17 = *a4 >> 60;
      if (v17 == 14)
      {
        LODWORD(v17) = *(a4 + 8);
      }

      if (!v16)
      {
        v18 = v17 == 0;
LABEL_24:
        if (v18)
        {
          v15 = 0;
        }

        else
        {
          v15 = -1;
        }

        goto LABEL_27;
      }

      if (v17)
      {
        if (v16 < v17)
        {
LABEL_10:
          v15 = -1;
LABEL_27:
          v11 = 0;
          *a6 = v15;
          return v11;
        }

        if (v16 <= v17)
        {
          v11 = 45;
          switch(v16)
          {
            case 1:
            case 2:
            case 3:
            case 6:
            case 7:
            case 10:
            case 12:
            case 18:
              goto LABEL_22;
            case 4:
            case 11:
              goto LABEL_33;
            case 5:
              v25 = a2[1];
              v26 = a4[1];
              if (!v25)
              {
                goto LABEL_56;
              }

              if (v26)
              {
                goto LABEL_47;
              }

              break;
            case 8:
              v25 = a2[1];
              v26 = a4[1];
              if (v25 == -1)
              {
                v18 = v26 == -1;
                goto LABEL_24;
              }

              if (v26 == -1)
              {
                break;
              }

LABEL_47:
              v31 = v25 > v26;
              if (v25 >= v26)
              {
                goto LABEL_52;
              }

              goto LABEL_10;
            case 9:
              if (!a1)
              {
                return 22;
              }

              if ((*(a1 + 56) & 9) == 0)
              {
LABEL_33:
                v22 = *(a2 + 4);
                v24 = *(a4 + 4);
                v21 = a2 + 10;
                v23 = a4 + 10;
                goto LABEL_34;
              }

              v19 = *(a2 + 2);
              v20 = *(a4 + 2);
              if (v19 >> 10 < v20 >> 10)
              {
                goto LABEL_10;
              }

              if (v19 >> 10 <= v20 >> 10)
              {
                v21 = a2 + 12;
                v22 = v19 & 0x3FF;
                v23 = a4 + 12;
                v24 = v20 & 0x3FF;
LABEL_34:
                v15 = sub_10006C02C(v21, v22, v23, v24);
                goto LABEL_27;
              }

              break;
            case 13:
              v36 = a2[1];
              v37 = HIBYTE(v36);
              v38 = a4[1];
              v39 = HIBYTE(v38);
              if (!HIBYTE(v36))
              {
                v18 = v39 == 0;
                goto LABEL_24;
              }

              if (!v39)
              {
                break;
              }

              if (v37 != v39)
              {
                if (v37 < v39)
                {
                  v15 = -1;
                }

                else
                {
                  v15 = 1;
                }

                goto LABEL_27;
              }

              v40 = v36 & 0xFFFFFFFFFFFFFFLL;
              v41 = v38 & 0xFFFFFFFFFFFFFFLL;
              if (v40 == 0xFFFFFFFFFFFFFFLL)
              {
                v18 = v41 == 0xFFFFFFFFFFFFFFLL;
                goto LABEL_24;
              }

              if (v41 == 0xFFFFFFFFFFFFFFLL)
              {
                break;
              }

              v31 = v40 > v41;
              if (v40 < v41)
              {
                goto LABEL_10;
              }

              goto LABEL_52;
            case 16:
              v27 = *(a2 + 12);
              v26 = *(a4 + 12);
              if (!v27)
              {
LABEL_56:
                v18 = v26 == 0;
                goto LABEL_24;
              }

              if (!v26)
              {
                break;
              }

              v28 = v27 > v26;
              if (v27 < v26)
              {
                goto LABEL_10;
              }

LABEL_50:
              if (v28)
              {
                break;
              }

              v34 = *(a2 + 20);
              v35 = *(a4 + 20);
              v31 = v34 > v35;
              if (v34 < v35)
              {
                goto LABEL_10;
              }

LABEL_52:
              if (!v31)
              {
LABEL_22:
                v15 = 0;
                goto LABEL_27;
              }

              break;
            case 17:
              v29 = *(a2 + 12);
              v30 = *(a4 + 12);
              if (v29 < v30)
              {
                goto LABEL_10;
              }

              if (v29 == v30)
              {
                goto LABEL_22;
              }

              v31 = v29 > v30;
              goto LABEL_52;
            case 19:
              v32 = *(a2 + 12);
              v33 = *(a4 + 12);
              v28 = v32 > v33;
              if (v32 < v33)
              {
                goto LABEL_10;
              }

              goto LABEL_50;
            default:
              return v11;
          }
        }
      }
    }

    v15 = 1;
    goto LABEL_27;
  }

  return v11;
}

uint64_t sub_10006C02C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2 >= a4)
  {
    v4 = a4;
  }

  else
  {
    v4 = a2;
  }

  if (!v4 || (v5 = v4 - 1, v4 == 1))
  {
LABEL_13:
    if (a2 < a4)
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return a2 > a4;
    }
  }

  else
  {
    v6 = 0;
    while (1)
    {
      v7 = *(a1 + v6);
      v8 = v7 - *(a3 + v6);
      if (v8)
      {
        break;
      }

      ++v6;
      if (v7)
      {
        v9 = v6 >= v5;
      }

      else
      {
        v9 = 1;
      }

      if (v9)
      {
        goto LABEL_13;
      }
    }
  }

  return v8;
}

uint64_t lookup_in_dir(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, unsigned __int8 a5, uint64_t a6, uint64_t a7)
{
  v46[0] = 0;
  *v47 = 0u;
  v50[1] = 0;
  v46[1] = a3;
  LODWORD(v47[1]) = 3808;
  v48 = a6;
  v49 = a7;
  v50[0] = 0;
  v51 = a5;
  v47[0] = malloc_type_calloc(1uLL, 0xEE0uLL, 0xA93B1C53uLL);
  if (v47[0])
  {
    fsroot_tree = get_fsroot_tree(a1, a2, v46);
    if (fsroot_tree)
    {
      v26 = fsroot_tree;
      fsck_printf_err("failed to init fsroot tree for lookup in directory\n", v19, v20, v21, v22, v23, v24, v25, v42);
      v27 = 1285;
    }

    else
    {
      v28 = sub_10006C30C(v50, a4);
      if (!v28)
      {
        while (SLODWORD(v50[0]) >= 1)
        {
          v37 = *(v50[1] + --LODWORD(v50[0]));
          v44 = v37 & 0xFFFFFFFFFFFFFFFLL | 0x9000000000000000;
          v45 = 0;
          v42 = v44;
          v43 = 0;
          v38 = *(a2[5] + 56);
          if ((v38 & 9) != 0)
          {
            v39 = &v42;
          }

          else
          {
            v39 = &v44;
          }

          if ((v38 & 9) != 0)
          {
            v40 = 12;
          }

          else
          {
            v40 = 10;
          }

          v41 = fsroot_iterate(a1, a2, a3, 1, v39, v40, sub_10006C590, v46);
          if (v41)
          {
            return v41;
          }
        }

        v26 = 0;
        goto LABEL_8;
      }

      v26 = v28;
      fsck_printf_err("failed to allocate dir-stack memory for lookup in directory\n", v29, v30, v31, v32, v33, v34, v35, v42);
      v27 = 1286;
    }

    fsck_fail_func(v27, v26);
LABEL_8:
    if (v47[0])
    {
      free(v47[0]);
    }

    goto LABEL_10;
  }

  fsck_printf_err("failed to allocate memory for lookup in directory\n", v11, v12, v13, v14, v15, v16, v17, v42);
  v26 = 12;
  fsck_fail_func(0x504, 12);
LABEL_10:
  if (v50[1])
  {
    free(v50[1]);
  }

  return v26;
}

uint64_t get_tree_for_jobj(uint64_t a1, void *a2, int a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a3 <= 5)
  {
    if ((a3 - 3) >= 3)
    {
      if (a3 != 1)
      {
        if (a3 == 2)
        {
          return get_extentref_tree(a1, a2, a4);
        }

        return 22;
      }

      return get_snap_meta_tree(a1, a2, a4);
    }

    return get_fsroot_tree(a1, a2, a4);
  }

  if (a3 <= 0x13)
  {
    if (((1 << a3) & 0x3600) != 0)
    {
      return get_fsroot_tree(a1, a2, a4);
    }

    if (((1 << a3) & 0xD0000) != 0)
    {
LABEL_12:
      if (*(a2[5] + 1096))
      {
        return get_secondary_fsroot_tree(a1, a2, a4);
      }

      return get_fsroot_tree(a1, a2, a4);
    }

    if (a3 == 11)
    {
      return get_snap_meta_tree(a1, a2, a4);
    }
  }

  if ((a3 - 6) < 2)
  {
    goto LABEL_12;
  }

  if (a3 == 8)
  {
    v9 = a2[6];
    if (!v9)
    {
      v9 = a2[5];
    }

    if ((*(v9 + 56) & 0x20) != 0)
    {
      return get_fext_tree(a1, a2, a4, a4, a5, a6, a7, a8);
    }

    goto LABEL_12;
  }

  return 22;
}

uint64_t sub_10006C30C(uint64_t a1, uint64_t a2)
{
  v5 = *a1;
  v4 = *(a1 + 4);
  if (*a1 >= v4)
  {
    if (v5 > 4095)
    {
      return 12;
    }

    v7 = v4 ? 2 * v4 : 32;
    v6 = malloc_type_realloc(*(a1 + 8), 8 * v7, 0x100004000313F17uLL);
    if (!v6)
    {
      return 12;
    }

    *(a1 + 8) = v6;
    *(a1 + 4) = v7;
    v5 = *a1;
  }

  else
  {
    v6 = *(a1 + 8);
  }

  v8 = 0;
  *a1 = v5 + 1;
  v6[v5] = a2;
  return v8;
}

uint64_t fsroot_iterate(uint64_t a1, void *a2, uint64_t a3, int a4, unsigned __int8 *a5, uint64_t a6, uint64_t (*a7)(void), uint64_t a8)
{
  v9 = a6;
  v13 = *a5 >> 60;
  if (v13 == 14)
  {
    LODWORD(v13) = a5[8];
  }

  v47 = 0;
  tree_for_jobj = get_tree_for_jobj(a1, a2, v13, &v47, a5, a6, a7, a8);
  if (tree_for_jobj)
  {
    v15 = tree_for_jobj;
    v16 = strerror(tree_for_jobj);
    fsck_printf_err("unable to init fsroot tree: %s\n", v17, v18, v19, v20, v21, v22, v23, v16);
    v24 = 1085;
LABEL_7:
    fsck_fail_func(v24, v15);
    return v15;
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v42 = 0u;
  v25 = path_iterator_init(&v42, v47, a3, a5, v9);
  if (v25)
  {
    v15 = v25;
    v26 = strerror(v25);
    fsck_printf_err("unable to init fsroot tree iterator: %s\n", v27, v28, v29, v30, v31, v32, v33, v26);
    v24 = 1086;
    goto LABEL_7;
  }

  if (v43)
  {
    v35 = *a5 >> 60;
    if (v35 == 14)
    {
      LODWORD(v35) = a5[8];
    }

    v36 = *v43 >> 60;
    if (v36 == 14)
    {
      LODWORD(v36) = *(v43 + 8);
    }

    v37 = v35 == v36;
  }

  else
  {
    v37 = 0;
  }

  LODWORD(v15) = 0;
  if ((BYTE8(v44) & 1) == 0)
  {
    v38 = a4 ^ 1;
    if (v37 | v38)
    {
      while (1)
      {
        if (v37)
        {
          v39 = a7();
          if (v39)
          {
            break;
          }
        }

        v39 = (*(&v42 + 1))(&v42);
        if (v39)
        {
          break;
        }

        if (v43)
        {
          v40 = *a5 >> 60;
          if (v40 == 14)
          {
            LODWORD(v40) = a5[8];
          }

          v41 = *v43 >> 60;
          if (v41 == 14)
          {
            LODWORD(v41) = *(v43 + 8);
          }

          v37 = v40 == v41;
        }

        else
        {
          v37 = 0;
        }

        LODWORD(v15) = 0;
        if ((BYTE8(v44) & 1) != 0 || ((v37 | v38) & 1) == 0)
        {
          goto LABEL_32;
        }
      }

      LODWORD(v15) = v39;
    }
  }

LABEL_32:
  if (v42)
  {
    (v42)(&v42);
  }

  if (v15 == -1)
  {
    return 0;
  }

  else
  {
    return v15;
  }
}

uint64_t sub_10006C590(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v47 = 8;
  v7 = *(a5 + 8);
  v8 = *(a5 + 16);
  v48 = *a3 & 0xFFFFFFFFFFFFFFFLL | 0x3000000000000000;
  *(a5 + 24) = 3808;
  v9 = tree_lookup(*a5, v7, 0, &v48, &v47, 8u, v8, (a5 + 24));
  if (v9)
  {
    v10 = v9;
    if (v9 == 2)
    {
      return 0;
    }

    v13 = *a3;
    strerror(v9);
    fsck_printf_err("unable to load inode (oid 0x%llx) for lookup in purgatory directory: %s\n", v14, v15, v16, v17, v18, v19, v20, v13);
    v21 = 1281;
LABEL_16:
    fsck_fail_func(v21, v10);
    return v10;
  }

  v11 = (*(a5 + 32))(&v48, v47, v8, *(a5 + 24), *(a5 + 40));
  if (!v11)
  {
    if ((v8[40] & 0xF000) == 0x4000)
    {
      v10 = sub_10006C30C(a5 + 48, *a3);
      if (!v10)
      {
        return v10;
      }

      fsck_fail_func(0x503, v10);
      if (*(a5 + 64) != 1)
      {
        fsck_printf_err("failed to allocate dir-stack memory for lookup in directory\n", v22, v23, v24, v25, v26, v27, v28, v46);
        return v10;
      }

      if ((*(a5 + 65) & 1) == 0)
      {
        v29 = strerror(v10);
        fsck_printf_warn("failed to allocate dir-stack memory for lookup in directory: %s; results may be incomplete\n", v30, v31, v32, v33, v34, v35, v36, v29);
        v10 = 0;
        *(a5 + 65) = 1;
        return v10;
      }
    }

    return 0;
  }

  v10 = v11;
  if (v11 != -1)
  {
    v37 = *a3;
    strerror(v11);
    fsck_printf_err("failed to run predicate callback on inode (oid 0x%llx) for lookup in directory: %s\n", v38, v39, v40, v41, v42, v43, v44, v37);
    v21 = 1282;
    goto LABEL_16;
  }

  v12 = *(a5 + 56);
  if (v12)
  {
    free(v12);
  }

  *(a5 + 48) = 0;
  *(a5 + 56) = 0;
  return 0xFFFFFFFFLL;
}

uint64_t is_file_in_purgatory(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v103 = 0;
  v100 = 3808;
  v101 = 8;
  *a5 = 0;
  if (!a4)
  {
    return 0;
  }

  v6 = a4;
  v10 = malloc_type_calloc(1uLL, 0xEE0uLL, 0xC514A027uLL);
  if (!v10)
  {
    fsck_printf_err("failed to allocate memory for file lookup in purgatory directory\n", v11, v12, v13, v14, v15, v16, v17, v97);
    v27 = 12;
    fsck_fail_func(0x32C, 12);
    return v27;
  }

  v18 = v10;
  v102 = 0;
  fsroot_tree = get_fsroot_tree(a1, a2, &v103);
  if (fsroot_tree)
  {
    v27 = fsroot_tree;
    fsck_printf_err("failed to init fsroot tree for file lookup in purgatory directory\n", v20, v21, v22, v23, v24, v25, v26, v97);
    v28 = 805;
LABEL_5:
    fsck_fail_func(v28, v27);
    goto LABEL_58;
  }

  if ((v6 - 3) > 0xFFFFFFFFFFFFFFFDLL)
  {
    goto LABEL_57;
  }

  v29 = 0;
  v98 = v18;
  while (1)
  {
    v30 = malloc_type_calloc(1uLL, 0x340uLL, 0xF4F6693FuLL);
    v31 = malloc_type_calloc(1uLL, 0xEE0uLL, 0x50A9EED1uLL);
    v39 = v31;
    if (v30 && v31)
    {
      v40 = v29;
      v111 = 0u;
      v112 = 0u;
      *__str = 0u;
      v110 = 0u;
      if (snprintf(__str, 0x40uLL, "0x%llx-dead", v6) >= 0x40)
      {
        sub_10006D77C();
      }

      v106 = 0;
      v41 = *(*(a2 + 40) + 56);
      v105 = 18;
      v99 = strlen(__str);
      *a5 = 0;
      v42 = get_fsroot_tree(a1, a2, &v106);
      if (v42)
      {
        v27 = v42;
        fsck_printf_err("failed to init fsroot tree for file lookup in directory\n", v43, v44, v45, v46, v47, v48, v49, v97);
        fsck_fail_func(0x329, v27);
        v29 = v40;
        v18 = v98;
        goto LABEL_53;
      }

      v79 = v99 + 1;
      *v30 = 0x9000000000000003;
      if ((v41 & 9) != 0)
      {
        v104 = -1;
        if (utf8_normalizeOptCaseFoldAndHash(__str, v99, (v41 >> 3) & 1, sub_10006D73C, &v104))
        {
          v29 = v40;
          v18 = v98;
LABEL_48:
          if ((*a5 & 1) != 0 && *v39 != v6)
          {
            v27 = 0;
            *a5 = 0;
          }

          else
          {
            v27 = 0;
          }

          goto LABEL_53;
        }

        __memcpy_chk();
        v30[2] = v79 & 0x3FF | (v104 << 10);
        v80 = v99 + 13;
      }

      else
      {
        __memcpy_chk();
        *(v30 + 4) = v79;
        v80 = v99 + 11;
      }

      LODWORD(v108) = v80;
      v29 = v40;
      v81 = tree_lookup(v106, a3, 0, v30, &v108, 0x340u, v39, &v105);
      v18 = v98;
      if (v81 != 2)
      {
        v27 = v81;
        if (v81)
        {
          strerror(v81);
          fsck_printf_err("unable to load drec (oid 0x%llx) for file lookup in directory\n: %s\n", v82, v83, v84, v85, v86, v87, v88, 3);
          fsck_fail_func(0x321, v27);
          goto LABEL_53;
        }

        *a5 = 1;
      }

      goto LABEL_48;
    }

    fsck_printf_err("failed to allocate memory for file lookup in purgatory directory\n", v32, v33, v34, v35, v36, v37, v38, v97);
    v27 = 12;
    fsck_fail_func(0x32B, 12);
    if (!v30)
    {
      if (!v39)
      {
        goto LABEL_18;
      }

LABEL_17:
      free(v39);
      goto LABEL_18;
    }

LABEL_53:
    free(v30);
    if (v39)
    {
      goto LABEL_17;
    }

LABEL_18:
    if (v27)
    {
      goto LABEL_58;
    }

    if (*a5)
    {
      goto LABEL_57;
    }

    v108 = 0;
    v112 = 0u;
    v113 = 0u;
    v110 = 0u;
    v111 = 0u;
    *__str = 0u;
    v106 = 0x9000000000000003;
    v107 = 0;
    *a5 = 0;
    v50 = get_fsroot_tree(a1, a2, &v108);
    if (v50)
    {
      v27 = v50;
      fsck_printf_err("failed to init fsroot tree for file lookup in directory\n", v51, v52, v53, v54, v55, v56, v57, v97);
      v58 = 810;
LABEL_24:
      fsck_fail_func(v58, v27);
      goto LABEL_25;
    }

    v59 = path_iterator_init(__str, v108, a3, &v106, 0xCu);
    if (v59)
    {
      v27 = v59;
      v60 = strerror(v59);
      fsck_printf_err("unable to initialize fsroot tree iterator for file lookup in directory: %s\n", v61, v62, v63, v64, v65, v66, v67, v60);
      v58 = 803;
      goto LABEL_24;
    }

    while (1)
    {
      if ((BYTE8(v111) & 1) != 0 || *v110 != 0x9000000000000003)
      {
        v27 = 0;
        goto LABEL_25;
      }

      if (**(&v110 + 1) == v6)
      {
        break;
      }

      v70 = (*&__str[8])(__str);
      if (v70)
      {
        v27 = v70;
        v71 = strerror(v70);
        fsck_printf_err("error iterating fsroot tree for file lookup in directory: %s\n", v72, v73, v74, v75, v76, v77, v78, v71);
        v58 = 804;
        goto LABEL_24;
      }
    }

    v27 = 0;
    *a5 = 1;
LABEL_25:
    if (*__str)
    {
      (*__str)(__str);
    }

    if (v27)
    {
      goto LABEL_58;
    }

    if (*a5)
    {
      goto LABEL_57;
    }

    v102 = v6 & 0xFFFFFFFFFFFFFFFLL | 0x3000000000000000;
    v100 = 3808;
    v68 = tree_lookup(v103, a3, 0, &v102, &v101, v101, v18, &v100);
    v27 = v68;
    if (v68)
    {
      break;
    }

    v6 = *v18;
    if ((*v18 - 3) <= 0xFFFFFFFFFFFFFFFDLL && v29++ < 0x1FF)
    {
      continue;
    }

    goto LABEL_58;
  }

  if (v68 != 2)
  {
    strerror(v68);
    fsck_printf_err("unable to load inode (oid 0x%llx) for file lookup in purgatory directory: %s\n", v90, v91, v92, v93, v94, v95, v96, v6);
    v28 = 802;
    goto LABEL_5;
  }

LABEL_57:
  v27 = 0;
LABEL_58:
  free(v18);
  return v27;
}

uint64_t get_extentref_tree_at_xid(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a4)
  {
    return tree_init_ext(a1, a2, a3, *(*(a3 + 40) + 120) & 0xC0000000, *(*(a3 + 40) + 120), 15, 0, *(*(a2 + 8) + 36), 0, 0, 0, *(*(a3 + 40) + 144), jkey_compare);
  }

  v31 = 0;
  snap_meta_tree = get_snap_meta_tree(a2, a3, &v31);
  if (!snap_meta_tree)
  {
    v9 = malloc_type_malloc(0x340uLL, 0x41C81BDDuLL);
    v10 = malloc_type_malloc(0xEE0uLL, 0x6316D6F7uLL);
    v18 = v10;
    if (v9 && v10)
    {
      *v9 = a4 & 0xFFFFFFFFFFFFFFFLL | 0x1000000000000000;
      v29 = 3808;
      v30 = 8;
      v19 = tree_lookup(v31, 0, 0, v9, &v30, 0x340u, v10, &v29);
      if (v19)
      {
        snap_meta_tree = v19;
        strerror(v19);
        fsck_printf_err("failed to lookup extentref tree oid at snap_xid %llu : %s\n", v20, v21, v22, v23, v24, v25, v26, a4);
      }

      else
      {
        snap_meta_tree = tree_init_ext(a1, a2, a3, v18[10] & 0xC0000000, v18[10], 15, 0, *(*(a2 + 8) + 36), 0, 0, 0, *v18, jkey_compare);
      }
    }

    else
    {
      fsck_printf_err("failed to allocate memory for the extentref tree\n", v11, v12, v13, v14, v15, v16, v17, v28);
      snap_meta_tree = 12;
      if (!v9)
      {
LABEL_12:
        if (v18)
        {
          free(v18);
        }

        return snap_meta_tree;
      }
    }

    free(v9);
    goto LABEL_12;
  }

  return snap_meta_tree;
}

uint64_t get_xfield(unsigned __int16 *a1, unsigned int a2, int a3, void *a4, _WORD *a5, _DWORD *a6, unsigned int *a7)
{
  if (a2 < 4)
  {
    return 92;
  }

  v7 = *a1;
  if (!*a1)
  {
    return 2;
  }

  if (a1[1] + 4 * v7 + 4 > a2)
  {
    return 92;
  }

  v8 = 0;
  v9 = 0;
  for (i = a1 + 3; ; i += 2)
  {
    v11 = *i;
    if (*(i - 2) == a3)
    {
      break;
    }

    v9 += (v11 + 7) & 0x1FFF8;
    if (v7 == ++v8)
    {
      return 2;
    }
  }

  v13 = a1[1];
  if (v11 > v13 || v13 - v11 < v9)
  {
    return 92;
  }

  if (a4)
  {
    *a4 = &a1[2 * v7 + 2] + v9;
  }

  if (a5)
  {
    *a5 = v11;
  }

  if (a6)
  {
    *a6 = v8;
  }

  result = 0;
  if (a7)
  {
    *a7 = v9;
  }

  return result;
}

uint64_t add_xfield(unsigned __int16 *a1, unsigned int a2, int a3, const void *a4, unsigned int a5, char a6)
{
  if (a2 < 4)
  {
    return 92;
  }

  v9 = a3;
  v12 = a1 + 2;
  v13 = *a1;
  if (get_xfield(a1, a2, a3, 0, 0, 0, 0) != 2)
  {
    sub_10006D7A8();
  }

  v21 = (a5 + 7) & 0xFFF8;
  v22 = *a1;
  if (*a1)
  {
    v23 = a1[1];
    if (4 * v22 + v21 + v23 + 8 > a2)
    {
      return 92;
    }

    v24 = 0;
    v25 = a1 + 3;
    do
    {
      v26 = *v25;
      v25 += 2;
      v24 += (v26 + 7) & 0x1FFF8;
      --v22;
    }

    while (v22);
    if (v24 >= 0x10000)
    {
      fsck_printf_err("xf: xf total size (%u) is larger than UINT16_MAX\n", v14, v15, v16, v17, v18, v19, v20, v24);
      v27 = 92;
      fsck_fail_func(0x43F, 92);
      return v27;
    }
  }

  else
  {
    if (a2 < (v21 | 4u))
    {
      return 92;
    }

    v24 = 0;
    LODWORD(v23) = a1[1];
  }

  v28 = &v12[2 * v13];
  if (v24 != v23)
  {
    if (v24 <= v23)
    {
      fsck_printf_warn("xf: xf_used_data (%u) is larger than expected (%u)\n", v14, v15, v16, v17, v18, v19, v20, v23);
      fsck_fail_func(0x440, -11);
      if (fsckAskPrompt(fsck_apfs_ctx, "Fix xf_used_data? ", v29, v30, v31, v32, v33, v34, v38))
      {
        bzero(v28 + v24, a1[1] - v24);
        a1[1] = v24;
        LOWORD(v23) = v24;
        goto LABEL_15;
      }
    }

    return 92;
  }

LABEL_15:
  memmove(v28 + 2, &v12[2 * v13], v23);
  v35 = *a1;
  v36 = &v12[2 * v35];
  *v36 = v9;
  *(v36 + 1) = a6;
  v36[1] = a5;
  *a1 = v35 + 1;
  memcpy(v28 + a1[1] + 4, a4, a5);
  if (a5 != v21)
  {
    bzero(v28 + a5 + a1[1] + 4, (v21 - a5));
  }

  v27 = 0;
  a1[1] += v21;
  return v27;
}

uint64_t remove_xfield(unsigned __int16 *a1, unsigned int *a2, int a3)
{
  __dst = 0;
  v15 = 0;
  v13 = 0;
  v14 = 0;
  v6 = a1 + 2;
  v5 = *a1;
  result = get_xfield(a1, *a2, a3, &__dst, &v15, &v14, &v13);
  if (!result)
  {
    v8 = (v15 + 7) & 0x1FFF8;
    v9 = (a1[1] + 7) & 0x1FFF8;
    v10 = v8 + v13;
    if (v9 >= v10)
    {
      memmove(__dst, __dst + v8, v9 - v10);
      a1[1] -= v8;
      memmove(&v6[2 * v14], &v6[2 * v14 + 2], 4 * (*a1 + ~v14));
      v11 = *a1 - 1;
      *a1 = v11;
      memmove(&v6[2 * v11], &v6[2 * v5], a1[1]);
      v12 = *a1;
      if (*a1)
      {
        v12 = a1[1] + 4 * v12 + 4;
      }

      result = 0;
      *a2 = v12;
    }

    else
    {
      return 92;
    }
  }

  return result;
}

uint64_t get_jobj_xfields_ptr(int a1, uint64_t a2, void *a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 <= 15)
  {
    switch(a1)
    {
      case 3:
        v8 = 92;
        v9 = 92;
        goto LABEL_18;
      case 9:
        v8 = 18;
        v9 = 18;
        goto LABEL_18;
      case 13:
        v8 = 26;
        v9 = 26;
        goto LABEL_18;
    }
  }

  else if (a1 > 18)
  {
    if (a1 == 19)
    {
      v8 = 8;
      v9 = 8;
      goto LABEL_18;
    }

    if (a1 == 20)
    {
      v8 = 12;
      v9 = 12;
      goto LABEL_18;
    }
  }

  else
  {
    if (a1 == 16)
    {
      v8 = 24;
      v9 = 24;
      goto LABEL_18;
    }

    if (a1 == 18)
    {
      v8 = 52;
      v9 = 52;
LABEL_18:
      v10 = 0;
      *a3 = a2 + v8;
      *a4 = v9;
      return v10;
    }
  }

  fsck_printf_err("unknown obj type (%u) to add xfields\n", a2, a3, a4, a5, a6, a7, a8, a1);
  v10 = 22;
  fsck_fail_func(0x565, 22);
  return v10;
}

uint64_t sub_10006D31C(int a1, const void *a2, int *a3, int a4, const void *a5, uint64_t a6, void (*a7)(uint64_t, const void *, uint64_t), uint64_t *a8)
{
  v41 = 0;
  v16 = sub_10006D4B8(a1, a2, *a3, a4, a6, &v41, a7, a8);
  v21 = v16;
  if ((v16 & 0xFFFFFFFD) == 0)
  {
    if (v16 != 2)
    {
      a7(v41, a5, a6);
      return 0;
    }

    v43 = 0;
    v42 = 0;
    jobj_xfields_ptr = get_jobj_xfields_ptr(a1, a2, &v43, &v42, v17, v18, v19, v20);
    if (!jobj_xfields_ptr)
    {
      v24 = *a3;
      v25 = v42;
      v26 = a6 + *a3 + 4 * (*a3 == v42) + 4;
      v27 = malloc_type_calloc(1uLL, v26, 0x92A0DDBEuLL);
      *a8 = v27;
      if (!v27)
      {
        fsck_printf_err("failed to allocate memory to add an xfield\n", v28, v29, v30, v31, v32, v33, v34, v40);
        v21 = 12;
        fsck_fail_func(0x441, 12);
        return v21;
      }

      memcpy(v27, a2, *a3);
      *a3 = v26;
      jobj_xfields_ptr = get_jobj_xfields_ptr(a1, *a8, &v43, &v42, v35, v36, v37, v38);
      if (!jobj_xfields_ptr)
      {
        v39 = v43;
        if (v24 == v25)
        {
          bzero(v43, v26 - v25);
        }

        jobj_xfields_ptr = add_xfield(v39, v26 - v25, a4, a5, a6, 16);
        if (!jobj_xfields_ptr)
        {
          return 0;
        }
      }
    }

    return jobj_xfields_ptr;
  }

  return v21;
}

uint64_t sub_10006D4B8(int a1, uint64_t a2, int a3, int a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v9 = a5;
  v15 = 0;
  v14 = 0;
  v13 = 0;
  result = get_jobj_xfields_ptr(a1, a2, &v14, &v13, a5, a6, a7, a8);
  if (!result)
  {
    if (a3 == v13)
    {
      return 2;
    }

    else
    {
      result = get_xfield(v14, a3 - v13, a4, a6, &v15, 0, 0);
      if (!result)
      {
        if (v15 == v9)
        {
          return 0;
        }

        else
        {
          return 34;
        }
      }
    }
  }

  return result;
}

uint64_t get_inode_64bit_xfield(uint64_t a1, int a2, int a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = 0;
  result = sub_10006D4B8(3, a1, a2, a3, 8, &v11, a7, a8);
  v10 = 0;
  if (!result)
  {
    v10 = *v11;
  }

  *a4 = v10;
  return result;
}

unint64_t get_inode_phys_size(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v19 = 0;
  v12 = sub_10006D4B8(3, a1, a2, 8, 40, &v19, a7, a8);
  result = 0;
  if (!v12)
  {
    v20 = 0;
    v14 = sub_10006D4B8(3, a1, a2, 13, 8, &v20, v10, v11);
    v15 = 0;
    if (!v14)
    {
      v15 = *v20;
    }

    v16 = *(v19 + 8);
    v17 = v16 >= v15;
    v18 = v16 - v15;
    if (v17)
    {
      return v18;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

char *sub_10006D69C(char *result, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a3 != 8)
  {
    sub_10006D7D4();
  }

  v8 = result;
  v9 = __CFADD__(*result, *a2);
  v10 = *result + *a2;
  *result = v10;
  if (v9)
  {
    v11 = *a2;
    fsck_printf_warn("sparse bytes overflow (current %llu, update %llu)\n", a2, a3, a4, a5, a6, a7, a8, v10);
    result = fsck_fail_func(0x442, 92);
    *v8 = -1;
  }

  return result;
}

uint64_t sub_10006D73C(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  result = crc32c(*a3, a1, a2);
  *a3 = result;
  return result;
}

uint64_t fsck_iterate(uint64_t a1, uint64_t (*a2)(void, void, void, void, uint64_t), uint64_t a3, int a4)
{
  v8 = 0;
  while (1)
  {
    if (!a1)
    {
      return 0;
    }

    if (*(a1 + 40))
    {
      break;
    }

    v9 = a2(*(a1 + 16), *(a1 + 32), *(a1 + 24), *(a1 + 36), a3);
    if (v9)
    {
      v10 = a4 == 0;
    }

    else
    {
      v10 = 0;
    }

    if (!v10)
    {
      v8 = v9 ? v9 : v8;
      v9 = (*(a1 + 8))(a1);
      if (!v9)
      {
        continue;
      }
    }

    v8 = v9;
    break;
  }

  if (*a1)
  {
    (*a1)(a1);
  }

  return v8;
}

uint64_t fsck_iterate_compare(uint64_t a1, uint64_t a2, uint64_t (*a3)(__int128 *, __int128 *, int *, uint64_t), uint64_t a4)
{
  v17 = 0;
  if (a1)
  {
    if (a2 && (*(a1 + 40) & 1) == 0)
    {
      while (1)
      {
        if (*(a2 + 40))
        {
          goto LABEL_4;
        }

        v17 = 3;
        v15 = *(a1 + 16);
        v16 = *(a1 + 32);
        v13 = *(a2 + 16);
        v14 = *(a2 + 32);
        v8 = a3(&v15, &v13, &v17, a4);
        if (v8)
        {
          break;
        }

        v12 = v17;
        if (!v17)
        {
          sub_10006E8E8();
        }

        if (v17)
        {
          v8 = (*(a1 + 8))(a1);
          if (v8)
          {
            break;
          }

          v12 = v17;
        }

        if ((v12 & 2) != 0)
        {
          v8 = (*(a2 + 8))(a2);
          if (v8)
          {
            break;
          }
        }

        if (*(a1 + 40) == 1)
        {
          goto LABEL_4;
        }
      }

LABEL_7:
      v9 = v8;
      goto LABEL_15;
    }

LABEL_4:
    while (*(a1 + 40) != 1)
    {
      v15 = *(a1 + 16);
      v16 = *(a1 + 32);
      v13 = 0uLL;
      v14 = 0;
      v8 = a3(&v15, &v13, &v17, a4);
      if (!v8)
      {
        v8 = (*(a1 + 8))(a1);
        if (!v8)
        {
          continue;
        }
      }

      goto LABEL_7;
    }
  }

  if (a2)
  {
    while ((*(a2 + 40) & 1) == 0)
    {
      v15 = *(a2 + 16);
      v16 = *(a2 + 32);
      v13 = 0uLL;
      v14 = 0;
      v10 = a3(&v13, &v15, &v17, a4);
      if (!v10)
      {
        v10 = (*(a2 + 8))(a2);
        if (!v10)
        {
          continue;
        }
      }

      v9 = v10;
      if (a1)
      {
        goto LABEL_15;
      }

      goto LABEL_17;
    }
  }

  v9 = 0;
  if (a1)
  {
LABEL_15:
    if (*a1)
    {
      (*a1)(a1);
    }
  }

LABEL_17:
  if (a2 && *a2)
  {
    (*a2)(a2);
  }

  return v9;
}

double container_cleanup(uint64_t a1)
{
  if (*(a1 + 448))
  {
    tree_destroy(a1 + 392, 0);
  }

  for (i = 192; i != 384; i += 64)
  {
    if (*(a1 + i))
    {
      *(a1 + i) = 0;
    }
  }

  if (*(a1 + 384))
  {
    *(a1 + 384) = 0;
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    free(v3);
  }

  v4 = *(a1 + 24);
  if (v4)
  {
    free(v4);
  }

  v5 = *(a1 + 16);
  if (v5)
  {
    free(v5);
  }

  v6 = *(a1 + 8);
  if (v6)
  {
    free(v6);
  }

  if (*a1)
  {
    dev_close(*a1);
  }

  *(a1 + 448) = 0;
  result = 0.0;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

void volume_cleanup(void **a1)
{
  if (a1[103])
  {
    tree_destroy((a1 + 96), 0);
  }

  if (a1[71])
  {
    a1[71] = 0;
  }

  if (a1[63])
  {
    a1[63] = 0;
  }

  if (a1[55])
  {
    a1[55] = 0;
  }

  if (a1[47])
  {
    a1[47] = 0;
  }

  if (a1[39])
  {
    a1[39] = 0;
  }

  if (a1[79])
  {
    a1[79] = 0;
  }

  if (a1[31])
  {
    a1[31] = 0;
  }

  if (a1[23])
  {
    a1[23] = 0;
  }

  v2 = a1[9];
  if (v2)
  {
    free(v2);
  }

  v3 = a1[6];
  if (v3)
  {
    free(v3);
  }

  v4 = a1[5];
  if (v4)
  {
    free(v4);
  }

  v5 = 0;
  v6 = 1;
  do
  {
    v7 = v6;
    v8 = a1[v5 + 3];
    if (v8)
    {
      dev_close(v8);
    }

    v6 = 0;
    v5 = 1;
  }

  while ((v7 & 1) != 0);
  if (*a1)
  {
    free(*a1);
  }

  bzero(a1, 0x400uLL);
}

void volume_reset_snapshot(uint64_t a1, char a2)
{
  v4 = *(a1 + 48);
  if (v4)
  {
    free(v4);
    *(a1 + 48) = 0;
  }

  *(a1 + 14) = a2;
  v5 = *(a1 + 56);
  *(a1 + 56) = 0;
  *(a1 + 64) = v5;
  *(a1 + 568) = 0;
  *(a1 + 504) = 0;
  *(a1 + 16) = 0;
}

uint64_t fsck_container_reload(uint64_t *a1)
{
  v2 = a1[5];
  v3 = a1[1];
  result = dev_read(*a1);
  if (!result)
  {
    v5 = a1[2];
    if (!v5 || (free(v5), a1[2] = 0, result = get_nx_reaper(a1, 0), !result))
    {
      v6 = a1[3];
      if (!v6 || (free(v6), a1[3] = 0, result = get_spaceman(a1, 0), !result))
      {
        v7 = a1[4];
        if (!v7)
        {
          return 0;
        }

        free(v7);
        a1[4] = 0;
        result = get_omap(a1, 0, 0);
        if (!result)
        {
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t get_nx_reaper(uint64_t *a1, void *a2)
{
  v3 = a1 + 2;
  if (a1[2] || (v5 = copy_obj(a1, 0, 0x80000000, *(a1[1] + 168), 0, 0, 17, 0, a1 + 2, (a1 + 8), 0), !v5))
  {
    v4 = 0;
    if (a2)
    {
      *a2 = *v3;
    }
  }

  else
  {
    v4 = v5;
    v6 = strerror(v5);
    fsck_printf_err("verification/reading of the nx_reaper object failed: %s\n", v7, v8, v9, v10, v11, v12, v13, v6);
  }

  return v4;
}

uint64_t get_spaceman(uint64_t *a1, void *a2)
{
  v3 = a1 + 3;
  if (a1[3] || (v5 = copy_obj(a1, 0, 0x80000000, *(a1[1] + 152), 0, 0, 5, 0, a1 + 3, (a1 + 11), 0), !v5))
  {
    v4 = 0;
    if (a2)
    {
      *a2 = *v3;
    }
  }

  else
  {
    v4 = v5;
    v6 = strerror(v5);
    fsck_printf_err("verification/reading of the spaceman object failed: %s\n", v7, v8, v9, v10, v11, v12, v13, v6);
  }

  return v4;
}

uint64_t get_omap(uint64_t *a1, uint64_t a2, uint64_t **a3)
{
  if (a2)
  {
    v4 = (a2 + 72);
  }

  else
  {
    v4 = (a1 + 4);
  }

  if (*v4)
  {
    goto LABEL_5;
  }

  v6 = a1 + 1;
  if (a2)
  {
    v6 = (a2 + 40);
  }

  v7 = *v6;
  v8 = 128;
  if (!a2)
  {
    v8 = 160;
  }

  v9 = (a1 + 14);
  if (a2)
  {
    v9 = a2 + 104;
  }

  v10 = copy_obj(a1, a2, 0x40000000, *(v7 + v8), 0, 0, 11, 0, v4, v9, 0);
  if (!v10)
  {
LABEL_5:
    v5 = 0;
    if (a3)
    {
      *a3 = *v4;
    }
  }

  else
  {
    v5 = v10;
    v11 = strerror(v10);
    fsck_printf_err("verification/reading of the omap object failed: %s\n", v12, v13, v14, v15, v16, v17, v18, v11);
  }

  return v5;
}

uint64_t fsck_volume_reload(uint64_t *a1, void *a2)
{
  v4 = a2[10];
  v5 = a2[5];
  result = dev_read(*a1);
  if (!result)
  {
    v7 = a2[9];
    if (!v7)
    {
      return 0;
    }

    free(v7);
    a2[9] = 0;
    result = get_omap(a1, a2, 0);
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t get_spaceman_fq_tree(uint64_t *a1, unsigned int a2, uint64_t *a3)
{
  if (a2 > 2)
  {
    return 22;
  }

  v5 = a2;
  v8 = &a1[8 * a2];
  v9 = (v8 + 17);
  if (!v8[24])
  {
    v19 = 0;
    spaceman = get_spaceman(a1, &v19);
    if (spaceman)
    {
      return spaceman;
    }

    inited = tree_init_ext(v9, a1, 0, 0x80000000, 2, 9, 0, *(a1[1] + 36), 16, 8, 0, *(v19 + 40 * a2 + 208), spaceman_free_tree_key_compare);
    if (inited)
    {
      spaceman = inited;
      strerror(inited);
      fsck_printf_err("failed to initialize the spaceman free queue tree %d: %s\n", v11, v12, v13, v14, v15, v16, v17, v5);
      return spaceman;
    }
  }

  spaceman = 0;
  if (a3)
  {
    *a3 = v9;
  }

  return spaceman;
}

uint64_t get_omap_tree(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  if (a2)
  {
    v4 = a2 + 128;
  }

  else
  {
    v4 = (a1 + 41);
  }

  if (!*(v4 + 56))
  {
    v18 = 0;
    omap = get_omap(a1, a2, &v18);
    if (omap)
    {
      return omap;
    }

    inited = tree_init_ext(v4, a1, a2, v18[5] & 0xC0000000, *(v18 + 10), 11, 0, *(a1[1] + 36), 16, 16, 0, v18[6], omap_key_compare);
    if (inited)
    {
      omap = inited;
      v9 = strerror(inited);
      fsck_printf_err("failed to initialize the omap tree: %s\n", v10, v11, v12, v13, v14, v15, v16, v9);
      return omap;
    }
  }

  omap = 0;
  if (a3)
  {
    *a3 = v4;
  }

  return omap;
}

uint64_t get_omap_snap_tree(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v4 = a2 + 192;
  if (!*(a2 + 248))
  {
    v18 = 0;
    omap = get_omap(a1, a2, &v18);
    if (omap)
    {
      return omap;
    }

    inited = tree_init_ext(v4, a1, a2, *(v18 + 11) & 0xC0000000, *(v18 + 11), 19, 0, *(a1[1] + 36), 8, 16, 0, v18[7], uint64_key_compare);
    if (inited)
    {
      omap = inited;
      v9 = strerror(inited);
      fsck_printf_err("failed to initialize the omap snap tree: %s\n", v10, v11, v12, v13, v14, v15, v16, v9);
      return omap;
    }
  }

  omap = 0;
  if (a3)
  {
    *a3 = v4;
  }

  return omap;
}

uint64_t get_pfkur_tree(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a2 + 40);
  if ((*(v9 + 56) & 0x40) != 0)
  {
    v11 = a2 + 576;
    if (*(a2 + 632) || (inited = tree_init_ext(a2 + 576, a1, a2, *(v9 + 1044) & 0xC0000000, *(v9 + 1044), 32, 0, *(*(a1 + 8) + 36), 8, 24, 0, *(v9 + 1048), uint64_key_compare), !inited))
    {
      v10 = 0;
      if (a3)
      {
        *a3 = v11;
      }
    }

    else
    {
      v10 = inited;
      v13 = strerror(inited);
      fsck_printf_err("failed to initialize the pfkur tree: %s\n", v14, v15, v16, v17, v18, v19, v20, v13);
    }
  }

  else
  {
    fsck_printf_err("get_pfkur_tree() called on non-pfk volume\n", a2, a2, a4, a5, a6, a7, a8, v22);
    return 22;
  }

  return v10;
}

uint64_t get_doc_id_tree(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *(a2 + 40);
  v5 = *(v4 + 1072);
  if (!v5)
  {
    return 2;
  }

  v6 = a2 + 640;
  if (*(a2 + 696) || (inited = tree_init_ext(a2 + 640, a1, a2, *(v4 + 1068) & 0xC0000000, *(v4 + 1068), 34, 0, *(*(a1 + 8) + 36), 4, 8, 0, v5, uint32_key_compare), !inited))
  {
    v7 = 0;
    if (a3)
    {
      *a3 = v6;
    }
  }

  else
  {
    v7 = inited;
    v9 = strerror(inited);
    fsck_printf_err("failed to initialize the doc-id tree: %s\n", v10, v11, v12, v13, v14, v15, v16, v9);
  }

  return v7;
}

uint64_t get_snap_meta_tree(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = a2 + 256;
  if (*(a2 + 312) || (inited = tree_init_ext(v4, a1, a2, *(*(a2 + 40) + 124) & 0xC0000000, *(*(a2 + 40) + 124), 16, 0, *(*(a1 + 8) + 36), 0, 0, 0, *(*(a2 + 40) + 152), jkey_compare), !inited))
  {
    v5 = 0;
    if (a3)
    {
      *a3 = v4;
    }
  }

  else
  {
    v5 = inited;
    v7 = strerror(inited);
    fsck_printf_err("failed to initialize the snap meta tree: %s\n", v8, v9, v10, v11, v12, v13, v14, v7);
  }

  return v5;
}

uint64_t get_extentref_tree(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = a2 + 320;
  if (*(a2 + 376) || (inited = tree_init_ext(v4, a1, a2, *(*(a2 + 40) + 120) & 0xC0000000, *(*(a2 + 40) + 120), 15, 0, *(*(a1 + 8) + 36), 0, 0, 0, *(*(a2 + 40) + 144), jkey_compare), !inited))
  {
    v5 = 0;
    if (a3)
    {
      *a3 = v4;
    }
  }

  else
  {
    v5 = inited;
    v7 = strerror(inited);
    fsck_printf_err("failed to initialize the extentref tree: %s\n", v8, v9, v10, v11, v12, v13, v14, v7);
  }

  return v5;
}

uint64_t get_fext_tree(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a2[6];
  if (!v9)
  {
    v9 = a2[5];
  }

  if ((*(v9 + 56) & 0x20) != 0)
  {
    v11 = a2 + 48;
    if (a2[55] || (inited = tree_init_ext((a2 + 48), a1, a2, *(a2[5] + 1040) & 0xC0000000, *(a2[5] + 1040), 31, 0, *(*(a1 + 8) + 36), 16, 16, 0, *(a2[5] + 1032), fext_tree_compare), !inited))
    {
      v10 = 0;
      if (a3)
      {
        *a3 = v11;
      }
    }

    else
    {
      v10 = inited;
      v13 = strerror(inited);
      fsck_printf_err("failed to initialize the fext tree: %s\n", v14, v15, v16, v17, v18, v19, v20, v13);
    }
  }

  else
  {
    fsck_printf_err("get_fext_tree() called on unsealed volume\n", a1, a2, a4, a5, a6, a7, a8, v22);
    return 22;
  }

  return v10;
}

uint64_t get_clonegroup_tree(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *(*(a2 + 40) + 1112);
  if (!v4)
  {
    return 2;
  }

  v5 = a2 + 704;
  if (*(a2 + 760) || (inited = tree_init_ext(a2 + 704, a1, a2, 0, 2, 37, 0, *(*(a1 + 8) + 36), 0, 0, 0, v4, clonegroup_tree_compare), !inited))
  {
    v6 = 0;
    if (a3)
    {
      *a3 = v5;
    }
  }

  else
  {
    v6 = inited;
    v8 = strerror(inited);
    fsck_printf_err("failed to initialize the clone group tree: %s\n", v9, v10, v11, v12, v13, v14, v15, v8);
  }

  return v6;
}

uint64_t get_fsroot_tree(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = a2 + 448;
  if (*(a2 + 504))
  {
    goto LABEL_2;
  }

  v6 = *(a2 + 40);
  v7 = *(v6 + 116);
  v8 = *(v6 + 136);
  if (*(a2 + 48))
  {
    v6 = *(a2 + 48);
  }

  if ((*(v6 + 56) & 0x20) != 0)
  {
    v9 = *(a2 + 16);
    v10 = *(a2 + 20);
  }

  else
  {
    v9 = 0;
    v10 = 0;
  }

  inited = tree_init_ext(v4, a1, a2, v7 & 0xC0000000, v7, 14, v9, *(*(a1 + 8) + 36), 0, 0, v10, v8, jkey_compare);
  if (!inited)
  {
LABEL_2:
    v5 = 0;
    if (a3)
    {
      *a3 = v4;
    }
  }

  else
  {
    v5 = inited;
    v12 = strerror(inited);
    fsck_printf_err("failed to initialize the fsroot tree: %s\n", v13, v14, v15, v16, v17, v18, v19, v12);
  }

  return v5;
}

uint64_t get_secondary_fsroot_tree(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = a2 + 512;
  if (*(a2 + 568))
  {
    goto LABEL_2;
  }

  v6 = *(a2 + 40);
  v7 = *(v6 + 1104);
  v8 = *(v6 + 1096);
  if (*(a2 + 48))
  {
    v6 = *(a2 + 48);
  }

  if ((*(v6 + 56) & 0x20) != 0)
  {
    v9 = *(a2 + 16);
    v10 = *(a2 + 20);
  }

  else
  {
    v9 = 0;
    v10 = 0;
  }

  inited = tree_init_ext(v4, a1, a2, v7 & 0xC0000000, v7, 36, v9, *(*(a1 + 8) + 36), 0, 0, v10, v8, jkey_compare);
  if (!inited)
  {
LABEL_2:
    v5 = 0;
    if (a3)
    {
      *a3 = v4;
    }
  }

  else
  {
    v5 = inited;
    v12 = strerror(inited);
    fsck_printf_err("failed to initialize the secondary fsroot tree: %s\n", v13, v14, v15, v16, v17, v18, v19, v12);
  }

  return v5;
}

BOOL is_snapshot_in_purgatory(uint64_t a1, unsigned int a2)
{
  if (a2 < 0x19)
  {
    return 0;
  }

  if (*a1 != 0x6C7070612E6D6F63 || *(a1 + 7) != 0x2E736670612E656CLL)
  {
    return 0;
  }

  return *(a1 + 15) == 0x726F746167727570 && *(a1 + 23) == 11897;
}

uint64_t fsck_omap_snap_delete_snapshot(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = a4;
  v8 = a3;
  v49[0] = a4;
  v49[1] = a5;
  v47 = 0;
  v48 = a3;
  omap_snap_tree = get_omap_snap_tree(a1, a2, &v47);
  if (!omap_snap_tree)
  {
    fsck_printf_err("no snap_meta tree entry found for omap_snap entry with xid %llu\n", v11, v12, v13, v14, v15, v16, v17, v8);
    if ((a6 & 1) == 0 && !fsckAskPrompt(fsck_apfs_ctx, "Delete omap_snap entries? ", v19, v20, v21, v22, v23, v24, v46))
    {
      return 89;
    }

    LODWORD(v49[0]) = v7 | 1;
    v25 = tree_insert(v47, 0, &v48, 8, v49, 16);
    if (v25)
    {
      omap_snap_tree = v25;
      v27 = strerror(v25);
      fsck_printf_err("error updating omap_snap entry: %s\n", v28, v29, v30, v31, v32, v33, v34, v27);
      v35 = 657;
LABEL_8:
      fsck_fail_func(v35, omap_snap_tree);
      return omap_snap_tree;
    }

    v36 = nx_reaper_add(a1, *(*(a2 + 72) + 24), *(a2 + 112), *(*(a2 + 40) + 8), *(*(a2 + 72) + 8), *(a1[1] + 16), 2, v26);
    omap_snap_tree = v36;
    if (v36)
    {
      v37 = strerror(v36);
      fsck_printf_err("error updating the reap list: %s\n", v38, v39, v40, v41, v42, v43, v44, v37);
      v35 = 658;
      goto LABEL_8;
    }
  }

  return omap_snap_tree;
}

uint64_t fsck_snap_meta_delete_snapshot(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, char a5)
{
  v72 = 0;
  snap_meta_tree = get_snap_meta_tree(a1, a2, &v72);
  if (!snap_meta_tree)
  {
    fsck_printf_err("no omap_snap tree entry found for snap_meta entry with xid %llu\n", v8, v9, v10, v11, v12, v13, v14, *a3);
    if ((a5 & 1) == 0 && !fsckAskPrompt(fsck_apfs_ctx, "Delete snap_meta entries? ", v16, v17, v18, v19, v20, v21, v70))
    {
      return 89;
    }

    v22 = snap_name_remove(v72, *(a4 + 48), (a4 + 50));
    if (v22)
    {
      snap_meta_tree = v22;
      if (v22 != 2)
      {
        v51 = strerror(v22);
        fsck_printf_err("failed to remove snap_name entry: %s\n", v52, v53, v54, v55, v56, v57, v58, v51);
        v59 = 660;
        goto LABEL_16;
      }

      fsck_printf_warn("tried to remove snap_name entry but it's not there!\n", v23, v24, v25, v26, v27, v28, v29, v70);
    }

    *__str = 0u;
    memset(v74, 0, sizeof(v74));
    v30 = snprintf(__str, 0x2AuLL, "%s%s%llx", "com.apple.apfs.", "purgatory.", *a3 & 0xFFFFFFFFFFFFFFFLL);
    if (v30 >= 0x2A)
    {
      sub_10006F0FC();
    }

    v31 = v30;
    v32 = v30 + 51;
    v33 = malloc_type_malloc(v32, 0x10000401FD4EAF9uLL);
    if (!v33)
    {
      fsck_printf_err("failed to allocate memory for repair\n", v34, v35, v36, v37, v38, v39, v40, v71);
      snap_meta_tree = 12;
      v59 = 704;
      v60 = 12;
LABEL_17:
      fsck_fail_func(v59, v60);
      return snap_meta_tree;
    }

    v41 = v33;
    v33[24] = v31 + 1;
    memcpy(v33 + 25, __str, (v31 + 1));
    v42 = tree_insert(v72, 0, a3, 8, v41, v32);
    if (v42)
    {
      snap_meta_tree = v42;
      v43 = strerror(v42);
      fsck_printf_err("error updating snap_meta entry: %s\n", v44, v45, v46, v47, v48, v49, v50, v43);
      fsck_fail_func(0x295, snap_meta_tree);
      free(v41);
      return snap_meta_tree;
    }

    snap_meta_tree = snap_name_insert(v72, v41[24], v41 + 25, *a3 & 0xFFFFFFFFFFFFFFFLL);
    free(v41);
    if (!snap_meta_tree)
    {
      return snap_meta_tree;
    }

    v61 = strerror(snap_meta_tree);
    fsck_printf_err("failed to insert snap_name entry: %s\n", v62, v63, v64, v65, v66, v67, v68, v61);
    v59 = 662;
LABEL_16:
    v60 = snap_meta_tree;
    goto LABEL_17;
  }

  return snap_meta_tree;
}

uint64_t fsck_compare_snapshots(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v62 = 0;
  v63 = 0;
  v60 = 0u;
  v61 = 0u;
  v59 = 0u;
  v57 = 0u;
  memset(v58, 0, sizeof(v58));
  BYTE8(v59) = 1;
  v55 = 0u;
  v56 = 0u;
  memset(v54, 0, sizeof(v54));
  BYTE8(v55) = 1;
  if (*(*(a2 + 72) + 56))
  {
    omap_snap_tree = get_omap_snap_tree(a1, a2, &v63);
    if (omap_snap_tree)
    {
      v14 = omap_snap_tree;
      fsck_printf_err("unable to init omap_snap tree for snapshot repair\n", v7, v8, v9, v10, v11, v12, v13, v53);
      v15 = 663;
LABEL_15:
      fsck_fail_func(v15, v14);
      return v14;
    }

    v16 = path_iterator_init(v58, v63, 0, 0, 0);
    if (v16)
    {
      v14 = v16;
      v17 = strerror(v16);
      fsck_printf_err("unable to init omap_snap tree iterator for snapshot repair: %s\n", v18, v19, v20, v21, v22, v23, v24, v17);
      v15 = 664;
      goto LABEL_15;
    }
  }

  if (*(*(a2 + 40) + 152))
  {
    snap_meta_tree = get_snap_meta_tree(a1, a2, &v62);
    if (snap_meta_tree)
    {
      v14 = snap_meta_tree;
      fsck_printf_err("unable to init snap_meta tree for snapshot repair\n", v26, v27, v28, v29, v30, v31, v32, v53);
      v33 = 665;
      goto LABEL_11;
    }

    v34 = path_iterator_init(v54, v62, 0, 0, 0);
    if (v34)
    {
      v14 = v34;
      v35 = strerror(v34);
      fsck_printf_err("unable to init snap_meta tree iterator for snapshot repair: %s\n", v36, v37, v38, v39, v40, v41, v42, v35);
      v33 = 666;
LABEL_11:
      fsck_fail_func(v33, v14);
      if (*&v58[0])
      {
        (*&v58[0])(v58);
      }

      return v14;
    }
  }

  v43 = fsck_iterate_compare(v58, v54, sub_10006EEBC, a3);
  v14 = v43;
  if (v43)
  {
    v44 = strerror(v43);
    fsck_printf_err("error iterating trees during snapshot repair: %s\n", v45, v46, v47, v48, v49, v50, v51, v44);
    v15 = 667;
    goto LABEL_15;
  }

  return v14;
}

uint64_t sub_10006EEBC(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *a1;
  v11 = *a2;
  if (!(*a1 | v11))
  {
    sub_10006F128();
  }

  v12 = *(a1 + 8);
  v13 = *(a2 + 8);
  if (v10 && (*(a1 + 16) < 8u || *(a1 + 20) < 0x10u))
  {
    return 22;
  }

  if (!v11)
  {
    v15 = *v10;
    v16 = *v12;
    v17 = v12[1];
    v18 = a4;
LABEL_9:

    return sub_10006EFC4(v18, v15, v16, v17, a5, a6, a7, a8);
  }

  if (*(a2 + 16) < 8u)
  {
    return 22;
  }

  v19 = *v11;
  if (*v11 >> 60 != 1)
  {
    result = 0;
    *a3 = 2;
    return result;
  }

  if (*(a2 + 20) < 0x32u)
  {
    return 22;
  }

  if (v10)
  {
    v20 = *v10;
    if (*v10 < (v19 & 0xFFFFFFFFFFFFFFFuLL))
    {
      *a3 = 1;
      v16 = *v12;
      v17 = v12[1];
      v18 = a4;
      v15 = v20;
      goto LABEL_9;
    }

    if ((v19 & 0xFFFFFFFFFFFFFFFuLL) >= v20)
    {
      return 0;
    }

    *a3 = 2;
  }

  return sub_10006F048(a4, v11, v13);
}

uint64_t sub_10006EFC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11[0] = a3;
  v11[1] = a4;
  v10 = a2;
  if (a3)
  {
    return 0;
  }

  fsck_printf_err("no snap_meta tree entry found for omap_snap entry with xid %llu\n", a2, a3, a4, a5, a6, a7, a8, a2);
  fsck_fail_func(0x290, 92);
  return fsck_repairs_add(a1, 3, 0, 0, 1, &v10, 8u, v11, 0x10u);
}

uint64_t sub_10006F048(uint64_t a1, char *a2, uint64_t a3)
{
  v6 = is_snapshot_in_purgatory(a3 + 50, *(a3 + 48));
  v14 = *a2 & 0xFFFFFFFFFFFFFFFLL;
  if (v6)
  {
    fsck_printf_warn("found a snapshot in the purgatory (xid %llu) with no corresponding omap entry\n", v7, v8, v9, v10, v11, v12, v13, *a2);
    return 0;
  }

  else
  {
    fsck_printf_err("no omap_snap tree entry found for snap_meta entry with xid %llu\n", v7, v8, v9, v10, v11, v12, v13, *a2);
    fsck_fail_func(0x293, 92);
    return fsck_repairs_add(a1, 4, 0, 0, 1, a2, 8u, a3, *(a3 + 48) + 50);
  }
}

uint64_t snap_name_insert(uint64_t a1, unsigned int a2, const void *a3, uint64_t a4)
{
  v11 = 0;
  v10 = 0;
  v6 = sub_10006F1E4(a2, a3, &v10, &v11);
  if (!v6)
  {
    v9 = a4;
    v7 = v10;
    v6 = tree_insert(a1, 0, v10, v11, &v9, 8);
    free(v7);
  }

  return v6;
}

uint64_t sub_10006F1E4(unsigned int a1, const void *a2, void *a3, unsigned int *a4)
{
  v8 = a1 + 10;
  v9 = malloc_type_malloc(a1 + 10, 0x98375D02uLL);
  if (!v9)
  {
    return 12;
  }

  v10 = v9;
  *v9 = 0xBFFFFFFFFFFFFFFFLL;
  v9[4] = a1;
  memcpy(v9 + 5, a2, a1);
  *a3 = v10;
  result = 0;
  if (a4)
  {
    *a4 = v8;
  }

  return result;
}

uint64_t snap_name_remove(uint64_t a1, unsigned int a2, const void *a3)
{
  v8 = 0;
  v7 = 0;
  v4 = sub_10006F1E4(a2, a3, &v7, &v8);
  if (!v4)
  {
    v5 = v7;
    v4 = tree_remove(a1, 0, v7, v8);
    free(v5);
  }

  return v4;
}

uint64_t snap_meta_repair_name(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, unsigned int a5, char a6, _DWORD *a7)
{
  v13 = *a3;
  v14 = malloc_type_calloc(1uLL, 0x10AuLL, 0xAF4999DuLL);
  v15 = malloc_type_calloc(1uLL, 0x132uLL, 0xAD51FE41uLL);
  if (v14 && (v23 = v15) != 0)
  {
    v74 = 0;
    v75 = 0;
    memset(v71, 0, sizeof(v71));
    v72 = 0u;
    v73 = 0u;
    memset(__src, 0, sizeof(__src));
    *v14 = 0xBFFFFFFFFFFFFFFFLL;
    snap_meta_tree = get_snap_meta_tree(a1, a2, &v75);
    if (snap_meta_tree || (snap_meta_tree = tree_iterator_init(v71, v75, 0, v14, 0xAu, 0x10Au, v23, 306), snap_meta_tree))
    {
      v25 = snap_meta_tree;
      v26 = strerror(snap_meta_tree);
      fsck_printf_err("unable to setup snapshot tree iteration: %s\n", v27, v28, v29, v30, v31, v32, v33, v26);
      v34 = 1266;
LABEL_6:
      fsck_fail_func(v34, v25);
    }

    else if (BYTE8(v72))
    {
      v25 = 2;
    }

    else
    {
      v68 = 0;
      v36 = v13 & 0xFFFFFFFFFFFFFFFLL;
      v37 = a5 - 50;
      v69 = -1;
      do
      {
        if (*v14 >> 60 == 11 && *v23 == v36)
        {
          v70 = 0;
          v38 = validate_snap_name(a2, v14, v72, v23, SDWORD1(v72), 0, &v70);
          if (!(v38 | v70))
          {
            v39 = v14[4];
            if (v37 <= v39)
            {
              v40 = v37;
            }

            else
            {
              v40 = v14[4];
            }

            if ((a6 & 2) != 0 && !strncmp((a4 + 50), v14 + 10, v40))
            {
              if (fsckAskPrompt(fsck_apfs_ctx, "Fix snapshot meta name_len (%u) from snap name entry? ", v41, v42, v43, v44, v45, v46, v39))
              {
                *(a4 + 48) = v40;
                bzero((a4 + 50), v37);
                v56 = (a4 + 50);
                v57 = v14 + 5;
                v58 = v40;
                goto LABEL_29;
              }

              goto LABEL_34;
            }

            if (a6)
            {
              v47 = sub_10006F650(a4 + 50, *(a4 + 48), v14 + 10, v39);
              if (v47 < v69)
              {
                v48 = v47;
                __memcpy_chk();
                v69 = v48;
                v68 = v40;
              }
            }
          }
        }

        v49 = (*(&v71[0] + 1))(v71);
        if (v49)
        {
          v25 = v49;
          v59 = strerror(v49);
          fsck_printf_err("error iterating snapshot tree: %s\n", v60, v61, v62, v63, v64, v65, v66, v59);
          v34 = 1267;
          goto LABEL_6;
        }
      }

      while ((BYTE8(v72) & 1) == 0);
      if (v69 == -1)
      {
        v25 = 0;
        goto LABEL_7;
      }

      if (fsckAskPrompt(fsck_apfs_ctx, "Fix snapshot meta name (%.*s) from snap name entry? ", v50, v51, v52, v53, v54, v55, v68))
      {
        *(a4 + 48) = v68;
        bzero((a4 + 50), v68);
        v56 = (a4 + 50);
        v57 = __src;
        v58 = v68;
LABEL_29:
        memcpy(v56, v57, v58);
        v25 = 0;
        *a7 = 1;
        goto LABEL_7;
      }

LABEL_34:
      v25 = 92;
    }

LABEL_7:
    free(v14);
    free(v23);
  }

  else
  {
    fsck_printf_err("failed to allocate memory for snapshot repair\n", v16, v17, v18, v19, v20, v21, v22, v67);
    v25 = 12;
    fsck_fail_func(0x4F1, 12);
  }

  return v25;
}

uint64_t sub_10006F650(uint64_t a1, int a2, unsigned __int8 *a3, unsigned int a4)
{
  v8 = a4;
  __chkstk_darwin(a1);
  v10 = (&v31 - v9);
  bzero(&v31 - v9, v11);
  v12 = 0;
  v13 = vdupq_n_s64(v8);
  v14 = v10 + 2;
  v15 = xmmword_1000AAE20;
  v16 = xmmword_1000AAE30;
  v17 = vdupq_n_s64(4uLL);
  do
  {
    v18 = vmovn_s64(vcgeq_u64(v13, v16));
    if (vuzp1_s16(v18, *v13.i8).u8[0])
    {
      *(v14 - 2) = v12;
    }

    if (vuzp1_s16(v18, *&v13).i8[2])
    {
      *(v14 - 1) = v12 + 1;
    }

    if (vuzp1_s16(*&v13, vmovn_s64(vcgeq_u64(v13, *&v15))).i32[1])
    {
      *v14 = v12 + 2;
      v14[1] = v12 + 3;
    }

    v12 += 4;
    v15 = vaddq_s64(v15, v17);
    v16 = vaddq_s64(v16, v17);
    v14 += 4;
  }

  while (((a4 + 4) & 0x1FFFC) != v12);
  if (a2)
  {
    v19 = 1;
    do
    {
      v20 = v19;
      if (a4)
      {
        v21 = v19 - 1;
        v22 = *(a1 + v19 - 1);
        v23 = v10 + 1;
        v24 = v8;
        v25 = a3;
        LOWORD(v26) = v19;
        do
        {
          v27 = *v25++;
          if (v22 != v27)
          {
            ++v21;
          }

          v28 = *v23;
          LOWORD(v26) = v26 + 1;
          if ((*v23 + 1) >= v26)
          {
            v26 = v26;
          }

          else
          {
            v26 = (v28 + 1);
          }

          if (v26 >= v21)
          {
            v26 = v21;
          }

          *v23++ = v26;
          v21 = v28;
          --v24;
        }

        while (v24);
      }
    }

    while (v19++ != a2);
    *v10 = v20;
  }

  return v10[v8];
}

uint64_t snapshot_init()
{
  result = tree_init_ext(&unk_100103AB0, 0, 0, 0x8000000, 2, 0, 0, 4096, 0, 2, 0, 0, sub_10006F8AC);
  if (!result)
  {
    result = tree_create(&unk_100103AB0, 0, 0);
    if (result)
    {
      qword_100103AE8 = 0;
    }
  }

  return result;
}

uint64_t sub_10006F8AC(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, unsigned int a5, int *a6)
{
  result = 22;
  if (a3 >= 0x10 && a5 >= 0x10)
  {
    if (*a2 >= *a4)
    {
      if (*a2 > *a4)
      {
        v8 = 1;
        goto LABEL_7;
      }

      v9 = *(a2 + 8);
      v10 = *(a4 + 8);
      if (v9 >= v10)
      {
        v11 = *(a4 + 8);
      }

      else
      {
        v11 = *(a2 + 8);
      }

      v12 = memcmp((a2 + 10), (a4 + 10), v11);
      if ((v12 & 0x80000000) == 0)
      {
        if (v12)
        {
          v8 = 1;
        }

        else
        {
          v8 = -1;
        }

        if (v12)
        {
          v13 = 0;
        }

        else
        {
          v13 = v9 >= v10;
        }

        if (v13)
        {
          v8 = v9 > v10;
        }

        goto LABEL_7;
      }
    }

    v8 = -1;
LABEL_7:
    result = 0;
    *a6 = v8;
  }

  return result;
}

uint64_t sub_10006F970(uint64_t a1, int a2, uint64_t a3, int a4)
{
  if (!qword_100103AE8)
  {
    return 0;
  }

  v5 = a2;
  v22 = a2 + 16;
  v7 = malloc_type_calloc(1uLL, 0x110uLL, 0xEFF35303uLL);
  if (v7)
  {
    v15 = v7;
    v21 = 2;
    v20 = 0;
    *v7 = a1;
    v7[4] = v5;
    __memcpy_chk();
    v16 = tree_lookup(&unk_100103AB0, 0, 0, v15, &v22, 0x110u, &v20, &v21);
    if (v16)
    {
      v17 = v16;
      if (v16 != 2)
      {
LABEL_14:
        free(v15);
        return v17;
      }

      *v15 = a1;
      v15[4] = v5;
      __memcpy_chk();
    }

    if (a4)
    {
      if (HIBYTE(v20) == 1)
      {
        sub_10006FD90();
      }

      HIBYTE(v20) = 1;
    }

    else
    {
      if (v20 == 1)
      {
        sub_10006FDBC();
      }

      LOBYTE(v20) = 1;
    }

    v17 = tree_insert(&unk_100103AB0, 0, v15, v22, &v20, v21);
    goto LABEL_14;
  }

  fsck_printf_err("failed to allocate memory for snapshot tracking\n", v8, v9, v10, v11, v12, v13, v14, v19);
  v17 = 12;
  fsck_fail_func(0x153, 12);
  return v17;
}

uint64_t snapshot_finalize(uint64_t a1)
{
  if (qword_100103AE8)
  {
    v52 = 0;
    v50 = 0u;
    v51 = 0u;
    memset(v49, 0, sizeof(v49));
    v2 = malloc_type_calloc(1uLL, 0x110uLL, 0x710BD337uLL);
    if (!v2)
    {
      fsck_printf_err("failed to allocate memory for snapshot validation\n", v3, v4, v5, v6, v7, v8, v9, v42);
      v19 = 12;
      fsck_fail_func(0x368, 12);
LABEL_9:
      tree_destroy(&unk_100103AB0, 0);
      return v19;
    }

    v10 = v2;
    v48 = 0;
    v47 = 0;
    v45 = 0;
    v46 = 0;
    v11 = tree_iterator_init(v49, &unk_100103AB0, 0, v2, 0x10u, 0x110u, &v48, 2);
    if (v11)
    {
      v19 = v11;
      v20 = strerror(v11);
      fsck_printf_err("unable to initialize iterator for snapshot validation: %s\n", v21, v22, v23, v24, v25, v26, v27, v20);
      v28 = 873;
LABEL_5:
      fsck_fail_func(v28, v19);
LABEL_6:
      free(v10);
      goto LABEL_9;
    }

    while (1)
    {
      if (BYTE8(v50))
      {
        v19 = 0;
        goto LABEL_6;
      }

      if (HIBYTE(v48) == 1)
      {
        if ((v48 & 1) == 0)
        {
          v43 = v10[4];
          fsck_printf_err("no snap_meta entry found for snap_name entry with xid %llu and name %.*s\n", v12, v13, v14, v15, v16, v17, v18, *v10);
          fsck_fail_func(0x28C, 92);
          v30 = sub_10006F1E4(v10[4], v10 + 5, &v46, &v47);
          if (v30)
          {
            goto LABEL_23;
          }

          v45 = *v10;
          v31 = v46;
          v32 = fsck_repairs_add(a1, 4, 0, 0, 1, v46, v47, 0, 0);
LABEL_19:
          v19 = v32;
          free(v31);
          if (v19)
          {
            goto LABEL_6;
          }
        }
      }

      else if (v48)
      {
        v44 = v10[4];
        fsck_printf_err("no snap_name entry found for snap_meta entry with xid %llu and name %.*s\n", v12, v13, v14, v15, v16, v17, v18, *v10);
        fsck_fail_func(0x28E, 92);
        v30 = sub_10006F1E4(v10[4], v10 + 5, &v46, &v47);
        if (v30)
        {
LABEL_23:
          v19 = v30;
          goto LABEL_6;
        }

        v45 = *v10;
        v31 = v46;
        v32 = fsck_repairs_add(a1, 4, 2, 0, 1, v46, v47, &v45, 8u);
        goto LABEL_19;
      }

      v33 = (*(&v49[0] + 1))(v49);
      if (v33)
      {
        v19 = v33;
        v34 = strerror(v33);
        fsck_printf_err("error iterating snapshot tree: %s\n", v35, v36, v37, v38, v39, v40, v41, v34);
        v28 = 874;
        goto LABEL_5;
      }
    }
  }

  return 0;
}