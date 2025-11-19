uint64_t GetPLCModeDecision(uint64_t result)
{
  v1 = result;
  v2 = result + 156648;
  v3 = (result + 137768);
  if (*(result + 158668) == 1)
  {
    v4 = result + 24348;
    v5 = result + 24396;
    v6 = *v3;
    v7 = (result + 24348 + 8 * v6);
    v8 = v7 + 1;
    _CF = v7 < result + 24348 || v8 > v5 || v7 >= v8;
    if (_CF || ((v11 = *(result + 158676), *v7 = v11, v12 = (v4 + 4 * ((2 * v6) | 1)), v13 = v12 + 1, v12 >= v4) ? (v14 = v13 > v5) : (v14 = 1), !v14 ? (v15 = v12 >= v13) : (v15 = 1), v15))
    {
      __break(0x5519u);
      return result;
    }

    *v12 = v11;
    __asm { FMOV            V0.2S, #1.0 }

    *(result + 138216) = _D0;
    result = *(result + 58172);
    if (result <= 0)
    {
      v20 = 1;
      goto LABEL_23;
    }
  }

  else
  {
    result = *(result + 58172);
    if (result < 1)
    {
      v20 = 0;
LABEL_23:
      *(v3 + 248) = v20;
      if (result == -1)
      {
        result = v1[2622] == 0;
        v1[29086] = 0;
        *v2 = 0;
        return result;
      }

      goto LABEL_24;
    }

    if (*(v2 + 28) == 0.0)
    {
      v21 = 0;
      goto LABEL_21;
    }
  }

  v21 = 1;
LABEL_21:
  *(v3 + 248) = v21;
LABEL_24:
  v22 = v3[107];
  if (v22 >= 2)
  {
    return v3[106];
  }

  if (v22 != 1)
  {
    return 0;
  }

  *v2 = 0;
  if (v1[18043])
  {
    if (v1[18041] && (v1[18040] & 0xFFFE) == 2)
    {
      return 0;
    }
  }

  if (!result)
  {
    return 0;
  }

  if (result == 1 && *(v2 + 16) == 1 && ((v23 = *(v3 + 109), v23 <= vcvts_n_f32_s32(v1[2620], 1uLL)) || *(v2 + 28) <= 0.4) && v23 == *(v2 + 20) && !*(v2 + 4) && !*(v2 + 8))
  {
    TonalMDCTConceal_Detect((v1 + 71240));
    return v1[12160] < 2 || *(v2 + 28) <= 0.4;
  }

  else if (v1[12160] >= 2 && *(v2 + 28) > 0.4)
  {
    return 0;
  }

  return result;
}

void lpc_unquantize(uint64_t a1, __int128 *a2, __int128 *a3, float *a4, unint64_t a5, _OWORD *a6, unint64_t a7, int a8, int *a9, unint64_t a10, int a11, int a12, float32x4_t *a13, uint64_t a14, unint64_t a15, __int16 a16, int a17, __int16 a18, _WORD *a19, signed int a20, _WORD *a21, __int16 a22, _WORD *a23, __int16 *a24)
{
  v129[0] = 0;
  if (a5 < a4)
  {
    goto LABEL_146;
  }

  if (a5 - a4 <= 0x3F)
  {
    goto LABEL_146;
  }

  v24 = *a2;
  v25 = a2[1];
  v26 = a2[3];
  *(a4 + 2) = a2[2];
  *(a4 + 3) = v26;
  *a4 = v24;
  *(a4 + 1) = v25;
  v27 = (a4 + 16);
  if (a4 + 16 < a4)
  {
    goto LABEL_146;
  }

  v28 = a7;
  if (a7 < a6)
  {
    goto LABEL_146;
  }

  if (a7 - a6 <= 0x3F)
  {
    goto LABEL_146;
  }

  v29 = *a3;
  v30 = a3[1];
  v31 = a3[3];
  a6[2] = a3[2];
  a6[3] = v31;
  *a6 = v29;
  a6[1] = v30;
  v32 = a6 + 4;
  if (a6 + 4 < a6)
  {
    goto LABEL_146;
  }

  v34 = a19;
  v35 = a9;
  v36 = a10;
  v103 = a5 - a4;
  if (!a8)
  {
    v104 = 0;
    v38 = a20;
    v39 = &a4[16 * (a11 != 1) + 16];
    v40 = 16;
    while (v39 >= v27 && (v39 + 1) <= a5 && v39 <= v39 + 1)
    {
      *v39++ = 0.0;
      if (!--v40)
      {
        v41 = a9 + 1;
        if ((a9 + 1) <= a10 && v41 >= a9)
        {
          v42 = v27 + ((a11 != 1) << 6);
          if (v42 <= a5 && v42 >= v27 && (a5 - v42) >= 61)
          {
            v43 = &dico_lsf_abs_8b[64 * *a9];
            v44 = 16;
            v45 = v38 / 12800.0;
            while (1)
            {
              v46 = v43 + 1;
              v47 = v43 < dico_lsf_abs_8b || v46 > rat;
              if (v47 || v43 > v46)
              {
                break;
              }

              a4[16 * (a11 != 1) + v44] = a4[16 * (a11 != 1) + v44] + (v45 * *v43);
              ++v44;
              ++v43;
              if (v44 == 32)
              {
                vlpc_2st_dec(v42, a5, (a9 + 1), a10, 0, v38);
                v49 = a9 + 2;
                if ((a9 + 2) > a10 || v41 > v49 || v49 < a9 || (a9 + 3) > a10 || v49 > a9 + 3)
                {
                  goto LABEL_146;
                }

                v50 = &v41[*v41 + 2 + *v49];
                if (a11 == 2)
                {
                  if (v50 < a9)
                  {
                    goto LABEL_146;
                  }

                  v51 = v50 + 1;
                  if ((v50 + 1) > a10 || v50 > v51)
                  {
                    goto LABEL_146;
                  }

                  if (!*v50)
                  {
                    v70 = 16;
                    v71 = v27;
                    while (v71 >= v27 && (v71 + 1) <= a5 && v71 <= v71 + 1)
                    {
                      *v71++ = 0;
                      if (!--v70)
                      {
                        v60 = (v50 + 2);
                        if ((v50 + 2) <= a10 && v51 <= v60 && a5 >= v27 && (a5 - v27) >= 61)
                        {
                          v72 = &dico_lsf_abs_8b[64 * *v51];
                          v73 = 16;
                          while (1)
                          {
                            v74 = v72 + 1;
                            v75 = v72 < dico_lsf_abs_8b || v74 > rat;
                            if (v75 || v72 > v74)
                            {
                              break;
                            }

                            a4[v73] = a4[v73] + (v45 * *v72);
                            ++v73;
                            ++v72;
                            if (v73 == 32)
                            {
                              v59 = 0;
                              v51 = v60;
LABEL_97:
                              vlpc_2st_dec(v27, a5, v60, a10, v59, v38);
                              goto LABEL_98;
                            }
                          }
                        }

                        goto LABEL_146;
                      }
                    }

                    goto LABEL_146;
                  }

                  if (*v50 == 1)
                  {
                    v52 = 16;
                    while (1)
                    {
                      v53 = &a4[v52];
                      v54 = &a4[v52 + 16];
                      v55 = &a4[v52 + 17];
                      v56 = v54 < v27 || v55 > a5;
                      v57 = v56 || v54 > v55;
                      if (v57 || (v53 + 1) > a5)
                      {
                        goto LABEL_146;
                      }

                      *v53 = *v54;
                      if (++v52 == 32)
                      {
                        v59 = 3;
                        v60 = v51;
                        goto LABEL_97;
                      }
                    }
                  }

LABEL_98:
                  if (v51 < a9)
                  {
                    goto LABEL_146;
                  }

                  v77 = (v51 + 1);
                  if ((v51 + 1) > a10 || v51 > v77 || (v51 + 2) > a10 || v77 > (v51 + 2))
                  {
                    goto LABEL_146;
                  }

                  v50 = &v51[*v51 + 2 + v51[1]];
                }

                v61 = (v50 - a9) >> 2;
                v129[0] = v61;
                if (a11 < 1)
                {
                  goto LABEL_125;
                }

                v102 = (v50 - a9) >> 2;
                v78 = 0;
                v79 = v38 * 0.5;
                v80 = a6 + 4;
                v81 = a4 + 16;
                while (1)
                {
                  v82 = &a4[16 * ++v78];
                  v83 = &a6[4 * v78];
                  v84 = (a5 - v82) >= 61 && v82 >= a4;
                  v85 = !v84 || v82 > a5;
                  v86 = v85 || v83 > v28;
                  v87 = !v86 && v83 >= a6;
                  if (!v87 || (v28 - v83) < 61)
                  {
                    goto LABEL_146;
                  }

                  v88 = v27;
                  v89 = v28;
                  v90 = v35;
                  v91 = v34;
                  v92 = v36;
                  for (i = 0; i != 64; i += 4)
                  {
                    *(v80 + i) = cosf((*(v81 + i) * 3.1416) / v79);
                  }

                  v80 += 4;
                  v81 += 4;
                  v36 = v92;
                  v34 = v91;
                  v35 = v90;
                  v28 = v89;
                  v27 = v88;
                  if (v78 == a11)
                  {
                    LODWORD(v61) = v102;
                    goto LABEL_125;
                  }
                }
              }
            }
          }
        }

        goto LABEL_146;
      }
    }

    goto LABEL_146;
  }

  if (a8 == 1)
  {
    v104 = 1;
    if (a16 == 1 && a20 == 16000)
    {
      if (a5 < v27)
      {
        goto LABEL_146;
      }

      if ((a5 - v27) < 61)
      {
        goto LABEL_146;
      }

      v37 = *(a1 + 5208);
      v126 = a1 + 11272;
      v127 = a1 + 13336;
      v128 = a1 + 11272;
      v123 = a1 + 13336;
      v124 = a1 + 15400;
      v125 = a1 + 13336;
      v120 = a1 + 15400;
      v121 = a1 + 17736;
      v122 = a1 + 15400;
      v117 = a1 + 17736;
      v118 = a1 + 20072;
      v119 = a1 + 17736;
      v114 = a1 + 20072;
      v115 = a1 + 20584;
      v116 = a1 + 20072;
      v111 = a1 + 20584;
      v112 = a1 + 21164;
      v113 = a1 + 20584;
      if (a1 + 21582 > (a1 + 21584))
      {
        goto LABEL_146;
      }

      v108 = a9;
      v109 = a10;
      v110 = a9;
      lsf_end_dec(a1, 3, (1 - a18), 31, v27, (a1 + 21416), a13, v37, 16000.0, &v126, &v123, &v120, &v117, &v114, &v111, (a1 + 21582), &v108, a23, v129);
    }

    else
    {
      v62 = (1 - a18);
      v63 = a20;
      v64 = *(a1 + 5208);
      v65 = a1 + 21582;
      v67 = a5 >= v27 && (a5 - v27) > 60;
      if (*(a1 + 5200) == 1)
      {
        if (!v67)
        {
          goto LABEL_146;
        }

        v126 = a1 + 11272;
        v127 = a1 + 13336;
        v128 = a1 + 11272;
        v123 = a1 + 13336;
        v124 = a1 + 15400;
        v125 = a1 + 13336;
        v120 = a1 + 15400;
        v121 = a1 + 17736;
        v122 = a1 + 15400;
        v117 = a1 + 17736;
        v118 = a1 + 20072;
        v119 = a1 + 17736;
        v114 = a1 + 20072;
        v115 = a1 + 20584;
        v116 = a1 + 20072;
        v111 = a1 + 20584;
        v112 = a1 + 21164;
        v113 = a1 + 20584;
        if (v65 > a1 + 21584)
        {
          goto LABEL_146;
        }

        v108 = a9;
        v109 = a10;
        v110 = a9;
        lsf_end_dec(a1, 5, v62, 31, v27, (a1 + 21416), a13, v64, v63, &v126, &v123, &v120, &v117, &v114, &v111, (a1 + 21582), &v108, a23, v129);
      }

      else
      {
        if (!v67)
        {
          goto LABEL_146;
        }

        v126 = a1 + 11272;
        v127 = a1 + 13336;
        v128 = a1 + 11272;
        v123 = a1 + 13336;
        v124 = a1 + 15400;
        v125 = a1 + 13336;
        v120 = a1 + 15400;
        v121 = a1 + 17736;
        v122 = a1 + 15400;
        v117 = a1 + 17736;
        v118 = a1 + 20072;
        v119 = a1 + 17736;
        v114 = a1 + 20072;
        v115 = a1 + 20584;
        v116 = a1 + 20072;
        v111 = a1 + 20584;
        v112 = a1 + 21164;
        v113 = a1 + 20584;
        if (v65 > a1 + 21584)
        {
          goto LABEL_146;
        }

        v108 = a9;
        v109 = a10;
        v110 = a9;
        lsf_end_dec(a1, a16, v62, 31, v27, (a1 + 21416), a13, v64, v63, &v126, &v123, &v120, &v117, &v114, &v111, (a1 + 21582), &v108, a23, v129);
      }
    }

    if (v27 > a5 || v32 > v28 || (v28 - v32) < 61)
    {
LABEL_146:
      __break(0x5519u);
      return;
    }

    v68 = 0;
    v69 = vcvts_n_f32_s32(a20, 1uLL);
    do
    {
      *(v32 + v68) = cosf((*(v27 + v68) * 3.1416) / v69);
      v68 += 4;
    }

    while (v68 != 64);
    LODWORD(v61) = v129[0];
    v34 = a19;
    v35 = a9;
LABEL_125:
    *v34 = 0;
    if (v61 >= 1)
    {
      LOWORD(v94) = 0;
      v95 = v61 + 1;
      v96 = v61;
      v97 = &v35[v61 - 1];
      while (v97 >= v35 && (v97 + 2) <= v36 && v97 <= v97 + 2)
      {
        v98 = *v97;
        v97 -= 2;
        v94 = 31821 * (v98 + (v94 >> 1)) + 13849;
        *v34 = v94;
        if (--v95 <= 1)
        {
          a8 = v104;
          LODWORD(v61) = v96;
          goto LABEL_133;
        }
      }

      goto LABEL_146;
    }

    a8 = v104;
  }

  else
  {
    LODWORD(v61) = 0;
    *a19 = 0;
  }

LABEL_133:
  if (!a12 && a8 && a17 && !*(a1 + 157364))
  {
    v99 = &v35[v61];
    if (v99 >= v35 && (v99 + 2) <= v36 && v99 <= v99 + 2 && v103 >= 61 && v27 <= a5 && (a5 - v27) >= 61)
    {
      midlsf_dec(a4, v27, *v99, a15, a16, a21, a22, *a24);
      reorder_lsf(a15, 80.0, a20);
      v100 = 0;
      v101 = vcvts_n_f32_s32(a20, 1uLL);
      do
      {
        *(a14 + v100) = cosf((*(a15 + v100) * 3.1416) / v101);
        v100 += 4;
      }

      while (v100 != 64);
      return;
    }

    goto LABEL_146;
  }
}

void RecLpcSpecPowDiffuseLc(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, int a5)
{
  v73 = *MEMORY[0x1E69E9840];
  v9 = (a4 + 137780);
  v10 = *(a4 + 137780);
  if (*(a4 + 138524))
  {
    v11 = *(a4 + 123844);
    v12 = v11 == 0;
    if (v11)
    {
      v13 = &GENB_Ave;
    }

    else
    {
      v13 = &GEWB_Ave;
    }

    v14 = &means_swb_cleanspeech_lsf32k0;
    if (v12)
    {
      v14 = &NumRatioBits;
    }

    if (v10 == 16000)
    {
      v15 = GEWB2_Ave;
    }

    else
    {
      v15 = v13;
    }

    if (v10 == 16000)
    {
      v16 = &GEWB_Ave;
    }

    else
    {
      v16 = v14;
    }
  }

  else
  {
    if (v10 == 32000)
    {
      v15 = &means_swb_cleanspeech_lsf32k0;
    }

    else if (v10 == 25600)
    {
      v15 = &means_swb_cleanspeech_lsf25k6;
    }

    else
    {
      v15 = &means_wb_cleanspeech_lsf16k0;
    }

    v16 = (v15 + 32);
  }

  v17 = *(a4 + 11224);
  v72[0] = *(a4 + 11208);
  v72[1] = v17;
  v18 = *(a4 + 11256);
  v72[2] = *(a4 + 11240);
  v72[3] = v18;
  modify_lsf(v72, &v73, v10, a5);
  v20 = 0;
  v65 = v9;
  v21 = *v9;
  *v22.i32 = vcvts_n_f32_s32(v21, 1uLL);
  v66 = vdupq_n_s32(0x40490FDBu);
  v67 = vdupq_lane_s32(v22, 0);
  do
  {
    v71 = vdivq_f32(vmulq_f32(v72[v20], v66), v67);
    v68 = cosf(v71.f32[1]);
    *&v23 = cosf(v71.f32[0]);
    *(&v23 + 1) = v68;
    v69 = v23;
    v24 = cosf(v71.f32[2]);
    v25 = v69;
    *(&v25 + 2) = v24;
    v70 = v25;
    v26 = cosf(v71.f32[3]);
    v27 = v70;
    *(&v27 + 3) = v26;
    *(a2 + v20 * 16) = v27;
    ++v20;
  }

  while (v20 != 4);
  if (a5)
  {
    v28 = 0;
    v29 = a4 + 21484;
    do
    {
      v30 = (a4 + 21480 + v28 * 2);
      v31 = v29 + v28 * 2 > (a4 + 21544) || v30 > v29 + v28 * 2;
      v32 = &v15[v28];
      v33 = &v15[v28 + 2];
      if (v31 || v33 > v16 || v32 > v33 || v32 < v15)
      {
        goto LABEL_80;
      }

      *(a3 + v28 * 2) = *v30 + *v32;
      v28 += 2;
    }

    while (v28 != 32);
    v37 = a3 + 64;
    v_sort(a3, 0, 15, 16);
    v38 = 0;
    v39 = *v65;
    v40 = flt_19B0B0278[*v65 == 16000];
    v41 = 1000.0;
    if (*v65 == 16000)
    {
      v41 = 1250.0;
    }

    v42 = 62.5;
    if (v39 != 16000)
    {
      v42 = 50.0;
    }

    v43 = 3.0;
    v44 = v42 * 3.0;
    do
    {
      v45 = (a3 + v38);
      v46 = a3 + v38 + 4;
      if (a3 + v38 < a3 || v46 > v37 || v45 > v46)
      {
        goto LABEL_80;
      }

      v49 = *v45;
      v50 = 2.0;
      if (*v45 <= v41)
      {
        v50 = v43;
        if (v49 > 1900.0)
        {
          v50 = 1.0;
        }
      }

      if (v49 < v44)
      {
        *v45 = v44;
        v49 = v44;
      }

      v44 = v49 + (v42 * v50);
      v38 += 4;
      v43 = v50;
    }

    while (v38 != 64);
    v51 = (a3 + 60);
    if (a3 + 60 < a3 || v51 > v37)
    {
LABEL_80:
      __break(0x5519u);
    }

    v52 = -v42;
    v53 = vcvts_n_f32_s32(v39, 1uLL);
    v54 = v53 + (v52 * v50);
    if (*v51 > v54)
    {
      v55 = 15;
      do
      {
        v56 = (a3 + 4 * v55);
        v57 = v56 + 1;
        v58 = v56 < a3 || v57 > v37;
        if (v58 || v56 > v57)
        {
          goto LABEL_80;
        }

        v60 = *v56;
        v61 = 2.0;
        if (*v56 > v40)
        {
          v61 = v50;
          if (v60 <= v41)
          {
            v61 = 3.0;
          }
        }

        if (v60 > v54)
        {
          *v56 = v54;
          v60 = v54;
        }

        v54 = v60 + (v52 * v61);
        v50 = v61;
        v12 = v55-- == 0;
      }

      while (!v12);
    }

    for (i = 0; i != 64; i += 4)
    {
      *(a1 + i) = cosf((*(a3 + i) * 3.1416) / v53);
    }
  }

  else
  {
    modify_lsf(a3, a3 + 64, v21, 0);
    v63 = 0;
    v64 = *v65 * 0.5;
    do
    {
      *(a1 + v63) = cosf((*(a3 + v63) * 3.1416) / v64);
      v63 += 4;
    }

    while (v63 != 64);
  }
}

void decoder_tcx(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, unsigned __int32 a10, __int16 *a11, unint64_t a12, char *a13, unint64_t a14, uint64_t a15, __int16 a16, int a17, int a18)
{
  v18 = MEMORY[0x1EEE9AC00](a1);
  v889 = v21;
  v893 = v22;
  *v900 = v23;
  v25 = v24;
  v27 = v26;
  v905 = v28;
  v29 = a10;
  v887 = a9;
  *v934 = *MEMORY[0x1E69E9840];
  v886 = (a15 + 58172);
  v30 = (a15 + 136744);
  v31 = (a15 + 123676);
  v32 = v18 + 0x4000;
  v910 = 0;
  v885 = *(v18 + 8556);
  v884 = *(v18 + 17132);
  v33 = *(v18 + 8576);
  v34 = *(v18 + 17152);
  v35 = *(a15 + 137760);
  if (v35)
  {
    v36 = 1.0;
  }

  else
  {
    v36 = *(a15 + 137848);
  }

  *v890 = v18;
  v899 = a17;
  v894 = a18;
  v892 = v20;
  v882 = v19;
  *&v896 = a15 + 123676;
  if (a17)
  {
    v37 = *v30;
    v38 = *(a15 + 138268);
    v883 = *(a15 + 136748);
    if (v38)
    {
      v879 = v38;
      v39 = *(v18 + 17160);
      v875 = *(v18 + 17164);
      v876 = v39;
      v29 = a10 + (*v31 >> 2);
    }

    else
    {
      v875 = v34;
      v876 = v33;
      v879 = 0;
    }

    v897.i32[0] = v29;
    v903 = v29;
  }

  else
  {
    if (a18)
    {
      v879 = 0;
      *(a15 + 138268) = 0;
      v37 = v889;
      v40 = v887;
      v41 = a10;
    }

    else
    {
      if (*v886)
      {
        v42 = 0;
        v37 = v889;
        v40 = v887;
        v41 = a10;
      }

      else
      {
        if (!*(a15 + 24310))
        {
          *(v18 + 7224) = 0;
        }

        v43 = v33 + v889;
        v44 = v34 + v887;
        v41 = a10 + (*v31 >> 2);
        v33 = *(v18 + 17160);
        v37 = v43 - v33;
        v34 = *(v18 + 17164);
        v40 = v44 - v34;
        v42 = 1;
      }

      v879 = v42;
      *(a15 + 138268) = v42;
      if (!v886[1])
      {
        v29 = a10 + (*v31 >> 2);
      }
    }

    v875 = v34;
    v876 = v33;
    v903 = v29;
    v883 = v40;
    *v30 = v37;
    *(a15 + 136748) = v40;
    v897.i32[0] = v41;
  }

  v932 = -1;
  *&v45 = -1;
  *(&v45 + 1) = -1;
  v931[3] = v45;
  v931[2] = v45;
  v931[1] = v45;
  v931[0] = v45;
  memset(v930, 255, sizeof(v930));
  v908[4] = xmmword_19B36F32C;
  v908[5] = unk_19B36F33C;
  v909 = -1;
  memset(v908, 170, 32);
  v908[2] = xmmword_19B36F30C;
  v908[3] = unk_19B36F31C;
  *&v46 = -1;
  *(&v46 + 1) = -1;
  v928[0] = v46;
  v928[1] = v46;
  v928[2] = v46;
  v928[3] = v46;
  v928[4] = v46;
  v928[5] = v46;
  v928[6] = v46;
  v928[7] = v46;
  v928[8] = v46;
  v928[9] = v46;
  v928[10] = v46;
  v928[11] = v46;
  v928[12] = v46;
  v928[13] = v46;
  v928[14] = v46;
  v929 = v46;
  memset(v927, 255, sizeof(v927));
  *&v47 = -1;
  *(&v47 + 1) = -1;
  v923 = v47;
  v924 = v47;
  v925 = v47;
  v926 = v47;
  v907 = -1;
  memset(v922, 255, sizeof(v922));
  memset(v921, 255, sizeof(v921));
  memset(__b, 255, sizeof(__b));
  v49 = *(a15 + 5240);
  v901 = a15;
  v902 = v37;
  if (v902 == v49 >> 1 && *(a15 + 138540))
  {
    v50 = a15 + 166520;
    v51 = v903;
    v52 = v905;
    v53 = v897.i32[0];
    if (a15 + 166520 > (a15 + 179528))
    {
      goto LABEL_1544;
    }

    v54 = v901;
    v55 = v883;
    if (*v50)
    {
      LOWORD(v50) = v901 - 22552;
      if (v901 + 174056 > (v901 + 174576))
      {
        goto LABEL_1544;
      }

      v56 = (v901 + 174672);
      goto LABEL_35;
    }
  }

  else
  {
    v50 = a15 + 166520;
    v51 = v903;
    v52 = v905;
    v53 = v897.i32[0];
    if (a15 + 166520 > (a15 + 179528))
    {
      goto LABEL_1544;
    }

    if (*v886)
    {
      v54 = v901;
      v55 = v883;
      if (v879)
      {
        v57 = *(a15 + 24308) != 0;
      }

      else
      {
        v57 = 0;
      }
    }

    else
    {
      v57 = 1;
      v54 = v901;
      v55 = v883;
    }

    if (*v50)
    {
      v50 = v54 + 174056 + 260 * v57;
      if (v54 + 174056 > v50 || v50 + 260 > v54 + 174836)
      {
        goto LABEL_1544;
      }

      v56 = (v50 + 96);
LABEL_35:
      v58 = vrev64q_s32(*v56);
      v48 = vextq_s8(v58, v58, 8uLL);
      *(a15 + 166528) = v48;
    }
  }

  v59 = v54 + 156640;
  v60 = v54 + 136880;
  v61 = *(v54 + 179528);
  v898 = v55;
  if (v61)
  {
    v62 = *(a15 + 166532);
    v874 = v62;
    if (v62 >= v55)
    {
      v62 = v55;
    }

    LODWORD(v63) = v62 & ~(v62 >> 31);
    if (v63 >= 1200)
    {
      v63 = 1200;
    }

    else
    {
      v63 = v63;
    }

    v868 = v63;
    v64 = v51;
  }

  else
  {
    if (v55 >= v902)
    {
      v65 = v902;
    }

    else
    {
      v65 = v55;
    }

    if (*(v896 + 168))
    {
      v66 = v55;
    }

    else
    {
      v66 = v65;
    }

    LODWORD(v67) = v66 & ~(v66 >> 31);
    if (v67 >= 1200)
    {
      v67 = 1200;
    }

    else
    {
      v67 = v67;
    }

    v868 = v67;
    v64 = v51;
    v874 = v51;
  }

  v895 = v54 + 166460;
  v888 = (v54 + 156640);
  v904 = v54 + 136880;
  v869 = v54 + 36080;
  if (v899)
  {
    LODWORD(v881) = *(a15 + 138200);
    *(a15 + 138504) = 0;
    if (*(v54 + 36082))
    {
      v48.i32[0] = *(v54 + 138488);
      v68 = 1.0;
      if (*(v54 + 36080) == 1)
      {
        *v69.i64 = __exp10((*v48.i32 / 28.0));
        v52 = v905;
        *v69.i32 = *v69.i64;
        *v69.i32 = sqrtf(160.0 / v903) * *v69.i32;
        v897 = v69;
        *(v60 + 1608) = v69.i32[0];
      }

      else
      {
        v897 = v48;
      }
    }

    else
    {
      v48.i32[0] = *(v54 + 138488);
      v897 = v48;
      v74 = Damping_fact(a16, *(v54 + 138196), *(v54 + 24320), (v54 + 24324), *v886, v27);
      v52 = v905;
      v68 = v74;
      v35 = *(a15 + 137760);
    }

    v891 = (v52 + 16);
    *(a15 + 138504) = v68;
    v75 = v68 * *(v59 + 20);
    *(v59 + 20) = v75;
    if (v35)
    {
      v36 = *(a15 + 137848);
    }

    weight_a(*v900, v893, v931, v933, 16, (v75 * (v36 + -1.0)) + 1.0);
    lpc2mdct(v931, v933, v928);
    v880 = 0;
    v76 = 0;
    v77 = 0;
    LODWORD(v878) = 0;
    v78 = 4;
    goto LABEL_203;
  }

  v50 = (v52 + 2);
  if ((v52 + 2) > v25 || v50 < v52 || (v52 + 4) > v25 || v50 > (v52 + 4))
  {
    goto LABEL_1544;
  }

  v70 = v52 + 10;
  v71 = *v52;
  LODWORD(v881) = *(v52 + 1);
  *(a15 + 138200) = v881;
  LODWORD(v50) = *(v32 + 784);
  LODWORD(v873) = a16;
  LODWORD(v877) = v71;
  if (v50)
  {
    if (v70 < v52)
    {
      goto LABEL_1544;
    }

    v72 = *(*v890 + 17272);
    v933[0] = v52 + 10;
    v933[1] = v25;
    ResetTnsData(v908);
    if (*(v72 + 1) < 2u)
    {
      v73 = &tnsEnabledWBTCX20BitMap;
    }

    else if (*(v72 + 16) > 511)
    {
      v73 = &tnsEnabledSWBTCX20BitMap;
    }

    else
    {
      v73 = &tnsEnabledSWBTCX10BitMap;
    }

    SetParameters(v73, 1, v908, &v910, v933, &v910);
    v880 = SLODWORD(v908[0]) > 0;
    v79 = v910;
    LODWORD(v51) = v903;
    v52 = v905;
    v53 = v897.i32[0];
  }

  else
  {
    v79 = 0;
    v880 = 0;
  }

  v80 = &v70[2 * v79];
  v81 = (v80 + 6);
  if (*(v32 + 912))
  {
    LOWORD(v50) = v894;
    if (v894 > 0 || (LOWORD(v50) = v886[1], v50))
    {
      if (v80 < v52)
      {
        goto LABEL_1544;
      }

      v50 = (v80 + 2);
      if ((v80 + 2) > v25 || v80 > v50)
      {
        goto LABEL_1544;
      }

      *(a15 + 138552) = *v80;
      if (v51 >= 1)
      {
        v94 = 0;
        v50 = v930;
        v78 = 4;
        do
        {
          v95 = v94;
          v96 = &v81[v94];
          v97 = v96 + 1;
          v99 = v96 < v52 || v97 > v25 || v96 > v97;
          v100 = v930 + 4 * v95;
          v101 = v100 + 4;
          v102 = !v99 && v100 >= v930;
          if (!v102 || v101 > v931 || v100 > v101)
          {
            goto LABEL_1544;
          }

          *(v930 + v95) = *v96;
          v94 = v95 + 1;
        }

        while (v51 > (v95 + 1));
LABEL_140:
        v76 = 0;
        v77 = 0;
        v121 = 0;
        goto LABEL_165;
      }

LABEL_141:
      v76 = 0;
      v77 = 0;
      v121 = 0;
      v78 = 4;
      goto LABEL_165;
    }
  }

  LOWORD(v50) = *(a15 + 166502);
  if (!v50)
  {
    if (v51 >= 1)
    {
      v105 = 0;
      v50 = v930;
      do
      {
        v106 = v105;
        v107 = &v81[v105];
        v108 = v107 + 1;
        v110 = v107 < v52 || v108 > v25 || v107 > v108;
        v111 = v930 + 4 * v106;
        v112 = v111 + 4;
        if (v110 || v111 < v930 || v112 > v931 || v111 > v112)
        {
          goto LABEL_1544;
        }

        *(v930 + v106) = *v107;
        v105 = v106 + 1;
      }

      while (v51 > (v106 + 1));
    }

    if (v898 > v64)
    {
      v50 = v930;
      v78 = 4;
      v116 = v64;
      do
      {
        v117 = v930 + v116;
        v118 = v117 + 1;
        if (v117 < v930 || v118 > v931 || v117 > v118)
        {
          goto LABEL_1544;
        }

        *v117 = 0;
        ++v116;
      }

      while (v898 > v116);
      goto LABEL_140;
    }

    goto LABEL_141;
  }

  v872 = v79;
  if (v81 < v52)
  {
    goto LABEL_1544;
  }

  v82 = (v80 + 8);
  if ((v80 + 8) > v25 || v81 > v82 || v80 < v52)
  {
    goto LABEL_1544;
  }

  v83 = v37 << 16;
  v878 = v931;
  v891 = (v80 + 6);
  v84 = *v81;
  v85 = v886[1];
  LODWORD(v871) = *(a15 + 166500);
  v86 = *(v901 + 5242);
  memset(v933, 170, 0xC80uLL);
  LOWORD(v906) = -21846;
  if (v903 > 800 || (v84 - 265) <= 0xFFFFFEF7)
  {
    *(v901 + 5168) = 1;
    LOWORD(v50) = v902;
    v122 = v905;
    v123 = v891;
    v124 = v878;
    if (v902 >= 0x4B1)
    {
      goto LABEL_1544;
    }

    if (!v83)
    {
      goto LABEL_145;
    }

LABEL_144:
    bzero(v930, (v83 >> 14));
    v124 = v878;
    v123 = v891;
    v122 = v905;
LABEL_145:
    LODWORD(v125) = 0;
LABEL_146:
    v126 = v901;
    v127 = v894;
    goto LABEL_147;
  }

  v87 = *(v896 + 132);
  v88 = v87;
  v89 = 1.0 / *(a15 + 137848);
  if (v87 < 0.0)
  {
    v90 = v88 * 32768.0 + -0.5;
    v91 = v892;
    v92 = v882;
    if (v90 <= -32768.0)
    {
      LOWORD(v93) = 0x8000;
      goto LABEL_1322;
    }

    goto LABEL_696;
  }

  v90 = v88 * 32768.0 + 0.5;
  v91 = v892;
  v92 = v882;
  if (v90 < 32767.0)
  {
LABEL_696:
    v93 = v90;
    goto LABEL_1322;
  }

  LOWORD(v93) = 0x7FFF;
LABEL_1322:
  v768 = v89 * 0.5;
  v769 = (v89 * 0.5);
  LODWORD(v870) = v83;
  if (v768 < 0.0)
  {
    v770 = v769 * 32768.0 + -0.5;
    if (v770 <= -32768.0)
    {
      LOWORD(v771) = 0x8000;
      goto LABEL_1328;
    }

    goto LABEL_1326;
  }

  v770 = v769 * 32768.0 + 0.5;
  if (v770 < 32767.0)
  {
LABEL_1326:
    v771 = v770;
    goto LABEL_1328;
  }

  LOWORD(v771) = 0x7FFF;
LABEL_1328:
  v772 = v903;
  tcx_arith_render_envelope(v92, v91, v902, v903, v93, v771, v933, &v933[400]);
  v773 = v903;
  v122 = v905;
  v123 = v891;
  v124 = v878;
  if (v85)
  {
    v50 = (v80 + 2);
    if ((v80 + 2) > v25 || v50 < v80)
    {
      goto LABEL_1544;
    }

    if (*v80)
    {
      LODWORD(v896) = v903;
      memset(v913, 170, 18);
      if ((v873 & 0xFFFFFFFE) != 2)
      {
        goto LABEL_1379;
      }

      __A = -1431655766;
      v911 = -1431655766;
      v774 = (v80 + 4);
      if (v774 > v25 || v50 > v774)
      {
        goto LABEL_1544;
      }

      v775 = *v50;
      if ((v775 & 0x100) != 0)
      {
        v784 = &NumRatioBits + 68 * (v903 > 255);
        v50 = &v784[4 * (v775 >> 9)];
        v777 = v873;
        if (v50 < v784 || v50 + 4 > (v784 + 68) || v50 > v50 + 4)
        {
          goto LABEL_1544;
        }

        v776 = *v50;
      }

      else
      {
        v776 = 8;
        v777 = v873;
      }

      v785 = v776 + v84;
      v786 = v777 == 2 ? v785 + 2 : v785;
      v787 = v903 < 256 || v786 < 151;
      v788 = v787;
      UnmapIndex(v775, v903 > 255, v871, v788, &__A, &v911);
      *&v919[0] = v913;
      *(&v919[0] + 1) = &v913[18];
      *&v919[1] = v913;
      LODWORD(v892) = v911;
      LODWORD(v882) = __A;
      v789 = tcx_hm_render(v911, __A, v919);
      v122 = v905;
      v123 = v891;
      v124 = v878;
      if (v789)
      {
        goto LABEL_1379;
      }

      if (v891 > v25 || v774 > v891)
      {
        goto LABEL_1544;
      }

      v790 = *v774;
      if (v790 > 3)
      {
        goto LABEL_1379;
      }

      v791 = &qGains + 8 * (v873 == 2);
      v50 = &v791[2 * v790];
      if (v50 < v791 || v50 + 2 > (v791 + 8) || v50 > v50 + 2)
      {
        goto LABEL_1544;
      }

      v792 = *v50;
      *&v919[0] = v913;
      *(&v919[0] + 1) = &v913[18];
      *&v919[1] = v913;
      tcx_hm_modify_envelope(v792, v892, v882, v919, v933, &v933[400], v903);
      v773 = v903;
      v122 = v905;
      v123 = v891;
      v124 = v878;
      v772 = v896;
      if (v786 - v84 + 1 < 0)
      {
LABEL_1379:
        *(v901 + 5168) = 1;
        LOWORD(v50) = v902;
        if (v902 > 0x4B0)
        {
          goto LABEL_1544;
        }

        v83 = v870;
        if (!v870)
        {
          goto LABEL_145;
        }

        goto LABEL_144;
      }
    }
  }

  if (*(v901 + 179528))
  {
    v793 = *(a15 + 166532);
    if (v793 >= v773)
    {
      LOWORD(v793) = v773;
    }
  }

  else
  {
    LOWORD(v793) = v773;
  }

  v794 = v773;
  tcx_arith_scale_envelope(v772, v793, v933, &v933[400], v84, v86 > 1, v933, &v933[400], &v906);
  v796 = v794;
  v122 = v905;
  v123 = v891;
  v124 = v878;
  if ((v794 & 0x80000000) != 0)
  {
    goto LABEL_1544;
  }

  LODWORD(v797) = 0;
  LOWORD(v50) = LOWORD(v906);
  v798 = 16;
  v799 = v82;
  do
  {
    if (v799 < v82 || (v799 + 1) > v25 || v799 > v799 + 1)
    {
      goto LABEL_1544;
    }

    v800 = *v799++;
    v797 = v800 | (2 * v797);
    --v798;
  }

  while (v798);
  if (LOWORD(v906) == 0x8000)
  {
    v801 = 0x8000;
  }

  else
  {
    v801 = LOWORD(v906) - 1;
  }

  if (!v794)
  {
    LODWORD(v802) = 0;
    LODWORD(v125) = 16;
    goto LABEL_1498;
  }

  v802 = 0;
  LODWORD(v892) = v801;
  v873 = v919 + 1;
  v871 = &v918;
  *&v795 = 0xFFFF00000000;
  LODWORD(v125) = 16;
  v903 = v794;
  v882 = v794;
  v803 = &v905[v872];
  while (1)
  {
    v804 = *(v933 + v802);
    if (!*(v933 + v802))
    {
      bzero(v930, (4 * v903));
      v796 = v903;
      LODWORD(v125) = -1;
      v126 = v901;
      v122 = v905;
      v123 = v891;
      v124 = v878;
      goto LABEL_1511;
    }

    if (v804 == 0x8000)
    {
      LOWORD(v805) = 0x7FFF;
    }

    else
    {
      v805 = -v804;
    }

    v896 = v795;
    v806 = expfp(v805, v892);
    v807 = v896;
    memset(v919, 170, 24);
    v808 = v896;
    v809 = DWORD1(v896);
    v810 = DWORD1(v896) + 1 - v896;
    v811 = ((v797 - v896) << 14) | 0x3FFF;
    if (v810 * (v806 >> 1) <= v811)
    {
      LODWORD(v50) = 0;
      v820 = 0x4000;
      v122 = v905;
      v123 = v891;
      v124 = v878;
    }

    else
    {
      v812 = v811;
      LOWORD(v919[0]) = v806;
      v50 = -11;
      v813 = v873;
      LOWORD(v814) = v806;
      v122 = v905;
      v123 = v891;
      v124 = v878;
      while (1)
      {
        v815 = v814;
        if (v813 - 1 < v919 || v813 - 1 > v813)
        {
          goto LABEL_1544;
        }

        v816 = *(v813 - 1) * *(v813 - 1);
        if (v816 <= 0x3FFFBFFF)
        {
          v817 = (v816 + 0x4000) >> 15;
        }

        else
        {
          v817 = 0x7FFF;
        }

        *v813 = v817;
        v818 = (v806 * v817 + 0x4000) >> 15;
        if ((v818 & 0x10000) != 0)
        {
          v814 = v818 | 0xFFFF0000;
        }

        else
        {
          v814 = (v806 * v817 + 0x4000) >> 15;
        }

        if (v814 <= -32768)
        {
          v814 = -32768;
        }

        if (v814 >= 0x7FFF)
        {
          v814 = 0x7FFF;
        }

        if (v810 * (v814 >> 1) <= v812)
        {
          break;
        }

        ++v813;
        v102 = __CFADD__(v50++, 1);
        if (v102)
        {
          LODWORD(v50) = 0;
          LOWORD(v814) = 0;
          v819 = 12;
LABEL_1418:
          v822 = v819 + 1;
          v823 = &v871[2 * v819];
          while (1)
          {
            v824 = v823 + 1;
            v825 = v823 < v919 || v824 > &v919[1] + 4;
            if (v825 || v823 > v824)
            {
              goto LABEL_1544;
            }

            v827 = *v823--;
            v828 = (v827 * v815 + 0x4000) >> 15;
            if ((v828 & 0x10000) != 0)
            {
              v829 = v828 | 0xFFFF0000;
            }

            else
            {
              v829 = v828;
            }

            if (v829 <= -32768)
            {
              v829 = -32768;
            }

            if (v829 >= 0x7FFF)
            {
              v829 = 0x7FFF;
            }

            v830 = v810 * (v829 >> 1);
            if (v830 <= v812)
            {
              LOWORD(v814) = v829;
            }

            else
            {
              v815 = v829;
            }

            if (v830 <= v812)
            {
              v831 = -1 << (v822 - 3);
            }

            else
            {
              v831 = 0;
            }

            LODWORD(v50) = v831 + v50;
            if (--v822 <= 2)
            {
              goto LABEL_1440;
            }
          }
        }
      }

      v821 = v50 + 12;
      v819 = v50 + 11;
      LODWORD(v50) = 1 << (v50 + 11);
      if (v821 >= 3)
      {
        goto LABEL_1418;
      }

LABEL_1440:
      v820 = v815 >> 1;
      LOWORD(v806) = v814;
    }

    v125 = v125;
    v832 = v807 + ((v820 * v810) >> 14);
    v833 = v807 + (((v806 >> 1) * v810) >> 14);
    if (v125 < v84)
    {
      v834 = v125;
      v835 = v797;
      while (1)
      {
        if (v832 > 0x8000)
        {
          if (v833 < 0x8000)
          {
            if (v833 < 0x4000 || v832 > 0xC000)
            {
              goto LABEL_1455;
            }

            LODWORD(v835) = v835 - 0x4000;
            v832 -= 0x4000;
            v833 -= 0x4000;
          }

          else
          {
            LODWORD(v835) = v835 - 0x8000;
            v832 -= 0x8000;
            v833 -= 0x8000;
          }
        }

        v836 = &v803[v834 + 9];
        if (v836 < v82)
        {
          goto LABEL_1544;
        }

        v837 = &v803[v834 + 10];
        if (v837 > v25 || v836 > v837)
        {
          goto LABEL_1544;
        }

        v838 = &v803[v125++];
        v832 *= 2;
        v833 *= 2;
        v835 = *(v838 + 9) | (2 * v835);
        ++v834;
        if (v84 == v125)
        {
          goto LABEL_1456;
        }
      }
    }

    v835 = v797;
LABEL_1455:
    if (v125 != v84)
    {
LABEL_1460:
      v808 = v833;
      goto LABEL_1461;
    }

LABEL_1456:
    LODWORD(v125) = v84;
    if (v808 != v833)
    {
      goto LABEL_1460;
    }

    if (v809 == v832 && v797 == v835)
    {
      v795 = 0uLL;
      LODWORD(v125) = -1;
      goto LABEL_1479;
    }

LABEL_1461:
    if (!v50)
    {
      LODWORD(v795) = v808;
      DWORD1(v795) = v832 - 1;
      v797 = v835;
LABEL_1479:
      v50 = v930 + 4 * v802;
      if (v50 < v930 || v50 + 4 > v124 || v50 > v50 + 4)
      {
        goto LABEL_1544;
      }

      *v50 = 0;
      goto LABEL_1490;
    }

    v125 = v125;
    v839 = v832;
    v840 = v832 - v808;
    v841 = v808 + (v840 >> 1);
    if (v125 >= v84)
    {
      if (v840 >> 1 <= v835 - v808)
      {
        v842 = -2;
      }

      else
      {
        LODWORD(v839) = v808 + (v840 >> 1);
        LODWORD(v841) = v808;
        v842 = -4;
      }
    }

    else
    {
      if (v840 << 13 <= (((v835 - v808) << 14) | 0x3FFF))
      {
        v842 = -2;
      }

      else
      {
        v839 = v808 + (v840 >> 1);
        v841 = v808;
        v842 = -4;
      }

      v843 = v125;
      do
      {
        if (v839 > 0x8000)
        {
          if (v841 < 0x8000)
          {
            if (v841 < 0x4000 || v839 > 0xC000)
            {
              goto LABEL_1486;
            }

            LODWORD(v835) = v835 - 0x4000;
            v839 -= 0x4000;
            v841 -= 0x4000;
          }

          else
          {
            LODWORD(v835) = v835 - 0x8000;
            v839 -= 0x8000;
            v841 -= 0x8000;
          }
        }

        v844 = &v803[v843 + 9];
        if (v844 < v82)
        {
          goto LABEL_1544;
        }

        v845 = &v803[v843 + 10];
        if (v845 > v25 || v844 > v845)
        {
          goto LABEL_1544;
        }

        v846 = &v803[v125++];
        v839 *= 2;
        v841 *= 2;
        v835 = *(v846 + 9) | (2 * v835);
        ++v843;
      }

      while (v84 != v125);
      LODWORD(v125) = v84;
    }

LABEL_1486:
    v847 = v930 + v802;
    if (v847 < v930 || (v847 + 1) > v124 || v847 > v847 + 1)
    {
      goto LABEL_1544;
    }

    LODWORD(v795) = v841;
    DWORD1(v795) = v839 - 1;
    *v847 = v50 * (v842 + 3);
    v797 = v835;
LABEL_1490:
    if ((vcgt_s32(vdup_lane_s32(*&v795, 1), *&v795).u8[0] & 1) == 0)
    {
      break;
    }

    if (++v802 == v882)
    {
      v126 = v901;
      v127 = v894;
      v796 = v903;
      goto LABEL_1510;
    }
  }

  if (v84 > v125)
  {
    LODWORD(v125) = -1;
  }

  v796 = v903;
LABEL_1498:
  if (v802 >= v796)
  {
    v126 = v901;
    v127 = v894;
  }

  else
  {
    v50 = v796 - v802;
    v848 = v930 + v802;
    do
    {
      v849 = v848 + 1;
      if (v848 < v930 || v849 > v124 || v848 > v849)
      {
        goto LABEL_1544;
      }

      *v848++ = 0;
      --v50;
    }

    while (v50);
    v126 = v901;
    v127 = v894;
  }

LABEL_1510:
  if ((v125 & 0x80000000) != 0)
  {
LABEL_1511:
    *(v126 + 5168) = 1;
    LOWORD(v50) = v902;
    if (v902 > 0x4B0)
    {
      goto LABEL_1544;
    }

    if (v870)
    {
      bzero(v930, (v870 >> 14));
      v124 = v878;
      v123 = v891;
      v122 = v905;
      v796 = v903;
    }

    v126 = v901;
    v127 = v894;
  }

  if (v796 < v902)
  {
    v50 = v930;
    v852 = v930 + v796;
    v853 = v796;
    while (1)
    {
      v854 = v852 + 1;
      v855 = v852 < v930 || v854 > v124;
      if (v855 || v852 > v854)
      {
        goto LABEL_1544;
      }

      *v852++ = 0;
      if (v902 <= ++v853)
      {
        goto LABEL_146;
      }
    }
  }

LABEL_147:
  v128 = v126 + 138544;
  v50 = v128 + 4 * v127;
  v53 = v897.i32[0];
  if (v50 < v128 || v50 + 4 > v901 + 138552 || v50 > v50 + 4)
  {
    goto LABEL_1544;
  }

  *v50 = *v123 - v125;
  if (v874 >= 1)
  {
    v50 = 0;
    v129 = 0;
    v121 = 0;
    while (1)
    {
      v130 = v930 + v50 + 4;
      v131 = (v930 + v50) < v930 || v130 > v124;
      if (v131 || v930 + v50 > v130)
      {
        goto LABEL_1544;
      }

      v133 = *(v930 + v129);
      if (v133 < 0)
      {
        v133 = -v133;
      }

      v121 += 2 * v129++ * v133;
      v50 += 4;
      if (v874 == v129)
      {
        goto LABEL_164;
      }
    }
  }

  v121 = 0;
LABEL_164:
  v76 = v122;
  v78 = v25;
  v77 = v123;
  v81 = v82;
LABEL_165:
  if (v53 > v64)
  {
    v50 = v930;
    v134 = v64;
    do
    {
      v135 = v930 + v134;
      v136 = v135 + 1;
      v137 = v135 < v930 || v136 > v931;
      if (v137 || v135 > v136)
      {
        goto LABEL_1544;
      }

      *v135 = 0;
    }

    while (v53 > ++v134);
  }

  if (v902 <= v883)
  {
    LODWORD(v50) = v898;
  }

  else
  {
    LODWORD(v50) = v902;
  }

  if (v50 > v64)
  {
    do
    {
      v139 = v930 + v64;
      v140 = v139 + 1;
      v141 = v139 < v930 || v140 > v931;
      if (v141 || v139 > v140)
      {
        goto LABEL_1544;
      }

      *v139 = 0;
    }

    while (v50 > ++v64);
  }

  v891 = v81;
  weight_a(*v900, v893, v931, v933, 16, v36);
  lpc2mdct(v931, v933, v928);
  if (v903 <= v898)
  {
    LODWORD(v50) = v898;
  }

  else
  {
    LODWORD(v50) = v903;
  }

  if (v50 >= 1)
  {
    v143 = 0;
    do
    {
      v144 = (v922 + 4 * v143);
      v145 = (v144 + 4);
      v146 = v144 < v922 || v145 > &v923;
      if (v146 || v144 > v145)
      {
        goto LABEL_1544;
      }

      *v144 = 1065353216;
    }

    while (v50 > ++v143);
  }

  v148 = v877;
  v60 = v904;
  if (!*(v904 + 1660))
  {
    AdaptLowFreqDeemph(v930, v931, *(v895 + 42), v928, v930, v902, v922, &v923);
  }

  LODWORD(v878) = v121;
  *(v904 + 1624) = 0;
  *v149.i64 = __exp10((v148 / 28.0));
  *v149.i32 = *v149.i64;
  *v149.i32 = sqrtf(160.0 / v903) * *v149.i32;
  v897 = v149;
  *(v60 + 1608) = v149.i32[0];
  *(v888 + 5) = 1065353216;
LABEL_203:
  v907 = 0;
  memset(&v927[1], 0, 256);
  v892 = (v901 + 123832);
  v150 = *v890 + 17280;
  v923 = 0u;
  v924 = 0u;
  v925 = 0u;
  v926 = 0u;
  v927[0] = 1.0;
  syn_filt(v931);
  deemph_opt(v927, (v901 + 137824), 64, &v907, *(v60 + 940));
  if (v899)
  {
    v152 = v901;
    if (v894 == 1 || *(v901 + 5200) == 1)
    {
      v171 = *(v60 + 872);
      LODWORD(v933[0]) = -1;
      vDSP_dotpr(v927, 1, v927, 1, v933, 0x40uLL);
      v172 = v171 / sqrtf(*v933);
      v173 = 1.0;
      v153 = *v890;
      if (*(v60 + 1316) != 1)
      {
        v173 = *(v60 + 876);
      }

      *(v60 + 1632) = (v173 - v172) / *(v901 + 5240);
      *(v60 + 1628) = v173;
      *(v60 + 876) = v172;
    }

    else
    {
      v153 = *v890;
    }

    v155.i32[0] = v897.i32[0];
  }

  else
  {
    LODWORD(v933[0]) = -1;
    vDSP_dotpr(v927, 1, v927, 1, v933, 0x40uLL);
    *(v60 + 872) = sqrtf(*v933);
    *(v60 + 1628) = 1065353216;
    if (*(v150 + 18))
    {
      v154 = v903;
      v155 = v897;
      if (*(v895 + 42))
      {
        v50 = v901 + 138544 + 4 * v894;
        if (v50 < v901 + 138544)
        {
          goto LABEL_1544;
        }

        if (v50 + 4 > v901 + 138552)
        {
          goto LABEL_1544;
        }

        if (v50 > v50 + 4)
        {
          goto LABEL_1544;
        }

        if (v77 < v76)
        {
          goto LABEL_1544;
        }

        if ((v77 + 1) > v78)
        {
          goto LABEL_1544;
        }

        if (v77 > v77 + 1)
        {
          goto LABEL_1544;
        }

        if (v903 > 0x4B0)
        {
          goto LABEL_1544;
        }

        v156 = *v50;
        v50 = &v891[*v77];
        v157 = v50 - 4 * v156;
        if (v157 < v905)
        {
          goto LABEL_1544;
        }

        v158 = *v150;
        memset(v933, 170, 0x12C0uLL);
        v159 = v903;
        v160 = 0;
        if (v156 >= 100)
        {
          v161 = 100;
        }

        else
        {
          v161 = v156;
        }

        LODWORD(v50) = 0;
        if (v903)
        {
          v153 = *v890;
          v60 = v904;
          v155 = v897;
          if (v156 >= 1)
          {
            v162 = 0;
            LODWORD(v50) = 0;
            v160 = 0;
            do
            {
              v163 = *(v930 + v162);
              if (v163 == 0.0)
              {
                v167 = v933 + v160;
                v168 = v167 + 1;
                if (v167 < v933 || v168 > &v933[600] || v167 > v168)
                {
                  goto LABEL_1544;
                }

                ++v160;
                *v167 = v162;
              }

              else
              {
                v164 = (v157 + 4 * v50);
                if (v164 < v157)
                {
                  goto LABEL_1544;
                }

                if ((v164 + 1) > v25 || v164 > v164 + 1)
                {
                  goto LABEL_1544;
                }

                v166 = *(v922 + v162);
                if (v163 <= 0.0)
                {
                  v166 = -v166;
                }

                LODWORD(v50) = v50 + 1;
                *(v930 + v162) = v163 + (v166 * ((v158 * -0.5) + (*v164 * 0.5)));
              }

              ++v162;
            }

            while (v162 < v159 && v50 < v161);
          }
        }

        else
        {
          v153 = *v890;
          v60 = v904;
          v155 = v897;
        }

        if (v160 >= 1)
        {
          v444 = v161 - 1;
          if (v50 < v444)
          {
            v445 = v922 + v159;
            v446 = v930 + v159;
            v447 = 1;
            v448 = v933;
            while (1)
            {
              v449 = v448 + 1;
              v450 = v448 < v933 || v449 > &v933[600];
              if (v450 || v448 > v449)
              {
                goto LABEL_1544;
              }

              v452 = (v157 + 4 * v50);
              if (v452 < v157 || (v452 + 1) > v25 || v452 > v452 + 1)
              {
                goto LABEL_1544;
              }

              if (*v452)
              {
                v453 = (v157 + 4 * (v50 + 1));
                if (v453 < v157)
                {
                  goto LABEL_1544;
                }

                if ((v453 + 1) > v25)
                {
                  goto LABEL_1544;
                }

                if (v453 > v453 + 1)
                {
                  goto LABEL_1544;
                }

                v454 = *v448;
                v455 = v922 + v454;
                if (v455 < v922)
                {
                  goto LABEL_1544;
                }

                if (v455 + 1 > v445)
                {
                  goto LABEL_1544;
                }

                if (v455 > v455 + 1)
                {
                  goto LABEL_1544;
                }

                v456 = v930 + v454;
                if (v456 < v930 || v456 + 1 > v446 || v456 > v456 + 1)
                {
                  goto LABEL_1544;
                }

                LODWORD(v50) = v50 + 2;
                *v456 = *v455 * ((((1.0 - v158) * 0.33) + ((1.0 - v158) * 0.33)) * (2 * *v453 - 1));
              }

              else
              {
                LODWORD(v50) = v50 + 1;
              }

              if (v447 < v160)
              {
                ++v447;
                ++v448;
                if (v50 < v444)
                {
                  continue;
                }
              }

              break;
            }
          }
        }

        v152 = v901;
      }

      else
      {
        v50 = &v891[v903];
        if (v50 < v905)
        {
          goto LABEL_1544;
        }

        v265 = (v901 + 138544 + 4 * v894);
        if (v265 < v901 + 138544 || (v265 + 1) > v901 + 138552 || v265 > v265 + 1)
        {
          goto LABEL_1544;
        }

        v266 = *v265;
        if (*v265 >= 3)
        {
          v267 = 3;
        }

        else
        {
          v267 = v266;
        }

        if (v266 >= 1)
        {
          v268 = 0;
          v269 = 0;
          v270 = v904;
          while (1)
          {
            v271 = (v50 + v268);
            v272 = v50 + v268 + 4;
            v273 = v50 + v268 < v50 || v272 > v25;
            if (v273 || v271 > v272)
            {
              goto LABEL_1544;
            }

            if (*v271)
            {
              v275 = &gain_corr_fac[v268 / 4];
              if (&gain_corr_fac[v268 / 4] < gain_corr_fac || v275 + 4 > interpol_isp_amr_wb || v275 > v275 + 4)
              {
                goto LABEL_1544;
              }

              v276 = &gain_corr_fac[v269];
            }

            else
            {
              v276 = (&gain_corr_inv_fac + v268);
              if ((&gain_corr_inv_fac + v268) < &gain_corr_inv_fac || v276 + 1 > gain_corr_fac || v276 > v276 + 1)
              {
                goto LABEL_1544;
              }
            }

            *v155.i32 = *v155.i32 * *v276;
            ++v269;
            v268 += 4;
            if (4 * v267 == v268)
            {
              goto LABEL_738;
            }
          }
        }

        v267 = 0;
        v270 = v904;
LABEL_738:
        v458 = *(v270 + 1660);
        if (v458)
        {
          v459 = 0;
        }

        else
        {
          v459 = v922;
        }

        v460 = &v923;
        if (v458)
        {
          v460 = 0;
        }

        if (v903 > 0x4B0 || (v460 - v459) >> 2 < v903)
        {
          goto LABEL_1544;
        }

        v461 = *v150;
        if (v266 >= 100)
        {
          v462 = 100;
        }

        else
        {
          v462 = v266;
        }

        v463 = 0.5 - (v461 * 0.5);
        v464 = v461 * 0.5;
        if (v903)
        {
          v465 = v266 <= v267;
        }

        else
        {
          v465 = 1;
        }

        v466 = !v465;
        if (v458)
        {
          v152 = v901;
          if (v466)
          {
            v467 = v930;
            v468 = 1;
            v153 = *v890;
            v60 = v904;
            while (1)
            {
              v469 = *v467;
              if (*v467 != 0.0)
              {
                v470 = (v50 + 4 * v267);
                v471 = v470 + 1;
                if (v470 < v50 || v471 > v25 || v470 > v471)
                {
                  goto LABEL_1544;
                }

                LODWORD(v267) = v267 + 1;
                v474 = *v470;
                if (v469 <= 0.0)
                {
                  v475 = v464;
                }

                else
                {
                  v475 = v463;
                }

                if (v469 <= 0.0)
                {
                  v476 = v463;
                }

                else
                {
                  v476 = v464;
                }

                v477 = -v476;
                if (!v474)
                {
                  v475 = v477;
                }

                *v467 = v469 + v475;
              }

              if (v468 < v154)
              {
                ++v468;
                ++v467;
                if (v267 < v462)
                {
                  continue;
                }
              }

              goto LABEL_827;
            }
          }

          v153 = *v890;
          v60 = v904;
LABEL_827:
          if (v154 && v267 < v462 - 1)
          {
            v507 = v930;
            v508 = 1;
            while (1)
            {
              if (*v507 == 0.0)
              {
                v509 = (v50 + 4 * v267);
                if (v509 < v50)
                {
                  goto LABEL_1544;
                }

                if ((v509 + 1) > v25 || v509 > v509 + 1)
                {
                  goto LABEL_1544;
                }

                if (*v509)
                {
                  v511 = (v50 + 4 * (v267 + 1));
                  if (v511 < v50 || (v511 + 1) > v25 || v511 > v511 + 1)
                  {
                    goto LABEL_1544;
                  }

                  LODWORD(v267) = v267 + 2;
                  *v507 = v463 * ((*v511 * 2.64) + -1.32);
                }

                else
                {
                  LODWORD(v267) = v267 + 1;
                }
              }

              if (v508 < v154)
              {
                ++v508;
                ++v507;
                if (v267 < v462 - 1)
                {
                  continue;
                }
              }

              break;
            }
          }
        }

        else
        {
          v152 = v901;
          if (v466)
          {
            v478 = 0;
            v153 = *v890;
            v60 = v904;
            while (1)
            {
              v479 = *(v930 + v478);
              if (v479 != 0.0)
              {
                v480 = *&v459[4 * v478];
                if (v480 > 0.5)
                {
                  v481 = (v50 + 4 * v267);
                  if (v481 < v50 || (v481 + 1) > v25 || v481 > v481 + 1)
                  {
                    goto LABEL_1544;
                  }

                  v267 = (v267 + 1);
                  v482 = *v481;
                  if (v479 <= 0.0)
                  {
                    v483 = v461 * 0.5;
                  }

                  else
                  {
                    v483 = 0.5 - (v461 * 0.5);
                  }

                  v484 = v479 + (v483 * v480);
                  if (v479 <= 0.0)
                  {
                    v485 = 0.5 - (v461 * 0.5);
                  }

                  else
                  {
                    v485 = v461 * 0.5;
                  }

                  v486 = v479 - (v485 * v480);
                  if (v482)
                  {
                    v486 = v484;
                  }

                  *(v930 + v478) = v486;
                }
              }

              if (++v478 >= v154 || v267 >= v462)
              {
                goto LABEL_1338;
              }
            }
          }

          v153 = *v890;
          v60 = v904;
LABEL_1338:
          if (v154)
          {
            v778 = v462 - 1;
            if (v267 < v778)
            {
              v779 = 0;
              while (1)
              {
                if (*(v930 + v779) == 0.0 && (v780 = *&v459[4 * v779], v780 > 0.5))
                {
                  v781 = (v50 + 4 * v267);
                  if (v781 < v50 || (v781 + 1) > v25 || v781 > v781 + 1)
                  {
                    goto LABEL_1544;
                  }

                  v782 = v267 + 1;
                  if (*v781 == 1)
                  {
                    v783 = (v50 + 4 * v782);
                    if (v783 < v50 || (v783 + 1) > v25 || v783 > v783 + 1)
                    {
                      goto LABEL_1544;
                    }

                    v782 = (v267 + 2);
                    *(v930 + v779) = (((1.0 - v461) * 0.66) * v780) * ((*v783 * 2.0) + -1.0);
                  }
                }

                else
                {
                  v782 = v267;
                }

                if (++v779 < v154)
                {
                  v267 = v782;
                  if (v782 < v778)
                  {
                    continue;
                  }
                }

                break;
              }
            }
          }
        }
      }
    }

    else
    {
      v152 = v901;
      v153 = *v890;
      v155 = v897;
    }

    if (!*(v60 + 1660) || *(v60 + 1676) && (*(v60 + 1680) > 0.0 ? (v457 = v880 == 0) : (v457 = 0), v457 && (v897 = v155, PsychAdaptLowFreqDeemph(v930, v928, 0, 0), v155 = v897, !*(v60 + 1660))))
    {
      if (v892[1] <= 255)
      {
        LOWORD(v50) = v902;
        if (v902 > 0x4B0)
        {
          goto LABEL_1544;
        }

        v897 = v155;
        tcxFormantEnhancement(v922, v928, v930, v902);
        v155.i32[0] = v897.i32[0];
        v152 = v901;
        v153 = *v890;
      }
    }
  }

  v174 = v152 + 174032;
  v897.i64[0] = v152 + 156616;
  *&v896 = v152 + 142500;
  v882 = (v152 + 137804);
  v175 = (v152 + 142496);
  if (!*(v895 + 16))
  {
    *v155.i32 = *(v150 + 24) * *v155.i32;
  }

  v176 = v899;
  v177 = 0;
  v870 = a14;
  v871 = a13;
  v178 = (v881 * 0.75) * 0.125;
  v872 = a12;
  v873 = a11;
  do
  {
    v928[v177] = vmulq_n_f32(v928[v177], *v155.i32);
    ++v177;
  }

  while (v177 != 16);
  v881 = v153 + 17136;
  v877 = (v153 + 8552);
  if (!v176 && v178 > 0.0)
  {
    LOWORD(v50) = v893 >= *v900 && (v893 - *v900) > 64;
    if (v892[1] < 256)
    {
      v180 = v878;
      if ((v50 & 1) == 0)
      {
        goto LABEL_1544;
      }
    }

    else
    {
      v180 = v878;
      if ((v50 & 1) == 0)
      {
        goto LABEL_1544;
      }

      if (!*(v869 + 6))
      {
        v181 = v902 / 6;
        v182 = 0.5625;
        goto LABEL_266;
      }
    }

    v181 = v902 / 8;
    get_gain(*v900 + 4, *v900, 16, 0);
    v182 = v183 + 0.09375;
    if (v182 > 1.0)
    {
      v182 = 1.0;
    }

LABEL_266:
    if (*(v904 + 1660))
    {
      v184 = *(v904 + 1680);
      if (*(v150 + 16) && *v886)
      {
        v185 = v903;
        v186 = v905;
        v187 = v891;
        if (v184 <= (*(v904 + 1672) * 0.3125))
        {
          v184 = *(v904 + 1672) * 0.3125;
        }
      }

      else
      {
        v185 = v903;
        v186 = v905;
        v187 = v891;
        if (v184 <= 0.0)
        {
          v184 = 0.0;
        }
      }

      if (v902 == *(v901 + 5240) >> 1)
      {
        v188 = 3;
      }

      else
      {
        v188 = (((v184 + v184) * 6.4) + 4);
      }
    }

    else
    {
      v188 = 8;
      v185 = v903;
      v186 = v905;
      v187 = v891;
    }

    if (!*(v895 + 42) && v185 >= 1)
    {
      LODWORD(v50) = 0;
      do
      {
        v189 = &v187[v50];
        v190 = v189 + 1;
        v191 = v189 < v186 || v190 > v25;
        if (v191 || v189 > v190)
        {
          goto LABEL_1544;
        }

        v193 = *v189;
        if (v193 < 0)
        {
          v193 = -v193;
        }

        v180 += 2 * v50 * v193;
        LODWORD(v50) = v50 + 1;
      }

      while (v185 > v50);
    }

    v152 = v901;
    v194 = v901 + 166544;
    if (*(v901 + 179528))
    {
      v195 = v901 + 167344;
    }

    else
    {
      v195 = 0;
    }

    if (!*(v901 + 179528))
    {
      v194 = 0;
    }

    tcx_noise_filling(v930, v931, v180, v181, v874, v188, v902, v182, v178, v151, v194, v195);
    LODWORD(v878) = v180;
    *v904 = v180;
    v176 = v899;
  }

  LODWORD(v50) = *(v888 + 1020);
  v196 = v898;
  if (*(v888 + 1020))
  {
    v197 = v903;
    if (v176)
    {
      if (*(v904 + 1316) == 1)
      {
        *v895 = 0;
        v198 = v888;
        if (*(v888 + 514) == 1 && *(v888 + 515) == 1 && *(v888 + 516) == 1)
        {
          v199 = 0;
          v200 = v152 + 158708;
          v201 = 9;
          do
          {
            v202 = (v200 + 4 * v201);
            v203 = (v202 + 1);
            if (v202 < v200 || v203 > v152 + 158748 || v202 > v203)
            {
              goto LABEL_1544;
            }

            v199 += *v202;
            v457 = v201-- == 0;
          }

          while (!v457);
          v152 = v901;
          v176 = v899;
          v196 = v898;
          v198 = v888;
          if (v199 >= 6)
          {
            *v895 = 1;
          }
        }

        if (*(v198 + 2))
        {
          *v895 = 1;
        }
      }

      if (*v892 >= v883)
      {
        v206 = *v895;
      }

      else
      {
        v206 = 1;
        *v895 = 1;
      }

      v208 = *(v152 + 5200);
      if (v208 == 2)
      {
        v207 = 1;
      }

      else
      {
        v207 = v206;
      }
    }

    else
    {
      v207 = 0;
      v208 = *(v152 + 5200);
    }

    if (v208 == 2)
    {
      *(v895 + 4) = v894 * v887;
    }
  }

  else
  {
    v207 = 0;
    v197 = v903;
  }

  v874 = v174;
  if (!v176)
  {
    if (!*(v175 + 18) || *(v175 + 6) != v196)
    {
      if (v196 > 0x3C0)
      {
        *(v175 + 4) = v152 + 143144;
        *(v175 + 5) = v152 + 146984;
        *(v175 + 11) = v152 + 146984;
        *(v175 + 12) = v152 + 150824;
        v215 = v152 + 142888;
        v216 = v152 + 142632;
        *(v175 + 13) = v152 + 142888;
        *(v175 + 14) = v152 + 143144;
      }

      else
      {
        v213 = *(v175 + 44);
        v214 = *(v175 + 3);
        *(v175 + 44) = *(v175 + 2);
        *(v175 + 2) = v213;
        v216 = *(v175 + 13);
        v215 = *(v175 + 14);
        *(v175 + 52) = v214;
      }

      *(v175 + 6) = v216;
      *(v175 + 7) = v215;
      v219 = *(v175 + 3);
      v220 = v902;
      *(v175 + 6) = v196;
      *(v175 + 7) = v220;
      *(v175 + 10) = v219;
    }

    if ((v196 - 1) > 0x77F)
    {
      goto LABEL_868;
    }

    v221 = *(v175 + 4);
    if (v196 < 0x3C1)
    {
      if (v196 >= 1)
      {
        v260 = *(v175 + 5);
        v102 = v260 >= v221;
        v50 = v260 - v221;
        if (!v102)
        {
          goto LABEL_1544;
        }

        v224 = 4 * (v883 & 0x7FFFu);
        if (v224 > 0x12C0 || v50 < v224)
        {
          goto LABEL_1544;
        }

        v225 = v930;
        goto LABEL_421;
      }
    }

    else
    {
      v222 = *(v175 + 5);
      v102 = v222 >= v221;
      v50 = v222 - v221;
      if (!v102)
      {
        goto LABEL_1544;
      }

      if (v50 <= 0xEFF)
      {
        goto LABEL_1544;
      }

      memmove(*(v175 + 4), v930, 0xF00uLL);
      LOWORD(v50) = v221 + 3840;
      if (v221 + 3840 < v221)
      {
        goto LABEL_1544;
      }

      v197 = v903;
      if (v196 >= 961)
      {
        v221 = *(v175 + 11);
        v223 = *(v175 + 12);
        v102 = v223 >= v221;
        v50 = v223 - v221;
        if (!v102)
        {
          goto LABEL_1544;
        }

        if ((v883 - 960) > 0xF0u)
        {
          goto LABEL_1544;
        }

        v224 = 4 * (v883 - 960);
        if (v224 > v50)
        {
          goto LABEL_1544;
        }

        v225 = &v930[240];
LABEL_421:
        memmove(v221, v225, v224);
        LOWORD(v50) = v221 + v224;
        v197 = v903;
        if (&v221[v224] < v221)
        {
          goto LABEL_1544;
        }
      }
    }

    LODWORD(v50) = *(v175 + 3);
    if (v50 >= 1)
    {
      v262 = *(v175 + 6);
      v261 = *(v175 + 7);
      v102 = v261 >= v262;
      v263 = v261 - v262;
      if (!v102)
      {
        goto LABEL_1544;
      }

      v264 = 4 * (v50 & 0x7FFF);
      if (v264 > 0x100)
      {
        goto LABEL_1544;
      }

      if (v263 < v264)
      {
        goto LABEL_1544;
      }

      memmove(*(v175 + 6), v928, 4 * (v50 & 0x7FFF));
      LOWORD(v50) = v262 + v264;
      v197 = v903;
      if (v262 + v264 < v262)
      {
        goto LABEL_1544;
      }
    }

    goto LABEL_868;
  }

  if (v50 && v207 != 1)
  {
    goto LABEL_868;
  }

  v209 = *(v904 + 1660);
  v210 = 1.0;
  if (!v209)
  {
    v210 = *(v888 + 5);
  }

  if (!v894 && v209 && v196 == *v892 >> 1 && !*(v888 + 2) && *(v904 + 1316) == 1 && v877[1] && *v877)
  {
    if (v868)
    {
      v226 = 0;
      v227 = *(v175 + 4);
      v50 = *(v175 + 5);
      v228 = v868;
      v229 = (v227 + 4);
      v230 = 1.0e-15;
      v231 = 1.0e-15;
      do
      {
        v233 = (v229 - 1) < v227 || v229 > v50 || v229 - 1 > v229;
        v234 = v229 + 1;
        if (v233 || v234 > v50 || v229 > v234)
        {
          goto LABEL_1544;
        }

        v230 = v230 + (*(v229 - 1) * *(v229 - 1));
        v231 = v231 + (*v229 * *v229);
        v226 += 2;
        v229 += 2;
      }

      while (v226 < v868);
      v237 = v230 / v231;
      v907 = LODWORD(v237);
      if (v237 > 2.0)
      {
        v238 = 0;
        v239 = 4;
        while (1)
        {
          v240 = *(v175 + 4);
          v241 = v240 + v239 + 4;
          v242 = v240 + v239 < v240 || v241 > v50;
          if (v242 || v240 + v239 > v241)
          {
            goto LABEL_1544;
          }

          *(v240 + 4 * v238) = *(v240 + v239);
          v238 += 2;
          v239 += 8;
          if (v238 >= v228)
          {
            goto LABEL_332;
          }
        }
      }

      if (v237 < 0.5)
      {
        v857 = 0;
        for (i = 0; i < v228; i += 2)
        {
          v859 = *(v175 + 4);
          v860 = (v859 + v857);
          v861 = v859 + v857 + 4;
          v862 = v859 + v857 < v859 || v861 > v50;
          v863 = v862 || v860 > v861;
          v864 = v860 + 2;
          v865 = v863 || v864 > v50;
          if (v865 || v861 > v864)
          {
            goto LABEL_1544;
          }

          v860[1] = *v860;
          v857 += 8;
        }
      }
    }

    else
    {
      v907 = 1065353216;
    }
  }

LABEL_332:
  LOWORD(v50) = v893 >= *v900 && (v893 - *v900) > 64;
  if (v892[1] < 256)
  {
    if ((v50 & 1) == 0)
    {
      goto LABEL_1544;
    }
  }

  else
  {
    if ((v50 & 1) == 0)
    {
      goto LABEL_1544;
    }

    if (!*(v869 + 6))
    {
      v212 = 0.5625;
      goto LABEL_349;
    }
  }

  get_gain(*v900 + 4, *v900, 16, 0);
  v212 = v217 + 0.09375;
  if (v212 > 1.0)
  {
    v212 = 1.0;
  }

LABEL_349:
  LODWORD(v869) = v207;
  v196 = v898;
  if (*(v175 + 17))
  {
    v218 = *v904;
  }

  else
  {
    v218 = 1977;
  }

  v176 = v899;
  if (!*(v175 + 16))
  {
    v259 = *v175;
    LODWORD(v933[0]) = 0;
    vDSP_vfill(v933, v930, 1, v259);
    v197 = v903;
    goto LABEL_866;
  }

  v244 = *(v888 + 2);
  v245 = 1.0 - v210;
  if (v212 < 0.375)
  {
    v212 = 0.375;
  }

  v246 = *(v175 + 6);
  v247 = 1.0;
  v248 = pow(v212, (1.0 / v246));
  if (!v244)
  {
    v197 = v903;
    v277 = v868;
    if (v868)
    {
      v278 = 0;
      v279 = 0;
      v280 = 4 * v868;
      v281 = 1.0;
      v282 = 0.0;
      v283 = 0.0;
      v50 = v868;
      do
      {
        v284 = 0.0;
        if (v279 <= 0x3BF)
        {
          v285 = *(v175 + 4);
          v286 = (v285 + v278);
          v287 = v285 + v278 + 4;
          if (v285 + v278 < v285 || v287 > *(v175 + 5) || v286 > v287)
          {
            goto LABEL_1544;
          }

          v284 = *v286;
        }

        v290 = v930 + v278 + 4;
        if ((v930 + v278) < v930 || v290 > v931 || v930 + v278 > v290)
        {
          goto LABEL_1544;
        }

        v218 = 31821 * v218 + 13849;
        v293 = v281 * v218;
        v283 = v283 + (v293 * v293);
        v282 = v282 + (v284 * v284);
        *(v930 + v278) = v293;
        v281 = v281 * v248;
        ++v279;
        v278 += 4;
      }

      while (v280 != v278);
      if (v283 > 0.0)
      {
        v245 = v245 * sqrtf(v282 / v283);
      }

      v294 = 0;
      v295 = 0;
      v296 = v50;
      do
      {
        v297 = 0.0;
        if (v295 <= 0x3BF)
        {
          v298 = *(v175 + 4);
          v299 = (v298 + v294);
          v300 = v298 + v294 + 4;
          if (v298 + v294 < v298 || v300 > *(v175 + 5) || v299 > v300)
          {
            goto LABEL_1544;
          }

          v297 = *v299;
        }

        v303 = v930 + v294 + 4;
        if ((v930 + v294) < v930 || v303 > v931 || v930 + v294 > v303)
        {
          goto LABEL_1544;
        }

        v306 = *(v930 + v294);
        if (v306 <= 0.0)
        {
          v297 = -v297;
        }

        *(v930 + v294) = (v297 * v210) + (v245 * v306);
        ++v295;
        v294 += 4;
        --v296;
      }

      while (v296);
      if (v246 > 0x3C0)
      {
        if (v868 > 0x3BF)
        {
LABEL_817:
          v50 = (v246 - 960);
          v502 = *(v175 + 11);
          v501 = *(v175 + 12);
          v503 = 960;
          v504 = v502;
          while (v504 >= v502)
          {
            if ((v504 + 1) > v501)
            {
              break;
            }

            if (v504 > v504 + 1)
            {
              break;
            }

            v505 = v930 + v503;
            if (v505 < v930 || v505 + 1 > v931 || v505 > v505 + 1)
            {
              break;
            }

            v506 = *v504++;
            *v505 = v506;
            ++v503;
            if (!--v50)
            {
              goto LABEL_865;
            }
          }

          goto LABEL_1544;
        }

        goto LABEL_798;
      }

      v176 = v899;
      v196 = v898;
      v277 = v868;
    }

    else if (v246 > 0x3C0)
    {
      v50 = 0;
LABEL_798:
      v487 = v50 - 960;
      v489 = *(v175 + 4);
      v488 = *(v175 + 5);
      v50 *= 4;
      v490 = v489;
      v491 = v930;
      while (1)
      {
        v492 = (v490 + v50);
        v493 = v490 + v50 + 4;
        v494 = v490 + v50 < v489 || v493 > v488;
        v495 = v494 || v492 > v493;
        v496 = (v491 + v50);
        v497 = v491 + v50 + 4;
        v498 = !v495 && v496 >= v930;
        v499 = !v498 || v497 > v931;
        if (v499 || v496 > v497)
        {
          goto LABEL_1544;
        }

        *v496 = *v492;
        v491 = (v491 + 4);
        v490 += 4;
        v102 = __CFADD__(v487++, 1);
        if (v102)
        {
          goto LABEL_817;
        }
      }
    }

    v207 = v869;
    if (v246 > v277)
    {
      v50 = v246 - v277;
      v513 = *(v175 + 4);
      v512 = *(v175 + 5);
      v514 = 4 * v277;
      v515 = v513;
      v516 = v930;
      while (1)
      {
        v517 = (v515 + v514);
        v518 = v515 + v514 + 4;
        v519 = v515 + v514 < v513 || v518 > v512;
        v520 = v519 || v517 > v518;
        v521 = (v516 + v514);
        v522 = v516 + v514 + 4;
        v523 = !v520 && v521 >= v930;
        v524 = !v523 || v522 > v931;
        if (v524 || v521 > v522)
        {
          goto LABEL_1544;
        }

        *v521 = *v517;
        v516 = (v516 + 4);
        v515 += 4;
        if (!--v50)
        {
          goto LABEL_865;
        }
      }
    }

    goto LABEL_867;
  }

  v867 = v246;
  v891 = *v888;
  v250 = v891 + 16;
  v249 = *(v891 + 32);
  v197 = v903;
  if (*(v891 + 32))
  {
    v251 = *(v175 + 4);
    v50 = *(v175 + 5);
    v252 = 0.0;
    v253 = v251;
    v254 = v930;
    v255 = *(v891 + 32);
    v256 = 0.0;
    while (v253 >= v251 && (v253 + 1) <= v50 && v253 <= v253 + 1 && v254 >= v930 && v254 + 1 <= v931 && v254 <= v254 + 1)
    {
      v218 = 31821 * v218 + 13849;
      v257 = v247 * v218;
      v258 = *v253++;
      v256 = v256 + (v257 * v257);
      v252 = v252 + (v258 * v258);
      *v254++ = v257;
      v247 = v247 * v248;
      if (!--v255)
      {
        goto LABEL_500;
      }
    }

    goto LABEL_1544;
  }

  v256 = 0.0;
  v252 = 0.0;
LABEL_500:
  v308 = (v891 + 31);
  v307 = *v891;
  if (v307 >= 2)
  {
    v905 = (v891 + 46);
    v309 = 1;
    LODWORD(v50) = v249;
    *v900 = v891 + 31;
    v893 = v249;
    while (1)
    {
      v310 = v308 + v309 - 1;
      v311 = (v310 + 1);
      v313 = v310 < v308 || v311 > v905 || v310 > v311;
      v314 = v250 + 2 * v309 - 2;
      v315 = (v314 + 2);
      v317 = v313 || v315 > v308 || v314 > v315;
      v318 = v250 + v309;
      v319 = v318 + 1;
      if (v317 || v318 < v250 || v319 > v308 || v318 > v319)
      {
        goto LABEL_1544;
      }

      v323 = v307;
      v324 = v250;
      v325 = *v310;
      v326 = pow(v248, (v325 - v50 + 1));
      v247 = v247 * v326;
      v50 = *v318;
      if (v325 + 1 < v50)
      {
        break;
      }

      v197 = v903;
      v250 = v324;
      v307 = v323;
      v308 = *v900;
      v249 = v893;
LABEL_545:
      if (++v309 == v307)
      {
        goto LABEL_546;
      }
    }

    v327 = *(v896 + 36);
    v328 = *(v896 + 28);
    v329 = ~v325 + v50;
    v330 = 4 * v325;
    v331 = v930;
    v332 = v328;
    v197 = v903;
    v250 = v324;
    v307 = v323;
    v308 = *v900;
    v249 = v893;
    while (1)
    {
      v333 = (v332 + v330 + 4);
      v334 = v332 + v330 + 8;
      v335 = v333 < v328 || v334 > v327;
      v336 = v335 || v333 > v334;
      v337 = (v331 + v330 + 4);
      v338 = v331 + v330 + 8;
      v339 = !v336 && v337 >= v930;
      v340 = !v339 || v338 > v931;
      if (v340 || v337 > v338)
      {
        goto LABEL_1544;
      }

      v218 = 31821 * v218 + 13849;
      v342 = v247 * v218;
      v256 = v256 + (v342 * v342);
      v252 = v252 + (*v333 * *v333);
      *v337 = v342;
      v247 = v247 * v248;
      v331 = (v331 + 4);
      v332 += 4;
      if (!--v329)
      {
        goto LABEL_545;
      }
    }
  }

LABEL_546:
  v343 = (v307 - 1);
  v50 = v308 + 2 * v343;
  if (v50 < v308)
  {
    goto LABEL_1544;
  }

  v344 = v891 + 46;
  if (v50 + 2 > (v891 + 46))
  {
    goto LABEL_1544;
  }

  if (v50 > v50 + 2)
  {
    goto LABEL_1544;
  }

  v345 = v250 + v343;
  if (v345 < v250 || v345 + 1 > v308 || v345 > v345 + 1)
  {
    goto LABEL_1544;
  }

  v346 = *v50;
  v347 = v346 + 1;
  if (v346 + 1 < v868)
  {
    v348 = v249;
    v349 = pow(v248, (v347 - *v345));
    v249 = v348;
    v197 = v903;
    *&v349 = v349;
    v350 = v247 * *&v349;
    v50 = *(v896 + 36);
    v351 = 4 * v346;
    v352 = ~v346 + v868;
    v353 = *(v896 + 28);
    v354 = v930;
    v355 = v353;
    do
    {
      v356 = (v355 + v351 + 4);
      v357 = v355 + v351 + 8;
      v358 = v356 < v353 || v357 > v50;
      v359 = v358 || v356 > v357;
      v360 = (v354 + v351 + 4);
      v361 = v354 + v351 + 8;
      v362 = !v359 && v360 >= v930;
      v363 = !v362 || v361 > v931;
      if (v363 || v360 > v361)
      {
        goto LABEL_1544;
      }

      v218 = 31821 * v218 + 13849;
      v365 = v350 * v218;
      v256 = v256 + (v365 * v365);
      v252 = v252 + (*v356 * *v356);
      *v360 = v365;
      v350 = v350 * v248;
      v355 += 4;
      v354 = (v354 + 4);
    }

    while (--v352);
  }

  if (v256 > 0.0)
  {
    v245 = v245 * sqrtf(v252 / v256);
  }

  if (v249)
  {
    v50 = *(v896 + 36);
    v366 = *(v896 + 28);
    v367 = v366;
    v368 = v930;
    while (v367 >= v366 && (v367 + 1) <= v50 && v367 <= v367 + 1 && v368 >= v930 && v368 + 1 <= v931 && v368 <= v368 + 1)
    {
      v369 = *v367++;
      v370 = v369;
      v371 = -v369;
      if (*v368 <= 0.0)
      {
        v370 = v371;
      }

      *v368 = (v370 * v210) + (v245 * *v368);
      ++v368;
      if (!--v249)
      {
        goto LABEL_584;
      }
    }

    goto LABEL_1544;
  }

LABEL_584:
  if (v307 >= 2)
  {
    v50 = 1;
    while (1)
    {
      v372 = v308 + v50;
      v373 = (v372 - 1);
      v375 = v372 - 1 < v308 || v372 > v344 || v373 > v372;
      v376 = v250 + v50;
      v377 = v376 + 1;
      if (v375 || v376 < v250 || v377 > v308 || v376 > v377)
      {
        goto LABEL_1544;
      }

      v381 = *v373;
      v382 = *v376;
      if (v381 + 1 < v382)
      {
        break;
      }

LABEL_623:
      if (++v50 == v307)
      {
        goto LABEL_626;
      }
    }

    v383 = *(v896 + 36);
    v384 = *(v896 + 28);
    v385 = ~v381 + v382;
    v386 = 4 * v381;
    v387 = v930;
    v388 = v384;
    while (1)
    {
      v389 = (v388 + v386 + 4);
      v390 = v388 + v386 + 8;
      v391 = v389 < v384 || v390 > v383;
      v392 = v391 || v389 > v390;
      v393 = (v387 + v386 + 4);
      v394 = v387 + v386 + 8;
      v395 = !v392 && v393 >= v930;
      v396 = !v395 || v394 > v931;
      if (v396 || v393 > v394)
      {
        goto LABEL_1544;
      }

      v398 = *v389;
      if (*v393 <= 0.0)
      {
        v398 = -*v389;
      }

      *v393 = (v398 * v210) + (v245 * *v393);
      v387 = (v387 + 4);
      v388 += 4;
      if (!--v385)
      {
        goto LABEL_623;
      }
    }
  }

  if (v307)
  {
LABEL_626:
    v50 = 0;
    while (1)
    {
      v399 = v250 + v50;
      v400 = v399 + 1;
      v402 = v399 < v250 || v400 > v308 || v399 > v400;
      v403 = v308 + v50;
      v404 = v403 + 1;
      if (v402 || v403 < v308 || v404 > v344 || v403 > v404)
      {
        goto LABEL_1544;
      }

      v408 = *v399;
      v409 = *v403;
      if (v408 <= v409)
      {
        break;
      }

LABEL_653:
      if (++v50 == v307)
      {
        goto LABEL_654;
      }
    }

    v410 = v409 - v408 + 1;
    v411 = v930 + v408;
    while (1)
    {
      v412 = v411 + 1;
      v413 = v411 < v930 || v412 > v931;
      if (v413 || v411 > v412)
      {
        goto LABEL_1544;
      }

      *v411++ = 0;
      if (!--v410)
      {
        goto LABEL_653;
      }
    }
  }

LABEL_654:
  if (v347 < v868)
  {
    v50 = *(v896 + 36);
    v415 = *(v896 + 28);
    v416 = 4 * v346;
    v417 = ~v346 + v868;
    v418 = v930;
    v419 = v415;
    do
    {
      v420 = (v419 + v416 + 4);
      v421 = v419 + v416 + 8;
      v422 = v420 < v415 || v421 > v50;
      v423 = v422 || v420 > v421;
      v424 = (v418 + v416 + 4);
      v425 = v418 + v416 + 8;
      v426 = !v423 && v424 >= v930;
      v427 = !v426 || v425 > v931;
      if (v427 || v424 > v425)
      {
        goto LABEL_1544;
      }

      v429 = *v420;
      if (*v424 <= 0.0)
      {
        v429 = -*v420;
      }

      *v424 = (v429 * v210) + (v245 * *v424);
      v419 += 4;
      v418 = (v418 + 4);
    }

    while (--v417);
  }

  if (v867 > v868)
  {
    v50 = *(v896 + 36);
    v430 = v867 - v868;
    v431 = *(v896 + 28);
    v432 = 4 * v868;
    v433 = v431;
    v434 = v930;
    do
    {
      v435 = (v433 + v432);
      v436 = v433 + v432 + 4;
      v437 = v433 + v432 < v431 || v436 > v50;
      v438 = v437 || v435 > v436;
      v439 = (v434 + v432);
      v440 = v434 + v432 + 4;
      v441 = !v438 && v439 >= v930;
      v442 = !v441 || v440 > v931;
      if (v442 || v439 > v440)
      {
        goto LABEL_1544;
      }

      *v439 = *v435;
      v434 = (v434 + 4);
      v433 += 4;
    }

    while (--v430);
  }

LABEL_865:
  v176 = v899;
  v196 = v898;
LABEL_866:
  v207 = v869;
LABEL_867:
  *v904 = v218;
LABEL_868:
  v526 = v197 - v902;
  if (v197 >= v902)
  {
    if (v197 > v883)
    {
      v527 = v930 + 4 * v196;
      LOWORD(v50) = v930 > v527;
      if (v527 > v931)
      {
        goto LABEL_1544;
      }

      if (v930 > v527)
      {
        goto LABEL_1544;
      }

      LODWORD(v50) = v197 - v898;
      if (v197 - v898 < 0 || (4800 - 4 * v898) >> 2 < v50)
      {
        goto LABEL_1544;
      }

      goto LABEL_879;
    }
  }

  else
  {
    v527 = v930 + 4 * v197;
    LOWORD(v50) = v930 > v527;
    if (v527 > v931)
    {
      goto LABEL_1544;
    }

    if (v930 > v527)
    {
      goto LABEL_1544;
    }

    LODWORD(v50) = v902 - v197;
    if (v902 - v197 < 0 || (4800 - 4 * v197) >> 2 < v50)
    {
      goto LABEL_1544;
    }

LABEL_879:
    bzero(v527, 4 * v50);
    v197 = v903;
    v176 = v899;
    v196 = v898;
  }

  v528 = v897.i64[0];
  if (v176)
  {
    v529 = *(v888 + 1020);
    if ((!*(v888 + 1020) || v207 == 1) && !v894 && *(v901 + 179528) && v196 == *v892 >> 1 && *(v882 + 184) && !*(v897.i64[0] + 32) && *(v882 + 98) == 1 && v877[1] && *v877)
    {
      IGFDecCopyLPCFlatSpectrum(v901 + 166520, v930, v931, 2u);
      mvi2i((v901 + 175208), v901 + 175300, (v901 + 175392), v901 + 175484, 0x17u);
      v197 = v903;
      v529 = *(v888 + 1020);
    }

    if (!v529 || v207 == 1)
    {
      goto LABEL_901;
    }

    goto LABEL_908;
  }

  if (*(v901 + 179528))
  {
    if (v902 == *(v901 + 5240) >> 1 && *(v882 + 184))
    {
      v530 = v901 + 166520;
      v531 = 2;
    }

    else
    {
      v531 = *v886 == 0;
      v530 = v901 + 166520;
    }

    IGFDecCopyLPCFlatSpectrum(v530, v930, v931, v531);
  }

LABEL_901:
  mdct_noiseShaping(v930, v931, v902, v928, v930);
  v197 = v903;
  if (!v176 && v526 >= 1)
  {
    v50 = v930 + 4 * v902;
    if (v50 > v931 || v930 > v50 || (v526 & 0x8000) != 0 || (4800 - 4 * v902) >> 2 < v526)
    {
      goto LABEL_1544;
    }

    v176 = v899;
    v196 = v898;
    v528 = v897.i64[0];
    if (v526 >= 1)
    {
      v549 = *(&v929 + 3);
      v550 = v526 & 0x7FFF;
      do
      {
        *v50 = *v50 * v549;
        v50 += 4;
        --v550;
      }

      while (v550);
    }
  }

  v50 = (v196 - v197);
  if (v50 >= 1)
  {
    v532 = v930 + 4 * v197;
    if (v532 > v931 || v930 > v532 || v50 > (4800 - 4 * v197) >> 2)
    {
      goto LABEL_1544;
    }

    bzero(v532, 4 * v50);
    v197 = v903;
    v176 = v899;
    v196 = v898;
    v528 = v897.i64[0];
  }

  if (v176)
  {
LABEL_908:
    if (*(v528 + 32))
    {
      LODWORD(v869) = v207;
      if ((*(v896 + 116) & *(v896 + 60)) != 0)
      {
        memset(v933, 255, 0xF00uLL);
        v533 = *(v896 + 4);
        v534 = v897.i64[0];
        if (v533 >= 1)
        {
          v535 = *(v897.i64[0] + 8);
          v102 = v535 >= *v897.i64[0];
          v50 = v535 - *v897.i64[0];
          if (!v102)
          {
            goto LABEL_1544;
          }

          v536 = 4 * (v533 & 0x7FFF);
          if (v50 < v536)
          {
            goto LABEL_1544;
          }

          if (v536 >= 0xF01)
          {
            goto LABEL_1544;
          }

          memmove(v933, *v897.i64[0], 4 * (v533 & 0x7FFF));
          v50 = v933 + v536;
          if ((v933 + v536) < v933)
          {
            goto LABEL_1544;
          }
        }

        v537 = *v896;
        v538 = *(v896 + 100);
        v539 = *(v896 + 108);
        v905 = &v933[480];
        mdct_noiseShaping(v933, &v933[480], v537, v538, v539);
        v540 = *v896;
        LOWORD(v50) = v533 - v540;
        if (v533 - v540 > 0)
        {
          v541 = *(v896 + 100);
          v542 = (v541 + 252);
          if (v541 + 252 < v541)
          {
            goto LABEL_1544;
          }

          v543 = v541 + 256;
          if (v543 > *(v896 + 108))
          {
            goto LABEL_1544;
          }

          if (v542 > v543)
          {
            goto LABEL_1544;
          }

          v544 = v933 + v540;
          if (v544 > v905 || v933 > v544 || ((v533 - v540) & 0x8000) != 0 || (3840 - 4 * v540) >> 2 < v50)
          {
            goto LABEL_1544;
          }

          v534 = v897.i64[0];
          if (v50 >= 1)
          {
            v545 = *v542;
            v546 = (v533 - v540) & 0x7FFF;
            do
            {
              *v544 = *v544 * v545;
              ++v544;
              --v546;
            }

            while (v546);
          }
        }

        v547 = *(v534 + 24);
        v197 = v903;
        if (!*(v896 + 64))
        {
          if (*(v896 + 124))
          {
            v548 = *(v534 + 16) + 1.0;
          }

          else
          {
            v548 = 1.5;
          }

          *(v534 + 16) = v548;
        }

        v893 = *v547;
        if (v893)
        {
          v551 = 0;
          v552 = (v547 + 76);
          *v900 = v547 + 46;
          v553 = v547 + 286;
          v892 = (v547 + 16);
          v891 = v547 + 31;
          v554 = v547 + 76;
          do
          {
            v904 = v551;
            v50 = *v900 + 4 * v551;
            v555 = v50 + 4 > v552 || v50 > v50 + 4;
            if (v555 || v50 < *v900)
            {
              goto LABEL_1544;
            }

              ;
            }

              ;
            }

            v50 = v892 + 2 * v904;
            if (v50 < v892)
            {
              goto LABEL_1544;
            }

            v558 = v50 + 2 > v891 || v50 > v50 + 2;
            v559 = v891 + v904;
            v560 = v559 + 1;
            v561 = !v558 && v559 >= v891;
            v562 = !v561 || v560 > *v900;
            if (v562 || v559 > v560)
            {
              goto LABEL_1544;
            }

            v564 = *v50;
            v565 = *v559;
            if (v564 <= v565)
            {
              v566 = 0;
              v567 = v565 - v564 + 1;
              v568 = v930 + 4 * v564;
              v569 = v933 + 4 * v564;
              do
              {
                v50 = &v554[v566 / 4];
                v570 = &v554[v566 / 4 + 1];
                v572 = v570 <= v553 && v50 <= v570 && v50 >= v552;
                v573 = &v569[v566];
                v574 = &v569[v566 + 4];
                v577 = !v572 || v573 < v933 || v574 > v905 || v573 > v574;
                v578 = &v568[v566];
                v579 = &v568[v566 + 4];
                if (v577 || v578 < v930 || v579 > v931 || v578 > v579)
                {
                  goto LABEL_1544;
                }

                v583 = cos((j + *v50));
                *v578 = *v573 * v583;
                v566 += 4;
                --v567;
              }

              while (v567);
              v554 = (v554 + v566);
            }

            v197 = v903;
            v551 = v904 + 1;
          }

          while (v904 + 1 != v893);
        }
      }

      v528 = v897.i64[0];
      *(v897.i64[0] + 16) = *(v897.i64[0] + 16) + 1.0;
      v176 = v899;
      v196 = v898;
      LOWORD(v207) = v869;
    }
  }

  v584 = 0;
  if (*(v528 + 60) > 0.0)
  {
    v584 = *(v882 + 100);
  }

  v585 = v888;
  v586 = v881;
  if (v176)
  {
    v587 = *(v528 + 32) != 0;
    v588 = v176;
    v589 = *(v896 + 60);
  }

  else
  {
    v588 = 0;
    v587 = 0;
    v589 = (v196 - 1) < 0x780;
  }

  v590 = v896;
  *(v896 + 116) = *(v896 + 60);
  *(v590 + 120) = *(v590 + 64);
  *(v590 + 60) = v589;
  *(v590 + 64) = v588;
  *(v590 + 68) = v587;
  *(v590 + 12) = v584;
  if (*(v585 + 1020))
  {
    v591 = *(v901 + 5200);
    if (!v899 || v207)
    {
      LODWORD(v592) = *(v528 + 2068);
    }

    else
    {
      v592 = *(v528 + 2068);
      if (v591 == 1 && !*v895)
      {
        LOWORD(v50) = *(v528 + 2068);
        if (v592 >= 1)
        {
          v593 = 4 * (v592 & 0x7FFF);
          if (v593 >= 0xF01)
          {
            goto LABEL_1544;
          }

          memcpy(v930, (v901 + 158760), 4 * (v592 & 0x7FFF));
          v50 = v930 + v593;
          v197 = v903;
          if ((v930 + v593) < v930)
          {
            goto LABEL_1544;
          }
        }

        if (v592 >= 1)
        {
          LOWORD(v50) = *(v895 + 12);
          v594 = v930;
          v595 = v592;
          do
          {
            LOWORD(v50) = 31821 * v50 + 13849;
            if (v594 < v930 || v594 + 1 > v931 || v594 > v594 + 1)
            {
              goto LABEL_1545;
            }

            *v594 = *v594 * ((v50 >> 15) | 1);
            ++v594;
            --v595;
          }

          while (v595);
          *(v895 + 12) = v50;
        }
      }
    }

    v596 = *(v528 + 2066);
    v597 = v528 + 2144;
    v598 = v901 + 162600;
    if (v591 == 1)
    {
      set_state(v901 + 158696, 1, 3u);
      v197 = v903;
      if (v592 >= 1)
      {
        v50 = v930;
        v599 = v930;
        v600 = (v528 + 2144);
        v601 = v592;
        do
        {
          v602 = v599 + 1;
          v603 = v599 < v930 || v602 > v931;
          v604 = v603 || v599 > v602;
          v605 = v600 + 1;
          v606 = v604 || v605 > v598;
          v607 = v606 || v600 > v605;
          if (v607 || v600 < v597)
          {
            goto LABEL_1544;
          }

          v609 = *v599++;
          *v600++ = v609;
        }

        while (--v601);
      }

      if (!v899)
      {
        set_state(v901 + 158708, v596, 0xAu);
        v197 = v903;
      }
    }

    else
    {
      v610 = *(v895 + 4);
      if (v610)
      {
        if (v899)
        {
          goto LABEL_1070;
        }
      }

      else
      {
        set_state(v901 + 158696, v591, 3u);
        v197 = v903;
        if (!v899)
        {
          set_state(v901 + 158708, v596, 0xAu);
          v197 = v903;
        }
      }

      if (v592 >> 1 >= 1)
      {
        v50 = 0;
        v611 = v901 + 4 * v610 + 158764;
        do
        {
          v612 = v930 + v50 + 4;
          v613 = (v930 + v50) < v930 || v612 > v931;
          v614 = v613 || v930 + v50 > v612;
          v615 = (v597 + 4 * v610 + v50);
          v616 = v611 + v50;
          v617 = v614 || v616 > v598;
          v618 = v617 || v615 > v616;
          if (v618 || v615 < v597)
          {
            goto LABEL_1544;
          }

          *v615 = *(v930 + v50);
          v50 += 4;
        }

        while (4 * (v592 >> 1) != v50);
      }
    }
  }

