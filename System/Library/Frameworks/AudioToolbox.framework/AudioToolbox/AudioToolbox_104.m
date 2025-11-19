void preecho_sb(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, float *a9, float *a10, float *a11, _WORD *a12, _WORD *a13, __int16 a14)
{
  v14 = MEMORY[0x1EEE9AC00](a1);
  v304 = v15;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v28 = v14;
  *&v353[4] = *MEMORY[0x1E69E9840];
  memset(v344, 170, sizeof(v344));
  v343[0] = 0xAAAAAAAAAAAAAAAALL;
  v343[1] = 0xAAAAAAAAAAAAAAAALL;
  *&v29 = -1;
  *(&v29 + 1) = -1;
  v341[15] = v29;
  v341[14] = v29;
  v341[13] = v29;
  v341[12] = v29;
  v341[11] = v29;
  v341[10] = v29;
  v341[9] = v29;
  v341[8] = v29;
  v341[7] = v29;
  v341[6] = v29;
  v341[5] = v29;
  v341[4] = v29;
  v341[3] = v29;
  v341[2] = v29;
  v341[1] = v29;
  v341[0] = v29;
  memset(v340, 255, sizeof(v340));
  v338 = -1;
  *&v30 = -1;
  *(&v30 + 1) = -1;
  v337[2] = v30;
  v337[1] = v30;
  v337[0] = v30;
  v335 = -1;
  v334[2] = v30;
  v334[1] = v30;
  v334[0] = v30;
  v332 = -1;
  v331[2] = v30;
  v331[1] = v30;
  v331[0] = v30;
  v329 = -1;
  v328[2] = v30;
  v328[1] = v30;
  v328[0] = v30;
  memset(v327, 255, sizeof(v327));
  memset(v326, 255, sizeof(v326));
  bzero(v324, 0xF00uLL);
  v322 = -1;
  *&v31 = -1;
  *(&v31 + 1) = -1;
  v321[14] = v31;
  v321[15] = v31;
  v321[12] = v31;
  v321[13] = v31;
  v321[10] = v31;
  v321[11] = v31;
  v321[8] = v31;
  v321[9] = v31;
  v321[6] = v31;
  v321[7] = v31;
  v321[4] = v31;
  v321[5] = v31;
  v321[2] = v31;
  v321[3] = v31;
  v321[0] = v31;
  v321[1] = v31;
  v319 = 0;
  memset(v318, 0, sizeof(v318));
  *&v32 = -1;
  *(&v32 + 1) = -1;
  v316 = -1;
  v315[0] = v32;
  v315[1] = v32;
  if (v28 > 32000)
  {
    return;
  }

  v314 = v23;
  v298 = v17;
  v352 = -1;
  v350 = v32;
  v351 = v32;
  v346 = v32;
  v347 = v32;
  v348 = NAN;
  LODWORD(v33) = memset(v325, 255, sizeof(v325));
  if (a14)
  {
    v39 = 4;
  }

  else
  {
    v39 = 20;
  }

  v313 = v39;
  if (a14)
  {
    v40 = 16;
  }

  else
  {
    v40 = 10;
  }

  v299 = v40;
  if (v21 == 160)
  {
    v41 = 2;
  }

  else
  {
    v41 = 3;
  }

  v294 = v41;
  if (v21 == 160)
  {
    v42 = 4;
  }

  else
  {
    v42 = 8;
  }

  LOWORD(v302) = v42;
  v307 = v21;
  LODWORD(v43) = (v21 + ((v21 & 0x8000) >> 15)) << 16 >> 17;
  v44 = 20000000.0;
  *&v45 = (v21 * 5625000.0) / 20000000.0;
  v301 = (((v21 + ((v21 & 0x8000) >> 15)) >> 1) - *&v45);
  if (v301 >= 1)
  {
    v46 = 0;
    v47 = v341;
    v48 = 4 * (((v21 + ((v21 & 0x8000) >> 15)) >> 1) - *&v45);
    v49 = v27;
    do
    {
      v50 = &v49[v48 / 4];
      v51 = &v49[v48 / 4 - 1];
      v52 = v51 < v27 || v50 > v25;
      v53 = v52 || v51 > v50;
      v54 = &v340[v46 / 4];
      v55 = &v340[v46 / 4 + 1];
      v56 = !v53 && v54 >= v340;
      if (!v56 || v55 > v341 || v54 > v55)
      {
        goto LABEL_453;
      }

      *&v45 = -*v51;
      v340[v46 / 4] = LODWORD(v45);
      v46 += 4;
      --v49;
    }

    while (v48 != v46);
  }

  if (v21 > 1)
  {
    v43 = ((v21 + ((v21 & 0x8000) >> 15)) >> 1);
    v47 = &v340[v301];
    v59 = v27;
    do
    {
      if (v59 < v27 || v59 + 1 > v25 || v59 > v59 + 1 || v47 < v340 || v47 + 4 > v341 || v47 > v47 + 4)
      {
        goto LABEL_453;
      }

      v60 = *v59++;
      *&v45 = -v60;
      *v47 = -v60;
      v47 += 4;
      --v43;
    }

    while (v43);
  }

  v44 = *v304;
  LODWORD(v36) = 1.0;
  if (*a13)
  {
    v38 = 0.01;
  }

  else
  {
    v38 = 1.0;
  }

  LODWORD(v45) = 1036831949;
  if (*a13)
  {
    v61 = 0.1;
  }

  else
  {
    v61 = 1.0;
  }

  *a13 = 2;
  LOWORD(v43) = v23;
  v47 = (v23 + 1);
  v312 = &v23[v21];
  if ((v23 + 1) > v312)
  {
    goto LABEL_453;
  }

  if (v47 < v23)
  {
    goto LABEL_453;
  }

  if (v47 > (v23 + 2))
  {
    goto LABEL_453;
  }

  LOWORD(v43) = v23 + 4 * v21;
  if ((v23 + 2) > v312)
  {
    goto LABEL_453;
  }

  v306 = v326;
  v43 = v23;
  v45 = 0.5;
  v36 = 0.25;
  *&v37 = *v23 * 0.5 + (*v19 + v23[1]) * 0.25;
  v325[0] = LODWORD(v37);
  v293 = v21;
  v300 = v21 - 1;
  if (v21 < 3)
  {
    v66 = &v325[1];
    v67 = v23;
  }

  else
  {
    v47 = 0;
    v62 = 1;
    do
    {
      v63 = (v43 + v47);
      if (v43 + v47 < v43)
      {
        goto LABEL_453;
      }

      v43 = (v63 + 1);
      if ((v63 + 1) > v312)
      {
        goto LABEL_453;
      }

      if (v63 > v43)
      {
        goto LABEL_453;
      }

      v43 = (v63 + 2);
      if (v63 + 2 < v23)
      {
        goto LABEL_453;
      }

      v64 = v23 + v47 + 12;
      if (v64 > v312)
      {
        goto LABEL_453;
      }

      if (v43 > v64)
      {
        goto LABEL_453;
      }

      v43 = &v325[1] + v47;
      if (v43 < v325)
      {
        goto LABEL_453;
      }

      v65 = &v325[2] + v47;
      if (v65 > v326 || v43 > v65)
      {
        goto LABEL_453;
      }

      *&v37 = v63[1] * 0.5 + (*v63 + v63[2]) * 0.25;
      *v43 = LODWORD(v37);
      ++v62;
      v47 += 4;
      v43 = v23;
    }

    while (v300 > v62);
    v66 = (&v325[1] + v47);
    v67 = (v23 + v47);
    v47 += (v23 + 1);
  }

  if (v67 < v43)
  {
    goto LABEL_453;
  }

  v43 = (v67 + 1);
  if ((v67 + 1) > v312)
  {
    goto LABEL_453;
  }

  if (v67 > v43)
  {
    goto LABEL_453;
  }

  LOWORD(v43) = v23;
  if (v47 < v23)
  {
    goto LABEL_453;
  }

  v43 = v47 + 4;
  if (v47 + 4 > v312)
  {
    goto LABEL_453;
  }

  if (v47 > v43)
  {
    goto LABEL_453;
  }

  v43 = v325;
  if (v66 < v325)
  {
    goto LABEL_453;
  }

  v43 = (v66 + 1);
  if (v66 + 1 > v326 || v66 > v43)
  {
    goto LABEL_453;
  }

  v36 = *v47 * 0.5;
  v37 = 0.25;
  *&v45 = v36 + *v67 * 0.25;
  *v66 = LODWORD(v45);
  v311 = v325;
  v68 = v23;
  v69 = v23;
  if (v21 >= 1)
  {
    LODWORD(v47) = 0;
    v70 = v325;
    v71 = v23;
    v43 = v324;
    v33 = v325;
    do
    {
      if (v71 < v68)
      {
        goto LABEL_453;
      }

      v69 = v71 + 1;
      if ((v71 + 1) > v312 || v71 > v69 || v70 < v325 || v70 + 1 > v326 || v70 > v70 + 1 || v43 < v324 || v43 + 4 > v325 || v43 > v43 + 4)
      {
        goto LABEL_453;
      }

      LODWORD(v36) = *v70;
      LODWORD(v47) = (v47 + 1);
      *&v45 = *v71 - *v70;
      *v43 = LODWORD(v45);
      ++v70;
      ++v71;
      v43 += 4;
      v68 = v23;
    }

    while (v47 < v21);
  }

  v43 = (v69 - 1);
  if ((v69 - 1) < v68 || v69 > v312 || v43 > v69)
  {
    goto LABEL_453;
  }

  v72 = 0;
  v73 = 0;
  v295 = ((10923 * v21) >> 18) + ((10923 * v21) >> 31);
  v34 = v21 >> 3;
  LODWORD(v45) = dword_19B0B02D0[a14 == 0];
  v310 = v21 >> 3 >> v294;
  v309 = &v23[v21];
  v74 = &v350;
  v308 = v353;
  v296 = a11;
  v303 = a10;
  v297 = a9;
  *v19 = *v43;
  v75 = &v346;
  v47 = v344;
  v305 = v349;
  *v344 = 0;
  v43 = v344;
  LODWORD(v33) = 0xFFFF;
  v19 = (((v307 >> 3) + ((v307 & 0x8000) >> 15)) >> 1);
  LODWORD(v28) = ((3 * (v307 >> 3) + ((((3 * (v307 >> 3)) >> 16) >> 13) & 3)) >> 2);
  LODWORD(v36) = 0.5;
  v76 = v23;
  v77 = v324;
  v78 = v318;
  v79 = v315;
  v25 = v344;
  v80 = v343;
  v35 = v325;
  do
  {
    if (v23 < v76)
    {
      goto LABEL_453;
    }

    v43 = (v23 + 1);
    if ((v23 + 1) > v312)
    {
      goto LABEL_453;
    }

    if (v23 > v43)
    {
      goto LABEL_453;
    }

    v81 = v74;
    v74 = (v74 + 4);
    if (v74 > v353)
    {
      goto LABEL_453;
    }

    *&v37 = (*v23 * *v23) + 100.0;
    *v81 = LODWORD(v37);
    if (v77 < v324)
    {
      goto LABEL_453;
    }

    v82 = v77 + 1;
    if (v77 + 1 > v325)
    {
      goto LABEL_453;
    }

    if (v77 > v82)
    {
      goto LABEL_453;
    }

    if (v75 + 1 > v349)
    {
      goto LABEL_453;
    }

    v83 = (*v77 * *v77) + 100.0;
    *v75 = v83;
    if (v80 + 1 > v344)
    {
      goto LABEL_453;
    }

    *v80 = 0;
    v84 = v73 != 0;
    v85 = v343 + v73;
    if (v34 < 2)
    {
      v96 = 0;
    }

    else
    {
      v87 = v78 >= v318 && v78 + 1 <= v320;
      v89 = v79 >= v315 && v79 + 1 <= v317;
      v90 = (v85 - 1);
      v92 = v85 - 1 >= v343 && v90 <= v85;
      LOWORD(v93) = 1;
      do
      {
        v94 = v82;
        v95 = v43;
        if (v19 == v93)
        {
          if (!v87)
          {
            goto LABEL_453;
          }

          *v78 = *&v37;
        }

        if (v28 == v93)
        {
          if (!v89)
          {
            goto LABEL_453;
          }

          *v79 = LODWORD(v37);
        }

        LOWORD(v43) = v314;
        if (v95 < v314)
        {
          goto LABEL_453;
        }

        v43 = (v95 + 1);
        if ((v95 + 1) > v312)
        {
          goto LABEL_453;
        }

        if (v95 > v43)
        {
          goto LABEL_453;
        }

        *&v37 = *&v37 + (*v95 * *v95);
        *v81 = LODWORD(v37);
        if (v82 < v324)
        {
          goto LABEL_453;
        }

        ++v82;
        if (v94 + 1 > v325 || v94 > v82)
        {
          goto LABEL_453;
        }

        v83 = v83 + (*v94 * *v94);
        *v75 = v83;
        LODWORD(v33) = (v33 + 1);
        if ((*v95 * *(v95 - 1)) < 0.0)
        {
          if (v25 < v344)
          {
            goto LABEL_453;
          }

          *v25 = ++v72;
          if (v33 > *v80)
          {
            *v80 = v33;
          }

          if (!v84)
          {
            goto LABEL_140;
          }

          if (!v92)
          {
            goto LABEL_453;
          }

          if (v33 > *v90)
          {
            v84 = 0;
            *v90 = v33;
          }

          else
          {
LABEL_140:
            v84 = 0;
          }

          LODWORD(v33) = 0xFFFF;
        }

        v93 = (v93 + 1);
      }

      while (v93 < v34);
      v96 = *v80;
    }

    v77 = v82;
    v23 = v43;
    if (v33 > v96)
    {
      *v80 = v33;
    }

    if (v84)
    {
      v97 = (v85 - 1);
      v43 = v343;
      if (v85 - 1 < v343 || v97 > v85)
      {
        goto LABEL_453;
      }

      if (*v97 < v33)
      {
        *v97 = v33;
      }
    }

    v43 = v345;
    if (v25 + 1 > v345)
    {
      goto LABEL_453;
    }

    *(v25 + 1) = 0;
    v25 = (v25 + 2);
    if (v73 == 7)
    {
      goto LABEL_161;
    }

    if (v23 < v314)
    {
      goto LABEL_453;
    }

    LOWORD(v43) = v312;
    if ((v23 + 1) > v312)
    {
      goto LABEL_453;
    }

    if (v23 > v23 + 1)
    {
      goto LABEL_453;
    }

    LOWORD(v43) = v314;
    if ((v23 - 1) < v314 || v23 - 1 > v23)
    {
      goto LABEL_453;
    }

    if ((*v23 * *(v23 - 1)) >= 0.0)
    {
LABEL_161:
      v72 = 0;
    }

    else
    {
      v72 = 1;
      *v25 = 1;
      LODWORD(v33) = 0xFFFF;
    }

    v43 = v320;
    if (v78 + 1 > v320)
    {
      goto LABEL_453;
    }

    ++v79;
    ++v73;
    if (*v78 < (*&v37 * 0.5))
    {
      *&v37 = (*&v37 - *v78) + (*&v37 - *v78);
    }

    *v78 = *&v37;
    ++v75;
    ++v78;
    ++v80;
    v76 = v314;
  }

  while (v73 != 8);
  if (v74 < &v350)
  {
    goto LABEL_453;
  }

  v43 = v353;
  if (v81 + 8 > v353)
  {
    goto LABEL_453;
  }

  if (v74 > (v81 + 8))
  {
    goto LABEL_453;
  }

  LODWORD(v36) = v340[0];
  *&v37 = (*&v36 * *&v36) + 100.0;
  *v74 = LODWORD(v37);
  if (v25 < v344 || v25 > v345)
  {
    goto LABEL_453;
  }

  v98 = v341;
  v99 = &v340[1];
  *v25 = 0;
  if (v301 >= 2)
  {
    LOWORD(v43) = 0;
    LOWORD(v100) = 1;
    v101 = &v340[1];
    do
    {
      v47 = (v101 + 1);
      if (v101 < v340 || v47 > v341 || v101 > v47)
      {
        goto LABEL_453;
      }

      v105 = *v101;
      v104 = v101 - 1;
      v106 = v105;
      *&v37 = *&v37 + (v106 * v106);
      *v74 = LODWORD(v37);
      if (v104 < v340)
      {
        goto LABEL_453;
      }

      if ((v106 * *v104) < 0.0)
      {
        LOWORD(v43) = v43 + 1;
        *v25 = v43;
      }

      v100 = (v100 + 1);
      v101 = v47;
      LODWORD(v47) = v301;
    }

    while (v100 < v301);
  }

  LOWORD(v43) = v314;
  v107 = (v314 + 4 * v300);
  if (v107 < v314)
  {
    goto LABEL_453;
  }

  v43 = (v107 + 1);
  if ((v107 + 1) > v312 || v107 > v43)
  {
    goto LABEL_453;
  }

  v37 = 0.5;
  v108 = *&v36 * 0.5 + (*v107 + *&v340[1]) * -0.25;
  *&v36 = (v108 * v108) + 100.0;
  v348 = *&v36;
  if (v301 < 3)
  {
    v112 = v340;
  }

  else
  {
    v109 = &v340[2];
    v110 = 1;
    do
    {
      v43 = (v109 - 2);
      if (v109 - 2 < v340)
      {
        goto LABEL_453;
      }

      v47 = (v109 - 1);
      if (v109 - 1 > v341)
      {
        goto LABEL_453;
      }

      if (v43 > v47)
      {
        goto LABEL_453;
      }

      LODWORD(v47) = v47 < v340;
      if (v109 < v340)
      {
        goto LABEL_453;
      }

      v43 = (v109 + 1);
      if (v109 + 1 > v341 || v109 > v43 || (v47 & 1) != 0)
      {
        goto LABEL_453;
      }

      v111 = *(v109 - 1) * 0.5 + (*(v109 - 2) + *v109) * -0.25;
      *&v36 = *&v36 + (v111 * v111);
      v348 = *&v36;
      ++v110;
      ++v109;
    }

    while (v301 - 1 > v110);
    v112 = (v43 - 8);
    v99 = (v43 - 4);
  }

  if (v112 < v340)
  {
    goto LABEL_453;
  }

  v43 = (v112 + 1);
  if (v112 + 1 > v341)
  {
    goto LABEL_453;
  }

  if (v112 > v43)
  {
    goto LABEL_453;
  }

  v43 = v340;
  if (v99 < v340)
  {
    goto LABEL_453;
  }

  v43 = (v99 + 1);
  if (v99 + 1 > v341 || v99 > v43)
  {
    goto LABEL_453;
  }

  v113 = 0;
  v114 = *v99 * 0.5 + *v112 * -0.25;
  v348 = *&v36 + (v114 * v114);
  LODWORD(v36) = v346;
  LODWORD(v37) = v350;
  v115 = 1;
  v116 = *&v350;
  do
  {
    if (*(&v350 + v115) >= v116)
    {
      v116 = *(&v350 + v115);
      v113 = v115;
    }

    ++v115;
  }

  while (v115 != 9);
  if (*a12 || v116 < (10000 * v34))
  {
    v113 = 0;
  }

  v117 = *a9;
  if (v116 >= (*a9 * 4.0))
  {
    v118 = v113;
  }

  else
  {
    v118 = 0;
  }

  LOWORD(v43) = a12;
  *a12 = 0;
  if (v118 >= 1)
  {
    v47 = 0;
    v119 = 0;
    v120 = 0;
    v25 = v331;
    v121 = v116 * 0.03125;
    v28 = v328;
    v19 = v330;
    LODWORD(v33) = 1065353216;
    v122 = 1;
    v35 = v353;
    while (1)
    {
      v123 = v337 + v47;
      v124 = v123 + 1;
      if (v123 < v337 || v124 > v339 || v123 > v124)
      {
        goto LABEL_453;
      }

      *(v337 + v47) = 1065353216;
      v127 = v331 + v47;
      if (v127 < v331)
      {
        goto LABEL_453;
      }

      if (v127 + 1 > v333)
      {
        goto LABEL_453;
      }

      if (v127 > v127 + 1)
      {
        goto LABEL_453;
      }

      *(v331 + v47) = 1065353216;
      v128 = v318 + v47;
      if (v128 < v318)
      {
        goto LABEL_453;
      }

      v43 = (v128 + 1);
      if (v128 + 1 > v320 || v128 > v43)
      {
        goto LABEL_453;
      }

      v129 = *a10 + 500000.0;
      if (*v128 > (v129 * 100.0))
      {
        goto LABEL_231;
      }

      if (*v128 > (v129 * 10.0))
      {
        v43 = v344;
        v139 = &v344[2 * v47];
        if (v139 < v344)
        {
          goto LABEL_453;
        }

        v43 = (v139 + 1);
        if (v139 + 1 > v345 || v139 > v43)
        {
          goto LABEL_453;
        }

        LOWORD(v43) = v299;
        if (v299 > *v139)
        {
          goto LABEL_231;
        }

        v43 = v315;
        v140 = v315 + v47;
        if (v140 < v315)
        {
          goto LABEL_453;
        }

        v43 = (v140 + 1);
        if (v140 + 1 > v317)
        {
          goto LABEL_453;
        }

        if (v140 > v43)
        {
          goto LABEL_453;
        }

        v43 = &v350 + 4 * v47;
        if (v43 < &v350 || v43 + 4 > v353 || v43 > v43 + 4)
        {
          goto LABEL_453;
        }

        if (*v140 < (*v43 / 6.0))
        {
LABEL_231:
          *a12 = 1;
          v130 = 1.0;
          if (v47)
          {
            v131 = &v350 + v47;
            LODWORD(v43) = v131 + 1 > v353 || v131 > v131 + 1 || v131 < &v350;
            v134 = v122;
            v113 = v47;
            do
            {
              v135 = &v350 + (v134 - 2);
              v138 = v135 + 1 > v353 || v135 > v135 + 1 || v135 < &v350;
              if ((v138 | v43))
              {
                goto LABEL_453;
              }

              if (*v135 > (*v131 * 0.5))
              {
                v113 = v134 - 2;
              }

              --v134;
            }

            while (v134 > 1);
          }

          else
          {
            v113 = 0;
          }

          goto LABEL_299;
        }
      }

      v141 = &v350 + v47;
      if (v141 < &v350)
      {
        goto LABEL_453;
      }

      v43 = (v141 + 1);
      if (v141 + 1 > v353 || v141 > v43)
      {
        goto LABEL_453;
      }

      v142 = *v141;
      if (*v141 >= (v116 * 0.0625))
      {
        v130 = 1.0;
        if (v113 <= 7 && v47)
        {
          *a12 = 1;
        }

        v113 = v47;
        goto LABEL_299;
      }

      if (v142 >= v121)
      {
        v130 = v61;
      }

      else
      {
        v130 = v38;
      }

      if (v142 < v121)
      {
        ++v119;
      }

      v143 = sqrtf(v117 / v142);
      *(v337 + v47) = v143;
      v43 = &v346;
      v144 = &v346 + 4 * v47;
      if (v144 < &v346)
      {
        goto LABEL_453;
      }

      v43 = (v144 + 4);
      if (v144 + 4 > v349)
      {
        goto LABEL_453;
      }

      if (v144 > v43)
      {
        goto LABEL_453;
      }

      v145 = sqrtf(*v298 / *(&v346 + v47));
      *(v331 + v47) = v145;
      v43 = v344;
      v146 = &v344[2 * v47];
      if (v146 < v344)
      {
        goto LABEL_453;
      }

      v43 = (v146 + 1);
      if (v146 + 1 > v345 || v146 > v43)
      {
        goto LABEL_453;
      }

      if ((v299 >> 1) > *v146)
      {
        goto LABEL_288;
      }

      v43 = v343;
      v147 = v343 + v47;
      if (v147 < v343)
      {
        goto LABEL_453;
      }

      v43 = (v147 + 1);
      if (v147 + 1 > v344 || v147 > v43)
      {
        goto LABEL_453;
      }

      LOWORD(v43) = v295;
      if (v295 >= *v147)
      {
        if (v143 <= 1.0)
        {
          goto LABEL_297;
        }
      }

      else
      {
LABEL_288:
        if (v143 < 1.0)
        {
          *a9 = v142;
          v117 = v142;
        }
      }

      *v123 = 1065353216;
LABEL_297:
      ++v120;
      if (v145 > 1.0)
      {
        *v127 = 1065353216;
      }

LABEL_299:
      v148 = v334 + 4 * v47;
      if (v148 < v334)
      {
        goto LABEL_453;
      }

      v43 = (v148 + 4);
      if (v148 + 4 > v336)
      {
        goto LABEL_453;
      }

      if (v148 > v43)
      {
        goto LABEL_453;
      }

      *(v334 + v47) = v130;
      v149 = v328 + 4 * v47;
      if (v149 < v328)
      {
        goto LABEL_453;
      }

      v43 = (v149 + 4);
      if (v149 + 4 > v330 || v149 > v43)
      {
        goto LABEL_453;
      }

      *(v328 + v47++) = v130;
      ++v122;
      if (v47 >= v113)
      {
        v150 = v119;
        v151 = v120;
        if (v113 > 8)
        {
          goto LABEL_326;
        }

        goto LABEL_309;
      }
    }
  }

  v150 = 0;
  v151 = 0;
  v113 = v118;
LABEL_309:
  v47 = v334;
  v33 = v330;
  v152 = v113;
  LOWORD(v43) = v113;
  v153 = v113 - 9;
  v154 = 4 * v152;
  v155 = v334;
  v156 = v337;
  v157 = v328;
  v158 = v331;
  do
  {
    v159 = (v155 + v154);
    if ((v155 + v154) < v334)
    {
      goto LABEL_453;
    }

    v43 = (v159 + 1);
    if (v159 + 1 > v336 || v159 > v43)
    {
      goto LABEL_453;
    }

    *v159 = 1065353216;
    v161 = (v156 + v154);
    if ((v156 + v154) < v337)
    {
      goto LABEL_453;
    }

    v43 = (v161 + 1);
    if (v161 + 1 > v339)
    {
      goto LABEL_453;
    }

    if (v161 > v43)
    {
      goto LABEL_453;
    }

    *v161 = 1065353216;
    v162 = (v157 + v154);
    if ((v157 + v154) < v328)
    {
      goto LABEL_453;
    }

    v43 = (v162 + 1);
    if (v162 + 1 > v330)
    {
      goto LABEL_453;
    }

    if (v162 > v43)
    {
      goto LABEL_453;
    }

    *v162 = 1065353216;
    v163 = (v158 + v154);
    if ((v158 + v154) < v331)
    {
      goto LABEL_453;
    }

    v43 = (v163 + 1);
    if (v163 + 1 > v333 || v163 > v43)
    {
      goto LABEL_453;
    }

    v158 = (v158 + 4);
    *v163 = 1065353216;
    v157 = (v157 + 4);
    v156 = (v156 + 4);
    v155 = (v155 + 4);
    v56 = __CFADD__(v153++, 1);
  }

  while (!v56);
LABEL_326:
  v164 = 0;
  LOWORD(v33) = 0;
  do
  {
    v165 = *(v334 + v164++);
    if (v165 >= 1.0)
    {
      v166 = v33;
    }

    else
    {
      v166 = v164;
    }

    LODWORD(v33) = v166;
  }

  while (v164 != 8);
  v19 = v336;
  v43 = v328;
  v25 = v330;
  v38 = 0.5;
  if (v44 > 0.5 && v150 + v151 < 2)
  {
    LODWORD(v33) = 0;
    LODWORD(v28) = 0;
    LODWORD(v35) = 0;
    v188 = 0;
    v191 = v314;
    v189 = v314;
    v190 = v307;
    if (v44 < 1.0)
    {
LABEL_388:
      LOWORD(v28) = 0;
      v193 = *a10;
      v38 = *a11;
      LODWORD(v47) = 1;
      v194 = *a10;
      LODWORD(v33) = v188;
      goto LABEL_407;
    }

    goto LABEL_381;
  }

  LODWORD(v35) = v166 > 0;
  if (v166 >= 1)
  {
    v168 = 0;
    v169 = 0;
    v47 = v337;
    v170 = v334;
    v171 = v328;
    v43 = v337;
    v172 = v331;
    v173 = &v327[4 * v313];
    do
    {
      v174 = v170 + 1;
      v176 = v170 < v334 || v174 > v336 || v170 > v174;
      v28 = v43 + 4;
      if (v176 || v43 < v337 || v28 > v339 || v43 > v28)
      {
        goto LABEL_453;
      }

      v38 = *v170;
      v180 = *v43;
      if (*v170 < *v43)
      {
        *v170 = v180;
        v38 = v180;
      }

      if (v171 < v328)
      {
        goto LABEL_453;
      }

      if (v171 + 1 > v330)
      {
        goto LABEL_453;
      }

      if (v171 > v171 + 1)
      {
        goto LABEL_453;
      }

      if (v172 < v331)
      {
        goto LABEL_453;
      }

      v181 = v172 + 1;
      if (v172 + 1 > v333 || v172 > v181)
      {
        goto LABEL_453;
      }

      v182 = *v171;
      v183 = *v172;
      if (*v171 < *v172)
      {
        *v171 = v183;
        v182 = v183;
      }

      if (v34 >= 1)
      {
        LOWORD(v184) = 0;
        v43 = v168;
        do
        {
          v185 = &v173[v43];
          if (&v173[v43] < v327)
          {
            goto LABEL_453;
          }

          if (v185 + 1 > v328)
          {
            goto LABEL_453;
          }

          if (v185 > v185 + 1)
          {
            goto LABEL_453;
          }

          *v185 = v38;
          if (&v326[v43] < v326)
          {
            goto LABEL_453;
          }

          v186 = &v326[v43 + 4];
          if (v186 > v327 || &v326[v43] > v186)
          {
            goto LABEL_453;
          }

          *&v326[v43] = v182;
          v184 = (v184 + 1);
          v43 += 4;
        }

        while (v184 < v34);
      }

      ++v169;
      v168 += 4 * v34;
      v170 = v174;
      ++v171;
      v43 = v28;
      v172 = v181;
    }

    while (v169 != v33);
  }

  v38 = 1.0;
  if (v33 <= 0 && v44 >= 1.0)
  {
    LODWORD(v28) = v33;
    v190 = v307;
    v191 = v314;
LABEL_381:
    v38 = *a11;
    if (*a11 >= 1.0)
    {
      goto LABEL_495;
    }

    LODWORD(v35) = 0;
    goto LABEL_383;
  }

  v190 = v307;
  v191 = v314;
  if (v33 > 7)
  {
    LODWORD(v47) = 0;
    v189 = v340;
    LODWORD(v28) = v33;
    v191 = v340;
    goto LABEL_390;
  }

  LODWORD(v28) = v33;
LABEL_383:
  v189 = &v191[v33 * v34];
  v192 = 2;
  if (v190 != 160)
  {
    v192 = 3;
  }

  if (!v28)
  {
    v188 = v33;
    goto LABEL_388;
  }

  v302 = (8 - v28) << v192;
  LODWORD(v47) = 1;
  v98 = v312;
LABEL_390:
  v195 = v33 - 1;
  v43 = &v350 + 4 * v33 - 4;
  if (v43 < &v350)
  {
    goto LABEL_453;
  }

  if (v43 + 4 > v353)
  {
    goto LABEL_453;
  }

  if (v43 > v43 + 4)
  {
    goto LABEL_453;
  }

  v43 = v334 + 4 * v195;
  if (v43 < v334)
  {
    goto LABEL_453;
  }

  if (v43 + 4 > v336)
  {
    goto LABEL_453;
  }

  if (v43 > v43 + 4)
  {
    goto LABEL_453;
  }

  v43 = v328 + 4 * v195;
  if (v43 < v328 || v43 + 4 > v330 || v43 > v43 + 4)
  {
    goto LABEL_453;
  }

  v194 = *(&v350 + v195);
  v44 = *(v334 + v195);
  v38 = *v43;
  v193 = v44 * (v194 * v44);
  v196 = v116 / 80.0;
  if (v196 > v193)
  {
    v43 = v344;
    v197 = &v344[2 * v28];
    if (v197 < v344)
    {
      goto LABEL_453;
    }

    v43 = (v197 + 1);
    if (v197 + 1 > v345 || v197 > v43)
    {
      goto LABEL_453;
    }

    LOWORD(v43) = v299;
    if (v299 < *v197)
    {
      v193 = v196;
    }
  }

  if (v302 >= 1)
  {
    v309 = v98;
LABEL_407:
    v198 = 0;
    v199 = 0.0;
    do
    {
      v200 = v341 + v198;
      v201 = v200 + 1;
      if (v200 < v341 || v201 > &v342 || v200 > v201)
      {
        goto LABEL_453;
      }

      *v200 = 100.0;
      if (v310 < 1)
      {
        v205 = 100.0;
      }

      else
      {
        v204 = 0;
        v205 = 100.0;
        v43 = v189;
        do
        {
          if (v43 < v191)
          {
            goto LABEL_453;
          }

          v189 = (v43 + 4);
          if (v43 + 4 > v309 || v43 > v189)
          {
            goto LABEL_453;
          }

          v205 = v205 + (*v43 * *v43);
          *v200 = v205;
          if (v205 > v199)
          {
            v199 = v205;
          }

          ++v204;
          v43 += 4;
        }

        while (v310 > v204);
      }

      v206 = v321 + 4 * v198;
      v43 = (v206 + 4);
      if (v206 + 4 < v321)
      {
        goto LABEL_453;
      }

      v207 = v206 + 8;
      if (v207 > v323 || v43 > v207)
      {
        goto LABEL_453;
      }

      v194 = v194 + (v205 * 4.0);
      v208 = v194 / (v198 + 2);
      if (v208 < v193)
      {
        v208 = v193;
      }

      *v43 = v208;
      v198 = (v198 + 1);
    }

    while (v198 < v302);
    v209 = *v341;
    v210 = v199 * 0.125;
    goto LABEL_432;
  }

  v210 = 0.0;
  v209 = NAN;
LABEL_432:
  v43 = v321;
  if (v209 >= v193)
  {
    v193 = v209;
  }

  *v321 = v193;
  v211 = v321 + v302;
  if (v211 < v321)
  {
    goto LABEL_453;
  }

  v43 = (v211 + 1);
  if (v211 + 1 > v323 || v211 > v43)
  {
    goto LABEL_453;
  }

  v212 = 0;
  LOWORD(v43) = 0;
  *v211 = -1082130432;
  v213 = v341;
  while (1)
  {
    v214 = v321 + v212;
    v215 = v214 + 1;
    if (v214 < v321 || v215 > v323 || v214 > v215)
    {
      goto LABEL_453;
    }

    if (*v213 >= *v214 || *v213 >= v210)
    {
      break;
    }

    LOWORD(v43) = v43 + 1;
    v213 = v341 + v43;
    if (v213 >= v341 && v213 + 1 <= &v342)
    {
      v212 = v43;
      if (v213 <= v213 + 1)
      {
        continue;
      }
    }

    goto LABEL_453;
  }

  while (1)
  {
    v219 = v43;
    v220 = v310 * v43;
    if (v47 && v220 >= 1)
    {
      LODWORD(v47) = 0;
      v43 = 4 * v33 * v34;
      v221 = &v327[4 * v313];
      v222 = v326;
      do
      {
        v223 = &v221[v43];
        if (&v221[v43] < v327)
        {
          goto LABEL_453;
        }

        v33 = v223 + 1;
        if (v223 + 1 > v328)
        {
          goto LABEL_453;
        }

        if (v223 > v33)
        {
          goto LABEL_453;
        }

        v33 = &v222[v43];
        *v223 = v44;
        if (&v222[v43] < v326)
        {
          goto LABEL_453;
        }

        v224 = &v222[v43 + 4];
        if (v224 > v327 || v33 > v224)
        {
          goto LABEL_453;
        }

        *v33 = v38;
        LODWORD(v47) = v47 + 1;
        v221 += 4;
        v222 += 4;
      }

      while (v220 > v47);
    }

    v225 = v313 - v220;
    if (v35 && (v226 = (v28 + (v219 >> v294)), v226 >= 2))
    {
      v227 = (v226 - 1);
      v43 = &v346 + 4 * v227;
      if (v43 < &v346)
      {
        goto LABEL_453;
      }

      LODWORD(v47) = v305;
      if (v43 + 4 > v305)
      {
        goto LABEL_453;
      }

      if (v43 > v43 + 4)
      {
        goto LABEL_453;
      }

      v228 = &v346 + (v28 + (v219 >> v294));
      v47 = (v228 - 2);
      if (v228 - 2 < &v346 || v228 - 1 > v305 || v47 > (v228 - 1))
      {
        goto LABEL_453;
      }

      v229 = *v43;
      v44 = *v47;
      v38 = *v43 + *v47;
      v47 = &unk_19B0AD000;
      if (v226 == 2)
      {
        if (v229 < v44)
        {
          LOWORD(v28) = 0;
          v225 = v313;
        }
      }

      else
      {
        v230 = (v226 - 3);
        v43 = &v346;
        v231 = &v346 + v230;
        if (v231 < &v346)
        {
          goto LABEL_453;
        }

        v43 = (v231 + 1);
        if (v231 + 1 > v305)
        {
          goto LABEL_453;
        }

        if (v231 > v43)
        {
          goto LABEL_453;
        }

        v43 = &v350 + 4 * v227;
        if (v43 < &v350)
        {
          goto LABEL_453;
        }

        if (v43 + 4 > v308)
        {
          goto LABEL_453;
        }

        if (v43 > v43 + 4)
        {
          goto LABEL_453;
        }

        v232 = &v350 + v230;
        if (v232 < &v350 || v232 + 1 > v308 || v232 > v232 + 1)
        {
          goto LABEL_453;
        }

        v233 = (((v229 - *v231) / ((v38 + *v231) / 3.0)) * 0.5) < 0.2;
        if (*v43 < *v232)
        {
          v233 = 1;
        }

        if (v233)
        {
          LOWORD(v28) = 0;
          v225 = v313;
        }
      }

      if (v228 < &v346)
      {
        goto LABEL_453;
      }

      LOWORD(v43) = v305;
      if (v228 + 1 > v305 || v228 > v228 + 1)
      {
        goto LABEL_453;
      }

      v44 = ((*v228 - v44) / ((v38 + *v228) / 3.0)) * 0.5;
      v38 = 0.2;
      v190 = v307;
      if (v44 < 0.2)
      {
        LOWORD(v28) = 0;
LABEL_495:
        v225 = v313;
      }
    }

    else
    {
      v190 = v307;
    }

    v234 = (v28 * v34 - v225) & ~((v28 * v34 - v225) >> 31);
    v43 = v327;
    LODWORD(v47) = (v234 + v313);
    if (v47 < v190)
    {
      v235 = &v327[4 * v234 + 4 * v313];
      do
      {
        v236 = v235 + 1;
        v237 = v235 < v327 || v236 > v328;
        if (v237 || v235 > v236)
        {
          goto LABEL_453;
        }

        *v235 = 1065353216;
        LODWORD(v47) = (v47 + 1);
        ++v235;
        v190 = v307;
      }

      while (v47 < v307);
    }

    v239 = (v28 * v34 - v225 + v313) & ~((v28 * v34 - v225 + v313) >> 31);
    v47 = v327;
    if (v239 < v190)
    {
      v240 = &v326[4 * v239];
      v43 = v326;
      do
      {
        v241 = v240 + 1;
        v242 = v240 < v326 || v241 > v327;
        if (v242 || v240 > v241)
        {
          goto LABEL_453;
        }

        *v240 = 1065353216;
        v239 = (v239 + 1);
        ++v240;
      }

      while (v239 < v307);
    }

    v43 = v327;
    v244 = v313;
    do
    {
      v245 = v43 + 4;
      if (v43 < v327 || v245 > v328 || v43 > v245)
      {
        goto LABEL_453;
      }

      v44 = *v304;
      *v43 = *v304;
      v43 += 4;
      --v244;
    }

    while (v244);
    v44 = 1.0;
    if (v234 > v307)
    {
      v43 = v334 + 4 * v28;
      v248 = (v43 - 4);
      if (v43 - 4 < v334 || v43 > v19 || v248 > v43)
      {
        goto LABEL_453;
      }

      v44 = *v248;
    }

    v43 = &v327[4 * v293];
    v249 = v313;
    do
    {
      v250 = v43 + 4;
      if (v43 < v327 || v250 > v328 || v43 > v250)
      {
        goto LABEL_453;
      }

      *v43 = v44;
      v43 += 4;
      --v249;
    }

    while (v249);
    if (v307 >= 1)
    {
      LOWORD(v253) = 0;
      v254 = &v327[4];
      v255 = v327;
LABEL_541:
      v43 = (v255 + 1);
      v258 = v255 + 1 > v328 || v255 > v43 || v255 < v327;
      v259 = 1;
      v260 = v254;
      while (1)
      {
        v261 = v260 + 1 > v328 || v260 > v260 + 1;
        v262 = !v261 && v260 >= v327;
        v263 = !v262;
        LODWORD(v33) = v263 || v258;
        if (v33)
        {
          goto LABEL_453;
        }

        v264 = *v260++;
        v38 = v264 + *v255;
        *v255 = v38;
        LODWORD(v33) = v313;
        v52 = v313 > v259++;
        if (!v52)
        {
          v38 = *&v45 * v38;
          *v255 = v38;
          v253 = (v253 + 1);
          ++v254;
          ++v255;
          if (v253 < v307)
          {
            goto LABEL_541;
          }

          break;
        }
      }
    }

    *v304 = v44;
    v43 = v326;
    v265 = &v326[4 * v300];
    if (v265 >= v326)
    {
      v43 = (v265 + 1);
      if (v265 + 1 <= v327 && v265 <= v43)
      {
        break;
      }
    }

LABEL_453:
    __break(0x5519u);
  }

  LODWORD(v45) = *v265;
  *v296 = *v265;
  if (v307 >= 1)
  {
    v266 = 0;
    LOWORD(v267) = 0;
    do
    {
      v43 = &v325[v266 / 4];
      if (&v325[v266 / 4] < v325)
      {
        goto LABEL_453;
      }

      LODWORD(v33) = v306;
      if (v43 + 4 > v306)
      {
        goto LABEL_453;
      }

      if (v43 > v43 + 4)
      {
        goto LABEL_453;
      }

      v43 = &v327[v266];
      if (&v327[v266] < v327)
      {
        goto LABEL_453;
      }

      v268 = &v327[v266 + 4];
      if (v268 > v328)
      {
        goto LABEL_453;
      }

      if (v43 > v268)
      {
        goto LABEL_453;
      }

      v43 = &v324[v266 / 4];
      if (&v324[v266 / 4] < v324)
      {
        goto LABEL_453;
      }

      v269 = &v324[v266 / 4 + 1];
      LODWORD(v33) = v311;
      if (v269 > v311)
      {
        goto LABEL_453;
      }

      if (v43 > v269)
      {
        goto LABEL_453;
      }

      v43 = &v326[v266];
      if (&v326[v266] < v326)
      {
        goto LABEL_453;
      }

      v270 = &v326[v266 + 4];
      if (v270 > v327)
      {
        goto LABEL_453;
      }

      if (v43 > v270)
      {
        goto LABEL_453;
      }

      v43 = v314 + v266;
      if (v314 + v266 < v314)
      {
        goto LABEL_453;
      }

      v271 = v314 + v266 + 4;
      LODWORD(v33) = v312;
      if (v271 > v312 || v43 > v271)
      {
        goto LABEL_453;
      }

      v44 = *&v327[v266];
      v38 = v324[v266 / 4] * *&v326[v266];
      *&v45 = v38 + (*&v325[v266 / 4] * v44);
      *v43 = LODWORD(v45);
      v267 = (v267 + 1);
      v266 += 4;
    }

    while (v267 < v307);
  }

  LODWORD(v45) = 0;
  v272 = 4;
  v273 = *&v37;
  do
  {
    v274 = *&v45;
    if (v272 == 16)
    {
      *&v45 = v273;
    }

    v273 = *(&v350 + v272) + v273;
    v272 += 4;
  }

  while (v272 != 32);
  if (v274 < (v273 * 0.5))
  {
    v273 = (v273 - v274) + (v273 - v274);
  }

  v38 = 0.125;
  v44 = v273 * 0.125;
  *v303 = v44;
  if (v28 >= 1)
  {
    v275 = 0;
    v43 = 4 * v28;
    v47 = &v346;
    while (1)
    {
      v276 = (&v350 + v275 + 4);
      v277 = (&v350 + v275) < &v350 || v276 > v308;
      v278 = v277 || &v350 + v275 > v276;
      v279 = v334 + v275;
      v280 = v334 + v275 + 4;
      v281 = !v278 && v279 >= v334;
      v282 = !v281 || v280 > v19;
      if (v282 || v279 > v280)
      {
        goto LABEL_453;
      }

      LODWORD(v36) = *(v334 + v275);
      v44 = *&v36 * (*(&v350 + v275) * *&v36);
      *(&v350 + v275) = v44;
      v284 = &v346 + v275;
      if ((&v346 + v275) < &v346)
      {
        goto LABEL_453;
      }

      if (v284 + 4 > v305)
      {
        goto LABEL_453;
      }

      if (v284 > v284 + 4)
      {
        goto LABEL_453;
      }

      v285 = v328 + v275;
      if ((v328 + v275) < v328 || v285 + 4 > v25 || v285 > v285 + 4)
      {
        goto LABEL_453;
      }

      LODWORD(v36) = *(v328 + v275);
      v44 = *&v36 * (*(&v346 + v275) * *&v36);
      *(&v346 + v275) = v44;
      v275 += 4;
      if (v43 == v275)
      {
        LODWORD(v37) = v350;
        LODWORD(v36) = v346;
        break;
      }
    }
  }

  *v297 = *&v37;
  *v298 = *&v36;
  v286 = 0.0;
  for (i = 4; i != 32; i += 4)
  {
    if (i == 16)
    {
      v286 = *&v36;
      *&v45 = *v297;
    }

    v288 = *(&v346 + i);
    *v297 = *(&v350 + i) + *v297;
    *&v36 = v288 + *v298;
    *v298 = *&v36;
  }

  v289 = *v297;
  if (*&v45 < (*v297 * 0.5))
  {
    v289 = (v289 - *&v45) + (v289 - *&v45);
    *v297 = v289;
    *&v36 = *v298;
  }

  if (v286 < (*&v36 * 0.5))
  {
    *v298 = (*&v36 - v286) + (*&v36 - v286);
    v289 = *v297;
  }

  *v297 = v289 * 0.125;
  v290 = *v298 * 0.125;
  *v298 = v290;
  v291 = (*(&v351 + 3) + *(&v351 + 2)) * 0.5;
  v292 = (*(&v347 + 3) + *(&v347 + 2)) * 0.5;
  if (v291 > *v297)
  {
    *v297 = v291;
    v290 = *v298;
  }

  if (v292 > v290)
  {
    *v298 = v292;
  }
}

