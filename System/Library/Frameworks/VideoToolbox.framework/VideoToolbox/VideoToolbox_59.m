uint64_t vt_Copy_444vf_rgb_xf420(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4, void *a5, uint64_t *a6, uint64_t a7, void *a8, void *a9)
{
  v66 = a7;
  v67 = a8;
  v69 = a4;
  v70 = a5;
  v68 = a3;
  v75 = *MEMORY[0x1E69E9840];
  v65 = a1;
  v9 = *(a1 + 162);
  v10 = a2[1];
  v12 = a2[2];
  v11 = a2[3];
  v14 = a2[4];
  v13 = a2[5];
  v15 = *a6;
  v71 = *a2;
  v72 = v15;
  v16 = a6[1];
  v17 = a6[2];
  v18 = a6[3];
  v19 = a6[4];
  v20 = a6[5];
  v73 = v16;
  v74 = v10;
  v22 = v13 + v11 != v10 || v20 + v18 != v16;
  v63 = v22;
  if (v9 == 255)
  {
    v23 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v23)
    {
      v24 = 0;
LABEL_71:
      free(v23);
      return v24;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v9 + 160, a3, a4);
    v23 = &v62[-v25];
    bzero(&v62[-v25], v26);
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
    v38 = v69;
    v39 = v70;
    if (v63 || (v40 = v35 + 1 + v36, (*v69 * v40) > *v70) || (v69[1] * v40) > v70[1] || (v69[2] * v40) > v70[2] || (v41 = v34 + 1 + v37, (*v67 * v41) > *a9) || (v67[1] * (v41 / 2)) > a9[1] || (v67[2] * v41) > a9[2])
    {
      --v34;
      --v35;
    }

    else
    {
      ++v73;
      ++v74;
      ++v35;
      ++v34;
    }
  }

  else
  {
    v38 = v69;
    v39 = v70;
  }

  if (v32 + v30 > v71)
  {
    v32 = v71 - v30;
  }

  if (v33 + v31 > v72)
  {
    v33 = v72 - v31;
  }

  if (v35 + v36 > v74)
  {
    v35 = v74 - v36;
  }

  if (v34 + v37 > v73)
  {
    v34 = v73 - v37;
  }

  if (v32 >= v33)
  {
    v42 = v33;
  }

  else
  {
    v42 = v32;
  }

  if (v35 >= v34)
  {
    v43 = v34;
  }

  else
  {
    v43 = v35;
  }

  v44 = v36 + v43 - 1;
  v45 = v42 + v30;
  v46 = (v42 + v30 + v44 * *v38) > *v39;
  v64 = v36;
  if (v46)
  {
    v47 = v30;
    v48 = v9;
    v49 = v37;
    v50 = v31;
    v51 = a9;
    goto LABEL_64;
  }

  if (*(v68 + 8) && (v38[1] * v44 + 2 * v45) > v39[1])
  {
    v47 = v30;
    v48 = v9;
    v49 = v37;
    v50 = v31;
    v51 = a9;
    goto LABEL_64;
  }

  if (*(v68 + 16) && (v45 + v38[2] * v44) > v39[2])
  {
    v47 = v30;
    v48 = v9;
    v49 = v37;
    v50 = v31;
    v51 = a9;
    goto LABEL_64;
  }

  v52 = v43 + v37 - 1;
  v53 = v42 + v31;
  if ((*v67 * v52 + 2 * (v42 + v31)) > *a9)
  {
    v47 = v30;
    v48 = v9;
    v49 = v37;
    v50 = v31;
    v51 = a9;
    goto LABEL_64;
  }

  v54 = v66;
  if (*(v66 + 8) && v67[1] * ((v43 + v37 + 1) / 2 - 1) + 4 * ((v53 + 1 + ((v53 + 1) >> 63)) >> 1) > a9[1])
  {
    v47 = v30;
    v48 = v9;
    v49 = v37;
    v50 = v31;
    v51 = a9;
    goto LABEL_64;
  }

  if (*(v66 + 16) && (2 * v53 + v67[2] * v52) > a9[2])
  {
    v47 = v30;
    v48 = v9;
    v49 = v37;
    v50 = v31;
    v51 = a9;
LABEL_64:
    fig_log_get_emitter();
    v24 = FigSignalErrorAtGM();
    v54 = v66;
    v38 = v69;
    v39 = v70;
    v28 = v51;
    v31 = v50;
    v37 = v49;
    v9 = v48;
    v30 = v47;
    v36 = v64;
    if (v24)
    {
      goto LABEL_70;
    }
  }

  *v23 = v9;
  *(v23 + 4) = v71;
  v55 = v73;
  *(v23 + 12) = v74;
  *(v23 + 20) = v42;
  *(v23 + 28) = v43;
  *(v23 + 36) = v30;
  *(v23 + 44) = v36;
  v23[11] = v55;
  v23[12] = v42;
  v23[13] = v43;
  v23[14] = v31;
  v23[7] = v68;
  v23[8] = v38;
  v56 = v72;
  v23[9] = v39;
  v23[10] = v56;
  v23[15] = v37;
  v23[16] = v54;
  v23[17] = v67;
  v23[18] = v28;
  v23[19] = v65;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v9, global_queue, v23, vt_Copy_444vf_rgb_xf420_GCD);
  if (!v9)
  {
    return 0;
  }

  v58 = (v23 + 20);
  v59 = v9;
  while (1)
  {
    v60 = *v58++;
    v24 = v60;
    if (v60)
    {
      break;
    }

    if (!--v59)
    {
      v24 = 0;
      break;
    }
  }

LABEL_70:
  if (v9 == 255)
  {
    goto LABEL_71;
  }

  return v24;
}

uint64_t *vt_Copy_444vf_rgb_xf420_GCD(void *a1, uint64_t a2)
{
  v125 = *(a1 + 36);
  v10 = 2 * *a1;
  v11 = *(a1 + 44) + 2 * (*(a1 + 28) * a2 / v10);
  v12 = a1[14];
  v14 = a1[12];
  v13 = a1[13];
  v15 = v13 * a2 / v10;
  v16 = a1[15] + 2 * v15;
  v17 = 2 * ((v13 + v13 * a2) / v10 - v15);
  v18 = a1[7];
  v19 = a1[8];
  v21 = a1[16];
  result = a1[17];
  v22 = v19[2];
  v126 = v18[2];
  v23 = result[2];
  v24 = v21[2];
  v25 = (v24 + v23 * v16 + 2 * v12);
  if (v17 >= 1)
  {
    v26 = 0;
    v27 = a1[19];
    v28 = v14 & 0xFFFFFFFE;
    v29 = *v19;
    v30 = v19[1];
    v31 = *result;
    result = result[1];
    *&v32 = *(v27 + 128);
    *&v33 = *(v27 + 136);
    v34 = *&v33 / *&v32;
    LOWORD(v32) = *(v27 + 140);
    v35 = v32;
    LOWORD(v33) = *(v27 + 142);
    v36 = v33;
    v37 = v34 * *v27;
    v38 = v34 * *(v27 + 8);
    v39 = v34 * *(v27 + 16);
    v40 = v34 * *(v27 + 20);
    v41 = *(v27 + 28);
    v42 = v34 * v41;
    LOWORD(v41) = *(v27 + 144);
    v43 = LODWORD(v41);
    LOWORD(v3) = *(v27 + 146);
    v44 = v3;
    LOWORD(v4) = *(v27 + 148);
    v45 = v4;
    LOWORD(v5) = *(v27 + 150);
    v46 = v5;
    LOWORD(v6) = *(v27 + 152);
    v47 = v6;
    v48 = *(v27 + 36);
    v49 = *(v27 + 40);
    v50 = *(v27 + 44);
    v131 = *(v27 + 52) * 0.25;
    v132 = *(v27 + 48) * 0.25;
    v129 = *(v27 + 60) * 0.25;
    v130 = *(v27 + 56) * 0.25;
    v51 = *(v27 + 64) * 0.25;
    v52 = *(v27 + 68) * 0.25;
    v127 = v52;
    v128 = v51;
    v53 = *v18;
    v54 = v18[1];
    if (v54)
    {
      v55 = (v54 + v30 * v11 + v125);
    }

    else
    {
      v55 = 0;
    }

    v56 = *(v27 + 132);
    v57 = v21[1];
    v58 = (*v21 + v31 * v16 + 2 * v12);
    v59 = (v53 + v29 * v11 + v125);
    if (v56 >= 0x11)
    {
      v60 = 0;
    }

    else
    {
      v60 = 16 - v56;
    }

    v61 = v57 + result * (v16 / 2) + 2 * v12;
    v62 = v60;
    while (1)
    {
      v63 = &v59[v29];
      v64 = &v55[v30];
      v65 = &v58[v31];
      if (v28 >= 1)
      {
        break;
      }

LABEL_49:
      v59 = &v63[v29];
      v55 = &v64[v30];
      v58 = &v65[v31];
      v61 += result;
      v26 += 2;
      if (v26 >= v17)
      {
        goto LABEL_50;
      }
    }

    v66 = 0;
    v67 = &v59[v29];
    v68 = &v55[v30];
    v69 = &v58[v31];
    while (1)
    {
      v70 = 0.0;
      if (v55)
      {
        LOBYTE(v52) = *v55;
        v52 = LODWORD(v52) - v36;
        LOBYTE(v7) = v55[1];
        v71 = LODWORD(v7) - v36;
        v72 = v38 * v71;
        v73 = (v40 * v71) + (v52 * v39);
        v74 = v42 * v52;
        if (v55 != -2)
        {
          LOBYTE(v52) = v55[2];
          v52 = LODWORD(v52) - v36;
          LOBYTE(v70) = v55[3];
          v75 = LODWORD(v70) - v36;
          v55 += 4;
          v76 = v38 * v75;
          v77 = (v40 * v75) + (v52 * v39);
          v70 = v42 * v52;
          goto LABEL_16;
        }
      }

      else
      {
        v74 = 0.0;
        v73 = 0.0;
        v72 = 0.0;
      }

      v55 = 0;
      v77 = 0.0;
      v76 = 0.0;
LABEL_16:
      v78 = 0.0;
      if (!v68)
      {
        v83 = 0.0;
        v82 = 0.0;
        v81 = 0.0;
LABEL_20:
        v68 = 0;
        v88 = 0.0;
        v87 = 0.0;
        goto LABEL_21;
      }

      LOBYTE(v52) = *v68;
      v79 = LODWORD(v52) - v36;
      LOBYTE(v2) = v68[1];
      v80 = LODWORD(v2) - v36;
      v81 = v38 * v80;
      v82 = (v40 * v80) + (v79 * v39);
      v83 = v42 * v79;
      if (v68 == -2)
      {
        goto LABEL_20;
      }

      LOBYTE(v79) = v68[2];
      *&v84 = LODWORD(v79);
      v85 = *&v84 - v36;
      LOBYTE(v84) = v68[3];
      v86 = v84 - v36;
      v68 += 4;
      v87 = v38 * v86;
      v88 = (v40 * v86) + (v85 * v39);
      v78 = v42 * v85;
LABEL_21:
      LOBYTE(v51) = *v59;
      *&v89 = v37 * (LODWORD(v51) - v35);
      v90 = v72 + *&v89;
      v91 = v73 + *&v89;
      v92 = v74 + *&v89;
      LOBYTE(v89) = v59[1];
      *&v93 = v37 * (v89 - v35);
      v94 = v76 + *&v93;
      v95 = v77 + *&v93;
      v96 = v70 + *&v93;
      LOBYTE(v93) = *v67;
      v97 = v37 * (v93 - v35);
      v98 = v81 + v97;
      v99 = v82 + v97;
      v100 = v83 + v97;
      LOBYTE(v83) = v67[1];
      v101 = v37 * (LODWORD(v83) - v35);
      v102 = v87 + v101;
      v103 = v88 + v101;
      v104 = v78 + v101;
      v2 = (((v49 * v91) + (v48 * v90)) + (v50 * v92)) + v43;
      v105 = (((v49 * v95) + (v48 * v94)) + (v50 * v96)) + v43;
      v106 = (((v49 * v99) + (v48 * v98)) + (v50 * v100)) + v43;
      v107 = (((v49 * v103) + (v48 * v102)) + (v50 * v104)) + v43;
      if (v2 < v43)
      {
        v108 = v43;
      }

      else
      {
        v108 = (((v49 * v91) + (v48 * v90)) + (v50 * v92)) + v43;
      }

      if (v2 > v45)
      {
        v108 = v45;
      }

      *v58 = llroundf(v108) << v62;
      if (v105 < v43)
      {
        v109 = v43;
      }

      else
      {
        v109 = (((v49 * v95) + (v48 * v94)) + (v50 * v96)) + v43;
      }

      if (v105 <= v45)
      {
        v110 = v109;
      }

      else
      {
        v110 = v45;
      }

      *(v58 + 1) = llroundf(v110) << v62;
      if (v106 < v43)
      {
        v111 = v43;
      }

      else
      {
        v111 = (((v49 * v99) + (v48 * v98)) + (v50 * v100)) + v43;
      }

      if (v106 > v45)
      {
        v111 = v45;
      }

      *v69 = llroundf(v111) << v62;
      if (v107 < v43)
      {
        v112 = v43;
      }

      else
      {
        v112 = (((v49 * v103) + (v48 * v102)) + (v50 * v104)) + v43;
      }

      if (v107 > v45)
      {
        v112 = v45;
      }

      *(v69 + 1) = llroundf(v112) << v62;
      v113 = ((v90 + v94) + v98) + v102;
      v114 = ((v91 + v95) + v99) + v103;
      v115 = ((v92 + v96) + v100) + v104;
      v116 = ((v44 + (v113 * v132)) + (v114 * v131)) + (v115 * v130);
      v7 = v47;
      if (v116 <= v47)
      {
        v7 = ((v44 + (v113 * v132)) + (v114 * v131)) + (v115 * v130);
        if (v116 < v46)
        {
          v7 = v46;
        }
      }

      v117 = (v61 + 2 * v66);
      v51 = v127;
      v118 = ((v44 + (v113 * v129)) + (v114 * v128)) + (v115 * v127);
      *v117 = llroundf(v7) << v62;
      v52 = v47;
      if (v118 <= v47)
      {
        v52 = v118;
        if (v118 < v46)
        {
          v52 = v46;
        }
      }

      v59 += 2;
      v67 += 2;
      v58 += 4;
      v69 += 4;
      v117[1] = llroundf(v52) << v62;
      v66 += 2;
      if (v66 >= v28)
      {
        goto LABEL_49;
      }
    }
  }

LABEL_50:
  if (v126 && v24)
  {
    if (v17 >= 1)
    {
      v119 = 0;
      v120 = (v126 + v22 * v11 + v125);
      do
      {
        if (v14 >= 1)
        {
          v121 = v14;
          v122 = v25;
          v123 = v120;
          do
          {
            v124 = *v123++;
            *v122++ = v124 | (v124 << 8);
            --v121;
          }

          while (v121);
        }

        v120 += v22;
        v25 += v23;
        ++v119;
      }

      while (v119 != v17);
    }
  }

  else if (v24 && v17 >= 1)
  {
    do
    {
      if (v14 >= 1)
      {
        result = memset(v25, 255, 2 * v14);
      }

      v25 += v23;
      --v17;
    }

    while (v17);
  }

  *(a1 + a2 + 40) = 0;
  return result;
}

uint64_t vt_Copy_444vf_TRC_Tone_Mat_TRC_422vf_neon_fp16(uint64_t a1, uint64_t *a2, uint64_t a3, unint64_t *a4, unint64_t *a5, uint64_t *a6, uint64_t a7, unint64_t *a8, void *a9)
{
  v66 = a7;
  v67 = a3;
  v75 = a5;
  v68 = a4;
  v76 = *MEMORY[0x1E69E9840];
  v11 = *(a1 + 162);
  v13 = *a2;
  v12 = a2[1];
  v14 = a2[2];
  v65 = a2[3];
  v15 = a2[4];
  v70 = a2[5];
  v71 = v12;
  v16 = *a6;
  v69 = a6[1];
  v17 = a6[2];
  v18 = a6[3];
  v20 = a6[4];
  v19 = a6[5];
  v73 = v16;
  v74 = v19;
  v72 = v13;
  v22 = v15 + v14 != v13 || v20 + v17 != v16;
  if (v11 == 255)
  {
    v23 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v23)
    {
      v24 = 0;
LABEL_69:
      free(v23);
      return v24;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v11 + 160, a3, a4);
    v23 = (&v62 - v25);
    bzero(&v62 - v25, v26);
  }

  v64 = a1;
  v27 = a9;
  v28 = v17 - 1;
  v29 = v14 - 1;
  if (v20)
  {
    v30 = v15 + 1;
  }

  else
  {
    v29 = v14;
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
    v32 = v68;
    if (v22 || (v33 = v29 + 1 + v30, v33 > *v68) || (v34 = v68[1], v34 < 2 * v33) && v34 || (v35 = v68[2], v33 > v35) && v35 || (v36 = v28 + 1 + v31, v36 > *a8) || ((v36 + (v36 >> 63)) & 0xFFFFFFFFFFFFFFFELL) > a8[1] || (v37 = a8[2], v36 > v37) && v37)
    {
      --v28;
      --v29;
    }

    else
    {
      ++v72;
      ++v73;
      ++v29;
      ++v28;
    }
  }

  else
  {
    v32 = v68;
  }

  if (v29 + v30 > v72)
  {
    v29 = v72 - v30;
  }

  if (v28 + v31 > v73)
  {
    v28 = v73 - v31;
  }

  if (v70 + v65 <= v71)
  {
    v38 = v65;
  }

  else
  {
    v38 = v71 - v70;
  }

  if (v74 + v18 <= v69)
  {
    v39 = v18;
  }

  else
  {
    v39 = v69 - v74;
  }

  if (v29 >= v28)
  {
    v40 = v28;
  }

  else
  {
    v40 = v29;
  }

  if (v38 >= v39)
  {
    v41 = v39;
  }

  else
  {
    v41 = v38;
  }

  v42 = v70 + v41 - 1;
  v43 = v40 + v30;
  v44 = v40 + v30 + *v32 * v42;
  v45 = *v75;
  v46 = v66;
  v63 = v30;
  if (v44 > v45)
  {
    v47 = v11;
    v48 = v31;
    v49 = a8;
    v50 = a9;
    goto LABEL_62;
  }

  if (*(v67 + 8) && v32[1] * v42 + 2 * v43 > v75[1])
  {
    v47 = v11;
    v48 = v31;
    v49 = a8;
    v50 = a9;
    goto LABEL_62;
  }

  if (*(v67 + 16) && v43 + v32[2] * v42 > v75[2])
  {
    v47 = v11;
    v48 = v31;
    v49 = a8;
    v50 = a9;
    goto LABEL_62;
  }

  v51 = v74 + v41 - 1;
  v52 = v40 + v31;
  if (v40 + v31 + *a8 * v51 > *a9)
  {
    v47 = v11;
    v48 = v31;
    v49 = a8;
    v50 = a9;
    goto LABEL_62;
  }

  if (*(v66 + 8) && ((v52 + 1 + ((v52 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + a8[1] * v51 > a9[1])
  {
    v47 = v11;
    v48 = v31;
    v49 = a8;
    v50 = a9;
    goto LABEL_62;
  }

  if (*(v66 + 16) && v52 + a8[2] * v51 > a9[2])
  {
    v47 = v11;
    v48 = v31;
    v49 = a8;
    v50 = a9;
LABEL_62:
    fig_log_get_emitter();
    v24 = FigSignalErrorAtGM();
    v32 = v68;
    v27 = v50;
    a8 = v49;
    v31 = v48;
    v11 = v47;
    v30 = v63;
    if (v24)
    {
      goto LABEL_68;
    }
  }

  *v23 = v11;
  v53 = v71;
  *(v23 + 4) = v72;
  *(v23 + 12) = v53;
  *(v23 + 20) = v40;
  *(v23 + 28) = v41;
  *(v23 + 36) = v30;
  v54 = v69;
  *(v23 + 44) = v70;
  v23[11] = v54;
  v23[12] = v40;
  v23[13] = v41;
  v23[14] = v31;
  v23[7] = v67;
  v23[8] = v32;
  v55 = v73;
  v56 = v74;
  v23[9] = v75;
  v23[10] = v55;
  v23[15] = v56;
  v23[16] = v46;
  v23[17] = a8;
  v23[18] = v27;
  v23[19] = v64;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v11, global_queue, v23, vt_Copy_444vf_TRC_Tone_Mat_TRC_422vf_neon_fp16_GCD);
  if (!v11)
  {
    return 0;
  }

  v58 = (v23 + 20);
  v59 = v11;
  while (1)
  {
    v60 = *v58++;
    v24 = v60;
    if (v60)
    {
      break;
    }

    if (!--v59)
    {
      v24 = 0;
      break;
    }
  }

LABEL_68:
  if (v11 == 255)
  {
    goto LABEL_69;
  }

  return v24;
}

uint64_t *vt_Copy_444vf_TRC_Tone_Mat_TRC_422vf_neon_fp16_GCD(uint64_t *result, uint64_t a2, double a3, double a4, double a5, double a6, float32x4_t a7, double a8, double a9, float32x4_t a10)
{
  v10 = *result;
  v218 = *(result + 28) * a2 / v10 + *(result + 44);
  v219 = *(result + 36);
  v11 = result[14];
  v13 = result[12];
  v12 = result[13];
  v224 = result;
  v14 = v12 * a2 / v10;
  v15 = v14 + result[15];
  v16 = (v12 + v12 * a2) / v10 - v14;
  v17 = result[7];
  v18 = result[8];
  v19 = result[16];
  v20 = result[17];
  v217 = v18[2];
  v221 = v17[2];
  v222 = v20[2];
  v220 = v19[2];
  v21 = (v220 + v222 * v15 + v11);
  if (v16 >= 1)
  {
    v22 = 0;
    v23 = result[19];
    v24 = *v18;
    v25 = v18[1];
    v26 = *v20;
    v27 = v20[1];
    v28 = *(v23 + 140);
    v29 = *(v23 + 142);
    LODWORD(a8) = *(v23 + 16);
    v30 = *(v23 + 144);
    v31 = *(v23 + 146);
    v32 = *(v23 + 148);
    result = &qword_18FECD000;
    v33 = 8191.0 / *(v23 + 128);
    v34 = v28;
    v35 = *(v23 + 150);
    v36 = *(v23 + 152);
    v37 = v29;
    _S10 = v33 * *v23;
    _S18 = v33 * *(v23 + 8);
    _S20 = *(v23 + 36);
    _S22 = *(v23 + 40);
    _S24 = v33 * *&a8;
    _S6 = v33 * *(v23 + 20);
    v44 = v30;
    v273 = v31;
    v45 = v32;
    v271 = v35;
    _S25 = *(v23 + 44);
    v46.i32[0] = *(v23 + 48);
    a7.i32[0] = *(v23 + 52);
    v48.i32[0] = *(v23 + 56);
    v49 = v36;
    *&a8 = v28;
    v50 = v23 + 16548;
    v51 = v13 & 0xFFFFFFFE;
    v52 = v23 + 164;
    v53 = v23 + 32932;
    __asm { FCVT            H8, S10 }

    _Q5 = vdupq_lane_s16(*&a8, 0);
    v263 = _Q5;
    *_Q5.i16 = -v29;
    v229 = vdupq_lane_s16(*_Q5.i8, 0);
    v267 = v33 * *(v23 + 28);
    __asm { FCVT            H5, S7 }

    v228 = *_Q5.i16;
    v269 = _S24;
    __asm { FCVT            H5, S24 }

    v227 = *_Q5.i16;
    v46.i32[1] = *(v23 + 60);
    *a10.f32 = vmul_f32(v46, 0x3F0000003F000000);
    v262 = vdupq_lane_s32(vcvt_f16_f32(a10), 0);
    a7.i32[1] = *(v23 + 64);
    *a7.f32 = vmul_f32(*a7.f32, 0x3F0000003F000000);
    v60 = vdupq_lane_s32(vcvt_f16_f32(a7), 0);
    v261 = v60;
    v48.i32[1] = *(v23 + 68);
    *v60.i8 = vmul_f32(v48, 0x3F0000003F000000);
    v61 = vcvt_f16_f32(v60);
    v62 = vdupq_lane_s32(v61, 0);
    *v61.i16 = v30;
    v63 = vdupq_lane_s16(v61, 0);
    v258 = v63;
    v259 = v62;
    *v63.i16 = v31;
    v64 = vdupq_lane_s16(*v63.i8, 0);
    *v63.i16 = v32;
    v65 = vdupq_lane_s16(*v63.i8, 0);
    v256 = v65;
    v257 = v64;
    *v65.i16 = v35;
    v66 = vdupq_lane_s16(*v65.i8, 0);
    *v65.i16 = v36;
    v254 = vdupq_lane_s16(*v65.i8, 0);
    v255 = v66;
    v67 = *v19;
    v68 = v19[1];
    v69 = (v68 + v27 * v15 + v11);
    if (!v68)
    {
      v69 = 0;
    }

    v70 = (v67 + v26 * v15 + v11);
    v72 = *v17;
    v71 = v17[1];
    v73 = v71 + v25 * v218 + v219;
    if (!v71)
    {
      v73 = 0;
    }

    v74 = (v72 + v24 * v218 + v219);
    _S16 = *(v23 + 80);
    _S24 = *(v23 + 84);
    _S29 = *(v23 + 108);
    _S30 = *(v23 + 112);
    _S31 = *(v23 + 116);
    v268 = _S6;
    __asm { FCVT            H6, S6 }

    v226 = _H6;
    v270 = _S18;
    __asm { FCVT            H6, S18 }

    v225 = _H6;
    v266 = *(v23 + 36);
    __asm { FCVT            H6, S20 }

    v248 = _H6;
    v265 = *(v23 + 40);
    __asm { FCVT            H6, S22 }

    v247 = _H6;
    v264 = *(v23 + 44);
    __asm { FCVT            H6, S25 }

    v246 = _H6;
    __asm { FCVT            H6, S29 }

    v245 = _H6;
    __asm { FCVT            H6, S30 }

    v244 = _H6;
    __asm { FCVT            H6, S31 }

    v243 = _H6;
    v272 = *(v23 + 120);
    __asm { FCVT            H6, S9 }

    v253 = *(v23 + 72);
    __asm { FCVT            H1, S1 }

    v241 = _H1;
    v242 = _H6;
    v252 = *(v23 + 76);
    __asm { FCVT            H1, S5 }

    v240 = _H1;
    __asm { FCVT            H1, S16 }

    v239 = _H1;
    __asm { FCVT            H6, S24 }

    v236 = _H6;
    v251 = *(v23 + 88);
    __asm { FCVT            H6, S26 }

    v235 = _H6;
    v250 = *(v23 + 92);
    __asm { FCVT            H6, S27 }

    v238 = *(v23 + 96);
    __asm { FCVT            H1, S1 }

    v233 = _H1;
    v234 = _H6;
    v237 = *(v23 + 100);
    __asm { FCVT            H1, S5 }

    v232 = _H1;
    v249 = *(v23 + 104);
    __asm { FCVT            H1, S28 }

    v231 = _H1;
    v98 = a10.i64[0];
    v99.i32[0] = a7.i32[1];
    v100.i32[0] = v60.i32[1];
    v230 = *&v60.i32[1];
    v260 = *v60.i32;
    v101.i64[0] = 0x9000900090009000;
    v101.i64[1] = 0x9000900090009000;
    do
    {
      if (v13 < 8)
      {
        v136 = 0;
        v135 = v69;
        v105 = v70;
        v104 = v73;
        v103 = v74;
      }

      else
      {
        v102 = 0;
        v103 = v74;
        v104 = v73;
        v105 = v70;
        do
        {
          if (v104)
          {
            v274 = vld2_s8(v104);
            v104 += 16;
            *v106.i8 = vzip1_s8(*v274.i8, 0);
            v106.u64[1] = vzip2_s8(*v274.i8, 0);
            *v107.i8 = vzip1_s8(v274.u64[1], 0);
            v107.u64[1] = vzip2_s8(v274.u64[1], 0);
            v274 = vaddq_f16(v229, vcvtq_f16_u16(v106));
            *(&v274 + 8) = vaddq_f16(v229, vcvtq_f16_u16(v107));
            v108 = vmulq_n_f16(*(&v274 + 8), v225);
            v109 = vmlaq_n_f16(vmulq_n_f16(v274, v227), *(&v274 + 8), v226);
            v110 = vmulq_n_f16(v274, v228);
          }

          else
          {
            v110 = 0uLL;
            v109 = 0uLL;
            v108 = 0uLL;
          }

          v111 = *v103++;
          *v112.i8 = vzip1_s8(v111, 0);
          v112.u64[1] = vzip2_s8(v111, 0);
          v113 = vsubq_f16(vcvtq_f16_u16(v112), v263);
          v114 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(v108, v113, _H8), 0), v101));
          v115.i16[0] = *(v52 + 2 * v114.u16[0]);
          v115.i16[1] = *(v52 + 2 * v114.u16[1]);
          v115.i16[2] = *(v52 + 2 * v114.u16[2]);
          v115.i16[3] = *(v52 + 2 * v114.u16[3]);
          v115.i16[4] = *(v52 + 2 * v114.u16[4]);
          v115.i16[5] = *(v52 + 2 * v114.u16[5]);
          v115.i16[6] = *(v52 + 2 * v114.u16[6]);
          v115.i16[7] = *(v52 + 2 * v114.u16[7]);
          v116 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(v109, v113, _H8), 0), v101));
          v117.i16[0] = *(v52 + 2 * v116.u16[0]);
          v117.i16[1] = *(v52 + 2 * v116.u16[1]);
          v117.i16[2] = *(v52 + 2 * v116.u16[2]);
          v117.i16[3] = *(v52 + 2 * v116.u16[3]);
          v117.i16[4] = *(v52 + 2 * v116.u16[4]);
          v117.i16[5] = *(v52 + 2 * v116.u16[5]);
          v117.i16[6] = *(v52 + 2 * v116.u16[6]);
          v117.i16[7] = *(v52 + 2 * v116.u16[7]);
          v118 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(v110, v113, _H8), 0), v101));
          v119.i16[0] = *(v52 + 2 * v118.u16[0]);
          v119.i16[1] = *(v52 + 2 * v118.u16[1]);
          v119.i16[2] = *(v52 + 2 * v118.u16[2]);
          v119.i16[3] = *(v52 + 2 * v118.u16[3]);
          v119.i16[4] = *(v52 + 2 * v118.u16[4]);
          v119.i16[5] = *(v52 + 2 * v118.u16[5]);
          v119.i16[6] = *(v52 + 2 * v118.u16[6]);
          v119.i16[7] = *(v52 + 2 * v118.u16[7]);
          v120 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v115, v245), v117, v244), v119, v243), vmaxq_f16(vmaxq_f16(v115, v117), v119), v242), 0), v101));
          v114.i16[0] = *(v50 + 2 * v120.u16[0]);
          v114.i16[1] = *(v50 + 2 * v120.u16[1]);
          v114.i16[2] = *(v50 + 2 * v120.u16[2]);
          v114.i16[3] = *(v50 + 2 * v120.u16[3]);
          v114.i16[4] = *(v50 + 2 * v120.u16[4]);
          v114.i16[5] = *(v50 + 2 * v120.u16[5]);
          v114.i16[6] = *(v50 + 2 * v120.u16[6]);
          v114.i16[7] = *(v50 + 2 * v120.u16[7]);
          v121 = vmulq_f16(v115, v114);
          v122 = vmulq_f16(v117, v114);
          v123 = vmulq_f16(v119, v114);
          v124 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v121, v236), v122, v235), v123, v234);
          v125 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v121, v241), v122, v240), v123, v239), 0), v101));
          v126 = vmlaq_n_f16(vmulq_n_f16(v123, v231), v122, v232);
          v115.i16[0] = *(v53 + 2 * v125.u16[0]);
          v115.i16[1] = *(v53 + 2 * v125.u16[1]);
          v115.i16[2] = *(v53 + 2 * v125.u16[2]);
          v115.i16[3] = *(v53 + 2 * v125.u16[3]);
          v115.i16[4] = *(v53 + 2 * v125.u16[4]);
          v115.i16[5] = *(v53 + 2 * v125.u16[5]);
          v115.i16[6] = *(v53 + 2 * v125.u16[6]);
          v127 = v115;
          v127.i16[7] = *(v53 + 2 * v125.u16[7]);
          v128 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v124, 0), v101));
          v117.i16[0] = *(v53 + 2 * v128.u16[0]);
          v117.i16[1] = *(v53 + 2 * v128.u16[1]);
          v117.i16[2] = *(v53 + 2 * v128.u16[2]);
          v117.i16[3] = *(v53 + 2 * v128.u16[3]);
          v117.i16[4] = *(v53 + 2 * v128.u16[4]);
          v117.i16[5] = *(v53 + 2 * v128.u16[5]);
          v117.i16[6] = *(v53 + 2 * v128.u16[6]);
          v129 = vmlaq_n_f16(v126, v121, v233);
          v130 = v117;
          v130.i16[7] = *(v53 + 2 * v128.u16[7]);
          v60 = vminq_f16(vmaxq_f16(v129, 0), v101);
          v131 = vcvtq_u16_f16(v60);
          v60.i16[0] = *(v53 + 2 * v131.u16[0]);
          v60.i16[1] = *(v53 + 2 * v131.u16[1]);
          v60.i16[2] = *(v53 + 2 * v131.u16[2]);
          v60.i16[3] = *(v53 + 2 * v131.u16[3]);
          v60.i16[4] = *(v53 + 2 * v131.u16[4]);
          v60.i16[5] = *(v53 + 2 * v131.u16[5]);
          v60.i16[6] = *(v53 + 2 * v131.u16[6]);
          v132 = (v53 + 2 * v131.u16[7]);
          v133 = v60;
          v133.i16[7] = *v132;
          *v105++ = vmovn_s16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v258, v127, v248), v130, v247), v133, v246), v258), v256)));
          v134 = vaddq_f16(vuzp1q_s16(v115, v117), vuzp2q_s16(v127, v130));
          _S18 = *v262.i32;
          v99 = vmlaq_f16(vmlaq_f16(vmlaq_f16(v257, v262, vzip1q_s16(v134, v134)), v261, vzip2q_s16(v134, v134)), v259, vaddq_f16(vtrn1q_s16(v60, v60), vtrn2q_s16(v133, v133)));
          v60.i32[0] = v254.i32[0];
          v100 = vmovn_s16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(v99, v255), v254)));
          *&v69[v102] = v100;
          v102 += 8;
        }

        while (v102 < v13 - 7);
        v135 = &v69[v102];
        v136 = v13 & 0xFFFFFFF8;
      }

      for (; v136 < v51; v105 = (v105 + 2))
      {
        if (v104)
        {
          v100.i8[0] = *v104;
          v137 = v100.u32[0] - v37;
          v60.i8[0] = *(v104 + 1);
          v138 = v60.u32[0] - v37;
          v104 += 2;
          v139 = v270 * v138;
          *v60.i32 = (v268 * v138) + (v137 * v269);
          *v99.i32 = v267;
          *v100.i32 = v267 * v137;
        }

        else
        {
          v100.i32[0] = 0;
          v60.i32[0] = 0;
          v139 = 0.0;
        }

        v99.i8[0] = v103->i8[0];
        *v99.i32 = _S10 * (v99.u32[0] - v34);
        v140 = v139 + *v99.i32;
        v141 = 8191.0;
        if (v140 <= 8191.0)
        {
          v141 = v140;
          if (v140 < 0.0)
          {
            v141 = 0.0;
          }
        }

        v142 = *v60.i32 + *v99.i32;
        v143 = 8191.0;
        if (v142 <= 8191.0)
        {
          v143 = v142;
          if (v142 < 0.0)
          {
            v143 = 0.0;
          }
        }

        v144 = *v100.i32 + *v99.i32;
        v145 = (*v100.i32 + *v99.i32) <= 8191.0;
        v146 = 8191.0;
        if (v145)
        {
          v146 = v144;
          if (v144 < 0.0)
          {
            v146 = 0.0;
          }
        }

        if (v104)
        {
          LOBYTE(v144) = *v104;
          v147 = LODWORD(v144) - v37;
          v99.i8[0] = *(v104 + 1);
          v148 = v99.u32[0] - v37;
          v104 += 2;
          v149 = v270 * v148;
          v150 = (v268 * v148) + (v147 * v269);
          _S18 = v267;
          v151 = v267 * v147;
        }

        else
        {
          v151 = 0.0;
          v150 = 0.0;
          v149 = 0.0;
        }

        LOBYTE(_S18) = v103->i8[1];
        v152 = v34;
        v153 = _S10 * (LODWORD(_S18) - v34);
        v154 = v149 + v153;
        v145 = (v149 + v153) <= 8191.0;
        v155 = 8191.0;
        if (v145)
        {
          v155 = v154;
          if (v154 < 0.0)
          {
            v155 = 0.0;
          }
        }

        v156 = v150 + v153;
        v145 = (v150 + v153) <= 8191.0;
        v157 = 8191.0;
        if (v145)
        {
          v157 = v156;
          if (v156 < 0.0)
          {
            v157 = 0.0;
          }
        }

        v158 = v151 + v153;
        v159 = 8191.0;
        if (v158 <= 8191.0)
        {
          v159 = v158;
          if (v158 < 0.0)
          {
            v159 = 0.0;
          }
        }

        _H3 = *(v52 + 2 * llroundf(fminf(fmaxf(v141, 0.0), 8191.0)));
        __asm { FCVT            S3, H3 }

        _H20 = *(v52 + 2 * llroundf(fminf(fmaxf(v143, 0.0), 8191.0)));
        v163 = llroundf(fminf(fmaxf(v146, 0.0), 8191.0));
        __asm { FCVT            S1, H20 }

        _H20 = *(v52 + 2 * v163);
        __asm { FCVT            S20, H20 }

        _H5 = *(v52 + 2 * llroundf(fminf(fmaxf(v155, 0.0), 8191.0)));
        _H6 = *(v52 + 2 * llroundf(fminf(fmaxf(v157, 0.0), 8191.0)));
        _H18 = *(v52 + 2 * llroundf(fminf(fmaxf(v159, 0.0), 8191.0)));
        v170 = (((_S30 * _S1) + (_S29 * _S3)) + (_S31 * _S20)) + (v272 * fmaxf(_S3, fmaxf(_S1, _S20)));
        v171 = 8191.0;
        if (v170 <= 8191.0)
        {
          v171 = v170;
          if (v170 < 0.0)
          {
            v171 = 0.0;
          }
        }

        __asm
        {
          FCVT            S5, H5
          FCVT            S6, H6
          FCVT            S18, H18
        }

        _H25 = *(v50 + 2 * llroundf(v171));
        v176 = (((_S30 * _S6) + (_S29 * _S5)) + (_S31 * _S18)) + (v272 * fmaxf(_S5, fmaxf(_S6, _S18)));
        v177 = 8191.0;
        if (v176 <= 8191.0)
        {
          v177 = v176;
          if (v176 < 0.0)
          {
            v177 = 0.0;
          }
        }

        __asm { FCVT            S21, H25 }

        v179 = _S3 * _S21;
        v180 = _S1 * _S21;
        v181 = _S20 * _S21;
        LOWORD(_S21) = *(v50 + 2 * llroundf(v177));
        __asm { FCVT            S21, H21 }

        v183 = _S5 * _S21;
        _S6 = _S6 * _S21;
        _S18 = _S18 * _S21;
        v186 = ((v252 * v180) + (v179 * v253)) + (v181 * _S16);
        v187 = ((v251 * v180) + (v179 * _S24)) + (v181 * v250);
        _S1 = ((v237 * v180) + (v179 * v238)) + (v181 * v249);
        _S3 = ((v252 * _S6) + (v183 * v253)) + (_S18 * _S16);
        v190 = ((v251 * _S6) + (v183 * _S24)) + (_S18 * v250);
        _S5 = ((v237 * _S6) + (v183 * v238)) + (_S18 * v249);
        LOWORD(_S6) = *(v53 + 2 * llroundf(fminf(fmaxf(v186, 0.0), 8191.0)));
        LOWORD(_S18) = *(v53 + 2 * llroundf(fminf(fmaxf(v187, 0.0), 8191.0)));
        __asm
        {
          FCVT            S6, H6
          FCVT            S18, H18
        }

        LOWORD(_S1) = *(v53 + 2 * llroundf(fminf(fmaxf(_S1, 0.0), 8191.0)));
        __asm { FCVT            S21, H1 }

        LOWORD(_S1) = *(v53 + 2 * llroundf(fminf(fmaxf(_S3, 0.0), 8191.0)));
        __asm { FCVT            S1, H1 }

        LOWORD(_S3) = *(v53 + 2 * llroundf(fminf(fmaxf(v190, 0.0), 8191.0)));
        __asm { FCVT            S3, H3 }

        LOWORD(_S5) = *(v53 + 2 * llroundf(fminf(fmaxf(_S5, 0.0), 8191.0)));
        __asm { FCVT            S5, H5 }

        v198 = (((v265 * _S18) + (v266 * _S6)) + (v264 * _S21)) + v44;
        v199 = (((v265 * _S3) + (v266 * _S1)) + (v264 * _S5)) + v44;
        if (v198 < v44)
        {
          v200 = v44;
        }

        else
        {
          v200 = (((v265 * _S18) + (v266 * _S6)) + (v264 * _S21)) + v44;
        }

        if (v198 <= v45)
        {
          v201 = v200;
        }

        else
        {
          v201 = v45;
        }

        v105->i8[0] = llroundf(v201);
        if (v199 < v44)
        {
          v202 = v44;
        }

        else
        {
          v202 = (((v265 * _S3) + (v266 * _S1)) + (v264 * _S5)) + v44;
        }

        if (v199 > v45)
        {
          v202 = v45;
        }

        v105->i8[1] = llroundf(v202);
        v203 = _S6 + _S1;
        v204 = _S18 + _S3;
        *v99.i32 = _S21 + _S5;
        v205 = ((v273 + (v203 * *&v98)) + (v204 * a7.f32[0])) + (*v99.i32 * v260);
        v206 = v49;
        if (v205 <= v49)
        {
          v206 = ((v273 + (v203 * *&v98)) + (v204 * a7.f32[0])) + (*v99.i32 * v260);
          if (v205 < v271)
          {
            v206 = v271;
          }
        }

        _S18 = a7.f32[1];
        *v100.i32 = ((v273 + (v203 * *(&v98 + 1))) + (v204 * a7.f32[1])) + (*v99.i32 * v230);
        *v135 = llroundf(v206);
        *v60.i32 = v49;
        v34 = v152;
        if (*v100.i32 <= v49)
        {
          v60.i32[0] = v100.i32[0];
          if (*v100.i32 < v271)
          {
            *v60.i32 = v271;
          }
        }

        v135[1] = llroundf(*v60.i32);
        v135 += 2;
        v136 += 2;
        v103 = (v103 + 2);
      }

      v74 = (v74 + v24);
      v73 += v25;
      v70 = (v70 + v26);
      v69 += v27;
      ++v22;
    }

    while (v22 != v16);
  }

  if (v221 && v220)
  {
    if (v16 >= 1)
    {
      v207 = 0;
      v208 = (v221 + v217 * v218 + v219);
      do
      {
        result = memcpy(v21, v208, v13);
        v208 += v217;
        v21 += v222;
        ++v207;
      }

      while (v16 > v207);
    }
  }

  else if (v220 && v16 >= 1)
  {
    v209 = 0;
    v210 = vdupq_n_s64(v13 - 1);
    do
    {
      if (v13 >= 1)
      {
        v211 = 0;
        do
        {
          v212 = vdupq_n_s64(v211);
          v213 = vmovn_s64(vcgeq_u64(v210, vorrq_s8(v212, xmmword_18FECDDB0)));
          if (vuzp1_s8(vuzp1_s16(v213, *v210.i8), *v210.i8).u8[0])
          {
            v21[v211] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(v213, *&v210), *&v210).i8[1])
          {
            v21[v211 + 1] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(*&v210, vmovn_s64(vcgeq_u64(v210, vorrq_s8(v212, xmmword_18FECDDA0)))), *&v210).i8[2])
          {
            v21[v211 + 2] = -1;
            v21[v211 + 3] = -1;
          }

          v214 = vmovn_s64(vcgeq_u64(v210, vorrq_s8(v212, xmmword_18FECDD90)));
          if (vuzp1_s8(*&v210, vuzp1_s16(v214, *&v210)).i32[1])
          {
            v21[v211 + 4] = -1;
          }

          if (vuzp1_s8(*&v210, vuzp1_s16(v214, *&v210)).i8[5])
          {
            v21[v211 + 5] = -1;
          }

          if (vuzp1_s8(*&v210, vuzp1_s16(*&v210, vmovn_s64(vcgeq_u64(v210, vorrq_s8(v212, xmmword_18FECDD80))))).i8[6])
          {
            v21[v211 + 6] = -1;
            v21[v211 + 7] = -1;
          }

          v215 = vmovn_s64(vcgeq_u64(v210, vorrq_s8(v212, xmmword_18FECDD70)));
          if (vuzp1_s8(vuzp1_s16(v215, *v210.i8), *v210.i8).u8[0])
          {
            v21[v211 + 8] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(v215, *&v210), *&v210).i8[1])
          {
            v21[v211 + 9] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(*&v210, vmovn_s64(vcgeq_u64(v210, vorrq_s8(v212, xmmword_18FECDD60)))), *&v210).i8[2])
          {
            v21[v211 + 10] = -1;
            v21[v211 + 11] = -1;
          }

          v216 = vmovn_s64(vcgeq_u64(v210, vorrq_s8(v212, xmmword_18FECDD50)));
          if (vuzp1_s8(*&v210, vuzp1_s16(v216, *&v210)).i32[1])
          {
            v21[v211 + 12] = -1;
          }

          if (vuzp1_s8(*&v210, vuzp1_s16(v216, *&v210)).i8[5])
          {
            v21[v211 + 13] = -1;
          }

          if (vuzp1_s8(*&v210, vuzp1_s16(*&v210, vmovn_s64(vcgeq_u64(v210, vorrq_s8(v212, xmmword_18FECDD40))))).i8[6])
          {
            v21[v211 + 14] = -1;
            v21[v211 + 15] = -1;
          }

          v211 += 16;
        }

        while (((v13 + 15) & 0xFFFFFFFFFFFFFFF0) != v211);
      }

      v21 += v222;
      ++v209;
    }

    while (v16 > v209);
  }

  *(v224 + a2 + 40) = 0;
  return result;
}

