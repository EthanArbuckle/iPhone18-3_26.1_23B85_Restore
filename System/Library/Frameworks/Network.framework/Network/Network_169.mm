uint64_t ZSTD_reset_matchState(uint64_t a1, uint64_t a2, _DWORD *a3, int a4, int a5, int a6, int a7)
{
  v7 = a3[6];
  if ((a7 || !*(a1 + 140)) && (v7 == 1 || a4 == 1 && (v7 - 3) < 3))
  {
    v8 = 0;
    if (a7 != 1)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v8 = 4 << a3[1];
    if (a7 != 1)
    {
      goto LABEL_13;
    }
  }

  if (a3[4] == 3)
  {
    if (*a3 >= 0x11u)
    {
      v9 = 17;
    }

    else
    {
      v9 = *a3;
    }

    goto LABEL_14;
  }

LABEL_13:
  v9 = 0;
LABEL_14:
  v10 = a3[2];
  if (a6 == 1)
  {
    *(a1 + 32) = 0;
    v11 = " ";
    *(a1 + 8) = " ";
    *(a1 + 16) = " ";
    v12 = "nw_utilities_get_self_is_daemon_block_invoke";
    *a1 = "nw_utilities_get_self_is_daemon_block_invoke";
    v13 = *(a2 + 16);
    *(a2 + 32) = v13;
  }

  else
  {
    v12 = *a1;
    v11 = *(a1 + 8);
    v13 = *(a2 + 16);
  }

  *(a1 + 300) = 0;
  v14 = v12 - v11;
  *(a1 + 24) = v14;
  *(a1 + 28) = v14;
  *(a1 + 44) = v14;
  *(a1 + 48) = v9;
  *(a1 + 40) = 0;
  *(a1 + 196) = 0;
  *(a1 + 248) = 0;
  *(a2 + 24) = v13;
  if (*(a2 + 64))
  {
    v15 = v13;
  }

  else
  {
    *(a2 + 32) = v13;
    v16 = *(a2 + 8);
    *(a2 + 48) = v16 & 0xFFFFFFFFFFFFFFC0;
    v17 = -v13 & 0x3FLL;
    v15 = v13 + v17;
    if (v13 + v17 > v16)
    {
      v18 = 0;
      *(a1 + 112) = 0;
      *(a2 + 48) = v16 & 0xFFFFFFFFFFFFFFC0;
      *(a1 + 128) = 0;
      goto LABEL_36;
    }

    *(a2 + 16) = v15;
    *(a2 + 24) = v15;
    if (v17)
    {
      *(a2 + 32) = v15;
    }

    *(a2 + 64) = 1;
  }

  v19 = v15 + (4 << v10);
  v20 = *(a2 + 40);
  if (v19 <= v20)
  {
    *(a2 + 24) = v19;
  }

  else
  {
    *(a2 + 56) = 1;
    v19 = v15;
    v15 = 0;
  }

  *(a1 + 112) = v15;
  v18 = v19 + v8;
  if (v18 <= v20)
  {
    *(a2 + 24) = v18;
  }

  else
  {
    *(a2 + 56) = 1;
    v18 = v19;
    v19 = 0;
  }

  *(a1 + 128) = v19;
  if (v9)
  {
    v21 = 4 << v9;
  }

  else
  {
    v21 = 0;
  }

  v13 = v18 + v21;
  if (v13 <= v20)
  {
    *(a2 + 24) = v13;
  }

  else
  {
    *(a2 + 56) = 1;
    v13 = v18;
    v18 = 0;
  }

LABEL_36:
  *(a1 + 120) = v18;
  if (*(a2 + 56))
  {
    return -64;
  }

  if (a5 != 1)
  {
    v23 = *(a2 + 32);
    if (v23 < v13)
    {
      v24 = a1;
      v25 = a2;
      v26 = a3;
      v27 = a7;
      v28 = a4;
      bzero(*(a2 + 32), v13 - v23);
      a4 = v28;
      a7 = v27;
      a3 = v26;
      a1 = v24;
      a2 = v25;
      v13 = *(v25 + 24);
      v23 = *(v25 + 32);
    }

    if (v23 < v13)
    {
      *(a2 + 32) = v13;
    }
  }

  if (a4 == 1 && (a3[6] - 6) >= 0xFFFFFFFD)
  {
    v29 = 1 << v10;
    v30 = ((1 << v10) + 63) & 0xFFFFFFFFFFFFFFC0;
    v31 = *(a2 + 64);
    if (a7 != 1)
    {
      if (v31 <= 1)
      {
        if (!v31)
        {
          v37 = *(a2 + 8);
          v36 = *(a2 + 16);
          *(a2 + 32) = v36;
          *(a2 + 48) = v37 & 0xFFFFFFFFFFFFFFC0;
          v38 = (-v36 & 0x3FLL) == 0;
          v39 = v36 + (-v36 & 0x3FLL);
          *(a2 + 16) = v39;
          *(a2 + 24) = v39;
          if (!v38)
          {
            *(a2 + 32) = v39;
          }
        }

        *(a2 + 64) = 2;
      }

      v40 = a7;
      v41 = a3;
      v42 = (*(a2 + 40) - v30);
      if (v42 < *(a2 + 32))
      {
        *(a2 + 32) = v42;
      }

      *(a2 + 40) = v42;
      *(a1 + 56) = v42;
      v43 = a1;
      v44 = a2;
      bzero(v42, v29);
      a1 = v43;
      a2 = v44;
      *(v43 + 96) = 0;
      a3 = v41;
      a7 = v40;
      goto LABEL_70;
    }

    if (!v31)
    {
      v33 = *(a2 + 8);
      v32 = *(a2 + 16);
      *(a2 + 32) = v32;
      *(a2 + 48) = v33 & 0xFFFFFFFFFFFFFFC0;
      v34 = -v32 & 0x3FLL;
      v13 = v32 + v34;
      if (v13 > v33)
      {
        goto LABEL_62;
      }

      *(a2 + 16) = v13;
      *(a2 + 24) = v13;
      if (v34)
      {
        *(a2 + 32) = v13;
      }

      *(a2 + 64) = 1;
    }

    if (v30)
    {
      v35 = (*(a2 + 40) - v30);
      if (v35 >= v13)
      {
        if (v35 < *(a2 + 32))
        {
          *(a2 + 32) = v35;
        }

        *(a2 + 40) = v35;
        v45 = *(a2 + 48);
        if (v35 < v45)
        {
          v46 = v45 - v35;
          if (v46 >= v30)
          {
            v46 = v30;
          }

          v47 = a1;
          v48 = a2;
          v49 = a3;
          v50 = a7;
          bzero(v35, v46);
          a7 = v50;
          a3 = v49;
          a1 = v47;
          a2 = v48;
          *(v48 + 48) = v35;
        }
      }

      else
      {
        v35 = 0;
        *(a2 + 56) = 1;
      }

      goto LABEL_69;
    }

LABEL_62:
    v35 = 0;
LABEL_69:
    *(a1 + 56) = v35;
    v51 = __ROR8__(*(a1 + 96), 24) ^ __ROR8__(*(a1 + 96), 49) ^ *(a1 + 96);
    v52 = 0x9FB21C651E98DF25 * ((((0x9FB21C651E98DF25 * v51) >> 35) + 8) ^ (0x9FB21C651E98DF25 * v51));
    v53 = 0x9FB21C651E98DF25 * (__ROR8__(*(a1 + 104), 24) ^ (*(a1 + 104) << 15) ^ *(a1 + 104));
    *(a1 + 96) = v52 ^ (((0x9FB21C651E98DF25 * (((v53 >> 35) + 4) ^ v53)) ^ v52) >> 28) ^ (0x9FB21C651E98DF25 * (((v53 >> 35) + 4) ^ v53));
LABEL_70:
    v54 = a3[3];
    if (v54 >= 6)
    {
      v54 = 6;
    }

    if (v54 <= 4)
    {
      v54 = 4;
    }

    *(a1 + 52) = a3[2] - v54;
  }

  if (a7 != 1 || a3[6] < 7u)
  {
    goto LABEL_111;
  }

  v55 = *(a2 + 64);
  if (v55 > 1)
  {
    goto LABEL_80;
  }

  if (v55)
  {
LABEL_79:
    *(a2 + 64) = 2;
LABEL_80:
    v56 = *(a2 + 40);
    v57 = v56 - 1024;
    v58 = *(a2 + 24);
    if (v56 - 1024 >= v58)
    {
      if (v57 < *(a2 + 32))
      {
        *(a2 + 32) = v57;
      }

      *(a2 + 40) = v57;
      v59 = v56 - 1024;
    }

    else
    {
      v59 = 0;
      *(a2 + 56) = 1;
      v57 = v56;
    }

    *(a1 + 144) = v59;
    v60 = v57 - 192;
    if (v57 - 192 >= v58)
    {
      if (v60 < *(a2 + 32))
      {
        *(a2 + 32) = v60;
      }

      *(a2 + 40) = v60;
      v61 = v57 - 192;
    }

    else
    {
      v61 = 0;
      *(a2 + 56) = 1;
      v60 = v57;
    }

    *(a1 + 152) = v61;
    v62 = v60 - 256;
    if (v60 - 256 >= v58)
    {
      if (v62 < *(a2 + 32))
      {
        *(a2 + 32) = v62;
      }

      *(a2 + 40) = v62;
      v63 = v60 - 256;
    }

    else
    {
      v63 = 0;
      *(a2 + 56) = 1;
      v62 = v60;
    }

    *(a1 + 160) = v63;
    v64 = v62 - 128;
    if (v62 - 128 >= v58)
    {
      if (v64 < *(a2 + 32))
      {
        *(a2 + 32) = v64;
      }

      *(a2 + 40) = v64;
      v65 = v62 - 128;
    }

    else
    {
      v65 = 0;
      *(a2 + 56) = 1;
      v64 = v62;
    }

    *(a1 + 168) = v65;
    v66 = v64 - 32832;
    if (v64 - 32832 >= v58)
    {
      if (v66 < *(a2 + 32))
      {
        *(a2 + 32) = v66;
      }

      *(a2 + 40) = v66;
      v67 = v64 - 32832;
    }

    else
    {
      v67 = 0;
      *(a2 + 56) = 1;
      v66 = v64;
    }

    *(a1 + 176) = v67;
    v68 = v66 - 114816;
    if (v66 - 114816 >= v58)
    {
      if (v68 < *(a2 + 32))
      {
        *(a2 + 32) = v68;
      }

      *(a2 + 40) = v68;
    }

    else
    {
      v68 = 0;
      *(a2 + 56) = 1;
    }

    goto LABEL_110;
  }

  v71 = *(a2 + 8);
  v70 = *(a2 + 16);
  *(a2 + 32) = v70;
  *(a2 + 48) = v71 & 0xFFFFFFFFFFFFFFC0;
  v72 = -v70 & 0x3FLL;
  v73 = v70 + v72;
  if (v73 <= v71)
  {
    *(a2 + 16) = v73;
    *(a2 + 24) = v73;
    if (v72)
    {
      *(a2 + 32) = v73;
    }

    goto LABEL_79;
  }

  v68 = 0;
  *(a2 + 48) = v71 & 0xFFFFFFFFFFFFFFC0;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0;
LABEL_110:
  *(a1 + 184) = v68;
LABEL_111:
  v69 = *a3;
  *(a1 + 268) = *(a3 + 3);
  *(a1 + 256) = v69;
  if (*(a2 + 56))
  {
    return -64;
  }

  else
  {
    return 0;
  }
}

uint64_t ZSTD_compressEnd_public(uint64_t a1, _DWORD *a2, unint64_t a3, char *a4, size_t a5)
{
  v8 = ZSTD_compressContinue_internal(a1, a2, a3, a4, a5, 1);
  v9 = v8;
  if (v8 > 0xFFFFFFFFFFFFFF88)
  {
    return v9;
  }

  v10 = *a1;
  if (!*a1)
  {
    return -60;
  }

  v11 = a2 + v8;
  v12 = a3 - v8;
  if (v10 == 3)
  {
    v17 = v11;
    if (*(a1 + 268))
    {
      goto LABEL_20;
    }
  }

  else if (v10 == 1)
  {
    v13 = *(a1 + 264);
    if (v12 < 0x12)
    {
      return -70;
    }

    v14 = 8 * *(a1 + 236) - 80;
    v15 = (4 * (*(a1 + 268) > 0)) | (32 * (v13 != 0));
    if (*(a1 + 232))
    {
      v16 = 0;
    }

    else
    {
      *v11 = -47205080;
      v16 = 4;
    }

    v11[v16] = v15;
    if (v13)
    {
      v19 = 0;
    }

    else
    {
      v19 = v14;
    }

    v11[v16 + 1] = v19;
    v20 = &v11[v16 | 2];
    *a1 = 2;
    *v20 = 1;
    v20[2] = 0;
    v17 = v20 + 3;
    v12 = v12 - (v16 | 2) - 3;
    if (*(a1 + 268))
    {
LABEL_20:
      if (v12 >= 4)
      {
        v21 = v8;
        v22 = ZSTD_XXH64_digest((a1 + 784));
        v8 = v21;
        *v17 = v22;
        v17 += 4;
        goto LABEL_22;
      }

      return -70;
    }
  }

  else
  {
    v18 = v12 >= 3;
    v12 -= 3;
    if (!v18)
    {
      return -70;
    }

    *v11 = 1;
    v11[2] = 0;
    v17 = v11 + 3;
    if (*(a1 + 268))
    {
      goto LABEL_20;
    }
  }

LABEL_22:
  *a1 = 0;
  v9 = (v17 - v11);
  if ((v17 - v11) <= 0xFFFFFFFFFFFFFF88)
  {
    v23 = *(a1 + 760);
    if (v23 && v23 != *(a1 + 768) + 1)
    {
      return -72;
    }

    else
    {
      v9 += v8;
    }
  }

  return v9;
}

