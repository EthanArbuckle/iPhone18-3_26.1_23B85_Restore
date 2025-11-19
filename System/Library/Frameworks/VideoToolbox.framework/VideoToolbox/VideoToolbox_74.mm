uint64_t vt_Copy_b64a_TRC_Mat_TRC_xf420(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4, void *a5, uint64_t *a6, uint64_t a7, void *a8, void *a9)
{
  v60 = a7;
  v61 = a8;
  v66 = a4;
  v67 = a5;
  v59 = a3;
  v68 = *MEMORY[0x1E69E9840];
  v58 = a1;
  v9 = *(a1 + 162);
  v10 = a2[1];
  v12 = a2[2];
  v11 = a2[3];
  v14 = a2[4];
  v13 = a2[5];
  v15 = *a6;
  v62 = *a2;
  v63 = v15;
  v16 = a6[1];
  v17 = a6[2];
  v18 = a6[3];
  v19 = a6[4];
  v20 = a6[5];
  v64 = v16;
  v65 = v10;
  v22 = v13 + v11 != v10 || v20 + v18 != v16;
  LODWORD(v57) = v22;
  if (v9 == 255)
  {
    v23 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v23)
    {
      v24 = 0;
LABEL_61:
      free(v23);
      return v24;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v9 + 160, a3, a4);
    v23 = (&v56 - v25);
    bzero(&v56 - v25, v26);
  }

  v27 = v17 - 1;
  v28 = a9;
  v29 = v12 - 1;
  if (v19)
  {
    v30 = v14 + 1;
  }

  else
  {
    v29 = v12;
    v30 = v14;
  }

  if (v19)
  {
    v31 = v19 + 1;
  }

  else
  {
    v27 = v17;
    v31 = v19;
  }

  v32 = v29 - (v27 & 1);
  v33 = v27 & 0xFFFFFFFFFFFFFFFELL;
  v34 = v18 - 1;
  v35 = v11 - 1;
  if (v20)
  {
    v36 = v13 + 1;
  }

  else
  {
    v35 = v11;
    v36 = v13;
  }

  if (v20)
  {
    v37 = v20 + 1;
  }

  else
  {
    v34 = v18;
    v37 = v20;
  }

  if (v34)
  {
    if ((v57 & 1) != 0 || (*v66 * (v35 + 1 + v36)) > *v67 || (v38 = v34 + 1 + v37, (*v61 * v38) > *a9) || (v61[1] * (v38 / 2)) > a9[1] || (v61[2] * v38) > a9[2])
    {
      --v34;
      --v35;
    }

    else
    {
      ++v64;
      ++v65;
      ++v35;
      ++v34;
    }
  }

  if (v32 + v30 > v62)
  {
    v32 = v62 - v30;
  }

  if (v33 + v31 > v63)
  {
    v33 = v63 - v31;
  }

  if (v35 + v36 > v65)
  {
    v35 = v65 - v36;
  }

  if (v34 + v37 > v64)
  {
    v34 = v64 - v37;
  }

  if (v32 >= v33)
  {
    v39 = v33;
  }

  else
  {
    v39 = v32;
  }

  if (v35 >= v34)
  {
    v40 = v34;
  }

  else
  {
    v40 = v35;
  }

  if (((v36 + v40 - 1) * *v66 + 8 * (v39 + v30)) > *v67)
  {
    v57 = v36;
    v41 = v30;
    v42 = v31;
    v43 = v9;
    v44 = a9;
    goto LABEL_54;
  }

  v45 = v40 + v37 - 1;
  v46 = v39 + v31;
  if ((*v61 * v45 + 2 * (v39 + v31)) > *a9)
  {
    v57 = v36;
    v41 = v30;
    v42 = v31;
    v43 = v9;
    v44 = a9;
    goto LABEL_54;
  }

  v47 = v60;
  if (*(v60 + 8) && v61[1] * ((v40 + v37 + 1) / 2 - 1) + 4 * ((v46 + 1 + ((v46 + 1) >> 63)) >> 1) > a9[1])
  {
    v57 = v36;
    v41 = v30;
    v42 = v31;
    v43 = v9;
    v44 = a9;
    goto LABEL_54;
  }

  if (*(v60 + 16) && (2 * v46 + v61[2] * v45) > a9[2])
  {
    v57 = v36;
    v41 = v30;
    v42 = v31;
    v43 = v9;
    v44 = a9;
LABEL_54:
    fig_log_get_emitter();
    v24 = FigSignalErrorAtGM();
    v47 = v60;
    v28 = v44;
    v9 = v43;
    v31 = v42;
    v30 = v41;
    v36 = v57;
    if (v24)
    {
      goto LABEL_60;
    }
  }

  *v23 = v9;
  *(v23 + 4) = v62;
  v48 = v64;
  *(v23 + 12) = v65;
  *(v23 + 20) = v39;
  *(v23 + 28) = v40;
  *(v23 + 36) = v30;
  *(v23 + 44) = v36;
  v23[11] = v48;
  v23[12] = v39;
  v23[13] = v40;
  v23[14] = v31;
  v49 = v66;
  v23[7] = v59;
  v23[8] = v49;
  v50 = v63;
  v23[9] = v67;
  v23[10] = v50;
  v23[15] = v37;
  v23[16] = v47;
  v23[17] = v61;
  v23[18] = v28;
  v23[19] = v58;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v9, global_queue, v23, vt_Copy_b64a_TRC_Mat_TRC_xf420_GCD);
  if (!v9)
  {
    return 0;
  }

  v52 = (v23 + 20);
  v53 = v9;
  while (1)
  {
    v54 = *v52++;
    v24 = v54;
    if (v54)
    {
      break;
    }

    if (!--v53)
    {
      v24 = 0;
      break;
    }
  }

LABEL_60:
  if (v9 == 255)
  {
    goto LABEL_61;
  }

  return v24;
}

unsigned __int8 *vt_Copy_b64a_TRC_Mat_TRC_xf420_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, float a5, float a6, float a7, float a8, float a9)
{
  v9 = 2 * *result;
  v10 = *(result + 13);
  v11 = v10 * a2 / v9;
  v12 = 2 * ((v10 + v10 * a2) / v9 - v11);
  if (v12 >= 1)
  {
    v13 = 0;
    v14 = *(result + 19);
    v15 = *(result + 24) & 0xFFFFFFFE;
    v16 = **(result + 8);
    v17 = *(result + 16);
    v18 = *(result + 17);
    v19 = *v18;
    v20 = v18[1];
    v21 = 8191.0 / *(v14 + 128);
    LOWORD(a5) = *(v14 + 144);
    v22 = LODWORD(a5);
    LOWORD(a6) = *(v14 + 146);
    LOWORD(a7) = *(v14 + 148);
    v23 = LODWORD(a7);
    LOWORD(a8) = *(v14 + 150);
    v131 = LODWORD(a8);
    LOWORD(a9) = *(v14 + 152);
    v132 = LODWORD(a9);
    v133 = LODWORD(a6);
    v129 = *(v14 + 40);
    v130 = *(v14 + 36);
    v127 = *(v14 + 48) * 0.25;
    v128 = *(v14 + 44);
    v125 = *(v14 + 56) * 0.25;
    v126 = *(v14 + 52) * 0.25;
    v123 = *(v14 + 64) * 0.25;
    v124 = *(v14 + 60) * 0.25;
    v24 = *(v14 + 72);
    v122 = *(v14 + 68) * 0.25;
    v25 = *(v14 + 76);
    v26 = *(v14 + 80);
    v27 = *(v14 + 84);
    v28 = *(v14 + 88);
    v29 = *(v14 + 92);
    v30 = *(v14 + 96);
    v32 = *(v14 + 100);
    v31 = *(v14 + 104);
    v33 = v14 + 164;
    v34 = v14 + 16548;
    v35 = *(result + 14);
    v36 = *(result + 15) + 2 * v11;
    v38 = *v17;
    v37 = v17[1];
    v39 = (v38 + v19 * v36 + 2 * v35);
    v40 = (**(result + 7) + (*(result + 44) + 2 * (*(result + 28) * a2 / v9)) * v16 + 8 * *(result + 36));
    LODWORD(v14) = *(v14 + 132);
    v41 = 16 - v14;
    if (v14 >= 0x11)
    {
      v41 = 0;
    }

    v42 = v37 + v20 * (v36 / 2) + 2 * v35;
    v43 = v41;
    do
    {
      v44 = v40 + v16;
      v45 = &v39[v19];
      if (v15 >= 1)
      {
        v46 = 0;
        v47 = (v40 + v16);
        v48 = &v39[v19];
        do
        {
          _H18 = *(v33 + 2 * llroundf(fminf(fmaxf(v21 * (bswap32(v40[1]) >> 16), 0.0), 8191.0)));
          __asm { FCVT            S18, H18 }

          _H19 = *(v33 + 2 * llroundf(fminf(fmaxf(v21 * (bswap32(v40[2]) >> 16), 0.0), 8191.0)));
          __asm { FCVT            S19, H19 }

          _H20 = *(v33 + 2 * llroundf(fminf(fmaxf(v21 * (bswap32(v40[3]) >> 16), 0.0), 8191.0)));
          _H21 = *(v33 + 2 * llroundf(fminf(fmaxf(v21 * (bswap32(v40[5]) >> 16), 0.0), 8191.0)));
          __asm
          {
            FCVT            S20, H20
            FCVT            S21, H21
          }

          _H22 = *(v33 + 2 * llroundf(fminf(fmaxf(v21 * (bswap32(v40[6]) >> 16), 0.0), 8191.0)));
          __asm { FCVT            S22, H22 }

          _H24 = *(v33 + 2 * llroundf(fminf(fmaxf(v21 * (bswap32(v40[7]) >> 16), 0.0), 8191.0)));
          __asm { FCVT            S24, H24 }

          _H10 = *(v33 + 2 * llroundf(fminf(fmaxf(v21 * (bswap32(v47[1]) >> 16), 0.0), 8191.0)));
          __asm { FCVT            S10, H10 }

          _H11 = *(v33 + 2 * llroundf(fminf(fmaxf(v21 * (bswap32(v47[2]) >> 16), 0.0), 8191.0)));
          __asm { FCVT            S11, H11 }

          _H12 = *(v33 + 2 * llroundf(fminf(fmaxf(v21 * (bswap32(v47[3]) >> 16), 0.0), 8191.0)));
          _H13 = *(v33 + 2 * llroundf(fminf(fmaxf(v21 * (bswap32(v47[5]) >> 16), 0.0), 8191.0)));
          __asm
          {
            FCVT            S12, H12
            FCVT            S13, H13
          }

          _H14 = *(v33 + 2 * llroundf(fminf(fmaxf(v21 * (bswap32(v47[6]) >> 16), 0.0), 8191.0)));
          __asm { FCVT            S14, H14 }

          _H15 = *(v33 + 2 * llroundf(fminf(fmaxf(v21 * (bswap32(v47[7]) >> 16), 0.0), 8191.0)));
          __asm { FCVT            S15, H15 }

          _S5 = ((v25 * _S19) + (_S18 * v24)) + (_S20 * v26);
          _S3 = ((v28 * _S19) + (_S18 * v27)) + (_S20 * v29);
          v79 = ((v32 * _S19) + (_S18 * v30)) + (_S20 * v31);
          v80 = ((v25 * _S22) + (_S21 * v24)) + (_S24 * v26);
          v81 = ((v28 * _S22) + (_S21 * v27)) + (_S24 * v29);
          v82 = ((v32 * _S22) + (_S21 * v30)) + (_S24 * v31);
          v83 = ((v25 * _S11) + (_S10 * v24)) + (_S12 * v26);
          v84 = ((v28 * _S11) + (_S10 * v27)) + (_S12 * v29);
          v85 = ((v32 * _S11) + (_S10 * v30)) + (_S12 * v31);
          v86 = ((v25 * _S14) + (_S13 * v24)) + (_S15 * v26);
          v87 = ((v28 * _S14) + (_S13 * v27)) + (_S15 * v29);
          v88 = ((v32 * _S14) + (_S13 * v30)) + (_S15 * v31);
          LOWORD(_S5) = *(v34 + 2 * llroundf(fminf(fmaxf(_S5, 0.0), 8191.0)));
          __asm { FCVT            S10, H5 }

          LOWORD(_S3) = *(v34 + 2 * llroundf(fminf(fmaxf(_S3, 0.0), 8191.0)));
          __asm { FCVT            S11, H3 }

          LOWORD(_S3) = *(v34 + 2 * llroundf(fminf(fmaxf(v79, 0.0), 8191.0)));
          LOWORD(_S5) = *(v34 + 2 * llroundf(fminf(fmaxf(v80, 0.0), 8191.0)));
          __asm
          {
            FCVT            S12, H3
            FCVT            S13, H5
          }

          LOWORD(_S3) = *(v34 + 2 * llroundf(fminf(fmaxf(v81, 0.0), 8191.0)));
          __asm { FCVT            S15, H3 }

          LOWORD(_S3) = *(v34 + 2 * llroundf(fminf(fmaxf(v82, 0.0), 8191.0)));
          __asm { FCVT            S14, H3 }

          LOWORD(_S3) = *(v34 + 2 * llroundf(fminf(fmaxf(v83, 0.0), 8191.0)));
          __asm { FCVT            S19, H3 }

          LOWORD(_S3) = *(v34 + 2 * llroundf(fminf(fmaxf(v84, 0.0), 8191.0)));
          __asm { FCVT            S20, H3 }

          LOWORD(_S3) = *(v34 + 2 * llroundf(fminf(fmaxf(v85, 0.0), 8191.0)));
          LOWORD(_S5) = *(v34 + 2 * llroundf(fminf(fmaxf(v86, 0.0), 8191.0)));
          __asm
          {
            FCVT            S18, H3
            FCVT            S22, H5
          }

          LOWORD(_S3) = *(v34 + 2 * llroundf(fminf(fmaxf(v87, 0.0), 8191.0)));
          __asm { FCVT            S24, H3 }

          LOWORD(_S3) = *(v34 + 2 * llroundf(fminf(fmaxf(v88, 0.0), 8191.0)));
          __asm { FCVT            S21, H3 }

          v101 = (((v129 * _S11) + (v130 * _S10)) + (v128 * _S12)) + v22;
          if (v101 < v22)
          {
            v102 = v22;
          }

          else
          {
            v102 = (((v129 * _S11) + (v130 * _S10)) + (v128 * _S12)) + v22;
          }

          v103 = v101 <= v23;
          v104 = (((v129 * _S15) + (v130 * _S13)) + (v128 * _S14)) + v22;
          if (!v103)
          {
            v102 = v23;
          }

          v105 = llroundf(v102);
          if (v104 < v22)
          {
            v106 = v22;
          }

          else
          {
            v106 = (((v129 * _S15) + (v130 * _S13)) + (v128 * _S14)) + v22;
          }

          v103 = v104 <= v23;
          v107 = (((v129 * _S20) + (v130 * _S19)) + (v128 * _S18)) + v22;
          if (!v103)
          {
            v106 = v23;
          }

          v108 = llroundf(v106);
          if (v107 < v22)
          {
            v109 = v22;
          }

          else
          {
            v109 = (((v129 * _S20) + (v130 * _S19)) + (v128 * _S18)) + v22;
          }

          v103 = v107 <= v23;
          v110 = (((v129 * _S24) + (v130 * _S22)) + (v128 * _S21)) + v22;
          if (!v103)
          {
            v109 = v23;
          }

          v111 = llroundf(v109);
          if (v110 < v22)
          {
            v112 = v22;
          }

          else
          {
            v112 = (((v129 * _S24) + (v130 * _S22)) + (v128 * _S21)) + v22;
          }

          if (v110 <= v23)
          {
            v113 = v112;
          }

          else
          {
            v113 = v23;
          }

          v114 = ((_S10 + _S13) + _S19) + _S22;
          v115 = ((_S11 + _S15) + _S20) + _S24;
          *v39 = v105 << v43;
          *(v39 + 1) = v108 << v43;
          *v48 = v111 << v43;
          *(v48 + 1) = llroundf(v113) << v43;
          v116 = ((_S12 + _S14) + _S18) + _S21;
          v117 = ((v133 + (v114 * v127)) + (v115 * v126)) + (v116 * v125);
          v118 = v132;
          if (v117 <= v132)
          {
            v118 = ((v133 + (v114 * v127)) + (v115 * v126)) + (v116 * v125);
            if (v117 < v131)
            {
              v118 = v131;
            }
          }

          v119 = (v42 + 2 * v46);
          v120 = ((v133 + (v114 * v124)) + (v115 * v123)) + (v116 * v122);
          *v119 = llroundf(v118) << v43;
          v121 = v132;
          if (v120 <= v132)
          {
            v121 = v120;
            if (v120 < v131)
            {
              v121 = v131;
            }
          }

          v40 += 8;
          v47 += 8;
          v39 += 4;
          v48 += 4;
          v119[1] = llroundf(v121) << v43;
          v46 += 2;
        }

        while (v46 < v15);
      }

      v40 = &v44[v16];
      v39 = &v45[v19];
      v42 += v20;
      v13 += 2;
    }

    while (v13 < v12);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_b64a_rgb_xf420(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4, void *a5, uint64_t *a6, uint64_t a7, void *a8, void *a9)
{
  v60 = a7;
  v61 = a8;
  v66 = a4;
  v67 = a5;
  v59 = a3;
  v68 = *MEMORY[0x1E69E9840];
  v58 = a1;
  v9 = *(a1 + 162);
  v10 = a2[1];
  v12 = a2[2];
  v11 = a2[3];
  v14 = a2[4];
  v13 = a2[5];
  v15 = *a6;
  v62 = *a2;
  v63 = v15;
  v16 = a6[1];
  v17 = a6[2];
  v18 = a6[3];
  v19 = a6[4];
  v20 = a6[5];
  v64 = v16;
  v65 = v10;
  v22 = v13 + v11 != v10 || v20 + v18 != v16;
  LODWORD(v57) = v22;
  if (v9 == 255)
  {
    v23 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v23)
    {
      v24 = 0;
LABEL_61:
      free(v23);
      return v24;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v9 + 160, a3, a4);
    v23 = (&v56 - v25);
    bzero(&v56 - v25, v26);
  }

  v27 = v17 - 1;
  v28 = a9;
  v29 = v12 - 1;
  if (v19)
  {
    v30 = v14 + 1;
  }

  else
  {
    v29 = v12;
    v30 = v14;
  }

  if (v19)
  {
    v31 = v19 + 1;
  }

  else
  {
    v27 = v17;
    v31 = v19;
  }

  v32 = v29 - (v27 & 1);
  v33 = v27 & 0xFFFFFFFFFFFFFFFELL;
  v34 = v18 - 1;
  v35 = v11 - 1;
  if (v20)
  {
    v36 = v13 + 1;
  }

  else
  {
    v35 = v11;
    v36 = v13;
  }

  if (v20)
  {
    v37 = v20 + 1;
  }

  else
  {
    v34 = v18;
    v37 = v20;
  }

  if (v34)
  {
    if ((v57 & 1) != 0 || (*v66 * (v35 + 1 + v36)) > *v67 || (v38 = v34 + 1 + v37, (*v61 * v38) > *a9) || (v61[1] * (v38 / 2)) > a9[1] || (v61[2] * v38) > a9[2])
    {
      --v34;
      --v35;
    }

    else
    {
      ++v64;
      ++v65;
      ++v35;
      ++v34;
    }
  }

  if (v32 + v30 > v62)
  {
    v32 = v62 - v30;
  }

  if (v33 + v31 > v63)
  {
    v33 = v63 - v31;
  }

  if (v35 + v36 > v65)
  {
    v35 = v65 - v36;
  }

  if (v34 + v37 > v64)
  {
    v34 = v64 - v37;
  }

  if (v32 >= v33)
  {
    v39 = v33;
  }

  else
  {
    v39 = v32;
  }

  if (v35 >= v34)
  {
    v40 = v34;
  }

  else
  {
    v40 = v35;
  }

  if (((v36 + v40 - 1) * *v66 + 8 * (v39 + v30)) > *v67)
  {
    v57 = v36;
    v41 = v30;
    v42 = v31;
    v43 = v9;
    v44 = a9;
    goto LABEL_54;
  }

  v45 = v40 + v37 - 1;
  v46 = v39 + v31;
  if ((*v61 * v45 + 2 * (v39 + v31)) > *a9)
  {
    v57 = v36;
    v41 = v30;
    v42 = v31;
    v43 = v9;
    v44 = a9;
    goto LABEL_54;
  }

  v47 = v60;
  if (*(v60 + 8) && v61[1] * ((v40 + v37 + 1) / 2 - 1) + 4 * ((v46 + 1 + ((v46 + 1) >> 63)) >> 1) > a9[1])
  {
    v57 = v36;
    v41 = v30;
    v42 = v31;
    v43 = v9;
    v44 = a9;
    goto LABEL_54;
  }

  if (*(v60 + 16) && (2 * v46 + v61[2] * v45) > a9[2])
  {
    v57 = v36;
    v41 = v30;
    v42 = v31;
    v43 = v9;
    v44 = a9;
LABEL_54:
    fig_log_get_emitter();
    v24 = FigSignalErrorAtGM();
    v47 = v60;
    v28 = v44;
    v9 = v43;
    v31 = v42;
    v30 = v41;
    v36 = v57;
    if (v24)
    {
      goto LABEL_60;
    }
  }

  *v23 = v9;
  *(v23 + 4) = v62;
  v48 = v64;
  *(v23 + 12) = v65;
  *(v23 + 20) = v39;
  *(v23 + 28) = v40;
  *(v23 + 36) = v30;
  *(v23 + 44) = v36;
  v23[11] = v48;
  v23[12] = v39;
  v23[13] = v40;
  v23[14] = v31;
  v49 = v66;
  v23[7] = v59;
  v23[8] = v49;
  v50 = v63;
  v23[9] = v67;
  v23[10] = v50;
  v23[15] = v37;
  v23[16] = v47;
  v23[17] = v61;
  v23[18] = v28;
  v23[19] = v58;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v9, global_queue, v23, vt_Copy_b64a_rgb_xf420_GCD);
  if (!v9)
  {
    return 0;
  }

  v52 = (v23 + 20);
  v53 = v9;
  while (1)
  {
    v54 = *v52++;
    v24 = v54;
    if (v54)
    {
      break;
    }

    if (!--v53)
    {
      v24 = 0;
      break;
    }
  }

LABEL_60:
  if (v9 == 255)
  {
    goto LABEL_61;
  }

  return v24;
}