uint64_t vt_Copy_444vf_TRC_Tone_Mat_TRC_422vf(uint64_t a1, uint64_t *a2, uint64_t a3, unint64_t *a4, unint64_t *a5, uint64_t *a6, uint64_t a7, unint64_t *a8, void *a9)
{
  v66 = a7;
  v67 = a3;
  v75 = a5;
  v68 = a4;
  v76 = *MEMORY[0x1E69E9840];
  v11 = *(a1 + 162);
  v13 = *a2;
  v12 = a2[1];
  v14 = a2[2];
  v65 = a2[3];
  v15 = a2[4];
  v70 = a2[5];
  v71 = v12;
  v16 = *a6;
  v69 = a6[1];
  v17 = a6[2];
  v18 = a6[3];
  v20 = a6[4];
  v19 = a6[5];
  v73 = v16;
  v74 = v19;
  v72 = v13;
  v22 = v15 + v14 != v13 || v20 + v17 != v16;
  if (v11 == 255)
  {
    v23 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v23)
    {
      v24 = 0;
LABEL_69:
      free(v23);
      return v24;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v11 + 160, a3, a4);
    v23 = (&v62 - v25);
    bzero(&v62 - v25, v26);
  }

  v64 = a1;
  v27 = a9;
  v28 = v17 - 1;
  v29 = v14 - 1;
  if (v20)
  {
    v30 = v15 + 1;
  }

  else
  {
    v29 = v14;
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
    v32 = v68;
    if (v22 || (v33 = v29 + 1 + v30, v33 > *v68) || (v34 = v68[1], v34 < 2 * v33) && v34 || (v35 = v68[2], v33 > v35) && v35 || (v36 = v28 + 1 + v31, v36 > *a8) || ((v36 + (v36 >> 63)) & 0xFFFFFFFFFFFFFFFELL) > a8[1] || (v37 = a8[2], v36 > v37) && v37)
    {
      --v28;
      --v29;
    }

    else
    {
      ++v72;
      ++v73;
      ++v29;
      ++v28;
    }
  }

  else
  {
    v32 = v68;
  }

  if (v29 + v30 > v72)
  {
    v29 = v72 - v30;
  }

  if (v28 + v31 > v73)
  {
    v28 = v73 - v31;
  }

  if (v70 + v65 <= v71)
  {
    v38 = v65;
  }

  else
  {
    v38 = v71 - v70;
  }

  if (v74 + v18 <= v69)
  {
    v39 = v18;
  }

  else
  {
    v39 = v69 - v74;
  }

  if (v29 >= v28)
  {
    v40 = v28;
  }

  else
  {
    v40 = v29;
  }

  if (v38 >= v39)
  {
    v41 = v39;
  }

  else
  {
    v41 = v38;
  }

  v42 = v70 + v41 - 1;
  v43 = v40 + v30;
  v44 = v40 + v30 + *v32 * v42;
  v45 = *v75;
  v46 = v66;
  v63 = v30;
  if (v44 > v45)
  {
    v47 = v11;
    v48 = v31;
    v49 = a8;
    v50 = a9;
    goto LABEL_62;
  }

  if (*(v67 + 8) && v32[1] * v42 + 2 * v43 > v75[1])
  {
    v47 = v11;
    v48 = v31;
    v49 = a8;
    v50 = a9;
    goto LABEL_62;
  }

  if (*(v67 + 16) && v43 + v32[2] * v42 > v75[2])
  {
    v47 = v11;
    v48 = v31;
    v49 = a8;
    v50 = a9;
    goto LABEL_62;
  }

  v51 = v74 + v41 - 1;
  v52 = v40 + v31;
  if (v40 + v31 + *a8 * v51 > *a9)
  {
    v47 = v11;
    v48 = v31;
    v49 = a8;
    v50 = a9;
    goto LABEL_62;
  }

  if (*(v66 + 8) && ((v52 + 1 + ((v52 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + a8[1] * v51 > a9[1])
  {
    v47 = v11;
    v48 = v31;
    v49 = a8;
    v50 = a9;
    goto LABEL_62;
  }

  if (*(v66 + 16) && v52 + a8[2] * v51 > a9[2])
  {
    v47 = v11;
    v48 = v31;
    v49 = a8;
    v50 = a9;
LABEL_62:
    fig_log_get_emitter();
    v24 = FigSignalErrorAtGM();
    v32 = v68;
    v27 = v50;
    a8 = v49;
    v31 = v48;
    v11 = v47;
    v30 = v63;
    if (v24)
    {
      goto LABEL_68;
    }
  }

  *v23 = v11;
  v53 = v71;
  *(v23 + 4) = v72;
  *(v23 + 12) = v53;
  *(v23 + 20) = v40;
  *(v23 + 28) = v41;
  *(v23 + 36) = v30;
  v54 = v69;
  *(v23 + 44) = v70;
  v23[11] = v54;
  v23[12] = v40;
  v23[13] = v41;
  v23[14] = v31;
  v23[7] = v67;
  v23[8] = v32;
  v55 = v73;
  v56 = v74;
  v23[9] = v75;
  v23[10] = v55;
  v23[15] = v56;
  v23[16] = v46;
  v23[17] = a8;
  v23[18] = v27;
  v23[19] = v64;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v11, global_queue, v23, vt_Copy_444vf_TRC_Tone_Mat_TRC_422vf_GCD);
  if (!v11)
  {
    return 0;
  }

  v58 = (v23 + 20);
  v59 = v11;
  while (1)
  {
    v60 = *v58++;
    v24 = v60;
    if (v60)
    {
      break;
    }

    if (!--v59)
    {
      v24 = 0;
      break;
    }
  }

LABEL_68:
  if (v11 == 255)
  {
    goto LABEL_69;
  }

  return v24;
}

uint64_t *vt_Copy_444vf_TRC_Tone_Mat_TRC_422vf_GCD(uint64_t *result, uint64_t a2, double a3, float a4, float a5)
{
  v9 = result;
  v168 = *(result + 36);
  v10 = *result;
  v11 = *(result + 28) * a2 / v10 + *(result + 44);
  v12 = result[14];
  v14 = result[12];
  v13 = result[13];
  v15 = v13 * a2 / v10;
  v16 = v15 + result[15];
  v17 = (v13 + v13 * a2) / v10 - v15;
  v18 = result[7];
  v19 = result[8];
  v20 = result[16];
  v21 = result[17];
  v22 = v19[2];
  v169 = v18[2];
  v23 = v21[2];
  v24 = v20[2];
  v25 = (v24 + v23 * v16 + v12);
  if (v17 >= 1)
  {
    v26 = 0;
    v27 = result[19];
    v28 = v14 & 0xFFFFFFFE;
    v29 = *v19;
    v30 = v19[1];
    v31 = *v21;
    v32 = v21[1];
    result = &qword_18FECD000;
    LOWORD(a4) = *(v27 + 140);
    LOWORD(a5) = *(v27 + 142);
    LOWORD(v5) = *(v27 + 144);
    LOWORD(v6) = *(v27 + 146);
    LOWORD(v7) = *(v27 + 148);
    v33 = 8191.0 / *(v27 + 128);
    v34 = LODWORD(a4);
    v35 = LODWORD(a5);
    v183 = v33 * *v27;
    v180 = v33 * *(v27 + 16);
    v181 = v33 * *(v27 + 8);
    v36 = v33 * *(v27 + 20);
    *&v37 = v33 * *(v27 + 28);
    v178 = *&v37;
    v179 = v36;
    v38 = v5;
    v39 = v6;
    v40 = v7;
    LOWORD(v37) = *(v27 + 150);
    *&v41 = v37;
    v182 = *&v41;
    LOWORD(v41) = *(v27 + 152);
    v42 = v41;
    v176 = *(v27 + 40);
    v177 = *(v27 + 36);
    v43 = *(v27 + 44);
    v44 = 0.5;
    v174 = *(v27 + 52) * 0.5;
    v175 = *(v27 + 48) * 0.5;
    v172 = *(v27 + 60) * 0.5;
    v173 = *(v27 + 56) * 0.5;
    v45 = *(v27 + 72);
    v46 = *(v27 + 68) * 0.5;
    v170 = v46;
    v171 = *(v27 + 64) * 0.5;
    v48 = *(v27 + 76);
    v47 = *(v27 + 80);
    v49 = *(v27 + 84);
    v50 = *(v27 + 88);
    v51 = *(v27 + 92);
    v52 = *(v27 + 96);
    v53 = *(v27 + 100);
    v54 = *(v27 + 104);
    v55 = v27 + 164;
    v56 = v27 + 16548;
    v57 = v20[1];
    _ZF = v57 == 0;
    v59 = v57 + v32 * v16;
    v60 = *v20 + v31 * v16;
    v61 = v27 + 32932;
    v62 = v59 + v12;
    if (_ZF)
    {
      v63 = 0;
    }

    else
    {
      v63 = v62;
    }

    v64 = (v60 + v12);
    v65 = *v18;
    v66 = v18[1];
    _ZF = v66 == 0;
    v67 = (v66 + v30 * v11 + v168);
    if (_ZF)
    {
      v68 = 0;
    }

    else
    {
      v68 = v67;
    }

    v69 = (v65 + v29 * v11 + v168);
    v70 = *(v27 + 108);
    v71 = *(v27 + 112);
    v72 = *(v27 + 116);
    v73 = *(v27 + 120);
    do
    {
      if (v28 >= 1)
      {
        v74 = 0;
        v75 = v69;
        v76 = v68;
        v77 = v64;
        do
        {
          if (v76)
          {
            LOBYTE(v46) = *v76;
            *&v78 = LODWORD(v46);
            v44 = *&v78 - v35;
            LOBYTE(v78) = v76[1];
            v79 = v78 - v35;
            v76 += 2;
            v80 = v181 * v79;
            v81 = (v179 * v79) + (v44 * v180);
            v82 = v178 * v44;
          }

          else
          {
            v82 = 0.0;
            v81 = 0.0;
            v80 = 0.0;
          }

          LOBYTE(v44) = *v75;
          v83 = v183 * (LODWORD(v44) - v34);
          v84 = v80 + v83;
          v85 = (v80 + v83) <= 8191.0;
          v86 = 8191.0;
          if (v85)
          {
            v86 = v84;
            if (v84 < 0.0)
            {
              v86 = 0.0;
            }
          }

          v87 = v81 + v83;
          v88 = 8191.0;
          if ((v81 + v83) <= 8191.0)
          {
            v88 = v81 + v83;
            if (v87 < 0.0)
            {
              v88 = 0.0;
            }
          }

          v89 = v82 + v83;
          v90 = 8191.0;
          if (v89 <= 8191.0)
          {
            v90 = v89;
            if (v89 < 0.0)
            {
              v90 = 0.0;
            }
          }

          if (v76)
          {
            LOBYTE(v89) = *v76;
            v89 = LODWORD(v89) - v35;
            LOBYTE(v87) = v76[1];
            v91 = LODWORD(v87) - v35;
            v76 += 2;
            v92 = v181 * v91;
            v93 = (v179 * v91) + (v89 * v180);
            v94 = v178 * v89;
          }

          else
          {
            v94 = 0.0;
            v93 = 0.0;
            v92 = 0.0;
          }

          LOBYTE(v89) = v75[1];
          v95 = v34;
          v96 = v183 * (LODWORD(v89) - v34);
          v97 = v92 + v96;
          v85 = (v92 + v96) <= 8191.0;
          v98 = 8191.0;
          if (v85)
          {
            v98 = v97;
            if (v97 < 0.0)
            {
              v98 = 0.0;
            }
          }

          v99 = v93 + v96;
          v85 = (v93 + v96) <= 8191.0;
          v100 = 8191.0;
          if (v85)
          {
            v100 = v99;
            if (v99 < 0.0)
            {
              v100 = 0.0;
            }
          }

          v101 = v94 + v96;
          v102 = 8191.0;
          if (v101 <= 8191.0)
          {
            v102 = v101;
            if (v101 < 0.0)
            {
              v102 = 0.0;
            }
          }

          _H0 = *(v55 + 2 * llroundf(fminf(fmaxf(v86, 0.0), 8191.0)));
          __asm { FCVT            S0, H0 }

          _H1 = *(v55 + 2 * llroundf(fminf(fmaxf(v88, 0.0), 8191.0)));
          v109 = llroundf(fminf(fmaxf(v90, 0.0), 8191.0));
          __asm { FCVT            S4, H1 }

          _H1 = *(v55 + 2 * v109);
          __asm { FCVT            S30, H1 }

          _H1 = *(v55 + 2 * llroundf(fminf(fmaxf(v98, 0.0), 8191.0)));
          _H6 = *(v55 + 2 * llroundf(fminf(fmaxf(v100, 0.0), 8191.0)));
          _H7 = *(v55 + 2 * llroundf(fminf(fmaxf(v102, 0.0), 8191.0)));
          v116 = fmaxf(_S0, fmaxf(_S4, _S30));
          v117 = (((v71 * _S4) + (v70 * _S0)) + (v72 * _S30)) + (v73 * v116);
          v118 = 8191.0;
          if (v117 <= 8191.0)
          {
            v118 = (((v71 * _S4) + (v70 * _S0)) + (v72 * _S30)) + (v73 * v116);
            if (v117 < 0.0)
            {
              v118 = 0.0;
            }
          }

          __asm
          {
            FCVT            S1, H1
            FCVT            S6, H6
            FCVT            S7, H7
          }

          _H19 = *(v56 + 2 * llroundf(v118));
          v123 = (((v71 * _S6) + (v70 * _S1)) + (v72 * _S7)) + (v73 * fmaxf(_S1, fmaxf(_S6, _S7)));
          v124 = 8191.0;
          if (v123 <= 8191.0)
          {
            v124 = v123;
            if (v123 < 0.0)
            {
              v124 = 0.0;
            }
          }

          __asm { FCVT            S3, H19 }

          v126 = _S0 * _S3;
          v127 = _S4 * _S3;
          v128 = _S30 * _S3;
          _H17 = *(v56 + 2 * llroundf(v124));
          __asm { FCVT            S17, H17 }

          v131 = _S1 * _S17;
          _S6 = _S6 * _S17;
          _S7 = _S7 * _S17;
          v134 = ((v48 * v127) + (v126 * v45)) + (v128 * v47);
          v135 = ((v50 * v127) + (v126 * v49)) + (v128 * v51);
          _S0 = ((v53 * v127) + (v126 * v52)) + (v128 * v54);
          v137 = ((v48 * _S6) + (v131 * v45)) + (_S7 * v47);
          _S4 = ((v50 * _S6) + (v131 * v49)) + (_S7 * v51);
          _S1 = ((v53 * _S6) + (v131 * v52)) + (_S7 * v54);
          LOWORD(_S6) = *(v61 + 2 * llroundf(fminf(fmaxf(v134, 0.0), 8191.0)));
          LOWORD(_S7) = *(v61 + 2 * llroundf(fminf(fmaxf(v135, 0.0), 8191.0)));
          __asm
          {
            FCVT            S6, H6
            FCVT            S7, H7
          }

          LOWORD(_S0) = *(v61 + 2 * llroundf(fminf(fmaxf(_S0, 0.0), 8191.0)));
          v142 = llroundf(fminf(fmaxf(v137, 0.0), 8191.0));
          __asm { FCVT            S3, H0 }

          LOWORD(_S0) = *(v61 + 2 * v142);
          __asm { FCVT            S0, H0 }

          LOWORD(_S4) = *(v61 + 2 * llroundf(fminf(fmaxf(_S4, 0.0), 8191.0)));
          __asm { FCVT            S4, H4 }

          LOWORD(_S1) = *(v61 + 2 * llroundf(fminf(fmaxf(_S1, 0.0), 8191.0)));
          __asm { FCVT            S17, H1 }

          v147 = (((v176 * _S7) + (v177 * _S6)) + (v43 * _S3)) + v38;
          v148 = (((v176 * _S4) + (v177 * _S0)) + (v43 * _S17)) + v38;
          if (v147 < v38)
          {
            v149 = v38;
          }

          else
          {
            v149 = (((v176 * _S7) + (v177 * _S6)) + (v43 * _S3)) + v38;
          }

          if (v147 <= v40)
          {
            v150 = v149;
          }

          else
          {
            v150 = v40;
          }

          *v77 = llroundf(v150);
          if (v148 < v38)
          {
            v151 = v38;
          }

          else
          {
            v151 = (((v176 * _S4) + (v177 * _S0)) + (v43 * _S17)) + v38;
          }

          if (v148 > v40)
          {
            v151 = v40;
          }

          v77[1] = llroundf(v151);
          v152 = _S6 + _S0;
          v153 = _S7 + _S4;
          v154 = (v39 + (v152 * v175)) + ((_S7 + _S4) * v174);
          v155 = _S3 + _S17;
          v156 = v154 + ((_S3 + _S17) * v173);
          v157 = v42;
          if (v156 <= v42)
          {
            v157 = v156;
            if (v156 < v182)
            {
              v157 = v182;
            }
          }

          v46 = ((v39 + (v152 * v172)) + (v153 * v171)) + (v155 * v170);
          *(v63 + v74) = llroundf(v157);
          v44 = v42;
          v34 = v95;
          if (v46 <= v42)
          {
            v44 = v46;
            if (v46 < v182)
            {
              v44 = v182;
            }
          }

          *(v63 + v74 + 1) = llroundf(v44);
          v74 += 2;
          v75 += 2;
          v77 += 2;
        }

        while (v74 < v28);
      }

      v69 += v29;
      v68 += v30;
      v64 += v31;
      v63 += v32;
      ++v26;
    }

    while (v26 != v17);
  }

  if (v169 && v24)
  {
    if (v17 >= 1)
    {
      v158 = 0;
      v159 = (v169 + v22 * v11 + v168);
      do
      {
        result = memcpy(v25, v159, v14);
        v159 += v22;
        v25 += v23;
        ++v158;
      }

      while (v17 > v158);
    }
  }

  else if (v24 && v17 >= 1)
  {
    v160 = 0;
    v161 = vdupq_n_s64(v14 - 1);
    do
    {
      if (v14 >= 1)
      {
        v162 = 0;
        do
        {
          v163 = vdupq_n_s64(v162);
          v164 = vmovn_s64(vcgeq_u64(v161, vorrq_s8(v163, xmmword_18FECDDB0)));
          if (vuzp1_s8(vuzp1_s16(v164, *v161.i8), *v161.i8).u8[0])
          {
            v25[v162] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(v164, *&v161), *&v161).i8[1])
          {
            v25[v162 + 1] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(*&v161, vmovn_s64(vcgeq_u64(v161, vorrq_s8(v163, xmmword_18FECDDA0)))), *&v161).i8[2])
          {
            v25[v162 + 2] = -1;
            v25[v162 + 3] = -1;
          }

          v165 = vmovn_s64(vcgeq_u64(v161, vorrq_s8(v163, xmmword_18FECDD90)));
          if (vuzp1_s8(*&v161, vuzp1_s16(v165, *&v161)).i32[1])
          {
            v25[v162 + 4] = -1;
          }

          if (vuzp1_s8(*&v161, vuzp1_s16(v165, *&v161)).i8[5])
          {
            v25[v162 + 5] = -1;
          }

          if (vuzp1_s8(*&v161, vuzp1_s16(*&v161, vmovn_s64(vcgeq_u64(v161, vorrq_s8(v163, xmmword_18FECDD80))))).i8[6])
          {
            v25[v162 + 6] = -1;
            v25[v162 + 7] = -1;
          }

          v166 = vmovn_s64(vcgeq_u64(v161, vorrq_s8(v163, xmmword_18FECDD70)));
          if (vuzp1_s8(vuzp1_s16(v166, *v161.i8), *v161.i8).u8[0])
          {
            v25[v162 + 8] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(v166, *&v161), *&v161).i8[1])
          {
            v25[v162 + 9] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(*&v161, vmovn_s64(vcgeq_u64(v161, vorrq_s8(v163, xmmword_18FECDD60)))), *&v161).i8[2])
          {
            v25[v162 + 10] = -1;
            v25[v162 + 11] = -1;
          }

          v167 = vmovn_s64(vcgeq_u64(v161, vorrq_s8(v163, xmmword_18FECDD50)));
          if (vuzp1_s8(*&v161, vuzp1_s16(v167, *&v161)).i32[1])
          {
            v25[v162 + 12] = -1;
          }

          if (vuzp1_s8(*&v161, vuzp1_s16(v167, *&v161)).i8[5])
          {
            v25[v162 + 13] = -1;
          }

          if (vuzp1_s8(*&v161, vuzp1_s16(*&v161, vmovn_s64(vcgeq_u64(v161, vorrq_s8(v163, xmmword_18FECDD40))))).i8[6])
          {
            v25[v162 + 14] = -1;
            v25[v162 + 15] = -1;
          }

          v162 += 16;
        }

        while (((v14 + 15) & 0xFFFFFFFFFFFFFFF0) != v162);
      }

      v25 += v23;
      ++v160;
    }

    while (v17 > v160);
  }

  *(v9 + a2 + 40) = 0;
  return result;
}