LABEL_1070:
  v620 = v901;
  v621 = *v890;
  v622 = v899;
  v623 = v874;
  if (!*(v901 + 179528))
  {
    goto LABEL_1079;
  }

  v624 = *(v901 + 5240);
  if (v902 != v624 >> 1 || !*(v882 + 184))
  {
    *(v874 + 8) = 31821 * v878 + 13849;
    IGFDecApplyMono(v620 + 166520);
    v197 = v903;
    if (*(v620 + 179528))
    {
      v624 = *(v620 + 5240);
      goto LABEL_1075;
    }

LABEL_1079:
    v625 = v877 + 1;
    v626 = v877[1];
    goto LABEL_1159;
  }

LABEL_1075:
  if (v902 == v624 >> 1 && *(v882 + 184))
  {
    *(v623 + 8) = 31821 * v878 + 13849;
    IGFDecApplyMono(v620 + 166520);
    v197 = v903;
    v625 = v877 + 1;
    v626 = v877[1];
    if (!*(v620 + 179528))
    {
      goto LABEL_1159;
    }
  }

  else
  {
    v625 = v877 + 1;
    v626 = v877[1];
  }

  if (*v623 && !v880)
  {
    v627 = *(v895 + 68);
    LODWORD(v628) = *(v895 + 72);
    memset(v919, 255, sizeof(v919));
    v629 = v620 + 167344;
    v630 = v620 + 170688;
    v911 = 0;
    v916 = -1;
    *&v631 = -1;
    *(&v631 + 1) = -1;
    v914 = v631;
    v915 = v631;
    *&v913[16] = v631;
    *v913 = v631;
    v632 = v627;
    LODWORD(v905) = v628 << 16;
    if (v628 << 16 < v627 << 16)
    {
      v50 = v930;
      v633 = 4 * v628;
      v634 = v919;
      v635 = v901;
      v636 = v930;
      v637 = v627 - v628;
      v638 = v633 + 170032;
      do
      {
        v639 = (v635 + v638 - 3344);
        v640 = v635 + v638 - 3340;
        v641 = v640 > v630 || v639 > v640;
        if (v641 || v639 < v629)
        {
          goto LABEL_1544;
        }

        if (*v639 == 2)
        {
          v643 = (v636 + v633);
          if ((v636 + v633) < v930)
          {
            goto LABEL_1544;
          }

          if (v643 + 1 > v931)
          {
            goto LABEL_1544;
          }

          if (v643 > v643 + 1)
          {
            goto LABEL_1544;
          }

          v644 = (v634 + v633 - 656);
          if (v644 < v919)
          {
            goto LABEL_1544;
          }

          v645 = v634 + v633 - 652;
          if (v645 > __b)
          {
            goto LABEL_1544;
          }

          if (v644 > v645)
          {
            goto LABEL_1544;
          }

          *v644 = *v643;
          v646 = v635 + v638;
          v647 = v635 + v638 + 4;
          if (v647 > v623 || v646 > v647 || v646 < v630)
          {
            goto LABEL_1544;
          }

          *v643 = *(v635 + v638);
        }

        v636 = (v636 + 4);
        v635 += 4;
        v634 = (v634 + 4);
      }

      while (--v637);
    }

    v933[0] = &v930[41];
    v933[1] = v931;
    v933[2] = v930;
    ITF_Detect(v933, v628, v627, v913, &v917, &v906, &v911);
    v197 = v903;
    v648 = v911;
    if (v911 <= 0x11 && v632 <= 1200 && (v632 & 0x80000000) == 0)
    {
      LODWORD(v904) = v626;
      v50 = v930;
      v649 = v930 + 4 * v628;
      if (v649 >= v930)
      {
        v50 = v930 + 4 * v627;
        if (v649 <= v50)
        {
          v650 = (v632 - (v905 >> 16));
          LOWORD(v50) = (v627 - WORD1(v905)) | v911;
          if (((v650 | v911) & 0x80000000) == 0)
          {
            v50 = (4 * v627 - 4 * v628) >> 2;
            if (v50 >= v650)
            {
              if (v911)
              {
                *v900 = v627;
                memset(v933, 255, sizeof(v933));
                v651 = &v933[8];
                __A = 0;
                vDSP_vfill(&__A, v933, 1, 0x10uLL);
                LOWORD(v50) = v650;
                if (v650 >= 1)
                {
                  *&v896 = v627;
                  v652 = v628;
                  v628 = 4 * (v650 & 0x7FFF);
                  if (v628 > 4 * v650)
                  {
                    goto LABEL_1544;
                  }

                  LOWORD(v50) = 4801;
                  if (v628 >= 0x12C1)
                  {
                    goto LABEL_1544;
                  }

                  memcpy(&v933[8], v649, 4 * (v650 & 0x7FFF));
                  v50 = &v933[8] + v628;
                  v102 = (&v933[8] + v628) >= &v933[8];
                  LOWORD(v628) = v652;
                  LODWORD(v627) = v896;
                  if (!v102)
                  {
                    goto LABEL_1544;
                  }
                }

                v197 = v903;
                if (v627 != v628)
                {
                  v50 = 0;
                  v653 = &v933[7] + 1;
                  while (1)
                  {
                    v654 = v651 + 1;
                    if (v651 < v933 || v654 > v934 || v651 > v654)
                    {
                      goto LABEL_1544;
                    }

                    v657 = *v651;
                    *&v649[4 * v50] = *v651;
                    if (v648 != 1)
                    {
                      break;
                    }

LABEL_1137:
                    ++v50;
                    ++v653;
                    ++v651;
                    if (v50 == v650)
                    {
                      goto LABEL_1138;
                    }
                  }

                  v658 = v653;
                  v659 = &v913[4];
                  v660 = v648 - 1;
                  while (1)
                  {
                    v661 = v658 + 1;
                    v662 = v658 < v933 || v661 > v934;
                    if (v662 || v658 > v661)
                    {
                      goto LABEL_1544;
                    }

                    v664 = *v659++;
                    v665 = v664;
                    v666 = *v658--;
                    v657 = v657 + (v665 * v666);
                    *&v649[4 * v50] = v657;
                    if (!--v660)
                    {
                      goto LABEL_1137;
                    }
                  }
                }

LABEL_1138:
                v632 = *v900;
              }

              v626 = v904;
              if (v905 < v627 << 16)
              {
                v50 = v919;
                v667 = v632 - v628;
                v668 = 4 * v628;
                v669 = v901 + 166688;
                v670 = v901 + 166692;
                v671 = v919;
                v672 = v930;
                do
                {
                  v673 = (v669 + v668);
                  v674 = v670 + v668 > v630 || v673 > v670 + v668;
                  if (v674 || v673 < v629)
                  {
                    goto LABEL_1544;
                  }

                  if (*v673 == 2)
                  {
                    v676 = (v671 + v668 - 656);
                    if (v676 < v919)
                    {
                      goto LABEL_1544;
                    }

                    v677 = v671 + v668 - 652;
                    if (v677 > __b)
                    {
                      goto LABEL_1544;
                    }

                    if (v676 > v677)
                    {
                      goto LABEL_1544;
                    }

                    v678 = (v672 + v668);
                    if ((v672 + v668) < v930 || v678 + 1 > v931 || v678 > v678 + 1)
                    {
                      goto LABEL_1544;
                    }

                    *v678 = *v676;
                  }

                  v672 = (v672 + 4);
                  v671 = (v671 + 4);
                  v669 += 4;
                  v670 += 4;
                }

                while (--v667);
              }

              v620 = v901;
              v621 = *v890;
              v622 = v899;
              v586 = v881;
              goto LABEL_1159;
            }
          }
        }
      }
    }

LABEL_1544:
    __break(0x5519u);
LABEL_1545:
    *(v895 + 12) = v50;
    __break(0x5519u);
  }

