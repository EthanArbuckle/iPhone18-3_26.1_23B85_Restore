unsigned __int8 *vt_Copy_xf422_TRC_Mat_TRC_l10r_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, float a5)
{
  v7 = *result;
  v8 = *(result + 13);
  v9 = v8 * a2 / v7;
  v10 = (v8 + v8 * a2) / v7 - v9;
  if (v10 >= 1)
  {
    v11 = 0;
    v12 = *(result + 19);
    v13 = *(result + 24) & 0xFFFFFFFE;
    v14 = *(result + 7);
    v15 = *(result + 8);
    v16 = *v15;
    v17 = v15[1];
    v18 = v15[2];
    v19 = **(result + 17);
    *&v20 = *(v12 + 128);
    v21 = 8191.0 / *&v20;
    LOWORD(v20) = *(v12 + 140);
    v22 = v20;
    LOWORD(a5) = *(v12 + 142);
    v23 = LODWORD(a5);
    v24 = v21 * *v12;
    v25 = v21 * *(v12 + 8);
    v26 = v21 * *(v12 + 16);
    v27 = v21 * *(v12 + 20);
    v28 = *(v12 + 28);
    v29 = v21 * v28;
    LOWORD(v28) = *(v12 + 144);
    v30 = LODWORD(v28);
    v31 = *(v12 + 72);
    v32 = *(v12 + 76);
    v33 = *(v12 + 80);
    v34 = *(v12 + 84);
    v35 = *(v12 + 88);
    v36 = *(v12 + 92);
    v37 = *(v12 + 96);
    v38 = *(v12 + 100);
    v39 = *(v12 + 104);
    v40 = v12 + 164;
    v41 = v12 + 16548;
    v42 = v9 + *(result + 15);
    v43 = *(result + 28) * a2 / v7 + *(result + 44);
    v44 = *(v12 + 124);
    v45 = *(result + 36);
    if (v44 >= 0x11)
    {
      v46 = 0;
    }

    else
    {
      v46 = 16 - v44;
    }

    v47 = **(result + 16) + v19 * v42 + 16 * *(result + 14);
    v48 = v14[2];
    if (v48)
    {
      v49 = v48 + v43 * v18 + 2 * v45;
    }

    else
    {
      v49 = 0;
    }

    v51 = *v14;
    v50 = *(*(result + 7) + 8);
    _ZF = v50 == 0;
    v53 = v50 + v43 * v17 + 2 * v45;
    if (_ZF)
    {
      v53 = 0;
    }

    v54 = v51 + v43 * v16 + 2 * v45;
    v55 = v46;
    do
    {
      if (v13 >= 1)
      {
        v56 = 0;
        v57 = v54;
        v58 = v47;
        v59 = v49;
        do
        {
          v60 = (v53 + 2 * v56);
          v61 = (v60[1] >> v55) - v23;
          v62 = v25 * v61;
          v63 = v24 * ((*v57 >> v55) - v22);
          v64 = (v25 * v61) + v63;
          v65 = 8191.0;
          if (v64 <= 8191.0)
          {
            v65 = (v25 * v61) + v63;
            if (v64 < 0.0)
            {
              v65 = 0.0;
            }
          }

          v66 = (*v60 >> v55) - v23;
          v67 = (v27 * v61) + (v66 * v26);
          v68 = 8191.0;
          if ((v63 + v67) <= 8191.0)
          {
            v68 = v63 + v67;
            if ((v63 + v67) < 0.0)
            {
              v68 = 0.0;
            }
          }

          *&v6 = v29 * v66;
          v69 = *&v6 + v63;
          v70 = (*&v6 + v63) <= 8191.0;
          v71 = 8191.0;
          if (v70)
          {
            v71 = v69;
            if (v69 < 0.0)
            {
              v71 = 0.0;
            }
          }

          v72 = v24 * ((v57[1] >> v55) - v22);
          v73 = v62 + v72;
          v70 = (v62 + v72) <= 8191.0;
          v74 = 8191.0;
          if (v70)
          {
            v74 = v73;
            if (v73 < 0.0)
            {
              v74 = 0.0;
            }
          }

          v75 = v67 + v72;
          v76 = 8191.0;
          if (v75 <= 8191.0)
          {
            v76 = v75;
            if (v75 < 0.0)
            {
              v76 = 0.0;
            }
          }

          *&v5 = *&v6 + v72;
          v70 = (*&v6 + v72) <= 8191.0;
          v77 = 8191.0;
          if (v70)
          {
            v77 = *&v5;
            if (*&v5 < 0.0)
            {
              v77 = 0.0;
            }
          }

          if (v59)
          {
            LOWORD(v5) = *v59;
            LOWORD(v6) = v59[1];
            v59 += 2;
            v5 = *&v5 * 3.0;
            v6 = *&v6 * 3.0;
          }

          else
          {
            v5 = 0.0;
            v6 = 0.0;
          }

          _H29 = *(v40 + 2 * llroundf(fminf(fmaxf(v65, 0.0), 8191.0)));
          _H30 = *(v40 + 2 * llroundf(fminf(fmaxf(v68, 0.0), 8191.0)));
          __asm
          {
            FCVT            S29, H29
            FCVT            S30, H30
          }

          _H31 = *(v40 + 2 * llroundf(fminf(fmaxf(v71, 0.0), 8191.0)));
          __asm { FCVT            S31, H31 }

          _H8 = *(v40 + 2 * llroundf(fminf(fmaxf(v74, 0.0), 8191.0)));
          __asm { FCVT            S8, H8 }

          _H11 = *(v40 + 2 * llroundf(fminf(fmaxf(v76, 0.0), 8191.0)));
          __asm { FCVT            S11, H11 }

          _H12 = *(v40 + 2 * llroundf(fminf(fmaxf(v77, 0.0), 8191.0)));
          __asm { FCVT            S12, H12 }

          v93 = ((v32 * _S30) + (_S29 * v31)) + (_S31 * v33);
          v94 = ((v35 * _S30) + (_S29 * v34)) + (_S31 * v36);
          v95 = ((v38 * _S30) + (_S29 * v37)) + (_S31 * v39);
          v96 = ((v32 * _S11) + (_S8 * v31)) + (_S12 * v33);
          v97 = ((v35 * _S11) + (_S8 * v34)) + (_S12 * v36);
          v98 = ((v38 * _S11) + (_S8 * v37)) + (_S12 * v39);
          _H11 = *(v41 + 2 * llroundf(fminf(fmaxf(v93, 0.0), 8191.0)));
          _H13 = *(v41 + 2 * llroundf(fminf(fmaxf(v94, 0.0), 8191.0)));
          _H31 = *(v41 + 2 * llroundf(fminf(fmaxf(v95, 0.0), 8191.0)));
          _H29 = *(v41 + 2 * llroundf(fminf(fmaxf(v96, 0.0), 8191.0)));
          _H8 = *(v41 + 2 * llroundf(fminf(fmaxf(v97, 0.0), 8191.0)));
          _H12 = *(v41 + 2 * llroundf(fminf(fmaxf(v98, 0.0), 8191.0)));
          if (v59)
          {
            v5 = v5 / 65535.0;
            *&v5 = v5;
            v105 = v6 / 65535.0;
            *&v5 = llroundf(*&v5);
            v106 = llroundf(v105);
          }

          else
          {
            LODWORD(v5) = 3.0;
            v106 = 3.0;
          }

          __asm { FCVT            S31, H31 }

          v108 = v30 + _S31;
          v109 = 1023.0;
          LODWORD(v6) = 1149222912;
          if (v108 <= 1023.0)
          {
            *&v6 = v108;
            if (v108 < 0.0)
            {
              v6 = 0.0;
            }
          }

          __asm { FCVT            S13, H13 }

          v111 = v30 + _S13;
          v70 = (v30 + _S13) <= 1023.0;
          v112 = 1023.0;
          if (v70)
          {
            v112 = v111;
            if (v111 < 0.0)
            {
              v112 = 0.0;
            }
          }

          __asm { FCVT            S11, H11 }

          v114 = v30 + _S11;
          v70 = (v30 + _S11) <= 1023.0;
          v115 = 1023.0;
          if (v70)
          {
            v115 = v114;
            if (v114 < 0.0)
            {
              v115 = 0.0;
            }
          }

          __asm { FCVT            S12, H12 }

          v117 = llroundf(*&v6);
          v118 = llroundf(v115);
          v119 = llroundf(v112) << 10;
          if (*&v5 > 3.0)
          {
            *&v5 = 3.0;
          }

          *v58 = v119 | v117 | (llroundf(*&v5) << 30) | (v118 << 20);
          LODWORD(v5) = 1149222912;
          if ((v30 + _S12) <= 1023.0)
          {
            *&v5 = v30 + _S12;
            if ((v30 + _S12) < 0.0)
            {
              v5 = 0.0;
            }
          }

          __asm { FCVT            S8, H8 }

          v121 = v30 + _S8;
          v70 = (v30 + _S8) <= 1023.0;
          v122 = 1023.0;
          if (v70)
          {
            v122 = v121;
            if (v121 < 0.0)
            {
              v122 = 0.0;
            }
          }

          __asm { FCVT            S29, H29 }

          v124 = v30 + _S29;
          if (v124 <= 1023.0)
          {
            v109 = v124;
            if (v124 < 0.0)
            {
              v109 = 0.0;
            }
          }

          v125 = llroundf(*&v5);
          v126 = llroundf(v122) << 10;
          v127 = llroundf(v109);
          if (v106 <= 3.0)
          {
            v128 = v106;
          }

          else
          {
            v128 = 3.0;
          }

          v58[1] = v126 | v125 | (llroundf(v128) << 30) | (v127 << 20);
          v56 += 2;
          v57 += 2;
          v58 += 2;
        }

        while (v56 < v13);
      }

      v54 += v16;
      v53 += v17;
      v49 += v18;
      v47 += v19;
      ++v11;
    }

    while (v11 != v10);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_xf422_rgb_l10r(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4, unint64_t *a5, uint64_t *a6, uint64_t a7, void *a8, void *a9)
{
  v66 = a7;
  v67 = a8;
  v76 = a5;
  v68 = a3;
  v69 = a4;
  v77 = *MEMORY[0x1E69E9840];
  v10 = *(a1 + 162);
  v12 = *a2;
  v11 = a2[1];
  v13 = a2[2];
  v14 = a2[3];
  v15 = a2[4];
  v71 = a2[5];
  v72 = v11;
  v16 = *a6;
  v70 = a6[1];
  v17 = a6[2];
  v18 = a6[3];
  v20 = a6[4];
  v19 = a6[5];
  v74 = v16;
  v75 = v19;
  v73 = v12;
  v22 = v15 + v13 != v12 || v20 + v17 != v16;
  if (v10 == 255)
  {
    v23 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v23)
    {
      v24 = 0;
LABEL_64:
      free(v23);
      return v24;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v10 + 160, a3, a4);
    v23 = (&v63 - v25);
    bzero(&v63 - v25, v26);
  }

  v65 = a1;
  v27 = a9;
  v28 = v17 - 1;
  v29 = v13 - 1;
  if (v20)
  {
    v30 = v15 + 1;
  }

  else
  {
    v29 = v13;
    v30 = v15;
  }

  if (v20)
  {
    v31 = v20 + 1;
  }

  else
  {
    v28 = v17;
    v31 = v20;
  }

  if (v28)
  {
    v32 = v66;
    v33 = v67;
    v34 = v69;
    if (v22 || (v35 = v29 + 1 + v30, v36 = 2 * v35, 2 * v35 > *v69) || ((2 * (v35 + (v35 >> 63))) & 0xFFFFFFFFFFFFFFFCLL) > v69[1] || (v37 = v69[2], v36 > v37) && v37 || (v38 = v28 + 1 + v31, *v67 < 4 * v38) || (v39 = v67[1], v38 > v39) && v39)
    {
      --v28;
      --v29;
    }

    else
    {
      ++v73;
      ++v74;
      ++v29;
      ++v28;
    }
  }

  else
  {
    v32 = v66;
    v33 = v67;
    v34 = v69;
  }

  if (v29 + v30 > v73)
  {
    v29 = v73 - v30;
  }

  if (v28 + v31 > v74)
  {
    v28 = v74 - v31;
  }

  if (v71 + v14 <= v72)
  {
    v40 = v14;
  }

  else
  {
    v40 = v72 - v71;
  }

  if (v75 + v18 <= v70)
  {
    v41 = v18;
  }

  else
  {
    v41 = v70 - v75;
  }

  if (v29 >= v28)
  {
    v42 = v28;
  }

  else
  {
    v42 = v29;
  }

  if (v40 >= v41)
  {
    v43 = v41;
  }

  else
  {
    v43 = v40;
  }

  v44 = v71 + v43 - 1;
  v45 = v42 + v30;
  v46 = *v34 * v44 + 2 * (v42 + v30);
  v47 = *v76;
  v64 = v30;
  if (v46 > v47)
  {
    v48 = v10;
    v49 = v31;
    v50 = v32;
    v51 = a9;
    goto LABEL_57;
  }

  v52 = v68;
  if (*(v68 + 8) && v34[1] * v44 + 4 * ((v45 + 1 + ((v45 + 1) >> 63)) >> 1) > v76[1])
  {
    v48 = v10;
    v49 = v31;
    v50 = v32;
    v51 = a9;
    goto LABEL_57;
  }

  if (*(v68 + 16) && 2 * v45 + v34[2] * v44 > v76[2])
  {
    v48 = v10;
    v49 = v31;
    v50 = v32;
    v51 = a9;
    goto LABEL_57;
  }

  v53 = v75 + v43 - 1;
  if ((*v33 * v53 + 4 * (v42 + v31)) > *a9)
  {
    v48 = v10;
    v49 = v31;
    v50 = v32;
    v51 = a9;
    goto LABEL_57;
  }

  if (*(v32 + 8) && (v42 + v31 + v33[1] * v53) > a9[1])
  {
    v48 = v10;
    v49 = v31;
    v50 = v32;
    v51 = a9;
LABEL_57:
    fig_log_get_emitter();
    v24 = FigSignalErrorAtGM();
    v52 = v68;
    v34 = v69;
    v27 = v51;
    v32 = v50;
    v31 = v49;
    v10 = v48;
    v30 = v64;
    if (v24)
    {
      goto LABEL_63;
    }
  }

  *v23 = v10;
  v54 = v72;
  *(v23 + 4) = v73;
  *(v23 + 12) = v54;
  *(v23 + 20) = v42;
  *(v23 + 28) = v43;
  *(v23 + 36) = v30;
  v55 = v70;
  *(v23 + 44) = v71;
  v23[11] = v55;
  v23[12] = v42;
  v23[13] = v43;
  v23[14] = v31;
  v23[7] = v52;
  v23[8] = v34;
  v56 = v74;
  v57 = v75;
  v23[9] = v76;
  v23[10] = v56;
  v23[15] = v57;
  v23[16] = v32;
  v23[17] = v33;
  v23[18] = v27;
  v23[19] = v65;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v10, global_queue, v23, vt_Copy_xf422_rgb_l10r_GCD);
  if (!v10)
  {
    return 0;
  }

  v59 = (v23 + 20);
  v60 = v10;
  while (1)
  {
    v61 = *v59++;
    v24 = v61;
    if (v61)
    {
      break;
    }

    if (!--v60)
    {
      v24 = 0;
      break;
    }
  }

LABEL_63:
  if (v10 == 255)
  {
    goto LABEL_64;
  }

  return v24;
}

unsigned __int8 *vt_Copy_xf422_rgb_l10r_GCD(unsigned __int8 *result, uint64_t a2)
{
  v3 = *result;
  v4 = *(result + 13);
  v5 = v4 * a2 / v3;
  v6 = (v4 + v4 * a2) / v3 - v5;
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = *(result + 19);
    v9 = *(result + 24) & 0xFFFFFFFE;
    v10 = *(result + 7);
    v11 = *(result + 8);
    v12 = *v11;
    v13 = v11[1];
    v14 = v11[2];
    v15 = **(result + 17);
    *&v16 = *(v8 + 128);
    *&v17 = *(v8 + 136);
    v18 = *&v17 / *&v16;
    LOWORD(v16) = *(v8 + 140);
    v19 = v16;
    LOWORD(v17) = *(v8 + 142);
    v20 = v17;
    v21 = v18 * *v8;
    v22 = v18 * *(v8 + 8);
    v23 = v18 * *(v8 + 16);
    v24 = v18 * *(v8 + 20);
    v25 = *(v8 + 28);
    v26 = v18 * v25;
    LOWORD(v25) = *(v8 + 144);
    v27 = LODWORD(v25);
    v28 = v5 + *(result + 15);
    v29 = *(result + 28) * a2 / v3 + *(result + 44);
    v30 = *(v8 + 124);
    v31 = *(result + 36);
    if (v30 >= 0x11)
    {
      v32 = 0;
    }

    else
    {
      v32 = 16 - v30;
    }

    v33 = **(result + 16) + v15 * v28 + 16 * *(result + 14);
    v34 = v10[2];
    if (v34)
    {
      v35 = v34 + v29 * v14 + 2 * v31;
    }

    else
    {
      v35 = 0;
    }

    v36 = *v10;
    v37 = *(*(result + 7) + 8);
    v38 = v37 == 0;
    v39 = v37 + v29 * v13 + 2 * v31;
    if (v38)
    {
      v39 = 0;
    }

    v40 = v36 + v29 * v12 + 2 * v31;
    v41 = v32;
    do
    {
      if (v9 >= 1)
      {
        v42 = 0;
        v43 = v40;
        v44 = v33;
        v45 = v35;
        do
        {
          if (v45)
          {
            LOWORD(v2) = *v45;
            v46 = *&v2 * 3.0 / 65535.0;
            *&v46 = v46;
            v47 = llroundf(*&v46);
            LOWORD(v46) = v45[1];
            v2 = *&v46 * 3.0 / 65535.0;
            *&v2 = v2;
            v45 += 2;
            v48 = v47;
            *&v2 = llroundf(*&v2);
          }

          else
          {
            v48 = 3.0;
            LODWORD(v2) = 3.0;
          }

          v49 = (v39 + 2 * v42);
          v50 = (*v49 >> v41) - v20;
          v51 = v26 * v50;
          v52 = v21 * ((*v43 >> v41) - v19);
          v53 = ((v26 * v50) + v52) + v27;
          v54 = 1023.0;
          if (v53 <= 1023.0)
          {
            v54 = ((v26 * v50) + v52) + v27;
            if (v53 < 0.0)
            {
              v54 = 0.0;
            }
          }

          v55 = (v49[1] >> v41) - v20;
          v56 = (v24 * v55) + (v50 * v23);
          v57 = (v52 + v56) + v27;
          v58 = 1023.0;
          if (v57 <= 1023.0)
          {
            v58 = (v52 + v56) + v27;
            if (v57 < 0.0)
            {
              v58 = 0.0;
            }
          }

          v59 = v22 * v55;
          v60 = v21 * ((v43[1] >> v41) - v19);
          v61 = v56 + v60;
          v62 = v51 + v60;
          v63 = llroundf(v54);
          v64 = llroundf(v58) << 10;
          v65 = (v59 + v52) + v27;
          if (v65 < 0.0)
          {
            v66 = 0.0;
          }

          else
          {
            v66 = v65;
          }

          if (v65 <= 1023.0)
          {
            v67 = v66;
          }

          else
          {
            v67 = 1023.0;
          }

          v68 = llroundf(v67);
          if (v48 > 3.0)
          {
            v48 = 3.0;
          }

          *v44 = v64 | v63 | (llroundf(v48) << 30) | (v68 << 20);
          v69 = v62 + v27;
          if ((v62 + v27) < 0.0)
          {
            v70 = 0.0;
          }

          else
          {
            v70 = v62 + v27;
          }

          if (v69 <= 1023.0)
          {
            v71 = v70;
          }

          else
          {
            v71 = 1023.0;
          }

          v72 = 1023.0;
          if ((v61 + v27) <= 1023.0)
          {
            v72 = v61 + v27;
            if ((v61 + v27) < 0.0)
            {
              v72 = 0.0;
            }
          }

          v73 = (v59 + v60) + v27;
          v74 = 1023.0;
          if (v73 <= 1023.0)
          {
            v74 = v73;
            if (v73 < 0.0)
            {
              v74 = 0.0;
            }
          }

          v75 = llroundf(v71);
          v76 = llroundf(v72) << 10;
          v77 = llroundf(v74);
          if (*&v2 > 3.0)
          {
            *&v2 = 3.0;
          }

          v44[1] = v76 | v75 | (llroundf(*&v2) << 30) | (v77 << 20);
          v42 += 2;
          v43 += 2;
          v44 += 2;
        }

        while (v42 < v9);
      }

      v40 += v12;
      v39 += v13;
      v35 += v14;
      v33 += v15;
      ++v7;
    }

    while (v7 != v6);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_xf422_TRC_Tone_Mat_TRC_l64r(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4, void *a5, uint64_t *a6, uint64_t a7, void *a8, void *a9)
{
  v62 = a8;
  v63 = a3;
  v69 = a5;
  v64 = a4;
  v70 = *MEMORY[0x1E69E9840];
  v10 = *(a1 + 162);
  v12 = *a2;
  v11 = a2[1];
  v13 = a2[2];
  v61 = a2[3];
  v14 = a2[4];
  v15 = a2[5];
  v16 = *a6;
  v65 = a6[1];
  v66 = v11;
  v18 = a6[2];
  v17 = a6[3];
  v59 = a1;
  v60 = v17;
  v20 = a6[4];
  v19 = a6[5];
  v67 = v16;
  v68 = v19;
  v22 = v14 + v13 != v12 || v20 + v18 != v16;
  if (v10 == 255)
  {
    v23 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v23)
    {
      v24 = 0;
LABEL_59:
      free(v23);
      return v24;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v10 + 160, a3, a4);
    v23 = (&v57 - v25);
    bzero(&v57 - v25, v26);
  }

  v58 = a7;
  v27 = a9;
  v28 = v18 - 1;
  v29 = v13 - 1;
  if (v20)
  {
    v30 = v14 + 1;
  }

  else
  {
    v29 = v13;
    v30 = v14;
  }

  if (v20)
  {
    v31 = v20 + 1;
  }

  else
  {
    v28 = v18;
    v31 = v20;
  }

  if (v28)
  {
    v32 = v64;
    if (v22 || (v33 = v29 + 1 + v30, v34 = 2 * v33, 2 * v33 > *v64) || ((2 * (v33 + (v33 >> 63))) & 0xFFFFFFFFFFFFFFFCLL) > v64[1] || (v35 = v64[2], v34 > v35) && v35 || (8 * (v31 + v28) + 8) > *v62)
    {
      --v28;
      --v29;
    }

    else
    {
      ++v28;
      ++v67;
      ++v12;
      ++v29;
    }
  }

  else
  {
    v32 = v64;
  }

  if (v29 + v30 > v12)
  {
    v29 = v12 - v30;
  }

  if (v28 + v31 > v67)
  {
    v28 = v67 - v31;
  }

  if (v15 + v61 <= v66)
  {
    v36 = v61;
  }

  else
  {
    v36 = v66 - v15;
  }

  if (v68 + v60 <= v65)
  {
    v37 = v60;
  }

  else
  {
    v37 = v65 - v68;
  }

  if (v29 >= v28)
  {
    v38 = v28;
  }

  else
  {
    v38 = v29;
  }

  if (v36 >= v37)
  {
    v39 = v37;
  }

  else
  {
    v39 = v36;
  }

  v40 = v15 + v39 - 1;
  v41 = v38 + v30;
  if ((*v32 * v40 + 2 * (v38 + v30)) <= *v69)
  {
    v46 = v63;
    if (*(v63 + 8) && v32[1] * v40 + 4 * ((v41 + 1 + ((v41 + 1) >> 63)) >> 1) > v69[1])
    {
      v61 = v30;
      v42 = v10;
      v43 = v12;
      v44 = v15;
      v45 = a9;
    }

    else if (*(v63 + 16) && (2 * v41 + v32[2] * v40) > v69[2])
    {
      v61 = v30;
      v42 = v10;
      v43 = v12;
      v44 = v15;
      v45 = a9;
    }

    else
    {
      if ((*v62 * (v68 + v39 - 1) + 8 * (v38 + v31)) <= *a9)
      {
        goto LABEL_53;
      }

      v61 = v30;
      v42 = v10;
      v43 = v12;
      v44 = v15;
      v45 = a9;
    }
  }

  else
  {
    v61 = v30;
    v42 = v10;
    v43 = v12;
    v44 = v15;
    v45 = a9;
  }

  fig_log_get_emitter();
  v47 = FigSignalErrorAtGM();
  v46 = v63;
  v32 = v64;
  v27 = v45;
  v15 = v44;
  v12 = v43;
  v10 = v42;
  v30 = v61;
  if (v47)
  {
    v24 = v47;
    goto LABEL_58;
  }

LABEL_53:
  *v23 = v10;
  *(v23 + 4) = v12;
  v48 = v65;
  *(v23 + 12) = v66;
  *(v23 + 20) = v38;
  *(v23 + 28) = v39;
  *(v23 + 36) = v30;
  *(v23 + 44) = v15;
  v23[11] = v48;
  v23[12] = v38;
  v23[13] = v39;
  v23[14] = v31;
  v23[7] = v46;
  v23[8] = v32;
  v49 = v67;
  v50 = v68;
  v23[9] = v69;
  v23[10] = v49;
  v51 = v58;
  v23[15] = v50;
  v23[16] = v51;
  v23[17] = v62;
  v23[18] = v27;
  v23[19] = v59;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v10, global_queue, v23, vt_Copy_xf422_TRC_Tone_Mat_TRC_l64r_GCD);
  if (!v10)
  {
    return 0;
  }

  v53 = (v23 + 20);
  v54 = v10;
  while (1)
  {
    v55 = *v53++;
    v24 = v55;
    if (v55)
    {
      break;
    }

    if (!--v54)
    {
      v24 = 0;
      break;
    }
  }

LABEL_58:
  if (v10 == 255)
  {
    goto LABEL_59;
  }

  return v24;
}

