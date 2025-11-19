uint64_t non_linearity(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int16 a9)
{
  v9 = MEMORY[0x1EEE9AC00](a1);
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = v9;
  __I[320] = *MEMORY[0x1E69E9840];
  __C = 0;
  if (a9 == 320)
  {
    v22 = 5;
  }

  else
  {
    v22 = 4;
  }

  v23 = flt_19B0AFFA8[a9 == 320];
  vDSP_meanv(v10, 1, &__C, v22);
  v25 = *&__C <= v23 || v12 != 2;
  if (v18 < v20)
  {
    goto LABEL_77;
  }

  if (v18 - v20 <= 0x2F)
  {
    goto LABEL_77;
  }

  v26 = *v16;
  v27 = v16[2];
  v20[1] = v16[1];
  v20[2] = v27;
  *v20 = v26;
  if (v20 + 3 < v20)
  {
    goto LABEL_77;
  }

  __I[0] = 0xAAAAAAAAAAAAAAAALL;
  vDSP_maxmgvi(v21, 1, &__C + 1, __I, 0x140uLL);
  v28 = SLOWORD(__I[0]);
  v29 = 1.0;
  if (*(&__C + 1) <= 1.0)
  {
    v30 = 0.67;
  }

  else
  {
    v30 = 0.67 / *(&__C + 1);
  }

  v31 = *v14;
  if (*v14 <= 0.0 || v31 > (v30 * 1024.0))
  {
    *v14 = v30;
  }

  else
  {
    if (!LOWORD(__I[0]))
    {
      memset(__I, 255, 0xA00uLL);
      memset(v63, 255, sizeof(v63));
      v62 = v31;
      goto LABEL_39;
    }

    v32 = log((v30 / v31));
    v29 = exp(((1.0 / v28) * v32));
    v30 = v31;
  }

  memset(__I, 255, 0xA00uLL);
  memset(v63, 255, sizeof(v63));
  v62 = v30;
  if (v28 < 1)
  {
LABEL_39:
    v33 = 1;
    goto LABEL_40;
  }

  LOWORD(v33) = 1;
  do
  {
    v34 = &v63[v33 - 1];
    v36 = v34 - 1 < &v62 || v34 > __I || v34 - 1 >= v34;
    v37 = v34 + 1;
    if (v36 || v37 > __I || v34 >= v37)
    {
      goto LABEL_77;
    }

    *v34 = v29 * *(v34 - 1);
    LODWORD(v33) = (v33 + 1);
  }

  while (v33 <= v28);
  v33 = v33;
LABEL_40:
  vDSP_vfill(&v63[v33 - 2], &v63[v33 - 1], 1, 320 - v33);
  if (v25)
  {
    vDSP_vssq(v21, 1, __I, 1, 0x140uLL);
  }

  else
  {
    MEMORY[0x19EAE60E0](v21, 1, __I, 1, 320);
  }

  MEMORY[0x19EAE5FA0](__I, 1, &v62, 1, v20 + 3, 1, 320);
  *v14 = *&v63[318];
  v60 = 0;
  HIDWORD(__C) = 0;
  vDSP_maxmgvi(v21 + 320, 1, &__C + 1, &v60, 0x140uLL);
  v40 = v60 + 320;
  v41 = 1.0;
  if (*(&__C + 1) <= 1.0)
  {
    v42 = 0.67;
  }

  else
  {
    v42 = 0.67 / *(&__C + 1);
  }

  v43 = *v14;
  if (*v14 <= 0.0 || v43 > (v42 * 1024.0))
  {
    *v14 = v42;
    v44 = v40 << 16;
  }

  else
  {
    v44 = v40 << 16;
    if (v40 << 16 == 20971520)
    {
      *&v63[319] = *v14;
LABEL_53:
      v46 = 319;
      v47 = 321;
      goto LABEL_70;
    }

    v45 = log((v42 / v43));
    v41 = exp(((1.0 / ((v44 >> 16) - 320)) * v45));
    v42 = v43;
  }

  *&v63[319] = v42;
  if (v44 >> 16 < 321)
  {
    goto LABEL_53;
  }

  v48 = 321;
  do
  {
    v49 = &v63[v48 - 1];
    v51 = v49 - 1 < &v62 || v49 > __I || v49 - 1 >= v49;
    v52 = v49 + 1;
    if (v51 || v52 > __I || v49 >= v52)
    {
      goto LABEL_77;
    }

    *v49 = v41 * *(v49 - 1);
    ++v48;
  }

  while (v44 >> 16 >= v48);
  v47 = v48;
  v46 = 640 - v48;
LABEL_70:
  vDSP_vfill(&v63[v47 - 2], &v63[v47 - 1], 1, v46);
  v55 = v21 + 320;
  if (v25)
  {
    vDSP_vssq(v55, 1, &__I[160], 1, 0x140uLL);
  }

  else
  {
    MEMORY[0x19EAE60E0](v55, 1, &__I[160], 1, 320);
  }

  result = MEMORY[0x19EAE5FA0](&__I[160], 1, &v63[319], 1, v20 + 83, 1, 320);
  *v14 = *&v63[638];
  v57 = v20 + 160;
  if (v20 + 160 < v20 || v18 < v57 || v18 - v57 <= 0x2F || (v58 = *v57, v59 = v20[162], v16[1] = v20[161], v16[2] = v59, *v16 = v58, v16 + 3 < v16))
  {
LABEL_77:
    __break(0x5519u);
  }

  return result;
}

uint64_t FdCng_encodeSID(uint64_t *a1, uint64_t a2, float a3)
{
  v83[1] = *MEMORY[0x1E69E9840];
  v76 = *a1;
  memset(v82, 0, sizeof(v82));
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v81[6] = v6;
  v81[7] = v6;
  v81[4] = v6;
  v81[5] = v6;
  v81[2] = v6;
  v81[3] = v6;
  v81[0] = v6;
  v81[1] = v6;
  *&v6 = -1;
  *(&v6 + 1) = -1;
  __C[6] = v6;
  __C[7] = v6;
  __C[4] = v6;
  __C[5] = v6;
  __C[2] = v6;
  __C[3] = v6;
  __C[0] = v6;
  __C[1] = v6;
  v7 = 0.0;
  v8 = 0.0;
  v9 = *(a1 + 702);
  if (v9 >= 1)
  {
    v10 = 0;
    v11 = (a1 + 229);
    v12 = (a1 + 241);
    while (1)
    {
      v13 = (a1 + v10 * 4 + 1832);
      v14 = a1 + v10 * 4 + 1836;
      v15 = v14 > v12 || v13 > v14;
      v16 = !v15 && v13 >= v11;
      v17 = &v82[v10];
      v18 = &v82[v10 + 1];
      v19 = v16 && v17 >= v82;
      v20 = !v19 || v18 > v83;
      if (v20 || v17 > v18)
      {
        break;
      }

      v22 = log10((*v13 + 0.0001));
      v23 = v22 * 10.0;
      v82[v10] = v23;
      v8 = v8 + v23;
      if (v9 == ++v10)
      {
        goto LABEL_20;
      }
    }

LABEL_95:
    __break(0x5519u);
  }

LABEL_20:
  for (i = 4; i != 17; ++i)
  {
    v7 = v82[i] + v7;
  }

  if (v9 > 0)
  {
    v25 = v82;
    v26 = v9;
    do
    {
      v27 = v25 + 1;
      v28 = v25 < v82 || v27 > v83;
      if (v28 || v25 > v27)
      {
        goto LABEL_95;
      }

      *v25 = *v25 - (v7 / 13.0);
      ++v25;
    }

    while (--v26);
  }

  LODWORD(__A[0]) = 1065353216;
  vDSP_vfill(__A, __C, 1, v9);
  msvq_enc(&cdk_37bits, &hBitsN, 0, 0, 0, 0, v82, v83, levels_37bits, &bits_37bits, 6u, __C, v81, v9, 24, v81, v82);
  if (v9 > 0x20)
  {
    goto LABEL_95;
  }

  memset(__A, 0, sizeof(__A));
  memset(v78, 0, sizeof(v78));
  memset(v77, 0, sizeof(v77));
  msvq_dec(&cdk_37bits, &hBitsN, __A, v78, 6, v9, 24, v81, v82, v77);
  v30 = 0.0;
  if (v9 >= 1)
  {
    v31 = v82;
    v32 = v9;
    do
    {
      v33 = *v31++;
      v30 = v33 + v30;
      --v32;
    }

    while (v32);
  }

  v34 = (v8 - v30) / v9;
  v35 = *(v76 + 16312);
  v36 = *(v76 + 16308);
  v37 = &scaleTable;
  v38 = 20;
  while (*v37 != v35 || v37[1] > v36 || v37[2] <= v36)
  {
    v37 += 4;
    if (!--v38)
    {
      v39 = v34 + -6.0;
      goto LABEL_43;
    }
  }

  v39 = *(v37 + 3) + v34;
LABEL_43:
  v40 = vcvtms_s32_f32(((v39 * 1.5) + 60.0) + 0.5);
  v41 = v40 & ~(v40 >> 31);
  if (v41 >= 127)
  {
    v42 = 127;
  }

  else
  {
    v42 = v41;
  }

  if (v9 >= 1)
  {
    v43 = (v76 + 14860);
    v44 = v82;
    v45 = v9;
    while ((v43 + 1) <= v76 + 14956 && v43 <= v43 + 1)
    {
      v47 = *v44++;
      v48 = __exp10(((v47 + ((v42 - 60) / 1.5)) / 10.0));
      *v43++ = v48;
      if (!--v45)
      {
        goto LABEL_53;
      }
    }

    goto LABEL_95;
  }

LABEL_53:
  if (v35 == 2)
  {
    if (v36 > 13200)
    {
      goto LABEL_61;
    }
  }

  else if (v35)
  {
    goto LABEL_61;
  }

  v49 = v76 + 14860 + 4 * v9;
  v50 = (v49 - 4);
  if (v49 - 4 < v76 + 14860 || v49 > v76 + 14956 || v50 > v49)
  {
    goto LABEL_95;
  }

  *v50 = *v50 * 0.8;
LABEL_61:
  if (*a2 == 2)
  {
    v51 = 0;
    v52 = &bits_37bits;
    do
    {
      v53 = v52 + 1;
      if (v52 < &bits_37bits || v53 > ENR_ATT || v52 > v53)
      {
        goto LABEL_95;
      }

      v56 = *(a2 + 40);
      v57 = v56 + 7812;
      v58 = *(a2 + 50);
      v59 = (v56 + 4 * v58);
      v60 = v59 + 2;
      v61 = v59 < v56 || v60 > v57;
      if (v61 || v59 > v60)
      {
        goto LABEL_95;
      }

      v63 = *v52++;
      *v59 = *(v81 + v51);
      v59[1] = v63;
      *(a2 + 50) = v58 + 1;
      v64 = *(a2 + 36) + v63;
      *(a2 + 36) = v64;
      v51 += 4;
    }

    while (v51 != 24);
    v65 = (v56 + 4 * (v58 + 1));
    if (v65 < v56 || (v65 + 2) > v57 || v65 > v65 + 2)
    {
      goto LABEL_95;
    }

    *v65 = v42;
    v65[1] = 7;
    *(a2 + 50) = v58 + 2;
    *(a2 + 36) = v64 + 7;
  }

  else
  {
    push_indice(a2, 2, 1, 1);
    push_indice(a2, 3, *(a2 + 130), 2);
    push_indice(a2, 3, *(a2 + 140) == 320, 1);
    v66 = 0;
    v67 = &bits_37bits;
    do
    {
      v68 = v67 + 1;
      if (v67 < &bits_37bits || v68 > ENR_ATT || v67 > v68)
      {
        goto LABEL_95;
      }

      v71 = *v67++;
      push_indice(a2, 16, *(v81 + v66), v71);
      v66 += 4;
    }

    while (v66 != 24);
    push_indice(a2, 1387, v42, 7);
  }

  v72 = *(a1 + 701) - *(a1 + 700);
  if (v72 > 0x154)
  {
    goto LABEL_95;
  }

  v73 = *(a1 + 702);
  if (v73 > 0x18)
  {
    goto LABEL_95;
  }

  scalebands((v76 + 14860), (a1 + 364), v73, a1 + 2812, *(a1 + 727), v72, (v76 + 13004), 1);
  return lpc_from_spectrum(v76 + 13004, v76 + 14364, *(a1 + 700), *(a1 + 699), *(v76 + 68), *(v76 + 11640), *(v76 + 11648), a3, v74, (v76 + 14960), v76 + 15028, *(v76 + 11656));
}

void generate_comfort_noise_enc(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  *v146 = *MEMORY[0x1E69E9840];
  v2 = *(v1 + 39840);
  v3 = *v2;
  if (*v2 > (*v2 + 16320))
  {
    goto LABEL_161;
  }

  v4 = v1;
  v5 = v3 + 13004;
  v6 = (v3 + 14364);
  v7 = v3 + 14366;
  v8 = v3 + 1352;
  v138 = v1 + 110868;
  v9 = *(v1 + 110868);
  v10 = *(v1 + 130);
  v11 = *(v1 + 36264);
  v12 = *(v2 + 2800);
  if (v12)
  {
    *(v3 + 1352) = 0;
    LODWORD(__A[0]) = 0;
    vDSP_vfill(__A, (v3 + 1360), 1, (2 * v12 - 2));
    v13 = *(v2 + 2800);
    v14 = (v8 + 8 * v13);
    v15 = (v3 + 13004);
  }

  else
  {
    if (v6 > v7)
    {
      goto LABEL_161;
    }

    v13 = 0;
    v16 = 31821 * *v6 + 13849;
    v17 = v16;
    v18 = 31821 * v16 + 13849;
    v19 = v18;
    v20 = 31821 * v18 + 13849;
    *v6 = v20;
    v15 = (v3 + 13008);
    *(v3 + 1352) = (((v17 + v19) + v20) * 0.000030518) * sqrtf(*(v3 + 13004));
    v14 = (v3 + 1360);
  }

  v21 = v3 + 3912;
  v22 = *(v2 + 2796);
  v23 = v5 + 4 * v22 - 4 * v13;
  if (v15 < v23)
  {
    while (v14)
    {
      if ((v14 + 1) > v21)
      {
        break;
      }

      if (v14 > v14 + 1)
      {
        break;
      }

      if (v14 < v8)
      {
        break;
      }

      if (v6 > v7)
      {
        break;
      }

      v24 = 31821 * *v6 + 13849;
      v25 = v24;
      v26 = 31821 * v24 + 13849;
      v27 = 31821 * v26 + 13849;
      *v6 = v27;
      v28 = ((v25 + v26) + v27) * 0.000030518;
      *v14 = v28;
      v29 = v15 + 1;
      if (v15 + 1 > v6 || v15 > v29 || v15 < v5)
      {
        break;
      }

      *v14 = v28 * sqrtf(*v15 * 0.5);
      v30 = v14 + 2;
      v31 = v14 + 1;
      v32 = v30 > v21 || v31 > v30;
      if (v32 || v31 < v8)
      {
        break;
      }

      v34 = 31821 * v27 + 13849;
      v35 = v34;
      v36 = 31821 * v34 + 13849;
      v37 = v35 + v36;
      v38 = 31821 * v36 + 13849;
      *v6 = v38;
      v39 = (v37 + v38) * 0.000030518;
      *v31 = v39;
      *v31 = v39 * sqrtf(*v15 * 0.5);
      v14 = v31 + 1;
      ++v15;
      if (v29 >= v23)
      {
        goto LABEL_24;
      }
    }

LABEL_161:
    __break(0x5519u);
  }

LABEL_24:
  v40 = (v8 + 8 * v22);
  if (v40 < v8)
  {
    goto LABEL_161;
  }

  v41 = (v4 + 26054);
  v42 = *(v3 + 68) - 2 * v22;
  LODWORD(__A[0]) = 0;
  vDSP_vfill(__A, v40, 1, v42);
  v43 = 0;
  *(v3 + 1356) = 0;
  if (*(v4 + 13) >= 2401)
  {
    v44 = *(v3 + 68);
    LODWORD(__A[0]) = 0;
    vDSP_vfill(__A, (v3 + 6472), 1, v44);
    v45 = *v4;
    v43 = *v41 > 0 && v45 == 2 || v45 == 1;
  }

  __A[0] = (v3 + 6472);
  __A[1] = (v3 + 9032);
  __A[2] = (v3 + 6472);
  v48 = *(v3 + 11616);
  if (v48 < *(v3 + 11632))
  {
    goto LABEL_161;
  }

  v49 = v3 + 72;
  SynthesisSTFT((v3 + 1352), v3 + 3912, (v3 + 72), v3 + 1352, __A, v48, *(v3 + 11624), v43, v3);
  v50 = *(v3 + 64);
  if (v50 > 320 || (v50 & 0x8000) != 0)
  {
    goto LABEL_161;
  }

  LODWORD(__A[0]) = -1;
  vDSP_dotpr((v3 + 15028), 1, (v3 + 15028), 1, __A, v50 & 0x7FFF);
  v51 = *(v3 + 64);
  v52 = log10(((*__A / v51) + 0.1));
  v53 = v52 / 0.30103;
  if (v10)
  {
    v54 = 1.5;
    if (v10 == 1)
    {
      if ((v11 & 0x8000) != 0)
      {
        v55 = &dword_19B3A0FE4;
      }

      else
      {
        v55 = &ENR_ATT[2 * v11];
        if (v55 < ENR_ATT || v55 + 1 > &subband_search_offsets_13p2kbps_Har || v55 > v55 + 1)
        {
          goto LABEL_161;
        }
      }

      v54 = *v55;
    }

    v53 = v53 - v54;
  }

  v56 = (*(v4 + 6229) * 0.8);
  v57 = v56 + exp2(v53) * 0.200000003;
  *(v4 + 6229) = v57;
  if (*(v4 + 13) >= 2401 && *v4 == 2)
  {
    memset(__A, 255, sizeof(__A));
    v58 = *v6;
    v143 = -1;
    *&v59 = -1;
    *(&v59 + 1) = -1;
    v142[2] = v59;
    v142[3] = v59;
    v142[0] = v59;
    v142[1] = v59;
    if (*v41 < 1)
    {
      v139 = v142;
      v140 = &v144;
      v141 = v142;
      lsp2a_stab((v4 + 2602), &v139);
      v81 = v51 / 2;
      v82 = *(v4 + 62);
      v83 = 0.0;
      if (v51 > 1)
      {
        v84 = 0;
        do
        {
          v85 = &v4[2 * (v51 / -2) + 766 + 2 * v84];
          v86 = (v85 + 1);
          v87 = v85 < v4 + 63 || v86 > (v4 + 766);
          if (v87 || v85 > v86)
          {
            goto LABEL_161;
          }

          v83 = v83 + (*v85 * *v85);
        }

        while (v81 > ++v84);
      }

      if (v51 >= 1)
      {
        v89 = 0;
        v90 = sqrtf(v83 / v81);
        v91 = 0.0;
        do
        {
          v92 = __A + v89;
          v93 = v92 + 1;
          if (v92 < __A || v93 > v146 || v92 > v93)
          {
            goto LABEL_161;
          }

          v96 = 31821 * v58 + 13849;
          v97 = v96;
          v98 = 31821 * v96 + 13849;
          v58 = 31821 * v98 + 13849;
          v99 = ((v97 + v98) + (31821 * v98 + 13849)) * 0.000030518;
          *v92 = v99;
          v91 = v91 + (v99 * v99);
          ++v89;
        }

        while (v51 > v89);
        v100 = 0;
        v101 = v90 / sqrtf(v91 / v51);
        do
        {
          v102 = __A + v100;
          v103 = v102 + 1;
          v104 = v102 < __A || v103 > v146;
          if (v104 || v102 > v103)
          {
            goto LABEL_161;
          }

          *v102 = v101 * *v102;
        }

        while (v51 > ++v100);
      }

      if (v51 > 2048 || (v51 & 0x8000) != 0)
      {
        goto LABEL_161;
      }

      syn_filt(v142);
      LODWORD(v139) = v82;
      deemph(__A, v51, &v139, v9);
      if (v51 >= 2)
      {
        v106 = 0;
        LOWORD(v107) = 0;
        while (1)
        {
          v108 = __A + v107;
          v109 = v108 + 1;
          v110 = v108 < __A || v109 > v146;
          if (v110 || v108 > v109)
          {
            break;
          }

          v107 = v107;
          v112 = (*(v3 + 11616) + 4 * (v106 + v81));
          v113 = (v112 + 1) > *(v3 + 11624) || v112 > v112 + 1;
          v114 = !v113 && v112 >= *(v3 + 11632);
          v115 = (v49 + 4 * v107);
          v116 = v115 + 1;
          v117 = !v114 || v116 > v8;
          v118 = v117 || v115 > v116;
          if (v118 || v115 < v49)
          {
            break;
          }

          *v115 = *v115 + (*v108 * *v112);
          LOWORD(v107) = v107 + 1;
          v106 = v107;
          if (v81 <= v107)
          {
            return;
          }
        }

        goto LABEL_161;
      }
    }

    else
    {
      v60 = (v4 + 38036);
      v61 = *(v4 + 19357);
      v62 = *(v4 + 19358);
      v63 = *(v4 + 19359);
      v64 = v4[38713];
      if (v64 == 4)
      {
        LOWORD(v64) = 0;
      }

      v65 = -*(v4 + 19362) & (*(v4 + 19362) >> 31);
      v139 = (v3 + 72);
      v140 = (v3 + 1352);
      v141 = (v3 + 72);
      tcx_windowing_synthesis_current_frame(&v139, v4 + 17218, (v4 + 35276), v4 + 19025, (v4 + 38470), v4 + 19235, (v4 + 38590), v61, v62, v63, 0, v64, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, v51 / 2, v65, 1, 0, 0);
      if (v4[38048])
      {
        v66 = *(v3 + 64);
        if (v66 >= 1)
        {
          v67 = 0;
          v68 = 0;
          v69 = v4 + 24774;
          v70 = (56250 * (*(v138 + 952) / 100) * 0x29F16B11C6D1E109) >> 64;
          v71 = ((v70 >> 63) + (v70 >> 14));
          while (1)
          {
            v72 = &v69[2 * v71 + 2 * v67];
            v73 = v72 + 1;
            v74 = v72 < v69 || v73 > v41;
            v75 = v74 || v72 > v73;
            v76 = (v49 + 4 * v68);
            v77 = v76 + 1;
            v78 = v75 || v77 > v8;
            v79 = v78 || v76 > v77;
            if (v79 || v76 < v49)
            {
              break;
            }

            *v76 = *v72 + *v76;
            v67 = ++v68;
            if (v66 <= v68)
            {
              return;
            }
          }

          goto LABEL_161;
        }
      }

      else
      {
        v120 = *(v4 + 19359);
        if (v120 > 0x3C)
        {
          goto LABEL_161;
        }

        v121 = *(v4 + 19358);
        if (v121 > 0xD2)
        {
          goto LABEL_161;
        }

        v122 = *v60;
        v123 = *(v4 + 9510);
        if (*v60 > v123)
        {
          goto LABEL_161;
        }

        if (*(v4 + 9511) > v122)
        {
          goto LABEL_161;
        }

        v124 = *(v4 + 19357);
        if ((v124 & 0x80000000) != 0 || (v123 - v122) >> 2 < v124)
        {
          goto LABEL_161;
        }

        v125 = v4 + 988;
        tcx_windowing_synthesis_past_frame((v4 + 988), (v4 + 1756), v122, (v4 + 38050), (v4 + 38470), v124, v121, v120, v4[38713]);
        v126 = *(v4 + 19357);
        if (v126 >= 1)
        {
          v127 = 0;
          while (1)
          {
            v128 = v127;
            v129 = &v125[2 * v127];
            v130 = (v129 + 1);
            v131 = v129 < v125 || v130 > (v4 + 1756);
            v132 = v131 || v129 > v130;
            v133 = (v49 + 4 * v128);
            v134 = v133 + 1;
            v135 = v132 || v134 > v8;
            v136 = v135 || v133 > v134;
            if (v136 || v133 < v49)
            {
              break;
            }

            *v133 = *v129 + *v133;
            v127 = v128 + 1;
            if (v126 <= (v128 + 1))
            {
              return;
            }
          }

          goto LABEL_161;
        }
      }
    }
  }
}

void calc_residu(void *a1, unint64_t a2, unint64_t a3, int a4)
{
  if (a4 >= 1)
  {
    LOWORD(v8) = 0;
    v9 = a2 + 4 * a4;
    v10 = 4 * a4 - 253;
    for (i = a3; ; i += 68)
    {
      v12 = (a2 + 4 * v8);
      v13 = v12 <= v9 && v12 >= a2;
      v14 = v13 && 4 * v8 <= v10;
      if (!v14 || i < a3)
      {
        break;
      }

      v16 = v8;
      vDSP_conv((*a1 + 4 * v8 - 64), 1, (i + 64), -1, v12, 1, 0x40uLL, 0x11uLL);
      v8 = (v16 + 64);
      if (v8 >= a4)
      {
        return;
      }
    }

    __break(0x5519u);
  }
}

void SynthesisSTFT(DSPComplex *a1, unint64_t a2, float *a3, unint64_t a4, char **a5, unint64_t a6, unint64_t a7, int a8, uint64_t a9)
{
  v97 = *MEMORY[0x1E69E9840];
  memset(__b, 255, sizeof(__b));
  RFFTN(a1, a2, *(a9 + 11640), *(a9 + 11648), *(a9 + 68), 1, *(a9 + 11656));
  v17 = *(a9 + 64);
  v18 = *a5;
  v19 = a5[2];
  v20 = &(*a5)[4 * v17];
  if (v20 < v19 || v18 < v19)
  {
    goto LABEL_149;
  }

  if (v17 < 1)
  {
    v27 = v17;
  }

  else
  {
    v93 = a8;
    v22 = a5[1];
    if (v22 < v18)
    {
      goto LABEL_149;
    }

    v23 = a4;
    v24 = 4 * (v17 & 0x7FFF);
    v25 = v20 <= v22 && v22 - v20 >= v24;
    if (!v25 || v22 - v18 < v24)
    {
      goto LABEL_149;
    }

    memmove(v18, v20, v24);
    if (&v18[v24] < v18)
    {
      goto LABEL_149;
    }

    v17 = *(a9 + 64);
    v18 = *a5;
    v19 = a5[2];
    v27 = v17;
    a4 = v23;
    a8 = v93;
  }

  v28 = &v18[4 * v27];
  if (v28 < v19)
  {
    goto LABEL_149;
  }

  v94 = -1;
  __A = 0.0;
  vDSP_vfill(&__A, v28, 1, v17);
  v29 = *(a9 + 64);
  if (!a8)
  {
    if (v29 >= 0)
    {
      v38 = *(a9 + 64);
    }

    else
    {
      v38 = v29 + 3;
    }

    v39 = v38 >> 2;
    v40 = 3 * v29 / 4;
    v41 = (v38 >> 2);
    if (v40 <= v41)
    {
LABEL_63:
      v50 = 5 * v29 / 4;
      if (v50 <= v41)
      {
        v30 = v39;
        goto LABEL_85;
      }

      v51 = v39;
      while (1)
      {
        v52 = (a1 + 4 * v51);
        p_imag = &v52->imag;
        v54 = v52 < a1 || p_imag > a2;
        if (v54 || v52 > p_imag)
        {
          break;
        }

        v56 = v51;
        v57 = &(*a5)[4 * v51];
        v58 = v57 + 4 > a5[1] || v57 > v57 + 4;
        if (v58 || v57 < a5[2])
        {
          break;
        }

        *v57 = v52->real;
        v51 = v56 + 1;
        v33 = v50 <= (v56 + 1);
        v30 = v56 + 1;
        if (v33)
        {
          goto LABEL_85;
        }
      }
    }

    else
    {
      while (1)
      {
        v42 = a1 + v39;
        v43 = v42 + 1;
        v44 = v42 < a1 || v43 > a2;
        if (v44 || v42 > v43)
        {
          break;
        }

        v46 = (a6 + 4 * (v41 + v29 / -4));
        if (v46 < a6 || (v46 + 1) > a7 || v46 > v46 + 1)
        {
          break;
        }

        v47 = &(*a5)[4 * v39];
        v48 = v47 + 1 > a5[1] || v47 > v47 + 1;
        if (v48 || v47 < a5[2])
        {
          break;
        }

        *v47 = *v47 + (*v42 * *v46);
        LOWORD(v39) = v39 + 1;
        v41 = v39;
        if (v40 <= v39)
        {
          goto LABEL_63;
        }
      }
    }

LABEL_149:
    __break(0x5519u);
  }

  if (v29 >= 1)
  {
    v30 = 0;
    while (1)
    {
      v31 = (a1 + 4 * v30);
      v32 = &v31->imag;
      v33 = v31 < a1 || v32 > a2;
      if (v33 || v31 > v32)
      {
        goto LABEL_149;
      }

      v35 = &(*a5)[4 * v30];
      v36 = v35 + 4 > a5[1] || v35 > v35 + 4;
      if (v36 || v35 < a5[2])
      {
        goto LABEL_149;
      }

      *v35 = v31->real;
      if (5 * v29 / 4 <= ++v30)
      {
        goto LABEL_85;
      }
    }
  }

  v30 = 0;
LABEL_85:
  v60 = 7 * v29 / 4;
  v61 = v30;
  if (v60 > v30)
  {
    v62 = v30;
    while (1)
    {
      v63 = a1 + v62;
      v64 = v63 + 1;
      v65 = v63 < a1 || v64 > a2;
      v66 = v65 || v63 > v64;
      v67 = (a6 + 4 * (3 * v29 / -4 + v61));
      v68 = v67 + 1;
      v69 = !v66 && v67 >= a6;
      v70 = !v69 || v68 > a7;
      if (v70 || v67 > v68)
      {
        goto LABEL_149;
      }

      v72 = &(*a5)[4 * v62];
      v73 = v72 + 1 > a5[1] || v72 > v72 + 1;
      if (v73 || v72 < a5[2])
      {
        goto LABEL_149;
      }

      *v72 = *v63 * *v67;
      v61 = ++v62;
      if (v60 <= v62)
      {
        goto LABEL_114;
      }
    }
  }

  v62 = v30;
LABEL_114:
  v75 = *(a9 + 68);
  if (v75 > v61)
  {
    v76 = a5[2];
    do
    {
      v77 = &(*a5)[4 * v62];
      v78 = v77 + 4 > a5[1] || v77 > v77 + 4;
      if (v78 || v77 < v76)
      {
        goto LABEL_149;
      }

      *v77 = 0;
    }

    while (v75 > ++v62);
  }

  v80 = v29 + 3;
  if (v29 >= 0)
  {
    v80 = v29;
  }

  if (a4 < a3)
  {
    goto LABEL_149;
  }

  if ((v29 & 0x8000) != 0)
  {
    goto LABEL_149;
  }

  if ((a4 - a3) >> 2 < v29)
  {
    goto LABEL_149;
  }

  v82 = *a5;
  v81 = a5[1];
  v83 = &(*a5)[4 * (v80 >> 2)];
  if (v83 > v81)
  {
    goto LABEL_149;
  }

  v84 = a5[2];
  if (v84 > v83 || v29 > (v81 - v83) >> 2)
  {
    goto LABEL_149;
  }

  v85 = (v75 / 2);
  if (v29 >= 1)
  {
    v86 = v29 & 0x7FFF;
    do
    {
      v87 = *v83++;
      *a3++ = v87 * v85;
      --v86;
    }

    while (v86);
    v82 = *a5;
    v81 = a5[1];
  }

  if (v29 > 0x140u)
  {
    goto LABEL_149;
  }

  v88 = &v82[4 * (v80 >> 2) - 68];
  if (v88 > v81 || v84 > v88)
  {
    goto LABEL_149;
  }

  v90 = (v29 + 17);
  if (v90 > (v81 - v88) >> 2)
  {
    goto LABEL_149;
  }

  v91 = 0;
  do
  {
    __b[v91] = *(v88 + 4 * v91) * v85;
    ++v91;
  }

  while (v90 != v91);
  v94 = LODWORD(__b[0]);
  if (v29 > 0x140u)
  {
    goto LABEL_149;
  }

  preemph(&__b[1], (v29 + 16), &v94, 0.68);
  v92 = *(a9 + 64);
  if (v92 > 320 || (v92 & 0x8000) != 0)
  {
    goto LABEL_149;
  }

  vDSP_conv(&__b[1], 1, (a9 + 15024), -1, (a9 + 15028), 1, v92 & 0x7FFF, 0x11uLL);
}

