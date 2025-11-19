uint64_t vt_Copy_422vf_TRC_Tone_Mat_TRC_BGRA(uint64_t a1, uint64_t *a2, uint64_t a3, unint64_t *a4, void *a5, uint64_t *a6, uint64_t a7, void *a8, void *a9)
{
  v61 = a8;
  v62 = a3;
  v68 = a5;
  v63 = a4;
  v69 = *MEMORY[0x1E69E9840];
  v10 = *(a1 + 162);
  v12 = *a2;
  v11 = a2[1];
  v13 = a2[2];
  v60 = a2[3];
  v14 = a2[4];
  v15 = a2[5];
  v16 = *a6;
  v64 = a6[1];
  v65 = v11;
  v18 = a6[2];
  v17 = a6[3];
  v58 = a1;
  v59 = v17;
  v20 = a6[4];
  v19 = a6[5];
  v66 = v16;
  v67 = v19;
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
    v23 = (&v56 - v25);
    bzero(&v56 - v25, v26);
  }

  v57 = a7;
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
    v32 = v63;
    if (v22 || (v33 = v29 + 1 + v30, v33 > *v63) || ((v33 + (v33 >> 63)) & 0xFFFFFFFFFFFFFFFELL) > v63[1] || (v34 = v63[2], v33 > v34) && v34 || (4 * (v31 + v28) + 4) > *v61)
    {
      --v28;
      --v29;
    }

    else
    {
      ++v28;
      ++v66;
      ++v12;
      ++v29;
    }
  }

  else
  {
    v32 = v63;
  }

  if (v29 + v30 > v12)
  {
    v29 = v12 - v30;
  }

  if (v28 + v31 > v66)
  {
    v28 = v66 - v31;
  }

  if (v15 + v60 <= v65)
  {
    v35 = v60;
  }

  else
  {
    v35 = v65 - v15;
  }

  if (v67 + v59 <= v64)
  {
    v36 = v59;
  }

  else
  {
    v36 = v64 - v67;
  }

  if (v29 >= v28)
  {
    v37 = v28;
  }

  else
  {
    v37 = v29;
  }

  if (v35 >= v36)
  {
    v38 = v36;
  }

  else
  {
    v38 = v35;
  }

  v39 = v15 + v38 - 1;
  v40 = v37 + v30;
  if (v37 + v30 + *v32 * v39 <= *v68)
  {
    v45 = v62;
    if (*(v62 + 8) && ((v40 + 1 + ((v40 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v32[1] * v39 > v68[1])
    {
      v60 = v30;
      v41 = v10;
      v42 = v12;
      v43 = v15;
      v44 = a9;
    }

    else if (*(v62 + 16) && v40 + v32[2] * v39 > v68[2])
    {
      v60 = v30;
      v41 = v10;
      v42 = v12;
      v43 = v15;
      v44 = a9;
    }

    else
    {
      if ((*v61 * (v67 + v38 - 1) + 4 * (v37 + v31)) <= *a9)
      {
        goto LABEL_53;
      }

      v60 = v30;
      v41 = v10;
      v42 = v12;
      v43 = v15;
      v44 = a9;
    }
  }

  else
  {
    v60 = v30;
    v41 = v10;
    v42 = v12;
    v43 = v15;
    v44 = a9;
  }

  fig_log_get_emitter();
  v46 = FigSignalErrorAtGM();
  v45 = v62;
  v32 = v63;
  v27 = v44;
  v15 = v43;
  v12 = v42;
  v10 = v41;
  v30 = v60;
  if (v46)
  {
    v24 = v46;
    goto LABEL_58;
  }

LABEL_53:
  *v23 = v10;
  *(v23 + 4) = v12;
  v47 = v64;
  *(v23 + 12) = v65;
  *(v23 + 20) = v37;
  *(v23 + 28) = v38;
  *(v23 + 36) = v30;
  *(v23 + 44) = v15;
  v23[11] = v47;
  v23[12] = v37;
  v23[13] = v38;
  v23[14] = v31;
  v23[7] = v45;
  v23[8] = v32;
  v48 = v66;
  v49 = v67;
  v23[9] = v68;
  v23[10] = v48;
  v50 = v57;
  v23[15] = v49;
  v23[16] = v50;
  v23[17] = v61;
  v23[18] = v27;
  v23[19] = v58;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v10, global_queue, v23, vt_Copy_422vf_TRC_Tone_Mat_TRC_BGRA_GCD);
  if (!v10)
  {
    return 0;
  }

  v52 = (v23 + 20);
  v53 = v10;
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

LABEL_58:
  if (v10 == 255)
  {
    goto LABEL_59;
  }

  return v24;
}

unsigned __int8 *vt_Copy_422vf_TRC_Tone_Mat_TRC_BGRA_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, float a5)
{
  v6 = *result;
  v7 = *(result + 13);
  v8 = v7 * a2 / v6;
  v9 = (v7 + v7 * a2) / v6 - v8;
  if (v9 >= 1)
  {
    v10 = 0;
    v11 = *(result + 19);
    v12 = *(result + 24) & 0xFFFFFFFE;
    v14 = *(result + 7);
    v13 = *(result + 8);
    v15 = *v13;
    v16 = v13[1];
    v17 = v13[2];
    v18 = **(result + 17);
    *&v19 = *(v11 + 128);
    v20 = 8191.0 / *&v19;
    LOWORD(v19) = *(v11 + 140);
    v21 = v19;
    LOWORD(a5) = *(v11 + 142);
    v22 = LODWORD(a5);
    v23 = v20 * *v11;
    v24 = v20 * *(v11 + 8);
    v25 = v20 * *(v11 + 16);
    v26 = v20 * *(v11 + 20);
    v27 = v20 * *(v11 + 28);
    v28 = *(v11 + 72);
    v29 = *(v11 + 76);
    v30 = *(v11 + 80);
    v31 = *(v11 + 84);
    v32 = *(v11 + 88);
    v33 = *(v11 + 92);
    v34 = *(v11 + 96);
    v35 = *(v11 + 100);
    v36 = v11 + 164;
    v37 = v11 + 16548;
    v38 = v11 + 32932;
    v39 = *(v11 + 104);
    v40 = *(v11 + 108);
    v41 = *(v11 + 112);
    v42 = *(v11 + 116);
    v43 = *(v11 + 120);
    v44 = v8 + *(result + 15);
    v45 = *(result + 28) * a2 / v6 + *(result + 44);
    v46 = *(result + 36);
    v47 = *(v11 + 161);
    v48 = *(v11 + 160);
    v49 = *(v11 + 159);
    v50 = *(v11 + 158);
    v51 = **(result + 16) + v18 * v44 + 4 * *(result + 14);
    v52 = v14[2];
    if (v52)
    {
      v53 = (v52 + v45 * v17 + v46);
    }

    else
    {
      v53 = 0;
    }

    v55 = *v14;
    v54 = v14[1];
    v56 = v54 + v45 * v16 + v46;
    if (!v54)
    {
      v56 = 0;
    }

    v57 = (v55 + v45 * v15 + v46);
    do
    {
      if (v12 >= 1)
      {
        v58 = 0;
        v59 = v57;
        v60 = v51;
        v61 = v53;
        do
        {
          LOBYTE(_S30) = *(v56 + v58 + 1);
          *&v62 = LODWORD(_S30);
          v63 = *&v62 - v22;
          v64 = v24 * (*&v62 - v22);
          LOBYTE(v62) = *v59;
          v65 = v23 * (v62 - v21);
          v66 = v64 + v65;
          v67 = 8191.0;
          if ((v64 + v65) <= 8191.0)
          {
            v67 = v64 + v65;
            if (v66 < 0.0)
            {
              v67 = 0.0;
            }
          }

          LOBYTE(v66) = *(v56 + v58);
          v68 = LODWORD(v66) - v22;
          v69 = (v26 * v63) + (v68 * v25);
          v70 = 8191.0;
          if ((v65 + v69) <= 8191.0)
          {
            v70 = v65 + v69;
            if ((v65 + v69) < 0.0)
            {
              v70 = 0.0;
            }
          }

          v71 = v27 * v68;
          v72 = (v27 * v68) + v65;
          v73 = 8191.0;
          if (v72 <= 8191.0)
          {
            v73 = v72;
            if (v72 < 0.0)
            {
              v73 = 0.0;
            }
          }

          LOBYTE(v72) = v59[1];
          v74 = v23 * (LODWORD(v72) - v21);
          v75 = v64 + v74;
          v76 = (v64 + v74) <= 8191.0;
          v77 = 8191.0;
          if (v76)
          {
            v77 = v75;
            if (v75 < 0.0)
            {
              v77 = 0.0;
            }
          }

          v78 = v69 + v74;
          v79 = 8191.0;
          if (v78 <= 8191.0)
          {
            v79 = v78;
            if (v78 < 0.0)
            {
              v79 = 0.0;
            }
          }

          v80 = v71 + v74;
          v76 = (v71 + v74) <= 8191.0;
          v81 = 8191.0;
          if (v76)
          {
            v81 = v80;
            if (v80 < 0.0)
            {
              v81 = 0.0;
            }
          }

          if (v61)
          {
            v82 = *v61;
            v83 = v61[1];
            v61 += 2;
          }

          else
          {
            v82 = 0;
            v83 = 0;
          }

          _S10 = fmaxf(v67, 0.0);
          v85 = 8191.0;
          LOWORD(_S10) = *(v36 + 2 * llroundf(fminf(_S10, 8191.0)));
          __asm { FCVT            S10, H10 }

          _H31 = *(v36 + 2 * llroundf(fminf(fmaxf(v70, 0.0), 8191.0)));
          __asm { FCVT            S31, H31 }

          _H8 = *(v36 + 2 * llroundf(fminf(fmaxf(v73, 0.0), 8191.0)));
          __asm { FCVT            S8, H8 }

          _H9 = *(v36 + 2 * llroundf(fminf(fmaxf(v77, 0.0), 8191.0)));
          _H11 = *(v36 + 2 * llroundf(fminf(fmaxf(v79, 0.0), 8191.0)));
          _H12 = *(v36 + 2 * llroundf(fminf(fmaxf(v81, 0.0), 8191.0)));
          v98 = (((v41 * _S31) + (v40 * _S10)) + (v42 * _S8)) + (v43 * fmaxf(_S10, fmaxf(_S31, _S8)));
          v99 = 8191.0;
          if (v98 <= 8191.0)
          {
            v99 = v98;
            if (v98 < 0.0)
            {
              v99 = 0.0;
            }
          }

          __asm
          {
            FCVT            S9, H9
            FCVT            S11, H11
            FCVT            S12, H12
          }

          _H13 = *(v37 + 2 * llroundf(v99));
          v104 = fmaxf(_S9, fmaxf(_S11, _S12));
          v105 = (((v41 * _S11) + (v40 * _S9)) + (v42 * _S12)) + (v43 * v104);
          if (v105 <= 8191.0)
          {
            v85 = (((v41 * _S11) + (v40 * _S9)) + (v42 * _S12)) + (v43 * v104);
            if (v105 < 0.0)
            {
              v85 = 0.0;
            }
          }

          __asm { FCVT            S13, H13 }

          v107 = _S10 * _S13;
          v108 = _S31 * _S13;
          v109 = _S8 * _S13;
          _H30 = *(v37 + 2 * llroundf(v85));
          __asm { FCVT            S30, H30 }

          v112 = _S9 * _S30;
          v113 = _S11 * _S30;
          v114 = _S12 * _S30;
          v115 = ((v29 * v108) + (v107 * v28)) + (v109 * v30);
          v116 = ((v32 * v108) + (v107 * v31)) + (v109 * v33);
          v117 = ((v35 * v108) + (v107 * v34)) + (v109 * v39);
          v118 = ((v29 * v113) + (v112 * v28)) + (v114 * v30);
          v119 = ((v32 * v113) + (v112 * v31)) + (v114 * v33);
          v120 = ((v35 * v113) + (v112 * v34)) + (v114 * v39);
          v121 = *(v38 + 2 * llroundf(fminf(fmaxf(v115, 0.0), 8191.0)));
          v122 = *(v38 + 2 * llroundf(fminf(fmaxf(v116, 0.0), 8191.0)));
          v123 = *(v38 + 2 * llroundf(fminf(fmaxf(v117, 0.0), 8191.0)));
          v124 = *(v38 + 2 * llroundf(fminf(fmaxf(v118, 0.0), 8191.0)));
          v125 = *(v38 + 2 * llroundf(fminf(fmaxf(v119, 0.0), 8191.0)));
          v126 = *(v38 + 2 * llroundf(fminf(fmaxf(v120, 0.0), 8191.0)));
          if (v61)
          {
            v127 = v82;
          }

          else
          {
            v127 = -1;
          }

          if (v61)
          {
            v128 = v83;
          }

          else
          {
            v128 = -1;
          }

          if (v121 <= COERCE_SHORT_FLOAT(23544))
          {
            __asm { FCMP            H12, #0 }

            if (_NF)
            {
              _S12 = 0.0;
            }

            else
            {
              __asm { FCVT            S12, H12 }
            }
          }

          else
          {
            _S12 = 255.0;
          }

          *(v60 + v50) = llroundf(_S12);
          if (v122 <= COERCE_SHORT_FLOAT(23544))
          {
            __asm { FCMP            H11, #0 }

            if (_NF)
            {
              _S11 = 0.0;
            }

            else
            {
              __asm { FCVT            S11, H11 }
            }
          }

          else
          {
            _S11 = 255.0;
          }

          *(v60 + v49) = llroundf(_S11);
          if (v123 <= COERCE_SHORT_FLOAT(23544))
          {
            __asm { FCMP            H10, #0 }

            if (_NF)
            {
              _S10 = 0.0;
            }

            else
            {
              __asm { FCVT            S10, H10 }
            }
          }

          else
          {
            _S10 = 255.0;
          }

          *(v60 + v48) = llroundf(_S10);
          *(v60 + v47) = v127;
          if (v124 <= COERCE_SHORT_FLOAT(23544))
          {
            __asm { FCMP            H9, #0 }

            if (_NF)
            {
              _S9 = 0.0;
            }

            else
            {
              __asm { FCVT            S9, H9 }
            }
          }

          else
          {
            _S9 = 255.0;
          }

          v137 = v60 + 4;
          *(v60 + 4 + v50) = llroundf(_S9);
          if (v125 <= COERCE_SHORT_FLOAT(23544))
          {
            __asm { FCMP            H8, #0 }

            if (_NF)
            {
              _S8 = 0.0;
            }

            else
            {
              __asm { FCVT            S8, H8 }
            }
          }

          else
          {
            _S8 = 255.0;
          }

          *(v137 + v49) = llroundf(_S8);
          if (v126 <= COERCE_SHORT_FLOAT(23544))
          {
            __asm { FCMP            H30, #0 }

            if (_NF)
            {
              _S30 = 0.0;
            }

            else
            {
              __asm { FCVT            S30, H30 }
            }
          }

          else
          {
            _S30 = 255.0;
          }

          *(v137 + v48) = llroundf(_S30);
          *(v137 + v47) = v128;
          v60 += 8;
          v58 += 2;
          v59 += 2;
        }

        while (v58 < v12);
      }

      v57 += v15;
      v56 += v16;
      v53 += v17;
      v51 += v18;
      ++v10;
    }

    while (v10 != v9);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_422vf_TRC_Mat_TRC_BGRA_neon_fp16(uint64_t a1, uint64_t *a2, uint64_t a3, unint64_t *a4, void *a5, uint64_t *a6, uint64_t a7, void *a8, void *a9)
{
  v61 = a8;
  v62 = a3;
  v68 = a5;
  v63 = a4;
  v69 = *MEMORY[0x1E69E9840];
  v10 = *(a1 + 162);
  v12 = *a2;
  v11 = a2[1];
  v13 = a2[2];
  v60 = a2[3];
  v14 = a2[4];
  v15 = a2[5];
  v16 = *a6;
  v64 = a6[1];
  v65 = v11;
  v18 = a6[2];
  v17 = a6[3];
  v58 = a1;
  v59 = v17;
  v20 = a6[4];
  v19 = a6[5];
  v66 = v16;
  v67 = v19;
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
    v23 = (&v56 - v25);
    bzero(&v56 - v25, v26);
  }

  v57 = a7;
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
    v32 = v63;
    if (v22 || (v33 = v29 + 1 + v30, v33 > *v63) || ((v33 + (v33 >> 63)) & 0xFFFFFFFFFFFFFFFELL) > v63[1] || (v34 = v63[2], v33 > v34) && v34 || (4 * (v31 + v28) + 4) > *v61)
    {
      --v28;
      --v29;
    }

    else
    {
      ++v28;
      ++v66;
      ++v12;
      ++v29;
    }
  }

  else
  {
    v32 = v63;
  }

  if (v29 + v30 > v12)
  {
    v29 = v12 - v30;
  }

  if (v28 + v31 > v66)
  {
    v28 = v66 - v31;
  }

  if (v15 + v60 <= v65)
  {
    v35 = v60;
  }

  else
  {
    v35 = v65 - v15;
  }

  if (v67 + v59 <= v64)
  {
    v36 = v59;
  }

  else
  {
    v36 = v64 - v67;
  }

  if (v29 >= v28)
  {
    v37 = v28;
  }

  else
  {
    v37 = v29;
  }

  if (v35 >= v36)
  {
    v38 = v36;
  }

  else
  {
    v38 = v35;
  }

  v39 = v15 + v38 - 1;
  v40 = v37 + v30;
  if (v37 + v30 + *v32 * v39 <= *v68)
  {
    v45 = v62;
    if (*(v62 + 8) && ((v40 + 1 + ((v40 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v32[1] * v39 > v68[1])
    {
      v60 = v30;
      v41 = v10;
      v42 = v12;
      v43 = v15;
      v44 = a9;
    }

    else if (*(v62 + 16) && v40 + v32[2] * v39 > v68[2])
    {
      v60 = v30;
      v41 = v10;
      v42 = v12;
      v43 = v15;
      v44 = a9;
    }

    else
    {
      if ((*v61 * (v67 + v38 - 1) + 4 * (v37 + v31)) <= *a9)
      {
        goto LABEL_53;
      }

      v60 = v30;
      v41 = v10;
      v42 = v12;
      v43 = v15;
      v44 = a9;
    }
  }

  else
  {
    v60 = v30;
    v41 = v10;
    v42 = v12;
    v43 = v15;
    v44 = a9;
  }

  fig_log_get_emitter();
  v46 = FigSignalErrorAtGM();
  v45 = v62;
  v32 = v63;
  v27 = v44;
  v15 = v43;
  v12 = v42;
  v10 = v41;
  v30 = v60;
  if (v46)
  {
    v24 = v46;
    goto LABEL_58;
  }

LABEL_53:
  *v23 = v10;
  *(v23 + 4) = v12;
  v47 = v64;
  *(v23 + 12) = v65;
  *(v23 + 20) = v37;
  *(v23 + 28) = v38;
  *(v23 + 36) = v30;
  *(v23 + 44) = v15;
  v23[11] = v47;
  v23[12] = v37;
  v23[13] = v38;
  v23[14] = v31;
  v23[7] = v45;
  v23[8] = v32;
  v48 = v66;
  v49 = v67;
  v23[9] = v68;
  v23[10] = v48;
  v50 = v57;
  v23[15] = v49;
  v23[16] = v50;
  v23[17] = v61;
  v23[18] = v27;
  v23[19] = v58;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v10, global_queue, v23, vt_Copy_422vf_TRC_Mat_TRC_BGRA_neon_fp16_GCD);
  if (!v10)
  {
    return 0;
  }

  v52 = (v23 + 20);
  v53 = v10;
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

LABEL_58:
  if (v10 == 255)
  {
    goto LABEL_59;
  }

  return v24;
}

unsigned __int8 *vt_Copy_422vf_TRC_Mat_TRC_BGRA_neon_fp16_GCD(unsigned __int8 *result, uint64_t a2, int16x8_t _Q0)
{
  v7 = 0;
  v8 = 0;
  v9 = *(result + 24);
  v10 = *result;
  v11 = *(result + 28) * a2 / v10 + *(result + 44);
  v12 = *(result + 13);
  v183 = *(result + 14);
  v185 = *(result + 36);
  v13 = v12 * a2;
  v14 = *(result + 19);
  v16 = *(result + 7);
  v15 = *(result + 8);
  v17 = *v15;
  v18 = v15[1];
  v19 = v15[2];
  v20 = *v16;
  v21 = v16[1];
  v22 = v16[2];
  v23 = v13 / v10;
  v24 = **(result + 17);
  v25 = v12 + v13;
  v180 = **(result + 16);
  v177 = v24 * (v13 / v10 + *(result + 15));
  v26 = v14[16].u32[0];
  v27 = v14[19].u8[6];
  v202[0] = v14[19].i8[6];
  v28 = v14[19].u8[7];
  v202[1] = v14[19].i8[7];
  v29 = v14[20].u8[0];
  v202[2] = v14[20].i8[0];
  v30 = v14[20].u8[1];
  v202[3] = v14[20].i8[1];
  v31 = v14[17].u16[2];
  v32 = v14[17].u16[3];
  v33 = v14->f32[0];
  v5.i32[0] = v14[1].i32[0];
  v34 = v14[2];
  v35.i32[0] = v14[3].i32[1];
  _Q0.i32[0] = v14[9].i32[0];
  _S1 = v14[9].f32[1];
  _S2 = v14[10].f32[0];
  _S3 = v14[10].f32[1];
  _S4 = v14[11].f32[0];
  _S5 = v14[11].f32[1];
  _S6 = v14[12].f32[0];
  _S7 = v14[12].f32[1];
  _S16 = v14[13].f32[0];
  v200 = 0u;
  v201 = 0u;
  v44 = v25 / v10;
  do
  {
    v45 = 0;
    v46 = v202[v8];
    do
    {
      *((&v200 + ((v46 + 4 * v45) & 0xF8)) | (v46 + 4 * v45) & 7) = v7 + v45;
      ++v45;
    }

    while (v45 != 8);
    ++v8;
    v7 += 8;
  }

  while (v8 != 4);
  v47 = v44 - v23;
  if (v44 - v23 >= 1)
  {
    v48 = 0;
    v49 = v26;
    v50 = &v14[20] + 4;
    v51 = v9 & 0xFFFFFFFE;
    v52 = &v14[2068] + 4;
    v53 = 8191.0 / v49;
    v54 = v31;
    v55 = v32;
    _S20 = v53 * v33;
    __asm { FCVT            H8, S20 }

    *v6.i16 = v31;
    v62 = -v32;
    v35.i32[1] = v5.i32[0];
    *v4.f32 = vmul_n_f32(v35, v53);
    *v5.f32 = vmul_n_f32(v34, v53);
    v198 = vdupq_lane_s32(vcvt_f16_f32(v4), 0);
    v199 = vdupq_lane_s16(v6, 0);
    _Q22 = vmulq_n_f16(v198, v62);
    v196 = _Q22;
    v197 = vdupq_lane_s32(vcvt_f16_f32(v5), 0);
    v64 = vmulq_n_f16(v197, v62);
    __asm { FCVT            H9, S0 }

    v195 = _H9;
    __asm { FCVT            H9, S1 }

    v194 = _H9;
    __asm { FCVT            H9, S2 }

    v193 = _H9;
    __asm { FCVT            H9, S3 }

    v192 = _H9;
    __asm { FCVT            H9, S4 }

    v191 = _H9;
    __asm { FCVT            H9, S5 }

    v190 = _H9;
    __asm { FCVT            H9, S6 }

    v189 = _H9;
    __asm { FCVT            H9, S7 }

    v188 = _H9;
    __asm { FCVT            H9, S16 }

    v187 = *_D9.i16;
    v73 = v180 + v177 + 4 * v183;
    if (v22)
    {
      v74 = v22 + v19 * v11 + v185;
    }

    else
    {
      v74 = 0;
    }

    if (v21)
    {
      v75 = (v21 + v18 * v11 + v185);
    }

    else
    {
      v75 = 0;
    }

    v76 = (v20 + v17 * v11 + v185);
    v77 = v4.f32[1];
    v78 = v5.i64[0];
    v184 = v29 + 4;
    v182 = v28 + 4;
    v181 = v27 + 4;
    v179 = v30 + 4;
    v79.i64[0] = 0x9000900090009000;
    v79.i64[1] = 0x9000900090009000;
    v186 = v4.i32[0];
    do
    {
      if (v9 < 8)
      {
        v115 = 0;
        v114 = v75;
        v84 = v74;
        v83 = v73;
        v82 = v76;
      }

      else
      {
        v80 = 0;
        v81 = *(&v200 + 8);
        _Q22.i64[0] = v200;
        v82 = v76;
        v83 = v73;
        v84 = v74;
        v86 = *(&v201 + 8);
        v85 = v201;
        do
        {
          v87 = *&v75[v80];
          v88 = 0;
          *v89.i8 = vzip1_s8(v87, 0);
          v89.u64[1] = vzip2_s8(v87, 0);
          v90 = vcvtq_f16_u16(v89);
          v91 = vmlaq_f16(v196, v198, v90);
          v92 = vmlaq_f16(v64, v197, v90);
          v93 = vtrn2q_s16(v91, v91);
          v94 = vtrn1q_s16(v91, v91);
          v95 = vuzp1q_s16(v92, _Q0);
          *v95.i8 = vadd_f16(*v95.i8, *&vuzp2q_s16(v92, _Q0));
          v96 = *v82++;
          *v97.i8 = vzip1_s8(v96, 0);
          v97.u64[1] = vzip2_s8(v96, 0);
          v98 = vsubq_f16(vcvtq_f16_u16(v97), v199);
          v99 = vmlaq_n_f16(v93, v98, _H8);
          v100 = vmlaq_n_f16(vzip1q_s16(v95, v95), v98, _H8);
          v101 = vmlaq_n_f16(v94, v98, _H8);
          if (v84)
          {
            v102 = *v84;
            v84 += 8;
            v88 = v102;
          }

          v103 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v99, 0), v79));
          v104.i16[0] = *&v50[2 * v103.u16[0]];
          v104.i16[1] = *&v50[2 * v103.u16[1]];
          v104.i16[2] = *&v50[2 * v103.u16[2]];
          v104.i16[3] = *&v50[2 * v103.u16[3]];
          v104.i16[4] = *&v50[2 * v103.u16[4]];
          v104.i16[5] = *&v50[2 * v103.u16[5]];
          v104.i16[6] = *&v50[2 * v103.u16[6]];
          v104.i16[7] = *&v50[2 * v103.u16[7]];
          v105 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v100, 0), v79));
          v106.i16[0] = *&v50[2 * v105.u16[0]];
          v106.i16[1] = *&v50[2 * v105.u16[1]];
          v106.i16[2] = *&v50[2 * v105.u16[2]];
          v106.i16[3] = *&v50[2 * v105.u16[3]];
          v106.i16[4] = *&v50[2 * v105.u16[4]];
          v106.i16[5] = *&v50[2 * v105.u16[5]];
          v106.i16[6] = *&v50[2 * v105.u16[6]];
          v106.i16[7] = *&v50[2 * v105.u16[7]];
          v107 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v101, 0), v79));
          v105.i16[0] = *&v50[2 * v107.u16[0]];
          v105.i16[1] = *&v50[2 * v107.u16[1]];
          v105.i16[2] = *&v50[2 * v107.u16[2]];
          v105.i16[3] = *&v50[2 * v107.u16[3]];
          v105.i16[4] = *&v50[2 * v107.u16[4]];
          v105.i16[5] = *&v50[2 * v107.u16[5]];
          v105.i16[6] = *&v50[2 * v107.u16[6]];
          v105.i16[7] = *&v50[2 * v107.u16[7]];
          v108 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v104, v192), v106, v191), v105, v190);
          v109 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v105, v187), v106, v188), v104, v189);
          v110 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v104, v195), v106, v194), v105, v193), 0), v79));
          v104.i16[0] = *&v52[2 * v110.u16[0]];
          v104.i16[1] = *&v52[2 * v110.u16[1]];
          v104.i16[2] = *&v52[2 * v110.u16[2]];
          v104.i16[3] = *&v52[2 * v110.u16[3]];
          v104.i16[4] = *&v52[2 * v110.u16[4]];
          v104.i16[5] = *&v52[2 * v110.u16[5]];
          v104.i16[6] = *&v52[2 * v110.u16[6]];
          v104.i16[7] = *&v52[2 * v110.u16[7]];
          v111 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v108, 0), v79));
          v110.i16[0] = *&v52[2 * v111.u16[0]];
          v110.i16[1] = *&v52[2 * v111.u16[1]];
          v110.i16[2] = *&v52[2 * v111.u16[2]];
          v110.i16[3] = *&v52[2 * v111.u16[3]];
          v110.i16[4] = *&v52[2 * v111.u16[4]];
          v110.i16[5] = *&v52[2 * v111.u16[5]];
          v110.i16[6] = *&v52[2 * v111.u16[6]];
          v110.i16[7] = *&v52[2 * v111.u16[7]];
          v112 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v109, 0), v79));
          v109.i16[0] = *&v52[2 * v112.u16[0]];
          v109.i16[1] = *&v52[2 * v112.u16[1]];
          v109.i16[2] = *&v52[2 * v112.u16[2]];
          v109.i16[3] = *&v52[2 * v112.u16[3]];
          v109.i16[4] = *&v52[2 * v112.u16[4]];
          v109.i16[5] = *&v52[2 * v112.u16[5]];
          v109.i16[6] = *&v52[2 * v112.u16[6]];
          v109.i16[7] = *&v52[2 * v112.u16[7]];
          *v112.i8 = vorr_s8(v88, vceqd_s64(v84, 0));
          v113 = vdupq_n_s16(0x5BF8u);
          *v203.val[1].i8 = vmovn_s16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(v109, 0), v113)));
          v203.val[0] = vuzp1q_s8(vcvtq_u16_f16(vminq_f16(vmaxq_f16(v104, 0), v113)), vcvtq_u16_f16(vminq_f16(vmaxq_f16(v110, 0), v113)));
          v203.val[1].i64[1] = v112.i64[0];
          *v104.i8 = vqtbl2_s8(v203, *_Q22.i8);
          v104.u64[1] = vqtbl2_s8(v203, v81);
          *v110.i8 = vqtbl2_s8(v203, v85);
          _D9 = vqtbl2_s8(v203, v86);
          v110.u64[1] = _D9;
          *v83 = v104;
          v83[1] = v110;
          v83 += 2;
          v80 += 8;
        }

        while (v80 < v9 - 7);
        v114 = &v75[v80];
        v115 = v9 & 0xFFFFFFF8;
        v4.i32[0] = v186;
      }

      if (v115 < v51)
      {
        v116 = &v83->i8[v184];
        v117 = &v83->i8[v182];
        v118 = &v83->i8[v181];
        v119 = &v83->i8[v179];
        do
        {
          _Q22.i8[0] = v114[1];
          *&v120 = _Q22.u32[0];
          v121 = *&v120 - v55;
          v122 = v77 * (*&v120 - v55);
          LOBYTE(v120) = v82->i8[0];
          v123 = _S20 * (v120 - v54);
          v124 = v122 + v123;
          _Q22.i32[0] = 1174403072;
          if ((v122 + v123) <= 8191.0)
          {
            *_Q22.i32 = v122 + v123;
            if (v124 < 0.0)
            {
              _Q22.i32[0] = 0;
            }
          }

          LOBYTE(v124) = *v114;
          v125 = LODWORD(v124) - v55;
          v126 = (*(&v78 + 1) * v121) + (v125 * *&v78);
          v127 = 8191.0;
          if ((v123 + v126) <= 8191.0)
          {
            v127 = v123 + v126;
            if ((v123 + v126) < 0.0)
            {
              v127 = 0.0;
            }
          }

          v128 = v4.f32[0] * v125;
          v129 = v128 + v123;
          v130 = (v128 + v123) <= 8191.0;
          v131 = 8191.0;
          if (v130)
          {
            v131 = v129;
            if (v129 < 0.0)
            {
              v131 = 0.0;
            }
          }

          _D9.i8[0] = v82->i8[1];
          v132 = _S20 * (_D9.u32[0] - v54);
          v133 = v122 + v132;
          v134 = 8191.0;
          if (v133 <= 8191.0)
          {
            v134 = v133;
            if (v133 < 0.0)
            {
              v134 = 0.0;
            }
          }

          v135 = v126 + v132;
          v130 = (v126 + v132) <= 8191.0;
          v136 = 8191.0;
          if (v130)
          {
            v136 = v135;
            if (v135 < 0.0)
            {
              v136 = 0.0;
            }
          }

          v137 = v128 + v132;
          v138 = 8191.0;
          if (v137 <= 8191.0)
          {
            if (v137 < 0.0)
            {
              v138 = 0.0;
            }

            else
            {
              v138 = v137;
            }
          }

          if (v84)
          {
            v139 = *v84;
            v140 = *(v84 + 1);
            v84 += 2;
          }

          else
          {
            v139 = 0;
            v140 = 0;
          }

          _H9 = *&v50[2 * llroundf(fminf(fmaxf(*_Q22.i32, 0.0), 8191.0))];
          _H23 = *&v50[2 * llroundf(fminf(fmaxf(v127, 0.0), 8191.0))];
          __asm
          {
            FCVT            S9, H9
            FCVT            S23, H23
          }

          _H24 = *&v50[2 * llroundf(fminf(fmaxf(v131, 0.0), 8191.0))];
          __asm { FCVT            S24, H24 }

          _H25 = *&v50[2 * llroundf(fminf(fmaxf(v134, 0.0), 8191.0))];
          __asm { FCVT            S25, H25 }

          _H26 = *&v50[2 * llroundf(fminf(fmaxf(v136, 0.0), 8191.0))];
          __asm { FCVT            S26, H26 }

          _H27 = *&v50[2 * llroundf(fminf(fmaxf(v138, 0.0), 8191.0))];
          __asm { FCVT            S27, H27 }

          v153 = ((_S1 * _S23) + (_S9 * *_Q0.i32)) + (_S24 * _S2);
          v154 = ((_S4 * _S23) + (_S9 * _S3)) + (_S24 * _S5);
          v155 = ((_S7 * _S23) + (_S9 * _S6)) + (_S24 * _S16);
          v156 = ((_S1 * _S26) + (_S25 * *_Q0.i32)) + (_S27 * _S2);
          *_D9.i32 = ((_S4 * _S26) + (_S25 * _S3)) + (_S27 * _S5);
          v157 = ((_S7 * _S26) + (_S25 * _S6)) + (_S27 * _S16);
          v158 = *&v52[2 * llroundf(fminf(fmaxf(v153, 0.0), 8191.0))];
          v159 = *&v52[2 * llroundf(fminf(fmaxf(v154, 0.0), 8191.0))];
          v160 = *&v52[2 * llroundf(fminf(fmaxf(v155, 0.0), 8191.0))];
          v161 = *&v52[2 * llroundf(fminf(fmaxf(v156, 0.0), 8191.0))];
          v162 = *&v52[2 * llroundf(fminf(fmaxf(*_D9.i32, 0.0), 8191.0))];
          v163 = *&v52[2 * llroundf(fminf(fmaxf(v157, 0.0), 8191.0))];
          if (v84)
          {
            v164 = v139;
          }

          else
          {
            v164 = -1;
          }

          if (v84)
          {
            v165 = v140;
          }

          else
          {
            v165 = -1;
          }

          if (v158 <= COERCE_SHORT_FLOAT(23544))
          {
            __asm { FCMP            H11, #0 }

            if (_NF)
            {
              _S11 = 0.0;
            }

            else
            {
              __asm { FCVT            S11, H11 }
            }
          }

          else
          {
            _S11 = 255.0;
          }

          *(v118 - 4) = llroundf(_S11);
          if (v159 <= COERCE_SHORT_FLOAT(23544))
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

          *(v117 - 4) = llroundf(_S27);
          if (v160 <= COERCE_SHORT_FLOAT(23544))
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

          *(v116 - 4) = llroundf(_S26);
          *(v119 - 4) = v164;
          if (v161 <= COERCE_SHORT_FLOAT(23544))
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

          *v118 = llroundf(_S25);
          if (v162 <= COERCE_SHORT_FLOAT(23544))
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

          *v117 = llroundf(_S24);
          if (v163 <= COERCE_SHORT_FLOAT(23544))
          {
            __asm { FCMP            H22, #0 }

            if (_NF)
            {
              _Q22.i32[0] = 0;
            }

            else
            {
              __asm { FCVT            S22, H22 }
            }
          }

          else
          {
            _Q22.i32[0] = 1132396544;
          }

          *v116 = llroundf(*_Q22.i32);
          v116 += 8;
          *v119 = v165;
          v119 += 8;
          v115 += 2;
          v117 += 8;
          v118 += 8;
          v114 += 2;
          v82 = (v82 + 2);
        }

        while (v115 < v51);
      }

      v76 = (v76 + v17);
      v75 += v18;
      v74 += v19;
      v73 += v24;
      ++v48;
    }

    while (v48 != v47);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_422vf_TRC_Mat_TRC_BGRA(uint64_t a1, uint64_t *a2, uint64_t a3, unint64_t *a4, void *a5, uint64_t *a6, uint64_t a7, void *a8, void *a9)
{
  v61 = a8;
  v62 = a3;
  v68 = a5;
  v63 = a4;
  v69 = *MEMORY[0x1E69E9840];
  v10 = *(a1 + 162);
  v12 = *a2;
  v11 = a2[1];
  v13 = a2[2];
  v60 = a2[3];
  v14 = a2[4];
  v15 = a2[5];
  v16 = *a6;
  v64 = a6[1];
  v65 = v11;
  v18 = a6[2];
  v17 = a6[3];
  v58 = a1;
  v59 = v17;
  v20 = a6[4];
  v19 = a6[5];
  v66 = v16;
  v67 = v19;
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
    v23 = (&v56 - v25);
    bzero(&v56 - v25, v26);
  }

  v57 = a7;
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
    v32 = v63;
    if (v22 || (v33 = v29 + 1 + v30, v33 > *v63) || ((v33 + (v33 >> 63)) & 0xFFFFFFFFFFFFFFFELL) > v63[1] || (v34 = v63[2], v33 > v34) && v34 || (4 * (v31 + v28) + 4) > *v61)
    {
      --v28;
      --v29;
    }

    else
    {
      ++v28;
      ++v66;
      ++v12;
      ++v29;
    }
  }

  else
  {
    v32 = v63;
  }

  if (v29 + v30 > v12)
  {
    v29 = v12 - v30;
  }

  if (v28 + v31 > v66)
  {
    v28 = v66 - v31;
  }

  if (v15 + v60 <= v65)
  {
    v35 = v60;
  }

  else
  {
    v35 = v65 - v15;
  }

  if (v67 + v59 <= v64)
  {
    v36 = v59;
  }

  else
  {
    v36 = v64 - v67;
  }

  if (v29 >= v28)
  {
    v37 = v28;
  }

  else
  {
    v37 = v29;
  }

  if (v35 >= v36)
  {
    v38 = v36;
  }

  else
  {
    v38 = v35;
  }

  v39 = v15 + v38 - 1;
  v40 = v37 + v30;
  if (v37 + v30 + *v32 * v39 <= *v68)
  {
    v45 = v62;
    if (*(v62 + 8) && ((v40 + 1 + ((v40 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v32[1] * v39 > v68[1])
    {
      v60 = v30;
      v41 = v10;
      v42 = v12;
      v43 = v15;
      v44 = a9;
    }

    else if (*(v62 + 16) && v40 + v32[2] * v39 > v68[2])
    {
      v60 = v30;
      v41 = v10;
      v42 = v12;
      v43 = v15;
      v44 = a9;
    }

    else
    {
      if ((*v61 * (v67 + v38 - 1) + 4 * (v37 + v31)) <= *a9)
      {
        goto LABEL_53;
      }

      v60 = v30;
      v41 = v10;
      v42 = v12;
      v43 = v15;
      v44 = a9;
    }
  }

  else
  {
    v60 = v30;
    v41 = v10;
    v42 = v12;
    v43 = v15;
    v44 = a9;
  }

  fig_log_get_emitter();
  v46 = FigSignalErrorAtGM();
  v45 = v62;
  v32 = v63;
  v27 = v44;
  v15 = v43;
  v12 = v42;
  v10 = v41;
  v30 = v60;
  if (v46)
  {
    v24 = v46;
    goto LABEL_58;
  }

LABEL_53:
  *v23 = v10;
  *(v23 + 4) = v12;
  v47 = v64;
  *(v23 + 12) = v65;
  *(v23 + 20) = v37;
  *(v23 + 28) = v38;
  *(v23 + 36) = v30;
  *(v23 + 44) = v15;
  v23[11] = v47;
  v23[12] = v37;
  v23[13] = v38;
  v23[14] = v31;
  v23[7] = v45;
  v23[8] = v32;
  v48 = v66;
  v49 = v67;
  v23[9] = v68;
  v23[10] = v48;
  v50 = v57;
  v23[15] = v49;
  v23[16] = v50;
  v23[17] = v61;
  v23[18] = v27;
  v23[19] = v58;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v10, global_queue, v23, vt_Copy_422vf_TRC_Mat_TRC_BGRA_GCD);
  if (!v10)
  {
    return 0;
  }

  v52 = (v23 + 20);
  v53 = v10;
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

LABEL_58:
  if (v10 == 255)
  {
    goto LABEL_59;
  }

  return v24;
}

unsigned __int8 *vt_Copy_422vf_TRC_Mat_TRC_BGRA_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, float a5)
{
  v6 = *result;
  v7 = *(result + 13);
  v8 = v7 * a2 / v6;
  v9 = (v7 + v7 * a2) / v6 - v8;
  if (v9 >= 1)
  {
    v10 = 0;
    v11 = *(result + 19);
    v12 = *(result + 24) & 0xFFFFFFFE;
    v13 = *(result + 7);
    v14 = *(result + 8);
    v15 = *v14;
    v16 = v14[1];
    v17 = v14[2];
    v18 = **(result + 17);
    *&v19 = *(v11 + 128);
    v20 = 8191.0 / *&v19;
    LOWORD(v19) = *(v11 + 140);
    v21 = v19;
    LOWORD(a5) = *(v11 + 142);
    v22 = LODWORD(a5);
    v23 = v20 * *v11;
    v24 = v20 * *(v11 + 8);
    v25 = v20 * *(v11 + 16);
    v26 = v20 * *(v11 + 20);
    v27 = v20 * *(v11 + 28);
    v28 = *(v11 + 72);
    v29 = *(v11 + 76);
    v30 = *(v11 + 80);
    v31 = *(v11 + 84);
    v32 = *(v11 + 88);
    v33 = *(v11 + 92);
    v34 = *(v11 + 96);
    v35 = *(v11 + 100);
    v36 = *(v11 + 104);
    v37 = v11 + 164;
    v38 = v11 + 16548;
    v39 = v8 + *(result + 15);
    v40 = *(result + 28) * a2 / v6 + *(result + 44);
    v41 = *(result + 36);
    v42 = *(v11 + 161);
    v43 = *(v11 + 160);
    v44 = *(v11 + 159);
    v45 = *(v11 + 158);
    v46 = **(result + 16) + v18 * v39 + 4 * *(result + 14);
    v47 = v13[2];
    if (v47)
    {
      v48 = (v47 + v40 * v17 + v41);
    }

    else
    {
      v48 = 0;
    }

    v50 = *v13;
    v49 = v13[1];
    v51 = v49 + v40 * v16 + v41;
    if (!v49)
    {
      v51 = 0;
    }

    v52 = (v50 + v40 * v15 + v41);
    do
    {
      if (v12 >= 1)
      {
        v53 = 0;
        v54 = v52;
        v55 = v46;
        v56 = v48;
        do
        {
          LOBYTE(_S26) = *(v51 + v53 + 1);
          *&v57 = LODWORD(_S26);
          v58 = *&v57 - v22;
          v59 = v24 * (*&v57 - v22);
          LOBYTE(v57) = *v54;
          v60 = v23 * (v57 - v21);
          v61 = v59 + v60;
          v62 = 8191.0;
          if ((v59 + v60) <= 8191.0)
          {
            v62 = v59 + v60;
            if (v61 < 0.0)
            {
              v62 = 0.0;
            }
          }

          LOBYTE(v61) = *(v51 + v53);
          v63 = LODWORD(v61) - v22;
          v64 = (v26 * v58) + (v63 * v25);
          v65 = 8191.0;
          if ((v60 + v64) <= 8191.0)
          {
            v65 = v60 + v64;
            if ((v60 + v64) < 0.0)
            {
              v65 = 0.0;
            }
          }

          v66 = v27 * v63;
          v67 = v66 + v60;
          v68 = (v66 + v60) <= 8191.0;
          v69 = 8191.0;
          if (v68)
          {
            v69 = v67;
            if (v67 < 0.0)
            {
              v69 = 0.0;
            }
          }

          LOBYTE(v67) = v54[1];
          v70 = v23 * (LODWORD(v67) - v21);
          v71 = v59 + v70;
          v68 = (v59 + v70) <= 8191.0;
          v72 = 8191.0;
          if (v68)
          {
            v72 = v71;
            if (v71 < 0.0)
            {
              v72 = 0.0;
            }
          }

          v73 = v64 + v70;
          v68 = (v64 + v70) <= 8191.0;
          v74 = 8191.0;
          if (v68)
          {
            v74 = v73;
            if (v73 < 0.0)
            {
              v74 = 0.0;
            }
          }

          v75 = v66 + v70;
          v76 = 8191.0;
          if (v75 <= 8191.0)
          {
            if (v75 < 0.0)
            {
              v76 = 0.0;
            }

            else
            {
              v76 = v75;
            }
          }

          if (v56)
          {
            v77 = *v56;
            v78 = v56[1];
            v56 += 2;
          }

          else
          {
            v77 = 0;
            v78 = 0;
          }

          _H26 = *(v37 + 2 * llroundf(fminf(fmaxf(v62, 0.0), 8191.0)));
          _H27 = *(v37 + 2 * llroundf(fminf(fmaxf(v65, 0.0), 8191.0)));
          __asm
          {
            FCVT            S26, H26
            FCVT            S27, H27
          }

          _H28 = *(v37 + 2 * llroundf(fminf(fmaxf(v69, 0.0), 8191.0)));
          __asm { FCVT            S28, H28 }

          _H29 = *(v37 + 2 * llroundf(fminf(fmaxf(v72, 0.0), 8191.0)));
          __asm { FCVT            S29, H29 }

          _H30 = *(v37 + 2 * llroundf(fminf(fmaxf(v74, 0.0), 8191.0)));
          __asm { FCVT            S30, H30 }

          _H31 = *(v37 + 2 * llroundf(fminf(fmaxf(v76, 0.0), 8191.0)));
          __asm { FCVT            S31, H31 }

          v95 = ((v29 * _S27) + (_S26 * v28)) + (_S28 * v30);
          v96 = ((v32 * _S27) + (_S26 * v31)) + (_S28 * v33);
          v97 = ((v35 * _S27) + (_S26 * v34)) + (_S28 * v36);
          v98 = ((v29 * _S30) + (_S29 * v28)) + (_S31 * v30);
          v99 = ((v32 * _S30) + (_S29 * v31)) + (_S31 * v33);
          v100 = ((v35 * _S30) + (_S29 * v34)) + (_S31 * v36);
          v101 = *(v38 + 2 * llroundf(fminf(fmaxf(v95, 0.0), 8191.0)));
          v102 = *(v38 + 2 * llroundf(fminf(fmaxf(v96, 0.0), 8191.0)));
          v103 = *(v38 + 2 * llroundf(fminf(fmaxf(v97, 0.0), 8191.0)));
          v104 = *(v38 + 2 * llroundf(fminf(fmaxf(v98, 0.0), 8191.0)));
          v105 = *(v38 + 2 * llroundf(fminf(fmaxf(v99, 0.0), 8191.0)));
          v106 = *(v38 + 2 * llroundf(fminf(fmaxf(v100, 0.0), 8191.0)));
          if (v56)
          {
            v107 = v77;
          }

          else
          {
            v107 = -1;
          }

          if (v56)
          {
            v108 = v78;
          }

          else
          {
            v108 = -1;
          }

          if (v101 <= COERCE_SHORT_FLOAT(23544))
          {
            __asm { FCMP            H8, #0 }

            if (_NF)
            {
              _S8 = 0.0;
            }

            else
            {
              __asm { FCVT            S8, H8 }
            }
          }

          else
          {
            _S8 = 255.0;
          }

          *(v55 + v45) = llroundf(_S8);
          if (v102 <= COERCE_SHORT_FLOAT(23544))
          {
            __asm { FCMP            H31, #0 }

            if (_NF)
            {
              _S31 = 0.0;
            }

            else
            {
              __asm { FCVT            S31, H31 }
            }
          }

          else
          {
            _S31 = 255.0;
          }

          *(v55 + v44) = llroundf(_S31);
          if (v103 <= COERCE_SHORT_FLOAT(23544))
          {
            __asm { FCMP            H30, #0 }

            if (_NF)
            {
              _S30 = 0.0;
            }

            else
            {
              __asm { FCVT            S30, H30 }
            }
          }

          else
          {
            _S30 = 255.0;
          }

          *(v55 + v43) = llroundf(_S30);
          *(v55 + v42) = v107;
          if (v104 <= COERCE_SHORT_FLOAT(23544))
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

          v117 = v55 + 4;
          *(v55 + 4 + v45) = llroundf(_S29);
          if (v105 <= COERCE_SHORT_FLOAT(23544))
          {
            __asm { FCMP            H28, #0 }

            if (_NF)
            {
              _S28 = 0.0;
            }

            else
            {
              __asm { FCVT            S28, H28 }
            }
          }

          else
          {
            _S28 = 255.0;
          }

          *(v117 + v44) = llroundf(_S28);
          if (v106 <= COERCE_SHORT_FLOAT(23544))
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

          *(v117 + v43) = llroundf(_S26);
          *(v117 + v42) = v108;
          v55 += 8;
          v53 += 2;
          v54 += 2;
        }

        while (v53 < v12);
      }

      v52 += v15;
      v51 += v16;
      v48 += v17;
      v46 += v18;
      ++v10;
    }

    while (v10 != v9);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_422vf_rgb_BGRA_neon_fp16(uint64_t a1, uint64_t *a2, uint64_t a3, unint64_t *a4, void *a5, uint64_t *a6, uint64_t a7, void *a8, void *a9)
{
  v61 = a8;
  v62 = a3;
  v68 = a5;
  v63 = a4;
  v69 = *MEMORY[0x1E69E9840];
  v10 = *(a1 + 162);
  v12 = *a2;
  v11 = a2[1];
  v13 = a2[2];
  v60 = a2[3];
  v14 = a2[4];
  v15 = a2[5];
  v16 = *a6;
  v64 = a6[1];
  v65 = v11;
  v18 = a6[2];
  v17 = a6[3];
  v58 = a1;
  v59 = v17;
  v20 = a6[4];
  v19 = a6[5];
  v66 = v16;
  v67 = v19;
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
    v23 = (&v56 - v25);
    bzero(&v56 - v25, v26);
  }

  v57 = a7;
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
    v32 = v63;
    if (v22 || (v33 = v29 + 1 + v30, v33 > *v63) || ((v33 + (v33 >> 63)) & 0xFFFFFFFFFFFFFFFELL) > v63[1] || (v34 = v63[2], v33 > v34) && v34 || (4 * (v31 + v28) + 4) > *v61)
    {
      --v28;
      --v29;
    }

    else
    {
      ++v28;
      ++v66;
      ++v12;
      ++v29;
    }
  }

  else
  {
    v32 = v63;
  }

  if (v29 + v30 > v12)
  {
    v29 = v12 - v30;
  }

  if (v28 + v31 > v66)
  {
    v28 = v66 - v31;
  }

  if (v15 + v60 <= v65)
  {
    v35 = v60;
  }

  else
  {
    v35 = v65 - v15;
  }

  if (v67 + v59 <= v64)
  {
    v36 = v59;
  }

  else
  {
    v36 = v64 - v67;
  }

  if (v29 >= v28)
  {
    v37 = v28;
  }

  else
  {
    v37 = v29;
  }

  if (v35 >= v36)
  {
    v38 = v36;
  }

  else
  {
    v38 = v35;
  }

  v39 = v15 + v38 - 1;
  v40 = v37 + v30;
  if (v37 + v30 + *v32 * v39 <= *v68)
  {
    v45 = v62;
    if (*(v62 + 8) && ((v40 + 1 + ((v40 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v32[1] * v39 > v68[1])
    {
      v60 = v30;
      v41 = v10;
      v42 = v12;
      v43 = v15;
      v44 = a9;
    }

    else if (*(v62 + 16) && v40 + v32[2] * v39 > v68[2])
    {
      v60 = v30;
      v41 = v10;
      v42 = v12;
      v43 = v15;
      v44 = a9;
    }

    else
    {
      if ((*v61 * (v67 + v38 - 1) + 4 * (v37 + v31)) <= *a9)
      {
        goto LABEL_53;
      }

      v60 = v30;
      v41 = v10;
      v42 = v12;
      v43 = v15;
      v44 = a9;
    }
  }

  else
  {
    v60 = v30;
    v41 = v10;
    v42 = v12;
    v43 = v15;
    v44 = a9;
  }

  fig_log_get_emitter();
  v46 = FigSignalErrorAtGM();
  v45 = v62;
  v32 = v63;
  v27 = v44;
  v15 = v43;
  v12 = v42;
  v10 = v41;
  v30 = v60;
  if (v46)
  {
    v24 = v46;
    goto LABEL_58;
  }

LABEL_53:
  *v23 = v10;
  *(v23 + 4) = v12;
  v47 = v64;
  *(v23 + 12) = v65;
  *(v23 + 20) = v37;
  *(v23 + 28) = v38;
  *(v23 + 36) = v30;
  *(v23 + 44) = v15;
  v23[11] = v47;
  v23[12] = v37;
  v23[13] = v38;
  v23[14] = v31;
  v23[7] = v45;
  v23[8] = v32;
  v48 = v66;
  v49 = v67;
  v23[9] = v68;
  v23[10] = v48;
  v50 = v57;
  v23[15] = v49;
  v23[16] = v50;
  v23[17] = v61;
  v23[18] = v27;
  v23[19] = v58;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v10, global_queue, v23, vt_Copy_422vf_rgb_BGRA_neon_fp16_GCD);
  if (!v10)
  {
    return 0;
  }

  v52 = (v23 + 20);
  v53 = v10;
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

LABEL_58:
  if (v10 == 255)
  {
    goto LABEL_59;
  }

  return v24;
}

unsigned int vt_Copy_422vf_rgb_BGRA_neon_fp16_GCD(unsigned __int8 *a1, uint64_t a2, double a3, double a4, double a5, int16x4_t a6, double a7, float32x4_t a8, double a9, float32x4_t a10)
{
  v12 = 0;
  v13 = 0;
  v14 = *(a1 + 36);
  v15 = *(a1 + 24);
  v16 = *a1;
  v17 = *(a1 + 28) * a2 / v16 + *(a1 + 44);
  v18 = *(a1 + 13);
  v121 = *(a1 + 14);
  v19 = *(a1 + 19);
  v20 = v18 * a2 / v16;
  v22 = *(a1 + 7);
  v21 = *(a1 + 8);
  v23 = v18 + v18 * a2;
  v24 = *v21;
  v25 = v21[1];
  v26 = v21[2];
  v27 = v22[1];
  v119 = *v22;
  v28 = v22[2];
  v29 = **(a1 + 17);
  v116 = **(a1 + 16);
  v30 = v29 * (v20 + *(a1 + 15));
  v31 = *(v19 + 128);
  result = *(v19 + 136);
  v33 = *(v19 + 158);
  v124[0] = *(v19 + 158);
  v34 = *(v19 + 159);
  v124[1] = *(v19 + 159);
  v35 = *(v19 + 160);
  v124[2] = *(v19 + 160);
  v36 = *(v19 + 161);
  v124[3] = *(v19 + 161);
  v37 = *(v19 + 140);
  v38 = *(v19 + 142);
  v39 = *v19;
  v40 = *(v19 + 8);
  a10.i64[0] = *(v19 + 16);
  a8.i32[0] = *(v19 + 28);
  v41.i32[1] = 0;
  v41.i64[1] = 0;
  v122 = 0u;
  v123 = 0u;
  v42 = v23 / v16;
  do
  {
    v43 = 0;
    v44 = v124[v13];
    do
    {
      *((&v122 + ((v44 + 4 * v43) & 0xF8)) | (v44 + 4 * v43) & 7) = v12 + v43;
      ++v43;
    }

    while (v43 != 8);
    ++v13;
    v12 += 8;
  }

  while (v13 != 4);
  v45 = v42 - v20;
  if (v42 - v20 >= 1)
  {
    v46 = 0;
    v47 = v31;
    v48 = v15 & 0xFFFFFFFE;
    v49 = result / v47;
    *v41.i32 = v37;
    v50 = v38;
    _S2 = v49 * v39;
    *a6.i16 = v37;
    v52 = vdupq_lane_s16(a6, 0);
    __asm { FCVT            H4, S2 }

    a8.i32[1] = v40;
    *a8.f32 = vmul_n_f32(*a8.f32, v49);
    v58 = vdupq_lane_s32(vcvt_f16_f32(a8), 0);
    *a10.f32 = vmul_n_f32(*a10.f32, v49);
    v59 = vdupq_lane_s32(vcvt_f16_f32(a10), 0);
    v60 = -v38;
    v61 = vmulq_n_f16(v58, v60);
    v62 = vmulq_n_f16(v59, v60);
    v63 = v116 + v30 + 4 * v121;
    if (v28)
    {
      v64 = v28 + v26 * v17 + v14;
    }

    else
    {
      v64 = 0;
    }

    if (v27)
    {
      v65 = (v27 + v25 * v17 + v14);
    }

    else
    {
      v65 = 0;
    }

    v66 = (v119 + v24 * v17 + v14);
    result = v35 + 4;
    v120 = v35 + 4;
    v67 = v34 + 4;
    v68 = v33 + 4;
    v69 = v36 + 4;
    do
    {
      if (v15 < 8)
      {
        v89 = 0;
        v88 = v65;
        v74 = v64;
        v73 = v63;
        v72 = v66;
      }

      else
      {
        v70 = 0;
        v71 = *(&v122 + 8);
        v10 = v122;
        v72 = v66;
        v73 = v63;
        v74 = v64;
        v11 = *(&v123 + 8);
        v75 = v123;
        do
        {
          if (v74)
          {
            v76 = *v74;
            v74 += 8;
            v77 = v76;
          }

          else
          {
            v77 = 0;
          }

          v78 = *&v65[v70];
          *v79.i8 = vzip1_s8(v78, 0);
          v79.u64[1] = vzip2_s8(v78, 0);
          v80 = vcvtq_f16_u16(v79);
          v81 = vmlaq_f16(v61, v58, v80);
          v82 = vmlaq_f16(v62, v59, v80);
          v83 = vuzp1q_s16(v82, v41);
          *v83.i8 = vadd_f16(*v83.i8, *&vuzp2q_s16(v82, v41));
          v84 = *v72++;
          *v125.val[1].i8 = vzip1_s8(v84, 0);
          v125.val[1].u64[1] = vzip2_s8(v84, 0);
          v85 = vsubq_f16(vcvtq_f16_u16(v125.val[1]), v52);
          v86 = vdupq_n_s16(0x5BF8u);
          *v125.val[1].i8 = vmovn_s16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vtrn1q_s16(v81, v81), v85, _H4), 0), v86)));
          v125.val[0] = vuzp1q_s8(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vtrn2q_s16(v81, v81), v85, _H4), 0), v86)), vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vzip1q_s16(v83, v83), v85, _H4), 0), v86)));
          v125.val[1].u64[1] = vorr_s8(v77, vceqd_s64(v74, 0));
          *&v87 = vqtbl2_s8(v125, v10);
          *(&v87 + 1) = vqtbl2_s8(v125, v71);
          *v85.i8 = vqtbl2_s8(v125, v75);
          v85.u64[1] = vqtbl2_s8(v125, v11);
          *v73 = v87;
          v73[1] = v85;
          v73 += 2;
          v70 += 8;
        }

        while (v70 < v15 - 7);
        v88 = &v65[v70];
        v89 = v15 & 0xFFFFFFF8;
      }

      if (v89 < v48)
      {
        v90 = v73 + v120;
        v91 = v73 + v67;
        v92 = v73 + v68;
        v93 = v73 + v69;
        do
        {
          if (v74)
          {
            v94 = *v74;
            v95 = *(v74 + 1);
            v74 += 2;
          }

          else
          {
            v94 = 0;
            v95 = 0;
          }

          v10.i8[0] = *v88;
          *&v96 = v10.u32[0];
          v97 = *&v96 - v50;
          LOBYTE(v96) = v88[1];
          v98 = v96 - v50;
          *v10.i32 = a8.f32[1] * v98;
          v99 = (a10.f32[1] * v98) + (v97 * a10.f32[0]);
          v11.i8[0] = v72->i8[0];
          *v11.i32 = v11.u32[0] - *v41.i32;
          v100 = _S2 * *v11.i32;
          v11.i8[0] = v72->i8[1];
          v101 = *v10.i32 + v100;
          v102 = v100 + v99;
          if (!v74)
          {
            v94 = -1;
            v95 = -1;
          }

          if (v101 < 0.0)
          {
            v103 = 0.0;
          }

          else
          {
            v103 = *v10.i32 + v100;
          }

          if (v101 <= 255.0)
          {
            v104 = v103;
          }

          else
          {
            v104 = 255.0;
          }

          *(v92 - 4) = llroundf(v104);
          v105 = 255.0;
          if (v102 <= 255.0)
          {
            v105 = v100 + v99;
            if (v102 < 0.0)
            {
              v105 = 0.0;
            }
          }

          v106 = a8.f32[0] * v97;
          *v11.i32 = _S2 * (v11.u32[0] - *v41.i32);
          v107 = v106 + v100;
          v108 = *v10.i32 + *v11.i32;
          v109 = v99 + *v11.i32;
          *(v91 - 4) = llroundf(v105);
          v110 = 255.0;
          if (v107 < 0.0)
          {
            v111 = 0.0;
          }

          else
          {
            v111 = v107;
          }

          if (v107 <= 255.0)
          {
            v112 = v111;
          }

          else
          {
            v112 = 255.0;
          }

          *(v90 - 4) = llroundf(v112);
          *(v93 - 4) = v94;
          if (v108 < 0.0)
          {
            v113 = 0.0;
          }

          else
          {
            v113 = v108;
          }

          if (v108 <= 255.0)
          {
            v110 = v113;
          }

          *v92 = llroundf(v110);
          v114 = 255.0;
          if (v109 <= 255.0)
          {
            v114 = v109;
            if (v109 < 0.0)
            {
              v114 = 0.0;
            }
          }

          v115 = v106 + *v11.i32;
          *v91 = llroundf(v114);
          v10.i32[0] = 1132396544;
          if (v115 <= 255.0)
          {
            *v10.i32 = v115;
            if (v115 < 0.0)
            {
              v10.i32[0] = 0;
            }
          }

          result = llroundf(*v10.i32);
          *v90 = result;
          v90 += 8;
          *v93 = v95;
          v93 += 8;
          v89 += 2;
          v91 += 8;
          v92 += 8;
          v88 += 2;
          v72 = (v72 + 2);
        }

        while (v89 < v48);
      }

      v66 = (v66 + v24);
      v65 += v25;
      v64 += v26;
      v63 += v29;
      ++v46;
    }

    while (v46 != v45);
  }

  *&a1[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_422vf_rgb_BGRA(uint64_t a1, uint64_t *a2, uint64_t a3, unint64_t *a4, void *a5, uint64_t *a6, uint64_t a7, void *a8, void *a9)
{
  v61 = a8;
  v62 = a3;
  v68 = a5;
  v63 = a4;
  v69 = *MEMORY[0x1E69E9840];
  v10 = *(a1 + 162);
  v12 = *a2;
  v11 = a2[1];
  v13 = a2[2];
  v60 = a2[3];
  v14 = a2[4];
  v15 = a2[5];
  v16 = *a6;
  v64 = a6[1];
  v65 = v11;
  v18 = a6[2];
  v17 = a6[3];
  v58 = a1;
  v59 = v17;
  v20 = a6[4];
  v19 = a6[5];
  v66 = v16;
  v67 = v19;
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
    v23 = (&v56 - v25);
    bzero(&v56 - v25, v26);
  }

  v57 = a7;
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
    v32 = v63;
    if (v22 || (v33 = v29 + 1 + v30, v33 > *v63) || ((v33 + (v33 >> 63)) & 0xFFFFFFFFFFFFFFFELL) > v63[1] || (v34 = v63[2], v33 > v34) && v34 || (4 * (v31 + v28) + 4) > *v61)
    {
      --v28;
      --v29;
    }

    else
    {
      ++v28;
      ++v66;
      ++v12;
      ++v29;
    }
  }

  else
  {
    v32 = v63;
  }

  if (v29 + v30 > v12)
  {
    v29 = v12 - v30;
  }

  if (v28 + v31 > v66)
  {
    v28 = v66 - v31;
  }

  if (v15 + v60 <= v65)
  {
    v35 = v60;
  }

  else
  {
    v35 = v65 - v15;
  }

  if (v67 + v59 <= v64)
  {
    v36 = v59;
  }

  else
  {
    v36 = v64 - v67;
  }

  if (v29 >= v28)
  {
    v37 = v28;
  }

  else
  {
    v37 = v29;
  }

  if (v35 >= v36)
  {
    v38 = v36;
  }

  else
  {
    v38 = v35;
  }

  v39 = v15 + v38 - 1;
  v40 = v37 + v30;
  if (v37 + v30 + *v32 * v39 <= *v68)
  {
    v45 = v62;
    if (*(v62 + 8) && ((v40 + 1 + ((v40 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v32[1] * v39 > v68[1])
    {
      v60 = v30;
      v41 = v10;
      v42 = v12;
      v43 = v15;
      v44 = a9;
    }

    else if (*(v62 + 16) && v40 + v32[2] * v39 > v68[2])
    {
      v60 = v30;
      v41 = v10;
      v42 = v12;
      v43 = v15;
      v44 = a9;
    }

    else
    {
      if ((*v61 * (v67 + v38 - 1) + 4 * (v37 + v31)) <= *a9)
      {
        goto LABEL_53;
      }

      v60 = v30;
      v41 = v10;
      v42 = v12;
      v43 = v15;
      v44 = a9;
    }
  }

  else
  {
    v60 = v30;
    v41 = v10;
    v42 = v12;
    v43 = v15;
    v44 = a9;
  }

  fig_log_get_emitter();
  v46 = FigSignalErrorAtGM();
  v45 = v62;
  v32 = v63;
  v27 = v44;
  v15 = v43;
  v12 = v42;
  v10 = v41;
  v30 = v60;
  if (v46)
  {
    v24 = v46;
    goto LABEL_58;
  }

LABEL_53:
  *v23 = v10;
  *(v23 + 4) = v12;
  v47 = v64;
  *(v23 + 12) = v65;
  *(v23 + 20) = v37;
  *(v23 + 28) = v38;
  *(v23 + 36) = v30;
  *(v23 + 44) = v15;
  v23[11] = v47;
  v23[12] = v37;
  v23[13] = v38;
  v23[14] = v31;
  v23[7] = v45;
  v23[8] = v32;
  v48 = v66;
  v49 = v67;
  v23[9] = v68;
  v23[10] = v48;
  v50 = v57;
  v23[15] = v49;
  v23[16] = v50;
  v23[17] = v61;
  v23[18] = v27;
  v23[19] = v58;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v10, global_queue, v23, vt_Copy_422vf_rgb_BGRA_GCD);
  if (!v10)
  {
    return 0;
  }

  v52 = (v23 + 20);
  v53 = v10;
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

LABEL_58:
  if (v10 == 255)
  {
    goto LABEL_59;
  }

  return v24;
}

unsigned __int8 *vt_Copy_422vf_rgb_BGRA_GCD(unsigned __int8 *result, uint64_t a2)
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
    *&v18 = *(v9 + 136);
    v19 = *&v18 / *&v17;
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
    v29 = *(result + 36);
    v30 = *(v9 + 161);
    v31 = *(v9 + 160);
    v32 = *(v9 + 159);
    v33 = *(v9 + 158);
    v34 = **(result + 16) + v16 * v27 + 4 * *(result + 14);
    v35 = v11[2];
    if (v35)
    {
      v36 = (v35 + v28 * v15 + v29);
    }

    else
    {
      v36 = 0;
    }

    v38 = *v11;
    v37 = v11[1];
    v39 = v37 + v28 * v14 + v29;
    if (!v37)
    {
      v39 = 0;
    }

    v40 = (v38 + v28 * v13 + v29);
    do
    {
      if (v10 >= 1)
      {
        v41 = 0;
        v42 = v40;
        v43 = v34;
        v44 = v36;
        do
        {
          if (v44)
          {
            v45 = *v44;
            v46 = v44[1];
            v44 += 2;
          }

          else
          {
            v45 = 0;
            v46 = 0;
          }

          LOBYTE(v2) = *(v39 + v41);
          *&v47 = LODWORD(v2);
          v48 = *&v47 - v21;
          LOBYTE(v47) = *(v39 + v41 + 1);
          v49 = v47 - v21;
          v50 = v23 * v49;
          v51 = (v25 * v49) + (v48 * v24);
          LOBYTE(v3) = *v42;
          v53 = LODWORD(v3) - v20;
          v52 = v22 * v53;
          LOBYTE(v53) = v42[1];
          v54 = v50 + v52;
          if (v44)
          {
            v55 = v45;
          }

          else
          {
            v55 = -1;
          }

          if (v44)
          {
            v56 = v46;
          }

          else
          {
            v56 = -1;
          }

          if (v54 < 0.0)
          {
            v57 = 0.0;
          }

          else
          {
            v57 = v50 + v52;
          }

          if (v54 <= 255.0)
          {
            v58 = v57;
          }

          else
          {
            v58 = 255.0;
          }

          *(v43 + v33) = llroundf(v58);
          v59 = 255.0;
          if ((v52 + v51) <= 255.0)
          {
            v59 = v52 + v51;
            if ((v52 + v51) < 0.0)
            {
              v59 = 0.0;
            }
          }

          v60 = v26 * v48;
          v3 = v22 * (LODWORD(v53) - v20);
          v61 = v60 + v52;
          v62 = v50 + v3;
          *(v43 + v32) = llroundf(v59);
          v63 = v51 + v3;
          if (v61 < 0.0)
          {
            v64 = 0.0;
          }

          else
          {
            v64 = v61;
          }

          if (v61 <= 255.0)
          {
            v65 = v64;
          }

          else
          {
            v65 = 255.0;
          }

          *(v43 + v31) = llroundf(v65);
          *(v43 + v30) = v55;
          if (v62 < 0.0)
          {
            v66 = 0.0;
          }

          else
          {
            v66 = v62;
          }

          if (v62 <= 255.0)
          {
            v67 = v66;
          }

          else
          {
            v67 = 255.0;
          }

          v68 = v43 + 4;
          *(v43 + 4 + v33) = llroundf(v67);
          v69 = 255.0;
          if (v63 <= 255.0)
          {
            v69 = v63;
            if (v63 < 0.0)
            {
              v69 = 0.0;
            }
          }

          v70 = v60 + v3;
          *(v68 + v32) = llroundf(v69);
          v2 = 255.0;
          if (v70 <= 255.0)
          {
            v2 = v70;
            if (v70 < 0.0)
            {
              v2 = 0.0;
            }
          }

          *(v68 + v31) = llroundf(v2);
          *(v68 + v30) = v56;
          v43 += 8;
          v41 += 2;
          v42 += 2;
        }

        while (v41 < v10);
      }

      v40 += v13;
      v39 += v14;
      v36 += v15;
      v34 += v16;
      ++v8;
    }

    while (v8 != v7);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_422vf_TRC_Tone_Mat_TRC_l10r(uint64_t a1, uint64_t *a2, uint64_t a3, unint64_t *a4, unint64_t *a5, uint64_t *a6, uint64_t a7, void *a8, void *a9)
{
  v64 = a7;
  v65 = a8;
  v73 = a5;
  v66 = a3;
  v67 = a4;
  v74 = *MEMORY[0x1E69E9840];
  v10 = *(a1 + 162);
  v12 = *a2;
  v11 = a2[1];
  v13 = a2[2];
  v63 = a2[3];
  v14 = a2[4];
  v69 = a2[5];
  v70 = v11;
  v15 = *a6;
  v68 = a6[1];
  v16 = a6[2];
  v17 = a6[3];
  v19 = a6[4];
  v18 = a6[5];
  v71 = v15;
  v72 = v18;
  v21 = v14 + v13 != v12 || v19 + v16 != v15;
  if (v10 == 255)
  {
    v22 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v22)
    {
      v23 = 0;
LABEL_64:
      free(v22);
      return v23;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v10 + 160, a3, a4);
    v22 = (&v60 - v24);
    bzero(&v60 - v24, v25);
  }

  v62 = a1;
  v26 = a9;
  v27 = v16 - 1;
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
    v27 = v16;
    v30 = v19;
  }

  if (v27)
  {
    v31 = v67;
    if (v21 || (v32 = v28 + 1 + v29, v32 > *v67) || ((v32 + (v32 >> 63)) & 0xFFFFFFFFFFFFFFFELL) > v67[1] || (v33 = v67[2], v32 > v33) && v33 || (v34 = v27 + 1 + v30, *v65 < 4 * v34) || (v35 = v65[1], v34 > v35) && v35)
    {
      --v27;
      --v28;
    }

    else
    {
      ++v71;
      ++v12;
      ++v28;
      ++v27;
    }
  }

  else
  {
    v31 = v67;
  }

  if (v28 + v29 > v12)
  {
    v28 = v12 - v29;
  }

  if (v27 + v30 > v71)
  {
    v27 = v71 - v30;
  }

  if (v69 + v63 <= v70)
  {
    v36 = v63;
  }

  else
  {
    v36 = v70 - v69;
  }

  if (v72 + v17 <= v68)
  {
    v37 = v17;
  }

  else
  {
    v37 = v68 - v72;
  }

  if (v28 >= v27)
  {
    v38 = v27;
  }

  else
  {
    v38 = v28;
  }

  if (v36 >= v37)
  {
    v39 = v37;
  }

  else
  {
    v39 = v36;
  }

  v40 = v69 + v39 - 1;
  v41 = v38 + v29;
  v42 = v38 + v29 + *v31 * v40;
  v43 = *v73;
  v61 = v29;
  if (v42 > v43)
  {
    v44 = v10;
    v45 = v30;
    v46 = v12;
    v47 = a9;
    v48 = v65;
    goto LABEL_57;
  }

  v48 = v65;
  v49 = v66;
  if (*(v66 + 8) && ((v41 + 1 + ((v41 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v31[1] * v40 > v73[1])
  {
    v44 = v10;
    v45 = v30;
    v46 = v12;
    v47 = a9;
    goto LABEL_57;
  }

  if (*(v66 + 16) && v41 + v31[2] * v40 > v73[2])
  {
    v44 = v10;
    v45 = v30;
    v46 = v12;
    v47 = a9;
    goto LABEL_57;
  }

  v50 = v72 + v39 - 1;
  if ((*v65 * v50 + 4 * (v38 + v30)) > *a9)
  {
    v44 = v10;
    v45 = v30;
    v46 = v12;
    v47 = a9;
    goto LABEL_57;
  }

  v51 = v64;
  if (*(v64 + 8) && (v38 + v30 + v65[1] * v50) > a9[1])
  {
    v44 = v10;
    v45 = v30;
    v46 = v12;
    v47 = a9;
LABEL_57:
    fig_log_get_emitter();
    v23 = FigSignalErrorAtGM();
    v51 = v64;
    v49 = v66;
    v31 = v67;
    v26 = v47;
    v12 = v46;
    v30 = v45;
    v10 = v44;
    v29 = v61;
    if (v23)
    {
      goto LABEL_63;
    }
  }

  *v22 = v10;
  *(v22 + 4) = v12;
  v52 = v69;
  *(v22 + 12) = v70;
  *(v22 + 20) = v38;
  *(v22 + 28) = v39;
  *(v22 + 36) = v29;
  *(v22 + 44) = v52;
  v22[11] = v68;
  v22[12] = v38;
  v22[13] = v39;
  v22[14] = v30;
  v22[7] = v49;
  v22[8] = v31;
  v53 = v71;
  v54 = v72;
  v22[9] = v73;
  v22[10] = v53;
  v22[15] = v54;
  v22[16] = v51;
  v22[17] = v48;
  v22[18] = v26;
  v22[19] = v62;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v10, global_queue, v22, vt_Copy_422vf_TRC_Tone_Mat_TRC_l10r_GCD);
  if (!v10)
  {
    return 0;
  }

  v56 = (v22 + 20);
  v57 = v10;
  while (1)
  {
    v58 = *v56++;
    v23 = v58;
    if (v58)
    {
      break;
    }

    if (!--v57)
    {
      v23 = 0;
      break;
    }
  }

LABEL_63:
  if (v10 == 255)
  {
    goto LABEL_64;
  }

  return v23;
}

unsigned __int8 *vt_Copy_422vf_TRC_Tone_Mat_TRC_l10r_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, float a5, double a6, double a7, double a8, double a9)
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
    v16 = *(result + 7);
    v17 = *(result + 8);
    v18 = *v17;
    v19 = v17[1];
    v20 = v17[2];
    v21 = **(result + 17);
    *&v22 = *(v14 + 128);
    v23 = 8191.0 / *&v22;
    LOWORD(v22) = *(v14 + 140);
    v24 = v22;
    LOWORD(a5) = *(v14 + 142);
    v25 = LODWORD(a5);
    v26 = v23 * *v14;
    v145 = v23 * *(v14 + 16);
    v146 = v23 * *(v14 + 8);
    v27 = v23 * *(v14 + 20);
    v28 = *(v14 + 28);
    v29 = v23 * v28;
    v143 = v29;
    v144 = v27;
    LOWORD(v29) = *(v14 + 144);
    v30 = LODWORD(v29);
    v31 = *(v14 + 72);
    v32 = *(v14 + 76);
    v33 = *(v14 + 80);
    v34 = *(v14 + 84);
    v35 = *(v14 + 88);
    v36 = *(v14 + 92);
    v37 = *(v14 + 96);
    v38 = *(v14 + 100);
    v39 = v14 + 164;
    v40 = v14 + 16548;
    v41 = v14 + 32932;
    v42 = *(v14 + 104);
    v43 = *(v14 + 108);
    v44 = *(v14 + 112);
    v45 = *(v14 + 116);
    v46 = *(v14 + 120);
    v47 = *(result + 28) * a2 / v9 + *(result + 44);
    v48 = *(result + 36);
    v49 = **(result + 16) + v21 * (v11 + *(result + 15)) + 16 * *(result + 14);
    v50 = v16[2];
    if (v50)
    {
      v51 = (v50 + v47 * v20 + v48);
    }

    else
    {
      v51 = 0;
    }

    v53 = *v16;
    v52 = *(*(result + 7) + 8);
    _ZF = v52 == 0;
    v55 = v52 + v47 * v19 + v48;
    if (_ZF)
    {
      v55 = 0;
    }

    v56 = (v53 + v47 * v18 + v48);
    do
    {
      if (v15 >= 1)
      {
        v57 = 0;
        v58 = v56;
        v59 = v49;
        v60 = v51;
        do
        {
          LOBYTE(v29) = *(v55 + v57 + 1);
          v61 = LODWORD(v29) - v25;
          v62 = v146 * v61;
          LOBYTE(v28) = *v58;
          v63 = v26 * (LODWORD(v28) - v24);
          v64 = (v146 * v61) + v63;
          v65 = 8191.0;
          if (v64 <= 8191.0)
          {
            v65 = (v146 * v61) + v63;
            if (v64 < 0.0)
            {
              v65 = 0.0;
            }
          }

          LOBYTE(v64) = *(v55 + v57);
          v66 = LODWORD(v64) - v25;
          v67 = (v144 * v61) + (v66 * v145);
          v68 = 8191.0;
          if ((v63 + v67) <= 8191.0)
          {
            v68 = v63 + v67;
            if ((v63 + v67) < 0.0)
            {
              v68 = 0.0;
            }
          }

          *&a9 = v143;
          v69 = v143 * v66;
          v70 = (v143 * v66) + v63;
          v71 = 8191.0;
          if (v70 <= 8191.0)
          {
            v71 = v70;
            if (v70 < 0.0)
            {
              v71 = 0.0;
            }
          }

          LOBYTE(v70) = v58[1];
          v72 = v26 * (LODWORD(v70) - v24);
          v73 = v62 + v72;
          v74 = 8191.0;
          if (v73 <= 8191.0)
          {
            v74 = v73;
            if (v73 < 0.0)
            {
              v74 = 0.0;
            }
          }

          v75 = 8191.0;
          if ((v67 + v72) <= 8191.0)
          {
            v75 = v67 + v72;
            if ((v67 + v72) < 0.0)
            {
              v75 = 0.0;
            }
          }

          *&a8 = v69 + v72;
          v76 = 8191.0;
          if ((v69 + v72) <= 8191.0)
          {
            v76 = v69 + v72;
            if (*&a8 < 0.0)
            {
              v76 = 0.0;
            }
          }

          if (v60)
          {
            LOBYTE(a8) = *v60;
            LOBYTE(a9) = v60[1];
            v60 += 2;
            v77 = *&a8 * 3.0;
            a8 = *&a9;
            v78 = *&a9 * 3.0;
          }

          else
          {
            v77 = 0.0;
            v78 = 0.0;
          }

          _S5 = fmaxf(v65, 0.0);
          v80 = 8191.0;
          LOWORD(_S5) = *(v39 + 2 * llroundf(fminf(_S5, 8191.0)));
          __asm { FCVT            S8, H5 }

          LOWORD(_S5) = *(v39 + 2 * llroundf(fminf(fmaxf(v68, 0.0), 8191.0)));
          __asm { FCVT            S12, H5 }

          LOWORD(_S5) = *(v39 + 2 * llroundf(fminf(fmaxf(v71, 0.0), 8191.0)));
          __asm { FCVT            S13, H5 }

          _H14 = *(v39 + 2 * llroundf(fminf(fmaxf(v74, 0.0), 8191.0)));
          _H15 = *(v39 + 2 * llroundf(fminf(fmaxf(v75, 0.0), 8191.0)));
          _H5 = *(v39 + 2 * llroundf(fminf(fmaxf(v76, 0.0), 8191.0)));
          v90 = (((v44 * _S12) + (v43 * _S8)) + (v45 * _S13)) + (v46 * fmaxf(_S8, fmaxf(_S12, _S13)));
          LODWORD(a9) = 1174403072;
          if (v90 <= 8191.0)
          {
            *&a9 = v90;
            if (v90 < 0.0)
            {
              a9 = 0.0;
            }
          }

          __asm
          {
            FCVT            S4, H14
            FCVT            S14, H15
            FCVT            S15, H5
          }

          _H5 = *(v40 + 2 * llroundf(*&a9));
          v95 = fmaxf(_S4, fmaxf(_S14, _S15));
          v96 = (((v44 * _S14) + (v43 * _S4)) + (v45 * _S15)) + (v46 * v95);
          if (v96 <= 8191.0)
          {
            v80 = (((v44 * _S14) + (v43 * _S4)) + (v45 * _S15)) + (v46 * v95);
            if (v96 < 0.0)
            {
              v80 = 0.0;
            }
          }

          __asm { FCVT            S5, H5 }

          v98 = _S8 * _S5;
          v99 = _S12 * _S5;
          v100 = _S13 * _S5;
          _H8 = *(v40 + 2 * llroundf(v80));
          __asm { FCVT            S8, H8 }

          v103 = _S4 * _S8;
          v104 = _S14 * _S8;
          v105 = _S15 * _S8;
          v106 = ((v32 * v99) + (v98 * v31)) + (v100 * v33);
          v107 = ((v35 * v99) + (v98 * v34)) + (v100 * v36);
          v108 = ((v38 * v99) + (v98 * v37)) + (v100 * v42);
          v109 = ((v32 * v104) + (v103 * v31)) + (v105 * v33);
          v110 = ((v35 * v104) + (v103 * v34)) + (v105 * v36);
          v111 = ((v38 * v104) + (v103 * v37)) + (v105 * v42);
          _H13 = *(v41 + 2 * llroundf(fminf(fmaxf(v106, 0.0), 8191.0)));
          _H4 = *(v41 + 2 * llroundf(fminf(fmaxf(v107, 0.0), 8191.0)));
          _H15 = *(v41 + 2 * llroundf(fminf(fmaxf(v108, 0.0), 8191.0)));
          _H11 = *(v41 + 2 * llroundf(fminf(fmaxf(v109, 0.0), 8191.0)));
          _H12 = *(v41 + 2 * llroundf(fminf(fmaxf(v110, 0.0), 8191.0)));
          _H14 = *(v41 + 2 * llroundf(fminf(fmaxf(v111, 0.0), 8191.0)));
          if (v60)
          {
            a9 = v77 / 255.0;
            *&a9 = v77 / 255.0;
            a8 = v78 / 255.0;
            *&a8 = v78 / 255.0;
            v118 = llroundf(*&a9);
            v119 = llroundf(*&a8);
          }

          else
          {
            v118 = 3.0;
            v119 = 3.0;
          }

          __asm { FCVT            S5, H15 }

          v121 = v30 + _S5;
          v122 = 1023.0;
          v123 = 1023.0;
          if (v121 <= 1023.0)
          {
            v123 = v121;
            if (v121 < 0.0)
            {
              v123 = 0.0;
            }
          }

          __asm { FCVT            S4, H4 }

          v125 = v30 + _S4;
          v126 = (v30 + _S4) <= 1023.0;
          v127 = 1023.0;
          if (v126)
          {
            v127 = v125;
            if (v125 < 0.0)
            {
              v127 = 0.0;
            }
          }

          __asm { FCVT            S5, H13 }

          v129 = v30 + _S5;
          v126 = (v30 + _S5) <= 1023.0;
          LODWORD(a8) = 1149222912;
          if (v126)
          {
            *&a8 = v129;
            if (v129 < 0.0)
            {
              a8 = 0.0;
            }
          }

          __asm { FCVT            S6, H14 }

          v131 = llroundf(v123);
          v132 = llroundf(*&a8);
          v133 = llroundf(v127) << 10;
          if (v118 <= 3.0)
          {
            v134 = v118;
          }

          else
          {
            v134 = 3.0;
          }

          *v59 = v133 | v131 | (llroundf(v134) << 30) | (v132 << 20);
          v135 = 1023.0;
          if ((v30 + _S6) <= 1023.0)
          {
            v135 = v30 + _S6;
            if ((v30 + _S6) < 0.0)
            {
              v135 = 0.0;
            }
          }

          __asm { FCVT            S5, H12 }

          v137 = v30 + _S5;
          v138 = 1023.0;
          if (v137 <= 1023.0)
          {
            v138 = v137;
            if (v137 < 0.0)
            {
              v138 = 0.0;
            }
          }

          __asm { FCVT            S5, H11 }

          v28 = v30 + _S5;
          if (v28 <= 1023.0)
          {
            v122 = v28;
            if (v28 < 0.0)
            {
              v122 = 0.0;
            }
          }

          v140 = llroundf(v135);
          v141 = llroundf(v138) << 10;
          v142 = llroundf(v122);
          if (v119 <= 3.0)
          {
            v29 = v119;
          }

          else
          {
            v29 = 3.0;
          }

          v59[1] = v141 | v140 | (llroundf(v29) << 30) | (v142 << 20);
          v57 += 2;
          v58 += 2;
          v59 += 2;
        }

        while (v57 < v15);
      }

      v56 += v18;
      v55 += v19;
      v51 += v20;
      v49 += v21;
      ++v13;
    }

    while (v13 != v12);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_422vf_TRC_Mat_TRC_l10r(uint64_t a1, uint64_t *a2, uint64_t a3, unint64_t *a4, unint64_t *a5, uint64_t *a6, uint64_t a7, void *a8, void *a9)
{
  v64 = a7;
  v65 = a8;
  v73 = a5;
  v66 = a3;
  v67 = a4;
  v74 = *MEMORY[0x1E69E9840];
  v10 = *(a1 + 162);
  v12 = *a2;
  v11 = a2[1];
  v13 = a2[2];
  v63 = a2[3];
  v14 = a2[4];
  v69 = a2[5];
  v70 = v11;
  v15 = *a6;
  v68 = a6[1];
  v16 = a6[2];
  v17 = a6[3];
  v19 = a6[4];
  v18 = a6[5];
  v71 = v15;
  v72 = v18;
  v21 = v14 + v13 != v12 || v19 + v16 != v15;
  if (v10 == 255)
  {
    v22 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v22)
    {
      v23 = 0;
LABEL_64:
      free(v22);
      return v23;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v10 + 160, a3, a4);
    v22 = (&v60 - v24);
    bzero(&v60 - v24, v25);
  }

  v62 = a1;
  v26 = a9;
  v27 = v16 - 1;
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
    v27 = v16;
    v30 = v19;
  }

  if (v27)
  {
    v31 = v67;
    if (v21 || (v32 = v28 + 1 + v29, v32 > *v67) || ((v32 + (v32 >> 63)) & 0xFFFFFFFFFFFFFFFELL) > v67[1] || (v33 = v67[2], v32 > v33) && v33 || (v34 = v27 + 1 + v30, *v65 < 4 * v34) || (v35 = v65[1], v34 > v35) && v35)
    {
      --v27;
      --v28;
    }

    else
    {
      ++v71;
      ++v12;
      ++v28;
      ++v27;
    }
  }

  else
  {
    v31 = v67;
  }

  if (v28 + v29 > v12)
  {
    v28 = v12 - v29;
  }

  if (v27 + v30 > v71)
  {
    v27 = v71 - v30;
  }

  if (v69 + v63 <= v70)
  {
    v36 = v63;
  }

  else
  {
    v36 = v70 - v69;
  }

  if (v72 + v17 <= v68)
  {
    v37 = v17;
  }

  else
  {
    v37 = v68 - v72;
  }

  if (v28 >= v27)
  {
    v38 = v27;
  }

  else
  {
    v38 = v28;
  }

  if (v36 >= v37)
  {
    v39 = v37;
  }

  else
  {
    v39 = v36;
  }

  v40 = v69 + v39 - 1;
  v41 = v38 + v29;
  v42 = v38 + v29 + *v31 * v40;
  v43 = *v73;
  v61 = v29;
  if (v42 > v43)
  {
    v44 = v10;
    v45 = v30;
    v46 = v12;
    v47 = a9;
    v48 = v65;
    goto LABEL_57;
  }

  v48 = v65;
  v49 = v66;
  if (*(v66 + 8) && ((v41 + 1 + ((v41 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v31[1] * v40 > v73[1])
  {
    v44 = v10;
    v45 = v30;
    v46 = v12;
    v47 = a9;
    goto LABEL_57;
  }

  if (*(v66 + 16) && v41 + v31[2] * v40 > v73[2])
  {
    v44 = v10;
    v45 = v30;
    v46 = v12;
    v47 = a9;
    goto LABEL_57;
  }

  v50 = v72 + v39 - 1;
  if ((*v65 * v50 + 4 * (v38 + v30)) > *a9)
  {
    v44 = v10;
    v45 = v30;
    v46 = v12;
    v47 = a9;
    goto LABEL_57;
  }

  v51 = v64;
  if (*(v64 + 8) && (v38 + v30 + v65[1] * v50) > a9[1])
  {
    v44 = v10;
    v45 = v30;
    v46 = v12;
    v47 = a9;
LABEL_57:
    fig_log_get_emitter();
    v23 = FigSignalErrorAtGM();
    v51 = v64;
    v49 = v66;
    v31 = v67;
    v26 = v47;
    v12 = v46;
    v30 = v45;
    v10 = v44;
    v29 = v61;
    if (v23)
    {
      goto LABEL_63;
    }
  }

  *v22 = v10;
  *(v22 + 4) = v12;
  v52 = v69;
  *(v22 + 12) = v70;
  *(v22 + 20) = v38;
  *(v22 + 28) = v39;
  *(v22 + 36) = v29;
  *(v22 + 44) = v52;
  v22[11] = v68;
  v22[12] = v38;
  v22[13] = v39;
  v22[14] = v30;
  v22[7] = v49;
  v22[8] = v31;
  v53 = v71;
  v54 = v72;
  v22[9] = v73;
  v22[10] = v53;
  v22[15] = v54;
  v22[16] = v51;
  v22[17] = v48;
  v22[18] = v26;
  v22[19] = v62;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v10, global_queue, v22, vt_Copy_422vf_TRC_Mat_TRC_l10r_GCD);
  if (!v10)
  {
    return 0;
  }

  v56 = (v22 + 20);
  v57 = v10;
  while (1)
  {
    v58 = *v56++;
    v23 = v58;
    if (v58)
    {
      break;
    }

    if (!--v57)
    {
      v23 = 0;
      break;
    }
  }

LABEL_63:
  if (v10 == 255)
  {
    goto LABEL_64;
  }

  return v23;
}

unsigned __int8 *vt_Copy_422vf_TRC_Mat_TRC_l10r_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, float a5)
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
    v15 = *(result + 7);
    v16 = *(result + 8);
    v17 = *v16;
    v18 = v16[1];
    v19 = v16[2];
    v20 = **(result + 17);
    *&v21 = *(v13 + 128);
    v22 = 8191.0 / *&v21;
    LOWORD(v21) = *(v13 + 140);
    v23 = v21;
    LOWORD(a5) = *(v13 + 142);
    v24 = LODWORD(a5);
    v25 = v22 * *v13;
    v26 = v22 * *(v13 + 8);
    v27 = v22 * *(v13 + 16);
    v28 = v22 * *(v13 + 20);
    v29 = *(v13 + 28);
    v30 = v22 * v29;
    LOWORD(v29) = *(v13 + 144);
    v31 = LODWORD(v29);
    v32 = *(v13 + 72);
    v33 = *(v13 + 76);
    v34 = *(v13 + 80);
    v35 = *(v13 + 84);
    v36 = *(v13 + 88);
    v37 = *(v13 + 92);
    v38 = *(v13 + 96);
    v39 = *(v13 + 100);
    v40 = *(v13 + 104);
    v41 = v13 + 164;
    v42 = v13 + 16548;
    v43 = *(result + 28) * a2 / v8 + *(result + 44);
    v44 = *(result + 36);
    v45 = **(result + 16) + v20 * (v10 + *(result + 15)) + 16 * *(result + 14);
    v46 = v15[2];
    if (v46)
    {
      v47 = (v46 + v43 * v19 + v44);
    }

    else
    {
      v47 = 0;
    }

    v49 = *v15;
    v48 = v15[1];
    v50 = v48 + v43 * v18 + v44;
    if (!v48)
    {
      v50 = 0;
    }

    v51 = (v49 + v43 * v17 + v44);
    do
    {
      if (v14 >= 1)
      {
        v52 = 0;
        v53 = v51;
        v54 = v45;
        v55 = v47;
        do
        {
          LOBYTE(v7) = *(v50 + v52 + 1);
          *&v56 = LODWORD(v7);
          v57 = *&v56 - v24;
          v58 = v26 * (*&v56 - v24);
          LOBYTE(v56) = *v53;
          v59 = v25 * (v56 - v23);
          v60 = v58 + v59;
          v61 = 8191.0;
          if ((v58 + v59) <= 8191.0)
          {
            v61 = v58 + v59;
            if (v60 < 0.0)
            {
              v61 = 0.0;
            }
          }

          LOBYTE(v60) = *(v50 + v52);
          v62 = LODWORD(v60) - v24;
          v63 = (v28 * v57) + (v62 * v27);
          v64 = 8191.0;
          if ((v59 + v63) <= 8191.0)
          {
            v64 = v59 + v63;
            if ((v59 + v63) < 0.0)
            {
              v64 = 0.0;
            }
          }

          *&v6 = v30 * v62;
          v65 = *&v6 + v59;
          v66 = (*&v6 + v59) <= 8191.0;
          v67 = 8191.0;
          if (v66)
          {
            v67 = v65;
            if (v65 < 0.0)
            {
              v67 = 0.0;
            }
          }

          LOBYTE(v65) = v53[1];
          v68 = v25 * (LODWORD(v65) - v23);
          v69 = v58 + v68;
          v66 = (v58 + v68) <= 8191.0;
          v70 = 8191.0;
          if (v66)
          {
            v70 = v69;
            if (v69 < 0.0)
            {
              v70 = 0.0;
            }
          }

          v71 = v63 + v68;
          v72 = 8191.0;
          if (v71 <= 8191.0)
          {
            v72 = v71;
            if (v71 < 0.0)
            {
              v72 = 0.0;
            }
          }

          *&v5 = *&v6 + v68;
          v66 = (*&v6 + v68) <= 8191.0;
          v73 = 8191.0;
          if (v66)
          {
            if (*&v5 < 0.0)
            {
              v73 = 0.0;
            }

            else
            {
              v73 = *&v5;
            }
          }

          if (v55)
          {
            LOBYTE(v5) = *v55;
            LOBYTE(v6) = v55[1];
            v55 += 2;
            v5 = *&v5 * 3.0;
            v6 = *&v6 * 3.0;
          }

          else
          {
            v5 = 0.0;
            v6 = 0.0;
          }

          _H29 = *(v41 + 2 * llroundf(fminf(fmaxf(v61, 0.0), 8191.0)));
          _H30 = *(v41 + 2 * llroundf(fminf(fmaxf(v64, 0.0), 8191.0)));
          __asm
          {
            FCVT            S29, H29
            FCVT            S30, H30
          }

          _H31 = *(v41 + 2 * llroundf(fminf(fmaxf(v67, 0.0), 8191.0)));
          __asm { FCVT            S31, H31 }

          _H8 = *(v41 + 2 * llroundf(fminf(fmaxf(v70, 0.0), 8191.0)));
          __asm { FCVT            S8, H8 }

          _H11 = *(v41 + 2 * llroundf(fminf(fmaxf(v72, 0.0), 8191.0)));
          __asm { FCVT            S11, H11 }

          _H12 = *(v41 + 2 * llroundf(fminf(fmaxf(v73, 0.0), 8191.0)));
          __asm { FCVT            S12, H12 }

          v90 = ((v33 * _S30) + (_S29 * v32)) + (_S31 * v34);
          v91 = ((v36 * _S30) + (_S29 * v35)) + (_S31 * v37);
          v92 = ((v39 * _S30) + (_S29 * v38)) + (_S31 * v40);
          v93 = ((v33 * _S11) + (_S8 * v32)) + (_S12 * v34);
          v94 = ((v36 * _S11) + (_S8 * v35)) + (_S12 * v37);
          v95 = ((v39 * _S11) + (_S8 * v38)) + (_S12 * v40);
          _H11 = *(v42 + 2 * llroundf(fminf(fmaxf(v90, 0.0), 8191.0)));
          _H13 = *(v42 + 2 * llroundf(fminf(fmaxf(v91, 0.0), 8191.0)));
          _H31 = *(v42 + 2 * llroundf(fminf(fmaxf(v92, 0.0), 8191.0)));
          _H29 = *(v42 + 2 * llroundf(fminf(fmaxf(v93, 0.0), 8191.0)));
          _H8 = *(v42 + 2 * llroundf(fminf(fmaxf(v94, 0.0), 8191.0)));
          _H12 = *(v42 + 2 * llroundf(fminf(fmaxf(v95, 0.0), 8191.0)));
          if (v55)
          {
            v5 = v5 / 255.0;
            *&v5 = v5;
            v102 = v6 / 255.0;
            *&v5 = llroundf(*&v5);
            v103 = llroundf(v102);
          }

          else
          {
            LODWORD(v5) = 3.0;
            v103 = 3.0;
          }

          __asm { FCVT            S31, H31 }

          v105 = v31 + _S31;
          v106 = 1023.0;
          LODWORD(v6) = 1149222912;
          if (v105 <= 1023.0)
          {
            *&v6 = v105;
            if (v105 < 0.0)
            {
              v6 = 0.0;
            }
          }

          __asm { FCVT            S13, H13 }

          v108 = v31 + _S13;
          v66 = (v31 + _S13) <= 1023.0;
          v109 = 1023.0;
          if (v66)
          {
            v109 = v108;
            if (v108 < 0.0)
            {
              v109 = 0.0;
            }
          }

          __asm { FCVT            S11, H11 }

          v111 = v31 + _S11;
          v66 = (v31 + _S11) <= 1023.0;
          v112 = 1023.0;
          if (v66)
          {
            v112 = v111;
            if (v111 < 0.0)
            {
              v112 = 0.0;
            }
          }

          __asm { FCVT            S12, H12 }

          v114 = llroundf(*&v6);
          v115 = llroundf(v112);
          v116 = llroundf(v109) << 10;
          if (*&v5 > 3.0)
          {
            *&v5 = 3.0;
          }

          *v54 = v116 | v114 | (llroundf(*&v5) << 30) | (v115 << 20);
          LODWORD(v5) = 1149222912;
          if ((v31 + _S12) <= 1023.0)
          {
            *&v5 = v31 + _S12;
            if ((v31 + _S12) < 0.0)
            {
              v5 = 0.0;
            }
          }

          __asm { FCVT            S8, H8 }

          v118 = v31 + _S8;
          v66 = (v31 + _S8) <= 1023.0;
          v119 = 1023.0;
          if (v66)
          {
            v119 = v118;
            if (v118 < 0.0)
            {
              v119 = 0.0;
            }
          }

          __asm { FCVT            S29, H29 }

          v121 = v31 + _S29;
          if (v121 <= 1023.0)
          {
            v106 = v121;
            if (v121 < 0.0)
            {
              v106 = 0.0;
            }
          }

          v122 = llroundf(*&v5);
          v123 = llroundf(v119) << 10;
          v124 = llroundf(v106);
          if (v103 <= 3.0)
          {
            v7 = v103;
          }

          else
          {
            v7 = 3.0;
          }

          v54[1] = v123 | v122 | (llroundf(v7) << 30) | (v124 << 20);
          v52 += 2;
          v53 += 2;
          v54 += 2;
        }

        while (v52 < v14);
      }

      v51 += v17;
      v50 += v18;
      v47 += v19;
      v45 += v20;
      ++v12;
    }

    while (v12 != v11);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_422vf_rgb_l10r(uint64_t a1, uint64_t *a2, uint64_t a3, unint64_t *a4, unint64_t *a5, uint64_t *a6, uint64_t a7, void *a8, void *a9)
{
  v64 = a7;
  v65 = a8;
  v73 = a5;
  v66 = a3;
  v67 = a4;
  v74 = *MEMORY[0x1E69E9840];
  v10 = *(a1 + 162);
  v12 = *a2;
  v11 = a2[1];
  v13 = a2[2];
  v63 = a2[3];
  v14 = a2[4];
  v69 = a2[5];
  v70 = v11;
  v15 = *a6;
  v68 = a6[1];
  v16 = a6[2];
  v17 = a6[3];
  v19 = a6[4];
  v18 = a6[5];
  v71 = v15;
  v72 = v18;
  v21 = v14 + v13 != v12 || v19 + v16 != v15;
  if (v10 == 255)
  {
    v22 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v22)
    {
      v23 = 0;
LABEL_64:
      free(v22);
      return v23;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v10 + 160, a3, a4);
    v22 = (&v60 - v24);
    bzero(&v60 - v24, v25);
  }

  v62 = a1;
  v26 = a9;
  v27 = v16 - 1;
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
    v27 = v16;
    v30 = v19;
  }

  if (v27)
  {
    v31 = v67;
    if (v21 || (v32 = v28 + 1 + v29, v32 > *v67) || ((v32 + (v32 >> 63)) & 0xFFFFFFFFFFFFFFFELL) > v67[1] || (v33 = v67[2], v32 > v33) && v33 || (v34 = v27 + 1 + v30, *v65 < 4 * v34) || (v35 = v65[1], v34 > v35) && v35)
    {
      --v27;
      --v28;
    }

    else
    {
      ++v71;
      ++v12;
      ++v28;
      ++v27;
    }
  }

  else
  {
    v31 = v67;
  }

  if (v28 + v29 > v12)
  {
    v28 = v12 - v29;
  }

  if (v27 + v30 > v71)
  {
    v27 = v71 - v30;
  }

  if (v69 + v63 <= v70)
  {
    v36 = v63;
  }

  else
  {
    v36 = v70 - v69;
  }

  if (v72 + v17 <= v68)
  {
    v37 = v17;
  }

  else
  {
    v37 = v68 - v72;
  }

  if (v28 >= v27)
  {
    v38 = v27;
  }

  else
  {
    v38 = v28;
  }

  if (v36 >= v37)
  {
    v39 = v37;
  }

  else
  {
    v39 = v36;
  }

  v40 = v69 + v39 - 1;
  v41 = v38 + v29;
  v42 = v38 + v29 + *v31 * v40;
  v43 = *v73;
  v61 = v29;
  if (v42 > v43)
  {
    v44 = v10;
    v45 = v30;
    v46 = v12;
    v47 = a9;
    v48 = v65;
    goto LABEL_57;
  }

  v48 = v65;
  v49 = v66;
  if (*(v66 + 8) && ((v41 + 1 + ((v41 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v31[1] * v40 > v73[1])
  {
    v44 = v10;
    v45 = v30;
    v46 = v12;
    v47 = a9;
    goto LABEL_57;
  }

  if (*(v66 + 16) && v41 + v31[2] * v40 > v73[2])
  {
    v44 = v10;
    v45 = v30;
    v46 = v12;
    v47 = a9;
    goto LABEL_57;
  }

  v50 = v72 + v39 - 1;
  if ((*v65 * v50 + 4 * (v38 + v30)) > *a9)
  {
    v44 = v10;
    v45 = v30;
    v46 = v12;
    v47 = a9;
    goto LABEL_57;
  }

  v51 = v64;
  if (*(v64 + 8) && (v38 + v30 + v65[1] * v50) > a9[1])
  {
    v44 = v10;
    v45 = v30;
    v46 = v12;
    v47 = a9;
LABEL_57:
    fig_log_get_emitter();
    v23 = FigSignalErrorAtGM();
    v51 = v64;
    v49 = v66;
    v31 = v67;
    v26 = v47;
    v12 = v46;
    v30 = v45;
    v10 = v44;
    v29 = v61;
    if (v23)
    {
      goto LABEL_63;
    }
  }

  *v22 = v10;
  *(v22 + 4) = v12;
  v52 = v69;
  *(v22 + 12) = v70;
  *(v22 + 20) = v38;
  *(v22 + 28) = v39;
  *(v22 + 36) = v29;
  *(v22 + 44) = v52;
  v22[11] = v68;
  v22[12] = v38;
  v22[13] = v39;
  v22[14] = v30;
  v22[7] = v49;
  v22[8] = v31;
  v53 = v71;
  v54 = v72;
  v22[9] = v73;
  v22[10] = v53;
  v22[15] = v54;
  v22[16] = v51;
  v22[17] = v48;
  v22[18] = v26;
  v22[19] = v62;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v10, global_queue, v22, vt_Copy_422vf_rgb_l10r_GCD);
  if (!v10)
  {
    return 0;
  }

  v56 = (v22 + 20);
  v57 = v10;
  while (1)
  {
    v58 = *v56++;
    v23 = v58;
    if (v58)
    {
      break;
    }

    if (!--v57)
    {
      v23 = 0;
      break;
    }
  }

LABEL_63:
  if (v10 == 255)
  {
    goto LABEL_64;
  }

  return v23;
}

unsigned __int8 *vt_Copy_422vf_rgb_l10r_GCD(unsigned __int8 *result, uint64_t a2)
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
    *&v19 = *(v10 + 136);
    v20 = *&v19 / *&v18;
    LOWORD(v18) = *(v10 + 140);
    v21 = v18;
    LOWORD(v19) = *(v10 + 142);
    v22 = v19;
    v23 = v20 * *v10;
    v24 = v20 * *(v10 + 8);
    v25 = v20 * *(v10 + 16);
    v26 = v20 * *(v10 + 20);
    v27 = *(v10 + 28);
    v28 = v20 * v27;
    LOWORD(v27) = *(v10 + 144);
    v29 = LODWORD(v27);
    v30 = *(result + 28) * a2 / v5 + *(result + 44);
    v31 = *(result + 36);
    v32 = **(result + 16) + v17 * (v7 + *(result + 15)) + 16 * *(result + 14);
    v33 = v12[2];
    if (v33)
    {
      v34 = (v33 + v30 * v16 + v31);
    }

    else
    {
      v34 = 0;
    }

    v35 = *v12;
    v36 = *(*(result + 7) + 8);
    v37 = v36 == 0;
    v38 = v36 + v30 * v15 + v31;
    if (v37)
    {
      v38 = 0;
    }

    v39 = (v35 + v30 * v14 + v31);
    do
    {
      if (v11 >= 1)
      {
        v40 = 0;
        v41 = v39;
        v42 = v32;
        v43 = v34;
        do
        {
          if (v43)
          {
            LOBYTE(v2) = *v43;
            v44 = *&v2 * 3.0 / 255.0;
            *&v44 = v44;
            v45 = llroundf(*&v44);
            LOBYTE(v44) = v43[1];
            v2 = *&v44 * 3.0 / 255.0;
            *&v2 = v2;
            v43 += 2;
            v46 = v45;
            *&v2 = llroundf(*&v2);
          }

          else
          {
            v46 = 3.0;
            LODWORD(v2) = 3.0;
          }

          LOBYTE(v3) = *(v38 + v40);
          v47 = LODWORD(v3) - v22;
          v48 = v28 * v47;
          LOBYTE(v4) = *v41;
          v49 = v23 * (LODWORD(v4) - v21);
          v50 = ((v28 * v47) + v49) + v29;
          v51 = 1023.0;
          if (v50 <= 1023.0)
          {
            v51 = ((v28 * v47) + v49) + v29;
            if (v50 < 0.0)
            {
              v51 = 0.0;
            }
          }

          LOBYTE(v50) = *(v38 + v40 + 1);
          v52 = LODWORD(v50) - v22;
          v53 = (v26 * v52) + (v47 * v25);
          v54 = (v49 + v53) + v29;
          v55 = 1023.0;
          if (v54 <= 1023.0)
          {
            v55 = (v49 + v53) + v29;
            if (v54 < 0.0)
            {
              v55 = 0.0;
            }
          }

          v56 = v24 * v52;
          LOBYTE(v52) = v41[1];
          v57 = v23 * (LODWORD(v52) - v21);
          v58 = v53 + v57;
          v59 = v48 + v57;
          v60 = llroundf(v51);
          v61 = llroundf(v55) << 10;
          v62 = (v56 + v49) + v29;
          if (v62 < 0.0)
          {
            v63 = 0.0;
          }

          else
          {
            v63 = v62;
          }

          if (v62 <= 1023.0)
          {
            v64 = v63;
          }

          else
          {
            v64 = 1023.0;
          }

          v65 = llroundf(v64);
          if (v46 > 3.0)
          {
            v46 = 3.0;
          }

          *v42 = v61 | v60 | (llroundf(v46) << 30) | (v65 << 20);
          v66 = v59 + v29;
          if ((v59 + v29) < 0.0)
          {
            v67 = 0.0;
          }

          else
          {
            v67 = v59 + v29;
          }

          if (v66 <= 1023.0)
          {
            v68 = v67;
          }

          else
          {
            v68 = 1023.0;
          }

          v3 = 1023.0;
          if ((v58 + v29) <= 1023.0)
          {
            v3 = v58 + v29;
            if ((v58 + v29) < 0.0)
            {
              v3 = 0.0;
            }
          }

          v4 = (v56 + v57) + v29;
          v69 = 1023.0;
          if (v4 <= 1023.0)
          {
            v69 = v4;
            if (v4 < 0.0)
            {
              v69 = 0.0;
            }
          }

          v70 = llroundf(v68);
          v71 = llroundf(v3) << 10;
          v72 = llroundf(v69);
          if (*&v2 > 3.0)
          {
            *&v2 = 3.0;
          }

          v42[1] = v71 | v70 | (llroundf(*&v2) << 30) | (v72 << 20);
          v40 += 2;
          v41 += 2;
          v42 += 2;
        }

        while (v40 < v11);
      }

      v39 += v14;
      v38 += v15;
      v34 += v16;
      v32 += v17;
      ++v9;
    }

    while (v9 != v8);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_422vf_TRC_Tone_Mat_TRC_l64r(uint64_t a1, uint64_t *a2, uint64_t a3, unint64_t *a4, void *a5, uint64_t *a6, uint64_t a7, void *a8, void *a9)
{
  v61 = a8;
  v62 = a3;
  v68 = a5;
  v63 = a4;
  v69 = *MEMORY[0x1E69E9840];
  v10 = *(a1 + 162);
  v12 = *a2;
  v11 = a2[1];
  v13 = a2[2];
  v60 = a2[3];
  v14 = a2[4];
  v15 = a2[5];
  v16 = *a6;
  v64 = a6[1];
  v65 = v11;
  v18 = a6[2];
  v17 = a6[3];
  v58 = a1;
  v59 = v17;
  v20 = a6[4];
  v19 = a6[5];
  v66 = v16;
  v67 = v19;
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
    v23 = (&v56 - v25);
    bzero(&v56 - v25, v26);
  }

  v57 = a7;
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
    v32 = v63;
    if (v22 || (v33 = v29 + 1 + v30, v33 > *v63) || ((v33 + (v33 >> 63)) & 0xFFFFFFFFFFFFFFFELL) > v63[1] || (v34 = v63[2], v33 > v34) && v34 || (8 * (v31 + v28) + 8) > *v61)
    {
      --v28;
      --v29;
    }

    else
    {
      ++v28;
      ++v66;
      ++v12;
      ++v29;
    }
  }

  else
  {
    v32 = v63;
  }

  if (v29 + v30 > v12)
  {
    v29 = v12 - v30;
  }

  if (v28 + v31 > v66)
  {
    v28 = v66 - v31;
  }

  if (v15 + v60 <= v65)
  {
    v35 = v60;
  }

  else
  {
    v35 = v65 - v15;
  }

  if (v67 + v59 <= v64)
  {
    v36 = v59;
  }

  else
  {
    v36 = v64 - v67;
  }

  if (v29 >= v28)
  {
    v37 = v28;
  }

  else
  {
    v37 = v29;
  }

  if (v35 >= v36)
  {
    v38 = v36;
  }

  else
  {
    v38 = v35;
  }

  v39 = v15 + v38 - 1;
  v40 = v37 + v30;
  if (v37 + v30 + *v32 * v39 <= *v68)
  {
    v45 = v62;
    if (*(v62 + 8) && ((v40 + 1 + ((v40 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v32[1] * v39 > v68[1])
    {
      v60 = v30;
      v41 = v10;
      v42 = v12;
      v43 = v15;
      v44 = a9;
    }

    else if (*(v62 + 16) && v40 + v32[2] * v39 > v68[2])
    {
      v60 = v30;
      v41 = v10;
      v42 = v12;
      v43 = v15;
      v44 = a9;
    }

    else
    {
      if ((*v61 * (v67 + v38 - 1) + 8 * (v37 + v31)) <= *a9)
      {
        goto LABEL_53;
      }

      v60 = v30;
      v41 = v10;
      v42 = v12;
      v43 = v15;
      v44 = a9;
    }
  }

  else
  {
    v60 = v30;
    v41 = v10;
    v42 = v12;
    v43 = v15;
    v44 = a9;
  }

  fig_log_get_emitter();
  v46 = FigSignalErrorAtGM();
  v45 = v62;
  v32 = v63;
  v27 = v44;
  v15 = v43;
  v12 = v42;
  v10 = v41;
  v30 = v60;
  if (v46)
  {
    v24 = v46;
    goto LABEL_58;
  }

LABEL_53:
  *v23 = v10;
  *(v23 + 4) = v12;
  v47 = v64;
  *(v23 + 12) = v65;
  *(v23 + 20) = v37;
  *(v23 + 28) = v38;
  *(v23 + 36) = v30;
  *(v23 + 44) = v15;
  v23[11] = v47;
  v23[12] = v37;
  v23[13] = v38;
  v23[14] = v31;
  v23[7] = v45;
  v23[8] = v32;
  v48 = v66;
  v49 = v67;
  v23[9] = v68;
  v23[10] = v48;
  v50 = v57;
  v23[15] = v49;
  v23[16] = v50;
  v23[17] = v61;
  v23[18] = v27;
  v23[19] = v58;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v10, global_queue, v23, vt_Copy_422vf_TRC_Tone_Mat_TRC_l64r_GCD);
  if (!v10)
  {
    return 0;
  }

  v52 = (v23 + 20);
  v53 = v10;
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

LABEL_58:
  if (v10 == 255)
  {
    goto LABEL_59;
  }

  return v24;
}

unsigned __int8 *vt_Copy_422vf_TRC_Tone_Mat_TRC_l64r_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, float a5)
{
  v6 = *result;
  v7 = *(result + 13);
  v8 = v7 * a2 / v6;
  v9 = (v7 + v7 * a2) / v6 - v8;
  if (v9 >= 1)
  {
    v10 = 0;
    v11 = *(result + 19);
    v12 = *(result + 24) & 0xFFFFFFFE;
    v13 = *(result + 7);
    v14 = *(result + 8);
    v15 = *v14;
    v16 = v14[1];
    v17 = v14[2];
    v18 = **(result + 17);
    *&v19 = *(v11 + 128);
    v20 = 8191.0 / *&v19;
    LOWORD(v19) = *(v11 + 140);
    v21 = v19;
    LOWORD(a5) = *(v11 + 142);
    v22 = LODWORD(a5);
    v23 = v20 * *v11;
    v24 = v20 * *(v11 + 8);
    v25 = v20 * *(v11 + 16);
    v26 = v20 * *(v11 + 20);
    v27 = v20 * *(v11 + 28);
    v28 = *(v11 + 72);
    v29 = *(v11 + 76);
    v30 = *(v11 + 80);
    v31 = *(v11 + 84);
    v32 = *(v11 + 88);
    v33 = *(v11 + 92);
    v34 = *(v11 + 96);
    v35 = *(v11 + 100);
    v36 = v11 + 164;
    v37 = v11 + 16548;
    v38 = v11 + 32932;
    v39 = *(v11 + 104);
    v40 = *(v11 + 108);
    v41 = *(v11 + 112);
    v42 = *(v11 + 116);
    v43 = *(v11 + 120);
    v44 = *(result + 28) * a2 / v6 + *(result + 44);
    v45 = *(result + 36);
    v46 = **(result + 16) + v18 * (v8 + *(result + 15)) + 8 * *(result + 14);
    v47 = v13[2];
    if (v47)
    {
      v48 = (v47 + v44 * v17 + v45);
    }

    else
    {
      v48 = 0;
    }

    v50 = *v13;
    v49 = *(*(result + 7) + 8);
    _ZF = v49 == 0;
    v52 = v49 + v44 * v16 + v45;
    if (_ZF)
    {
      v52 = 0;
    }

    v53 = (v50 + v44 * v15 + v45);
    do
    {
      if (v12 >= 1)
      {
        v54 = 0;
        v55 = v53;
        v56 = v46;
        v57 = v48;
        do
        {
          LOBYTE(_S30) = *(v52 + v54 + 1);
          *&v58 = LODWORD(_S30);
          v59 = *&v58 - v22;
          v60 = v24 * (*&v58 - v22);
          LOBYTE(v58) = *v55;
          v61 = v23 * (v58 - v21);
          v62 = v60 + v61;
          v63 = 8191.0;
          if ((v60 + v61) <= 8191.0)
          {
            v63 = v60 + v61;
            if (v62 < 0.0)
            {
              v63 = 0.0;
            }
          }

          LOBYTE(v62) = *(v52 + v54);
          v64 = LODWORD(v62) - v22;
          v65 = (v26 * v59) + (v64 * v25);
          v66 = 8191.0;
          if ((v61 + v65) <= 8191.0)
          {
            v66 = v61 + v65;
            if ((v61 + v65) < 0.0)
            {
              v66 = 0.0;
            }
          }

          v67 = v27 * v64;
          v68 = (v27 * v64) + v61;
          v69 = 8191.0;
          if (v68 <= 8191.0)
          {
            v69 = v68;
            if (v68 < 0.0)
            {
              v69 = 0.0;
            }
          }

          LOBYTE(v68) = v55[1];
          v70 = v23 * (LODWORD(v68) - v21);
          v71 = v60 + v70;
          v72 = (v60 + v70) <= 8191.0;
          v73 = 8191.0;
          if (v72)
          {
            v73 = v71;
            if (v71 < 0.0)
            {
              v73 = 0.0;
            }
          }

          v74 = v65 + v70;
          v75 = 8191.0;
          if (v74 <= 8191.0)
          {
            v75 = v74;
            if (v74 < 0.0)
            {
              v75 = 0.0;
            }
          }

          v76 = v67 + v70;
          v72 = (v67 + v70) <= 8191.0;
          v77 = 8191.0;
          if (v72)
          {
            v77 = v76;
            if (v76 < 0.0)
            {
              v77 = 0.0;
            }
          }

          if (v57)
          {
            v78 = *v57;
            v79 = v57[1];
            v57 += 2;
          }

          else
          {
            v78 = 0;
            v79 = 0;
          }

          _S10 = fmaxf(v63, 0.0);
          v81 = 8191.0;
          LOWORD(_S10) = *(v36 + 2 * llroundf(fminf(_S10, 8191.0)));
          __asm { FCVT            S10, H10 }

          _H31 = *(v36 + 2 * llroundf(fminf(fmaxf(v66, 0.0), 8191.0)));
          __asm { FCVT            S31, H31 }

          _H8 = *(v36 + 2 * llroundf(fminf(fmaxf(v69, 0.0), 8191.0)));
          __asm { FCVT            S8, H8 }

          _H9 = *(v36 + 2 * llroundf(fminf(fmaxf(v73, 0.0), 8191.0)));
          _H11 = *(v36 + 2 * llroundf(fminf(fmaxf(v75, 0.0), 8191.0)));
          _H12 = *(v36 + 2 * llroundf(fminf(fmaxf(v77, 0.0), 8191.0)));
          v93 = (((v41 * _S31) + (v40 * _S10)) + (v42 * _S8)) + (v43 * fmaxf(_S10, fmaxf(_S31, _S8)));
          v94 = 8191.0;
          if (v93 <= 8191.0)
          {
            v94 = v93;
            if (v93 < 0.0)
            {
              v94 = 0.0;
            }
          }

          __asm
          {
            FCVT            S9, H9
            FCVT            S11, H11
            FCVT            S12, H12
          }

          _H13 = *(v37 + 2 * llroundf(v94));
          v99 = fmaxf(_S9, fmaxf(_S11, _S12));
          v100 = (((v41 * _S11) + (v40 * _S9)) + (v42 * _S12)) + (v43 * v99);
          if (v100 <= 8191.0)
          {
            v81 = (((v41 * _S11) + (v40 * _S9)) + (v42 * _S12)) + (v43 * v99);
            if (v100 < 0.0)
            {
              v81 = 0.0;
            }
          }

          __asm { FCVT            S13, H13 }

          v102 = _S10 * _S13;
          v103 = _S31 * _S13;
          v104 = _S8 * _S13;
          _H30 = *(v37 + 2 * llroundf(v81));
          __asm { FCVT            S30, H30 }

          v107 = _S9 * _S30;
          v108 = _S11 * _S30;
          v109 = _S12 * _S30;
          _S12 = ((v29 * v103) + (v102 * v28)) + (v104 * v30);
          v111 = ((v32 * v103) + (v102 * v31)) + (v104 * v33);
          v112 = ((v35 * v103) + (v102 * v34)) + (v104 * v39);
          v113 = ((v29 * v108) + (v107 * v28)) + (v109 * v30);
          v114 = ((v32 * v108) + (v107 * v31)) + (v109 * v33);
          v115 = ((v35 * v108) + (v107 * v34)) + (v109 * v39);
          LOWORD(_S12) = *(v38 + 2 * llroundf(fminf(fmaxf(_S12, 0.0), 8191.0)));
          __asm { FCVT            S13, H12 }

          _H11 = *(v38 + 2 * llroundf(fminf(fmaxf(v111, 0.0), 8191.0)));
          _H10 = *(v38 + 2 * llroundf(fminf(fmaxf(v112, 0.0), 8191.0)));
          _H9 = *(v38 + 2 * llroundf(fminf(fmaxf(v113, 0.0), 8191.0)));
          _H8 = *(v38 + 2 * llroundf(fminf(fmaxf(v114, 0.0), 8191.0)));
          _S30 = fminf(fmaxf(v115, 0.0), 8191.0);
          LOWORD(_S30) = *(v38 + 2 * llroundf(_S30));
          v121 = v78 | (v78 << 8);
          if (v57)
          {
            v122 = v121;
          }

          else
          {
            v122 = -1;
          }

          v123 = v79 | (v79 << 8);
          if (!v57)
          {
            v123 = -1;
          }

          v124 = 65535.0;
          v125 = 65535.0;
          if (_S13 <= 65535.0)
          {
            __asm { FCMP            H12, #0 }

            v125 = _S13;
            if (_NF)
            {
              v125 = 0.0;
            }
          }

          __asm { FCVT            S13, H11 }

          *v56 = llroundf(v125);
          v128 = 65535.0;
          if (_S13 <= 65535.0)
          {
            __asm { FCMP            H11, #0 }

            v128 = _S13;
            if (_NF)
            {
              v128 = 0.0;
            }
          }

          __asm { FCVT            S13, H10 }

          v56[1] = llroundf(v128);
          v131 = 65535.0;
          if (_S13 <= 65535.0)
          {
            __asm { FCMP            H10, #0 }

            v131 = _S13;
            if (_NF)
            {
              v131 = 0.0;
            }
          }

          __asm { FCVT            S12, H9 }

          v56[2] = llroundf(v131);
          v56[3] = v122;
          v134 = 65535.0;
          if (_S12 <= 65535.0)
          {
            __asm { FCMP            H9, #0 }

            v134 = _S12;
            if (_NF)
            {
              v134 = 0.0;
            }
          }

          __asm { FCVT            S11, H8 }

          v56[4] = llroundf(v134);
          v137 = 65535.0;
          if (_S11 <= 65535.0)
          {
            __asm { FCMP            H8, #0 }

            v137 = _S11;
            if (_NF)
            {
              v137 = 0.0;
            }
          }

          __asm { FCVT            S8, H30 }

          v56[5] = llroundf(v137);
          if (_S8 <= 65535.0)
          {
            __asm { FCMP            H30, #0 }

            v124 = _S8;
            if (_NF)
            {
              v124 = 0.0;
            }
          }

          v56[6] = llroundf(v124);
          v56[7] = v123;
          v54 += 2;
          v55 += 2;
          v56 += 8;
        }

        while (v54 < v12);
      }

      v53 += v15;
      v52 += v16;
      v48 += v17;
      v46 += v18;
      ++v10;
    }

    while (v10 != v9);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_422vf_TRC_Mat_TRC_l64r(uint64_t a1, uint64_t *a2, uint64_t a3, unint64_t *a4, void *a5, uint64_t *a6, uint64_t a7, void *a8, void *a9)
{
  v61 = a8;
  v62 = a3;
  v68 = a5;
  v63 = a4;
  v69 = *MEMORY[0x1E69E9840];
  v10 = *(a1 + 162);
  v12 = *a2;
  v11 = a2[1];
  v13 = a2[2];
  v60 = a2[3];
  v14 = a2[4];
  v15 = a2[5];
  v16 = *a6;
  v64 = a6[1];
  v65 = v11;
  v18 = a6[2];
  v17 = a6[3];
  v58 = a1;
  v59 = v17;
  v20 = a6[4];
  v19 = a6[5];
  v66 = v16;
  v67 = v19;
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
    v23 = (&v56 - v25);
    bzero(&v56 - v25, v26);
  }

  v57 = a7;
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
    v32 = v63;
    if (v22 || (v33 = v29 + 1 + v30, v33 > *v63) || ((v33 + (v33 >> 63)) & 0xFFFFFFFFFFFFFFFELL) > v63[1] || (v34 = v63[2], v33 > v34) && v34 || (8 * (v31 + v28) + 8) > *v61)
    {
      --v28;
      --v29;
    }

    else
    {
      ++v28;
      ++v66;
      ++v12;
      ++v29;
    }
  }

  else
  {
    v32 = v63;
  }

  if (v29 + v30 > v12)
  {
    v29 = v12 - v30;
  }

  if (v28 + v31 > v66)
  {
    v28 = v66 - v31;
  }

  if (v15 + v60 <= v65)
  {
    v35 = v60;
  }

  else
  {
    v35 = v65 - v15;
  }

  if (v67 + v59 <= v64)
  {
    v36 = v59;
  }

  else
  {
    v36 = v64 - v67;
  }

  if (v29 >= v28)
  {
    v37 = v28;
  }

  else
  {
    v37 = v29;
  }

  if (v35 >= v36)
  {
    v38 = v36;
  }

  else
  {
    v38 = v35;
  }

  v39 = v15 + v38 - 1;
  v40 = v37 + v30;
  if (v37 + v30 + *v32 * v39 <= *v68)
  {
    v45 = v62;
    if (*(v62 + 8) && ((v40 + 1 + ((v40 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v32[1] * v39 > v68[1])
    {
      v60 = v30;
      v41 = v10;
      v42 = v12;
      v43 = v15;
      v44 = a9;
    }

    else if (*(v62 + 16) && v40 + v32[2] * v39 > v68[2])
    {
      v60 = v30;
      v41 = v10;
      v42 = v12;
      v43 = v15;
      v44 = a9;
    }

    else
    {
      if ((*v61 * (v67 + v38 - 1) + 8 * (v37 + v31)) <= *a9)
      {
        goto LABEL_53;
      }

      v60 = v30;
      v41 = v10;
      v42 = v12;
      v43 = v15;
      v44 = a9;
    }
  }

  else
  {
    v60 = v30;
    v41 = v10;
    v42 = v12;
    v43 = v15;
    v44 = a9;
  }

  fig_log_get_emitter();
  v46 = FigSignalErrorAtGM();
  v45 = v62;
  v32 = v63;
  v27 = v44;
  v15 = v43;
  v12 = v42;
  v10 = v41;
  v30 = v60;
  if (v46)
  {
    v24 = v46;
    goto LABEL_58;
  }

LABEL_53:
  *v23 = v10;
  *(v23 + 4) = v12;
  v47 = v64;
  *(v23 + 12) = v65;
  *(v23 + 20) = v37;
  *(v23 + 28) = v38;
  *(v23 + 36) = v30;
  *(v23 + 44) = v15;
  v23[11] = v47;
  v23[12] = v37;
  v23[13] = v38;
  v23[14] = v31;
  v23[7] = v45;
  v23[8] = v32;
  v48 = v66;
  v49 = v67;
  v23[9] = v68;
  v23[10] = v48;
  v50 = v57;
  v23[15] = v49;
  v23[16] = v50;
  v23[17] = v61;
  v23[18] = v27;
  v23[19] = v58;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v10, global_queue, v23, vt_Copy_422vf_TRC_Mat_TRC_l64r_GCD);
  if (!v10)
  {
    return 0;
  }

  v52 = (v23 + 20);
  v53 = v10;
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

LABEL_58:
  if (v10 == 255)
  {
    goto LABEL_59;
  }

  return v24;
}

unsigned __int8 *vt_Copy_422vf_TRC_Mat_TRC_l64r_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, float a5)
{
  v6 = *result;
  v7 = *(result + 13);
  v8 = v7 * a2 / v6;
  v9 = (v7 + v7 * a2) / v6 - v8;
  if (v9 >= 1)
  {
    v10 = 0;
    v11 = *(result + 19);
    v12 = *(result + 24) & 0xFFFFFFFE;
    v13 = *(result + 7);
    v14 = *(result + 8);
    v15 = *v14;
    v16 = v14[1];
    v17 = v14[2];
    v18 = **(result + 17);
    *&v19 = *(v11 + 128);
    v20 = 8191.0 / *&v19;
    LOWORD(v19) = *(v11 + 140);
    v21 = v19;
    LOWORD(a5) = *(v11 + 142);
    v22 = LODWORD(a5);
    v23 = v20 * *v11;
    v24 = v20 * *(v11 + 8);
    v25 = v20 * *(v11 + 16);
    v26 = v20 * *(v11 + 20);
    v27 = v20 * *(v11 + 28);
    v28 = *(v11 + 72);
    v29 = *(v11 + 76);
    v30 = *(v11 + 80);
    v31 = *(v11 + 84);
    v32 = *(v11 + 88);
    v33 = *(v11 + 92);
    v34 = *(v11 + 96);
    v35 = *(v11 + 100);
    v36 = *(v11 + 104);
    v37 = v11 + 164;
    v38 = v11 + 16548;
    v39 = *(result + 28) * a2 / v6 + *(result + 44);
    v40 = *(result + 36);
    v41 = **(result + 16) + v18 * (v8 + *(result + 15)) + 8 * *(result + 14);
    v42 = v13[2];
    if (v42)
    {
      v43 = (v42 + v39 * v17 + v40);
    }

    else
    {
      v43 = 0;
    }

    v45 = *v13;
    v44 = v13[1];
    v46 = v44 + v39 * v16 + v40;
    if (!v44)
    {
      v46 = 0;
    }

    v47 = (v45 + v39 * v15 + v40);
    do
    {
      if (v12 >= 1)
      {
        v48 = 0;
        v49 = v47;
        v50 = v41;
        v51 = v43;
        do
        {
          LOBYTE(_S26) = *(v46 + v48 + 1);
          *&v52 = LODWORD(_S26);
          v53 = *&v52 - v22;
          v54 = v24 * (*&v52 - v22);
          LOBYTE(v52) = *v49;
          v55 = v23 * (v52 - v21);
          v56 = v54 + v55;
          v57 = 8191.0;
          if ((v54 + v55) <= 8191.0)
          {
            v57 = v54 + v55;
            if (v56 < 0.0)
            {
              v57 = 0.0;
            }
          }

          LOBYTE(v56) = *(v46 + v48);
          v58 = LODWORD(v56) - v22;
          v59 = (v26 * v53) + (v58 * v25);
          v60 = 8191.0;
          if ((v55 + v59) <= 8191.0)
          {
            v60 = v55 + v59;
            if ((v55 + v59) < 0.0)
            {
              v60 = 0.0;
            }
          }

          v61 = v27 * v58;
          v62 = v61 + v55;
          v63 = (v61 + v55) <= 8191.0;
          v64 = 8191.0;
          if (v63)
          {
            v64 = v62;
            if (v62 < 0.0)
            {
              v64 = 0.0;
            }
          }

          LOBYTE(v62) = v49[1];
          v65 = v23 * (LODWORD(v62) - v21);
          v66 = v54 + v65;
          v63 = (v54 + v65) <= 8191.0;
          v67 = 8191.0;
          if (v63)
          {
            v67 = v66;
            if (v66 < 0.0)
            {
              v67 = 0.0;
            }
          }

          v68 = v59 + v65;
          v63 = (v59 + v65) <= 8191.0;
          v69 = 8191.0;
          if (v63)
          {
            v69 = v68;
            if (v68 < 0.0)
            {
              v69 = 0.0;
            }
          }

          v70 = v61 + v65;
          v71 = 8191.0;
          if (v70 <= 8191.0)
          {
            if (v70 < 0.0)
            {
              v71 = 0.0;
            }

            else
            {
              v71 = v70;
            }
          }

          if (v51)
          {
            v72 = *v51;
            v73 = v51[1];
            v51 += 2;
          }

          else
          {
            v72 = 0;
            v73 = 0;
          }

          _H26 = *(v37 + 2 * llroundf(fminf(fmaxf(v57, 0.0), 8191.0)));
          __asm { FCVT            S26, H26 }

          _H27 = *(v37 + 2 * llroundf(fminf(fmaxf(v60, 0.0), 8191.0)));
          __asm { FCVT            S27, H27 }

          _H28 = *(v37 + 2 * llroundf(fminf(fmaxf(v64, 0.0), 8191.0)));
          __asm { FCVT            S28, H28 }

          _H29 = *(v37 + 2 * llroundf(fminf(fmaxf(v67, 0.0), 8191.0)));
          _H30 = *(v37 + 2 * llroundf(fminf(fmaxf(v69, 0.0), 8191.0)));
          __asm
          {
            FCVT            S29, H29
            FCVT            S30, H30
          }

          _H31 = *(v37 + 2 * llroundf(fminf(fmaxf(v71, 0.0), 8191.0)));
          __asm { FCVT            S31, H31 }

          _S8 = ((v29 * _S27) + (_S26 * v28)) + (_S28 * v30);
          v91 = ((v32 * _S27) + (_S26 * v31)) + (_S28 * v33);
          v92 = ((v35 * _S27) + (_S26 * v34)) + (_S28 * v36);
          v93 = ((v29 * _S30) + (_S29 * v28)) + (_S31 * v30);
          v94 = ((v32 * _S30) + (_S29 * v31)) + (_S31 * v33);
          v95 = ((v35 * _S30) + (_S29 * v34)) + (_S31 * v36);
          LOWORD(_S8) = *(v38 + 2 * llroundf(fminf(fmaxf(_S8, 0.0), 8191.0)));
          __asm { FCVT            S9, H8 }

          _H31 = *(v38 + 2 * llroundf(fminf(fmaxf(v91, 0.0), 8191.0)));
          _H30 = *(v38 + 2 * llroundf(fminf(fmaxf(v92, 0.0), 8191.0)));
          _H29 = *(v38 + 2 * llroundf(fminf(fmaxf(v93, 0.0), 8191.0)));
          _H28 = *(v38 + 2 * llroundf(fminf(fmaxf(v94, 0.0), 8191.0)));
          _S26 = fminf(fmaxf(v95, 0.0), 8191.0);
          LOWORD(_S26) = *(v38 + 2 * llroundf(_S26));
          v101 = v72 | (v72 << 8);
          if (v51)
          {
            v102 = v101;
          }

          else
          {
            v102 = -1;
          }

          v103 = v73 | (v73 << 8);
          if (!v51)
          {
            v103 = -1;
          }

          v104 = 65535.0;
          v105 = 65535.0;
          if (_S9 <= 65535.0)
          {
            __asm { FCMP            H8, #0 }

            v105 = _S9;
            if (_NF)
            {
              v105 = 0.0;
            }
          }

          __asm { FCVT            S9, H31 }

          *v50 = llroundf(v105);
          v108 = 65535.0;
          if (_S9 <= 65535.0)
          {
            __asm { FCMP            H31, #0 }

            v108 = _S9;
            if (_NF)
            {
              v108 = 0.0;
            }
          }

          __asm { FCVT            S9, H30 }

          v50[1] = llroundf(v108);
          v111 = 65535.0;
          if (_S9 <= 65535.0)
          {
            __asm { FCMP            H30, #0 }

            v111 = _S9;
            if (_NF)
            {
              v111 = 0.0;
            }
          }

          __asm { FCVT            S8, H29 }

          v50[2] = llroundf(v111);
          v50[3] = v102;
          v114 = 65535.0;
          if (_S8 <= 65535.0)
          {
            __asm { FCMP            H29, #0 }

            v114 = _S8;
            if (_NF)
            {
              v114 = 0.0;
            }
          }

          __asm { FCVT            S31, H28 }

          v50[4] = llroundf(v114);
          v117 = 65535.0;
          if (_S31 <= 65535.0)
          {
            __asm { FCMP            H28, #0 }

            v117 = _S31;
            if (_NF)
            {
              v117 = 0.0;
            }
          }

          __asm { FCVT            S28, H26 }

          v50[5] = llroundf(v117);
          if (_S28 <= 65535.0)
          {
            __asm { FCMP            H26, #0 }

            v104 = _S28;
            if (_NF)
            {
              v104 = 0.0;
            }
          }

          v50[6] = llroundf(v104);
          v50[7] = v103;
          v48 += 2;
          v49 += 2;
          v50 += 8;
        }

        while (v48 < v12);
      }

      v47 += v15;
      v46 += v16;
      v43 += v17;
      v41 += v18;
      ++v10;
    }

    while (v10 != v9);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_422vf_rgb_l64r(uint64_t a1, uint64_t *a2, uint64_t a3, unint64_t *a4, void *a5, uint64_t *a6, uint64_t a7, void *a8, void *a9)
{
  v61 = a8;
  v62 = a3;
  v68 = a5;
  v63 = a4;
  v69 = *MEMORY[0x1E69E9840];
  v10 = *(a1 + 162);
  v12 = *a2;
  v11 = a2[1];
  v13 = a2[2];
  v60 = a2[3];
  v14 = a2[4];
  v15 = a2[5];
  v16 = *a6;
  v64 = a6[1];
  v65 = v11;
  v18 = a6[2];
  v17 = a6[3];
  v58 = a1;
  v59 = v17;
  v20 = a6[4];
  v19 = a6[5];
  v66 = v16;
  v67 = v19;
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
    v23 = (&v56 - v25);
    bzero(&v56 - v25, v26);
  }

  v57 = a7;
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
    v32 = v63;
    if (v22 || (v33 = v29 + 1 + v30, v33 > *v63) || ((v33 + (v33 >> 63)) & 0xFFFFFFFFFFFFFFFELL) > v63[1] || (v34 = v63[2], v33 > v34) && v34 || (8 * (v31 + v28) + 8) > *v61)
    {
      --v28;
      --v29;
    }

    else
    {
      ++v28;
      ++v66;
      ++v12;
      ++v29;
    }
  }

  else
  {
    v32 = v63;
  }

  if (v29 + v30 > v12)
  {
    v29 = v12 - v30;
  }

  if (v28 + v31 > v66)
  {
    v28 = v66 - v31;
  }

  if (v15 + v60 <= v65)
  {
    v35 = v60;
  }

  else
  {
    v35 = v65 - v15;
  }

  if (v67 + v59 <= v64)
  {
    v36 = v59;
  }

  else
  {
    v36 = v64 - v67;
  }

  if (v29 >= v28)
  {
    v37 = v28;
  }

  else
  {
    v37 = v29;
  }

  if (v35 >= v36)
  {
    v38 = v36;
  }

  else
  {
    v38 = v35;
  }

  v39 = v15 + v38 - 1;
  v40 = v37 + v30;
  if (v37 + v30 + *v32 * v39 <= *v68)
  {
    v45 = v62;
    if (*(v62 + 8) && ((v40 + 1 + ((v40 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v32[1] * v39 > v68[1])
    {
      v60 = v30;
      v41 = v10;
      v42 = v12;
      v43 = v15;
      v44 = a9;
    }

    else if (*(v62 + 16) && v40 + v32[2] * v39 > v68[2])
    {
      v60 = v30;
      v41 = v10;
      v42 = v12;
      v43 = v15;
      v44 = a9;
    }

    else
    {
      if ((*v61 * (v67 + v38 - 1) + 8 * (v37 + v31)) <= *a9)
      {
        goto LABEL_53;
      }

      v60 = v30;
      v41 = v10;
      v42 = v12;
      v43 = v15;
      v44 = a9;
    }
  }

  else
  {
    v60 = v30;
    v41 = v10;
    v42 = v12;
    v43 = v15;
    v44 = a9;
  }

  fig_log_get_emitter();
  v46 = FigSignalErrorAtGM();
  v45 = v62;
  v32 = v63;
  v27 = v44;
  v15 = v43;
  v12 = v42;
  v10 = v41;
  v30 = v60;
  if (v46)
  {
    v24 = v46;
    goto LABEL_58;
  }

LABEL_53:
  *v23 = v10;
  *(v23 + 4) = v12;
  v47 = v64;
  *(v23 + 12) = v65;
  *(v23 + 20) = v37;
  *(v23 + 28) = v38;
  *(v23 + 36) = v30;
  *(v23 + 44) = v15;
  v23[11] = v47;
  v23[12] = v37;
  v23[13] = v38;
  v23[14] = v31;
  v23[7] = v45;
  v23[8] = v32;
  v48 = v66;
  v49 = v67;
  v23[9] = v68;
  v23[10] = v48;
  v50 = v57;
  v23[15] = v49;
  v23[16] = v50;
  v23[17] = v61;
  v23[18] = v27;
  v23[19] = v58;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v10, global_queue, v23, vt_Copy_422vf_rgb_l64r_GCD);
  if (!v10)
  {
    return 0;
  }

  v52 = (v23 + 20);
  v53 = v10;
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

LABEL_58:
  if (v10 == 255)
  {
    goto LABEL_59;
  }

  return v24;
}

unsigned __int8 *vt_Copy_422vf_rgb_l64r_GCD(unsigned __int8 *result, uint64_t a2)
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
    *&v19 = *(v10 + 136);
    v20 = *&v19 / *&v18;
    LOWORD(v18) = *(v10 + 140);
    v21 = v18;
    LOWORD(v19) = *(v10 + 142);
    v22 = v19;
    v23 = v20 * *v10;
    v24 = v20 * *(v10 + 8);
    v25 = v20 * *(v10 + 16);
    v26 = v20 * *(v10 + 20);
    v27 = v20 * *(v10 + 28);
    v28 = *(result + 28) * a2 / v5 + *(result + 44);
    v29 = *(result + 36);
    v30 = **(result + 16) + v17 * (v7 + *(result + 15)) + 8 * *(result + 14);
    v31 = v12[2];
    if (v31)
    {
      v32 = (v31 + v28 * v16 + v29);
    }

    else
    {
      v32 = 0;
    }

    v33 = *v12;
    v34 = *(*(result + 7) + 8);
    v35 = v34 == 0;
    v36 = v34 + v28 * v15 + v29;
    if (v35)
    {
      v36 = 0;
    }

    v37 = (v33 + v28 * v14 + v29);
    do
    {
      if (v11 >= 1)
      {
        v38 = 0;
        v39 = v37;
        v40 = v30;
        v41 = v32;
        do
        {
          if (v41)
          {
            v42 = *v41;
            v43 = v41[1];
            v41 += 2;
          }

          else
          {
            v42 = 0;
            v43 = 0;
          }

          LOBYTE(v2) = *(v36 + v38);
          *&v44 = LODWORD(v2);
          v45 = *&v44 - v22;
          LOBYTE(v44) = *(v36 + v38 + 1);
          v46 = v44 - v22;
          v47 = v24 * v46;
          v48 = (v26 * v46) + (v45 * v25);
          LOBYTE(v3) = *v39;
          v49 = v23 * (LODWORD(v3) - v21);
          LOBYTE(v4) = v39[1];
          v50 = v47 + v49;
          v51 = v49 + v48;
          v52 = v42 | (v42 << 8);
          if (v41)
          {
            v53 = v52;
          }

          else
          {
            v53 = -1;
          }

          v54 = v43 | (v43 << 8);
          if (!v41)
          {
            v54 = -1;
          }

          if (v50 < 0.0)
          {
            v55 = 0.0;
          }

          else
          {
            v55 = v47 + v49;
          }

          if (v50 <= 65535.0)
          {
            v56 = v55;
          }

          else
          {
            v56 = 65535.0;
          }

          *v40 = llroundf(v56);
          v57 = 65535.0;
          if (v51 <= 65535.0)
          {
            v57 = v49 + v48;
            if (v51 < 0.0)
            {
              v57 = 0.0;
            }
          }

          v58 = v27 * v45;
          v4 = v23 * (LODWORD(v4) - v21);
          v59 = v58 + v49;
          v60 = v47 + v4;
          v40[1] = llroundf(v57);
          if (v59 < 0.0)
          {
            v61 = 0.0;
          }

          else
          {
            v61 = v59;
          }

          if (v59 <= 65535.0)
          {
            v62 = v61;
          }

          else
          {
            v62 = 65535.0;
          }

          v63 = v48 + v4;
          v40[2] = llroundf(v62);
          v40[3] = v53;
          if (v60 < 0.0)
          {
            v3 = 0.0;
          }

          else
          {
            v3 = v60;
          }

          if (v60 <= 65535.0)
          {
            v64 = v3;
          }

          else
          {
            v64 = 65535.0;
          }

          v40[4] = llroundf(v64);
          v65 = 65535.0;
          if (v63 <= 65535.0)
          {
            v65 = v63;
            if (v63 < 0.0)
            {
              v65 = 0.0;
            }
          }

          v66 = v58 + v4;
          v40[5] = llroundf(v65);
          v2 = 65535.0;
          if (v66 <= 65535.0)
          {
            v2 = v66;
            if (v66 < 0.0)
            {
              v2 = 0.0;
            }
          }

          v40[6] = llroundf(v2);
          v40[7] = v54;
          v38 += 2;
          v39 += 2;
          v40 += 8;
        }

        while (v38 < v11);
      }

      v37 += v14;
      v36 += v15;
      v32 += v16;
      v30 += v17;
      ++v9;
    }

    while (v9 != v8);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_422vf_TRC_Tone_Mat_TRC_b64a(uint64_t a1, uint64_t *a2, uint64_t a3, unint64_t *a4, void *a5, uint64_t *a6, uint64_t a7, void *a8, void *a9)
{
  v61 = a8;
  v62 = a3;
  v68 = a5;
  v63 = a4;
  v69 = *MEMORY[0x1E69E9840];
  v10 = *(a1 + 162);
  v12 = *a2;
  v11 = a2[1];
  v13 = a2[2];
  v60 = a2[3];
  v14 = a2[4];
  v15 = a2[5];
  v16 = *a6;
  v64 = a6[1];
  v65 = v11;
  v18 = a6[2];
  v17 = a6[3];
  v58 = a1;
  v59 = v17;
  v20 = a6[4];
  v19 = a6[5];
  v66 = v16;
  v67 = v19;
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
    v23 = (&v56 - v25);
    bzero(&v56 - v25, v26);
  }

  v57 = a7;
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
    v32 = v63;
    if (v22 || (v33 = v29 + 1 + v30, v33 > *v63) || ((v33 + (v33 >> 63)) & 0xFFFFFFFFFFFFFFFELL) > v63[1] || (v34 = v63[2], v33 > v34) && v34 || (8 * (v31 + v28) + 8) > *v61)
    {
      --v28;
      --v29;
    }

    else
    {
      ++v28;
      ++v66;
      ++v12;
      ++v29;
    }
  }

  else
  {
    v32 = v63;
  }

  if (v29 + v30 > v12)
  {
    v29 = v12 - v30;
  }

  if (v28 + v31 > v66)
  {
    v28 = v66 - v31;
  }

  if (v15 + v60 <= v65)
  {
    v35 = v60;
  }

  else
  {
    v35 = v65 - v15;
  }

  if (v67 + v59 <= v64)
  {
    v36 = v59;
  }

  else
  {
    v36 = v64 - v67;
  }

  if (v29 >= v28)
  {
    v37 = v28;
  }

  else
  {
    v37 = v29;
  }

  if (v35 >= v36)
  {
    v38 = v36;
  }

  else
  {
    v38 = v35;
  }

  v39 = v15 + v38 - 1;
  v40 = v37 + v30;
  if (v37 + v30 + *v32 * v39 <= *v68)
  {
    v45 = v62;
    if (*(v62 + 8) && ((v40 + 1 + ((v40 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v32[1] * v39 > v68[1])
    {
      v60 = v30;
      v41 = v10;
      v42 = v12;
      v43 = v15;
      v44 = a9;
    }

    else if (*(v62 + 16) && v40 + v32[2] * v39 > v68[2])
    {
      v60 = v30;
      v41 = v10;
      v42 = v12;
      v43 = v15;
      v44 = a9;
    }

    else
    {
      if ((*v61 * (v67 + v38 - 1) + 8 * (v37 + v31)) <= *a9)
      {
        goto LABEL_53;
      }

      v60 = v30;
      v41 = v10;
      v42 = v12;
      v43 = v15;
      v44 = a9;
    }
  }

  else
  {
    v60 = v30;
    v41 = v10;
    v42 = v12;
    v43 = v15;
    v44 = a9;
  }

  fig_log_get_emitter();
  v46 = FigSignalErrorAtGM();
  v45 = v62;
  v32 = v63;
  v27 = v44;
  v15 = v43;
  v12 = v42;
  v10 = v41;
  v30 = v60;
  if (v46)
  {
    v24 = v46;
    goto LABEL_58;
  }

LABEL_53:
  *v23 = v10;
  *(v23 + 4) = v12;
  v47 = v64;
  *(v23 + 12) = v65;
  *(v23 + 20) = v37;
  *(v23 + 28) = v38;
  *(v23 + 36) = v30;
  *(v23 + 44) = v15;
  v23[11] = v47;
  v23[12] = v37;
  v23[13] = v38;
  v23[14] = v31;
  v23[7] = v45;
  v23[8] = v32;
  v48 = v66;
  v49 = v67;
  v23[9] = v68;
  v23[10] = v48;
  v50 = v57;
  v23[15] = v49;
  v23[16] = v50;
  v23[17] = v61;
  v23[18] = v27;
  v23[19] = v58;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v10, global_queue, v23, vt_Copy_422vf_TRC_Tone_Mat_TRC_b64a_GCD);
  if (!v10)
  {
    return 0;
  }

  v52 = (v23 + 20);
  v53 = v10;
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

LABEL_58:
  if (v10 == 255)
  {
    goto LABEL_59;
  }

  return v24;
}

unsigned __int8 *vt_Copy_422vf_TRC_Tone_Mat_TRC_b64a_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, float a5)
{
  v6 = *result;
  v7 = *(result + 13);
  v8 = v7 * a2 / v6;
  v9 = (v7 + v7 * a2) / v6 - v8;
  if (v9 >= 1)
  {
    v10 = 0;
    v11 = *(result + 19);
    v12 = *(result + 24) & 0xFFFFFFFE;
    v13 = *(result + 7);
    v14 = *(result + 8);
    v15 = *v14;
    v16 = v14[1];
    v17 = v14[2];
    v18 = **(result + 17);
    *&v19 = *(v11 + 128);
    v20 = 8191.0 / *&v19;
    LOWORD(v19) = *(v11 + 140);
    v21 = v19;
    LOWORD(a5) = *(v11 + 142);
    v22 = LODWORD(a5);
    v23 = v20 * *v11;
    v141 = v20 * *(v11 + 8);
    v24 = v20 * *(v11 + 16);
    v25 = v20 * *(v11 + 20);
    v26 = v20 * *(v11 + 28);
    v27 = *(v11 + 72);
    v28 = *(v11 + 76);
    v29 = *(v11 + 80);
    v30 = *(v11 + 84);
    v31 = *(v11 + 88);
    v32 = *(v11 + 92);
    v33 = *(v11 + 96);
    v34 = *(v11 + 100);
    v35 = v11 + 164;
    v36 = v11 + 16548;
    v37 = v11 + 32932;
    v38 = *(v11 + 104);
    v39 = *(v11 + 108);
    v40 = *(v11 + 112);
    v41 = *(v11 + 116);
    v42 = *(v11 + 120);
    v43 = *(result + 28) * a2 / v6 + *(result + 44);
    v44 = *(result + 36);
    v45 = **(result + 16) + v18 * (v8 + *(result + 15)) + 8 * *(result + 14);
    v46 = v13[2];
    if (v46)
    {
      v47 = (v46 + v43 * v17 + v44);
    }

    else
    {
      v47 = 0;
    }

    v49 = *v13;
    v48 = *(*(result + 7) + 8);
    _ZF = v48 == 0;
    v51 = v48 + v43 * v16 + v44;
    if (_ZF)
    {
      v51 = 0;
    }

    v52 = (v49 + v43 * v15 + v44);
    do
    {
      if (v12 >= 1)
      {
        v53 = 0;
        v54 = v52;
        v55 = v45;
        v56 = v47;
        do
        {
          LOBYTE(v5) = *(v51 + v53 + 1);
          *&v57 = LODWORD(v5);
          v58 = *&v57 - v22;
          v59 = v141 * (*&v57 - v22);
          LOBYTE(v57) = *v54;
          v60 = v23 * (v57 - v21);
          v61 = v59 + v60;
          v62 = 8191.0;
          if ((v59 + v60) <= 8191.0)
          {
            v62 = v59 + v60;
            if (v61 < 0.0)
            {
              v62 = 0.0;
            }
          }

          LOBYTE(v61) = *(v51 + v53);
          v63 = LODWORD(v61) - v22;
          v64 = (v25 * v58) + (v63 * v24);
          v65 = 8191.0;
          if ((v60 + v64) <= 8191.0)
          {
            v65 = v60 + v64;
            if ((v60 + v64) < 0.0)
            {
              v65 = 0.0;
            }
          }

          v66 = v26 * v63;
          v67 = (v26 * v63) + v60;
          v68 = 8191.0;
          if (v67 <= 8191.0)
          {
            v68 = v67;
            if (v67 < 0.0)
            {
              v68 = 0.0;
            }
          }

          LOBYTE(v67) = v54[1];
          v69 = v23 * (LODWORD(v67) - v21);
          v70 = v59 + v69;
          v71 = (v59 + v69) <= 8191.0;
          v72 = 8191.0;
          if (v71)
          {
            v72 = v70;
            if (v70 < 0.0)
            {
              v72 = 0.0;
            }
          }

          v73 = v64 + v69;
          v74 = 8191.0;
          if (v73 <= 8191.0)
          {
            v74 = v73;
            if (v73 < 0.0)
            {
              v74 = 0.0;
            }
          }

          v75 = v66 + v69;
          v71 = (v66 + v69) <= 8191.0;
          v76 = 8191.0;
          if (v71)
          {
            v76 = v75;
            if (v75 < 0.0)
            {
              v76 = 0.0;
            }
          }

          if (v56)
          {
            v77 = *v56;
            v78 = v56[1];
            v56 += 2;
          }

          else
          {
            v77 = 0;
            v78 = 0;
          }

          _S10 = fmaxf(v62, 0.0);
          v80 = 8191.0;
          LOWORD(_S10) = *(v35 + 2 * llroundf(fminf(_S10, 8191.0)));
          __asm { FCVT            S10, H10 }

          _H31 = *(v35 + 2 * llroundf(fminf(fmaxf(v65, 0.0), 8191.0)));
          __asm { FCVT            S31, H31 }

          _H8 = *(v35 + 2 * llroundf(fminf(fmaxf(v68, 0.0), 8191.0)));
          __asm { FCVT            S8, H8 }

          _H9 = *(v35 + 2 * llroundf(fminf(fmaxf(v72, 0.0), 8191.0)));
          _H11 = *(v35 + 2 * llroundf(fminf(fmaxf(v74, 0.0), 8191.0)));
          _H12 = *(v35 + 2 * llroundf(fminf(fmaxf(v76, 0.0), 8191.0)));
          v92 = (((v40 * _S31) + (v39 * _S10)) + (v41 * _S8)) + (v42 * fmaxf(_S10, fmaxf(_S31, _S8)));
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
            FCVT            S9, H9
            FCVT            S11, H11
            FCVT            S12, H12
          }

          _H13 = *(v36 + 2 * llroundf(v93));
          v98 = fmaxf(_S9, fmaxf(_S11, _S12));
          v99 = (((v40 * _S11) + (v39 * _S9)) + (v41 * _S12)) + (v42 * v98);
          if (v99 <= 8191.0)
          {
            v80 = (((v40 * _S11) + (v39 * _S9)) + (v41 * _S12)) + (v42 * v98);
            if (v99 < 0.0)
            {
              v80 = 0.0;
            }
          }

          __asm { FCVT            S13, H13 }

          v101 = _S10 * _S13;
          v102 = _S31 * _S13;
          v103 = _S8 * _S13;
          _H30 = *(v36 + 2 * llroundf(v80));
          __asm { FCVT            S30, H30 }

          v106 = _S9 * _S30;
          v107 = _S11 * _S30;
          v108 = _S12 * _S30;
          v109 = ((v28 * v102) + (v101 * v27)) + (v103 * v29);
          v110 = ((v31 * v102) + (v101 * v30)) + (v103 * v32);
          v111 = ((v34 * v102) + (v101 * v33)) + (v103 * v38);
          v112 = ((v28 * v107) + (v106 * v27)) + (v108 * v29);
          v113 = ((v31 * v107) + (v106 * v30)) + (v108 * v32);
          v114 = ((v34 * v107) + (v106 * v33)) + (v108 * v38);
          LOWORD(_S13) = *(v37 + 2 * llroundf(fminf(fmaxf(v109, 0.0), 8191.0)));
          __asm { FCVT            S14, H13 }

          _H11 = *(v37 + 2 * llroundf(fminf(fmaxf(v110, 0.0), 8191.0)));
          _H10 = *(v37 + 2 * llroundf(fminf(fmaxf(v111, 0.0), 8191.0)));
          _H9 = *(v37 + 2 * llroundf(fminf(fmaxf(v112, 0.0), 8191.0)));
          _H8 = *(v37 + 2 * llroundf(fminf(fmaxf(v113, 0.0), 8191.0)));
          _H31 = *(v37 + 2 * llroundf(fminf(fmaxf(v114, 0.0), 8191.0)));
          v121 = v77 | (v77 << 8);
          if (v56)
          {
            v122 = v121;
          }

          else
          {
            v122 = -1;
          }

          v123 = v78 | (v78 << 8);
          if (!v56)
          {
            v123 = -1;
          }

          v5 = 65535.0;
          v124 = 65535.0;
          if (_S14 <= 65535.0)
          {
            __asm { FCMP            H13, #0 }

            v124 = _S14;
            if (_NF)
            {
              v124 = 0.0;
            }
          }

          __asm { FCVT            S14, H11 }

          v127 = 65535.0;
          if (_S14 <= 65535.0)
          {
            __asm { FCMP            H11, #0 }

            v127 = _S14;
            if (_NF)
            {
              v127 = 0.0;
            }
          }

          __asm { FCVT            S14, H10 }

          v130 = 65535.0;
          if (_S14 <= 65535.0)
          {
            __asm { FCMP            H10, #0 }

            v130 = _S14;
            if (_NF)
            {
              v130 = 0.0;
            }
          }

          v132 = llroundf(v130);
          __asm { FCVT            S11, H9 }

          *v55 = bswap32(v122) >> 16;
          v55[1] = __rev16(llroundf(v124));
          v55[2] = __rev16(llroundf(v127));
          v55[3] = __rev16(v132);
          v134 = 65535.0;
          if (_S11 <= 65535.0)
          {
            __asm { FCMP            H9, #0 }

            v134 = _S11;
            if (_NF)
            {
              v134 = 0.0;
            }
          }

          __asm { FCVT            S11, H8 }

          v137 = 65535.0;
          if (_S11 <= 65535.0)
          {
            __asm { FCMP            H8, #0 }

            v137 = _S11;
            if (_NF)
            {
              v137 = 0.0;
            }
          }

          __asm { FCVT            S8, H31 }

          if (_S8 <= 65535.0)
          {
            __asm { FCMP            H31, #0 }

            v5 = _S8;
            if (_NF)
            {
              v5 = 0.0;
            }
          }

          v55[4] = bswap32(v123) >> 16;
          v55[5] = __rev16(llroundf(v134));
          v55[6] = __rev16(llroundf(v137));
          v55[7] = __rev16(llroundf(v5));
          v53 += 2;
          v54 += 2;
          v55 += 8;
        }

        while (v53 < v12);
      }

      v52 += v15;
      v51 += v16;
      v47 += v17;
      v45 += v18;
      ++v10;
    }

    while (v10 != v9);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_422vf_TRC_Mat_TRC_b64a(uint64_t a1, uint64_t *a2, uint64_t a3, unint64_t *a4, void *a5, uint64_t *a6, uint64_t a7, void *a8, void *a9)
{
  v61 = a8;
  v62 = a3;
  v68 = a5;
  v63 = a4;
  v69 = *MEMORY[0x1E69E9840];
  v10 = *(a1 + 162);
  v12 = *a2;
  v11 = a2[1];
  v13 = a2[2];
  v60 = a2[3];
  v14 = a2[4];
  v15 = a2[5];
  v16 = *a6;
  v64 = a6[1];
  v65 = v11;
  v18 = a6[2];
  v17 = a6[3];
  v58 = a1;
  v59 = v17;
  v20 = a6[4];
  v19 = a6[5];
  v66 = v16;
  v67 = v19;
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
    v23 = (&v56 - v25);
    bzero(&v56 - v25, v26);
  }

  v57 = a7;
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
    v32 = v63;
    if (v22 || (v33 = v29 + 1 + v30, v33 > *v63) || ((v33 + (v33 >> 63)) & 0xFFFFFFFFFFFFFFFELL) > v63[1] || (v34 = v63[2], v33 > v34) && v34 || (8 * (v31 + v28) + 8) > *v61)
    {
      --v28;
      --v29;
    }

    else
    {
      ++v28;
      ++v66;
      ++v12;
      ++v29;
    }
  }

  else
  {
    v32 = v63;
  }

  if (v29 + v30 > v12)
  {
    v29 = v12 - v30;
  }

  if (v28 + v31 > v66)
  {
    v28 = v66 - v31;
  }

  if (v15 + v60 <= v65)
  {
    v35 = v60;
  }

  else
  {
    v35 = v65 - v15;
  }

  if (v67 + v59 <= v64)
  {
    v36 = v59;
  }

  else
  {
    v36 = v64 - v67;
  }

  if (v29 >= v28)
  {
    v37 = v28;
  }

  else
  {
    v37 = v29;
  }

  if (v35 >= v36)
  {
    v38 = v36;
  }

  else
  {
    v38 = v35;
  }

  v39 = v15 + v38 - 1;
  v40 = v37 + v30;
  if (v37 + v30 + *v32 * v39 <= *v68)
  {
    v45 = v62;
    if (*(v62 + 8) && ((v40 + 1 + ((v40 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v32[1] * v39 > v68[1])
    {
      v60 = v30;
      v41 = v10;
      v42 = v12;
      v43 = v15;
      v44 = a9;
    }

    else if (*(v62 + 16) && v40 + v32[2] * v39 > v68[2])
    {
      v60 = v30;
      v41 = v10;
      v42 = v12;
      v43 = v15;
      v44 = a9;
    }

    else
    {
      if ((*v61 * (v67 + v38 - 1) + 8 * (v37 + v31)) <= *a9)
      {
        goto LABEL_53;
      }

      v60 = v30;
      v41 = v10;
      v42 = v12;
      v43 = v15;
      v44 = a9;
    }
  }

  else
  {
    v60 = v30;
    v41 = v10;
    v42 = v12;
    v43 = v15;
    v44 = a9;
  }

  fig_log_get_emitter();
  v46 = FigSignalErrorAtGM();
  v45 = v62;
  v32 = v63;
  v27 = v44;
  v15 = v43;
  v12 = v42;
  v10 = v41;
  v30 = v60;
  if (v46)
  {
    v24 = v46;
    goto LABEL_58;
  }

LABEL_53:
  *v23 = v10;
  *(v23 + 4) = v12;
  v47 = v64;
  *(v23 + 12) = v65;
  *(v23 + 20) = v37;
  *(v23 + 28) = v38;
  *(v23 + 36) = v30;
  *(v23 + 44) = v15;
  v23[11] = v47;
  v23[12] = v37;
  v23[13] = v38;
  v23[14] = v31;
  v23[7] = v45;
  v23[8] = v32;
  v48 = v66;
  v49 = v67;
  v23[9] = v68;
  v23[10] = v48;
  v50 = v57;
  v23[15] = v49;
  v23[16] = v50;
  v23[17] = v61;
  v23[18] = v27;
  v23[19] = v58;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v10, global_queue, v23, vt_Copy_422vf_TRC_Mat_TRC_b64a_GCD);
  if (!v10)
  {
    return 0;
  }

  v52 = (v23 + 20);
  v53 = v10;
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

LABEL_58:
  if (v10 == 255)
  {
    goto LABEL_59;
  }

  return v24;
}

unsigned __int8 *vt_Copy_422vf_TRC_Mat_TRC_b64a_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, float a5)
{
  v6 = *result;
  v7 = *(result + 13);
  v8 = v7 * a2 / v6;
  v9 = (v7 + v7 * a2) / v6 - v8;
  if (v9 >= 1)
  {
    v10 = 0;
    v11 = *(result + 19);
    v12 = *(result + 24) & 0xFFFFFFFE;
    v13 = *(result + 7);
    v14 = *(result + 8);
    v15 = *v14;
    v16 = v14[1];
    v17 = v14[2];
    v18 = **(result + 17);
    *&v19 = *(v11 + 128);
    v20 = 8191.0 / *&v19;
    LOWORD(v19) = *(v11 + 140);
    v21 = v19;
    LOWORD(a5) = *(v11 + 142);
    v22 = LODWORD(a5);
    v23 = v20 * *v11;
    v24 = v20 * *(v11 + 8);
    v25 = v20 * *(v11 + 16);
    v26 = v20 * *(v11 + 20);
    v27 = v20 * *(v11 + 28);
    v28 = *(v11 + 72);
    v29 = *(v11 + 76);
    v30 = *(v11 + 80);
    v31 = *(v11 + 84);
    v32 = *(v11 + 88);
    v33 = *(v11 + 92);
    v34 = *(v11 + 96);
    v35 = *(v11 + 100);
    v36 = *(v11 + 104);
    v37 = v11 + 164;
    v38 = v11 + 16548;
    v39 = *(result + 28) * a2 / v6 + *(result + 44);
    v40 = *(result + 36);
    v41 = **(result + 16) + v18 * (v8 + *(result + 15)) + 8 * *(result + 14);
    v42 = v13[2];
    if (v42)
    {
      v43 = (v42 + v39 * v17 + v40);
    }

    else
    {
      v43 = 0;
    }

    v45 = *v13;
    v44 = v13[1];
    v46 = v44 + v39 * v16 + v40;
    if (!v44)
    {
      v46 = 0;
    }

    v47 = (v45 + v39 * v15 + v40);
    do
    {
      if (v12 >= 1)
      {
        v48 = 0;
        v49 = v47;
        v50 = v41;
        v51 = v43;
        do
        {
          LOBYTE(v5) = *(v46 + v48 + 1);
          *&v52 = LODWORD(v5);
          v53 = *&v52 - v22;
          v54 = v24 * (*&v52 - v22);
          LOBYTE(v52) = *v49;
          v55 = v23 * (v52 - v21);
          v56 = v54 + v55;
          v57 = 8191.0;
          if ((v54 + v55) <= 8191.0)
          {
            v57 = v54 + v55;
            if (v56 < 0.0)
            {
              v57 = 0.0;
            }
          }

          LOBYTE(v56) = *(v46 + v48);
          v58 = LODWORD(v56) - v22;
          v59 = (v26 * v53) + (v58 * v25);
          v60 = 8191.0;
          if ((v55 + v59) <= 8191.0)
          {
            v60 = v55 + v59;
            if ((v55 + v59) < 0.0)
            {
              v60 = 0.0;
            }
          }

          v61 = v27 * v58;
          v62 = v61 + v55;
          v63 = (v61 + v55) <= 8191.0;
          v64 = 8191.0;
          if (v63)
          {
            v64 = v62;
            if (v62 < 0.0)
            {
              v64 = 0.0;
            }
          }

          LOBYTE(v62) = v49[1];
          v65 = v23 * (LODWORD(v62) - v21);
          v66 = v54 + v65;
          v63 = (v54 + v65) <= 8191.0;
          v67 = 8191.0;
          if (v63)
          {
            v67 = v66;
            if (v66 < 0.0)
            {
              v67 = 0.0;
            }
          }

          v68 = v59 + v65;
          v63 = (v59 + v65) <= 8191.0;
          v69 = 8191.0;
          if (v63)
          {
            v69 = v68;
            if (v68 < 0.0)
            {
              v69 = 0.0;
            }
          }

          v70 = v61 + v65;
          v71 = 8191.0;
          if (v70 <= 8191.0)
          {
            if (v70 < 0.0)
            {
              v71 = 0.0;
            }

            else
            {
              v71 = v70;
            }
          }

          if (v51)
          {
            v72 = *v51;
            v73 = v51[1];
            v51 += 2;
          }

          else
          {
            v72 = 0;
            v73 = 0;
          }

          _H26 = *(v37 + 2 * llroundf(fminf(fmaxf(v57, 0.0), 8191.0)));
          __asm { FCVT            S26, H26 }

          _H27 = *(v37 + 2 * llroundf(fminf(fmaxf(v60, 0.0), 8191.0)));
          __asm { FCVT            S27, H27 }

          _H28 = *(v37 + 2 * llroundf(fminf(fmaxf(v64, 0.0), 8191.0)));
          __asm { FCVT            S28, H28 }

          _H29 = *(v37 + 2 * llroundf(fminf(fmaxf(v67, 0.0), 8191.0)));
          _H30 = *(v37 + 2 * llroundf(fminf(fmaxf(v69, 0.0), 8191.0)));
          __asm
          {
            FCVT            S29, H29
            FCVT            S30, H30
          }

          _H31 = *(v37 + 2 * llroundf(fminf(fmaxf(v71, 0.0), 8191.0)));
          __asm { FCVT            S31, H31 }

          v90 = ((v29 * _S27) + (_S26 * v28)) + (_S28 * v30);
          v91 = ((v32 * _S27) + (_S26 * v31)) + (_S28 * v33);
          v92 = ((v35 * _S27) + (_S26 * v34)) + (_S28 * v36);
          v93 = ((v29 * _S30) + (_S29 * v28)) + (_S31 * v30);
          v94 = ((v32 * _S30) + (_S29 * v31)) + (_S31 * v33);
          v95 = llroundf(fminf(fmaxf(v90, 0.0), 8191.0));
          v96 = ((v35 * _S30) + (_S29 * v34)) + (_S31 * v36);
          _H9 = *(v38 + 2 * v95);
          __asm { FCVT            S10, H9 }

          _H31 = *(v38 + 2 * llroundf(fminf(fmaxf(v91, 0.0), 8191.0)));
          _H30 = *(v38 + 2 * llroundf(fminf(fmaxf(v92, 0.0), 8191.0)));
          _H29 = *(v38 + 2 * llroundf(fminf(fmaxf(v93, 0.0), 8191.0)));
          _H28 = *(v38 + 2 * llroundf(fminf(fmaxf(v94, 0.0), 8191.0)));
          _H27 = *(v38 + 2 * llroundf(fminf(fmaxf(v96, 0.0), 8191.0)));
          v104 = v72 | (v72 << 8);
          if (v51)
          {
            v105 = v104;
          }

          else
          {
            v105 = -1;
          }

          v106 = v73 | (v73 << 8);
          if (!v51)
          {
            v106 = -1;
          }

          v5 = 65535.0;
          v107 = 65535.0;
          if (_S10 <= 65535.0)
          {
            __asm { FCMP            H9, #0 }

            v107 = _S10;
            if (_NF)
            {
              v107 = 0.0;
            }
          }

          __asm { FCVT            S10, H31 }

          v110 = 65535.0;
          if (_S10 <= 65535.0)
          {
            __asm { FCMP            H31, #0 }

            v110 = _S10;
            if (_NF)
            {
              v110 = 0.0;
            }
          }

          __asm { FCVT            S10, H30 }

          v113 = 65535.0;
          if (_S10 <= 65535.0)
          {
            __asm { FCMP            H30, #0 }

            v113 = _S10;
            if (_NF)
            {
              v113 = 0.0;
            }
          }

          v115 = llroundf(v113);
          __asm { FCVT            S31, H29 }

          *v50 = bswap32(v105) >> 16;
          v50[1] = __rev16(llroundf(v107));
          v50[2] = __rev16(llroundf(v110));
          v50[3] = __rev16(v115);
          v117 = 65535.0;
          if (_S31 <= 65535.0)
          {
            __asm { FCMP            H29, #0 }

            v117 = _S31;
            if (_NF)
            {
              v117 = 0.0;
            }
          }

          __asm { FCVT            S31, H28 }

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

          if (_S28 <= 65535.0)
          {
            __asm { FCMP            H27, #0 }

            v5 = _S28;
            if (_NF)
            {
              v5 = 0.0;
            }
          }

          v50[4] = bswap32(v106) >> 16;
          v50[5] = __rev16(llroundf(v117));
          v50[6] = __rev16(llroundf(v120));
          v50[7] = __rev16(llroundf(v5));
          v48 += 2;
          v49 += 2;
          v50 += 8;
        }

        while (v48 < v12);
      }

      v47 += v15;
      v46 += v16;
      v43 += v17;
      v41 += v18;
      ++v10;
    }

    while (v10 != v9);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_422vf_rgb_b64a(uint64_t a1, uint64_t *a2, uint64_t a3, unint64_t *a4, void *a5, uint64_t *a6, uint64_t a7, void *a8, void *a9)
{
  v61 = a8;
  v62 = a3;
  v68 = a5;
  v63 = a4;
  v69 = *MEMORY[0x1E69E9840];
  v10 = *(a1 + 162);
  v12 = *a2;
  v11 = a2[1];
  v13 = a2[2];
  v60 = a2[3];
  v14 = a2[4];
  v15 = a2[5];
  v16 = *a6;
  v64 = a6[1];
  v65 = v11;
  v18 = a6[2];
  v17 = a6[3];
  v58 = a1;
  v59 = v17;
  v20 = a6[4];
  v19 = a6[5];
  v66 = v16;
  v67 = v19;
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
    v23 = (&v56 - v25);
    bzero(&v56 - v25, v26);
  }

  v57 = a7;
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
    v32 = v63;
    if (v22 || (v33 = v29 + 1 + v30, v33 > *v63) || ((v33 + (v33 >> 63)) & 0xFFFFFFFFFFFFFFFELL) > v63[1] || (v34 = v63[2], v33 > v34) && v34 || (8 * (v31 + v28) + 8) > *v61)
    {
      --v28;
      --v29;
    }

    else
    {
      ++v28;
      ++v66;
      ++v12;
      ++v29;
    }
  }

  else
  {
    v32 = v63;
  }

  if (v29 + v30 > v12)
  {
    v29 = v12 - v30;
  }

  if (v28 + v31 > v66)
  {
    v28 = v66 - v31;
  }

  if (v15 + v60 <= v65)
  {
    v35 = v60;
  }

  else
  {
    v35 = v65 - v15;
  }

  if (v67 + v59 <= v64)
  {
    v36 = v59;
  }

  else
  {
    v36 = v64 - v67;
  }

  if (v29 >= v28)
  {
    v37 = v28;
  }

  else
  {
    v37 = v29;
  }

  if (v35 >= v36)
  {
    v38 = v36;
  }

  else
  {
    v38 = v35;
  }

  v39 = v15 + v38 - 1;
  v40 = v37 + v30;
  if (v37 + v30 + *v32 * v39 <= *v68)
  {
    v45 = v62;
    if (*(v62 + 8) && ((v40 + 1 + ((v40 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v32[1] * v39 > v68[1])
    {
      v60 = v30;
      v41 = v10;
      v42 = v12;
      v43 = v15;
      v44 = a9;
    }

    else if (*(v62 + 16) && v40 + v32[2] * v39 > v68[2])
    {
      v60 = v30;
      v41 = v10;
      v42 = v12;
      v43 = v15;
      v44 = a9;
    }

    else
    {
      if ((*v61 * (v67 + v38 - 1) + 8 * (v37 + v31)) <= *a9)
      {
        goto LABEL_53;
      }

      v60 = v30;
      v41 = v10;
      v42 = v12;
      v43 = v15;
      v44 = a9;
    }
  }

  else
  {
    v60 = v30;
    v41 = v10;
    v42 = v12;
    v43 = v15;
    v44 = a9;
  }

  fig_log_get_emitter();
  v46 = FigSignalErrorAtGM();
  v45 = v62;
  v32 = v63;
  v27 = v44;
  v15 = v43;
  v12 = v42;
  v10 = v41;
  v30 = v60;
  if (v46)
  {
    v24 = v46;
    goto LABEL_58;
  }

LABEL_53:
  *v23 = v10;
  *(v23 + 4) = v12;
  v47 = v64;
  *(v23 + 12) = v65;
  *(v23 + 20) = v37;
  *(v23 + 28) = v38;
  *(v23 + 36) = v30;
  *(v23 + 44) = v15;
  v23[11] = v47;
  v23[12] = v37;
  v23[13] = v38;
  v23[14] = v31;
  v23[7] = v45;
  v23[8] = v32;
  v48 = v66;
  v49 = v67;
  v23[9] = v68;
  v23[10] = v48;
  v50 = v57;
  v23[15] = v49;
  v23[16] = v50;
  v23[17] = v61;
  v23[18] = v27;
  v23[19] = v58;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v10, global_queue, v23, vt_Copy_422vf_rgb_b64a_GCD);
  if (!v10)
  {
    return 0;
  }

  v52 = (v23 + 20);
  v53 = v10;
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

LABEL_58:
  if (v10 == 255)
  {
    goto LABEL_59;
  }

  return v24;
}

unsigned __int8 *vt_Copy_422vf_rgb_b64a_GCD(unsigned __int8 *result, uint64_t a2)
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
    *&v19 = *(v10 + 136);
    v20 = *&v19 / *&v18;
    LOWORD(v18) = *(v10 + 140);
    v21 = v18;
    LOWORD(v19) = *(v10 + 142);
    v22 = v19;
    v23 = v20 * *v10;
    v24 = v20 * *(v10 + 8);
    v25 = v20 * *(v10 + 16);
    v26 = v20 * *(v10 + 20);
    v27 = v20 * *(v10 + 28);
    v28 = *(result + 28) * a2 / v5 + *(result + 44);
    v29 = *(result + 36);
    v30 = **(result + 16) + v17 * (v7 + *(result + 15)) + 8 * *(result + 14);
    v31 = v12[2];
    if (v31)
    {
      v32 = (v31 + v28 * v16 + v29);
    }

    else
    {
      v32 = 0;
    }

    v33 = *v12;
    v34 = *(*(result + 7) + 8);
    v35 = v34 == 0;
    v36 = v34 + v28 * v15 + v29;
    if (v35)
    {
      v36 = 0;
    }

    v37 = (v33 + v28 * v14 + v29);
    do
    {
      if (v11 >= 1)
      {
        v38 = 0;
        v39 = v37;
        v40 = v30;
        v41 = v32;
        do
        {
          if (v41)
          {
            v42 = *v41;
            v43 = v41[1];
            v41 += 2;
          }

          else
          {
            v42 = 0;
            v43 = 0;
          }

          LOBYTE(v2) = *(v36 + v38);
          v44 = LODWORD(v2) - v22;
          LOBYTE(v3) = *(v36 + v38 + 1);
          v45 = LODWORD(v3) - v22;
          v46 = v24 * v45;
          v47 = (v26 * v45) + (v44 * v25);
          LOBYTE(v4) = *v39;
          v48 = v23 * (LODWORD(v4) - v21);
          v49 = v46 + v48;
          v50 = v48 + v47;
          v51 = v42 | (v42 << 8);
          if (v41)
          {
            v52 = v51;
          }

          else
          {
            v52 = -1;
          }

          v53 = v43 | (v43 << 8);
          if (!v41)
          {
            v53 = -1;
          }

          if (v49 < 0.0)
          {
            v54 = 0.0;
          }

          else
          {
            v54 = v46 + v48;
          }

          if (v49 <= 65535.0)
          {
            v55 = v54;
          }

          else
          {
            v55 = 65535.0;
          }

          v56 = 65535.0;
          if (v50 <= 65535.0)
          {
            v56 = v48 + v47;
            if (v50 < 0.0)
            {
              v56 = 0.0;
            }
          }

          v57 = v27 * v44;
          LOBYTE(v50) = v39[1];
          v4 = v23 * (LODWORD(v50) - v21);
          v58 = v57 + v48;
          v59 = v46 + v4;
          v60 = llroundf(v55);
          v61 = v47 + v4;
          v62 = llroundf(v56);
          if (v58 < 0.0)
          {
            v63 = 0.0;
          }

          else
          {
            v63 = v58;
          }

          if (v58 > 65535.0)
          {
            v63 = 65535.0;
          }

          *v40 = bswap32(v52) >> 16;
          v40[1] = __rev16(v60);
          v40[2] = __rev16(v62);
          v40[3] = __rev16(llroundf(v63));
          if (v59 < 0.0)
          {
            v3 = 0.0;
          }

          else
          {
            v3 = v59;
          }

          if (v59 > 65535.0)
          {
            v3 = 65535.0;
          }

          v64 = 65535.0;
          if (v61 <= 65535.0)
          {
            v64 = v61;
            if (v61 < 0.0)
            {
              v64 = 0.0;
            }
          }

          v65 = v57 + v4;
          v66 = (v57 + v4) <= 65535.0;
          v2 = 65535.0;
          if (v66)
          {
            v2 = v65;
            if (v65 < 0.0)
            {
              v2 = 0.0;
            }
          }

          v40[4] = bswap32(v53) >> 16;
          v40[5] = __rev16(llroundf(v3));
          v40[6] = __rev16(llroundf(v64));
          v40[7] = __rev16(llroundf(v2));
          v38 += 2;
          v39 += 2;
          v40 += 8;
        }

        while (v38 < v11);
      }

      v37 += v14;
      v36 += v15;
      v32 += v16;
      v30 += v17;
      ++v9;
    }

    while (v9 != v8);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_422vf_TRC_Tone_Mat_TRC_RGhA_neon_fp16(uint64_t a1, uint64_t *a2, uint64_t a3, unint64_t *a4, void *a5, uint64_t *a6, uint64_t a7, void *a8, void *a9)
{
  v61 = a8;
  v62 = a3;
  v68 = a5;
  v63 = a4;
  v69 = *MEMORY[0x1E69E9840];
  v10 = *(a1 + 162);
  v12 = *a2;
  v11 = a2[1];
  v13 = a2[2];
  v60 = a2[3];
  v14 = a2[4];
  v15 = a2[5];
  v16 = *a6;
  v64 = a6[1];
  v65 = v11;
  v18 = a6[2];
  v17 = a6[3];
  v58 = a1;
  v59 = v17;
  v20 = a6[4];
  v19 = a6[5];
  v66 = v16;
  v67 = v19;
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
    v23 = (&v56 - v25);
    bzero(&v56 - v25, v26);
  }

  v57 = a7;
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
    v32 = v63;
    if (v22 || (v33 = v29 + 1 + v30, v33 > *v63) || ((v33 + (v33 >> 63)) & 0xFFFFFFFFFFFFFFFELL) > v63[1] || (v34 = v63[2], v33 > v34) && v34 || (8 * (v31 + v28) + 8) > *v61)
    {
      --v28;
      --v29;
    }

    else
    {
      ++v28;
      ++v66;
      ++v12;
      ++v29;
    }
  }

  else
  {
    v32 = v63;
  }

  if (v29 + v30 > v12)
  {
    v29 = v12 - v30;
  }

  if (v28 + v31 > v66)
  {
    v28 = v66 - v31;
  }

  if (v15 + v60 <= v65)
  {
    v35 = v60;
  }

  else
  {
    v35 = v65 - v15;
  }

  if (v67 + v59 <= v64)
  {
    v36 = v59;
  }

  else
  {
    v36 = v64 - v67;
  }

  if (v29 >= v28)
  {
    v37 = v28;
  }

  else
  {
    v37 = v29;
  }

  if (v35 >= v36)
  {
    v38 = v36;
  }

  else
  {
    v38 = v35;
  }

  v39 = v15 + v38 - 1;
  v40 = v37 + v30;
  if (v37 + v30 + *v32 * v39 <= *v68)
  {
    v45 = v62;
    if (*(v62 + 8) && ((v40 + 1 + ((v40 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v32[1] * v39 > v68[1])
    {
      v60 = v30;
      v41 = v10;
      v42 = v12;
      v43 = v15;
      v44 = a9;
    }

    else if (*(v62 + 16) && v40 + v32[2] * v39 > v68[2])
    {
      v60 = v30;
      v41 = v10;
      v42 = v12;
      v43 = v15;
      v44 = a9;
    }

    else
    {
      if ((*v61 * (v67 + v38 - 1) + 8 * (v37 + v31)) <= *a9)
      {
        goto LABEL_53;
      }

      v60 = v30;
      v41 = v10;
      v42 = v12;
      v43 = v15;
      v44 = a9;
    }
  }

  else
  {
    v60 = v30;
    v41 = v10;
    v42 = v12;
    v43 = v15;
    v44 = a9;
  }

  fig_log_get_emitter();
  v46 = FigSignalErrorAtGM();
  v45 = v62;
  v32 = v63;
  v27 = v44;
  v15 = v43;
  v12 = v42;
  v10 = v41;
  v30 = v60;
  if (v46)
  {
    v24 = v46;
    goto LABEL_58;
  }

LABEL_53:
  *v23 = v10;
  *(v23 + 4) = v12;
  v47 = v64;
  *(v23 + 12) = v65;
  *(v23 + 20) = v37;
  *(v23 + 28) = v38;
  *(v23 + 36) = v30;
  *(v23 + 44) = v15;
  v23[11] = v47;
  v23[12] = v37;
  v23[13] = v38;
  v23[14] = v31;
  v23[7] = v45;
  v23[8] = v32;
  v48 = v66;
  v49 = v67;
  v23[9] = v68;
  v23[10] = v48;
  v50 = v57;
  v23[15] = v49;
  v23[16] = v50;
  v23[17] = v61;
  v23[18] = v27;
  v23[19] = v58;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v10, global_queue, v23, vt_Copy_422vf_TRC_Tone_Mat_TRC_RGhA_neon_fp16_GCD);
  if (!v10)
  {
    return 0;
  }

  v52 = (v23 + 20);
  v53 = v10;
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

LABEL_58:
  if (v10 == 255)
  {
    goto LABEL_59;
  }

  return v24;
}

char *vt_Copy_422vf_TRC_Tone_Mat_TRC_RGhA_neon_fp16_GCD(char *result, uint64_t a2, int16x4_t a3)
{
  v5 = *result;
  v186 = result;
  v6 = *(result + 13);
  v7 = v6 * a2 / v5;
  v187 = (v6 + v6 * a2) / v5 - v7;
  if (v187 >= 1)
  {
    v8 = 0;
    v9 = *(result + 24);
    v10 = *(result + 19);
    v12 = *(result + 7);
    v11 = *(result + 8);
    v13 = *v11;
    v14 = v11[1];
    v15 = v11[2];
    v16 = **(result + 17);
    v17 = v10[17].u16[2];
    v18 = v10[17].u16[3];
    a3.i32[0] = v10->i32[0];
    v19.i32[0] = v10[3].i32[1];
    _S1 = v10[9].f32[1];
    _S2 = v10[10].f32[0];
    _S3 = v10[10].f32[1];
    _S4 = v10[11].f32[0];
    _S5 = v10[11].f32[1];
    _S6 = v10[12].f32[0];
    _S7 = v10[12].f32[1];
    _S16 = v10[13].f32[0];
    _S17 = v10[13].f32[1];
    _S18 = v10[14].f32[0];
    _S19 = v10[14].f32[1];
    _S20 = v10[15].f32[0];
    v32 = &v10[2068] + 4;
    v3.f32[0] = 8191.0 / v10[16].u32[0];
    v33 = v17;
    v34 = v18;
    _S24 = v3.f32[0] * v10->f32[0];
    v36 = &v10[20] + 4;
    v37 = &v10[4116] + 4;
    __asm { FCVT            H8, S24 }

    *a3.i16 = v17;
    v207 = vdupq_lane_s16(a3, 0);
    v43 = -v18;
    v19.i32[1] = v10[1].i32[0];
    *v4.f32 = vmul_n_f32(v19, v3.f32[0]);
    *v3.f32 = vmul_n_f32(v10[2], v3.f32[0]);
    v206 = vdupq_lane_s32(vcvt_f16_f32(v4), 0);
    v203 = vmulq_n_f16(v206, v43);
    v204 = vdupq_lane_s32(vcvt_f16_f32(v3), 0);
    v202 = vmulq_n_f16(v204, v43);
    __asm { FCVT            H0, S17 }

    v201 = _H0;
    __asm { FCVT            H0, S18 }

    v200 = _H0;
    __asm { FCVT            H0, S19 }

    v199 = _H0;
    __asm { FCVT            H0, S20 }

    v198 = _H0;
    v208 = v10[9].f32[0];
    __asm { FCVT            H0, S27 }

    v197 = _H0;
    __asm { FCVT            H0, S1 }

    v196 = _H0;
    __asm { FCVT            H0, S2 }

    v195 = _H0;
    v51 = v12[2];
    v52 = *(result + 28) * a2 / v5 + *(result + 44);
    v53 = *(result + 36);
    v54 = (v51 + v15 * v52 + v53);
    v55 = *v12;
    v56 = *(*(result + 7) + 8);
    v57 = **(result + 16) + v16 * (v7 + *(result + 15)) + 8 * *(result + 14);
    if (!v51)
    {
      v54 = 0;
    }

    if (v56)
    {
      v58 = (v56 + v14 * v52 + v53);
    }

    else
    {
      v58 = 0;
    }

    v59 = (v55 + v13 * v52 + v53);
    __asm { FCVT            H0, S3 }

    v194 = _H0;
    __asm { FCVT            H0, S4 }

    v193 = _H0;
    __asm { FCVT            H0, S5 }

    v192 = _H0;
    __asm { FCVT            H0, S6 }

    v191 = _H0;
    __asm { FCVT            H0, S7 }

    v190 = _H0;
    __asm { FCVT            H0, S16 }

    v189 = _H0;
    v66 = v4.i64[0];
    v67.i32[0] = v3.i32[1];
    LODWORD(v188) = HIDWORD(v3.u64[0]);
    LODWORD(v205) = v3.i64[0];
    v68.i64[0] = 0x9000900090009000;
    v68.i64[1] = 0x9000900090009000;
    do
    {
      if (v9 < 8)
      {
        v125 = 0;
        v124 = v58;
        v72 = v54;
        v71 = v57;
        v70 = v59;
      }

      else
      {
        v69 = 0;
        v70 = v59;
        v71 = v57;
        v72 = v54;
        do
        {
          if (v72 && (v73 = *v72, ++v72, v74 = v73, v72))
          {
            *v75.i8 = vzip1_s8(v74, 0);
            v75.u64[1] = vzip2_s8(v74, 0);
            v76 = vmulq_f16(vcvtq_f16_u16(v75), vdupq_n_s16(0x1C04u));
          }

          else
          {
            v76.i64[0] = 0x3C003C003C003C00;
            v76.i64[1] = 0x3C003C003C003C00;
          }

          v77 = *&v58[v69];
          *v78.i8 = vzip1_s8(v77, 0);
          v78.u64[1] = vzip2_s8(v77, 0);
          v79 = vcvtq_f16_u16(v78);
          v80 = vmlaq_f16(v203, v206, v79);
          v81 = vmlaq_f16(v202, v204, v79);
          v82 = vtrn2q_s16(v80, v80);
          v83 = vtrn1q_s16(v80, v80);
          v84 = vuzp1q_s16(v81, v82);
          *v84.i8 = vadd_f16(*v84.i8, *&vuzp2q_s16(v81, v82));
          v85 = *v70++;
          *v86.i8 = vzip1_s8(v85, 0);
          v86.u64[1] = vzip2_s8(v85, 0);
          v87 = vsubq_f16(vcvtq_f16_u16(v86), v207);
          v88 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(v82, v87, _H8), 0), v68));
          v89.i16[0] = *&v36[2 * v88.u16[0]];
          v89.i16[1] = *&v36[2 * v88.u16[1]];
          v89.i16[2] = *&v36[2 * v88.u16[2]];
          v89.i16[3] = *&v36[2 * v88.u16[3]];
          v89.i16[4] = *&v36[2 * v88.u16[4]];
          v89.i16[5] = *&v36[2 * v88.u16[5]];
          v89.i16[6] = *&v36[2 * v88.u16[6]];
          v89.i16[7] = *&v36[2 * v88.u16[7]];
          v90 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vzip1q_s16(v84, v84), v87, _H8), 0), v68));
          v86.i16[0] = *&v36[2 * v90.u16[0]];
          v86.i16[1] = *&v36[2 * v90.u16[1]];
          v86.i16[2] = *&v36[2 * v90.u16[2]];
          v86.i16[3] = *&v36[2 * v90.u16[3]];
          v86.i16[4] = *&v36[2 * v90.u16[4]];
          v86.i16[5] = *&v36[2 * v90.u16[5]];
          v86.i16[6] = *&v36[2 * v90.u16[6]];
          v86.i16[7] = *&v36[2 * v90.u16[7]];
          v91 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(v83, v87, _H8), 0), v68));
          v83.i16[0] = *&v36[2 * v91.u16[0]];
          v83.i16[1] = *&v36[2 * v91.u16[1]];
          v83.i16[2] = *&v36[2 * v91.u16[2]];
          v83.i16[3] = *&v36[2 * v91.u16[3]];
          v83.i16[4] = *&v36[2 * v91.u16[4]];
          v83.i16[5] = *&v36[2 * v91.u16[5]];
          v83.i16[6] = *&v36[2 * v91.u16[6]];
          v83.i16[7] = *&v36[2 * v91.u16[7]];
          v92 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v89, v201), v86, v200), v83, v199), vmaxq_f16(vmaxq_f16(v89, v86), v83), v198), 0), v68));
          v84.i16[0] = *&v32[2 * v92.u16[0]];
          v84.i16[1] = *&v32[2 * v92.u16[1]];
          v84.i16[2] = *&v32[2 * v92.u16[2]];
          v84.i16[3] = *&v32[2 * v92.u16[3]];
          v84.i16[4] = *&v32[2 * v92.u16[4]];
          v84.i16[5] = *&v32[2 * v92.u16[5]];
          v84.i16[6] = *&v32[2 * v92.u16[6]];
          v84.i16[7] = *&v32[2 * v92.u16[7]];
          v93 = vmulq_f16(v89, v84);
          v94 = vmulq_f16(v86, v84);
          v95 = vmulq_f16(v83, v84);
          v96 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v93, v194), v94, v193), v95, v192);
          v97 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v95, v189), v94, v190), v93, v191);
          v98 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v93, v197), v94, v196), v95, v195), 0), v68));
          v99 = *&v37[2 * v98.u16[0]];
          v100 = *&v37[2 * v98.u16[1]];
          v101 = *&v37[2 * v98.u16[2]];
          v102 = *&v37[2 * v98.u16[3]];
          v103 = *&v37[2 * v98.u16[4]];
          v104 = *&v37[2 * v98.u16[5]];
          v105 = *&v37[2 * v98.u16[6]];
          v106 = *&v37[2 * v98.u16[7]];
          v107 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v96, 0), v68));
          v108 = *&v37[2 * v107.u16[0]];
          v109 = *&v37[2 * v107.u16[1]];
          v110 = *&v37[2 * v107.u16[2]];
          v111 = *&v37[2 * v107.u16[3]];
          v112 = *&v37[2 * v107.u16[4]];
          v113 = *&v37[2 * v107.u16[5]];
          v114 = *&v37[2 * v107.u16[6]];
          v115 = *&v37[2 * v107.u16[7]];
          v67 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v97, 0), v68));
          v116 = *&v37[2 * v67.u16[0]];
          result = &v37[2 * v67.u16[2]];
          v117 = *&v37[2 * v67.u16[1]];
          v118 = *result;
          v119 = *&v37[2 * v67.u16[3]];
          v120 = *&v37[2 * v67.u16[4]];
          v121 = *&v37[2 * v67.u16[5]];
          v122 = *&v37[2 * v67.u16[6]];
          v123 = *&v37[2 * v67.u16[7]];
          vst4q_s16(v71, *(&v76 - 3));
          v71 += 64;
          v69 += 8;
        }

        while (v69 < v9 - 7);
        v124 = &v58[v69];
        v125 = v9 & 0xFFFFFFF8;
      }

      while (v125 < (v9 & 0xFFFFFFFE))
      {
        v67.i8[0] = v124[1];
        v126 = v67.u32[0] - v34;
        v127 = HIDWORD(v66);
        v128 = *(&v66 + 1) * v126;
        LOBYTE(v127) = v70->i8[0];
        v129 = v127 - v33;
        v130 = _S24 * v129;
        v131 = (*(&v66 + 1) * v126) + (_S24 * v129);
        v132 = 8191.0;
        if (v131 <= 8191.0)
        {
          v132 = (*(&v66 + 1) * v126) + (_S24 * v129);
          if (v131 < 0.0)
          {
            v132 = 0.0;
          }
        }

        LOBYTE(v129) = *v124;
        v133 = LODWORD(v129) - v34;
        v134 = (v188 * v126) + (v133 * v205);
        v135 = 8191.0;
        if ((v130 + v134) <= 8191.0)
        {
          v135 = v130 + v134;
          if ((v130 + v134) < 0.0)
          {
            v135 = 0.0;
          }
        }

        v136 = v66;
        v137 = *&v66 * v133;
        v138 = (*&v66 * v133) + v130;
        v139 = 8191.0;
        if (v138 <= 8191.0)
        {
          v139 = v138;
          if (v138 < 0.0)
          {
            v139 = 0.0;
          }
        }

        LOBYTE(v136) = v70->i8[1];
        v140 = v136 - v33;
        v141 = _S24 * v140;
        v142 = v128 + (_S24 * v140);
        v143 = 8191.0;
        if (v142 <= 8191.0)
        {
          v143 = v142;
          if (v142 < 0.0)
          {
            v143 = 0.0;
          }
        }

        v144 = 8191.0;
        if ((v134 + v141) <= 8191.0)
        {
          v144 = v134 + v141;
          if ((v134 + v141) < 0.0)
          {
            v144 = 0.0;
          }
        }

        v145 = v137 + v141;
        v146 = 8191.0;
        if ((v137 + v141) <= 8191.0)
        {
          v146 = v137 + v141;
          if (v145 < 0.0)
          {
            v146 = 0.0;
          }
        }

        if (v72)
        {
          LOBYTE(v140) = v72->i8[0];
          LOBYTE(v145) = v72->i8[1];
          v72 = (v72 + 2);
          _S0 = LODWORD(v140) * 0.0039216;
          _S26 = LODWORD(v145) * 0.0039216;
          __asm
          {
            FCVT            H30, S0
            FCVT            H31, S26
          }
        }

        else
        {
          LOWORD(_H30) = 0;
          LOWORD(_H31) = 0;
        }

        _H0 = *&v36[2 * llroundf(fminf(fmaxf(v132, 0.0), 8191.0))];
        __asm { FCVT            S14, H0 }

        _H0 = *&v36[2 * llroundf(fminf(fmaxf(v135, 0.0), 8191.0))];
        __asm { FCVT            S10, H0 }

        _H0 = *&v36[2 * llroundf(fminf(fmaxf(v139, 0.0), 8191.0))];
        __asm { FCVT            S11, H0 }

        _H12 = *&v36[2 * llroundf(fminf(fmaxf(v143, 0.0), 8191.0))];
        _H13 = *&v36[2 * llroundf(fminf(fmaxf(v144, 0.0), 8191.0))];
        _H26 = *&v36[2 * llroundf(fminf(fmaxf(v146, 0.0), 8191.0))];
        v160 = (((_S18 * _S10) + (_S17 * _S14)) + (_S19 * _S11)) + (_S20 * fmaxf(_S14, fmaxf(_S10, _S11)));
        v161 = 8191.0;
        if (v160 <= 8191.0)
        {
          v161 = v160;
          if (v160 < 0.0)
          {
            v161 = 0.0;
          }
        }

        __asm
        {
          FCVT            S21, H12
          FCVT            S12, H13
          FCVT            S13, H26
        }

        _H26 = *&v32[2 * llroundf(v161)];
        v166 = (((_S18 * _S12) + (_S17 * _S21)) + (_S19 * _S13)) + (_S20 * fmaxf(_S21, fmaxf(_S12, _S13)));
        v167 = 8191.0;
        if (v166 <= 8191.0)
        {
          v167 = v166;
          if (v166 < 0.0)
          {
            v167 = 0.0;
          }
        }

        __asm { FCVT            S26, H26 }

        v169 = _S14 * _S26;
        v170 = _S10 * _S26;
        v171 = _S11 * _S26;
        _H0 = *&v32[2 * llroundf(v167)];
        __asm { FCVT            S0, H0 }

        v174 = _S21 * _S0;
        v175 = _S12 * _S0;
        v176 = _S13 * _S0;
        v177 = ((_S1 * v170) + (v169 * v208)) + (v171 * _S2);
        v178 = ((_S4 * v170) + (v169 * _S3)) + (v171 * _S5);
        v179 = ((_S7 * v170) + (v169 * _S6)) + (v171 * _S16);
        v180 = ((_S1 * v175) + (v174 * v208)) + (v176 * _S2);
        v181 = ((_S4 * v175) + (v174 * _S3)) + (v176 * _S5);
        v182 = ((_S7 * v175) + (v174 * _S6)) + (v176 * _S16);
        LOWORD(v174) = *&v37[2 * llroundf(fminf(fmaxf(v177, 0.0), 8191.0))];
        LOWORD(v175) = *&v37[2 * llroundf(fminf(fmaxf(v178, 0.0), 8191.0))];
        LOWORD(v179) = *&v37[2 * llroundf(fminf(fmaxf(v179, 0.0), 8191.0))];
        v183 = *&v37[2 * llroundf(fminf(fmaxf(v180, 0.0), 8191.0))];
        v184 = *&v37[2 * llroundf(fminf(fmaxf(v181, 0.0), 8191.0))];
        *v67.i32 = fminf(fmaxf(v182, 0.0), 8191.0);
        v67.i16[0] = *&v37[2 * llroundf(*v67.i32)];
        *v71 = LOWORD(v174);
        *(v71 + 2) = LOWORD(v175);
        *(v71 + 4) = LOWORD(v179);
        if (v72)
        {
          v185 = _H30;
        }

        else
        {
          LOWORD(v185) = COERCE_UNSIGNED_INT(1.0);
        }

        *(v71 + 6) = v185;
        *(v71 + 8) = v183;
        *(v71 + 10) = v184;
        *(v71 + 12) = v67.i16[0];
        if (v72)
        {
          *v67.i16 = _H31;
        }

        else
        {
          v67.i16[0] = COERCE_UNSIGNED_INT(1.0);
        }

        *(v71 + 14) = v67.i16[0];
        v71 += 16;
        v125 += 2;
        v124 += 2;
        v70 = (v70 + 2);
      }

      v59 = (v59 + v13);
      v58 += v14;
      v54 = (v54 + v15);
      v57 += v16;
      ++v8;
    }

    while (v8 != v187);
  }

  *&v186[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_422vf_TRC_Tone_Mat_TRC_RGhA(uint64_t a1, uint64_t *a2, uint64_t a3, unint64_t *a4, void *a5, uint64_t *a6, uint64_t a7, void *a8, void *a9)
{
  v61 = a8;
  v62 = a3;
  v68 = a5;
  v63 = a4;
  v69 = *MEMORY[0x1E69E9840];
  v10 = *(a1 + 162);
  v12 = *a2;
  v11 = a2[1];
  v13 = a2[2];
  v60 = a2[3];
  v14 = a2[4];
  v15 = a2[5];
  v16 = *a6;
  v64 = a6[1];
  v65 = v11;
  v18 = a6[2];
  v17 = a6[3];
  v58 = a1;
  v59 = v17;
  v20 = a6[4];
  v19 = a6[5];
  v66 = v16;
  v67 = v19;
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
    v23 = (&v56 - v25);
    bzero(&v56 - v25, v26);
  }

  v57 = a7;
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
    v32 = v63;
    if (v22 || (v33 = v29 + 1 + v30, v33 > *v63) || ((v33 + (v33 >> 63)) & 0xFFFFFFFFFFFFFFFELL) > v63[1] || (v34 = v63[2], v33 > v34) && v34 || (8 * (v31 + v28) + 8) > *v61)
    {
      --v28;
      --v29;
    }

    else
    {
      ++v28;
      ++v66;
      ++v12;
      ++v29;
    }
  }

  else
  {
    v32 = v63;
  }

  if (v29 + v30 > v12)
  {
    v29 = v12 - v30;
  }

  if (v28 + v31 > v66)
  {
    v28 = v66 - v31;
  }

  if (v15 + v60 <= v65)
  {
    v35 = v60;
  }

  else
  {
    v35 = v65 - v15;
  }

  if (v67 + v59 <= v64)
  {
    v36 = v59;
  }

  else
  {
    v36 = v64 - v67;
  }

  if (v29 >= v28)
  {
    v37 = v28;
  }

  else
  {
    v37 = v29;
  }

  if (v35 >= v36)
  {
    v38 = v36;
  }

  else
  {
    v38 = v35;
  }

  v39 = v15 + v38 - 1;
  v40 = v37 + v30;
  if (v37 + v30 + *v32 * v39 <= *v68)
  {
    v45 = v62;
    if (*(v62 + 8) && ((v40 + 1 + ((v40 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v32[1] * v39 > v68[1])
    {
      v60 = v30;
      v41 = v10;
      v42 = v12;
      v43 = v15;
      v44 = a9;
    }

    else if (*(v62 + 16) && v40 + v32[2] * v39 > v68[2])
    {
      v60 = v30;
      v41 = v10;
      v42 = v12;
      v43 = v15;
      v44 = a9;
    }

    else
    {
      if ((*v61 * (v67 + v38 - 1) + 8 * (v37 + v31)) <= *a9)
      {
        goto LABEL_53;
      }

      v60 = v30;
      v41 = v10;
      v42 = v12;
      v43 = v15;
      v44 = a9;
    }
  }

  else
  {
    v60 = v30;
    v41 = v10;
    v42 = v12;
    v43 = v15;
    v44 = a9;
  }

  fig_log_get_emitter();
  v46 = FigSignalErrorAtGM();
  v45 = v62;
  v32 = v63;
  v27 = v44;
  v15 = v43;
  v12 = v42;
  v10 = v41;
  v30 = v60;
  if (v46)
  {
    v24 = v46;
    goto LABEL_58;
  }

LABEL_53:
  *v23 = v10;
  *(v23 + 4) = v12;
  v47 = v64;
  *(v23 + 12) = v65;
  *(v23 + 20) = v37;
  *(v23 + 28) = v38;
  *(v23 + 36) = v30;
  *(v23 + 44) = v15;
  v23[11] = v47;
  v23[12] = v37;
  v23[13] = v38;
  v23[14] = v31;
  v23[7] = v45;
  v23[8] = v32;
  v48 = v66;
  v49 = v67;
  v23[9] = v68;
  v23[10] = v48;
  v50 = v57;
  v23[15] = v49;
  v23[16] = v50;
  v23[17] = v61;
  v23[18] = v27;
  v23[19] = v58;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v10, global_queue, v23, vt_Copy_422vf_TRC_Tone_Mat_TRC_RGhA_GCD);
  if (!v10)
  {
    return 0;
  }

  v52 = (v23 + 20);
  v53 = v10;
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

LABEL_58:
  if (v10 == 255)
  {
    goto LABEL_59;
  }

  return v24;
}

unsigned __int8 *vt_Copy_422vf_TRC_Tone_Mat_TRC_RGhA_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, float a5)
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
    v116 = v19 * *(v10 + 16);
    v117 = v19 * *(v10 + 8);
    v115 = v19 * *(v10 + 20);
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
    v40 = *(result + 28) * a2 / v5 + *(result + 44);
    v41 = *(result + 36);
    v42 = **(result + 16) + v17 * (v7 + *(result + 15)) + 8 * *(result + 14);
    v43 = v12[2];
    if (v43)
    {
      v44 = (v43 + v40 * v16 + v41);
    }

    else
    {
      v44 = 0;
    }

    v46 = *v12;
    v45 = *(*(result + 7) + 8);
    _ZF = v45 == 0;
    v48 = v45 + v40 * v15 + v41;
    if (_ZF)
    {
      v48 = 0;
    }

    v49 = (v46 + v40 * v14 + v41);
    do
    {
      if (v11 >= 1)
      {
        v50 = 0;
        v51 = v49;
        v52 = v42;
        v53 = v44;
        do
        {
          LOBYTE(v19) = *(v48 + v50 + 1);
          v54 = LODWORD(v19) - v21;
          v55 = LODWORD(v117);
          v56 = v117 * v54;
          LOBYTE(v55) = *v51;
          v57 = v22 * (v55 - v20);
          v58 = (v117 * v54) + v57;
          v59 = 8191.0;
          if (v58 <= 8191.0)
          {
            v59 = (v117 * v54) + v57;
            if (v58 < 0.0)
            {
              v59 = 0.0;
            }
          }

          LOBYTE(v58) = *(v48 + v50);
          v60 = LODWORD(v58) - v21;
          v61 = v115 * v54;
          v62 = (v115 * v54) + (v60 * v116);
          v63 = 8191.0;
          if ((v57 + v62) <= 8191.0)
          {
            v63 = v57 + v62;
            if ((v57 + v62) < 0.0)
            {
              v63 = 0.0;
            }
          }

          v64 = v23 * v60;
          v65 = (v23 * v60) + v57;
          v66 = 8191.0;
          if (v65 <= 8191.0)
          {
            v66 = v65;
            if (v65 < 0.0)
            {
              v66 = 0.0;
            }
          }

          LOBYTE(v65) = v51[1];
          v67 = v22 * (LODWORD(v65) - v20);
          v68 = 8191.0;
          if ((v56 + v67) <= 8191.0)
          {
            v68 = v56 + v67;
            if ((v56 + v67) < 0.0)
            {
              v68 = 0.0;
            }
          }

          v69 = 8191.0;
          if ((v62 + v67) <= 8191.0)
          {
            v69 = v62 + v67;
            if ((v62 + v67) < 0.0)
            {
              v69 = 0.0;
            }
          }

          v70 = v64 + v67;
          v71 = (v64 + v67) <= 8191.0;
          v72 = 8191.0;
          if (v71)
          {
            v72 = v70;
            if (v70 < 0.0)
            {
              v72 = 0.0;
            }
          }

          if (v53)
          {
            LOBYTE(v70) = *v53;
            LOBYTE(v61) = v53[1];
            v53 += 2;
            _S4 = LODWORD(v70) * 0.0039216;
            _S5 = LODWORD(v61) * 0.0039216;
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

          _S4 = fmaxf(v59, 0.0);
          v81 = 8191.0;
          LOWORD(_S4) = *(v32 + 2 * llroundf(fminf(_S4, 8191.0)));
          __asm { FCVT            S14, H4 }

          LOWORD(_S4) = *(v32 + 2 * llroundf(fminf(fmaxf(v63, 0.0), 8191.0)));
          __asm { FCVT            S10, H4 }

          LOWORD(_S4) = *(v32 + 2 * llroundf(fminf(fmaxf(v66, 0.0), 8191.0)));
          __asm { FCVT            S11, H4 }

          _H12 = *(v32 + 2 * llroundf(fminf(fmaxf(v68, 0.0), 8191.0)));
          _H13 = *(v32 + 2 * llroundf(fminf(fmaxf(v69, 0.0), 8191.0)));
          _H15 = *(v32 + 2 * llroundf(fminf(fmaxf(v72, 0.0), 8191.0)));
          v88 = (((v37 * _S10) + (v36 * _S14)) + (v38 * _S11)) + (v39 * fmaxf(_S14, fmaxf(_S10, _S11)));
          v89 = 8191.0;
          if (v88 <= 8191.0)
          {
            v89 = v88;
            if (v88 < 0.0)
            {
              v89 = 0.0;
            }
          }

          __asm
          {
            FCVT            S12, H12
            FCVT            S13, H13
            FCVT            S15, H15
          }

          _H4 = *(v33 + 2 * llroundf(v89));
          v94 = fmaxf(_S12, fmaxf(_S13, _S15));
          v95 = (((v37 * _S13) + (v36 * _S12)) + (v38 * _S15)) + (v39 * v94);
          if (v95 <= 8191.0)
          {
            v81 = (((v37 * _S13) + (v36 * _S12)) + (v38 * _S15)) + (v39 * v94);
            if (v95 < 0.0)
            {
              v81 = 0.0;
            }
          }

          __asm { FCVT            S4, H4 }

          v97 = _S14 * _S4;
          v98 = _S10 * _S4;
          v99 = _S11 * _S4;
          _H9 = *(v33 + 2 * llroundf(v81));
          __asm { FCVT            S9, H9 }

          v102 = _S12 * _S9;
          v103 = _S13 * _S9;
          v104 = _S15 * _S9;
          v105 = ((v25 * v98) + (v97 * v24)) + (v99 * v26);
          v106 = ((v28 * v98) + (v97 * v27)) + (v99 * v29);
          v107 = ((v31 * v98) + (v97 * v30)) + (v99 * v35);
          v108 = ((v25 * v103) + (v102 * v24)) + (v104 * v26);
          v109 = ((v28 * v103) + (v102 * v27)) + (v104 * v29);
          v110 = ((v31 * v103) + (v102 * v30)) + (v104 * v35);
          LOWORD(v103) = *(v34 + 2 * llroundf(fminf(fmaxf(v106, 0.0), 8191.0)));
          v19 = fminf(fmaxf(v107, 0.0), 8191.0);
          LOWORD(v19) = *(v34 + 2 * llroundf(v19));
          v111 = *(v34 + 2 * llroundf(fminf(fmaxf(v108, 0.0), 8191.0)));
          v112 = *(v34 + 2 * llroundf(fminf(fmaxf(v109, 0.0), 8191.0)));
          v113 = *(v34 + 2 * llroundf(fminf(fmaxf(v110, 0.0), 8191.0)));
          *v52 = *(v34 + 2 * llroundf(fminf(fmaxf(v105, 0.0), 8191.0)));
          *(v52 + 2) = LOWORD(v103);
          *(v52 + 4) = LOWORD(v19);
          if (v53)
          {
            v114 = _H31;
          }

          else
          {
            LOWORD(v114) = COERCE_UNSIGNED_INT(1.0);
          }

          *(v52 + 6) = v114;
          *(v52 + 8) = v111;
          *(v52 + 10) = v112;
          *(v52 + 12) = v113;
          if (v53)
          {
            *&v19 = _H8;
          }

          else
          {
            LOWORD(v19) = COERCE_UNSIGNED_INT(1.0);
          }

          *(v52 + 14) = LOWORD(v19);
          v50 += 2;
          v51 += 2;
          v52 += 16;
        }

        while (v50 < v11);
      }

      v49 += v14;
      v48 += v15;
      v44 += v16;
      v42 += v17;
      ++v9;
    }

    while (v9 != v8);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}