unsigned __int8 *vt_Copy_xf422_TRC_Tone_Mat_TRC_l64r_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, float a5)
{
  v5 = *result;
  v6 = *(result + 13);
  v7 = v6 * a2 / v5;
  v8 = (v6 + v6 * a2) / v5 - v7;
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = *(result + 19);
    v11 = *(result + 24) & 0xFFFFFFFE;
    v12 = *(result + 7);
    v13 = *(result + 8);
    v14 = *v13;
    v15 = v13[1];
    v16 = v13[2];
    v17 = **(result + 17);
    *&v18 = *(v10 + 128);
    v19 = 8191.0 / *&v18;
    LOWORD(v18) = *(v10 + 140);
    v20 = v18;
    LOWORD(a5) = *(v10 + 142);
    v21 = LODWORD(a5);
    v22 = v19 * *v10;
    v23 = v19 * *(v10 + 8);
    v24 = v19 * *(v10 + 16);
    v25 = v19 * *(v10 + 20);
    v26 = v19 * *(v10 + 28);
    v27 = *(v10 + 72);
    v28 = *(v10 + 76);
    v29 = *(v10 + 80);
    v30 = *(v10 + 84);
    v31 = *(v10 + 88);
    v32 = *(v10 + 92);
    v33 = *(v10 + 96);
    v34 = *(v10 + 100);
    v35 = v10 + 164;
    v36 = v10 + 16548;
    v37 = v10 + 32932;
    v38 = *(v10 + 104);
    v39 = *(v10 + 108);
    v40 = *(v10 + 112);
    v41 = *(v10 + 116);
    v42 = *(v10 + 120);
    v43 = v7 + *(result + 15);
    v44 = *(result + 28) * a2 / v5 + *(result + 44);
    v45 = *(v10 + 124);
    v46 = *(result + 36);
    if (v45 >= 0x11)
    {
      v47 = 0;
    }

    else
    {
      v47 = 16 - v45;
    }

    v48 = **(result + 16) + v17 * v43 + 8 * *(result + 14);
    v49 = v12[2];
    if (v49)
    {
      v50 = v49 + v44 * v16 + 2 * v46;
    }

    else
    {
      v50 = 0;
    }

    v52 = *v12;
    v51 = *(*(result + 7) + 8);
    _ZF = v51 == 0;
    v54 = v51 + v44 * v15 + 2 * v46;
    if (_ZF)
    {
      v54 = 0;
    }

    v55 = v52 + v44 * v14 + 2 * v46;
    v56 = v47;
    do
    {
      if (v11 >= 1)
      {
        v57 = 0;
        v58 = v55;
        v59 = v48;
        v60 = v50;
        do
        {
          v61 = (v54 + 2 * v57);
          v62 = (v61[1] >> v56) - v21;
          v63 = v23 * v62;
          v64 = v22 * ((*v58 >> v56) - v20);
          v65 = (v23 * v62) + v64;
          v66 = 8191.0;
          if (v65 <= 8191.0)
          {
            v66 = (v23 * v62) + v64;
            if (v65 < 0.0)
            {
              v66 = 0.0;
            }
          }

          v67 = (*v61 >> v56) - v21;
          v68 = (v25 * v62) + (v67 * v24);
          v69 = 8191.0;
          if ((v64 + v68) <= 8191.0)
          {
            v69 = v64 + v68;
            if ((v64 + v68) < 0.0)
            {
              v69 = 0.0;
            }
          }

          v70 = v26 * v67;
          v71 = (v26 * v67) + v64;
          v72 = 8191.0;
          if (v71 <= 8191.0)
          {
            v72 = v71;
            if (v71 < 0.0)
            {
              v72 = 0.0;
            }
          }

          v73 = v22 * ((v58[1] >> v56) - v20);
          v74 = v63 + v73;
          v75 = (v63 + v73) <= 8191.0;
          v76 = 8191.0;
          if (v75)
          {
            v76 = v74;
            if (v74 < 0.0)
            {
              v76 = 0.0;
            }
          }

          v77 = v68 + v73;
          v78 = 8191.0;
          if (v77 <= 8191.0)
          {
            v78 = v77;
            if (v77 < 0.0)
            {
              v78 = 0.0;
            }
          }

          v79 = v70 + v73;
          v75 = (v70 + v73) <= 8191.0;
          v80 = 8191.0;
          if (v75)
          {
            v80 = v79;
            if (v79 < 0.0)
            {
              v80 = 0.0;
            }
          }

          if (v60)
          {
            v81 = *v60;
            v82 = v60[1];
            v60 += 2;
          }

          else
          {
            v81 = 0;
            v82 = 0;
          }

          _S10 = fmaxf(v66, 0.0);
          v84 = 8191.0;
          LOWORD(_S10) = *(v35 + 2 * llroundf(fminf(_S10, 8191.0)));
          __asm { FCVT            S10, H10 }

          _H31 = *(v35 + 2 * llroundf(fminf(fmaxf(v69, 0.0), 8191.0)));
          v90 = llroundf(fminf(fmaxf(v72, 0.0), 8191.0));
          __asm { FCVT            S8, H31 }

          _H31 = *(v35 + 2 * v90);
          __asm { FCVT            S31, H31 }

          _H9 = *(v35 + 2 * llroundf(fminf(fmaxf(v76, 0.0), 8191.0)));
          _H11 = *(v35 + 2 * llroundf(fminf(fmaxf(v78, 0.0), 8191.0)));
          _H12 = *(v35 + 2 * llroundf(fminf(fmaxf(v80, 0.0), 8191.0)));
          v97 = (((v40 * _S8) + (v39 * _S10)) + (v41 * _S31)) + (v42 * fmaxf(_S10, fmaxf(_S8, _S31)));
          v98 = 8191.0;
          if (v97 <= 8191.0)
          {
            v98 = v97;
            if (v97 < 0.0)
            {
              v98 = 0.0;
            }
          }

          __asm
          {
            FCVT            S9, H9
            FCVT            S11, H11
            FCVT            S12, H12
          }

          _H13 = *(v36 + 2 * llroundf(v98));
          v103 = fmaxf(_S9, fmaxf(_S11, _S12));
          v104 = (((v40 * _S11) + (v39 * _S9)) + (v41 * _S12)) + (v42 * v103);
          if (v104 <= 8191.0)
          {
            v84 = (((v40 * _S11) + (v39 * _S9)) + (v41 * _S12)) + (v42 * v103);
            if (v104 < 0.0)
            {
              v84 = 0.0;
            }
          }

          __asm { FCVT            S13, H13 }

          v106 = _S10 * _S13;
          v107 = _S8 * _S13;
          _H30 = *(v36 + 2 * llroundf(v84));
          v109 = _S31 * _S13;
          __asm { FCVT            S30, H30 }

          v111 = _S9 * _S30;
          v112 = _S11 * _S30;
          v113 = _S12 * _S30;
          _S12 = ((v28 * v107) + (v106 * v27)) + (v109 * v29);
          v115 = ((v31 * v107) + (v106 * v30)) + (v109 * v32);
          v116 = ((v34 * v107) + (v106 * v33)) + (v109 * v38);
          v117 = ((v28 * v112) + (v111 * v27)) + (v113 * v29);
          v118 = ((v31 * v112) + (v111 * v30)) + (v113 * v32);
          v119 = ((v34 * v112) + (v111 * v33)) + (v113 * v38);
          LOWORD(_S12) = *(v37 + 2 * llroundf(fminf(fmaxf(_S12, 0.0), 8191.0)));
          __asm { FCVT            S13, H12 }

          _H11 = *(v37 + 2 * llroundf(fminf(fmaxf(v115, 0.0), 8191.0)));
          _H10 = *(v37 + 2 * llroundf(fminf(fmaxf(v116, 0.0), 8191.0)));
          _H9 = *(v37 + 2 * llroundf(fminf(fmaxf(v117, 0.0), 8191.0)));
          _H8 = *(v37 + 2 * llroundf(fminf(fmaxf(v118, 0.0), 8191.0)));
          _H31 = *(v37 + 2 * llroundf(fminf(fmaxf(v119, 0.0), 8191.0)));
          if (v60)
          {
            v126 = v81;
          }

          else
          {
            v126 = -1;
          }

          if (v60)
          {
            v127 = v82;
          }

          else
          {
            v127 = -1;
          }

          v128 = 65535.0;
          v129 = 65535.0;
          if (_S13 <= 65535.0)
          {
            __asm { FCMP            H12, #0 }

            v129 = _S13;
            if (_NF)
            {
              v129 = 0.0;
            }
          }

          __asm { FCVT            S13, H11 }

          *v59 = llroundf(v129);
          v132 = 65535.0;
          if (_S13 <= 65535.0)
          {
            __asm { FCMP            H11, #0 }

            v132 = _S13;
            if (_NF)
            {
              v132 = 0.0;
            }
          }

          __asm { FCVT            S13, H10 }

          v59[1] = llroundf(v132);
          v135 = 65535.0;
          if (_S13 <= 65535.0)
          {
            __asm { FCMP            H10, #0 }

            v135 = _S13;
            if (_NF)
            {
              v135 = 0.0;
            }
          }

          __asm { FCVT            S12, H9 }

          v59[2] = llroundf(v135);
          v59[3] = v126;
          v138 = 65535.0;
          if (_S12 <= 65535.0)
          {
            __asm { FCMP            H9, #0 }

            v138 = _S12;
            if (_NF)
            {
              v138 = 0.0;
            }
          }

          __asm { FCVT            S11, H8 }

          v59[4] = llroundf(v138);
          v141 = 65535.0;
          if (_S11 <= 65535.0)
          {
            __asm { FCMP            H8, #0 }

            v141 = _S11;
            if (_NF)
            {
              v141 = 0.0;
            }
          }

          __asm { FCVT            S8, H31 }

          v59[5] = llroundf(v141);
          if (_S8 <= 65535.0)
          {
            __asm { FCMP            H31, #0 }

            v128 = _S8;
            if (_NF)
            {
              v128 = 0.0;
            }
          }

          v59[6] = llroundf(v128);
          v59[7] = v127;
          v57 += 2;
          v58 += 2;
          v59 += 8;
        }

        while (v57 < v11);
      }

      v55 += v14;
      v54 += v15;
      v50 += v16;
      v48 += v17;
      ++v9;
    }

    while (v9 != v8);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_xf422_TRC_Mat_TRC_l64r(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4, void *a5, uint64_t *a6, uint64_t a7, void *a8, void *a9)
{
  v62 = a8;
  v63 = a3;
  v69 = a5;
  v64 = a4;
  v70 = *MEMORY[0x1E69E9840];
  v10 = *(a1 + 162);
  v12 = *a2;
  v11 = a2[1];
  v13 = a2[2];
  v61 = a2[3];
  v14 = a2[4];
  v15 = a2[5];
  v16 = *a6;
  v65 = a6[1];
  v66 = v11;
  v18 = a6[2];
  v17 = a6[3];
  v59 = a1;
  v60 = v17;
  v20 = a6[4];
  v19 = a6[5];
  v67 = v16;
  v68 = v19;
  v22 = v14 + v13 != v12 || v20 + v18 != v16;
  if (v10 == 255)
  {
    v23 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v23)
    {
      v24 = 0;
LABEL_59:
      free(v23);
      return v24;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v10 + 160, a3, a4);
    v23 = (&v57 - v25);
    bzero(&v57 - v25, v26);
  }

  v58 = a7;
  v27 = a9;
  v28 = v18 - 1;
  v29 = v13 - 1;
  if (v20)
  {
    v30 = v14 + 1;
  }

  else
  {
    v29 = v13;
    v30 = v14;
  }

  if (v20)
  {
    v31 = v20 + 1;
  }

  else
  {
    v28 = v18;
    v31 = v20;
  }

  if (v28)
  {
    v32 = v64;
    if (v22 || (v33 = v29 + 1 + v30, v34 = 2 * v33, 2 * v33 > *v64) || ((2 * (v33 + (v33 >> 63))) & 0xFFFFFFFFFFFFFFFCLL) > v64[1] || (v35 = v64[2], v34 > v35) && v35 || (8 * (v31 + v28) + 8) > *v62)
    {
      --v28;
      --v29;
    }

    else
    {
      ++v28;
      ++v67;
      ++v12;
      ++v29;
    }
  }

  else
  {
    v32 = v64;
  }

  if (v29 + v30 > v12)
  {
    v29 = v12 - v30;
  }

  if (v28 + v31 > v67)
  {
    v28 = v67 - v31;
  }

  if (v15 + v61 <= v66)
  {
    v36 = v61;
  }

  else
  {
    v36 = v66 - v15;
  }

  if (v68 + v60 <= v65)
  {
    v37 = v60;
  }

  else
  {
    v37 = v65 - v68;
  }

  if (v29 >= v28)
  {
    v38 = v28;
  }

  else
  {
    v38 = v29;
  }

  if (v36 >= v37)
  {
    v39 = v37;
  }

  else
  {
    v39 = v36;
  }

  v40 = v15 + v39 - 1;
  v41 = v38 + v30;
  if ((*v32 * v40 + 2 * (v38 + v30)) <= *v69)
  {
    v46 = v63;
    if (*(v63 + 8) && v32[1] * v40 + 4 * ((v41 + 1 + ((v41 + 1) >> 63)) >> 1) > v69[1])
    {
      v61 = v30;
      v42 = v10;
      v43 = v12;
      v44 = v15;
      v45 = a9;
    }

    else if (*(v63 + 16) && (2 * v41 + v32[2] * v40) > v69[2])
    {
      v61 = v30;
      v42 = v10;
      v43 = v12;
      v44 = v15;
      v45 = a9;
    }

    else
    {
      if ((*v62 * (v68 + v39 - 1) + 8 * (v38 + v31)) <= *a9)
      {
        goto LABEL_53;
      }

      v61 = v30;
      v42 = v10;
      v43 = v12;
      v44 = v15;
      v45 = a9;
    }
  }

  else
  {
    v61 = v30;
    v42 = v10;
    v43 = v12;
    v44 = v15;
    v45 = a9;
  }

  fig_log_get_emitter();
  v47 = FigSignalErrorAtGM();
  v46 = v63;
  v32 = v64;
  v27 = v45;
  v15 = v44;
  v12 = v43;
  v10 = v42;
  v30 = v61;
  if (v47)
  {
    v24 = v47;
    goto LABEL_58;
  }

LABEL_53:
  *v23 = v10;
  *(v23 + 4) = v12;
  v48 = v65;
  *(v23 + 12) = v66;
  *(v23 + 20) = v38;
  *(v23 + 28) = v39;
  *(v23 + 36) = v30;
  *(v23 + 44) = v15;
  v23[11] = v48;
  v23[12] = v38;
  v23[13] = v39;
  v23[14] = v31;
  v23[7] = v46;
  v23[8] = v32;
  v49 = v67;
  v50 = v68;
  v23[9] = v69;
  v23[10] = v49;
  v51 = v58;
  v23[15] = v50;
  v23[16] = v51;
  v23[17] = v62;
  v23[18] = v27;
  v23[19] = v59;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v10, global_queue, v23, vt_Copy_xf422_TRC_Mat_TRC_l64r_GCD);
  if (!v10)
  {
    return 0;
  }

  v53 = (v23 + 20);
  v54 = v10;
  while (1)
  {
    v55 = *v53++;
    v24 = v55;
    if (v55)
    {
      break;
    }

    if (!--v54)
    {
      v24 = 0;
      break;
    }
  }

LABEL_58:
  if (v10 == 255)
  {
    goto LABEL_59;
  }

  return v24;
}

unsigned __int8 *vt_Copy_xf422_TRC_Mat_TRC_l64r_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, float a5)
{
  v5 = *result;
  v6 = *(result + 13);
  v7 = v6 * a2 / v5;
  v8 = (v6 + v6 * a2) / v5 - v7;
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = *(result + 19);
    v11 = *(result + 24) & 0xFFFFFFFE;
    v12 = *(result + 7);
    v13 = *(result + 8);
    v14 = *v13;
    v15 = v13[1];
    v16 = v13[2];
    v17 = **(result + 17);
    *&v18 = *(v10 + 128);
    v19 = 8191.0 / *&v18;
    LOWORD(v18) = *(v10 + 140);
    v20 = v18;
    LOWORD(a5) = *(v10 + 142);
    v21 = LODWORD(a5);
    v22 = v19 * *v10;
    v23 = v19 * *(v10 + 8);
    v24 = v19 * *(v10 + 16);
    v25 = v19 * *(v10 + 20);
    v26 = v19 * *(v10 + 28);
    v27 = *(v10 + 72);
    v28 = *(v10 + 76);
    v29 = *(v10 + 80);
    v30 = *(v10 + 84);
    v31 = *(v10 + 88);
    v32 = *(v10 + 92);
    v33 = *(v10 + 96);
    v34 = *(v10 + 100);
    v35 = *(v10 + 104);
    v36 = v10 + 164;
    v37 = v10 + 16548;
    v38 = v7 + *(result + 15);
    v39 = *(result + 28) * a2 / v5 + *(result + 44);
    v40 = *(v10 + 124);
    v41 = *(result + 36);
    if (v40 >= 0x11)
    {
      v42 = 0;
    }

    else
    {
      v42 = 16 - v40;
    }

    v43 = **(result + 16) + v17 * v38 + 8 * *(result + 14);
    v44 = v12[2];
    if (v44)
    {
      v45 = v44 + v39 * v16 + 2 * v41;
    }

    else
    {
      v45 = 0;
    }

    v47 = *v12;
    v46 = *(*(result + 7) + 8);
    _ZF = v46 == 0;
    v49 = v46 + v39 * v15 + 2 * v41;
    if (_ZF)
    {
      v49 = 0;
    }

    v50 = v47 + v39 * v14 + 2 * v41;
    v51 = v42;
    do
    {
      if (v11 >= 1)
      {
        v52 = 0;
        v53 = v50;
        v54 = v43;
        v55 = v45;
        do
        {
          v56 = (v49 + 2 * v52);
          v57 = (v56[1] >> v51) - v21;
          v58 = v23 * v57;
          v59 = v22 * ((*v53 >> v51) - v20);
          v60 = (v23 * v57) + v59;
          v61 = 8191.0;
          if (v60 <= 8191.0)
          {
            v61 = (v23 * v57) + v59;
            if (v60 < 0.0)
            {
              v61 = 0.0;
            }
          }

          v62 = (*v56 >> v51) - v21;
          v63 = (v25 * v57) + (v62 * v24);
          v64 = 8191.0;
          if ((v59 + v63) <= 8191.0)
          {
            v64 = v59 + v63;
            if ((v59 + v63) < 0.0)
            {
              v64 = 0.0;
            }
          }

          v65 = v26 * v62;
          v66 = v65 + v59;
          v67 = (v65 + v59) <= 8191.0;
          v68 = 8191.0;
          if (v67)
          {
            v68 = v66;
            if (v66 < 0.0)
            {
              v68 = 0.0;
            }
          }

          v69 = v22 * ((v53[1] >> v51) - v20);
          v70 = v58 + v69;
          v67 = (v58 + v69) <= 8191.0;
          v71 = 8191.0;
          if (v67)
          {
            v71 = v70;
            if (v70 < 0.0)
            {
              v71 = 0.0;
            }
          }

          v72 = v63 + v69;
          v67 = (v63 + v69) <= 8191.0;
          v73 = 8191.0;
          if (v67)
          {
            v73 = v72;
            if (v72 < 0.0)
            {
              v73 = 0.0;
            }
          }

          v74 = v65 + v69;
          v75 = 8191.0;
          if (v74 <= 8191.0)
          {
            v75 = v74;
            if (v74 < 0.0)
            {
              v75 = 0.0;
            }
          }

          if (v55)
          {
            v76 = *v55;
            v77 = v55[1];
            v55 += 2;
          }

          else
          {
            v76 = 0;
            v77 = 0;
          }

          _H26 = *(v36 + 2 * llroundf(fminf(fmaxf(v61, 0.0), 8191.0)));
          __asm { FCVT            S26, H26 }

          _H27 = *(v36 + 2 * llroundf(fminf(fmaxf(v64, 0.0), 8191.0)));
          _H28 = *(v36 + 2 * llroundf(fminf(fmaxf(v68, 0.0), 8191.0)));
          __asm
          {
            FCVT            S27, H27
            FCVT            S28, H28
          }

          _H29 = *(v36 + 2 * llroundf(fminf(fmaxf(v71, 0.0), 8191.0)));
          __asm { FCVT            S29, H29 }

          _H30 = *(v36 + 2 * llroundf(fminf(fmaxf(v73, 0.0), 8191.0)));
          __asm { FCVT            S30, H30 }

          _H31 = *(v36 + 2 * llroundf(fminf(fmaxf(v75, 0.0), 8191.0)));
          __asm { FCVT            S31, H31 }

          _S8 = ((v28 * _S27) + (_S26 * v27)) + (_S28 * v29);
          v94 = ((v31 * _S27) + (_S26 * v30)) + (_S28 * v32);
          v95 = ((v34 * _S27) + (_S26 * v33)) + (_S28 * v35);
          v96 = ((v28 * _S30) + (_S29 * v27)) + (_S31 * v29);
          v97 = ((v31 * _S30) + (_S29 * v30)) + (_S31 * v32);
          v98 = ((v34 * _S30) + (_S29 * v33)) + (_S31 * v35);
          LOWORD(_S8) = *(v37 + 2 * llroundf(fminf(fmaxf(_S8, 0.0), 8191.0)));
          __asm { FCVT            S9, H8 }

          _H31 = *(v37 + 2 * llroundf(fminf(fmaxf(v94, 0.0), 8191.0)));
          _H30 = *(v37 + 2 * llroundf(fminf(fmaxf(v95, 0.0), 8191.0)));
          _H29 = *(v37 + 2 * llroundf(fminf(fmaxf(v96, 0.0), 8191.0)));
          _H28 = *(v37 + 2 * llroundf(fminf(fmaxf(v97, 0.0), 8191.0)));
          _H27 = *(v37 + 2 * llroundf(fminf(fmaxf(v98, 0.0), 8191.0)));
          if (v55)
          {
            v105 = v76;
          }

          else
          {
            v105 = -1;
          }

          if (v55)
          {
            v106 = v77;
          }

          else
          {
            v106 = -1;
          }

          v107 = 65535.0;
          v108 = 65535.0;
          if (_S9 <= 65535.0)
          {
            __asm { FCMP            H8, #0 }

            v108 = _S9;
            if (_NF)
            {
              v108 = 0.0;
            }
          }

          __asm { FCVT            S9, H31 }

          *v54 = llroundf(v108);
          v111 = 65535.0;
          if (_S9 <= 65535.0)
          {
            __asm { FCMP            H31, #0 }

            v111 = _S9;
            if (_NF)
            {
              v111 = 0.0;
            }
          }

          __asm { FCVT            S9, H30 }

          v54[1] = llroundf(v111);
          v114 = 65535.0;
          if (_S9 <= 65535.0)
          {
            __asm { FCMP            H30, #0 }

            v114 = _S9;
            if (_NF)
            {
              v114 = 0.0;
            }
          }

          __asm { FCVT            S8, H29 }

          v54[2] = llroundf(v114);
          v54[3] = v105;
          v117 = 65535.0;
          if (_S8 <= 65535.0)
          {
            __asm { FCMP            H29, #0 }

            v117 = _S8;
            if (_NF)
            {
              v117 = 0.0;
            }
          }

          __asm { FCVT            S31, H28 }

          v54[4] = llroundf(v117);
          v120 = 65535.0;
          if (_S31 <= 65535.0)
          {
            __asm { FCMP            H28, #0 }

            v120 = _S31;
            if (_NF)
            {
              v120 = 0.0;
            }
          }

          __asm { FCVT            S28, H27 }

          v54[5] = llroundf(v120);
          if (_S28 <= 65535.0)
          {
            __asm { FCMP            H27, #0 }

            v107 = _S28;
            if (_NF)
            {
              v107 = 0.0;
            }
          }

          v54[6] = llroundf(v107);
          v54[7] = v106;
          v52 += 2;
          v53 += 2;
          v54 += 8;
        }

        while (v52 < v11);
      }

      v50 += v14;
      v49 += v15;
      v45 += v16;
      v43 += v17;
      ++v9;
    }

    while (v9 != v8);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_xf422_rgb_l64r(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4, void *a5, uint64_t *a6, uint64_t a7, void *a8, void *a9)
{
  v62 = a8;
  v63 = a3;
  v69 = a5;
  v64 = a4;
  v70 = *MEMORY[0x1E69E9840];
  v10 = *(a1 + 162);
  v12 = *a2;
  v11 = a2[1];
  v13 = a2[2];
  v61 = a2[3];
  v14 = a2[4];
  v15 = a2[5];
  v16 = *a6;
  v65 = a6[1];
  v66 = v11;
  v18 = a6[2];
  v17 = a6[3];
  v59 = a1;
  v60 = v17;
  v20 = a6[4];
  v19 = a6[5];
  v67 = v16;
  v68 = v19;
  v22 = v14 + v13 != v12 || v20 + v18 != v16;
  if (v10 == 255)
  {
    v23 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v23)
    {
      v24 = 0;
LABEL_59:
      free(v23);
      return v24;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v10 + 160, a3, a4);
    v23 = (&v57 - v25);
    bzero(&v57 - v25, v26);
  }

  v58 = a7;
  v27 = a9;
  v28 = v18 - 1;
  v29 = v13 - 1;
  if (v20)
  {
    v30 = v14 + 1;
  }

  else
  {
    v29 = v13;
    v30 = v14;
  }

  if (v20)
  {
    v31 = v20 + 1;
  }

  else
  {
    v28 = v18;
    v31 = v20;
  }

  if (v28)
  {
    v32 = v64;
    if (v22 || (v33 = v29 + 1 + v30, v34 = 2 * v33, 2 * v33 > *v64) || ((2 * (v33 + (v33 >> 63))) & 0xFFFFFFFFFFFFFFFCLL) > v64[1] || (v35 = v64[2], v34 > v35) && v35 || (8 * (v31 + v28) + 8) > *v62)
    {
      --v28;
      --v29;
    }

    else
    {
      ++v28;
      ++v67;
      ++v12;
      ++v29;
    }
  }

  else
  {
    v32 = v64;
  }

  if (v29 + v30 > v12)
  {
    v29 = v12 - v30;
  }

  if (v28 + v31 > v67)
  {
    v28 = v67 - v31;
  }

  if (v15 + v61 <= v66)
  {
    v36 = v61;
  }

  else
  {
    v36 = v66 - v15;
  }

  if (v68 + v60 <= v65)
  {
    v37 = v60;
  }

  else
  {
    v37 = v65 - v68;
  }

  if (v29 >= v28)
  {
    v38 = v28;
  }

  else
  {
    v38 = v29;
  }

  if (v36 >= v37)
  {
    v39 = v37;
  }

  else
  {
    v39 = v36;
  }

  v40 = v15 + v39 - 1;
  v41 = v38 + v30;
  if ((*v32 * v40 + 2 * (v38 + v30)) <= *v69)
  {
    v46 = v63;
    if (*(v63 + 8) && v32[1] * v40 + 4 * ((v41 + 1 + ((v41 + 1) >> 63)) >> 1) > v69[1])
    {
      v61 = v30;
      v42 = v10;
      v43 = v12;
      v44 = v15;
      v45 = a9;
    }

    else if (*(v63 + 16) && (2 * v41 + v32[2] * v40) > v69[2])
    {
      v61 = v30;
      v42 = v10;
      v43 = v12;
      v44 = v15;
      v45 = a9;
    }

    else
    {
      if ((*v62 * (v68 + v39 - 1) + 8 * (v38 + v31)) <= *a9)
      {
        goto LABEL_53;
      }

      v61 = v30;
      v42 = v10;
      v43 = v12;
      v44 = v15;
      v45 = a9;
    }
  }

  else
  {
    v61 = v30;
    v42 = v10;
    v43 = v12;
    v44 = v15;
    v45 = a9;
  }

  fig_log_get_emitter();
  v47 = FigSignalErrorAtGM();
  v46 = v63;
  v32 = v64;
  v27 = v45;
  v15 = v44;
  v12 = v43;
  v10 = v42;
  v30 = v61;
  if (v47)
  {
    v24 = v47;
    goto LABEL_58;
  }

LABEL_53:
  *v23 = v10;
  *(v23 + 4) = v12;
  v48 = v65;
  *(v23 + 12) = v66;
  *(v23 + 20) = v38;
  *(v23 + 28) = v39;
  *(v23 + 36) = v30;
  *(v23 + 44) = v15;
  v23[11] = v48;
  v23[12] = v38;
  v23[13] = v39;
  v23[14] = v31;
  v23[7] = v46;
  v23[8] = v32;
  v49 = v67;
  v50 = v68;
  v23[9] = v69;
  v23[10] = v49;
  v51 = v58;
  v23[15] = v50;
  v23[16] = v51;
  v23[17] = v62;
  v23[18] = v27;
  v23[19] = v59;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v10, global_queue, v23, vt_Copy_xf422_rgb_l64r_GCD);
  if (!v10)
  {
    return 0;
  }

  v53 = (v23 + 20);
  v54 = v10;
  while (1)
  {
    v55 = *v53++;
    v24 = v55;
    if (v55)
    {
      break;
    }

    if (!--v54)
    {
      v24 = 0;
      break;
    }
  }

LABEL_58:
  if (v10 == 255)
  {
    goto LABEL_59;
  }

  return v24;
}

unsigned __int8 *vt_Copy_xf422_rgb_l64r_GCD(unsigned __int8 *result, uint64_t a2)
{
  v2 = *result;
  v3 = *(result + 13);
  v4 = v3 * a2 / v2;
  v5 = (v3 + v3 * a2) / v2 - v4;
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = *(result + 19);
    v8 = *(result + 24) & 0xFFFFFFFE;
    v9 = *(result + 7);
    v10 = *(result + 8);
    v11 = *v10;
    v12 = v10[1];
    v13 = v10[2];
    v14 = **(result + 17);
    *&v15 = *(v7 + 128);
    *&v16 = *(v7 + 136);
    v17 = *&v16 / *&v15;
    LOWORD(v15) = *(v7 + 140);
    v18 = v15;
    LOWORD(v16) = *(v7 + 142);
    v19 = v16;
    v20 = v17 * *v7;
    v21 = v17 * *(v7 + 8);
    v22 = v17 * *(v7 + 16);
    v23 = v17 * *(v7 + 20);
    v24 = v17 * *(v7 + 28);
    v25 = v4 + *(result + 15);
    v26 = *(result + 28) * a2 / v2 + *(result + 44);
    v27 = *(v7 + 124);
    v28 = *(result + 36);
    if (v27 >= 0x11)
    {
      v29 = 0;
    }

    else
    {
      v29 = 16 - v27;
    }

    v30 = **(result + 16) + v14 * v25 + 8 * *(result + 14);
    v31 = v9[2];
    if (v31)
    {
      v32 = v31 + v26 * v13 + 2 * v28;
    }

    else
    {
      v32 = 0;
    }

    v33 = *v9;
    v34 = *(*(result + 7) + 8);
    v35 = v34 == 0;
    v36 = v34 + v26 * v12 + 2 * v28;
    if (v35)
    {
      v36 = 0;
    }

    v37 = v33 + v26 * v11 + 2 * v28;
    v38 = v29;
    do
    {
      if (v8 >= 1)
      {
        v39 = 0;
        v40 = v37;
        v41 = v30;
        v42 = v32;
        do
        {
          if (v42)
          {
            v43 = *v42;
            v44 = v42[1];
            v42 += 2;
          }

          else
          {
            v43 = 0;
            v44 = 0;
          }

          v45 = (v36 + 2 * v39);
          v46 = (*v45 >> v38) - v19;
          v47 = (v45[1] >> v38) - v19;
          v48 = v21 * v47;
          v49 = (v23 * v47) + (v46 * v22);
          v50 = v20 * ((*v40 >> v38) - v18);
          v51 = v40[1];
          v52 = v48 + v50;
          v53 = v50 + v49;
          if (v42)
          {
            v54 = v43;
          }

          else
          {
            v54 = -1;
          }

          if (v42)
          {
            v55 = v44;
          }

          else
          {
            v55 = -1;
          }

          if (v52 < 0.0)
          {
            v56 = 0.0;
          }

          else
          {
            v56 = v48 + v50;
          }

          if (v52 <= 65535.0)
          {
            v57 = v56;
          }

          else
          {
            v57 = 65535.0;
          }

          *v41 = llroundf(v57);
          v58 = 65535.0;
          if (v53 <= 65535.0)
          {
            v58 = v50 + v49;
            if (v53 < 0.0)
            {
              v58 = 0.0;
            }
          }

          v59 = v24 * v46;
          v60 = v20 * ((v51 >> v38) - v18);
          v61 = v59 + v50;
          v62 = v48 + v60;
          v41[1] = llroundf(v58);
          if (v61 < 0.0)
          {
            v63 = 0.0;
          }

          else
          {
            v63 = v61;
          }

          if (v61 <= 65535.0)
          {
            v64 = v63;
          }

          else
          {
            v64 = 65535.0;
          }

          v65 = v49 + v60;
          v41[2] = llroundf(v64);
          v41[3] = v54;
          if (v62 < 0.0)
          {
            v66 = 0.0;
          }

          else
          {
            v66 = v62;
          }

          if (v62 <= 65535.0)
          {
            v67 = v66;
          }

          else
          {
            v67 = 65535.0;
          }

          v41[4] = llroundf(v67);
          v68 = 65535.0;
          if (v65 <= 65535.0)
          {
            v68 = v65;
            if (v65 < 0.0)
            {
              v68 = 0.0;
            }
          }

          v69 = v59 + v60;
          v41[5] = llroundf(v68);
          v70 = 65535.0;
          if (v69 <= 65535.0)
          {
            v70 = v69;
            if (v69 < 0.0)
            {
              v70 = 0.0;
            }
          }

          v41[6] = llroundf(v70);
          v41[7] = v55;
          v39 += 2;
          v40 += 2;
          v41 += 8;
        }

        while (v39 < v8);
      }

      v37 += v11;
      v36 += v12;
      v32 += v13;
      v30 += v14;
      ++v6;
    }

    while (v6 != v5);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_xf422_TRC_Tone_Mat_TRC_b64a(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4, void *a5, uint64_t *a6, uint64_t a7, void *a8, void *a9)
{
  v62 = a8;
  v63 = a3;
  v69 = a5;
  v64 = a4;
  v70 = *MEMORY[0x1E69E9840];
  v10 = *(a1 + 162);
  v12 = *a2;
  v11 = a2[1];
  v13 = a2[2];
  v61 = a2[3];
  v14 = a2[4];
  v15 = a2[5];
  v16 = *a6;
  v65 = a6[1];
  v66 = v11;
  v18 = a6[2];
  v17 = a6[3];
  v59 = a1;
  v60 = v17;
  v20 = a6[4];
  v19 = a6[5];
  v67 = v16;
  v68 = v19;
  v22 = v14 + v13 != v12 || v20 + v18 != v16;
  if (v10 == 255)
  {
    v23 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v23)
    {
      v24 = 0;
LABEL_59:
      free(v23);
      return v24;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v10 + 160, a3, a4);
    v23 = (&v57 - v25);
    bzero(&v57 - v25, v26);
  }

  v58 = a7;
  v27 = a9;
  v28 = v18 - 1;
  v29 = v13 - 1;
  if (v20)
  {
    v30 = v14 + 1;
  }

  else
  {
    v29 = v13;
    v30 = v14;
  }

  if (v20)
  {
    v31 = v20 + 1;
  }

  else
  {
    v28 = v18;
    v31 = v20;
  }

  if (v28)
  {
    v32 = v64;
    if (v22 || (v33 = v29 + 1 + v30, v34 = 2 * v33, 2 * v33 > *v64) || ((2 * (v33 + (v33 >> 63))) & 0xFFFFFFFFFFFFFFFCLL) > v64[1] || (v35 = v64[2], v34 > v35) && v35 || (8 * (v31 + v28) + 8) > *v62)
    {
      --v28;
      --v29;
    }

    else
    {
      ++v28;
      ++v67;
      ++v12;
      ++v29;
    }
  }

  else
  {
    v32 = v64;
  }

  if (v29 + v30 > v12)
  {
    v29 = v12 - v30;
  }

  if (v28 + v31 > v67)
  {
    v28 = v67 - v31;
  }

  if (v15 + v61 <= v66)
  {
    v36 = v61;
  }

  else
  {
    v36 = v66 - v15;
  }

  if (v68 + v60 <= v65)
  {
    v37 = v60;
  }

  else
  {
    v37 = v65 - v68;
  }

  if (v29 >= v28)
  {
    v38 = v28;
  }

  else
  {
    v38 = v29;
  }

  if (v36 >= v37)
  {
    v39 = v37;
  }

  else
  {
    v39 = v36;
  }

  v40 = v15 + v39 - 1;
  v41 = v38 + v30;
  if ((*v32 * v40 + 2 * (v38 + v30)) <= *v69)
  {
    v46 = v63;
    if (*(v63 + 8) && v32[1] * v40 + 4 * ((v41 + 1 + ((v41 + 1) >> 63)) >> 1) > v69[1])
    {
      v61 = v30;
      v42 = v10;
      v43 = v12;
      v44 = v15;
      v45 = a9;
    }

    else if (*(v63 + 16) && (2 * v41 + v32[2] * v40) > v69[2])
    {
      v61 = v30;
      v42 = v10;
      v43 = v12;
      v44 = v15;
      v45 = a9;
    }

    else
    {
      if ((*v62 * (v68 + v39 - 1) + 8 * (v38 + v31)) <= *a9)
      {
        goto LABEL_53;
      }

      v61 = v30;
      v42 = v10;
      v43 = v12;
      v44 = v15;
      v45 = a9;
    }
  }

  else
  {
    v61 = v30;
    v42 = v10;
    v43 = v12;
    v44 = v15;
    v45 = a9;
  }

  fig_log_get_emitter();
  v47 = FigSignalErrorAtGM();
  v46 = v63;
  v32 = v64;
  v27 = v45;
  v15 = v44;
  v12 = v43;
  v10 = v42;
  v30 = v61;
  if (v47)
  {
    v24 = v47;
    goto LABEL_58;
  }

LABEL_53:
  *v23 = v10;
  *(v23 + 4) = v12;
  v48 = v65;
  *(v23 + 12) = v66;
  *(v23 + 20) = v38;
  *(v23 + 28) = v39;
  *(v23 + 36) = v30;
  *(v23 + 44) = v15;
  v23[11] = v48;
  v23[12] = v38;
  v23[13] = v39;
  v23[14] = v31;
  v23[7] = v46;
  v23[8] = v32;
  v49 = v67;
  v50 = v68;
  v23[9] = v69;
  v23[10] = v49;
  v51 = v58;
  v23[15] = v50;
  v23[16] = v51;
  v23[17] = v62;
  v23[18] = v27;
  v23[19] = v59;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v10, global_queue, v23, vt_Copy_xf422_TRC_Tone_Mat_TRC_b64a_GCD);
  if (!v10)
  {
    return 0;
  }

  v53 = (v23 + 20);
  v54 = v10;
  while (1)
  {
    v55 = *v53++;
    v24 = v55;
    if (v55)
    {
      break;
    }

    if (!--v54)
    {
      v24 = 0;
      break;
    }
  }

LABEL_58:
  if (v10 == 255)
  {
    goto LABEL_59;
  }

  return v24;
}

unsigned __int8 *vt_Copy_xf422_TRC_Tone_Mat_TRC_b64a_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, float a5)
{
  v5 = *result;
  v6 = *(result + 13);
  v7 = v6 * a2 / v5;
  v8 = (v6 + v6 * a2) / v5 - v7;
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = *(result + 19);
    v11 = *(result + 24) & 0xFFFFFFFE;
    v12 = *(result + 7);
    v13 = *(result + 8);
    v14 = *v13;
    v15 = v13[1];
    v16 = v13[2];
    v17 = **(result + 17);
    *&v18 = *(v10 + 128);
    v19 = 8191.0 / *&v18;
    LOWORD(v18) = *(v10 + 140);
    v20 = v18;
    LOWORD(a5) = *(v10 + 142);
    v21 = LODWORD(a5);
    v22 = v19 * *v10;
    v145 = v19 * *(v10 + 8);
    v23 = v19 * *(v10 + 16);
    v24 = v19 * *(v10 + 20);
    v25 = v19 * *(v10 + 28);
    v26 = *(v10 + 72);
    v27 = *(v10 + 76);
    v28 = *(v10 + 80);
    v29 = *(v10 + 84);
    v30 = *(v10 + 88);
    v31 = *(v10 + 92);
    v32 = *(v10 + 96);
    v33 = *(v10 + 100);
    v34 = v10 + 164;
    v35 = v10 + 16548;
    v36 = v10 + 32932;
    v37 = *(v10 + 104);
    v38 = *(v10 + 108);
    v39 = *(v10 + 112);
    v40 = *(v10 + 116);
    v41 = *(v10 + 120);
    v42 = v7 + *(result + 15);
    v43 = *(result + 28) * a2 / v5 + *(result + 44);
    v44 = *(v10 + 124);
    v45 = *(result + 36);
    if (v44 >= 0x11)
    {
      v46 = 0;
    }

    else
    {
      v46 = 16 - v44;
    }

    v47 = **(result + 16) + v17 * v42 + 8 * *(result + 14);
    v48 = v12[2];
    if (v48)
    {
      v49 = v48 + v43 * v16 + 2 * v45;
    }

    else
    {
      v49 = 0;
    }

    v51 = *v12;
    v50 = *(*(result + 7) + 8);
    _ZF = v50 == 0;
    v53 = v50 + v43 * v15 + 2 * v45;
    if (_ZF)
    {
      v53 = 0;
    }

    v54 = v51 + v43 * v14 + 2 * v45;
    v55 = v46;
    do
    {
      if (v11 >= 1)
      {
        v56 = 0;
        v57 = v54;
        v58 = v47;
        v59 = v49;
        do
        {
          v60 = (v53 + 2 * v56);
          v61 = (v60[1] >> v55) - v21;
          v62 = v145 * v61;
          v63 = v22 * ((*v57 >> v55) - v20);
          v64 = (v145 * v61) + v63;
          v65 = 8191.0;
          if (v64 <= 8191.0)
          {
            v65 = (v145 * v61) + v63;
            if (v64 < 0.0)
            {
              v65 = 0.0;
            }
          }

          v66 = (*v60 >> v55) - v21;
          v67 = (v24 * v61) + (v66 * v23);
          v68 = 8191.0;
          if ((v63 + v67) <= 8191.0)
          {
            v68 = v63 + v67;
            if ((v63 + v67) < 0.0)
            {
              v68 = 0.0;
            }
          }

          v69 = v25 * v66;
          v70 = (v25 * v66) + v63;
          v71 = 8191.0;
          if (v70 <= 8191.0)
          {
            v71 = v70;
            if (v70 < 0.0)
            {
              v71 = 0.0;
            }
          }

          v72 = v22 * ((v57[1] >> v55) - v20);
          v73 = v62 + v72;
          v74 = (v62 + v72) <= 8191.0;
          v75 = 8191.0;
          if (v74)
          {
            v75 = v73;
            if (v73 < 0.0)
            {
              v75 = 0.0;
            }
          }

          v76 = v67 + v72;
          v77 = 8191.0;
          if (v76 <= 8191.0)
          {
            v77 = v76;
            if (v76 < 0.0)
            {
              v77 = 0.0;
            }
          }

          v78 = v69 + v72;
          v74 = (v69 + v72) <= 8191.0;
          v79 = 8191.0;
          if (v74)
          {
            v79 = v78;
            if (v78 < 0.0)
            {
              v79 = 0.0;
            }
          }

          if (v59)
          {
            v80 = *v59;
            v81 = v59[1];
            v59 += 2;
          }

          else
          {
            v80 = 0;
            v81 = 0;
          }

          _S10 = fmaxf(v65, 0.0);
          v83 = 8191.0;
          LOWORD(_S10) = *(v34 + 2 * llroundf(fminf(_S10, 8191.0)));
          __asm { FCVT            S10, H10 }

          _H31 = *(v34 + 2 * llroundf(fminf(fmaxf(v68, 0.0), 8191.0)));
          v89 = llroundf(fminf(fmaxf(v71, 0.0), 8191.0));
          __asm { FCVT            S8, H31 }

          _H31 = *(v34 + 2 * v89);
          __asm { FCVT            S31, H31 }

          _H9 = *(v34 + 2 * llroundf(fminf(fmaxf(v75, 0.0), 8191.0)));
          _H11 = *(v34 + 2 * llroundf(fminf(fmaxf(v77, 0.0), 8191.0)));
          _H12 = *(v34 + 2 * llroundf(fminf(fmaxf(v79, 0.0), 8191.0)));
          v96 = (((v39 * _S8) + (v38 * _S10)) + (v40 * _S31)) + (v41 * fmaxf(_S10, fmaxf(_S8, _S31)));
          v97 = 8191.0;
          if (v96 <= 8191.0)
          {
            v97 = v96;
            if (v96 < 0.0)
            {
              v97 = 0.0;
            }
          }

          __asm
          {
            FCVT            S9, H9
            FCVT            S11, H11
            FCVT            S12, H12
          }

          _H13 = *(v35 + 2 * llroundf(v97));
          v102 = fmaxf(_S9, fmaxf(_S11, _S12));
          v103 = (((v39 * _S11) + (v38 * _S9)) + (v40 * _S12)) + (v41 * v102);
          if (v103 <= 8191.0)
          {
            v83 = (((v39 * _S11) + (v38 * _S9)) + (v40 * _S12)) + (v41 * v102);
            if (v103 < 0.0)
            {
              v83 = 0.0;
            }
          }

          __asm { FCVT            S13, H13 }

          v105 = _S10 * _S13;
          v106 = _S8 * _S13;
          _H30 = *(v35 + 2 * llroundf(v83));
          v108 = _S31 * _S13;
          __asm { FCVT            S30, H30 }

          v110 = _S9 * _S30;
          v111 = _S11 * _S30;
          v112 = _S12 * _S30;
          v113 = ((v27 * v106) + (v105 * v26)) + (v108 * v28);
          v114 = ((v30 * v106) + (v105 * v29)) + (v108 * v31);
          v115 = ((v33 * v106) + (v105 * v32)) + (v108 * v37);
          v116 = ((v27 * v111) + (v110 * v26)) + (v112 * v28);
          v117 = ((v30 * v111) + (v110 * v29)) + (v112 * v31);
          v118 = ((v33 * v111) + (v110 * v32)) + (v112 * v37);
          LOWORD(_S13) = *(v36 + 2 * llroundf(fminf(fmaxf(v113, 0.0), 8191.0)));
          __asm { FCVT            S14, H13 }

          _H11 = *(v36 + 2 * llroundf(fminf(fmaxf(v114, 0.0), 8191.0)));
          _H10 = *(v36 + 2 * llroundf(fminf(fmaxf(v115, 0.0), 8191.0)));
          _H9 = *(v36 + 2 * llroundf(fminf(fmaxf(v116, 0.0), 8191.0)));
          _H8 = *(v36 + 2 * llroundf(fminf(fmaxf(v117, 0.0), 8191.0)));
          _H31 = *(v36 + 2 * llroundf(fminf(fmaxf(v118, 0.0), 8191.0)));
          if (v59)
          {
            v125 = v80;
          }

          else
          {
            v125 = -1;
          }

          if (v59)
          {
            v126 = v81;
          }

          else
          {
            v126 = -1;
          }

          v127 = 65535.0;
          v128 = 65535.0;
          if (_S14 <= 65535.0)
          {
            __asm { FCMP            H13, #0 }

            v128 = _S14;
            if (_NF)
            {
              v128 = 0.0;
            }
          }

          __asm { FCVT            S14, H11 }

          v131 = 65535.0;
          if (_S14 <= 65535.0)
          {
            __asm { FCMP            H11, #0 }

            v131 = _S14;
            if (_NF)
            {
              v131 = 0.0;
            }
          }

          __asm { FCVT            S14, H10 }

          v134 = 65535.0;
          if (_S14 <= 65535.0)
          {
            __asm { FCMP            H10, #0 }

            v134 = _S14;
            if (_NF)
            {
              v134 = 0.0;
            }
          }

          v136 = llroundf(v134);
          __asm { FCVT            S11, H9 }

          *v58 = bswap32(v125) >> 16;
          v58[1] = __rev16(llroundf(v128));
          v58[2] = __rev16(llroundf(v131));
          v58[3] = __rev16(v136);
          v138 = 65535.0;
          if (_S11 <= 65535.0)
          {
            __asm { FCMP            H9, #0 }

            v138 = _S11;
            if (_NF)
            {
              v138 = 0.0;
            }
          }

          __asm { FCVT            S11, H8 }

          v141 = 65535.0;
          if (_S11 <= 65535.0)
          {
            __asm { FCMP            H8, #0 }

            v141 = _S11;
            if (_NF)
            {
              v141 = 0.0;
            }
          }

          __asm { FCVT            S8, H31 }

          if (_S8 <= 65535.0)
          {
            __asm { FCMP            H31, #0 }

            v127 = _S8;
            if (_NF)
            {
              v127 = 0.0;
            }
          }

          v58[4] = bswap32(v126) >> 16;
          v58[5] = __rev16(llroundf(v138));
          v58[6] = __rev16(llroundf(v141));
          v58[7] = __rev16(llroundf(v127));
          v56 += 2;
          v57 += 2;
          v58 += 8;
        }

        while (v56 < v11);
      }

      v54 += v14;
      v53 += v15;
      v49 += v16;
      v47 += v17;
      ++v9;
    }

    while (v9 != v8);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_xf422_TRC_Mat_TRC_b64a(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4, void *a5, uint64_t *a6, uint64_t a7, void *a8, void *a9)
{
  v62 = a8;
  v63 = a3;
  v69 = a5;
  v64 = a4;
  v70 = *MEMORY[0x1E69E9840];
  v10 = *(a1 + 162);
  v12 = *a2;
  v11 = a2[1];
  v13 = a2[2];
  v61 = a2[3];
  v14 = a2[4];
  v15 = a2[5];
  v16 = *a6;
  v65 = a6[1];
  v66 = v11;
  v18 = a6[2];
  v17 = a6[3];
  v59 = a1;
  v60 = v17;
  v20 = a6[4];
  v19 = a6[5];
  v67 = v16;
  v68 = v19;
  v22 = v14 + v13 != v12 || v20 + v18 != v16;
  if (v10 == 255)
  {
    v23 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v23)
    {
      v24 = 0;
LABEL_59:
      free(v23);
      return v24;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v10 + 160, a3, a4);
    v23 = (&v57 - v25);
    bzero(&v57 - v25, v26);
  }

  v58 = a7;
  v27 = a9;
  v28 = v18 - 1;
  v29 = v13 - 1;
  if (v20)
  {
    v30 = v14 + 1;
  }

  else
  {
    v29 = v13;
    v30 = v14;
  }

  if (v20)
  {
    v31 = v20 + 1;
  }

  else
  {
    v28 = v18;
    v31 = v20;
  }

  if (v28)
  {
    v32 = v64;
    if (v22 || (v33 = v29 + 1 + v30, v34 = 2 * v33, 2 * v33 > *v64) || ((2 * (v33 + (v33 >> 63))) & 0xFFFFFFFFFFFFFFFCLL) > v64[1] || (v35 = v64[2], v34 > v35) && v35 || (8 * (v31 + v28) + 8) > *v62)
    {
      --v28;
      --v29;
    }

    else
    {
      ++v28;
      ++v67;
      ++v12;
      ++v29;
    }
  }

  else
  {
    v32 = v64;
  }

  if (v29 + v30 > v12)
  {
    v29 = v12 - v30;
  }

  if (v28 + v31 > v67)
  {
    v28 = v67 - v31;
  }

  if (v15 + v61 <= v66)
  {
    v36 = v61;
  }

  else
  {
    v36 = v66 - v15;
  }

  if (v68 + v60 <= v65)
  {
    v37 = v60;
  }

  else
  {
    v37 = v65 - v68;
  }

  if (v29 >= v28)
  {
    v38 = v28;
  }

  else
  {
    v38 = v29;
  }

  if (v36 >= v37)
  {
    v39 = v37;
  }

  else
  {
    v39 = v36;
  }

  v40 = v15 + v39 - 1;
  v41 = v38 + v30;
  if ((*v32 * v40 + 2 * (v38 + v30)) <= *v69)
  {
    v46 = v63;
    if (*(v63 + 8) && v32[1] * v40 + 4 * ((v41 + 1 + ((v41 + 1) >> 63)) >> 1) > v69[1])
    {
      v61 = v30;
      v42 = v10;
      v43 = v12;
      v44 = v15;
      v45 = a9;
    }

    else if (*(v63 + 16) && (2 * v41 + v32[2] * v40) > v69[2])
    {
      v61 = v30;
      v42 = v10;
      v43 = v12;
      v44 = v15;
      v45 = a9;
    }

    else
    {
      if ((*v62 * (v68 + v39 - 1) + 8 * (v38 + v31)) <= *a9)
      {
        goto LABEL_53;
      }

      v61 = v30;
      v42 = v10;
      v43 = v12;
      v44 = v15;
      v45 = a9;
    }
  }

  else
  {
    v61 = v30;
    v42 = v10;
    v43 = v12;
    v44 = v15;
    v45 = a9;
  }

  fig_log_get_emitter();
  v47 = FigSignalErrorAtGM();
  v46 = v63;
  v32 = v64;
  v27 = v45;
  v15 = v44;
  v12 = v43;
  v10 = v42;
  v30 = v61;
  if (v47)
  {
    v24 = v47;
    goto LABEL_58;
  }

LABEL_53:
  *v23 = v10;
  *(v23 + 4) = v12;
  v48 = v65;
  *(v23 + 12) = v66;
  *(v23 + 20) = v38;
  *(v23 + 28) = v39;
  *(v23 + 36) = v30;
  *(v23 + 44) = v15;
  v23[11] = v48;
  v23[12] = v38;
  v23[13] = v39;
  v23[14] = v31;
  v23[7] = v46;
  v23[8] = v32;
  v49 = v67;
  v50 = v68;
  v23[9] = v69;
  v23[10] = v49;
  v51 = v58;
  v23[15] = v50;
  v23[16] = v51;
  v23[17] = v62;
  v23[18] = v27;
  v23[19] = v59;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v10, global_queue, v23, vt_Copy_xf422_TRC_Mat_TRC_b64a_GCD);
  if (!v10)
  {
    return 0;
  }

  v53 = (v23 + 20);
  v54 = v10;
  while (1)
  {
    v55 = *v53++;
    v24 = v55;
    if (v55)
    {
      break;
    }

    if (!--v54)
    {
      v24 = 0;
      break;
    }
  }

LABEL_58:
  if (v10 == 255)
  {
    goto LABEL_59;
  }

  return v24;
}

unsigned __int8 *vt_Copy_xf422_TRC_Mat_TRC_b64a_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, float a5)
{
  v5 = *result;
  v6 = *(result + 13);
  v7 = v6 * a2 / v5;
  v8 = (v6 + v6 * a2) / v5 - v7;
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = *(result + 19);
    v11 = *(result + 24) & 0xFFFFFFFE;
    v12 = *(result + 7);
    v13 = *(result + 8);
    v14 = *v13;
    v15 = v13[1];
    v16 = v13[2];
    v17 = **(result + 17);
    *&v18 = *(v10 + 128);
    v19 = 8191.0 / *&v18;
    LOWORD(v18) = *(v10 + 140);
    v20 = v18;
    LOWORD(a5) = *(v10 + 142);
    v21 = LODWORD(a5);
    v22 = v19 * *v10;
    v23 = v19 * *(v10 + 8);
    v24 = v19 * *(v10 + 16);
    v25 = v19 * *(v10 + 20);
    v26 = v19 * *(v10 + 28);
    v27 = *(v10 + 72);
    v28 = *(v10 + 76);
    v29 = *(v10 + 80);
    v30 = *(v10 + 84);
    v31 = *(v10 + 88);
    v32 = *(v10 + 92);
    v33 = *(v10 + 96);
    v34 = *(v10 + 100);
    v35 = *(v10 + 104);
    v36 = v10 + 164;
    v37 = v10 + 16548;
    v38 = v7 + *(result + 15);
    v39 = *(result + 28) * a2 / v5 + *(result + 44);
    v40 = *(v10 + 124);
    v41 = *(result + 36);
    if (v40 >= 0x11)
    {
      v42 = 0;
    }

    else
    {
      v42 = 16 - v40;
    }

    v43 = **(result + 16) + v17 * v38 + 8 * *(result + 14);
    v44 = v12[2];
    if (v44)
    {
      v45 = v44 + v39 * v16 + 2 * v41;
    }

    else
    {
      v45 = 0;
    }

    v47 = *v12;
    v46 = *(*(result + 7) + 8);
    _ZF = v46 == 0;
    v49 = v46 + v39 * v15 + 2 * v41;
    if (_ZF)
    {
      v49 = 0;
    }

    v50 = v47 + v39 * v14 + 2 * v41;
    v51 = v42;
    do
    {
      if (v11 >= 1)
      {
        v52 = 0;
        v53 = v50;
        v54 = v43;
        v55 = v45;
        do
        {
          v56 = (v49 + 2 * v52);
          v57 = (v56[1] >> v51) - v21;
          v58 = v23 * v57;
          v59 = v22 * ((*v53 >> v51) - v20);
          v60 = (v23 * v57) + v59;
          v61 = 8191.0;
          if (v60 <= 8191.0)
          {
            v61 = (v23 * v57) + v59;
            if (v60 < 0.0)
            {
              v61 = 0.0;
            }
          }

          v62 = (*v56 >> v51) - v21;
          v63 = (v25 * v57) + (v62 * v24);
          v64 = 8191.0;
          if ((v59 + v63) <= 8191.0)
          {
            v64 = v59 + v63;
            if ((v59 + v63) < 0.0)
            {
              v64 = 0.0;
            }
          }

          v65 = v26 * v62;
          v66 = v65 + v59;
          v67 = (v65 + v59) <= 8191.0;
          v68 = 8191.0;
          if (v67)
          {
            v68 = v66;
            if (v66 < 0.0)
            {
              v68 = 0.0;
            }
          }

          v69 = v22 * ((v53[1] >> v51) - v20);
          v70 = v58 + v69;
          v67 = (v58 + v69) <= 8191.0;
          v71 = 8191.0;
          if (v67)
          {
            v71 = v70;
            if (v70 < 0.0)
            {
              v71 = 0.0;
            }
          }

          v72 = v63 + v69;
          v67 = (v63 + v69) <= 8191.0;
          v73 = 8191.0;
          if (v67)
          {
            v73 = v72;
            if (v72 < 0.0)
            {
              v73 = 0.0;
            }
          }

          v74 = v65 + v69;
          v75 = 8191.0;
          if (v74 <= 8191.0)
          {
            v75 = v74;
            if (v74 < 0.0)
            {
              v75 = 0.0;
            }
          }

          if (v55)
          {
            v76 = *v55;
            v77 = v55[1];
            v55 += 2;
          }

          else
          {
            v76 = 0;
            v77 = 0;
          }

          _H26 = *(v36 + 2 * llroundf(fminf(fmaxf(v61, 0.0), 8191.0)));
          __asm { FCVT            S26, H26 }

          _H27 = *(v36 + 2 * llroundf(fminf(fmaxf(v64, 0.0), 8191.0)));
          _H28 = *(v36 + 2 * llroundf(fminf(fmaxf(v68, 0.0), 8191.0)));
          __asm
          {
            FCVT            S27, H27
            FCVT            S28, H28
          }

          _H29 = *(v36 + 2 * llroundf(fminf(fmaxf(v71, 0.0), 8191.0)));
          __asm { FCVT            S29, H29 }

          _H30 = *(v36 + 2 * llroundf(fminf(fmaxf(v73, 0.0), 8191.0)));
          __asm { FCVT            S30, H30 }

          _H31 = *(v36 + 2 * llroundf(fminf(fmaxf(v75, 0.0), 8191.0)));
          __asm { FCVT            S31, H31 }

          v93 = ((v28 * _S27) + (_S26 * v27)) + (_S28 * v29);
          v94 = ((v31 * _S27) + (_S26 * v30)) + (_S28 * v32);
          v95 = ((v34 * _S27) + (_S26 * v33)) + (_S28 * v35);
          v96 = ((v28 * _S30) + (_S29 * v27)) + (_S31 * v29);
          v97 = ((v31 * _S30) + (_S29 * v30)) + (_S31 * v32);
          v98 = ((v34 * _S30) + (_S29 * v33)) + (_S31 * v35);
          _H9 = *(v37 + 2 * llroundf(fminf(fmaxf(v93, 0.0), 8191.0)));
          __asm { FCVT            S10, H9 }

          _H31 = *(v37 + 2 * llroundf(fminf(fmaxf(v94, 0.0), 8191.0)));
          _H30 = *(v37 + 2 * llroundf(fminf(fmaxf(v95, 0.0), 8191.0)));
          _H29 = *(v37 + 2 * llroundf(fminf(fmaxf(v96, 0.0), 8191.0)));
          _H28 = *(v37 + 2 * llroundf(fminf(fmaxf(v97, 0.0), 8191.0)));
          _H27 = *(v37 + 2 * llroundf(fminf(fmaxf(v98, 0.0), 8191.0)));
          if (v55)
          {
            v106 = v76;
          }

          else
          {
            v106 = -1;
          }

          if (v55)
          {
            v107 = v77;
          }

          else
          {
            v107 = -1;
          }

          v108 = 65535.0;
          v109 = 65535.0;
          if (_S10 <= 65535.0)
          {
            __asm { FCMP            H9, #0 }

            v109 = _S10;
            if (_NF)
            {
              v109 = 0.0;
            }
          }

          __asm { FCVT            S10, H31 }

          v112 = 65535.0;
          if (_S10 <= 65535.0)
          {
            __asm { FCMP            H31, #0 }

            v112 = _S10;
            if (_NF)
            {
              v112 = 0.0;
            }
          }

          __asm { FCVT            S10, H30 }

          v115 = 65535.0;
          if (_S10 <= 65535.0)
          {
            __asm { FCMP            H30, #0 }

            v115 = _S10;
            if (_NF)
            {
              v115 = 0.0;
            }
          }

          v117 = llroundf(v115);
          __asm { FCVT            S31, H29 }

          *v54 = bswap32(v106) >> 16;
          v54[1] = __rev16(llroundf(v109));
          v54[2] = __rev16(llroundf(v112));
          v54[3] = __rev16(v117);
          v119 = 65535.0;
          if (_S31 <= 65535.0)
          {
            __asm { FCMP            H29, #0 }

            v119 = _S31;
            if (_NF)
            {
              v119 = 0.0;
            }
          }

          __asm { FCVT            S31, H28 }

          v122 = 65535.0;
          if (_S31 <= 65535.0)
          {
            __asm { FCMP            H28, #0 }

            v122 = _S31;
            if (_NF)
            {
              v122 = 0.0;
            }
          }

          __asm { FCVT            S28, H27 }

          if (_S28 <= 65535.0)
          {
            __asm { FCMP            H27, #0 }

            v108 = _S28;
            if (_NF)
            {
              v108 = 0.0;
            }
          }

          v54[4] = bswap32(v107) >> 16;
          v54[5] = __rev16(llroundf(v119));
          v54[6] = __rev16(llroundf(v122));
          v54[7] = __rev16(llroundf(v108));
          v52 += 2;
          v53 += 2;
          v54 += 8;
        }

        while (v52 < v11);
      }

      v50 += v14;
      v49 += v15;
      v45 += v16;
      v43 += v17;
      ++v9;
    }

    while (v9 != v8);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_xf422_rgb_b64a(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4, void *a5, uint64_t *a6, uint64_t a7, void *a8, void *a9)
{
  v62 = a8;
  v63 = a3;
  v69 = a5;
  v64 = a4;
  v70 = *MEMORY[0x1E69E9840];
  v10 = *(a1 + 162);
  v12 = *a2;
  v11 = a2[1];
  v13 = a2[2];
  v61 = a2[3];
  v14 = a2[4];
  v15 = a2[5];
  v16 = *a6;
  v65 = a6[1];
  v66 = v11;
  v18 = a6[2];
  v17 = a6[3];
  v59 = a1;
  v60 = v17;
  v20 = a6[4];
  v19 = a6[5];
  v67 = v16;
  v68 = v19;
  v22 = v14 + v13 != v12 || v20 + v18 != v16;
  if (v10 == 255)
  {
    v23 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v23)
    {
      v24 = 0;
LABEL_59:
      free(v23);
      return v24;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v10 + 160, a3, a4);
    v23 = (&v57 - v25);
    bzero(&v57 - v25, v26);
  }

  v58 = a7;
  v27 = a9;
  v28 = v18 - 1;
  v29 = v13 - 1;
  if (v20)
  {
    v30 = v14 + 1;
  }

  else
  {
    v29 = v13;
    v30 = v14;
  }

  if (v20)
  {
    v31 = v20 + 1;
  }

  else
  {
    v28 = v18;
    v31 = v20;
  }

  if (v28)
  {
    v32 = v64;
    if (v22 || (v33 = v29 + 1 + v30, v34 = 2 * v33, 2 * v33 > *v64) || ((2 * (v33 + (v33 >> 63))) & 0xFFFFFFFFFFFFFFFCLL) > v64[1] || (v35 = v64[2], v34 > v35) && v35 || (8 * (v31 + v28) + 8) > *v62)
    {
      --v28;
      --v29;
    }

    else
    {
      ++v28;
      ++v67;
      ++v12;
      ++v29;
    }
  }

  else
  {
    v32 = v64;
  }

  if (v29 + v30 > v12)
  {
    v29 = v12 - v30;
  }

  if (v28 + v31 > v67)
  {
    v28 = v67 - v31;
  }

  if (v15 + v61 <= v66)
  {
    v36 = v61;
  }

  else
  {
    v36 = v66 - v15;
  }

  if (v68 + v60 <= v65)
  {
    v37 = v60;
  }

  else
  {
    v37 = v65 - v68;
  }

  if (v29 >= v28)
  {
    v38 = v28;
  }

  else
  {
    v38 = v29;
  }

  if (v36 >= v37)
  {
    v39 = v37;
  }

  else
  {
    v39 = v36;
  }

  v40 = v15 + v39 - 1;
  v41 = v38 + v30;
  if ((*v32 * v40 + 2 * (v38 + v30)) <= *v69)
  {
    v46 = v63;
    if (*(v63 + 8) && v32[1] * v40 + 4 * ((v41 + 1 + ((v41 + 1) >> 63)) >> 1) > v69[1])
    {
      v61 = v30;
      v42 = v10;
      v43 = v12;
      v44 = v15;
      v45 = a9;
    }

    else if (*(v63 + 16) && (2 * v41 + v32[2] * v40) > v69[2])
    {
      v61 = v30;
      v42 = v10;
      v43 = v12;
      v44 = v15;
      v45 = a9;
    }

    else
    {
      if ((*v62 * (v68 + v39 - 1) + 8 * (v38 + v31)) <= *a9)
      {
        goto LABEL_53;
      }

      v61 = v30;
      v42 = v10;
      v43 = v12;
      v44 = v15;
      v45 = a9;
    }
  }

  else
  {
    v61 = v30;
    v42 = v10;
    v43 = v12;
    v44 = v15;
    v45 = a9;
  }

  fig_log_get_emitter();
  v47 = FigSignalErrorAtGM();
  v46 = v63;
  v32 = v64;
  v27 = v45;
  v15 = v44;
  v12 = v43;
  v10 = v42;
  v30 = v61;
  if (v47)
  {
    v24 = v47;
    goto LABEL_58;
  }

LABEL_53:
  *v23 = v10;
  *(v23 + 4) = v12;
  v48 = v65;
  *(v23 + 12) = v66;
  *(v23 + 20) = v38;
  *(v23 + 28) = v39;
  *(v23 + 36) = v30;
  *(v23 + 44) = v15;
  v23[11] = v48;
  v23[12] = v38;
  v23[13] = v39;
  v23[14] = v31;
  v23[7] = v46;
  v23[8] = v32;
  v49 = v67;
  v50 = v68;
  v23[9] = v69;
  v23[10] = v49;
  v51 = v58;
  v23[15] = v50;
  v23[16] = v51;
  v23[17] = v62;
  v23[18] = v27;
  v23[19] = v59;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v10, global_queue, v23, vt_Copy_xf422_rgb_b64a_GCD);
  if (!v10)
  {
    return 0;
  }

  v53 = (v23 + 20);
  v54 = v10;
  while (1)
  {
    v55 = *v53++;
    v24 = v55;
    if (v55)
    {
      break;
    }

    if (!--v54)
    {
      v24 = 0;
      break;
    }
  }

LABEL_58:
  if (v10 == 255)
  {
    goto LABEL_59;
  }

  return v24;
}

unsigned __int8 *vt_Copy_xf422_rgb_b64a_GCD(unsigned __int8 *result, uint64_t a2)
{
  v2 = *result;
  v3 = *(result + 13);
  v4 = v3 * a2 / v2;
  v5 = (v3 + v3 * a2) / v2 - v4;
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = *(result + 19);
    v8 = *(result + 24) & 0xFFFFFFFE;
    v9 = *(result + 7);
    v10 = *(result + 8);
    v11 = *v10;
    v12 = v10[1];
    v13 = v10[2];
    v14 = **(result + 17);
    *&v15 = *(v7 + 128);
    *&v16 = *(v7 + 136);
    v17 = *&v16 / *&v15;
    LOWORD(v15) = *(v7 + 140);
    v18 = v15;
    LOWORD(v16) = *(v7 + 142);
    v19 = v16;
    v20 = v17 * *v7;
    v21 = v17 * *(v7 + 8);
    v22 = v17 * *(v7 + 16);
    v23 = v17 * *(v7 + 20);
    v24 = v17 * *(v7 + 28);
    v25 = v4 + *(result + 15);
    v26 = *(result + 28) * a2 / v2 + *(result + 44);
    v27 = *(v7 + 124);
    v28 = *(result + 36);
    if (v27 >= 0x11)
    {
      v29 = 0;
    }

    else
    {
      v29 = 16 - v27;
    }

    v30 = **(result + 16) + v14 * v25 + 8 * *(result + 14);
    v31 = v9[2];
    if (v31)
    {
      v32 = v31 + v26 * v13 + 2 * v28;
    }

    else
    {
      v32 = 0;
    }

    v33 = *v9;
    v34 = *(*(result + 7) + 8);
    v35 = v34 == 0;
    v36 = v34 + v26 * v12 + 2 * v28;
    if (v35)
    {
      v36 = 0;
    }

    v37 = v33 + v26 * v11 + 2 * v28;
    v38 = v29;
    do
    {
      if (v8 >= 1)
      {
        v39 = 0;
        v40 = v37;
        v41 = v30;
        v42 = v32;
        do
        {
          if (v42)
          {
            v43 = *v42;
            v44 = v42[1];
            v42 += 2;
          }

          else
          {
            v43 = 0;
            v44 = 0;
          }

          v45 = (v36 + 2 * v39);
          v46 = (*v45 >> v38) - v19;
          v47 = (v45[1] >> v38) - v19;
          v48 = v21 * v47;
          v49 = (v23 * v47) + (v46 * v22);
          v50 = v20 * ((*v40 >> v38) - v18);
          v51 = v48 + v50;
          v52 = v50 + v49;
          if (v42)
          {
            v53 = v43;
          }

          else
          {
            v53 = -1;
          }

          if (v42)
          {
            v54 = v44;
          }

          else
          {
            v54 = -1;
          }

          if (v51 < 0.0)
          {
            v55 = 0.0;
          }

          else
          {
            v55 = v48 + v50;
          }

          if (v51 <= 65535.0)
          {
            v56 = v55;
          }

          else
          {
            v56 = 65535.0;
          }

          v57 = 65535.0;
          if (v52 <= 65535.0)
          {
            v57 = v50 + v49;
            if (v52 < 0.0)
            {
              v57 = 0.0;
            }
          }

          v58 = v24 * v46;
          v59 = v20 * ((v40[1] >> v38) - v18);
          v60 = v58 + v50;
          v61 = v48 + v59;
          v62 = llroundf(v56);
          v63 = v49 + v59;
          v64 = llroundf(v57);
          if (v60 < 0.0)
          {
            v65 = 0.0;
          }

          else
          {
            v65 = v60;
          }

          if (v60 > 65535.0)
          {
            v65 = 65535.0;
          }

          *v41 = bswap32(v53) >> 16;
          v41[1] = __rev16(v62);
          v41[2] = __rev16(v64);
          v41[3] = __rev16(llroundf(v65));
          if (v61 < 0.0)
          {
            v66 = 0.0;
          }

          else
          {
            v66 = v61;
          }

          if (v61 > 65535.0)
          {
            v66 = 65535.0;
          }

          v67 = 65535.0;
          if (v63 <= 65535.0)
          {
            v67 = v63;
            if (v63 < 0.0)
            {
              v67 = 0.0;
            }
          }

          v68 = v58 + v59;
          v69 = 65535.0;
          if (v68 <= 65535.0)
          {
            v69 = v68;
            if (v68 < 0.0)
            {
              v69 = 0.0;
            }
          }

          v41[4] = bswap32(v54) >> 16;
          v41[5] = __rev16(llroundf(v66));
          v41[6] = __rev16(llroundf(v67));
          v41[7] = __rev16(llroundf(v69));
          v39 += 2;
          v40 += 2;
          v41 += 8;
        }

        while (v39 < v8);
      }

      v37 += v11;
      v36 += v12;
      v32 += v13;
      v30 += v14;
      ++v6;
    }

    while (v6 != v5);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_xf422_TRC_Tone_Mat_TRC_RGhA_neon_fp16(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4, void *a5, uint64_t *a6, uint64_t a7, void *a8, void *a9)
{
  v62 = a8;
  v63 = a3;
  v69 = a5;
  v64 = a4;
  v70 = *MEMORY[0x1E69E9840];
  v10 = *(a1 + 162);
  v12 = *a2;
  v11 = a2[1];
  v13 = a2[2];
  v61 = a2[3];
  v14 = a2[4];
  v15 = a2[5];
  v16 = *a6;
  v65 = a6[1];
  v66 = v11;
  v18 = a6[2];
  v17 = a6[3];
  v59 = a1;
  v60 = v17;
  v20 = a6[4];
  v19 = a6[5];
  v67 = v16;
  v68 = v19;
  v22 = v14 + v13 != v12 || v20 + v18 != v16;
  if (v10 == 255)
  {
    v23 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v23)
    {
      v24 = 0;
LABEL_59:
      free(v23);
      return v24;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v10 + 160, a3, a4);
    v23 = (&v57 - v25);
    bzero(&v57 - v25, v26);
  }

  v58 = a7;
  v27 = a9;
  v28 = v18 - 1;
  v29 = v13 - 1;
  if (v20)
  {
    v30 = v14 + 1;
  }

  else
  {
    v29 = v13;
    v30 = v14;
  }

  if (v20)
  {
    v31 = v20 + 1;
  }

  else
  {
    v28 = v18;
    v31 = v20;
  }

  if (v28)
  {
    v32 = v64;
    if (v22 || (v33 = v29 + 1 + v30, v34 = 2 * v33, 2 * v33 > *v64) || ((2 * (v33 + (v33 >> 63))) & 0xFFFFFFFFFFFFFFFCLL) > v64[1] || (v35 = v64[2], v34 > v35) && v35 || (8 * (v31 + v28) + 8) > *v62)
    {
      --v28;
      --v29;
    }

    else
    {
      ++v28;
      ++v67;
      ++v12;
      ++v29;
    }
  }

  else
  {
    v32 = v64;
  }

  if (v29 + v30 > v12)
  {
    v29 = v12 - v30;
  }

  if (v28 + v31 > v67)
  {
    v28 = v67 - v31;
  }

  if (v15 + v61 <= v66)
  {
    v36 = v61;
  }

  else
  {
    v36 = v66 - v15;
  }

  if (v68 + v60 <= v65)
  {
    v37 = v60;
  }

  else
  {
    v37 = v65 - v68;
  }

  if (v29 >= v28)
  {
    v38 = v28;
  }

  else
  {
    v38 = v29;
  }

  if (v36 >= v37)
  {
    v39 = v37;
  }

  else
  {
    v39 = v36;
  }

  v40 = v15 + v39 - 1;
  v41 = v38 + v30;
  if ((*v32 * v40 + 2 * (v38 + v30)) <= *v69)
  {
    v46 = v63;
    if (*(v63 + 8) && v32[1] * v40 + 4 * ((v41 + 1 + ((v41 + 1) >> 63)) >> 1) > v69[1])
    {
      v61 = v30;
      v42 = v10;
      v43 = v12;
      v44 = v15;
      v45 = a9;
    }

    else if (*(v63 + 16) && (2 * v41 + v32[2] * v40) > v69[2])
    {
      v61 = v30;
      v42 = v10;
      v43 = v12;
      v44 = v15;
      v45 = a9;
    }

    else
    {
      if ((*v62 * (v68 + v39 - 1) + 8 * (v38 + v31)) <= *a9)
      {
        goto LABEL_53;
      }

      v61 = v30;
      v42 = v10;
      v43 = v12;
      v44 = v15;
      v45 = a9;
    }
  }

  else
  {
    v61 = v30;
    v42 = v10;
    v43 = v12;
    v44 = v15;
    v45 = a9;
  }

  fig_log_get_emitter();
  v47 = FigSignalErrorAtGM();
  v46 = v63;
  v32 = v64;
  v27 = v45;
  v15 = v44;
  v12 = v43;
  v10 = v42;
  v30 = v61;
  if (v47)
  {
    v24 = v47;
    goto LABEL_58;
  }

LABEL_53:
  *v23 = v10;
  *(v23 + 4) = v12;
  v48 = v65;
  *(v23 + 12) = v66;
  *(v23 + 20) = v38;
  *(v23 + 28) = v39;
  *(v23 + 36) = v30;
  *(v23 + 44) = v15;
  v23[11] = v48;
  v23[12] = v38;
  v23[13] = v39;
  v23[14] = v31;
  v23[7] = v46;
  v23[8] = v32;
  v49 = v67;
  v50 = v68;
  v23[9] = v69;
  v23[10] = v49;
  v51 = v58;
  v23[15] = v50;
  v23[16] = v51;
  v23[17] = v62;
  v23[18] = v27;
  v23[19] = v59;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v10, global_queue, v23, vt_Copy_xf422_TRC_Tone_Mat_TRC_RGhA_neon_fp16_GCD);
  if (!v10)
  {
    return 0;
  }

  v53 = (v23 + 20);
  v54 = v10;
  while (1)
  {
    v55 = *v53++;
    v24 = v55;
    if (v55)
    {
      break;
    }

    if (!--v54)
    {
      v24 = 0;
      break;
    }
  }

LABEL_58:
  if (v10 == 255)
  {
    goto LABEL_59;
  }

  return v24;
}

char *vt_Copy_xf422_TRC_Tone_Mat_TRC_RGhA_neon_fp16_GCD(char *result, uint64_t a2, int16x4_t a3)
{
  v5 = *result;
  v186 = result;
  v6 = *(result + 13);
  v7 = v6 * a2 / v5;
  v190 = (v6 + v6 * a2) / v5 - v7;
  if (v190 >= 1)
  {
    v8 = 0;
    v9 = *(result + 24);
    v10 = *(result + 19);
    v12 = *(result + 7);
    v11 = *(result + 8);
    v13 = *v11;
    result = v11[1];
    v14 = **(v186 + 17);
    v15 = v10[17].u16[2];
    v16 = v10[17].u16[3];
    a3.i32[0] = v10->i32[0];
    v17.i32[0] = v10[3].i32[1];
    _S3 = v10[10].f32[1];
    _S4 = v10[11].f32[0];
    _S5 = v10[11].f32[1];
    _S6 = v10[12].f32[0];
    _S7 = v10[12].f32[1];
    _S16 = v10[13].f32[0];
    v24 = &v10[2068] + 4;
    v3.f32[0] = 8191.0 / v10[16].u32[0];
    v214 = v15;
    v25 = v16;
    _S24 = v3.f32[0] * v10->f32[0];
    v27 = &v10[20] + 4;
    v28 = &v10[4116] + 4;
    *a3.i16 = v15;
    v210 = vdupq_lane_s16(a3, 0);
    __asm { FCVT            H8, S24 }

    v34 = -v16;
    v17.i32[1] = v10[1].i32[0];
    *v4.f32 = vmul_n_f32(v17, v3.f32[0]);
    *v3.f32 = vmul_n_f32(v10[2], v3.f32[0]);
    v208 = vdupq_lane_s32(vcvt_f16_f32(v4), 0);
    v206 = vmulq_n_f16(v208, v34);
    v207 = vdupq_lane_s32(vcvt_f16_f32(v3), 0);
    v205 = vmulq_n_f16(v207, v34);
    _S18 = v10[13].f32[1];
    __asm { FCVT            H0, S17 }

    v204 = _H0;
    _S19 = v10[14].f32[0];
    __asm { FCVT            H0, S28 }

    v203 = _H0;
    _S20 = v10[14].f32[1];
    __asm { FCVT            H0, S29 }

    v202 = _H0;
    _S22 = v10[15].f32[0];
    __asm { FCVT            H0, S30 }

    v201 = _H0;
    v213 = v10[9].f32[0];
    __asm { FCVT            H0, S25 }

    v200 = _H0;
    v212 = v10[9].f32[1];
    __asm { FCVT            H0, S26 }

    v199 = _H0;
    v211 = v10[10].f32[0];
    __asm { FCVT            H0, S2 }

    v198 = _H0;
    LODWORD(v10) = v10[15].u8[4];
    v46 = 16 - v10;
    v47 = v12[2];
    v48 = *(v186 + 28) * a2 / v5 + *(v186 + 44);
    v188 = result;
    v189 = v11[2];
    v49 = *(v186 + 36);
    v50 = v47 + v189 * v48 + 2 * v49;
    v51 = v7 + *(v186 + 15);
    v52 = *v12;
    v53 = *(*(v186 + 7) + 8);
    _CF = v10 >= 0x11;
    v54 = v53 + result * v48 + 2 * v49;
    if (_CF)
    {
      v46 = 0;
    }

    v55 = **(v186 + 16) + v14 * v51 + 8 * *(v186 + 14);
    if (!v47)
    {
      v50 = 0;
    }

    if (!v53)
    {
      v54 = 0;
    }

    v56 = v52 + v13 * v48 + 2 * v49;
    __asm { FCVT            H0, S3 }

    v197 = _H0;
    __asm { FCVT            H0, S4 }

    v196 = _H0;
    __asm { FCVT            H0, S5 }

    v195 = _H0;
    __asm { FCVT            H0, S6 }

    v194 = _H0;
    __asm { FCVT            H0, S7 }

    v193 = _H0;
    __asm { FCVT            H0, S16 }

    v192 = _H0;
    v63 = vdupq_n_s16(-v46);
    v209 = v4.f32[0];
    v64 = v3.i64[0];
    v191 = v4.f32[1];
    v65.i64[0] = 0x9000900090009000;
    v65.i64[1] = 0x9000900090009000;
    do
    {
      if (v9 < 8)
      {
        v126 = 0;
        v70 = v54;
        v69 = v50;
        v68 = v55;
        v67 = v56;
      }

      else
      {
        v66 = 0;
        v67 = v56;
        v68 = v55;
        v69 = v50;
        v70 = v54;
        do
        {
          if (v69 && (v71 = *v69, v69 += 16, v72 = v71, v69))
          {
            *v73.i8 = vzip1_s16(*v72.i8, 0);
            v73.u64[1] = vzip2_s16(*v72.i8, 0);
            v74 = vextq_s8(v72, v72, 8uLL).u64[0];
            *v75.i8 = vzip1_s16(v74, 0);
            v75.u64[1] = vzip2_s16(v74, 0);
            v76 = vcvtq_f32_u32(v75);
            v77 = vdupq_n_s32(0x37800080u);
            v78 = vcvt_hight_f16_f32(vcvt_f16_f32(vmulq_f32(vcvtq_f32_u32(v73), v77)), vmulq_f32(v76, v77));
          }

          else
          {
            v78.i64[0] = 0x3C003C003C003C00;
            v78.i64[1] = 0x3C003C003C003C00;
          }

          v79 = *v70++;
          v80 = vcvtq_f16_u16(vshlq_u16(v79, v63));
          v81 = vmlaq_f16(v206, v208, v80);
          v82 = vmlaq_f16(v205, v207, v80);
          v83 = vtrn2q_s16(v81, v81);
          v84 = vtrn1q_s16(v81, v81);
          v85 = vuzp1q_s16(v82, v83);
          *v85.i8 = vadd_f16(*v85.i8, *&vuzp2q_s16(v82, v83));
          v86 = *v67++;
          v87 = vsubq_f16(vcvtq_f16_u16(vshlq_u16(v86, v63)), v210);
          v88 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(v83, v87, _H8), 0), v65));
          v89.i16[0] = *&v27[2 * v88.u16[0]];
          v89.i16[1] = *&v27[2 * v88.u16[1]];
          v89.i16[2] = *&v27[2 * v88.u16[2]];
          v89.i16[3] = *&v27[2 * v88.u16[3]];
          v89.i16[4] = *&v27[2 * v88.u16[4]];
          v89.i16[5] = *&v27[2 * v88.u16[5]];
          v89.i16[6] = *&v27[2 * v88.u16[6]];
          v89.i16[7] = *&v27[2 * v88.u16[7]];
          v90 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vzip1q_s16(v85, v85), v87, _H8), 0), v65));
          v91.i16[0] = *&v27[2 * v90.u16[0]];
          v91.i16[1] = *&v27[2 * v90.u16[1]];
          v91.i16[2] = *&v27[2 * v90.u16[2]];
          v91.i16[3] = *&v27[2 * v90.u16[3]];
          v91.i16[4] = *&v27[2 * v90.u16[4]];
          v91.i16[5] = *&v27[2 * v90.u16[5]];
          v91.i16[6] = *&v27[2 * v90.u16[6]];
          v91.i16[7] = *&v27[2 * v90.u16[7]];
          v92 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(v84, v87, _H8), 0), v65));
          v84.i16[0] = *&v27[2 * v92.u16[0]];
          v84.i16[1] = *&v27[2 * v92.u16[1]];
          v84.i16[2] = *&v27[2 * v92.u16[2]];
          v84.i16[3] = *&v27[2 * v92.u16[3]];
          v84.i16[4] = *&v27[2 * v92.u16[4]];
          v84.i16[5] = *&v27[2 * v92.u16[5]];
          v84.i16[6] = *&v27[2 * v92.u16[6]];
          v84.i16[7] = *&v27[2 * v92.u16[7]];
          v93 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v89, v204), v91, v203), v84, v202), vmaxq_f16(vmaxq_f16(v89, v91), v84), v201), 0), v65));
          v85.i16[0] = *&v24[2 * v93.u16[0]];
          v85.i16[1] = *&v24[2 * v93.u16[1]];
          v85.i16[2] = *&v24[2 * v93.u16[2]];
          v85.i16[3] = *&v24[2 * v93.u16[3]];
          v85.i16[4] = *&v24[2 * v93.u16[4]];
          v85.i16[5] = *&v24[2 * v93.u16[5]];
          v85.i16[6] = *&v24[2 * v93.u16[6]];
          v85.i16[7] = *&v24[2 * v93.u16[7]];
          v94 = vmulq_f16(v89, v85);
          v95 = vmulq_f16(v91, v85);
          v96 = vmulq_f16(v84, v85);
          v97 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v94, v197), v95, v196), v96, v195);
          v98 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v96, v192), v95, v193), v94, v194);
          v99 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v94, v200), v95, v199), v96, v198), 0), v65));
          v100 = *&v28[2 * v99.u16[0]];
          v101 = *&v28[2 * v99.u16[1]];
          v102 = *&v28[2 * v99.u16[2]];
          v103 = *&v28[2 * v99.u16[3]];
          v104 = *&v28[2 * v99.u16[4]];
          v105 = *&v28[2 * v99.u16[5]];
          v106 = *&v28[2 * v99.u16[6]];
          v107 = *&v28[2 * v99.u16[7]];
          v108 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v97, 0), v65));
          v109 = *&v28[2 * v108.u16[0]];
          v110 = *&v28[2 * v108.u16[1]];
          v111 = *&v28[2 * v108.u16[2]];
          v112 = *&v28[2 * v108.u16[3]];
          v113 = *&v28[2 * v108.u16[4]];
          v114 = *&v28[2 * v108.u16[5]];
          v115 = *&v28[2 * v108.u16[6]];
          v116 = *&v28[2 * v108.u16[7]];
          v117 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v98, 0), v65));
          v118 = *&v28[2 * v117.u16[0]];
          result = &v28[2 * v117.u16[4]];
          v119 = *&v28[2 * v117.u16[1]];
          v120 = *&v28[2 * v117.u16[2]];
          v121 = *&v28[2 * v117.u16[3]];
          v122 = *result;
          v123 = *&v28[2 * v117.u16[5]];
          v124 = *&v28[2 * v117.u16[6]];
          v125 = *&v28[2 * v117.u16[7]];
          vst4q_s16(v68, *(&v78 - 3));
          v68 += 64;
          v66 += 8;
        }

        while (v66 < v9 - 7);
        v126 = v9 & 0xFFFFFFF8;
      }

      while (v126 < (v9 & 0xFFFFFFFE))
      {
        v127 = (v70->u16[1] >> v46) - v25;
        v128 = v191 * v127;
        v129 = _S24 * ((v67->u16[0] >> v46) - v214);
        v130 = (v191 * v127) + v129;
        v131 = 8191.0;
        if (v130 <= 8191.0)
        {
          v131 = (v191 * v127) + v129;
          if (v130 < 0.0)
          {
            v131 = 0.0;
          }
        }

        v132 = (v70->u16[0] >> v46) - v25;
        v133 = (*(&v64 + 1) * v127) + (v132 * *&v64);
        v134 = 8191.0;
        if ((v129 + v133) <= 8191.0)
        {
          v134 = v129 + v133;
          if ((v129 + v133) < 0.0)
          {
            v134 = 0.0;
          }
        }

        v135 = v209 * v132;
        v136 = (v209 * v132) + v129;
        v137 = 8191.0;
        if (v136 <= 8191.0)
        {
          v137 = (v209 * v132) + v129;
          if (v136 < 0.0)
          {
            v137 = 0.0;
          }
        }

        HIWORD(v138) = HIWORD(v214);
        v139 = _S24 * ((v67->u16[1] >> v46) - v214);
        v140 = 8191.0;
        if ((v128 + v139) <= 8191.0)
        {
          v140 = v128 + v139;
          if ((v128 + v139) < 0.0)
          {
            v140 = 0.0;
          }
        }

        v141 = 8191.0;
        if ((v133 + v139) <= 8191.0)
        {
          v141 = v133 + v139;
          if ((v133 + v139) < 0.0)
          {
            v141 = 0.0;
          }
        }

        v142 = v135 + v139;
        v143 = 8191.0;
        if ((v135 + v139) <= 8191.0)
        {
          v143 = v135 + v139;
          if (v142 < 0.0)
          {
            v143 = 0.0;
          }
        }

        if (v69)
        {
          LOWORD(v142) = *v69;
          LOWORD(v138) = *(v69 + 2);
          v69 += 4;
          _S0 = LODWORD(v142) * 0.000015259;
          _S1 = v138 * 0.000015259;
          __asm
          {
            FCVT            H31, S0
            FCVT            H9, S1
          }
        }

        else
        {
          LOWORD(_H31) = 0;
          LOWORD(_H9) = 0;
        }

        _H0 = *&v27[2 * llroundf(fminf(fmaxf(v131, 0.0), 8191.0))];
        __asm { FCVT            S26, H0 }

        _H0 = *&v27[2 * llroundf(fminf(fmaxf(v134, 0.0), 8191.0))];
        __asm { FCVT            S11, H0 }

        _H0 = *&v27[2 * llroundf(fminf(fmaxf(v137, 0.0), 8191.0))];
        __asm { FCVT            S12, H0 }

        _H13 = *&v27[2 * llroundf(fminf(fmaxf(v140, 0.0), 8191.0))];
        _H14 = *&v27[2 * llroundf(fminf(fmaxf(v141, 0.0), 8191.0))];
        _H30 = *&v27[2 * llroundf(fminf(fmaxf(v143, 0.0), 8191.0))];
        v157 = fmaxf(_S26, fmaxf(_S11, _S12));
        v158 = (((_S19 * _S11) + (_S18 * _S26)) + (_S20 * _S12)) + (_S22 * v157);
        v159 = 8191.0;
        if (v158 <= 8191.0)
        {
          v159 = (((_S19 * _S11) + (_S18 * _S26)) + (_S20 * _S12)) + (_S22 * v157);
          if (v158 < 0.0)
          {
            v159 = 0.0;
          }
        }

        __asm
        {
          FCVT            S21, H13
          FCVT            S13, H14
          FCVT            S14, H30
        }

        _H30 = *&v24[2 * llroundf(v159)];
        v164 = (((_S19 * _S13) + (_S18 * _S21)) + (_S20 * _S14)) + (_S22 * fmaxf(_S21, fmaxf(_S13, _S14)));
        v165 = 8191.0;
        if (v164 <= 8191.0)
        {
          v165 = v164;
          if (v164 < 0.0)
          {
            v165 = 0.0;
          }
        }

        __asm { FCVT            S0, H30 }

        v167 = _S26 * _S0;
        v168 = _S11 * _S0;
        v169 = _S12 * _S0;
        _H1 = *&v24[2 * llroundf(v165)];
        __asm { FCVT            S1, H1 }

        v172 = _S21 * _S1;
        v173 = _S13 * _S1;
        v174 = _S14 * _S1;
        v175 = ((v212 * v168) + (v167 * v213)) + (v169 * v211);
        v176 = ((_S4 * v168) + (v167 * _S3)) + (v169 * _S5);
        v177 = ((_S7 * v168) + (v167 * _S6)) + (v169 * _S16);
        v178 = ((v212 * v173) + (v172 * v213)) + (v174 * v211);
        v179 = ((_S4 * v173) + (v172 * _S3)) + (v174 * _S5);
        v180 = ((_S7 * v173) + (v172 * _S6)) + (v174 * _S16);
        LOWORD(v173) = *&v28[2 * llroundf(fminf(fmaxf(v176, 0.0), 8191.0))];
        LOWORD(v177) = *&v28[2 * llroundf(fminf(fmaxf(v177, 0.0), 8191.0))];
        v181 = *&v28[2 * llroundf(fminf(fmaxf(v178, 0.0), 8191.0))];
        v182 = *&v28[2 * llroundf(fminf(fmaxf(v179, 0.0), 8191.0))];
        v183 = *&v28[2 * llroundf(fminf(fmaxf(v180, 0.0), 8191.0))];
        *v68 = *&v28[2 * llroundf(fminf(fmaxf(v175, 0.0), 8191.0))];
        *(v68 + 2) = LOWORD(v173);
        *(v68 + 4) = LOWORD(v177);
        if (v69)
        {
          v184 = _H31;
        }

        else
        {
          LOWORD(v184) = COERCE_UNSIGNED_INT(1.0);
        }

        *(v68 + 6) = v184;
        *(v68 + 8) = v181;
        *(v68 + 10) = v182;
        *(v68 + 12) = v183;
        if (v69)
        {
          v185 = _H9;
        }

        else
        {
          LOWORD(v185) = COERCE_UNSIGNED_INT(1.0);
        }

        *(v68 + 14) = v185;
        v68 += 16;
        v126 += 2;
        v70 = (v70 + 4);
        v67 = (v67 + 4);
      }

      v56 += v13;
      v54 += v188;
      v50 += v189;
      v55 += v14;
      ++v8;
    }

    while (v8 != v190);
  }

  *&v186[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_xf422_TRC_Tone_Mat_TRC_RGhA(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4, void *a5, uint64_t *a6, uint64_t a7, void *a8, void *a9)
{
  v62 = a8;
  v63 = a3;
  v69 = a5;
  v64 = a4;
  v70 = *MEMORY[0x1E69E9840];
  v10 = *(a1 + 162);
  v12 = *a2;
  v11 = a2[1];
  v13 = a2[2];
  v61 = a2[3];
  v14 = a2[4];
  v15 = a2[5];
  v16 = *a6;
  v65 = a6[1];
  v66 = v11;
  v18 = a6[2];
  v17 = a6[3];
  v59 = a1;
  v60 = v17;
  v20 = a6[4];
  v19 = a6[5];
  v67 = v16;
  v68 = v19;
  v22 = v14 + v13 != v12 || v20 + v18 != v16;
  if (v10 == 255)
  {
    v23 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v23)
    {
      v24 = 0;
LABEL_59:
      free(v23);
      return v24;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v10 + 160, a3, a4);
    v23 = (&v57 - v25);
    bzero(&v57 - v25, v26);
  }

  v58 = a7;
  v27 = a9;
  v28 = v18 - 1;
  v29 = v13 - 1;
  if (v20)
  {
    v30 = v14 + 1;
  }

  else
  {
    v29 = v13;
    v30 = v14;
  }

  if (v20)
  {
    v31 = v20 + 1;
  }

  else
  {
    v28 = v18;
    v31 = v20;
  }

  if (v28)
  {
    v32 = v64;
    if (v22 || (v33 = v29 + 1 + v30, v34 = 2 * v33, 2 * v33 > *v64) || ((2 * (v33 + (v33 >> 63))) & 0xFFFFFFFFFFFFFFFCLL) > v64[1] || (v35 = v64[2], v34 > v35) && v35 || (8 * (v31 + v28) + 8) > *v62)
    {
      --v28;
      --v29;
    }

    else
    {
      ++v28;
      ++v67;
      ++v12;
      ++v29;
    }
  }

  else
  {
    v32 = v64;
  }

  if (v29 + v30 > v12)
  {
    v29 = v12 - v30;
  }

  if (v28 + v31 > v67)
  {
    v28 = v67 - v31;
  }

  if (v15 + v61 <= v66)
  {
    v36 = v61;
  }

  else
  {
    v36 = v66 - v15;
  }

  if (v68 + v60 <= v65)
  {
    v37 = v60;
  }

  else
  {
    v37 = v65 - v68;
  }

  if (v29 >= v28)
  {
    v38 = v28;
  }

  else
  {
    v38 = v29;
  }

  if (v36 >= v37)
  {
    v39 = v37;
  }

  else
  {
    v39 = v36;
  }

  v40 = v15 + v39 - 1;
  v41 = v38 + v30;
  if ((*v32 * v40 + 2 * (v38 + v30)) <= *v69)
  {
    v46 = v63;
    if (*(v63 + 8) && v32[1] * v40 + 4 * ((v41 + 1 + ((v41 + 1) >> 63)) >> 1) > v69[1])
    {
      v61 = v30;
      v42 = v10;
      v43 = v12;
      v44 = v15;
      v45 = a9;
    }

    else if (*(v63 + 16) && (2 * v41 + v32[2] * v40) > v69[2])
    {
      v61 = v30;
      v42 = v10;
      v43 = v12;
      v44 = v15;
      v45 = a9;
    }

    else
    {
      if ((*v62 * (v68 + v39 - 1) + 8 * (v38 + v31)) <= *a9)
      {
        goto LABEL_53;
      }

      v61 = v30;
      v42 = v10;
      v43 = v12;
      v44 = v15;
      v45 = a9;
    }
  }

  else
  {
    v61 = v30;
    v42 = v10;
    v43 = v12;
    v44 = v15;
    v45 = a9;
  }

  fig_log_get_emitter();
  v47 = FigSignalErrorAtGM();
  v46 = v63;
  v32 = v64;
  v27 = v45;
  v15 = v44;
  v12 = v43;
  v10 = v42;
  v30 = v61;
  if (v47)
  {
    v24 = v47;
    goto LABEL_58;
  }

LABEL_53:
  *v23 = v10;
  *(v23 + 4) = v12;
  v48 = v65;
  *(v23 + 12) = v66;
  *(v23 + 20) = v38;
  *(v23 + 28) = v39;
  *(v23 + 36) = v30;
  *(v23 + 44) = v15;
  v23[11] = v48;
  v23[12] = v38;
  v23[13] = v39;
  v23[14] = v31;
  v23[7] = v46;
  v23[8] = v32;
  v49 = v67;
  v50 = v68;
  v23[9] = v69;
  v23[10] = v49;
  v51 = v58;
  v23[15] = v50;
  v23[16] = v51;
  v23[17] = v62;
  v23[18] = v27;
  v23[19] = v59;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v10, global_queue, v23, vt_Copy_xf422_TRC_Tone_Mat_TRC_RGhA_GCD);
  if (!v10)
  {
    return 0;
  }

  v53 = (v23 + 20);
  v54 = v10;
  while (1)
  {
    v55 = *v53++;
    v24 = v55;
    if (v55)
    {
      break;
    }

    if (!--v54)
    {
      v24 = 0;
      break;
    }
  }