uint64_t ZSTD_compressContinue_internal(uint64_t a1, _DWORD *a2, unint64_t a3, char *a4, size_t a5, int a6)
{
  v473 = *MEMORY[0x1E69E9840];
  if (!*a1)
  {
    return -60;
  }

  v7 = a4;
  v8 = a3;
  if (*a1 != 1)
  {
    v22 = 0;
    if (!a5)
    {
      return v22;
    }

    goto LABEL_30;
  }

  v10 = *(a1 + 760) - 1;
  v11 = *(a1 + 664);
  v12 = v11 > 0xFF;
  if (v11)
  {
    ++v12;
  }

  if ((v11 & 0xFFFF0000) != 0)
  {
    ++v12;
  }

  if (*(a1 + 272))
  {
    v13 = 0;
  }

  else
  {
    v13 = v12;
  }

  v14 = *(a1 + 236);
  v15 = *(a1 + 264);
  if (v15)
  {
    v16 = v10 > 1 << v14;
  }

  else
  {
    v16 = 1;
  }

  v17 = !v16;
  v18 = v10 >> 8 > 0x100;
  if (v10 > 0xFF)
  {
    ++v18;
  }

  if (v10 > 0xFFFFFFFE)
  {
    ++v18;
  }

  if (v15)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  if (v17)
  {
    v20 = 32;
  }

  else
  {
    v20 = 0;
  }

  if (a3 < 0x12)
  {
    return -70;
  }

  v29 = v20 | (v13 + 4 * (*(a1 + 268) > 0)) | (v19 << 6);
  if (*(a1 + 232))
  {
    v30 = 0;
  }

  else
  {
    *a2 = -47205080;
    v30 = 1;
  }

  v22 = (v30 * 4) | 1;
  LOBYTE(a2[v30]) = v29;
  if ((v17 & 1) == 0)
  {
    *(a2 + v22) = 8 * v14 - 80;
    v22 = (v30 * 4) | 2;
  }

  if (v13 == 3)
  {
    *(a2 + v22) = v11;
    v22 += 4;
    if (v19 != 1)
    {
      goto LABEL_523;
    }

LABEL_528:
    *(a2 + v22) = v10 - 256;
    v22 += 2;
    goto LABEL_531;
  }

  if (v13 == 2)
  {
    *(a2 + v22) = v11;
    v22 += 2;
LABEL_522:
    if (v19 != 1)
    {
      goto LABEL_523;
    }

    goto LABEL_528;
  }

  if (v13 != 1)
  {
    goto LABEL_522;
  }

  *(a2 + v22++) = v11;
  if (v19 == 1)
  {
    goto LABEL_528;
  }

LABEL_523:
  if (v19 == 2)
  {
    *(a2 + v22) = v10;
    v22 += 4;
  }

  else if (v19 == 3)
  {
    *(a2 + v22) = v10;
    v22 += 8;
  }

  else if (v17)
  {
    *(a2 + v22++) = v10;
  }

LABEL_531:
  v8 = a3 - v22;
  a2 = (a2 + v22);
  *a1 = 2;
  if (!a5)
  {
    return v22;
  }

LABEL_30:
  v450 = (a1 + 3216);
  v23 = *(a1 + 3216);
  if (*(a1 + 3352))
  {
    v24 = 0;
  }

  else
  {
    v24 = v23 == a4;
  }

  v25 = !v24;
  if (v24)
  {
    v26 = *(a1 + 3232);
    v28 = *(a1 + 3244);
    v27 = *(a1 + 3240);
  }

  else
  {
    v26 = *(a1 + 3224);
    v27 = v23 - v26;
    v28 = *(a1 + 3240);
    *(a1 + 3244) = v28;
    *(a1 + 3240) = v23 - v26;
    *(a1 + 3232) = v26;
    *(a1 + 3224) = a4 - &v23[-v26];
    if (v23 - v26 - v28 <= 7)
    {
      *(a1 + 3244) = v27;
      v28 = v23 - v26;
    }
  }

  v31 = &a4[a5];
  *v450 = &a4[a5];
  if (&a4[a5] > v26 + v28 && v26 + v27 > a4)
  {
    v33 = &v31[-v26];
    if (v33 > v27)
    {
      LODWORD(v33) = v27;
    }

    *(a1 + 3244) = v33;
  }

  if (v25)
  {
    *(a1 + 3352) = 0;
    *(a1 + 3260) = v27;
  }

  if (*(a1 + 328) == 1)
  {
    v34 = *(a1 + 1032);
    if (v34 == a4)
    {
      v35 = *(a1 + 1048);
      v37 = *(a1 + 1060);
      LODWORD(v36) = *(a1 + 1056);
    }

    else
    {
      v35 = *(a1 + 1040);
      v36 = &v34[-v35];
      v37 = *(a1 + 1056);
      *(a1 + 1060) = v37;
      *(a1 + 1056) = v36;
      *(a1 + 1048) = v35;
      *(a1 + 1040) = a4 - v36;
      if (v36 - v37 <= 7)
      {
        *(a1 + 1060) = v36;
        v37 = v36;
      }
    }

    *(a1 + 1032) = v31;
    if (v31 > v35 + v37 && v35 + v36 > a4)
    {
      v38 = &v31[-v35];
      if (v38 > v36)
      {
        LODWORD(v38) = v36;
      }

      *(a1 + 1060) = v38;
    }
  }

  v428 = a2;
  v39 = (a1 + 232);
  v40 = *(a1 + 752);
  v42 = *(a1 + 236);
  if (*(a1 + 268))
  {
    ZSTD_XXH64_update((a1 + 784), a4, a5);
  }

  v448 = 1 << v42;
  v449 = a6 & 1;
  v444 = a1 + 4128;
  v451 = (a1 + 952);
  v452 = (a1 + 4048);
  v447 = (a1 + 3968);
  v441 = (a1 + 912);
  v412 = a5;
  v43 = a5;
  v44 = v428;
  v430 = v22;
  v45 = v40;
  v425 = a6;
  v443 = a1 + 232;
  do
  {
    v46 = v449;
    if (v45 < v43)
    {
      v46 = 0;
    }

    v455 = v46;
    if (v8 < 6)
    {
      return -70;
    }

    v453 = v43;
    if (v43 < v45)
    {
      v45 = v43;
    }

    ZSTD_overflowCorrectIfNeeded(v450, (a1 + 680), v39, v7, v7 + v45);
    v47 = *(a1 + 3224);
    v454 = &v7[v45];
    v48 = *(a1 + 3256);
    if (v48 + v448 < (v7 + v45 - v47) || v48 != *(a1 + 3240))
    {
      v48 = 0;
      *(a1 + 3256) = 0;
      *(a1 + 3464) = 0;
    }

    v49 = v7 - v47;
    v50 = *(a1 + 3244);
    if (v48 + v448 < v49)
    {
      if (v50 < v49 - v448)
      {
        *(a1 + 3244) = v49 - v448;
        v50 = v49 - v448;
      }

      if (*(a1 + 3240) < v50)
      {
        *(a1 + 3240) = v50;
      }

      *(a1 + 3256) = 0;
      *(a1 + 3464) = 0;
    }

    if (*(a1 + 3260) < v50)
    {
      *(a1 + 3260) = v50;
    }

    *v456 = v45;
    if (*(a1 + 288))
    {
      v51 = ZSTD_buildSeqStore(a1, v7, v45);
      v21 = v51;
      if (v51 > 0xFFFFFFFFFFFFFF88)
      {
        return v21;
      }

      if (v51)
      {
LABEL_95:
        v21 = v45 + 3;
        if (v45 + 3 > v8)
        {
          return -70;
        }

        *v44 = v455 | (8 * v45);
        *(v44 + 2) = v45 >> 13;
        memcpy((v44 + 3), v7, v45);
        if (v21 > 0xFFFFFFFFFFFFFF88)
        {
          return v21;
        }

        goto LABEL_97;
      }

      if (!*(a1 + 944) && *(a1 + 960) - *(a1 + 952) <= 0x1FuLL && *(a1 + 976) - *(a1 + 968) <= 9uLL && ZSTD_isRLE(v7, v45))
      {
        v88 = *v7;
        *v44 = v455 | (8 * v45) | 2;
        *(v44 + 2) = v45 >> 13;
        *(v44 + 3) = v88;
        v21 = 4;
        goto LABEL_97;
      }

      v472 = 0;
      v470 = 0u;
      v471 = 0u;
      v468 = 0u;
      v469 = 0u;
      v466 = 0u;
      v467 = 0u;
      v464 = 0u;
      v465 = 0u;
      v462 = 0u;
      v463 = 0u;
      v461 = 0u;
      memset(v460, 0, sizeof(v460));
      v21 = ZSTD_buildBlockEntropyStats(v451, *(a1 + 3200), *(a1 + 3208), v39, v460, *(a1 + 3520));
      if (v21 > 0xFFFFFFFFFFFFFF88)
      {
        goto LABEL_465;
      }

      __src = *(a1 + 3200);
      v429 = *(a1 + 8);
      v56 = *(a1 + 952);
      v57 = *(a1 + 960);
      v58 = *(a1 + 968);
      v413 = *(a1 + 976);
      v59 = v413 - v58;
      v60 = *(a1 + 288);
      if (v60 <= 0x53C)
      {
        v60 = 1340;
      }

      v438 = v60;
      __dst = *(a1 + 3208);
      v61 = v460[0];
      v442 = LODWORD(v460[0]) == 2;
      v426 = v8;
      v431 = v44 + v8;
      v62 = *(a1 + 984);
      v63 = *(a1 + 992);
      v64 = *(a1 + 1000);
      v445 = *(a1 + 960);
      v65 = (v57 - v56) >> 3;
      *v411 = *(a1 + 952);
      if (v57 == v56)
      {
        v89 = 1;
        v90 = v44;
        v422 = v7;
        goto LABEL_448;
      }

      v66 = *(a1 + 3520);
      LODWORD(v457) = 255;
      v67.i64[0] = 255;
      v67.i64[1] = 255;
      v436 = v413 - v58;
      if ((LODWORD(v460[0]) - 2) >= 2)
      {
        v68 = v413 - v58;
        if (LODWORD(v460[0]))
        {
          v68 = LODWORD(v460[0]) == 1;
        }

        goto LABEL_230;
      }

      v138 = v58;
      v139 = v62;
      v140 = v63;
      v141 = HIST_count_wksp(v66, &v457, v58, v413 - v58, v66);
      v63 = v140;
      v62 = v139;
      v58 = v138;
      v67.i64[0] = 255;
      v67.i64[1] = 255;
      v68 = v436;
      if (v141 > 0xFFFFFFFFFFFFFF88)
      {
        goto LABEL_230;
      }

      if ((v457 & 0x80000000) != 0)
      {
        v145 = 3;
LABEL_227:
        v165 = *(&v461 + 1);
        if (v61 != 2)
        {
          v165 = 0;
        }

        v68 = v145 + v165;
LABEL_230:
        v166 = DWORD1(v462);
        v167 = (v64 + v65);
        LODWORD(v457) = 31;
        if (v65 > 0x5DB)
        {
          v170 = xmmword_182B08DD0;
          v169 = xmmword_182B08DC0;
          v172 = xmmword_182B08DF0;
          v171 = xmmword_182B08DE0;
          if ((v66 & 3) == 0)
          {
            v432 = v58;
            v423 = v68;
            v178 = v62;
            v179 = v63;
            HIST_count_parallel_wksp(v66, &v457, v64, v65, 0, v66);
            v63 = v179;
            v62 = v178;
            v68 = v423;
            v58 = v432;
            v172 = xmmword_182B08DF0;
            v171 = xmmword_182B08DE0;
            v170 = xmmword_182B08DD0;
            v169 = xmmword_182B08DC0;
            v67.i64[0] = 255;
            v67.i64[1] = 255;
          }
        }

        else
        {
          *(v66 + 96) = 0u;
          *(v66 + 112) = 0u;
          *(v66 + 64) = 0u;
          *(v66 + 80) = 0u;
          *(v66 + 32) = 0u;
          *(v66 + 48) = 0u;
          v168 = v64;
          *v66 = 0u;
          *(v66 + 16) = 0u;
          v170 = xmmword_182B08DD0;
          v169 = xmmword_182B08DC0;
          v172 = xmmword_182B08DF0;
          v171 = xmmword_182B08DE0;
          do
          {
            v173 = *v168;
            v168 = (v168 + 1);
            ++*(v66 + 4 * v173);
          }

          while (v168 < v167);
          v174 = 32;
          v175 = 31;
          do
          {
            v176 = v175;
            --v174;
            --v175;
          }

          while (!*(v66 + 4 * v174));
          LODWORD(v457) = v174;
          if (v174 >= 7)
          {
            v177 = (v176 + 1) & 0x1FFFFFFF8;
            do
            {
              v177 -= 8;
            }

            while (v177);
          }
        }

        if (v166 != 1)
        {
          if (!v166)
          {
            if (v457 <= 0x1C)
            {
              v180 = v457 + 1;
              if (v457)
              {
                v181 = 0;
                v182 = 0;
                v183 = v180 & 0x3E;
                v184 = (v66 + 4);
                v185 = &word_182B0D082;
                v186 = v183;
                do
                {
                  v187 = *(v185 - 1);
                  v189 = *v185;
                  v185 += 2;
                  v188 = v189;
                  if (v187 == 0xFFFF)
                  {
                    LOWORD(v187) = 1;
                  }

                  if (v188 == 0xFFFF)
                  {
                    LOWORD(v188) = 1;
                  }

                  v181 += (kInverseProbabilityLog256[8 * (v187 & 0x1FFFFFFF)] * *(v184 - 1));
                  v182 += (kInverseProbabilityLog256[8 * (v188 & 0x1FFFFFFF)] * *v184);
                  v184 += 2;
                  v186 -= 2;
                }

                while (v186);
                v190 = v182 + v181;
                if (v183 == v180)
                {
                  goto LABEL_270;
                }
              }

              else
              {
                v183 = 0;
                v190 = 0;
              }

              v204 = v180 - v183;
              v205 = (v66 + 4 * v183);
              v206 = &OF_defaultNorm_36129[v183];
              do
              {
                v208 = *v206++;
                v207 = v208;
                if (v208 == 0xFFFF)
                {
                  v207 = 1;
                }

                v209 = *v205++;
                v190 += (kInverseProbabilityLog256[8 * (v207 & 0x1FFFFFFF)] * v209);
                --v204;
              }

              while (v204);
LABEL_270:
              v194 = v190 >> 8;
              goto LABEL_272;
            }

LABEL_258:
            v193 = 10 * v65;
            goto LABEL_290;
          }

          if ((v166 & 0xFFFFFFFE) == 2)
          {
            v191 = __dst[1032];
            if (__dst[1032])
            {
              v192 = 1 << (v191 - 1);
            }

            else
            {
              v192 = 1;
            }

            if (v457 <= __dst[1033])
            {
              v195 = 0;
              v196 = v457 + 1;
              v197 = &__dst[2 * v192 + 1036];
              v198 = v66;
              do
              {
                v200 = *v197;
                v197 += 4;
                v199 = v200;
                v202 = *v198++;
                v201 = v202;
                if (v202)
                {
                  v203 = ((HIWORD(v199) + 1) << 8) - ((((HIWORD(v199) + 1) << 24) - ((v199 + (1 << v191)) << 8)) >> v191);
                  if (v203 >= (v191 << 8) + 256)
                  {
                    goto LABEL_258;
                  }

                  v195 += v201 * v203;
                }

                --v196;
              }

              while (v196);
              v194 = v195 >> 8;
LABEL_272:
              if (v65 < 1)
              {
LABEL_289:
                v193 = v194 >> 3;
LABEL_290:
                v239 = v462;
                v240 = (v62 + v65);
                LODWORD(v457) = 35;
                if (v65 > 0x5DB)
                {
                  if ((v66 & 3) == 0)
                  {
                    v433 = v58;
                    v424 = v68;
                    v247 = v62;
                    v248 = v63;
                    HIST_count_parallel_wksp(v66, &v457, v62, v65, 0, v66);
                    v63 = v248;
                    v62 = v247;
                    v68 = v424;
                    v58 = v433;
                  }
                }

                else
                {
                  *(v66 + 112) = 0u;
                  *(v66 + 128) = 0u;
                  *(v66 + 80) = 0u;
                  *(v66 + 96) = 0u;
                  *(v66 + 48) = 0u;
                  *(v66 + 64) = 0u;
                  *(v66 + 16) = 0u;
                  *(v66 + 32) = 0u;
                  v241 = v62;
                  *v66 = 0u;
                  do
                  {
                    v242 = *v241;
                    v241 = (v241 + 1);
                    ++*(v66 + 4 * v242);
                  }

                  while (v241 < v240);
                  v243 = 36;
                  v244 = 35;
                  do
                  {
                    v245 = v244;
                    --v243;
                    --v244;
                  }

                  while (!*(v66 + 4 * v243));
                  LODWORD(v457) = v243;
                  if (v243 >= 7)
                  {
                    v246 = (v245 + 1) & 0x1FFFFFFF8;
                    do
                    {
                      v246 -= 8;
                    }

                    while (v246);
                  }
                }

                if (v239 != 1)
                {
                  if (!v239)
                  {
                    if (v457 <= 0x23)
                    {
                      v249 = v457 + 1;
                      if (v457)
                      {
                        v250 = 0;
                        v251 = 0;
                        v252 = v249 & 0x7E;
                        v253 = (v66 + 4);
                        v254 = &word_182B0D0BC;
                        v255 = v252;
                        do
                        {
                          v256 = *(v254 - 1);
                          v258 = *v254;
                          v254 += 2;
                          v257 = v258;
                          if (v256 == 0xFFFF)
                          {
                            LOWORD(v256) = 1;
                          }

                          if (v257 == 0xFFFF)
                          {
                            LOWORD(v257) = 1;
                          }

                          v250 += (kInverseProbabilityLog256[4 * (v256 & 0x3FFFFFFF)] * *(v253 - 1));
                          v251 += (kInverseProbabilityLog256[4 * (v257 & 0x3FFFFFFF)] * *v253);
                          v253 += 2;
                          v255 -= 2;
                        }

                        while (v255);
                        v259 = v251 + v250;
                        if (v252 == v249)
                        {
                          goto LABEL_330;
                        }
                      }

                      else
                      {
                        v252 = 0;
                        v259 = 0;
                      }

                      v273 = v249 - v252;
                      v274 = (v66 + 4 * v252);
                      v275 = &LL_defaultNorm_36131[v252];
                      do
                      {
                        v277 = *v275++;
                        v276 = v277;
                        if (v277 == 0xFFFF)
                        {
                          v276 = 1;
                        }

                        v278 = *v274++;
                        v259 += (kInverseProbabilityLog256[4 * (v276 & 0x3FFFFFFF)] * v278);
                        --v273;
                      }

                      while (v273);
LABEL_330:
                      v263 = v259 >> 8;
                      goto LABEL_332;
                    }

LABEL_318:
                    v262 = 10 * v65;
                    goto LABEL_343;
                  }

                  if ((v239 & 0xFFFFFFFE) == 2)
                  {
                    v260 = __dst[2144];
                    if (__dst[2144])
                    {
                      v261 = 1 << (v260 - 1);
                    }

                    else
                    {
                      v261 = 1;
                    }

                    if (v457 <= __dst[2145])
                    {
                      v264 = 0;
                      v265 = v457 + 1;
                      v266 = &__dst[2 * v261 + 2148];
                      v267 = v66;
                      do
                      {
                        v269 = *v266;
                        v266 += 4;
                        v268 = v269;
                        v271 = *v267++;
                        v270 = v271;
                        if (v271)
                        {
                          v272 = ((HIWORD(v268) + 1) << 8) - ((((HIWORD(v268) + 1) << 24) - ((v268 + (1 << v260)) << 8)) >> v260);
                          if (v272 >= (v260 << 8) + 256)
                          {
                            goto LABEL_318;
                          }

                          v264 += v270 * v272;
                        }

                        --v265;
                      }

                      while (v265);
                      v263 = v264 >> 8;
LABEL_332:
                      if (v65 >= 1)
                      {
                        v279 = v62 + v65;
                        v280 = v62 + 1;
                        if (v62 + v65 <= v62 + 1)
                        {
                          v279 = v62 + 1;
                        }

                        v281 = v279 - v62;
                        if (v281 > 1)
                        {
                          v283 = 0;
                          v284 = v281 & 0xFFFFFFFFFFFFFFFELL;
                          v285 = v281 & 0xFFFFFFFFFFFFFFFELL;
                          do
                          {
                            v286 = *(v280 - 1);
                            v287 = *v280;
                            v280 += 2;
                            v263 += LL_bits_36216[v286];
                            v283 += LL_bits_36216[v287];
                            v285 -= 2;
                          }

                          while (v285);
                          v263 += v283;
                          if (v281 == v284)
                          {
                            goto LABEL_342;
                          }

                          v282 = (v62 + v284);
                        }

                        else
                        {
                          v282 = v62;
                        }

                        do
                        {
                          v288 = *v282;
                          v282 = (v282 + 1);
                          v263 += LL_bits_36216[v288];
                        }

                        while (v282 < v240);
                      }

LABEL_342:
                      v262 = v263 >> 3;
LABEL_343:
                      v289 = DWORD2(v462);
                      v290 = (v63 + v65);
                      LODWORD(v457) = 52;
                      if (v65 > 0x5DB)
                      {
                        if ((v66 & 3) == 0)
                        {
                          v418 = v193;
                          v420 = v44;
                          v434 = v58;
                          v297 = v62;
                          v298 = v262;
                          v299 = v63;
                          HIST_count_parallel_wksp(v66, &v457, v63, v65, 0, v66);
                          v63 = v299;
                          v262 = v298;
                          v44 = v420;
                          v62 = v297;
                          v193 = v418;
                          v58 = v434;
                        }
                      }

                      else
                      {
                        *(v66 + 208) = 0;
                        *(v66 + 176) = 0u;
                        *(v66 + 192) = 0u;
                        *(v66 + 144) = 0u;
                        *(v66 + 160) = 0u;
                        *(v66 + 112) = 0u;
                        *(v66 + 128) = 0u;
                        *(v66 + 80) = 0u;
                        *(v66 + 96) = 0u;
                        *(v66 + 48) = 0u;
                        *(v66 + 64) = 0u;
                        *(v66 + 16) = 0u;
                        *(v66 + 32) = 0u;
                        v291 = v63;
                        *v66 = 0u;
                        do
                        {
                          v292 = *v291;
                          v291 = (v291 + 1);
                          ++*(v66 + 4 * v292);
                        }

                        while (v291 < v290);
                        v293 = 53;
                        v294 = 52;
                        do
                        {
                          v295 = v294;
                          --v293;
                          --v294;
                        }

                        while (!*(v66 + 4 * v293));
                        LODWORD(v457) = v293;
                        if (v293 >= 7)
                        {
                          v296 = (v295 + 1) & 0x1FFFFFFF8;
                          do
                          {
                            v296 -= 8;
                          }

                          while (v296);
                        }
                      }

                      if (v289 != 1)
                      {
                        if (!v289)
                        {
                          v59 = v436;
                          if (v457 <= 0x34)
                          {
                            v300 = v457 + 1;
                            if (v457)
                            {
                              v301 = 0;
                              v302 = 0;
                              v303 = v300 & 0x7E;
                              v304 = (v66 + 4);
                              v305 = &word_182B0D104;
                              v306 = v303;
                              do
                              {
                                v307 = *(v305 - 1);
                                v309 = *v305;
                                v305 += 2;
                                v308 = v309;
                                if (v307 == 0xFFFF)
                                {
                                  LOWORD(v307) = 1;
                                }

                                if (v308 == 0xFFFF)
                                {
                                  LOWORD(v308) = 1;
                                }

                                v301 += (kInverseProbabilityLog256[4 * (v307 & 0x3FFFFFFF)] * *(v304 - 1));
                                v302 += (kInverseProbabilityLog256[4 * (v308 & 0x3FFFFFFF)] * *v304);
                                v304 += 2;
                                v306 -= 2;
                              }

                              while (v306);
                              v310 = v302 + v301;
                              if (v303 == v300)
                              {
                                goto LABEL_383;
                              }
                            }

                            else
                            {
                              v303 = 0;
                              v310 = 0;
                            }

                            v323 = v300 - v303;
                            v324 = (v66 + 4 * v303);
                            v325 = &ML_defaultNorm_36133[v303];
                            do
                            {
                              v327 = *v325++;
                              v326 = v327;
                              if (v327 == 0xFFFF)
                              {
                                v326 = 1;
                              }

                              v328 = *v324++;
                              v310 += (kInverseProbabilityLog256[4 * (v326 & 0x3FFFFFFF)] * v328);
                              --v323;
                            }

                            while (v323);
LABEL_383:
                            v314 = v310 >> 8;
                            goto LABEL_385;
                          }

LABEL_371:
                          v313 = 10 * v65;
LABEL_396:
                          v45 = *v456;
                          if (v413 == v58)
                          {
                            v339 = 256;
                          }

                          else
                          {
                            v339 = (v68 << 8) / v59;
                          }

                          v340 = v68 + v193 + v262 + *(&v471 + 1) + v313 + 6;
                          v341 = (v340 + (v438 >> 1)) / v438;
                          if (v341 <= 1)
                          {
                            v341 = 1;
                          }

                          v22 = v430;
                          if (v340 > *v456)
                          {
                            goto LABEL_480;
                          }

                          v419 = v341 - 1;
                          if (v341 == 1)
                          {
                            v89 = 1;
                            v90 = v44;
                            v422 = v7;
                            v56 = *v411;
                          }

                          else
                          {
                            v342 = 0;
                            v343 = ((v340 - v68) << 8) / v65;
                            v89 = 1;
                            v56 = *v411;
                            v421 = v44;
                            v422 = v7;
                            v90 = v44;
                            v344 = (v340 << 8) / v341;
                            v417 = v7;
                            v415 = v343;
                            v416 = v339;
                            v414 = v344;
                            do
                            {
                              v65 = (v445 - v56) >> 3;
                              v345 = 30720;
                              if (v342)
                              {
                                v345 = 0;
                              }

                              if (v65 < 2)
                              {
                                v348 = 1;
                              }

                              else
                              {
                                v346 = *(v56 + 4);
                                v347 = v345 + v343 + v339 * v346;
                                v348 = 1;
                                if (v347 <= v344)
                                {
                                  v349 = v346 + *(v56 + 6) + 3;
                                  v350 = (v56 + 14);
                                  v348 = 1;
                                  while (1)
                                  {
                                    v351 = *(v350 - 1);
                                    v347 += v343 + v339 * v351;
                                    v349 += v351 + *v350 + 3;
                                    if (v347 > v344 && v347 < v349 << 8)
                                    {
                                      break;
                                    }

                                    v350 += 4;
                                    if (v65 == ++v348)
                                    {
                                      v348 = (v445 - v56) >> 3;
                                      break;
                                    }
                                  }
                                }
                              }

                              if (v56 + 8 * v348 == v445)
                              {
                                v44 = v421;
                                goto LABEL_447;
                              }

                              v439 = v342;
                              v353 = 0;
                              LODWORD(v457) = 0;
                              v459 = 0;
                              v354 = *(a1 + 1028);
                              v355 = v56 - *(a1 + 952);
                              v356 = 4;
                              v357 = v355;
                              v358 = v348;
                              do
                              {
                                v359 = *(v56 + v356);
                                if (v354 == (v357 >> 3) && *(a1 + 1024) == 1)
                                {
                                  v359 |= 0x10000uLL;
                                }

                                v353 += v359;
                                v357 += 8;
                                v356 += 8;
                                --v358;
                              }

                              while (v358);
                              v360 = 0;
                              v361 = 6;
                              v362 = v348;
                              do
                              {
                                v363 = *(v56 + v361);
                                v364 = v363 + 3;
                                if (v354 == (v355 >> 3))
                                {
                                  v365 = v363 + 65539;
                                  if (*(a1 + 1024) == 2)
                                  {
                                    v364 = v365;
                                  }
                                }

                                v360 += v364;
                                v355 += 8;
                                v361 += 8;
                                --v362;
                              }

                              while (v362);
                              v435 = v89;
                              v437 = v90;
                              v366 = v58;
                              v367 = v62;
                              v368 = v63;
                              v369 = ZSTD_compressSubBlock(__dst, v460, v56, v348, v58, v353, v62, v63, v64, v443, v90, v431 - v90, v429, v442, v89, &v457, &v459, 0);
                              v21 = v369;
                              if (v369 > 0xFFFFFFFFFFFFFF88)
                              {
                                a6 = v425;
                                v8 = v426;
                                v22 = v430;
                                v7 = v417;
                                v45 = *v456;
                                v44 = v421;
                                goto LABEL_465;
                              }

                              if (v369)
                              {
                                v58 = v366;
                                v62 = v367;
                                v63 = v368;
                                v370 = v439;
                                v344 = v414;
                                v343 = v415;
                                if (v369 >= v360 + v353)
                                {
                                  v7 = v417;
                                  v44 = v421;
                                  v90 = v437;
                                  v89 = v435;
                                }

                                else
                                {
                                  v44 = v421;
                                  v422 += v360 + v353;
                                  v58 = (v58 + v353);
                                  v90 = &v437[v369];
                                  v62 = (v367 + v348);
                                  v63 = (v368 + v348);
                                  v64 = (v64 + v348);
                                  v371 = v442;
                                  if (v457)
                                  {
                                    v371 = 0;
                                  }

                                  v442 = v371;
                                  if (v459)
                                  {
                                    v89 = 0;
                                  }

                                  else
                                  {
                                    v89 = v435;
                                  }

                                  v56 += 8 * v348;
                                  v7 = v417;
                                }

                                v339 = v416;
                              }

                              else
                              {
                                v7 = v417;
                                v58 = v366;
                                v44 = v421;
                                v62 = v367;
                                v63 = v368;
                                v90 = v437;
                                v370 = v439;
                                v89 = v435;
                                v343 = v415;
                                v339 = v416;
                                v344 = v414;
                              }

                              v342 = v370 + 1;
                            }

                            while (v342 != v419);
                            v65 = (v445 - v56) >> 3;
LABEL_447:
                            v59 = v413 - v58;
                          }

LABEL_448:
                          LODWORD(v457) = 0;
                          v459 = 0;
                          if (v445 == v56)
                          {
                            v372 = 0;
                          }

                          else
                          {
                            v372 = 0;
                            v373 = v56 - *(a1 + 952);
                            v374 = (v56 + 6);
                            v375 = v65;
                            do
                            {
                              v377 = *v374;
                              v374 += 4;
                              v376 = v377;
                              v378 = v377 + 3;
                              if (*(a1 + 1028) == (v373 >> 3))
                              {
                                v379 = v376 + 65539;
                                if (*(a1 + 1024) == 2)
                                {
                                  v378 = v379;
                                }
                              }

                              v372 += v378;
                              v373 += 8;
                              --v375;
                            }

                            while (v375);
                          }

                          v380 = v89;
                          v381 = v90;
                          v382 = v59;
                          v383 = ZSTD_compressSubBlock(__dst, v460, v56, v65, v58, v59, v62, v63, v64, v443, v90, v431 - v90, v429, v442, v89, &v457, &v459, v455);
                          v21 = v383;
                          if (v383 > 0xFFFFFFFFFFFFFF88)
                          {
                            v8 = v426;
                            v45 = *v456;
                            a6 = v425;
                            v22 = v430;
LABEL_465:
                            v39 = (a1 + 232);
                            if (v21 == -70)
                            {
                              goto LABEL_95;
                            }

                            if (v21 > 0xFFFFFFFFFFFFFF88)
                            {
                              return v21;
                            }

                            goto LABEL_481;
                          }

                          if (v383)
                          {
                            v384 = v422;
                            if (v383 < v372 + v382)
                            {
                              v384 = &v422[v372 + v382];
                              v385 = &v381[v383];
                              if (v459)
                              {
                                v386 = 0;
                              }

                              else
                              {
                                v386 = v380;
                              }

                              v56 += 8 * v65;
                              v45 = *v456;
                              v22 = v430;
                              if (v457)
                              {
                                goto LABEL_473;
                              }

                              goto LABEL_471;
                            }

                            v45 = *v456;
                            v385 = v381;
                          }

                          else
                          {
                            v45 = *v456;
                            v385 = v381;
                            v384 = v422;
                          }

                          v386 = v380;
                          v22 = v430;
LABEL_471:
                          if (v442)
                          {
                            v387 = v384;
                            memcpy(__dst, __src, 0x810uLL);
                            v384 = v387;
                          }

LABEL_473:
                          if (!v386 || (v462 - 1) >= 2 && (DWORD2(v462) - 1) >= 2 && (DWORD1(v462) - 3) <= 0xFFFFFFFD)
                          {
                            if (v384 >= v454)
                            {
                              a6 = v425;
                              v8 = v426;
                              v21 = &v385[-v44];
                            }

                            else
                            {
                              v388 = v454 - v384;
                              v389 = v431 - v385;
                              v390 = v385;
                              v21 = v454 - v384 + 3;
                              v8 = v426;
                              if (v21 > v389)
                              {
                                a6 = v425;
                                v39 = (a1 + 232);
                                goto LABEL_95;
                              }

                              *v390 = v455 | (8 * v388);
                              v390[2] = v388 >> 13;
                              memcpy(v390 + 3, v384, v388);
                              a6 = v425;
                              if (v21 <= 0xFFFFFFFFFFFFFF88)
                              {
                                v393 = &v390[v21];
                                if (v56 < v445)
                                {
                                  v394 = *v411;
                                  v457 = *(__src + 702);
                                  v458 = *(__src + 1406);
                                  if (*v411 < v56)
                                  {
                                    v395 = *(a1 + 1028);
                                    v396 = v458;
                                    v397 = v457;
                                    v398 = HIDWORD(v457);
                                    v399 = *v411 - *(a1 + 952);
                                    do
                                    {
                                      v401 = v394;
                                      v402 = *(v394 + 2);
                                      if (v395 == (v399 >> 3) && *(a1 + 1024) == 1)
                                      {
                                        v402 |= 0x10000u;
                                      }

                                      v403 = *v401;
                                      if (*v401 >= 4)
                                      {
                                        v458 = v398;
                                        HIDWORD(v457) = v397;
                                        v400 = v403 - 3;
                                      }

                                      else
                                      {
                                        if (v402)
                                        {
                                          v404 = *v401;
                                        }

                                        else
                                        {
                                          v404 = v403 + 1;
                                        }

                                        v405 = v404 - 1;
                                        if (v404 == 1)
                                        {
                                          goto LABEL_494;
                                        }

                                        if (v404 == 4)
                                        {
                                          v400 = v397 - 1;
                                        }

                                        else
                                        {
                                          v400 = *(&v457 + v405);
                                        }

                                        if (v405 == 1)
                                        {
                                          v398 = v396;
                                        }

                                        v458 = v398;
                                        HIDWORD(v457) = v397;
                                      }

                                      v396 = v398;
                                      LODWORD(v457) = v400;
                                      v398 = v397;
                                      v397 = v400;
LABEL_494:
                                      v394 = v401 + 2;
                                      v399 += 8;
                                    }

                                    while ((v401 + 2) < v56);
                                  }

                                  *(__dst + 702) = v457;
                                  *(__dst + 1406) = v458;
                                }

                                v21 = &v393[-v44];
                              }
                            }

                            goto LABEL_465;
                          }

LABEL_480:
                          v21 = 0;
                          a6 = v425;
                          v8 = v426;
                          v39 = (a1 + 232);
LABEL_481:
                          v391 = *(a1 + 260);
                          if (v391 <= 7)
                          {
                            v392 = 6;
                          }

                          else
                          {
                            v392 = v391 - 1;
                          }

                          if (!v21 || v21 >= v45 - (v45 >> v392) + 1)
                          {
                            goto LABEL_95;
                          }

                          *(a1 + 3200) = vextq_s8(*(a1 + 3200), *(a1 + 3200), 8uLL);
LABEL_97:
                          v52 = *(a1 + 3200);
                          if (*(v52 + 5604) == 2)
                          {
                            *(v52 + 5604) = 1;
                          }

                          goto LABEL_150;
                        }

                        if ((v289 & 0xFFFFFFFE) == 2)
                        {
                          v311 = __dst[1418];
                          if (__dst[1418])
                          {
                            v312 = 1 << (v311 - 1);
                          }

                          else
                          {
                            v312 = 1;
                          }

                          v59 = v436;
                          if (v457 <= __dst[1419])
                          {
                            v315 = 0;
                            v316 = v457 + 1;
                            v317 = &__dst[2 * v312 + 1422];
                            do
                            {
                              v319 = *v317;
                              v317 += 4;
                              v318 = v319;
                              v321 = *v66;
                              v66 += 4;
                              v320 = v321;
                              if (v321)
                              {
                                v322 = ((HIWORD(v318) + 1) << 8) - ((((HIWORD(v318) + 1) << 24) - ((v318 + (1 << v311)) << 8)) >> v311);
                                if (v322 >= (v311 << 8) + 256)
                                {
                                  goto LABEL_371;
                                }

                                v315 += v320 * v322;
                              }

                              --v316;
                            }

                            while (v316);
                            v314 = v315 >> 8;
LABEL_385:
                            if (v65 >= 1)
                            {
                              v329 = v63 + v65;
                              v330 = v63 + 1;
                              if (v63 + v65 <= v63 + 1)
                              {
                                v329 = v63 + 1;
                              }

                              v331 = v329 - v63;
                              if (v331 > 1)
                              {
                                v333 = 0;
                                v334 = v331 & 0xFFFFFFFFFFFFFFFELL;
                                v335 = v331 & 0xFFFFFFFFFFFFFFFELL;
                                do
                                {
                                  v336 = *(v330 - 1);
                                  v337 = *v330;
                                  v330 += 2;
                                  v314 += ML_bits_36218[v336];
                                  v333 += ML_bits_36218[v337];
                                  v335 -= 2;
                                }

                                while (v335);
                                v314 += v333;
                                if (v331 == v334)
                                {
                                  goto LABEL_395;
                                }

                                v332 = (v63 + v334);
                              }

                              else
                              {
                                v332 = v63;
                              }

                              do
                              {
                                v338 = *v332;
                                v332 = (v332 + 1);
                                v314 += ML_bits_36218[v338];
                              }

                              while (v332 < v290);
                            }

LABEL_395:
                            v313 = v314 >> 3;
                            goto LABEL_396;
                          }

                          goto LABEL_371;
                        }
                      }

                      v314 = 0;
                      v59 = v436;
                      goto LABEL_385;
                    }

                    goto LABEL_318;
                  }
                }

                v263 = 0;
                goto LABEL_332;
              }

              v210 = v64 + v65;
              if (v64 + v65 <= v64 + 1)
              {
                v210 = v64 + 1;
              }

              v211 = v210 - v64;
              if (v211 < 4)
              {
                v212 = v64;
                goto LABEL_288;
              }

              if (v211 >= 0x10)
              {
                v213 = v211 & 0xFFFFFFFFFFFFFFF0;
                v214 = 0uLL;
                v215 = v194;
                v216 = v64;
                v217 = v211 & 0xFFFFFFFFFFFFFFF0;
                v218 = 0uLL;
                v219 = 0uLL;
                v220 = 0uLL;
                v221 = 0uLL;
                v222 = 0uLL;
                v223 = 0uLL;
                do
                {
                  v224 = *v216++;
                  v225 = vqtbl1q_s8(v224, v169);
                  v226 = vqtbl1q_s8(v224, v170);
                  v227 = vqtbl1q_s8(v224, v171);
                  v228 = vqtbl1q_s8(v224, v172);
                  v214 = vaddw_high_u32(v214, v226);
                  v219 = vaddw_high_u32(v219, v225);
                  v218 = vaddw_u32(v218, *v225.i8);
                  v215 = vaddw_u32(v215, *v226.i8);
                  v220 = vaddw_u32(v220, *v227.i8);
                  v221 = vaddw_high_u32(v221, v227);
                  v222 = vaddw_u32(v222, *v228.i8);
                  v223 = vaddw_high_u32(v223, v228);
                  v217 -= 16;
                }

                while (v217);
                v55 = vaddq_s64(v219, v223);
                v194 = vaddvq_s64(vaddq_s64(vaddq_s64(vaddq_s64(v215, v220), vaddq_s64(v218, v222)), vaddq_s64(vaddq_s64(v214, v221), v55)));
                if (v211 == v213)
                {
                  goto LABEL_289;
                }

                if ((v211 & 0xC) == 0)
                {
                  v212 = (v64 + v213);
                  do
                  {
LABEL_288:
                    v238 = *v212;
                    v212 = (v212 + 1);
                    v194 += v238;
                  }

                  while (v212 < v167);
                  goto LABEL_289;
                }
              }

              else
              {
                v213 = 0;
              }

              v229 = v211 & 0xFFFFFFFFFFFFFFFCLL;
              v230 = 0uLL;
              v231 = v194;
              v232 = v213 - (v211 & 0xFFFFFFFFFFFFFFFCLL);
              v233 = (v64 + v213);
              do
              {
                v234 = *v233++;
                v55.i32[0] = v234;
                v235 = vmovl_u16(*&vmovl_u8(*v55.i8));
                v236.i64[0] = v235.u32[0];
                v236.i64[1] = v235.u32[1];
                v237 = vandq_s8(v236, v67);
                v236.i64[0] = v235.u32[2];
                v236.i64[1] = v235.u32[3];
                v55 = vandq_s8(v236, v67);
                v230 = vaddq_s64(v230, v55);
                v231 = vaddq_s64(v231, v237);
                v232 += 4;
              }

              while (v232);
              v194 = vaddvq_s64(vaddq_s64(v231, v230));
              if (v211 == v229)
              {
                goto LABEL_289;
              }

              v212 = (v64 + v229);
              goto LABEL_288;
            }

            goto LABEL_258;
          }
        }

        v194 = 0;
        goto LABEL_272;
      }

      v142 = v457 + 1;
      if (v457 >= 7)
      {
        v143 = v142 & 0xFFFFFFF8;
        v146 = (v66 + 16);
        v147 = (__dst + 20);
        v148 = 0uLL;
        v149 = v143;
        v150 = 0uLL;
        v55 = 0uLL;
        v151 = 0uLL;
        do
        {
          v152 = v147[-2];
          v153 = v147[-1];
          v154 = *v147;
          v155 = v147[1];
          v147 += 4;
          v156 = v146[-1];
          v157 = vuzp1q_s32(vandq_s8(v152, v67), vandq_s8(v153, v67));
          v158 = vuzp1q_s32(vandq_s8(v154, v67), vandq_s8(v155, v67));
          v150 = vmlal_high_u32(v150, v157, v156);
          v148 = vmlal_u32(v148, *v157.i8, *v156.i8);
          v151 = vmlal_high_u32(v151, v158, *v146);
          v55 = vmlal_u32(v55, *v158.i8, *v146->i8);
          v146 += 2;
          v149 -= 8;
        }

        while (v149);
        v144 = vaddvq_s64(vaddq_s64(vaddq_s64(v55, v148), vaddq_s64(v151, v150)));
        if (v143 == v142)
        {
          goto LABEL_226;
        }
      }

      else
      {
        v143 = 0;
        v144 = 0;
      }

      v159 = v142 - v143;
      v160 = (v66 + 4 * v143);
      v161 = &__dst[4 * v143 + 4];
      do
      {
        v163 = *v161;
        v161 += 4;
        v162 = v163;
        v164 = *v160++;
        v144 += v162 * v164;
        --v159;
      }

      while (v159);
LABEL_226:
      v145 = (v144 >> 3) + 3;
      goto LABEL_227;
    }

    if (*(a1 + 372) != 1)
    {
      v69 = ZSTD_buildSeqStore(a1, v7, v45);
      v21 = v69;
      if (v69 > 0xFFFFFFFFFFFFFF88)
      {
        return v21;
      }

      v70 = *v441;
      if (v69 == 1)
      {
        if (v70)
        {
          return -106;
        }

        v21 = 0;
      }

      else
      {
        v86 = *(a1 + 3200);
        if (v70)
        {
          v87 = ZSTD_copyBlockSequences(v441, v451, (v86 + 5616));
          if (v87 > 0xFFFFFFFFFFFFFF88)
          {
            return v87;
          }

          *(a1 + 3200) = vextq_s8(*(a1 + 3200), *(a1 + 3200), 8uLL);
          goto LABEL_141;
        }

        v91 = ZSTD_entropyCompressSeqStore(v451, v86, *(a1 + 3208), v39, (v44 + 3), v8 - 3, v45, *(a1 + 3520), *(a1 + 8));
        v21 = v91;
        if (*(a1 + 944) || v91 > 0x18 || !ZSTD_isRLE(v7, v45))
        {
          if (v21 - 2 <= 0xFFFFFFFFFFFFFF86)
          {
            *(a1 + 3200) = vextq_s8(*(a1 + 3200), *(a1 + 3200), 8uLL);
          }
        }

        else
        {
          *(v44 + 3) = *v7;
          v21 = 1;
        }
      }

      v71 = *(a1 + 3200);
      if (*(v71 + 5604) == 2)
      {
        *(v71 + 5604) = 1;
      }

      if (v21 > 0xFFFFFFFFFFFFFF88)
      {
        return v21;
      }

      if (v21 == 1)
      {
        v72 = 2;
        v73 = v45;
        goto LABEL_149;
      }

      if (v21)
      {
        v72 = 4;
        v73 = v21;
LABEL_149:
        *v44 = v72 | v455 | (8 * v73);
        *(v44 + 2) = v73 >> 13;
        v21 += 3;
        goto LABEL_150;
      }

      goto LABEL_141;
    }

    v53 = ZSTD_buildSeqStore(a1, v7, v45);
    v21 = v53;
    if (v53 > 0xFFFFFFFFFFFFFF88)
    {
      return v21;
    }

    if (v53 != 1)
    {
      v74 = 0;
      v75 = *(a1 + 960) - *(a1 + 952);
      v76 = v75 >> 3;
      v460[0] = v444;
      if ((v75 >> 3) >= 5)
      {
        ZSTD_deriveBlockSplitsHelper(v460, 0, (v75 >> 3), a1, v451);
        v74 = *(&v460[0] + 1);
        *(*&v460[0] + 4 * *(&v460[0] + 1)) = v76;
      }

      v77 = *(a1 + 3200);
      *&v460[0] = *(v77 + 5616);
      DWORD2(v460[0]) = *(v77 + 5624);
      v457 = *&v460[0];
      v458 = DWORD2(v460[0]);
      *v452 = 0u;
      *(a1 + 4064) = 0u;
      *(a1 + 4080) = 0u;
      *(a1 + 4096) = 0u;
      *(a1 + 4112) = 0u;
      if (v74)
      {
        v78 = *(a1 + 4128);
        v79 = *(a1 + 1000);
        *(a1 + 4000) = *(a1 + 984);
        *(a1 + 4016) = v79;
        *(a1 + 4032) = *(a1 + 1016);
        v80 = *(a1 + 968);
        *v447 = *v451;
        *(a1 + 3984) = v80;
        if (*(a1 + 1024) && *(a1 + 1028) > v78)
        {
          *(a1 + 4040) = 0;
        }

        v81 = *(a1 + 952);
        *(a1 + 3968) = v81;
        *(a1 + 3976) = v81 + 8 * v78;
        if (v78 != (*(a1 + 960) - v81) >> 3)
        {
          v82 = 0;
          if (v78)
          {
            v83 = *(a1 + 4044);
            v84 = (v81 + 4);
            do
            {
              v85 = *v84;
              v84 += 4;
              v82 += v85;
              if (!v83 && *(a1 + 4040) == 1)
              {
                v82 += 0x10000;
              }

              --v83;
              --v78;
            }

            while (v78);
          }

          *(a1 + 3992) = *(a1 + 3984) + v82;
        }

        v92 = v7;
        v21 = 0;
        v93 = 0;
        v94 = 0;
        v427 = v8;
        v95 = v44;
        v446 = v74;
        while (1)
        {
          v96 = *(a1 + 3976);
          v97 = *(a1 + 3968);
          v98 = v96 - v97;
          if (v96 == v97)
          {
            v109 = 0;
          }

          else
          {
            v99 = 0;
            v100 = v98 >> 3;
            v101 = *(a1 + 4044);
            if (v100 <= 1)
            {
              v100 = 1;
            }

            v102 = (v97 + 4);
            v103 = *(a1 + 4044);
            v104 = v100;
            do
            {
              v105 = *v102;
              v102 += 4;
              v99 += v105;
              if (!v103 && *(a1 + 4040) == 1)
              {
                v99 += 0x10000;
              }

              --v103;
              --v104;
            }

            while (v104);
            v106 = 0;
            v107 = (v97 + 6);
            do
            {
              v108 = *v107;
              v107 += 4;
              v106 += v108 + 3;
              if (!v101 && *(a1 + 4040) == 2)
              {
                v106 += 0x10000;
              }

              --v101;
              --v100;
            }

            while (v100);
            v109 = v106 + v99;
          }

          v94 += v109;
          if (v93 == v74)
          {
            v110 = v44;
            v109 = v109 + *v456 - v94;
            v111 = v455;
          }

          else
          {
            v112 = (v444 + 4 * v93);
            v113 = *v112;
            v114 = v112[1];
            v115 = *(a1 + 1000);
            *(a1 + 4080) = *(a1 + 984);
            *(a1 + 4096) = v115;
            *(a1 + 4112) = *(a1 + 1016);
            v116 = *(a1 + 968);
            *v452 = *v451;
            *(a1 + 4064) = v116;
            if (v113)
            {
              v117 = *v451 + 8 * v113;
              v118 = v117 - *v452;
              if (v117 == *v452)
              {
                v119 = 0;
              }

              else
              {
                v119 = 0;
                v120 = v118 >> 3;
                v121 = *(a1 + 4124);
                if (v120 <= 1)
                {
                  v120 = 1;
                }

                v122 = (*v452 + 4);
                do
                {
                  v123 = *v122;
                  v122 += 4;
                  v119 += v123;
                  if (!v121 && *(a1 + 4120) == 1)
                  {
                    v119 += 0x10000;
                  }

                  --v121;
                  --v120;
                }

                while (v120);
              }

              *(a1 + 4064) += v119;
            }

            if (*(a1 + 1024))
            {
              v124 = *(a1 + 1028);
              if (v124 < v113 || v124 > v114)
              {
                *(a1 + 4120) = 0;
              }

              else
              {
                *(a1 + 4124) -= v113;
              }
            }

            v126 = *(a1 + 952);
            v127 = 8 * v113;
            *(a1 + 4048) = v126 + 8 * v113;
            v128 = 8 * v114;
            *(a1 + 4056) = v126 + 8 * v114;
            if (v114 != (*(a1 + 960) - v126) >> 3)
            {
              if (v114 == v113)
              {
                v129 = 0;
              }

              else
              {
                v129 = 0;
                v133 = (v128 - v127) >> 3;
                v134 = *(a1 + 4124);
                if (v133 <= 1)
                {
                  v133 = 1;
                }

                v135 = (v126 + v127 + 4);
                do
                {
                  v136 = *v135;
                  v135 += 4;
                  v129 += v136;
                  if (!v134 && *(a1 + 4120) == 1)
                  {
                    v129 += 0x10000;
                  }

                  --v134;
                  --v133;
                }

                while (v133);
              }

              *(a1 + 4072) = *(a1 + 4064) + v129;
            }

            v110 = v44;
            v111 = 0;
            *(a1 + 4080) += v113;
            *(a1 + 4088) += v113;
            *(a1 + 4096) += v113;
          }

          v130 = ZSTD_compressSeqStore_singleBlock(a1, v447, v460, &v457, v95, v8, v92, v109, v111, 1);
          if (v130 > 0xFFFFFFFFFFFFFF88)
          {
            break;
          }

          v92 = (v92 + v109);
          v95 += v130;
          v8 -= v130;
          v21 += v130;
          v131 = *(a1 + 4096);
          *(a1 + 4000) = *(a1 + 4080);
          *(a1 + 4016) = v131;
          *(a1 + 4032) = *(a1 + 4112);
          v132 = *(a1 + 4064);
          *v447 = *v452;
          *(a1 + 3984) = v132;
          ++v93;
          v74 = v446;
          v45 = *v456;
          v44 = v110;
          if (v93 > v446)
          {
            v137 = *(a1 + 3200);
            *(v137 + 5616) = *&v460[0];
            *(v137 + 5624) = DWORD2(v460[0]);
            a6 = v425;
            v8 = v427;
            v39 = (a1 + 232);
            goto LABEL_74;
          }
        }

        v21 = v130;
        a6 = v425;
        v8 = v427;
        v39 = (a1 + 232);
        v45 = *v456;
        v44 = v110;
      }

      else
      {
        v45 = *v456;
        v21 = ZSTD_compressSeqStore_singleBlock(a1, v451, v460, &v457, v44, v8, v7, *v456, v455, 0);
      }

LABEL_74:
      v22 = v430;
      if (v21 >= 0xFFFFFFFFFFFFFF89)
      {
        return v21;
      }

      goto LABEL_150;
    }

    v54 = *(a1 + 3200);
    if (*(v54 + 5604) == 2)
    {
      *(v54 + 5604) = 1;
    }

    if (*v441)
    {
      return -106;
    }

LABEL_141:
    v21 = v45 + 3;
    if (v45 + 3 > v8)
    {
      return -70;
    }

    *v44 = v455 | (8 * v45);
    *(v44 + 2) = v45 >> 13;
    memcpy((v44 + 3), v7, v45);
    if (v21 >= 0xFFFFFFFFFFFFFF89)
    {
      return v21;
    }

LABEL_150:
    v44 += v21;
    v8 -= v21;
    *(a1 + 944) = 0;
    v7 = v454;
    v43 = v453 - v45;
  }

  while (v453 != v45);
  if (a6 && v44 > v428)
  {
    *a1 = 3;
  }

  v21 = v44 - v428;
  if (v44 - v428 <= 0xFFFFFFFFFFFFFF88)
  {
    v406 = *(a1 + 768) + v412;
    *(a1 + 768) = v406;
    *(a1 + 776) += v21 + v22;
    v407 = *(a1 + 760);
    if (v406 + 1 <= v407 || v407 == 0)
    {
      v21 += v22;
    }

    else
    {
      return -72;
    }
  }

  return v21;
}