uint64_t vt_Copy_444vf_TRC_Mat_TRC_422vf_neon_fp16(uint64_t a1, uint64_t *a2, uint64_t a3, unint64_t *a4, unint64_t *a5, uint64_t *a6, uint64_t a7, unint64_t *a8, void *a9)
{
  v66 = a7;
  v67 = a3;
  v75 = a5;
  v68 = a4;
  v76 = *MEMORY[0x1E69E9840];
  v11 = *(a1 + 162);
  v13 = *a2;
  v12 = a2[1];
  v14 = a2[2];
  v65 = a2[3];
  v15 = a2[4];
  v70 = a2[5];
  v71 = v12;
  v16 = *a6;
  v69 = a6[1];
  v17 = a6[2];
  v18 = a6[3];
  v20 = a6[4];
  v19 = a6[5];
  v73 = v16;
  v74 = v19;
  v72 = v13;
  v22 = v15 + v14 != v13 || v20 + v17 != v16;
  if (v11 == 255)
  {
    v23 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v23)
    {
      v24 = 0;
LABEL_69:
      free(v23);
      return v24;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v11 + 160, a3, a4);
    v23 = (&v62 - v25);
    bzero(&v62 - v25, v26);
  }

  v64 = a1;
  v27 = a9;
  v28 = v17 - 1;
  v29 = v14 - 1;
  if (v20)
  {
    v30 = v15 + 1;
  }

  else
  {
    v29 = v14;
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
    v32 = v68;
    if (v22 || (v33 = v29 + 1 + v30, v33 > *v68) || (v34 = v68[1], v34 < 2 * v33) && v34 || (v35 = v68[2], v33 > v35) && v35 || (v36 = v28 + 1 + v31, v36 > *a8) || ((v36 + (v36 >> 63)) & 0xFFFFFFFFFFFFFFFELL) > a8[1] || (v37 = a8[2], v36 > v37) && v37)
    {
      --v28;
      --v29;
    }

    else
    {
      ++v72;
      ++v73;
      ++v29;
      ++v28;
    }
  }

  else
  {
    v32 = v68;
  }

  if (v29 + v30 > v72)
  {
    v29 = v72 - v30;
  }

  if (v28 + v31 > v73)
  {
    v28 = v73 - v31;
  }

  if (v70 + v65 <= v71)
  {
    v38 = v65;
  }

  else
  {
    v38 = v71 - v70;
  }

  if (v74 + v18 <= v69)
  {
    v39 = v18;
  }

  else
  {
    v39 = v69 - v74;
  }

  if (v29 >= v28)
  {
    v40 = v28;
  }

  else
  {
    v40 = v29;
  }

  if (v38 >= v39)
  {
    v41 = v39;
  }

  else
  {
    v41 = v38;
  }

  v42 = v70 + v41 - 1;
  v43 = v40 + v30;
  v44 = v40 + v30 + *v32 * v42;
  v45 = *v75;
  v46 = v66;
  v63 = v30;
  if (v44 > v45)
  {
    v47 = v11;
    v48 = v31;
    v49 = a8;
    v50 = a9;
    goto LABEL_62;
  }

  if (*(v67 + 8) && v32[1] * v42 + 2 * v43 > v75[1])
  {
    v47 = v11;
    v48 = v31;
    v49 = a8;
    v50 = a9;
    goto LABEL_62;
  }

  if (*(v67 + 16) && v43 + v32[2] * v42 > v75[2])
  {
    v47 = v11;
    v48 = v31;
    v49 = a8;
    v50 = a9;
    goto LABEL_62;
  }

  v51 = v74 + v41 - 1;
  v52 = v40 + v31;
  if (v40 + v31 + *a8 * v51 > *a9)
  {
    v47 = v11;
    v48 = v31;
    v49 = a8;
    v50 = a9;
    goto LABEL_62;
  }

  if (*(v66 + 8) && ((v52 + 1 + ((v52 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + a8[1] * v51 > a9[1])
  {
    v47 = v11;
    v48 = v31;
    v49 = a8;
    v50 = a9;
    goto LABEL_62;
  }

  if (*(v66 + 16) && v52 + a8[2] * v51 > a9[2])
  {
    v47 = v11;
    v48 = v31;
    v49 = a8;
    v50 = a9;
LABEL_62:
    fig_log_get_emitter();
    v24 = FigSignalErrorAtGM();
    v32 = v68;
    v27 = v50;
    a8 = v49;
    v31 = v48;
    v11 = v47;
    v30 = v63;
    if (v24)
    {
      goto LABEL_68;
    }
  }

  *v23 = v11;
  v53 = v71;
  *(v23 + 4) = v72;
  *(v23 + 12) = v53;
  *(v23 + 20) = v40;
  *(v23 + 28) = v41;
  *(v23 + 36) = v30;
  v54 = v69;
  *(v23 + 44) = v70;
  v23[11] = v54;
  v23[12] = v40;
  v23[13] = v41;
  v23[14] = v31;
  v23[7] = v67;
  v23[8] = v32;
  v55 = v73;
  v56 = v74;
  v23[9] = v75;
  v23[10] = v55;
  v23[15] = v56;
  v23[16] = v46;
  v23[17] = a8;
  v23[18] = v27;
  v23[19] = v64;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v11, global_queue, v23, vt_Copy_444vf_TRC_Mat_TRC_422vf_neon_fp16_GCD);
  if (!v11)
  {
    return 0;
  }

  v58 = (v23 + 20);
  v59 = v11;
  while (1)
  {
    v60 = *v58++;
    v24 = v60;
    if (v60)
    {
      break;
    }

    if (!--v59)
    {
      v24 = 0;
      break;
    }
  }

LABEL_68:
  if (v11 == 255)
  {
    goto LABEL_69;
  }

  return v24;
}

uint64_t *vt_Copy_444vf_TRC_Mat_TRC_422vf_neon_fp16_GCD(uint64_t *result, uint64_t a2, double a3, double a4, double a5, double a6, double a7, double a8, float32x4_t a9)
{
  v11 = *result;
  v191 = *(result + 28) * a2 / v11 + *(result + 44);
  v192 = *(result + 36);
  v12 = result[14];
  v14 = result[12];
  v13 = result[13];
  v196 = result;
  v15 = v13 * a2 / v11;
  v16 = v15 + result[15];
  v17 = (v13 + v13 * a2) / v11 - v15;
  v18 = result[7];
  v19 = result[8];
  v20 = result[16];
  v21 = result[17];
  v190 = v19[2];
  v22 = v21[2];
  v193 = v20[2];
  v194 = v18[2];
  v23 = (v193 + v22 * v16 + v12);
  if (v17 >= 1)
  {
    v24 = 0;
    v25 = result[19];
    v26 = *v19;
    v27 = v19[1];
    v28 = *v21;
    v29 = v21[1];
    v30 = *(v25 + 140);
    v31 = *(v25 + 142);
    v32 = *(v25 + 144);
    v33 = *(v25 + 146);
    result = &qword_18FECD000;
    v34 = 8191.0 / *(v25 + 128);
    v232 = v30;
    v35 = v31;
    _S21 = v34 * *v25;
    v37 = *(v25 + 148);
    v38 = *(v25 + 150);
    v39 = *(v25 + 152);
    _S22 = v34 * *(v25 + 8);
    _S25 = v34 * *(v25 + 16);
    _S27 = v34 * *(v25 + 20);
    _S28 = *(v25 + 36);
    _S16 = *(v25 + 40);
    _S17 = *(v25 + 44);
    v45.i32[0] = *(v25 + 48);
    a9.i32[0] = *(v25 + 52);
    v47.i32[0] = *(v25 + 56);
    *v10.i16 = v30;
    v225 = vdupq_lane_s16(v10, 0);
    _S19 = *(v25 + 72);
    _S20 = *(v25 + 76);
    *v10.i16 = -v31;
    v201 = vdupq_lane_s16(v10, 0);
    _S4 = v34 * *(v25 + 28);
    v45.i32[1] = *(v25 + 60);
    *v9.f32 = vmul_f32(v45, 0x3F0000003F000000);
    v224 = vdupq_lane_s32(vcvt_f16_f32(v9), 0);
    a9.i32[1] = *(v25 + 64);
    *a9.f32 = vmul_f32(*a9.f32, 0x3F0000003F000000);
    v51 = vdupq_lane_s32(vcvt_f16_f32(a9), 0);
    v222 = v51;
    v47.i32[1] = *(v25 + 68);
    *v51.f32 = vmul_f32(v47, 0x3F0000003F000000);
    v52 = vcvt_f16_f32(v51);
    v53 = vdupq_lane_s32(v52, 0);
    *v52.i16 = v32;
    v54 = vdupq_lane_s16(v52, 0);
    _S30 = *(v25 + 80);
    _S31 = *(v25 + 84);
    _S8 = *(v25 + 88);
    _S9 = *(v25 + 92);
    _S10 = *(v25 + 96);
    _S11 = *(v25 + 100);
    v61 = v25 + 164;
    v62 = v25 + 16548;
    *v52.i16 = v33;
    v63 = vdupq_lane_s16(v52, 0);
    v219 = v63;
    v220 = v53;
    *v63.i16 = v37;
    v64 = vdupq_lane_s16(*v63.i8, 0);
    *v63.i16 = v38;
    v65 = vdupq_lane_s16(*v63.i8, 0);
    v217 = v65;
    v218 = v64;
    *v65.i16 = v39;
    _Q1 = vdupq_lane_s16(*v65.i8, 0);
    v216 = _Q1;
    v68 = *v20;
    v67 = v20[1];
    v69 = (v67 + v29 * v16 + v12);
    if (!v67)
    {
      v69 = 0;
    }

    v70 = (v68 + v28 * v16 + v12);
    v71 = *v18;
    v72 = v18[1];
    v73 = (v72 + v27 * v191 + v192);
    if (!v72)
    {
      v73 = 0;
    }

    v74 = (v71 + v26 * v191 + v192);
    v75 = v32;
    v76 = v33;
    v77 = v37;
    *_Q1.i32 = v38;
    v231 = v38;
    v78 = v39;
    v79 = _S21;
    __asm { FCVT            H13, S21 }

    v227 = _S4;
    __asm { FCVT            H1, S4 }

    v200 = *_Q1.i16;
    v229 = _S25;
    __asm { FCVT            H1, S25 }

    v199 = *_Q1.i16;
    v228 = _S27;
    __asm { FCVT            H1, S27 }

    v198 = *_Q1.i16;
    v230 = _S22;
    __asm { FCVT            H1, S22 }

    v197 = *_Q1.i16;
    v226 = *(v25 + 36);
    __asm { FCVT            H1, S28 }

    v215 = *_Q1.i16;
    __asm { FCVT            H1, S16 }

    v214 = *_Q1.i16;
    __asm { FCVT            H1, S17 }

    v213 = *_Q1.i16;
    __asm { FCVT            H1, S19 }

    v212 = *_Q1.i16;
    __asm { FCVT            H1, S20 }

    v211 = *_Q1.i16;
    __asm { FCVT            H1, S30 }

    v210 = *_Q1.i16;
    _S27 = *(v25 + 104);
    __asm { FCVT            H1, S31 }

    v209 = *_Q1.i16;
    __asm { FCVT            H1, S8 }

    v208 = *_Q1.i16;
    __asm { FCVT            H1, S9 }

    v207 = *_Q1.i16;
    __asm { FCVT            H1, S10 }

    v206 = *_Q1.i16;
    __asm { FCVT            H1, S11 }

    v205 = *_Q1.i16;
    __asm { FCVT            H1, S27 }

    v204 = _Q1;
    v223 = a9.f32[0];
    v86.i32[0] = v51.i32[1];
    v202 = v51.f32[1];
    v221 = v51.f32[0];
    v203 = a9.f32[1];
    v87.i64[0] = 0x9000900090009000;
    v87.i64[1] = 0x9000900090009000;
    do
    {
      if (v14 < 8)
      {
        v119 = 0;
        v118 = v69;
        v91 = v70;
        v90 = v73;
        v89 = v74;
      }

      else
      {
        v88 = 0;
        v89 = v74;
        v90 = v73;
        v91 = v70;
        do
        {
          if (v90)
          {
            v233 = vld2_s8(v90);
            v90 += 16;
            *v92.i8 = vzip1_s8(*v233.i8, 0);
            v92.u64[1] = vzip2_s8(*v233.i8, 0);
            *v93.i8 = vzip1_s8(v233.u64[1], 0);
            v93.u64[1] = vzip2_s8(v233.u64[1], 0);
            v94 = vaddq_f16(v201, vcvtq_f16_u16(v92));
            v233 = vaddq_f16(v201, vcvtq_f16_u16(v93));
            v95 = vmulq_n_f16(v233, v197);
            v96 = vmlaq_n_f16(vmulq_n_f16(v94, v199), v233, v198);
            v97 = vmulq_n_f16(v94, v200);
          }

          else
          {
            v97 = 0uLL;
            v96 = 0uLL;
            v95 = 0uLL;
          }

          v98 = *v89++;
          *v99.i8 = vzip1_s8(v98, 0);
          v99.u64[1] = vzip2_s8(v98, 0);
          v100 = vsubq_f16(vcvtq_f16_u16(v99), v225);
          v101 = vmlaq_n_f16(v96, v100, _H13);
          v102 = vmlaq_n_f16(v97, v100, _H13);
          v103 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(v95, v100, _H13), 0), v87));
          v104.i16[0] = *(v61 + 2 * v103.u16[0]);
          v104.i16[1] = *(v61 + 2 * v103.u16[1]);
          v104.i16[2] = *(v61 + 2 * v103.u16[2]);
          v104.i16[3] = *(v61 + 2 * v103.u16[3]);
          v104.i16[4] = *(v61 + 2 * v103.u16[4]);
          v104.i16[5] = *(v61 + 2 * v103.u16[5]);
          v104.i16[6] = *(v61 + 2 * v103.u16[6]);
          v104.i16[7] = *(v61 + 2 * v103.u16[7]);
          v105 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v101, 0), v87));
          v101.i16[0] = *(v61 + 2 * v105.u16[0]);
          v101.i16[1] = *(v61 + 2 * v105.u16[1]);
          v101.i16[2] = *(v61 + 2 * v105.u16[2]);
          v101.i16[3] = *(v61 + 2 * v105.u16[3]);
          v101.i16[4] = *(v61 + 2 * v105.u16[4]);
          v101.i16[5] = *(v61 + 2 * v105.u16[5]);
          v101.i16[6] = *(v61 + 2 * v105.u16[6]);
          v101.i16[7] = *(v61 + 2 * v105.u16[7]);
          v106 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v102, 0), v87));
          v99.i16[0] = *(v61 + 2 * v106.u16[0]);
          v99.i16[1] = *(v61 + 2 * v106.u16[1]);
          v99.i16[2] = *(v61 + 2 * v106.u16[2]);
          v99.i16[3] = *(v61 + 2 * v106.u16[3]);
          v99.i16[4] = *(v61 + 2 * v106.u16[4]);
          v99.i16[5] = *(v61 + 2 * v106.u16[5]);
          v99.i16[6] = *(v61 + 2 * v106.u16[6]);
          v99.i16[7] = *(v61 + 2 * v106.u16[7]);
          v107 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v104, v209), v101, v208), v99, v207);
          v102.i16[7] = v204.i16[7];
          v108 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v104, v212), v101, v211), v99, v210), 0), v87));
          v109 = vmlaq_n_f16(vmulq_n_f16(v99, *v204.i16), v101, v205);
          v102.i16[0] = *(v62 + 2 * v108.u16[0]);
          v102.i16[1] = *(v62 + 2 * v108.u16[1]);
          v102.i16[2] = *(v62 + 2 * v108.u16[2]);
          v102.i16[3] = *(v62 + 2 * v108.u16[3]);
          v102.i16[4] = *(v62 + 2 * v108.u16[4]);
          v102.i16[5] = *(v62 + 2 * v108.u16[5]);
          v102.i16[6] = *(v62 + 2 * v108.u16[6]);
          v110 = v102;
          v110.i16[7] = *(v62 + 2 * v108.u16[7]);
          v111 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v107, 0), v87));
          v107.i16[0] = *(v62 + 2 * v111.u16[0]);
          v107.i16[1] = *(v62 + 2 * v111.u16[1]);
          v107.i16[2] = *(v62 + 2 * v111.u16[2]);
          v107.i16[3] = *(v62 + 2 * v111.u16[3]);
          v107.i16[4] = *(v62 + 2 * v111.u16[4]);
          v107.i16[5] = *(v62 + 2 * v111.u16[5]);
          v107.i16[6] = *(v62 + 2 * v111.u16[6]);
          v112 = vmlaq_n_f16(v109, v104, v206);
          v113 = v107;
          v113.i16[7] = *(v62 + 2 * v111.u16[7]);
          v114 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v112, 0), v87));
          v112.i16[0] = *(v62 + 2 * v114.u16[0]);
          v112.i16[1] = *(v62 + 2 * v114.u16[1]);
          v112.i16[2] = *(v62 + 2 * v114.u16[2]);
          v112.i16[3] = *(v62 + 2 * v114.u16[3]);
          v112.i16[4] = *(v62 + 2 * v114.u16[4]);
          v112.i16[5] = *(v62 + 2 * v114.u16[5]);
          v112.i16[6] = *(v62 + 2 * v114.u16[6]);
          v115 = (v62 + 2 * v114.u16[7]);
          v116 = vtrn1q_s16(v112, v112);
          v112.i16[7] = *v115;
          *v91++ = vmovn_s16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v54, v110, v215), v113, v214), v112, v213), v54), v218)));
          v51 = vaddq_f16(vuzp1q_s16(v102, v107), vuzp2q_s16(v110, v113));
          v117 = vmlaq_f16(vmlaq_f16(vmlaq_f16(v219, v224, vzip1q_s16(v51, v51)), v222, vzip2q_s16(v51, v51)), v220, vaddq_f16(v116, vtrn2q_s16(v112, v112)));
          v51.i32[0] = v216.i32[0];
          v86 = vmovn_s16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(v117, v217), v216)));
          *&v69[v88] = v86;
          v88 += 8;
        }

        while (v88 < v14 - 7);
        v118 = &v69[v88];
        v119 = v14 & 0xFFFFFFF8;
      }

      while (v119 < (v14 & 0xFFFFFFFE))
      {
        if (v90)
        {
          v86.i8[0] = *v90;
          *v86.i32 = v86.u32[0] - v35;
          v51.i8[0] = v90[1];
          v120 = v51.u32[0] - v35;
          v121 = v90 + 2;
          v122 = v230 * v120;
          v123 = (v228 * v120) + (*v86.i32 * v229);
          v124 = v227 * *v86.i32;
        }

        else
        {
          v121 = 0;
          v124 = 0.0;
          v123 = 0.0;
          v122 = 0.0;
        }

        v86.i8[0] = v89->i8[0];
        *v86.i32 = v79 * (v86.u32[0] - v232);
        v125 = v122 + *v86.i32;
        v126 = (v122 + *v86.i32) <= 8191.0;
        v127 = 8191.0;
        if (v126)
        {
          v127 = v125;
          if (v125 < 0.0)
          {
            v127 = 0.0;
          }
        }

        v128 = v123 + *v86.i32;
        v129 = 8191.0;
        if ((v123 + *v86.i32) <= 8191.0)
        {
          v129 = v123 + *v86.i32;
          if (v128 < 0.0)
          {
            v129 = 0.0;
          }
        }

        v130 = v124 + *v86.i32;
        v131 = 8191.0;
        if (v130 <= 8191.0)
        {
          v131 = v130;
          if (v130 < 0.0)
          {
            v131 = 0.0;
          }
        }

        if (v121)
        {
          LOBYTE(v130) = *v121;
          v130 = LODWORD(v130) - v35;
          LOBYTE(v128) = v121[1];
          v132 = LODWORD(v128) - v35;
          v90 = v121 + 2;
          v133 = v230 * v132;
          v134 = (v228 * v132) + (v130 * v229);
          v135 = v227 * v130;
        }

        else
        {
          v90 = 0;
          v135 = 0.0;
          v134 = 0.0;
          v133 = 0.0;
        }

        LOBYTE(v130) = v89->i8[1];
        v136 = v79 * (LODWORD(v130) - v232);
        v137 = 8191.0;
        if ((v133 + v136) <= 8191.0)
        {
          v137 = v133 + v136;
          if ((v133 + v136) < 0.0)
          {
            v137 = 0.0;
          }
        }

        v138 = v134 + v136;
        v126 = (v134 + v136) <= 8191.0;
        v139 = 8191.0;
        if (v126)
        {
          v139 = v138;
          if (v138 < 0.0)
          {
            v139 = 0.0;
          }
        }

        v140 = v135 + v136;
        v141 = 8191.0;
        if (v140 <= 8191.0)
        {
          v141 = v140;
          if (v140 < 0.0)
          {
            v141 = 0.0;
          }
        }

        _H1 = *(v61 + 2 * llroundf(fminf(fmaxf(v127, 0.0), 8191.0)));
        _H4 = *(v61 + 2 * llroundf(fminf(fmaxf(v129, 0.0), 8191.0)));
        __asm
        {
          FCVT            S1, H1
          FCVT            S4, H4
        }

        _H6 = *(v61 + 2 * llroundf(fminf(fmaxf(v131, 0.0), 8191.0)));
        v147 = llroundf(fminf(fmaxf(v137, 0.0), 8191.0));
        __asm { FCVT            S3, H6 }

        _H6 = *(v61 + 2 * v147);
        __asm { FCVT            S6, H6 }

        _H21 = *(v61 + 2 * llroundf(fminf(fmaxf(v139, 0.0), 8191.0)));
        __asm { FCVT            S21, H21 }

        _H22 = *(v61 + 2 * llroundf(fminf(fmaxf(v141, 0.0), 8191.0)));
        __asm { FCVT            S22, H22 }

        v155 = ((_S20 * _S4) + (_S1 * _S19)) + (_S3 * _S30);
        v156 = ((_S8 * _S4) + (_S1 * _S31)) + (_S3 * _S9);
        _S1 = ((_S11 * _S4) + (_S1 * _S10)) + (_S3 * _S27);
        v158 = ((_S20 * _S21) + (_S6 * _S19)) + (_S22 * _S30);
        _S4 = ((_S8 * _S21) + (_S6 * _S31)) + (_S22 * _S9);
        v160 = ((_S11 * _S21) + (_S6 * _S10)) + (_S22 * _S27);
        LOWORD(_S21) = *(v62 + 2 * llroundf(fminf(fmaxf(v155, 0.0), 8191.0)));
        LOWORD(_S22) = *(v62 + 2 * llroundf(fminf(fmaxf(v156, 0.0), 8191.0)));
        __asm
        {
          FCVT            S21, H21
          FCVT            S22, H22
        }

        LOWORD(_S1) = *(v62 + 2 * llroundf(fminf(fmaxf(_S1, 0.0), 8191.0)));
        v163 = llroundf(fminf(fmaxf(v158, 0.0), 8191.0));
        __asm { FCVT            S3, H1 }

        LOWORD(_S1) = *(v62 + 2 * v163);
        __asm { FCVT            S1, H1 }

        LOWORD(_S4) = *(v62 + 2 * llroundf(fminf(fmaxf(_S4, 0.0), 8191.0)));
        __asm { FCVT            S4, H4 }

        _H5 = *(v62 + 2 * llroundf(fminf(fmaxf(v160, 0.0), 8191.0)));
        __asm { FCVT            S5, H5 }

        v169 = (((_S16 * _S22) + (v226 * _S21)) + (_S17 * _S3)) + v75;
        v170 = (((_S16 * _S4) + (v226 * _S1)) + (_S17 * _S5)) + v75;
        if (v169 < v75)
        {
          v171 = v75;
        }

        else
        {
          v171 = (((_S16 * _S22) + (v226 * _S21)) + (_S17 * _S3)) + v75;
        }

        if (v169 <= v77)
        {
          v172 = v171;
        }

        else
        {
          v172 = v77;
        }

        v91->i8[0] = llroundf(v172);
        if (v170 < v75)
        {
          v173 = v75;
        }

        else
        {
          v173 = (((_S16 * _S4) + (v226 * _S1)) + (_S17 * _S5)) + v75;
        }

        if (v170 > v77)
        {
          v173 = v77;
        }

        v91->i8[1] = llroundf(v173);
        v174 = _S21 + _S1;
        v175 = _S22 + _S4;
        v176 = _S3 + _S5;
        v177 = ((v76 + (v174 * v9.f32[0])) + (v175 * v223)) + (v176 * v221);
        v178 = v78;
        if (v177 <= v78)
        {
          v178 = ((v76 + (v174 * v9.f32[0])) + (v175 * v223)) + (v176 * v221);
          if (v177 < v231)
          {
            v178 = v231;
          }
        }

        v51.f32[0] = v202;
        *v86.i32 = ((v76 + (v174 * v9.f32[1])) + (v175 * v203)) + (v176 * v202);
        *v118 = llroundf(v178);
        v179 = v78;
        if (*v86.i32 <= v78)
        {
          v51.f32[0] = v231;
          v179 = *v86.i32;
          if (*v86.i32 < v231)
          {
            v179 = v231;
          }
        }

        v118[1] = llroundf(v179);
        v118 += 2;
        v119 += 2;
        v89 = (v89 + 2);
        v91 = (v91 + 2);
      }

      v74 = (v74 + v26);
      v73 += v27;
      v70 = (v70 + v28);
      v69 += v29;
      ++v24;
    }

    while (v24 != v17);
  }

  if (v194 && v193)
  {
    if (v17 >= 1)
    {
      v180 = 0;
      v181 = (v194 + v190 * v191 + v192);
      do
      {
        result = memcpy(v23, v181, v14);
        v181 += v190;
        v23 += v22;
        ++v180;
      }

      while (v17 > v180);
    }
  }

  else if (v193 && v17 >= 1)
  {
    v182 = 0;
    v183 = vdupq_n_s64(v14 - 1);
    do
    {
      if (v14 >= 1)
      {
        v184 = 0;
        do
        {
          v185 = vdupq_n_s64(v184);
          v186 = vmovn_s64(vcgeq_u64(v183, vorrq_s8(v185, xmmword_18FECDDB0)));
          if (vuzp1_s8(vuzp1_s16(v186, *v183.i8), *v183.i8).u8[0])
          {
            v23[v184] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(v186, *&v183), *&v183).i8[1])
          {
            v23[v184 + 1] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(*&v183, vmovn_s64(vcgeq_u64(v183, vorrq_s8(v185, xmmword_18FECDDA0)))), *&v183).i8[2])
          {
            v23[v184 + 2] = -1;
            v23[v184 + 3] = -1;
          }

          v187 = vmovn_s64(vcgeq_u64(v183, vorrq_s8(v185, xmmword_18FECDD90)));
          if (vuzp1_s8(*&v183, vuzp1_s16(v187, *&v183)).i32[1])
          {
            v23[v184 + 4] = -1;
          }

          if (vuzp1_s8(*&v183, vuzp1_s16(v187, *&v183)).i8[5])
          {
            v23[v184 + 5] = -1;
          }

          if (vuzp1_s8(*&v183, vuzp1_s16(*&v183, vmovn_s64(vcgeq_u64(v183, vorrq_s8(v185, xmmword_18FECDD80))))).i8[6])
          {
            v23[v184 + 6] = -1;
            v23[v184 + 7] = -1;
          }

          v188 = vmovn_s64(vcgeq_u64(v183, vorrq_s8(v185, xmmword_18FECDD70)));
          if (vuzp1_s8(vuzp1_s16(v188, *v183.i8), *v183.i8).u8[0])
          {
            v23[v184 + 8] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(v188, *&v183), *&v183).i8[1])
          {
            v23[v184 + 9] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(*&v183, vmovn_s64(vcgeq_u64(v183, vorrq_s8(v185, xmmword_18FECDD60)))), *&v183).i8[2])
          {
            v23[v184 + 10] = -1;
            v23[v184 + 11] = -1;
          }

          v189 = vmovn_s64(vcgeq_u64(v183, vorrq_s8(v185, xmmword_18FECDD50)));
          if (vuzp1_s8(*&v183, vuzp1_s16(v189, *&v183)).i32[1])
          {
            v23[v184 + 12] = -1;
          }

          if (vuzp1_s8(*&v183, vuzp1_s16(v189, *&v183)).i8[5])
          {
            v23[v184 + 13] = -1;
          }

          if (vuzp1_s8(*&v183, vuzp1_s16(*&v183, vmovn_s64(vcgeq_u64(v183, vorrq_s8(v185, xmmword_18FECDD40))))).i8[6])
          {
            v23[v184 + 14] = -1;
            v23[v184 + 15] = -1;
          }

          v184 += 16;
        }

        while (((v14 + 15) & 0xFFFFFFFFFFFFFFF0) != v184);
      }

      v23 += v22;
      ++v182;
    }

    while (v17 > v182);
  }

  *(v196 + a2 + 40) = 0;
  return result;
}