LABEL_58:
  if (v10 == 255)
  {
    goto LABEL_59;
  }

  return v24;
}

unsigned __int8 *vt_Copy_xf422_TRC_Tone_Mat_TRC_RGhA_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, float a5)
{
  v5 = *result;
  v6 = *(result + 13);
  v7 = v6 * a2 / v5;
  v8 = (v6 + v6 * a2) / v5 - v7;
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = *(result + 19);
    v11 = *(result + 24) & 0xFFFFFFFE;
    v12 = *(result + 7);
    v13 = *(result + 8);
    v14 = *v13;
    v15 = v13[1];
    v16 = v13[2];
    v17 = **(result + 17);
    *&v18 = *(v10 + 128);
    v19 = 8191.0 / *&v18;
    LOWORD(v18) = *(v10 + 140);
    v20 = v18;
    LOWORD(a5) = *(v10 + 142);
    v21 = LODWORD(a5);
    v22 = v19 * *v10;
    v121 = v19 * *(v10 + 16);
    v122 = v19 * *(v10 + 8);
    v120 = v19 * *(v10 + 20);
    v23 = v19 * *(v10 + 28);
    v24 = *(v10 + 72);
    v25 = *(v10 + 76);
    v26 = *(v10 + 80);
    v27 = *(v10 + 84);
    v28 = *(v10 + 88);
    v29 = *(v10 + 92);
    v30 = *(v10 + 96);
    v31 = *(v10 + 100);
    v32 = v10 + 164;
    v33 = v10 + 16548;
    v34 = v10 + 32932;
    v35 = *(v10 + 104);
    v36 = *(v10 + 108);
    v37 = *(v10 + 112);
    v38 = *(v10 + 116);
    v39 = *(v10 + 120);
    v40 = v7 + *(result + 15);
    v41 = *(result + 28) * a2 / v5 + *(result + 44);
    v42 = *(v10 + 124);
    v43 = *(result + 36);
    if (v42 >= 0x11)
    {
      v44 = 0;
    }

    else
    {
      v44 = 16 - v42;
    }

    v45 = **(result + 16) + v17 * v40 + 8 * *(result + 14);
    v46 = v12[2];
    if (v46)
    {
      v47 = v46 + v41 * v16 + 2 * v43;
    }

    else
    {
      v47 = 0;
    }

    v49 = *v12;
    v48 = *(*(result + 7) + 8);
    _ZF = v48 == 0;
    v51 = v48 + v41 * v15 + 2 * v43;
    if (_ZF)
    {
      v51 = 0;
    }

    v52 = v49 + v41 * v14 + 2 * v43;
    v53 = v44;
    do
    {
      if (v11 >= 1)
      {
        v54 = 0;
        v55 = v52;
        v56 = v45;
        v57 = v47;
        do
        {
          v58 = (v51 + 2 * v54);
          v59 = (v58[1] >> v53) - v21;
          v60 = v122 * v59;
          v61 = v22 * ((*v55 >> v53) - v20);
          v62 = (v122 * v59) + v61;
          v63 = 8191.0;
          if (v62 <= 8191.0)
          {
            v63 = (v122 * v59) + v61;
            if (v62 < 0.0)
            {
              v63 = 0.0;
            }
          }

          v64 = (*v58 >> v53) - v21;
          v65 = v120 * v59;
          v66 = (v120 * v59) + (v64 * v121);
          v67 = 8191.0;
          if ((v61 + v66) <= 8191.0)
          {
            v67 = v61 + v66;
            if ((v61 + v66) < 0.0)
            {
              v67 = 0.0;
            }
          }

          v68 = v23 * v64;
          v69 = (v23 * v64) + v61;
          v70 = 8191.0;
          if (v69 <= 8191.0)
          {
            v70 = v69;
            if (v69 < 0.0)
            {
              v70 = 0.0;
            }
          }

          v71 = v22 * ((v55[1] >> v53) - v20);
          v72 = 8191.0;
          if ((v60 + v71) <= 8191.0)
          {
            v72 = v60 + v71;
            if ((v60 + v71) < 0.0)
            {
              v72 = 0.0;
            }
          }

          v73 = 8191.0;
          if ((v66 + v71) <= 8191.0)
          {
            v73 = v66 + v71;
            if ((v66 + v71) < 0.0)
            {
              v73 = 0.0;
            }
          }

          v74 = v68 + v71;
          v75 = (v68 + v71) <= 8191.0;
          v76 = 8191.0;
          if (v75)
          {
            v76 = v74;
            if (v74 < 0.0)
            {
              v76 = 0.0;
            }
          }

          if (v57)
          {
            LOWORD(v74) = *v57;
            LOWORD(v65) = v57[1];
            v57 += 2;
            _S4 = LODWORD(v74) * 0.000015259;
            _S5 = LODWORD(v65) * 0.000015259;
            __asm
            {
              FCVT            H31, S4
              FCVT            H8, S5
            }
          }

          else
          {
            LOWORD(_H31) = 0;
            LOWORD(_H8) = 0;
          }

          _S4 = fmaxf(v63, 0.0);
          v85 = 8191.0;
          LOWORD(_S4) = *(v32 + 2 * llroundf(fminf(_S4, 8191.0)));
          __asm { FCVT            S14, H4 }

          LOWORD(_S4) = *(v32 + 2 * llroundf(fminf(fmaxf(v67, 0.0), 8191.0)));
          __asm { FCVT            S10, H4 }

          LOWORD(_S4) = *(v32 + 2 * llroundf(fminf(fmaxf(v70, 0.0), 8191.0)));
          __asm { FCVT            S11, H4 }

          _H12 = *(v32 + 2 * llroundf(fminf(fmaxf(v72, 0.0), 8191.0)));
          _H13 = *(v32 + 2 * llroundf(fminf(fmaxf(v73, 0.0), 8191.0)));
          _H15 = *(v32 + 2 * llroundf(fminf(fmaxf(v76, 0.0), 8191.0)));
          v92 = (((v37 * _S10) + (v36 * _S14)) + (v38 * _S11)) + (v39 * fmaxf(_S14, fmaxf(_S10, _S11)));
          v93 = 8191.0;
          if (v92 <= 8191.0)
          {
            v93 = v92;
            if (v92 < 0.0)
            {
              v93 = 0.0;
            }
          }

          __asm
          {
            FCVT            S12, H12
            FCVT            S13, H13
            FCVT            S15, H15
          }

          _H4 = *(v33 + 2 * llroundf(v93));
          v98 = fmaxf(_S12, fmaxf(_S13, _S15));
          v99 = (((v37 * _S13) + (v36 * _S12)) + (v38 * _S15)) + (v39 * v98);
          if (v99 <= 8191.0)
          {
            v85 = (((v37 * _S13) + (v36 * _S12)) + (v38 * _S15)) + (v39 * v98);
            if (v99 < 0.0)
            {
              v85 = 0.0;
            }
          }

          __asm { FCVT            S4, H4 }

          v101 = _S14 * _S4;
          v102 = _S10 * _S4;
          v103 = _S11 * _S4;
          _H9 = *(v33 + 2 * llroundf(v85));
          __asm { FCVT            S9, H9 }

          v106 = _S12 * _S9;
          v107 = _S13 * _S9;
          v108 = _S15 * _S9;
          v109 = ((v25 * v102) + (v101 * v24)) + (v103 * v26);
          v110 = ((v28 * v102) + (v101 * v27)) + (v103 * v29);
          v111 = ((v31 * v102) + (v101 * v30)) + (v103 * v35);
          v112 = ((v25 * v107) + (v106 * v24)) + (v108 * v26);
          v113 = ((v28 * v107) + (v106 * v27)) + (v108 * v29);
          v114 = ((v31 * v107) + (v106 * v30)) + (v108 * v35);
          LOWORD(v107) = *(v34 + 2 * llroundf(fminf(fmaxf(v110, 0.0), 8191.0)));
          LOWORD(v111) = *(v34 + 2 * llroundf(fminf(fmaxf(v111, 0.0), 8191.0)));
          v115 = *(v34 + 2 * llroundf(fminf(fmaxf(v112, 0.0), 8191.0)));
          v116 = *(v34 + 2 * llroundf(fminf(fmaxf(v113, 0.0), 8191.0)));
          v117 = *(v34 + 2 * llroundf(fminf(fmaxf(v114, 0.0), 8191.0)));
          *v56 = *(v34 + 2 * llroundf(fminf(fmaxf(v109, 0.0), 8191.0)));
          *(v56 + 2) = LOWORD(v107);
          *(v56 + 4) = LOWORD(v111);
          if (v57)
          {
            v118 = _H31;
          }

          else
          {
            LOWORD(v118) = COERCE_UNSIGNED_INT(1.0);
          }

          *(v56 + 6) = v118;
          *(v56 + 8) = v115;
          *(v56 + 10) = v116;
          *(v56 + 12) = v117;
          if (v57)
          {
            v119 = _H8;
          }

          else
          {
            LOWORD(v119) = COERCE_UNSIGNED_INT(1.0);
          }

          *(v56 + 14) = v119;
          v54 += 2;
          v55 += 2;
          v56 += 16;
        }

        while (v54 < v11);
      }

      v52 += v14;
      v51 += v15;
      v47 += v16;
      v45 += v17;
      ++v9;
    }

    while (v9 != v8);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_xf422_TRC_Mat_TRC_RGhA_neon_fp16(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4, void *a5, uint64_t *a6, uint64_t a7, void *a8, void *a9)
{
  v62 = a8;
  v63 = a3;
  v69 = a5;
  v64 = a4;
  v70 = *MEMORY[0x1E69E9840];
  v10 = *(a1 + 162);
  v12 = *a2;
  v11 = a2[1];
  v13 = a2[2];
  v61 = a2[3];
  v14 = a2[4];
  v15 = a2[5];
  v16 = *a6;
  v65 = a6[1];
  v66 = v11;
  v18 = a6[2];
  v17 = a6[3];
  v59 = a1;
  v60 = v17;
  v20 = a6[4];
  v19 = a6[5];
  v67 = v16;
  v68 = v19;
  v22 = v14 + v13 != v12 || v20 + v18 != v16;
  if (v10 == 255)
  {
    v23 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v23)
    {
      v24 = 0;
LABEL_59:
      free(v23);
      return v24;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v10 + 160, a3, a4);
    v23 = (&v57 - v25);
    bzero(&v57 - v25, v26);
  }

  v58 = a7;
  v27 = a9;
  v28 = v18 - 1;
  v29 = v13 - 1;
  if (v20)
  {
    v30 = v14 + 1;
  }

  else
  {
    v29 = v13;
    v30 = v14;
  }

  if (v20)
  {
    v31 = v20 + 1;
  }

  else
  {
    v28 = v18;
    v31 = v20;
  }

  if (v28)
  {
    v32 = v64;
    if (v22 || (v33 = v29 + 1 + v30, v34 = 2 * v33, 2 * v33 > *v64) || ((2 * (v33 + (v33 >> 63))) & 0xFFFFFFFFFFFFFFFCLL) > v64[1] || (v35 = v64[2], v34 > v35) && v35 || (8 * (v31 + v28) + 8) > *v62)
    {
      --v28;
      --v29;
    }

    else
    {
      ++v28;
      ++v67;
      ++v12;
      ++v29;
    }
  }

  else
  {
    v32 = v64;
  }

  if (v29 + v30 > v12)
  {
    v29 = v12 - v30;
  }

  if (v28 + v31 > v67)
  {
    v28 = v67 - v31;
  }

  if (v15 + v61 <= v66)
  {
    v36 = v61;
  }

  else
  {
    v36 = v66 - v15;
  }

  if (v68 + v60 <= v65)
  {
    v37 = v60;
  }

  else
  {
    v37 = v65 - v68;
  }

  if (v29 >= v28)
  {
    v38 = v28;
  }

  else
  {
    v38 = v29;
  }

  if (v36 >= v37)
  {
    v39 = v37;
  }

  else
  {
    v39 = v36;
  }

  v40 = v15 + v39 - 1;
  v41 = v38 + v30;
  if ((*v32 * v40 + 2 * (v38 + v30)) <= *v69)
  {
    v46 = v63;
    if (*(v63 + 8) && v32[1] * v40 + 4 * ((v41 + 1 + ((v41 + 1) >> 63)) >> 1) > v69[1])
    {
      v61 = v30;
      v42 = v10;
      v43 = v12;
      v44 = v15;
      v45 = a9;
    }

    else if (*(v63 + 16) && (2 * v41 + v32[2] * v40) > v69[2])
    {
      v61 = v30;
      v42 = v10;
      v43 = v12;
      v44 = v15;
      v45 = a9;
    }

    else
    {
      if ((*v62 * (v68 + v39 - 1) + 8 * (v38 + v31)) <= *a9)
      {
        goto LABEL_53;
      }

      v61 = v30;
      v42 = v10;
      v43 = v12;
      v44 = v15;
      v45 = a9;
    }
  }

  else
  {
    v61 = v30;
    v42 = v10;
    v43 = v12;
    v44 = v15;
    v45 = a9;
  }

  fig_log_get_emitter();
  v47 = FigSignalErrorAtGM();
  v46 = v63;
  v32 = v64;
  v27 = v45;
  v15 = v44;
  v12 = v43;
  v10 = v42;
  v30 = v61;
  if (v47)
  {
    v24 = v47;
    goto LABEL_58;
  }

LABEL_53:
  *v23 = v10;
  *(v23 + 4) = v12;
  v48 = v65;
  *(v23 + 12) = v66;
  *(v23 + 20) = v38;
  *(v23 + 28) = v39;
  *(v23 + 36) = v30;
  *(v23 + 44) = v15;
  v23[11] = v48;
  v23[12] = v38;
  v23[13] = v39;
  v23[14] = v31;
  v23[7] = v46;
  v23[8] = v32;
  v49 = v67;
  v50 = v68;
  v23[9] = v69;
  v23[10] = v49;
  v51 = v58;
  v23[15] = v50;
  v23[16] = v51;
  v23[17] = v62;
  v23[18] = v27;
  v23[19] = v59;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v10, global_queue, v23, vt_Copy_xf422_TRC_Mat_TRC_RGhA_neon_fp16_GCD);
  if (!v10)
  {
    return 0;
  }

  v53 = (v23 + 20);
  v54 = v10;
  while (1)
  {
    v55 = *v53++;
    v24 = v55;
    if (v55)
    {
      break;
    }

    if (!--v54)
    {
      v24 = 0;
      break;
    }
  }