uint64_t find_best_delay(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, int a5, int a6, int a7, int a8, _WORD *a9)
{
  *v53 = *MEMORY[0x1E69E9840];
  bzero(v52, 0x380uLL);
  bzero(v51, 0x380uLL);
  v17 = (a6 - a5) / a8;
  v18 = 0.0;
  if (v17 < 1)
  {
    v36 = 0;
  }

  else
  {
    for (i = 0; i < v17; ++i)
    {
      LOWORD(v20) = 0;
      v21 = 0.0;
      v22 = 0.0;
      do
      {
        v23 = v20;
        v24 = (a1 + 4 * a5 + 4 * v20);
        v25 = v24 + 1;
        v27 = v24 < a1 || v25 > a2 || v24 > v25;
        v28 = (a3 + 4 * v23);
        v29 = v28 + 1;
        if (v27 || v28 < a3 || v29 > a4 || v28 > v29)
        {
          goto LABEL_55;
        }

        v21 = v21 + (*v24 * *v24);
        v22 = v22 + (*v24 * *v28);
        v20 = (v23 + a8);
      }

      while (v20 < a7);
      v33 = &v52[i];
      if (v33 < v52 || v33 + 1 > v53 || v33 > v33 + 1 || (v52[i] = v22, v34 = &v51[i], v34 < v51) || v34 + 1 > v52 || v34 > v34 + 1)
      {
LABEL_55:
        __break(0x5519u);
      }

      *v34 = v21;
      LOWORD(a5) = a5 + a8;
    }

    v35 = 0;
    v36 = 0;
    v37 = 0.0;
    v38 = -3.4028e38;
    do
    {
      v39 = v35;
      v40 = &v52[v35];
      v41 = v40 + 1;
      v43 = v40 < v52 || v41 > v53 || v40 > v41;
      v44 = &v51[v39];
      v45 = v44 + 1;
      if (v43 || v44 < v51 || v45 > v52 || v44 > v45)
      {
        goto LABEL_55;
      }

      if ((v37 * v52[v39]) >= (v38 * *&v51[v39]))
      {
        v37 = *&v51[v39];
        v38 = v52[v39];
        v36 = v39;
      }

      v35 = v39 + 1;
    }

    while (v17 > (v39 + 1));
    if (v38 > 0.0 && v37 > 0.0)
    {
      v18 = (v38 / v37);
    }
  }

  v49 = v18 < 0.5;
  if (v18 > 1.5)
  {
    v49 = 1;
  }

  *a9 = v49;
  return (v36 * a8);
}

unint64_t Windowing_1st_NB(unint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7, unint64_t a8, __int16 a9)
{
  if (a9)
  {
    v9 = 0;
    while (1)
    {
      v10 = (a3 + v9 + 500);
      v11 = a3 + v9 + 504;
      v12 = v10 < a3 || v11 > a4;
      v13 = v12 || v10 > v11;
      v14 = (a7 + v9);
      v15 = a7 + v9 + 4;
      v16 = !v13 && v14 >= a7;
      v17 = !v16 || v15 > a8;
      v18 = v17 || v14 > v15;
      v19 = (result + v9 + 180);
      v20 = result + v9 + 184;
      v21 = !v18 && v19 >= result;
      v22 = !v21 || v20 > a2;
      if (v22 || v19 > v20)
      {
        break;
      }

      *v19 = *v10 * *v14;
      v9 += 4;
      if (v9 == 140)
      {
        v24 = 0;
        v25 = 0;
        while (1)
        {
          v26 = (a3 + v24 + 636);
          v27 = a3 + v24 + 640;
          v28 = v26 < a3 || v27 > a4;
          v29 = v28 || v26 > v27;
          v30 = (a7 + v25 + 140);
          v31 = a7 + v25 + 144;
          v32 = !v29 && v30 >= a7;
          v33 = !v32 || v31 > a8;
          v34 = v33 || v30 > v31;
          v35 = (result + v25 + 320);
          v36 = result + v25 + 324;
          v37 = !v34 && v35 >= result;
          v38 = !v37 || v36 > a2;
          if (v38 || v35 > v36)
          {
            break;
          }

          *v35 = -(*v26 * *v30);
          if (a3 + v25 + 4 > a4)
          {
            break;
          }

          v40 = (a5 + v24 + 316);
          if (v40 < a5)
          {
            break;
          }

          v41 = a5 + v24 + 320;
          if (v41 > a6)
          {
            break;
          }

          if (v40 > v41)
          {
            break;
          }

          v42 = (result + v25 + 960);
          if (v42 < result)
          {
            break;
          }

          v43 = result + v25 + 964;
          if (v43 > a2 || v42 > v43)
          {
            break;
          }

          *v42 = -(*(a3 + v25) * *v40);
          v25 += 4;
          v24 -= 4;
          if (v25 == 140)
          {
            return result;
          }
        }

        break;
      }
    }
  }

  else
  {
    v44 = 0;
    v45 = (a5 + 736);
    while (1)
    {
      v46 = (a3 + v44 + 500);
      v47 = a3 + v44 + 504;
      v48 = v46 < a3 || v47 > a4;
      v49 = v48 || v46 > v47;
      v50 = v45 + 1;
      v51 = !v49 && v45 >= a5;
      v52 = !v51 || v50 > a6;
      v53 = v52 || v45 > v50;
      v54 = (result + v44 + 180);
      v55 = result + v44 + 184;
      v56 = !v53 && v54 >= result;
      v57 = !v56 || v55 > a2;
      if (v57 || v54 > v55)
      {
        break;
      }

      v59 = *v45--;
      *v54 = *v46 * v59;
      v44 += 4;
      if (v44 == 140)
      {
        v60 = 0;
        v61 = 0;
        while (1)
        {
          v62 = (a3 + v60 + 636);
          v63 = a3 + v60 + 640;
          v64 = v62 < a3 || v63 > a4;
          v65 = v64 || v62 > v63;
          v66 = (a5 + v60 + 596);
          v67 = !v65 && v66 >= a5;
          v68 = !v67 || a5 + v60 + 600 > a6;
          v69 = (result + v61 + 320);
          v70 = result + v61 + 324;
          v71 = !v68 && v69 >= result;
          v72 = !v71 || v70 > a2;
          if (v72 || v69 > v70)
          {
            break;
          }

          *v69 = -(*v62 * *v66);
          if (a3 + v61 + 4 > a4)
          {
            break;
          }

          v74 = (result + v61 + 960);
          if (v74 < result)
          {
            break;
          }

          v75 = result + v61 + 964;
          if (v75 > a2 || v74 > v75)
          {
            break;
          }

          *v74 = -(*(a3 + v61) * *(a5 + v60 + 316));
          v61 += 4;
          v60 -= 4;
          if (v61 == 140)
          {
            return result;
          }
        }

        break;
      }
    }
  }

  __break(0x5519u);
  return result;
}