float tcx_windowing_synthesis_current_frame(void *a1, float *a2, unint64_t a3, float *a4, unint64_t a5, float *a6, unint64_t a7, int a8, int a9, int a10, int a11, int a12, float *a13, float *a14, unint64_t a15, unint64_t a16, unint64_t a17, unint64_t a18, uint64_t a19, uint64_t a20, unint64_t a21, unint64_t a22, int a23, int a24, int a25, int a26, int a27)
{
  v193 = a20;
  v31 = a23;
  v32 = a13;
  v33 = a14;
  *v195 = *MEMORY[0x1E69E9840];
  memset(__b, 255, sizeof(__b));
  v35 = a8 >> 1;
  if (a11 || a26 != 1)
  {
    if (a11 != 1 || a25)
    {
      if (a11 == 1 && a25)
      {
        if (v35 + a24 < 1)
        {
LABEL_89:
          if (a8 < 1)
          {
            return result;
          }

          v72 = a8;
          v73 = v35 + a24;
          v74 = a2;
          while (v74 >= a2 && (v74 + 1) <= a3 && v74 <= v74 + 1)
          {
            v75 = (*a1 + 4 * v73);
            v76 = (v75 + 1) > a1[1] || v75 > v75 + 1;
            if (v76 || v75 < a1[2])
            {
              break;
            }

            v78 = *v74++;
            result = v78 * *v75;
            *v75 = result;
            ++v73;
            if (!--v72)
            {
              return result;
            }
          }
        }

        else
        {
          v67 = 0;
          v68 = a1[2];
          while (1)
          {
            v69 = (*a1 + v67);
            v70 = (v69 + 1) > a1[1] || v69 > v69 + 1;
            if (v70 || v69 < v68)
            {
              break;
            }

            *v69 = 0;
            v67 += 4;
            if (4 * (v35 + a24) == v67)
            {
              goto LABEL_89;
            }
          }
        }
      }

      else if (a11 == 1 || a25)
      {
        if (a12 == 2)
        {
          v159 = a10;
          if (a8 - a10 <= 1)
          {
            v161 = 0;
            v165 = a6;
            v164 = a7;
LABEL_306:
            if (a10 < 1)
            {
              return result;
            }

            v183 = 4 * v161;
            v184 = v165;
            while (v184 >= v165 && (v184 + 1) <= v164 && v184 <= v184 + 1)
            {
              v185 = (*a1 + v183);
              v186 = (v185 + 1) > a1[1] || v185 > v185 + 1;
              if (v186 || v185 < a1[2])
              {
                break;
              }

              v188 = *v184++;
              result = v188 * *v185;
              *v185 = result;
              v183 += 4;
              if (!--v159)
              {
                return result;
              }
            }
          }

          else
          {
            v160 = 0;
            v161 = (a8 - a10) >> 1;
            v162 = a1[2];
            v163 = v161;
            v165 = a6;
            v164 = a7;
            while (1)
            {
              v166 = (*a1 + v160);
              v167 = (v166 + 1) > a1[1] || v166 > v166 + 1;
              if (v167 || v166 < v162)
              {
                break;
              }

              *v166 = 0;
              v160 += 4;
              if (!--v163)
              {
                goto LABEL_306;
              }
            }
          }
        }

        else if (a12 == 3)
        {
          v149 = a9;
          if (a8 - a9 <= 1)
          {
            v151 = 0;
            v155 = a4;
            v154 = a5;
LABEL_290:
            if (a9 < 1)
            {
              return result;
            }

            v177 = 4 * v151;
            v178 = v155;
            while (v178 >= v155 && (v178 + 1) <= v154 && v178 <= v178 + 1)
            {
              v179 = (*a1 + v177);
              v180 = (v179 + 1) > a1[1] || v179 > v179 + 1;
              if (v180 || v179 < a1[2])
              {
                break;
              }

              v182 = *v178++;
              result = v182 * *v179;
              *v179 = result;
              v177 += 4;
              if (!--v149)
              {
                return result;
              }
            }
          }

          else
          {
            v150 = 0;
            v151 = (a8 - a9) >> 1;
            v152 = a1[2];
            v153 = v151;
            v155 = a4;
            v154 = a5;
            while (1)
            {
              v156 = (*a1 + v150);
              v157 = (v156 + 1) > a1[1] || v156 > v156 + 1;
              if (v157 || v156 < v152)
              {
                break;
              }

              *v156 = 0;
              v150 += 4;
              if (!--v153)
              {
                goto LABEL_290;
              }
            }
          }
        }

        else
        {
          if (a8 < 1)
          {
            return result;
          }

          v169 = 0;
          while (1)
          {
            v170 = &a2[v169];
            v171 = &a2[v169 + 1];
            v172 = &a2[v169] < a2 || v171 > a3;
            if (v172 || v170 > v171)
            {
              break;
            }

            v174 = (*a1 + v169 * 4);
            v175 = (v174 + 1) > a1[1] || v174 > v174 + 1;
            if (v175 || v174 < a1[2])
            {
              break;
            }

            result = *v170 * *v174;
            *v174 = result;
            if (a8 == ++v169)
            {
              return result;
            }
          }
        }
      }

      else
      {
        if (a8 < 1)
        {
          return result;
        }

        v91 = 0;
        do
        {
          v92 = &a2[v91];
          v93 = &a2[v91 + 1];
          if (&a2[v91] < a2 || v93 > a3 || v92 > v93)
          {
            goto LABEL_321;
          }

          v96 = a1[2];
          v97 = (*a1 + v91 * 4);
          v98 = (v97 + 1) > a1[1] || v97 > v97 + 1;
          if (v98 || v97 < v96)
          {
            goto LABEL_321;
          }

          *v97 = *v92 * *v97;
          ++v91;
        }

        while (a8 != v91);
        v100 = 0;
        while (1)
        {
          v101 = (a17 + v100);
          v102 = a17 + v100 + 4;
          v103 = a17 + v100 < a17 || v102 > a18;
          if (v103 || v101 > v102)
          {
            break;
          }

          v105 = (*a1 + v100);
          v106 = (v105 + 1) > a1[1] || v105 > v105 + 1;
          if (v106 || v105 < v96)
          {
            break;
          }

          result = *v101 + *v105;
          *v105 = result;
          v100 += 4;
          if (4 * a8 == v100)
          {
            return result;
          }
        }
      }
    }

    else
    {
      v37 = v35 - a24;
      if (v35 - a24 < 1)
      {
LABEL_23:
        if (a27)
        {
          if (a27 >= 0)
          {
            v43 = a27;
          }

          else
          {
            v43 = a27 + 7;
          }

          if (a14 - a13 < 253 || a14 < a13 || (a27 + 7) > 0xF0E)
          {
            goto LABEL_321;
          }

          v33 = v195;
          v44 = v43 >> 3;
          lerp(a13, __b, v43 >> 3, 64);
          v45 = a8 >> 1;
          if (v44 >= 0x80)
          {
            if (a27 >= 24)
            {
              if (v44 <= 3)
              {
                v46 = 3;
              }

              else
              {
                v46 = v44;
              }

              v47 = v46 - 2;
              v48 = &__b[2];
              while (v48 - 2 >= __b && v48 + 1 <= v195 && v48 <= v48 + 1)
              {
                *v48 = ((*(v48 - 1) * 0.35) + (*(v48 - 2) * 0.25)) + (*v48 * 0.4);
                ++v48;
                if (!--v47)
                {
                  goto LABEL_40;
                }
              }

              goto LABEL_321;
            }

LABEL_40:
            v49 = &__b[v44];
            v50 = v49 - 1;
            if (v49 - 1 < __b)
            {
              goto LABEL_321;
            }

            if (v49 > v195)
            {
              goto LABEL_321;
            }

            if (v50 > v49)
            {
              goto LABEL_321;
            }

            v51 = v49 - 2;
            if (v51 < __b || v51 > v50)
            {
              goto LABEL_321;
            }

            result = 0.35;
            v52 = *v51;
            v53 = ((*v50 * 0.35) + (*v50 * 0.4)) + (*v51 * 0.25);
            *v50 = v53;
            *v51 = ((v53 * 0.35) + (v52 * 0.4)) + (v53 * 0.25);
            if (a27 >= 24)
            {
              v54 = v44 - 3;
              do
              {
                v55 = &__b[v54];
                v56 = v55 + 1;
                v57 = v55 < __b || v56 > v195;
                v58 = v57 || v55 > v56;
                v59 = v55 + 2;
                v60 = !v58 && v56 >= __b;
                v61 = !v60 || v59 > v195;
                v62 = v61 || v56 > v59;
                v63 = v55 + 3;
                v64 = !v62 && v59 >= __b;
                v65 = !v64 || v63 > v195;
                if (v65 || v59 > v63)
                {
                  goto LABEL_321;
                }

                *v55 = ((v55[1] * 0.35) + (*v55 * 0.4)) + (v55[2] * 0.25);
                v41 = v54-- <= 0;
              }

              while (!v41);
            }
          }

          if (a27 < 8)
          {
            return result;
          }

          v32 = __b;
        }

        else
        {
          if (a24 >= 1)
          {
            v108 = 0;
            if (2 * a24 <= 1)
            {
              v109 = 1;
            }

            else
            {
              v109 = 2 * a24;
            }

            v110 = a15 + 4 * (a23 - 2 * a24);
            v111 = 4 * v109;
            v112 = a23 - 1;
            v113 = (a21 + 8 * a24 - 4);
            do
            {
              v114 = (a21 + v108);
              v115 = a21 + v108 + 4;
              v116 = a21 + v108 < a21 || v115 > a22;
              if (v116 || v114 > v115)
              {
                goto LABEL_321;
              }

              v118 = a1[2];
              v119 = (*a1 + 4 * v37);
              v120 = (v119 + 1) > a1[1] || v119 > v119 + 1;
              if (v120 || v119 < v118)
              {
                goto LABEL_321;
              }

              *v119 = *v114 * *v119;
              v122 = (v110 + v108);
              if (v110 + v108 < a15)
              {
                goto LABEL_321;
              }

              if ((v122 + 1) > a16)
              {
                goto LABEL_321;
              }

              if (v122 > v122 + 1)
              {
                goto LABEL_321;
              }

              if (v113 < a21)
              {
                goto LABEL_321;
              }

              if ((v113 + 1) > a22)
              {
                goto LABEL_321;
              }

              if (v113 > v113 + 1)
              {
                goto LABEL_321;
              }

              v123 = (*a1 + 4 * v37);
              if ((v123 + 1) > a1[1])
              {
                goto LABEL_321;
              }

              if (v123 > v123 + 1)
              {
                goto LABEL_321;
              }

              if (v123 < v118)
              {
                goto LABEL_321;
              }

              *v123 = *v123 + ((*v122 * *v113) * *v113);
              v124 = (a15 + 4 * v112);
              if (v124 < a15)
              {
                goto LABEL_321;
              }

              if ((v124 + 1) > a16)
              {
                goto LABEL_321;
              }

              if (v124 > v124 + 1)
              {
                goto LABEL_321;
              }

              v125 = (*a1 + 4 * v37);
              if ((v125 + 1) > a1[1] || v125 > v125 + 1 || v125 < v118)
              {
                goto LABEL_321;
              }

              v126 = *v113--;
              *v125 = *v125 + ((*v124 * *v114) * v126);
              v108 += 4;
              --v112;
              ++v37;
            }

            while (v111 != v108);
          }

          if (a23 >= 1)
          {
            v127 = a15 + 4 * a23;
            v128 = 4 * ((16 - a23) & ~((16 - a23) >> 31));
            v129 = 4 * (v35 + a24);
            v130 = 64;
            do
            {
              v131 = (v127 + v128 - 64);
              v132 = v127 + v128 - 60;
              v133 = v131 < a15 || v132 > a16;
              if (v133 || v131 > v132)
              {
                goto LABEL_321;
              }

              v135 = *a1 + v128 + v129;
              v136 = (v135 - 64);
              v137 = v135 - 60;
              v138 = v137 > a1[1] || v136 > v137;
              if (v138 || v136 < a1[2])
              {
                goto LABEL_321;
              }

              *v136 = *v136 - *v131;
              v130 -= 4;
              v129 += 4;
              v127 += 4;
            }

            while (v128 != v130);
          }

          if (a14 < a13)
          {
            goto LABEL_321;
          }

          if (a14 - a13 < 253)
          {
            goto LABEL_321;
          }

          *(a13 + 14) = 0u;
          *(a13 + 15) = 0u;
          *(a13 + 12) = 0u;
          *(a13 + 13) = 0u;
          *(a13 + 10) = 0u;
          *(a13 + 11) = 0u;
          *(a13 + 8) = 0u;
          *(a13 + 9) = 0u;
          *(a13 + 6) = 0u;
          *(a13 + 7) = 0u;
          *(a13 + 4) = 0u;
          *(a13 + 5) = 0u;
          *(a13 + 2) = 0u;
          *(a13 + 3) = 0u;
          *a13 = 0u;
          *(a13 + 1) = 0u;
          v140 = a1[1];
          v141 = *a1 + 4 * v35 + 4 * a24 - 64;
          if (v141 > v140 || (v140 - v141) < 61 || a1[2] > v141)
          {
            goto LABEL_321;
          }

          v44 = 64;
          syn_filt(a19);
          v45 = a8 >> 1;
        }

        v142 = v45 + a24;
        result = v44;
        v143 = v44;
        v144 = v32;
        while (v144 >= v32 && v144 + 1 <= v33 && v144 <= v144 + 1)
        {
          v145 = (*a1 + 4 * v142);
          v146 = (v145 + 1) > a1[1] || v145 > v145 + 1;
          if (v146 || v145 < a1[2])
          {
            break;
          }

          v148 = *v144++;
          *v145 = *v145 - ((v148 * v143) / result);
          ++v142;
          if (!--v143)
          {
            return result;
          }
        }

        goto LABEL_321;
      }

      v38 = 0;
      v39 = a1[2];
      while (1)
      {
        v40 = (*a1 + v38);
        v41 = (v40 + 1) > a1[1] || v40 > v40 + 1;
        if (v41 || v40 < v39)
        {
          break;
        }

        *v40 = 0;
        v38 += 4;
        if (4 * (v35 - a24) == v38)
        {
          goto LABEL_23;
        }
      }
    }

LABEL_321:
    __break(0x5519u);
  }

  if (a27)
  {
    if (a14 < a13)
    {
      goto LABEL_321;
    }

    if (a23 > 0x1E0)
    {
      goto LABEL_321;
    }

    v36 = (a23 << 9) / a27;
    if (v36 < 0 || a14 - a13 < v36)
    {
      goto LABEL_321;
    }

    v33 = v195;
    lerp(a13, __b, a23, v36);
    v32 = __b;
    if (!a23)
    {
      return result;
    }

LABEL_115:
    v83 = 0;
    v84 = 0;
    result = a23;
    v85 = a1[2];
    while (1)
    {
      v86 = (*a1 + v84 * 4);
      v87 = (v86 + 1) > a1[1] || v86 > v86 + 1;
      if (v87 || v86 < v85)
      {
        break;
      }

      *v86 = (v83 / result) * *v86;
      v89 = &v32[v84];
      if (&v32[v84] < v32)
      {
        break;
      }

      if (v89 + 1 > v33)
      {
        break;
      }

      if (v89 > v89 + 1)
      {
        break;
      }

      v90 = (*a1 + v84 * 4);
      if ((v90 + 1) > a1[1] || v90 > v90 + 1 || v90 < v85)
      {
        break;
      }

      *v90 = *v90 + ((*v89 * v31) / result);
      ++v84;
      --v31;
      ++v83;
      if (a23 == v84)
      {
        return result;
      }
    }

    goto LABEL_321;
  }

  v79 = a14 - a13;
  if (a14 < a13)
  {
    goto LABEL_321;
  }

  if (a23 < 0)
  {
    goto LABEL_321;
  }

  v80 = v79 >> 2;
  if (v79 >> 2 < a23)
  {
    goto LABEL_321;
  }

  if (a23 >= 1)
  {
    bzero(a13, 4 * a23);
    v35 = a8 >> 1;
  }

  v81 = a1[1];
  v82 = *a1 + 4 * v35 + 4 * a24 - 64;
  if (v82 > v81 || (v81 - v82) < 61 || a1[2] > v82 || (a23 & 0x8000) != 0 || v80 < a23)
  {
    goto LABEL_321;
  }

  syn_filt(a19);
  if (a23)
  {
    goto LABEL_115;
  }

  return result;
}

unint64_t tcx_windowing_synthesis_past_frame(unint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, int a6, int a7, int a8, int a9)
{
  if (a9 == 3)
  {
    v39 = (a6 - a7) / 2;
    if (a7 >= 1)
    {
      v40 = 0;
      v41 = 4 * a7;
      v42 = v39;
      v43 = 4 * v39;
      v44 = a4;
      while (1)
      {
        v45 = v44 + v41;
        v46 = (v44 + v41 - 4);
        v47 = v46 < a4 || v45 > a4 + 4 * a7;
        v48 = v47 || v46 > v45;
        v49 = result + v43;
        v50 = result + v43 + 4;
        v51 = !v48 && v49 >= result;
        v52 = !v51 || v50 > a2;
        if (v52 || v49 > v50)
        {
          goto LABEL_80;
        }

        *(result + 4 * v42) = *v46 * *(result + 4 * v42);
        ++v42;
        v40 -= 4;
        v44 -= 4;
        v43 += 4;
        if (!(v41 + v40))
        {
          v39 = v42;
          break;
        }
      }
    }

    if (v39 < a6)
    {
      v54 = a6 - v39;
      for (i = (result + 4 * v39); i >= result && (i + 1) <= a2 && i <= i + 1; ++i)
      {
        *i = 0;
        if (!--v54)
        {
          return result;
        }
      }

      goto LABEL_80;
    }
  }

  else if (a9 == 2)
  {
    v22 = (a6 - a8) / 2;
    if (a8 >= 1)
    {
      v23 = 0;
      v24 = 4 * a8;
      v25 = v22;
      v26 = 4 * v22;
      v27 = a5;
      while (1)
      {
        v28 = v27 + v24;
        v29 = (v27 + v24 - 4);
        v30 = v29 < a5 || v28 > a5 + 4 * a8;
        v31 = v30 || v29 > v28;
        v32 = result + v26;
        v33 = result + v26 + 4;
        v34 = !v31 && v32 >= result;
        v35 = !v34 || v33 > a2;
        if (v35 || v32 > v33)
        {
          goto LABEL_80;
        }

        *(result + 4 * v25) = *v29 * *(result + 4 * v25);
        ++v25;
        v23 -= 4;
        v27 -= 4;
        v26 += 4;
        if (!(v24 + v23))
        {
          v22 = v25;
          break;
        }
      }
    }

    if (v22 < a6)
    {
      v37 = a6 - v22;
      for (j = (result + 4 * v22); j >= result && (j + 1) <= a2 && j <= j + 1; ++j)
      {
        *j = 0;
        if (!--v37)
        {
          return result;
        }
      }

      goto LABEL_80;
    }
  }

  else
  {
    if (a9)
    {
      v9 = 1;
    }

    else
    {
      v9 = a6 < 1;
    }

    if (!v9)
    {
      v10 = 0;
      v11 = 4 * a6;
      for (k = a3; ; k -= 4)
      {
        v13 = k + v11;
        v14 = (k + v11 - 4);
        v15 = v14 < a3 || v13 > a3 + 4 * a6;
        v16 = v15 || v14 > v13;
        v17 = (result + v10);
        v18 = result + v10 + 4;
        v19 = !v16 && v17 >= result;
        v20 = !v19 || v18 > a2;
        if (v20 || v17 > v18)
        {
          break;
        }

        *v17 = *v14 * *v17;
        v10 += 4;
        if (v11 == v10)
        {
          return result;
        }
      }

LABEL_80:
      __break(0x5519u);
    }
  }

  return result;
}

DSPComplex *RFFTN(DSPComplex *result, unint64_t a2, unint64_t a3, unint64_t a4, int a5, int a6, const vDSP_DFT_SetupStruct **a7)
{
  v9 = result;
  v112 = *MEMORY[0x1E69E9840];
  if (a5 == 512)
  {
    memset(__b, 255, sizeof(__b));
    if (a6 == -1)
    {
      v93 = 0;
      v94 = __b;
      do
      {
        v95 = &v9[v93];
        p_imag = &v9[v93].imag;
        if (&v9[v93] < v9 || p_imag > a2 || v95 > p_imag)
        {
          goto LABEL_131;
        }

        real = v95->real;
        v99 = v95 + 1;
        *v94 = real;
        if (p_imag < v9 || v99 > a2 || p_imag > v99)
        {
          goto LABEL_131;
        }

        v94[256] = p_imag->real;
        ++v93;
        ++v94;
      }

      while (v93 != 256);
      vDSP_DFT_Execute(*a7, __b, &__b[256], v9, &v9[128]);
      v101 = 0;
      v102 = &__b[1];
      do
      {
        v103 = (v9 + v101);
        v104 = &v9->imag + v101;
        if ((v9 + v101) < v9 || v104 > a2 || v103 > v104)
        {
          goto LABEL_131;
        }

        *(v102 - 1) = *v103;
        v107 = v103 + 256;
        if (v103 + 256 < v9)
        {
          goto LABEL_131;
        }

        v108 = v103 + 257;
        if (v108 > a2 || v107 > v108)
        {
          goto LABEL_131;
        }

        *v102 = *v107;
        v102 += 2;
        v101 += 4;
      }

      while (v101 != 1024);
      LODWORD(__Z[0].realp) = 1056964608;
      v92 = __Z;
    }

    else
    {
      __Z[0].realp = __b;
      __Z[0].imagp = &__b[256];
      vDSP_ctoz(v9, 2, __Z, 1, 0x100uLL);
      vDSP_DFT_Execute(a7[1], __b, &__b[256], v9, &v9[128]);
      v84 = 0;
      v85 = &__b[1];
      do
      {
        v86 = (v9 + v84);
        v87 = &v9->imag + v84;
        if ((v9 + v84) < v9 || v87 > a2 || v86 > v87)
        {
          goto LABEL_131;
        }

        *(v85 - 1) = *v86;
        v90 = v86 + 256;
        if (v86 + 256 < v9)
        {
          goto LABEL_131;
        }

        v91 = v86 + 257;
        if (v91 > a2 || v90 > v91)
        {
          goto LABEL_131;
        }

        *v85 = *v90;
        v85 += 2;
        v84 += 4;
      }

      while (v84 != 1024);
      v109 = 989855744;
      v92 = &v109;
    }

    MEMORY[0x19EAE6090](__b, 1, v92, __b, 1, 512);
    if (a2 < v9 || a2 - v9 < 0x800 || (result = memcpy(v9, __b, 0x800uLL), &v9[256] < v9))
    {
LABEL_131:
      __break(0x5519u);
    }
  }

  else if (a5 == 640)
  {
    memset(__b, 255, 0x500uLL);
    memset(__Z, 255, sizeof(__Z));
    if (a6 != -1)
    {
      v12 = &v9->imag;
      if (&v9->imag <= a2 && v12 >= v9 && &v9[1] <= a2 && v12 <= &v9[1])
      {
        v13 = 0;
        v14 = 0;
        imag = v9->imag;
        v16 = v9->real + imag;
        v17 = (v9->real - imag) * 0.0015625;
        v9->real = v16 * 0.0015625;
        v9->imag = v17;
        v18 = 160;
        while (1)
        {
          v19 = a3 + v14;
          v20 = (a3 + v14 + 4);
          v21 = a3 + v14 + 8;
          v22 = v20 < a3 || v21 > a4;
          if (v22 || v20 > v21)
          {
            break;
          }

          v24 = (v19 + 644);
          if (v19 + 644 < a3)
          {
            break;
          }

          v25 = v19 + 648;
          if (v25 > a4)
          {
            break;
          }

          if (v24 > v25)
          {
            break;
          }

          v26 = &v9[v13 + 1];
          if (v26 < v9)
          {
            break;
          }

          v27 = &v9[v13 + 1].imag;
          if (v27 > a2)
          {
            break;
          }

          if (v26 > v27)
          {
            break;
          }

          v28 = &v9[v18 + 159];
          if (v28 < v9)
          {
            break;
          }

          v29 = &v9[v18 + 159].imag;
          if (v29 > a2)
          {
            break;
          }

          if (v28 > v29)
          {
            break;
          }

          v30 = &v9[v13 + 1].imag;
          if (v30 < v9)
          {
            break;
          }

          v31 = &v9[v13 + 2];
          if (v31 > a2)
          {
            break;
          }

          if (v30 > v31)
          {
            break;
          }

          v32 = &v9[v18 + 159].imag;
          if (v32 < v9)
          {
            break;
          }

          v33 = &v9[v18 + 160];
          if (v33 > a2 || v32 > v33)
          {
            break;
          }

          v34 = *v26 - *v28;
          v35 = *v30 + *v32;
          v36 = (*v24 * v35) + (*v20 * v34);
          v37 = (*v20 * v35) - (*v24 * v34);
          v38 = *v26 + *v28;
          v39 = *v30 - *v32;
          *v26 = (v38 + v36) * 0.0015625;
          *v30 = (v39 + v37) * -0.0015625;
          *v28 = (v38 - v36) * 0.0015625;
          *v32 = (v39 - v37) * 0.0015625;
          v14 += 4;
          --v18;
          ++v13;
          if (v14 == 640)
          {
            goto LABEL_32;
          }
        }
      }

      goto LABEL_131;
    }

LABEL_32:
    v40 = 0;
    for (i = 0; i != 320; ++i)
    {
      v42 = &v9[v40];
      v43 = &v9[v40].imag;
      if (&v9[v40] < v9 || v43 > a2 || v42 > v43)
      {
        goto LABEL_131;
      }

      v47 = v42->real;
      v46 = v42 + 1;
      __b[i] = v47;
      if (v43 < v9 || v46 > a2 || v43 > v46)
      {
        goto LABEL_131;
      }

      *(&__Z[0].realp + i * 4) = v43->real;
      ++v40;
    }

    result = DoRTFT320(__b, __Z);
    v48 = 0;
    for (j = 0; j != 320; ++j)
    {
      v50 = &v9[v48];
      v51 = &v9[v48].imag;
      if (&v9[v48] < v9 || v51 > a2 || v50 > v51)
      {
        goto LABEL_131;
      }

      *v50 = __b[j];
      v54 = v50 + 2;
      if (v51 < v9)
      {
        goto LABEL_131;
      }

      if (v54 > a2 || v51 > v54)
      {
        goto LABEL_131;
      }

      v51->real = *(&__Z[0].realp + j * 4);
      ++v48;
    }

    if (a6 == -1)
    {
      v56 = &v9->imag;
      if (&v9->imag <= a2 && v56 >= v9 && &v9[1] <= a2 && v56 <= &v9[1])
      {
        v57 = 0;
        v58 = 0;
        v59 = v9->imag;
        v60 = v9->real - v59;
        v9->real = v9->real + v59;
        v9->imag = v60;
        for (k = 160; ; --k)
        {
          v62 = a3 + v58;
          v63 = (a3 + v58 + 4);
          v64 = a3 + v58 + 8;
          v65 = v63 < a3 || v64 > a4;
          if (v65 || v63 > v64)
          {
            break;
          }

          v67 = (v62 + 644);
          if (v62 + 644 < a3)
          {
            break;
          }

          v68 = v62 + 648;
          if (v68 > a4)
          {
            break;
          }

          if (v67 > v68)
          {
            break;
          }

          v69 = &v9[v57 + 1];
          if (v69 < v9)
          {
            break;
          }

          v70 = &v9[v57 + 1].imag;
          if (v70 > a2)
          {
            break;
          }

          if (v69 > v70)
          {
            break;
          }

          v71 = &v9[k + 159];
          if (v71 < v9)
          {
            break;
          }

          v72 = &v9[k + 159].imag;
          if (v72 > a2)
          {
            break;
          }

          if (v71 > v72)
          {
            break;
          }

          v73 = &v9[v57 + 1].imag;
          if (v73 < v9)
          {
            break;
          }

          v74 = &v9[v57 + 2];
          if (v74 > a2)
          {
            break;
          }

          if (v73 > v74)
          {
            break;
          }

          v75 = &v9[k + 159].imag;
          if (v75 < v9)
          {
            break;
          }

          v76 = &v9[k + 160];
          if (v76 > a2 || v75 > v76)
          {
            break;
          }

          v77 = *v69 - *v71;
          v78 = *v73 + *v75;
          v79 = (*v63 * v77) - (*v67 * v78);
          v80 = (*v63 * v78) + (*v67 * v77);
          v81 = *v69 + *v71;
          v82 = *v73 - *v75;
          *v69 = (v81 - v79) * 0.5;
          *v73 = (v82 - v80) * 0.5;
          *v71 = (v81 + v79) * 0.5;
          *v75 = (v82 + v80) * -0.5;
          v58 += 4;
          ++v57;
          if (v58 == 640)
          {
            return result;
          }
        }
      }

      goto LABEL_131;
    }
  }

  return result;
}