LABEL_1159:
  v679 = *(v620 + 5240);
  v680 = v626;
  v900[0] = v626;
  if (v902 == v679 >> 1 && *(v882 + 184))
  {
    LODWORD(v50) = *(v586 + 32);
    if (v197 <= v898)
    {
      v681 = v898;
    }

    else
    {
      v681 = v197;
    }

    if (v880)
    {
      v682 = v50 == 0;
    }

    else
    {
      v682 = 1;
    }

    if (v682 || v622 == 1)
    {
      v684 = v681;
    }

    else
    {
      v684 = v197;
    }

    if (v684 > 0x4B0)
    {
      goto LABEL_1544;
    }

    v622 = v899;
    v621 = *v890;
    v680 = v900[0];
    tcxInvertWindowGrouping(*v890, v922, v930, v684, v880, *v886, v900[0], v894, v899);
    v197 = v903;
    v620 = v901;
    v586 = v881;
  }

  if (v622 == 1 || !*(v586 + 32) || !v880)
  {
    goto LABEL_1220;
  }

  v50 = v621 + 48 * (*(v620 + 5240) == v889) + 17176;
  v685 = v50 + 24 * ((v894 | *v886) == 0);
  if (v685)
  {
    v686 = v685 + 24;
    v687 = v685 < v50 || v686 > v621 + 48 * (*(v620 + 5240) == v889) + 17224;
    if (v687 || v685 > v686)
    {
      goto LABEL_1544;
    }
  }

  *(v621 + 17272) = v685;
  ApplyTnsFilter(v685, v908, v930, v931, 0);
  if (v902 != *(v620 + 5240) >> 1)
  {
    v690 = v898;
    v197 = v903;
    goto LABEL_1222;
  }

  v197 = v903;
  if (!*(v882 + 184))
  {
LABEL_1220:
    v690 = v898;
    goto LABEL_1222;
  }

  v689 = *v625;
  v690 = v898;
  if (v689 || !v894 && !*v877 && !v626)
  {
    v691 = *(v586 + 56);
    v692 = v691 >> 1;
    LODWORD(v50) = v691 & 0xFFFFFFFE;
    if (v898 <= v50)
    {
      if (v692 >= 1)
      {
        if (v692 >= 0x4A9)
        {
          goto LABEL_1544;
        }

        memcpy(v922, &v930[2], 4 * (v692 & 0x3FFF));
        v50 = v922 + 4 * (v692 & 0x3FFF);
        v197 = v903;
        if (v50 < v922)
        {
          goto LABEL_1544;
        }
      }

      v50 = v930 + 4 * v692;
      if (v50 < v930)
      {
        goto LABEL_1544;
      }

      if (v50 > v931)
      {
        goto LABEL_1544;
      }

      if ((4 * v692 - 4769) <= 0x1F)
      {
        goto LABEL_1544;
      }

      v723 = v922[1];
      *v50 = v922[0];
      *(v50 + 16) = v723;
      v620 = v901;
      v690 = v898;
      if (v50 + 32 < v50)
      {
        goto LABEL_1544;
      }

      if (v692 >= 9)
      {
        v767 = v692 - 8;
        memcpy(&v930[2], &v922[2], 4 * v767);
        v197 = v903;
        v50 = &v930[2] + 4 * v767;
        v621 = *v890;
        v622 = v899;
        v586 = v881;
        v680 = v900[0];
        if (v50 < &v930[2])
        {
          goto LABEL_1544;
        }
      }

      else
      {
        v621 = *v890;
        v622 = v899;
        v586 = v881;
        v680 = v900[0];
      }
    }

    else
    {
      v50 = v930;
      v693 = v930 + 4 * v692;
      v694 = v693 + 32;
      if (v693 + 32 < v930)
      {
        goto LABEL_1544;
      }

      v695 = v883 >> 1;
      v696 = v930 + 4 * v695;
      v697 = v696 + 32;
      if (v696 + 32 < v930)
      {
        goto LABEL_1544;
      }

      v698 = v692 - 8;
      if (v692 >= 9)
      {
        v50 = v931 - v697;
        if (v931 < v697)
        {
          goto LABEL_1544;
        }

        if (v694 > v931)
        {
          goto LABEL_1544;
        }

        v699 = 4 * v698;
        if (v699 > v931 - v694)
        {
          goto LABEL_1544;
        }

        if (v699 > v50)
        {
          goto LABEL_1544;
        }

        memmove(v696 + 32, v694, 4 * v698);
        LOWORD(v50) = v697 + v699;
        v197 = v903;
        if (&v697[v699] < v697)
        {
          goto LABEL_1544;
        }
      }

      v50 = v930;
      if (v696 < v930)
      {
        goto LABEL_1544;
      }

      if (v696 > v931)
      {
        goto LABEL_1544;
      }

      if ((4 * v695 - 4769) <= 0x1F)
      {
        goto LABEL_1544;
      }

      v700 = v930[3];
      *v696 = v930[2];
      *(v696 + 1) = v700;
      if (v697 < v696)
      {
        goto LABEL_1544;
      }

      if (v692 >= 9)
      {
        if (v698 >= 0x4A1)
        {
          goto LABEL_1544;
        }

        memmove(&v930[2], &v930[4], 4 * (v698 & 0x3FFF));
        v50 = &v930[2] + 4 * (v698 & 0x3FFF);
        v197 = v903;
        if (v50 < &v930[2])
        {
          goto LABEL_1544;
        }
      }

      LOWORD(v50) = v930 > v693;
      if (v693 > v931)
      {
        goto LABEL_1544;
      }

      if (v930 > v693)
      {
        goto LABEL_1544;
      }

      v701 = v695 - v692;
      if (v695 - v692 < 0)
      {
        goto LABEL_1544;
      }

      v50 = (4800 - 4 * v692) >> 2;
      if (v50 < v701)
      {
        goto LABEL_1544;
      }

      if (v695 != v692)
      {
        bzero(v930 + 4 * v692, 4 * (v695 - v692));
        v197 = v903;
      }

      v702 = &v696[4 * v692];
      LOWORD(v50) = v930 > v702;
      if (v702 > v931)
      {
        goto LABEL_1544;
      }

      if (v930 > v702)
      {
        goto LABEL_1544;
      }

      v50 = v931 - v702;
      if (v701 > (v931 - v702) >> 2)
      {
        goto LABEL_1544;
      }

      if (v695 != v692)
      {
        bzero(v702, 4 * (v695 - v692));
        v197 = v903;
      }

      v620 = v901;
      v621 = *v890;
      v622 = v899;
      v690 = v898;
      v586 = v881;
      v680 = v900[0];
    }
  }

