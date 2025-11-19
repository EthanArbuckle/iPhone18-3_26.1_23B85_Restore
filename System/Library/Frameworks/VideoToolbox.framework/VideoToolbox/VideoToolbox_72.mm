uint64_t vt_Copy_l64r_TRC_Mat_TRC_xf420(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4, void *a5, uint64_t *a6, uint64_t a7, void *a8, void *a9)
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
  dispatch_apply_f(v9, global_queue, v23, vt_Copy_l64r_TRC_Mat_TRC_xf420_GCD);
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

unsigned __int8 *vt_Copy_l64r_TRC_Mat_TRC_xf420_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, float a5, float a6, float a7, float a8, float a9)
{
  v18 = 2 * *result;
  v19 = *(result + 13);
  v20 = v19 * a2 / v18;
  v21 = 2 * ((v19 + v19 * a2) / v18 - v20);
  if (v21 >= 1)
  {
    v22 = 0;
    v23 = *(result + 19);
    v24 = *(result + 24) & 0xFFFFFFFE;
    v25 = **(result + 8);
    v26 = *(result + 16);
    v27 = *(result + 17);
    v28 = *v27;
    v29 = v27[1];
    v30 = 8191.0 / *(v23 + 128);
    LOWORD(a5) = *(v23 + 144);
    v31 = LODWORD(a5);
    LOWORD(a6) = *(v23 + 146);
    LOWORD(a7) = *(v23 + 148);
    v32 = LODWORD(a7);
    LOWORD(a8) = *(v23 + 150);
    v137 = LODWORD(a8);
    LOWORD(a9) = *(v23 + 152);
    v138 = LODWORD(a9);
    v139 = LODWORD(a6);
    v135 = *(v23 + 40);
    v136 = *(v23 + 36);
    v33 = 0.25;
    v133 = *(v23 + 48) * 0.25;
    v134 = *(v23 + 44);
    v131 = *(v23 + 56) * 0.25;
    v132 = *(v23 + 52) * 0.25;
    v34 = *(v23 + 64);
    v129 = v34 * 0.25;
    v130 = *(v23 + 60) * 0.25;
    v35 = *(v23 + 68);
    v36 = *(v23 + 72);
    v128 = v35 * 0.25;
    v37 = *(v23 + 76);
    v38 = *(v23 + 80);
    v39 = *(v23 + 84);
    v40 = *(v23 + 88);
    v41 = *(v23 + 92);
    v42 = *(v23 + 96);
    v44 = *(v23 + 100);
    v43 = *(v23 + 104);
    v45 = v23 + 164;
    v46 = v23 + 16548;
    v47 = *(result + 14);
    v48 = *(result + 15) + 2 * v20;
    v49 = *(result + 44) + 2 * (*(result + 28) * a2 / v18);
    v51 = *v26;
    v50 = v26[1];
    v52 = (v51 + v28 * v48 + 2 * v47);
    v53 = **(result + 7) + v49 * v25 + 8 * *(result + 36);
    v54 = *(v23 + 132);
    v55 = 16 - v54;
    if (v54 >= 0x11)
    {
      v55 = 0;
    }

    v56 = *(v23 + 156);
    v57 = v50 + v29 * (v48 / 2);
    v58 = *(v23 + 155);
    v59 = *(v23 + 154);
    v60 = v57 + 2 * v47;
    v61 = v55;
    do
    {
      v62 = v53 + v25;
      v63 = &v52[v28];
      if (v24 >= 1)
      {
        v64 = 0;
        v65 = v53 + v25;
        v66 = &v52[v28];
        do
        {
          LOWORD(v35) = *(v53 + 2 * v59);
          LOWORD(v33) = *(v53 + 2 * v58);
          LOWORD(v34) = *(v53 + 2 * v56);
          LOWORD(v15) = *(v53 + 8 + 2 * v59);
          LOWORD(v16) = *(v53 + 8 + 2 * v58);
          LOWORD(_S24) = *(v53 + 8 + 2 * v56);
          LOWORD(_S10) = *(v65 + 2 * v59);
          LOWORD(_S11) = *(v65 + 2 * v58);
          LOWORD(_S12) = *(v65 + 2 * v56);
          LOWORD(_S13) = *(v65 + 8 + 2 * v59);
          LOWORD(_S14) = *(v65 + 8 + 2 * v58);
          LOWORD(_S15) = *(v65 + 8 + 2 * v56);
          _H18 = *(v45 + 2 * llroundf(fminf(fmaxf(v30 * LODWORD(v35), 0.0), 8191.0)));
          __asm { FCVT            S18, H18 }

          _H19 = *(v45 + 2 * llroundf(fminf(fmaxf(v30 * LODWORD(v33), 0.0), 8191.0)));
          __asm { FCVT            S19, H19 }

          _H20 = *(v45 + 2 * llroundf(fminf(fmaxf(v30 * LODWORD(v34), 0.0), 8191.0)));
          _H21 = *(v45 + 2 * llroundf(fminf(fmaxf(v30 * LODWORD(v15), 0.0), 8191.0)));
          __asm
          {
            FCVT            S20, H20
            FCVT            S21, H21
          }

          _H22 = *(v45 + 2 * llroundf(fminf(fmaxf(v30 * LODWORD(v16), 0.0), 8191.0)));
          __asm { FCVT            S22, H22 }

          _H24 = *(v45 + 2 * llroundf(fminf(fmaxf(v30 * LODWORD(_S24), 0.0), 8191.0)));
          __asm { FCVT            S24, H24 }

          _H10 = *(v45 + 2 * llroundf(fminf(fmaxf(v30 * LODWORD(_S10), 0.0), 8191.0)));
          __asm { FCVT            S10, H10 }

          _H11 = *(v45 + 2 * llroundf(fminf(fmaxf(v30 * LODWORD(_S11), 0.0), 8191.0)));
          __asm { FCVT            S11, H11 }

          _H12 = *(v45 + 2 * llroundf(fminf(fmaxf(v30 * LODWORD(_S12), 0.0), 8191.0)));
          _H13 = *(v45 + 2 * llroundf(fminf(fmaxf(v30 * LODWORD(_S13), 0.0), 8191.0)));
          __asm
          {
            FCVT            S12, H12
            FCVT            S13, H13
          }

          _H14 = *(v45 + 2 * llroundf(fminf(fmaxf(v30 * LODWORD(_S14), 0.0), 8191.0)));
          __asm { FCVT            S14, H14 }

          _H15 = *(v45 + 2 * llroundf(fminf(fmaxf(v30 * LODWORD(_S15), 0.0), 8191.0)));
          __asm { FCVT            S15, H15 }

          _S5 = ((v37 * _S19) + (_S18 * v36)) + (_S20 * v38);
          _S3 = ((v40 * _S19) + (_S18 * v39)) + (_S20 * v41);
          v97 = ((v44 * _S19) + (_S18 * v42)) + (_S20 * v43);
          v98 = ((v37 * _S22) + (_S21 * v36)) + (_S24 * v38);
          v99 = ((v40 * _S22) + (_S21 * v39)) + (_S24 * v41);
          v100 = ((v44 * _S22) + (_S21 * v42)) + (_S24 * v43);
          v101 = ((v37 * _S11) + (_S10 * v36)) + (_S12 * v38);
          v102 = ((v40 * _S11) + (_S10 * v39)) + (_S12 * v41);
          v103 = ((v44 * _S11) + (_S10 * v42)) + (_S12 * v43);
          v104 = ((v37 * _S14) + (_S13 * v36)) + (_S15 * v38);
          v105 = ((v40 * _S14) + (_S13 * v39)) + (_S15 * v41);
          v106 = ((v44 * _S14) + (_S13 * v42)) + (_S15 * v43);
          LOWORD(_S5) = *(v46 + 2 * llroundf(fminf(fmaxf(_S5, 0.0), 8191.0)));
          __asm { FCVT            S10, H5 }

          LOWORD(_S3) = *(v46 + 2 * llroundf(fminf(fmaxf(_S3, 0.0), 8191.0)));
          __asm { FCVT            S11, H3 }

          LOWORD(_S3) = *(v46 + 2 * llroundf(fminf(fmaxf(v97, 0.0), 8191.0)));
          LOWORD(_S5) = *(v46 + 2 * llroundf(fminf(fmaxf(v98, 0.0), 8191.0)));
          __asm
          {
            FCVT            S12, H3
            FCVT            S13, H5
          }

          LOWORD(_S3) = *(v46 + 2 * llroundf(fminf(fmaxf(v99, 0.0), 8191.0)));
          __asm { FCVT            S15, H3 }

          LOWORD(_S3) = *(v46 + 2 * llroundf(fminf(fmaxf(v100, 0.0), 8191.0)));
          __asm { FCVT            S14, H3 }

          LOWORD(_S3) = *(v46 + 2 * llroundf(fminf(fmaxf(v101, 0.0), 8191.0)));
          __asm { FCVT            S19, H3 }

          LOWORD(_S3) = *(v46 + 2 * llroundf(fminf(fmaxf(v102, 0.0), 8191.0)));
          __asm { FCVT            S20, H3 }

          LOWORD(_S3) = *(v46 + 2 * llroundf(fminf(fmaxf(v103, 0.0), 8191.0)));
          LOWORD(_S5) = *(v46 + 2 * llroundf(fminf(fmaxf(v104, 0.0), 8191.0)));
          __asm
          {
            FCVT            S18, H3
            FCVT            S22, H5
          }

          LOWORD(_S3) = *(v46 + 2 * llroundf(fminf(fmaxf(v105, 0.0), 8191.0)));
          __asm { FCVT            S24, H3 }

          LOWORD(_S3) = *(v46 + 2 * llroundf(fminf(fmaxf(v106, 0.0), 8191.0)));
          __asm { FCVT            S21, H3 }

          v112 = (((v135 * _S11) + (v136 * _S10)) + (v134 * _S12)) + v31;
          if (v112 < v31)
          {
            v113 = v31;
          }

          else
          {
            v113 = (((v135 * _S11) + (v136 * _S10)) + (v134 * _S12)) + v31;
          }

          v114 = v112 <= v32;
          v115 = (((v135 * _S15) + (v136 * _S13)) + (v134 * _S14)) + v31;
          if (!v114)
          {
            v113 = v32;
          }

          v116 = llroundf(v113);
          if (v115 < v31)
          {
            v117 = v31;
          }

          else
          {
            v117 = (((v135 * _S15) + (v136 * _S13)) + (v134 * _S14)) + v31;
          }

          v114 = v115 <= v32;
          v118 = (((v135 * _S20) + (v136 * _S19)) + (v134 * _S18)) + v31;
          if (!v114)
          {
            v117 = v32;
          }

          v119 = llroundf(v117);
          if (v118 < v31)
          {
            v120 = v31;
          }

          else
          {
            v120 = (((v135 * _S20) + (v136 * _S19)) + (v134 * _S18)) + v31;
          }

          v114 = v118 <= v32;
          v121 = (((v135 * _S24) + (v136 * _S22)) + (v134 * _S21)) + v31;
          if (!v114)
          {
            v120 = v32;
          }

          v122 = llroundf(v120);
          if (v121 < v31)
          {
            v123 = v31;
          }

          else
          {
            v123 = (((v135 * _S24) + (v136 * _S22)) + (v134 * _S21)) + v31;
          }

          if (v121 <= v32)
          {
            v124 = v123;
          }

          else
          {
            v124 = v32;
          }

          v125 = ((_S10 + _S13) + _S19) + _S22;
          v34 = ((_S11 + _S15) + _S20) + _S24;
          *v52 = v116 << v61;
          *(v52 + 1) = v119 << v61;
          *v66 = v122 << v61;
          *(v66 + 1) = llroundf(v124) << v61;
          v126 = ((_S12 + _S14) + _S18) + _S21;
          v16 = ((v139 + (v125 * v133)) + (v34 * v132)) + (v126 * v131);
          v15 = v138;
          if (v16 <= v138)
          {
            v15 = ((v139 + (v125 * v133)) + (v34 * v132)) + (v126 * v131);
            if (v16 < v137)
            {
              v15 = v137;
            }
          }

          v127 = (v60 + 2 * v64);
          v33 = ((v139 + (v125 * v130)) + (v34 * v129)) + (v126 * v128);
          *v127 = llroundf(v15) << v61;
          v35 = v138;
          if (v33 <= v138)
          {
            v35 = v33;
            if (v33 < v137)
            {
              v35 = v137;
            }
          }

          v53 += 16;
          v65 += 16;
          v52 += 4;
          v66 += 4;
          v127[1] = llroundf(v35) << v61;
          v64 += 2;
        }

        while (v64 < v24);
      }

      v53 = v62 + v25;
      v52 = &v63[v28];
      v60 += v29;
      v22 += 2;
    }

    while (v22 < v21);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_l64r_rgb_xf420(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4, void *a5, uint64_t *a6, uint64_t a7, void *a8, void *a9)
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
  dispatch_apply_f(v9, global_queue, v23, vt_Copy_l64r_rgb_xf420_GCD);
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

unsigned __int8 *vt_Copy_l64r_rgb_xf420_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, float a5, float a6, float a7, float a8)
{
  v17 = 2 * *result;
  v18 = *(result + 13);
  v19 = v18 * a2 / v17;
  v20 = 2 * ((v18 + v18 * a2) / v17 - v19);
  if (v20 >= 1)
  {
    v21 = 0;
    v22 = *(result + 19);
    v23 = *(result + 24) & 0xFFFFFFFE;
    v24 = **(result + 8);
    v26 = *(result + 16);
    v25 = *(result + 17);
    v27 = *v25;
    v28 = v25[1];
    *&v29 = *(v22 + 136);
    v30 = *&v29 / *(v22 + 128);
    LOWORD(v29) = *(v22 + 144);
    v31 = v29;
    LOWORD(a5) = *(v22 + 146);
    v32 = LODWORD(a5);
    LOWORD(a6) = *(v22 + 148);
    v33 = LODWORD(a6);
    LOWORD(a7) = *(v22 + 150);
    v34 = LODWORD(a7);
    LOWORD(a8) = *(v22 + 152);
    v35 = LODWORD(a8);
    v36 = *(v22 + 36);
    v37 = *(v22 + 40);
    v38 = *(v22 + 44);
    v39 = *(v22 + 48) * 0.25;
    v40 = *(v22 + 52) * 0.25;
    v41 = *(v22 + 56) * 0.25;
    v42 = *(v22 + 60) * 0.25;
    v43 = *(v22 + 64) * 0.25;
    v44 = *(v22 + 68);
    v45 = v44 * 0.25;
    v46 = *(result + 14);
    v47 = *(result + 15) + 2 * v19;
    v48 = *(result + 44) + 2 * (*(result + 28) * a2 / v17);
    v49 = *v26;
    v50 = v26[1];
    v51 = (v49 + v27 * v47 + 2 * v46);
    v52 = **(result + 7) + v48 * v24 + 8 * *(result + 36);
    v53 = *(v22 + 132);
    v54 = 16 - v53;
    if (v53 >= 0x11)
    {
      v54 = 0;
    }

    v55 = *(v22 + 156);
    v56 = v50 + v28 * (v47 / 2);
    v57 = *(v22 + 155);
    v58 = *(v22 + 154);
    v59 = v56 + 2 * v46;
    v60 = v54;
    do
    {
      v61 = v52 + v24;
      v62 = &v51[v27];
      if (v23 >= 1)
      {
        v63 = 0;
        v64 = v52 + v24;
        v65 = &v51[v27];
        do
        {
          LOWORD(v44) = *(v52 + 2 * v58);
          v66 = v30 * LODWORD(v44);
          LOWORD(v11) = *(v52 + 2 * v57);
          v67 = v30 * LODWORD(v11);
          LOWORD(v12) = *(v52 + 2 * v55);
          v68 = v30 * LODWORD(v12);
          LOWORD(v13) = *(v52 + 8 + 2 * v58);
          v69 = v30 * LODWORD(v13);
          LOWORD(v14) = *(v52 + 8 + 2 * v57);
          LOWORD(v15) = *(v52 + 8 + 2 * v55);
          v70 = v30 * LODWORD(v14);
          v71 = v30 * LODWORD(v15);
          LOWORD(v15) = *(v64 + 2 * v58);
          v15 = v30 * LODWORD(v15);
          LOWORD(v16) = *(v64 + 2 * v57);
          LOWORD(v8) = *(v64 + 2 * v55);
          v72 = v30 * LODWORD(v16);
          v16 = v30 * LODWORD(v8);
          LOWORD(v8) = *(v64 + 8 + 2 * v58);
          v8 = v30 * LODWORD(v8);
          LOWORD(v9) = *(v64 + 8 + 2 * v57);
          v9 = v30 * LODWORD(v9);
          LOWORD(v10) = *(v64 + 8 + 2 * v55);
          v10 = v30 * LODWORD(v10);
          v73 = (((v37 * v67) + (v36 * v66)) + (v38 * v68)) + v31;
          v74 = (((v37 * v70) + (v36 * v69)) + (v38 * v71)) + v31;
          v75 = (((v37 * v72) + (v36 * v15)) + (v38 * v16)) + v31;
          v76 = (((v37 * v9) + (v36 * v8)) + (v38 * v10)) + v31;
          if (v73 < v31)
          {
            v77 = v31;
          }

          else
          {
            v77 = (((v37 * v67) + (v36 * v66)) + (v38 * v68)) + v31;
          }

          if (v73 <= v33)
          {
            v78 = v77;
          }

          else
          {
            v78 = v33;
          }

          *v51 = llroundf(v78) << v60;
          if (v74 < v31)
          {
            v79 = v31;
          }

          else
          {
            v79 = (((v37 * v70) + (v36 * v69)) + (v38 * v71)) + v31;
          }

          if (v74 > v33)
          {
            v79 = v33;
          }

          *(v51 + 1) = llroundf(v79) << v60;
          if (v75 < v31)
          {
            v80 = v31;
          }

          else
          {
            v80 = (((v37 * v72) + (v36 * v15)) + (v38 * v16)) + v31;
          }

          if (v75 > v33)
          {
            v80 = v33;
          }

          *v65 = llroundf(v80) << v60;
          if (v76 < v31)
          {
            v81 = v31;
          }

          else
          {
            v81 = (((v37 * v9) + (v36 * v8)) + (v38 * v10)) + v31;
          }

          if (v76 > v33)
          {
            v81 = v33;
          }

          *(v65 + 1) = llroundf(v81) << v60;
          v82 = ((v66 + v69) + v15) + v8;
          v83 = ((v67 + v70) + v72) + v9;
          v12 = ((v68 + v71) + v16) + v10;
          v14 = ((v32 + (v82 * v39)) + (v83 * v40)) + (v12 * v41);
          v13 = v35;
          if (v14 <= v35)
          {
            v13 = ((v32 + (v82 * v39)) + (v83 * v40)) + (v12 * v41);
            if (v14 < v34)
            {
              v13 = v34;
            }
          }

          v84 = (v59 + 2 * v63);
          v11 = ((v32 + (v82 * v42)) + (v83 * v43)) + (v12 * v45);
          *v84 = llroundf(v13) << v60;
          v44 = v35;
          if (v11 <= v35)
          {
            v44 = v11;
            if (v11 < v34)
            {
              v44 = v34;
            }
          }

          v52 += 16;
          v64 += 16;
          v51 += 4;
          v65 += 4;
          v84[1] = llroundf(v44) << v60;
          v63 += 2;
        }

        while (v63 < v23);
      }

      v52 = v61 + v24;
      v51 = &v62[v27];
      v59 += v28;
      v21 += 2;
    }

    while (v21 < v20);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_l64r_TRC_Tone_Mat_TRC_422vf(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4, void *a5, uint64_t *a6, uint64_t a7, unint64_t *a8, void *a9)
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
  dispatch_apply_f(v10, global_queue, v22, vt_Copy_l64r_TRC_Tone_Mat_TRC_422vf_GCD);
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

unsigned __int8 *vt_Copy_l64r_TRC_Tone_Mat_TRC_422vf_GCD(unsigned __int8 *result, uint64_t a2)
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
    v11 = **(result + 8);
    v12 = *(result + 16);
    v13 = *(result + 17);
    v14 = *v13;
    v15 = v13[1];
    v16 = v13[2];
    *&v17 = *(v9 + 128);
    v18 = 8191.0 / *&v17;
    LOWORD(v17) = *(v9 + 144);
    v19 = v17;
    LOWORD(v17) = *(v9 + 146);
    v20 = v17;
    LOWORD(v17) = *(v9 + 148);
    v21 = v17;
    LOWORD(v17) = *(v9 + 150);
    v22 = v17;
    LOWORD(v17) = *(v9 + 152);
    v23 = v17;
    v24 = *(v9 + 40);
    v126 = *(v9 + 36);
    v127 = v22;
    v25 = *(v9 + 44);
    v26 = 0.5;
    v124 = *(v9 + 52) * 0.5;
    v125 = *(v9 + 48) * 0.5;
    v27 = *(v9 + 64);
    v122 = *(v9 + 60) * 0.5;
    v123 = *(v9 + 56) * 0.5;
    v28 = *(v9 + 72);
    v29 = *(v9 + 68) * 0.5;
    v120 = v29;
    v121 = v27 * 0.5;
    v30 = *(v9 + 76);
    v31 = *(v9 + 80);
    v32 = *(v9 + 84);
    v33 = *(v9 + 88);
    v34 = *(v9 + 92);
    v35 = *(v9 + 96);
    v37 = *(v9 + 100);
    v36 = *(v9 + 104);
    v38 = v9 + 164;
    v39 = v9 + 16548;
    v40 = v9 + 32932;
    v41 = *(v9 + 108);
    v42 = *(v9 + 112);
    v43 = *(v9 + 116);
    v44 = *(v9 + 120);
    v45 = *(result + 14);
    v46 = v6 + *(result + 15);
    v47 = *(result + 28) * a2 / v4 + *(result + 44);
    v48 = *(v9 + 157);
    v49 = *(v9 + 156);
    v50 = *(v9 + 155);
    v51 = *(v9 + 154);
    v52 = v12[2];
    if (v52)
    {
      v53 = (v52 + v16 * v46 + v45);
    }

    else
    {
      v53 = 0;
    }

    v55 = *v12;
    v54 = v12[1];
    v56 = v54 + v15 * v46 + v45;
    if (!v54)
    {
      v56 = 0;
    }

    v57 = (v55 + v14 * v46 + v45);
    v58 = **(result + 7) + v47 * v11 + 8 * *(result + 36);
    do
    {
      if (v10 >= 1)
      {
        v59 = 0;
        v60 = v53;
        v61 = v57;
        v62 = v58;
        do
        {
          LOWORD(v29) = *(v62 + 2 * v51);
          LOWORD(v26) = *(v62 + 2 * v50);
          LOWORD(v27) = *(v62 + 2 * v49);
          _H0 = *(v38 + 2 * llroundf(fminf(fmaxf(v18 * LODWORD(v29), 0.0), 8191.0)));
          __asm { FCVT            S14, H0 }

          _H0 = *(v38 + 2 * llroundf(fminf(fmaxf(v18 * v26, 0.0), 8191.0)));
          __asm { FCVT            S15, H0 }

          _H0 = *(v38 + 2 * llroundf(fminf(fmaxf(v18 * LODWORD(v27), 0.0), 8191.0)));
          __asm { FCVT            S18, H0 }

          v73 = (((v42 * _S15) + (v41 * _S14)) + (v43 * _S18)) + (v44 * fmaxf(_S14, fmaxf(_S15, _S18)));
          v74 = 8191.0;
          if (v73 <= 8191.0)
          {
            v74 = v73;
            if (v73 < 0.0)
            {
              v74 = 0.0;
            }
          }

          LOWORD(v73) = *(v62 + 8 + 2 * v51);
          LOWORD(v2) = *(v62 + 8 + 2 * v50);
          LOWORD(v3) = *(v62 + 8 + 2 * v49);
          _H0 = *(v38 + 2 * llroundf(fminf(fmaxf(v18 * LODWORD(v73), 0.0), 8191.0)));
          v76 = v18 * LODWORD(v3);
          __asm { FCVT            S20, H0 }

          _H0 = *(v38 + 2 * llroundf(fminf(fmaxf(v18 * LODWORD(v2), 0.0), 8191.0)));
          v79 = llroundf(fminf(fmaxf(v76, 0.0), 8191.0));
          __asm { FCVT            S21, H0 }

          _H0 = *(v38 + 2 * v79);
          __asm { FCVT            S22, H0 }

          v83 = (((v42 * _S21) + (v41 * _S20)) + (v43 * _S22)) + (v44 * fmaxf(_S20, fmaxf(_S21, _S22)));
          v84 = 8191.0;
          if (v83 <= 8191.0)
          {
            v84 = v83;
            if (v83 < 0.0)
            {
              v84 = 0.0;
            }
          }

          if (v60)
          {
            v85 = llroundf(*(v62 + 2 * v48) * 0.0038911);
            v86 = llroundf(*(v62 + 8 + 2 * v48) * 0.0038911);
          }

          else
          {
            v85 = 0;
            v86 = 0;
          }

          _H0 = *(v39 + 2 * llroundf(v74));
          __asm { FCVT            S0, H0 }

          v89 = _S14 * _S0;
          v90 = _S15 * _S0;
          v91 = _S18 * _S0;
          _H18 = *(v39 + 2 * llroundf(v84));
          __asm { FCVT            S18, H18 }

          _S19 = _S20 * _S18;
          _S20 = _S21 * _S18;
          v96 = _S22 * _S18;
          v97 = ((v30 * v90) + (v89 * v28)) + (v91 * v31);
          v98 = ((v33 * v90) + (v89 * v32)) + (v91 * v34);
          _S0 = ((v37 * v90) + (v89 * v35)) + (v91 * v36);
          v100 = ((v30 * _S20) + (_S19 * v28)) + (v96 * v31);
          _S5 = ((v33 * _S20) + (_S19 * v32)) + (v96 * v34);
          _S18 = ((v37 * _S20) + (_S19 * v35)) + (v96 * v36);
          LOWORD(_S19) = *(v40 + 2 * llroundf(fminf(fmaxf(v97, 0.0), 8191.0)));
          LOWORD(_S20) = *(v40 + 2 * llroundf(fminf(fmaxf(v98, 0.0), 8191.0)));
          __asm
          {
            FCVT            S19, H19
            FCVT            S20, H20
          }

          LOWORD(_S0) = *(v40 + 2 * llroundf(fminf(fmaxf(_S0, 0.0), 8191.0)));
          v105 = llroundf(fminf(fmaxf(v100, 0.0), 8191.0));
          __asm { FCVT            S3, H0 }

          LOWORD(_S0) = *(v40 + 2 * v105);
          __asm { FCVT            S0, H0 }

          LOWORD(_S5) = *(v40 + 2 * llroundf(fminf(fmaxf(_S5, 0.0), 8191.0)));
          __asm { FCVT            S5, H5 }

          LOWORD(_S18) = *(v40 + 2 * llroundf(fminf(fmaxf(_S18, 0.0), 8191.0)));
          __asm { FCVT            S21, H18 }

          v110 = (((v24 * _S20) + (v126 * _S19)) + (v25 * _S3)) + v19;
          v111 = (((v24 * _S5) + (v126 * _S0)) + (v25 * _S21)) + v19;
          if (v110 < v19)
          {
            v112 = v19;
          }

          else
          {
            v112 = (((v24 * _S20) + (v126 * _S19)) + (v25 * _S3)) + v19;
          }

          if (v110 <= v21)
          {
            v113 = v112;
          }

          else
          {
            v113 = v21;
          }

          *v61 = llroundf(v113);
          if (v111 < v19)
          {
            v114 = v19;
          }

          else
          {
            v114 = (((v24 * _S5) + (v126 * _S0)) + (v25 * _S21)) + v19;
          }

          if (v111 > v21)
          {
            v114 = v21;
          }

          v61[1] = llroundf(v114);
          v115 = _S19 + _S0;
          v2 = v20 + (v115 * v125);
          v116 = _S20 + _S5;
          v117 = v2 + ((_S20 + _S5) * v124);
          v3 = _S3 + _S21;
          v118 = v117 + ((_S3 + _S21) * v123);
          v119 = v23;
          if (v118 <= v23)
          {
            v119 = v118;
            if (v118 < v127)
            {
              v119 = v127;
            }
          }

          HIWORD(v26) = HIWORD(v122);
          v29 = ((v20 + (v115 * v122)) + (v116 * v121)) + (v3 * v120);
          *(v56 + v59) = llroundf(v119);
          v27 = v23;
          if (v29 <= v23)
          {
            v27 = v29;
            if (v29 < v127)
            {
              v27 = v127;
            }
          }

          *(v56 + v59 + 1) = llroundf(v27);
          if (v60)
          {
            *v60 = v85;
            v60[1] = v86;
            v60 += 2;
          }

          v62 += 16;
          v59 += 2;
          v61 += 2;
        }

        while (v59 < v10);
      }

      v58 += v11;
      v57 += v14;
      v56 += v15;
      v53 += v16;
      ++v8;
    }

    while (v8 != v7);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_l64r_TRC_Mat_TRC_422vf(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4, void *a5, uint64_t *a6, uint64_t a7, unint64_t *a8, void *a9)
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
  dispatch_apply_f(v10, global_queue, v22, vt_Copy_l64r_TRC_Mat_TRC_422vf_GCD);
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

unsigned __int8 *vt_Copy_l64r_TRC_Mat_TRC_422vf_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, float a5, float a6, float a7, float a8, float a9)
{
  v15 = *result;
  v16 = *(result + 13);
  v17 = v16 * a2 / v15;
  v18 = (v16 + v16 * a2) / v15 - v17;
  if (v18 >= 1)
  {
    v19 = 0;
    v20 = *(result + 19);
    v21 = *(result + 24) & 0xFFFFFFFE;
    v22 = **(result + 8);
    v23 = *(result + 16);
    v24 = *(result + 17);
    v25 = *v24;
    v26 = v24[1];
    v27 = v24[2];
    v28 = 8191.0 / *(v20 + 128);
    LOWORD(a5) = *(v20 + 144);
    v29 = LODWORD(a5);
    LOWORD(a6) = *(v20 + 146);
    v30 = LODWORD(a6);
    LOWORD(a7) = *(v20 + 148);
    v31 = LODWORD(a7);
    LOWORD(a8) = *(v20 + 150);
    v32 = LODWORD(a8);
    LOWORD(a9) = *(v20 + 152);
    v33 = LODWORD(a9);
    v34 = *(v20 + 36);
    v35 = *(v20 + 40);
    v36 = *(v20 + 44);
    v107 = *(v20 + 52) * 0.5;
    v108 = *(v20 + 48) * 0.5;
    v106 = *(v20 + 56) * 0.5;
    v37 = *(v20 + 60) * 0.5;
    v38 = *(v20 + 64) * 0.5;
    v39 = *(v20 + 72);
    v40 = *(v20 + 68) * 0.5;
    v41 = *(v20 + 76);
    v42 = *(v20 + 80);
    v43 = *(v20 + 84);
    v44 = *(v20 + 88);
    v45 = *(v20 + 92);
    v46 = *(v20 + 96);
    v48 = *(v20 + 100);
    v47 = *(v20 + 104);
    v49 = v20 + 164;
    v50 = v20 + 16548;
    v51 = *(result + 14);
    v52 = v17 + *(result + 15);
    v53 = *(result + 28) * a2 / v15 + *(result + 44);
    v54 = *(v20 + 157);
    v55 = *(v20 + 156);
    v56 = *(v20 + 155);
    v57 = *(v20 + 154);
    v58 = v23[2];
    if (v58)
    {
      v59 = (v58 + v27 * v52 + v51);
    }

    else
    {
      v59 = 0;
    }

    v61 = *v23;
    v60 = v23[1];
    v62 = v60 + v26 * v52 + v51;
    if (!v60)
    {
      v62 = 0;
    }

    v63 = (v61 + v25 * v52 + v51);
    v64 = **(result + 7) + v53 * v22 + 8 * *(result + 36);
    do
    {
      if (v21 >= 1)
      {
        v65 = 0;
        v66 = v64;
        v67 = v59;
        v68 = v63;
        do
        {
          v69 = v66 + 8;
          if (v67)
          {
            LOWORD(v9) = *(v66 + 2 * v54);
            HIWORD(v10) = 15231;
            v70 = LODWORD(v9) * 0.0038911;
            v71 = llroundf(v70);
            LOWORD(v70) = *(v69 + 2 * v54);
            v9 = LODWORD(v70) * 0.0038911;
            v72 = llroundf(v9);
          }

          else
          {
            v71 = 0;
            v72 = 0;
          }

          LOWORD(v9) = *(v66 + 2 * v57);
          LOWORD(v10) = *(v66 + 2 * v56);
          LOWORD(v11) = *(v66 + 2 * v55);
          LOWORD(v12) = *(v69 + 2 * v57);
          LOWORD(v13) = *(v69 + 2 * v56);
          LOWORD(v14) = *(v69 + 2 * v55);
          _H10 = *(v49 + 2 * llroundf(fminf(fmaxf(v28 * LODWORD(v9), 0.0), 8191.0)));
          _H11 = *(v49 + 2 * llroundf(fminf(fmaxf(v28 * LODWORD(v10), 0.0), 8191.0)));
          __asm
          {
            FCVT            S10, H10
            FCVT            S11, H11
          }

          _H12 = *(v49 + 2 * llroundf(fminf(fmaxf(v28 * LODWORD(v11), 0.0), 8191.0)));
          __asm { FCVT            S12, H12 }

          _H13 = *(v49 + 2 * llroundf(fminf(fmaxf(v28 * LODWORD(v12), 0.0), 8191.0)));
          __asm { FCVT            S13, H13 }

          _H14 = *(v49 + 2 * llroundf(fminf(fmaxf(v28 * LODWORD(v13), 0.0), 8191.0)));
          __asm { FCVT            S14, H14 }

          _H15 = *(v49 + 2 * llroundf(fminf(fmaxf(v28 * LODWORD(v14), 0.0), 8191.0)));
          __asm { FCVT            S15, H15 }

          _S18 = ((v41 * _S11) + (_S10 * v39)) + (_S12 * v42);
          _S19 = ((v44 * _S11) + (_S10 * v43)) + (_S12 * v45);
          _S10 = ((v48 * _S11) + (_S10 * v46)) + (_S12 * v47);
          _S11 = ((v41 * _S14) + (_S13 * v39)) + (_S15 * v42);
          _S12 = ((v44 * _S14) + (_S13 * v43)) + (_S15 * v45);
          v94 = ((v48 * _S14) + (_S13 * v46)) + (_S15 * v47);
          LOWORD(_S18) = *(v50 + 2 * llroundf(fminf(fmaxf(_S18, 0.0), 8191.0)));
          LOWORD(_S19) = *(v50 + 2 * llroundf(fminf(fmaxf(_S19, 0.0), 8191.0)));
          __asm
          {
            FCVT            S18, H18
            FCVT            S19, H19
          }

          LOWORD(_S10) = *(v50 + 2 * llroundf(fminf(fmaxf(_S10, 0.0), 8191.0)));
          __asm { FCVT            S14, H10 }

          LOWORD(_S10) = *(v50 + 2 * llroundf(fminf(fmaxf(_S11, 0.0), 8191.0)));
          __asm { FCVT            S10, H10 }

          LOWORD(_S11) = *(v50 + 2 * llroundf(fminf(fmaxf(_S12, 0.0), 8191.0)));
          __asm { FCVT            S11, H11 }

          LOWORD(_S12) = *(v50 + 2 * llroundf(fminf(fmaxf(v94, 0.0), 8191.0)));
          __asm { FCVT            S12, H12 }

          v101 = (((v35 * _S19) + (v34 * _S18)) + (v36 * _S14)) + v29;
          v14 = (((v35 * _S11) + (v34 * _S10)) + (v36 * _S12)) + v29;
          if (v101 < v29)
          {
            v102 = v29;
          }

          else
          {
            v102 = (((v35 * _S19) + (v34 * _S18)) + (v36 * _S14)) + v29;
          }

          if (v101 > v31)
          {
            v102 = v31;
          }

          *v68 = llroundf(v102);
          if (v14 < v29)
          {
            v103 = v29;
          }

          else
          {
            v103 = (((v35 * _S11) + (v34 * _S10)) + (v36 * _S12)) + v29;
          }

          if (v14 > v31)
          {
            v103 = v31;
          }

          v68[1] = llroundf(v103);
          v104 = _S18 + _S10;
          v105 = _S19 + _S11;
          v11 = _S14 + _S12;
          v13 = ((v30 + (v104 * v108)) + (v105 * v107)) + (v11 * v106);
          v12 = v33;
          if (v13 <= v33)
          {
            v12 = ((v30 + (v104 * v108)) + (v105 * v107)) + (v11 * v106);
            if (v13 < v32)
            {
              v12 = v32;
            }
          }

          v9 = ((v30 + (v104 * v37)) + (v105 * v38)) + (v11 * v40);
          *(v62 + v65) = llroundf(v12);
          v10 = v33;
          if (v9 <= v33)
          {
            v10 = v9;
            if (v9 < v32)
            {
              v10 = v32;
            }
          }

          *(v62 + v65 + 1) = llroundf(v10);
          if (v67)
          {
            *v67 = v71;
            v67[1] = v72;
            v67 += 2;
          }

          v66 += 16;
          v65 += 2;
          v68 += 2;
        }

        while (v65 < v21);
      }

      v64 += v22;
      v63 += v25;
      v62 += v26;
      v59 += v27;
      ++v19;
    }

    while (v19 != v18);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_l64r_rgb_422vf(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4, void *a5, uint64_t *a6, uint64_t a7, unint64_t *a8, void *a9)
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
  dispatch_apply_f(v10, global_queue, v22, vt_Copy_l64r_rgb_422vf_GCD);
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

unsigned __int8 *vt_Copy_l64r_rgb_422vf_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, float a5, float a6, float a7, float a8)
{
  v14 = *result;
  v15 = *(result + 13);
  v16 = v15 * a2 / v14;
  v17 = (v15 + v15 * a2) / v14 - v16;
  if (v17 >= 1)
  {
    v18 = 0;
    v19 = *(result + 19);
    v20 = *(result + 24) & 0xFFFFFFFE;
    v21 = **(result + 8);
    v22 = *(result + 16);
    v23 = *(result + 17);
    v24 = *v23;
    v25 = v23[1];
    v26 = v23[2];
    *&v27 = *(v19 + 136);
    v28 = *&v27 / *(v19 + 128);
    LOWORD(v27) = *(v19 + 144);
    v29 = v27;
    LOWORD(a5) = *(v19 + 146);
    v30 = LODWORD(a5);
    LOWORD(a6) = *(v19 + 148);
    v31 = LODWORD(a6);
    LOWORD(a7) = *(v19 + 150);
    v32 = LODWORD(a7);
    LOWORD(a8) = *(v19 + 152);
    v33 = LODWORD(a8);
    v34 = *(v19 + 36);
    v35 = *(v19 + 40);
    v36 = *(v19 + 44);
    v37 = *(v19 + 48) * 0.5;
    v38 = *(v19 + 52) * 0.5;
    v39 = *(v19 + 56) * 0.5;
    v40 = *(v19 + 60) * 0.5;
    v41 = *(v19 + 64) * 0.5;
    v42 = *(v19 + 68) * 0.5;
    v43 = *(result + 14);
    v44 = v16 + *(result + 15);
    v45 = *(result + 28) * a2 / v14 + *(result + 44);
    v46 = *(v19 + 157);
    v47 = *(v19 + 156);
    v48 = *(v19 + 155);
    v49 = *(v19 + 154);
    v50 = v22[2];
    if (v50)
    {
      v51 = (v50 + v26 * v44 + v43);
    }

    else
    {
      v51 = 0;
    }

    v53 = *v22;
    v52 = v22[1];
    v54 = v52 + v25 * v44 + v43;
    if (!v52)
    {
      v54 = 0;
    }

    v55 = (v53 + v24 * v44 + v43);
    v56 = **(result + 7) + v45 * v21 + 8 * *(result + 36);
    do
    {
      if (v20 >= 1)
      {
        v57 = 0;
        v58 = v56;
        v59 = v51;
        v60 = v55;
        do
        {
          v61 = v58 + 8;
          if (v59)
          {
            LOWORD(v8) = *(v58 + 2 * v46);
            v62 = LODWORD(v8) * 0.0038911;
            v63 = llroundf(v62);
            LOWORD(v62) = *(v61 + 2 * v46);
            v8 = LODWORD(v62) * 0.0038911;
            v64 = llroundf(v8);
          }

          else
          {
            v63 = 0;
            v64 = 0;
          }

          LOWORD(v8) = *(v58 + 2 * v49);
          v65 = v28 * LODWORD(v8);
          LOWORD(v9) = *(v58 + 2 * v48);
          v66 = v28 * LODWORD(v9);
          LOWORD(v10) = *(v58 + 2 * v47);
          v67 = v28 * LODWORD(v10);
          LOWORD(v11) = *(v61 + 2 * v49);
          v68 = v28 * LODWORD(v11);
          LOWORD(v12) = *(v61 + 2 * v48);
          v69 = v28 * LODWORD(v12);
          LOWORD(v13) = *(v61 + 2 * v47);
          v13 = v28 * LODWORD(v13);
          v70 = (((v35 * v66) + (v34 * v65)) + (v36 * v67)) + v29;
          v71 = (((v35 * v69) + (v34 * v68)) + (v36 * v13)) + v29;
          if (v70 < v29)
          {
            v72 = v29;
          }

          else
          {
            v72 = (((v35 * v66) + (v34 * v65)) + (v36 * v67)) + v29;
          }

          if (v70 <= v31)
          {
            v73 = v72;
          }

          else
          {
            v73 = v31;
          }

          *v60 = llroundf(v73);
          if (v71 < v29)
          {
            v74 = v29;
          }

          else
          {
            v74 = (((v35 * v69) + (v34 * v68)) + (v36 * v13)) + v29;
          }

          if (v71 > v31)
          {
            v74 = v31;
          }

          v60[1] = llroundf(v74);
          v75 = v65 + v68;
          v76 = v66 + v69;
          v10 = v67 + v13;
          v12 = ((v30 + (v75 * v37)) + (v76 * v38)) + (v10 * v39);
          v11 = v33;
          if (v12 <= v33)
          {
            v11 = ((v30 + (v75 * v37)) + (v76 * v38)) + (v10 * v39);
            if (v12 < v32)
            {
              v11 = v32;
            }
          }

          v8 = ((v30 + (v75 * v40)) + (v76 * v41)) + (v10 * v42);
          *(v54 + v57) = llroundf(v11);
          v9 = v33;
          if (v8 <= v33)
          {
            v9 = v8;
            if (v8 < v32)
            {
              v9 = v32;
            }
          }

          *(v54 + v57 + 1) = llroundf(v9);
          if (v59)
          {
            *v59 = v63;
            v59[1] = v64;
            v59 += 2;
          }

          v58 += 16;
          v57 += 2;
          v60 += 2;
        }

        while (v57 < v20);
      }

      v56 += v21;
      v55 += v24;
      v54 += v25;
      v51 += v26;
      ++v18;
    }

    while (v18 != v17);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_l64r_TRC_Tone_Mat_TRC_2vuyf(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, uint64_t a8, uint64_t a9)
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
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_l64r_TRC_Tone_Mat_TRC_2vuyf_GCD);
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

unsigned __int8 *vt_Copy_l64r_TRC_Tone_Mat_TRC_2vuyf_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, double a5, double a6, double a7, float a8, float a9, float a10)
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
    _S19 = *(v25 + 52);
    v34 = *(v25 + 56);
    v35 = 8191.0 / *(v25 + 128);
    v36 = LODWORD(a8);
    v136 = LODWORD(a9);
    v37 = LODWORD(a10);
    v38 = v10;
    v39 = v11;
    v134 = _S19 * 0.5;
    v135 = *(v25 + 48) * 0.5;
    v132 = *(v25 + 60) * 0.5;
    v133 = v34 * 0.5;
    v40 = *(v25 + 68);
    v130 = *(v25 + 72);
    v131 = *(v25 + 64) * 0.5;
    v41 = v40 * 0.5;
    v129 = v40 * 0.5;
    v42 = *(v25 + 76);
    v43 = *(v25 + 80);
    v44 = *(v25 + 84);
    v45 = *(v25 + 88);
    v46 = *(v25 + 92);
    v47 = *(v25 + 96);
    v49 = *(v25 + 100);
    v48 = *(v25 + 104);
    v50 = v25 + 164;
    v51 = v25 + 16548;
    v52 = v25 + 32932;
    v53 = *(v25 + 108);
    v54 = *(v25 + 112);
    v55 = *(v25 + 116);
    v56 = *(v25 + 120);
    v57 = *(v25 + 157);
    v58 = *(v25 + 156);
    v59 = *(v25 + 155);
    v60 = *(v25 + 154);
    do
    {
      if (v29 >= 1)
      {
        v61 = 0;
        v62 = v20;
        v63 = v28;
        v64 = v27;
        do
        {
          v65 = v31;
          LOWORD(v41) = *(v64 + 2 * v60);
          LOWORD(v40) = *(v64 + 2 * v59);
          LOWORD(_S19) = *(v64 + 2 * v58);
          _H0 = *(v50 + 2 * llroundf(fminf(fmaxf(v35 * LODWORD(v41), 0.0), 8191.0)));
          __asm { FCVT            S14, H0 }

          _H0 = *(v50 + 2 * llroundf(fminf(fmaxf(v35 * LODWORD(v40), 0.0), 8191.0)));
          __asm { FCVT            S18, H0 }

          _H0 = *(v50 + 2 * llroundf(fminf(fmaxf(v35 * LODWORD(_S19), 0.0), 8191.0)));
          __asm { FCVT            S15, H0 }

          v76 = (((v54 * _S18) + (v53 * _S14)) + (v55 * _S15)) + (v56 * fmaxf(_S14, fmaxf(_S18, _S15)));
          v77 = 8191.0;
          if (v76 <= 8191.0)
          {
            v77 = v76;
            if (v76 < 0.0)
            {
              v77 = 0.0;
            }
          }

          LOWORD(v76) = *(v64 + 8 + 2 * v60);
          LOWORD(v34) = *(v64 + 8 + 2 * v59);
          *&v78 = LODWORD(v34);
          v79 = v35 * *&v78;
          LOWORD(v78) = *(v64 + 8 + 2 * v58);
          _H0 = *(v50 + 2 * llroundf(fminf(fmaxf(v35 * LODWORD(v76), 0.0), 8191.0)));
          v81 = v35 * v78;
          __asm { FCVT            S20, H0 }

          _H0 = *(v50 + 2 * llroundf(fminf(fmaxf(v79, 0.0), 8191.0)));
          __asm { FCVT            S21, H0 }

          _H0 = *(v50 + 2 * llroundf(fminf(fmaxf(v81, 0.0), 8191.0)));
          __asm { FCVT            S22, H0 }

          v87 = (((v54 * _S21) + (v53 * _S20)) + (v55 * _S22)) + (v56 * fmaxf(_S20, fmaxf(_S21, _S22)));
          v88 = 8191.0;
          if (v87 <= 8191.0)
          {
            v88 = v87;
            if (v87 < 0.0)
            {
              v88 = 0.0;
            }
          }

          if (v62)
          {
            v89 = llroundf(*(v64 + 2 * v57) * 0.0038911);
            v90 = llroundf(*(v64 + 8 + 2 * v57) * 0.0038911);
          }

          else
          {
            v89 = 0;
            v90 = 0;
          }

          _H0 = *(v51 + 2 * llroundf(v77));
          __asm { FCVT            S0, H0 }

          v93 = _S14 * _S0;
          v94 = _S18 * _S0;
          v95 = _S15 * _S0;
          _H19 = *(v51 + 2 * llroundf(v88));
          __asm { FCVT            S19, H19 }

          v98 = _S20 * _S19;
          v99 = _S21 * _S19;
          v100 = _S22 * _S19;
          v101 = ((v42 * v94) + (v93 * v130)) + (v95 * v43);
          v102 = ((v45 * v94) + (v93 * v44)) + (v95 * v46);
          v103 = ((v49 * v94) + (v93 * v47)) + (v95 * v48);
          _S2 = (v42 * v99) + (v98 * v130);
          _S18 = (v45 * v99) + (v98 * v44);
          v106 = (v49 * v99) + (v98 * v47);
          v107 = _S18 + (v100 * v46);
          LOWORD(_S18) = *(v52 + 2 * llroundf(fminf(fmaxf(v101, 0.0), 8191.0)));
          v108 = v106 + (v100 * v48);
          __asm { FCVT            S22, H18 }

          LOWORD(_S18) = *(v52 + 2 * llroundf(fminf(fmaxf(v102, 0.0), 8191.0)));
          v110 = llroundf(fminf(fmaxf(v103, 0.0), 8191.0));
          __asm { FCVT            S0, H18 }

          LOWORD(_S18) = *(v52 + 2 * v110);
          __asm { FCVT            S24, H18 }

          LOWORD(_S2) = *(v52 + 2 * llroundf(fminf(fmaxf(_S2 + (v100 * v43), 0.0), 8191.0)));
          __asm { FCVT            S18, H2 }

          LOWORD(_S2) = *(v52 + 2 * llroundf(fminf(fmaxf(v107, 0.0), 8191.0)));
          __asm { FCVT            S19, H2 }

          v114 = llroundf(fminf(fmaxf(v108, 0.0), 8191.0));
          v31 = v65;
          v115 = (v65 * _S0) + (v30 * _S22);
          _S0 = _S0 + _S19;
          v117 = (v136 + ((_S22 + _S18) * v135)) + (_S0 * v134);
          v118 = (v136 + ((_S22 + _S18) * v132)) + (_S0 * v131);
          LOWORD(_S0) = *(v52 + 2 * v114);
          __asm { FCVT            S0, H0 }

          v120 = v115 + (v32 * _S24);
          v121 = v117 + ((_S24 + _S0) * v133);
          v34 = v118 + ((_S24 + _S0) * v129);
          if (v121 < v38)
          {
            v122 = v38;
          }

          else
          {
            v122 = v121;
          }

          v123 = v120 + v36;
          if (v121 <= v39)
          {
            v124 = v122;
          }

          else
          {
            v124 = v39;
          }

          v125 = llroundf(v124);
          if (v123 < v36)
          {
            v126 = v36;
          }

          else
          {
            v126 = v123;
          }

          *v63 = v125;
          if (v123 <= v37)
          {
            v127 = v126;
          }

          else
          {
            v127 = v37;
          }

          v63[1] = llroundf(v127);
          v128 = v39;
          if (v34 <= v39)
          {
            v128 = v34;
            if (v34 < v38)
            {
              v128 = v38;
            }
          }

          v41 = (((v65 * _S19) + (v30 * _S18)) + (v32 * _S0)) + v36;
          v63[2] = llroundf(v128);
          v40 = v37;
          if (v41 <= v37)
          {
            v40 = v41;
            if (v41 < v36)
            {
              v40 = v36;
            }
          }

          v63[3] = llroundf(v40);
          if (v62)
          {
            *v62 = v89;
            v62[1] = v90;
            v62 += 2;
          }

          v64 += 16;
          v61 += 2;
          v63 += 4;
        }

        while (v61 < v29);
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

uint64_t vt_Copy_l64r_TRC_Mat_TRC_2vuyf(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, uint64_t a8, uint64_t a9)
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
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_l64r_TRC_Mat_TRC_2vuyf_GCD);
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

unsigned __int8 *vt_Copy_l64r_TRC_Mat_TRC_2vuyf_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, double a5, double a6, double a7, float a8, float a9, float a10)
{
  v18 = *result;
  v19 = *(result + 13);
  v20 = *(result + 14);
  v21 = v19 * a2 / v18;
  v22 = *(result + 16);
  v23 = v21 + *(result + 15);
  v24 = (v19 + v19 * a2) / v18 - v21;
  v25 = *(result + 17);
  v26 = v22[1];
  if (v26)
  {
    v26 += v25[1] * v23 + v20;
  }

  if (v24 >= 1)
  {
    v27 = 0;
    v28 = *(result + 28) * a2 / v18 + *(result + 44);
    v29 = **(result + 8);
    v30 = *v25;
    v31 = *(result + 19);
    v32 = *v22 + v30 * v23;
    v33 = **(result + 7) + v29 * v28 + 8 * *(result + 36);
    v34 = (v32 + v20);
    v35 = *(result + 24) & 0xFFFFFFFE;
    LOWORD(a8) = *(v31 + 144);
    LOWORD(a9) = *(v31 + 146);
    LOWORD(a10) = *(v31 + 148);
    LOWORD(v16) = *(v31 + 150);
    LOWORD(v17) = *(v31 + 152);
    v36 = *(v31 + 36);
    v37 = *(v31 + 40);
    v38 = *(v31 + 44);
    v39 = 8191.0 / *(v31 + 128);
    v40 = LODWORD(a8);
    v41 = LODWORD(a9);
    v42 = LODWORD(a10);
    v43 = v16;
    v44 = v17;
    v113 = *(v31 + 52) * 0.5;
    v114 = *(v31 + 48) * 0.5;
    v45 = *(v31 + 56) * 0.5;
    v46 = *(v31 + 60) * 0.5;
    v47 = *(v31 + 64) * 0.5;
    v48 = *(v31 + 72);
    v49 = *(v31 + 68) * 0.5;
    v50 = *(v31 + 76);
    v51 = *(v31 + 80);
    v52 = *(v31 + 84);
    v53 = *(v31 + 88);
    v54 = *(v31 + 92);
    v55 = *(v31 + 96);
    v57 = *(v31 + 100);
    v56 = *(v31 + 104);
    v58 = v31 + 164;
    v59 = v31 + 16548;
    v60 = *(v31 + 157);
    v61 = *(v31 + 156);
    v62 = *(v31 + 155);
    v63 = *(v31 + 154);
    do
    {
      if (v35 >= 1)
      {
        v64 = 0;
        v65 = v33;
        v66 = v26;
        v67 = v34;
        do
        {
          v68 = v65 + 8;
          if (v66)
          {
            LOWORD(v10) = *(v65 + 2 * v60);
            HIWORD(v11) = 15231;
            v69 = LODWORD(v10) * 0.0038911;
            v70 = llroundf(v69);
            LOWORD(v69) = *(v68 + 2 * v60);
            v10 = LODWORD(v69) * 0.0038911;
            v71 = llroundf(v10);
          }

          else
          {
            v70 = 0;
            v71 = 0;
          }

          LOWORD(v10) = *(v65 + 2 * v63);
          LOWORD(v11) = *(v65 + 2 * v62);
          LOWORD(_S12) = *(v65 + 2 * v61);
          LOWORD(v13) = *(v68 + 2 * v63);
          LOWORD(v14) = *(v68 + 2 * v62);
          LOWORD(_S15) = *(v68 + 2 * v61);
          _H10 = *(v58 + 2 * llroundf(fminf(fmaxf(v39 * LODWORD(v10), 0.0), 8191.0)));
          __asm { FCVT            S10, H10 }

          _H11 = *(v58 + 2 * llroundf(fminf(fmaxf(v39 * LODWORD(v11), 0.0), 8191.0)));
          __asm { FCVT            S11, H11 }

          _H12 = *(v58 + 2 * llroundf(fminf(fmaxf(v39 * LODWORD(_S12), 0.0), 8191.0)));
          __asm { FCVT            S12, H12 }

          _H13 = *(v58 + 2 * llroundf(fminf(fmaxf(v39 * LODWORD(v13), 0.0), 8191.0)));
          __asm { FCVT            S13, H13 }

          _H14 = *(v58 + 2 * llroundf(fminf(fmaxf(v39 * LODWORD(v14), 0.0), 8191.0)));
          __asm { FCVT            S14, H14 }

          v86 = llroundf(fminf(fmaxf(v39 * LODWORD(_S15), 0.0), 8191.0));
          _S15 = ((v50 * _S11) + (_S10 * v48)) + (_S12 * v51);
          _S18 = ((v53 * _S11) + (_S10 * v52)) + (_S12 * v54);
          _S10 = ((v57 * _S11) + (_S10 * v55)) + (_S12 * v56);
          v90 = (v50 * _S14) + (_S13 * v48);
          v91 = (v53 * _S14) + (_S13 * v52);
          v92 = (v57 * _S14) + (_S13 * v55);
          LOWORD(_S14) = *(v58 + 2 * v86);
          __asm { FCVT            S14, H14 }

          _S11 = v90 + (_S14 * v51);
          v95 = v91 + (_S14 * v54);
          LOWORD(_S15) = *(v59 + 2 * llroundf(fminf(fmaxf(_S15, 0.0), 8191.0)));
          v96 = v92 + (_S14 * v56);
          __asm { FCVT            S14, H15 }

          LOWORD(_S18) = *(v59 + 2 * llroundf(fminf(fmaxf(_S18, 0.0), 8191.0)));
          __asm { FCVT            S18, H18 }

          LOWORD(_S10) = *(v59 + 2 * llroundf(fminf(fmaxf(_S10, 0.0), 8191.0)));
          __asm { FCVT            S15, H10 }

          LOWORD(_S10) = *(v59 + 2 * llroundf(fminf(fmaxf(_S11, 0.0), 8191.0)));
          __asm { FCVT            S10, H10 }

          LOWORD(_S11) = *(v59 + 2 * llroundf(fminf(fmaxf(v95, 0.0), 8191.0)));
          __asm { FCVT            S11, H11 }

          v101 = llroundf(fminf(fmaxf(v96, 0.0), 8191.0));
          v102 = (v37 * _S18) + (v36 * _S14);
          _S12 = _S14 + _S10;
          v104 = _S18 + _S11;
          v105 = (v41 + ((_S14 + _S10) * v114)) + (v104 * v113);
          v106 = (v41 + (_S12 * v46)) + (v104 * v47);
          LOWORD(_S12) = *(v59 + 2 * v101);
          __asm { FCVT            S12, H12 }

          v107 = v102 + (v38 * _S15);
          v108 = v105 + ((_S15 + _S12) * v45);
          v13 = v106 + ((_S15 + _S12) * v49);
          if (v108 < v43)
          {
            v109 = v43;
          }

          else
          {
            v109 = v108;
          }

          v110 = v107 + v40;
          if (v108 > v44)
          {
            v109 = v44;
          }

          v111 = llroundf(v109);
          if (v110 < v40)
          {
            v112 = v40;
          }

          else
          {
            v112 = v110;
          }

          *v67 = v111;
          if (v110 > v42)
          {
            v112 = v42;
          }

          v67[1] = llroundf(v112);
          v14 = v44;
          if (v13 <= v44)
          {
            v14 = v13;
            if (v13 < v43)
            {
              v14 = v43;
            }
          }

          v10 = (((v37 * _S11) + (v36 * _S10)) + (v38 * _S12)) + v40;
          v67[2] = llroundf(v14);
          v11 = v42;
          if (v10 <= v42)
          {
            v11 = v10;
            if (v10 < v40)
            {
              v11 = v40;
            }
          }

          v67[3] = llroundf(v11);
          if (v66)
          {
            *v66 = v70;
            v66[1] = v71;
            v66 += 2;
          }

          v65 += 16;
          v64 += 2;
          v67 += 4;
        }

        while (v64 < v35);
      }

      v33 += v29;
      v34 += v30;
      ++v27;
    }

    while (v27 != v24);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_l64r_rgb_2vuyf(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, uint64_t a8, uint64_t a9)
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
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_l64r_rgb_2vuyf_GCD);
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

unsigned __int8 *vt_Copy_l64r_rgb_2vuyf_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, float a5, float a6, float a7, float a8)
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
    v24 = *(result + 19);
    v25 = *v15 + v23 * v16;
    v26 = **(result + 7) + v22 * v21 + 8 * *(result + 36);
    v27 = (v25 + v13);
    v28 = *(result + 24) & 0xFFFFFFFE;
    LOWORD(a5) = *(v24 + 144);
    LOWORD(a6) = *(v24 + 146);
    LOWORD(a7) = *(v24 + 148);
    v29 = *(v24 + 136) / *(v24 + 128);
    v30 = LODWORD(a5);
    v31 = LODWORD(a6);
    v32 = LODWORD(a7);
    LOWORD(a7) = *(v24 + 150);
    v33 = LODWORD(a7);
    LOWORD(a8) = *(v24 + 152);
    v34 = LODWORD(a8);
    v35 = *(v24 + 36);
    v36 = *(v24 + 40);
    v37 = *(v24 + 44);
    v38 = *(v24 + 48) * 0.5;
    v39 = *(v24 + 52) * 0.5;
    v40 = *(v24 + 56) * 0.5;
    v41 = *(v24 + 60) * 0.5;
    v42 = *(v24 + 64) * 0.5;
    v43 = *(v24 + 68) * 0.5;
    v44 = *(v24 + 157);
    v45 = *(v24 + 156);
    v46 = *(v24 + 155);
    v47 = *(v24 + 154);
    do
    {
      if (v28 >= 1)
      {
        v48 = 0;
        v49 = v26;
        v50 = v19;
        v51 = v27;
        do
        {
          v52 = v49 + 8;
          if (v50)
          {
            LOWORD(v8) = *(v49 + 2 * v44);
            v53 = LODWORD(v8) * 0.0038911;
            v54 = llroundf(v53);
            LOWORD(v53) = *(v52 + 2 * v44);
            v8 = LODWORD(v53) * 0.0038911;
            v55 = llroundf(v8);
          }

          else
          {
            v54 = 0;
            v55 = 0;
          }

          LOWORD(v8) = *(v49 + 2 * v47);
          LOWORD(v9) = *(v49 + 2 * v46);
          v56 = v29 * LODWORD(v8);
          *&v57 = LODWORD(v9);
          v58 = v29 * LODWORD(v9);
          LOWORD(v57) = *(v49 + 2 * v45);
          *&v59 = v57;
          v60 = v29 * *&v59;
          LOWORD(v59) = *(v52 + 2 * v47);
          LOWORD(v9) = *(v52 + 2 * v46);
          v61 = v29 * v59;
          v62 = v29 * LODWORD(v9);
          LOWORD(v10) = *(v52 + 2 * v45);
          v10 = v29 * LODWORD(v10);
          v63 = (((v36 * v58) + (v35 * v56)) + (v37 * v60)) + v30;
          v64 = v56 + v61;
          v65 = v58 + v62;
          v66 = v60 + v10;
          v67 = ((v31 + (v64 * v38)) + (v65 * v39)) + (v66 * v40);
          v68 = ((v31 + (v64 * v41)) + (v65 * v42)) + (v66 * v43);
          if (v67 < v33)
          {
            v69 = v33;
          }

          else
          {
            v69 = v67;
          }

          if (v67 > v34)
          {
            v69 = v34;
          }

          *v51 = llroundf(v69);
          if (v63 < v30)
          {
            v70 = v30;
          }

          else
          {
            v70 = v63;
          }

          if (v63 > v32)
          {
            v70 = v32;
          }

          v51[1] = llroundf(v70);
          v71 = v34;
          if (v68 <= v34)
          {
            v71 = v68;
            if (v68 < v33)
            {
              v71 = v33;
            }
          }

          v8 = (((v36 * v62) + (v35 * v61)) + (v37 * v10)) + v30;
          v51[2] = llroundf(v71);
          v9 = v32;
          if (v8 <= v32)
          {
            v9 = v8;
            if (v8 < v30)
            {
              v9 = v30;
            }
          }

          v51[3] = llroundf(v9);
          if (v50)
          {
            *v50 = v54;
            v50[1] = v55;
            v50 += 2;
          }

          v49 += 16;
          v48 += 2;
          v51 += 4;
        }

        while (v48 < v28);
      }

      v26 += v22;
      v27 += v23;
      ++v20;
    }

    while (v20 != v17);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_l64r_TRC_Tone_Mat_TRC_yuvsf(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, uint64_t a8, uint64_t a9)
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
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_l64r_TRC_Tone_Mat_TRC_yuvsf_GCD);
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

unsigned __int8 *vt_Copy_l64r_TRC_Tone_Mat_TRC_yuvsf_GCD(unsigned __int8 *result, uint64_t a2, double a3, float a4, double a5, double a6, double a7, double a8, float a9, float a10)
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
    v134 = *(v25 + 40);
    v135 = *(v25 + 36);
    v30 = *(v25 + 44);
    v31 = *(v25 + 48);
    v32 = *(v25 + 52);
    v33 = *(v25 + 56);
    v34 = 8191.0 / *(v25 + 128);
    v35 = LODWORD(a4);
    v36 = LODWORD(a9);
    v37 = LODWORD(a10);
    v38 = v10;
    v39 = v11;
    v133 = v31 * 0.5;
    v132 = v32 * 0.5;
    v131 = v33 * 0.5;
    v130 = *(v25 + 60) * 0.5;
    v129 = *(v25 + 64) * 0.5;
    v40 = *(v25 + 68);
    v41 = *(v25 + 72);
    v42 = v40 * 0.5;
    v128 = v40 * 0.5;
    v43 = *(v25 + 76);
    v44 = *(v25 + 80);
    v45 = *(v25 + 84);
    v46 = *(v25 + 88);
    v47 = *(v25 + 92);
    v48 = *(v25 + 96);
    v50 = *(v25 + 100);
    v49 = *(v25 + 104);
    v51 = v25 + 164;
    v52 = v25 + 16548;
    v53 = v25 + 32932;
    v54 = *(v25 + 108);
    v55 = *(v25 + 112);
    v56 = *(v25 + 116);
    v57 = *(v25 + 120);
    v58 = *(v25 + 157);
    v59 = *(v25 + 156);
    v60 = *(v25 + 155);
    v61 = *(v25 + 154);
    do
    {
      if (v29 >= 1)
      {
        v62 = 0;
        v63 = v20;
        v64 = v28;
        v65 = v27;
        do
        {
          LOWORD(v42) = *(v65 + 2 * v61);
          LOWORD(v40) = *(v65 + 2 * v60);
          LOWORD(v31) = *(v65 + 2 * v59);
          _H0 = *(v51 + 2 * llroundf(fminf(fmaxf(v34 * LODWORD(v42), 0.0), 8191.0)));
          __asm { FCVT            S14, H0 }

          _H0 = *(v51 + 2 * llroundf(fminf(fmaxf(v34 * LODWORD(v40), 0.0), 8191.0)));
          __asm { FCVT            S15, H0 }

          _H0 = *(v51 + 2 * llroundf(fminf(fmaxf(v34 * LODWORD(v31), 0.0), 8191.0)));
          __asm { FCVT            S18, H0 }

          v76 = (((v55 * _S15) + (v54 * _S14)) + (v56 * _S18)) + (v57 * fmaxf(_S14, fmaxf(_S15, _S18)));
          v77 = 8191.0;
          if (v76 <= 8191.0)
          {
            v77 = v76;
            if (v76 < 0.0)
            {
              v77 = 0.0;
            }
          }

          LOWORD(v76) = *(v65 + 8 + 2 * v61);
          LOWORD(v32) = *(v65 + 8 + 2 * v60);
          LOWORD(v33) = *(v65 + 8 + 2 * v59);
          _H0 = *(v51 + 2 * llroundf(fminf(fmaxf(v34 * LODWORD(v76), 0.0), 8191.0)));
          v79 = v34 * LODWORD(v33);
          __asm { FCVT            S20, H0 }

          _H0 = *(v51 + 2 * llroundf(fminf(fmaxf(v34 * LODWORD(v32), 0.0), 8191.0)));
          v82 = llroundf(fminf(fmaxf(v79, 0.0), 8191.0));
          __asm { FCVT            S21, H0 }

          _H0 = *(v51 + 2 * v82);
          __asm { FCVT            S22, H0 }

          v86 = (((v55 * _S21) + (v54 * _S20)) + (v56 * _S22)) + (v57 * fmaxf(_S20, fmaxf(_S21, _S22)));
          v87 = 8191.0;
          if (v86 <= 8191.0)
          {
            v87 = v86;
            if (v86 < 0.0)
            {
              v87 = 0.0;
            }
          }

          if (v63)
          {
            v88 = llroundf(*(v65 + 2 * v58) * 0.0038911);
            v89 = llroundf(*(v65 + 8 + 2 * v58) * 0.0038911);
          }

          else
          {
            v88 = 0;
            v89 = 0;
          }

          _H0 = *(v52 + 2 * llroundf(v77));
          __asm { FCVT            S0, H0 }

          v92 = _S14 * _S0;
          v93 = _S15 * _S0;
          v94 = _S18 * _S0;
          _H18 = *(v52 + 2 * llroundf(v87));
          __asm { FCVT            S18, H18 }

          _S19 = _S20 * _S18;
          _S20 = _S21 * _S18;
          v99 = _S22 * _S18;
          v100 = ((v43 * v93) + (v92 * v41)) + (v94 * v44);
          v101 = ((v46 * v93) + (v92 * v45)) + (v94 * v47);
          _S0 = ((v50 * v93) + (v92 * v48)) + (v94 * v49);
          _S1 = ((v43 * _S20) + (_S19 * v41)) + (v99 * v44);
          v104 = ((v46 * _S20) + (_S19 * v45)) + (v99 * v47);
          v105 = ((v50 * _S20) + (_S19 * v48)) + (v99 * v49);
          LOWORD(_S19) = *(v53 + 2 * llroundf(fminf(fmaxf(v100, 0.0), 8191.0)));
          __asm { FCVT            S19, H19 }

          LOWORD(_S20) = *(v53 + 2 * llroundf(fminf(fmaxf(v101, 0.0), 8191.0)));
          __asm { FCVT            S20, H20 }

          v108 = llroundf(fminf(fmaxf(_S0, 0.0), 8191.0));
          LOWORD(_S0) = *(v53 + 2 * llroundf(fminf(fmaxf(_S1, 0.0), 8191.0)));
          __asm { FCVT            S0, H0 }

          LOWORD(_S1) = *(v53 + 2 * llroundf(fminf(fmaxf(v104, 0.0), 8191.0)));
          __asm { FCVT            S1, H1 }

          v111 = llroundf(fminf(fmaxf(v105, 0.0), 8191.0));
          v112 = (v134 * _S20) + (v135 * _S19);
          v113 = (v134 * _S1) + (v135 * _S0);
          v114 = _S19 + _S0;
          LOWORD(_S19) = *(v53 + 2 * v108);
          v115 = _S20 + _S1;
          LOWORD(_S20) = *(v53 + 2 * v111);
          __asm
          {
            FCVT            S19, H19
            FCVT            S20, H20
          }

          v118 = (v112 + (v30 * _S19)) + v35;
          v119 = v113 + (v30 * _S20);
          v32 = _S19 + _S20;
          v33 = (v36 + (v114 * v133)) + (v115 * v132);
          v120 = (v36 + (v114 * v130)) + (v115 * v129);
          if (v118 < v35)
          {
            v121 = v35;
          }

          else
          {
            v121 = v118;
          }

          v122 = v118 <= v37;
          v123 = v33 + (v32 * v131);
          if (!v122)
          {
            v121 = v37;
          }

          v124 = llroundf(v121);
          if (v123 < v38)
          {
            v125 = v38;
          }

          else
          {
            v125 = v33 + (v32 * v131);
          }

          if (v123 > v39)
          {
            v125 = v39;
          }

          v126 = llroundf(v125);
          v42 = v120 + (v32 * v128);
          if ((v119 + v35) < v35)
          {
            v127 = v35;
          }

          else
          {
            v127 = v119 + v35;
          }

          *v64 = v124;
          v64[1] = v126;
          if ((v119 + v35) <= v37)
          {
            v40 = v127;
          }

          else
          {
            v40 = v37;
          }

          v64[2] = llroundf(v40);
          v31 = v39;
          if (v42 <= v39)
          {
            v31 = v42;
            if (v42 < v38)
            {
              v31 = v38;
            }
          }

          v64[3] = llroundf(v31);
          if (v63)
          {
            *v63 = v88;
            v63[1] = v89;
            v63 += 2;
          }

          v65 += 16;
          v62 += 2;
          v64 += 4;
        }

        while (v62 < v29);
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

uint64_t vt_Copy_l64r_TRC_Mat_TRC_yuvsf(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, uint64_t a8, uint64_t a9)
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
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_l64r_TRC_Mat_TRC_yuvsf_GCD);
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

unsigned __int8 *vt_Copy_l64r_TRC_Mat_TRC_yuvsf_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, double a5, double a6, double a7, float a8, float a9, float a10)
{
  v18 = *result;
  v19 = *(result + 13);
  v20 = *(result + 14);
  v21 = v19 * a2 / v18;
  v22 = *(result + 16);
  v23 = v21 + *(result + 15);
  v24 = (v19 + v19 * a2) / v18 - v21;
  v25 = *(result + 17);
  v26 = v22[1];
  if (v26)
  {
    v26 += v25[1] * v23 + v20;
  }

  if (v24 >= 1)
  {
    v27 = 0;
    v28 = *(result + 28) * a2 / v18 + *(result + 44);
    v29 = **(result + 8);
    v30 = *v25;
    v31 = *(result + 19);
    v32 = *v22 + v30 * v23;
    v33 = **(result + 7) + v29 * v28 + 8 * *(result + 36);
    v34 = (v32 + v20);
    v35 = *(result + 24) & 0xFFFFFFFE;
    LOWORD(a8) = *(v31 + 144);
    LOWORD(a9) = *(v31 + 146);
    LOWORD(a10) = *(v31 + 148);
    LOWORD(v16) = *(v31 + 150);
    LOWORD(v17) = *(v31 + 152);
    v36 = *(v31 + 36);
    v37 = *(v31 + 40);
    v38 = *(v31 + 44);
    v39 = 8191.0 / *(v31 + 128);
    v40 = LODWORD(a8);
    v41 = LODWORD(a9);
    v42 = LODWORD(a10);
    v43 = v16;
    v44 = v17;
    v119 = *(v31 + 48) * 0.5;
    v45 = *(v31 + 52) * 0.5;
    v46 = *(v31 + 56) * 0.5;
    v47 = *(v31 + 60) * 0.5;
    v48 = *(v31 + 64) * 0.5;
    v49 = *(v31 + 72);
    v50 = *(v31 + 68) * 0.5;
    v51 = *(v31 + 76);
    v52 = *(v31 + 80);
    v53 = *(v31 + 84);
    v54 = *(v31 + 88);
    v55 = *(v31 + 92);
    v56 = *(v31 + 96);
    v58 = *(v31 + 100);
    v57 = *(v31 + 104);
    v59 = v31 + 164;
    v60 = v31 + 16548;
    v61 = *(v31 + 157);
    v62 = *(v31 + 156);
    v63 = *(v31 + 155);
    v64 = *(v31 + 154);
    do
    {
      if (v35 >= 1)
      {
        v65 = 0;
        v66 = v33;
        v67 = v26;
        v68 = v34;
        do
        {
          v69 = v66 + 8;
          if (v67)
          {
            LOWORD(v10) = *(v66 + 2 * v61);
            HIWORD(v11) = 15231;
            v70 = LODWORD(v10) * 0.0038911;
            v71 = llroundf(v70);
            LOWORD(v70) = *(v69 + 2 * v61);
            v10 = LODWORD(v70) * 0.0038911;
            v72 = llroundf(v10);
          }

          else
          {
            v71 = 0;
            v72 = 0;
          }

          LOWORD(v10) = *(v66 + 2 * v64);
          LOWORD(v11) = *(v66 + 2 * v63);
          LOWORD(v12) = *(v66 + 2 * v62);
          LOWORD(v13) = *(v69 + 2 * v64);
          LOWORD(v14) = *(v69 + 2 * v63);
          LOWORD(v15) = *(v69 + 2 * v62);
          _H10 = *(v59 + 2 * llroundf(fminf(fmaxf(v39 * LODWORD(v10), 0.0), 8191.0)));
          __asm { FCVT            S10, H10 }

          _H11 = *(v59 + 2 * llroundf(fminf(fmaxf(v39 * LODWORD(v11), 0.0), 8191.0)));
          __asm { FCVT            S11, H11 }

          _H12 = *(v59 + 2 * llroundf(fminf(fmaxf(v39 * LODWORD(v12), 0.0), 8191.0)));
          __asm { FCVT            S12, H12 }

          _H13 = *(v59 + 2 * llroundf(fminf(fmaxf(v39 * LODWORD(v13), 0.0), 8191.0)));
          __asm { FCVT            S13, H13 }

          _H14 = *(v59 + 2 * llroundf(fminf(fmaxf(v39 * LODWORD(v14), 0.0), 8191.0)));
          __asm { FCVT            S14, H14 }

          v87 = llroundf(fminf(fmaxf(v39 * LODWORD(v15), 0.0), 8191.0));
          v15 = ((v51 * _S11) + (_S10 * v49)) + (_S12 * v52);
          v88 = ((v54 * _S11) + (_S10 * v53)) + (_S12 * v55);
          _S10 = ((v58 * _S11) + (_S10 * v56)) + (_S12 * v57);
          v90 = (v51 * _S14) + (_S13 * v49);
          v91 = (v54 * _S14) + (_S13 * v53);
          v92 = (v58 * _S14) + (_S13 * v56);
          LOWORD(_S14) = *(v59 + 2 * v87);
          __asm { FCVT            S14, H14 }

          _S11 = v90 + (_S14 * v52);
          v95 = v91 + (_S14 * v55);
          v96 = v92 + (_S14 * v57);
          LOWORD(_S14) = *(v60 + 2 * llroundf(fminf(fmaxf(v15, 0.0), 8191.0)));
          v97 = llroundf(fminf(fmaxf(v88, 0.0), 8191.0));
          __asm { FCVT            S18, H14 }

          LOWORD(_S14) = *(v60 + 2 * v97);
          __asm { FCVT            S14, H14 }

          v100 = llroundf(fminf(fmaxf(_S10, 0.0), 8191.0));
          LOWORD(_S10) = *(v60 + 2 * llroundf(fminf(fmaxf(_S11, 0.0), 8191.0)));
          __asm { FCVT            S10, H10 }

          LOWORD(_S11) = *(v60 + 2 * llroundf(fminf(fmaxf(v95, 0.0), 8191.0)));
          __asm { FCVT            S11, H11 }

          v103 = llroundf(fminf(fmaxf(v96, 0.0), 8191.0));
          v104 = (v37 * _S14) + (v36 * _S18);
          v105 = (v37 * _S11) + (v36 * _S10);
          v106 = _S18 + _S10;
          LOWORD(_S10) = *(v60 + 2 * v100);
          v107 = _S14 + _S11;
          LOWORD(_S14) = *(v60 + 2 * v103);
          __asm
          {
            FCVT            S10, H10
            FCVT            S14, H14
          }

          v110 = (v104 + (v38 * _S10)) + v40;
          v13 = v105 + (v38 * _S14);
          v111 = _S10 + _S14;
          v14 = (v41 + (v106 * v119)) + (v107 * v45);
          v112 = (v41 + (v106 * v47)) + (v107 * v48);
          if (v110 < v40)
          {
            v113 = v40;
          }

          else
          {
            v113 = v110;
          }

          v114 = v110 <= v42;
          v12 = v14 + (v111 * v46);
          if (!v114)
          {
            v113 = v42;
          }

          v115 = llroundf(v113);
          if (v12 < v43)
          {
            v116 = v43;
          }

          else
          {
            v116 = v14 + (v111 * v46);
          }

          if (v12 > v44)
          {
            v116 = v44;
          }

          v117 = llroundf(v116);
          v10 = v112 + (v111 * v50);
          if ((v13 + v40) < v40)
          {
            v118 = v40;
          }

          else
          {
            v118 = v13 + v40;
          }

          *v68 = v115;
          v68[1] = v117;
          if ((v13 + v40) > v42)
          {
            v118 = v42;
          }

          v68[2] = llroundf(v118);
          v11 = v44;
          if (v10 <= v44)
          {
            v11 = v10;
            if (v10 < v43)
            {
              v11 = v43;
            }
          }

          v68[3] = llroundf(v11);
          if (v67)
          {
            *v67 = v71;
            v67[1] = v72;
            v67 += 2;
          }

          v66 += 16;
          v65 += 2;
          v68 += 4;
        }

        while (v65 < v35);
      }

      v33 += v29;
      v34 += v30;
      ++v27;
    }

    while (v27 != v24);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_l64r_rgb_yuvsf(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, uint64_t a8, uint64_t a9)
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
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_l64r_rgb_yuvsf_GCD);
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

unsigned __int8 *vt_Copy_l64r_rgb_yuvsf_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, float a5, float a6, float a7, float a8)
{
  v14 = *result;
  v15 = *(result + 13);
  v16 = *(result + 14);
  v17 = v15 * a2 / v14;
  v18 = *(result + 16);
  v19 = v17 + *(result + 15);
  v20 = (v15 + v15 * a2) / v14 - v17;
  v21 = *(result + 17);
  v22 = v18[1];
  if (v22)
  {
    v22 += v21[1] * v19 + v16;
  }

  if (v20 >= 1)
  {
    v23 = 0;
    v24 = *(result + 28) * a2 / v14 + *(result + 44);
    v25 = **(result + 8);
    v26 = *v21;
    v27 = *(result + 19);
    v28 = *v18 + v26 * v19;
    v29 = **(result + 7) + v25 * v24 + 8 * *(result + 36);
    v30 = (v28 + v16);
    v31 = *(result + 24) & 0xFFFFFFFE;
    LOWORD(a5) = *(v27 + 144);
    LOWORD(a6) = *(v27 + 146);
    LOWORD(a7) = *(v27 + 148);
    v32 = *(v27 + 136) / *(v27 + 128);
    v33 = LODWORD(a5);
    v34 = LODWORD(a6);
    v35 = LODWORD(a7);
    LOWORD(a7) = *(v27 + 150);
    v36 = LODWORD(a7);
    LOWORD(a8) = *(v27 + 152);
    v37 = LODWORD(a8);
    v38 = *(v27 + 36);
    v39 = *(v27 + 40);
    v40 = *(v27 + 44);
    v41 = *(v27 + 48) * 0.5;
    v42 = *(v27 + 52) * 0.5;
    v43 = *(v27 + 56) * 0.5;
    v44 = *(v27 + 60) * 0.5;
    v45 = *(v27 + 64) * 0.5;
    v46 = *(v27 + 68) * 0.5;
    v47 = *(v27 + 157);
    v48 = *(v27 + 156);
    v49 = *(v27 + 155);
    v50 = *(v27 + 154);
    do
    {
      if (v31 >= 1)
      {
        v51 = 0;
        v52 = v29;
        v53 = v22;
        v54 = v30;
        do
        {
          v55 = v52 + 8;
          if (v53)
          {
            LOWORD(v8) = *(v52 + 2 * v47);
            v56 = LODWORD(v8) * 0.0038911;
            v57 = llroundf(v56);
            LOWORD(v56) = *(v55 + 2 * v47);
            v8 = LODWORD(v56) * 0.0038911;
            v58 = llroundf(v8);
          }

          else
          {
            v57 = 0;
            v58 = 0;
          }

          LOWORD(v8) = *(v52 + 2 * v50);
          v59 = v32 * LODWORD(v8);
          LOWORD(v9) = *(v52 + 2 * v49);
          v60 = v32 * LODWORD(v9);
          LOWORD(v10) = *(v52 + 2 * v48);
          v61 = v32 * LODWORD(v10);
          LOWORD(v11) = *(v55 + 2 * v50);
          v62 = v32 * LODWORD(v11);
          LOWORD(v12) = *(v55 + 2 * v49);
          v12 = v32 * LODWORD(v12);
          LOWORD(v13) = *(v55 + 2 * v48);
          v13 = v32 * LODWORD(v13);
          v63 = (((v39 * v60) + (v38 * v59)) + (v40 * v61)) + v33;
          v64 = (((v39 * v12) + (v38 * v62)) + (v40 * v13)) + v33;
          v65 = v59 + v62;
          v66 = v60 + v12;
          v10 = v61 + v13;
          v11 = ((v34 + (v65 * v41)) + (v66 * v42)) + (v10 * v43);
          v67 = (v34 + (v65 * v44)) + (v66 * v45);
          if (v63 < v33)
          {
            v68 = v33;
          }

          else
          {
            v68 = v63;
          }

          if (v63 > v35)
          {
            v68 = v35;
          }

          v8 = v67 + (v10 * v46);
          *v54 = llroundf(v68);
          if (v11 < v36)
          {
            v69 = v36;
          }

          else
          {
            v69 = v11;
          }

          if (v11 > v37)
          {
            v69 = v37;
          }

          v54[1] = llroundf(v69);
          if (v64 < v33)
          {
            v70 = v33;
          }

          else
          {
            v70 = v64;
          }

          if (v64 > v35)
          {
            v70 = v35;
          }

          v54[2] = llroundf(v70);
          v9 = v37;
          if (v8 <= v37)
          {
            v9 = v8;
            if (v8 < v36)
            {
              v9 = v36;
            }
          }

          v54[3] = llroundf(v9);
          if (v53)
          {
            *v53 = v57;
            v53[1] = v58;
            v53 += 2;
          }

          v52 += 16;
          v51 += 2;
          v54 += 4;
        }

        while (v51 < v31);
      }

      v29 += v25;
      v30 += v26;
      ++v23;
    }

    while (v23 != v20);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_l64r_TRC_Tone_Mat_TRC_xf422(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4, void *a5, uint64_t *a6, uint64_t a7, void *a8, void *a9)
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
  dispatch_apply_f(v10, global_queue, v22, vt_Copy_l64r_TRC_Tone_Mat_TRC_xf422_GCD);
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

unsigned __int8 *vt_Copy_l64r_TRC_Tone_Mat_TRC_xf422_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, float a5, float a6, float a7, float a8)
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
    v128 = LODWORD(a8);
    LOWORD(a8) = *(v14 + 152);
    v26 = LODWORD(a8);
    v27 = *(v14 + 40);
    v129 = *(v14 + 36);
    v28 = *(v14 + 44);
    v29 = 0.5;
    v127 = *(v14 + 48) * 0.5;
    v126 = *(v14 + 52) * 0.5;
    v125 = *(v14 + 56) * 0.5;
    v30 = *(v14 + 64);
    v124 = *(v14 + 60) * 0.5;
    v123 = v30 * 0.5;
    v31 = *(v14 + 68);
    v32 = *(v14 + 72);
    v122 = v31 * 0.5;
    v33 = *(v14 + 76);
    v34 = *(v14 + 80);
    v35 = *(v14 + 84);
    v36 = *(v14 + 88);
    v37 = *(v14 + 92);
    v38 = *(v14 + 96);
    v40 = *(v14 + 100);
    v39 = *(v14 + 104);
    v41 = v14 + 164;
    v42 = v14 + 16548;
    v43 = v14 + 32932;
    v44 = *(v14 + 108);
    v45 = *(v14 + 112);
    v46 = *(v14 + 116);
    v47 = *(v14 + 120);
    v48 = *(result + 14);
    v49 = v11 + *(result + 15);
    v50 = *(result + 28) * a2 / v9 + *(result + 44);
    v51 = *(v14 + 132);
    if (v51 >= 0x11)
    {
      v52 = 0;
    }

    else
    {
      v52 = 16 - v51;
    }

    v53 = *(v14 + 157);
    v54 = *(v14 + 156);
    v55 = *(v14 + 155);
    v56 = *(v14 + 154);
    v57 = v17[2];
    if (v57)
    {
      v58 = v57 + v21 * v49 + 2 * v48;
    }

    else
    {
      v58 = 0;
    }

    v60 = *v17;
    v59 = v17[1];
    v61 = v59 + v20 * v49 + 2 * v48;
    if (!v59)
    {
      v61 = 0;
    }

    v62 = v60 + v19 * v49 + 2 * v48;
    v63 = **(result + 7) + v50 * v16 + 8 * *(result + 36);
    v64 = v52;
    do
    {
      if (v15 >= 1)
      {
        v65 = 0;
        v66 = v58;
        v67 = v62;
        v68 = v63;
        do
        {
          LOWORD(v31) = *(v68 + 2 * v56);
          LOWORD(v29) = *(v68 + 2 * v55);
          LOWORD(v30) = *(v68 + 2 * v54);
          _H5 = *(v41 + 2 * llroundf(fminf(fmaxf(v22 * LODWORD(v31), 0.0), 8191.0)));
          __asm { FCVT            S14, H5 }

          _H5 = *(v41 + 2 * llroundf(fminf(fmaxf(v22 * LODWORD(v29), 0.0), 8191.0)));
          __asm { FCVT            S18, H5 }

          _H5 = *(v41 + 2 * llroundf(fminf(fmaxf(v22 * LODWORD(v30), 0.0), 8191.0)));
          __asm { FCVT            S19, H5 }

          v79 = ((v45 * _S18) + (v44 * _S14)) + (v46 * _S19);
          v80 = v79 + (v47 * fmaxf(_S14, fmaxf(_S18, _S19)));
          v81 = 8191.0;
          if (v80 <= 8191.0)
          {
            v81 = v80;
            if (v80 < 0.0)
            {
              v81 = 0.0;
            }
          }

          LOWORD(v79) = *(v68 + 8 + 2 * v56);
          LOWORD(v80) = *(v68 + 8 + 2 * v55);
          LOWORD(v8) = *(v68 + 8 + 2 * v54);
          _H5 = *(v41 + 2 * llroundf(fminf(fmaxf(v22 * LODWORD(v79), 0.0), 8191.0)));
          __asm { FCVT            S15, H5 }

          _H5 = *(v41 + 2 * llroundf(fminf(fmaxf(v22 * LODWORD(v80), 0.0), 8191.0)));
          __asm { FCVT            S20, H5 }

          _H5 = *(v41 + 2 * llroundf(fminf(fmaxf(v22 * LODWORD(v8), 0.0), 8191.0)));
          __asm { FCVT            S21, H5 }

          v88 = (((v45 * _S20) + (v44 * _S15)) + (v46 * _S21)) + (v47 * fmaxf(_S15, fmaxf(_S20, _S21)));
          v89 = 8191.0;
          if (v88 <= 8191.0)
          {
            v89 = v88;
            if (v88 < 0.0)
            {
              v89 = 0.0;
            }
          }

          _H22 = *(v42 + 2 * llroundf(v81));
          __asm { FCVT            S22, H22 }

          _S18 = _S18 * _S22;
          v93 = _S19 * _S22;
          _S3 = ((v36 * _S18) + ((_S14 * _S22) * v35)) + (v93 * v37);
          v95 = llroundf(fminf(fmaxf(((v33 * _S18) + ((_S14 * _S22) * v32)) + (v93 * v34), 0.0), 8191.0));
          v96 = ((v40 * _S18) + ((_S14 * _S22) * v38)) + (v93 * v39);
          LOWORD(_S18) = *(v43 + 2 * v95);
          __asm { FCVT            S14, H18 }

          LOWORD(_S3) = *(v43 + 2 * llroundf(fminf(fmaxf(_S3, 0.0), 8191.0)));
          __asm { FCVT            S18, H3 }

          LOWORD(_S3) = *(v43 + 2 * llroundf(fminf(fmaxf(v96, 0.0), 8191.0)));
          __asm { FCVT            S19, H3 }

          v100 = (((v27 * _S18) + (v129 * _S14)) + (v28 * _S19)) + v23;
          v101 = v25;
          if (v100 <= v25)
          {
            v101 = (((v27 * _S18) + (v129 * _S14)) + (v28 * _S19)) + v23;
            if (v100 < v23)
            {
              v101 = v23;
            }
          }

          v102 = *(v68 + 2 * v53);
          v103 = *(v68 + 8 + 2 * v53);
          _H3 = *(v42 + 2 * llroundf(v89));
          __asm { FCVT            S3, H3 }

          _S5 = _S15 * _S3;
          v107 = _S20 * _S3;
          v108 = _S21 * _S3;
          v109 = ((v33 * v107) + (_S5 * v32)) + (v108 * v34);
          v110 = ((v36 * v107) + (_S5 * v35)) + (v108 * v37);
          _S3 = ((v40 * v107) + (_S5 * v38)) + (v108 * v39);
          LOWORD(_S5) = *(v43 + 2 * llroundf(fminf(fmaxf(v109, 0.0), 8191.0)));
          __asm { FCVT            S20, H5 }

          LOWORD(_S5) = *(v43 + 2 * llroundf(fminf(fmaxf(v110, 0.0), 8191.0)));
          LOWORD(_S3) = *(v43 + 2 * llroundf(fminf(fmaxf(_S3, 0.0), 8191.0)));
          __asm
          {
            FCVT            S24, H5
            FCVT            S21, H3
          }

          v115 = (((v27 * _S24) + (v129 * _S20)) + (v28 * _S21)) + v23;
          *v67 = llroundf(v101) << v64;
          v116 = v25;
          if (v115 <= v25)
          {
            v116 = (((v27 * _S24) + (v129 * _S20)) + (v28 * _S21)) + v23;
            if (v115 < v23)
            {
              v116 = v23;
            }
          }

          v67[1] = llroundf(v116) << v64;
          v117 = _S14 + _S20;
          v118 = _S18 + _S24;
          v119 = _S19 + _S21;
          v120 = ((v24 + (v117 * v127)) + (v118 * v126)) + (v119 * v125);
          v8 = v26;
          if (v120 <= v26)
          {
            v8 = ((v24 + (v117 * v127)) + (v118 * v126)) + (v119 * v125);
            if (v120 < v128)
            {
              v8 = v128;
            }
          }

          v121 = (v61 + 2 * v65);
          HIWORD(v31) = HIWORD(v122);
          v29 = ((v24 + (v117 * v124)) + (v118 * v123)) + (v119 * v122);
          *v121 = llroundf(v8) << v64;
          v30 = v26;
          if (v29 <= v26)
          {
            v30 = v29;
            if (v29 < v128)
            {
              v30 = v128;
            }
          }

          v121[1] = llroundf(v30) << v64;
          if (v66)
          {
            *v66 = v102;
            v66[1] = v103;
            v66 += 2;
          }

          v68 += 16;
          v65 += 2;
          v67 += 2;
        }

        while (v65 < v15);
      }

      v63 += v16;
      v62 += v19;
      v61 += v20;
      v58 += v21;
      ++v13;
    }

    while (v13 != v12);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_l64r_TRC_Mat_TRC_xf422(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4, void *a5, uint64_t *a6, uint64_t a7, void *a8, void *a9)
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
  dispatch_apply_f(v10, global_queue, v22, vt_Copy_l64r_TRC_Mat_TRC_xf422_GCD);
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

unsigned __int8 *vt_Copy_l64r_TRC_Mat_TRC_xf422_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, float a5, float a6, float a7, float a8, float a9)
{
  v11 = *result;
  v12 = *(result + 13);
  v13 = v12 * a2 / v11;
  v14 = (v12 + v12 * a2) / v11 - v13;
  if (v14 >= 1)
  {
    v15 = 0;
    v16 = *(result + 19);
    v17 = *(result + 24) & 0xFFFFFFFE;
    v18 = **(result + 8);
    v19 = *(result + 16);
    v20 = *(result + 17);
    v21 = *v20;
    v22 = v20[1];
    v23 = v20[2];
    v24 = 8191.0 / *(v16 + 128);
    LOWORD(a5) = *(v16 + 144);
    v25 = LODWORD(a5);
    LOWORD(a6) = *(v16 + 146);
    v26 = LODWORD(a6);
    LOWORD(a7) = *(v16 + 148);
    v27 = LODWORD(a7);
    LOWORD(a8) = *(v16 + 150);
    v28 = LODWORD(a8);
    LOWORD(a9) = *(v16 + 152);
    v29 = LODWORD(a9);
    v30 = *(v16 + 36);
    v31 = *(v16 + 40);
    v32 = *(v16 + 44);
    v33 = 0.5;
    v111 = *(v16 + 52) * 0.5;
    v112 = *(v16 + 48) * 0.5;
    v110 = *(v16 + 56) * 0.5;
    v34 = *(v16 + 60) * 0.5;
    v35 = *(v16 + 64) * 0.5;
    v36 = *(v16 + 68);
    v37 = *(v16 + 72);
    v38 = v36 * 0.5;
    v39 = *(v16 + 76);
    v40 = *(v16 + 80);
    v41 = *(v16 + 84);
    v42 = *(v16 + 88);
    v43 = *(v16 + 92);
    v44 = *(v16 + 96);
    v46 = *(v16 + 100);
    v45 = *(v16 + 104);
    v47 = v16 + 164;
    v48 = v16 + 16548;
    v49 = *(result + 14);
    v50 = v13 + *(result + 15);
    v51 = *(result + 28) * a2 / v11 + *(result + 44);
    v52 = *(v16 + 132);
    if (v52 >= 0x11)
    {
      v53 = 0;
    }

    else
    {
      v53 = 16 - v52;
    }

    v54 = *(v16 + 157);
    v55 = *(v16 + 156);
    v56 = *(v16 + 155);
    v57 = *(v16 + 154);
    v58 = v19[2];
    if (v58)
    {
      v59 = v58 + v23 * v50 + 2 * v49;
    }

    else
    {
      v59 = 0;
    }

    v61 = *v19;
    v60 = v19[1];
    v62 = v60 + v22 * v50 + 2 * v49;
    if (!v60)
    {
      v62 = 0;
    }

    v63 = v61 + v21 * v50 + 2 * v49;
    v64 = **(result + 7) + v51 * v18 + 8 * *(result + 36);
    v65 = v53;
    do
    {
      if (v17 >= 1)
      {
        v66 = 0;
        v67 = v64;
        v68 = v59;
        v69 = v63;
        do
        {
          LOWORD(v36) = *(v67 + 2 * v57);
          LOWORD(v33) = *(v67 + 2 * v56);
          LOWORD(v9) = *(v67 + 2 * v55);
          v70 = llroundf(fminf(fmaxf(v24 * LODWORD(v36), 0.0), 8191.0));
          _S18 = v24 * LODWORD(v9);
          _H10 = *(v47 + 2 * v70);
          __asm { FCVT            S10, H10 }

          _H19 = *(v47 + 2 * llroundf(fminf(fmaxf(v24 * LODWORD(v33), 0.0), 8191.0)));
          __asm { FCVT            S19, H19 }

          LOWORD(_S18) = *(v47 + 2 * llroundf(fminf(fmaxf(_S18, 0.0), 8191.0)));
          __asm { FCVT            S18, H18 }

          v81 = ((v39 * _S19) + (_S10 * v37)) + (_S18 * v40);
          v82 = ((v42 * _S19) + (_S10 * v41)) + (_S18 * v43);
          _S18 = ((v46 * _S19) + (_S10 * v44)) + (_S18 * v45);
          LOWORD(_S19) = *(v48 + 2 * llroundf(fminf(fmaxf(v81, 0.0), 8191.0)));
          __asm { FCVT            S10, H19 }

          _S19 = fminf(fmaxf(v82, 0.0), 8191.0);
          LOWORD(_S19) = *(v48 + 2 * llroundf(_S19));
          __asm { FCVT            S11, H19 }

          LOWORD(_S18) = *(v48 + 2 * llroundf(fminf(fmaxf(_S18, 0.0), 8191.0)));
          __asm { FCVT            S12, H18 }

          v88 = (((v31 * _S11) + (v30 * _S10)) + (v32 * _S12)) + v25;
          v89 = v27;
          if (v88 <= v27)
          {
            v89 = (((v31 * _S11) + (v30 * _S10)) + (v32 * _S12)) + v25;
            if (v88 < v25)
            {
              v89 = v25;
            }
          }

          v90 = *(v67 + 2 * v54);
          LOWORD(v88) = *(v67 + 8 + 2 * v57);
          LOWORD(_S19) = *(v67 + 8 + 2 * v56);
          LOWORD(_S14) = *(v67 + 8 + 2 * v55);
          v91 = *(v67 + 8 + 2 * v54);
          _H18 = *(v47 + 2 * llroundf(fminf(fmaxf(v24 * LODWORD(v88), 0.0), 8191.0)));
          __asm { FCVT            S18, H18 }

          _H19 = *(v47 + 2 * llroundf(fminf(fmaxf(v24 * LODWORD(_S19), 0.0), 8191.0)));
          _H14 = *(v47 + 2 * llroundf(fminf(fmaxf(v24 * LODWORD(_S14), 0.0), 8191.0)));
          __asm
          {
            FCVT            S19, H19
            FCVT            S14, H14
          }

          v98 = ((v39 * _S19) + (_S18 * v37)) + (_S14 * v40);
          _S20 = ((v42 * _S19) + (_S18 * v41)) + (_S14 * v43);
          v100 = ((v46 * _S19) + (_S18 * v44)) + (_S14 * v45);
          LOWORD(_S19) = *(v48 + 2 * llroundf(fminf(fmaxf(v98, 0.0), 8191.0)));
          __asm { FCVT            S14, H19 }

          LOWORD(_S19) = *(v48 + 2 * llroundf(fminf(fmaxf(_S20, 0.0), 8191.0)));
          LOWORD(_S20) = *(v48 + 2 * llroundf(fminf(fmaxf(v100, 0.0), 8191.0)));
          __asm
          {
            FCVT            S18, H19
            FCVT            S15, H20
          }

          v103 = (((v31 * _S18) + (v30 * _S14)) + (v32 * _S15)) + v25;
          *v69 = llroundf(v89) << v65;
          v104 = v27;
          if (v103 <= v27)
          {
            v104 = (((v31 * _S18) + (v30 * _S14)) + (v32 * _S15)) + v25;
            if (v103 < v25)
            {
              v104 = v25;
            }
          }

          v69[1] = llroundf(v104) << v65;
          v9 = _S10 + _S14;
          v105 = _S11 + _S18;
          v106 = _S12 + _S15;
          v107 = ((v26 + (v9 * v112)) + (v105 * v111)) + ((_S12 + _S15) * v110);
          v108 = v29;
          if (v107 <= v29)
          {
            v108 = v107;
            if (v107 < v28)
            {
              v108 = v28;
            }
          }

          v109 = (v62 + 2 * v66);
          v36 = ((v26 + (v9 * v34)) + (v105 * v35)) + (v106 * v38);
          *v109 = llroundf(v108) << v65;
          v33 = v29;
          if (v36 <= v29)
          {
            v33 = v36;
            if (v36 < v28)
            {
              v33 = v28;
            }
          }

          v109[1] = llroundf(v33) << v65;
          if (v68)
          {
            *v68 = v90;
            v68[1] = v91;
            v68 += 2;
          }

          v67 += 16;
          v66 += 2;
          v69 += 2;
        }

        while (v66 < v17);
      }

      v64 += v18;
      v63 += v21;
      v62 += v22;
      v59 += v23;
      ++v15;
    }

    while (v15 != v14);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_l64r_rgb_xf422(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4, void *a5, uint64_t *a6, uint64_t a7, void *a8, void *a9)
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
  dispatch_apply_f(v10, global_queue, v22, vt_Copy_l64r_rgb_xf422_GCD);
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

unsigned __int8 *vt_Copy_l64r_rgb_xf422_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, float a5, float a6, float a7, float a8)
{
  v12 = *result;
  v13 = *(result + 13);
  v14 = v13 * a2 / v12;
  v15 = (v13 + v13 * a2) / v12 - v14;
  if (v15 >= 1)
  {
    v16 = 0;
    v17 = *(result + 19);
    v18 = *(result + 24) & 0xFFFFFFFE;
    v19 = **(result + 8);
    v20 = *(result + 16);
    v21 = *(result + 17);
    v22 = *v21;
    v23 = v21[1];
    v24 = v21[2];
    *&v25 = *(v17 + 136);
    v26 = *&v25 / *(v17 + 128);
    LOWORD(v25) = *(v17 + 144);
    v27 = v25;
    LOWORD(a5) = *(v17 + 146);
    v28 = LODWORD(a5);
    LOWORD(a6) = *(v17 + 148);
    v29 = LODWORD(a6);
    LOWORD(a7) = *(v17 + 150);
    v30 = LODWORD(a7);
    LOWORD(a8) = *(v17 + 152);
    v31 = LODWORD(a8);
    v32 = *(v17 + 36);
    v33 = *(v17 + 40);
    v34 = *(v17 + 44);
    v35 = *(v17 + 48) * 0.5;
    v36 = *(v17 + 52) * 0.5;
    v37 = *(v17 + 56) * 0.5;
    v38 = *(v17 + 60) * 0.5;
    v39 = *(v17 + 64) * 0.5;
    v40 = *(v17 + 68);
    v41 = v40 * 0.5;
    v42 = *(result + 14);
    v43 = v14 + *(result + 15);
    v44 = *(result + 28) * a2 / v12 + *(result + 44);
    v45 = *(v17 + 132);
    if (v45 >= 0x11)
    {
      v46 = 0;
    }

    else
    {
      v46 = 16 - v45;
    }

    v47 = *(v17 + 157);
    v48 = *(v17 + 156);
    v49 = *(v17 + 155);
    v50 = *(v17 + 154);
    v51 = v20[2];
    if (v51)
    {
      v52 = v51 + v24 * v43 + 2 * v42;
    }

    else
    {
      v52 = 0;
    }

    v54 = *v20;
    v53 = v20[1];
    v55 = v53 + v23 * v43 + 2 * v42;
    if (!v53)
    {
      v55 = 0;
    }

    v56 = v54 + v22 * v43 + 2 * v42;
    v57 = **(result + 7) + v44 * v19 + 8 * *(result + 36);
    v58 = v46;
    do
    {
      if (v18 >= 1)
      {
        v59 = 0;
        v60 = v57;
        v61 = v52;
        v62 = v56;
        do
        {
          LOWORD(v40) = *(v60 + 2 * v50);
          v63 = v26 * LODWORD(v40);
          LOWORD(v8) = *(v60 + 2 * v49);
          v64 = v26 * LODWORD(v8);
          LOWORD(v9) = *(v60 + 2 * v48);
          v65 = v26 * LODWORD(v9);
          v66 = (((v33 * v64) + (v32 * v63)) + (v34 * v65)) + v27;
          v67 = v29;
          if (v66 <= v29)
          {
            v67 = (((v33 * v64) + (v32 * v63)) + (v34 * v65)) + v27;
            if (v66 < v27)
            {
              v67 = v27;
            }
          }

          v68 = *(v60 + 2 * v47);
          LOWORD(v66) = *(v60 + 8 + 2 * v50);
          v69 = v26 * LODWORD(v66);
          LOWORD(v10) = *(v60 + 8 + 2 * v49);
          v70 = v26 * LODWORD(v10);
          LOWORD(v11) = *(v60 + 8 + 2 * v48);
          v11 = v26 * LODWORD(v11);
          v71 = *(v60 + 8 + 2 * v47);
          v72 = (((v33 * v70) + (v32 * v69)) + (v34 * v11)) + v27;
          *v62 = llroundf(v67) << v58;
          v73 = v29;
          if (v72 <= v29)
          {
            v73 = (((v33 * v70) + (v32 * v69)) + (v34 * v11)) + v27;
            if (v72 < v27)
            {
              v73 = v27;
            }
          }

          v62[1] = llroundf(v73) << v58;
          v74 = v63 + v69;
          v75 = v64 + v70;
          v9 = v65 + v11;
          v10 = ((v28 + (v74 * v35)) + (v75 * v36)) + (v9 * v37);
          v76 = v31;
          if (v10 <= v31)
          {
            v76 = ((v28 + (v74 * v35)) + (v75 * v36)) + (v9 * v37);
            if (v10 < v30)
            {
              v76 = v30;
            }
          }

          v77 = (v55 + 2 * v59);
          v40 = ((v28 + (v74 * v38)) + (v75 * v39)) + (v9 * v41);
          *v77 = llroundf(v76) << v58;
          v8 = v31;
          if (v40 <= v31)
          {
            v8 = v40;
            if (v40 < v30)
            {
              v8 = v30;
            }
          }

          v77[1] = llroundf(v8) << v58;
          if (v61)
          {
            *v61 = v68;
            v61[1] = v71;
            v61 += 2;
          }

          v60 += 16;
          v59 += 2;
          v62 += 2;
        }

        while (v59 < v18);
      }

      v57 += v19;
      v56 += v22;
      v55 += v23;
      v52 += v24;
      ++v16;
    }

    while (v16 != v15);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_l64r_TRC_Tone_Mat_TRC_v216(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, uint64_t a8, uint64_t a9)
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
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_l64r_TRC_Tone_Mat_TRC_v216_GCD);
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

unsigned __int8 *vt_Copy_l64r_TRC_Tone_Mat_TRC_v216_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, double a5, double a6, double a7, float a8, float a9, float a10)
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
    v33 = *(v25 + 56);
    v34 = *(v25 + 60);
    v35 = 8191.0 / *(v25 + 128);
    v36 = LODWORD(a8);
    v37 = LODWORD(a9);
    v38 = LODWORD(a10);
    v39 = v10;
    v40 = v11;
    v132 = *(v25 + 52) * 0.5;
    v133 = *(v25 + 48) * 0.5;
    v130 = v34 * 0.5;
    v131 = v33 * 0.5;
    v41 = *(v25 + 64) * 0.5;
    v42 = *(v25 + 68);
    v43 = *(v25 + 72);
    v44 = v42 * 0.5;
    v128 = v42 * 0.5;
    v129 = v41;
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
    v55 = v25 + 32932;
    v56 = *(v25 + 108);
    v57 = *(v25 + 112);
    v58 = *(v25 + 116);
    v59 = *(v25 + 120);
    v60 = *(v25 + 157);
    v61 = *(v25 + 156);
    v62 = *(v25 + 155);
    v63 = *(v25 + 154);
    do
    {
      if (v29 >= 1)
      {
        v64 = 0;
        v65 = v20;
        v66 = v28;
        v67 = v27;
        do
        {
          LOWORD(v44) = *(v67 + 2 * v63);
          LOWORD(v42) = *(v67 + 2 * v62);
          LOWORD(v41) = *(v67 + 2 * v61);
          _H0 = *(v53 + 2 * llroundf(fminf(fmaxf(v35 * LODWORD(v44), 0.0), 8191.0)));
          __asm { FCVT            S14, H0 }

          _H0 = *(v53 + 2 * llroundf(fminf(fmaxf(v35 * LODWORD(v42), 0.0), 8191.0)));
          __asm { FCVT            S15, H0 }

          _H0 = *(v53 + 2 * llroundf(fminf(fmaxf(v35 * LODWORD(v41), 0.0), 8191.0)));
          __asm { FCVT            S18, H0 }

          v78 = (((v57 * _S15) + (v56 * _S14)) + (v58 * _S18)) + (v59 * fmaxf(_S14, fmaxf(_S15, _S18)));
          v79 = 8191.0;
          if (v78 <= 8191.0)
          {
            v79 = v78;
            if (v78 < 0.0)
            {
              v79 = 0.0;
            }
          }

          LOWORD(v78) = *(v67 + 8 + 2 * v63);
          LOWORD(v33) = *(v67 + 8 + 2 * v62);
          LOWORD(v34) = *(v67 + 8 + 2 * v61);
          _H19 = *(v53 + 2 * llroundf(fminf(fmaxf(v35 * LODWORD(v78), 0.0), 8191.0)));
          __asm { FCVT            S19, H19 }

          _H20 = *(v53 + 2 * llroundf(fminf(fmaxf(v35 * LODWORD(v33), 0.0), 8191.0)));
          _H22 = *(v53 + 2 * llroundf(fminf(fmaxf(v35 * LODWORD(v34), 0.0), 8191.0)));
          __asm
          {
            FCVT            S21, H20
            FCVT            S22, H22
          }

          _H0 = *(v54 + 2 * llroundf(v79));
          __asm { FCVT            S20, H0 }

          v88 = _S14 * _S20;
          v89 = _S15 * _S20;
          v90 = _S18 * _S20;
          v91 = (((v57 * _S21) + (v56 * _S19)) + (v58 * _S22)) + (v59 * fmaxf(_S19, fmaxf(_S21, _S22)));
          v92 = 8191.0;
          if (v91 <= 8191.0)
          {
            v92 = v91;
            if (v91 < 0.0)
            {
              v92 = 0.0;
            }
          }

          _H20 = *(v54 + 2 * llroundf(v92));
          __asm { FCVT            S20, H20 }

          v95 = _S19 * _S20;
          v96 = _S21 * _S20;
          _S20 = _S22 * _S20;
          _S22 = ((v45 * v89) + (v88 * v43)) + (v90 * v46);
          v99 = ((v48 * v89) + (v88 * v47)) + (v90 * v49);
          _S0 = ((v52 * v89) + (v88 * v50)) + (v90 * v51);
          v101 = (v45 * v96) + (v95 * v43);
          v102 = (v48 * v96) + (v95 * v47);
          v103 = (v52 * v96) + (v95 * v50);
          v104 = v101 + (_S20 * v46);
          _S21 = v102 + (_S20 * v49);
          v106 = v103 + (_S20 * v51);
          LOWORD(_S20) = *(v55 + 2 * llroundf(fminf(fmaxf(_S22, 0.0), 8191.0)));
          __asm { FCVT            S20, H20 }

          LOWORD(_S22) = *(v55 + 2 * llroundf(fminf(fmaxf(v99, 0.0), 8191.0)));
          __asm { FCVT            S22, H22 }

          LOWORD(_S0) = *(v55 + 2 * llroundf(fminf(fmaxf(_S0, 0.0), 8191.0)));
          __asm { FCVT            S15, H0 }

          LOWORD(_S0) = *(v55 + 2 * llroundf(fminf(fmaxf(v104, 0.0), 8191.0)));
          LOWORD(_S21) = *(v55 + 2 * llroundf(fminf(fmaxf(_S21, 0.0), 8191.0)));
          __asm
          {
            FCVT            S18, H0
            FCVT            S14, H21
          }

          v112 = llroundf(fminf(fmaxf(v106, 0.0), 8191.0));
          v113 = (v31 * _S22) + (v30 * _S20);
          _S0 = _S20 + _S18;
          v115 = (v37 + ((_S20 + _S18) * v133)) + ((_S22 + _S14) * v132);
          v116 = (v37 + (_S0 * v130)) + ((_S22 + _S14) * v129);
          LOWORD(_S0) = *(v55 + 2 * v112);
          __asm { FCVT            S0, H0 }

          v118 = v113 + (v32 * _S15);
          v119 = v115 + ((_S15 + _S0) * v131);
          v120 = v116 + ((_S15 + _S0) * v128);
          if (v119 < v36)
          {
            v121 = v36;
          }

          else
          {
            v121 = v119;
          }

          v122 = v119 <= v38;
          v123 = v118 + v36;
          if (!v122)
          {
            v121 = v38;
          }

          v124 = llroundf(v121);
          if (v123 < v39)
          {
            v125 = v39;
          }

          else
          {
            v125 = v118 + v36;
          }

          v126 = *(v67 + 2 * v60);
          v127 = *(v67 + 8 + 2 * v60);
          *v66 = v124;
          if (v123 <= v40)
          {
            v33 = v125;
          }

          else
          {
            v33 = v40;
          }

          v66[1] = llroundf(v33);
          v34 = v38;
          if (v120 <= v38)
          {
            v34 = v120;
            if (v120 < v36)
            {
              v34 = v36;
            }
          }

          v41 = v31 * _S14;
          v44 = (((v31 * _S14) + (v30 * _S18)) + (v32 * _S0)) + v36;
          v66[2] = llroundf(v34);
          v42 = v40;
          if (v44 <= v40)
          {
            v42 = v44;
            if (v44 < v39)
            {
              v42 = v39;
            }
          }

          v66[3] = llroundf(v42);
          if (v65)
          {
            *v65 = v126;
            v65[1] = v127;
            v65 += 2;
          }

          v67 += 16;
          v64 += 2;
          v66 += 4;
        }

        while (v64 < v29);
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

uint64_t vt_Copy_l64r_TRC_Mat_TRC_v216(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, uint64_t a8, uint64_t a9)
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
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_l64r_TRC_Mat_TRC_v216_GCD);
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

unsigned __int8 *vt_Copy_l64r_TRC_Mat_TRC_v216_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, double a5, double a6, double a7, float a8, float a9, float a10)
{
  v18 = *result;
  v19 = *(result + 13);
  v20 = *(result + 14);
  v21 = v19 * a2 / v18;
  v22 = *(result + 16);
  v23 = v21 + *(result + 15);
  v24 = (v19 + v19 * a2) / v18 - v21;
  v25 = *(result + 17);
  v26 = v22[1];
  if (v26)
  {
    v26 = (v26 + 2 * v20 + v25[1] * v23);
  }

  if (v24 >= 1)
  {
    v27 = 0;
    v28 = *(result + 28) * a2 / v18 + *(result + 44);
    v29 = **(result + 8);
    v30 = *v25;
    v31 = *(result + 19);
    v32 = *v22 + v30 * v23;
    v33 = **(result + 7) + v29 * v28 + 8 * *(result + 36);
    v34 = (v32 + 2 * v20);
    v35 = *(result + 24) & 0xFFFFFFFE;
    LOWORD(a8) = *(v31 + 144);
    LOWORD(a9) = *(v31 + 146);
    LOWORD(a10) = *(v31 + 148);
    LOWORD(v16) = *(v31 + 150);
    LOWORD(v17) = *(v31 + 152);
    v36 = *(v31 + 36);
    v37 = *(v31 + 40);
    v38 = *(v31 + 44);
    v39 = 8191.0 / *(v31 + 128);
    v40 = LODWORD(a8);
    v41 = LODWORD(a9);
    v42 = LODWORD(a10);
    v43 = v16;
    v44 = v17;
    v114 = *(v31 + 52) * 0.5;
    v115 = *(v31 + 48) * 0.5;
    v45 = *(v31 + 56) * 0.5;
    v46 = *(v31 + 60) * 0.5;
    v47 = *(v31 + 64) * 0.5;
    v48 = *(v31 + 72);
    v49 = *(v31 + 68) * 0.5;
    v50 = *(v31 + 76);
    v51 = *(v31 + 80);
    v52 = *(v31 + 84);
    v53 = *(v31 + 88);
    v54 = *(v31 + 92);
    v55 = *(v31 + 96);
    v57 = *(v31 + 100);
    v56 = *(v31 + 104);
    v58 = v31 + 164;
    v59 = v31 + 16548;
    v60 = *(v31 + 157);
    v61 = *(v31 + 156);
    v62 = *(v31 + 155);
    v63 = *(v31 + 154);
    do
    {
      if (v35 >= 1)
      {
        v64 = 0;
        v65 = v33;
        v66 = v26;
        v67 = v34;
        do
        {
          LOWORD(v10) = *(v65 + 2 * v63);
          LOWORD(v11) = *(v65 + 2 * v62);
          LOWORD(_S12) = *(v65 + 2 * v61);
          LOWORD(v13) = *(v65 + 8 + 2 * v63);
          LOWORD(v14) = *(v65 + 8 + 2 * v62);
          LOWORD(v15) = *(v65 + 8 + 2 * v61);
          v68 = llroundf(fminf(fmaxf(v39 * LODWORD(v10), 0.0), 8191.0));
          v69 = v39 * LODWORD(v15);
          _H15 = *(v58 + 2 * v68);
          __asm { FCVT            S15, H15 }

          _H11 = *(v58 + 2 * llroundf(fminf(fmaxf(v39 * LODWORD(v11), 0.0), 8191.0)));
          __asm { FCVT            S11, H11 }

          _H12 = *(v58 + 2 * llroundf(fminf(fmaxf(v39 * LODWORD(_S12), 0.0), 8191.0)));
          __asm { FCVT            S12, H12 }

          _H13 = *(v58 + 2 * llroundf(fminf(fmaxf(v39 * LODWORD(v13), 0.0), 8191.0)));
          _H14 = *(v58 + 2 * llroundf(fminf(fmaxf(v39 * LODWORD(v14), 0.0), 8191.0)));
          __asm
          {
            FCVT            S13, H13
            FCVT            S14, H14
          }

          v84 = llroundf(fminf(fmaxf(v69, 0.0), 8191.0));
          _S10 = ((v50 * _S11) + (_S15 * v48)) + (_S12 * v51);
          _S18 = ((v53 * _S11) + (_S15 * v52)) + (_S12 * v54);
          _S11 = ((v57 * _S11) + (_S15 * v55)) + (_S12 * v56);
          v88 = (v50 * _S14) + (_S13 * v48);
          v89 = (v53 * _S14) + (_S13 * v52);
          v90 = (v57 * _S14) + (_S13 * v55);
          LOWORD(_S14) = *(v58 + 2 * v84);
          __asm { FCVT            S14, H14 }

          v92 = v88 + (_S14 * v51);
          v93 = v89 + (_S14 * v54);
          v94 = v90 + (_S14 * v56);
          LOWORD(_S10) = *(v59 + 2 * llroundf(fminf(fmaxf(_S10, 0.0), 8191.0)));
          __asm { FCVT            S14, H10 }

          LOWORD(_S18) = *(v59 + 2 * llroundf(fminf(fmaxf(_S18, 0.0), 8191.0)));
          __asm { FCVT            S18, H18 }

          LOWORD(_S10) = *(v59 + 2 * llroundf(fminf(fmaxf(_S11, 0.0), 8191.0)));
          __asm { FCVT            S19, H10 }

          LOWORD(_S10) = *(v59 + 2 * llroundf(fminf(fmaxf(v92, 0.0), 8191.0)));
          LOWORD(_S11) = *(v59 + 2 * llroundf(fminf(fmaxf(v93, 0.0), 8191.0)));
          __asm
          {
            FCVT            S10, H10
            FCVT            S11, H11
          }

          v100 = llroundf(fminf(fmaxf(v94, 0.0), 8191.0));
          v101 = (v37 * _S18) + (v36 * _S14);
          _S12 = _S14 + _S10;
          v103 = _S18 + _S11;
          v104 = (v41 + ((_S14 + _S10) * v115)) + (v103 * v114);
          v105 = (v41 + (_S12 * v46)) + (v103 * v47);
          LOWORD(_S12) = *(v59 + 2 * v100);
          __asm { FCVT            S12, H12 }

          v15 = v101 + (v38 * _S19);
          v106 = _S19 + _S12;
          v107 = v104 + (v106 * v45);
          v13 = v105 + (v106 * v49);
          if (v107 < v40)
          {
            v108 = v40;
          }

          else
          {
            v108 = v107;
          }

          v109 = v15 + v40;
          if (v107 > v42)
          {
            v108 = v42;
          }

          v110 = llroundf(v108);
          if (v109 < v43)
          {
            v111 = v43;
          }

          else
          {
            v111 = v15 + v40;
          }

          v112 = *(v65 + 2 * v60);
          v113 = *(v65 + 8 + 2 * v60);
          *v67 = v110;
          if (v109 > v44)
          {
            v111 = v44;
          }

          v67[1] = llroundf(v111);
          v14 = v42;
          if (v13 <= v42)
          {
            v14 = v13;
            if (v13 < v40)
            {
              v14 = v40;
            }
          }

          v10 = (((v37 * _S11) + (v36 * _S10)) + (v38 * _S12)) + v40;
          v67[2] = llroundf(v14);
          v11 = v44;
          if (v10 <= v44)
          {
            v11 = v10;
            if (v10 < v43)
            {
              v11 = v43;
            }
          }

          v67[3] = llroundf(v11);
          if (v66)
          {
            *v66 = v112;
            v66[1] = v113;
            v66 += 2;
          }

          v65 += 16;
          v64 += 2;
          v67 += 4;
        }

        while (v64 < v35);
      }

      v33 += v29;
      v34 = (v34 + v30);
      ++v27;
    }

    while (v27 != v24);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_l64r_rgb_v216(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, uint64_t a8, uint64_t a9)
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
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_l64r_rgb_v216_GCD);
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

unsigned __int8 *vt_Copy_l64r_rgb_v216_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, float a5, float a6, float a7, float a8)
{
  v10 = *result;
  v11 = *(result + 13);
  v12 = *(result + 14);
  v13 = v11 * a2 / v10;
  v14 = *(result + 16);
  v15 = v13 + *(result + 15);
  v16 = (v11 + v11 * a2) / v10 - v13;
  v17 = *(result + 17);
  v18 = v14[1];
  if (v18)
  {
    v18 = (v18 + 2 * v12 + v17[1] * v15);
  }

  if (v16 >= 1)
  {
    v19 = 0;
    v20 = *(result + 28) * a2 / v10 + *(result + 44);
    v21 = **(result + 8);
    v22 = *v17;
    v23 = *(result + 19);
    v24 = *v14 + v22 * v15;
    v25 = **(result + 7) + v21 * v20 + 8 * *(result + 36);
    v26 = (v24 + 2 * v12);
    v27 = *(result + 24) & 0xFFFFFFFE;
    LOWORD(a5) = *(v23 + 144);
    LOWORD(a6) = *(v23 + 146);
    v28 = *(v23 + 136) / *(v23 + 128);
    v29 = LODWORD(a5);
    v30 = LODWORD(a6);
    LOWORD(a6) = *(v23 + 148);
    v31 = LODWORD(a6);
    LOWORD(a7) = *(v23 + 150);
    v32 = LODWORD(a7);
    LOWORD(a8) = *(v23 + 152);
    v33 = LODWORD(a8);
    v34 = *(v23 + 36);
    v35 = *(v23 + 40);
    v36 = *(v23 + 44);
    v37 = *(v23 + 48) * 0.5;
    v38 = *(v23 + 52) * 0.5;
    v39 = *(v23 + 56) * 0.5;
    v40 = *(v23 + 60) * 0.5;
    v41 = *(v23 + 64) * 0.5;
    v42 = *(v23 + 68);
    v43 = v42 * 0.5;
    v44 = *(v23 + 157);
    v45 = *(v23 + 156);
    v46 = *(v23 + 155);
    v47 = *(v23 + 154);
    do
    {
      if (v27 >= 1)
      {
        v48 = 0;
        v49 = v25;
        v50 = v18;
        v51 = v26;
        do
        {
          LOWORD(v42) = *(v49 + 2 * v47);
          *&v52 = LODWORD(v42);
          v53 = v28 * *&v52;
          LOWORD(v52) = *(v49 + 2 * v46);
          *&v54 = v52;
          v55 = v28 * *&v54;
          LOWORD(v54) = *(v49 + 2 * v45);
          v56 = *(v49 + 2 * v44);
          LOWORD(v8) = *(v49 + 8 + 2 * v47);
          v57 = v28 * v54;
          v58 = v28 * LODWORD(v8);
          LOWORD(v8) = *(v49 + 8 + 2 * v46);
          v59 = v28 * LODWORD(v8);
          LOWORD(v9) = *(v49 + 8 + 2 * v45);
          v60 = *(v49 + 8 + 2 * v44);
          v9 = v28 * LODWORD(v9);
          v61 = (((v35 * v55) + (v34 * v53)) + (v36 * v57)) + v29;
          v62 = v53 + v58;
          v63 = v55 + v59;
          v64 = v57 + v9;
          v65 = ((v30 + (v62 * v37)) + (v63 * v38)) + (v64 * v39);
          v66 = ((v30 + (v62 * v40)) + (v63 * v41)) + (v64 * v43);
          if (v65 < v29)
          {
            v67 = v29;
          }

          else
          {
            v67 = v65;
          }

          if (v65 > v31)
          {
            v67 = v31;
          }

          *v51 = llroundf(v67);
          if (v61 < v32)
          {
            v68 = v32;
          }

          else
          {
            v68 = v61;
          }

          if (v61 > v33)
          {
            v68 = v33;
          }

          v51[1] = llroundf(v68);
          v69 = v31;
          if (v66 <= v31)
          {
            v69 = v66;
            if (v66 < v29)
            {
              v69 = v29;
            }
          }

          v42 = (((v35 * v59) + (v34 * v58)) + (v36 * v9)) + v29;
          v51[2] = llroundf(v69);
          v8 = v33;
          if (v42 <= v33)
          {
            v8 = v42;
            if (v42 < v32)
            {
              v8 = v32;
            }
          }

          v51[3] = llroundf(v8);
          if (v50)
          {
            *v50 = v56;
            v50[1] = v60;
            v50 += 2;
          }

          v49 += 16;
          v48 += 2;
          v51 += 4;
        }

        while (v48 < v27);
      }

      v25 += v21;
      v26 = (v26 + v22);
      ++v19;
    }

    while (v19 != v16);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_l64r_TRC_Tone_Mat_TRC_444vf(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
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
  dispatch_apply_f(v15, global_queue, v19, vt_Copy_l64r_TRC_Tone_Mat_TRC_444vf_GCD);
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

unsigned __int8 *vt_Copy_l64r_TRC_Tone_Mat_TRC_444vf_GCD(unsigned __int8 *result, uint64_t a2)
{
  v3 = *result;
  v4 = *(result + 13);
  v5 = v4 * a2 / v3;
  v6 = (v4 + v4 * a2) / v3 - v5;
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = *(result + 24);
    v9 = *(result + 19);
    v10 = **(result + 8);
    v11 = *(result + 16);
    v12 = *(result + 17);
    v13 = *v12;
    v14 = v12[1];
    v15 = v12[2];
    *&v16 = *(v9 + 128);
    v17 = 8191.0 / *&v16;
    LOWORD(v16) = *(v9 + 144);
    v18 = v16;
    LOWORD(v16) = *(v9 + 146);
    v19 = v16;
    LOWORD(v16) = *(v9 + 148);
    v20 = v16;
    LOWORD(v16) = *(v9 + 150);
    v21 = v16;
    LOWORD(v16) = *(v9 + 152);
    v22 = v16;
    v23 = *(v9 + 36);
    v24 = *(v9 + 40);
    v25 = *(v9 + 44);
    v94 = *(v9 + 52);
    v95 = *(v9 + 48);
    v26 = *(v9 + 56);
    v92 = *(v9 + 60);
    v93 = v26;
    v27 = *(v9 + 64);
    v28 = *(v9 + 68);
    v91 = v27;
    v29 = *(v9 + 72);
    v30 = *(v9 + 76);
    v31 = *(v9 + 80);
    v32 = *(v9 + 84);
    v33 = *(v9 + 88);
    v34 = *(v9 + 92);
    v35 = *(v9 + 96);
    v36 = *(v9 + 100);
    v37 = *(v9 + 104);
    v38 = *(v9 + 108);
    v39 = v9 + 164;
    v40 = v9 + 16548;
    v41 = v9 + 32932;
    v42 = *(v9 + 112);
    v43 = *(v9 + 116);
    v44 = *(v9 + 120);
    v45 = *(result + 14);
    v46 = v5 + *(result + 15);
    v47 = *(result + 28) * a2 / v3 + *(result + 44);
    v48 = *(v9 + 157);
    v49 = *(v9 + 156);
    v50 = *(v9 + 155);
    v51 = *(v9 + 154);
    v52 = v11[2];
    if (v52)
    {
      v53 = (v52 + v15 * v46 + v45);
    }

    else
    {
      v53 = 0;
    }

    v55 = *v11;
    v54 = v11[1];
    v56 = (v54 + v14 * v46 + v45);
    if (!v54)
    {
      v56 = 0;
    }

    v57 = (v55 + v13 * v46 + v45);
    v58 = **(result + 7) + v47 * v10 + 8 * *(result + 36);
    do
    {
      if (v8 >= 1)
      {
        v59 = v8;
        v60 = v53;
        v61 = v56;
        v62 = v57;
        v63 = v58;
        do
        {
          LOWORD(v27) = *(v63 + 2 * v51);
          LOWORD(v26) = *(v63 + 2 * v50);
          LOWORD(_S18) = *(v63 + 2 * v49);
          _H0 = *(v39 + 2 * llroundf(fminf(fmaxf(v17 * LODWORD(v27), 0.0), 8191.0)));
          v65 = v17 * LODWORD(_S18);
          __asm { FCVT            S18, H0 }

          _H0 = *(v39 + 2 * llroundf(fminf(fmaxf(v17 * LODWORD(v26), 0.0), 8191.0)));
          v72 = llroundf(fminf(fmaxf(v65, 0.0), 8191.0));
          __asm { FCVT            S19, H0 }

          _H0 = *(v39 + 2 * v72);
          __asm { FCVT            S15, H0 }

          v76 = (((v42 * _S19) + (v38 * _S18)) + (v43 * _S15)) + (v44 * fmaxf(_S18, fmaxf(_S19, _S15)));
          v77 = 8191.0;
          if (v76 <= 8191.0)
          {
            v77 = v76;
            if (v76 < 0.0)
            {
              v77 = 0.0;
            }
          }

          _H0 = *(v40 + 2 * llroundf(v77));
          __asm { FCVT            S0, H0 }

          _S6 = _S18 * _S0;
          v81 = _S19 * _S0;
          v82 = _S15 * _S0;
          v83 = ((v30 * v81) + (_S6 * v29)) + (v82 * v31);
          v84 = ((v33 * v81) + (_S6 * v32)) + (v82 * v34);
          _S0 = ((v36 * v81) + (_S6 * v35)) + (v82 * v37);
          LOWORD(_S6) = *(v41 + 2 * llroundf(fminf(fmaxf(v83, 0.0), 8191.0)));
          __asm { FCVT            S15, H6 }

          LOWORD(_S6) = *(v41 + 2 * llroundf(fminf(fmaxf(v84, 0.0), 8191.0)));
          __asm { FCVT            S18, H6 }

          LOWORD(_S0) = *(v41 + 2 * llroundf(fminf(fmaxf(_S0, 0.0), 8191.0)));
          __asm { FCVT            S19, H0 }

          v27 = (((v24 * _S18) + (v23 * _S15)) + (v25 * _S19)) + v18;
          v26 = v20;
          if (v27 <= v20)
          {
            v26 = (((v24 * _S18) + (v23 * _S15)) + (v25 * _S19)) + v18;
            if (v27 < v18)
            {
              v26 = v18;
            }
          }

          v88 = *(v63 + 2 * v48);
          *v62++ = llroundf(v26);
          if (v61)
          {
            v89 = ((v19 + (_S15 * v95)) + (_S18 * v94)) + (_S19 * v93);
            v90 = v22;
            if (v89 <= v22)
            {
              v90 = ((v19 + (_S15 * v95)) + (_S18 * v94)) + (_S19 * v93);
              if (v89 < v21)
              {
                v90 = v21;
              }
            }

            v27 = (v19 + (_S15 * v92)) + (_S18 * v91);
            _S18 = v27 + (_S19 * v28);
            *v61 = llroundf(v90);
            v26 = v22;
            if (_S18 <= v22)
            {
              v26 = v27 + (_S19 * v28);
              if (_S18 < v21)
              {
                v26 = v21;
              }
            }

            v61[1] = llroundf(v26);
            v61 += 2;
          }

          if (v60)
          {
            v27 = v88 * 0.0038911;
            *v60++ = llroundf(v27);
          }

          v63 += 8;
          --v59;
        }

        while (v59);
      }

      v58 += v10;
      v57 += v13;
      v56 += v14;
      v53 += v15;
      ++v7;
    }

    while (v7 != v6);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_l64r_TRC_Mat_TRC_444vf(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
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
  dispatch_apply_f(v15, global_queue, v19, vt_Copy_l64r_TRC_Mat_TRC_444vf_GCD);
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

unsigned __int8 *vt_Copy_l64r_TRC_Mat_TRC_444vf_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, float a5, float a6, float a7, float a8, float a9)
{
  v11 = *result;
  v12 = *(result + 13);
  v13 = v12 * a2 / v11;
  v14 = (v12 + v12 * a2) / v11 - v13;
  if (v14 >= 1)
  {
    v15 = 0;
    v16 = *(result + 24);
    v17 = *(result + 19);
    v18 = **(result + 8);
    v19 = *(result + 16);
    v20 = *(result + 17);
    v21 = *v20;
    v22 = v20[1];
    v23 = v20[2];
    v24 = 8191.0 / *(v17 + 128);
    LOWORD(a5) = *(v17 + 144);
    v25 = LODWORD(a5);
    LOWORD(a6) = *(v17 + 146);
    v26 = LODWORD(a6);
    LOWORD(a7) = *(v17 + 148);
    v27 = LODWORD(a7);
    LOWORD(a8) = *(v17 + 150);
    v28 = LODWORD(a8);
    LOWORD(a9) = *(v17 + 152);
    v29 = LODWORD(a9);
    v30 = *(v17 + 36);
    v31 = *(v17 + 40);
    v33 = *(v17 + 44);
    v32 = *(v17 + 48);
    v88 = v32;
    v34 = *(v17 + 52);
    v35 = *(v17 + 56);
    v36 = *(v17 + 60);
    v37 = *(v17 + 64);
    v38 = *(v17 + 68);
    v39 = *(v17 + 72);
    v40 = *(v17 + 76);
    v41 = *(v17 + 80);
    v42 = *(v17 + 84);
    v43 = *(v17 + 88);
    v44 = *(v17 + 92);
    v45 = *(v17 + 96);
    v47 = *(v17 + 100);
    v46 = *(v17 + 104);
    v48 = v17 + 164;
    v49 = v17 + 16548;
    v50 = *(result + 14);
    v51 = v13 + *(result + 15);
    v52 = *(result + 28) * a2 / v11 + *(result + 44);
    v53 = *(v17 + 157);
    v54 = *(v17 + 156);
    v55 = *(v17 + 155);
    v56 = *(v17 + 154);
    v57 = v19[2];
    if (v57)
    {
      v58 = (v57 + v23 * v51 + v50);
    }

    else
    {
      v58 = 0;
    }

    v60 = *v19;
    v59 = v19[1];
    v61 = (v59 + v22 * v51 + v50);
    if (!v59)
    {
      v61 = 0;
    }

    v62 = (v60 + v21 * v51 + v50);
    v63 = **(result + 7) + v52 * v18 + 8 * *(result + 36);
    do
    {
      if (v16 >= 1)
      {
        v64 = v16;
        v65 = v63;
        v66 = v58;
        v67 = v61;
        v68 = v62;
        do
        {
          LOWORD(v32) = *(v65 + 2 * v56);
          LOWORD(v9) = *(v65 + 2 * v55);
          LOWORD(_S12) = *(v65 + 2 * v54);
          v69 = llroundf(fminf(fmaxf(v24 * LODWORD(v32), 0.0), 8191.0));
          _S6 = v24 * LODWORD(_S12);
          _H12 = *(v48 + 2 * v69);
          __asm { FCVT            S12, H12 }

          _H11 = *(v48 + 2 * llroundf(fminf(fmaxf(v24 * LODWORD(v9), 0.0), 8191.0)));
          __asm { FCVT            S11, H11 }

          LOWORD(_S6) = *(v48 + 2 * llroundf(fminf(fmaxf(_S6, 0.0), 8191.0)));
          __asm { FCVT            S6, H6 }

          v80 = ((v40 * _S11) + (_S12 * v39)) + (_S6 * v41);
          v81 = ((v43 * _S11) + (_S12 * v42)) + (_S6 * v44);
          _S6 = ((v47 * _S11) + (_S12 * v45)) + (_S6 * v46);
          LOWORD(_S11) = *(v49 + 2 * llroundf(fminf(fmaxf(v80, 0.0), 8191.0)));
          __asm { FCVT            S12, H11 }

          LOWORD(_S11) = *(v49 + 2 * llroundf(fminf(fmaxf(v81, 0.0), 8191.0)));
          __asm { FCVT            S13, H11 }

          LOWORD(_S6) = *(v49 + 2 * llroundf(fminf(fmaxf(_S6, 0.0), 8191.0)));
          __asm { FCVT            S14, H6 }

          v32 = ((v31 * _S13) + (v30 * _S12)) + (v33 * _S14);
          v9 = v32 + v25;
          v85 = v27;
          if ((v32 + v25) <= v27)
          {
            v85 = v32 + v25;
            if (v9 < v25)
            {
              v85 = v25;
            }
          }

          LOWORD(v9) = *(v65 + 2 * v53);
          *v68++ = llroundf(v85);
          if (v67)
          {
            v86 = ((v26 + (_S12 * v88)) + (_S13 * v34)) + (_S14 * v35);
            v32 = v29;
            if (v86 <= v29)
            {
              v32 = ((v26 + (_S12 * v88)) + (_S13 * v34)) + (_S14 * v35);
              if (v86 < v28)
              {
                v32 = v28;
              }
            }

            _S12 = ((v26 + (_S12 * v36)) + (_S13 * v37)) + (_S14 * v38);
            *v67 = llroundf(v32);
            v87 = v29;
            if (_S12 <= v29)
            {
              v87 = _S12;
              if (_S12 < v28)
              {
                v87 = v28;
              }
            }

            v67[1] = llroundf(v87);
            v67 += 2;
          }

          if (v66)
          {
            v32 = LODWORD(v9) * 0.0038911;
            *v66++ = llroundf(v32);
          }

          v65 += 8;
          --v64;
        }

        while (v64);
      }

      v63 += v18;
      v62 += v21;
      v61 += v22;
      v58 += v23;
      ++v15;
    }

    while (v15 != v14);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_l64r_rgb_444vf(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
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
  dispatch_apply_f(v15, global_queue, v19, vt_Copy_l64r_rgb_444vf_GCD);
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

unsigned __int8 *vt_Copy_l64r_rgb_444vf_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, float a5, float a6, float a7, float a8)
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
    *&v22 = *(v15 + 136);
    v23 = *&v22 / *(v15 + 128);
    LOWORD(v22) = *(v15 + 144);
    v24 = v22;
    LOWORD(a5) = *(v15 + 146);
    v25 = LODWORD(a5);
    LOWORD(a6) = *(v15 + 148);
    v26 = LODWORD(a6);
    LOWORD(a7) = *(v15 + 150);
    v27 = LODWORD(a7);
    LOWORD(a8) = *(v15 + 152);
    v28 = LODWORD(a8);
    v29 = *(v15 + 36);
    v30 = *(v15 + 40);
    v31 = *(v15 + 44);
    v32 = *(v15 + 48);
    v33 = *(v15 + 52);
    v34 = *(v15 + 56);
    v35 = *(v15 + 60);
    v36 = *(v15 + 64);
    v37 = *(v15 + 68);
    v38 = *(result + 14);
    v39 = v11 + *(result + 15);
    v40 = *(result + 28) * a2 / v9 + *(result + 44);
    v41 = *(v15 + 157);
    v42 = *(v15 + 156);
    v43 = *(v15 + 155);
    v44 = *(v15 + 154);
    v45 = v17[2];
    if (v45)
    {
      v46 = (v45 + v21 * v39 + v38);
    }

    else
    {
      v46 = 0;
    }

    v48 = *v17;
    v47 = v17[1];
    v49 = (v47 + v20 * v39 + v38);
    if (!v47)
    {
      v49 = 0;
    }

    v50 = (v48 + v19 * v39 + v38);
    v51 = **(result + 7) + v40 * v16 + 8 * *(result + 36);
    do
    {
      if (v14 >= 1)
      {
        v52 = v14;
        v53 = v51;
        v54 = v46;
        v55 = v49;
        v56 = v50;
        do
        {
          LOWORD(v8) = *(v53 + 2 * v44);
          *&v57 = LODWORD(v8);
          v58 = v23 * *&v57;
          LOWORD(v57) = *(v53 + 2 * v43);
          *&v59 = v57;
          v60 = v23 * *&v59;
          LOWORD(v59) = *(v53 + 2 * v42);
          v61 = v23 * v59;
          v8 = (((v30 * v60) + (v29 * v58)) + (v31 * v61)) + v24;
          v62 = v26;
          if (v8 <= v26)
          {
            v62 = (((v30 * v60) + (v29 * v58)) + (v31 * v61)) + v24;
            if (v8 < v24)
            {
              v62 = v24;
            }
          }

          LOWORD(v8) = *(v53 + 2 * v41);
          *v56++ = llroundf(v62);
          if (v55)
          {
            v63 = ((v25 + (v58 * v32)) + (v60 * v33)) + (v61 * v34);
            v64 = v28;
            if (v63 <= v28)
            {
              v64 = ((v25 + (v58 * v32)) + (v60 * v33)) + (v61 * v34);
              if (v63 < v27)
              {
                v64 = v27;
              }
            }

            v65 = ((v25 + (v58 * v35)) + (v60 * v36)) + (v61 * v37);
            *v55 = llroundf(v64);
            v66 = v28;
            if (v65 <= v28)
            {
              v66 = v65;
              if (v65 < v27)
              {
                v66 = v27;
              }
            }

            v55[1] = llroundf(v66);
            v55 += 2;
          }

          if (v54)
          {
            v8 = LODWORD(v8) * 0.0038911;
            *v54++ = llroundf(v8);
          }

          v53 += 8;
          --v52;
        }

        while (v52);
      }

      v51 += v16;
      v50 += v19;
      v49 += v20;
      v46 += v21;
      ++v13;
    }

    while (v13 != v12);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_l64r_TRC_Tone_Mat_TRC_xf444(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
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
  dispatch_apply_f(v15, global_queue, v19, vt_Copy_l64r_TRC_Tone_Mat_TRC_xf444_GCD);
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

unsigned __int8 *vt_Copy_l64r_TRC_Tone_Mat_TRC_xf444_GCD(unsigned __int8 *result, uint64_t a2)
{
  v3 = *result;
  v4 = *(result + 13);
  v5 = v4 * a2 / v3;
  v6 = (v4 + v4 * a2) / v3 - v5;
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = *(result + 24);
    v9 = *(result + 19);
    v10 = **(result + 8);
    v11 = *(result + 16);
    v12 = *(result + 17);
    v13 = *v12;
    v14 = v12[1];
    v15 = v12[2];
    *&v16 = *(v9 + 128);
    v17 = 8191.0 / *&v16;
    LOWORD(v16) = *(v9 + 144);
    v18 = v16;
    LOWORD(v16) = *(v9 + 146);
    v19 = v16;
    LOWORD(v16) = *(v9 + 148);
    v20 = v16;
    LOWORD(v16) = *(v9 + 150);
    v21 = v16;
    LOWORD(v16) = *(v9 + 152);
    v22 = v16;
    v23 = *(v9 + 36);
    v24 = *(v9 + 40);
    v26 = *(v9 + 44);
    v25 = *(v9 + 48);
    v97 = *(v9 + 52);
    v98 = v25;
    v27 = *(v9 + 56);
    v28 = *(v9 + 60);
    v96 = v27;
    v29 = *(v9 + 64);
    v30 = *(v9 + 68);
    v31 = *(v9 + 72);
    v32 = *(v9 + 76);
    v33 = *(v9 + 80);
    v34 = *(v9 + 84);
    v35 = *(v9 + 88);
    v36 = *(v9 + 92);
    v37 = *(v9 + 96);
    v38 = *(v9 + 100);
    v39 = *(v9 + 104);
    v40 = *(v9 + 108);
    v41 = v9 + 164;
    v42 = v9 + 16548;
    v43 = v9 + 32932;
    v44 = *(v9 + 112);
    v45 = *(v9 + 116);
    v46 = *(v9 + 120);
    v47 = *(result + 14);
    v48 = v5 + *(result + 15);
    v49 = *(result + 28) * a2 / v3 + *(result + 44);
    v50 = *(v9 + 132);
    if (v50 >= 0x11)
    {
      v51 = 0;
    }

    else
    {
      v51 = 16 - v50;
    }

    v52 = *(v9 + 157);
    v53 = *(v9 + 156);
    v54 = *(v9 + 155);
    v55 = *(v9 + 154);
    v56 = v11[2];
    if (v56)
    {
      v57 = v56 + v15 * v48 + 2 * v47;
    }

    else
    {
      v57 = 0;
    }

    v59 = *v11;
    v58 = v11[1];
    v60 = v58 + v14 * v48 + 2 * v47;
    if (!v58)
    {
      v60 = 0;
    }

    v61 = v59 + v13 * v48 + 2 * v47;
    v62 = **(result + 7) + v49 * v10 + 8 * *(result + 36);
    v63 = v51;
    do
    {
      if (v8 >= 1)
      {
        v64 = v8;
        v65 = v57;
        v66 = v60;
        v67 = v61;
        v68 = v62;
        do
        {
          LOWORD(v27) = *(v68 + 2 * v55);
          LOWORD(v25) = *(v68 + 2 * v54);
          LOWORD(_S18) = *(v68 + 2 * v53);
          _H0 = *(v41 + 2 * llroundf(fminf(fmaxf(v17 * LODWORD(v27), 0.0), 8191.0)));
          v70 = v17 * LODWORD(_S18);
          __asm { FCVT            S18, H0 }

          _H0 = *(v41 + 2 * llroundf(fminf(fmaxf(v17 * LODWORD(v25), 0.0), 8191.0)));
          v77 = llroundf(fminf(fmaxf(v70, 0.0), 8191.0));
          __asm { FCVT            S14, H0 }

          _H0 = *(v41 + 2 * v77);
          __asm { FCVT            S15, H0 }

          v81 = (((v44 * _S14) + (v40 * _S18)) + (v45 * _S15)) + (v46 * fmaxf(_S18, fmaxf(_S14, _S15)));
          v82 = 8191.0;
          if (v81 <= 8191.0)
          {
            v82 = v81;
            if (v81 < 0.0)
            {
              v82 = 0.0;
            }
          }

          _H0 = *(v42 + 2 * llroundf(v82));
          __asm { FCVT            S0, H0 }

          _S6 = _S18 * _S0;
          v86 = _S14 * _S0;
          v87 = _S15 * _S0;
          v88 = ((v32 * v86) + (_S6 * v31)) + (v87 * v33);
          v89 = ((v35 * v86) + (_S6 * v34)) + (v87 * v36);
          _S0 = ((v38 * v86) + (_S6 * v37)) + (v87 * v39);
          LOWORD(_S6) = *(v43 + 2 * llroundf(fminf(fmaxf(v88, 0.0), 8191.0)));
          __asm { FCVT            S14, H6 }

          LOWORD(_S6) = *(v43 + 2 * llroundf(fminf(fmaxf(v89, 0.0), 8191.0)));
          __asm { FCVT            S15, H6 }

          LOWORD(_S0) = *(v43 + 2 * llroundf(fminf(fmaxf(_S0, 0.0), 8191.0)));
          __asm { FCVT            S18, H0 }

          v27 = (((v24 * _S15) + (v23 * _S14)) + (v26 * _S18)) + v18;
          v25 = v20;
          if (v27 <= v20)
          {
            v25 = (((v24 * _S15) + (v23 * _S14)) + (v26 * _S18)) + v18;
            if (v27 < v18)
            {
              v25 = v18;
            }
          }

          v93 = *(v68 + 2 * v52);
          *v67++ = llroundf(v25) << v63;
          if (v66)
          {
            v94 = ((v19 + (_S14 * v98)) + (_S15 * v97)) + (_S18 * v96);
            v95 = v22;
            if (v94 <= v22)
            {
              v95 = ((v19 + (_S14 * v98)) + (_S15 * v97)) + (_S18 * v96);
              if (v94 < v21)
              {
                v95 = v21;
              }
            }

            v27 = (v19 + (_S14 * v28)) + (_S15 * v29);
            _S18 = v27 + (_S18 * v30);
            *v66 = llroundf(v95) << v63;
            v25 = v22;
            if (_S18 <= v22)
            {
              v25 = _S18;
              if (_S18 < v21)
              {
                v25 = v21;
              }
            }

            v66[1] = llroundf(v25) << v63;
            v66 += 2;
          }

          if (v65)
          {
            *v65++ = v93;
          }

          v68 += 8;
          --v64;
        }

        while (v64);
      }

      v62 += v10;
      v61 += v13;
      v60 += v14;
      v57 += v15;
      ++v7;
    }

    while (v7 != v6);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_l64r_TRC_Mat_TRC_xf444(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
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
  dispatch_apply_f(v15, global_queue, v19, vt_Copy_l64r_TRC_Mat_TRC_xf444_GCD);
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

unsigned __int8 *vt_Copy_l64r_TRC_Mat_TRC_xf444_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, float a5, float a6, float a7, float a8, float a9)
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
    v19 = **(result + 8);
    v20 = *(result + 16);
    v21 = *(result + 17);
    v22 = *v21;
    v23 = v21[1];
    v24 = v21[2];
    v25 = 8191.0 / *(v18 + 128);
    LOWORD(a5) = *(v18 + 144);
    v26 = LODWORD(a5);
    LOWORD(a6) = *(v18 + 146);
    v27 = LODWORD(a6);
    LOWORD(a7) = *(v18 + 148);
    v28 = LODWORD(a7);
    LOWORD(a8) = *(v18 + 150);
    v29 = LODWORD(a8);
    LOWORD(a9) = *(v18 + 152);
    v30 = LODWORD(a9);
    v31 = *(v18 + 36);
    v32 = *(v18 + 40);
    v33 = *(v18 + 44);
    v34 = *(v18 + 48);
    v35 = *(v18 + 52);
    v36 = *(v18 + 56);
    v37 = *(v18 + 60);
    v38 = *(v18 + 64);
    v39 = *(v18 + 68);
    v40 = *(v18 + 72);
    v41 = *(v18 + 76);
    v42 = *(v18 + 80);
    v43 = *(v18 + 84);
    v44 = *(v18 + 88);
    v45 = *(v18 + 92);
    v46 = *(v18 + 96);
    v48 = *(v18 + 100);
    v47 = *(v18 + 104);
    v49 = v18 + 164;
    v50 = v18 + 16548;
    v51 = *(result + 14);
    v52 = v14 + *(result + 15);
    v53 = *(result + 28) * a2 / v12 + *(result + 44);
    v54 = *(v18 + 132);
    if (v54 >= 0x11)
    {
      v55 = 0;
    }

    else
    {
      v55 = 16 - v54;
    }

    v56 = *(v18 + 157);
    v57 = *(v18 + 156);
    v58 = *(v18 + 155);
    v59 = *(v18 + 154);
    v60 = v20[2];
    if (v60)
    {
      v61 = v60 + v24 * v52 + 2 * v51;
    }

    else
    {
      v61 = 0;
    }

    v63 = *v20;
    v62 = v20[1];
    v64 = v62 + v23 * v52 + 2 * v51;
    if (!v62)
    {
      v64 = 0;
    }

    v65 = v63 + v22 * v52 + 2 * v51;
    v66 = **(result + 7) + v53 * v19 + 8 * *(result + 36);
    v67 = v55;
    do
    {
      if (v17 >= 1)
      {
        v68 = v17;
        v69 = v66;
        v70 = v61;
        v71 = v64;
        v72 = v65;
        do
        {
          LOWORD(_S10) = *(v69 + 2 * v59);
          LOWORD(_S11) = *(v69 + 2 * v58);
          LOWORD(_S12) = *(v69 + 2 * v57);
          v73 = llroundf(fminf(fmaxf(v25 * LODWORD(_S10), 0.0), 8191.0));
          _S10 = v25 * LODWORD(_S12);
          _H12 = *(v49 + 2 * v73);
          __asm { FCVT            S12, H12 }

          _H11 = *(v49 + 2 * llroundf(fminf(fmaxf(v25 * LODWORD(_S11), 0.0), 8191.0)));
          __asm { FCVT            S11, H11 }

          LOWORD(_S10) = *(v49 + 2 * llroundf(fminf(fmaxf(_S10, 0.0), 8191.0)));
          __asm { FCVT            S10, H10 }

          v84 = ((v41 * _S11) + (_S12 * v40)) + (_S10 * v42);
          v85 = ((v44 * _S11) + (_S12 * v43)) + (_S10 * v45);
          _S12 = ((v48 * _S11) + (_S12 * v46)) + (_S10 * v47);
          LOWORD(_S10) = *(v50 + 2 * llroundf(fminf(fmaxf(v84, 0.0), 8191.0)));
          __asm { FCVT            S10, H10 }

          LOWORD(_S11) = *(v50 + 2 * llroundf(fminf(fmaxf(v85, 0.0), 8191.0)));
          __asm { FCVT            S11, H11 }

          LOWORD(_S12) = *(v50 + 2 * llroundf(fminf(fmaxf(_S12, 0.0), 8191.0)));
          __asm { FCVT            S12, H12 }

          v87 = (((v32 * _S11) + (v31 * _S10)) + (v33 * _S12)) + v26;
          v88 = v28;
          if (v87 <= v28)
          {
            v88 = (((v32 * _S11) + (v31 * _S10)) + (v33 * _S12)) + v26;
            if (v87 < v26)
            {
              v88 = v26;
            }
          }

          v89 = *(v69 + 2 * v56);
          *v72++ = llroundf(v88) << v67;
          if (v71)
          {
            v90 = ((v27 + (_S10 * v34)) + (_S11 * v35)) + (_S12 * v36);
            v91 = v30;
            if (v90 <= v30)
            {
              v91 = ((v27 + (_S10 * v34)) + (_S11 * v35)) + (_S12 * v36);
              if (v90 < v29)
              {
                v91 = v29;
              }
            }

            _S10 = ((v27 + (_S10 * v37)) + (_S11 * v38)) + (_S12 * v39);
            *v71 = llroundf(v91) << v67;
            _S11 = v30;
            if (_S10 <= v30)
            {
              _S11 = _S10;
              if (_S10 < v29)
              {
                _S11 = v29;
              }
            }

            v71[1] = llroundf(_S11) << v67;
            v71 += 2;
          }

          if (v70)
          {
            *v70++ = v89;
          }

          v69 += 8;
          --v68;
        }

        while (v68);
      }

      v66 += v19;
      v65 += v22;
      v64 += v23;
      v61 += v24;
      ++v16;
    }

    while (v16 != v15);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_l64r_rgb_xf444(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
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
  dispatch_apply_f(v15, global_queue, v19, vt_Copy_l64r_rgb_xf444_GCD);
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

unsigned __int8 *vt_Copy_l64r_rgb_xf444_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, float a5, float a6, float a7, float a8)
{
  v11 = *result;
  v12 = *(result + 13);
  v13 = v12 * a2 / v11;
  v14 = (v12 + v12 * a2) / v11 - v13;
  if (v14 >= 1)
  {
    v15 = 0;
    v16 = *(result + 24);
    v17 = *(result + 19);
    v18 = **(result + 8);
    v19 = *(result + 16);
    v20 = *(result + 17);
    v21 = *v20;
    v22 = v20[1];
    v23 = v20[2];
    *&v24 = *(v17 + 136);
    v25 = *&v24 / *(v17 + 128);
    LOWORD(v24) = *(v17 + 144);
    v26 = v24;
    LOWORD(a5) = *(v17 + 146);
    v27 = LODWORD(a5);
    LOWORD(a6) = *(v17 + 148);
    v28 = LODWORD(a6);
    LOWORD(a7) = *(v17 + 150);
    v29 = LODWORD(a7);
    LOWORD(a8) = *(v17 + 152);
    v30 = LODWORD(a8);
    v31 = *(v17 + 36);
    v32 = *(v17 + 40);
    v33 = *(v17 + 44);
    v34 = *(v17 + 48);
    v35 = *(v17 + 52);
    v36 = *(v17 + 56);
    v37 = *(v17 + 60);
    v38 = *(v17 + 64);
    v39 = *(v17 + 68);
    v40 = *(result + 14);
    v41 = v13 + *(result + 15);
    v42 = *(result + 28) * a2 / v11 + *(result + 44);
    v43 = *(v17 + 132);
    if (v43 >= 0x11)
    {
      v44 = 0;
    }

    else
    {
      v44 = 16 - v43;
    }

    v45 = *(v17 + 157);
    v46 = *(v17 + 156);
    v47 = *(v17 + 155);
    v48 = *(v17 + 154);
    v49 = v19[2];
    if (v49)
    {
      v50 = v49 + v23 * v41 + 2 * v40;
    }

    else
    {
      v50 = 0;
    }

    v52 = *v19;
    v51 = v19[1];
    v53 = v51 + v22 * v41 + 2 * v40;
    if (!v51)
    {
      v53 = 0;
    }

    v54 = v52 + v21 * v41 + 2 * v40;
    v55 = **(result + 7) + v42 * v18 + 8 * *(result + 36);
    v56 = v44;
    do
    {
      if (v16 >= 1)
      {
        v57 = v16;
        v58 = v55;
        v59 = v50;
        v60 = v53;
        v61 = v54;
        do
        {
          LOWORD(v8) = *(v58 + 2 * v48);
          v8 = v25 * LODWORD(v8);
          LOWORD(v9) = *(v58 + 2 * v47);
          v9 = v25 * LODWORD(v9);
          LOWORD(v10) = *(v58 + 2 * v46);
          v10 = v25 * LODWORD(v10);
          v62 = (((v32 * v9) + (v31 * v8)) + (v33 * v10)) + v26;
          v63 = v28;
          if (v62 <= v28)
          {
            v63 = (((v32 * v9) + (v31 * v8)) + (v33 * v10)) + v26;
            if (v62 < v26)
            {
              v63 = v26;
            }
          }

          v64 = *(v58 + 2 * v45);
          *v61++ = llroundf(v63) << v56;
          if (v60)
          {
            v65 = ((v27 + (v8 * v34)) + (v9 * v35)) + (v10 * v36);
            v66 = v30;
            if (v65 <= v30)
            {
              v66 = ((v27 + (v8 * v34)) + (v9 * v35)) + (v10 * v36);
              if (v65 < v29)
              {
                v66 = v29;
              }
            }

            v8 = ((v27 + (v8 * v37)) + (v9 * v38)) + (v10 * v39);
            *v60 = llroundf(v66) << v56;
            v9 = v30;
            if (v8 <= v30)
            {
              v9 = v8;
              if (v8 < v29)
              {
                v9 = v29;
              }
            }

            v60[1] = llroundf(v9) << v56;
            v60 += 2;
          }

          if (v59)
          {
            *v59++ = v64;
          }

          v58 += 8;
          --v57;
        }

        while (v57);
      }

      v55 += v18;
      v54 += v21;
      v53 += v22;
      v50 += v23;
      ++v15;
    }

    while (v15 != v14);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_l64r_TRC_Tone_Mat_TRC_BGRA(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
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
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_l64r_TRC_Tone_Mat_TRC_BGRA_GCD);
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

unsigned __int8 *vt_Copy_l64r_TRC_Tone_Mat_TRC_BGRA_GCD(unsigned __int8 *result, uint64_t a2)
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
    v15 = *(v11 + 72);
    v16 = *(v11 + 76);
    v17 = *(v11 + 80);
    v18 = *(v11 + 84);
    v19 = *(v11 + 88);
    v20 = *(v11 + 92);
    v21 = *(v11 + 96);
    v22 = *(v11 + 100);
    v23 = v11 + 164;
    v24 = v11 + 16548;
    v25 = v11 + 32932;
    v26 = *(v11 + 104);
    v27 = *(v11 + 108);
    v28 = *(v11 + 112);
    v29 = *(v11 + 116);
    v30 = *(v11 + 120);
    v31 = v7 + *(result + 15);
    v32 = *(result + 28) * a2 / v5 + *(result + 44);
    v33 = *(v11 + 161);
    v34 = *(v11 + 160);
    v35 = *(v11 + 159);
    v36 = *(v11 + 158);
    v37 = *(v11 + 157);
    v38 = *(v11 + 156);
    v39 = *(v11 + 155);
    v40 = *(v11 + 154);
    v41 = **(result + 16) + v13 * v31 + 4 * *(result + 14);
    v42 = **(result + 7) + v32 * v12 + 8 * *(result + 36);
    do
    {
      if (v10 >= 1)
      {
        v43 = v10;
        v44 = v42;
        v45 = v41;
        do
        {
          LOWORD(_S26) = *(v44 + 2 * v40);
          LOWORD(v3) = *(v44 + 2 * v39);
          LOWORD(v4) = *(v44 + 2 * v38);
          _H26 = *(v23 + 2 * llroundf(fminf(fmaxf(v14 * LODWORD(_S26), 0.0), 8191.0)));
          __asm { FCVT            S26, H26 }

          _H27 = *(v23 + 2 * llroundf(fminf(fmaxf(v14 * LODWORD(v3), 0.0), 8191.0)));
          __asm { FCVT            S27, H27 }

          _H28 = *(v23 + 2 * llroundf(fminf(fmaxf(v14 * LODWORD(v4), 0.0), 8191.0)));
          __asm { FCVT            S29, H28 }

          v56 = (((v28 * _S27) + (v27 * _S26)) + (v29 * _S29)) + (v30 * fmaxf(_S26, fmaxf(_S27, _S29)));
          v57 = 8191.0;
          if (v56 <= 8191.0)
          {
            v57 = v56;
            if (v56 < 0.0)
            {
              v57 = 0.0;
            }
          }

          _H28 = *(v24 + 2 * llroundf(v57));
          __asm { FCVT            S30, H28 }

          v60 = _S26 * _S30;
          v61 = _S27 * _S30;
          v62 = _S29 * _S30;
          if (*(v25 + 2 * llroundf(fminf(fmaxf(((v16 * v61) + (v60 * v15)) + ((_S29 * _S30) * v17), 0.0), 8191.0))) <= COERCE_SHORT_FLOAT(23544))
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

          v65 = *(v44 + 2 * v37);
          v66 = ((v19 * v61) + (v60 * v18)) + (v62 * v20);
          v4 = v22 * v61;
          v67 = (v4 + (v60 * v21)) + (v62 * v26);
          v68 = *(v25 + 2 * llroundf(fminf(fmaxf(v66, 0.0), 8191.0)));
          v69 = *(v25 + 2 * llroundf(fminf(fmaxf(v67, 0.0), 8191.0)));
          *(v45 + v36) = llroundf(_S29);
          if (v68 <= COERCE_SHORT_FLOAT(23544))
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

          *(v45 + v35) = llroundf(_S27);
          if (v69 <= COERCE_SHORT_FLOAT(23544))
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

          v44 += 8;
          v3 = v65 * 0.0038911;
          *(v45 + v34) = llroundf(_S26);
          *(v45 + v33) = llroundf(v3);
          v45 += 4;
          --v43;
        }

        while (v43);
      }

      v42 += v12;
      v41 += v13;
      ++v9;
    }

    while (v9 != v8);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_l64r_TRC_Mat_TRC_BGRA(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
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
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_l64r_TRC_Mat_TRC_BGRA_GCD);
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

unsigned __int8 *vt_Copy_l64r_TRC_Mat_TRC_BGRA_GCD(unsigned __int8 *result, uint64_t a2)
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
    v15 = *(v11 + 72);
    v16 = *(v11 + 76);
    v17 = *(v11 + 80);
    v18 = *(v11 + 84);
    v19 = *(v11 + 88);
    v20 = *(v11 + 92);
    v21 = *(v11 + 96);
    v22 = *(v11 + 100);
    v23 = *(v11 + 104);
    v24 = v11 + 164;
    v25 = v11 + 16548;
    v26 = v7 + *(result + 15);
    v27 = *(result + 28) * a2 / v5 + *(result + 44);
    v28 = *(v11 + 161);
    v29 = *(v11 + 160);
    v30 = *(v11 + 159);
    v31 = *(v11 + 158);
    v32 = *(v11 + 157);
    v33 = *(v11 + 156);
    v34 = *(v11 + 155);
    v35 = *(v11 + 154);
    v36 = **(result + 16) + v13 * v26 + 4 * *(result + 14);
    v37 = **(result + 7) + v27 * v12 + 8 * *(result + 36);
    do
    {
      if (v10 >= 1)
      {
        v38 = v10;
        v39 = v37;
        v40 = v36;
        do
        {
          LOWORD(v2) = *(v39 + 2 * v35);
          LOWORD(_S23) = *(v39 + 2 * v34);
          LOWORD(_S24) = *(v39 + 2 * v33);
          _H22 = *(v24 + 2 * llroundf(fminf(fmaxf(v14 * LODWORD(v2), 0.0), 8191.0)));
          __asm { FCVT            S22, H22 }

          _H23 = *(v24 + 2 * llroundf(fminf(fmaxf(v14 * LODWORD(_S23), 0.0), 8191.0)));
          _H25 = *(v24 + 2 * llroundf(fminf(fmaxf(v14 * LODWORD(_S24), 0.0), 8191.0)));
          __asm
          {
            FCVT            S24, H23
            FCVT            S23, H25
          }

          if (*(v25 + 2 * llroundf(fminf(fmaxf(((v16 * _S24) + (_S22 * v15)) + (_S23 * v17), 0.0), 8191.0))) <= COERCE_SHORT_FLOAT(23544))
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

          v53 = ((v19 * _S24) + (_S22 * v18)) + (_S23 * v20);
          v54 = ((v22 * _S24) + (_S22 * v21)) + (_S23 * v23);
          v55 = *(v25 + 2 * llroundf(fminf(fmaxf(v53, 0.0), 8191.0)));
          v57 = fminf(fmaxf(v54, 0.0), 8191.0);
          v56 = *(v25 + 2 * llroundf(v57));
          LOWORD(v57) = *(v39 + 2 * v32);
          *(v40 + v31) = llroundf(_S25);
          if (v55 <= COERCE_SHORT_FLOAT(23544))
          {
            __asm { FCMP            H24, #0 }

            if (_NF)
            {
              _S24 = 0.0;
            }

            else
            {
              __asm { FCVT            S24, H24 }
            }
          }

          else
          {
            _S24 = 255.0;
          }

          *(v40 + v30) = llroundf(_S24);
          if (v56 <= COERCE_SHORT_FLOAT(23544))
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

          v39 += 8;
          v2 = LODWORD(v57) * 0.0038911;
          *(v40 + v29) = llroundf(_S23);
          *(v40 + v28) = llroundf(v2);
          v40 += 4;
          --v38;
        }

        while (v38);
      }

      v37 += v12;
      v36 += v13;
      ++v9;
    }

    while (v9 != v8);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_l64r_rgb_BGRA(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
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
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_l64r_rgb_BGRA_GCD);
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

unsigned __int8 *vt_Copy_l64r_rgb_BGRA_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, float a5, float a6)
{
  v6 = *result;
  v7 = *(result + 13);
  v8 = v7 * a2 / v6;
  v9 = (v7 + v7 * a2) / v6 - v8;
  if (v9 >= 1)
  {
    v10 = 0;
    v11 = *(result + 24);
    v12 = *(result + 19);
    v13 = **(result + 8);
    v14 = **(result + 17);
    v15 = *(v12 + 136) / *(v12 + 128);
    v16 = v8 + *(result + 15);
    v17 = *(result + 28) * a2 / v6 + *(result + 44);
    v18 = *(v12 + 161);
    v19 = *(v12 + 160);
    v20 = *(v12 + 159);
    v21 = *(v12 + 158);
    v22 = *(v12 + 157);
    v23 = *(v12 + 156);
    v24 = *(v12 + 155);
    v25 = *(v12 + 154);
    v26 = **(result + 16) + v14 * v16 + 4 * *(result + 14);
    v27 = **(result + 7) + v17 * v13 + 8 * *(result + 36);
    do
    {
      if (v11 >= 1)
      {
        v28 = v11;
        v29 = v27;
        v30 = v26;
        do
        {
          LOWORD(a5) = *(v29 + 2 * v25);
          v31 = v15 * LODWORD(a5);
          v32 = 255.0;
          if (v31 <= 255.0)
          {
            v32 = v31;
            if (v31 < 0.0)
            {
              v32 = 0.0;
            }
          }

          LOWORD(v31) = *(v29 + 2 * v24);
          v33 = LODWORD(v31);
          LOWORD(a6) = *(v29 + 2 * v23);
          LOWORD(v31) = *(v29 + 2 * v22);
          v34 = v15 * v33;
          *(v30 + v21) = llroundf(v32);
          v35 = 255.0;
          if (v34 <= 255.0)
          {
            v35 = v34;
            if (v34 < 0.0)
            {
              v35 = 0.0;
            }
          }

          v36 = llroundf(v35);
          v37 = v15 * LODWORD(a6);
          *(v30 + v20) = v36;
          a6 = 255.0;
          if (v37 <= 255.0)
          {
            a6 = v37;
            if (v37 < 0.0)
            {
              a6 = 0.0;
            }
          }

          v29 += 8;
          a5 = LODWORD(v31) * 0.0038911;
          *(v30 + v19) = llroundf(a6);
          *(v30 + v18) = llroundf(a5);
          v30 += 4;
          --v28;
        }

        while (v28);
      }

      v27 += v13;
      v26 += v14;
      ++v10;
    }

    while (v10 != v9);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_l64r_TRC_Tone_Mat_TRC_l10r(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
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
  dispatch_apply_f(v15, global_queue, v19, vt_Copy_l64r_TRC_Tone_Mat_TRC_l10r_GCD);
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