unint64_t Windowing_2nd_NB(unint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6)
{
  v6 = 0;
  v7 = 0;
  while (1)
  {
    v8 = (a3 + v6 + 496);
    v9 = a3 + v6 + 500;
    v10 = v8 < a3 || v9 > a4;
    v11 = v10 || v8 > v9;
    v12 = (result + v7 + 460);
    v13 = result + v7 + 464;
    v14 = !v11 && v12 >= result;
    v15 = !v14 || v13 > a2;
    if (v15 || v12 > v13)
    {
      break;
    }

    *v12 = -*v8;
    if (a3 + v7 + 144 > a4)
    {
      break;
    }

    v17 = (a5 + v6 + 176);
    if (v17 < a5)
    {
      break;
    }

    v18 = a5 + v6 + 180;
    if (v18 > a6)
    {
      break;
    }

    if (v17 > v18)
    {
      break;
    }

    v19 = (result + v7 + 1100);
    if (v19 < result)
    {
      break;
    }

    v20 = result + v7 + 1104;
    if (v20 > a2 || v19 > v20)
    {
      break;
    }

    *v19 = -(*(a3 + v7 + 140) * *v17);
    v7 += 4;
    v6 -= 4;
    if (v7 == 180)
    {
      v21 = 0;
      v22 = 0;
      while (1)
      {
        v23 = (a3 + v22 + 316);
        v24 = v23 < a3 || a3 + v22 + 320 > a4;
        v25 = (result + v21 + 640);
        v26 = result + v21 + 644;
        v27 = !v24 && v25 >= result;
        v28 = !v27 || v26 > a2;
        if (v28 || v25 > v26)
        {
          goto LABEL_69;
        }

        *v25 = -*v23;
        v22 -= 4;
        v21 += 4;
        if (v22 == -180)
        {
          v30 = 0;
          for (i = (result + 820); ; ++i)
          {
            v32 = (a3 + v30 + 136);
            v33 = a3 + v30 + 140;
            v34 = v32 < a3 || v33 > a4;
            v35 = v34 || v32 > v33;
            v36 = (a5 + v30 + 456);
            v37 = a5 + v30 + 460;
            v38 = !v35 && v36 >= a5;
            v39 = !v38 || v37 > a6;
            v40 = v39 || v36 > v37;
            v41 = i + 1;
            v42 = !v40 && i >= result;
            v43 = !v42 || v41 > a2;
            if (v43 || i > v41)
            {
              break;
            }

            *i = -(*v32 * *v36);
            v30 -= 4;
            if (v30 == -140)
            {
              return result;
            }
          }

          goto LABEL_69;
        }
      }
    }
  }

LABEL_69:
  __break(0x5519u);
  return result;
}

unint64_t common_overlapping(unint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unsigned __int16 a7, unsigned __int16 a8, unsigned __int16 a9, unsigned __int16 a10, __int16 a11, unsigned __int16 a12)
{
  v12 = 0;
  v13 = a7;
  v14 = a5 + 4 * a8;
  while (1)
  {
    v15 = (a3 + v12 + 180);
    v16 = a3 + v12 + 184;
    v17 = v15 < a3 || v16 > a4;
    v18 = v17 || v15 > v16;
    v19 = (v14 + v12);
    v20 = v14 + v12 + 4;
    v21 = !v18 && v19 >= a5;
    v22 = !v21 || v20 > a6;
    v23 = v22 || v19 > v20;
    v24 = (result + v12);
    v25 = result + v12 + 4;
    v26 = !v23 && v24 >= result;
    v27 = !v26 || v25 > a2;
    if (v27 || v24 > v25)
    {
      break;
    }

    *v24 = *v15 + *v19;
    v12 += 4;
    if (!--v13)
    {
      if (a9 >= a10)
      {
        return result;
      }

      v29 = a3 + 4 * a11;
      v30 = result + 4 * a12;
      v31 = 4 * a9;
      v32 = a10 - a9;
      while (1)
      {
        v33 = (v29 + v31);
        v34 = v29 + v31 + 4;
        v35 = v29 + v31 < a3 || v34 > a4;
        v36 = v35 || v33 > v34;
        v37 = (v30 + v31);
        v38 = v30 + v31 + 4;
        v39 = !v36 && v37 >= result;
        v40 = !v39 || v38 > a2;
        if (v40 || v37 > v38)
        {
          break;
        }

        *v37 = *v33;
        v30 += 4;
        v29 += 4;
        if (!--v32)
        {
          return result;
        }
      }

      break;
    }
  }

  __break(0x5519u);
  return result;
}

void *Next_good_after_burst_erasures(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, char *a5, unint64_t a6)
{
  v20 = *MEMORY[0x1E69E9840];
  memset(__b, 255, sizeof(__b));
  v12 = 0;
  v13 = &dword_19B3821A0;
  do
  {
    v14 = *v13;
    v13 += 6;
    *&__b[v12] = v14;
    v12 += 4;
  }

  while (v12 != 740);
  memset(v19, 255, sizeof(v19));
  Windowing_1st_NB(v19, &v20, a1, a2, __b, v19, 0, 0, 0);
  Windowing_2nd_NB(v19, &v20, a1, a2, __b, v19);
  if (a6 < (a5 + 180))
  {
    goto LABEL_16;
  }

  if (a5 + 180 < a5)
  {
    goto LABEL_16;
  }

  if ((a6 - (a5 + 180)) < 277)
  {
    goto LABEL_16;
  }

  for (i = 0; i != 70; ++i)
  {
    *&a5[i * 4 + 180] = (*&SmoothingWin_NB875[i] * (*&v19[i * 4 + 820] * 0.7071)) + (*&a5[i * 4 + 180] * (1.0 - *&SmoothingWin_NB875[i]));
  }

  if (a6 < (a5 + 460))
  {
    goto LABEL_16;
  }

  if (a5 + 460 < a5)
  {
    goto LABEL_16;
  }

  if ((a6 - (a5 + 460)) < 180)
  {
    goto LABEL_16;
  }

  for (j = 460; j != 640; j += 4)
  {
    *&a5[j] = *&v19[j + 640] * 0.7071;
  }

  common_overlapping(a3, a4, v19, &v20, a5, a6, 0x73u, 0x2Du, 0, 0x2Du, 160, 0x73u);
  if (a6 < a5 || a6 - a5 <= 0x27F || (result = memmove(a5, &v19[640], 0x280uLL), a5 + 640 < a5))
  {
LABEL_16:
    __break(0x5519u);
  }

  return result;
}

uint64_t decode_envelope_indices(uint64_t a1, int a2, int a3, __int16 a4, unint64_t a5, unint64_t a6, unsigned __int16 a7, int a8)
{
  v12 = a7;
  v13 = a2;
  v14 = (a5 + 2 * a2);
  v16 = (v14 + 1) <= a6 && v14 <= v14 + 1 && v14 >= a5;
  v17 = v16;
  if (a7 - 1 > 1)
  {
    next_indice = get_next_indice(a1, 2);
    result = get_next_indice(a1, 5);
    if (!v17)
    {
      goto LABEL_191;
    }

    *v14 = result;
LABEL_49:
    v98 = 0;
    if (next_indice == 2)
    {
      v91 = v13 + 1;
      v97 = a5 + 2 * (v13 + 1);
      if (v97 >= a5)
      {
        v95 = (a3 - 1);
        if (v95 >= 1)
        {
          LOWORD(v59) = 0;
          v60 = (a5 + 2 * (v13 + 1));
          do
          {
            next_indice_1 = get_next_indice_1(a1);
            v62 = (get_next_indice_1(a1) != 0) | (2 * (next_indice_1 != 0));
            v63 = next_indice_1 ? 12 : 16;
            result = get_next_indice_1(a1);
            if (result && (next_indice_1 ? (v63 = 16) : (v63 = 12), (result = get_next_indice_1(a1), result) && ((v64 = get_next_indice_1(a1)) != 0 ? (v63 = 20) : (v63 = 8), result = get_next_indice_1(a1), result)))
            {
              result = get_next_indice_1(a1);
              v65 = v62 | 4;
              if (!result)
              {
                v65 = v62;
              }

              if (v64)
              {
                v65 |= 0x18u;
              }
            }

            else
            {
              v65 = v63 | v62;
            }

            if (v60 < v97 || (v60 + 1) > a6 || v60 > v60 + 1)
            {
              goto LABEL_191;
            }

            *v60 = v65;
            v59 = (v59 + 1);
            ++v60;
          }

          while (v59 < v95);
        }

        v66 = v91;
        if (a3 + a2 > v91)
        {
          v67 = 0;
          while (1)
          {
            v68 = (a5 + 2 * v66);
            v69 = v68 + 1;
            v70 = v68 < a5 || v69 > a6;
            if (v70 || v68 > v69)
            {
              break;
            }

            v72 = &huffsizn[*v68];
            v73 = v72 + 1;
            v74 = v72 < huffsizn || v73 > W_DTX_HO;
            if (v74 || v72 > v73)
            {
              break;
            }

            v67 += *v72;
            v98 = v67;
            if (a3 + a2 <= ++v66)
            {
              return v98;
            }
          }

          goto LABEL_191;
        }

        return v98;
      }

      goto LABEL_191;
    }

    if (next_indice != 1)
    {
      if (next_indice)
      {
        for (i = a2 + 1; a3 + a2 > i; ++i)
        {
          result = get_next_indice(a1, 5);
          v77 = (a5 + 2 * i);
          v78 = v77 + 1;
          if (v77 < a5 || v78 > a6 || v77 > v78)
          {
            goto LABEL_191;
          }

          *v77 = result;
        }

        return a4;
      }

      if (v14 > a6 || v14 < a5 || a3 < 0)
      {
        goto LABEL_191;
      }

      v33 = a3;
      goto LABEL_170;
    }

    v34 = v13 + 1;
    v35 = a5 + 2 * v34;
    if (v35 < a5)
    {
      goto LABEL_191;
    }

    v36 = (a3 - 1);
    if (v36 >= 1)
    {
      LOWORD(v37) = 0;
      v38 = (a5 + 2 * v34);
      do
      {
        v39 = 0;
        while (1)
        {
          result = get_next_indice_1(a1);
          if (!result)
          {
            break;
          }

          v16 = v39++ >= 0xA;
          if (v16)
          {
            v40 = 25;
            goto LABEL_71;
          }
        }

        if (v39 == 10)
        {
          v40 = 5;
        }

        else if (v39 == 9)
        {
          v40 = 6;
        }

        else
        {
          result = get_next_indice_1(a1);
          v40 = result ? v39 + 16 : 15 - v39;
        }

LABEL_71:
        if (v38 < v35 || (v38 + 1) > a6 || v38 > v38 + 1)
        {
          goto LABEL_191;
        }

        *v38 = v40;
        v37 = (v37 + 1);
        ++v38;
      }

      while (v37 < v36);
    }

    v41 = a3 + a2;
    if (a3 + a2 > v34)
    {
      v42 = 0;
      do
      {
        v43 = (a5 + 2 * v34);
        v44 = v43 + 1;
        v45 = v43 < a5 || v44 > a6;
        if (v45 || v43 > v44)
        {
          goto LABEL_191;
        }

        v47 = resize_huffsizn + *v43;
        v48 = v47 + 1;
        v49 = v47 < resize_huffsizn || v48 > huffsizn;
        if (v49 || v47 > v48)
        {
          goto LABEL_191;
        }

        v42 += *v47;
        v98 = v42;
        LOWORD(v34) = v34 + 1;
      }

      while (v41 > v34);
    }

    v51 = a2 + 2;
    if (v41 <= (a2 + 2))
    {
      return v98;
    }

    while (1)
    {
      v52 = (a5 + 2 * v51);
      v53 = v52 - 1;
      if ((v52 - 1) < a5 || v52 > a6 || v53 > v52)
      {
        goto LABEL_191;
      }

      v56 = *v53;
      if (v56 >= 18)
      {
        break;
      }

      if (v56 <= 12)
      {
        if ((v52 + 1) > a6 || v52 > v52 + 1)
        {
          goto LABEL_191;
        }

        v57 = *v52;
        if (v56 <= 10)
        {
          v58 = -3;
        }

        else
        {
          v58 = v56 - 13;
        }

        goto LABEL_112;
      }

LABEL_113:
      if (v41 <= ++v51)
      {
        return v98;
      }
    }

    if ((v52 + 1) > a6 || v52 > v52 + 1)
    {
      goto LABEL_191;
    }

    v57 = *v52;
    if (v56 >= 0x14)
    {
      v58 = 3;
    }

    else
    {
      v58 = v56 - 17;
    }

LABEL_112:
    *v52 = v57 - v58;
    goto LABEL_113;
  }

  next_indice = get_next_indice(a1, 1);
  result = get_next_indice(a1, 5);
  if ((v17 & 1) == 0)
  {
    goto LABEL_191;
  }

  *v14 = result;
  if (v12 != 2 || !a8)
  {
    goto LABEL_49;
  }

  v98 = 0;
  if (next_indice != 1)
  {
    if (a3 < 0)
    {
      goto LABEL_191;
    }

    v33 = a3;
LABEL_170:
    if ((a6 - v14) >> 1 >= v33)
    {
      hdecnrm_context(a1, a3, v14, &v98, &v99);
      return v98;
    }

    goto LABEL_191;
  }

  v94 = v13 + 1;
  v21 = (a5 + 2 * (v13 + 1));
  if (v21 >= a5)
  {
    v96 = (a3 - 1);
    if (v96 >= 1)
    {
      LOWORD(v22) = 0;
      v23 = v21;
      do
      {
        v24 = get_next_indice_1(a1);
        result = get_next_indice_1(a1);
        v25 = result != 0;
        v26 = (v24 != 0) | (2 * v25);
        v27 = 4 * v25;
        if (v24 || (v28 = result) == 0)
        {
          v30 = v27 - v26 + 15;
        }

        else
        {
          result = get_next_indice_1(a1);
          if (result)
          {
            v29 = v28 ? 11 : 15;
            v30 = v29 + v26;
          }

          else
          {
            v30 = v27 - v26 + 15;
            result = get_next_indice_1(a1);
            if (result)
            {
              v31 = 0;
              while (1)
              {
                result = get_next_indice_1(a1);
                if (!result)
                {
                  break;
                }

                v16 = v31++ >= 2;
                if (v16)
                {
                  v32 = -6;
LABEL_45:
                  v30 += v32;
                  goto LABEL_26;
                }
              }

              if (v31 == 1)
              {
                ++v30;
                goto LABEL_26;
              }

              if (!v31)
              {
                v32 = -5;
                goto LABEL_45;
              }

              result = get_next_indice_1(a1);
              if (result)
              {
                result = get_next_indice_1(a1);
                if (result)
                {
                  v32 = 4;
                }

                else
                {
                  v32 = 3;
                }

                goto LABEL_45;
              }

              v30 += 2;
            }
          }
        }

LABEL_26:
        if (v23 < v21 || (v23 + 1) > a6 || v23 > v23 + 1)
        {
          goto LABEL_191;
        }

        *v23 = v30;
        v22 = (v22 + 1);
        ++v23;
      }

      while (v22 < v96);
    }

    v81 = v94;
    if (a3 + a2 > v94)
    {
      v82 = 0;
      while (1)
      {
        v83 = (a5 + 2 * v81);
        v84 = v83 + 1;
        v85 = v83 < a5 || v84 > a6;
        if (v85 || v83 > v84)
        {
          break;
        }

        v87 = huffsizn_tran + *v83;
        v88 = v87 + 1;
        v89 = v87 < huffsizn_tran || v88 > resize_huffsizn;
        if (v89 || v87 > v88)
        {
          break;
        }

        v82 += *v87;
        v98 = v82;
        if (a3 + a2 <= ++v81)
        {
          return v98;
        }
      }

      goto LABEL_191;
    }

    return v98;
  }

LABEL_191:
  __break(0x5519u);
  return result;
}

uint64_t env_stability(__int16 *a1, unint64_t a2, int a3, __int16 *a4, unint64_t a5, __int16 *a6, unint64_t a7)
{
  result = 0;
  v11 = a3;
  v12 = a4;
  v13 = a1;
  do
  {
    if (v12 < a4 || (v12 + 1) > a5 || v12 > v12 + 1 || v13 < a1 || (v13 + 1) > a2 || v13 > v13 + 1)
    {
      goto LABEL_106;
    }

    v14 = *v12 - *v13;
    v15 = (*v12 - *v13);
    if (v14 < -32768)
    {
      v15 = -32768;
    }

    if (v14 < 0x8000)
    {
      v16 = v15;
    }

    else
    {
      v16 = 0x7FFF;
    }

    v17 = result + v16 * v16;
    if ((v17 ^ result) > -1 || result < 0)
    {
      result = v17;
    }

    else
    {
      result = 0x7FFFFFFFLL;
    }

    *v12++ = *v13++;
    --v11;
  }

  while (v11);
  if (a3 == 26)
  {
    v19 = 20165;
  }

  else
  {
    v19 = 19418;
  }

  if (!result)
  {
    goto LABEL_30;
  }

  if (result == -1)
  {
    v20 = 31;
    goto LABEL_31;
  }

  v21 = result ^ (result >> 31);
  if (v21 <= 0x3FFFFFFF)
  {
    v20 = 0;
    do
    {
      v22 = v21 >> 29;
      v21 *= 2;
      ++v20;
    }

    while (!v22);
  }

  else
  {
LABEL_30:
    v20 = 0;
  }

LABEL_31:
  v23 = L_shl(result, v20);
  v24 = Mpy_32_16_1(v23, v19);
  if (v24 >= 1)
  {
    if (v24 > 0x3FFFFFFF)
    {
      v25 = 0;
    }

    else
    {
      v26 = 0;
      v27 = v24;
      do
      {
        v28 = v27 >> 29;
        v27 *= 2;
        ++v26;
      }

      while (!v28);
      v25 = v26 & 0x7FFE;
    }

    result = L_shl(v24, v25);
    v29 = result >> 9;
    v30 = (result >> 9) >> 1;
    if ((result & 0x1FFFE00) == 0)
    {
      v30 = 0;
    }

    v31 = v29 - 1081344;
    if (v29 < 0 && (v31 ^ (result >> 9)) < 0)
    {
      v32 = 0xFFFFFFFFFFFF0000;
    }

    else
    {
      v33 = ((v29 - 0x100000) ^ v31) > -1 || v29 < 1081344;
      v32 = (((v29 - 0x100000) >> 16) << 48) >> 47;
      if (!v33)
      {
        v32 = 65534;
      }
    }

    v34 = (sqrt_table_11487 + v32);
    if (v34 < sqrt_table_11487)
    {
      goto LABEL_106;
    }

    v35 = (v34 + 1);
    if (v34 + 1 > SineTable512_fx || v34 > v35 || v34 + 2 > SineTable512_fx || v35 > (v34 + 2))
    {
      goto LABEL_106;
    }

    v36 = *v34;
    v37 = v36 << 16;
    v38 = v36 - v34[1];
    if (v38 >= -32768)
    {
      v39 = v38;
    }

    else
    {
      v39 = -32768;
    }

    if (v38 < 0x8000)
    {
      v40 = v39;
    }

    else
    {
      v40 = 0x7FFF;
    }

    v41 = v40 * v30;
    result = (v37 - 2 * v41);
    if ((v37 ^ (2 * v41)) < 0 && ((result ^ v37) & 0x80000000) != 0)
    {
      result = (v36 >> 15) ^ 0x7FFFFFFFu;
    }
  }

  else
  {
    v25 = 0;
    result = 0;
  }

  v42 = v25 + v20;
  if (v42 < 0x8000 && v42 <= 32732)
  {
    v43 = v42 + 35;
    if ((v43 & 1) == 0)
    {
      goto LABEL_66;
    }
  }

  else
  {
    v43 = 0x7FFF;
  }

  result = 46340 * (result >> 16) + ((23170 * result) >> 15);
LABEL_66:
  if ((a6 + 1) > a7 || a6 + 1 < a6)
  {
    goto LABEL_106;
  }

  result = L_shl(result, 26 - (v43 >> 1));
  v44 = ((result + 0x8000) ^ result) > -1 || result < 0;
  v45 = 26214 * ((result + 0x8000) >> 16);
  if (!v44)
  {
    v45 = 858954138;
  }

  v46 = 58982 * *a6;
  v47 = v46 + v45;
  v48 = v46 ^ v45;
  v49 = (v47 ^ v45) > -1 || v48 < 0;
  v50 = (v45 >> 31) ^ 0x7FFFFFFF;
  if (v49)
  {
    v50 = v47;
  }

  v51 = ((v50 + 0x8000) ^ v50) > -1 || v50 < 0;
  v52 = (v50 + 0x8000) >> 16;
  if (!v51)
  {
    LOWORD(v52) = 0x7FFF;
  }

  *a6 = v52;
  v53 = v50 - 0x40000000;
  v54 = 2 * v50;
  v55 = (v50 >> 31) ^ 0x7FFFFFFF;
  if (v53 < 0)
  {
    v55 = v54;
  }

  v56 = ((v55 + 0x8000) ^ v55) > -1 || v55 < 0;
  v57 = (v55 + 0x8000) >> 16;
  if (!v56)
  {
    LOWORD(v57) = 0x7FFF;
  }

  if (v57 < -11700)
  {
    goto LABEL_94;
  }

  v58 = (v57 - 21068);
  if (v58 < 0)
  {
    v58 = -v58;
  }

  if ((v57 - 21068) == 0x8000)
  {
LABEL_94:
    LOWORD(v59) = 32345;
  }

  else
  {
    v59 = (v58 - 422);
    if (v59 < 0)
    {
      v61 = 0;
      goto LABEL_98;
    }
  }

  v60 = (((v59 - ((13883 * v59) >> 16)) >> 1) + ((13883 * v59) >> 16)) >> 9;
  if (v60 >= 8)
  {
    v60 = 8;
  }

  v61 = v60 + 1;
LABEL_98:
  v62 = &stab_trans_fx[2 * v61];
  if (v62 < stab_trans_fx || v62 + 2 > env_stab_tp || v62 > v62 + 2)
  {
LABEL_106:
    __break(0x5519u);
  }

  return result;
}