unsigned __int8 *vt_Copy_b64a_rgb_xf420_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, float a5, float a6, float a7, float a8)
{
  v8 = 2 * *result;
  v9 = *(result + 13);
  v10 = v9 * a2 / v8;
  v11 = 2 * ((v9 + v9 * a2) / v8 - v10);
  if (v11 >= 1)
  {
    v12 = 0;
    v13 = *(result + 19);
    v14 = *(result + 24) & 0xFFFFFFFE;
    v15 = **(result + 8);
    v17 = *(result + 16);
    v16 = *(result + 17);
    v18 = *v16;
    v19 = v16[1];
    *&v20 = *(v13 + 136);
    v21 = *&v20 / *(v13 + 128);
    LOWORD(v20) = *(v13 + 144);
    v22 = v20;
    LOWORD(a5) = *(v13 + 146);
    v23 = LODWORD(a5);
    LOWORD(a6) = *(v13 + 148);
    v24 = LODWORD(a6);
    LOWORD(a7) = *(v13 + 150);
    v25 = LODWORD(a7);
    LOWORD(a8) = *(v13 + 152);
    v26 = LODWORD(a8);
    v27 = *(v13 + 36);
    v28 = *(v13 + 40);
    v29 = *(v13 + 44);
    v30 = *(v13 + 48) * 0.25;
    v31 = *(v13 + 52) * 0.25;
    v32 = *(v13 + 56) * 0.25;
    v33 = *(v13 + 60) * 0.25;
    v34 = *(v13 + 64) * 0.25;
    v35 = *(v13 + 68) * 0.25;
    v36 = *(result + 14);
    v37 = *(result + 15) + 2 * v10;
    v38 = *v17;
    v39 = v17[1];
    v40 = (v38 + v18 * v37 + 2 * v36);
    v41 = (**(result + 7) + (*(result + 44) + 2 * (*(result + 28) * a2 / v8)) * v15 + 8 * *(result + 36));
    LODWORD(v13) = *(v13 + 132);
    v42 = 16 - v13;
    if (v13 >= 0x11)
    {
      v42 = 0;
    }

    v43 = v39 + v19 * (v37 / 2) + 2 * v36;
    v44 = v42;
    do
    {
      v45 = v41 + v15;
      v46 = &v40[v18];
      if (v14 >= 1)
      {
        v47 = 0;
        v48 = (v41 + v15);
        v49 = &v40[v18];
        do
        {
          v50 = v21 * (bswap32(v41[1]) >> 16);
          v51 = v21 * (bswap32(v41[2]) >> 16);
          v52 = v21 * (bswap32(v41[3]) >> 16);
          v53 = v21 * (bswap32(v41[5]) >> 16);
          v54 = v21 * (bswap32(v41[6]) >> 16);
          v55 = v21 * (bswap32(v41[7]) >> 16);
          v56 = v21 * (bswap32(v48[1]) >> 16);
          v57 = v21 * (bswap32(v48[2]) >> 16);
          v58 = v21 * (bswap32(v48[3]) >> 16);
          v59 = v21 * (bswap32(v48[5]) >> 16);
          v60 = v21 * (bswap32(v48[6]) >> 16);
          v61 = v21 * (bswap32(v48[7]) >> 16);
          v62 = (((v28 * v51) + (v27 * v50)) + (v29 * v52)) + v22;
          v63 = (((v28 * v54) + (v27 * v53)) + (v29 * v55)) + v22;
          v64 = (((v28 * v57) + (v27 * v56)) + (v29 * v58)) + v22;
          v65 = (((v28 * v60) + (v27 * v59)) + (v29 * v61)) + v22;
          if (v62 < v22)
          {
            v66 = v22;
          }

          else
          {
            v66 = (((v28 * v51) + (v27 * v50)) + (v29 * v52)) + v22;
          }

          if (v62 <= v24)
          {
            v67 = v66;
          }

          else
          {
            v67 = v24;
          }

          *v40 = llroundf(v67) << v44;
          if (v63 < v22)
          {
            v68 = v22;
          }

          else
          {
            v68 = (((v28 * v54) + (v27 * v53)) + (v29 * v55)) + v22;
          }

          if (v63 > v24)
          {
            v68 = v24;
          }

          *(v40 + 1) = llroundf(v68) << v44;
          if (v64 < v22)
          {
            v69 = v22;
          }

          else
          {
            v69 = (((v28 * v57) + (v27 * v56)) + (v29 * v58)) + v22;
          }

          if (v64 > v24)
          {
            v69 = v24;
          }

          *v49 = llroundf(v69) << v44;
          if (v65 < v22)
          {
            v70 = v22;
          }

          else
          {
            v70 = (((v28 * v60) + (v27 * v59)) + (v29 * v61)) + v22;
          }

          if (v65 > v24)
          {
            v70 = v24;
          }

          *(v49 + 1) = llroundf(v70) << v44;
          v71 = ((v50 + v53) + v56) + v59;
          v72 = ((v51 + v54) + v57) + v60;
          v73 = ((v52 + v55) + v58) + v61;
          v74 = ((v23 + (v71 * v30)) + (v72 * v31)) + (v73 * v32);
          v75 = v26;
          if (v74 <= v26)
          {
            v75 = ((v23 + (v71 * v30)) + (v72 * v31)) + (v73 * v32);
            if (v74 < v25)
            {
              v75 = v25;
            }
          }

          v76 = (v43 + 2 * v47);
          v77 = ((v23 + (v71 * v33)) + (v72 * v34)) + (v73 * v35);
          *v76 = llroundf(v75) << v44;
          v78 = v26;
          if (v77 <= v26)
          {
            v78 = v77;
            if (v77 < v25)
            {
              v78 = v25;
            }
          }

          v41 += 8;
          v48 += 8;
          v40 += 4;
          v49 += 4;
          v76[1] = llroundf(v78) << v44;
          v47 += 2;
        }

        while (v47 < v14);
      }

      v41 = &v45[v15];
      v40 = &v46[v18];
      v43 += v19;
      v12 += 2;
    }

    while (v12 < v11);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_b64a_TRC_Tone_Mat_TRC_422vf(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4, void *a5, uint64_t *a6, uint64_t a7, unint64_t *a8, void *a9)
{
  v61 = a8;
  v59 = a7;
  v64 = a5;
  v66 = a4;
  v67 = *MEMORY[0x1E69E9840];
  v10 = *(a1 + 162);
  v12 = *a2;
  v11 = a2[1];
  v13 = a2[2];
  v58 = a2[3];
  v14 = a2[4];
  v15 = a2[5];
  v16 = *a6;
  v62 = a6[1];
  v63 = v11;
  v18 = a6[2];
  v17 = a6[3];
  v56 = a1;
  v57 = v17;
  v19 = a6[4];
  v60 = a6[5];
  v65 = v16;
  v21 = v14 + v13 != v12 || v19 + v18 != v16;
  if (v10 == 255)
  {
    v22 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v22)
    {
      v23 = 0;
LABEL_59:
      free(v22);
      return v23;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v10 + 160, a3, a4);
    v22 = (&v54 - v24);
    bzero(&v54 - v24, v25);
  }

  v55 = a3;
  v26 = a9;
  v27 = v18 - 1;
  v28 = v13 - 1;
  if (v19)
  {
    v29 = v14 + 1;
  }

  else
  {
    v28 = v13;
    v29 = v14;
  }

  if (v19)
  {
    v30 = v19 + 1;
  }

  else
  {
    v27 = v18;
    v30 = v19;
  }

  if (v27)
  {
    v31 = v60;
    if (v21 || (8 * (v29 + v28) + 8) > *v66 || (v32 = v27 + 1 + v30, v32 > *v61) || ((v32 + (v32 >> 63)) & 0xFFFFFFFFFFFFFFFELL) > v61[1] || (v33 = v61[2], v32 > v33) && v33)
    {
      --v27;
      --v28;
    }

    else
    {
      ++v65;
      ++v28;
      ++v12;
      ++v27;
    }
  }

  else
  {
    v31 = v60;
  }

  if (v28 + v29 > v12)
  {
    v28 = v12 - v29;
  }

  if (v27 + v30 > v65)
  {
    v27 = v65 - v30;
  }

  if (v15 + v58 <= v63)
  {
    v34 = v58;
  }

  else
  {
    v34 = v63 - v15;
  }

  if (v31 + v57 <= v62)
  {
    v35 = v57;
  }

  else
  {
    v35 = v62 - v31;
  }

  if (v28 >= v27)
  {
    v36 = v27;
  }

  else
  {
    v36 = v28;
  }

  if (v34 >= v35)
  {
    v37 = v35;
  }

  else
  {
    v37 = v34;
  }

  if ((*v66 * (v15 + v37 - 1) + 8 * (v36 + v29)) <= *v64)
  {
    v42 = v31 + v37 - 1;
    v43 = v36 + v30;
    if (v36 + v30 + *v61 * v42 <= *a9)
    {
      v44 = v59;
      if (*(v59 + 8) && ((v43 + 1 + ((v43 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v61[1] * v42 > a9[1])
      {
        v58 = v29;
        v38 = v10;
        v39 = v12;
        v40 = v15;
        v41 = a9;
      }

      else
      {
        if (!*(v59 + 16) || v43 + v61[2] * v42 <= a9[2])
        {
          goto LABEL_53;
        }

        v58 = v29;
        v38 = v10;
        v39 = v12;
        v40 = v15;
        v41 = a9;
      }
    }

    else
    {
      v58 = v29;
      v38 = v10;
      v39 = v12;
      v40 = v15;
      v41 = a9;
    }
  }

  else
  {
    v58 = v29;
    v38 = v10;
    v39 = v12;
    v40 = v15;
    v41 = a9;
  }

  fig_log_get_emitter();
  v45 = FigSignalErrorAtGM();
  v44 = v59;
  v31 = v60;
  v26 = v41;
  v15 = v40;
  v12 = v39;
  v10 = v38;
  v29 = v58;
  if (v45)
  {
    v23 = v45;
    goto LABEL_58;
  }

LABEL_53:
  *v22 = v10;
  *(v22 + 4) = v12;
  v46 = v62;
  *(v22 + 12) = v63;
  *(v22 + 20) = v36;
  *(v22 + 28) = v37;
  *(v22 + 36) = v29;
  *(v22 + 44) = v15;
  v22[11] = v46;
  v22[12] = v36;
  v22[13] = v37;
  v22[14] = v30;
  v48 = v65;
  v47 = v66;
  v22[7] = v55;
  v22[8] = v47;
  v22[9] = v64;
  v22[10] = v48;
  v22[15] = v31;
  v22[16] = v44;
  v22[17] = v61;
  v22[18] = v26;
  v22[19] = v56;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v10, global_queue, v22, vt_Copy_b64a_TRC_Tone_Mat_TRC_422vf_GCD);
  if (!v10)
  {
    return 0;
  }

  v50 = (v22 + 20);
  v51 = v10;
  while (1)
  {
    v52 = *v50++;
    v23 = v52;
    if (v52)
    {
      break;
    }

    if (!--v51)
    {
      v23 = 0;
      break;
    }
  }

LABEL_58:
  if (v10 == 255)
  {
    goto LABEL_59;
  }

  return v23;
}

unsigned __int8 *vt_Copy_b64a_TRC_Tone_Mat_TRC_422vf_GCD(unsigned __int8 *result, uint64_t a2)
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
    v9 = **(result + 8);
    v10 = *(result + 16);
    v11 = *(result + 17);
    v12 = *v11;
    v13 = v11[1];
    v14 = v11[2];
    *&v15 = *(v7 + 128);
    v16 = 8191.0 / *&v15;
    LOWORD(v15) = *(v7 + 144);
    v17 = v15;
    LOWORD(v15) = *(v7 + 146);
    v18 = v15;
    LOWORD(v15) = *(v7 + 148);
    v19 = v15;
    LOWORD(v15) = *(v7 + 150);
    v20 = v15;
    LOWORD(v15) = *(v7 + 152);
    v21 = v15;
    v22 = *(v7 + 40);
    v118 = *(v7 + 36);
    v119 = v20;
    v23 = *(v7 + 44);
    v116 = *(v7 + 52) * 0.5;
    v117 = *(v7 + 48) * 0.5;
    v114 = *(v7 + 60) * 0.5;
    v115 = *(v7 + 56) * 0.5;
    v24 = *(v7 + 72);
    v112 = *(v7 + 68) * 0.5;
    v113 = *(v7 + 64) * 0.5;
    v25 = *(v7 + 76);
    v26 = *(v7 + 80);
    v27 = *(v7 + 84);
    v28 = *(v7 + 88);
    v29 = *(v7 + 92);
    v30 = *(v7 + 96);
    v32 = *(v7 + 100);
    v31 = *(v7 + 104);
    v33 = v7 + 164;
    v34 = v7 + 16548;
    v35 = v7 + 32932;
    v36 = *(v7 + 108);
    v37 = *(v7 + 112);
    v38 = *(v7 + 116);
    v39 = *(v7 + 120);
    v40 = *(result + 14);
    v41 = v4 + *(result + 15);
    v42 = *(result + 28) * a2 / v2 + *(result + 44);
    v43 = v10[2];
    if (v43)
    {
      v44 = (v43 + v14 * v41 + v40);
    }

    else
    {
      v44 = 0;
    }

    v46 = *v10;
    v45 = *(*(result + 16) + 8);
    _ZF = v45 == 0;
    v48 = v45 + v13 * v41 + v40;
    if (_ZF)
    {
      v48 = 0;
    }

    v49 = (v46 + v12 * v41 + v40);
    v50 = **(result + 7) + v42 * v9 + 8 * *(result + 36);
    do
    {
      if (v8 >= 1)
      {
        v51 = 0;
        v52 = v44;
        v53 = v49;
        v54 = v50;
        do
        {
          _H0 = *(v33 + 2 * llroundf(fminf(fmaxf(v16 * (bswap32(v54[1]) >> 16), 0.0), 8191.0)));
          __asm { FCVT            S14, H0 }

          _H0 = *(v33 + 2 * llroundf(fminf(fmaxf(v16 * (bswap32(v54[2]) >> 16), 0.0), 8191.0)));
          __asm { FCVT            S15, H0 }

          _H0 = *(v33 + 2 * llroundf(fminf(fmaxf(v16 * (bswap32(v54[3]) >> 16), 0.0), 8191.0)));
          __asm { FCVT            S18, H0 }

          v64 = (((v37 * _S15) + (v36 * _S14)) + (v38 * _S18)) + (v39 * fmaxf(_S14, fmaxf(_S15, _S18)));
          v65 = 8191.0;
          if (v64 <= 8191.0)
          {
            v65 = v64;
            if (v64 < 0.0)
            {
              v65 = 0.0;
            }
          }

          _H0 = *(v33 + 2 * llroundf(fminf(fmaxf(v16 * (bswap32(v54[5]) >> 16), 0.0), 8191.0)));
          __asm { FCVT            S20, H0 }

          _H0 = *(v33 + 2 * llroundf(fminf(fmaxf(v16 * (bswap32(v54[6]) >> 16), 0.0), 8191.0)));
          __asm { FCVT            S21, H0 }

          _H0 = *(v33 + 2 * llroundf(fminf(fmaxf(v16 * (bswap32(v54[7]) >> 16), 0.0), 8191.0)));
          __asm { FCVT            S22, H0 }

          v72 = (((v37 * _S21) + (v36 * _S20)) + (v38 * _S22)) + (v39 * fmaxf(_S20, fmaxf(_S21, _S22)));
          v73 = 8191.0;
          if (v72 <= 8191.0)
          {
            v73 = v72;
            if (v72 < 0.0)
            {
              v73 = 0.0;
            }
          }

          if (v52)
          {
            v74 = llroundf((bswap32(*v54) >> 16) * 0.0038911);
            v75 = llroundf((bswap32(v54[4]) >> 16) * 0.0038911);
          }

          else
          {
            v74 = 0;
            v75 = 0;
          }

          _H0 = *(v34 + 2 * llroundf(v65));
          __asm { FCVT            S0, H0 }

          v78 = _S14 * _S0;
          v79 = _S15 * _S0;
          v80 = _S18 * _S0;
          _H18 = *(v34 + 2 * llroundf(v73));
          __asm { FCVT            S18, H18 }

          _S19 = _S20 * _S18;
          _S20 = _S21 * _S18;
          v85 = _S22 * _S18;
          v86 = ((v25 * v79) + (v78 * v24)) + (v80 * v26);
          v87 = ((v28 * v79) + (v78 * v27)) + (v80 * v29);
          _S0 = ((v32 * v79) + (v78 * v30)) + (v80 * v31);
          v89 = ((v25 * _S20) + (_S19 * v24)) + (v85 * v26);
          _S5 = ((v28 * _S20) + (_S19 * v27)) + (v85 * v29);
          _S18 = ((v32 * _S20) + (_S19 * v30)) + (v85 * v31);
          LOWORD(_S19) = *(v35 + 2 * llroundf(fminf(fmaxf(v86, 0.0), 8191.0)));
          LOWORD(_S20) = *(v35 + 2 * llroundf(fminf(fmaxf(v87, 0.0), 8191.0)));
          __asm
          {
            FCVT            S19, H19
            FCVT            S20, H20
          }

          LOWORD(_S0) = *(v35 + 2 * llroundf(fminf(fmaxf(_S0, 0.0), 8191.0)));
          v94 = llroundf(fminf(fmaxf(v89, 0.0), 8191.0));
          __asm { FCVT            S3, H0 }

          LOWORD(_S0) = *(v35 + 2 * v94);
          __asm { FCVT            S0, H0 }

          LOWORD(_S5) = *(v35 + 2 * llroundf(fminf(fmaxf(_S5, 0.0), 8191.0)));
          __asm { FCVT            S5, H5 }

          LOWORD(_S18) = *(v35 + 2 * llroundf(fminf(fmaxf(_S18, 0.0), 8191.0)));
          __asm { FCVT            S21, H18 }

          v99 = (((v22 * _S20) + (v118 * _S19)) + (v23 * _S3)) + v17;
          v100 = (((v22 * _S5) + (v118 * _S0)) + (v23 * _S21)) + v17;
          if (v99 < v17)
          {
            v101 = v17;
          }

          else
          {
            v101 = (((v22 * _S20) + (v118 * _S19)) + (v23 * _S3)) + v17;
          }

          if (v99 <= v19)
          {
            v102 = v101;
          }

          else
          {
            v102 = v19;
          }

          *v53 = llroundf(v102);
          if (v100 < v17)
          {
            v103 = v17;
          }

          else
          {
            v103 = (((v22 * _S5) + (v118 * _S0)) + (v23 * _S21)) + v17;
          }

          if (v100 > v19)
          {
            v103 = v19;
          }

          v53[1] = llroundf(v103);
          v104 = _S19 + _S0;
          v105 = _S20 + _S5;
          v106 = (v18 + (v104 * v117)) + ((_S20 + _S5) * v116);
          v107 = _S3 + _S21;
          v108 = v106 + ((_S3 + _S21) * v115);
          v109 = v21;
          if (v108 <= v21)
          {
            v109 = v108;
            if (v108 < v119)
            {
              v109 = v119;
            }
          }

          v110 = ((v18 + (v104 * v114)) + (v105 * v113)) + (v107 * v112);
          *(v48 + v51) = llroundf(v109);
          v111 = v21;
          if (v110 <= v21)
          {
            v111 = v110;
            if (v110 < v119)
            {
              v111 = v119;
            }
          }

          *(v48 + v51 + 1) = llroundf(v111);
          if (v52)
          {
            *v52 = v74;
            v52[1] = v75;
            v52 += 2;
          }

          v54 += 8;
          v51 += 2;
          v53 += 2;
        }

        while (v51 < v8);
      }

      v50 += v9;
      v49 += v12;
      v48 += v13;
      v44 += v14;
      ++v6;
    }

    while (v6 != v5);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_b64a_TRC_Mat_TRC_422vf(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4, void *a5, uint64_t *a6, uint64_t a7, unint64_t *a8, void *a9)
{
  v61 = a8;
  v59 = a7;
  v64 = a5;
  v66 = a4;
  v67 = *MEMORY[0x1E69E9840];
  v10 = *(a1 + 162);
  v12 = *a2;
  v11 = a2[1];
  v13 = a2[2];
  v58 = a2[3];
  v14 = a2[4];
  v15 = a2[5];
  v16 = *a6;
  v62 = a6[1];
  v63 = v11;
  v18 = a6[2];
  v17 = a6[3];
  v56 = a1;
  v57 = v17;
  v19 = a6[4];
  v60 = a6[5];
  v65 = v16;
  v21 = v14 + v13 != v12 || v19 + v18 != v16;
  if (v10 == 255)
  {
    v22 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v22)
    {
      v23 = 0;
LABEL_59:
      free(v22);
      return v23;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v10 + 160, a3, a4);
    v22 = (&v54 - v24);
    bzero(&v54 - v24, v25);
  }

  v55 = a3;
  v26 = a9;
  v27 = v18 - 1;
  v28 = v13 - 1;
  if (v19)
  {
    v29 = v14 + 1;
  }

  else
  {
    v28 = v13;
    v29 = v14;
  }

  if (v19)
  {
    v30 = v19 + 1;
  }

  else
  {
    v27 = v18;
    v30 = v19;
  }

  if (v27)
  {
    v31 = v60;
    if (v21 || (8 * (v29 + v28) + 8) > *v66 || (v32 = v27 + 1 + v30, v32 > *v61) || ((v32 + (v32 >> 63)) & 0xFFFFFFFFFFFFFFFELL) > v61[1] || (v33 = v61[2], v32 > v33) && v33)
    {
      --v27;
      --v28;
    }

    else
    {
      ++v65;
      ++v28;
      ++v12;
      ++v27;
    }
  }

  else
  {
    v31 = v60;
  }

  if (v28 + v29 > v12)
  {
    v28 = v12 - v29;
  }

  if (v27 + v30 > v65)
  {
    v27 = v65 - v30;
  }

  if (v15 + v58 <= v63)
  {
    v34 = v58;
  }

  else
  {
    v34 = v63 - v15;
  }

  if (v31 + v57 <= v62)
  {
    v35 = v57;
  }

  else
  {
    v35 = v62 - v31;
  }

  if (v28 >= v27)
  {
    v36 = v27;
  }

  else
  {
    v36 = v28;
  }

  if (v34 >= v35)
  {
    v37 = v35;
  }

  else
  {
    v37 = v34;
  }

  if ((*v66 * (v15 + v37 - 1) + 8 * (v36 + v29)) <= *v64)
  {
    v42 = v31 + v37 - 1;
    v43 = v36 + v30;
    if (v36 + v30 + *v61 * v42 <= *a9)
    {
      v44 = v59;
      if (*(v59 + 8) && ((v43 + 1 + ((v43 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v61[1] * v42 > a9[1])
      {
        v58 = v29;
        v38 = v10;
        v39 = v12;
        v40 = v15;
        v41 = a9;
      }

      else
      {
        if (!*(v59 + 16) || v43 + v61[2] * v42 <= a9[2])
        {
          goto LABEL_53;
        }

        v58 = v29;
        v38 = v10;
        v39 = v12;
        v40 = v15;
        v41 = a9;
      }
    }

    else
    {
      v58 = v29;
      v38 = v10;
      v39 = v12;
      v40 = v15;
      v41 = a9;
    }
  }

  else
  {
    v58 = v29;
    v38 = v10;
    v39 = v12;
    v40 = v15;
    v41 = a9;
  }

  fig_log_get_emitter();
  v45 = FigSignalErrorAtGM();
  v44 = v59;
  v31 = v60;
  v26 = v41;
  v15 = v40;
  v12 = v39;
  v10 = v38;
  v29 = v58;
  if (v45)
  {
    v23 = v45;
    goto LABEL_58;
  }

LABEL_53:
  *v22 = v10;
  *(v22 + 4) = v12;
  v46 = v62;
  *(v22 + 12) = v63;
  *(v22 + 20) = v36;
  *(v22 + 28) = v37;
  *(v22 + 36) = v29;
  *(v22 + 44) = v15;
  v22[11] = v46;
  v22[12] = v36;
  v22[13] = v37;
  v22[14] = v30;
  v48 = v65;
  v47 = v66;
  v22[7] = v55;
  v22[8] = v47;
  v22[9] = v64;
  v22[10] = v48;
  v22[15] = v31;
  v22[16] = v44;
  v22[17] = v61;
  v22[18] = v26;
  v22[19] = v56;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v10, global_queue, v22, vt_Copy_b64a_TRC_Mat_TRC_422vf_GCD);
  if (!v10)
  {
    return 0;
  }

  v50 = (v22 + 20);
  v51 = v10;
  while (1)
  {
    v52 = *v50++;
    v23 = v52;
    if (v52)
    {
      break;
    }

    if (!--v51)
    {
      v23 = 0;
      break;
    }
  }

LABEL_58:
  if (v10 == 255)
  {
    goto LABEL_59;
  }

  return v23;
}

unsigned __int8 *vt_Copy_b64a_TRC_Mat_TRC_422vf_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, float a5, float a6, float a7, float a8, float a9)
{
  v9 = *result;
  v10 = *(result + 13);
  v11 = v10 * a2 / v9;
  v12 = (v10 + v10 * a2) / v9 - v11;
  if (v12 >= 1)
  {
    v13 = 0;
    v14 = *(result + 19);
    v15 = *(result + 24) & 0xFFFFFFFE;
    v16 = **(result + 8);
    v17 = *(result + 16);
    v18 = *(result + 17);
    v19 = *v18;
    v20 = v18[1];
    v21 = v18[2];
    v22 = 8191.0 / *(v14 + 128);
    LOWORD(a5) = *(v14 + 144);
    v23 = LODWORD(a5);
    LOWORD(a6) = *(v14 + 146);
    v24 = LODWORD(a6);
    LOWORD(a7) = *(v14 + 148);
    v25 = LODWORD(a7);
    LOWORD(a8) = *(v14 + 150);
    v26 = LODWORD(a8);
    LOWORD(a9) = *(v14 + 152);
    v27 = LODWORD(a9);
    v28 = *(v14 + 36);
    v29 = *(v14 + 40);
    v30 = *(v14 + 44);
    v101 = *(v14 + 52) * 0.5;
    v102 = *(v14 + 48) * 0.5;
    v100 = *(v14 + 56) * 0.5;
    v31 = *(v14 + 60) * 0.5;
    v32 = *(v14 + 64) * 0.5;
    v33 = *(v14 + 72);
    v34 = *(v14 + 68) * 0.5;
    v35 = *(v14 + 76);
    v36 = *(v14 + 80);
    v37 = *(v14 + 84);
    v38 = *(v14 + 88);
    v39 = *(v14 + 92);
    v40 = *(v14 + 96);
    v42 = *(v14 + 100);
    v41 = *(v14 + 104);
    v43 = v14 + 164;
    v44 = v14 + 16548;
    v45 = *(result + 14);
    v46 = v11 + *(result + 15);
    v47 = *(result + 28) * a2 / v9 + *(result + 44);
    v48 = v17[2];
    if (v48)
    {
      v49 = (v48 + v21 * v46 + v45);
    }

    else
    {
      v49 = 0;
    }

    v51 = *v17;
    v50 = *(*(result + 16) + 8);
    _ZF = v50 == 0;
    v53 = v50 + v20 * v46 + v45;
    if (_ZF)
    {
      v53 = 0;
    }

    v54 = (v51 + v19 * v46 + v45);
    v55 = **(result + 7) + v47 * v16 + 8 * *(result + 36);
    do
    {
      if (v15 >= 1)
      {
        v56 = 0;
        v57 = v55;
        v58 = v49;
        v59 = v54;
        do
        {
          if (v58)
          {
            v60 = llroundf((bswap32(*v57) >> 16) * 0.0038911);
            v61 = llroundf((bswap32(v57[4]) >> 16) * 0.0038911);
          }

          else
          {
            v60 = 0;
            v61 = 0;
          }

          _H10 = *(v43 + 2 * llroundf(fminf(fmaxf(v22 * (bswap32(v57[1]) >> 16), 0.0), 8191.0)));
          _H11 = *(v43 + 2 * llroundf(fminf(fmaxf(v22 * (bswap32(v57[2]) >> 16), 0.0), 8191.0)));
          __asm
          {
            FCVT            S10, H10
            FCVT            S11, H11
          }

          _H12 = *(v43 + 2 * llroundf(fminf(fmaxf(v22 * (bswap32(v57[3]) >> 16), 0.0), 8191.0)));
          __asm { FCVT            S12, H12 }

          _H13 = *(v43 + 2 * llroundf(fminf(fmaxf(v22 * (bswap32(v57[5]) >> 16), 0.0), 8191.0)));
          __asm { FCVT            S13, H13 }

          _H14 = *(v43 + 2 * llroundf(fminf(fmaxf(v22 * (bswap32(v57[6]) >> 16), 0.0), 8191.0)));
          __asm { FCVT            S14, H14 }

          _H15 = *(v43 + 2 * llroundf(fminf(fmaxf(v22 * (bswap32(v57[7]) >> 16), 0.0), 8191.0)));
          __asm { FCVT            S15, H15 }

          _S18 = ((v35 * _S11) + (_S10 * v33)) + (_S12 * v36);
          _S19 = ((v38 * _S11) + (_S10 * v37)) + (_S12 * v39);
          _S10 = ((v42 * _S11) + (_S10 * v40)) + (_S12 * v41);
          _S11 = ((v35 * _S14) + (_S13 * v33)) + (_S15 * v36);
          _S12 = ((v38 * _S14) + (_S13 * v37)) + (_S15 * v39);
          v82 = ((v42 * _S14) + (_S13 * v40)) + (_S15 * v41);
          LOWORD(_S18) = *(v44 + 2 * llroundf(fminf(fmaxf(_S18, 0.0), 8191.0)));
          LOWORD(_S19) = *(v44 + 2 * llroundf(fminf(fmaxf(_S19, 0.0), 8191.0)));
          __asm
          {
            FCVT            S18, H18
            FCVT            S19, H19
          }

          LOWORD(_S10) = *(v44 + 2 * llroundf(fminf(fmaxf(_S10, 0.0), 8191.0)));
          __asm { FCVT            S14, H10 }

          LOWORD(_S10) = *(v44 + 2 * llroundf(fminf(fmaxf(_S11, 0.0), 8191.0)));
          __asm { FCVT            S10, H10 }

          LOWORD(_S11) = *(v44 + 2 * llroundf(fminf(fmaxf(_S12, 0.0), 8191.0)));
          __asm { FCVT            S11, H11 }

          LOWORD(_S12) = *(v44 + 2 * llroundf(fminf(fmaxf(v82, 0.0), 8191.0)));
          __asm { FCVT            S12, H12 }

          v89 = (((v29 * _S19) + (v28 * _S18)) + (v30 * _S14)) + v23;
          v90 = (((v29 * _S11) + (v28 * _S10)) + (v30 * _S12)) + v23;
          if (v89 < v23)
          {
            v91 = v23;
          }

          else
          {
            v91 = (((v29 * _S19) + (v28 * _S18)) + (v30 * _S14)) + v23;
          }

          if (v89 > v25)
          {
            v91 = v25;
          }

          *v59 = llroundf(v91);
          if (v90 < v23)
          {
            v92 = v23;
          }

          else
          {
            v92 = (((v29 * _S11) + (v28 * _S10)) + (v30 * _S12)) + v23;
          }

          if (v90 > v25)
          {
            v92 = v25;
          }

          v59[1] = llroundf(v92);
          v93 = _S18 + _S10;
          v94 = _S19 + _S11;
          v95 = _S14 + _S12;
          v96 = ((v24 + (v93 * v102)) + (v94 * v101)) + (v95 * v100);
          v97 = v27;
          if (v96 <= v27)
          {
            v97 = ((v24 + (v93 * v102)) + (v94 * v101)) + (v95 * v100);
            if (v96 < v26)
            {
              v97 = v26;
            }
          }

          v98 = ((v24 + (v93 * v31)) + (v94 * v32)) + (v95 * v34);
          *(v53 + v56) = llroundf(v97);
          v99 = v27;
          if (v98 <= v27)
          {
            v99 = v98;
            if (v98 < v26)
            {
              v99 = v26;
            }
          }

          *(v53 + v56 + 1) = llroundf(v99);
          if (v58)
          {
            *v58 = v60;
            v58[1] = v61;
            v58 += 2;
          }

          v57 += 8;
          v56 += 2;
          v59 += 2;
        }

        while (v56 < v15);
      }

      v55 += v16;
      v54 += v19;
      v53 += v20;
      v49 += v21;
      ++v13;
    }

    while (v13 != v12);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_b64a_rgb_422vf(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4, void *a5, uint64_t *a6, uint64_t a7, unint64_t *a8, void *a9)
{
  v61 = a8;
  v59 = a7;
  v64 = a5;
  v66 = a4;
  v67 = *MEMORY[0x1E69E9840];
  v10 = *(a1 + 162);
  v12 = *a2;
  v11 = a2[1];
  v13 = a2[2];
  v58 = a2[3];
  v14 = a2[4];
  v15 = a2[5];
  v16 = *a6;
  v62 = a6[1];
  v63 = v11;
  v18 = a6[2];
  v17 = a6[3];
  v56 = a1;
  v57 = v17;
  v19 = a6[4];
  v60 = a6[5];
  v65 = v16;
  v21 = v14 + v13 != v12 || v19 + v18 != v16;
  if (v10 == 255)
  {
    v22 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v22)
    {
      v23 = 0;
LABEL_59:
      free(v22);
      return v23;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v10 + 160, a3, a4);
    v22 = (&v54 - v24);
    bzero(&v54 - v24, v25);
  }

  v55 = a3;
  v26 = a9;
  v27 = v18 - 1;
  v28 = v13 - 1;
  if (v19)
  {
    v29 = v14 + 1;
  }

  else
  {
    v28 = v13;
    v29 = v14;
  }

  if (v19)
  {
    v30 = v19 + 1;
  }

  else
  {
    v27 = v18;
    v30 = v19;
  }

  if (v27)
  {
    v31 = v60;
    if (v21 || (8 * (v29 + v28) + 8) > *v66 || (v32 = v27 + 1 + v30, v32 > *v61) || ((v32 + (v32 >> 63)) & 0xFFFFFFFFFFFFFFFELL) > v61[1] || (v33 = v61[2], v32 > v33) && v33)
    {
      --v27;
      --v28;
    }

    else
    {
      ++v65;
      ++v28;
      ++v12;
      ++v27;
    }
  }

  else
  {
    v31 = v60;
  }

  if (v28 + v29 > v12)
  {
    v28 = v12 - v29;
  }

  if (v27 + v30 > v65)
  {
    v27 = v65 - v30;
  }

  if (v15 + v58 <= v63)
  {
    v34 = v58;
  }

  else
  {
    v34 = v63 - v15;
  }

  if (v31 + v57 <= v62)
  {
    v35 = v57;
  }

  else
  {
    v35 = v62 - v31;
  }

  if (v28 >= v27)
  {
    v36 = v27;
  }

  else
  {
    v36 = v28;
  }

  if (v34 >= v35)
  {
    v37 = v35;
  }

  else
  {
    v37 = v34;
  }

  if ((*v66 * (v15 + v37 - 1) + 8 * (v36 + v29)) <= *v64)
  {
    v42 = v31 + v37 - 1;
    v43 = v36 + v30;
    if (v36 + v30 + *v61 * v42 <= *a9)
    {
      v44 = v59;
      if (*(v59 + 8) && ((v43 + 1 + ((v43 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v61[1] * v42 > a9[1])
      {
        v58 = v29;
        v38 = v10;
        v39 = v12;
        v40 = v15;
        v41 = a9;
      }

      else
      {
        if (!*(v59 + 16) || v43 + v61[2] * v42 <= a9[2])
        {
          goto LABEL_53;
        }

        v58 = v29;
        v38 = v10;
        v39 = v12;
        v40 = v15;
        v41 = a9;
      }
    }

    else
    {
      v58 = v29;
      v38 = v10;
      v39 = v12;
      v40 = v15;
      v41 = a9;
    }
  }

  else
  {
    v58 = v29;
    v38 = v10;
    v39 = v12;
    v40 = v15;
    v41 = a9;
  }

  fig_log_get_emitter();
  v45 = FigSignalErrorAtGM();
  v44 = v59;
  v31 = v60;
  v26 = v41;
  v15 = v40;
  v12 = v39;
  v10 = v38;
  v29 = v58;
  if (v45)
  {
    v23 = v45;
    goto LABEL_58;
  }

LABEL_53:
  *v22 = v10;
  *(v22 + 4) = v12;
  v46 = v62;
  *(v22 + 12) = v63;
  *(v22 + 20) = v36;
  *(v22 + 28) = v37;
  *(v22 + 36) = v29;
  *(v22 + 44) = v15;
  v22[11] = v46;
  v22[12] = v36;
  v22[13] = v37;
  v22[14] = v30;
  v48 = v65;
  v47 = v66;
  v22[7] = v55;
  v22[8] = v47;
  v22[9] = v64;
  v22[10] = v48;
  v22[15] = v31;
  v22[16] = v44;
  v22[17] = v61;
  v22[18] = v26;
  v22[19] = v56;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v10, global_queue, v22, vt_Copy_b64a_rgb_422vf_GCD);
  if (!v10)
  {
    return 0;
  }

  v50 = (v22 + 20);
  v51 = v10;
  while (1)
  {
    v52 = *v50++;
    v23 = v52;
    if (v52)
    {
      break;
    }

    if (!--v51)
    {
      v23 = 0;
      break;
    }
  }

LABEL_58:
  if (v10 == 255)
  {
    goto LABEL_59;
  }

  return v23;
}

unsigned __int8 *vt_Copy_b64a_rgb_422vf_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, float a5, float a6, float a7, float a8)
{
  v8 = *result;
  v9 = *(result + 13);
  v10 = v9 * a2 / v8;
  v11 = (v9 + v9 * a2) / v8 - v10;
  if (v11 >= 1)
  {
    v12 = 0;
    v13 = *(result + 19);
    v14 = *(result + 24) & 0xFFFFFFFE;
    v15 = **(result + 8);
    v16 = *(result + 16);
    v17 = *(result + 17);
    v18 = *v17;
    v19 = v17[1];
    v20 = v17[2];
    *&v21 = *(v13 + 136);
    v22 = *&v21 / *(v13 + 128);
    LOWORD(v21) = *(v13 + 144);
    v23 = v21;
    LOWORD(a5) = *(v13 + 146);
    v24 = LODWORD(a5);
    LOWORD(a6) = *(v13 + 148);
    v25 = LODWORD(a6);
    LOWORD(a7) = *(v13 + 150);
    v26 = LODWORD(a7);
    LOWORD(a8) = *(v13 + 152);
    v27 = LODWORD(a8);
    v28 = *(v13 + 36);
    v29 = *(v13 + 40);
    v30 = *(v13 + 44);
    v31 = *(v13 + 48) * 0.5;
    v32 = *(v13 + 52) * 0.5;
    v33 = *(v13 + 56) * 0.5;
    v34 = *(v13 + 60) * 0.5;
    v35 = *(v13 + 64) * 0.5;
    v36 = *(v13 + 68) * 0.5;
    v37 = *(result + 14);
    v38 = v10 + *(result + 15);
    v39 = *(result + 28) * a2 / v8 + *(result + 44);
    v40 = v16[2];
    if (v40)
    {
      v41 = (v40 + v20 * v38 + v37);
    }

    else
    {
      v41 = 0;
    }

    v42 = *v16;
    v43 = *(*(result + 16) + 8);
    v44 = v43 == 0;
    v45 = v43 + v19 * v38 + v37;
    if (v44)
    {
      v45 = 0;
    }

    v46 = (v42 + v18 * v38 + v37);
    v47 = **(result + 7) + v39 * v15 + 8 * *(result + 36);
    do
    {
      if (v14 >= 1)
      {
        v48 = 0;
        v49 = v47;
        v50 = v41;
        v51 = v46;
        do
        {
          if (v50)
          {
            v52 = llroundf((bswap32(*v49) >> 16) * 0.0038911);
            v53 = llroundf((bswap32(v49[4]) >> 16) * 0.0038911);
          }

          else
          {
            v52 = 0;
            v53 = 0;
          }

          v54 = v22 * (bswap32(v49[1]) >> 16);
          v55 = v22 * (bswap32(v49[2]) >> 16);
          v56 = v22 * (bswap32(v49[3]) >> 16);
          v57 = v22 * (bswap32(v49[5]) >> 16);
          v58 = v22 * (bswap32(v49[6]) >> 16);
          v59 = v22 * (bswap32(v49[7]) >> 16);
          v60 = (((v29 * v55) + (v28 * v54)) + (v30 * v56)) + v23;
          v61 = (((v29 * v58) + (v28 * v57)) + (v30 * v59)) + v23;
          if (v60 < v23)
          {
            v62 = v23;
          }

          else
          {
            v62 = (((v29 * v55) + (v28 * v54)) + (v30 * v56)) + v23;
          }

          if (v60 <= v25)
          {
            v63 = v62;
          }

          else
          {
            v63 = v25;
          }

          *v51 = llroundf(v63);
          if (v61 < v23)
          {
            v64 = v23;
          }

          else
          {
            v64 = (((v29 * v58) + (v28 * v57)) + (v30 * v59)) + v23;
          }

          if (v61 > v25)
          {
            v64 = v25;
          }

          v51[1] = llroundf(v64);
          v65 = v54 + v57;
          v66 = v55 + v58;
          v67 = v56 + v59;
          v68 = ((v24 + (v65 * v31)) + (v66 * v32)) + (v67 * v33);
          v69 = v27;
          if (v68 <= v27)
          {
            v69 = ((v24 + (v65 * v31)) + (v66 * v32)) + (v67 * v33);
            if (v68 < v26)
            {
              v69 = v26;
            }
          }

          v70 = ((v24 + (v65 * v34)) + (v66 * v35)) + (v67 * v36);
          *(v45 + v48) = llroundf(v69);
          v71 = v27;
          if (v70 <= v27)
          {
            v71 = v70;
            if (v70 < v26)
            {
              v71 = v26;
            }
          }

          *(v45 + v48 + 1) = llroundf(v71);
          if (v50)
          {
            *v50 = v52;
            v50[1] = v53;
            v50 += 2;
          }

          v49 += 8;
          v48 += 2;
          v51 += 2;
        }

        while (v48 < v14);
      }

      v47 += v15;
      v46 += v18;
      v45 += v19;
      v41 += v20;
      ++v12;
    }

    while (v12 != v11);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_b64a_TRC_Tone_Mat_TRC_2vuyf(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v41 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v39 = a2[2];
  v40 = v16;
  v18 = *a6;
  v35 = a6[1];
  v36 = v17;
  v37 = a6[2];
  v38 = v18;
  if (v15 == 255)
  {
    v19 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v19)
    {
      v20 = 0;
LABEL_13:
      free(v19);
      return v20;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v19 = &v35.i8[-v21];
    bzero(&v35 - v21, v22);
  }

  v23 = vbslq_s8(vcgtq_s64(vaddq_s64(v39, v36), v40), vsubq_s64(v40, v39), v36);
  v24 = vbslq_s8(vcgtq_s64(vaddq_s64(v37, v35), v38), vsubq_s64(v38, v37), v35);
  v25 = vbslq_s8(vcgtq_s64(v24, v23), v23, v24);
  v23.i64[0] = v25.i64[0];
  v23.i64[1] = -1;
  v26 = vaddq_s64(v39, v23);
  if ((*a4 * (v26.i64[1] + v25.i64[1]) + 8 * v26.i64[0]) > *a5 && (v36 = v25, fig_log_get_emitter(), v27 = FigSignalErrorAtGM(), v25 = v36, v27))
  {
    v20 = v27;
  }

  else
  {
    *v19 = v15;
    v28 = v39;
    *(v19 + 4) = v40;
    *(v19 + 20) = v25;
    *(v19 + 36) = v28;
    v29 = v37;
    *(v19 + 5) = v38;
    *(v19 + 6) = v25;
    *(v19 + 7) = v29;
    *(v19 + 7) = a3;
    *(v19 + 8) = a4;
    *(v19 + 9) = a5;
    *(v19 + 16) = a7;
    *(v19 + 17) = a8;
    *(v19 + 18) = a9;
    *(v19 + 19) = a1;
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_b64a_TRC_Tone_Mat_TRC_2vuyf_GCD);
    if (!v15)
    {
      return 0;
    }

    v31 = (v19 + 160);
    v32 = v15;
    while (1)
    {
      v33 = *v31++;
      v20 = v33;
      if (v33)
      {
        break;
      }

      if (!--v32)
      {
        v20 = 0;
        break;
      }
    }
  }

  if (v15 == 255)
  {
    goto LABEL_13;
  }

  return v20;
}

unsigned __int8 *vt_Copy_b64a_TRC_Tone_Mat_TRC_2vuyf_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, double a5, double a6, double a7, float a8, float a9, float a10)
{
  v12 = *result;
  v13 = *(result + 13);
  v14 = *(result + 14);
  v15 = v13 * a2 / v12;
  v16 = *(result + 16);
  v17 = v15 + *(result + 15);
  v18 = (v13 + v13 * a2) / v12 - v15;
  v19 = *(result + 17);
  v20 = v16[1];
  if (v20)
  {
    v20 += v19[1] * v17 + v14;
  }

  if (v18 >= 1)
  {
    v21 = 0;
    v22 = *(result + 28) * a2 / v12 + *(result + 44);
    v23 = **(result + 8);
    v24 = *v19;
    v25 = *(result + 19);
    v26 = *v16 + v24 * v17;
    v27 = **(result + 7) + v23 * v22 + 8 * *(result + 36);
    v28 = (v26 + v14);
    v29 = *(result + 24) & 0xFFFFFFFE;
    LOWORD(a8) = *(v25 + 144);
    LOWORD(a9) = *(v25 + 146);
    LOWORD(a10) = *(v25 + 148);
    LOWORD(v10) = *(v25 + 150);
    LOWORD(v11) = *(v25 + 152);
    v30 = *(v25 + 36);
    v31 = *(v25 + 40);
    v32 = *(v25 + 44);
    v33 = 8191.0 / *(v25 + 128);
    v34 = LODWORD(a8);
    v129 = LODWORD(a9);
    v35 = LODWORD(a10);
    v36 = v10;
    v37 = v11;
    v127 = *(v25 + 52) * 0.5;
    v128 = *(v25 + 48) * 0.5;
    v125 = *(v25 + 60) * 0.5;
    v126 = *(v25 + 56) * 0.5;
    v123 = *(v25 + 72);
    v124 = *(v25 + 64) * 0.5;
    v122 = *(v25 + 68) * 0.5;
    v38 = *(v25 + 76);
    v39 = *(v25 + 80);
    v40 = *(v25 + 84);
    v41 = *(v25 + 88);
    v42 = *(v25 + 92);
    v43 = *(v25 + 96);
    v45 = *(v25 + 100);
    v44 = *(v25 + 104);
    v46 = v25 + 164;
    v47 = v25 + 16548;
    v48 = v25 + 32932;
    v49 = *(v25 + 108);
    v50 = *(v25 + 112);
    v51 = *(v25 + 116);
    v52 = *(v25 + 120);
    do
    {
      if (v29 >= 1)
      {
        v53 = 0;
        v54 = v20;
        v55 = v28;
        v56 = v27;
        do
        {
          v57 = v31;
          _H0 = *(v46 + 2 * llroundf(fminf(fmaxf(v33 * (bswap32(v56[1]) >> 16), 0.0), 8191.0)));
          __asm { FCVT            S14, H0 }

          _H0 = *(v46 + 2 * llroundf(fminf(fmaxf(v33 * (bswap32(v56[2]) >> 16), 0.0), 8191.0)));
          __asm { FCVT            S18, H0 }

          _H0 = *(v46 + 2 * llroundf(fminf(fmaxf(v33 * (bswap32(v56[3]) >> 16), 0.0), 8191.0)));
          __asm { FCVT            S15, H0 }

          v68 = (((v50 * _S18) + (v49 * _S14)) + (v51 * _S15)) + (v52 * fmaxf(_S14, fmaxf(_S18, _S15)));
          v69 = 8191.0;
          if (v68 <= 8191.0)
          {
            v69 = v68;
            if (v68 < 0.0)
            {
              v69 = 0.0;
            }
          }

          _H0 = *(v46 + 2 * llroundf(fminf(fmaxf(v33 * (bswap32(v56[5]) >> 16), 0.0), 8191.0)));
          __asm { FCVT            S20, H0 }

          _H0 = *(v46 + 2 * llroundf(fminf(fmaxf(v33 * (bswap32(v56[6]) >> 16), 0.0), 8191.0)));
          __asm { FCVT            S21, H0 }

          _H0 = *(v46 + 2 * llroundf(fminf(fmaxf(v33 * (bswap32(v56[7]) >> 16), 0.0), 8191.0)));
          __asm { FCVT            S22, H0 }

          v76 = (((v50 * _S21) + (v49 * _S20)) + (v51 * _S22)) + (v52 * fmaxf(_S20, fmaxf(_S21, _S22)));
          v77 = 8191.0;
          if (v76 <= 8191.0)
          {
            v77 = v76;
            if (v76 < 0.0)
            {
              v77 = 0.0;
            }
          }

          if (v54)
          {
            v78 = llroundf((bswap32(*v56) >> 16) * 0.0038911);
            v79 = llroundf((bswap32(v56[4]) >> 16) * 0.0038911);
          }

          else
          {
            v78 = 0;
            v79 = 0;
          }

          _H0 = *(v47 + 2 * llroundf(v69));
          __asm { FCVT            S0, H0 }

          v82 = _S14 * _S0;
          v83 = _S18 * _S0;
          v84 = _S15 * _S0;
          _H19 = *(v47 + 2 * llroundf(v77));
          __asm { FCVT            S19, H19 }

          v87 = _S20 * _S19;
          v88 = _S21 * _S19;
          v89 = _S22 * _S19;
          v90 = ((v38 * v83) + (v82 * v123)) + (v84 * v39);
          v91 = ((v41 * v83) + (v82 * v40)) + (v84 * v42);
          v92 = ((v45 * v83) + (v82 * v43)) + (v84 * v44);
          _S2 = (v38 * v88) + (v87 * v123);
          _S18 = (v41 * v88) + (v87 * v40);
          v95 = (v45 * v88) + (v87 * v43);
          v96 = _S18 + (v89 * v42);
          LOWORD(_S18) = *(v48 + 2 * llroundf(fminf(fmaxf(v90, 0.0), 8191.0)));
          v97 = v95 + (v89 * v44);
          __asm { FCVT            S22, H18 }

          LOWORD(_S18) = *(v48 + 2 * llroundf(fminf(fmaxf(v91, 0.0), 8191.0)));
          v99 = llroundf(fminf(fmaxf(v92, 0.0), 8191.0));
          __asm { FCVT            S0, H18 }

          LOWORD(_S18) = *(v48 + 2 * v99);
          __asm { FCVT            S24, H18 }

          LOWORD(_S2) = *(v48 + 2 * llroundf(fminf(fmaxf(_S2 + (v89 * v39), 0.0), 8191.0)));
          __asm { FCVT            S18, H2 }

          LOWORD(_S2) = *(v48 + 2 * llroundf(fminf(fmaxf(v96, 0.0), 8191.0)));
          __asm { FCVT            S19, H2 }

          v104 = llroundf(fminf(fmaxf(v97, 0.0), 8191.0));
          v31 = v57;
          v105 = (v57 * _S0) + (v30 * _S22);
          _S0 = _S0 + _S19;
          v107 = (v129 + ((_S22 + _S18) * v128)) + (_S0 * v127);
          v108 = (v129 + ((_S22 + _S18) * v125)) + (_S0 * v124);
          LOWORD(_S0) = *(v48 + 2 * v104);
          __asm { FCVT            S0, H0 }

          v110 = v105 + (v32 * _S24);
          v111 = v107 + ((_S24 + _S0) * v126);
          v112 = v108 + ((_S24 + _S0) * v122);
          if (v111 < v36)
          {
            v113 = v36;
          }

          else
          {
            v113 = v111;
          }

          v114 = v110 + v34;
          if (v111 <= v37)
          {
            v115 = v113;
          }

          else
          {
            v115 = v37;
          }

          v116 = llroundf(v115);
          if (v114 < v34)
          {
            v117 = v34;
          }

          else
          {
            v117 = v114;
          }

          *v55 = v116;
          if (v114 <= v35)
          {
            v118 = v117;
          }

          else
          {
            v118 = v35;
          }

          v55[1] = llroundf(v118);
          v119 = v37;
          if (v112 <= v37)
          {
            v119 = v112;
            if (v112 < v36)
            {
              v119 = v36;
            }
          }

          v120 = (((v57 * _S19) + (v30 * _S18)) + (v32 * _S0)) + v34;
          v55[2] = llroundf(v119);
          v121 = v35;
          if (v120 <= v35)
          {
            v121 = v120;
            if (v120 < v34)
            {
              v121 = v34;
            }
          }

          v55[3] = llroundf(v121);
          if (v54)
          {
            *v54 = v78;
            v54[1] = v79;
            v54 += 2;
          }

          v56 += 8;
          v53 += 2;
          v55 += 4;
        }

        while (v53 < v29);
      }

      v27 += v23;
      v28 += v24;
      ++v21;
    }

    while (v21 != v18);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_b64a_TRC_Mat_TRC_2vuyf(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v41 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v39 = a2[2];
  v40 = v16;
  v18 = *a6;
  v35 = a6[1];
  v36 = v17;
  v37 = a6[2];
  v38 = v18;
  if (v15 == 255)
  {
    v19 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v19)
    {
      v20 = 0;
LABEL_13:
      free(v19);
      return v20;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v19 = &v35.i8[-v21];
    bzero(&v35 - v21, v22);
  }

  v23 = vbslq_s8(vcgtq_s64(vaddq_s64(v39, v36), v40), vsubq_s64(v40, v39), v36);
  v24 = vbslq_s8(vcgtq_s64(vaddq_s64(v37, v35), v38), vsubq_s64(v38, v37), v35);
  v25 = vbslq_s8(vcgtq_s64(v24, v23), v23, v24);
  v23.i64[0] = v25.i64[0];
  v23.i64[1] = -1;
  v26 = vaddq_s64(v39, v23);
  if ((*a4 * (v26.i64[1] + v25.i64[1]) + 8 * v26.i64[0]) > *a5 && (v36 = v25, fig_log_get_emitter(), v27 = FigSignalErrorAtGM(), v25 = v36, v27))
  {
    v20 = v27;
  }

  else
  {
    *v19 = v15;
    v28 = v39;
    *(v19 + 4) = v40;
    *(v19 + 20) = v25;
    *(v19 + 36) = v28;
    v29 = v37;
    *(v19 + 5) = v38;
    *(v19 + 6) = v25;
    *(v19 + 7) = v29;
    *(v19 + 7) = a3;
    *(v19 + 8) = a4;
    *(v19 + 9) = a5;
    *(v19 + 16) = a7;
    *(v19 + 17) = a8;
    *(v19 + 18) = a9;
    *(v19 + 19) = a1;
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_b64a_TRC_Mat_TRC_2vuyf_GCD);
    if (!v15)
    {
      return 0;
    }

    v31 = (v19 + 160);
    v32 = v15;
    while (1)
    {
      v33 = *v31++;
      v20 = v33;
      if (v33)
      {
        break;
      }

      if (!--v32)
      {
        v20 = 0;
        break;
      }
    }
  }

  if (v15 == 255)
  {
    goto LABEL_13;
  }

  return v20;
}

unsigned __int8 *vt_Copy_b64a_TRC_Mat_TRC_2vuyf_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, double a5, double a6, float a7, float a8, float a9, float a10)
{
  v11 = *result;
  v12 = *(result + 13);
  v13 = *(result + 14);
  v14 = v12 * a2 / v11;
  v15 = *(result + 16);
  v16 = v14 + *(result + 15);
  v17 = (v12 + v12 * a2) / v11 - v14;
  v18 = *(result + 17);
  v19 = v15[1];
  if (v19)
  {
    v19 += v18[1] * v16 + v13;
  }

  if (v17 >= 1)
  {
    v20 = 0;
    v21 = *(result + 28) * a2 / v11 + *(result + 44);
    v22 = **(result + 8);
    v23 = *v18;
    v24 = **(result + 7) + v22 * v21;
    v25 = *(result + 19);
    v26 = *v15 + v23 * v16;
    v27 = (v24 + 8 * *(result + 36));
    v28 = (v26 + v13);
    v29 = *(result + 24) & 0xFFFFFFFE;
    LOWORD(a7) = *(v25 + 144);
    LOWORD(a8) = *(v25 + 146);
    LOWORD(a9) = *(v25 + 148);
    LOWORD(a10) = *(v25 + 150);
    LOWORD(v10) = *(v25 + 152);
    v30 = *(v25 + 36);
    v31 = *(v25 + 40);
    v32 = 8191.0 / *(v25 + 128);
    v33 = LODWORD(a7);
    v34 = LODWORD(a8);
    v35 = LODWORD(a9);
    v36 = LODWORD(a10);
    v37 = v10;
    v38 = *(v25 + 44);
    v106 = *(v25 + 52) * 0.5;
    v107 = *(v25 + 48) * 0.5;
    v39 = *(v25 + 56) * 0.5;
    v40 = *(v25 + 60) * 0.5;
    v41 = *(v25 + 64) * 0.5;
    v42 = *(v25 + 72);
    v43 = *(v25 + 68) * 0.5;
    v44 = *(v25 + 76);
    v45 = *(v25 + 80);
    v46 = *(v25 + 84);
    v47 = *(v25 + 88);
    v48 = *(v25 + 92);
    v49 = *(v25 + 96);
    v51 = *(v25 + 100);
    v50 = *(v25 + 104);
    v52 = v25 + 164;
    v53 = v25 + 16548;
    do
    {
      if (v29 >= 1)
      {
        v54 = 0;
        v55 = v27;
        v56 = v19;
        v57 = v28;
        do
        {
          if (v56)
          {
            v58 = llroundf((bswap32(*v55) >> 16) * 0.0038911);
            v59 = llroundf((bswap32(v55[4]) >> 16) * 0.0038911);
          }

          else
          {
            v58 = 0;
            v59 = 0;
          }

          _H10 = *(v52 + 2 * llroundf(fminf(fmaxf(v32 * (bswap32(v55[1]) >> 16), 0.0), 8191.0)));
          __asm { FCVT            S10, H10 }

          _H11 = *(v52 + 2 * llroundf(fminf(fmaxf(v32 * (bswap32(v55[2]) >> 16), 0.0), 8191.0)));
          __asm { FCVT            S11, H11 }

          _H12 = *(v52 + 2 * llroundf(fminf(fmaxf(v32 * (bswap32(v55[3]) >> 16), 0.0), 8191.0)));
          __asm { FCVT            S12, H12 }

          _H13 = *(v52 + 2 * llroundf(fminf(fmaxf(v32 * (bswap32(v55[5]) >> 16), 0.0), 8191.0)));
          __asm { FCVT            S13, H13 }

          _H14 = *(v52 + 2 * llroundf(fminf(fmaxf(v32 * (bswap32(v55[6]) >> 16), 0.0), 8191.0)));
          __asm { FCVT            S14, H14 }

          _S15 = ((v44 * _S11) + (_S10 * v42)) + (_S12 * v45);
          _S18 = ((v47 * _S11) + (_S10 * v46)) + (_S12 * v48);
          _S10 = ((v51 * _S11) + (_S10 * v49)) + (_S12 * v50);
          v77 = (v44 * _S14) + (_S13 * v42);
          v78 = (v47 * _S14) + (_S13 * v46);
          v79 = (v51 * _S14) + (_S13 * v49);
          LOWORD(_S14) = *(v52 + 2 * llroundf(fminf(fmaxf(v32 * (bswap32(v55[7]) >> 16), 0.0), 8191.0)));
          __asm { FCVT            S14, H14 }

          _S11 = v77 + (_S14 * v45);
          v82 = v78 + (_S14 * v48);
          LOWORD(_S15) = *(v53 + 2 * llroundf(fminf(fmaxf(_S15, 0.0), 8191.0)));
          v83 = v79 + (_S14 * v50);
          __asm { FCVT            S14, H15 }

          LOWORD(_S18) = *(v53 + 2 * llroundf(fminf(fmaxf(_S18, 0.0), 8191.0)));
          __asm { FCVT            S18, H18 }

          LOWORD(_S10) = *(v53 + 2 * llroundf(fminf(fmaxf(_S10, 0.0), 8191.0)));
          __asm { FCVT            S15, H10 }

          LOWORD(_S10) = *(v53 + 2 * llroundf(fminf(fmaxf(_S11, 0.0), 8191.0)));
          __asm { FCVT            S10, H10 }

          LOWORD(_S11) = *(v53 + 2 * llroundf(fminf(fmaxf(v82, 0.0), 8191.0)));
          __asm { FCVT            S11, H11 }

          v89 = llroundf(fminf(fmaxf(v83, 0.0), 8191.0));
          v90 = (v31 * _S18) + (v30 * _S14);
          _S12 = _S14 + _S10;
          v92 = _S18 + _S11;
          v93 = (v34 + ((_S14 + _S10) * v107)) + (v92 * v106);
          v94 = (v34 + (_S12 * v40)) + (v92 * v41);
          LOWORD(_S12) = *(v53 + 2 * v89);
          __asm { FCVT            S12, H12 }

          v96 = v90 + (v38 * _S15);
          v97 = v93 + ((_S15 + _S12) * v39);
          v98 = v94 + ((_S15 + _S12) * v43);
          if (v97 < v36)
          {
            v99 = v36;
          }

          else
          {
            v99 = v97;
          }

          v100 = v96 + v33;
          if (v97 > v37)
          {
            v99 = v37;
          }

          v101 = llroundf(v99);
          if (v100 < v33)
          {
            v102 = v33;
          }

          else
          {
            v102 = v100;
          }

          *v57 = v101;
          if (v100 > v35)
          {
            v102 = v35;
          }

          v57[1] = llroundf(v102);
          v103 = v37;
          if (v98 <= v37)
          {
            v103 = v98;
            if (v98 < v36)
            {
              v103 = v36;
            }
          }

          v104 = (((v31 * _S11) + (v30 * _S10)) + (v38 * _S12)) + v33;
          v57[2] = llroundf(v103);
          v105 = v35;
          if (v104 <= v35)
          {
            v105 = v104;
            if (v104 < v33)
            {
              v105 = v33;
            }
          }

          v57[3] = llroundf(v105);
          if (v56)
          {
            *v56 = v58;
            v56[1] = v59;
            v56 += 2;
          }

          v55 += 8;
          v54 += 2;
          v57 += 4;
        }

        while (v54 < v29);
      }

      v27 = (v27 + v22);
      v28 += v23;
      ++v20;
    }

    while (v20 != v17);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_b64a_rgb_2vuyf(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v41 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v39 = a2[2];
  v40 = v16;
  v18 = *a6;
  v35 = a6[1];
  v36 = v17;
  v37 = a6[2];
  v38 = v18;
  if (v15 == 255)
  {
    v19 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v19)
    {
      v20 = 0;
LABEL_13:
      free(v19);
      return v20;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v19 = &v35.i8[-v21];
    bzero(&v35 - v21, v22);
  }

  v23 = vbslq_s8(vcgtq_s64(vaddq_s64(v39, v36), v40), vsubq_s64(v40, v39), v36);
  v24 = vbslq_s8(vcgtq_s64(vaddq_s64(v37, v35), v38), vsubq_s64(v38, v37), v35);
  v25 = vbslq_s8(vcgtq_s64(v24, v23), v23, v24);
  v23.i64[0] = v25.i64[0];
  v23.i64[1] = -1;
  v26 = vaddq_s64(v39, v23);
  if ((*a4 * (v26.i64[1] + v25.i64[1]) + 8 * v26.i64[0]) > *a5 && (v36 = v25, fig_log_get_emitter(), v27 = FigSignalErrorAtGM(), v25 = v36, v27))
  {
    v20 = v27;
  }

  else
  {
    *v19 = v15;
    v28 = v39;
    *(v19 + 4) = v40;
    *(v19 + 20) = v25;
    *(v19 + 36) = v28;
    v29 = v37;
    *(v19 + 5) = v38;
    *(v19 + 6) = v25;
    *(v19 + 7) = v29;
    *(v19 + 7) = a3;
    *(v19 + 8) = a4;
    *(v19 + 9) = a5;
    *(v19 + 16) = a7;
    *(v19 + 17) = a8;
    *(v19 + 18) = a9;
    *(v19 + 19) = a1;
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_b64a_rgb_2vuyf_GCD);
    if (!v15)
    {
      return 0;
    }

    v31 = (v19 + 160);
    v32 = v15;
    while (1)
    {
      v33 = *v31++;
      v20 = v33;
      if (v33)
      {
        break;
      }

      if (!--v32)
      {
        v20 = 0;
        break;
      }
    }
  }

  if (v15 == 255)
  {
    goto LABEL_13;
  }

  return v20;
}

unsigned __int8 *vt_Copy_b64a_rgb_2vuyf_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, float a5, float a6, float a7, float a8)
{
  v8 = *result;
  v9 = *(result + 13);
  v10 = *(result + 14);
  v11 = v9 * a2 / v8;
  v12 = *(result + 16);
  v13 = v11 + *(result + 15);
  v14 = (v9 + v9 * a2) / v8 - v11;
  v15 = *(result + 17);
  v16 = v12[1];
  if (v16)
  {
    v16 += v15[1] * v13 + v10;
  }

  if (v14 >= 1)
  {
    v17 = 0;
    v18 = *(result + 28) * a2 / v8 + *(result + 44);
    v19 = **(result + 8);
    v20 = *v15;
    v21 = **(result + 7) + v19 * v18;
    v22 = *(result + 19);
    v23 = *v12 + v20 * v13;
    v24 = (v21 + 8 * *(result + 36));
    v25 = (v23 + v10);
    v26 = *(result + 24) & 0xFFFFFFFE;
    *&v27 = *(v22 + 136);
    v28 = *&v27 / *(v22 + 128);
    LOWORD(v27) = *(v22 + 144);
    v29 = v27;
    LOWORD(a5) = *(v22 + 146);
    v30 = LODWORD(a5);
    LOWORD(a6) = *(v22 + 148);
    v31 = LODWORD(a6);
    LOWORD(a7) = *(v22 + 150);
    v32 = LODWORD(a7);
    LOWORD(a8) = *(v22 + 152);
    v33 = LODWORD(a8);
    v34 = *(v22 + 36);
    v35 = *(v22 + 40);
    v36 = *(v22 + 44);
    v37 = *(v22 + 48) * 0.5;
    v38 = *(v22 + 52) * 0.5;
    v39 = *(v22 + 56) * 0.5;
    v40 = *(v22 + 60) * 0.5;
    v41 = *(v22 + 64) * 0.5;
    v42 = *(v22 + 68) * 0.5;
    do
    {
      if (v26 >= 1)
      {
        v43 = 0;
        v44 = v24;
        v45 = v16;
        v46 = v25;
        do
        {
          if (v45)
          {
            v47 = llroundf((bswap32(*v44) >> 16) * 0.0038911);
            v48 = llroundf((bswap32(v44[4]) >> 16) * 0.0038911);
          }

          else
          {
            v47 = 0;
            v48 = 0;
          }

          v49 = v28 * (bswap32(v44[1]) >> 16);
          v50 = v28 * (bswap32(v44[2]) >> 16);
          v51 = v28 * (bswap32(v44[3]) >> 16);
          v52 = v28 * (bswap32(v44[5]) >> 16);
          v53 = v28 * (bswap32(v44[6]) >> 16);
          v54 = v28 * (bswap32(v44[7]) >> 16);
          v55 = (((v35 * v50) + (v34 * v49)) + (v36 * v51)) + v29;
          v56 = v49 + v52;
          v57 = v50 + v53;
          v58 = v51 + v54;
          v59 = ((v30 + (v56 * v37)) + (v57 * v38)) + (v58 * v39);
          v60 = ((v30 + (v56 * v40)) + (v57 * v41)) + (v58 * v42);
          if (v59 < v32)
          {
            v61 = v32;
          }

          else
          {
            v61 = v59;
          }

          if (v59 > v33)
          {
            v61 = v33;
          }

          *v46 = llroundf(v61);
          if (v55 < v29)
          {
            v62 = v29;
          }

          else
          {
            v62 = v55;
          }

          if (v55 > v31)
          {
            v62 = v31;
          }

          v46[1] = llroundf(v62);
          v63 = v33;
          if (v60 <= v33)
          {
            v63 = v60;
            if (v60 < v32)
            {
              v63 = v32;
            }
          }

          v64 = (((v35 * v53) + (v34 * v52)) + (v36 * v54)) + v29;
          v46[2] = llroundf(v63);
          v65 = v31;
          if (v64 <= v31)
          {
            v65 = v64;
            if (v64 < v29)
            {
              v65 = v29;
            }
          }

          v46[3] = llroundf(v65);
          if (v45)
          {
            *v45 = v47;
            v45[1] = v48;
            v45 += 2;
          }

          v44 += 8;
          v43 += 2;
          v46 += 4;
        }

        while (v43 < v26);
      }

      v24 = (v24 + v19);
      v25 += v20;
      ++v17;
    }

    while (v17 != v14);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_b64a_TRC_Tone_Mat_TRC_yuvsf(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v41 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v39 = a2[2];
  v40 = v16;
  v18 = *a6;
  v35 = a6[1];
  v36 = v17;
  v37 = a6[2];
  v38 = v18;
  if (v15 == 255)
  {
    v19 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v19)
    {
      v20 = 0;
LABEL_13:
      free(v19);
      return v20;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v19 = &v35.i8[-v21];
    bzero(&v35 - v21, v22);
  }

  v23 = vbslq_s8(vcgtq_s64(vaddq_s64(v39, v36), v40), vsubq_s64(v40, v39), v36);
  v24 = vbslq_s8(vcgtq_s64(vaddq_s64(v37, v35), v38), vsubq_s64(v38, v37), v35);
  v25 = vbslq_s8(vcgtq_s64(v24, v23), v23, v24);
  v23.i64[0] = v25.i64[0];
  v23.i64[1] = -1;
  v26 = vaddq_s64(v39, v23);
  if ((*a4 * (v26.i64[1] + v25.i64[1]) + 8 * v26.i64[0]) > *a5 && (v36 = v25, fig_log_get_emitter(), v27 = FigSignalErrorAtGM(), v25 = v36, v27))
  {
    v20 = v27;
  }

  else
  {
    *v19 = v15;
    v28 = v39;
    *(v19 + 4) = v40;
    *(v19 + 20) = v25;
    *(v19 + 36) = v28;
    v29 = v37;
    *(v19 + 5) = v38;
    *(v19 + 6) = v25;
    *(v19 + 7) = v29;
    *(v19 + 7) = a3;
    *(v19 + 8) = a4;
    *(v19 + 9) = a5;
    *(v19 + 16) = a7;
    *(v19 + 17) = a8;
    *(v19 + 18) = a9;
    *(v19 + 19) = a1;
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_b64a_TRC_Tone_Mat_TRC_yuvsf_GCD);
    if (!v15)
    {
      return 0;
    }

    v31 = (v19 + 160);
    v32 = v15;
    while (1)
    {
      v33 = *v31++;
      v20 = v33;
      if (v33)
      {
        break;
      }

      if (!--v32)
      {
        v20 = 0;
        break;
      }
    }
  }

  if (v15 == 255)
  {
    goto LABEL_13;
  }

  return v20;
}

unsigned __int8 *vt_Copy_b64a_TRC_Tone_Mat_TRC_yuvsf_GCD(unsigned __int8 *result, uint64_t a2, double a3, float a4, double a5, double a6, double a7, double a8, float a9, float a10)
{
  v12 = *result;
  v13 = *(result + 13);
  v14 = *(result + 14);
  v15 = v13 * a2 / v12;
  v16 = *(result + 16);
  v17 = v15 + *(result + 15);
  v18 = (v13 + v13 * a2) / v12 - v15;
  v19 = *(result + 17);
  v20 = v16[1];
  if (v20)
  {
    v20 += v19[1] * v17 + v14;
  }

  if (v18 >= 1)
  {
    v21 = 0;
    v22 = *(result + 28) * a2 / v12 + *(result + 44);
    v23 = **(result + 8);
    v24 = *v19;
    v25 = *(result + 19);
    v26 = *v16 + v24 * v17;
    v27 = **(result + 7) + v23 * v22 + 8 * *(result + 36);
    v28 = (v26 + v14);
    v29 = *(result + 24) & 0xFFFFFFFE;
    LOWORD(a4) = *(v25 + 144);
    LOWORD(a9) = *(v25 + 146);
    LOWORD(a10) = *(v25 + 148);
    LOWORD(v10) = *(v25 + 150);
    LOWORD(v11) = *(v25 + 152);
    v128 = *(v25 + 40);
    v129 = *(v25 + 36);
    v30 = *(v25 + 44);
    v31 = 8191.0 / *(v25 + 128);
    v32 = LODWORD(a4);
    v33 = LODWORD(a9);
    v34 = LODWORD(a10);
    v35 = v10;
    v36 = v11;
    v127 = *(v25 + 48) * 0.5;
    v126 = *(v25 + 52) * 0.5;
    v125 = *(v25 + 56) * 0.5;
    v124 = *(v25 + 60) * 0.5;
    v123 = *(v25 + 64) * 0.5;
    v37 = *(v25 + 72);
    v122 = *(v25 + 68) * 0.5;
    v38 = *(v25 + 76);
    v39 = *(v25 + 80);
    v40 = *(v25 + 84);
    v41 = *(v25 + 88);
    v42 = *(v25 + 92);
    v43 = *(v25 + 96);
    v45 = *(v25 + 100);
    v44 = *(v25 + 104);
    v46 = v25 + 164;
    v47 = v25 + 16548;
    v48 = v25 + 32932;
    v49 = *(v25 + 108);
    v50 = *(v25 + 112);
    v51 = *(v25 + 116);
    v52 = *(v25 + 120);
    do
    {
      if (v29 >= 1)
      {
        v53 = 0;
        v54 = v20;
        v55 = v28;
        v56 = v27;
        do
        {
          _H0 = *(v46 + 2 * llroundf(fminf(fmaxf(v31 * (bswap32(v56[1]) >> 16), 0.0), 8191.0)));
          __asm { FCVT            S14, H0 }

          _H0 = *(v46 + 2 * llroundf(fminf(fmaxf(v31 * (bswap32(v56[2]) >> 16), 0.0), 8191.0)));
          __asm { FCVT            S15, H0 }

          _H0 = *(v46 + 2 * llroundf(fminf(fmaxf(v31 * (bswap32(v56[3]) >> 16), 0.0), 8191.0)));
          __asm { FCVT            S18, H0 }

          v67 = (((v50 * _S15) + (v49 * _S14)) + (v51 * _S18)) + (v52 * fmaxf(_S14, fmaxf(_S15, _S18)));
          v68 = 8191.0;
          if (v67 <= 8191.0)
          {
            v68 = v67;
            if (v67 < 0.0)
            {
              v68 = 0.0;
            }
          }

          _H0 = *(v46 + 2 * llroundf(fminf(fmaxf(v31 * (bswap32(v56[5]) >> 16), 0.0), 8191.0)));
          __asm { FCVT            S20, H0 }

          _H0 = *(v46 + 2 * llroundf(fminf(fmaxf(v31 * (bswap32(v56[6]) >> 16), 0.0), 8191.0)));
          __asm { FCVT            S21, H0 }

          _H0 = *(v46 + 2 * llroundf(fminf(fmaxf(v31 * (bswap32(v56[7]) >> 16), 0.0), 8191.0)));
          __asm { FCVT            S22, H0 }

          v75 = (((v50 * _S21) + (v49 * _S20)) + (v51 * _S22)) + (v52 * fmaxf(_S20, fmaxf(_S21, _S22)));
          v76 = 8191.0;
          if (v75 <= 8191.0)
          {
            v76 = v75;
            if (v75 < 0.0)
            {
              v76 = 0.0;
            }
          }

          if (v54)
          {
            v77 = llroundf((bswap32(*v56) >> 16) * 0.0038911);
            v78 = llroundf((bswap32(v56[4]) >> 16) * 0.0038911);
          }

          else
          {
            v77 = 0;
            v78 = 0;
          }

          _H0 = *(v47 + 2 * llroundf(v68));
          __asm { FCVT            S0, H0 }

          v81 = _S14 * _S0;
          v82 = _S15 * _S0;
          v83 = _S18 * _S0;
          _H18 = *(v47 + 2 * llroundf(v76));
          __asm { FCVT            S18, H18 }

          _S19 = _S20 * _S18;
          _S20 = _S21 * _S18;
          v88 = _S22 * _S18;
          v89 = ((v38 * v82) + (v81 * v37)) + (v83 * v39);
          v90 = ((v41 * v82) + (v81 * v40)) + (v83 * v42);
          _S0 = ((v45 * v82) + (v81 * v43)) + (v83 * v44);
          _S1 = ((v38 * _S20) + (_S19 * v37)) + (v88 * v39);
          v93 = ((v41 * _S20) + (_S19 * v40)) + (v88 * v42);
          v94 = ((v45 * _S20) + (_S19 * v43)) + (v88 * v44);
          LOWORD(_S19) = *(v48 + 2 * llroundf(fminf(fmaxf(v89, 0.0), 8191.0)));
          __asm { FCVT            S19, H19 }

          LOWORD(_S20) = *(v48 + 2 * llroundf(fminf(fmaxf(v90, 0.0), 8191.0)));
          __asm { FCVT            S20, H20 }

          v97 = llroundf(fminf(fmaxf(_S0, 0.0), 8191.0));
          LOWORD(_S0) = *(v48 + 2 * llroundf(fminf(fmaxf(_S1, 0.0), 8191.0)));
          __asm { FCVT            S0, H0 }

          LOWORD(_S1) = *(v48 + 2 * llroundf(fminf(fmaxf(v93, 0.0), 8191.0)));
          __asm { FCVT            S1, H1 }

          v100 = llroundf(fminf(fmaxf(v94, 0.0), 8191.0));
          v101 = (v128 * _S20) + (v129 * _S19);
          v102 = (v128 * _S1) + (v129 * _S0);
          v103 = _S19 + _S0;
          LOWORD(_S19) = *(v48 + 2 * v97);
          v104 = _S20 + _S1;
          LOWORD(_S20) = *(v48 + 2 * v100);
          __asm
          {
            FCVT            S19, H19
            FCVT            S20, H20
          }

          v107 = (v101 + (v30 * _S19)) + v32;
          v108 = v102 + (v30 * _S20);
          v109 = _S19 + _S20;
          v110 = (v33 + (v103 * v127)) + (v104 * v126);
          v111 = (v33 + (v103 * v124)) + (v104 * v123);
          if (v107 < v32)
          {
            v112 = v32;
          }

          else
          {
            v112 = v107;
          }

          v113 = v107 <= v34;
          v114 = v110 + (v109 * v125);
          if (!v113)
          {
            v112 = v34;
          }

          v115 = llroundf(v112);
          if (v114 < v35)
          {
            v116 = v35;
          }

          else
          {
            v116 = v110 + (v109 * v125);
          }

          if (v114 > v36)
          {
            v116 = v36;
          }

          v117 = llroundf(v116);
          v118 = v111 + (v109 * v122);
          if ((v108 + v32) < v32)
          {
            v119 = v32;
          }

          else
          {
            v119 = v108 + v32;
          }

          *v55 = v115;
          v55[1] = v117;
          if ((v108 + v32) <= v34)
          {
            v120 = v119;
          }

          else
          {
            v120 = v34;
          }

          v55[2] = llroundf(v120);
          v121 = v36;
          if (v118 <= v36)
          {
            v121 = v118;
            if (v118 < v35)
            {
              v121 = v35;
            }
          }

          v55[3] = llroundf(v121);
          if (v54)
          {
            *v54 = v77;
            v54[1] = v78;
            v54 += 2;
          }

          v56 += 8;
          v53 += 2;
          v55 += 4;
        }

        while (v53 < v29);
      }

      v27 += v23;
      v28 += v24;
      ++v21;
    }

    while (v21 != v18);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_b64a_TRC_Mat_TRC_yuvsf(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v41 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v39 = a2[2];
  v40 = v16;
  v18 = *a6;
  v35 = a6[1];
  v36 = v17;
  v37 = a6[2];
  v38 = v18;
  if (v15 == 255)
  {
    v19 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v19)
    {
      v20 = 0;
LABEL_13:
      free(v19);
      return v20;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v19 = &v35.i8[-v21];
    bzero(&v35 - v21, v22);
  }

  v23 = vbslq_s8(vcgtq_s64(vaddq_s64(v39, v36), v40), vsubq_s64(v40, v39), v36);
  v24 = vbslq_s8(vcgtq_s64(vaddq_s64(v37, v35), v38), vsubq_s64(v38, v37), v35);
  v25 = vbslq_s8(vcgtq_s64(v24, v23), v23, v24);
  v23.i64[0] = v25.i64[0];
  v23.i64[1] = -1;
  v26 = vaddq_s64(v39, v23);
  if ((*a4 * (v26.i64[1] + v25.i64[1]) + 8 * v26.i64[0]) > *a5 && (v36 = v25, fig_log_get_emitter(), v27 = FigSignalErrorAtGM(), v25 = v36, v27))
  {
    v20 = v27;
  }

  else
  {
    *v19 = v15;
    v28 = v39;
    *(v19 + 4) = v40;
    *(v19 + 20) = v25;
    *(v19 + 36) = v28;
    v29 = v37;
    *(v19 + 5) = v38;
    *(v19 + 6) = v25;
    *(v19 + 7) = v29;
    *(v19 + 7) = a3;
    *(v19 + 8) = a4;
    *(v19 + 9) = a5;
    *(v19 + 16) = a7;
    *(v19 + 17) = a8;
    *(v19 + 18) = a9;
    *(v19 + 19) = a1;
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_b64a_TRC_Mat_TRC_yuvsf_GCD);
    if (!v15)
    {
      return 0;
    }

    v31 = (v19 + 160);
    v32 = v15;
    while (1)
    {
      v33 = *v31++;
      v20 = v33;
      if (v33)
      {
        break;
      }

      if (!--v32)
      {
        v20 = 0;
        break;
      }
    }
  }

  if (v15 == 255)
  {
    goto LABEL_13;
  }

  return v20;
}

unsigned __int8 *vt_Copy_b64a_TRC_Mat_TRC_yuvsf_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, double a5, double a6, float a7, float a8, float a9, float a10)
{
  v11 = *result;
  v12 = *(result + 13);
  v13 = *(result + 14);
  v14 = v12 * a2 / v11;
  v15 = *(result + 16);
  v16 = v14 + *(result + 15);
  v17 = (v12 + v12 * a2) / v11 - v14;
  v18 = *(result + 17);
  v19 = v15[1];
  if (v19)
  {
    v19 += v18[1] * v16 + v13;
  }

  if (v17 >= 1)
  {
    v20 = 0;
    v21 = *(result + 28) * a2 / v11 + *(result + 44);
    v22 = **(result + 8);
    v23 = *v18;
    v24 = **(result + 7) + v22 * v21;
    v25 = *(result + 19);
    v26 = *v15 + v23 * v16;
    v27 = (v24 + 8 * *(result + 36));
    v28 = (v26 + v13);
    v29 = *(result + 24) & 0xFFFFFFFE;
    LOWORD(a7) = *(v25 + 144);
    LOWORD(a8) = *(v25 + 146);
    LOWORD(a9) = *(v25 + 148);
    LOWORD(a10) = *(v25 + 150);
    LOWORD(v10) = *(v25 + 152);
    v30 = *(v25 + 36);
    v31 = *(v25 + 40);
    v32 = 8191.0 / *(v25 + 128);
    v33 = LODWORD(a7);
    v34 = LODWORD(a8);
    v35 = LODWORD(a9);
    v36 = LODWORD(a10);
    v37 = v10;
    v38 = *(v25 + 44);
    v112 = *(v25 + 48) * 0.5;
    v39 = *(v25 + 52) * 0.5;
    v40 = *(v25 + 56) * 0.5;
    v41 = *(v25 + 60) * 0.5;
    v42 = *(v25 + 64) * 0.5;
    v43 = *(v25 + 72);
    v44 = *(v25 + 68) * 0.5;
    v45 = *(v25 + 76);
    v46 = *(v25 + 80);
    v47 = *(v25 + 84);
    v48 = *(v25 + 88);
    v49 = *(v25 + 92);
    v50 = *(v25 + 96);
    v52 = *(v25 + 100);
    v51 = *(v25 + 104);
    v53 = v25 + 164;
    v54 = v25 + 16548;
    do
    {
      if (v29 >= 1)
      {
        v55 = 0;
        v56 = v27;
        v57 = v19;
        v58 = v28;
        do
        {
          if (v57)
          {
            v59 = llroundf((bswap32(*v56) >> 16) * 0.0038911);
            v60 = llroundf((bswap32(v56[4]) >> 16) * 0.0038911);
          }

          else
          {
            v59 = 0;
            v60 = 0;
          }

          _H10 = *(v53 + 2 * llroundf(fminf(fmaxf(v32 * (bswap32(v56[1]) >> 16), 0.0), 8191.0)));
          __asm { FCVT            S10, H10 }

          _H11 = *(v53 + 2 * llroundf(fminf(fmaxf(v32 * (bswap32(v56[2]) >> 16), 0.0), 8191.0)));
          __asm { FCVT            S11, H11 }

          _H12 = *(v53 + 2 * llroundf(fminf(fmaxf(v32 * (bswap32(v56[3]) >> 16), 0.0), 8191.0)));
          __asm { FCVT            S12, H12 }

          _H13 = *(v53 + 2 * llroundf(fminf(fmaxf(v32 * (bswap32(v56[5]) >> 16), 0.0), 8191.0)));
          __asm { FCVT            S13, H13 }

          _H14 = *(v53 + 2 * llroundf(fminf(fmaxf(v32 * (bswap32(v56[6]) >> 16), 0.0), 8191.0)));
          __asm { FCVT            S14, H14 }

          v75 = ((v45 * _S11) + (_S10 * v43)) + (_S12 * v46);
          v76 = ((v48 * _S11) + (_S10 * v47)) + (_S12 * v49);
          _S10 = ((v52 * _S11) + (_S10 * v50)) + (_S12 * v51);
          v78 = (v45 * _S14) + (_S13 * v43);
          v79 = (v48 * _S14) + (_S13 * v47);
          v80 = (v52 * _S14) + (_S13 * v50);
          LOWORD(_S14) = *(v53 + 2 * llroundf(fminf(fmaxf(v32 * (bswap32(v56[7]) >> 16), 0.0), 8191.0)));
          __asm { FCVT            S14, H14 }

          _S11 = v78 + (_S14 * v46);
          v83 = v79 + (_S14 * v49);
          v84 = v80 + (_S14 * v51);
          LOWORD(_S14) = *(v54 + 2 * llroundf(fminf(fmaxf(v75, 0.0), 8191.0)));
          v85 = llroundf(fminf(fmaxf(v76, 0.0), 8191.0));
          __asm { FCVT            S18, H14 }

          LOWORD(_S14) = *(v54 + 2 * v85);
          __asm { FCVT            S14, H14 }

          v88 = llroundf(fminf(fmaxf(_S10, 0.0), 8191.0));
          LOWORD(_S10) = *(v54 + 2 * llroundf(fminf(fmaxf(_S11, 0.0), 8191.0)));
          __asm { FCVT            S10, H10 }

          LOWORD(_S11) = *(v54 + 2 * llroundf(fminf(fmaxf(v83, 0.0), 8191.0)));
          __asm { FCVT            S11, H11 }

          v91 = llroundf(fminf(fmaxf(v84, 0.0), 8191.0));
          v92 = (v31 * _S14) + (v30 * _S18);
          v93 = (v31 * _S11) + (v30 * _S10);
          v94 = _S18 + _S10;
          LOWORD(_S10) = *(v54 + 2 * v88);
          v95 = _S14 + _S11;
          LOWORD(_S14) = *(v54 + 2 * v91);
          __asm
          {
            FCVT            S10, H10
            FCVT            S14, H14
          }

          v98 = (v92 + (v38 * _S10)) + v33;
          v99 = v93 + (v38 * _S14);
          v100 = _S10 + _S14;
          v101 = (v34 + (v94 * v112)) + (v95 * v39);
          v102 = (v34 + (v94 * v41)) + (v95 * v42);
          if (v98 < v33)
          {
            v103 = v33;
          }

          else
          {
            v103 = v98;
          }

          v104 = v98 <= v35;
          v105 = v101 + (v100 * v40);
          if (!v104)
          {
            v103 = v35;
          }

          v106 = llroundf(v103);
          if (v105 < v36)
          {
            v107 = v36;
          }

          else
          {
            v107 = v101 + (v100 * v40);
          }

          if (v105 > v37)
          {
            v107 = v37;
          }

          v108 = llroundf(v107);
          v109 = v102 + (v100 * v44);
          if ((v99 + v33) < v33)
          {
            v110 = v33;
          }

          else
          {
            v110 = v99 + v33;
          }

          *v58 = v106;
          v58[1] = v108;
          if ((v99 + v33) > v35)
          {
            v110 = v35;
          }

          v58[2] = llroundf(v110);
          v111 = v37;
          if (v109 <= v37)
          {
            v111 = v109;
            if (v109 < v36)
            {
              v111 = v36;
            }
          }

          v58[3] = llroundf(v111);
          if (v57)
          {
            *v57 = v59;
            v57[1] = v60;
            v57 += 2;
          }

          v56 += 8;
          v55 += 2;
          v58 += 4;
        }

        while (v55 < v29);
      }

      v27 = (v27 + v22);
      v28 += v23;
      ++v20;
    }

    while (v20 != v17);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_b64a_rgb_yuvsf(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v41 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v39 = a2[2];
  v40 = v16;
  v18 = *a6;
  v35 = a6[1];
  v36 = v17;
  v37 = a6[2];
  v38 = v18;
  if (v15 == 255)
  {
    v19 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v19)
    {
      v20 = 0;
LABEL_13:
      free(v19);
      return v20;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v19 = &v35.i8[-v21];
    bzero(&v35 - v21, v22);
  }

  v23 = vbslq_s8(vcgtq_s64(vaddq_s64(v39, v36), v40), vsubq_s64(v40, v39), v36);
  v24 = vbslq_s8(vcgtq_s64(vaddq_s64(v37, v35), v38), vsubq_s64(v38, v37), v35);
  v25 = vbslq_s8(vcgtq_s64(v24, v23), v23, v24);
  v23.i64[0] = v25.i64[0];
  v23.i64[1] = -1;
  v26 = vaddq_s64(v39, v23);
  if ((*a4 * (v26.i64[1] + v25.i64[1]) + 8 * v26.i64[0]) > *a5 && (v36 = v25, fig_log_get_emitter(), v27 = FigSignalErrorAtGM(), v25 = v36, v27))
  {
    v20 = v27;
  }

  else
  {
    *v19 = v15;
    v28 = v39;
    *(v19 + 4) = v40;
    *(v19 + 20) = v25;
    *(v19 + 36) = v28;
    v29 = v37;
    *(v19 + 5) = v38;
    *(v19 + 6) = v25;
    *(v19 + 7) = v29;
    *(v19 + 7) = a3;
    *(v19 + 8) = a4;
    *(v19 + 9) = a5;
    *(v19 + 16) = a7;
    *(v19 + 17) = a8;
    *(v19 + 18) = a9;
    *(v19 + 19) = a1;
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_b64a_rgb_yuvsf_GCD);
    if (!v15)
    {
      return 0;
    }

    v31 = (v19 + 160);
    v32 = v15;
    while (1)
    {
      v33 = *v31++;
      v20 = v33;
      if (v33)
      {
        break;
      }

      if (!--v32)
      {
        v20 = 0;
        break;
      }
    }
  }

  if (v15 == 255)
  {
    goto LABEL_13;
  }

  return v20;
}

unsigned __int8 *vt_Copy_b64a_rgb_yuvsf_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, float a5, float a6, float a7, float a8)
{
  v8 = *result;
  v9 = *(result + 13);
  v10 = *(result + 14);
  v11 = v9 * a2 / v8;
  v12 = *(result + 16);
  v13 = v11 + *(result + 15);
  v14 = (v9 + v9 * a2) / v8 - v11;
  v15 = *(result + 17);
  v16 = v12[1];
  if (v16)
  {
    v16 += v15[1] * v13 + v10;
  }

  if (v14 >= 1)
  {
    v17 = 0;
    v18 = *(result + 28) * a2 / v8 + *(result + 44);
    v19 = **(result + 8);
    v20 = *v15;
    v21 = **(result + 7) + v19 * v18;
    v22 = *(result + 19);
    v23 = *v12 + v20 * v13;
    v24 = (v21 + 8 * *(result + 36));
    v25 = (v23 + v10);
    v26 = *(result + 24) & 0xFFFFFFFE;
    *&v27 = *(v22 + 136);
    v28 = *&v27 / *(v22 + 128);
    LOWORD(v27) = *(v22 + 144);
    v29 = v27;
    LOWORD(a5) = *(v22 + 146);
    v30 = LODWORD(a5);
    LOWORD(a6) = *(v22 + 148);
    v31 = LODWORD(a6);
    LOWORD(a7) = *(v22 + 150);
    v32 = LODWORD(a7);
    LOWORD(a8) = *(v22 + 152);
    v33 = LODWORD(a8);
    v34 = *(v22 + 36);
    v35 = *(v22 + 40);
    v36 = *(v22 + 44);
    v37 = *(v22 + 48) * 0.5;
    v38 = *(v22 + 52) * 0.5;
    v39 = *(v22 + 56) * 0.5;
    v40 = *(v22 + 60) * 0.5;
    v41 = *(v22 + 64) * 0.5;
    v42 = *(v22 + 68) * 0.5;
    do
    {
      if (v26 >= 1)
      {
        v43 = 0;
        v44 = v24;
        v45 = v16;
        v46 = v25;
        do
        {
          if (v45)
          {
            v47 = llroundf((bswap32(*v44) >> 16) * 0.0038911);
            v48 = llroundf((bswap32(v44[4]) >> 16) * 0.0038911);
          }

          else
          {
            v47 = 0;
            v48 = 0;
          }

          v49 = v28 * (bswap32(v44[1]) >> 16);
          v50 = v28 * (bswap32(v44[2]) >> 16);
          v51 = v28 * (bswap32(v44[3]) >> 16);
          v52 = v28 * (bswap32(v44[5]) >> 16);
          v53 = v28 * (bswap32(v44[6]) >> 16);
          v54 = v28 * (bswap32(v44[7]) >> 16);
          v55 = (((v35 * v50) + (v34 * v49)) + (v36 * v51)) + v29;
          v56 = (((v35 * v53) + (v34 * v52)) + (v36 * v54)) + v29;
          v57 = v49 + v52;
          v58 = v50 + v53;
          v59 = v51 + v54;
          v60 = ((v30 + (v57 * v37)) + (v58 * v38)) + (v59 * v39);
          v61 = (v30 + (v57 * v40)) + (v58 * v41);
          if (v55 < v29)
          {
            v62 = v29;
          }

          else
          {
            v62 = v55;
          }

          if (v55 > v31)
          {
            v62 = v31;
          }

          v63 = v61 + (v59 * v42);
          *v46 = llroundf(v62);
          if (v60 < v32)
          {
            v64 = v32;
          }

          else
          {
            v64 = v60;
          }

          if (v60 > v33)
          {
            v64 = v33;
          }

          v46[1] = llroundf(v64);
          if (v56 < v29)
          {
            v65 = v29;
          }

          else
          {
            v65 = v56;
          }

          if (v56 > v31)
          {
            v65 = v31;
          }

          v46[2] = llroundf(v65);
          v66 = v33;
          if (v63 <= v33)
          {
            v66 = v63;
            if (v63 < v32)
            {
              v66 = v32;
            }
          }

          v46[3] = llroundf(v66);
          if (v45)
          {
            *v45 = v47;
            v45[1] = v48;
            v45 += 2;
          }

          v44 += 8;
          v43 += 2;
          v46 += 4;
        }

        while (v43 < v26);
      }

      v24 = (v24 + v19);
      v25 += v20;
      ++v17;
    }

    while (v17 != v14);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_b64a_TRC_Tone_Mat_TRC_xf422(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4, void *a5, uint64_t *a6, uint64_t a7, void *a8, void *a9)
{
  v62 = a8;
  v60 = a7;
  v65 = a5;
  v67 = a4;
  v68 = *MEMORY[0x1E69E9840];
  v10 = *(a1 + 162);
  v12 = *a2;
  v11 = a2[1];
  v13 = a2[2];
  v59 = a2[3];
  v14 = a2[4];
  v15 = a2[5];
  v16 = *a6;
  v63 = a6[1];
  v64 = v11;
  v18 = a6[2];
  v17 = a6[3];
  v57 = a1;
  v58 = v17;
  v19 = a6[4];
  v61 = a6[5];
  v66 = v16;
  v21 = v14 + v13 != v12 || v19 + v18 != v16;
  if (v10 == 255)
  {
    v22 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v22)
    {
      v23 = 0;
LABEL_59:
      free(v22);
      return v23;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v10 + 160, a3, a4);
    v22 = (&v55 - v24);
    bzero(&v55 - v24, v25);
  }

  v56 = a3;
  v26 = a9;
  v27 = v18 - 1;
  v28 = v13 - 1;
  if (v19)
  {
    v29 = v14 + 1;
  }

  else
  {
    v28 = v13;
    v29 = v14;
  }

  if (v19)
  {
    v30 = v19 + 1;
  }

  else
  {
    v27 = v18;
    v30 = v19;
  }

  if (v27)
  {
    v31 = v61;
    if (v21 || (8 * (v29 + v28) + 8) > *v67 || (v32 = v27 + 1 + v30, v33 = 2 * v32, 2 * v32 > *v62) || ((2 * (v32 + (v32 >> 63))) & 0xFFFFFFFFFFFFFFFCLL) > v62[1] || (v34 = v62[2], v33 > v34) && v34)
    {
      --v27;
      --v28;
    }

    else
    {
      ++v66;
      ++v28;
      ++v12;
      ++v27;
    }
  }

  else
  {
    v31 = v61;
  }

  if (v28 + v29 > v12)
  {
    v28 = v12 - v29;
  }

  if (v27 + v30 > v66)
  {
    v27 = v66 - v30;
  }

  if (v15 + v59 <= v64)
  {
    v35 = v59;
  }

  else
  {
    v35 = v64 - v15;
  }

  if (v31 + v58 <= v63)
  {
    v36 = v58;
  }

  else
  {
    v36 = v63 - v31;
  }

  if (v28 >= v27)
  {
    v37 = v27;
  }

  else
  {
    v37 = v28;
  }

  if (v35 >= v36)
  {
    v38 = v36;
  }

  else
  {
    v38 = v35;
  }

  if ((*v67 * (v15 + v38 - 1) + 8 * (v37 + v29)) <= *v65)
  {
    v43 = v31 + v38 - 1;
    v44 = v37 + v30;
    if ((*v62 * v43 + 2 * (v37 + v30)) <= *a9)
    {
      v45 = v60;
      if (*(v60 + 8) && v62[1] * v43 + 4 * ((v44 + 1 + ((v44 + 1) >> 63)) >> 1) > a9[1])
      {
        v59 = v29;
        v39 = v10;
        v40 = v12;
        v41 = v15;
        v42 = a9;
      }

      else
      {
        if (!*(v60 + 16) || (2 * v44 + v62[2] * v43) <= a9[2])
        {
          goto LABEL_53;
        }

        v59 = v29;
        v39 = v10;
        v40 = v12;
        v41 = v15;
        v42 = a9;
      }
    }

    else
    {
      v59 = v29;
      v39 = v10;
      v40 = v12;
      v41 = v15;
      v42 = a9;
    }
  }

  else
  {
    v59 = v29;
    v39 = v10;
    v40 = v12;
    v41 = v15;
    v42 = a9;
  }

  fig_log_get_emitter();
  v46 = FigSignalErrorAtGM();
  v45 = v60;
  v31 = v61;
  v26 = v42;
  v15 = v41;
  v12 = v40;
  v10 = v39;
  v29 = v59;
  if (v46)
  {
    v23 = v46;
    goto LABEL_58;
  }

LABEL_53:
  *v22 = v10;
  *(v22 + 4) = v12;
  v47 = v63;
  *(v22 + 12) = v64;
  *(v22 + 20) = v37;
  *(v22 + 28) = v38;
  *(v22 + 36) = v29;
  *(v22 + 44) = v15;
  v22[11] = v47;
  v22[12] = v37;
  v22[13] = v38;
  v22[14] = v30;
  v49 = v66;
  v48 = v67;
  v22[7] = v56;
  v22[8] = v48;
  v22[9] = v65;
  v22[10] = v49;
  v22[15] = v31;
  v22[16] = v45;
  v22[17] = v62;
  v22[18] = v26;
  v22[19] = v57;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v10, global_queue, v22, vt_Copy_b64a_TRC_Tone_Mat_TRC_xf422_GCD);
  if (!v10)
  {
    return 0;
  }

  v51 = (v22 + 20);
  v52 = v10;
  while (1)
  {
    v53 = *v51++;
    v23 = v53;
    if (v53)
    {
      break;
    }

    if (!--v52)
    {
      v23 = 0;
      break;
    }
  }

LABEL_58:
  if (v10 == 255)
  {
    goto LABEL_59;
  }

  return v23;
}

unsigned __int8 *vt_Copy_b64a_TRC_Tone_Mat_TRC_xf422_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, float a5, float a6, float a7, float a8)
{
  v8 = *result;
  v9 = *(result + 13);
  v10 = v9 * a2 / v8;
  v11 = (v9 + v9 * a2) / v8 - v10;
  if (v11 >= 1)
  {
    v12 = 0;
    v13 = *(result + 19);
    v14 = *(result + 24) & 0xFFFFFFFE;
    v15 = **(result + 8);
    v16 = *(result + 16);
    v17 = *(result + 17);
    v18 = *v17;
    v19 = v17[1];
    v20 = v17[2];
    v21 = 8191.0 / *(v13 + 128);
    LOWORD(a5) = *(v13 + 144);
    v22 = LODWORD(a5);
    LOWORD(a6) = *(v13 + 146);
    v23 = LODWORD(a6);
    LOWORD(a7) = *(v13 + 148);
    v24 = LODWORD(a7);
    LOWORD(a8) = *(v13 + 150);
    v121 = LODWORD(a8);
    LOWORD(a8) = *(v13 + 152);
    v25 = LODWORD(a8);
    v26 = *(v13 + 40);
    v122 = *(v13 + 36);
    v27 = *(v13 + 44);
    v120 = *(v13 + 48) * 0.5;
    v119 = *(v13 + 52) * 0.5;
    v118 = *(v13 + 56) * 0.5;
    v117 = *(v13 + 60) * 0.5;
    v116 = *(v13 + 64) * 0.5;
    v28 = *(v13 + 72);
    v115 = *(v13 + 68) * 0.5;
    v29 = *(v13 + 76);
    v30 = *(v13 + 80);
    v31 = *(v13 + 84);
    v32 = *(v13 + 88);
    v33 = *(v13 + 92);
    v34 = *(v13 + 96);
    v36 = *(v13 + 100);
    v35 = *(v13 + 104);
    v37 = v13 + 164;
    v38 = v13 + 16548;
    v39 = v13 + 32932;
    v40 = *(v13 + 108);
    v41 = *(v13 + 112);
    v42 = *(v13 + 116);
    v43 = *(v13 + 120);
    v44 = *(result + 14);
    v45 = v10 + *(result + 15);
    v46 = *(result + 28) * a2 / v8 + *(result + 44);
    v47 = *(v13 + 132);
    if (v47 >= 0x11)
    {
      v48 = 0;
    }

    else
    {
      v48 = 16 - v47;
    }

    v49 = v16[2];
    if (v49)
    {
      v50 = v49 + v20 * v45 + 2 * v44;
    }

    else
    {
      v50 = 0;
    }

    v51 = v16[1];
    _ZF = v51 == 0;
    v53 = v51 + v19 * v45 + 2 * v44;
    if (_ZF)
    {
      v53 = 0;
    }

    v54 = *v16 + v18 * v45 + 2 * v44;
    v55 = **(result + 7) + v46 * v15 + 8 * *(result + 36);
    v56 = v48;
    do
    {
      if (v14 >= 1)
      {
        v57 = 0;
        v58 = v50;
        v59 = v54;
        v60 = v55;
        do
        {
          _H5 = *(v37 + 2 * llroundf(fminf(fmaxf(v21 * (bswap32(v60[1]) >> 16), 0.0), 8191.0)));
          __asm { FCVT            S14, H5 }

          _H5 = *(v37 + 2 * llroundf(fminf(fmaxf(v21 * (bswap32(v60[2]) >> 16), 0.0), 8191.0)));
          __asm { FCVT            S18, H5 }

          _H5 = *(v37 + 2 * llroundf(fminf(fmaxf(v21 * (bswap32(v60[3]) >> 16), 0.0), 8191.0)));
          __asm { FCVT            S19, H5 }

          v70 = (((v41 * _S18) + (v40 * _S14)) + (v42 * _S19)) + (v43 * fmaxf(_S14, fmaxf(_S18, _S19)));
          v71 = 8191.0;
          if (v70 <= 8191.0)
          {
            v71 = v70;
            if (v70 < 0.0)
            {
              v71 = 0.0;
            }
          }

          _H5 = *(v37 + 2 * llroundf(fminf(fmaxf(v21 * (bswap32(v60[5]) >> 16), 0.0), 8191.0)));
          __asm { FCVT            S15, H5 }

          _H5 = *(v37 + 2 * llroundf(fminf(fmaxf(v21 * (bswap32(v60[6]) >> 16), 0.0), 8191.0)));
          __asm { FCVT            S20, H5 }

          _H5 = *(v37 + 2 * llroundf(fminf(fmaxf(v21 * (bswap32(v60[7]) >> 16), 0.0), 8191.0)));
          __asm { FCVT            S21, H5 }

          v78 = (((v41 * _S20) + (v40 * _S15)) + (v42 * _S21)) + (v43 * fmaxf(_S15, fmaxf(_S20, _S21)));
          v79 = 8191.0;
          if (v78 <= 8191.0)
          {
            v79 = v78;
            if (v78 < 0.0)
            {
              v79 = 0.0;
            }
          }

          _H22 = *(v38 + 2 * llroundf(v71));
          __asm { FCVT            S22, H22 }

          _S18 = _S18 * _S22;
          v83 = _S19 * _S22;
          _S3 = ((v32 * _S18) + ((_S14 * _S22) * v31)) + (v83 * v33);
          v85 = llroundf(fminf(fmaxf(((v29 * _S18) + ((_S14 * _S22) * v28)) + (v83 * v30), 0.0), 8191.0));
          v86 = ((v36 * _S18) + ((_S14 * _S22) * v34)) + (v83 * v35);
          LOWORD(_S18) = *(v39 + 2 * v85);
          __asm { FCVT            S14, H18 }

          LOWORD(_S3) = *(v39 + 2 * llroundf(fminf(fmaxf(_S3, 0.0), 8191.0)));
          __asm { FCVT            S18, H3 }

          LOWORD(_S3) = *(v39 + 2 * llroundf(fminf(fmaxf(v86, 0.0), 8191.0)));
          __asm { FCVT            S19, H3 }

          v90 = (((v26 * _S18) + (v122 * _S14)) + (v27 * _S19)) + v22;
          v91 = v24;
          if (v90 <= v24)
          {
            v91 = (((v26 * _S18) + (v122 * _S14)) + (v27 * _S19)) + v22;
            if (v90 < v22)
            {
              v91 = v22;
            }
          }

          v92 = *v60;
          v93 = v60[4];
          _H3 = *(v38 + 2 * llroundf(v79));
          __asm { FCVT            S3, H3 }

          _S5 = _S15 * _S3;
          v97 = _S20 * _S3;
          v98 = _S21 * _S3;
          v99 = ((v29 * v97) + (_S5 * v28)) + (v98 * v30);
          v100 = ((v32 * v97) + (_S5 * v31)) + (v98 * v33);
          _S3 = ((v36 * v97) + (_S5 * v34)) + (v98 * v35);
          LOWORD(_S5) = *(v39 + 2 * llroundf(fminf(fmaxf(v99, 0.0), 8191.0)));
          __asm { FCVT            S20, H5 }

          LOWORD(_S5) = *(v39 + 2 * llroundf(fminf(fmaxf(v100, 0.0), 8191.0)));
          LOWORD(_S3) = *(v39 + 2 * llroundf(fminf(fmaxf(_S3, 0.0), 8191.0)));
          __asm
          {
            FCVT            S24, H5
            FCVT            S21, H3
          }

          v105 = (((v26 * _S24) + (v122 * _S20)) + (v27 * _S21)) + v22;
          *v59 = llroundf(v91) << v56;
          v106 = v24;
          if (v105 <= v24)
          {
            v106 = (((v26 * _S24) + (v122 * _S20)) + (v27 * _S21)) + v22;
            if (v105 < v22)
            {
              v106 = v22;
            }
          }

          v59[1] = llroundf(v106) << v56;
          v107 = _S14 + _S20;
          v108 = _S18 + _S24;
          v109 = _S19 + _S21;
          v110 = ((v23 + (v107 * v120)) + (v108 * v119)) + (v109 * v118);
          v111 = v25;
          if (v110 <= v25)
          {
            v111 = ((v23 + (v107 * v120)) + (v108 * v119)) + (v109 * v118);
            if (v110 < v121)
            {
              v111 = v121;
            }
          }

          v112 = (v53 + 2 * v57);
          v113 = ((v23 + (v107 * v117)) + (v108 * v116)) + (v109 * v115);
          *v112 = llroundf(v111) << v56;
          v114 = v25;
          if (v113 <= v25)
          {
            v114 = v113;
            if (v113 < v121)
            {
              v114 = v121;
            }
          }

          v112[1] = llroundf(v114) << v56;
          if (v58)
          {
            *v58 = bswap32(v92) >> 16;
            v58[1] = bswap32(v93) >> 16;
            v58 += 2;
          }

          v60 += 8;
          v57 += 2;
          v59 += 2;
        }

        while (v57 < v14);
      }

      v55 += v15;
      v54 += v18;
      v53 += v19;
      v50 += v20;
      ++v12;
    }

    while (v12 != v11);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_b64a_TRC_Mat_TRC_xf422(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4, void *a5, uint64_t *a6, uint64_t a7, void *a8, void *a9)
{
  v62 = a8;
  v60 = a7;
  v65 = a5;
  v67 = a4;
  v68 = *MEMORY[0x1E69E9840];
  v10 = *(a1 + 162);
  v12 = *a2;
  v11 = a2[1];
  v13 = a2[2];
  v59 = a2[3];
  v14 = a2[4];
  v15 = a2[5];
  v16 = *a6;
  v63 = a6[1];
  v64 = v11;
  v18 = a6[2];
  v17 = a6[3];
  v57 = a1;
  v58 = v17;
  v19 = a6[4];
  v61 = a6[5];
  v66 = v16;
  v21 = v14 + v13 != v12 || v19 + v18 != v16;
  if (v10 == 255)
  {
    v22 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v22)
    {
      v23 = 0;
LABEL_59:
      free(v22);
      return v23;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v10 + 160, a3, a4);
    v22 = (&v55 - v24);
    bzero(&v55 - v24, v25);
  }

  v56 = a3;
  v26 = a9;
  v27 = v18 - 1;
  v28 = v13 - 1;
  if (v19)
  {
    v29 = v14 + 1;
  }

  else
  {
    v28 = v13;
    v29 = v14;
  }

  if (v19)
  {
    v30 = v19 + 1;
  }

  else
  {
    v27 = v18;
    v30 = v19;
  }

  if (v27)
  {
    v31 = v61;
    if (v21 || (8 * (v29 + v28) + 8) > *v67 || (v32 = v27 + 1 + v30, v33 = 2 * v32, 2 * v32 > *v62) || ((2 * (v32 + (v32 >> 63))) & 0xFFFFFFFFFFFFFFFCLL) > v62[1] || (v34 = v62[2], v33 > v34) && v34)
    {
      --v27;
      --v28;
    }

    else
    {
      ++v66;
      ++v28;
      ++v12;
      ++v27;
    }
  }

  else
  {
    v31 = v61;
  }

  if (v28 + v29 > v12)
  {
    v28 = v12 - v29;
  }

  if (v27 + v30 > v66)
  {
    v27 = v66 - v30;
  }

  if (v15 + v59 <= v64)
  {
    v35 = v59;
  }

  else
  {
    v35 = v64 - v15;
  }

  if (v31 + v58 <= v63)
  {
    v36 = v58;
  }

  else
  {
    v36 = v63 - v31;
  }

  if (v28 >= v27)
  {
    v37 = v27;
  }

  else
  {
    v37 = v28;
  }

  if (v35 >= v36)
  {
    v38 = v36;
  }

  else
  {
    v38 = v35;
  }

  if ((*v67 * (v15 + v38 - 1) + 8 * (v37 + v29)) <= *v65)
  {
    v43 = v31 + v38 - 1;
    v44 = v37 + v30;
    if ((*v62 * v43 + 2 * (v37 + v30)) <= *a9)
    {
      v45 = v60;
      if (*(v60 + 8) && v62[1] * v43 + 4 * ((v44 + 1 + ((v44 + 1) >> 63)) >> 1) > a9[1])
      {
        v59 = v29;
        v39 = v10;
        v40 = v12;
        v41 = v15;
        v42 = a9;
      }

      else
      {
        if (!*(v60 + 16) || (2 * v44 + v62[2] * v43) <= a9[2])
        {
          goto LABEL_53;
        }

        v59 = v29;
        v39 = v10;
        v40 = v12;
        v41 = v15;
        v42 = a9;
      }
    }

    else
    {
      v59 = v29;
      v39 = v10;
      v40 = v12;
      v41 = v15;
      v42 = a9;
    }
  }

  else
  {
    v59 = v29;
    v39 = v10;
    v40 = v12;
    v41 = v15;
    v42 = a9;
  }

  fig_log_get_emitter();
  v46 = FigSignalErrorAtGM();
  v45 = v60;
  v31 = v61;
  v26 = v42;
  v15 = v41;
  v12 = v40;
  v10 = v39;
  v29 = v59;
  if (v46)
  {
    v23 = v46;
    goto LABEL_58;
  }

LABEL_53:
  *v22 = v10;
  *(v22 + 4) = v12;
  v47 = v63;
  *(v22 + 12) = v64;
  *(v22 + 20) = v37;
  *(v22 + 28) = v38;
  *(v22 + 36) = v29;
  *(v22 + 44) = v15;
  v22[11] = v47;
  v22[12] = v37;
  v22[13] = v38;
  v22[14] = v30;
  v49 = v66;
  v48 = v67;
  v22[7] = v56;
  v22[8] = v48;
  v22[9] = v65;
  v22[10] = v49;
  v22[15] = v31;
  v22[16] = v45;
  v22[17] = v62;
  v22[18] = v26;
  v22[19] = v57;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v10, global_queue, v22, vt_Copy_b64a_TRC_Mat_TRC_xf422_GCD);
  if (!v10)
  {
    return 0;
  }

  v51 = (v22 + 20);
  v52 = v10;
  while (1)
  {
    v53 = *v51++;
    v23 = v53;
    if (v53)
    {
      break;
    }

    if (!--v52)
    {
      v23 = 0;
      break;
    }
  }

LABEL_58:
  if (v10 == 255)
  {
    goto LABEL_59;
  }

  return v23;
}

unsigned __int8 *vt_Copy_b64a_TRC_Mat_TRC_xf422_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, float a5, float a6, float a7, float a8, float a9)
{
  v9 = *result;
  v10 = *(result + 13);
  v11 = v10 * a2 / v9;
  v12 = (v10 + v10 * a2) / v9 - v11;
  if (v12 >= 1)
  {
    v13 = 0;
    v14 = *(result + 19);
    v15 = *(result + 24) & 0xFFFFFFFE;
    v16 = **(result + 8);
    v17 = *(result + 16);
    v18 = *(result + 17);
    v19 = *v18;
    v20 = v18[1];
    v21 = v18[2];
    v22 = 8191.0 / *(v14 + 128);
    LOWORD(a5) = *(v14 + 144);
    v23 = LODWORD(a5);
    LOWORD(a6) = *(v14 + 146);
    v24 = LODWORD(a6);
    LOWORD(a7) = *(v14 + 148);
    v25 = LODWORD(a7);
    LOWORD(a8) = *(v14 + 150);
    v26 = LODWORD(a8);
    LOWORD(a9) = *(v14 + 152);
    v27 = LODWORD(a9);
    v28 = *(v14 + 36);
    v29 = *(v14 + 40);
    v30 = *(v14 + 44);
    v104 = *(v14 + 52) * 0.5;
    v105 = *(v14 + 48) * 0.5;
    v103 = *(v14 + 56) * 0.5;
    v31 = *(v14 + 60) * 0.5;
    v32 = *(v14 + 64) * 0.5;
    v33 = *(v14 + 72);
    v34 = *(v14 + 68) * 0.5;
    v35 = *(v14 + 76);
    v36 = *(v14 + 80);
    v37 = *(v14 + 84);
    v38 = *(v14 + 88);
    v39 = *(v14 + 92);
    v40 = *(v14 + 96);
    v42 = *(v14 + 100);
    v41 = *(v14 + 104);
    v43 = v14 + 164;
    v44 = v14 + 16548;
    v45 = *(result + 14);
    v46 = v11 + *(result + 15);
    v47 = *(result + 28) * a2 / v9 + *(result + 44);
    v48 = *(v14 + 132);
    if (v48 >= 0x11)
    {
      v49 = 0;
    }

    else
    {
      v49 = 16 - v48;
    }

    v50 = v17[2];
    if (v50)
    {
      v51 = v50 + v21 * v46 + 2 * v45;
    }

    else
    {
      v51 = 0;
    }

    v52 = v17[1];
    _ZF = v52 == 0;
    v54 = v52 + v20 * v46 + 2 * v45;
    if (_ZF)
    {
      v54 = 0;
    }

    v55 = *v17 + v19 * v46 + 2 * v45;
    v56 = **(result + 7) + v47 * v16 + 8 * *(result + 36);
    v57 = v49;
    do
    {
      if (v15 >= 1)
      {
        v58 = 0;
        v59 = v56;
        v60 = v51;
        v61 = v55;
        do
        {
          _H10 = *(v43 + 2 * llroundf(fminf(fmaxf(v22 * (bswap32(v59[1]) >> 16), 0.0), 8191.0)));
          __asm { FCVT            S10, H10 }

          _H19 = *(v43 + 2 * llroundf(fminf(fmaxf(v22 * (bswap32(v59[2]) >> 16), 0.0), 8191.0)));
          __asm { FCVT            S19, H19 }

          _H18 = *(v43 + 2 * llroundf(fminf(fmaxf(v22 * (bswap32(v59[3]) >> 16), 0.0), 8191.0)));
          __asm { FCVT            S18, H18 }

          v71 = ((v35 * _S19) + (_S10 * v33)) + (_S18 * v36);
          v72 = ((v38 * _S19) + (_S10 * v37)) + (_S18 * v39);
          _S18 = ((v42 * _S19) + (_S10 * v40)) + (_S18 * v41);
          LOWORD(_S19) = *(v44 + 2 * llroundf(fminf(fmaxf(v71, 0.0), 8191.0)));
          __asm { FCVT            S10, H19 }

          LOWORD(_S19) = *(v44 + 2 * llroundf(fminf(fmaxf(v72, 0.0), 8191.0)));
          __asm { FCVT            S11, H19 }

          LOWORD(_S18) = *(v44 + 2 * llroundf(fminf(fmaxf(_S18, 0.0), 8191.0)));
          __asm { FCVT            S12, H18 }

          v77 = (((v29 * _S11) + (v28 * _S10)) + (v30 * _S12)) + v23;
          v78 = v25;
          if (v77 <= v25)
          {
            v78 = (((v29 * _S11) + (v28 * _S10)) + (v30 * _S12)) + v23;
            if (v77 < v23)
            {
              v78 = v23;
            }
          }

          v79 = *v59;
          v80 = v59[4];
          _H18 = *(v43 + 2 * llroundf(fminf(fmaxf(v22 * (bswap32(v59[5]) >> 16), 0.0), 8191.0)));
          __asm { FCVT            S18, H18 }

          _H19 = *(v43 + 2 * llroundf(fminf(fmaxf(v22 * (bswap32(v59[6]) >> 16), 0.0), 8191.0)));
          _H14 = *(v43 + 2 * llroundf(fminf(fmaxf(v22 * (bswap32(v59[7]) >> 16), 0.0), 8191.0)));
          __asm
          {
            FCVT            S19, H19
            FCVT            S14, H14
          }

          v87 = ((v35 * _S19) + (_S18 * v33)) + (_S14 * v36);
          _S20 = ((v38 * _S19) + (_S18 * v37)) + (_S14 * v39);
          v89 = ((v42 * _S19) + (_S18 * v40)) + (_S14 * v41);
          LOWORD(_S19) = *(v44 + 2 * llroundf(fminf(fmaxf(v87, 0.0), 8191.0)));
          __asm { FCVT            S14, H19 }

          LOWORD(_S19) = *(v44 + 2 * llroundf(fminf(fmaxf(_S20, 0.0), 8191.0)));
          LOWORD(_S20) = *(v44 + 2 * llroundf(fminf(fmaxf(v89, 0.0), 8191.0)));
          __asm
          {
            FCVT            S18, H19
            FCVT            S15, H20
          }

          v93 = (((v29 * _S18) + (v28 * _S14)) + (v30 * _S15)) + v23;
          *v61 = llroundf(v78) << v57;
          v94 = v25;
          if (v93 <= v25)
          {
            v94 = (((v29 * _S18) + (v28 * _S14)) + (v30 * _S15)) + v23;
            if (v93 < v23)
            {
              v94 = v23;
            }
          }

          v61[1] = llroundf(v94) << v57;
          v95 = _S10 + _S14;
          v96 = _S11 + _S18;
          v97 = _S12 + _S15;
          v98 = ((v24 + (v95 * v105)) + (v96 * v104)) + ((_S12 + _S15) * v103);
          v99 = v27;
          if (v98 <= v27)
          {
            v99 = v98;
            if (v98 < v26)
            {
              v99 = v26;
            }
          }

          v100 = (v54 + 2 * v58);
          v101 = ((v24 + (v95 * v31)) + (v96 * v32)) + (v97 * v34);
          *v100 = llroundf(v99) << v57;
          v102 = v27;
          if (v101 <= v27)
          {
            v102 = v101;
            if (v101 < v26)
            {
              v102 = v26;
            }
          }

          v100[1] = llroundf(v102) << v57;
          if (v60)
          {
            *v60 = bswap32(v79) >> 16;
            v60[1] = bswap32(v80) >> 16;
            v60 += 2;
          }

          v59 += 8;
          v58 += 2;
          v61 += 2;
        }

        while (v58 < v15);
      }

      v56 += v16;
      v55 += v19;
      v54 += v20;
      v51 += v21;
      ++v13;
    }

    while (v13 != v12);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_b64a_rgb_xf422(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4, void *a5, uint64_t *a6, uint64_t a7, void *a8, void *a9)
{
  v62 = a8;
  v60 = a7;
  v65 = a5;
  v67 = a4;
  v68 = *MEMORY[0x1E69E9840];
  v10 = *(a1 + 162);
  v12 = *a2;
  v11 = a2[1];
  v13 = a2[2];
  v59 = a2[3];
  v14 = a2[4];
  v15 = a2[5];
  v16 = *a6;
  v63 = a6[1];
  v64 = v11;
  v18 = a6[2];
  v17 = a6[3];
  v57 = a1;
  v58 = v17;
  v19 = a6[4];
  v61 = a6[5];
  v66 = v16;
  v21 = v14 + v13 != v12 || v19 + v18 != v16;
  if (v10 == 255)
  {
    v22 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v22)
    {
      v23 = 0;
LABEL_59:
      free(v22);
      return v23;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v10 + 160, a3, a4);
    v22 = (&v55 - v24);
    bzero(&v55 - v24, v25);
  }

  v56 = a3;
  v26 = a9;
  v27 = v18 - 1;
  v28 = v13 - 1;
  if (v19)
  {
    v29 = v14 + 1;
  }

  else
  {
    v28 = v13;
    v29 = v14;
  }

  if (v19)
  {
    v30 = v19 + 1;
  }

  else
  {
    v27 = v18;
    v30 = v19;
  }

  if (v27)
  {
    v31 = v61;
    if (v21 || (8 * (v29 + v28) + 8) > *v67 || (v32 = v27 + 1 + v30, v33 = 2 * v32, 2 * v32 > *v62) || ((2 * (v32 + (v32 >> 63))) & 0xFFFFFFFFFFFFFFFCLL) > v62[1] || (v34 = v62[2], v33 > v34) && v34)
    {
      --v27;
      --v28;
    }

    else
    {
      ++v66;
      ++v28;
      ++v12;
      ++v27;
    }
  }

  else
  {
    v31 = v61;
  }

  if (v28 + v29 > v12)
  {
    v28 = v12 - v29;
  }

  if (v27 + v30 > v66)
  {
    v27 = v66 - v30;
  }

  if (v15 + v59 <= v64)
  {
    v35 = v59;
  }

  else
  {
    v35 = v64 - v15;
  }

  if (v31 + v58 <= v63)
  {
    v36 = v58;
  }

  else
  {
    v36 = v63 - v31;
  }

  if (v28 >= v27)
  {
    v37 = v27;
  }

  else
  {
    v37 = v28;
  }

  if (v35 >= v36)
  {
    v38 = v36;
  }

  else
  {
    v38 = v35;
  }

  if ((*v67 * (v15 + v38 - 1) + 8 * (v37 + v29)) <= *v65)
  {
    v43 = v31 + v38 - 1;
    v44 = v37 + v30;
    if ((*v62 * v43 + 2 * (v37 + v30)) <= *a9)
    {
      v45 = v60;
      if (*(v60 + 8) && v62[1] * v43 + 4 * ((v44 + 1 + ((v44 + 1) >> 63)) >> 1) > a9[1])
      {
        v59 = v29;
        v39 = v10;
        v40 = v12;
        v41 = v15;
        v42 = a9;
      }

      else
      {
        if (!*(v60 + 16) || (2 * v44 + v62[2] * v43) <= a9[2])
        {
          goto LABEL_53;
        }

        v59 = v29;
        v39 = v10;
        v40 = v12;
        v41 = v15;
        v42 = a9;
      }
    }

    else
    {
      v59 = v29;
      v39 = v10;
      v40 = v12;
      v41 = v15;
      v42 = a9;
    }
  }

  else
  {
    v59 = v29;
    v39 = v10;
    v40 = v12;
    v41 = v15;
    v42 = a9;
  }

  fig_log_get_emitter();
  v46 = FigSignalErrorAtGM();
  v45 = v60;
  v31 = v61;
  v26 = v42;
  v15 = v41;
  v12 = v40;
  v10 = v39;
  v29 = v59;
  if (v46)
  {
    v23 = v46;
    goto LABEL_58;
  }

LABEL_53:
  *v22 = v10;
  *(v22 + 4) = v12;
  v47 = v63;
  *(v22 + 12) = v64;
  *(v22 + 20) = v37;
  *(v22 + 28) = v38;
  *(v22 + 36) = v29;
  *(v22 + 44) = v15;
  v22[11] = v47;
  v22[12] = v37;
  v22[13] = v38;
  v22[14] = v30;
  v49 = v66;
  v48 = v67;
  v22[7] = v56;
  v22[8] = v48;
  v22[9] = v65;
  v22[10] = v49;
  v22[15] = v31;
  v22[16] = v45;
  v22[17] = v62;
  v22[18] = v26;
  v22[19] = v57;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v10, global_queue, v22, vt_Copy_b64a_rgb_xf422_GCD);
  if (!v10)
  {
    return 0;
  }

  v51 = (v22 + 20);
  v52 = v10;
  while (1)
  {
    v53 = *v51++;
    v23 = v53;
    if (v53)
    {
      break;
    }

    if (!--v52)
    {
      v23 = 0;
      break;
    }
  }

LABEL_58:
  if (v10 == 255)
  {
    goto LABEL_59;
  }

  return v23;
}

unsigned __int8 *vt_Copy_b64a_rgb_xf422_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, float a5, float a6, float a7, float a8)
{
  v8 = *result;
  v9 = *(result + 13);
  v10 = v9 * a2 / v8;
  v11 = (v9 + v9 * a2) / v8 - v10;
  if (v11 >= 1)
  {
    v12 = 0;
    v13 = *(result + 19);
    v14 = *(result + 24) & 0xFFFFFFFE;
    v15 = **(result + 8);
    v16 = *(result + 16);
    v17 = *(result + 17);
    v18 = *v17;
    v19 = v17[1];
    v20 = v17[2];
    *&v21 = *(v13 + 136);
    v22 = *&v21 / *(v13 + 128);
    LOWORD(v21) = *(v13 + 144);
    v23 = v21;
    LOWORD(a5) = *(v13 + 146);
    v24 = LODWORD(a5);
    LOWORD(a6) = *(v13 + 148);
    v25 = LODWORD(a6);
    LOWORD(a7) = *(v13 + 150);
    v26 = LODWORD(a7);
    LOWORD(a8) = *(v13 + 152);
    v27 = LODWORD(a8);
    v28 = *(v13 + 36);
    v29 = *(v13 + 40);
    v30 = *(v13 + 44);
    v31 = *(v13 + 48) * 0.5;
    v32 = *(v13 + 52) * 0.5;
    v33 = *(v13 + 56) * 0.5;
    v34 = *(v13 + 60) * 0.5;
    v35 = *(v13 + 64) * 0.5;
    v36 = *(v13 + 68) * 0.5;
    v37 = *(result + 14);
    v38 = v10 + *(result + 15);
    v39 = *(result + 28) * a2 / v8 + *(result + 44);
    v40 = *(v13 + 132);
    if (v40 >= 0x11)
    {
      v41 = 0;
    }

    else
    {
      v41 = 16 - v40;
    }

    v42 = v16[2];
    if (v42)
    {
      v43 = v42 + v20 * v38 + 2 * v37;
    }

    else
    {
      v43 = 0;
    }

    v44 = v16[1];
    v45 = v44 == 0;
    v46 = v44 + v19 * v38 + 2 * v37;
    if (v45)
    {
      v46 = 0;
    }

    v47 = *v16 + v18 * v38 + 2 * v37;
    v48 = **(result + 7) + v39 * v15 + 8 * *(result + 36);
    v49 = v41;
    do
    {
      if (v14 >= 1)
      {
        v50 = 0;
        v51 = v48;
        v52 = v43;
        v53 = v47;
        do
        {
          v54 = v22 * (bswap32(v51[1]) >> 16);
          v55 = v22 * (bswap32(v51[2]) >> 16);
          v56 = v22 * (bswap32(v51[3]) >> 16);
          v57 = (((v29 * v55) + (v28 * v54)) + (v30 * v56)) + v23;
          v58 = v25;
          if (v57 <= v25)
          {
            v58 = (((v29 * v55) + (v28 * v54)) + (v30 * v56)) + v23;
            if (v57 < v23)
            {
              v58 = v23;
            }
          }

          v59 = *v51;
          v60 = v51[4];
          v61 = v22 * (bswap32(v51[5]) >> 16);
          v62 = v22 * (bswap32(v51[6]) >> 16);
          v63 = v22 * (bswap32(v51[7]) >> 16);
          v64 = (((v29 * v62) + (v28 * v61)) + (v30 * v63)) + v23;
          *v53 = llroundf(v58) << v49;
          v65 = v25;
          if (v64 <= v25)
          {
            v65 = (((v29 * v62) + (v28 * v61)) + (v30 * v63)) + v23;
            if (v64 < v23)
            {
              v65 = v23;
            }
          }

          v53[1] = llroundf(v65) << v49;
          v66 = v54 + v61;
          v67 = v55 + v62;
          v68 = v56 + v63;
          v69 = ((v24 + (v66 * v31)) + (v67 * v32)) + (v68 * v33);
          v70 = v27;
          if (v69 <= v27)
          {
            v70 = ((v24 + (v66 * v31)) + (v67 * v32)) + (v68 * v33);
            if (v69 < v26)
            {
              v70 = v26;
            }
          }

          v71 = (v46 + 2 * v50);
          v72 = ((v24 + (v66 * v34)) + (v67 * v35)) + (v68 * v36);
          *v71 = llroundf(v70) << v49;
          v73 = v27;
          if (v72 <= v27)
          {
            v73 = v72;
            if (v72 < v26)
            {
              v73 = v26;
            }
          }

          v71[1] = llroundf(v73) << v49;
          if (v52)
          {
            *v52 = bswap32(v59) >> 16;
            v52[1] = bswap32(v60) >> 16;
            v52 += 2;
          }

          v51 += 8;
          v50 += 2;
          v53 += 2;
        }

        while (v50 < v14);
      }

      v48 += v15;
      v47 += v18;
      v46 += v19;
      v43 += v20;
      ++v12;
    }

    while (v12 != v11);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_b64a_TRC_Tone_Mat_TRC_v216(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v41 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v39 = a2[2];
  v40 = v16;
  v18 = *a6;
  v35 = a6[1];
  v36 = v17;
  v37 = a6[2];
  v38 = v18;
  if (v15 == 255)
  {
    v19 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v19)
    {
      v20 = 0;
LABEL_13:
      free(v19);
      return v20;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v19 = &v35.i8[-v21];
    bzero(&v35 - v21, v22);
  }

  v23 = vbslq_s8(vcgtq_s64(vaddq_s64(v39, v36), v40), vsubq_s64(v40, v39), v36);
  v24 = vbslq_s8(vcgtq_s64(vaddq_s64(v37, v35), v38), vsubq_s64(v38, v37), v35);
  v25 = vbslq_s8(vcgtq_s64(v24, v23), v23, v24);
  v23.i64[0] = v25.i64[0];
  v23.i64[1] = -1;
  v26 = vaddq_s64(v39, v23);
  if ((*a4 * (v26.i64[1] + v25.i64[1]) + 8 * v26.i64[0]) > *a5 && (v36 = v25, fig_log_get_emitter(), v27 = FigSignalErrorAtGM(), v25 = v36, v27))
  {
    v20 = v27;
  }

  else
  {
    *v19 = v15;
    v28 = v39;
    *(v19 + 4) = v40;
    *(v19 + 20) = v25;
    *(v19 + 36) = v28;
    v29 = v37;
    *(v19 + 5) = v38;
    *(v19 + 6) = v25;
    *(v19 + 7) = v29;
    *(v19 + 7) = a3;
    *(v19 + 8) = a4;
    *(v19 + 9) = a5;
    *(v19 + 16) = a7;
    *(v19 + 17) = a8;
    *(v19 + 18) = a9;
    *(v19 + 19) = a1;
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_b64a_TRC_Tone_Mat_TRC_v216_GCD);
    if (!v15)
    {
      return 0;
    }

    v31 = (v19 + 160);
    v32 = v15;
    while (1)
    {
      v33 = *v31++;
      v20 = v33;
      if (v33)
      {
        break;
      }

      if (!--v32)
      {
        v20 = 0;
        break;
      }
    }
  }

  if (v15 == 255)
  {
    goto LABEL_13;
  }

  return v20;
}

unsigned __int8 *vt_Copy_b64a_TRC_Tone_Mat_TRC_v216_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, double a5, double a6, double a7, float a8, float a9, float a10)
{
  v12 = *result;
  v13 = *(result + 13);
  v14 = *(result + 14);
  v15 = v13 * a2 / v12;
  v16 = *(result + 16);
  v17 = v15 + *(result + 15);
  v18 = (v13 + v13 * a2) / v12 - v15;
  v19 = *(result + 17);
  v20 = v16[1];
  if (v20)
  {
    v20 = (v20 + 2 * v14 + v19[1] * v17);
  }

  if (v18 >= 1)
  {
    v21 = 0;
    v22 = *(result + 28) * a2 / v12 + *(result + 44);
    v23 = **(result + 8);
    v24 = *v19;
    v25 = *(result + 19);
    v26 = *v16 + v24 * v17;
    v27 = **(result + 7) + v23 * v22 + 8 * *(result + 36);
    v28 = (v26 + 2 * v14);
    v29 = *(result + 24) & 0xFFFFFFFE;
    LOWORD(a8) = *(v25 + 144);
    LOWORD(a9) = *(v25 + 146);
    LOWORD(a10) = *(v25 + 148);
    LOWORD(v10) = *(v25 + 150);
    LOWORD(v11) = *(v25 + 152);
    v30 = *(v25 + 36);
    v31 = *(v25 + 40);
    v32 = *(v25 + 44);
    v33 = 8191.0 / *(v25 + 128);
    v34 = LODWORD(a8);
    v35 = LODWORD(a9);
    v36 = LODWORD(a10);
    v37 = v10;
    v38 = v11;
    v127 = *(v25 + 52) * 0.5;
    v128 = *(v25 + 48) * 0.5;
    v125 = *(v25 + 60) * 0.5;
    v126 = *(v25 + 56) * 0.5;
    v39 = *(v25 + 72);
    v123 = *(v25 + 68) * 0.5;
    v124 = *(v25 + 64) * 0.5;
    v40 = *(v25 + 76);
    v41 = *(v25 + 80);
    v42 = *(v25 + 84);
    v43 = *(v25 + 88);
    v44 = *(v25 + 92);
    v45 = *(v25 + 96);
    v47 = *(v25 + 100);
    v46 = *(v25 + 104);
    v48 = v25 + 16548;
    v49 = v25 + 32932;
    v50 = *(v25 + 108);
    v51 = *(v25 + 112);
    v52 = *(v25 + 116);
    v53 = *(v25 + 120);
    v54 = v25 + 164;
    do
    {
      if (v29 >= 1)
      {
        v55 = 0;
        v56 = v20;
        v57 = v28;
        v58 = v27;
        do
        {
          _H0 = *(v54 + 2 * llroundf(fminf(fmaxf(v33 * (bswap32(v58[1]) >> 16), 0.0), 8191.0)));
          __asm { FCVT            S14, H0 }

          _H0 = *(v54 + 2 * llroundf(fminf(fmaxf(v33 * (bswap32(v58[2]) >> 16), 0.0), 8191.0)));
          __asm { FCVT            S15, H0 }

          _H0 = *(v54 + 2 * llroundf(fminf(fmaxf(v33 * (bswap32(v58[3]) >> 16), 0.0), 8191.0)));
          __asm { FCVT            S18, H0 }

          v69 = (((v51 * _S15) + (v50 * _S14)) + (v52 * _S18)) + (v53 * fmaxf(_S14, fmaxf(_S15, _S18)));
          v70 = 8191.0;
          if (v69 <= 8191.0)
          {
            v70 = v69;
            if (v69 < 0.0)
            {
              v70 = 0.0;
            }
          }

          _H19 = *(v54 + 2 * llroundf(fminf(fmaxf(v33 * (bswap32(v58[5]) >> 16), 0.0), 8191.0)));
          __asm { FCVT            S19, H19 }

          _H20 = *(v54 + 2 * llroundf(fminf(fmaxf(v33 * (bswap32(v58[6]) >> 16), 0.0), 8191.0)));
          _H22 = *(v54 + 2 * llroundf(fminf(fmaxf(v33 * (bswap32(v58[7]) >> 16), 0.0), 8191.0)));
          __asm
          {
            FCVT            S21, H20
            FCVT            S22, H22
          }

          _H0 = *(v48 + 2 * llroundf(v70));
          __asm { FCVT            S20, H0 }

          v79 = _S14 * _S20;
          v80 = _S15 * _S20;
          v81 = _S18 * _S20;
          v82 = (((v51 * _S21) + (v50 * _S19)) + (v52 * _S22)) + (v53 * fmaxf(_S19, fmaxf(_S21, _S22)));
          v83 = 8191.0;
          if (v82 <= 8191.0)
          {
            v83 = v82;
            if (v82 < 0.0)
            {
              v83 = 0.0;
            }
          }

          _H20 = *(v48 + 2 * llroundf(v83));
          __asm { FCVT            S20, H20 }

          v86 = _S19 * _S20;
          v87 = _S21 * _S20;
          _S20 = _S22 * _S20;
          _S22 = ((v40 * v80) + (v79 * v39)) + (v81 * v41);
          v90 = ((v43 * v80) + (v79 * v42)) + (v81 * v44);
          _S0 = ((v47 * v80) + (v79 * v45)) + (v81 * v46);
          v92 = (v40 * v87) + (v86 * v39);
          v93 = (v43 * v87) + (v86 * v42);
          v94 = (v47 * v87) + (v86 * v45);
          v95 = v92 + (_S20 * v41);
          v96 = v93 + (_S20 * v44);
          v97 = v94 + (_S20 * v46);
          LOWORD(_S20) = *(v49 + 2 * llroundf(fminf(fmaxf(_S22, 0.0), 8191.0)));
          __asm { FCVT            S20, H20 }

          LOWORD(_S22) = *(v49 + 2 * llroundf(fminf(fmaxf(v90, 0.0), 8191.0)));
          LOWORD(_S0) = *(v49 + 2 * llroundf(fminf(fmaxf(_S0, 0.0), 8191.0)));
          __asm
          {
            FCVT            S22, H22
            FCVT            S15, H0
          }

          LOWORD(_S0) = *(v49 + 2 * llroundf(fminf(fmaxf(v95, 0.0), 8191.0)));
          __asm { FCVT            S18, H0 }

          LOWORD(_S0) = *(v49 + 2 * llroundf(fminf(fmaxf(v96, 0.0), 8191.0)));
          __asm { FCVT            S14, H0 }

          v103 = llroundf(fminf(fmaxf(v97, 0.0), 8191.0));
          v104 = (v31 * _S22) + (v30 * _S20);
          _S0 = _S20 + _S18;
          v106 = (v35 + ((_S20 + _S18) * v128)) + ((_S22 + _S14) * v127);
          v107 = (v35 + (_S0 * v125)) + ((_S22 + _S14) * v124);
          LOWORD(_S0) = *(v49 + 2 * v103);
          __asm { FCVT            S0, H0 }

          v109 = v104 + (v32 * _S15);
          v110 = v106 + ((_S15 + _S0) * v126);
          v111 = v107 + ((_S15 + _S0) * v123);
          if (v110 < v34)
          {
            v112 = v34;
          }

          else
          {
            v112 = v110;
          }

          v113 = v110 <= v36;
          v114 = v109 + v34;
          if (!v113)
          {
            v112 = v36;
          }

          v115 = llroundf(v112);
          if (v114 < v37)
          {
            v116 = v37;
          }

          else
          {
            v116 = v109 + v34;
          }

          v117 = *v58;
          v118 = v58[4];
          *v57 = v115;
          if (v114 <= v38)
          {
            v119 = v116;
          }

          else
          {
            v119 = v38;
          }

          v57[1] = llroundf(v119);
          v120 = v36;
          if (v111 <= v36)
          {
            v120 = v111;
            if (v111 < v34)
            {
              v120 = v34;
            }
          }

          v121 = (((v31 * _S14) + (v30 * _S18)) + (v32 * _S0)) + v34;
          v57[2] = llroundf(v120);
          v122 = v38;
          if (v121 <= v38)
          {
            v122 = v121;
            if (v121 < v37)
            {
              v122 = v37;
            }
          }

          v57[3] = llroundf(v122);
          if (v56)
          {
            *v56 = bswap32(v117) >> 16;
            v56[1] = bswap32(v118) >> 16;
            v56 += 2;
          }

          v58 += 8;
          v55 += 2;
          v57 += 4;
        }

        while (v55 < v29);
      }

      v27 += v23;
      v28 = (v28 + v24);
      ++v21;
    }

    while (v21 != v18);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_b64a_TRC_Mat_TRC_v216(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v41 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v39 = a2[2];
  v40 = v16;
  v18 = *a6;
  v35 = a6[1];
  v36 = v17;
  v37 = a6[2];
  v38 = v18;
  if (v15 == 255)
  {
    v19 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v19)
    {
      v20 = 0;
LABEL_13:
      free(v19);
      return v20;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v19 = &v35.i8[-v21];
    bzero(&v35 - v21, v22);
  }

  v23 = vbslq_s8(vcgtq_s64(vaddq_s64(v39, v36), v40), vsubq_s64(v40, v39), v36);
  v24 = vbslq_s8(vcgtq_s64(vaddq_s64(v37, v35), v38), vsubq_s64(v38, v37), v35);
  v25 = vbslq_s8(vcgtq_s64(v24, v23), v23, v24);
  v23.i64[0] = v25.i64[0];
  v23.i64[1] = -1;
  v26 = vaddq_s64(v39, v23);
  if ((*a4 * (v26.i64[1] + v25.i64[1]) + 8 * v26.i64[0]) > *a5 && (v36 = v25, fig_log_get_emitter(), v27 = FigSignalErrorAtGM(), v25 = v36, v27))
  {
    v20 = v27;
  }

  else
  {
    *v19 = v15;
    v28 = v39;
    *(v19 + 4) = v40;
    *(v19 + 20) = v25;
    *(v19 + 36) = v28;
    v29 = v37;
    *(v19 + 5) = v38;
    *(v19 + 6) = v25;
    *(v19 + 7) = v29;
    *(v19 + 7) = a3;
    *(v19 + 8) = a4;
    *(v19 + 9) = a5;
    *(v19 + 16) = a7;
    *(v19 + 17) = a8;
    *(v19 + 18) = a9;
    *(v19 + 19) = a1;
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_b64a_TRC_Mat_TRC_v216_GCD);
    if (!v15)
    {
      return 0;
    }

    v31 = (v19 + 160);
    v32 = v15;
    while (1)
    {
      v33 = *v31++;
      v20 = v33;
      if (v33)
      {
        break;
      }

      if (!--v32)
      {
        v20 = 0;
        break;
      }
    }
  }

  if (v15 == 255)
  {
    goto LABEL_13;
  }

  return v20;
}

unsigned __int8 *vt_Copy_b64a_TRC_Mat_TRC_v216_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, double a5, double a6, float a7, float a8, float a9, float a10)
{
  v11 = *result;
  v12 = *(result + 13);
  v13 = *(result + 14);
  v14 = v12 * a2 / v11;
  v15 = *(result + 16);
  v16 = v14 + *(result + 15);
  v17 = (v12 + v12 * a2) / v11 - v14;
  v18 = *(result + 17);
  v19 = v15[1];
  if (v19)
  {
    v19 = (v19 + 2 * v13 + v18[1] * v16);
  }

  if (v17 >= 1)
  {
    v20 = 0;
    v21 = *(result + 28) * a2 / v11 + *(result + 44);
    v22 = **(result + 8);
    v23 = *v18;
    v24 = **(result + 7) + v22 * v21;
    v25 = *(result + 19);
    v26 = *v15 + v23 * v16;
    v27 = (v24 + 8 * *(result + 36));
    v28 = (v26 + 2 * v13);
    v29 = *(result + 24) & 0xFFFFFFFE;
    LOWORD(a7) = *(v25 + 144);
    LOWORD(a8) = *(v25 + 146);
    LOWORD(a9) = *(v25 + 148);
    LOWORD(a10) = *(v25 + 150);
    LOWORD(v10) = *(v25 + 152);
    v30 = *(v25 + 36);
    v31 = *(v25 + 40);
    v32 = 8191.0 / *(v25 + 128);
    v33 = LODWORD(a7);
    v34 = LODWORD(a8);
    v35 = LODWORD(a9);
    v36 = LODWORD(a10);
    v37 = v10;
    v38 = *(v25 + 44);
    v108 = *(v25 + 52) * 0.5;
    v109 = *(v25 + 48) * 0.5;
    v39 = *(v25 + 56) * 0.5;
    v40 = *(v25 + 60) * 0.5;
    v41 = *(v25 + 64) * 0.5;
    v42 = *(v25 + 72);
    v43 = *(v25 + 68) * 0.5;
    v44 = *(v25 + 76);
    v45 = *(v25 + 80);
    v46 = *(v25 + 84);
    v47 = *(v25 + 88);
    v48 = *(v25 + 92);
    v49 = *(v25 + 96);
    v51 = *(v25 + 100);
    v50 = *(v25 + 104);
    v52 = v25 + 164;
    v53 = v25 + 16548;
    do
    {
      if (v29 >= 1)
      {
        v54 = 0;
        v55 = v27;
        v56 = v19;
        v57 = v28;
        do
        {
          _H10 = *(v52 + 2 * llroundf(fminf(fmaxf(v32 * (bswap32(v55[1]) >> 16), 0.0), 8191.0)));
          __asm { FCVT            S10, H10 }

          _H11 = *(v52 + 2 * llroundf(fminf(fmaxf(v32 * (bswap32(v55[2]) >> 16), 0.0), 8191.0)));
          _H12 = *(v52 + 2 * llroundf(fminf(fmaxf(v32 * (bswap32(v55[3]) >> 16), 0.0), 8191.0)));
          __asm
          {
            FCVT            S11, H11
            FCVT            S12, H12
          }

          _H13 = *(v52 + 2 * llroundf(fminf(fmaxf(v32 * (bswap32(v55[5]) >> 16), 0.0), 8191.0)));
          __asm { FCVT            S13, H13 }

          _H14 = *(v52 + 2 * llroundf(fminf(fmaxf(v32 * (bswap32(v55[6]) >> 16), 0.0), 8191.0)));
          __asm { FCVT            S14, H14 }

          _H15 = *(v52 + 2 * llroundf(fminf(fmaxf(v32 * (bswap32(v55[7]) >> 16), 0.0), 8191.0)));
          _S18 = ((v44 * _S11) + (_S10 * v42)) + (_S12 * v45);
          _S19 = ((v47 * _S11) + (_S10 * v46)) + (_S12 * v48);
          _S10 = ((v51 * _S11) + (_S10 * v49)) + (_S12 * v50);
          v76 = (v44 * _S14) + (_S13 * v42);
          v77 = (v47 * _S14) + (_S13 * v46);
          v78 = (v51 * _S14) + (_S13 * v49);
          __asm { FCVT            S14, H15 }

          _S11 = v76 + (_S14 * v45);
          v81 = v77 + (_S14 * v48);
          v82 = v78 + (_S14 * v50);
          LOWORD(_S18) = *(v53 + 2 * llroundf(fminf(fmaxf(_S18, 0.0), 8191.0)));
          __asm { FCVT            S18, H18 }

          LOWORD(_S19) = *(v53 + 2 * llroundf(fminf(fmaxf(_S19, 0.0), 8191.0)));
          LOWORD(_S10) = *(v53 + 2 * llroundf(fminf(fmaxf(_S10, 0.0), 8191.0)));
          __asm
          {
            FCVT            S19, H19
            FCVT            S14, H10
          }

          LOWORD(_S10) = *(v53 + 2 * llroundf(fminf(fmaxf(_S11, 0.0), 8191.0)));
          __asm { FCVT            S10, H10 }

          LOWORD(_S11) = *(v53 + 2 * llroundf(fminf(fmaxf(v81, 0.0), 8191.0)));
          __asm { FCVT            S11, H11 }

          v88 = llroundf(fminf(fmaxf(v82, 0.0), 8191.0));
          v89 = (v31 * _S19) + (v30 * _S18);
          v90 = _S18 + _S10;
          _S19 = _S19 + _S11;
          v92 = (v34 + (v90 * v109)) + (_S19 * v108);
          v93 = (v34 + (v90 * v40)) + (_S19 * v41);
          LOWORD(_S19) = *(v53 + 2 * v88);
          __asm { FCVT            S12, H19 }

          v95 = v89 + (v38 * _S14);
          v96 = _S14 + _S12;
          v97 = v92 + ((_S14 + _S12) * v39);
          v98 = v93 + (v96 * v43);
          if (v97 < v33)
          {
            v99 = v33;
          }

          else
          {
            v99 = v97;
          }

          v100 = v95 + v33;
          if (v97 > v35)
          {
            v99 = v35;
          }

          v101 = llroundf(v99);
          if (v100 < v36)
          {
            v102 = v36;
          }

          else
          {
            v102 = v100;
          }

          v103 = *v55;
          v104 = v55[4];
          *v57 = v101;
          if (v100 > v37)
          {
            v102 = v37;
          }

          v57[1] = llroundf(v102);
          v105 = v35;
          if (v98 <= v35)
          {
            v105 = v98;
            if (v98 < v33)
            {
              v105 = v33;
            }
          }

          v106 = (((v31 * _S11) + (v30 * _S10)) + (v38 * _S12)) + v33;
          v57[2] = llroundf(v105);
          v107 = v37;
          if (v106 <= v37)
          {
            v107 = v106;
            if (v106 < v36)
            {
              v107 = v36;
            }
          }

          v57[3] = llroundf(v107);
          if (v56)
          {
            *v56 = bswap32(v103) >> 16;
            v56[1] = bswap32(v104) >> 16;
            v56 += 2;
          }

          v55 += 8;
          v54 += 2;
          v57 += 4;
        }

        while (v54 < v29);
      }

      v27 = (v27 + v22);
      v28 = (v28 + v23);
      ++v20;
    }

    while (v20 != v17);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_b64a_rgb_v216(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v41 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v39 = a2[2];
  v40 = v16;
  v18 = *a6;
  v35 = a6[1];
  v36 = v17;
  v37 = a6[2];
  v38 = v18;
  if (v15 == 255)
  {
    v19 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v19)
    {
      v20 = 0;
LABEL_13:
      free(v19);
      return v20;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v19 = &v35.i8[-v21];
    bzero(&v35 - v21, v22);
  }

  v23 = vbslq_s8(vcgtq_s64(vaddq_s64(v39, v36), v40), vsubq_s64(v40, v39), v36);
  v24 = vbslq_s8(vcgtq_s64(vaddq_s64(v37, v35), v38), vsubq_s64(v38, v37), v35);
  v25 = vbslq_s8(vcgtq_s64(v24, v23), v23, v24);
  v23.i64[0] = v25.i64[0];
  v23.i64[1] = -1;
  v26 = vaddq_s64(v39, v23);
  if ((*a4 * (v26.i64[1] + v25.i64[1]) + 8 * v26.i64[0]) > *a5 && (v36 = v25, fig_log_get_emitter(), v27 = FigSignalErrorAtGM(), v25 = v36, v27))
  {
    v20 = v27;
  }

  else
  {
    *v19 = v15;
    v28 = v39;
    *(v19 + 4) = v40;
    *(v19 + 20) = v25;
    *(v19 + 36) = v28;
    v29 = v37;
    *(v19 + 5) = v38;
    *(v19 + 6) = v25;
    *(v19 + 7) = v29;
    *(v19 + 7) = a3;
    *(v19 + 8) = a4;
    *(v19 + 9) = a5;
    *(v19 + 16) = a7;
    *(v19 + 17) = a8;
    *(v19 + 18) = a9;
    *(v19 + 19) = a1;
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_b64a_rgb_v216_GCD);
    if (!v15)
    {
      return 0;
    }

    v31 = (v19 + 160);
    v32 = v15;
    while (1)
    {
      v33 = *v31++;
      v20 = v33;
      if (v33)
      {
        break;
      }

      if (!--v32)
      {
        v20 = 0;
        break;
      }
    }
  }

  if (v15 == 255)
  {
    goto LABEL_13;
  }

  return v20;
}

unsigned __int8 *vt_Copy_b64a_rgb_v216_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, float a5, float a6, float a7, float a8)
{
  v8 = *result;
  v9 = *(result + 13);
  v10 = *(result + 14);
  v11 = v9 * a2 / v8;
  v12 = *(result + 16);
  v13 = v11 + *(result + 15);
  v14 = (v9 + v9 * a2) / v8 - v11;
  v15 = *(result + 17);
  v16 = v12[1];
  if (v16)
  {
    v16 = (v16 + 2 * v10 + v15[1] * v13);
  }

  if (v14 >= 1)
  {
    v17 = 0;
    v18 = *(result + 28) * a2 / v8 + *(result + 44);
    v19 = **(result + 8);
    v20 = *v15;
    v21 = **(result + 7) + v19 * v18;
    v22 = *(result + 19);
    v23 = *v12 + v20 * v13;
    v24 = (v21 + 8 * *(result + 36));
    v25 = (v23 + 2 * v10);
    v26 = *(result + 24) & 0xFFFFFFFE;
    *&v27 = *(v22 + 136);
    v28 = *&v27 / *(v22 + 128);
    LOWORD(v27) = *(v22 + 144);
    v29 = v27;
    LOWORD(a5) = *(v22 + 146);
    v30 = LODWORD(a5);
    LOWORD(a6) = *(v22 + 148);
    v31 = LODWORD(a6);
    LOWORD(a7) = *(v22 + 150);
    v32 = LODWORD(a7);
    LOWORD(a8) = *(v22 + 152);
    v33 = LODWORD(a8);
    v34 = *(v22 + 36);
    v35 = *(v22 + 40);
    v36 = *(v22 + 44);
    v37 = *(v22 + 48) * 0.5;
    v38 = *(v22 + 52) * 0.5;
    v39 = *(v22 + 56) * 0.5;
    v40 = *(v22 + 60) * 0.5;
    v41 = *(v22 + 64) * 0.5;
    v42 = *(v22 + 68) * 0.5;
    do
    {
      if (v26 >= 1)
      {
        v43 = 0;
        v44 = v24;
        v45 = v16;
        v46 = v25;
        do
        {
          v47 = *v44;
          v48 = v28 * (bswap32(v44[1]) >> 16);
          v49 = v28 * (bswap32(v44[2]) >> 16);
          v50 = v28 * (bswap32(v44[3]) >> 16);
          v51 = v44[4];
          v52 = v28 * (bswap32(v44[5]) >> 16);
          v53 = v28 * (bswap32(v44[6]) >> 16);
          v54 = v28 * (bswap32(v44[7]) >> 16);
          v55 = (((v35 * v49) + (v34 * v48)) + (v36 * v50)) + v29;
          v56 = v48 + v52;
          v57 = v49 + v53;
          v58 = v50 + v54;
          v59 = ((v30 + (v56 * v37)) + (v57 * v38)) + (v58 * v39);
          v60 = ((v30 + (v56 * v40)) + (v57 * v41)) + (v58 * v42);
          if (v59 < v29)
          {
            v61 = v29;
          }

          else
          {
            v61 = v59;
          }

          if (v59 > v31)
          {
            v61 = v31;
          }

          *v46 = llroundf(v61);
          if (v55 < v32)
          {
            v62 = v32;
          }

          else
          {
            v62 = v55;
          }

          if (v55 > v33)
          {
            v62 = v33;
          }

          v46[1] = llroundf(v62);
          v63 = v31;
          if (v60 <= v31)
          {
            v63 = v60;
            if (v60 < v29)
            {
              v63 = v29;
            }
          }

          v64 = (((v35 * v53) + (v34 * v52)) + (v36 * v54)) + v29;
          v46[2] = llroundf(v63);
          v65 = v33;
          if (v64 <= v33)
          {
            v65 = v64;
            if (v64 < v32)
            {
              v65 = v32;
            }
          }

          v46[3] = llroundf(v65);
          if (v45)
          {
            *v45 = bswap32(v47) >> 16;
            v45[1] = bswap32(v51) >> 16;
            v45 += 2;
          }

          v44 += 8;
          v43 += 2;
          v46 += 4;
        }

        while (v43 < v26);
      }

      v24 = (v24 + v19);
      v25 = (v25 + v20);
      ++v17;
    }

    while (v17 != v14);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_b64a_TRC_Tone_Mat_TRC_444vf(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v13 = a3;
  v46 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v44 = a2[2];
  v45 = v16;
  v18 = *a6;
  v40 = a6[1];
  v41 = v17;
  v42 = a6[2];
  v43 = v18;
  if (v15 == 255)
  {
    v19 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v19)
    {
      v20 = 0;
LABEL_22:
      free(v19);
      return v20;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v19 = &v40.i8[-v21];
    bzero(&v40 - v21, v22);
  }

  v23 = a9;
  v24 = v42;
  v25 = vbslq_s8(vcgtq_s64(vaddq_s64(v44, v41), v45), vsubq_s64(v45, v44), v41);
  v26 = vbslq_s8(vcgtq_s64(vaddq_s64(v42, v40), v43), vsubq_s64(v43, v42), v40);
  v27 = vbslq_s8(vcgtq_s64(v26, v25), v25, v26);
  v25.i64[0] = v27.i64[0];
  v25.i64[1] = -1;
  v28 = vaddq_s64(v44, v25);
  if ((*a4 * (v28.i64[1] + v27.i64[1]) + 8 * v28.i64[0]) <= *a5)
  {
    v32 = vaddq_s64((*&v42 + __PAIR128__(-1, 0)), v27);
    if (v32.i64[0] + *a8 * v32.i64[1] <= *a9)
    {
      if (*(a7 + 8) && (a8[1] * v32.i64[1] + 2 * v32.i64[0]) > a9[1])
      {
        v40 = v27;
        v41.i64[0] = a9;
        v29 = a5;
        v30 = a7;
        v31 = v13;
      }

      else
      {
        if (!*(a7 + 16) || v32.i64[0] + a8[2] * v32.i64[1] <= a9[2])
        {
          goto LABEL_16;
        }

        v40 = v27;
        v41.i64[0] = a9;
        v29 = a5;
        v30 = a7;
        v31 = v13;
      }
    }

    else
    {
      v40 = v27;
      v41.i64[0] = a9;
      v29 = a5;
      v30 = a7;
      v31 = v13;
    }
  }

  else
  {
    v40 = v27;
    v41.i64[0] = a9;
    v29 = a5;
    v30 = a7;
    v31 = v13;
  }

  fig_log_get_emitter();
  v33 = FigSignalErrorAtGM();
  v13 = v31;
  a7 = v30;
  a5 = v29;
  v24 = v42;
  v23 = v41.i64[0];
  v27 = v40;
  if (v33)
  {
    v20 = v33;
    goto LABEL_21;
  }

LABEL_16:
  *v19 = v15;
  v34 = v44;
  *(v19 + 4) = v45;
  *(v19 + 20) = v27;
  *(v19 + 36) = v34;
  *(v19 + 5) = v43;
  *(v19 + 6) = v27;
  *(v19 + 7) = v24;
  *(v19 + 7) = v13;
  *(v19 + 8) = a4;
  *(v19 + 9) = a5;
  *(v19 + 16) = a7;
  *(v19 + 17) = a8;
  *(v19 + 18) = v23;
  *(v19 + 19) = a1;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v15, global_queue, v19, vt_Copy_b64a_TRC_Tone_Mat_TRC_444vf_GCD);
  if (!v15)
  {
    return 0;
  }

  v36 = (v19 + 160);
  v37 = v15;
  while (1)
  {
    v38 = *v36++;
    v20 = v38;
    if (v38)
    {
      break;
    }

    if (!--v37)
    {
      v20 = 0;
      break;
    }
  }

LABEL_21:
  if (v15 == 255)
  {
    goto LABEL_22;
  }

  return v20;
}

unsigned __int8 *vt_Copy_b64a_TRC_Tone_Mat_TRC_444vf_GCD(unsigned __int8 *result, uint64_t a2)
{
  v2 = *result;
  v3 = *(result + 13);
  v4 = v3 * a2 / v2;
  v5 = (v3 + v3 * a2) / v2 - v4;
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = *(result + 24);
    v8 = *(result + 19);
    v9 = **(result + 8);
    v10 = *(result + 16);
    v11 = *(result + 17);
    v12 = *v11;
    v13 = v11[1];
    v14 = v11[2];
    *&v15 = *(v8 + 128);
    v16 = 8191.0 / *&v15;
    LOWORD(v15) = *(v8 + 144);
    v17 = v15;
    LOWORD(v15) = *(v8 + 146);
    v18 = v15;
    LOWORD(v15) = *(v8 + 148);
    v19 = v15;
    LOWORD(v15) = *(v8 + 150);
    v20 = v15;
    LOWORD(v15) = *(v8 + 152);
    v21 = v15;
    v22 = *(v8 + 36);
    v23 = *(v8 + 40);
    v24 = *(v8 + 44);
    v91 = *(v8 + 52);
    v92 = *(v8 + 48);
    v89 = *(v8 + 60);
    v90 = *(v8 + 56);
    v25 = *(v8 + 68);
    v88 = *(v8 + 64);
    v26 = *(v8 + 72);
    v27 = *(v8 + 76);
    v28 = *(v8 + 80);
    v29 = *(v8 + 84);
    v30 = *(v8 + 88);
    v31 = *(v8 + 92);
    v32 = *(v8 + 96);
    v33 = *(v8 + 100);
    v34 = *(v8 + 104);
    v35 = *(v8 + 108);
    v36 = v8 + 164;
    v37 = v8 + 16548;
    v38 = v8 + 32932;
    v39 = *(v8 + 112);
    v40 = *(v8 + 116);
    v41 = *(v8 + 120);
    v42 = *(result + 14);
    v43 = v4 + *(result + 15);
    v44 = *(result + 28) * a2 / v2 + *(result + 44);
    v45 = v10[2];
    if (v45)
    {
      v46 = (v45 + v14 * v43 + v42);
    }

    else
    {
      v46 = 0;
    }

    v48 = *v10;
    v47 = *(*(result + 16) + 8);
    _ZF = v47 == 0;
    v50 = (v47 + v13 * v43 + v42);
    if (_ZF)
    {
      v50 = 0;
    }

    v51 = (v48 + v12 * v43 + v42);
    v52 = **(result + 7) + v44 * v9 + 8 * *(result + 36);
    do
    {
      if (v7 >= 1)
      {
        v53 = v7;
        v54 = v46;
        v55 = v50;
        v56 = v51;
        v57 = v52;
        do
        {
          _H0 = *(v36 + 2 * llroundf(fminf(fmaxf(v16 * (bswap32(v57[1]) >> 16), 0.0), 8191.0)));
          __asm { FCVT            S18, H0 }

          _H0 = *(v36 + 2 * llroundf(fminf(fmaxf(v16 * (bswap32(v57[2]) >> 16), 0.0), 8191.0)));
          __asm { FCVT            S19, H0 }

          _H0 = *(v36 + 2 * llroundf(fminf(fmaxf(v16 * (bswap32(v57[3]) >> 16), 0.0), 8191.0)));
          __asm { FCVT            S15, H0 }

          v67 = (((v39 * _S19) + (v35 * _S18)) + (v40 * _S15)) + (v41 * fmaxf(_S18, fmaxf(_S19, _S15)));
          v68 = 8191.0;
          if (v67 <= 8191.0)
          {
            v68 = v67;
            if (v67 < 0.0)
            {
              v68 = 0.0;
            }
          }

          _H0 = *(v37 + 2 * llroundf(v68));
          __asm { FCVT            S0, H0 }

          _S6 = _S18 * _S0;
          v72 = _S19 * _S0;
          v73 = _S15 * _S0;
          v74 = ((v27 * v72) + (_S6 * v26)) + (v73 * v28);
          v75 = ((v30 * v72) + (_S6 * v29)) + (v73 * v31);
          _S0 = ((v33 * v72) + (_S6 * v32)) + (v73 * v34);
          LOWORD(_S6) = *(v38 + 2 * llroundf(fminf(fmaxf(v74, 0.0), 8191.0)));
          __asm { FCVT            S15, H6 }

          LOWORD(_S6) = *(v38 + 2 * llroundf(fminf(fmaxf(v75, 0.0), 8191.0)));
          __asm { FCVT            S18, H6 }

          LOWORD(_S0) = *(v38 + 2 * llroundf(fminf(fmaxf(_S0, 0.0), 8191.0)));
          __asm { FCVT            S19, H0 }

          v80 = (((v23 * _S18) + (v22 * _S15)) + (v24 * _S19)) + v17;
          v81 = v19;
          if (v80 <= v19)
          {
            v81 = (((v23 * _S18) + (v22 * _S15)) + (v24 * _S19)) + v17;
            if (v80 < v17)
            {
              v81 = v17;
            }
          }

          v82 = *v57;
          *v56++ = llroundf(v81);
          if (v55)
          {
            v83 = ((v18 + (_S15 * v92)) + (_S18 * v91)) + (_S19 * v90);
            v84 = v21;
            if (v83 <= v21)
            {
              v84 = ((v18 + (_S15 * v92)) + (_S18 * v91)) + (_S19 * v90);
              if (v83 < v20)
              {
                v84 = v20;
              }
            }

            v85 = (v18 + (_S15 * v89)) + (_S18 * v88);
            v86 = v85 + (_S19 * v25);
            *v55 = llroundf(v84);
            v87 = v21;
            if (v86 <= v21)
            {
              v87 = v85 + (_S19 * v25);
              if (v86 < v20)
              {
                v87 = v20;
              }
            }

            v55[1] = llroundf(v87);
            v55 += 2;
          }

          if (v54)
          {
            *v54++ = llroundf((bswap32(v82) >> 16) * 0.0038911);
          }

          v57 += 4;
          --v53;
        }

        while (v53);
      }

      v52 += v9;
      v51 += v12;
      v50 += v13;
      v46 += v14;
      ++v6;
    }

    while (v6 != v5);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_b64a_TRC_Mat_TRC_444vf(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v13 = a3;
  v46 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v44 = a2[2];
  v45 = v16;
  v18 = *a6;
  v40 = a6[1];
  v41 = v17;
  v42 = a6[2];
  v43 = v18;
  if (v15 == 255)
  {
    v19 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v19)
    {
      v20 = 0;
LABEL_22:
      free(v19);
      return v20;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v19 = &v40.i8[-v21];
    bzero(&v40 - v21, v22);
  }

  v23 = a9;
  v24 = v42;
  v25 = vbslq_s8(vcgtq_s64(vaddq_s64(v44, v41), v45), vsubq_s64(v45, v44), v41);
  v26 = vbslq_s8(vcgtq_s64(vaddq_s64(v42, v40), v43), vsubq_s64(v43, v42), v40);
  v27 = vbslq_s8(vcgtq_s64(v26, v25), v25, v26);
  v25.i64[0] = v27.i64[0];
  v25.i64[1] = -1;
  v28 = vaddq_s64(v44, v25);
  if ((*a4 * (v28.i64[1] + v27.i64[1]) + 8 * v28.i64[0]) <= *a5)
  {
    v32 = vaddq_s64((*&v42 + __PAIR128__(-1, 0)), v27);
    if (v32.i64[0] + *a8 * v32.i64[1] <= *a9)
    {
      if (*(a7 + 8) && (a8[1] * v32.i64[1] + 2 * v32.i64[0]) > a9[1])
      {
        v40 = v27;
        v41.i64[0] = a9;
        v29 = a5;
        v30 = a7;
        v31 = v13;
      }

      else
      {
        if (!*(a7 + 16) || v32.i64[0] + a8[2] * v32.i64[1] <= a9[2])
        {
          goto LABEL_16;
        }

        v40 = v27;
        v41.i64[0] = a9;
        v29 = a5;
        v30 = a7;
        v31 = v13;
      }
    }

    else
    {
      v40 = v27;
      v41.i64[0] = a9;
      v29 = a5;
      v30 = a7;
      v31 = v13;
    }
  }

  else
  {
    v40 = v27;
    v41.i64[0] = a9;
    v29 = a5;
    v30 = a7;
    v31 = v13;
  }

  fig_log_get_emitter();
  v33 = FigSignalErrorAtGM();
  v13 = v31;
  a7 = v30;
  a5 = v29;
  v24 = v42;
  v23 = v41.i64[0];
  v27 = v40;
  if (v33)
  {
    v20 = v33;
    goto LABEL_21;
  }

LABEL_16:
  *v19 = v15;
  v34 = v44;
  *(v19 + 4) = v45;
  *(v19 + 20) = v27;
  *(v19 + 36) = v34;
  *(v19 + 5) = v43;
  *(v19 + 6) = v27;
  *(v19 + 7) = v24;
  *(v19 + 7) = v13;
  *(v19 + 8) = a4;
  *(v19 + 9) = a5;
  *(v19 + 16) = a7;
  *(v19 + 17) = a8;
  *(v19 + 18) = v23;
  *(v19 + 19) = a1;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v15, global_queue, v19, vt_Copy_b64a_TRC_Mat_TRC_444vf_GCD);
  if (!v15)
  {
    return 0;
  }

  v36 = (v19 + 160);
  v37 = v15;
  while (1)
  {
    v38 = *v36++;
    v20 = v38;
    if (v38)
    {
      break;
    }

    if (!--v37)
    {
      v20 = 0;
      break;
    }
  }

LABEL_21:
  if (v15 == 255)
  {
    goto LABEL_22;
  }

  return v20;
}

unsigned __int8 *vt_Copy_b64a_TRC_Mat_TRC_444vf_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, float a5, float a6, float a7, float a8, float a9)
{
  v9 = *result;
  v10 = *(result + 13);
  v11 = v10 * a2 / v9;
  v12 = (v10 + v10 * a2) / v9 - v11;
  if (v12 >= 1)
  {
    v13 = 0;
    v14 = *(result + 24);
    v15 = *(result + 19);
    v16 = **(result + 8);
    v17 = *(result + 16);
    v18 = *(result + 17);
    v19 = *v18;
    v20 = v18[1];
    v21 = v18[2];
    v22 = 8191.0 / *(v15 + 128);
    LOWORD(a5) = *(v15 + 144);
    v23 = LODWORD(a5);
    LOWORD(a6) = *(v15 + 146);
    v24 = LODWORD(a6);
    LOWORD(a7) = *(v15 + 148);
    v25 = LODWORD(a7);
    LOWORD(a8) = *(v15 + 150);
    v26 = LODWORD(a8);
    LOWORD(a9) = *(v15 + 152);
    v27 = LODWORD(a9);
    v28 = *(v15 + 36);
    v29 = *(v15 + 40);
    v30 = *(v15 + 44);
    v31 = *(v15 + 48);
    v32 = *(v15 + 52);
    v33 = *(v15 + 56);
    v34 = *(v15 + 60);
    v35 = *(v15 + 64);
    v36 = *(v15 + 68);
    v37 = *(v15 + 72);
    v38 = *(v15 + 76);
    v39 = *(v15 + 80);
    v40 = *(v15 + 84);
    v41 = *(v15 + 88);
    v42 = *(v15 + 92);
    v43 = *(v15 + 96);
    v45 = *(v15 + 100);
    v44 = *(v15 + 104);
    v46 = v15 + 164;
    v47 = v15 + 16548;
    v48 = *(result + 14);
    v49 = v11 + *(result + 15);
    v50 = *(result + 28) * a2 / v9 + *(result + 44);
    v51 = v17[2];
    if (v51)
    {
      v52 = (v51 + v21 * v49 + v48);
    }

    else
    {
      v52 = 0;
    }

    v54 = *v17;
    v53 = *(*(result + 16) + 8);
    _ZF = v53 == 0;
    v56 = (v53 + v20 * v49 + v48);
    if (_ZF)
    {
      v56 = 0;
    }

    v57 = (v54 + v19 * v49 + v48);
    v58 = **(result + 7) + v50 * v16 + 8 * *(result + 36);
    do
    {
      if (v14 >= 1)
      {
        v59 = v14;
        v60 = v58;
        v61 = v52;
        v62 = v56;
        v63 = v57;
        do
        {
          _H13 = *(v46 + 2 * llroundf(fminf(fmaxf(v22 * (bswap32(v60[1]) >> 16), 0.0), 8191.0)));
          __asm { FCVT            S13, H13 }

          _H12 = *(v46 + 2 * llroundf(fminf(fmaxf(v22 * (bswap32(v60[2]) >> 16), 0.0), 8191.0)));
          __asm { FCVT            S12, H12 }

          _H11 = *(v46 + 2 * llroundf(fminf(fmaxf(v22 * (bswap32(v60[3]) >> 16), 0.0), 8191.0)));
          __asm { FCVT            S11, H11 }

          v73 = ((v38 * _S12) + (_S13 * v37)) + (_S11 * v39);
          v74 = ((v41 * _S12) + (_S13 * v40)) + (_S11 * v42);
          _S13 = ((v45 * _S12) + (_S13 * v43)) + (_S11 * v44);
          LOWORD(_S11) = *(v47 + 2 * llroundf(fminf(fmaxf(v73, 0.0), 8191.0)));
          __asm { FCVT            S11, H11 }

          LOWORD(_S12) = *(v47 + 2 * llroundf(fminf(fmaxf(v74, 0.0), 8191.0)));
          __asm { FCVT            S12, H12 }

          LOWORD(_S13) = *(v47 + 2 * llroundf(fminf(fmaxf(_S13, 0.0), 8191.0)));
          __asm { FCVT            S13, H13 }

          v79 = (((v29 * _S12) + (v28 * _S11)) + (v30 * _S13)) + v23;
          v80 = v25;
          if (v79 <= v25)
          {
            v80 = (((v29 * _S12) + (v28 * _S11)) + (v30 * _S13)) + v23;
            if (v79 < v23)
            {
              v80 = v23;
            }
          }

          v81 = *v60;
          *v63++ = llroundf(v80);
          if (v62)
          {
            v82 = ((v24 + (_S11 * v31)) + (_S12 * v32)) + (_S13 * v33);
            v83 = v27;
            if (v82 <= v27)
            {
              v83 = ((v24 + (_S11 * v31)) + (_S12 * v32)) + (_S13 * v33);
              if (v82 < v26)
              {
                v83 = v26;
              }
            }

            v84 = ((v24 + (_S11 * v34)) + (_S12 * v35)) + (_S13 * v36);
            *v62 = llroundf(v83);
            v85 = v27;
            if (v84 <= v27)
            {
              v85 = v84;
              if (v84 < v26)
              {
                v85 = v26;
              }
            }

            v62[1] = llroundf(v85);
            v62 += 2;
          }

          if (v61)
          {
            *v61++ = llroundf((bswap32(v81) >> 16) * 0.0038911);
          }

          v60 += 4;
          --v59;
        }

        while (v59);
      }

      v58 += v16;
      v57 += v19;
      v56 += v20;
      v52 += v21;
      ++v13;
    }

    while (v13 != v12);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_b64a_rgb_444vf(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v13 = a3;
  v46 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v44 = a2[2];
  v45 = v16;
  v18 = *a6;
  v40 = a6[1];
  v41 = v17;
  v42 = a6[2];
  v43 = v18;
  if (v15 == 255)
  {
    v19 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v19)
    {
      v20 = 0;
LABEL_22:
      free(v19);
      return v20;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v19 = &v40.i8[-v21];
    bzero(&v40 - v21, v22);
  }

  v23 = a9;
  v24 = v42;
  v25 = vbslq_s8(vcgtq_s64(vaddq_s64(v44, v41), v45), vsubq_s64(v45, v44), v41);
  v26 = vbslq_s8(vcgtq_s64(vaddq_s64(v42, v40), v43), vsubq_s64(v43, v42), v40);
  v27 = vbslq_s8(vcgtq_s64(v26, v25), v25, v26);
  v25.i64[0] = v27.i64[0];
  v25.i64[1] = -1;
  v28 = vaddq_s64(v44, v25);
  if ((*a4 * (v28.i64[1] + v27.i64[1]) + 8 * v28.i64[0]) <= *a5)
  {
    v32 = vaddq_s64((*&v42 + __PAIR128__(-1, 0)), v27);
    if (v32.i64[0] + *a8 * v32.i64[1] <= *a9)
    {
      if (*(a7 + 8) && (a8[1] * v32.i64[1] + 2 * v32.i64[0]) > a9[1])
      {
        v40 = v27;
        v41.i64[0] = a9;
        v29 = a5;
        v30 = a7;
        v31 = v13;
      }

      else
      {
        if (!*(a7 + 16) || v32.i64[0] + a8[2] * v32.i64[1] <= a9[2])
        {
          goto LABEL_16;
        }

        v40 = v27;
        v41.i64[0] = a9;
        v29 = a5;
        v30 = a7;
        v31 = v13;
      }
    }

    else
    {
      v40 = v27;
      v41.i64[0] = a9;
      v29 = a5;
      v30 = a7;
      v31 = v13;
    }
  }

  else
  {
    v40 = v27;
    v41.i64[0] = a9;
    v29 = a5;
    v30 = a7;
    v31 = v13;
  }

  fig_log_get_emitter();
  v33 = FigSignalErrorAtGM();
  v13 = v31;
  a7 = v30;
  a5 = v29;
  v24 = v42;
  v23 = v41.i64[0];
  v27 = v40;
  if (v33)
  {
    v20 = v33;
    goto LABEL_21;
  }

LABEL_16:
  *v19 = v15;
  v34 = v44;
  *(v19 + 4) = v45;
  *(v19 + 20) = v27;
  *(v19 + 36) = v34;
  *(v19 + 5) = v43;
  *(v19 + 6) = v27;
  *(v19 + 7) = v24;
  *(v19 + 7) = v13;
  *(v19 + 8) = a4;
  *(v19 + 9) = a5;
  *(v19 + 16) = a7;
  *(v19 + 17) = a8;
  *(v19 + 18) = v23;
  *(v19 + 19) = a1;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v15, global_queue, v19, vt_Copy_b64a_rgb_444vf_GCD);
  if (!v15)
  {
    return 0;
  }

  v36 = (v19 + 160);
  v37 = v15;
  while (1)
  {
    v38 = *v36++;
    v20 = v38;
    if (v38)
    {
      break;
    }

    if (!--v37)
    {
      v20 = 0;
      break;
    }
  }

LABEL_21:
  if (v15 == 255)
  {
    goto LABEL_22;
  }

  return v20;
}

unsigned __int8 *vt_Copy_b64a_rgb_444vf_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, float a5, float a6, float a7, float a8)
{
  v8 = *result;
  v9 = *(result + 13);
  v10 = v9 * a2 / v8;
  v11 = (v9 + v9 * a2) / v8 - v10;
  if (v11 >= 1)
  {
    v12 = 0;
    v13 = *(result + 24);
    v14 = *(result + 19);
    v15 = **(result + 8);
    v16 = *(result + 16);
    v17 = *(result + 17);
    v18 = *v17;
    v19 = v17[1];
    v20 = v17[2];
    *&v21 = *(v14 + 136);
    v22 = *&v21 / *(v14 + 128);
    LOWORD(v21) = *(v14 + 144);
    v23 = v21;
    LOWORD(a5) = *(v14 + 146);
    v24 = LODWORD(a5);
    LOWORD(a6) = *(v14 + 148);
    v25 = LODWORD(a6);
    LOWORD(a7) = *(v14 + 150);
    v26 = LODWORD(a7);
    LOWORD(a8) = *(v14 + 152);
    v27 = LODWORD(a8);
    v28 = *(v14 + 36);
    v29 = *(v14 + 40);
    v30 = *(v14 + 44);
    v31 = *(v14 + 48);
    v32 = *(v14 + 52);
    v33 = *(v14 + 56);
    v34 = *(v14 + 60);
    v35 = *(v14 + 64);
    v36 = *(v14 + 68);
    v37 = *(result + 14);
    v38 = v10 + *(result + 15);
    v39 = *(result + 28) * a2 / v8 + *(result + 44);
    v40 = v16[2];
    if (v40)
    {
      v41 = (v40 + v20 * v38 + v37);
    }

    else
    {
      v41 = 0;
    }

    v42 = *v16;
    v43 = *(*(result + 16) + 8);
    v44 = v43 == 0;
    v45 = (v43 + v19 * v38 + v37);
    if (v44)
    {
      v45 = 0;
    }

    v46 = (v42 + v18 * v38 + v37);
    v47 = **(result + 7) + v39 * v15 + 8 * *(result + 36);
    do
    {
      if (v13 >= 1)
      {
        v48 = v13;
        v49 = v47;
        v50 = v41;
        v51 = v45;
        v52 = v46;
        do
        {
          v53 = v22 * (bswap32(v49[1]) >> 16);
          v54 = v22 * (bswap32(v49[2]) >> 16);
          v55 = v22 * (bswap32(v49[3]) >> 16);
          v56 = (((v29 * v54) + (v28 * v53)) + (v30 * v55)) + v23;
          v57 = v25;
          if (v56 <= v25)
          {
            v57 = (((v29 * v54) + (v28 * v53)) + (v30 * v55)) + v23;
            if (v56 < v23)
            {
              v57 = v23;
            }
          }

          v58 = *v49;
          *v52++ = llroundf(v57);
          if (v51)
          {
            v59 = ((v24 + (v53 * v31)) + (v54 * v32)) + (v55 * v33);
            v60 = v27;
            if (v59 <= v27)
            {
              v60 = ((v24 + (v53 * v31)) + (v54 * v32)) + (v55 * v33);
              if (v59 < v26)
              {
                v60 = v26;
              }
            }

            v61 = ((v24 + (v53 * v34)) + (v54 * v35)) + (v55 * v36);
            *v51 = llroundf(v60);
            v62 = v27;
            if (v61 <= v27)
            {
              v62 = v61;
              if (v61 < v26)
              {
                v62 = v26;
              }
            }

            v51[1] = llroundf(v62);
            v51 += 2;
          }

          if (v50)
          {
            *v50++ = llroundf((bswap32(v58) >> 16) * 0.0038911);
          }

          v49 += 4;
          --v48;
        }

        while (v48);
      }

      v47 += v15;
      v46 += v18;
      v45 += v19;
      v41 += v20;
      ++v12;
    }

    while (v12 != v11);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_b64a_TRC_Tone_Mat_TRC_xf444(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v13 = a3;
  v48 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v46 = a2[2];
  v47 = v16;
  v18 = *a6;
  v42 = a6[1];
  v43 = v17;
  v44 = a6[2];
  v45 = v18;
  if (v15 == 255)
  {
    v19 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v19)
    {
      v20 = 0;
LABEL_22:
      free(v19);
      return v20;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v19 = &v42.i8[-v21];
    bzero(&v42 - v21, v22);
  }

  v23 = a9;
  v24 = v44;
  v25 = vbslq_s8(vcgtq_s64(vaddq_s64(v46, v43), v47), vsubq_s64(v47, v46), v43);
  v26 = vbslq_s8(vcgtq_s64(vaddq_s64(v44, v42), v45), vsubq_s64(v45, v44), v42);
  v27 = vbslq_s8(vcgtq_s64(v26, v25), v25, v26);
  v28.i64[0] = v27.i64[0];
  v28.i64[1] = -1;
  v29 = vaddq_s64(v46, v28);
  if ((*a4 * (v29.i64[1] + v27.i64[1]) + 8 * v29.i64[0]) <= *a5)
  {
    v33 = vaddq_s64(v44, v28);
    v34 = v33.i64[1] + v27.i64[1];
    if ((*a8 * (v33.i64[1] + v27.i64[1]) + 2 * v33.i64[0]) <= *a9)
    {
      if (*(a7 + 8) && (a8[1] * v34 + 4 * v33.i64[0]) > a9[1])
      {
        v42 = v27;
        v43.i64[0] = a9;
        v30 = a5;
        v31 = a7;
        v32 = v13;
      }

      else
      {
        if (!*(a7 + 16) || (2 * v33.i64[0] + a8[2] * v34) <= a9[2])
        {
          goto LABEL_16;
        }

        v42 = v27;
        v43.i64[0] = a9;
        v30 = a5;
        v31 = a7;
        v32 = v13;
      }
    }

    else
    {
      v42 = v27;
      v43.i64[0] = a9;
      v30 = a5;
      v31 = a7;
      v32 = v13;
    }
  }

  else
  {
    v42 = v27;
    v43.i64[0] = a9;
    v30 = a5;
    v31 = a7;
    v32 = v13;
  }

  fig_log_get_emitter();
  v35 = FigSignalErrorAtGM();
  v13 = v32;
  a7 = v31;
  a5 = v30;
  v24 = v44;
  v23 = v43.i64[0];
  v27 = v42;
  if (v35)
  {
    v20 = v35;
    goto LABEL_21;
  }

LABEL_16:
  *v19 = v15;
  v36 = v46;
  *(v19 + 4) = v47;
  *(v19 + 20) = v27;
  *(v19 + 36) = v36;
  *(v19 + 5) = v45;
  *(v19 + 6) = v27;
  *(v19 + 7) = v24;
  *(v19 + 7) = v13;
  *(v19 + 8) = a4;
  *(v19 + 9) = a5;
  *(v19 + 16) = a7;
  *(v19 + 17) = a8;
  *(v19 + 18) = v23;
  *(v19 + 19) = a1;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v15, global_queue, v19, vt_Copy_b64a_TRC_Tone_Mat_TRC_xf444_GCD);
  if (!v15)
  {
    return 0;
  }

  v38 = (v19 + 160);
  v39 = v15;
  while (1)
  {
    v40 = *v38++;
    v20 = v40;
    if (v40)
    {
      break;
    }

    if (!--v39)
    {
      v20 = 0;
      break;
    }
  }

LABEL_21:
  if (v15 == 255)
  {
    goto LABEL_22;
  }

  return v20;
}

unsigned __int8 *vt_Copy_b64a_TRC_Tone_Mat_TRC_xf444_GCD(unsigned __int8 *result, uint64_t a2)
{
  v2 = *result;
  v3 = *(result + 13);
  v4 = v3 * a2 / v2;
  v5 = (v3 + v3 * a2) / v2 - v4;
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = *(result + 24);
    v8 = *(result + 19);
    v9 = **(result + 8);
    v10 = *(result + 16);
    v11 = *(result + 17);
    v12 = *v11;
    v13 = v11[1];
    v14 = v11[2];
    *&v15 = *(v8 + 128);
    v16 = 8191.0 / *&v15;
    LOWORD(v15) = *(v8 + 144);
    v17 = v15;
    LOWORD(v15) = *(v8 + 146);
    v18 = v15;
    LOWORD(v15) = *(v8 + 148);
    v19 = v15;
    LOWORD(v15) = *(v8 + 150);
    v20 = v15;
    LOWORD(v15) = *(v8 + 152);
    v21 = v15;
    v22 = *(v8 + 36);
    v23 = *(v8 + 40);
    v24 = *(v8 + 44);
    v92 = *(v8 + 52);
    v93 = *(v8 + 48);
    v25 = *(v8 + 60);
    v91 = *(v8 + 56);
    v26 = *(v8 + 64);
    v27 = *(v8 + 68);
    v28 = *(v8 + 72);
    v29 = *(v8 + 76);
    v30 = *(v8 + 80);
    v31 = *(v8 + 84);
    v32 = *(v8 + 88);
    v33 = *(v8 + 92);
    v34 = *(v8 + 96);
    v35 = *(v8 + 100);
    v36 = *(v8 + 104);
    v37 = *(v8 + 108);
    v38 = v8 + 164;
    v39 = v8 + 16548;
    v40 = v8 + 32932;
    v41 = *(v8 + 112);
    v42 = *(v8 + 116);
    v43 = *(v8 + 120);
    v44 = *(result + 14);
    v45 = v4 + *(result + 15);
    v46 = *(result + 28) * a2 / v2 + *(result + 44);
    v47 = *(v8 + 132);
    if (v47 >= 0x11)
    {
      v48 = 0;
    }

    else
    {
      v48 = 16 - v47;
    }

    v49 = v10[2];
    if (v49)
    {
      v50 = v49 + v14 * v45 + 2 * v44;
    }

    else
    {
      v50 = 0;
    }

    v51 = v10[1];
    _ZF = v51 == 0;
    v53 = v51 + v13 * v45 + 2 * v44;
    if (_ZF)
    {
      v53 = 0;
    }

    v54 = *v10 + v12 * v45 + 2 * v44;
    v55 = **(result + 7) + v46 * v9 + 8 * *(result + 36);
    v56 = v48;
    do
    {
      if (v7 >= 1)
      {
        v57 = v7;
        v58 = v50;
        v59 = v53;
        v60 = v54;
        v61 = v55;
        do
        {
          _H0 = *(v38 + 2 * llroundf(fminf(fmaxf(v16 * (bswap32(v61[1]) >> 16), 0.0), 8191.0)));
          __asm { FCVT            S18, H0 }

          _H0 = *(v38 + 2 * llroundf(fminf(fmaxf(v16 * (bswap32(v61[2]) >> 16), 0.0), 8191.0)));
          __asm { FCVT            S14, H0 }

          _H0 = *(v38 + 2 * llroundf(fminf(fmaxf(v16 * (bswap32(v61[3]) >> 16), 0.0), 8191.0)));
          __asm { FCVT            S15, H0 }

          v71 = (((v41 * _S14) + (v37 * _S18)) + (v42 * _S15)) + (v43 * fmaxf(_S18, fmaxf(_S14, _S15)));
          v72 = 8191.0;
          if (v71 <= 8191.0)
          {
            v72 = v71;
            if (v71 < 0.0)
            {
              v72 = 0.0;
            }
          }

          _H0 = *(v39 + 2 * llroundf(v72));
          __asm { FCVT            S0, H0 }

          _S6 = _S18 * _S0;
          v76 = _S14 * _S0;
          v77 = _S15 * _S0;
          v78 = ((v29 * v76) + (_S6 * v28)) + (v77 * v30);
          v79 = ((v32 * v76) + (_S6 * v31)) + (v77 * v33);
          _S0 = ((v35 * v76) + (_S6 * v34)) + (v77 * v36);
          LOWORD(_S6) = *(v40 + 2 * llroundf(fminf(fmaxf(v78, 0.0), 8191.0)));
          __asm { FCVT            S14, H6 }

          LOWORD(_S6) = *(v40 + 2 * llroundf(fminf(fmaxf(v79, 0.0), 8191.0)));
          __asm { FCVT            S15, H6 }

          LOWORD(_S0) = *(v40 + 2 * llroundf(fminf(fmaxf(_S0, 0.0), 8191.0)));
          __asm { FCVT            S18, H0 }

          v84 = (((v23 * _S15) + (v22 * _S14)) + (v24 * _S18)) + v17;
          v85 = v19;
          if (v84 <= v19)
          {
            v85 = (((v23 * _S15) + (v22 * _S14)) + (v24 * _S18)) + v17;
            if (v84 < v17)
            {
              v85 = v17;
            }
          }

          v86 = *v61;
          *v60++ = llroundf(v85) << v56;
          if (v59)
          {
            v87 = ((v18 + (_S14 * v93)) + (_S15 * v92)) + (_S18 * v91);
            v88 = v21;
            if (v87 <= v21)
            {
              v88 = ((v18 + (_S14 * v93)) + (_S15 * v92)) + (_S18 * v91);
              if (v87 < v20)
              {
                v88 = v20;
              }
            }

            v89 = ((v18 + (_S14 * v25)) + (_S15 * v26)) + (_S18 * v27);
            *v59 = llroundf(v88) << v56;
            v90 = v21;
            if (v89 <= v21)
            {
              v90 = v89;
              if (v89 < v20)
              {
                v90 = v20;
              }
            }

            v59[1] = llroundf(v90) << v56;
            v59 += 2;
          }

          if (v58)
          {
            *v58++ = bswap32(v86) >> 16;
          }

          v61 += 4;
          --v57;
        }

        while (v57);
      }

      v55 += v9;
      v54 += v12;
      v53 += v13;
      v50 += v14;
      ++v6;
    }

    while (v6 != v5);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_b64a_TRC_Mat_TRC_xf444(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v13 = a3;
  v48 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v46 = a2[2];
  v47 = v16;
  v18 = *a6;
  v42 = a6[1];
  v43 = v17;
  v44 = a6[2];
  v45 = v18;
  if (v15 == 255)
  {
    v19 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v19)
    {
      v20 = 0;
LABEL_22:
      free(v19);
      return v20;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v19 = &v42.i8[-v21];
    bzero(&v42 - v21, v22);
  }

  v23 = a9;
  v24 = v44;
  v25 = vbslq_s8(vcgtq_s64(vaddq_s64(v46, v43), v47), vsubq_s64(v47, v46), v43);
  v26 = vbslq_s8(vcgtq_s64(vaddq_s64(v44, v42), v45), vsubq_s64(v45, v44), v42);
  v27 = vbslq_s8(vcgtq_s64(v26, v25), v25, v26);
  v28.i64[0] = v27.i64[0];
  v28.i64[1] = -1;
  v29 = vaddq_s64(v46, v28);
  if ((*a4 * (v29.i64[1] + v27.i64[1]) + 8 * v29.i64[0]) <= *a5)
  {
    v33 = vaddq_s64(v44, v28);
    v34 = v33.i64[1] + v27.i64[1];
    if ((*a8 * (v33.i64[1] + v27.i64[1]) + 2 * v33.i64[0]) <= *a9)
    {
      if (*(a7 + 8) && (a8[1] * v34 + 4 * v33.i64[0]) > a9[1])
      {
        v42 = v27;
        v43.i64[0] = a9;
        v30 = a5;
        v31 = a7;
        v32 = v13;
      }

      else
      {
        if (!*(a7 + 16) || (2 * v33.i64[0] + a8[2] * v34) <= a9[2])
        {
          goto LABEL_16;
        }

        v42 = v27;
        v43.i64[0] = a9;
        v30 = a5;
        v31 = a7;
        v32 = v13;
      }
    }

    else
    {
      v42 = v27;
      v43.i64[0] = a9;
      v30 = a5;
      v31 = a7;
      v32 = v13;
    }
  }

  else
  {
    v42 = v27;
    v43.i64[0] = a9;
    v30 = a5;
    v31 = a7;
    v32 = v13;
  }

  fig_log_get_emitter();
  v35 = FigSignalErrorAtGM();
  v13 = v32;
  a7 = v31;
  a5 = v30;
  v24 = v44;
  v23 = v43.i64[0];
  v27 = v42;
  if (v35)
  {
    v20 = v35;
    goto LABEL_21;
  }

LABEL_16:
  *v19 = v15;
  v36 = v46;
  *(v19 + 4) = v47;
  *(v19 + 20) = v27;
  *(v19 + 36) = v36;
  *(v19 + 5) = v45;
  *(v19 + 6) = v27;
  *(v19 + 7) = v24;
  *(v19 + 7) = v13;
  *(v19 + 8) = a4;
  *(v19 + 9) = a5;
  *(v19 + 16) = a7;
  *(v19 + 17) = a8;
  *(v19 + 18) = v23;
  *(v19 + 19) = a1;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v15, global_queue, v19, vt_Copy_b64a_TRC_Mat_TRC_xf444_GCD);
  if (!v15)
  {
    return 0;
  }

  v38 = (v19 + 160);
  v39 = v15;
  while (1)
  {
    v40 = *v38++;
    v20 = v40;
    if (v40)
    {
      break;
    }

    if (!--v39)
    {
      v20 = 0;
      break;
    }
  }

LABEL_21:
  if (v15 == 255)
  {
    goto LABEL_22;
  }

  return v20;
}

unsigned __int8 *vt_Copy_b64a_TRC_Mat_TRC_xf444_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, float a5, float a6, float a7, float a8, float a9)
{
  v9 = *result;
  v10 = *(result + 13);
  v11 = v10 * a2 / v9;
  v12 = (v10 + v10 * a2) / v9 - v11;
  if (v12 >= 1)
  {
    v13 = 0;
    v14 = *(result + 24);
    v15 = *(result + 19);
    v16 = **(result + 8);
    v17 = *(result + 16);
    v18 = *(result + 17);
    v19 = *v18;
    v20 = v18[1];
    v21 = v18[2];
    v22 = 8191.0 / *(v15 + 128);
    LOWORD(a5) = *(v15 + 144);
    v23 = LODWORD(a5);
    LOWORD(a6) = *(v15 + 146);
    v24 = LODWORD(a6);
    LOWORD(a7) = *(v15 + 148);
    v25 = LODWORD(a7);
    LOWORD(a8) = *(v15 + 150);
    v26 = LODWORD(a8);
    LOWORD(a9) = *(v15 + 152);
    v27 = LODWORD(a9);
    v28 = *(v15 + 36);
    v29 = *(v15 + 40);
    v30 = *(v15 + 44);
    v31 = *(v15 + 48);
    v32 = *(v15 + 52);
    v33 = *(v15 + 56);
    v34 = *(v15 + 60);
    v35 = *(v15 + 64);
    v36 = *(v15 + 68);
    v37 = *(v15 + 72);
    v38 = *(v15 + 76);
    v39 = *(v15 + 80);
    v40 = *(v15 + 84);
    v41 = *(v15 + 88);
    v42 = *(v15 + 92);
    v43 = *(v15 + 96);
    v45 = *(v15 + 100);
    v44 = *(v15 + 104);
    v46 = v15 + 164;
    v47 = v15 + 16548;
    v48 = *(result + 14);
    v49 = v11 + *(result + 15);
    v50 = *(result + 28) * a2 / v9 + *(result + 44);
    v51 = *(v15 + 132);
    if (v51 >= 0x11)
    {
      v52 = 0;
    }

    else
    {
      v52 = 16 - v51;
    }

    v53 = v17[2];
    if (v53)
    {
      v54 = v53 + v21 * v49 + 2 * v48;
    }

    else
    {
      v54 = 0;
    }

    v55 = v17[1];
    _ZF = v55 == 0;
    v57 = v55 + v20 * v49 + 2 * v48;
    if (_ZF)
    {
      v57 = 0;
    }

    v58 = *v17 + v19 * v49 + 2 * v48;
    v59 = **(result + 7) + v50 * v16 + 8 * *(result + 36);
    v60 = v52;
    do
    {
      if (v14 >= 1)
      {
        v61 = v14;
        v62 = v59;
        v63 = v54;
        v64 = v57;
        v65 = v58;
        do
        {
          _H12 = *(v46 + 2 * llroundf(fminf(fmaxf(v22 * (bswap32(v62[1]) >> 16), 0.0), 8191.0)));
          __asm { FCVT            S12, H12 }

          _H11 = *(v46 + 2 * llroundf(fminf(fmaxf(v22 * (bswap32(v62[2]) >> 16), 0.0), 8191.0)));
          __asm { FCVT            S11, H11 }

          _H10 = *(v46 + 2 * llroundf(fminf(fmaxf(v22 * (bswap32(v62[3]) >> 16), 0.0), 8191.0)));
          __asm { FCVT            S10, H10 }

          v75 = ((v38 * _S11) + (_S12 * v37)) + (_S10 * v39);
          v76 = ((v41 * _S11) + (_S12 * v40)) + (_S10 * v42);
          _S12 = ((v45 * _S11) + (_S12 * v43)) + (_S10 * v44);
          LOWORD(_S10) = *(v47 + 2 * llroundf(fminf(fmaxf(v75, 0.0), 8191.0)));
          __asm { FCVT            S10, H10 }

          LOWORD(_S11) = *(v47 + 2 * llroundf(fminf(fmaxf(v76, 0.0), 8191.0)));
          __asm { FCVT            S11, H11 }

          LOWORD(_S12) = *(v47 + 2 * llroundf(fminf(fmaxf(_S12, 0.0), 8191.0)));
          __asm { FCVT            S12, H12 }

          v81 = (((v29 * _S11) + (v28 * _S10)) + (v30 * _S12)) + v23;
          v82 = v25;
          if (v81 <= v25)
          {
            v82 = (((v29 * _S11) + (v28 * _S10)) + (v30 * _S12)) + v23;
            if (v81 < v23)
            {
              v82 = v23;
            }
          }

          v83 = *v62;
          *v65++ = llroundf(v82) << v60;
          if (v64)
          {
            v84 = ((v24 + (_S10 * v31)) + (_S11 * v32)) + (_S12 * v33);
            v85 = v27;
            if (v84 <= v27)
            {
              v85 = ((v24 + (_S10 * v31)) + (_S11 * v32)) + (_S12 * v33);
              if (v84 < v26)
              {
                v85 = v26;
              }
            }

            v86 = ((v24 + (_S10 * v34)) + (_S11 * v35)) + (_S12 * v36);
            *v64 = llroundf(v85) << v60;
            v87 = v27;
            if (v86 <= v27)
            {
              v87 = v86;
              if (v86 < v26)
              {
                v87 = v26;
              }
            }

            v64[1] = llroundf(v87) << v60;
            v64 += 2;
          }

          if (v63)
          {
            *v63++ = bswap32(v83) >> 16;
          }

          v62 += 4;
          --v61;
        }

        while (v61);
      }

      v59 += v16;
      v58 += v19;
      v57 += v20;
      v54 += v21;
      ++v13;
    }

    while (v13 != v12);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_b64a_rgb_xf444(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v13 = a3;
  v48 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v46 = a2[2];
  v47 = v16;
  v18 = *a6;
  v42 = a6[1];
  v43 = v17;
  v44 = a6[2];
  v45 = v18;
  if (v15 == 255)
  {
    v19 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v19)
    {
      v20 = 0;
LABEL_22:
      free(v19);
      return v20;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v19 = &v42.i8[-v21];
    bzero(&v42 - v21, v22);
  }

  v23 = a9;
  v24 = v44;
  v25 = vbslq_s8(vcgtq_s64(vaddq_s64(v46, v43), v47), vsubq_s64(v47, v46), v43);
  v26 = vbslq_s8(vcgtq_s64(vaddq_s64(v44, v42), v45), vsubq_s64(v45, v44), v42);
  v27 = vbslq_s8(vcgtq_s64(v26, v25), v25, v26);
  v28.i64[0] = v27.i64[0];
  v28.i64[1] = -1;
  v29 = vaddq_s64(v46, v28);
  if ((*a4 * (v29.i64[1] + v27.i64[1]) + 8 * v29.i64[0]) <= *a5)
  {
    v33 = vaddq_s64(v44, v28);
    v34 = v33.i64[1] + v27.i64[1];
    if ((*a8 * (v33.i64[1] + v27.i64[1]) + 2 * v33.i64[0]) <= *a9)
    {
      if (*(a7 + 8) && (a8[1] * v34 + 4 * v33.i64[0]) > a9[1])
      {
        v42 = v27;
        v43.i64[0] = a9;
        v30 = a5;
        v31 = a7;
        v32 = v13;
      }

      else
      {
        if (!*(a7 + 16) || (2 * v33.i64[0] + a8[2] * v34) <= a9[2])
        {
          goto LABEL_16;
        }

        v42 = v27;
        v43.i64[0] = a9;
        v30 = a5;
        v31 = a7;
        v32 = v13;
      }
    }

    else
    {
      v42 = v27;
      v43.i64[0] = a9;
      v30 = a5;
      v31 = a7;
      v32 = v13;
    }
  }

  else
  {
    v42 = v27;
    v43.i64[0] = a9;
    v30 = a5;
    v31 = a7;
    v32 = v13;
  }

  fig_log_get_emitter();
  v35 = FigSignalErrorAtGM();
  v13 = v32;
  a7 = v31;
  a5 = v30;
  v24 = v44;
  v23 = v43.i64[0];
  v27 = v42;
  if (v35)
  {
    v20 = v35;
    goto LABEL_21;
  }

LABEL_16:
  *v19 = v15;
  v36 = v46;
  *(v19 + 4) = v47;
  *(v19 + 20) = v27;
  *(v19 + 36) = v36;
  *(v19 + 5) = v45;
  *(v19 + 6) = v27;
  *(v19 + 7) = v24;
  *(v19 + 7) = v13;
  *(v19 + 8) = a4;
  *(v19 + 9) = a5;
  *(v19 + 16) = a7;
  *(v19 + 17) = a8;
  *(v19 + 18) = v23;
  *(v19 + 19) = a1;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v15, global_queue, v19, vt_Copy_b64a_rgb_xf444_GCD);
  if (!v15)
  {
    return 0;
  }

  v38 = (v19 + 160);
  v39 = v15;
  while (1)
  {
    v40 = *v38++;
    v20 = v40;
    if (v40)
    {
      break;
    }

    if (!--v39)
    {
      v20 = 0;
      break;
    }
  }

LABEL_21:
  if (v15 == 255)
  {
    goto LABEL_22;
  }

  return v20;
}

unsigned __int8 *vt_Copy_b64a_rgb_xf444_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, float a5, float a6, float a7, float a8)
{
  v8 = *result;
  v9 = *(result + 13);
  v10 = v9 * a2 / v8;
  v11 = (v9 + v9 * a2) / v8 - v10;
  if (v11 >= 1)
  {
    v12 = 0;
    v13 = *(result + 24);
    v14 = *(result + 19);
    v15 = **(result + 8);
    v16 = *(result + 16);
    v17 = *(result + 17);
    v18 = *v17;
    v19 = v17[1];
    v20 = v17[2];
    *&v21 = *(v14 + 136);
    v22 = *&v21 / *(v14 + 128);
    LOWORD(v21) = *(v14 + 144);
    v23 = v21;
    LOWORD(a5) = *(v14 + 146);
    v24 = LODWORD(a5);
    LOWORD(a6) = *(v14 + 148);
    v25 = LODWORD(a6);
    LOWORD(a7) = *(v14 + 150);
    v26 = LODWORD(a7);
    LOWORD(a8) = *(v14 + 152);
    v27 = LODWORD(a8);
    v28 = *(v14 + 36);
    v29 = *(v14 + 40);
    v30 = *(v14 + 44);
    v31 = *(v14 + 48);
    v32 = *(v14 + 52);
    v33 = *(v14 + 56);
    v34 = *(v14 + 60);
    v35 = *(v14 + 64);
    v36 = *(v14 + 68);
    v37 = *(result + 14);
    v38 = v10 + *(result + 15);
    v39 = *(result + 28) * a2 / v8 + *(result + 44);
    v40 = *(v14 + 132);
    if (v40 >= 0x11)
    {
      v41 = 0;
    }

    else
    {
      v41 = 16 - v40;
    }

    v42 = v16[2];
    if (v42)
    {
      v43 = v42 + v20 * v38 + 2 * v37;
    }

    else
    {
      v43 = 0;
    }

    v44 = v16[1];
    v45 = v44 == 0;
    v46 = v44 + v19 * v38 + 2 * v37;
    if (v45)
    {
      v46 = 0;
    }

    v47 = *v16 + v18 * v38 + 2 * v37;
    v48 = **(result + 7) + v39 * v15 + 8 * *(result + 36);
    v49 = v41;
    do
    {
      if (v13 >= 1)
      {
        v50 = v13;
        v51 = v48;
        v52 = v43;
        v53 = v46;
        v54 = v47;
        do
        {
          v55 = v22 * (bswap32(v51[1]) >> 16);
          v56 = v22 * (bswap32(v51[2]) >> 16);
          v57 = v22 * (bswap32(v51[3]) >> 16);
          v58 = (((v29 * v56) + (v28 * v55)) + (v30 * v57)) + v23;
          v59 = v25;
          if (v58 <= v25)
          {
            v59 = (((v29 * v56) + (v28 * v55)) + (v30 * v57)) + v23;
            if (v58 < v23)
            {
              v59 = v23;
            }
          }

          v60 = *v51;
          *v54++ = llroundf(v59) << v49;
          if (v53)
          {
            v61 = ((v24 + (v55 * v31)) + (v56 * v32)) + (v57 * v33);
            v62 = v27;
            if (v61 <= v27)
            {
              v62 = ((v24 + (v55 * v31)) + (v56 * v32)) + (v57 * v33);
              if (v61 < v26)
              {
                v62 = v26;
              }
            }

            v63 = ((v24 + (v55 * v34)) + (v56 * v35)) + (v57 * v36);
            *v53 = llroundf(v62) << v49;
            v64 = v27;
            if (v63 <= v27)
            {
              v64 = v63;
              if (v63 < v26)
              {
                v64 = v26;
              }
            }

            v53[1] = llroundf(v64) << v49;
            v53 += 2;
          }

          if (v52)
          {
            *v52++ = bswap32(v60) >> 16;
          }

          v51 += 4;
          --v50;
        }

        while (v50);
      }

      v48 += v15;
      v47 += v18;
      v46 += v19;
      v43 += v20;
      ++v12;
    }

    while (v12 != v11);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_b64a_TRC_Tone_Mat_TRC_BGRA(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v44 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v42 = a2[2];
  v43 = v16;
  v18 = *a6;
  v38 = a6[1];
  v39 = v17;
  v40 = a6[2];
  v41 = v18;
  if (v15 == 255)
  {
    v19 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v19)
    {
      v20 = 0;
LABEL_14:
      free(v19);
      return v20;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v19 = &v38.i8[-v21];
    bzero(&v38 - v21, v22);
  }

  v23 = a9;
  v24 = v40;
  v25 = vbslq_s8(vcgtq_s64(vaddq_s64(v42, v39), v43), vsubq_s64(v43, v42), v39);
  v26 = vbslq_s8(vcgtq_s64(vaddq_s64(v40, v38), v41), vsubq_s64(v41, v40), v38);
  v27 = vbslq_s8(vcgtq_s64(v26, v25), v25, v26);
  v28.i64[0] = v27.i64[0];
  v28.i64[1] = -1;
  v29 = vaddq_s64(v42, v28);
  if (((*a4 * (v29.i64[1] + v27.i64[1]) + 8 * v29.i64[0]) > *a5 || (v30 = vaddq_s64(v40, v28), (*a8 * (v30.i64[1] + v27.i64[1]) + 4 * v30.i64[0]) > *a9)) && (v38 = v27, v39.i64[0] = a9, fig_log_get_emitter(), v31 = FigSignalErrorAtGM(), v24 = v40, v23 = v39.i64[0], v27 = v38, v31))
  {
    v20 = v31;
  }

  else
  {
    *v19 = v15;
    v32 = v42;
    *(v19 + 4) = v43;
    *(v19 + 20) = v27;
    *(v19 + 36) = v32;
    *(v19 + 5) = v41;
    *(v19 + 6) = v27;
    *(v19 + 7) = v24;
    *(v19 + 7) = a3;
    *(v19 + 8) = a4;
    *(v19 + 9) = a5;
    *(v19 + 16) = a7;
    *(v19 + 17) = a8;
    *(v19 + 18) = v23;
    *(v19 + 19) = a1;
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_b64a_TRC_Tone_Mat_TRC_BGRA_GCD);
    if (!v15)
    {
      return 0;
    }

    v34 = (v19 + 160);
    v35 = v15;
    while (1)
    {
      v36 = *v34++;
      v20 = v36;
      if (v36)
      {
        break;
      }

      if (!--v35)
      {
        v20 = 0;
        break;
      }
    }
  }

  if (v15 == 255)
  {
    goto LABEL_14;
  }

  return v20;
}

unsigned __int8 *vt_Copy_b64a_TRC_Tone_Mat_TRC_BGRA_GCD(unsigned __int8 *result, uint64_t a2)
{
  v2 = *result;
  v3 = *(result + 13);
  v4 = v3 * a2 / v2;
  v5 = (v3 + v3 * a2) / v2 - v4;
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = *(result + 24);
    v8 = *(result + 19);
    v9 = **(result + 8);
    v10 = **(result + 17);
    v11 = 8191.0 / *(v8 + 128);
    v12 = *(v8 + 72);
    v13 = *(v8 + 76);
    v14 = *(v8 + 80);
    v15 = *(v8 + 84);
    v16 = *(v8 + 88);
    v17 = *(v8 + 92);
    v18 = *(v8 + 96);
    v19 = *(v8 + 100);
    v20 = v8 + 164;
    v21 = v8 + 16548;
    v22 = v8 + 32932;
    v23 = *(v8 + 104);
    v24 = *(v8 + 108);
    v25 = *(v8 + 112);
    v26 = *(v8 + 116);
    v27 = *(v8 + 120);
    v28 = v4 + *(result + 15);
    v29 = *(result + 28) * a2 / v2 + *(result + 44);
    v30 = *(v8 + 161);
    v31 = *(v8 + 160);
    v32 = *(v8 + 159);
    v33 = *(v8 + 158);
    v34 = **(result + 16) + v10 * v28 + 4 * *(result + 14);
    v35 = **(result + 7) + v29 * v9 + 8 * *(result + 36);
    do
    {
      if (v7 >= 1)
      {
        v36 = v7;
        v37 = v35;
        v38 = v34;
        do
        {
          _H26 = *(v20 + 2 * llroundf(fminf(fmaxf(v11 * (bswap32(v37[1]) >> 16), 0.0), 8191.0)));
          __asm { FCVT            S26, H26 }

          _H27 = *(v20 + 2 * llroundf(fminf(fmaxf(v11 * (bswap32(v37[2]) >> 16), 0.0), 8191.0)));
          __asm { FCVT            S27, H27 }

          _H28 = *(v20 + 2 * llroundf(fminf(fmaxf(v11 * (bswap32(v37[3]) >> 16), 0.0), 8191.0)));
          __asm { FCVT            S29, H28 }

          v49 = (((v25 * _S27) + (v24 * _S26)) + (v26 * _S29)) + (v27 * fmaxf(_S26, fmaxf(_S27, _S29)));
          v50 = 8191.0;
          if (v49 <= 8191.0)
          {
            v50 = v49;
            if (v49 < 0.0)
            {
              v50 = 0.0;
            }
          }

          _H28 = *(v21 + 2 * llroundf(v50));
          __asm { FCVT            S30, H28 }

          v53 = _S26 * _S30;
          v54 = _S27 * _S30;
          v55 = _S29 * _S30;
          if (*(v22 + 2 * llroundf(fminf(fmaxf(((v13 * v54) + (v53 * v12)) + ((_S29 * _S30) * v14), 0.0), 8191.0))) <= COERCE_SHORT_FLOAT(23544))
          {
            __asm { FCMP            H29, #0 }

            if (_NF)
            {
              _S29 = 0.0;
            }

            else
            {
              __asm { FCVT            S29, H29 }
            }
          }

          else
          {
            _S29 = 255.0;
          }

          v58 = ((v16 * v54) + (v53 * v15)) + (v55 * v17);
          v59 = ((v19 * v54) + (v53 * v18)) + (v55 * v23);
          v60 = *(v22 + 2 * llroundf(fminf(fmaxf(v58, 0.0), 8191.0)));
          v61 = *(v22 + 2 * llroundf(fminf(fmaxf(v59, 0.0), 8191.0)));
          v62 = *v37;
          *(v38 + v33) = llroundf(_S29);
          if (v60 <= COERCE_SHORT_FLOAT(23544))
          {
            __asm { FCMP            H27, #0 }

            if (_NF)
            {
              _S27 = 0.0;
            }

            else
            {
              __asm { FCVT            S27, H27 }
            }
          }

          else
          {
            _S27 = 255.0;
          }

          *(v38 + v32) = llroundf(_S27);
          if (v61 <= COERCE_SHORT_FLOAT(23544))
          {
            __asm { FCMP            H26, #0 }

            if (_NF)
            {
              _S26 = 0.0;
            }

            else
            {
              __asm { FCVT            S26, H26 }
            }
          }

          else
          {
            _S26 = 255.0;
          }

          v37 += 4;
          *(v38 + v31) = llroundf(_S26);
          *(v38 + v30) = llroundf((bswap32(v62) >> 16) * 0.0038911);
          v38 += 4;
          --v36;
        }

        while (v36);
      }

      v35 += v9;
      v34 += v10;
      ++v6;
    }

    while (v6 != v5);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_b64a_TRC_Mat_TRC_BGRA(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v44 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v42 = a2[2];
  v43 = v16;
  v18 = *a6;
  v38 = a6[1];
  v39 = v17;
  v40 = a6[2];
  v41 = v18;
  if (v15 == 255)
  {
    v19 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v19)
    {
      v20 = 0;
LABEL_14:
      free(v19);
      return v20;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v19 = &v38.i8[-v21];
    bzero(&v38 - v21, v22);
  }

  v23 = a9;
  v24 = v40;
  v25 = vbslq_s8(vcgtq_s64(vaddq_s64(v42, v39), v43), vsubq_s64(v43, v42), v39);
  v26 = vbslq_s8(vcgtq_s64(vaddq_s64(v40, v38), v41), vsubq_s64(v41, v40), v38);
  v27 = vbslq_s8(vcgtq_s64(v26, v25), v25, v26);
  v28.i64[0] = v27.i64[0];
  v28.i64[1] = -1;
  v29 = vaddq_s64(v42, v28);
  if (((*a4 * (v29.i64[1] + v27.i64[1]) + 8 * v29.i64[0]) > *a5 || (v30 = vaddq_s64(v40, v28), (*a8 * (v30.i64[1] + v27.i64[1]) + 4 * v30.i64[0]) > *a9)) && (v38 = v27, v39.i64[0] = a9, fig_log_get_emitter(), v31 = FigSignalErrorAtGM(), v24 = v40, v23 = v39.i64[0], v27 = v38, v31))
  {
    v20 = v31;
  }

  else
  {
    *v19 = v15;
    v32 = v42;
    *(v19 + 4) = v43;
    *(v19 + 20) = v27;
    *(v19 + 36) = v32;
    *(v19 + 5) = v41;
    *(v19 + 6) = v27;
    *(v19 + 7) = v24;
    *(v19 + 7) = a3;
    *(v19 + 8) = a4;
    *(v19 + 9) = a5;
    *(v19 + 16) = a7;
    *(v19 + 17) = a8;
    *(v19 + 18) = v23;
    *(v19 + 19) = a1;
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_b64a_TRC_Mat_TRC_BGRA_GCD);
    if (!v15)
    {
      return 0;
    }

    v34 = (v19 + 160);
    v35 = v15;
    while (1)
    {
      v36 = *v34++;
      v20 = v36;
      if (v36)
      {
        break;
      }

      if (!--v35)
      {
        v20 = 0;
        break;
      }
    }
  }

  if (v15 == 255)
  {
    goto LABEL_14;
  }

  return v20;
}

unsigned __int8 *vt_Copy_b64a_TRC_Mat_TRC_BGRA_GCD(unsigned __int8 *result, uint64_t a2)
{
  v2 = *result;
  v3 = *(result + 13);
  v4 = v3 * a2 / v2;
  v5 = (v3 + v3 * a2) / v2 - v4;
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = *(result + 24);
    v8 = *(result + 19);
    v9 = **(result + 8);
    v10 = **(result + 17);
    v11 = 8191.0 / *(v8 + 128);
    v12 = *(v8 + 72);
    v13 = *(v8 + 76);
    v14 = *(v8 + 80);
    v15 = *(v8 + 84);
    v16 = *(v8 + 88);
    v17 = *(v8 + 92);
    v18 = *(v8 + 96);
    v19 = *(v8 + 100);
    v20 = *(v8 + 104);
    v21 = v8 + 164;
    v22 = v8 + 16548;
    v23 = v4 + *(result + 15);
    v24 = *(result + 28) * a2 / v2 + *(result + 44);
    v25 = *(v8 + 161);
    v26 = *(v8 + 160);
    v27 = *(v8 + 159);
    v28 = *(v8 + 158);
    v29 = **(result + 16) + v10 * v23 + 4 * *(result + 14);
    v30 = **(result + 7) + v24 * v9 + 8 * *(result + 36);
    do
    {
      if (v7 >= 1)
      {
        v31 = v7;
        v32 = v30;
        v33 = v29;
        do
        {
          _H22 = *(v21 + 2 * llroundf(fminf(fmaxf(v11 * (bswap32(v32[1]) >> 16), 0.0), 8191.0)));
          __asm { FCVT            S22, H22 }

          _H23 = *(v21 + 2 * llroundf(fminf(fmaxf(v11 * (bswap32(v32[2]) >> 16), 0.0), 8191.0)));
          _H25 = *(v21 + 2 * llroundf(fminf(fmaxf(v11 * (bswap32(v32[3]) >> 16), 0.0), 8191.0)));
          __asm
          {
            FCVT            S24, H23
            FCVT            S23, H25
          }

          if (*(v22 + 2 * llroundf(fminf(fmaxf(((v13 * _S24) + (_S22 * v12)) + (_S23 * v14), 0.0), 8191.0))) <= COERCE_SHORT_FLOAT(23544))
          {
            __asm { FCMP            H25, #0 }

            if (_NF)
            {
              _S25 = 0.0;
            }

            else
            {
              __asm { FCVT            S25, H25 }
            }
          }

          else
          {
            _S25 = 255.0;
          }

          v46 = ((v16 * _S24) + (_S22 * v15)) + (_S23 * v17);
          v47 = ((v19 * _S24) + (_S22 * v18)) + (_S23 * v20);
          v48 = *(v22 + 2 * llroundf(fminf(fmaxf(v46, 0.0), 8191.0)));
          v49 = *(v22 + 2 * llroundf(fminf(fmaxf(v47, 0.0), 8191.0)));
          v50 = *v32;
          *(v33 + v28) = llroundf(_S25);
          if (v48 <= COERCE_SHORT_FLOAT(23544))
          {
            __asm { FCMP            H23, #0 }

            if (_NF)
            {
              _S23 = 0.0;
            }

            else
            {
              __asm { FCVT            S23, H23 }
            }
          }

          else
          {
            _S23 = 255.0;
          }

          *(v33 + v27) = llroundf(_S23);
          if (v49 <= COERCE_SHORT_FLOAT(23544))
          {
            __asm { FCMP            H22, #0 }

            if (_NF)
            {
              _S22 = 0.0;
            }

            else
            {
              __asm { FCVT            S22, H22 }
            }
          }

          else
          {
            _S22 = 255.0;
          }

          v32 += 4;
          *(v33 + v26) = llroundf(_S22);
          *(v33 + v25) = llroundf((bswap32(v50) >> 16) * 0.0038911);
          v33 += 4;
          --v31;
        }

        while (v31);
      }

      v30 += v9;
      v29 += v10;
      ++v6;
    }

    while (v6 != v5);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_b64a_rgb_BGRA(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v44 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v42 = a2[2];
  v43 = v16;
  v18 = *a6;
  v38 = a6[1];
  v39 = v17;
  v40 = a6[2];
  v41 = v18;
  if (v15 == 255)
  {
    v19 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v19)
    {
      v20 = 0;
LABEL_14:
      free(v19);
      return v20;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v19 = &v38.i8[-v21];
    bzero(&v38 - v21, v22);
  }

  v23 = a9;
  v24 = v40;
  v25 = vbslq_s8(vcgtq_s64(vaddq_s64(v42, v39), v43), vsubq_s64(v43, v42), v39);
  v26 = vbslq_s8(vcgtq_s64(vaddq_s64(v40, v38), v41), vsubq_s64(v41, v40), v38);
  v27 = vbslq_s8(vcgtq_s64(v26, v25), v25, v26);
  v28.i64[0] = v27.i64[0];
  v28.i64[1] = -1;
  v29 = vaddq_s64(v42, v28);
  if (((*a4 * (v29.i64[1] + v27.i64[1]) + 8 * v29.i64[0]) > *a5 || (v30 = vaddq_s64(v40, v28), (*a8 * (v30.i64[1] + v27.i64[1]) + 4 * v30.i64[0]) > *a9)) && (v38 = v27, v39.i64[0] = a9, fig_log_get_emitter(), v31 = FigSignalErrorAtGM(), v24 = v40, v23 = v39.i64[0], v27 = v38, v31))
  {
    v20 = v31;
  }

  else
  {
    *v19 = v15;
    v32 = v42;
    *(v19 + 4) = v43;
    *(v19 + 20) = v27;
    *(v19 + 36) = v32;
    *(v19 + 5) = v41;
    *(v19 + 6) = v27;
    *(v19 + 7) = v24;
    *(v19 + 7) = a3;
    *(v19 + 8) = a4;
    *(v19 + 9) = a5;
    *(v19 + 16) = a7;
    *(v19 + 17) = a8;
    *(v19 + 18) = v23;
    *(v19 + 19) = a1;
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_b64a_rgb_BGRA_GCD);
    if (!v15)
    {
      return 0;
    }

    v34 = (v19 + 160);
    v35 = v15;
    while (1)
    {
      v36 = *v34++;
      v20 = v36;
      if (v36)
      {
        break;
      }

      if (!--v35)
      {
        v20 = 0;
        break;
      }
    }
  }

  if (v15 == 255)
  {
    goto LABEL_14;
  }

  return v20;
}

unsigned __int8 *vt_Copy_b64a_rgb_BGRA_GCD(unsigned __int8 *result, uint64_t a2)
{
  v2 = *result;
  v3 = *(result + 13);
  v4 = v3 * a2 / v2;
  v5 = (v3 + v3 * a2) / v2 - v4;
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = *(result + 24);
    v8 = *(result + 19);
    v9 = **(result + 8);
    v10 = **(result + 17);
    v11 = *(v8 + 136) / *(v8 + 128);
    v12 = v4 + *(result + 15);
    v13 = *(result + 28) * a2 / v2 + *(result + 44);
    v14 = *(v8 + 161);
    v15 = *(v8 + 160);
    v16 = *(v8 + 159);
    v17 = *(v8 + 158);
    v18 = **(result + 16) + v10 * v12 + 4 * *(result + 14);
    v19 = **(result + 7) + v13 * v9 + 8 * *(result + 36);
    do
    {
      if (v7 >= 1)
      {
        v20 = v7;
        v21 = v19;
        v22 = v18;
        do
        {
          v23 = v11 * (bswap32(v21[1]) >> 16);
          v24 = 255.0;
          if (v23 <= 255.0)
          {
            v24 = v23;
            if (v23 < 0.0)
            {
              v24 = 0.0;
            }
          }

          v25 = v21[3];
          v26 = *v21;
          v27 = v11 * (bswap32(v21[2]) >> 16);
          *(v22 + v17) = llroundf(v24);
          v28 = 255.0;
          if (v27 <= 255.0)
          {
            v28 = v27;
            if (v27 < 0.0)
            {
              v28 = 0.0;
            }
          }

          v29 = v11 * (bswap32(v25) >> 16);
          *(v22 + v16) = llroundf(v28);
          v30 = 255.0;
          if (v29 <= 255.0)
          {
            v30 = v29;
            if (v29 < 0.0)
            {
              v30 = 0.0;
            }
          }

          v21 += 4;
          *(v22 + v15) = llroundf(v30);
          *(v22 + v14) = llroundf((bswap32(v26) >> 16) * 0.0038911);
          v22 += 4;
          --v20;
        }

        while (v20);
      }

      v19 += v9;
      v18 += v10;
      ++v6;
    }

    while (v6 != v5);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_b64a_TRC_Tone_Mat_TRC_l10r(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v13 = a3;
  v47 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v45 = a2[2];
  v46 = v16;
  v18 = *a6;
  v41 = a6[1];
  v42 = v17;
  v43 = a6[2];
  v44 = v18;
  if (v15 == 255)
  {
    v19 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v19)
    {
      v20 = 0;
LABEL_19:
      free(v19);
      return v20;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v19 = &v41.i8[-v21];
    bzero(&v41 - v21, v22);
  }

  v23 = a9;
  v24 = v43;
  v25 = vbslq_s8(vcgtq_s64(vaddq_s64(v45, v42), v46), vsubq_s64(v46, v45), v42);
  v26 = vbslq_s8(vcgtq_s64(vaddq_s64(v43, v41), v44), vsubq_s64(v44, v43), v41);
  v27 = vbslq_s8(vcgtq_s64(v26, v25), v25, v26);
  v28.i64[0] = v27.i64[0];
  v28.i64[1] = -1;
  v29 = vaddq_s64(v45, v28);
  if ((*a4 * (v29.i64[1] + v27.i64[1]) + 8 * v29.i64[0]) <= *a5)
  {
    v33 = vaddq_s64(v43, v28);
    if ((*a8 * (v33.i64[1] + v27.i64[1]) + 4 * v33.i64[0]) <= *a9)
    {
      if (!*(a7 + 8) || v33.i64[0] + a8[1] * (v33.i64[1] + v27.i64[1]) <= a9[1])
      {
        goto LABEL_13;
      }

      v41 = v27;
      v42.i64[0] = a9;
      v30 = a5;
      v31 = a7;
      v32 = v13;
    }

    else
    {
      v41 = v27;
      v42.i64[0] = a9;
      v30 = a5;
      v31 = a7;
      v32 = v13;
    }
  }

  else
  {
    v41 = v27;
    v42.i64[0] = a9;
    v30 = a5;
    v31 = a7;
    v32 = v13;
  }

  fig_log_get_emitter();
  v34 = FigSignalErrorAtGM();
  v13 = v32;
  a7 = v31;
  a5 = v30;
  v24 = v43;
  v23 = v42.i64[0];
  v27 = v41;
  if (v34)
  {
    v20 = v34;
    goto LABEL_18;
  }

LABEL_13:
  *v19 = v15;
  v35 = v45;
  *(v19 + 4) = v46;
  *(v19 + 20) = v27;
  *(v19 + 36) = v35;
  *(v19 + 5) = v44;
  *(v19 + 6) = v27;
  *(v19 + 7) = v24;
  *(v19 + 7) = v13;
  *(v19 + 8) = a4;
  *(v19 + 9) = a5;
  *(v19 + 16) = a7;
  *(v19 + 17) = a8;
  *(v19 + 18) = v23;
  *(v19 + 19) = a1;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v15, global_queue, v19, vt_Copy_b64a_TRC_Tone_Mat_TRC_l10r_GCD);
  if (!v15)
  {
    return 0;
  }

  v37 = (v19 + 160);
  v38 = v15;
  while (1)
  {
    v39 = *v37++;
    v20 = v39;
    if (v39)
    {
      break;
    }

    if (!--v38)
    {
      v20 = 0;
      break;
    }
  }

LABEL_18:
  if (v15 == 255)
  {
    goto LABEL_19;
  }

  return v20;
}

unsigned __int8 *vt_Copy_b64a_TRC_Tone_Mat_TRC_l10r_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, float a5)
{
  v5 = *result;
  v6 = *(result + 13);
  v7 = v6 * a2 / v5;
  v8 = (v6 + v6 * a2) / v5 - v7;
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = *(result + 24);
    v11 = *(result + 19);
    v12 = **(result + 8);
    v13 = **(result + 17);
    v14 = 8191.0 / *(v11 + 128);
    LOWORD(a5) = *(v11 + 144);
    v15 = LODWORD(a5);
    v16 = *(v11 + 72);
    v17 = *(v11 + 76);
    v18 = *(v11 + 80);
    v19 = *(v11 + 84);
    v20 = *(v11 + 88);
    v21 = *(v11 + 92);
    v22 = *(v11 + 96);
    v23 = *(v11 + 100);
    v24 = v11 + 16548;
    v25 = *(result + 28) * a2 / v5 + *(result + 44);
    v26 = v11 + 32932;
    v27 = *(v11 + 104);
    v28 = *(v11 + 108);
    v29 = *(v11 + 112);
    v30 = *(v11 + 116);
    v31 = *(v11 + 120);
    v32 = v11 + 164;
    v33 = **(result + 16) + v13 * (v7 + *(result + 15)) + 16 * *(result + 14);
    v34 = **(result + 7) + v25 * v12 + 8 * *(result + 36);
    do
    {
      if (v10 >= 1)
      {
        v35 = v10;
        v36 = v33;
        v37 = v34;
        do
        {
          _H29 = *(v32 + 2 * llroundf(fminf(fmaxf(v14 * (bswap32(v37[1]) >> 16), 0.0), 8191.0)));
          __asm { FCVT            S29, H29 }

          _H30 = *(v32 + 2 * llroundf(fminf(fmaxf(v14 * (bswap32(v37[2]) >> 16), 0.0), 8191.0)));
          __asm { FCVT            S31, H30 }

          _H30 = *(v32 + 2 * llroundf(fminf(fmaxf(v14 * (bswap32(v37[3]) >> 16), 0.0), 8191.0)));
          __asm { FCVT            S9, H30 }

          v48 = (((v29 * _S31) + (v28 * _S29)) + (v30 * _S9)) + (v31 * fmaxf(_S29, fmaxf(_S31, _S9)));
          v49 = 8191.0;
          if (v48 <= 8191.0)
          {
            v49 = v48;
            if (v48 < 0.0)
            {
              v49 = 0.0;
            }
          }

          _H30 = *(v24 + 2 * llroundf(v49));
          __asm { FCVT            S10, H30 }

          v52 = _S29 * _S10;
          v53 = _S31 * _S10;
          v54 = _S9 * _S10;
          _H29 = *(v26 + 2 * llroundf(fminf(fmaxf(((v23 * v53) + ((_S29 * _S10) * v22)) + ((_S9 * _S10) * v27), 0.0), 8191.0)));
          __asm { FCVT            S29, H29 }

          v57 = v15 + _S29;
          v58 = (v15 + _S29) <= 1023.0;
          v59 = 1023.0;
          if (v58)
          {
            v59 = v57;
            if (v57 < 0.0)
            {
              v59 = 0.0;
            }
          }

          _H9 = *(v26 + 2 * llroundf(fminf(fmaxf(((v20 * v53) + (v52 * v19)) + (v54 * v21), 0.0), 8191.0)));
          __asm { FCVT            S9, H9 }

          v62 = v15 + _S9;
          v58 = (v15 + _S9) <= 1023.0;
          v63 = 1023.0;
          if (v58)
          {
            v63 = v62;
            if (v62 < 0.0)
            {
              v63 = 0.0;
            }
          }

          _H30 = *(v26 + 2 * llroundf(fminf(fmaxf(((v17 * v53) + (v52 * v16)) + (v54 * v18), 0.0), 8191.0)));
          __asm { FCVT            S30, H30 }

          v66 = v15 + _S30;
          v58 = (v15 + _S30) <= 1023.0;
          v67 = 1023.0;
          if (v58)
          {
            v67 = v66;
            if (v66 < 0.0)
            {
              v67 = 0.0;
            }
          }

          v68 = *v37;
          v37 += 4;
          v69 = (bswap32(v68) >> 16) * 3.0 / 65535.0;
          v70 = llroundf(v59);
          v71 = llroundf(v63) << 10;
          v72 = llroundf(v67);
          v73 = llroundf(v69);
          if (v73 > 3.0)
          {
            v73 = 3.0;
          }

          *v36++ = v71 | v70 | (llroundf(v73) << 30) | (v72 << 20);
          --v35;
        }

        while (v35);
      }

      v34 += v12;
      v33 += v13;
      ++v9;
    }

    while (v9 != v8);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_b64a_TRC_Mat_TRC_l10r(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v13 = a3;
  v47 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v45 = a2[2];
  v46 = v16;
  v18 = *a6;
  v41 = a6[1];
  v42 = v17;
  v43 = a6[2];
  v44 = v18;
  if (v15 == 255)
  {
    v19 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v19)
    {
      v20 = 0;
LABEL_19:
      free(v19);
      return v20;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v19 = &v41.i8[-v21];
    bzero(&v41 - v21, v22);
  }

  v23 = a9;
  v24 = v43;
  v25 = vbslq_s8(vcgtq_s64(vaddq_s64(v45, v42), v46), vsubq_s64(v46, v45), v42);
  v26 = vbslq_s8(vcgtq_s64(vaddq_s64(v43, v41), v44), vsubq_s64(v44, v43), v41);
  v27 = vbslq_s8(vcgtq_s64(v26, v25), v25, v26);
  v28.i64[0] = v27.i64[0];
  v28.i64[1] = -1;
  v29 = vaddq_s64(v45, v28);
  if ((*a4 * (v29.i64[1] + v27.i64[1]) + 8 * v29.i64[0]) <= *a5)
  {
    v33 = vaddq_s64(v43, v28);
    if ((*a8 * (v33.i64[1] + v27.i64[1]) + 4 * v33.i64[0]) <= *a9)
    {
      if (!*(a7 + 8) || v33.i64[0] + a8[1] * (v33.i64[1] + v27.i64[1]) <= a9[1])
      {
        goto LABEL_13;
      }

      v41 = v27;
      v42.i64[0] = a9;
      v30 = a5;
      v31 = a7;
      v32 = v13;
    }

    else
    {
      v41 = v27;
      v42.i64[0] = a9;
      v30 = a5;
      v31 = a7;
      v32 = v13;
    }
  }

  else
  {
    v41 = v27;
    v42.i64[0] = a9;
    v30 = a5;
    v31 = a7;
    v32 = v13;
  }

  fig_log_get_emitter();
  v34 = FigSignalErrorAtGM();
  v13 = v32;
  a7 = v31;
  a5 = v30;
  v24 = v43;
  v23 = v42.i64[0];
  v27 = v41;
  if (v34)
  {
    v20 = v34;
    goto LABEL_18;
  }

LABEL_13:
  *v19 = v15;
  v35 = v45;
  *(v19 + 4) = v46;
  *(v19 + 20) = v27;
  *(v19 + 36) = v35;
  *(v19 + 5) = v44;
  *(v19 + 6) = v27;
  *(v19 + 7) = v24;
  *(v19 + 7) = v13;
  *(v19 + 8) = a4;
  *(v19 + 9) = a5;
  *(v19 + 16) = a7;
  *(v19 + 17) = a8;
  *(v19 + 18) = v23;
  *(v19 + 19) = a1;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v15, global_queue, v19, vt_Copy_b64a_TRC_Mat_TRC_l10r_GCD);
  if (!v15)
  {
    return 0;
  }

  v37 = (v19 + 160);
  v38 = v15;
  while (1)
  {
    v39 = *v37++;
    v20 = v39;
    if (v39)
    {
      break;
    }

    if (!--v38)
    {
      v20 = 0;
      break;
    }
  }

LABEL_18:
  if (v15 == 255)
  {
    goto LABEL_19;
  }

  return v20;
}