uint32x2_t *ZSTD_overflowCorrectIfNeeded(uint32x2_t *result, void *a2, _DWORD *a3, int a4, int a5)
{
  v5 = result[1];
  if ((a5 - v5.i32[0]) >= 0xE0000001)
  {
    v6 = 1 << a3[1];
    v7 = 1 << (a3[2] - (a3[7] > 5u));
    v8 = (v7 - 1) & (a4 - v5.i32[0]);
    if (v7 <= 2)
    {
      v9 = 2;
    }

    else
    {
      v9 = 1 << (a3[2] - (a3[7] > 5u));
    }

    if (v8 >= 2)
    {
      v9 = 0;
    }

    if (v7 > v6)
    {
      v6 = 1 << (a3[2] - (a3[7] > 5u));
    }

    v10 = a4 - v5.i32[0] - (v6 + v8) - v9;
    v11 = (*&result[2] + v10);
    result[1] = (*&v5 + v10);
    result[2] = v11;
    v12 = v10 + 2;
    result[3] = vbsl_s8(vcgt_u32(vdup_n_s32(v10 + 2), result[3]), 0x200000002, vsub_s32(result[3], vdup_n_s32(v10)));
    ++result[4].i32[0];
    v13 = a2[2];
    a2[4] = v13;
    v14 = 1 << a3[3];
    v15 = v14 + 15;
    if (v14 >= 0)
    {
      v15 = 1 << a3[3];
    }

    if (v14 >= 16)
    {
      v16 = v15 >> 4;
      v17 = vdupq_n_s32(v12);
      v18 = vdupq_n_s32(v10);
      v19 = (*&result[14] + 32);
      do
      {
        v20 = vbicq_s8(vsubq_s32(v19[-1], v18), vcgtq_u32(v17, v19[-1]));
        v19[-2] = vbicq_s8(vsubq_s32(v19[-2], v18), vcgtq_u32(v17, v19[-2]));
        v19[-1] = v20;
        v21 = vbicq_s8(vsubq_s32(v19[1], v18), vcgtq_u32(v17, v19[1]));
        *v19 = vbicq_s8(vsubq_s32(*v19, v18), vcgtq_u32(v17, *v19));
        v19[1] = v21;
        v19 += 4;
        --v16;
      }

      while (v16);
    }

    v22 = a3[7];
    if (result[17].i32[1] || v22 != 1 && ((v22 - 3) <= 2 ? (v40 = a3[36] == 1) : (v40 = 0), !v40))
    {
      v23 = 1 << a3[2];
      v24 = result[16];
      v25 = v23 / 16;
      if (v22 == 6)
      {
        if (v23 >= 16)
        {
          v26 = vdupq_n_s32(v12);
          v27 = vdupq_n_s32(v10);
          v28 = v24 + 2;
          v29.i64[0] = 0x100000001;
          v29.i64[1] = 0x100000001;
          do
          {
            v30 = v28[-2];
            v31 = v28[-1];
            v32 = vceqq_s32(v30, v29);
            v33 = vsubq_s32(vbicq_s8(vbicq_s8(vsubq_s32(v30, v27), vcgtq_u32(v26, v30)), v32), v32);
            v34 = vceqq_s32(v31, v29);
            v28[-2] = v33;
            v28[-1] = vsubq_s32(vbicq_s8(vbicq_s8(vsubq_s32(v31, v27), vcgtq_u32(v26, v31)), v34), v34);
            v35 = v28[1];
            v36 = vceqq_s32(*v28, v29);
            v37 = vsubq_s32(vbicq_s8(vbicq_s8(vsubq_s32(*v28, v27), vcgtq_u32(v26, *v28)), v36), v36);
            v38 = vbicq_s8(vsubq_s32(v35, v27), vcgtq_u32(v26, v35));
            v39 = vceqq_s32(v35, v29);
            *v28 = v37;
            v28[1] = vsubq_s32(vbicq_s8(v38, v39), v39);
            v28 += 4;
            --v25;
          }

          while (v25);
        }
      }

      else if (v23 >= 16)
      {
        v41 = vdupq_n_s32(v12);
        v42 = vdupq_n_s32(v10);
        v43 = v24 + 2;
        do
        {
          v44 = vbicq_s8(vsubq_s32(v43[-1], v42), vcgtq_u32(v41, v43[-1]));
          v43[-2] = vbicq_s8(vsubq_s32(v43[-2], v42), vcgtq_u32(v41, v43[-2]));
          v43[-1] = v44;
          v45 = vbicq_s8(vsubq_s32(v43[1], v42), vcgtq_u32(v41, v43[1]));
          *v43 = vbicq_s8(vsubq_s32(*v43, v42), vcgtq_u32(v41, *v43));
          v43[1] = v45;
          v43 += 4;
          --v25;
        }

        while (v25);
      }
    }

    v46 = result[6].i32[0];
    if (v46)
    {
      v47 = 1 << v46;
      v48 = (1 << v46) + 15;
      if (v47 >= 0)
      {
        v48 = v47;
      }

      if (v47 >= 16)
      {
        v49 = v48 >> 4;
        v50 = vdupq_n_s32(v12);
        v51 = vdupq_n_s32(v10);
        v52 = (*&result[15] + 32);
        do
        {
          v53 = vbicq_s8(vsubq_s32(v52[-1], v51), vcgtq_u32(v50, v52[-1]));
          v52[-2] = vbicq_s8(vsubq_s32(v52[-2], v51), vcgtq_u32(v50, v52[-2]));
          v52[-1] = v53;
          v54 = vbicq_s8(vsubq_s32(v52[1], v51), vcgtq_u32(v50, v52[1]));
          *v52 = vbicq_s8(vsubq_s32(*v52, v51), vcgtq_u32(v50, *v52));
          v52[1] = v54;
          v52 += 4;
          --v49;
        }

        while (v49);
      }
    }

    v55 = a2[3];
    if (v13 < v55)
    {
      a2[4] = v55;
    }

    v56 = result[5].u32[1];
    v57 = v56 >= v10;
    v58 = v56 - v10;
    if (!v57)
    {
      v58 = 0;
    }

    result[5].i32[0] = 0;
    result[5].i32[1] = v58;
    result[31] = 0;
  }

  return result;
}