uint64_t vt_Copy_444vf_TRC_Mat_TRC_422vf(uint64_t a1, uint64_t *a2, uint64_t a3, unint64_t *a4, unint64_t *a5, uint64_t *a6, uint64_t a7, unint64_t *a8, void *a9)
{
  v66 = a7;
  v67 = a3;
  v75 = a5;
  v68 = a4;
  v76 = *MEMORY[0x1E69E9840];
  v11 = *(a1 + 162);
  v13 = *a2;
  v12 = a2[1];
  v14 = a2[2];
  v65 = a2[3];
  v15 = a2[4];
  v70 = a2[5];
  v71 = v12;
  v16 = *a6;
  v69 = a6[1];
  v17 = a6[2];
  v18 = a6[3];
  v20 = a6[4];
  v19 = a6[5];
  v73 = v16;
  v74 = v19;
  v72 = v13;
  v22 = v15 + v14 != v13 || v20 + v17 != v16;
  if (v11 == 255)
  {
    v23 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v23)
    {
      v24 = 0;
LABEL_69:
      free(v23);
      return v24;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v11 + 160, a3, a4);
    v23 = (&v62 - v25);
    bzero(&v62 - v25, v26);
  }

  v64 = a1;
  v27 = a9;
  v28 = v17 - 1;
  v29 = v14 - 1;
  if (v20)
  {
    v30 = v15 + 1;
  }

  else
  {
    v29 = v14;
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
    v32 = v68;
    if (v22 || (v33 = v29 + 1 + v30, v33 > *v68) || (v34 = v68[1], v34 < 2 * v33) && v34 || (v35 = v68[2], v33 > v35) && v35 || (v36 = v28 + 1 + v31, v36 > *a8) || ((v36 + (v36 >> 63)) & 0xFFFFFFFFFFFFFFFELL) > a8[1] || (v37 = a8[2], v36 > v37) && v37)
    {
      --v28;
      --v29;
    }

    else
    {
      ++v72;
      ++v73;
      ++v29;
      ++v28;
    }
  }

  else
  {
    v32 = v68;
  }

  if (v29 + v30 > v72)
  {
    v29 = v72 - v30;
  }

  if (v28 + v31 > v73)
  {
    v28 = v73 - v31;
  }

  if (v70 + v65 <= v71)
  {
    v38 = v65;
  }

  else
  {
    v38 = v71 - v70;
  }

  if (v74 + v18 <= v69)
  {
    v39 = v18;
  }

  else
  {
    v39 = v69 - v74;
  }

  if (v29 >= v28)
  {
    v40 = v28;
  }

  else
  {
    v40 = v29;
  }

  if (v38 >= v39)
  {
    v41 = v39;
  }

  else
  {
    v41 = v38;
  }

  v42 = v70 + v41 - 1;
  v43 = v40 + v30;
  v44 = v40 + v30 + *v32 * v42;
  v45 = *v75;
  v46 = v66;
  v63 = v30;
  if (v44 > v45)
  {
    v47 = v11;
    v48 = v31;
    v49 = a8;
    v50 = a9;
    goto LABEL_62;
  }

  if (*(v67 + 8) && v32[1] * v42 + 2 * v43 > v75[1])
  {
    v47 = v11;
    v48 = v31;
    v49 = a8;
    v50 = a9;
    goto LABEL_62;
  }

  if (*(v67 + 16) && v43 + v32[2] * v42 > v75[2])
  {
    v47 = v11;
    v48 = v31;
    v49 = a8;
    v50 = a9;
    goto LABEL_62;
  }

  v51 = v74 + v41 - 1;
  v52 = v40 + v31;
  if (v40 + v31 + *a8 * v51 > *a9)
  {
    v47 = v11;
    v48 = v31;
    v49 = a8;
    v50 = a9;
    goto LABEL_62;
  }

  if (*(v66 + 8) && ((v52 + 1 + ((v52 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + a8[1] * v51 > a9[1])
  {
    v47 = v11;
    v48 = v31;
    v49 = a8;
    v50 = a9;
    goto LABEL_62;
  }

  if (*(v66 + 16) && v52 + a8[2] * v51 > a9[2])
  {
    v47 = v11;
    v48 = v31;
    v49 = a8;
    v50 = a9;
LABEL_62:
    fig_log_get_emitter();
    v24 = FigSignalErrorAtGM();
    v32 = v68;
    v27 = v50;
    a8 = v49;
    v31 = v48;
    v11 = v47;
    v30 = v63;
    if (v24)
    {
      goto LABEL_68;
    }
  }

  *v23 = v11;
  v53 = v71;
  *(v23 + 4) = v72;
  *(v23 + 12) = v53;
  *(v23 + 20) = v40;
  *(v23 + 28) = v41;
  *(v23 + 36) = v30;
  v54 = v69;
  *(v23 + 44) = v70;
  v23[11] = v54;
  v23[12] = v40;
  v23[13] = v41;
  v23[14] = v31;
  v23[7] = v67;
  v23[8] = v32;
  v55 = v73;
  v56 = v74;
  v23[9] = v75;
  v23[10] = v55;
  v23[15] = v56;
  v23[16] = v46;
  v23[17] = a8;
  v23[18] = v27;
  v23[19] = v64;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v11, global_queue, v23, vt_Copy_444vf_TRC_Mat_TRC_422vf_GCD);
  if (!v11)
  {
    return 0;
  }

  v58 = (v23 + 20);
  v59 = v11;
  while (1)
  {
    v60 = *v58++;
    v24 = v60;
    if (v60)
    {
      break;
    }

    if (!--v59)
    {
      v24 = 0;
      break;
    }
  }

LABEL_68:
  if (v11 == 255)
  {
    goto LABEL_69;
  }

  return v24;
}

uint64_t *vt_Copy_444vf_TRC_Mat_TRC_422vf_GCD(uint64_t *result, uint64_t a2, double a3, float a4, float a5)
{
  v9 = result;
  v10 = *(result + 36);
  v11 = *result;
  v12 = *(result + 28) * a2 / v11 + *(result + 44);
  v13 = result[14];
  v15 = result[12];
  v14 = result[13];
  v16 = v14 * a2 / v11;
  v17 = v16 + result[15];
  v18 = (v14 + v14 * a2) / v11 - v16;
  v19 = result[7];
  v20 = result[8];
  v21 = result[16];
  v22 = result[17];
  v23 = v20[2];
  v147 = v19[2];
  v24 = v22[2];
  v25 = v21[2];
  v26 = (v25 + v24 * v17 + v13);
  if (v18 >= 1)
  {
    v27 = 0;
    v28 = result[19];
    v29 = v15 & 0xFFFFFFFE;
    v30 = *v20;
    v31 = v20[1];
    v32 = *v22;
    v33 = v22[1];
    result = &qword_18FECD000;
    LOWORD(a4) = *(v28 + 140);
    LOWORD(a5) = *(v28 + 142);
    LOWORD(v5) = *(v28 + 144);
    LOWORD(v6) = *(v28 + 146);
    LOWORD(v7) = *(v28 + 148);
    *&v34 = 8191.0 / *(v28 + 128);
    v35 = LODWORD(a4);
    v36 = LODWORD(a5);
    v37 = *&v34 * *v28;
    v156 = *&v34 * *(v28 + 8);
    v155 = *&v34 * *(v28 + 16);
    v38 = *&v34 * *(v28 + 20);
    v39 = *&v34 * *(v28 + 28);
    v40 = v5;
    v41 = v6;
    v42 = v7;
    LOWORD(v34) = *(v28 + 150);
    v43 = v34;
    LOWORD(v34) = *(v28 + 152);
    v44 = v34;
    v45 = *(v28 + 36);
    v46 = *(v28 + 40);
    v47 = *(v28 + 44);
    v153 = *(v28 + 48) * 0.5;
    v154 = v38;
    v151 = *(v28 + 56) * 0.5;
    v152 = *(v28 + 52) * 0.5;
    v48 = *(v28 + 64);
    v149 = v48 * 0.5;
    v150 = *(v28 + 60) * 0.5;
    v49 = *(v28 + 72);
    v50 = *(v28 + 68) * 0.5;
    v148 = v50;
    v52 = *(v28 + 76);
    v51 = *(v28 + 80);
    v53 = *(v28 + 84);
    v54 = *(v28 + 88);
    v55 = *(v28 + 92);
    v56 = *(v28 + 96);
    v57 = *(v28 + 100);
    v58 = *(v28 + 104);
    v59 = v28 + 164;
    v60 = v28 + 16548;
    v62 = *v21;
    v61 = v21[1];
    v63 = v61 + v33 * v17 + v13;
    if (!v61)
    {
      v63 = 0;
    }

    v64 = (v62 + v32 * v17 + v13);
    v66 = *v19;
    v65 = v19[1];
    v67 = (v65 + v31 * v12 + v10);
    if (!v65)
    {
      v67 = 0;
    }

    v68 = (v66 + v30 * v12 + v10);
    do
    {
      if (v29 >= 1)
      {
        v69 = 0;
        v70 = v68;
        v71 = v67;
        v72 = v64;
        do
        {
          if (v71)
          {
            LOBYTE(v50) = *v71;
            *&v73 = LODWORD(v50);
            v48 = *&v73 - v36;
            LOBYTE(v73) = v71[1];
            v74 = v73 - v36;
            v71 += 2;
            v75 = v156 * v74;
            v76 = (v154 * v74) + (v48 * v155);
            v77 = v39 * v48;
          }

          else
          {
            v77 = 0.0;
            v76 = 0.0;
            v75 = 0.0;
          }

          LOBYTE(v48) = *v70;
          v78 = v37 * (LODWORD(v48) - v35);
          v79 = v75 + v78;
          v80 = (v75 + v78) <= 8191.0;
          v81 = 8191.0;
          if (v80)
          {
            v81 = v79;
            if (v79 < 0.0)
            {
              v81 = 0.0;
            }
          }

          v82 = v76 + v78;
          v83 = 8191.0;
          if (v82 <= 8191.0)
          {
            v83 = v82;
            if (v82 < 0.0)
            {
              v83 = 0.0;
            }
          }

          v84 = v77 + v78;
          v85 = 8191.0;
          if ((v77 + v78) <= 8191.0)
          {
            v85 = v77 + v78;
            if (v84 < 0.0)
            {
              v85 = 0.0;
            }
          }

          if (v71)
          {
            LOBYTE(v84) = *v71;
            *&v86 = LODWORD(v84);
            v78 = *&v86 - v36;
            LOBYTE(v86) = v71[1];
            v87 = v86 - v36;
            v71 += 2;
            v88 = v156 * v87;
            v89 = (v154 * v87) + (v78 * v155);
            v90 = v39 * v78;
          }

          else
          {
            v90 = 0.0;
            v89 = 0.0;
            v88 = 0.0;
          }

          LOBYTE(v78) = v70[1];
          v91 = v37 * (LODWORD(v78) - v35);
          v92 = 8191.0;
          if ((v88 + v91) <= 8191.0)
          {
            v92 = v88 + v91;
            if ((v88 + v91) < 0.0)
            {
              v92 = 0.0;
            }
          }

          v93 = v89 + v91;
          v80 = (v89 + v91) <= 8191.0;
          v94 = 8191.0;
          if (v80)
          {
            v94 = v93;
            if (v93 < 0.0)
            {
              v94 = 0.0;
            }
          }

          v95 = v90 + v91;
          v96 = 8191.0;
          if (v95 <= 8191.0)
          {
            v96 = v95;
            if (v95 < 0.0)
            {
              v96 = 0.0;
            }
          }

          _H0 = *(v59 + 2 * llroundf(fminf(fmaxf(v81, 0.0), 8191.0)));
          _H5 = *(v59 + 2 * llroundf(fminf(fmaxf(v83, 0.0), 8191.0)));
          __asm
          {
            FCVT            S0, H0
            FCVT            S5, H5
          }

          _H24 = *(v59 + 2 * llroundf(fminf(fmaxf(v85, 0.0), 8191.0)));
          v106 = llroundf(fminf(fmaxf(v92, 0.0), 8191.0));
          __asm { FCVT            S6, H24 }

          _H24 = *(v59 + 2 * v106);
          __asm { FCVT            S24, H24 }

          _H4 = *(v59 + 2 * llroundf(fminf(fmaxf(v94, 0.0), 8191.0)));
          __asm { FCVT            S4, H4 }

          _H26 = *(v59 + 2 * llroundf(fminf(fmaxf(v96, 0.0), 8191.0)));
          __asm { FCVT            S26, H26 }

          v114 = ((v52 * _S5) + (_S0 * v49)) + (_S6 * v51);
          v115 = ((v54 * _S5) + (_S0 * v53)) + (_S6 * v55);
          _S0 = ((v57 * _S5) + (_S0 * v56)) + (_S6 * v58);
          v117 = ((v52 * _S4) + (_S24 * v49)) + (_S26 * v51);
          _S6 = ((v54 * _S4) + (_S24 * v53)) + (_S26 * v55);
          _S4 = ((v57 * _S4) + (_S24 * v56)) + (_S26 * v58);
          LOWORD(_S24) = *(v60 + 2 * llroundf(fminf(fmaxf(v114, 0.0), 8191.0)));
          LOWORD(_S26) = *(v60 + 2 * llroundf(fminf(fmaxf(v115, 0.0), 8191.0)));
          __asm
          {
            FCVT            S24, H24
            FCVT            S26, H26
          }

          LOWORD(_S0) = *(v60 + 2 * llroundf(fminf(fmaxf(_S0, 0.0), 8191.0)));
          v122 = llroundf(fminf(fmaxf(v117, 0.0), 8191.0));
          __asm { FCVT            S5, H0 }

          LOWORD(_S0) = *(v60 + 2 * v122);
          __asm { FCVT            S0, H0 }

          LOWORD(_S6) = *(v60 + 2 * llroundf(fminf(fmaxf(_S6, 0.0), 8191.0)));
          __asm { FCVT            S6, H6 }

          LOWORD(_S4) = *(v60 + 2 * llroundf(fminf(fmaxf(_S4, 0.0), 8191.0)));
          __asm { FCVT            S25, H4 }

          v127 = (((v46 * _S26) + (v45 * _S24)) + (v47 * _S5)) + v40;
          v128 = (((v46 * _S6) + (v45 * _S0)) + (v47 * _S25)) + v40;
          if (v127 < v40)
          {
            v129 = v40;
          }

          else
          {
            v129 = (((v46 * _S26) + (v45 * _S24)) + (v47 * _S5)) + v40;
          }

          if (v127 <= v42)
          {
            v130 = v129;
          }

          else
          {
            v130 = v42;
          }

          *v72 = llroundf(v130);
          if (v128 < v40)
          {
            v131 = v40;
          }

          else
          {
            v131 = (((v46 * _S6) + (v45 * _S0)) + (v47 * _S25)) + v40;
          }

          if (v128 > v42)
          {
            v131 = v42;
          }

          v72[1] = llroundf(v131);
          v132 = _S24 + _S0;
          v133 = _S26 + _S6;
          v48 = _S5 + _S25;
          v134 = ((v41 + (v132 * v153)) + ((_S26 + _S6) * v152)) + (v48 * v151);
          v135 = v44;
          if (v134 <= v44)
          {
            v135 = v134;
            if (v134 < v43)
            {
              v135 = v43;
            }
          }

          v50 = ((v41 + (v132 * v150)) + (v133 * v149)) + (v48 * v148);
          *(v63 + v69) = llroundf(v135);
          v136 = v44;
          if (v50 <= v44)
          {
            v136 = v50;
            if (v50 < v43)
            {
              v136 = v43;
            }
          }

          *(v63 + v69 + 1) = llroundf(v136);
          v69 += 2;
          v70 += 2;
          v72 += 2;
        }

        while (v69 < v29);
      }

      v68 += v30;
      v67 += v31;
      v64 += v32;
      v63 += v33;
      ++v27;
    }

    while (v27 != v18);
  }

  if (v147 && v25)
  {
    if (v18 >= 1)
    {
      v137 = 0;
      v138 = (v147 + v23 * v12 + v10);
      do
      {
        result = memcpy(v26, v138, v15);
        v138 += v23;
        v26 += v24;
        ++v137;
      }

      while (v18 > v137);
    }
  }

  else if (v25 && v18 >= 1)
  {
    v139 = 0;
    v140 = vdupq_n_s64(v15 - 1);
    do
    {
      if (v15 >= 1)
      {
        v141 = 0;
        do
        {
          v142 = vdupq_n_s64(v141);
          v143 = vmovn_s64(vcgeq_u64(v140, vorrq_s8(v142, xmmword_18FECDDB0)));
          if (vuzp1_s8(vuzp1_s16(v143, *v140.i8), *v140.i8).u8[0])
          {
            v26[v141] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(v143, *&v140), *&v140).i8[1])
          {
            v26[v141 + 1] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(*&v140, vmovn_s64(vcgeq_u64(v140, vorrq_s8(v142, xmmword_18FECDDA0)))), *&v140).i8[2])
          {
            v26[v141 + 2] = -1;
            v26[v141 + 3] = -1;
          }

          v144 = vmovn_s64(vcgeq_u64(v140, vorrq_s8(v142, xmmword_18FECDD90)));
          if (vuzp1_s8(*&v140, vuzp1_s16(v144, *&v140)).i32[1])
          {
            v26[v141 + 4] = -1;
          }

          if (vuzp1_s8(*&v140, vuzp1_s16(v144, *&v140)).i8[5])
          {
            v26[v141 + 5] = -1;
          }

          if (vuzp1_s8(*&v140, vuzp1_s16(*&v140, vmovn_s64(vcgeq_u64(v140, vorrq_s8(v142, xmmword_18FECDD80))))).i8[6])
          {
            v26[v141 + 6] = -1;
            v26[v141 + 7] = -1;
          }

          v145 = vmovn_s64(vcgeq_u64(v140, vorrq_s8(v142, xmmword_18FECDD70)));
          if (vuzp1_s8(vuzp1_s16(v145, *v140.i8), *v140.i8).u8[0])
          {
            v26[v141 + 8] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(v145, *&v140), *&v140).i8[1])
          {
            v26[v141 + 9] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(*&v140, vmovn_s64(vcgeq_u64(v140, vorrq_s8(v142, xmmword_18FECDD60)))), *&v140).i8[2])
          {
            v26[v141 + 10] = -1;
            v26[v141 + 11] = -1;
          }

          v146 = vmovn_s64(vcgeq_u64(v140, vorrq_s8(v142, xmmword_18FECDD50)));
          if (vuzp1_s8(*&v140, vuzp1_s16(v146, *&v140)).i32[1])
          {
            v26[v141 + 12] = -1;
          }

          if (vuzp1_s8(*&v140, vuzp1_s16(v146, *&v140)).i8[5])
          {
            v26[v141 + 13] = -1;
          }

          if (vuzp1_s8(*&v140, vuzp1_s16(*&v140, vmovn_s64(vcgeq_u64(v140, vorrq_s8(v142, xmmword_18FECDD40))))).i8[6])
          {
            v26[v141 + 14] = -1;
            v26[v141 + 15] = -1;
          }

          v141 += 16;
        }

        while (((v15 + 15) & 0xFFFFFFFFFFFFFFF0) != v141);
      }

      v26 += v24;
      ++v139;
    }

    while (v18 > v139);
  }

  *(v9 + a2 + 40) = 0;
  return result;
}

uint64_t vt_Copy_444vf_rgb_422vf_neon_fp16(uint64_t a1, uint64_t *a2, uint64_t a3, unint64_t *a4, unint64_t *a5, uint64_t *a6, uint64_t a7, unint64_t *a8, void *a9)
{
  v66 = a7;
  v67 = a3;
  v75 = a5;
  v68 = a4;
  v76 = *MEMORY[0x1E69E9840];
  v11 = *(a1 + 162);
  v13 = *a2;
  v12 = a2[1];
  v14 = a2[2];
  v65 = a2[3];
  v15 = a2[4];
  v70 = a2[5];
  v71 = v12;
  v16 = *a6;
  v69 = a6[1];
  v17 = a6[2];
  v18 = a6[3];
  v20 = a6[4];
  v19 = a6[5];
  v73 = v16;
  v74 = v19;
  v72 = v13;
  v22 = v15 + v14 != v13 || v20 + v17 != v16;
  if (v11 == 255)
  {
    v23 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v23)
    {
      v24 = 0;
LABEL_69:
      free(v23);
      return v24;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v11 + 160, a3, a4);
    v23 = (&v62 - v25);
    bzero(&v62 - v25, v26);
  }

  v64 = a1;
  v27 = a9;
  v28 = v17 - 1;
  v29 = v14 - 1;
  if (v20)
  {
    v30 = v15 + 1;
  }

  else
  {
    v29 = v14;
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
    v32 = v68;
    if (v22 || (v33 = v29 + 1 + v30, v33 > *v68) || (v34 = v68[1], v34 < 2 * v33) && v34 || (v35 = v68[2], v33 > v35) && v35 || (v36 = v28 + 1 + v31, v36 > *a8) || ((v36 + (v36 >> 63)) & 0xFFFFFFFFFFFFFFFELL) > a8[1] || (v37 = a8[2], v36 > v37) && v37)
    {
      --v28;
      --v29;
    }

    else
    {
      ++v72;
      ++v73;
      ++v29;
      ++v28;
    }
  }

  else
  {
    v32 = v68;
  }

  if (v29 + v30 > v72)
  {
    v29 = v72 - v30;
  }

  if (v28 + v31 > v73)
  {
    v28 = v73 - v31;
  }

  if (v70 + v65 <= v71)
  {
    v38 = v65;
  }

  else
  {
    v38 = v71 - v70;
  }

  if (v74 + v18 <= v69)
  {
    v39 = v18;
  }

  else
  {
    v39 = v69 - v74;
  }

  if (v29 >= v28)
  {
    v40 = v28;
  }

  else
  {
    v40 = v29;
  }

  if (v38 >= v39)
  {
    v41 = v39;
  }

  else
  {
    v41 = v38;
  }

  v42 = v70 + v41 - 1;
  v43 = v40 + v30;
  v44 = v40 + v30 + *v32 * v42;
  v45 = *v75;
  v46 = v66;
  v63 = v30;
  if (v44 > v45)
  {
    v47 = v11;
    v48 = v31;
    v49 = a8;
    v50 = a9;
    goto LABEL_62;
  }

  if (*(v67 + 8) && v32[1] * v42 + 2 * v43 > v75[1])
  {
    v47 = v11;
    v48 = v31;
    v49 = a8;
    v50 = a9;
    goto LABEL_62;
  }

  if (*(v67 + 16) && v43 + v32[2] * v42 > v75[2])
  {
    v47 = v11;
    v48 = v31;
    v49 = a8;
    v50 = a9;
    goto LABEL_62;
  }

  v51 = v74 + v41 - 1;
  v52 = v40 + v31;
  if (v40 + v31 + *a8 * v51 > *a9)
  {
    v47 = v11;
    v48 = v31;
    v49 = a8;
    v50 = a9;
    goto LABEL_62;
  }

  if (*(v66 + 8) && ((v52 + 1 + ((v52 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + a8[1] * v51 > a9[1])
  {
    v47 = v11;
    v48 = v31;
    v49 = a8;
    v50 = a9;
    goto LABEL_62;
  }

  if (*(v66 + 16) && v52 + a8[2] * v51 > a9[2])
  {
    v47 = v11;
    v48 = v31;
    v49 = a8;
    v50 = a9;
LABEL_62:
    fig_log_get_emitter();
    v24 = FigSignalErrorAtGM();
    v32 = v68;
    v27 = v50;
    a8 = v49;
    v31 = v48;
    v11 = v47;
    v30 = v63;
    if (v24)
    {
      goto LABEL_68;
    }
  }

  *v23 = v11;
  v53 = v71;
  *(v23 + 4) = v72;
  *(v23 + 12) = v53;
  *(v23 + 20) = v40;
  *(v23 + 28) = v41;
  *(v23 + 36) = v30;
  v54 = v69;
  *(v23 + 44) = v70;
  v23[11] = v54;
  v23[12] = v40;
  v23[13] = v41;
  v23[14] = v31;
  v23[7] = v67;
  v23[8] = v32;
  v55 = v73;
  v56 = v74;
  v23[9] = v75;
  v23[10] = v55;
  v23[15] = v56;
  v23[16] = v46;
  v23[17] = a8;
  v23[18] = v27;
  v23[19] = v64;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v11, global_queue, v23, vt_Copy_444vf_rgb_422vf_neon_fp16_GCD);
  if (!v11)
  {
    return 0;
  }

  v58 = (v23 + 20);
  v59 = v11;
  while (1)
  {
    v60 = *v58++;
    v24 = v60;
    if (v60)
    {
      break;
    }

    if (!--v59)
    {
      v24 = 0;
      break;
    }
  }

LABEL_68:
  if (v11 == 255)
  {
    goto LABEL_69;
  }

  return v24;
}

void *vt_Copy_444vf_rgb_422vf_neon_fp16_GCD(void *result, uint64_t a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, float32x4_t _Q7)
{
  v17 = a2;
  v18 = result;
  v19 = *(result + 36);
  v20 = *result;
  v157 = *(result + 28) * a2 / v20 + *(result + 44);
  v21 = result[14];
  v23 = result[12];
  v22 = result[13];
  v24 = v22 * a2 / v20;
  v25 = v24 + result[15];
  v26 = (v22 + v22 * a2) / v20 - v24;
  v27 = result[7];
  v28 = result[8];
  v29 = result[16];
  v30 = result[17];
  v31 = v28[2];
  v32 = v27[2];
  v33 = v30[2];
  v34 = v29[2];
  v35 = (v34 + v33 * v25 + v21);
  if (v26 >= 1)
  {
    v36 = 0;
    v37 = result[19];
    v38 = *v28;
    v39 = v28[1];
    v40 = *v30;
    v41 = v30[1];
    v42 = *(v37 + 136);
    v43 = v17;
    v44 = v19;
    v45 = *(v37 + 140);
    v155 = v29[2];
    v156 = v27[2];
    v46 = *(v37 + 142);
    v47 = *v37;
    v48 = *(v37 + 8);
    _Q7.i32[0] = *(v37 + 16);
    v49 = *(v37 + 20);
    v50 = *(v37 + 28);
    v51 = *(v37 + 144);
    v52 = *(v37 + 146);
    v53 = *(v37 + 148);
    v54 = *(v37 + 150);
    v55 = *(v37 + 152);
    _S0 = *(v37 + 36);
    _S1 = *(v37 + 40);
    _S2 = *(v37 + 44);
    v59.i32[0] = *(v37 + 48);
    v13.i32[0] = *(v37 + 52);
    v60.i32[0] = *(v37 + 56);
    v61 = (v37 + 60);
    v171 = (v37 + 64);
    v169 = (v37 + 68);
    v62 = *(v37 + 128);
    result = (v23 & 0xFFFFFFFE);
    v63 = v42 / v62;
    v64 = v45;
    v65 = v46;
    _S5 = v63 * v47;
    _S6 = v63 * v48;
    _Q7.f32[0] = v63 * _Q7.f32[0];
    _S16 = v63 * v49;
    _S17 = v63 * v50;
    v70 = v51;
    v71 = v52;
    v72 = v53;
    v73 = v54;
    v74 = v55;
    __asm { FCVT            H8, S5 }

    *v12.i16 = v45;
    v19 = v44;
    v17 = v43;
    v80 = vdupq_lane_s16(v12, 0);
    v174 = v80;
    *v80.i16 = -v46;
    v81 = _S17;
    __asm { FCVT            H9, S17 }

    v83 = _Q7.f32[0];
    __asm { FCVT            H7, S7 }

    v161 = *_Q7.i16;
    v84 = _S16;
    __asm { FCVT            H7, S16 }

    v159 = vdupq_lane_s16(*v80.i8, 0);
    v160 = *_Q7.i16;
    v59.i32[1] = *v61;
    *_Q7.f32 = vmul_f32(v59, 0x3F0000003F000000);
    v13.i32[1] = *v171;
    *v13.f32 = vmul_f32(*v13.f32, 0x3F0000003F000000);
    v172 = vdupq_lane_s32(vcvt_f16_f32(v13), 0);
    v173 = vdupq_lane_s32(vcvt_f16_f32(_Q7), 0);
    v60.i32[1] = *v169;
    *v14.f32 = vmul_f32(v60, 0x3F0000003F000000);
    v85 = vcvt_f16_f32(v14);
    v86 = vdupq_lane_s32(v85, 0);
    *v85.i16 = v51;
    v87 = vdupq_lane_s16(v85, 0);
    *v85.i16 = v52;
    v167 = vdupq_lane_s16(v85, 0);
    v168 = v86;
    *v85.i16 = v53;
    v88 = vdupq_lane_s16(v85, 0);
    *v85.i16 = v54;
    v166 = vdupq_lane_s16(v85, 0);
    *v85.i16 = v55;
    v165 = vdupq_lane_s16(v85, 0);
    v90 = *v29;
    v89 = v29[1];
    if (v89)
    {
      v91 = (v89 + v41 * v25 + v21);
    }

    else
    {
      v91 = 0;
    }

    v92 = (v90 + v40 * v25 + v21);
    v94 = *v27;
    v93 = v27[1];
    if (v93)
    {
      v95 = v93 + v39 * v157 + v19;
    }

    else
    {
      v95 = 0;
    }

    v96 = v94 + v38 * v157;
    v34 = v155;
    v32 = v156;
    v97 = (v96 + v19);
    v98 = _S6;
    __asm { FCVT            H6, S6 }

    v158 = _H6;
    __asm { FCVT            H6, S0 }

    v164 = _H6;
    __asm { FCVT            H6, S1 }

    v163 = _H6;
    __asm { FCVT            H6, S2 }

    v162 = _H6;
    v170 = _Q7.f32[0];
    do
    {
      if (v23 < 8)
      {
        v121 = 0;
        v120 = v91;
        v106 = v92;
        v105 = v95;
        v104 = v97;
      }

      else
      {
        v103 = 0;
        v104 = v97;
        v105 = v95;
        v106 = v92;
        do
        {
          if (v105)
          {
            v175 = vld2_s8(v105);
            v105 += 16;
            *v107.i8 = vzip1_s8(*v175.i8, 0);
            v107.u64[1] = vzip2_s8(*v175.i8, 0);
            *v108.i8 = vzip1_s8(v175.u64[1], 0);
            v108.u64[1] = vzip2_s8(v175.u64[1], 0);
            v175 = vcvtq_f16_u16(v108);
            v109 = vaddq_f16(v159, vcvtq_f16_u16(v107));
            v175 = vaddq_f16(v159, v175);
            v110 = vmulq_n_f16(v175, v158);
            v111 = vmlaq_n_f16(vmulq_n_f16(v109, v161), v175, v160);
            v112 = vmulq_n_f16(v109, _H9);
          }

          else
          {
            v112 = 0uLL;
            v111 = 0uLL;
            v110 = 0uLL;
          }

          v113 = *v104++;
          *v114.i8 = vzip1_s8(v113, 0);
          v114.u64[1] = vzip2_s8(v113, 0);
          v115 = vsubq_f16(vcvtq_f16_u16(v114), v174);
          v116 = vmlaq_n_f16(v110, v115, _H8);
          v117 = vmlaq_n_f16(v111, v115, _H8);
          v118 = vmlaq_n_f16(v112, v115, _H8);
          *v106++ = vmovn_s16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v87, v116, v164), v117, v163), v118, v162), v87), v88)));
          v119 = vpaddq_f16(v116, v117);
          v16 = vzip1q_s16(v119, v119);
          v15 = vzip2q_s16(v119, v119);
          v10 = vmlaq_f16(vmlaq_f16(vmlaq_f16(v167, v173, v16), v172, v15), v168, vaddq_f16(vtrn1q_s16(v118, v118), vtrn2q_s16(v118, v118)));
          *&v91[v103] = vmovn_s16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(v10, v166), v165)));
          v103 += 8;
        }

        while (v103 < v23 - 7);
        v120 = &v91[v103];
        v121 = v23 & 0xFFFFFFF8;
      }

      while (v121 < result)
      {
        v122 = 0.0;
        if (v105)
        {
          v15.i8[0] = *v105;
          v123 = v15.u32[0] - v65;
          v16.i8[0] = *(v105 + 1);
          v124 = v16.u32[0] - v65;
          v105 += 2;
          v125 = v98 * v124;
          *v16.i32 = (v84 * v124) + (v123 * v83);
          *v15.i32 = v81 * v123;
          if (v105)
          {
            LOBYTE(v122) = *v105;
            v126 = LODWORD(v122) - v65;
            v10.i8[0] = *(v105 + 1);
            v127 = v10.u32[0] - v65;
            v105 += 2;
            v128 = v98 * v127;
            *v10.i32 = (v84 * v127) + (v126 * v83);
            v122 = v81 * v126;
            goto LABEL_22;
          }
        }

        else
        {
          v15.i32[0] = 0;
          v16.i32[0] = 0;
          v125 = 0.0;
        }

        v10.i32[0] = 0;
        v128 = 0.0;
LABEL_22:
        LOBYTE(v11) = v104->i8[0];
        v129 = _S5 * (LODWORD(v11) - v64);
        v130 = v125 + v129;
        v131 = *v16.i32 + v129;
        v11 = *v15.i32 + v129;
        v15.i8[0] = v104->i8[1];
        v132 = _S5 * (v15.u32[0] - v64);
        v133 = v128 + v132;
        v134 = *v10.i32 + v132;
        v135 = v122 + v132;
        v136 = (((_S1 * v131) + (_S0 * v130)) + (_S2 * v11)) + v70;
        *v15.i32 = (((_S1 * v134) + (_S0 * v133)) + (_S2 * v135)) + v70;
        if (v136 < v70)
        {
          v137 = v70;
        }

        else
        {
          v137 = (((_S1 * v131) + (_S0 * v130)) + (_S2 * v11)) + v70;
        }

        if (v136 > v72)
        {
          v137 = v72;
        }

        v106->i8[0] = llroundf(v137);
        if (*v15.i32 < v70)
        {
          v138 = v70;
        }

        else
        {
          v138 = (((_S1 * v134) + (_S0 * v133)) + (_S2 * v135)) + v70;
        }

        if (*v15.i32 > v72)
        {
          v138 = v72;
        }

        v106->i8[1] = llroundf(v138);
        v139 = v130 + v133;
        v140 = v131 + v134;
        v141 = (v71 + ((v130 + v133) * v170)) + ((v131 + v134) * v13.f32[0]);
        *v16.i32 = v11 + v135;
        v142 = v141 + ((v11 + v135) * v14.f32[0]);
        *v10.i32 = v74;
        if (v142 <= v74)
        {
          *v10.i32 = v141 + ((v11 + v135) * v14.f32[0]);
          if (v142 < v73)
          {
            *v10.i32 = v73;
          }
        }

        v143 = (v71 + (v139 * _Q7.f32[1])) + (v140 * v13.f32[1]);
        v144 = v143 + (*v16.i32 * v14.f32[1]);
        *v120 = llroundf(*v10.i32);
        *v15.i32 = v74;
        if (v144 <= v74)
        {
          *v15.i32 = v143 + (*v16.i32 * v14.f32[1]);
          if (v144 < v73)
          {
            *v15.i32 = v73;
          }
        }

        v120[1] = llroundf(*v15.i32);
        v120 += 2;
        v121 += 2;
        v104 = (v104 + 2);
        v106 = (v106 + 2);
      }

      v97 = (v97 + v38);
      v95 += v39;
      v92 = (v92 + v40);
      v91 += v41;
      ++v36;
    }

    while (v36 != v26);
  }

  if (v32 && v34)
  {
    if (v26 >= 1)
    {
      v145 = 0;
      v146 = (v32 + v31 * v157 + v19);
      do
      {
        result = memcpy(v35, v146, v23);
        v146 += v31;
        v35 += v33;
        ++v145;
      }

      while (v26 > v145);
    }
  }

  else if (v34 && v26 >= 1)
  {
    v147 = 0;
    v148 = vdupq_n_s64(v23 - 1);
    do
    {
      if (v23 >= 1)
      {
        v149 = 0;
        do
        {
          v150 = vdupq_n_s64(v149);
          v151 = vmovn_s64(vcgeq_u64(v148, vorrq_s8(v150, xmmword_18FECDDB0)));
          if (vuzp1_s8(vuzp1_s16(v151, *v148.i8), *v148.i8).u8[0])
          {
            v35[v149] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(v151, *&v148), *&v148).i8[1])
          {
            v35[v149 + 1] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(*&v148, vmovn_s64(vcgeq_u64(v148, vorrq_s8(v150, xmmword_18FECDDA0)))), *&v148).i8[2])
          {
            v35[v149 + 2] = -1;
            v35[v149 + 3] = -1;
          }

          v152 = vmovn_s64(vcgeq_u64(v148, vorrq_s8(v150, xmmword_18FECDD90)));
          if (vuzp1_s8(*&v148, vuzp1_s16(v152, *&v148)).i32[1])
          {
            v35[v149 + 4] = -1;
          }

          if (vuzp1_s8(*&v148, vuzp1_s16(v152, *&v148)).i8[5])
          {
            v35[v149 + 5] = -1;
          }

          if (vuzp1_s8(*&v148, vuzp1_s16(*&v148, vmovn_s64(vcgeq_u64(v148, vorrq_s8(v150, xmmword_18FECDD80))))).i8[6])
          {
            v35[v149 + 6] = -1;
            v35[v149 + 7] = -1;
          }

          v153 = vmovn_s64(vcgeq_u64(v148, vorrq_s8(v150, xmmword_18FECDD70)));
          if (vuzp1_s8(vuzp1_s16(v153, *v148.i8), *v148.i8).u8[0])
          {
            v35[v149 + 8] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(v153, *&v148), *&v148).i8[1])
          {
            v35[v149 + 9] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(*&v148, vmovn_s64(vcgeq_u64(v148, vorrq_s8(v150, xmmword_18FECDD60)))), *&v148).i8[2])
          {
            v35[v149 + 10] = -1;
            v35[v149 + 11] = -1;
          }

          v154 = vmovn_s64(vcgeq_u64(v148, vorrq_s8(v150, xmmword_18FECDD50)));
          if (vuzp1_s8(*&v148, vuzp1_s16(v154, *&v148)).i32[1])
          {
            v35[v149 + 12] = -1;
          }

          if (vuzp1_s8(*&v148, vuzp1_s16(v154, *&v148)).i8[5])
          {
            v35[v149 + 13] = -1;
          }

          if (vuzp1_s8(*&v148, vuzp1_s16(*&v148, vmovn_s64(vcgeq_u64(v148, vorrq_s8(v150, xmmword_18FECDD40))))).i8[6])
          {
            v35[v149 + 14] = -1;
            v35[v149 + 15] = -1;
          }

          v149 += 16;
        }

        while (((v23 + 15) & 0xFFFFFFFFFFFFFFF0) != v149);
      }

      v35 += v33;
      ++v147;
    }

    while (v26 > v147);
  }

  *(v18 + v17 + 40) = 0;
  return result;
}