LABEL_1222:
  if (v902 <= v690)
  {
    LODWORD(v50) = v690;
  }

  else
  {
    LODWORD(v50) = v902;
  }

  if (v197 > v50)
  {
    LOWORD(v50) = v197;
  }

  if (v50 >= 1)
  {
    if (v931 < v930)
    {
      goto LABEL_1544;
    }

    v703 = 4 * (v50 & 0x7FFF);
    if (v931 - v930 < v703)
    {
      goto LABEL_1544;
    }

    LOWORD(v50) = 8161;
    if (v703 >= 0x1FE1)
    {
      goto LABEL_1544;
    }

    memmove(v921, v930, v703);
    v50 = &v921[v703 / 4];
    v197 = v903;
    if (&v921[v703 / 4] < v921)
    {
      goto LABEL_1544;
    }
  }

  v904 = v931;
  v905 = v930;
  if (*(v620 + 179528))
  {
    v704 = *(v895 + 72);
    v50 = (v690 - v704);
    if (v50 >= 1)
    {
      v705 = &v921[v704];
      if (v705 > v922 || v921 > v705 || v50 > (8160 - 4 * v704) >> 2)
      {
        goto LABEL_1544;
      }

      bzero(v705, 4 * v50);
      v197 = v903;
      v620 = v901;
      v621 = *v890;
      v622 = v899;
      v690 = v898;
      v586 = v881;
      v680 = v900[0];
    }
  }

  v933[0] = v922;
  v903 = &v923;
  v933[1] = &v923;
  v933[2] = v922;
  v706 = *(v621 + 8560);
  v707 = *(v621 + 8564);
  if (v690 <= v197)
  {
    v708 = v197;
  }

  else
  {
    v708 = v690;
  }

  v709 = v708 >> 1;
  v919[0] = *(v621 + 7200);
  v710 = v620 + 51952;
  *&v919[1] = *(v621 + 7216);
  LODWORD(v893) = v876;
  LODWORD(v896) = v879;
  IMDCT(v921, v922, v620 + 128332, v620 + 129612, v620 + 125132, v620 + 126412, v933, v919, (v621 + 5520), v621 + 7200, (v621 + 7228), v621 + 8068, (v621 + 8068), v621 + 8308, v621 + 8308, v621 + 8548, v706, v707, v680, v879, v876, v885, v902, v690, v708 >> 1, v889, __SPAIR64__(v622, v894), v620 + 51952, v620 + 54512, 0, v620, 0, __b, v921);
  if (*(v895 + 18))
  {
    v711 = **(v895 + 52);
    v712 = v711 + 13004;
    v713 = (v711 + 14364);
    memset(v933, 255, 0xA00uLL);
    v714 = *(v711 + 56);
    v715 = *(v711 + 16316);
    if (v715 <= 1.0e-20)
    {
      v720 = v711 + 13004;
      if (!v714)
      {
        *v713 = -29867 * *v713 + 22687;
        v720 = v711 + 13008;
      }

      v721 = v712 - 4 * v714 + 4 * *(v711 + 60);
      v622 = v899;
      v680 = v900[0];
      if (v720 < v721)
      {
        v722 = *v713;
        do
        {
          v722 = 22687 - 29867 * v722;
          v720 += 4;
        }

        while (v720 < v721);
        *v713 = v722;
      }
    }

    else
    {
      v716 = &scaleTable_cn_only;
      v717 = 18;
      while (1)
      {
        if (*v716 == *(v711 + 16312))
        {
          v718 = *(v711 + 16308);
          if (v718 >= v716[1] && v718 < v716[2])
          {
            break;
          }
        }

        v716 += 4;
        if (!--v717)
        {
          v719 = 0.0;
          goto LABEL_1265;
        }
      }

      v724 = __exp10((*(v716 + 3) / -10.0));
      v719 = v724 + -1.0;
LABEL_1265:
      v725 = v715 * v719;
      if (v714)
      {
        LODWORD(v933[0]) = 0;
        LODWORD(v919[0]) = 0;
        vDSP_vfill(v919, v933 + 1, 1, (v714 - 1));
        v50 = v933 + 4 * v714;
        v586 = v881;
        v726 = (v711 + 13004);
      }

      else
      {
        v714 = 0;
        v727 = 31821 * *v713 + 13849;
        v728 = v727;
        v729 = 31821 * v727 + 13849;
        v730 = v729;
        v731 = 31821 * v729 + 13849;
        *v713 = v731;
        v732 = ((v728 + v730) + v731) * 0.000030518;
        v726 = (v711 + 13008);
        v50 = v933 + 4;
        *v933 = v732 * sqrtf((v725 * *(v711 + 13004)) * 0.5);
      }

      v733 = *(v711 + 60);
      v734 = v712 - 4 * v714 + 4 * v733;
      v622 = v899;
      v680 = v900[0];
      if (v726 < v734)
      {
        do
        {
          v735 = v50 + 4;
          v736 = v50 < v933 || v735 > &v933[320];
          if (v736 || v50 > v735)
          {
            goto LABEL_1544;
          }

          v738 = 31821 * *v713 + 13849;
          v739 = v738;
          v740 = 31821 * v738 + 13849;
          v741 = v739 + v740;
          v742 = 31821 * v740 + 13849;
          *v713 = v742;
          v743 = (v741 + v742) * 0.000030518;
          *v50 = v743;
          v744 = v726 + 1;
          if (v726 + 1 > v713 || v726 > v744 || v726 < v712)
          {
            goto LABEL_1544;
          }

          *v50 = v743 * sqrtf((v725 * *v726) * 0.5);
          v50 += 4;
          ++v726;
        }

        while (v744 < v734);
      }

      LOWORD(v50) = v733;
      if (v733 > 640 || (v733 & 0x8000) != 0)
      {
        goto LABEL_1544;
      }

      if (v733 >= 1)
      {
        v745 = v733 & 0x7FFF;
        v746 = v933;
        do
        {
          *v746 = *v746 * 12.649;
          ++v746;
          --v745;
        }

        while (v745);
      }

      if (v905 > v904)
      {
        goto LABEL_1544;
      }

      v747 = v50 & 0x7FFF;
      LOWORD(v50) = v904 - v905;
      if (v747 > (v904 - v905) >> 2)
      {
        goto LABEL_1544;
      }

      MEMORY[0x19EAE5DC0](v933, 1, v905, 1, v905, 1);
      v621 = *v890;
    }

    v690 = v898;
  }

  v933[0] = v921;
  v933[1] = v922;
  v933[2] = v921;
  v748 = *v586;
  v749 = *(v586 + 4);
  v750 = v875;
  v919[0] = *(v621 + 15784);
  *&v919[1] = *(v621 + 15800);
  IMDCT(v905, v904, v901 + 129612, v901 + 131532, v901 + 126412, v901 + 128332, v933, v919, (v621 + 14104), v621 + 15784, (v621 + 15808), v621 + 16648, (v621 + 16648), v621 + 16888, v621 + 16888, v621 + 17128, v748, v749, v680, v896, v875, v884, v690, v690, v709, v887, __SPAIR64__(v622, v894), v901 + 48112, v710, 1, v901, (v887 << 9) / v889, __b, v921);
  if (!v622)
  {
    v751 = v897.i64[0];
    *(v897.i64[0] + 40) = *(v897.i64[0] + 36);
    v751[9] = *(v586 + 32) & v880;
    v752 = v751[13];
    v753 = v882;
    v751[13] = *(v882 + 100);
    v751[14] = v752;
    v754 = (*(v753 + 191) / *v753) + *(v753 + 190);
    *(v753 + 100) = v754;
    *(v753 + 101) = (v754 * v690) / v902;
  }

  v755 = v903;
  if (!*(v621 + 7224))
  {
    v50 = v922;
    v756 = v922 + 4 * v902;
    if (v756 < v922)
    {
      goto LABEL_1544;
    }

    LOWORD(v50) = v885;
    v757 = v898;
    if (v885 >= 1)
    {
      if (v756 > v903)
      {
        goto LABEL_1544;
      }

      v758 = 4 * (v885 & 0x7FFF);
      v50 = 8160 - 4 * v902;
      if (v50 < v758 || v758 >= 0x501)
      {
        goto LABEL_1544;
      }

      memcpy((v901 + 128332), v756, v758);
    }

    v50 = v921;
    v759 = &v921[v757];
    if (v759 < v921)
    {
      goto LABEL_1544;
    }

    LOWORD(v50) = v898;
    if (v884 >= 1)
    {
      if (v759 > v922)
      {
        goto LABEL_1544;
      }

      v760 = 4 * (v884 & 0x7FFF);
      v50 = 8160 - 4 * v898;
      if (v50 < v760 || v760 >= 0x781)
      {
        goto LABEL_1544;
      }

      memcpy((v901 + 129612), v759, v760);
    }
  }

  v50 = v922 + 4 * (v885 >> 1);
  v761 = (v50 + 4 * -v893);
  if (v761 < v922)
  {
    goto LABEL_1544;
  }

  if (v889 >= 1)
  {
    v762 = v873;
    v50 = v872 - v873;
    if (v872 < v873)
    {
      goto LABEL_1544;
    }

    if (v761 > v755)
    {
      goto LABEL_1544;
    }

    v763 = 4 * v889;
    if (v755 - v761 < v763)
    {
      goto LABEL_1544;
    }

    if (v50 < v763)
    {
      goto LABEL_1544;
    }

    memmove(v873, v761, 4 * v889);
    LOWORD(v50) = v762 + v763;
    if (&v762[v763] < v762)
    {
      goto LABEL_1544;
    }
  }

  v50 = &v921[v884 >> 1];
  v764 = (v50 + 4 * -v750);
  if (v764 < v921)
  {
    goto LABEL_1544;
  }

  if (v887 >= 1)
  {
    v765 = v871;
    v50 = v870 - v871;
    if (v870 < v871)
    {
      goto LABEL_1544;
    }

    if (v764 > v922)
    {
      goto LABEL_1544;
    }

    v766 = 4 * v887;
    if (v922 - v764 < v766)
    {
      goto LABEL_1544;
    }

    if (v50 < v766)
    {
      goto LABEL_1544;
    }

    memmove(v871, v764, 4 * v887);
    LOWORD(v50) = v765 + v766;
    if (&v765[v766] < v765)
    {
      goto LABEL_1544;
    }
  }
}