LABEL_58:
  if (v10 == 255)
  {
    goto LABEL_59;
  }

  return v24;
}

char *vt_Copy_xf422_TRC_Mat_TRC_RGhA_neon_fp16_GCD(char *result, uint64_t a2, int16x8_t _Q0)
{
  v6 = *result;
  v163 = result;
  v7 = *(result + 13);
  v8 = v7 * a2 / v6;
  v167 = (v7 + v7 * a2) / v6 - v8;
  if (v167 >= 1)
  {
    v9 = 0;
    result = *(result + 24);
    v10 = *(v163 + 19);
    v11 = *(v163 + 7);
    v12 = *(v163 + 8);
    v13 = *v12;
    v14 = **(v163 + 17);
    v15 = v10[17].u16[2];
    v16 = v10[17].u16[3];
    v17.i32[0] = v10[3].i32[1];
    _Q0.i32[0] = v10[9].i32[0];
    _S1 = v10[9].f32[1];
    _S2 = v10[10].f32[0];
    _S3 = v10[10].f32[1];
    _S4 = v10[11].f32[0];
    _S5 = v10[11].f32[1];
    _S6 = v10[12].f32[0];
    _S7 = v10[12].f32[1];
    _S16 = v10[13].f32[0];
    v26 = result - 7;
    v27 = &v10[20] + 4;
    v28 = result & 0xFFFFFFFE;
    v3.f32[0] = 8191.0 / v10[16].u32[0];
    v29 = v15;
    v30 = v16;
    _S20 = v3.f32[0] * v10->f32[0];
    v32 = &v10[2068] + 4;
    __asm { FCVT            H8, S20 }

    *v4.i16 = v15;
    v17.i32[1] = v10[1].i32[0];
    *v5.f32 = vmul_n_f32(v17, v3.f32[0]);
    v38 = -v16;
    *v3.f32 = vmul_n_f32(v10[2], v3.f32[0]);
    v180 = vdupq_lane_s32(vcvt_f16_f32(v5), 0);
    v181 = vdupq_lane_s16(v4, 0);
    v178 = vmulq_n_f16(v180, v38);
    v179 = vdupq_lane_s32(vcvt_f16_f32(v3), 0);
    v39 = vmulq_n_f16(v179, v38);
    __asm { FCVT            H9, S0 }

    v176 = _H9;
    v177 = v39;
    __asm { FCVT            H9, S1 }

    v175 = _H9;
    __asm { FCVT            H9, S2 }

    v174 = _H9;
    __asm { FCVT            H9, S3 }

    v173 = _H9;
    __asm { FCVT            H9, S4 }

    v172 = _H9;
    __asm { FCVT            H9, S5 }

    v171 = _H9;
    __asm { FCVT            H9, S6 }

    v170 = _H9;
    __asm { FCVT            H9, S7 }

    v169 = _H9;
    __asm { FCVT            H9, S16 }

    v168 = _H9;
    LODWORD(v10) = v10[15].u8[4];
    v49 = 16 - v10;
    v50 = v11[2];
    v51 = *(v163 + 28) * a2 / v6 + *(v163 + 44);
    v166 = v12[2];
    v52 = *(v163 + 36);
    v53 = v50 + v166 * v51 + 2 * v52;
    v54 = v8 + *(v163 + 15);
    v55 = *v11;
    v56 = *(*(v163 + 7) + 8);
    _CF = v10 >= 0x11;
    v57 = v12[1];
    v58 = v56 + v57 * v51 + 2 * v52;
    if (_CF)
    {
      v49 = 0;
    }

    v59 = **(v163 + 16) + v14 * v54 + 8 * *(v163 + 14);
    if (!v50)
    {
      v53 = 0;
    }

    if (!v56)
    {
      v58 = 0;
    }

    v60 = vdupq_n_s16(-v49);
    v61 = v13;
    v62 = v55 + v13 * v51 + 2 * v52;
    v63 = result;
    v165 = result & 0xFFFFFFF8;
    v64 = v5.i64[0];
    v65.i64[0] = 0x9000900090009000;
    v65.i64[1] = 0x9000900090009000;
    do
    {
      if (v63 < 8)
      {
        v120 = 0;
        v70 = v58;
        v69 = v53;
        v68 = v59;
        v67 = v62;
      }

      else
      {
        v66 = 0;
        v67 = v62;
        v68 = v59;
        v69 = v53;
        v70 = v58;
        do
        {
          if (v69 && (v71 = *v69, v69 += 16, v72 = v71, v69))
          {
            *v73.i8 = vzip1_s16(*v72.i8, 0);
            v73.u64[1] = vzip2_s16(*v72.i8, 0);
            v74 = vextq_s8(v72, v72, 8uLL).u64[0];
            *v75.i8 = vzip1_s16(v74, 0);
            v75.u64[1] = vzip2_s16(v74, 0);
            v76 = vcvtq_f32_u32(v75);
            v77 = vdupq_n_s32(0x37800080u);
            v78 = vcvt_hight_f16_f32(vcvt_f16_f32(vmulq_f32(vcvtq_f32_u32(v73), v77)), vmulq_f32(v76, v77));
          }

          else
          {
            v78.i64[0] = 0x3C003C003C003C00;
            v78.i64[1] = 0x3C003C003C003C00;
          }

          v79 = *v70++;
          v80 = vcvtq_f16_u16(vshlq_u16(v79, v60));
          v81 = vmlaq_f16(v178, v180, v80);
          v82 = vmlaq_f16(v177, v179, v80);
          v83 = vuzp1q_s16(v82, _Q0).u64[0];
          v84 = vuzp2q_s16(v82, _Q0);
          *v84.i8 = vadd_f16(v83, *v84.i8);
          v85 = vzip1q_s16(v84, v84);
          v86 = *v67++;
          v87 = vsubq_f16(vcvtq_f16_u16(vshlq_u16(v86, v60)), v181);
          v88 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vtrn2q_s16(v81, v81), v87, _H8), 0), v65));
          v80.i16[0] = *&v27[2 * v88.u16[0]];
          v80.i16[1] = *&v27[2 * v88.u16[1]];
          v80.i16[2] = *&v27[2 * v88.u16[2]];
          v80.i16[3] = *&v27[2 * v88.u16[3]];
          v80.i16[4] = *&v27[2 * v88.u16[4]];
          v80.i16[5] = *&v27[2 * v88.u16[5]];
          v80.i16[6] = *&v27[2 * v88.u16[6]];
          v80.i16[7] = *&v27[2 * v88.u16[7]];
          v89 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(v85, v87, _H8), 0), v65));
          v88.i16[0] = *&v27[2 * v89.u16[0]];
          v88.i16[1] = *&v27[2 * v89.u16[1]];
          v88.i16[2] = *&v27[2 * v89.u16[2]];
          v88.i16[3] = *&v27[2 * v89.u16[3]];
          v88.i16[4] = *&v27[2 * v89.u16[4]];
          v88.i16[5] = *&v27[2 * v89.u16[5]];
          v88.i16[6] = *&v27[2 * v89.u16[6]];
          v88.i16[7] = *&v27[2 * v89.u16[7]];
          v90 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vtrn1q_s16(v81, v81), v87, _H8), 0), v65));
          v81.i16[0] = *&v27[2 * v90.u16[0]];
          v81.i16[1] = *&v27[2 * v90.u16[1]];
          v81.i16[2] = *&v27[2 * v90.u16[2]];
          v81.i16[3] = *&v27[2 * v90.u16[3]];
          v81.i16[4] = *&v27[2 * v90.u16[4]];
          v81.i16[5] = *&v27[2 * v90.u16[5]];
          v81.i16[6] = *&v27[2 * v90.u16[6]];
          v81.i16[7] = *&v27[2 * v90.u16[7]];
          v91 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v80, v173), v88, v172), v81, v171);
          v92 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v81, v168), v88, v169), v80, v170);
          v93 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v80, v176), v88, v175), v81, v174), 0), v65));
          v94 = *&v32[2 * v93.u16[0]];
          v95 = *&v32[2 * v93.u16[1]];
          v96 = *&v32[2 * v93.u16[2]];
          v97 = *&v32[2 * v93.u16[3]];
          v98 = *&v32[2 * v93.u16[4]];
          v99 = *&v32[2 * v93.u16[5]];
          v100 = *&v32[2 * v93.u16[6]];
          v101 = *&v32[2 * v93.u16[7]];
          v102 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v91, 0), v65));
          v103 = *&v32[2 * v102.u16[0]];
          v104 = *&v32[2 * v102.u16[1]];
          v105 = *&v32[2 * v102.u16[2]];
          v106 = *&v32[2 * v102.u16[3]];
          v107 = *&v32[2 * v102.u16[4]];
          v108 = *&v32[2 * v102.u16[5]];
          v109 = *&v32[2 * v102.u16[6]];
          v110 = *&v32[2 * v102.u16[7]];
          v111 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v92, 0), v65));
          v112 = *&v32[2 * v111.u16[0]];
          result = &v32[2 * v111.u16[3]];
          v113 = *&v32[2 * v111.u16[1]];
          v114 = *&v32[2 * v111.u16[2]];
          v115 = *result;
          v116 = *&v32[2 * v111.u16[4]];
          v117 = *&v32[2 * v111.u16[5]];
          v118 = *&v32[2 * v111.u16[6]];
          v119 = *&v32[2 * v111.u16[7]];
          vst4q_s16(v68, *(&v78 - 3));
          v68 += 64;
          v66 += 8;
        }

        while (v66 < v26);
        v120 = v165;
      }

      while (v120 < v28)
      {
        v121 = (v70->u16[1] >> v49) - v30;
        v122 = *(&v64 + 1) * v121;
        v123 = _S20 * ((v67->u16[0] >> v49) - v29);
        v124 = (*(&v64 + 1) * v121) + v123;
        v125 = 8191.0;
        if (v124 <= 8191.0)
        {
          v125 = (*(&v64 + 1) * v121) + v123;
          if (v124 < 0.0)
          {
            v125 = 0.0;
          }
        }

        v126 = (v70->u16[0] >> v49) - v30;
        v127 = (v3.f32[1] * v121) + (v126 * v3.f32[0]);
        v128 = 8191.0;
        if ((v123 + v127) <= 8191.0)
        {
          v128 = v123 + v127;
          if ((v123 + v127) < 0.0)
          {
            v128 = 0.0;
          }
        }

        v129 = *&v64 * v126;
        v130 = v129 + v123;
        v131 = (v129 + v123) <= 8191.0;
        v132 = 8191.0;
        if (v131)
        {
          v132 = v130;
          if (v130 < 0.0)
          {
            v132 = 0.0;
          }
        }

        v133 = (v67->u16[1] >> v49) - v29;
        v134 = _S20 * v133;
        v135 = v122 + (_S20 * v133);
        v136 = 8191.0;
        if (v135 <= 8191.0)
        {
          v136 = v135;
          if (v135 < 0.0)
          {
            v136 = 0.0;
          }
        }

        v137 = 8191.0;
        if ((v127 + v134) <= 8191.0)
        {
          v137 = v127 + v134;
          if ((v127 + v134) < 0.0)
          {
            v137 = 0.0;
          }
        }

        v138 = v129 + v134;
        v139 = 8191.0;
        if (v138 <= 8191.0)
        {
          v139 = v138;
          if (v138 < 0.0)
          {
            v139 = 0.0;
          }
        }

        if (v69)
        {
          LOWORD(v133) = *v69;
          LOWORD(v138) = *(v69 + 2);
          v69 += 4;
          _S27 = LODWORD(v133) * 0.000015259;
          _S9 = LODWORD(v138) * 0.000015259;
          __asm
          {
            FCVT            H12, S27
            FCVT            H13, S9
          }
        }

        else
        {
          LOWORD(_H12) = 0;
          LOWORD(_H13) = 0;
        }

        _H27 = *&v27[2 * llroundf(fminf(fmaxf(v125, 0.0), 8191.0))];
        __asm { FCVT            S27, H27 }

        _H9 = *&v27[2 * llroundf(fminf(fmaxf(v128, 0.0), 8191.0))];
        __asm { FCVT            S9, H9 }

        _H25 = *&v27[2 * llroundf(fminf(fmaxf(v132, 0.0), 8191.0))];
        __asm { FCVT            S25, H25 }

        _H11 = *&v27[2 * llroundf(fminf(fmaxf(v136, 0.0), 8191.0))];
        __asm { FCVT            S11, H11 }

        _H14 = *&v27[2 * llroundf(fminf(fmaxf(v137, 0.0), 8191.0))];
        _H26 = *&v27[2 * llroundf(fminf(fmaxf(v139, 0.0), 8191.0))];
        __asm
        {
          FCVT            S14, H14
          FCVT            S26, H26
        }

        v156 = ((_S1 * _S9) + (_S27 * *_Q0.i32)) + (_S25 * _S2);
        v157 = *&v32[2 * llroundf(fminf(fmaxf(((_S4 * _S9) + (_S27 * _S3)) + (_S25 * _S5), 0.0), 8191.0))];
        LOWORD(_S25) = *&v32[2 * llroundf(fminf(fmaxf(((_S7 * _S9) + (_S27 * _S6)) + (_S25 * _S16), 0.0), 8191.0))];
        v158 = *&v32[2 * llroundf(fminf(fmaxf(((_S1 * _S14) + (_S11 * *_Q0.i32)) + (_S26 * _S2), 0.0), 8191.0))];
        v159 = *&v32[2 * llroundf(fminf(fmaxf(((_S4 * _S14) + (_S11 * _S3)) + (_S26 * _S5), 0.0), 8191.0))];
        v160 = *&v32[2 * llroundf(fminf(fmaxf(((_S7 * _S14) + (_S11 * _S6)) + (_S26 * _S16), 0.0), 8191.0))];
        *v68 = *&v32[2 * llroundf(fminf(fmaxf(v156, 0.0), 8191.0))];
        *(v68 + 2) = v157;
        *(v68 + 4) = LOWORD(_S25);
        if (v69)
        {
          v161 = _H12;
        }

        else
        {
          LOWORD(v161) = COERCE_UNSIGNED_INT(1.0);
        }

        *(v68 + 6) = v161;
        *(v68 + 8) = v158;
        *(v68 + 10) = v159;
        *(v68 + 12) = v160;
        if (v69)
        {
          v162 = _H13;
        }

        else
        {
          LOWORD(v162) = COERCE_UNSIGNED_INT(1.0);
        }

        *(v68 + 14) = v162;
        v68 += 16;
        v120 += 2;
        v70 = (v70 + 4);
        v67 = (v67 + 4);
      }

      v62 += v61;
      v58 += v57;
      v53 += v166;
      v59 += v14;
      ++v9;
    }

    while (v9 != v167);
  }

  *&v163[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_xf422_TRC_Mat_TRC_RGhA(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4, void *a5, uint64_t *a6, uint64_t a7, void *a8, void *a9)
{
  v62 = a8;
  v63 = a3;
  v69 = a5;
  v64 = a4;
  v70 = *MEMORY[0x1E69E9840];
  v10 = *(a1 + 162);
  v12 = *a2;
  v11 = a2[1];
  v13 = a2[2];
  v61 = a2[3];
  v14 = a2[4];
  v15 = a2[5];
  v16 = *a6;
  v65 = a6[1];
  v66 = v11;
  v18 = a6[2];
  v17 = a6[3];
  v59 = a1;
  v60 = v17;
  v20 = a6[4];
  v19 = a6[5];
  v67 = v16;
  v68 = v19;
  v22 = v14 + v13 != v12 || v20 + v18 != v16;
  if (v10 == 255)
  {
    v23 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v23)
    {
      v24 = 0;
LABEL_59:
      free(v23);
      return v24;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v10 + 160, a3, a4);
    v23 = (&v57 - v25);
    bzero(&v57 - v25, v26);
  }

  v58 = a7;
  v27 = a9;
  v28 = v18 - 1;
  v29 = v13 - 1;
  if (v20)
  {
    v30 = v14 + 1;
  }

  else
  {
    v29 = v13;
    v30 = v14;
  }

  if (v20)
  {
    v31 = v20 + 1;
  }

  else
  {
    v28 = v18;
    v31 = v20;
  }

  if (v28)
  {
    v32 = v64;
    if (v22 || (v33 = v29 + 1 + v30, v34 = 2 * v33, 2 * v33 > *v64) || ((2 * (v33 + (v33 >> 63))) & 0xFFFFFFFFFFFFFFFCLL) > v64[1] || (v35 = v64[2], v34 > v35) && v35 || (8 * (v31 + v28) + 8) > *v62)
    {
      --v28;
      --v29;
    }

    else
    {
      ++v28;
      ++v67;
      ++v12;
      ++v29;
    }
  }

  else
  {
    v32 = v64;
  }

  if (v29 + v30 > v12)
  {
    v29 = v12 - v30;
  }

  if (v28 + v31 > v67)
  {
    v28 = v67 - v31;
  }

  if (v15 + v61 <= v66)
  {
    v36 = v61;
  }

  else
  {
    v36 = v66 - v15;
  }

  if (v68 + v60 <= v65)
  {
    v37 = v60;
  }

  else
  {
    v37 = v65 - v68;
  }

  if (v29 >= v28)
  {
    v38 = v28;
  }

  else
  {
    v38 = v29;
  }

  if (v36 >= v37)
  {
    v39 = v37;
  }

  else
  {
    v39 = v36;
  }

  v40 = v15 + v39 - 1;
  v41 = v38 + v30;
  if ((*v32 * v40 + 2 * (v38 + v30)) <= *v69)
  {
    v46 = v63;
    if (*(v63 + 8) && v32[1] * v40 + 4 * ((v41 + 1 + ((v41 + 1) >> 63)) >> 1) > v69[1])
    {
      v61 = v30;
      v42 = v10;
      v43 = v12;
      v44 = v15;
      v45 = a9;
    }

    else if (*(v63 + 16) && (2 * v41 + v32[2] * v40) > v69[2])
    {
      v61 = v30;
      v42 = v10;
      v43 = v12;
      v44 = v15;
      v45 = a9;
    }

    else
    {
      if ((*v62 * (v68 + v39 - 1) + 8 * (v38 + v31)) <= *a9)
      {
        goto LABEL_53;
      }

      v61 = v30;
      v42 = v10;
      v43 = v12;
      v44 = v15;
      v45 = a9;
    }
  }

  else
  {
    v61 = v30;
    v42 = v10;
    v43 = v12;
    v44 = v15;
    v45 = a9;
  }

  fig_log_get_emitter();
  v47 = FigSignalErrorAtGM();
  v46 = v63;
  v32 = v64;
  v27 = v45;
  v15 = v44;
  v12 = v43;
  v10 = v42;
  v30 = v61;
  if (v47)
  {
    v24 = v47;
    goto LABEL_58;
  }

LABEL_53:
  *v23 = v10;
  *(v23 + 4) = v12;
  v48 = v65;
  *(v23 + 12) = v66;
  *(v23 + 20) = v38;
  *(v23 + 28) = v39;
  *(v23 + 36) = v30;
  *(v23 + 44) = v15;
  v23[11] = v48;
  v23[12] = v38;
  v23[13] = v39;
  v23[14] = v31;
  v23[7] = v46;
  v23[8] = v32;
  v49 = v67;
  v50 = v68;
  v23[9] = v69;
  v23[10] = v49;
  v51 = v58;
  v23[15] = v50;
  v23[16] = v51;
  v23[17] = v62;
  v23[18] = v27;
  v23[19] = v59;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v10, global_queue, v23, vt_Copy_xf422_TRC_Mat_TRC_RGhA_GCD);
  if (!v10)
  {
    return 0;
  }

  v53 = (v23 + 20);
  v54 = v10;
  while (1)
  {
    v55 = *v53++;
    v24 = v55;
    if (v55)
    {
      break;
    }

    if (!--v54)
    {
      v24 = 0;
      break;
    }
  }

