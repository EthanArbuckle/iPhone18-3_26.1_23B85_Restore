void E_LPC_lsp_unweight(uint64_t a1, float *a2, uint64_t a3, float a4)
{
  v37 = *MEMORY[0x1E69E9840];
  if (fabsf(a4 + -1.0638) >= 0.0001)
  {
    if (fabsf(a4 + -1.087) < 0.0001)
    {
      v7 = &p16_gamma0_92to1;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = &p16_gamma0_94to1;
  }

  v8 = 0;
  *&v9 = -1;
  *(&v9 + 1) = -1;
  v35[2] = v9;
  v36 = v9;
  v35[0] = v9;
  v35[1] = v9;
  v33[0] = v9;
  v33[1] = v9;
  v33[2] = v9;
  v34 = v9;
  v10 = 0.1848;
  do
  {
    v11 = acos(*(a1 + v8));
    *(v35 + v8) = v11;
    *(v33 + v8) = v11 - v10;
    v10 = v10 + 0.1848;
    v8 += 4;
  }

  while (v8 != 64);
  v12 = 0;
  *a2 = (*v35 + (v7[1] * *v33)) + (v7[2] * *(v33 + 1));
  v13 = v7 + 5;
  do
  {
    v14 = (v33 + v12);
    v15 = (v33 + v12 + 4);
    if ((v33 + v12) < v33 || v14 > v15)
    {
      goto LABEL_38;
    }

    v17 = (*(v35 + v12 + 4) + (*(v13 - 2) * *v14)) + (*(v13 - 1) * *v15);
    v18 = *v13;
    v13 += 3;
    a2[v12 / 4 + 1] = v17 + (v18 * v14[2]);
    v12 += 4;
  }

  while (v12 != 56);
  v19 = v7 + 46;
  if (v7 + 46 > v7 + 48 || v7 + 45 > v19 || v7 + 47 > v7 + 48 || v19 > v7 + 47)
  {
LABEL_38:
    __break(0x5519u);
  }

  v20 = 0;
  a2[15] = (*(&v36 + 3) + (v7[45] * *(&v34 + 2))) + (*v19 * *(&v34 + 3));
  v21 = 0.024544;
  do
  {
    v22 = a2[v20];
    if (v22 < v21)
    {
      a2[v20] = v21;
      v22 = v21;
    }

    v21 = v22 + 0.024544;
    ++v20;
  }

  while (v20 != 16);
  v23 = 3.117;
  if (a2[15] > 3.117)
  {
    v24 = 15;
    do
    {
      v25 = &a2[v24];
      v26 = (v25 + 1);
      v27 = v25 < a2 || v26 > (a2 + 16);
      if (v27 || v25 >= v26)
      {
        goto LABEL_38;
      }

      v29 = *v25;
      if (*v25 > v23)
      {
        *v25 = v23;
        v29 = v23;
      }

      v23 = v29 + -0.024544;
    }

    while (v24-- != 0);
  }

  for (i = 0; i != 16; ++i)
  {
    *(a3 + i * 4) = a2[i] * 2037.2;
    v32 = cos(a2[i]);
    a2[i] = v32;
  }
}

float *int_lsp4(float *result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6, __int16 a7)
{
  v33[1] = *MEMORY[0x1E69E9840];
  if (result == 256)
  {
    v11 = &interpol_frac_mid_relaxprev_16k;
  }

  else
  {
    v11 = &a_map;
  }

  if (result == 256)
  {
    v12 = &interpol_frac_mid;
  }

  else
  {
    v12 = &interpol_frac_mid_16k;
  }

  if ((a7 + 1) <= 3u)
  {
    v13 = &off_1E752F9C0;
    if (result == 256)
    {
      v13 = &off_1E752F980;
    }

    v14 = &off_1E752F9A0;
    if (result == 256)
    {
      v14 = &off_1E752F960;
    }

    v15 = (a7 + 1);
    v11 = v14[v15];
    v12 = v13[v15];
  }

  v16 = 0;
  *&v17 = -1;
  *(&v17 + 1) = -1;
  v32[2] = v17;
  v32[3] = v17;
  v32[0] = v17;
  v32[1] = v17;
  v30 = ((result + ((result >> 25) & 0x3F)) << 16) >> 22;
  v18 = v12;
LABEL_14:
  if (v30 > v16)
  {
    if (v18 >= v12)
    {
      v19 = v18 + 1;
      if (v18 + 1 <= v11 && v18 <= v19)
      {
        v20 = v18 + 2;
        if (v18 + 2 <= v11 && v19 <= v20)
        {
          v21 = v18 + 3;
          if (v18 + 3 <= v11 && v20 <= v21)
          {
            v22 = 0;
            v23 = *v18;
            v24 = v18[1];
            while (1)
            {
              v25 = v32 + v22 + 4;
              v26 = (v32 + v22) < v32 || v25 > v33;
              if (v26 || v32 + v22 > v25)
              {
                break;
              }

              *(v32 + v22) = ((*(a3 + v22) * v24) + (*(a2 + v22) * v23)) + (*(a4 + v22) * *v20);
              v22 += 4;
              if (v22 == 64)
              {
                v31[0] = a5;
                v31[1] = a6;
                v31[2] = a5;
                result = lsp2a_stab(v32, v31);
                ++v16;
                v18 = v21;
                v28 = a5 + 68 >= a5;
                a5 += 68;
                if (v28)
                {
                  goto LABEL_14;
                }

                break;
              }
            }
          }
        }
      }
    }

    __break(0x5519u);
  }

  return result;
}

void int_lsp(int a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, float *a6, float *a7, int a8)
{
  v29[1] = *MEMORY[0x1E69E9840];
  memset(v28, 0, sizeof(v28));
  if (a1 != 256)
  {
    a7 = &interpol_frac_mid_relaxprev_12k8;
  }

  if (a1 != 256)
  {
    a6 = &interpol_frac_16k;
  }

  if (a1 >= 64)
  {
    v14 = 0;
    v15 = a1 >> 6;
    do
    {
      v16 = &a6[v14];
      v17 = v16 + 1;
      if (v16 < a6 || v17 > a7 || v16 >= v17)
      {
        goto LABEL_31;
      }

      v20 = 0;
      v21 = *v16;
      v22 = 1.0 - *v16;
      do
      {
        v23 = v28 + v20 + 4;
        if ((v28 + v20) < v28 || v23 > v29 || v28 + v20 > v23)
        {
          goto LABEL_31;
        }

        *(v28 + v20) = (v21 * *(a3 + v20)) + (*(a2 + v20) * v22);
        v20 += 4;
      }

      while (v20 != 64);
      if (a8)
      {
        isp2a(v28, a4, a5);
      }

      else
      {
        v27[0] = a4;
        v27[1] = a5;
        v27[2] = a4;
        lsp2a_stab(v28, v27);
      }

      if (a4 + 68 < a4)
      {
LABEL_31:
        __break(0x5519u);
      }

      ++v14;
      a4 += 68;
    }

    while (v14 != v15);
  }
}

void TBEreset_enc(uint64_t a1, unsigned __int16 a2)
{
  v3 = (a1 + 56512);
  v4 = a2;
  if (*(a1 + 52108))
  {
    __A = 0.0;
    vDSP_vfill(&__A, (a1 + 54196), 1, 0x242uLL);
    *v3 = 0;
  }

  if (v4 == 1)
  {
    wb_tbe_extras_reset((a1 + 56700), (a1 + 56728));
    __A = 0.0;
    vDSP_vfill(&__A, (a1 + 56756), 1, 7uLL);
    __A = 0.0;
    vDSP_vfill(&__A, (a1 + 54156), 1, 0xAuLL);
    __A = 0.0;
    vDSP_vfill(&__A, (a1 + 54076), 1, 5uLL);
    __A = 0.0;
    vDSP_vfill(&__A, (a1 + 56564), 1, 0x14uLL);
    __A = 0.0;
    vDSP_vfill(&__A, (a1 + 54068), 1, 2uLL);
  }

  else if ((v4 & 0xFFFE) == 2)
  {
    __A = 0.0;
    vDSP_vfill(&__A, (a1 + 54036), 1, 7uLL);
    v5 = (a1 + 67324);
    if (a1 + 67320 > (a1 + 67324) || v5 > a1 + 67328 || a1 + 67376 > (a1 + 67380))
    {
      __break(0x5519u);
    }

    else
    {
      swb_tbe_reset((a1 + 54068), (a1 + 56756), (a1 + 54156), (a1 + 56564), (a1 + 54076), (a1 + 67320), v5, (a1 + 67328), (a1 + 67376));
      if (v4 == 3)
      {
        __A = 0.0;
        vDSP_vfill(&__A, (a1 + 57060), 1, 0xAuLL);
        v3[147] = 0;

        fb_tbe_reset_enc((a1 + 56784), (a1 + 56848));
      }
    }
  }
}

void encoderSideLossSimulation(uint64_t a1, uint64_t a2, __int128 *a3, unint64_t a4, int a5, unint64_t a6, float a7)
{
  v125[1] = *MEMORY[0x1E69E9840];
  v7 = a4 - a3;
  if (a4 < a3 || v7 <= 60)
  {
    goto LABEL_82;
  }

  v13 = 0;
  v97 = (a1 + 86216);
  *&v14 = -1;
  *(&v14 + 1) = -1;
  v121 = v14;
  v122 = v14;
  v119 = v14;
  v120 = v14;
  v100 = (a1 + 111784);
  v15 = *(a1 + 111820);
  *&v14 = vcvts_n_f32_s32(v15, 1uLL);
  v101 = vdupq_n_s32(0x40490FDBu);
  v103 = vdupq_lane_s32(*&v14, 0);
  do
  {
    v111 = vdivq_f32(vmulq_f32(a3[v13], v101), v103);
    v105 = cosf(v111.f32[1]);
    *&v16 = cosf(v111.f32[0]);
    *(&v16 + 1) = v105;
    v106 = v16;
    v17 = cosf(v111.f32[2]);
    v18 = v106;
    *(&v18 + 2) = v17;
    v107 = v18;
    v20 = cosf(v111.f32[3]);
    v21 = v107;
    *(&v21 + 3) = v20;
    *(&v119 + v13 * 16) = v21;
    ++v13;
  }

  while (v13 != 4);
  if (*v100)
  {
    v22 = *(a1 + 68720);
    v23 = v22 == 0;
    if (v22)
    {
      v24 = &GENB_Ave;
    }

    else
    {
      v24 = &GEWB_Ave;
    }

    v25 = &means_swb_cleanspeech_lsf32k0;
    if (v23)
    {
      v25 = &NumRatioBits;
    }

    v26 = (v15 == 16000 ? &GEWB2_Ave : v24);
    v27 = (v15 == 16000 ? &GEWB_Ave : v25);
  }

  else
  {
    v28 = &means_wb_cleanspeech_lsf16k0;
    v29 = igfMode;
    if (v15 == 25600)
    {
      v28 = &means_swb_cleanspeech_lsf25k6;
      v29 = &means_wb_cleanspeech_lsf16k0;
    }

    v26 = (v15 == 32000 ? &means_swb_cleanspeech_lsf32k0 : v28);
    v27 = (v15 == 32000 ? &means_swb_cleanspeech_lsf25k6 : v29);
  }

  v30 = *(a1 + 18540);
  v31 = *(a1 + 18556);
  v32 = *(a1 + 18572);
  *(a2 + 76) = *(a1 + 18588);
  *(a2 + 60) = v32;
  *(a2 + 44) = v31;
  *(a2 + 28) = v30;
  if (a2 + 92 < (a2 + 28))
  {
    goto LABEL_82;
  }

  v33 = 0;
  v34 = a2 + 476;
  do
  {
    v35 = a2 + v33;
    v36 = (a2 + v33 + 348);
    v37 = a2 + v33 + 352;
    v38 = v37 > a2 + 412 || v36 > v37;
    v39 = (v35 + 284);
    v40 = v35 + 288;
    v42 = v38 || v40 > a2 + 348 || v39 > v40;
    v43 = (v35 + 412);
    v44 = v35 + 416;
    if (v42 || v44 > v34 || v43 > v44)
    {
      goto LABEL_82;
    }

    v47 = *v39;
    *v43 = ((*v36 + *v39) + *(a3 + v33)) / 3.0;
    *v36 = v47;
    *v39 = *(a3 + v33);
    v33 += 4;
  }

  while (v33 != 64);
  *(a2 + 476) = a7;
  if (v7 <= 0x3F)
  {
    goto LABEL_82;
  }

  v48 = *a3;
  v49 = a3[1];
  v50 = a3[2];
  *(a2 + 204) = a3[3];
  *(a2 + 188) = v50;
  *(a2 + 172) = v49;
  *(a2 + 156) = v48;
  v51 = v120;
  *(a2 + 220) = v119;
  *(a2 + 236) = v51;
  v52 = v122;
  *(a2 + 252) = v121;
  *(a2 + 268) = v52;
  if (a5)
  {
    if (v34 <= a2 + 480)
    {
      dlpc_bfi(a6, (a2 + 520), a2 + 584, a2 + 156, a2 + 220, *(a1 + 3536), 1u, v19, (a2 + 28), a2 + 92, (a2 + 92), a2 + 156, (a2 + 476), a2 + 412, a2 + 476, 1, 0, 0, 0, 0, 0, 0, 0, v26, v27);
      *(a2 + 12) = *(a2 + 8);
      return;
    }

LABEL_82:
    __break(0x5519u);
  }

  v117 = -1;
  *&v53 = -1;
  *(&v53 + 1) = -1;
  v116[19] = v53;
  v116[20] = v53;
  v116[17] = v53;
  v116[18] = v53;
  v116[15] = v53;
  v116[16] = v53;
  v116[13] = v53;
  v116[14] = v53;
  v116[11] = v53;
  v116[12] = v53;
  v116[9] = v53;
  v116[10] = v53;
  v116[7] = v53;
  v116[8] = v53;
  v116[5] = v53;
  v116[6] = v53;
  v116[3] = v53;
  v116[4] = v53;
  v116[1] = v53;
  v116[2] = v53;
  v115[3] = v53;
  v116[0] = v53;
  v115[1] = v53;
  v115[2] = v53;
  v115[0] = v53;
  v54 = *(a2 + 504);
  __src[0] = *(a2 + 488);
  __src[1] = v54;
  v55 = v26;
  v56 = a1;
  v57 = v27;
  memcpy(&__src[2], (*(a2 + 480) + 68), 0x500uLL);
  v95 = *v97;
  v96 = v97[2];
  v98 = v56;
  v58 = v100[9];
  dlpc_bfi(a6, (a2 + 520), a2 + 584, a2 + 156, a2 + 220, *(v56 + 3536), 1u, v59, (a2 + 28), a2 + 92, (a2 + 92), a2 + 156, (a2 + 476), a2 + 412, a2 + 476, 1, 0, 0, 0, 0, 0, 0, 0, v55, v57);
  v60 = 0;
  *&v61 = -1;
  *(&v61 + 1) = -1;
  __dst[10] = v61;
  __dst[11] = v61;
  __dst[8] = v61;
  __dst[9] = v61;
  __dst[6] = v61;
  __dst[7] = v61;
  __dst[4] = v61;
  __dst[5] = v61;
  v62 = *(a2 + 236);
  __dst[0] = *(a2 + 220);
  __dst[1] = v62;
  v63 = *(a2 + 268);
  __dst[2] = *(a2 + 252);
  DWORD1(v61) = DWORD1(__dst[2]);
  __dst[3] = v63;
  *&v61 = v58 * 0.5;
  v102 = vdupq_lane_s32(*&v61, 0);
  v104 = vdupq_n_s32(0x40490FDBu);
  do
  {
    v112 = vdivq_f32(vmulq_f32(*(a2 + 520 + v60 * 16), v104), v102);
    v108 = cosf(v112.f32[1]);
    *&v64 = cosf(v112.f32[0]);
    *(&v64 + 1) = v108;
    v109 = v64;
    v65 = cosf(v112.f32[2]);
    v66 = v109;
    *(&v66 + 2) = v65;
    v110 = v66;
    v67 = cosf(v112.f32[3]);
    v68 = v110;
    *(&v68 + 3) = v67;
    __dst[v60 + 4] = v68;
    ++v60;
  }

  while (v60 != 4);
  v69 = v95 + 4 * a6;
  int_lsp(256, __dst, &__dst[4], v115, &v118, interpol_frac_12k8, scaleTcxTable, 0);
  *(a2 + 20) = v100[11];
  *(a2 + 24) = v100[15];
  if (v69 < v96)
  {
    goto LABEL_82;
  }

  v70 = *(v98 + 140);
  memset(v124, 0, sizeof(v124));
  memcpy(__dst, __src, sizeof(__dst));
  v71 = 0;
  v72 = 0;
  v73 = v70 < 320;
  if (v70 >= 320)
  {
    v74 = 128;
  }

  else
  {
    v74 = 112;
  }

  LOWORD(__C) = 64;
  if (v73)
  {
    v75 = 48;
  }

  else
  {
    v75 = 64;
  }

  HIWORD(__C) = v75;
  v76 = v69 - 64;
  v77 = v116;
  v78 = 1;
  do
  {
    v79 = v78;
    v80 = &__C + v71;
    v81 = v80 + 1;
    if (v80 < &__C || v81 > __src || v80 >= v81)
    {
      goto LABEL_82;
    }

    v84 = &v124[v72];
    if (v84 > v125)
    {
      goto LABEL_82;
    }

    if (v84 < v124)
    {
      goto LABEL_82;
    }

    v85 = *v80;
    if ((v85 & 0x80000000) != 0 || (v125 - v84) >> 2 < v85)
    {
      goto LABEL_82;
    }

    vDSP_conv((v76 + 4 * v72), 1, v77, -1, v84, 1, v85, 0x11uLL);
    v78 = 0;
    v77 += 17;
    v71 = 1;
    v72 = 64;
  }

  while ((v79 & 1) != 0);
  v86 = *(a2 + 8);
  v87 = v86 - 9;
  v88 = &__dst[84] - v86 + 1;
  v89 = 4 * v86 + 476;
  v90 = -1.0e10;
  v91 = 18;
  do
  {
    if (v87 <= *(a2 + 24) && v87 >= *(a2 + 20))
    {
      if (v88 > v125 || __dst > v88 || v74 > v89 >> 2)
      {
        goto LABEL_82;
      }

      __C = NAN;
      vDSP_dotpr(v124, 1, v88, 1, &__C, v74);
      v92 = __C;
      __C = NAN;
      vDSP_dotpr(v88, 1, v88, 1, &__C, v74);
      v93 = sqrt(__C + 1.0e-10);
      v94 = v92 / v93;
      if (v90 < v94)
      {
        v90 = v94;
        v86 = v87;
      }
    }

    ++v87;
    --v88;
    v89 += 4;
    --v91;
  }

  while (v91);
  if (v90 < 0.0)
  {
    v86 = *(a2 + 8);
  }

  *(a2 + 12) = v86;
}

__int16 *Q_lsf_tcxlpc(float *a1, unint64_t a2, char *a3, unint64_t a4, _WORD *a5, unint64_t a6, int *a7, unint64_t a8, int a9, unsigned int a10, unint64_t a11, unint64_t a12, int a13, uint64_t a14, uint64_t a15)
{
  v102[1] = *MEMORY[0x1E69E9840];
  *&v21 = -1;
  *(&v21 + 1) = -1;
  v101[2] = v21;
  v101[3] = v21;
  v101[0] = v21;
  v101[1] = v21;
  v94 = 0xAAAAAAAAAAAAAAAALL;
  *&v22 = 0xAAAAAAAAAAAAAAAALL;
  *(&v22 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v93[0] = v22;
  v93[1] = v22;
  v92[2] = v21;
  v92[3] = v21;
  v92[0] = v21;
  v92[1] = v21;
  v91[2] = v21;
  v91[3] = v21;
  v91[0] = v21;
  v91[1] = v21;
  v90[0] = v22;
  v90[1] = v22;
  *&v96 = a14 + 512;
  *(&v96 + 1) = a15;
  *&v97 = a14;
  Unified_weighting(&v96, a1, a2, v101, v102, a9, a13 == 1, 12800);
  v80 = a7;
  v23 = a7 + 1;
  v79 = a8;
  if (v23 > a8)
  {
    goto LABEL_96;
  }

  if (v23 < v80)
  {
    goto LABEL_96;
  }

  *v80 = 0;
  v24 = (&lsf_means + 2 * a9);
  if (v24 < &lsf_means || v24 + 2 > &lsf_codebook || v24 > v24 + 2)
  {
    goto LABEL_96;
  }

  v25 = 0;
  *&v26 = -1;
  *(&v26 + 1) = -1;
  v99 = v26;
  v100 = v26;
  v97 = v26;
  v98 = v26;
  v96 = v26;
  v27 = *v24;
  v28 = v24[1];
  do
  {
    v29 = &v27[v25];
    v30 = &v27[v25 + 1];
    v32 = v30 <= v28 && v29 <= v30 && v29 >= v27;
    v33 = (a11 + v25 * 4);
    v34 = a11 + v25 * 4 + 4;
    if (!v32 || v33 < a11 || v34 > a12 || v33 > v34)
    {
      goto LABEL_96;
    }

    *(&v96 + v25 * 4) = *v29 + (*v33 * 0.33333);
    ++v25;
  }

  while (v25 != 16);
  for (i = 0; i != 16; ++i)
  {
    v39 = &a1[i];
    v40 = &a1[i + 1];
    if (&a1[i] < a1 || v40 > a2 || v39 > v40)
    {
      goto LABEL_96;
    }

    *v39 = *v39 - *(&v96 + i * 4);
  }

  v43 = &lsf_codebook + 12 * a9 + 6 * a10;
  msvq_enc(v43, (v43 + 6), &lsf_dims, &lsf_offs, &lsf_offs, &lsf_ind_dims, a1, a2, lsf_numlevels, &lsf_ind_numlevels, 3u, v101, v102, 16, 16, v23, v79);
  if (a4 < a3)
  {
    goto LABEL_96;
  }

  if ((a4 - a3) < 61)
  {
    goto LABEL_96;
  }

  if ((v79 - v23) < 9)
  {
    goto LABEL_96;
  }

  v87 = &lsf_dims;
  v88 = &lsf_offs;
  v89 = &lsf_dims;
  v84 = &lsf_offs;
  v85 = &lsf_ind_dims;
  v86 = &lsf_offs;
  v81 = v93;
  v82 = &v95;
  v83 = v93;
  msvq_dec(v43, (v43 + 6), &v87, &v84, 3, 0x10u, 16, v23, a3, &v81);
  if (v28 < v27 || (v28 - v27) < 5)
  {
    goto LABEL_96;
  }

  is_active = lsf_ind_is_active(LOWORD(v93[0]), SWORD1(v93[0]), v27, a9, a10);
  v45 = 0;
  *v80 = is_active;
  v46 = v93;
  do
  {
    v47 = &a1[v45];
    v48 = &a1[v45 + 1];
    v50 = &a1[v45] < a1 || v48 > a2 || v47 > v48;
    v51 = &v27[v45];
    v52 = &v27[v45 + 1];
    if (v50 || v51 < v27 || v52 > v28 || v51 > v52)
    {
      goto LABEL_96;
    }

    v56 = *v46++;
    *(v92 + v45 * 4) = (*(&v96 + v45 * 4) + *v47) - (*v51 + (v56 / 2.56));
    ++v45;
  }

  while (v45 != 16);
  v57 = (v80 + 4);
  if (v80 + 4 < v80)
  {
    goto LABEL_96;
  }

  v58 = &lsf_ind_codebook + 4 * a9 + 2 * a10;
  msvq_enc(v58, (v58 + 2), &lsf_ind_dims, &lsf_ind_offs, &lsf_ind_offs, ari_lookup_s17_LC, v92, v93, &lsf_ind_numlevels, &lsf_unified_fit_model_nb, 1u, v101, v102, 16, 16, v80 + 4, v79);
  if (!*v80)
  {
    goto LABEL_66;
  }

  if (v79 < v57 || (v79 - v57) < 1)
  {
LABEL_96:
    __break(0x5519u);
  }

  v87 = &lsf_ind_dims;
  v88 = &lsf_ind_offs;
  v89 = &lsf_ind_dims;
  v84 = &lsf_ind_offs;
  v85 = ari_lookup_s17_LC;
  v86 = &lsf_ind_offs;
  v81 = v90;
  v82 = v91;
  v83 = v90;
  msvq_dec(v58, (v58 + 2), &v87, &v84, 1, 0x10u, 16, v57, v91, &v81);
  for (j = 0; j != 32; j += 2)
  {
    v60 = *(v90 + j) + *(v93 + j);
    if (v60 >= 0x7FFF)
    {
      v60 = 0x7FFF;
    }

    if (v60 <= -32768)
    {
      LOWORD(v60) = 0x8000;
    }

    *(v93 + j) = v60;
  }

LABEL_66:
  for (k = 0; k != 16; ++k)
  {
    v62 = &a3[k * 4];
    v63 = &a3[k * 4 + 4];
    if (&a3[k * 4] < a3 || v63 > a4 || v62 > v63)
    {
      goto LABEL_96;
    }

    v66 = *(&v96 + k * 4);
    *v62 = v66 + *v62;
    v67 = &a1[k];
    if (&a1[k] < a1 || (v67 + 1) > a2 || v67 > v67 + 1)
    {
      goto LABEL_96;
    }

    *v67 = v66 + *v67;
  }

  reorder_lsf(a3, 80.0, 12800.0);
  v68 = 0;
  v69 = v27;
  do
  {
    if (v69 < v27 || (v69 + 1) > v28 || v69 > v69 + 1)
    {
      goto LABEL_96;
    }

    v70 = *v69 * 1.28;
    v71 = (v70 + v70) * 0.000030518;
    v72 = v71;
    if (v71 < 0.0)
    {
      v73 = v72 * 32768.0 + -0.5;
      if (v73 <= -32768.0)
      {
        LOWORD(v74) = 0x8000;
        goto LABEL_88;
      }

LABEL_86:
      v74 = v73;
      goto LABEL_88;
    }

    v73 = v72 * 32768.0 + 0.5;
    if (v73 < 32767.0)
    {
      goto LABEL_86;
    }

    LOWORD(v74) = 0x7FFF;
LABEL_88:
    v75 = v74 + *(v93 + v68);
    if (v75 >= 0x7FFF)
    {
      v75 = 0x7FFF;
    }

    if (v75 <= -32768)
    {
      LOWORD(v75) = 0x8000;
    }

    *(v93 + v68) = v75;
    v68 += 2;
    ++v69;
  }

  while (v68 != 32);
  result = basop_reorder_lsf(v93);
  if (a5)
  {
    return basop_lsf2lsp(v93, &v95, a5, a6, &v87);
  }

  return result;
}

uint64_t basop_E_LPC_f_lsp_a_conversion(unint64_t a1, _WORD *a2, unint64_t a3)
{
  *&v105[4] = *MEMORY[0x1E69E9840];
  v104 = 0;
  memset(v103, 0, sizeof(v103));
  v101 = -1431655766;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v100[0] = v4;
  v100[1] = v4;
  v5 = E_LPC_f_lsp_pol_get(a1, a1 + 32, v103, v105, 8, 0);
  if (a1 + 2 < a1)
  {
    goto LABEL_159;
  }

  v6 = E_LPC_f_lsp_pol_get(a1 + 2, a1 + 32, v100, v102, 8, v5);
  v7 = v6;
  if (v6 - v5 != (v6 - v5))
  {
    v8 = 1;
LABEL_5:
    if (v6 <= v5)
    {
      v10 = v5;
    }

    else
    {
      v10 = v6;
    }

    E_LPC_f_lsp_pol_get(a1, a1 + 32, v103, v105, 8, v10);
    v9 = v8;
    goto LABEL_9;
  }

  v8 = 0;
  v9 = 0;
  if (v6 != v5)
  {
    goto LABEL_5;
  }

LABEL_9:
  v11 = 0;
  do
  {
    v12 = 8 - v11;
    v13 = v103 + 4 * v12;
    v14 = v13 + 4;
    v16 = v13 < v103 || v14 > v105 || v13 >= v14;
    if (v16)
    {
      goto LABEL_159;
    }

    v17 = v11;
    v18 = 7 - v11;
    v19 = v103 + v18;
    if (v19 < v103 || v19 + 1 > v105 || v19 > v19 + 1)
    {
      goto LABEL_159;
    }

    v20 = *(v103 + v12);
    v21 = *v19;
    v22 = v21 + v20;
    v24 = (v21 ^ v20) < 0;
    v23 = (v21 + v20) ^ v20;
    v24 = !v24 && v23 < 0;
    v25 = !v24;
    v26 = (v20 >> 31) ^ 0x7FFFFFFF;
    if (v25)
    {
      v26 = v22;
    }

    *(v103 + v12) = v26;
    v27 = v100 + v12;
    if (v27 < v100)
    {
      goto LABEL_159;
    }

    if (v27 + 1 > v102)
    {
      goto LABEL_159;
    }

    if (v27 > v27 + 1)
    {
      goto LABEL_159;
    }

    v28 = v100 + v18;
    if (v28 < v100)
    {
      goto LABEL_159;
    }

    v29 = v28 + 1;
    if (v28 + 1 > v102)
    {
      goto LABEL_159;
    }

    v30 = __OFSUB__(v28, v29);
    if (v28 > v29)
    {
      goto LABEL_159;
    }

    v31 = *v28;
    v32 = *v27 - v31;
    v33 = (((v31 ^ *v27) & (v32 ^ *v27)) < 0) ^ v30;
    if (v33)
    {
      v34 = 0;
    }

    else
    {
      v34 = 1;
    }

    v35 = (*v27 >> 31) ^ 0x7FFFFFFF;
    if (!v33)
    {
      v35 = v32;
    }

    if ((v34 & v25) == 0)
    {
      v9 = 1;
    }

    *v27 = v35;
    v11 = v17 + 1;
  }

  while (v17 < 7);
  v36 = 0;
  v37 = 1;
  do
  {
    v38 = v103 + 4 * v37;
    v39 = v38 + 4;
    v41 = v38 < v103 || v39 > v105 || v38 >= v39;
    v42 = v100 + 4 * v37;
    v43 = v42 + 4;
    if (v41 || v42 < v100 || v43 > v102 || v42 >= v43)
    {
      goto LABEL_159;
    }

    v47 = *(v103 + v37);
    v48 = *(v100 + v37);
    v49 = v48 + v47;
    v50 = v48 ^ v47;
    v52 = (v48 ^ v47) < 0 || ((v48 + v47) ^ v47) >= 0;
    v53 = (v47 >> 31) ^ 0x7FFFFFFF;
    if (!v52)
    {
      v49 = (v47 >> 31) ^ 0x7FFFFFFF;
    }

    if (v49 >= 0)
    {
      v54 = v49;
    }

    else
    {
      v54 = -v49;
    }

    if (v49 == 0x80000000)
    {
      v55 = 0x7FFFFFFF;
    }

    else
    {
      v55 = v54;
    }

    v56 = __OFSUB__(v36, v55);
    if (v36 <= v55)
    {
      v36 = v55;
    }

    v57 = v47 - v48;
    v58 = ((v50 & (v57 ^ v47)) < 0) ^ v56;
    if (v58)
    {
      v59 = 0;
    }

    else
    {
      v59 = 1;
    }

    if (v58)
    {
      v57 = v53;
    }

    if ((v59 & v52) == 0)
    {
      v9 = 1;
    }

    if (v57 >= 0)
    {
      v60 = v57;
    }

    else
    {
      v60 = -v57;
    }

    if (v57 == 0x80000000)
    {
      v60 = 0x7FFFFFFF;
    }

    if (v36 <= v60)
    {
      v36 = v60;
    }

    v16 = v37++ >= 8;
  }

  while (!v16);
  v99 = v9;
  if ((v36 - 1) > 0x3FFFFFFE)
  {
    v61 = 0;
  }

  else
  {
    v61 = 0;
    do
    {
      v62 = v36 >> 29;
      v36 *= 2;
      ++v61;
    }

    while (!v62);
  }

  if (v61 >= 6)
  {
    v63 = 6;
  }

  else
  {
    v63 = v61;
  }

  v64 = shl(256, v63, &v99);
  if ((a2 + 1) > a3 || a2 + 1 < a2)
  {
LABEL_159:
    __break(0x5519u);
  }

  *a2 = v64;
  if (v7 | v5)
  {
    v65 = v63 - v5;
    if (v65 < 0x8000)
    {
      if (v65 <= -32769)
      {
        v99 = 1;
        LOWORD(v65) = 0x8000;
      }
    }

    else
    {
      v99 = 1;
      LOWORD(v65) = 0x7FFF;
    }

    *a2 = shl(256, v65, &v99);
  }

  v66 = 16;
  v67 = 1;
  do
  {
    v68 = v103 + v67;
    v69 = v68 + 1;
    v71 = v68 < v103 || v69 > v105 || v68 >= v69;
    v72 = v100 + v67;
    v73 = v72 + 1;
    v76 = v71 || v72 < v100 || v73 > v102 || v72 >= v73;
    v77 = &a2[v67];
    v78 = v77 + 1;
    if (v76 || v77 < a2 || v78 > a3 || v77 >= v78)
    {
      goto LABEL_159;
    }

    v82 = *v72;
    v83 = *v68;
    v84 = *v72 ^ *v68;
    v85 = *v72 + *v68;
    if ((v85 ^ v83) > -1 || v84 < 0)
    {
      v87 = v85;
    }

    else
    {
      v87 = (v83 >> 31) ^ 0x7FFFFFFF;
    }

    v88 = L_shl(v87, v63);
    v89 = ((v88 + 0x8000) ^ v88) > -1 || v88 < 0;
    v90 = (v88 + 0x8000) >> 16;
    if (!v89)
    {
      LOWORD(v90) = 0x7FFF;
    }

    *v77 = v90;
    v91 = &a2[v66];
    if (v91 < a2)
    {
      goto LABEL_159;
    }

    v92 = v91 + 1;
    if ((v91 + 1) > a3 || v91 > v92)
    {
      goto LABEL_159;
    }

    if ((v84 & ((v83 - v82) ^ v83)) < 0 != __OFSUB__(v91, v92))
    {
      v93 = (v83 >> 31) ^ 0x7FFFFFFF;
    }

    else
    {
      v93 = v83 - v82;
    }

    result = L_shl(v93, v63);
    v95 = ((result + 0x8000) ^ result) > -1 || result < 0;
    v96 = (result + 0x8000) >> 16;
    if (!v95)
    {
      LOWORD(v96) = 0x7FFF;
    }

    *v91 = v96;
    --v66;
    v16 = v67++ >= 8;
  }

  while (!v16);
  return result;
}

uint64_t lsf_update_memory(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = (&lsf_means + 2 * result);
  v5 = v4 + 2;
  if (v4 >= &lsf_means && v5 <= &lsf_codebook && v4 <= v5)
  {
    v8 = 0;
    v10 = *v4;
    v9 = *(&lsf_means + 2 * result + 1);
    while (1)
    {
      v11 = (v10 + v8);
      v12 = v10 + v8 + 4;
      v13 = v10 + v8 < v10 || v12 > v9;
      if (v13 || v11 > v12)
      {
        break;
      }

      *(a4 + v8) = (*(a2 + v8) - *v11) + (*(a3 + v8) * -0.33333);
      v8 += 4;
      if (v8 == 64)
      {
        return result;
      }
    }
  }

  __break(0x5519u);
  return result;
}

uint64_t gp_clip_test_lsf(uint64_t result, float *a2, unint64_t a3, float *a4, unint64_t a5, int a6)
{
  v6 = a2 + 1;
  v7 = a2 + 2;
  if ((a2 + 1) <= a3 && v6 >= a2 && v7 <= a3 && v6 <= v7)
  {
    v11 = a2[1] - *a2;
    if (a6)
    {
      v12 = 15;
    }

    else
    {
      v12 = 16;
    }

    v13 = 2;
    while (1)
    {
      v14 = &a2[v13];
      v15 = v14 + 1;
      v16 = v14 < a2 || v15 > a3;
      if (v16 || v14 >= v15)
      {
        break;
      }

      if (v14 - 1 < a2 || v14 - 1 >= v14)
      {
        break;
      }

      v19 = *(v14 - 1);
      if ((*v14 - v19) < v11)
      {
        v11 = *v14 - v19;
      }

      if (v12 <= ++v13)
      {
        if ((a4 + 1) > a5 || a4 + 1 < a4)
        {
          break;
        }

        v20 = (v11 * 0.2) + (*a4 * 0.8);
        if (result == 8850 || result == 6600)
        {
          v21 = 150.0;
        }

        else
        {
          v21 = 120.0;
        }

        if (v20 > v21)
        {
          v20 = v21;
        }

        *a4 = v20;
        return result;
      }
    }
  }

  __break(0x5519u);
  return result;
}

void cng_params_upd(__int128 *a1, const float *a2, unint64_t a3, int a4, _WORD *a5, void *a6, _WORD *a7, void *a8, __int16 a9, void *a10, _WORD *a11, void *a12, void *a13, uint64_t a14)
{
  v63 = *MEMORY[0x1E69E9840];
  memset(__b, 255, sizeof(__b));
  v22 = *a5;
  if (v22 == 7)
  {
    v23 = 0;
  }

  else
  {
    v23 = v22 + 1;
  }

  *a5 = v23;
  v24 = (*a8 + 64 * v23);
  if (v24 < a8[2])
  {
    goto LABEL_64;
  }

  v25 = a8[1];
  v36 = v25 >= v24;
  v26 = v25 - v24;
  if (!v36)
  {
    goto LABEL_64;
  }

  if (v26 <= 0x3F)
  {
    goto LABEL_64;
  }

  v27 = *a1;
  v28 = a1[1];
  v29 = a1[3];
  v24[2] = a1[2];
  v24[3] = v29;
  *v24 = v27;
  v24[1] = v28;
  if (v24 + 4 < v24)
  {
    goto LABEL_64;
  }

  v30 = a3 - a2;
  if (a3 < a2)
  {
    goto LABEL_64;
  }

  if (a4 < 0)
  {
    goto LABEL_64;
  }

  if (v30 >> 2 < a4)
  {
    goto LABEL_64;
  }

  *__C = -1;
  vDSP_dotpr(a2, 1, a2, 1, __C, a4);
  v31 = (*a6 + 4 * *a5);
  if ((v31 + 1) > a6[1] || v31 > v31 + 1 || v31 < a6[2])
  {
    goto LABEL_64;
  }

  *v31 = *__C / a4;
  if (!a9)
  {
    v41 = (*a11 + 1);
    if (v41 >= 8)
    {
      LOWORD(v41) = 8;
    }

    *a11 = v41;
    v42 = (*a12 + (*a5 << 10));
    if (v42 >= a12[2])
    {
      v43 = a12[1];
      v36 = v43 >= v42;
      v44 = v43 - v42;
      if (v36 && v30 >= 0x400 && v44 > 0x3FF)
      {
        memmove(v42, a2, 0x400uLL);
        if (v42 + 1024 >= v42)
        {
          v45 = (*a13 + 8 * *a5);
          if ((v45 + 1) <= a13[1] && v45 <= v45 + 1 && v45 >= a13[2])
          {
            *v45 = a14;
            goto LABEL_61;
          }
        }
      }
    }

LABEL_64:
    __break(0x5519u);
  }

  if (a4 >= 1)
  {
    if (4 * a4 > v30)
    {
      goto LABEL_64;
    }

    if (a4 >= 0x141)
    {
      goto LABEL_64;
    }

    memmove(__b, a2, 4 * a4);
    if (&__b[a4] < __b)
    {
      goto LABEL_64;
    }
  }

  memset(__C, 255, sizeof(__C));
  fft_rel(__b, 256, 8);
  v32 = 0;
  for (i = 0; i != -20; --i)
  {
    v34 = &__b[i + 255];
    v35 = &__b[i + 256];
    v36 = &__b[v32 + 2] <= &v63 && v34 >= __b;
    if (!v36 || v35 > &v63 || v34 > v35)
    {
      goto LABEL_64;
    }

    v39 = (*v34 * *v34) + (__b[v32 + 1] * __b[v32 + 1]);
    *&__C[v32 * 4] = (v39 + v39) * 0.0039062;
    ++v32;
  }

  v58 = *&__C[32];
  v59 = *&__C[48];
  v60 = *&__C[64];
  v56 = *__C;
  v57 = *&__C[16];
  if (a14 <= 13200)
  {
    if (a14 <= 9600)
    {
      v40 = a14 <= 8000 ? a14 > 7200 : 2;
    }

    else
    {
      v40 = 3;
    }
  }

  else
  {
    v40 = 4;
  }

  v46 = &ENR_ATT[2 * v40];
  if (v46 < ENR_ATT)
  {
    goto LABEL_64;
  }

  if (v46 + 1 > &subband_search_offsets_13p2kbps_Har)
  {
    goto LABEL_64;
  }

  if (v46 > v46 + 1)
  {
    goto LABEL_64;
  }

  v47 = exp2(*v46);
  v48 = 0;
  v49 = 1.0 / v47;
  do
  {
    *(&v56 + v48) = vmulq_n_f32(*(&v56 + v48), v49);
    v48 += 16;
  }

  while (v48 != 80);
  v50 = (*a10 + 80 * *a5);
  if (v50 < a10[2])
  {
    goto LABEL_64;
  }

  v51 = a10[1];
  v36 = v51 >= v50;
  v52 = v51 - v50;
  if (!v36)
  {
    goto LABEL_64;
  }

  if (v52 <= 0x4F)
  {
    goto LABEL_64;
  }

  v53 = v59;
  v50[2] = v58;
  v50[3] = v53;
  v50[4] = v60;
  v54 = v57;
  *v50 = v56;
  v50[1] = v54;
  if (v50 + 5 < v50)
  {
    goto LABEL_64;
  }

LABEL_61:
  v55 = (*a7 + 1);
  if (v55 >= 8)
  {
    LOWORD(v55) = 8;
  }

  *a7 = v55;
}

void dtx_hangover_control(float *a1, uint64_t a2)
{
  v167[1] = *MEMORY[0x1E69E9840];
  *&v2 = -1;
  *(&v2 + 1) = -1;
  v166[31] = v2;
  v166[29] = v2;
  v166[30] = v2;
  v3 = a1 + 6229;
  v166[27] = v2;
  v166[28] = v2;
  v166[25] = v2;
  v166[26] = v2;
  v166[23] = v2;
  v166[24] = v2;
  v166[21] = v2;
  v166[22] = v2;
  v166[19] = v2;
  v166[20] = v2;
  v166[17] = v2;
  v166[18] = v2;
  v166[15] = v2;
  v166[16] = v2;
  v166[13] = v2;
  v166[14] = v2;
  v166[11] = v2;
  v166[12] = v2;
  v166[9] = v2;
  v166[10] = v2;
  v166[7] = v2;
  v166[8] = v2;
  v166[5] = v2;
  v166[6] = v2;
  v166[3] = v2;
  v166[4] = v2;
  v166[1] = v2;
  v166[2] = v2;
  v165[1] = v2;
  v166[0] = v2;
  v164 = v2;
  v165[0] = v2;
  v162 = v2;
  v163 = v2;
  v160 = v2;
  v161 = v2;
  v158 = v2;
  v159 = v2;
  v156 = v2;
  v157 = v2;
  v154 = v2;
  v155 = v2;
  v152 = v2;
  v153 = v2;
  v150 = v2;
  v151 = v2;
  v148 = v2;
  v149 = v2;
  v146 = v2;
  v147 = v2;
  v144 = v2;
  v145 = v2;
  v142 = v2;
  v143 = v2;
  v140 = v2;
  v141 = v2;
  v138 = v2;
  v139 = v2;
  v136 = v2;
  v137 = v2;
  v134 = v2;
  v135 = v2;
  v133 = v2;
  v127[2] = v2;
  v128 = v2;
  v127[0] = v2;
  v127[1] = v2;
  v4 = (a1 + 6832);
  v5 = *(a1 + 13406);
  v6 = &a1[v5 + 6832];
  __C = -1;
  if (v6 < a1 + 6832)
  {
    goto LABEL_157;
  }

  v7 = a1;
  v8 = (a1 + 6840);
  if (v6 + 1 > a1 + 6840 || v6 > v6 + 1)
  {
    goto LABEL_157;
  }

  v10 = v5;
  v11 = *v6;
  v12 = log10(*v6) / 0.301029996;
  if (v12 >= 0.0)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0.0;
  }

  v14 = *(v3 + 1542);
  v15 = v10 - v14 + 1;
  if (((v10 - v14 + 1) & 0x8000) != 0)
  {
    v15 += *(v3 + 947);
  }

  v16 = v14;
  if (v14 >= 2)
  {
    v17 = 0;
    v18 = v7 + 6704;
    v19 = 8;
    v20 = v166;
    while (1)
    {
      v21 = &v18[32 * v15];
      v22 = v21 >= v18 && v20 >= v166;
      if (!v22 || v20 > v167 || v21 > v4)
      {
        break;
      }

      if (v4 - v21 < 0x40 || v19 == 0)
      {
        break;
      }

      v24 = v21[1];
      *v20 = *v21;
      v20[1] = v24;
      v25 = v21[3];
      v20[2] = v21[2];
      v20[3] = v25;
      if (v20 + 4 < v20)
      {
        break;
      }

      v26 = (v4 + 4 * v15);
      if (v26 < v4)
      {
        break;
      }

      if ((v26 + 1) > v8)
      {
        break;
      }

      if (v26 > v26 + 1)
      {
        break;
      }

      v27 = v165 + 4 * v17;
      if (v27 < v165 || v27 + 4 > v166 || v27 > v27 + 4)
      {
        break;
      }

      *(v165 + v17) = *v26;
      if (*(v3 + 947) == (v15 + 1))
      {
        v15 = 0;
      }

      else
      {
        ++v15;
      }

      ++v17;
      --v19;
      v20 += 4;
      if (v14 - 1 <= v17)
      {
        goto LABEL_33;
      }
    }

LABEL_157:
    __break(0x5519u);
  }

LABEL_33:
  v28 = v14 - 2;
  v29 = v165 + v28;
  if (v29 < v165)
  {
    goto LABEL_157;
  }

  if (v29 + 1 > v166)
  {
    goto LABEL_157;
  }

  if (v29 > v29 + 1)
  {
    goto LABEL_157;
  }

  v30 = &v166[4 * v28];
  if (v30 < v166 || v30 > v167 || v28 == 8)
  {
    goto LABEL_157;
  }

  v31 = *v29;
  v32 = 0.2;
  v33 = *v29 * 0.2;
  v34 = v30[1];
  v133 = *v30;
  v134 = v34;
  v35 = v30[3];
  v135 = v30[2];
  v136 = v35;
  if (v16 >= 4)
  {
    v36 = v31 * 1.03;
    v37 = v31 * 0.7;
    v38 = 1;
    v32 = 0.2;
    v39 = 1;
    v40 = 1;
    while (1)
    {
      v41 = v28 - v38;
      v42 = v165 + v41;
      v43 = v42 + 1;
      v44 = v42 < v165 || v43 > v166;
      if (v44 || v42 > v43)
      {
        goto LABEL_157;
      }

      v46 = *v42;
      if (*v42 < v36 && v46 > v37)
      {
        v48 = &W_DTX_HO[v39];
        if (v48 < W_DTX_HO)
        {
          goto LABEL_157;
        }

        if (v48 + 1 > HO_ATT)
        {
          goto LABEL_157;
        }

        if (v48 > v48 + 1)
        {
          goto LABEL_157;
        }

        v49 = &v166[4 * v41];
        if (v49 < v166)
        {
          goto LABEL_157;
        }

        v50 = &v133 + 4 * v40;
        if (v50 < &v133)
        {
          goto LABEL_157;
        }

        if (v50 > v165)
        {
          goto LABEL_157;
        }

        if (v49 > v167)
        {
          goto LABEL_157;
        }

        if (v41 == 8)
        {
          goto LABEL_157;
        }

        if (v40 == 8)
        {
          goto LABEL_157;
        }

        v51 = *v48;
        v52 = v49[1];
        *v50 = *v49;
        v50[1] = v52;
        v53 = v49[3];
        v50[2] = v49[2];
        v50[3] = v53;
        if (v50 + 4 < v50)
        {
          goto LABEL_157;
        }

        v33 = v33 + (v51 * v46);
        v32 = v32 + v51;
        ++v40;
      }

      v38 = ++v39;
      if (v28 <= v39)
      {
        goto LABEL_66;
      }
    }
  }

  v40 = 1;
LABEL_66:
  v54 = v33 / v32;
  if (v54 >= 1.0)
  {
    v55 = v54;
  }

  else
  {
    v55 = 1.0;
  }

  v56 = log10(v55);
  v57 = (v11 * 0.2) + (v55 * 0.8);
  if (v40 >= 3)
  {
    v57 = (v11 * 0.05) + (v55 * 0.95);
  }

  v58 = log10(v57) / 0.301029996;
  if (v58 >= 0.0)
  {
    v59 = v58;
  }

  else
  {
    v59 = 0.0;
  }

  LODWORD(__A) = 0;
  vDSP_vfill(&__A, &__C, 1, 2uLL);
  *&v60 = -1;
  *(&v60 + 1) = -1;
  __A = v60;
  v130 = v60;
  v131 = v60;
  v132 = v60;
  if (v40 <= 0)
  {
    v62 = 0;
    v65 = v40;
    goto LABEL_98;
  }

  v121 = v56;
  v122 = v59;
  v61 = v13;
  v123 = a2;
  v62 = 0;
  v63 = 0;
  v124 = v7;
  v64 = flt_19B0B0020[*(v7 + 70) == 256];
  v65 = v40;
  v66 = flt_19B0B0028[*(v7 + 70) == 256];
  if (*(v7 + 70) == 256)
  {
    v67 = 6400.0;
  }

  else
  {
    v67 = 8000.0;
  }

  v68 = flt_19B0B0030[*(v7 + 70) == 256];
  v69 = *(&__C + 1);
  LODWORD(v70) = __C;
  v71 = 0;
  v72 = &v133;
  do
  {
    v73 = &v133 + 4 * v63;
    if (v63 > 7)
    {
      goto LABEL_157;
    }

    if (v73 > v165 || &v133 > v73)
    {
      goto LABEL_157;
    }

    for (i = 0; i != 64; i += 4)
    {
      *(v127 + i) = v68 * acosf(*(v72 + i));
    }

    v76 = (((v67 - *(&v128 + 3)) + v66) * ((v67 - *(&v128 + 3)) + v66)) + ((*v127 - v64) * (*v127 - v64));
    v77 = v127 + 1;
    v78 = 15;
    do
    {
      v79 = (*v77 - *(v77 - 1)) - v64;
      v76 = v76 + (v79 * v79);
      ++v77;
      --v78;
    }

    while (v78);
    v80 = v76 * 0.058823;
    if (v80 <= v70)
    {
      if (v80 > v69)
      {
        *(&__C + 1) = v80;
        v71 = v63;
        v69 = v80;
      }

      v80 = v70;
    }

    else
    {
      __C = __PAIR64__(LODWORD(v70), LODWORD(v80));
      v71 = v62;
      v62 = v63;
      v69 = v70;
    }

    ++v63;
    v72 += 4;
    v70 = v80;
  }

  while (v63 != v40);
  v125 = v71;
  a2 = v123;
  if (v40 != 1)
  {
    v7 = v124;
    v13 = v61;
    v59 = v122;
    v56 = v121;
    if (v40 >= 4)
    {
      v92 = 0;
      v93 = &v133;
      while (1)
      {
        v94 = 0.0;
        v95 = v93;
        v96 = v40;
        do
        {
          v97 = v95 + 1;
          if (v95 < &v133 || v97 > v165 || v95 > v97)
          {
            goto LABEL_157;
          }

          v100 = *v95;
          v95 += 16;
          v94 = v100 + v94;
          *(&__A + v92) = v94;
          --v96;
        }

        while (v96);
        v101 = &v133 + 16 * v62 + v92;
        if (v101 < &v133)
        {
          goto LABEL_157;
        }

        if (v101 + 1 > v165)
        {
          goto LABEL_157;
        }

        if (v101 > v101 + 1)
        {
          goto LABEL_157;
        }

        v102 = &v133 + 16 * v125 + v92;
        if (v102 < &v133 || v102 + 1 > v165 || v102 > v102 + 1)
        {
          goto LABEL_157;
        }

        *(&__A + v92++) = (v94 - (*v101 + *v102)) / (v40 - 2);
        v93 = (v93 + 4);
        if (v92 == 16)
        {
          goto LABEL_133;
        }
      }
    }

LABEL_98:
    v81 = 0;
    v82 = &v133;
    while (1)
    {
      v83 = 0.0;
      if (v40 >= 1)
      {
        break;
      }

LABEL_109:
      v90 = &v133 + 16 * v62 + v81;
      if (v90 < &v133)
      {
        goto LABEL_157;
      }

      if (v90 + 1 > v165 || v90 > v90 + 1)
      {
        goto LABEL_157;
      }

      *(&__A + v81++) = (v83 - *v90) / (v40 - 1);
      v82 = (v82 + 4);
      if (v81 == 16)
      {
        goto LABEL_133;
      }
    }

    v84 = v82;
    v85 = v65;
    while (1)
    {
      v86 = v84 + 1;
      v87 = v84 < &v133 || v86 > v165;
      if (v87 || v84 > v86)
      {
        goto LABEL_157;
      }

      v89 = *v84;
      v84 += 16;
      v83 = v89 + v83;
      *(&__A + v81) = v83;
      if (!--v85)
      {
        goto LABEL_109;
      }
    }
  }

  __A = v133;
  v130 = v134;
  v131 = v135;
  v132 = v136;
  v7 = v124;
  v13 = v61;
  v59 = v122;
  v56 = v121;
LABEL_133:
  v103 = 0;
  v104 = v13 - v56 / 0.301029996;
  v105 = fabsf(v104);
  v106 = 0.0;
  v107 = vdupq_n_s32(0x3E4CCCCCu);
  v108 = vdupq_n_s32(0x3F4CCCCDu);
  do
  {
    v109 = *(a2 + v103);
    v110 = *(&__A + v103);
    v111 = vabdq_f32(v109, v110);
    *(&__A + v103) = vmlaq_f32(vmulq_f32(v109, v107), v108, v110);
    v106 = (((v106 + v111.f32[0]) + v111.f32[1]) + v111.f32[2]) + v111.f32[3];
    v103 += 16;
  }

  while (v103 != 64);
  LODWORD(__C) = 0;
  v112 = v3 + 2;
  v113 = 0.0;
  p_A = &__A;
  v115 = 16;
  v116 = 0.0;
  do
  {
    if (v112 + 1 > v7 + 6247 || v112 > v112 + 1)
    {
      goto LABEL_157;
    }

    v118 = vabds_f32(*v112, *p_A);
    if (v118 > v116)
    {
      *&__C = v118;
      v116 = v118;
    }

    v113 = v113 + v118;
    ++p_A;
    ++v112;
    --v115;
  }

  while (v115);
  v119 = log10((*v3 + 0.1)) / 0.301029996 - v59;
  v120 = fabsf(v119);
  *(v7 + 18407) = 0;
  if (v113 < 0.4 && v120 < 1.4 && v116 < 0.1 && v106 < 0.4 && v105 < 1.2 && *(v7 + 75) || v113 < 0.4 && v120 < 0.8 && v116 < 0.1 && v106 < 0.4 && v105 < 0.8 && !*(v7 + 75))
  {
    *(v7 + 18407) = 1;
  }
}

uint64_t BITS_ALLOC_config_acelp(uint64_t result, int a2, __int16 *a3, int a4, int a5)
{
  v5 = *a3;
  if (a4)
  {
    a3[6] = a2 != 0;
    v6 = a5;
  }

  else
  {
    v6 = a5;
    if (a5 == 4)
    {
      if (!a2)
      {
        *(a3 + 5) = 1061997773;
        *(a3 + 7) = 65537;
        *(a3 + 3) = 0x10000;
        v6 = 4;
        goto LABEL_13;
      }

      a3[3] = 1;
      a3[6] = 1;
      *(a3 + 5) = 1061158912;
      *(a3 + 7) = 0;
      v6 = 4;
    }
  }

  if (a2 == 1)
  {
    v7 = *(&ACELP_GAINS_MODE + 16 * v5 + 8 * (a4 == 0) + 1);
    a3[4] = 0;
    a3[5] = v7 == 6;
  }

  else
  {
    *(a3 + 2) = 1;
    if (a2 >= 5)
    {
      a3[4] = 0;
    }
  }

LABEL_13:
  v8 = a4 == 0;
  v9 = &ACELP_BPF_MODE + 16 * v5 + 8 * v8;
  v10 = &v9[a2];
  if (v10 >= v9 + 8 || v10 < v9)
  {
    goto LABEL_145;
  }

  v12 = *v10;
  a3[14] = v12;
  v13 = &ACELP_BPF_BITS[v12];
  if (v13 >= ACELP_NRG_BITS || v13 < ACELP_BPF_BITS)
  {
    goto LABEL_145;
  }

  v15 = &ACELP_NRG_MODE + 16 * v5 + 8 * v8;
  v16 = &v15[a2];
  if (v16 >= v15 + 8)
  {
    goto LABEL_145;
  }

  if (v16 < v15)
  {
    goto LABEL_145;
  }

  v17 = *v13;
  v18 = *v16;
  a3[15] = v18;
  v19 = &ACELP_NRG_BITS[v18];
  if (v19 >= ACELP_LTP_BITS_SFR)
  {
    goto LABEL_145;
  }

  if (v19 < ACELP_NRG_BITS)
  {
    goto LABEL_145;
  }

  v20 = *v19;
  a3[16] = v20;
  v21 = &ACELP_LTP_MODE + 16 * v5 + 8 * v8;
  v22 = &v21[a2];
  if (v22 >= v21 + 8)
  {
    goto LABEL_145;
  }

  if (v22 < v21)
  {
    goto LABEL_145;
  }

  a3[17] = *v22;
  a3[18] = 0;
  v23 = &ACELP_LTF_MODE + 16 * v5 + 8 * v8;
  v24 = &v23[a2];
  if (v24 >= v23 + 8)
  {
    goto LABEL_145;
  }

  if (v24 < v23)
  {
    goto LABEL_145;
  }

  v25 = *v24;
  a3[19] = v25;
  v26 = &ACELP_LTF_BITS[v25];
  if (v26 >= &wscw16q15 || v26 < ACELP_LTF_BITS)
  {
    goto LABEL_145;
  }

  v27 = v20 + v17;
  v28 = *v26;
  if (v28 == 4 && a5 == 5)
  {
    LOWORD(v28) = 5;
  }

  a3[20] = v28;
  v30 = v27 + v28;
  if (a5 >= 1)
  {
    v31 = &ACELP_GAINS_MODE + 16 * v5 + 8 * v8;
    v32 = &v31[a2];
    if (v32 < v31 + 8 && v32 >= v31)
    {
      v33 = 0;
      v34 = 0;
      v35 = a5;
      v36 = ACELP_LTP_BITS_SFR;
      while (1)
      {
        v37 = &a3[v33 + 21];
        v38 = &a3[v33 + 22];
        v39 = v37 < (a3 + 21) || v38 > (a3 + 26);
        if (v39 || v37 > v38)
        {
          break;
        }

        v41 = (v34 & 0x7FFD) != 1 || a2 <= 3;
        v42 = v41 ? *v32 : 0;
        a3[v34 + 21] = v42;
        v43 = &ACELP_GAINS_BITS[v42];
        if (&ACELP_GAINS_BITS[v42] >= &ACELP_LTP_MODE || v43 < ACELP_GAINS_BITS)
        {
          break;
        }

        v45 = 5 * a3[17];
        v46 = &ACELP_LTP_BITS_SFR[v45];
        v47 = &ACELP_LTP_BITS_SFR[v45 + 5];
        v48 = &v36[v45];
        if (v48 >= v47 || v48 < v46)
        {
          break;
        }

        v49 = *v48;
        v30 += v49 + *v43;
        a3[18] += v49;
        ++v34;
        ++v36;
        ++v33;
        if (!--v35)
        {
          goto LABEL_63;
        }
      }
    }

    goto LABEL_145;
  }

LABEL_63:
  if (result < v30)
  {
    return 0xFFFFFFFFLL;
  }

  if (a2 == 6)
  {
    *&v54 = 0xFFFFFFFF00000000;
    *(&v54 + 1) = 0xFFFFFFFF00000000;
    *(a3 + 26) = v54;
    *(a3 + 17) = -1;
    v30 += 14;
    goto LABEL_141;
  }

  if (a2 == 5)
  {
    if (a5 >= 1)
    {
      v52 = a5;
      v53 = a3 + 26;
      while (v53 >= a3 + 13 && v53 + 1 <= a3 + 18 && v53 <= v53 + 1)
      {
        *v53++ = 0;
        if (!--v52)
        {
          goto LABEL_81;
        }
      }

      goto LABEL_145;
    }

LABEL_81:
    v30 += 28;
    goto LABEL_141;
  }

  if (a2 != 4)
  {
    if (a5 <= 5)
    {
      v55 = result - v30;
      if (7 * v6 <= v55)
      {
        v57 = 0;
        v58 = a3 + 26;
        v59 = PulseConfTable;
        while (1)
        {
          v60 = *v59;
          v59 += 19;
          if (v60 * v6 > v55)
          {
            break;
          }

          if (++v57 == 40)
          {
            v61 = 40;
            goto LABEL_91;
          }
        }

        v61 = v57 - 1;
LABEL_91:
        v62 = &PulseConfTable[19 * v61];
        v63 = v62 + 19;
        if (v62 < PulseConfTable || v63 > sidparts_encoder_noise_est || v62 > v63)
        {
          goto LABEL_145;
        }

        v66 = *v62 * v6 > v55;
        if (a3 + 28 < v58 || a3 + 28 > &v58[2 * v6])
        {
          goto LABEL_145;
        }

        LODWORD(v67) = v61 - v66;
        *v58 = v61 - v66;
        v68 = &PulseConfTable[19 * (v61 - v66)];
        v69 = v68 + 19;
        v70 = v68 < PulseConfTable || v69 > sidparts_encoder_noise_est;
        if (v70 || v68 > v69)
        {
          goto LABEL_145;
        }

        v56 = *v68;
        if (v6 >= 2)
        {
          v72 = 1;
LABEL_109:
          v73 = v72 + 1;
          v74 = v55 * (v72 + 1) - v56 * v6;
          if (v67 <= 40)
          {
            v75 = 40;
          }

          else
          {
            v75 = v67;
          }

          if (v67 <= 40)
          {
            v76 = 40;
          }

          else
          {
            v76 = v67;
          }

          v77 = v67 - 1;
          v78 = &PulseConfTable[19 * v67 + 19];
          v79 = -v76;
          while (v79 + v77 != -1)
          {
            if (v78 < PulseConfTable || v78 + 19 > sidparts_encoder_noise_est || v78 > v78 + 19)
            {
              goto LABEL_145;
            }

            v80 = *v78;
            v78 += 19;
            ++v77;
            if (v80 * v6 > v74)
            {
              v75 = v77;
              break;
            }
          }

          v67 = v75;
          v81 = &PulseConfTable[19 * v75];
          while (1)
          {
            v82 = v81 + 19;
            v83 = v81 < PulseConfTable || v82 > sidparts_encoder_noise_est;
            if (v83 || v81 > v82)
            {
              goto LABEL_145;
            }

            if (*v81 * v6 > v74)
            {
              v81 -= 19;
              if (--v67)
              {
                continue;
              }
            }

            *&v58[2 * v72] = v67;
            v85 = &PulseConfTable[19 * v67];
            v86 = v85 + 19;
            if (v85 < PulseConfTable || v86 > sidparts_encoder_noise_est || v85 > v86)
            {
              goto LABEL_145;
            }

            v56 += *v85;
            v72 = v73;
            if (v73 != v6)
            {
              goto LABEL_109;
            }

            break;
          }
        }
      }

      else
      {
        LOWORD(v56) = v55 + 1;
      }

      v30 += v56;
      goto LABEL_141;
    }

LABEL_145:
    __break(0x5519u);
    return result;
  }

  if (a5 >= 1)
  {
    v50 = a5;
    v51 = a3 + 26;
    while (v51 >= a3 + 13 && v51 + 1 <= a3 + 18 && v51 <= v51 + 1)
    {
      *v51++ = -1;
      if (!--v50)
      {
        goto LABEL_141;
      }
    }

    goto LABEL_145;
  }

LABEL_141:
  if ((result - v30) < 0)
  {
    return -1;
  }

  else
  {
    return v30;
  }
}

void Es_pred_enc(_DWORD *a1, _DWORD *a2, int a3, unint64_t a4, unint64_t a5, float *a6, unint64_t a7, int a8, __int16 a9)
{
  if (a3 == 256)
  {
    v13 = 0.25;
  }

  else
  {
    v13 = 0.2;
  }

  if (a3 >= 1)
  {
    LOWORD(v17) = 0;
    v18 = 0.0;
    while (1)
    {
      v19 = a4 + 4 * v17;
      v20 = a5 >= v19 && v19 >= a4;
      if (!v20 || (a5 - v19) < 253)
      {
        goto LABEL_50;
      }

      v21 = 0;
      v22 = 0.0;
      do
      {
        v23 = vmulq_f32(*(v19 + v21), *(v19 + v21));
        v22 = (((v22 + v23.f32[0]) + v23.f32[1]) + v23.f32[2]) + v23.f32[3];
        v21 += 16;
      }

      while (v21 != 256);
      v24 = log10(((v22 + 0.01) * 0.015625));
      v25 = v24 * 10.0;
      if (v25 < 0.0 && a9 == 0)
      {
        v25 = 0.0;
      }

      v18 = v18 + (v13 * v25);
      v17 = (v17 + 64);
      if (v17 >= a3)
      {
        if (!a9)
        {
          goto LABEL_41;
        }

        goto LABEL_22;
      }
    }
  }

  v18 = 0.0;
  if (a9)
  {
LABEL_22:
    v27 = &Es_pred_qua_4b_no_ltp;
  }

  else
  {
LABEL_41:
    v39 = (a6 + 1);
    if ((a6 + 1) > a7 || v39 < a6 || (a6 + 2) > a7 || v39 > (a6 + 2))
    {
      goto LABEL_50;
    }

    v18 = v18 + (((a6[1] * 0.5) + (*a6 * 0.5)) * -10.0);
    if (a8 == 3)
    {
      v27 = &Es_pred_qua_3b;
      v28 = &Es_pred_qua_4b_no_ltp;
      goto LABEL_24;
    }

    if (a8 != 4)
    {
      v27 = &Es_pred_qua_5b;
      v28 = &Es_pred_qua_4b;
      goto LABEL_24;
    }

    v27 = &Es_pred_qua_4b;
  }

  v28 = v27 + 16;
LABEL_24:
  v29 = &pow2[2 * a8];
  if (v29 < pow2 || v29 + 2 > tbl_mid_voi_wb_1b || v29 > v29 + 2)
  {
LABEL_50:
    __break(0x5519u);
    return;
  }

  v30 = *v29;
  *a2 = 0;
  if (v30 >= 1)
  {
    v31 = 0;
    v32 = 0;
    v33 = 1.0e30;
    while (1)
    {
      v34 = &v27[v32];
      v35 = v34 + 1;
      v36 = v34 < v27 || v35 > v28;
      if (v36 || v34 > v35)
      {
        break;
      }

      v38 = vabds_f32(v18, *v34);
      if (v38 < v33)
      {
        *a1 = *v34;
        *a2 = v31;
        v33 = v38;
      }

      v31 = ++v32;
      if (v30 <= v32)
      {
        return;
      }
    }

    goto LABEL_50;
  }
}

uint64_t nelp_encoder(uint64_t a1, unint64_t a2, unint64_t a3, char **a4, int a5)
{
  v194 = *MEMORY[0x1E69E9840];
  v9 = a1 + 40600;
  v10 = a4[1];
  v180 = *a4;
  v11 = a4[2];
  v12 = *(a1 + 40604);
  v13 = *(a1 + 130);
  if (v12 == 1)
  {
    if (v13 == *(a1 + 136))
    {
      v12 = 1;
      v14 = 1;
    }

    else
    {
      v12 = 0;
      v14 = 0;
      *(a1 + 40604) = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  v174 = (a1 + 67462);
  v179 = *(a1 + 67462);
  v189 = -1;
  *&v15 = -1;
  *(&v15 + 1) = -1;
  v187 = v15;
  v188 = v15;
  v186 = 0xAAAAAAAAAAAAAAAALL;
  memset(__b, 255, sizeof(__b));
  memset(__src, 255, sizeof(__src));
  v181 = a1;
  if ((v13 - 1) < 2)
  {
    if (v14)
    {
      goto LABEL_16;
    }

    v16 = 8;
    v17 = 40444;
    goto LABEL_12;
  }

  if (!v13)
  {
    v18 = 0.0;
    v19 = 0.0;
    v20 = 0.0;
    if (v14)
    {
      goto LABEL_32;
    }

    v16 = 14;
    v17 = 40540;
LABEL_12:
    LODWORD(__A) = 0;
    vDSP_vfill(&__A, (a1 + v17), 1, v16);
    v12 = *(v9 + 4);
    v13 = *(a1 + 130);
  }

  if (v12 != 1 && (v13 - 1) <= 1)
  {
    LODWORD(__A) = 0;
    vDSP_vfill(&__A, (a1 + 39884), 1, 0x14uLL);
    LODWORD(__A) = 0;
    vDSP_vfill(&__A, (a1 + 39964), 1, 0x14uLL);
    LODWORD(__A) = 0;
    vDSP_vfill(&__A, (a1 + 40044), 1, 0x14uLL);
    LODWORD(__A) = 0;
    vDSP_vfill(&__A, (a1 + 40124), 1, 0x14uLL);
    LODWORD(__A) = 0;
    vDSP_vfill(&__A, (a1 + 40204), 1, 0x14uLL);
    LODWORD(__A) = 0;
    vDSP_vfill(&__A, (a1 + 40284), 1, 0x14uLL);
    LODWORD(__A) = 0;
    vDSP_vfill(&__A, (a1 + 40364), 1, 0x14uLL);
    v13 = *(a1 + 130);
  }

LABEL_16:
  v18 = 0.0;
  v19 = 0.0;
  v20 = 0.0;
  if ((v13 - 1) <= 1)
  {
    v21 = 0;
    v20 = 0.001;
    do
    {
      v22 = (a2 + v21);
      v23 = a2 + v21 + 4;
      if (a2 + v21 < a2 || v23 > a3 || v22 > v23)
      {
        goto LABEL_228;
      }

      v20 = v20 + (*v22 * *v22);
      v21 += 4;
    }

    while (v21 != 1024);
    if (a3 < a2 || (a3 - a2) < 1021)
    {
LABEL_228:
      __break(0x5519u);
    }

    polezero_filter(a2, __b, txlpf1_num_coef, &txlpf1_den_coef, 10, a1 + 40124, 0xBu, 0x14u);
    v26 = 0;
    v19 = 0.001;
    do
    {
      v27 = vmulq_f32(*&__b[v26], *&__b[v26]);
      v19 = (((v19 + v27.f32[0]) + v27.f32[1]) + v27.f32[2]) + v27.f32[3];
      v26 += 16;
    }

    while (v26 != 1024);
    polezero_filter(a2, __b, txhpf1_num_coef, &txhpf1_den_coef, 10, a1 + 40284, 0xBu, 0x14u);
    v28 = 0;
    v18 = 0.001;
    do
    {
      v29 = vmulq_f32(*&__b[v28], *&__b[v28]);
      v18 = (((v18 + v29.f32[0]) + v29.f32[1]) + v29.f32[2]) + v29.f32[3];
      v28 += 16;
    }

    while (v28 != 1024);
  }

LABEL_32:
  v30 = 0;
  v31 = a2;
  do
  {
    *(&v187 + v30) = 981668463;
    v32 = v30 + 1;
    v33 = v31;
    v34 = 25;
    v35 = 0.001;
    do
    {
      if (v33 < a2 || (v33 + 1) > a3 || v33 > v33 + 1)
      {
        goto LABEL_228;
      }

      v36 = *v33++;
      v35 = v35 + (v36 * v36);
      *(&v187 + v30) = v35;
      --v34;
    }

    while (v34);
    *(&v187 + v30) = sqrtf(v35 / 25.0);
    v31 += 25;
    ++v30;
  }

  while (v32 != 9);
  HIDWORD(v189) = 981668463;
  v37 = (a2 + 900);
  v38 = 0.001;
  v39 = 31;
  do
  {
    if (v37 < a2 || (v37 + 1) > a3 || v37 > v37 + 1)
    {
      goto LABEL_228;
    }

    v40 = *v37++;
    v38 = v38 + (v40 * v40);
    *(&v189 + 1) = v38;
    --v39;
  }

  while (v39);
  HIDWORD(v189) = sqrtf(v38 / 31.0);
  if (a5 == 1)
  {
    for (i = 0; i != 40; i += 4)
    {
      v42 = *(&v187 + i) * 0.6;
      *(&v187 + i) = v42;
    }
  }

  v43 = *(v9 + 4);
  v44 = *&v187;
  if (v43 == 1)
  {
    v45 = *v9;
  }

  else
  {
    *v9 = v187;
    v45 = v44;
  }

  v46 = log10(v44);
  v47 = 0;
  v48 = (v46 - log10(v45)) * 20.0;
  v49 = v48 * v48;
  do
  {
    v50 = (&v187 + v47);
    if ((&v187 + v47) < &v187 || v50 > (&v187 + v47 + 4))
    {
      goto LABEL_228;
    }

    v52 = log10(v50[1]);
    v53 = (v52 - log10(*(&v187 + v47))) * 20.0;
    v49 = v49 + (v53 * v53);
    v47 += 4;
  }

  while (v47 != 36);
  v54 = exp((((flt_19B0B0040[v43 == 1] * v49) + -20.0) * 0.25));
  v55 = 0;
  v56 = 0.819999993 / (v54 + 1.0);
  do
  {
    v45 = (v45 * v56) + ((1.0 - v56) * *(&v187 + v55));
    *(&v187 + v55) = v45;
    v55 += 4;
  }

  while (v55 != 40);
  *v9 = v45;
  v57 = *(v181 + 130);
  v182 = NAN;
  v183 = NAN;
  v193 = -1;
  *&v58 = -1;
  *(&v58 + 1) = -1;
  __A = v58;
  v192 = v58;
  v175 = a4;
  v176 = v57;
  if (v57)
  {
    if (v57 > 2)
    {
      v60 = 0;
      v59 = 0;
      v178 = 0;
    }

    else
    {
      v178 = &UVG1CB_WB;
      v59 = &UVG2CB1_WB;
      v60 = &UVG2CB2_WB;
    }
  }

  else
  {
    v178 = &UVG1CB_NB;
    v59 = &UVG2CB1_NB;
    v60 = &UVG2CB2_NB;
  }

  v61 = &v183;
  v62 = 1;
  v63 = &v187;
  do
  {
    v64 = v62;
    v65 = 0.0;
    v66 = 5;
    do
    {
      v67 = v63 + 1;
      if (v63 < &v187 || v67 > &v190 || v63 > v67)
      {
        goto LABEL_228;
      }

      v70 = *v63++;
      v65 = v65 + (v70 * v70);
      *v61 = v65;
      --v66;
    }

    while (v66);
    v71 = log10(sqrt((v65 / 5.0)));
    v62 = 0;
    *&v71 = v71;
    *v61 = *&v71;
    v61 = &v182;
    v63 = &v188 + 1;
  }

  while ((v64 & 1) != 0);
  v72 = 0;
  v73 = 0;
  v74 = 0;
  v75 = (v178 + 4);
  v76 = 1.0e30;
  do
  {
    v77 = (v182 - *v75) * (v182 - *v75);
    if ((v77 + ((v183 - *(v75 - 1)) * (v183 - *(v75 - 1)))) < v76)
    {
      v72 = v74;
      v73 = v74;
      v76 = v77 + ((v183 - *(v75 - 1)) * (v183 - *(v75 - 1)));
    }

    ++v74;
    v75 += 2;
  }

  while (v74 != 32);
  v78 = &v178[8 * v73];
  if (v78 + 1 > v78 + 2 || v78 > v78 + 1)
  {
    goto LABEL_228;
  }

  v80 = __exp10(*v78);
  v183 = v80;
  v81 = __exp10(v78[1]);
  v82 = 0;
  *&v81 = v81;
  v182 = *&v81;
  v83 = &v183;
  v84 = 1;
  do
  {
    v85 = v84;
    v86 = 4 * v82;
    v87 = 5;
    do
    {
      v88 = &v187 + v86 + 4;
      if ((&v187 + v86) < &v187 || v88 > &v190 || &v187 + v86 > v88)
      {
        goto LABEL_228;
      }

      *(&__A + v86) = *(&v187 + v86) / *v83;
      v86 += 4;
      --v87;
    }

    while (v87);
    v84 = 0;
    v83 = &v182;
    v82 = 5;
  }

  while ((v85 & 1) != 0);
  v91 = &v186;
  v92 = 1;
  do
  {
    v93 = v92;
    if (v91 + 4 > &v187)
    {
      goto LABEL_228;
    }

    v94 = 0;
    *v91 = 0;
    v95 = v59;
    v96 = v60;
    v97 = 1.0e30;
    do
    {
      v98 = 0;
      v99 = &v60[5 * v94];
      v100 = &v59[20 * v94];
      v101 = 0.0;
      v102 = v95;
      v103 = v96;
      do
      {
        if (v93)
        {
          if (v102 < v100 || v102 + 4 > (v100 + 20) || v102 > v102 + 4)
          {
            goto LABEL_228;
          }

          v104 = &v100[4 * v98];
          p_A = &__A;
        }

        else
        {
          if (v103 < v99)
          {
            goto LABEL_228;
          }

          if (v103 + 4 > (v99 + 5))
          {
            goto LABEL_228;
          }

          p_A = &v192 + 4;
          v104 = v103;
          if (v103 > v103 + 4)
          {
            goto LABEL_228;
          }
        }

        v106 = *&p_A[4 * v98] - *v104;
        v101 = v101 + (v106 * v106);
        ++v98;
        v103 += 4;
        v102 += 4;
      }

      while (v98 != 5);
      if (v101 < v97)
      {
        *v91 = v94;
        v97 = v101;
      }

      ++v94;
      v96 += 5;
      v95 += 20;
    }

    while (v94 != 64);
    v92 = 0;
    v91 = (&v186 + 4);
  }

  while ((v93 & 1) != 0);
  dequantize_uvg(v72, &v186, &v187, &v187, &v190, v176);
  if (v179)
  {
    v174[528] = v72;
    v107 = WORD2(v186);
    v174[537] = v186;
    v174[538] = v107;
  }

  else
  {
    push_indice(v181, 1393, v72, 5);
    push_indice(v181, 1394, v186, 6);
    push_indice(v181, 1395, SWORD2(v186), 6);
  }

  v108 = v180;
  if (v180 < v11)
  {
    goto LABEL_228;
  }

  result = generate_nelp_excitation((v181 + 40596), &v187, &v190, v180, v10, flt_19B0B0050[*(v181 + 130) - 1 < 2]);
  if (*(v181 + 130) - 1 >= 2)
  {
    if (*(v181 + 130))
    {
      goto LABEL_125;
    }

    v110 = v10 - v180;
    if (v10 < v180 || v110 < 1021)
    {
      goto LABEL_228;
    }

    v111 = &bp1_num_coef_nb_fx_order7;
    v112 = &bp1_den_coef_nb_fx_order7;
    v113 = v181 + 40540;
    v114 = v180;
    v115 = 7;
    v116 = 8;
    v117 = 14;
  }

  else
  {
    v110 = v10 - v180;
    if (v10 < v180 || v110 < 1021)
    {
      goto LABEL_228;
    }

    v111 = &bp1_num_coef_wb;
    v112 = &bp1_den_coef_wb;
    v113 = v181 + 40444;
    v114 = v180;
    v115 = 4;
    v116 = 5;
    v117 = 8;
  }

  polezero_filter(v114, __src, v111, v112, v115, v113, v116, v117);
  if (v180 > v10)
  {
    goto LABEL_228;
  }

  if (v110 <= 0x3FF)
  {
    goto LABEL_228;
  }

  result = memmove(v180, __src, 0x400uLL);
  v108 = v180;
  if (v180 + 1024 < v180)
  {
    goto LABEL_228;
  }

LABEL_125:
  v118 = 0;
  v119 = 0.001;
  do
  {
    v120 = &v108[v118];
    v121 = &v108[v118 + 4];
    if (v121 > v10 || v120 > v121 || v120 < v11)
    {
      goto LABEL_228;
    }

    v119 = v119 + (*v120 * *v120);
    v118 += 4;
  }

  while (v118 != 1024);
  if (*(v181 + 130) - 1 <= 1)
  {
    v124 = v10 - v108;
    if (v10 < v108)
    {
      goto LABEL_228;
    }

    if (v124 < 1021)
    {
      goto LABEL_228;
    }

    polezero_filter(v108, __src, shape1_num_coef, &shape1_den_coef, 10, v181 + 39884, 0xBu, 0x14u);
    if (v124 <= 0x3FF)
    {
      goto LABEL_228;
    }

    memmove(v108, __src, 0x400uLL);
    if (v108 + 1024 < v108)
    {
      goto LABEL_228;
    }

    v125 = 0;
    v126 = 0.001;
    do
    {
      v127 = &v108[v125];
      v128 = &v108[v125 + 4];
      if (v128 > v10 || v127 > v128 || v127 < v11)
      {
        goto LABEL_228;
      }

      v126 = v126 + (*v127 * *v127);
      v125 += 4;
    }

    while (v125 != 1024);
    v131 = 0;
    v132 = sqrtf(v20 / v126);
    do
    {
      v133 = &v108[v131];
      v134 = &v108[v131 + 4];
      if (v134 > v10 || v133 > v134 || v133 < v11)
      {
        goto LABEL_228;
      }

      *&__b[v131] = v132 * *v133;
      v131 += 4;
    }

    while (v131 != 1024);
    polezero_filter(__b, __src, txlpf1_num_coef, &txlpf1_den_coef, 10, v181 + 40204, 0xBu, 0x14u);
    memcpy(__b, __src, sizeof(__b));
    v137 = 0;
    v138 = 0.001;
    do
    {
      v139 = vmulq_f32(*&__b[v137], *&__b[v137]);
      v138 = (((v138 + v139.f32[0]) + v139.f32[1]) + v139.f32[2]) + v139.f32[3];
      v137 += 16;
    }

    while (v137 != 1024);
    for (j = 0; j != 1024; j += 4)
    {
      v141 = &v180[j];
      v142 = &v180[j + 4];
      if (v142 > v10 || v141 > v142 || v141 < v11)
      {
        goto LABEL_228;
      }

      *&__b[j] = v132 * *v141;
    }

    polezero_filter(__b, __src, txhpf1_num_coef, &txhpf1_den_coef, 10, v181 + 40364, 0xBu, 0x14u);
    memcpy(__b, __src, sizeof(__b));
    v145 = 0;
    v146 = 0.001;
    do
    {
      v147 = vmulq_f32(*&__b[v145], *&__b[v145]);
      v146 = (((v146 + v147.f32[0]) + v147.f32[1]) + v147.f32[2]) + v147.f32[3];
      v145 += 16;
    }

    while (v145 != 1024);
    v148 = log10((v19 / v138));
    if ((v148 * 10.0) >= -3.0)
    {
      v150 = log10((v18 / v146));
      if ((v150 * 10.0) >= -3.0)
      {
        v149 = 0;
      }

      else
      {
        v149 = 2;
      }
    }

    else
    {
      v149 = 1;
    }

    result = v180;
    if (v179)
    {
      v174[519] = v149;
      return result;
    }

    if (v149 == 2)
    {
      v151 = v181;
      v152 = v180;
      polezero_filter(v180, __b, shape2_num_coef, &shape2_den_coef, 10, v181 + 39964, 0xBu, 0x14u);
      v153 = 40044;
      v154 = shape3_num_coef;
      v155 = &shape3_den_coef;
    }

    else
    {
      if (v149 != 1)
      {
        v152 = v180;
        polezero_filter(v180, __b, shape2_num_coef, &shape2_den_coef, 10, v181 + 39964, 0xBu, 0x14u);
        polezero_filter(v180, __b, shape3_num_coef, &shape3_den_coef, 10, v181 + 40044, 0xBu, 0x14u);
LABEL_187:
        v156 = 0.001;
        v157 = 256;
        v158 = v152;
        do
        {
          if ((v158 + 1) > v10 || v158 > v158 + 1 || v158 < v11)
          {
            goto LABEL_228;
          }

          v161 = *v158++;
          v156 = v156 + (v161 * v161);
          --v157;
        }

        while (v157);
        v162 = sqrtf(v119 / v156);
        v163 = 256;
        do
        {
          if ((v152 + 1) > v10 || v152 > v152 + 1 || v152 < v11)
          {
            goto LABEL_228;
          }

          *v152 = v162 * *v152;
          ++v152;
          --v163;
        }

        while (v163);
        result = push_indice(v181, 1396, v149, 2);
        v108 = v180;
        goto LABEL_208;
      }

      v151 = v181;
      v152 = v180;
      polezero_filter(v180, __b, shape3_num_coef, &shape3_den_coef, 10, v181 + 40044, 0xBu, 0x14u);
      v153 = 39964;
      v154 = shape2_num_coef;
      v155 = &shape2_den_coef;
    }

    polezero_filter(v152, __src, v154, v155, 10, v151 + v153, 0xBu, 0x14u);
    memmove(v152, __src, 0x400uLL);
    goto LABEL_187;
  }

LABEL_208:
  if (!v179)
  {
    v166 = 0;
    while (1)
    {
      v167 = &v108[v166];
      v168 = &v108[v166 + 4];
      v169 = v168 > v10 || v167 > v168;
      if (v169 || v167 < v11)
      {
        break;
      }

      v171 = &(*v175)[v166];
      v172 = v171 + 4 > v175[1] || v171 > v171 + 4;
      if (v172 || v171 < v175[2])
      {
        break;
      }

      *v171 = *v167;
      v166 += 4;
      if (v166 == 1024)
      {
        return result;
      }
    }

    goto LABEL_228;
  }

  return result;
}

void find_targets(void *a1, unint64_t a2, unint64_t a3, int a4, _DWORD *a5, unint64_t a6, uint64_t a7, float a8, uint64_t a9, unint64_t a10, unint64_t a11, unsigned __int16 a12, const float *a13, unint64_t a14, float *a15, unint64_t a16, float *a17, unint64_t a18, float *a19, unint64_t a20, const vDSP_biquad_SetupStruct **a21, unint64_t a22)
{
  v57 = *MEMORY[0x1E69E9840];
  memset(__b, 255, sizeof(__b));
  v28 = 0;
  *&v29 = -1;
  *(&v29 + 1) = -1;
  v55[14] = v29;
  v55[15] = v29;
  v55[12] = v29;
  v55[13] = v29;
  v55[10] = v29;
  v55[11] = v29;
  v55[8] = v29;
  v55[9] = v29;
  v55[6] = v29;
  v55[7] = v29;
  v55[4] = v29;
  v55[5] = v29;
  v55[2] = v29;
  v55[3] = v29;
  v55[0] = v29;
  v55[1] = v29;
  v54[2] = v29;
  v54[3] = v29;
  v54[0] = v29;
  v54[1] = v29;
  v30 = a1[1];
  v31 = *a1 + 4 * a4;
  v32 = a1[2];
  do
  {
    v33 = (v31 + v28 - 64);
    v34 = v31 + v28 - 60;
    v36 = v34 <= v30 && v33 <= v34 && v33 >= v32;
    v37 = (a2 + v28);
    v38 = a2 + v28 + 4;
    if (!v36 || v37 < a2 || v38 > a3 || v37 > v38)
    {
      goto LABEL_53;
    }

    __b[v28 / 4] = *v33 - *v37;
    v28 += 4;
  }

  while (v28 != 64);
  v42 = a10 + 4 * a4;
  if (v42 < a10 || v42 > a11 || a12 > (a11 - v42) >> 2 || (syn_filt(a7), v43 = a16 - a15, a16 < a15) || a12 > v43 >> 2 || (vDSP_conv(__b, 1, a13 + 16, -1, a15, 1, a12, 0x11uLL), a22 < a21) || (a22 - a21) < 17 || a5 && ((a5 + 1) > a6 || a5 + 1 < a5) || (v52 = -1, deemph_opt(a15, a21, a12, a5, a8), a17) && ((__A = 0.0, vDSP_vfill(&__A, v54, 1, 0x10uLL), v44 = a12 >> 1, a12 >= 2) && (4 * v44 > v43 || a12 >= 0x82 || (memmove(v55, a15, 4 * v44), (v55 + 4 * v44) < v55)) || (v52 = 0, preemph(v55, a12 >> 1, &v52, a8), syn_filt(a13), a18 < a17) || v44 > (a18 - a17) >> 2 || (vDSP_conv(v54, 1, (a7 + 64), -1, a17, 1, a12 >> 1, 0x11uLL), v45 = (v42 + 4 * v44), v45 < a10) || (v46 = &a17[v44], v46 < a17) || a12 >= 2 && (a18 < v46 || a11 < v45 || (v47 = 4 * (v44 & 0x3FFF), a11 - v45 < v47) || a18 - v46 < v47 || (memmove(v46, v45, v47), &v46[v47 / 4] < v46))) || (__A = 0.0, vDSP_vfill(&__A, a19, 1, a12), v48 = a20 - a19, a20 < a19) || a14 < a13 || a14 - a13 < 0x44 || v48 <= 0x43 || (memmove(a19, a13, 0x44uLL), v49 = a19 + 17, a19 + 17 < a19) || a20 < v49 || (a20 - v49) < 61 || v48 >> 2 < a12)
  {
LABEL_53:
    __break(0x5519u);
  }

  syn_filt(a7);
  v52 = 0;
  deemph_opt(a19, a21, a12, &v52, a8);
}

void gp_clip(uint64_t a1, float *a2, unint64_t a3, int a4, unsigned int a5, uint64_t a6, float *a7)
{
  v12 = 0;
  v13 = 0.01;
  do
  {
    v14 = vmulq_f32(*(a6 + v12), *(a6 + v12));
    v13 = (((v13 + v14.f32[0]) + v14.f32[1]) + v14.f32[2]) + v14.f32[3];
    v12 += 16;
  }

  while (v12 != 256);
  v15 = log10(v13);
  a7[2] = v15 * 10.0;
  v16 = a7[4] * 0.98;
  if (a5 <= 4 && ((1 << a5) & 0x19) != 0)
  {
    v16 = v16 + 0.02;
  }

  a7[4] = v16;
  if (a4 == 128)
  {
    v17 = a2 + 1;
    if (a2 + 1 < a2)
    {
      goto LABEL_17;
    }

    v18 = a2 + 2;
    if ((a2 + 2) > a3)
    {
      goto LABEL_17;
    }

    ++a2;
    if (v17 > v18)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (a4)
    {
      goto LABEL_15;
    }

    if ((a2 + 1) > a3 || a2 + 1 < a2)
    {
LABEL_17:
      __break(0x5519u);
      return;
    }
  }

  a7[5] = (a7[5] * 0.99) + (*a2 * 0.01);
LABEL_15:
  v19 = a7[3];
  if (v19 <= 50.0)
  {
    a7[3] = v19 + 1.0;
  }
}

uint64_t Mode2_pit_encode(uint64_t result, int a2, uint64_t a3, uint64_t a4, __int16 *a5, unint64_t a6, int *a7, int *a8, int *a9, int *a10, _DWORD *a11, int *a12, int *a13, uint64_t a14, uint64_t a15, const float *a16, uint64_t a17, int a18, int a19, int a20, int a21, int a22, int a23)
{
  if (a2 == 128)
  {
    v27 = 0;
  }

  else
  {
    v27 = a2;
  }

  if (result <= 2)
  {
    if (!result)
    {
      *a11 = 64;
      *a12 = 0;
      *a13 = 1;
      return result;
    }

    if (result == 1)
    {
      goto LABEL_21;
    }

    if (result != 2)
    {
      return result;
    }

    if (a2)
    {
      if (a2 != 128)
      {
        v29 = a23 >> 1;
        v30 = *a11;
        v63 = *a12;
        v64 = *a13;
        v81 = __PAIR64__(a22, a18);
        v78 = a10;
        v86 = a23 >> 1;
        goto LABEL_52;
      }

      v28 = a5 + 1;
      if (a5 + 1 < a5 || (a5 + 2) > a6 || v28 > a5 + 2)
      {
        goto LABEL_59;
      }

      v29 = a23 >> 1;
      LOWORD(v30) = *v28;
    }

    else
    {
      if ((a5 + 1) > a6 || a5 + 1 < a5)
      {
        goto LABEL_59;
      }

      v29 = a23 >> 1;
      LOWORD(v30) = *a5;
    }

    v81 = __PAIR64__(a22, a18);
    v78 = a10;
    v86 = v29;
    v63 = 0;
    v64 = 1;
LABEL_52:
    limit_T0_voiced(5, v29, v30, v63, v64, a7, a8, a9, v78, v81, SHIDWORD(v81));
    v71 = *a7;
    v72 = *a8;
    v73 = *a9;
    v74 = *a10;
    v95 = *a4;
    v96 = *(a4 + 16);
    v75 = E_GAIN_closed_loop_search_11467(&v95, a16, a17, a14, a15, v71, v72, v73, v74, v86, a12, a13, a23, v27, a18, a18, a20);
    *a11 = v75;
    v50 = *a12;
    if (v27)
    {
      v58 = *a7;
      v59 = *a8;
      v95 = *a3;
      v96 = *(a3 + 16);
      v60 = v75;
      v61 = v86;
      return Mode2_delta_pit_enc(v60, v50, v61, v58, v59, &v95);
    }

    v95 = *a3;
    v96 = *(a3 + 16);
    v51 = v75;
    v53 = a20;
    v52 = a18;
    v62 = a23;
    goto LABEL_56;
  }

  if (result > 7)
  {
    if (result == 8)
    {
      v85 = a15;
      v91 = a17;
      v94 = a3;
      v88 = a11;
      v89 = a16;
      v90 = a14;
      if (a2)
      {
        v31 = a23 >> 1;
        v32 = *a11;
        v33 = *a12;
        v34 = *a13;
        v79 = __PAIR64__(a22, a18);
        v76 = a10;
        v35 = 5;
        goto LABEL_28;
      }

      v87 = a13;
      if ((a5 + 1) <= a6 && a5 + 1 >= a5)
      {
        v40 = a23 >> 1;
        v41 = *a5;
        v80 = __PAIR64__(a22, a18);
        v77 = a10;
        v42 = 5;
        goto LABEL_38;
      }

LABEL_59:
      __break(0x5519u);
      return result;
    }

    if (result != 9)
    {
      return result;
    }

LABEL_21:
    v85 = a15;
    v91 = a17;
    v94 = a3;
    v88 = a11;
    v89 = a16;
    v90 = a14;
    if (a2)
    {
      v31 = a23 >> 1;
      v32 = *a11;
      v33 = *a12;
      v34 = *a13;
      v79 = __PAIR64__(a22, a18);
      v76 = a10;
      v35 = 4;
LABEL_28:
      v83 = v31;
      v38 = a23;
      v39 = a13;
      limit_T0_voiced(v35, v31, v32, v33, v34, a7, a8, a9, v76, v79, SHIDWORD(v79));
LABEL_39:
      v54 = *a7;
      v55 = *a8;
      v56 = *a9;
      v57 = *a10;
      v95 = *a4;
      v96 = *(a4 + 16);
      v82 = v39;
      v37 = v83;
      v49 = E_GAIN_closed_loop_search_11467(&v95, v89, v91, v90, v85, v54, v55, v56, v57, v83, a12, v82, v38, a2, a18, a18, a20);
      *v88 = v49;
      v50 = *a12;
      if (a2)
      {
        goto LABEL_40;
      }

      v95 = *v94;
      v96 = *(v94 + 16);
      v51 = v49;
      v53 = a20;
      v52 = a18;
      v62 = v38;
LABEL_56:
      v70 = v52;
      return Mode2_abs_pit_enc(v51, v50, &v95, v52, v53, v70, v62);
    }

    v87 = a13;
    if ((a5 + 1) <= a6 && a5 + 1 >= a5)
    {
      v40 = a23 >> 1;
      v41 = *a5;
      v80 = __PAIR64__(a22, a18);
      v77 = a10;
      v42 = 4;
LABEL_38:
      v83 = v40;
      v38 = a23;
      limit_T0_voiced(v42, v40, v41, 0, 1, a7, a8, a9, v77, v80, SHIDWORD(v80));
      v39 = v87;
      goto LABEL_39;
    }

    goto LABEL_59;
  }

  if (result != 3)
  {
    if (result != 4)
    {
      return result;
    }

    v84 = a23 >> (a18 == 36);
    if ((a2 | 0x80) == 0x80)
    {
      limit_T0_voiced2(v84, a5, a6, a7, a8, a9, a10, a18, a22, a2);
    }

    else
    {
      limit_T0_voiced(6, v84, *a11, 0, 1, a7, a8, a9, a10, a18, a22);
    }

    v65 = *a7;
    v66 = *a8;
    v67 = *a9;
    v68 = *a10;
    v95 = *a4;
    v96 = *(a4 + 16);
    v47 = a23;
    v48 = a21;
    v69 = E_GAIN_closed_loop_search_11467(&v95, a16, a17, a14, a15, v65, v66, v67, v68, v84, a12, a13, a23, v27, a18, a21, a19);
    *a11 = v69;
    v50 = *a12;
    if (v27)
    {
      v58 = *a7;
      v59 = *a8;
      v95 = *a3;
      v96 = *(a3 + 16);
      v60 = v69;
      v61 = a23 >> (a18 == 36);
      return Mode2_delta_pit_enc(v60, v50, v61, v58, v59, &v95);
    }

    v95 = *a3;
    v96 = *(a3 + 16);
    v51 = v69;
    v52 = a18;
    v53 = a19;
    goto LABEL_50;
  }

  v94 = a3;
  v36 = a18 == 36;
  v37 = a23 >> (a18 == 36);
  if (a2)
  {
    limit_T0_voiced(6, a23 >> v36, *a11, 0, 1, a7, a8, a9, a10, a18, a22);
  }

  else
  {
    limit_T0_voiced2((a23 >> v36), a5, a6, a7, a8, a9, a10, a18, a22, 0);
  }

  v43 = *a7;
  v44 = *a8;
  v45 = *a9;
  v46 = *a10;
  v95 = *a4;
  v96 = *(a4 + 16);
  v47 = a23;
  v48 = a21;
  v49 = E_GAIN_closed_loop_search_11467(&v95, a16, a17, a14, a15, v43, v44, v45, v46, v37, a12, a13, a23, a2, a18, a21, a19);
  *a11 = v49;
  v50 = *a12;
  if (a2)
  {
LABEL_40:
    v58 = *a7;
    v59 = *a8;
    v95 = *v94;
    v96 = *(v94 + 16);
    v60 = v49;
    v61 = v37;
    return Mode2_delta_pit_enc(v60, v50, v61, v58, v59, &v95);
  }

  v95 = *v94;
  v96 = *(v94 + 16);
  v51 = v49;
  v52 = a18;
  v53 = a19;
LABEL_50:
  v70 = v48;
  v62 = v47;
  return Mode2_abs_pit_enc(v51, v50, &v95, v52, v53, v70, v62);
}

void *pred_lt4(void *a1, unint64_t a2, int a3, int a4, uint64_t a5, unint64_t a6, unint64_t a7, unsigned __int16 a8, __int16 a9)
{
  v77 = *MEMORY[0x1E69E9840];
  v12 = a1[1];
  v13 = a1[2];
  v73 = *a1 + 4 * -a3;
  v74 = a9;
  if ((-a4 & 0x8000u) == 0)
  {
    v14 = 0;
  }

  else
  {
    v14 = -4;
  }

  if ((-a4 & 0x8000u) == 0)
  {
    v15 = -a4;
  }

  else
  {
    v15 = (v74 - a4);
  }

  v71 = v15;
  v72 = v14;
  v16 = a8;
  v17 = (~v16 + a3) & ~((~v16 + a3) >> 31);
  v76 = a5;
  if (v17 >= a5)
  {
    v18 = a5;
  }

  else
  {
    v18 = v17;
  }

  v19 = a8;
  v20 = 4 * a8;
  MEMORY[0x1EEE9AC00](a1);
  v21 = (v20 + 15) & 0x7FFF0;
  v75 = (&v68 - v21);
  v22 = memset(&v68 - v21, 255, v20);
  MEMORY[0x1EEE9AC00](v22);
  v23 = &v68 - v21;
  v24 = memset(v23, 255, v20);
  v68 = v76;
  v25 = 4 * v76;
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v68 - v26;
  v70 = (&v68 - v26);
  if (v28)
  {
    v29 = memset(v27, 255, v25);
    MEMORY[0x1EEE9AC00](v29);
    v69 = (&v68 - v30);
    result = memset(&v68 - v30, 255, v25);
    v32 = v76;
  }

  else
  {
    result = MEMORY[0x1EEE9AC00](v27);
    v69 = (&v68 - v33);
  }

  v34 = 4 * v19 * v74 - 4 * v71;
  v35 = v73 + v72;
  v36 = 4 * v71;
  v37 = 4 * v74;
  v38 = v75;
  v39 = v75;
  v40 = v23;
  v41 = v19;
  do
  {
    v42 = (a6 + v36);
    v43 = a6 + v36 + 4;
    if (a6 + v36 < a6 || v43 > a7 || v42 > v43)
    {
      goto LABEL_53;
    }

    *v39 = *v42;
    v46 = (a6 + v34);
    if (a6 + v34 < a6 || (v46 + 1) > a7 || v46 > v46 + 1)
    {
      goto LABEL_53;
    }

    *v40++ = *v46;
    v34 -= v37;
    ++v39;
    v36 += v37;
    --v41;
  }

  while (v41);
  if (v18)
  {
    v47 = v70;
    vDSP_conv((v35 + 4 - 4 * v19), 1, &v38[v19 - 1], -1, v70, 1, v18, v19);
    v48 = v69;
    vDSP_conv((v35 + 4), 1, &v23[4 * v19 - 4], -1, v69, 1, v18, v19);
    result = MEMORY[0x19EAE5DC0](v47, 1, v48, 1, a2, 1, v18);
    v38 = v75;
    v32 = v76;
  }

  if (v32 > v18)
  {
    v49 = a2 + 4 * v68;
    while (1)
    {
      v50 = 0.0;
      v51 = v38;
      v52 = v23;
      v53 = v19;
      v54 = v18;
      do
      {
        v55 = (v35 + 4 * v54);
        v57 = (v55 + 1) <= v12 && v55 <= v55 + 1 && v55 >= v13;
        v58 = (v35 + 4 * (v16 + v54));
        v59 = v58 + 1;
        if (!v57 || v59 > v12 || v58 > v59 || v58 < v13)
        {
          goto LABEL_53;
        }

        v63 = *v51++;
        v64 = v63;
        v65 = *v52++;
        v50 = v50 + ((*v58 * v65) + (*v55 * v64));
        --v54;
        --v53;
      }

      while (v53);
      v66 = (a2 + 4 * v18);
      if (v66 < a2 || (v66 + 1) > v49 || v66 > v66 + 1)
      {
        break;
      }

      *v66 = v50;
      v67 = v18 + 1;
      LODWORD(v18) = (v18 + 1);
      if (v32 <= v67)
      {
        return result;
      }
    }

LABEL_53:
    __break(0x5519u);
  }

  return result;
}

uint64_t lp_filt_exc_enc(int a1, uint64_t a2, int a3, unsigned __int16 a4, int a5, void *a6, uint64_t a7, uint64_t a8, const float *a9, unint64_t a10, float *a11, unint64_t a12, float *a13, unint64_t a14, __int16 a15, __int16 a16, float *a17, unint64_t a18, __int16 a19, float *a20, __int16 *a21)
{
  v110[0] = *MEMORY[0x1E69E9840];
  v26 = a4;
  v109 = -1;
  memset(__b, 255, sizeof(__b));
  memset(v107, 255, sizeof(v107));
  memset(__src, 255, sizeof(__src));
  v105 = 0;
  v100 = a1;
  v27 = a1 != 1;
  if (a1 == 1)
  {
    v28 = a21;
    if (a3)
    {
      v38 = 0;
    }

    else
    {
      v38 = (v26 - 3) >= 2;
    }

    v39 = !v38;
    if (a2 <= 11599 && v39)
    {
      LOBYTE(v30) = 0;
      *a21 = 0;
      v37 = 0.0;
      v32 = a17;
      v31 = a8;
      v33 = a7;
      v35 = a15;
      goto LABEL_60;
    }

    if (v26 == 5 || a2 <= 11599)
    {
      v41 = 1;
    }

    else
    {
      v41 = 2;
    }

    *a21 = v41;
    v31 = a8;
LABEL_21:
    v103 = (*a6 + 4 * a5);
    v104 = *(a6 + 1);
    v32 = a17;
    v33 = a7;
    v35 = a15;
    adpt_enr(v100, &v103, a7, v31, a11, a12, a15, &v105 + 1, a17, a18, a19, a9, a10, a13, a14, 0);
    v37 = v42;
    LOBYTE(v30) = 0;
    goto LABEL_22;
  }

  v28 = a21;
  v29 = *a21;
  LOBYTE(v30) = v26 == 100;
  if ((v29 - 1) > 1)
  {
    v37 = 0.0;
    v27 = 1;
    v32 = a17;
    v31 = a8;
    v33 = a7;
    v35 = a15;
    goto LABEL_24;
  }

  v31 = a8;
  if (v26 != 100)
  {
    goto LABEL_21;
  }

  v103 = (*a6 + 4 * a5);
  v104 = *(a6 + 1);
  v27 = 1;
  v32 = a17;
  v33 = a7;
  v34 = a8;
  v35 = a15;
  adpt_enr(2, &v103, a7, v34, a11, a12, a15, a20, a17, a18, a19, a9, a10, a13, a14, 1);
  v37 = v36;
  LOBYTE(v30) = 1;
LABEL_22:
  v29 = *v28;
LABEL_24:
  if ((v29 | 2) != 2)
  {
    if (v29 == 2 && v37 > 0.0)
    {
      v45 = a6;
      goto LABEL_121;
    }

    v45 = a6;
    if (!v29)
    {
      goto LABEL_121;
    }

    if (v30)
    {
      return 1;
    }

LABEL_118:
    *a20 = *(&v105 + 1);
    return 1;
  }

  if (a16 == 320 && v27)
  {
    v44 = 0;
    v45 = a6;
    v46 = a6[1];
    v47 = a6[2];
    v48 = v35;
    v49 = *a6 + 4 * a5;
    while (1)
    {
      v50 = (v49 + v44);
      v51 = (v49 + v44 - 4);
      v52 = v49 + v44 > v46 || v51 > v50;
      v53 = !v52 && v51 >= v47;
      v54 = v50 + 1;
      v55 = !v53 || v54 > v46;
      v56 = v55 || v50 > v54;
      v57 = v50 + 2;
      v58 = v56 || v57 > v46;
      v59 = v58 || v54 > v57;
      v60 = (__b + v44);
      v61 = (__b + v44 + 4);
      v62 = !v59 && v60 >= __b;
      v63 = !v62 || v61 > &v109;
      if (v63 || v60 > v61)
      {
        break;
      }

      *(__b + v44) = ((*v50 * 0.58) + (*v51 * 0.21)) + (*v54 * 0.21);
      v44 += 4;
      if (!--v48)
      {
        goto LABEL_90;
      }
    }

LABEL_142:
    __break(0x5519u);
  }

LABEL_60:
  v45 = a6;
  v65 = 0;
  v66 = a6[1];
  v67 = a6[2];
  v68 = v35;
  v69 = *a6 + 4 * a5;
  do
  {
    v70 = (v69 + v65);
    v71 = (v69 + v65 - 4);
    v73 = v69 + v65 <= v66 && v71 <= v70 && v71 >= v67;
    v74 = v70 + 1;
    v76 = !v73 || v74 > v66 || v70 > v74;
    v77 = v70 + 2;
    v79 = v76 || v77 > v66 || v74 > v77;
    v80 = (__b + v65);
    v81 = (__b + v65 + 4);
    if (v79 || v80 < __b || v81 > &v109 || v80 > v81)
    {
      goto LABEL_142;
    }

    *(__b + v65) = ((*v70 * 0.64) + (*v71 * 0.18)) + (*v74 * 0.18);
    v65 += 4;
    --v68;
  }

  while (v68);
LABEL_90:
  if (v30)
  {
    v103 = __b;
    *&v104 = &v109;
    *(&v104 + 1) = __b;
    v30 = 1;
    adpt_enr(2, &v103, v33, v31, __src, v107, v35, a20, &v109, v110, a19, a9, a10, v107, __b, 1);
    v87 = *v28 == 2 && v85 < v37;
    if (!v87 && *v28)
    {
      return v30;
    }

    goto LABEL_121;
  }

  v103 = __b;
  *&v104 = &v109;
  *(&v104 + 1) = __b;
  adpt_enr(v100, &v103, v33, v31, __src, v107, v35, &v105, &v109, v110, a19, a9, a10, v107, __b, 0);
  LOBYTE(v30) = 0;
  v90 = *v28 == 2 && v88 < v37;
  if (!v90 && *v28)
  {
    goto LABEL_118;
  }

LABEL_121:
  v93 = *v45 + 4 * a5;
  if (v93 < v45[2])
  {
    goto LABEL_142;
  }

  if (v35 >= 1)
  {
    v94 = v45[1];
    v38 = v94 >= v93;
    v95 = v94 - v93;
    if (!v38)
    {
      goto LABEL_142;
    }

    if (v35 > 0x140)
    {
      goto LABEL_142;
    }

    v96 = 4 * v35;
    if (v96 > v95)
    {
      goto LABEL_142;
    }

    memmove((*v45 + 4 * a5), __b, 4 * v35);
    if (v93 + v96 < v93)
    {
      goto LABEL_142;
    }

    if (a12 < a11)
    {
      goto LABEL_142;
    }

    if (v96 > a12 - a11)
    {
      goto LABEL_142;
    }

    memmove(a11, __src, 4 * v35);
    if (&a11[v96 / 4] < a11)
    {
      goto LABEL_142;
    }

    if (a14 < a13)
    {
      goto LABEL_142;
    }

    if (v96 > a14 - a13)
    {
      goto LABEL_142;
    }

    memmove(a13, v107, 4 * v35);
    if (&a13[v96 / 4] < a13)
    {
      goto LABEL_142;
    }
  }

  if (v30)
  {
    return 0;
  }

  *a20 = v105;
  v97 = v32 + 1;
  if ((v32 + 1) > a18)
  {
    goto LABEL_142;
  }

  if (v97 < v32)
  {
    goto LABEL_142;
  }

  *v32 = v109;
  v98 = v32 + 2;
  if (v98 > a18 || v97 > v98)
  {
    goto LABEL_142;
  }

  v30 = 0;
  *v97 = *(&v109 + 1);
  return v30;
}

float *E_ACELP_innovative_codebook(void *a1, int a2, int a3, int a4, int a5, __int16 a6, __int16 a7, __int16 a8, float a9, float a10, float a11, float a12, unsigned __int16 a13, __int16 a14, unsigned __int16 a15, __int16 a16, __int16 a17, float *a18, unint64_t a19, const void *a20, unint64_t a21, unint64_t a22, unint64_t a23, unint64_t a24, unint64_t a25, unint64_t a26, unint64_t a27, float *a28, unint64_t a29, char a30, void *a31, float *a32, unint64_t a33, __int16 a34, __int16 a35, uint64_t a36)
{
  v109[0] = *MEMORY[0x1E69E9840];
  *&v37 = -1;
  *(&v37 + 1) = -1;
  __A[15] = v37;
  __A[14] = v37;
  __A[13] = v37;
  __A[12] = v37;
  __A[11] = v37;
  __A[10] = v37;
  __A[9] = v37;
  __A[8] = v37;
  __A[7] = v37;
  __A[6] = v37;
  __A[5] = v37;
  __A[4] = v37;
  __A[3] = v37;
  __A[2] = v37;
  __A[1] = v37;
  __A[0] = v37;
  v104[15] = v37;
  v104[14] = v37;
  v104[13] = v37;
  v104[12] = v37;
  v104[11] = v37;
  v104[10] = v37;
  v104[9] = v37;
  v104[8] = v37;
  v104[7] = v37;
  v104[6] = v37;
  v104[5] = v37;
  v104[4] = v37;
  v104[3] = v37;
  v104[2] = v37;
  v104[1] = v37;
  v104[0] = v37;
  __C[15] = v37;
  __C[13] = v37;
  __C[14] = v37;
  __C[11] = v37;
  __C[12] = v37;
  __C[9] = v37;
  __C[10] = v37;
  __C[7] = v37;
  __C[8] = v37;
  __C[5] = v37;
  __C[6] = v37;
  __C[3] = v37;
  __C[4] = v37;
  __C[1] = v37;
  __C[2] = v37;
  __dst[15] = v37;
  __C[0] = v37;
  __dst[13] = v37;
  __dst[14] = v37;
  __dst[11] = v37;
  __dst[12] = v37;
  __dst[9] = v37;
  __dst[10] = v37;
  __dst[7] = v37;
  __dst[8] = v37;
  __dst[5] = v37;
  __dst[6] = v37;
  __dst[3] = v37;
  __dst[4] = v37;
  __dst[1] = v37;
  __dst[2] = v37;
  v101[15] = v37;
  __dst[0] = v37;
  v101[13] = v37;
  v101[14] = v37;
  v101[11] = v37;
  v101[12] = v37;
  v101[9] = v37;
  v101[10] = v37;
  v101[7] = v37;
  v101[8] = v37;
  v101[5] = v37;
  v101[6] = v37;
  v101[3] = v37;
  v101[4] = v37;
  v101[1] = v37;
  v101[2] = v37;
  v101[0] = v37;
  if ((a23 - a22) < 253)
  {
    goto LABEL_87;
  }

  if (a23 < a22)
  {
    goto LABEL_87;
  }

  if (a27 < a26)
  {
    goto LABEL_87;
  }

  if ((a27 - a26) <= 252)
  {
    goto LABEL_87;
  }

  v40 = 0;
  v41 = (a3 / a4) + a2;
  v42 = -a9;
  do
  {
    *(__A + v40) = *(a22 + v40) + (v42 * *(a26 + v40));
    v40 += 4;
  }

  while (v40 != 256);
  if (a21 < a20)
  {
    goto LABEL_87;
  }

  if (a21 - a20 <= 0xFF)
  {
    goto LABEL_87;
  }

  memmove(__dst, a20, 0x100uLL);
  if (a19 < a18 || (a19 - a18) < 65)
  {
    goto LABEL_87;
  }

  v91 = a8;
  v92 = a7;
  cb_shape(a6, a7, a8, a13, a15, a18, __dst, a11, a12, a10, v41);
  if (a30)
  {
    v52 = __dst;
    v53 = 64;
    v54 = v101;
    do
    {
      vDSP_dotpr(v52++, 1, __dst, 1, v54++, v53--);
    }

    while (v53);
    v55 = 0;
    v56 = __dst;
    while (1)
    {
      v57 = *(__A + v55);
      *(v104 + v55) = v57;
      if (v55)
      {
        break;
      }

LABEL_35:
      ++v55;
      v56 = (v56 + 4);
      if (v55 == 64)
      {
        E_ACELP_toeplitz_mul(v101, __dst, v104, __A, __C, v104);
        goto LABEL_37;
      }
    }

    v58 = 0;
    v59 = v56;
    while (1)
    {
      v60 = v59 + 1;
      v61 = v59 < __dst || v60 > __C;
      if (v61 || v59 > v60)
      {
        break;
      }

      v63 = *v59--;
      v57 = v57 - (*(v104 + v58) * v63);
      *(v104 + v55) = v57;
      if (v55 == ++v58)
      {
        goto LABEL_35;
      }
    }

LABEL_87:
    __break(0x5519u);
  }

  v46 = a1[1];
  v47 = *a1 + 4 * a17;
  if (v47 > v46 || (a25 - a24) < 253 || a25 < a24 || (v46 - v47) < 253 || a1[2] > v47)
  {
    goto LABEL_87;
  }

  for (i = 0; i != 256; i += 4)
  {
    *(v104 + i) = *(a24 + i) + (v42 * *(v47 + i));
  }

  v49 = __A;
  v50 = __C;
  v51 = 64;
  do
  {
    vDSP_dotpr(v49++, 1, __dst, 1, v50++, v51--);
  }

  while (v51);
LABEL_37:
  if (a5 > 40)
  {
    LODWORD(v106[0]) = 0;
    vDSP_vfill(v106, a32, 1, 0x40uLL);
  }

  else
  {
    v64 = *a31;
    v65 = *a31 + 24;
    if (v65 > a31[1] || v64 > v65 || v64 < a31[2])
    {
      goto LABEL_87;
    }

    v68 = *v64;
    if (*v64 < v64[2])
    {
      goto LABEL_87;
    }

    v69 = &PulseConfTable[19 * a5];
    if (v69 < PulseConfTable || v69 + 19 > sidparts_encoder_noise_est || v69 > v69 + 19)
    {
      goto LABEL_87;
    }

    v70 = v64[1];
    v71 = *(v69 + 3);
    v99 = *(v69 + 2);
    v100[0] = v71;
    *(v100 + 12) = *(v69 + 15);
    v72 = *(v69 + 1);
    v97 = *v69;
    v98 = v72;
    if (a17 <= 319 && a34 != a35 && a36 == 24400)
    {
      v73 = DWORD1(v97);
      if (SDWORD1(v97) <= 2)
      {
        v73 = 2;
      }

      DWORD1(v97) = v73 - 1;
    }

    v108 = 0xAAAAAAAAAAAAAAAALL;
    *&v74 = 0xAAAAAAAAAAAAAAAALL;
    *(&v74 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v107[2] = v74;
    v107[3] = v74;
    v107[0] = v74;
    v107[1] = v74;
    *&v74 = -1;
    *(&v74 + 1) = -1;
    v106[0] = v74;
    v106[1] = v74;
    v106[2] = v74;
    v106[3] = v74;
    v106[4] = v74;
    v106[5] = v74;
    v106[6] = v74;
    v106[7] = v74;
    v106[8] = v74;
    v106[9] = v74;
    v106[10] = v74;
    v106[11] = v74;
    v106[12] = v74;
    v106[13] = v74;
    v106[14] = v74;
    v106[15] = v74;
    if (a30)
    {
      E_ACELP_4tsearchx(__C, v104, v104, __A, v101, __dst, a32, a33, &v97, v107, v109);
    }

    else
    {
      E_ACELP_4tsearch(__C, v104, v104, __A, __dst, __C, a32, a33, &v97, v107, v109, v106, v107);
    }

    v95[2] = v99;
    v96[0] = v100[0];
    *(v96 + 12) = *(v100 + 12);
    v95[0] = v97;
    v95[1] = v98;
    E_ACELP_indexing(a32, a33, v95, v68, v70);
  }

  v75 = *a31;
  v76 = *a31 + 24;
  if (v76 > a31[1] || v75 > v76 || v75 < a31[2])
  {
    goto LABEL_87;
  }

  *v75 += 32;
  LODWORD(v106[0]) = 0;
  v79 = 64;
  vDSP_vfill(v106, a28, 1, 0x40uLL);
  v80 = 0;
  v81 = a28;
  do
  {
    v82 = &a32[v80];
    v83 = v82 + 1;
    if (v82 < a32 || v83 > a33 || v82 > v83)
    {
      goto LABEL_87;
    }

    if (*v82 != 0.0)
    {
      v86 = __dst;
      v87 = v81;
      v88 = v79;
      while (v87 >= a28 && (v87 + 1) <= a29 && v87 <= v87 + 1)
      {
        v89 = *v86++;
        *v87 = *v87 + (*v82 * v89);
        ++v87;
        if (!--v88)
        {
          goto LABEL_83;
        }
      }

      goto LABEL_87;
    }

LABEL_83:
    ++v80;
    --v79;
    ++v81;
  }

  while (v80 != 64);
  if (a33 < a32 || (a33 - a32) < 253)
  {
    goto LABEL_87;
  }

  return cb_shape(a6, v92, v91, a13, a15, a18, a32, a11, a12, a10, v41);
}

void E_corr_xy2(const float *a1, unint64_t a2, const float *a3, unint64_t a4, const float *__A, unint64_t a6, unint64_t a7, unint64_t a8)
{
  if (a6 < __A || (a6 - __A) <= 252 || (__C = NAN, vDSP_dotpr(__A, 1, __A, 1, &__C, 0x40uLL), v15 = (a7 + 8), a7 + 8 < a7) || (v16 = (a7 + 12), a7 + 12 > a8) || v15 > v16 || (*v15 = __C, a2 < a1) || (a2 - a1) < 256 || (v19 = NAN, vDSP_dotpr(a1, 1, __A, 1, &v19, 0x40uLL), v16 < a7) || (v17 = (a7 + 16), a7 + 16 > a8) || v16 > v17 || (*v16 = v19 * -2.0, a4 < a3) || (a4 - a3) < 256 || (v20 = NAN, vDSP_dotpr(a3, 1, __A, 1, &v20, 0x40uLL), v17 < a7) || a7 + 20 > a8 || v17 > a7 + 20)
  {
    __break(0x5519u);
  }

  else
  {
    *v17 = v20 + v20;
  }
}

void encode_acelp_gains(const float *__A, unint64_t a2, int a3, int a4, float *a5, float *a6, float *a7, unsigned int ***a8, float a9, float *a10, float *a11, const float *a12, unint64_t a13, float *a14, __int16 a15)
{
  v21 = a3 - 1;
  if ((a3 - 1) <= 2)
  {
    if (a2 >= __A && (a2 - __A) > 252)
    {
      if (a3 == 1)
      {
        __C = NAN;
        vDSP_dotpr(__A, 1, __A, 1, &__C, 0x40uLL);
        *a11 = 1.0 / sqrtf((__C + 0.01) * 0.015625);
        __C = NAN;
        vDSP_dotpr(__A, 1, __A, 1, &__C, 0x40uLL);
        v39 = log10(((__C + 0.01) * 0.015625));
        v30 = __exp10((a9 + (v39 * -10.0)) * 0.05);
        v31 = &E_ROM_qua_gain5b_const;
        v32 = &E_ROM_qua_gain6b_const;
        v34 = 32;
        v33 = -9;
LABEL_33:
        v40 = 0;
        LOWORD(v41) = 0;
        if (a4 != 1)
        {
          v33 = 0;
        }

        v42 = v30;
        v43 = (v34 + v33);
        v44 = 3.4028e38;
        v45 = v31 + 1;
        while (1)
        {
          v46 = v45 - 1 < v31 || v45 > v32;
          v47 = v46 || v45 - 1 > v45;
          v48 = (v45 + 1);
          v49 = v47 || v48 > v32;
          if (v49 || v45 > v48)
          {
            break;
          }

          v51 = vcvts_n_f32_s32(*(v45 - 1), 0xEuLL);
          v52 = (v42 * *v45) * 0.00048828;
          v53 = (((((a5[3] * -2.0) * v51) + ((v51 * v51) * a5[1])) + ((v52 * v52) * a5[2])) + (v52 * (a5[4] * -2.0))) + ((v51 * v52) * (a5[5] + a5[5]));
          if (v53 < v44)
          {
            v44 = v53;
            v40 = v41;
          }

          v41 = (v41 + 1);
          v45 += 2;
          if (v41 >= v43)
          {
            v54 = &v31[2 * v40];
            v55 = v54 + 1;
            if (v54 >= v31 && v55 <= v32 && v54 <= v55)
            {
              *a6 = vcvts_n_f32_s32(*v54, 0xEuLL);
              v58 = &v31[2 * v40];
              v59 = v58 + 1;
              v60 = (v58 + 2);
              v61 = v59 < v31 || v60 > v32;
              if (!v61 && v59 <= v60)
              {
                v38 = v40;
                v63 = vcvts_n_f32_s32(*v59, 0xBuLL) * v42;
                *a7 = v63;
                *a10 = v63 / *a11;
                goto LABEL_86;
              }
            }

            goto LABEL_106;
          }
        }
      }

      else
      {
        v23 = 0;
        v24 = 0.01;
        while (1)
        {
          v25 = &__A[v23];
          v26 = (v25 + 1);
          v27 = v25 < __A || v26 > (__A + 64);
          if (v27 || v25 > v26)
          {
            break;
          }

          v24 = v24 + (*v25 * *v25);
          v90 = v23++ >= 0x3F;
          if (v90)
          {
            *a11 = sqrtf(64.0 / v24);
            v29 = log10((64.0 / v24)) * 10.0;
            v30 = __exp10((a9 + v29) / 20.0);
            v31 = &E_ROM_qua_gain7b_const;
            if (v21 == 1)
            {
              v32 = &E_ROM_qua_gain7b_const;
            }

            else
            {
              v32 = mfreq_bindiv_LD;
            }

            if (v21 == 1)
            {
              v31 = &E_ROM_qua_gain6b_const;
              v33 = -6;
            }

            else
            {
              v33 = -21;
            }

            if (v21 == 1)
            {
              v34 = 64;
            }

            else
            {
              v34 = 128;
            }

            goto LABEL_33;
          }
        }
      }
    }

    goto LABEL_106;
  }

  if (a3 == 7)
  {
    if (a13 < a12 || a2 < __A || (a13 - a12) < 256 || (a2 - __A) < 256)
    {
      goto LABEL_106;
    }

    __C = NAN;
    vDSP_dotpr(__A, 1, __A, 1, &__C, 0x40uLL);
    v64 = 1.0 / sqrtf((__C + 0.01) * 0.015625);
    *a11 = v64;
    v65 = __exp10(a9 / 20.0);
    v66 = v64 * v65;
    __C = NAN;
    vDSP_dotpr(a12, 1, a12, 1, &__C, 0x40uLL);
    v67 = (1.0 / sqrtf((__C + 0.01) * 0.015625)) * v65;
    v68 = a5[4] / (a5[2] * (v64 * v65));
    if (v68 <= 0.000001)
    {
      v70 = 0;
    }

    else
    {
      v69 = log10(v68);
      if ((((v69 * 20.0 + 20.0) / 1.25 + 0.5) & ~(((v69 * 20.0 + 20.0) / 1.25 + 0.5) >> 31)) >= 31)
      {
        v70 = 31;
      }

      else
      {
        v70 = ((v69 * 20.0 + 20.0) / 1.25 + 0.5) & ~(((v69 * 20.0 + 20.0) / 1.25 + 0.5) >> 31);
      }
    }

    v72 = __exp10((((v70 * 1.25) + -20.0) / 20.0));
    v73 = 0;
    *&v72 = v72;
    v74 = v66 * *&v72;
    *a7 = v66 * *&v72;
    v75 = a5[2];
    v76 = -(v74 * v74);
    v77 = (v75 * v76) + (*a5 * 0.8);
    if (!a15)
    {
      v77 = *a5 + (v76 * v75);
    }

    v78 = v67 / v66;
    v79 = ((v67 / v66) * v74) * 0.25;
    *a14 = v79;
    v80 = *a7;
    v81 = (v77 + (-(v79 * v79) * a5[1])) + (((*a7 * -2.0) * v79) * a5[5]);
    v82 = 1;
    do
    {
      v83 = v82;
      v84 = (v78 * v80) * ((v82 * 0.25) + 0.25);
      *a14 = v84;
      v80 = *a7;
      v85 = (v77 + (-(v84 * v84) * a5[1])) + ((v84 * (*a7 * -2.0)) * a5[5]);
      if (fabsf(v85) < fabsf(v81))
      {
        v73 = v82;
        v81 = v85;
      }

      ++v82;
    }

    while (v83 < 3);
    *a14 = (v78 * v80) * ((v73 * 0.25) + 0.25);
    *a6 = 0.0;
    *a10 = *a7 / *a11;
    v38 = ((v73 << 21) | (v70 << 16)) >> 16;
  }

  else if (a3 == 6)
  {
    if (a2 < __A || (a2 - __A) < 253)
    {
      goto LABEL_106;
    }

    __C = NAN;
    vDSP_dotpr(__A, 1, __A, 1, &__C, 0x40uLL);
    v35 = 1.0 / sqrtf((__C + 0.01) * 0.015625);
    *a11 = v35;
    v36 = a5[4] / (a5[2] * v35);
    if (v36 <= 0.000001)
    {
      v38 = 0;
    }

    else
    {
      v37 = log10(v36);
      if ((((v37 * 20.0 + 30.0) / 1.89999998 + 0.5) & ~(((v37 * 20.0 + 30.0) / 1.89999998 + 0.5) >> 31)) >= 63)
      {
        v38 = 63;
      }

      else
      {
        v38 = ((v37 * 20.0 + 30.0) / 1.89999998 + 0.5) & ~(((v37 * 20.0 + 30.0) / 1.89999998 + 0.5) >> 31);
      }
    }

    v71 = __exp10((((v38 * 1.9) + -30.0) / 20.0));
    *a7 = v71;
    *a10 = v71;
    *a7 = *a11 * *a7;
    *a6 = 0.0;
  }

  else
  {
    v38 = 0;
  }

LABEL_86:
  v86 = *a8;
  v87 = a8[2];
  v88 = (*a8 + 3);
  v90 = v88 <= a8[1] && v86 <= v88 && v86 >= v87;
  if (v90)
  {
    v91 = *v86;
    v92 = v86[1];
    v93 = v86[2];
    v94 = (v91 + 1) > v92 || v91 > v91 + 1;
    if (!v94 && v91 >= v93)
    {
      *v91 = v38;
      v96 = *a8;
      v97 = (*a8 + 3);
      if (v97 <= a8[1] && v96 <= v97 && v96 >= v87)
      {
        ++*v96;
        return;
      }
    }
  }

LABEL_106:
  __break(0x5519u);
}

uint64_t gp_clip_test_gain_pit(uint64_t result, unint64_t a2, unint64_t a3, float a4)
{
  if (result != 8850 && result != 6600)
  {
    v9 = (a2 + 4);
    if (a2 + 4 >= a2 && a2 + 8 <= a3 && v9 <= a2 + 8)
    {
      v6 = *v9;
      v7 = a4 * 0.1;
      v8 = 0.9;
      goto LABEL_14;
    }

LABEL_17:
    __break(0x5519u);
    return result;
  }

  v5 = (a2 + 4);
  if (a2 + 4 < a2 || a2 + 8 > a3 || v5 > a2 + 8)
  {
    goto LABEL_17;
  }

  v6 = *v5;
  v7 = a4 * 0.02;
  v8 = 0.98;
LABEL_14:
  v10 = v7 + (v6 * v8);
  if (v10 < 0.6)
  {
    v10 = 0.6;
  }

  *(a2 + 4) = v10;
  return result;
}

void est_tilt(const float *__B, const float *a2, float *a3, float a4, float a5)
{
  __C = NAN;
  vDSP_dotpr(__B, 1, __B, 1, &__C, 0x40uLL);
  v9 = (a4 * a4) * __C;
  v11 = NAN;
  vDSP_dotpr(a2, 1, a2, 1, &v11, 0x40uLL);
  *a3 = (v9 - ((a5 * a5) * v11)) / ((v9 + ((a5 * a5) * v11)) + 0.01);
}

uint64_t enhancer(uint64_t result, uint64_t a2, int a3, int a4, unsigned __int16 a5, int a6, float *a7, char *__src, float a9, float a10, float a11, float a12, float a13, float *a14, float *a15, unint64_t a16)
{
  v25 = result;
  *&v163 = *MEMORY[0x1E69E9840];
  v26 = a5;
  if (!a4)
  {
    if (result != 1 || a5 == 1)
    {
      if (result != 2)
      {
        v29 = 2;
        goto LABEL_26;
      }

      if ((a3 > 2 || a5 == 2) && (a5 != 1 || a3 > 10 || a6 != 256) && (a5 != 1 || a3 > 14 || a6 != 320))
      {
        if (a5 != 2 && a3 < 8)
        {
          v29 = 1;
        }

        else
        {
          v29 = 2;
        }

        goto LABEL_26;
      }
    }

    else if (a2 >= 7201)
    {
      _CF = a5 - 3 >= 3 && a5 != 0 || a2 >= 0x2581;
      goto LABEL_13;
    }

LABEL_25:
    v29 = 0;
    goto LABEL_26;
  }

  if (a2 < 6601)
  {
    goto LABEL_25;
  }

  _CF = a2 >= 0x2293;
LABEL_13:
  if (_CF)
  {
    v29 = 2;
  }

  else
  {
    v29 = 1;
  }

LABEL_26:
  *&v30 = -1;
  *(&v30 + 1) = -1;
  v143 = v30;
  v144 = v30;
  v141 = v30;
  v142 = v30;
  v139 = v30;
  v140 = v30;
  v137 = v30;
  v138 = v30;
  v135 = v30;
  v136 = v30;
  v133 = v30;
  v134 = v30;
  v131 = v30;
  v132 = v30;
  v129 = v30;
  v130 = v30;
  if (a13 >= 0.6)
  {
    if (a13 >= 0.9)
    {
      v32 = 0;
      v31 = 2;
    }

    else
    {
      v32 = 1;
      v31 = 1;
    }
  }

  else
  {
    v31 = 0;
    v32 = 1;
  }

  v33 = __src + 256;
  v34 = (a15 + 2);
  v162[14] = v30;
  v162[15] = v30;
  v162[12] = v30;
  v162[13] = v30;
  v162[10] = v30;
  v162[11] = v30;
  v162[8] = v30;
  v162[9] = v30;
  v162[6] = v30;
  v162[7] = v30;
  v162[4] = v30;
  v162[5] = v30;
  v162[2] = v30;
  v162[3] = v30;
  v162[0] = v30;
  v162[1] = v30;
  v160 = v30;
  v161 = v30;
  v158 = v30;
  v159 = v30;
  v156 = v30;
  v157 = v30;
  v154 = v30;
  v155 = v30;
  v152 = v30;
  v153 = v30;
  v150 = v30;
  v151 = v30;
  v148 = v30;
  v149 = v30;
  v146 = v30;
  v147 = v30;
  __dst[14] = v30;
  __dst[15] = v30;
  __dst[12] = v30;
  __dst[13] = v30;
  __dst[10] = v30;
  __dst[11] = v30;
  __dst[8] = v30;
  __dst[9] = v30;
  __dst[6] = v30;
  __dst[7] = v30;
  __dst[4] = v30;
  __dst[5] = v30;
  __dst[2] = v30;
  __dst[3] = v30;
  v35 = 5;
  __dst[0] = v30;
  __dst[1] = v30;
  do
  {
    v36 = v35;
    v37 = (v34 + 4 * (v35 - 1));
    v38 = (v37 + 1);
    v40 = v37 < a15 || v38 > a16 || v37 > v38;
    v41 = (v34 + 4 * v36);
    v42 = (v41 + 1);
    if (v40 || v41 < a15 || v42 > a16 || v41 > v42)
    {
      goto LABEL_179;
    }

    *v41 = *v37;
    v35 = v36 - 1;
  }

  while (v36 > 1);
  if ((a15 + 3) > a16 || v34 > (a15 + 3))
  {
    goto LABEL_179;
  }

  a15[2] = a13;
  if ((a11 + (a15[1] * -3.0)) <= 0.0)
  {
    v47 = 0;
    v48 = 0;
    do
    {
      v49 = &a15[v47 + 2];
      v50 = &a15[v47 + 3];
      if (v49 < a15 || v50 > a16 || v49 > v50)
      {
        goto LABEL_179;
      }

      if (*v49 < 0.6)
      {
        ++v48;
      }

      ++v47;
    }

    while (v47 != 6);
    if (v48 <= 2)
    {
      v53 = v31;
    }

    else
    {
      v53 = 0;
    }

    v46 = v53 - (v53 - *a15 > 1);
  }

  else
  {
    v46 = v31 + v32;
  }

  *a15 = v46;
  a15[1] = a11;
  v54 = (v46 + v29);
  if (v54 <= 1)
  {
    if (v33 < __src)
    {
      goto LABEL_179;
    }

    v128 = a13;
    fft_rel(__src, 64, 6);
    if (v54)
    {
      if (v54 != 1)
      {
LABEL_76:
        if (__src + 4 > v33 || __src + 4 < __src)
        {
          goto LABEL_179;
        }

        v56 = 0;
        v57 = 0;
        *&v146 = *__src * *__dst;
        v58 = 1;
        do
        {
          v59 = &__src[v57 + 8];
          if (v59 > v33)
          {
            goto LABEL_179;
          }

          v60 = &__src[v57 + 4];
          if (v60 > v59)
          {
            goto LABEL_179;
          }

          if (v60 < __src)
          {
            goto LABEL_179;
          }

          if ((__dst + v57 + 8) > &v146)
          {
            goto LABEL_179;
          }

          v61 = &__src[v56 + 256];
          if (v61 > v33)
          {
            goto LABEL_179;
          }

          v62 = &__src[v56 + 252];
          if (v62 > v61)
          {
            goto LABEL_179;
          }

          if (v62 < __src)
          {
            goto LABEL_179;
          }

          v63 = (&__dst[15] + v56 + 12);
          if (v63 < __dst)
          {
            goto LABEL_179;
          }

          v64 = (&__dst[16] + v56);
          if (v64 > &v146)
          {
            goto LABEL_179;
          }

          if (v63 > v64)
          {
            goto LABEL_179;
          }

          if ((&v146 + v57 + 8) > &v163)
          {
            goto LABEL_179;
          }

          v65 = (&v161 + v56 + 12);
          v66 = *v60;
          v67 = *(__dst + v57 + 4);
          v68 = *v63;
          v69 = *v62;
          *(&v146 + v57 + 4) = (*v60 * v67) - (*v62 * *v63);
          if ((&v161 + v56 + 12) < &v146 || (v162 + v56) > &v163 || v65 > (v162 + v56))
          {
            goto LABEL_179;
          }

          *v65 = (v67 * v69) + (v66 * v68);
          v57 += 4;
          v56 -= 4;
          _CF = v58++ >= 0x1F;
        }

        while (!_CF);
        v70 = &__src[v57 + 8];
        if (v70 > v33)
        {
          goto LABEL_179;
        }

        v71 = &__src[v57 + 4];
        if (v71 > v70)
        {
          goto LABEL_179;
        }

        v72 = (__dst + v57 + 4);
        if (v72 < __dst)
        {
          goto LABEL_179;
        }

        v73 = (__dst + v57 + 8);
        if (v73 > &v146)
        {
          goto LABEL_179;
        }

        if (v72 > v73)
        {
          goto LABEL_179;
        }

        v74 = &v146 + v57;
        v75 = (&v146 + v57 + 4);
        if (v75 < &v146)
        {
          goto LABEL_179;
        }

        v76 = v74 + 8;
        if (v76 > &v163 || v75 > v76)
        {
          goto LABEL_179;
        }

        *v75 = *v71 * *v72;
        result = ifft_rel(&v146, 64, 6);
        a13 = v128;
        v77 = v159;
        *(__src + 12) = v158;
        *(__src + 13) = v77;
        v78 = v161;
        *(__src + 14) = v160;
        *(__src + 15) = v78;
        v79 = v155;
        *(__src + 8) = v154;
        *(__src + 9) = v79;
        v80 = v157;
        *(__src + 10) = v156;
        *(__src + 11) = v80;
        v81 = v151;
        *(__src + 4) = v150;
        *(__src + 5) = v81;
        v82 = v153;
        *(__src + 6) = v152;
        *(__src + 7) = v82;
        v83 = v147;
        *__src = v146;
        *(__src + 1) = v83;
        v84 = v149;
        *(__src + 2) = v148;
        *(__src + 3) = v84;
        goto LABEL_104;
      }

      v55 = &mid_H;
    }

    else
    {
      v55 = &low_H;
    }

    if (v55 + 256 < v55)
    {
      goto LABEL_179;
    }

    memmove(__dst, v55, 0x100uLL);
    goto LABEL_76;
  }

LABEL_104:
  v85 = *a7;
  if (*a7 <= a11)
  {
    v86 = a11 / 1.19;
    if ((a11 / 1.19) < v85)
    {
      v86 = *a7;
    }
  }

  else
  {
    v86 = a11 * 1.19;
    if ((a11 * 1.19) > v85)
    {
      v86 = *a7;
    }
  }

  v87 = 0;
  *a7 = v86;
  v88 = (((1.0 - (((1.0 - a9) * 0.5) * a10)) * a11) + ((((1.0 - a9) * 0.5) * a10) * v86)) * a12;
  do
  {
    v89 = &__src[v87];
    v90 = &__src[v87 + 4];
    if (&__src[v87] < __src || v90 > v33 || v89 > v90)
    {
      goto LABEL_179;
    }

    *v89 = v88 * *v89;
    v87 += 4;
  }

  while (v87 != 256);
  if (!a4 && v25 == 1 && v26 == 1)
  {
    result = memmove(a14, __src, 0x100uLL);
    v93 = (a14 + 64);
    goto LABEL_170;
  }

  if (a4 && (a2 == 8850 || a2 == 6600))
  {
    if (a13 > 1.0)
    {
      a13 = 1.0;
    }

    if (a13 > 0.5)
    {
      v94 = 0;
      __asm { FMOV            V0.4S, #0.25 }

      do
      {
        *(&v129 + v94 * 4) = vmulq_f32(vmulq_n_f32(*&a14[v94], a13), _Q0);
        v94 += 4;
      }

      while (v94 != 64);
    }
  }

  v98 = 0.15;
  if (a6 != 320)
  {
    v98 = 0.125;
  }

  v99 = __src + 4;
  if (__src + 4 > v33 || v99 < __src || __src + 8 > v33 || v99 > __src + 8)
  {
    goto LABEL_179;
  }

  v100 = 0;
  v101 = -((a9 + 1.0) * v98);
  *a14 = *a14 + (*__src + (v101 * *(__src + 1)));
  do
  {
    v102 = &__src[v100 * 4];
    v103 = &__src[v100 * 4 + 4];
    v104 = &__src[v100 * 4 + 8];
    v105 = v103 < __src || v102 > v103;
    v106 = v102 + 3;
    if (v105 || v106 > v33 || v104 > v106)
    {
      goto LABEL_179;
    }

    a14[v100 + 1] = a14[v100 + 1] + ((*v103 + (v101 * *v102)) + (v101 * *v104));
    ++v100;
  }

  while (v100 != 62);
  if (__src + 252 > v33 || __src + 252 < __src)
  {
    goto LABEL_179;
  }

  a14[63] = a14[63] + (*(__src + 63) + (v101 * *(__src + 62)));
  if (a4)
  {
    v109 = a2 == 6600 || a2 == 8850;
    if (v109 && a13 > 0.5)
    {
      for (i = 0; i != 64; i += 4)
      {
        *(&v129 + i * 4) = vaddq_f32(*&a14[i], *(&v129 + i * 4));
      }

      v111 = 0;
      v112 = 0.0;
      do
      {
        v113 = vmulq_f32(*(&v129 + v111), *(&v129 + v111));
        v112 = (((v112 + v113.f32[0]) + v113.f32[1]) + v113.f32[2]) + v113.f32[3];
        v111 += 16;
      }

      while (v111 != 256);
      if (v112 != 0.0)
      {
        v114 = 0;
        v115 = 0.0;
        do
        {
          v116 = vmulq_f32(*&a14[v114], *&a14[v114]);
          v115 = (((v115 + v116.f32[0]) + v116.f32[1]) + v116.f32[2]) + v116.f32[3];
          v114 += 4;
        }

        while (v114 != 64);
        v117 = 0.0;
        if (v115 != 0.0)
        {
          v117 = sqrtf(v115 / v112);
        }

        for (j = 0; j != 256; j += 16)
        {
          *(&v129 + j) = vmulq_n_f32(*(&v129 + j), v117);
        }
      }

      v119 = v142;
      *(a14 + 12) = v141;
      *(a14 + 13) = v119;
      v120 = v144;
      *(a14 + 14) = v143;
      *(a14 + 15) = v120;
      v121 = v138;
      *(a14 + 8) = v137;
      *(a14 + 9) = v121;
      v122 = v140;
      *(a14 + 10) = v139;
      *(a14 + 11) = v122;
      v123 = v134;
      *(a14 + 4) = v133;
      *(a14 + 5) = v123;
      v124 = v136;
      *(a14 + 6) = v135;
      *(a14 + 7) = v124;
      v125 = v130;
      *a14 = v129;
      *(a14 + 1) = v125;
      v126 = v132;
      v93 = (a14 + 64);
      *(a14 + 2) = v131;
      *(a14 + 3) = v126;
LABEL_170:
      if (v93 >= a14)
      {
        return result;
      }

LABEL_179:
      __break(0x5519u);
    }
  }

  return result;
}

float *fft_rel(unint64_t a1, int a2, int a3)
{
  *v159 = *MEMORY[0x1E69E9840];
  v5 = __b;
  result = memset(__b, 255, sizeof(__b));
  if (a2 == 512)
  {
    v39 = 0;
    v40 = a1 + 2048;
    v41 = &word_19B38156E;
    do
    {
      if (v41 > sincos_t_ext || v41 + 1 > sincos_t_ext)
      {
        goto LABEL_218;
      }

      v42 = 2 * *(v41 - 1);
      v43 = 2 * *v41;
      v44 = (a1 + 4 * v42);
      v45 = v44 + 1;
      v46 = v44 < a1 || v45 > v40;
      v47 = v46 || v44 > v45;
      v48 = (a1 + 4 * v43);
      v49 = v48 + 1;
      v50 = !v47 && v48 >= a1;
      v51 = !v50 || v49 > v40;
      v52 = v51 || v48 > v49;
      v53 = v5 + 1;
      if (v52 || v53 > v159)
      {
        goto LABEL_218;
      }

      v55 = *v44;
      v56 = *v48;
      *v5 = *v44 + *v48;
      if (v5 + 2 > v159)
      {
        goto LABEL_218;
      }

      *v53 = v55 - v56;
      v57 = a1 + 4 * v42;
      v58 = (v57 + 4);
      if (v57 + 4 < a1)
      {
        goto LABEL_218;
      }

      v59 = v57 + 8;
      if (v59 > v40)
      {
        goto LABEL_218;
      }

      if (v58 > v59)
      {
        goto LABEL_218;
      }

      v60 = a1 + 4 * v43;
      v61 = (v60 + 4);
      if (v60 + 4 < a1)
      {
        goto LABEL_218;
      }

      v62 = v60 + 8;
      if (v62 > v40)
      {
        goto LABEL_218;
      }

      if (v61 > v62)
      {
        goto LABEL_218;
      }

      if (v5 + 257 > v159)
      {
        goto LABEL_218;
      }

      v63 = *v58;
      v64 = *v61;
      v5[256] = *v58 + *v61;
      if (v5 + 258 > v159)
      {
        goto LABEL_218;
      }

      v5[257] = v63 - v64;
      v41 += 2;
      v5 += 2;
      v50 = v39++ >= 0x7F;
    }

    while (!v50);
LABEL_89:
    v65 = 0;
    v66 = a1 + 4 * a2;
    v67 = 0x40000;
    while (1)
    {
      v68 = &__b[v65];
      result = &__b[v65 + 2];
      v69 = (a1 + v65 * 4);
      v70 = &__b[v65 + 1];
      v71 = &__b[v65] < __b || v70 > v159;
      v72 = v71 || v68 > v70;
      v73 = v68 + 3;
      v74 = !v72 && result >= __b;
      v75 = !v74 || v73 > v159;
      v76 = v75 || result > v73;
      v77 = v69 + 1;
      v78 = !v76 && v69 >= a1;
      v79 = !v78 || v77 > v66;
      if (v79 || v69 > v77)
      {
        break;
      }

      v82 = *v68;
      v81 = v68 + 2;
      v83 = v82;
      v84 = *result;
      *v69 = v82 + *result;
      if (v81 > v159)
      {
        break;
      }

      if (v70 > v81)
      {
        break;
      }

      v85 = (a1 + v65 * 4 + 8);
      if (v85 > v66)
      {
        break;
      }

      if (v77 > v85)
      {
        break;
      }

      *v77 = *v70;
      v86 = (a1 + v65 * 4 + 12);
      if (v86 > v66)
      {
        break;
      }

      if (v85 > v86)
      {
        break;
      }

      *v85 = v83 - v84;
      v87 = &__b[v65 + 4];
      if (v87 > v159)
      {
        break;
      }

      if (v73 > v87)
      {
        break;
      }

      v88 = a1 + v65 * 4 + 16;
      if (v88 > v66 || v86 > v88)
      {
        break;
      }

      *v86 = -*v73;
      v11 = a2 <= v67 >> 16;
      v67 += 0x40000;
      v65 += 4;
      if (v11)
      {
        goto LABEL_181;
      }
    }

LABEL_218:
    __break(0x5519u);
  }

  if (a2 == 256)
  {
    v23 = 0;
    v24 = a1 + 1024;
    v25 = &__b[1];
    v26 = &word_19B38156E;
    while (v26 <= sincos_t_ext && v26 + 1 <= sincos_t_ext)
    {
      v28 = (a1 + 4 * *(v26 - 1));
      v29 = v28 + 1;
      v30 = v28 < a1 || v29 > v24;
      if (v30 || v28 > v29)
      {
        break;
      }

      v32 = (a1 + 4 * *v26);
      v33 = v32 + 1;
      v34 = v32 < a1 || v33 > v24;
      v35 = v34 || v32 > v33;
      if (v35 || v25 > v159)
      {
        break;
      }

      v37 = *v28;
      v38 = *v32;
      *(v25 - 1) = *v28 + *v32;
      if (v25 + 1 > v159)
      {
        break;
      }

      *v25 = v37 - v38;
      v25 += 2;
      v26 += 2;
      v50 = v23++ >= 0x7F;
      if (v50)
      {
        goto LABEL_89;
      }
    }

    goto LABEL_218;
  }

  if (a2 == 128)
  {
    v7 = 0;
    v8 = a1 + 512;
    v9 = &__b[1];
    v10 = &word_19B38156E;
    while (1)
    {
      v11 = v10 > sincos_t_ext || v10 + 1 > sincos_t_ext;
      if (v11)
      {
        goto LABEL_218;
      }

      v12 = (a1 + 4 * (*(v10 - 1) >> 1));
      v13 = v12 + 1;
      v14 = v12 < a1 || v13 > v8;
      if (v14 || v12 > v13)
      {
        goto LABEL_218;
      }

      v16 = (a1 + 4 * (*v10 >> 1));
      v17 = v16 + 1;
      v18 = v16 < a1 || v17 > v8;
      v19 = v18 || v16 > v17;
      if (v19 || v9 > v159)
      {
        goto LABEL_218;
      }

      v21 = *v12;
      v22 = *v16;
      *(v9 - 1) = *v12 + *v16;
      if (v9 + 1 > v159)
      {
        goto LABEL_218;
      }

      *v9 = v21 - v22;
      v9 += 2;
      v10 += 2;
      v50 = v7++ >= 0x3F;
      if (v50)
      {
        goto LABEL_89;
      }
    }
  }

  v89 = a1 + 4 * a2;
  if (a2 > 1)
  {
    v90 = 0;
    v91 = 0;
    v92 = a2 >> 1;
    v93 = a1;
    do
    {
      if (v90 < v91)
      {
        v94 = (a1 + 4 * v91);
        if (v94 < a1 || (v94 + 1) > v89 || v94 > v94 + 1 || v93 < a1 || (v93 + 1) > v89 || v93 > v93 + 1)
        {
          goto LABEL_218;
        }

        v95 = *v94;
        *v94 = *v93;
        *v93 = v95;
      }

      v96 = a2 >> 1;
      if (v92 <= v91)
      {
        do
        {
          v91 -= v96;
          v96 >>= 1;
        }

        while (v96 <= v91);
      }

      ++v93;
      v91 += v96;
      ++v90;
    }

    while (a2 - 1 > v90);
    v97 = 0;
    v98 = (a1 + 4);
    do
    {
      v99 = (v98 - 1) < a1 || v98 > v89;
      v100 = v99 || v98 - 1 > v98;
      v101 = v98 + 1;
      v102 = !v100 && v98 >= a1;
      v103 = !v102 || v101 > v89;
      if (v103 || v98 > v101)
      {
        goto LABEL_218;
      }

      v105 = *(v98 - 1);
      v106 = v105 - *v98;
      *(v98 - 1) = -(v106 - (v105 * 2.0));
      *v98 = v106;
      v98 += 2;
    }

    while (v92 > ++v97);
  }

  if (a2 >= 1)
  {
    v107 = (a1 + 8);
    v108 = 0x40000;
    do
    {
      v109 = (v107 - 1);
      v110 = (v107 - 2) < a1 || v109 > v89;
      v111 = v110 || (v107 - 2) > v109;
      v112 = (v107 + 1);
      v113 = !v111 && v107 >= a1;
      v114 = !v113 || v112 > v89;
      if (v114 || v107 > v112)
      {
        goto LABEL_218;
      }

      v116 = *(v107 - 2);
      v117 = v116 - *v107;
      *v107 = v117;
      *(v107 - 2) = -(v117 - (v116 * 2.0));
      if ((v107 + 2) > v89 || v112 > (v107 + 2))
      {
        goto LABEL_218;
      }

      v107[1] = -v107[1];
      v107 += 4;
      v11 = a2 <= v108 >> 16;
      v108 += 0x40000;
    }

    while (!v11);
  }

LABEL_181:
  if (a3 >= 3)
  {
    v118 = a1 + 4 * a2;
    v157 = 256;
    v155 = 2;
    v156 = 1;
    v119 = 4;
    LOWORD(v120) = 3;
    while (1)
    {
      v154 = v120;
      v157 >>= 1;
      if (a2 >= 1)
      {
        break;
      }

LABEL_216:
      v155 = 2 * v155;
      v156 *= 2;
      v119 = 2 * v119;
      v120 = (v154 + 1);
      if (v120 > a3)
      {
        return result;
      }
    }

    v121 = 0;
    LOWORD(v122) = 0;
    v123 = (v155 << 17) >> 16;
    result = (2 * v156);
    v124 = (a1 + 4 * v123);
    v125 = 4 * v123;
    v126 = &v124[(2 * v156)];
    v127 = (v119 << 17) >> 16;
    v128 = 4 * (2 * v119);
    v129 = v128;
    v130 = a1;
    while (1)
    {
      if (v130 < a1)
      {
        goto LABEL_218;
      }

      if ((v130 + 1) > v118)
      {
        goto LABEL_218;
      }

      if (v130 > v130 + 1)
      {
        goto LABEL_218;
      }

      if (v124 < a1)
      {
        goto LABEL_218;
      }

      if ((v124 + 1) > v118)
      {
        goto LABEL_218;
      }

      if (v124 > v124 + 1)
      {
        goto LABEL_218;
      }

      v131 = *v130 - *v124;
      *v124 = v131;
      *v130 = -(v131 - (*v130 * 2.0));
      if (v126 < a1 || (v126 + 1) > v118 || v126 > v126 + 1)
      {
        goto LABEL_218;
      }

      *v126 = -*v126;
      if (result >= 2)
      {
        break;
      }

LABEL_215:
      v130 += v127;
      v124 += v127;
      v122 = (v122 + 2 * v119);
      v125 += v128;
      v129 += v128;
      v121 += v128;
      v126 += v127;
      if (v122 >= a2)
      {
        goto LABEL_216;
      }
    }

    v132 = 1;
    v133 = &sincos_t_ext[v157];
    v134 = v121;
    v135 = v129;
    v136 = v125;
    v137 = v125;
    while (1)
    {
      v138 = (a1 + v136 + 4);
      if (v138 < a1)
      {
        goto LABEL_218;
      }

      v139 = a1 + v136 + 8;
      if (v139 > v118)
      {
        goto LABEL_218;
      }

      if (v138 > v139)
      {
        goto LABEL_218;
      }

      v140 = v133 + 256;
      if (v133 + 256 < sincos_t_ext)
      {
        goto LABEL_218;
      }

      if (v133 + 257 > stab_trans_fx)
      {
        goto LABEL_218;
      }

      if (v140 > v133 + 257)
      {
        goto LABEL_218;
      }

      v141 = a1 + v135;
      v142 = (a1 + v135 - 4);
      if (v142 < a1)
      {
        goto LABEL_218;
      }

      if (v141 > v118)
      {
        goto LABEL_218;
      }

      if (v142 > v141)
      {
        goto LABEL_218;
      }

      if (v133 < sincos_t_ext)
      {
        goto LABEL_218;
      }

      if (v133 + 1 > stab_trans_fx)
      {
        goto LABEL_218;
      }

      if (v133 > v133 + 1)
      {
        goto LABEL_218;
      }

      v143 = a1 + v137;
      v144 = (a1 + v137 - 4);
      if (v144 < a1)
      {
        goto LABEL_218;
      }

      if (v143 > v118)
      {
        goto LABEL_218;
      }

      if (v144 > v143)
      {
        goto LABEL_218;
      }

      v145 = (a1 + v134 + 4);
      v146 = *v138;
      v147 = *v140;
      v148 = *v142;
      v149 = *v133;
      v150 = (*v138 * *v133) - (*v142 * *v140);
      *v142 = *v144 - v150;
      if (v145 < a1)
      {
        goto LABEL_218;
      }

      v151 = a1 + v134 + 8;
      if (v151 > v118 || v145 > v151)
      {
        goto LABEL_218;
      }

      v152 = *v145 - ((v148 * v149) + (v146 * v147));
      *v144 = v152;
      *v145 = -(v152 - (*v145 * 2.0));
      *v138 = -(*v142 - (v150 * -2.0));
      ++v132;
      v137 -= 4;
      v136 += 4;
      v135 -= 4;
      v134 += 4;
      v133 += v157;
      if (result <= v132)
      {
        goto LABEL_215;
      }
    }
  }

  return result;
}

unint64_t ifft_rel(unint64_t a1, int a2, int a3)
{
  v179 = *MEMORY[0x1E69E9840];
  result = memset(__b, 255, sizeof(__b));
  v6 = a1 + 4 * a2;
  v162 = a1 - 4;
  v7 = 2 * a2;
  v176 = a2 - 1;
  v159 = &v177;
  LOWORD(v8) = 1;
  do
  {
    v161 = v8;
    v177 = v7 >> 1;
    v9 = v7 >> 3;
    v10 = v7 >> 4;
    if (a2 >= 2)
    {
      LOWORD(v11) = 0;
      v12 = 4 * v10;
      v13 = v9;
      v14 = v13 * 4 + v12;
      v15 = 2 * v9;
      v16 = v15 * 4 + v12;
      v17 = 3 * v9;
      LODWORD(result) = v7;
      v18 = v17 * 4 + v12;
      while (a2 <= v11)
      {
LABEL_33:
        LOWORD(v11) = 2 * result - v177;
        result = (4 * result);
        if (v176 <= v11)
        {
          goto LABEL_34;
        }
      }

      v19 = (a1 + 4 * v11);
      while (v19 >= a1)
      {
        if ((v19 + 1) > v6)
        {
          break;
        }

        if (v19 > v19 + 1)
        {
          break;
        }

        v20 = &v19[v15];
        if (&v19[v15] < a1)
        {
          break;
        }

        v21 = &v19[v15 + 1];
        if (v21 > v6)
        {
          break;
        }

        if (v20 > v21)
        {
          break;
        }

        v22 = &v19[v13];
        v23 = *v19;
        v24 = *v20;
        *v19 = *v19 + *v20;
        if (&v19[v13] < a1)
        {
          break;
        }

        v25 = &v19[v13 + 1];
        if (v25 > v6)
        {
          break;
        }

        if (v22 > v25)
        {
          break;
        }

        v26 = &v19[v17];
        *v22 = *v22 + *v22;
        if (&v19[v17] < a1)
        {
          break;
        }

        v27 = &v19[v17 + 1];
        if (v27 > v6 || v26 > v27)
        {
          break;
        }

        v28 = v23 - v24;
        *v20 = v28 + (*v26 * -2.0);
        *v26 = v28 + (*v26 * 2.0);
        if (v9 != 1)
        {
          v29 = (v19 + v14);
          if (v19 + v14 < a1)
          {
            break;
          }

          if ((v29 + 1) > v6)
          {
            break;
          }

          if (v29 > v29 + 1)
          {
            break;
          }

          v30 = &v19[v12 / 4];
          if (&v19[v12 / 4] < a1)
          {
            break;
          }

          if ((v30 + 1) > v6)
          {
            break;
          }

          if (v30 > v30 + 1)
          {
            break;
          }

          v31 = (v19 + v18);
          if (v19 + v18 < a1)
          {
            break;
          }

          if ((v31 + 1) > v6)
          {
            break;
          }

          if (v31 > v31 + 1)
          {
            break;
          }

          v32 = (v19 + v16);
          if (v19 + v16 < a1 || (v32 + 1) > v6 || v32 > v32 + 1)
          {
            break;
          }

          v33 = (*v29 - *v30) * 0.70711;
          v34 = *v31 + *v32;
          *v30 = *v29 + *v30;
          *v29 = *v31 - *v32;
          *v32 = ((v34 * -0.70711) - v33) + ((v34 * -0.70711) - v33);
          *v31 = (v33 + (v34 * -0.70711)) + (v33 + (v34 * -0.70711));
        }

        v11 = (v11 + result);
        v19 += result;
        if (v11 >= a2)
        {
          goto LABEL_33;
        }
      }

LABEL_192:
      __break(0x5519u);
    }

LABEL_34:
    if (v10 >= 2)
    {
      v165 = 1024 / v177;
      v175 = a1 + 4 * v9;
      v35 = 2 * v9;
      v174 = v162 + 8 * v9;
      v168 = &sincos_t_ext[3 * v165];
      v169 = v168 + 256;
      v170 = &sincos_t_ext[v165];
      v36 = v170 + 256;
      v163 = v7 & 0xFFFE;
      v164 = (v10 + 1);
      v173 = a1 + 8 * v9 - 4 * v9;
      v172 = a1 + 4 + 8 * v9;
      v171 = a1 + 4 * v9 + 8 * v9;
      result = v162 + 16 * v9;
      v37 = a1 + 16 * v9 - 4 * v9;
      v38 = a1 + 16 * v9;
      v39 = a1 + 4 * v35;
      v40 = v39;
      v41 = a1 + 4;
      v42 = 2;
      while (1)
      {
        v166 = v42;
        v167 = v36;
        v43 = v36 + 1;
        v45 = v36 < sincos_t_ext || v43 > stab_trans_fx || v36 > v43;
        if (v45 || v170 < sincos_t_ext || v170 + 1 > stab_trans_fx || v170 > v170 + 1 || v169 < sincos_t_ext || v169 + 1 > stab_trans_fx || v169 > v169 + 1 || v168 < sincos_t_ext || v168 + 1 > stab_trans_fx || v168 > v168 + 1)
        {
          goto LABEL_192;
        }

        if (a2 >= 2)
        {
          break;
        }

LABEL_82:
        v36 = &v167[v165];
        v170 += v165;
        v169 += 3 * v165;
        v42 = v166 + 1;
        v41 += 4;
        v175 += 4;
        v174 -= 4;
        v173 -= 4;
        v40 -= 4;
        v172 += 4;
        v168 += 3 * v165;
        v171 += 4;
        v39 += 4;
        result -= 4;
        v37 -= 4;
        v38 -= 4;
        if (v166 + 1 == v164)
        {
          goto LABEL_83;
        }
      }

      LOWORD(v46) = 0;
      v47 = *v36;
      v48 = *v170;
      v49 = *v169;
      v50 = v163;
      v51 = *v168;
      while (a2 <= v46)
      {
LABEL_81:
        LOWORD(v46) = 2 * v50 - v177;
        v50 *= 4;
        if (v176 <= v46)
        {
          goto LABEL_82;
        }
      }

      v52 = 0;
      v53 = v40 + 4 * v46;
      v54 = v37;
      v55 = 4 * v46;
      v56 = result;
      v57 = 4 * v50;
      v59 = v171;
      v58 = v172;
      v61 = v173;
      v60 = v174;
      v62 = v175;
      v63 = v41;
      v64 = v39 + v55;
      v65 = v38 + v55;
      while (1)
      {
        v66 = (v63 + v55);
        if (v63 + v55 < a1)
        {
          goto LABEL_192;
        }

        if ((v66 + 1) > v6)
        {
          goto LABEL_192;
        }

        if (v66 > v66 + 1)
        {
          goto LABEL_192;
        }

        v67 = v53 + v52 - 4;
        if (v67 < a1)
        {
          goto LABEL_192;
        }

        if (v53 + v52 > v6)
        {
          goto LABEL_192;
        }

        if (v67 > v53 + v52)
        {
          goto LABEL_192;
        }

        v68 = *(v60 + v55);
        v69 = *v66;
        *v66 = *v66 + v68;
        v70 = v61 + v55;
        v71 = (v61 + v55 - 4);
        if (v71 < a1)
        {
          goto LABEL_192;
        }

        if (v70 > v6)
        {
          goto LABEL_192;
        }

        if (v71 > v70)
        {
          goto LABEL_192;
        }

        v72 = (v62 + v55 + 4);
        if (v72 < a1)
        {
          goto LABEL_192;
        }

        v73 = v62 + v55 + 8;
        if (v73 > v6)
        {
          goto LABEL_192;
        }

        if (v72 > v73)
        {
          goto LABEL_192;
        }

        v74 = v65 + v52 - 4;
        v75 = *v71;
        v76 = *v72;
        *v71 = *v71 + *v72;
        if (v74 < a1)
        {
          goto LABEL_192;
        }

        if (v65 + v52 > v6)
        {
          goto LABEL_192;
        }

        if (v74 > v65 + v52)
        {
          goto LABEL_192;
        }

        v77 = v64 + v52 + 4;
        if (v77 < a1)
        {
          goto LABEL_192;
        }

        v78 = v64 + v52 + 8;
        if (v78 > v6)
        {
          goto LABEL_192;
        }

        if (v77 > v78)
        {
          goto LABEL_192;
        }

        v79 = *(v56 + v55);
        v80 = *(v58 + v55);
        *(v60 + v55) = v79 - v80;
        v81 = (v59 + v55 + 4);
        if (v81 < a1)
        {
          goto LABEL_192;
        }

        v82 = v59 + v55 + 8;
        if (v82 > v6)
        {
          goto LABEL_192;
        }

        if (v81 > v82)
        {
          goto LABEL_192;
        }

        v83 = (v54 + v55 - 4);
        if (v83 < a1 || v54 + v55 > v6 || v83 > v54 + v55)
        {
          goto LABEL_192;
        }

        v84 = v69 - v68;
        v85 = v75 - v76;
        v86 = v79 + v80;
        v87 = *v81 + *v83;
        *v72 = *v81 - *v83;
        v88 = v84 - v87;
        v89 = v84 + v87;
        v90 = v85 - v86;
        v91 = v85 + v86;
        *v81 = (v89 * v49) - (v91 * v51);
        *(v58 + v55) = (v48 * v90) + (v88 * v47);
        *v83 = (v48 * v88) - (v90 * v47);
        *(v56 + v55) = (v51 * v89) + (v91 * v49);
        v46 = (v46 + v50);
        v63 += v57;
        v62 += v57;
        v60 += v57;
        v61 += v57;
        v52 += v57;
        v58 += v57;
        v59 += v57;
        v56 += v57;
        v54 += v57;
        if (v46 >= a2)
        {
          goto LABEL_81;
        }
      }
    }

LABEL_83:
    v8 = (v161 + 1);
    v7 = v177;
  }

  while (v8 < a3);
  if (a2 >= 2)
  {
    v92 = 4;
    LOWORD(v93) = 1;
    do
    {
      v94 = (a1 + 4 * v93);
      do
      {
        v96 = (v94 - 1) < a1 || v94 > v6 || v94 - 1 > v94;
        v97 = v94 + 1;
        if (v96 || v94 < a1 || v97 > v6 || v94 > v97)
        {
          goto LABEL_192;
        }

        v101 = *(v94 - 1);
        v102 = v101 + *v94;
        v103 = v101 - *v94;
        *(v94 - 1) = v102;
        *v94 = v103;
        v93 = (v93 + v92);
        v94 += v92;
      }

      while (v93 <= a2);
      v93 = (2 * v92 - 1);
      v92 *= 4;
    }

    while (v93 < a2);
  }

  v104 = &v179;
  switch(a2)
  {
    case 128:
      v126 = 0;
      v127 = &word_19B38156E;
      while (v127 <= sincos_t_ext)
      {
        v128 = v162 + 4 * (*(v127 - 1) >> 1);
        v129 = (v128 + 4);
        v130 = v128 + 8;
        v131 = v129 < a1 || v130 > v6;
        if (v131 || v129 > v130)
        {
          break;
        }

        v133 = *v129;
        v118 = __b;
        *&__b[v126] = v133;
        v126 += 4;
        ++v127;
        if (v126 == 512)
        {
          goto LABEL_172;
        }
      }

      goto LABEL_192;
    case 256:
      v119 = 0;
      v120 = &word_19B38156E;
      while (v120 <= sincos_t_ext)
      {
        v121 = (a1 + 4 * *(v120 - 1));
        v122 = v121 + 1;
        v123 = v121 < a1 || v122 > v6;
        if (v123 || v121 > v122)
        {
          break;
        }

        v125 = *v121;
        v118 = __b;
        *&__b[v119] = v125;
        v119 += 4;
        ++v120;
        if (v119 == 1024)
        {
          goto LABEL_172;
        }
      }

      goto LABEL_192;
    case 512:
      v105 = 0;
      v106 = &word_19B38156E;
      while (v106 <= sincos_t_ext)
      {
        v107 = *(v106 - 1);
        v108 = v162 + 8 * *(v106 - 1);
        v109 = (v108 + 4);
        v110 = v108 + 8;
        v111 = v109 < a1 || v110 > v6;
        if (v111 || v109 > v110)
        {
          break;
        }

        *&__b[v105] = *v109;
        v113 = v162 + 8 * v107;
        v114 = (v113 + 8);
        v115 = v113 + 12;
        v116 = v114 < a1 || v115 > v6;
        if (v116 || v114 > v115)
        {
          break;
        }

        v118 = __b;
        *&__b[v105 + 1024] = *v114;
        v105 += 4;
        ++v106;
        if (v105 == 1024)
        {
          goto LABEL_172;
        }
      }

      goto LABEL_192;
  }

  if (a2 > 1)
  {
    v134 = 1;
    v135 = 1;
    do
    {
      if (v134 < v135)
      {
        v136 = (v162 + 4 * v135);
        v137 = v136 + 1;
        v139 = v136 < a1 || v137 > v6 || v136 > v137;
        v140 = (v162 + 4 * v134);
        v141 = v140 + 1;
        if (v139 || v140 < a1 || v141 > v6 || v140 > v141)
        {
          goto LABEL_192;
        }

        v145 = *v136;
        *v136 = *v140;
        *v140 = v145;
      }

      LOWORD(v146) = a2;
      do
      {
        v147 = v135;
        v146 = v146 >> 1;
        v135 -= v146;
      }

      while (v146 < v147);
      v135 = v147 + v146;
      ++v134;
    }

    while (v134 != a2);
  }

  v159 = (a1 - 4);
  v118 = a1;
  v104 = (a1 + 4 * a2);
LABEL_172:
  if (a2 >= 1)
  {
    LOWORD(v148) = 1;
    while (1)
    {
      v149 = v148;
      v150 = &v159[v148];
      v151 = v150 + 1;
      v152 = v150 < v118 || v151 > v104;
      v153 = v152 || v150 > v151;
      v154 = (v162 + 4 * v149);
      v155 = v154 + 1;
      v156 = !v153 && v154 >= a1;
      v157 = !v156 || v155 > v6;
      if (v157 || v154 > v155)
      {
        break;
      }

      *v154 = (1.0 / a2) * *v150;
      v148 = (v149 + 1);
      if (v148 > a2)
      {
        return result;
      }
    }

    goto LABEL_192;
  }

  return result;
}

float *cb_shape(float *result, int a2, int a3, unsigned __int16 a4, unsigned __int16 a5, float *a6, unint64_t a7, float a8, float a9, float a10, float a11)
{
  v76[1] = *MEMORY[0x1E69E9840];
  *&v21 = -1;
  *(&v21 + 1) = -1;
  v74 = v21;
  v75 = v21;
  v72 = v21;
  v73 = v21;
  v70 = v21;
  v71 = v21;
  v68 = v21;
  v69 = v21;
  v66 = v21;
  v67 = v21;
  v64 = v21;
  v65 = v21;
  v62 = v21;
  v63 = v21;
  v60 = v21;
  v61 = v21;
  __C[2] = v21;
  __C[3] = v21;
  __C[0] = v21;
  __C[1] = v21;
  v57 = -1;
  v56 = v21;
  v54 = v21;
  v55 = v21;
  v53 = v21;
  v51 = -1;
  v50[2] = v21;
  v50[3] = v21;
  v50[0] = v21;
  v50[1] = v21;
  if (result)
  {
    v48 = 0;
    result = preemph(a7, 64, &v48, a10);
  }

  if (a2)
  {
    v22 = (a11 + 0.4);
    if (v22 <= 63)
    {
      v23 = a7 + 256;
      v24 = v22 - 64;
      v25 = (a7 + 4 * v22);
      v26 = a7;
      while (v26 >= a7 && (v26 + 1) <= v23 && v26 <= v26 + 1 && v25 >= a7 && (v25 + 1) <= v23 && v25 <= v25 + 1)
      {
        v27 = *v26++;
        *v25 = *v25 + (v27 * 0.85);
        ++v25;
        v36 = __CFADD__(v24++, 1);
        if (v36)
        {
          goto LABEL_14;
        }
      }

LABEL_38:
      __break(0x5519u);
    }
  }

LABEL_14:
  if (a3)
  {
    v28 = 0;
    v29 = *a7;
    LODWORD(__C[0]) = *a7;
    do
    {
      v30 = a7 + v28;
      v31 = *(a7 + v28 + 4);
      *(__C + v28 + 4) = v31;
      v32 = __C + v28 + 4;
      v33 = (__C + v28) < __C || v32 > v76;
      v34 = v33 || __C + v28 > v32;
      v35 = v30 + 4;
      v36 = !v34 && v30 >= a7;
      v37 = !v36 || v35 > a7 + 256;
      if (v37 || v30 >= v35)
      {
        goto LABEL_38;
      }

      v29 = (*(__C + v28) + (v31 * 0.7)) + (v29 * -0.7);
      *(v30 + 4) = v29;
      v28 += 4;
    }

    while (v28 != 252);
  }

  if (a5 | a4)
  {
    weight_a(a6, (a6 + 17), &v53, &v58, 16, a8);
    weight_a(a6, (a6 + 17), v50, &v52, 16, a9);
    __A = 0.0;
    vDSP_vfill(&__A, __C, 1, 0x50uLL);
    if (a5)
    {
      v62 = v55;
      v63 = v56;
      LODWORD(v64) = v57;
      v60 = v53;
      v61 = v54;
      syn_filt(v50);
      get_gain(&v60 + 4, &v60, 63, 0);
      v48 = 0;
      return preemph(a7, 64, &v48, (v39 * -0.25) + (a10 * 0.5));
    }

    else
    {
      v40 = *(a7 + 208);
      v72 = *(a7 + 192);
      v73 = v40;
      v41 = *(a7 + 240);
      v74 = *(a7 + 224);
      v75 = v41;
      v42 = *(a7 + 144);
      v68 = *(a7 + 128);
      v69 = v42;
      v43 = *(a7 + 176);
      v70 = *(a7 + 160);
      v71 = v43;
      v44 = *(a7 + 80);
      v64 = *(a7 + 64);
      v65 = v44;
      v45 = *(a7 + 112);
      v66 = *(a7 + 96);
      v67 = v45;
      v46 = *(a7 + 16);
      v60 = *a7;
      v61 = v46;
      v47 = *(a7 + 48);
      v62 = *(a7 + 32);
      v63 = v47;
      vDSP_conv(__C, 1, &v57, -1, a7, 1, 0x40uLL, 0x11uLL);
      return syn_filt(v50);
    }
  }

  return result;
}

unint64_t E_ACELP_toeplitz_mul(unint64_t result, unint64_t a2, float *a3, unint64_t a4, unint64_t a5, unint64_t a6)
{
  v6 = 0;
  v8 = (a3 + 1) > a4 || a3 + 1 < a3;
LABEL_7:
  if (v6 <= 1)
  {
    v9 = 1;
  }

  else
  {
    v9 = v6;
  }

  v10 = (result + 4 * v6);
  v13 = (v10 + 1) > a2 || v10 >= v10 + 1 || v10 < result || v8;
  if (v13 != 1)
  {
    v14 = v6;
    v15 = *v10 * *a3;
    if (v6 < 2)
    {
LABEL_39:
      v28 = 64 - v9;
      v29 = &a3[v9];
      v30 = v9 - v14;
      while (1)
      {
        v31 = (result + 4 * v30);
        v32 = v31 + 1;
        v33 = v31 < result || v32 > a2;
        v34 = v33 || v31 >= v32;
        v35 = v29 + 1;
        v36 = !v34 && v29 >= a3;
        v37 = !v36 || v35 > a4;
        if (v37 || v29 >= v35)
        {
          break;
        }

        v39 = *v29++;
        v15 = v15 + (*v31 * v39);
        ++v30;
        if (!--v28)
        {
          v40 = (a5 + 4 * v14);
          if (v40 < a5 || (v40 + 1) > a6 || v40 > v40 + 1)
          {
            break;
          }

          *v40 = v15;
          v6 = (v14 + 1);
          if (v14 < 0x3F)
          {
            goto LABEL_7;
          }

          return result;
        }
      }
    }

    else
    {
      v16 = v6 - 1;
      v17 = v14 - 1;
      v18 = a3 + 1;
      while (1)
      {
        v19 = (result + 4 * v17);
        v20 = v19 + 1;
        v21 = v19 < result || v20 > a2;
        v22 = v21 || v19 >= v20;
        v23 = v18 + 1;
        v24 = !v22 && v18 >= a3;
        v25 = !v24 || v23 > a4;
        if (v25 || v18 >= v23)
        {
          break;
        }

        v27 = *v18++;
        v15 = v15 + (*v19 * v27);
        --v17;
        if (!--v16)
        {
          goto LABEL_39;
        }
      }
    }
  }

  __break(0x5519u);
  return result;
}

void E_ACELP_4tsearchx(float *a1, unint64_t a2, float *a3, unint64_t a4, int *a5, unint64_t a6, float *a7, unint64_t a8, unsigned int *a9, _WORD *a10, unint64_t a11)
{
  v403[1] = *MEMORY[0x1E69E9840];
  *&v17 = -1;
  *(&v17 + 1) = -1;
  v402[15] = v17;
  v402[14] = v17;
  v402[13] = v17;
  v402[12] = v17;
  v402[11] = v17;
  v402[10] = v17;
  v402[9] = v17;
  v402[8] = v17;
  v402[7] = v17;
  v402[6] = v17;
  v402[5] = v17;
  v402[4] = v17;
  v402[3] = v17;
  v402[2] = v17;
  v402[1] = v17;
  v402[0] = v17;
  v401[15] = v17;
  v401[14] = v17;
  v401[13] = v17;
  v401[12] = v17;
  v401[11] = v17;
  v401[10] = v17;
  v401[9] = v17;
  v401[8] = v17;
  v401[7] = v17;
  v401[6] = v17;
  v401[5] = v17;
  v401[4] = v17;
  v401[3] = v17;
  v401[2] = v17;
  v401[1] = v17;
  v401[0] = v17;
  v400 = v17;
  v399 = v17;
  v398 = v17;
  v397 = v17;
  v395 = v17;
  v396 = v17;
  v393 = v17;
  v394 = v17;
  v391 = v17;
  v392 = v17;
  v389 = v17;
  v390 = v17;
  v387 = v17;
  v388 = v17;
  __C = v17;
  v386 = v17;
  *&v383[12] = v17;
  v382[13] = v17;
  *v383 = v17;
  v382[11] = v17;
  v382[12] = v17;
  v382[9] = v17;
  v382[10] = v17;
  v382[7] = v17;
  v382[8] = v17;
  v382[5] = v17;
  v382[6] = v17;
  v382[3] = v17;
  v382[4] = v17;
  v382[1] = v17;
  v382[2] = v17;
  v381 = v17;
  v382[0] = v17;
  v380[13] = v17;
  v380[14] = v17;
  v380[11] = v17;
  v380[12] = v17;
  v380[9] = v17;
  v380[10] = v17;
  v380[7] = v17;
  v380[8] = v17;
  v380[5] = v17;
  v380[6] = v17;
  v380[3] = v17;
  v380[4] = v17;
  v380[1] = v17;
  v380[2] = v17;
  v379[15] = v17;
  v380[0] = v17;
  v379[13] = v17;
  v379[14] = v17;
  v379[11] = v17;
  v379[12] = v17;
  v379[9] = v17;
  v379[10] = v17;
  v379[7] = v17;
  v379[8] = v17;
  v379[5] = v17;
  v379[6] = v17;
  v379[3] = v17;
  v379[4] = v17;
  v379[1] = v17;
  v379[2] = v17;
  v379[0] = v17;
  v377 = 0xAAAAAAAAAAAAAAAALL;
  *&v17 = 0xAAAAAAAAAAAAAAAALL;
  *(&v17 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v376[2] = v17;
  v376[3] = v17;
  v376[0] = v17;
  v376[1] = v17;
  v375 = 0xAAAAAAAAAAAAAAAALL;
  v373[2] = v17;
  v373[3] = v17;
  v373[0] = v17;
  v373[1] = v17;
  v371 = -1431655766;
  v370[0] = v17;
  v370[1] = v17;
  v18 = *(a9 + 2);
  v19 = a9[3];
  if (v19 >= 1)
  {
    v20 = 0;
    for (i = 0; i != v19; ++i)
    {
      v22 = v376 + v20 + 2;
      if ((v376 + v20) < v376 || v22 > &v378 || v376 + v20 > v22)
      {
        goto LABEL_593;
      }

      *(v376 + i) = i & 3;
      v20 += 2;
    }
  }

  __A = 0.0;
  vDSP_vfill(&__A, &__C, 1, 0x40uLL);
  if ((a5 + 1) > a6 || a5 + 1 < a5)
  {
    goto LABEL_593;
  }

  v25 = 0;
  v26 = 0;
  HIDWORD(v381) = *a5;
  do
  {
    v27 = &a5[v26 + 1];
    v28 = &a5[v26 + 2];
    if (v27 < a5 || v28 > a6 || v27 > v28)
    {
      goto LABEL_593;
    }

    v31 = (&v381 + v25 + 8);
    if ((&v381 + v25 + 8) < v380)
    {
      goto LABEL_593;
    }

    if (&v381 + v25 + 12 > v384)
    {
      goto LABEL_593;
    }

    if (v31 > (&v381 + v25 + 12))
    {
      goto LABEL_593;
    }

    v32 = *v27;
    *v31 = *v27;
    if (v382 + v26 * 4 + 4 > v384 || v382 + v26 * 4 > v382 + v26 * 4 + 4)
    {
      goto LABEL_593;
    }

    *(v382 + v26 * 4) = v32;
    ++v26;
    v25 -= 4;
  }

  while (v26 != 63);
  acelp_pulsesign(a3, a4, a1, a2, v379, v380, v402, v403, v18, v401, v402);
  acelp_findcandidates(v379, v380, v373, &v374, &v375, v376);
  v357 = a9[1];
  if (v357 < 1)
  {
    v63 = 0.0;
    v46 = a10;
    v48 = a11;
  }

  else
  {
    v360 = 0;
    v33 = a9[3];
    v34 = v33;
    v362 = v33 & 3;
    v365 = a9 + 18;
    v35 = v370 + v33;
    v36 = v370 + v33 - 1 < v372 && (v370 + v33 - 1) >= v370;
    v37 = !v36;
    v352 = v370 + v33;
    v39 = v35 >= v372 || v35 < v370;
    v40 = v370 + (v33 & 0xFFFFFFFFFFFFFFFCLL);
    v42 = v40 < v372 && v40 >= v370;
    v345 = v42;
    v361 = v370 + (v33 & 0xFFFFFFFFFFFFFFFCLL);
    v43 = (v40 | 1);
    v342 = v43;
    v45 = v43 >= v372 || v43 < v370;
    v343 = v45;
    v46 = a10;
    v47 = (a10 + 1);
    v48 = a11;
    v50 = (a10 + 1) > a11 || v47 < a10;
    v355 = v50;
    v51 = (a10 + 2);
    v52 = (a10 + 2) <= a11;
    v354 = a10 + 1;
    if (v47 > (a10 + 2))
    {
      v52 = 0;
    }

    v350 = v52;
    v53 = v47 > v51 || (a10 + 2) > a11;
    v351 = v53;
    v54 = (a10 + 3);
    v57 = (a10 + 3) > a11 || v51 > v54 || v51 < a10;
    v349 = v57;
    v60 = (a10 + 4) <= a11 && v54 <= (a10 + 4) && v54 >= a10;
    v348 = v60;
    v363 = a9 + 5;
    v356 = 2 * v33;
    v62 = 2 * v33 <= a11 - a10 && (2 * v33) < 0x49;
    v353 = a11 >= a10 && v62;
    v346 = v39;
    v347 = v37 | v39;
    v344 = tipos + 2 * v33;
    v367 = v33 - 1;
    v63 = 0.0;
    v64 = 1000.0;
    v65 = -1.0;
    v364 = v33;
    do
    {
      if (v34 >= 1)
      {
        v66 = &tipos[2 * (v360 & 0x3FFFFFFF)];
        v67 = v370;
        v68 = v34;
        do
        {
          v69 = v66 + 2;
          v71 = v66 < tipos || v69 > pit_max_12k8 || v66 > v69;
          if (v71 || v67 >= v372 || v67 < v370)
          {
            goto LABEL_593;
          }

          v72 = *v66;
          v66 = (v66 + 2);
          *v67++ = v72;
          --v68;
        }

        while (v68);
      }

      if (v362)
      {
        v73 = *v365;
        if (*v365 == 3)
        {
          if (v347)
          {
            goto LABEL_593;
          }

          v75 = v352;
          v76 = (*(v352 - 1) + 1) & 3;
        }

        else if (v73 == 1)
        {
          if (!v345)
          {
            goto LABEL_593;
          }

          *v361 = 2 * (v360 & 1);
          if (v343)
          {
            goto LABEL_593;
          }

          v76 = (2 * (v360 & 1)) ^ 2;
          v75 = v342;
        }

        else if (v73)
        {
          v77 = &v344[8 * v360];
          v80 = v77 + 2 > pit_max_12k8 || v77 > (v77 + 2) || v77 < tipos;
          if (v80 || v346)
          {
            goto LABEL_593;
          }

          v76 = *v77;
          v75 = v352;
        }

        else
        {
          for (j = 0; j != v362; ++j)
          {
            if (&v361[j] >= v372 || &v361[j] < v370)
            {
              goto LABEL_593;
            }

            v361[j] = j;
          }

          if (v347)
          {
            goto LABEL_593;
          }

          v75 = v352;
          v76 = *(v352 - 1);
        }

        *v75 = v76;
      }

      v81 = a9[4];
      if (v81 == 2)
      {
        v85 = &v375 + LOBYTE(v370[0]);
        v87 = v85 + 1 <= v376 && v85 <= v85 + 1 && v85 >= &v375;
        v88 = v355;
        if (!v87)
        {
          v88 = 1;
        }

        if (v88)
        {
          goto LABEL_593;
        }

        v89 = *v85;
        *v46 = v89;
        v90 = &v375 + BYTE1(v370[0]);
        if (v90 < &v375 || v90 + 1 > v376 || v90 > v90 + 1 || !v350)
        {
          goto LABEL_593;
        }

        v91 = *v90;
        *v354 = v91;
        v92 = &a1[v89];
        v93 = v92 + 1;
        v94 = v92 < a1 || v93 > a2;
        v95 = v94 || v92 > v93;
        v96 = &a1[v91];
        v97 = v96 + 1;
        v98 = !v95 && v96 >= a1;
        v99 = !v98 || v97 > a2;
        if (v99 || v96 > v97)
        {
          goto LABEL_593;
        }

        v101 = v402 + 4 * v89;
        if (v101 < v402 || v101 + 4 > v403 || v101 > v101 + 4)
        {
          goto LABEL_593;
        }

        v102 = *v92;
        v103 = *v96;
        v104 = &v381 - v89 + 3;
        v105 = *(v402 + v89);
        p_C = &__C;
        v107 = 64;
        if (v105 <= 0.0)
        {
          do
          {
            v111 = v104 + 1;
            if (v104 < v380 || v111 > v384 || v104 > v111)
            {
              goto LABEL_593;
            }

            *p_C++ = -*v104++;
            --v107;
          }

          while (v107);
        }

        else
        {
          do
          {
            v108 = v104 + 1;
            if (v104 < v380 || v108 > v384 || v104 > v108)
            {
              goto LABEL_593;
            }

            *p_C++ = *v104++;
            --v107;
          }

          while (v107);
        }

        v114 = v402 + 4 * v91;
        if (v114 < v402 || v114 + 4 > v403 || v114 > v114 + 4)
        {
          goto LABEL_593;
        }

        v115 = &v381 - v91 + 3;
        v116 = *(v402 + v91);
        v117 = &__C;
        v118 = 64;
        if (v116 <= 0.0)
        {
          do
          {
            v122 = v115 + 1;
            if (v115 < v380 || v122 > v384 || v115 > v122)
            {
              goto LABEL_593;
            }

            *v117 = *v117 - *v115;
            ++v117;
            ++v115;
            --v118;
          }

          while (v118);
        }

        else
        {
          do
          {
            v119 = v115 + 1;
            if (v115 < v380 || v119 > v384 || v115 > v119)
            {
              goto LABEL_593;
            }

            *v117 = *v115 + *v117;
            ++v117;
            ++v115;
            --v118;
          }

          while (v118);
        }

        v125 = &__C + v89;
        if (v125 < &__C)
        {
          goto LABEL_593;
        }

        if (v125 + 1 > v401)
        {
          goto LABEL_593;
        }

        if (v125 > v125 + 1)
        {
          goto LABEL_593;
        }

        v126 = &__C + v91;
        if (v126 < &__C || v126 + 1 > v401 || v126 > v126 + 1)
        {
          goto LABEL_593;
        }

        v84 = v102 + v103;
        v83 = (v116 * *v126) + (v105 * *v125);
        v82 = 2;
      }

      else if (v81)
      {
        v127 = &v375 + LOBYTE(v370[0]);
        v129 = v127 + 1 <= v376 && v127 <= v127 + 1 && v127 >= &v375;
        v130 = v355;
        if (!v129)
        {
          v130 = 1;
        }

        if (v130)
        {
          goto LABEL_593;
        }

        v131 = *v127;
        *v46 = v131;
        v132 = &v375 + BYTE1(v370[0]);
        v134 = v132 + 1 <= v376 && v132 <= v132 + 1 && v132 >= &v375;
        v135 = v351;
        if (!v134)
        {
          v135 = 1;
        }

        if (v135)
        {
          goto LABEL_593;
        }

        v136 = *v132;
        *v354 = v136;
        v137 = &v375 + BYTE2(v370[0]);
        v139 = v137 + 1 <= v376 && v137 <= v137 + 1 && v137 >= &v375;
        v140 = v349;
        if (!v139)
        {
          v140 = 1;
        }

        if (v140)
        {
          goto LABEL_593;
        }

        v141 = *v137;
        a10[2] = v141;
        v142 = &v375 + BYTE3(v370[0]);
        if (v142 < &v375)
        {
          goto LABEL_593;
        }

        if (v142 + 1 > v376)
        {
          goto LABEL_593;
        }

        if (v142 > v142 + 1)
        {
          goto LABEL_593;
        }

        if (!v348)
        {
          goto LABEL_593;
        }

        v143 = *v142;
        a10[3] = v143;
        v144 = &a1[v131];
        if (v144 < a1)
        {
          goto LABEL_593;
        }

        if ((v144 + 1) > a2)
        {
          goto LABEL_593;
        }

        if (v144 > v144 + 1)
        {
          goto LABEL_593;
        }

        v145 = &a1[v136];
        if (v145 < a1)
        {
          goto LABEL_593;
        }

        if ((v145 + 1) > a2)
        {
          goto LABEL_593;
        }

        if (v145 > v145 + 1)
        {
          goto LABEL_593;
        }

        v146 = &a1[v141];
        if (v146 < a1)
        {
          goto LABEL_593;
        }

        if ((v146 + 1) > a2)
        {
          goto LABEL_593;
        }

        if (v146 > v146 + 1)
        {
          goto LABEL_593;
        }

        v147 = &a1[v143];
        if (v147 < a1)
        {
          goto LABEL_593;
        }

        if ((v147 + 1) > a2)
        {
          goto LABEL_593;
        }

        if (v147 > v147 + 1)
        {
          goto LABEL_593;
        }

        v148 = v402 + 4 * v131;
        if (v148 < v402 || v148 + 4 > v403 || v148 > v148 + 4)
        {
          goto LABEL_593;
        }

        v149 = *v144;
        v150 = *v145;
        v151 = *v146;
        v152 = *v147;
        v153 = &v381 - v131 + 3;
        v154 = *(v402 + v131);
        v155 = &__C;
        v156 = 64;
        if (v154 <= 0.0)
        {
          do
          {
            v160 = v153 + 1;
            if (v153 < v380 || v160 > v384 || v153 > v160)
            {
              goto LABEL_593;
            }

            *v155++ = -*v153++;
            --v156;
          }

          while (v156);
        }

        else
        {
          do
          {
            v157 = v153 + 1;
            if (v153 < v380 || v157 > v384 || v153 > v157)
            {
              goto LABEL_593;
            }

            *v155++ = *v153++;
            --v156;
          }

          while (v156);
        }

        v84 = ((v149 + v150) + v151) + v152;
        for (k = 1; k != 4; ++k)
        {
          v164 = (v46 + 2 * k);
          if ((v164 + 1) > v48 || v164 > v164 + 1)
          {
            goto LABEL_593;
          }

          v166 = *v164;
          v167 = v402 + 4 * v166;
          v168 = v167 + 4;
          v169 = v167 < v402 || v168 > v403;
          if (v169 || v167 > v168)
          {
            goto LABEL_593;
          }

          v171 = &v381 - v166 + 3;
          v172 = *(v402 + v166);
          v173 = &__C;
          v174 = 64;
          if (v172 <= 0.0)
          {
            do
            {
              v178 = v171 + 1;
              if (v171 < v380 || v178 > v384 || v171 > v178)
              {
                goto LABEL_593;
              }

              *v173 = *v173 - *v171;
              ++v173;
              ++v171;
              --v174;
            }

            while (v174);
          }

          else
          {
            do
            {
              v175 = v171 + 1;
              if (v171 < v380 || v175 > v384 || v171 > v175)
              {
                goto LABEL_593;
              }

              *v173 = *v171 + *v173;
              ++v173;
              ++v171;
              --v174;
            }

            while (v174);
          }
        }

        v181 = &__C + v131;
        if (v181 < &__C)
        {
          goto LABEL_593;
        }

        if (v181 + 1 > v401)
        {
          goto LABEL_593;
        }

        if (v181 > v181 + 1)
        {
          goto LABEL_593;
        }

        v182 = v402 + v136;
        if (v182 < v402)
        {
          goto LABEL_593;
        }

        if (v182 + 1 > v403)
        {
          goto LABEL_593;
        }

        if (v182 > v182 + 1)
        {
          goto LABEL_593;
        }

        v183 = &__C + v136;
        if (v183 < &__C)
        {
          goto LABEL_593;
        }

        if (v183 + 1 > v401)
        {
          goto LABEL_593;
        }

        if (v183 > v183 + 1)
        {
          goto LABEL_593;
        }

        v184 = v402 + v141;
        if (v184 < v402)
        {
          goto LABEL_593;
        }

        if (v184 + 1 > v403)
        {
          goto LABEL_593;
        }

        if (v184 > v184 + 1)
        {
          goto LABEL_593;
        }

        v185 = &__C + v141;
        if (v185 < &__C)
        {
          goto LABEL_593;
        }

        if (v185 + 1 > v401)
        {
          goto LABEL_593;
        }

        if (v185 > v185 + 1)
        {
          goto LABEL_593;
        }

        v186 = v402 + v143;
        if (v186 < v402)
        {
          goto LABEL_593;
        }

        if (v186 + 1 > v403)
        {
          goto LABEL_593;
        }

        if (v186 > v186 + 1)
        {
          goto LABEL_593;
        }

        v187 = &__C + v143;
        if (v187 < &__C || v187 + 1 > v401 || v187 > v187 + 1)
        {
          goto LABEL_593;
        }

        v83 = (((*v182 * *v183) + (v154 * *v181)) + (*v184 * *v185)) + (*v186 * *v187);
        v82 = 4;
      }

      else
      {
        v82 = 0;
        v400 = 0u;
        v399 = 0u;
        v398 = 0u;
        v397 = 0u;
        v395 = 0u;
        v396 = 0u;
        v393 = 0u;
        v394 = 0u;
        v391 = 0u;
        v392 = 0u;
        v389 = 0u;
        v390 = 0u;
        v387 = 0u;
        v388 = 0u;
        v83 = 0.0;
        v84 = 0.0;
        __C = 0u;
        v386 = 0u;
      }

      if (v82 < v34)
      {
        v188 = 0;
        v189 = *(&v381 + 3);
        do
        {
          if (v82 >= v367)
          {
            v246 = v370 + v82;
            if (v370 + v82 >= v372 || (v370 + v82) < v370)
            {
              goto LABEL_593;
            }

            v250 = *v246;
            v248 = v246 + 1;
            v249 = v250;
            if (v248 >= v372)
            {
              goto LABEL_593;
            }

            v251 = *v248;
            v252 = v46 + 2 * v82;
            if (v252)
            {
              if (v252 < v46 || v252 + 2 > v48 || v252 > v252 + 2)
              {
                goto LABEL_593;
              }
            }

            v368 = (v46 + 2 * v82);
            v253 = &__C + v249;
            v254 = v253 + 1;
            v255 = v253 < &__C || v254 > v401;
            v256 = v255 || v253 > v254;
            v257 = v402 + v249;
            v258 = v257 + 1;
            v259 = !v256 && v257 >= v402;
            v260 = !v259 || v258 > v403;
            if (v260 || v257 > v258)
            {
              goto LABEL_593;
            }

            v262 = v83 + v189;
            v263 = (v83 + v189) + (*v253 * *v257);
            v83 = 1.0;
            if (v263 >= 0.0)
            {
              v264 = -1.0;
            }

            else
            {
              v264 = 1.0;
            }

            v212 = v249;
            if (v249 <= 0x3F)
            {
              v265 = 4 * v249;
              v266 = &__C;
              v267 = v402;
              v268 = a1;
              v269 = v249;
              while (1)
              {
                v270 = &v268[v265 / 4];
                v271 = &v268[v265 / 4 + 1];
                v272 = &v268[v265 / 4] < a1 || v271 > a2;
                if (v272 || v270 > v271)
                {
                  break;
                }

                v274 = (v267 + v265);
                if ((v267 + v265) < v402)
                {
                  break;
                }

                if (v274 + 1 > v403)
                {
                  break;
                }

                if (v274 > v274 + 1)
                {
                  break;
                }

                v275 = (v266 + v265);
                if ((v266 + v265) < &__C || v275 + 1 > v401 || v275 > v275 + 1)
                {
                  break;
                }

                if (((v83 * ((v84 + *v270) * (v84 + *v270))) - (v264 * (v262 + ((*v274 + *v274) * *v275)))) > 0.0)
                {
                  v83 = v262 + ((*v274 + *v274) * *v275);
                  v264 = (v84 + *v270) * (v84 + *v270);
                  v212 = v269;
                }

                ++v266;
                ++v267;
                v268 += 4;
                v36 = v269 >= 0x3C;
                v269 += 4;
                if (v36)
                {
                  goto LABEL_467;
                }
              }

LABEL_593:
              __break(0x5519u);
            }

LABEL_467:
            if (v251 != v249 && v251 <= 0x3F)
            {
              v276 = 4 * v251;
              v277 = &__C;
              v278 = v402;
              v279 = a1;
              do
              {
                v280 = &v279[v276 / 4];
                v281 = &v279[v276 / 4 + 1];
                v282 = &v279[v276 / 4] < a1 || v281 > a2;
                if (v282 || v280 > v281)
                {
                  goto LABEL_593;
                }

                v284 = (v278 + v276);
                if ((v278 + v276) < v402)
                {
                  goto LABEL_593;
                }

                if (v284 + 1 > v403)
                {
                  goto LABEL_593;
                }

                if (v284 > v284 + 1)
                {
                  goto LABEL_593;
                }

                v285 = (v277 + v276);
                if ((v277 + v276) < &__C || v285 + 1 > v401 || v285 > v285 + 1)
                {
                  goto LABEL_593;
                }

                if (((v83 * ((v84 + *v280) * (v84 + *v280))) - (v264 * (v262 + ((*v284 + *v284) * *v285)))) > 0.0)
                {
                  v83 = v262 + ((*v284 + *v284) * *v285);
                  v264 = (v84 + *v280) * (v84 + *v280);
                  v212 = v251;
                }

                ++v277;
                ++v278;
                v279 += 4;
                v36 = v251 >= 0x3C;
                v251 += 4;
              }

              while (!v36);
            }

            v286 = &a1[v212];
            v287 = v286 + 1;
            if (v286 < a1 || v287 > a2 || v286 > v287)
            {
              goto LABEL_593;
            }

            v84 = v84 + *v286;
          }

          else
          {
            v190 = &v363[v188];
            v191 = v190 + 1;
            if (v190 < v363 || v191 > v365 || v190 > v191)
            {
              goto LABEL_593;
            }

            if (v370 + v82 >= v372)
            {
              goto LABEL_593;
            }

            if ((v370 + v82) < v370)
            {
              goto LABEL_593;
            }

            v194 = v82 | 1;
            v195 = v370 + (v82 | 1);
            if (v195 >= v372)
            {
              goto LABEL_593;
            }

            v196 = *v190;
            v197 = *v195;
            v198 = v46 + 2 * v82;
            if (v198)
            {
              if (v198 < v46 || v198 + 2 > v48 || v198 > v198 + 2)
              {
                goto LABEL_593;
              }
            }

            v199 = v46 + 2 * v194;
            if (v199)
            {
              if (v199 < v46 || v199 + 2 > v48 || v199 > v199 + 2)
              {
                goto LABEL_593;
              }
            }

            v366 = (v46 + 2 * v82);
            v368 = (v46 + 2 * v194);
            v200 = &v373[*(v370 + v82)];
            if (v200 < v373)
            {
              goto LABEL_593;
            }

            if ((v200 | 2) > &v374)
            {
              goto LABEL_593;
            }

            if (v200 > (v200 | 2))
            {
              goto LABEL_593;
            }

            v201 = v402 + v197;
            if (v201 < v402)
            {
              goto LABEL_593;
            }

            if (v201 + 1 > v403)
            {
              goto LABEL_593;
            }

            if (v201 > v201 + 1)
            {
              goto LABEL_593;
            }

            v202 = *v200;
            v203 = v402 + 4 * v202;
            if (v203 < v402 || v203 + 4 > v403 || v203 > v203 + 4)
            {
              goto LABEL_593;
            }

            v204 = *(v402 + v202);
            v205 = *v201;
            v206 = v204 >= 0.0 ? *v201 : -*v201;
            v207 = &__C + v202;
            if (v207 < &__C)
            {
              goto LABEL_593;
            }

            if (v207 + 1 > v401)
            {
              goto LABEL_593;
            }

            if (v207 > v207 + 1)
            {
              goto LABEL_593;
            }

            v208 = &__C + 4 * v197;
            if (v208 < &__C)
            {
              goto LABEL_593;
            }

            if (v208 + 4 > v401)
            {
              goto LABEL_593;
            }

            if (v208 > v208 + 4)
            {
              goto LABEL_593;
            }

            v209 = &v381 + v197 - v202 + 3;
            if (v209 < v380 || v209 + 1 > v384 || v209 > v209 + 1)
            {
              goto LABEL_593;
            }

            if (v196 >= 1)
            {
              v210 = 0;
              v211 = 0;
              v212 = 0;
              v213 = v83 + (v189 * 2.0);
              v83 = 1.0;
              if ((((v213 + (*v207 * v204)) + (*(&__C + v197) * v205)) + (*v209 * v206)) >= 0.0)
              {
                v214 = -1.0;
              }

              else
              {
                v214 = 1.0;
              }

              v215 = 4 * v197;
              while (1)
              {
                v216 = (v200 + 2 * v210);
                v217 = v216 + 1;
                if (v216 < v373 || v217 > &v374 || v216 > v217)
                {
                  goto LABEL_593;
                }

                v220 = *v216;
                v221 = v402 + 4 * v220;
                v222 = v221 + 4;
                v223 = v221 < v402 || v222 > v403;
                if (v223 || v221 > v222)
                {
                  goto LABEL_593;
                }

                v225 = &a1[v220];
                v226 = v225 + 1;
                v227 = v225 < a1 || v226 > a2;
                if (v227 || v225 > v226)
                {
                  goto LABEL_593;
                }

                v229 = &__C + 4 * v220;
                if (v229 < &__C || v229 + 4 > v401 || v229 > v229 + 4)
                {
                  goto LABEL_593;
                }

                if (v197 <= 0x3F)
                {
                  break;
                }

LABEL_418:
                if (++v210 == v196)
                {
                  goto LABEL_496;
                }
              }

              v230 = *(v402 + v220);
              v231 = v84 + *v225;
              v232 = v380 - 4 * v220;
              v234 = &__C;
              v235 = v402;
              v236 = a1;
              v237 = v197;
              while (1)
              {
                v238 = &v236[v215 / 4];
                v239 = &v236[v215 / 4 + 1];
                v240 = &v236[v215 / 4] < a1 || v239 > a2;
                if (v240 || v238 > v239)
                {
                  goto LABEL_593;
                }

                v242 = (v235 + v215);
                if ((v235 + v215) < v402)
                {
                  goto LABEL_593;
                }

                if (v242 + 1 > v403)
                {
                  goto LABEL_593;
                }

                if (v242 > v242 + 1)
                {
                  goto LABEL_593;
                }

                v243 = (v234 + v215);
                if ((v234 + v215) < &__C)
                {
                  goto LABEL_593;
                }

                if (v243 + 1 > v401)
                {
                  goto LABEL_593;
                }

                if (v243 > v243 + 1)
                {
                  goto LABEL_593;
                }

                v244 = &v232[v215 + 252];
                if (v244 < v380)
                {
                  goto LABEL_593;
                }

                v245 = &v232[v215 + 256];
                if (v245 > v384 || v244 > v245)
                {
                  goto LABEL_593;
                }

                v233 = v213 + ((v230 + v230) * *(&__C + v220));
                if (((v83 * ((v231 + *v238) * (v231 + *v238))) - (v214 * (v233 + ((*v242 + *v242) * (*v243 + (v230 * *v244)))))) > 0.0)
                {
                  v83 = v233 + ((*v242 + *v242) * (*v243 + (v230 * *v244)));
                  v214 = (v231 + *v238) * (v231 + *v238);
                  v212 = v237;
                  v211 = v220;
                }

                v232 += 16;
                ++v234;
                ++v235;
                v236 += 4;
                v36 = v237 >= 0x3C;
                v237 += 4;
                if (v36)
                {
                  goto LABEL_418;
                }
              }
            }

            v212 = 0;
            v211 = 0;
            v83 = 1.0;
LABEL_496:
            v290 = &a1[v211];
            if (v290 < a1)
            {
              goto LABEL_593;
            }

            if ((v290 + 1) > a2)
            {
              goto LABEL_593;
            }

            if (v290 > v290 + 1)
            {
              goto LABEL_593;
            }

            v291 = &a1[v212];
            if (v291 < a1)
            {
              goto LABEL_593;
            }

            if ((v291 + 1) > a2)
            {
              goto LABEL_593;
            }

            if (v291 > v291 + 1)
            {
              goto LABEL_593;
            }

            v292 = v211;
            v293 = v402 + v211;
            if (v293 < v402)
            {
              goto LABEL_593;
            }

            if (v293 + 1 > v403)
            {
              goto LABEL_593;
            }

            if (v293 > v293 + 1)
            {
              goto LABEL_593;
            }

            v294 = v402 + 4 * v212;
            if (v294 < v402 || v294 + 4 > v403 || v294 > v294 + 4)
            {
              goto LABEL_593;
            }

            v295 = 0;
            v84 = (v84 + *v290) + *v291;
            v296 = *(v402 + v212);
            v297 = *v293;
            v298 = v380 - 4 * v212;
            v299 = v380 - 4 * v292;
            do
            {
              v300 = &v299[v295 + 252];
              v301 = &v299[v295 + 256];
              v303 = v300 < v380 || v301 > v384 || v300 > v301;
              v304 = &v298[v295 + 252];
              v305 = &v298[v295 + 256];
              v308 = v303 || v304 < v380 || v305 > v384 || v304 > v305;
              v309 = &__C + v295;
              v310 = &__C + v295 + 4;
              if (v308 || v309 < &__C || v310 > v401 || v309 > v310)
              {
                goto LABEL_593;
              }

              *(&__C + v295) = *(&__C + v295) + ((v296 * *v304) + (*v300 * v297));
              v295 += 4;
            }

            while (v295 != 256);
            *v366 = v292;
            v46 = a10;
            v34 = v364;
            v48 = a11;
          }

          *v368 = v212;
          v82 += 2;
          ++v188;
        }

        while (v34 > v82);
      }

      if (((v64 * (v84 * v84)) - (v65 * v83)) > 0.0)
      {
        if (!v353)
        {
          goto LABEL_593;
        }

        v314 = __memcpy_chk();
        v34 = v364;
        v48 = a11;
        v64 = v83;
        v65 = v84 * v84;
        v63 = v84;
        if (v314 > v314 + v356)
        {
          goto LABEL_593;
        }
      }

      ++v360;
    }

    while (v360 != v357);
  }

  if (a8 < a7)
  {
    goto LABEL_593;
  }

  if (a8 - a7 < 0x100)
  {
    goto LABEL_593;
  }

  *(a7 + 14) = 0u;
  *(a7 + 15) = 0u;
  *(a7 + 12) = 0u;
  *(a7 + 13) = 0u;
  *(a7 + 10) = 0u;
  *(a7 + 11) = 0u;
  *(a7 + 8) = 0u;
  *(a7 + 9) = 0u;
  *(a7 + 6) = 0u;
  *(a7 + 7) = 0u;
  *(a7 + 4) = 0u;
  *(a7 + 5) = 0u;
  *(a7 + 2) = 0u;
  *(a7 + 3) = 0u;
  *a7 = 0u;
  *(a7 + 1) = 0u;
  if (a7 + 64 < a7)
  {
    goto LABEL_593;
  }

  if (v48 < v46)
  {
    goto LABEL_593;
  }

  if (v48 - v46 < 0x48)
  {
    goto LABEL_593;
  }

  *(v46 + 64) = -1;
  *&v315 = -1;
  *(&v315 + 1) = -1;
  *(v46 + 32) = v315;
  *(v46 + 48) = v315;
  *v46 = v315;
  *(v46 + 16) = v315;
  if (v46 + 72 < v46)
  {
    goto LABEL_593;
  }

  v316 = a9[3];
  if (v316 >= 1)
  {
    v317 = 0;
    while (1)
    {
      v318 = v376 + v317;
      v319 = v318 + 1;
      v320 = v318 < v376 || v319 > &v378;
      if (v320 || v318 > v319)
      {
        goto LABEL_593;
      }

      v322 = *v318;
      v323 = v402 + 4 * *v318;
      v324 = v323 + 4;
      v325 = v323 < v402 || v324 > v403;
      if (v325 || v323 > v324)
      {
        goto LABEL_593;
      }

      v327 = v322;
      v328 = *(v402 + v322);
      v329 = v322 + ((v322 >> 29) & 3);
      v330 = (v322 + ((v322 >> 29) & 3)) >> 2;
      v331 = v63 * v328;
      v332 = &a7[v327];
      v333 = (v332 + 1) > a8 || v332 > v332 + 1;
      v334 = !v333 && v332 >= a7;
      v335 = v334;
      if (v331 <= 0.0)
      {
        if (!v335)
        {
          goto LABEL_593;
        }

        *v332 = *v332 + -1.0;
        LOWORD(v330) = v330 + 16;
      }

      else
      {
        if (!v335)
        {
          goto LABEL_593;
        }

        *v332 = *v332 + 1.0;
        *v318 = v327 + 128;
      }

      v336 = (v46 + 2 * (9 * (v327 - (v329 & 0xFFFC))));
      v337 = v336 + 1;
      v338 = v336 < v46 || v337 > v48;
      if (v338 || v336 > v337)
      {
        goto LABEL_593;
      }

      while ((*v336 & 0x80000000) == 0)
      {
        v340 = v336 + 1;
        if ((v336 + 1) >= v46)
        {
          v341 = v336 + 2;
          if ((v336 + 2) <= v48)
          {
            ++v336;
            if (v340 <= v341)
            {
              continue;
            }
          }
        }

        goto LABEL_593;
      }

      *v336 = v330;
      if (++v317 == v316)
      {
        return;
      }
    }
  }
}

float *E_ACELP_4tsearch(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, _DWORD *a9, _WORD *a10, unint64_t a11, _OWORD *a12, unint64_t a13)
{
  v13 = MEMORY[0x1EEE9AC00](a1);
  v772 = v14;
  v773 = v15;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v785 = v24;
  v784 = v13;
  v843[1] = *MEMORY[0x1E69E9840];
  *&v25 = -1;
  *(&v25 + 1) = -1;
  v842 = v25;
  v841 = v25;
  v840 = v25;
  v839 = v25;
  v838 = v25;
  v837 = v25;
  v836 = v25;
  v835 = v25;
  v834 = v25;
  v833 = v25;
  v832 = v25;
  v831 = v25;
  v830 = v25;
  v829 = v25;
  v828 = v25;
  v827 = v25;
  v826 = v25;
  v825 = v25;
  v824 = v25;
  v823 = v25;
  v822 = v25;
  v821 = v25;
  v820 = v25;
  v819 = v25;
  v818 = v25;
  v817 = v25;
  v816 = v25;
  v815 = v25;
  v814 = v25;
  v813 = v25;
  v812 = v25;
  v811 = v25;
  v810[3] = v25;
  v810[2] = v25;
  v810[1] = v25;
  v810[0] = v25;
  v809[3] = v25;
  v809[2] = v25;
  v809[1] = v25;
  v809[0] = v25;
  memset(v808, 255, sizeof(v808));
  *&v26 = -1;
  *(&v26 + 1) = -1;
  v807 = v26;
  v806[2] = v26;
  v806[1] = v26;
  v806[0] = v26;
  v805[3] = v26;
  v805[2] = v26;
  v805[1] = v26;
  v805[0] = v26;
  v804[3] = v26;
  v804[2] = v26;
  v804[1] = v26;
  v804[0] = v26;
  v803[3] = v26;
  v803[2] = v26;
  v803[1] = v26;
  v803[0] = v26;
  memset(__b, 255, sizeof(__b));
  *&v27 = -1;
  *(&v27 + 1) = -1;
  v801[14] = v27;
  v801[15] = v27;
  v801[12] = v27;
  v801[13] = v27;
  v801[10] = v27;
  v801[11] = v27;
  v801[8] = v27;
  v801[9] = v27;
  v801[6] = v27;
  v801[7] = v27;
  v801[4] = v27;
  v801[5] = v27;
  v801[2] = v27;
  v801[3] = v27;
  v801[0] = v27;
  v801[1] = v27;
  v799 = 0;
  memset(v798, 0, sizeof(v798));
  v797 = 0xAAAAAAAAAAAAAAAALL;
  *&v28 = 0xAAAAAAAAAAAAAAAALL;
  *(&v28 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v795[3] = v28;
  v795[2] = v28;
  v795[1] = v28;
  v795[0] = v28;
  v793 = 0;
  memset(v792, 0, sizeof(v792));
  v29 = *(a9 + 2);
  v30 = a9[3];
  if (v30 >= 1)
  {
    v31 = v798;
    do
    {
      v32 = (v31 + 2);
      if (v31 < v798 || v32 > &v800 || v31 > v32)
      {
        goto LABEL_1645;
      }

      *v31 = 0;
      v31 = (v31 + 2);
      --v30;
    }

    while (v30);
  }

  acelp_pulsesign(v23, v21, v784, v785, v801, __b, &v827, v843, v29, &v811, &v827);
  acelp_findcandidates(v801, __b, v795, &v796, &v797, v798);
  v35 = 0;
  v36 = 0xFFFFFFFF00000000;
  do
  {
    v37 = (&v808[64] + (v36 >> 30));
    v38 = v37 + 1;
    if (v37 < v808 || v38 > v809 || v37 > v38)
    {
      goto LABEL_1645;
    }

    *v37 = 0.0;
    v41 = &v808[(v36 >> 32) + 192];
    if (v41 < v808)
    {
      goto LABEL_1645;
    }

    if (v41 + 1 > v809)
    {
      goto LABEL_1645;
    }

    if (v41 > v41 + 1)
    {
      goto LABEL_1645;
    }

    *v41 = 0.0;
    v42 = (v19 + v35 * 4);
    if (v19 + v35 * 4 < v19)
    {
      goto LABEL_1645;
    }

    if ((v42 + 1) > v17)
    {
      goto LABEL_1645;
    }

    if (v42 > v42 + 1)
    {
      goto LABEL_1645;
    }

    v43 = &v808[v35 + 64];
    if (v43 < v808)
    {
      goto LABEL_1645;
    }

    v44 = &v808[v35 + 65];
    if (v44 > v809)
    {
      goto LABEL_1645;
    }

    if (v43 > v44)
    {
      goto LABEL_1645;
    }

    v45 = *v42;
    *v43 = *v42;
    v46 = &v808[v35 + 192];
    if (v46 < v808)
    {
      goto LABEL_1645;
    }

    v47 = &v808[v35 + 193];
    if (v47 > v809 || v46 > v47)
    {
      goto LABEL_1645;
    }

    *v46 = -v45;
    ++v35;
    v36 -= 0x100000000;
  }

  while (v35 != 64);
  v48 = 0;
  v49 = &v808[68];
  v50 = 0.0;
  do
  {
    if (v49 - 3 > v809)
    {
      goto LABEL_1645;
    }

    v51 = (v803 + v48);
    v52 = &v808[v48 / 4 - 1];
    if (&v808[v48 / 4 - 1] < v806)
    {
      goto LABEL_1645;
    }

    if (v51 + 64 > v808)
    {
      goto LABEL_1645;
    }

    if (v52 > v51 + 64)
    {
      goto LABEL_1645;
    }

    v53 = v50 + (*(v49 - 4) * *(v49 - 4));
    *v52 = v53 * 0.5;
    if (v49 - 2 > v809)
    {
      goto LABEL_1645;
    }

    v54 = v51 + 47;
    if (v51 + 47 < v805)
    {
      goto LABEL_1645;
    }

    if ((v806 + v48) > v806)
    {
      goto LABEL_1645;
    }

    if (v54 > (v806 + v48))
    {
      goto LABEL_1645;
    }

    v55 = v53 + (*(v49 - 3) * *(v49 - 3));
    *v54 = v55 * 0.5;
    if (v49 - 1 > v809)
    {
      goto LABEL_1645;
    }

    v56 = v51 + 31;
    if (v51 + 31 < v804)
    {
      goto LABEL_1645;
    }

    if ((v805 + v48) > v805)
    {
      goto LABEL_1645;
    }

    if (v56 > (v805 + v48))
    {
      goto LABEL_1645;
    }

    v57 = v55 + (*(v49 - 2) * *(v49 - 2));
    *v56 = v57 * 0.5;
    if (v49 > v809)
    {
      goto LABEL_1645;
    }

    v58 = v51 + 15;
    if (v58 < v803)
    {
      goto LABEL_1645;
    }

    v59 = (&v803[4] + v48);
    if (v59 > v804 || v58 > v59)
    {
      goto LABEL_1645;
    }

    v50 = v57 + (*(v49 - 1) * *(v49 - 1));
    *v58 = v50 * 0.5;
    v48 -= 4;
    v49 += 4;
  }

  while (v48 != -64);
  v60 = 0;
  v61 = 0;
  v62 = &v808[65];
  v63 = &__b[1008];
  v64 = 15;
  v65 = 255;
  do
  {
    if (v61 > 0xE)
    {
      v87 = &__b[v65 + 512];
      v86 = &__b[v65 + 256];
      v66 = 0.0;
      v88 = v62;
      v83 = &v808[64];
      v85 = &__b[v65];
    }

    else
    {
      v66 = 0.0;
      v67 = v63;
      v68 = v64;
      v69 = &v808[64];
      do
      {
        if (v69 < &v808[64])
        {
          goto LABEL_1645;
        }

        v70 = v69 + 1;
        if (v69 + 1 > v809)
        {
          goto LABEL_1645;
        }

        if (v69 > v70)
        {
          goto LABEL_1645;
        }

        v71 = &v70[v60];
        if (&v70[v60] < &v808[64])
        {
          goto LABEL_1645;
        }

        v72 = &v69[v60 + 2];
        if (v72 > v809)
        {
          goto LABEL_1645;
        }

        if (v71 > v72)
        {
          goto LABEL_1645;
        }

        v73 = v67 - 241;
        if (v67 - 241 < &__b[512])
        {
          goto LABEL_1645;
        }

        if (v67 - 240 > &__b[768])
        {
          goto LABEL_1645;
        }

        if (v73 > v67 - 240)
        {
          goto LABEL_1645;
        }

        v74 = v66 + (*v69 * *v71);
        *v73 = v74;
        v75 = v69 + 2;
        if (v69 + 2 > v809)
        {
          goto LABEL_1645;
        }

        if (v70 > v75)
        {
          goto LABEL_1645;
        }

        v76 = &v69[v60 + 3];
        if (v76 > v809)
        {
          goto LABEL_1645;
        }

        if (v72 > v76)
        {
          goto LABEL_1645;
        }

        v77 = v67 - 497;
        if (v67 - 497 < &__b[256])
        {
          goto LABEL_1645;
        }

        if (v67 - 496 > &__b[512])
        {
          goto LABEL_1645;
        }

        if (v77 > v67 - 496)
        {
          goto LABEL_1645;
        }

        v78 = v74 + (*v70 * *v72);
        *v77 = v78;
        v79 = v69 + 3;
        if (v69 + 3 > v809)
        {
          goto LABEL_1645;
        }

        if (v75 > v79)
        {
          goto LABEL_1645;
        }

        v80 = &v69[v60 + 4];
        if (v80 > v809)
        {
          goto LABEL_1645;
        }

        if (v76 > v80)
        {
          goto LABEL_1645;
        }

        v81 = v67 - 753;
        if (v67 - 753 < __b)
        {
          goto LABEL_1645;
        }

        if (v67 - 752 > &__b[256])
        {
          goto LABEL_1645;
        }

        if (v81 > v67 - 752)
        {
          goto LABEL_1645;
        }

        v82 = v78 + (*v75 * *v76);
        *v81 = v82;
        v83 = v69 + 4;
        if (v69 + 4 > v809)
        {
          goto LABEL_1645;
        }

        if (v79 > v83)
        {
          goto LABEL_1645;
        }

        v84 = &v69[v60 + 5];
        if (v84 > v809 || v80 > v84 || v67 - 1 < &__b[768] || v67 > v803 || v67 - 1 > v67)
        {
          goto LABEL_1645;
        }

        v66 = v82 + (*v79 * *v80);
        *(v67 - 1) = v66;
        v67 -= 17;
        v69 = v83;
        --v68;
      }

      while (v68);
      v85 = v67 - 753;
      v86 = v67 - 497;
      v87 = v67 - 241;
      v88 = &v83[v60 + 1];
    }

    if (v83 < &v808[64])
    {
      goto LABEL_1645;
    }

    v89 = v83 + 1;
    if (v83 + 1 > v809)
    {
      goto LABEL_1645;
    }

    if (v83 > v89)
    {
      goto LABEL_1645;
    }

    if (v88 < &v808[64])
    {
      goto LABEL_1645;
    }

    v90 = v88 + 1;
    if (v88 + 1 > v809)
    {
      goto LABEL_1645;
    }

    if (v88 > v90)
    {
      goto LABEL_1645;
    }

    if (v87 < &__b[512])
    {
      goto LABEL_1645;
    }

    if (v87 + 1 > &__b[768])
    {
      goto LABEL_1645;
    }

    if (v87 > v87 + 1)
    {
      goto LABEL_1645;
    }

    v91 = v66 + (*v83 * *v88);
    *v87 = v91;
    v92 = v83 + 2;
    if (v83 + 2 > v809)
    {
      goto LABEL_1645;
    }

    if (v89 > v92)
    {
      goto LABEL_1645;
    }

    v93 = v88 + 2;
    if (v88 + 2 > v809)
    {
      goto LABEL_1645;
    }

    if (v90 > v93)
    {
      goto LABEL_1645;
    }

    if (v86 < &__b[256])
    {
      goto LABEL_1645;
    }

    if (v86 + 1 > &__b[512])
    {
      goto LABEL_1645;
    }

    if (v86 > v86 + 1)
    {
      goto LABEL_1645;
    }

    v94 = v91 + (*v89 * *v90);
    *v86 = v94;
    v95 = v83 + 3;
    if (v95 > v809)
    {
      goto LABEL_1645;
    }

    if (v92 > v95)
    {
      goto LABEL_1645;
    }

    v96 = v88 + 3;
    if (v96 > v809 || v93 > v96 || v85 < __b || v85 + 1 > &__b[256] || v85 > v85 + 1)
    {
      goto LABEL_1645;
    }

    v65 -= 16;
    v62 += 4;
    ++v61;
    *v85 = v94 + (*v92 * *v93);
    --v64;
    v63 -= 16;
    v60 += 4;
  }

  while (v61 != 16);
  v97 = 0;
  v98 = 0;
  v99 = &v808[67];
  v100 = 15;
  v101 = 255;
  v102 = __b;
  do
  {
    if (v98 > 0xE)
    {
      v122 = &__b[v101 + 768];
      v103 = 0.0;
      v123 = v99;
      v120 = &v808[64];
    }

    else
    {
      v103 = 0.0;
      v104 = v100;
      v105 = v102;
      v106 = &v808[64];
      do
      {
        if (v106 < &v808[64])
        {
          goto LABEL_1645;
        }

        v107 = v106 + 1;
        if (v106 + 1 > v809)
        {
          goto LABEL_1645;
        }

        if (v106 > v107)
        {
          goto LABEL_1645;
        }

        v108 = &v106[v97 + 3];
        if (v108 < &v808[64])
        {
          goto LABEL_1645;
        }

        v109 = &v106[v97 + 4];
        if (v109 > v809)
        {
          goto LABEL_1645;
        }

        if (v108 > v109)
        {
          goto LABEL_1645;
        }

        v110 = v105 + 1023;
        if (v105 + 1023 < &__b[768])
        {
          goto LABEL_1645;
        }

        if (v105 + 1024 > v803)
        {
          goto LABEL_1645;
        }

        if (v110 > v105 + 1024)
        {
          goto LABEL_1645;
        }

        v111 = v103 + (*v106 * *v108);
        *v110 = v111;
        v112 = v106 + 2;
        if (v106 + 2 > v809)
        {
          goto LABEL_1645;
        }

        if (v107 > v112)
        {
          goto LABEL_1645;
        }

        v113 = &v106[v97 + 5];
        if (v113 > v809)
        {
          goto LABEL_1645;
        }

        if (v109 > v113)
        {
          goto LABEL_1645;
        }

        v114 = v105 + 766;
        if (v105 + 766 < &__b[512])
        {
          goto LABEL_1645;
        }

        if (v105 + 767 > &__b[768])
        {
          goto LABEL_1645;
        }

        if (v114 > v105 + 767)
        {
          goto LABEL_1645;
        }

        v115 = v111 + (*v107 * *v109);
        *v114 = v115;
        v116 = v106 + 3;
        if (v106 + 3 > v809)
        {
          goto LABEL_1645;
        }

        if (v112 > v116)
        {
          goto LABEL_1645;
        }

        v117 = &v106[v97 + 6];
        if (v117 > v809)
        {
          goto LABEL_1645;
        }

        if (v113 > v117)
        {
          goto LABEL_1645;
        }

        v118 = v105 + 510;
        if (v105 + 510 < &__b[256])
        {
          goto LABEL_1645;
        }

        if (v105 + 511 > &__b[512])
        {
          goto LABEL_1645;
        }

        if (v118 > v105 + 511)
        {
          goto LABEL_1645;
        }

        v119 = v115 + (*v112 * *v113);
        *v118 = v119;
        v120 = v106 + 4;
        if (v106 + 4 > v809)
        {
          goto LABEL_1645;
        }

        if (v116 > v120)
        {
          goto LABEL_1645;
        }

        v121 = &v106[v97 + 7];
        if (v121 > v809 || v117 > v121 || v105 + 254 < __b || v105 + 255 > &__b[256] || v105 + 254 > v105 + 255)
        {
          goto LABEL_1645;
        }

        v103 = v119 + (*v116 * *v117);
        v105[254] = v103;
        v105 -= 17;
        v106 = v120;
        --v104;
      }

      while (v104);
      v122 = v105 + 1023;
      v123 = &v120[v97 + 3];
    }

    if (v120 < &v808[64] || v120 + 1 > v809 || v120 > v120 + 1 || v123 < &v808[64] || v123 + 1 > v809 || v123 > v123 + 1 || v122 < &__b[768] || v122 + 1 > v803 || v122 > v122 + 1)
    {
      goto LABEL_1645;
    }

    --v101;
    ++v98;
    v99 += 4;
    *v122 = v103 + (*v120 * *v123);
    --v102;
    --v100;
    v97 += 4;
  }

  while (v98 != 16);
  v124 = 0;
  result = &v814 + 2;
  v126 = &v832 + 4;
  v127 = -4;
  do
  {
    v774 = v127;
    v128 = (&v827 + v124);
    v129 = (&v827 + v124 + 4);
    if ((&v827 + v124) < &v827 || v129 > v843 || v128 > v129)
    {
      goto LABEL_1645;
    }

    v133 = *v128;
    v132 = v128 + 2;
    v134 = v133;
    v135 = v133 < 0.0;
    v136 = (v133 >= 0.0 ? &v827 : &v811);
    v137 = &v827;
    if (v135)
    {
      v138 = &v811 + 4;
    }

    else
    {
      v137 = v843;
      v138 = &v827 + 4;
    }

    if (v129 < &v827 || v132 > v843 || v129 > v132)
    {
      goto LABEL_1645;
    }

    v139 = *v129;
    v140 = *v129 < 0.0;
    if (*v129 >= 0.0)
    {
      v141 = &v827;
    }

    else
    {
      v141 = &v811;
    }

    v142 = v843;
    if (v140)
    {
      v142 = &v827;
    }

    v143 = &v811 + 8;
    if (!v140)
    {
      v143 = &v827 + 8;
    }

    v790 = v143;
    v144 = (&v827 + v124 + 8);
    if (v144 < &v827)
    {
      goto LABEL_1645;
    }

    v145 = (&v827 + v124 + 12);
    if (v145 > v843 || v144 > v145)
    {
      goto LABEL_1645;
    }

    v146 = *v144;
    v147 = (*v144 >= 0.0 ? &v827 : &v811);
    v148 = (*v144 >= 0.0 ? v843 : &v827);
    v149 = *v144 >= 0.0 ? &v827 | 0xC : &v811 | 0xC;
    v789 = v149;
    v150 = (&v827 + v124 + 12);
    if (v150 < &v827)
    {
      goto LABEL_1645;
    }

    v151 = (&v827 + v124 + 16);
    if (v151 > v843 || v150 > v151)
    {
      goto LABEL_1645;
    }

    v152 = *v150;
    v135 = *v150 < 0.0;
    v153 = v843;
    if (v135)
    {
      v153 = &v827;
      v154 = &v811;
    }

    else
    {
      v154 = &v827;
    }

    v155 = &v811 + 8;
    if (v134 >= 0.0)
    {
      v155 = &v827 + 8;
    }

    if (v138 < v136 || v155 > v137 || v138 > v155)
    {
      goto LABEL_1645;
    }

    v156 = &__b[v124];
    *v156 = *v156 * *(v136 + 1);
    v157 = &v812 + 1;
    if (v134 >= 0.0)
    {
      v157 = &v828 + 1;
    }

    v158 = &v812 + 2;
    if (v134 >= 0.0)
    {
      v158 = &v828 + 2;
    }

    if (v157 < v136 || v158 > v137 || v157 > v158)
    {
      goto LABEL_1645;
    }

    v156[1] = v156[1] * *v157;
    if (v134 >= 0.0)
    {
      v159 = &v827;
    }

    else
    {
      v159 = &v811;
    }

    v160 = &v813 + 4;
    if (v134 >= 0.0)
    {
      v160 = &v829 + 4;
    }

    v161 = &v813 + 8;
    if (v134 >= 0.0)
    {
      v161 = &v829 + 8;
    }

    if (v160 < v136 || v161 > v137 || v160 > v161)
    {
      goto LABEL_1645;
    }

    v156[2] = v156[2] * v159[9];
    v162 = (v134 >= 0.0 ? &v827 : &v811);
    v163 = v134 >= 0.0 ? &v830 + 4 : &v814 + 4;
    v164 = v134 >= 0.0 ? &v830 + 8 : &v814 + 8;
    if (v163 < v136 || v164 > v137 || v163 > v164)
    {
      goto LABEL_1645;
    }

    v156[3] = v156[3] * v162[13];
    v165 = (v134 >= 0.0 ? &v827 : &v811);
    v166 = v134 >= 0.0 ? &v831 + 4 : &v815 + 4;
    v167 = v134 >= 0.0 ? &v831 + 8 : &v815 + 8;
    if (v166 < v136 || v167 > v137 || v166 > v167)
    {
      goto LABEL_1645;
    }

    v156[4] = v156[4] * v165[17];
    v168 = (v134 >= 0.0 ? &v827 : &v811);
    v169 = v134 >= 0.0 ? &v832 + 4 : &v816 + 4;
    v170 = v134 >= 0.0 ? &v832 + 8 : &v816 + 8;
    if (v169 < v136 || v170 > v137 || v169 > v170)
    {
      goto LABEL_1645;
    }

    v156[5] = v156[5] * v168[21];
    if (v134 >= 0.0)
    {
      v171 = &v827;
    }

    else
    {
      v171 = &v811;
    }

    v172 = &v833 + 4;
    if (v134 < 0.0)
    {
      v172 = &v817 + 4;
    }

    v173 = &v833 + 8;
    if (v134 < 0.0)
    {
      v173 = &v817 + 8;
    }

    if (v172 < v136 || v173 > v137 || v172 > v173)
    {
      goto LABEL_1645;
    }

    v156[6] = v156[6] * v171[25];
    if (v134 >= 0.0)
    {
      v174 = &v827;
    }

    else
    {
      v174 = &v811;
    }

    v175 = &v834 + 4;
    if (v134 < 0.0)
    {
      v175 = &v818 + 4;
    }

    v176 = &v834 + 8;
    if (v134 < 0.0)
    {
      v176 = &v818 + 8;
    }

    if (v175 < v136 || v176 > v137 || v175 > v176)
    {
      goto LABEL_1645;
    }

    v156[7] = v156[7] * v174[29];
    if (v134 >= 0.0)
    {
      v177 = &v827;
    }

    else
    {
      v177 = &v811;
    }

    v178 = &v835 + 4;
    if (v134 < 0.0)
    {
      v178 = &v819 + 4;
    }

    v179 = &v835 + 8;
    if (v134 < 0.0)
    {
      v179 = &v819 + 8;
    }

    if (v178 < v136 || v179 > v137 || v178 > v179)
    {
      goto LABEL_1645;
    }

    v156[8] = v156[8] * v177[33];
    if (v134 >= 0.0)
    {
      v180 = &v827;
    }

    else
    {
      v180 = &v811;
    }

    v181 = &v836 + 4;
    if (v134 < 0.0)
    {
      v181 = &v820 + 4;
    }

    v182 = &v836 + 8;
    if (v134 < 0.0)
    {
      v182 = &v820 + 8;
    }

    if (v181 < v136 || v182 > v137 || v181 > v182)
    {
      goto LABEL_1645;
    }

    v156[9] = v156[9] * v180[37];
    if (v134 >= 0.0)
    {
      v183 = &v827;
    }

    else
    {
      v183 = &v811;
    }

    v184 = &v837 + 4;
    if (v134 < 0.0)
    {
      v184 = &v821 + 4;
    }

    v185 = &v837 + 8;
    if (v134 < 0.0)
    {
      v185 = &v821 + 8;
    }

    if (v184 < v136 || v185 > v137 || v184 > v185)
    {
      goto LABEL_1645;
    }

    v156[10] = v156[10] * v183[41];
    if (v134 >= 0.0)
    {
      v186 = &v827;
    }

    else
    {
      v186 = &v811;
    }

    v187 = &v838 + 4;
    if (v134 < 0.0)
    {
      v187 = &v822 + 4;
    }

    v188 = &v838 + 8;
    if (v134 < 0.0)
    {
      v188 = &v822 + 8;
    }

    if (v187 < v136 || v188 > v137 || v187 > v188)
    {
      goto LABEL_1645;
    }

    v156[11] = v156[11] * v186[45];
    if (v134 >= 0.0)
    {
      v189 = &v827;
    }

    else
    {
      v189 = &v811;
    }

    v190 = &v839 + 4;
    if (v134 < 0.0)
    {
      v190 = &v823 + 4;
    }

    v191 = &v839 + 8;
    if (v134 < 0.0)
    {
      v191 = &v823 + 8;
    }

    if (v190 < v136 || v191 > v137 || v190 > v191)
    {
      goto LABEL_1645;
    }

    v156[12] = v156[12] * v189[49];
    if (v134 >= 0.0)
    {
      v192 = &v827;
    }

    else
    {
      v192 = &v811;
    }

    v193 = &v840 + 4;
    if (v134 < 0.0)
    {
      v193 = &v824 + 4;
    }

    v194 = &v840 + 8;
    if (v134 < 0.0)
    {
      v194 = &v824 + 8;
    }

    if (v193 < v136 || v194 > v137 || v193 > v194)
    {
      goto LABEL_1645;
    }

    v156[13] = v156[13] * v192[53];
    if (v134 >= 0.0)
    {
      v195 = &v827;
    }

    else
    {
      v195 = &v811;
    }

    v196 = &v841 + 4;
    if (v134 < 0.0)
    {
      v196 = &v825 + 4;
    }

    v197 = &v841 + 8;
    if (v134 < 0.0)
    {
      v197 = &v825 + 8;
    }

    if (v196 < v136 || v197 > v137 || v196 > v197)
    {
      goto LABEL_1645;
    }

    v156[14] = v156[14] * v195[57];
    if (v134 >= 0.0)
    {
      v198 = &v827;
    }

    else
    {
      v198 = &v811;
    }

    v199 = &v842 + 4;
    if (v134 < 0.0)
    {
      v199 = &v826 + 4;
    }

    v200 = &v842 + 8;
    if (v134 < 0.0)
    {
      v200 = &v826 + 8;
    }

    if (v199 < v136 || v200 > v137 || v199 > v200)
    {
      goto LABEL_1645;
    }

    v156[15] = v156[15] * v198[61];
    v201 = &v811 | 0xC;
    if (v139 >= 0.0)
    {
      v201 = &v827 | 0xC;
    }

    if (v790 < v141 || v201 > v142 || v790 > v201)
    {
      goto LABEL_1645;
    }

    v156[256] = v156[256] * v141[2];
    if (v139 >= 0.0)
    {
      v202 = &v827;
    }

    else
    {
      v202 = &v811;
    }

    v203 = &v812 + 8;
    if (v139 >= 0.0)
    {
      v203 = &v828 + 8;
    }

    v204 = &v812 + 12;
    if (v139 >= 0.0)
    {
      v204 = &v828 + 12;
    }

    if (v203 < v141 || v204 > v142 || v203 > v204)
    {
      goto LABEL_1645;
    }

    v156[257] = v156[257] * v202[6];
    if (v139 >= 0.0)
    {
      v205 = &v827;
    }

    else
    {
      v205 = &v811;
    }

    v206 = &v813 + 8;
    if (v139 >= 0.0)
    {
      v206 = &v829 + 8;
    }

    v207 = &v813 + 12;
    if (v139 >= 0.0)
    {
      v207 = &v829 + 12;
    }

    if (v206 < v141 || v207 > v142 || v206 > v207)
    {
      goto LABEL_1645;
    }

    v156[258] = v156[258] * v205[10];
    if (v139 >= 0.0)
    {
      v208 = &v827;
    }

    else
    {
      v208 = &v811;
    }

    if (v139 >= 0.0)
    {
      v209 = &v830 + 8;
    }

    else
    {
      v209 = &v814 + 8;
    }

    v210 = &v814 + 12;
    if (v139 >= 0.0)
    {
      v210 = &v830 + 12;
    }

    if (v209 < v141 || v210 > v142 || v209 > v210)
    {
      goto LABEL_1645;
    }

    v156[259] = v156[259] * v208[14];
    if (v139 >= 0.0)
    {
      v211 = &v827;
    }

    else
    {
      v211 = &v811;
    }

    if (v139 >= 0.0)
    {
      v212 = &v831 + 8;
    }

    else
    {
      v212 = &v815 + 8;
    }

    v213 = &v815 + 12;
    if (v139 >= 0.0)
    {
      v213 = &v831 + 12;
    }

    if (v212 < v141 || v213 > v142 || v212 > v213)
    {
      goto LABEL_1645;
    }

    v156[260] = v156[260] * v211[18];
    if (v139 >= 0.0)
    {
      v214 = &v827;
    }

    else
    {
      v214 = &v811;
    }

    if (v139 >= 0.0)
    {
      v215 = &v832 + 8;
    }

    else
    {
      v215 = &v816 + 8;
    }

    v216 = &v816 + 12;
    if (v139 >= 0.0)
    {
      v216 = &v832 + 12;
    }

    if (v215 < v141 || v216 > v142 || v215 > v216)
    {
      goto LABEL_1645;
    }

    v156[261] = v156[261] * v214[22];
    if (v139 >= 0.0)
    {
      v217 = &v827;
    }

    else
    {
      v217 = &v811;
    }

    v218 = &v817 + 8;
    if (v139 >= 0.0)
    {
      v218 = &v833 + 8;
    }

    v219 = &v817 + 12;
    if (v139 >= 0.0)
    {
      v219 = &v833 + 12;
    }

    if (v218 < v141 || v219 > v142 || v218 > v219)
    {
      goto LABEL_1645;
    }

    v156[262] = v156[262] * v217[26];
    if (v139 >= 0.0)
    {
      v220 = &v827;
    }

    else
    {
      v220 = &v811;
    }

    v221 = &v818 + 8;
    if (v139 >= 0.0)
    {
      v221 = &v834 + 8;
    }

    v222 = &v818 + 12;
    if (v139 >= 0.0)
    {
      v222 = &v834 + 12;
    }

    if (v221 < v141 || v222 > v142 || v221 > v222)
    {
      goto LABEL_1645;
    }

    v156[263] = v156[263] * v220[30];
    if (v139 >= 0.0)
    {
      v223 = &v827;
    }

    else
    {
      v223 = &v811;
    }

    v224 = &v819 + 8;
    if (v139 >= 0.0)
    {
      v224 = &v835 + 8;
    }

    v225 = &v819 + 12;
    if (v139 >= 0.0)
    {
      v225 = &v835 + 12;
    }

    if (v224 < v141 || v225 > v142 || v224 > v225)
    {
      goto LABEL_1645;
    }

    v156[264] = v156[264] * v223[34];
    if (v139 >= 0.0)
    {
      v226 = &v827;
    }

    else
    {
      v226 = &v811;
    }

    v227 = &v820 + 8;
    if (v139 >= 0.0)
    {
      v227 = &v836 + 8;
    }

    v228 = &v820 + 12;
    if (v139 >= 0.0)
    {
      v228 = &v836 + 12;
    }

    if (v227 < v141 || v228 > v142 || v227 > v228)
    {
      goto LABEL_1645;
    }

    v156[265] = v156[265] * v226[38];
    if (v139 >= 0.0)
    {
      v229 = &v827;
    }

    else
    {
      v229 = &v811;
    }

    v230 = &v821 + 8;
    if (v139 >= 0.0)
    {
      v230 = &v837 + 8;
    }

    v231 = &v821 + 12;
    if (v139 >= 0.0)
    {
      v231 = &v837 + 12;
    }

    if (v230 < v141 || v231 > v142 || v230 > v231)
    {
      goto LABEL_1645;
    }

    v156[266] = v156[266] * v229[42];
    if (v139 >= 0.0)
    {
      v232 = &v827;
    }

    else
    {
      v232 = &v811;
    }

    v233 = &v822 + 8;
    if (v139 >= 0.0)
    {
      v233 = &v838 + 8;
    }

    v234 = &v822 + 12;
    if (v139 >= 0.0)
    {
      v234 = &v838 + 12;
    }

    if (v233 < v141 || v234 > v142 || v233 > v234)
    {
      goto LABEL_1645;
    }

    v156[267] = v156[267] * v232[46];
    if (v139 >= 0.0)
    {
      v235 = &v827;
    }

    else
    {
      v235 = &v811;
    }

    v236 = &v823 + 8;
    if (v139 >= 0.0)
    {
      v236 = &v839 + 8;
    }

    v237 = &v823 + 12;
    if (v139 >= 0.0)
    {
      v237 = &v839 + 12;
    }

    if (v236 < v141 || v237 > v142 || v236 > v237)
    {
      goto LABEL_1645;
    }

    v156[268] = v156[268] * v235[50];
    if (v139 >= 0.0)
    {
      v238 = &v827;
    }

    else
    {
      v238 = &v811;
    }

    v239 = &v824 + 8;
    if (v139 >= 0.0)
    {
      v239 = &v840 + 8;
    }

    v240 = &v824 + 12;
    if (v139 >= 0.0)
    {
      v240 = &v840 + 12;
    }

    if (v239 < v141 || v240 > v142 || v239 > v240)
    {
      goto LABEL_1645;
    }

    v156[269] = v156[269] * v238[54];
    if (v139 >= 0.0)
    {
      v241 = &v827;
    }

    else
    {
      v241 = &v811;
    }

    v242 = &v825 + 8;
    if (v139 >= 0.0)
    {
      v242 = &v841 + 8;
    }

    v243 = &v825 + 12;
    if (v139 >= 0.0)
    {
      v243 = &v841 + 12;
    }

    if (v242 < v141 || v243 > v142 || v242 > v243)
    {
      goto LABEL_1645;
    }

    v156[270] = v156[270] * v241[58];
    if (v139 >= 0.0)
    {
      v244 = &v827;
    }

    else
    {
      v244 = &v811;
    }

    v245 = &v826 + 8;
    if (v139 >= 0.0)
    {
      v245 = &v842 + 8;
    }

    v246 = &v826 + 12;
    if (v139 >= 0.0)
    {
      v246 = &v842 + 12;
    }

    if (v245 < v141 || v246 > v142 || v245 > v246)
    {
      goto LABEL_1645;
    }

    v156[271] = v156[271] * v244[62];
    v247 = &v812;
    if (v146 >= 0.0)
    {
      v247 = &v828;
    }

    if (v789 < v147 || v247 > v148 || v789 > v247)
    {
      goto LABEL_1645;
    }

    v156[512] = v156[512] * v147[3];
    if (v146 >= 0.0)
    {
      v248 = &v827;
    }

    else
    {
      v248 = &v811;
    }

    v249 = &v812 + 12;
    if (v146 >= 0.0)
    {
      v249 = &v828 + 12;
    }

    v250 = &v813;
    if (v146 >= 0.0)
    {
      v250 = &v829;
    }

    if (v249 < v147 || v250 > v148 || v249 > v250)
    {
      goto LABEL_1645;
    }

    v156[513] = v156[513] * v248[7];
    if (v146 >= 0.0)
    {
      v251 = &v827;
    }

    else
    {
      v251 = &v811;
    }

    v252 = &v813 + 12;
    if (v146 >= 0.0)
    {
      v252 = &v829 + 12;
    }

    v253 = &v814;
    if (v146 >= 0.0)
    {
      v253 = &v830;
    }

    if (v252 < v147 || v253 > v148 || v252 > v253)
    {
      goto LABEL_1645;
    }

    v156[514] = v156[514] * v251[11];
    if (v146 >= 0.0)
    {
      v254 = &v827;
    }

    else
    {
      v254 = &v811;
    }

    v255 = &v814 + 12;
    if (v146 >= 0.0)
    {
      v255 = &v830 + 12;
    }

    v256 = &v815;
    if (v146 >= 0.0)
    {
      v256 = &v831;
    }

    if (v255 < v147 || v256 > v148 || v255 > v256)
    {
      goto LABEL_1645;
    }

    v156[515] = v156[515] * v254[15];
    if (v146 >= 0.0)
    {
      v257 = &v827;
    }

    else
    {
      v257 = &v811;
    }

    v258 = &v815 + 12;
    if (v146 >= 0.0)
    {
      v258 = &v831 + 12;
    }

    v259 = &v816;
    if (v146 >= 0.0)
    {
      v259 = &v832;
    }

    if (v258 < v147 || v259 > v148 || v258 > v259)
    {
      goto LABEL_1645;
    }

    v156[516] = v156[516] * v257[19];
    if (v146 >= 0.0)
    {
      v260 = &v827;
    }

    else
    {
      v260 = &v811;
    }

    v261 = &v816 + 12;
    if (v146 >= 0.0)
    {
      v261 = &v832 + 12;
    }

    v262 = &v817;
    if (v146 >= 0.0)
    {
      v262 = &v833;
    }

    if (v261 < v147 || v262 > v148 || v261 > v262)
    {
      goto LABEL_1645;
    }

    v156[517] = v156[517] * v260[23];
    if (v146 >= 0.0)
    {
      v263 = &v827;
    }

    else
    {
      v263 = &v811;
    }

    v264 = &v817 + 12;
    if (v146 >= 0.0)
    {
      v264 = &v833 + 12;
    }

    v265 = &v818;
    if (v146 >= 0.0)
    {
      v265 = &v834;
    }

    if (v264 < v147 || v265 > v148 || v264 > v265)
    {
      goto LABEL_1645;
    }

    v156[518] = v156[518] * v263[27];
    if (v146 >= 0.0)
    {
      v266 = &v827;
    }

    else
    {
      v266 = &v811;
    }

    v267 = &v818 + 12;
    if (v146 >= 0.0)
    {
      v267 = &v834 + 12;
    }

    v268 = &v819;
    if (v146 >= 0.0)
    {
      v268 = &v835;
    }

    if (v267 < v147 || v268 > v148 || v267 > v268)
    {
      goto LABEL_1645;
    }

    v156[519] = v156[519] * v266[31];
    if (v146 >= 0.0)
    {
      v269 = &v827;
    }

    else
    {
      v269 = &v811;
    }

    v270 = &v819 + 12;
    if (v146 >= 0.0)
    {
      v270 = &v835 + 12;
    }

    v271 = &v820;
    if (v146 >= 0.0)
    {
      v271 = &v836;
    }

    if (v270 < v147 || v271 > v148 || v270 > v271)
    {
      goto LABEL_1645;
    }

    v156[520] = v156[520] * v269[35];
    if (v146 >= 0.0)
    {
      v272 = &v827;
    }

    else
    {
      v272 = &v811;
    }

    v273 = &v820 + 12;
    if (v146 >= 0.0)
    {
      v273 = &v836 + 12;
    }

    v274 = &v821;
    if (v146 >= 0.0)
    {
      v274 = &v837;
    }

    if (v273 < v147 || v274 > v148 || v273 > v274)
    {
      goto LABEL_1645;
    }

    v156[521] = v156[521] * v272[39];
    if (v146 >= 0.0)
    {
      v275 = &v827;
    }

    else
    {
      v275 = &v811;
    }

    v276 = &v821 + 12;
    if (v146 >= 0.0)
    {
      v276 = &v837 + 12;
    }

    v277 = &v822;
    if (v146 >= 0.0)
    {
      v277 = &v838;
    }

    if (v276 < v147 || v277 > v148 || v276 > v277)
    {
      goto LABEL_1645;
    }

    v156[522] = v156[522] * v275[43];
    if (v146 >= 0.0)
    {
      v278 = &v827;
    }

    else
    {
      v278 = &v811;
    }

    v279 = &v822 + 12;
    if (v146 >= 0.0)
    {
      v279 = &v838 + 12;
    }

    v280 = &v823;
    if (v146 >= 0.0)
    {
      v280 = &v839;
    }

    if (v279 < v147 || v280 > v148 || v279 > v280)
    {
      goto LABEL_1645;
    }

    v156[523] = v156[523] * v278[47];
    if (v146 >= 0.0)
    {
      v281 = &v827;
    }

    else
    {
      v281 = &v811;
    }

    v282 = &v823 + 12;
    if (v146 >= 0.0)
    {
      v282 = &v839 + 12;
    }

    v283 = &v824;
    if (v146 >= 0.0)
    {
      v283 = &v840;
    }

    if (v282 < v147 || v283 > v148 || v282 > v283)
    {
      goto LABEL_1645;
    }

    v156[524] = v156[524] * v281[51];
    if (v146 >= 0.0)
    {
      v284 = &v827;
    }

    else
    {
      v284 = &v811;
    }

    v285 = &v824 + 12;
    if (v146 >= 0.0)
    {
      v285 = &v840 + 12;
    }

    v286 = &v825;
    if (v146 >= 0.0)
    {
      v286 = &v841;
    }

    if (v285 < v147 || v286 > v148 || v285 > v286)
    {
      goto LABEL_1645;
    }

    v156[525] = v156[525] * v284[55];
    if (v146 >= 0.0)
    {
      v287 = &v827;
    }

    else
    {
      v287 = &v811;
    }

    v288 = &v825 + 12;
    if (v146 >= 0.0)
    {
      v288 = &v841 + 12;
    }

    v289 = &v826;
    if (v146 >= 0.0)
    {
      v289 = &v842;
    }

    if (v288 < v147 || v289 > v148 || v288 > v289)
    {
      goto LABEL_1645;
    }

    v156[526] = v156[526] * v287[59];
    if (v146 >= 0.0)
    {
      v290 = &v827;
    }

    else
    {
      v290 = &v811;
    }

    v291 = &v826 + 12;
    if (v146 >= 0.0)
    {
      v291 = &v842 + 12;
    }

    if (v291 < v147 || v291 > v148)
    {
      goto LABEL_1645;
    }

    v156[527] = v156[527] * v290[63];
    v292 = &v811 + 1;
    if (v152 >= 0.0)
    {
      v292 = &v827 + 1;
    }

    if (v292 > v153 || v154 > v292)
    {
      goto LABEL_1645;
    }

    v156[768] = v156[768] * *v154;
    if (v152 >= 0.0)
    {
      v293 = &v827;
    }

    else
    {
      v293 = &v811;
    }

    v294 = &v812;
    if (v152 >= 0.0)
    {
      v294 = &v828;
    }

    v295 = &v812 + 4;
    if (v152 >= 0.0)
    {
      v295 = &v828 + 4;
    }

    if (v294 < v154 || v295 > v153 || v294 > v295)
    {
      goto LABEL_1645;
    }

    v156[769] = v156[769] * v293[4];
    if (v152 >= 0.0)
    {
      v296 = &v827;
    }

    else
    {
      v296 = &v811;
    }

    v297 = &v813;
    if (v152 >= 0.0)
    {
      v297 = &v829;
    }

    v298 = &v813 + 4;
    if (v152 >= 0.0)
    {
      v298 = &v829 + 4;
    }

    if (v297 < v154 || v298 > v153 || v297 > v298)
    {
      goto LABEL_1645;
    }

    v156[770] = v156[770] * v296[8];
    v299 = (v152 >= 0.0 ? &v827 : &v811);
    v300 = &v814;
    if (v152 < 0.0)
    {
      v301 = &v814 + 4;
    }

    else
    {
      v300 = &v830;
      v301 = &v830 + 4;
    }

    if (v300 < v154 || v301 > v153 || v300 > v301)
    {
      goto LABEL_1645;
    }

    v156[771] = v156[771] * v299[12];
    v302 = (v152 >= 0.0 ? &v827 : &v811);
    v303 = &v815;
    if (v152 < 0.0)
    {
      v304 = &v815 + 4;
    }

    else
    {
      v303 = &v831;
      v304 = &v831 + 4;
    }

    if (v303 < v154 || v304 > v153 || v303 > v304)
    {
      goto LABEL_1645;
    }

    v156[772] = v156[772] * v302[16];
    v305 = (v152 >= 0.0 ? &v827 : &v811);
    v306 = &v816;
    if (v152 < 0.0)
    {
      v307 = &v816 + 4;
    }

    else
    {
      v306 = &v832;
      v307 = &v832 + 4;
    }

    if (v306 < v154 || v307 > v153 || v306 > v307)
    {
      goto LABEL_1645;
    }

    v156[773] = v156[773] * v305[20];
    if (v152 >= 0.0)
    {
      v308 = &v827;
    }

    else
    {
      v308 = &v811;
    }

    v309 = &v817;
    if (v152 >= 0.0)
    {
      v309 = &v833;
    }

    v310 = &v817 + 4;
    if (v152 >= 0.0)
    {
      v310 = &v833 + 4;
    }

    if (v309 < v154 || v310 > v153 || v309 > v310)
    {
      goto LABEL_1645;
    }

    v156[774] = v156[774] * v308[24];
    if (v152 >= 0.0)
    {
      v311 = &v827;
    }

    else
    {
      v311 = &v811;
    }

    v312 = &v818;
    if (v152 >= 0.0)
    {
      v312 = &v834;
    }

    v313 = &v818 + 4;
    if (v152 >= 0.0)
    {
      v313 = &v834 + 4;
    }

    if (v312 < v154 || v313 > v153 || v312 > v313)
    {
      goto LABEL_1645;
    }

    v156[775] = v156[775] * v311[28];
    if (v152 >= 0.0)
    {
      v314 = &v827;
    }

    else
    {
      v314 = &v811;
    }

    v315 = &v819;
    if (v152 >= 0.0)
    {
      v315 = &v835;
    }

    v316 = &v819 + 4;
    if (v152 >= 0.0)
    {
      v316 = &v835 + 4;
    }

    if (v315 < v154 || v316 > v153 || v315 > v316)
    {
      goto LABEL_1645;
    }

    v156[776] = v156[776] * v314[32];
    if (v152 >= 0.0)
    {
      v317 = &v827;
    }

    else
    {
      v317 = &v811;
    }

    v318 = &v820;
    if (v152 >= 0.0)
    {
      v318 = &v836;
    }

    v319 = &v820 + 4;
    if (v152 >= 0.0)
    {
      v319 = &v836 + 4;
    }

    if (v318 < v154 || v319 > v153 || v318 > v319)
    {
      goto LABEL_1645;
    }

    v156[777] = v156[777] * v317[36];
    if (v152 >= 0.0)
    {
      v320 = &v827;
    }

    else
    {
      v320 = &v811;
    }

    v321 = &v821;
    if (v152 >= 0.0)
    {
      v321 = &v837;
    }

    v322 = &v821 + 4;
    if (v152 >= 0.0)
    {
      v322 = &v837 + 4;
    }

    if (v321 < v154 || v322 > v153 || v321 > v322)
    {
      goto LABEL_1645;
    }

    v156[778] = v156[778] * v320[40];
    if (v152 >= 0.0)
    {
      v323 = &v827;
    }

    else
    {
      v323 = &v811;
    }

    v324 = &v822;
    if (v152 >= 0.0)
    {
      v324 = &v838;
    }

    v325 = &v822 + 4;
    if (v152 >= 0.0)
    {
      v325 = &v838 + 4;
    }

    if (v324 < v154 || v325 > v153 || v324 > v325)
    {
      goto LABEL_1645;
    }

    v156[779] = v156[779] * v323[44];
    if (v152 >= 0.0)
    {
      v326 = &v827;
    }

    else
    {
      v326 = &v811;
    }

    v327 = &v823;
    if (v152 >= 0.0)
    {
      v327 = &v839;
    }

    v328 = &v823 + 4;
    if (v152 >= 0.0)
    {
      v328 = &v839 + 4;
    }

    if (v327 < v154 || v328 > v153 || v327 > v328)
    {
      goto LABEL_1645;
    }

    v156[780] = v156[780] * v326[48];
    if (v152 >= 0.0)
    {
      v329 = &v827;
    }

    else
    {
      v329 = &v811;
    }

    v330 = &v824;
    if (v152 >= 0.0)
    {
      v330 = &v840;
    }

    v331 = &v824 + 4;
    if (v152 >= 0.0)
    {
      v331 = &v840 + 4;
    }

    if (v330 < v154 || v331 > v153 || v330 > v331)
    {
      goto LABEL_1645;
    }

    v156[781] = v156[781] * v329[52];
    if (v152 >= 0.0)
    {
      v332 = &v827;
    }

    else
    {
      v332 = &v811;
    }

    v333 = &v825;
    if (v152 >= 0.0)
    {
      v333 = &v841;
    }

    v334 = &v825 + 4;
    if (v152 >= 0.0)
    {
      v334 = &v841 + 4;
    }

    if (v333 < v154 || v334 > v153 || v333 > v334)
    {
      goto LABEL_1645;
    }

    v156[782] = v156[782] * v332[56];
    if (v152 >= 0.0)
    {
      v335 = &v827;
    }

    else
    {
      v335 = &v811;
    }

    v336 = &v826;
    if (v152 >= 0.0)
    {
      v336 = &v842;
    }

    v337 = &v826 + 4;
    if (v152 >= 0.0)
    {
      v337 = &v842 + 4;
    }

    if (v336 < v154 || v337 > v153 || v336 > v337)
    {
      goto LABEL_1645;
    }

    v156[783] = v156[783] * v335[60];
    v127 = v774 + 4;
    v124 += 16;
  }

  while ((v774 + 4) < 0x3C);
  v338 = a9;
  v339 = a10;
  v340 = a11;
  if (a9[1] >= 1)
  {
    v781 = 0;
    v783 = a9 + 18;
    v341 = (a10 + 1);
    v343 = (a10 + 1) > a11 || v341 < a10;
    v780 = v343;
    v344 = (a10 + 2);
    v345 = (a10 + 2) <= a11;
    v779 = a10 + 1;
    if (v341 > (a10 + 2))
    {
      v345 = 0;
    }

    v777 = v345;
    v346 = v341 > v344 || (a10 + 2) > a11;
    v778 = v346;
    v347 = (a10 + 3);
    v350 = (a10 + 3) > a11 || v344 > v347 || v344 < a10;
    v776 = v350;
    v353 = (a10 + 4) <= a11 && v347 <= (a10 + 4) && v347 >= a10;
    v775 = v353;
    v782 = a9 + 5;
    LODWORD(v354) = a9[3];
    v355 = 1.0;
    v356 = -1.0;
    do
    {
      if (v354 >= 1)
      {
        v357 = &tipos[2 * (v781 & 0x3FFFFFFF)];
        v358 = v354;
        v359 = v792;
        do
        {
          v360 = v357 + 2;
          v362 = v357 < tipos || v360 > pit_max_12k8 || v357 > v360;
          if (v362 || v359 >= v794 || v359 < v792)
          {
            goto LABEL_1645;
          }

          v363 = *v357;
          v357 = (v357 + 2);
          *v359++ = v363;
          --v358;
        }

        while (v358);
      }

      if ((v354 & 3) == 0)
      {
        goto LABEL_891;
      }

      v364 = *v783;
      if (*v783 == 3)
      {
        v367 = v792 + v354;
        if (v367 - 1 >= v794 || v367 - 1 < v792 || v367 >= v794 || v367 < v792)
        {
          goto LABEL_1645;
        }

        v368 = (*(v367 - 1) + 1) & 3;
      }

      else if (v364 == 1)
      {
        v369 = v792 + (v354 & 0xFFFFFFFFFFFFFFFCLL);
        if (v369 >= v794)
        {
          goto LABEL_1645;
        }

        if (v369 < v792)
        {
          goto LABEL_1645;
        }

        *v369 = 2 * (v781 & 1);
        v367 = v369 + 1;
        if (v367 >= v794 || v367 < v792)
        {
          goto LABEL_1645;
        }

        v368 = (2 * (v781 & 1)) ^ 2;
      }

      else
      {
        if (v364)
        {
          v370 = (&tipos[2 * v781] + 2 * v354);
          if (v370 < tipos)
          {
            goto LABEL_1645;
          }

          if (v370 + 2 > pit_max_12k8)
          {
            goto LABEL_1645;
          }

          if (v370 > (v370 + 2))
          {
            goto LABEL_1645;
          }

          v371 = v792 + v354;
          if (v371 >= v794 || v371 < v792)
          {
            goto LABEL_1645;
          }

          *v371 = *v370;
          goto LABEL_891;
        }

        v365 = 0;
        v366 = v792 + (v354 & 0xFFFFFFFFFFFFFFFCLL);
        do
        {
          if (&v366[v365] >= v794 || &v366[v365] < v792)
          {
            goto LABEL_1645;
          }

          v366[v365] = v365;
          ++v365;
        }

        while ((v354 & 3) != v365);
        v367 = v792 + v354;
        if (v367 - 1 >= v794 || v367 - 1 < v792 || v367 >= v794 || v367 < v792)
        {
          goto LABEL_1645;
        }

        v368 = *(v367 - 1);
      }

      *v367 = v368;
LABEL_891:
      v372 = v338[4];
      if (v372 == 2)
      {
        v376 = LOBYTE(v792[0]);
        v377 = &v798[-1] + LOBYTE(v792[0]);
        v379 = v377 + 1 <= v798 && v377 <= v377 + 1 && v377 >= &v797;
        v380 = v780;
        if (!v379)
        {
          v380 = 1;
        }

        if (v380)
        {
          goto LABEL_1645;
        }

        v381 = *v377;
        *v339 = v381;
        v382 = BYTE1(v792[0]);
        v383 = &v798[-1] + BYTE1(v792[0]);
        if (v383 < &v797 || v383 + 1 > v798 || v383 > v383 + 1 || !v777)
        {
          goto LABEL_1645;
        }

        v384 = *v383;
        *v779 = v384;
        v385 = &v784[v381];
        v386 = v385 + 1;
        v387 = v385 < v784 || v386 > v785;
        v388 = v387 || v385 > v386;
        v389 = &v784[v384];
        v390 = v389 + 1;
        v391 = !v388 && v389 >= v784;
        v392 = !v391 || v390 > v785;
        if (v392 || v389 > v390)
        {
          goto LABEL_1645;
        }

        v394 = &v803[4 * v376];
        v395 = &v394[v381 >> 2];
        if (v395 < v394)
        {
          goto LABEL_1645;
        }

        if (v395 + 1 > v394 + 16)
        {
          goto LABEL_1645;
        }

        if (v395 > v395 + 1)
        {
          goto LABEL_1645;
        }

        v396 = &v803[4 * v382];
        v397 = v384 >> 2;
        v398 = &v396[v397];
        if (v398 < v396)
        {
          goto LABEL_1645;
        }

        if (v398 + 1 > v396 + 16)
        {
          goto LABEL_1645;
        }

        if (v398 > v398 + 1)
        {
          goto LABEL_1645;
        }

        v399 = &__b[256 * v376];
        v400 = &v399[16 * (v381 >> 2) + v397];
        if (v400 < v399)
        {
          goto LABEL_1645;
        }

        if (v400 + 1 > v399 + 256)
        {
          goto LABEL_1645;
        }

        if (v400 > v400 + 1)
        {
          goto LABEL_1645;
        }

        v401 = &v827 + 4 * v381;
        if (v401 < &v827 || v401 + 4 > v843 || v401 > v401 + 4)
        {
          goto LABEL_1645;
        }

        v402 = &v808[192];
        if (*(&v827 + v381) >= 0.0)
        {
          v402 = &v808[64];
        }

        v403 = &v827 + 4 * v384;
        if (v403 < &v827)
        {
          goto LABEL_1645;
        }

        result = v843;
        if (v403 + 4 > v843 || v403 > v403 + 4)
        {
          goto LABEL_1645;
        }

        v404 = &v402[-v381];
        v405 = &v808[192];
        if (*(&v827 + v384) >= 0.0)
        {
          v405 = &v808[64];
        }

        if (v404 < v808)
        {
          goto LABEL_1645;
        }

        v406 = v404 + 1;
        if (v404 + 1 > v809)
        {
          goto LABEL_1645;
        }

        if (v404 > v406)
        {
          goto LABEL_1645;
        }

        v407 = &v405[-v384];
        if (v407 < v808)
        {
          goto LABEL_1645;
        }

        v408 = v407 + 1;
        if (v407 + 1 > v809)
        {
          goto LABEL_1645;
        }

        if (v407 > v408)
        {
          goto LABEL_1645;
        }

        v409 = *v385;
        v410 = *v389;
        v411 = *v395;
        v412 = *v398;
        v413 = *v400;
        v414 = v404 + 2;
        *&v811 = *v404 + *v407;
        if (v406 < v808)
        {
          goto LABEL_1645;
        }

        if (v414 > v809)
        {
          goto LABEL_1645;
        }

        if (v406 > v414)
        {
          goto LABEL_1645;
        }

        if (v408 < v808)
        {
          goto LABEL_1645;
        }

        v415 = v407 + 2;
        if (v407 + 2 > v809)
        {
          goto LABEL_1645;
        }

        if (v408 > v415)
        {
          goto LABEL_1645;
        }

        *(&v811 + 1) = v404[1] + *v408;
        if (v414 < v808)
        {
          goto LABEL_1645;
        }

        v416 = v404 + 3;
        if (v404 + 3 > v809)
        {
          goto LABEL_1645;
        }

        if (v414 > v416)
        {
          goto LABEL_1645;
        }

        if (v415 < v808)
        {
          goto LABEL_1645;
        }

        v417 = v407 + 3;
        if (v407 + 3 > v809)
        {
          goto LABEL_1645;
        }

        if (v415 > v417)
        {
          goto LABEL_1645;
        }

        *(&v811 + 2) = v404[2] + *v415;
        if (v416 < v808 || v404 + 4 > v809 || v416 > v404 + 4 || v417 < v808 || v407 + 4 > v809 || v417 > v407 + 4)
        {
          goto LABEL_1645;
        }

        v418 = 0;
        v375 = v409 + v410;
        v374 = (v411 + v412) + v413;
        *(&v811 + 3) = *v416 + *v417;
        v419 = -2;
        do
        {
          v420 = &v404[v418 + 4];
          v421 = &v404[v418 + 5];
          v423 = v420 < v808 || v421 > v809 || v420 > v421;
          v424 = &v407[v418 + 4];
          v425 = &v407[v418 + 5];
          v428 = v423 || v424 < v808 || v425 > v809 || v424 > v425;
          v429 = (&v811 + v418 * 4 + 16);
          v430 = (&v812 + v418 * 4 + 4);
          if (v428 || v429 < &v811 || v430 > &v827 || v429 > v430)
          {
            goto LABEL_1645;
          }

          *v429 = *v420 + *v424;
          if (v421 < v808)
          {
            goto LABEL_1645;
          }

          v434 = &v404[v418 + 6];
          if (v434 > v809)
          {
            goto LABEL_1645;
          }

          if (v421 > v434)
          {
            goto LABEL_1645;
          }

          v435 = &v407[v418 + 5];
          if (v435 < v808)
          {
            goto LABEL_1645;
          }

          v436 = &v407[v418 + 6];
          if (v436 > v809)
          {
            goto LABEL_1645;
          }

          if (v435 > v436)
          {
            goto LABEL_1645;
          }

          v437 = (&v812 + v418 * 4 + 4);
          if ((&v812 + v418 * 4 + 4) < &v811)
          {
            goto LABEL_1645;
          }

          if ((&v812 + v418 * 4 + 8) > &v827)
          {
            goto LABEL_1645;
          }

          if (v437 > (&v812 + v418 * 4 + 8))
          {
            goto LABEL_1645;
          }

          *v437 = *v421 + *v435;
          v438 = &v404[v418 + 6];
          if (v438 < v808)
          {
            goto LABEL_1645;
          }

          v439 = &v404[v418 + 7];
          if (v439 > v809)
          {
            goto LABEL_1645;
          }

          if (v438 > v439)
          {
            goto LABEL_1645;
          }

          v440 = &v407[v418 + 6];
          if (v440 < v808)
          {
            goto LABEL_1645;
          }

          v441 = &v407[v418 + 7];
          if (v441 > v809)
          {
            goto LABEL_1645;
          }

          if (v440 > v441)
          {
            goto LABEL_1645;
          }

          v442 = (&v812 + v418 * 4 + 8);
          if ((&v812 + v418 * 4 + 8) < &v811)
          {
            goto LABEL_1645;
          }

          if ((&v812 + v418 * 4 + 12) > &v827)
          {
            goto LABEL_1645;
          }

          if (v442 > (&v812 + v418 * 4 + 12))
          {
            goto LABEL_1645;
          }

          *v442 = *v438 + *v440;
          v443 = &v404[v418 + 7];
          if (v443 < v808)
          {
            goto LABEL_1645;
          }

          v444 = &v404[v418 + 8];
          if (v444 > v809)
          {
            goto LABEL_1645;
          }

          if (v443 > v444)
          {
            goto LABEL_1645;
          }

          v445 = &v407[v418 + 7];
          if (v445 < v808)
          {
            goto LABEL_1645;
          }

          v446 = &v407[v418 + 8];
          if (v446 > v809)
          {
            goto LABEL_1645;
          }

          if (v445 > v446)
          {
            goto LABEL_1645;
          }

          v447 = (&v812 + v418 * 4 + 12);
          if ((&v812 + v418 * 4 + 12) < &v811)
          {
            goto LABEL_1645;
          }

          if ((&v813 + v418 * 4) > &v827)
          {
            goto LABEL_1645;
          }

          if (v447 > (&v813 + v418 * 4))
          {
            goto LABEL_1645;
          }

          *v447 = *v443 + *v445;
          v448 = &v404[v418 + 8];
          if (v448 < v808)
          {
            goto LABEL_1645;
          }

          v449 = &v404[v418 + 9];
          if (v449 > v809)
          {
            goto LABEL_1645;
          }

          if (v448 > v449)
          {
            goto LABEL_1645;
          }

          v450 = &v407[v418 + 8];
          if (v450 < v808)
          {
            goto LABEL_1645;
          }

          v451 = &v407[v418 + 9];
          if (v451 > v809)
          {
            goto LABEL_1645;
          }

          if (v450 > v451)
          {
            goto LABEL_1645;
          }

          v452 = (&v813 + v418 * 4);
          if ((&v813 + v418 * 4) < &v811)
          {
            goto LABEL_1645;
          }

          if ((&v813 + v418 * 4 + 4) > &v827)
          {
            goto LABEL_1645;
          }

          if (v452 > (&v813 + v418 * 4 + 4))
          {
            goto LABEL_1645;
          }

          *v452 = *v448 + *v450;
          v453 = &v404[v418 + 9];
          if (v453 < v808)
          {
            goto LABEL_1645;
          }

          v454 = &v404[v418 + 10];
          if (v454 > v809)
          {
            goto LABEL_1645;
          }

          if (v453 > v454)
          {
            goto LABEL_1645;
          }

          v455 = &v407[v418 + 9];
          if (v455 < v808)
          {
            goto LABEL_1645;
          }

          v456 = &v407[v418 + 10];
          if (v456 > v809)
          {
            goto LABEL_1645;
          }

          if (v455 > v456)
          {
            goto LABEL_1645;
          }

          v457 = (&v813 + v418 * 4 + 4);
          if ((&v813 + v418 * 4 + 4) < &v811 || (&v813 + v418 * 4 + 8) > &v827 || v457 > (&v813 + v418 * 4 + 8))
          {
            goto LABEL_1645;
          }

          *v457 = *v453 + *v455;
          v419 += 6;
          v418 += 6;
        }

        while (v419 < 0x3A);
        v373 = 2;
      }

      else if (v372)
      {
        v458 = &v798[-1] + LOBYTE(v792[0]);
        v460 = v458 + 1 <= v798 && v458 <= v458 + 1 && v458 >= &v797;
        v461 = v780;
        if (!v460)
        {
          v461 = 1;
        }

        if (v461)
        {
          goto LABEL_1645;
        }

        v462 = *v458;
        *v339 = v462;
        v463 = &v798[-1] + BYTE1(v792[0]);
        v465 = v463 + 1 <= v798 && v463 <= v463 + 1 && v463 >= &v797;
        v466 = v778;
        if (!v465)
        {
          v466 = 1;
        }

        if (v466)
        {
          goto LABEL_1645;
        }

        v467 = *v463;
        *v779 = v467;
        v468 = &v798[-1] + BYTE2(v792[0]);
        v470 = v468 + 1 <= v798 && v468 <= v468 + 1 && v468 >= &v797;
        v471 = v776;
        if (!v470)
        {
          v471 = 1;
        }

        if (v471)
        {
          goto LABEL_1645;
        }

        v472 = *v468;
        a10[2] = v472;
        v473 = &v798[-1] + BYTE3(v792[0]);
        if (v473 < &v797)
        {
          goto LABEL_1645;
        }

        if (v473 + 1 > v798)
        {
          goto LABEL_1645;
        }

        if (v473 > v473 + 1)
        {
          goto LABEL_1645;
        }

        if (!v775)
        {
          goto LABEL_1645;
        }

        v474 = *v473;
        a10[3] = v474;
        v475 = &v784[v462];
        if (v475 < v784)
        {
          goto LABEL_1645;
        }

        if ((v475 + 1) > v785)
        {
          goto LABEL_1645;
        }

        if (v475 > v475 + 1)
        {
          goto LABEL_1645;
        }

        v476 = &v784[v467];
        if (v476 < v784)
        {
          goto LABEL_1645;
        }

        if ((v476 + 1) > v785)
        {
          goto LABEL_1645;
        }

        if (v476 > v476 + 1)
        {
          goto LABEL_1645;
        }

        v477 = &v784[v472];
        if (v477 < v784)
        {
          goto LABEL_1645;
        }

        if ((v477 + 1) > v785)
        {
          goto LABEL_1645;
        }

        if (v477 > v477 + 1)
        {
          goto LABEL_1645;
        }

        v478 = &v784[v474];
        if (v478 < v784)
        {
          goto LABEL_1645;
        }

        if ((v478 + 1) > v785)
        {
          goto LABEL_1645;
        }

        if (v478 > v478 + 1)
        {
          goto LABEL_1645;
        }

        v479 = &v827 + 4 * v462;
        if (v479 < &v827 || v479 + 4 > v843 || v479 > v479 + 4)
        {
          goto LABEL_1645;
        }

        v480 = &v808[192];
        if (*(&v827 + v462) >= 0.0)
        {
          v480 = &v808[64];
        }

        v481 = &v827 + 4 * v467;
        if (v481 < &v827 || v481 + 4 > v843 || v481 > v481 + 4)
        {
          goto LABEL_1645;
        }

        v482 = &v808[192];
        if (*(&v827 + v467) >= 0.0)
        {
          v482 = &v808[64];
        }

        v483 = &v827 + 4 * v472;
        if (v483 < &v827 || v483 + 4 > v843 || v483 > v483 + 4)
        {
          goto LABEL_1645;
        }

        v484 = &v808[192];
        if (*(&v827 + v472) >= 0.0)
        {
          v484 = &v808[64];
        }

        v485 = &v827 + 4 * v474;
        if (v485 < &v827 || v485 + 4 > v843 || v485 > v485 + 4)
        {
          goto LABEL_1645;
        }

        v486 = &v480[-v462];
        v487 = &v808[192];
        if (*(&v827 + v474) >= 0.0)
        {
          v487 = &v808[64];
        }

        if (v486 < v808)
        {
          goto LABEL_1645;
        }

        if (v486 + 1 > v809)
        {
          goto LABEL_1645;
        }

        if (v486 > v486 + 1)
        {
          goto LABEL_1645;
        }

        v488 = &v482[-v467];
        if (v488 < v808)
        {
          goto LABEL_1645;
        }

        if (v488 + 1 > v809)
        {
          goto LABEL_1645;
        }

        if (v488 > v488 + 1)
        {
          goto LABEL_1645;
        }

        v489 = &v484[-v472];
        if (v489 < v808)
        {
          goto LABEL_1645;
        }

        if (v489 + 1 > v809)
        {
          goto LABEL_1645;
        }

        if (v489 > v489 + 1)
        {
          goto LABEL_1645;
        }

        v490 = &v487[-v474];
        if (v490 < v808 || v490 + 1 > v809 || v490 > v490 + 1)
        {
          goto LABEL_1645;
        }

        v491 = 0;
        v375 = ((*v475 + *v476) + *v477) + *v478;
        v492 = ((*v486 + *v488) + *v489) + *v490;
        *&v811 = v492;
        v493 = -2;
        do
        {
          v494 = &v486[v491 + 1];
          v495 = &v486[v491 + 2];
          v497 = v494 < v808 || v495 > v809 || v494 > v495;
          v498 = &v488[v491 + 1];
          v499 = &v488[v491 + 2];
          v502 = v497 || v498 < v808 || v499 > v809 || v498 > v499;
          v503 = &v489[v491 + 1];
          v504 = &v489[v491 + 2];
          v507 = v502 || v503 < v808 || v504 > v809 || v503 > v504;
          v508 = &v490[v491 + 1];
          v509 = &v490[v491 + 2];
          v512 = v507 || v508 < v808 || v509 > v809 || v508 > v509;
          v513 = (&v811 + v491 * 4 + 4);
          v514 = (&v811 + v491 * 4 + 8);
          if (v512 || v513 < &v811 || v514 > &v827 || v513 > v514)
          {
            goto LABEL_1645;
          }

          *v513 = ((*v494 + *v498) + *v503) + *v508;
          if (v495 < v808)
          {
            goto LABEL_1645;
          }

          v518 = &v486[v491 + 3];
          if (v518 > v809)
          {
            goto LABEL_1645;
          }

          if (v495 > v518)
          {
            goto LABEL_1645;
          }

          v519 = &v488[v491 + 2];
          if (v519 < v808)
          {
            goto LABEL_1645;
          }

          v520 = &v488[v491 + 3];
          if (v520 > v809)
          {
            goto LABEL_1645;
          }

          if (v519 > v520)
          {
            goto LABEL_1645;
          }

          v521 = &v489[v491 + 2];
          if (v521 < v808)
          {
            goto LABEL_1645;
          }

          v522 = &v489[v491 + 3];
          if (v522 > v809)
          {
            goto LABEL_1645;
          }

          if (v521 > v522)
          {
            goto LABEL_1645;
          }

          v523 = &v490[v491 + 2];
          if (v523 < v808)
          {
            goto LABEL_1645;
          }

          v524 = &v490[v491 + 3];
          if (v524 > v809)
          {
            goto LABEL_1645;
          }

          if (v523 > v524)
          {
            goto LABEL_1645;
          }

          v525 = (&v811 + v491 * 4 + 8);
          if (v525 < &v811)
          {
            goto LABEL_1645;
          }

          v526 = (&v811 + v491 * 4 + 12);
          if (v526 > &v827)
          {
            goto LABEL_1645;
          }

          if (v525 > v526)
          {
            goto LABEL_1645;
          }

          *v525 = ((*v495 + *v519) + *v521) + *v523;
          v527 = &v486[v491 + 3];
          if (v527 < v808)
          {
            goto LABEL_1645;
          }

          v528 = &v486[v491 + 4];
          if (v528 > v809)
          {
            goto LABEL_1645;
          }

          if (v527 > v528)
          {
            goto LABEL_1645;
          }

          v529 = &v488[v491 + 3];
          if (v529 < v808)
          {
            goto LABEL_1645;
          }

          v530 = &v488[v491 + 4];
          if (v530 > v809)
          {
            goto LABEL_1645;
          }

          if (v529 > v530)
          {
            goto LABEL_1645;
          }

          v531 = &v489[v491 + 3];
          if (v531 < v808)
          {
            goto LABEL_1645;
          }

          v532 = &v489[v491 + 4];
          if (v532 > v809)
          {
            goto LABEL_1645;
          }

          if (v531 > v532)
          {
            goto LABEL_1645;
          }

          v533 = &v490[v491 + 3];
          if (v533 < v808)
          {
            goto LABEL_1645;
          }

          v534 = &v490[v491 + 4];
          if (v534 > v809)
          {
            goto LABEL_1645;
          }

          if (v533 > v534)
          {
            goto LABEL_1645;
          }

          result = (&v811 + v491 * 4 + 12);
          if (result < &v811)
          {
            goto LABEL_1645;
          }

          v535 = (&v811 + v491 * 4 + 16);
          if (v535 > &v827 || result > v535)
          {
            goto LABEL_1645;
          }

          *result = ((*v527 + *v529) + *v531) + *v533;
          v493 += 3;
          v491 += 3;
        }

        while (v493 < 0x3D);
        v536 = ((*(&v811 + 1) * *(&v811 + 1)) + (v492 * v492)) + ((*(&v811 + 3) * *(&v811 + 3)) + (*(&v811 + 2) * *(&v811 + 2)));
        v537 = -2;
        v538 = &v812 + 1;
        do
        {
          v540 = v538 - 1 < &v811 || v538 > &v827 || v538 - 1 > v538;
          v541 = v538 + 1;
          v544 = v540 || v538 < &v811 || v541 > &v827 || v538 > v541;
          v545 = v538 + 2;
          v548 = v544 || v541 < &v811 || v545 > &v827 || v541 > v545;
          v549 = v538 + 3;
          v552 = v548 || v545 < &v811 || v549 > &v827 || v545 > v549;
          v553 = v538 + 4;
          v556 = v552 || v549 < &v811 || v553 > &v827 || v549 > v553;
          v557 = v538 + 5;
          if (v556 || v553 < &v811 || v557 > &v827 || v553 > v557)
          {
            goto LABEL_1645;
          }

          v536 = (((((v536 + (*(v538 - 1) * *(v538 - 1))) + (*v538 * *v538)) + (v538[1] * v538[1])) + (v538[2] * v538[2])) + (v538[3] * v538[3])) + (v538[4] * v538[4]);
          v537 += 6;
          v538 += 6;
        }

        while (v537 < 0x3A);
        v374 = v536 * 0.5;
        v373 = 4;
      }

      else
      {
        v373 = 0;
        v826 = 0u;
        v825 = 0u;
        v824 = 0u;
        v823 = 0u;
        v822 = 0u;
        v821 = 0u;
        v820 = 0u;
        v819 = 0u;
        v818 = 0u;
        v817 = 0u;
        v816 = 0u;
        v815 = 0u;
        v814 = 0u;
        v813 = 0u;
        v812 = 0u;
        v374 = 0.0;
        v375 = 0.0;
        v811 = 0u;
      }

      if (v373 < v354)
      {
        v561 = 0;
        do
        {
          v562 = v792 + v373;
          v564 = v792 + v373 < v794 && v562 >= v792;
          v788 = v373;
          v787 = v561;
          if (v354 - v373 < 2)
          {
            if (!v564)
            {
              goto LABEL_1645;
            }

            v630 = v792 + v373 + 1;
            acelp_h_vec_corr2(&v808[64], v809, &v811, &v827, *(v792 + v373), &v827, v843, v126, v803, v808, v810, &v811);
            if (v630 >= v794)
            {
              goto LABEL_1645;
            }

            if (v630 < v792)
            {
              goto LABEL_1645;
            }

            acelp_h_vec_corr2(&v808[64], v809, &v811, &v827, *v630, &v827, v843, v631, v803, v808, v809, v810);
            v632 = v788;
            v633 = *(v792 + v788);
            v634 = *v630;
            v635 = (v339 + 2 * v788);
            if (v635)
            {
              if (v635 < v339 || (v635 + 1) > v340 || v635 > v635 + 1)
              {
                goto LABEL_1645;
              }
            }

            v636 = (v810 + (v633 & 0xFC));
            result = v785;
            if (v636 < v810 || v636 + 1 > &v811 || v636 > v636 + 1)
            {
              goto LABEL_1645;
            }

            v637 = 1.0;
            if ((v374 + *v636) >= 0.0)
            {
              v638 = -1.0;
            }

            else
            {
              v638 = 1.0;
            }

            if (v633 <= 0x3F)
            {
              v639 = 0;
              v640 = 0;
              LOWORD(v604) = 0;
              v641 = &v784[v633];
              while (1)
              {
                v642 = &v641[v639];
                if (&v641[v639] < v784)
                {
                  break;
                }

                v643 = v642 + 4 > v785 || v642 > v642 + 4;
                v644 = &v636[v640 / 4];
                v645 = &v636[v640 / 4 + 1];
                v646 = !v643 && v644 >= v810;
                v647 = !v646 || v645 > &v811;
                if (v647 || v644 > v645)
                {
                  break;
                }

                if (((v637 * ((v375 + v641[v640]) * (v375 + v641[v640]))) - (v638 * (v374 + *v644))) > 0.0)
                {
                  v637 = v374 + *v644;
                  v638 = (v375 + v641[v640]) * (v375 + v641[v640]);
                  LOWORD(v604) = v633 + v640;
                }

                v640 += 4;
                v639 += 4;
                if (v633 + v640 - 4 >= 0x3C)
                {
                  goto LABEL_1391;
                }
              }

LABEL_1645:
              __break(0x5519u);
            }

            LOWORD(v604) = 0;
LABEL_1391:
            if (v634 != v633 && v634 <= 0x3F)
            {
              v649 = 0;
              v650 = 0;
              v651 = v809 + (v634 & 0xFC);
              v652 = &v784[v634];
              do
              {
                v653 = &v652[v649];
                if (&v652[v649] < v784)
                {
                  goto LABEL_1645;
                }

                v654 = v653 + 4 > v785 || v653 > v653 + 4;
                v655 = &v651[v650];
                v656 = &v651[v650 + 4];
                v657 = !v654 && v655 >= v809;
                v658 = !v657 || v656 > v810;
                if (v658 || v655 > v656)
                {
                  goto LABEL_1645;
                }

                if (((v637 * ((v375 + v652[v650]) * (v375 + v652[v650]))) - (v638 * (v374 + *v655))) > 0.0)
                {
                  v637 = v374 + *v655;
                  v638 = (v375 + v652[v650]) * (v375 + v652[v650]);
                  LOWORD(v604) = v634 + v650;
                }

                v650 += 4;
                v649 += 4;
              }

              while ((v634 + v650 - 4) < 0x3C);
            }

            v660 = &v784[v604];
            v661 = v660 + 1;
            if (v660 < v784 || v661 > v785 || v660 > v661)
            {
              goto LABEL_1645;
            }

            v375 = v375 + *v660;
            *v635 = v604;
            v374 = v637;
          }

          else
          {
            v565 = !v564;
            v566 = &v782[v561];
            v567 = (v566 + 1);
            v569 = v565 || v566 < v782 || v567 > v783;
            v786 = &v782[v561];
            if (v569 || v566 > v567)
            {
              goto LABEL_1645;
            }

            v571 = *v786;
            if (*v786 >= 1)
            {
              v572 = 0;
              v573 = *v562;
              v574 = &v795[v573];
              v575 = &v803[4 * v573];
              __C = NAN;
              do
              {
                v576 = v574 + v572;
                v577 = v576 + 1;
                v578 = v576 < v795 || v577 > &v796;
                if (v578 || v576 > v577)
                {
                  goto LABEL_1645;
                }

                v580 = *v576;
                vDSP_dotpr(&v808[64], 1, &v811 + *v576, 1, &__C, 64 - *v576);
                v581 = &v827 + v580;
                v582 = v581 + 1;
                v583 = v581 < &v827 || v582 > v843;
                v584 = v583 || v581 > v582;
                v585 = &v575[v580 >> 2];
                v586 = (v585 + 1);
                v587 = !v584 && v585 >= v575;
                v588 = !v587 || v586 > (v575 + 16);
                v589 = v588 || v585 > v586;
                v590 = v810 + (v580 >> 2);
                v591 = v590 + 1;
                v592 = !v589 && v590 >= v810;
                v593 = !v592 || v591 > &v811;
                if (v593 || v590 > v591)
                {
                  goto LABEL_1645;
                }

                *v590 = *v585 + (*v581 * __C);
              }

              while (v571 > ++v572);
            }

            v595 = v792 + (v788 | 1);
            v338 = a9;
            v339 = a10;
            v340 = a11;
            if (v595 >= v794)
            {
              goto LABEL_1645;
            }

            if (v595 < v792)
            {
              goto LABEL_1645;
            }

            acelp_h_vec_corr2(&v808[64], v809, &v811, &v827, *v595, &v827, v843, v126, v803, v808, v809, v810);
            v596 = *v786;
            v597 = *(v792 + v788);
            v598 = *v595;
            v599 = &a10[v788];
            if (v599)
            {
              if (v599 < a10 || (v599 + 1) > a11 || v599 > v599 + 1)
              {
                goto LABEL_1645;
              }
            }

            v600 = &a10[v788 | 1];
            if (v600)
            {
              if (v600 < a10 || (v600 + 1) > a11 || v600 > v600 + 1)
              {
                goto LABEL_1645;
              }
            }

            v601 = &v795[v597];
            v126 = v785;
            if (v601 < v795)
            {
              goto LABEL_1645;
            }

            if ((v601 | 2) > &v796)
            {
              goto LABEL_1645;
            }

            if (v601 > (v601 | 2))
            {
              goto LABEL_1645;
            }

            result = v810 + (*v601 >> 2);
            if (result < v810)
            {
              goto LABEL_1645;
            }

            if (result + 1 > &v811)
            {
              goto LABEL_1645;
            }

            if (result > result + 1)
            {
              goto LABEL_1645;
            }

            v602 = &__b[256 * v597];
            v603 = &v602[16 * (*v601 >> 2)];
            if (v603 < v602 || v603 + 1 > v602 + 256 || v603 > v603 + 1)
            {
              goto LABEL_1645;
            }

            if (v596 >= 1)
            {
              LOWORD(v604) = 0;
              v605 = 0;
              v606 = 0;
              v607 = 1.0;
              if ((((v374 + *result) + *v809) + *v603) >= 0.0)
              {
                v608 = -1.0;
              }

              else
              {
                v608 = 1.0;
              }

              result = &v784[v598];
              while (1)
              {
                v609 = (v601 + 2 * v606);
                v610 = v609 + 1;
                if (v609 < v795 || v610 > &v796 || v609 > v610)
                {
                  goto LABEL_1645;
                }

                v613 = *v609;
                v614 = &v784[v613];
                v615 = v614 + 1;
                v616 = v614 < v784 || v615 > v785;
                if (v616 || v614 > v615)
                {
                  goto LABEL_1645;
                }

                v618 = v810 + (v613 >> 2);
                v619 = v618 + 1;
                v620 = v618 < v810 || v619 > &v811;
                if (v620 || v618 > v619)
                {
                  goto LABEL_1645;
                }

                if (v598 <= 0x3F)
                {
                  break;
                }

LABEL_1355:
                if (v596 <= ++v606)
                {
                  goto LABEL_1420;
                }
              }

              v622 = 0;
              v623 = 0;
              v624 = v375 + *v614;
              v625 = v374 + *v618;
              v626 = &v602[16 * (v613 >> 2)];
              while (1)
              {
                v627 = &result[v622];
                if (&result[v622] < v784)
                {
                  goto LABEL_1645;
                }

                if (v627 + 4 > v785)
                {
                  goto LABEL_1645;
                }

                if (v627 > v627 + 4)
                {
                  goto LABEL_1645;
                }

                if ((v809 + v623 + 4) > v810)
                {
                  goto LABEL_1645;
                }

                v628 = &v626[v623 / 4];
                if (&v626[v623 / 4] < v602)
                {
                  goto LABEL_1645;
                }

                v629 = &v626[v623 / 4 + 1];
                if (v629 > (v602 + 256) || v628 > v629)
                {
                  goto LABEL_1645;
                }

                if (((v607 * ((v624 + result[v623]) * (v624 + result[v623]))) - (v608 * ((v625 + *(v809 + v623)) + *v628))) > 0.0)
                {
                  v605 = (v598 + v623);
                  v607 = (v625 + *(v809 + v623)) + *v628;
                  v608 = (v624 + result[v623]) * (v624 + result[v623]);
                  LOWORD(v604) = v613;
                }

                v623 += 4;
                v622 += 4;
                if (v598 + v623 - 4 >= 0x3C)
                {
                  goto LABEL_1355;
                }
              }
            }

            v605 = 0;
            LOWORD(v604) = 0;
            v607 = 1.0;
LABEL_1420:
            v664 = &v784[v604];
            if (v664 < v784)
            {
              goto LABEL_1645;
            }

            if ((v664 + 1) > v785)
            {
              goto LABEL_1645;
            }

            if (v664 > v664 + 1)
            {
              goto LABEL_1645;
            }

            v665 = &v784[v605];
            if (v665 < v784 || (v665 + 1) > v785 || v665 > v665 + 1)
            {
              goto LABEL_1645;
            }

            v375 = (v375 + *v664) + *v665;
            *v599 = v604;
            *v600 = v605;
            v374 = v607;
            v632 = v788;
          }

          v354 = v338[3];
          if (v632 < v354 - 2)
          {
            v666 = v339 + 2 * v632;
            if (v666 >= v339 && v666 + 2 <= v340 && v666 <= v666 + 2)
            {
              v667 = &v827 + 4 * v604;
              v668 = v667 + 4;
              v669 = v667 < &v827 || v668 > v843;
              if (!v669 && v667 <= v668)
              {
                v604 = v604;
                v671 = &v808[192];
                if (*(&v827 + v604) >= 0.0)
                {
                  v671 = &v808[64];
                }

                v672 = (v666 + 2);
                if (v666 + 2 >= v339)
                {
                  v673 = v666 + 4;
                  if (v673 <= v340 && v672 <= v673)
                  {
                    v674 = *v672;
                    v675 = &v827 + 4 * v674;
                    if (v675 >= &v827 && v675 + 4 <= v843 && v675 <= v675 + 4)
                    {
                      v676 = &v671[-v604];
                      v677 = &v808[192];
                      if (*(&v827 + v674) >= 0.0)
                      {
                        v677 = &v808[64];
                      }

                      v678 = &v677[-v674];
                      v679 = v676 + 1;
                      v680 = v676 < v808 || v679 > v809;
                      v681 = v680 || v676 > v679;
                      v682 = v678 + 1;
                      v683 = !v681 && v678 >= v808;
                      v684 = !v683 || v682 > v809;
                      if (!v684 && v678 <= v682)
                      {
                        v686 = v676 + 2;
                        *&v811 = *&v811 + (*v676 + *v678);
                        v687 = v679 < v808 || v686 > v809;
                        v688 = v687 || v679 > v686;
                        v689 = v678 + 2;
                        v690 = !v688 && v682 >= v808;
                        v691 = !v690 || v689 > v809;
                        if (!v691 && v682 <= v689)
                        {
                          *(&v811 + 1) = *(&v811 + 1) + (v676[1] + *v682);
                          v693 = v676 + 3;
                          v694 = v686 < v808 || v693 > v809;
                          v695 = v694 || v686 > v693;
                          v696 = v678 + 3;
                          v697 = !v695 && v689 >= v808;
                          v698 = !v697 || v696 > v809;
                          if (!v698 && v689 <= v696)
                          {
                            *(&v811 + 2) = *(&v811 + 2) + (v676[2] + *v689);
                            v700 = v676 + 4;
                            v701 = v693 < v808 || v700 > v809;
                            v702 = v701 || v693 > v700;
                            v703 = v678 + 4;
                            v704 = !v702 && v696 >= v808;
                            v705 = !v704 || v703 > v809;
                            if (!v705 && v696 <= v703)
                            {
                              v707 = 0;
                              *(&v811 + 3) = *(&v811 + 3) + (*v693 + *v696);
                              v708 = -2;
                              while (1)
                              {
                                v709 = &v676[v707 + 4];
                                v710 = &v676[v707 + 5];
                                v711 = v709 < v808 || v710 > v809;
                                v712 = v711 || v709 > v710;
                                v713 = &v678[v707 + 4];
                                v714 = &v678[v707 + 5];
                                v715 = !v712 && v713 >= v808;
                                v716 = !v715 || v714 > v809;
                                v717 = v716 || v713 > v714;
                                v718 = (&v811 + v707 * 4 + 16);
                                v719 = (&v812 + v707 * 4 + 4);
                                v720 = !v717 && v718 >= &v811;
                                v721 = !v720 || v719 > &v827;
                                if (v721 || v718 > v719)
                                {
                                  break;
                                }

                                *v718 = *v718 + (*v709 + *v713);
                                if (v710 < v808)
                                {
                                  break;
                                }

                                v723 = &v676[v707 + 6];
                                if (v723 > v809)
                                {
                                  break;
                                }

                                if (v710 > v723)
                                {
                                  break;
                                }

                                v724 = &v678[v707 + 5];
                                if (v724 < v808)
                                {
                                  break;
                                }

                                v725 = &v678[v707 + 6];
                                if (v725 > v809)
                                {
                                  break;
                                }

                                if (v724 > v725)
                                {
                                  break;
                                }

                                v726 = (&v812 + v707 * 4 + 4);
                                if ((&v812 + v707 * 4 + 4) < &v811)
                                {
                                  break;
                                }

                                if ((&v812 + v707 * 4 + 8) > &v827)
                                {
                                  break;
                                }

                                if (v726 > (&v812 + v707 * 4 + 8))
                                {
                                  break;
                                }

                                *v726 = *v726 + (*v710 + *v724);
                                v727 = &v676[v707 + 6];
                                if (v727 < v808)
                                {
                                  break;
                                }

                                v728 = &v676[v707 + 7];
                                if (v728 > v809)
                                {
                                  break;
                                }

                                if (v727 > v728)
                                {
                                  break;
                                }

                                v729 = &v678[v707 + 6];
                                if (v729 < v808)
                                {
                                  break;
                                }

                                v730 = &v678[v707 + 7];
                                if (v730 > v809)
                                {
                                  break;
                                }

                                if (v729 > v730)
                                {
                                  break;
                                }

                                v731 = (&v812 + v707 * 4 + 8);
                                if ((&v812 + v707 * 4 + 8) < &v811)
                                {
                                  break;
                                }

                                if ((&v812 + v707 * 4 + 12) > &v827)
                                {
                                  break;
                                }

                                if (v731 > (&v812 + v707 * 4 + 12))
                                {
                                  break;
                                }

                                *v731 = *v731 + (*v727 + *v729);
                                v732 = &v676[v707 + 7];
                                if (v732 < v808)
                                {
                                  break;
                                }

                                v733 = &v676[v707 + 8];
                                if (v733 > v809)
                                {
                                  break;
                                }

                                if (v732 > v733)
                                {
                                  break;
                                }

                                v734 = &v678[v707 + 7];
                                if (v734 < v808)
                                {
                                  break;
                                }

                                v735 = &v678[v707 + 8];
                                if (v735 > v809)
                                {
                                  break;
                                }

                                if (v734 > v735)
                                {
                                  break;
                                }

                                v736 = (&v812 + v707 * 4 + 12);
                                if ((&v812 + v707 * 4 + 12) < &v811)
                                {
                                  break;
                                }

                                if ((&v813 + v707 * 4) > &v827)
                                {
                                  break;
                                }

                                if (v736 > (&v813 + v707 * 4))
                                {
                                  break;
                                }

                                *v736 = *v736 + (*v732 + *v734);
                                v737 = &v676[v707 + 8];
                                if (v737 < v808)
                                {
                                  break;
                                }

                                v738 = &v676[v707 + 9];
                                if (v738 > v809)
                                {
                                  break;
                                }

                                if (v737 > v738)
                                {
                                  break;
                                }

                                v739 = &v678[v707 + 8];
                                if (v739 < v808)
                                {
                                  break;
                                }

                                v740 = &v678[v707 + 9];
                                if (v740 > v809)
                                {
                                  break;
                                }

                                if (v739 > v740)
                                {
                                  break;
                                }

                                v741 = (&v813 + v707 * 4);
                                if ((&v813 + v707 * 4) < &v811)
                                {
                                  break;
                                }

                                if ((&v813 + v707 * 4 + 4) > &v827)
                                {
                                  break;
                                }

                                if (v741 > (&v813 + v707 * 4 + 4))
                                {
                                  break;
                                }

                                *v741 = *v741 + (*v737 + *v739);
                                v742 = &v676[v707 + 9];
                                if (v742 < v808)
                                {
                                  break;
                                }

                                v743 = &v676[v707 + 10];
                                if (v743 > v809)
                                {
                                  break;
                                }

                                if (v742 > v743)
                                {
                                  break;
                                }

                                v744 = &v678[v707 + 9];
                                if (v744 < v808)
                                {
                                  break;
                                }

                                v745 = &v678[v707 + 10];
                                if (v745 > v809)
                                {
                                  break;
                                }

                                if (v744 > v745)
                                {
                                  break;
                                }

                                v746 = (&v813 + v707 * 4 + 4);
                                if ((&v813 + v707 * 4 + 4) < &v811 || (&v813 + v707 * 4 + 8) > &v827 || v746 > (&v813 + v707 * 4 + 8))
                                {
                                  break;
                                }

                                *v746 = *v746 + (*v742 + *v744);
                                v708 += 6;
                                v707 += 6;
                                if (v708 >= 0x3A)
                                {
                                  goto LABEL_1584;
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
            }

            goto LABEL_1645;
          }

LABEL_1584:
          v373 = v632 + 2;
          v561 = v787 + 1;
        }

        while (v354 > v373);
      }

      v747 = v375 * v375;
      if (v356 < 0.0 || ((v355 * v747) - (v356 * v374)) > 0.0)
      {
        if (v340 < v339)
        {
          goto LABEL_1645;
        }

        v748 = 2 * v354;
        if (v748 > a11 - a10)
        {
          goto LABEL_1645;
        }

        if (v748 >= 0x49)
        {
          goto LABEL_1645;
        }

        result = __memcpy_chk();
        v355 = v374;
        v356 = v747;
        if (result > (result + v748))
        {
          goto LABEL_1645;
        }
      }

      ++v781;
    }

    while (v781 < v338[1]);
  }

  if (v772 < v773)
  {
    goto LABEL_1645;
  }

  if (v772 - v773 < 0x100)
  {
    goto LABEL_1645;
  }

  *(v773 + 14) = 0u;
  *(v773 + 15) = 0u;
  *(v773 + 12) = 0u;
  *(v773 + 13) = 0u;
  *(v773 + 10) = 0u;
  *(v773 + 11) = 0u;
  *(v773 + 8) = 0u;
  *(v773 + 9) = 0u;
  *(v773 + 6) = 0u;
  *(v773 + 7) = 0u;
  *(v773 + 4) = 0u;
  *(v773 + 5) = 0u;
  *(v773 + 2) = 0u;
  *(v773 + 3) = 0u;
  *v773 = 0u;
  *(v773 + 1) = 0u;
  if (v773 + 64 < v773)
  {
    goto LABEL_1645;
  }

  if (a13 < a12)
  {
    goto LABEL_1645;
  }

  if (a13 - a12 < 0x100)
  {
    goto LABEL_1645;
  }

  a12[14] = 0uLL;
  a12[15] = 0uLL;
  a12[12] = 0uLL;
  a12[13] = 0uLL;
  a12[10] = 0uLL;
  a12[11] = 0uLL;
  a12[8] = 0uLL;
  a12[9] = 0uLL;
  a12[6] = 0uLL;
  a12[7] = 0uLL;
  a12[4] = 0uLL;
  a12[5] = 0uLL;
  a12[2] = 0uLL;
  a12[3] = 0uLL;
  *a12 = 0uLL;
  a12[1] = 0uLL;
  if (a12 + 16 < a12)
  {
    goto LABEL_1645;
  }

  if (v340 < v339)
  {
    goto LABEL_1645;
  }

  if (v340 - v339 < 0x48)
  {
    goto LABEL_1645;
  }

  *(v339 + 64) = -1;
  *&v749 = -1;
  *(&v749 + 1) = -1;
  *(v339 + 32) = v749;
  *(v339 + 48) = v749;
  *v339 = v749;
  *(v339 + 16) = v749;
  if (v339 + 72 < v339)
  {
    goto LABEL_1645;
  }

  if (v338[3] >= 1)
  {
    v750 = 0;
    while (1)
    {
      v751 = v798 + v750;
      v752 = v751 + 1;
      v753 = v751 < v798 || v752 > &v800;
      if (v753 || v751 > v752)
      {
        goto LABEL_1645;
      }

      v755 = *v751;
      v756 = &v827 + 4 * *v751;
      v757 = v756 + 4;
      v758 = v756 < &v827 || v757 > v843;
      if (v758 || v756 > v757)
      {
        goto LABEL_1645;
      }

      v760 = (v755 + ((v755 >> 29) & 3)) >> 2;
      v761 = &v773[v755];
      v762 = (v761 + 1) > v772 || v761 > v761 + 1;
      v763 = !v762 && v761 >= v773;
      v764 = v763;
      if (*(&v827 + v755) <= 0.0)
      {
        if (!v764)
        {
          goto LABEL_1645;
        }

        *v761 = *v761 + -1.0;
        LOWORD(v760) = v760 + 16;
        v765 = v755;
      }

      else
      {
        if (!v764)
        {
          goto LABEL_1645;
        }

        *v761 = *v761 + 1.0;
        v765 = v755 + 128;
        *v751 = v755 + 128;
      }

      v766 = (v339 + 2 * (9 * (v755 - ((v755 + ((v755 >> 29) & 3)) & 0xFFFC))));
      v767 = v766 + 1;
      v768 = v766 < v339 || v767 > v340;
      if (v768 || v766 > v767)
      {
        goto LABEL_1645;
      }

      while ((*v766 & 0x80000000) == 0)
      {
        v770 = v766 + 1;
        if ((v766 + 1) >= v339)
        {
          v771 = v766 + 2;
          if ((v766 + 2) <= v340)
          {
            ++v766;
            if (v770 <= v771)
            {
              continue;
            }
          }
        }

        goto LABEL_1645;
      }

      *v766 = v760;
      result = MEMORY[0x19EAE5DC0](a12, 1, &v808[-v765 + 192], 1, a12, 1, 64, v126);
      if (++v750 >= v338[3])
      {
        return result;
      }
    }
  }

  return result;
}