unint64_t set_state(unint64_t result, int a2, unsigned int a3)
{
  v3 = result + 4 * a3;
  v4 = (result + 4);
  v5 = a3 - 1;
  while (v4 >= result && (v4 + 1) <= v3 && v4 <= v4 + 1 && v4 <= v3)
  {
    *(v4 - 1) = *v4;
    ++v4;
    if (!--v5)
    {
      v6 = (result + 4 * (a3 - 1));
      if (v6 >= result && (v6 + 1) <= v3 && v6 <= v6 + 1)
      {
        *v6 = a2;
        return result;
      }

      break;
    }
  }

  __break(0x5519u);
  return result;
}

float *add_noise_11486(float *result, float *a2, float *a3, unsigned int a4, float *a5, float *a6, int a7)
{
  v7 = a4;
  v8 = &a3[a4];
  if (!a7)
  {
    if (a3 + 1 < a3 || (a3 + 1) > v8)
    {
      goto LABEL_22;
    }

    *result = *result + (*a5 * (*a3 + (*a2 * -0.68)));
    *a5 = (*a6 * 0.01) + (*a5 * 0.99);
  }

  if (a4 < 2)
  {
    v7 = 1;
LABEL_14:
    v13 = &a3[v7];
    v14 = v13 - 1;
    if (v13 - 1 >= a3 && v13 <= v8 && v14 <= v13)
    {
      *a2 = *v14;
      return result;
    }
  }

  else
  {
    v9 = a4 - 1;
    v10 = result + 1;
    v11 = a3 + 1;
    while (v11 - 1 >= a3 && v11 - 1 <= v11)
    {
      *v10 = *v10 + (*a5 * (*v11 + (*(v11 - 1) * -0.68)));
      ++v10;
      *a5 = (*a6 * 0.01) + (*a5 * 0.99);
      ++v11;
      if (!--v9)
      {
        goto LABEL_14;
      }
    }
  }

LABEL_22:
  __break(0x5519u);
  return result;
}

float Damping_fact(int a1, int a2, unsigned __int16 a3, float *a4, int a5, float a6)
{
  if (a5)
  {
    if (a2 > 1)
    {
      if (a2 == 2)
      {
        v6 = 0.45;
      }

      else
      {
        v6 = 0.35;
      }

      v7 = 0.4;
    }

    else
    {
      v6 = 0.7;
      v7 = 0.3;
    }

    return v6 + (a6 * v7);
  }

  if (a1 == 1)
  {
    v8 = 1.0;
    if (a2 <= 3)
    {
      goto LABEL_6;
    }
  }

  if (a3 == 1)
  {
    return 0.8;
  }

  if (a3)
  {
    if (a2 <= 3 && a1 == 3 && a3 == 4)
    {
      v8 = 0.8;
      goto LABEL_23;
    }

    v12 = a3 - 3 < 2 && a2 < 4;
    v8 = 0.4;
    if (v12)
    {
      v8 = 1.0;
    }

LABEL_6:
    if (a3 < 3)
    {
      return v8;
    }

LABEL_23:
    if (a2 == 2)
    {
      return ((a6 * 0.35) + 0.6) * *a4;
    }

    if (a2 == 1)
    {
      v10 = sqrtf(*a4);
      v11 = 0.98;
      if (v10 <= 0.98)
      {
        v11 = v10;
        if (v10 < 0.85)
        {
          v11 = 0.85;
        }
      }

      return v8 * v11;
    }

    else
    {
      v8 = ((a6 * 0.2) + 0.7) * *a4;
      *a4 = v8;
    }

    return v8;
  }

  if (a2 == 2)
  {
    return 0.6;
  }

  if (a2 == 1)
  {
    v6 = 0.8;
    v7 = 0.2;
    return v6 + (a6 * v7);
  }

  return 0.4;
}

unint64_t IGFDecCopyLPCFlatSpectrum(unint64_t result, unint64_t a2, unint64_t a3, unsigned int a4)
{
  if (result)
  {
    v4 = result + 7536 + 260 * a4;
    if (result + 7536 > v4 || v4 + 260 > result + 8316)
    {
LABEL_26:
      __break(0x5519u);
      return result;
    }

    v6 = *(v4 + 168);
    v7 = *(v4 + 104);
    if (v6 - 7 < v7)
    {
      v8 = result + 9248;
      v9 = result + 12448;
      v10 = v7 - v6 + 7;
      v11 = 4 * v6;
      v12 = result + 9220;
      v13 = result + 9224;
      for (i = a2; ; i += 4)
      {
        v15 = (i + v11 - 28);
        v16 = i + v11 - 24;
        v17 = v15 < a2 || v16 > a3;
        v18 = v17 || v15 > v16;
        v19 = (v12 + v11);
        result = v13 + v11;
        v20 = !v18 && v19 >= v8;
        v21 = !v20 || result > v9;
        if (v21 || v19 > result)
        {
          break;
        }

        *v19 = *v15 * 1024.0;
        v12 += 4;
        v13 += 4;
        if (!--v10)
        {
          return result;
        }
      }

      goto LABEL_26;
    }
  }

  return result;
}