LABEL_58:
  if (v10 == 255)
  {
    goto LABEL_59;
  }

  return v24;
}

unsigned __int8 *vt_Copy_xf422_TRC_Mat_TRC_RGhA_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, float a5)
{
  v5 = *result;
  v6 = *(result + 13);
  v7 = v6 * a2 / v5;
  v8 = (v6 + v6 * a2) / v5 - v7;
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = *(result + 19);
    v11 = *(result + 24) & 0xFFFFFFFE;
    v12 = *(result + 7);
    v13 = *(result + 8);
    v14 = *v13;
    v15 = v13[1];
    v16 = v13[2];
    v17 = **(result + 17);
    *&v18 = *(v10 + 128);
    v19 = 8191.0 / *&v18;
    LOWORD(v18) = *(v10 + 140);
    v20 = v18;
    LOWORD(a5) = *(v10 + 142);
    v21 = LODWORD(a5);
    v22 = v19 * *v10;
    v23 = v19 * *(v10 + 8);
    v24 = v19 * *(v10 + 16);
    v25 = v19 * *(v10 + 20);
    v26 = v19 * *(v10 + 28);
    v27 = *(v10 + 72);
    v28 = *(v10 + 76);
    v29 = *(v10 + 80);
    v30 = *(v10 + 84);
    v31 = *(v10 + 88);
    v32 = *(v10 + 92);
    v33 = *(v10 + 96);
    v34 = *(v10 + 100);
    v35 = *(v10 + 104);
    v36 = v10 + 164;
    v37 = v10 + 16548;
    v38 = v7 + *(result + 15);
    v39 = *(result + 28) * a2 / v5 + *(result + 44);
    v40 = *(v10 + 124);
    v41 = *(result + 36);
    if (v40 >= 0x11)
    {
      v42 = 0;
    }

    else
    {
      v42 = 16 - v40;
    }

    v43 = **(result + 16) + v17 * v38 + 8 * *(result + 14);
    v44 = v12[2];
    if (v44)
    {
      v45 = v44 + v39 * v16 + 2 * v41;
    }

    else
    {
      v45 = 0;
    }

    v47 = *v12;
    v46 = *(*(result + 7) + 8);
    _ZF = v46 == 0;
    v49 = v46 + v39 * v15 + 2 * v41;
    if (_ZF)
    {
      v49 = 0;
    }

    v50 = v47 + v39 * v14 + 2 * v41;
    v51 = v42;
    do
    {
      if (v11 >= 1)
      {
        v52 = 0;
        v53 = v50;
        v54 = v43;
        v55 = v45;
        do
        {
          v56 = (v49 + 2 * v52);
          v57 = (v56[1] >> v51) - v21;
          v58 = v23 * v57;
          v59 = v22 * ((*v53 >> v51) - v20);
          v60 = (v23 * v57) + v59;
          v61 = 8191.0;
          if (v60 <= 8191.0)
          {
            v61 = (v23 * v57) + v59;
            if (v60 < 0.0)
            {
              v61 = 0.0;
            }
          }

          v62 = (*v56 >> v51) - v21;
          v63 = (v25 * v57) + (v62 * v24);
          v64 = 8191.0;
          if ((v59 + v63) <= 8191.0)
          {
            v64 = v59 + v63;
            if ((v59 + v63) < 0.0)
            {
              v64 = 0.0;
            }
          }

          v65 = v26 * v62;
          v66 = (v26 * v62) + v59;
          v67 = 8191.0;
          if (v66 <= 8191.0)
          {
            v67 = v66;
            if (v66 < 0.0)
            {
              v67 = 0.0;
            }
          }

          v68 = v22 * ((v53[1] >> v51) - v20);
          v69 = v58 + v68;
          v70 = 8191.0;
          if (v69 <= 8191.0)
          {
            v70 = v69;
            if (v69 < 0.0)
            {
              v70 = 0.0;
            }
          }

          v71 = 8191.0;
          if ((v63 + v68) <= 8191.0)
          {
            v71 = v63 + v68;
            if ((v63 + v68) < 0.0)
            {
              v71 = 0.0;
            }
          }

          v72 = v65 + v68;
          v73 = (v65 + v68) <= 8191.0;
          v74 = 8191.0;
          if (v73)
          {
            v74 = v72;
            if (v72 < 0.0)
            {
              v74 = 0.0;
            }
          }

          if (v55)
          {
            LOWORD(v72) = *v55;
            LOWORD(v63) = v55[1];
            v55 += 2;
            _S30 = LODWORD(v72) * 0.000015259;
            _S31 = LODWORD(v63) * 0.000015259;
            __asm
            {
              FCVT            H30, S30
              FCVT            H31, S31
            }
          }

          else
          {
            LOWORD(_H30) = 0;
            LOWORD(_H31) = 0;
          }

          _H27 = *(v36 + 2 * llroundf(fminf(fmaxf(v61, 0.0), 8191.0)));
          __asm { FCVT            S27, H27 }

          _H28 = *(v36 + 2 * llroundf(fminf(fmaxf(v64, 0.0), 8191.0)));
          __asm { FCVT            S28, H28 }

          _H29 = *(v36 + 2 * llroundf(fminf(fmaxf(v67, 0.0), 8191.0)));
          __asm { FCVT            S29, H29 }

          _H8 = *(v36 + 2 * llroundf(fminf(fmaxf(v70, 0.0), 8191.0)));
          __asm { FCVT            S8, H8 }

          _H9 = *(v36 + 2 * llroundf(fminf(fmaxf(v71, 0.0), 8191.0)));
          _H10 = *(v36 + 2 * llroundf(fminf(fmaxf(v74, 0.0), 8191.0)));
          __asm
          {
            FCVT            S9, H9
            FCVT            S10, H10
          }

          v94 = ((v28 * _S28) + (_S27 * v27)) + (_S29 * v29);
          v95 = ((v31 * _S28) + (_S27 * v30)) + (_S29 * v32);
          v96 = ((v34 * _S28) + (_S27 * v33)) + (_S29 * v35);
          v97 = ((v28 * _S9) + (_S8 * v27)) + (_S10 * v29);
          v98 = ((v31 * _S9) + (_S8 * v30)) + (_S10 * v32);
          v99 = ((v34 * _S9) + (_S8 * v33)) + (_S10 * v35);
          LOWORD(_S10) = *(v37 + 2 * llroundf(fminf(fmaxf(v95, 0.0), 8191.0)));
          LOWORD(v96) = *(v37 + 2 * llroundf(fminf(fmaxf(v96, 0.0), 8191.0)));
          v100 = *(v37 + 2 * llroundf(fminf(fmaxf(v97, 0.0), 8191.0)));
          v101 = *(v37 + 2 * llroundf(fminf(fmaxf(v98, 0.0), 8191.0)));
          v102 = *(v37 + 2 * llroundf(fminf(fmaxf(v99, 0.0), 8191.0)));
          *v54 = *(v37 + 2 * llroundf(fminf(fmaxf(v94, 0.0), 8191.0)));
          *(v54 + 2) = LOWORD(_S10);
          *(v54 + 4) = LOWORD(v96);
          if (v55)
          {
            v103 = _H30;
          }

          else
          {
            LOWORD(v103) = COERCE_UNSIGNED_INT(1.0);
          }

          *(v54 + 6) = v103;
          *(v54 + 8) = v100;
          *(v54 + 10) = v101;
          *(v54 + 12) = v102;
          if (v55)
          {
            v104 = _H31;
          }

          else
          {
            LOWORD(v104) = COERCE_UNSIGNED_INT(1.0);
          }

          *(v54 + 14) = v104;
          v52 += 2;
          v53 += 2;
          v54 += 16;
        }

        while (v52 < v11);
      }

      v50 += v14;
      v49 += v15;
      v45 += v16;
      v43 += v17;
      ++v9;
    }

    while (v9 != v8);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_xf422_rgb_RGhA_neon_fp16(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4, void *a5, uint64_t *a6, uint64_t a7, void *a8, void *a9)
{
  v62 = a8;
  v63 = a3;
  v69 = a5;
  v64 = a4;
  v70 = *MEMORY[0x1E69E9840];
  v10 = *(a1 + 162);
  v12 = *a2;
  v11 = a2[1];
  v13 = a2[2];
  v61 = a2[3];
  v14 = a2[4];
  v15 = a2[5];
  v16 = *a6;
  v65 = a6[1];
  v66 = v11;
  v18 = a6[2];
  v17 = a6[3];
  v59 = a1;
  v60 = v17;
  v20 = a6[4];
  v19 = a6[5];
  v67 = v16;
  v68 = v19;
  v22 = v14 + v13 != v12 || v20 + v18 != v16;
  if (v10 == 255)
  {
    v23 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v23)
    {
      v24 = 0;
LABEL_59:
      free(v23);
      return v24;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v10 + 160, a3, a4);
    v23 = (&v57 - v25);
    bzero(&v57 - v25, v26);
  }

  v58 = a7;
  v27 = a9;
  v28 = v18 - 1;
  v29 = v13 - 1;
  if (v20)
  {
    v30 = v14 + 1;
  }

  else
  {
    v29 = v13;
    v30 = v14;
  }

  if (v20)
  {
    v31 = v20 + 1;
  }

  else
  {
    v28 = v18;
    v31 = v20;
  }

  if (v28)
  {
    v32 = v64;
    if (v22 || (v33 = v29 + 1 + v30, v34 = 2 * v33, 2 * v33 > *v64) || ((2 * (v33 + (v33 >> 63))) & 0xFFFFFFFFFFFFFFFCLL) > v64[1] || (v35 = v64[2], v34 > v35) && v35 || (8 * (v31 + v28) + 8) > *v62)
    {
      --v28;
      --v29;
    }

    else
    {
      ++v28;
      ++v67;
      ++v12;
      ++v29;
    }
  }

  else
  {
    v32 = v64;
  }

  if (v29 + v30 > v12)
  {
    v29 = v12 - v30;
  }

  if (v28 + v31 > v67)
  {
    v28 = v67 - v31;
  }

  if (v15 + v61 <= v66)
  {
    v36 = v61;
  }

  else
  {
    v36 = v66 - v15;
  }

  if (v68 + v60 <= v65)
  {
    v37 = v60;
  }

  else
  {
    v37 = v65 - v68;
  }

  if (v29 >= v28)
  {
    v38 = v28;
  }

  else
  {
    v38 = v29;
  }

  if (v36 >= v37)
  {
    v39 = v37;
  }

  else
  {
    v39 = v36;
  }

  v40 = v15 + v39 - 1;
  v41 = v38 + v30;
  if ((*v32 * v40 + 2 * (v38 + v30)) <= *v69)
  {
    v46 = v63;
    if (*(v63 + 8) && v32[1] * v40 + 4 * ((v41 + 1 + ((v41 + 1) >> 63)) >> 1) > v69[1])
    {
      v61 = v30;
      v42 = v10;
      v43 = v12;
      v44 = v15;
      v45 = a9;
    }

    else if (*(v63 + 16) && (2 * v41 + v32[2] * v40) > v69[2])
    {
      v61 = v30;
      v42 = v10;
      v43 = v12;
      v44 = v15;
      v45 = a9;
    }

    else
    {
      if ((*v62 * (v68 + v39 - 1) + 8 * (v38 + v31)) <= *a9)
      {
        goto LABEL_53;
      }

      v61 = v30;
      v42 = v10;
      v43 = v12;
      v44 = v15;
      v45 = a9;
    }
  }

  else
  {
    v61 = v30;
    v42 = v10;
    v43 = v12;
    v44 = v15;
    v45 = a9;
  }

  fig_log_get_emitter();
  v47 = FigSignalErrorAtGM();
  v46 = v63;
  v32 = v64;
  v27 = v45;
  v15 = v44;
  v12 = v43;
  v10 = v42;
  v30 = v61;
  if (v47)
  {
    v24 = v47;
    goto LABEL_58;
  }

LABEL_53:
  *v23 = v10;
  *(v23 + 4) = v12;
  v48 = v65;
  *(v23 + 12) = v66;
  *(v23 + 20) = v38;
  *(v23 + 28) = v39;
  *(v23 + 36) = v30;
  *(v23 + 44) = v15;
  v23[11] = v48;
  v23[12] = v38;
  v23[13] = v39;
  v23[14] = v31;
  v23[7] = v46;
  v23[8] = v32;
  v49 = v67;
  v50 = v68;
  v23[9] = v69;
  v23[10] = v49;
  v51 = v58;
  v23[15] = v50;
  v23[16] = v51;
  v23[17] = v62;
  v23[18] = v27;
  v23[19] = v59;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v10, global_queue, v23, vt_Copy_xf422_rgb_RGhA_neon_fp16_GCD);
  if (!v10)
  {
    return 0;
  }

  v53 = (v23 + 20);
  v54 = v10;
  while (1)
  {
    v55 = *v53++;
    v24 = v55;
    if (v55)
    {
      break;
    }

    if (!--v54)
    {
      v24 = 0;
      break;
    }
  }