uint64_t ZSTD_buildSeqStore(uint64_t a1, char *a2, unint64_t a3)
{
  v3 = a3;
  v4 = a1;
  if (a3 > 6)
  {
    v13 = a2;
    *(a1 + 976) = *(a1 + 968);
    *(a1 + 960) = *(a1 + 952);
    *(a1 + 1024) = 0;
    v14 = *(a1 + 3200);
    *(a1 + 3448) = v14;
    *(a1 + 3456) = *(a1 + 304);
    v15 = a2 - *(a1 + 3224);
    v16 = *(a1 + 3260);
    if (v16 + 384 < v15)
    {
      v17 = v15 - v16 - 384;
      if (v17 >= 0xC0)
      {
        v17 = 192;
      }

      *(a1 + 3260) = v15 - v17;
    }

    if (*(a1 + 3244) >= *(a1 + 3240))
    {
      v29 = *(a1 + 3464);
      if (v29)
      {
        if (*(v29 + 140))
        {
          v18 = 3;
        }

        else
        {
          v18 = 2;
        }
      }

      else
      {
        v18 = 0;
      }
    }

    else
    {
      v18 = 1;
    }

    v30 = *(a1 + 3208);
    v30[1404] = v14[1404];
    v30[1405] = v14[1405];
    v30[1406] = v14[1406];
    if (*(a1 + 3168) < *(a1 + 3184))
    {
      if (!*(a1 + 424))
      {
        v31 = *(a1 + 376);
        v32 = (a1 + 3160);
        v33 = &v4[402];
        v34 = &v4[119];
        v35 = v30 + 1404;
LABEL_250:
        v54 = ZSTD_ldm_blockCompress(v32, v33, v34, v35, v31, v13, v3);
        goto LABEL_251;
      }

      return -41;
    }

    if (*(a1 + 328) == 1)
    {
      *(&v226 + 1) = 0;
      v227 = 0;
      v228 = 0;
      if (*(a1 + 424))
      {
        return -41;
      }

      v40 = *(a1 + 3152);
      v208 = *(a1 + 3144);
      *&v226 = v208;
      v209 = v40;
      v229 = v40;
      if ((a3 & 0xFFFFF) != 0)
      {
        v41 = (a3 >> 20) + 1;
      }

      else
      {
        v41 = a3 >> 20;
      }

      if (!v41)
      {
LABEL_249:
        v31 = v4[47].i32[0];
        v32 = &v226;
        v33 = &v4[402];
        v34 = &v4[119];
        v35 = v30 + 1404;
        goto LABEL_250;
      }

      v42 = 0;
      v43 = 0;
      v44 = 0;
      v45 = 0;
      v46 = 1 << v4[43].i32[1];
      v47 = &v13[v3];
      v48 = &v4[137];
      v215 = v4 + 201;
      v202 = v4 + 203;
LABEL_62:
      if (v43 >= v209)
      {
LABEL_248:
        v30 = v4[401];
        goto LABEL_249;
      }

      v55 = &v13[0x100000 * v44];
      if (v3 - (v44 << 20) >= 0x100000)
      {
        v56 = v55 + 0x100000;
      }

      else
      {
        v56 = v47;
      }

      v57 = v4[130];
      v214 = v56;
      v58 = v56 - v57.i32[0];
      if (v58 > 0xE0000000)
      {
        v60 = v4[41].u32[1];
        v61 = 1 << v60;
        v62 = v55 - v57.i32[0] - v46;
        v63 = v62 - 2;
        v4[130] = (*&v57 + v63);
        *&v4[131] += v63;
        v4[132] = vbsl_s8(vcgt_u32(vdup_n_s32(v62), v4[132]), 0x200000002, vsub_s32(v4[132], vdup_n_s32(v63)));
        ++v4[133].i32[0];
        v64 = v4[134];
        if (v60 >= 3)
        {
          v66 = (1 << v60) & 3;
          if ((v61 & 3) == 0)
          {
            v66 = 4;
          }

          v65 = v61 - v66;
          v67 = vdupq_n_s32(v63);
          v68 = v4[134];
          v69 = v65;
          v70 = v68;
          do
          {
            v71 = vld2q_f32(v70);
            v70 += 8;
            v72 = vqsubq_u32(v71, v67);
            *v68 = *v72.i32;
            v68[2] = *&v72.i32[1];
            v68[4] = *&v72.i32[2];
            v68[6] = *&v72.i32[3];
            v68 = v70;
            v69 -= 4;
          }

          while (v69);
        }

        else
        {
          v65 = 0;
        }

        v59 = v61 - v65;
        v73 = (*&v64 + 8 * v65);
        do
        {
          v74 = *v73 - v63;
          if (*v73 < v63)
          {
            v74 = 0;
          }

          *v73 = v74;
          v73 += 2;
          --v59;
        }

        while (v59);
        v4[135].i32[0] = 0;
        v221 = v4[130];
        v58 = v214 - v221.i32[0];
      }

      else
      {
        v221 = v4[130];
        LODWORD(v59) = v4[135].i32[0];
      }

      v75 = v4[132].u32[1];
      if (v59 + v46 >= v58)
      {
        v77 = v4[132].u32[0];
      }

      else
      {
        v76 = v58 - v46;
        if (v75 < v76)
        {
          v4[132].i32[1] = v76;
          v75 = v76;
        }

        v77 = v4[132].u32[0];
        if (v77 < v75)
        {
          v4[132].i32[0] = v75;
          v77 = v75;
        }

        v4[135].i32[0] = 0;
      }

      v223 = v4[42].u32[1];
      v78 = v4[42].i32[0];
      v79 = v4[41].i32[1];
      if (v75 >= v77)
      {
        v80 = 0;
        v81 = v77;
      }

      else
      {
        v80 = v4[131];
        v81 = v75;
      }

      v82 = v214 - v55;
      v220 = v81;
      v83 = *&v80 + v81;
      if (v75 >= v77)
      {
        v83 = 0;
      }

      v216 = v83;
      v84 = (*&v80 + v77);
      v219 = v84;
      if (v75 >= v77)
      {
        v84 = 0;
      }

      v212 = v84;
      if (v82 < v223)
      {
        v85 = v43;
        v24 = v214 - v55;
        goto LABEL_226;
      }

      v218 = v80;
      v86 = v4[43].i32[0];
      if (v223 >= 0x40)
      {
        v87 = 64;
      }

      else
      {
        v87 = v4[42].u32[1];
      }

      v88 = v86 - 1;
      v89 = ~(-1 << v86);
      v90 = v87 - v86;
      if (v88 >= v87)
      {
        v90 = 0;
      }

      v231[0] = 0xFFFFFFFFLL;
      v231[1] = v89 << v90;
      if (&v55[v223] >= v214 - 8)
      {
        v24 = v214 - v55;
        v82 = v214 - v55;
        goto LABEL_225;
      }

      v189 = v214 - v55;
      v190 = v45;
      v211 = v75;
      v207 = v42;
      v192 = v47;
      v193 = v46;
      v194 = v44;
      v195 = v41;
      v196 = v13;
      v197 = v3;
      v210 = 1 << v78;
      v224 = (*&v221 + v77);
      v225 = (v214 - 7);
      v217 = (v214 - 1);
      v206 = *&v221 + 8 + v77;
      v191 = v43;
      v203 = v43;
      v91 = v214;
      v92 = (v214 - 8);
      v93 = &v55[v223];
      v201 = v4;
      v198 = v48;
      v222 = v77;
      v200 = ~(-1 << (v79 - v78));
      v199 = (v214 - 3);
LABEL_104:
      v230 = 0;
      v94 = ZSTD_ldm_gear_feed(v231, v93, v92 - v93, v48, &v230);
      v95 = v230;
      if (!v230)
      {
        goto LABEL_103;
      }

      v204 = v93;
      v205 = v94;
      v96 = v93 - v223;
      v97 = v4[134];
      v98 = v4[42].i32[0];
      v99 = v202;
      v100 = v48;
      v213 = v230;
      v101 = v223;
      do
      {
        v102 = *v100++;
        v103 = ZSTD_XXH64((v96 + v102), v223);
        v104 = v103 & v200;
        v99[-2] = (v96 + v102);
        v99[-1].i32[0] = v104;
        v99[-1].i32[1] = HIDWORD(v103);
        _X8 = *&v97 + 8 * (v104 << v98);
        *v99 = _X8;
        v99 += 3;
        __asm { PRFM            #0, [X8] }

        --v95;
      }

      while (v95);
      v110 = 0;
      v4 = v201;
      v111 = v213;
      v91 = v214;
      v112 = v221;
      v113 = v220;
      v114 = v203;
      while (1)
      {
        v119 = &v215[3 * v110];
        v120 = *v119;
        v121 = v119[1].u32[0];
        v122 = v119[1].u32[1];
        v123 = *v119 - *&v112;
        if (*v119 < v55)
        {
LABEL_108:
          v115 = v123 | (v122 << 32);
          v116 = v201[42].i32[0];
          v117 = v201[136];
          v118 = *(*&v117 + v121);
          *(*&v201[134] + 8 * (v121 << v116) + 8 * v118) = v115;
          *(*&v117 + v121) = (v118 + 1) & ~(-1 << v116);
          goto LABEL_109;
        }

        v124 = v119[2];
        v125 = &v124[2 * v210];
        if (v211 < v222)
        {
          v126 = 0;
          v127 = 0;
          v128 = 0;
          v129 = 0;
          while (1)
          {
            if (v124[1] == v122)
            {
              v130 = *v124;
              if (v130 > v113)
              {
                break;
              }
            }

LABEL_115:
            v124 += 2;
            if (v124 >= v125)
            {
              goto LABEL_220;
            }
          }

          if (v130 >= v222)
          {
            v131 = v112;
          }

          else
          {
            v131 = v218;
          }

          v132 = (*&v131 + v130);
          v133 = v214;
          if (v130 >= v222)
          {
            v134 = v214;
          }

          else
          {
            v134 = v219;
          }

          if (v120 + v134 - v132 < v91)
          {
            v133 = v120 + v134 - v132;
          }

          if (v133 - 7 <= v120)
          {
            v135 = (*&v131 + v130);
            v137 = v120;
            goto LABEL_135;
          }

          if (*v132 == *v120)
          {
            v135 = (*&v131 + v130 + 8);
            v136 = (v120 + 1);
            while (1)
            {
              v137 = v136;
              if (v136 >= (v133 - 7))
              {
                break;
              }

              v139 = *v135;
              v135 += 4;
              v138 = v139;
              v136 += 8;
              if (v139 != *v137)
              {
                v140 = &v137[__clz(__rbit64(*v137 ^ v138)) >> 3] - v120;
                v91 = v214;
                goto LABEL_145;
              }
            }

            v91 = v214;
LABEL_135:
            if (v137 < v133 - 3 && *v135 == *v137)
            {
              v135 += 2;
              v137 += 4;
            }

            if (v137 < v133 - 1 && *v135 == *v137)
            {
              ++v135;
              v137 += 2;
            }

            if (v137 < v133 && *v135 == *v137)
            {
              ++v137;
            }

            v140 = v137 - v120;
          }

          else
          {
            v140 = __clz(__rbit64(*v120 ^ *v132)) >> 3;
          }

LABEL_145:
          if (&v132[v140] != v134)
          {
            goto LABEL_164;
          }

          v141 = v120 + v140;
          if (v225 <= v120 + v140)
          {
            v143 = v224;
            v144 = (v120 + v140);
            if (v141 >= v199)
            {
              goto LABEL_155;
            }
          }

          else
          {
            if (*v224 != *v141)
            {
              v147 = __clz(__rbit64(*v141 ^ *v224)) >> 3;
              goto LABEL_163;
            }

            v142 = (v120 + v140 + 8);
            v143 = v206;
            while (1)
            {
              v144 = v142;
              if (v142 >= v225)
              {
                break;
              }

              v146 = *v143;
              v143 += 4;
              v145 = v146;
              ++v142;
              if (v146 != *v144)
              {
                v147 = v144 + (__clz(__rbit64(*v144 ^ v145)) >> 3) - v141;
                v91 = v214;
                goto LABEL_163;
              }
            }

            v91 = v214;
            if (v142 >= v199)
            {
LABEL_155:
              if (v144 < v217 && *v143 == *v144)
              {
                ++v143;
                v144 = (v144 + 2);
              }

              if (v144 < v91 && *v143 == *v144)
              {
                v144 = (v144 + 1);
              }

              v147 = v144 - v141;
LABEL_163:
              v140 += v147;
LABEL_164:
              v101 = v223;
              if (v140 < v223)
              {
                v112 = v221;
              }

              else
              {
                v148 = 0;
                v149 = v224;
                if (v130 < v222)
                {
                  v149 = v216;
                }

                if (v120 > v55 && v132 > v149)
                {
                  v148 = 0;
                  v150 = (*&v131 + v130 - 1);
                  v151 = v120 - 1;
                  do
                  {
                    if (*v151 != *v150)
                    {
                      break;
                    }

                    ++v148;
                    if (v151 <= v55)
                    {
                      break;
                    }

                    --v151;
                    v51 = v150-- > v149;
                  }

                  while (v51);
                }

                if (v149 != v216 && &v132[-v148] == v149)
                {
                  v152 = 0;
                  if (v212 > v216 && v120 - v148 > v55)
                  {
                    v152 = 0;
                    v153 = (v120 - v148 - 1);
                    v154 = (v212 - 1);
                    do
                    {
                      if (*v153 != *v154)
                      {
                        break;
                      }

                      ++v152;
                      if (v153 <= v55)
                      {
                        break;
                      }

                      --v153;
                      v51 = v154-- > v216;
                    }

                    while (v51);
                  }

                  v148 += v152;
                }

                if (v148 + v140 > v129)
                {
                  v129 = v148 + v140;
                  v128 = v148;
                  v127 = v140;
                  v126 = v124;
                }

                v112 = v221;
                v101 = v223;
              }

              v113 = v220;
              goto LABEL_115;
            }
          }

          if (*v143 == *v144)
          {
            v143 += 2;
            v144 = (v144 + 4);
          }

          goto LABEL_155;
        }

        v126 = 0;
        v127 = 0;
        v128 = 0;
        v155 = 0;
        do
        {
          if (v124[1] != v122)
          {
            goto LABEL_190;
          }

          v156 = *v124;
          if (v156 <= v113)
          {
            goto LABEL_190;
          }

          v157 = (*&v112 + v156);
          if (v225 <= v120)
          {
            v159 = v120;
          }

          else
          {
            if (*v157 != *v120)
            {
              v162 = __clz(__rbit64(*v120 ^ *v157)) >> 3;
              if (v162 < v101)
              {
                goto LABEL_190;
              }

LABEL_213:
              v163 = 0;
              if (v120 > v55 && v156 > v222)
              {
                v163 = 0;
                v164 = (*&v221 - 1 + v156);
                v165 = v120 - 1;
                do
                {
                  if (*v165 != *v164)
                  {
                    break;
                  }

                  ++v163;
                  if (v165 <= v55)
                  {
                    break;
                  }

                  --v165;
                  v51 = v164-- > v224;
                }

                while (v51);
              }

              if (v163 + v162 > v155)
              {
                v155 = v163 + v162;
                v128 = v163;
                v127 = v162;
                v126 = v124;
              }

              goto LABEL_190;
            }

            v157 = (*&v221 + 8 + v156);
            v158 = v120 + 1;
            while (1)
            {
              v159 = v158;
              if (v158 >= v225)
              {
                break;
              }

              v161 = *v157++;
              v160 = v161;
              ++v158;
              if (v161 != *v159)
              {
                v162 = v159 + (__clz(__rbit64(*v159 ^ v160)) >> 3) - v120;
                if (v162 < v101)
                {
                  goto LABEL_190;
                }

                goto LABEL_213;
              }
            }
          }

          if (v159 < v199 && *v157 == *v159)
          {
            v157 = (v157 + 4);
            v159 = (v159 + 4);
          }

          if (v159 < v217 && *v157 == *v159)
          {
            v157 = (v157 + 2);
            v159 = (v159 + 2);
          }

          if (v159 < v91 && *v157 == *v159)
          {
            v159 = (v159 + 1);
          }

          v162 = v159 - v120;
          if (v159 - v120 >= v101)
          {
            goto LABEL_213;
          }

LABEL_190:
          v124 += 2;
        }

        while (v124 < v125);
LABEL_220:
        v111 = v213;
        if (!v126)
        {
          goto LABEL_108;
        }

        if (v114 == v209)
        {
          return -70;
        }

        v166 = (v208 + 12 * v114);
        v167 = v123 - *v126;
        v166[1] = v120 - v128 - v55;
        v166[2] = v127 + v128;
        *v166 = v167;
        v228 = ++v114;
        v168 = v123 | (v122 << 32);
        LOBYTE(v166) = v201[42].i32[0];
        v169 = v201[136];
        LOBYTE(v167) = *(*&v169 + v121);
        *(*&v201[134] + 8 * (v121 << v166) + 8 * v167) = v168;
        *(*&v169 + v121) = (v167 + 1) & ~(-1 << v166);
        v55 = v120 + v127;
        v207 = v114;
        if (v120 + v127 > v204 + v205)
        {
          v94 = v205;
          v93 = &v55[-v205];
          v203 = v114;
          v48 = v198;
          v92 = (v214 - 8);
LABEL_103:
          v93 += v94;
          if (v93 < v92)
          {
            goto LABEL_104;
          }

          v24 = v91 - v55;
          v13 = v196;
          v3 = v197;
          v44 = v194;
          v41 = v195;
          v46 = v193;
          v43 = v191;
          v47 = v192;
          v82 = v189;
          v45 = v190;
          v42 = v207;
LABEL_225:
          v85 = v42;
          if (v24 > 0xFFFFFFFFFFFFFF88)
          {
            return v24;
          }

LABEL_226:
          if (v43 >= v85)
          {
            v24 = v82 + v45;
          }

          else
          {
            *(v208 + 12 * v43 + 4) += v45;
          }

          ++v44;
          v43 = v85;
          v45 = v24;
          if (v44 == v41)
          {
            goto LABEL_248;
          }

          goto LABEL_62;
        }

LABEL_109:
        if (++v110 == v111)
        {
          v203 = v114;
          v48 = v198;
          v92 = (v214 - 8);
          v93 = v204;
          v94 = v205;
          goto LABEL_103;
        }
      }
    }

    v36 = *(a1 + 424);
    if (!v36)
    {
      v49 = *(a1 + 260);
      v50 = v49 - 3;
      v51 = *(a1 + 376) != 1 || v50 > 2;
      v52 = &ZSTD_selectBlockCompressor_blockCompressor[10 * v18] + v49;
      if (!v51)
      {
        v52 = &ZSTD_selectBlockCompressor_rowBasedBlockCompressors[3 * v18] + v50;
      }

      v53 = *v52;
      *(a1 + 3504) = 0;
      v54 = (v53)(a1 + 3216, a1 + 952, v30 + 1404, a2, a3);
      goto LABEL_251;
    }

    v37 = v36(*(a1 + 416), *(a1 + 5224), *(a1 + 5232), a2, a3, 0, 0, *(a1 + 276), 1 << *(a1 + 236));
    v38 = v4[654];
    if (v37 - 1 >= v38)
    {
      goto LABEL_44;
    }

    v24 = v37;
    v39 = (*&v4[653] + 16 * v37);
    if (*(v39 - 4) | *(v39 - 2))
    {
      if (v37 == v38)
      {
LABEL_44:
        v24 = -106;
LABEL_241:
        if (!v4[51].i32[1])
        {
          return v24;
        }

        v174 = v4[32].i32[1];
        v175 = v174 - 3;
        v176 = v4[47].i32[0] != 1 || v175 > 2;
        v177 = &ZSTD_selectBlockCompressor_blockCompressor[10 * v18] + v174;
        if (!v176)
        {
          v177 = &ZSTD_selectBlockCompressor_rowBasedBlockCompressors[3 * v18] + v175;
        }

        v178 = *v177;
        v4[438] = 0;
        v54 = (v178)(&v4[402], &v4[119], *&v4[401] + 5616, v13, v3);
LABEL_251:
        v179 = v54;
        memcpy(*&v4[122], &v13[v3 - v54], v54);
        v24 = 0;
        *&v4[122] += v179;
        return v24;
      }

      *v39 = 0;
      v39[1] = 0;
      v24 = v37 + 1;
    }

    if (v24 > 0xFFFFFFFFFFFFFF88)
    {
      goto LABEL_241;
    }

    v171 = 0uLL;
    v226 = 0u;
    v172 = v4[653];
    if (!v24)
    {
LABEL_260:
      v24 = ZSTD_copySequencesToSeqStoreExplicitBlockDelim(v4, &v226, v172, v24, v13, v3, v4[55].i32[0]);
      if (v24 <= 0xFFFFFFFFFFFFFF88)
      {
        v24 = 0;
        v4[438] = 0;
      }

      return v24;
    }

    if (v24 == 1)
    {
      v173 = 0;
    }

    else
    {
      v173 = v24 & 0xFFFFFFFFFFFFFFFELL;
      v181 = (v172 + 20);
      v182 = v24 & 0xFFFFFFFFFFFFFFFELL;
      v183 = 0uLL;
      do
      {
        v184 = v181[-2];
        v185 = *v181;
        v181 += 4;
        v183 = vaddw_u32(v183, v184);
        v171 = vaddw_u32(v171, v185);
        v182 -= 2;
      }

      while (v182);
      v171 = vaddq_s64(v171, v183);
      if (v24 == v173)
      {
LABEL_258:
        if (vaddvq_s64(v171) > v3)
        {
          return -107;
        }

        goto LABEL_260;
      }
    }

    v186 = v24 - v173;
    v187 = (v172 + 16 * v173 + 4);
    do
    {
      v188 = *v187;
      v187 += 2;
      v171 = vaddw_u32(v171, v188);
      --v186;
    }

    while (v186);
    goto LABEL_258;
  }

  if (*(a1 + 260) < 7u)
  {
    if (a3)
    {
      v19 = *(a1 + 252);
      v20 = *(a1 + 3184);
      v21 = *(a1 + 3168);
      if (v21 <= v20)
      {
        v22 = *(a1 + 3184);
      }

      else
      {
        v22 = *(a1 + 3168);
      }

      v23 = 12 * v21;
      v24 = 1;
      while (v22 != v21)
      {
        v25 = (*(a1 + 3160) + v23);
        v26 = v25[1];
        v27 = v3 - v26;
        if (v3 <= v26)
        {
          v25[1] = v26 - v3;
          return 1;
        }

        v25[1] = 0;
        v28 = v25[2];
        v3 = v27 - v28;
        if (v27 < v28)
        {
          v25[2] = v28 - v27;
          if (v28 - v27 >= v19)
          {
            return 1;
          }

          v170 = v21 + 1;
          if (v170 < v20)
          {
            v25[4] += v28 - v27;
          }

          *(a1 + 3168) = v170;
          return 1;
        }

        v25[2] = 0;
        *(a1 + 3168) = ++v21;
        v23 += 12;
        if (v27 == v28)
        {
          return v24;
        }
      }
    }

    else
    {
      return 1;
    }
  }

  else
  {
    v5 = *(a1 + 3176) + a3;
    if (v5)
    {
      v6 = *(a1 + 3184);
      v7 = *(a1 + 3168);
      if (v7 <= v6)
      {
        v8 = *(a1 + 3184);
      }

      else
      {
        v8 = *(a1 + 3168);
      }

      v9 = 12 * v7;
      while (1)
      {
        if (v8 == v7)
        {
          if (v8 != v6)
          {
            return 1;
          }

          goto LABEL_48;
        }

        v10 = *(*(a1 + 3160) + v9 + 8) + *(*(a1 + 3160) + v9 + 4);
        _CF = v5 >= v10;
        v12 = v5 - v10;
        if (!_CF)
        {
          break;
        }

        *(a1 + 3168) = ++v7;
        v9 += 12;
        v5 = v12;
        if (!v12)
        {
          goto LABEL_48;
        }
      }

      *(a1 + 3176) = v5;
      if (v7 != v6)
      {
        return 1;
      }
    }

LABEL_48:
    *(a1 + 3176) = 0;
    return 1;
  }

  return v24;
}

uint64_t ZSTD_isRLE(void *a1, unint64_t a2)
{
  if (a2 == 1)
  {
    return 1;
  }

  v2 = a2 & 0x1F;
  if ((a2 & 0x1F) != 0)
  {
    v3 = a1 + v2;
    v4 = a1;
    v5 = a1 + 1;
    if (v2 >= 9)
    {
      v6 = *(a1 + 1);
      if (*a1 != v6)
      {
        v9 = __clz(__rbit64(v6 ^ *a1)) >> 3;
        goto LABEL_21;
      }

      v7 = a1 + 9;
      while (1)
      {
        v5 = v7;
        if (v7 >= (v3 - 7))
        {
          break;
        }

        v8 = *(v7 - 1);
        v7 += 8;
        if (v8 != *v5)
        {
          v5 += __clz(__rbit64(*v5 ^ v8)) >> 3;
          goto LABEL_20;
        }
      }

      v4 = (v7 - 1);
    }

    if (v5 < v3 - 3 && *v4 == *v5)
    {
      ++v4;
      v5 += 4;
    }

    if (v5 < v3 - 1 && *v4 == *v5)
    {
      v4 = (v4 + 2);
      v5 += 2;
    }

    if (v5 < v3 && *v4 == *v5)
    {
      ++v5;
    }

LABEL_20:
    v9 = v5 - (a1 + 1);
LABEL_21:
    if (v9 != v2 - 1)
    {
      return 0;
    }
  }

  if (a2 < 0x20)
  {
    return 1;
  }

  v11 = 0x101010101010101 * *a1;
  v12 = a2 & 0xFFFFFFFFFFFFFFE0;
  for (i = (a1 + v2 + 16); *(i - 2) == v11 && *(i - 1) == v11 && *i == v11 && i[1] == v11; i += 4)
  {
    v12 -= 32;
    if (!v12)
    {
      return 1;
    }
  }

  return 0;
}

unint64_t ZSTD_deriveBlockSplitsHelper(unint64_t result, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t *a5)
{
  v79 = result;
  if (a3 - a2 >= 0x12C)
  {
    v8 = a2;
    v9 = (a4 + 3728);
    v10 = (a4 + 3808);
    v11 = (a4 + 3888);
    v12 = *(result + 8);
    do
    {
      if (v12 > 0xC3)
      {
        break;
      }

      *v9 = *a5;
      v13 = *(a5 + 1);
      v14 = *(a5 + 2);
      v15 = *(a5 + 4);
      *(v9 + 3) = *(a5 + 3);
      *(v9 + 4) = v15;
      *(v9 + 1) = v13;
      *(v9 + 2) = v14;
      if (v8)
      {
        v16 = *a5 + 8 * v8;
        v17 = v16 - *v9;
        if (v16 == *v9)
        {
          v18 = 0;
        }

        else
        {
          v18 = 0;
          v19 = v17 >> 3;
          v20 = *(a4 + 3804);
          if (v19 <= 1)
          {
            v19 = 1;
          }

          v21 = (*v9 + 4);
          do
          {
            v22 = *v21;
            v21 += 4;
            v18 += v22;
            if (!v20 && *(a4 + 3800) == 1)
            {
              v18 += 0x10000;
            }

            --v20;
            --v19;
          }

          while (v19);
        }

        *(a4 + 3744) += v18;
      }

      if (*(a5 + 18))
      {
        v23 = *(a5 + 19);
        if (v8 > v23 || v23 > a3)
        {
          *(a4 + 3800) = 0;
        }

        else
        {
          *(a4 + 3804) -= v8;
        }
      }

      v24 = *a5 + 8 * v8;
      *(a4 + 3728) = v24;
      v25 = *a5;
      v26 = *a5 + 8 * a3;
      *(a4 + 3736) = v26;
      if (a3 != (a5[1] - v25) >> 3)
      {
        v27 = v26 - v24;
        if (v26 == v24)
        {
          v28 = 0;
        }

        else
        {
          v28 = 0;
          v29 = v27 >> 3;
          v30 = *(a4 + 3804);
          if (v29 <= 1)
          {
            v29 = 1;
          }

          v31 = (v24 + 4);
          do
          {
            v32 = *v31;
            v31 += 4;
            v28 += v32;
            if (!v30 && *(a4 + 3800) == 1)
            {
              v28 += 0x10000;
            }

            --v30;
            --v29;
          }

          while (v29);
        }

        *(a4 + 3752) = *(a4 + 3744) + v28;
      }

      *(a4 + 3760) += v8;
      *(a4 + 3768) += v8;
      *(a4 + 3776) += v8;
      *v10 = *a5;
      v33 = *(a5 + 1);
      v34 = *(a5 + 2);
      v35 = *(a5 + 4);
      *(v10 + 3) = *(a5 + 3);
      *(v10 + 4) = v35;
      *(v10 + 1) = v33;
      *(v10 + 2) = v34;
      if (v8)
      {
        v36 = *a5 + 8 * v8;
        v37 = v36 - *v10;
        if (v36 == *v10)
        {
          v38 = 0;
        }

        else
        {
          v38 = 0;
          v39 = v37 >> 3;
          v40 = *(a4 + 3884);
          if (v39 <= 1)
          {
            v39 = 1;
          }

          v41 = (*v10 + 4);
          do
          {
            v42 = *v41;
            v41 += 4;
            v38 += v42;
            if (!v40 && *(a4 + 3880) == 1)
            {
              v38 += 0x10000;
            }

            --v40;
            --v39;
          }

          while (v39);
        }

        *(a4 + 3824) += v38;
      }

      v43 = (v8 + a3) >> 1;
      if (*(a5 + 18))
      {
        v44 = *(a5 + 19);
        if (v8 <= v44 && v43 >= v44)
        {
          *(a4 + 3884) -= v8;
        }

        else
        {
          *(a4 + 3880) = 0;
        }
      }

      v46 = *a5 + 8 * v8;
      *(a4 + 3808) = v46;
      v47 = *a5;
      v48 = *a5 + 8 * v43;
      *(a4 + 3816) = v48;
      if (v43 != (a5[1] - v47) >> 3)
      {
        v49 = v48 - v46;
        if (v48 == v46)
        {
          v50 = 0;
        }

        else
        {
          v50 = 0;
          v51 = v49 >> 3;
          v52 = *(a4 + 3884);
          if (v51 <= 1)
          {
            v51 = 1;
          }

          v53 = (v46 + 4);
          do
          {
            v54 = *v53;
            v53 += 4;
            v50 += v54;
            if (!v52 && *(a4 + 3880) == 1)
            {
              v50 += 0x10000;
            }

            --v52;
            --v51;
          }

          while (v51);
        }

        *(a4 + 3832) = *(a4 + 3824) + v50;
      }

      *(a4 + 3840) += v8;
      *(a4 + 3848) += v8;
      *(a4 + 3856) += v8;
      *v11 = *a5;
      v55 = *(a5 + 1);
      v56 = *(a5 + 2);
      v57 = *(a5 + 4);
      *(v11 + 3) = *(a5 + 3);
      *(v11 + 4) = v57;
      *(v11 + 1) = v55;
      *(v11 + 2) = v56;
      if (v8 + a3 >= 2)
      {
        v58 = *a5 + 8 * v43;
        v59 = v58 - *v11;
        if (v58 == *v11)
        {
          v60 = 0;
        }

        else
        {
          v60 = 0;
          v61 = v59 >> 3;
          v62 = *(a4 + 3964);
          if (v61 <= 1)
          {
            v61 = 1;
          }

          v63 = (*v11 + 4);
          do
          {
            v64 = *v63;
            v63 += 4;
            v60 += v64;
            if (!v62 && *(a4 + 3960) == 1)
            {
              v60 += 0x10000;
            }

            --v62;
            --v61;
          }

          while (v61);
        }

        *(a4 + 3904) += v60;
      }

      if (*(a5 + 18))
      {
        v65 = *(a5 + 19);
        if (v43 > v65 || v65 > a3)
        {
          *(a4 + 3960) = 0;
        }

        else
        {
          *(a4 + 3964) -= v43;
        }
      }

      v67 = *a5 + 8 * v43;
      *(a4 + 3888) = v67;
      v68 = *a5;
      v69 = *a5 + 8 * a3;
      *(a4 + 3896) = v69;
      if (a3 != (a5[1] - v68) >> 3)
      {
        v70 = v69 - v67;
        if (v69 == v67)
        {
          v71 = 0;
        }

        else
        {
          v71 = 0;
          v72 = v70 >> 3;
          v73 = *(a4 + 3964);
          if (v72 <= 1)
          {
            v72 = 1;
          }

          v74 = (v67 + 4);
          do
          {
            v75 = *v74;
            v74 += 4;
            v71 += v75;
            if (!v73 && *(a4 + 3960) == 1)
            {
              v71 += 0x10000;
            }

            --v73;
            --v72;
          }

          while (v72);
        }

        *(a4 + 3912) = *(a4 + 3904) + v71;
      }

      *(a4 + 3920) += v43;
      *(a4 + 3928) += v43;
      *(a4 + 3936) += v43;
      v76 = ZSTD_buildEntropyStatisticsAndEstimateSubBlockSize(v9, a4);
      v77 = ZSTD_buildEntropyStatisticsAndEstimateSubBlockSize(v10, a4);
      result = ZSTD_buildEntropyStatisticsAndEstimateSubBlockSize(v11, a4);
      if (v76 > 0xFFFFFFFFFFFFFF88)
      {
        break;
      }

      if (v77 > 0xFFFFFFFFFFFFFF88)
      {
        break;
      }

      if (result > 0xFFFFFFFFFFFFFF88)
      {
        break;
      }

      if (result + v77 >= v76)
      {
        break;
      }

      result = ZSTD_deriveBlockSplitsHelper(v79, v8, (v8 + a3) >> 1, a4, a5);
      v78 = v79[1];
      *(*v79 + 4 * v78) = v43;
      v12 = v78 + 1;
      v79[1] = v78 + 1;
      v8 = (v8 + a3) >> 1;
    }

    while (a3 - v43 > 0x12B);
  }

  return result;
}

unint64_t ZSTD_compressSeqStore_singleBlock(uint64_t a1, uint64_t a2, int *a3, int *a4, uint64_t a5, unint64_t a6, void *a7, size_t a8, int a9, int a10)
{
  v46 = *a3;
  v47 = a3[2];
  if (a10)
  {
    v13 = *a2;
    v14 = *(a2 + 8) - *a2;
    v15 = v14 >> 3;
    if (*(a2 + 72) == 1)
    {
      LODWORD(v15) = *(a2 + 76);
    }

    if ((v14 >> 3))
    {
      v16 = (v14 >> 3);
      v15 = v15;
      do
      {
        v19 = v15-- != 0;
        v20 = *(v13 + 4) == 0 && v19;
        v21 = *v13;
        v22 = *v13 - 1;
        if (v22 > 2)
        {
          v26 = *v13;
          if (v21 >= 4)
          {
            goto LABEL_20;
          }
        }

        else
        {
          v23 = v22 + v20;
          if (v22 + v20 == 3)
          {
            v24 = *a3 - 1;
            v25 = *a4 - 1;
          }

          else
          {
            v24 = a3[v23];
            v25 = a4[v23];
          }

          v26 = *v13;
          if (v24 != v25)
          {
            v26 = v25 + 3;
            *v13 = v25 + 3;
            if ((v25 + 3) >= 4)
            {
LABEL_20:
              *(a3 + 1) = *a3;
              v27 = v26 - 3;
              goto LABEL_29;
            }
          }
        }

        v28 = v26 - (v20 ^ 1);
        if (!v28)
        {
          goto LABEL_30;
        }

        if (v28 == 3)
        {
          v29 = *a3;
          v27 = *a3 - 1;
        }

        else
        {
          v27 = a3[v28];
          v29 = *a3;
        }

        if (v28 == 1)
        {
          v30 = a3 + 2;
        }

        else
        {
          v30 = a3 + 1;
        }

        a3[2] = *v30;
        a3[1] = v29;
LABEL_29:
        *a3 = v27;
LABEL_30:
        if (v21 >= 4)
        {
          *(a4 + 1) = *a4;
          v17 = v21 - 3;
        }

        else
        {
          v31 = v22 + v20;
          if (!(v22 + v20))
          {
            goto LABEL_8;
          }

          if (v31 == 3)
          {
            v32 = *a4;
            v17 = *a4 - 1;
          }

          else
          {
            v17 = a4[v31];
            v32 = *a4;
          }

          if (v31 == 1)
          {
            v33 = a4 + 2;
          }

          else
          {
            v33 = a4 + 1;
          }

          a4[2] = *v33;
          a4[1] = v32;
        }

        *a4 = v17;
LABEL_8:
        v13 += 8;
        --v16;
      }

      while (v16);
    }
  }

  if (a6 < 3)
  {
    return -70;
  }

  result = ZSTD_entropyCompressSeqStore(a2, *(a1 + 3200), *(a1 + 3208), (a1 + 232), (a5 + 3), a6 - 3, a8, *(a1 + 3520), *(a1 + 8));
  if (result <= 0xFFFFFFFFFFFFFF88)
  {
    if (result <= 0x18 && *(a1 + 944) == 0)
    {
      v40 = result;
      if (ZSTD_isRLE(a7, a8))
      {
        result = 1;
      }

      else
      {
        result = v40;
      }
    }

    if (*(a1 + 912))
    {
      result = ZSTD_copyBlockSequences((a1 + 912), a2, &v46);
      if (result <= 0xFFFFFFFFFFFFFF88)
      {
        result = 0;
        *(a1 + 3200) = vextq_s8(*(a1 + 3200), *(a1 + 3200), 8uLL);
      }

      return result;
    }

    if (result == 1)
    {
      if (a6 == 3)
      {
        return -70;
      }

      v42 = *a7;
      v43 = a9 + 8 * a8 + 2;
      *a5 = v43;
      *(a5 + 2) = BYTE2(v43);
      *(a5 + 3) = v42;
      *a3 = v46;
      a3[2] = v47;
      result = 4;
    }

    else
    {
      if (!result)
      {
        if (a8 + 3 <= a6)
        {
          v41 = a9 + 8 * a8;
          *a5 = v41;
          *(a5 + 2) = BYTE2(v41);
          memcpy((a5 + 3), a7, a8);
          result = a8 + 3;
          if (a8 + 3 > 0xFFFFFFFFFFFFFF88)
          {
            return result;
          }

          *a3 = v46;
          a3[2] = v47;
          goto LABEL_61;
        }

        return -70;
      }

      *(a1 + 3200) = vextq_s8(*(a1 + 3200), *(a1 + 3200), 8uLL);
      v44 = a9 + 8 * result + 4;
      *a5 = v44;
      *(a5 + 2) = BYTE2(v44);
      result += 3;
    }

LABEL_61:
    v45 = *(a1 + 3200);
    if (*(v45 + 5604) == 2)
    {
      *(v45 + 5604) = 1;
    }
  }

  return result;
}

uint64_t ZSTD_entropyCompressSeqStore(uint64_t *a1, _DWORD *a2, void *__dst, _DWORD *a4, _BYTE *a5, size_t a6, size_t a7, uint32x4_t *a8, int a9)
{
  v10 = a1[1];
  v11 = a1[2];
  v12 = a1[3] - v11;
  v62 = *a1;
  if (v10 == *a1)
  {
    v13 = 8;
  }

  else
  {
    v13 = 8 * (v12 / ((v10 - *a1) >> 3) > 0x13);
  }

  v63 = a8[13].i64 + 4;
  v14 = a4[18];
  v60 = a1[1];
  v61 = (v10 - v62) >> 3;
  v59 = v10 - v62;
  if (v14 == 1)
  {
    v15 = a6;
    v16 = a4[7];
  }

  else
  {
    if (v14 == 2)
    {
      v15 = a6;
      v16 = a4[7];
      v17 = 0;
      goto LABEL_11;
    }

    v16 = a4[7];
    v15 = a6;
    if (v16 == 1)
    {
      v17 = a4[6] == 0;
      goto LABEL_11;
    }
  }

  v17 = 1;
LABEL_11:
  v55 = a1[4];
  v56 = a1[6];
  v54 = a1[5];
  if (v12 <= 0x3FF)
  {
    v18 = 3;
  }

  else
  {
    v18 = 4;
  }

  if ((v12 & 0xFFFFFFFFFFFFC000) != 0)
  {
    v19 = v18 + 1;
  }

  else
  {
    v19 = v18;
  }

  memcpy(__dst, a2, 0x810uLL);
  if (!v17)
  {
    if (v12 <= 0x1F)
    {
      LODWORD(v25) = 1;
    }

    else
    {
      LODWORD(v25) = 2;
    }

    if (v12 <= 0xFFF)
    {
      v25 = v25;
    }

    else
    {
      v25 = (v25 + 1);
    }

    v26 = v12 + v25;
    v27 = v15;
    if (v12 + v25 > v15)
    {
      goto LABEL_89;
    }

    v22 = v16;
    if (v25 != 3)
    {
      goto LABEL_31;
    }

    goto LABEL_41;
  }

  v21 = a2[514];
  v22 = v16;
  v23 = 9 - v16;
  if ((9 - v16) >= 3)
  {
    v23 = 3;
  }

  v24 = 8 << v23;
  if (v21 == 2)
  {
    v24 = 6;
  }

  if (v24 > v12)
  {
    if (v12 <= 0x1F)
    {
      LODWORD(v25) = 1;
    }

    else
    {
      LODWORD(v25) = 2;
    }

    if (v12 <= 0xFFF)
    {
      v25 = v25;
    }

    else
    {
      v25 = (v25 + 1);
    }

    v26 = v12 + v25;
    v27 = v15;
    if (v12 + v25 > v15)
    {
      goto LABEL_89;
    }

LABEL_30:
    if (v25 != 3)
    {
LABEL_31:
      v28 = a5;
      if (v25 == 2)
      {
        *a5 = (16 * v12) | 4;
      }

      else
      {
        *a5 = 8 * v12;
      }

LABEL_78:
      memcpy(&v28[v25], v11, v12);
      if (v26 <= 0xFFFFFFFFFFFFFF88)
      {
        goto LABEL_79;
      }

      goto LABEL_125;
    }

LABEL_41:
    v28 = a5;
    *a5 = (16 * v12) | 0xC;
    goto LABEL_78;
  }

  v27 = v15;
  v29 = v15 - v19;
  if (v15 <= v19)
  {
    goto LABEL_89;
  }

  if (v16 >= 4 || v12 >= 0x401)
  {
    v31 = 0;
  }

  else
  {
    v31 = 4;
  }

  if (v16 <= 7)
  {
    v32 = 6;
  }

  else
  {
    v32 = v16 - 1;
  }

  v33 = v31 | (2 * (v16 > 7)) | v13;
  if (a9)
  {
    ++v33;
  }

  LODWORD(v67) = a2[514];
  v36 = v21 == 2 && v19 == 3 || v12 < 0x100;
  v28 = a5;
  if (v36)
  {
    v37 = HUF_compress1X_repeat(&a5[v19], v29, v11, v12, 255u, 11u, v63, 8708uLL, __dst, &v67, v33);
  }

  else
  {
    v37 = HUF_compress4X_repeat(&a5[v19], v29, v11, v12, 255u, 11u, v63, 8708uLL, __dst, &v67, v33);
  }

  if (v67)
  {
    v38 = 3;
  }

  else
  {
    v38 = 2;
  }

  if (v37 - 1 > 0xFFFFFFFFFFFFFF87 || v37 >= v12 - (v12 >> v32) - 2)
  {
    memcpy(__dst, a2, 0x810uLL);
    if (v12 <= 0x1F)
    {
      LODWORD(v25) = 1;
    }

    else
    {
      LODWORD(v25) = 2;
    }

    if (v12 <= 0xFFF)
    {
      v25 = v25;
    }

    else
    {
      v25 = (v25 + 1);
    }

    v26 = v12 + v25;
    if (v12 + v25 > v27)
    {
      goto LABEL_89;
    }

    goto LABEL_30;
  }

  if (v37 == 1)
  {
    if (v12 > 7 || v12 <= 1 || (v39 = *v11, v11[1] == v39) && (v12 == 2 || v11[2] == v39 && (v12 == 3 || v11[3] == v39 && (v12 == 4 || v11[4] == v39 && (v12 == 5 || v11[5] == v39 && (v12 == 6 || v11[6] == v39))))))
    {
      memcpy(__dst, a2, 0x810uLL);
      v26 = ZSTD_compressRleLiteralsBlock(a5, v11, v12);
      goto LABEL_79;
    }
  }

  if (!v67)
  {
    *(__dst + 514) = 1;
  }

  if (v19 == 5)
  {
    *a5 = ((v37 << 22) + 16 * v12) | v38 | 0xC;
    a5[4] = v37 >> 10;
  }

  else if (v19 == 4)
  {
    *a5 = ((v37 << 18) + 16 * v12) | v38 | 8;
  }

  else
  {
    if (v36)
    {
      v49 = 4;
    }

    else
    {
      v49 = 0;
    }

    v50 = ((v38 | v49 | (16 * v12)) ^ 4) + (v37 << 14);
    *a5 = v50;
    a5[2] = BYTE2(v50);
  }

  v26 = v37 + v19;
  if (v26 <= 0xFFFFFFFFFFFFFF88)
  {
LABEL_79:
    if ((v27 - v26) >= 4)
    {
      v40 = &v28[v26];
      if (v61 > 0x7F)
      {
        v43 = a2;
        if (v61 >> 8 > 0x7E)
        {
          *v40 = -1;
          *(v40 + 1) = (v59 >> 3) - 32512;
          v41 = v40 + 3;
        }

        else
        {
          *v40 = BYTE1(v61) | 0x80;
          v40[1] = v59 >> 3;
          v41 = v40 + 2;
        }

        v42 = __dst;
      }

      else
      {
        *v40 = v59 >> 3;
        v41 = v40 + 1;
        v43 = a2;
        v42 = __dst;
      }

      if (v60 == v62)
      {
        memcpy(v42 + 1032, v43 + 516, 0xDE0uLL);
        v26 = v41 - v28;
        if (v41 == v28)
        {
          return v26;
        }
      }

      else
      {
        v44 = v41 + 1;
        v69 = 0;
        v67 = 0u;
        v68 = 0u;
        v45 = v42;
        ZSTD_buildSequencesStatistics(&v67, a1, v61, (v43 + 516), (v42 + 1032), v41 + 1, &v28[v27], v22, a8, v63);
        v26 = v68;
        if (v68 < 0xFFFFFFFFFFFFFF89)
        {
          *v41 = (v67 << 6) + 16 * BYTE4(v67) + 4 * BYTE8(v67);
          v46 = *(&v68 + 1);
          v47 = &v44[v26];
          v48 = ZSTD_encodeSequences(v47, &v28[v27] - v47, v45 + 1418, v54, v45 + 1032, v56, v45 + 2144, v55, v62, v61, v69);
          v26 = v48;
          if (v48 <= 0xFFFFFFFFFFFFFF88)
          {
            if (v46 && v48 + v46 < 4)
            {
              return 0;
            }

            v26 = v47 + v48 - v28;
            if (!v26)
            {
              return v26;
            }
          }
        }
      }

      goto LABEL_125;
    }

LABEL_89:
    if (a7 <= v27)
    {
      return 0;
    }

    else
    {
      return -70;
    }
  }

LABEL_125:
  if (a7 <= v27 && v26 == -70)
  {
    return 0;
  }

  if (v26 <= 0xFFFFFFFFFFFFFF88)
  {
    v51 = a4[7];
    if (v51 <= 7)
    {
      v52 = 6;
    }

    else
    {
      v52 = v51 - 1;
    }

    if (v26 >= a7 - (a7 >> v52) - 2)
    {
      return 0;
    }
  }

  return v26;
}

uint64_t ZSTD_copyBlockSequences(void *a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = (v4 - *a2) >> 3;
  v6 = v5 + 1;
  v7 = a1[2];
  if (v5 + 1 > a1[3] - v7)
  {
    return -70;
  }

  v10 = a2[2];
  v9 = a2[3];
  v11 = a1[1] + 16 * v7;
  v29 = *a3;
  v30 = *(a3 + 2);
  if (v4 != v3)
  {
    v12 = 0;
    v13 = *(a2 + 19);
    v14 = v29;
    v15 = HIDWORD(v29);
    if (v5 <= 1)
    {
      v16 = 1;
    }

    else
    {
      v16 = v5;
    }

    v17 = v30;
    v18 = (v3 + 6);
    v19 = v11 + 8;
    while (1)
    {
      v21 = *(v18 - 1);
      v22 = *v18;
      *(v19 - 4) = v21;
      *v19 = (v22 + 3);
      if (v13)
      {
        goto LABEL_14;
      }

      v26 = *(a2 + 18);
      if (v26 == 2)
      {
        break;
      }

      v23 = v21;
      if (v26 == 1)
      {
        v23 = v21 | 0x10000;
        *(v19 - 4) = v21 | 0x10000;
      }

LABEL_15:
      v24 = *(v18 - 3);
      if (v24 - 1 > 2)
      {
        v20 = v24 - 3;
        *(v19 - 8) = v24 - 3;
        if (v24 > 3)
        {
          goto LABEL_11;
        }
      }

      else
      {
        *(v19 + 4) = v24;
        if (v23)
        {
          v25 = *(&v29 + v24 - 1);
        }

        else if (v24 == 3)
        {
          v25 = v14 - 1;
        }

        else
        {
          v25 = *(&v29 + v24);
        }

        *(v19 - 8) = v25;
      }

      v27 = v24 - (v21 != 0);
      switch(v27)
      {
        case 0u:
          goto LABEL_12;
        case 3u:
          v20 = v14 - 1;
          break;
        case 1u:
          v15 = v17;
          break;
        default:
          v20 = *(&v29 + v27);
          break;
      }

LABEL_11:
      HIDWORD(v29) = v14;
      v30 = v15;
      v17 = v15;
      v15 = v14;
      v14 = v20;
      LODWORD(v29) = v20;
LABEL_12:
      v18 += 4;
      v12 += v23;
      --v13;
      v19 += 16;
      if (!--v16)
      {
        goto LABEL_32;
      }
    }

    *v19 = v22 + 65539;
LABEL_14:
    v23 = v21;
    goto LABEL_15;
  }

  v12 = 0;
LABEL_32:
  v28 = v11 + 16 * v5;
  *(v28 + 4) = (v9 - (v12 + v10));
  *v28 = 0;
  a1[2] = v6 + v7;
  return 0;
}

unint64_t ZSTD_buildSequencesStatistics(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, char *a6, uint64_t a7, unsigned int a8, uint32x4_t *a9, uint64_t a10)
{
  v13 = *(a2 + 40);
  v14 = *(a2 + 48);
  v15 = *(a2 + 32);
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0;
  v16 = *(a2 + 8) - *a2;
  if ((v16 & 0x7FFFFFFF8) != 0)
  {
    v17 = (v16 >> 3);
    v18 = (*a2 + 6);
    v19 = v15;
    v20 = v14;
    v21 = v13;
    do
    {
      v23 = *(v18 - 1);
      if (v23 < 0x40)
      {
        LOBYTE(v24) = ZSTD_LLcode_LL_Code_36107[*(v18 - 1)];
      }

      else
      {
        v24 = 50 - __clz(v23);
      }

      v25 = __clz(*(v18 - 3));
      v22 = *v18;
      *v19 = v24;
      *v20 = 31 - v25;
      if (v22 >= 0x80)
      {
        v22 = 67 - __clz(v22);
      }

      else
      {
        LOBYTE(v22) = ZSTD_MLcode_ML_Code_36109[v22];
      }

      v18 += 4;
      *v21++ = v22;
      ++v20;
      v19 = (v19 + 1);
      --v17;
    }

    while (v17);
  }

  v26 = *(a2 + 72);
  if (v26 == 1)
  {
    *(v15 + *(a2 + 76)) = 35;
    v26 = *(a2 + 72);
  }

  if (v26 == 2)
  {
    v13[*(a2 + 76)] = 52;
  }

  *(a1 + 32) = 0;
  v96 = 35;
  v90 = v14;
  v91 = a3;
  v89 = v13;
  if (a3 <= 0x5DB)
  {
    a9[7] = 0u;
    a9[8] = 0u;
    a9[5] = 0u;
    a9[6] = 0u;
    a9[3] = 0u;
    a9[4] = 0u;
    a9[1] = 0u;
    a9[2] = 0u;
    *a9 = 0u;
    if (!a3)
    {
      v30 = a1;
      LODWORD(v29) = 0;
      v33 = 0;
      goto LABEL_34;
    }

    v27 = v15;
    do
    {
      v28 = *v27;
      v27 = (v27 + 1);
      ++a9->i32[v28];
    }

    while (v27 < (v15 + a3));
    LODWORD(v29) = 36;
    do
    {
      v29 = (v29 - 1);
    }

    while (!a9->i32[v29]);
    if (v29 >= 7)
    {
      v31 = (v29 + 1) & 0x1FFFFFFF8;
      v37 = v31;
      v38 = a9 + 1;
      v39 = 0uLL;
      v40 = 0uLL;
      do
      {
        v39 = vmaxq_u32(v38[-1], v39);
        v40 = vmaxq_u32(*v38, v40);
        v38 += 2;
        v37 -= 8;
      }

      while (v37);
      v30 = a1;
      v32 = vmaxvq_u32(vmaxq_u32(v39, v40));
      if (v29 + 1 == v31)
      {
LABEL_33:
        v33 = v32;
        goto LABEL_34;
      }
    }

    else
    {
      v30 = a1;
      v31 = 0;
      v32 = 0;
    }

    v41 = v29 - v31 + 1;
    v42 = a9 + v31;
    do
    {
      v44 = *v42++;
      v43 = v44;
      if (v44 > v32)
      {
        v32 = v43;
      }

      --v41;
    }

    while (v41);
    goto LABEL_33;
  }

  v30 = a1;
  if ((a10 & 3) != 0)
  {
    v33 = -1;
    LODWORD(v29) = 35;
  }

  else
  {
    v34 = a3;
    v35 = a8;
    v36 = HIST_count_parallel_wksp(a9, &v96, v15, v34, 0, a10);
    a8 = v35;
    a3 = v91;
    v33 = v36;
    LODWORD(v29) = v96;
  }

LABEL_34:
  *(a5 + 3548) = *(a4 + 3548);
  v45 = a4;
  v46 = (a4 + 2224);
  v47 = a8;
  v48 = ZSTD_selectEncodingType((a5 + 3548), a9, v29, v33, a3, 9u, v46, &LL_defaultNorm, 6, 1, a8);
  v49 = a3;
  v50 = v48;
  *v30 = v48;
  result = ZSTD_buildCTable(a6, a7 - a6, (a5 + 2224), 9u, v48, a9, v29, v15, v49, &LL_defaultNorm, 6, 35, v46, 0x524uLL, a10);
  if (result > 0xFFFFFFFFFFFFFF88)
  {
    *(v30 + 16) = result;
    return result;
  }

  if (v50 == 2)
  {
    *(v30 + 24) = result;
  }

  v52 = &a6[result];
  v95 = 31;
  v53 = v47;
  if (v91 > 0x5DB)
  {
    v54 = v45;
    if ((a10 & 3) == 0)
    {
      v63 = HIST_count_parallel_wksp(a9, &v95, v90, v91, 0, a10);
      LODWORD(v58) = v95;
      v56 = a5;
      v59 = v30;
      v60 = v90;
      goto LABEL_59;
    }

    v63 = -1;
    LODWORD(v58) = 31;
LABEL_49:
    v56 = a5;
    v59 = v30;
    v60 = v90;
    goto LABEL_59;
  }

  a9[6] = 0u;
  a9[7] = 0u;
  a9[4] = 0u;
  a9[5] = 0u;
  a9[2] = 0u;
  a9[3] = 0u;
  *a9 = 0u;
  a9[1] = 0u;
  v54 = v45;
  if (!v91)
  {
    LODWORD(v58) = 0;
    v63 = 0;
    goto LABEL_49;
  }

  v55 = v90;
  v56 = a5;
  do
  {
    v57 = *v55;
    v55 = (v55 + 1);
    ++a9->i32[v57];
  }

  while (v55 < (v90 + v91));
  LODWORD(v58) = 32;
  v59 = v30;
  do
  {
    v58 = (v58 - 1);
  }

  while (!a9->i32[v58]);
  v60 = v90;
  if (v58 < 7)
  {
    v61 = 0;
    v62 = 0;
    goto LABEL_54;
  }

  v61 = (v58 + 1) & 0x1FFFFFFF8;
  v64 = v61;
  v65 = a9 + 1;
  v66 = 0uLL;
  v67 = 0uLL;
  do
  {
    v66 = vmaxq_u32(v65[-1], v66);
    v67 = vmaxq_u32(*v65, v67);
    v65 += 2;
    v64 -= 8;
  }

  while (v64);
  v62 = vmaxvq_u32(vmaxq_u32(v66, v67));
  if (v58 + 1 != v61)
  {
LABEL_54:
    v68 = v58 - v61 + 1;
    v69 = a9 + v61;
    do
    {
      v71 = *v69++;
      v70 = v71;
      if (v71 > v62)
      {
        v62 = v70;
      }

      --v68;
    }

    while (v68);
  }

  v63 = v62;
LABEL_59:
  *(v56 + 3540) = *(v54 + 3540);
  v72 = ZSTD_selectEncodingType((v56 + 3540), a9, v58, v63, v91, 8u, v54, &OF_defaultNorm, 5, v58 < 0x1D, v53);
  *(v59 + 4) = v72;
  result = ZSTD_buildCTable(v52, a7 - v52, v56, 8u, v72, a9, v58, v60, v91, &OF_defaultNorm, 5, 28, v54, 0x304uLL, a10);
  if (result > 0xFFFFFFFFFFFFFF88)
  {
LABEL_86:
    *(v59 + 16) = result;
    return result;
  }

  if (v72 == 2)
  {
    *(v59 + 24) = result;
  }

  v73 = &v52[result];
  v94 = 52;
  if (v91 <= 0x5DB)
  {
    a9[13].i32[0] = 0;
    a9[11] = 0u;
    a9[12] = 0u;
    a9[9] = 0u;
    a9[10] = 0u;
    a9[7] = 0u;
    a9[8] = 0u;
    a9[5] = 0u;
    a9[6] = 0u;
    a9[3] = 0u;
    a9[4] = 0u;
    a9[1] = 0u;
    a9[2] = 0u;
    *a9 = 0u;
    if (!v91)
    {
      LODWORD(v76) = 0;
      v79 = 0;
      goto LABEL_82;
    }

    v74 = v89;
    do
    {
      v75 = *v74;
      v74 = (v74 + 1);
      ++a9->i32[v75];
    }

    while (v74 < (v89 + v91));
    LODWORD(v76) = 53;
    do
    {
      v76 = (v76 - 1);
    }

    while (!a9->i32[v76]);
    if (v76 >= 7)
    {
      v77 = (v76 + 1) & 0x1FFFFFFF8;
      v80 = v77;
      v81 = a9 + 1;
      v82 = 0uLL;
      v83 = 0uLL;
      do
      {
        v82 = vmaxq_u32(v81[-1], v82);
        v83 = vmaxq_u32(*v81, v83);
        v81 += 2;
        v80 -= 8;
      }

      while (v80);
      v78 = vmaxvq_u32(vmaxq_u32(v82, v83));
      if (v76 + 1 == v77)
      {
LABEL_81:
        v79 = v78;
        goto LABEL_82;
      }
    }

    else
    {
      v77 = 0;
      v78 = 0;
    }

    v84 = v76 - v77 + 1;
    v85 = a9 + v77;
    do
    {
      v87 = *v85++;
      v86 = v87;
      if (v87 > v78)
      {
        v78 = v86;
      }

      --v84;
    }

    while (v84);
    goto LABEL_81;
  }

  if ((a10 & 3) != 0)
  {
    v79 = -1;
    LODWORD(v76) = 52;
  }

  else
  {
    v79 = HIST_count_parallel_wksp(a9, &v94, v89, v91, 0, a10);
    LODWORD(v76) = v94;
  }

LABEL_82:
  *(v56 + 3544) = *(v54 + 3544);
  v88 = ZSTD_selectEncodingType((v56 + 3544), a9, v76, v79, v91, 9u, (v54 + 772), &ML_defaultNorm, 6, 1, v53);
  *(v59 + 8) = v88;
  result = ZSTD_buildCTable(v73, a7 - v73, (v56 + 772), 9u, v88, a9, v76, v89, v91, &ML_defaultNorm, 6, 52, (v54 + 772), 0x5ACuLL, a10);
  if (result > 0xFFFFFFFFFFFFFF88)
  {
    goto LABEL_86;
  }

  if (v88 == 2)
  {
    *(v59 + 24) = result;
  }

  *(v59 + 16) = &v73[result] - a6;
  return result;
}

unint64_t ZSTD_buildEntropyStatisticsAndEstimateSubBlockSize(uint64_t *a1, uint64_t a2)
{
  result = ZSTD_buildBlockEntropyStats(a1, *(a2 + 3200), *(a2 + 3208), (a2 + 232), a2 + 4912, *(a2 + 3520));
  if (result > 0xFFFFFFFFFFFFFF88)
  {
    return result;
  }

  v5 = a1[2];
  v6 = a1[3] - v5;
  v7 = a1[5];
  v8 = a1[6];
  v9 = a1[4];
  v11 = *a1;
  v10 = a1[1];
  v12 = (v10 - *a1) >> 3;
  v13 = *(a2 + 3208);
  v14 = *(a2 + 3520);
  v15 = *(a2 + 4912);
  v221 = 255;
  v16 = 3;
  if (v6 > 0x3FF)
  {
    v16 = 4;
  }

  if ((v6 & 0xFFFFFFFFFFFFC000) != 0)
  {
    v17 = v16 + 1;
  }

  else
  {
    v17 = v16;
  }

  if ((v15 - 2) >= 2)
  {
    if (v15)
    {
      v6 = v15 == 1;
    }

    goto LABEL_26;
  }

  v217 = v17;
  v18 = v13;
  v19 = v6;
  v20 = v12;
  v21 = v6;
  v22 = v10;
  v23 = v11;
  v24 = HIST_count_wksp(v14, &v221, v5, v19, v14);
  v11 = v23;
  v10 = v22;
  v6 = v21;
  v12 = v20;
  v13 = v18;
  if (v24 > 0xFFFFFFFFFFFFFF88)
  {
    goto LABEL_26;
  }

  if ((v221 & 0x80000000) == 0)
  {
    v25 = v221 + 1;
    if (v221 >= 7)
    {
      v26 = v25 & 0xFFFFFFF8;
      v29 = (v14 + 16);
      v30 = (v18 + 20);
      v31 = 0uLL;
      v32.i64[0] = 255;
      v32.i64[1] = 255;
      v33 = v26;
      v34 = 0uLL;
      v4 = 0uLL;
      v35 = 0uLL;
      do
      {
        v36 = v30[-2];
        v37 = v30[-1];
        v38 = *v30;
        v39 = v30[1];
        v30 += 4;
        v40 = v29[-1];
        v41 = vuzp1q_s32(vandq_s8(v36, v32), vandq_s8(v37, v32));
        v42 = vuzp1q_s32(vandq_s8(v38, v32), vandq_s8(v39, v32));
        v34 = vmlal_high_u32(v34, v41, v40);
        v31 = vmlal_u32(v31, *v41.i8, *v40.i8);
        v35 = vmlal_high_u32(v35, v42, *v29);
        v4 = vmlal_u32(v4, *v42.i8, *v29->i8);
        v29 += 2;
        v33 -= 8;
      }

      while (v33);
      v27 = vaddvq_s64(vaddq_s64(vaddq_s64(v4, v31), vaddq_s64(v35, v34)));
      if (v26 == v25)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v26 = 0;
      v27 = 0;
    }

    v43 = v25 - v26;
    v44 = (v14 + 4 * v26);
    v45 = &v18[4 * v26 + 4];
    do
    {
      v47 = *v45;
      v45 += 4;
      v46 = v47;
      v48 = *v44++;
      v27 += v46 * v48;
      --v43;
    }

    while (v43);
LABEL_20:
    v28 = v27 >> 3;
    goto LABEL_21;
  }

  v28 = 0;
LABEL_21:
  if (v15 == 2)
  {
    v28 += *(a2 + 5048);
  }

  if (v6 >= 0x100)
  {
    v28 += 6;
  }

  v6 = v217 + v28;
LABEL_26:
  v49 = *(a2 + 5060);
  v50 = (v8 + v12);
  v221 = 31;
  if (v12 > 0x5DB)
  {
    if ((v14 & 3) != 0)
    {
      goto LABEL_37;
    }

    v218 = v13;
    v70 = v12;
    v71 = v12;
    v72 = v6;
    v73 = v10;
    v74 = v11;
    HIST_count_parallel_wksp(v14, &v221, v8, v70, 0, v14);
    v11 = v74;
    v10 = v73;
    v6 = v72;
    v12 = v71;
    v13 = v218;
    if (v49 == 1)
    {
      goto LABEL_58;
    }
  }

  else
  {
    *(v14 + 96) = 0u;
    *(v14 + 112) = 0u;
    *(v14 + 64) = 0u;
    *(v14 + 80) = 0u;
    *(v14 + 32) = 0u;
    *(v14 + 48) = 0u;
    *v14 = 0u;
    *(v14 + 16) = 0u;
    if (v10 != v11)
    {
      v51 = v8;
      do
      {
        v52 = *v51;
        v51 = (v51 + 1);
        ++*(v14 + 4 * v52);
      }

      while (v51 < v50);
      LODWORD(v53) = 32;
      do
      {
        v53 = (v53 - 1);
      }

      while (!*(v14 + 4 * v53));
      v221 = v53;
      if (v53 >= 7)
      {
        v54 = (v53 + 1) & 0x1FFFFFFF8;
        do
        {
          v54 -= 8;
        }

        while (v54);
      }

LABEL_37:
      if (v49 == 1)
      {
        goto LABEL_58;
      }

      goto LABEL_38;
    }

    v221 = 0;
    if (v49 == 1)
    {
      goto LABEL_58;
    }
  }

LABEL_38:
  if (!v49)
  {
    if (v221 + 1 > 1)
    {
      v55 = v221 + 1;
    }

    else
    {
      v55 = 1;
    }

    if (v221 + 1 >= 2)
    {
      v76 = 0;
      v77 = 0;
      v56 = v55 & 0xFFFFFFFE;
      v78 = (v14 + 4);
      v79 = &word_182B0C3A6;
      v80 = v56;
      do
      {
        v81 = *(v79 - 1);
        v83 = *v79;
        v79 += 2;
        v82 = v83;
        if (v81 == 0xFFFF)
        {
          LOWORD(v81) = 1;
        }

        if (v82 == 0xFFFF)
        {
          LOWORD(v82) = 1;
        }

        v76 += (kInverseProbabilityLog256[8 * (v81 & 0x1FFFFFFF)] * *(v78 - 1));
        v77 += (kInverseProbabilityLog256[8 * (v82 & 0x1FFFFFFF)] * *v78);
        v78 += 2;
        v80 -= 2;
      }

      while (v80);
      v57 = v77 + v76;
      if (v56 == v55)
      {
LABEL_71:
        v75 = v57 >> 8;
        if (v12 >= 1)
        {
          goto LABEL_72;
        }

        goto LABEL_89;
      }
    }

    else
    {
      v56 = 0;
      v57 = 0;
    }

    v84 = v55 - v56;
    v85 = (v14 + 4 * v56);
    v86 = &OF_defaultNorm[v56];
    do
    {
      v88 = *v86++;
      v87 = v88;
      if (v88 == 0xFFFF)
      {
        v87 = 1;
      }

      v89 = *v85++;
      v57 += (kInverseProbabilityLog256[8 * (v87 & 0x1FFFFFFF)] * v89);
      --v84;
    }

    while (v84);
    goto LABEL_71;
  }

  if ((v49 & 0xFFFFFFFE) != 2)
  {
LABEL_58:
    v75 = 0;
    if (v12 >= 1)
    {
      goto LABEL_72;
    }

    goto LABEL_89;
  }

  v58 = v13[1032];
  if (v13[1032])
  {
    v59 = 1 << (v58 - 1);
  }

  else
  {
    v59 = 1;
  }

  if (v221 > v13[1033])
  {
LABEL_54:
    v69 = 10 * v12;
    goto LABEL_90;
  }

  v60 = 0;
  v61 = v221 + 1;
  v62 = &v13[2 * v59 + 1036];
  v63 = v14;
  do
  {
    v65 = *v62;
    v62 += 4;
    v64 = v65;
    v67 = *v63++;
    v66 = v67;
    if (v67)
    {
      v68 = ((HIWORD(v64) + 1) << 8) - ((((HIWORD(v64) + 1) << 24) - ((v64 + (1 << v58)) << 8)) >> v58);
      if (v68 >= (v58 << 8) + 256)
      {
        goto LABEL_54;
      }

      v60 += v66 * v68;
    }

    --v61;
  }

  while (v61);
  v75 = v60 >> 8;
  if (v12 >= 1)
  {
LABEL_72:
    v90 = v8 + v12;
    if (v8 + v12 <= v8 + 1)
    {
      v90 = v8 + 1;
    }

    v91 = v90 - v8;
    if (v91 >= 4)
    {
      if (v91 < 0x10)
      {
        v92 = 0;
LABEL_81:
        v108 = v91 & 0xFFFFFFFFFFFFFFFCLL;
        v109 = 0uLL;
        v110 = v75;
        v111 = v92 - (v91 & 0xFFFFFFFFFFFFFFFCLL);
        v112 = (v8 + v92);
        v113.i64[0] = 255;
        v113.i64[1] = 255;
        do
        {
          v114 = *v112++;
          v4.i32[0] = v114;
          v115 = vmovl_u16(*&vmovl_u8(*v4.i8));
          v116.i64[0] = v115.u32[0];
          v116.i64[1] = v115.u32[1];
          v117 = vandq_s8(v116, v113);
          v116.i64[0] = v115.u32[2];
          v116.i64[1] = v115.u32[3];
          v4 = vandq_s8(v116, v113);
          v109 = vaddq_s64(v109, v4);
          v110 = vaddq_s64(v110, v117);
          v111 += 4;
        }

        while (v111);
        v75 = vaddvq_s64(vaddq_s64(v110, v109));
        if (v91 == v108)
        {
          goto LABEL_89;
        }

        v8 = (v8 + v108);
        goto LABEL_88;
      }

      v92 = v91 & 0xFFFFFFFFFFFFFFF0;
      v93 = 0uLL;
      v94 = v75;
      v4.i32[1] = -255;
      v95 = v8;
      v96 = v91 & 0xFFFFFFFFFFFFFFF0;
      v97 = 0uLL;
      v98 = 0uLL;
      v99 = 0uLL;
      v100 = 0uLL;
      v101 = 0uLL;
      v102 = 0uLL;
      do
      {
        v103 = *v95++;
        v104 = vqtbl1q_s8(v103, xmmword_182B08DC0);
        v105 = vqtbl1q_s8(v103, xmmword_182B08DD0);
        v106 = vqtbl1q_s8(v103, xmmword_182B08DE0);
        v107 = vqtbl1q_s8(v103, xmmword_182B08DF0);
        v93 = vaddw_high_u32(v93, v105);
        v98 = vaddw_high_u32(v98, v104);
        v97 = vaddw_u32(v97, *v104.i8);
        v94 = vaddw_u32(v94, *v105.i8);
        v99 = vaddw_u32(v99, *v106.i8);
        v100 = vaddw_high_u32(v100, v106);
        v101 = vaddw_u32(v101, *v107.i8);
        v102 = vaddw_high_u32(v102, v107);
        v96 -= 16;
      }

      while (v96);
      v75 = vaddvq_s64(vaddq_s64(vaddq_s64(vaddq_s64(v94, v99), vaddq_s64(v97, v101)), vaddq_s64(vaddq_s64(v93, v100), vaddq_s64(v98, v102))));
      if (v91 == v92)
      {
        goto LABEL_89;
      }

      if ((v91 & 0xC) != 0)
      {
        goto LABEL_81;
      }

      v8 = (v8 + v92);
    }

    do
    {
LABEL_88:
      v118 = *v8;
      v8 = (v8 + 1);
      v75 += v118;
    }

    while (v8 < v50);
  }

LABEL_89:
  v69 = v75 >> 3;
LABEL_90:
  v119 = *(a2 + 5056);
  v120 = (v9 + v12);
  v221 = 35;
  if (v12 > 0x5DB)
  {
    if ((v14 & 3) == 0)
    {
      v140 = v13;
      v141 = v12;
      v219 = v69;
      v142 = v12;
      v143 = v6;
      v144 = v10;
      v145 = v11;
      HIST_count_parallel_wksp(v14, &v221, v9, v141, 0, v14);
      v11 = v145;
      v10 = v144;
      v6 = v143;
      v12 = v142;
      v69 = v219;
      v13 = v140;
      if (v119 == 1)
      {
        goto LABEL_122;
      }

      goto LABEL_102;
    }
  }

  else
  {
    *(v14 + 112) = 0u;
    *(v14 + 128) = 0u;
    *(v14 + 80) = 0u;
    *(v14 + 96) = 0u;
    *(v14 + 48) = 0u;
    *(v14 + 64) = 0u;
    *(v14 + 16) = 0u;
    *(v14 + 32) = 0u;
    *v14 = 0u;
    if (v10 == v11)
    {
      v221 = 0;
      if (v119 == 1)
      {
        goto LABEL_122;
      }

      goto LABEL_102;
    }

    v121 = v9;
    do
    {
      v122 = *v121;
      v121 = (v121 + 1);
      ++*(v14 + 4 * v122);
    }

    while (v121 < v120);
    LODWORD(v123) = 36;
    do
    {
      v123 = (v123 - 1);
    }

    while (!*(v14 + 4 * v123));
    v221 = v123;
    if (v123 >= 7)
    {
      v124 = (v123 + 1) & 0x1FFFFFFF8;
      do
      {
        v124 -= 8;
      }

      while (v124);
    }
  }

  if (v119 == 1)
  {
    goto LABEL_122;
  }

LABEL_102:
  if (!v119)
  {
    if (v221 + 1 > 1)
    {
      v125 = v221 + 1;
    }

    else
    {
      v125 = 1;
    }

    if (v221 + 1 >= 2)
    {
      v147 = 0;
      v148 = 0;
      v126 = v125 & 0xFFFFFFFE;
      v149 = (v14 + 4);
      v150 = &word_182B0C35E;
      v151 = v126;
      do
      {
        v152 = *(v150 - 1);
        v154 = *v150;
        v150 += 2;
        v153 = v154;
        if (v152 == 0xFFFF)
        {
          LOWORD(v152) = 1;
        }

        if (v153 == 0xFFFF)
        {
          LOWORD(v153) = 1;
        }

        v147 += (kInverseProbabilityLog256[4 * (v152 & 0x3FFFFFFF)] * *(v149 - 1));
        v148 += (kInverseProbabilityLog256[4 * (v153 & 0x3FFFFFFF)] * *v149);
        v149 += 2;
        v151 -= 2;
      }

      while (v151);
      v127 = v148 + v147;
      if (v126 == v125)
      {
LABEL_135:
        v146 = v127 >> 8;
        if (v12 < 1)
        {
          goto LABEL_144;
        }

        goto LABEL_136;
      }
    }

    else
    {
      v126 = 0;
      v127 = 0;
    }

    v155 = v125 - v126;
    v156 = (v14 + 4 * v126);
    v157 = &LL_defaultNorm[v126];
    do
    {
      v159 = *v157++;
      v158 = v159;
      if (v159 == 0xFFFF)
      {
        v158 = 1;
      }

      v160 = *v156++;
      v127 += (kInverseProbabilityLog256[4 * (v158 & 0x3FFFFFFF)] * v160);
      --v155;
    }

    while (v155);
    goto LABEL_135;
  }

  if ((v119 & 0xFFFFFFFE) == 2)
  {
    v128 = v13[2144];
    if (v13[2144])
    {
      v129 = 1 << (v128 - 1);
    }

    else
    {
      v129 = 1;
    }

    if (v221 > v13[2145])
    {
LABEL_118:
      v139 = 10 * v12;
      goto LABEL_145;
    }

    v130 = 0;
    v131 = v221 + 1;
    v132 = &v13[2 * v129 + 2148];
    v133 = v14;
    do
    {
      v135 = *v132;
      v132 += 4;
      v134 = v135;
      v137 = *v133++;
      v136 = v137;
      if (v137)
      {
        v138 = ((HIWORD(v134) + 1) << 8) - ((((HIWORD(v134) + 1) << 24) - ((v134 + (1 << v128)) << 8)) >> v128);
        if (v138 >= (v128 << 8) + 256)
        {
          goto LABEL_118;
        }

        v130 += v136 * v138;
      }

      --v131;
    }

    while (v131);
    v146 = v130 >> 8;
    if (v12 < 1)
    {
      goto LABEL_144;
    }

    goto LABEL_136;
  }

LABEL_122:
  v146 = 0;
  if (v12 < 1)
  {
    goto LABEL_144;
  }

LABEL_136:
  v161 = v9 + v12;
  v162 = v9 + 1;
  if (v9 + v12 <= v9 + 1)
  {
    v161 = v9 + 1;
  }

  v163 = v161 - v9;
  if ((v161 - v9) > 1)
  {
    v164 = 0;
    v165 = v163 & 0xFFFFFFFFFFFFFFFELL;
    v166 = v163 & 0xFFFFFFFFFFFFFFFELL;
    do
    {
      v167 = *(v162 - 1);
      v168 = *v162;
      v162 += 2;
      v146 += LL_bits_36216[v167];
      v164 += LL_bits_36216[v168];
      v166 -= 2;
    }

    while (v166);
    v146 += v164;
    if (v163 == v165)
    {
      goto LABEL_144;
    }

    v9 = (v9 + v165);
  }

  do
  {
    v169 = *v9;
    v9 = (v9 + 1);
    v146 += LL_bits_36216[v169];
  }

  while (v9 < v120);
LABEL_144:
  v139 = v146 >> 3;
LABEL_145:
  v170 = *(a2 + 5064);
  v171 = (v7 + v12);
  v221 = 52;
  if (v12 > 0x5DB)
  {
    if ((v14 & 3) != 0)
    {
      goto LABEL_156;
    }

    v190 = v13;
    HIST_count_parallel_wksp(v14, &v221, v7, v12, 0, v14);
    v13 = v190;
    if (v170 == 1)
    {
      goto LABEL_177;
    }
  }

  else
  {
    *(v14 + 208) = 0;
    *(v14 + 176) = 0u;
    *(v14 + 192) = 0u;
    *(v14 + 144) = 0u;
    *(v14 + 160) = 0u;
    *(v14 + 112) = 0u;
    *(v14 + 128) = 0u;
    *(v14 + 80) = 0u;
    *(v14 + 96) = 0u;
    *(v14 + 48) = 0u;
    *(v14 + 64) = 0u;
    *(v14 + 16) = 0u;
    *(v14 + 32) = 0u;
    *v14 = 0u;
    if (v10 != v11)
    {
      v172 = v7;
      do
      {
        v173 = *v172;
        v172 = (v172 + 1);
        ++*(v14 + 4 * v173);
      }

      while (v172 < v171);
      LODWORD(v174) = 53;
      do
      {
        v174 = (v174 - 1);
      }

      while (!*(v14 + 4 * v174));
      v221 = v174;
      if (v174 >= 7)
      {
        v175 = (v174 + 1) & 0x1FFFFFFF8;
        do
        {
          v175 -= 8;
        }

        while (v175);
      }

LABEL_156:
      if (v170 != 1)
      {
        goto LABEL_157;
      }

LABEL_177:
      v191 = 0;
      if (v12 < 1)
      {
        goto LABEL_199;
      }

      goto LABEL_191;
    }

    v221 = 0;
    if (v170 == 1)
    {
      goto LABEL_177;
    }
  }

LABEL_157:
  if (!v170)
  {
    if (v221 + 1 > 1)
    {
      v176 = v221 + 1;
    }

    else
    {
      v176 = 1;
    }

    if (v221 + 1 >= 2)
    {
      v192 = 0;
      v193 = 0;
      v177 = v176 & 0xFFFFFFFE;
      v194 = (v14 + 4);
      v195 = &word_182B0C3E0;
      v196 = v177;
      do
      {
        v197 = *(v195 - 1);
        v199 = *v195;
        v195 += 2;
        v198 = v199;
        if (v197 == 0xFFFF)
        {
          LOWORD(v197) = 1;
        }

        if (v198 == 0xFFFF)
        {
          LOWORD(v198) = 1;
        }

        v192 += (kInverseProbabilityLog256[4 * (v197 & 0x3FFFFFFF)] * *(v194 - 1));
        v193 += (kInverseProbabilityLog256[4 * (v198 & 0x3FFFFFFF)] * *v194);
        v194 += 2;
        v196 -= 2;
      }

      while (v196);
      v178 = v193 + v192;
      if (v177 == v176)
      {
LABEL_190:
        v191 = v178 >> 8;
        if (v12 < 1)
        {
          goto LABEL_199;
        }

        goto LABEL_191;
      }
    }

    else
    {
      v177 = 0;
      v178 = 0;
    }

    v200 = v176 - v177;
    v201 = (v14 + 4 * v177);
    v202 = &ML_defaultNorm[v177];
    do
    {
      v204 = *v202++;
      v203 = v204;
      if (v204 == 0xFFFF)
      {
        v203 = 1;
      }

      v205 = *v201++;
      v178 += (kInverseProbabilityLog256[4 * (v203 & 0x3FFFFFFF)] * v205);
      --v200;
    }

    while (v200);
    goto LABEL_190;
  }

  if ((v170 & 0xFFFFFFFE) != 2)
  {
    goto LABEL_177;
  }

  v179 = v13[1418];
  if (v13[1418])
  {
    v180 = 1 << (v179 - 1);
  }

  else
  {
    v180 = 1;
  }

  if (v221 <= v13[1419])
  {
    v181 = 0;
    v182 = v221 + 1;
    v183 = &v13[2 * v180 + 1422];
    do
    {
      v185 = *v183;
      v183 += 4;
      v184 = v185;
      v187 = *v14;
      v14 += 4;
      v186 = v187;
      if (v187)
      {
        v188 = ((HIWORD(v184) + 1) << 8) - ((((HIWORD(v184) + 1) << 24) - ((v184 + (1 << v179)) << 8)) >> v179);
        if (v188 >= (v179 << 8) + 256)
        {
          goto LABEL_173;
        }

        v181 += v186 * v188;
      }

      --v182;
    }

    while (v182);
    v191 = v181 >> 8;
    if (v12 < 1)
    {
      goto LABEL_199;
    }

LABEL_191:
    v206 = v7 + v12;
    v207 = v7 + 1;
    if (v7 + v12 <= v7 + 1)
    {
      v206 = v7 + 1;
    }

    v208 = v206 - v7;
    if ((v206 - v7) > 1)
    {
      v209 = 0;
      v210 = v208 & 0xFFFFFFFFFFFFFFFELL;
      v211 = v208 & 0xFFFFFFFFFFFFFFFELL;
      do
      {
        v212 = *(v207 - 1);
        v213 = *v207;
        v207 += 2;
        v191 += ML_bits_36218[v212];
        v209 += ML_bits_36218[v213];
        v211 -= 2;
      }

      while (v211);
      v191 += v209;
      if (v208 == v210)
      {
        goto LABEL_199;
      }

      v7 = (v7 + v210);
    }

    do
    {
      v214 = *v7;
      v7 = (v7 + 1);
      v191 += ML_bits_36218[v214];
    }

    while (v7 < v171);
LABEL_199:
    v189 = v191 >> 3;
    goto LABEL_200;
  }

LABEL_173:
  v189 = 10 * v12;
LABEL_200:
  v215 = 2;
  if (v12 > 0x7F)
  {
    v215 = 3;
  }

  v216 = 3;
  if (v12 >> 8 > 0x7E)
  {
    v216 = 4;
  }

  return v216 + v215 + v6 + v69 + v139 + *(a2 + 5208) + v189;
}

unint64_t ZSTD_buildBlockEntropyStats(void *a1, _DWORD *__src, void *__dst, _DWORD *a4, uint64_t a5, uint32x4_t *a6)
{
  v13 = a1[2];
  v12 = a1[3];
  v14 = a4[7];
  v15 = v14 > 7;
  v16 = a4[18];
  if (v16 == 1)
  {
    goto LABEL_8;
  }

  if (v16 == 2)
  {
    goto LABEL_3;
  }

  if (v14 != 1)
  {
LABEL_8:
    v19 = __src + 514;
    v37 = __src[514];
    LODWORD(v38) = 255;
    memcpy(__dst, __src, 0x810uLL);
  }

  else
  {
    v18 = a4[6];
    v37 = __src[514];
    LODWORD(v38) = 255;
    memcpy(__dst, __src, 0x810uLL);
    if (v18)
    {
      goto LABEL_26;
    }

    v19 = __src + 514;
  }

  v20 = v12 - v13;
  v21 = 63;
  if (*v19 == 2)
  {
    v21 = 6;
  }

  if (v21 >= v20)
  {
    goto LABEL_26;
  }

  result = HIST_count_wksp(a6, &v38, v13, v20, a6->i8);
  if (result > 0xFFFFFFFFFFFFFF88)
  {
LABEL_36:
    *(a5 + 136) = result;
    return result;
  }

  if (result == v20)
  {
    v17 = 1;
    goto LABEL_27;
  }

  if (result <= (v20 >> 7) + 4)
  {
LABEL_26:
    v17 = 0;
    goto LABEL_27;
  }

  v23 = 2 * v15;
  v24 = v37;
  v25 = v38;
  if (v37 == 1)
  {
    v24 = HUF_validateCTable(__src, a6, v38);
  }

  bzero(__dst, 0x808uLL);
  v26 = HUF_optimalTableLog(11, v20, v25, a6[64].i64, 0x1ED8uLL, __dst, a6, v23);
  result = HUF_buildCTable_wksp(__dst, a6, v25, v26, a6[64].i64, 0x1ED8uLL);
  if (result > 0xFFFFFFFFFFFFFF88)
  {
    goto LABEL_36;
  }

  v27 = result;
  v28 = HUF_estimateCompressedSize(__dst, a6, v25);
  v29 = v27;
  v30 = v28;
  result = HUF_writeCTable_wksp((a5 + 4), 0x80uLL, __dst, v25, v29, a6[64].i64, 0x1ED8uLL);
  if (v24)
  {
    v31 = result;
    v32 = HUF_estimateCompressedSize(__src, a6, v25);
    result = v31;
    if (v32 < v20)
    {
      v17 = 3;
      if (result + 12 >= v20 || v32 <= result + v30)
      {
        goto LABEL_4;
      }
    }
  }

  if (result + v30 >= v20)
  {
LABEL_3:
    v17 = 0;
LABEL_4:
    memcpy(__dst, __src, 0x810uLL);
LABEL_27:
    *a5 = v17;
    *(a5 + 136) = 0;
    goto LABEL_28;
  }

  *a5 = 2;
  *(__dst + 514) = 1;
  *(a5 + 136) = result;
  if (result > 0xFFFFFFFFFFFFFF88)
  {
    return result;
  }

LABEL_28:
  v33 = a1[1] - *a1;
  if (v33)
  {
    ZSTD_buildSequencesStatistics(&v38, a1, v33 >> 3, (__src + 516), __dst + 2064, (a5 + 156), a5 + 289, a4[7], a6, a6[13].i64 + 4);
    v33 = v40;
    if (v40 > 0xFFFFFFFFFFFFFF88)
    {
      goto LABEL_33;
    }

    v34 = v38;
    v35 = v39;
    v36 = v41;
  }

  else
  {
    v36 = 0;
    v35 = 0;
    *(__dst + 1401) = 0;
    v34 = 0;
    *(__dst + 701) = 0;
  }

  *(a5 + 144) = v34;
  *(a5 + 152) = v35;
  *(a5 + 304) = v36;
LABEL_33:
  *(a5 + 296) = v33;
  if (v33 >= 0xFFFFFFFFFFFFFF89)
  {
    return v33;
  }

  else
  {
    return 0;
  }
}

uint64_t ZSTD_copySequencesToSeqStoreExplicitBlockDelim(uint64_t a1, unsigned int *a2, uint64_t a3, unint64_t a4, char *__src, uint64_t a6, int a7)
{
  v7 = __src;
  v9 = *a2;
  v10 = *(a1 + 3696);
  if (v10)
  {
    v11 = (v10 + 8);
LABEL_5:
    v12 = *v11;
    goto LABEL_6;
  }

  v12 = *(a1 + 3704);
  if (v12)
  {
    v11 = (a1 + 3712);
    goto LABEL_5;
  }

LABEL_6:
  v13 = &__src[a6];
  v14 = *(a1 + 3200);
  *v69 = *(v14 + 5616);
  *&v69[8] = *(v14 + 5624);
  if (v9 >= a4)
  {
    v19 = v9;
    v21 = v9;
    goto LABEL_87;
  }

  v15 = v13 - 32;
  v16 = *v69;
  v17 = *&v69[4];
  v18 = *&v69[8];
  v19 = v9;
  v20 = v9;
  while (1)
  {
    v22 = (a3 + 16 * v19);
    v23 = v22[2];
    if (!v23 && !*v22)
    {
      break;
    }

    v24 = v22[1];
    if (a7 == 2)
    {
      v25 = *v22 + 3;
      goto LABEL_29;
    }

    v26 = *v22;
    if (v24)
    {
      v27 = v16 == v26;
    }

    else
    {
      v27 = 0;
    }

    if (v27)
    {
      v25 = 1;
    }

    else if (v17 == v26)
    {
      if (v24)
      {
        v25 = 2;
      }

      else
      {
        v25 = 1;
      }
    }

    else if (v18 == v26)
    {
      if (v24)
      {
        v25 = 3;
      }

      else
      {
        v25 = 2;
      }
    }

    else if (v24 || v16 - 1 != v26)
    {
      v25 = v26 + 3;
      if (v26 != 0 && v26 < 0xFFFFFFFD)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v25 = 3;
    }

    v28 = v25 - (v24 != 0);
    switch(v28)
    {
      case 0u:
        goto LABEL_29;
      case 3u:
        v26 = v16 - 1;
        break;
      case 1u:
        v17 = v18;
        break;
      default:
        v26 = *&v69[4 * v28];
        break;
    }

LABEL_28:
    *&v69[4] = v16;
    *&v69[8] = v17;
    v18 = v17;
    v17 = v16;
    v16 = v26;
    *v69 = v26;
LABEL_29:
    if (*(a1 + 368))
    {
      v29 = *(a2 + 1) + (v24 + v23);
      *(a2 + 1) = v29;
      v30 = v29 <= 1 << *(a1 + 236) ? v29 + v12 : 1 << *(a1 + 236);
      if (v30 + 3 < v25)
      {
        return -107;
      }

      v31 = *(a1 + 252) != 3 && *(a1 + 424) == 0;
      v32 = v31 ? 4 : 3;
      if (v32 > v23)
      {
        return -107;
      }
    }

    if (*(a1 + 1008) <= (v20 - *a2))
    {
      return -107;
    }

    v33 = &v7[v24];
    v34 = *(a1 + 976);
    if (&v7[v24] > v15)
    {
      if (v7 <= v15)
      {
        v36 = v34 + v15 - v7;
        *v34 = *v7;
        if (v15 - v7 >= 17)
        {
          v39 = (v34 + 1);
          v40 = (v7 + 32);
          do
          {
            *v39 = *(v40 - 1);
            v41 = *v40;
            v40 += 2;
            *(v39 + 1) = v41;
            v39 += 32;
          }

          while (v39 < v36);
        }

        v35 = v13 - 32;
        if (v15 >= v33)
        {
          goto LABEL_82;
        }
      }

      else
      {
        v35 = v7;
        v36 = *(a1 + 976);
        if (v7 >= v33)
        {
          goto LABEL_82;
        }
      }

      v42 = v33 - v35;
      if ((v33 - v35) < 8)
      {
        v48 = v36;
      }

      else if ((v36 - v35) < 0x20)
      {
        v48 = v36;
      }

      else
      {
        if (v42 < 0x20)
        {
          v43 = 0;
LABEL_73:
          v53 = v42 & 0xFFFFFFFFFFFFFFF8;
          v48 = &v36[v42 & 0xFFFFFFFFFFFFFFF8];
          v54 = v43 - (v42 & 0xFFFFFFFFFFFFFFF8);
          v55 = &v35[v43];
          v56 = &v36[v43];
          do
          {
            v57 = *v55;
            v55 += 8;
            *v56 = v57;
            v56 += 8;
            v54 += 8;
          }

          while (v54);
          if (v42 != v53)
          {
            v35 += v53;
            goto LABEL_81;
          }

LABEL_82:
          *(a1 + 976) += v24;
          v38 = *(a1 + 960);
          if (v24 >= 0x10000)
          {
            *(a1 + 1024) = 1;
            *(a1 + 1028) = (v38 - *(a1 + 952)) >> 3;
          }

          goto LABEL_84;
        }

        v43 = v42 & 0xFFFFFFFFFFFFFFE0;
        v49 = (v35 + 16);
        v50 = v36 + 16;
        v51 = v42 & 0xFFFFFFFFFFFFFFE0;
        do
        {
          v52 = *v49;
          *(v50 - 1) = *(v49 - 1);
          *v50 = v52;
          v49 += 2;
          v50 += 2;
          v51 -= 32;
        }

        while (v51);
        if (v42 == v43)
        {
          goto LABEL_82;
        }

        if ((v42 & 0x18) != 0)
        {
          goto LABEL_73;
        }

        v35 += v43;
        v48 = &v36[v43];
      }

      do
      {
LABEL_81:
        v58 = *v35++;
        *v48++ = v58;
      }

      while (v35 != v33);
      goto LABEL_82;
    }

    *v34 = *v7;
    if (v24 >= 0x11)
    {
      v37 = *(a1 + 976);
      *(v37 + 16) = *(v7 + 1);
      if ((v24 - 16) >= 0x11)
      {
        v44 = v37 + v24;
        v45 = (v37 + 32);
        v46 = (v7 + 48);
        do
        {
          *v45 = *(v46 - 1);
          v47 = *v46;
          v46 += 2;
          v45[1] = v47;
          v45 += 2;
        }

        while (v45 < v44);
        goto LABEL_82;
      }
    }

    *(a1 + 976) += v24;
    v38 = *(a1 + 960);
LABEL_84:
    *(v38 + 4) = v24;
    *v38 = v25;
    if (v23 - 3 >= 0x10000)
    {
      *(a1 + 1024) = 2;
      *(a1 + 1028) = (v38 - *(a1 + 952)) >> 3;
    }

    *(v38 + 6) = v23 - 3;
    *(a1 + 960) = v38 + 8;
    v7 += (v24 + v23);
    v19 = (v20 + 1);
    v20 = v19;
    v21 = v19;
    if (v19 >= a4)
    {
      goto LABEL_93;
    }
  }

  v21 = v20;
LABEL_93:
  if (a7 == 2 && v21 != v9)
  {
    v67 = v9 + 2;
    if (v21 - 1 >= v67)
    {
      v68 = *(a3 + 16 * (v21 - 3));
LABEL_99:
      *&v69[4] = *(a3 + 16 * (v21 - 2));
      *&v69[8] = v68;
    }

    else
    {
      if (v21 == v67)
      {
        v68 = *v69;
        goto LABEL_99;
      }

      *&v69[4] = *v69;
    }

    *v69 = *(a3 + 16 * (v21 - 1));
  }

LABEL_87:
  v59 = *(a1 + 3208);
  *(v59 + 5616) = *v69;
  *(v59 + 5624) = *&v69[8];
  v60 = a3 + 16 * v19;
  v63 = *(v60 + 4);
  v62 = (v60 + 4);
  v61 = v63;
  if (v63)
  {
    memcpy(*(a1 + 976), v7, v61);
    *(a1 + 976) += v61;
    v65 = *v62;
    v7 += v65;
    *(a2 + 1) += v65;
  }

  if (v7 != v13)
  {
    return -107;
  }

  result = 0;
  *a2 = v21 + 1;
  return result;
}

uint64_t ZSTD_compress_insertDictionary(uint64_t a1, uint32x2_t *a2, uint64_t a3, void *a4, _DWORD *a5, unint64_t a6, unint64_t a7, int a8, int a9, int a10, _WORD *a11)
{
  v120 = *MEMORY[0x1E69E9840];
  if (a6 && a7 > 7)
  {
    *(a1 + 5624) = 8;
    *(a1 + 5616) = 0x400000001;
    *(a1 + 2056) = 0;
    *(a1 + 5604) = 0;
    *(a1 + 5608) = 0;
    if (a8 == 1)
    {
LABEL_4:
      ZSTD_loadDictionaryContent(a2, a3, a4, a5, a6, a7, a9, a10);
      return 0;
    }

    if (*a6 != -332356553)
    {
      if (a8 == 2)
      {
        return -32;
      }

      if (!a8)
      {
        goto LABEL_4;
      }
    }

    if (a5[10])
    {
      v15 = 0;
    }

    else
    {
      v15 = *(a6 + 4);
    }

    v103 = 31;
    v17 = a6 + 8;
    *(a1 + 2056) = 1;
    v104 = 0;
    v20 = HUF_readStats_wksp(v111, v110, &v104, &v104 + 1, (a6 + 8), a7 - 8, &v112);
    if (v20 >= 0xFFFFFFFFFFFFFF89)
    {
      return -30;
    }

    v23 = v110[0];
    v24 = HIDWORD(v104);
    if (HIDWORD(v104) > 0xC)
    {
      v20 = -44;
      v25 = 1;
      v26 = a7;
      v27 = a6;
      v28 = a1;
      goto LABEL_52;
    }

    v29 = v104;
    v26 = a7;
    v27 = a6;
    v28 = a1;
    if (v104 > 0x100)
    {
      v20 = -48;
      v25 = 1;
LABEL_52:
      if (!v23 && v25)
      {
        *(v28 + 2056) = 2;
      }

      if (v20 <= 0xFFFFFFFFFFFFFF88)
      {
        v78 = v27 + v26;
        v79 = v17 + v20;
        v112.i32[0] = 0;
        v80 = FSE_readNCount_bmi2(v105, &v103, &v112, (v17 + v20), v27 + v26 - (v17 + v20));
        if (v80 <= 0xFFFFFFFFFFFFFF88 && v112.i32[0] < 9u)
        {
          v81 = v80;
          if (FSE_buildCTable_wksp((a1 + 2064), v105, 31, v112.i32[0], a11, 0x2200uLL) <= 0xFFFFFFFFFFFFFF88)
          {
            v82 = (v79 + v81);
            v111[0] = 52;
            v110[0] = 0;
            v83 = FSE_readNCount_bmi2(&v112, v111, v110, v82, v78 - v82);
            if (v83 <= 0xFFFFFFFFFFFFFF88 && v110[0] <= 9u)
            {
              v84 = v83;
              v101 = v111[0];
              if (FSE_buildCTable_wksp((a1 + 2836), &v112, v111[0], v110[0], a11, 0x2200uLL) <= 0xFFFFFFFFFFFFFF88)
              {
                v85 = (v101 < 0x34) | vmaxv_u16(vceqz_s16(v118)) & 1 | (v119 == 0) | (vmaxvq_u8(vorrq_s8(vuzp1q_s8(vceqzq_s16(v112), vceqzq_s16(v113)), vuzp1q_s8(vceqzq_s16(v114), vceqzq_s16(v115)))) | vmaxvq_u8(vuzp1q_s8(vceqzq_s16(v116), vceqzq_s16(v117)))) & 1 ? 1 : 2;
                *(a1 + 5608) = v85;
                v86 = (v82 + v84);
                v111[0] = 35;
                v110[0] = 0;
                v87 = FSE_readNCount_bmi2(&v112, v111, v110, v86, v78 - v86);
                if (v87 < 0xFFFFFFFFFFFFFF89 && v110[0] <= 9u)
                {
                  v88 = v87;
                  v102 = v111[0];
                  if (FSE_buildCTable_wksp((a1 + 4288), &v112, v111[0], v110[0], a11, 0x2200uLL) <= 0xFFFFFFFFFFFFFF88)
                  {
                    v89 = (v102 < 0x23) | (vmaxvq_u8(vorrq_s8(vuzp1q_s8(vceqzq_s16(v112), vceqzq_s16(v113)), vuzp1q_s8(vceqzq_s16(v114), vceqzq_s16(v115)))) | vmaxv_u16(vceqz_s16(*v116.i8))) & 1 ? 1 : 2;
                    *(a1 + 5612) = v89;
                    v90 = (v86 + v88);
                    v91 = v86 + v88 + 12;
                    if (v91 <= v78)
                    {
                      v92 = *v90;
                      *(a1 + 5616) = v92;
                      v93 = v90[1];
                      *(a1 + 5620) = v93;
                      v94 = v90[2];
                      *(a1 + 5624) = v94;
                      v95 = v78 - v91;
                      LODWORD(v96) = __clz(v78 - v91 + 0x20000) ^ 0x1F;
                      if (v78 - v91 >= 0xFFFE0000)
                      {
                        v96 = 31;
                      }

                      else
                      {
                        v96 = v96;
                      }

                      if (v103 >= v96)
                      {
                        v98 = v96 + 1;
                        v99 = v105;
                        while (*v99++)
                        {
                          if (!--v98)
                          {
                            v97 = 2;
                            goto LABEL_83;
                          }
                        }
                      }

                      v97 = 1;
LABEL_83:
                      *(a1 + 5604) = v97;
                      if (v92)
                      {
                        if (v95 >= v92 && v93 && v95 >= v93 && v94 && v95 >= v94)
                        {
                          result = v91 - a6;
                          if (v91 - a6 <= 0xFFFFFFFFFFFFFF88)
                          {
                            ZSTD_loadDictionaryContent(a2, 0, a4, a5, v91, a7 - result, a9, a10);
                            return v15;
                          }

                          return result;
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }

      return -30;
    }

    v30 = (a1 + 8);
    *a1 = BYTE4(v104);
    v31 = v29 - 1;
    *(a1 + 1) = v29 - 1;
    *(a1 + 2) = 0;
    *(a1 + 6) = 0;
    if (v24)
    {
      v32 = 0;
      v33 = 0;
      do
      {
        v34 = v110[v32 + 1] << v32;
        v110[v32 + 1] = v33;
        v33 += v34;
        ++v32;
      }

      while (v24 != v32);
    }

    if (!v29)
    {
      v112 = 0uLL;
      v113.i32[2] = 0;
      v113.i64[0] = 0;
      v106 = 0;
      v107 = 0;
      v109 = 0;
      v108 = 0;
LABEL_43:
      *(&v106 + v24 + 1) = 0;
      if (v24)
      {
        v71 = 0;
        v72 = &v112.i16[v24];
        v73 = &v106 + v24;
        do
        {
          *v73-- = v71;
          v74 = *v72--;
          v71 = (v74 + v71) >> 1;
          LODWORD(v24) = v24 - 1;
        }

        while (v24);
      }

      if (v29)
      {
        do
        {
          v75 = *v30;
          v76 = *v30;
          v77 = *(&v106 + v76);
          *(&v106 + v76) = v77 + 1;
          if (v76)
          {
            *v30 = (v77 << -v76) | v75;
          }

          ++v30;
          --v29;
        }

        while (v29);
      }

      v25 = v31 == 255;
      goto LABEL_52;
    }

    v35 = v24 + 1;
    if (v29 <= 3)
    {
      v36 = 0;
      goto LABEL_36;
    }

    if (v29 >= 0x10)
    {
      v36 = v29 & 0x1F0;
      v21 = vdupq_n_s8(v35);
      v37 = v111;
      v38 = (a1 + 8);
      v39 = v36;
      do
      {
        v40 = *v37++;
        v41 = vbicq_s8(vsubq_s8(v21, v40), vceqzq_s8(v40));
        v42 = vmovl_u8(*v41.i8);
        v43 = vmovl_u16(*v42.i8);
        v44.i64[0] = v43.u32[0];
        v44.i64[1] = v43.u32[1];
        v45 = v44;
        v46 = vmovl_high_u16(v42);
        v44.i64[0] = v46.u32[0];
        v44.i64[1] = v46.u32[1];
        v47 = v44;
        v48 = vmovl_high_u8(v41);
        v49 = vmovl_high_u16(v48);
        v44.i64[0] = v49.u32[0];
        v44.i64[1] = v49.u32[1];
        v50 = v44;
        v44.i64[0] = v49.u32[2];
        v44.i64[1] = v49.u32[3];
        v38[6] = v50;
        v38[7] = v44;
        v51 = vmovl_u16(*v48.i8);
        v44.i64[0] = v51.u32[0];
        v44.i64[1] = v51.u32[1];
        v52 = v44;
        v44.i64[0] = v46.u32[2];
        v44.i64[1] = v46.u32[3];
        v22 = v44;
        v44.i64[0] = v51.u32[2];
        v44.i64[1] = v51.u32[3];
        v38[4] = v52;
        v38[5] = v44;
        v38[2] = v47;
        v38[3] = v22;
        v44.i64[0] = v43.u32[2];
        v44.i64[1] = v43.u32[3];
        *v38 = v45;
        v38[1] = v44;
        v38 += 8;
        v39 -= 16;
      }

      while (v39);
      if (v36 == v29)
      {
        goto LABEL_41;
      }

      if ((v29 & 0xC) == 0)
      {
        goto LABEL_36;
      }
    }

    else
    {
      v36 = 0;
    }

    v53 = v36;
    v36 = v29 & 0x1FC;
    *v21.i8 = vdup_n_s16(v35);
    v54 = v53 - v36;
    v55 = (a1 + 8 * v53 + 8);
    v56 = (v111 + v53);
    v57.i64[0] = 255;
    v57.i64[1] = 255;
    do
    {
      v58 = *v56++;
      v22.i32[0] = v58;
      v59 = vmovl_u16(vbic_s8(*&vsubw_u8(v21, *v22.i8), vceqz_s16(*&vmovl_u8(*v22.i8))));
      v60.i64[0] = v59.u32[0];
      v60.i64[1] = v59.u32[1];
      v61 = vandq_s8(v60, v57);
      v60.i64[0] = v59.u32[2];
      v60.i64[1] = v59.u32[3];
      v22 = vandq_s8(v60, v57);
      *v55 = v61;
      v55[1] = v22;
      v55 += 2;
      v54 += 4;
    }

    while (v54);
    if (v36 != v29)
    {
LABEL_36:
      v62 = v29 - v36;
      v63 = (a1 + 8 * v36 + 8);
      v64 = v111 + v36;
      do
      {
        v65 = *v64++;
        v66 = v35 - v65;
        if (v65)
        {
          v67 = v66;
        }

        else
        {
          v67 = 0;
        }

        *v63++ = v67;
        --v62;
      }

      while (v62);
    }

LABEL_41:
    v112 = 0uLL;
    v113.i32[2] = 0;
    v113.i64[0] = 0;
    v106 = 0;
    v107 = 0;
    v109 = 0;
    v68 = (a1 + 8);
    v69 = v29;
    v108 = 0;
    do
    {
      v70 = *v68;
      v68 += 8;
      ++v112.i16[v70];
      --v69;
    }

    while (v69);
    goto LABEL_43;
  }

  if (a8 == 2)
  {
    return -32;
  }

  else
  {
    return 0;
  }
}

void ZSTD_loadDictionaryContent(uint32x2_t *a1, uint64_t a2, void *a3, _DWORD *a4, unint64_t a5, unint64_t a6, int a7, int a8)
{
  v8 = a4;
  v10 = a1;
  v11 = (a5 + a6);
  if (a2)
  {
    v12 = a4[24] == 1;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;
  v14 = a4[7];
  v15 = -3758096382;
  if (a8 == 1 && v14 - 1 < 2)
  {
    v15 = -16777214;
  }

  v16 = 3758096382;
  if (a8 == 1 && v14 - 1 < 2)
  {
    v16 = 16777214;
  }

  v17 = &v11[v15];
  if (v16 >= a6)
  {
    v18 = a6;
  }

  else
  {
    v18 = v16;
  }

  if (v16 >= a6)
  {
    v19 = a5;
  }

  else
  {
    v19 = v17;
  }

  if (!a6)
  {
    if ((v13 & 1) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_42;
  }

  v20 = *a1;
  if (*a1 == v19)
  {
    v21 = a1[2];
    v22 = a1[3].u32[0];
    v23 = a1[3].u32[1];
  }

  else
  {
    v21 = a1[1];
    v22 = v20.i32[0] - v21.i32[0];
    v23 = a1[3].u32[0];
    a1[3].i32[0] = v20.i32[0] - v21.i32[0];
    a1[3].i32[1] = v23;
    a1[1] = (v19 - (*&v20 - *&v21));
    a1[2] = v21;
    if (v20.i32[0] - v21.i32[0] - v23 <= 7)
    {
      a1[3].i32[1] = v22;
      v23 = v20.i32[0] - v21.i32[0];
    }
  }

  v24 = v19 + v18;
  *a1 = (v19 + v18);
  if (v19 + v18 > *&v21 + v23 && *&v21 + v22 > v19)
  {
    v26 = v24 - *&v21;
    if (v26 > v22)
    {
      LODWORD(v26) = v22;
    }

    a1[3].i32[1] = v26;
  }

  if (v13)
  {
    if (*a2 == v19)
    {
      v27 = *(a2 + 16);
      LODWORD(v28) = *(a2 + 24);
      v29 = *(a2 + 28);
    }

    else
    {
      v27 = *(a2 + 8);
      v28 = *a2 - v27;
      v29 = *(a2 + 24);
      *(a2 + 24) = v28;
      *(a2 + 28) = v29;
      *(a2 + 8) = v19 - v28;
      *(a2 + 16) = v27;
      if (v28 - v29 <= 7)
      {
        *(a2 + 28) = v28;
        v29 = v28;
      }
    }

    *a2 = v24;
    if (v24 > v27 + v29 && v27 + v28 > v19)
    {
      v30 = v24 - v27;
      if (v30 > v28)
      {
        LODWORD(v30) = v28;
      }

      *(a2 + 28) = v30;
    }

LABEL_42:
    v164 = *(a2 + 8);
    if (v8[12])
    {
      v31 = 0;
    }

    else
    {
      v31 = v11 - v164;
    }

    *(a2 + 48) = v31;
    v32 = v8[25];
    v33 = v8[26];
    v35 = v8[27];
    v34 = v8[28];
    if (v35 >= 0x40)
    {
      v36 = 64;
    }

    else
    {
      v36 = v8[27];
    }

    v37 = v34 - 1;
    v38 = ~(-1 << v34);
    v39 = v36 - v34;
    if (v37 >= v36)
    {
      v39 = 0;
    }

    v166[0] = 0xFFFFFFFFLL;
    v166[1] = v38 << v39;
    if (v19 < v11)
    {
      v155 = v18;
      v156 = v19;
      v157 = a7;
      v158 = a8;
      v160 = a3;
      v161 = (a5 + a6);
      v162 = a2 + 64;
      v40 = v19 + v35;
      v41 = ~(-1 << (v32 - v33));
      v42 = v19;
      do
      {
        v165 = 0;
        v163 = ZSTD_ldm_gear_feed(v166, v42, &v11[-v42], v162, &v165);
        v43 = v165;
        if (v165)
        {
          v44 = v162;
          do
          {
            v45 = *v44++;
            v46 = v42 + v45;
            if (v42 + v45 >= v40)
            {
              v47 = v8;
              v48 = v46 - v35;
              v49 = ZSTD_XXH64((v46 - v35), v35);
              v50 = (v48 - v164);
              v8 = v47;
              v51 = v47[26];
              v52 = *(a2 + 56);
              v53 = *(v52 + (v49 & v41));
              *(*(a2 + 40) + 8 * ((v49 & v41) << v51) + 8 * v53) = v49 & 0xFFFFFFFF00000000 | v50;
              *(v52 + (v49 & v41)) = (v53 + 1) & ~(-1 << v51);
            }

            --v43;
          }

          while (v43);
        }

        v42 += v163;
        v11 = v161;
      }

      while (v42 < v161);
      v14 = v8[7];
      v10 = a1;
      a3 = v160;
      a7 = v157;
      a8 = v158;
      v18 = v155;
      LODWORD(v19) = v156;
    }
  }

LABEL_59:
  if (v14 <= 7)
  {
    v54 = v8[3];
    if (v54 <= v8[2])
    {
      v54 = v8[2];
    }

    if (v54 >= 0x1C)
    {
      LOBYTE(v54) = 28;
    }

    v55 = (8 << v54);
    if (v18 > v55)
    {
      LODWORD(v19) = v11 - v55;
    }

    if (v18 >= v55)
    {
      v18 = v55;
    }
  }

  v56 = v10[1].i32[0];
  v57 = v19 - v56;
  v58 = v11 - v56;
  if (v8[12])
  {
    v58 = 0;
  }

  v10[5].i32[0] = v58;
  v10[5].i32[1] = v57;
  v10[17].i32[0] = v8[37];
  if (v18 >= 9)
  {
    v59 = a7;
    v60 = a8;
    ZSTD_overflowCorrectIfNeeded(v10, a3, v8, v19, v11);
    v61 = v8[7];
    if (v61 > 5)
    {
      if ((v61 - 6) < 4)
      {
        v82 = v10[1];
        v83 = v11 - v82.i32[0] - 8;
        v84 = v10[5].u32[1];
        if (v84 < v83)
        {
          v85 = v10[34].i32[0];
          do
          {
            v84 += ZSTD_insertBt1(v10, (*&v82 + v84), v11, v83, v85, 0);
          }

          while (v84 < v83);
        }
      }

      goto LABEL_195;
    }

    if ((v61 - 3) >= 3)
    {
      if (v61 == 1)
      {
        ZSTD_fillHashTable(v10, v11, v59, v60);
      }

      else if (v61 == 2)
      {
        ZSTD_fillDoubleHashTable(v10, v11, v59, v60);
      }

      goto LABEL_195;
    }

    if (v10[17].i32[1])
    {
      v62 = v10[1];
      v63 = v11;
      v64 = v11 - v62.i32[0] - 8;
      v65 = 1 << v10[32].i32[1];
      v66 = v10[5].u32[1];
      if (v65 >= v64 - v66)
      {
        v67 = v10[5].u32[1];
      }

      else
      {
        v67 = v64 - v65;
      }

      v68 = (1 << v10[33].i32[1]) - 3;
      if (v68 >= 0xFF)
      {
        v69 = 255;
      }

      else
      {
        v69 = (1 << v10[33].i32[1]) - 3;
      }

      v70 = v10[33].i32[0];
      v71 = v70 - 2;
      v72 = 3 << (v70 - 2);
      v73 = v64 >= v72;
      v74 = v64 - v72;
      if (v74 != 0 && v73)
      {
        v75 = v74;
      }

      else
      {
        v75 = v66;
      }

      v76 = v10[14];
      v77 = v10[16];
      v78 = *&v76 + 4 * (1 << v71);
      if (v64 > v66)
      {
        do
        {
          v79 = v10[34].i32[0];
          if (v79 > 6)
          {
            if (v79 == 7)
            {
              v80 = 0xCF1BBCDCBFA56300 * *(*&v62 + v66);
              goto LABEL_96;
            }

            if (v79 == 8)
            {
              v80 = 0xCF1BBCDCB7A56463 * *(*&v62 + v66);
              goto LABEL_96;
            }
          }

          else
          {
            if (v79 == 5)
            {
              v80 = 0xCF1BBCDCBB000000 * *(*&v62 + v66);
              goto LABEL_96;
            }

            if (v79 == 6)
            {
              v80 = 0xCF1BBCDCBF9B0000 * *(*&v62 + v66);
LABEL_96:
              v81 = v80 >> (66 - v70);
              goto LABEL_97;
            }
          }

          LODWORD(v81) = (-1640531535 * *(*&v62 + v66)) >> (34 - v70);
LABEL_97:
          if (v66 >= v75)
          {
            *(v78 + 4 * (v66 - v75)) = *(*&v76 + 4 * v81);
          }

          *(*&v76 + 4 * v81) = v66++;
        }

        while (v64 != v66);
      }

      v86 = 0;
      v87 = 0;
      v88 = (1 << v71);
      if (v69 <= 1)
      {
        v69 = 1;
      }

      while (2)
      {
        v90 = *(*&v76 + 4 * v86);
        if (v90 < v75)
        {
          goto LABEL_118;
        }

        v91 = *(v78 + 4 * (v90 - v75));
        if (v91 < v75)
        {
          goto LABEL_118;
        }

        v92 = *(v78 + 4 * (v91 - v75));
        if (v92 < v75 || v68 == 0)
        {
          goto LABEL_118;
        }

        v95 = 0;
        v96 = v91 < v67;
        if (v90 >= v67)
        {
          v97 = v96;
        }

        else
        {
          v97 = v96 + 1;
        }

        if (v92 < v67)
        {
          ++v97;
        }

        while (1)
        {
          v92 = *(v78 + 4 * (v92 - v75));
          if (v92 < v67)
          {
            break;
          }

LABEL_131:
          v94 = (v87 + 1);
          *(*&v77 + 4 * v87) = v92;
          v99 = v95 + 1;
          if (v92 < v75)
          {
            v89 = v99 + ((v87 - v95) << 8);
            goto LABEL_110;
          }

          v87 = (v87 + 1);
          ++v95;
          if (v69 == v99)
          {
            v89 = v69 | ((v94 - v69) << 8);
            goto LABEL_110;
          }
        }

        if (v92)
        {
          v98 = v97 > 2;
        }

        else
        {
          v98 = 1;
        }

        if (!v98)
        {
          ++v97;
          goto LABEL_131;
        }

        if (v95)
        {
          v89 = v95 + ((v87 - v95) << 8);
          goto LABEL_119;
        }

LABEL_118:
        v89 = 0;
LABEL_119:
        v94 = v87;
LABEL_110:
        *(*&v76 + 4 * v86++) = v89;
        v87 = v94;
        if (v86 != v88)
        {
          continue;
        }

        break;
      }

      v100 = (4 << v71) - 4;
      v101 = 4 * v88 - 1;
      v102 = (*&v76 + 4 * (v88 - 1));
      do
      {
        v103 = *&v76 + 4 * v100;
        v104 = *v102--;
        *(v103 + 8) = 0;
        *v103 = 0;
        *(*&v76 + 4 * v101) = v104;
        v100 -= 4;
        v101 -= 4;
        LODWORD(v88) = v88 - 1;
      }

      while (v88);
      v105 = v10[5].u32[1];
      LODWORD(v11) = v63;
      if (v105 < v64)
      {
        v106 = 66 - v70;
        v107 = 34 - v70;
        while (1)
        {
          v111 = v10[34].i32[0];
          if (v111 > 6)
          {
            if (v111 == 7)
            {
              v108 = 0xCF1BBCDCBFA56300 * *(*&v62 + v105);
            }

            else
            {
              if (v111 != 8)
              {
LABEL_150:
                LODWORD(v109) = (-1640531535 * *(*&v62 + v105)) >> v107;
                goto LABEL_142;
              }

              v108 = 0xCF1BBCDCB7A56463 * *(*&v62 + v105);
            }
          }

          else if (v111 == 5)
          {
            v108 = 0xCF1BBCDCBB000000 * *(*&v62 + v105);
          }

          else
          {
            if (v111 != 6)
            {
              goto LABEL_150;
            }

            v108 = 0xCF1BBCDCBF9B0000 * *(*&v62 + v105);
          }

          v109 = v108 >> v106;
LABEL_142:
          v110 = (*&v76 + 16 * (v109 & 0x3FFFFFFF));
          *(v110 + 4) = *v110;
          *v110 = v105++;
          if (v64 == v105)
          {
            goto LABEL_195;
          }
        }
      }

      goto LABEL_195;
    }

    if (v8[36] == 1)
    {
      bzero(*&v10[7], 1 << v8[3]);
      v112 = v10[33].u32[1];
      if (v112 >= 6)
      {
        v112 = 6;
      }

      if (v112 <= 4)
      {
        LOBYTE(v112) = 4;
      }

      v113 = v10[5].u32[1];
      v114 = v10[1];
      v115 = v11 - v114.i32[0] - 8;
      if (v113 < v115)
      {
        v116 = ~(-1 << v112);
        v117 = v10[14];
        v118 = v10[7];
        v119 = v10[6].i32[1];
        if (v10[34].i32[0] >= 6u)
        {
          v120 = 6;
        }

        else
        {
          v120 = v10[34].i32[0];
        }

        v121 = 56 - v119;
        if (v120 == 6)
        {
          do
          {
            v139 = ((0xCF1BBCDCBF9B0000 * *(*&v114 + v113)) ^ *&v10[12]) >> v121;
            v140 = (v139 >> 8) << v112;
            v141 = *&v117 + 4 * v140;
            v142 = (*&v118 + v140);
            if (((*v142 + 127) & v116) != 0)
            {
              v143 = 0;
            }

            else
            {
              v143 = v116;
            }

            v144 = v143 + ((*v142 + 127) & v116);
            *v142 = v144;
            v142[v144] = v139;
            *(v141 + 4 * v144) = v113++;
          }

          while (v115 != v113);
        }

        else if (v120 == 5)
        {
          do
          {
            v122 = ((0xCF1BBCDCBB000000 * *(*&v114 + v113)) ^ *&v10[12]) >> v121;
            v123 = (v122 >> 8) << v112;
            v124 = *&v117 + 4 * v123;
            v125 = (*&v118 + v123);
            if (((*v125 + 127) & v116) != 0)
            {
              v126 = 0;
            }

            else
            {
              v126 = v116;
            }

            v127 = v126 + ((*v125 + 127) & v116);
            *v125 = v127;
            v125[v127] = v122;
            *(v124 + 4 * v127) = v113++;
          }

          while (v115 != v113);
        }

        else
        {
          v145 = 24 - v119;
          do
          {
            v146 = ((-1640531535 * *(*&v114 + v113)) ^ v10[12].i32[0]) >> v145;
            v147 = (v146 >> 8) << v112;
            v148 = *&v117 + 4 * v147;
            v149 = (*&v118 + v147);
            if (((*v149 + 127) & v116) != 0)
            {
              v150 = 0;
            }

            else
            {
              v150 = v116;
            }

            v151 = v150 + ((*v149 + 127) & v116);
            *v149 = v151;
            v149[v151] = v146;
            *(v148 + 4 * v151) = v113++;
          }

          while (v115 != v113);
        }
      }

      goto LABEL_195;
    }

    v128 = v10[1];
    v129 = v11 - v128.i32[0] - 8;
    v130 = v10[5].u32[1];
    if (v130 < v129)
    {
      v131 = v10[14];
      v132 = v10[16];
      v133 = ~(-1 << v10[32].i32[1]);
      v134 = v10[34].i32[0];
      v135 = v10[33].i32[0];
      v136 = 64 - v135;
      if (v134 > 6)
      {
        if (v134 == 8)
        {
          do
          {
            v154 = (0xCF1BBCDCB7A56463 * *(*&v128 + v130)) >> v136;
            *(*&v132 + 4 * (v130 & v133)) = *(*&v131 + 4 * v154);
            *(*&v131 + 4 * v154) = v130++;
          }

          while (v129 != v130);
          goto LABEL_195;
        }

        if (v134 == 7)
        {
          do
          {
            v138 = (0xCF1BBCDCBFA56300 * *(*&v128 + v130)) >> v136;
            *(*&v132 + 4 * (v130 & v133)) = *(*&v131 + 4 * v138);
            *(*&v131 + 4 * v138) = v130++;
          }

          while (v129 != v130);
          goto LABEL_195;
        }
      }

      else
      {
        if (v134 == 5)
        {
          do
          {
            v153 = (0xCF1BBCDCBB000000 * *(*&v128 + v130)) >> v136;
            *(*&v132 + 4 * (v130 & v133)) = *(*&v131 + 4 * v153);
            *(*&v131 + 4 * v153) = v130++;
          }

          while (v129 != v130);
          goto LABEL_195;
        }

        if (v134 == 6)
        {
          do
          {
            v137 = (0xCF1BBCDCBF9B0000 * *(*&v128 + v130)) >> v136;
            *(*&v132 + 4 * (v130 & v133)) = *(*&v131 + 4 * v137);
            *(*&v131 + 4 * v137) = v130++;
          }

          while (v129 != v130);
          goto LABEL_195;
        }
      }

      do
      {
        v152 = (-1640531535 * *(*&v128 + v130)) >> (32 - v135);
        *(*&v132 + 4 * (v130 & v133)) = *(*&v131 + 4 * v152);
        *(*&v131 + 4 * v152) = v130++;
      }

      while (v129 != v130);
    }

LABEL_195:
    v10[5].i32[1] = v11 - v10[1].i32[0];
  }
}

uint64_t ZSTD_insertBt1(uint64_t a1, char *a2, char *a3, int a4, int a5, int a6)
{
  v9 = *(a1 + 112);
  v10 = *(a1 + 264);
  if (a5 > 6)
  {
    if (a5 == 7)
    {
      v11 = *a2;
      v12 = -1079680256;
      goto LABEL_11;
    }

    if (a5 == 8)
    {
      v11 = *a2;
      v12 = -1213897629;
      goto LABEL_11;
    }
  }

  else
  {
    if (a5 == 5)
    {
      v11 = *a2;
      v12 = -1157627904;
      goto LABEL_11;
    }

    if (a5 == 6)
    {
      v11 = *a2;
      v12 = -1080360960;
LABEL_11:
      v13 = (v11 * (v12 | 0xCF1BBCDC00000000)) >> -v10;
      goto LABEL_12;
    }
  }

  v13 = (-1640531535 * *a2) >> -v10;
LABEL_12:
  v76 = v6;
  v77 = v7;
  v14 = *(a1 + 128);
  v15 = -1 << (*(a1 + 260) - 1);
  v16 = ~v15;
  v17 = *(v9 + 4 * v13);
  v18 = *(a1 + 8);
  v19 = *(a1 + 16);
  v20 = a2 - v18;
  v21 = a2 - v18 + v15 + 1;
  if (a2 - v18 < ~v15)
  {
    v21 = 0;
  }

  v70 = v21;
  v22 = (v14 + 8 * (v20 & ~v15));
  v75 = 0;
  v23 = *(a1 + 24);
  v24 = 1 << *(a1 + 256);
  v25 = a4 - *(a1 + 28);
  v26 = a4 - v24;
  if (v25 <= v24 || *(a1 + 40) != 0)
  {
    v26 = *(a1 + 28);
  }

  v28 = v20 + 9;
  v29 = *(a1 + 268);
  *(v9 + 4 * v13) = v20;
  if (v17 < v26)
  {
    v30 = 0;
    *v22 = 0;
    goto LABEL_111;
  }

  v67 = v20;
  v31 = 0;
  v32 = 0;
  v74 = (v19 + v23);
  v69 = (v18 + v23);
  v33 = (v22 + 1);
  v34 = 1 << v29;
  v35 = (a3 - 7);
  v72 = (a3 - 3);
  v71 = (a3 - 1);
  v68 = v19 + 8;
  v73 = v18 + 8 + v23;
  v36 = 8;
  v37 = v70;
  while (1)
  {
    if (v31 >= v32)
    {
      v38 = v32;
    }

    else
    {
      v38 = v31;
    }

    v39 = &a2[v38];
    if (a6 && v38 + v17 < v23)
    {
      v40 = v19 + v17;
      v41 = (v40 + v38);
      if (&v74[a2 - v40] >= a3)
      {
        v42 = a3;
      }

      else
      {
        v42 = &v39[v74 - v41];
      }

      if (v42 - 7 <= v39)
      {
        v56 = (v19 + v17 + v38);
        v46 = &a2[v38];
      }

      else
      {
        if (*v41 != *v39)
        {
          v49 = __clz(__rbit64(*v39 ^ *v41)) >> 3;
          goto LABEL_69;
        }

        v43 = v19;
        v44 = v68 + v17;
        v45 = a2;
        while (1)
        {
          v46 = &v45[v38 + 8];
          if (v46 >= (v42 - 7))
          {
            break;
          }

          v47 = *(v44 + v38);
          v48 = *v46;
          v44 += 8;
          v45 += 8;
          if (v47 != v48)
          {
            v49 = &v45[__clz(__rbit64(v48 ^ v47)) >> 3] - a2;
            v19 = v43;
            v37 = v70;
            goto LABEL_69;
          }
        }

        v56 = (v44 + v38);
        v19 = v43;
        v37 = v70;
      }

      if (v46 < (v42 - 3) && *v56 == *v46)
      {
        ++v56;
        v46 += 2;
      }

      if (v46 < (v42 - 1) && *v56 == *v46)
      {
        v56 = (v56 + 2);
        ++v46;
      }

      if (v46 < v42 && *v56 == *v46)
      {
        v46 = (v46 + 1);
      }

      v49 = v46 - v39;
LABEL_69:
      if (&v41[v49] != v74)
      {
        goto LABEL_90;
      }

      v57 = &v39[v49];
      if (v35 <= &v39[v49])
      {
        v62 = (v18 + v23);
        v59 = &v39[v49];
      }

      else
      {
        if (*v69 != *v57)
        {
          v61 = __clz(__rbit64(*v57 ^ *v69)) >> 3;
LABEL_89:
          v49 += v61;
LABEL_90:
          v55 = v49 + v38;
          if (v49 + v38 + v17 >= v23)
          {
            v40 = v18 + v17;
          }

          goto LABEL_92;
        }

        v58 = 0;
        while (1)
        {
          v59 = &v57[v58 + 8];
          if (v59 >= v35)
          {
            break;
          }

          v60 = *(v73 + v58);
          v58 += 8;
          if (v60 != *v59)
          {
            v61 = v58 + (__clz(__rbit64(*v59 ^ v60)) >> 3);
            goto LABEL_89;
          }
        }

        v62 = (v73 + v58);
      }

      if (v59 < v72 && *v62 == *v59)
      {
        ++v62;
        v59 += 4;
      }

      if (v59 < v71 && *v62 == *v59)
      {
        v62 = (v62 + 2);
        v59 += 2;
      }

      if (v59 < a3 && *v62 == *v59)
      {
        ++v59;
      }

      v61 = v59 - v57;
      goto LABEL_89;
    }

    v40 = v18 + v17;
    v50 = (v40 + v38);
    if (v35 <= v39)
    {
      v53 = &a2[v38];
    }

    else
    {
      if (*v50 != *v39)
      {
        v55 = (__clz(__rbit64(*v39 ^ *v50)) >> 3) + v38;
        goto LABEL_92;
      }

      v51 = v18 + 8 + v17;
      v52 = a2;
      while (1)
      {
        v53 = &v52[v38 + 8];
        if (v53 >= v35)
        {
          break;
        }

        v54 = *(v51 + v38);
        v51 += 8;
        v52 += 8;
        if (v54 != *v53)
        {
          v55 = &v52[__clz(__rbit64(*v53 ^ v54)) >> 3] - a2 + v38;
          goto LABEL_92;
        }
      }

      v50 = (v51 + v38);
    }

    if (v53 < v72 && *v50 == *v53)
    {
      v50 = (v50 + 4);
      v53 += 4;
    }

    if (v53 < v71 && *v50 == *v53)
    {
      v50 = (v50 + 2);
      v53 += 2;
    }

    if (v53 < a3 && *v50 == *v53)
    {
      ++v53;
    }

    v55 = v53 - a2;
LABEL_92:
    v63 = v17 + v55;
    if (v55 <= v28 - v17)
    {
      v63 = v28;
    }

    if (v55 > v36)
    {
      v28 = v63;
      v36 = v55;
    }

    if (&a2[v55] == a3)
    {
      goto LABEL_106;
    }

    v64 = (v14 + 8 * (v17 & v16));
    if (*(v40 + v55) < a2[v55])
    {
      break;
    }

    *v33 = v17;
    if (v17 <= v37)
    {
      v33 = &v75;
      goto LABEL_106;
    }

    v32 = v55;
    v33 = (v14 + 8 * (v17 & v16));
    if (!--v34)
    {
      goto LABEL_106;
    }

LABEL_22:
    v17 = *v64;
    if (*v64 < v26)
    {
      goto LABEL_106;
    }
  }

  *v22 = v17;
  if (v17 > v37)
  {
    v22 = (v64 + 1);
    v31 = v55;
    ++v64;
    if (!--v34)
    {
      goto LABEL_106;
    }

    goto LABEL_22;
  }

  v22 = &v75;
LABEL_106:
  *v33 = 0;
  *v22 = 0;
  v30 = v36 - 384;
  if ((v36 - 384) >= 0xC0)
  {
    v30 = 192;
  }

  if (v36 <= 0x180)
  {
    v30 = 0;
  }

  v20 = v67;
LABEL_111:
  v65 = v28 - v20 - 8;
  if (v30 <= v65)
  {
    return v65;
  }

  else
  {
    return v30;
  }
}

int64_t ZSTD_compressBlock_opt0(uint64_t a1, uint64_t a2, uint64_t *a3, unsigned __int8 *a4, uint64_t a5, unsigned int a6)
{
  v223 = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 272);
  v9 = v8 - 6;
  v197 = v8;
  v10 = v8 >= 3;
  v11 = v8 - 3;
  if (v10)
  {
    v12 = 3;
  }

  else
  {
    v12 = 0;
  }

  if (v11)
  {
    v13 = 4;
  }

  else
  {
    v13 = 3;
  }

  v206 = v13;
  v207 = a4;
  if (v9 >= 0xFFFFFFFD)
  {
    v14 = v11;
  }

  else
  {
    v14 = v12;
  }

  v205 = *(&off_1EEFDB430[4 * a6] + v14);
  v210 = &a4[a5];
  v201 = &a4[a5 - 8];
  v15 = (*(a1 + 8) + *(a1 + 24));
  if (*(a1 + 276) >= 0xFFFu)
  {
    v16 = 4095;
  }

  else
  {
    v16 = *(a1 + 276);
  }

  v202 = v16;
  v218 = *(a1 + 44);
  v17 = *(a1 + 184);
  v213 = *(a1 + 176);
  v217 = 0;
  v215 = 0u;
  v216 = 0u;
  v214 = 0u;
  v221 = 0;
  v222 = 0;
  v18 = *(a1 + 288);
  if (v18)
  {
    v19 = v18[1];
    v214 = *v18;
    v215 = v19;
    *&v216 = *(v18 + 4);
  }

  else
  {
    *&v216 = 0;
    v214 = 0uLL;
    v215 = 0uLL;
  }

  LODWORD(v217) = 0;
  *(&v216 + 1) = 0;
  ZSTD_opt_getNextMatchAndUpdateSeqStore(&v214, 0, a5);
  ZSTD_rescaleFreqs((a1 + 144), v207, a5, 0);
  if (v15 == v207)
  {
    v20 = v207 + 1;
  }

  else
  {
    v20 = v207;
  }

  v21 = v201;
  if (v20 < v201)
  {
    v200 = 0;
    v22 = v207;
    v199 = v17 + 40;
    v23 = v213;
    v212 = (v210 - 32);
    while (1)
    {
      v25 = v21;
      v209 = v22;
      v26 = v20 - v22;
      v27 = v20;
      LODWORD(v219) = v205(v23, a1, &v218);
      v23 = v213;
      ZSTD_optLdm_processMatchCandidate(&v214, v213, &v219, v27 - v207, v210 - v27);
      v28 = v219;
      if (!v219)
      {
        v20 = v27 + 1;
        v22 = v209;
        v21 = v25;
        goto LABEL_22;
      }

      v211 = v27;
      *(v17 + 8) = 0;
      *(v17 + 12) = v26;
      if (*(a1 + 224) == 1)
      {
        v29 = 7936 - (__clz(v26 + 1) << 8);
        v21 = v25;
      }

      else
      {
        v21 = v25;
        if (v26 == 0x20000)
        {
          v29 = *(a1 + 212) + (__clz(*(*(a1 + 152) + 140) + 1) << 8) - 3584;
        }

        else
        {
          if (v26 < 0x40)
          {
            v30 = ZSTD_LLcode_LL_Code_36107[v26 & 0x3F];
          }

          else
          {
            v30 = 50 - __clz(v26);
          }

          v29 = *(a1 + 212) + ((__clz(*(*(a1 + 152) + 4 * v30) + 1) + LL_bits_36216[v30]) << 8) - 7936;
        }
      }

      *v17 = v29;
      v32 = *a3;
      *(v17 + 24) = *(a3 + 2);
      *(v17 + 16) = v32;
      v31 = (v213 + 8 * (v28 - 1));
      LODWORD(v32) = v31[1];
      if (v32 > v202)
      {
        v33 = 0;
        v34 = *v31;
        goto LABEL_149;
      }

      *(v17 + 28) = 0x40000000;
      *(v17 + 56) = 0x40000000;
      *(v17 + 36) = 0;
      *(v17 + 40) = v26 + 1;
      *(v17 + 64) = 0;
      *(v17 + 68) = v26 + 2;
      if (v197 != 3)
      {
        v35 = v211 - v209 + 3;
        v36 = (v17 + 96);
        v37 = v206 - 3;
        do
        {
          *(v36 - 1) = 0;
          *v36 = v35++;
          *(v36 - 3) = 0x40000000;
          v36 += 7;
          --v37;
        }

        while (v37);
      }

      v38 = 0;
      v39 = v206;
      do
      {
        v40 = (v213 + 8 * v38);
        v41 = v40[1];
        if (v39 <= v41)
        {
          v42 = *v40;
          v43 = 31 - __clz(v42);
          if (*(a1 + 224) == 1)
          {
            do
            {
              v44 = *v17 + ((v43 - __clz(v39 - 2)) << 8) + 12032;
              v45 = (v17 + 28 * v39);
              v45[2] = v39;
              v45[3] = 0;
              *v45 = v44;
              v45[1] = v42;
              ++v39;
            }

            while (v39 <= v41);
          }

          else
          {
            if (v43 <= 0x13)
            {
              v46 = -15821;
            }

            else
            {
              v46 = (v43 << 9) - 25549;
            }

            v47 = v46 + *(a1 + 220) + *(a1 + 216);
            v49 = *(a1 + 160);
            v48 = *(a1 + 168);
            v50 = *(a1 + 152);
            v51 = *(a1 + 212) - 7936;
            do
            {
              v55 = v39 - 3;
              if (v39 - 3 < 0x80)
              {
                v52 = ZSTD_MLcode_ML_Code_36109[v55];
              }

              else
              {
                v52 = 67 - __clz(v55);
              }

              v53 = v47 + *v17 + ((__clz(*(v48 + 4 * v43) + 1) + v43 + ML_bits_36218[v52] + __clz(*(v49 + 4 * v52) + 1)) << 8);
              v54 = (v17 + 28 * v39);
              v54[1] = v42;
              v54[2] = v39;
              v54[3] = 0;
              *v54 = v51 + (__clz(*v50 + 1) << 8) + v53;
              ++v39;
            }

            while (v39 <= v41);
          }
        }

        ++v38;
      }

      while (v38 != v28);
      *(v17 + 28 * v39) = 0x40000000;
      LODWORD(v56) = v39 - 1;
      if (v39 == 1)
      {
        goto LABEL_142;
      }

      v33 = 1;
      v57 = v211;
      while (1)
      {
        v59 = &v57[v33];
        v60 = (v17 + 28 * (v33 - 1));
        v61 = v60[3];
        v62 = v61 + 1;
        v63 = *v60;
        v64 = *(a1 + 224);
        if (*(a1 + 240) == 2)
        {
          v65 = v63 + 2048;
          if (v64 == 1)
          {
            goto LABEL_64;
          }

          if (v61 == 0x1FFFF)
          {
            goto LABEL_59;
          }
        }

        else
        {
          if (v64 == 1)
          {
            v65 = v63 + 1536;
LABEL_64:
            v68 = 7936 - (__clz(v61 + 2) << 8);
            v71 = 7936 - (__clz(v62) << 8);
            goto LABEL_65;
          }

          v80 = *(a1 + 208);
          v81 = v80 - 256;
          v82 = 7936 - (__clz(*(*(a1 + 144) + 4 * *(v59 - 1)) + 1) << 8);
          v83 = v80 - v82;
          if (v82 > v81)
          {
            v83 = 256;
          }

          v65 = v83 + v63;
          if (v61 == 0x1FFFF)
          {
LABEL_59:
            v66 = *(a1 + 212);
            v67 = *(a1 + 152);
            v68 = v66 + (__clz(*(v67 + 140) + 1) << 8) - 3584;
            v69 = v66 - 7936;
            goto LABEL_60;
          }
        }

        if (v62 < 0x40)
        {
          v84 = ZSTD_LLcode_LL_Code_36107[v62];
        }

        else
        {
          v84 = 50 - __clz(v62);
        }

        v86 = *(a1 + 212);
        v67 = *(a1 + 152);
        v69 = v86 - 7936;
        v68 = v86 - 7936 + ((__clz(*(v67 + 4 * v84) + 1) + LL_bits_36216[v84]) << 8);
        if (v61 != 0x20000)
        {
          if (v61 >= 0x40)
          {
LABEL_60:
            v70 = 50 - __clz(v61);
          }

          else
          {
            v70 = ZSTD_LLcode_LL_Code_36107[v61];
          }

          v71 = v69 + ((__clz(*(v67 + 4 * v70) + 1) + LL_bits_36216[v70]) << 8);
          goto LABEL_65;
        }

        v71 = v86 + (__clz(*(v67 + 140) + 1) << 8) - 3584;
LABEL_65:
        v72 = v65 + v68 - v71;
        v73 = (v17 + 28 * v33);
        v74 = *v73;
        if (v72 <= *v73)
        {
          *(v73 + 3) = *(v60 + 3);
          *v73 = *v60;
          v73[3] = v62;
          *v73 = v72;
          v74 = v72;
          if (v62)
          {
LABEL_67:
            if (v59 > v21)
            {
              goto LABEL_54;
            }

            goto LABEL_95;
          }
        }

        else
        {
          v62 = v73[3];
          if (v62)
          {
            goto LABEL_67;
          }
        }

        v75 = v73[1];
        v76 = v17 + 28 * (v33 - v73[2]);
        v77 = *(v76 + 12);
        v219 = *(v76 + 16);
        v220 = *(v76 + 24);
        if (v75 < 4)
        {
          if (!v77)
          {
            ++v75;
          }

          v85 = v75 - 1;
          if (v75 == 4)
          {
            v87 = v219;
            v79 = v219 - 1;
          }

          else
          {
            if (v75 == 1)
            {
              v78 = v220;
              goto LABEL_94;
            }

            v79 = *(&v219 + v85);
            v87 = v219;
          }

          v88 = v85 == 1 ? &v220 : (&v219 + 4);
          v78 = *v88;
          HIDWORD(v219) = v87;
        }

        else
        {
          v78 = HIDWORD(v219);
          HIDWORD(v219) = v219;
          v79 = v75 - 3;
        }

        LODWORD(v219) = v79;
LABEL_94:
        *(v73 + 2) = v219;
        v73[6] = v78;
        if (v59 > v21)
        {
LABEL_54:
          v58 = v33 + 1;
          goto LABEL_55;
        }

LABEL_95:
        if (v33 == v56)
        {
          LODWORD(v56) = v33;
LABEL_142:
          v128 = (v17 + 28 * v56);
          v34 = v128[1];
          v200 = *v128;
          LODWORD(v32) = v128[2];
          v129 = v128[3];
          v130 = v128[6];
          v132 = *(v128 + 2);
          v131 = (v128 + 4);
          v221 = v132;
          v222 = v130;
          if (v32)
          {
            v133 = v56 - v32;
            if (!v129)
            {
              v33 = v56 - v32;
              goto LABEL_148;
            }

            v134 = *v131;
            *(a3 + 2) = *(v131 + 2);
            *a3 = v134;
            v135 = v133 - v129;
            v136 = v135 + 2;
            v137 = v17 + 28 * (v135 + 2);
            *(v137 + 8) = 0;
            *(v137 + 12) = v129;
            v138 = v17 + 28 * (v135 + 1);
            *v138 = v200;
            *(v138 + 4) = v34;
            *(v138 + 8) = v32;
            *(v138 + 12) = v129;
            *(v138 + 16) = v221;
            *(v138 + 24) = v222;
            v33 = v133 - v129;
            goto LABEL_165;
          }

          v92 = v56;
LABEL_146:
          v23 = v213;
          v22 = v209;
          v20 = &v211[v92];
          goto LABEL_22;
        }

        v58 = v33 + 1;
        if (*(v17 + 28 * (v33 + 1)) > v74 + 128)
        {
          break;
        }

LABEL_55:
        v33 = v58;
        v57 = v211;
        if (v58 > v56)
        {
          goto LABEL_142;
        }
      }

      v204 = v74;
      if (*(a1 + 224) == 1)
      {
        v203 = 0;
      }

      else
      {
        v203 = *(a1 + 212) + (__clz(**(a1 + 152) + 1) << 8) - 7936;
      }

      v89 = v59;
      LODWORD(v219) = (v205)(v213, a1, &v218, v59, v210, v73 + 4, v62 == 0);
      ZSTD_optLdm_processMatchCandidate(&v214, v213, &v219, v89 - v207, v210 - v89);
      v90 = v219;
      if (!v219)
      {
        v21 = v201;
LABEL_140:
        v58 = v33 + 1;
        goto LABEL_55;
      }

      v91 = (v219 - 1);
      v32 = *(v213 + 8 * v91 + 4);
      v92 = v32 + v33;
      if (v32 <= v202 && v92 <= 0xFFF && v89 + v32 < v210)
      {
        v93 = 0;
        v94 = v203 + v204;
        v21 = v201;
        do
        {
          v95 = (v213 + 8 * v93);
          v96 = v206;
          if (v93)
          {
            v96 = *(v95 - 1) + 1;
          }

          v97 = v95[1];
          if (v97 >= v96)
          {
            v98 = *v95;
            v99 = 31 - __clz(v98);
            if (*(a1 + 224) == 1)
            {
              v100 = 0;
              v101 = v33 + v97;
              v102 = v33 + v97;
              do
              {
                v104 = v97 + v33;
                v105 = v94 + ((v99 - __clz(v97 - 2)) << 8) + 12032;
                if (v104 <= v56)
                {
                  if (v105 >= *(v17 + 28 * v104))
                  {
                    break;
                  }
                }

                else
                {
                  v56 = v56;
                  v106 = v101 - v100 - v56;
                  if (v106 <= 1)
                  {
                    goto LABEL_118;
                  }

                  v107 = v106 & 0xFFFFFFFFFFFFFFFELL;
                  v108 = (v102 - v56) & 0xFFFFFFFFFFFFFFFELL;
                  v109 = (v199 + 28 * v56);
                  do
                  {
                    *(v109 - 3) = 0x40000000;
                    v109[4] = 0x40000000;
                    *v109 = 1;
                    v109[7] = 1;
                    v109 += 14;
                    v108 -= 2;
                  }

                  while (v108);
                  v56 = v107 + v56;
                  if (v106 != v107)
                  {
LABEL_118:
                    v110 = (v199 + 28 * v56);
                    do
                    {
                      ++v56;
                      *(v110 - 3) = 0x40000000;
                      *v110 = 1;
                      v110 += 7;
                    }

                    while (v56 < v104);
                  }
                }

                v103 = (v17 + 28 * v104);
                v103[2] = v97;
                v103[3] = 0;
                *v103 = v105;
                v103[1] = v98;
                --v97;
                ++v100;
                --v102;
              }

              while (v97 >= v96);
            }

            else
            {
              v111 = 0;
              if (v99 <= 0x13)
              {
                v112 = -15821;
              }

              else
              {
                v112 = (v99 << 9) - 25549;
              }

              v114 = *(a1 + 160);
              v113 = *(a1 + 168);
              v115 = v112 + *(a1 + 220) + *(a1 + 216);
              v116 = v33 + v97;
              v117 = v33 + v97;
              do
              {
                v119 = v97 - 3;
                if (v97 - 3 < 0x80)
                {
                  v120 = ZSTD_MLcode_ML_Code_36109[v119];
                }

                else
                {
                  v120 = 67 - __clz(v119);
                }

                v121 = v97 + v33;
                v122 = v94 + v115 + ((__clz(*(v113 + 4 * v99) + 1) + v99 + ML_bits_36218[v120] + __clz(*(v114 + 4 * v120) + 1)) << 8);
                if (v121 <= v56)
                {
                  if (v122 >= *(v17 + 28 * v121))
                  {
                    break;
                  }
                }

                else
                {
                  v56 = v56;
                  v123 = v116 - v111 - v56;
                  if (v123 < 2)
                  {
                    goto LABEL_135;
                  }

                  v124 = v123 & 0xFFFFFFFFFFFFFFFELL;
                  v125 = (v117 - v56) & 0xFFFFFFFFFFFFFFFELL;
                  v126 = (v199 + 28 * v56);
                  do
                  {
                    *(v126 - 3) = 0x40000000;
                    v126[4] = 0x40000000;
                    *v126 = 1;
                    v126[7] = 1;
                    v126 += 14;
                    v125 -= 2;
                  }

                  while (v125);
                  v56 = v124 + v56;
                  if (v123 != v124)
                  {
LABEL_135:
                    v127 = (v199 + 28 * v56);
                    do
                    {
                      ++v56;
                      *(v127 - 3) = 0x40000000;
                      *v127 = 1;
                      v127 += 7;
                    }

                    while (v56 < v121);
                  }
                }

                v118 = (v17 + 28 * v121);
                v118[2] = v97;
                v118[3] = 0;
                *v118 = v122;
                v118[1] = v98;
                --v97;
                ++v111;
                --v117;
              }

              while (v97 >= v96);
            }
          }

          ++v93;
        }

        while (v93 != v90);
        *(v17 + 28 * (v56 + 1)) = 0x40000000;
        goto LABEL_140;
      }

      v21 = v201;
      if (!v32)
      {
        goto LABEL_146;
      }

      v34 = *(v213 + 8 * v91);
      v133 = v33;
LABEL_148:
      v26 = *(v17 + 28 * v133 + 12);
LABEL_149:
      v139 = v17 + 28 * v33;
      v219 = *(v139 + 16);
      v220 = *(v139 + 24);
      if (v34 >= 4)
      {
        v140 = HIDWORD(v219);
        HIDWORD(v219) = v219;
        v141 = v34 - 3;
        goto LABEL_163;
      }

      if (v26)
      {
        v142 = v34;
      }

      else
      {
        v142 = v34 + 1;
      }

      v143 = v142 - 1;
      if (v142 == 4)
      {
        v144 = v219;
        v141 = v219 - 1;
      }

      else
      {
        if (v142 == 1)
        {
          v140 = v220;
          goto LABEL_164;
        }

        v141 = *(&v219 + v143);
        v144 = v219;
      }

      if (v143 == 1)
      {
        v145 = &v220;
      }

      else
      {
        v145 = &v219 + 1;
      }

      v140 = *v145;
      HIDWORD(v219) = v144;
LABEL_163:
      LODWORD(v219) = v141;
LABEL_164:
      v129 = 0;
      v135 = v33;
      *a3 = v219;
      *(a3 + 2) = v140;
      v136 = v33 + 2;
LABEL_165:
      v146 = v17 + 28 * v136;
      *v146 = v200;
      *(v146 + 4) = v34;
      *(v146 + 8) = v32;
      *(v146 + 12) = v129;
      *(v146 + 16) = v221;
      *(v146 + 24) = v222;
      v147 = (v17 + 28 * v135);
      v148 = *v147;
      v149 = *(v147 + 2);
      v150 = *(v147 + 3);
      *(v146 + 12) = v150;
      v151 = v136;
      if (!v149)
      {
        goto LABEL_172;
      }

      v151 = v136;
      do
      {
        v152 = v17 + 28 * v135;
        v153 = v17 + 28 * --v151;
        *v153 = v148;
        *(v153 + 8) = v149;
        *(v153 + 12) = v150;
        v154 = *(v152 + 24);
        *(v153 + 16) = *(v152 + 16);
        *(v153 + 24) = v154;
        v135 = v33 - (v149 + v150);
        v155 = (v17 + 28 * v135);
        v148 = *v155;
        v149 = *(v155 + 2);
        v150 = *(v155 + 3);
        *(v153 + 12) = v150;
        v33 = v135;
      }

      while (v149);
      if (v151 <= v136)
      {
LABEL_172:
        v23 = v213;
        v22 = v209;
        while (1)
        {
          v156 = (v17 + 28 * v151);
          v158 = v156[2];
          v157 = v156[3];
          if (v158)
          {
            break;
          }

          v20 = &v22[v157];
LABEL_174:
          if (++v151 > v136)
          {
            goto LABEL_170;
          }
        }

        v159 = v156[1];
        if (*(a1 + 240) != 2)
        {
          if (v157)
          {
            v160 = *(a1 + 144);
            v161 = v22;
            v162 = v157;
            do
            {
              v163 = *v161++;
              *(v160 + 4 * v163) += 2;
              --v162;
            }

            while (v162);
          }

          *(a1 + 192) += 2 * v157;
        }

        if (v157 < 0x40)
        {
          v164 = ZSTD_LLcode_LL_Code_36107[v157];
        }

        else
        {
          v164 = 50 - __clz(v157);
        }

        ++*(*(a1 + 152) + 4 * v164);
        ++*(a1 + 196);
        v165 = __clz(v159);
        ++*(*(a1 + 168) + 4 * (31 - v165));
        ++*(a1 + 204);
        v166 = v158 - 3;
        if ((v158 - 3) < 0x80)
        {
          v167 = ZSTD_MLcode_ML_Code_36109[v166];
        }

        else
        {
          v167 = 67 - __clz(v166);
        }

        ++*(*(a1 + 160) + 4 * v167);
        ++*(a1 + 200);
        v168 = &v22[v157];
        v169 = *(a2 + 24);
        if (&v22[v157] <= v212)
        {
          *v169 = *v22;
          if (v157 >= 0x11)
          {
            v172 = *(a2 + 24);
            *(v172 + 16) = *(v22 + 1);
            if ((v157 - 16) >= 0x11)
            {
              v174 = v172 + v157;
              v175 = (v172 + 32);
              v176 = (v22 + 48);
              do
              {
                *v175 = *(v176 - 1);
                v177 = *v176;
                v176 += 2;
                v175[1] = v177;
                v175 += 2;
              }

              while (v175 < v174);
              goto LABEL_220;
            }
          }

          *(a2 + 24) += v157;
          v173 = *(a2 + 8);
LABEL_222:
          *(v173 + 4) = v157;
          *v173 = v159;
          if ((v158 - 3) >= 0x10000)
          {
            v195 = (v173 - *a2) >> 3;
            *(a2 + 72) = 2;
            *(a2 + 76) = v195;
          }

          *(v173 + 6) = v158 - 3;
          *(a2 + 8) = v173 + 8;
          v22 += (v158 + v157);
          v20 = v22;
          goto LABEL_174;
        }

        if (v22 <= v212)
        {
          v171 = v169 + v212 - v22;
          *v169 = *v22;
          if ((v212 - v22) >= 17)
          {
            v178 = (v169 + 1);
            v179 = (v22 + 32);
            do
            {
              *v178 = *(v179 - 1);
              v180 = *v179;
              v179 += 2;
              *(v178 + 1) = v180;
              v178 += 32;
            }

            while (v178 < v171);
            v170 = v210 - 32;
            if (v212 >= v168)
            {
              goto LABEL_220;
            }
          }

          else
          {
            v170 = v210 - 32;
            if (v212 >= v168)
            {
              goto LABEL_220;
            }
          }
        }

        else
        {
          v170 = v22;
          v171 = *(a2 + 24);
          if (v22 >= v168)
          {
LABEL_220:
            *(a2 + 24) += v157;
            v173 = *(a2 + 8);
            if (v157 >= 0x10000)
            {
              v194 = (v173 - *a2) >> 3;
              *(a2 + 72) = 1;
              *(a2 + 76) = v194;
            }

            goto LABEL_222;
          }
        }

        v181 = v168 - v170;
        if ((v168 - v170) < 8)
        {
          v183 = v171;
        }

        else if ((v171 - v170) < 0x20)
        {
          v183 = v171;
        }

        else
        {
          if (v181 < 0x20)
          {
            v182 = 0;
            goto LABEL_214;
          }

          v182 = v181 & 0xFFFFFFFFFFFFFFE0;
          v184 = (v170 + 16);
          v185 = v171 + 16;
          v186 = v181 & 0xFFFFFFFFFFFFFFE0;
          do
          {
            v187 = *v184;
            *(v185 - 1) = *(v184 - 1);
            *v185 = v187;
            v184 += 2;
            v185 += 2;
            v186 -= 32;
          }

          while (v186);
          if (v181 == v182)
          {
            goto LABEL_220;
          }

          if ((v181 & 0x18) != 0)
          {
LABEL_214:
            v188 = v181 & 0xFFFFFFFFFFFFFFF8;
            v183 = &v171[v181 & 0xFFFFFFFFFFFFFFF8];
            v189 = v182 - (v181 & 0xFFFFFFFFFFFFFFF8);
            v190 = &v170[v182];
            v191 = &v171[v182];
            do
            {
              v192 = *v190;
              v190 += 8;
              *v191 = v192;
              v191 += 8;
              v189 += 8;
            }

            while (v189);
            if (v181 == v188)
            {
              goto LABEL_220;
            }

            v170 += v188;
          }

          else
          {
            v170 += v182;
            v183 = &v171[v182];
          }
        }

        do
        {
          v193 = *v170++;
          *v183++ = v193;
        }

        while (v170 != v168);
        goto LABEL_220;
      }

      v23 = v213;
      v22 = v209;
      v20 = v211;
LABEL_170:
      if (*(a1 + 240) != 2)
      {
        *(a1 + 208) = 7936 - (__clz(*(a1 + 192) + 1) << 8);
      }

      v24 = 7936 - (__clz(*(a1 + 204) + 1) << 8);
      *(a1 + 212) = vsub_s32(0x1F0000001F00, vshl_n_s32(vclz_s32(vadd_s32(*(a1 + 196), 0x100000001)), 8uLL));
      *(a1 + 220) = v24;
LABEL_22:
      if (v20 >= v21)
      {
        v207 = v22;
        return v210 - v207;
      }
    }
  }

  return v210 - v207;
}