void IGFDecApplyMono(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v5 = v4;
  v347 = v7;
  v348 = v6;
  v8 = v1;
  *&v364[12] = *MEMORY[0x1E69E9840];
  bzero(v356, 0x12C0uLL);
  v9 = v8;
  v344 = (v8 + 12568);
  *(v8 + 12568) = 0u;
  if (v3)
  {
    v10 = *(v8 + 13000) + 1;
  }

  else
  {
    v10 = 0;
  }

  *(v8 + 13000) = v10;
  if (*(v8 + 4))
  {
    goto LABEL_536;
  }

  v336 = v5;
  v11 = v8 + 7536 + 260 * v5;
  LOWORD(v12) = v8 + 8316;
  if (v11 + 260 > v8 + 8316 || v8 + 7536 > v11)
  {
    goto LABEL_541;
  }

  v352 = (v8 + 7520);
  v341 = (v8 + 12576);
  v15 = (v11 + 164);
  LODWORD(v14) = *(v11 + 164);
  v16 = v8 + 13008;
  v17 = (v9 + 3112);
  LOWORD(v12) = v9 + 12468;
  __C = (v9 + 3117);
  v349 = v9;
  if (v14 >= 1)
  {
    v12 = v14 & ~(v14 >> 31);
    v18 = v9 + 3112;
    while (1)
    {
      if (v18 < v17 || v18 + 1 > __C || v18 > v18 + 1)
      {
        goto LABEL_541;
      }

      if (*v18 == 1)
      {
        break;
      }

      ++v18;
      if (!--v12)
      {
        goto LABEL_61;
      }
    }

    v338 = (v9 + 3252);
    v19 = (v9 + 2312);
    v20 = *(v11 + 168);
    v21 = v20;
    v22 = *(v11 + 104);
    v23 = v22 - 7;
    v24 = &qword_19B0B0000;
    v25 = &qword_19B0AF000;
    v350 = v20;
    if (v22 - 7 <= v20)
    {
      if (v20 >= v22)
      {
        goto LABEL_58;
      }

      v23 = v20;
      v36 = *(v11 + 168);
    }

    else
    {
      v26 = v20 - 7;
      v27 = v9 + 2312;
      do
      {
        v28 = v26 - 1;
        v12 = &v27[v26];
        v29 = 0.001;
        do
        {
          if (v12 < v19 || v12 + 4 > v17 || v12 > v12 + 4)
          {
            goto LABEL_541;
          }

          v30 = *v12;
          v12 += 4;
          v29 = v29 + (v30 * v30);
          ++v28;
        }

        while (v28 < v21 + 7);
        v31 = (log((v29 / 15.0)) * 1.44269502);
        if ((v31 & 0x80000000) != 0)
        {
          v32 = 21.0;
        }

        else
        {
          LOWORD(v12) = 21;
          v32 = (21 - (v31 >> 1));
        }

        v33 = (v19 + 4 * v21);
        if (v33 < v19)
        {
          goto LABEL_541;
        }

        v12 = (v33 + 1);
        if ((v33 + 1) > v17)
        {
          goto LABEL_541;
        }

        if (v33 > v12)
        {
          goto LABEL_541;
        }

        v12 = &v356[v21];
        if (v12 < v356 || v12 + 4 > v357 || v12 > v12 + 4)
        {
          goto LABEL_541;
        }

        v34 = *v33;
        v35 = exp2(v32);
        v356[v21++] = v34 * v35;
        ++v26;
      }

      while (v21 != v23);
      v36 = v22 - 7;
      v24 = &qword_19B0B0000;
      v25 = &qword_19B0AF000;
    }

    v37 = v36 - 7;
    v38 = 4 * v37;
    v39 = *(v24 + 378);
    v40 = *(v25 + 508);
    do
    {
      v41 = v39;
      if (v23 - 7 < v22)
      {
        v12 = v38;
        v42 = v37;
        v41 = v39;
        do
        {
          v43 = v349 + v12 + 9252;
          if (v19 + v12 < v19 || v43 > v17 || v19 + v12 > v43)
          {
            goto LABEL_541;
          }

          v41 = v41 + (*(v19 + 4 * v42) * *(v19 + 4 * v42));
          ++v42;
          v12 += 4;
        }

        while (v42 < v22);
      }

      v46 = (log((v41 / (v22 - (v23 - 7)))) * v40);
      if ((v46 & 0x80000000) != 0)
      {
        v47 = 21.0;
      }

      else
      {
        LOWORD(v12) = 21;
        v47 = (21 - (v46 >> 1));
      }

      v48 = (v19 + 4 * v23);
      if (v48 < v19)
      {
        goto LABEL_541;
      }

      v12 = (v48 + 1);
      if ((v48 + 1) > v17)
      {
        goto LABEL_541;
      }

      if (v48 > v12)
      {
        goto LABEL_541;
      }

      v12 = &v356[v23];
      if (v12 < v356 || v12 + 4 > v357 || v12 > v12 + 4)
      {
        goto LABEL_541;
      }

      v49 = *v48;
      v50 = exp2(v47);
      v356[v23++] = v49 * v50;
      ++v37;
      v38 += 4;
    }

    while (v22 != v23);
LABEL_58:
    v16 = v338;
    v15 = (v11 + 164);
    if (v352 > v338 || v22 > 0x320)
    {
      goto LABEL_541;
    }

    v51 = IGF_replaceTCXNoise_1(v356, (v349 + 6), v350, v22, v344);
    v9 = v349;
    v349[3143] = v51;
    LODWORD(v14) = *(v11 + 164);
LABEL_61:
    if (v14 >= 1)
    {
      v14 = v14;
      v12 = v17;
      while (1)
      {
        if (v12 < v17 || v12 + 4 > __C || v12 > v12 + 4)
        {
          goto LABEL_541;
        }

        if (!*v12)
        {
          break;
        }

        v12 += 4;
        if (!--v14)
        {
          goto LABEL_72;
        }
      }

      if (v352 > v16)
      {
        goto LABEL_541;
      }

      v52 = *(v11 + 104);
      if (v52 > 0x320)
      {
        goto LABEL_541;
      }

      v53 = IGF_replaceTCXNoise_1((v9 + 2312), (v9 + 6), *(v11 + 168), v52, v341);
      v9 = v349;
      v349[3145] = v53;
    }
  }

LABEL_72:
  if (v352 > v16)
  {
    goto LABEL_541;
  }

  v54 = v11 + 92;
  if (*(v11 + 164) >= 1)
  {
    v55 = 0;
    v56 = (v9 + 2312);
    v57 = v11 + 144;
    v58 = v11 + 120;
    v339 = v9 + 2312;
    while (1)
    {
      v59 = (v57 + 4 * v55);
      v12 = (v59 + 1);
      if (v59 < v57 || v12 > v15 || v59 > v12)
      {
        goto LABEL_541;
      }

      v12 = v17 + 4 * v55;
      if (v12 < v17 || v12 + 4 > __C || v12 > v12 + 4)
      {
        goto LABEL_541;
      }

      v62 = v15;
      v63 = *v59;
      if (*v12 == 1)
      {
        break;
      }

      if (*v12 != 2)
      {
        LODWORD(v12) = v9[3145];
        v70 = v17;
        v69 = v56;
        if (v12)
        {
          v71 = *(v11 + 104);
          if (v71 > 0x320)
          {
            goto LABEL_541;
          }

          IGF_replaceTCXNoise_2(v56, (v9 + 6), *(v11 + 168), v71, v352, *v341);
          v58 = v11 + 120;
          v57 = v11 + 144;
          v9 = v349;
          v70 = v17;
          v69 = v56;
        }

LABEL_132:
        v84 = (v58 + 4 * v55);
        if (v84 < v58)
        {
          goto LABEL_541;
        }

        v12 = (v84 + 1);
        if ((v84 + 1) > v57 || v84 > v12 || (v84 + 2) > v57 || v12 > (v84 + 2))
        {
          goto LABEL_541;
        }

        LODWORD(v12) = *v84;
        v85 = v84[1];
        v12 = v12;
        v86 = v12 < v85;
        if (v12 > v85)
        {
          v85 = v12;
        }

        if (v86)
        {
          do
          {
            v87 = (v11 + 4 * v12);
            v88 = v87 + 1;
            v90 = v87 < v11 || v88 > v54 || v87 > v88;
            ++v12;
            v91 = (v11 + 4 * v12);
            v92 = v91 + 1;
            if (v90 || v91 < v11 || v92 > v54 || v91 > v92)
            {
              goto LABEL_541;
            }

            v96 = *v87;
            v97 = *v91;
            if (v96 <= *v91)
            {
              v98 = *v91;
            }

            else
            {
              v98 = v96;
            }

            if (v96 < v97)
            {
              v99 = 0;
              v100 = v98;
              v101 = &v69[v63];
              v102 = v100 - v96;
              v103 = &v356[v96];
              do
              {
                v104 = &v101[v99];
                v105 = &v101[v99 + 1];
                v107 = &v101[v99] < v69 || v105 > v70 || v104 > v105;
                v108 = &v103[v99];
                v109 = &v103[v99 + 1];
                if (v107 || v108 < v356 || v109 > v357 || v108 > v109)
                {
                  goto LABEL_541;
                }

                *v108 = *v104;
                ++v63;
                ++v99;
                --v102;
              }

              while (v102);
            }
          }

          while (v12 != v85);
        }

        goto LABEL_180;
      }

      v64 = *(v11 + 104);
      if (v64 <= v63)
      {
        LOWORD(v12) = 0;
      }

      else
      {
        v12 = v64 - v63;
        v65 = &v339[v63];
        v66 = 0.0;
        do
        {
          if (v65 < v56 || (v65 + 1) > v17 || v65 > v65 + 1)
          {
            goto LABEL_541;
          }

          v67 = *v65++;
          v66 = v66 + fabsf(v67);
          --v12;
        }

        while (v12);
        v12 = v66 > 0.0;
      }

      v72 = (v58 + 4 * v55);
      if (v72 < v58 || (v72 + 1) > v57 || v72 > v72 + 1)
      {
        goto LABEL_541;
      }

      v73 = (v11 + 4 * *v72);
      v74 = v73 + 1;
      v75 = v73 < v11 || v74 > v54;
      if (v75 || v73 > v74)
      {
        goto LABEL_541;
      }

      v77 = *v73;
      if (v12)
      {
        if (v64 > v63)
        {
          LOWORD(v12) = *v352;
          v78 = &v356[v77];
          v79 = v64 - v63;
          do
          {
            LOWORD(v12) = 31821 * v12 + 13849;
            if (v78 < v356 || v78 + 1 > v357 || v78 > v78 + 1)
            {
              goto LABEL_542;
            }

            *v78++ = v12;
            --v79;
          }

          while (v79);
          *v352 = v12;
        }
      }

      else if (v63 < v64)
      {
        v12 = &v356[v77];
        v80 = v64 - v63;
        do
        {
          v81 = v12 + 4;
          if (v12 < v356 || v81 > v357 || v12 > v81)
          {
            goto LABEL_541;
          }

          *v12 = 0;
          v12 += 4;
          --v80;
        }

        while (v80);
      }

LABEL_180:
      ++v55;
      v15 = v62;
      if (v55 >= *v62)
      {
        goto LABEL_181;
      }
    }

    if (v9[3143])
    {
      v68 = *(v11 + 104);
      if (v68 > 0x320)
      {
        goto LABEL_541;
      }

      v69 = v356;
      IGF_replaceTCXNoise_2(v356, (v9 + 6), *(v11 + 168), v68, v352, *v344);
      v58 = v11 + 120;
      v57 = v11 + 144;
      v9 = v349;
    }

    else
    {
      v69 = v356;
    }

    v70 = v357;
    goto LABEL_132;
  }

LABEL_181:
  bzero(v357, 0xFA0uLL);
  MEMORY[0x19EAE60E0](v348 + 4 * *(v11 + 104), 1, v357 + 4 * *(v11 + 104), 1, *(v11 + 108) - *(v11 + 104));
  LOWORD(v12) = v349;
  v113 = *(v11 + 116);
  v114 = v336;
  if (v113 > 0x17)
  {
    goto LABEL_541;
  }

  v335 = (v349 + 2080);
  IGF_calcSfbEnergy(*(v11 + 112), v113, v11, v11 + 92, v357, v359, (v349 + 2080));
  MEMORY[0x19EAE60E0](&v356[*(v11 + 104)], 1, v357 + 4 * *(v11 + 104), 1, *(v11 + 108) - *(v11 + 104));
  v115 = *(v11 + 108);
  v116 = *(v11 + 104);
  if (v115 > v116)
  {
    v117 = v115 - v116;
    v12 = 4 * v116;
    v118 = v348;
    v119 = v357;
    do
    {
      v120 = (v118 + v12);
      v121 = v118 + v12 + 4;
      if (v118 + v12 < v348 || v121 > v347 || v120 > v121)
      {
        goto LABEL_541;
      }

      if (*v120 != 0.0)
      {
        v124 = (v119 + v12);
        if ((v119 + v12) < v357 || v124 + 1 > v359 || v124 > v124 + 1)
        {
          goto LABEL_541;
        }

        *v124 = 0;
      }

      v119 = (v119 + 4);
      v118 += 4;
      --v117;
    }

    while (v117);
  }

  v125 = *(v11 + 116);
  LOWORD(v12) = v349;
  if (v125 >= 0x18)
  {
    goto LABEL_541;
  }

  v126 = (v349 + 2103);
  IGF_calcSfbEnergy(*(v11 + 112), v125, v11, v11 + 92, v357, v359, (v349 + 2103));
  __Ca = (v349 + 1042);
  *&v127 = -1;
  *(&v127 + 1) = -1;
  v357[4] = v127;
  v357[5] = v127;
  v351 = v349 + 206;
  v357[2] = v127;
  v357[3] = v127;
  v357[0] = v127;
  v357[1] = v127;
  *&v363[12] = v127;
  v362[3] = v127;
  *v363 = v127;
  v362[1] = v127;
  v362[2] = v127;
  v362[0] = v127;
  *&v360[12] = v127;
  v359[3] = v127;
  *v360 = v127;
  v359[1] = v127;
  v359[2] = v127;
  v128 = 836;
  v359[0] = v127;
  v12 = (v349 + 206);
  do
  {
    if (v12 < v351 || v12 + 4 > (v349 + 1042) || v12 > v12 + 4)
    {
      goto LABEL_541;
    }

    *v12 = 0;
    v12 += 4;
    --v128;
  }

  while (v128);
  __A = 0.0;
  vDSP_vfill(&__A, __Ca, 1, 0x344uLL);
  v129 = v348;
  v352 = (v349 + 2126);
  v130 = *(v11 + 116);
  v333 = *(v11 + 112);
  v131 = *(v11 + 248);
  v132 = *(v11 + 252);
  v331 = *(v11 + 256);
  v133 = *(v11 + 104);
  v12 = v133 - 24;
  v134 = 4 * v12;
  v135 = 0.0;
  v136 = v347;
  v137 = v349 + 2080;
  do
  {
    v138 = v348 + v134 + 4;
    if (v348 + v134 < v348 || v138 > v347 || v348 + v134 > v138)
    {
      goto LABEL_541;
    }

    v135 = v135 + (*(v348 + 4 * v12) * *(v348 + 4 * v12));
    ++v12;
    v134 += 4;
  }

  while (v12 < v133);
  v141 = v349[3112];
  if (v141)
  {
    LODWORD(v142) = 2;
  }

  else
  {
    LODWORD(v142) = 4;
  }

  if (v141 == 2)
  {
    v142 = 1;
  }

  else
  {
    v142 = v142;
  }

  v143 = v349[1883];
  v334 = v143;
  v332 = v142;
  if (v142 < v143)
  {
    v143 = v142;
  }

  v337 = v143;
  if (v143 >= 2 && v333 < v130)
  {
    v144 = *(v11 + 112);
    v145 = v333 + 1;
    v12 = v349[1883];
    if (v334 >= v332)
    {
      v12 = v332;
    }

    v146 = &v349[v145 + 2104];
    do
    {
      v147 = v144 + v12;
      if (v144 + v12 >= v130)
      {
        v148 = v130;
      }

      else
      {
        v148 = v144 + v12;
      }

      if (v144 + 1 < v148)
      {
        v149 = &v335[v144];
        v151 = (v149 + 1) > v126 || v149 > v149 + 1;
        v152 = (v126 + 4 * v144);
        v154 = v152 + 1 > v352 || v152 > v152 + 1;
        if (v149 < v335 || v151)
        {
          goto LABEL_541;
        }

        v155 = v146;
        v156 = v145;
        do
        {
          v157 = v155 - 96;
          if (v155 - 92 > v126 || v157 > v155 - 92 || v157 < v335)
          {
            goto LABEL_541;
          }

          *v149 = *(v155 - 96) + *v149;
          v160 = v155 - 4;
          v161 = v155 > v352 || v160 > v155;
          v162 = !v161 && v160 >= v126;
          v163 = !v162;
          if (v152 < v126 || v163 || v154)
          {
            goto LABEL_541;
          }

          *v152 = *(v155 - 4) + *v152;
          *(v155 - 96) = 0;
          *(v155 - 4) = 0;
          ++v156;
          v155 += 4;
        }

        while (v156 < v148);
      }

      v145 += v12;
      v146 += 4 * v12;
      v144 = v147;
    }

    while (v147 < v130);
  }

  v330 = *(v11 + 196);
  if (v330)
  {
    if (v333 < v130)
    {
      v164 = v349;
      v165 = 4 * v333;
      v166 = &v349[65 * v114];
      v167 = v357;
      v168 = v333;
      v169 = 4 * v333 + 8320;
      do
      {
        v170 = v166 + v169;
        v12 = v166 + v169 - 776;
        v171 = v166 + v169 - 772;
        if (v12 < v11 || v171 > v54 || v12 > v171)
        {
          goto LABEL_541;
        }

        v12 = (v170 - 784);
        if ((v170 - 784) < v11)
        {
          goto LABEL_541;
        }

        v174 = (v170 - 780);
        if (v174 > v54)
        {
          goto LABEL_541;
        }

        if (v12 > v174)
        {
          goto LABEL_541;
        }

        LOWORD(v12) = v349 + 8504;
        v175 = &v352[v168 >> 1];
        if (v175 < v352)
        {
          goto LABEL_541;
        }

        v12 = (v175 + 1);
        if (v175 + 1 > v349 + 2149)
        {
          goto LABEL_541;
        }

        if (v175 > v12)
        {
          goto LABEL_541;
        }

        v342 = v166[v165 / 4 + 1886];
        v340 = v166[v165 / 4 + 1884];
        v345 = v166;
        v176 = v168;
        v177 = exp2(*v175 * 0.25 + -4.0);
        v178 = v176;
        v54 = v11 + 92;
        v136 = v347;
        v129 = v348;
        v179 = v164 + v169;
        v12 = v164 + v169 + 4;
        if (v12 > v126)
        {
          goto LABEL_541;
        }

        if (v179 > v12)
        {
          goto LABEL_541;
        }

        if (v179 < v335)
        {
          goto LABEL_541;
        }

        v12 = v164 + v169 + 8;
        if (v12 > v126)
        {
          goto LABEL_541;
        }

        v180 = v164 + v169 + 4;
        if (v180 > v12 || v180 < v335)
        {
          goto LABEL_541;
        }

        v181 = v177;
        LOWORD(v12) = v164 + v165;
        v182 = (*&v164[v165 / 4 + 2080] + *&v164[v165 / 4 + 2081]) / (v342 - v340);
        v183 = v182 * 0.001;
        v184 = (v181 * v181) - v182;
        if (v183 > v184)
        {
          v184 = v183;
        }

        v185 = v167 + v165;
        if ((v167 + v165) < v357)
        {
          goto LABEL_541;
        }

        v12 = (v185 + 4);
        if (v185 + 4 > v358)
        {
          goto LABEL_541;
        }

        if (v185 > v12)
        {
          goto LABEL_541;
        }

        v186 = sqrtf(v184);
        v187 = (v167 + v165 + 4);
        *(v167 + v333) = v186;
        v12 = v167 + v165 + 8;
        if (v187 < v357)
        {
          goto LABEL_541;
        }

        if (v12 > v358 || v187 > v12)
        {
          goto LABEL_541;
        }

        v168 = v178 + 2;
        *v187 = v186;
        v166 = v345 + 2;
        v167 = (v167 + 8);
        v164 += 2;
      }

      while (v168 < v130);
    }
  }

  else if (v333 < v130)
  {
    v189 = v349;
    v190 = v333;
    v191 = &v349[65 * v114];
    v192 = v130 - v333;
    v193 = v357;
    v194 = 4 * v333 + 8320;
    do
    {
      v346 = v192;
      v12 = v191 + v194;
      v195 = v191 + v194 - 780;
      v196 = v191 + v194 - 776;
      if (v195 < v11 || v196 > v54 || v195 > v196)
      {
        goto LABEL_541;
      }

      v12 -= 784;
      if (v12 < v11)
      {
        goto LABEL_541;
      }

      if (v195 > v54)
      {
        goto LABEL_541;
      }

      if (v12 > v195)
      {
        goto LABEL_541;
      }

      v12 = v189 + v194;
      v199 = v189 + v194 + 184;
      if (v199 < v352)
      {
        goto LABEL_541;
      }

      v12 += 188;
      if (v12 > (v349 + 2149))
      {
        goto LABEL_541;
      }

      if (v199 > v12)
      {
        goto LABEL_541;
      }

      v200 = v189 + v194;
      v12 = v189 + v194 + 4;
      if (v12 > v126)
      {
        goto LABEL_541;
      }

      if (v200 > v12)
      {
        goto LABEL_541;
      }

      if (v200 < v137)
      {
        goto LABEL_541;
      }

      v201 = (v193 + v190 * 4);
      if ((v193 + v190 * 4) < v357)
      {
        goto LABEL_541;
      }

      v12 = v358;
      if (v201 + 1 > v358 || v201 > v201 + 1)
      {
        goto LABEL_541;
      }

      v202 = *&v189[v190 + 2080] / (v191[v190 + 1885] - v191[v190 + 1884]);
      v203 = v202 * 0.001;
      v343 = v191;
      v204 = exp2(v189[v190 + 2126] * 0.25 + -4.0);
      v137 = v349 + 2080;
      v136 = v347;
      v129 = v348;
      *&v204 = v204;
      v205 = (*&v204 * *&v204) - v202;
      if (v203 > v205)
      {
        v205 = v203;
      }

      *v201 = sqrtf(v205);
      v193 = (v193 + 4);
      ++v189;
      v191 = v343 + 1;
      v192 = v346 - 1;
    }

    while (v346 != 1);
  }

  LOWORD(v12) = v333;
  v206 = v357 + v333;
  if (v206 < v357)
  {
    goto LABEL_541;
  }

  v12 = (v206 + 1);
  if (v206 + 1 > v358)
  {
    goto LABEL_541;
  }

  if (v206 > v12)
  {
    goto LABEL_541;
  }

  v12 = v359;
  v207 = v359 + v333;
  if (v207 < v359)
  {
    goto LABEL_541;
  }

  v12 = v361;
  if (v207 + 1 > v361 || v207 > v207 + 1)
  {
    goto LABEL_541;
  }

  v208 = sqrt(v135 / 24.0);
  v209 = *v206 <= v208 ? *v206 : *v206 + (v132 * (v208 - *v206));
  *v207 = v209;
  v210 = v130 - 1;
  v211 = v357 + 4 * v130 - 4;
  if (v211 < v357)
  {
    goto LABEL_541;
  }

  if (v211 + 4 > v358)
  {
    goto LABEL_541;
  }

  if (v211 > v211 + 4)
  {
    goto LABEL_541;
  }

  v212 = v210;
  v213 = v359 + 4 * v210;
  if (v213 < v359 || v213 + 4 > v361 || v213 > v213 + 4)
  {
    goto LABEL_541;
  }

  *(v359 + v212) = v331 * *(v357 + v212);
  v214 = v333 + 1;
  if (v337 == 1 && v330)
  {
    if (v214 < v212)
    {
      v215 = 4 * v214;
      v216 = v130 - v333 - 2;
      v217 = v357;
      v218 = v359;
      do
      {
        v219 = (v217 + v215);
        v220 = (v217 + v215 - 4);
        v222 = v220 < v357 || v219 > v358 || v220 > v219;
        v223 = v219 + 1;
        v225 = v222 || v223 > v358 || v219 > v223;
        v226 = v219 + 2;
        v229 = v225 || v223 < v357 || v226 > v358 || v223 > v226;
        v230 = (v218 + v215);
        v231 = v218 + v215 + 4;
        if (v229 || v230 < v359 || v231 > v361 || v230 > v231)
        {
          goto LABEL_541;
        }

        *v230 = ((*v219 * 0.389) + (*v220 * 0.201)) + (*v223 * 0.41);
        v218 = (v218 + 4);
        v217 = (v217 + 4);
        --v216;
      }

      while (v216);
    }
  }

  else if (v214 < v212)
  {
    v235 = v130 - v333 - 2;
    v236 = 4 * v214;
    v237 = v357;
    v238 = v359;
    do
    {
      v239 = (v237 + v236);
      if ((v237 + v236) < v357)
      {
        goto LABEL_541;
      }

      v240 = v239 + 1 > v358 || v239 > v239 + 1;
      v241 = (v238 + v236);
      v242 = v238 + v236 + 4;
      v243 = !v240 && v241 >= v359;
      v244 = !v243 || v242 > v361;
      if (v244 || v241 > v242)
      {
        goto LABEL_541;
      }

      *v241 = *v239;
      v238 = (v238 + 4);
      v237 = (v237 + 4);
      --v235;
    }

    while (v235);
  }

  if (v333 < v130)
  {
    if (v337 <= 1)
    {
      v246 = 1;
    }

    else
    {
      v246 = v337;
    }

    v247 = v334;
    if (v334 >= v332)
    {
      v247 = v332;
    }

    v248 = v333;
    while (v334 < 1)
    {
      v252 = 0.0;
      v249 = 0.0;
LABEL_426:
      v263 = v359 + 4 * v248;
      v264 = v263 + 4;
      if (v263 < v359 || v264 > v361 || v263 > v264)
      {
        goto LABEL_541;
      }

      v267 = sqrtf((v249 * v337) / v252);
      *(v359 + v248) = v267;
      v268 = v357 + 4 * v248;
      if (v268 < v357)
      {
        goto LABEL_541;
      }

      if (v268 + 4 > v358)
      {
        goto LABEL_541;
      }

      if (v268 > v268 + 4)
      {
        goto LABEL_541;
      }

      v269 = v131 * v267;
      *(v357 + v248) = v269;
      v270 = v248 + 1;
      v271 = (v11 + 4 * (v248 + 1));
      if (v271 < v11)
      {
        goto LABEL_541;
      }

      if ((v271 + 1) > v54)
      {
        goto LABEL_541;
      }

      if (v271 > v271 + 1)
      {
        goto LABEL_541;
      }

      v272 = (v11 + 4 * v248);
      if (v272 < v11)
      {
        goto LABEL_541;
      }

      if ((v272 + 1) > v54)
      {
        goto LABEL_541;
      }

      if (v272 > v272 + 1)
      {
        goto LABEL_541;
      }

      v273 = (v269 * v269) * (*v271 - *v272);
      *(v357 + v248) = v273;
      v274 = v362 + v248;
      if (v274 < v362)
      {
        goto LABEL_541;
      }

      if (v274 + 1 > v364)
      {
        goto LABEL_541;
      }

      if (v274 > v274 + 1)
      {
        goto LABEL_541;
      }

      *(v362 + v248) = 0;
      v275 = (v126 + 4 * v248);
      if (v275 < v126 || v275 + 1 > v352 || v275 > v275 + 1)
      {
        goto LABEL_541;
      }

      v276 = 0.0;
      if (*v275 > 1.0e-20)
      {
        v276 = sqrtf(v273 / *v275);
        *v274 = v276;
      }

      v277 = v214;
      v248 += v247;
      if (v248 >= v130)
      {
        v278 = v130;
      }

      else
      {
        v278 = v248;
      }

      if (v270 < v278)
      {
        v279 = 4 * v214;
        v280 = v278;
        v281 = v277;
        do
        {
          v282 = v362 + v279 + 4;
          v283 = (v362 + v279) < v362 || v282 > v364;
          if (v283 || v362 + v279 > v282)
          {
            goto LABEL_541;
          }

          *(v362 + v281++) = v276;
          v279 += 4;
        }

        while (v281 < v280);
      }

      v214 = v277 + v337;
      if (v248 >= v130)
      {
        v12 = v356;
        v285 = v333;
        while (1)
        {
          v286 = v349[3250];
          v287 = v362 + v285;
          if (v286 >= 1)
          {
            v288 = v287 + 1;
            if (v287 < v362 || v288 > v364 || v287 > v288)
            {
              goto LABEL_541;
            }

            v291 = fminf(*v287, 12.0);
            v292 = v291 + ((v291 * -0.125) * v286);
            v293 = v291 * 0.5;
            if (v286 < 5)
            {
              v293 = v292;
            }

            *v287 = v293;
          }

          v294 = (v11 + 4 * v285);
          v295 = v294 + 1;
          v297 = v294 < v11 || v295 > v54 || v294 > v295;
          v298 = v285 + 1;
          v299 = (v11 + 4 * (v285 + 1));
          v300 = v299 + 1;
          if (v297 || v299 < v11 || v300 > v54 || v299 > v300)
          {
            goto LABEL_541;
          }

          v304 = *v294;
          v305 = v287 + 1 > v364 || v287 > v287 + 1;
          v306 = !v305 && v287 >= v362;
          v307 = !v306;
          if (v304 < *v299)
          {
            break;
          }

LABEL_534:
          v285 = v298;
          if (v130 == v298)
          {
            goto LABEL_535;
          }
        }

        v308 = v304;
        v309 = v356;
        v310 = v129;
        v311 = v349;
        while (1)
        {
          v312 = (v310 + v308 * 4);
          v313 = v310 + v308 * 4 + 4;
          v314 = v310 + v308 * 4 < v129 || v313 > v136;
          if (v314 || v312 > v313)
          {
            goto LABEL_541;
          }

          v316 = &v309[v308];
          v317 = &v309[v308 + 1];
          v320 = v317 > v357 || v316 > v317 || v316 < v356;
          v321 = v320 || v307;
          if (*v312 == 0.0)
          {
            if (v321)
            {
              goto LABEL_541;
            }

            *v312 = *v316 * *v287;
            v322 = &v311[v308 + 42];
            if (v322 < v351)
            {
              goto LABEL_541;
            }

            v323 = &v311[v308 + 43];
            if (v323 > __Ca || v322 > v323)
            {
              goto LABEL_541;
            }

            *v322 = 1;
          }

          else
          {
            if (v321)
            {
              goto LABEL_541;
            }

            v324 = &v311[v308 + 878];
            if (v324 < __Ca)
            {
              goto LABEL_541;
            }

            v325 = &v311[v308 + 879];
            if (v325 > (v349 + 1878))
            {
              goto LABEL_541;
            }

            if (v324 > v325)
            {
              goto LABEL_541;
            }

            *v324 = *v316 * *v287;
            v326 = &v311[v308 + 42];
            if (v326 < v351)
            {
              goto LABEL_541;
            }

            v327 = &v311[v308 + 43];
            if (v327 > __Ca || v326 > v327)
            {
              goto LABEL_541;
            }

            *v326 = 2;
          }

          ++v304;
          ++v311;
          ++v309;
          v310 += 4;
          if (v304 >= *v299)
          {
            goto LABEL_534;
          }
        }
      }
    }

    v249 = 0.0;
    v250 = v248;
    v251 = v246;
    v252 = 0.0;
    while (1)
    {
      v253 = v250 + 1 < v130 ? v250 + 1 : v130;
      v254 = (v11 + 4 * v253);
      v255 = v254 + 1;
      v256 = v254 < v11 || v255 > v54;
      if (v256 || v254 > v255)
      {
        break;
      }

      v258 = v250 >= v130 ? v130 : v250;
      v259 = (v11 + 4 * v258);
      if (v259 < v11 || (v259 + 1) > v54 || v259 > v259 + 1)
      {
        break;
      }

      v260 = v250 >= v212 ? v212 : v250;
      v261 = v359 + v260;
      if (v261 < v359 || v261 + 1 > v361 || v261 > v261 + 1)
      {
        break;
      }

      v262 = (*v254 - *v259);
      v249 = v249 + ((*v261 * *v261) * v262);
      v252 = v252 + v262;
      ++v250;
      if (!--v251)
      {
        goto LABEL_426;
      }
    }

LABEL_541:
    __break(0x5519u);
LABEL_542:
    *v352 = v12;
    __break(0x5519u);
  }

LABEL_535:
  v9 = v349;
LABEL_536:
  v12 = (v9 + 206);
  v328 = 800;
  v329 = v9 + 6;
  do
  {
    if (v329 >= v12 || v329 < v9 + 24)
    {
      goto LABEL_541;
    }

    *v329++ = 0;
    --v328;
  }

  while (v328);
}