LABEL_58:
  if (v10 == 255)
  {
    goto LABEL_59;
  }

  return v24;
}

unsigned __int8 *vt_Copy_xf422_rgb_RGhA_neon_fp16_GCD(unsigned __int8 *result, uint64_t a2, int16x8_t a3, double a4, double a5, double a6, int16x4_t a7, float32x4_t a8, double a9, float32x4_t a10)
{
  v12 = *result;
  v13 = *(result + 13);
  v14 = v13 * a2 / v12;
  v15 = (v13 + v13 * a2) / v12 - v14;
  if (v15 >= 1)
  {
    v16 = 0;
    v17 = *(result + 24);
    v18 = *(result + 19);
    v19 = *(result + 7);
    v20 = *(result + 8);
    v21 = *v20;
    v22 = v20[1];
    v23 = v20[2];
    v24 = **(result + 17);
    v25 = v18[17].u16[2];
    v26 = v18[17].u16[3];
    a8.i32[0] = v18[3].i32[1];
    *a3.i32 = v25;
    a10.f32[0] = 1.0 / v18[16].u32[0];
    v27 = v26;
    _S2 = a10.f32[0] * v18->f32[0];
    __asm { FCVT            H3, S2 }

    *a7.i16 = v25;
    v34 = vdupq_lane_s16(a7, 0);
    v35 = -v26;
    a8.i32[1] = v18[1].i32[0];
    *a8.f32 = vmul_n_f32(*a8.f32, a10.f32[0]);
    v36 = vdupq_lane_s32(vcvt_f16_f32(a8), 0);
    *a10.f32 = vmul_n_f32(v18[2], a10.f32[0]);
    v37 = vdupq_lane_s32(vcvt_f16_f32(a10), 0);
    v38 = vmulq_n_f16(v36, v35);
    v39 = vmulq_n_f16(v37, v35);
    LODWORD(v18) = v18[15].u8[4];
    v40 = 16 - v18;
    v41 = v19[2];
    v42 = *(result + 28) * a2 / v12 + *(result + 44);
    v43 = *(result + 36);
    v44 = v41 + v23 * v42 + 2 * v43;
    v45 = v14 + *(result + 15);
    v46 = *v19;
    v47 = *(*(result + 7) + 8);
    _CF = v18 >= 0x11;
    v48 = v47 + v22 * v42 + 2 * v43;
    if (_CF)
    {
      v40 = 0;
    }

    v49 = **(result + 16) + v24 * v45 + 8 * *(result + 14);
    if (!v41)
    {
      v44 = 0;
    }

    if (!v47)
    {
      v48 = 0;
    }

    v50 = v46 + v21 * v42 + 2 * v43;
    v51 = vdupq_n_s16(-v40);
    v52 = vdupq_n_s32(0x37800080u);
    do
    {
      if (v17 < 8)
      {
        v72 = 0;
        v57 = v48;
        v56 = v44;
        v55 = v49;
        v54 = v50;
      }

      else
      {
        v53 = 0;
        v54 = v50;
        v55 = v49;
        v56 = v44;
        v57 = v48;
        do
        {
          if (v56)
          {
            v58 = *v56++;
            *v59.i8 = vzip1_s16(*v58.i8, 0);
            v59.u64[1] = vzip2_s16(*v58.i8, 0);
            v60 = vextq_s8(v58, v58, 8uLL).u64[0];
            *v61.i8 = vzip1_s16(v60, 0);
            v61.u64[1] = vzip2_s16(v60, 0);
            v62 = vcvt_hight_f16_f32(vcvt_f16_f32(vmulq_f32(vcvtq_f32_u32(v59), v52)), vmulq_f32(vcvtq_f32_u32(v61), v52));
          }

          else
          {
            v62.i64[0] = 0x3C003C003C003C00;
            v62.i64[1] = 0x3C003C003C003C00;
          }

          v63 = *v57++;
          v64 = vcvtq_f16_u16(vshlq_u16(v63, v51));
          v65 = vmlaq_f16(v38, v36, v64);
          v66 = vmlaq_f16(v39, v37, v64);
          v67 = vuzp1q_s16(v66, a3);
          *v67.i8 = vadd_f16(*v67.i8, *&vuzp2q_s16(v66, a3));
          v68 = vzip1q_s16(v67, v67);
          v69 = *v54++;
          v70 = vsubq_f16(vcvtq_f16_u16(vshlq_u16(v69, v51)), v34);
          _Q25 = vmlaq_n_f16(vtrn2q_s16(v65, v65), v70, _H3);
          _Q26 = vmlaq_n_f16(v68, v70, _H3);
          v71 = vmlaq_n_f16(vtrn1q_s16(v65, v65), v70, _H3);
          vst4q_s16(v55, *_Q25.i8);
          v55 += 32;
          v53 += 8;
        }

        while (v53 < v17 - 7);
        v72 = v17 & 0x7FFFFFF8;
      }

      while (v72 < (v17 & 0xFFFFFFFE))
      {
        if (v56)
        {
          _Q25.i16[0] = v56->i16[0];
          _Q26.i16[0] = v56->i16[1];
          v56 = (v56 + 4);
          *_Q25.i32 = _Q25.u32[0] * 0.000015259;
          *_Q26.i32 = _Q26.u32[0];
          _S27 = *_Q26.i32 * 0.000015259;
          __asm
          {
            FCVT            H26, S25
            FCVT            H25, S27
          }
        }

        else
        {
          _Q26.i32[0] = 0;
          _Q25.i32[0] = 0;
        }

        v74 = (v57->u16[0] >> v40) - v27;
        v75 = (v57->u16[1] >> v40) - v27;
        v76 = a8.f32[1] * v75;
        v77 = (a10.f32[1] * v75) + (v74 * a10.f32[0]);
        v78 = a8.f32[0] * v74;
        v79 = _S2 * ((v54->u16[0] >> v40) - *a3.i32);
        _S31 = _S2 * ((v54->u16[1] >> v40) - *a3.i32);
        _S8 = v76 + v79;
        _S9 = v79 + v77;
        _S30 = v78 + v79;
        _S29 = v76 + _S31;
        _S28 = v77 + _S31;
        _S27 = v78 + _S31;
        __asm { FCVT            H31, S8 }

        *v55 = LOWORD(_S31);
        __asm { FCVT            H31, S9 }

        v55[1] = LOWORD(_S31);
        __asm { FCVT            H30, S30 }

        v55[2] = LOWORD(_S30);
        if (!v56)
        {
          _Q26.i16[0] = COERCE_UNSIGNED_INT(1.0);
        }

        v55[3] = _Q26.i16[0];
        __asm { FCVT            H26, S29 }

        v55[4] = _H26;
        __asm { FCVT            H26, S28 }

        v55[5] = _H26;
        __asm { FCVT            H26, S27 }

        v55[6] = _H26;
        if (_ZF)
        {
          _Q25.i16[0] = COERCE_UNSIGNED_INT(1.0);
        }

        v55[7] = _Q25.i16[0];
        v55 += 8;
        v72 += 2;
        v57 = (v57 + 4);
        v54 = (v54 + 4);
      }

      v50 += v21;
      v48 += v22;
      v44 += v23;
      v49 += v24;
      ++v16;
    }

    while (v16 != v15);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_xf422_rgb_RGhA(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4, void *a5, uint64_t *a6, uint64_t a7, void *a8, void *a9)
{
  v62 = a8;
  v63 = a3;
  v69 = a5;
  v64 = a4;
  v70 = *MEMORY[0x1E69E9840];
  v10 = *(a1 + 162);
  v12 = *a2;
  v11 = a2[1];
  v13 = a2[2];
  v61 = a2[3];
  v14 = a2[4];
  v15 = a2[5];
  v16 = *a6;
  v65 = a6[1];
  v66 = v11;
  v18 = a6[2];
  v17 = a6[3];
  v59 = a1;
  v60 = v17;
  v20 = a6[4];
  v19 = a6[5];
  v67 = v16;
  v68 = v19;
  v22 = v14 + v13 != v12 || v20 + v18 != v16;
  if (v10 == 255)
  {
    v23 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v23)
    {
      v24 = 0;
LABEL_59:
      free(v23);
      return v24;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v10 + 160, a3, a4);
    v23 = (&v57 - v25);
    bzero(&v57 - v25, v26);
  }

  v58 = a7;
  v27 = a9;
  v28 = v18 - 1;
  v29 = v13 - 1;
  if (v20)
  {
    v30 = v14 + 1;
  }

  else
  {
    v29 = v13;
    v30 = v14;
  }

  if (v20)
  {
    v31 = v20 + 1;
  }

  else
  {
    v28 = v18;
    v31 = v20;
  }

  if (v28)
  {
    v32 = v64;
    if (v22 || (v33 = v29 + 1 + v30, v34 = 2 * v33, 2 * v33 > *v64) || ((2 * (v33 + (v33 >> 63))) & 0xFFFFFFFFFFFFFFFCLL) > v64[1] || (v35 = v64[2], v34 > v35) && v35 || (8 * (v31 + v28) + 8) > *v62)
    {
      --v28;
      --v29;
    }

    else
    {
      ++v28;
      ++v67;
      ++v12;
      ++v29;
    }
  }

  else
  {
    v32 = v64;
  }

  if (v29 + v30 > v12)
  {
    v29 = v12 - v30;
  }

  if (v28 + v31 > v67)
  {
    v28 = v67 - v31;
  }

  if (v15 + v61 <= v66)
  {
    v36 = v61;
  }

  else
  {
    v36 = v66 - v15;
  }

  if (v68 + v60 <= v65)
  {
    v37 = v60;
  }

  else
  {
    v37 = v65 - v68;
  }

  if (v29 >= v28)
  {
    v38 = v28;
  }

  else
  {
    v38 = v29;
  }

  if (v36 >= v37)
  {
    v39 = v37;
  }

  else
  {
    v39 = v36;
  }

  v40 = v15 + v39 - 1;
  v41 = v38 + v30;
  if ((*v32 * v40 + 2 * (v38 + v30)) <= *v69)
  {
    v46 = v63;
    if (*(v63 + 8) && v32[1] * v40 + 4 * ((v41 + 1 + ((v41 + 1) >> 63)) >> 1) > v69[1])
    {
      v61 = v30;
      v42 = v10;
      v43 = v12;
      v44 = v15;
      v45 = a9;
    }

    else if (*(v63 + 16) && (2 * v41 + v32[2] * v40) > v69[2])
    {
      v61 = v30;
      v42 = v10;
      v43 = v12;
      v44 = v15;
      v45 = a9;
    }

    else
    {
      if ((*v62 * (v68 + v39 - 1) + 8 * (v38 + v31)) <= *a9)
      {
        goto LABEL_53;
      }

      v61 = v30;
      v42 = v10;
      v43 = v12;
      v44 = v15;
      v45 = a9;
    }
  }

  else
  {
    v61 = v30;
    v42 = v10;
    v43 = v12;
    v44 = v15;
    v45 = a9;
  }

  fig_log_get_emitter();
  v47 = FigSignalErrorAtGM();
  v46 = v63;
  v32 = v64;
  v27 = v45;
  v15 = v44;
  v12 = v43;
  v10 = v42;
  v30 = v61;
  if (v47)
  {
    v24 = v47;
    goto LABEL_58;
  }

LABEL_53:
  *v23 = v10;
  *(v23 + 4) = v12;
  v48 = v65;
  *(v23 + 12) = v66;
  *(v23 + 20) = v38;
  *(v23 + 28) = v39;
  *(v23 + 36) = v30;
  *(v23 + 44) = v15;
  v23[11] = v48;
  v23[12] = v38;
  v23[13] = v39;
  v23[14] = v31;
  v23[7] = v46;
  v23[8] = v32;
  v49 = v67;
  v50 = v68;
  v23[9] = v69;
  v23[10] = v49;
  v51 = v58;
  v23[15] = v50;
  v23[16] = v51;
  v23[17] = v62;
  v23[18] = v27;
  v23[19] = v59;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v10, global_queue, v23, vt_Copy_xf422_rgb_RGhA_GCD);
  if (!v10)
  {
    return 0;
  }

  v53 = (v23 + 20);
  v54 = v10;
  while (1)
  {
    v55 = *v53++;
    v24 = v55;
    if (v55)
    {
      break;
    }

    if (!--v54)
    {
      v24 = 0;
      break;
    }
  }

LABEL_58:
  if (v10 == 255)
  {
    goto LABEL_59;
  }

  return v24;
}