uint64_t vt_Copy_444vf_rgb_422vf(uint64_t a1, uint64_t *a2, uint64_t a3, unint64_t *a4, unint64_t *a5, uint64_t *a6, uint64_t a7, unint64_t *a8, void *a9)
{
  v66 = a7;
  v67 = a3;
  v75 = a5;
  v68 = a4;
  v76 = *MEMORY[0x1E69E9840];
  v11 = *(a1 + 162);
  v13 = *a2;
  v12 = a2[1];
  v14 = a2[2];
  v65 = a2[3];
  v15 = a2[4];
  v70 = a2[5];
  v71 = v12;
  v16 = *a6;
  v69 = a6[1];
  v17 = a6[2];
  v18 = a6[3];
  v20 = a6[4];
  v19 = a6[5];
  v73 = v16;
  v74 = v19;
  v72 = v13;
  v22 = v15 + v14 != v13 || v20 + v17 != v16;
  if (v11 == 255)
  {
    v23 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v23)
    {
      v24 = 0;
LABEL_69:
      free(v23);
      return v24;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v11 + 160, a3, a4);
    v23 = (&v62 - v25);
    bzero(&v62 - v25, v26);
  }

  v64 = a1;
  v27 = a9;
  v28 = v17 - 1;
  v29 = v14 - 1;
  if (v20)
  {
    v30 = v15 + 1;
  }

  else
  {
    v29 = v14;
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
    v32 = v68;
    if (v22 || (v33 = v29 + 1 + v30, v33 > *v68) || (v34 = v68[1], v34 < 2 * v33) && v34 || (v35 = v68[2], v33 > v35) && v35 || (v36 = v28 + 1 + v31, v36 > *a8) || ((v36 + (v36 >> 63)) & 0xFFFFFFFFFFFFFFFELL) > a8[1] || (v37 = a8[2], v36 > v37) && v37)
    {
      --v28;
      --v29;
    }

    else
    {
      ++v72;
      ++v73;
      ++v29;
      ++v28;
    }
  }

  else
  {
    v32 = v68;
  }

  if (v29 + v30 > v72)
  {
    v29 = v72 - v30;
  }

  if (v28 + v31 > v73)
  {
    v28 = v73 - v31;
  }

  if (v70 + v65 <= v71)
  {
    v38 = v65;
  }

  else
  {
    v38 = v71 - v70;
  }

  if (v74 + v18 <= v69)
  {
    v39 = v18;
  }

  else
  {
    v39 = v69 - v74;
  }

  if (v29 >= v28)
  {
    v40 = v28;
  }

  else
  {
    v40 = v29;
  }

  if (v38 >= v39)
  {
    v41 = v39;
  }

  else
  {
    v41 = v38;
  }

  v42 = v70 + v41 - 1;
  v43 = v40 + v30;
  v44 = v40 + v30 + *v32 * v42;
  v45 = *v75;
  v46 = v66;
  v63 = v30;
  if (v44 > v45)
  {
    v47 = v11;
    v48 = v31;
    v49 = a8;
    v50 = a9;
    goto LABEL_62;
  }

  if (*(v67 + 8) && v32[1] * v42 + 2 * v43 > v75[1])
  {
    v47 = v11;
    v48 = v31;
    v49 = a8;
    v50 = a9;
    goto LABEL_62;
  }

  if (*(v67 + 16) && v43 + v32[2] * v42 > v75[2])
  {
    v47 = v11;
    v48 = v31;
    v49 = a8;
    v50 = a9;
    goto LABEL_62;
  }

  v51 = v74 + v41 - 1;
  v52 = v40 + v31;
  if (v40 + v31 + *a8 * v51 > *a9)
  {
    v47 = v11;
    v48 = v31;
    v49 = a8;
    v50 = a9;
    goto LABEL_62;
  }

  if (*(v66 + 8) && ((v52 + 1 + ((v52 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + a8[1] * v51 > a9[1])
  {
    v47 = v11;
    v48 = v31;
    v49 = a8;
    v50 = a9;
    goto LABEL_62;
  }

  if (*(v66 + 16) && v52 + a8[2] * v51 > a9[2])
  {
    v47 = v11;
    v48 = v31;
    v49 = a8;
    v50 = a9;
LABEL_62:
    fig_log_get_emitter();
    v24 = FigSignalErrorAtGM();
    v32 = v68;
    v27 = v50;
    a8 = v49;
    v31 = v48;
    v11 = v47;
    v30 = v63;
    if (v24)
    {
      goto LABEL_68;
    }
  }

  *v23 = v11;
  v53 = v71;
  *(v23 + 4) = v72;
  *(v23 + 12) = v53;
  *(v23 + 20) = v40;
  *(v23 + 28) = v41;
  *(v23 + 36) = v30;
  v54 = v69;
  *(v23 + 44) = v70;
  v23[11] = v54;
  v23[12] = v40;
  v23[13] = v41;
  v23[14] = v31;
  v23[7] = v67;
  v23[8] = v32;
  v55 = v73;
  v56 = v74;
  v23[9] = v75;
  v23[10] = v55;
  v23[15] = v56;
  v23[16] = v46;
  v23[17] = a8;
  v23[18] = v27;
  v23[19] = v64;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v11, global_queue, v23, vt_Copy_444vf_rgb_422vf_GCD);
  if (!v11)
  {
    return 0;
  }

  v58 = (v23 + 20);
  v59 = v11;
  while (1)
  {
    v60 = *v58++;
    v24 = v60;
    if (v60)
    {
      break;
    }

    if (!--v59)
    {
      v24 = 0;
      break;
    }
  }

LABEL_68:
  if (v11 == 255)
  {
    goto LABEL_69;
  }

  return v24;
}

void *vt_Copy_444vf_rgb_422vf_GCD(void *a1, uint64_t a2, double a3, double a4, float a5)
{
  v15 = *(a1 + 36);
  v16 = *a1;
  v17 = *(a1 + 28) * a2 / v16 + *(a1 + 44);
  v18 = a1[14];
  v20 = a1[12];
  v19 = a1[13];
  v21 = v19 * a2 / v16;
  v22 = v21 + a1[15];
  v23 = (v19 + v19 * a2) / v16 - v21;
  v24 = a1[7];
  v25 = a1[8];
  result = a1[16];
  v27 = a1[17];
  v28 = v25[2];
  v29 = v24[2];
  v30 = v27[2];
  v31 = result[2];
  v32 = (v31 + v30 * v22 + v18);
  if (v23 >= 1)
  {
    v33 = 0;
    v34 = a1[19];
    v35 = v20 & 0xFFFFFFFE;
    v36 = *v25;
    v37 = v25[1];
    v38 = *v27;
    v39 = v27[1];
    *&v40 = *(v34 + 136);
    LOWORD(a5) = *(v34 + 140);
    v41 = *&v40 / *(v34 + 128);
    v42 = LODWORD(a5);
    LOWORD(v40) = *(v34 + 142);
    v43 = v40;
    v44 = v41 * *v34;
    v45 = v41 * *(v34 + 8);
    v46 = v41 * *(v34 + 16);
    v47 = v41 * *(v34 + 20);
    v48 = *(v34 + 28);
    v49 = v41 * v48;
    LOWORD(v48) = *(v34 + 144);
    v50 = LODWORD(v48);
    LOWORD(v7) = *(v34 + 146);
    v51 = v7;
    LOWORD(v8) = *(v34 + 148);
    v52 = v8;
    LOWORD(v9) = *(v34 + 150);
    v53 = v9;
    LOWORD(v10) = *(v34 + 152);
    v54 = v10;
    v55 = *(v34 + 36);
    v56 = *(v34 + 40);
    v57 = *(v34 + 44);
    v58 = *(v34 + 48) * 0.5;
    v59 = *(v34 + 52) * 0.5;
    v60 = *(v34 + 56) * 0.5;
    v61 = *(v34 + 60) * 0.5;
    v62 = *(v34 + 64) * 0.5;
    v63 = *(v34 + 68) * 0.5;
    v65 = *result;
    v64 = result[1];
    result = (v64 + v39 * v22 + v18);
    if (!v64)
    {
      result = 0;
    }

    v66 = (v65 + v38 * v22 + v18);
    v68 = *v24;
    v67 = v24[1];
    v69 = (v67 + v37 * v17 + v15);
    if (!v67)
    {
      v69 = 0;
    }

    v70 = (v68 + v36 * v17 + v15);
    while (v35 < 1)
    {
LABEL_32:
      v70 += v36;
      v69 += v37;
      v66 += v38;
      result = (result + v39);
      if (++v33 == v23)
      {
        goto LABEL_33;
      }
    }

    v71 = 0;
    v72 = v70;
    v73 = v69;
    v74 = v66;
    while (1)
    {
      v75 = 0.0;
      if (!v73)
      {
        break;
      }

      LOBYTE(v11) = *v73;
      v76 = LODWORD(v11) - v43;
      LOBYTE(v12) = v73[1];
      v77 = LODWORD(v12) - v43;
      v73 += 2;
      v78 = v45 * v77;
      v79 = (v47 * v77) + (v76 * v46);
      v80 = v49 * v76;
      if (!v73)
      {
        goto LABEL_13;
      }

      LOBYTE(v75) = *v73;
      v81 = LODWORD(v75) - v43;
      LOBYTE(v5) = v73[1];
      v82 = LODWORD(v5) - v43;
      v73 += 2;
      v83 = v45 * v82;
      v84 = (v47 * v82) + (v81 * v46);
      v75 = v49 * v81;
LABEL_14:
      LOBYTE(v6) = *v72;
      v85 = v44 * (LODWORD(v6) - v42);
      v86 = v78 + v85;
      v87 = v79 + v85;
      v6 = v80 + v85;
      LOBYTE(v80) = v72[1];
      v88 = v44 * (LODWORD(v80) - v42);
      v89 = v83 + v88;
      v90 = v84 + v88;
      v91 = v75 + v88;
      v92 = (((v56 * v87) + (v55 * v86)) + (v57 * v6)) + v50;
      v93 = (((v56 * v90) + (v55 * v89)) + (v57 * v91)) + v50;
      if (v92 < v50)
      {
        v94 = v50;
      }

      else
      {
        v94 = (((v56 * v87) + (v55 * v86)) + (v57 * v6)) + v50;
      }

      if (v92 <= v52)
      {
        v95 = v94;
      }

      else
      {
        v95 = v52;
      }

      *v74 = llroundf(v95);
      if (v93 < v50)
      {
        v96 = v50;
      }

      else
      {
        v96 = (((v56 * v90) + (v55 * v89)) + (v57 * v91)) + v50;
      }

      if (v93 > v52)
      {
        v96 = v52;
      }

      v74[1] = llroundf(v96);
      v97 = v86 + v89;
      v98 = v87 + v90;
      v99 = (v51 + ((v86 + v89) * v58)) + ((v87 + v90) * v59);
      v12 = v6 + v91;
      v5 = v99 + ((v6 + v91) * v60);
      v100 = v54;
      if (v5 <= v54)
      {
        v100 = v5;
        if (v5 < v53)
        {
          v100 = v53;
        }
      }

      v101 = ((v51 + (v97 * v61)) + (v98 * v62)) + (v12 * v63);
      *(result + v71) = llroundf(v100);
      v11 = v54;
      if (v101 <= v54)
      {
        v11 = v101;
        if (v101 < v53)
        {
          v11 = v53;
        }
      }

      *(result + v71 + 1) = llroundf(v11);
      v71 += 2;
      v72 += 2;
      v74 += 2;
      if (v71 >= v35)
      {
        goto LABEL_32;
      }
    }

    v80 = 0.0;
    v79 = 0.0;
    v78 = 0.0;
LABEL_13:
    v84 = 0.0;
    v83 = 0.0;
    goto LABEL_14;
  }

LABEL_33:
  if (v29 && v31)
  {
    if (v23 >= 1)
    {
      v102 = 0;
      v103 = (v29 + v28 * v17 + v15);
      do
      {
        result = memcpy(v32, v103, v20);
        v103 += v28;
        v32 += v30;
        ++v102;
      }

      while (v23 > v102);
    }
  }

  else if (v31 && v23 >= 1)
  {
    v104 = 0;
    v105 = vdupq_n_s64(v20 - 1);
    do
    {
      if (v20 >= 1)
      {
        v106 = 0;
        do
        {
          v107 = vdupq_n_s64(v106);
          v108 = vmovn_s64(vcgeq_u64(v105, vorrq_s8(v107, xmmword_18FECDDB0)));
          if (vuzp1_s8(vuzp1_s16(v108, *v105.i8), *v105.i8).u8[0])
          {
            v32[v106] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(v108, *&v105), *&v105).i8[1])
          {
            v32[v106 + 1] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(*&v105, vmovn_s64(vcgeq_u64(v105, vorrq_s8(v107, xmmword_18FECDDA0)))), *&v105).i8[2])
          {
            v32[v106 + 2] = -1;
            v32[v106 + 3] = -1;
          }

          v109 = vmovn_s64(vcgeq_u64(v105, vorrq_s8(v107, xmmword_18FECDD90)));
          if (vuzp1_s8(*&v105, vuzp1_s16(v109, *&v105)).i32[1])
          {
            v32[v106 + 4] = -1;
          }

          if (vuzp1_s8(*&v105, vuzp1_s16(v109, *&v105)).i8[5])
          {
            v32[v106 + 5] = -1;
          }

          if (vuzp1_s8(*&v105, vuzp1_s16(*&v105, vmovn_s64(vcgeq_u64(v105, vorrq_s8(v107, xmmword_18FECDD80))))).i8[6])
          {
            v32[v106 + 6] = -1;
            v32[v106 + 7] = -1;
          }

          v110 = vmovn_s64(vcgeq_u64(v105, vorrq_s8(v107, xmmword_18FECDD70)));
          if (vuzp1_s8(vuzp1_s16(v110, *v105.i8), *v105.i8).u8[0])
          {
            v32[v106 + 8] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(v110, *&v105), *&v105).i8[1])
          {
            v32[v106 + 9] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(*&v105, vmovn_s64(vcgeq_u64(v105, vorrq_s8(v107, xmmword_18FECDD60)))), *&v105).i8[2])
          {
            v32[v106 + 10] = -1;
            v32[v106 + 11] = -1;
          }

          v111 = vmovn_s64(vcgeq_u64(v105, vorrq_s8(v107, xmmword_18FECDD50)));
          if (vuzp1_s8(*&v105, vuzp1_s16(v111, *&v105)).i32[1])
          {
            v32[v106 + 12] = -1;
          }

          if (vuzp1_s8(*&v105, vuzp1_s16(v111, *&v105)).i8[5])
          {
            v32[v106 + 13] = -1;
          }

          if (vuzp1_s8(*&v105, vuzp1_s16(*&v105, vmovn_s64(vcgeq_u64(v105, vorrq_s8(v107, xmmword_18FECDD40))))).i8[6])
          {
            v32[v106 + 14] = -1;
            v32[v106 + 15] = -1;
          }

          v106 += 16;
        }

        while (((v20 + 15) & 0xFFFFFFFFFFFFFFF0) != v106);
      }

      v32 += v30;
      ++v104;
    }

    while (v23 > v104);
  }

  *(a1 + a2 + 40) = 0;
  return result;
}

uint64_t vt_Copy_444vf_TRC_Tone_Mat_TRC_2vuyf(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12 = a4;
  v14 = a1;
  v46 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v41 = a2[1];
  v42 = v16;
  v17 = a2[2];
  v18 = a6[1];
  v45 = *a6;
  v40 = v18;
  v19 = a6[2];
  v43 = v17;
  v44 = v19;
  if (v15 == 255)
  {
    v20 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v20)
    {
      v21 = 0;
LABEL_20:
      free(v20);
      return v21;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v20 = &v40.i8[-v22];
    bzero(&v40 - v22, v23);
  }

  v24 = vbslq_s8(vcgtq_s64(vaddq_s64(v43, v41), v42), vsubq_s64(v42, v43), v41);
  v25 = vbslq_s8(vcgtq_s64(vaddq_s64(v44, v40), v45), vsubq_s64(v45, v44), v40);
  v26 = vbslq_s8(vcgtq_s64(v25, v24), v24, v25);
  v27 = v43.i64[1];
  v28 = vaddq_s64((*&v43 + __PAIR128__(-1, 0)), v26);
  if (v28.i64[0] + *v12 * v28.i64[1] <= *a5)
  {
    if (*(a3 + 8) && (v12[1] * v28.i64[1] + 2 * v28.i64[0]) > a5[1])
    {
      v40 = v26;
      v41.i64[0] = v12;
      v29 = v14;
      v30 = a7;
      v31 = a8;
    }

    else
    {
      if (!*(a3 + 16) || v28.i64[0] + v12[2] * v28.i64[1] <= a5[2])
      {
        goto LABEL_14;
      }

      v40 = v26;
      v41.i64[0] = v12;
      v29 = v14;
      v30 = a7;
      v31 = a8;
    }
  }

  else
  {
    v40 = v26;
    v41.i64[0] = v12;
    v29 = v14;
    v30 = a7;
    v31 = a8;
  }

  fig_log_get_emitter();
  v32 = FigSignalErrorAtGM();
  a8 = v31;
  a7 = v30;
  v14 = v29;
  v12 = v41.i64[0];
  v26 = v40;
  if (v32)
  {
    v21 = v32;
    goto LABEL_19;
  }

LABEL_14:
  *v20 = v15;
  v33 = v43.i64[0];
  *(v20 + 4) = v42;
  *(v20 + 20) = v26;
  *(v20 + 36) = v33;
  *(v20 + 44) = v27;
  v34 = v44;
  *(v20 + 5) = v45;
  *(v20 + 6) = v26;
  *(v20 + 7) = v34;
  *(v20 + 7) = a3;
  *(v20 + 8) = v12;
  *(v20 + 9) = a5;
  *(v20 + 16) = a7;
  *(v20 + 17) = a8;
  *(v20 + 18) = a9;
  *(v20 + 19) = v14;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v15, global_queue, v20, vt_Copy_444vf_TRC_Tone_Mat_TRC_2vuyf_GCD);
  if (!v15)
  {
    return 0;
  }

  v36 = (v20 + 160);
  v37 = v15;
  while (1)
  {
    v38 = *v36++;
    v21 = v38;
    if (v38)
    {
      break;
    }

    if (!--v37)
    {
      v21 = 0;
      break;
    }
  }

LABEL_19:
  if (v15 == 255)
  {
    goto LABEL_20;
  }

  return v21;
}

void *vt_Copy_444vf_TRC_Tone_Mat_TRC_2vuyf_GCD(void *result, uint64_t a2, double a3, float a4, float a5)
{
  v10 = result;
  v11 = *(result + 36);
  v12 = *result;
  v13 = *(result + 28) * a2 / v12 + *(result + 44);
  v14 = result[14];
  v16 = result[12];
  v15 = result[13];
  v17 = v15 * a2 / v12;
  v18 = v17 + result[15];
  v19 = (v15 + v15 * a2) / v12 - v17;
  v20 = result[7];
  v21 = result[8];
  v22 = result[16];
  v23 = result[17];
  v24 = v21[2];
  v25 = v20[2];
  v26 = v23[1];
  v27 = v22[1];
  v28 = (v27 + v26 * v18 + v14);
  if (v27)
  {
    v29 = (v27 + v26 * v18 + v14);
  }

  else
  {
    v29 = 0;
  }

  if (v19 >= 1)
  {
    v30 = 0;
    v31 = result[19];
    v32 = v16 & 0xFFFFFFFE;
    v33 = *v21;
    v34 = v21[1];
    v35 = *v23;
    LOWORD(a4) = *(v31 + 140);
    LOWORD(a5) = *(v31 + 142);
    LOWORD(v5) = *(v31 + 144);
    LOWORD(v6) = *(v31 + 146);
    LOWORD(v7) = *(v31 + 148);
    LOWORD(v8) = *(v31 + 150);
    v36 = 8191.0 / *(v31 + 128);
    v37 = LODWORD(a4);
    v179 = LODWORD(a5);
    v183 = v36 * *(v31 + 8);
    v184 = v36 * *v31;
    v181 = v36 * *(v31 + 20);
    v182 = v36 * *(v31 + 16);
    *&v38 = v36 * *(v31 + 28);
    v180 = *&v38;
    v39 = v5;
    v40 = v6;
    v41 = v7;
    v42 = v8;
    LOWORD(v38) = *(v31 + 152);
    v43 = v38;
    v44 = *(v31 + 36);
    v45 = *(v31 + 40);
    v46 = *(v31 + 44);
    v178 = *(v31 + 48) * 0.5;
    v176 = *(v31 + 56) * 0.5;
    v177 = *(v31 + 52) * 0.5;
    v174 = *(v31 + 64) * 0.5;
    v175 = *(v31 + 60) * 0.5;
    v47 = *(v31 + 72);
    v172 = *(v31 + 68) * 0.5;
    v173 = v47;
    v170 = *(v31 + 80);
    v171 = *(v31 + 76);
    v168 = *(v31 + 88);
    v169 = *(v31 + 84);
    v166 = *(v31 + 96);
    v167 = *(v31 + 92);
    v48 = *(v31 + 104);
    v164 = v48;
    v165 = *(v31 + 100);
    result = (v31 + 164);
    v49 = v31 + 16548;
    v50 = *v22 + v35 * v18;
    v51 = v31 + 32932;
    v52 = (v50 + v14);
    v54 = *v20;
    v53 = v20[1];
    v55 = (v53 + v34 * v13 + v11);
    if (!v53)
    {
      v55 = 0;
    }

    v56 = (v54 + v33 * v13 + v11);
    v58 = *(v31 + 108);
    v57 = *(v31 + 112);
    v59 = *(v31 + 116);
    v60 = *(v31 + 120);
    do
    {
      if (v32 >= 1)
      {
        v61 = 0;
        v62 = v56;
        v63 = v55;
        v64 = v29;
        v65 = v52;
        do
        {
          if (v63)
          {
            LOBYTE(v48) = *v63;
            *&v66 = LODWORD(v48);
            v47 = *&v66 - v179;
            LOBYTE(v66) = v63[1];
            v67 = v66 - v179;
            v63 += 2;
            v68 = v183 * v67;
            v69 = (v181 * v67) + (v47 * v182);
            v70 = v180 * v47;
          }

          else
          {
            v70 = 0.0;
            v69 = 0.0;
            v68 = 0.0;
          }

          LOBYTE(v47) = *v62;
          v71 = v184 * (LODWORD(v47) - v37);
          v72 = v68 + v71;
          v73 = (v68 + v71) <= 8191.0;
          v74 = 8191.0;
          if (v73)
          {
            v74 = v72;
            if (v72 < 0.0)
            {
              v74 = 0.0;
            }
          }

          v75 = v69 + v71;
          v76 = 8191.0;
          if (v75 <= 8191.0)
          {
            v76 = v75;
            if (v75 < 0.0)
            {
              v76 = 0.0;
            }
          }

          v77 = v70 + v71;
          v73 = (v70 + v71) <= 8191.0;
          v78 = 8191.0;
          if (v73)
          {
            v78 = v77;
            if (v77 < 0.0)
            {
              v78 = 0.0;
            }
          }

          if (v63)
          {
            LOBYTE(v77) = *v63;
            *&v79 = LODWORD(v77);
            v71 = *&v79 - v179;
            LOBYTE(v79) = v63[1];
            v80 = v79 - v179;
            v63 += 2;
            v81 = v183 * v80;
            v82 = (v181 * v80) + (v71 * v182);
            v83 = v180 * v71;
          }

          else
          {
            v83 = 0.0;
            v82 = 0.0;
            v81 = 0.0;
          }

          LOBYTE(v71) = v62[1];
          v84 = v37;
          v85 = v184 * (LODWORD(v71) - v37);
          v86 = v81 + v85;
          v73 = (v81 + v85) <= 8191.0;
          v87 = 8191.0;
          if (v73)
          {
            v87 = v86;
            if (v86 < 0.0)
            {
              v87 = 0.0;
            }
          }

          v88 = v82 + v85;
          v73 = (v82 + v85) <= 8191.0;
          v89 = 8191.0;
          if (v73)
          {
            v89 = v88;
            if (v88 < 0.0)
            {
              v89 = 0.0;
            }
          }

          v90 = v83 + v85;
          v91 = 8191.0;
          if (v90 <= 8191.0)
          {
            v91 = v90;
            if (v90 < 0.0)
            {
              v91 = 0.0;
            }
          }

          _H0 = *(result + llroundf(fminf(fmaxf(v74, 0.0), 8191.0)));
          __asm { FCVT            S0, H0 }

          _H7 = *(result + llroundf(fminf(fmaxf(v76, 0.0), 8191.0)));
          v99 = llroundf(fminf(fmaxf(v78, 0.0), 8191.0));
          __asm { FCVT            S4, H7 }

          _H7 = *(result + v99);
          __asm { FCVT            S7, H7 }

          _H6 = *(result + llroundf(fminf(fmaxf(v87, 0.0), 8191.0)));
          _H1 = *(result + llroundf(fminf(fmaxf(v89, 0.0), 8191.0)));
          _H30 = *(result + llroundf(fminf(fmaxf(v91, 0.0), 8191.0)));
          v106 = (((v57 * _S4) + (v58 * _S0)) + (v59 * _S7)) + (v60 * fmaxf(_S0, fmaxf(_S4, _S7)));
          v107 = 8191.0;
          if (v106 <= 8191.0)
          {
            v107 = v106;
            if (v106 < 0.0)
            {
              v107 = 0.0;
            }
          }

          __asm
          {
            FCVT            S3, H6
            FCVT            S6, H1
            FCVT            S30, H30
          }

          _H1 = *(v49 + 2 * llroundf(v107));
          __asm { FCVT            S1, H1 }

          v113 = _S0 * _S1;
          v114 = _S4 * _S1;
          v115 = _S7 * _S1;
          v116 = (((v57 * _S6) + (v58 * _S3)) + (v59 * _S30)) + (v60 * fmaxf(_S3, fmaxf(_S6, _S30)));
          v117 = 8191.0;
          if (v116 <= 8191.0)
          {
            v117 = v116;
            if (v116 < 0.0)
            {
              v117 = 0.0;
            }
          }

          _H7 = *(v49 + 2 * llroundf(v117));
          __asm { FCVT            S7, H7 }

          v120 = _S3 * _S7;
          _S6 = _S6 * _S7;
          _S7 = _S30 * _S7;
          v123 = ((v171 * v114) + (v113 * v173)) + (v115 * v170);
          v124 = ((v168 * v114) + (v113 * v169)) + (v115 * v167);
          _S0 = ((v165 * v114) + (v113 * v166)) + (v115 * v164);
          v126 = (v171 * _S6) + (v120 * v173);
          v127 = (v168 * _S6) + (v120 * v169);
          v128 = (v165 * _S6) + (v120 * v166);
          _S1 = v126 + (_S7 * v170);
          v130 = v127 + (_S7 * v167);
          LOWORD(_S6) = *(v51 + 2 * llroundf(fminf(fmaxf(v123, 0.0), 8191.0)));
          v131 = v128 + (_S7 * v164);
          __asm { FCVT            S6, H6 }

          LOWORD(_S7) = *(v51 + 2 * llroundf(fminf(fmaxf(v124, 0.0), 8191.0)));
          __asm { FCVT            S7, H7 }

          LOWORD(_S0) = *(v51 + 2 * llroundf(fminf(fmaxf(_S0, 0.0), 8191.0)));
          __asm { FCVT            S17, H0 }

          LOWORD(_S0) = *(v51 + 2 * llroundf(fminf(fmaxf(_S1, 0.0), 8191.0)));
          __asm { FCVT            S0, H0 }

          LOWORD(_S1) = *(v51 + 2 * llroundf(fminf(fmaxf(v130, 0.0), 8191.0)));
          __asm { FCVT            S4, H1 }

          v137 = llroundf(fminf(fmaxf(v131, 0.0), 8191.0));
          v138 = (v45 * _S7) + (v44 * _S6);
          _S1 = _S6 + _S0;
          v140 = _S7 + _S4;
          v141 = (v40 + ((_S6 + _S0) * v178)) + (v140 * v177);
          v142 = (v40 + (_S1 * v175)) + (v140 * v174);
          LOWORD(_S1) = *(v51 + 2 * v137);
          __asm { FCVT            S1, H1 }

          v144 = v138 + (v46 * _S17);
          v145 = v141 + ((_S17 + _S1) * v176);
          v146 = v142 + ((_S17 + _S1) * v172);
          if (v145 < v42)
          {
            v147 = v42;
          }

          else
          {
            v147 = v145;
          }

          v73 = v145 <= v43;
          v148 = v144 + v39;
          if (!v73)
          {
            v147 = v43;
          }

          v149 = llroundf(v147);
          if (v148 < v39)
          {
            v150 = v39;
          }

          else
          {
            v150 = v144 + v39;
          }

          *v65 = v149;
          if (v148 <= v41)
          {
            v151 = v150;
          }

          else
          {
            v151 = v41;
          }

          v65[1] = llroundf(v151);
          v152 = v43;
          if (v146 <= v43)
          {
            v152 = v146;
            if (v146 < v42)
            {
              v152 = v42;
            }
          }

          v47 = v45 * _S4;
          v48 = (((v45 * _S4) + (v44 * _S0)) + (v46 * _S1)) + v39;
          v65[2] = llroundf(v152);
          v153 = v41;
          v37 = v84;
          if (v48 <= v41)
          {
            v153 = v48;
            if (v48 < v39)
            {
              v153 = v39;
            }
          }

          v65[3] = llroundf(v153);
          if (v64)
          {
            *v64++ = 0;
          }

          v61 += 2;
          v62 += 2;
          v65 += 4;
        }

        while (v61 < v32);
      }

      v56 += v33;
      v55 += v34;
      v52 += v35;
      ++v30;
    }

    while (v30 != v19);
  }

  if (v25 && v29)
  {
    if (v19 >= 1)
    {
      v154 = 0;
      v155 = (v25 + v24 * v13 + v11);
      do
      {
        result = memcpy(v28, v155, v16);
        v155 += v24;
        v28 += v26;
        ++v154;
      }

      while (v19 > v154);
    }
  }

  else if (v29 && v19 >= 1)
  {
    v156 = 0;
    v157 = vdupq_n_s64(v16 - 1);
    do
    {
      if (v16 >= 1)
      {
        v158 = 0;
        do
        {
          v159 = vdupq_n_s64(v158);
          v160 = vmovn_s64(vcgeq_u64(v157, vorrq_s8(v159, xmmword_18FECDDB0)));
          if (vuzp1_s8(vuzp1_s16(v160, *v157.i8), *v157.i8).u8[0])
          {
            v28[v158] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(v160, *&v157), *&v157).i8[1])
          {
            v28[v158 + 1] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(*&v157, vmovn_s64(vcgeq_u64(v157, vorrq_s8(v159, xmmword_18FECDDA0)))), *&v157).i8[2])
          {
            v28[v158 + 2] = -1;
            v28[v158 + 3] = -1;
          }

          v161 = vmovn_s64(vcgeq_u64(v157, vorrq_s8(v159, xmmword_18FECDD90)));
          if (vuzp1_s8(*&v157, vuzp1_s16(v161, *&v157)).i32[1])
          {
            v28[v158 + 4] = -1;
          }

          if (vuzp1_s8(*&v157, vuzp1_s16(v161, *&v157)).i8[5])
          {
            v28[v158 + 5] = -1;
          }

          if (vuzp1_s8(*&v157, vuzp1_s16(*&v157, vmovn_s64(vcgeq_u64(v157, vorrq_s8(v159, xmmword_18FECDD80))))).i8[6])
          {
            v28[v158 + 6] = -1;
            v28[v158 + 7] = -1;
          }

          v162 = vmovn_s64(vcgeq_u64(v157, vorrq_s8(v159, xmmword_18FECDD70)));
          if (vuzp1_s8(vuzp1_s16(v162, *v157.i8), *v157.i8).u8[0])
          {
            v28[v158 + 8] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(v162, *&v157), *&v157).i8[1])
          {
            v28[v158 + 9] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(*&v157, vmovn_s64(vcgeq_u64(v157, vorrq_s8(v159, xmmword_18FECDD60)))), *&v157).i8[2])
          {
            v28[v158 + 10] = -1;
            v28[v158 + 11] = -1;
          }

          v163 = vmovn_s64(vcgeq_u64(v157, vorrq_s8(v159, xmmword_18FECDD50)));
          if (vuzp1_s8(*&v157, vuzp1_s16(v163, *&v157)).i32[1])
          {
            v28[v158 + 12] = -1;
          }

          if (vuzp1_s8(*&v157, vuzp1_s16(v163, *&v157)).i8[5])
          {
            v28[v158 + 13] = -1;
          }

          if (vuzp1_s8(*&v157, vuzp1_s16(*&v157, vmovn_s64(vcgeq_u64(v157, vorrq_s8(v159, xmmword_18FECDD40))))).i8[6])
          {
            v28[v158 + 14] = -1;
            v28[v158 + 15] = -1;
          }

          v158 += 16;
        }

        while (((v16 + 15) & 0xFFFFFFFFFFFFFFF0) != v158);
      }

      v28 += v26;
      ++v156;
    }

    while (v19 > v156);
  }

  *(v10 + a2 + 40) = 0;
  return result;
}

uint64_t vt_Copy_444vf_TRC_Mat_TRC_2vuyf(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12 = a4;
  v14 = a1;
  v46 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v41 = a2[1];
  v42 = v16;
  v17 = a2[2];
  v18 = a6[1];
  v45 = *a6;
  v40 = v18;
  v19 = a6[2];
  v43 = v17;
  v44 = v19;
  if (v15 == 255)
  {
    v20 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v20)
    {
      v21 = 0;
LABEL_20:
      free(v20);
      return v21;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v20 = &v40.i8[-v22];
    bzero(&v40 - v22, v23);
  }

  v24 = vbslq_s8(vcgtq_s64(vaddq_s64(v43, v41), v42), vsubq_s64(v42, v43), v41);
  v25 = vbslq_s8(vcgtq_s64(vaddq_s64(v44, v40), v45), vsubq_s64(v45, v44), v40);
  v26 = vbslq_s8(vcgtq_s64(v25, v24), v24, v25);
  v27 = v43.i64[1];
  v28 = vaddq_s64((*&v43 + __PAIR128__(-1, 0)), v26);
  if (v28.i64[0] + *v12 * v28.i64[1] <= *a5)
  {
    if (*(a3 + 8) && (v12[1] * v28.i64[1] + 2 * v28.i64[0]) > a5[1])
    {
      v40 = v26;
      v41.i64[0] = v12;
      v29 = v14;
      v30 = a7;
      v31 = a8;
    }

    else
    {
      if (!*(a3 + 16) || v28.i64[0] + v12[2] * v28.i64[1] <= a5[2])
      {
        goto LABEL_14;
      }

      v40 = v26;
      v41.i64[0] = v12;
      v29 = v14;
      v30 = a7;
      v31 = a8;
    }
  }

  else
  {
    v40 = v26;
    v41.i64[0] = v12;
    v29 = v14;
    v30 = a7;
    v31 = a8;
  }

  fig_log_get_emitter();
  v32 = FigSignalErrorAtGM();
  a8 = v31;
  a7 = v30;
  v14 = v29;
  v12 = v41.i64[0];
  v26 = v40;
  if (v32)
  {
    v21 = v32;
    goto LABEL_19;
  }

LABEL_14:
  *v20 = v15;
  v33 = v43.i64[0];
  *(v20 + 4) = v42;
  *(v20 + 20) = v26;
  *(v20 + 36) = v33;
  *(v20 + 44) = v27;
  v34 = v44;
  *(v20 + 5) = v45;
  *(v20 + 6) = v26;
  *(v20 + 7) = v34;
  *(v20 + 7) = a3;
  *(v20 + 8) = v12;
  *(v20 + 9) = a5;
  *(v20 + 16) = a7;
  *(v20 + 17) = a8;
  *(v20 + 18) = a9;
  *(v20 + 19) = v14;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v15, global_queue, v20, vt_Copy_444vf_TRC_Mat_TRC_2vuyf_GCD);
  if (!v15)
  {
    return 0;
  }

  v36 = (v20 + 160);
  v37 = v15;
  while (1)
  {
    v38 = *v36++;
    v21 = v38;
    if (v38)
    {
      break;
    }

    if (!--v37)
    {
      v21 = 0;
      break;
    }
  }