float IMDCT(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, float *a9, unint64_t a10, float *a11, unint64_t a12, float *a13, unint64_t a14, unint64_t a15, unint64_t a16, int a17, int a18, int a19, int a20, int a21, int a22, int a23, int a24, int a25, int a26, uint64_t a27, unint64_t a28, unint64_t a29, __int16 a30, uint64_t a31, int a32, float *a33, float *a34)
{
  v34 = MEMORY[0x1EEE9AC00](a1);
  v301 = v35;
  v302 = v37;
  v38 = v36;
  v299 = v40;
  v300 = v39;
  v296 = v41;
  v297 = v42;
  v303 = v34;
  v310 = *MEMORY[0x1E69E9840];
  v43 = (56250 * (*(a31 + 5172) / 100) * 0x29F16B11C6D1E109) >> 64;
  v286 = ((v43 >> 63) + (v43 >> 14)) * a23 / a24;
  v294 = (a31 + 123832);
  v304 = a19;
  v44 = -a21;
  if (a24 == *(a31 + 123832) >> 1 && *(a31 + 138540))
  {
    v45 = *(a31 + 115074);
    if (HIDWORD(a27))
    {
      if (*(a31 + 115074) && *(a31 + 115072))
      {
        goto LABEL_6;
      }
    }

    else if (*(a31 + 115074))
    {
LABEL_6:
      memset(__b, 255, 0xCA8uLL);
      if (v45 == 2)
      {
        v46 = a18;
      }

      else
      {
        v46 = a17;
      }

      LODWORD(__A) = 0;
      vDSP_vfill(&__A, __b, 1, 0x32AuLL);
      v47 = *v38;
      v48 = v38[1];
      if (*v38 > v48)
      {
        goto LABEL_459;
      }

      if (v38[2] > v47)
      {
        goto LABEL_459;
      }

      v283 = a21 + (v46 >> 1);
      if (v283 < 0 || (v48 - v47) >> 2 < v283)
      {
        goto LABEL_459;
      }

      v305 = a23 >> 1;
      v49 = v46 >> 1;
      if (v283 >= 1)
      {
        bzero(v47, 4 * (a21 + (v46 >> 1)));
      }

      v50 = 0;
      v51 = 0;
      v292 = a31 + 125132;
      v293 = a31 + 123852;
      v291 = a31 + 64148;
      v290 = a31 + 64216;
      v295 = v49;
      v52 = a17 >= 0 && a17 <= (a12 - a11) >> 2;
      v53 = !v52;
      v284 = v53;
      v54 = (v46 & 0x8000) == 0 && v46 < 811;
      v55 = v54;
      v56 = a18 < 0 || (a14 - a13) >> 2 < a18;
      v57 = !v56 && a12 >= a11;
      v58 = v57 && a14 >= a13;
      v59 = !v58;
      v285 = v59;
      v60 = 4 * (a23 >> 1);
      v61 = __b + 4 * v46 <= &__b[202] + 8 && 3240 - 4 * v46 >= v60;
      v62 = !v61;
      v287 = v62;
      v288 = !v55;
      v63 = 1;
      v289 = -a21 & (a21 >> 31);
      v298 = -v49;
      do
      {
        v64 = v63;
        v65 = v303 + 4 * v50 * a25;
        if (v65 < v303)
        {
          goto LABEL_459;
        }

        TCX_MDCT_Inverse(v65, v301, __b, &__b[202] + 8, v46, v305 - v46, v46);
        *&__A = __b;
        *(&__A + 1) = &__b[202] + 8;
        v308 = __b;
        if (v51)
        {
          v66 = 0;
        }

        else
        {
          v66 = a20;
        }

        if ((a19 == 2) | v51 & 1)
        {
          v67 = 2;
        }

        else
        {
          v67 = *(a31 + 115074);
        }

        if ((a27 > 0) | v51 & 1)
        {
          v68.n128_f32[0] = tcx_windowing_synthesis_current_frame(&__A, a9, a10, a11, a12, a13, a14, v46, a17, a18, v66, v67, a33, a34, v293, v292, v300, v299, v291, v290, a15, a16, v305, v289, 1, 0, a32);
          if (v51)
          {
            if (v285)
            {
              goto LABEL_459;
            }

            v69 = *v302;
            v70 = v302[1];
            v71 = v284;
            if (*v302 > v70)
            {
              v71 = 1;
            }

            if (v71)
            {
              goto LABEL_459;
            }

            if (v302[2] > v69)
            {
              goto LABEL_459;
            }

            if (v46 > (v70 - v69) >> 2)
            {
              goto LABEL_459;
            }

            v72 = &(*v38)[4 * a21 + 4 * v298 + 4 * v305];
            if (v72 < v38[2])
            {
              goto LABEL_459;
            }

            tcx_windowing_synthesis_past_frame(v72, v38[1], v69, a11, a13, v46, a17, a18, 2);
          }
        }

        else
        {
          v68.n128_f32[0] = tcx_windowing_synthesis_current_frame(&__A, a9, a10, a11, a12, a13, a14, v46, a17, a18, a20, v67, a33, a34, v293, v292, v300, v299, v291, v290, a15, a16, v305, v289, *(a31 + 138192), *(a31 + 123848), a32);
        }

        v73 = v50 * v305;
        v74 = v38[1];
        v75 = &(*v38)[4 * a21 + 4 * v298 + 4 * v73];
        if (v75 > v74 || v38[2] > v75)
        {
          goto LABEL_459;
        }

        v76 = v46 > (v74 - v75) >> 2 ? 1 : v288;
        if (v76)
        {
          goto LABEL_459;
        }

        MEMORY[0x19EAE5DC0](__b, 1, v75, 1, &(*v38)[4 * a21 + 4 * v298 + 4 * v50 * v305], 1, v46 & 0x7FFF, v68);
        v79 = a28;
        v78 = a22;
        if ((__b + 4 * v46) < __b)
        {
          goto LABEL_459;
        }

        v80 = &(*v38)[4 * a21 + 4 * v295 + 4 * v73];
        if (v80 < v38[2])
        {
          goto LABEL_459;
        }

        if (v305 >= 1)
        {
          v81 = v38[1];
          v57 = v81 >= v80;
          v82 = v81 - v80;
          v83 = v287;
          if (!v57)
          {
            v83 = 1;
          }

          if (v83)
          {
            goto LABEL_459;
          }

          if (v82 < v60)
          {
            goto LABEL_459;
          }

          memmove(&(*v38)[4 * a21 + 4 * v295 + 4 * v73], __b + 4 * v46, v60);
          v79 = a28;
          v78 = a22;
          if (v80 + v60 < v80)
          {
            goto LABEL_459;
          }
        }

        v63 = 0;
        v51 = 1;
        v50 = 1;
      }

      while ((v64 & 1) != 0);
      v84 = v38[1];
      v85 = &(*v38)[4 * a23 + 4 * a21 + 4 * v295];
      if (v85 > v84)
      {
        goto LABEL_459;
      }

      if (v38[2] > v85)
      {
        goto LABEL_459;
      }

      v86 = v78 - v283;
      if (v78 - v283 < 0 || (v84 - v85) >> 2 < v86)
      {
        goto LABEL_459;
      }

      if (v86 < 1)
      {
        goto LABEL_121;
      }

      bzero(v85, 4 * (v78 - v283));
LABEL_120:
      v79 = a28;
      v78 = a22;
LABEL_121:
      v102 = 1;
      goto LABEL_122;
    }

    if (a27 || *(a31 + 115072))
    {
      if (*v36 < v36[2])
      {
        goto LABEL_459;
      }

      TCX_MDCT_Inverse(v34, v35, *v36, v36[1], a22, a23 - a22, a22);
      if (a27 < 1 || HIDWORD(a27) | a19 || !*(a31 + 58172))
      {
        v103 = a19;
      }

      else
      {
        v103 = 2;
      }

      if (a27 <= 0)
      {
        v105 = *(a31 + 138192);
        v104 = *(a31 + 123848);
      }

      else
      {
        v104 = 0;
        v105 = 1;
      }

      __b[0] = *v38;
      *&__b[1] = v38[2];
      result = tcx_windowing_synthesis_current_frame(__b, a9, a10, a11, a12, a13, a14, a22, a17, a18, a20, v103, a33, a34, a31 + 123852, a31 + 125132, v300, v299, a31 + 64148, a31 + 64216, a15, a16, a26 >> 1, v44 & (a21 >> 31), v105, v104, a32);
      goto LABEL_120;
    }

    memset(__b, 255, 0xCA8uLL);
    LODWORD(__A) = 0;
    vDSP_vfill(&__A, __b, 1, 0x32AuLL);
    v182 = __b + (a23 >> 1);
    if (v182 < __b)
    {
      goto LABEL_459;
    }

    v183 = a23 >> 1;
    TCX_MDCT_Inverse(v303, v301, v182, &__b[202] + 8, 0, v183 - (a18 >> 1), a18);
    v184 = *v38;
    v185 = v38[1];
    if (*v38 > v185)
    {
      goto LABEL_459;
    }

    v186 = v38[2];
    if (v186 > v184)
    {
      goto LABEL_459;
    }

    v306 = a22 >> 1;
    if (a22 >> 1 < 0)
    {
      goto LABEL_459;
    }

    v187 = v306;
    if ((v185 - v184) >> 2 < v306)
    {
      goto LABEL_459;
    }

    if (v306 >= 1)
    {
      bzero(v184, 4 * (a22 >> 1));
      v184 = *v38;
    }

    v188 = &v184[4 * v306];
    if (v188 < v186)
    {
      goto LABEL_459;
    }

    v189 = a18 >> 1;
    if ((v183 + (a18 >> 1)) >= 1)
    {
      v190 = v38[1];
      v57 = v190 >= v188;
      v191 = v190 - v188;
      if (!v57)
      {
        goto LABEL_459;
      }

      if (v182 > &__b[202] + 2)
      {
        goto LABEL_459;
      }

      v192 = 4 * ((v183 + (a18 >> 1)) & 0x7FFFu);
      if (3240 - 4 * (a23 >> 1) < v192)
      {
        goto LABEL_459;
      }

      if (v191 < v192)
      {
        goto LABEL_459;
      }

      memmove(&v184[4 * v306], v182, v192);
      if (&v188[v192] < v188)
      {
        goto LABEL_459;
      }
    }

    v193 = v303 + 4 * a25;
    if (v193 < v303)
    {
      goto LABEL_459;
    }

    TCX_MDCT_Inverse(v193, v301, __b, &__b[202] + 8, a18, v183 - a18, a18);
    *&__A = __b;
    *(&__A + 1) = &__b[202] + 8;
    v308 = __b;
    v194 = v44 & (a21 >> 31);
    tcx_windowing_synthesis_current_frame(&__A, a9, a10, a11, a12, a13, a14, a18, a17, a18, 0, 2, a33, a34, a31 + 123852, a31 + 125132, v300, v299, a31 + 64148, a31 + 64216, a15, a16, v183, v194, 1, 0, a32);
    if (a14 < a13)
    {
      goto LABEL_459;
    }

    if (a12 < a11)
    {
      goto LABEL_459;
    }

    if (a18 < 0)
    {
      goto LABEL_459;
    }

    if ((a14 - a13) >> 2 < a18)
    {
      goto LABEL_459;
    }

    if (a17 < 0)
    {
      goto LABEL_459;
    }

    if ((a12 - a11) >> 2 < a17)
    {
      goto LABEL_459;
    }

    v195 = *v302;
    v196 = v302[1];
    if (*v302 > v196)
    {
      goto LABEL_459;
    }

    if (v302[2] > v195)
    {
      goto LABEL_459;
    }

    if (a18 > (v196 - v195) >> 2)
    {
      goto LABEL_459;
    }

    v197 = &(*v38)[4 * v306 + 4 * v183 + -4 * v189];
    if (v197 < v38[2])
    {
      goto LABEL_459;
    }

    tcx_windowing_synthesis_past_frame(v197, v38[1], v195, a11, a13, a18, a17, a18, 2);
    v198 = v38[1];
    v199 = &(*v38)[4 * v306 + 4 * v183 + -4 * v189];
    if (v199 > v198)
    {
      goto LABEL_459;
    }

    if (v38[2] > v199)
    {
      goto LABEL_459;
    }

    if (a18 > 810)
    {
      goto LABEL_459;
    }

    if ((a18 & 0x8000) != 0)
    {
      goto LABEL_459;
    }

    if ((v198 - v199) >> 2 < a18)
    {
      goto LABEL_459;
    }

    MEMORY[0x19EAE5DC0](__b, 1, v199, 1, &(*v38)[4 * v306 + 4 * v183 + -4 * v189], 1, a18 & 0x7FFF);
    v200 = a22;
    v201 = __b + 4 * a18;
    if (v201 < __b)
    {
      goto LABEL_459;
    }

    v202 = &(*v38)[4 * v306 + 4 * v183 + 4 * v189];
    if (v202 < v38[2])
    {
      goto LABEL_459;
    }

    if (v183 >= 1)
    {
      v203 = v38[1];
      v57 = v203 >= v202;
      v204 = v203 - v202;
      if (!v57)
      {
        goto LABEL_459;
      }

      if (v201 > &__b[202] + 8)
      {
        goto LABEL_459;
      }

      v205 = 4 * (a23 >> 1);
      if (3240 - 4 * a18 < v205)
      {
        goto LABEL_459;
      }

      if (v204 < v205)
      {
        goto LABEL_459;
      }

      memmove(&(*v38)[4 * v306 + 4 * (a23 >> 1) + 4 * v189], v201, 4 * (a23 >> 1));
      v200 = a22;
      if (v202 + v205 < v202)
      {
        goto LABEL_459;
      }
    }

    if (v200)
    {
      v206 = v38[2];
      v207 = ~v306 + v200;
      v208 = 4 * v306;
      do
      {
        v209 = *v38;
        v210 = v38[1];
        v211 = &(*v38)[v208];
        v212 = v211 + 4 > v210 || v211 > v211 + 4;
        v213 = !v212 && v211 >= v206;
        v214 = &v209[4 * v207];
        v215 = v214 + 1;
        v216 = !v213 || v215 > v210;
        v217 = v216 || v214 > v215;
        if (v217 || v214 < v206)
        {
          goto LABEL_459;
        }

        *v214 = -*&v209[4 * v187++];
        --v207;
        v208 += 4;
      }

      while (v187 < v200);
    }

    v219 = *(a31 + 138192);
    v220 = *(a31 + 123848);
    __A = *v38;
    v308 = v38[2];
    v282 = a32;
    HIDWORD(v280) = v194;
    v281 = __PAIR64__(v220, v219);
    LODWORD(v280) = a23 & 0xFFFFFFFE;
    v278 = a15;
    v279 = a16;
    v276 = a31 + 64148;
    v277 = a31 + 64216;
    v274 = v300;
    v275 = v299;
    v272 = a31 + 123852;
    v273 = a31 + 125132;
    v270 = a33;
    v271 = a34;
    p_A = &__A;
    v269 = 0;
LABEL_88:
    result = tcx_windowing_synthesis_current_frame(p_A, a9, a10, a11, a12, a13, a14, a22, a17, a18, a20, v269, v270, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, SHIDWORD(v280), v281, SHIDWORD(v281), v282);
    goto LABEL_120;
  }

  if (*(a31 + 115074) == -2)
  {
    if (*v36 < v36[2])
    {
      goto LABEL_459;
    }

    TCX_MDCT_Inverse(v34, v35, *v36, v36[1], a22, a23 - a22, a22);
    v87 = *(a31 + 115074);
    v88 = *(a31 + 138192);
    v89 = *(a31 + 123848);
    __b[0] = *v38;
    *&__b[1] = v38[2];
    v282 = a32;
    HIDWORD(v280) = v44 & (a21 >> 31);
    v281 = __PAIR64__(v89, v88);
    LODWORD(v280) = a26 >> 1;
    v278 = a15;
    v279 = a16;
    v276 = a31 + 64148;
    v277 = a31 + 64216;
    v275 = v299;
    v273 = a31 + 125132;
    v274 = v300;
    v272 = a31 + 123852;
    v270 = a33;
    v271 = a34;
    p_A = __b;
    v269 = v87;
    goto LABEL_88;
  }

  memset(__b, 255, sizeof(__b));
  v91 = v38[1];
  v92 = &(*v38)[4 * (a22 / 2) + 4 * v286];
  if (v92 > v91)
  {
    goto LABEL_459;
  }

  if (v38[2] > v92)
  {
    goto LABEL_459;
  }

  if (v301 < v303)
  {
    goto LABEL_459;
  }

  if ((a23 & 0x8000) != 0)
  {
    goto LABEL_459;
  }

  if ((v91 - v92) >> 2 < a23)
  {
    goto LABEL_459;
  }

  if (a23 > (v301 - v303) >> 2)
  {
    goto LABEL_459;
  }

  edct(v303);
  if (a23 > 1200)
  {
    goto LABEL_459;
  }

  v93 = v38[1];
  v94 = &(*v38)[4 * ((a22 + (a22 >> 31)) >> 1) + 4 * v286];
  v95 = v94 > v93 || v38[2] > v94;
  if (v95 || a23 > (v93 - v94) >> 2)
  {
    goto LABEL_459;
  }

  if (a23 >= 1)
  {
    v96 = sqrtf(a23 / 160.0);
    v97 = a23 & 0x7FFF;
    v98 = __b;
    do
    {
      v99 = *v94++;
      *v98++ = v99 * v96;
      --v97;
    }

    while (v97);
  }

  if (a29 < a28 || a23 > (a29 - a28) >> 2)
  {
    goto LABEL_459;
  }

  v100 = *(a31 + 115074);
  v101 = *(a31 + 115072);
  __A = *v38;
  v308 = v38[2];
  result = window_ola(__b, &__A, a28, a23, v100, v101, 0, 0, 0, 0);
  v79 = a28;
  v78 = a22;
  v102 = 0;
LABEL_122:
  if (!a27 && *(a31 + 138192) < 1 || (a24 != *v294 >> 1 || !*(a31 + 138540)) && *(a31 + 115074) != -2)
  {
    goto LABEL_218;
  }

  if (a27 < 1)
  {
    v106 = (a31 + 113744);
  }

  else
  {
    v106 = (a31 + 113744);
    if (!(HIDWORD(a27) | a19))
    {
      if (*(a31 + 115072))
      {
        v304 = 0;
      }

      else
      {
        v304 = 2 * (*(a31 + 58172) != 0);
      }
    }
  }

  if (!*v106)
  {
    if (!v304 || v106[665] == 2)
    {
      v304 = v106[665];
    }

    if (a14 < a13)
    {
      goto LABEL_459;
    }

    if (a12 < a11)
    {
      goto LABEL_459;
    }

    if (a18 < 0)
    {
      goto LABEL_459;
    }

    if ((a14 - a13) >> 2 < a18)
    {
      goto LABEL_459;
    }

    if (a17 < 0)
    {
      goto LABEL_459;
    }

    if ((a12 - a11) >> 2 < a17)
    {
      goto LABEL_459;
    }

    v116 = *v302;
    v117 = v302[1];
    if (*v302 > v117 || v302[2] > v116 || v78 < 0 || (v117 - v116) >> 2 < v78)
    {
      goto LABEL_459;
    }

    tcx_windowing_synthesis_past_frame(v296, v297, v116, a11, a13, v78, a17, a18, v304);
    if (HIDWORD(a27))
    {
      v79 = a28;
      v78 = a22;
      if (!a17)
      {
        goto LABEL_218;
      }

      v118 = 0;
      v119 = 0;
      while (1)
      {
        v120 = (v296 + 4 * v119);
        v121 = v120 + 1;
        v122 = v120 < v296 || v121 > v297;
        if (v122 || v120 > v121)
        {
          break;
        }

        v124 = &a11[~v118 + a17];
        v125 = v124 + 1;
        v126 = v124 < a11 || v125 > a12;
        if (v126 || v124 > v125)
        {
          break;
        }

        v128 = &(*v38)[4 * ((a22 >> 1) - a21 + v118)];
        v129 = v128 + 1 > v38[1] || v128 > v128 + 1;
        if (v129 || v128 < v38[2])
        {
          break;
        }

        result = *v128 + (*v120 * *v124);
        *v128 = result;
        v118 = ++v119;
        if (v119 >= a17)
        {
          goto LABEL_218;
        }
      }
    }

    else if (a20)
    {
      v79 = a28;
      v78 = a22;
      if (!a22)
      {
        goto LABEL_218;
      }

      v165 = 0;
      v166 = 0;
      while (1)
      {
        v167 = (v296 + 4 * v166);
        v168 = v167 + 1;
        v169 = v167 < v296 || v168 > v297;
        if (v169 || v167 > v168)
        {
          break;
        }

        v171 = &(*v38)[4 * (v165 + (a22 >> 1))];
        v172 = v171 + 1 > v38[1] || v171 > v171 + 1;
        if (v172 || v171 < v38[2])
        {
          break;
        }

        result = *v167 + *v171;
        *v171 = result;
        v165 = ++v166;
        if (v166 >= a22)
        {
          goto LABEL_218;
        }
      }
    }

    else
    {
      v79 = a28;
      v78 = a22;
      if (!a22)
      {
        goto LABEL_218;
      }

      v174 = 0;
      while (1)
      {
        v175 = (v296 + 4 * v174);
        v176 = v175 + 1;
        v177 = v175 < v296 || v176 > v297;
        if (v177 || v175 > v176)
        {
          break;
        }

        v179 = &(*v38)[4 * v174];
        v180 = v179 + 1 > v38[1] || v179 > v179 + 1;
        if (v180 || v179 < v38[2])
        {
          break;
        }

        result = *v175 + *v179;
        *v179 = result;
        if (a22 <= ++v174)
        {
          goto LABEL_218;
        }
      }
    }

LABEL_459:
    __break(0x5519u);
  }

  if (v78 - a18 >= 1)
  {
    v107 = 0;
    v108 = 0;
    while (1)
    {
      v109 = &v79[v107 + v286];
      v110 = v109 + 1;
      v111 = v109 < v79 || v110 > a29;
      if (v111 || v109 > v110)
      {
        goto LABEL_459;
      }

      v113 = &(*v38)[4 * (v78 / 2 - a21) + 4 * v107];
      v114 = v113 + 1 > v38[1] || v113 > v113 + 1;
      if (v114 || v113 < v38[2])
      {
        goto LABEL_459;
      }

      result = *v109 + *v113;
      *v113 = result;
      v107 = ++v108;
      if (v78 - a18 <= v108)
      {
        goto LABEL_194;
      }
    }
  }

  v108 = 0;
LABEL_194:
  for (i = v108; v108 < v78; i = ++v108)
  {
    v132 = &v79[i + v286];
    v133 = v132 + 1;
    v134 = v132 < v79 || v133 > a29;
    if (v134 || v132 > v133)
    {
      goto LABEL_459;
    }

    v136 = &a13[~i + v78];
    v137 = v136 + 1;
    v138 = v136 < a13 || v137 > a14;
    if (v138 || v136 > v137)
    {
      goto LABEL_459;
    }

    v140 = &(*v38)[4 * (v78 / 2 - a21) + 4 * i];
    v141 = v140 + 1 > v38[1] || v140 > v140 + 1;
    if (v141 || v140 < v38[2])
    {
      goto LABEL_459;
    }

    result = *v140 + (*v132 * *v136);
    *v140 = result;
  }

LABEL_218:
  if (!v102)
  {
    goto LABEL_393;
  }

  if (a27 > 0 || *v294 >> 1 != a24)
  {
    v144 = &(*v38)[4 * a23 + -4 * v286];
    if (v144 < v38[2])
    {
      goto LABEL_459;
    }

    v145 = v286;
    v146 = v286 + v78;
    if ((v286 + v78) >= 1)
    {
      if (a29 < v79)
      {
        goto LABEL_459;
      }

      v147 = v38[1];
      if (v144 > v147)
      {
        goto LABEL_459;
      }

      v148 = 4 * (v146 & 0x7FFFu);
      if (v147 - v144 < v148)
      {
        goto LABEL_459;
      }

      if (a29 - v79 < v148)
      {
        goto LABEL_459;
      }

      memmove(v79, v144, 4 * (v146 & 0x7FFFu));
      v79 = a28;
      v78 = a22;
      if (a28 + v148 < a28)
      {
        goto LABEL_459;
      }
    }

    v149 = &v79[v286];
    v150 = &v149[4 * v78];
    if (v150 > a29 || v150 < v79 || v286 < 0 || (a29 - v150) >> 2 < v286)
    {
      goto LABEL_459;
    }

    if (v286 >= 1)
    {
      bzero(v150, 4 * v286);
      v79 = a28;
      v78 = a22;
    }

    if (a14 < a13)
    {
      goto LABEL_459;
    }

    if (a12 < a11)
    {
      goto LABEL_459;
    }

    if (a18 < 0)
    {
      goto LABEL_459;
    }

    if ((a14 - a13) >> 2 < a18)
    {
      goto LABEL_459;
    }

    if (a17 < 0)
    {
      goto LABEL_459;
    }

    if ((a12 - a11) >> 2 < a17)
    {
      goto LABEL_459;
    }

    v151 = *v302;
    v152 = v302[1];
    if (*v302 > v152 || v302[2] > v151 || v149 < v79 || v78 < 0 || (v152 - v151) >> 2 < v78)
    {
      goto LABEL_459;
    }

    v153 = (a31 + 113744);
    v154 = v149;
    v155 = a17;
    tcx_windowing_synthesis_past_frame(v154, a29, v151, a11, a13, v78, a17, a18, *(a31 + 115072));
    if (*(a31 + 115072))
    {
      v143 = 0;
      v78 = a22;
      goto LABEL_395;
    }

    v156 = (143750 * (*(a31 + 137780) / 100) * 0x29F16B11C6D1E109) >> 64;
    v78 = a22;
    if (v146 != ((v156 >> 63) + (v156 >> 14)))
    {
      if (v286 << 16 == 4718592)
      {
        v221 = *v302 + 456;
        if (v221 > v302[1])
        {
          goto LABEL_459;
        }

        v222 = (*v302 + 452);
        if (v222 > v221 || v222 < v302[2])
        {
          goto LABEL_459;
        }

        if (*v222 == 0.0)
        {
          goto LABEL_367;
        }

LABEL_366:
        *(a31 + 106374) = 1;
        *(a31 + 5168) = 1;
LABEL_367:
        v223 = 0;
        v224 = 0;
        v225 = v38[2];
        while (1)
        {
          v226 = &(*v38)[4 * ~v223 + 4 * a23];
          v227 = v226 + 1 > v38[1] || v226 > v226 + 1;
          if (v227 || v226 < v225)
          {
            goto LABEL_459;
          }

          v229 = (*v302 + 4 * ~v223);
          v230 = (v229 + 1) > v302[1] || v229 > v229 + 1;
          v231 = !v230 && v229 >= v302[2];
          v232 = (a28 + 4 * (v145 + a22 + v223));
          v233 = v232 + 1;
          v234 = v231 && v232 >= a28;
          v235 = !v234 || v233 > a29;
          if (v235 || v232 > v233)
          {
            goto LABEL_459;
          }

          result = *v226 * *v229;
          *v232 = result;
          v223 = ++v224;
          if (v145 <= v224)
          {
            goto LABEL_393;
          }
        }
      }

      if (v286 << 16 == 5898240)
      {
        v157 = *v302;
        v158 = v302[1];
        v159 = *v302 + 456;
        if (v159 > v158)
        {
          goto LABEL_459;
        }

        v160 = (v157 + 452);
        if (v157 + 452 > v159)
        {
          goto LABEL_459;
        }

        v161 = v302[2];
        if (v160 < v161)
        {
          goto LABEL_459;
        }

        v162 = *v160;
        if (*v160 != 0.0)
        {
          v163 = v157 + 448;
          if (v157 + 448 > v158)
          {
            goto LABEL_459;
          }

          v164 = (v157 + 444);
          if (v164 > v163 || v164 < v161)
          {
            goto LABEL_459;
          }

          if (v162 >= *v164)
          {
            goto LABEL_367;
          }
        }

        v145 = 72;
        goto LABEL_366;
      }
    }

    if (v286 > 0)
    {
      goto LABEL_367;
    }

LABEL_393:
    v143 = 1;
    goto LABEL_394;
  }

  v143 = 0;
LABEL_394:
  v155 = a17;
  v153 = (a31 + 113744);
LABEL_395:
  if (a30)
  {
    *v153 = v143;
  }

  if (a20 && !a27 && !*(a31 + 138192) && *(a31 + 24310))
  {
    if (a30)
    {
      if (v155 >= 1)
      {
        v237 = 0;
        v238 = 0;
        v239 = v78 / 2 - a21;
        v240 = a31 + 129612;
        while (1)
        {
          v241 = &a11[v238];
          v242 = v241 + 1;
          v243 = v241 < a11 || v242 > a12;
          if (v243 || v241 > v242)
          {
            break;
          }

          v245 = v38[2];
          v246 = v239 + v237;
          v247 = &(*v38)[4 * v239 + 4 * v237];
          v248 = v247 + 1 > v38[1] || v247 > v247 + 1;
          if (v248 || v247 < v245)
          {
            break;
          }

          *v247 = *v241 * *v247;
          v250 = (v240 + 4 * v238);
          if (v250 < v240)
          {
            break;
          }

          if ((v250 + 1) > a31 + 131532)
          {
            break;
          }

          if (v250 > v250 + 1)
          {
            break;
          }

          v251 = &a11[~v237 + a17];
          if (v251 < a11)
          {
            break;
          }

          if ((v251 + 1) > a12)
          {
            break;
          }

          if (v251 > v251 + 1)
          {
            break;
          }

          v252 = &(*v38)[4 * v246];
          if (v252 + 1 > v38[1] || v252 > v252 + 1 || v252 < v245)
          {
            break;
          }

          result = *v252 + ((*v250 * *v251) * *v251);
          *v252 = result;
          v237 = ++v238;
          if (v238 >= a17)
          {
            return result;
          }
        }

        goto LABEL_459;
      }
    }

    else if (v155 >= 1)
    {
      v253 = 0;
      v254 = 0;
      v255 = v78 / 2 - a21;
      v256 = a31 + 128332;
      while (1)
      {
        v257 = &a11[v254];
        v258 = v257 + 1;
        v259 = v257 < a11 || v258 > a12;
        if (v259 || v257 > v258)
        {
          break;
        }

        v261 = v38[2];
        v262 = v255 + v253;
        v263 = &(*v38)[4 * v255 + 4 * v253];
        v264 = v263 + 1 > v38[1] || v263 > v263 + 1;
        if (v264 || v263 < v261)
        {
          break;
        }

        *v263 = *v257 * *v263;
        v266 = (v256 + 4 * v254);
        if (v266 < v256)
        {
          break;
        }

        if ((v266 + 1) > a31 + 129612)
        {
          break;
        }

        if (v266 > v266 + 1)
        {
          break;
        }

        v267 = &a11[~v253 + a17];
        if (v267 < a11)
        {
          break;
        }

        if ((v267 + 1) > a12)
        {
          break;
        }

        if (v267 > v267 + 1)
        {
          break;
        }

        v268 = &(*v38)[4 * v262];
        if (v268 + 1 > v38[1] || v268 > v268 + 1 || v268 < v261)
        {
          break;
        }

        result = *v268 + ((*v266 * *v267) * *v267);
        *v268 = result;
        v253 = ++v254;
        if (v254 >= a17)
        {
          return result;
        }
      }

      goto LABEL_459;
    }
  }

  return result;
}

uint64_t IGF_replaceTCXNoise_1(unint64_t a1, unint64_t a2, int a3, unsigned int a4, float *a5)
{
  v5 = a4 - a3;
  if (a4 <= a3)
  {
    result = 0;
    v9 = 1.1755e-38;
LABEL_13:
    *a5 = v9;
  }

  else
  {
    result = 0;
    v8 = (a1 + 4 * a3);
    v9 = 1.1755e-38;
    v10 = (a2 + a3);
    while (v10 < a2 + a4 && v10 >= a2)
    {
      if (*v10)
      {
        if (v8 < a1 || (v8 + 1) > a1 + 4 * a4 || v8 > v8 + 1)
        {
          break;
        }

        v9 = v9 + (*v8 * *v8);
        result = (result + 1);
      }

      ++v8;
      ++v10;
      if (!--v5)
      {
        goto LABEL_13;
      }
    }

    __break(0x5519u);
  }

  return result;
}

unint64_t IGF_replaceTCXNoise_2(unint64_t result, unint64_t a2, int a3, unsigned int a4, _WORD *a5, float a6)
{
  v6 = a4 - a3;
  if (a4 > a3)
  {
    v7 = a2 + a4;
    v8 = result + 4 * a4;
    v9 = 1.1755e-38;
    v10 = (result + 4 * a3);
    v11 = a4 - a3;
    v12 = (a2 + a3);
    while (v12 < v7 && v12 >= a2)
    {
      if (*v12)
      {
        v13 = 31821 * *a5 + 13849;
        *a5 = v13;
        if (v10 < result || (v10 + 1) > v8 || v10 > v10 + 1)
        {
          break;
        }

        v14 = v13;
        *v10 = v14;
        v9 = v9 + (v14 * v14);
      }

      ++v10;
      ++v12;
      if (!--v11)
      {
        v15 = sqrtf(a6 / v9);
        v16 = (result + 4 * a3);
        for (i = (a2 + a3); i < v7 && i >= a2; ++i)
        {
          if (*i)
          {
            if (v16 < result || (v16 + 1) > v8 || v16 > v16 + 1)
            {
              goto LABEL_21;
            }

            *v16 = v15 * *v16;
          }

          ++v16;
          if (!--v6)
          {
            return result;
          }
        }

        break;
      }
    }

LABEL_21:
    __break(0x5519u);
  }

  return result;
}

uint64_t IGF_calcSfbEnergy(uint64_t result, int a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  if (result < a2)
  {
    v7 = result;
    while (1)
    {
      v8 = (a7 + 4 * v7);
      v9 = v8 + 1;
      v10 = v8 < a7 || v9 > a7 + 4 * a2;
      if (v10 || v8 >= v9)
      {
        break;
      }

      *v8 = 0.0;
      v12 = (a3 + 4 * v7);
      if (v12 < a3)
      {
        break;
      }

      if ((v12 + 1) > a4)
      {
        break;
      }

      if (v12 > v12 + 1)
      {
        break;
      }

      ++v7;
      v13 = (a3 + 4 * v7);
      if (v13 < a3 || (v13 + 1) > a4 || v13 > v13 + 1)
      {
        break;
      }

      v14 = *v12;
      v15 = *v13;
      if (v14 > *v13)
      {
        v15 = v14;
      }

      if (v14 < *v13)
      {
        v16 = v15 - v14;
        v17 = (a5 + 4 * v14);
        v18 = 0.0;
        while (v17 >= a5 && (v17 + 1) <= a6 && v17 <= v17 + 1)
        {
          v19 = *v17++;
          v18 = v19 + v18;
          *v8 = v18;
          if (!--v16)
          {
            goto LABEL_24;
          }
        }

        break;
      }

LABEL_24:
      if (v7 == a2)
      {
        return result;
      }
    }

    __break(0x5519u);
  }

  return result;
}

uint64_t SetParameters(unsigned int *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, _DWORD *a6)
{
  v10 = 0;
  v11 = (a1 + 2);
  v12 = a1 + 162;
  v14 = *a1;
  result = (a1 + 18);
  v29 = v14;
  v27 = result;
  while (v29 < 1)
  {
LABEL_25:
    v10 = (v10 + 1);
    if (v10 == a2)
    {
      return result;
    }
  }

  v15 = v27;
  v16 = v29;
  while (1)
  {
    v17 = *a5;
    v18 = *(a5 + 8);
    v19 = *a5 + 4;
    *a5 = v19;
    v20 = v19 < v17 || v19 > v18;
    if (v20 || v15 > v12 || v11 > v15 - 64)
    {
      break;
    }

    if (*(v15 - 48))
    {
      v21 = 0;
    }

    else
    {
      v21 = *(v15 - 24) == 0;
    }

    v22 = (v21 + *v17);
    result = (*(v15 - 32))(a3, a4, v10, v22);
    ++*a6;
    if (v22 >= 1 && *(v15 - 8) != 0)
    {
      if (result)
      {
        v25 = v23;
      }

      else
      {
        v25 = a4;
      }

      if (result)
      {
        v26 = result;
      }

      else
      {
        v26 = a3;
      }

      result = SetParameters(*(v15 - 8), v22, v26, v25, a5, a6);
    }

    v15 += 64;
    if (!--v16)
    {
      goto LABEL_25;
    }
  }

  __break(0x5519u);
  return result;
}

float Es_pred_dec(_DWORD *a1, int a2, int a3, int a4)
{
  v4 = a2;
  if (!a4)
  {
    goto LABEL_12;
  }

  v4 = &Es_pred_qua_4b_no_ltp + 4 * a2;
  v5 = v4 + 4;
  v6 = v4 >= &Es_pred_qua_4b_no_ltp;
  v7 = &t_qua_gain6b;
LABEL_3:
  if (!v6 || v5 > v7 || v4 > v5)
  {
    while (1)
    {
      while (1)
      {
        __break(0x5519u);
LABEL_12:
        if (a3 == 3)
        {
          v4 = &Es_pred_qua_3b + 4 * v4;
          v5 = v4 + 4;
          v6 = v4 >= &Es_pred_qua_3b;
          v7 = &Es_pred_qua_4b_no_ltp;
          goto LABEL_3;
        }

        if (a3 == 4)
        {
          break;
        }

        v4 = &Es_pred_qua_5b + 4 * v4;
        if (v4 >= &Es_pred_qua_5b)
        {
          v10 = v4 + 4;
          v11 = &Es_pred_qua_4b;
          goto LABEL_18;
        }
      }

      v4 = &Es_pred_qua_4b + 4 * v4;
      if (v4 >= &Es_pred_qua_4b)
      {
        v10 = v4 + 4;
        v11 = &Es_pred_qua_3b;
LABEL_18:
        if (v10 <= v11 && v4 <= v10)
        {
          break;
        }
      }
    }
  }

  result = *v4;
  *a1 = *v4;
  return result;
}