unsigned __int8 *vt_Copy_xf422_rgb_RGhA_GCD(unsigned __int8 *result, uint64_t a2)
{
  v4 = *result;
  v5 = *(result + 13);
  v6 = v5 * a2 / v4;
  v7 = (v5 + v5 * a2) / v4 - v6;
  if (v7 >= 1)
  {
    v8 = 0;
    v9 = *(result + 19);
    v10 = *(result + 24) & 0xFFFFFFFE;
    v11 = *(result + 7);
    v12 = *(result + 8);
    v13 = *v12;
    v14 = v12[1];
    v15 = v12[2];
    v16 = **(result + 17);
    *&v17 = *(v9 + 128);
    v18 = 1.0;
    v19 = 1.0 / *&v17;
    LOWORD(v17) = *(v9 + 140);
    v20 = v17;
    LOWORD(v18) = *(v9 + 142);
    v21 = v18;
    v22 = v19 * *v9;
    v23 = v19 * *(v9 + 8);
    v24 = v19 * *(v9 + 16);
    v25 = v19 * *(v9 + 20);
    v26 = v19 * *(v9 + 28);
    v27 = v6 + *(result + 15);
    v28 = *(result + 28) * a2 / v4 + *(result + 44);
    v29 = *(v9 + 124);
    v30 = *(result + 36);
    if (v29 >= 0x11)
    {
      v31 = 0;
    }

    else
    {
      v31 = 16 - v29;
    }

    v32 = **(result + 16) + v16 * v27 + 8 * *(result + 14);
    v33 = v11[2];
    if (v33)
    {
      v34 = v33 + v28 * v15 + 2 * v30;
    }

    else
    {
      v34 = 0;
    }

    v35 = *v11;
    v36 = *(*(result + 7) + 8);
    _ZF = v36 == 0;
    v38 = v36 + v28 * v14 + 2 * v30;
    if (_ZF)
    {
      v38 = 0;
    }

    v39 = v35 + v28 * v13 + 2 * v30;
    v40 = v31;
    do
    {
      if (v10 >= 1)
      {
        v41 = 0;
        v42 = v39;
        v43 = v32;
        v44 = v34;
        do
        {
          if (v44)
          {
            LOWORD(_S17) = *v44;
            LOWORD(_S18) = v44[1];
            v44 += 2;
            _S17 = LODWORD(_S17) * 0.000015259;
            _S18 = LODWORD(_S18);
            _S19 = _S18 * 0.000015259;
            __asm
            {
              FCVT            H18, S17
              FCVT            H17, S19
            }
          }

          else
          {
            _S18 = 0.0;
            _S17 = 0.0;
          }

          v49 = (v38 + 2 * v41);
          v50 = (*v49 >> v40) - v21;
          v51 = (v49[1] >> v40) - v21;
          v52 = v23 * v51;
          v53 = (v25 * v51) + (v50 * v24);
          v54 = v26 * v50;
          v55 = v22 * ((*v42 >> v40) - v20);
          _S23 = v22 * ((v42[1] >> v40) - v20);
          _S24 = v52 + v55;
          _S25 = v55 + v53;
          _S22 = v54 + v55;
          _S21 = v52 + _S23;
          _S20 = v53 + _S23;
          _S19 = v54 + _S23;
          __asm { FCVT            H23, S24 }

          *v43 = LOWORD(_S23);
          __asm { FCVT            H23, S25 }

          v43[1] = LOWORD(_S23);
          __asm { FCVT            H22, S22 }

          v43[2] = LOWORD(_S22);
          if (!v44)
          {
            LOWORD(_S18) = COERCE_UNSIGNED_INT(1.0);
          }

          v43[3] = LOWORD(_S18);
          __asm { FCVT            H18, S21 }

          v43[4] = _H18;
          __asm { FCVT            H18, S20 }

          v43[5] = _H18;
          __asm { FCVT            H18, S19 }

          v43[6] = _H18;
          if (_ZF)
          {
            LOWORD(_S17) = COERCE_UNSIGNED_INT(1.0);
          }

          v43[7] = LOWORD(_S17);
          v41 += 2;
          v42 += 2;
          v43 += 8;
        }

        while (v41 < v10);
      }

      v39 += v13;
      v38 += v14;
      v34 += v15;
      v32 += v16;
      ++v8;
    }

    while (v8 != v7);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_xf422_TRC_Tone_Mat_TRC_RGfA_neon_fp16(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4, void *a5, uint64_t *a6, uint64_t a7, void *a8, void *a9)
{
  v62 = a8;
  v63 = a3;
  v69 = a5;
  v64 = a4;
  v70 = *MEMORY[0x1E69E9840];
  v10 = *(a1 + 162);
  v12 = *a2;
  v11 = a2[1];
  v13 = a2[2];
  v61 = a2[3];
  v14 = a2[4];
  v15 = a2[5];
  v16 = *a6;
  v65 = a6[1];
  v66 = v11;
  v18 = a6[2];
  v17 = a6[3];
  v59 = a1;
  v60 = v17;
  v20 = a6[4];
  v19 = a6[5];
  v67 = v16;
  v68 = v19;
  v22 = v14 + v13 != v12 || v20 + v18 != v16;
  if (v10 == 255)
  {
    v23 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v23)
    {
      v24 = 0;
LABEL_59:
      free(v23);
      return v24;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v10 + 160, a3, a4);
    v23 = (&v57 - v25);
    bzero(&v57 - v25, v26);
  }

  v58 = a7;
  v27 = a9;
  v28 = v18 - 1;
  v29 = v13 - 1;
  if (v20)
  {
    v30 = v14 + 1;
  }

  else
  {
    v29 = v13;
    v30 = v14;
  }

  if (v20)
  {
    v31 = v20 + 1;
  }

  else
  {
    v28 = v18;
    v31 = v20;
  }

  if (v28)
  {
    v32 = v64;
    if (v22 || (v33 = v29 + 1 + v30, v34 = 2 * v33, 2 * v33 > *v64) || ((2 * (v33 + (v33 >> 63))) & 0xFFFFFFFFFFFFFFFCLL) > v64[1] || (v35 = v64[2], v34 > v35) && v35 || (16 * (v31 + v28) + 16) > *v62)
    {
      --v28;
      --v29;
    }

    else
    {
      ++v28;
      ++v67;
      ++v12;
      ++v29;
    }
  }

  else
  {
    v32 = v64;
  }

  if (v29 + v30 > v12)
  {
    v29 = v12 - v30;
  }

  if (v28 + v31 > v67)
  {
    v28 = v67 - v31;
  }

  if (v15 + v61 <= v66)
  {
    v36 = v61;
  }

  else
  {
    v36 = v66 - v15;
  }

  if (v68 + v60 <= v65)
  {
    v37 = v60;
  }

  else
  {
    v37 = v65 - v68;
  }

  if (v29 >= v28)
  {
    v38 = v28;
  }

  else
  {
    v38 = v29;
  }

  if (v36 >= v37)
  {
    v39 = v37;
  }

  else
  {
    v39 = v36;
  }

  v40 = v15 + v39 - 1;
  v41 = v38 + v30;
  if ((*v32 * v40 + 2 * (v38 + v30)) <= *v69)
  {
    v46 = v63;
    if (*(v63 + 8) && v32[1] * v40 + 4 * ((v41 + 1 + ((v41 + 1) >> 63)) >> 1) > v69[1])
    {
      v61 = v30;
      v42 = v10;
      v43 = v12;
      v44 = v15;
      v45 = a9;
    }

    else if (*(v63 + 16) && (2 * v41 + v32[2] * v40) > v69[2])
    {
      v61 = v30;
      v42 = v10;
      v43 = v12;
      v44 = v15;
      v45 = a9;
    }

    else
    {
      if ((*v62 * (v68 + v39 - 1) + 16 * (v38 + v31)) <= *a9)
      {
        goto LABEL_53;
      }

      v61 = v30;
      v42 = v10;
      v43 = v12;
      v44 = v15;
      v45 = a9;
    }
  }

  else
  {
    v61 = v30;
    v42 = v10;
    v43 = v12;
    v44 = v15;
    v45 = a9;
  }

  fig_log_get_emitter();
  v47 = FigSignalErrorAtGM();
  v46 = v63;
  v32 = v64;
  v27 = v45;
  v15 = v44;
  v12 = v43;
  v10 = v42;
  v30 = v61;
  if (v47)
  {
    v24 = v47;
    goto LABEL_58;
  }

LABEL_53:
  *v23 = v10;
  *(v23 + 4) = v12;
  v48 = v65;
  *(v23 + 12) = v66;
  *(v23 + 20) = v38;
  *(v23 + 28) = v39;
  *(v23 + 36) = v30;
  *(v23 + 44) = v15;
  v23[11] = v48;
  v23[12] = v38;
  v23[13] = v39;
  v23[14] = v31;
  v23[7] = v46;
  v23[8] = v32;
  v49 = v67;
  v50 = v68;
  v23[9] = v69;
  v23[10] = v49;
  v51 = v58;
  v23[15] = v50;
  v23[16] = v51;
  v23[17] = v62;
  v23[18] = v27;
  v23[19] = v59;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v10, global_queue, v23, vt_Copy_xf422_TRC_Tone_Mat_TRC_RGfA_neon_fp16_GCD);
  if (!v10)
  {
    return 0;
  }

  v53 = (v23 + 20);
  v54 = v10;
  while (1)
  {
    v55 = *v53++;
    v24 = v55;
    if (v55)
    {
      break;
    }

    if (!--v54)
    {
      v24 = 0;
      break;
    }
  }

LABEL_58:
  if (v10 == 255)
  {
    goto LABEL_59;
  }

  return v24;
}

char *vt_Copy_xf422_TRC_Tone_Mat_TRC_RGfA_neon_fp16_GCD(char *result, uint64_t a2, int16x4_t a3)
{
  v5 = *result;
  v175 = result;
  v6 = *(result + 13);
  v7 = v6 * a2 / v5;
  v179 = (v6 + v6 * a2) / v5 - v7;
  if (v179 >= 1)
  {
    v8 = 0;
    v9 = *(result + 24);
    v10 = *(result + 19);
    v12 = *(result + 7);
    v11 = *(result + 8);
    v13 = *v11;
    result = v11[1];
    v14 = **(v175 + 17);
    v15 = v10[17].u16[2];
    v16 = v10[17].u16[3];
    a3.i32[0] = v10->i32[0];
    v17.i32[0] = v10[3].i32[1];
    _S3 = v10[10].f32[1];
    _S4 = v10[11].f32[0];
    _S5 = v10[11].f32[1];
    _S6 = v10[12].f32[0];
    _S7 = v10[12].f32[1];
    _S16 = v10[13].f32[0];
    v24 = &v10[2068] + 4;
    v25 = 8191.0 / v10[16].u32[0];
    v202 = v15;
    v26 = v16;
    _S24 = v25 * v10->f32[0];
    v28 = &v10[20] + 4;
    v29 = &v10[4116] + 4;
    *a3.i16 = v15;
    v176 = vdupq_lane_s16(a3, 0);
    __asm { FCVT            H8, S24 }

    v35 = -v16;
    v17.i32[1] = v10[1].i32[0];
    *v4.f32 = vmul_n_f32(v17, v25);
    *v3.f32 = vmul_n_f32(v10[2], v25);
    v197 = vdupq_lane_s32(vcvt_f16_f32(v4), 0);
    v195 = vmulq_n_f16(v197, v35);
    v196 = vdupq_lane_s32(vcvt_f16_f32(v3), 0);
    v194 = vmulq_n_f16(v196, v35);
    _S18 = v10[13].f32[1];
    __asm { FCVT            H0, S17 }

    v193 = _H0;
    _S19 = v10[14].f32[0];
    __asm { FCVT            H0, S28 }

    v192 = _H0;
    _S20 = v10[14].f32[1];
    __asm { FCVT            H0, S29 }

    v191 = _H0;
    _S22 = v10[15].f32[0];
    __asm { FCVT            H0, S30 }

    v190 = _H0;
    v201 = v10[9].f32[0];
    __asm { FCVT            H0, S2 }

    v189 = _H0;
    v200 = v10[9].f32[1];
    __asm { FCVT            H0, S26 }

    v188 = _H0;
    v199 = v10[10].f32[0];
    __asm { FCVT            H0, S27 }

    v187 = _H0;
    LODWORD(v10) = v10[15].u8[4];
    v47 = 16 - v10;
    v48 = v12[2];
    v49 = *(v175 + 28) * a2 / v5 + *(v175 + 44);
    v177 = v11[2];
    v178 = result;
    v50 = *(v175 + 36);
    v51 = v48 + v177 * v49 + 2 * v50;
    v52 = v7 + *(v175 + 15);
    v53 = *v12;
    v54 = *(*(v175 + 7) + 8);
    _CF = v10 >= 0x11;
    v55 = v54 + result * v49 + 2 * v50;
    if (_CF)
    {
      v47 = 0;
    }

    v56 = **(v175 + 16) + v14 * v52 + 16 * *(v175 + 14);
    if (!v48)
    {
      v51 = 0;
    }

    if (!v54)
    {
      v55 = 0;
    }

    v57 = v53 + v13 * v49 + 2 * v50;
    __asm { FCVT            H0, S3 }

    v186 = _H0;
    __asm { FCVT            H0, S4 }

    v185 = _H0;
    __asm { FCVT            H0, S5 }

    v184 = _H0;
    __asm { FCVT            H0, S6 }

    v183 = _H0;
    __asm { FCVT            H0, S7 }

    v182 = _H0;
    __asm { FCVT            H0, S16 }

    v181 = _H0;
    v64 = vdupq_n_s16(-v47);
    v198 = v4.f32[0];
    v65 = v3.i64[0];
    v180 = v4.f32[1];
    v66.i64[0] = 0x9000900090009000;
    v66.i64[1] = 0x9000900090009000;
    while (v9 < 8)
    {
      v114 = 0;
      v71 = v55;
      v70 = v51;
      v69 = v56;
      v68 = v57;
LABEL_54:
      while (v114 < (v9 & 0xFFFFFFFE))
      {
        v115 = (v71->u16[1] >> v47) - v26;
        v116 = v180 * v115;
        v117 = _S24 * ((v68->u16[0] >> v47) - v202);
        v118 = (v180 * v115) + v117;
        v119 = 8191.0;
        if (v118 <= 8191.0)
        {
          v119 = (v180 * v115) + v117;
          if (v118 < 0.0)
          {
            v119 = 0.0;
          }
        }

        v120 = (v71->u16[0] >> v47) - v26;
        v121 = (*(&v65 + 1) * v115) + (v120 * *&v65);
        v122 = 8191.0;
        if ((v117 + v121) <= 8191.0)
        {
          v122 = v117 + v121;
          if ((v117 + v121) < 0.0)
          {
            v122 = 0.0;
          }
        }

        v123 = v198 * v120;
        v124 = (v198 * v120) + v117;
        v125 = 8191.0;
        if (v124 <= 8191.0)
        {
          v125 = v124;
          if (v124 < 0.0)
          {
            v125 = 0.0;
          }
        }

        v126 = _S24 * ((v68->u16[1] >> v47) - v202);
        v127 = v116 + v126;
        v128 = 8191.0;
        if (v127 <= 8191.0)
        {
          v128 = v127;
          if (v127 < 0.0)
          {
            v128 = 0.0;
          }
        }

        v129 = 8191.0;
        if ((v121 + v126) <= 8191.0)
        {
          v129 = v121 + v126;
          if ((v121 + v126) < 0.0)
          {
            v129 = 0.0;
          }
        }

        v130 = v123 + v126;
        v131 = (v123 + v126) <= 8191.0;
        v132 = 8191.0;
        if (v131)
        {
          v132 = v130;
          if (v130 < 0.0)
          {
            v132 = 0.0;
          }
        }

        if (v70)
        {
          LOWORD(v130) = *v70;
          LOWORD(v121) = v70[1];
          v70 += 2;
          v133 = LODWORD(v130) * 0.000015259;
          v134 = LODWORD(v121) * 0.000015259;
        }

        else
        {
          v133 = 0.0;
          v134 = 0.0;
        }

        _H2 = *&v28[2 * llroundf(fminf(fmaxf(v119, 0.0), 8191.0))];
        __asm { FCVT            S10, H2 }

        _H2 = *&v28[2 * llroundf(fminf(fmaxf(v122, 0.0), 8191.0))];
        __asm { FCVT            S27, H2 }

        _H2 = *&v28[2 * llroundf(fminf(fmaxf(v125, 0.0), 8191.0))];
        __asm { FCVT            S30, H2 }

        _H31 = *&v28[2 * llroundf(fminf(fmaxf(v128, 0.0), 8191.0))];
        _H9 = *&v28[2 * llroundf(fminf(fmaxf(v129, 0.0), 8191.0))];
        _H11 = *&v28[2 * llroundf(fminf(fmaxf(v132, 0.0), 8191.0))];
        v144 = (((_S19 * _S27) + (_S18 * _S10)) + (_S20 * _S30)) + (_S22 * fmaxf(_S10, fmaxf(_S27, _S30)));
        v145 = 8191.0;
        if (v144 <= 8191.0)
        {
          v145 = v144;
          if (v144 < 0.0)
          {
            v145 = 0.0;
          }
        }

        __asm
        {
          FCVT            S31, H31
          FCVT            S9, H9
          FCVT            S11, H11
        }

        _H12 = *&v24[2 * llroundf(v145)];
        v150 = (((_S19 * _S9) + (_S18 * _S31)) + (_S20 * _S11)) + (_S22 * fmaxf(_S31, fmaxf(_S9, _S11)));
        v151 = 8191.0;
        if (v150 <= 8191.0)
        {
          v151 = v150;
          if (v150 < 0.0)
          {
            v151 = 0.0;
          }
        }

        __asm { FCVT            S2, H12 }

        v153 = _S10 * _S2;
        v154 = _S27 * _S2;
        v155 = _S30 * _S2;
        _H30 = *&v24[2 * llroundf(v151)];
        __asm { FCVT            S30, H30 }

        _S31 = _S31 * _S30;
        _S9 = _S9 * _S30;
        v160 = _S11 * _S30;
        v161 = ((v200 * v154) + (v153 * v201)) + (v155 * v199);
        v162 = ((_S4 * v154) + (v153 * _S3)) + (v155 * _S5);
        _S2 = ((_S7 * v154) + (v153 * _S6)) + (v155 * _S16);
        _S27 = ((v200 * _S9) + (_S31 * v201)) + (v160 * v199);
        _S10 = ((_S4 * _S9) + (_S31 * _S3)) + (v160 * _S5);
        v166 = ((_S7 * _S9) + (_S31 * _S6)) + (v160 * _S16);
        LOWORD(_S31) = *&v29[2 * llroundf(fminf(fmaxf(v161, 0.0), 8191.0))];
        LOWORD(_S9) = *&v29[2 * llroundf(fminf(fmaxf(v162, 0.0), 8191.0))];
        LOWORD(_S2) = *&v29[2 * llroundf(fminf(fmaxf(_S2, 0.0), 8191.0))];
        LOWORD(_S27) = *&v29[2 * llroundf(fminf(fmaxf(_S27, 0.0), 8191.0))];
        LOWORD(_S10) = *&v29[2 * llroundf(fminf(fmaxf(_S10, 0.0), 8191.0))];
        _H26 = *&v29[2 * llroundf(fminf(fmaxf(v166, 0.0), 8191.0))];
        __asm
        {
          FCVT            S30, H31
          FCVT            S31, H9
          FCVT            S2, H2
          FCVT            S27, H27
          FCVT            S9, H10
          FCVT            S26, H26
        }

        *v69 = _S30;
        *(v69 + 4) = _S31;
        if (!v70)
        {
          v133 = 1.0;
        }

        *(v69 + 8) = _S2;
        *(v69 + 12) = v133;
        if (v70)
        {
          v174 = v134;
        }

        else
        {
          v174 = 1.0;
        }

        *(v69 + 16) = _S27;
        *(v69 + 20) = _S9;
        *(v69 + 24) = _S26;
        *(v69 + 28) = v174;
        v69 += 32;
        v114 += 2;
        v71 = (v71 + 4);
        v68 = (v68 + 4);
      }

      v57 += v13;
      v55 += v178;
      v51 += v177;
      v56 += v14;
      if (++v8 == v179)
      {
        goto LABEL_56;
      }
    }

    v67 = 0;
    v68 = v57;
    v69 = v56;
    v70 = v51;
    v71 = v55;
    while (v70)
    {
      v72 = *v70;
      v70 += 8;
      v73 = v72;
      if (!v70)
      {
        goto LABEL_16;
      }

      *v74.i8 = vzip1_s16(*v73.f32, 0);
      v74.u64[1] = vzip2_s16(*v73.f32, 0);
      v75 = vextq_s8(v73, v73, 8uLL).u64[0];
      *v76.i8 = vzip1_s16(v75, 0);
      v76.u64[1] = vzip2_s16(v75, 0);
      v73 = vcvtq_f32_u32(v74);
      v77 = vcvtq_f32_u32(v76);
      v78 = vdupq_n_s32(0x37800080u);
      _Q12 = vmulq_f32(v73, v78);
      v80 = vmulq_f32(v77, v78);
LABEL_17:
      v81 = *v71++;
      v82 = vcvtq_f16_u16(vshlq_u16(v81, v64));
      v83 = vmlaq_f16(v195, v197, v82);
      v84 = vmlaq_f16(v194, v196, v82);
      v85 = vtrn2q_s16(v83, v83);
      v86 = vtrn1q_s16(v83, v83);
      v87 = vuzp1q_s16(v84, v73);
      *v87.i8 = vadd_f16(*v87.i8, *&vuzp2q_s16(v84, v73));
      v88 = vzip1q_s16(v87, v87);
      v89 = *v68++;
      v90 = vsubq_f16(vcvtq_f16_u16(vshlq_u16(v89, v64)), v176);
      v91 = vmlaq_n_f16(v88, v90, _H8);
      v92 = vmlaq_n_f16(v86, v90, _H8);
      v93 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(v85, v90, _H8), 0), v66));
      v90.i16[0] = *&v28[2 * v93.u16[0]];
      v90.i16[1] = *&v28[2 * v93.u16[1]];
      v90.i16[2] = *&v28[2 * v93.u16[2]];
      v90.i16[3] = *&v28[2 * v93.u16[3]];
      v90.i16[4] = *&v28[2 * v93.u16[4]];
      v90.i16[5] = *&v28[2 * v93.u16[5]];
      v90.i16[6] = *&v28[2 * v93.u16[6]];
      v90.i16[7] = *&v28[2 * v93.u16[7]];
      v94 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v91, 0), v66));
      v93.i16[0] = *&v28[2 * v94.u16[0]];
      v93.i16[1] = *&v28[2 * v94.u16[1]];
      v93.i16[2] = *&v28[2 * v94.u16[2]];
      v93.i16[3] = *&v28[2 * v94.u16[3]];
      v93.i16[4] = *&v28[2 * v94.u16[4]];
      v93.i16[5] = *&v28[2 * v94.u16[5]];
      v93.i16[6] = *&v28[2 * v94.u16[6]];
      v93.i16[7] = *&v28[2 * v94.u16[7]];
      v95 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v92, 0), v66));
      v92.i16[0] = *&v28[2 * v95.u16[0]];
      v92.i16[1] = *&v28[2 * v95.u16[1]];
      v92.i16[2] = *&v28[2 * v95.u16[2]];
      v92.i16[3] = *&v28[2 * v95.u16[3]];
      v92.i16[4] = *&v28[2 * v95.u16[4]];
      v92.i16[5] = *&v28[2 * v95.u16[5]];
      v92.i16[6] = *&v28[2 * v95.u16[6]];
      v92.i16[7] = *&v28[2 * v95.u16[7]];
      v96 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v90, v193), v93, v192), v92, v191), vmaxq_f16(vmaxq_f16(v90, v93), v92), v190), 0), v66));
      v95.i16[0] = *&v24[2 * v96.u16[0]];
      v95.i16[1] = *&v24[2 * v96.u16[1]];
      v95.i16[2] = *&v24[2 * v96.u16[2]];
      v95.i16[3] = *&v24[2 * v96.u16[3]];
      v95.i16[4] = *&v24[2 * v96.u16[4]];
      v95.i16[5] = *&v24[2 * v96.u16[5]];
      v95.i16[6] = *&v24[2 * v96.u16[6]];
      v95.i16[7] = *&v24[2 * v96.u16[7]];
      v97 = vmulq_f16(v90, v95);
      v98 = vmulq_f16(v93, v95);
      v99 = vmulq_f16(v92, v95);
      v100 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v97, v189), v98, v188), v99, v187);
      v101 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v97, v186), v98, v185), v99, v184);
      v102 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v99, v181), v98, v182), v97, v183);
      v103 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v100, 0), v66));
      v98.i16[0] = *&v29[2 * v103.u16[0]];
      v98.i16[1] = *&v29[2 * v103.u16[1]];
      v98.i16[2] = *&v29[2 * v103.u16[2]];
      v98.i16[3] = *&v29[2 * v103.u16[3]];
      v98.i16[4] = *&v29[2 * v103.u16[4]];
      v98.i16[5] = *&v29[2 * v103.u16[5]];
      v98.i16[6] = *&v29[2 * v103.u16[6]];
      v98.i16[7] = *&v29[2 * v103.u16[7]];
      v104 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v101, 0), v66));
      v101.i16[0] = *&v29[2 * v104.u16[0]];
      v101.i16[1] = *&v29[2 * v104.u16[1]];
      v101.i16[2] = *&v29[2 * v104.u16[2]];
      v101.i16[3] = *&v29[2 * v104.u16[3]];
      v101.i16[4] = *&v29[2 * v104.u16[4]];
      v101.i16[5] = *&v29[2 * v104.u16[5]];
      v101.i16[6] = *&v29[2 * v104.u16[6]];
      v101.i16[7] = *&v29[2 * v104.u16[7]];
      v105 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v102, 0), v66));
      v105.i16[0] = *&v29[2 * v105.u16[0]];
      result = &v29[2 * v105.u16[5]];
      v105.i16[1] = *&v29[2 * v105.u16[1]];
      v105.i16[2] = *&v29[2 * v105.u16[2]];
      v105.i16[3] = *&v29[2 * v105.u16[3]];
      v105.i16[4] = *&v29[2 * v105.u16[4]];
      v105.i16[5] = *result;
      v105.i16[6] = *&v29[2 * v105.u16[6]];
      v105.i16[7] = *&v29[2 * v105.u16[7]];
      v106 = vcvtq_f32_f16(*v98.i8);
      v107 = vcvtq_f32_f16(*v101.i8);
      v108 = vcvtq_f32_f16(*v105.i8);
      v109 = v69 + 128;
      vst4q_f32(v69, *(&_Q12 - 3));
      v110 = (v69 + 64);
      v111 = vcvtq_f32_f16(*&vextq_s8(v98, v98, 8uLL));
      v112 = vcvtq_f32_f16(*&vextq_s8(v101, v101, 8uLL));
      v113 = vcvtq_f32_f16(*&vextq_s8(v105, v105, 8uLL));
      vst4q_f32(v110, *(&v80 - 3));
      v69 = v109;
      v67 += 8;
      if (v67 >= v9 - 7)
      {
        v114 = v9 & 0xFFFFFFF8;
        goto LABEL_54;
      }
    }

    v73 = 0uLL;
LABEL_16:
    __asm { FMOV            V12.4S, #1.0 }

    v80 = _Q12;
    goto LABEL_17;
  }

LABEL_56:
  *&v175[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_xf422_TRC_Tone_Mat_TRC_RGfA(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4, void *a5, uint64_t *a6, uint64_t a7, void *a8, void *a9)
{
  v62 = a8;
  v63 = a3;
  v69 = a5;
  v64 = a4;
  v70 = *MEMORY[0x1E69E9840];
  v10 = *(a1 + 162);
  v12 = *a2;
  v11 = a2[1];
  v13 = a2[2];
  v61 = a2[3];
  v14 = a2[4];
  v15 = a2[5];
  v16 = *a6;
  v65 = a6[1];
  v66 = v11;
  v18 = a6[2];
  v17 = a6[3];
  v59 = a1;
  v60 = v17;
  v20 = a6[4];
  v19 = a6[5];
  v67 = v16;
  v68 = v19;
  v22 = v14 + v13 != v12 || v20 + v18 != v16;
  if (v10 == 255)
  {
    v23 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v23)
    {
      v24 = 0;
LABEL_59:
      free(v23);
      return v24;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v10 + 160, a3, a4);
    v23 = (&v57 - v25);
    bzero(&v57 - v25, v26);
  }

  v58 = a7;
  v27 = a9;
  v28 = v18 - 1;
  v29 = v13 - 1;
  if (v20)
  {
    v30 = v14 + 1;
  }

  else
  {
    v29 = v13;
    v30 = v14;
  }

  if (v20)
  {
    v31 = v20 + 1;
  }

  else
  {
    v28 = v18;
    v31 = v20;
  }

  if (v28)
  {
    v32 = v64;
    if (v22 || (v33 = v29 + 1 + v30, v34 = 2 * v33, 2 * v33 > *v64) || ((2 * (v33 + (v33 >> 63))) & 0xFFFFFFFFFFFFFFFCLL) > v64[1] || (v35 = v64[2], v34 > v35) && v35 || (16 * (v31 + v28) + 16) > *v62)
    {
      --v28;
      --v29;
    }

    else
    {
      ++v28;
      ++v67;
      ++v12;
      ++v29;
    }
  }

  else
  {
    v32 = v64;
  }

  if (v29 + v30 > v12)
  {
    v29 = v12 - v30;
  }

  if (v28 + v31 > v67)
  {
    v28 = v67 - v31;
  }

  if (v15 + v61 <= v66)
  {
    v36 = v61;
  }

  else
  {
    v36 = v66 - v15;
  }

  if (v68 + v60 <= v65)
  {
    v37 = v60;
  }

  else
  {
    v37 = v65 - v68;
  }

  if (v29 >= v28)
  {
    v38 = v28;
  }

  else
  {
    v38 = v29;
  }

  if (v36 >= v37)
  {
    v39 = v37;
  }

  else
  {
    v39 = v36;
  }

  v40 = v15 + v39 - 1;
  v41 = v38 + v30;
  if ((*v32 * v40 + 2 * (v38 + v30)) <= *v69)
  {
    v46 = v63;
    if (*(v63 + 8) && v32[1] * v40 + 4 * ((v41 + 1 + ((v41 + 1) >> 63)) >> 1) > v69[1])
    {
      v61 = v30;
      v42 = v10;
      v43 = v12;
      v44 = v15;
      v45 = a9;
    }

    else if (*(v63 + 16) && (2 * v41 + v32[2] * v40) > v69[2])
    {
      v61 = v30;
      v42 = v10;
      v43 = v12;
      v44 = v15;
      v45 = a9;
    }

    else
    {
      if ((*v62 * (v68 + v39 - 1) + 16 * (v38 + v31)) <= *a9)
      {
        goto LABEL_53;
      }

      v61 = v30;
      v42 = v10;
      v43 = v12;
      v44 = v15;
      v45 = a9;
    }
  }

  else
  {
    v61 = v30;
    v42 = v10;
    v43 = v12;
    v44 = v15;
    v45 = a9;
  }

  fig_log_get_emitter();
  v47 = FigSignalErrorAtGM();
  v46 = v63;
  v32 = v64;
  v27 = v45;
  v15 = v44;
  v12 = v43;
  v10 = v42;
  v30 = v61;
  if (v47)
  {
    v24 = v47;
    goto LABEL_58;
  }

LABEL_53:
  *v23 = v10;
  *(v23 + 4) = v12;
  v48 = v65;
  *(v23 + 12) = v66;
  *(v23 + 20) = v38;
  *(v23 + 28) = v39;
  *(v23 + 36) = v30;
  *(v23 + 44) = v15;
  v23[11] = v48;
  v23[12] = v38;
  v23[13] = v39;
  v23[14] = v31;
  v23[7] = v46;
  v23[8] = v32;
  v49 = v67;
  v50 = v68;
  v23[9] = v69;
  v23[10] = v49;
  v51 = v58;
  v23[15] = v50;
  v23[16] = v51;
  v23[17] = v62;
  v23[18] = v27;
  v23[19] = v59;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v10, global_queue, v23, vt_Copy_xf422_TRC_Tone_Mat_TRC_RGfA_GCD);
  if (!v10)
  {
    return 0;
  }

  v53 = (v23 + 20);
  v54 = v10;
  while (1)
  {
    v55 = *v53++;
    v24 = v55;
    if (v55)
    {
      break;
    }

    if (!--v54)
    {
      v24 = 0;
      break;
    }
  }

LABEL_58:
  if (v10 == 255)
  {
    goto LABEL_59;
  }

  return v24;
}