LABEL_19:
  if (v15 == 255)
  {
    goto LABEL_20;
  }

  return v21;
}

void *vt_Copy_444vf_TRC_Mat_TRC_2vuyf_GCD(void *result, uint64_t a2, double a3, float a4, float a5)
{
  v10 = result;
  v11 = *(result + 36);
  v12 = *result;
  v13 = *(result + 28) * a2 / v12 + *(result + 44);
  v14 = result[14];
  v16 = result[12];
  v15 = result[13];
  v17 = v15 * a2 / v12;
  v18 = v17 + result[15];
  v19 = (v15 + v15 * a2) / v12 - v17;
  v20 = result[7];
  v21 = result[8];
  v22 = result[16];
  v23 = result[17];
  v24 = v21[2];
  v25 = v20[2];
  v26 = v23[1];
  v27 = v22[1];
  v28 = (v27 + v26 * v18 + v14);
  if (v27)
  {
    v29 = (v27 + v26 * v18 + v14);
  }

  else
  {
    v29 = 0;
  }

  if (v19 >= 1)
  {
    v30 = 0;
    v31 = result[19];
    v32 = v16 & 0xFFFFFFFE;
    v33 = *v21;
    v34 = v21[1];
    v35 = *v23;
    LOWORD(a4) = *(v31 + 140);
    LOWORD(a5) = *(v31 + 142);
    LOWORD(v5) = *(v31 + 144);
    LOWORD(v6) = *(v31 + 146);
    LOWORD(v7) = *(v31 + 148);
    LOWORD(v8) = *(v31 + 150);
    *&v36 = 8191.0 / *(v31 + 128);
    v37 = LODWORD(a4);
    v38 = LODWORD(a5);
    v39 = *&v36 * *v31;
    v159 = *&v36 * *(v31 + 8);
    v158 = *&v36 * *(v31 + 16);
    v40 = *&v36 * *(v31 + 20);
    v41 = *&v36 * *(v31 + 28);
    v42 = v5;
    v43 = v6;
    v44 = v7;
    v45 = v8;
    LOWORD(v36) = *(v31 + 152);
    v46 = v36;
    v47 = *(v31 + 36);
    v48 = *(v31 + 40);
    v49 = *(v31 + 44);
    v156 = *(v31 + 48) * 0.5;
    v157 = v40;
    v154 = *(v31 + 56) * 0.5;
    v155 = *(v31 + 52) * 0.5;
    v50 = *(v31 + 64);
    v152 = v50 * 0.5;
    v153 = *(v31 + 60) * 0.5;
    v51 = *(v31 + 72);
    v52 = *(v31 + 68) * 0.5;
    v151 = v52;
    v54 = *(v31 + 76);
    v53 = *(v31 + 80);
    v55 = *(v31 + 84);
    v56 = *(v31 + 88);
    v57 = *(v31 + 92);
    v58 = *(v31 + 96);
    v59 = *(v31 + 100);
    v60 = *(v31 + 104);
    result = (v31 + 16548);
    v61 = v31 + 164;
    v62 = (*v22 + v35 * v18 + v14);
    v64 = *v20;
    v63 = v20[1];
    v65 = (v63 + v34 * v13 + v11);
    if (!v63)
    {
      v65 = 0;
    }

    v66 = (v64 + v33 * v13 + v11);
    do
    {
      if (v32 >= 1)
      {
        v67 = 0;
        v68 = v66;
        v69 = v65;
        v70 = v29;
        v71 = v62;
        do
        {
          if (v69)
          {
            LOBYTE(v52) = *v69;
            *&v72 = LODWORD(v52);
            v50 = *&v72 - v38;
            LOBYTE(v72) = v69[1];
            v73 = v72 - v38;
            v69 += 2;
            v74 = v159 * v73;
            v75 = (v157 * v73) + (v50 * v158);
            v76 = v41 * v50;
          }

          else
          {
            v76 = 0.0;
            v75 = 0.0;
            v74 = 0.0;
          }

          LOBYTE(v50) = *v68;
          v77 = v39 * (LODWORD(v50) - v37);
          v78 = v74 + v77;
          v79 = (v74 + v77) <= 8191.0;
          v80 = 8191.0;
          if (v79)
          {
            v80 = v78;
            if (v78 < 0.0)
            {
              v80 = 0.0;
            }
          }

          v81 = v75 + v77;
          v82 = 8191.0;
          if (v81 <= 8191.0)
          {
            v82 = v81;
            if (v81 < 0.0)
            {
              v82 = 0.0;
            }
          }

          v83 = v76 + v77;
          v84 = 8191.0;
          if ((v76 + v77) <= 8191.0)
          {
            v84 = v76 + v77;
            if (v83 < 0.0)
            {
              v84 = 0.0;
            }
          }

          if (v69)
          {
            LOBYTE(v83) = *v69;
            *&v85 = LODWORD(v83);
            v77 = *&v85 - v38;
            LOBYTE(v85) = v69[1];
            v86 = v85 - v38;
            v69 += 2;
            v87 = v159 * v86;
            v88 = (v157 * v86) + (v77 * v158);
            v89 = v41 * v77;
          }

          else
          {
            v89 = 0.0;
            v88 = 0.0;
            v87 = 0.0;
          }

          LOBYTE(v77) = v68[1];
          v90 = v39 * (LODWORD(v77) - v37);
          v91 = 8191.0;
          if ((v87 + v90) <= 8191.0)
          {
            v91 = v87 + v90;
            if ((v87 + v90) < 0.0)
            {
              v91 = 0.0;
            }
          }

          v92 = v88 + v90;
          v79 = (v88 + v90) <= 8191.0;
          v93 = 8191.0;
          if (v79)
          {
            v93 = v92;
            if (v92 < 0.0)
            {
              v93 = 0.0;
            }
          }

          v94 = v89 + v90;
          v95 = 8191.0;
          if (v94 <= 8191.0)
          {
            v95 = v94;
            if (v94 < 0.0)
            {
              v95 = 0.0;
            }
          }

          _H0 = *(v61 + 2 * llroundf(fminf(fmaxf(v80, 0.0), 8191.0)));
          __asm { FCVT            S0, H0 }

          _H5 = *(v61 + 2 * llroundf(fminf(fmaxf(v82, 0.0), 8191.0)));
          __asm { FCVT            S5, H5 }

          _H25 = *(v61 + 2 * llroundf(fminf(fmaxf(v84, 0.0), 8191.0)));
          __asm { FCVT            S25, H25 }

          _H6 = *(v61 + 2 * llroundf(fminf(fmaxf(v91, 0.0), 8191.0)));
          __asm { FCVT            S6, H6 }

          _H4 = *(v61 + 2 * llroundf(fminf(fmaxf(v93, 0.0), 8191.0)));
          __asm { FCVT            S4, H4 }

          _S26 = ((v54 * _S5) + (_S0 * v51)) + (_S25 * v53);
          v111 = ((v56 * _S5) + (_S0 * v55)) + (_S25 * v57);
          _S0 = ((v59 * _S5) + (_S0 * v58)) + (_S25 * v60);
          v113 = (v54 * _S4) + (_S6 * v51);
          v114 = (v56 * _S4) + (_S6 * v55);
          v115 = (v59 * _S4) + (_S6 * v58);
          LOWORD(_S6) = *(v61 + 2 * llroundf(fminf(fmaxf(v95, 0.0), 8191.0)));
          __asm { FCVT            S6, H6 }

          _S5 = v113 + (_S6 * v53);
          v118 = v114 + (_S6 * v57);
          LOWORD(_S26) = *(result + llroundf(fminf(fmaxf(_S26, 0.0), 8191.0)));
          v119 = v115 + (_S6 * v60);
          __asm { FCVT            S6, H26 }

          LOWORD(_S26) = *(result + llroundf(fminf(fmaxf(v111, 0.0), 8191.0)));
          __asm { FCVT            S26, H26 }

          LOWORD(_S0) = *(result + llroundf(fminf(fmaxf(_S0, 0.0), 8191.0)));
          __asm { FCVT            S28, H0 }

          LOWORD(_S0) = *(result + llroundf(fminf(fmaxf(_S5, 0.0), 8191.0)));
          __asm { FCVT            S0, H0 }

          LOWORD(_S5) = *(result + llroundf(fminf(fmaxf(v118, 0.0), 8191.0)));
          __asm { FCVT            S25, H5 }

          v125 = llroundf(fminf(fmaxf(v119, 0.0), 8191.0));
          v126 = (v48 * _S26) + (v47 * _S6);
          _S4 = _S6 + _S0;
          v128 = (v43 + ((_S6 + _S0) * v156)) + ((_S26 + _S25) * v155);
          v129 = (v43 + (_S4 * v153)) + ((_S26 + _S25) * v152);
          LOWORD(_S4) = *(result + v125);
          __asm { FCVT            S4, H4 }

          v131 = v126 + (v49 * _S28);
          v132 = v128 + ((_S28 + _S4) * v154);
          v133 = v129 + ((_S28 + _S4) * v151);
          if (v132 < v45)
          {
            v134 = v45;
          }

          else
          {
            v134 = v132;
          }

          v79 = v132 <= v46;
          v135 = v131 + v42;
          if (!v79)
          {
            v134 = v46;
          }

          v136 = llroundf(v134);
          if (v135 < v42)
          {
            v137 = v42;
          }

          else
          {
            v137 = v131 + v42;
          }

          *v71 = v136;
          if (v135 <= v44)
          {
            v138 = v137;
          }

          else
          {
            v138 = v44;
          }

          v71[1] = llroundf(v138);
          v139 = v46;
          if (v133 <= v46)
          {
            v139 = v133;
            if (v133 < v45)
            {
              v139 = v45;
            }
          }

          v50 = v48 * _S25;
          v52 = (((v48 * _S25) + (v47 * _S0)) + (v49 * _S4)) + v42;
          v71[2] = llroundf(v139);
          v140 = v44;
          if (v52 <= v44)
          {
            v140 = v52;
            if (v52 < v42)
            {
              v140 = v42;
            }
          }

          v71[3] = llroundf(v140);
          if (v70)
          {
            *v70++ = 0;
          }

          v67 += 2;
          v68 += 2;
          v71 += 4;
        }

        while (v67 < v32);
      }

      v66 += v33;
      v65 += v34;
      v62 += v35;
      ++v30;
    }

    while (v30 != v19);
  }

  if (v25 && v29)
  {
    if (v19 >= 1)
    {
      v141 = 0;
      v142 = (v25 + v24 * v13 + v11);
      do
      {
        result = memcpy(v28, v142, v16);
        v142 += v24;
        v28 += v26;
        ++v141;
      }

      while (v19 > v141);
    }
  }

  else if (v29 && v19 >= 1)
  {
    v143 = 0;
    v144 = vdupq_n_s64(v16 - 1);
    do
    {
      if (v16 >= 1)
      {
        v145 = 0;
        do
        {
          v146 = vdupq_n_s64(v145);
          v147 = vmovn_s64(vcgeq_u64(v144, vorrq_s8(v146, xmmword_18FECDDB0)));
          if (vuzp1_s8(vuzp1_s16(v147, *v144.i8), *v144.i8).u8[0])
          {
            v28[v145] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(v147, *&v144), *&v144).i8[1])
          {
            v28[v145 + 1] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(*&v144, vmovn_s64(vcgeq_u64(v144, vorrq_s8(v146, xmmword_18FECDDA0)))), *&v144).i8[2])
          {
            v28[v145 + 2] = -1;
            v28[v145 + 3] = -1;
          }

          v148 = vmovn_s64(vcgeq_u64(v144, vorrq_s8(v146, xmmword_18FECDD90)));
          if (vuzp1_s8(*&v144, vuzp1_s16(v148, *&v144)).i32[1])
          {
            v28[v145 + 4] = -1;
          }

          if (vuzp1_s8(*&v144, vuzp1_s16(v148, *&v144)).i8[5])
          {
            v28[v145 + 5] = -1;
          }

          if (vuzp1_s8(*&v144, vuzp1_s16(*&v144, vmovn_s64(vcgeq_u64(v144, vorrq_s8(v146, xmmword_18FECDD80))))).i8[6])
          {
            v28[v145 + 6] = -1;
            v28[v145 + 7] = -1;
          }

          v149 = vmovn_s64(vcgeq_u64(v144, vorrq_s8(v146, xmmword_18FECDD70)));
          if (vuzp1_s8(vuzp1_s16(v149, *v144.i8), *v144.i8).u8[0])
          {
            v28[v145 + 8] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(v149, *&v144), *&v144).i8[1])
          {
            v28[v145 + 9] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(*&v144, vmovn_s64(vcgeq_u64(v144, vorrq_s8(v146, xmmword_18FECDD60)))), *&v144).i8[2])
          {
            v28[v145 + 10] = -1;
            v28[v145 + 11] = -1;
          }

          v150 = vmovn_s64(vcgeq_u64(v144, vorrq_s8(v146, xmmword_18FECDD50)));
          if (vuzp1_s8(*&v144, vuzp1_s16(v150, *&v144)).i32[1])
          {
            v28[v145 + 12] = -1;
          }

          if (vuzp1_s8(*&v144, vuzp1_s16(v150, *&v144)).i8[5])
          {
            v28[v145 + 13] = -1;
          }

          if (vuzp1_s8(*&v144, vuzp1_s16(*&v144, vmovn_s64(vcgeq_u64(v144, vorrq_s8(v146, xmmword_18FECDD40))))).i8[6])
          {
            v28[v145 + 14] = -1;
            v28[v145 + 15] = -1;
          }

          v145 += 16;
        }

        while (((v16 + 15) & 0xFFFFFFFFFFFFFFF0) != v145);
      }

      v28 += v26;
      ++v143;
    }

    while (v19 > v143);
  }

  *(v10 + a2 + 40) = 0;
  return result;
}

uint64_t vt_Copy_444vf_rgb_2vuyf(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12 = a4;
  v14 = a1;
  v46 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v41 = a2[1];
  v42 = v16;
  v17 = a2[2];
  v18 = a6[1];
  v45 = *a6;
  v40 = v18;
  v19 = a6[2];
  v43 = v17;
  v44 = v19;
  if (v15 == 255)
  {
    v20 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v20)
    {
      v21 = 0;
LABEL_20:
      free(v20);
      return v21;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v20 = &v40.i8[-v22];
    bzero(&v40 - v22, v23);
  }

  v24 = vbslq_s8(vcgtq_s64(vaddq_s64(v43, v41), v42), vsubq_s64(v42, v43), v41);
  v25 = vbslq_s8(vcgtq_s64(vaddq_s64(v44, v40), v45), vsubq_s64(v45, v44), v40);
  v26 = vbslq_s8(vcgtq_s64(v25, v24), v24, v25);
  v27 = v43.i64[1];
  v28 = vaddq_s64((*&v43 + __PAIR128__(-1, 0)), v26);
  if (v28.i64[0] + *v12 * v28.i64[1] <= *a5)
  {
    if (*(a3 + 8) && (v12[1] * v28.i64[1] + 2 * v28.i64[0]) > a5[1])
    {
      v40 = v26;
      v41.i64[0] = v12;
      v29 = v14;
      v30 = a7;
      v31 = a8;
    }

    else
    {
      if (!*(a3 + 16) || v28.i64[0] + v12[2] * v28.i64[1] <= a5[2])
      {
        goto LABEL_14;
      }

      v40 = v26;
      v41.i64[0] = v12;
      v29 = v14;
      v30 = a7;
      v31 = a8;
    }
  }

  else
  {
    v40 = v26;
    v41.i64[0] = v12;
    v29 = v14;
    v30 = a7;
    v31 = a8;
  }

  fig_log_get_emitter();
  v32 = FigSignalErrorAtGM();
  a8 = v31;
  a7 = v30;
  v14 = v29;
  v12 = v41.i64[0];
  v26 = v40;
  if (v32)
  {
    v21 = v32;
    goto LABEL_19;
  }

LABEL_14:
  *v20 = v15;
  v33 = v43.i64[0];
  *(v20 + 4) = v42;
  *(v20 + 20) = v26;
  *(v20 + 36) = v33;
  *(v20 + 44) = v27;
  v34 = v44;
  *(v20 + 5) = v45;
  *(v20 + 6) = v26;
  *(v20 + 7) = v34;
  *(v20 + 7) = a3;
  *(v20 + 8) = v12;
  *(v20 + 9) = a5;
  *(v20 + 16) = a7;
  *(v20 + 17) = a8;
  *(v20 + 18) = a9;
  *(v20 + 19) = v14;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v15, global_queue, v20, vt_Copy_444vf_rgb_2vuyf_GCD);
  if (!v15)
  {
    return 0;
  }

  v36 = (v20 + 160);
  v37 = v15;
  while (1)
  {
    v38 = *v36++;
    v21 = v38;
    if (v38)
    {
      break;
    }

    if (!--v37)
    {
      v21 = 0;
      break;
    }
  }

LABEL_19:
  if (v15 == 255)
  {
    goto LABEL_20;
  }

  return v21;
}

void *vt_Copy_444vf_rgb_2vuyf_GCD(void *a1, uint64_t a2, double a3, double a4, double a5, float a6, float a7)
{
  v17 = *(a1 + 36);
  v18 = *a1;
  v19 = *(a1 + 28) * a2 / v18 + *(a1 + 44);
  v20 = a1[14];
  v22 = a1[12];
  v21 = a1[13];
  v23 = v21 * a2;
  v24 = v21 * a2 / v18;
  v25 = v24 + a1[15];
  v26 = (v21 + v23) / v18 - v24;
  result = a1[7];
  v28 = a1[8];
  v29 = a1[16];
  v30 = a1[17];
  v31 = v28[2];
  v32 = result[2];
  v33 = v30[1];
  v34 = v29[1];
  v35 = (v34 + v33 * v25 + v20);
  if (v34)
  {
    v36 = (v34 + v33 * v25 + v20);
  }

  else
  {
    v36 = 0;
  }

  if (v26 >= 1)
  {
    v37 = 0;
    v38 = a1[19];
    v39 = v22 & 0xFFFFFFFE;
    LOWORD(a6) = *(v38 + 140);
    LOWORD(a7) = *(v38 + 142);
    v40 = *v38;
    v41 = *(v38 + 8);
    v42 = *(v38 + 136) / *(v38 + 128);
    v43 = *(v38 + 16);
    v44 = *(v38 + 20);
    v45 = *(v38 + 28);
    LOWORD(v9) = *(v38 + 144);
    LOWORD(v10) = *(v38 + 146);
    LOWORD(v11) = *(v38 + 148);
    LOWORD(v12) = *(v38 + 150);
    LOWORD(v13) = *(v38 + 152);
    v46 = *(v38 + 36);
    v47 = *(v38 + 40);
    v48 = *(v38 + 44);
    v49 = *(v38 + 48);
    v50 = *(v38 + 52);
    v51 = *(v38 + 56);
    v52 = *(v38 + 60);
    v53 = *(v38 + 64);
    v54 = *(v38 + 68);
    v55 = *v28;
    v56 = v28[1];
    v57 = *v30;
    v58 = LODWORD(a6);
    v59 = LODWORD(a7);
    v60 = v42 * v40;
    v61 = v42 * v41;
    v62 = v42 * v43;
    v63 = v42 * v44;
    v64 = v42 * v45;
    v65 = v9;
    v66 = v10;
    v67 = v11;
    v68 = v12;
    v69 = v13;
    v70 = 0.5;
    v71 = v49 * 0.5;
    v72 = v50 * 0.5;
    v73 = v51 * 0.5;
    v74 = v52 * 0.5;
    v75 = v53 * 0.5;
    v76 = v54 * 0.5;
    v77 = (*v29 + v57 * v25 + v20);
    v79 = *result;
    v78 = result[1];
    result = (v78 + v56 * v19 + v17);
    if (!v78)
    {
      result = 0;
    }

    v80 = (v79 + v55 * v19 + v17);
    while (v39 < 1)
    {
LABEL_36:
      v80 += v55;
      result = (result + v56);
      v77 += v57;
      if (++v37 == v26)
      {
        goto LABEL_37;
      }
    }

    v81 = 0;
    v82 = v80;
    v83 = result;
    v84 = v36;
    v85 = v77;
    while (1)
    {
      v86 = 0.0;
      if (!v83)
      {
        break;
      }

      LOBYTE(v70) = *v83;
      v87 = LODWORD(v70) - v59;
      LOBYTE(v14) = v83[1];
      v88 = LODWORD(v14) - v59;
      v83 += 2;
      v89 = v61 * v88;
      v90 = (v63 * v88) + (v87 * v62);
      v91 = v64 * v87;
      if (!v83)
      {
        goto LABEL_14;
      }

      LOBYTE(v86) = *v83;
      v92 = LODWORD(v86) - v59;
      LOBYTE(v7) = v83[1];
      v93 = LODWORD(v7) - v59;
      v83 += 2;
      v94 = v61 * v93;
      v95 = (v63 * v93) + (v92 * v62);
      v86 = v64 * v92;
LABEL_15:
      LOBYTE(v8) = *v82;
      v96 = v60 * (v8 - v58);
      v97 = v89 + v96;
      v98 = v90 + v96;
      v99 = v91 + v96;
      LOBYTE(v91) = v82[1];
      v100 = v60 * (LODWORD(v91) - v58);
      v101 = v94 + v100;
      v102 = v95 + v100;
      v103 = v86 + v100;
      v104 = (((v47 * v98) + (v46 * v97)) + (v48 * v99)) + v65;
      v105 = v97 + (v94 + v100);
      v106 = v98 + v102;
      v107 = v99 + v103;
      v108 = ((v66 + (v105 * v71)) + (v106 * v72)) + (v107 * v73);
      v109 = ((v66 + (v105 * v74)) + (v106 * v75)) + (v107 * v76);
      if (v108 < v68)
      {
        *&v8 = v68;
      }

      else
      {
        *&v8 = v108;
      }

      if (v108 <= v69)
      {
        v110 = *&v8;
      }

      else
      {
        v110 = v69;
      }

      *v85 = llroundf(v110);
      if (v104 < v65)
      {
        v111 = v65;
      }

      else
      {
        v111 = v104;
      }

      if (v104 <= v67)
      {
        v112 = v111;
      }

      else
      {
        v112 = v67;
      }

      v85[1] = llroundf(v112);
      v7 = v69;
      if (v109 <= v69)
      {
        v7 = v109;
        if (v109 < v68)
        {
          v7 = v68;
        }
      }

      v14 = v47 * v102;
      v113 = ((v14 + (v46 * v101)) + (v48 * v103)) + v65;
      v85[2] = llroundf(v7);
      v70 = v67;
      if (v113 <= v67)
      {
        v70 = v113;
        if (v113 < v65)
        {
          v70 = v65;
        }
      }

      v85[3] = llroundf(v70);
      if (v84)
      {
        *v84++ = 0;
      }

      v81 += 2;
      v82 += 2;
      v85 += 4;
      if (v81 >= v39)
      {
        goto LABEL_36;
      }
    }

    v91 = 0.0;
    v90 = 0.0;
    v89 = 0.0;
LABEL_14:
    v95 = 0.0;
    v94 = 0.0;
    goto LABEL_15;
  }

LABEL_37:
  if (v32 && v36)
  {
    if (v26 >= 1)
    {
      v114 = 0;
      v115 = (v32 + v31 * v19 + v17);
      do
      {
        result = memcpy(v35, v115, v22);
        v115 += v31;
        v35 += v33;
        ++v114;
      }

      while (v26 > v114);
    }
  }

  else if (v36 && v26 >= 1)
  {
    v116 = 0;
    v117 = vdupq_n_s64(v22 - 1);
    do
    {
      if (v22 >= 1)
      {
        v118 = 0;
        do
        {
          v119 = vdupq_n_s64(v118);
          v120 = vmovn_s64(vcgeq_u64(v117, vorrq_s8(v119, xmmword_18FECDDB0)));
          if (vuzp1_s8(vuzp1_s16(v120, *v117.i8), *v117.i8).u8[0])
          {
            v35[v118] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(v120, *&v117), *&v117).i8[1])
          {
            v35[v118 + 1] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(*&v117, vmovn_s64(vcgeq_u64(v117, vorrq_s8(v119, xmmword_18FECDDA0)))), *&v117).i8[2])
          {
            v35[v118 + 2] = -1;
            v35[v118 + 3] = -1;
          }

          v121 = vmovn_s64(vcgeq_u64(v117, vorrq_s8(v119, xmmword_18FECDD90)));
          if (vuzp1_s8(*&v117, vuzp1_s16(v121, *&v117)).i32[1])
          {
            v35[v118 + 4] = -1;
          }

          if (vuzp1_s8(*&v117, vuzp1_s16(v121, *&v117)).i8[5])
          {
            v35[v118 + 5] = -1;
          }

          if (vuzp1_s8(*&v117, vuzp1_s16(*&v117, vmovn_s64(vcgeq_u64(v117, vorrq_s8(v119, xmmword_18FECDD80))))).i8[6])
          {
            v35[v118 + 6] = -1;
            v35[v118 + 7] = -1;
          }

          v122 = vmovn_s64(vcgeq_u64(v117, vorrq_s8(v119, xmmword_18FECDD70)));
          if (vuzp1_s8(vuzp1_s16(v122, *v117.i8), *v117.i8).u8[0])
          {
            v35[v118 + 8] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(v122, *&v117), *&v117).i8[1])
          {
            v35[v118 + 9] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(*&v117, vmovn_s64(vcgeq_u64(v117, vorrq_s8(v119, xmmword_18FECDD60)))), *&v117).i8[2])
          {
            v35[v118 + 10] = -1;
            v35[v118 + 11] = -1;
          }

          v123 = vmovn_s64(vcgeq_u64(v117, vorrq_s8(v119, xmmword_18FECDD50)));
          if (vuzp1_s8(*&v117, vuzp1_s16(v123, *&v117)).i32[1])
          {
            v35[v118 + 12] = -1;
          }

          if (vuzp1_s8(*&v117, vuzp1_s16(v123, *&v117)).i8[5])
          {
            v35[v118 + 13] = -1;
          }

          if (vuzp1_s8(*&v117, vuzp1_s16(*&v117, vmovn_s64(vcgeq_u64(v117, vorrq_s8(v119, xmmword_18FECDD40))))).i8[6])
          {
            v35[v118 + 14] = -1;
            v35[v118 + 15] = -1;
          }

          v118 += 16;
        }

        while (((v22 + 15) & 0xFFFFFFFFFFFFFFF0) != v118);
      }

      v35 += v33;
      ++v116;
    }

    while (v26 > v116);
  }

  *(a1 + a2 + 40) = 0;
  return result;
}

uint64_t vt_Copy_444vf_TRC_Tone_Mat_TRC_yuvsf(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12 = a4;
  v14 = a1;
  v46 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v41 = a2[1];
  v42 = v16;
  v17 = a2[2];
  v18 = a6[1];
  v45 = *a6;
  v40 = v18;
  v19 = a6[2];
  v43 = v17;
  v44 = v19;
  if (v15 == 255)
  {
    v20 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v20)
    {
      v21 = 0;
LABEL_20:
      free(v20);
      return v21;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v20 = &v40.i8[-v22];
    bzero(&v40 - v22, v23);
  }

  v24 = vbslq_s8(vcgtq_s64(vaddq_s64(v43, v41), v42), vsubq_s64(v42, v43), v41);
  v25 = vbslq_s8(vcgtq_s64(vaddq_s64(v44, v40), v45), vsubq_s64(v45, v44), v40);
  v26 = vbslq_s8(vcgtq_s64(v25, v24), v24, v25);
  v27 = v43.i64[1];
  v28 = vaddq_s64((*&v43 + __PAIR128__(-1, 0)), v26);
  if (v28.i64[0] + *v12 * v28.i64[1] <= *a5)
  {
    if (*(a3 + 8) && (v12[1] * v28.i64[1] + 2 * v28.i64[0]) > a5[1])
    {
      v40 = v26;
      v41.i64[0] = v12;
      v29 = v14;
      v30 = a7;
      v31 = a8;
    }

    else
    {
      if (!*(a3 + 16) || v28.i64[0] + v12[2] * v28.i64[1] <= a5[2])
      {
        goto LABEL_14;
      }

      v40 = v26;
      v41.i64[0] = v12;
      v29 = v14;
      v30 = a7;
      v31 = a8;
    }
  }

  else
  {
    v40 = v26;
    v41.i64[0] = v12;
    v29 = v14;
    v30 = a7;
    v31 = a8;
  }

  fig_log_get_emitter();
  v32 = FigSignalErrorAtGM();
  a8 = v31;
  a7 = v30;
  v14 = v29;
  v12 = v41.i64[0];
  v26 = v40;
  if (v32)
  {
    v21 = v32;
    goto LABEL_19;
  }

LABEL_14:
  *v20 = v15;
  v33 = v43.i64[0];
  *(v20 + 4) = v42;
  *(v20 + 20) = v26;
  *(v20 + 36) = v33;
  *(v20 + 44) = v27;
  v34 = v44;
  *(v20 + 5) = v45;
  *(v20 + 6) = v26;
  *(v20 + 7) = v34;
  *(v20 + 7) = a3;
  *(v20 + 8) = v12;
  *(v20 + 9) = a5;
  *(v20 + 16) = a7;
  *(v20 + 17) = a8;
  *(v20 + 18) = a9;
  *(v20 + 19) = v14;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v15, global_queue, v20, vt_Copy_444vf_TRC_Tone_Mat_TRC_yuvsf_GCD);
  if (!v15)
  {
    return 0;
  }

  v36 = (v20 + 160);
  v37 = v15;
  while (1)
  {
    v38 = *v36++;
    v21 = v38;
    if (v38)
    {
      break;
    }

    if (!--v37)
    {
      v21 = 0;
      break;
    }
  }

LABEL_19:
  if (v15 == 255)
  {
    goto LABEL_20;
  }

  return v21;
}