void *fill_spectrum(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, float *a9, unint64_t a10, __int16 a11, char a12, __int16 a13, float *a14, float *a15, _WORD *a16, __int16 a17, __int16 a18, unsigned __int16 a19, float *a20, unint64_t a21, uint64_t a22, float *a23, unint64_t a24, __int16 *a25, float *a26, __int16 *a27, unint64_t a28, __int16 a29, unint64_t a30, unint64_t a31, __int16 a32, unint64_t a33, float *a34, __int16 a35, unint64_t a36, unint64_t a37, unint64_t a38, unint64_t a39, unint64_t a40, unint64_t a41, __int16 *a42, __int16 a43, __int16 a44, __int16 a45)
{
  v46 = MEMORY[0x1EEE9AC00](a1);
  v48 = v47;
  v50 = v49;
  v1143 = v51;
  v1155 = v52;
  v1156 = v53;
  v55 = v54;
  v57 = v56;
  v58 = v46;
  v1160 = a31;
  v1145 = a30;
  v59 = a18;
  *v1184 = *MEMORY[0x1E69E9840];
  v60 = a16;
  v1144 = a15;
  v61 = a14;
  v1147 = a13;
  v62 = a38;
  v63 = a39;
  v1157 = a41;
  memset(v1178, 255, sizeof(v1178));
  memset(v1177, 255, sizeof(v1177));
  *&v64 = -1;
  *(&v64 + 1) = -1;
  v1176[10] = v64;
  v1176[9] = v64;
  v1176[8] = v64;
  v1176[7] = v64;
  v1176[6] = v64;
  v1176[5] = v64;
  v1176[4] = v64;
  v1176[3] = v64;
  v1176[2] = v64;
  v1176[1] = v64;
  v1176[0] = v64;
  v1174 = -1431655766;
  *&v64 = 0xAAAAAAAAAAAAAAAALL;
  *(&v64 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v1173[17] = v64;
  v1173[16] = v64;
  v1173[15] = v64;
  v1173[14] = v64;
  v1173[13] = v64;
  v1173[12] = v64;
  v1173[11] = v64;
  v1173[10] = v64;
  v1173[9] = v64;
  v1173[8] = v64;
  v1173[7] = v64;
  v1173[6] = v64;
  v1173[5] = v64;
  v1173[4] = v64;
  v1173[3] = v64;
  v1173[2] = v64;
  v1173[1] = v64;
  v1173[0] = v64;
  v1172[6] = v64;
  v1172[5] = v64;
  v1172[4] = v64;
  v1172[3] = v64;
  v1172[2] = v64;
  v1172[1] = v64;
  v1172[0] = v64;
  memset(v1171, 170, sizeof(v1171));
  *&v65 = -1;
  *(&v65 + 1) = -1;
  v1170[4] = v65;
  v1170[3] = v65;
  v1170[2] = v65;
  v1170[1] = v65;
  v1170[0] = v65;
  v1169 = v65;
  v1168 = v65;
  v1167 = v65;
  v1166 = v65;
  v1165 = v65;
  v1164 = v65;
  memset(v1163, 255, sizeof(v1163));
  memset(__C, 255, sizeof(__C));
  v67 = 0;
  v68 = v1175;
  do
  {
    v69 = v1172 + v67 + 2;
    if ((v1172 + v67) < v1172 || v69 > v1175 || v1172 + v67 > v69)
    {
      goto LABEL_2048;
    }

    *(v1172 + v67) = 0;
    v67 += 2;
  }

  while (v67 != 404);
  for (i = 0; i != 1920; i += 2)
  {
    v73 = &v1171[i + 2];
    if (&v1171[i] < v1171 || v73 > v1172 || &v1171[i] > v73)
    {
      goto LABEL_2048;
    }

    *&v1171[i] = 0;
  }

  v1153 = a39;
  v1154 = a38;
  v62 = v1179;
  LODWORD(v1179[0]) = 1065353216;
  v1148 = a44;
  vDSP_vfill(v1179, v1176, 1, a44);
  LODWORD(v1179[0]) = 0;
  vDSP_vfill(v1179, __C, 1, 0x3C0uLL);
  v76 = a19;
  if (a19 == 1)
  {
    LODWORD(v1146) = 0;
    v59 = (a44 - 1);
    v1141 = 23;
    v62 = a38;
    v45 = v1155;
    v63 = a39;
    v66 = v1156;
LABEL_52:
    if (a13 == 640)
    {
      v1179[0] = -1;
      v1179[1] = -1;
      if (v1143)
      {
        v87 = 0;
        v88 = 0.0;
        v89 = subf_norm_groups;
        do
        {
          v90 = &subf_norm_groups[11 * v87];
          v91 = v89;
          v92 = 9;
          v93 = 0.0;
          do
          {
            if (v91 < v90 || v91 + 1 > v90 + 11 || v91 > v91 + 1)
            {
              goto LABEL_2048;
            }

            v94 = (v50 + 2 * *v91);
            v95 = v94 + 1;
            v96 = v94 < v50 || v95 > v48;
            if (v96 || v94 > v95)
            {
              goto LABEL_2048;
            }

            v98 = &dicn[*v94];
            v99 = v98 + 1;
            v100 = v98 < dicn || v99 > band_len_harm;
            if (v100 || v98 > v99)
            {
              goto LABEL_2048;
            }

            v93 = *v98 + v93;
            *(v1179 + v87) = v93;
            ++v91;
            --v92;
          }

          while (v92);
          v102 = v93 / 9.0;
          *(v1179 + v87) = v102;
          v88 = v88 + v102;
          ++v87;
          v89 += 11;
        }

        while (v87 != 4);
        v76 = a19;
        if (v88 > 400.0)
        {
          v103 = v1179 + 1;
          v104 = 0.0;
          v105 = 3;
          do
          {
            v106 = *(v103 - 1);
            if (((*v103 - v106) / *a15) > v104)
            {
              v104 = (*v103 - v106) / *a15;
            }

            ++v103;
            --v105;
          }

          while (v105);
          if (v104 > 5.0)
          {
            v1140 = 0;
            LOWORD(v85) = 150;
LABEL_103:
            *a14 = v85;
            goto LABEL_105;
          }
        }
      }

      else
      {
        v108 = 0.0;
        v109 = 27;
        v110 = v50;
        do
        {
          if (v110 < v50 || (v110 + 1) > v48 || v110 > v110 + 1)
          {
            goto LABEL_2048;
          }

          v111 = &dicn[*v110];
          v112 = v111 + 1;
          v113 = v111 < dicn || v112 > band_len_harm;
          if (v113 || v111 > v112)
          {
            goto LABEL_2048;
          }

          v108 = v108 + *v111;
          ++v110;
          --v109;
        }

        while (v109);
        v115 = v108 / 27.0;
        v76 = a19;
        if (v115 > 100.0)
        {
          *a15 = (v115 * 0.07) + (*a15 * 0.93);
        }
      }

      v85 = *a14;
      v86 = v85 - 1;
      if (v85 >= 1)
      {
        v1140 = 0;
        goto LABEL_102;
      }

      v1140 = 0;
      goto LABEL_105;
    }

    v1140 = 0;
    goto LABEL_83;
  }

  v45 = v1155;
  v66 = v1156;
  if ((a19 & 0xFFFE) == 4)
  {
    LODWORD(v1146) = 0;
    if (a45 - 1 <= v59)
    {
      v59 = v59;
    }

    else
    {
      v59 = (a45 - 1);
    }

    v1141 = 23;
    v62 = a38;
    v63 = a39;
    goto LABEL_52;
  }

  if (a19 != 3)
  {
    v62 = a38;
    v63 = a39;
    if (a19 == 2)
    {
      v77 = 24;
      if (a22 == 24400)
      {
        v78 = 21;
      }

      else
      {
        v78 = 24;
      }

      if (a22 == 24400)
      {
        v77 = 21;
      }

      v1141 = v77;
      if (v78 <= v59)
      {
        v59 = v59;
      }

      else
      {
        v59 = v78;
      }

      LODWORD(v1146) = 1;
    }

    else
    {
      LODWORD(v1146) = 0;
      v1141 = 23;
    }

    goto LABEL_52;
  }

  v79 = (a40 + 2 * a18);
  v63 = a39;
  if (v79 < a40 || (v79 + 1) > a41 || v79 > v79 + 1)
  {
    goto LABEL_2048;
  }

  v80 = *v79;
  v1140 = v80;
  if (a13 == 640)
  {
    v62 = a38;
    v81 = 0.0;
    if (v80 >= 1)
    {
      v82 = v58;
      do
      {
        if (v82 < v58 || (v82 + 1) > v57 || v82 > v82 + 1)
        {
          goto LABEL_2048;
        }

        v83 = *v82++;
        v81 = v81 + (v83 * v83);
        --v80;
      }

      while (v80);
    }

    v84 = sqrtf(v81 / v1140);
    if (v84 > 100.0)
    {
      *a15 = (v84 * 0.07) + (*a15 * 0.93);
    }

    v85 = *a14;
    v86 = v85 - 1;
    v76 = a19;
    if (v85 >= 1)
    {
      LODWORD(v1146) = 0;
      v1141 = 23;
LABEL_102:
      LOWORD(v85) = v86;
      goto LABEL_103;
    }

    LODWORD(v1146) = 0;
    v1141 = 23;
LABEL_105:
    if ((v76 - 4) <= 0xFFFFFFFD && !v85)
    {
      env_adj(a30, a31, 640, v59, v1176, v1177, a36, a37, v55);
      v76 = a19;
      v45 = v1155;
      v66 = v1156;
    }

    if (v55 >= 0.5 || *a14)
    {
      v1145 = 0;
      v107 = v76 == 3;
      v1144 = 1;
    }

    else
    {
      v1145 = 0;
      v1144 = 1;
      v107 = 1;
    }

    goto LABEL_111;
  }

  LODWORD(v1146) = 0;
  v1141 = 23;
  v62 = a38;
LABEL_83:
  if (a13 == 320)
  {
    env_adj(a30, a31, 320, v59, v1176, v1177, a36, a37, v55);
    v76 = a19;
    v45 = v1155;
    v66 = v1156;
    v1144 = 0;
    v107 = 0;
    v1145 = 1;
  }

  else
  {
    v1144 = 0;
    v1145 = 0;
    v107 = 0;
  }

LABEL_111:
  v61 = v1163;
  v1160 = a16;
  if (v76 == 3)
  {
    if (v1146)
    {
      v62 = v107;
      LODWORD(v68) = 0;
      goto LABEL_268;
    }

    v1150 = v59;
    v62 = v1179;
    memset(v1179, 255, 0x328uLL);
    bzero(v1183, 0x328uLL);
    v1180[0] = 64;
    if (v57 < v58)
    {
      goto LABEL_2048;
    }

    if (v57 - v58 <= 0x327)
    {
      goto LABEL_2048;
    }

    v60 = &v1164;
    v59 = &v1179[101];
    v62 = v1179;
    memmove(v1179, v58, 0x328uLL);
    calc_normal_length(3, v58, v57, 3, -1, v1180, a42);
    v63 = v1183;
    hq_swb_harmonic_calc_norm_envelop(v1179, &v1179[101], v1183, &v1183[808], v1180[0]);
    for (j = 0; j != 808; j += 4)
    {
      *(v1179 + j) = *(v1179 + j) / *&v1183[j];
    }

    v166 = (a40 + 2 * v1150);
    if (v166 < a40)
    {
      goto LABEL_2048;
    }

    if ((v166 + 1) > a41)
    {
      goto LABEL_2048;
    }

    if (v166 > v166 + 1)
    {
      goto LABEL_2048;
    }

    v167 = a40 + 2 * a44;
    v168 = (v167 - 2);
    if (v167 - 2 < a40 || v167 > a41 || v168 > v167)
    {
      goto LABEL_2048;
    }

    v169 = *v166;
    v170 = *v168;
    if (a29 >= 1)
    {
      v171 = a29;
      v172 = a27;
      do
      {
        if (v172 < a27 || (v172 + 1) > a28 || v172 > v172 + 1)
        {
          goto LABEL_2048;
        }

        v173 = *v172;
        if (v173 <= 201)
        {
          v174 = v1172 + v173;
          v175 = v174 + 1;
          if (v174 < v1172 || v175 > v1175 || v174 > v175)
          {
            goto LABEL_2048;
          }

          *v174 = 1;
        }

        ++v172;
        --v171;
      }

      while (v171);
    }

    v178 = v1163 + 4 * v170 + -4 * v169;
    v179 = v1173 + 4;
    v180 = &v1174;
    v181 = 202;
    do
    {
      v182 = v181--;
      if (!v181)
      {
        v185 = 181;
        goto LABEL_922;
      }

      if (v180 < v1172 || v180 + 1 > v1175 || v180 > v180 + 1)
      {
        goto LABEL_2048;
      }

      v183 = *v180--;
    }

    while (v183 != 1);
    v184 = (v182 - 2);
    if (v184 <= 180)
    {
      v184 = 180;
    }

    if (v181 <= 200)
    {
      v185 = v184 + 1;
LABEL_922:
      v535 = 201;
      do
      {
        v536 = v1179 + v535;
        v537 = v536 + 1;
        if (v536 < v1179 || v537 > &v1179[101] || v536 > v537)
        {
          goto LABEL_2048;
        }

        *v536 = 0;
        --v535;
      }

      while (v185 < v535);
    }

    if (v1163 < v178)
    {
      v540 = &v1171[2 * v169];
      v541 = &v1179[30];
      v542 = v1163;
      do
      {
        if (v541 >= &v1179[101])
        {
          v547 = v179;
          v548 = v540;
        }

        else
        {
          v543 = 0;
          do
          {
            v544 = (v541 + v543);
            if ((v541 + v543) < v1179)
            {
              goto LABEL_2048;
            }

            v545 = v544 + 1;
            if (v544 + 1 > &v1179[101])
            {
              goto LABEL_2048;
            }

            if (v544 > v545)
            {
              goto LABEL_2048;
            }

            v546 = &v542[v543];
            v66 = &v542[v543 + 4];
            if (v66 > &v1164)
            {
              goto LABEL_2048;
            }

            if (v546 > v66)
            {
              goto LABEL_2048;
            }

            if (&v542[v543] < v1163)
            {
              goto LABEL_2048;
            }

            *v546 = *v544;
            if (v179 < v1172)
            {
              goto LABEL_2048;
            }

            v547 = v179 + 1;
            if (v179 + 1 > v1175)
            {
              goto LABEL_2048;
            }

            if (v179 > v547)
            {
              goto LABEL_2048;
            }

            if (v540 < v1171)
            {
              goto LABEL_2048;
            }

            v548 = v540 + 1;
            if (v540 + 1 > v1172 || v540 > v548)
            {
              goto LABEL_2048;
            }

            *v540 = *v179;
            v543 += 4;
            if (v66 >= v178)
            {
              break;
            }

            ++v540;
            ++v179;
          }

          while (v545 < &v1179[101]);
          v541 = (v541 + v543);
          v542 += v543;
        }

        if (v542 >= v178 || (v541 - 4) < &v1179[30])
        {
          v540 = v548;
          v551 = v542;
          v550 = v541;
        }

        else
        {
          v549 = v547 - 1;
          do
          {
            if (v541 > &v1179[101])
            {
              goto LABEL_2048;
            }

            v550 = v541 - 1;
            if (v541 < 4)
            {
              goto LABEL_2048;
            }

            v551 = v542 + 4;
            if (v542 + 4 > &v1164)
            {
              goto LABEL_2048;
            }

            if (v542 > v551)
            {
              goto LABEL_2048;
            }

            if (v542 < v1163)
            {
              goto LABEL_2048;
            }

            *v542 = *v550;
            if (v549 < v1172)
            {
              goto LABEL_2048;
            }

            if (v549 + 1 > v1175)
            {
              goto LABEL_2048;
            }

            if (v549 > v549 + 1)
            {
              goto LABEL_2048;
            }

            if (v548 < v1171)
            {
              goto LABEL_2048;
            }

            v540 = v548 + 1;
            if (v548 + 1 > v1172 || v548 > v540)
            {
              goto LABEL_2048;
            }

            v552 = *v549--;
            *v548 = v552;
            if (v551 >= v178)
            {
              break;
            }

            v553 = v541 - 1;
            v541 = (v541 - 4);
            v542 += 4;
            ++v548;
          }

          while (v553 >= &v1179[30]);
          v547 = v549 + 1;
        }

        v541 = v550;
        v542 = v551;
        v179 = v547;
      }

      while (v551 < v178);
    }

    v1147 = 0;
    LOWORD(v59) = v1150;
    v521 = v57 - v58;
    goto LABEL_971;
  }

  if ((v59 & 0x8000) != 0)
  {
    LODWORD(v68) = 0;
    goto LABEL_266;
  }

  LOWORD(v116) = 0;
  LODWORD(v68) = 0;
  do
  {
    v117 = (v45 + 2 * v116);
    v118 = v117 + 1;
    if (v117 < v45 || v118 > v66 || v117 > v118)
    {
      goto LABEL_2048;
    }

    v116 = v116;
    if (!*v117)
    {
      goto LABEL_195;
    }

    v121 = (v62 + 2 * v116);
    v123 = (v121 + 1) <= v63 && v121 <= v121 + 1 && v121 >= v62;
    v124 = v123;
    if (!v107)
    {
      v533 = v124 == 0;
      v143 = (a40 + 2 * v116);
      v144 = v143 + 1;
      if (v533 || v143 < a40 || v144 > a41 || v143 > v144)
      {
        goto LABEL_2048;
      }

      v148 = *v121;
      v149 = *v143;
      v150 = v148 < v149;
      if (v148 > v149)
      {
        v149 = v148;
      }

      if (v150)
      {
        v151 = v149 - v148;
        v152 = &v58[v148];
        do
        {
          if (v152 < v58)
          {
            goto LABEL_2048;
          }

          if ((v152 + 1) > v57)
          {
            goto LABEL_2048;
          }

          if (v152 > v152 + 1)
          {
            goto LABEL_2048;
          }

          v153 = &v1178[4 * v68];
          if (v153 < v1178 || v153 + 1 > v1179 || v153 > v153 + 1)
          {
            goto LABEL_2048;
          }

          v154 = *v152++;
          *v153 = v154;
          LODWORD(v68) = v68 + 1;
          --v151;
        }

        while (v151);
      }

      goto LABEL_195;
    }

    if (!v124)
    {
      goto LABEL_2048;
    }

    v125 = (a36 + 2 * v116);
    if (v125 < a36 || (v125 + 1) > a37 || v125 > v125 + 1)
    {
      goto LABEL_2048;
    }

    v126 = *v125;
    if (v126 < 8)
    {
      goto LABEL_195;
    }

    v127 = 0;
    v128 = *v121;
    v129 = (v126 + ((v126 >> 28) & 7));
    v130 = (v129 >> 3) & ~(v129 >> 31);
    do
    {
      v131 = v128 + 8 * v127;
      v132 = v128 + 8 + 8 * v127;
      if (v132 <= v131)
      {
        LODWORD(v68) = v68 - 8;
        goto LABEL_171;
      }

      v66 = 0;
      do
      {
        v133 = &v58[v131];
        v134 = v133 + 1;
        if (v133 < v58 || v134 > v57 || v133 > v134)
        {
          goto LABEL_2048;
        }

        v137 = v68;
        v138 = *v133;
        v139 = &v1177[4 * v68];
        if (v138 > 0.0)
        {
          if (v139 < v1177 || v139 + 1 > v1178 || v139 > v139 + 1)
          {
            goto LABEL_2048;
          }

          *v139 = 1065353216;
          goto LABEL_164;
        }

        v142 = v139 + 1 <= v1178 && v139 <= v139 + 1 && v139 >= v1177;
        if (v138 < 0.0)
        {
          if (!v142)
          {
            goto LABEL_2048;
          }

          *v139 = -1082130432;
LABEL_164:
          v66 = (v66 + 1);
          goto LABEL_167;
        }

        if (!v142)
        {
          goto LABEL_2048;
        }

        *v139 = 0;
LABEL_167:
        LODWORD(v68) = v68 + 1;
        ++v131;
      }

      while (v132 > v131);
      if (v66 <= 1)
      {
        LODWORD(v68) = v137 - 7;
      }

LABEL_171:
      ++v127;
    }

    while (v127 != v130);
LABEL_195:
    LODWORD(v116) = (v116 + 1);
    v66 = v1156;
  }

  while (v116 <= v59);
  if (v68 > 0 && v107)
  {
    v156 = 0;
    v157 = &v1177[4 * v68 - 4];
    do
    {
      v158 = &v1177[v156];
      v159 = &v1177[v156 + 4];
      if (&v1177[v156] < v1177 || v159 > v1178 || v158 > v159)
      {
        goto LABEL_2048;
      }

      v162 = *v158;
      if (*v158 == 0.0)
      {
        if (v157 < v1177)
        {
          goto LABEL_2048;
        }

        if (v157 + 1 > v1178)
        {
          goto LABEL_2048;
        }

        if (v157 > v157 + 1)
        {
          goto LABEL_2048;
        }

        v163 = &v1178[v156];
        if (&v1178[v156] < v1178 || v163 + 1 > v1179 || v163 > v163 + 1)
        {
          goto LABEL_2048;
        }

        v164 = *v157;
      }

      else
      {
        if (v157 < v1177)
        {
          goto LABEL_2048;
        }

        if (v157 + 1 > v1178)
        {
          goto LABEL_2048;
        }

        if (v157 > v157 + 1)
        {
          goto LABEL_2048;
        }

        v163 = &v1178[v156];
        if (&v1178[v156] < v1178 || v163 + 1 > v1179 || v163 > v163 + 1)
        {
          goto LABEL_2048;
        }

        if (v162 >= 0.0)
        {
          v164 = (*v157 * *v157) + (v162 * v162);
        }

        else
        {
          v164 = -((*v157 * *v157) + (v162 * v162));
        }
      }

      *v163 = v164;
      v156 += 4;
      --v157;
    }

    while (4 * v68 != v156);
    v66 = v1156;
  }

  v76 = a19;
LABEL_266:
  if (v1146)
  {
    v62 = v107;
LABEL_268:
    v60 = v1179;
    memset(v1179, 255, 0x328uLL);
    memset(v1183, 255, 0x328uLL);
    v1180[0] = 64;
    v63 = v59;
    if ((v59 & 0x8000) == 0)
    {
      LOWORD(v186) = 0;
      do
      {
        v187 = (v1155 + 2 * v186);
        v188 = v187 + 1;
        if (v187 < v1155 || v188 > v1156 || v187 > v188)
        {
          goto LABEL_2048;
        }

        v186 = v186;
        if (*v187)
        {
          v191 = (v50 + 2 * v186);
          if (v191 < v50 || (v191 + 1) > v48 || v191 > v191 + 1)
          {
            goto LABEL_2048;
          }

          v192 = &dicn[*v191];
          v193 = v192 + 1;
          v194 = v192 < dicn || v193 > band_len_harm;
          if (v194 || v192 > v193)
          {
            goto LABEL_2048;
          }

          v196 = (a38 + 2 * v186);
          if (v196 < a38)
          {
            goto LABEL_2048;
          }

          if ((v196 + 1) > a39)
          {
            goto LABEL_2048;
          }

          if (v196 > v196 + 1)
          {
            goto LABEL_2048;
          }

          v197 = (a40 + 2 * v186);
          if (v197 < a40 || (v197 + 1) > a41 || v197 > v197 + 1)
          {
            goto LABEL_2048;
          }

          v198 = *v196;
          v199 = *v197;
          v200 = v198 < v199;
          if (v198 > v199)
          {
            v199 = v198;
          }

          if (v200)
          {
            v201 = *v192;
            v202 = v199 - v198;
            v203 = v198;
            v204 = __C;
            v205 = v58;
            do
            {
              v206 = &v205[v203];
              v207 = &v205[v203 + 1];
              v209 = &v205[v203] < v58 || v207 > v57 || v206 > v207;
              v210 = (v204 + v203 * 4);
              v211 = v204 + v203 * 4 + 4;
              if (v209 || v210 < __C || v211 > v1163 || v210 > v211)
              {
                goto LABEL_2048;
              }

              *v210 = v201 * *v206;
              v204 = (v204 + 4);
              ++v205;
              --v202;
            }

            while (v202);
          }
        }

        else
        {
          v215 = (a38 + 2 * v186);
          if (v215 < a38)
          {
            goto LABEL_2048;
          }

          if ((v215 + 1) > a39)
          {
            goto LABEL_2048;
          }

          if (v215 > v215 + 1)
          {
            goto LABEL_2048;
          }

          v216 = (a40 + 2 * v186);
          if (v216 < a40 || (v216 + 1) > a41 || v216 > v216 + 1)
          {
            goto LABEL_2048;
          }

          v217 = *v215;
          v218 = *v216;
          v219 = v217 < v218;
          if (v217 > v218)
          {
            v218 = v217;
          }

          if (v219)
          {
            v220 = v217;
            v221 = v218 - v217;
            v222 = __C + v220;
            do
            {
              v223 = v222 + 1;
              if (v222 < __C || v223 > v1163 || v222 > v223)
              {
                goto LABEL_2048;
              }

              *v222++ = 0;
              --v221;
            }

            while (v221);
          }
        }

        LODWORD(v186) = (v186 + 1);
      }

      while (v186 <= v59);
    }

    v1139 = v62;
    v62 = &v1164;
    v59 = &v1179[101];
    memcpy(v1179, __C, 0x328uLL);
    calc_normal_length(3, __C, v1163, 2, -1, v1180, a42);
    hq_swb_harmonic_calc_norm_envelop(v1179, &v1179[101], v1183, &v1183[808], v1180[0]);
    for (k = 0; k != 808; k += 4)
    {
      *(v1179 + k) = *(v1179 + k) / *&v1183[k];
    }

    v227 = a40 + 2 * a44;
    v228 = (v227 - 2);
    v45 = v1155;
    v66 = v1156;
    LODWORD(v107) = v1139;
    if (v227 - 2 < a40)
    {
      goto LABEL_2048;
    }

    if (v227 > a41)
    {
      goto LABEL_2048;
    }

    if (v228 > v227)
    {
      goto LABEL_2048;
    }

    v229 = (a40 + 2 * v63);
    if (v229 < a40)
    {
      goto LABEL_2048;
    }

    if ((v229 + 1) > a41)
    {
      goto LABEL_2048;
    }

    if (v229 > v229 + 1)
    {
      goto LABEL_2048;
    }

    v230 = (a40 + 2 * v1141);
    if (v230 < a40 || (v230 + 1) > a41 || v230 > v230 + 1)
    {
      goto LABEL_2048;
    }

    v231 = v1163 + 4 * *v228;
    v232 = *v229;
    v233 = *v230;
    v234 = v232 - v233;
    if (v232 - v233 >= 143)
    {
      v233 = v232;
    }

    v235 = v1163 + 4 * v233;
    if (v235 < v231)
    {
      if (v234 >= 143)
      {
        v236 = &v1179[100] + 4;
      }

      else
      {
        v236 = &v1179[30];
      }

      do
      {
        do
        {
          v237 = v236;
          v238 = v235;
          if (v236 >= &v1179[101])
          {
            break;
          }

          v236 += 4;
          v240 = v237 < v1179 || v236 > &v1179[101] || v237 > v236;
          v235 += 4;
          if (v240 || v238 < v1163 || v235 > &v1164 || v238 > v235)
          {
            goto LABEL_2048;
          }

          *v238 = *v237;
        }

        while (v235 < v231);
        if (v235 < v231)
        {
          v244 = v236 - 4;
          v245 = v235;
          if (v236 - 4 >= &v1179[30])
          {
            do
            {
              v246 = v244 + 4 > &v1179[101] || v244 > v244 + 4;
              v235 = v245 + 4;
              if (v246 || v245 < v1163 || v235 > &v1164 || v245 > v235)
              {
                goto LABEL_2048;
              }

              v250 = *v244;
              v244 -= 4;
              *v245 = v250;
              if (v235 >= v231)
              {
                break;
              }

              v245 += 4;
            }

            while (v244 >= &v1179[30]);
            v236 = v244 + 4;
          }
        }
      }

      while (v235 < v231);
    }

    v60 = a16;
    v62 = a38;
    LOWORD(v59) = v63;
    v63 = a39;
    v76 = a19;
  }

  else
  {
    LODWORD(v1146) = 0;
  }

  if (v76 != 3 && v68 >= 1)
  {
    memset(&v1179[4], 0, 224);
    v251 = (a22 - 24400) < 0x1DB1 && a13 < 640;
    memset(v1179, 0, 32);
    if (!v251 && (v59 & 0x8000) == 0)
    {
      LOWORD(v252) = 0;
      v253 = 0;
      do
      {
        v254 = (v45 + 2 * v252);
        v255 = v254 + 1;
        if (v254 < v45 || v255 > v66 || v254 > v255)
        {
          goto LABEL_2048;
        }

        v252 = v252;
        if (*v254)
        {
          goto LABEL_409;
        }

        if (!v107)
        {
          v275 = (v62 + 2 * v252);
          if (v275 < v62)
          {
            goto LABEL_2048;
          }

          if ((v275 + 1) > v63)
          {
            goto LABEL_2048;
          }

          if (v275 > v275 + 1)
          {
            goto LABEL_2048;
          }

          v276 = (a40 + 2 * v252);
          if (v276 < a40 || (v276 + 1) > a41 || v276 > v276 + 1)
          {
            goto LABEL_2048;
          }

          v277 = *v275;
          v278 = *v276;
          v279 = v277 < v278;
          if (v277 > v278)
          {
            v278 = v277;
          }

          if (v279)
          {
            v280 = v277;
            v281 = v278 - v277;
            v282 = &v58[v280];
            do
            {
              v283 = &v1178[4 * v253];
              v284 = v283 + 1;
              v286 = v283 < v1178 || v284 > v1179 || v283 > v284;
              v287 = v282 + 1;
              if (v286 || v282 < v58 || v287 > v57 || v282 > v287)
              {
                goto LABEL_2048;
              }

              *v282++ = *v283;
              if ((v253 + 1) < v68)
              {
                ++v253;
              }

              else
              {
                v253 = 0;
              }

              --v281;
            }

            while (v281);
          }

          goto LABEL_409;
        }

        v258 = (a36 + 2 * v252);
        v261 = (v258 + 1) <= a37 && v258 <= v258 + 1 && v258 >= a36;
        if (v252 >= 20)
        {
          if (!v261)
          {
            goto LABEL_2048;
          }

          v262 = *v258;
          if (v262 >= 1)
          {
            v291 = v262 & ~(v262 >> 31);
            v264 = 0.0;
            v292 = v1179;
            do
            {
              v293 = &v1178[4 * v253];
              v294 = v293 + 1;
              v296 = v293 < v1178 || v294 > v1179 || v293 > v294;
              v297 = v292 + 1;
              if (v296 || v292 < v1179 || v297 > &v1179[32] || v292 > v297)
              {
                goto LABEL_2048;
              }

              v301 = *v293;
              *v292++ = *v293;
              v264 = v264 + (v301 * v301);
              if ((v253 + 1) < v68)
              {
                ++v253;
              }

              else
              {
                v253 = 0;
              }

              --v291;
            }

            while (v291);
            goto LABEL_503;
          }
        }

        else
        {
          if (!v261)
          {
            goto LABEL_2048;
          }

          v262 = *v258;
          if (v262 >= 1)
          {
            v263 = v262 & ~(v262 >> 31);
            v264 = 0.0;
            v265 = v1179;
            do
            {
              v266 = &v1177[4 * v253];
              v267 = v266 + 1;
              v269 = v266 < v1177 || v267 > v1178 || v266 > v267;
              v270 = v265 + 1;
              if (v269 || v265 < v1179 || v270 > &v1179[32] || v265 > v270)
              {
                goto LABEL_2048;
              }

              v274 = *v266;
              *v265++ = *v266;
              v264 = v264 + (v274 * v274);
              if ((v253 + 1) < v68)
              {
                ++v253;
              }

              else
              {
                v253 = 0;
              }

              --v263;
            }

            while (v263);
            goto LABEL_503;
          }
        }

        v264 = 0.0;
LABEL_503:
        v302 = (v62 + 2 * v252);
        if (v302 < v62)
        {
          goto LABEL_2048;
        }

        if ((v302 + 1) > v63)
        {
          goto LABEL_2048;
        }

        if (v302 > v302 + 1)
        {
          goto LABEL_2048;
        }

        v303 = (a40 + 2 * v252);
        if (v303 < a40 || (v303 + 1) > a41 || v303 > v303 + 1)
        {
          goto LABEL_2048;
        }

        v304 = *v302;
        v305 = *v303;
        v306 = v304 < v305;
        if (v304 > v305)
        {
          v305 = v304;
        }

        if (v306)
        {
          v307 = 1.0 / sqrtf(v264 / v262);
          v308 = v305 - v304;
          v309 = &v58[v304];
          v310 = v1179;
          do
          {
            v311 = v310 + 1;
            v313 = v310 < v1179 || v311 > &v1179[32] || v310 > v311;
            v314 = v309 + 1;
            if (v313 || v309 < v58 || v314 > v57 || v309 > v314)
            {
              goto LABEL_2048;
            }

            v318 = *v310++;
            *v309++ = v307 * v318;
            --v308;
          }

          while (v308);
        }

LABEL_409:
        LODWORD(v252) = (v252 + 1);
      }

      while (v252 <= v59);
    }

    v76 = a19;
  }

  if (!v76)
  {
    v319 = (a40 + 2 * v59);
    if (v319 < a40)
    {
      goto LABEL_2048;
    }

    if ((v319 + 1) > a41)
    {
      goto LABEL_2048;
    }

    if (v319 > v319 + 1)
    {
      goto LABEL_2048;
    }

    v320 = a40 + 2 * a44;
    v321 = (v320 - 2);
    if (v320 - 2 < a40 || v320 > a41 || v321 > v320)
    {
      goto LABEL_2048;
    }

    v322 = *v319;
    v323 = &v58[v322];
    v324 = &v58[*v321];
    if (v323 < v324)
    {
      v325 = v323 - 1;
      v326 = &v58[v322 >> 1];
      v327 = v323;
      do
      {
        do
        {
          if (v325 < v326)
          {
            break;
          }

          if ((v325 + 1) > v57)
          {
            goto LABEL_2048;
          }

          if (v325 > v325 + 1)
          {
            goto LABEL_2048;
          }

          if (v325 < v58)
          {
            goto LABEL_2048;
          }

          v328 = v327 + 1;
          if ((v327 + 1) > v57 || v327 > v328 || v327 < v58)
          {
            goto LABEL_2048;
          }

          v329 = *v325--;
          *v327++ = v329;
        }

        while (v328 < v324);
        v330 = v325 + 1;
        if (v327 < v324)
        {
          while (v330 < v323)
          {
            v325 = v330 + 1;
            if ((v330 + 1) > v57)
            {
              goto LABEL_2048;
            }

            if (v330 > v325)
            {
              goto LABEL_2048;
            }

            if (v330 < v58)
            {
              goto LABEL_2048;
            }

            v331 = v327 + 1;
            if ((v327 + 1) > v57 || v327 > v331 || v327 < v58)
            {
              goto LABEL_2048;
            }

            *v327++ = *v330++;
            if (v331 >= v324)
            {
              goto LABEL_561;
            }
          }
        }

        v331 = v327;
        v325 = v330;
LABEL_561:
        v327 = v331;
      }

      while (v331 < v324);
    }
  }

  v333 = a13 > 639 || (a22 - 32001) < 0xFFFFFFFFFFFFE24FLL;
  if (v76 != 3 && v333 && (v59 & 0x8000) == 0)
  {
    LOWORD(v334) = 0;
    do
    {
      v335 = (v45 + 2 * v334);
      v336 = v335 + 1;
      if (v335 < v45 || v336 > v66 || v335 > v336)
      {
        goto LABEL_2048;
      }

      v334 = v334;
      if (!*v335)
      {
        v339 = (v62 + 2 * v334);
        if (v339 < v62)
        {
          goto LABEL_2048;
        }

        if ((v339 + 1) > v63)
        {
          goto LABEL_2048;
        }

        if (v339 > v339 + 1)
        {
          goto LABEL_2048;
        }

        v340 = (a40 + 2 * v334);
        if (v340 < a40 || (v340 + 1) > a41 || v340 > v340 + 1)
        {
          goto LABEL_2048;
        }

        v341 = *v339;
        v342 = *v340;
        v343 = v341 < v342;
        if (v341 > v342)
        {
          v342 = v341;
        }

        if (v343)
        {
          v344 = v341;
          v345 = v342 - v341;
          v346 = &v58[v344];
          do
          {
            if (v346 < v58 || (v346 + 1) > v57 || v346 > v346 + 1)
            {
              goto LABEL_2048;
            }

            *v346 = (1.0 / (1 << a12)) * *v346;
            ++v346;
            --v345;
          }

          while (v345);
        }
      }

      LODWORD(v334) = (v334 + 1);
    }

    while (v334 <= v59);
  }

  v347 = v76 & 0xFFFE;
  if (v347 != 4)
  {
    if ((v76 - 4) <= 0xFFFFFFFD)
    {
      goto LABEL_640;
    }

    v429 = 0;
    LODWORD(v68) = a44;
LABEL_772:
    v371 = a19;
    goto LABEL_773;
  }

  if ((v59 & 0x8000) == 0)
  {
    LOWORD(v348) = 0;
    do
    {
      v349 = v348;
      v350 = v62 + 2 * v348;
      v351 = (v350 + 2);
      v353 = v350 < v62 || v351 > v63 || v350 > v351;
      v354 = (a40 + 2 * v349);
      v355 = v354 + 1;
      if (v353 || v354 < a40 || v355 > a41 || v354 > v355)
      {
        goto LABEL_2048;
      }

      LODWORD(v350) = *v350;
      LODWORD(v359) = *v354;
      if (v350 < v359)
      {
        v350 = v350;
        v360 = 4 * v350;
        v361 = v1163;
        v362 = v58;
        do
        {
          v363 = &v362[v360 / 4];
          v364 = &v362[v360 / 4 + 1];
          if (&v362[v360 / 4] < v58 || v364 > v57 || v363 > v364)
          {
            goto LABEL_2048;
          }

          v367 = *v363;
          if (*v363 == 0.0)
          {
            v368 = 31821 * *v60 + 13849;
            *v60 = v368;
            v359 = (v361 + v360);
            if ((v361 + v360) < v1163 || v359 + 1 > &v1164 || v359 > v359 + 1)
            {
              goto LABEL_2048;
            }

            if (v368 <= 0)
            {
              v369 = -0.5;
            }

            else
            {
              v369 = 0.5;
            }

            *v359 = v369;
            LOWORD(v359) = *v354;
          }

          else
          {
            v370 = (v361 + v360);
            if ((v361 + v360) < v1163 || v370 + 1 > &v1164 || v370 > v370 + 1)
            {
              goto LABEL_2048;
            }

            *v370 = v367;
          }

          ++v350;
          v361 = (v361 + 4);
          ++v362;
        }

        while (v350 < v359);
      }

      v348 = (v349 + 1);
    }

    while (v348 <= v59);
  }

LABEL_640:
  v371 = a19;
  if (a41 < a40 || a44 > 0x2C || v63 < a38 || (a41 - a40) >> 1 < a44 || a44 > (v63 - a38) >> 1)
  {
    goto LABEL_2048;
  }

  LODWORD(v68) = a44;
  if (v347 == 4)
  {
    v372 = v59 + 1;
  }

  else
  {
    v372 = a44;
  }

  if (a13 != 320)
  {
    v397 = v372;
    v62 = a38;
    if (v372 >= 1)
    {
      v398 = 0;
      do
      {
        v399 = (v50 + 2 * v398);
        v400 = v399 + 1;
        if (v399 < v50 || v400 > v48 || v399 > v400)
        {
          goto LABEL_2048;
        }

        v403 = &dicn[*v399];
        v404 = v403 + 1;
        v405 = v403 < dicn || v404 > band_len_harm;
        if (v405 || v403 > v404)
        {
          goto LABEL_2048;
        }

        v407 = &v1164 + 4 * v398;
        if (v407 < &v1164)
        {
          goto LABEL_2048;
        }

        if (v407 + 4 > &v1164 + 4 * a44)
        {
          goto LABEL_2048;
        }

        if (v407 > v407 + 4)
        {
          goto LABEL_2048;
        }

        v408 = *v403;
        *(&v1164 + v398) = *v403;
        v409 = v1176 + 4 * v398;
        if (v409 < v1176)
        {
          goto LABEL_2048;
        }

        if (v409 + 4 > v1177)
        {
          goto LABEL_2048;
        }

        if (v409 > v409 + 4)
        {
          goto LABEL_2048;
        }

        v410 = v408 * *(v1176 + v398);
        *(&v1164 + v398) = v410;
        v411 = (a38 + 2 * v398);
        if (v411 < a38)
        {
          goto LABEL_2048;
        }

        if ((v411 + 1) > a38 + 2 * a44)
        {
          goto LABEL_2048;
        }

        if (v411 > v411 + 1)
        {
          goto LABEL_2048;
        }

        v412 = (a40 + 2 * v398);
        if (v412 < a40 || (v412 + 1) > a40 + 2 * a44 || v412 > v412 + 1)
        {
          goto LABEL_2048;
        }

        v413 = *v411;
        v414 = *v412;
        v415 = v413 < v414;
        if (v413 > v414)
        {
          v414 = v413;
        }

        if (v415)
        {
          v416 = v413;
          v417 = v414 - v413;
          v418 = 4 * v416;
          v419 = __C;
          v66 = v58;
          do
          {
            v420 = (v66 + v418);
            v421 = v66 + v418 + 4;
            v423 = v66 + v418 < v58 || v421 > v57 || v420 > v421;
            v424 = (v419 + v418);
            v425 = v419 + v418 + 4;
            if (v423 || v424 < __C || v425 > v1163 || v424 > v425)
            {
              goto LABEL_2048;
            }

            *v424 = v410 * *v420;
            v419 = (v419 + 4);
            v66 += 4;
            --v417;
          }

          while (v417);
        }

        ++v398;
      }

      while (v398 != v397);
    }

    v429 = 1;
    if (v347 == 4)
    {
      v66 = v1156;
      v371 = a19;
      if ((v59 & 0x8000) != 0)
      {
        goto LABEL_773;
      }

      LOWORD(v430) = 0;
      do
      {
        v431 = &v1164 + 4 * v430;
        v432 = v431 + 4;
        if (v431 < &v1164 || v432 > &v1164 + 4 * a44 || v431 > v432)
        {
          goto LABEL_2048;
        }

        v430 = v430;
        v435 = (a38 + 2 * v430);
        if (v435 < a38)
        {
          goto LABEL_2048;
        }

        if ((v435 + 1) > a38 + 2 * a44)
        {
          goto LABEL_2048;
        }

        if (v435 > v435 + 1)
        {
          goto LABEL_2048;
        }

        v436 = (a40 + 2 * v430);
        if (v436 < a40 || (v436 + 1) > a40 + 2 * a44 || v436 > v436 + 1)
        {
          goto LABEL_2048;
        }

        v437 = *v435;
        v438 = *v436;
        v439 = v437 < v438;
        if (v437 > v438)
        {
          v438 = v437;
        }

        if (v439)
        {
          v440 = *(&v1164 + v430);
          v441 = v437;
          v442 = v438 - v437;
          v443 = v1163 + v441;
          do
          {
            v444 = v443 + 1;
            if (v443 < v1163 || v444 > &v1164 || v443 > v444)
            {
              goto LABEL_2048;
            }

            *v443 = v440 * *v443;
            ++v443;
            --v442;
          }

          while (v442);
        }

        LODWORD(v430) = (v430 + 1);
      }

      while (v430 <= v59);
LABEL_769:
      v429 = 1;
    }

    v66 = v1156;
    goto LABEL_772;
  }

  v62 = a38;
  if (a44 >= 1)
  {
    v373 = 0;
    do
    {
      v374 = (v50 + 2 * v373);
      v375 = v374 + 1;
      if (v374 < v50 || v375 > v48 || v374 > v375)
      {
        goto LABEL_2048;
      }

      v378 = &dicn[*v374];
      v379 = v378 + 1;
      v380 = v378 < dicn || v379 > band_len_harm;
      if (v380 || v378 > v379)
      {
        goto LABEL_2048;
      }

      v382 = *v378;
      *(&v1164 + v373) = *v378;
      v383 = v1176 + 4 * v373;
      if (v383 + 4 > v1177 || v383 > v383 + 4)
      {
        goto LABEL_2048;
      }

      if (*(a38 + 2 * v373) < *(a40 + 2 * v373))
      {
        v384 = v382 * *(v1176 + v373);
        v385 = *(a40 + 2 * v373) - *(a38 + 2 * v373);
        v386 = *(a38 + 2 * v373);
        v387 = __C;
        v388 = v58;
        do
        {
          v389 = &v388[v386];
          v390 = &v388[v386 + 1];
          v392 = &v388[v386] < v58 || v390 > v57 || v389 > v390;
          v393 = (v387 + v386 * 4);
          v66 = v387 + v386 * 4 + 4;
          if (v392 || v393 < __C || v66 > v1163 || v393 > v66)
          {
            goto LABEL_2048;
          }

          *v393 = v384 * *v389;
          v387 = (v387 + 4);
          ++v388;
          --v385;
        }

        while (v385);
      }

      ++v373;
    }

    while (v373 != a44);
    goto LABEL_769;
  }

  v429 = 1;
LABEL_773:
  v1147 = v429;
  if (!v1146)
  {
    if (v371 == 3)
    {
      v521 = v57 - v58;
LABEL_971:
      if (v57 < v58)
      {
        goto LABEL_2048;
      }

      if (v521 < 3837)
      {
        goto LABEL_2048;
      }

      v1152 = v59;
      v1149 = (a40 + 2 * v59);
      if (v1149 < a40)
      {
        goto LABEL_2048;
      }

      if ((v1149 + 1) > a41)
      {
        goto LABEL_2048;
      }

      if (v1149 > v1149 + 1)
      {
        goto LABEL_2048;
      }

      v68 = *v1149;
      memmove(__C, v58, 0xF00uLL);
      LODWORD(v59) = a44 - 1;
      v554 = (a40 + 2 * (a44 - 1));
      if (v554 < a40)
      {
        goto LABEL_2048;
      }

      if ((v554 + 1) > a41)
      {
        goto LABEL_2048;
      }

      if (v554 > v554 + 1)
      {
        goto LABEL_2048;
      }

      v555 = (a38 + 2 * v1152);
      if (v555 < a38)
      {
        goto LABEL_2048;
      }

      if ((v555 + 1) > a39)
      {
        goto LABEL_2048;
      }

      if (v555 > v555 + 1)
      {
        goto LABEL_2048;
      }

      v556 = __C + *v555;
      if (v556 < __C)
      {
        goto LABEL_2048;
      }

      v62 = *v554;
      v557 = (v50 + 2 * v1152);
      if (v557)
      {
        if (v557 < v50 || (v557 + 1) > v48 || v557 > v557 + 1)
        {
          goto LABEL_2048;
        }
      }

      v558 = (a36 + 2 * v1152);
      if (v558 < a36)
      {
        goto LABEL_2048;
      }

      if ((v558 + 1) > a37)
      {
        goto LABEL_2048;
      }

      if (v558 > v558 + 1)
      {
        goto LABEL_2048;
      }

      logqnorm(v556, v1163, v557, 40, *v558, thren_HQ, AMRWB_IOmode2rate);
      v559 = a23 + 1;
      if ((a23 + 1) > a24)
      {
        goto LABEL_2048;
      }

      if (v559 < a23)
      {
        goto LABEL_2048;
      }

      v560 = a20 + 1;
      if ((a20 + 1) > a21)
      {
        goto LABEL_2048;
      }

      if (v560 < a20)
      {
        goto LABEL_2048;
      }

      v561 = (*a20 * 0.1) + (*a23 * 0.9);
      *a20 = v561;
      if ((a23 + 2) > a24 || v559 > a23 + 2 || (a20 + 2) > a21 || v560 > a20 + 2)
      {
        goto LABEL_2048;
      }

      v562 = (*v560 * 0.1) + (*v559 * 0.9);
      *v560 = v562;
      if ((a43 & 0xFFFB) == 0)
      {
        if (v561 < 0.25)
        {
          *a20 = v561 * 4.0;
        }

        if (v562 < 0.25)
        {
          *v560 = v562 * 4.0;
        }
      }

      v563 = v1140 + (v62 - v1140) / 2;
      LOWORD(v564) = v1152 + 1;
      v1146 = (v1152 + 1);
      if (a22 == 24400)
      {
        v565 = (a38 + 2 * (v1152 + 1));
        if (v565 < a38)
        {
          goto LABEL_2048;
        }

        if ((v565 + 1) > a39)
        {
          goto LABEL_2048;
        }

        if (v565 > v565 + 1)
        {
          goto LABEL_2048;
        }

        v566 = (v1152 + 1) + 1;
        v567 = (a40 + 2 * v566);
        if (v567 < a40 || (v567 + 1) > a41 || v567 > v567 + 1)
        {
          goto LABEL_2048;
        }

        v568 = *v565;
        v569 = *v567;
        if (v568 <= v569)
        {
          v570 = *v567;
        }

        else
        {
          v570 = v568;
        }

        if (v568 >= v569)
        {
          v573 = 1.0e-15;
        }

        else
        {
          v571 = v570 - v568;
          v572 = v1163 + v568 - v68;
          v573 = 1.0e-15;
          do
          {
            v574 = v572 + 1;
            if (v572 < v1163 || v574 > &v1164 || v572 > v574)
            {
              goto LABEL_2048;
            }

            v577 = *v572++;
            v573 = v573 + (v577 * v577);
            --v571;
          }

          while (v571);
        }

        v578 = v50 + 2 * (v1152 + 1);
        v579 = (v578 - 2);
        if (v578 - 2 < v50)
        {
          goto LABEL_2048;
        }

        if (v578 > v48)
        {
          goto LABEL_2048;
        }

        if (v579 > v578)
        {
          goto LABEL_2048;
        }

        v580 = &dicn[*v579];
        if (v580 < dicn)
        {
          goto LABEL_2048;
        }

        if (v580 + 1 > band_len_harm)
        {
          goto LABEL_2048;
        }

        if (v580 > v580 + 1)
        {
          goto LABEL_2048;
        }

        v581 = (v50 + 2 * (v1152 + 1));
        if (v581 < v50)
        {
          goto LABEL_2048;
        }

        if ((v581 + 1) > v48)
        {
          goto LABEL_2048;
        }

        if (v581 > v581 + 1)
        {
          goto LABEL_2048;
        }

        v582 = &dicn[*v581];
        if (v582 < dicn)
        {
          goto LABEL_2048;
        }

        if (v582 + 1 > band_len_harm)
        {
          goto LABEL_2048;
        }

        if (v582 > v582 + 1)
        {
          goto LABEL_2048;
        }

        v583 = (v50 + 2 * v566);
        if (v583 < v50)
        {
          goto LABEL_2048;
        }

        v66 = (v583 + 1);
        if ((v583 + 1) > v48)
        {
          goto LABEL_2048;
        }

        if (v583 > v66)
        {
          goto LABEL_2048;
        }

        v584 = &dicn[*v583];
        if (v584 < dicn)
        {
          goto LABEL_2048;
        }

        v66 = (v584 + 1);
        if (v584 + 1 > band_len_harm)
        {
          goto LABEL_2048;
        }

        if (v584 > v66)
        {
          goto LABEL_2048;
        }

        v564 = (v1152 + 1) + 2;
        v66 = v50 + 2 * v564;
        if (v66 < v50)
        {
          goto LABEL_2048;
        }

        if (v66 + 2 > v48)
        {
          goto LABEL_2048;
        }

        if (v66 > v66 + 2)
        {
          goto LABEL_2048;
        }

        v66 = &dicn[*v66];
        if (v66 < dicn)
        {
          goto LABEL_2048;
        }

        if (v66 + 4 > band_len_harm)
        {
          goto LABEL_2048;
        }

        if (v66 > v66 + 4)
        {
          goto LABEL_2048;
        }

        v585 = (a36 + 2 * (v1152 + 1));
        if (v585 < a36 || (v585 + 1) > a37 || v585 > v585 + 1)
        {
          goto LABEL_2048;
        }

        v586 = sqrtf((v569 - v568) / v573);
        v587 = *v582;
        v588 = *v584;
        v589 = ((*v582 * 0.8) + (*v580 * 0.1)) + (*v584 * 0.1);
        v590 = *v66;
        v591 = (v568 + ((*v585 + (*v585 >> 15)) >> 1));
        if (v568 < v591)
        {
          v592 = (v568 + ((*v585 + (*v585 >> 15)) >> 1)) - v568;
          v66 = 13849;
          v593 = __C + v568;
          v594 = (v568 << 32) - (v68 << 32);
          do
          {
            v62 = &a20[v568 / v563];
            v60 = v62 + 4;
            if (v62 < a20 || v60 > a21 || v62 > v60)
            {
              goto LABEL_2048;
            }

            v60 = v1163 + (v594 >> 30);
            if (v60 < v1163)
            {
              goto LABEL_2048;
            }

            v63 = v60 + 4;
            if (v60 + 4 > &v1164)
            {
              goto LABEL_2048;
            }

            if (v60 > v63)
            {
              goto LABEL_2048;
            }

            v597 = *v62;
            v598 = *v60;
            v62 = 31821 * *a16 + 13849;
            *a16 = 31821 * *a16 + 13849;
            if (v593 < __C)
            {
              goto LABEL_2048;
            }

            v60 = (v593 + 1);
            if (v593 + 1 > v1163 || v593 > v60)
            {
              goto LABEL_2048;
            }

            v62 = v62;
            *v593++ = v589 * (((v597 * v62) * 0.000030518) + (((1.0 - v597) * v598) * v586));
            v594 += 0x100000000;
            LODWORD(v568) = v568 + 1;
            --v592;
          }

          while (v592);
        }

        v599 = (a36 + 2 * v566);
        if (v599 < a36)
        {
          goto LABEL_2048;
        }

        if ((v599 + 1) > a37)
        {
          goto LABEL_2048;
        }

        if (v599 > v599 + 1)
        {
          goto LABEL_2048;
        }

        v600 = (a38 + 2 * v566);
        if (v600 < a38 || (v600 + 1) > a39 || v600 > v600 + 1)
        {
          goto LABEL_2048;
        }

        v601 = ((v588 * 0.8) + (v587 * 0.1)) + (v590 * 0.1);
        v602 = *v599 + (*v599 >> 15);
        v603 = (*v600 + *v599 / 2);
        if (v591 < v603)
        {
          v604 = 0;
          v605 = (*v585 / 2 + (v602 >> 1) - 1);
          v606 = v603 - v591;
          v607 = 4 * v591;
          v608 = v1163 - 4 * v68;
          v66 = __C;
          v609 = __C;
          do
          {
            v62 = &a20[v591 / v563];
            if (v62 < a20)
            {
              goto LABEL_2048;
            }

            v60 = v62 + 4;
            if (v62 + 4 > a21)
            {
              goto LABEL_2048;
            }

            if (v62 > v60)
            {
              goto LABEL_2048;
            }

            v60 = &v608[v607];
            if (&v608[v607] < v1163)
            {
              goto LABEL_2048;
            }

            v63 = v60 + 4;
            if (v60 + 4 > &v1164)
            {
              goto LABEL_2048;
            }

            if (v60 > v63)
            {
              goto LABEL_2048;
            }

            v610 = *v62;
            v611 = *v60;
            v60 = 31821 * *a16 + 13849;
            *a16 = 31821 * *a16 + 13849;
            v62 = v609 + v607;
            if ((v609 + v607) < __C)
            {
              goto LABEL_2048;
            }

            v63 = v62 + 4;
            if (v62 + 4 > v1163 || v62 > v63)
            {
              goto LABEL_2048;
            }

            v63 = v604;
            v45 = (v605 - v604);
            v60 = v60;
            ++v604;
            *v62 = ((v601 * (v63 / v605)) + ((v45 / v605) * v589)) * (((v610 * v60) * 0.000030518) + (((1.0 - v610) * v611) * v586));
            v609 = (v609 + 4);
            v608 += 4;
            ++v591;
            --v606;
          }

          while (v606);
        }

        v612 = *v567;
        if (v603 < v612)
        {
          v613 = 4 * v603;
          v614 = __C;
          v615 = v612 - v603;
          v616 = v1163 - 4 * v68;
          do
          {
            v66 = &a20[v603 / v563];
            v617 = v66 + 4;
            if (v66 < a20 || v617 > a21 || v66 > v617)
            {
              goto LABEL_2048;
            }

            v620 = &v616[v613];
            if (&v616[v613] < v1163)
            {
              goto LABEL_2048;
            }

            if (v620 + 1 > &v1164)
            {
              goto LABEL_2048;
            }

            if (v620 > v620 + 1)
            {
              goto LABEL_2048;
            }

            v621 = *v66;
            v622 = *v620;
            v623 = 31821 * *a16 + 13849;
            *a16 = v623;
            v66 = v614 + v613;
            if ((v614 + v613) < __C || v66 + 4 > v1163 || v66 > v66 + 4)
            {
              goto LABEL_2048;
            }

            *v66 = v601 * (((v621 * v623) * 0.000030518) + (((1.0 - v621) * v622) * v586));
            v614 = (v614 + 4);
            v616 += 4;
            ++v603;
            --v615;
          }

          while (v615);
        }
      }

      if (a44 <= v564)
      {
LABEL_1271:
        v686 = 0;
        *a23 = *a20;
        a23[1] = a20[1];
        v687 = 4 * *v1149;
        v688 = __C;
        v689 = __C;
        do
        {
          v690 = (v689 + v687 + 568);
          if (v690 < __C)
          {
            goto LABEL_2048;
          }

          v691 = v689 + v687 + 572;
          if (v691 > v1163)
          {
            goto LABEL_2048;
          }

          if (v690 > v691)
          {
            goto LABEL_2048;
          }

          v692 = (v688 + v687 + 564);
          v693 = vcvts_n_f32_u32(v686, 5uLL) + 0.5;
          *v690 = v693 * *v690;
          if (v692 < __C)
          {
            goto LABEL_2048;
          }

          v694 = v688 + v687 + 568;
          if (v694 > v1163 || v692 > v694)
          {
            goto LABEL_2048;
          }

          v695 = v686++;
          *v692 = v693 * *v692;
          v689 = (v689 + 4);
          v688 = (v688 - 4);
        }

        while (v695 < 0xF);
        v45 = v1155;
        v66 = v1156;
        LOWORD(v59) = v1152;
        v63 = a39;
        goto LABEL_1280;
      }

      v564 = v564;
      v624 = v1163 - 4 * v68;
      while (1)
      {
        v625 = (v1155 + 2 * v564);
        v66 = (v625 + 1);
        if (v625 < v1155 || v66 > v1156 || v625 > v66)
        {
          goto LABEL_2048;
        }

        v628 = *v625;
        v66 = a38 + 2 * v564;
        v629 = v66 + 2 > a39 || v66 > v66 + 2;
        v630 = !v629 && v66 >= a38;
        v631 = v630;
        if (!v628)
        {
          break;
        }

        v533 = !v631;
        v632 = (a40 + 2 * v564);
        v633 = v632 + 1;
        if (v533 || v632 < a40 || v633 > a41 || v632 > v633)
        {
          goto LABEL_2048;
        }

        v66 = *v66;
        v637 = *v632;
        if (v66 <= v637)
        {
          v638 = *v632;
        }

        else
        {
          v638 = v66;
        }

        if (v66 < v637)
        {
          v639 = v638 - v66;
          v66 = 4 * v66;
          v640 = __C;
          v641 = v58;
          do
          {
            v642 = (v641 + v66);
            v643 = v641 + v66 + 4;
            v645 = (v641 + v66) < v58 || v643 > (v58 + 960) || v642 > v643;
            v68 = v640 + v66;
            v646 = v640 + v66 + 4;
            if (v645 || v68 < __C || v646 > v1163 || v68 > v646)
            {
              goto LABEL_2048;
            }

            *v68 = *v642;
            v640 = (v640 + 4);
            ++v641;
            --v639;
          }

          while (v639);
        }

LABEL_1270:
        if (++v564 == a44)
        {
          goto LABEL_1271;
        }
      }

      if (!v631)
      {
        goto LABEL_2048;
      }

      v650 = (a40 + 2 * v564);
      if (v650 < a40 || (v650 + 1) > a41 || v650 > v650 + 1)
      {
        goto LABEL_2048;
      }

      v66 = *v66;
      v651 = *v650;
      v652 = v66;
      if (v66 <= v651)
      {
        v653 = *v650;
      }

      else
      {
        v653 = v66;
      }

      if (v66 >= v651)
      {
LABEL_1172:
        v62 = v59 > v564;
        v68 = v652;
      }

      else
      {
        v652 = v653;
        v654 = 2 * v66;
        v68 = v66;
        while (1)
        {
          v62 = &v1171[v654];
          v60 = &v1171[v654 + 2];
          if (&v1171[v654] < v1171 || v60 > v1172 || v62 > v60)
          {
            goto LABEL_2048;
          }

          if (*&v1171[2 * v68])
          {
            break;
          }

          ++v68;
          v654 += 2;
          if (v652 == v68)
          {
            goto LABEL_1172;
          }
        }

        v62 = v59 > v564;
        if (v1146 < v564 && v59 > v564)
        {
          v62 = a36 + 2 * v564;
          v674 = (v62 - 2);
          if (v62 - 2 < a36)
          {
            goto LABEL_2048;
          }

          if (v62 > a37)
          {
            goto LABEL_2048;
          }

          if (v674 > v62)
          {
            goto LABEL_2048;
          }

          v675 = (v62 + 2);
          if (v62 + 2 < a36)
          {
            goto LABEL_2048;
          }

          v62 += 4;
          if (v62 > a37 || v675 > v62)
          {
            goto LABEL_2048;
          }

          v658 = v66 - ((*v674 + (*v674 >> 15)) >> 1);
          v657 = v651 + ((*v675 + (*v675 >> 15)) >> 1);
          v62 = 1;
          goto LABEL_1174;
        }
      }

      LOWORD(v657) = *v650;
      LOWORD(v658) = v66;
LABEL_1174:
      v659 = 1.0e-15;
      if (v658 < v657)
      {
        v60 = v657 - v658;
        v659 = 1.0e-15;
        v63 = &v624[4 * v658];
        do
        {
          v45 = v63 + 4;
          if (v63 < v1163 || v45 > &v1164 || v63 > v45)
          {
            goto LABEL_2048;
          }

          v662 = *v63;
          v63 += 4;
          v659 = v659 + (v662 * v662);
          --v60;
        }

        while (v60);
      }

      v60 = v50 + 2 * v564;
      v45 = v60 - 2;
      v63 = v60 <= v48 && v45 <= v60 && v45 >= v50;
      if (v68 >= *v650)
      {
        if (!v63)
        {
          goto LABEL_2048;
        }

        if (v564 + 1 < v59)
        {
          v666 = v564 + 1;
        }

        else
        {
          v666 = a44 - 1;
        }

        LODWORD(v68) = *v45;
        v62 = v666;
        if (v62 >= v564)
        {
          v60 = v564;
          do
          {
            v63 = v50 + 2 * v60;
            v667 = v63 + 2;
            if (v63 < v50 || v667 > v48 || v63 > v667)
            {
              goto LABEL_2048;
            }

            v670 = *v63;
            v63 = v68;
            if (v670 <= v68)
            {
              LODWORD(v68) = v68;
            }

            else
            {
              LODWORD(v68) = v670;
            }

            v60 = (v60 + 1);
          }

          while (v62 >= v60);
        }

        v68 = &dicn[v68];
        v671 = v68 + 4;
        if (v68 < dicn || v671 > band_len_harm || v68 > v671)
        {
          goto LABEL_2048;
        }

        v665 = *v68;
      }

      else if (v62)
      {
        if (!v63)
        {
          goto LABEL_2048;
        }

        v68 = &dicn[*v45];
        if (v68 < dicn)
        {
          goto LABEL_2048;
        }

        v62 = v68 + 4;
        if (v68 + 4 > band_len_harm)
        {
          goto LABEL_2048;
        }

        if (v68 > v62)
        {
          goto LABEL_2048;
        }

        v45 = v60 + 2;
        if (v60 + 2 > v48)
        {
          goto LABEL_2048;
        }

        if (v60 > v45)
        {
          goto LABEL_2048;
        }

        v62 = &dicn[*v60];
        if (v62 < dicn)
        {
          goto LABEL_2048;
        }

        v63 = v62 + 4;
        if (v62 + 4 > band_len_harm)
        {
          goto LABEL_2048;
        }

        if (v62 > v63)
        {
          goto LABEL_2048;
        }

        v60 += 4;
        if (v60 > v48)
        {
          goto LABEL_2048;
        }

        if (v45 > v60)
        {
          goto LABEL_2048;
        }

        v60 = &dicn[*v45];
        if (v60 < dicn)
        {
          goto LABEL_2048;
        }

        v63 = v60 + 4;
        if (v60 + 4 > band_len_harm || v60 > v63)
        {
          goto LABEL_2048;
        }

        v665 = ((*v62 * 0.8) + (*v68 * 0.1)) + (*v60 * 0.1);
      }

      else
      {
        if (!v63)
        {
          goto LABEL_2048;
        }

        v68 = &dicn[*v45];
        if (v68 < dicn)
        {
          goto LABEL_2048;
        }

        v62 = v68 + 4;
        if (v68 + 4 > band_len_harm)
        {
          goto LABEL_2048;
        }

        if (v68 > v62)
        {
          goto LABEL_2048;
        }

        v62 = v60 + 2;
        if (v60 + 2 > v48)
        {
          goto LABEL_2048;
        }

        if (v60 > v62)
        {
          goto LABEL_2048;
        }

        v62 = &dicn[*v60];
        if (v62 < dicn)
        {
          goto LABEL_2048;
        }

        v60 = v62 + 4;
        if (v62 + 4 > band_len_harm || v62 > v60)
        {
          goto LABEL_2048;
        }

        v665 = (*v62 * 0.85) + (*v68 * 0.15);
      }

      if (v66 < v651)
      {
        v676 = sqrtf((v657 - v658) / v659);
        v677 = 4 * v66;
        v678 = __C;
        v679 = v624;
        do
        {
          v68 = &a20[v66 / v563];
          v680 = v68 + 4;
          v62 = a21;
          if (v68 < a20 || v680 > a21 || v68 > v680)
          {
            goto LABEL_2048;
          }

          v62 = &v679[v677];
          if (&v679[v677] < v1163)
          {
            goto LABEL_2048;
          }

          v60 = v62 + 4;
          if (v62 + 4 > &v1164)
          {
            goto LABEL_2048;
          }

          if (v62 > v60)
          {
            goto LABEL_2048;
          }

          v683 = *v68;
          v684 = *v62;
          v685 = *a16;
          v62 = (31821 * v685 + 13849);
          *a16 = 31821 * v685 + 13849;
          v68 = v678 + v677;
          if ((v678 + v677) < __C)
          {
            goto LABEL_2048;
          }

          v60 = v68 + 4;
          if (v68 + 4 > v1163 || v68 > v60)
          {
            goto LABEL_2048;
          }

          *v68 = v665 * (((v683 * (31821 * v685 + 13849)) * 0.000030518) + (((1.0 - v683) * v684) * v676));
          ++v66;
          v678 = (v678 + 4);
          v679 += 4;
        }

        while (v66 < *v650);
      }

      goto LABEL_1270;
    }

    if (v347 != 4)
    {
      goto LABEL_1280;
    }

    v1151 = v59;
    v522 = a40 + 2 * a45;
    v62 = v522 - 2;
    if (v522 - 2 < a40)
    {
      goto LABEL_2048;
    }

    if (v522 > a41)
    {
      goto LABEL_2048;
    }

    if (v62 > v522)
    {
      goto LABEL_2048;
    }

    v68 = v1179;
    memset(v1179, 255, sizeof(v1179));
    v50 = __C + 4 * (a11 + 240);
    if (v50 < __C)
    {
      goto LABEL_2048;
    }

    v523 = a40 + 2 * a44;
    v524 = (v523 - 2);
    if (v523 - 2 < a40)
    {
      goto LABEL_2048;
    }

    if (v523 > a41)
    {
      goto LABEL_2048;
    }

    if (v524 > v523)
    {
      goto LABEL_2048;
    }

    v62 = *v62;
    v1159 = a11 + 240;
    v525 = *v524 - (a11 + 240);
    if (v525 >= 1)
    {
      if (v50 > v1163)
      {
        goto LABEL_2048;
      }

      v59 = 4 * v525;
      if (v59 > 3840 - 4 * (a11 + 240))
      {
        goto LABEL_2048;
      }

      if (v525 >= 0x281u)
      {
        goto LABEL_2048;
      }

      v60 = v1179;
      memcpy(v1179, __C + 4 * (a11 + 240), v59);
      if ((v1179 + v59) < v1179)
      {
        goto LABEL_2048;
      }
    }

    v59 = v1183;
    memset(v1183, 255, sizeof(v1183));
    *&v526 = -1;
    *(&v526 + 1) = -1;
    v1181[4] = v526;
    v1181[3] = v526;
    v1181[2] = v526;
    v1181[1] = v526;
    v1181[0] = v526;
    memset(v1180, 170, sizeof(v1180));
    if (a11 >= 81)
    {
      v527 = 12;
    }

    else
    {
      v527 = 14;
    }

    v1158 = v527;
    v528 = v527 + 3;
    if (a19 != 5)
    {
      v528 = v527;
    }

    v1142 = v528;
    v529 = a11 + 224;
    if (a11 + 240 <= (a11 + 224))
    {
      v534 = 6.25e-17;
    }

    else
    {
      v530 = 1.0e-15;
      do
      {
        v531 = v1163 + v529;
        v533 = v531 + 1 > &v1164 || v531 > v531 + 1 || v531 < v1163;
        if (v533)
        {
          goto LABEL_2048;
        }

        v530 = v530 + (*v531 * *v531);
        ++v529;
      }

      while (a11 + 240 > v529);
      v534 = v530 * 0.0625;
    }

    v1161 = -21846;
    calc_normal_length(3, v1163, &v1164, 4, -1, &v1161, a42);
    v841 = v1161;
    if (a11 == 80)
    {
      if (a19 == 5)
      {
        v842 = 306;
      }

      else
      {
        v842 = 146;
      }

      if (a19 == 5)
      {
        v843 = 612;
      }

      else
      {
        v843 = 292;
      }

      v844 = 657;
    }

    else
    {
      if (a19 == 5)
      {
        v842 = 290;
      }

      else
      {
        v842 = 130;
      }

      if (a19 == 5)
      {
        v843 = 580;
      }

      else
      {
        v843 = 260;
      }

      v844 = 801;
    }

    v845 = v844 - v843;
    if (v845 >= v1161)
    {
      v848 = (v1161 + ((v1161 & 0x8000u) >> 15)) >> 1;
      v847 = v1155;
      if (v1161 < 2)
      {
        v846 = 0;
        goto LABEL_1609;
      }

      v846 = (v1161 + ((v1161 & 0x8000) >> 15)) >> 1;
    }

    else
    {
      v1161 = v845;
      v846 = v845 >> 1;
      v841 = v845;
      v847 = v1155;
    }

    v849 = 0;
    do
    {
      v850 = &v1183[4 * v849];
      v851 = v850 + 1;
      if (v850 < v1183 || v851 > v1184 || v850 > v851)
      {
        goto LABEL_2048;
      }

      *v850 = 1.0e-15;
      if (v846 + v849 >= 1)
      {
        v854 = 0;
        v855 = 1.0e-15;
        do
        {
          v856 = v1163 + v854;
          v66 = (v856 + 1);
          if (v856 < v1163 || v66 > &v1164 || v856 > v66)
          {
            goto LABEL_2048;
          }

          v855 = v855 + fabsf(*v856);
          *v850 = v855;
          ++v854;
        }

        while (v846 + v849 > v854);
      }

      ++v849;
    }

    while (v849 != v846);
    v848 = v846;
    if (v846 >= v842)
    {
LABEL_1628:
      v872 = 0;
      v60 = a45;
      v1153 = (v62 - v1159);
      v1146 = v1159;
      v62 = v1180;
      v873 = flt_19B0B02D8[a17 == 1];
      if (!a17)
      {
        v873 = 0.8;
      }

      v874 = (v842 - 2) >> 4;
      v875 = v842 - 2;
      v876 = &v1180[2];
      v877 = v875;
      v878 = sqrtf(v534);
      do
      {
        v879 = (v1163 + v872 + 8);
        v880 = (v1163 + v872 + 12);
        if (v879 < v1163 || v880 > &v1164 || v879 > v880)
        {
          goto LABEL_2048;
        }

        v883 = *v879;
        v886 = v876 + 1 <= v1181 && v876 <= v876 + 1 && v876 >= v1180;
        if (v883 >= 0.0)
        {
          if (!v886)
          {
            goto LABEL_2048;
          }

          *v876 = 1;
        }

        else
        {
          if (!v886)
          {
            goto LABEL_2048;
          }

          *v876 = -1;
          *v879 = -v883;
        }

        ++v876;
        v872 += 4;
        --v877;
      }

      while (v877);
      v887 = 0;
      v888 = v875;
      do
      {
        v889 = (v1163 + v887 + 8);
        v890 = (v1163 + v887 + 12);
        v892 = v889 < v1163 || v890 > &v1164 || v889 > v890;
        v893 = &v1183[v887 + 8];
        v894 = &v1183[v887 + 12];
        if (v892 || v893 < v1183 || v894 > v1184 || v893 > v894)
        {
          goto LABEL_2048;
        }

        *v889 = *v889 / *v893;
        v887 += 4;
        --v888;
      }

      while (v888);
      v898 = 0;
      do
      {
        v899 = (16 * v898) | 2;
        v900 = 1.0e-15;
        do
        {
          v901 = v1163 + v899;
          v902 = v901 + 1;
          if (v901 < v1163 || v902 > &v1164 || v901 > v902)
          {
            goto LABEL_2048;
          }

          v900 = v900 + *v901;
          ++v899;
        }

        while (16 * v898 + 18 > v899);
        v905 = v1181 + v898;
        if (v905 < v1181 || v905 + 1 > &v1182 || v905 > v905 + 1)
        {
          goto LABEL_2048;
        }

        *v905 = v900 * 0.0625;
        v906 = v898 + 1;
        v898 = (v898 + 1);
      }

      while (v874 > v906);
      v907 = 0;
      do
      {
        v908 = v1181 + v907;
        v911 = v908 + 1 > &v1182 || v908 > v908 + 1 || v908 < v1181;
        v912 = (16 * v907) | 2;
        do
        {
          v913 = v1163 + v912;
          v916 = v913 + 1 > &v1164 || v913 > v913 + 1 || v913 < v1163;
          if (v916 || v911)
          {
            goto LABEL_2048;
          }

          *v913 = *v913 - ((*v913 - *v908) * v873);
          ++v912;
        }

        while (16 * v907 + 18 > v912);
        ++v907;
      }

      while (v907 != v874);
      if (a17)
      {
        v917 = &v1180[2];
        v918 = v1163 + 2;
        do
        {
          v919 = v918 + 1;
          v921 = v918 < v1163 || v919 > &v1164 || v918 > v919;
          v922 = v917 + 1;
          if (v921 || v917 < v1180 || v922 > v1181 || v917 > v922)
          {
            goto LABEL_2048;
          }

          v926 = *v917++;
          *v918 = *v918 * v926;
          ++v918;
          --v875;
        }

        while (v875);
      }

      else
      {
        v927 = v847 + 1;
        if ((v847 + 1) > v1156)
        {
          goto LABEL_2048;
        }

        if (v927 < v847)
        {
          goto LABEL_2048;
        }

        v928 = v847 + 2;
        if ((v847 + 2) > v1156)
        {
          goto LABEL_2048;
        }

        if (v927 > v928)
        {
          goto LABEL_2048;
        }

        if (v928 < v847)
        {
          goto LABEL_2048;
        }

        v929 = (v847 + 3);
        if ((v847 + 3) > v1156 || v928 > v929 || v929 < v847 || (v847 + 4) > v1156 || v929 > (v847 + 4))
        {
          goto LABEL_2048;
        }

        LOWORD(v930) = 4 * v847[1] + 8 * *v847 + 2 * v847[2] + v847[3];
        v931 = &v1180[2];
        v932 = v1163 + 2;
        do
        {
          if (v932 + 1 > &v1164 || v932 > v932 + 1 || v932 < v1163 || v931 < v1180 || v931 + 1 > v1181 || v931 > v931 + 1)
          {
            goto LABEL_2048;
          }

          v930 = (31821 * v930 + 13849);
          v933 = *v931++;
          v934 = *v932 * v933;
          v935 = -v934;
          if (v930 > 0)
          {
            v935 = v934;
          }

          *v932++ = v935;
          --v875;
        }

        while (v875);
      }

      v936 = 0;
      do
      {
        v937 = (16 * v936) | 2;
        v938 = 16 * v936 + 18;
        v939 = v937;
        v940 = 1.0e-15;
        do
        {
          v941 = v1163 + v939;
          if (v941 + 1 > &v1164 || v941 > v941 + 1 || v941 < v1163)
          {
            goto LABEL_2048;
          }

          v940 = v940 + (*v941 * *v941);
          ++v939;
        }

        while (v938 > v939);
        v944 = sqrtf(v940 * 0.0625);
        do
        {
          v945 = v1163 + v937;
          if (v945 + 1 > &v1164 || v945 > v945 + 1 || v945 < v1163)
          {
            goto LABEL_2048;
          }

          *v945 = *v945 / v944;
          ++v937;
        }

        while (v938 > v937);
        ++v936;
      }

      while (v936 != v874);
      v948 = __C + 4 * a11;
      v59 = (v948 + 960);
      if (v948 + 960 < __C)
      {
        goto LABEL_2048;
      }

      if (v1163 < v59)
      {
        goto LABEL_2048;
      }

      if (v1163 - v59 <= 0x1FF)
      {
        goto LABEL_2048;
      }

      v68 = v1163;
      memcpy(v948 + 960, v1163 + 8, 0x200uLL);
      if ((v948 + 1472) < v59)
      {
        goto LABEL_2048;
      }

      v59 = &__C[92] + 4 * a11;
      if (v59 < __C)
      {
        goto LABEL_2048;
      }

      if (v59 > v1163)
      {
        goto LABEL_2048;
      }

      if ((4 * a11 - 1857) <= 0x1FF)
      {
        goto LABEL_2048;
      }

      memcpy(&__C[92] + 4 * a11, v1163 + 8, 0x200uLL);
      if (v59 + 512 < v59)
      {
        goto LABEL_2048;
      }

      v949 = a11;
      v45 = v1155;
      v950 = a9;
      v66 = a10;
      v951 = v1158;
      if (a11 > 80)
      {
        if (a19 != 5)
        {
          goto LABEL_1786;
        }

        v961 = 520;
      }

      else
      {
        v952 = v948 + 1984;
        if (v948 + 1984 < __C)
        {
          goto LABEL_2048;
        }

        if (v1163 < v952)
        {
          goto LABEL_2048;
        }

        if ((v1163 - v952) <= 0xFF)
        {
          goto LABEL_2048;
        }

        v953 = v1163[33];
        *(v948 + 136) = v1163[32];
        *(v948 + 137) = v953;
        v954 = v1163[35];
        *(v948 + 138) = v1163[34];
        *(v948 + 139) = v954;
        v955 = v1163[29];
        *(v948 + 132) = v1163[28];
        *(v948 + 133) = v955;
        v956 = v1163[31];
        *(v948 + 134) = v1163[30];
        *(v948 + 135) = v956;
        v957 = v1163[25];
        *(v948 + 128) = v1163[24];
        *(v948 + 129) = v957;
        v958 = v1163[27];
        *(v948 + 130) = v1163[26];
        *(v948 + 131) = v958;
        v959 = v1163[21];
        *v952 = v1163[20];
        *(v948 + 125) = v959;
        v960 = v1163[23];
        *(v948 + 126) = v1163[22];
        *(v948 + 127) = v960;
        if (v948 + 2240 < v952)
        {
          goto LABEL_2048;
        }

        if (a19 != 5)
        {
LABEL_1786:
          v962 = 4 * v949;
          v963 = 1.0e-15;
          v964 = 5;
          v965 = v962;
          v966 = 1.0e-15;
          do
          {
            v967 = (&__C[92] + v965);
            v968 = (&__C[92] + v965 + 4);
            v970 = v967 < __C || v968 > v1163 || v967 > v968;
            v971 = (&__C[91] + v962 + 8);
            v972 = (&__C[91] + v962 + 12);
            if (v970 || v971 < __C || v972 > v1163 || v971 > v972)
            {
              goto LABEL_2048;
            }

            v963 = v963 + fabsf(*v967);
            v966 = v966 + fabsf(*v971);
            v965 += 4;
            v962 -= 4;
            --v964;
          }

          while (v964);
          v976 = v966 / v963;
          if ((v966 / v963) < 0.3)
          {
            v976 = 0.3;
          }

          for (; v976 < 1.0; v59 += 4)
          {
            v977 = v59 + 4;
            if (v59 < __C || v977 > v1163 || v59 > v977)
            {
              goto LABEL_2048;
            }

            *v59 = v976 * *v59;
            v976 = v976 + 0.1;
          }

          v980 = v963 / v966;
          v981 = 5.0;
          if (v980 > 5.0)
          {
            v982 = (v948 + 1468);
            do
            {
              v983 = v982 + 1;
              if (v982 < __C || v983 > v1163 || v982 > v983)
              {
                goto LABEL_2048;
              }

              *v982 = v981 * *v982;
              --v982;
              v981 = v981 + -0.5;
            }

            while (v981 > 1.0);
          }

          if (v949 <= 80)
          {
            v986 = (v948 + 1984);
            if (v948 + 1984 < __C)
            {
              goto LABEL_2048;
            }

            v987 = (v948 + 1988);
            if (v948 + 1988 > v1163)
            {
              goto LABEL_2048;
            }

            if (v986 > v987)
            {
              goto LABEL_2048;
            }

            if (v948 + 1992 > v1163)
            {
              goto LABEL_2048;
            }

            if (v987 > (v948 + 1992))
            {
              goto LABEL_2048;
            }

            v988 = (v948 + 1968);
            if (v948 + 1968 < __C)
            {
              goto LABEL_2048;
            }

            v989 = v948 + 1972;
            if (v948 + 1972 > v1163)
            {
              goto LABEL_2048;
            }

            if (v988 > v989)
            {
              goto LABEL_2048;
            }

            v990 = (v948 + 1976);
            if (v948 + 1976 > v1163)
            {
              goto LABEL_2048;
            }

            if (v989 > v990)
            {
              goto LABEL_2048;
            }

            v991 = (v948 + 1980);
            if (v948 + 1980 > v1163 || v990 > v991 || v991 > v986)
            {
              goto LABEL_2048;
            }

            v992 = (fabsf(*(v948 + 496)) + fabsf(*(v948 + 497))) + 1.0e-15;
            v993 = vaddvq_f64(vcvtq_f64_f32(vabs_f32(*v988))) + fabsf(*v990) + fabsf(*v991);
            v994 = v993 + 1.0e-15;
            v995 = (v993 + 1.0e-15) / v992;
            if (v995 < 0.3)
            {
              v995 = 0.3;
            }

            for (; v995 < 1.0; ++v986)
            {
              v996 = v986 + 1;
              if (v986 < __C || v996 > v1163 || v986 > v996)
              {
                goto LABEL_2048;
              }

              *v986 = v995 * *v986;
              v995 = v995 + 0.1;
            }

            v999 = (v992 / v994) * 0.5;
            if (v999 > 1.0)
            {
              v1000 = v999 * 0.05;
              do
              {
                v1001 = v991 + 1;
                if (v991 < __C || v1001 > v1163 || v991 > v1001)
                {
                  goto LABEL_2048;
                }

                *v991 = v999 * *v991;
                --v991;
                v999 = v999 - v1000;
              }

              while (v999 > 1.0);
            }
          }

          if ((v950 + 1) > v66 || v950 + 1 < v950)
          {
            goto LABEL_2048;
          }

          v1004 = a11 + 240;
          if (v949 + 248 > v1159)
          {
            v1005 = 0;
            v1006 = *v950;
            do
            {
              v1007 = __C + v1004;
              v1008 = v1007 + 1;
              if (v1007 < __C || v1008 > v1163 || v1007 > v1008)
              {
                goto LABEL_2048;
              }

              v1011 = vcvts_n_f32_s32(v1005, 3uLL);
              *v1007 = ((v1006 * v1011) + ((1.0 - v1011) * v878)) * *v1007;
              ++v1004;
              ++v1005;
            }

            while (v949 + 248 > v1004);
          }

          v1012 = 0;
          v1013 = 0;
          v1014 = v951 - 2;
          do
          {
            v1015 = v1012 + 1;
            v1016 = &v950[v1015];
            v1017 = v1016 + 1;
            if (v1016 < v950 || v1017 > v66 || v1016 > v1017)
            {
              goto LABEL_2048;
            }

            v1020 = swb_bwe_sm_subband + v1015;
            if (v1020 < swb_bwe_sm_subband || v1020 + 1 > fb_bwe_sm_subband || v1020 > v1020 + 1)
            {
              goto LABEL_2048;
            }

            v1021 = *v1020 + v949;
            v1022 = &smooth_factor[v1013];
            v1025 = v1022 + 1 > swb_bwe_sm_subband || v1022 > v1022 + 1 || v1022 < smooth_factor;
            v1026 = &v950[v1013];
            if ((v1026 + 1) > v66 || v1026 > v1026 + 1 || v1026 < v950)
            {
              v1025 = 1;
            }

            if (v1021 > v1004)
            {
              v1029 = 0;
              v1030 = *v1016;
              do
              {
                if (v1025)
                {
                  goto LABEL_2048;
                }

                v1031 = __C + v1004;
                v1032 = v1031 + 1;
                v1033 = v1031 < __C || v1032 > v1163;
                if (v1033 || v1031 > v1032)
                {
                  goto LABEL_2048;
                }

                *v1031 = *v1031 * ((v1030 * (*v1022 * v1029)) + ((1.0 - (*v1022 * v1029)) * *v1026));
                ++v1004;
                ++v1029;
              }

              while (v1021 > v1004);
            }

            v1012 = ++v1013;
          }

          while (v1014 > v1013);
          v1035 = (v951 - 1);
          v1036 = &v950[v1035];
          if (v1036 < v950)
          {
            goto LABEL_2048;
          }

          if ((v1036 + 1) > v66)
          {
            goto LABEL_2048;
          }

          if (v1036 > v1036 + 1)
          {
            goto LABEL_2048;
          }

          v1037 = swb_bwe_sm_subband + v1035;
          if (v1037 < swb_bwe_sm_subband || v1037 + 1 > fb_bwe_sm_subband || v1037 > v1037 + 1)
          {
            goto LABEL_2048;
          }

          v1038 = *v1037 + v949;
          v1039 = &smooth_factor[v1014];
          v1042 = v1039 + 1 > swb_bwe_sm_subband || v1039 > v1039 + 1 || v1039 < smooth_factor;
          v1043 = &v950[v1014];
          v1046 = (v1043 + 1) > v66 || v1043 > v1043 + 1 || v1043 < v950;
          if (v1038 > v1004)
          {
            v1047 = 0;
            v1048 = *v1036;
            v1049 = v1042 || v1046;
            do
            {
              if (v1049)
              {
                goto LABEL_2048;
              }

              v1050 = __C + v1004;
              v1051 = v1050 + 1;
              v1052 = v1050 < __C || v1051 > v1163;
              if (v1052 || v1050 > v1051)
              {
                goto LABEL_2048;
              }

              *v1050 = *v1050 * ((v1048 * (*v1039 * v1047)) + ((1.0 - (*v1039 * v1047)) * *v1043));
              ++v1004;
              ++v1047;
            }

            while (v1038 > v1004);
          }

          if (a19 == 4)
          {
            if (v951 > (v951 - 1))
            {
              v1054 = &swb_bwe_subband[v1035];
              v1055 = v1054 + 1;
              if (v1054 + 1 < swb_bwe_subband)
              {
                goto LABEL_2048;
              }

              v1056 = v1054 + 2;
              if (v1056 > fb_bwe_subband || v1055 > v1056)
              {
                goto LABEL_2048;
              }

              v1057 = *v1055 + v949;
              if (v1057 > v1004)
              {
                v1058 = *v1036;
                do
                {
                  v1059 = __C + v1004;
                  v1060 = v1059 + 1;
                  if (v1059 < __C || v1060 > v1163 || v1059 > v1060)
                  {
                    goto LABEL_2048;
                  }

                  *v1059 = v1058 * *v1059;
                  ++v1004;
                }

                while (v1057 > v1004);
              }
            }
          }

          else
          {
            v1063 = &v950[v951];
            if (v1063 < v950 || (v1063 + 1) > v66 || v1063 > v1063 + 1)
            {
              goto LABEL_2048;
            }

            v1064 = *v1036;
            if (*v1063 >= 5.0 && (*v1036 - *v1063) <= 15.0)
            {
              v1085 = 0;
              v1086 = v1004;
              do
              {
                v1087 = &v950[(v1085 + v951)];
                v1088 = v1087 - 1;
                if (v1087 - 1 < v950 || v1087 > v66 || v1088 > v1087)
                {
                  goto LABEL_2048;
                }

                v1091 = fb_bwe_sm_subband[v1085];
                if (v1091 > v1086)
                {
                  if ((v1087 + 1) > v66 || v1087 > v1087 + 1)
                  {
                    goto LABEL_2048;
                  }

                  v1092 = 0;
                  v1093 = *v1088;
                  v1094 = fb_bwe_sm_subband[v1085] - v1086;
                  v1095 = __C + v1086;
                  do
                  {
                    v1096 = v1095 + 1;
                    if (v1095 < __C || v1096 > v1163 || v1095 > v1096)
                    {
                      goto LABEL_2048;
                    }

                    v1099 = fb_smooth_factor[v1085] * v1092;
                    *v1095 = *v1095 * ((v1093 * v1099) + ((1.0 - v1099) * *v1087));
                    ++v1095;
                    ++v1092;
                    --v1094;
                  }

                  while (v1094);
                  v1086 = v1091;
                }

                ++v1085;
              }

              while (v1085 != 3);
              v1100 = &v950[v1142 - 1];
              if (v1100 < v950 || (v1100 + 1) > v66 || v1100 > v1100 + 1)
              {
                goto LABEL_2048;
              }

              if (v1086 <= 799)
              {
                v1101 = *v1100;
                v1102 = v1086 - 800;
                v1103 = __C + v1086;
                do
                {
                  v1104 = v1103 + 1;
                  if (v1103 < __C || v1104 > v1163 || v1103 > v1104)
                  {
                    goto LABEL_2048;
                  }

                  *v1103 = v1101 * *v1103;
                  ++v1103;
                  v123 = __CFADD__(v1102++, 1);
                }

                while (!v123);
              }
            }

            else
            {
              if (v1004 < 640)
              {
                v1066 = v1004;
                v1067 = v1004 - 640;
                v1068 = __C + v1066;
                do
                {
                  v1069 = v1068 + 1;
                  if (v1068 < __C || v1069 > v1163 || v1068 > v1069)
                  {
                    goto LABEL_2048;
                  }

                  *v1068 = v1064 * *v1068;
                  ++v1068;
                  v123 = __CFADD__(v1067++, 1);
                }

                while (!v123);
                v1004 = 640;
              }

              v1072 = 0;
              v1073 = v1004;
              do
              {
                v1074 = &v950[v951 + v1072];
                v1075 = v1074 + 1;
                if (v1074 < v950 || v1075 > v66 || v1074 > v1075)
                {
                  goto LABEL_2048;
                }

                v1078 = fb_bwe_subband[v1072 + 1];
                if (v1078 > v1073)
                {
                  v1079 = *v1074;
                  v1080 = fb_bwe_subband[v1072 + 1] - v1073;
                  v1081 = __C + v1073;
                  do
                  {
                    v1082 = v1081 + 1;
                    if (v1081 < __C || v1082 > v1163 || v1081 > v1082)
                    {
                      goto LABEL_2048;
                    }

                    *v1081 = v1079 * *v1081;
                    ++v1081;
                    --v1080;
                  }

                  while (v1080);
                  v1073 = v1078;
                }

                ++v1072;
              }

              while (v1072 != 3);
            }
          }

          v1107 = v45 + 2 * a45;
          v1108 = (v1107 - 2);
          LODWORD(v68) = a44;
          LOWORD(v59) = v1151;
          v66 = v1156;
          if (v1107 - 2 >= v45 && v1107 <= v1156 && v1108 <= v1107)
          {
            if (!*v1108)
            {
              goto LABEL_2049;
            }

            if (v1153 < 1)
            {
              goto LABEL_2068;
            }

            if (v50 <= v1163 && v1153 <= 0x280)
            {
              v59 = 4 * v1153;
              if (v59 <= 3840 - 4 * (a11 + 240))
              {
                memcpy(v50, v1179, 4 * v1153);
                v123 = v50 + v59 >= v50;
                v45 = v1155;
                v66 = v1156;
                LOWORD(v59) = v1151;
                if (v123)
                {
                  goto LABEL_2068;
                }
              }
            }
          }

          goto LABEL_2048;
        }

        v961 = 576;
      }

      memcpy(&__C[160], v1163 + v961, 0x280uLL);
      v45 = v1155;
      v950 = a9;
      v66 = a10;
      v949 = a11;
      v951 = v1158;
      goto LABEL_1786;
    }

LABEL_1609:
    v859 = v846;
    v860 = v1163 + v846 - v848;
    do
    {
      v861 = &v1183[4 * v859];
      v862 = v861 + 1;
      if (v861 < v1183 || v862 > v1184 || v861 > v862)
      {
        goto LABEL_2048;
      }

      *v861 = 1.0e-15;
      if (v841 >= 1)
      {
        v865 = v860;
        v866 = v841;
        v867 = 1.0e-15;
        do
        {
          v868 = v865 + 1;
          if (v865 < v1163 || v868 > &v1164 || v865 > v868)
          {
            goto LABEL_2048;
          }

          v871 = *v865++;
          v867 = v867 + fabsf(v871);
          *v861 = v867;
          --v866;
        }

        while (v866);
      }

      ++v859;
      ++v860;
    }

    while (v842 != v859);
    goto LABEL_1628;
  }

  if ((v59 & 0x8000) == 0)
  {
    LOWORD(v447) = 0;
    do
    {
      v448 = (v45 + 2 * v447);
      v449 = v448 + 1;
      if (v448 < v45 || v449 > v66 || v448 > v449)
      {
        goto LABEL_2048;
      }

      v447 = v447;
      if (!*v448)
      {
        v452 = (v50 + 2 * v447);
        if (v452 < v50 || (v452 + 1) > v48 || v452 > v452 + 1)
        {
          goto LABEL_2048;
        }

        v453 = &dicn[*v452];
        v454 = v453 + 1;
        v455 = v453 < dicn || v454 > band_len_harm;
        if (v455 || v453 > v454)
        {
          goto LABEL_2048;
        }

        v457 = (v62 + 2 * v447);
        if (v457 < v62)
        {
          goto LABEL_2048;
        }

        if ((v457 + 1) > v63)
        {
          goto LABEL_2048;
        }

        if (v457 > v457 + 1)
        {
          goto LABEL_2048;
        }

        v458 = (a40 + 2 * v447);
        if (v458 < a40 || (v458 + 1) > a41 || v458 > v458 + 1)
        {
          goto LABEL_2048;
        }

        v459 = *v457;
        v460 = *v458;
        v461 = v459 < v460;
        if (v459 > v460)
        {
          v460 = v459;
        }

        if (v461)
        {
          v462 = *v453;
          v463 = v460 - v459;
          v464 = v459;
          v465 = __C;
          v466 = v58;
          do
          {
            v467 = &v466[v464];
            v468 = &v466[v464 + 1];
            if (&v466[v464] < v58 || v468 > v57 || v467 > v468)
            {
              goto LABEL_2048;
            }

            v471 = (v465 + v464 * 4);
            v472 = v465 + v464 * 4 + 4;
            if (v472 > v1163 || v471 > v472 || (v465 + v464 * 4) < __C)
            {
              goto LABEL_2048;
            }

            *v471 = v462 * *v467;
            v465 = (v465 + 4);
            ++v466;
            --v463;
          }

          while (v463);
        }
      }

      LODWORD(v447) = (v447 + 1);
      v66 = v1156;
    }

    while (v447 <= v59);
  }

  v473 = a20 + 1;
  if ((a20 + 1) > a21)
  {
    goto LABEL_2048;
  }

  if (v473 < a20)
  {
    goto LABEL_2048;
  }

  if ((a20 + 2) > a21)
  {
    goto LABEL_2048;
  }

  if (v473 > a20 + 2)
  {
    goto LABEL_2048;
  }

  v474 = *a20;
  a20[1] = *a20;
  v475 = a23 + 1;
  if ((a23 + 1) > a24)
  {
    goto LABEL_2048;
  }

  if (v475 < a23)
  {
    goto LABEL_2048;
  }

  v476 = v474 * 0.1;
  v477 = (v474 * 0.1) + (*a23 * 0.9);
  *a20 = v477;
  if ((a23 + 2) > a24 || v475 > a23 + 2)
  {
    goto LABEL_2048;
  }

  v478 = v476 + (*v475 * 0.9);
  *v473 = v478;
  if ((a43 & 0xFFFB) == 0)
  {
    if (v477 < 0.25)
    {
      v477 = v477 * 4.0;
      *a20 = v477;
    }

    if (v478 < 0.25)
    {
      *v473 = v478 * 4.0;
    }
  }

  if ((v59 + 1) < v68)
  {
    v479 = (v59 + 1);
    do
    {
      v480 = (v62 + 2 * v479);
      v481 = v480 + 1;
      if (v480 < v62 || v481 > v63 || v480 > v481)
      {
        goto LABEL_2048;
      }

      v484 = (a40 + 2 * v479);
      if (v484 < a40 || (v484 + 1) > a41 || v484 > v484 + 1)
      {
        goto LABEL_2048;
      }

      v485 = *v480;
      v486 = *v484;
      v487 = 1.0e-15;
      if (v485 <= v486)
      {
        v488 = *v484;
      }

      else
      {
        v488 = v485;
      }

      if (v485 < v486)
      {
        v489 = v488 - v485;
        v490 = v1163 + v485;
        v487 = 1.0e-15;
        do
        {
          v66 = (v490 + 1);
          if (v490 < v1163 || v66 > &v1164 || v490 > v66)
          {
            goto LABEL_2048;
          }

          v493 = *v490++;
          v487 = v487 + (v493 * v493);
          --v489;
        }

        while (v489);
      }

      v494 = (v50 + 2 * v479);
      if (v494 < v50)
      {
        goto LABEL_2048;
      }

      if ((v494 + 1) > v48)
      {
        goto LABEL_2048;
      }

      if (v494 > v494 + 1)
      {
        goto LABEL_2048;
      }

      v495 = &dicn[*v494];
      if (v495 < dicn || v495 + 1 > band_len_harm || v495 > v495 + 1)
      {
        goto LABEL_2048;
      }

      v496 = a20;
      if (v479 > 27)
      {
        v496 = a20 + 1;
      }

      if (v485 < v486)
      {
        v497 = sqrtf((v486 - v485) / v487);
        v498 = *v495;
        v499 = v497 * *v495;
        v500 = sqrtf(1.0 - *v496);
        v501 = sqrtf(*v496) * 0.5;
        v502 = 4 * v485;
        v503 = __C;
        v504 = v1163;
        do
        {
          v66 = v504 + v502;
          if ((v504 + v502) < v1163)
          {
            goto LABEL_2048;
          }

          if (v66 + 4 > &v1164 || v66 > v66 + 4)
          {
            goto LABEL_2048;
          }

          v506 = *v66;
          v507 = 31821 * *v60 + 13849;
          *v60 = v507;
          v66 = v503 + v502;
          v508 = v503 + v502 + 4;
          if (v508 > v1163 || v66 > v508 || (v503 + v502) < __C)
          {
            goto LABEL_2048;
          }

          *v66 = (v498 * ((v501 * v507) * 0.000030518)) + ((v500 * v506) * v499);
          ++v485;
          v66 = *v484;
          v503 = (v503 + 4);
          v504 = (v504 + 4);
        }

        while (v485 < v66);
      }

      ++v479;
    }

    while (v479 != v68);
    v477 = *a20;
  }

  *a23 = v477;
  a23[1] = *v473;
  v509 = (a40 + 2 * v1141);
  if (v509 < a40 || (v509 + 1) > a41 || v509 > v509 + 1)
  {
    goto LABEL_2048;
  }

  v510 = 0;
  v511 = 4 * *v509;
  v512 = __C;
  v513 = __C;
  do
  {
    v514 = (v513 + v511 + 568);
    v515 = v513 + v511 + 572;
    if (v515 > v1163)
    {
      goto LABEL_2048;
    }

    if (v514 > v515)
    {
      goto LABEL_2048;
    }

    if (v514 < __C)
    {
      goto LABEL_2048;
    }

    v516 = (v512 + v511 + 564);
    v517 = vcvts_n_f32_u32(v510, 5uLL) + 0.5;
    *v514 = v517 * *v514;
    v518 = v512 + v511 + 568;
    if (v518 > v1163 || v516 > v518 || v516 < __C)
    {
      goto LABEL_2048;
    }

    v519 = v510++;
    *v516 = v517 * *v516;
    v513 = (v513 + 4);
    v512 = (v512 - 4);
  }

  while (v519 < 0xF);
  if (v68 == 33)
  {
    LODWORD(v1179[0]) = 0;
    vDSP_vfill(v1179, &__C[200], 1, 0xA0uLL);
    v45 = v1155;
  }

  v520 = v1145;
  v66 = v1156;
  while (1)
  {
    if (a22 == 32000)
    {
      v62 = v520;
    }

    else
    {
      v62 = 0;
    }

    if (v62 != 1)
    {
      goto LABEL_1331;
    }

    if (a37 < a36 || v1157 < a40 || a44 < 0 || (a37 - a36) >> 1 < v1148 || v63 < v1154 || (v1157 - a40) >> 1 < v1148 || v1148 > (v63 - v1154) >> 1)
    {
      goto LABEL_2048;
    }

    if (!v1143)
    {
      if (a35 == 1)
      {
        v724 = v1167;
        v725 = v1169;
        *(a33 + 64) = v1168;
        *(a33 + 80) = v725;
        *(a33 + 96) = *&v1170[0];
        v726 = v1165;
        *a33 = v1164;
        *(a33 + 16) = v726;
        *(a33 + 32) = v1166;
        *(a33 + 48) = v724;
        if (a33 + 104 < a33)
        {
          goto LABEL_2048;
        }
      }

      v727 = 1.0;
      v728 = 0.0;
      if (v59 >= 8)
      {
        LOWORD(v730) = 0;
        v731 = 0.0;
        LOWORD(v732) = 8;
        do
        {
          v733 = (v45 + 2 * v732);
          v734 = v733 + 1;
          if (v733 < v45 || v734 > v66 || v733 > v734)
          {
            goto LABEL_2048;
          }

          if ((v733 - 1) < v1155 || v733 - 1 > v733)
          {
            goto LABEL_2048;
          }

          v738 = *v733;
          v739 = v738 - *(v733 - 1);
          if (v739 < 0)
          {
            v739 = -v739;
          }

          v731 = v731 + v739;
          v730 = (v738 + v730);
          v732 = (v732 + 1);
          v45 = v1155;
          v66 = v1156;
        }

        while (v732 <= v59);
        v729 = 0.0;
        if (v59 != 8 && v730 >= 1)
        {
          v729 = v731 / v730;
        }

        v740 = 0;
        v741 = v59;
        v742 = 1.0e-15;
        do
        {
          v743 = (v45 + 2 * v741);
          v744 = v743 + 1;
          if (v743 < v45 || v744 > v66 || v743 > v744)
          {
            goto LABEL_2048;
          }

          v747 = &rat[4 * v741];
          if (v747 < rat)
          {
            goto LABEL_2048;
          }

          if (v747 + 1 > reserved_bits_tbl)
          {
            goto LABEL_2048;
          }

          if (v747 > v747 + 1)
          {
            goto LABEL_2048;
          }

          v748 = (a36 + 2 * v741);
          if (v748 < a36 || (v748 + 1) > a36 + 2 * a44 || v748 > v748 + 1)
          {
            goto LABEL_2048;
          }

          v749 = *v748;
          if ((*v747 * v749) <= *v743)
          {
            v750 = (v1154 + 2 * v741);
            if (v750 < v1154)
            {
              goto LABEL_2048;
            }

            if ((v750 + 1) > v1154 + 2 * a44)
            {
              goto LABEL_2048;
            }

            if (v750 > v750 + 1)
            {
              goto LABEL_2048;
            }

            v751 = (a40 + 2 * v741);
            if (v751 < a40 || (v751 + 1) > a40 + 2 * a44 || v751 > v751 + 1)
            {
              goto LABEL_2048;
            }

            v752 = *v750;
            v753 = *v751;
            v754 = 0.0;
            v755 = 1.0e-15;
            v756 = v752 < v753;
            if (v752 > v753)
            {
              v753 = v752;
            }

            if (v756)
            {
              v757 = v752;
              v758 = v753 - v752;
              v759 = __C + v757;
              v755 = 1.0e-15;
              while (v759 + 1 <= v61 && v759 <= v759 + 1 && v759 >= __C)
              {
                v760 = *v759++;
                v761 = fabsf(v760);
                v755 = v755 + v761;
                if (v761 > v754)
                {
                  v754 = v761;
                }

                if (!--v758)
                {
                  goto LABEL_1406;
                }
              }

              goto LABEL_2048;
            }

LABEL_1406:
            v742 = v742 + ((v754 * v749) / v755);
            ++v740;
          }

          v762 = v741--;
          v45 = v1155;
          v66 = v1156;
        }

        while (v762 > 8);
        if (v740)
        {
          v727 = (v740 + v740) / v742;
        }
      }

      else
      {
        v729 = 0.0;
      }

      if (v59)
      {
        v728 = (v727 * 5.0) / v59;
      }

      if (a44 < 1)
      {
        goto LABEL_1325;
      }

      v763 = v66;
      v764 = 0;
      v765 = (a34 + 26);
      v1157 = &v1164 + 2;
      v1153 = a33 + 4;
      v66 = a33 + 104;
      LODWORD(v68) = 13849;
      v59 = __C;
      v766 = v727;
      while (1)
      {
        v767 = (v45 + 2 * v764);
        v768 = v767 + 1;
        if (v767 < v45 || v768 > v763 || v767 > v768)
        {
          goto LABEL_2048;
        }

        v60 = &a34[v764];
        if (*v767)
        {
          v771 = *(a36 + 2 * v764);
          v772 = 0.0;
          if ((v771 * 1.5) > *v767)
          {
            v773 = &v1164 + 4 * v764;
            if (v773 < &v1164 || v773 + 4 > v1170 + 8 || v773 > v773 + 4)
            {
              goto LABEL_2048;
            }

            v774 = *(&v1164 + v764);
            v775 = (v774 * v774) * v771;
            v50 = *(v1154 + 2 * v764);
            v45 = *(a40 + 2 * v764);
            v772 = 0.0;
            if (*(v1154 + 2 * v764) < v45)
            {
              v776 = *(a40 + 2 * v764) - v50;
              v777 = __C + v50;
              v778 = 0.0;
              v779 = 3.4028e38;
              while (v777 + 1 <= v61 && v777 <= v777 + 1 && v777 >= __C)
              {
                v780 = *v777++;
                v781 = v780;
                v782 = fabsf(v780);
                if (v780 != 0.0 && v782 < v779)
                {
                  v779 = v782;
                }

                if (v782 > v778)
                {
                  v778 = v782;
                }

                v775 = v775 - (v781 * v781);
                if (!--v776)
                {
                  v784 = v779 * 0.5;
                  goto LABEL_1470;
                }
              }

              goto LABEL_2048;
            }

            v784 = 1.7014e38;
            v778 = 0.0;
LABEL_1470:
            if (v775 > 0.0)
            {
              if (v764)
              {
                v799 = v1170;
                v800 = &v1169 + 3;
                v63 = v1170 + 4;
                v801 = (a33 + 92);
                v802 = (a33 + 96);
                v803 = (a33 + 100);
                if (v764 != 25)
                {
                  v804 = v764 - 1;
                  v805 = &v1164 + 4 * v764 - 4;
                  if (v805 < &v1164)
                  {
                    goto LABEL_2048;
                  }

                  if (v805 + 4 > v1170 + 8)
                  {
                    goto LABEL_2048;
                  }

                  if (v805 > v805 + 4)
                  {
                    goto LABEL_2048;
                  }

                  v806 = &v1164 + v764 + 1;
                  if (v806 < &v1164)
                  {
                    goto LABEL_2048;
                  }

                  if (v806 + 1 > v1170 + 2)
                  {
                    goto LABEL_2048;
                  }

                  if (v806 > v806 + 1)
                  {
                    goto LABEL_2048;
                  }

                  v801 = (a33 + 4 * v804);
                  if (v801 < a33)
                  {
                    goto LABEL_2048;
                  }

                  if ((v801 + 1) > v66)
                  {
                    goto LABEL_2048;
                  }

                  if (v801 > v801 + 1)
                  {
                    goto LABEL_2048;
                  }

                  v802 = (a33 + 4 * v764);
                  if (v802 < a33)
                  {
                    goto LABEL_2048;
                  }

                  if ((v802 + 1) > v66)
                  {
                    goto LABEL_2048;
                  }

                  if (v802 > v802 + 1)
                  {
                    goto LABEL_2048;
                  }

                  v803 = (a33 + 4 * (v764 + 1));
                  if (v803 < a33 || (v803 + 1) > v66 || v803 > v803 + 1)
                  {
                    goto LABEL_2048;
                  }

                  v807 = v774 + *(&v1164 + v804);
                  v808 = *v806;
LABEL_1491:
                  v809 = v807 + v808;
                  if (v729 > 0.3 || (v774 * 4.0) < v778)
                  {
                    v772 = sqrt((v775 / v771)) * (v727 * v809) / v778;
                  }

                  else
                  {
                    v772 = v766 * sqrtf(v775 / v771);
                    if ((v774 * 2.5) < v778)
                    {
                      v772 = v772 * (v772 / v778);
                    }

                    v766 = v728 + v766;
                  }

                  v811 = *v801;
                  v812 = *v802;
                  v813 = *v803;
                  if (v772 > v784)
                  {
                    v772 = v784;
                  }

                  if (a35 == 1)
                  {
                    if (v60 < a34 || v60 + 4 > v765 || v60 > v60 + 4)
                    {
                      goto LABEL_2048;
                    }

                    *v60 = v772;
                  }

                  v814 = (v811 + v812) + v813;
                  if (v814 > (v809 * 0.5) && !a32 && v814 < (v809 + v809))
                  {
                    if (v60 < a34 || v60 + 4 > v765 || v60 > v60 + 4)
                    {
                      goto LABEL_2048;
                    }

                    v772 = (*v60 * 0.5) + (v772 * 0.5);
                  }

                  if (v50 < v45)
                  {
                    v815 = v50;
                    v816 = __C;
                    v817 = v58;
                    while (1)
                    {
                      v818 = &v817[v815];
                      v819 = &v817[v815 + 1];
                      v820 = &v817[v815] < v58 || v819 > v57;
                      if (v820 || v818 > v819)
                      {
                        goto LABEL_2048;
                      }

                      if (*v818 == 0.0)
                      {
                        v822 = 31821 * *v1160 + 13849;
                        *v1160 = v822;
                        v823 = (v816 + v815 * 4);
                        v63 = v816 + v815 * 4 + 4;
                        if (v63 > v61 || v823 > v63 || (v816 + v815 * 4) < __C)
                        {
                          goto LABEL_2048;
                        }

                        *v823 = v772 * vcvts_n_f32_s32(v822, 0xFuLL);
                        v45 = *(a40 + 2 * v764);
                      }

                      ++v50;
                      v816 = (v816 + 4);
                      ++v817;
                      if (v50 >= v45)
                      {
                        goto LABEL_1529;
                      }
                    }
                  }

                  goto LABEL_1529;
                }
              }

              else
              {
                v800 = &v1164;
                v799 = &v1164 + 1;
                v802 = (a33 + 4);
                v63 = &v1164 + 8;
                v801 = a33;
                v803 = (a33 + 8);
              }

              v807 = *v800 + *v799;
              v808 = *v63;
              goto LABEL_1491;
            }
          }
        }

        else
        {
          v45 = *(a40 + 2 * v764);
          if (*(v1154 + 2 * v764) < v45)
          {
            v785 = *(v1154 + 2 * v764);
            v786 = &v1164 + 4 * v764;
            v789 = v786 + 4 <= v1170 + 8 && v786 <= v786 + 4 && v786 >= &v1164;
            v790 = v785;
            v50 = __C;
            v791 = v58;
            do
            {
              v792 = &v791[v790];
              v793 = &v791[v790 + 1];
              v794 = &v791[v790] < v58 || v793 > v57;
              if (v794 || v792 > v793)
              {
                goto LABEL_2048;
              }

              if (*v792 == 0.0)
              {
                v63 = 31821 * *v1160 + 13849;
                *v1160 = 31821 * *v1160 + 13849;
                v796 = (v50 + v790 * 4);
                v45 = v50 + v790 * 4 + 4;
                if (v45 > v61)
                {
                  goto LABEL_2048;
                }

                if (v796 > v45)
                {
                  goto LABEL_2048;
                }

                if (v50 + v790 * 4 < __C)
                {
                  goto LABEL_2048;
                }

                v797 = vcvts_n_f32_s32(v63, 0xFuLL);
                *v796 = v797;
                if (!v789)
                {
                  goto LABEL_2048;
                }

                *v796 = *(&v1164 + v764) * v797;
                v45 = *(a40 + 2 * v764);
              }

              ++v785;
              v50 += 4;
              ++v791;
            }

            while (v785 < v45);
          }

          v798 = &v1164 + v764;
          if (v798 < &v1164 || v798 + 1 > v1170 + 2 || v798 > v798 + 1)
          {
            goto LABEL_2048;
          }

          v772 = *v798;
        }

LABEL_1529:
        if (!a32 && v764 == 25)
        {
          v824 = *(a33 + 100);
          v825 = v824 > (*(v1170 + 1) * 0.5) && v824 < (*(v1170 + 1) + *(v1170 + 1));
          if (v825 && v729 <= 0.3 && (*(v1154 + 50) + 12) < *(a40 + 50))
          {
            v826 = (*(v1154 + 50) + 12) + 1;
            v827 = __C + (*(v1154 + 50) + 12);
            v828 = *(a40 + 50);
            v829 = a26;
            while (v827 + 1 <= v61)
            {
              if (v827 > v827 + 1)
              {
                break;
              }

              if (v827 < __C)
              {
                break;
              }

              if (v829 < a26)
              {
                break;
              }

              v830 = v829 + 1;
              if (v829 + 1 > a26 + 20 || v829 > v830)
              {
                break;
              }

              v831 = *v827;
              v832 = fabsf(*v827);
              v833 = fabsf(*v829);
              v834 = v833 * 4.0 >= v832 && v833 * 0.25 <= v832;
              if (!v834 || (v835 = *v767, v836 = *a25, v63 = (v836 * v835), !v63) && v835 != -v836)
              {
                v837 = v831 <= 0.0;
                if (v831 <= 0.0)
                {
                  v838 = v832;
                }

                else
                {
                  v838 = v831;
                }

                if (v837)
                {
                  v839 = -0.5;
                }

                else
                {
                  v839 = 0.5;
                }

                v840 = (v838 + v833) * v839;
                *v827 = v840;
              }

              v533 = v828 == v826++;
              ++v827;
              v829 = v830;
              if (v533)
              {
                goto LABEL_1535;
              }
            }

            goto LABEL_2048;
          }
        }

LABEL_1535:
        if (v60 < a34 || v60 + 4 > v765 || v60 > v60 + 4)
        {
          goto LABEL_2048;
        }

        *v60 = v772;
        ++v764;
        v45 = v1155;
        v763 = v1156;
        if (v764 == a44)
        {
          goto LABEL_1325;
        }
      }
    }

    if (a44 >= 1)
    {
      v696 = 0;
      do
      {
        v697 = (v45 + 2 * v696);
        v698 = v697 + 1;
        v699 = v697 < v45 || v698 > v66;
        if (v699 || v697 > v698)
        {
          goto LABEL_2048;
        }

        if (!*v697 && *(v1154 + 2 * v696) < *(a40 + 2 * v696))
        {
          v701 = *(v1154 + 2 * v696);
          v702 = &v1164 + 4 * v696;
          v705 = v702 + 4 <= v1170 + 8 && v702 <= v702 + 4 && v702 >= &v1164;
          v706 = 4 * *(v1154 + 2 * v696);
          do
          {
            v707 = 31821 * *v1160 + 13849;
            *v1160 = v707;
            v708 = __C + v706 + 4;
            v709 = v708 > v61 || __C + v706 > v708;
            if (v709 || (__C + v706) < __C)
            {
              goto LABEL_2048;
            }

            v711 = vcvts_n_f32_s32(v707, 0xFuLL);
            *(__C + v701) = v711;
            if (!v705)
            {
              goto LABEL_2048;
            }

            *(__C + v701++) = *(&v1164 + v696) * v711;
            v706 += 4;
          }

          while (v701 < *(a40 + 2 * v696));
        }

        ++v696;
        v45 = v1155;
        v66 = v1156;
      }

      while (v696 != a44);
    }

    LODWORD(v1179[0]) = 0;
    vDSP_vfill(v1179, a34, 1, 0x1AuLL);
    v45 = v1155;
LABEL_1325:
    v712 = v1167;
    v713 = v1169;
    *(a33 + 64) = v1168;
    *(a33 + 80) = v713;
    *(a33 + 96) = *&v1170[0];
    v714 = v1165;
    *a33 = v1164;
    *(a33 + 16) = v714;
    *(a33 + 32) = v1166;
    *(a33 + 48) = v712;
    if (a33 + 104 < a33)
    {
      goto LABEL_2048;
    }

    v715 = __C[76];
    v716 = __C[78];
    *(a26 + 2) = __C[77];
    *(a26 + 3) = v716;
    *(a26 + 4) = __C[79];
    *a26 = __C[75];
    *(a26 + 1) = v715;
    if (a26 + 20 < a26)
    {
      goto LABEL_2048;
    }

    v717 = (v45 + 50);
    if (v45 + 50 < v45 || v1155 + 52 > v1156 || v717 > v1155 + 52)
    {
      goto LABEL_2048;
    }

    *a25 = *v717;
    v45 = v1155;
    v66 = v1156;
LABEL_1331:
    if (v1147)
    {
      v718 = a23 + 1;
      if ((a23 + 1) > a24)
      {
        goto LABEL_2048;
      }

      if (v718 < a23)
      {
        goto LABEL_2048;
      }

      *a23 = 0.1;
      if ((a23 + 2) > a24 || v718 > a23 + 2)
      {
        goto LABEL_2048;
      }

      *v718 = 0.1;
    }

    if ((v62 & 1) == 0)
    {
      v68 = v1179;
      LODWORD(v1179[0]) = 0;
      v62 = v66;
      vDSP_vfill(v1179, a34, 1, 0x1AuLL);
      LODWORD(v1179[0]) = 0;
      vDSP_vfill(v1179, a33, 1, 0x1AuLL);
      v66 = v62;
      v45 = v1155;
    }

    v719 = v1144 ^ 1;
    if (a22 > 32000)
    {
      v719 = 1;
    }

    if ((v719 & 1) != 0 || (v720 = (v45 + 50), v45 + 50 >= v45) && v45 + 52 <= v66 && v720 <= v45 + 52 && (*a25 = *v720, v721 = __C[76], v722 = __C[78], *(a26 + 2) = __C[77], *(a26 + 3) = v722, *(a26 + 4) = __C[79], *a26 = __C[75], *(a26 + 1) = v721, a26 + 20 >= a26))
    {
      if (v57 >= v58 && v57 - v58 > 0xEFF)
      {
        result = memmove(v58, __C, 0xF00uLL);
        if (v58 + 960 >= v58)
        {
          return result;
        }
      }
    }

    while (1)
    {
LABEL_2048:
      while (1)
      {
        __break(0x5519u);
LABEL_2049:
        if (v1153 < 1)
        {
          break;
        }

        v1109 = v1153;
        v1110 = v1179;
        v1111 = 1.0;
        while (1)
        {
          v1112 = v1110 + 1;
          v1113 = v1110 < v1179 || v1112 > v62;
          v1114 = v1113 || v1110 > v1112;
          v1115 = v50 + 4;
          v1116 = !v1114 && v50 >= __C;
          v1117 = !v1116 || v1115 > v61;
          if (v1117 || v50 > v1115)
          {
            break;
          }

          v1119 = *v1110++;
          *v50 = ((1.0 - v1111) * *v50) + (v1119 * v1111);
          v50 += 4;
          v1111 = v1111 - (1.0 / v1153);
          if (!--v1109)
          {
            goto LABEL_2068;
          }
        }
      }

LABEL_2068:
      if (a45 >= v68)
      {
        break;
      }

      while (1)
      {
        v1120 = (v45 + 2 * v60);
        v1121 = v1120 + 1;
        v1122 = v1120 < v45 || v1121 > v66;
        if (v1122 || v1120 > v1121)
        {
          break;
        }

        if (*v1120)
        {
          v1124 = (a40 + 2 * v60);
          if ((v1124 - 1) < a40 || v1124 > v1157 || v1124 - 1 > v1124 || v1124 + 1 > v1157 || v1124 > v1124 + 1)
          {
            goto LABEL_2048;
          }

          v1125 = *(v1124 - 1);
          v1126 = *v1124;
          v1127 = v1125 < v1126;
          if (v1125 > v1126)
          {
            v1126 = v1125;
          }

          if (v1127)
          {
            v1128 = v1126 - v1125;
            v1129 = 4 * v1125;
            v1130 = __C;
            v1131 = v1179 - 4 * v1146;
            do
            {
              v1132 = &v1131[v1129];
              if (&v1131[v1129] < v1179)
              {
                goto LABEL_2048;
              }

              v1133 = (v1132 + 4) > v62 || v1132 > v1132 + 4;
              v1134 = (v1130 + v1129);
              v1135 = v1130 + v1129 + 4;
              v1136 = !v1133 && v1134 >= __C;
              v1137 = !v1136 || v1135 > v61;
              if (v1137 || v1134 > v1135)
              {
                goto LABEL_2048;
              }

              *v1134 = *v1132;
              v1130 = (v1130 + 4);
              v1131 += 4;
            }

            while (--v1128);
          }
        }

        if (++v60 == v68)
        {
          goto LABEL_1280;
        }
      }
    }

LABEL_1280:
    v520 = v1145;
  }
}

unint64_t env_adj(unint64_t result, unint64_t a2, int a3, int a4, unint64_t a5, unint64_t a6, unint64_t a7, unint64_t a8, float a9)
{
  if (a4 < 0)
  {
    return result;
  }

  LOWORD(v9) = 0;
  v10 = 0;
  v11 = 0;
  LOWORD(v12) = 0;
  v13 = 0;
  do
  {
    while (1)
    {
      v14 = (a7 + 2 * v13);
      v15 = v14 + 1;
      if (v14 < a7 || v15 > a8 || v14 > v15)
      {
        goto LABEL_107;
      }

      v18 = (result + 2 * v13);
      if (v18 < result)
      {
        goto LABEL_107;
      }

      v19 = v18 + 1;
      if ((v18 + 1) > a2 || v18 > v19)
      {
        goto LABEL_107;
      }

      v20 = *v14 >> 3;
      v21 = *v18;
      if (a3 != 640)
      {
        v23 = 1.0;
        if (v21 - 1 <= 0x26)
        {
          v24 = &att_step[2 * v20];
          v25 = (v24 - 2);
          if (v24 - 2 < att_step || v24 > gain_att || v25 > v24)
          {
            goto LABEL_107;
          }

          v28 = (((v21 * *v25) + 0.5) - 1);
          if (v28 <= 39)
          {
            v29 = &gain_att[v28];
            v30 = v29 + 1;
            if (v29 < gain_att || v30 > &mean_gp || v29 > v30)
            {
              goto LABEL_107;
            }

            v23 = *v29;
          }
        }

        v33 = (a5 + 4 * v13);
        if (v33 < a5 || (v33 + 1) > a6 || v33 > v33 + 1)
        {
          goto LABEL_107;
        }

        *v33 = v23;
        goto LABEL_41;
      }

      if (*v18)
      {
        break;
      }

      if (v20 > 2)
      {
        if (a4 > v9)
        {
          v42 = v18 - 1;
          if ((v18 - 1) < result || v42 > v18)
          {
            goto LABEL_107;
          }

          if (*v42)
          {
            if ((v18 + 2) > a2 || v19 > v18 + 2)
            {
              goto LABEL_107;
            }

            if (*v19)
            {
LABEL_78:
              v43 = (a5 + 4 * v13);
              if (v43 < a5 || (v43 + 1) > a6 || v43 > v43 + 1)
              {
                goto LABEL_107;
              }

              *v43 = 1057635697;
              goto LABEL_89;
            }
          }
        }

        goto LABEL_85;
      }

      if (v9 < 1)
      {
        goto LABEL_85;
      }

      v37 = result + 2 * v9;
      v38 = (v37 - 2);
      if (v37 - 2 < result || v37 > a2 || v38 > v37)
      {
        goto LABEL_107;
      }

      if (!*v38)
      {
        goto LABEL_78;
      }

      v39 = (v37 + 2);
      if (v37 + 2 < result)
      {
        goto LABEL_107;
      }

      v40 = v37 + 4;
      if (v40 > a2 || v39 > v40)
      {
        goto LABEL_107;
      }

      if (!*v39)
      {
        if ((v18 + 2) > a2 || v19 > v18 + 2)
        {
          goto LABEL_107;
        }

        if (!*v19)
        {
          goto LABEL_78;
        }

LABEL_85:
        v44 = (a5 + 4 * v13);
        if (v44 < a5 || (v44 + 1) > a6 || v44 > v44 + 1)
        {
          goto LABEL_107;
        }

        *v44 = 1060655596;
        goto LABEL_89;
      }

      v41 = (a5 + 4 * v13);
      if (v41 < a5 || (v41 + 1) > a6 || v41 > v41 + 1)
      {
        goto LABEL_107;
      }

      *v41 = 1052266988;
LABEL_89:
      if (!v10)
      {
        v11 = v9;
      }

      LOWORD(v12) = v12 + 1;
      v45 = v9 + 1;
      v9 = (v9 + 1);
      v13 = v45;
      v10 = 1;
      if (v9 > a4)
      {
        goto LABEL_94;
      }
    }

    v22 = (a5 + 4 * v13);
    if (v22 < a5 || (v22 + 1) > a6 || v22 > v22 + 1)
    {
      goto LABEL_107;
    }

    *v22 = 1065353216;
    if (v10 == 1)
    {
      LODWORD(v12) = v12;
      if (v12 <= 6)
      {
        LODWORD(v12) = 6;
      }

      v34 = (v12 - 6) * 0.2;
      if (v34 > 1.0)
      {
        v34 = 1.0;
      }

      if (v11 < v9)
      {
        v12 = v9 - v11;
        v35 = (a5 + 4 * v11);
        while (v35 >= a5 && (v35 + 1) <= a6 && v35 <= v35 + 1)
        {
          v36 = v34 + ((1.0 - v34) * *v35);
          if (v36 <= a9)
          {
            v36 = a9;
          }

          *v35++ = v36;
          if (!--v12)
          {
            goto LABEL_19;
          }
        }

        goto LABEL_107;
      }

      LOWORD(v12) = 0;
    }

LABEL_19:
    v10 = 0;
LABEL_41:
    LOWORD(v13) = v9 + 1;
    v9 = (v9 + 1);
    v13 = v13;
  }

  while (v9 <= a4);
  if (v10 != 1)
  {
    return result;
  }

LABEL_94:
  v46 = v12;
  if (v12 <= 6)
  {
    v46 = 6;
  }

  v47 = (v46 - 6) * 0.2;
  if (v47 > 1.0)
  {
    v47 = 1.0;
  }

  if (v9 > v11)
  {
    v48 = v9 - v11;
    for (i = (a5 + 4 * v11); i >= a5 && (i + 1) <= a6 && i <= i + 1; ++i)
    {
      v50 = v47 + ((1.0 - v47) * *i);
      if (v50 <= a9)
      {
        v50 = a9;
      }

      *i = v50;
      if (!--v48)
      {
        return result;
      }
    }

LABEL_107:
    __break(0x5519u);
  }

  return result;
}

float *hq_swb_harmonic_calc_norm_envelop(float *result, unint64_t a2, unint64_t a3, unint64_t a4, int a5)
{
  v5 = (a5 / 2);
  if (a5 <= 1)
  {
    v7 = 0;
    v18 = 202 - a5;
LABEL_20:
    v19 = 0;
    v8 = v7;
LABEL_21:
    while (1)
    {
      v20 = (a3 + 4 * v8);
      v21 = v20 + 1;
      v22 = v20 < a3 || v21 > a4;
      if (v22 || v20 >= v21)
      {
        break;
      }

      *v20 = 1.0e-15;
      if (a5 >= 1)
      {
        v24 = &result[v19];
        v25 = a5;
        v26 = 1.0e-15;
        while (v24 >= result && (v24 + 1) <= a2 && v24 <= v24 + 1)
        {
          v27 = *v24++;
          v26 = v26 + fabsf(v27);
          *v20 = v26;
          if (!--v25)
          {
            ++v8;
            if (++v19 != v18)
            {
              goto LABEL_21;
            }

            v8 = v8;
            goto LABEL_38;
          }
        }

        break;
      }

      ++v8;
      if (++v19 == v18)
      {
        return result;
      }
    }
  }

  else
  {
    v6 = 0;
    v7 = a5 / 2;
    v8 = (a5 / 2);
    v9 = v8;
    while (1)
    {
      v10 = (a3 + 4 * v6);
      v11 = v10 + 1;
      v12 = v10 < a3 || v11 > a4;
      if (v12 || v10 >= v11)
      {
        break;
      }

      *v10 = 1.0e-15;
      if (v6 > a5 / -2)
      {
        v14 = result;
        v15 = v9;
        v16 = 1.0e-15;
        while (v14 >= result && (v14 + 1) <= a2 && v14 <= v14 + 1)
        {
          v17 = *v14++;
          v16 = v16 + fabsf(v17);
          *v10 = v16;
          if (!--v15)
          {
            goto LABEL_16;
          }
        }

        break;
      }

LABEL_16:
      ++v6;
      ++v9;
      if (v6 == v5)
      {
        v18 = 202 - a5;
        if (a5 <= 201)
        {
          goto LABEL_20;
        }

LABEL_38:
        v28 = 0;
        v29 = 202 - v5;
        v30 = v18;
        v31 = &result[v18];
        for (i = a5; ; --i)
        {
          v33 = (a3 + 4 * v8);
          v34 = v33 + 1;
          v35 = v33 < a3 || v34 > a4;
          if (v35 || v33 >= v34)
          {
            break;
          }

          *v33 = 1.0e-15;
          if (v28 < a5)
          {
            v37 = v31;
            v38 = i;
            v39 = 1.0e-15;
            while (v37 >= result && (v37 + 1) <= a2 && v37 <= v37 + 1)
            {
              v40 = *v37++;
              v39 = v39 + fabsf(v40);
              *v33 = v39;
              if (!--v38)
              {
                goto LABEL_52;
              }
            }

            goto LABEL_54;
          }

LABEL_52:
          ++v8;
          ++v30;
          ++v28;
          ++v31;
          if (v30 >= v29)
          {
            return result;
          }
        }

        break;
      }
    }
  }

LABEL_54:
  __break(0x5519u);
  return result;
}

uint64_t huff_dec(uint64_t result, int a2, uint64_t a3, __int16 a4, unint64_t a5, unint64_t a6, unint64_t a7, unint64_t a8, unint64_t a9, unint64_t a10, _WORD *a11, unint64_t a12)
{
  v42 = result;
  if (a2 < 1)
  {
    v16 = 0;
  }

  else
  {
    LOWORD(v15) = 0;
    v16 = 0;
    v17 = 0;
    v19 = ~(-1 << a3);
    while (2)
    {
      v20 = a3;
      v21 = a3 - v16;
      v22 = v17 << v21;
      result = get_next_indice(v42, v21);
      v17 = v19 & v22 | result;
      v23 = (v19 & v22 | result);
      v16 = a4;
      do
      {
        v24 = (a5 + 2 * --v16);
        v25 = v24 + 1;
        if (v24 < a5 || v25 > a6 || v24 >= v25)
        {
          goto LABEL_32;
        }

        v28 = *v24;
        v29 = __OFSUB__(v23, v28);
        v30 = v23 - v28;
      }

      while (v30 < 0 != v29);
      v31 = (a7 + 2 * v16);
      if (v31 < a7 || (v31 + 1) > a8 || v31 > v31 + 1 || ((v32 = (a9 + 2 * (*v31 + (v30 >> v16))), v33 = v32 + 1, v32 >= a9) ? (v34 = v33 > a10) : (v34 = 1), !v34 ? (v35 = v32 >= v33) : (v35 = 1), (v36 = a11 + 1, !v35) ? (v37 = v36 >= a11) : (v37 = 0), v37 ? (v38 = v36 > a12) : (v38 = 1), v38))
      {
LABEL_32:
        __break(0x5519u);
        return result;
      }

      *a11 = *v32;
      v15 = (v15 + 1);
      ++a11;
      a3 = v20;
      if (v15 < a2)
      {
        continue;
      }

      break;
    }
  }

  *(v42 + 5160) -= v16;
  return result;
}

uint64_t hdecnrm_context(uint64_t result, int a2, _WORD *a3, _WORD *a4, unint64_t a5)
{
  v5 = &a3[a2];
  v6 = a3 + 1;
  if ((a3 + 1) <= v5 && v6 >= a3)
  {
    if (a2 >= 2)
    {
      v11 = result;
      LOWORD(result) = *a3 + 3;
      v12 = a2 - 1;
      do
      {
        v15 = (v6 + 1) <= v5 && v6 < v6 + 1 && v6 >= a3;
        if (result < 18)
        {
          if (result > 12)
          {
            result = decode_huff_context(v11, hetable, &scaleTable_cn_only, a4, a5);
            if (!v15)
            {
              goto LABEL_26;
            }
          }

          else
          {
            result = decode_huff_context(v11, hntable, hetable, a4, a5);
            if (!v15)
            {
              goto LABEL_26;
            }
          }
        }

        else
        {
          result = decode_huff_context(v11, hntable, hetable, a4, a5);
          if (!v15)
          {
            goto LABEL_26;
          }

          result = (31 - result);
        }

        *v6++ = result;
        --v12;
      }

      while (v12);
    }
  }

  else
  {
LABEL_26:
    __break(0x5519u);
  }

  return result;
}

uint64_t decode_huff_context(uint64_t a1, __int16 *a2, unint64_t a3, _WORD *a4, unint64_t a5)
{
  v9 = (a4 + 1) <= a5 && a4 + 1 >= a4;
  v10 = v9;
  do
  {
    v11 = a2 + 1;
    if ((a2 + 1) > a3 || a2 > v11)
    {
      break;
    }

    LODWORD(v11) = *a2;
    if (v11 < 1)
    {
      return -v11;
    }

    if (!v10)
    {
      break;
    }

    *a4 += *a2 & 0xF;
    v13 = *a2 >> 4;
    v11 = &a2[v13 + get_next_indice(a1, *a2 & 0xF)];
    v9 = v11 >= a2;
    a2 = v11;
  }

  while (v9);
  __break(0x5519u);
  return -v11;
}

uint64_t decode_huff_8s(uint64_t a1, _WORD *a2, unint64_t a3)
{
  v6 = (a2 + 1) <= a3 && a2 + 1 >= a2;
  v7 = v6;
  v8 = &hestable;
  do
  {
    if (v8 + 1 > sort_660 || v8 > v8 + 1)
    {
      break;
    }

    v3 = *v8;
    if (*v8 < 1)
    {
      return -v3;
    }

    if (!v7)
    {
      break;
    }

    *a2 += *v8 & 0xF;
    next_indice = get_next_indice(a1, v3 & 0xF);
    v6 = &v8[(v3 >> 4) + next_indice] >= v8;
    v8 += (v3 >> 4) + next_indice;
  }

  while (v6);
  __break(0x5519u);
  return -v3;
}

uint64_t p2a_threshold_dequant(uint64_t result, unint64_t a2, unint64_t a3, int a4, uint64_t a5)
{
  v5 = a5;
  v8 = result;
  v9 = a4 - a5;
  if (a4 - a5 >= 1)
  {
    v10 = 0;
    do
    {
      v11 = (a2 + 2 * v10);
      v12 = v11 + 1;
      v13 = v11 < a2 || v12 > a3;
      if (v13 || v11 >= v12)
      {
        goto LABEL_20;
      }

      *v11 = 1;
    }

    while (v9 > ++v10);
  }

  if (a4 > v9)
  {
    v15 = a4 - v9;
    for (i = (a2 + 2 * v9); ; ++i)
    {
      result = get_next_indice(v8, 1);
      if (i < a2 || (i + 1) > a3 || i > i + 1)
      {
        break;
      }

      *i = result;
      if (!--v15)
      {
        return v5;
      }
    }

LABEL_20:
    __break(0x5519u);
    return result;
  }

  return 0;
}