unsigned __int8 *vt_Copy_xf422_TRC_Tone_Mat_TRC_RGfA_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, float a5)
{
  v5 = *result;
  v6 = *(result + 13);
  v7 = v6 * a2 / v5;
  v8 = (v6 + v6 * a2) / v5 - v7;
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = *(result + 19);
    v11 = *(result + 24) & 0xFFFFFFFE;
    v12 = *(result + 7);
    v13 = *(result + 8);
    v14 = *v13;
    v15 = v13[1];
    v16 = v13[2];
    v17 = **(result + 17);
    *&v18 = *(v10 + 128);
    v19 = 8191.0 / *&v18;
    LOWORD(v18) = *(v10 + 140);
    v20 = v18;
    LOWORD(a5) = *(v10 + 142);
    v21 = LODWORD(a5);
    v22 = v19 * *v10;
    v121 = v19 * *(v10 + 16);
    v122 = v19 * *(v10 + 8);
    v120 = v19 * *(v10 + 20);
    v23 = v19 * *(v10 + 28);
    v24 = *(v10 + 72);
    v25 = *(v10 + 76);
    v26 = *(v10 + 80);
    v27 = *(v10 + 84);
    v28 = *(v10 + 88);
    v29 = *(v10 + 92);
    v30 = *(v10 + 96);
    v31 = *(v10 + 100);
    v32 = v10 + 164;
    v33 = v10 + 16548;
    v34 = v10 + 32932;
    v35 = *(v10 + 104);
    v36 = *(v10 + 108);
    v37 = *(v10 + 112);
    v38 = *(v10 + 116);
    v39 = *(v10 + 120);
    v40 = v7 + *(result + 15);
    v41 = *(result + 28) * a2 / v5 + *(result + 44);
    v42 = *(v10 + 124);
    v43 = *(result + 36);
    if (v42 >= 0x11)
    {
      v44 = 0;
    }

    else
    {
      v44 = 16 - v42;
    }

    v45 = **(result + 16) + v17 * v40 + 16 * *(result + 14);
    v46 = v12[2];
    if (v46)
    {
      v47 = v46 + v41 * v16 + 2 * v43;
    }

    else
    {
      v47 = 0;
    }

    v49 = *v12;
    v48 = *(*(result + 7) + 8);
    _ZF = v48 == 0;
    v51 = v48 + v41 * v15 + 2 * v43;
    if (_ZF)
    {
      v51 = 0;
    }

    v52 = v49 + v41 * v14 + 2 * v43;
    v53 = v44;
    do
    {
      if (v11 >= 1)
      {
        v54 = 0;
        v55 = v52;
        v56 = v45;
        v57 = v47;
        do
        {
          v58 = (v51 + 2 * v54);
          v59 = (v58[1] >> v53) - v21;
          v60 = v122 * v59;
          v61 = v22 * ((*v55 >> v53) - v20);
          v62 = (v122 * v59) + v61;
          v63 = 8191.0;
          if (v62 <= 8191.0)
          {
            v63 = (v122 * v59) + v61;
            if (v62 < 0.0)
            {
              v63 = 0.0;
            }
          }

          v64 = (*v58 >> v53) - v21;
          v65 = v120 * v59;
          v66 = (v120 * v59) + (v64 * v121);
          v67 = 8191.0;
          if ((v61 + v66) <= 8191.0)
          {
            v67 = v61 + v66;
            if ((v61 + v66) < 0.0)
            {
              v67 = 0.0;
            }
          }

          v68 = v23 * v64;
          v69 = (v23 * v64) + v61;
          v70 = 8191.0;
          if (v69 <= 8191.0)
          {
            v70 = v69;
            if (v69 < 0.0)
            {
              v70 = 0.0;
            }
          }

          v71 = v22 * ((v55[1] >> v53) - v20);
          v72 = 8191.0;
          if ((v60 + v71) <= 8191.0)
          {
            v72 = v60 + v71;
            if ((v60 + v71) < 0.0)
            {
              v72 = 0.0;
            }
          }

          v73 = 8191.0;
          if ((v66 + v71) <= 8191.0)
          {
            v73 = v66 + v71;
            if ((v66 + v71) < 0.0)
            {
              v73 = 0.0;
            }
          }

          v74 = v68 + v71;
          v75 = (v68 + v71) <= 8191.0;
          v76 = 8191.0;
          if (v75)
          {
            v76 = v74;
            if (v74 < 0.0)
            {
              v76 = 0.0;
            }
          }

          if (v57)
          {
            LOWORD(v74) = *v57;
            LOWORD(v65) = v57[1];
            v57 += 2;
            v77 = LODWORD(v74) * 0.000015259;
            v78 = LODWORD(v65) * 0.000015259;
          }

          else
          {
            v77 = 0.0;
            v78 = 0.0;
          }

          _S4 = fmaxf(v63, 0.0);
          v80 = 8191.0;
          LOWORD(_S4) = *(v32 + 2 * llroundf(fminf(_S4, 8191.0)));
          __asm { FCVT            S14, H4 }

          LOWORD(_S4) = *(v32 + 2 * llroundf(fminf(fmaxf(v67, 0.0), 8191.0)));
          __asm { FCVT            S10, H4 }

          LOWORD(_S4) = *(v32 + 2 * llroundf(fminf(fmaxf(v70, 0.0), 8191.0)));
          __asm { FCVT            S11, H4 }

          _H12 = *(v32 + 2 * llroundf(fminf(fmaxf(v72, 0.0), 8191.0)));
          _H13 = *(v32 + 2 * llroundf(fminf(fmaxf(v73, 0.0), 8191.0)));
          _H15 = *(v32 + 2 * llroundf(fminf(fmaxf(v76, 0.0), 8191.0)));
          v90 = (((v37 * _S10) + (v36 * _S14)) + (v38 * _S11)) + (v39 * fmaxf(_S14, fmaxf(_S10, _S11)));
          v91 = 8191.0;
          if (v90 <= 8191.0)
          {
            v91 = v90;
            if (v90 < 0.0)
            {
              v91 = 0.0;
            }
          }

          __asm
          {
            FCVT            S12, H12
            FCVT            S13, H13
            FCVT            S15, H15
          }

          _H4 = *(v33 + 2 * llroundf(v91));
          v96 = fmaxf(_S12, fmaxf(_S13, _S15));
          v97 = (((v37 * _S13) + (v36 * _S12)) + (v38 * _S15)) + (v39 * v96);
          if (v97 <= 8191.0)
          {
            v80 = (((v37 * _S13) + (v36 * _S12)) + (v38 * _S15)) + (v39 * v96);
            if (v97 < 0.0)
            {
              v80 = 0.0;
            }
          }

          __asm { FCVT            S4, H4 }

          v99 = _S14 * _S4;
          v100 = _S10 * _S4;
          v101 = _S11 * _S4;
          _H9 = *(v33 + 2 * llroundf(v80));
          __asm { FCVT            S9, H9 }

          _S10 = _S12 * _S9;
          _S11 = _S13 * _S9;
          v106 = _S15 * _S9;
          v107 = ((v25 * v100) + (v99 * v24)) + (v101 * v26);
          v108 = ((v28 * v100) + (v99 * v27)) + (v101 * v29);
          _S4 = ((v31 * v100) + (v99 * v30)) + (v101 * v35);
          _S5 = ((v25 * _S11) + (_S10 * v24)) + (v106 * v26);
          _S6 = ((v28 * _S11) + (_S10 * v27)) + (v106 * v29);
          _S9 = ((v31 * _S11) + (_S10 * v30)) + (v106 * v35);
          LOWORD(_S10) = *(v34 + 2 * llroundf(fminf(fmaxf(v107, 0.0), 8191.0)));
          LOWORD(_S11) = *(v34 + 2 * llroundf(fminf(fmaxf(v108, 0.0), 8191.0)));
          LOWORD(_S4) = *(v34 + 2 * llroundf(fminf(fmaxf(_S4, 0.0), 8191.0)));
          LOWORD(_S5) = *(v34 + 2 * llroundf(fminf(fmaxf(_S5, 0.0), 8191.0)));
          LOWORD(_S6) = *(v34 + 2 * llroundf(fminf(fmaxf(_S6, 0.0), 8191.0)));
          LOWORD(_S9) = *(v34 + 2 * llroundf(fminf(fmaxf(_S9, 0.0), 8191.0)));
          __asm
          {
            FCVT            S10, H10
            FCVT            S11, H11
            FCVT            S4, H4
            FCVT            S5, H5
            FCVT            S6, H6
            FCVT            S9, H9
          }

          *v56 = _S10;
          *(v56 + 4) = _S11;
          if (!v57)
          {
            v77 = 1.0;
          }

          *(v56 + 8) = _S4;
          *(v56 + 12) = v77;
          if (v57)
          {
            v119 = v78;
          }

          else
          {
            v119 = 1.0;
          }

          *(v56 + 16) = _S5;
          *(v56 + 20) = _S6;
          *(v56 + 24) = _S9;
          *(v56 + 28) = v119;
          v54 += 2;
          v55 += 2;
          v56 += 32;
        }

        while (v54 < v11);
      }

      v52 += v14;
      v51 += v15;
      v47 += v16;
      v45 += v17;
      ++v9;
    }

    while (v9 != v8);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_xf422_TRC_Mat_TRC_RGfA_neon_fp16(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4, void *a5, uint64_t *a6, uint64_t a7, void *a8, void *a9)
{
  v62 = a8;
  v63 = a3;
  v69 = a5;
  v64 = a4;
  v70 = *MEMORY[0x1E69E9840];
  v10 = *(a1 + 162);
  v12 = *a2;
  v11 = a2[1];
  v13 = a2[2];
  v61 = a2[3];
  v14 = a2[4];
  v15 = a2[5];
  v16 = *a6;
  v65 = a6[1];
  v66 = v11;
  v18 = a6[2];
  v17 = a6[3];
  v59 = a1;
  v60 = v17;
  v20 = a6[4];
  v19 = a6[5];
  v67 = v16;
  v68 = v19;
  v22 = v14 + v13 != v12 || v20 + v18 != v16;
  if (v10 == 255)
  {
    v23 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v23)
    {
      v24 = 0;
LABEL_59:
      free(v23);
      return v24;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v10 + 160, a3, a4);
    v23 = (&v57 - v25);
    bzero(&v57 - v25, v26);
  }

  v58 = a7;
  v27 = a9;
  v28 = v18 - 1;
  v29 = v13 - 1;
  if (v20)
  {
    v30 = v14 + 1;
  }

  else
  {
    v29 = v13;
    v30 = v14;
  }

  if (v20)
  {
    v31 = v20 + 1;
  }

  else
  {
    v28 = v18;
    v31 = v20;
  }

  if (v28)
  {
    v32 = v64;
    if (v22 || (v33 = v29 + 1 + v30, v34 = 2 * v33, 2 * v33 > *v64) || ((2 * (v33 + (v33 >> 63))) & 0xFFFFFFFFFFFFFFFCLL) > v64[1] || (v35 = v64[2], v34 > v35) && v35 || (16 * (v31 + v28) + 16) > *v62)
    {
      --v28;
      --v29;
    }

    else
    {
      ++v28;
      ++v67;
      ++v12;
      ++v29;
    }
  }

  else
  {
    v32 = v64;
  }

  if (v29 + v30 > v12)
  {
    v29 = v12 - v30;
  }

  if (v28 + v31 > v67)
  {
    v28 = v67 - v31;
  }

  if (v15 + v61 <= v66)
  {
    v36 = v61;
  }

  else
  {
    v36 = v66 - v15;
  }

  if (v68 + v60 <= v65)
  {
    v37 = v60;
  }

  else
  {
    v37 = v65 - v68;
  }

  if (v29 >= v28)
  {
    v38 = v28;
  }

  else
  {
    v38 = v29;
  }

  if (v36 >= v37)
  {
    v39 = v37;
  }

  else
  {
    v39 = v36;
  }

  v40 = v15 + v39 - 1;
  v41 = v38 + v30;
  if ((*v32 * v40 + 2 * (v38 + v30)) <= *v69)
  {
    v46 = v63;
    if (*(v63 + 8) && v32[1] * v40 + 4 * ((v41 + 1 + ((v41 + 1) >> 63)) >> 1) > v69[1])
    {
      v61 = v30;
      v42 = v10;
      v43 = v12;
      v44 = v15;
      v45 = a9;
    }

    else if (*(v63 + 16) && (2 * v41 + v32[2] * v40) > v69[2])
    {
      v61 = v30;
      v42 = v10;
      v43 = v12;
      v44 = v15;
      v45 = a9;
    }

    else
    {
      if ((*v62 * (v68 + v39 - 1) + 16 * (v38 + v31)) <= *a9)
      {
        goto LABEL_53;
      }

      v61 = v30;
      v42 = v10;
      v43 = v12;
      v44 = v15;
      v45 = a9;
    }
  }

  else
  {
    v61 = v30;
    v42 = v10;
    v43 = v12;
    v44 = v15;
    v45 = a9;
  }

  fig_log_get_emitter();
  v47 = FigSignalErrorAtGM();
  v46 = v63;
  v32 = v64;
  v27 = v45;
  v15 = v44;
  v12 = v43;
  v10 = v42;
  v30 = v61;
  if (v47)
  {
    v24 = v47;
    goto LABEL_58;
  }

LABEL_53:
  *v23 = v10;
  *(v23 + 4) = v12;
  v48 = v65;
  *(v23 + 12) = v66;
  *(v23 + 20) = v38;
  *(v23 + 28) = v39;
  *(v23 + 36) = v30;
  *(v23 + 44) = v15;
  v23[11] = v48;
  v23[12] = v38;
  v23[13] = v39;
  v23[14] = v31;
  v23[7] = v46;
  v23[8] = v32;
  v49 = v67;
  v50 = v68;
  v23[9] = v69;
  v23[10] = v49;
  v51 = v58;
  v23[15] = v50;
  v23[16] = v51;
  v23[17] = v62;
  v23[18] = v27;
  v23[19] = v59;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v10, global_queue, v23, vt_Copy_xf422_TRC_Mat_TRC_RGfA_neon_fp16_GCD);
  if (!v10)
  {
    return 0;
  }

  v53 = (v23 + 20);
  v54 = v10;
  while (1)
  {
    v55 = *v53++;
    v24 = v55;
    if (v55)
    {
      break;
    }

    if (!--v54)
    {
      v24 = 0;
      break;
    }
  }

LABEL_58:
  if (v10 == 255)
  {
    goto LABEL_59;
  }

  return v24;
}

char *vt_Copy_xf422_TRC_Mat_TRC_RGfA_neon_fp16_GCD(char *result, uint64_t a2, int16x8_t _Q0)
{
  v6 = *result;
  v148 = result;
  v7 = *(result + 13);
  v8 = v7 * a2 / v6;
  v152 = (v7 + v7 * a2) / v6 - v8;
  if (v152 >= 1)
  {
    v9 = 0;
    result = *(result + 24);
    v10 = *(v148 + 19);
    v11 = *(v148 + 7);
    v12 = *(v148 + 8);
    v13 = *v12;
    v14 = **(v148 + 17);
    v15 = v10[17].u16[2];
    v16 = v10[17].u16[3];
    v17.i32[0] = v10[3].i32[1];
    _Q0.i32[0] = v10[9].i32[0];
    _S1 = v10[9].f32[1];
    _S2 = v10[10].f32[0];
    _S3 = v10[10].f32[1];
    _S4 = v10[11].f32[0];
    _S5 = v10[11].f32[1];
    _S6 = v10[12].f32[0];
    _S7 = v10[12].f32[1];
    _S16 = v10[13].f32[0];
    v26 = result - 7;
    v27 = &v10[20] + 4;
    v28 = result & 0xFFFFFFFE;
    v3.f32[0] = 8191.0 / v10[16].u32[0];
    v29 = v15;
    v30 = v16;
    _S20 = v3.f32[0] * v10->f32[0];
    v32 = &v10[2068] + 4;
    __asm { FCVT            H8, S20 }

    *v4.i16 = v15;
    v167 = vdupq_lane_s16(v4, 0);
    v17.i32[1] = v10[1].i32[0];
    *v5.f32 = vmul_n_f32(v17, v3.f32[0]);
    v38 = -v16;
    *v3.f32 = vmul_n_f32(v10[2], v3.f32[0]);
    v166 = vdupq_lane_s32(vcvt_f16_f32(v5), 0);
    v164 = vmulq_n_f16(v166, v38);
    v165 = vdupq_lane_s32(vcvt_f16_f32(v3), 0);
    v39 = vmulq_n_f16(v165, v38);
    v160 = *_Q0.i32;
    __asm { FCVT            H9, S0 }

    v162 = _H9;
    v163 = v39;
    __asm { FCVT            H0, S1 }

    v161 = *_Q0.i16;
    __asm { FCVT            H0, S2 }

    v159 = *_Q0.i16;
    __asm { FCVT            H0, S3 }

    v158 = *_Q0.i16;
    __asm { FCVT            H0, S4 }

    v157 = *_Q0.i16;
    __asm { FCVT            H0, S5 }

    v156 = *_Q0.i16;
    __asm { FCVT            H0, S6 }

    v155 = _Q0;
    __asm { FCVT            H0, S7 }

    v154 = _H0;
    __asm { FCVT            H0, S16 }

    v153 = _H0;
    LODWORD(v10) = v10[15].u8[4];
    v43 = 16 - v10;
    v44 = v11[2];
    v45 = *(v148 + 28) * a2 / v6 + *(v148 + 44);
    v151 = v12[2];
    v46 = *(v148 + 36);
    v47 = v44 + v151 * v45 + 2 * v46;
    v48 = v8 + *(v148 + 15);
    v49 = *v11;
    v50 = *(*(v148 + 7) + 8);
    _CF = v10 >= 0x11;
    v51 = v12[1];
    v52 = v50 + v51 * v45 + 2 * v46;
    if (_CF)
    {
      v43 = 0;
    }

    v53 = **(v148 + 16) + v14 * v48 + 16 * *(v148 + 14);
    if (!v44)
    {
      v47 = 0;
    }

    if (!v50)
    {
      v52 = 0;
    }

    v54 = vdupq_n_s16(-v43);
    v55 = v13;
    v56 = v49 + v13 * v45 + 2 * v46;
    v57 = result;
    v150 = result & 0xFFFFFFF8;
    v58 = v5.i64[0];
    _Q0.i32[0] = v3.i32[1];
    v59.i64[0] = 0x9000900090009000;
    v59.i64[1] = 0x9000900090009000;
    do
    {
      if (v57 < 8)
      {
        v100 = 0;
        v64 = v52;
        v63 = v47;
        v62 = v53;
        v61 = v56;
      }

      else
      {
        v60 = 0;
        v61 = v56;
        v62 = v53;
        v63 = v47;
        v64 = v52;
        do
        {
          if (v63 && (v65 = *v63, v63 += 16, v66 = v65, v63))
          {
            *v67.i8 = vzip1_s16(*v66.i8, 0);
            v67.u64[1] = vzip2_s16(*v66.i8, 0);
            v68 = vextq_s8(v66, v66, 8uLL).u64[0];
            *v69.i8 = vzip1_s16(v68, 0);
            v69.u64[1] = vzip2_s16(v68, 0);
            v70 = vcvtq_f32_u32(v67);
            v71 = vcvtq_f32_u32(v69);
            v72 = vdupq_n_s32(0x37800080u);
            _Q14 = vmulq_f32(v70, v72);
            v74 = vmulq_f32(v71, v72);
          }

          else
          {
            __asm { FMOV            V14.4S, #1.0 }

            v74 = _Q14;
          }

          v75 = *v64++;
          v76 = vcvtq_f16_u16(vshlq_u16(v75, v54));
          v77 = vmlaq_f16(v164, v166, v76);
          v78 = vmlaq_f16(v163, v165, v76);
          v79 = vuzp1q_s16(v78, _Q0);
          *v79.i8 = vadd_f16(*v79.i8, *&vuzp2q_s16(v78, _Q0));
          v80 = vzip1q_s16(v79, v79);
          v81 = *v61++;
          v82 = vsubq_f16(vcvtq_f16_u16(vshlq_u16(v81, v54)), v167);
          v83 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vtrn2q_s16(v77, v77), v82, _H8), 0), v59));
          v84.i16[0] = *&v27[2 * v83.u16[0]];
          v84.i16[1] = *&v27[2 * v83.u16[1]];
          v84.i16[2] = *&v27[2 * v83.u16[2]];
          v84.i16[3] = *&v27[2 * v83.u16[3]];
          v84.i16[4] = *&v27[2 * v83.u16[4]];
          v84.i16[5] = *&v27[2 * v83.u16[5]];
          v84.i16[6] = *&v27[2 * v83.u16[6]];
          v84.i16[7] = *&v27[2 * v83.u16[7]];
          v85 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(v80, v82, _H8), 0), v59));
          v80.i16[0] = *&v27[2 * v85.u16[0]];
          v80.i16[1] = *&v27[2 * v85.u16[1]];
          v80.i16[2] = *&v27[2 * v85.u16[2]];
          v80.i16[3] = *&v27[2 * v85.u16[3]];
          v80.i16[4] = *&v27[2 * v85.u16[4]];
          v80.i16[5] = *&v27[2 * v85.u16[5]];
          v80.i16[6] = *&v27[2 * v85.u16[6]];
          v80.i16[7] = *&v27[2 * v85.u16[7]];
          v86 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vtrn1q_s16(v77, v77), v82, _H8), 0), v59));
          v85.i16[0] = *&v27[2 * v86.u16[0]];
          v85.i16[1] = *&v27[2 * v86.u16[1]];
          v85.i16[2] = *&v27[2 * v86.u16[2]];
          v85.i16[3] = *&v27[2 * v86.u16[3]];
          v85.i16[4] = *&v27[2 * v86.u16[4]];
          v85.i16[5] = *&v27[2 * v86.u16[5]];
          v85.i16[6] = *&v27[2 * v86.u16[6]];
          v85.i16[7] = *&v27[2 * v86.u16[7]];
          v87 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v84, v158), v80, v157), v85, v156);
          _Q0 = v155;
          v88 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v85, v153), v80, v154), v84, *v155.i16);
          v89 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v84, v162), v80, v161), v85, v159), 0), v59));
          v84.i16[0] = *&v32[2 * v89.u16[0]];
          v84.i16[1] = *&v32[2 * v89.u16[1]];
          v84.i16[2] = *&v32[2 * v89.u16[2]];
          v84.i16[3] = *&v32[2 * v89.u16[3]];
          v84.i16[4] = *&v32[2 * v89.u16[4]];
          v84.i16[5] = *&v32[2 * v89.u16[5]];
          v84.i16[6] = *&v32[2 * v89.u16[6]];
          v84.i16[7] = *&v32[2 * v89.u16[7]];
          v90 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v87, 0), v59));
          v82.i16[0] = *&v32[2 * v90.u16[0]];
          v82.i16[1] = *&v32[2 * v90.u16[1]];
          v82.i16[2] = *&v32[2 * v90.u16[2]];
          v82.i16[3] = *&v32[2 * v90.u16[3]];
          v82.i16[4] = *&v32[2 * v90.u16[4]];
          v82.i16[5] = *&v32[2 * v90.u16[5]];
          v82.i16[6] = *&v32[2 * v90.u16[6]];
          v82.i16[7] = *&v32[2 * v90.u16[7]];
          v91 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v88, 0), v59));
          v88.i16[0] = *&v32[2 * v91.u16[0]];
          result = &v32[2 * v91.u16[3]];
          v88.i16[1] = *&v32[2 * v91.u16[1]];
          v88.i16[2] = *&v32[2 * v91.u16[2]];
          v88.i16[3] = *result;
          v88.i16[4] = *&v32[2 * v91.u16[4]];
          v88.i16[5] = *&v32[2 * v91.u16[5]];
          v88.i16[6] = *&v32[2 * v91.u16[6]];
          v88.i16[7] = *&v32[2 * v91.u16[7]];
          v92 = vcvtq_f32_f16(*v84.i8);
          v93 = vcvtq_f32_f16(*v82.i8);
          v94 = vcvtq_f32_f16(*v88.i8);
          v95 = vcvtq_f32_f16(*&vextq_s8(v84, v84, 8uLL));
          v96 = vcvtq_f32_f16(*&vextq_s8(v82, v82, 8uLL));
          v97 = vcvtq_f32_f16(*&vextq_s8(v88, v88, 8uLL));
          v98 = v62 + 128;
          vst4q_f32(v62, *(&_Q14 - 3));
          v99 = (v62 + 64);
          vst4q_f32(v99, *(&v74 - 3));
          v62 = v98;
          v60 += 8;
        }

        while (v60 < v26);
        v100 = v150;
      }

      while (v100 < v28)
      {
        v101 = (v64->u16[1] >> v43) - v30;
        v102 = *(&v58 + 1) * v101;
        v103 = _S20 * ((v61->u16[0] >> v43) - v29);
        v104 = (*(&v58 + 1) * v101) + v103;
        v105 = 8191.0;
        if (v104 <= 8191.0)
        {
          v105 = (*(&v58 + 1) * v101) + v103;
          if (v104 < 0.0)
          {
            v105 = 0.0;
          }
        }

        v106 = (v64->u16[0] >> v43) - v30;
        v107 = (v3.f32[1] * v101) + (v106 * v3.f32[0]);
        v108 = 8191.0;
        if ((v103 + v107) <= 8191.0)
        {
          v108 = v103 + v107;
          if ((v103 + v107) < 0.0)
          {
            v108 = 0.0;
          }
        }

        v109 = *&v58 * v106;
        v110 = (*&v58 * v106) + v103;
        v111 = 8191.0;
        if (v110 <= 8191.0)
        {
          v111 = v110;
          if (v110 < 0.0)
          {
            v111 = 0.0;
          }
        }

        v112 = (v61->u16[1] >> v43) - v29;
        v113 = _S20 * v112;
        v114 = v102 + (_S20 * v112);
        v115 = 8191.0;
        if (v114 <= 8191.0)
        {
          v115 = v114;
          if (v114 < 0.0)
          {
            v115 = 0.0;
          }
        }

        v116 = 8191.0;
        if ((v107 + v113) <= 8191.0)
        {
          v116 = v107 + v113;
          if ((v107 + v113) < 0.0)
          {
            v116 = 0.0;
          }
        }

        v117 = v109 + v113;
        v118 = (v109 + v113) <= 8191.0;
        v119 = 8191.0;
        if (v118)
        {
          v119 = v117;
          if (v117 < 0.0)
          {
            v119 = 0.0;
          }
        }

        if (v63)
        {
          LOWORD(v112) = *v63;
          LOWORD(v107) = *(v63 + 2);
          v63 += 4;
          v120 = LODWORD(v112) * 0.000015259;
          v121 = LODWORD(v107) * 0.000015259;
        }

        else
        {
          v120 = 0.0;
          v121 = 0.0;
        }

        _H23 = *&v27[2 * llroundf(fminf(fmaxf(v105, 0.0), 8191.0))];
        __asm { FCVT            S23, H23 }

        _H25 = *&v27[2 * llroundf(fminf(fmaxf(v108, 0.0), 8191.0))];
        __asm { FCVT            S25, H25 }

        _H29 = *&v27[2 * llroundf(fminf(fmaxf(v111, 0.0), 8191.0))];
        __asm { FCVT            S29, H29 }

        _H30 = *&v27[2 * llroundf(fminf(fmaxf(v115, 0.0), 8191.0))];
        __asm { FCVT            S30, H30 }

        _H9 = *&v27[2 * llroundf(fminf(fmaxf(v116, 0.0), 8191.0))];
        _H10 = *&v27[2 * llroundf(fminf(fmaxf(v119, 0.0), 8191.0))];
        __asm
        {
          FCVT            S9, H9
          FCVT            S10, H10
        }

        v134 = ((_S1 * _S25) + (_S23 * v160)) + (_S29 * _S2);
        v135 = ((_S4 * _S25) + (_S23 * _S3)) + (_S29 * _S5);
        _S23 = ((_S7 * _S25) + (_S23 * _S6)) + (_S29 * _S16);
        _S25 = ((_S1 * _S9) + (_S30 * v160)) + (_S10 * _S2);
        _S29 = ((_S4 * _S9) + (_S30 * _S3)) + (_S10 * _S5);
        v139 = ((_S7 * _S9) + (_S30 * _S6)) + (_S10 * _S16);
        LOWORD(_S9) = *&v32[2 * llroundf(fminf(fmaxf(v134, 0.0), 8191.0))];
        LOWORD(_S10) = *&v32[2 * llroundf(fminf(fmaxf(v135, 0.0), 8191.0))];
        LOWORD(_S23) = *&v32[2 * llroundf(fminf(fmaxf(_S23, 0.0), 8191.0))];
        LOWORD(_S25) = *&v32[2 * llroundf(fminf(fmaxf(_S25, 0.0), 8191.0))];
        LOWORD(_S29) = *&v32[2 * llroundf(fminf(fmaxf(_S29, 0.0), 8191.0))];
        _H24 = *&v32[2 * llroundf(fminf(fmaxf(v139, 0.0), 8191.0))];
        __asm
        {
          FCVT            S30, H9
          FCVT            S9, H10
          FCVT            S23, H23
          FCVT            S25, H25
          FCVT            S29, H29
          FCVT            S24, H24
        }

        *v62 = _S30;
        *(v62 + 4) = _S9;
        _Q0.i32[0] = 1.0;
        if (!v63)
        {
          v120 = 1.0;
        }

        *(v62 + 8) = _S23;
        *(v62 + 12) = v120;
        if (v63)
        {
          v147 = v121;
        }

        else
        {
          v147 = 1.0;
        }

        *(v62 + 16) = _S25;
        *(v62 + 20) = _S29;
        *(v62 + 24) = _S24;
        *(v62 + 28) = v147;
        v62 += 32;
        v100 += 2;
        v64 = (v64 + 4);
        v61 = (v61 + 4);
      }

      v56 += v55;
      v52 += v51;
      v47 += v151;
      v53 += v14;
      ++v9;
    }

    while (v9 != v152);
  }

  *&v148[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_xf422_TRC_Mat_TRC_RGfA(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4, void *a5, uint64_t *a6, uint64_t a7, void *a8, void *a9)
{
  v62 = a8;
  v63 = a3;
  v69 = a5;
  v64 = a4;
  v70 = *MEMORY[0x1E69E9840];
  v10 = *(a1 + 162);
  v12 = *a2;
  v11 = a2[1];
  v13 = a2[2];
  v61 = a2[3];
  v14 = a2[4];
  v15 = a2[5];
  v16 = *a6;
  v65 = a6[1];
  v66 = v11;
  v18 = a6[2];
  v17 = a6[3];
  v59 = a1;
  v60 = v17;
  v20 = a6[4];
  v19 = a6[5];
  v67 = v16;
  v68 = v19;
  v22 = v14 + v13 != v12 || v20 + v18 != v16;
  if (v10 == 255)
  {
    v23 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v23)
    {
      v24 = 0;
LABEL_59:
      free(v23);
      return v24;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v10 + 160, a3, a4);
    v23 = (&v57 - v25);
    bzero(&v57 - v25, v26);
  }

  v58 = a7;
  v27 = a9;
  v28 = v18 - 1;
  v29 = v13 - 1;
  if (v20)
  {
    v30 = v14 + 1;
  }

  else
  {
    v29 = v13;
    v30 = v14;
  }

  if (v20)
  {
    v31 = v20 + 1;
  }

  else
  {
    v28 = v18;
    v31 = v20;
  }

  if (v28)
  {
    v32 = v64;
    if (v22 || (v33 = v29 + 1 + v30, v34 = 2 * v33, 2 * v33 > *v64) || ((2 * (v33 + (v33 >> 63))) & 0xFFFFFFFFFFFFFFFCLL) > v64[1] || (v35 = v64[2], v34 > v35) && v35 || (16 * (v31 + v28) + 16) > *v62)
    {
      --v28;
      --v29;
    }

    else
    {
      ++v28;
      ++v67;
      ++v12;
      ++v29;
    }
  }

  else
  {
    v32 = v64;
  }

  if (v29 + v30 > v12)
  {
    v29 = v12 - v30;
  }

  if (v28 + v31 > v67)
  {
    v28 = v67 - v31;
  }

  if (v15 + v61 <= v66)
  {
    v36 = v61;
  }

  else
  {
    v36 = v66 - v15;
  }

  if (v68 + v60 <= v65)
  {
    v37 = v60;
  }

  else
  {
    v37 = v65 - v68;
  }

  if (v29 >= v28)
  {
    v38 = v28;
  }

  else
  {
    v38 = v29;
  }

  if (v36 >= v37)
  {
    v39 = v37;
  }

  else
  {
    v39 = v36;
  }

  v40 = v15 + v39 - 1;
  v41 = v38 + v30;
  if ((*v32 * v40 + 2 * (v38 + v30)) <= *v69)
  {
    v46 = v63;
    if (*(v63 + 8) && v32[1] * v40 + 4 * ((v41 + 1 + ((v41 + 1) >> 63)) >> 1) > v69[1])
    {
      v61 = v30;
      v42 = v10;
      v43 = v12;
      v44 = v15;
      v45 = a9;
    }

    else if (*(v63 + 16) && (2 * v41 + v32[2] * v40) > v69[2])
    {
      v61 = v30;
      v42 = v10;
      v43 = v12;
      v44 = v15;
      v45 = a9;
    }

    else
    {
      if ((*v62 * (v68 + v39 - 1) + 16 * (v38 + v31)) <= *a9)
      {
        goto LABEL_53;
      }

      v61 = v30;
      v42 = v10;
      v43 = v12;
      v44 = v15;
      v45 = a9;
    }
  }

  else
  {
    v61 = v30;
    v42 = v10;
    v43 = v12;
    v44 = v15;
    v45 = a9;
  }

  fig_log_get_emitter();
  v47 = FigSignalErrorAtGM();
  v46 = v63;
  v32 = v64;
  v27 = v45;
  v15 = v44;
  v12 = v43;
  v10 = v42;
  v30 = v61;
  if (v47)
  {
    v24 = v47;
    goto LABEL_58;
  }

LABEL_53:
  *v23 = v10;
  *(v23 + 4) = v12;
  v48 = v65;
  *(v23 + 12) = v66;
  *(v23 + 20) = v38;
  *(v23 + 28) = v39;
  *(v23 + 36) = v30;
  *(v23 + 44) = v15;
  v23[11] = v48;
  v23[12] = v38;
  v23[13] = v39;
  v23[14] = v31;
  v23[7] = v46;
  v23[8] = v32;
  v49 = v67;
  v50 = v68;
  v23[9] = v69;
  v23[10] = v49;
  v51 = v58;
  v23[15] = v50;
  v23[16] = v51;
  v23[17] = v62;
  v23[18] = v27;
  v23[19] = v59;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v10, global_queue, v23, vt_Copy_xf422_TRC_Mat_TRC_RGfA_GCD);
  if (!v10)
  {
    return 0;
  }

  v53 = (v23 + 20);
  v54 = v10;
  while (1)
  {
    v55 = *v53++;
    v24 = v55;
    if (v55)
    {
      break;
    }

    if (!--v54)
    {
      v24 = 0;
      break;
    }
  }

LABEL_58:
  if (v10 == 255)
  {
    goto LABEL_59;
  }

  return v24;
}