void *vt_Copy_444vf_TRC_Tone_Mat_TRC_yuvsf_GCD(void *result, uint64_t a2, double a3, float a4, float a5)
{
  v10 = result;
  v11 = *(result + 36);
  v12 = *result;
  v13 = *(result + 28) * a2 / v12 + *(result + 44);
  v14 = result[14];
  v16 = result[12];
  v15 = result[13];
  v17 = v15 * a2 / v12;
  v18 = v17 + result[15];
  v19 = (v15 + v15 * a2) / v12 - v17;
  v20 = result[7];
  v21 = result[8];
  v22 = result[16];
  v23 = result[17];
  v24 = v21[2];
  v171 = v20[2];
  v25 = v23[1];
  v26 = v22[1];
  v27 = (v26 + v25 * v18 + v14);
  if (v26)
  {
    v28 = (v26 + v25 * v18 + v14);
  }

  else
  {
    v28 = 0;
  }

  if (v19 >= 1)
  {
    v29 = 0;
    v30 = result[19];
    v31 = v16 & 0xFFFFFFFE;
    v32 = *v21;
    v33 = v21[1];
    v34 = *v23;
    LOWORD(a4) = *(v30 + 140);
    LOWORD(a5) = *(v30 + 142);
    LOWORD(v5) = *(v30 + 144);
    LOWORD(v6) = *(v30 + 146);
    LOWORD(v7) = *(v30 + 148);
    LOWORD(v8) = *(v30 + 150);
    v35 = 8191.0 / *(v30 + 128);
    v36 = LODWORD(a4);
    v37 = LODWORD(a5);
    v184 = v35 * *v30;
    v182 = v35 * *(v30 + 16);
    v183 = v35 * *(v30 + 8);
    v38 = v35 * *(v30 + 20);
    *&v39 = v35 * *(v30 + 28);
    v180 = *&v39;
    v181 = v38;
    v40 = v5;
    v41 = v6;
    v42 = v7;
    v43 = v8;
    LOWORD(v39) = *(v30 + 152);
    v44 = v39;
    v45 = *(v30 + 40);
    v178 = *(v30 + 36);
    v179 = v41;
    v46 = *(v30 + 44);
    v176 = *(v30 + 52) * 0.5;
    v177 = *(v30 + 48) * 0.5;
    v47 = *(v30 + 64);
    v174 = *(v30 + 60) * 0.5;
    v175 = *(v30 + 56) * 0.5;
    v48 = *(v30 + 72);
    v49 = *(v30 + 68) * 0.5;
    v172 = v49;
    v173 = v47 * 0.5;
    v51 = *(v30 + 76);
    v50 = *(v30 + 80);
    v52 = *(v30 + 84);
    v53 = *(v30 + 88);
    v54 = *(v30 + 92);
    v55 = *(v30 + 96);
    v56 = *(v30 + 100);
    v57 = *(v30 + 104);
    result = (v30 + 164);
    v58 = v30 + 16548;
    v59 = *v22 + v34 * v18;
    v60 = v30 + 32932;
    v61 = (v59 + v14);
    v63 = *v20;
    v62 = v20[1];
    v64 = (v62 + v33 * v13 + v11);
    if (!v62)
    {
      v64 = 0;
    }

    v65 = (v63 + v32 * v13 + v11);
    v66 = *(v30 + 108);
    v67 = *(v30 + 112);
    v68 = *(v30 + 116);
    v69 = *(v30 + 120);
    do
    {
      if (v31 >= 1)
      {
        v70 = 0;
        v71 = v65;
        v72 = v64;
        v73 = v28;
        v74 = v61;
        do
        {
          if (v72)
          {
            LOBYTE(v49) = *v72;
            *&v75 = LODWORD(v49);
            v47 = *&v75 - v37;
            LOBYTE(v75) = v72[1];
            v76 = v75 - v37;
            v72 += 2;
            v77 = v183 * v76;
            v78 = (v181 * v76) + (v47 * v182);
            v79 = v180 * v47;
          }

          else
          {
            v79 = 0.0;
            v78 = 0.0;
            v77 = 0.0;
          }

          LOBYTE(v47) = *v71;
          v80 = v184 * (LODWORD(v47) - v36);
          v81 = v77 + v80;
          v82 = (v77 + v80) <= 8191.0;
          v83 = 8191.0;
          if (v82)
          {
            v83 = v81;
            if (v81 < 0.0)
            {
              v83 = 0.0;
            }
          }

          v84 = v78 + v80;
          v85 = 8191.0;
          if (v84 <= 8191.0)
          {
            v85 = v84;
            if (v84 < 0.0)
            {
              v85 = 0.0;
            }
          }

          v86 = v79 + v80;
          v82 = (v79 + v80) <= 8191.0;
          v87 = 8191.0;
          if (v82)
          {
            v87 = v86;
            if (v86 < 0.0)
            {
              v87 = 0.0;
            }
          }

          if (v72)
          {
            LOBYTE(v86) = *v72;
            *&v88 = LODWORD(v86);
            v80 = *&v88 - v37;
            LOBYTE(v88) = v72[1];
            v89 = v88 - v37;
            v72 += 2;
            v90 = v183 * v89;
            v91 = (v181 * v89) + (v80 * v182);
            v92 = v180 * v80;
          }

          else
          {
            v92 = 0.0;
            v91 = 0.0;
            v90 = 0.0;
          }

          LOBYTE(v80) = v71[1];
          v93 = v184 * (LODWORD(v80) - v36);
          v94 = v90 + v93;
          v82 = (v90 + v93) <= 8191.0;
          v95 = 8191.0;
          if (v82)
          {
            v95 = v94;
            if (v94 < 0.0)
            {
              v95 = 0.0;
            }
          }

          v96 = v91 + v93;
          v82 = (v91 + v93) <= 8191.0;
          v97 = 8191.0;
          if (v82)
          {
            v97 = v96;
            if (v96 < 0.0)
            {
              v97 = 0.0;
            }
          }

          v98 = v92 + v93;
          v99 = 8191.0;
          if (v98 <= 8191.0)
          {
            v99 = v98;
            if (v98 < 0.0)
            {
              v99 = 0.0;
            }
          }

          _H0 = *(result + llroundf(fminf(fmaxf(v83, 0.0), 8191.0)));
          __asm { FCVT            S0, H0 }

          _H7 = *(result + llroundf(fminf(fmaxf(v85, 0.0), 8191.0)));
          v107 = llroundf(fminf(fmaxf(v87, 0.0), 8191.0));
          __asm { FCVT            S4, H7 }

          _H7 = *(result + v107);
          __asm { FCVT            S7, H7 }

          _H6 = *(result + llroundf(fminf(fmaxf(v95, 0.0), 8191.0)));
          _H1 = *(result + llroundf(fminf(fmaxf(v97, 0.0), 8191.0)));
          _H30 = *(result + llroundf(fminf(fmaxf(v99, 0.0), 8191.0)));
          v114 = (((v67 * _S4) + (v66 * _S0)) + (v68 * _S7)) + (v69 * fmaxf(_S0, fmaxf(_S4, _S7)));
          v115 = 8191.0;
          if (v114 <= 8191.0)
          {
            v115 = v114;
            if (v114 < 0.0)
            {
              v115 = 0.0;
            }
          }

          __asm
          {
            FCVT            S3, H6
            FCVT            S6, H1
            FCVT            S30, H30
          }

          _H1 = *(v58 + 2 * llroundf(v115));
          __asm { FCVT            S1, H1 }

          v121 = _S0 * _S1;
          v122 = _S4 * _S1;
          v123 = _S7 * _S1;
          v124 = (((v67 * _S6) + (v66 * _S3)) + (v68 * _S30)) + (v69 * fmaxf(_S3, fmaxf(_S6, _S30)));
          v125 = 8191.0;
          if (v124 <= 8191.0)
          {
            v125 = v124;
            if (v124 < 0.0)
            {
              v125 = 0.0;
            }
          }

          _H7 = *(v58 + 2 * llroundf(v125));
          __asm { FCVT            S7, H7 }

          v128 = _S3 * _S7;
          _S6 = _S6 * _S7;
          v130 = _S30 * _S7;
          v131 = ((v51 * v122) + (v121 * v48)) + (v123 * v50);
          v132 = ((v53 * v122) + (v121 * v52)) + (v123 * v54);
          _S0 = ((v56 * v122) + (v121 * v55)) + (v123 * v57);
          _S1 = (v51 * _S6) + (v128 * v48);
          _S4 = (v53 * _S6) + (v128 * v52);
          v136 = ((v56 * _S6) + (v128 * v55)) + (v130 * v57);
          LOWORD(_S6) = *(v60 + 2 * llroundf(fminf(fmaxf(v131, 0.0), 8191.0)));
          v137 = llroundf(fminf(fmaxf(_S0, 0.0), 8191.0));
          LOWORD(_S0) = *(v60 + 2 * llroundf(fminf(fmaxf(v132, 0.0), 8191.0)));
          __asm
          {
            FCVT            S6, H6
            FCVT            S0, H0
          }

          LOWORD(_S1) = *(v60 + 2 * llroundf(fminf(fmaxf(_S1 + (v130 * v50), 0.0), 8191.0)));
          __asm { FCVT            S1, H1 }

          LOWORD(_S4) = *(v60 + 2 * llroundf(fminf(fmaxf(_S4 + (v130 * v54), 0.0), 8191.0)));
          __asm { FCVT            S4, H4 }

          v142 = llroundf(fminf(fmaxf(v136, 0.0), 8191.0));
          v143 = (v45 * _S0) + (v178 * _S6);
          v144 = (v45 * _S4) + (v178 * _S1);
          v145 = _S6 + _S1;
          LOWORD(_S6) = *(v60 + 2 * v137);
          v146 = _S0 + _S4;
          LOWORD(_S4) = *(v60 + 2 * v142);
          __asm
          {
            FCVT            S6, H6
            FCVT            S4, H4
          }

          v149 = (v143 + (v46 * _S6)) + v40;
          v150 = v144 + (v46 * _S4);
          v151 = _S6 + _S4;
          v152 = (v179 + (v145 * v177)) + (v146 * v176);
          v153 = (v179 + (v145 * v174)) + (v146 * v173);
          if (v149 < v40)
          {
            v154 = v40;
          }

          else
          {
            v154 = v149;
          }

          v82 = v149 <= v42;
          v155 = v152 + (v151 * v175);
          if (!v82)
          {
            v154 = v42;
          }

          v156 = llroundf(v154);
          if (v155 < v43)
          {
            v157 = v43;
          }

          else
          {
            v157 = v152 + (v151 * v175);
          }

          if (v155 > v44)
          {
            v157 = v44;
          }

          v158 = llroundf(v157);
          v49 = v153 + (v151 * v172);
          if ((v150 + v40) < v40)
          {
            v47 = v40;
          }

          else
          {
            v47 = v150 + v40;
          }

          *v74 = v156;
          v74[1] = v158;
          if ((v150 + v40) <= v42)
          {
            v159 = v47;
          }

          else
          {
            v159 = v42;
          }

          v74[2] = llroundf(v159);
          v160 = v44;
          if (v49 <= v44)
          {
            v160 = v49;
            if (v49 < v43)
            {
              v160 = v43;
            }
          }

          v74[3] = llroundf(v160);
          if (v73)
          {
            *v73++ = 0;
          }

          v70 += 2;
          v71 += 2;
          v74 += 4;
        }

        while (v70 < v31);
      }

      v65 += v32;
      v64 += v33;
      v61 += v34;
      ++v29;
    }

    while (v29 != v19);
  }

  if (v171 && v28)
  {
    if (v19 >= 1)
    {
      v161 = 0;
      v162 = (v171 + v24 * v13 + v11);
      do
      {
        result = memcpy(v27, v162, v16);
        v162 += v24;
        v27 += v25;
        ++v161;
      }

      while (v19 > v161);
    }
  }

  else if (v28 && v19 >= 1)
  {
    v163 = 0;
    v164 = vdupq_n_s64(v16 - 1);
    do
    {
      if (v16 >= 1)
      {
        v165 = 0;
        do
        {
          v166 = vdupq_n_s64(v165);
          v167 = vmovn_s64(vcgeq_u64(v164, vorrq_s8(v166, xmmword_18FECDDB0)));
          if (vuzp1_s8(vuzp1_s16(v167, *v164.i8), *v164.i8).u8[0])
          {
            v27[v165] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(v167, *&v164), *&v164).i8[1])
          {
            v27[v165 + 1] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(*&v164, vmovn_s64(vcgeq_u64(v164, vorrq_s8(v166, xmmword_18FECDDA0)))), *&v164).i8[2])
          {
            v27[v165 + 2] = -1;
            v27[v165 + 3] = -1;
          }

          v168 = vmovn_s64(vcgeq_u64(v164, vorrq_s8(v166, xmmword_18FECDD90)));
          if (vuzp1_s8(*&v164, vuzp1_s16(v168, *&v164)).i32[1])
          {
            v27[v165 + 4] = -1;
          }

          if (vuzp1_s8(*&v164, vuzp1_s16(v168, *&v164)).i8[5])
          {
            v27[v165 + 5] = -1;
          }

          if (vuzp1_s8(*&v164, vuzp1_s16(*&v164, vmovn_s64(vcgeq_u64(v164, vorrq_s8(v166, xmmword_18FECDD80))))).i8[6])
          {
            v27[v165 + 6] = -1;
            v27[v165 + 7] = -1;
          }

          v169 = vmovn_s64(vcgeq_u64(v164, vorrq_s8(v166, xmmword_18FECDD70)));
          if (vuzp1_s8(vuzp1_s16(v169, *v164.i8), *v164.i8).u8[0])
          {
            v27[v165 + 8] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(v169, *&v164), *&v164).i8[1])
          {
            v27[v165 + 9] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(*&v164, vmovn_s64(vcgeq_u64(v164, vorrq_s8(v166, xmmword_18FECDD60)))), *&v164).i8[2])
          {
            v27[v165 + 10] = -1;
            v27[v165 + 11] = -1;
          }

          v170 = vmovn_s64(vcgeq_u64(v164, vorrq_s8(v166, xmmword_18FECDD50)));
          if (vuzp1_s8(*&v164, vuzp1_s16(v170, *&v164)).i32[1])
          {
            v27[v165 + 12] = -1;
          }

          if (vuzp1_s8(*&v164, vuzp1_s16(v170, *&v164)).i8[5])
          {
            v27[v165 + 13] = -1;
          }

          if (vuzp1_s8(*&v164, vuzp1_s16(*&v164, vmovn_s64(vcgeq_u64(v164, vorrq_s8(v166, xmmword_18FECDD40))))).i8[6])
          {
            v27[v165 + 14] = -1;
            v27[v165 + 15] = -1;
          }

          v165 += 16;
        }

        while (((v16 + 15) & 0xFFFFFFFFFFFFFFF0) != v165);
      }

      v27 += v25;
      ++v163;
    }

    while (v19 > v163);
  }

  *(v10 + a2 + 40) = 0;
  return result;
}

uint64_t vt_Copy_444vf_TRC_Mat_TRC_yuvsf(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12 = a4;
  v14 = a1;
  v46 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v41 = a2[1];
  v42 = v16;
  v17 = a2[2];
  v18 = a6[1];
  v45 = *a6;
  v40 = v18;
  v19 = a6[2];
  v43 = v17;
  v44 = v19;
  if (v15 == 255)
  {
    v20 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v20)
    {
      v21 = 0;
LABEL_20:
      free(v20);
      return v21;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v20 = &v40.i8[-v22];
    bzero(&v40 - v22, v23);
  }

  v24 = vbslq_s8(vcgtq_s64(vaddq_s64(v43, v41), v42), vsubq_s64(v42, v43), v41);
  v25 = vbslq_s8(vcgtq_s64(vaddq_s64(v44, v40), v45), vsubq_s64(v45, v44), v40);
  v26 = vbslq_s8(vcgtq_s64(v25, v24), v24, v25);
  v27 = v43.i64[1];
  v28 = vaddq_s64((*&v43 + __PAIR128__(-1, 0)), v26);
  if (v28.i64[0] + *v12 * v28.i64[1] <= *a5)
  {
    if (*(a3 + 8) && (v12[1] * v28.i64[1] + 2 * v28.i64[0]) > a5[1])
    {
      v40 = v26;
      v41.i64[0] = v12;
      v29 = v14;
      v30 = a7;
      v31 = a8;
    }

    else
    {
      if (!*(a3 + 16) || v28.i64[0] + v12[2] * v28.i64[1] <= a5[2])
      {
        goto LABEL_14;
      }

      v40 = v26;
      v41.i64[0] = v12;
      v29 = v14;
      v30 = a7;
      v31 = a8;
    }
  }

  else
  {
    v40 = v26;
    v41.i64[0] = v12;
    v29 = v14;
    v30 = a7;
    v31 = a8;
  }

  fig_log_get_emitter();
  v32 = FigSignalErrorAtGM();
  a8 = v31;
  a7 = v30;
  v14 = v29;
  v12 = v41.i64[0];
  v26 = v40;
  if (v32)
  {
    v21 = v32;
    goto LABEL_19;
  }

LABEL_14:
  *v20 = v15;
  v33 = v43.i64[0];
  *(v20 + 4) = v42;
  *(v20 + 20) = v26;
  *(v20 + 36) = v33;
  *(v20 + 44) = v27;
  v34 = v44;
  *(v20 + 5) = v45;
  *(v20 + 6) = v26;
  *(v20 + 7) = v34;
  *(v20 + 7) = a3;
  *(v20 + 8) = v12;
  *(v20 + 9) = a5;
  *(v20 + 16) = a7;
  *(v20 + 17) = a8;
  *(v20 + 18) = a9;
  *(v20 + 19) = v14;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v15, global_queue, v20, vt_Copy_444vf_TRC_Mat_TRC_yuvsf_GCD);
  if (!v15)
  {
    return 0;
  }

  v36 = (v20 + 160);
  v37 = v15;
  while (1)
  {
    v38 = *v36++;
    v21 = v38;
    if (v38)
    {
      break;
    }

    if (!--v37)
    {
      v21 = 0;
      break;
    }
  }

LABEL_19:
  if (v15 == 255)
  {
    goto LABEL_20;
  }

  return v21;
}

void *vt_Copy_444vf_TRC_Mat_TRC_yuvsf_GCD(void *result, uint64_t a2, double a3, float a4, float a5)
{
  v10 = result;
  v11 = *(result + 36);
  v12 = *result;
  v13 = *(result + 28) * a2 / v12 + *(result + 44);
  v14 = result[14];
  v16 = result[12];
  v15 = result[13];
  v17 = v15 * a2 / v12;
  v18 = v17 + result[15];
  v19 = (v15 + v15 * a2) / v12 - v17;
  v20 = result[7];
  v21 = result[8];
  v22 = result[16];
  v23 = result[17];
  v24 = v21[2];
  v25 = v20[2];
  v26 = v23[1];
  v27 = v22[1];
  v28 = (v27 + v26 * v18 + v14);
  if (v27)
  {
    v29 = (v27 + v26 * v18 + v14);
  }

  else
  {
    v29 = 0;
  }

  if (v19 >= 1)
  {
    v30 = 0;
    v31 = result[19];
    v32 = v16 & 0xFFFFFFFE;
    v33 = *v21;
    v34 = v21[1];
    v35 = *v23;
    LOWORD(a4) = *(v31 + 140);
    LOWORD(a5) = *(v31 + 142);
    LOWORD(v5) = *(v31 + 144);
    LOWORD(v6) = *(v31 + 146);
    LOWORD(v7) = *(v31 + 148);
    LOWORD(v8) = *(v31 + 150);
    *&v36 = 8191.0 / *(v31 + 128);
    v37 = LODWORD(a4);
    v38 = LODWORD(a5);
    v39 = *&v36 * *v31;
    v163 = *&v36 * *(v31 + 8);
    v162 = *&v36 * *(v31 + 16);
    v40 = *&v36 * *(v31 + 20);
    v41 = *&v36 * *(v31 + 28);
    v42 = v5;
    v43 = v6;
    v44 = v7;
    v45 = v8;
    LOWORD(v36) = *(v31 + 152);
    v46 = v36;
    v47 = *(v31 + 36);
    v48 = *(v31 + 40);
    v49 = *(v31 + 44);
    v160 = *(v31 + 48) * 0.5;
    v161 = v40;
    v158 = *(v31 + 56) * 0.5;
    v159 = *(v31 + 52) * 0.5;
    v50 = *(v31 + 64);
    v156 = v50 * 0.5;
    v157 = *(v31 + 60) * 0.5;
    v51 = *(v31 + 72);
    v52 = *(v31 + 68) * 0.5;
    v155 = v52;
    v54 = *(v31 + 76);
    v53 = *(v31 + 80);
    v55 = *(v31 + 84);
    v56 = *(v31 + 88);
    v57 = *(v31 + 92);
    v58 = *(v31 + 96);
    v59 = *(v31 + 100);
    v60 = *(v31 + 104);
    result = (v31 + 16548);
    v61 = v31 + 164;
    v62 = (*v22 + v35 * v18 + v14);
    v64 = *v20;
    v63 = v20[1];
    v65 = (v63 + v34 * v13 + v11);
    if (!v63)
    {
      v65 = 0;
    }

    v66 = (v64 + v33 * v13 + v11);
    do
    {
      if (v32 >= 1)
      {
        v67 = 0;
        v68 = v66;
        v69 = v65;
        v70 = v29;
        v71 = v62;
        do
        {
          if (v69)
          {
            LOBYTE(v52) = *v69;
            *&v72 = LODWORD(v52);
            v50 = *&v72 - v38;
            LOBYTE(v72) = v69[1];
            v73 = v72 - v38;
            v69 += 2;
            v74 = v163 * v73;
            v75 = (v161 * v73) + (v50 * v162);
            v76 = v41 * v50;
          }

          else
          {
            v76 = 0.0;
            v75 = 0.0;
            v74 = 0.0;
          }

          LOBYTE(v50) = *v68;
          v77 = v39 * (LODWORD(v50) - v37);
          v78 = v74 + v77;
          v79 = (v74 + v77) <= 8191.0;
          v80 = 8191.0;
          if (v79)
          {
            v80 = v78;
            if (v78 < 0.0)
            {
              v80 = 0.0;
            }
          }

          v81 = v75 + v77;
          v82 = 8191.0;
          if (v81 <= 8191.0)
          {
            v82 = v81;
            if (v81 < 0.0)
            {
              v82 = 0.0;
            }
          }

          v83 = v76 + v77;
          v84 = 8191.0;
          if ((v76 + v77) <= 8191.0)
          {
            v84 = v76 + v77;
            if (v83 < 0.0)
            {
              v84 = 0.0;
            }
          }

          if (v69)
          {
            LOBYTE(v83) = *v69;
            *&v85 = LODWORD(v83);
            v77 = *&v85 - v38;
            LOBYTE(v85) = v69[1];
            v86 = v85 - v38;
            v69 += 2;
            v87 = v163 * v86;
            v88 = (v161 * v86) + (v77 * v162);
            v89 = v41 * v77;
          }

          else
          {
            v89 = 0.0;
            v88 = 0.0;
            v87 = 0.0;
          }

          LOBYTE(v77) = v68[1];
          v90 = v39 * (LODWORD(v77) - v37);
          v91 = 8191.0;
          if ((v87 + v90) <= 8191.0)
          {
            v91 = v87 + v90;
            if ((v87 + v90) < 0.0)
            {
              v91 = 0.0;
            }
          }

          v92 = v88 + v90;
          v79 = (v88 + v90) <= 8191.0;
          v93 = 8191.0;
          if (v79)
          {
            v93 = v92;
            if (v92 < 0.0)
            {
              v93 = 0.0;
            }
          }

          v94 = v89 + v90;
          v95 = 8191.0;
          if (v94 <= 8191.0)
          {
            v95 = v94;
            if (v94 < 0.0)
            {
              v95 = 0.0;
            }
          }

          _H0 = *(v61 + 2 * llroundf(fminf(fmaxf(v80, 0.0), 8191.0)));
          __asm { FCVT            S0, H0 }

          _H5 = *(v61 + 2 * llroundf(fminf(fmaxf(v82, 0.0), 8191.0)));
          __asm { FCVT            S5, H5 }

          _H25 = *(v61 + 2 * llroundf(fminf(fmaxf(v84, 0.0), 8191.0)));
          __asm { FCVT            S25, H25 }

          _H6 = *(v61 + 2 * llroundf(fminf(fmaxf(v91, 0.0), 8191.0)));
          __asm { FCVT            S6, H6 }

          _H4 = *(v61 + 2 * llroundf(fminf(fmaxf(v93, 0.0), 8191.0)));
          __asm { FCVT            S4, H4 }

          v110 = ((v54 * _S5) + (_S0 * v51)) + (_S25 * v53);
          v111 = ((v56 * _S5) + (_S0 * v55)) + (_S25 * v57);
          _S0 = ((v59 * _S5) + (_S0 * v58)) + (_S25 * v60);
          v113 = (v54 * _S4) + (_S6 * v51);
          v114 = (v56 * _S4) + (_S6 * v55);
          v115 = (v59 * _S4) + (_S6 * v58);
          LOWORD(_S6) = *(v61 + 2 * llroundf(fminf(fmaxf(v95, 0.0), 8191.0)));
          __asm { FCVT            S6, H6 }

          _S5 = v113 + (_S6 * v53);
          _S25 = v114 + (_S6 * v57);
          v119 = v115 + (_S6 * v60);
          LOWORD(_S6) = *(result + llroundf(fminf(fmaxf(v110, 0.0), 8191.0)));
          v120 = llroundf(fminf(fmaxf(_S0, 0.0), 8191.0));
          LOWORD(_S0) = *(result + llroundf(fminf(fmaxf(v111, 0.0), 8191.0)));
          __asm
          {
            FCVT            S6, H6
            FCVT            S0, H0
          }

          LOWORD(_S5) = *(result + llroundf(fminf(fmaxf(_S5, 0.0), 8191.0)));
          __asm { FCVT            S5, H5 }

          LOWORD(_S25) = *(result + llroundf(fminf(fmaxf(_S25, 0.0), 8191.0)));
          __asm { FCVT            S25, H25 }

          v125 = llroundf(fminf(fmaxf(v119, 0.0), 8191.0));
          v126 = (v48 * _S0) + (v47 * _S6);
          v127 = (v48 * _S25) + (v47 * _S5);
          v128 = _S6 + _S5;
          LOWORD(_S6) = *(result + v120);
          v129 = _S0 + _S25;
          LOWORD(_S25) = *(result + v125);
          __asm
          {
            FCVT            S6, H6
            FCVT            S25, H25
          }

          v132 = (v126 + (v49 * _S6)) + v42;
          v133 = v127 + (v49 * _S25);
          v134 = _S6 + _S25;
          v135 = (v43 + (v128 * v160)) + (v129 * v159);
          v136 = (v43 + (v128 * v157)) + (v129 * v156);
          if (v132 < v42)
          {
            v137 = v42;
          }

          else
          {
            v137 = v132;
          }

          v79 = v132 <= v44;
          v138 = v135 + (v134 * v158);
          if (!v79)
          {
            v137 = v44;
          }

          v139 = llroundf(v137);
          if (v138 < v45)
          {
            v140 = v45;
          }

          else
          {
            v140 = v135 + (v134 * v158);
          }

          if (v138 <= v46)
          {
            v141 = v140;
          }

          else
          {
            v141 = v46;
          }

          v142 = llroundf(v141);
          v52 = v136 + (v134 * v155);
          if ((v133 + v42) < v42)
          {
            v50 = v42;
          }

          else
          {
            v50 = v133 + v42;
          }

          *v71 = v139;
          v71[1] = v142;
          if ((v133 + v42) <= v44)
          {
            v143 = v50;
          }

          else
          {
            v143 = v44;
          }

          v71[2] = llroundf(v143);
          v144 = v46;
          if (v52 <= v46)
          {
            v144 = v52;
            if (v52 < v45)
            {
              v144 = v45;
            }
          }

          v71[3] = llroundf(v144);
          if (v70)
          {
            *v70++ = 0;
          }

          v67 += 2;
          v68 += 2;
          v71 += 4;
        }

        while (v67 < v32);
      }

      v66 += v33;
      v65 += v34;
      v62 += v35;
      ++v30;
    }

    while (v30 != v19);
  }

  if (v25 && v29)
  {
    if (v19 >= 1)
    {
      v145 = 0;
      v146 = (v25 + v24 * v13 + v11);
      do
      {
        result = memcpy(v28, v146, v16);
        v146 += v24;
        v28 += v26;
        ++v145;
      }

      while (v19 > v145);
    }
  }

  else if (v29 && v19 >= 1)
  {
    v147 = 0;
    v148 = vdupq_n_s64(v16 - 1);
    do
    {
      if (v16 >= 1)
      {
        v149 = 0;
        do
        {
          v150 = vdupq_n_s64(v149);
          v151 = vmovn_s64(vcgeq_u64(v148, vorrq_s8(v150, xmmword_18FECDDB0)));
          if (vuzp1_s8(vuzp1_s16(v151, *v148.i8), *v148.i8).u8[0])
          {
            v28[v149] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(v151, *&v148), *&v148).i8[1])
          {
            v28[v149 + 1] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(*&v148, vmovn_s64(vcgeq_u64(v148, vorrq_s8(v150, xmmword_18FECDDA0)))), *&v148).i8[2])
          {
            v28[v149 + 2] = -1;
            v28[v149 + 3] = -1;
          }

          v152 = vmovn_s64(vcgeq_u64(v148, vorrq_s8(v150, xmmword_18FECDD90)));
          if (vuzp1_s8(*&v148, vuzp1_s16(v152, *&v148)).i32[1])
          {
            v28[v149 + 4] = -1;
          }

          if (vuzp1_s8(*&v148, vuzp1_s16(v152, *&v148)).i8[5])
          {
            v28[v149 + 5] = -1;
          }

          if (vuzp1_s8(*&v148, vuzp1_s16(*&v148, vmovn_s64(vcgeq_u64(v148, vorrq_s8(v150, xmmword_18FECDD80))))).i8[6])
          {
            v28[v149 + 6] = -1;
            v28[v149 + 7] = -1;
          }

          v153 = vmovn_s64(vcgeq_u64(v148, vorrq_s8(v150, xmmword_18FECDD70)));
          if (vuzp1_s8(vuzp1_s16(v153, *v148.i8), *v148.i8).u8[0])
          {
            v28[v149 + 8] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(v153, *&v148), *&v148).i8[1])
          {
            v28[v149 + 9] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(*&v148, vmovn_s64(vcgeq_u64(v148, vorrq_s8(v150, xmmword_18FECDD60)))), *&v148).i8[2])
          {
            v28[v149 + 10] = -1;
            v28[v149 + 11] = -1;
          }

          v154 = vmovn_s64(vcgeq_u64(v148, vorrq_s8(v150, xmmword_18FECDD50)));
          if (vuzp1_s8(*&v148, vuzp1_s16(v154, *&v148)).i32[1])
          {
            v28[v149 + 12] = -1;
          }

          if (vuzp1_s8(*&v148, vuzp1_s16(v154, *&v148)).i8[5])
          {
            v28[v149 + 13] = -1;
          }

          if (vuzp1_s8(*&v148, vuzp1_s16(*&v148, vmovn_s64(vcgeq_u64(v148, vorrq_s8(v150, xmmword_18FECDD40))))).i8[6])
          {
            v28[v149 + 14] = -1;
            v28[v149 + 15] = -1;
          }

          v149 += 16;
        }

        while (((v16 + 15) & 0xFFFFFFFFFFFFFFF0) != v149);
      }

      v28 += v26;
      ++v147;
    }

    while (v19 > v147);
  }

  *(v10 + a2 + 40) = 0;
  return result;
}

uint64_t vt_Copy_444vf_rgb_yuvsf(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12 = a4;
  v14 = a1;
  v46 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v41 = a2[1];
  v42 = v16;
  v17 = a2[2];
  v18 = a6[1];
  v45 = *a6;
  v40 = v18;
  v19 = a6[2];
  v43 = v17;
  v44 = v19;
  if (v15 == 255)
  {
    v20 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v20)
    {
      v21 = 0;
LABEL_20:
      free(v20);
      return v21;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v20 = &v40.i8[-v22];
    bzero(&v40 - v22, v23);
  }

  v24 = vbslq_s8(vcgtq_s64(vaddq_s64(v43, v41), v42), vsubq_s64(v42, v43), v41);
  v25 = vbslq_s8(vcgtq_s64(vaddq_s64(v44, v40), v45), vsubq_s64(v45, v44), v40);
  v26 = vbslq_s8(vcgtq_s64(v25, v24), v24, v25);
  v27 = v43.i64[1];
  v28 = vaddq_s64((*&v43 + __PAIR128__(-1, 0)), v26);
  if (v28.i64[0] + *v12 * v28.i64[1] <= *a5)
  {
    if (*(a3 + 8) && (v12[1] * v28.i64[1] + 2 * v28.i64[0]) > a5[1])
    {
      v40 = v26;
      v41.i64[0] = v12;
      v29 = v14;
      v30 = a7;
      v31 = a8;
    }

    else
    {
      if (!*(a3 + 16) || v28.i64[0] + v12[2] * v28.i64[1] <= a5[2])
      {
        goto LABEL_14;
      }

      v40 = v26;
      v41.i64[0] = v12;
      v29 = v14;
      v30 = a7;
      v31 = a8;
    }
  }

  else
  {
    v40 = v26;
    v41.i64[0] = v12;
    v29 = v14;
    v30 = a7;
    v31 = a8;
  }

  fig_log_get_emitter();
  v32 = FigSignalErrorAtGM();
  a8 = v31;
  a7 = v30;
  v14 = v29;
  v12 = v41.i64[0];
  v26 = v40;
  if (v32)
  {
    v21 = v32;
    goto LABEL_19;
  }

LABEL_14:
  *v20 = v15;
  v33 = v43.i64[0];
  *(v20 + 4) = v42;
  *(v20 + 20) = v26;
  *(v20 + 36) = v33;
  *(v20 + 44) = v27;
  v34 = v44;
  *(v20 + 5) = v45;
  *(v20 + 6) = v26;
  *(v20 + 7) = v34;
  *(v20 + 7) = a3;
  *(v20 + 8) = v12;
  *(v20 + 9) = a5;
  *(v20 + 16) = a7;
  *(v20 + 17) = a8;
  *(v20 + 18) = a9;
  *(v20 + 19) = v14;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v15, global_queue, v20, vt_Copy_444vf_rgb_yuvsf_GCD);
  if (!v15)
  {
    return 0;
  }

  v36 = (v20 + 160);
  v37 = v15;
  while (1)
  {
    v38 = *v36++;
    v21 = v38;
    if (v38)
    {
      break;
    }

    if (!--v37)
    {
      v21 = 0;
      break;
    }
  }

LABEL_19:
  if (v15 == 255)
  {
    goto LABEL_20;
  }

  return v21;
}