int *msvq_enc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int *a9, unint64_t a10, unsigned int a11, float *a12, unint64_t a13, int a14, int a15, int *a16, unint64_t a17)
{
  v17 = MEMORY[0x1EEE9AC00](a1);
  v19 = v18;
  v21 = v20;
  v224 = v23;
  v225 = v22;
  v25 = v24;
  v227 = v26;
  v228 = v27;
  v226 = v17;
  *v261 = *MEMORY[0x1E69E9840];
  bzero(v260, 0x1000uLL);
  *&v28 = -1;
  *(&v28 + 1) = -1;
  v258[4] = v28;
  v258[5] = v28;
  v258[2] = v28;
  v258[3] = v28;
  v258[0] = v28;
  v258[1] = v28;
  v257[0] = v28;
  v257[1] = v28;
  v256[6] = v28;
  v256[7] = v28;
  v256[4] = v28;
  v256[5] = v28;
  v256[2] = v28;
  v256[3] = v28;
  v256[0] = v28;
  v256[1] = v28;
  memset(__b, 170, sizeof(__b));
  *&v29 = 0xAAAAAAAAAAAAAAAALL;
  *(&v29 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v254[2] = v29;
  v254[3] = v29;
  v254[0] = v29;
  v254[1] = v29;
  if ((16 * a11) >= 1)
  {
    v30 = (16 * a11);
    v31 = __b;
    do
    {
      v32 = v31 + 4;
      if (v31 < __b || v32 > v256 || v31 > v32)
      {
        goto LABEL_347;
      }

      *v31 = 0;
      v31 += 4;
      --v30;
    }

    while (v30);
  }

  v35 = 0;
  v36 = &v260[8 * a14];
  do
  {
    v37 = v254 + v35 + 4;
    if ((v254 + v35) < v254 || v37 > __b || v254 + v35 > v37)
    {
      goto LABEL_347;
    }

    *(v254 + v35) = 0;
    v35 += 4;
  }

  while (v35 != 32);
  v40 = 0.0;
  if (a14 >= 1)
  {
    v41 = v21;
    v42 = a12;
    v43 = a14;
    do
    {
      if (v41 < v21 || (v41 + 1) > v19 || v41 > v41 + 1 || v42 < a12 || (v42 + 1) > a13 || v42 > v42 + 1)
      {
        goto LABEL_347;
      }

      v44 = *v41++;
      v45 = v44 * v44;
      v46 = *v42++;
      v40 = v40 + (v45 * v46);
      --v43;
    }

    while (v43);
  }

  __A = v40;
  vDSP_vfill(&__A, v258, 1, 8uLL);
  v47 = a11;
  v48 = 0;
  v49 = &v260[8 * a14];
  do
  {
    v50 = a14;
    if (a14 < 1)
    {
      v52 = v49;
    }

    else
    {
      v51 = v21;
      do
      {
        if (v51 < v21)
        {
          goto LABEL_347;
        }

        if ((v51 + 1) > v19)
        {
          goto LABEL_347;
        }

        if (v51 > v51 + 1)
        {
          goto LABEL_347;
        }

        if (v49 < v260)
        {
          goto LABEL_347;
        }

        v52 = v49 + 1;
        if (v49 + 1 > v261 || v49 > v52)
        {
          goto LABEL_347;
        }

        v53 = *v51++;
        *v49++ = v53;
        --v50;
      }

      while (v50);
    }

    ++v48;
    v49 = v52;
  }

  while (v48 != 8);
  v54 = 0;
  v248 = 0;
  v56 = (a9 + 1) <= a10 && a9 + 1 >= a9;
  v223 = v56;
  v57 = 4 * a14 - 4;
  v58 = 32;
  v59 = 1;
  v234 = __b;
  __dst = v260;
  v60 = &__b[32 * a11];
  do
  {
    v247 = v36;
    v229 = v58;
    v249 = v54;
    v250 = v234;
    v234 = v60;
    v61 = (v226 + 16 * v54);
    v62 = v61 + 2;
    if (v61 < v226 || v62 > v227 || v61 > v62)
    {
      goto LABEL_347;
    }

    v251 = v61[1];
    v252 = *v61;
    v233 = a15;
    v240 = a14;
    if (v228)
    {
      v65 = (v228 + 4 * v54);
      if (v65 < v228 || (v65 + 1) > v225 || v65 > v65 + 1)
      {
        goto LABEL_347;
      }

      v233 = *v65;
      v240 = *v65;
    }

    if (v25)
    {
      v66 = (v25 + 4 * v54);
      if (v66 < v25)
      {
        goto LABEL_347;
      }

      if ((v66 + 1) > v224)
      {
        goto LABEL_347;
      }

      if (v66 > v66 + 1)
      {
        goto LABEL_347;
      }

      v67 = *v66;
      if (v67 > 0x20)
      {
        goto LABEL_347;
      }

      if (v67)
      {
        bzero(v256, 4 * v67);
        v47 = a11;
        v236 = v67;
      }

      else
      {
        v236 = 0;
      }
    }

    else
    {
      v236 = 0;
      LODWORD(v67) = 0;
    }

    v68 = v256 + 4 * v67 + 4 * v240;
    if (v68 > v257)
    {
      goto LABEL_347;
    }

    if (v256 > v68)
    {
      goto LABEL_347;
    }

    v235 = a14 - (v240 + v236);
    if (v235 < 0 || (v257 - v68) >> 2 < v235)
    {
      goto LABEL_347;
    }

    if (v235 >= 1)
    {
      bzero(v68, 4 * (a14 - (v240 + v236)));
      v47 = a11;
    }

    v69 = 0;
    v70 = (v257 + v229);
    v71 = (v257 + v248);
    v72 = v257 + v248;
    v245 = v67;
    do
    {
      v73 = &v72[v69 * 4];
      if (&v72[v69 * 4] < v257 || v73 + 4 > &v259 || v73 > v73 + 4)
      {
        goto LABEL_347;
      }

      v71[v69++] = 3.4028e38;
    }

    while (v69 != 8);
    if (v249)
    {
      v74 = &a9[v249];
      if (v74 < a9 || (v74 + 1) > a10 || v74 > v74 + 1)
      {
        goto LABEL_347;
      }

      v75 = v236;
      v232 = v240;
      if (*v74 >= 1)
      {
        v76 = 0;
        v77 = 0;
        v78 = v256 + 4 * v236;
        v79 = v252;
        v80 = &a12[v236];
        do
        {
          if (v240 < 1)
          {
            v82 = 0.0;
          }

          else
          {
            v81 = 0;
            v82 = 0.0;
            do
            {
              v83 = &v80[v81];
              v84 = &v80[v81 + 1];
              v86 = &v80[v81] < a12 || v84 > a13 || v83 > v84;
              v87 = (v79 + v81 * 4);
              v88 = v79 + v81 * 4 + 4;
              v91 = !v86 && v88 <= v251 && v87 <= v88 && v87 >= v252;
              v92 = &v78[v81 * 4];
              v93 = &v78[v81 * 4 + 4];
              if (!v91 || v92 < v256 || v93 > v257 || v92 > v93)
              {
                goto LABEL_347;
              }

              v97 = *v83 * *v87;
              *v92 = v97;
              v82 = v82 + (*v87 * v97);
              ++v81;
            }

            while (v240 != v81);
          }

          v98 = 0;
          v99 = *v256;
          v100 = v247;
          do
          {
            v101 = v100 + 1;
            if (v100 < v260 || v101 > v261 || v100 > v101)
            {
              goto LABEL_347;
            }

            v104 = *v100 * v99;
            if (a14 >= 2)
            {
              v105 = 0;
              v101 = &v100[a14 - 2 + 2];
              while (1)
              {
                v106 = &v100[v105 / 4 + 1];
                v107 = &v100[v105 / 4 + 2];
                v108 = v106 < v260 || v107 > v261;
                v109 = v108 || v106 > v107;
                v110 = (v256 + v105 + 4);
                v111 = (v256 + v105 + 8);
                v112 = !v109 && v110 >= v256;
                v113 = !v112 || v111 > v257;
                if (v113 || v110 > v111)
                {
                  break;
                }

                v104 = v104 + (*v106 * *v110);
                v105 += 4;
                if (v57 == v105)
                {
                  goto LABEL_144;
                }
              }

LABEL_347:
              __break(0x5519u);
            }

LABEL_144:
            v100 = v101;
            v115 = &v70[v98];
            if (v115 < v257)
            {
              goto LABEL_347;
            }

            if (v115 + 1 > &v259)
            {
              goto LABEL_347;
            }

            if (v115 > v115 + 1)
            {
              goto LABEL_347;
            }

            v116 = &v71[v76];
            if (v116 < v257 || v116 + 1 > &v259 || v116 > v116 + 1)
            {
              goto LABEL_347;
            }

            v117 = (v82 + (v104 * -2.0)) + *v115;
            if (v117 < *v116)
            {
              *v116 = v117;
              v118 = &v250[4 * v249 + 4 * v76 * v47];
              if (v118 >= __b && v118 + 1 <= v256 && v118 <= v118 + 1)
              {
                *v118 = v77;
                v119 = v254 + v76;
                if (v119 >= v254 && v119 + 1 <= __b && v119 <= v119 + 1)
                {
                  v76 = 0;
                  *v119 = v98;
                  v120 = v248;
                  v121 = 1;
                  while (1)
                  {
                    v122 = (v257 + v120 + 4);
                    v123 = (v257 + v120 + 8);
                    v124 = v122 < v257 || v123 > &v259;
                    v125 = v124 || v122 > v123;
                    v126 = &v71[v76];
                    v127 = v126 + 1;
                    v128 = !v125 && v126 >= v257;
                    v129 = !v128 || v127 > &v259;
                    if (v129 || v126 > v127)
                    {
                      break;
                    }

                    if (*v122 > *v126)
                    {
                      v76 = v121;
                    }

                    ++v121;
                    v120 += 4;
                    if (v121 == 8)
                    {
                      goto LABEL_177;
                    }
                  }
                }
              }

              goto LABEL_347;
            }

LABEL_177:
            ++v98;
          }

          while (v98 != v59);
          ++v77;
          v79 += 4 * v233;
        }

        while (v77 < *v74);
      }
    }

    else
    {
      if (!v223)
      {
        goto LABEL_347;
      }

      v133 = v247 + 1 <= v261 && v247 <= v247 + 1 && v247 >= v260;
      v135 = v70 + 1 <= &v259 && v70 <= v70 + 1;
      v75 = v236;
      v136 = *a9;
      v232 = v240;
      if (*a9 >= 1)
      {
        v137 = 0;
        v138 = 0;
        v139 = v256 + 4 * v236;
        v140 = v252;
        v141 = &a12[v236];
        do
        {
          if (v240 < 1)
          {
            v143 = 0.0;
            if (!v133)
            {
              goto LABEL_347;
            }
          }

          else
          {
            v142 = 0;
            v143 = 0.0;
            do
            {
              v144 = &v141[v142];
              v145 = &v141[v142 + 1];
              v147 = &v141[v142] < a12 || v145 > a13 || v144 > v145;
              v148 = (v140 + v142 * 4);
              v149 = v140 + v142 * 4 + 4;
              v152 = !v147 && v149 <= v251 && v148 <= v149 && v148 >= v252;
              v153 = &v139[v142 * 4];
              v154 = &v139[v142 * 4 + 4];
              if (!v152 || v153 < v256 || v154 > v257 || v153 > v154)
              {
                goto LABEL_347;
              }

              v158 = *v144 * *v148;
              *v153 = v158;
              v143 = v143 + (*v148 * v158);
              ++v142;
            }

            while (v240 != v142);
            if (!v133)
            {
              goto LABEL_347;
            }
          }

          v159 = *v247 * *v256;
          if (a14 >= 2)
          {
            v160 = 0;
            do
            {
              v161 = &v247[v160 / 4 + 1];
              v162 = &v247[v160 / 4 + 2];
              v164 = v161 < v260 || v162 > v261 || v161 > v162;
              v165 = (v256 + v160 + 4);
              v166 = (v256 + v160 + 8);
              if (v164 || v165 < v256 || v166 > v257 || v165 > v166)
              {
                goto LABEL_347;
              }

              v159 = v159 + (*v161 * *v165);
              v160 += 4;
            }

            while (v57 != v160);
          }

          if (!v135)
          {
            goto LABEL_347;
          }

          v170 = &v71[v137];
          if (v170 < v257 || v170 + 1 > &v259 || v170 > v170 + 1)
          {
            goto LABEL_347;
          }

          v171 = (v143 + (v159 * -2.0)) + *v70;
          if (v171 < *v170)
          {
            *v170 = v171;
            v172 = &v250[4 * v137 * v47];
            if (v172 < __b)
            {
              goto LABEL_347;
            }

            if (v172 + 1 > v256)
            {
              goto LABEL_347;
            }

            if (v172 > v172 + 1)
            {
              goto LABEL_347;
            }

            *v172 = v138;
            v173 = v254 + v137;
            if (v173 < v254 || v173 + 1 > __b || v173 > v173 + 1)
            {
              goto LABEL_347;
            }

            v137 = 0;
            *v173 = 0;
            v174 = v248;
            for (i = 1; i != 8; ++i)
            {
              v176 = (v257 + v174 + 4);
              v177 = (v257 + v174 + 8);
              v179 = v176 < v257 || v177 > &v259 || v176 > v177;
              v180 = &v71[v137];
              v181 = v180 + 1;
              if (v179 || v180 < v257 || v181 > &v259 || v180 > v181)
              {
                goto LABEL_347;
              }

              if (*v176 > *v180)
              {
                v137 = i;
              }

              v174 += 4;
            }

            v136 = *a9;
          }

          ++v138;
          v140 += 4 * v233;
        }

        while (v138 < v136);
      }
    }

    v185 = 0;
    __len = 4 * v236;
    v239 = 4 * (v235 & 0x7FFFu);
    v186 = __dst;
    v187 = &__dst[v75];
    v231 = &v247[v75];
    do
    {
      v188 = v254 + 4 * v185;
      v189 = v188 + 4;
      v190 = v188 < v254 || v189 > __b;
      v244 = v254 + v185;
      if (v190 || v188 > v189)
      {
        goto LABEL_347;
      }

      v243 = v185 * v47;
      v192 = &v250[4 * v185 * v47 + 4 * v249];
      v193 = v192 + 1;
      v194 = v192 < __b || v193 > v256;
      if (v194 || v192 > v193)
      {
        goto LABEL_347;
      }

      v196 = *(v254 + v185) * a14;
      v197 = &v247[v196];
      if (v197 < v260 || v186 < v260)
      {
        goto LABEL_347;
      }

      v198 = *v192;
      v242 = v185;
      v246 = v186;
      if (v236)
      {
        if (v261 < v186 || v197 > v261)
        {
          goto LABEL_347;
        }

        if (v261 - v197 < __len || v261 - v186 < __len)
        {
          goto LABEL_347;
        }

        v238 = *(v254 + v185) * a14;
        v237 = *v192;
        memmove(v186, &v247[v196], __len);
        v198 = v237;
        v196 = v238;
        v186 = v246;
        LODWORD(v47) = a11;
        if (&v246[__len / 4] < v246)
        {
          goto LABEL_347;
        }
      }

      if (v240 >= 1)
      {
        v200 = 0;
        v201 = v252 + 4 * v198 * v233;
        v202 = &v231[v196];
        v203 = v232;
        do
        {
          v204 = &v202[v200];
          if (&v202[v200] < v260)
          {
            goto LABEL_347;
          }

          v205 = v204 + 1 > v261 || v204 > v204 + 1;
          v206 = (v201 + v200 * 4);
          v207 = v201 + v200 * 4 + 4;
          v208 = v205 || v207 > v251;
          v209 = v208 || v206 > v207;
          v210 = !v209 && v206 >= v252;
          v211 = &v187[v200];
          v212 = &v187[v200 + 1];
          v213 = v210 && v211 >= v260;
          v214 = !v213 || v212 > v261;
          if (v214 || v211 > v212)
          {
            goto LABEL_347;
          }

          *v211 = *v204 - *v206;
          ++v200;
        }

        while (--v203);
      }

      v216 = &v197[v245 + v240];
      if (v216 < v260)
      {
        goto LABEL_347;
      }

      v217 = &v186[v245 + v240];
      if (v217 < v260)
      {
        goto LABEL_347;
      }

      if (v235 >= 1)
      {
        if (v261 < v217)
        {
          goto LABEL_347;
        }

        if (v216 > v261)
        {
          goto LABEL_347;
        }

        if (v261 - v216 < v239)
        {
          goto LABEL_347;
        }

        if (v261 - v217 < v239)
        {
          goto LABEL_347;
        }

        memmove(&v186[v245 + v240], v216, v239);
        v186 = v246;
        LODWORD(v47) = a11;
        if (&v217[v239 / 4] < v217)
        {
          goto LABEL_347;
        }
      }

      v218 = &v234[4 * *v244 * v47];
      if (v218 < __b)
      {
        goto LABEL_347;
      }

      v219 = &v250[4 * v243];
      if (v219 < __b)
      {
        goto LABEL_347;
      }

      v220 = &v186[a14];
      mvi2i(v218, v256, v219, v256, v249);
      v186 = v220;
      v47 = a11;
      v185 = v242 + 1;
      v187 += a14;
    }

    while (v242 != 7);
    v54 = v249 + 1;
    v59 = 8;
    v60 = v250;
    v58 = v248;
    v36 = __dst;
    v248 = v229;
    __dst = v247;
  }

  while (v249 + 1 != a11);
  v221 = &v250[4 * minimum(v71, 8, 0) * a11];
  if (v221 < __b)
  {
    goto LABEL_347;
  }

  return mvi2i(v221, v256, a16, a17, a11);
}

void msvq_dec(unint64_t a1, unint64_t a2, void *a3, void *a4, int a5, unsigned int a6, int a7, uint64_t a8, char *a9, void *a10)
{
  v13 = a9;
  v14 = 4 * a6;
  if (a6 > 0)
  {
    bzero(a9, 4 * a6);
    v13 = a9;
  }

  v47 = v14;
  if (*a10)
  {
    v15 = a6 == 0;
  }

  else
  {
    v15 = 1;
  }

  if (v15)
  {
LABEL_17:
    v21 = 0;
    v48 = &v13[4 * a6];
    while (1)
    {
      v22 = a7;
      v23 = a6;
      if (*a3)
      {
        v24 = (*a3 + 4 * v21);
        if (v24 >= v24 + 1 || (v24 + 1) > a3[1] || v24 < a3[2])
        {
          goto LABEL_76;
        }

        v22 = *v24;
        v23 = *v24;
      }

      if (*a4)
      {
        v27 = (*a4 + 4 * v21);
        if (v27 >= v27 + 1 || (v27 + 1) > a4[1] || v27 < a4[2])
        {
          goto LABEL_76;
        }

        v30 = *v27;
      }

      else
      {
        v30 = 0;
      }

      v31 = (a1 + 16 * v21);
      if (v31 < a1)
      {
        goto LABEL_76;
      }

      if ((v31 + 2) > a2)
      {
        goto LABEL_76;
      }

      if (v31 > v31 + 2)
      {
        goto LABEL_76;
      }

      v32 = &v13[4 * v30];
      if (v32 > v48 || v32 < v13 || v23 > (v47 - 4 * v30) >> 2 || (v23 & 0x8000) != 0)
      {
        goto LABEL_76;
      }

      v33 = v31[1];
      v34 = *v31 + 4 * *(a8 + 4 * v21) * v22;
      v35 = v34 > v33 || *v31 > v34;
      if (v35 || v23 > (v33 - v34) >> 2)
      {
        goto LABEL_76;
      }

      MEMORY[0x19EAE5DC0]();
      v13 = a9;
      if (*a10)
      {
        if (v23 >= 1)
        {
          break;
        }
      }

LABEL_74:
      if (++v21 == a5)
      {
        return;
      }
    }

    v36 = 0;
    v37 = 0;
    v38 = a10[2];
    while (1)
    {
      v39 = (*a10 + 2 * (v36 + v30));
      v40 = (v39 + 1) > a10[1] || v39 >= v39 + 1;
      if (v40 || v39 < v38)
      {
        break;
      }

      v42 = (*v31 + 4 * (v36 + *(a8 + 4 * v21) * v22));
      v43 = v42 + 1;
      v44 = v42 < *v31 || v43 > v31[1];
      if (v44 || v42 >= v43)
      {
        break;
      }

      v46 = ((*v42 + *v42) * 1.28) + *v39;
      if (v46 >= 0x7FFF)
      {
        v46 = 0x7FFF;
      }

      if (v46 <= -32768)
      {
        LOWORD(v46) = 0x8000;
      }

      *v39 = v46;
      v36 = ++v37;
      if (v23 <= v37)
      {
        goto LABEL_74;
      }
    }
  }

  else
  {
    v16 = 0;
    v17 = a10[2];
    while (1)
    {
      v18 = (*a10 + v16);
      v19 = (v18 + 1) > a10[1] || v18 >= v18 + 1;
      if (v19 || v18 < v17)
      {
        break;
      }

      *v18 = 0;
      v16 += 2;
      if (2 * a6 == v16)
      {
        goto LABEL_17;
      }
    }
  }

LABEL_76:
  __break(0x5519u);
}

void scalebands(float *__src, unint64_t a2, unsigned int a3, unint64_t a4, int a5, int a6, char *__dst, int a8)
{
  if (a6 != a3)
  {
    while (1)
    {
      if (a6 < 1)
      {
        return;
      }

      v11 = a4;
      v12 = 0;
      v13 = 0;
      v63 = a4 + 4 * a3;
      v64 = &__src[a3];
      v14 = &__dst[4 * a6];
      v15 = a5;
      v60 = a2 + 4 * a3;
      v57 = a6;
      while (1)
      {
        v62 = v15;
        if (!a8 && v13 < a5)
        {
          goto LABEL_71;
        }

        v16 = &__src[v13];
        v17 = v16 + 1;
        if (v16 < __src || v17 > v64 || v16 >= v17)
        {
          goto LABEL_5;
        }

        v20 = (v11 + 4 * v13);
        if (v20 < v11 || (v20 + 1) > v63 || v20 > v20 + 1)
        {
          goto LABEL_5;
        }

        v21 = *v20;
        if (v12 <= v21)
        {
          break;
        }

LABEL_27:
        v26 = 1.0;
        if (v13 + 1 < v62)
        {
          v27 = v13 + 1;
          do
          {
            v28 = (v11 + 4 * v27);
            v29 = v28 + 1;
            v30 = v28 < v11 || v29 > v63;
            if (v30 || v28 >= v29)
            {
              goto LABEL_5;
            }

            v32 = &__src[v27];
            if (v32 < __src || v32 + 1 > v64 || v32 > v32 + 1)
            {
              goto LABEL_5;
            }

            v33 = *v28;
            v34 = &normReciprocal[4 * (*v28 - *(v11 + 4 * v13))];
            v35 = v34 + 1;
            v36 = v34 < normReciprocal || v35 > inv_tbl;
            if (v36 || v34 >= v35)
            {
              goto LABEL_5;
            }

            v38 = __src[v13];
            v39 = log((*v32 + 1.0e-20));
            v40 = log((v38 + 1.0e-20));
            v26 = exp((v39 - v40) * *v34);
            v41 = v12;
            if (v12 < v33)
            {
              v41 = v33;
              v42 = v33 - v12;
              v43 = &__dst[4 * v12];
              while (v43 >= __dst && v43 + 1 <= v14 && v43 <= v43 + 1)
              {
                v38 = v38 * v26;
                *v43++ = v38;
                if (!--v42)
                {
                  v12 = v33;
                  goto LABEL_53;
                }
              }

              goto LABEL_5;
            }

LABEL_53:
            v44 = &__dst[4 * v41];
            if (v44 < __dst || v44 + 4 > v14 || v44 > v44 + 4)
            {
              goto LABEL_5;
            }

            ++v12;
            *v44 = *v32;
            v13 = v27++;
          }

          while (v27 != v62);
        }

        if (v26 > 1.0)
        {
          v26 = 1.0;
        }

        v45 = v62 - 1;
        v46 = &__src[v45];
        if (v46 < __src)
        {
          goto LABEL_5;
        }

        if (v46 + 1 > v64)
        {
          goto LABEL_5;
        }

        if (v46 > v46 + 1)
        {
          goto LABEL_5;
        }

        v47 = (a2 + 4 * v45);
        if (v47 < a2 || (v47 + 1) > v60 || v47 > v47 + 1)
        {
          goto LABEL_5;
        }

        v48 = *v47;
        if (v12 <= v48)
        {
          v49 = *v46;
          v50 = v48 - v12 + 1;
          v51 = &__dst[4 * v12];
          while (v51 >= __dst && v51 + 1 <= v14 && v51 <= v51 + 1)
          {
            v49 = v26 * v49;
            *v51++ = v49;
            if (!--v50)
            {
              goto LABEL_71;
            }
          }

          goto LABEL_5;
        }

LABEL_71:
        v52 = a2 + 4 * v62;
        v53 = (v52 - 4);
        if (v52 - 4 < a2 || v52 > v60 || v53 >= v52)
        {
          goto LABEL_5;
        }

        v12 = *v53 + 1;
        v13 = v62;
        v15 = a3;
        a6 = v57;
        if (v12 >= v57)
        {
          return;
        }
      }

      v22 = *v16;
      v23 = v12 - 1;
      v24 = &__dst[4 * v12];
      while (v24 >= __dst)
      {
        v25 = v23;
        if (v24 + 4 > v14 || v24 > v24 + 4)
        {
          break;
        }

        *v24 = v22;
        v24 += 4;
        ++v23;
        if (v21 == v25 + 1)
        {
          v12 = v25 + 2;
          goto LABEL_27;
        }
      }

LABEL_5:
      __break(0x5519u);
    }
  }

  if (a6 >= 1)
  {
    v10 = 4 * a6;
    if (v10 > 4 * a6)
    {
      goto LABEL_5;
    }

    memmove(__dst, __src, 4 * a6);
    if (&__dst[v10] < __dst)
    {
      goto LABEL_5;
    }
  }
}

uint64_t lpc_from_spectrum(unint64_t a1, unint64_t a2, int a3, signed int a4, int a5, unint64_t a6, unint64_t a7, float a8, uint64_t a9, float *a10, unint64_t a11, const vDSP_DFT_SetupStruct **a12)
{
  v53[1] = *MEMORY[0x1E69E9840];
  *&v20 = -1;
  *(&v20 + 1) = -1;
  v52[7] = v20;
  v52[6] = v20;
  v52[5] = v20;
  v52[4] = v20;
  v52[3] = v20;
  v52[2] = v20;
  v52[1] = v20;
  v52[0] = v20;
  v21 = v51;
  memset(v51, 255, sizeof(v51));
  p_imag = &v51[0].imag;
  if (a3 < 1)
  {
    v26 = 0;
  }

  else
  {
    v23 = a3;
    do
    {
      if (p_imag - 1 < v51 || p_imag > v52 || p_imag - 1 > p_imag)
      {
        goto LABEL_61;
      }

      *(p_imag - 1) = 0.001;
      if (p_imag < v51 || p_imag + 1 > v52 || p_imag > p_imag + 1)
      {
        goto LABEL_61;
      }

      *p_imag = 0.0;
      p_imag += 2;
      --v23;
    }

    while (v23);
    v21 = (p_imag - 1);
    v26 = a3;
  }

  if (v26 >= a4)
  {
    a4 = v26;
  }

  else
  {
    v27 = 0;
    v28 = a4 - v26;
    v29 = (a1 - 4 * a3 + 4 * v26);
    do
    {
      if (v29 < a1)
      {
        goto LABEL_61;
      }

      if ((v29 + 1) > a2)
      {
        goto LABEL_61;
      }

      if (v29 > v29 + 1)
      {
        goto LABEL_61;
      }

      v30 = &v21[v27 / 2];
      if (&v21[v27 / 2] < v51)
      {
        goto LABEL_61;
      }

      v31 = &v21[v27 / 2].imag;
      if (v31 > v52 || v30 > v31)
      {
        goto LABEL_61;
      }

      v32 = &p_imag[v27];
      v33 = *v29;
      if (*v29 < 0.001)
      {
        v33 = 0.001;
      }

      *v30 = v33;
      if (v32 < v51)
      {
        goto LABEL_61;
      }

      v34 = &p_imag[v27 + 1];
      if (v34 > v52 || v32 > v34)
      {
        goto LABEL_61;
      }

      v32->real = 0.0;
      ++v29;
      v27 += 2;
      --v28;
    }

    while (v28);
    v21 = (v21 + v27 * 4);
    p_imag = (p_imag + v27 * 4);
  }

  v35 = a5 / 2;
  v36 = a5 / 2 - a4;
  if (a5 / 2 > a4)
  {
    while (1)
    {
      v37 = &v21->imag;
      v38 = v21 < v51 || v37 > v52;
      if (v38 || v21 > v37)
      {
        break;
      }

      v21->real = 0.001;
      if (p_imag < v51 || p_imag + 1 > v52 || p_imag > p_imag + 1)
      {
        break;
      }

      *p_imag = 0.0;
      p_imag += 2;
      ++v21;
      if (!--v36)
      {
        goto LABEL_44;
      }
    }

LABEL_61:
    __break(0x5519u);
  }

LABEL_44:
  v51[0].imag = 0.001;
  if (a5 <= 1)
  {
    v41 = (a8 * a8) + 1.0;
    imag = 0.001;
  }

  else
  {
    v40 = 0;
    v41 = (a8 * a8) + 1.0;
    v42 = v51;
    do
    {
      v43 = &v42->imag;
      if (v42 < v51 || v43 > v52 || v42 > v43)
      {
        goto LABEL_61;
      }

      v46 = cos(((v40 * -6.2832) / a5));
      v42->real = (v41 + ((a8 * -2.0) * v46)) * v42->real;
      ++v42;
      ++v40;
    }

    while (v35 != v40);
    imag = v51[0].imag;
  }

  v51[0].imag = (v41 + (a8 * 2.0)) * imag;
  RFFTN(v51, v52, a6, a7, a5, 1, a12);
  for (i = 0; i != 68; i += 4)
  {
    *(v52 + i) = (*(&v51[0].real + i) * v35) * v35;
  }

  v49 = *v52;
  if (*v52 < 100.0)
  {
    v49 = 100.0;
  }

  *v52 = v49 * 1.0005;
  return lev_dur(a10, a11, v52, v53, 16, 0, 0);
}

int *mvi2i(int *result, unint64_t a2, int *a3, unint64_t a4, unsigned int a5)
{
  if (a5 >= 1)
  {
    v5 = a5;
    if (a3 >= result)
    {
      v9 = a5 + 1;
      v10 = a5;
      v11 = result;
      for (i = a3; ; --i)
      {
        v13 = &v11[v10];
        v14 = &v11[v10 - 1];
        v15 = v14 < result || v13 > a2;
        if (v15 || v14 > v13)
        {
          break;
        }

        v17 = &i[v10];
        v18 = &i[v10 - 1];
        if (v18 < a3 || v17 > a4 || v18 > v17)
        {
          break;
        }

        *v18 = *v14;
        --v9;
        --v11;
        if (v9 <= 1)
        {
          return result;
        }
      }
    }

    else
    {
      v6 = result;
      for (j = a3; v6 >= result && (v6 + 1) <= a2 && v6 <= v6 + 1 && j >= a3 && (j + 1) <= a4 && j <= j + 1; ++j)
      {
        v8 = *v6++;
        *j = v8;
        if (!--v5)
        {
          return result;
        }
      }
    }

    __break(0x5519u);
  }

  return result;
}

void lpc_quantization(uint64_t a1, int a2, int a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7, uint64_t a8, unint64_t a9, unint64_t a10, unint64_t a11, unint64_t a12, __int128 a13, unint64_t a14, unint64_t a15, float *a16, unint64_t a17, _OWORD *a18, unint64_t a19, __int16 a20, __int16 a21, __int16 a22, int a23, int *a24, unint64_t a25, _DWORD *a26, unint64_t a27, _WORD *a28, int a29, uint64_t a30, __int128 *a31, _WORD *a32, unint64_t a33, __int16 *a34)
{
  v37 = a1;
  v39 = a24;
  v38 = a25;
  v40 = a9;
  v41 = a14;
  *v148 = *MEMORY[0x1E69E9840];
  *&v42 = -1;
  *(&v42 + 1) = -1;
  v137 = v42;
  v138 = v42;
  v135 = v42;
  v136 = v42;
  v134[2] = v42;
  v134[3] = v42;
  v134[0] = v42;
  v134[1] = v42;
  v133[2] = v42;
  v133[3] = v42;
  v133[0] = v42;
  v133[1] = v42;
  v132[2] = v42;
  v132[3] = v42;
  v132[0] = v42;
  v132[1] = v42;
  if (a3)
  {
    if (a3 != 1)
    {
      v87 = 0;
      *a28 = 0;
      goto LABEL_104;
    }

    v126 = 1;
    if (a7 < a6 || (a7 - a6) < 61)
    {
      goto LABEL_169;
    }

    v43 = 0;
    v44 = a29;
    v45 = a29 * 0.5;
    do
    {
      *(v134 + v43) = (v45 / 3.1416) * acosf(*(a6 + v43));
      v43 += 4;
    }

    while (v43 != 64);
    v37 = a1;
    if (*(a1 + 18636) > 0 || *(a1 + 104) < 2401 || *(a1 + 23324))
    {
      *(a1 + 23324) = 0;
      v47 = 1;
    }

    else
    {
      v47 = 0;
    }

    v41 = a14;
    v48 = *(a1 + 130);
    v49 = *(a1 + 96);
    v50 = *a30;
    v51 = *(a30 + 8);
    if (a22 == 1 && a29 == 16000)
    {
      v52 = a34;
      lsf_end_enc(a1, v134, &v135, a13, *(&a13 + 1), a18, a19, v51, v44, v46, a16, a17, 31, 3, v48, v50, v49, (a1 + 5464), (a1 + 5460), v47, 1, a24, a25, a34, a32, a33, 3);
    }

    else
    {
      v52 = a34;
      lsf_end_enc(a1, v134, &v135, a13, *(&a13 + 1), a18, a19, v51, v44, v46, a16, a17, 31, a22, v48, v50, v49, (a1 + 5464), (a1 + 5460), v47, 1, a24, a25, a34, a32, a33, a22);
    }

    v130 = *v52;
    FEC_lsf_estim_enc(a1, *(a1 + 140), v132, v133);
    __b[0] = a13;
    *&__b[1] = a13;
    *&v144 = v132;
    *(&v144 + 1) = v133;
    *&v145 = v132;
    lsf_stab(__b, &v144, 0);
    if ((a22 & 0xFFFFFFFE) == 2 && v88 < 0.45 && *(a1 + 67468))
    {
      *(a1 + 23324) = 1;
    }

    v40 = a9;
    if ((*(&a13 + 1) - a13) < 61)
    {
      goto LABEL_169;
    }

    if (*(&a13 + 1) < a13)
    {
      goto LABEL_169;
    }

    if (a12 < a11)
    {
      goto LABEL_169;
    }

    if ((a12 - a11) < 61)
    {
      goto LABEL_169;
    }

    for (i = 0; i != 64; i += 4)
    {
      *(a11 + i) = cosf((*(a13 + i) * 3.1416) / v45);
    }

    v38 = a25;
    v39 = a24;
    if ((a26 + 1) > a27 || a26 + 1 < a26)
    {
      goto LABEL_169;
    }

    *a26 = 31;
  }

  else
  {
    v126 = 0;
    if (a7 < a6 || (a7 - a6) <= 60)
    {
      goto LABEL_169;
    }

    v53 = 0;
    v54 = a29;
    v55 = a29 * 0.5;
    v56 = v55 / 3.1416;
    do
    {
      *(v134 + v53) = v56 * acosf(*(a6 + v53));
      v53 += 4;
    }

    while (v53 != 64);
    if (a2 == 2)
    {
      if (a10 < a9 || (a10 - a9) < 61)
      {
        goto LABEL_169;
      }

      for (j = 0; j != 64; j += 4)
      {
        *(v133 + j) = v56 * acosf(*(a9 + j));
      }
    }

    if (*(&a13 + 1) < a13)
    {
      goto LABEL_169;
    }

    if ((*(&a13 + 1) - a13) < 61)
    {
      goto LABEL_169;
    }

    *&v58 = -1;
    *(&v58 + 1) = -1;
    v146 = v58;
    v147 = v58;
    v144 = v58;
    v145 = v58;
    memset(__b, 170, sizeof(__b));
    *&v59 = -1;
    *(&v59 + 1) = -1;
    v141 = v59;
    v142 = v59;
    v139 = v59;
    v140 = v59;
    *(a13 + 32) = 0u;
    *(a13 + 48) = 0u;
    *a13 = 0u;
    *(a13 + 16) = 0u;
    vlpc_1st_cod(v134, &v135, a13, a13 + 64, &v139, __b, v54);
    v61 = a24 + 1;
    if ((a24 + 1) > a25)
    {
      goto LABEL_169;
    }

    if (v61 < a24)
    {
      goto LABEL_169;
    }

    *a24 = v60;
    v62 = (a24 + 2);
    v63 = vlpc_2st_cod(v134, &v135, a13, a13 + 64, v61, a25, 0, v54);
    if ((a24 + 2) > a25)
    {
      goto LABEL_169;
    }

    if (v61 > v62)
    {
      goto LABEL_169;
    }

    if (v62 < a24)
    {
      goto LABEL_169;
    }

    if ((a24 + 3) > a25)
    {
      goto LABEL_169;
    }

    if (v62 > (a24 + 3))
    {
      goto LABEL_169;
    }

    v125 = a26 + 1;
    if ((a26 + 1) > a27)
    {
      goto LABEL_169;
    }

    if (v125 < a26)
    {
      goto LABEL_169;
    }

    v130 = a24[1] + a24[2] + 3;
    v64 = &a24[v130];
    *a26 = v63 + 8;
    if (v64 < a24)
    {
      goto LABEL_169;
    }

    v65 = v64 + 1;
    if ((v64 + 1) > a25 || v64 > v65)
    {
      goto LABEL_169;
    }

    *v64 = 0;
    if (a2 == 2)
    {
      v137 = 0u;
      v138 = 0u;
      v135 = 0u;
      v136 = 0u;
      vlpc_1st_cod(v133, v134, &v135, &v139, &v139, __b, v54);
      v67 = v64 + 2;
      if ((v64 + 2) > a25)
      {
        goto LABEL_169;
      }

      if (v65 > v67)
      {
        goto LABEL_169;
      }

      v64[1] = v66;
      v68 = vlpc_2st_cod(v133, v134, &v135, &v139, v64 + 2, a25, 0, v54);
      v69 = v64 + 3;
      if ((v64 + 3) > a25 || v67 > v69 || (v64 + 4) > a25 || v69 > v64 + 4)
      {
        goto LABEL_169;
      }

      v70 = v68 + 8;
      v124 = *v67;
      v123 = *v69;
      v71 = *a13;
      v72 = *(a13 + 16);
      v73 = *(a13 + 48);
      v146 = *(a13 + 32);
      v147 = v73;
      v144 = v71;
      v145 = v72;
      v74 = vlpc_2st_cod(v133, v134, &v144, v148, __b, &v144, 3, v54);
      if (v74 >= v70)
      {
        v77 = v124 + v123 + 3;
        v74 = v70;
      }

      else
      {
        v75 = __b[0];
        v76 = DWORD1(__b[0]);
        *v64 = 1;
        v135 = v144;
        v136 = v145;
        v137 = v146;
        v138 = v147;
        v77 = v75 + v76 + 2;
        if (v77 >= 1)
        {
          for (k = 0; k != v77; ++k)
          {
            v79 = __b + k * 4 + 4;
            v80 = (__b + k * 4) < __b || v79 > &v144;
            v81 = v80 || __b + k * 4 > v79;
            v82 = &v64[k + 1];
            v83 = &v64[k + 2];
            v84 = !v81 && v82 >= a24;
            v85 = !v84 || v83 > a25;
            if (v85 || v82 > v83)
            {
              goto LABEL_169;
            }

            *v82 = *(__b + k * 4);
          }
        }
      }

      if ((a26 + 2) > a27 || v125 > a26 + 2)
      {
        goto LABEL_169;
      }

      v130 += 1 + v77;
      *v125 = v74 + 1;
    }

    v41 = a14;
    v37 = a1;
    if (a12 < a11 || (a12 - a11) < 61)
    {
      goto LABEL_169;
    }

    for (m = 0; m != 64; m += 4)
    {
      *(a11 + m) = cosf((*(a13 + m) * 3.1416) / v55);
    }

    if (a2 == 2)
    {
      if (a15 < a14 || (a15 - a14) < 61)
      {
        goto LABEL_169;
      }

      for (n = 0; n != 64; n += 4)
      {
        *(a14 + n) = cosf((*(&v135 + n) * 3.1416) / v55);
      }

      v38 = a25;
      v39 = a24;
      v37 = a1;
    }

    else
    {
      v38 = a25;
      v39 = a24;
    }
  }

  v87 = v130;
  *a28 = 0;
  if (v130 < 1)
  {
    if (!v126)
    {
      return;
    }

LABEL_104:
    if (!a23)
    {
      return;
    }

    if (*(v37 + 122148))
    {
      v96 = &v39[v87];
      if (v96 >= v39 && (v96 + 1) <= v38 && v96 <= v96 + 1)
      {
        *v96 = 0;
        return;
      }
    }

    else
    {
      v131 = v87;
      if (a10 >= v40 && (a10 - v40) >= 61)
      {
        v97 = 0;
        v98 = a29 * 0.5;
        do
        {
          *(v133 + v97) = (v98 / 3.1416) * acosf(*(v40 + v97));
          v97 += 4;
        }

        while (v97 != 64);
        v139 = *a31;
        *&v140 = *(a31 + 2);
        *&v99 = -1;
        *(&v99 + 1) = -1;
        __b[2] = v99;
        __b[3] = v99;
        __b[0] = v99;
        __b[1] = v99;
        v146 = v99;
        v147 = v99;
        v100 = a22 == 1 ? &tbl_mid_gen_wb_5b : &min_distance_thr;
        v101 = (a22 == 1 ? &tbl_mid_unv_wb_5b : &tbl_mid_gen_wb_5b);
        v144 = v99;
        v145 = v99;
        Unified_weighting(&v139, v133, v134, &v144, v148, a20, a22 == 1, a29);
        v102 = 0;
        v103 = 0;
        v104 = 3.4028e38;
        v105 = v101;
        do
        {
          v106 = 0;
          v107 = 0.0;
          do
          {
            v108 = &v105[v106];
            v109 = &v105[v106 + 4];
            if (&v105[v106] < v101 || v109 > v100 || v108 > v109)
            {
              goto LABEL_169;
            }

            v112 = (a4 + v106);
            if (a4 + v106 < a4)
            {
              goto LABEL_169;
            }

            if ((v112 + 1) > a5)
            {
              goto LABEL_169;
            }

            if (v112 > v112 + 1)
            {
              goto LABEL_169;
            }

            v113 = (a13 + v106);
            if (a13 + v106 < a13)
            {
              goto LABEL_169;
            }

            if ((v113 + 1) > *(&a13 + 1))
            {
              goto LABEL_169;
            }

            if (v113 > v113 + 1)
            {
              goto LABEL_169;
            }

            v114 = (__b + v106);
            if ((__b + v106) < __b || v114 + 1 > &__b[4] || v114 > v114 + 1)
            {
              goto LABEL_169;
            }

            v115 = (*v108 * *v113) + ((1.0 - *v108) * *v112);
            *(__b + v106) = v115;
            if (v106)
            {
              v116 = (&v142 + v106 + 12);
              if ((&v142 + v106 + 12) < __b || v116 > v114)
              {
                goto LABEL_169;
              }

              v117 = *v116 + 80.0;
              if (v115 < v117)
              {
                *v114 = v117;
                v115 = v117;
              }
            }

            v118 = v133 + v106;
            if ((v133 + v106) < v133)
            {
              goto LABEL_169;
            }

            if (v118 + 4 > v134)
            {
              goto LABEL_169;
            }

            if (v118 > v118 + 4)
            {
              goto LABEL_169;
            }

            v119 = &v144 + v106;
            if ((&v144 + v106) < &v144 || v119 + 4 > v148 || v119 > v119 + 4)
            {
              goto LABEL_169;
            }

            v107 = v107 + ((*(&v144 + v106) * (*(v133 + v106) - v115)) * (*(v133 + v106) - v115));
            v106 += 4;
          }

          while (v106 != 64);
          if (v107 >= v104)
          {
            v120 = v102;
          }

          else
          {
            v120 = v103;
          }

          v102 = v120;
          if (v107 < v104)
          {
            v104 = v107;
          }

          ++v103;
          v105 += 64;
        }

        while (v103 != 32);
        v121 = &a24[v131];
        if (v121 >= a24 && (v121 + 1) <= a25 && v121 <= v121 + 1)
        {
          *v121 = v120;
          if ((a5 - a4) >= 61 && a5 >= a4 && *(&a13 + 1) >= a13 && (*(&a13 + 1) - a13) >= 61)
          {
            midlsf_dec(a4, a13, v120, &v135, a22, 0, 0, 1);
            reorder_lsf(&v135, 80.0, a29);
            if (a15 >= v41 && (a15 - v41) >= 61)
            {
              for (ii = 0; ii != 64; ii += 4)
              {
                *(v41 + ii) = cosf((*(&v135 + ii) * 3.1416) / v98);
              }

              return;
            }
          }
        }
      }
    }

LABEL_169:
    __break(0x5519u);
  }

  LOWORD(v92) = 0;
  v93 = v130 + 1;
  v94 = &v39[v130 - 1];
  do
  {
    if (v94 < v39 || (v94 + 2) > v38 || v94 > v94 + 2)
    {
      goto LABEL_169;
    }

    v95 = *v94;
    v94 -= 2;
    v92 = 31821 * (v95 + (v92 >> 1)) + 13849;
    *a28 = v92;
    --v93;
  }

  while (v93 > 1);
  v87 = v130;
  if (v126)
  {
    goto LABEL_104;
  }
}

void ShapeSpectrum(_DWORD *a1, float *a2, unint64_t a3, float *a4, unint64_t a5, int a6, int a7, uint64_t a8, unint64_t a9, unint64_t a10, int a11, uint64_t a12)
{
  v12 = a7;
  v13 = a6;
  v76 = *MEMORY[0x1E69E9840];
  v16 = (a1 + 4096);
  if (*(a12 + 110824))
  {
    v17 = 1.0;
  }

  else
  {
    v17 = *(a12 + 110896);
  }

  if (!*(a12 + 52108))
  {
    v12 = a7 + (a1[4289] >> 2);
    v13 = a1[2144] + a6 - (a1[4290] & (a1[4290] >> 31));
  }

  v18 = *(a12 + 64) < 13200 || *(a12 + 67462) != 0;
  v75 = -1;
  *&v19 = -1;
  *(&v19 + 1) = -1;
  v74[2] = v19;
  v74[3] = v19;
  v74[0] = v19;
  v74[1] = v19;
  if (a3 < a2 || (a3 - a2) <= 64)
  {
    goto LABEL_115;
  }

  v20 = 0.5625;
  if (v18)
  {
    get_gain((a2 + 1), a2, 16, 0);
    v20 = v21 + 0.09375;
    if (v20 > 1.0)
    {
      v20 = 1.0;
    }
  }

  *(a12 + 110608) = v20;
  if (*(a12 + 122152))
  {
    if (v13 >= 200)
    {
      v22 = 200;
    }

    else
    {
      v22 = v13;
    }

    v16[231] = SFM_Cal(a9, a10, v22);
  }

  v23 = *(a12 + 64);
  v24 = 0.0;
  if (v23 == 13200 || v23 == 9600)
  {
    v25 = 0.0;
    if (*(a12 + 130) == 2)
    {
      if (v13 >= 1)
      {
        v26 = v13;
        v27 = 0.0;
        v28 = a9;
        do
        {
          if (v28 < a9 || (v28 + 1) > a10 || v28 > v28 + 1)
          {
            goto LABEL_115;
          }

          v29 = *v28++;
          v30 = fabsf(v29);
          if (v30 > v27)
          {
            v27 = v30;
          }

          --v26;
        }

        while (v26);
        v25 = v27 * 16.0;
      }

      v31 = (v12 - v13);
      if (v31 >= 1)
      {
        v32 = (a9 + 4 * v13);
        v24 = 0.0;
        while (v32 >= a9 && (v32 + 1) <= a10 && v32 <= v32 + 1)
        {
          v33 = *v32++;
          v34 = fabsf(v33);
          if (v34 > v24)
          {
            v24 = v34;
          }

          if (!--v31)
          {
            goto LABEL_41;
          }
        }

LABEL_115:
        __break(0x5519u);
      }
    }
  }

  else
  {
    v25 = 0.0;
  }

LABEL_41:
  weight_a(a2, a3, v74, &v76, 16, v17);
  if (a5 < a4 || (a5 - a4) < 253)
  {
    goto LABEL_115;
  }

  lpc2mdct(v74, &v76, a4);
  mdct_preShaping(a9, a10, v13, a4, a5);
  v35 = v12 - v13;
  if (v12 - v13 >= 1)
  {
    v36 = a4 + 63;
    if (a4 + 63 < a4)
    {
      goto LABEL_115;
    }

    if ((a4 + 64) > a5)
    {
      goto LABEL_115;
    }

    if (v36 > a4 + 64)
    {
      goto LABEL_115;
    }

    v37 = (a9 + 4 * v13);
    if (v37 > a10 || v37 < a9 || (v35 & 0x8000) != 0 || (a10 - v37) >> 2 < v35)
    {
      goto LABEL_115;
    }

    if (v35 >= 1)
    {
      v38 = *v36;
      v39 = v35 & 0x7FFF;
      v40 = 1.0 / v38;
      do
      {
        *v37 = *v37 * v40;
        ++v37;
        --v39;
      }

      while (v39);
    }
  }

  v41 = *(a12 + 64);
  if ((v41 == 13200 || v41 == 9600) && *(a12 + 130) == 2)
  {
    v42 = 1.5;
    if (!*(a12 + 122158))
    {
      v42 = 3.0;
    }

    v43 = (v13 / 2);
    v44 = 0.0;
    if (v13 > 1)
    {
      v45 = 0;
      v46 = 0;
      v47 = (a9 + 4 * v13 - 4);
      v48 = 0.0;
      while (v47 >= a9 && (v47 + 1) <= a10 && v47 <= v47 + 1)
      {
        v49 = *v47--;
        v50 = fabsf(v49);
        if (v50 > v48)
        {
          v48 = v50;
          v46 = v45;
        }

        if (v43 == ++v45)
        {
          goto LABEL_69;
        }
      }

      goto LABEL_115;
    }

    v46 = 0;
    v48 = 0.0;
LABEL_69:
    v51 = v13 - v43;
    if (v13 - v43 >= 1)
    {
      v52 = -v51;
      v53 = (a9 + 4 * v51 - 4);
      v44 = 0.0;
      while (v53 >= a9 && (v53 + 1) <= a10 && v53 <= v53 + 1)
      {
        v54 = *v53--;
        v55 = fabsf(v54);
        if (v55 > v44)
        {
          v44 = v55;
        }

        if (v55 > v48)
        {
          v46 = v43;
        }

        LODWORD(v43) = v43 + 1;
        if (__CFADD__(v52++, 1))
        {
          goto LABEL_80;
        }
      }

      goto LABEL_115;
    }

LABEL_80:
    if (v44 <= v48)
    {
      v57 = v48;
    }

    else
    {
      v57 = v44;
    }

    if (v35 < 1)
    {
      v60 = 0.0;
      v65 = 0.0;
    }

    else
    {
      v58 = 0;
      v59 = 0;
      v60 = 0.0;
      v61 = (v12 - v13);
      v62 = (a9 + 4 * v13);
      do
      {
        if (v62 < a9 || (v62 + 1) > a10 || v62 > v62 + 1)
        {
          goto LABEL_115;
        }

        v63 = *v62++;
        v64 = fabsf(v63);
        if (v64 > v60)
        {
          v60 = v64;
          v59 = v58;
        }

        ++v58;
        --v61;
      }

      while (v61);
      v65 = v59 * 4.0;
    }

    v66 = (v60 * v65) <= (v57 * v46) || v25 <= v24;
    v67 = v42 * v48;
    if (!v66 && v60 > v67)
    {
      v69 = (a9 + 4 * v13);
      if (v69 > a10 || v69 < a9 || (v35 & 0x8000) != 0 || (a10 - v69) >> 2 < v35)
      {
        goto LABEL_115;
      }

      if (v35 >= 1)
      {
        v70 = v35 & 0x7FFF;
        v71 = v67 / v60;
        do
        {
          *v69 = *v69 * v71;
          ++v69;
          --v70;
        }

        while (v70);
      }
    }
  }

  if (*(a12 + 111808) && *(a12 + 116900) && !a11 && *(a12 + 116912) > 0.0)
  {
    PsychAdaptLowFreqEmph(a9, a10, a4, a5);
  }
}

void QuantizeSpectrum(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char *a9, unint64_t a10, int a11, int a12, unsigned int a13, int a14, int a15, char *a16, unint64_t a17, uint64_t a18, int a19, int a20, uint64_t a21, int *a22, unint64_t a23, int a24, uint64_t a25, int **a26)
{
  v26 = MEMORY[0x1EEE9AC00](a1);
  v727 = v27;
  v736 = v28;
  v711 = v29;
  v30 = a12;
  v791[0] = *MEMORY[0x1E69E9840];
  v738 = v31;
  v755 = (a25 + 52108);
  v756 = v32;
  LODWORD(v732) = *(v26 + 8556);
  v33 = *(v26 + 8576);
  *v767 = v26;
  v725 = v26 + 0x4000;
  v714 = *(a25 + 111820);
  v710 = v34;
  if (*(a25 + 52108))
  {
    v760 = a13;
    v718 = *(v26 + 8576);
    v35 = a11;
  }

  else
  {
    *(v26 + 7224) = 0;
    v35 = (v33 + a11);
    v30 = *(v26 + 17152) + a12;
    v760 = a13 + (*(v26 + 17156) >> 2);
    v36 = *(v26 + 17160);
    if (v36 < 0)
    {
      v35 = (v35 - v36);
      v30 -= *(v26 + 17164);
    }

    else
    {
      v36 = 0;
    }

    v718 = v36;
    *(a25 + 110612) = 0;
  }

  v773 = -1431655766;
  v772 = NAN;
  v771 = NAN;
  memset(v782, 255, sizeof(v782));
  memset(__b, 255, sizeof(__b));
  memset(v770, 170, sizeof(v770));
  v769 = NAN;
  *&v37 = -1;
  *(&v37 + 1) = -1;
  v778[0] = v37;
  v778[1] = v37;
  v778[2] = v37;
  v778[3] = v37;
  v779 = -1;
  v790[0] = v778;
  v790[1] = v780;
  v790[2] = v778;
  lsp2a_stab(a25 + 5204, v790);
  v38 = a16;
  if (*(a25 + 122152))
  {
    if (a11 >= 200)
    {
      v39 = 200;
    }

    else
    {
      v39 = a11;
    }

    v40 = SFM_Cal(a16, a17, v39);
    v41 = 0.4;
    v42 = 0.1;
    if (a11 < 257 || a11 == 320)
    {
      v38 = a16;
      v43 = v725;
    }

    else
    {
      v38 = a16;
      v43 = v725;
      if (a11 != 512)
      {
        v41 = 0.35;
        v42 = 0.04;
      }
    }

    *(a25 + 122154) = v40 < v41;
    if (*(v43 + 924) < v42)
    {
      *(a25 + 122154) = 1;
    }
  }

  if (v760 >= 1)
  {
    if (a17 < v38)
    {
      goto LABEL_1289;
    }

    v44 = 4 * (v760 & 0x7FFF);
    if (a17 - v38 < v44)
    {
      goto LABEL_1289;
    }

    if (v44 >= 0x12C1)
    {
      goto LABEL_1289;
    }

    memmove(__b, v38, 4 * (v760 & 0x7FFF));
    v38 = a16;
    if (&__b[v44 / 4] < __b)
    {
      goto LABEL_1289;
    }
  }

  if (*(a25 + 129336))
  {
    v719 = *(a25 + 125964);
    v45 = *(a25 + 125968);
    v46 = v760;
  }

  else
  {
    v46 = v760;
    *(a25 + 125968) = v760;
    v45 = v760;
    v719 = v760;
  }

  v748 = v35;
  v713 = v30;
  if (v35 <= v30)
  {
    v47 = v30;
  }

  else
  {
    v47 = v35;
  }

  if (v45 < v47)
  {
    v48 = v47 - v45;
    v49 = &v38[4 * v45];
    do
    {
      if (v49 < v38 || (v49 + 4) > a17 || v49 > v49 + 4)
      {
        goto LABEL_1289;
      }

      *v49 = 0;
      v49 += 4;
      --v48;
    }

    while (v48);
  }

  v50 = &a22[a20];
  __n = v50 + 5;
  v51 = v50 + 7;
  v749 = v50 + 8;
  v751 = a14 - 10;
  v742 = v50 + 7;
  if (*(a25 + 122158))
  {
    PsychAdaptLowFreqEmph(v38, a17, v736, v727);
    v762 = a26[1];
    v765 = *a26;
    v52 = *(a25 + 116904);
    v53 = *(a25 + 140);
    if (v52 >= v53)
    {
      LOWORD(v54) = -1;
    }

    else
    {
      v54 = ((v53 * *(a25 + 111848)) << 8) / (*(a25 + 116908) + *(a25 + 111848) * v52);
    }

    if (__n < a22)
    {
      goto LABEL_1289;
    }

    v744 = (__n + 4);
    if (__n + 4 < a22)
    {
      goto LABEL_1289;
    }

    v733 = v54;
    v58 = *(a25 + 86160);
    v59 = v58;
    v60 = 1.0 / *(a25 + 110896);
    if (v58 >= 0.0)
    {
      v63 = v59 * 32768.0 + 0.5;
      LOWORD(v62) = 0x7FFF;
      if (v63 < 32767.0)
      {
        v62 = v63;
      }
    }

    else
    {
      v61 = v59 * 32768.0 + -0.5;
      LOWORD(v62) = 0x8000;
      if (v61 > -32768.0)
      {
        v62 = v61;
      }
    }

    v64 = v62;
    v65 = v60 * 0.5;
    v66 = (v60 * 0.5);
    if (v65 >= 0.0)
    {
      v67 = v66 * 32768.0 + 0.5;
      v68 = v35;
      if (v67 >= 32767.0)
      {
        LOWORD(v69) = 0x7FFF;
LABEL_69:
        v78 = *v755;
        v79 = *(a25 + 130);
        v80 = *(a25 + 86152);
        memset(v784, 170, sizeof(v784));
        v774 = -21846;
        memset(v783, 170, sizeof(v783));
        tcx_arith_render_envelope(v738, v756, v68, v760, v64, v69, v784, &v785);
        if (v760 >= 1)
        {
          v81 = a16;
          v82 = v765;
          v83 = v760;
          while (v81 >= a16 && (v81 + 1) <= a17 && v81 <= v81 + 1)
          {
            if (*v81 >= 0.0)
            {
              if (v82 < v765 || (v82 + 1) > v762 || v82 > v82 + 1)
              {
                goto LABEL_1289;
              }

              *v82 = 0;
            }

            else
            {
              *v81 = -*v81;
              if (v82 < v765 || (v82 + 1) > v762 || v82 > v82 + 1)
              {
                goto LABEL_1289;
              }

              *v82 = 1;
            }

            ++v82;
            ++v81;
            if (!--v83)
            {
              goto LABEL_84;
            }
          }

          goto LABEL_1289;
        }

LABEL_84:
        if (!v78)
        {
          if ((__n + 1) > a23 || __n + 1 < __n)
          {
            goto LABEL_1289;
          }

          v88 = 0;
          *__n = 0;
          v715 = a14 - 10;
          v86 = v760;
          v87 = a25;
LABEL_204:
          if (*(v87 + 129336))
          {
            v161 = *(v87 + 125964);
            if (v161 >= v86)
            {
              LOWORD(v161) = v86;
            }
          }

          else
          {
            LOWORD(v161) = v86;
          }

          v707 = v88;
          tcx_arith_scale_envelope(v760, v161, v784, &v785, v715, v79 > 1, v784, &v785, &v774);
          v162 = v774;
          v163 = v774 - 1;
          if (v162 == -32768)
          {
            v163 = 0x8000;
          }

          v734 = v86 - 1;
          if (v86 >= 1)
          {
            v164 = v163;
            v165 = v784;
            v166 = v783;
            v167 = v760;
            do
            {
              v168 = v165 + 1;
              v169 = v165 < v784 || v168 > &v785;
              v170 = v169 || v165 > v168;
              v171 = v166 + 1;
              v172 = !v170 && v166 >= v783;
              v173 = !v172 || v171 > v784;
              if (v173 || v166 > v171)
              {
                goto LABEL_1289;
              }

              v176 = *v165++;
              v175 = v176;
              if (v176 == 0x8000)
              {
                LOWORD(v177) = 0x7FFF;
              }

              else
              {
                v177 = -v175;
              }

              *v166++ = expfp(v177, v164);
            }

            while (--v167);
          }

          v178 = v760;
          v179 = tcx_arith_rateloop(a16, a17, v760, v784, &v785, v162, v783, v784, v715, a25 + 111856, a25 + 116656, (a25 + 3528));
          kMax = tcx_arith_find_kMax(a16, a17, v760, a25 + 111856, a25 + 116656, v179, v80);
          v709 = kMax;
          if ((kMax & 0x80000000) != 0)
          {
            v187 = 0;
            v189 = 0;
            LOWORD(v785) = -21846;
            v788[0] = -21846;
            v186 = 0xFFFF00000000;
            v790[0] = 0xFFFF00000000;
            LODWORD(v790[1]) = 0;
            v205 = kMax;
          }

          else
          {
            v181 = kMax + 1;
            v182 = a16;
            v183 = v784;
            v184 = v181;
            do
            {
              if (v182 < a16 || (v182 + 1) > a17 || v182 > v182 + 1 || v183 < v784 || v183 + 1 > &v785 || v183 > v183 + 1)
              {
                goto LABEL_1289;
              }

              v185 = *v182++;
              *v183++ = (v80 + (v185 * v179));
              --v184;
            }

            while (v184);
            LOWORD(v785) = -21846;
            v788[0] = -21846;
            v186 = 0xFFFF00000000;
            v790[0] = 0xFFFF00000000;
            LODWORD(v790[1]) = 0;
            v187 = 0;
            if ((kMax & 0x80000000) != 0)
            {
              v189 = 0;
              v205 = kMax;
            }

            else
            {
              v188 = 0;
              v189 = 0;
              v722 = kMax + 1;
              v190 = (v784 + 4);
              v191 = v784;
              v192 = kMax;
              while (1)
              {
                v193 = v784 + v188;
                v194 = v193 + 1;
                if (v193 < v784 || v194 > &v785 || v193 > v194)
                {
                  goto LABEL_1289;
                }

                v197 = *(v784 + v188);
                v198 = &v783[v188];
                v199 = v198 + 1 > v784 || v198 > v198 + 1;
                v200 = !v199 && v198 >= v783;
                v201 = v200;
                if (v197)
                {
                  if (!v201)
                  {
                    goto LABEL_1289;
                  }

                  while (1)
                  {
                    powfp_odd2(*v198, v197, &v785, v788);
                    if (v788[0] + 2 <= v785)
                    {
                      break;
                    }

                    v197 = *v193 - 1;
                    *v193 = v197;
                  }

                  v202 = ari_encode_14bits_range(v744, a23, v189, v715, v790, v788[0] >> 1, (v785 >> 1));
                  v203 = &v765[v188];
                  if (v203 < v765 || (v203 + 1) > v762 || v203 > v203 + 1)
                  {
                    goto LABEL_1289;
                  }

                  v204 = ari_encode_14bits_sign(v744, a23, v202, v715, v790, *v203);
                }

                else
                {
                  if (!v201)
                  {
                    goto LABEL_1289;
                  }

                  v204 = ari_encode_14bits_range(v744, a23, v189, v715, v790, (*v198 >> 1), 0x4000);
                }

                if (SHIDWORD(v790[0]) <= SLODWORD(v790[0]))
                {
                  break;
                }

                v186 = v790[0];
                ++v188;
                --v192;
                v190 = (v190 + 4);
                v187 = v790[1];
                --v181;
                v191 = (v191 + 4);
                v189 = v204;
                if (v188 == v722)
                {
                  v205 = v709;
                  goto LABEL_290;
                }
              }

              v206 = *(v784 + v188);
              if (v206 < 2)
              {
                goto LABEL_294;
              }

              v790[0] = v186;
              LODWORD(v790[1]) = v187;
              v207 = v206 - 1;
              *v193 = v207;
              powfp_odd2(v783[v188], v207, &v785, v788);
              v208 = ari_encode_14bits_range(v744, a23, v189, v715, v790, v788[0] >> 1, (v785 >> 1));
              v209 = &v765[v188];
              if (v209 < v765 || (v209 + 1) > v762 || v209 > v209 + 1)
              {
                goto LABEL_1289;
              }

              v204 = ari_encode_14bits_sign(v744, a23, v208, v715, v790, *v209);
              if (SHIDWORD(v790[0]) <= SLODWORD(v790[0]))
              {
LABEL_294:
                v790[0] = v186;
                LODWORD(v790[1]) = v187;
                v205 = v188 - 1;
                if (v709 >= v188)
                {
                  do
                  {
                    v219 = (v191 + 4);
                    v220 = v191 < v784 || v219 > &v785;
                    if (v220 || v191 > v219)
                    {
                      goto LABEL_1289;
                    }

                    *v191 = 0;
                    v191 = (v191 + 4);
                  }

                  while (--v181);
                }
              }

              else
              {
                v186 = v790[0];
                v187 = v790[1];
                if (v709 > v188)
                {
                  do
                  {
                    v210 = (v190 + 4);
                    v211 = v190 < v784 || v210 > &v785;
                    if (v211 || v190 > v210)
                    {
                      goto LABEL_1289;
                    }

                    *v190 = 0;
                    v190 = (v190 + 4);
                  }

                  while (--v192);
                }

                v205 = v188;
LABEL_290:
                v189 = v204;
              }
            }

            v178 = v760;
          }

          if (v205 + 1 >= v178)
          {
            v226 = v189;
          }

          else
          {
            v222 = &v783[v205 + 1];
            while (1)
            {
              v223 = v222 + 1;
              if (v222 < v783 || v223 > v784 || v222 > v223)
              {
                goto LABEL_1289;
              }

              v226 = ari_encode_14bits_range(v744, a23, v189, v715, v790, (*v222 >> 1), 0x4000);
              if (SHIDWORD(v790[0]) <= SLODWORD(v790[0]))
              {
                break;
              }

              v186 = v790[0];
              v187 = v790[1];
              ++v205;
              ++v222;
              v189 = v226;
              if (v734 == v205)
              {
                goto LABEL_318;
              }
            }

            v790[0] = v186;
            LODWORD(v790[1]) = v187;
            v226 = v189;
            if (v205 != v734)
            {
              v229 = (__n + 4);
              v230 = a23;
              v227 = v189;
              v228 = v715;
LABEL_319:
              done = ari_done_cbr_encoding_14bits(v229, v230, v227, v228, v790);
              v231 = a16;
              if ((v709 & 0x80000000) == 0)
              {
                v232 = 0;
                v233 = v709 + 1;
                while (1)
                {
                  v234 = v784 + v232 + 4;
                  v235 = (v784 + v232) < v784 || v234 > &v785;
                  v236 = v235 || v784 + v232 > v234;
                  v237 = &v765[v232 / 4];
                  v238 = &v765[v232 / 4 + 1];
                  v239 = !v236 && v237 >= v765;
                  v240 = !v239 || v238 > v762;
                  v241 = v240 || v237 > v238;
                  v242 = &a16[v232];
                  v243 = &a16[v232 + 4];
                  v244 = !v241 && v242 >= a16;
                  v245 = !v244 || v243 > a17;
                  if (v245 || v242 > v243)
                  {
                    goto LABEL_1289;
                  }

                  *v242 = (*(v784 + v232) - 2 * *v237 * *(v784 + v232));
                  v232 += 4;
                  if (4 * (v709 + 1) == v232)
                  {
                    goto LABEL_349;
                  }
                }
              }

              v233 = 0;
LABEL_349:
              if (v748 <= v760)
              {
                v247 = v760;
              }

              else
              {
                v247 = v748;
              }

              if (v233 < v247)
              {
                v248 = &a16[4 * v233];
                while (v248 >= a16 && (v248 + 4) <= a17 && v248 <= v248 + 4)
                {
                  *v248 = 0;
                  v248 += 4;
                  if (v247 <= ++v233)
                  {
                    goto LABEL_358;
                  }
                }

                goto LABEL_1289;
              }

LABEL_358:
              LODWORD(v249) = v760;
              if (v749 < a22 || v744 > a23 || v749 > v744)
              {
                goto LABEL_1289;
              }

              v752 = v751 - v707;
              *v749 = v752;
              v73 = 1.0;
              if (v719 >= 1)
              {
                v250 = 0;
                v251 = 0;
                v252 = a16;
                v253 = v719;
                while (v252 >= a16 && (v252 + 1) <= a17 && v252 <= v252 + 1)
                {
                  v254 = *v252++;
                  v255 = v254;
                  if (v254 < 0)
                  {
                    v255 = -v255;
                  }

                  v251 += 2 * v255 * v250++;
                  if (!--v253)
                  {
                    goto LABEL_371;
                  }
                }

                goto LABEL_1289;
              }

              v251 = 0;
LABEL_371:
              v256 = (__n + 4);
LABEL_573:
              if (v249 < 1)
              {
                v746 = 0;
              }

              else
              {
                v348 = v249;
                v349 = v782;
                do
                {
                  v350 = v349 + 1;
                  if (v349 < v782 || v350 > v783 || v349 > v350)
                  {
                    goto LABEL_1289;
                  }

                  *v349++ = 1065353216;
                  --v348;
                }

                while (v348);
                v746 = 1;
              }

              goto LABEL_586;
            }
          }

LABEL_318:
          v227 = v226;
          v228 = v226 + v187 + 16;
          v229 = (__n + 4);
          v230 = a23;
          goto LABEL_319;
        }

        v84 = *(a25 + 86172);
        v85 = *(a25 + 116912);
        v777 = -1431655766;
        v776 = -1431655766;
        bzero(v790, 0xC80uLL);
        v775 = 0.0;
        memset(v788, 170, sizeof(v788));
        v721 = v79;
        if ((v84 - 4) > 0xFFFFFFFD)
        {
          v89 = (v760 >> 4);
          v90 = 1.0 / ((2 * v89) | 1);
          if (v89 < 1)
          {
            v108 = 0;
            v91 = 0.0;
            v92 = a16;
          }

          else
          {
            v91 = 0.0;
            v92 = a16;
            v93 = a16;
            v94 = (v760 >> 4);
            do
            {
              if (v93 < a16 || (v93 + 1) > a17 || v93 > v93 + 1)
              {
                goto LABEL_1289;
              }

              v95 = *v93++;
              v91 = v91 + v95;
              --v94;
            }

            while (v94);
            v96 = 0;
            v97 = &a16[4 * v89];
            do
            {
              v98 = &a16[v96 + 4];
              v100 = &a16[v96] < a16 || v98 > a17 || &a16[v96] > v98;
              v101 = v790 + v96;
              v102 = v790 + v96 + 4;
              v103 = !v100 && v101 >= v790;
              if (!v103 || v102 > &v790[400] || v101 > v102)
              {
                goto LABEL_1289;
              }

              v106 = *&a16[v96] - (v91 * v90);
              if (v106 < 0.0)
              {
                v106 = 0.0;
              }

              *(v790 + v96) = v106;
              v107 = &v97[v96];
              if (&v97[v96] < a16 || (v107 + 1) > a17 || v107 > v107 + 1)
              {
                goto LABEL_1289;
              }

              v91 = v91 + *v107;
              v96 += 4;
            }

            while (4 * v89 != v96);
            v108 = v760 >> 4;
          }

          v116 = (v760 - v89);
          if (v108 < v116)
          {
            v117 = v108;
            v118 = v108;
            v119 = &v92[v89];
            v120 = v92;
            v121 = v790;
            v122 = &v92[-v89];
            do
            {
              v123 = &v120[v118];
              v124 = &v120[v118 + 1];
              v126 = &v120[v118] < v92 || v124 > a17 || v123 > v124;
              v127 = (v121 + v118 * 4);
              v128 = v121 + v118 * 4 + 4;
              if (v126 || v127 < v790 || v128 > &v790[400] || v127 > v128)
              {
                goto LABEL_1289;
              }

              v132 = *v123 - (v91 * v90);
              if (v132 < 0.0)
              {
                v132 = 0.0;
              }

              *v127 = v132;
              v133 = &v122[v118];
              if (&v122[v118] < v92)
              {
                goto LABEL_1289;
              }

              if ((v133 + 1) > a17)
              {
                goto LABEL_1289;
              }

              if (v133 > v133 + 1)
              {
                goto LABEL_1289;
              }

              v134 = &v119[v118];
              if (&v119[v118] < v92 || (v134 + 1) > a17 || v134 > v134 + 1)
              {
                goto LABEL_1289;
              }

              ++v117;
              ++v119;
              v91 = (v91 - *v133) + *v134;
              ++v122;
              v121 = (v121 + 4);
              ++v120;
            }

            while (v117 < v116);
            v108 = v117;
          }

          if (v108 < v760)
          {
            v135 = v760 - v108;
            v136 = v108;
            v137 = v92;
            v138 = v790;
            v139 = &v92[-v89];
            do
            {
              v140 = &v137[v136];
              v141 = &v137[v136 + 1];
              v142 = &v137[v136] < v92 || v141 > a17;
              v143 = v142 || v140 > v141;
              v144 = (v138 + v136 * 4);
              v145 = v138 + v136 * 4 + 4;
              v146 = !v143 && v144 >= v790;
              v147 = !v146 || v145 > &v790[400];
              if (v147 || v144 > v145)
              {
                goto LABEL_1289;
              }

              v149 = *v140 - (v91 * v90);
              if (v149 < 0.0)
              {
                v149 = 0.0;
              }

              *v144 = v149;
              v150 = &v139[v136];
              if (&v139[v136] < v92 || (v150 + 1) > a17 || v150 > v150 + 1)
              {
                goto LABEL_1289;
              }

              v91 = v91 - *v150;
              ++v139;
              v138 = (v138 + 4);
              ++v137;
            }

            while (--v135);
          }

          v151 = SearchPeriodicityIndex(v790, &v790[400], v92, a17, v760, a14 - 11, v733, &v775, v85);
          v152 = __n + 1;
          if (__n + 1 < __n || v742 > a23 || v152 > v742)
          {
            goto LABEL_1289;
          }

          *v152 = v151;
          v153 = v760 < 256 || a14 < 162;
          v154 = v153;
          UnmapIndex(v151, v760 > 255, v733, v154, &v776, &v777);
          v155 = v776;
          v785 = v788;
          v786 = v789;
          v787 = v788;
          v156 = v777;
          tcx_hm_render(v777, v776, &v785);
          if (v742)
          {
            if (v749 > a23 || v742 > v749)
            {
              goto LABEL_1289;
            }
          }

          v785 = 0x3E4CCCCD3F000000;
          v740 = v84;
          v158 = v84 == 2;
          v159 = (&v785 | (4 * v158));
          if (v159 < &v785 || v159 + 1 > &v786 || v159 > v159 + 1)
          {
            goto LABEL_1289;
          }

          v86 = v760;
          if (*v159 > v775)
          {
            goto LABEL_198;
          }

          LODWORD(__N) = v760;
          re = tcx_hm_get_re(a16, a17, 0, v156, v155, v788, v789, v157, v784, &v785, __N);
          v215 = *&re;
          v216 = (&qGains + 8 * v158);
          if (v84 != 3)
          {
            v217 = 0;
            v276 = -4;
            v277 = v216;
            v278 = a16;
            while (v277 >= v216 && v277 + 1 <= v216 + 4 && v277 <= v277 + 1)
            {
              v279 = *v277;
              LODWORD(__Na) = v760;
              v280 = tcx_hm_get_re(v278, a17, *v277, v156, v155, v788, v789, v213, v784, &v785, __Na);
              if (v217)
              {
                v281 = 1.0;
              }

              else
              {
                v281 = 1.05;
              }

              if ((v281 * *&v280) < v215)
              {
                *v742 = v276 + 4;
                v217 = v279;
                v215 = *&v280;
              }

              ++v277;
              v103 = __CFADD__(v276++, 1);
              v278 = a16;
              if (v103)
              {
                goto LABEL_416;
              }
            }

            goto LABEL_1289;
          }

          v217 = *v216;
          LODWORD(__Na) = v760;
          v218 = tcx_hm_get_re(a16, a17, *v216, v156, v155, v788, v789, v213, v784, &v785, __Na);
          if ((*&v218 * 1.05) >= v215)
          {
LABEL_198:
            v87 = a25;
          }

          else
          {
            *v742 = 0;
LABEL_416:
            v282 = v217;
            v86 = v760;
            v87 = a25;
            if (v282 >= 1)
            {
              *__n = 1;
              v283 = __n[1];
              if ((v283 & 0x100) != 0)
              {
                v697 = &NumRatioBits + 68 * (v760 > 255);
                v698 = &v697[4 * (v283 >> 9)];
                v160 = a14 - 10;
                v285 = v740;
                if (v698 < v697 || v698 + 4 > v697 + 68 || v698 > v698 + 4)
                {
                  goto LABEL_1289;
                }

                v284 = *v698 + 1;
              }

              else
              {
                v284 = 9;
                v160 = a14 - 10;
                v285 = v740;
              }

              v785 = v788;
              if (v285 == 2)
              {
                v88 = v284 + 2;
              }

              else
              {
                v88 = v284;
              }

              v786 = v789;
              v787 = v788;
              tcx_hm_modify_envelope(v282, v156, v155, &v785, v784, &v785, v760);
              goto LABEL_203;
            }
          }

          *__n = 0xFFFFFFFF00000000;
          if (v749 > a23 || v742 > v749)
          {
            goto LABEL_1289;
          }

          *v742 = 0;
          v88 = 1;
        }

        else
        {
          v86 = v760;
          v87 = a25;
          if ((__n + 1) > a23 || __n + 1 < __n)
          {
            goto LABEL_1289;
          }

          v88 = 0;
          *__n = 0;
        }

        v160 = a14 - 10;
LABEL_203:
        v715 = v160 - v88;
        v79 = v721;
        goto LABEL_204;
      }
    }

    else
    {
      v67 = v66 * 32768.0 + -0.5;
      v68 = v35;
      if (v67 <= -32768.0)
      {
        LOWORD(v69) = 0x8000;
        goto LABEL_69;
      }
    }

    v69 = v67;
    goto LABEL_69;
  }

  v705 = &a22[a20];
  if (*(v725 + 912) && *v755)
  {
    if (a15 || (v55 = *(a25 + 116904), v56 = *(a25 + 140), v55 >= v56))
    {
      LOWORD(v57) = -1;
    }

    else
    {
      v57 = ((v56 * *(a25 + 111848)) << 8) / (*(a25 + 116908) + *(a25 + 111848) * v55);
    }

    v109 = a14 - 11;
    if (*(a25 + 116900))
    {
      v110 = *(a25 + 116912);
    }

    else
    {
      v110 = -1.0;
    }

    v70 = v749;
    v257 = v57;
    v258 = SearchPeriodicityIndex(v38, a17, 0, 0, v46, v109, v57, &v769, v110);
    v259 = v257;
    v260 = v258;
    ConfigureContextHm(v46, v109, v258, v259, a26);
    v708 = v260;
    if ((v260 & 0x100) != 0)
    {
      v262 = (&NumRatioBits + 68 * (v46 > 255));
      v263 = &v262[v260 >> 9];
      if (v263 < v262 || v263 + 1 > v262 + 17 || v263 > v263 + 1)
      {
        goto LABEL_1289;
      }

      v261 = a14 - 11;
      v113 = *v263;
    }

    else
    {
      v261 = a14 - 11;
      v113 = 8;
    }

    if (a17 < a16)
    {
      goto LABEL_1289;
    }

    if ((v46 & 0x80000000) != 0)
    {
      goto LABEL_1289;
    }

    if ((a17 - a16) >> 2 < v46)
    {
      goto LABEL_1289;
    }

    v264 = SQ_gain(a16, (*(a21 + 3344) * v261), v46);
    if (v749 < a22 || v749 > a23 || v46 > 0x4B0 || v46 > (a23 - v749) >> 2)
    {
      goto LABEL_1289;
    }

    v73 = v264;
    tcx_scalar_quantization(a16, v749, v46, a25 + 111856, a15, v264, *(v725 + 896), v265);
    v773 = 0;
    v266 = ACcontextMapping_encode2_estimate_no_mem_s17_LC(v749, a23, v46, &v770[1], &v770[4], v261, &v773, 0);
    v770[2] = 0;
    v267 = v261;
    v111 = v261 - v113;
    v268 = ACcontextMapping_encode2_estimate_no_mem_s17_LC(v749, a23, v46, v770, &v770[3], v111, &v770[2], a26);
    v269 = v773;
    if (v773 <= v266)
    {
      v270 = v266;
    }

    else
    {
      v270 = v773;
    }

    v271 = v770[2];
    v272 = v268;
    if (v770[2] <= v268)
    {
      v273 = v268;
    }

    else
    {
      v273 = v770[2];
    }

    v274 = v270 - (v113 + v273);
    if (v274 > 2)
    {
      goto LABEL_398;
    }

    if (v274 < 0)
    {
      v274 = -v274;
    }

    if (v274 > 2 || v769 <= 2.6)
    {
      v115 = a16;
      if (__n < a22)
      {
        goto LABEL_1289;
      }

      v286 = __n + 1;
      if ((__n + 1) > a23)
      {
        goto LABEL_1289;
      }

      if (__n > v286)
      {
        goto LABEL_1289;
      }

      *__n = 0;
      if (v51 > a23)
      {
        goto LABEL_1289;
      }

      if (v286 > v51)
      {
        goto LABEL_1289;
      }

      *v286 = v708;
      if (v51 > v749)
      {
        goto LABEL_1289;
      }

      *v51 = v770[1];
      v704 = 1;
      v708 = -1;
      v271 = v269;
      v272 = v266;
      v111 = v267;
    }

    else
    {
LABEL_398:
      v115 = a16;
      if (__n < a22)
      {
        goto LABEL_1289;
      }

      v275 = __n + 1;
      if ((__n + 1) > a23)
      {
        goto LABEL_1289;
      }

      if (__n > v275)
      {
        goto LABEL_1289;
      }

      *__n = 1;
      if (v51 > a23)
      {
        goto LABEL_1289;
      }

      if (v275 > v51)
      {
        goto LABEL_1289;
      }

      *v275 = v708;
      if (v51 > v749)
      {
        goto LABEL_1289;
      }

      *v51 = v770[0];
      v770[4] = v770[3];
      v773 = v271;
      v704 = v113 >= 0;
    }

    done = v272;
    v114 = v271;
    if (v271)
    {
      v112 = v271;
    }

    else
    {
      v112 = v272;
    }
  }

  else
  {
    v70 = v50 + 8;
    if (a17 < v38)
    {
      goto LABEL_1289;
    }

    if ((v46 & 0x80000000) != 0)
    {
      goto LABEL_1289;
    }

    if ((a17 - v38) >> 2 < v46)
    {
      goto LABEL_1289;
    }

    v71 = SQ_gain(v38, (*(a21 + 3344) * v751), v46);
    if (v749 < a22 || v749 > a23 || v46 > 0x4B0 || v46 > (a23 - v749) >> 2)
    {
      goto LABEL_1289;
    }

    v73 = v71;
    tcx_scalar_quantization(a16, v749, v46, a25 + 111856, a15, v71, *(v725 + 896), v72);
    v773 = 0;
    if (v51)
    {
      if (v51 < a22 || v51 > v749)
      {
        goto LABEL_1289;
      }

      v74 = v749;
      v75 = a23;
      v76 = v46;
      v77 = v51;
    }

    else
    {
      v74 = v749;
      v75 = a23;
      v76 = v46;
      v77 = 0;
    }

    v111 = a14 - 10;
    v112 = ACcontextMapping_encode2_estimate_no_mem_s17_LC(v74, v75, v76, v77, &v770[4], v751, &v773, 0);
    v113 = 0;
    v704 = 0;
    done = v112;
    v114 = v773;
    if (v773)
    {
      v112 = v773;
    }

    v708 = -1;
    v115 = a16;
  }

  v752 = v111;
  v287 = v111;
  if ((v46 & (v46 - 1)) != 0)
  {
    v288 = v112;
  }

  else
  {
    v288 = v112 + 1;
  }

  v289 = *(a21 + 3344) * (v287 / v288);
  *(a21 + 3344) = v289;
  v290 = 1.25;
  if (v289 > 1.25 || (v290 = 0.75, v289 < 0.75))
  {
    *(a21 + 3344) = v290;
  }

  if (v70 < a22 || (v291 = *(v725 + 896), v51) && (v51 < a22 || v70 > a23 || v51 > v70))
  {
LABEL_1289:
    __break(0x5519u);
  }

  v703 = v113;
  v292 = 0;
  v293 = v70;
  v294 = 0;
  v295 = *(v725 + 900);
  v296 = a26;
  if (v708 < 0)
  {
    v296 = 0;
  }

  v763 = v296;
  LODWORD(v790[0]) = v114;
  LODWORD(v784[0]) = *v51;
  v297 = v770[4];
  v298 = (v287 * -0.0025) + 2.3;
  v299 = 1.0;
  if (v298 < 1.0)
  {
    v298 = 1.0;
  }

  v723 = v298;
  v706 = 1.0 / v298;
  v745 = 1.0 / v287;
  v300 = v752;
  v301 = a23 - v293;
  v303 = a23 < v293 || v46 > 0x4B0;
  v305 = a17 < v115 || v301 >> 2 < v46 || v303;
  v701 = (a17 - v115) >> 2;
  v702 = v301 >> 2;
  if (v701 < v46)
  {
    v306 = 1;
  }

  else
  {
    v306 = v305;
  }

  v307 = 0.25;
  v308 = 0.0;
  v309 = 4;
  v310 = 0.0;
  v757 = v73;
  v311 = 0.0;
  v312 = 0.0;
  do
  {
    v313 = v73;
    if (v295 != 2)
    {
      if (LODWORD(v790[0]))
      {
        if (!v292)
        {
          v315 = __exp10((v307 / 10.0));
          v115 = a16;
          *&v315 = v315;
          v73 = v73 * *&v315;
          v307 = v307 + v307;
LABEL_477:
          v294 = 1;
          v310 = v313;
          if (v306)
          {
            goto LABEL_1289;
          }

          goto LABEL_482;
        }

        v314 = v73 * v308;
        v294 = 1;
        v310 = v73;
      }

      else
      {
        if (!v294)
        {
          v316 = __exp10((v307 / -10.0));
          v115 = a16;
          *&v316 = v316;
          v73 = v73 * *&v316;
          v307 = v307 + v307;
          goto LABEL_481;
        }

        v314 = v73 * v310;
        v294 = 1;
        v308 = v73;
      }

      v292 = 1;
      v73 = sqrtf(v314);
      if (v306)
      {
        goto LABEL_1289;
      }

      goto LABEL_482;
    }

    if (LODWORD(v790[0]))
    {
      v311 = (LODWORD(v790[0]) - v300 + 10);
      if (v292)
      {
        v73 = ((v308 * v311) + (v73 * v312)) / (v312 + v311);
        v294 = 1;
        v310 = v313;
        goto LABEL_469;
      }

      v299 = v723;
      v73 = v73 * (((((SLODWORD(v790[0]) / 0.96) * v745) + -1.0) * v723) + 1.0);
      goto LABEL_477;
    }

    v312 = (v752 + 10 - v112);
    if (v294)
    {
      v73 = ((v311 * v73) + (v310 * v312)) / (v311 + v312);
      v294 = 1;
      v308 = v313;
LABEL_469:
      v292 = 1;
      if (v306)
      {
        goto LABEL_1289;
      }

      goto LABEL_482;
    }

    v299 = v706;
    v73 = v73 * (1.0 - ((((v112 * -0.96) * v745) + 1.0) * v706));
LABEL_481:
    v292 = 1;
    v308 = v313;
    if (v306)
    {
      goto LABEL_1289;
    }

LABEL_482:
    tcx_scalar_quantization(v115, v749, v760, a25 + 111856, a15, v73, v291, v299);
    LODWORD(v790[0]) = v295 < 1;
    v300 = v752;
    v112 = ACcontextMapping_encode2_estimate_no_mem_s17_LC(v749, a23, v760, v784, &v770[4], v752, v790, v763);
    if (v295 >= 1)
    {
      if ((v317 = v770[4], v318 = v790[0], v770[4] >= v297) && SLODWORD(v790[0]) >= v114 || (!LODWORD(v790[0]) ? (v319 = v114 <= 0) : (v319 = 1), !v319 ? (v320 = v770[4] <= v297) : (v320 = 1), !v320 || !(LODWORD(v790[0]) | v114)))
      {
        *v742 = v784[0];
        v757 = v73;
        done = v112;
        v297 = v317;
        v114 = v318;
      }
    }

    --v309;
    v115 = a16;
  }

  while (v309);
  if (v295 < 1)
  {
    v114 = v790[0];
    v322 = v742;
    *v742 = v784[0];
    done = v112;
    v249 = v760;
    v321 = a22;
    v256 = v749;
  }

  else
  {
    v249 = v760;
    v256 = v749;
    v73 = v757;
    tcx_scalar_quantization(a16, v749, v760, a25 + 111856, a15, v757, v291, v299);
    v770[4] = v297;
    v321 = a22;
    v322 = v742;
  }

  v773 = v114;
  if (!v704)
  {
    goto LABEL_527;
  }

  if (v770[4] < v249)
  {
    v323 = v249 - v770[4];
    v324 = &v321[a20 + 8 + v770[4]];
    while (v324 >= v321 && (v324 + 1) <= a23 && v324 <= v324 + 1)
    {
      *v324++ = 0;
      if (!--v323)
      {
        goto LABEL_507;
      }
    }

    goto LABEL_1289;
  }

LABEL_507:
  v770[2] = 1;
  if ((v708 & 0x80000000) == 0)
  {
    v325 = ACcontextMapping_encode2_estimate_no_mem_s17_LC(v256, a23, v249, &v770[1], &v770[3], v752, &v770[2], 0);
    if (!v770[2])
    {
      v231 = a16;
      if (done > v325 + v703)
      {
        if (__n < v321)
        {
          goto LABEL_1289;
        }

        if ((__n + 1) > a23)
        {
          goto LABEL_1289;
        }

        if (__n > __n + 1)
        {
          goto LABEL_1289;
        }

        *__n = 0;
        if (v322 < v321 || v256 > a23 || v322 > v256)
        {
          goto LABEL_1289;
        }

        v114 = 0;
        v752 += v703;
        *v322 = v770[1];
        v770[4] = v770[3];
        v773 = 0;
        v708 = -1;
        done = v325;
      }

      goto LABEL_528;
    }

LABEL_527:
    v231 = a16;
    goto LABEL_528;
  }

  v326 = ACcontextMapping_encode2_estimate_no_mem_s17_LC(v256, a23, v249, v770, &v770[3], v752 - v703, &v770[2], a26);
  if (v770[2])
  {
    goto LABEL_527;
  }

  v231 = a16;
  if (done > v326 + v703)
  {
    if (__n < v321)
    {
      goto LABEL_1289;
    }

    v327 = __n + 1;
    if ((__n + 1) > a23)
    {
      goto LABEL_1289;
    }

    if (__n > v327)
    {
      goto LABEL_1289;
    }

    *__n = 1;
    if (v322 < v321)
    {
      goto LABEL_1289;
    }

    if (v256 > a23)
    {
      goto LABEL_1289;
    }

    if (v322 > v256)
    {
      goto LABEL_1289;
    }

    *v322 = v770[0];
    if (v327 > v322)
    {
      goto LABEL_1289;
    }

    v114 = 0;
    v708 = *v327;
    v770[4] = v770[3];
    v773 = 0;
    done = v326;
    v752 -= v703;
  }

LABEL_528:
  v328 = sqrt((160.0 / v249));
  if (v328 > v73)
  {
    if (v256 > a23 || v702 < v249 || v701 < v249)
    {
      goto LABEL_1289;
    }

    v73 = v328;
    tcx_scalar_quantization(v231, v256, v249, a25 + 111856, a15, v73, *(v725 + 896), 160.0);
    v773 = 1;
    if (v322)
    {
      if (v322 < v321 || v322 > v256)
      {
        goto LABEL_1289;
      }

      if (v708 < 0)
      {
        v329 = 0;
      }

      else
      {
        v329 = a26;
      }

      v330 = v256;
      v331 = a23;
      v332 = v249;
      v333 = v322;
    }

    else
    {
      if (v708 < 0)
      {
        v329 = 0;
      }

      else
      {
        v329 = a26;
      }

      v330 = v256;
      v331 = a23;
      v332 = v249;
      v333 = 0;
    }

    done = ACcontextMapping_encode2_estimate_no_mem_s17_LC(v330, v331, v332, v333, &v770[4], v752, &v773, v329);
    v114 = v773;
    v231 = a16;
  }

  if (v114 && v770[4] < v249)
  {
    v334 = v249 - v770[4];
    v335 = &v321[a20 + 8 + v770[4]];
    while (v335 >= v321 && (v335 + 1) <= a23 && v335 <= v335 + 1)
    {
      *v335++ = 0;
      if (!--v334)
      {
        goto LABEL_551;
      }
    }

    goto LABEL_1289;
  }

LABEL_551:
  if (v249 >= 1)
  {
    v336 = 0;
    v337 = 0;
    v251 = 0;
    do
    {
      v338 = &v705[v337 + 8];
      v339 = &v705[v337 + 9];
      v341 = v338 < v321 || v339 > a23 || v338 > v339;
      v342 = (v231 + v337 * 4);
      v343 = v231 + v337 * 4 + 4;
      if (v341 || v342 < v231 || v343 > a17 || v342 > v343)
      {
        goto LABEL_1289;
      }

      v347 = *v338;
      *v342 = v347;
      if (v347 < 0)
      {
        v347 = -v347;
      }

      v251 += 2 * v347 * v336;
      ++v337;
      ++v336;
    }

    while (v249 != v337);
    v762 = 0;
    v765 = 0;
    goto LABEL_573;
  }

  v746 = 0;
  v251 = 0;
  v762 = 0;
  v765 = 0;
LABEL_586:
  if (!a15)
  {
    AdaptLowFreqDeemph(v231, a17, *(a25 + 122158), v736, v727, v748, v782, v783);
    v231 = a16;
  }

  if (a17 < v231)
  {
    goto LABEL_1289;
  }

  if (v249 > 0x4B0)
  {
    goto LABEL_1289;
  }

  v758 = (a17 - v231) >> 2;
  v743 = v249;
  if (v758 < v249)
  {
    goto LABEL_1289;
  }

  v750 = v256;
  get_gain(__b, v231, v249, &v771);
  if (v353 <= 0.0)
  {
    v354 = v73;
  }

  else
  {
    v354 = v353;
  }

  v355 = a25;
  v356 = v354;
  if (*(a25 + 64) >= 13200)
  {
    v356 = v354;
    if (!*(a25 + 67462))
    {
      if (a22 && ((a22 + 1) > a23 || a22 + 1 < a22))
      {
        goto LABEL_1289;
      }

      v357 = sqrtf(v249 / 160.0);
      v358 = log10((v357 * v354));
      v359 = vcvtms_s32_f32((v358 * 28.0) + 0.5);
      v360 = v359 & ~(v359 >> 31);
      if (v360 >= 127)
      {
        v360 = 127;
      }

      *a22 = v360;
      v361 = __exp10((v360 / 28.0));
      v356 = v361 / v357;
      v355 = a25;
    }
  }

  if (!*(v725 + 914))
  {
    v415 = v748;
    v363 = a16;
    goto LABEL_854;
  }

  v362 = v752 - done;
  v363 = a16;
  if (!*(a25 + 122158))
  {
    v416 = v256;
    v417 = v256 + 4 * v249;
    if (v417 > a23 || v417 < a22 || (a23 - v417) < 9)
    {
      goto LABEL_1289;
    }

    v418 = 0;
    v419 = v356;
    do
    {
      if (v419 > v354)
      {
        v420 = &gain_corr_inv_fac;
      }

      else
      {
        v420 = &gain_corr_fac;
      }

      *(v417 + 4 * v418) = v419 <= v354;
      v419 = v419 * v420[v418];
      if (v418 < v362)
      {
        v356 = v419;
      }

      ++v418;
    }

    while (v418 != 3);
    v421 = *(v725 + 896);
    if (a15)
    {
      v422 = 0;
    }

    else
    {
      v422 = v782;
    }

    if (a15)
    {
      v423 = 0;
    }

    else
    {
      v423 = v783;
    }

    if (v362 >= 100)
    {
      v424 = 100;
    }

    else
    {
      v424 = v752 - done;
    }

    v425 = 0.5 - (v421 * 0.5);
    v426 = v421 * 0.5;
    if (a15)
    {
      if (v249 < 1)
      {
        v430 = 3;
      }

      else
      {
        v427 = 0;
        if (v362 >= 95)
        {
          v428 = 95;
        }

        else
        {
          v428 = v752 - done;
        }

        v429 = v428 + 5;
        v430 = 3;
        do
        {
          if (v430 >= v424)
          {
            v425 = 0.0;
            v426 = 0.0;
            if (v430 >= v429)
            {
              break;
            }
          }

          v431 = &a16[v427 * 4];
          if (&a16[v427 * 4] < a16 || (v431 + 1) > a17 || v431 > v431 + 1)
          {
            goto LABEL_1289;
          }

          v432 = *v431;
          if (*v431 != 0.0)
          {
            v433 = &__b[v427];
            v434 = &__b[v427 + 1];
            if (v434 > v782 || v433 > v434)
            {
              goto LABEL_1289;
            }

            v435 = *v433;
            v436 = (v417 + 4 * v430);
            v439 = (v436 + 1) <= a23 && v436 <= v436 + 1 && v436 >= v417;
            if (v435 >= (v432 * v356))
            {
              if (!v439)
              {
                goto LABEL_1289;
              }

              *v436 = 1;
              if (v432 <= 0.0)
              {
                v442 = v426;
              }

              else
              {
                v442 = v425;
              }

              v441 = v432 + v442;
            }

            else
            {
              if (!v439)
              {
                goto LABEL_1289;
              }

              *v436 = 0;
              if (v432 <= 0.0)
              {
                v440 = v425;
              }

              else
              {
                v440 = v426;
              }

              v441 = v432 - v440;
            }

            ++v430;
            *v431 = v441;
          }

          ++v427;
        }

        while (v249 != v427);
        LODWORD(v790[0]) = v430;
        v443 = v424 - 2;
        if (v430 < v424 - 2)
        {
          v444 = 1;
          v445 = a16;
          v446 = __b;
          while (v445 >= v363 && (v445 + 1) <= a17 && v445 <= v445 + 1)
          {
            if (*v445 == 0.0)
            {
              if (v446 < __b || v446 + 1 > v782 || v446 > v446 + 1)
              {
                goto LABEL_1289;
              }

              refine_0(v445, v417, a23, v790, *v446, v356, v421, 1.0);
              v363 = a16;
              v430 = v790[0];
            }

            if (v444 < v249)
            {
              ++v446;
              ++v444;
              ++v445;
              if (v430 < v443)
              {
                continue;
              }
            }

            goto LABEL_761;
          }

          goto LABEL_1289;
        }

LABEL_761:
        v416 = v750;
        if (v430 > 99)
        {
LABEL_852:
          v415 = v748;
          v355 = a25;
          goto LABEL_853;
        }
      }

      v481 = v430 - 100;
      v482 = (v416 + 4 * v249 + 4 * v430);
      while (v482 >= v417 && (v482 + 1) <= a23 && v482 <= v482 + 1)
      {
        *v482++ = 0;
        v103 = __CFADD__(v481++, 1);
        if (v103)
        {
          goto LABEL_852;
        }
      }

      goto LABEL_1289;
    }

    if (v249 < 1)
    {
      v456 = 3;
    }

    else
    {
      v452 = 0;
      if (v362 >= 95)
      {
        v453 = 95;
      }

      else
      {
        v453 = v752 - done;
      }

      v454 = v453 + 5;
      v455 = v249;
      v456 = 3;
      do
      {
        if (v456 >= v424)
        {
          v425 = 0.0;
          v426 = 0.0;
          if (v456 >= v454)
          {
            break;
          }
        }

        v457 = &a16[v452 * 4];
        if (&a16[v452 * 4] < a16 || (v457 + 1) > a17 || v457 > v457 + 1)
        {
          goto LABEL_1289;
        }

        v458 = *v457;
        if (*v457 != 0.0)
        {
          v459 = (v422 + v452 * 4);
          if ((v422 + v452 * 4) < v422 || v459 + 1 > v423 || v459 > v459 + 1)
          {
            goto LABEL_1289;
          }

          v460 = *v459;
          if (*v459 > 0.5)
          {
            v461 = &__b[v452];
            v462 = &__b[v452 + 1];
            if (v462 > v782 || v461 > v462)
            {
              goto LABEL_1289;
            }

            v463 = *v461;
            v464 = (v417 + 4 * v456);
            v467 = (v464 + 1) <= a23 && v464 <= v464 + 1 && v464 >= v417;
            if (v463 >= (v458 * v356))
            {
              if (!v467)
              {
                goto LABEL_1289;
              }

              *v464 = 1;
              if (v458 <= 0.0)
              {
                v470 = v426;
              }

              else
              {
                v470 = v425;
              }

              v469 = v458 + (v470 * v460);
            }

            else
            {
              if (!v467)
              {
                goto LABEL_1289;
              }

              *v464 = 0;
              if (v458 <= 0.0)
              {
                v468 = v425;
              }

              else
              {
                v468 = v426;
              }

              v469 = v458 - (v468 * v460);
            }

            ++v456;
            *v457 = v469;
          }
        }

        ++v452;
      }

      while (v249 != v452);
      LODWORD(v790[0]) = v456;
      v471 = v424 - 2;
      if (v456 < v424 - 2)
      {
        v472 = 0;
        v473 = 1;
        while (1)
        {
          v474 = (v363 + v472);
          v475 = v363 + v472 + 4;
          v476 = v363 + v472 < v363 || v475 > a17;
          if (v476 || v474 > v475)
          {
            goto LABEL_1289;
          }

          if (*v474 == 0.0)
          {
            v478 = (v422 + v472);
            if ((v422 + v472) < v422 || v478 + 1 > v423 || v478 > v478 + 1)
            {
              goto LABEL_1289;
            }

            v479 = *v478;
            if (*v478 > 0.5)
            {
              v480 = &__b[v472 / 4];
              if (&__b[v472 / 4] < __b || v480 + 1 > v782 || v480 > v480 + 1)
              {
                goto LABEL_1289;
              }

              refine_0(v474, v417, a23, v790, *v480, v356, v421, v479);
              v363 = a16;
              v456 = v790[0];
            }
          }

          if (v473 < v455)
          {
            v472 += 4;
            ++v473;
            if (v456 < v471)
            {
              continue;
            }
          }

          break;
        }
      }

      v416 = v750;
      if (v456 > 99)
      {
        goto LABEL_852;
      }
    }

    v483 = v456 - 100;
    v484 = (v416 + 4 * v743 + 4 * v456);
    while (v484 >= v417 && (v484 + 1) <= a23 && v484 <= v484 + 1)
    {
      *v484++ = 0;
      v103 = __CFADD__(v483++, 1);
      if (v103)
      {
        goto LABEL_852;
      }
    }

    goto LABEL_1289;
  }

  v364 = v256 + 4 * v752 - 4 * v362;
  if (v364 < a22)
  {
    goto LABEL_1289;
  }

  v365 = 0;
  v366 = v249;
  if (v362 >= 100)
  {
    v367 = 100;
  }

  else
  {
    v367 = v752 - done;
  }

  if (v366 < 1)
  {
    v355 = a25;
  }

  else
  {
    v355 = a25;
    if (v362 >= 1)
    {
      v368 = *(v725 + 896);
      memset(v790, 170, sizeof(v790));
      v363 = a16;
      v369 = 0;
      v365 = 0;
      v370 = 0;
      v371 = -v356;
      v372 = 1;
      do
      {
        v373 = &a16[v369 * 4];
        v374 = &a16[v369 * 4 + 4];
        if (&a16[v369 * 4] < a16 || v374 > a17 || v373 > v374)
        {
          goto LABEL_1289;
        }

        v377 = *v373;
        if (*v373 == 0.0)
        {
          v390 = (v790 + 4 * v370);
          if (v390 < v790 || (v390 + 4) > v791 || v390 > (v390 + 4))
          {
            goto LABEL_1289;
          }

          ++v370;
          *v390 = v372 - 1;
        }

        else
        {
          v378 = &v765[v369];
          if (&v765[v369] < v765)
          {
            goto LABEL_1289;
          }

          if ((v378 + 1) > v762)
          {
            goto LABEL_1289;
          }

          if (v378 > v378 + 1)
          {
            goto LABEL_1289;
          }

          v379 = &__b[v369];
          v380 = &__b[v369 + 1];
          if (v380 > v782 || v379 > v380)
          {
            goto LABEL_1289;
          }

          v381 = *(v782 + v369 * 4) * (1 - 2 * *v378);
          v382 = v377 - (v381 * (v368 * 0.5));
          v383 = v377 + (v381 * (0.5 - (v368 * 0.5)));
          v384 = fabsf(*v379 + (v371 * v382));
          v385 = fabsf(*v379 + (v371 * v383));
          v386 = (v364 + 4 * v365);
          v389 = (v386 + 1) <= a23 && v386 <= v386 + 1 && v386 >= v364;
          if (v384 >= v385)
          {
            *v373 = v383;
            if (!v389)
            {
              goto LABEL_1289;
            }

            ++v365;
            *v386 = 1;
          }

          else
          {
            *v373 = v382;
            if (!v389)
            {
              goto LABEL_1289;
            }

            ++v365;
            *v386 = 0;
          }
        }

        if (v372 >= v760)
        {
          break;
        }

        ++v369;
        ++v372;
      }

      while (v365 < v367);
      if (v370 >= 1 && v365 < v367 - 1)
      {
        v391 = v790;
        v392 = 1;
        while (1)
        {
          v393 = v391 + 4;
          v394 = v391 < v790 || v393 > v791;
          if (v394 || v391 > v393)
          {
            goto LABEL_1289;
          }

          v396 = *v391;
          v397 = v782 + 4 * v396;
          v398 = v397 + 4;
          v399 = v397 < v782 || v398 > v783;
          if (v399 || v397 > v398)
          {
            goto LABEL_1289;
          }

          v401 = &__b[v396];
          v402 = v401 + 1;
          v403 = v401 < __b || v402 > v782;
          if (v403 || v401 > v402)
          {
            goto LABEL_1289;
          }

          v405 = ((1.0 - v368) * 0.33) * *(v782 + v396);
          v406 = fabsf(*v401);
          v407 = (v364 + 4 * v365);
          v408 = v407 + 1;
          v411 = (v407 + 1) <= a23 && v407 <= v408 && v407 >= v364;
          if (v406 <= (v405 * v356))
          {
            if (!v411)
            {
              goto LABEL_1289;
            }

            ++v365;
            *v407 = 0;
          }

          else
          {
            if (!v411)
            {
              goto LABEL_1289;
            }

            *v407 = 1;
            v412 = &v765[v396];
            if (v412 < v765)
            {
              goto LABEL_1289;
            }

            if ((v412 + 1) > v762)
            {
              goto LABEL_1289;
            }

            if (v412 > v412 + 1)
            {
              goto LABEL_1289;
            }

            v413 = v407 + 2;
            if (v413 > a23)
            {
              goto LABEL_1289;
            }

            if (v408 > v413)
            {
              goto LABEL_1289;
            }

            *v408 = 1 - *v412;
            v414 = &a16[4 * v396];
            if (v414 < a16 || (v414 + 1) > a17 || v414 > v414 + 1)
            {
              goto LABEL_1289;
            }

            v365 += 2;
            *v414 = v405 * (2 - 4 * *v412);
          }

          if (v392 < v370)
          {
            ++v392;
            v391 = (v391 + 4);
            if (v365 < v367 - 1)
            {
              continue;
            }
          }

          break;
        }
      }
    }
  }

  if (v365 >= v362)
  {
    v415 = v748;
LABEL_853:
    LODWORD(v249) = v760;
    goto LABEL_854;
  }

  v447 = v365;
  v448 = 4 * v365;
  LODWORD(v249) = v760;
  do
  {
    v449 = v364 + v448 + 4;
    if (v364 + v448 < a22 || v449 > a23 || v364 + v448 > v449)
    {
      goto LABEL_1289;
    }

    *(v364 + 4 * v447++) = 0;
    v448 += 4;
  }

  while (v447 < v362);
  v415 = v748;
  v355 = a25;
LABEL_854:
  v485 = a25 + 116900;
  v726 = (v355 + 110608);
  if (*(v355 + 111808) && *(a25 + 116900) && !a19 && *(a25 + 116912) > 0.0)
  {
    if (v727 < v736 || (v727 - v736) < 33 || v758 < 32)
    {
      goto LABEL_1289;
    }

    PsychAdaptLowFreqDeemph(v363, v736, 0, 0);
    v363 = a16;
    v415 = v748;
    v355 = a25;
    v485 = a25 + 116900;
  }

  v486 = v415;
  v487 = (*v767 + 17168);
  if (v719 >= ((*(v355 + 122108) * v415) + 0.5))
  {
    v488 = ((*(v355 + 122108) * v415) + 0.5);
  }

  else
  {
    v488 = v719;
  }

  v489 = *(v355 + 64);
  if (v489 < 96000)
  {
    v493 = 8;
    if (v489 >= 13200)
    {
      if (*(v355 + 67462))
      {
        v493 = 8;
      }

      else
      {
        v493 = 6;
      }
    }

    if (a15)
    {
      v494 = *(v485 + 12);
      if (*(*v767 + 17296) && *v755)
      {
        if (__n < a22 || (__n + 1) > a23 || __n > __n + 1)
        {
          goto LABEL_1289;
        }

        LODWORD(v415) = v748;
        v355 = a25;
        if (v494 <= (*__n * 0.3125))
        {
          v494 = *__n * 0.3125;
        }
      }

      else if (v494 <= 0.0)
      {
        v494 = 0.0;
      }

      if (v415 == *(v355 + 140) >> 1)
      {
        v491 = 3;
      }

      else
      {
        v491 = ((v494 + v494) * 6.4) + 4;
      }
    }

    else
    {
      v491 = 8;
    }

    v495 = *v726;
    v496 = v415 / v493;
    v497 = a22 + 1;
    if (a22 == -4)
    {
      tcx_noise_factor(__b, v782, v363, a17, v496, v488, v491, v415, v356, v495, &v772, 0);
    }

    else
    {
      if (v497 < a22 || (a22 + 2) > a23 || v497 > a22 + 2)
      {
        goto LABEL_1289;
      }

      tcx_noise_factor(__b, v782, v363, a17, v496, v488, v491, v748, v356, v495, &v772, a22 + 1);
    }

    v363 = a16;
    if (v497 < a22 || (a22 + 2) > a23 || v497 > a22 + 2)
    {
      goto LABEL_1289;
    }

    if (*v497 == 2)
    {
      v499 = *(v726 + 1);
      if (v499 < 0)
      {
        v499 = -v499;
      }

      v492 = a25;
      if (v499 >= 6)
      {
        *v497 = 1;
        v772 = 0.09375;
        v500 = *(v726 + 1);
        if (v500 >= 0)
        {
          v501 = ~v500;
        }

        else
        {
          v501 = 5;
        }

        *(v726 + 1) = v501;
        goto LABEL_910;
      }
    }

    else
    {
      v492 = a25;
      if (*v497 == 1)
      {
        v498 = *(v726 + 1);
        if (v498 < 0)
        {
          v498 = -v498;
        }

        *(v726 + 1) = v498 + 1;
        goto LABEL_910;
      }
    }

    v726[1] = 0.0;
    goto LABEL_910;
  }

  v772 = 0.0;
  v490 = a22 + 1;
  if (a22 + 1 < a22 || (a22 + 2) > a23 || v490 > a22 + 2)
  {
    goto LABEL_1289;
  }

  *v490 = 0;
  v491 = 8;
  v492 = a25;
LABEL_910:
  v502 = *(v492 + 64);
  if (v502 < 13200 || *(v492 + 67462))
  {
    if ((v727 - v736) < 253 || v727 < v736 || (v748 & 0x80000000) != 0 || v758 < v748 || v748 > 2040)
    {
      goto LABEL_1289;
    }

    v503 = v748;
    tcxFormantEnhancement(v782, v736, v363, v748);
    v492 = a25;
    v502 = *(a25 + 64);
  }

  else
  {
    v503 = v748;
  }

  v504 = *v767;
  if (v772 <= 0.0)
  {
    v510 = a17;
  }

  else
  {
    v506 = v710 < v711 || (v710 - v711) < 65;
    if (v502 < 13200)
    {
      if (v506)
      {
        goto LABEL_1289;
      }
    }

    else
    {
      v507 = a16;
      if (v506)
      {
        goto LABEL_1289;
      }

      if (!*(a25 + 67462))
      {
        v503 = v748;
        v508 = v748 / 6;
        v509 = 0.5625;
        goto LABEL_933;
      }
    }

    v503 = v748;
    v508 = v748 / 8;
    get_gain(v711 + 4, v711, 16, 0);
    v507 = a16;
    v509 = v511 + 0.09375;
    if (v509 > 1.0)
    {
      v509 = 1.0;
    }

LABEL_933:
    *v726 = v509;
    v510 = a17;
    tcx_noise_filling(v507, a17, v251, v508, v719, v491, v503, v509, v772, v415, 0, 0);
    v492 = a25;
    v502 = *(a25 + 64);
    v504 = *v767;
  }

  if (v502 >= 13200 && !*(v492 + 67462))
  {
    v523 = a16;
    goto LABEL_950;
  }

  if (v746)
  {
    v512 = v249;
    v513 = 0.000001;
    v514 = a16;
    v515 = a22;
    while (v514 >= a16 && (v514 + 1) <= a17 && v514 <= v514 + 1)
    {
      v516 = *v514++;
      v513 = v513 + (v516 * v516);
      if (!--v512)
      {
        goto LABEL_944;
      }
    }

    goto LABEL_1289;
  }

  v513 = 0.000001;
  v515 = a22;
LABEL_944:
  if (v515 && ((v515 + 1) > a23 || v515 + 1 < v515))
  {
    goto LABEL_1289;
  }

  v517 = v356 * sqrtf(v771 / v513);
  v518 = sqrtf(v249 / 160.0);
  v519 = log10((v518 * v517));
  v520 = vcvtms_s32_f32((v519 * 28.0) + 0.5);
  v521 = v520 & ~(v520 >> 31);
  if (v521 >= 127)
  {
    v521 = 127;
  }

  *v515 = v521;
  v522 = __exp10((v521 / 28.0));
  v504 = *v767;
  v523 = a16;
  *&v522 = v522;
  v356 = *&v522 / v518;
  v503 = v748;
  v492 = a25;
  v510 = a17;
LABEL_950:
  v524 = (v504 + 8552);
  mdct_noiseShaping(v523, v510, v503, v736, v727);
  v720 = v492 + 86172;
  if (!*(v492 + 86172))
  {
    v356 = *(*v767 + 17304) * v356;
  }

  v525 = a24;
  v526 = a16;
  if (v760 >= 1)
  {
    v527 = v249;
    v528 = a16;
    do
    {
      *v528 = *v528 * v356;
      ++v528;
      --v527;
    }

    while (v527);
  }

  v735 = v524[1];
  v773 = v735;
  v728 = v524;
  if (a15 && v503 == *(v492 + 140) >> 1)
  {
    if (v249 <= v503)
    {
      v529 = v503;
    }

    else
    {
      v529 = v249;
    }

    if (*v487)
    {
      v530 = a19 == 0;
    }

    else
    {
      v530 = 1;
    }

    if (v530)
    {
      v531 = v529;
    }

    else
    {
      v531 = v249;
    }

    if (v531 > 0x7F8 || v758 < v531)
    {
      goto LABEL_1289;
    }

    tcxInvertWindowGrouping(*v767, v782, a16, v531, a19, *v755, v735, a24, 0);
    v526 = a16;
    v503 = v748;
    v492 = a25;
    v510 = a17;
  }

  v533 = a11;
  v534 = *v767;
  if (*v487)
  {
    v535 = *v767 + 48 * (*(v492 + 140) == a11) + 17176;
    v536 = v535 + 24 * ((a24 | *v755) == 0);
    if (v536)
    {
      v537 = v536 + 24;
      v538 = v536 < v535 || v537 > *v767 + 48 * (*(v492 + 140) == a11) + 17224;
      if (v538 || v536 > v537)
      {
        goto LABEL_1289;
      }
    }

    *(*v767 + 17272) = v536;
    if (a19)
    {
      ApplyTnsFilter(v536, a18, v526, v510, 0);
      v534 = *v767;
      v526 = a16;
      if (a15)
      {
        if (v503 == *(v492 + 140) >> 1 && (v524[1] || !a24 && !*v524 && !v735) && v503 <= v760)
        {
          v540 = a16 + 32;
          if (a16 + 32 < a16)
          {
            goto LABEL_1289;
          }

          v541 = v760 >> 1;
          if (v760 >= 2)
          {
            if (a17 < v540)
            {
              goto LABEL_1289;
            }

            v542 = 4 * v541;
            if (a17 - v540 < v542)
            {
              goto LABEL_1289;
            }

            memmove(v782, a16 + 32, 4 * v541);
            v526 = a16;
            if ((v782 + v542) < v782)
            {
              goto LABEL_1289;
            }
          }

          v543 = (v526 + 4 * v541);
          if (v543 < v526)
          {
            goto LABEL_1289;
          }

          v510 = a17;
          if (a17 < v543)
          {
            goto LABEL_1289;
          }

          if (a17 - v543 <= 0x1F)
          {
            goto LABEL_1289;
          }

          v544 = v782[1];
          *v543 = v782[0];
          v543[1] = v544;
          v534 = *v767;
          v492 = a25;
          if (v543 + 2 < v543)
          {
            goto LABEL_1289;
          }

          v533 = a11;
          v503 = v748;
          v525 = a24;
          if (v760 >= 0x12)
          {
            if (a17 < v540)
            {
              goto LABEL_1289;
            }

            v545 = (4 * v541 + 262112) & 0x3FFFC;
            if (v545 > 0x1FC0)
            {
              goto LABEL_1289;
            }

            if (a17 - v540 < v545)
            {
              goto LABEL_1289;
            }

            memmove(v540, &v782[2], (4 * v541 + 262112) & 0x3FFFC);
            v534 = *v767;
            v526 = a16;
            if (&v540[v545] < v540)
            {
              goto LABEL_1289;
            }
          }
        }
      }
    }
  }

  v724 = 56250 * (v714 / 100) / 100000;
  v717 = (v492 + 77426);
  if (!a15 || v503 != *(v492 + 140) >> 1)
  {
    if (*(v492 + 77426) != -2)
    {
      memset(v790, 255, sizeof(v790));
      v581 = v782 + v732 / 2 + v724;
      if (v581 > v783)
      {
        goto LABEL_1289;
      }

      if (v782 > v581)
      {
        goto LABEL_1289;
      }

      if (v758 < v748)
      {
        goto LABEL_1289;
      }

      if ((v783 - v581) >> 2 < v748)
      {
        goto LABEL_1289;
      }

      if ((v748 & 0x8000) != 0)
      {
        goto LABEL_1289;
      }

      v582 = v748;
      edct(a16);
      if (v582 > 1200)
      {
        goto LABEL_1289;
      }

      if (v582 >= 1)
      {
        v583 = sqrtf(v486 / 160.0);
        v584 = v748 & 0x7FFF;
        v585 = v790;
        do
        {
          v586 = *v581++;
          *v585++ = v586 * v583;
          --v584;
        }

        while (v584);
        if (v582 > 640)
        {
          goto LABEL_1289;
        }
      }

      v587 = *v524;
      v588 = v524[1];
      v784[0] = v782;
      v784[1] = v783;
      v784[2] = v782;
      window_ola(v790, v784, a25 + 49548, v582, v588, v587, 0, 0, 0, 0);
      v579 = 0;
      v578 = 1;
      goto LABEL_1071;
    }

    TCX_MDCT_Inverse(v526, v510, v782, v783, v732, v503 - v732, v732);
    v790[0] = v782;
    v790[1] = v783;
    v790[2] = v782;
    v580 = (a25 + 52108);
    tcx_windowing_synthesis_current_frame(v790, (*v767 + 5520), *v767 + 7200, (*v767 + 7228), *v767 + 8068, (*v767 + 8068), *v767 + 8308, v732, *(*v767 + 8560), *(*v767 + 8564), *v755 == 0, v524[1], *(a21 + 3328), *(a21 + 3336), v492 + 1976, v492 + 3512, 0, 0, v778, v780, *v767 + 8308, *v767 + 8548, v533 >> 1, -v718 & (v718 >> 31), *v755, 0, 0);
    goto LABEL_1086;
  }

  v546 = v524[1];
  if (!v524[1])
  {
    if (v525 || *v524)
    {
      TCX_MDCT_Inverse(a16, v510, v782, v783, v732, v503 - v732, v732);
      v790[0] = v782;
      v790[1] = v783;
      v790[2] = v782;
      v580 = (a25 + 52108);
      if (v735)
      {
        v589 = 1;
      }

      else
      {
        v589 = v525 < 1;
      }

      v590 = v589;
      if (v590 & 1 | (*v755 == 0))
      {
        v591 = v735;
      }

      else
      {
        v591 = 2;
      }

      tcx_windowing_synthesis_current_frame(v790, (*v767 + 5520), *v767 + 7200, (*v767 + 7228), *v767 + 8068, (*v767 + 8068), *v767 + 8308, v732, *(*v767 + 8560), *(*v767 + 8564), *v755 == 0, v591, *(a21 + 3328), *(a21 + 3336), v492 + 1976, v492 + 3512, 0, 0, v778, v780, *v767 + 8308, *v767 + 8548, a11 >> 1, -v718 & (v718 >> 31), *v755, 0, 0);
    }

    else
    {
      memset(v790, 255, 0xCA8uLL);
      v664 = v503 >> 1;
      if (v503 <= v760)
      {
        v665 = v760;
      }

      else
      {
        v665 = v503;
      }

      v666 = *(*v767 + 8564);
      LODWORD(v784[0]) = 0;
      vDSP_vfill(v784, v790, 1, 0x32AuLL);
      v667 = v790 + 4 * v664;
      if (v667 < v790)
      {
        goto LABEL_1289;
      }

      v668 = *(v717 + 9);
      v669 = v748 >> 1;
      TCX_MDCT_Inverse(a16, a17, v790 + v664, &v790[405], 0, v669 - (v666 >> 1), v666);
      v670 = a16;
      v732 = v668;
      v671 = v668 >> 1;
      v672 = v782 + 4 * (v668 >> 1);
      if (v672 < v782)
      {
        goto LABEL_1289;
      }

      v673 = v666 >> 1;
      if (((v666 >> 1) + v669) >= 1)
      {
        if (v672 > v783)
        {
          goto LABEL_1289;
        }

        if (v667 > &v790[405])
        {
          goto LABEL_1289;
        }

        v674 = 4 * v664;
        v675 = 4 * (((v666 >> 1) + v669) & 0x7FFFu);
        if (3240 - v674 < v675)
        {
          goto LABEL_1289;
        }

        if (8160 - 4 * v671 < v675)
        {
          goto LABEL_1289;
        }

        memcpy(v672, v667, v675);
        v670 = a16;
        if (&v672[v675] < v672)
        {
          goto LABEL_1289;
        }
      }

      v676 = &v670[4 * (v665 >> 1)];
      if (v676 < v670)
      {
        goto LABEL_1289;
      }

      TCX_MDCT_Inverse(v676, a17, v790, &v790[405], v666, v669 - v666, v666);
      v784[0] = v790;
      v784[1] = &v790[405];
      v784[2] = v790;
      tcx_windowing_synthesis_current_frame(v784, (*v767 + 5520), *v767 + 7200, (*v767 + 7228), *v767 + 8068, (*v767 + 8068), *v767 + 8308, v666, *(*v767 + 8560), *(*v767 + 8564), 0, 2, *(a21 + 3328), *(a21 + 3336), a25 + 1976, a25 + 3512, 0, 0, v778, v780, *v767 + 8308, *v767 + 8548, v669, -v718 & (v718 >> 31), 1, 0, 0);
      v677 = *(*v767 + 8564);
      if (v677 > 0x3C)
      {
        goto LABEL_1289;
      }

      v678 = *(*v767 + 8560);
      if (v678 > 0xD2)
      {
        goto LABEL_1289;
      }

      v679 = *(*v767 + 7200);
      v680 = *(*v767 + 7208);
      if (v679 > v680)
      {
        goto LABEL_1289;
      }

      if (*(*v767 + 7216) > v679)
      {
        goto LABEL_1289;
      }

      v681 = &v672[4 * v669];
      v682 = &v681[-4 * v673];
      if ((v666 & 0x80000000) != 0)
      {
        goto LABEL_1289;
      }

      if ((v680 - v679) >> 2 < v666)
      {
        goto LABEL_1289;
      }

      if (v682 < v782)
      {
        goto LABEL_1289;
      }

      tcx_windowing_synthesis_past_frame(&v681[-4 * v673], v783, v679, *v767 + 7228, *v767 + 8068, v666, v678, v677, 2);
      if (v682 > v783)
      {
        goto LABEL_1289;
      }

      if ((v783 - v682) >> 2 < v666)
      {
        goto LABEL_1289;
      }

      if ((v666 & 0x8000) != 0)
      {
        goto LABEL_1289;
      }

      if (v666 > 810)
      {
        goto LABEL_1289;
      }

      MEMORY[0x19EAE5DC0](v790, 1, &v681[-4 * v673], 1, &v681[-4 * v673], 1, v666 & 0x7FFF);
      v683 = v790 + 4 * v666;
      if (v683 < v790)
      {
        goto LABEL_1289;
      }

      v684 = &v681[4 * v673];
      if (v684 < v782)
      {
        goto LABEL_1289;
      }

      if (v669 >= 1)
      {
        if (v783 < v684)
        {
          goto LABEL_1289;
        }

        if (v683 > &v790[405])
        {
          goto LABEL_1289;
        }

        v685 = 4 * (v748 >> 1);
        if (3240 - 4 * v666 < v685)
        {
          goto LABEL_1289;
        }

        if (v783 - v684 < v685)
        {
          goto LABEL_1289;
        }

        memcpy(v684, v683, 4 * (v748 >> 1));
        if (&v684[v685] < v684)
        {
          goto LABEL_1289;
        }
      }

      if (v732 >= 1)
      {
        v686 = v732 >> 1;
        v687 = ~v686 + v732;
        v688 = 4 * v686;
        do
        {
          v689 = v782 + v688 + 4;
          v690 = (v782 + v688) < v782 || v689 > v783;
          v691 = v690 || v782 + v688 > v689;
          v692 = v782 + v687;
          v693 = v692 + 1;
          v694 = !v691 && v692 >= v782;
          v695 = !v694 || v693 > v783;
          if (v695 || v692 > v693)
          {
            goto LABEL_1289;
          }

          *v692 = -*(v782 + v686++);
          --v687;
          v688 += 4;
        }

        while (v686 < v732);
      }

      v784[0] = v782;
      v784[1] = v783;
      v784[2] = v782;
      v580 = (a25 + 52108);
      tcx_windowing_synthesis_current_frame(v784, (*v767 + 5520), *v767 + 7200, (*v767 + 7228), *v767 + 8068, (*v767 + 8068), *v767 + 8308, v732, *(*v767 + 8560), *(*v767 + 8564), *v755 == 0, 0, *(a21 + 3328), *(a21 + 3336), a25 + 1976, a25 + 3512, 0, 0, v778, v780, *v767 + 8308, *v767 + 8548, v669, -v718 & (v718 >> 31), *v755, 0, 0);
    }

LABEL_1086:
    v578 = 0;
    v579 = 1;
    goto LABEL_1087;
  }

  v547 = v534;
  memset(v790, 255, 0xCA8uLL);
  v548 = 8560;
  if (v546 == 2)
  {
    v548 = 8564;
  }

  v549 = *(v547 + v548);
  LODWORD(v784[0]) = 0;
  vDSP_vfill(v784, v790, 1, 0x32AuLL);
  v716 = v718 + (v549 >> 1);
  v550 = a16;
  if (v716 > 0x7F8)
  {
    goto LABEL_1289;
  }

  v551 = v748 >> 1;
  v552 = v549 >> 1;
  if (v748 <= v760)
  {
    v553 = v760;
  }

  else
  {
    v553 = v748;
  }

  v554 = v553 >> 1;
  if (v716)
  {
    bzero(v782, 4 * v716);
    v550 = a16;
  }

  v555 = 0;
  v766 = *v767 + 8308;
  v764 = -v718 & (v718 >> 31);
  v759 = a25 + 3512;
  v761 = a25 + 1976;
  v556 = v782 + 4 * v718;
  v754 = *v767 + 8548;
  v712 = v552;
  v557 = (v549 & 0x8000) == 0 && v549 < 811;
  v558 = v557;
  v741 = v558;
  v768 = v790 + 4 * v549;
  __na = 4 * (v748 >> 1);
  v559 = v768 <= &v790[405] && 3240 - 4 * v549 >= (4 * (v748 >> 1));
  v560 = !v559;
  v729 = v560;
  v561 = 1;
  v737 = &v556[4 * v552];
  v753 = &v556[-4 * v552];
  v747 = &v753[4 * v551];
  do
  {
    v562 = v561;
    v563 = &v550[4 * v555 * v554];
    if (v563 < v550)
    {
      goto LABEL_1289;
    }

    TCX_MDCT_Inverse(v563, a17, v790, &v790[405], v549, v551 - v549, v549);
    v784[0] = v790;
    v784[1] = &v790[405];
    v784[2] = v790;
    v564 = *(*v767 + 8560);
    v565 = *(*v767 + 8564);
    if (v562)
    {
      v566 = v735;
      if (v735 != 2)
      {
        v566 = v524[1];
      }

      v567.n128_f32[0] = tcx_windowing_synthesis_current_frame(v784, (*v767 + 5520), *v767 + 7200, (*v767 + 7228), *v767 + 8068, (*v767 + 8068), v766, v549, v564, v565, *v755 == 0, v566, *(a21 + 3328), *(a21 + 3336), v761, v759, 0, 0, v778, v780, v766, v754, v551, v764, *v755, 0, 0);
    }

    else
    {
      tcx_windowing_synthesis_current_frame(v784, (*v767 + 5520), *v767 + 7200, (*v767 + 7228), *v767 + 8068, (*v767 + 8068), v766, v549, v564, v565, 0, 2, *(a21 + 3328), *(a21 + 3336), v761, v759, 0, 0, v778, v780, v766, v754, v551, v764, 1, 0, 0);
      v568 = *(*v767 + 8564);
      if (v568 > 0x3C)
      {
        goto LABEL_1289;
      }

      v569 = *(*v767 + 8560);
      if (v569 > 0xD2)
      {
        goto LABEL_1289;
      }

      v570 = *(*v767 + 7200);
      v571 = *(*v767 + 7208);
      if (v570 > v571 || *(*v767 + 7216) > v570 || (v549 & 0x80000000) != 0 || (v571 - v570) >> 2 < v549 || v747 < v782)
      {
        goto LABEL_1289;
      }

      tcx_windowing_synthesis_past_frame(v747, v783, v570, *v767 + 7228, *v767 + 8068, v549, v569, v568, 2);
    }

    v572 = v555 * v551;
    v573 = &v753[4 * v572];
    if (v573 > v783)
    {
      goto LABEL_1289;
    }

    if (v782 > v573)
    {
      goto LABEL_1289;
    }

    if (v549 > (v783 - v573) >> 2 || !v741)
    {
      goto LABEL_1289;
    }

    MEMORY[0x19EAE5DC0](v790, 1, v573, 1, &v753[4 * v572], 1, v549 & 0x7FFF, v567);
    v550 = a16;
    if (v768 < v790)
    {
      goto LABEL_1289;
    }

    v574 = &v737[4 * v572];
    if (v574 < v782)
    {
      goto LABEL_1289;
    }

    if (v551 >= 1)
    {
      v575 = v729;
      if (v783 < v574)
      {
        v575 = 1;
      }

      if (v575)
      {
        goto LABEL_1289;
      }

      if (v783 - v574 < __na)
      {
        goto LABEL_1289;
      }

      memcpy(v574, v768, __na);
      v550 = a16;
      if (&v574[__na] < v574)
      {
        goto LABEL_1289;
      }
    }

    v561 = 0;
    v555 = 1;
  }

  while ((v562 & 1) != 0);
  v576 = v782 + 4 * v748 + 4 * v718 + 4 * v712;
  if (v576 > v783)
  {
    goto LABEL_1289;
  }

  if (v782 > v576)
  {
    goto LABEL_1289;
  }

  v577 = v732 - v716;
  if (((v732 - v716) & 0x80000000) != 0 || (v783 - v576) >> 2 < v577)
  {
    goto LABEL_1289;
  }

  if (v577 >= 1)
  {
    bzero(v576, 4 * (v732 - v716));
  }

  v578 = 0;
  v579 = 1;
LABEL_1071:
  v580 = (a25 + 52108);
LABEL_1087:
  if (*v580 >= 1 && (v713 == *(v720 + 12) >> 1 && *(v726 + 300) || *v717 == -2))
  {
    if (*(*v767 + 7224))
    {
      v592 = v732 - *(*v767 + 8564);
      if (v592 >= 1)
      {
        v593 = 0;
        v594 = a25 + 49548 + 4 * v724;
        while (1)
        {
          v595 = (v594 + v593);
          v596 = a25 + 4 * v724 + 49552 + v593;
          v597 = v594 + v593 < (a25 + 49548) || v596 > v755;
          v598 = v597 || v595 > v596;
          v599 = v782 + v593;
          v600 = v782 + v593 + 4;
          v601 = !v598 && v599 >= v782;
          v602 = !v601 || v600 > v783;
          if (v602 || v599 > v600)
          {
            goto LABEL_1289;
          }

          *(v782 + v593) = *v595 + *(v782 + v593);
          v593 += 4;
          if (4 * v592 == v593)
          {
            goto LABEL_1116;
          }
        }
      }

      v592 = 0;
LABEL_1116:
      if (v592 < v732)
      {
        v605 = *v767 + 8068;
        v606 = 4 * v592;
        v607 = a25 + 4 * v724 + 49552;
        v608 = ~v592 + v732;
        v609 = v732 - v592;
        v610 = v782;
        v611 = a25 + 49548 + 4 * v724;
        do
        {
          v612 = (v611 + v606);
          v613 = v607 + v606;
          v614 = v611 + v606 < (a25 + 49548) || v613 > v755;
          if (v614 || v612 > v613)
          {
            goto LABEL_1289;
          }

          v616 = (v605 + 4 * v608);
          if (v616 < v605)
          {
            goto LABEL_1289;
          }

          if ((v616 + 1) > *v767 + 8308)
          {
            goto LABEL_1289;
          }

          if (v616 > v616 + 1)
          {
            goto LABEL_1289;
          }

          v617 = (v610 + v606);
          if ((v610 + v606) < v782 || v617 + 1 > v783 || v617 > v617 + 1)
          {
            goto LABEL_1289;
          }

          v610 = (v610 + 4);
          *v617 = *v617 + (*v612 * *v616);
          --v608;
          v611 += 4;
          v607 += 4;
        }

        while (--v609);
      }
    }

    else
    {
      if (a24 < 1)
      {
        v604 = v735;
      }

      else
      {
        v604 = v735;
        if (!v735)
        {
          v604 = 2 * (*v728 == 0);
        }
      }

      v618 = *(*v767 + 8564);
      v619 = v728[1];
      if (v619 != 2 && v604 != 0)
      {
        v619 = v604;
      }

      if (v618 > 0x3C)
      {
        goto LABEL_1289;
      }

      v621 = *(*v767 + 8560);
      if (v621 > 0xD2)
      {
        goto LABEL_1289;
      }

      v622 = *(*v767 + 7200);
      v623 = *(*v767 + 7208);
      if (v622 > v623 || *(*v767 + 7216) > v622 || (v732 & 0x80000000) != 0 || (v623 - v622) >> 2 < v732)
      {
        goto LABEL_1289;
      }

      tcx_windowing_synthesis_past_frame(a21 + 1792, a21 + 3328, v622, *v767 + 7228, *v767 + 8068, v732, v621, v618, v619);
      if (v732)
      {
        v624 = 0;
        do
        {
          v625 = (a21 + v624 + 1792);
          v626 = a21 + v624 + 1796;
          v627 = v625 < a21 + 1792 || v626 > a21 + 3328;
          v628 = v627 || v625 > v626;
          v629 = v782 + v624;
          v630 = v782 + v624 + 4;
          v631 = !v628 && v629 >= v782;
          v632 = !v631 || v630 > v783;
          if (v632 || v629 > v630)
          {
            goto LABEL_1289;
          }

          *(v782 + v624) = *v625 + *(v782 + v624);
          v624 += 4;
        }

        while (4 * v732 != v624);
      }
    }
  }

  if (!v579)
  {
    *(*v767 + 7224) = v578;
    goto LABEL_1222;
  }

  if (a24 <= 0 && v713 == *(v720 + 12) >> 1)
  {
    v634 = v748;
    goto LABEL_1216;
  }

  v635 = v782 + 4 * v748 + -4 * v724;
  if (v635 < v782)
  {
    goto LABEL_1289;
  }

  v636 = a25 + 49548;
  v637 = v732 + v724;
  if ((v732 + v724) >= 1)
  {
    if (v783 < v635)
    {
      goto LABEL_1289;
    }

    v638 = 4 * (v637 & 0x7FFF);
    if (v783 - v635 < v638 || v638 >= 0xA01)
    {
      goto LABEL_1289;
    }

    memcpy((a25 + 49548), v635, v638);
  }

  v639 = v636 + 4 * v724;
  v640 = (v639 + 4 * v732);
  if (v640 > v755 || v636 > v640 || v724 > (v755 - v640) >> 2 || v724 < 0)
  {
    goto LABEL_1289;
  }

  if (v724 >= 1)
  {
    bzero(v640, (4 * v724));
  }

  v641 = *(*v767 + 8564);
  if (v641 > 0x3C)
  {
    goto LABEL_1289;
  }

  v642 = *(*v767 + 8560);
  if (v642 > 0xD2)
  {
    goto LABEL_1289;
  }

  v643 = *(*v767 + 7200);
  v644 = *(*v767 + 7208);
  if (v643 > v644 || *(*v767 + 7216) > v643 || (v732 & 0x80000000) != 0 || (v644 - v643) >> 2 < v732 || v639 < v636)
  {
    goto LABEL_1289;
  }

  v645 = v748;
  v634 = v748;
  tcx_windowing_synthesis_past_frame(v639, v755, v643, *v767 + 7228, *v767 + 8068, v732, v642, v641, *v728);
  if (!*v728)
  {
    if (v724)
    {
      v646 = v724;
      v647 = -1;
      v648 = (v636 + 4 * v637);
      do
      {
        v649 = v782 + v645 + v647;
        v650 = v649 + 1;
        v651 = v649 < v782 || v650 > v783;
        if (v651 || v649 > v650)
        {
          goto LABEL_1289;
        }

        v653 = (*(*v767 + 7200) + 4 * v647);
        v654 = (v653 + 1) > *(*v767 + 7208) || v653 > v653 + 1;
        v655 = !v654 && v653 >= *(*v767 + 7216);
        v656 = v648 + 1;
        v657 = v655 && v648 >= v636;
        v658 = !v657 || v656 > v755;
        if (v658 || v648 > v656)
        {
          goto LABEL_1289;
        }

        *v648++ = *v649 * *v653;
        --v647;
        --v646;
        v645 = v748;
      }

      while (v646);
    }

    *v728 = 4;
  }

LABEL_1216:
  *(*v767 + 7224) = v578;
  v660 = v782 + 4 * v634;
  if (v660 < v782)
  {
    goto LABEL_1289;
  }

  if (v732 >= 1)
  {
    if (v660 > v783)
    {
      goto LABEL_1289;
    }

    v661 = 4 * (v732 & 0x7FFF);
    if (8160 - 4 * v634 < v661)
    {
      goto LABEL_1289;
    }

    if (v661 >= 0x601)
    {
      goto LABEL_1289;
    }

    memcpy((a21 + 1792), v660, 4 * (v732 & 0x7FFF));
    if (a21 + 1792 + v661 < a21 + 1792)
    {
      goto LABEL_1289;
    }
  }

LABEL_1222:
  v662 = v782 + 4 * (v732 >> 1) + -4 * v718;
  if (v662 < v782)
  {
    goto LABEL_1289;
  }

  if (a11 >= 1)
  {
    if (a10 < a9)
    {
      goto LABEL_1289;
    }

    if (v662 > v783)
    {
      goto LABEL_1289;
    }

    v663 = 4 * a11;
    if (v783 - v662 < v663)
    {
      goto LABEL_1289;
    }

    if (a10 - a9 < v663)
    {
      goto LABEL_1289;
    }

    memmove(a9, v662, 4 * a11);
    if (&a9[v663] < a9)
    {
      goto LABEL_1289;
    }
  }

  *(v726 + 311) = v748;
}

void coder_tcx_post(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, unint64_t a10)
{
  v10 = MEMORY[0x1EEE9AC00](a1);
  v12 = v11;
  v63 = v13;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v22 = v10;
  *&v67[4] = *MEMORY[0x1E69E9840];
  memset(__b, 255, sizeof(__b));
  v23 = *(v22 + 140);
  if (v23 >= 1)
  {
    if (v15 < v17)
    {
      goto LABEL_51;
    }

    if (4 * v23 > v15 - v17)
    {
      goto LABEL_51;
    }

    if (v23 >= 0x3C1)
    {
      goto LABEL_51;
    }

    memmove(__b, v17, 4 * v23);
    if (&__b[v23] < __b)
    {
      goto LABEL_51;
    }
  }

  v24 = *(v19 + 17288);
  v25 = *v12;
  v26 = v12[2];
  __C = NAN;
  memset(v66, 255, sizeof(v66));
  if (v23 <= 0)
  {
    v31 = *(v21 + 48);
    *&v66[32] = *(v21 + 32);
    *&v66[48] = v31;
    *&v66[64] = *(v21 + 64);
    v32 = *(v21 + 16);
    *v66 = *v21;
    *&v66[16] = v32;
  }

  else
  {
    v27 = v15 - v17;
    if (v15 < v17)
    {
      goto LABEL_51;
    }

    v28 = 4 * v23;
    if (4 * v23 > v27)
    {
      goto LABEL_51;
    }

    memmove(v17, __b, 4 * v23);
    if (&v17[v28] < v17)
    {
      goto LABEL_51;
    }

    v29 = *(v21 + 48);
    *&v66[32] = *(v21 + 32);
    *&v66[48] = v29;
    *&v66[64] = *(v21 + 64);
    v30 = *(v21 + 16);
    *v66 = *v21;
    *&v66[16] = v30;
    memcpy(&v66[68], __b, 4 * v23);
    if (&v66[v28 + 68] < &v66[68])
    {
      goto LABEL_51;
    }
  }

  v33 = &v66[4 * v23];
  if (v33 < v66)
  {
    goto LABEL_51;
  }

  if (v67 < v33)
  {
    goto LABEL_51;
  }

  if (&v67[-v33] <= 0x43)
  {
    goto LABEL_51;
  }

  v34 = (v21 + 68);
  v35 = *(v33 + 48);
  *(v21 + 32) = *(v33 + 32);
  *(v21 + 48) = v35;
  *(v21 + 64) = *(v33 + 64);
  v36 = *(v33 + 16);
  *v21 = *v33;
  *(v21 + 16) = v36;
  if (v21 + 68 < v21)
  {
    goto LABEL_51;
  }

  if (!*(v22 + 111808))
  {
    v37 = v25 + 4 * (17 * *(v22 + 110864) - 17);
    if (v37 < v26)
    {
      goto LABEL_51;
    }

    vDSP_conv(&v66[4 * v23], 1, (v37 + 64), -1, &__C, 1, 1uLL, 0x11uLL);
    v38 = a9 + 4 * v23;
    v39 = (v38 - 4);
    if (v38 - 4 < a9 || v38 > a10 || v39 > v38)
    {
      goto LABEL_51;
    }

    *(v21 + 1348) = *v39 - __C;
  }

  __C = *v66;
  v40 = (v23 + 16);
  if (v40 > 1216)
  {
    goto LABEL_51;
  }

  if (((v23 + 16) & 0x8000) != 0)
  {
    goto LABEL_51;
  }

  v41 = v33 + 4;
  preemph(&v66[4], v40, &__C, v24);
  if (v33 + 4 < v66)
  {
    goto LABEL_51;
  }

  if (v67 < v41)
  {
    goto LABEL_51;
  }

  if (&v67[-v41] <= 0x3F)
  {
    goto LABEL_51;
  }

  v42 = (v21 + 1416);
  v43 = *(v33 + 20);
  *(v21 + 1352) = *v41;
  *(v21 + 1368) = v43;
  v44 = *(v33 + 52);
  *(v21 + 1384) = *(v33 + 36);
  *(v21 + 1400) = v44;
  if (v21 + 1416 < v21 + 1352)
  {
    goto LABEL_51;
  }

  v45 = (v21 + 1480);
  v46 = *(v33 + 20);
  *v42 = *v41;
  *(v21 + 1432) = v46;
  v47 = *(v33 + 52);
  *(v21 + 1448) = *(v33 + 36);
  *(v21 + 1464) = v47;
  if (v21 + 1480 < v42)
  {
    goto LABEL_51;
  }

  v48 = v33 - 172;
  if (v33 - 172 < v66)
  {
    goto LABEL_51;
  }

  if (v67 < v48)
  {
    goto LABEL_51;
  }

  if (&v67[-v48] <= 0xEF)
  {
    goto LABEL_51;
  }

  v49 = *(v33 + 36);
  *(v21 + 1672) = *(v33 + 20);
  *(v21 + 1688) = v49;
  *(v21 + 1704) = *(v33 + 52);
  v50 = *(v33 - 28);
  *(v21 + 1608) = *(v33 - 44);
  *(v21 + 1624) = v50;
  v51 = *(v33 + 4);
  *(v21 + 1640) = *(v33 - 12);
  *(v21 + 1656) = v51;
  v52 = *(v33 - 92);
  *(v21 + 1544) = *(v33 - 108);
  *(v21 + 1560) = v52;
  v53 = *(v33 - 60);
  *(v21 + 1576) = *(v33 - 76);
  *(v21 + 1592) = v53;
  v54 = *(v33 - 156);
  *v45 = *v48;
  *(v21 + 1496) = v54;
  v55 = *(v33 - 124);
  *(v21 + 1512) = *(v33 - 140);
  *(v21 + 1528) = v55;
  if (v21 + 1720 < v45)
  {
    goto LABEL_51;
  }

  if (v23 == 320 || !*(v22 + 111808))
  {
    if (v23 > 319)
    {
      v60 = (v33 - 1276);
      v61 = (v63 + 64);
      v59 = (v21 + 68);
      v62 = 320;
      goto LABEL_49;
    }

    v56 = &v34[v23];
    if (v56 >= v34)
    {
      v57 = v21 + 1348;
      if ((320 - v23) < 1 || v57 >= v56 && (v58 = 4 * (320 - v23), v58 <= v57 - v56) && v23 < 0x141 && (memmove(v34, v56, 4 * (320 - v23)), &v34[v58 / 4] >= v34))
      {
        v59 = (v57 - 4 * v23);
        if (v59 <= v57 && v34 <= v59 && (v23 & 0x8000) == 0 && (4 * v23) >> 2 >= v23)
        {
          v60 = &v66[4];
          v61 = (v63 + 64);
          v62 = v23;
LABEL_49:
          vDSP_conv(v60, 1, v61, -1, v59, 1, v62, 0x11uLL);
          return;
        }
      }
    }

LABEL_51:
    __break(0x5519u);
  }
}

unint64_t enc_prm(unint64_t result, int *a2, unint64_t a3, unint64_t a4, uint64_t a5, int a6, unint64_t a7, unint64_t a8, unsigned __int16 *a9, unint64_t a10, __int16 a11)
{
  LODWORD(v18) = result;
  v19 = a5 + 110824;
  v20 = (a5 + 67462);
  v321[0] = 0xAAAAAAAAAAAAAAAALL;
  LODWORD(v21) = *(a5 + 110864);
  v22 = *(a5 + 88);
  v316 = *(a5 + 52108);
  v314 = *(a5 + 36);
  v303 = (a5 + 110824);
  v315 = (a5 + 67462);
  v300 = v22;
  if (*(a5 + 8) == 1)
  {
    v23 = &FrameSizeConfig[6 * *(a5 + 68704)];
    v24 = v23 + 12;
    v25 = v23 < FrameSizeConfig || v24 > inter6_2;
    if (v25 || v23 > v24)
    {
      goto LABEL_655;
    }

    v20 = (a5 + 67462);
    *(a5 + 68716) += *(v23 + 7);
    result = signalling_mode1_tcx20_enc(a5, 1);
    v19 = v303;
    v22 = v300;
  }

  v299 = (a5 + 129336);
  v13 = (a5 + 86028);
  v27 = (a5 + 77424);
  if (!*(v19 + 984))
  {
    if (v22)
    {
      if (*(a5 + 8) == 1)
      {
        v28 = *(a5 + 40);
        v34 = *(a5 + 50);
        v23 = v28 + 4 * v34;
        if (v23 < v28)
        {
          goto LABEL_655;
        }

        LOWORD(v12) = v28 + 7812;
        v11 = v23 + 4;
        if (v23 + 4 > v28 + 7812 || v23 > v11)
        {
          goto LABEL_655;
        }

        *v23 = *(a5 + 86172);
        *(v23 + 2) = 2;
        LOWORD(v23) = v34 + 1;
        *(a5 + 50) = v34 + 1;
        v33 = *(a5 + 36) + 2;
      }

      else if (*(a5 + 6) == 2)
      {
        v28 = *(a5 + 40);
        v23 = *(a5 + 50);
        v11 = v28 + 4 * v23;
        if (v11 < v28)
        {
          goto LABEL_655;
        }

        v35 = v28 + 7812;
        v12 = v11 + 4;
        if (v11 + 4 > v28 + 7812)
        {
          goto LABEL_655;
        }

        if (v11 > v12)
        {
          goto LABEL_655;
        }

        *v11 = 65537;
        *(a5 + 50) = v23 + 1;
        LODWORD(v11) = *(a5 + 36);
        *(a5 + 36) = v11 + 1;
        v12 = v28 + 4 * (v23 + 1);
        if (v12 < v28)
        {
          goto LABEL_655;
        }

        if (v12 + 4 > v35)
        {
          goto LABEL_655;
        }

        if (v12 > v12 + 4)
        {
          goto LABEL_655;
        }

        *v12 = 0x10000;
        *(a5 + 50) = v23 + 2;
        *(a5 + 36) = v11 + 2;
        v12 = v28 + 4 * (v23 + 2);
        if (v12 < v28 || v12 + 4 > v35 || v12 > v12 + 4)
        {
          goto LABEL_655;
        }

        *v12 = *(a5 + 86172);
        *(v12 + 2) = 2;
        LOWORD(v23) = v23 + 3;
        *(a5 + 50) = v23;
        v33 = v11 + 4;
      }

      else
      {
        if (*v20 == 1)
        {
          result = a5 + 77424;
          v55 = &unk_19B3791D8;
          v11 = *(a5 + 64);
          LODWORD(v23) = 2;
          while (*(v55 - 2) != v11)
          {
            v12 = (v55 - 8);
            if (v55 - 8 >= acelp_sig_tbl && v55 <= ACB_bits_tbl)
            {
              LODWORD(v23) = v23 + 1;
              v25 = v12 > v55;
              v55 += 8;
              if (!v25)
              {
                continue;
              }
            }

            goto LABEL_655;
          }

          LOWORD(v12) = v23 - 2;
          v280 = &acelp_sig_tbl[(v23 - 2)];
          v11 = (v280 + 1);
          v281 = v280 + 2;
          if (v11 >= acelp_sig_tbl && v281 <= ACB_bits_tbl && v11 <= v281)
          {
            LODWORD(v11) = *v11;
            v284 = *(a5 + 86172);
            *(a5 + 129780) = (v284 - 2) < 3;
            LOWORD(v12) = v23;
            v285 = &acelp_sig_tbl[v23];
            if (v285 >= acelp_sig_tbl && v285 + 1 <= ACB_bits_tbl && v285 <= v285 + 1)
            {
              v286 = (v55 + 8);
              v287 = (8 * *(a5 + 130)) | (((v284 - 2) < 3) << 6) | v284 | 0x80;
              do
              {
                if (*v285 == v287)
                {
                  goto LABEL_656;
                }

                v285 = v286;
                if (v286 < acelp_sig_tbl)
                {
                  break;
                }

                ++v286;
                if (v285 + 1 > ACB_bits_tbl)
                {
                  break;
                }

                LOWORD(v23) = v23 + 1;
              }

              while (v285 <= v286);
            }
          }

          goto LABEL_655;
        }

        v28 = *(a5 + 40);
        v56 = *(a5 + 50);
        v23 = v28 + 4 * v56;
        if (v23 < v28)
        {
          goto LABEL_655;
        }

        LOWORD(v12) = v28 + 7812;
        v11 = v23 + 4;
        if (v23 + 4 > v28 + 7812 || v23 > v11)
        {
          goto LABEL_655;
        }

        *v23 = *(a5 + 86172) + 4;
        *(v23 + 2) = 3;
        LOWORD(v23) = v56 + 1;
        *(a5 + 50) = v56 + 1;
        v33 = *(a5 + 36) + 3;
      }

      v301 = 0;
      *(a5 + 36) = v33;
      goto LABEL_99;
    }

    if (*v20 == 1)
    {
      result = a5 + 77424;
      v12 = &unk_19B3791D8;
      v11 = *(a5 + 64);
      LODWORD(v23) = 2;
      while (*(v12 - 16) != v11)
      {
        if (v12 - 8 >= acelp_sig_tbl && v12 <= ACB_bits_tbl)
        {
          LODWORD(v23) = v23 + 1;
          v25 = v12 - 8 > v12;
          v12 += 8;
          if (!v25)
          {
            continue;
          }
        }

        goto LABEL_655;
      }

      LODWORD(v11) = v23 - 2;
      v39 = &acelp_sig_tbl[(v23 - 2)];
      v40 = (v39 + 1);
      v41 = v39 + 2;
      if (v40 < acelp_sig_tbl || v41 > ACB_bits_tbl || v40 > v41)
      {
        goto LABEL_655;
      }

      LODWORD(v11) = v23;
      v44 = &acelp_sig_tbl[v23];
      if (v44 < acelp_sig_tbl || v44 + 1 > ACB_bits_tbl || v44 > v44 + 1)
      {
        goto LABEL_655;
      }

      v45 = (v12 + 8);
      LODWORD(v12) = *v40;
      while (*v44 != (v18 | (8 * *(a5 + 130)) | (*(a5 + 129780) << 6) | 0x80))
      {
        v44 = v45;
        if (v45 >= acelp_sig_tbl)
        {
          ++v45;
          if (v44 + 1 <= ACB_bits_tbl)
          {
            LOWORD(v23) = v23 + 1;
            if (v44 <= v45)
            {
              continue;
            }
          }
        }

        goto LABEL_655;
      }

      v28 = *(a5 + 40);
      v46 = v28 + 7812;
      v47 = *(a5 + 50);
      v48 = (v28 + 4 * v47);
      v49 = v48 + 2;
      if (v48 < v28 || v49 > v46 || v48 > v49)
      {
        goto LABEL_655;
      }

      *v48 = v23 - v11;
      v48[1] = v12;
      *(a5 + 50) = v47 + 1;
      LODWORD(v11) = *(a5 + 36) + v12;
      *(a5 + 36) += v12;
      v23 = v28 + 4 * (v47 + 1);
      v12 = v23 + 4;
      v52 = v23 < v28 || v12 > v46;
      v53 = v52 || v23 > v12;
      v22 = v300;
      if (v53)
      {
        goto LABEL_655;
      }

      v27 = (a5 + 77424);
      v54 = 0x10000;
      goto LABEL_671;
    }

    v28 = *(a5 + 40);
    v36 = *(a5 + 50);
    v23 = v28 + 4 * v36;
    if (v23 < v28)
    {
      goto LABEL_655;
    }

    LOWORD(v12) = v28 + 7812;
    v11 = v23 + 4;
    if (v23 + 4 > v28 + 7812 || v23 > v11)
    {
      goto LABEL_655;
    }

    *v23 = v18;
    *(v23 + 2) = 3;
    LOWORD(v23) = v36 + 1;
    *(a5 + 50) = v36 + 1;
    v37 = *(a5 + 36);
    v33 = v37 + 3;
    *(a5 + 36) = v37 + 3;
    goto LABEL_52;
  }

  v28 = *(a5 + 40);
  v23 = *(a5 + 50);
  v29 = (v28 + 4 * v23);
  if (v29 < v28)
  {
    goto LABEL_655;
  }

  v11 = v28 + 7812;
  v12 = (v29 + 2);
  if ((v29 + 2) > v28 + 7812)
  {
    goto LABEL_655;
  }

  if (v29 > v12)
  {
    goto LABEL_655;
  }

  *v29 = v22 == 2;
  v29[1] = 1;
  *(a5 + 50) = v23 + 1;
  v30 = *(a5 + 36);
  *(a5 + 36) = v30 + 1;
  v12 = v28 + 4 * (v23 + 1);
  if (v12 < v28 || v12 + 4 > v11 || v12 > v12 + 4)
  {
    goto LABEL_655;
  }

  v31 = *(a5 + 3536);
  if (v31 <= 3)
  {
    v32 = 0x2000100010000uLL >> (16 * v31);
  }

  else
  {
    v32 = 3;
  }

  *v12 = v32;
  *(v12 + 2) = 2;
  LOWORD(v23) = v23 + 2;
  *(a5 + 50) = v23;
  v33 = v30 + 3;
  while (1)
  {
    *(a5 + 36) = v33;
    if (v22)
    {
      v301 = 0;
LABEL_99:
      v302 = v22;
    }

    else
    {
LABEL_52:
      v301 = 1;
      if (v13[1] < 1)
      {
        v38 = 0;
        v302 = 0;
        goto LABEL_120;
      }

      v302 = 0;
    }

    v11 = v28 + 4 * v23;
    if (v11 < v28)
    {
      goto LABEL_655;
    }

    v12 = v11 + 4;
    if (v11 + 4 > v28 + 7812 || v11 > v12)
    {
      goto LABEL_655;
    }

    v57 = v316 || v22 == 2;
    v58 = v57;
    *v11 = v58;
    *(v11 + 2) = 1;
    LOWORD(v12) = v23 + 1;
    *(a5 + 50) = v23 + 1;
    *(a5 + 36) = ++v33;
    if (v22)
    {
      LODWORD(v11) = *v27;
      if (v11 == 2)
      {
        v59 = 2;
      }

      else if (v11 == 3)
      {
        v59 = 2;
      }

      else
      {
        LODWORD(v11) = 0;
        v59 = 1;
      }

      v12 = v28 + 4 * v12;
      if (v12 < v28 || v12 + 4 > v28 + 7812 || v12 > v12 + 4)
      {
        goto LABEL_655;
      }

      *v12 = v11;
      *(v12 + 2) = v59;
      LOWORD(v23) = v23 + 2;
      *(a5 + 50) = v23;
      v33 += v59;
      *(a5 + 36) = v33;
      v38 = 1;
    }

    else
    {
      v38 = 0;
      LOWORD(v23) = v23 + 1;
    }

LABEL_120:
    v295 = v27;
    v60 = (a5 + 122116);
    if (*(a5 + 122164))
    {
      v11 = a5 + 122160;
      LOWORD(v12) = a5 - 8200;
      if (a5 + 122160 > (a5 + 122872))
      {
        goto LABEL_655;
      }

      v61 = *v11;
      v11 = v28 + 7812;
      if (v61 < 2)
      {
        v12 = v28 + 4 * v23;
        if (v12 < v28 || v12 + 4 > v11 || v12 > v12 + 4)
        {
          goto LABEL_655;
        }

        v62 = v23;
        *v12 = 0;
        v67 = 1;
        v66 = 1;
        LODWORD(v12) = 1;
        v68 = v303;
        v60 = (a5 + 122116);
      }

      else
      {
        v12 = v28 + 4 * v23;
        if (v12 < v28)
        {
          goto LABEL_655;
        }

        if (v12 + 4 > v11)
        {
          goto LABEL_655;
        }

        if (v12 > v12 + 4)
        {
          goto LABEL_655;
        }

        *v12 = 65537;
        *(a5 + 50) = v23 + 1;
        *(a5 + 36) = v33 + 1;
        v12 = v28 + 4 * (v23 + 1);
        v60 = (a5 + 122116);
        if (v12 < v28 || v12 + 4 > v11 || v12 > v12 + 4)
        {
          goto LABEL_655;
        }

        v62 = (v23 + 1);
        v63 = *(a5 + 122172) - *(a5 + 122168);
        v64 = v63 - 8;
        v65 = v63 + 8;
        if (v64 < 0xFFFFFFF1)
        {
          v65 = 0;
        }

        *v12 = v65;
        LODWORD(v12) = 5;
        v66 = 2;
        v67 = 4;
        v68 = v303;
      }

      *(v28 + 4 * v62 + 2) = v67;
      LOWORD(v23) = v23 + v66;
      *(a5 + 50) = v23;
      v33 += v12;
      *(a5 + 36) = v33;
    }

    else
    {
      v68 = v303;
    }

    LODWORD(v11) = *v60;
    if (!*v60)
    {
      goto LABEL_152;
    }

    if (v18)
    {
      v69 = v38;
    }

    else
    {
      v69 = 1;
    }

    if ((v69 & 1) != 0 || !*(a5 + 52108) && !*(a5 + 18608) || v60[10])
    {
      v60[1] = 0;
    }

    LODWORD(v11) = v301;
    if (v301)
    {
      v11 = v28 + 4 * v23;
      if (v11 < v28)
      {
        goto LABEL_655;
      }

      v12 = v11 + 4;
      if (v11 + 4 > v28 + 7812 || v11 > v12)
      {
        goto LABEL_655;
      }

      *v11 = v60[1];
      LOWORD(v12) = 1;
      *(v11 + 2) = 1;
      v70 = v23 + 1;
      *(a5 + 50) = v23 + 1;
      *(a5 + 36) = ++v33;
    }

    else
    {
LABEL_152:
      v70 = v23;
    }

    v296 = v33;
    v60[10] = 0;
    v71 = v38 ^ 1;
    if (!*v68)
    {
      v71 = 1;
    }

    v317 = v13;
    v297 = v21;
    if ((v71 & 1) == 0)
    {
      LOWORD(v23) = a4 + 24;
      if (a4 + 24 >= a4)
      {
        v11 = *a4;
        v23 = *a4 + 4;
        if (v23 <= *(a4 + 8) && v11 <= v23)
        {
          v72 = *(a4 + 16);
          if (v11 >= v72)
          {
            v73 = 0;
            LODWORD(v11) = *v11;
            *a4 = v23;
            LOWORD(v12) = 7812;
            while (1)
            {
              v74 = v23 + 4 > *(a4 + 8) || v23 > v23 + 4;
              if (v74 || v23 < v72)
              {
                break;
              }

              v76 = *(a5 + 40);
              v77 = *(a5 + 50);
              v78 = (v76 + 4 * v77);
              result = (v78 + 2);
              v79 = v78 < v76 || result > v76 + 7812;
              if (v79 || v78 > result)
              {
                break;
              }

              v81 = lsf_numbits[v73];
              *v78 = *v23;
              v78[1] = v81;
              *(a5 + 50) = v77 + 1;
              *(a5 + 36) += v81;
              v82 = *a4;
              v23 = *a4 + 4;
              *a4 = v23;
              v73 += 2;
              if (v73 == 6)
              {
                if (!v11)
                {
                  LOWORD(v23) = 13;
                  goto LABEL_292;
                }

                v11 = *(a4 + 8);
                if (v82 + 8 <= v11 && v23 <= v82 + 8 && v23 >= v72)
                {
                  v11 = *(a5 + 40);
                  v83 = *(a5 + 50);
                  v84 = (v11 + 4 * v83);
                  if (v84 >= v11)
                  {
                    v12 = v11 + 7812;
                    v11 = (v84 + 2);
                    if ((v84 + 2) <= v12 && v84 <= v11)
                    {
                      *v84 = *v23;
                      v84[1] = 2;
                      *(a5 + 50) = v83 + 1;
                      *(a5 + 36) += 2;
                      *a4 += 4;
                      LOWORD(v23) = 15;
                      goto LABEL_292;
                    }
                  }
                }

                goto LABEL_655;
              }
            }
          }
        }
      }

      goto LABEL_655;
    }

    v85 = v68[240];
    if (v85 == 1)
    {
      break;
    }

    if (v85)
    {
      goto LABEL_291;
    }

    v86 = *a4;
    v23 = *(a4 + 16);
    if (*a4 >= v23)
    {
      LODWORD(v21) = 0;
      v87 = 0;
      LOWORD(v304) = 0;
      LODWORD(v23) = 0;
      if (v300 == 1)
      {
        v88 = 1;
      }

      else
      {
        v88 = 2;
      }

      v307 = v88;
      v89 = *(a4 + 8);
      v311 = v89;
      v305 = a3;
      while (1)
      {
        if (!v21)
        {
          goto LABEL_202;
        }

        v90 = (v86 + 4 * v87);
        v11 = (v90 + 1);
        if (v90 < v86 || v11 > v89 || v90 > v11)
        {
          goto LABEL_655;
        }

        ++v87;
        v93 = *v90;
        if (v93)
        {
          LODWORD(v11) = 0;
        }

        else
        {
LABEL_202:
          v11 = v86 + 4 * v87;
          v94 = v11 + 4;
          if (v11 < v86 || v94 > v89 || v11 > v94)
          {
            goto LABEL_655;
          }

          LOWORD(v93) = 0;
          ++v87;
          v304 = *v11;
          LODWORD(v11) = 1;
        }

        v97 = (v86 + 4 * v87);
        if (v97 < v86)
        {
          goto LABEL_655;
        }

        v12 = (v97 + 1);
        if ((v97 + 1) > v89)
        {
          goto LABEL_655;
        }

        if (v97 > v12)
        {
          goto LABEL_655;
        }

        v99 = *v97;
        v98 = v97 + 2;
        a4 = v99;
        if (v98 > v89 || v12 > v98)
        {
          goto LABEL_655;
        }

        v100 = v87 + 2;
        v101 = *v12;
        if (v21)
        {
          if (v302 == 1 || v21 != 1)
          {
            v87 = a4 + v100 + v101;
            goto LABEL_260;
          }

          v102 = *(a5 + 40);
          v12 = *(a5 + 50);
          v103 = (v102 + 4 * v12);
          if (v103 < v102 || (v103 + 2) > v102 + 7812 || v103 > v103 + 2)
          {
            goto LABEL_655;
          }

          v104 = *(a5 + 50);
          *v103 = v93;
          LODWORD(v12) = 1;
          v103[1] = 1;
          v105 = v104 + 1;
          *(a5 + 50) = v104 + 1;
          ++*(a5 + 36);
        }

        else
        {
          LODWORD(v12) = 0;
          v102 = *(a5 + 40);
          v105 = *(a5 + 50);
        }

        v106 = v12 + v23;
        if (v11)
        {
          v23 = v102 + 4 * v105;
          if (v23 < v102)
          {
            goto LABEL_655;
          }

          LOWORD(v12) = v102 + 7812;
          v11 = v23 + 4;
          if (v23 + 4 > v102 + 7812 || v23 > v11)
          {
            goto LABEL_655;
          }

          *v23 = v304;
          *(v23 + 2) = 8;
          *(a5 + 50) = ++v105;
          LOWORD(v23) = *(a5 + 36) + 8;
          *(a5 + 36) = v23;
          v106 += 8;
        }

        v11 = v102 + 4 * v105;
        if (v11 < v102)
        {
          goto LABEL_655;
        }

        v23 = v102 + 7812;
        v12 = v11 + 4;
        if (v11 + 4 > v102 + 7812 || v11 > v12)
        {
          goto LABEL_655;
        }

        v107 = (a4 - 6) >= 0xFFFFFFFC ? a4 - 2 : 3;
        *v11 = v107;
        *(v11 + 2) = 2;
        *(a5 + 50) = v105 + 1;
        LODWORD(v11) = *(a5 + 36);
        *(a5 + 36) = v11 + 2;
        v12 = v102 + 4 * (v105 + 1);
        if (v12 < v102 || v12 + 4 > v23 || v12 > v12 + 4)
        {
          goto LABEL_655;
        }

        if ((v101 - 6) >= 0xFFFFFFFC)
        {
          v108 = v101 - 2;
        }

        else
        {
          v108 = 3;
        }

        *v12 = v108;
        *(v12 + 2) = 2;
        *(a5 + 50) = v105 + 2;
        LOWORD(v23) = v11 + 4;
        *(a5 + 36) = v11 + 4;
        v309 = v106;
        if (a4 < 7)
        {
          if (a4 < 5)
          {
            if (a4)
            {
              LODWORD(v18) = 0;
              goto LABEL_249;
            }

            v18 = 3;
          }

          else
          {
            v18 = (a4 - 4);
          }
        }

        else
        {
          v18 = (a4 - 3);
        }

        result = unary_code(v18, a5);
LABEL_249:
        if (v101 < 7)
        {
          if (v101 < 5)
          {
            if (v101)
            {
              LODWORD(v109) = 0;
              goto LABEL_257;
            }

            v109 = 3;
          }

          else
          {
            v109 = (v101 - 4);
          }
        }

        else
        {
          v109 = (v101 - 3);
        }

        result = unary_code(v109, a5);
LABEL_257:
        v110 = v86 + 4 * v100;
        if (v110 < v86)
        {
          goto LABEL_655;
        }

        a3 = (4 * a4);
        result = unpack4bits(a3, v110, v311, a5);
        a4 = (a4 + v100);
        v111 = v86 + 4 * a4;
        if (v111 < v86)
        {
          goto LABEL_655;
        }

        result = unpack4bits((4 * v101), v111, v311, a5);
        v89 = v311;
        v13 = v317;
        v87 = v101 + a4;
        LODWORD(v23) = a3 + 4 * v101 + v309 + v18 + v109 + 4;
LABEL_260:
        a3 = v305;
        LODWORD(v21) = v21 + 1;
        if (v307 == v21)
        {
          goto LABEL_292;
        }
      }
    }

    while (1)
    {
LABEL_655:
      __break(0x5519u);
LABEL_656:
      v28 = *(a5 + 40);
      v288 = v28 + 7812;
      v47 = *(a5 + 50);
      v289 = (v28 + 4 * v47);
      v290 = v289 + 2;
      if (v289 >= v28 && v290 <= v288 && v289 <= v290)
      {
        *v289 = v23 - v12;
        v289[1] = v11;
        *(a5 + 50) = v47 + 1;
        LODWORD(v11) = *(a5 + 36) + v11;
        *(a5 + 36) = v11;
        v23 = v28 + 4 * (v47 + 1);
        v12 = v23 + 4;
        v293 = v23 < v28 || v12 > v288;
        v294 = v293 || v23 > v12;
        v22 = v300;
        if (!v294)
        {
          break;
        }
      }
    }

    v27 = result;
    v54 = 65537;
LABEL_671:
    *v23 = v54;
    LOWORD(v23) = v47 + 2;
    *(a5 + 50) = v47 + 2;
    v33 = v11 + 1;
    v314 = 3;
  }

  LOWORD(v12) = a9;
  LODWORD(v11) = a10;
  if (v18 == 2 && v68[249] == 16000)
  {
    v113 = v301;
  }

  else
  {
    v113 = 0;
  }

  v114 = *a4;
  v23 = *(a4 + 16);
  if (v113 == 1)
  {
    if (v114 < v23)
    {
      goto LABEL_655;
    }

    if (a11 >= 1)
    {
      LOWORD(v23) = 0;
      v115 = *(a4 + 8);
      v116 = a11;
      v117 = a9;
      result = v296;
      while (1)
      {
        v118 = (v114 + 1) > v115 || v114 > v114 + 1;
        v119 = v117 + 1;
        v120 = !v118 && v117 >= a9;
        v121 = !v120 || v119 > a10;
        if (v121 || v117 > v119)
        {
          goto LABEL_655;
        }

        v123 = (v28 + 4 * v70);
        if (v123 < v28 || (v123 + 2) > v28 + 7812 || v123 > v123 + 2)
        {
          goto LABEL_655;
        }

        v124 = *v117;
        *v123 = *v114;
        v123[1] = v124;
        *(a5 + 50) = ++v70;
        result = (result + v124);
        *(a5 + 36) = result;
        v125 = *v117++;
        LOWORD(v23) = v125 + v23;
        ++v114;
        if (!--v116)
        {
          goto LABEL_292;
        }
      }
    }

LABEL_291:
    LOWORD(v23) = 0;
    goto LABEL_292;
  }

  if (v114 < v23)
  {
    goto LABEL_655;
  }

  v266 = *(a4 + 8);
  v267 = v315[632];
  if (a11 >= 1)
  {
    LOWORD(v23) = 0;
    v268 = a11;
    result = v28 + 7812;
    v269 = a9;
    v270 = v296;
    v271 = *a4;
    while (1)
    {
      v114 = v271 + 1;
      v272 = (v271 + 1) > v266 || v271 > v114;
      v273 = v269 + 1;
      v274 = !v272 && v269 >= a9;
      v275 = !v274 || v273 > a10;
      if (v275 || v269 > v273)
      {
        goto LABEL_655;
      }

      v277 = (v28 + 4 * v70);
      if (v277 < v28 || (v277 + 2) > result || v277 > v277 + 2)
      {
        goto LABEL_655;
      }

      v278 = *v269;
      *v277 = *v271;
      v277[1] = v278;
      *(a5 + 50) = ++v70;
      v270 += v278;
      *(a5 + 36) = v270;
      v279 = *v269++;
      LOWORD(v23) = v23 + v279;
      ++v271;
      if (!--v268)
      {
        goto LABEL_631;
      }
    }
  }

  LOWORD(v23) = 0;
  v270 = v33;
LABEL_631:
  if (v18 != 2 && !v302 && v267)
  {
    v11 = (v114 + 1);
    if ((v114 + 1) > v266)
    {
      goto LABEL_655;
    }

    if (v114 > v11)
    {
      goto LABEL_655;
    }

    v11 = v28 + 4 * v70;
    if (v11 < v28)
    {
      goto LABEL_655;
    }

    LOWORD(v12) = v28 + 7812;
    if (v11 + 4 > v28 + 7812 || v11 > v11 + 4)
    {
      goto LABEL_655;
    }

    *v11 = *v114;
    *(v11 + 2) = 5;
    *(a5 + 50) = v70 + 1;
    *(a5 + 36) = v270 + 5;
    LOWORD(v23) = v23 + 5;
  }

LABEL_292:
  v308 = (a5 + 116656);
  LOWORD(v126) = v301;
  if (v301)
  {
    v127 = &ACELP_BPF_BITS[v315[645]];
    v11 = ACELP_NRG_BITS;
    if (v127 >= ACELP_NRG_BITS || v127 < ACELP_BPF_BITS)
    {
      goto LABEL_655;
    }

    v128 = *v127;
    if (v128)
    {
      v12 = *(a5 + 40);
      v11 = *(a5 + 50);
      v129 = (v12 + 4 * v11);
      if (v129 < v12)
      {
        goto LABEL_655;
      }

      v130 = v12 + 7812;
      v12 = (v129 + 2);
      if ((v129 + 2) > v130 || v129 > v12)
      {
        goto LABEL_655;
      }

      LODWORD(v12) = *v308;
      *v129 = *v308;
      v129[1] = v128;
      *(a5 + 50) = v11 + 1;
      *(a5 + 36) += v128;
    }

    v131 = &ACELP_NRG_BITS[v315[646]];
    v11 = ACELP_LTP_BITS_SFR;
    if (v131 >= ACELP_LTP_BITS_SFR || v131 < ACELP_NRG_BITS)
    {
      goto LABEL_655;
    }

    v126 = *v131;
    if (v126)
    {
      if ((a2 + 1) > a3)
      {
        goto LABEL_655;
      }

      if (a2 + 1 < a2)
      {
        goto LABEL_655;
      }

      v12 = *(a5 + 40);
      v11 = *(a5 + 50);
      v132 = (v12 + 4 * v11);
      if (v132 < v12)
      {
        goto LABEL_655;
      }

      v133 = v12 + 7812;
      v12 = (v132 + 2);
      if ((v132 + 2) > v133 || v132 > v12)
      {
        goto LABEL_655;
      }

      LODWORD(v12) = *a2;
      *v132 = *a2;
      v132[1] = v126;
      *(a5 + 50) = v11 + 1;
      *(a5 + 36) += v126;
      v126 = 1;
    }

    if (v297 >= 1)
    {
      LOWORD(v134) = 0;
      v11 = a5 + 68776;
      v12 = a5 + 68796;
      v135 = a5 + 68766;
      v136 = &ACELP_LTP_BITS_SFR[5 * v315[648]];
      result = PulseConfTable;
      do
      {
        v137 = &v136[v134];
        if (v137 >= v136 + 5 || v137 < v136)
        {
          goto LABEL_655;
        }

        v139 = *v137;
        if (v139)
        {
          v140 = &a2[v126];
          if (v140 < a2)
          {
            goto LABEL_655;
          }

          if ((v140 + 1) > a3)
          {
            goto LABEL_655;
          }

          if (v140 > v140 + 1)
          {
            goto LABEL_655;
          }

          v141 = *(a5 + 40);
          v21 = *(a5 + 50);
          v142 = (v141 + 4 * v21);
          if (v142 < v141)
          {
            goto LABEL_655;
          }

          a4 = v141 + 7812;
          if ((v142 + 2) > v141 + 7812 || v142 > v142 + 2)
          {
            goto LABEL_655;
          }

          ++v126;
          *v142 = *v140;
          v142[1] = v139;
          *(a5 + 50) = v21 + 1;
          *(a5 + 36) += v139;
        }

        if (v315[650] == 2)
        {
          v143 = &a2[v126];
          if (v143 < a2)
          {
            goto LABEL_655;
          }

          if ((v143 + 1) > a3)
          {
            goto LABEL_655;
          }

          if (v143 > v143 + 1)
          {
            goto LABEL_655;
          }

          v21 = *(a5 + 40);
          v144 = *(a5 + 50);
          v145 = (v21 + 4 * v144);
          if (v145 < v21)
          {
            goto LABEL_655;
          }

          v146 = v21 + 7812;
          v21 = (v145 + 2);
          if ((v145 + 2) > v146 || v145 > v21)
          {
            goto LABEL_655;
          }

          ++v126;
          *v145 = *v143;
          v145[1] = 1;
          *(a5 + 50) = v144 + 1;
          ++*(a5 + 36);
        }

        v134 = v134;
        v147 = (v11 + 4 * v134);
        if (v147 < v11 || (v147 + 1) > v12 || v147 > v147 + 1)
        {
          goto LABEL_655;
        }

        v148 = &PulseConfTable[19 * *v147];
        v149 = v148 + 19;
        v150 = v148 < PulseConfTable || v149 > sidparts_encoder_noise_est;
        if (v150 || v148 > v149)
        {
          goto LABEL_655;
        }

        v152 = *v148;
        v153 = *v148 >> 4;
        v154 = v126;
        if (v153 >= 1)
        {
          v154 = v126;
          do
          {
            v21 = &a2[v154];
            v155 = v21 + 4;
            v156 = v21 < a2 || v155 > a3;
            if (v156 || v21 > v155)
            {
              goto LABEL_655;
            }

            v18 = *(a5 + 40);
            a4 = *(a5 + 50);
            v158 = (v18 + 4 * a4);
            v159 = (v158 + 2);
            v160 = v158 < v18 || v159 > v18 + 7812;
            if (v160 || v158 > v159)
            {
              goto LABEL_655;
            }

            a4 = *(a5 + 50);
            ++v154;
            *v158 = *v21;
            v158[1] = 16;
            *(a5 + 50) = a4 + 1;
            LOWORD(v21) = *(a5 + 36) + 16;
            *(a5 + 36) = v21;
          }

          while (--v153);
        }

        v162 = v152 & 0xF;
        if (v162)
        {
          v163 = &a2[v154];
          if (v163 < a2)
          {
            goto LABEL_655;
          }

          if ((v163 + 1) > a3)
          {
            goto LABEL_655;
          }

          if (v163 > v163 + 1)
          {
            goto LABEL_655;
          }

          v164 = *(a5 + 40);
          v21 = *(a5 + 50);
          v165 = (v164 + 4 * v21);
          if (v165 < v164)
          {
            goto LABEL_655;
          }

          a4 = v164 + 7812;
          if ((v165 + 2) > v164 + 7812 || v165 > v165 + 2)
          {
            goto LABEL_655;
          }

          *v165 = *v163;
          v165[1] = v162;
          *(a5 + 50) = v21 + 1;
          *(a5 + 36) += v162;
        }

        v166 = (v135 + 2 * v134);
        if (v166 < v135)
        {
          goto LABEL_655;
        }

        if ((v166 + 1) > v11)
        {
          goto LABEL_655;
        }

        if (v166 > v166 + 1)
        {
          goto LABEL_655;
        }

        v167 = &ACELP_GAINS_BITS[*v166];
        if (v167 >= ACELP_LTP_MODE)
        {
          goto LABEL_655;
        }

        if (v167 < ACELP_GAINS_BITS)
        {
          goto LABEL_655;
        }

        v168 = &a2[(v126 + 8)];
        if (v168 < a2)
        {
          goto LABEL_655;
        }

        if ((v168 + 1) > a3)
        {
          goto LABEL_655;
        }

        if (v168 > v168 + 1)
        {
          goto LABEL_655;
        }

        v169 = *(a5 + 40);
        v21 = *(a5 + 50);
        v170 = (v169 + 4 * v21);
        if (v170 < v169)
        {
          goto LABEL_655;
        }

        a4 = v169 + 7812;
        if ((v170 + 2) > v169 + 7812 || v170 > v170 + 2)
        {
          goto LABEL_655;
        }

        v171 = *v167;
        v126 += 9;
        *v170 = *v168;
        v170[1] = v171;
        *(a5 + 50) = v21 + 1;
        *(a5 + 36) += v171;
        LOWORD(v134) = v134 + 1;
      }

      while (v297 > v134);
    }
  }

  if (v300 == 2)
  {
    v192 = a5 + 122116;
    if (!*v299)
    {
      v206 = 0;
      v195 = v296;
      goto LABEL_450;
    }

    v193 = a5 + 125628;
    v194 = a5 + 125948;
    v11 = *(a5 + 125948);
    v195 = v296;
    v12 = 0;
    if (*(a5 + 125948) >= 8)
    {
      do
      {
        v196 = (v193 + v12);
        if (v193 + v12 >= v194 || v196 < v193)
        {
          goto LABEL_655;
        }

        v198 = *(a5 + 40);
        result = *(a5 + 50);
        v199 = (v198 + 4 * result);
        v200 = (v199 + 2);
        v201 = v199 < v198 || v200 > v198 + 7812;
        if (v201 || v199 > v200)
        {
          goto LABEL_655;
        }

        result = *(a5 + 50);
        *v199 = *v196;
        v199[1] = 8;
        *(a5 + 50) = result + 1;
        *(a5 + 36) += 8;
        ++v12;
      }

      while (v12 < v11 >> 3);
      v12 = v12;
    }

    LODWORD(v11) = v11 & 7;
    if (!v11)
    {
      goto LABEL_448;
    }

    v12 += v193;
    if (v12 < v194 && v12 >= v193)
    {
      v203 = *(a5 + 40);
      v204 = *(a5 + 50);
      v205 = (v203 + 4 * v204);
      if (v205 >= v203 && (v205 + 2) <= v203 + 7812 && v205 <= v205 + 2)
      {
        *v205 = *v12 >> (8 - v11);
        v205[1] = v11;
        *(a5 + 50) = v204 + 1;
        *(a5 + 36) += v11;
LABEL_448:
        v206 = *(a5 + 125972);
LABEL_450:
        v207 = 0;
        v21 = 0;
        LODWORD(v11) = v195 - v314;
        LOWORD(v12) = v315 + 1254;
        v312 = v315 + 627;
        v310 = v23 + (v195 - v314) + v206;
        v315 = (a5 + 86048);
        v208 = 1;
        while (1)
        {
          v209 = v208;
          LODWORD(v18) = *(a5 + 36);
          if (v207)
          {
            LOWORD(v23) = *(a5 + 36);
            if (*(v192 + 36))
            {
              v210 = *(a5 + 40);
              v11 = v210 + 7812;
              v211 = *(a5 + 50);
              v23 = v210 + 4 * v211;
              v12 = v23 + 4;
              if (v23 < v210 || v12 > v11 || v23 > v12)
              {
                goto LABEL_655;
              }

              *v23 = *(v192 + 38);
              *(v23 + 2) = 1;
              *(a5 + 50) = v211 + 1;
              LOWORD(v23) = v18 + 1;
              *(a5 + 36) = v18 + 1;
            }
          }

          else
          {
            LOWORD(v23) = *(a5 + 36);
          }

          v214 = &a2[729 * v21];
          v215 = v214 + 1;
          if (v214 < a2 || v215 > a3 || v214 > v215)
          {
            goto LABEL_655;
          }

          v218 = *(a5 + 40);
          v11 = v218 + 7812;
          v219 = *(a5 + 50);
          v220 = (v218 + 4 * v219);
          v12 = (v220 + 2);
          v221 = v220 < v218 || v12 > v11;
          if (v221 || v220 > v12)
          {
            goto LABEL_655;
          }

          v12 = (v214 + 2);
          *v220 = *v214;
          v220[1] = 7;
          *(a5 + 50) = v219 + 1;
          *(a5 + 36) = v23 + 7;
          if ((v214 + 2) > a3 || v215 > v12)
          {
            goto LABEL_655;
          }

          v224 = (v218 + 4 * (v219 + 1));
          if (v224 < v218 || (v224 + 2) > v11 || v224 > v224 + 2)
          {
            goto LABEL_655;
          }

          *v224 = *v215;
          v224[1] = 3;
          v225 = v219 + 2;
          *(a5 + 50) = v219 + 2;
          *(a5 + 36) = v23 + 10;
          if (v209)
          {
            if (*(a5 + 116900) || v303[249] >= 25601)
            {
              v226 = v214 + 3;
              if ((v214 + 3) > a3 || v12 > v226)
              {
                goto LABEL_655;
              }

              v227 = *v12;
              v12 = v218 + 4 * v225;
              v230 = v12 + 4 <= v11 && v12 <= v12 + 4 && v12 >= v218;
              if (v227)
              {
                if (!v230)
                {
                  goto LABEL_655;
                }

                *v12 = 65537;
                *(a5 + 50) = v219 + 3;
                *(a5 + 36) = v23 + 11;
                v12 = (v214 + 4);
                if ((v214 + 4) > a3)
                {
                  goto LABEL_655;
                }

                if (v226 > v12)
                {
                  goto LABEL_655;
                }

                v231 = (v218 + 4 * (v219 + 3));
                if (v231 < v218)
                {
                  goto LABEL_655;
                }

                if ((v231 + 2) > v11)
                {
                  goto LABEL_655;
                }

                if (v231 > v231 + 2)
                {
                  goto LABEL_655;
                }

                *v231 = v214[3];
                v231[1] = 9;
                v232 = v219 + 4;
                *(a5 + 50) = v219 + 4;
                *(a5 + 36) = v23 + 20;
                if ((v214 + 5) > a3)
                {
                  goto LABEL_655;
                }

                if (v12 > (v214 + 5))
                {
                  goto LABEL_655;
                }

                v233 = (v218 + 4 * v232);
                if (v233 < v218 || (v233 + 2) > v11 || v233 > v233 + 2)
                {
                  goto LABEL_655;
                }

                v11 = v232;
                *v233 = *v12;
                LOWORD(v12) = 22;
                v234 = 5;
                v235 = 2;
              }

              else
              {
                if (!v230)
                {
                  goto LABEL_655;
                }

                v11 = v225;
                *v12 = 0;
                LOWORD(v12) = 11;
                v234 = 3;
                v235 = 1;
              }

              *(v218 + 4 * v11 + 2) = v235;
              *(a5 + 50) = v219 + v234;
              *(a5 + 36) = v23 + v12;
            }

            v236 = *v13 >> 1;
            if (!v316)
            {
              v236 += *v13 >> 2;
            }
          }

          else
          {
            v236 = *v13 >> 1;
          }

          v321[0] = 0;
          v237 = v316 | v21;
          if (v13[3])
          {
            result = &v315[12 * (v237 == 0)];
            if (result)
            {
              LOWORD(v23) = a5 + 20512;
              if (result < v315)
              {
                goto LABEL_655;
              }

              v23 = result + 24;
              if (result + 24 > a5 + 86096 || result > v23)
              {
                goto LABEL_655;
              }
            }

            *(v13 + 29) = result;
            v318 = (v214 + 5);
            v319 = a3;
            v320 = a2;
            result = WriteTnsData(result, &v318, v321 + 1, a5, v321);
            v13 = v317;
            a4 = WORD2(v321[0]) + 5;
          }

          else
          {
            a4 = 5;
          }

          LOWORD(v23) = 1;
          if (*(v13 + 70) && v237)
          {
            v238 = &v214[a4];
            if (v238 < a2)
            {
              goto LABEL_655;
            }

            v239 = v238 + 1;
            if ((v238 + 1) > a3)
            {
              goto LABEL_655;
            }

            if (v238 > v239)
            {
              goto LABEL_655;
            }

            v12 = *(a5 + 40);
            v23 = *(a5 + 50);
            v11 = v12 + 4 * v23;
            if (v11 < v12)
            {
              goto LABEL_655;
            }

            v240 = v12 + 7812;
            v12 = v11 + 4;
            if (v11 + 4 > v240 || v11 > v12)
            {
              goto LABEL_655;
            }

            v241 = *(v13 + 34);
            LOWORD(v12) = *(a5 + 50);
            v242 = *v238;
            *v11 = *v238;
            LOWORD(v23) = 1;
            *(v11 + 2) = 1;
            *(a5 + 50) = v12 + 1;
            LODWORD(v11) = (*(a5 + 36))++ + 1;
            if (v242)
            {
              v23 = (v238 + 2);
              if ((v238 + 2) > a3 || v239 > v23)
              {
                goto LABEL_655;
              }

              result = EncodeIndex(((v241 + v241) * v236) > 255, *v239, a5);
              v13 = v317;
              LOWORD(v23) = 0;
            }
          }

          v243 = &v214[(a4 + 3)];
          if (v243 < a2 || v243 - 4 < a2 || v243 > a3 || v243 - 4 > v243)
          {
            goto LABEL_655;
          }

          LODWORD(v11) = *(a5 + 36) - v314;
          LODWORD(v12) = *v312 - (v310 + v21) + 1;
          v244 = a7 + 56 * v21;
          LOWORD(v23) = (v244 != 0) & ~v23;
          if (v23)
          {
            if (v244 < a7)
            {
              goto LABEL_655;
            }

            v23 = v244 + 56;
            if (v244 + 56 > a8 || v244 > v23)
            {
              goto LABEL_655;
            }

            v245 = a5;
          }

          else
          {
            v245 = a5;
          }

          result = ACcontextMapping_encode2_no_mem_s17_LC(v245);
          v208 = 0;
          v207 = 1;
          v21 = 1;
          v13 = v317;
          v192 = a5 + 122116;
          if ((v209 & 1) == 0)
          {
            return result;
          }
        }
      }
    }

    goto LABEL_655;
  }

  if (v300 != 1)
  {
    return result;
  }

  LOWORD(v23) = *(a5 + 122152);
  if (v23)
  {
    v11 = *(a5 + 40);
    v172 = *(a5 + 50);
    v23 = v11 + 4 * v172;
    if (v23 < v11)
    {
      goto LABEL_655;
    }

    v12 = v11 + 7812;
    v11 = v23 + 4;
    if (v23 + 4 > v12 || v23 > v11)
    {
      goto LABEL_655;
    }

    *v23 = *(a5 + 122154);
    *(v23 + 2) = 1;
    *(a5 + 50) = v172 + 1;
    LOWORD(v23) = *(a5 + 36) + 1;
    *(a5 + 36) = v23;
  }

  v11 = &a2[v126];
  if (v11 < a2)
  {
    goto LABEL_655;
  }

  v23 = v11 + 4;
  if (v11 + 4 > a3)
  {
    goto LABEL_655;
  }

  if (v11 > v23)
  {
    goto LABEL_655;
  }

  v23 = *(a5 + 40);
  v173 = *(a5 + 50);
  v174 = (v23 + 4 * v173);
  if (v174 < v23)
  {
    goto LABEL_655;
  }

  v12 = v23 + 7812;
  if ((v174 + 2) > v23 + 7812)
  {
    goto LABEL_655;
  }

  if (v174 > v174 + 2)
  {
    goto LABEL_655;
  }

  *v174 = *v11;
  v174[1] = 7;
  *(a5 + 50) = v173 + 1;
  LODWORD(v11) = *(a5 + 36);
  *(a5 + 36) = v11 + 7;
  v175 = &a2[(v126 + 1)];
  if (v175 < a2)
  {
    goto LABEL_655;
  }

  if ((v175 + 1) > a3)
  {
    goto LABEL_655;
  }

  if (v175 > v175 + 1)
  {
    goto LABEL_655;
  }

  v176 = (v23 + 4 * (v173 + 1));
  if (v176 < v23 || (v176 + 2) > v12 || v176 > v176 + 2)
  {
    goto LABEL_655;
  }

  *v176 = *v175;
  v176[1] = 3;
  v177 = v173 + 2;
  *(a5 + 50) = v173 + 2;
  *(a5 + 36) = v11 + 10;
  if (*(a5 + 116900) || v303[249] >= 25601)
  {
    v178 = &a2[(v126 + 2)];
    if (v178 < a2)
    {
      goto LABEL_655;
    }

    v179 = v178 + 1;
    if ((v178 + 1) > a3 || v178 > v179)
    {
      goto LABEL_655;
    }

    result = *v178;
    v180 = (v23 + 4 * v177);
    v183 = (v180 + 1) <= v12 && v180 <= v180 + 1 && v180 >= v23;
    if (result)
    {
      if (!v183)
      {
        goto LABEL_655;
      }

      *v180 = 65537;
      *(a5 + 50) = v173 + 3;
      *(a5 + 36) = v11 + 11;
      v184 = v178 + 2;
      if ((v178 + 2) > a3)
      {
        goto LABEL_655;
      }

      if (v179 > v184)
      {
        goto LABEL_655;
      }

      v185 = (v23 + 4 * (v173 + 3));
      if (v185 < v23)
      {
        goto LABEL_655;
      }

      if ((v185 + 2) > v12)
      {
        goto LABEL_655;
      }

      if (v185 > v185 + 2)
      {
        goto LABEL_655;
      }

      *v185 = v178[1];
      v185[1] = 9;
      v186 = v173 + 4;
      *(a5 + 50) = v173 + 4;
      *(a5 + 36) = v11 + 20;
      v187 = v178 + 3;
      if (v187 > a3)
      {
        goto LABEL_655;
      }

      if (v184 > v187)
      {
        goto LABEL_655;
      }

      v188 = (v23 + 4 * v186);
      if (v188 < v23 || (v188 + 2) > v12 || v188 > v188 + 2)
      {
        goto LABEL_655;
      }

      v12 = v186;
      *v188 = *v184;
      v189 = 22;
      v190 = 5;
      v191 = 2;
    }

    else
    {
      if (!v183)
      {
        goto LABEL_655;
      }

      v12 = v177;
      *v180 = 0;
      v189 = 11;
      v190 = 3;
      v191 = 1;
    }

    *(v23 + 4 * v12 + 2) = v191;
    *(a5 + 50) = v173 + v190;
    *(a5 + 36) = v11 + v189;
  }

  a4 = *v13;
  if (!v316)
  {
    v246 = v295[12] + a6;
    a4 = (a4 + (a4 >> 2));
    v247 = v13[1];
    LODWORD(v11) = v246 - v247;
    if (v247 < 0)
    {
      v246 -= v247;
    }

    a6 = v246;
  }

  v248 = v126 + 5;
  v321[0] = 0;
  v249 = a5 + 122116;
  if (v13[3])
  {
    v250 = *(v13 + 29);
    v318 = &a2[v248];
    v319 = a3;
    v320 = a2;
    result = WriteTnsData(v250, &v318, v321 + 1, a5, v321);
    v13 = v317;
    v248 += WORD2(v321[0]);
  }

  LODWORD(v21) = ((*(v13 + 34) + *(v13 + 34)) * a6);
  if (*(a5 + 122158))
  {
    LOWORD(v23) = v316;
    if (v316)
    {
      v251 = &a2[v248];
      if (v251 < a2)
      {
        goto LABEL_655;
      }

      v249 = a5 + 122116;
      if ((v13[36] & 0xFFFFFFFE) == 2)
      {
        v23 = (v251 + 1);
        if ((v251 + 1) > a3)
        {
          goto LABEL_655;
        }

        if (v23 < v251)
        {
          goto LABEL_655;
        }

        v11 = *(a5 + 40);
        v252 = *(a5 + 50);
        v253 = (v11 + 4 * v252);
        if (v253 < v11)
        {
          goto LABEL_655;
        }

        v12 = v11 + 7812;
        v11 = (v253 + 2);
        if ((v253 + 2) > v12 || v253 > v11)
        {
          goto LABEL_655;
        }

        LODWORD(v11) = *v251;
        *v253 = *v251;
        LOWORD(v12) = 1;
        v253[1] = 1;
        *(a5 + 50) = v252 + 1;
        ++*(a5 + 36);
        if (v11)
        {
          v18 = (v251 + 2);
          if ((v251 + 2) > a3 || v23 > v18)
          {
            goto LABEL_655;
          }

          result = EncodeIndex(v21 > 255, *v23, a5);
          v13 = v317;
          if (v317[36] == 2)
          {
            v23 = (v251 + 3);
            if ((v251 + 3) > a3)
            {
              goto LABEL_655;
            }

            if (v18 > v23)
            {
              goto LABEL_655;
            }

            v254 = *(a5 + 40);
            v255 = *(a5 + 50);
            v23 = v254 + 4 * v255;
            if (v23 < v254)
            {
              goto LABEL_655;
            }

            LODWORD(v11) = v254 + 7812;
            if (v23 + 4 > v254 + 7812 || v23 > v23 + 4)
            {
              goto LABEL_655;
            }

            *v23 = *v18;
            *(v23 + 2) = 2;
            *(a5 + 50) = v255 + 1;
            *(a5 + 36) += 2;
          }
        }
      }
    }
  }

  v256 = 1;
  if (*(v13 + 70))
  {
    LOWORD(v23) = v316;
    if (v316)
    {
      v257 = &a2[v248];
      if (v257 < a2)
      {
        goto LABEL_655;
      }

      v23 = (v257 + 1);
      if ((v257 + 1) > a3)
      {
        goto LABEL_655;
      }

      if (v257 > v23)
      {
        goto LABEL_655;
      }

      v12 = *(a5 + 40);
      v11 = *(a5 + 50);
      v258 = (v12 + 4 * v11);
      if (v258 < v12)
      {
        goto LABEL_655;
      }

      v259 = v12 + 7812;
      v12 = (v258 + 2);
      if ((v258 + 2) > v259 || v258 > v12)
      {
        goto LABEL_655;
      }

      LODWORD(v11) = *(a5 + 50);
      LODWORD(v12) = *v257;
      *v258 = *v257;
      v258[1] = 1;
      *(a5 + 50) = v11 + 1;
      ++*(a5 + 36);
      if (v12)
      {
        v260 = v257 + 2;
        if (v260 > a3 || v23 > v260)
        {
          goto LABEL_655;
        }

        result = EncodeIndex(v21 > 255, *v23, a5);
        v13 = v317;
        v256 = 0;
      }

      v249 = a5 + 122116;
    }
  }

  if (*v299)
  {
    *(v249 + 3860) = 0;
    result = IGFEncWriteBitstream(a5 + 123968);
    v13 = v317;
  }

  v261 = *(a5 + 36) - v314;
  if (*v315)
  {
    v261 += v315[5];
  }

  v262 = (v315[627] - v261);
  if (*(v249 + 42))
  {
    LOWORD(v23) = v248 + 4;
    v263 = &a2[(v248 + 4)];
    if (v263 <= a3 && v263 >= a2 && (v262 & 0x80000000) == 0)
    {
      LOWORD(v23) = v262;
      if ((a3 - v263) >> 2 >= v262)
      {
        return push_next_bits(a5, v263, v262);
      }
    }

    goto LABEL_655;
  }

  LOWORD(v23) = v248 + 3;
  v264 = &a2[(v248 + 3)];
  if (v264 < a2)
  {
    goto LABEL_655;
  }

  v23 = (v264 - 1);
  if (v264 - 1 < a2 || v264 > a3 || v23 > v264)
  {
    goto LABEL_655;
  }

  if (((a7 != 0) & ~v256) == 0)
  {
    v265 = a5;
    return ACcontextMapping_encode2_no_mem_s17_LC(v265);
  }

  v23 = a7 + 56;
  if (a7 + 56 > a8 || v23 < a7)
  {
    goto LABEL_655;
  }

  v265 = a5;
  return ACcontextMapping_encode2_no_mem_s17_LC(v265);
}