void decod_nelp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, float *a9, unint64_t a10, __int16 a11, float *a12, unint64_t a13)
{
  v13 = MEMORY[0x1EEE9AC00](a1);
  v62 = v14;
  v63 = v15;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v24 = v13;
  v72[0] = *MEMORY[0x1E69E9840];
  memset(__b, 255, sizeof(__b));
  *v21 = 0;
  if (a13 < a12 || (a13 - a12) <= 16)
  {
    goto LABEL_81;
  }

  v26 = (v24 + 34720);
  v28 = *v19;
  v27 = v19[1];
  v29 = v19[2];
  v30 = *(v24 + 34720);
  if (v30 == 1)
  {
    if (*(v24 + 5242) == *(v24 + 72406))
    {
      v30 = 1;
      v31 = 1;
    }

    else
    {
      v30 = 0;
      v31 = 0;
      *v26 = 0;
    }
  }

  else
  {
    v31 = 0;
  }

  if (v23 != 1)
  {
    goto LABEL_18;
  }

  if (*(v24 + 5242))
  {
    if (*(v24 + 5242) > 2u)
    {
      goto LABEL_18;
    }

    if (v31)
    {
      goto LABEL_20;
    }

    v32 = 8;
    v33 = 35736;
  }

  else
  {
    if (v31)
    {
      goto LABEL_20;
    }

    v32 = 14;
    v33 = 35672;
  }

  __A[0] = 0.0;
  vDSP_vfill(__A, (v24 + v33), 1, v32);
  v30 = *v26;
LABEL_18:
  if (v30 != 1)
  {
    __A[0] = 0.0;
    vDSP_vfill(__A, (v24 + 35776), 1, 0x14uLL);
    __A[0] = 0.0;
    vDSP_vfill(__A, (v24 + 35864), 1, 0x14uLL);
    __A[0] = 0.0;
    vDSP_vfill(__A, (v24 + 35952), 1, 0x14uLL);
  }

LABEL_20:
  memset(__A, 255, sizeof(__A));
  memset(v70, 255, sizeof(v70));
  *&v34 = -1;
  *(&v34 + 1) = -1;
  __C[0] = v34;
  __C[1] = v34;
  v69 = -1;
  memset(__Y, 255, sizeof(__Y));
  v66 = 0xAAAAAAAAAAAAAAAALL;
  if (a11)
  {
    v35 = (v28 - 4);
    v36 = 0.001;
    v37 = 64;
    do
    {
      v38 = (v35 + 1) > v27 || v35 >= v35 + 1;
      if (v38 || v35 < v29)
      {
        goto LABEL_81;
      }

      v40 = *v35--;
      v36 = v36 + (v40 * v40);
      --v37;
    }

    while (v37);
    v64 = sqrtf(v36 * 0.015625) * 0.8;
    vDSP_vfill(&v64, __C, 1, 0xAuLL);
    v61 = 0;
  }

  else
  {
    if (*(v24 + 36080) == 7 && *(v24 + 36082))
    {
      next_indice = *(v24 + 36100);
      LODWORD(v66) = *(v24 + 36102);
      v42 = *(v24 + 36104);
    }

    else
    {
      next_indice = get_next_indice(v24, 5);
      LODWORD(v66) = get_next_indice(v24, 6);
      v42 = get_next_indice(v24, 6);
    }

    HIDWORD(v66) = v42;
    if (v23 == 1 && *(v24 + 5242) - 1 <= 1)
    {
      if (*(v24 + 36080) == 7 && *(v24 + 36082))
      {
        v61 = *(v24 + 36098);
      }

      else
      {
        v61 = get_next_indice(v24, 2);
      }
    }

    else
    {
      v61 = 0;
    }

    dequantize_uvg(next_indice, &v66, __Y, __C, v70, *(v24 + 5242));
  }

  if (v23 == 1 && *(v24 + 5242) - 1 < 2)
  {
    v43 = 1.16;
  }

  else
  {
    v43 = 1.37;
  }

  if (v24 + 36040 > (v24 + 36042))
  {
LABEL_81:
    __break(0x5519u);
  }

  v44 = (v24 + 21164);
  generate_nelp_excitation((v24 + 36040), __C, v70, __A, v72, v43);
  if (v23 == 1)
  {
    v45 = *(v24 + 5242);
    if ((v45 - 1) <= 1)
    {
      vDSP_biquad(*(v24 + 35768), (v24 + 35736), __A, 2, __Y, 2, 0x80uLL);
      vDSP_biquad(*(v24 + 35768), (v24 + 35752), &__A[1], 2, &__Y[1], 2, 0x80uLL);
      memcpy(__A, __Y, sizeof(__A));
      v45 = *(v24 + 5242);
    }

    if (!v45)
    {
      vDSP_biquad(*(v24 + 35728), (v24 + 35672), __A, 1, __Y, 1, 0x100uLL);
      memcpy(__A, __Y, sizeof(__A));
    }
  }

  v46 = 0;
  v47 = 0.001;
  do
  {
    v48 = vmulq_f32(*&__A[v46], *&__A[v46]);
    v47 = (((v47 + v48.f32[0]) + v48.f32[1]) + v48.f32[2]) + v48.f32[3];
    v46 += 4;
  }

  while (v46 != 256);
  if (v23 == 1 && *(v24 + 5242) - 1 <= 1)
  {
    vDSP_biquad(*(v24 + 35856), (v24 + 35776), __A, 1, __Y, 1, 0x100uLL);
    memcpy(__A, __Y, sizeof(__A));
    if (v61 == 2)
    {
      vDSP_biquad(*(v24 + 35944), (v24 + 35864), __A, 1, v70, 1, 0x100uLL);
      v49 = 35952;
      v50 = *(v24 + 36032);
    }

    else
    {
      if (v61 != 1)
      {
        vDSP_biquad(*(v24 + 35944), (v24 + 35864), __A, 1, v70, 1, 0x100uLL);
        vDSP_biquad(*(v24 + 36032), (v24 + 35952), __A, 1, v70, 1, 0x100uLL);
LABEL_63:
        v51 = 0;
        v52 = 0.001;
        do
        {
          v53 = vmulq_f32(*&__A[v51], *&__A[v51]);
          v52 = (((v52 + v53.f32[0]) + v53.f32[1]) + v53.f32[2]) + v53.f32[3];
          v51 += 4;
        }

        while (v51 != 256);
        v54 = 0;
        v55 = sqrtf(v47 / v52);
        do
        {
          *&__A[v54] = vmulq_n_f32(*&__A[v54], v55);
          v54 += 4;
        }

        while (v54 != 256);
        goto LABEL_67;
      }

      vDSP_biquad(*(v24 + 36032), (v24 + 35952), __A, 1, v70, 1, 0x100uLL);
      v49 = 35864;
      v50 = *(v24 + 35944);
    }

    vDSP_biquad(v50, (v24 + v49), __A, 1, __Y, 1, 0x100uLL);
    memcpy(__A, __Y, sizeof(__A));
    goto LABEL_63;
  }

LABEL_67:
  memcpy(__b, __A, sizeof(__b));
  v64 = 0.0;
  vDSP_vfill(&v64, a12, 1, 5uLL);
  v56 = *v19;
  if (*v19 < v19[2])
  {
    goto LABEL_81;
  }

  v57 = v19[1];
  v38 = v57 >= v56;
  v58 = v57 - v56;
  if (!v38)
  {
    goto LABEL_81;
  }

  if (v58 <= 0x3FF)
  {
    goto LABEL_81;
  }

  memcpy(*v19, __b, 0x400uLL);
  if (v56 + 1024 < v56)
  {
    goto LABEL_81;
  }

  memcpy(v17, __b, 0x400uLL);
  if (v17 + 1024 < v17)
  {
    goto LABEL_81;
  }

  *v44 = 0;
  __A[0] = 0.0;
  vDSP_vfill(__A, (v24 + 36060), 1, 5uLL);
  *(v24 + 36052) = *v44;
  *(v24 + 23800) = 0;
  *(v24 + 36048) = 0;
  v59 = (v24 + 23808);
  *(v24 + 23808) = 0;
  v60 = 4;
  do
  {
    if (v59 < v24 + 23800 || v59 >= v59 + 1 || (v59 + 2) > v24 + 23832 || v59 + 1 > v59 + 2)
    {
      goto LABEL_81;
    }

    v59[1] = *v59;
    ++v59;
    --v60;
  }

  while (v60);
  __A[0] = 64.0;
  vDSP_vfill(__A, v62, 1, 4uLL);
  interp_code_5over2(v17, (v17 + 1024), a9, a10, 256);
  __A[0] = 0.0;
  vDSP_vfill(__A, v63, 1, 5uLL);
}

unint64_t lp_filt_exc_dec(uint64_t a1, int a2, uint64_t a3, int a4, unsigned __int16 a5, int a6, int a7, unsigned __int16 a8, uint64_t *a9)
{
  LODWORD(v11) = a6;
  v58 = *MEMORY[0x1E69E9840];
  result = memset(__b, 255, sizeof(__b));
  if (a2 == 1)
  {
    if (a4)
    {
      v18 = 0;
    }

    else
    {
      v18 = a5 - 3 >= 2;
    }

    v19 = !v18;
    if (a3 > 11599 || (v19 & 1) == 0)
    {
      goto LABEL_80;
    }

LABEL_10:
    v20 = 0;
    v22 = *a9;
    v21 = a9[1];
    v23 = a9[2];
    v24 = v11;
    v25 = *a9 + 4 * v11;
    do
    {
      v26 = (v25 + v20);
      v27 = (v25 + v20 - 4);
      v29 = v25 + v20 <= v21 && v27 <= v26 && v27 >= v23;
      result = (v26 + 1);
      v31 = !v29 || result > v21 || v26 > result;
      v32 = v26 + 2;
      v34 = v31 || v32 > v21 || result > v32;
      v35 = (__b + v20);
      v36 = (__b + v20 + 4);
      if (v34 || v35 < __b || v36 > &v58 || v35 > v36)
      {
        goto LABEL_79;
      }

      *(__b + v20) = ((*v26 * 0.64) + (*v27 * 0.18)) + (*result * 0.18);
      v20 += 4;
    }

    while (v20 != 256);
LABEL_74:
    v11 = v22 + 4 * v24;
    if (v11 < v23 || (v18 = v21 >= v11, v56 = v21 - v11, !v18) || v56 <= 0xFF || (result = memmove((v22 + 4 * v24), __b, 0x100uLL), v11 + 256 < v11))
    {
LABEL_79:
      while (1)
      {
        __break(0x5519u);
LABEL_80:
        if (a3 < 11600)
        {
          break;
        }

        result = get_next_indice(a1, 1);
        if (result)
        {
          break;
        }

LABEL_42:
        if (a2 != 2 || a7 != 320)
        {
          goto LABEL_10;
        }

        v40 = 0;
        v22 = *a9;
        v21 = a9[1];
        v23 = a9[2];
        v24 = v11;
        v41 = *a9 + 4 * v11;
        while (1)
        {
          v42 = (v41 + v40);
          v43 = (v41 + v40 - 4);
          v44 = v41 + v40 > v21 || v43 > v42;
          v45 = !v44 && v43 >= v23;
          result = (v42 + 1);
          v46 = !v45 || result > v21;
          v47 = v46 || v42 > result;
          v48 = v42 + 2;
          v49 = v47 || v48 > v21;
          v50 = v49 || result > v48;
          v51 = (__b + v40);
          v52 = (__b + v40 + 4);
          v53 = !v50 && v51 >= __b;
          v54 = !v53 || v52 > &v58;
          if (v54 || v51 > v52)
          {
            break;
          }

          *(__b + v40) = ((*v42 * 0.58) + (*v43 * 0.21)) + (*result * 0.21);
          v40 += 4;
          if (v40 == 256)
          {
            goto LABEL_74;
          }
        }
      }
    }
  }

  else
  {
    result = a8;
    if (!a8)
    {
      goto LABEL_42;
    }
  }

  return result;
}

void D_ACELP_indexing(float *__C, unint64_t a2, _DWORD *a3, int *a4, unint64_t a5, _WORD *a6)
{
  v178 = *MEMORY[0x1E69E9840];
  v171.i64[0] = 0xAAAAAAAAAAAAAAAALL;
  v171.i64[1] = 0xAAAAAAAAAAAAAAAALL;
  *&v10 = 0xAAAAAAAAAAAAAAAALL;
  *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v169 = v10;
  v170 = v10;
  v165 = 0;
  v166 = 0;
  v167 = 0;
  v11 = *a3 + 15;
  v12 = (v11 >> 4);
  v13 = a3[3];
  if (v12 >= 1)
  {
    v14 = a4;
    v15 = &v165;
    v16 = (v11 >> 4);
    do
    {
      if (v14 < a4 || (v14 + 1) > a5 || v14 > v14 + 1 || v15 < &v165 || v15 + 2 > v168 || v15 > (v15 + 2))
      {
        goto LABEL_278;
      }

      v17 = *v14++;
      *v15 = v17;
      v15 = (v15 + 2);
      --v16;
    }

    while (v16);
  }

  v18 = v13 & 3;
  if ((v13 & 3) != 0)
  {
    v19 = a3[18];
    if (v19 > 2)
    {
      switch(v19)
      {
        case 3:
          if (v12 > 9)
          {
            goto LABEL_278;
          }

          v35 = v165;
          v36 = v165 & 3;
          longshiftright(&v165, &v165, v11 >> 4, v11 >> 4);
          v37 = a3[3] >> 2;
          v38 = 4;
          v39 = &v171;
          do
          {
            v40 = v39->u64 + 4;
            if (v39 < &v171 || v40 > v172 || v39 > v40)
            {
              goto LABEL_278;
            }

            v39->i32[0] = v37;
            v39 = (v39 + 4);
            --v38;
          }

          while (v38);
          ++*(&v171 | (4 * v36));
          v27 = (&v171 | (4 * ((v35 + 1) & 3)));
          break;
        case 4:
          if (v12 > 9)
          {
            goto LABEL_278;
          }

          v43 = v165 & 3;
          longshiftright(&v165, &v165, v11 >> 4, v11 >> 4);
          v44 = a3[3] >> 2;
          v45 = 4;
          v46 = &v171;
          do
          {
            v47 = v46->u64 + 4;
            if (v46 < &v171 || v47 > v172 || v46 > v47)
            {
              goto LABEL_278;
            }

            v46->i32[0] = v44;
            v46 = (v46 + 4);
            --v45;
          }

          while (v45);
          v27 = (&v171 | (4 * v43));
          break;
        case 6:
          if (v12 > 9)
          {
            goto LABEL_278;
          }

          v20 = v165 & 3;
          longshiftright(&v165, &v165, v11 >> 4, v11 >> 4);
          v21 = (a3[3] >> 2) + 1;
          v22 = 4;
          v23 = &v171;
          do
          {
            v24 = v23->u64 + 4;
            if (v23 < &v171 || v24 > v172 || v23 > v24)
            {
              goto LABEL_278;
            }

            v23->i32[0] = v21;
            v23 = (v23 + 4);
            --v22;
          }

          while (v22);
          v27 = (&v171 | (4 * v20));
          v28 = *v27 - 1;
          goto LABEL_62;
        default:
          goto LABEL_74;
      }

      v28 = *v27 + 1;
LABEL_62:
      *v27 = v28;
      goto LABEL_74;
    }

    if (v19)
    {
      if (v19 == 1)
      {
        v171.i64[0] = ((v13 + 1) >> 1);
        v171.i64[1] = (v13 >> 1);
      }
    }

    else
    {
      v50 = v13 / 4;
      v51 = 4;
      v52 = &v171;
      do
      {
        v53 = v52->u64 + 4;
        if (v52 < &v171 || v53 > v172 || v52 > v53)
        {
          goto LABEL_278;
        }

        v52->i32[0] = v50;
        v52 = (v52 + 4);
        --v51;
      }

      while (v51);
      v56 = &v171;
      do
      {
        ++v56->i32[0];
        v56 = (v56 + 4);
        --v18;
      }

      while (v18);
    }
  }

  else
  {
    v29 = v13 >> 2;
    v30 = 4;
    v31 = &v171;
    do
    {
      v32 = v31->u64 + 4;
      if (v31 < &v171 || v32 > v172 || v31 > v32)
      {
        goto LABEL_278;
      }

      v31->i32[0] = v29;
      v31 = (v31 + 4);
      --v30;
    }

    while (v30);
  }

LABEL_74:
  if (*a3 == 43)
  {
    if (a2 >= __C && (a2 - __C) > 252)
    {
      memset(v172, 0, sizeof(v172));
      LODWORD(__A) = 0;
      vDSP_vfill(&__A, __C, 1, 0x40uLL);
      v57 = v165;
      v58 = BYTE2(v165);
      v59 = (WORD1(v165) | (WORD2(v165) << 16)) >> 2;
      v60 = v59 <= 3611647 ? (WORD1(v165) | (WORD2(v165) << 16)) >> 2 : v59 - 3611648;
      *&__A = v172;
      *(&__A + 1) = v173;
      *v175 = v172;
      fcb_decode_PI(v60 / 5472, &__A);
      if (v171.i16[0] <= 7 && (v171.i16[0] & 0x8000) == 0)
      {
        add_pulses(v172, v171.i16[0], 0, __C, (__C + 64));
        *&__A = v172;
        *(&__A + 1) = v173;
        *v175 = v172;
        fcb_decode_PI(v60 % 5472, &__A);
        if (v171.i16[2] <= 7 && (v171.i16[2] & 0x8000) == 0)
        {
          add_pulses(v172, v171.i16[2], 1, __C, (__C + 64));
          dec_2p_2N1((v57 >> 9) & 0xFFFFFFFFFFFFFE7FLL | ((v58 & 3) << 7), 4, 0, v172, v173);
          if (v171.i16[4] <= 7 && (v171.i16[4] & 0x8000) == 0)
          {
            add_pulses(v172, v171.i16[4], 2, __C, (__C + 64));
            dec_2p_2N1(v57 & 0x1FF, 4, 0, v172, v173);
            if (v171.i16[6] <= 7 && (v171.i16[6] & 0x8000) == 0)
            {
              add_pulses(v172, v171.i16[6], 3, __C, (__C + 64));
              return;
            }
          }
        }
      }
    }

    goto LABEL_278;
  }

  if (v12 > 9)
  {
    goto LABEL_278;
  }

  __A = xmmword_19B0B3130;
  *&v175[4] = 0x300000005;
  v177 = 0x800000008;
  v61 = vaddvq_s32(vshrq_n_s32(v171, 2uLL));
  v62 = vaddvq_s32(vshrq_n_s32(v171, 1uLL));
  v63 = vaddvq_s32(vshrq_n_s32(v171, 3uLL));
  if (v61 < 4)
  {
    v64 = 1;
  }

  else
  {
    v64 = 9;
  }

  *v175 = v64;
  if (v63 <= 0)
  {
    v65 = 1;
  }

  else
  {
    v65 = 9;
  }

  v176 = v65;
  if (v62 >= 4)
  {
    if (v61 > 3)
    {
      if (v63 <= 0)
      {
        if (v12 < 5)
        {
          v67 = 0;
        }

        else
        {
          v67 = 0;
          v106 = &v165 + v12;
          v107 = v12 + 1;
          v108 = (v106 - 1);
          do
          {
            v109 = (v108 + 2);
            if (v108 < &v165 || v109 > v106 || v108 > v109)
            {
              goto LABEL_278;
            }

            v112 = *v108;
            v108 -= 2;
            v67 = v112 | (v67 << 16);
            --v107;
          }

          while (v107 > 5);
        }

        v159 = 0;
        v160 = &v165;
        do
        {
          v161 = v160 + 1;
          if (v160 < &v165 || v161 > &v165 + v12 || v160 > v161)
          {
            goto LABEL_278;
          }

          v164 = *v160++;
          *(&v169 + v159) = v164;
          v159 += 8;
        }

        while (v159 != 32);
        goto LABEL_179;
      }

      if (v12 < 7)
      {
        v67 = 0;
      }

      else
      {
        v67 = 0;
        v98 = &v165 + v12;
        v99 = v12 + 1;
        v100 = (v98 - 1);
        do
        {
          v101 = (v100 + 2);
          if (v100 < &v165 || v101 > v98 || v100 > v101)
          {
            goto LABEL_278;
          }

          v104 = *v100;
          v100 -= 2;
          v67 = v104 | (v67 << 16);
          --v99;
        }

        while (v99 > 7);
      }

      if (v12 < 6)
      {
        goto LABEL_278;
      }

      *(&v170 + 1) = (v166 >> 8) | (WORD1(v166) << 8);
      *(&v169 + 1) = (WORD1(v165) >> 8) | (WORD2(v165) << 8);
      *&v170 = HIWORD(v165) | (v166 << 16);
      v105 = v165 | (BYTE2(v165) << 16);
    }

    else
    {
      if (v12 < 3)
      {
        v67 = 0;
      }

      else
      {
        v67 = 0;
        v68 = &v165 + v12;
        v69 = v12 + 1;
        v70 = (v68 - 1);
        do
        {
          v71 = (v70 + 2);
          if (v70 < &v165 || v71 > v68 || v70 > v71)
          {
            goto LABEL_278;
          }

          v74 = *v70;
          v70 -= 2;
          v67 = v74 | (v67 << 16);
          --v69;
        }

        while (v69 > 3);
      }

      if (v12 < 2)
      {
        goto LABEL_278;
      }

      *(&v170 + 1) = BYTE2(v165);
      *(&v169 + 1) = v165;
      *&v170 = WORD1(v165) >> 8;
      v105 = v165 >> 8;
    }

    *&v169 = v105;
LABEL_179:
    v113 = &v175[4 * v171.i32[3] - 16];
    if (v113 < &__A)
    {
      goto LABEL_278;
    }

    if (v113 + 4 > &v178 || v113 > (v113 + 4))
    {
      goto LABEL_278;
    }

    v115 = &low_len[v171.i32[3]];
    if (v115 < low_len || v115 + 1 > indx_fact || v115 > v115 + 1)
    {
      goto LABEL_278;
    }

    v116 = (*(&v170 + 1) >> *v115) + (v67 << *v113);
    v117 = 4;
    do
    {
      v118 = (v117 - 1);
      v119 = (v117 - 2);
      v120 = &v171.i32[v119];
      v121 = v120 + 1;
      v123 = v120 < &v171 || v121 > v172 || v120 > v121;
      v124 = &v171.i32[v118];
      if (v123 || v124 < &v171)
      {
        goto LABEL_278;
      }

      v126 = *v120;
      v127 = &v175[4 * v126 - 16];
      v128 = (v127 + 4);
      v129 = v127 < &__A || v128 > &v178;
      if (v129 || v127 > v128)
      {
        goto LABEL_278;
      }

      v131 = (&v169 + 8 * v119);
      if (v131 < &v169)
      {
        goto LABEL_278;
      }

      if (v131 + 8 > &v171)
      {
        goto LABEL_278;
      }

      if (v131 > (v131 + 8))
      {
        goto LABEL_278;
      }

      v132 = &low_len[v126];
      if (v132 < low_len)
      {
        goto LABEL_278;
      }

      if (v132 + 1 > indx_fact)
      {
        goto LABEL_278;
      }

      if (v132 > v132 + 1)
      {
        goto LABEL_278;
      }

      v133 = *v124;
      v134 = &indx_fact[v133];
      if (v134 < indx_fact)
      {
        goto LABEL_278;
      }

      if (v134 + 1 > low_mask)
      {
        goto LABEL_278;
      }

      if (v134 > v134 + 1)
      {
        goto LABEL_278;
      }

      v135 = (&v169 + 8 * v118);
      if (v135 < &v169)
      {
        goto LABEL_278;
      }

      v136 = &low_mask[v133];
      if (v136 < low_mask)
      {
        goto LABEL_278;
      }

      if (v136 + 1 > index_len)
      {
        goto LABEL_278;
      }

      if (v136 > v136 + 1)
      {
        goto LABEL_278;
      }

      v137 = &low_len[v133];
      if (v137 < low_len || v137 + 1 > indx_fact || v137 > v137 + 1)
      {
        goto LABEL_278;
      }

      v138 = (*v131 >> *v132) + (v116 << *v127);
      v139 = *v134;
      *v135 = (*v135 & *v136) + ((v138 % v139) << *v137);
      v116 = (v138 / v139);
      v117 = v118;
    }

    while (v118 > 1);
    v140 = &low_mask[v171.i32[0]];
    if (v140 < low_mask)
    {
      goto LABEL_278;
    }

    if (v140 + 1 > index_len)
    {
      goto LABEL_278;
    }

    if (v140 > v140 + 1)
    {
      goto LABEL_278;
    }

    v141 = &low_len[v171.i32[0]];
    if (v141 < low_len || v141 + 1 > indx_fact || v141 > v141 + 1)
    {
      goto LABEL_278;
    }

    v66 = (v116 << *v141) + (v169 & *v140);
    goto LABEL_230;
  }

  if (v11 >= 0x10)
  {
    v66 = 0;
    v75 = &v165 + v12;
    v76 = v12 + 1;
    v77 = (v75 - 1);
    do
    {
      v78 = (v77 + 2);
      if (v77 < &v165 || v78 > v75 || v77 > v78)
      {
        goto LABEL_278;
      }

      v81 = *v77;
      v77 -= 2;
      v66 = v81 | (v66 << 16);
      --v76;
    }

    while (v76 > 1);
  }

  else
  {
    v66 = 0;
  }

  LODWORD(v82) = 4;
  do
  {
    v82 = (v82 - 1);
    v83 = &v171.i32[v82];
    v84 = v83 + 1;
    if (v83 < &v171 || v84 > v172 || v83 > v84)
    {
      goto LABEL_278;
    }

    v87 = *v83;
    v88 = &index_mask_ACELP + 4 * v87;
    v89 = v88 + 4;
    v90 = v88 < &index_mask_ACELP || v89 > &norm_order_48;
    v91 = v90 || v88 > v89;
    v92 = (&v169 + 8 * v82);
    v93 = &v92->u64[1];
    v94 = !v91 && v92 >= &v169;
    v95 = !v94 || v93 > &v171;
    if (v95 || v92 > v93)
    {
      goto LABEL_278;
    }

    v92->i64[0] = v66 & *(&index_mask_ACELP + v87);
    v97 = &index_len[4 * v87];
    if (v97 < index_len || v97 + 4 > &dword_19B37A014 || v97 > v97 + 4)
    {
      goto LABEL_278;
    }

    v66 >>= *v97;
  }

  while (v82 > 1);
LABEL_230:
  *&v169 = v66;
  v142 = 3;
  do
  {
    v143 = &v171.i32[v142];
    v144 = v143 + 1;
    if (v143 < &v171 || v144 > v172 || v143 > v144)
    {
      goto LABEL_278;
    }

    v147 = *v143;
    if (!*v143)
    {
      v150 = &__C[v142];
      v151 = v142;
      while (v150 >= __C && (v150 + 1) <= a2 && v150 <= v150 + 1)
      {
        *v150 = 0.0;
        v150 += 4;
        v151 += 4;
        if (v151 >= 64)
        {
          goto LABEL_249;
        }
      }

      goto LABEL_278;
    }

    v148 = &v169 + v142;
    if (v148 < &v169)
    {
      goto LABEL_278;
    }

    if (v148 + 1 > &v171)
    {
      goto LABEL_278;
    }

    if (v148 > v148 + 1)
    {
      goto LABEL_278;
    }

    v149 = &__C[v142];
    if (v149 < __C)
    {
      goto LABEL_278;
    }

    D_ACELP_decode_arithtrack(v149, a2, *v148, v147);
LABEL_249:
    v94 = v142-- != 0;
  }

  while (v142 != 0 && v94);
  v152 = &pulsestostates[8 * v171.i32[0]];
  v153 = v152 + 1144;
  v154 = v152 + 1152;
  if (v153 < pulsestostates || v154 > bwd_start_bin || v153 > v154)
  {
    goto LABEL_278;
  }

  if (v169 < *v153)
  {
    if (v171.i32[0])
    {
      D_ACELP_decode_arithtrack(__C, a2, v169, v171.i32[0]);
      return;
    }

    v157 = -4;
    for (i = __C; i >= __C && (i + 1) <= a2 && i <= i + 1; i += 4)
    {
      *i = 0.0;
      v157 += 4;
      if (v157 >= 0x3C)
      {
        return;
      }
    }

LABEL_278:
    __break(0x5519u);
  }

  LODWORD(__A) = 0;
  vDSP_vfill(&__A, __C, 1, 0x40uLL);
  *a6 = 1;
}