void *vt_Copy_444vf_rgb_yuvsf_GCD(void *a1, uint64_t a2, double a3, double a4, double a5, float a6, float a7)
{
  v17 = *(a1 + 36);
  v18 = *a1;
  v19 = *(a1 + 28) * a2 / v18 + *(a1 + 44);
  v20 = a1[14];
  v22 = a1[12];
  v21 = a1[13];
  v23 = v21 * a2;
  v24 = v21 * a2 / v18;
  v25 = v24 + a1[15];
  v26 = (v21 + v23) / v18 - v24;
  result = a1[7];
  v28 = a1[8];
  v29 = a1[16];
  v30 = a1[17];
  v31 = v28[2];
  v32 = result[2];
  v33 = v30[1];
  v34 = v29[1];
  v35 = (v34 + v33 * v25 + v20);
  if (v34)
  {
    v36 = (v34 + v33 * v25 + v20);
  }

  else
  {
    v36 = 0;
  }

  if (v26 >= 1)
  {
    v37 = 0;
    v38 = a1[19];
    v39 = v22 & 0xFFFFFFFE;
    LOWORD(a6) = *(v38 + 140);
    LOWORD(a7) = *(v38 + 142);
    v40 = *v38;
    v41 = *(v38 + 8);
    v42 = *(v38 + 136) / *(v38 + 128);
    v43 = *(v38 + 16);
    v44 = *(v38 + 20);
    v45 = *(v38 + 28);
    LOWORD(v9) = *(v38 + 144);
    LOWORD(v10) = *(v38 + 146);
    LOWORD(v11) = *(v38 + 148);
    LOWORD(v12) = *(v38 + 150);
    LOWORD(v13) = *(v38 + 152);
    v46 = *(v38 + 36);
    v47 = *(v38 + 40);
    v48 = *(v38 + 44);
    v49 = *(v38 + 48);
    v50 = *(v38 + 52);
    v51 = *(v38 + 56);
    v52 = *(v38 + 60);
    v53 = *(v38 + 64);
    v54 = *(v38 + 68);
    v55 = *v28;
    v56 = v28[1];
    v57 = *v30;
    v58 = LODWORD(a6);
    v59 = LODWORD(a7);
    v60 = v42 * v40;
    v61 = v42 * v41;
    v62 = v42 * v43;
    v63 = v42 * v44;
    v64 = v42 * v45;
    v65 = v9;
    v66 = v10;
    v67 = v11;
    v68 = v12;
    v69 = v13;
    v70 = 0.5;
    v71 = v49 * 0.5;
    v72 = v50 * 0.5;
    v73 = v51 * 0.5;
    v74 = v52 * 0.5;
    v75 = v53 * 0.5;
    v76 = v54 * 0.5;
    v77 = (*v29 + v57 * v25 + v20);
    v79 = *result;
    v78 = result[1];
    result = (v78 + v56 * v19 + v17);
    if (!v78)
    {
      result = 0;
    }

    v80 = (v79 + v55 * v19 + v17);
    while (v39 < 1)
    {
LABEL_37:
      v80 += v55;
      result = (result + v56);
      v77 += v57;
      if (++v37 == v26)
      {
        goto LABEL_38;
      }
    }

    v81 = 0;
    v82 = v80;
    v83 = result;
    v84 = v36;
    v85 = v77;
    while (1)
    {
      v86 = 0.0;
      if (!v83)
      {
        break;
      }

      LOBYTE(v70) = *v83;
      v87 = LODWORD(v70) - v59;
      LOBYTE(v14) = v83[1];
      v88 = v14 - v59;
      v83 += 2;
      v89 = v61 * v88;
      v90 = (v63 * v88) + (v87 * v62);
      v91 = v64 * v87;
      if (!v83)
      {
        goto LABEL_14;
      }

      LOBYTE(v86) = *v83;
      v92 = LODWORD(v86) - v59;
      LOBYTE(v7) = v83[1];
      v93 = LODWORD(v7) - v59;
      v83 += 2;
      v94 = v61 * v93;
      v95 = (v63 * v93) + (v92 * v62);
      v86 = v64 * v92;
LABEL_15:
      LOBYTE(v8) = *v82;
      *&v96 = v60 * (LODWORD(v8) - v58);
      v97 = v89 + *&v96;
      v98 = v90 + *&v96;
      v99 = v91 + *&v96;
      LOBYTE(v96) = v82[1];
      v100 = v60 * (v96 - v58);
      v101 = v94 + v100;
      v102 = v95 + v100;
      v103 = v86 + v100;
      v8 = (((v47 * v98) + (v46 * v97)) + (v48 * v99)) + v65;
      v104 = (((v47 * v102) + (v46 * v101)) + (v48 * v103)) + v65;
      v105 = v97 + v101;
      v106 = v98 + v102;
      v7 = (v66 + (v105 * v71)) + (v106 * v72);
      v107 = v99 + v103;
      v108 = v7 + (v107 * v73);
      v109 = (v66 + (v105 * v74)) + (v106 * v75);
      if (v8 < v65)
      {
        v110 = v65;
      }

      else
      {
        v110 = v8;
      }

      if (v8 > v67)
      {
        v110 = v67;
      }

      v111 = v109 + (v107 * v76);
      *v85 = llroundf(v110);
      if (v108 < v68)
      {
        *&v14 = v68;
      }

      else
      {
        *&v14 = v108;
      }

      if (v108 <= v69)
      {
        v112 = *&v14;
      }

      else
      {
        v112 = v69;
      }

      v85[1] = llroundf(v112);
      if (v104 < v65)
      {
        v113 = v65;
      }

      else
      {
        v113 = v104;
      }

      if (v104 > v67)
      {
        v113 = v67;
      }

      v85[2] = llroundf(v113);
      v70 = v69;
      if (v111 <= v69)
      {
        v70 = v111;
        if (v111 < v68)
        {
          v70 = v68;
        }
      }

      v85[3] = llroundf(v70);
      if (v84)
      {
        *v84++ = 0;
      }

      v81 += 2;
      v82 += 2;
      v85 += 4;
      if (v81 >= v39)
      {
        goto LABEL_37;
      }
    }

    v91 = 0.0;
    v90 = 0.0;
    v89 = 0.0;
LABEL_14:
    v95 = 0.0;
    v94 = 0.0;
    goto LABEL_15;
  }

LABEL_38:
  if (v32 && v36)
  {
    if (v26 >= 1)
    {
      v114 = 0;
      v115 = (v32 + v31 * v19 + v17);
      do
      {
        result = memcpy(v35, v115, v22);
        v115 += v31;
        v35 += v33;
        ++v114;
      }

      while (v26 > v114);
    }
  }

  else if (v36 && v26 >= 1)
  {
    v116 = 0;
    v117 = vdupq_n_s64(v22 - 1);
    do
    {
      if (v22 >= 1)
      {
        v118 = 0;
        do
        {
          v119 = vdupq_n_s64(v118);
          v120 = vmovn_s64(vcgeq_u64(v117, vorrq_s8(v119, xmmword_18FECDDB0)));
          if (vuzp1_s8(vuzp1_s16(v120, *v117.i8), *v117.i8).u8[0])
          {
            v35[v118] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(v120, *&v117), *&v117).i8[1])
          {
            v35[v118 + 1] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(*&v117, vmovn_s64(vcgeq_u64(v117, vorrq_s8(v119, xmmword_18FECDDA0)))), *&v117).i8[2])
          {
            v35[v118 + 2] = -1;
            v35[v118 + 3] = -1;
          }

          v121 = vmovn_s64(vcgeq_u64(v117, vorrq_s8(v119, xmmword_18FECDD90)));
          if (vuzp1_s8(*&v117, vuzp1_s16(v121, *&v117)).i32[1])
          {
            v35[v118 + 4] = -1;
          }

          if (vuzp1_s8(*&v117, vuzp1_s16(v121, *&v117)).i8[5])
          {
            v35[v118 + 5] = -1;
          }

          if (vuzp1_s8(*&v117, vuzp1_s16(*&v117, vmovn_s64(vcgeq_u64(v117, vorrq_s8(v119, xmmword_18FECDD80))))).i8[6])
          {
            v35[v118 + 6] = -1;
            v35[v118 + 7] = -1;
          }

          v122 = vmovn_s64(vcgeq_u64(v117, vorrq_s8(v119, xmmword_18FECDD70)));
          if (vuzp1_s8(vuzp1_s16(v122, *v117.i8), *v117.i8).u8[0])
          {
            v35[v118 + 8] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(v122, *&v117), *&v117).i8[1])
          {
            v35[v118 + 9] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(*&v117, vmovn_s64(vcgeq_u64(v117, vorrq_s8(v119, xmmword_18FECDD60)))), *&v117).i8[2])
          {
            v35[v118 + 10] = -1;
            v35[v118 + 11] = -1;
          }

          v123 = vmovn_s64(vcgeq_u64(v117, vorrq_s8(v119, xmmword_18FECDD50)));
          if (vuzp1_s8(*&v117, vuzp1_s16(v123, *&v117)).i32[1])
          {
            v35[v118 + 12] = -1;
          }

          if (vuzp1_s8(*&v117, vuzp1_s16(v123, *&v117)).i8[5])
          {
            v35[v118 + 13] = -1;
          }

          if (vuzp1_s8(*&v117, vuzp1_s16(*&v117, vmovn_s64(vcgeq_u64(v117, vorrq_s8(v119, xmmword_18FECDD40))))).i8[6])
          {
            v35[v118 + 14] = -1;
            v35[v118 + 15] = -1;
          }

          v118 += 16;
        }

        while (((v22 + 15) & 0xFFFFFFFFFFFFFFF0) != v118);
      }

      v35 += v33;
      ++v116;
    }

    while (v26 > v116);
  }

  *(a1 + a2 + 40) = 0;
  return result;
}

uint64_t vt_Copy_444vf_TRC_Tone_Mat_TRC_xf422_neon_fp16(uint64_t a1, uint64_t *a2, uint64_t a3, unint64_t *a4, unint64_t *a5, uint64_t *a6, uint64_t a7, void *a8, void *a9)
{
  v67 = a7;
  v68 = a3;
  v76 = a5;
  v69 = a4;
  v77 = *MEMORY[0x1E69E9840];
  v11 = *(a1 + 162);
  v13 = *a2;
  v12 = a2[1];
  v14 = a2[2];
  v66 = a2[3];
  v15 = a2[4];
  v71 = a2[5];
  v72 = v12;
  v16 = *a6;
  v70 = a6[1];
  v17 = a6[2];
  v18 = a6[3];
  v20 = a6[4];
  v19 = a6[5];
  v74 = v16;
  v75 = v19;
  v73 = v13;
  v22 = v15 + v14 != v13 || v20 + v17 != v16;
  if (v11 == 255)
  {
    v23 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v23)
    {
      v24 = 0;
LABEL_69:
      free(v23);
      return v24;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v11 + 160, a3, a4);
    v23 = (&v63 - v25);
    bzero(&v63 - v25, v26);
  }

  v65 = a1;
  v27 = a9;
  v28 = v17 - 1;
  v29 = v14 - 1;
  if (v20)
  {
    v30 = v15 + 1;
  }

  else
  {
    v29 = v14;
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
    v32 = v69;
    if (v22 || (v33 = v29 + 1 + v30, v33 > *v69) || (v34 = v69[1], v34 < 2 * v33) && v34 || (v35 = v69[2], v33 > v35) && v35 || (v36 = v28 + 1 + v31, v37 = 2 * v36, 2 * v36 > *a8) || ((2 * (v36 + (v36 >> 63))) & 0xFFFFFFFFFFFFFFFCLL) > a8[1] || (v38 = a8[2], v37 > v38) && v38)
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
    v32 = v69;
  }

  if (v29 + v30 > v73)
  {
    v29 = v73 - v30;
  }

  if (v28 + v31 > v74)
  {
    v28 = v74 - v31;
  }

  if (v71 + v66 <= v72)
  {
    v39 = v66;
  }

  else
  {
    v39 = v72 - v71;
  }

  if (v75 + v18 <= v70)
  {
    v40 = v18;
  }

  else
  {
    v40 = v70 - v75;
  }

  if (v29 >= v28)
  {
    v41 = v28;
  }

  else
  {
    v41 = v29;
  }

  if (v39 >= v40)
  {
    v42 = v40;
  }

  else
  {
    v42 = v39;
  }

  v43 = v71 + v42 - 1;
  v44 = v41 + v30;
  v45 = v41 + v30 + *v32 * v43;
  v46 = *v76;
  v47 = v67;
  v64 = v30;
  if (v45 > v46)
  {
    v48 = v11;
    v49 = v31;
    v50 = a8;
    v51 = a9;
    goto LABEL_62;
  }

  if (*(v68 + 8) && v32[1] * v43 + 2 * v44 > v76[1])
  {
    v48 = v11;
    v49 = v31;
    v50 = a8;
    v51 = a9;
    goto LABEL_62;
  }

  if (*(v68 + 16) && v44 + v32[2] * v43 > v76[2])
  {
    v48 = v11;
    v49 = v31;
    v50 = a8;
    v51 = a9;
    goto LABEL_62;
  }

  v52 = v75 + v42 - 1;
  v53 = v41 + v31;
  if ((*a8 * v52 + 2 * (v41 + v31)) > *a9)
  {
    v48 = v11;
    v49 = v31;
    v50 = a8;
    v51 = a9;
    goto LABEL_62;
  }

  if (*(v67 + 8) && a8[1] * v52 + 4 * ((v53 + 1 + ((v53 + 1) >> 63)) >> 1) > a9[1])
  {
    v48 = v11;
    v49 = v31;
    v50 = a8;
    v51 = a9;
    goto LABEL_62;
  }

  if (*(v67 + 16) && (2 * v53 + a8[2] * v52) > a9[2])
  {
    v48 = v11;
    v49 = v31;
    v50 = a8;
    v51 = a9;
LABEL_62:
    fig_log_get_emitter();
    v24 = FigSignalErrorAtGM();
    v32 = v69;
    v27 = v51;
    a8 = v50;
    v31 = v49;
    v11 = v48;
    v30 = v64;
    if (v24)
    {
      goto LABEL_68;
    }
  }

  *v23 = v11;
  v54 = v72;
  *(v23 + 4) = v73;
  *(v23 + 12) = v54;
  *(v23 + 20) = v41;
  *(v23 + 28) = v42;
  *(v23 + 36) = v30;
  v55 = v70;
  *(v23 + 44) = v71;
  v23[11] = v55;
  v23[12] = v41;
  v23[13] = v42;
  v23[14] = v31;
  v23[7] = v68;
  v23[8] = v32;
  v56 = v74;
  v57 = v75;
  v23[9] = v76;
  v23[10] = v56;
  v23[15] = v57;
  v23[16] = v47;
  v23[17] = a8;
  v23[18] = v27;
  v23[19] = v65;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v11, global_queue, v23, vt_Copy_444vf_TRC_Tone_Mat_TRC_xf422_neon_fp16_GCD);
  if (!v11)
  {
    return 0;
  }

  v59 = (v23 + 20);
  v60 = v11;
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

LABEL_68:
  if (v11 == 255)
  {
    goto LABEL_69;
  }

  return v24;
}

uint64_t *vt_Copy_444vf_TRC_Tone_Mat_TRC_xf422_neon_fp16_GCD(void *a1, uint64_t a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, float32x4_t a10)
{
  v10 = *a1;
  v233 = *(a1 + 28) * a2 / v10 + *(a1 + 44);
  v234 = *(a1 + 36);
  v11 = a1[14];
  v13 = a1[12];
  v12 = a1[13];
  v14 = v12 * a2 / v10;
  v15 = v14 + a1[15];
  v16 = (v12 + v12 * a2) / v10 - v14;
  v18 = a1[7];
  v17 = a1[8];
  v20 = a1[16];
  result = a1[17];
  v232 = v17[2];
  v236 = v18[2];
  v237 = result[2];
  v235 = v20[2];
  v21 = (v235 + v237 * v15 + 2 * v11);
  if (v16 >= 1)
  {
    v22 = 0;
    v23 = a1[19];
    v25 = *v17;
    v24 = v17[1];
    v26 = *result;
    v27 = result[1];
    v28 = *(v23 + 140);
    v29 = *(v23 + 142);
    v30 = *(v23 + 144);
    v31 = *(v23 + 146);
    v32 = *(v23 + 148);
    v33 = *(v23 + 150);
    v34 = *(v23 + 152);
    _S11 = *(v23 + 44);
    v35.i32[0] = *(v23 + 48);
    v38.i32[0] = *(v23 + 52);
    v37.i32[0] = *(v23 + 56);
    v39 = 8191.0 / *(v23 + 128);
    v40 = v28;
    _S25 = v39 * *v23;
    _S6 = v39 * *(v23 + 8);
    v43 = v23 + 16548;
    v44 = v30;
    v279 = v31;
    v280 = v29;
    v45 = v32;
    *&a8 = v33;
    v284 = v33;
    v46 = v34;
    v47 = v23 + 164;
    __asm { FCVT            H3, S25 }

    v260 = _H3;
    *&a8 = v28;
    v53 = v23 + 32932;
    _Q5 = vdupq_lane_s16(*&a8, 0);
    v278 = _Q5;
    *_Q5.i16 = -v29;
    v242 = vdupq_lane_s16(*_Q5.i8, 0);
    v281 = v39 * *(v23 + 28);
    __asm { FCVT            H5, S18 }

    v241 = *_Q5.i16;
    v283 = v39 * *(v23 + 16);
    __asm { FCVT            H5, S7 }

    v240 = *_Q5.i16;
    v35.i32[1] = *(v23 + 60);
    v282 = v39 * *(v23 + 20);
    __asm { FCVT            H5, S16 }

    *a10.f32 = vmul_f32(v35, 0x3F0000003F000000);
    v56 = vdupq_lane_s32(vcvt_f16_f32(a10), 0);
    v277 = v56;
    v38.i32[1] = *(v23 + 64);
    *v56.f32 = vmul_f32(v38, 0x3F0000003F000000);
    v57 = vdupq_lane_s32(vcvt_f16_f32(v56), 0);
    v275 = v57;
    v37.i32[1] = *(v23 + 68);
    *v57.f32 = vmul_f32(v37, 0x3F0000003F000000);
    v58 = vcvt_f16_f32(v57);
    v59 = vdupq_lane_s32(v58, 0);
    *v58.i16 = v30;
    v60 = vdupq_lane_s16(v58, 0);
    v272 = v60;
    v273 = v59;
    *v60.i16 = v31;
    v61 = vdupq_lane_s16(*v60.i8, 0);
    *v60.i16 = v32;
    v62 = vdupq_lane_s16(*v60.i8, 0);
    v270 = v62;
    v271 = v61;
    *v62.i16 = v33;
    v63 = vdupq_lane_s16(*v62.i8, 0);
    *v62.i16 = v34;
    v268 = vdupq_lane_s16(*v62.i8, 0);
    v269 = v63;
    v64 = *(v23 + 132);
    if (v64 >= 0x11)
    {
      v65 = 0;
    }

    else
    {
      v65 = 16 - v64;
    }

    v67 = *v20;
    v66 = v20[1];
    v68 = v66 + v27 * v15 + 2 * v11;
    if (!v66)
    {
      v68 = 0;
    }

    v69 = v67 + v26 * v15 + 2 * v11;
    v70 = *v18;
    v71 = v18[1];
    result = v24;
    v72 = v71 + v24 * v233 + v234;
    if (!v71)
    {
      v72 = 0;
    }

    v73 = (v70 + v25 * v233 + v234);
    v74 = v65;
    _S16 = *(v23 + 72);
    _Q18.i32[0] = *(v23 + 76);
    _S20 = *(v23 + 80);
    _Q23.i32[0] = *(v23 + 84);
    _S30 = *(v23 + 100);
    _S27 = *(v23 + 108);
    _S26 = *(v23 + 112);
    _S12 = *(v23 + 116);
    __asm { FCVT            H3, S6 }

    v286 = *(v23 + 36);
    __asm { FCVT            H0, S0 }

    v262 = _H0;
    v285 = *(v23 + 40);
    __asm { FCVT            H0, S5 }

    v261 = _H0;
    _S13 = *(v23 + 120);
    __asm { FCVT            H0, S11 }

    v259 = _H0;
    __asm { FCVT            H0, S27 }

    v258 = _H0;
    __asm { FCVT            H0, S26 }

    v257 = _H0;
    __asm { FCVT            H0, S12 }

    v256 = _H0;
    __asm { FCVT            H0, S13 }

    v255 = _H0;
    __asm { FCVT            H0, S16 }

    v254 = _H0;
    v267 = *_Q18.i32;
    __asm { FCVT            H0, S18 }

    v253 = _H0;
    __asm { FCVT            H0, S20 }

    v252 = _H0;
    __asm { FCVT            H0, S23 }

    v251 = _H0;
    v266 = *(v23 + 88);
    __asm { FCVT            H0, S24 }

    v250 = _H0;
    v265 = *(v23 + 92);
    __asm { FCVT            H0, S28 }

    v249 = _H0;
    v264 = *(v23 + 96);
    __asm { FCVT            H0, S29 }

    v248 = _H0;
    __asm { FCVT            H0, S30 }

    v247 = _H0;
    v263 = *(v23 + 104);
    __asm { FCVT            H0, S31 }

    v246 = _H0;
    v245 = vdupq_n_s16(v65);
    v101 = a10.i64[0];
    v276 = v56.f32[0];
    v102.i32[0] = v57.i32[1];
    v243 = v57.f32[1];
    v274 = v57.f32[0];
    v244 = v56.f32[1];
    v103.i64[0] = 0x9000900090009000;
    v103.i64[1] = 0x9000900090009000;
    v104 = _S20;
    v105 = *_Q23.i32;
    v106 = _S30;
    do
    {
      if (v13 < 8)
      {
        v147 = 0;
        v111 = v68;
        v110 = v69;
        v109 = v72;
        v108 = v73;
      }

      else
      {
        v107 = 0;
        v108 = v73;
        v109 = v72;
        v110 = v69;
        v111 = v68;
        do
        {
          if (v109)
          {
            v287 = vld2_s8(v109);
            v109 += 16;
            *v112.i8 = vzip1_s8(v287.val[0], 0);
            v112.u64[1] = vzip2_s8(v287.val[0], 0);
            *v113.i8 = vzip1_s8(v287.val[1], 0);
            v113.u64[1] = vzip2_s8(v287.val[1], 0);
            v114 = vaddq_f16(v242, vcvtq_f16_u16(v112));
            v115 = vaddq_f16(v242, vcvtq_f16_u16(v113));
            v116 = vmulq_n_f16(v115, _H3);
            v117 = vmlaq_n_f16(vmulq_n_f16(v114, v240), v115, _H5);
            v118 = vmulq_n_f16(v114, v241);
          }

          else
          {
            v118 = 0uLL;
            v117 = 0uLL;
            v116 = 0uLL;
          }

          v119 = *v108++;
          *v120.i8 = vzip1_s8(v119, 0);
          v120.u64[1] = vzip2_s8(v119, 0);
          v121 = vsubq_f16(vcvtq_f16_u16(v120), v278);
          v122 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(v116, v121, v260), 0), v103));
          v123.i16[0] = *(v47 + 2 * v122.u16[0]);
          v123.i16[1] = *(v47 + 2 * v122.u16[1]);
          v123.i16[2] = *(v47 + 2 * v122.u16[2]);
          v123.i16[3] = *(v47 + 2 * v122.u16[3]);
          v123.i16[4] = *(v47 + 2 * v122.u16[4]);
          v123.i16[5] = *(v47 + 2 * v122.u16[5]);
          v123.i16[6] = *(v47 + 2 * v122.u16[6]);
          v123.i16[7] = *(v47 + 2 * v122.u16[7]);
          v124 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(v117, v121, v260), 0), v103));
          v120.i16[0] = *(v47 + 2 * v124.u16[0]);
          v120.i16[1] = *(v47 + 2 * v124.u16[1]);
          v120.i16[2] = *(v47 + 2 * v124.u16[2]);
          v120.i16[3] = *(v47 + 2 * v124.u16[3]);
          v120.i16[4] = *(v47 + 2 * v124.u16[4]);
          v120.i16[5] = *(v47 + 2 * v124.u16[5]);
          v120.i16[6] = *(v47 + 2 * v124.u16[6]);
          v120.i16[7] = *(v47 + 2 * v124.u16[7]);
          v125 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(v118, v121, v260), 0), v103));
          v126.i16[0] = *(v47 + 2 * v125.u16[0]);
          v126.i16[1] = *(v47 + 2 * v125.u16[1]);
          v126.i16[2] = *(v47 + 2 * v125.u16[2]);
          v126.i16[3] = *(v47 + 2 * v125.u16[3]);
          v126.i16[4] = *(v47 + 2 * v125.u16[4]);
          v126.i16[5] = *(v47 + 2 * v125.u16[5]);
          v126.i16[6] = *(v47 + 2 * v125.u16[6]);
          v126.i16[7] = *(v47 + 2 * v125.u16[7]);
          v127 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v123, v258), v120, v257), v126, v256), vmaxq_f16(vmaxq_f16(v123, v120), v126), v255), 0), v103));
          v122.i16[0] = *(v43 + 2 * v127.u16[0]);
          v122.i16[1] = *(v43 + 2 * v127.u16[1]);
          v122.i16[2] = *(v43 + 2 * v127.u16[2]);
          v122.i16[3] = *(v43 + 2 * v127.u16[3]);
          v122.i16[4] = *(v43 + 2 * v127.u16[4]);
          v122.i16[5] = *(v43 + 2 * v127.u16[5]);
          v122.i16[6] = *(v43 + 2 * v127.u16[6]);
          v122.i16[7] = *(v43 + 2 * v127.u16[7]);
          v128 = vmulq_f16(v123, v122);
          v129 = vmulq_f16(v120, v122);
          v130 = vmulq_f16(v126, v122);
          v131 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v128, v254), v129, v253), v130, v252);
          v132 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v128, v251), v129, v250), v130, v249);
          v133 = vmulq_n_f16(v130, v246);
          v134 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v131, 0), v103));
          v135 = vmlaq_n_f16(v133, v129, v247);
          v123.i16[0] = *(v53 + 2 * v134.u16[0]);
          v123.i16[1] = *(v53 + 2 * v134.u16[1]);
          v123.i16[2] = *(v53 + 2 * v134.u16[2]);
          v123.i16[3] = *(v53 + 2 * v134.u16[3]);
          v123.i16[4] = *(v53 + 2 * v134.u16[4]);
          v123.i16[5] = *(v53 + 2 * v134.u16[5]);
          v123.i16[6] = *(v53 + 2 * v134.u16[6]);
          v136 = (v53 + 2 * v134.u16[7]);
          v137 = v123;
          v137.i16[7] = *v136;
          v138 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v132, 0), v103));
          v131.i16[0] = *(v53 + 2 * v138.u16[0]);
          v131.i16[1] = *(v53 + 2 * v138.u16[1]);
          v131.i16[2] = *(v53 + 2 * v138.u16[2]);
          v131.i16[3] = *(v53 + 2 * v138.u16[3]);
          v131.i16[4] = *(v53 + 2 * v138.u16[4]);
          v131.i16[5] = *(v53 + 2 * v138.u16[5]);
          v131.i16[6] = *(v53 + 2 * v138.u16[6]);
          v139 = vmlaq_n_f16(v135, v128, v248);
          v140 = v131;
          v140.i16[7] = *(v53 + 2 * v138.u16[7]);
          v141 = vminq_f16(vmaxq_f16(v139, 0), v103);
          v142 = vcvtq_u16_f16(v141);
          v141.i16[0] = *(v53 + 2 * v142.u16[0]);
          v141.i16[1] = *(v53 + 2 * v142.u16[1]);
          v141.i16[2] = *(v53 + 2 * v142.u16[2]);
          v141.i16[3] = *(v53 + 2 * v142.u16[3]);
          v141.i16[4] = *(v53 + 2 * v142.u16[4]);
          v141.i16[5] = *(v53 + 2 * v142.u16[5]);
          v141.i16[6] = *(v53 + 2 * v142.u16[6]);
          v143 = (v53 + 2 * v142.u16[7]);
          v144 = v141;
          v144.i16[7] = *v143;
          v145 = vuzp1q_s16(v123, v131);
          _Q23 = vshlq_u16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v272, v137, v262), v140, v261), v144, v259), v272), v270)), v245);
          *v110++ = _Q23;
          v146 = vaddq_f16(v145, vuzp2q_s16(v137, v140));
          _Q18 = vmlaq_f16(vmlaq_f16(vmlaq_f16(v271, v277, vzip1q_s16(v146, v146)), v275, vzip2q_s16(v146, v146)), v273, vaddq_f16(vtrn1q_s16(v141, v141), vtrn2q_s16(v144, v144)));
          v102 = vshlq_u16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(_Q18, v269), v268)), v245);
          *v111++ = v102;
          v107 += 8;
        }

        while (v107 < v13 - 7);
        v147 = v13 & 0xFFFFFFF8;
      }

      while (v147 < (v13 & 0xFFFFFFFE))
      {
        if (v109)
        {
          v102.i8[0] = *v109;
          *&v148 = v102.u32[0];
          v149 = *&v148 - v280;
          LOBYTE(v148) = *(v109 + 1);
          v150 = v148 - v280;
          v109 += 2;
          *v102.i32 = _S6 * v150;
          v151 = (v282 * v150) + (v149 * v283);
          *_Q18.i32 = v281;
          v152 = v281 * v149;
        }

        else
        {
          v152 = 0.0;
          v151 = 0.0;
          v102.i32[0] = 0;
        }

        _Q18.i8[0] = v108->i8[0];
        *_Q18.i32 = _S25 * (_Q18.u32[0] - v40);
        v153 = *v102.i32 + *_Q18.i32;
        v154 = (*v102.i32 + *_Q18.i32) <= 8191.0;
        v155 = 8191.0;
        if (v154)
        {
          v155 = v153;
          if (v153 < 0.0)
          {
            v155 = 0.0;
          }
        }

        v156 = v151 + *_Q18.i32;
        v157 = 8191.0;
        if (v156 <= 8191.0)
        {
          v157 = v156;
          if (v156 < 0.0)
          {
            v157 = 0.0;
          }
        }

        v158 = v152 + *_Q18.i32;
        v154 = (v152 + *_Q18.i32) <= 8191.0;
        v159 = 8191.0;
        if (v154)
        {
          v159 = v158;
          if (v158 < 0.0)
          {
            v159 = 0.0;
          }
        }

        if (v109)
        {
          LOBYTE(v158) = *v109;
          v160 = LODWORD(v158) - v280;
          _Q18.i8[0] = *(v109 + 1);
          v161 = _Q18.u32[0] - v280;
          v109 += 2;
          v162 = _S6 * v161;
          v163 = (v282 * v161) + (v160 * v283);
          *_Q23.i32 = v281;
          v164 = v281 * v160;
        }

        else
        {
          v164 = 0.0;
          v163 = 0.0;
          v162 = 0.0;
        }

        _Q23.i8[0] = v108->i8[1];
        v165 = _S25 * (_Q23.u32[0] - v40);
        v166 = v162 + v165;
        v154 = (v162 + v165) <= 8191.0;
        v167 = 8191.0;
        if (v154)
        {
          v167 = v166;
          if (v166 < 0.0)
          {
            v167 = 0.0;
          }
        }

        v168 = v163 + v165;
        v154 = (v163 + v165) <= 8191.0;
        v169 = 8191.0;
        if (v154)
        {
          v169 = v168;
          if (v168 < 0.0)
          {
            v169 = 0.0;
          }
        }

        v170 = _S25;
        v171 = v164 + v165;
        v172 = 8191.0;
        if (v171 <= 8191.0)
        {
          v172 = v171;
          if (v171 < 0.0)
          {
            v172 = 0.0;
          }
        }

        v173 = v40;
        _H0 = *(v47 + 2 * llroundf(fminf(fmaxf(v155, 0.0), 8191.0)));
        __asm { FCVT            S0, H0 }

        _H4 = *(v47 + 2 * llroundf(fminf(fmaxf(v157, 0.0), 8191.0)));
        v177 = llroundf(fminf(fmaxf(v159, 0.0), 8191.0));
        __asm { FCVT            S2, H4 }

        _H4 = *(v47 + 2 * v177);
        __asm { FCVT            S4, H4 }

        _H18 = *(v47 + 2 * llroundf(fminf(fmaxf(v167, 0.0), 8191.0)));
        _H20 = *(v47 + 2 * llroundf(fminf(fmaxf(v169, 0.0), 8191.0)));
        _H30 = *(v47 + 2 * llroundf(fminf(fmaxf(v172, 0.0), 8191.0)));
        v184 = fmaxf(_S0, fmaxf(_S2, _S4));
        v185 = (((_S26 * _S2) + (_S27 * _S0)) + (_S12 * _S4)) + (_S13 * v184);
        v186 = 8191.0;
        if (v185 <= 8191.0)
        {
          v186 = (((_S26 * _S2) + (_S27 * _S0)) + (_S12 * _S4)) + (_S13 * v184);
          if (v185 < 0.0)
          {
            v186 = 0.0;
          }
        }

        v187 = _S11;
        __asm
        {
          FCVT            S18, H18
          FCVT            S20, H20
          FCVT            S30, H30
        }

        _H15 = *(v43 + 2 * llroundf(v186));
        v192 = (((_S26 * _S20) + (_S27 * _S18)) + (_S12 * _S30)) + (_S13 * fmaxf(_S18, fmaxf(_S20, _S30)));
        v193 = 8191.0;
        if (v192 <= 8191.0)
        {
          v193 = v192;
          if (v192 < 0.0)
          {
            v193 = 0.0;
          }
        }

        __asm { FCVT            S9, H15 }

        _S0 = _S0 * _S9;
        _S2 = _S2 * _S9;
        v197 = _S4 * _S9;
        LOWORD(_S9) = *(v43 + 2 * llroundf(v193));
        __asm { FCVT            S9, H9 }

        v199 = _S18 * _S9;
        v200 = _S20 * _S9;
        v201 = _S30 * _S9;
        v202 = ((v267 * _S2) + (_S0 * _S16)) + (v197 * v104);
        v203 = ((v266 * _S2) + (_S0 * v105)) + (v197 * v265);
        _S4 = ((v106 * _S2) + (_S0 * v264)) + (v197 * v263);
        v205 = ((v267 * v200) + (v199 * _S16)) + (v201 * v104);
        v206 = ((v266 * v200) + (v199 * v105)) + (v201 * v265);
        v207 = ((v106 * v200) + (v199 * v264)) + (v201 * v263);
        LOWORD(_S0) = *(v53 + 2 * llroundf(fminf(fmaxf(v202, 0.0), 8191.0)));
        __asm { FCVT            S0, H0 }

        LOWORD(_S2) = *(v53 + 2 * llroundf(fminf(fmaxf(v203, 0.0), 8191.0)));
        __asm { FCVT            S2, H2 }

        LOWORD(_S4) = *(v53 + 2 * llroundf(fminf(fmaxf(_S4, 0.0), 8191.0)));
        __asm { FCVT            S4, H4 }

        _H18 = *(v53 + 2 * llroundf(fminf(fmaxf(v205, 0.0), 8191.0)));
        _H20 = *(v53 + 2 * llroundf(fminf(fmaxf(v206, 0.0), 8191.0)));
        _H30 = *(v53 + 2 * llroundf(fminf(fmaxf(v207, 0.0), 8191.0)));
        _S11 = v187;
        v214 = (((v285 * _S2) + (v286 * _S0)) + (v187 * _S4)) + v44;
        v215 = v45;
        if (v214 <= v45)
        {
          v215 = (((v285 * _S2) + (v286 * _S0)) + (v187 * _S4)) + v44;
          if (v214 < v44)
          {
            v215 = v30;
          }
        }

        __asm
        {
          FCVT            S23, H18
          FCVT            S20, H20
          FCVT            S18, H30
        }

        v219 = (((v285 * _S20) + (v286 * _S23)) + (v187 * _S18)) + v44;
        v110->i16[0] = llroundf(v215) << v74;
        v220 = v45;
        v40 = v173;
        if (v219 <= v45)
        {
          v220 = v219;
          if (v219 < v44)
          {
            v220 = v30;
          }
        }

        v110->i16[1] = llroundf(v220) << v74;
        v221 = _S0 + _S23;
        *_Q23.i32 = v279 + (v221 * *&v101);
        v222 = _S2 + _S20;
        v223 = _S4 + _S18;
        v224 = (*_Q23.i32 + (v222 * v276)) + (v223 * v274);
        *_Q18.i32 = v46;
        _S25 = v170;
        if (v224 <= v46)
        {
          *_Q18.i32 = (*_Q23.i32 + (v222 * v276)) + (v223 * v274);
          if (v224 < v284)
          {
            *_Q18.i32 = v284;
          }
        }

        *v102.i32 = ((v279 + (v221 * *(&v101 + 1))) + (v222 * v244)) + (v223 * v243);
        v111->i16[0] = llroundf(*_Q18.i32) << v74;
        v225 = v46;
        if (*v102.i32 <= v46)
        {
          v225 = *v102.i32;
          if (*v102.i32 < v284)
          {
            v225 = v284;
          }
        }

        v111->i16[1] = llroundf(v225) << v74;
        v111 = (v111 + 4);
        v147 += 2;
        v108 = (v108 + 2);
        v110 = (v110 + 4);
      }

      v73 = (v73 + v25);
      v72 += v24;
      v69 += v26;
      v68 += v27;
      ++v22;
    }

    while (v22 != v16);
  }

  if (v236 && v235)
  {
    if (v16 >= 1)
    {
      v226 = 0;
      v227 = (v236 + v232 * v233 + v234);
      do
      {
        if (v13 >= 1)
        {
          v228 = v13;
          v229 = v21;
          v230 = v227;
          do
          {
            v231 = *v230++;
            *v229++ = v231 | (v231 << 8);
            --v228;
          }

          while (v228);
        }

        v227 += v232;
        v21 += v237;
        ++v226;
      }

      while (v226 != v16);
    }
  }

  else if (v235 && v16 >= 1)
  {
    do
    {
      if (v13 >= 1)
      {
        result = memset(v21, 255, 2 * v13);
      }

      v21 += v237;
      --v16;
    }

    while (v16);
  }

  *(a1 + a2 + 40) = 0;
  return result;
}