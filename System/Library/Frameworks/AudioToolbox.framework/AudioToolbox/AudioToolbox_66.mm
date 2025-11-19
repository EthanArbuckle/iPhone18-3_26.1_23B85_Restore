uint64_t CNoiseSuppressorV3::speex_preprocess_run_ns_freq(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v157 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 4);
  v7 = v6;
  v127 = *(a1 + 152);
  v154 = 1028443341;
  v155 = 0;
  v153 = 1065772646;
  v152 = 0x40000000;
  v151 = 0;
  v150 = 897988541;
  __B = 1.0;
  v148 = 0;
  v147 = 0.0;
  v8 = *a2;
  v9 = *(a1 + 656);
  LODWORD(__Z.realp) = 1191182336;
  MEMORY[0x1E12BE940](v8, 1, &__Z, v9, 1, v6);
  v10 = a2[1];
  v11 = *(a1 + 664);
  LODWORD(__Z.realp) = 1191182336;
  v12 = MEMORY[0x1E12BE940](v10, 1, &__Z, v11, 1, v6);
  if (a3 && *(a1 + 428) == 2)
  {
    v14 = *a3;
    LODWORD(__Z.realp) = 1191182336;
    MEMORY[0x1E12BE940](v14, 1, &__Z, v14, 1, v6);
    v15 = *(a3 + 8);
    LODWORD(__Z.realp) = 1191182336;
    v12 = MEMORY[0x1E12BE940](v15, 1, &__Z, v15, 1, v6);
  }

  v129 = &v124;
  v16 = *(a1 + 560);
  v17 = *(a1 + 8) * 30.0;
  *&v13 = v6;
  v128 = v13;
  if (v16 + 1 < (v17 / v6))
  {
    v18 = v16 + 1;
  }

  else
  {
    v18 = (v17 / v6);
  }

  *(a1 + 560) = v18;
  ++*(a1 + 568);
  v19 = *(a1 + 12);
  HIDWORD(v151) = *(a1 + 412);
  *&v151 = 1.0 - *(&v151 + 1);
  v155 = *(a1 + 424);
  v130 = (v19 + v6);
  MEMORY[0x1EEE9AC00](v12);
  v21 = (&v124 - ((v20 + 15) & 0x7FFFFFFF0));
  MEMORY[0x1EEE9AC00](v22);
  v131 = (&v124 - v23);
  v24 = 4 * v6;
  MEMORY[0x1EEE9AC00](v25);
  v26 = (&v124 - ((4 * v6 + 15) & 0x7FFFFFFF0));
  MEMORY[0x1EEE9AC00](v27);
  v29 = (&v124 - v28);
  CNoiseSuppressorV4::preprocess_analysis_freq(a1, *(a1 + 656), *(a1 + 664));
  if (*(a1 + 428) == 2)
  {
    CNoiseSuppressorV4::preprocess_analysis_sec_freq(a1, *a3, *(a3 + 8));
  }

  CNoiseSuppressorV4::update_noise_prob(a1);
  v30 = v131;
  MEMORY[0x1E12BE940](*(a1 + 152), 1, &v151 + 4, v131, 1, v6);
  MEMORY[0x1E12BE8F0](*(a1 + 200), 1, &v151, v30, 1, v30, 1, v6);
  MEMORY[0x1E12BE940](*(a1 + 288), 1, &v155, v21, 1, v6);
  MEMORY[0x1E12BE9A0](v21, 1, *(a1 + 152), 1, v21, 1, v6);
  vDSP_vmax(*(a1 + 304), 1, v21, 1, v21, 1, v6);
  if (v6 < 1)
  {
    if (*(a1 + 428) == 2)
    {
      LODWORD(__Z.realp) = 0;
      v33 = 0;
      v34 = 0.0;
      goto LABEL_25;
    }

    goto LABEL_34;
  }

  v31 = 0;
  do
  {
    if (v21[v31 / 4] <= 0.0)
    {
      v32 = *(a1 + 152);
LABEL_15:
      *(*(a1 + 200) + v31) = v32[v31 / 4];
      goto LABEL_16;
    }

    v32 = v30;
    if (*(*(a1 + 272) + v31) < (*(a1 + 416) * *(*(a1 + 288) + v31)))
    {
      goto LABEL_15;
    }

LABEL_16:
    v31 += 4;
  }

  while (v24 != v31);
  if (*(a1 + 428) != 2)
  {
LABEL_34:
    memcpy(*(a1 + 192), *(a1 + 200), 4 * v6);
    goto LABEL_72;
  }

  LODWORD(__Z.realp) = 0;
  v33 = 0;
  v34 = 0.0;
  v35 = *(a1 + 304);
  v36 = *(a1 + 312);
  __asm { FMOV            V2.2S, #1.0 }

  v42 = v6;
  v43 = *(a1 + 320);
  do
  {
    v44 = *v35++;
    v45.i32[0] = v44;
    v45.i32[1] = *v36++;
    v33 = vbsl_s8(vcgtz_f32(v45), vadd_f32(v33, _D2), v33);
    v46 = *v43++;
    if (v46 > 0.0)
    {
      v34 = v34 + 1.0;
    }

    --v42;
  }

  while (v42);
LABEL_25:
  v47 = *&v128;
  v48 = vdiv_f32(v33, vdup_lane_s32(*&v128, 0));
  *(a1 + 504) = v48;
  v49 = v34 / v47;
  *(a1 + 512) = v49;
  *(a1 + 516) = v48.f32[1] - v49;
  v146 = 0.0;
  v156 = (*(a1 + 336) - *(a1 + 632)) / (*(a1 + 636) - *(a1 + 632));
  MEMORY[0x1E12BE940](*(a1 + 160), 1, &v153, v21, 1, v6);
  MEMORY[0x1E12BE940](*(a1 + 152), 1, &v154, v30, 1, v6);
  MEMORY[0x1E12BE9A0](v30, 1, v21, 1, v30, 1, v6);
  MEMORY[0x1E12BE940](*(a1 + 288), 1, &v152, v21, 1, v6);
  vDSP_vmax(v30, 1, v21, 1, v30, 1, v6);
  if (v6 >= 1)
  {
    v50 = 0;
    v51 = *(a1 + 312);
    v52 = *(a1 + 208);
    do
    {
      v53 = v30;
      if (*(v51 + v50) <= 0.0)
      {
        v53 = *(a1 + 152);
      }

      *(v52 + v50) = v53[v50 / 4];
      v50 += 4;
    }

    while (v24 != v50);
  }

  if (*(a1 + 516) < -0.2)
  {
    if (v156 <= 0.0)
    {
      memcpy(*(a1 + 208), *(a1 + 152), 4 * v6);
    }

    else if (v156 < 1.0)
    {
      v146 = 1.0 - v156;
      MEMORY[0x1E12BE940](*(a1 + 152), 1, &v156, v21, 1, v6);
      MEMORY[0x1E12BE940](*(a1 + 208), 1, &v146, v30, 1, v6);
      MEMORY[0x1E12BE5D0](v21, 1, v30, 1, *(a1 + 208), 1, v6);
    }
  }

  __C = 0.0;
  vDSP_meanv(*(a1 + 600), 1, &__C, v6);
  if (__C > 0.99 && *(a1 + 628) < 0.4)
  {
    MEMORY[0x1E12BE8A0](*(a1 + 152), 1, &v150, v26, 1, v6);
    MEMORY[0x1E12BE8A0](*(a1 + 160), 1, &v150, v29, 1, v6);
    vDSP_vdbcon(v26, 1, &__B, v26, 1, v6, 0);
    vDSP_vdbcon(v29, 1, &__B, v29, 1, v6, 0);
    MEMORY[0x1E12BE9A0](v29, 1, v26, 1, v26, 1, v6);
    vDSP_meanv(v26, 1, &v148 + 1, v6);
    vDSP_meanv(v26, 1, &v148, *(a1 + 620));
    vDSP_meanv(&v26[*(a1 + 620)], 1, &v147, v6 - *(a1 + 620));
    v54 = *(a1 + 392);
    v55 = 1.0 - v54;
    v56 = (v54 * *(a1 + 608)) + v55 * *(&v148 + 1);
    *(a1 + 608) = v56;
    v57 = (v54 * *(a1 + 612)) + v55 * *&v148;
    *(a1 + 612) = v57;
    v58 = (v54 * *(a1 + 616)) + v55 * v147;
    *(a1 + 616) = v58;
  }

  v59 = *(a1 + 524);
  if ((*(a1 + 616) - *(a1 + 612)) <= 10.0)
  {
    *(a1 + 488) = 0;
    v60 = v59 - *(a1 + 532);
    *&__Z.realp = v60;
    if (v60 < 0.0)
    {
      LODWORD(__Z.realp) = 0;
      v60 = 0.0;
    }
  }

  else
  {
    *(a1 + 488) = 1;
    v60 = v59 + *(a1 + 528);
    if (v60 > 1.0)
    {
      v60 = 1.0;
    }

    *&__Z.realp = v60;
  }

  *(a1 + 524) = v60;
  v61 = CNoiseSuppressorV3::mic2occlusion_detection(a1);
  *(a1 + 480) = v61;
  v62 = *(a1 + 484);
  if (v61 < 0.3 && v62 == 1)
  {
    *(a1 + 484) = 0;
LABEL_48:
    *(a1 + 432) = 1;
    v63 = *(a1 + 520) - *(a1 + 448);
    if (v63 < 0.0)
    {
      v63 = 0.0;
    }
  }

  else
  {
    if (v61 <= 0.4 || v62)
    {
      if (v62 != 1)
      {
        goto LABEL_48;
      }
    }

    else
    {
      *(a1 + 484) = 1;
    }

    *(a1 + 432) = 0;
    v63 = *(a1 + 520) + *(a1 + 448);
    if (v63 > 1.0)
    {
      v63 = 1.0;
    }
  }

  *(a1 + 520) = v63;
  *(a1 + 436) = v63;
  if (v63 <= *(a1 + 524))
  {
    v63 = *(a1 + 524);
  }

  v64 = *(a1 + 648);
  v65 = fmaxf((v64 * (*(a1 + 336) - *(a1 + 644))) / (*(a1 + 640) - *(a1 + 644)), 0.0);
  if (v65 < v64)
  {
    v64 = v65;
  }

  *(a1 + 652) = v64;
  if (v63 <= v64)
  {
    v63 = v64;
  }

  *&__Z.realp = v63;
  v144 = 1.0 - v63;
  MEMORY[0x1E12BE940](*(a1 + 200), 1, &__Z, v21, 1, v6);
  MEMORY[0x1E12BE940](*(a1 + 208), 1, &v144, v30, 1, v6);
  MEMORY[0x1E12BE5D0](v21, 1, v30, 1, *(a1 + 192), 1, v6);
  if (*(a1 + 484) != 1 && *(a1 + 488) != 1)
  {
    v143 = 1115422720;
    v66 = 1.0e10;
    if (*(a1 + 508) >= 0.8)
    {
      v66 = 0.0;
    }

    v142 = v66;
    MEMORY[0x1E12BE940](*(a1 + 200), 1, &v143, v21, 1, v6);
    vDSP_vthr(v21, 1, &v142, v21, 1, v6);
    MEMORY[0x1E12BE9A0](*(a1 + 208), 1, v21, 1, v30, 1, v6);
    if (v6 >= 1)
    {
      v67 = 0;
      do
      {
        if (v30[v67 / 4] <= 0.0)
        {
          *(*(a1 + 192) + v67) = *(*(a1 + 200) + v67);
        }

        v67 += 4;
      }

      while (v24 != v67);
    }
  }

LABEL_72:
  vDSP_vmax(*(a1 + 192), 1, *(a1 + 224), 1, *(a1 + 192), 1, v6);
  vDSP_vmin(*(a1 + 192), 1, *(a1 + 216), 1, *(a1 + 192), 1, v6);
  CFilterBank::filterbank_compute_bank32(*(a1 + 16), *(a1 + 192), (*(a1 + 192) + 4 * v6));
  if (*(a1 + 332) < 0.5)
  {
    v68 = *(a1 + 360);
    v69 = *(a1 + 336);
    *(a1 + 336) = (v68 * CNoiseSuppressorV4::AweightSPL(a1)) + ((1.0 - v68) * v69);
  }

  *&v128 = 4 * v6;
  v70 = *(a1 + 360);
  v71 = *(a1 + 340);
  *(a1 + 340) = (v70 * CNoiseSuppressorV4::AweightSPL(a1)) + ((1.0 - v70) * v71);
  v72 = v130;
  v73 = v127;
  if (*(a1 + 560) == 1)
  {
    memcpy(*(a1 + 240), v127, 4 * v130);
  }

  v146 = -1.0e20;
  v144 = 0.0;
  __C = -1.0;
  v143 = 1036831949;
  v142 = 0.19;
  v141 = 1045220557;
  v140 = 1061997773;
  v139 = 1063507722;
  v137 = 1077936128;
  __A = 1.0;
  v135 = 507307272;
  v136 = 100.0;
  v74 = v131;
  MEMORY[0x1E12BE8A0](*(a1 + 192), 1, &v135, v131, 1, v72);
  vDSP_svdiv(&__A, v74, 1, v21, 1, v72);
  MEMORY[0x1E12BE5D0](*(a1 + 240), 1, v74, 1, v74, 1, v72);
  vDSP_vdiv(v74, 1, *(a1 + 240), 1, v74, 1, v72);
  MEMORY[0x1E12BE990](v74, 1, v74, 1, v72);
  if (*(a1 + 460))
  {
    v75 = &v142;
    v76 = &v140;
  }

  else
  {
    v75 = &v139;
    v76 = &v143;
  }

  MEMORY[0x1E12BE910](v74, 1, v75, v76, v74, 1, v72);
  MEMORY[0x1E12BE7E0](v73, 1, v21, 1, &__C, *(a1 + 264), 1, v72);
  vDSP_vclip(*(a1 + 264), 1, &v144, &v136, *(a1 + 256), 1, v72);
  vDSP_vmin(*(a1 + 264), 1, *(a1 + 256), 1, *(a1 + 264), 1, v72);
  MEMORY[0x1E12BE7F0](*(a1 + 256), 1, v74, 1, *(a1 + 256), 1, v72);
  MEMORY[0x1E12BE8A0](v74, 1, &__C, v74, 1, v72);
  MEMORY[0x1E12BE7F0](v74, 1, *(a1 + 240), 1, v74, 1, v72);
  MEMORY[0x1E12BE7F0](v74, 1, v21, 1, v21, 1, v72);
  MEMORY[0x1E12BE9A0](v21, 1, *(a1 + 256), 1, *(a1 + 256), 1, v72);
  vDSP_vclip(*(a1 + 256), 1, &v146, &v136, *(a1 + 256), 1, v72);
  MEMORY[0x1E12BE9A0](*(a1 + 256) + 4 * v6, 1, *(a1 + 368) + 4 * v6, 1, &v21[v6], 1, v19);
  v77 = &v74[v6];
  vDSP_vthres(&v21[v6], 1, &v144, v77, 1, v19);
  MEMORY[0x1E12BE9A0](v77, 1, &v21[v6], 1, &v21[v6], 1, v19);
  MEMORY[0x1E12BE8F0](&v21[v6], 1, a1 + 396, *(a1 + 256) + 4 * v6, 1, &v21[v6], 1, v19);
  MEMORY[0x1E12BE8F0](v77, 1, a1 + 400, &v21[v6], 1, *(a1 + 368) + 4 * v6, 1, 5);
  MEMORY[0x1E12BE8F0](v77 + 5, 1, a1 + 404, &v21[v6 + 5], 1, *(a1 + 368) + 4 * v6 + 20, 1, v19 - 5);
  v126 = v6;
  if (v19 < 1)
  {
    v78 = 0.0;
  }

  else
  {
    v78 = 0.0;
    v79 = v6;
    do
    {
      v80 = *(*(a1 + 368) + 4 * v79);
      if (v80 > 3.0)
      {
        v78 = v78 + v80;
      }

      ++v79;
    }

    while (v79 < v72);
  }

  v81 = v78 / *(a1 + 12);
  *(a1 + 328) = v81;
  v82 = 0.5;
  *(a1 + 332) = ((1.0 / ((0.5 / v81) + 1.0)) * 0.899) + 0.1;
  v83 = (*(a1 + 176) + 4 * v6);
  LODWORD(__Z.realp) = sqrtf(expf(*(a1 + 52) * 0.23026));
  vDSP_vfill(&__Z, v83, 1, v19);
  if (v19 <= 0)
  {
    v91 = *(a1 + 168);
  }

  else
  {
    v125 = v21;
    v85 = *(a1 + 256);
    v86 = *(a1 + 264);
    v87 = v73;
    v88 = *(a1 + 240);
    v89 = *(a1 + 248);
    v90 = *(a1 + 368);
    v91 = *(a1 + 168);
    v127 = v7;
    do
    {
      v92 = *(v85 + 4 * v7) / (*(v85 + 4 * v7) + 1.0);
      v93 = *(v86 + 4 * v7) + 1.0;
      v94 = v92 * CNoiseSuppressorV3::hypergeom_gain(v84, v92 * v93);
      if (v94 > 1.0)
      {
        v94 = 1.0;
      }

      *(v89 + 4 * v7) = v94;
      *(v88 + 4 * v7) = ((v94 * (v94 * 0.8)) * v87[v7]) + (*(v88 + 4 * v7) * 0.2);
      v95 = 1.0 - (*(a1 + 332) * (((1.0 / ((v82 / *(v90 + 4 * v7)) + 1.0)) * 0.899) + 0.1));
      v96 = (*(v85 + 4 * v7) + 1.0) * (v95 / (1.0 - v95));
      v97 = (v96 * expf(-(v92 * v93))) + 1.0;
      v82 = 0.5;
      v91[v7++] = 1.0 / v97;
    }

    while (v7 < v72);
    v7 = v127;
    v21 = v125;
    v73 = v87;
  }

  CFilterBank::filterbank_compute_psd16(*(a1 + 16), &v91[v7], v91);
  CFilterBank::filterbank_compute_psd16(*(a1 + 16), *(a1 + 248) + 4 * v7, *(a1 + 248));
  v98 = CFilterBank::filterbank_compute_psd16(*(a1 + 16), *(a1 + 176) + 4 * v7, *(a1 + 176));
  v99 = v131;
  MEMORY[0x1E12BE8A0](*(a1 + 256), 1, &__A, v131, 1, v7, v98);
  vDSP_vdiv(v99, 1, *(a1 + 256), 1, v99, 1, v7);
  MEMORY[0x1E12BE8A0](*(a1 + 264), 1, &__A, v21, 1, v7);
  MEMORY[0x1E12BE7F0](v99, 1, v21, 1, v21, 1, v7);
  CNoiseSuppressorV3::hypergeom_gain_vopt(v21, v7);
  MEMORY[0x1E12BE7F0](v99, 1, v21, 1, v21, 1, v7);
  vDSP_vclip(v21, 1, &v146, &__A, v21, 1, v7);
  MEMORY[0x1E12BE940](*(a1 + 248), 1, &v137, v99, 1, v7);
  vDSP_vmin(v21, 1, v99, 1, *(a1 + 248), 1, v7);
  MEMORY[0x1E12BE990](*(a1 + 248), 1, v99, 1, v7);
  MEMORY[0x1E12BE7F0](v99, 1, v73, 1, v99, 1, v7);
  MEMORY[0x1E12BE940](v99, 1, &v140, v99, 1, v7);
  MEMORY[0x1E12BE8F0](*(a1 + 240), 1, &v141, v99, 1, *(a1 + 240), 1, v7);
  vDSP_vmax(*(a1 + 248), 1, *(a1 + 176), 1, *(a1 + 248), 1, v7);
  v100 = *(a1 + 168);
  v101 = v126;
  if (v7 >= 1)
  {
    v102 = *(a1 + 248);
    v103 = *(a1 + 176);
    v104 = *(a1 + 168);
    v105 = v99;
    do
    {
      v106 = *v104++;
      v107 = v106;
      v108 = *v102++;
      v109 = sqrtf(v108);
      v110 = *v103++;
      *v105++ = ((1.0 - v107) * sqrtf(v110)) + (v107 * v109);
      --v101;
    }

    while (v101);
  }

  MEMORY[0x1E12BE990](v99, 1, v100, 1, v7);
  v134 = 1048576000;
  v133 = 1056964608;
  *v21 = 0.0;
  MEMORY[0x1E12BE940](*(a1 + 168), 1, &v134, v21 + 1, 1, v7 - 1);
  MEMORY[0x1E12BE8F0](*(a1 + 168) + 4, 1, &v134, v21, 1, v21, 1, v7 - 1);
  MEMORY[0x1E12BE8F0](*(a1 + 168), 1, &v133, v21, 1, *(a1 + 168), 1, v7);
  v111 = *(a1 + 168);
  if (!*(a1 + 24) && v130 >= 1)
  {
    memset_pattern16(*(a1 + 168), &unk_1DE095DF0, 4 * (v130 - 1) + 4);
  }

  v112 = 1;
  MEMORY[0x1E12BE7F0](v111 + 4, 1, *(a1 + 136) + 4, 2, *(a1 + 136) + 4, 2, v7 - 1);
  MEMORY[0x1E12BE7F0](*(a1 + 168), 1, *(a1 + 136), 2, *(a1 + 136), 2, v7);
  v113 = 2 * v7;
  v114 = 4 * v113 - 4;
  *(*(a1 + 136) + v114) = *(*(a1 + 168) + 4 * (v7 - 1)) * *(*(a1 + 136) + v114);
  v115 = MEMORY[0x1E12BE7F0]();
  v116 = v113;
  MEMORY[0x1EEE9AC00](v115);
  v118 = (&v124 - ((v117 + 15) & 0x7FFFFFFF0));
  v119 = &v118[v7];
  __Z.realp = v119 + 1;
  __Z.imagp = v118 + 2;
  vDSP_ctoz((*(a1 + 136) + 8), 2, &__Z, 1, v7 - 2);
  v120 = *(a1 + 136);
  *v118 = *v120;
  *(v118 + v114) = *&v120[v7 - 1];
  *v119 = *(v120 + v114);
  __Z.realp = v118;
  __Z.imagp = v119;
  v156 = 0.000030518;
  MEMORY[0x1E12BE940](v118, 1, &v156, v118, 1, v116);
  v121 = v128;
  memcpy(*(a1 + 584), __Z.realp, v128);
  memcpy(*(a1 + 592), __Z.imagp, v121);
  if (*(a1 + 28))
  {
    v122 = *(a1 + 332);
    if (v122 > *(a1 + 44) || *(a1 + 564) && v122 > *(a1 + 48))
    {
      v112 = 1;
      *(a1 + 564) = 1;
    }

    else
    {
      v112 = 0;
      *(a1 + 564) = 0;
    }
  }

  return v112;
}

float CNoiseSuppressorV3::mic2occlusion_detection(uint64_t a1)
{
  __C = 0;
  v2 = *(a1 + 160);
  v3 = *(a1 + 468);
  v4 = *(a1 + 472) - v3 + 1;
  vDSP_sve((*(a1 + 152) + 4 * v3), 1, &__C + 1, v4);
  vDSP_sve((v2 + 4 * *(a1 + 468)), 1, &__C, v4);
  v5 = *(&__C + 1) / (*&__C + 0.00000011921) + 0.00000011921;
  v6 = (*(a1 + 492) * 0.95) + (log10f(v5) * 10.0) * 0.0500000119;
  *(a1 + 492) = v6;
  return 1.0 / ((expf(v6 * -0.25) * 150.0) + 1.0);
}

float CNoiseSuppressorV3::update_noise_prob_vadns(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 4);
  MEMORY[0x1EEE9AC00](a1);
  v4 = (&v18 - ((v3 + 15) & 0x7FFFFFFF0));
  v6 = 1.0 - *(v5 + 392);
  v18 = v6 * 0.667;
  v19 = v6 * 0.333;
  *v4 = 0;
  MEMORY[0x1E12BE940](*(v5 + 152), 1, &v19, v4 + 1, 1, v2 - 1);
  MEMORY[0x1E12BE8F0](*(a1 + 152) + 4, 1, &v19, v4, 1, v4, 1, v2 - 1);
  MEMORY[0x1E12BE8F0](*(a1 + 152), 1, &v18, v4, 1, v4, 1, v2);
  MEMORY[0x1E12BE8F0](*(a1 + 272), 1, a1 + 392, v4, 1, *(a1 + 272), 1, v2);
  MEMORY[0x1E12BE7F0](*(a1 + 160), 1, *(a1 + 96), 1, *(a1 + 160), 1, v2);
  if (*(a1 + 428) == 2)
  {
    *v4 = 0;
    MEMORY[0x1E12BE940](*(a1 + 160), 1, &v19, v4 + 1, 1, v2 - 1);
    MEMORY[0x1E12BE8F0](*(a1 + 160) + 4, 1, &v19, v4, 1, v4, 1, v2 - 1);
    MEMORY[0x1E12BE8F0](*(a1 + 160), 1, &v18, v4, 1, v4, 1, v2);
    MEMORY[0x1E12BE8F0](*(a1 + 280), 1, a1 + 392, v4, 1, *(a1 + 280), 1, v2);
  }

  v7 = *(a1 + 560);
  if (v7 == 1)
  {
    vDSP_vclr(*(a1 + 288), 1, v2);
    vDSP_vclr(*(a1 + 296), 1, v2);
    v7 = *(a1 + 560);
  }

  v8 = *(a1 + 8);
  v9 = (v8 * 0.2) / v2;
  if (v9 <= v7 && ((v8 * 0.5) / v2) <= v7)
  {
    v9 = (v8 + v8) / v2;
  }

  if (*(a1 + 568) <= v9)
  {
    vDSP_vmin(*(a1 + 288), 1, *(a1 + 272), 1, *(a1 + 288), 1, v2);
    vDSP_vmin(*(a1 + 296), 1, *(a1 + 272), 1, *(a1 + 296), 1, v2);
  }

  else
  {
    *(a1 + 568) = 0;
    vDSP_vmin(*(a1 + 296), 1, *(a1 + 272), 1, *(a1 + 288), 1, v2);
    memcpy(*(a1 + 296), *(a1 + 272), 4 * v2);
  }

  MEMORY[0x1E12BE7F0](*(a1 + 288), 1, *(a1 + 80), 1, v4, 1, v2);
  MEMORY[0x1E12BE7F0](v4, 1, *(a1 + 112), 1, v4, 1, v2);
  MEMORY[0x1E12BE9A0](v4, 1, *(a1 + 272), 1, *(a1 + 304), 1, v2);
  if (*(a1 + 428) == 2)
  {
    MEMORY[0x1E12BE7F0](*(a1 + 280), 1, *(a1 + 88), 1, v4, 1, v2);
    MEMORY[0x1E12BE9A0](v4, 1, *(a1 + 272), 1, *(a1 + 312), 1, v2);
    MEMORY[0x1E12BE7F0](*(a1 + 272), 1, *(a1 + 88), 1, v4, 1, v2);
    MEMORY[0x1E12BE9A0](v4, 1, *(a1 + 280), 1, *(a1 + 320), 1, v2);
  }

  v11 = ((*(a1 + 560) * v2) / *(a1 + 8));
  if (v11 < 0.05 && v2 >= 1)
  {
    v13 = *(a1 + 152);
    v14 = *(a1 + 200);
    v15 = *(a1 + 288);
    do
    {
      v16 = *v13++;
      LODWORD(v11) = v16;
      *v14++ = v16;
      *v15++ = v16;
      --v2;
    }

    while (v2);
  }

  return *&v11;
}

uint64_t CNoiseSuppressorV3::speex_preprocess_run_vadns_freq(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v170 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 4);
  v7 = v6;
  v144 = *(a1 + 152);
  v167 = 1028443341;
  v168 = 0.0;
  v166 = 1065772646;
  v165 = 0x40000000;
  v164 = 0;
  v163 = 897988541;
  __B = 1.0;
  v161 = 0;
  v160 = 0.0;
  v8 = *a2;
  v9 = *(a1 + 656);
  LODWORD(__Z.realp) = 1191182336;
  MEMORY[0x1E12BE940](v8, 1, &__Z, v9, 1, v6);
  v10 = a2[1];
  v11 = *(a1 + 664);
  LODWORD(__Z.realp) = 1191182336;
  v12 = MEMORY[0x1E12BE940](v10, 1, &__Z, v11, 1, v6);
  if (a3 && *(a1 + 428) == 2)
  {
    v14 = *a3;
    LODWORD(__Z.realp) = 1191182336;
    MEMORY[0x1E12BE940](v14, 1, &__Z, v14, 1, v6);
    v15 = *(a3 + 8);
    LODWORD(__Z.realp) = 1191182336;
    v12 = MEMORY[0x1E12BE940](v15, 1, &__Z, v15, 1, v6);
  }

  v142 = &v137;
  v16 = *(a1 + 560);
  v17 = *(a1 + 8) * 30.0;
  *&v13 = v6;
  v141 = v13;
  if (v16 + 1 < (v17 / v6))
  {
    v18 = v16 + 1;
  }

  else
  {
    v18 = (v17 / v6);
  }

  *(a1 + 560) = v18;
  ++*(a1 + 568);
  v19 = *(a1 + 12);
  HIDWORD(v164) = *(a1 + 412);
  *&v164 = 1.0 - *(&v164 + 1);
  v20 = *(a1 + 104);
  v21 = v20 * *(a1 + 424);
  *(a1 + 424) = v21;
  *(a1 + 416) = v20 * *(a1 + 416);
  v168 = v21;
  v22 = v19 + v6;
  MEMORY[0x1EEE9AC00](v12);
  v24 = (&v137 - ((v23 + 15) & 0x7FFFFFFF0));
  MEMORY[0x1EEE9AC00](v25);
  v145 = (&v137 - v26);
  v27 = 4 * v6;
  MEMORY[0x1EEE9AC00](v28);
  v29 = (&v137 - ((4 * v6 + 15) & 0x7FFFFFFF0));
  MEMORY[0x1EEE9AC00](v30);
  v140 = &v137 - v31;
  CNoiseSuppressorV4::preprocess_analysis_freq(a1, *(a1 + 656), *(a1 + 664));
  if (*(a1 + 428) == 2)
  {
    CNoiseSuppressorV4::preprocess_analysis_sec_freq(a1, *a3, *(a3 + 8));
  }

  updated = CNoiseSuppressorV3::update_noise_prob_vadns(a1);
  v33 = v145;
  MEMORY[0x1E12BE940](*(a1 + 152), 1, &v164 + 4, v145, 1, v6, updated);
  MEMORY[0x1E12BE8F0](*(a1 + 200), 1, &v164, v33, 1, v33, 1, v6);
  MEMORY[0x1E12BE940](*(a1 + 288), 1, &v168, v24, 1, v6);
  MEMORY[0x1E12BE7F0](v24, 1, *(a1 + 112), 1, v24, 1, v6);
  MEMORY[0x1E12BE9A0](v24, 1, *(a1 + 152), 1, v24, 1, v6);
  vDSP_vmax(*(a1 + 304), 1, v24, 1, v24, 1, v6);
  v34 = 4 * v6;
  v143 = (v19 + v6);
  if (v6 < 1)
  {
    if (*(a1 + 428) == 2)
    {
      v38 = 4 * v6;
      LODWORD(__Z.realp) = 0;
      v39 = 0;
      v40 = 0.0;
      goto LABEL_26;
    }

    goto LABEL_35;
  }

  v35 = 0;
  v36 = v145;
  do
  {
    if (v24[v35 / 4] <= 0.0)
    {
      v37 = *(a1 + 152);
LABEL_16:
      *(*(a1 + 200) + v35) = v37[v35 / 4];
      goto LABEL_17;
    }

    if (!*(a1 + 464))
    {
      v37 = v36;
      if (*(*(a1 + 272) + v35) < ((*(a1 + 416) * *(*(a1 + 288) + v35)) * *(*(a1 + 112) + v35)))
      {
        goto LABEL_16;
      }
    }

LABEL_17:
    v35 += 4;
  }

  while (v27 != v35);
  if (*(a1 + 428) != 2)
  {
LABEL_35:
    memcpy(*(a1 + 192), *(a1 + 200), 4 * v6);
    goto LABEL_73;
  }

  v38 = 4 * v6;
  LODWORD(__Z.realp) = 0;
  v39 = 0;
  v40 = 0.0;
  v41 = *(a1 + 304);
  v42 = *(a1 + 312);
  __asm { FMOV            V2.2S, #1.0 }

  v47 = v6;
  v48 = *(a1 + 320);
  do
  {
    v49 = *v41++;
    v50.i32[0] = v49;
    v50.i32[1] = *v42++;
    v39 = vbsl_s8(vcgtz_f32(v50), vadd_f32(v39, _D2), v39);
    v51 = *v48++;
    if (v51 > 0.0)
    {
      v40 = v40 + 1.0;
    }

    --v47;
  }

  while (v47);
LABEL_26:
  v52 = *&v141;
  v53 = vdiv_f32(v39, vdup_lane_s32(*&v141, 0));
  *(a1 + 504) = v53;
  v54 = v40 / v52;
  *(a1 + 512) = v54;
  *(a1 + 516) = v53.f32[1] - v54;
  v159 = 0.0;
  v169 = (*(a1 + 336) - *(a1 + 632)) / (*(a1 + 636) - *(a1 + 632));
  MEMORY[0x1E12BE940](*(a1 + 160), 1, &v166, v24, 1, v6);
  v55 = v145;
  MEMORY[0x1E12BE940](*(a1 + 152), 1, &v167, v145, 1, v6);
  MEMORY[0x1E12BE9A0](v55, 1, v24, 1, v55, 1, v6);
  MEMORY[0x1E12BE940](*(a1 + 288), 1, &v165, v24, 1, v6);
  vDSP_vmax(v55, 1, v24, 1, v55, 1, v6);
  v56 = v55;
  v57 = v38;
  if (v6 >= 1)
  {
    v58 = 0;
    v59 = *(a1 + 312);
    v60 = *(a1 + 208);
    do
    {
      v61 = v56;
      if (*(v59 + v58) <= 0.0)
      {
        v61 = *(a1 + 152);
      }

      *(v60 + v58) = v61[v58 / 4];
      v58 += 4;
    }

    while (v27 != v58);
  }

  if (*(a1 + 516) < 0.2)
  {
    if (v169 <= 0.0)
    {
      memcpy(*(a1 + 208), *(a1 + 152), v38);
    }

    else if (v169 < 1.0)
    {
      v159 = 1.0 - v169;
      MEMORY[0x1E12BE940](*(a1 + 152), 1, &v169, v24, 1, v6);
      v62 = v145;
      MEMORY[0x1E12BE940](*(a1 + 208), 1, &v159, v145, 1, v6);
      v63 = v62;
      v57 = v38;
      MEMORY[0x1E12BE5D0](v24, 1, v63, 1, *(a1 + 208), 1, v6);
    }
  }

  __C = 0.0;
  vDSP_meanv(*(a1 + 600), 1, &__C, v6);
  if (__C > 0.99 && *(a1 + 628) < 0.4)
  {
    MEMORY[0x1E12BE8A0](*(a1 + 152), 1, &v163, v29, 1, v6);
    v64 = v140;
    MEMORY[0x1E12BE8A0](*(a1 + 160), 1, &v163, v140, 1, v6);
    vDSP_vdbcon(v29, 1, &__B, v29, 1, v6, 0);
    vDSP_vdbcon(v64, 1, &__B, v64, 1, v6, 0);
    MEMORY[0x1E12BE9A0](v64, 1, v29, 1, v29, 1, v6);
    vDSP_meanv(v29, 1, &v161 + 1, v6);
    vDSP_meanv(v29, 1, &v161, *(a1 + 620));
    vDSP_meanv(&v29[*(a1 + 620)], 1, &v160, v6 - *(a1 + 620));
    v65 = *(a1 + 392);
    v66 = 1.0 - v65;
    v67 = (v65 * *(a1 + 608)) + v66 * *(&v161 + 1);
    *(a1 + 608) = v67;
    v68 = (v65 * *(a1 + 612)) + v66 * *&v161;
    *(a1 + 612) = v68;
    v69 = (v65 * *(a1 + 616)) + v66 * v160;
    *(a1 + 616) = v69;
  }

  v70 = *(a1 + 524);
  if ((*(a1 + 616) - *(a1 + 612)) <= 10.0)
  {
    *(a1 + 488) = 0;
    v71 = v70 - *(a1 + 532);
    if (v71 < 0.0)
    {
      LODWORD(__Z.realp) = 0;
      v71 = 0.0;
    }
  }

  else
  {
    *(a1 + 488) = 1;
    v71 = v70 + *(a1 + 528);
    if (v71 > 1.0)
    {
      v71 = 1.0;
    }

    *&__Z.realp = v71;
  }

  *(a1 + 524) = v71;
  v72 = CNoiseSuppressorV3::mic2occlusion_detection(a1);
  *(a1 + 480) = v72;
  v73 = *(a1 + 484);
  if (v72 < 0.3 && v73 == 1)
  {
    *(a1 + 484) = 0;
LABEL_54:
    *(a1 + 432) = 1;
    v75 = *(a1 + 520) - *(a1 + 448);
    if (v75 < 0.0)
    {
      v75 = 0.0;
    }

    goto LABEL_59;
  }

  if (v72 <= 0.4 || v73)
  {
    if (v73 == 1)
    {
      goto LABEL_57;
    }

    goto LABEL_54;
  }

  *(a1 + 484) = 1;
LABEL_57:
  *(a1 + 432) = 0;
  v75 = *(a1 + 520) + *(a1 + 448);
  if (v75 > 1.0)
  {
    v75 = 1.0;
  }

LABEL_59:
  v76 = v57;
  *(a1 + 520) = v75;
  *(a1 + 436) = v75;
  v77 = 0.0;
  if (*(a1 + 624) < 0.5)
  {
    v77 = *(a1 + 524);
    if (v75 > v77)
    {
      v77 = v75;
    }
  }

  *&__Z.realp = v77;
  v157 = 1.0 - v77;
  MEMORY[0x1E12BE940](*(a1 + 200), 1, &__Z, v24, 1, v6);
  v78 = v145;
  MEMORY[0x1E12BE940](*(a1 + 208), 1, &v157, v145, 1, v6);
  MEMORY[0x1E12BE5D0](v24, 1, v78, 1, *(a1 + 192), 1, v6);
  if (*(a1 + 484) != 1 && *(a1 + 488) != 1)
  {
    v156 = 1115422720;
    v79 = 1.0e10;
    if (*(a1 + 508) >= 0.8)
    {
      v79 = 0.0;
    }

    v155 = v79;
    MEMORY[0x1E12BE940](*(a1 + 200), 1, &v156, v24, 1, v6);
    vDSP_vthr(v24, 1, &v155, v24, 1, v6);
    v80 = v145;
    MEMORY[0x1E12BE9A0](*(a1 + 208), 1, v24, 1, v145, 1, v6);
    if (v6 >= 1)
    {
      v81 = 0;
      v82 = *(a1 + 192);
      do
      {
        if (v80[v81 / 4] <= 0.0)
        {
          v83 = (a1 + 200);
        }

        else
        {
          v83 = (a1 + 208);
        }

        *(v82 + v81) = *(*v83 + v81);
        v81 += 4;
      }

      while (v27 != v81);
    }
  }

  v34 = v76;
  v22 = v143;
LABEL_73:
  vDSP_vmax(*(a1 + 192), 1, *(a1 + 224), 1, *(a1 + 192), 1, v6);
  vDSP_vmin(*(a1 + 192), 1, *(a1 + 216), 1, *(a1 + 192), 1, v6);
  CFilterBank::filterbank_compute_bank32(*(a1 + 16), *(a1 + 192), (*(a1 + 192) + 4 * v6));
  v84 = v144;
  if (*(a1 + 332) < 0.5)
  {
    v85 = *(a1 + 360);
    v86 = *(a1 + 336);
    *(a1 + 336) = (v85 * CNoiseSuppressorV4::AweightSPL(a1)) + ((1.0 - v85) * v86);
  }

  v87 = *(a1 + 360);
  v88 = *(a1 + 340);
  *(a1 + 340) = (v87 * CNoiseSuppressorV4::AweightSPL(a1)) + ((1.0 - v87) * v88);
  v89 = v22;
  if (*(a1 + 560) == 1)
  {
    memcpy(*(a1 + 240), v84, 4 * v22);
  }

  v159 = -1.0e20;
  v157 = 0.0;
  __C = -1.0;
  v156 = 1036831949;
  v155 = 0.2;
  v154 = 1061997773;
  v153 = 1063507722;
  v151 = 1077936128;
  __A = 1.0;
  v149 = 507307272;
  v150 = 100.0;
  v90 = v145;
  MEMORY[0x1E12BE8A0](*(a1 + 192), 1, &v149, v145, 1, v22);
  vDSP_svdiv(&__A, v90, 1, v24, 1, v22);
  MEMORY[0x1E12BE5D0](*(a1 + 240), 1, v90, 1, v90, 1, v22);
  vDSP_vdiv(v90, 1, *(a1 + 240), 1, v90, 1, v22);
  MEMORY[0x1E12BE990](v90, 1, v90, 1, v22);
  MEMORY[0x1E12BE910](v90, 1, &v153, &v156, v90, 1, v22);
  MEMORY[0x1E12BE7E0](v84, 1, v24, 1, &__C, *(a1 + 264), 1, v22);
  vDSP_vclip(*(a1 + 264), 1, &v157, &v150, *(a1 + 256), 1, v22);
  vDSP_vmin(*(a1 + 264), 1, *(a1 + 256), 1, *(a1 + 264), 1, v22);
  MEMORY[0x1E12BE7F0](*(a1 + 256), 1, v90, 1, *(a1 + 256), 1, v22);
  MEMORY[0x1E12BE8A0](v90, 1, &__C, v90, 1, v22);
  MEMORY[0x1E12BE7F0](v90, 1, *(a1 + 240), 1, v90, 1, v22);
  MEMORY[0x1E12BE7F0](v90, 1, v24, 1, v24, 1, v22);
  MEMORY[0x1E12BE9A0](v24, 1, *(a1 + 256), 1, *(a1 + 256), 1, v22);
  vDSP_vclip(*(a1 + 256), 1, &v159, &v150, *(a1 + 256), 1, v22);
  MEMORY[0x1E12BE9A0](*(a1 + 256) + 4 * v6, 1, *(a1 + 368) + 4 * v6, 1, &v24[v6], 1, v19);
  v91 = &v90[v6];
  vDSP_vthres(&v24[v6], 1, &v157, v91, 1, v19);
  MEMORY[0x1E12BE9A0](v91, 1, &v24[v6], 1, &v24[v6], 1, v19);
  MEMORY[0x1E12BE8F0](&v24[v6], 1, a1 + 396, *(a1 + 256) + 4 * v6, 1, &v24[v6], 1, v19);
  MEMORY[0x1E12BE8F0](v91, 1, a1 + 400, &v24[v6], 1, *(a1 + 368) + 4 * v6, 1, 5);
  MEMORY[0x1E12BE8F0](v91 + 5, 1, a1 + 404, &v24[v6 + 5], 1, *(a1 + 368) + 4 * v6 + 20, 1, v19 - 5);
  if (v19 < 1)
  {
    v92 = 0.0;
  }

  else
  {
    v92 = 0.0;
    v93 = v6;
    do
    {
      v94 = *(*(a1 + 368) + 4 * v93);
      if (v94 > 3.0)
      {
        v92 = v92 + v94;
      }

      ++v93;
    }

    while (v93 < v22);
  }

  *&v141 = v34;
  v95 = v92 / *(a1 + 12);
  *(a1 + 328) = v95;
  v96 = 0.5;
  *(a1 + 332) = ((1.0 / ((0.5 / v95) + 1.0)) * 0.899) + 0.1;
  v97 = (*(a1 + 176) + 4 * v6);
  LODWORD(__Z.realp) = sqrtf(expf(*(a1 + 52) * 0.23026));
  vDSP_vfill(&__Z, v97, 1, v19);
  if (v19 <= 0)
  {
    v104 = *(a1 + 168);
  }

  else
  {
    v138 = v6;
    v139 = v24;
    v99 = *(a1 + 256);
    v100 = *(a1 + 264);
    v101 = *(a1 + 240);
    v102 = *(a1 + 248);
    v103 = *(a1 + 368);
    v104 = *(a1 + 168);
    v140 = v6;
    v105 = v144;
    do
    {
      v106 = *(v99 + 4 * v7) / (*(v99 + 4 * v7) + 1.0);
      v107 = *(v100 + 4 * v7) + 1.0;
      v108 = v106 * CNoiseSuppressorV3::hypergeom_gain(v98, v106 * v107);
      if (v108 > 1.0)
      {
        v108 = 1.0;
      }

      *(v102 + 4 * v7) = v108;
      *(v101 + 4 * v7) = ((v108 * (v108 * 0.8)) * v105[v7]) + (*(v101 + 4 * v7) * 0.2);
      v109 = 1.0 - (*(a1 + 332) * (((1.0 / ((v96 / *(v103 + 4 * v7)) + 1.0)) * 0.899) + 0.1));
      v110 = (*(v99 + 4 * v7) + 1.0) * (v109 / (1.0 - v109));
      v111 = (v110 * expf(-(v106 * v107))) + 1.0;
      v96 = 0.5;
      v104[v7++] = 1.0 / v111;
    }

    while (v7 < v89);
    v7 = v140;
    v22 = v143;
    v24 = v139;
    v6 = v138;
  }

  CFilterBank::filterbank_compute_psd16(*(a1 + 16), &v104[v7], v104);
  CFilterBank::filterbank_compute_psd16(*(a1 + 16), *(a1 + 248) + 4 * v7, *(a1 + 248));
  v112 = CFilterBank::filterbank_compute_psd16(*(a1 + 16), *(a1 + 176) + 4 * v7, *(a1 + 176));
  v113 = v145;
  MEMORY[0x1E12BE8A0](*(a1 + 256), 1, &__A, v145, 1, v7, v112);
  vDSP_vdiv(v113, 1, *(a1 + 256), 1, v113, 1, v7);
  MEMORY[0x1E12BE8A0](*(a1 + 264), 1, &__A, v24, 1, v7);
  MEMORY[0x1E12BE7F0](v113, 1, v24, 1, v24, 1, v7);
  CNoiseSuppressorV3::hypergeom_gain_vopt(v24, v7);
  MEMORY[0x1E12BE7F0](v113, 1, v24, 1, v24, 1, v7);
  vDSP_vclip(v24, 1, &v159, &__A, v24, 1, v7);
  MEMORY[0x1E12BE940](*(a1 + 248), 1, &v151, v113, 1, v7);
  vDSP_vmin(v24, 1, v113, 1, *(a1 + 248), 1, v7);
  MEMORY[0x1E12BE990](*(a1 + 248), 1, v113, 1, v7);
  MEMORY[0x1E12BE7F0](v113, 1, v144, 1, v113, 1, v7);
  MEMORY[0x1E12BE940](v113, 1, &v154, v113, 1, v7);
  MEMORY[0x1E12BE8F0](*(a1 + 240), 1, &v155, v113, 1, *(a1 + 240), 1, v7);
  vDSP_vmax(*(a1 + 248), 1, *(a1 + 176), 1, *(a1 + 248), 1, v7);
  v114 = *(a1 + 168);
  if (v7 >= 1)
  {
    v115 = *(a1 + 248);
    v116 = *(a1 + 176);
    v117 = *(a1 + 168);
    v118 = v113;
    do
    {
      v119 = *v117++;
      v120 = v119;
      v121 = *v115++;
      v122 = sqrtf(v121);
      v123 = *v116++;
      *v118++ = ((1.0 - v120) * sqrtf(v123)) + (v120 * v122);
      --v6;
    }

    while (v6);
  }

  MEMORY[0x1E12BE990](v113, 1, v114, 1, v7);
  v148 = 1048576000;
  v147 = 1056964608;
  *v24 = 0.0;
  MEMORY[0x1E12BE940](*(a1 + 168), 1, &v148, v24 + 1, 1, v7 - 1);
  MEMORY[0x1E12BE8F0](*(a1 + 168) + 4, 1, &v148, v24, 1, v24, 1, v7 - 1);
  MEMORY[0x1E12BE8F0](*(a1 + 168), 1, &v147, v24, 1, *(a1 + 168), 1, v7);
  v124 = *(a1 + 168);
  if (!*(a1 + 24) && v22 >= 1)
  {
    memset_pattern16(*(a1 + 168), &unk_1DE095DF0, 4 * (v22 - 1) + 4);
  }

  v125 = 1;
  MEMORY[0x1E12BE7F0](v124 + 4, 1, *(a1 + 136) + 4, 2, *(a1 + 136) + 4, 2, v7 - 1);
  MEMORY[0x1E12BE7F0](*(a1 + 168), 1, *(a1 + 136), 2, *(a1 + 136), 2, v7);
  v126 = 2 * v7;
  v127 = 4 * v126 - 4;
  *(*(a1 + 136) + v127) = *(*(a1 + 168) + 4 * (v7 - 1)) * *(*(a1 + 136) + v127);
  v128 = MEMORY[0x1E12BE7F0]();
  v129 = v126;
  MEMORY[0x1EEE9AC00](v128);
  v131 = (&v137 - ((v130 + 15) & 0x7FFFFFFF0));
  v132 = &v131[v7];
  __Z.realp = v132 + 1;
  __Z.imagp = v131 + 2;
  vDSP_ctoz((*(a1 + 136) + 8), 2, &__Z, 1, v7 - 2);
  v133 = *(a1 + 136);
  *v131 = *v133;
  *(v131 + v127) = *&v133[v7 - 1];
  *v132 = *(v133 + v127);
  __Z.realp = v131;
  __Z.imagp = v132;
  v169 = 0.000030518;
  MEMORY[0x1E12BE940](v131, 1, &v169, v131, 1, v129);
  v134 = v141;
  memcpy(*(a1 + 584), __Z.realp, v141);
  memcpy(*(a1 + 592), __Z.imagp, v134);
  if (*(a1 + 28))
  {
    v135 = *(a1 + 332);
    if (v135 > *(a1 + 44) || *(a1 + 564) && v135 > *(a1 + 48))
    {
      v125 = 1;
      *(a1 + 564) = 1;
    }

    else
    {
      v125 = 0;
      *(a1 + 564) = 0;
    }
  }

  return v125;
}

uint64_t CNoiseSuppressorV3::speex_preprocess_run_freq(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*(a1 + 456))
  {
    return CNoiseSuppressorV3::speex_preprocess_run_vadns_freq(a1, a2, a3);
  }

  else
  {
    return CNoiseSuppressorV3::speex_preprocess_run_ns_freq(a1, a2, a3);
  }
}

void CNoiseSuppressorV3::speex_preprocess_state_init(CNoiseSuppressorV3 *this, int a2, int a3)
{
  v4 = this;
  v10 = *MEMORY[0x1E69E9840];
  __A = 3.4028e38;
  v5 = malloc_type_malloc(0x2A0uLL, 0x15E91BF6uLL);
  if (v5)
  {
    v6 = v5;
    bzero(v5 + 2, 0x298uLL);
    *v6 = v4;
    v6[1] = v4;
    v6[107] = a3;
    MultiRadixRealFFT_Create();
  }

  exception = __cxa_allocate_exception(8uLL);
  v8 = std::bad_alloc::bad_alloc(exception);
}

void CNoiseSuppressorV3::speex_preprocess_state_destroy(uint64_t a1)
{
  free(*(a1 + 120));
  free(*(a1 + 128));
  free(*(a1 + 136));
  free(*(a1 + 144));
  free(*(a1 + 152));
  free(*(a1 + 160));
  free(*(a1 + 168));
  free(*(a1 + 176));
  free(*(a1 + 184));
  free(*(a1 + 192));
  free(*(a1 + 216));
  free(*(a1 + 224));
  free(*(a1 + 200));
  free(*(a1 + 208));
  free(*(a1 + 232));
  free(*(a1 + 240));
  free(*(a1 + 248));
  free(*(a1 + 256));
  free(*(a1 + 264));
  free(*(a1 + 376));
  free(*(a1 + 272));
  free(*(a1 + 280));
  free(*(a1 + 288));
  free(*(a1 + 296));
  free(*(a1 + 304));
  free(*(a1 + 312));
  free(*(a1 + 320));
  free(*(a1 + 368));
  free(*(a1 + 80));
  free(*(a1 + 88));
  free(*(a1 + 96));
  free(*(a1 + 112));
  free(*(a1 + 536));
  free(*(a1 + 544));
  free(*(a1 + 552));
  free(*(a1 + 384));
  free(*(a1 + 344));
  free(*(a1 + 496));
  free(*(a1 + 656));
  free(*(a1 + 664));
  MultiRadixFFT_Dispose(*(a1 + 576));
  free(*(a1 + 584));
  free(*(a1 + 592));
  CFilterBank::filterbank_destroy(*(a1 + 16));

  free(a1);
}

float CNoiseSuppressorV3::speex_preprocess_run(int *a1, char *a2, char *a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = a1[1];
  MEMORY[0x1EEE9AC00](a1);
  MEMORY[0x1EEE9AC00](v7);
  __Z.realp = v8;
  __Z.imagp = &v8[v6];
  v24.realp = (&v24 - v9);
  v24.imagp = (&v24 + 4 * v6 - v9);
  if (v10)
  {
    v11 = 2 * v6 - *a1;
    v12 = *a1 - v11;
    memcpy(*(a1 + 15), *(a1 + 67), 4 * v11);
    memcpy((*(a1 + 15) + 4 * v11), a2, 4 * *a1);
    memcpy(*(a1 + 67), &a2[4 * v12], 4 * v11);
    MEMORY[0x1E12BE7F0](*(a1 + 15), 1, *(a1 + 23), 1, *(a1 + 15), 1, 2 * v6);
    vDSP_ctoz(*(a1 + 15), 2, &__Z, 1, v6);
    v14 = *(a1 + 72);
    if (v14)
    {
      MultiRadixRealFFT::RealInPlaceTransform(v14, &__Z, 1, v13);
LABEL_4:
      __B = v6 + v6;
      vDSP_vsdiv(__Z.realp, 1, &__B, __Z.realp, 1, v6);
      vDSP_vsdiv(__Z.imagp, 1, &__B, __Z.imagp, 1, v6);
      goto LABEL_5;
    }

    if (SuppressorClassLogScope(void)::once != -1)
    {
      dispatch_once(&SuppressorClassLogScope(void)::once, &__block_literal_global_8663);
    }

    if (SuppressorClassLogScope(void)::scope)
    {
      v22 = *SuppressorClassLogScope(void)::scope;
      if (!*SuppressorClassLogScope(void)::scope)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v22 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      __B = 4.8151e-34;
      v27 = "CNoiseSuppressorV3.cpp";
      v28 = 1024;
      v29 = 439;
      _os_log_impl(&dword_1DDB85000, v22, OS_LOG_TYPE_ERROR, "%25s:%-5d MultiRadixRealFFT_RealInPlaceTransform() returned an error.", &__B, 0x12u);
    }

    goto LABEL_4;
  }

LABEL_5:
  if (a3)
  {
    v15 = a1[1];
    v16 = 2 * v15 - *a1;
    v17 = *a1 - v16;
    memcpy(*(a1 + 16), *(a1 + 68), 4 * v16);
    memcpy((*(a1 + 16) + 4 * v16), a3, 4 * *a1);
    memcpy(*(a1 + 68), &a3[4 * v17], 4 * v16);
    MEMORY[0x1E12BE7F0](*(a1 + 16), 1, *(a1 + 23), 1, *(a1 + 16), 1, 2 * v15);
    vDSP_ctoz(*(a1 + 16), 2, &v24, 1, v15);
    v19 = *(a1 + 72);
    if (v19)
    {
      MultiRadixRealFFT::RealInPlaceTransform(v19, &v24, 1, v18);
LABEL_8:
      __B = v15 + v15;
      vDSP_vsdiv(v24.realp, 1, &__B, v24.realp, 1, v15);
      vDSP_vsdiv(v24.imagp, 1, &__B, v24.imagp, 1, v15);
      v20 = &v24;
      goto LABEL_10;
    }

    if (SuppressorClassLogScope(void)::once != -1)
    {
      dispatch_once(&SuppressorClassLogScope(void)::once, &__block_literal_global_8663);
    }

    if (SuppressorClassLogScope(void)::scope)
    {
      v23 = *SuppressorClassLogScope(void)::scope;
      if (!*SuppressorClassLogScope(void)::scope)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v23 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      __B = 4.8151e-34;
      v27 = "CNoiseSuppressorV3.cpp";
      v28 = 1024;
      v29 = 469;
      _os_log_impl(&dword_1DDB85000, v23, OS_LOG_TYPE_ERROR, "%25s:%-5d MultiRadixRealFFT_RealInPlaceTransform() returned an error.", &__B, 0x12u);
    }

    goto LABEL_8;
  }

  v20 = 0;
LABEL_10:
  CNoiseSuppressorV3::speex_preprocess_run_freq(a1, &__Z, v20);
  if (a2)
  {
    return CNoiseSuppressorV3::speex_synthesis(a1, a2);
  }

  return result;
}

uint64_t getLSLog(void)
{
  v0 = &getScottyLog(void)::gLog;
  {
    v0 = &getScottyLog(void)::gLog;
    if (v2)
    {
      getLSLog(void)::gLog = os_log_create("com.apple.coreaudio", "LeanSpatial");
      v0 = &getScottyLog(void)::gLog;
    }
  }

  return v0[8];
}

os_log_t ___Z15getAUHOAZoomLogv_block_invoke_31592()
{
  result = os_log_create("com.apple.coreaudio", "hoaz");
  getAUHOAZoomLog(void)::gLog = result;
  return result;
}

void DominanceCurveCoordinator::UpdateEffectiveDominanceCurve(DominanceCurveCoordinator *this)
{
  if (*(this + 10) != *(this + 9))
  {
    v2 = 0;
    do
    {
      v3 = v2 * 0.5 * *(this + 12) / *(this + 13);
      v4 = logf(v3);
      if (v3 <= 0.0)
      {
        v5 = -30.0;
      }

      else
      {
        v5 = v4;
      }

      if (*(this + 159) < 0)
      {
        std::string::__init_copy_ctor_external(&v16, *(this + 17), *(this + 18));
      }

      else
      {
        v16 = *(this + 136);
      }

      v6 = ZoomCurveValue::operator[](this, &v16);
      v7 = PiecewiseLinearTransform::tx(*v6, v5, v6[1]);
      if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v16.__r_.__value_.__l.__data_);
      }

      if (*(this + 183) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *(this + 20), *(this + 21));
      }

      else
      {
        __p = *(this + 160);
      }

      v8 = ZoomCurveValue::operator[](this, &__p);
      v9 = PiecewiseLinearTransform::tx(*v8, v5, v8[1]);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v10 = *(this + 9);
      v11 = (*(this + 10) - v10) >> 2;
      if (v11 <= v2)
      {
        std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
      }

      v12 = (v7 * *(this + 46)) + v9 * (1.0 - *(this + 46));
      if (v12 <= 1.0)
      {
        v13 = (v7 * *(this + 46)) + v9 * (1.0 - *(this + 46));
      }

      else
      {
        v13 = 1.0;
      }

      if (v12 >= 0.0)
      {
        v14 = v13;
      }

      else
      {
        v14 = 0.0;
      }

      *(v10 + 4 * v2++) = v14;
    }

    while (v2 < v11);
  }
}

void sub_1DE011694(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void DominanceZoom::DominanceZoom()
{
  v4 = *MEMORY[0x1E69E9840];
  std::string::basic_string[abi:ne200100]<0>(buf, "HOAZoomCurve");
  std::string::basic_string[abi:ne200100]<0>(&v2[1], "HOAZoomInDominanceCurve");
  std::string::basic_string[abi:ne200100]<0>(v3, "HOAZoomOutDominanceCurve");
  memset(v0, 0, sizeof(v0));
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(v0, buf, &v4, 3uLL);
}

void sub_1DE011BE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23)
{
  if (__p)
  {
    a23 = __p;
    operator delete(__p);
  }

  std::vector<CLiteMatrix>::__destroy_vector::operator()[abi:ne200100](&a20);
  v25 = *(v23 + 256);
  if (v25)
  {
    *(v23 + 264) = v25;
    operator delete(v25);
  }

  v26 = *(v23 + 216);
  if (v26)
  {
    *(v23 + 224) = v26;
    operator delete(v26);
  }

  DominanceCurveCoordinator::~DominanceCurveCoordinator(v23);
  _Unwind_Resume(a1);
}

uint64_t DominanceZoom::SetZoomCurveValue(DominanceZoom *this, ZoomCurveValue *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  if (getAUHOAZoomLog(void)::onceToken != -1)
  {
    dispatch_once(&getAUHOAZoomLog(void)::onceToken, &__block_literal_global_31581);
  }

  v4 = getAUHOAZoomLog(void)::gLog;
  if (os_log_type_enabled(getAUHOAZoomLog(void)::gLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "DominanceZoom.cpp";
    v26 = 1024;
    v27 = 191;
    _os_log_impl(&dword_1DDB85000, v4, OS_LOG_TYPE_DEFAULT, "%s:%i --", buf, 0x12u);
  }

  caulk::pooled_semaphore_mutex::_lock((this + 192));
  if (getAUHOAZoomLog(void)::onceToken != -1)
  {
    dispatch_once(&getAUHOAZoomLog(void)::onceToken, &__block_literal_global_31581);
  }

  v5 = getAUHOAZoomLog(void)::gLog;
  if (os_log_type_enabled(getAUHOAZoomLog(void)::gLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "DominanceZoom.cpp";
    v26 = 1024;
    v27 = 191;
    _os_log_impl(&dword_1DDB85000, v5, OS_LOG_TYPE_DEFAULT, "%s:%i locked", buf, 0x12u);
  }

  std::string::basic_string[abi:ne200100]<0>(buf, "HOAZoomCurve");
  v6 = (a2 + 8);
  v7 = std::__tree<std::__value_type<std::string,PiecewiseLinearTransform>,std::__map_value_compare<std::string,std::__value_type<std::string,PiecewiseLinearTransform>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,PiecewiseLinearTransform>>>::__count_unique<std::string>(*(a2 + 1), buf);
  if (v28 < 0)
  {
    operator delete(*buf);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "HOAZoomInDominanceCurve");
  v8 = std::__tree<std::__value_type<std::string,PiecewiseLinearTransform>,std::__map_value_compare<std::string,std::__value_type<std::string,PiecewiseLinearTransform>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,PiecewiseLinearTransform>>>::__count_unique<std::string>(*v6, __p);
  if (v23 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v20, "HOAZoomOutDominanceCurve");
  v9 = std::__tree<std::__value_type<std::string,PiecewiseLinearTransform>,std::__map_value_compare<std::string,std::__value_type<std::string,PiecewiseLinearTransform>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,PiecewiseLinearTransform>>>::__count_unique<std::string>(*v6, v20);
  if (v7)
  {
    v10 = v8 == 0;
  }

  else
  {
    v10 = 1;
  }

  v12 = !v10 && v9 != 0;
  if (v21 < 0)
  {
    operator delete(v20[0]);
    if (v12)
    {
      goto LABEL_24;
    }
  }

  else if (v12)
  {
LABEL_24:
    if (this != a2)
    {
      std::__tree<std::__value_type<std::string,PiecewiseLinearTransform>,std::__map_value_compare<std::string,std::__value_type<std::string,PiecewiseLinearTransform>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,PiecewiseLinearTransform>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<std::string,PiecewiseLinearTransform>,std::__tree_node<std::__value_type<std::string,PiecewiseLinearTransform>,void *> *,long>>(this, *a2, a2 + 1);
      std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>(this + 1, *(a2 + 3), *(a2 + 4), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 4) - *(a2 + 3)) >> 3));
    }

    std::string::operator=(this + 2, a2 + 2);
    if (*(this + 135) < 0)
    {
      std::string::__init_copy_ctor_external(&v24, *(this + 14), *(this + 15));
    }

    else
    {
      v24 = *(this + 112);
    }

    v14 = ZoomCurveValue::operator[](this, &v24);
    ApplyLogTransformationOfXValues(v14);
    if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v24.__r_.__value_.__l.__data_);
    }

    if (*(this + 159) < 0)
    {
      std::string::__init_copy_ctor_external(&v19, *(this + 17), *(this + 18));
    }

    else
    {
      v19 = *(this + 136);
    }

    v15 = ZoomCurveValue::operator[](this, &v19);
    ApplyLogTransformationOfXValues(v15);
    if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v19.__r_.__value_.__l.__data_);
    }

    if (*(this + 183) < 0)
    {
      std::string::__init_copy_ctor_external(&v18, *(this + 20), *(this + 21));
    }

    else
    {
      v18 = *(this + 160);
    }

    v16 = ZoomCurveValue::operator[](this, &v18);
    ApplyLogTransformationOfXValues(v16);
    if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v18.__r_.__value_.__l.__data_);
    }

    goto LABEL_46;
  }

  if (getAUHOAZoomLog(void)::onceToken != -1)
  {
    dispatch_once(&getAUHOAZoomLog(void)::onceToken, &__block_literal_global_31581);
  }

  v13 = getAUHOAZoomLog(void)::gLog;
  if (os_log_type_enabled(getAUHOAZoomLog(void)::gLog, OS_LOG_TYPE_ERROR))
  {
    LODWORD(v24.__r_.__value_.__l.__data_) = 136315394;
    *(v24.__r_.__value_.__r.__words + 4) = "DominanceZoom.cpp";
    WORD2(v24.__r_.__value_.__r.__words[1]) = 1024;
    *(&v24.__r_.__value_.__r.__words[1] + 6) = 92;
    _os_log_error_impl(&dword_1DDB85000, v13, OS_LOG_TYPE_ERROR, "%s:%i invalid zoom curve value for dominance zoom", &v24, 0x12u);
  }

LABEL_46:
  atomic_fetch_add(this + 84, 1u);
  return caulk::pooled_semaphore_mutex::_unlock((this + 192));
}

void sub_1DE01214C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(a9);
  }

  caulk::pooled_semaphore_mutex::_unlock((v14 + 192));
  _Unwind_Resume(a1);
}

uint64_t DominanceZoom::CopyZoomCurveValue(std::string *this, uint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  if (getAUHOAZoomLog(void)::onceToken != -1)
  {
    dispatch_once(&getAUHOAZoomLog(void)::onceToken, &__block_literal_global_31581);
  }

  v4 = getAUHOAZoomLog(void)::gLog;
  if (os_log_type_enabled(getAUHOAZoomLog(void)::gLog, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
    *(buf.__r_.__value_.__r.__words + 4) = "DominanceZoom.cpp";
    WORD2(buf.__r_.__value_.__r.__words[1]) = 1024;
    *(&buf.__r_.__value_.__r.__words[1] + 6) = 198;
    _os_log_impl(&dword_1DDB85000, v4, OS_LOG_TYPE_DEFAULT, "%s:%i --", &buf, 0x12u);
  }

  caulk::pooled_semaphore_mutex::_lock((a2 + 192));
  if (getAUHOAZoomLog(void)::onceToken != -1)
  {
    dispatch_once(&getAUHOAZoomLog(void)::onceToken, &__block_literal_global_31581);
  }

  v5 = getAUHOAZoomLog(void)::gLog;
  if (os_log_type_enabled(getAUHOAZoomLog(void)::gLog, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
    *(buf.__r_.__value_.__r.__words + 4) = "DominanceZoom.cpp";
    WORD2(buf.__r_.__value_.__r.__words[1]) = 1024;
    *(&buf.__r_.__value_.__r.__words[1] + 6) = 198;
    _os_log_impl(&dword_1DDB85000, v5, OS_LOG_TYPE_DEFAULT, "%s:%i locked", &buf, 0x12u);
  }

  std::map<std::string,PiecewiseLinearTransform>::map[abi:ne200100](this, a2);
  this[1].__r_.__value_.__r.__words[0] = 0;
  this[1].__r_.__value_.__l.__size_ = 0;
  this[1].__r_.__value_.__r.__words[2] = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&this[1], *(a2 + 24), *(a2 + 32), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 32) - *(a2 + 24)) >> 3));
  if (*(a2 + 71) < 0)
  {
    std::string::__init_copy_ctor_external(this + 2, *(a2 + 48), *(a2 + 56));
  }

  else
  {
    *&this[2].__r_.__value_.__l.__data_ = *(a2 + 48);
    this[2].__r_.__value_.__r.__words[2] = *(a2 + 64);
  }

  if (*(a2 + 135) < 0)
  {
    std::string::__init_copy_ctor_external(&buf, *(a2 + 112), *(a2 + 120));
  }

  else
  {
    buf = *(a2 + 112);
  }

  v6 = ZoomCurveValue::operator[](this, &buf);
  UndoLogTransformationOfXValues(v6);
  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }

  if (*(a2 + 159) < 0)
  {
    std::string::__init_copy_ctor_external(&v11, *(a2 + 136), *(a2 + 144));
  }

  else
  {
    v11 = *(a2 + 136);
  }

  v7 = ZoomCurveValue::operator[](this, &v11);
  UndoLogTransformationOfXValues(v7);
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  if (*(a2 + 183) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a2 + 160), *(a2 + 168));
  }

  else
  {
    __p = *(a2 + 160);
  }

  v8 = ZoomCurveValue::operator[](this, &__p);
  UndoLogTransformationOfXValues(v8);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return caulk::pooled_semaphore_mutex::_unlock((a2 + 192));
}

void sub_1DE01246C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  v31 = v30;
  a23 = v31;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a23);
  std::__tree<std::__value_type<std::string,std::vector<float>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<float>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<float>>>>::destroy(*(v29 + 8));
  caulk::pooled_semaphore_mutex::_unlock((v28 + 192));
  _Unwind_Resume(a1);
}

uint64_t DominanceZoom::SetFOV(DominanceZoom *this, float a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (getAUHOAZoomLog(void)::onceToken != -1)
  {
    dispatch_once(&getAUHOAZoomLog(void)::onceToken, &__block_literal_global_31581);
  }

  v4 = getAUHOAZoomLog(void)::gLog;
  if (os_log_type_enabled(getAUHOAZoomLog(void)::gLog, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(__p.__r_.__value_.__l.__data_) = 136315394;
    *(__p.__r_.__value_.__r.__words + 4) = "DominanceZoom.cpp";
    WORD2(__p.__r_.__value_.__r.__words[1]) = 1024;
    *(&__p.__r_.__value_.__r.__words[1] + 6) = 204;
    _os_log_impl(&dword_1DDB85000, v4, OS_LOG_TYPE_DEFAULT, "%s:%i --", &__p, 0x12u);
  }

  caulk::pooled_semaphore_mutex::_lock((this + 192));
  if (getAUHOAZoomLog(void)::onceToken != -1)
  {
    dispatch_once(&getAUHOAZoomLog(void)::onceToken, &__block_literal_global_31581);
  }

  v5 = getAUHOAZoomLog(void)::gLog;
  if (os_log_type_enabled(getAUHOAZoomLog(void)::gLog, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(__p.__r_.__value_.__l.__data_) = 136315394;
    *(__p.__r_.__value_.__r.__words + 4) = "DominanceZoom.cpp";
    WORD2(__p.__r_.__value_.__r.__words[1]) = 1024;
    *(&__p.__r_.__value_.__r.__words[1] + 6) = 204;
    _os_log_impl(&dword_1DDB85000, v5, OS_LOG_TYPE_DEFAULT, "%s:%i locked", &__p, 0x12u);
  }

  *(this + 47) = a2;
  if (*(this + 135) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(this + 14), *(this + 15));
  }

  else
  {
    __p = *(this + 112);
  }

  v6 = ZoomCurveValue::operator[](this, &__p);
  v7 = *(this + 47);
  v8 = logf(v7);
  if (v7 <= 0.0)
  {
    v8 = -30.0;
  }

  v9 = PiecewiseLinearTransform::tx(*v6, v8, v6[1]);
  v10 = 1.0;
  if (v9 <= 1.0)
  {
    v10 = v9;
  }

  v11 = v9 < 0.0;
  v12 = 0.0;
  if (!v11)
  {
    v12 = v10;
  }

  *(this + 46) = v12;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  atomic_fetch_add(this + 84, 1u);
  return caulk::pooled_semaphore_mutex::_unlock((this + 192));
}

uint64_t DominanceZoom::SetZoomAmount(DominanceZoom *this, float a2)
{
  v12 = *MEMORY[0x1E69E9840];
  if (getAUHOAZoomLog(void)::onceToken != -1)
  {
    dispatch_once(&getAUHOAZoomLog(void)::onceToken, &__block_literal_global_31581);
  }

  v4 = getAUHOAZoomLog(void)::gLog;
  if (os_log_type_enabled(getAUHOAZoomLog(void)::gLog, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "DominanceZoom.cpp";
    v10 = 1024;
    v11 = 217;
    _os_log_impl(&dword_1DDB85000, v4, OS_LOG_TYPE_DEFAULT, "%s:%i --", &v8, 0x12u);
  }

  caulk::pooled_semaphore_mutex::_lock((this + 192));
  if (getAUHOAZoomLog(void)::onceToken != -1)
  {
    dispatch_once(&getAUHOAZoomLog(void)::onceToken, &__block_literal_global_31581);
  }

  v5 = getAUHOAZoomLog(void)::gLog;
  if (os_log_type_enabled(getAUHOAZoomLog(void)::gLog, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "DominanceZoom.cpp";
    v10 = 1024;
    v11 = 217;
    _os_log_impl(&dword_1DDB85000, v5, OS_LOG_TYPE_DEFAULT, "%s:%i locked", &v8, 0x12u);
  }

  v6 = 1.0;
  if (a2 <= 1.0)
  {
    v6 = a2;
  }

  if (a2 < 0.0)
  {
    v6 = 0.0;
  }

  *(this + 46) = v6;
  atomic_fetch_add(this + 84, 1u);
  return caulk::pooled_semaphore_mutex::_unlock((this + 192));
}

void AUsubMAEC::learnRate::~learnRate(AUsubMAEC::learnRate *this)
{
  if (this)
  {
    v2 = *this;
    if (*this)
    {
      free(v2);
      *this = 0;
    }
  }

  v3 = *(this + 12);
  if (v3)
  {
    free(v3);
    *(this + 12) = 0;
  }

  v4 = *(this + 1);
  if (v4)
  {
    free(v4);
    *(this + 1) = 0;
  }

  v5 = *(this + 13);
  if (v5)
  {
    free(v5);
    *(this + 13) = 0;
  }

  v6 = *(this + 2);
  if (v6)
  {
    free(v6);
    *(this + 2) = 0;
  }

  v7 = *(this + 20);
  if (v7)
  {
    free(v7);
    *(this + 20) = 0;
  }

  v8 = *(this + 21);
  if (v8)
  {
    free(v8);
    *(this + 21) = 0;
  }

  v9 = *(this + 22);
  if (v9)
  {
    free(v9);
    *(this + 22) = 0;
  }

  v10 = *(this + 24);
  if (v10)
  {
    free(v10);
    *(this + 24) = 0;
  }
}

void AUsubMAEC::learnRate::initStatistics(uint64_t a1, _DWORD *a2)
{
  *(a1 + 40) = a2[12];
  v3 = a2[6];
  *(a1 + 44) = v3;
  *(a1 + 48) = a2[2];
  *(a1 + 52) = a2[3];
  *(a1 + 56) = a2[4];
  *(a1 + 60) = a2[5];
  *(a1 + 64) = a2[13];
  *(a1 + 68) = a2[14];
  *(a1 + 72) = a2[8];
  v4 = malloc_type_malloc(4 * v3, 0xE2FB9F31uLL);
  v5 = v4;
  if (v3 && !v4 || (bzero(v4, 4 * v3), *a1 = v5, __A = 1.0, vDSP_vfill(&__A, v5, 1, *(a1 + 44)), v6 = *(a1 + 44), v7 = 4 * v6, v8 = 4 * v6, v9 = malloc_type_malloc(v8, 0xB676E7BFuLL), (v10 = v9) == 0) && v7 || (bzero(v9, v7), *(a1 + 96) = v10, v11 = malloc_type_malloc(v7, 0x4D33536DuLL), v12 = v11, v8) && !v11 || (bzero(v11, v7), *(a1 + 8) = v12, v13 = malloc_type_malloc(v7, 0xC44653FuLL), v14 = v13, v8) && !v13 || (bzero(v13, v7), *(a1 + 104) = v14, v15 = malloc_type_malloc(v7, 0xA82E21D0uLL), v16 = v15, v8) && !v15 || (bzero(v15, v7), *(a1 + 16) = v16, *(a1 + 112) = vdup_n_s32(0x30800002u), v17 = *(a1 + 48), v18 = (v17 / *(a1 + 72)) * 0.25, *(a1 + 120) = v18, *(a1 + 124) = v18, *(a1 + 128) = v17 / 32000.0, *(a1 + 24) = 1065353216, *(a1 + 132) = xmmword_1DE09E690, *(a1 + 148) = 0, *(a1 + 152) = 0, *(a1 + 28) = 0, v19 = malloc_type_malloc(v7, 0x918CC9A8uLL), v20 = v19, v8) && !v19 || (bzero(v19, v7), *(a1 + 160) = v20, v21 = malloc_type_malloc(v7, 0x791250B7uLL), v22 = v21, v8) && !v21 || (bzero(v21, v7), *(a1 + 168) = v22, v34 = 9.3132e-10, vDSP_vfill(&v34, v22, 1, *(a1 + 44)), v23 = 8 * v6, v24 = malloc_type_malloc(8 * v6, 0x31B5BAEEuLL), v25 = v24, v23) && !v24 || (bzero(v24, v23), v26 = &v25[4 * *(a1 + 44)], *(a1 + 176) = v25, *(a1 + 184) = v26, v27 = malloc_type_malloc(v8, 0xD52C090EuLL), v28 = v27, v8) && !v27)
  {
    exception = __cxa_allocate_exception(8uLL);
    v33 = std::bad_alloc::bad_alloc(exception);
  }

  bzero(v27, v8);
  *(a1 + 192) = v28;
  vDSP_vfill(&v34, v28, 1, *(a1 + 44));
  v29 = *(a1 + 72);
  *v30.i32 = v29 / *(a1 + 48);
  *(a1 + 200) = vcvt_s32_f32(vmaxnm_f32(vrndm_f32(vdiv_f32(0x4396000044E10000, vdup_lane_s32(v30, 0))), 0));
  v31 = expf((*(a1 + 60) / v29) / -0.03);
  *(a1 + 208) = v31;
  *(a1 + 212) = 1.0 - v31;
}

void AUsubMAEC::learnRate::adaptFilter(AUsubMAEC::learnRate *this, DSPSplitComplex a2, AUsubMAEC::dftBuffer *a3, AUsubMAEC::myFilter *a4)
{
  imagp = a2.imagp;
  v99 = *MEMORY[0x1E69E9840];
  v6 = *a4;
  v7 = *(a4 + 1);
  v9 = *(a4 + 2);
  v8 = *(a4 + 3);
  v10 = *(a4 + 5);
  v93 = *(a4 + 4);
  v94 = v8;
  v11 = *a3;
  v88 = *(a3 + 1);
  v89 = v11;
  v12 = *(a3 + 5);
  v91 = *(a3 + 4);
  v92 = v10;
  MEMORY[0x1EEE9AC00](this);
  v14 = (&v85 - ((v13 + 15) & 0x7FFFFFFF0));
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v85 - v16);
  v87 = *(v18 + 64) * v19;
  MEMORY[0x1EEE9AC00](v18);
  v21 = (&v85 - ((v20 + 15) & 0x7FFFFFFF0));
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = (&v85 - v24);
  MEMORY[0x1E12BE7F0](v27, 1, *v26, 1, v14, 1, v23);
  MEMORY[0x1E12BE7F0](imagp, 1, *this, 1, v17, 1, *(this + 11));
  v95.realp = v14 + 1;
  v95.imagp = v17 + 1;
  if (*(this + 10) >= 1)
  {
    v28 = 0;
    v85 = v9;
    v86 = v7;
    v90 = v12;
    do
    {
      v29 = *(v88 + 8 * v28);
      __A.realp = *(v89 + 8 * v28);
      __A.imagp = v29;
      __C.realp = v21;
      __C.imagp = v25;
      vDSP_zvconj(&__A, 1, &__C, 1, v87);
      v30 = v6;
      v31 = v91;
      if (*(this + 16) >= 1)
      {
        v32 = v7;
        v33 = 0;
        do
        {
          v34 = *(this + 11);
          v35 = v34 * v31[v33];
          v36 = 4 * v34 * v33 + 4;
          v37 = (*(v30 + 8 * v28) + v36);
          v38 = (*(v32 + 8 * v28) + v36);
          v39 = 4 * v35 + 4;
          __D.realp = v37;
          __D.imagp = v38;
          __A.realp = (v21 + v39);
          __A.imagp = (v25 + v39);
          vDSP_zvma(&v95, 1, &__A, 1, &__D, 1, &__D, 1, *(this + 14));
          ++v33;
        }

        while (v33 < *(this + 16));
      }

      LODWORD(v40) = *(this + 17);
      v41 = v93;
      v42 = v94;
      v43 = v92;
      if (v40)
      {
        v6 = v30;
        if (v40 >= 1)
        {
          v44 = 0;
          v45 = v85;
          v46 = v90;
          do
          {
            v47 = *(this + 11);
            v48 = v47 * v46[v44];
            v49 = 4 * v47 * v44 + 4;
            v50 = (*(v45 + 8 * v28) + v49);
            v51 = (*(v42 + 8 * v28) + v49);
            __D.realp = v50;
            __D.imagp = v51;
            __A.realp = &v21[v48];
            __A.imagp = &v25[v48];
            vDSP_zvma(&v95, 1, &__A, 1, &__D, 1, &__D, 1, *(this + 14));
            v42 = v94;
            ++v44;
            v40 = *(this + 17);
          }

          while (v44 < v40);
          v43 = v92;
          v41 = v93;
          v31 = v91;
          if (v40 >= 1)
          {
            v52 = 0;
            v53 = v90;
            do
            {
              v54 = *(this + 11);
              v55 = v54 * v53[v52];
              v56 = 4 * v54 * v52 + 4;
              v57 = (*(v41 + 8 * v28) + v56);
              v58 = (*(v43 + 8 * v28) + v56);
              v59 = 4 * v55 + 8;
              __D.realp = v57;
              __D.imagp = v58;
              __A.realp = (v21 + v59);
              __A.imagp = (v25 + v59);
              vDSP_zvma(&v95, 1, &__A, 1, &__D, 1, &__D, 1, *(this + 14));
              v43 = v92;
              v41 = v93;
              ++v52;
              v40 = *(this + 17);
            }

            while (v52 < v40);
            v42 = v94;
            v31 = v91;
          }

          goto LABEL_16;
        }
      }

      else
      {
        v6 = v30;
      }

      v45 = v85;
LABEL_16:
      v60 = *(this + 16);
      if (v60 >= 1)
      {
        v61 = *(this + 11);
        v62 = *(v6 + 8 * v28);
        v63 = *(this + 13);
        do
        {
          v64 = *v31++;
          v65 = &v21[v61 * v64];
          *v62 = *v62 + (*v14 * *v65);
          v62[v63] = v62[v63] + (v14[v63] * v65[v63]);
          v62 += v61;
          --v60;
        }

        while (v60);
      }

      v7 = v86;
      v66 = v90;
      if (v40 >= 1)
      {
        v67 = *(this + 11);
        v68 = *(v45 + 8 * v28);
        v69 = *(v42 + 8 * v28);
        v70 = *(this + 13);
        v71 = v70 - 1;
        v40 = v40;
        v72 = 4 * v67;
        v73 = v90;
        v74 = v40;
        do
        {
          v75 = *v73++;
          v76 = &v21[v67 * v75];
          v77 = &v25[v67 * v75];
          *v68 = *v68 + ((*v14 * v76[1]) - (*v17 * v77[1]));
          *v69 = *v69 + ((*v17 * v76[1]) + (*v14 * v77[1]));
          v68[v70] = v68[v70] + ((v14[v70] * v76[v71]) - (v17[v70] * v77[v71]));
          v69[v70] = v69[v70] + ((v17[v70] * v76[v71]) + (v14[v70] * v77[v71]));
          v69 = (v69 + v72);
          v68 = (v68 + v72);
          --v74;
        }

        while (v74);
        v78 = *(v41 + 8 * v28);
        v79 = *(v43 + 8 * v28);
        v80 = v70 - 2;
        v81 = v66;
        do
        {
          v82 = *v81++;
          v83 = &v21[v67 * v82];
          v84 = &v25[v67 * v82];
          *v78 = *v78 + ((*v14 * v83[2]) - (*v17 * v84[2]));
          *v79 = *v79 + ((*v17 * v83[2]) + (*v14 * v84[2]));
          v78[v70] = v78[v70] + ((v14[v70] * v83[v80]) - (v17[v70] * v84[v80]));
          v79[v70] = v79[v70] + ((v17[v70] * v83[v80]) + (v14[v70] * v84[v80]));
          v79 = (v79 + v72);
          v78 = (v78 + v72);
          --v40;
        }

        while (v40);
      }

      ++v28;
    }

    while (v28 < *(this + 10));
  }
}

float AUsubMAEC::learnRate::crossCorrSpec(AUsubMAEC::learnRate *this, const float *a2, const float *a3, const float *a4, float *a5, float *a6, float *a7)
{
  __C[1] = *MEMORY[0x1E69E9840];
  __C[0] = 0;
  v11 = MEMORY[0x1EEE9AC00](this);
  v13 = (__C - v12);
  v15 = v14;
  MEMORY[0x1E12BE9A0](v16, 1, v11);
  vDSP_svesq(v13, 1, __C + 1, v15);
  MEMORY[0x1E12BE8C0](this, 1, a2, 1, v13, 1, v13, 1, v15);
  vDSP_sve(v13, 1, __C, v15);
  *__C = *__C + 8.6736e-19;
  v17 = *__C;
  *(__C + 1) = *(__C + 1) + 8.6736e-19;
  v18 = sqrtf(*(__C + 1));
  *a6 = v18;
  result = v17 / v18;
  *a5 = result;
  return result;
}

float AUsubMAEC::learnRate::updateTimeStatistics2(AUsubMAEC::learnRate *this, const float *__A, const float *a3, const float *a4, const float *a5)
{
  __C = 0;
  vDSP_svesq(__A, 1, &__C + 1, *(this + 11));
  vDSP_svesq(a3, 1, &__C, *(this + 11));
  *(this + 21) = (*(&__C + 1) + *&__C) * *(this + 12);
  vDSP_svesq(a4, 1, &__C + 1, *(this + 11));
  vDSP_svesq(a5, 1, &__C, *(this + 11));
  v9 = *(this + 12);
  v10 = (*(&__C + 1) + *&__C) * v9;
  v11 = *(this + 21);
  *(this + 22) = v11;
  *(this + 23) = v10;
  v12 = (v9 * 100.0) * 9.3132e-10;
  if (v11 < v12)
  {
    *(this + 21) = v12;
  }

  v13 = v11 / (*(this + 20) + 1.0e-20);
  *(this + 39) = v13;
  v14 = v13 + 1.0e-20;
  result = log10f(v14) * 10.0;
  *(this + 8) = result;
  return result;
}

void AUsubMAEC::learnRate::getLeakage(AUsubMAEC::learnRate *this, float *a2, float *a3, float *a4, float *a5)
{
  v25 = 0;
  __A.realp = a2;
  v8 = *(this + 11);
  v9 = *(this + 12);
  __A.imagp = a3;
  vDSP_zvmags(&__A, 1, v9, 1, v8);
  v10 = *(this + 11);
  v11 = *(this + 13);
  __A.realp = a4;
  __A.imagp = a5;
  vDSP_zvmags(&__A, 1, v11, 1, v10);
  AUsubMAEC::learnRate::crossCorrSpec(*(this + 12), *(this + 1), *(this + 13), *(this + 2), &v25 + 1, &v25, *(this + 11));
  v12 = *(this + 30);
  v13 = *(this + 31) * *(this + 23);
  v14 = *(this + 21);
  if (v13 > (v12 * v14))
  {
    v13 = v12 * v14;
  }

  v15 = v13 / v14;
  if (v14 >= 9.3132e-19)
  {
    v16 = v15;
  }

  else
  {
    v16 = *(this + 30);
  }

  v17 = fmin(v14 / (*(this + 20) + 1.0e-20), 1.0);
  v18 = log10(v17 + 1.0e-20);
  v19 = (v16 * *(&v25 + 1)) + ((1.0 - v16) * *(this + 28));
  v20 = (v16 * *&v25) + ((1.0 - v16) * *(this + 29));
  if (v20 < 9.3132e-10)
  {
    v20 = 9.3132e-10;
  }

  if (v19 >= (v20 * 0.005))
  {
    v21 = (v16 * *(&v25 + 1)) + ((1.0 - v16) * *(this + 28));
  }

  else
  {
    v21 = v20 * 0.005;
  }

  if (v21 <= v20)
  {
    v22 = v21;
  }

  else
  {
    v22 = v20;
  }

  *(this + 39) = v17;
  v23 = v18 * 10.0;
  *(this + 8) = v23;
  *(this + 28) = v19;
  *(this + 29) = v20;
  if (v19 < (v20 * 0.005) || v21 > v20)
  {
    *(this + 28) = v22;
  }

  *(this + 33) = v22 / v20;
  VPEchoGateV3::GatesmoothPowerSpectrum(*(this + 1), *(this + 12), *(this + 11), *(this + 32));
  VPEchoGateV3::GatesmoothPowerSpectrum(*(this + 2), *(this + 13), *(this + 11), *(this + 32));
  *(this + 34) = 1056964608;
  if (*(this + 6) < 0.85 && *(this + 148) == 1 && (*(this + 28) & 1) == 0)
  {
    *(this + 34) = 0;
  }

  AUsubMAEC::learnRate::getAdaptationRate(this);
  if ((*(this + 148) & 1) == 0 && *(this + 38) > 8.0 && *(this + 33) > *(this + 36))
  {
    *(this + 148) = 1;
  }
}

float AUsubMAEC::learnRate::getAdaptationRate(AUsubMAEC::learnRate *this)
{
  v19 = *MEMORY[0x1E69E9840];
  __B = 0.0;
  __C = 0.1;
  if (*(this + 148) == 1)
  {
    __A = *(this + 33) + *(this + 33);
    MEMORY[0x1EEE9AC00](this);
    v3 = &v15[-((v2 + 15) & 0x7FFFFFFF0)];
    v5 = MEMORY[0x1EEE9AC00](v4);
    v7 = &v15[-((v6 + 15) & 0x7FFFFFFF0)];
    MEMORY[0x1E12BE940](*(this + 13), 1, &__A, v3, 1, v5);
    __A = 9.0e-10;
    MEMORY[0x1E12BE8A0](*(this + 12), 1, &__A, v7, 1, *(this + 11));
    vDSP_vmin(v3, 1, v7, 1, v3, 1, *(this + 11));
    __A = 0.35;
    MEMORY[0x1E12BE940](v3, 1, &__A, v3, 1, *(this + 11));
    __A = *(this + 34) * 0.3;
    MEMORY[0x1E12BE8F0](v7, 1, &__A, v3, 1, v3, 1, *(this + 11));
    vDSP_vdiv(v7, 1, v3, 1, *this, 1, *(this + 11));
    v8 = *(this + 6);
    if (v8 < 0.85 && (*(this + 28) & 1) == 0)
    {
      vDSP_vclip(*this, 1, &__B, &__C, *this, 1, *(this + 11));
    }
  }

  else
  {
    __A = 0.0;
    v9 = *(this + 19);
    v10 = *(this + 11);
    if (v9 > (((v10 - 1) * 2000.0) * 9.3132e-10))
    {
      v11 = v9 * 0.25;
      v12 = *(this + 21);
      if (v11 > (v12 * 0.25))
      {
        v11 = v12 * 0.25;
      }

      v13 = v11 / (v12 + 1.0e-20);
      __A = v13;
    }

    vDSP_vfill(&__A, *this, 1, v10);
    *&v8 = *(this + 38) + __A;
    *(this + 38) = LODWORD(v8);
  }

  return *&v8;
}

float AUsubMAEC::learnRate::micEchoXcorrForDTD(AUsubMAEC::learnRate *this, DSPSplitComplex a2, DSPSplitComplex a3)
{
  v12 = *MEMORY[0x1E69E9840];
  __A = a2;
  v10 = a3;
  MEMORY[0x1EEE9AC00](this);
  v5 = (&v9 - ((v4 + 15) & 0x7FFFFFFF0));
  vDSP_zvmags(&__A, 1, *(v6 + 160), 1, v7);
  MEMORY[0x1E12BE940](*(this + 20), 1, this + 212, v5, 1, *(this + 11));
  MEMORY[0x1E12BE8F0](*(this + 21), 1, this + 208, v5, 1, *(this + 21), 1, *(this + 11));
  vDSP_zvcmul(&v10, 1, &__A, 1, this + 11, 1, *(this + 11));
  vDSP_zvabs(this + 11, 1, v5, 1, *(this + 11));
  MEMORY[0x1E12BE940](v5, 1, this + 212, v5, 1, *(this + 11));
  MEMORY[0x1E12BE8F0](*(this + 24), 1, this + 208, v5, 1, *(this + 24), 1, *(this + 11));
  HIDWORD(v9) = 629145252;
  MEMORY[0x1E12BE8A0](*(this + 21), 1, &v9 + 4, v5, 1, *(this + 11));
  vDSP_vdiv(v5, 1, *(this + 24), 1, v5, 1, *(this + 11));
  vDSP_meanv(&v5[*(this + 51)], 1, this + 6, *(this + 50) - *(this + 51) + 1);
  result = fmaxf(fminf(*(this + 6), 1.0), 0.0);
  *(this + 6) = result;
  return result;
}

uint64_t AUCarter::ValidFormat(AUCarter *this, const AudioStreamBasicDescription *a2, unsigned int a3, AudioStreamBasicDescription *a4)
{
  v5 = a2;
  if (ausdk::ASBD::IsCommonFloat32(a4, a2))
  {
    v6 = (a4->mFormatFlags & 0x20) != 0 || a4->mChannelsPerFrame == 1;
  }

  else
  {
    v6 = 0;
  }

  if (v5 == 2)
  {
    v7 = a4->mChannelsPerFrame == 2;
  }

  else
  {
    if (v5 != 1)
    {
      goto LABEL_12;
    }

    v7 = a4->mChannelsPerFrame == 6;
  }

  if (!v7)
  {
    v6 = 0;
  }

LABEL_12:
  v8 = a4->mSampleRate >= 44100.0;
  if (a4->mSampleRate > 48000.0)
  {
    v8 = 0;
  }

  return v8 & v6;
}

uint64_t AUCarter::SupportedNumChannels(AUCarter *this, const AUChannelInfo **a2)
{
  if (a2)
  {
    *a2 = &AUCarter::SupportedNumChannels(AUChannelInfo const**)::sSupportedChannelConfigs;
  }

  return 1;
}

uint64_t AUCarter::GetParameterList(AUCarter *this, int a2, unsigned int *a3, unsigned int *a4)
{
  if (a2)
  {
    return 4294956430;
  }

  result = 0;
  *a4 = 0;
  return result;
}

ausdk::AUInputElement *AUCarter::Render(AUCarter *this, unsigned int *a2, const AudioTimeStamp *a3, uint64_t a4)
{
  Element = ausdk::AUScope::GetElement((this + 80), 0);
  if (!Element || (v9 = Element, (v10 = ausdk::AUScope::GetElement((this + 128), 0)) == 0))
  {
    ausdk::Throw(0xFFFFD583);
  }

  v11 = v10;
  v14 = 0;
  result = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 80, 0);
  if (v13)
  {
    result = ausdk::AUInputElement::PullInput(result, &v14, a3, 0, a4);
  }

  if (!result)
  {
    if (!*(v9 + 144) || !*(v11 + 144))
    {
      ausdk::Throw(0xFFFFFFFFLL);
    }

    return (*(*this + 176))(this, a2, *(v9 + 152) + 48, *(v11 + 152) + 48, a4);
  }

  return result;
}

uint64_t AUCarter::ProcessMultipleBufferLists(AUCarter *this, unsigned int *a2, unsigned int a3, int a4, const AudioBufferList **a5, int a6, AudioBufferList **a7)
{
  if (a4 == 1 && a5 && (*a5 ? (v7 = a6 == 1) : (v7 = 0), v7 ? (v8 = a7 == 0) : (v8 = 1), !v8 && *a7))
  {
    return (*(*this + 176))(this, a2);
  }

  else
  {
    return 4294956418;
  }
}

uint64_t AUCarter::ProcessBufferLists(AUCarter *this, unsigned int *a2, const AudioBufferList *a3, AudioBufferList *a4, vDSP_Length a5)
{
  v29[1] = *MEMORY[0x1E69E9840];
  if (a3->mNumberBuffers != 6 || a4->mNumberBuffers != 2)
  {
    return 4294956428;
  }

  if (a5)
  {
    v9 = *(this + 528);
    mData = a3->mBuffers[0].mData;
    v11 = *&a3[1].mBuffers[0].mNumberChannels;
    v12 = *&a3[2].mNumberBuffers;
    v13 = *&a3[3].mBuffers[0].mNumberChannels;
    v24 = *&a3[4].mNumberBuffers;
    v14 = a4->mBuffers[0].mData;
    v15 = *&a4[1].mBuffers[0].mNumberChannels;
    v28 = 1060439283;
    memcpy(v14, mData, 4 * a5);
    MEMORY[0x1E12BE8F0](v12, 1, &v28, v14, 1, v14, 1, a5);
    memcpy(v15, v11, 4 * a5);
    v16 = MEMORY[0x1E12BE8F0](v12, 1, &v28, v15, 1, v15, 1, a5);
    if (v9)
    {
      MEMORY[0x1E12BE8F0](v13, 1, &v28, v14, 1, v14, 1, a5);
      MEMORY[0x1E12BE8F0](v24, 1, &v28, v15, 1, v15, 1, a5);
      v17 = *(this + 68);
      v29[0] = v14;
      IR::DelayLine<float>::process(v17, v14, v29, a5);
      v18 = *(this + 89);
      v29[0] = v15;
      IR::DelayLine<float>::process(v18, v15, v29, a5);
    }

    else
    {
      MEMORY[0x1EEE9AC00](v16);
      v19 = (4 * a5 + 15) & 0x7FFFFFFF0;
      v20 = *(this + 68);
      v29[0] = v14;
      IR::DelayLine<float>::process(v20, v14, v29, a5);
      vDSP_biquad(*(this + 69), this + 140, v13, 1, (&v23 - v19), 1, a5);
      MEMORY[0x1EEE9AC00](v21);
      v22 = *(this + 89);
      v29[0] = v15;
      IR::DelayLine<float>::process(v22, v15, v29, a5);
      vDSP_biquad(*(this + 90), this + 182, v24, 1, (&v23 - v19), 1, a5);
      LODWORD(v29[0]) = 1063202038;
      v27 = -1090858008;
      MEMORY[0x1E12BE8F0](&v23 - v19, 1, v29, v14, 1, v14, 1, a5);
      MEMORY[0x1E12BE8F0](&v23 - v19, 1, &v27, v15, 1, v15, 1, a5);
      v26 = 1056625640;
      v25 = -1084281610;
      MEMORY[0x1E12BE8F0](&v23 - v19, 1, &v26, v14, 1, v14, 1, a5);
      MEMORY[0x1E12BE8F0](&v23 - v19, 1, &v25, v15, 1, v15, 1, a5);
    }
  }

  return 0;
}

uint64_t AUCarter::SetProperty(AUCarter *this, int a2, int a3, unsigned int a4, _DWORD *a5, unsigned int a6)
{
  result = 4294956417;
  if (a2 == 21 && !a3)
  {
    if (a6 >= 4)
    {
      v8 = *a5 != 0;
      if (*(this + 528) == v8)
      {
        return 0;
      }

      else
      {
        if (*(this + 17) == 1)
        {
          (*(*this + 72))(this, 0, 0);
        }

        result = 0;
        *(this + 528) = v8;
      }
    }

    else
    {
      return 4294956445;
    }
  }

  return result;
}

uint64_t AUCarter::GetProperty(AUCarter *this, int a2, int a3, unsigned int a4, _DWORD *a5)
{
  result = 4294956417;
  if (a2 == 21 && !a3)
  {
    result = 0;
    *a5 = *(this + 528);
  }

  return result;
}

uint64_t AUCarter::GetPropertyInfo(AUCarter *this, int a2, int a3, unsigned int a4, unsigned int *a5, BOOL *a6)
{
  result = 4294956417;
  if (a2 == 21 && !a3)
  {
    result = 0;
    *a6 = 1;
    *a5 = 4;
  }

  return result;
}

uint64_t AUCarter::Reset(AUCarter *this)
{
  v2 = *(this + 68);
  if (v2)
  {
    IR::DelayLine<float>::reset(v2);
  }

  *(this + 88) = 0;
  v3 = 0uLL;
  *(this + 42) = 0u;
  *(this + 43) = 0u;
  *(this + 40) = 0u;
  *(this + 41) = 0u;
  *(this + 38) = 0u;
  *(this + 39) = 0u;
  *(this + 36) = 0u;
  *(this + 37) = 0u;
  *(this + 35) = 0u;
  v4 = *(this + 89);
  if (v4)
  {
    IR::DelayLine<float>::reset(v4);
    v3 = 0uLL;
  }

  *(this + 109) = 0;
  *(this + 840) = v3;
  *(this + 856) = v3;
  *(this + 808) = v3;
  *(this + 824) = v3;
  *(this + 776) = v3;
  *(this + 792) = v3;
  *(this + 744) = v3;
  *(this + 760) = v3;
  *(this + 728) = v3;
  return 0;
}

void AUCarter::Cleanup(AUCarter *this)
{
  std::unique_ptr<IR::DelayLine<float>>::reset[abi:ne200100](this + 68, 0);
  vDSP_biquad_DestroySetup(*(this + 69));
  std::unique_ptr<IR::DelayLine<float>>::reset[abi:ne200100](this + 89, 0);
  v2 = *(this + 90);

  vDSP_biquad_DestroySetup(v2);
}

uint64_t AUCarter::Initialize(AUCarter *this)
{
  v2 = *(this + 15);
  if (v2)
  {
    LODWORD(v3) = (*(*v2 + 24))(v2);
  }

  else
  {
    v3 = (*(this + 13) - *(this + 12)) >> 3;
  }

  if (v3 == 1)
  {
    v4 = *(this + 21);
    if (v4)
    {
      LODWORD(v5) = (*(*v4 + 24))(v4);
    }

    else
    {
      v5 = (*(this + 19) - *(this + 18)) >> 3;
    }

    if (v5 == 1)
    {
      Element = ausdk::AUScope::GetElement((this + 80), 0);
      if (!Element)
      {
        goto LABEL_17;
      }

      if (*(Element + 108) != 6)
      {
        return 4294956428;
      }

      v7 = ausdk::AUScope::GetElement((this + 128), 0);
      if (!v7)
      {
LABEL_17:
        ausdk::Throw(0xFFFFD583);
      }

      if (*(v7 + 108) == 2)
      {
        SampleRate = AUDspLib::GetSampleRate(this);
        if (*(this + 67) != SampleRate)
        {
          *(this + 67) = SampleRate;
          (*(*this + 432))(this, 12, 0, 0);
        }

        v10 = (*(*this + 72))(this, 0, 0);
        IR::HilbertIIR::initialize((this + 544), v10);
      }
    }
  }

  return 4294956428;
}

void AUCarter::~AUCarter(AUCarter *this)
{
  AUCarter::~AUCarter(this);

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F59370D0;
  std::unique_ptr<IR::DelayLine<float>>::reset[abi:ne200100](this + 89, 0);
  std::unique_ptr<IR::DelayLine<float>>::reset[abi:ne200100](this + 68, 0);

  ausdk::AUBase::~AUBase(this);
}

uint64_t AULimitWindBoost::SetAudioChannelLayout(AULimitWindBoost *this, unsigned int a2, int a3, const AudioChannelLayout *a4)
{
  if (a3)
  {
    return 4294956419;
  }

  if (!a4)
  {
    return 4294956445;
  }

  result = 0;
  *(this + 238) = a4->mChannelLayoutTag;
  return result;
}

void AULimitWindBoost::GetAudioChannelLayout(AULimitWindBoost *this, unsigned int a2, int a3, AudioChannelLayout *a4, BOOL *a5)
{
  if (!a3)
  {
    *a5 = 1;
    v6 = 0;
    std::vector<char>::vector[abi:ne200100](&__p, 32);
  }

  ausdk::Throw(0xFFFFD583);
}

uint64_t AULimitWindBoost::ValidFormat(AULimitWindBoost *this, unsigned int a2, unsigned int a3, const AudioStreamBasicDescription *a4)
{
  if (a4->mBitsPerChannel == 64 && a4->mFormatID == 1718773105)
  {
    return (a4->mFormatFlags >> 5) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t AULimitWindBoost::SupportedNumChannels(AULimitWindBoost *this, const AUChannelInfo **a2)
{
  if (a2)
  {
    *a2 = &AULimitWindBoost::SupportedNumChannels(AUChannelInfo const**)::sSupportedChannelConfigs;
  }

  return 1;
}

uint64_t AULimitWindBoost::RestoreState(AULimitWindBoost *this, const void *a2)
{
  result = ausdk::AUBase::RestoreState(this, a2);
  if (!result)
  {
    atomic_fetch_add(this + 232, 1u);
  }

  return result;
}

uint64_t AULimitWindBoost::GetParameterInfo(AULimitWindBoost *this, int a2, int a3, AudioUnitParameterInfo *buffer)
{
  buffer->flags = 0;
  buffer->unitName = 0;
  if (a2)
  {
    return 4294956430;
  }

  switch(a3)
  {
    case 0:
      buffer->cfNameString = @"Reference mic index.";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"Reference mic index.", buffer->name, 52, 0x8000100u);
      buffer->clumpID = 3;
      flags = buffer->flags;
      buffer->unit = kAudioUnitParameterUnit_Generic;
      *&buffer->minValue = 0x4170000000000000;
      buffer->defaultValue = 0.0;
      goto LABEL_29;
    case 1:
      buffer->cfNameString = @"Cutoff frequency for wind boost limiting.";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"Cutoff frequency for wind boost limiting.", buffer->name, 52, 0x8000100u);
      buffer->clumpID = 3;
      flags = buffer->flags;
      buffer->unit = kAudioUnitParameterUnit_Hertz;
      buffer->defaultValue = 500.0;
      v8 = 0x457A000000000000;
      goto LABEL_28;
    case 2:
      buffer->cfNameString = @"Wind boost detection threshold (dB).";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"Wind boost detection threshold (dB).", buffer->name, 52, 0x8000100u);
      buffer->clumpID = 3;
      flags = buffer->flags;
      buffer->unit = kAudioUnitParameterUnit_Decibels;
      buffer->defaultValue = 6.0;
      goto LABEL_14;
    case 3:
      buffer->cfNameString = @"Max wind boost allowed (dB).";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"Max wind boost allowed (dB).", buffer->name, 52, 0x8000100u);
      buffer->clumpID = 3;
      flags = buffer->flags;
      buffer->unit = kAudioUnitParameterUnit_Decibels;
      buffer->defaultValue = 0.0;
LABEL_14:
      v8 = 0x4140000000000000;
      goto LABEL_28;
    case 4:
      buffer->cfNameString = @"Current Crossover Frequency (MAX).";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"Current Crossover Frequency (MAX).", buffer->name, 52, 0x8000100u);
      buffer->clumpID = 3;
      flags = buffer->flags;
      buffer->unit = kAudioUnitParameterUnit_Hertz;
      buffer->defaultValue = 20.0;
      *&buffer->minValue = 0x469C400041A00000;
      v10 = 1079017472;
      goto LABEL_30;
    case 5:
      buffer->cfNameString = @"Scale Cutoff.";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"Scale Cutoff.", buffer->name, 52, 0x8000100u);
      buffer->clumpID = 3;
      flags = buffer->flags;
      buffer->unit = kAudioUnitParameterUnit_Decibels;
      buffer->defaultValue = -100.0;
      v7 = 0x42C80000C2C80000;
      goto LABEL_22;
    case 6:
      buffer->cfNameString = @"Raw Scale Smoothing.";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"Raw Scale Smoothing.", buffer->name, 52, 0x8000100u);
      buffer->clumpID = 3;
      flags = buffer->flags;
      buffer->unit = kAudioUnitParameterUnit_Seconds;
      v11 = 0.03;
      goto LABEL_21;
    case 7:
      buffer->cfNameString = @"Omni Blend Scale Thres.";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"Omni Blend Scale Thres.", buffer->name, 52, 0x8000100u);
      buffer->clumpID = 3;
      flags = buffer->flags;
      buffer->unit = kAudioUnitParameterUnit_Decibels;
      buffer->defaultValue = -12.0;
      v8 = 0x42C80000C2C80000;
      goto LABEL_28;
    case 8:
      buffer->cfNameString = @"Crossover Max Frequency.";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"Crossover Max Frequency.", buffer->name, 52, 0x8000100u);
      buffer->clumpID = 3;
      flags = buffer->flags;
      buffer->unit = kAudioUnitParameterUnit_Hertz;
      v12 = 1250.0;
      goto LABEL_27;
    case 9:
      buffer->cfNameString = @"Crossover Index Attack.";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"Crossover Index Attack.", buffer->name, 52, 0x8000100u);
      buffer->clumpID = 3;
      flags = buffer->flags;
      buffer->unit = kAudioUnitParameterUnit_Seconds;
      v9 = 0.1;
      goto LABEL_25;
    case 10:
      buffer->cfNameString = @"Crossover Index Release.";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"Crossover Index Release.", buffer->name, 52, 0x8000100u);
      buffer->clumpID = 3;
      flags = buffer->flags;
      buffer->unit = kAudioUnitParameterUnit_Seconds;
      v9 = 1.0;
      goto LABEL_25;
    case 11:
      buffer->cfNameString = @"Crossover Index Hold.";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"Crossover Index Hold.", buffer->name, 52, 0x8000100u);
      buffer->clumpID = 3;
      flags = buffer->flags;
      buffer->unit = kAudioUnitParameterUnit_Seconds;
      v9 = 1.5;
LABEL_25:
      buffer->defaultValue = v9;
      v8 = 0x4120000000000000;
      goto LABEL_28;
    case 12:
      buffer->cfNameString = @"Crossover Index Smoothing.";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"Crossover Index Smoothing.", buffer->name, 52, 0x8000100u);
      buffer->clumpID = 3;
      flags = buffer->flags;
      buffer->unit = kAudioUnitParameterUnit_Seconds;
      v11 = 0.4;
      goto LABEL_21;
    case 13:
      buffer->cfNameString = @"Min Omni Blend Crossover Frequency.";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"Min Omni Blend Crossover Frequency.", buffer->name, 52, 0x8000100u);
      buffer->clumpID = 3;
      flags = buffer->flags;
      buffer->unit = kAudioUnitParameterUnit_Hertz;
      v12 = 250.0;
LABEL_27:
      buffer->defaultValue = v12;
      v8 = 0x469C400000000000;
      goto LABEL_28;
    case 14:
      buffer->cfNameString = @"Min Omni Blend Abs. Energy Trigger.";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"Min Omni Blend Abs. Energy Trigger.", buffer->name, 52, 0x8000100u);
      buffer->clumpID = 3;
      flags = buffer->flags;
      buffer->unit = kAudioUnitParameterUnit_Decibels;
      buffer->defaultValue = -90.0;
      v8 = 0x43480000C3480000;
      goto LABEL_28;
    case 15:
      buffer->cfNameString = @"Wind / Scratch Detect Trigger Attack.";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"Wind / Scratch Detect Trigger Attack.", buffer->name, 52, 0x8000100u);
      buffer->clumpID = 3;
      flags = buffer->flags;
      buffer->unit = kAudioUnitParameterUnit_Seconds;
      buffer->defaultValue = 0.25;
      v8 = 0x3F80000000000000;
LABEL_28:
      *&buffer->minValue = v8;
LABEL_29:
      v10 = -1072693248;
      goto LABEL_30;
    case 16:
      buffer->cfNameString = @"Wind / Scratch Detect Trigger Release.";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"Wind / Scratch Detect Trigger Release.", buffer->name, 52, 0x8000100u);
      buffer->clumpID = 3;
      flags = buffer->flags;
      buffer->unit = kAudioUnitParameterUnit_Seconds;
      buffer->defaultValue = 0.25;
      v7 = 0x3F80000000000000;
      goto LABEL_22;
    case 17:
      buffer->cfNameString = @"Cross Fade Length Ramp Slope.";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"Cross Fade Length Ramp Slope.", buffer->name, 52, 0x8000100u);
      buffer->clumpID = 3;
      flags = buffer->flags;
      buffer->unit = kAudioUnitParameterUnit_Generic;
      v11 = 0.75;
LABEL_21:
      buffer->defaultValue = v11;
      v7 = 0x4120000000000000;
LABEL_22:
      *&buffer->minValue = v7;
      v10 = -1005584384;
LABEL_30:
      result = 0;
      buffer->flags = flags | v10;
      break;
    default:
      result = 4294956418;
      break;
  }

  return result;
}

uint64_t AULimitWindBoost::GetParameterList(AULimitWindBoost *this, int a2, unsigned int *a3, unsigned int *a4)
{
  if (a2)
  {
    return 4294956430;
  }

  if (a3)
  {
    v5 = 0;
    v6 = xmmword_1DE095160;
    v7 = vdupq_n_s64(0x12uLL);
    v8 = vdupq_n_s64(2uLL);
    do
    {
      if (vmovn_s64(vcgtq_u64(v7, v6)).u8[0])
      {
        a3[v5] = v5;
      }

      if (vmovn_s64(vcgtq_u64(vdupq_n_s64(0x12uLL), *&v6)).i32[1])
      {
        a3[v5 + 1] = v5 + 1;
      }

      v5 += 2;
      v6 = vaddq_s64(v6, v8);
    }

    while (v5 != 18);
  }

  result = 0;
  *a4 = 18;
  return result;
}

ausdk::AUInputElement *AULimitWindBoost::Render(AULimitWindBoost *this, unsigned int *a2, const AudioTimeStamp *a3, uint64_t a4)
{
  result = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 80, 0);
  if (v9)
  {
    result = ausdk::AUInputElement::PullInput(result, a2, a3, 0, a4);
  }

  if (!result)
  {
    Element = ausdk::AUScope::GetElement((this + 128), 0);
    if (Element)
    {
      if (!*(Element + 144))
      {
        goto LABEL_11;
      }

      v13 = *(Element + 152) + 48;
      v11 = ausdk::AUScope::GetElement((this + 80), 0);
      if (v11)
      {
        if (*(v11 + 144))
        {
          v12 = *(v11 + 152) + 48;
          return (*(*this + 184))(this, a2, a4, 1, &v12, 1, &v13);
        }

LABEL_11:
        ausdk::Throw(0xFFFFFFFFLL);
      }
    }

    ausdk::Throw(0xFFFFD583);
  }

  return result;
}

uint64_t AULimitWindBoost::ProcessMultipleBufferLists(AULimitWindBoost *this, unsigned int *a2, unsigned int a3, unsigned int a4, const AudioBufferList **a5, unsigned int a6, AudioBufferList **a7)
{
  if (a4 < 3)
  {
    return 0;
  }

  v9 = *a5;
  v8 = a5[1];
  v10 = a5[2];
  v11 = *a7;
  v12 = *(this + 234);
  v13 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v14 & 1) == 0)
  {
LABEL_33:
    abort();
  }

  Parameter = ausdk::AUElement::GetParameter(v13, 1u);
  if (*(this + 932) != 1)
  {
    if ((*(this + 632) & 1) == 0)
    {
      __assert_rtn("ProcessMultipleBufferLists", "AULimitWindBoost.cpp", 549, "mLimitWindBoost.isInitiazlied()");
    }

    v22 = Parameter;
    v23 = *(this + 118);
    if (atomic_exchange(this + 232, 0))
    {
      for (i = 0; i != 18; ++i)
      {
        v25 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
        if ((v26 & 1) == 0)
        {
          goto LABEL_33;
        }

        v27 = ausdk::AUElement::GetParameter(v25, i);
        v28 = *(this + 66);
        if (i >= (*(this + 67) - v28) >> 2)
        {
          goto LABEL_38;
        }

        *(v28 + 4 * i) = v27;
      }

      if ((*(this + 17) & 1) != 0 && *(this + 632) == 1)
      {
        LimitWindBoost::propagateParameterChanges((this + 528));
      }
    }

    v29 = v22 / (v23 * 0.5) * v12;
    v30 = (v10->mBuffers[0].mData + 4 * *(this + 234));
    v44.realp = v10->mBuffers[0].mData;
    v44.imagp = v30;
    vDSP_zvmags(&v44, 1, *(this + 120), 1, roundf(v29));
    v31 = *(this + 66);
    if ((*(this + 67) - v31) <= 0x10)
    {
LABEL_38:
      std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
    }

    *(v31 + 16) = 0;
    if (*v9)
    {
      v32 = 0;
      v33 = (v11 + 4);
      v34 = (v9 + 4);
      do
      {
        v35 = *(this + 123);
        v36 = *(this + 124) - v35;
        if (v36 > *(v34 - 1))
        {
          __assert_rtn("ProcessMultipleBufferLists", "AULimitWindBoost.cpp", 562, "beamsABL->mBuffers[i].mDataByteSize >= mTemp.size() * sizeof(Float32)");
        }

        memcpy(v35, *v34, v36);
        LimitWindBoost::process(this + 528, this + 120, this + 123, &v8->mNumberBuffers, &v44.realp, v32);
        v37 = *(this + 123);
        v38 = *(this + 124) - v37;
        if (v38 > *(v33 - 1))
        {
          __assert_rtn("ProcessMultipleBufferLists", "AULimitWindBoost.cpp", 565, "outputABL->mBuffers[i].mDataByteSize >= mTemp.size() * sizeof(Float32)");
        }

        v39 = *v33;
        v33 += 2;
        memcpy(v39, v37, v38);
        ++v32;
        v34 += 2;
      }

      while (v32 < *v9);
      v31 = *(this + 66);
      if ((*(this + 67) - v31) <= 0xF)
      {
        __assert_rtn("getParameter", "LimitWindBoost.cpp", 159, "index <= mParameter.size()");
      }
    }

    v40 = *(v31 + 16);
    v41 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if (v42)
    {
      ausdk::AUElement::SetParameter(v41, 4u, v40);
      return 0;
    }

    goto LABEL_33;
  }

  v16 = *v9;
  if (v16 == *v11 && v16 != 0)
  {
    v18 = 0;
    v19 = (v11 + 4);
    v20 = (v9 + 4);
    do
    {
      v21 = *(v20 - 1);
      if (v21 == *(v19 - 1) && *v20 != *v19)
      {
        memcpy(*v19, *v20, v21);
        v16 = *v9;
      }

      ++v18;
      v19 += 2;
      v20 += 2;
    }

    while (v18 < v16);
  }

  return 0;
}

uint64_t AULimitWindBoost::SetParameter(atomic_uint *this, unsigned int a2, unsigned int a3, unsigned int a4, float a5)
{
  result = ausdk::AUBase::SetParameter(this, a2, a3, a4, a5);
  atomic_fetch_add(this + 232, 1u);
  return result;
}

uint64_t AULimitWindBoost::SetProperty(AULimitWindBoost *this, int a2, int a3, unsigned int a4, _DWORD *a5, unsigned int a6)
{
  result = 4294956417;
  if (a2 == 21 && !a3)
  {
    if (a6 >= 4)
    {
      result = 0;
      *(this + 932) = *a5 != 0;
    }

    else
    {
      return 4294956445;
    }
  }

  return result;
}

uint64_t AULimitWindBoost::GetProperty(AULimitWindBoost *this, int a2, int a3, unsigned int a4, int *a5)
{
  if (a3)
  {
    return 4294956417;
  }

  if (a2 == 3700)
  {
    v6 = 1;
  }

  else
  {
    if (a2 != 21)
    {
      return 4294956417;
    }

    v6 = *(this + 932);
  }

  result = 0;
  *a5 = v6;
  return result;
}

uint64_t AULimitWindBoost::GetPropertyInfo(AULimitWindBoost *this, int a2, int a3, unsigned int a4, unsigned int *a5, BOOL *a6)
{
  if (a3)
  {
    return 4294956417;
  }

  if (a2 == 21)
  {
    v7 = 1;
  }

  else
  {
    if (a2 != 3700)
    {
      return 4294956417;
    }

    v7 = 0;
  }

  result = 0;
  *a6 = v7;
  *a5 = 4;
  return result;
}

uint64_t AULimitWindBoost::Initialize(AULimitWindBoost *this)
{
  v21 = *MEMORY[0x1E69E9840];
  if (AULimitWindBoostLogScope(void)::once != -1)
  {
    dispatch_once(&AULimitWindBoostLogScope(void)::once, &__block_literal_global_31825);
  }

  if (AULimitWindBoostLogScope(void)::scope)
  {
    v2 = *AULimitWindBoostLogScope(void)::scope;
    if (!*AULimitWindBoostLogScope(void)::scope)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v2 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    *&buf[4] = "AULimitWindBoost.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 68;
    _os_log_impl(&dword_1DDB85000, v2, OS_LOG_TYPE_DEBUG, "%25s:%-5d -", buf, 0x12u);
  }

LABEL_9:
  Element = ausdk::AUScope::GetElement((this + 80), 0);
  if (!Element || (v4 = *(Element + 96), *buf = *(Element + 80), *&buf[16] = v4, *&buf[32] = *(Element + 112), (v5 = ausdk::AUScope::GetElement((this + 80), 2u)) == 0) || (v6 = *(v5 + 108), (v7 = ausdk::AUScope::GetElement((this + 128), 0)) == 0))
  {
    ausdk::Throw(0xFFFFD583);
  }

  v9 = *(v7 + 96);
  *&v19.mSampleRate = *(v7 + 80);
  *&v19.mBytesPerPacket = v9;
  *&v19.mBitsPerChannel = *(v7 + 112);
  v10 = *buf;
  if (*buf != v19.mSampleRate)
  {
    return 4294956428;
  }

  if (*&buf[8] != v19.mFormatID)
  {
    return 4294956428;
  }

  if (*&buf[16] != *&v19.mBytesPerPacket)
  {
    return 4294956428;
  }

  v11 = *&buf[28];
  if (*&buf[28] != *&v19.mChannelsPerFrame)
  {
    return 4294956428;
  }

  v12 = CA::Implementation::EquivalentFormatFlags(buf, &v19, v8);
  result = 4294956428;
  if (v12 && v6 == 1)
  {
    *(this + 118) = v10;
    v15 = *(this + 84);
    *(this + 234) = v15;
    v18 = 0;
    std::vector<float>::assign(this + 120, v15, &v18, v13);
    v16 = (2 * *(this + 234));
    v18 = 0;
    std::vector<float>::assign(this + 123, v16, &v18, v17);
    LimitWindBoost::initialize((this + 528), v11, *(this + 234), *(this + 118), *(this + 238));
    return 0;
  }

  return result;
}

void AULimitWindBoost::~AULimitWindBoost(AULimitWindBoost *this)
{
  *this = &unk_1F5937320;
  v2 = *(this + 123);
  if (v2)
  {
    *(this + 124) = v2;
    operator delete(v2);
  }

  v3 = *(this + 120);
  if (v3)
  {
    *(this + 121) = v3;
    operator delete(v3);
  }

  LimitWindBoost::~LimitWindBoost((this + 528));
  ausdk::AUBase::~AUBase(this);

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F5937320;
  v2 = *(this + 123);
  if (v2)
  {
    *(this + 124) = v2;
    operator delete(v2);
  }

  v3 = *(this + 120);
  if (v3)
  {
    *(this + 121) = v3;
    operator delete(v3);
  }

  LimitWindBoost::~LimitWindBoost((this + 528));

  ausdk::AUBase::~AUBase(this);
}

float CResidualSuppressorV3::preprocess_analysis_freq(uint64_t a1, uint64_t a2, const void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 8);
  v6 = *(a1 + 104);
  MEMORY[0x1EEE9AC00](a1);
  v8 = (&v13 - ((v7 + 15) & 0x7FFFFFFF0));
  v9 = &v8[v5];
  __A.realp = v8;
  __A.imagp = v9;
  memcpy(v8, v10, 4 * v5);
  memcpy(v9, a3, 4 * v5);
  __Z.realp = v9 + 1;
  __Z.imagp = v8 + 2;
  vDSP_ztoc(&__Z, 1, (*(a1 + 96) + 8), 2, v5 - 2);
  v11 = *(a1 + 96);
  *v11 = *v8;
  v11[1] = *(v8 + 1);
  v11[2 * v5 - 2] = LODWORD(v8[2 * v5 - 1]);
  v11[2 * v5 - 1] = *v9;
  vDSP_zvmags(&__A, 1, v6, 1, v5);
  *v6 = *__A.realp * *__A.realp;
  return CFilterBank::filterbank_compute_bank32(*(a1 + 24), v6, &v6[v5]);
}

void CResidualSuppressorV3::speex_analysis(uint64_t a1, char *a2, DSPSplitComplex *a3)
{
  v6 = *(a1 + 4);
  v7 = *(a1 + 8);
  v8 = 2 * v7 - v6;
  v9 = v6 - v8;
  memcpy(*(a1 + 88), *(a1 + 312), 4 * v8);
  memcpy((*(a1 + 88) + 4 * v8), a2, 4 * *(a1 + 4));
  memcpy(*(a1 + 312), &a2[4 * v9], 4 * v8);
  MEMORY[0x1E12BE7F0](*(a1 + 88), 1, *(a1 + 128), 1, *(a1 + 88), 1, 2 * v7);
  vDSP_ctoz(*(a1 + 88), 2, a3, 1, v7);
  v11 = *(a1 + 336);
  if (v11)
  {
    MultiRadixRealFFT::RealInPlaceTransform(v11, a3, 1, v10);
  }

  __B = v7 + v7;
  vDSP_vsdiv(a3->realp, 1, &__B, a3->realp, 1, v7);
  vDSP_vsdiv(a3->imagp, 1, &__B, a3->imagp, 1, v7);
}

float CResidualSuppressorV3::speex_synthesis(uint64_t a1, uint64_t a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = (&__Z - v5);
  v7 = (&__Z + 4 * v4 - v5);
  __Z.realp = v7 + 1;
  __Z.imagp = (&__Z.imagp - v5);
  vDSP_ctoz((*(v8 + 96) + 8), 2, &__Z, 1, v4 - 2);
  v9 = *(a1 + 96);
  *v6 = *v9;
  v10 = 8 * v4 - 4;
  *(v6 + v10) = *&v9[v4 - 1];
  v11 = 2 * v4;
  *v7 = *(v9 + v10);
  __Z.realp = v6;
  __Z.imagp = v7;
  v26 = 939524096;
  MEMORY[0x1E12BE940](v6, 1, &v26, v6, 1, (2 * v4));
  v13 = *(a1 + 336);
  if (v13)
  {
    MultiRadixRealFFT::RealInPlaceTransform(v13, &__Z, -1, v12);
  }

  vDSP_ztoc(&__Z, 1, *(a1 + 88), 2, v4);
  MEMORY[0x1E12BE7F0](*(a1 + 88), 1, *(a1 + 128), 1, *(a1 + 88), 1, 2 * v4);
  v14 = *(a1 + 4);
  v15 = (v11 - v14);
  v16 = (v14 - v15);
  MEMORY[0x1E12BE5D0](*(a1 + 320), 1, *(a1 + 88), 1, a2, 1, v15);
  if (v16 >= 1)
  {
    v18 = 4 * v11 - 4 * v14;
    v19 = (a2 + v18);
    v20 = (*(a1 + 88) + v18);
    do
    {
      v21 = *v20++;
      result = v21;
      *v19++ = v21;
      --v16;
    }

    while (v16);
  }

  if (v15 >= 1)
  {
    v22 = *(a1 + 320);
    v23 = (*(a1 + 88) + 4 * *(a1 + 4));
    do
    {
      v24 = *v23++;
      result = v24;
      *v22++ = v24;
      --v15;
    }

    while (v15);
  }

  return result;
}

void *CResidualSuppressorV3::EstimateNoise(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = v4;
  if (*(a1 + 328) <= ((*(a1 + 12) * 0.5) / v4))
  {
    v6 = *(a1 + 292);
  }

  else if (*a1)
  {
    v6 = *(a1 + 284);
  }

  else
  {
    v6 = *(a1 + 280);
  }

  v21 = v6;
  v19 = *(a1 + 296);
  v20 = 1.0 - v6;
  v7 = 1.0 - *(a1 + 264);
  v22 = v7 * 0.667;
  v23 = v7 * 0.333;
  v8 = *(a1 + 744);
  *v8 = 0;
  MEMORY[0x1E12BE940](a2, 1, &v23, v8 + 1, 1, v4 - 1);
  MEMORY[0x1E12BE8F0](a2 + 4, 1, &v23, *(a1 + 744), 1, *(a1 + 744), 1, v4 - 1);
  MEMORY[0x1E12BE8F0](a2, 1, &v22, *(a1 + 744), 1, *(a1 + 744), 1, v4);
  MEMORY[0x1E12BE8F0](*(a1 + 184), 1, a1 + 264, *(a1 + 744), 1, *(a1 + 184), 1, v4);
  v9 = *(a1 + 328);
  if (v9 == 1)
  {
    vDSP_vclr(*(a1 + 192), 1, v4);
    vDSP_vclr(*(a1 + 200), 1, v4);
    v9 = *(a1 + 328);
  }

  v10 = *(a1 + 12);
  v11 = (v10 * 0.2) / v5;
  if (v11 <= v9 && ((v10 * 0.5) / v5) <= v9)
  {
    v11 = (v10 + v10) / v5;
  }

  if (*(a1 + 332) <= v11)
  {
    vDSP_vmin(*(a1 + 192), 1, *(a1 + 184), 1, *(a1 + 192), 1, v4);
    vDSP_vmin(*(a1 + 200), 1, *(a1 + 184), 1, *(a1 + 200), 1, v4);
  }

  else
  {
    *(a1 + 332) = 0;
    vDSP_vmin(*(a1 + 200), 1, *(a1 + 184), 1, *(a1 + 192), 1, v4);
    memcpy(*(a1 + 200), *(a1 + 184), 4 * v4);
  }

  MEMORY[0x1E12BE7F0](*(a1 + 192), 1, *(a1 + 80), 1, *(a1 + 744), 1, v4);
  MEMORY[0x1E12BE9A0](*(a1 + 744), 1, *(a1 + 184), 1, *(a1 + 208), 1, v4);
  MEMORY[0x1E12BE940](a2, 1, &v21, *(a1 + 752), 1, v4);
  MEMORY[0x1E12BE8F0](*(a1 + 144), 1, &v20, *(a1 + 752), 1, *(a1 + 752), 1, v4);
  MEMORY[0x1E12BE940](*(a1 + 192), 1, &v19, *(a1 + 744), 1, v4);
  MEMORY[0x1E12BE9A0](*(a1 + 744), 1, a2, 1, *(a1 + 744), 1, v4);
  vDSP_vmax(*(a1 + 208), 1, *(a1 + 744), 1, *(a1 + 744), 1, v4);
  if (*a1)
  {
    if (v4 >= 1)
    {
      v13 = 0;
      v14 = *(a1 + 744);
      while (1)
      {
        v15 = a2;
        if (*(v14 + v13) <= 0.0)
        {
          goto LABEL_23;
        }

        if (*(*(a1 + 184) + v13) < (*(a1 + 288) * *(*(a1 + 192) + v13)))
        {
          break;
        }

LABEL_24:
        v13 += 4;
        if (4 * v4 == v13)
        {
          return memcpy(*(a1 + 136), *(a1 + 144), 4 * v4);
        }
      }

      v15 = *(a1 + 752);
LABEL_23:
      *(*(a1 + 144) + v13) = *(v15 + v13);
      goto LABEL_24;
    }
  }

  else if (v4 >= 1)
  {
    v16 = 0;
    v17 = *(a1 + 744);
    do
    {
      if (*(v17 + v16) <= 0.0)
      {
        *(*(a1 + 144) + v16) = *(*(a1 + 752) + v16);
      }

      v16 += 4;
    }

    while (4 * v4 != v16);
  }

  return memcpy(*(a1 + 136), *(a1 + 144), 4 * v4);
}

uint64_t CResidualSuppressorV3::AdjustResidual(uint64_t a1)
{
  v64 = *MEMORY[0x1E69E9840];
  v3 = log10((*(a1 + 560) / *(a1 + 456)) + 1.0e-20) * 10.0;
  v4 = *(a1 + 8);
  v5 = **(a1 + 392);
  v6 = *(a1 + 616);
  if (v3 > -85.0)
  {
    v7 = *(a1 + 564);
    if (v7 < *(a1 + 568))
    {
      *(a1 + 564) = v7 + 1;
    }
  }

  v8 = *(a1 + 256);
  v9 = *(a1 + 556);
  v10 = *(a1 + 744);
  v11 = *(a1 + 752);
  v12 = (&v54 - ((4 * v4 + 15) & 0x7FFFFFFF0));
  v62 = 1056964608;
  v63 = 0x40000000;
  __B = 1.0e-20;
  v60 = 1.0;
  if (MEMORY[0x1EEE9AC00](v2).n128_f32[0] > -85.0)
  {
    v55 = v8;
    MEMORY[0x1E12BE940](*(a1 + 136), 1, &v63, v10, 1, v4);
    MEMORY[0x1E12BE9A0](v10, 1, *(a1 + 104), 1, v10, 1, v4);
    vDSP_vthr(v10, 1, &__B, v10, 1, v4);
    MEMORY[0x1E12BE940](v10, 1, &v62, v10, 1, v4);
    vDSP_vthr(*(a1 + 256), 1, &__B, v11, 1, v4);
    if (v4)
    {
      memset_pattern16(v6, &unk_1DE095DF0, 4 * v4);
    }

    __C = 0.0;
    if (*(a1 + 584))
    {
      v13 = 0;
      v14.i32[0] = 0;
      v56 = xmmword_1DE095160;
      v57 = xmmword_1DE095150;
      do
      {
        v15 = *v14.i32;
        v16 = *(a1 + 592);
        v17 = *(v16 + 4 * v13++);
        v18 = *(v16 + 4 * v13);
        vDSP_maxv(&v11[v17], 1, &__C, (v18 - v17 + 1));
        v20 = v56;
        v19 = v57;
        *v14.i32 = (__C * 10.0) + 1.0e-20;
        __C = *v14.i32;
        v21 = (v18 + 1);
        if (v17 < v21)
        {
          v22 = 0;
          if (*v14.i32 <= v15)
          {
            v23 = v15;
          }

          else
          {
            v23 = *v14.i32;
          }

          v24 = v21 - v17;
          v25 = (v21 - v17 + 3) & 0xFFFFFFFFFFFFFFFCLL;
          v26 = vdupq_n_s64(v24 - 1);
          v27 = &v12[v17 + 2];
          do
          {
            v28 = vdupq_n_s64(v22);
            v29 = vmovn_s64(vcgeq_u64(v26, vorrq_s8(v28, v20)));
            if (vuzp1_s16(v29, v14).u8[0])
            {
              *(v27 - 2) = v23;
            }

            if (vuzp1_s16(v29, v14).i8[2])
            {
              *(v27 - 1) = v23;
            }

            if (vuzp1_s16(v14, vmovn_s64(vcgeq_u64(v26, vorrq_s8(v28, v19)))).i32[1])
            {
              *v27 = v23;
              v27[1] = v23;
            }

            v22 += 4;
            v27 += 4;
          }

          while (v25 != v22);
        }
      }

      while (v13 < *(a1 + 584));
    }

    vDSP_vmin(v10, 1, v12, 1, v10, 1, v4);
    if (*(a1 + 564) < *(a1 + 568) || !*(a1 + 488) || v5 > *(a1 + 504))
    {
      vDSP_vdiv(v11, 1, v10, 1, v6, 1, v4);
      v58 = *(a1 + 520);
      v8 = v55;
LABEL_26:
      vDSP_vclip(v6, 1, &v60, &v58, v6, 1, v4);
      v31 = 548;
LABEL_27:
      *(a1 + 544) = *(a1 + v31);
      goto LABEL_30;
    }

    v38 = *(a1 + 512);
    if (v5 <= *(a1 + 508))
    {
      v8 = v55;
      if (v9 > v38)
      {
        vDSP_vdiv(v11, 1, v10, 1, v6, 1, v4);
        v39 = *(a1 + 528);
        goto LABEL_40;
      }

      if (v4)
      {
        v30.i32[0] = *(a1 + 532);
        v47 = (v4 + 3) & 0x1FFFFFFFCLL;
        v48 = vdupq_n_s64(v4 - 1);
        v49 = xmmword_1DE095150;
        v50 = xmmword_1DE095160;
        v51 = v6 + 2;
        v52 = vdupq_n_s64(4uLL);
        v31 = 552;
        do
        {
          v53 = vmovn_s64(vcgeq_u64(v48, v50));
          if (vuzp1_s16(v53, v30).u8[0])
          {
            *(v51 - 2) = v30.i32[0];
          }

          if (vuzp1_s16(v53, v30).i8[2])
          {
            *(v51 - 1) = v30.i32[0];
          }

          if (vuzp1_s16(v30, vmovn_s64(vcgeq_u64(v48, *&v49))).i32[1])
          {
            *v51 = v30.i32[0];
            v51[1] = v30.i32[0];
          }

          v49 = vaddq_s64(v49, v52);
          v50 = vaddq_s64(v50, v52);
          v51 += 4;
          v47 -= 4;
        }

        while (v47);
        goto LABEL_27;
      }
    }

    else
    {
      v8 = v55;
      if (v9 > v38)
      {
        vDSP_vdiv(v11, 1, v10, 1, v6, 1, v4);
        v39 = *(a1 + 524);
LABEL_40:
        v58 = v39;
        goto LABEL_26;
      }

      if (v4)
      {
        v30.i32[0] = *(a1 + 532);
        v40 = (v4 + 3) & 0x1FFFFFFFCLL;
        v41 = vdupq_n_s64(v4 - 1);
        v42 = xmmword_1DE095150;
        v43 = xmmword_1DE095160;
        v44 = v6 + 2;
        v45 = vdupq_n_s64(4uLL);
        v31 = 552;
        do
        {
          v46 = vmovn_s64(vcgeq_u64(v41, v43));
          if (vuzp1_s16(v46, v30).u8[0])
          {
            *(v44 - 2) = v30.i32[0];
          }

          if (vuzp1_s16(v46, v30).i8[2])
          {
            *(v44 - 1) = v30.i32[0];
          }

          if (vuzp1_s16(v30, vmovn_s64(vcgeq_u64(v41, *&v42))).i32[1])
          {
            *v44 = v30.i32[0];
            v44[1] = v30.i32[0];
          }

          v42 = vaddq_s64(v42, v45);
          v43 = vaddq_s64(v43, v45);
          v44 += 4;
          v40 -= 4;
        }

        while (v40);
        goto LABEL_27;
      }
    }

    v31 = 552;
    goto LABEL_27;
  }

  if (v4)
  {
    memset_pattern16(v6, &unk_1DE095DF0, 4 * v4);
  }

LABEL_30:
  if (*(a1 + 576) == 1)
  {
    v32 = *(a1 + 12) / (*(a1 + 456) - 1);
    v33 = vcvtms_u32_f32(300.0 / v32);
    v34 = vcvtms_u32_f32(1500.0 / v32) + 1;
    if (v34 > v33)
    {
      v35 = v34 - v33;
      v36 = &v6[v33];
      do
      {
        *v36 = fminf(*v36, 4.0);
        ++v36;
        --v35;
      }

      while (v35);
    }
  }

  return MEMORY[0x1E12BE7F0](v8, 1, v6, 1, v8, 1, v4);
}

void *CResidualSuppressorV3::speex_preprocess_run_res_suppressor(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 8);
  v4 = v3 + v2;
  v5 = *(a1 + 104);
  v146 = 507307272;
  v144 = -1.0e20;
  __B = 0.0;
  v143 = -1082130432;
  v141 = 1036831949;
  v140 = 1045220557;
  v139 = 1061997773;
  v138 = 1063507722;
  v136 = 1077936128;
  __A = 1.0;
  v134 = 507307272;
  __C = 100.0;
  v6 = *a1;
  v7 = 4 * (v3 + v2);
  v8 = *(a1 + 752);
  if (v6 == 1)
  {
    memcpy(v8, *(a1 + 248), v7);
    MEMORY[0x1E12BE5D0](*(a1 + 752), 1, *(a1 + 136), 1, *(a1 + 752), 1, (v3 + v2));
  }

  else
  {
    if (v6)
    {
      v9 = *(a1 + 136);
    }

    else
    {
      v9 = *(a1 + 248);
    }

    memcpy(v8, v9, v7);
  }

  v10 = v3;
  v145 = 0.0;
  MEMORY[0x1E12BE8A0](*(a1 + 752), 1, &v134, *(a1 + 752), 1, (v3 + v2));
  vDSP_svdiv(&__A, *(a1 + 752), 1, *(a1 + 744), 1, (v3 + v2));
  MEMORY[0x1E12BE5D0](*(a1 + 152), 1, *(a1 + 752), 1, *(a1 + 752), 1, (v3 + v2));
  vDSP_vdiv(*(a1 + 752), 1, *(a1 + 152), 1, *(a1 + 752), 1, (v3 + v2));
  MEMORY[0x1E12BE990](*(a1 + 752), 1, *(a1 + 752), 1, (v3 + v2));
  MEMORY[0x1E12BE910](*(a1 + 752), 1, &v138, &v141, *(a1 + 752), 1, (v3 + v2));
  MEMORY[0x1E12BE7E0](v5, 1, *(a1 + 744), 1, &v143, *(a1 + 176), 1, (v3 + v2));
  vDSP_vclip(*(a1 + 176), 1, &__B, &__C, *(a1 + 168), 1, (v3 + v2));
  vDSP_vmin(*(a1 + 176), 1, *(a1 + 168), 1, *(a1 + 176), 1, (v3 + v2));
  MEMORY[0x1E12BE7F0](*(a1 + 168), 1, *(a1 + 752), 1, *(a1 + 168), 1, (v3 + v2));
  MEMORY[0x1E12BE8A0](*(a1 + 752), 1, &v143, *(a1 + 752), 1, (v3 + v2));
  MEMORY[0x1E12BE7F0](*(a1 + 752), 1, *(a1 + 152), 1, *(a1 + 752), 1, (v3 + v2));
  MEMORY[0x1E12BE7F0](*(a1 + 752), 1, *(a1 + 744), 1, *(a1 + 744), 1, (v3 + v2));
  MEMORY[0x1E12BE9A0](*(a1 + 744), 1, *(a1 + 168), 1, *(a1 + 168), 1, (v3 + v2));
  vDSP_vclip(*(a1 + 168), 1, &v144, &__C, *(a1 + 168), 1, (v3 + v2));
  v11 = (*(a1 + 744) + 4 * v3);
  v12 = (*(a1 + 752) + 4 * v3);
  MEMORY[0x1E12BE9A0](*(a1 + 168) + 4 * v3, 1, *(a1 + 240) + 4 * v3, 1, v11, 1, v2);
  vDSP_vthres(v11, 1, &__B, v12, 1, v2);
  MEMORY[0x1E12BE9A0](v12, 1, v11, 1, v11, 1, v2);
  MEMORY[0x1E12BE8F0](v11, 1, a1 + 268, *(a1 + 168) + 4 * v3, 1, v11, 1, v2);
  MEMORY[0x1E12BE8F0](v12, 1, a1 + 272, v11, 1, *(a1 + 240) + 4 * v3, 1, 5);
  MEMORY[0x1E12BE8F0](v12 + 5, 1, a1 + 276, v11 + 5, 1, *(a1 + 240) + 4 * v3 + 20, 1, (v2 - 5));
  v13 = 0.0;
  if (v3 < v4)
  {
    v14 = (*(a1 + 240) + 4 * v3);
    v15 = v3;
    do
    {
      v16 = *v14++;
      v17 = v13 + v16;
      if (v16 > 3.0)
      {
        v13 = v17;
      }

      ++v15;
    }

    while (v4 > v15);
  }

  v18 = v13 / *(a1 + 16);
  v19 = 0.1;
  v20 = ((1.0 / ((0.5 / v18) + 1.0)) * 0.899) + 0.1;
  *(a1 + 216) = v18;
  *(a1 + 220) = v20;
  *(a1 + 224) = v20;
  v21 = *(a1 + 228);
  if (v21 == 2)
  {
    v20 = *(a1 + 232);
  }

  else
  {
    if (v21 != 1)
    {
      goto LABEL_19;
    }

    if (v20 >= *(a1 + 232))
    {
      v20 = *(a1 + 232);
    }
  }

  *(a1 + 220) = v20;
LABEL_19:
  v22 = *a1;
  if (*a1 < 1)
  {
    v28 = 0;
  }

  else
  {
    if (v20 < 0.5)
    {
      v23 = *(a1 + 680);
      v24 = *(a1 + 676);
      v25 = *(a1 + 136);
      LODWORD(__Z.realp) = 0;
      v26 = *(a1 + 716);
      if (v26 < 1)
      {
        v27 = 0.0;
      }

      else
      {
        vDSP_sve((v25 + 4 * *(a1 + 692)), 1, &__Z, v26);
        v27 = (*&__Z.realp * 0.1) + 0.0;
      }

      v29 = *(a1 + 720);
      if (v29 >= 1)
      {
        vDSP_sve((v25 + 4 * *(a1 + 696)), 1, &__Z, v29);
        v27 = v27 + (*&__Z.realp * 0.25);
      }

      v30 = *(a1 + 724);
      if (v30 >= 1)
      {
        vDSP_sve((v25 + 4 * *(a1 + 700)), 1, &__Z, v30);
        v27 = v27 + (*&__Z.realp * 0.6);
      }

      v31 = *(a1 + 728);
      if (v31 >= 1)
      {
        vDSP_sve((v25 + 4 * *(a1 + 704)), 1, &__Z, v31);
        v27 = v27 + *&__Z.realp;
      }

      v32 = *(a1 + 732);
      if (v32 >= 1)
      {
        vDSP_sve((v25 + 4 * *(a1 + 708)), 1, &__Z, v32);
        v27 = v27 + (*&__Z.realp * 1.25);
      }

      v33 = *(a1 + 688) + (log10f(v27 * *(a1 + 684)) * 10.0);
      if (v33 < 0.0)
      {
        v33 = 0.0;
      }

      *(a1 + 676) = (v23 * fminf(v33, 100.0)) + ((1.0 - v23) * v24);
      v22 = *a1;
    }

    if (v22 > 1)
    {
      v58 = *(a1 + 120);
      v59 = (a1 + 60);
      goto LABEL_90;
    }

    v20 = *(a1 + 220);
    v28 = v22 == 1;
  }

  v34 = *(a1 + 664);
  v35 = 1.0 - v20;
  if (*(a1 + 488) == 1)
  {
    v36 = (v20 * *(a1 + 40)) + (v35 * *(a1 + 36));
    v37 = (v20 * -15.0) + (v35 * -50.0);
  }

  else
  {
    v36 = (v20 * *(a1 + 40)) + (v35 * -70.0);
    v37 = (v20 * -15.0) + (v35 * -70.0);
  }

  v38 = (v20 * *(a1 + 672)) + (v35 * *(a1 + 668));
  v39 = expf(v36 * 0.23026);
  *&__Z.realp = v39;
  v40 = expf(v37 * 0.23026);
  v147[0] = v40;
  v41 = expf(v38 * 0.23026);
  if (*(a1 + 540) == 1)
  {
    MEMORY[0x1E12BE8A0](*(a1 + 104), 1, &v146, *(a1 + 744), 1, v3);
    vDSP_vdiv(*(a1 + 744), 1, *(a1 + 136), 1, *(a1 + 744), 1, v3);
    vDSP_vclip(*(a1 + 744), 1, &__B, &__A, *(a1 + 744), 1, v3);
    v42 = *(a1 + 744);
    v43 = *v42;
    v44 = *(a1 + 120);
    *v44 = *v42;
    v44[1] = (v43 + v42[1]) * 0.5;
    memcpy(v44 + 2, v42, 4 * (v3 - 2));
    MEMORY[0x1E12BE5D0](*(a1 + 744) + 4, 1, *(a1 + 120) + 8, 1, *(a1 + 120) + 8, 1, (v3 - 2));
    MEMORY[0x1E12BE5D0](*(a1 + 744) + 8, 1, *(a1 + 120) + 8, 1, *(a1 + 120) + 8, 1, (v3 - 2));
    v133 = 1051372203;
    MEMORY[0x1E12BE940](*(a1 + 120) + 8, 1, &v133, *(a1 + 120) + 8, 1, (v3 - 2));
    if (*a1 == 1)
    {
      goto LABEL_67;
    }

    if (*a1 || *(a1 + 572) != 1)
    {
      goto LABEL_68;
    }

    v45 = *(a1 + 304);
    if (!v45)
    {
LABEL_67:
      MEMORY[0x1E12BE940](*(a1 + 120), 1, a1 + 56, *(a1 + 120), 1, v3);
    }

    else
    {
      MEMORY[0x1E12BE7F0](*(a1 + 120), 1, v45, 1, *(a1 + 120), 1, v3);
      MEMORY[0x1E12BE7F0](*(a1 + 120), 1, *(a1 + 304), 1, *(a1 + 120), 1, v3);
    }

LABEL_68:
    v132 = __exp10f(*(a1 + 544) * 0.1);
    MEMORY[0x1E12BE940](*(a1 + 120), 1, &v132, *(a1 + 120), 1, v3);
    vDSP_vclip(*(a1 + 120), 1, v147, &__Z, *(a1 + 120), 1, v3);
    if (v3 > v34)
    {
      v64 = v3 - v34;
      v65 = (*(a1 + 120) + 4 * v34);
      do
      {
        v66 = *v65;
        if (*v65 >= v41)
        {
          v66 = v41;
        }

        *v65++ = v66;
        --v64;
      }

      while (v64);
    }

    if (*a1 == 1)
    {
      v131 = 1065353216;
      MEMORY[0x1E12BE940](*(a1 + 248), 1, a1 + 52, *(a1 + 744), 1, v3);
      MEMORY[0x1E12BE5D0](*(a1 + 744), 1, *(a1 + 136), 1, *(a1 + 752), 1, v3);
      MEMORY[0x1E12BE8A0](*(a1 + 752), 1, &v131, *(a1 + 752), 1, v3);
      MEMORY[0x1E12BE7F0](*(a1 + 120), 1, *(a1 + 744), 1, *(a1 + 744), 1, v3);
      MEMORY[0x1E12BE940](*(a1 + 136), 1, a1 + 56, *(a1 + 744) + 4 * v3, 1, v3);
      MEMORY[0x1E12BE5D0](*(a1 + 744), 1, *(a1 + 744) + 4 * v3, 1, *(a1 + 744), 1, v3);
      vDSP_vdiv(*(a1 + 752), 1, *(a1 + 744), 1, *(a1 + 120), 1, v3);
    }

    if (v3)
    {
      v67 = *(a1 + 120);
      v68 = v3;
      do
      {
        *v67 = sqrtf(*v67);
        ++v67;
        --v68;
      }

      while (v68);
    }

    goto LABEL_92;
  }

  v46 = sqrtf(v40);
  v47 = sqrtf(v41);
  if (!v28)
  {
    v60 = sqrtf(v39);
    if (v60 > v46)
    {
      v46 = v60;
    }

    v145 = v46;
    if (v34)
    {
      v58 = *(a1 + 120);
      if (v34 < v3)
      {
        vDSP_vfill(&v145, v58, 1, v34);
        v61 = v145;
        if (v145 >= v47)
        {
          v61 = v47;
        }

        v145 = v61;
        v58 = (*(a1 + 120) + 4 * v34);
        v62 = (v3 - v34);
        v59 = &v145;
        goto LABEL_91;
      }
    }

    else
    {
      if (v46 >= v47)
      {
        v46 = v47;
      }

      v145 = v46;
      v58 = *(a1 + 120);
    }

    v59 = &v145;
LABEL_90:
    v62 = v3;
LABEL_91:
    vDSP_vfill(v59, v58, 1, v62);
    goto LABEL_92;
  }

  LODWORD(v48) = v2;
  if (v3 > v34)
  {
    LODWORD(v48) = *(**(a1 + 24) + 4 * v34);
  }

  if (v2 >= v48)
  {
    v48 = v48;
  }

  else
  {
    v48 = v2;
  }

  if (v39 > v46)
  {
    v46 = v39;
  }

  v49 = *(a1 + 744);
  if (v48 < 1)
  {
    LODWORD(v48) = 0;
  }

  else
  {
    v50 = (*(a1 + 248) + 4 * v3);
    v51 = (*(a1 + 136) + 4 * v3);
    v52 = *(a1 + 744);
    v53 = v48;
    do
    {
      v54 = *v51++;
      v55 = v54;
      v56 = *v50++;
      v57 = *(a1 + 52) * v56;
      v145 = v55 * *(a1 + 56);
      *v52++ = sqrtf((v145 + (v46 * v57)) / ((v55 + 1.0) + v57));
      --v53;
    }

    while (v53);
  }

  if (v46 >= v47)
  {
    v46 = v47;
  }

  if (v48 < v2)
  {
    v69 = v2 - v48;
    v70 = (v49 + 4 * v48);
    v71 = v3 + v48;
    v72 = (*(a1 + 248) + 4 * v71);
    v73 = (*(a1 + 136) + 4 * v71);
    do
    {
      v74 = *v73++;
      v75 = v74;
      v76 = *v72++;
      v77 = *(a1 + 52) * v76;
      v145 = v75 * *(a1 + 56);
      *v70++ = sqrtf((v145 + (v46 * v77)) / ((v75 + 1.0) + v77));
      --v69;
    }

    while (v69);
  }

  CFilterBank::filterbank_compute_psd16(*(a1 + 24), v49, *(a1 + 120));
LABEL_92:
  if (v3 >= v4)
  {
    v97 = *(a1 + 112);
  }

  else
  {
    v78 = 0;
    v127 = v5;
    v129 = v5 + 4 * v3;
    v128 = *(a1 + 228);
    v79 = *(a1 + 152) + 4 * v3;
    v80 = *(a1 + 240) + 4 * v3;
    v81 = v3;
    v82 = *(a1 + 160) + 4 * v3;
    v83 = *(a1 + 176) + 4 * v10;
    v84 = *(a1 + 168) + 4 * v10;
    v126 = *(a1 + 112);
    v85 = &v126[v10];
    do
    {
      v86 = *(v84 + 4 * v78) / (*(v84 + 4 * v78) + 1.0);
      v87 = *(v83 + 4 * v78) + 1.0;
      v88 = v86 * CNoiseSuppressorV3::hypergeom_gain(v63, v86 * v87);
      if (v88 > 1.0)
      {
        v88 = 1.0;
      }

      *(v82 + 4 * v78) = v88;
      v90 = *(a1 + 220);
      v91 = -v90;
      v92 = v90 < 0.01;
      v93 = -0.01;
      if (!v92)
      {
        v93 = v91;
      }

      if (!v128)
      {
        v93 = v91;
      }

      v89 = v19 + ((1.0 / ((0.5 / *(v80 + 4 * v78)) + 1.0)) * 0.899);
      v94 = v19;
      v95 = (((v93 * v89) + 1.0) / (1.0 - ((v93 * v89) + 1.0))) * (*(v84 + 4 * v78) + 1.0);
      v96 = (v95 * expf(-(v86 * v87))) + 1.0;
      v19 = v94;
      v85[v78] = 1.0 / v96;
      *(v79 + 4 * v78) = (*(v129 + 4 * v78) * (*(v82 + 4 * v78) * (*(v82 + 4 * v78) * 0.8))) + (*(v79 + 4 * v78) * 0.2);
      ++v78;
    }

    while (v4 > v81 + v78);
    v3 = v81;
    v97 = v126;
    v5 = v127;
  }

  CFilterBank::filterbank_compute_psd16(*(a1 + 24), &v97[v3], v97);
  v98 = CFilterBank::filterbank_compute_psd16(*(a1 + 24), *(a1 + 160) + 4 * v3, *(a1 + 160));
  MEMORY[0x1E12BE8A0](*(a1 + 168), 1, &__A, *(a1 + 752), 1, v3, v98);
  vDSP_vdiv(*(a1 + 752), 1, *(a1 + 168), 1, *(a1 + 752), 1, v3);
  MEMORY[0x1E12BE8A0](*(a1 + 176), 1, &__A, *(a1 + 744), 1, v3);
  v99 = MEMORY[0x1E12BE7F0](*(a1 + 752), 1, *(a1 + 744), 1, *(a1 + 744), 1, v3);
  v100 = *(a1 + 744);
  if (v3)
  {
    v101 = *(a1 + 744);
    v102 = v3;
    do
    {
      *v101 = CNoiseSuppressorV3::hypergeom_gain(v99, *v101);
      ++v101;
      --v102;
    }

    while (v102);
  }

  MEMORY[0x1E12BE7F0](*(a1 + 752), 1, v100, 1, v100, 1, v3);
  vDSP_vclip(*(a1 + 744), 1, &v144, &__A, *(a1 + 744), 1, v3);
  MEMORY[0x1E12BE940](*(a1 + 160), 1, &v136, *(a1 + 752), 1, v3);
  vDSP_vmin(*(a1 + 744), 1, *(a1 + 752), 1, *(a1 + 160), 1, v3);
  MEMORY[0x1E12BE990](*(a1 + 160), 1, *(a1 + 752), 1, v3);
  MEMORY[0x1E12BE7F0](*(a1 + 752), 1, v5, 1, *(a1 + 752), 1, v3);
  MEMORY[0x1E12BE940](*(a1 + 752), 1, &v139, *(a1 + 752), 1, v3);
  MEMORY[0x1E12BE8F0](*(a1 + 152), 1, &v140, *(a1 + 752), 1, *(a1 + 152), 1, v3);
  vDSP_vmax(*(a1 + 160), 1, *(a1 + 120), 1, *(a1 + 160), 1, v3);
  v103 = *(a1 + 752);
  v104 = *(a1 + 112);
  if (v3)
  {
    v105 = *(a1 + 160);
    v106 = *(a1 + 120);
    v107 = *(a1 + 112);
    v108 = *(a1 + 752);
    v109 = v3;
    do
    {
      v110 = *v107++;
      v111 = v110;
      v112 = *v105++;
      v113 = sqrtf(v112);
      v114 = *v106++;
      *v108++ = ((1.0 - v111) * sqrtf(v114)) + (v111 * v113);
      --v109;
    }

    while (v109);
  }

  MEMORY[0x1E12BE990](v103, 1, v104, 1, v3);
  vDSP_vmax(*(a1 + 112), 1, *(a1 + 120), 1, *(a1 + 112), 1, v3);
  vDSP_vclip(*(a1 + 112), 1, &__B, &__A, *(a1 + 112), 1, v3);
  v115 = 2 * v3;
  v132 = 0.5;
  v133 = 1048576000;
  v116 = *(a1 + 744);
  *v116 = 0;
  v117 = (v3 - 1);
  MEMORY[0x1E12BE940](*(a1 + 112), 1, &v133, v116 + 1, 1, v117);
  MEMORY[0x1E12BE8F0](*(a1 + 112) + 4, 1, &v133, *(a1 + 744), 1, *(a1 + 744), 1, v117);
  MEMORY[0x1E12BE8F0](*(a1 + 112), 1, &v132, *(a1 + 744), 1, *(a1 + 744), 1, v3);
  v118 = *(a1 + 112);
  v119 = *(a1 + 744);
  *v119 = (*v118 + v118[1]) * 0.5;
  v119[v117] = (v118[(v3 - 2)] + v118[v117]) * 0.5;
  memcpy(v118, v119, 4 * v3);
  if (*(a1 + 44) <= 0)
  {
    v120 = *(a1 + 96);
    v121 = (v115 - 1);
  }

  else
  {
    MEMORY[0x1E12BE7F0](*(a1 + 112) + 4, 1, *(a1 + 96) + 4, 2, *(a1 + 96) + 4, 2, (v3 - 1));
    MEMORY[0x1E12BE7F0](*(a1 + 112), 1, *(a1 + 96), 2, *(a1 + 96), 2, v3);
    v120 = *(a1 + 96);
    v121 = (v115 - 1);
    *(&v120->real + v121) = *(*(a1 + 112) + 4 * v117) * *(&v120->real + v121);
  }

  v122 = *(a1 + 744);
  v123 = (v122 + 4 * v3);
  __Z.realp = v123 + 1;
  __Z.imagp = (v122 + 8);
  vDSP_ctoz(v120 + 1, 2, &__Z, 1, (v3 - 2));
  v124 = *(a1 + 96);
  *v122 = *v124;
  *(v122 + 4) = v124[1];
  *(v122 + 4 * v121) = v124[v115 - 2];
  *v123 = *&v124[v121];
  __Z.realp = v122;
  __Z.imagp = v123;
  v147[0] = 0.000030518;
  MEMORY[0x1E12BE940](v122, 1, v147, v122, 1, (2 * v3));
  memcpy(*(a1 + 344), __Z.realp, (4 * v3));
  return memcpy(*(a1 + 352), __Z.imagp, (4 * v3));
}

void *CResidualSuppressorV3::speex_preprocess_run_freq(uint64_t a1, float **a2, float **a3, float **a4, uint64_t a5)
{
  v9 = *a1;
  if (*a1 < 1 || (*(a1 + 572) = 0, v9 == 1) || (*(a1 + 496) = 0, *(a1 + 540) = 0, v9 <= 2))
  {
    CResidualSuppressorV3::GetLeakageForSuppressor(a1, *a2, a2[1], *a3, a3[1]);
    CResidualSuppressorV3::GetResidualForSuppressor(a1, a4);
  }

  *(a1 + 304) = a5;
  v10 = *(a1 + 8);
  v11 = (v10 + *(a1 + 16));
  v12 = *(a1 + 104);
  v13 = *a2;
  v14 = *(a1 + 624);
  v24 = 507307272;
  v25 = 1191182336;
  MEMORY[0x1E12BE940](v13, 1, &v25, v14, 1, v10);
  v15 = a2[1];
  v16 = *(a1 + 632);
  v25 = 1191182336;
  MEMORY[0x1E12BE940](v15, 1, &v25, v16, 1, v10);
  v17 = *(a1 + 328);
  if (v17 + 1 < ((*(a1 + 12) * 30.0) / v10))
  {
    v18 = v17 + 1;
  }

  else
  {
    v18 = ((*(a1 + 12) * 30.0) / v10);
  }

  *(a1 + 328) = v18;
  ++*(a1 + 332);
  CResidualSuppressorV3::preprocess_analysis_freq(a1, *(a1 + 624), *(a1 + 632));
  vDSP_vclr(*(a1 + 136), 1, v11);
  if (*a1 > 2)
  {
    v20 = *(a1 + 104);
    v21 = *(a1 + 648);
  }

  else
  {
    v19 = *(a1 + 256);
    if (*v19 < 0.0 || *v19 >= (v10 * 1000000000.0))
    {
      vDSP_vclr(v19, 1, v10);
      v19 = *(a1 + 256);
    }

    vDSP_vmin(v19, 1, *(a1 + 104), 1, v19, 1, v10);
    memcpy(*(a1 + 640), *(a1 + 256), 4 * v10);
    MEMORY[0x1E12BE8A0](*(a1 + 640), 1, &v24, *(a1 + 640), 1, v10);
    MEMORY[0x1E12BE9A0](*(a1 + 256), 1, *(a1 + 104), 1, *(a1 + 648), 1, v10);
    v20 = *(a1 + 648);
    v21 = v20;
  }

  MEMORY[0x1E12BE8A0](v20, 1, &v24, v21, 1, v10);
  if (*(a1 + 540) != 1 && !*a1 || (CResidualSuppressorV3::EstimateNoise(a1, *(a1 + 648)), !*a1) || (CFilterBank::filterbank_compute_bank32(*(a1 + 24), *(a1 + 136), (*(a1 + 136) + 4 * v10)), v22 = *a1, *a1 < 2))
  {
    if (*(a1 + 496) == 1)
    {
      CResidualSuppressorV3::AdjustResidual(a1);
    }

    MEMORY[0x1E12BE9A0](*(a1 + 136), 1, *(a1 + 104), 1, *(a1 + 744), 1, v10);
    vDSP_vmin(*(a1 + 744), 1, *(a1 + 256), 1, *(a1 + 256), 1, v10);
    vDSP_vmax(*(a1 + 256), 1, *(a1 + 640), 1, *(a1 + 256), 1, v10);
    v22 = *a1;
  }

  if (v22 <= 2)
  {
    v25 = 1058642330;
    MEMORY[0x1E12BE940](*(a1 + 248), 1, &v25, *(a1 + 248), 1, v10);
    vDSP_vmax(*(a1 + 248), 1, *(a1 + 256), 1, *(a1 + 248), 1, v10);
    CFilterBank::filterbank_compute_bank32(*(a1 + 24), *(a1 + 248), (*(a1 + 248) + 4 * v10));
  }

  if (*(a1 + 328) == 1)
  {
    memcpy(*(a1 + 152), v12, 4 * v11);
  }

  return CResidualSuppressorV3::speex_preprocess_run_res_suppressor(a1);
}

uint64_t CResidualSuppressorV3::GetLeakageForSuppressor(uint64_t a1, float *a2, float *a3, float *a4, float *a5)
{
  v84 = *MEMORY[0x1E69E9840];
  v82 = 981668463;
  v10 = *(a1 + 408);
  v11 = *(a1 + 416);
  v13 = *(a1 + 424);
  v12 = *(a1 + 432);
  v14 = *(a1 + 440);
  v75 = *(a1 + 448);
  v76 = v14;
  v15 = *(a1 + 400);
  v16 = *(a1 + 4);
  v77 = *(a1 + 460);
  v17 = *(a1 + 368);
  v18 = *(a1 + 372);
  __C = 0;
  v80 = 0;
  v74 = *(a1 + 480);
  __A.realp = a2;
  __A.imagp = a3;
  vDSP_zvmags(&__A, 1, v10, 1, v16);
  v19 = *a2;
  v20 = v13;
  *v10 = v19 * v19;
  *(v10 + 4 * v16) = *a3 * *a3;
  __A.realp = a4;
  __A.imagp = a5;
  vDSP_zvmags(&__A, 1, v12, 1, v16);
  v21 = *a4;
  v22 = v75;
  *v12 = v21 * v21;
  *(v12 + 4 * v16) = *a5 * *a5;
  vDSP_sve((v10 + 4), 1, &__C + 1, v16 - 1);
  vDSP_sve((v12 + 4), 1, &__C, v16 - 1);
  *(&__C + 1) = (*v10 + (*(&__C + 1) * 2.0)) + *(v10 + 4 * v16);
  *&__C = (*v12 + (*&__C * 2.0)) + *(v12 + 4 * v16);
  *(a1 + 560) = __C;
  LODWORD(v16) = v77;
  v23 = v77;
  MEMORY[0x1E12BE7F0](v10, 1, v74, 1, v13, 1, v77);
  v24 = MEMORY[0x1E12BE7F0](v12, 1, v74, 1, v22, 1, v77);
  v72 = &v67;
  MEMORY[0x1EEE9AC00](v24);
  v26 = (&v67 - ((v25 + 15) & 0x7FFFFFFF0));
  v28 = MEMORY[0x1EEE9AC00](v27);
  v30 = (&v67 - v29);
  MEMORY[0x1E12BE9A0](v76, 1, v22, 1, v26, 1, v16, v28);
  v31 = v11;
  MEMORY[0x1E12BE9A0](v11, 1, v13, 1, v30, 1, v16);
  v77 = v26;
  MEMORY[0x1E12BE7F0](v26, 1, v30, 1, v30, 1, v16);
  LODWORD(__A.realp) = 813694978;
  v32 = *(a1 + 584);
  v79 = 0;
  v33 = *(a1 + 608);
  v34 = *(a1 + 600);
  v35 = *(a1 + 376);
  v71 = *(a1 + 384);
  v70 = v35;
  v36 = *(a1 + 392);
  v37 = *(a1 + 592);
  v78 = 0;
  v73 = v20;
  v74 = v32;
  if (v32 == 1)
  {
    vDSP_svesq(v77, 1, &v79 + 1, v23);
    vDSP_sve(v30, 1, &v79, v23);
    *&v79 = *&v79 + 8.6736e-19;
    v38 = *&v79;
    *(&v79 + 1) = *(&v79 + 1) + 8.6736e-19;
    v39 = sqrtf(*(&v79 + 1));
    *v33 = v39;
    *v34 = v38 / v39;
    v40 = v23;
    v41 = v31;
    v42 = v33;
    v43 = v74;
    v44 = v76;
  }

  else
  {
    v68 = v23;
    v69 = v31;
    v45 = v37[1];
    HIDWORD(v78) = 0;
    vDSP_svesq(v77, 1, &v78 + 1, v45 + 1);
    vDSP_sve(v30, 1, &v78, v45 + 1);
    v46 = 0;
    v47 = (v74 - 1);
    v49 = *(&v78 + 1);
    v48 = *&v78;
    do
    {
      v50 = v37[(v46 + 2)];
      v51 = v50 - v45;
      v52 = v45 + 1;
      vDSP_svesq(&v77[v52], 1, &v78 + 1, v51);
      vDSP_sve(&v30[v52], 1, &v78, v51);
      v53 = v78;
      v54 = (v48 + *&v78) + 8.6736e-19;
      *&v79 = v54;
      *(&v79 + 1) = (v49 + *(&v78 + 1)) + 8.6736e-19;
      v55 = sqrtf(*(&v79 + 1));
      v33[v46] = v55;
      v34[v46++] = v54 / v55;
      LODWORD(v49) = HIDWORD(v53);
      LODWORD(v48) = v53;
      v45 = v50;
    }

    while (v47 != v46);
    v43 = v74;
    v22 = v75;
    v33[v47] = v33[(v74 - 2)];
    v34[v47] = v34[(v43 - 2)];
    v44 = v76;
    v41 = v69;
    v40 = v68;
    v42 = v33;
  }

  v56 = v17 * *&__C;
  if ((v17 * *&__C) > (v18 * *(&__C + 1)))
  {
    v56 = v18 * *(&__C + 1);
  }

  v57 = v56 / *(&__C + 1);
  if (*(&__C + 1) < 9.3132e-19)
  {
    v57 = v18;
  }

  *(&v80 + 1) = v57;
  *&v80 = 1.0 - v57;
  v58 = v43;
  MEMORY[0x1E12BE940](v34, 1, &v80 + 4, v34, 1, v43);
  v59 = v70;
  MEMORY[0x1E12BE8F0](v70, 1, &v80, v34, 1, v70, 1, v58);
  MEMORY[0x1E12BE940](v42, 1, &v80 + 4, v42, 1, v58);
  v60 = v71;
  MEMORY[0x1E12BE8F0](v71, 1, &v80, v42, 1, v71, 1, v58);
  vDSP_vthr(v60, 1, &__A, v60, 1, v58);
  v61 = v77;
  MEMORY[0x1E12BE940](v60, 1, &v82, v77, 1, v58);
  vDSP_vmax(v61, 1, v59, 1, v59, 1, v58);
  vDSP_vmin(v59, 1, v60, 1, v59, 1, v58);
  if (v58)
  {
    v62 = 0;
    v63 = *v37;
    do
    {
      if (v62)
      {
        v64 = v59[v62] / v60[v62];
        if (v64 <= *v36)
        {
          v64 = *v36;
        }
      }

      else
      {
        v64 = *v59 / *v60;
      }

      v65 = v37[++v62];
      while (v63 <= v65)
      {
        v36[v63++] = v64;
      }

      v63 = v65;
    }

    while (v62 != v58);
  }

  VPEchoGateV3::GatesmoothPowerSpectrum(v41, v73, v40, v15);
  return VPEchoGateV3::GatesmoothPowerSpectrum(v44, v22, v40, v15);
}

uint64_t CResidualSuppressorV3::GetResidualForSuppressor(uint64_t a1, float **a2)
{
  v4 = *(a1 + 4);
  memcpy(*(a1 + 656), *(a1 + 392), 4 * v4);
  v5 = *(a1 + 656);
  v14 = 0x40000000;
  MEMORY[0x1E12BE940](v5, 1, &v14, v5, 1, v4);
  if (v4)
  {
    v6 = v5;
    v7 = v4;
    do
    {
      v8 = *(a1 + 500);
      if (*v6 > v8)
      {
        *v6 = v8;
      }

      ++v6;
      --v7;
    }

    while (v7);
  }

  v13 = 1317011456;
  MEMORY[0x1E12BE940](v5, 1, &v13, v5, 1, v4);
  if (*(a1 + 488) || *(a1 + 492) < ((*(a1 + 456) * 500.0) * 9.3132e-10))
  {
    v9 = *(a1 + 432);
  }

  else
  {
    v11 = *a2;
    v12 = a2[1];
    v9 = *(a1 + 408);
    __A.realp = v11;
    __A.imagp = v12;
    vDSP_zvmags(&__A, 1, v9, 1, v4);
    *v9 = *v11 * *v11;
    v9[v4] = *v12 * *v12;
  }

  return MEMORY[0x1E12BE7F0](v9, 1, v5, 1, *(a1 + 256), 1, v4);
}

void CResidualSuppressorV3::speex_preprocess_state_res_init(CResidualSuppressorV3 *this, int a2)
{
  v3 = this;
  v8 = *MEMORY[0x1E69E9840];
  v4 = malloc_type_malloc(0x2F8uLL, 0xFC11D37FuLL);
  if (v4)
  {
    v5 = v4;
    bzero(v4 + 16, 0x2E8uLL);
    *v5 = 0;
    *(v5 + 1) = v3;
    *(v5 + 8) = -6;
    *(v5 + 3) = xmmword_1DE09E6A0;
    *(v5 + 2) = v3;
    *(v5 + 3) = a2;
    MultiRadixRealFFT_Create();
  }

  exception = __cxa_allocate_exception(8uLL);
  v7 = std::bad_alloc::bad_alloc(exception);
}

void CResidualSuppressorV3::speex_preprocess_state_res_destroy(uint64_t a1)
{
  free(*(a1 + 88));
  free(*(a1 + 96));
  free(*(a1 + 104));
  free(*(a1 + 112));
  free(*(a1 + 120));
  free(*(a1 + 128));
  free(*(a1 + 136));
  free(*(a1 + 144));
  free(*(a1 + 152));
  free(*(a1 + 160));
  free(*(a1 + 168));
  free(*(a1 + 176));
  free(*(a1 + 248));
  free(*(a1 + 256));
  free(*(a1 + 184));
  free(*(a1 + 192));
  free(*(a1 + 200));
  free(*(a1 + 208));
  free(*(a1 + 240));
  free(*(a1 + 80));
  free(*(a1 + 312));
  free(*(a1 + 320));
  MultiRadixFFT_Dispose(*(a1 + 336));
  free(*(a1 + 344));
  free(*(a1 + 352));
  free(*(a1 + 408));
  free(*(a1 + 416));
  free(*(a1 + 424));
  free(*(a1 + 432));
  free(*(a1 + 440));
  free(*(a1 + 448));
  free(*(a1 + 480));
  free(*(a1 + 624));
  free(*(a1 + 632));
  free(*(a1 + 392));
  free(*(a1 + 592));
  free(*(a1 + 376));
  free(*(a1 + 384));
  free(*(a1 + 600));
  free(*(a1 + 608));
  free(*(a1 + 616));
  free(*(a1 + 640));
  free(*(a1 + 648));
  free(*(a1 + 656));
  free(*(a1 + 744));
  free(*(a1 + 752));
  CFilterBank::filterbank_destroy(*(a1 + 24));

  free(a1);
}

void CResidualSuppressorV3::speex_preprocess_run(uint64_t a1, char *a2, float **a3, float **a4, uint64_t a5)
{
  v15 = *MEMORY[0x1E69E9840];
  MEMORY[0x1EEE9AC00](a1);
  v14.realp = (&v13 - v11);
  v14.imagp = (&v13 + 4 * v10 - v11);
  if (v12)
  {
    CResidualSuppressorV3::speex_analysis(a1, a2, &v14);
    CResidualSuppressorV3::speex_preprocess_run_freq(a1, &v14.realp, a3, a4, a5);
    CResidualSuppressorV3::speex_synthesis(a1, a2);
  }

  else
  {
    CResidualSuppressorV3::speex_preprocess_run_freq(a1, &v14.realp, a3, a4, a5);
  }
}

float learnrate_v3::crossCorrSpec_raw(learnrate_v3 *this, const float *a2, const float *a3, const float *a4, const float *a5, float *a6, float *a7)
{
  v7 = MEMORY[0x1EEE9AC00](this);
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v24 = *MEMORY[0x1E69E9840];
  v21 = 0.0;
  __C = 0.0;
  v17 = v16;
  MEMORY[0x1E12BE9A0](v18, 1, v7);
  vDSP_svesq(__A, 1, &__C, v17);
  MEMORY[0x1E12BE8C0](v15, 1, v13, 1, __A, 1, __A, 1, v17);
  vDSP_sve(__A, 1, &v21, v17);
  result = __C + 8.6736e-19;
  v20 = v21 + 8.6736e-19;
  *v9 = __C + 8.6736e-19;
  *v11 = v20;
  return result;
}

void learnrate_v3::getAdaptationRate3_v6(uint64_t a1, const float *__B, int a3, int a4, int a5, int a6, double a7)
{
  v39 = *MEMORY[0x1E69E9840];
  if (*(a1 + 140) == 1)
  {
    v38 = *(a1 + 132) + *(a1 + 132);
    MEMORY[0x1EEE9AC00](a1);
    v11 = &v37[-((v10 + 15) & 0x7FFFFFFF0)];
    v13 = MEMORY[0x1EEE9AC00](v12);
    v15 = &v37[-v14];
    v17 = v16;
    MEMORY[0x1E12BE940](*(a1 + 56), 1, &v38, v11, 1, v16, v13);
    v38 = 9.0e-10;
    MEMORY[0x1E12BE8A0](*(a1 + 40), 1, &v38, v15, 1, v17);
    vDSP_vmin(v11, 1, v15, 1, v11, 1, v17);
    v38 = 0.35;
    MEMORY[0x1E12BE940](v11, 1, &v38, v11, 1, v17);
    v38 = *(a1 + 136) * 0.3;
    MEMORY[0x1E12BE940](v15, 1, &v38, *(a1 + 104), 1, v17);
    MEMORY[0x1E12BE5D0](v11, 1, *(a1 + 104), 1, v11, 1, v17);
    if (a3 == 1)
    {
      MEMORY[0x1E12BE7F0](v15, 1, __B, 1, v15, 1, v17);
    }

    vDSP_vdiv(v15, 1, v11, 1, *(a1 + 104), 1, v17);
  }

  else
  {
    v19 = (a4 - 1);
    if (a6)
    {
      v20 = *(a1 + 4);
      v21 = 0.0;
      if (v20 > ((v19 * 2000.0) * 9.3132e-10))
      {
        v22 = v20 * 0.25;
        v23 = *(a1 + 24);
        if (v22 > (v23 * 0.25))
        {
          v22 = v23 * 0.25;
        }

        v21 = v22 / v23;
      }
    }

    else
    {
      v21 = 0.0;
      if (*(a1 + 348) > ((v19 * 1000.0) * 9.3132e-10))
      {
        if (!a5)
        {
          ++*(a1 + 356);
        }

        v24 = *(a1 + 308);
        v25 = *(a1 + 312);
        v21 = 0.25;
        if (v24 > v25)
        {
          v26 = *(a1 + 304);
          if (v26 > v24 || v26 < v25)
          {
            if (v26 <= v24)
            {
              v28 = *(a1 + 320);
            }

            else
            {
              v28 = *(a1 + 316);
            }
          }

          else
          {
            v28 = *(a1 + 320) + (((v26 - v25) / (v24 - v25)) * (*(a1 + 316) - *(a1 + 320)));
          }

          v29 = 0.25;
          if (v28 >= 0.25)
          {
            v29 = v28;
          }

          if (*(a1 + 356) <= *(a1 + 360))
          {
            v21 = v29;
          }

          else
          {
            v21 = v28;
          }
        }
      }
    }

    *&a7 = fminf(v21 * 2.5, 1.0);
    if (a5 != 2)
    {
      *&a7 = v21;
    }

    if (a4 >= 1)
    {
      v30 = (a4 + 3) & 0xFFFFFFFC;
      v31 = vdupq_n_s64(a4 - 1);
      v32 = xmmword_1DE095150;
      v33 = xmmword_1DE095160;
      v34 = (*(a1 + 104) + 8);
      v35 = vdupq_n_s64(4uLL);
      do
      {
        v36 = vmovn_s64(vcgeq_u64(v31, v33));
        if (vuzp1_s16(v36, *&a7).u8[0])
        {
          *(v34 - 2) = LODWORD(a7);
        }

        if (vuzp1_s16(v36, *&a7).i8[2])
        {
          *(v34 - 1) = LODWORD(a7);
        }

        if (vuzp1_s16(*&a7, vmovn_s64(vcgeq_u64(v31, *&v32))).i32[1])
        {
          *v34 = LODWORD(a7);
          v34[1] = LODWORD(a7);
        }

        v32 = vaddq_s64(v32, v35);
        v33 = vaddq_s64(v33, v35);
        v34 += 4;
        v30 -= 4;
      }

      while (v30);
    }

    if (a3 == 1)
    {
      vDSP_vdiv(__B, 1, *(a1 + 104), 1, *(a1 + 104), 1, a4);
    }

    if (!a5)
    {
      *(a1 + 144) = v21 + *(a1 + 144);
    }
  }
}

void learnrate_v3::updateStatistics_echo(int a1, const float *a2, const float *__A, float *a4)
{
  v8 = a1;
  vDSP_svesq(__A, 1, a4 + 4, a1);
  vDSP_svesq(a2, 1, a4 + 6, v8);
  v9 = a4[6];
  a4[7] = v9;
  a4[8] = v9;
  v10 = ((2 * a1) * 100.0) * 9.3132e-10;
  if (v9 < v10)
  {
    a4[6] = v10;
  }

  vDSP_dotpr(a2, 1, __A, 1, a4 + 3, v8);
}

void learnrate_v3::adaptLmsFilter_v3(uint64_t a1)
{
  v4 = MEMORY[0x1EEE9AC00](a1);
  v6 = v5;
  v7 = v3;
  v9 = v8;
  v11 = v10;
  v12 = v1;
  v112 = *MEMORY[0x1E69E9840];
  v14 = v13[4];
  v15 = v13[11];
  v16 = v13[10];
  v17 = *(v2 + 19);
  v18 = *(v2 + 18);
  *(v8 + 72) = v18;
  *(v8 + 76) = v17;
  v100 = v13;
  v101 = v8;
  v92 = v1;
  v93 = v10;
  if (v15 == 1)
  {
    v19 = v3;
    v20 = *v2;
    v21 = v2[1];
    v22 = **v2;
    v23 = *v21;
    MEMORY[0x1E12BE7F0](v6[13], 1, v1, 1, v111, 1, v14, v4);
    MEMORY[0x1E12BE7F0](v6[13], 1, v11, 1, v110, 1, v14);
    v102 = v6;
    v25 = *v9;
    v24 = v9[1];
    v26 = v14;
    v27 = v19[2];
    v28 = v19[3];
    vDSP_vmma(v111, 1, v27, 1, v110, 1, v28, 1, __E, 1, v26);
    MEMORY[0x1E12BE5D0](__E, 1, v20, 1, v25, 1, v26);
    vDSP_vmmsb(v110, 1, v27, 1, v111, 1, v28, 1, __E, 1, v26);
    MEMORY[0x1E12BE5D0](__E, 1, v21, 1, v24, 1, v26);
    v29 = v102[13];
    v30 = *v93 * v29[v26];
    *v25 = v22 + ((*v92 * *v29) * *v27);
    *v24 = v23 + (v30 * *v28);
  }

  else
  {
    LODWORD(__A.realp) = 0;
    v96 = v2;
    MEMORY[0x1E12BE7F0](v6[11], 1, v6[13], 1, v6[13], 1, v16, v4);
    MEMORY[0x1E12BE7F0](v6[13], 1, v12, 1, v111, 1, v14);
    MEMORY[0x1E12BE7F0](v6[13], 1, v11, 1, v110, 1, v14);
    v31 = v96;
    v32 = 4 * v14;
    if (v15 >= 1)
    {
      v33 = 0;
      v34 = *v96;
      v35 = v96[1];
      v36 = v107;
      v37 = v108;
      do
      {
        *v37++ = *(v34 + v33);
        *v36++ = *(v35 + v33);
        v33 += v32;
        --v15;
      }

      while (v15);
    }

    if (*(v96 + 17) == 1)
    {
      LODWORD(__A.realp) = 0;
      if (v18 * v14 >= 1)
      {
        vDSP_vfill(&__A, *v9, 1, (v18 * v14));
        vDSP_vfill(&__A, v9[1], 1, (v18 * v14));
        vDSP_vfill(&__A, v9[2], 1, (v18 * v14));
        vDSP_vfill(&__A, v9[3], 1, (v18 * v14));
        v31 = v96;
        v32 = 4 * v14;
      }

      v89 = v18 * v14;
      v38 = v14 + v14 * v17;
      v39 = (*(v9 + 9) - v38);
      if (v39 >= 1)
      {
        v40 = v32;
        vDSP_vfill(&__A, (*v9 + 4 * v38), 1, v39);
        vDSP_vfill(&__A, (v9[1] + 4 * v38), 1, v39);
        vDSP_vfill(&__A, (v9[2] + 4 * v38), 1, v39);
        vDSP_vfill(&__A, (v9[3] + 4 * v38), 1, v39);
        v31 = v96;
        v32 = v40;
      }
    }

    else
    {
      v89 = v18 * v14;
    }

    v91 = v18;
    v90 = v17;
    v41 = v101;
    if (v18 <= v17)
    {
      v42 = 4 * v89;
      v43 = v17 - v18 + 1;
      v44 = 4 * v18;
      v94 = v32;
      do
      {
        LODWORD(__A.realp) = *(v6[12] + v44);
        v45 = *(v7[11] + v44) * v14;
        v46 = *v31;
        v103 = v31[1];
        v47 = v6;
        v48 = *v41;
        v98 = v41[1];
        v49 = (v7[2] + 4 * v45);
        v50 = v7;
        v51 = (v7[3] + 4 * v45);
        vDSP_vmma(v111, 1, v49, 1, v110, 1, v51, 1, __E, 1, v14);
        v52 = v48 + v42;
        v6 = v47;
        MEMORY[0x1E12BE8F0](__E, 1, &__A, v46 + v42, 1, v52, 1, v14);
        v53 = v51;
        v7 = v50;
        vDSP_vmmsb(v110, 1, v49, 1, v111, 1, v53, 1, __E, 1, v14);
        MEMORY[0x1E12BE8F0](__E, 1, &__A, v103 + v42, 1, v98 + v42, 1, v14);
        v41 = v101;
        v32 = v94;
        v31 = v96;
        v42 += v94;
        v44 += 4;
        --v43;
      }

      while (v43);
    }

    v9 = v41;
    if (v91 <= v90)
    {
      v54 = 0;
      v55 = *v41;
      v56 = v41[1];
      v57 = v7[2];
      v58 = v7[3];
      v59 = v6[13];
      v60 = *v92 * *v59;
      v61 = *v93 * v59[v14];
      v62 = 4 * v89;
      v63 = v6[12] + 4 * v91;
      v64 = v7[11] + 4 * v91;
      do
      {
        v65 = *(v64 + 4 * v54) * v14;
        *(v55 + v62) = *&v108[v91 + v54] + ((v60 * *(v63 + 4 * v54)) * *(v57 + 4 * v65));
        *(v56 + v62) = *&v107[v91 + v54] + ((v61 * *(v63 + 4 * v54)) * *(v58 + 4 * v65));
        v62 += v32;
        ++v54;
      }

      while (v90 - v91 + 1 != v54);
    }
  }

  v66 = *(v9 + 19);
  v67 = *(v9 + 18);
  if (v67 <= v66)
  {
    v68 = *v100 >> 1;
    v99 = v68;
    v69 = 4 * v68;
    v70 = *v100 >> 2;
    v95 = ((v68 - 1) >> 1) + 1;
    v97 = v66 + 1;
    v104 = v68;
    v71 = 4 * v67 * v68;
    v72 = ~v67;
    do
    {
      v73 = (*v9 + 4 * v67 * v99);
      v74 = (v9[1] + 4 * v67 * v99);
      v76 = v9[2];
      v75 = v9[3];
      v77 = (v76 + 4 * v67 * v99);
      v78 = (v75 + 4 * v67 * v99);
      __A.realp = v77;
      __A.imagp = v78;
      memcpy(v77, v73, v69);
      memcpy(v78, v74, v69);
      v80 = *(v100 + 1);
      if (v80)
      {
        MultiRadixRealFFT::RealInPlaceTransform(v80, &__A, -1, v79);
      }

      v105 = *(v100 + 21) * *(v100 + 20);
      MEMORY[0x1E12BE940](v77, 1, &v105, v77, 1, v70);
      MEMORY[0x1E12BE940](v78, 1, &v105, v78, 1, v70);
      vDSP_vclr(&v77[v70], 1, v70);
      vDSP_vclr(&v78[v70], 1, v70);
      v9 = v101;
      if (v104 >= 1)
      {
        v82 = (v76 + v71);
        v83 = (v101[6] + 4 * v104 * (v100[11] + v72) + 4);
        v84 = (v75 + v71);
        v85 = v95;
        do
        {
          v86 = *v82++;
          *(v83 - 1) = v86;
          v87 = *v84++;
          v81 = v87;
          *v83 = v87;
          v83 += 2;
          --v85;
        }

        while (v85);
      }

      v88 = *(v100 + 1);
      if (v88)
      {
        MultiRadixRealFFT::RealInPlaceTransform(v88, &__A, 1, v81);
      }

      ++v67;
      v71 += v69;
      --v72;
    }

    while (v97 != v67);
  }
}

uint64_t AULexiPlate::SupportedNumChannels(AULexiPlate *this, const AUChannelInfo **a2)
{
  if (a2)
  {
    *a2 = &AULexiPlate::SupportedNumChannels(AUChannelInfo const**)::kSupportedNumChannels;
  }

  return 2;
}

void AULexiPlate::~AULexiPlate(AULexiPlate *this)
{
  AUDspLib::~AUDspLib(this);

  JUMPOUT(0x1E12BD160);
}

uint64_t Neuralizer::reset(Neuralizer *this)
{
  v2 = *(this + 8);
  v3 = *(this + 9) - v2;
  if (v3)
  {
    v4 = v3 >> 5;
    v5 = 1;
    do
    {
      *(v2 + 8) = *v2;
      *(v2 + 24) = 0;
      v2 += 32;
    }

    while (v4 > v5++);
  }

  v7 = *(this + 1);
  *(this + 3) = *(this + 2);
  result = (*(**v7 + 48))();
  if (*(this + 160))
  {
    result = AudioSampleRateConverterReset();
  }

  if (*(this + 176) == 1)
  {
    return AudioSampleRateConverterReset();
  }

  return result;
}

uint64_t Neuralizer::process(uint64_t result, uint64_t **a2, unsigned int a3)
{
  v61 = *MEMORY[0x1E69E9840];
  if (*(result + 8))
  {
    v3 = result;
    if (*(result + 116) == 1)
    {
      v5 = *(result + 104);
      if (v5 >= a3)
      {
        v5 = a3;
      }

      v60 = v5;
      if (*(result + 52))
      {
        v6 = 0;
        v7 = 0;
        do
        {
          result = memmove(*(*(v3 + 64) + v6), (*(*(v3 + 64) + v6) + 4 * *(v3 + 108)), 4 * (((*(*(v3 + 64) + v6 + 8) - *(*(v3 + 64) + v6)) >> 2) - *(v3 + 108)));
          ++v7;
          v6 += 32;
        }

        while (v7 < *(v3 + 52));
      }

      if (v60)
      {
        v8 = *(v3 + 96);
        v9 = *(v3 + 88);
        v10 = v60;
        do
        {
          v11 = v8 - v9;
          if (*(v3 + 160) == 1)
          {
            RequiredNumberOfInputFrames = AudioSampleRateConverterGetRequiredNumberOfInputFrames();
            v13 = RequiredNumberOfInputFrames;
            if (RequiredNumberOfInputFrames > v10)
            {
              RequiredNumberOfInputFrames = CA::AudioSampleRateConverter::GetExpectedNumberOfOutputFrames(*(v3 + 152));
              v11 = RequiredNumberOfInputFrames;
              v13 = v10;
            }

            MEMORY[0x1EEE9AC00](RequiredNumberOfInputFrames);
            v15 = &v59[-((v14 + 15) & 0xFFFFFFFF0)];
            if (v14 >= 0x200)
            {
              v16 = 512;
            }

            else
            {
              v16 = v14;
            }

            bzero(&v59[-((v14 + 15) & 0xFFFFFFFF0)], v16);
            v17 = *(v3 + 48);
            MEMORY[0x1EEE9AC00](v18);
            v20 = &v59[-((v19 + 15) & 0xFFFFFFFF0)];
            if (v19 >= 0x200)
            {
              v21 = 512;
            }

            else
            {
              v21 = v19;
            }

            bzero(&v59[-((v19 + 15) & 0xFFFFFFFF0)], v21);
            if (v17)
            {
              v22 = *a2;
              v23 = v60 - v10;
              v24 = *(v3 + 96);
              v25 = *(v3 + 88);
              v26 = v15;
              v27 = v20;
              v28 = *(v3 + 16);
              do
              {
                v29 = *v22;
                v22 += 4;
                *v26++ = (v29 + 4 * v23);
                *v27++ = v28 + 4 * v25;
                v25 += v24;
                --v17;
              }

              while (v17);
            }

            result = CA::AudioSampleRateConverter::Process(*(v3 + 152), v15, v13, v20, v11);
            v9 = *(v3 + 88) + v11;
            *(v3 + 88) = v9;
          }

          else
          {
            if (v11 >= v10)
            {
              v13 = v10;
            }

            else
            {
              v13 = v8 - v9;
            }

            if (*(v3 + 48))
            {
              v30 = 0;
              v31 = 0;
              v32 = v60 - v10;
              do
              {
                result = memcpy((*(v3 + 16) + 4 * (*(v3 + 88) + *(v3 + 96) * v31++)), ((*a2)[v30] + 4 * v32), 4 * v13);
                v30 += 4;
              }

              while (v31 < *(v3 + 48));
              v9 = *(v3 + 88);
            }

            v9 += v13;
            *(v3 + 88) = v9;
          }

          v8 = *(v3 + 96);
          if (v9 >= v8)
          {
            if (*(v3 + 208) != *(v3 + 200) && *(v3 + 48))
            {
              v33 = 0;
              v34 = 0;
              do
              {
                v35 = *(v3 + 16) + 4 * (*(v3 + 96) * v34);
                MEMORY[0x1E12BE940](v35, 1, *(v3 + 200) + v33, v35, 1);
                ++v34;
                v33 += 4;
              }

              while (v34 < *(v3 + 48));
            }

            result = (*(***(v3 + 8) + 72))(**(v3 + 8), v3 + 16);
            LODWORD(ExpectedNumberOfOutputFrames) = *(v3 + 96);
            if (*(v3 + 176))
            {
              ExpectedNumberOfOutputFrames = CA::AudioSampleRateConverter::GetExpectedNumberOfOutputFrames(*(v3 + 168));
              MEMORY[0x1EEE9AC00](ExpectedNumberOfOutputFrames);
              v38 = &v59[-((v37 + 15) & 0xFFFFFFFF0)];
              if (v37 >= 0x200)
              {
                v39 = 512;
              }

              else
              {
                v39 = v37;
              }

              bzero(&v59[-((v37 + 15) & 0xFFFFFFFF0)], v39);
              if (*(v3 + 52))
              {
                v41 = 0;
                do
                {
                  v40 = (*(***(v3 + 8) + 40))(**(v3 + 8));
                  v38[v41] = (*v40 + 4 * (*(v3 + 96) * v41));
                  ++v41;
                  v42 = *(v3 + 52);
                }

                while (v41 < v42);
              }

              else
              {
                v42 = 0;
              }

              MEMORY[0x1EEE9AC00](v40);
              v49 = &v59[-((v48 + 15) & 0xFFFFFFFF0)];
              if (v48 >= 0x200)
              {
                v50 = 512;
              }

              else
              {
                v50 = v48;
              }

              bzero(&v59[-((v48 + 15) & 0xFFFFFFFF0)], v50);
              if (v42)
              {
                v51 = *(v3 + 64);
                v52 = *(v3 + 92);
                v53 = v49;
                do
                {
                  v54 = *v51;
                  v51 += 4;
                  *v53++ = v54 + 4 * v52;
                  --v42;
                }

                while (v42);
              }

              result = CA::AudioSampleRateConverter::Process(*(v3 + 168), v38, *(v3 + 96), v49, ExpectedNumberOfOutputFrames);
            }

            else if (*(v3 + 52))
            {
              v43 = 0;
              v44 = 0;
              do
              {
                v45 = *(v3 + 92);
                v46 = *(*(v3 + 64) + v43);
                v47 = (*(***(v3 + 8) + 40))(**(v3 + 8));
                result = memcpy((v46 + 4 * v45), (*v47 + 4 * (*(v3 + 96) * v44++)), 4 * *(v3 + 96));
                v43 += 32;
              }

              while (v44 < *(v3 + 52));
            }

            v8 = *(v3 + 96);
            v9 = *(v3 + 88) - v8;
            v55 = *(v3 + 92) + ExpectedNumberOfOutputFrames;
            *(v3 + 88) = v9;
            *(v3 + 92) = v55;
          }

          v10 -= v13;
        }

        while (v10);
      }

      v56 = *(v3 + 92);
      v57 = v56 >= v60;
      v58 = v56 - v60;
      if (v57)
      {
        *(v3 + 92) = v58;
      }

      *(v3 + 108) = v60;
    }
  }

  return result;
}

void sub_1DE01A930(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t Neuralizer::Neuralizer(uint64_t a1, CFURLRef *a2, int a3, int a4, __int128 *a5, float a6)
{
  v6 = a2;
  v67 = *MEMORY[0x1E69E9840];
  *a1 = &unk_1F5937868;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 56) = 0;
  *(a1 + 40) = 0u;
  v8 = (a1 + 40);
  *(a1 + 80) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 96) = 0x10000000200;
  *(a1 + 108) = 0x100000000000;
  *(a1 + 116) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 128) = 0;
  v9 = (a1 + 128);
  *(a1 + 188) = 1195081728;
  *(a1 + 196) = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  *(a1 + 184) = a6;
  *(a1 + 104) = a4;
  *(a1 + 120) = a3;
  v10 = *a5;
  *(a1 + 144) = *(a5 + 2);
  *(a1 + 128) = v10;
  *(a5 + 23) = 0;
  *a5 = 0;
  *(a1 + 117) = 0;
  v11 = *(a1 + 151);
  if (v11 < 0)
  {
    v12 = *(a1 + 128);
    v11 = *(a1 + 136);
  }

  else
  {
    v12 = (a1 + 128);
  }

  v13 = &v12[v11];
  if (v11 >= 5)
  {
    v15 = (a1 + 128);
    v16 = (a1 + 40);
    v17 = v12;
    do
    {
      v14 = memchr(v17, 100, v11 - 4);
      if (!v14)
      {
        break;
      }

      if (*v14 == 1969382756 && v14[4] == 103)
      {
        goto LABEL_14;
      }

      v17 = v14 + 1;
      v11 = v13 - v17;
    }

    while (v13 - v17 > 4);
    v14 = v13;
LABEL_14:
    v8 = v16;
    v9 = v15;
    v6 = a2;
  }

  else
  {
    v14 = &v12[v11];
  }

  v20 = v14 == v13 || v14 - v12 == -1;
  if (*v6)
  {
    CFURLGetFileSystemRepresentation(*v6, 1u, buffer, 1024);
    if (stat(buffer, &v59))
    {
      if (v20)
      {
        if (getAUSMV2Log(void)::onceToken != -1)
        {
          dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
        }

        v21 = getAUSMV2Log(void)::gLog;
        if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_ERROR))
        {
          if (*(a1 + 151) < 0)
          {
            v9 = *v9;
          }

          *__p = 136315650;
          *&__p[4] = v9;
          *&__p[12] = 2080;
          *&__p[14] = "Neuralizer";
          v61 = 2080;
          v62 = buffer;
          v22 = "[%s|%s] Error creating neural network - Neuralizer plist does not exist: %s";
          v23 = __p;
          v24 = v21;
          v25 = 32;
LABEL_37:
          _os_log_error_impl(&dword_1DDB85000, v24, OS_LOG_TYPE_ERROR, v22, v23, v25);
          return a1;
        }

        return a1;
      }

      if (getAUSMV2Log(void)::onceToken != -1)
      {
        dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
      }

      v32 = getAUSMV2Log(void)::gLog;
      if (!os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_DEBUG))
      {
        return a1;
      }

      if (*(a1 + 151) < 0)
      {
        v9 = *v9;
      }

      *__p = 136315650;
      *&__p[4] = v9;
      *&__p[12] = 2080;
      *&__p[14] = "Neuralizer";
      v61 = 2080;
      v62 = buffer;
      v33 = "[%s|%s] Error creating neural network - Neuralizer plist does not exist: %s";
      v34 = __p;
      v35 = v32;
      v36 = 32;
LABEL_65:
      _os_log_debug_impl(&dword_1DDB85000, v35, OS_LOG_TYPE_DEBUG, v33, v34, v36);
      return a1;
    }

    CFURLGetFileSystemRepresentation(*v6, 1u, buffer, 1024);
    std::string::basic_string[abi:ne200100]<0>(__p, buffer);
    applesauce::CF::make_DataRef(&data, __p);
    if (SHIBYTE(v61) < 0)
    {
      operator delete(*__p);
    }

    if (data)
    {
      v27 = CFPropertyListCreateWithData(0, data, 0, 0, 0);
      v28 = v27;
      *__p = v27;
      if (v27)
      {
        v29 = CFGetTypeID(v27);
        if (v29 != CFDictionaryGetTypeID())
        {
          exception = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(exception, "Could not construct");
        }
      }

      v30 = *v8;
      *v8 = v28;
      *__p = v30;
      if (v30)
      {
        CFRelease(v30);
        v28 = *v8;
      }

      if (v28)
      {
        if (!applesauce::CF::details::has_key<char const(&)[17]>(v28, "ModelNetPathBase"))
        {
          goto LABEL_90;
        }

        if (!*v8)
        {
          v53 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v53, "Could not construct");
        }

        v31 = applesauce::CF::details::at_key<char const(&)[17]>(*v8, "ModelNetPathBase");
        if (!v31)
        {
          __p[0] = 0;
          LOBYTE(v62) = 0;
          goto LABEL_79;
        }

        applesauce::CF::convert_as<std::string,0>(__p, v31);
        if ((v62 & 1) == 0)
        {
          goto LABEL_79;
        }

        if (SHIBYTE(v61) < 0)
        {
          if (*&__p[8])
          {
            v43 = 0;
LABEL_85:
            if (SHIBYTE(v61) < 0 && (v62 & 1) != 0)
            {
              operator delete(*__p);
              if (v43)
              {
LABEL_90:
                theDict = CFDictionaryCreateMutableCopy(0, 0, *v8);
                if (*v6)
                {
                  PathComponent = CFURLCreateCopyDeletingLastPathComponent(0, *v6);
                  *__p = PathComponent;
                  if (PathComponent)
                  {
                    v45 = CFGetTypeID(PathComponent);
                    if (v45 != CFURLGetTypeID())
                    {
                      v52 = __cxa_allocate_exception(0x10uLL);
                      std::runtime_error::runtime_error(v52, "Could not construct");
                    }

                    if (*__p)
                    {
                      v46 = CFURLCopyPath(*__p);
                      value = v46;
                      if (!v46 || (v47 = CFGetTypeID(v46), v47 == CFStringGetTypeID()))
                      {
                        if (*__p)
                        {
                          CFRelease(*__p);
                        }

                        CFDictionarySetValue(theDict, @"ModelNetPathBase", value);
                        if (getNeuralizerLogScope(void)::once != -1)
                        {
                          dispatch_once(&getNeuralizerLogScope(void)::once, &__block_literal_global_31991);
                        }

                        operator new();
                      }

                      v54 = __cxa_allocate_exception(0x10uLL);
                      std::runtime_error::runtime_error(v54, "Could not construct");
                    }
                  }

                  v49 = __cxa_allocate_exception(0x10uLL);
                  std::runtime_error::runtime_error(v49, "Could not construct");
                }

                v51 = __cxa_allocate_exception(0x10uLL);
                std::runtime_error::runtime_error(v51, "Could not construct");
              }
            }

            else if (v43)
            {
              goto LABEL_90;
            }

LABEL_79:
            if (getNeuralizerLogScope(void)::once != -1)
            {
              dispatch_once(&getNeuralizerLogScope(void)::once, &__block_literal_global_31991);
            }

            operator new();
          }
        }

        else if (HIBYTE(v61))
        {
          goto LABEL_79;
        }

        v43 = 1;
        goto LABEL_85;
      }

      if (getAUSMV2Log(void)::onceToken != -1)
      {
        dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
      }

      v42 = getAUSMV2Log(void)::gLog;
      if (!os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_ERROR))
      {
LABEL_102:
        if (data)
        {
          CFRelease(data);
        }

        return a1;
      }

      if (*(a1 + 151) < 0)
      {
        v9 = *v9;
      }

      *__p = 136315394;
      *&__p[4] = v9;
      *&__p[12] = 2080;
      *&__p[14] = "Neuralizer";
      v39 = "[%s|%s] Error creating neural network - error creating plist object";
      v40 = v42;
      v41 = 22;
    }

    else
    {
      if (getAUSMV2Log(void)::onceToken != -1)
      {
        dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
      }

      v38 = getAUSMV2Log(void)::gLog;
      if (!os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_102;
      }

      if (*(a1 + 151) < 0)
      {
        v9 = *v9;
      }

      *__p = 136315650;
      *&__p[4] = v9;
      *&__p[12] = 2080;
      *&__p[14] = "Neuralizer";
      v61 = 2080;
      v62 = buffer;
      v39 = "[%s|%s] Error creating neural network - error loading plist file: %s";
      v40 = v38;
      v41 = 32;
    }

    _os_log_error_impl(&dword_1DDB85000, v40, OS_LOG_TYPE_ERROR, v39, __p, v41);
    goto LABEL_102;
  }

  if (!v20)
  {
    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v37 = getAUSMV2Log(void)::gLog;
    if (!os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_DEBUG))
    {
      return a1;
    }

    if (*(a1 + 151) < 0)
    {
      v9 = *v9;
    }

    *buffer = 136315394;
    v64 = v9;
    v65 = 2080;
    v66 = "Neuralizer";
    v33 = "[%s|%s] Error creating neural network - Neuralizer plist was not provided";
    v34 = buffer;
    v35 = v37;
    v36 = 22;
    goto LABEL_65;
  }

  if (getAUSMV2Log(void)::onceToken != -1)
  {
    dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
  }

  v26 = getAUSMV2Log(void)::gLog;
  if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_ERROR))
  {
    if (*(a1 + 151) < 0)
    {
      v9 = *v9;
    }

    *buffer = 136315394;
    v64 = v9;
    v65 = 2080;
    v66 = "Neuralizer";
    v22 = "[%s|%s] Error creating neural network - Neuralizer plist was not provided";
    v23 = buffer;
    v24 = v26;
    v25 = 22;
    goto LABEL_37;
  }

  return a1;
}

void sub_1DE01BE10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void **a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, const void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t buf, int a44, __int16 a45, int a46, __int16 a47, __int16 a48, uint64_t a49, __int16 a50, int a51, __int16 a52, uint64_t a53, uint64_t a54)
{
  applesauce::CF::DataRef::~DataRef(&a24);
  v60 = *v58;
  if (*v58)
  {
    *(v54 + 208) = v60;
    operator delete(v60);
  }

  std::optional<CA::AudioSampleRateConverter>::~optional(a10);
  std::optional<CA::AudioSampleRateConverter>::~optional(a11);
  if (*(v54 + 151) < 0)
  {
    operator delete(*v56);
  }

  a53 = a12;
  std::vector<AUSM::FloatVector>::__destroy_vector::operator()[abi:ne200100](&a53);
  applesauce::CF::DictionaryRef::~DictionaryRef(v55);
  v61 = *a9;
  if (*a9)
  {
    *(v54 + 24) = v61;
    operator delete(v61);
  }

  std::unique_ptr<NeuralNet>::reset[abi:ne200100](v57, 0);
  _Unwind_Resume(a1);
}

float32x4_t Neuralizer::getFOAConversionMatrix(unsigned int a1, int a2, float32x4_t **a3, float32x4_t result)
{
  v6 = a1;
  if (a2 == 7012356 || (a2 & 0xFFFF0000) == 0xBF0000)
  {
    std::vector<float>::resize(a3, a1);
    v7 = 0x40000000;
    do
    {
      v8 = v7;
      v7 >>= 2;
    }

    while (v8 > v6);
    LODWORD(v9) = 0;
    if (v8)
    {
      do
      {
        v10 = v8 + v9;
        v11 = 2 * v8;
        if (v6 < v8 + v9)
        {
          v10 = 0;
          v11 = 0;
        }

        v6 -= v10;
        LODWORD(v9) = (v11 + v9) >> 1;
        v12 = v8 > 3;
        v8 >>= 2;
      }

      while (v12);
    }

    v13 = 0;
    v14 = 0;
    v15 = *a3;
    if (v9 <= 1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v9;
    }

    result.i32[0] = 1.0;
    do
    {
      v16 = 0;
      v17 = 1.0 / sqrtf((v14 * 2.0) + 1.0);
      v18 = vdupq_n_s64(2 * v14);
      v19 = (&v15->f32[2] + ((4 * (v14 * v14)) & 0x3FFFFFFFCLL));
      do
      {
        v20 = vdupq_n_s64(v16);
        v21 = vmovn_s64(vcgeq_u64(v18, vorrq_s8(v20, xmmword_1DE095160)));
        if (vuzp1_s16(v21, *result.f32).u8[0])
        {
          *(v19 - 2) = v17;
        }

        if (vuzp1_s16(v21, *&result).i8[2])
        {
          *(v19 - 1) = v17;
        }

        if (vuzp1_s16(*&result, vmovn_s64(vcgeq_u64(v18, vorrq_s8(v20, xmmword_1DE095150)))).i32[1])
        {
          *v19 = v17;
          v19[1] = v17;
        }

        v16 += 4;
        v19 += 4;
      }

      while ((v13 & 0xFFFFFFFFFFFFFFFCLL) + 4 != v16);
      ++v14;
      v13 += 2;
    }

    while (v14 != v9);
  }

  if (a2 == 7012356)
  {
    result = vmulq_f32(**a3, xmmword_1DE09E6C0);
    **a3 = result;
  }

  return result;
}

void _ZN11LeanSpatialL21calculateFadeInWindowIDF16_EEvmRNSt3__16vectorIT_NS1_9allocatorIS3_EEEE(unint64_t a1, uint64_t *a2)
{
  v2 = a1;
  v3 = *a2;
  if (a1 != (a2[1] - *a2) >> 1)
  {
    _ZNSt3__16vectorIDF16_NS_9allocatorIDF16_EEE6resizeEm(a2, a1);
    v3 = *a2;
  }

  v5 = 3.14159265 / (v2 + 1);
  v6 = v5;
  do
  {
    _D0 = cos(v6) * -0.5 + 0.5;
    __asm { FCVT            H0, D0 }

    *v3++ = LOWORD(_D0);
    v6 = v5 + v6;
    --v2;
  }

  while (v2);
}

void _ZNK11LeanSpatial6LSBankIDF16_E21getInterpolatedCoeffsEffNS_8BankModeERNSt3__16vectorIDF16_NS3_9allocatorIDF16_EEEERDF16_(uint64_t a1, unsigned int a2, unint64_t *a3, short float *a4, float a5, float a6)
{
  if (*(a1 + 213) != 1)
  {
    return;
  }

  if (a2 >= 3)
  {
    __assert_rtn("getInterpolatedCoeffs", "LSBank.cpp", 179, "inMode<kBankModeCount");
  }

  v9 = (a3[1] - *a3) >> 1;
  v10 = *(a1 + 184);
  if (a2 == 2)
  {
    if (v9 < 2 * v10)
    {
      __assert_rtn("getInterpolatedCoeffs", "LSBank.cpp", 182, "ioData.size() >= 2U*mFilterSize");
    }
  }

  else if (v9 < v10)
  {
    __assert_rtn("getInterpolatedCoeffs", "LSBank.cpp", 184, "ioData.size() >= mFilterSize");
  }

  v11 = *(a1 + 208);
  if ((v11 - 1) >= 2)
  {
    v21 = 0;
    LODWORD(v22) = 0;
    v12 = *(a1 + 160);
    v13 = *(a1 + 168);
    v23 = -1;
    LOWORD(v24) = COERCE_UNSIGNED_INT(1.0);
    LOWORD(_H9) = 0;
    LOWORD(_H11) = 0;
    LOWORD(v27) = COERCE_UNSIGNED_INT(1.0);
LABEL_34:
    LODWORD(v29) = -1;
    goto LABEL_35;
  }

  v12 = *(a1 + 160);
  v13 = *(a1 + 168);
  v14 = v13 - v12;
  if (v13 == v12)
  {
    v16 = *(a1 + 168);
  }

  else
  {
    v15 = v14 >> 2;
    v16 = *(a1 + 160);
    do
    {
      v17 = v15 >> 1;
      v18 = &v16[v15 >> 1];
      v20 = *v18;
      v19 = v18 + 1;
      v15 += ~(v15 >> 1);
      if (v20 < a6)
      {
        v16 = v19;
      }

      else
      {
        v15 = v17;
      }
    }

    while (v15);
  }

  if (v13 == v16)
  {
    LODWORD(v22) = (v14 >> 2) - 1;
    LODWORD(v29) = -1;
    LOWORD(v27) = COERCE_UNSIGNED_INT(1.0);
    LOWORD(_H11) = 0;
    goto LABEL_25;
  }

  LOWORD(v27) = COERCE_UNSIGNED_INT(1.0);
  LOWORD(_H11) = 0;
  if (v12 == v16)
  {
    LODWORD(v22) = 0;
    goto LABEL_23;
  }

  v28 = v16 - v12;
  if (*v16 == a6)
  {
    v22 = v28 >> 2;
LABEL_23:
    LODWORD(v29) = -1;
    goto LABEL_25;
  }

  v29 = v28 >> 2;
  LODWORD(v22) = (v28 >> 2) - 1;
  _S1 = (a6 - v12[v22]) / (*(v12 + (v28 & 0x3FFFFFFFCLL)) - v12[v22]);
  __asm { FCVT            H11, S1 }

  v27 = COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0)) - _H11;
LABEL_25:
  v35 = fmodf(a5 + 360.0, 360.0);
  v36 = *(a1 + 192);
  v37 = fmodf(v35, v36);
  v38 = v35 / v36;
  if (v37 == 0.0)
  {
    v21 = vcvtas_u32_f32(v38);
    v23 = -1;
    LOWORD(v24) = COERCE_UNSIGNED_INT(1.0);
    LOWORD(_H9) = 0;
  }

  else
  {
    v21 = vcvtms_u32_f32(v38);
    v23 = (v21 + 1) % *(a1 + 196);
    _S0 = v37 / v36;
    __asm { FCVT            H9, S0 }

    v24 = COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0)) - _H9;
  }

  if (v11 == 2)
  {
    if (v24 < _H9)
    {
      v21 = v23;
    }

    if (v27 < _H11)
    {
      LODWORD(v22) = v29;
    }

    v23 = -1;
    goto LABEL_34;
  }

LABEL_35:
  v40 = v29;
  v41 = v13 - v12;
  if (v23 <= *(a1 + 196))
  {
    v48 = (*(a1 + 48) + 2 * _ZNK11LeanSpatial6LSBankIDF16_E12getDataIndexEjjb(a1, v22, v21, 0));
    v49 = (*(a1 + 48) + 2 * _ZNK11LeanSpatial6LSBankIDF16_E12getDataIndexEjjb(a1, v22, v23, 0));
    if (v41 < v40)
    {
      if (a2 == 2)
      {
        v72 = *a3;
        v73 = *(a1 + 184) * *(a1 + 200);
        v142 = v24;
        v141 = _H9;
        vDSP_vsmsma_fp16(v48, &v142, v49, &v141, v72, v73);
        v43 = a4;
        if (*(a1 + 89) == 1)
        {
          v74 = (*(a1 + 48) + 2 * _ZNK11LeanSpatial6LSBankIDF16_E12getDataIndexEjjb(a1, v22, v21, 1));
          v75 = (*(a1 + 48) + 2 * _ZNK11LeanSpatial6LSBankIDF16_E12getDataIndexEjjb(a1, v22, v23, 1));
          v76 = *(a1 + 184);
          v77 = *a3 + 2 * v76;
          v142 = v24;
          v141 = _H9;
          vDSP_vsmsma_fp16(v74, &v142, v75, &v141, v77, v76);
        }
      }

      else
      {
        if (a2 == 1)
        {
          if (*(a1 + 89) == 1)
          {
            v50 = *(a1 + 48) + 2 * _ZNK11LeanSpatial6LSBankIDF16_E12getDataIndexEjjb(a1, v22, v21, 1);
            v49 = (*(a1 + 48) + 2 * _ZNK11LeanSpatial6LSBankIDF16_E12getDataIndexEjjb(a1, v22, v23, 1));
            v51 = *a3;
            v52 = *(a1 + 184);
            v142 = v24;
            v141 = _H9;
            v53 = v50;
          }

          else
          {
            v52 = *(a1 + 184);
            v53 = (v48 + 2 * v52);
            v51 = *a3;
            v49 = (v49 + 2 * v52);
            v142 = v24;
            v141 = _H9;
          }
        }

        else
        {
          v51 = *a3;
          v52 = *(a1 + 184);
          v142 = v24;
          v141 = _H9;
          v53 = v48;
        }

        vDSP_vsmsma_fp16(v53, &v142, v49, &v141, v51, v52);
        v43 = a4;
      }

      v111 = *(*(a1 + 64) + 2 * _ZNK11LeanSpatial6LSBankIDF16_E14getFilterIndexEjj(a1, v22, v21));
      v82 = (_H9 * *(*(a1 + 64) + 2 * _ZNK11LeanSpatial6LSBankIDF16_E14getFilterIndexEjj(a1, v22, v23))) + (v24 * v111);
      goto LABEL_89;
    }

    if (a2 == 2)
    {
      v83 = *a3;
      v84 = *(a1 + 184) * *(a1 + 200);
      v142 = v24 * v27;
      v141 = _H9 * v27;
      vDSP_vsmsma_fp16(v48, &v142, v49, &v141, v83, v84);
      if (*(a1 + 89) == 1)
      {
        v85 = (*(a1 + 48) + 2 * _ZNK11LeanSpatial6LSBankIDF16_E12getDataIndexEjjb(a1, v22, v21, 1));
        v86 = (*(a1 + 48) + 2 * _ZNK11LeanSpatial6LSBankIDF16_E12getDataIndexEjjb(a1, v22, v23, 1));
        v87 = *(a1 + 184);
        v88 = *a3 + 2 * v87;
        v142 = v24 * v27;
        v141 = _H9 * v27;
        vDSP_vsmsma_fp16(v85, &v142, v86, &v141, v88, v87);
      }

      v89 = (*(a1 + 48) + 2 * _ZNK11LeanSpatial6LSBankIDF16_E12getDataIndexEjjb(a1, v40, v21, 0));
      v90 = *a3;
      v91 = *(a1 + 184) * *(a1 + 200);
      v142 = v24 * _H11;
      vDSP_vsma_fp16(v89, &v142, v90, v90, v91);
      v43 = a4;
      if (*(a1 + 89) == 1)
      {
        v92 = (*(a1 + 48) + 2 * _ZNK11LeanSpatial6LSBankIDF16_E12getDataIndexEjjb(a1, v40, v21, 1));
        v93 = *(a1 + 184);
        v94 = (*a3 + 2 * v93);
        v142 = v24 * _H11;
        vDSP_vsma_fp16(v92, &v142, v94, v94, v93);
      }

      v95 = (*(a1 + 48) + 2 * _ZNK11LeanSpatial6LSBankIDF16_E12getDataIndexEjjb(a1, v40, v23, 0));
      v96 = *a3;
      v97 = *(a1 + 184) * *(a1 + 200);
      v142 = _H9 * _H11;
      vDSP_vsma_fp16(v95, &v142, v96, v96, v97);
      if (*(a1 + 89) == 1)
      {
        v98 = (*(a1 + 48) + 2 * _ZNK11LeanSpatial6LSBankIDF16_E12getDataIndexEjjb(a1, v40, v23, 1));
        v99 = *(a1 + 184);
        v100 = (*a3 + 2 * v99);
        v142 = _H9 * _H11;
        vDSP_vsma_fp16(v98, &v142, v100, v100, v99);
      }

      goto LABEL_88;
    }

    if (a2 == 1)
    {
      if (*(a1 + 89) != 1)
      {
        v112 = *(a1 + 184);
        v113 = *a3;
        v142 = v24 * v27;
        v141 = _H9 * v27;
        vDSP_vsmsma_fp16((v48 + 2 * v112), &v142, (v49 + 2 * v112), &v141, v113, v112);
        v114 = _ZNK11LeanSpatial6LSBankIDF16_E12getDataIndexEjjb(a1, v40, v21, 0);
        v115 = *(a1 + 184);
        v116 = (*(a1 + 48) + 2 * v114 + 2 * v115);
        v117 = *a3;
        v142 = v24 * _H11;
        vDSP_vsma_fp16(v116, &v142, v117, v117, v115);
        v118 = _ZNK11LeanSpatial6LSBankIDF16_E12getDataIndexEjjb(a1, v40, v23, 0);
        v109 = *(a1 + 184);
        v106 = (*(a1 + 48) + 2 * v118 + 2 * v109);
        v107 = _H9 * _H11;
        v108 = *a3;
        goto LABEL_87;
      }

      v58 = (*(a1 + 48) + 2 * _ZNK11LeanSpatial6LSBankIDF16_E12getDataIndexEjjb(a1, v22, v21, 1));
      v59 = (*(a1 + 48) + 2 * _ZNK11LeanSpatial6LSBankIDF16_E12getDataIndexEjjb(a1, v22, v23, 1));
      v60 = *a3;
      v61 = *(a1 + 184);
      v142 = v24 * v27;
      v141 = _H9 * v27;
      vDSP_vsmsma_fp16(v58, &v142, v59, &v141, v60, v61);
      v62 = (*(a1 + 48) + 2 * _ZNK11LeanSpatial6LSBankIDF16_E12getDataIndexEjjb(a1, v40, v21, 1));
      v63 = *a3;
      v64 = *(a1 + 184);
      v142 = v24 * _H11;
      vDSP_vsma_fp16(v62, &v142, v63, v63, v64);
      v65 = a1;
      v66 = v40;
      v67 = v23;
      v68 = 1;
    }

    else
    {
      v101 = *a3;
      v102 = *(a1 + 184);
      v142 = v24 * v27;
      v141 = _H9 * v27;
      vDSP_vsmsma_fp16(v48, &v142, v49, &v141, v101, v102);
      v103 = (*(a1 + 48) + 2 * _ZNK11LeanSpatial6LSBankIDF16_E12getDataIndexEjjb(a1, v40, v21, 0));
      v104 = *a3;
      v105 = *(a1 + 184);
      v142 = v24 * _H11;
      vDSP_vsma_fp16(v103, &v142, v104, v104, v105);
      v65 = a1;
      v66 = v40;
      v67 = v23;
      v68 = 0;
    }

    v106 = (*(a1 + 48) + 2 * _ZNK11LeanSpatial6LSBankIDF16_E12getDataIndexEjjb(v65, v66, v67, v68));
    v107 = _H9 * _H11;
    v108 = *a3;
    v109 = *(a1 + 184);
LABEL_87:
    v142 = v107;
    vDSP_vsma_fp16(v106, &v142, v108, v108, v109);
    v43 = a4;
LABEL_88:
    v119 = *(*(a1 + 64) + 2 * _ZNK11LeanSpatial6LSBankIDF16_E14getFilterIndexEjj(a1, v22, v21));
    v120 = (_H9 * *(*(a1 + 64) + 2 * _ZNK11LeanSpatial6LSBankIDF16_E14getFilterIndexEjj(a1, v22, v23))) + (v24 * v119);
    v121 = *(*(a1 + 64) + 2 * _ZNK11LeanSpatial6LSBankIDF16_E14getFilterIndexEjj(a1, v40, v21));
    v82 = (_H11 * ((_H9 * *(*(a1 + 64) + 2 * _ZNK11LeanSpatial6LSBankIDF16_E14getFilterIndexEjj(a1, v40, v23))) + (v24 * v121))) + (v120 * v27);
    goto LABEL_89;
  }

  if (v41 < v40)
  {
    v42 = _ZNK11LeanSpatial6LSBankIDF16_E12getDataIndexEjjb(a1, v22, v21, 0);
    v43 = a4;
    if (a2 == 2)
    {
      v69 = *(a1 + 184) * *(a1 + 200);
      if (v69)
      {
        memmove(*a3, (*(a1 + 48) + 2 * v42), 2 * v69);
      }

      if (*(a1 + 89) != 1)
      {
        goto LABEL_81;
      }

      v70 = _ZNK11LeanSpatial6LSBankIDF16_E12getDataIndexEjjb(a1, v22, v21, 1);
      v71 = *(a1 + 184);
      if (!v71)
      {
        goto LABEL_81;
      }

      v46 = 2 * v71;
      v45 = (*a3 + 2 * v71);
      v47 = (*(a1 + 48) + 2 * v70);
      goto LABEL_80;
    }

    if (a2 == 1)
    {
      if (*(a1 + 89) != 1)
      {
        v110 = *(a1 + 184);
        if (v110)
        {
          v45 = *a3;
          v46 = 2 * v110;
          v47 = (*(a1 + 48) + 2 * v42 + 2 * v110);
          goto LABEL_80;
        }

LABEL_81:
        v82 = *(*(a1 + 64) + 2 * _ZNK11LeanSpatial6LSBankIDF16_E14getFilterIndexEjj(a1, v22, v21));
        goto LABEL_89;
      }

      v42 = _ZNK11LeanSpatial6LSBankIDF16_E12getDataIndexEjjb(a1, v22, v21, 1);
    }

    v44 = *(a1 + 184);
    if (v44)
    {
      v45 = *a3;
      v46 = 2 * v44;
      v47 = (*(a1 + 48) + 2 * v42);
LABEL_80:
      memmove(v45, v47, v46);
      goto LABEL_81;
    }

    goto LABEL_81;
  }

  v54 = (*(a1 + 48) + 2 * _ZNK11LeanSpatial6LSBankIDF16_E12getDataIndexEjjb(a1, v22, v21, 0));
  v55 = (*(a1 + 48) + 2 * _ZNK11LeanSpatial6LSBankIDF16_E12getDataIndexEjjb(a1, v40, v21, 0));
  v43 = a4;
  if (a2 != 2)
  {
    if (a2 == 1)
    {
      if (*(a1 + 89) != 1)
      {
        v57 = *(a1 + 184);
        v80 = (v54 + 2 * v57);
        v56 = *a3;
        v55 = (v55 + 2 * v57);
        v142 = v27;
        v141 = _H11;
        goto LABEL_67;
      }

      v54 = (*(a1 + 48) + 2 * _ZNK11LeanSpatial6LSBankIDF16_E12getDataIndexEjjb(a1, v22, v21, 1));
      v55 = (*(a1 + 48) + 2 * _ZNK11LeanSpatial6LSBankIDF16_E12getDataIndexEjjb(a1, v40, v21, 1));
    }

    v56 = *a3;
    v57 = *(a1 + 184);
LABEL_66:
    v142 = v27;
    v141 = _H11;
    v80 = v54;
LABEL_67:
    vDSP_vsmsma_fp16(v80, &v142, v55, &v141, v56, v57);
    goto LABEL_68;
  }

  v78 = *a3;
  v79 = *(a1 + 184) * *(a1 + 200);
  v142 = v27;
  v141 = _H11;
  vDSP_vsmsma_fp16(v54, &v142, v55, &v141, v78, v79);
  if (*(a1 + 89) == 1)
  {
    v54 = (*(a1 + 48) + 2 * _ZNK11LeanSpatial6LSBankIDF16_E12getDataIndexEjjb(a1, v22, v21, 1));
    v55 = (*(a1 + 48) + 2 * _ZNK11LeanSpatial6LSBankIDF16_E12getDataIndexEjjb(a1, v40, v21, 1));
    v57 = *(a1 + 184);
    v56 = *a3 + 2 * v57;
    goto LABEL_66;
  }

LABEL_68:
  v81 = *(*(a1 + 64) + 2 * _ZNK11LeanSpatial6LSBankIDF16_E14getFilterIndexEjj(a1, v22, v21));
  v82 = (_H11 * *(*(a1 + 64) + 2 * _ZNK11LeanSpatial6LSBankIDF16_E14getFilterIndexEjj(a1, v40, v21))) + (v27 * v81);
LABEL_89:
  *v43 = v82;
  v122 = *(a1 + 264);
  if (v122)
  {
    v123 = *(a1 + 272);
    v124 = *a3;
    if (v123)
    {
      bzero(*a3, 2 * v123);
    }

    vDSP_vmul_fp16(&v124[v123], *(a1 + 216), 1, &v124[v123], v122);
    if (*(a1 + 204) == 2)
    {
      v125 = *(a1 + 272);
      v126 = *(a1 + 184);
      v127 = *a3;
      if (v125)
      {
        bzero(&v127[v126], 2 * v125);
      }

      vDSP_vmul_fp16(&v127[v125 + v126], *(a1 + 216), 1, &v127[v125 + v126], *(a1 + 264));
    }
  }

  else if (!*(a1 + 280))
  {
    return;
  }

  v128 = *(a1 + 280);
  if (v128)
  {
    v129 = *(a1 + 296);
    v130 = *(a1 + 184);
    if (v130 <= v129)
    {
      v132 = *(a1 + 288);
      v131 = *a3;
    }

    else
    {
      v131 = *a3;
      bzero(&v131[2 * v129], 2 * (v130 - v129));
      v132 = *(a1 + 288);
    }

    v133 = &v131[2 * v132];
    v134 = (*(a1 + 248) - 2);
    v135 = v128;
    do
    {
      v136 = *v134--;
      *v133 = v136 * *v133;
      ++v133;
      --v135;
    }

    while (v135);
    if (*(a1 + 204) == 2)
    {
      if (v130 > v129)
      {
        bzero(&v131[2 * v130 + 2 * v129], 2 * (v130 - v129));
      }

      v137 = &v131[2 * *(a1 + 288) + 2 * v130];
      v138 = (*(a1 + 248) - 2);
      do
      {
        v139 = *v138--;
        *v137 = v139 * *v137;
        ++v137;
        --v128;
      }

      while (v128);
    }
  }
}

uint64_t _ZNK11LeanSpatial6LSBankIDF16_E12getDataIndexEjjb(uint64_t a1, unsigned int a2, unsigned int a3, int a4)
{
  if (a2 >= ((*(a1 + 168) - *(a1 + 160)) >> 2))
  {
    __assert_rtn("getDataIndex", "LSBank.cpp", 388, "inElevationIndex < mElevationList.size()");
  }

  v4 = *(a1 + 196);
  if (v4 <= a3)
  {
    __assert_rtn("getDataIndex", "LSBank.cpp", 389, "inAzimuthIndex < mAzimuthPerElevationCount");
  }

  if (a4)
  {
    a3 = (v4 - a3) % v4;
  }

  v5 = *(a1 + 200);
  return _ZNK11LeanSpatial6LSBankIDF16_E14getFilterIndexEjj(a1, a2, a3) * v5 * *(a1 + 184);
}

uint64_t _ZNK11LeanSpatial6LSBankIDF16_E14getFilterIndexEjj(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if (a2 >= ((*(a1 + 168) - *(a1 + 160)) >> 2))
  {
    __assert_rtn("getFilterIndex", "LSBank.cpp", 400, "inElevationIndex < mElevationList.size()");
  }

  v3 = *(a1 + 196);
  if (v3 <= a3)
  {
    __assert_rtn("getFilterIndex", "LSBank.cpp", 401, "inAzimuthIndex < mAzimuthPerElevationCount");
  }

  return a3 + v3 * a2;
}

uint64_t DictionaryBlobReader::ReadVectorFromDictionary(NSObject ***a1, CFDictionaryRef theDict, const __CFString *key, void *a4)
{
  v26 = *MEMORY[0x1E69E9840];
  Value = CFDictionaryGetValue(theDict, key);
  if (Value)
  {
    v8 = Value;
    Length = CFDataGetLength(Value);
    v10 = Length >> 2;
    v20 = 0;
    std::vector<float>::assign(a4, Length >> 2, &v20, v11);
    BytePtr = CFDataGetBytePtr(v8);
    if (Length >= 4)
    {
      v13 = *a4;
      if (v10 <= 1)
      {
        v14 = 1;
      }

      else
      {
        v14 = v10;
      }

      do
      {
        v15 = *BytePtr;
        BytePtr += 4;
        *v13++ = bswap32(v15);
        --v14;
      }

      while (v14);
    }

    return 0;
  }

  else
  {
    v16 = 4294900555;
    v18 = *a1;
    if (*a1)
    {
      v19 = *v18;
      if (!*v18)
      {
        return v16;
      }
    }

    else
    {
      v19 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 136315650;
      v21 = "DictionaryBlobReader.cpp";
      v22 = 1024;
      v23 = 21;
      v24 = 2080;
      CStringPtr = CFStringGetCStringPtr(key, 0x8000100u);
      _os_log_impl(&dword_1DDB85000, v19, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Failed to retrieve %s.", &v20, 0x1Cu);
    }
  }

  return v16;
}

uint64_t DictionaryBlobReader::ReadSparseMatrix(NSObject ***this, CFDictionaryRef theDict, const __CFString *key, unsigned int *a4, __CFString *a5, int a6, __CFString *a7, sparse_m_float **a8)
{
  v90 = *MEMORY[0x1E69E9840];
  v81 = 0;
  Value = CFDictionaryGetValue(theDict, key);
  v15 = *this;
  if (Value)
  {
    v16 = Value;
    if (v15)
    {
      v17 = *v15;
      if (!*v15)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v17 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      v83 = "DictionaryBlobReader.cpp";
      v84 = 1024;
      v85 = 67;
      v86 = 2080;
      v87 = COERCE_DOUBLE(CFStringGetCStringPtr(key, 0x8000100u));
      _os_log_impl(&dword_1DDB85000, v17, OS_LOG_TYPE_DEBUG, "%25s:%-5d Found the dictionary %s.\n", buf, 0x1Cu);
      v15 = *this;
    }

    if (v15)
    {
      v20 = *v15;
      if (!*v15)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v20 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v83 = "DictionaryBlobReader.cpp";
      v84 = 1024;
      v85 = 70;
      _os_log_impl(&dword_1DDB85000, v20, OS_LOG_TYPE_DEBUG, "%25s:%-5d Loading from matrixDict.\n", buf, 0x12u);
    }

LABEL_17:
    if (DictionaryBlobReader::ReadScalarFromDictionary<unsigned int>(this, v16, a7, &v81))
    {
      v18 = 4294900555;
      v21 = *this;
      if (*this)
      {
        v19 = *v21;
        if (!*v21)
        {
          return v18;
        }
      }

      else
      {
        v19 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *&v24 = COERCE_DOUBLE(CFStringGetCStringPtr(a7, 0x8000100u));
        *buf = 136315650;
        v83 = "DictionaryBlobReader.cpp";
        v84 = 1024;
        v85 = 75;
        v86 = 2080;
        v87 = *&v24;
        v25 = "%25s:%-5d Missing scalar %s.\n";
LABEL_31:
        _os_log_impl(&dword_1DDB85000, v19, OS_LOG_TYPE_ERROR, v25, buf, 0x1Cu);
        return v18;
      }

      return v18;
    }

    v22 = *this;
    if (v81 == a6)
    {
      if (v22)
      {
        v23 = *v22;
        if (!*v22)
        {
          goto LABEL_38;
        }
      }

      else
      {
        v23 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315394;
        v83 = "DictionaryBlobReader.cpp";
        v84 = 1024;
        v85 = 86;
        _os_log_impl(&dword_1DDB85000, v23, OS_LOG_TYPE_DEBUG, "%25s:%-5d Loading from matrixDict.\n", buf, 0x12u);
      }

LABEL_38:
      if (DictionaryBlobReader::ReadScalarFromDictionary<unsigned int>(this, v16, a5, a4))
      {
        v18 = 4294900555;
        v27 = *this;
        if (*this)
        {
          v19 = *v27;
          if (!*v27)
          {
            return v18;
          }
        }

        else
        {
          v19 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          *&v31 = COERCE_DOUBLE(CFStringGetCStringPtr(a5, 0x8000100u));
          *buf = 136315650;
          v83 = "DictionaryBlobReader.cpp";
          v84 = 1024;
          v85 = 91;
          v86 = 2080;
          v87 = *&v31;
          v25 = "%25s:%-5d Missing scalar %s.\n";
          goto LABEL_31;
        }

        return v18;
      }

      v78 = 0;
      v79 = 0;
      v80 = 0;
      v75 = 0;
      v76 = 0;
      v77 = 0;
      __p = 0;
      v73 = 0;
      v74 = 0;
      if (DictionaryBlobReader::ReadVectorFromDictionary(this, v16, @"Coefficients", &v78))
      {
        v18 = 4294900555;
        v29 = *this;
        if (*this)
        {
          v30 = *v29;
          if (!*v29)
          {
            goto LABEL_133;
          }
        }

        else
        {
          v30 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v83 = "DictionaryBlobReader.cpp";
          v84 = 1024;
          v85 = 111;
          v40 = "%25s:%-5d Missing vector Coefficients.\n";
LABEL_88:
          _os_log_impl(&dword_1DDB85000, v30, OS_LOG_TYPE_ERROR, v40, buf, 0x12u);
          goto LABEL_133;
        }

        goto LABEL_133;
      }

      v32 = v78;
      v33 = v79;
      if (v79 != v78)
      {
        v34 = 0;
        do
        {
          v35 = *this;
          if (*this)
          {
            if (v35[1])
            {
              v36 = *v35;
              if (*v35)
              {
                if (os_log_type_enabled(*v35, OS_LOG_TYPE_DEBUG))
                {
                  v37 = v32[v34];
                  *buf = 136315906;
                  v83 = "DictionaryBlobReader.cpp";
                  v84 = 1024;
                  v85 = 119;
                  v86 = 2048;
                  v87 = v37;
                  v88 = 1024;
                  v89 = v34;
                  _os_log_impl(&dword_1DDB85000, v36, OS_LOG_TYPE_DEBUG, "%25s:%-5d Successfully retrieved coefficients data (%g) at index (%u).\n", buf, 0x22u);
                  v32 = v78;
                  v33 = v79;
                }
              }
            }
          }

          ++v34;
          v38 = (v33 - v32) >> 2;
          if (v38 >= 4)
          {
            v38 = 4;
          }
        }

        while (v38 > v34);
      }

      if (DictionaryBlobReader::ReadVectorFromDictionary<long long>(this, v16, @"RowIndices", &v75))
      {
        v18 = 4294900555;
        v39 = *this;
        if (*this)
        {
          v30 = *v39;
          if (!*v39)
          {
            goto LABEL_133;
          }
        }

        else
        {
          v30 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v83 = "DictionaryBlobReader.cpp";
          v84 = 1024;
          v85 = 127;
          v40 = "%25s:%-5d Missing vector RowIndices\n";
          goto LABEL_88;
        }

LABEL_133:
        if (__p)
        {
          operator delete(__p);
        }

        if (v75)
        {
          operator delete(v75);
        }

        if (v78)
        {
          v79 = v78;
          operator delete(v78);
        }

        return v18;
      }

      v41 = v75;
      if (v76 != v75)
      {
        v42 = 0;
        if (((v76 - v75) >> 3) >= 4)
        {
          v43 = 4;
        }

        else
        {
          v43 = (v76 - v75) >> 3;
        }

        do
        {
          v44 = *this;
          if (*this)
          {
            if (v44[1])
            {
              v45 = *v44;
              if (*v44)
              {
                if (os_log_type_enabled(*v44, OS_LOG_TYPE_DEBUG))
                {
                  v46 = *&v41[v42];
                  *buf = 136315906;
                  v83 = "DictionaryBlobReader.cpp";
                  v84 = 1024;
                  v85 = 135;
                  v86 = 2048;
                  v87 = v46;
                  v88 = 1024;
                  v89 = v42;
                  _os_log_impl(&dword_1DDB85000, v45, OS_LOG_TYPE_DEBUG, "%25s:%-5d Successfully retrieved row index data (%lld) at index (%u).\n", buf, 0x22u);
                }
              }
            }
          }

          ++v42;
        }

        while (v43 > v42);
      }

      if (DictionaryBlobReader::ReadVectorFromDictionary<long long>(this, v16, @"ColumnIndices", &__p))
      {
        v47 = *this;
        if (*this)
        {
          v48 = *v47;
          if (!*v47)
          {
LABEL_106:
            v18 = 0xFFFFFFFFLL;
            goto LABEL_133;
          }
        }

        else
        {
          v48 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v83 = "DictionaryBlobReader.cpp";
          v84 = 1024;
          v85 = 143;
          _os_log_impl(&dword_1DDB85000, v48, OS_LOG_TYPE_ERROR, "%25s:%-5d Missing vector ColumnIndices.\n", buf, 0x12u);
        }

        goto LABEL_106;
      }

      v49 = __p;
      if (v73 != __p)
      {
        v50 = 0;
        if (((v73 - __p) >> 3) >= 4)
        {
          v51 = 4;
        }

        else
        {
          v51 = (v73 - __p) >> 3;
        }

        do
        {
          v52 = *this;
          if (*this)
          {
            if (v52[1])
            {
              v53 = *v52;
              if (*v52)
              {
                if (os_log_type_enabled(*v52, OS_LOG_TYPE_DEBUG))
                {
                  v54 = *&v49[v50];
                  *buf = 136315906;
                  v83 = "DictionaryBlobReader.cpp";
                  v84 = 1024;
                  v85 = 150;
                  v86 = 2048;
                  v87 = v54;
                  v88 = 1024;
                  v89 = v50;
                  _os_log_impl(&dword_1DDB85000, v53, OS_LOG_TYPE_DEBUG, "%25s:%-5d Successfully retrieved column index data (%lld) at index (%u).\n", buf, 0x22u);
                }
              }
            }
          }

          ++v50;
        }

        while (v51 > v50);
      }

      v55 = sparse_matrix_create_float(*a4, v81);
      *a8 = v55;
      sparse_insert_entries_float(v55, (v79 - v78) >> 2, v78, v41, v49);
      sparse_commit(*a8);
      *buf = 1065353216;
      std::vector<float>::vector[abi:ne200100](x, v81);
      v56 = *a4;
      *buf = 0;
      std::vector<float>::vector[abi:ne200100](y, v56);
      v57 = sparse_matrix_vector_product_dense_float(CblasNoTrans, 1.0, *a8, x[0], 1, y[0], 1);
      v58 = *this;
      if (v57)
      {
        if (v58)
        {
          v59 = *v58;
          if (!*v58)
          {
LABEL_113:
            v18 = 4294956418;
LABEL_129:
            if (y[0])
            {
              y[1] = y[0];
              operator delete(y[0]);
            }

            if (x[0])
            {
              x[1] = x[0];
              operator delete(x[0]);
            }

            goto LABEL_133;
          }
        }

        else
        {
          v59 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
        {
          *&v61 = COERCE_DOUBLE(CFStringGetCStringPtr(key, 0x8000100u));
          *buf = 136315650;
          v83 = "DictionaryBlobReader.cpp";
          v84 = 1024;
          v85 = 167;
          v86 = 2080;
          v87 = *&v61;
          _os_log_impl(&dword_1DDB85000, v59, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed sparse_matrix_vector_product_dense_float for %s.\n", buf, 0x1Cu);
        }

        goto LABEL_113;
      }

      if (v58)
      {
        v60 = *v58;
        if (!*v58)
        {
LABEL_117:
          v63 = *a4;
          if (*a4)
          {
            v64 = 0;
            do
            {
              v65 = *this;
              if (*this)
              {
                if (v65[1])
                {
                  v66 = *v65;
                  if (*v65)
                  {
                    if (os_log_type_enabled(*v65, OS_LOG_TYPE_DEBUG))
                    {
                      v67 = y[0][v64];
                      *buf = 136315906;
                      v83 = "DictionaryBlobReader.cpp";
                      v84 = 1024;
                      v85 = 174;
                      v86 = 2048;
                      v87 = v67;
                      v88 = 1024;
                      v89 = v64;
                      _os_log_impl(&dword_1DDB85000, v66, OS_LOG_TYPE_DEBUG, "%25s:%-5d Successfully computed SparseMatrix * Ones data (%g) at index (%u).\n", buf, 0x22u);
                      v63 = *a4;
                    }
                  }
                }
              }

              ++v64;
              if (v63 >= 4)
              {
                v68 = 4;
              }

              else
              {
                v68 = v63;
              }
            }

            while (v64 < v68);
          }

          v18 = 0;
          goto LABEL_129;
        }
      }

      else
      {
        v60 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
      {
        *&v62 = COERCE_DOUBLE(CFStringGetCStringPtr(key, 0x8000100u));
        *buf = 136315650;
        v83 = "DictionaryBlobReader.cpp";
        v84 = 1024;
        v85 = 163;
        v86 = 2080;
        v87 = *&v62;
        _os_log_impl(&dword_1DDB85000, v60, OS_LOG_TYPE_INFO, "%25s:%-5d Successfully called sparse_matrix_vector_product_dense_float for %s.\n", buf, 0x1Cu);
      }

      goto LABEL_117;
    }

    if (v22)
    {
      v26 = *v22;
      if (!*v22)
      {
        return 4294956418;
      }
    }

    else
    {
      v26 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v83 = "DictionaryBlobReader.cpp";
      v84 = 1024;
      v85 = 81;
      _os_log_impl(&dword_1DDB85000, v26, OS_LOG_TYPE_ERROR, "%25s:%-5d NumDictColumns does not match NumColumns we use.\n", buf, 0x12u);
    }

    return 4294956418;
  }

  v18 = 4294900555;
  if (v15)
  {
    v19 = *v15;
    if (!*v15)
    {
      return v18;
    }
  }

  else
  {
    v19 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v83 = "DictionaryBlobReader.cpp";
    v84 = 1024;
    v85 = 61;
    v86 = 2080;
    v87 = COERCE_DOUBLE(CFStringGetCStringPtr(key, 0x8000100u));
    v25 = "%25s:%-5d Missing dictionary %s.\n";
    goto LABEL_31;
  }

  return v18;
}

void sub_1DE01E398(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a16)
  {
    operator delete(a16);
  }

  if (v26)
  {
    operator delete(v26);
  }

  if (a22)
  {
    operator delete(a22);
  }

  if (a25)
  {
    operator delete(a25);
  }

  _Unwind_Resume(exception_object);
}

uint64_t DictionaryBlobReader::ReadVectorFromDictionary<long long>(NSObject ***a1, CFDictionaryRef theDict, void *key, void *a4)
{
  v44 = *MEMORY[0x1E69E9840];
  Value = CFDictionaryGetValue(theDict, key);
  if (Value)
  {
    v8 = Value;
    v9 = CFGetTypeID(Value);
    if (v9 == CFDataGetTypeID())
    {
      Length = CFDataGetLength(v8);
      v11 = Length >> 3;
      v12 = a4[2];
      v13 = *a4;
      if (v11 > (v12 - *a4) >> 3)
      {
        if (v13)
        {
          a4[1] = v13;
          operator delete(v13);
          v12 = 0;
          *a4 = 0;
          a4[1] = 0;
          a4[2] = 0;
        }

        v14 = v12 >> 2;
        if (v12 >> 2 <= v11)
        {
          v14 = Length >> 3;
        }

        if (v12 >= 0x7FFFFFFFFFFFFFF8)
        {
          v15 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v15 = v14;
        }

        std::vector<long long>::__vallocate[abi:ne200100](a4, v15);
      }

      v20 = a4[1];
      v21 = (v20 - v13) >> 3;
      if (v21 >= v11)
      {
        v22 = Length >> 3;
      }

      else
      {
        v22 = (v20 - v13) >> 3;
      }

      if (v22)
      {
        v23 = 0;
        v24 = vdupq_n_s64(v22 - 1);
        do
        {
          v25 = vmovn_s64(vcgeq_u64(v24, vorrq_s8(vdupq_n_s64(v23), xmmword_1DE095160)));
          if (v25.i8[0])
          {
            v13[v23] = 0;
          }

          if (v25.i8[4])
          {
            v13[v23 + 1] = 0;
          }

          v23 += 2;
        }

        while (((v22 + 1) & 0x3FFFFFFE) != v23);
      }

      v26 = v11 >= v21;
      v27 = v11 - v21;
      if (v27 != 0 && v26)
      {
        v28 = 0;
        v29 = (8 * v11 - (v20 - v13) - 8) >> 3;
        v30 = vdupq_n_s64(v29);
        do
        {
          v31 = vmovn_s64(vcgeq_u64(v30, vorrq_s8(vdupq_n_s64(v28), xmmword_1DE095160)));
          if (v31.i8[0])
          {
            *(v20 + 8 * v28) = 0;
          }

          if (v31.i8[4])
          {
            *(v20 + 8 * v28 + 8) = 0;
          }

          v28 += 2;
        }

        while (((v29 + 2) & 0x3FFFFFFFFFFFFFFELL) != v28);
        v32 = (v20 + 8 * v27);
      }

      else
      {
        v32 = &v13[v11];
      }

      a4[1] = v32;
      BytePtr = CFDataGetBytePtr(v8);
      if (Length >= 8)
      {
        v34 = *a4;
        if (v11 <= 1)
        {
          v35 = 1;
        }

        else
        {
          v35 = v11;
        }

        do
        {
          v36 = *BytePtr;
          BytePtr += 8;
          *v34++ = v36;
          --v35;
        }

        while (v35);
      }

      return 0;
    }

    v16 = 4294900555;
    v19 = *a1;
    if (*a1)
    {
      v18 = *v19;
      if (!*v19)
      {
        return v16;
      }
    }

    else
    {
      v18 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v38 = 136315650;
      v39 = "DictionaryBlobReader.hpp";
      v40 = 1024;
      v41 = 107;
      v42 = 2112;
      v43 = key;
      goto LABEL_43;
    }
  }

  else
  {
    v16 = 4294900555;
    v17 = *a1;
    if (*a1)
    {
      v18 = *v17;
      if (!*v17)
      {
        return v16;
      }
    }

    else
    {
      v18 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v38 = 136315650;
      v39 = "DictionaryBlobReader.hpp";
      v40 = 1024;
      v41 = 101;
      v42 = 2112;
      v43 = key;
LABEL_43:
      _os_log_impl(&dword_1DDB85000, v18, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Failed to retrieve '%@'", &v38, 0x1Cu);
    }
  }

  return v16;
}

uint64_t AUSeparate::SetMaxFramesPerSlice(AUSeparate *this, int a2)
{
  result = ausdk::AUBase::SetMaxFramesPerSlice(this, a2);
  if (*(this + 150) != a2)
  {
    *(this + 150) = a2;
  }

  return result;
}

uint64_t AUSeparate::GetScopeExtended(AUSeparate *this, int a2)
{
  if (a2 == 4)
  {
    return this + 552;
  }

  else
  {
    return 0;
  }
}

uint64_t AUSeparate::ChangeStreamFormat(AUSeparate *this, uint64_t a2, uint64_t a3, const AudioStreamBasicDescription *a4, const AudioStreamBasicDescription *a5)
{
  ausdk::AUBase::ChangeStreamFormat(this, a2, a3, a4, a5);
  if (a4->mSampleRate != a5->mSampleRate)
  {
    *(this + 76) = *&a5->mSampleRate;
  }

  return 0;
}

uint64_t AUSeparate::ValidFormat(AUSeparate *this, int a2, unsigned int a3, const AudioStreamBasicDescription *a4)
{
  if (a4->mBitsPerChannel == 64 && a4->mFormatID == 1718773105)
  {
    result = (a4->mFormatFlags >> 5) & 1;
  }

  else
  {
    result = 0;
  }

  if (a2 == 2 || a2 == 1)
  {
    if (a4->mChannelsPerFrame < 0x11)
    {
      return result;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t AUSeparate::SupportedNumChannels(AUSeparate *this, const AUChannelInfo **a2)
{
  if (a2)
  {
    *a2 = &AUSeparate::SupportedNumChannels(AUChannelInfo const**)::sSupportedChannelConfigs;
  }

  return 16;
}

uint64_t AUSeparate::GetParameterValueStrings(AUSeparate *this, int a2, int a3, const __CFArray **a4)
{
  v8 = *MEMORY[0x1E69E9840];
  if (!a4)
  {
    return 0;
  }

  if (a2)
  {
    return 4294956430;
  }

  if (a3)
  {
    return 0;
  }

  v7 = xmmword_1E8671D60;
  v6 = CFArrayCreate(0, &v7, 2, 0);
  result = 0;
  *a4 = v6;
  return result;
}

uint64_t AUSeparate::RestoreState(OpaqueAudioComponentInstance **this, const void *a2)
{
  result = ausdk::AUBase::RestoreState(this, a2);
  if (!result)
  {
    this[66] = (this[66] + 1);
  }

  return result;
}

uint64_t AUSeparate::SaveExtendedScopes(AUSeparate *this, __CFData *a2)
{
  v3 = (*(*this + 408))(this, 4);
  if (!v3)
  {
    ausdk::ThrowQuiet(0);
  }

  return ausdk::AUScope::SaveState(v3, a2);
}

uint64_t AUSeparate::GetParameterInfo(AUSeparate *this, int a2, int a3, AudioUnitParameterInfo *buffer)
{
  buffer->flags = 0;
  buffer->unitName = 0;
  if (a2 == 4)
  {
    return 0;
  }

  if (a2)
  {
    return 4294956430;
  }

  switch(a3)
  {
    case 0:
      buffer->cfNameString = @"IVA mode";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"IVA mode", buffer->name, 52, 0x8000100u);
      result = 0;
      v6 = kAudioUnitParameterUnit_Indexed;
      goto LABEL_22;
    case 1:
      buffer->cfNameString = @"Smoothing time constant for mic PSD";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"Smoothing time constant for mic PSD", buffer->name, 52, 0x8000100u);
      result = 0;
      buffer->unit = kAudioUnitParameterUnit_Seconds;
      *&buffer->minValue = 0x4080000000000000;
      v8 = 2.0;
      goto LABEL_25;
    case 2:
      buffer->cfNameString = @"Parameter for source prior model";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"Parameter for source prior model", buffer->name, 52, 0x8000100u);
      result = 0;
      buffer->unit = kAudioUnitParameterUnit_Generic;
      *&buffer->minValue = 0x3F8000003F000000;
      v8 = 0.9;
      goto LABEL_25;
    case 3:
      buffer->cfNameString = @"Speech RMS floor";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"Speech RMS floor", buffer->name, 52, 0x8000100u);
      result = 0;
      buffer->unit = kAudioUnitParameterUnit_Decibels;
      v9 = 3267887104;
      goto LABEL_17;
    case 4:
      buffer->cfNameString = @"Signal pre-emphasis factor";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"Signal pre-emphasis factor", buffer->name, 52, 0x8000100u);
      result = 0;
      buffer->unit = kAudioUnitParameterUnit_Decibels;
      *&buffer->minValue = 0x42C80000C3960000;
      v8 = 9.5424;
      goto LABEL_25;
    case 5:
      buffer->cfNameString = @"Initial condition factor for covariance matrices";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"Initial condition factor for covariance matrices", buffer->name, 52, 0x8000100u);
      result = 0;
      buffer->unit = kAudioUnitParameterUnit_Decibels;
      *&buffer->minValue = 0x41A00000C2C80000;
      v8 = -20.0;
      goto LABEL_25;
    case 6:
      buffer->cfNameString = @"Use uniform diagonal elements to initilize covariance matrices";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"Use uniform diagonal elements to initilize covariance matrices", buffer->name, 52, 0x8000100u);
      result = 0;
      v6 = kAudioUnitParameterUnit_Boolean;
LABEL_22:
      buffer->unit = v6;
      *&buffer->minValue = 0x3F80000000000000;
      v10 = buffer->flags | 0xC0000000;
      buffer->defaultValue = 0.0;
      buffer->flags = v10;
      return result;
    case 7:
      buffer->cfNameString = @"Covariance diagonal loading factor for direct inverse approach";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"Covariance diagonal loading factor for direct inverse approach", buffer->name, 52, 0x8000100u);
      result = 0;
      buffer->unit = kAudioUnitParameterUnit_Decibels;
      v9 = 0x41200000C2C80000;
LABEL_17:
      *&buffer->minValue = v9;
      v8 = -30.0;
      goto LABEL_25;
    case 8:
      buffer->cfNameString = @"Minimum frequency to calculate speech RMS";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"Minimum frequency to calculate speech RMS", buffer->name, 52, 0x8000100u);
      result = 0;
      buffer->unit = kAudioUnitParameterUnit_Hertz;
      *&buffer->minValue = 0x43FA000042480000;
      v8 = 60.0;
      goto LABEL_25;
    case 9:
      buffer->cfNameString = @"Maximum frequency to calculate speech RMS";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"Maximum frequency to calculate speech RMS", buffer->name, 52, 0x8000100u);
      result = 0;
      buffer->unit = kAudioUnitParameterUnit_Hertz;
      *&buffer->minValue = 0x45FA0000455AC000;
      v8 = 7000.0;
      goto LABEL_25;
    case 10:
      buffer->cfNameString = @"Initial wait time before starting unmixing matrix update";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"Initial wait time before starting unmixing matrix update", buffer->name, 52, 0x8000100u);
      result = 0;
      buffer->unit = kAudioUnitParameterUnit_Seconds;
      *&buffer->minValue = 0x4000000000000000;
      v8 = 0.1;
      goto LABEL_25;
    case 11:
      buffer->cfNameString = @"Maximum output signal gain";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"Maximum output signal gain", buffer->name, 52, 0x8000100u);
      result = 0;
      buffer->unit = kAudioUnitParameterUnit_Decibels;
      *&buffer->minValue = 0x4120000000000000;
      v8 = 6.0;
      goto LABEL_25;
    case 12:
      buffer->cfNameString = @"Gain floor of separation filter";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"Gain floor of separation filter", buffer->name, 52, 0x8000100u);
      result = 0;
      buffer->unit = kAudioUnitParameterUnit_Decibels;
      v7 = 3281387520;
      goto LABEL_11;
    case 13:
      buffer->cfNameString = @"Regularization factor of lower triangular matrix in Cholesky factorization";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"Regularization factor of lower triangular matrix in Cholesky factorization", buffer->name, 52, 0x8000100u);
      result = 0;
      buffer->unit = kAudioUnitParameterUnit_Decibels;
      *&buffer->minValue = 3281387520;
      v8 = -90.0;
      goto LABEL_25;
    case 14:
      buffer->cfNameString = @"Regularization factor in HRLS-based covariance inverse";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"Regularization factor in HRLS-based covariance inverse", buffer->name, 52, 0x8000100u);
      result = 0;
      buffer->unit = kAudioUnitParameterUnit_Decibels;
      v7 = 3273654272;
LABEL_11:
      *&buffer->minValue = v7;
      v8 = -100.0;
LABEL_25:
      v11 = buffer->flags | 0xC0000000;
      buffer->defaultValue = v8;
      buffer->flags = v11;
      break;
    default:
      result = 4294956418;
      break;
  }

  return result;
}

uint64_t AUSeparate::GetParameterList(AUSeparate *this, int a2, unsigned int *a3, unsigned int *a4)
{
  if (a2 == 4)
  {
    return 0;
  }

  if (a2)
  {
    return 4294956430;
  }

  if (a3)
  {
    *a3 = xmmword_1DE096230;
    *(a3 + 1) = xmmword_1DE09BC60;
    *(a3 + 2) = xmmword_1DE09C1E0;
    *(a3 + 6) = 0xD0000000CLL;
    a3[14] = 14;
  }

  result = 0;
  *a4 = 15;
  return result;
}

ausdk::AUInputElement *AUSeparate::Render(AUSeparate *this, unsigned int *a2, const AudioTimeStamp *a3, uint64_t a4)
{
  v15[1] = *MEMORY[0x1E69E9840];
  Element = ausdk::AUScope::GetElement((this + 80), 0);
  if (Element && *(Element + 172))
  {
    result = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 80, 0);
    if (v10)
    {
      result = ausdk::AUInputElement::PullInput(result, a2, a3, 0, a4);
    }

    if (result)
    {
      return result;
    }

    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = ausdk::AUScope::GetElement((this + 128), 0);
  if (!v12)
  {
    goto LABEL_15;
  }

  v15[0] = ausdk::AUIOElement::PrepareBuffer(v12, a4);
  if (v11)
  {
    return 0;
  }

  v13 = ausdk::AUScope::GetElement((this + 80), 0);
  if (!v13)
  {
LABEL_15:
    ausdk::Throw(0xFFFFD583);
  }

  if (!*(v13 + 144))
  {
    ausdk::Throw(0xFFFFFFFFLL);
  }

  v14 = *(v13 + 152) + 48;
  return (*(*this + 184))(this, a2, a4, 1, &v14, 1, v15);
}

uint64_t AUSeparate::ProcessMultipleBufferLists(AUSeparate *this, unsigned int *a2, AudioDSP::Utility *a3, unsigned int a4, const AudioBufferList **a5, unsigned int a6, AudioBufferList **a7)
{
  v9 = a3;
  v68 = *MEMORY[0x1E69E9840];
  v11 = *(this + 66);
  if (*(this + 67) != v11)
  {
    AUSeparate::UpdateState(this);
    *(this + 67) = v11;
    if (AUSeparateLogScope(void)::once != -1)
    {
      dispatch_once(&AUSeparateLogScope(void)::once, &__block_literal_global_32166);
    }

    if (AUSeparateLogScope(void)::scope)
    {
      v12 = *AUSeparateLogScope(void)::scope;
      if (!*AUSeparateLogScope(void)::scope)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v12 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      buf.mNumberBuffers = 136315394;
      *(&buf.mNumberBuffers + 1) = "AUSeparate.cpp";
      LOWORD(buf.mBuffers[0].mDataByteSize) = 1024;
      *(&buf.mBuffers[0].mDataByteSize + 2) = 856;
      _os_log_impl(&dword_1DDB85000, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d parameters changed after Initialize, which will allocate memory on the realtime audio thread - only SetParameter before Initialize\n", &buf, 0x12u);
    }
  }

LABEL_10:
  if (*(this + 150) != v9)
  {
    return 4294956422;
  }

  v13 = *a5;
  if (!*a5)
  {
    if (AUSeparateLogScope(void)::once != -1)
    {
      dispatch_once(&AUSeparateLogScope(void)::once, &__block_literal_global_32166);
    }

    if (AUSeparateLogScope(void)::scope)
    {
      v19 = *AUSeparateLogScope(void)::scope;
      if (!*AUSeparateLogScope(void)::scope)
      {
        return 4294956420;
      }
    }

    else
    {
      v19 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      buf.mNumberBuffers = 136315394;
      *(&buf.mNumberBuffers + 1) = "AUSeparate.cpp";
      LOWORD(buf.mBuffers[0].mDataByteSize) = 1024;
      *(&buf.mBuffers[0].mDataByteSize + 2) = 868;
      _os_log_impl(&dword_1DDB85000, v19, OS_LOG_TYPE_ERROR, "%25s:%-5d InputSignals cannot be NULL. It is a required input\n", &buf, 0x12u);
    }

    return 4294956420;
  }

  v14 = *v13;
  if (*v13 != *(this + 154) || *a7 && (*a7)->mNumberBuffers != v14)
  {
    return 4294956428;
  }

  *v63 = 0;
  v15 = (2 * v9);
  *&buf.mNumberBuffers = *(this + 76);
  buf.mBuffers[0] = xmmword_1DE09BD50;
  v65 = 4;
  v66 = v14;
  v67 = 32;
  AudioDSP::Utility::DetectNonFinites(v15, v13, &buf, &v63[1], a5);
  if ((*(this + 544) & 1) == 0 && (v63[1] != 1 || *(this + 620) != 1))
  {
    v20 = *(this + 156);
    if (v20)
    {
      if (v20 != 1)
      {
        goto LABEL_77;
      }

      v21 = 696;
    }

    else
    {
      v21 = 688;
    }

    v22 = *(this + v21);
    v23 = *a7;
    if (*(v22 + 44))
    {
      v24 = 0;
      v25 = *a5;
      p_mData = &(*a5)->mBuffers[0].mData;
      v27 = 0.0;
      do
      {
        v27 = cblas_sdsdot(2 * *(v22 + 48) - 2, v27, *p_mData, 1, *p_mData, 1);
        ++v24;
        v28 = *(v22 + 44);
        p_mData += 2;
      }

      while (v24 < v28);
      if (v27 <= *(v22 + 120) || (LODWORD(v27) & 0x7FFFFFFFu) > 0x7F7FFFFF)
      {
        if (v28)
        {
          v35 = 0;
          v36 = (v25 + 4);
          v37 = (v23 + 16);
          do
          {
            v39 = *v37;
            v37 += 2;
            v38 = v39;
            v40 = *v36;
            v36 += 2;
            memcpy(v38, v40, 4 * (2 * *(v22 + 48) - 2));
            ++v35;
          }

          while (v35 < *(v22 + 44));
        }

LABEL_77:
        AudioDSP::Utility::DetectNonFinites(v15, *a7, &buf, v63, v16);
        if (v63[0] != 1 || *(this + 620) != 1)
        {
          return 0;
        }

        if (AUSeparateLogScope(void)::once != -1)
        {
          dispatch_once(&AUSeparateLogScope(void)::once, &__block_literal_global_32166);
        }

        if (AUSeparateLogScope(void)::scope)
        {
          v62 = *AUSeparateLogScope(void)::scope;
          if (!*AUSeparateLogScope(void)::scope)
          {
LABEL_87:
            (*(*this + 64))(this);
            CopyBufferList(*a5, *a7);
            return 0;
          }
        }

        else
        {
          v62 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
        {
          *&v63[18] = 136315650;
          *&v63[22] = "AUSeparate.cpp";
          *&v63[30] = 1024;
          *&v63[32] = 930;
          *&v63[36] = 1024;
          *&v63[38] = v63[0];
          _os_log_impl(&dword_1DDB85000, v62, OS_LOG_TYPE_ERROR, "%25s:%-5d AUSeparate: (OutputSignals) is NOT finite: (%u)\n", &v63[18], 0x18u);
        }

        goto LABEL_87;
      }

      if (v28)
      {
        v29 = 0;
        v30 = 0;
        v31 = v25 + 4;
        do
        {
          memcpy(*(*(v22 + 416) + v29 * 4), *&v31[v29], 4 * *(v22 + 48));
          memcpy((*(*(v22 + 416) + v29 * 4 + 8) + 4), (*&v31[v29] + 4 * *(v22 + 48)), 4 * (*(v22 + 48) - 2));
          ++v30;
          v28 = *(v22 + 44);
          v29 += 4;
        }

        while (v30 < v28);
      }

      if (v28)
      {
        v32 = 0;
        v33 = 0;
        do
        {
          vDSP_zrvmul((*(v22 + 416) + v32), 1, *(v22 + 816), 1, (*(v22 + 440) + v32), 1, *(v22 + 48));
          ++v33;
          v32 += 16;
        }

        while (v33 < *(v22 + 44));
      }
    }

    else if (*(v22 + 120) >= 0.0)
    {
      goto LABEL_77;
    }

    v34 = *(v22 + 60);
    if (v34 >= *(v22 + 56))
    {
      *(v22 + 64) = 1;
    }

    else
    {
      *(v22 + 60) = v34 + 1;
    }

    SeparationBase::GenerateOutput(v22, (v22 + 440), (v22 + 368));
    if (*(v22 + 44))
    {
      v41 = 0;
      v42 = 0;
      v43 = *(v22 + 84);
      v44 = (*(v22 + 88) - v43);
      do
      {
        *&v63[18] = 0;
        *&v63[2] = 0;
        vDSP_svesq((*(*(v22 + 368) + v41) + 4 * v43), 1, &v63[18], v44);
        vDSP_svesq((*(*(v22 + 368) + v41 + 8) + 4 * v43), 1, &v63[2], v44);
        v45 = *(v22 + 24);
        *(*(v22 + 840) + 4 * v42++) = v45 + powf((*&v63[18] + *&v63[2]) + *(v22 + 120), *(v22 + 20));
        v41 += 16;
      }

      while (v42 < *(v22 + 44));
    }

    (*(*v22 + 8))(v22);
    if (*(v22 + 64))
    {
      (**v22)(v22);
    }

    SeparationBase::GenerateOutput(v22, (v22 + 416), (v22 + 392));
    v46 = *(v22 + 296);
    *&v63[18] = *(v22 + 272);
    *&v63[26] = v46;
    v47 = *(v22 + 48);
    v48 = *(v22 + 248);
    *&v63[2] = *(v22 + 224);
    *&v63[10] = v48;
    vDSP_zvmags(&v63[2], 1, *(v22 + 488), 1, (v47 * *(v22 + 44)));
    vDSP_zvmags(&v63[18], 1, *(v22 + 464), 1, (*(v22 + 48) * *(v22 + 44)));
    MEMORY[0x1E12BE940](*(v22 + 464), 1, v22 + 68, *(v22 + 464), 1, (*(v22 + 48) * *(v22 + 44)));
    v49 = *(v22 + 44);
    if (v49)
    {
      v50 = 0;
      v51 = 0;
      v52 = *(v22 + 48);
      do
      {
        if (v52)
        {
          v53 = 0;
          v54 = *(v22 + 488);
          v55 = *(v22 + 464);
          v56 = v50;
          do
          {
            if (*(v54 + 4 * v56) > *(v55 + 4 * v56))
            {
              v57 = (*(v22 + 416) + 16 * v51);
              v58 = (*(v22 + 392) + 16 * v51);
              *(*v58 + v53) = *(*v57 + v53);
              *(v58[1] + v53) = *(v57[1] + v53);
            }

            v53 += 4;
            ++v56;
          }

          while (4 * v52 != v53);
        }

        ++v51;
        v50 += v52;
      }

      while (v51 != v49);
      v59 = 0;
      v60 = 0;
      v61 = v23 + 16;
      do
      {
        memcpy(*(v61 + v59), *(*(v22 + 392) + v59), 4 * *(v22 + 48));
        memcpy((*(v61 + v59) + 4 * *(v22 + 48)), (*(*(v22 + 392) + v59 + 8) + 4), 4 * (*(v22 + 48) - 2));
        ++v60;
        v59 += 16;
      }

      while (v60 < *(v22 + 44));
    }

    goto LABEL_77;
  }

  CopyBufferList(*a5, *a7);
  if (v63[1] == 1)
  {
    if (AUSeparateLogScope(void)::once != -1)
    {
      dispatch_once(&AUSeparateLogScope(void)::once, &__block_literal_global_32166);
    }

    if (AUSeparateLogScope(void)::scope)
    {
      v17 = *AUSeparateLogScope(void)::scope;
      if (!*AUSeparateLogScope(void)::scope)
      {
        return 0;
      }
    }

    else
    {
      v17 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *&v63[18] = 136315650;
      *&v63[22] = "AUSeparate.cpp";
      *&v63[30] = 1024;
      *&v63[32] = 901;
      *&v63[36] = 1024;
      *&v63[38] = v63[1];
      _os_log_impl(&dword_1DDB85000, v17, OS_LOG_TYPE_ERROR, "%25s:%-5d AUSeparate: (InputSignals) is NOT finite: (%u)\n", &v63[18], 0x18u);
    }
  }

  return 0;
}

void AUSeparate::UpdateState(AUSeparate *this)
{
  v2 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v3 & 1) == 0 || (*(this + 156) = ausdk::AUElement::GetParameter(v2, 0), v4 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v5 & 1) == 0) || (*(this + 157) = ausdk::AUElement::GetParameter(v4, 1u), v6 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v7 & 1) == 0) || (*(this + 158) = ausdk::AUElement::GetParameter(v6, 2u), v8 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v9 & 1) == 0) || (*(this + 159) = ausdk::AUElement::GetParameter(v8, 3u), v10 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v11 & 1) == 0) || (*(this + 160) = ausdk::AUElement::GetParameter(v10, 4u), v12 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v13 & 1) == 0) || (*(this + 161) = ausdk::AUElement::GetParameter(v12, 5u), v14 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v15 & 1) == 0) || (*(this + 648) = ausdk::AUElement::GetParameter(v14, 6u) != 0.0, v16 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v17 & 1) == 0) || (*(this + 163) = ausdk::AUElement::GetParameter(v16, 7u), v18 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v19 & 1) == 0) || (*(this + 165) = ausdk::AUElement::GetParameter(v18, 8u), v20 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v21 & 1) == 0) || (*(this + 166) = ausdk::AUElement::GetParameter(v20, 9u), v22 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v23 & 1) == 0) || (*(this + 167) = ausdk::AUElement::GetParameter(v22, 0xAu), v24 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v25 & 1) == 0) || (*(this + 168) = ausdk::AUElement::GetParameter(v24, 0xBu), v26 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v27 & 1) == 0) || (*(this + 169) = ausdk::AUElement::GetParameter(v26, 0xCu), v28 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v29 & 1) == 0) || (*(this + 170) = ausdk::AUElement::GetParameter(v28, 0xDu), v30 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v31 & 1) == 0) || (*(this + 171) = ausdk::AUElement::GetParameter(v30, 0xEu), v32 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v33 & 1) == 0))
  {
    abort();
  }

  Parameter = ausdk::AUElement::GetParameter(v32, 1u);
  v35 = 0.0;
  if (Parameter != 0.0)
  {
    v36 = *(this + 76);
    v35 = expf((-*(this + 150) / v36) / Parameter);
  }

  *(this + 164) = v35;

  AUSeparate::InitializeIVAClasses(this);
}

void AUSeparate::InitializeIVAClasses(AUSeparate *this)
{
  v16 = *MEMORY[0x1E69E9840];
  if (AUSeparateLogScope(void)::once != -1)
  {
    dispatch_once(&AUSeparateLogScope(void)::once, &__block_literal_global_32166);
  }

  if (AUSeparateLogScope(void)::scope)
  {
    v2 = *AUSeparateLogScope(void)::scope;
    if (!*AUSeparateLogScope(void)::scope)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v2 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v13 = "AUSeparate.cpp";
    v14 = 1024;
    v15 = 987;
    _os_log_impl(&dword_1DDB85000, v2, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AUSeparate: Initialize IVA Classes.\n", buf, 0x12u);
  }

LABEL_9:
  v3 = *(this + 159);
  if (v3 != 0.0)
  {
    __exp10f(v3 / 10.0);
  }

  v4 = *(this + 160);
  if (v4 != 0.0)
  {
    __exp10f(v4 / 20.0);
  }

  v5 = *(this + 161);
  if (v5 != 0.0)
  {
    __exp10f(v5 / 20.0);
  }

  v6 = *(this + 163);
  if (v6 != 0.0)
  {
    __exp10f(v6 / 10.0);
  }

  v7 = *(this + 168);
  if (v7 != 0.0)
  {
    __exp10f(v7 / 10.0);
  }

  v8 = *(this + 169);
  if (v8 != 0.0)
  {
    __exp10f(v8 / 20.0);
  }

  v9 = *(this + 170);
  if (v9 != 0.0)
  {
    __exp10f(v9 / 10.0);
  }

  v10 = *(this + 171);
  if (v10 != 0.0)
  {
    __exp10f(v10 / 10.0);
  }

  if (*(this + 86))
  {
    std::unique_ptr<IVA_HRLS_Rank1>::reset[abi:ne200100](this + 86, 0);
  }

  if (*(this + 87))
  {
    std::unique_ptr<IVA_DirectiV_Rank1A>::reset[abi:ne200100](this + 87, 0);
  }

  v11 = *(this + 156);
  if (v11 == 1)
  {
    operator new();
  }

  if (!v11)
  {
    operator new();
  }
}

void sub_1DE020138(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  v22 = *v15;
  if (*v15)
  {
    *(v12 + 169) = v22;
    operator delete(v22);
  }

  v23 = *v13;
  if (*v13)
  {
    *(v12 + 166) = v23;
    operator delete(v23);
  }

  v24 = *v20;
  if (*v20)
  {
    *(v12 + 163) = v24;
    operator delete(v24);
  }

  v25 = *v19;
  if (*v19)
  {
    *(v12 + 160) = v25;
    operator delete(v25);
  }

  v26 = *v18;
  if (*v18)
  {
    *(v12 + 157) = v26;
    operator delete(v26);
  }

  v27 = *v17;
  if (*v17)
  {
    *(v12 + 154) = v27;
    operator delete(v27);
  }

  v28 = *v16;
  if (*v16)
  {
    *(v12 + 151) = v28;
    operator delete(v28);
  }

  v29 = *v14;
  if (*v14)
  {
    *(v12 + 148) = v29;
    operator delete(v29);
  }

  v30 = *a12;
  if (*a12)
  {
    *(v12 + 145) = v30;
    operator delete(v30);
  }

  SeparationBase::~SeparationBase(v12);
  MEMORY[0x1E12BD160](v12, 0x10A1C408614EAFDLL);
  _Unwind_Resume(a1);
}

SeparationBase *std::unique_ptr<IVA_HRLS_Rank1>::reset[abi:ne200100](SeparationBase **a1, SeparationBase *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    SeparationBase::~SeparationBase(result);

    JUMPOUT(0x1E12BD160);
  }

  return result;
}

SeparationBase **std::unique_ptr<IVA_DirectiV_Rank1A>::reset[abi:ne200100](SeparationBase **result, SeparationBase *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    *v2 = &unk_1F5937B70;
    v3 = *(v2 + 171);
    if (v3)
    {
      *(v2 + 172) = v3;
      operator delete(v3);
    }

    v4 = *(v2 + 168);
    if (v4)
    {
      *(v2 + 169) = v4;
      operator delete(v4);
    }

    v5 = *(v2 + 165);
    if (v5)
    {
      *(v2 + 166) = v5;
      operator delete(v5);
    }

    v6 = *(v2 + 162);
    if (v6)
    {
      *(v2 + 163) = v6;
      operator delete(v6);
    }

    v7 = *(v2 + 159);
    if (v7)
    {
      *(v2 + 160) = v7;
      operator delete(v7);
    }

    v8 = *(v2 + 156);
    if (v8)
    {
      *(v2 + 157) = v8;
      operator delete(v8);
    }

    v9 = *(v2 + 153);
    if (v9)
    {
      *(v2 + 154) = v9;
      operator delete(v9);
    }

    v10 = *(v2 + 150);
    if (v10)
    {
      *(v2 + 151) = v10;
      operator delete(v10);
    }

    v11 = *(v2 + 147);
    if (v11)
    {
      *(v2 + 148) = v11;
      operator delete(v11);
    }

    v12 = *(v2 + 144);
    if (v12)
    {
      *(v2 + 145) = v12;
      operator delete(v12);
    }

    SeparationBase::~SeparationBase(v2);

    JUMPOUT(0x1E12BD160);
  }

  return result;
}

uint64_t AUSeparate::SetParameter(AUSeparate *this, unsigned int a2, int a3, float a4)
{
  if (a3 == 4)
  {
    return 0;
  }

  if (a3)
  {
    return 4294956418;
  }

  v7 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v8 & 1) == 0)
  {
    abort();
  }

  ausdk::AUElement::SetParameter(v7, a2, a4);
  result = 0;
  ++*(this + 66);
  return result;
}

uint64_t AUSeparate::SetProperty(AUSeparate *this, int a2, int a3, unsigned int a4, _BYTE *a5, unsigned int a6)
{
  if (a3)
  {
    return 4294956417;
  }

  if (a2 == 3700)
  {
    result = 4294956445;
    if (a6 >= 4)
    {
      if (*a5)
      {
        return 0;
      }

      else
      {
        return 4294956445;
      }
    }
  }

  else
  {
    if (a2 != 21)
    {
      return 4294956417;
    }

    if (a6 == 4)
    {
      result = 0;
      *(this + 544) = *a5 != 0;
    }

    else
    {
      return 4294956445;
    }
  }

  return result;
}

uint64_t AUSeparate::GetProperty(AUSeparate *this, int a2, int a3, unsigned int a4, _DWORD *a5)
{
  if (a3)
  {
    return 4294956417;
  }

  if (a2 == 21)
  {
    v6 = 544;
    goto LABEL_7;
  }

  if (a2 == 3700)
  {
    v6 = 376;
LABEL_7:
    v5 = 0;
    *a5 = *(this + v6);
    return v5;
  }

  return 4294956417;
}

uint64_t AUSeparate::GetPropertyInfo(AUSeparate *this, int a2, int a3, unsigned int a4, unsigned int *a5, BOOL *a6)
{
  if (a3 || a2 != 3700 && a2 != 21)
  {
    return 4294956417;
  }

  result = 0;
  *a6 = 1;
  *a5 = 4;
  return result;
}

uint64_t AUSeparate::Reset(AUSeparate *this)
{
  v1 = *(this + 156);
  if (!v1)
  {
    v2 = 688;
    goto LABEL_5;
  }

  if (v1 == 1)
  {
    v2 = 696;
LABEL_5:
    v3 = *(this + v2);
    SeparationBase::ResetWA(v3);
    SeparationBase::ResetiV(v3);
  }

  return 0;
}

float AUSeparate::Cleanup(AUSeparate *this)
{
  v14 = *MEMORY[0x1E69E9840];
  if (AUSeparateLogScope(void)::once != -1)
  {
    dispatch_once(&AUSeparateLogScope(void)::once, &__block_literal_global_32166);
  }

  if (AUSeparateLogScope(void)::scope)
  {
    v2 = *AUSeparateLogScope(void)::scope;
    if (!*AUSeparateLogScope(void)::scope)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v2 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315394;
    v11 = "AUSeparate.cpp";
    v12 = 1024;
    v13 = 143;
    _os_log_impl(&dword_1DDB85000, v2, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AUSeparate: Cleanup.\n", &v10, 0x12u);
  }

LABEL_9:
  v3 = *(this + 86);
  if (v3)
  {
    SeparationBase::Cleanup(v3);
  }

  v4 = *(this + 87);
  if (v4)
  {
    SeparationBase::Cleanup(v4);
    bzero(*(v4 + 1152), *(v4 + 1160) - *(v4 + 1152));
    bzero(*(v4 + 1176), *(v4 + 1184) - *(v4 + 1176));
    bzero(*(v4 + 1200), *(v4 + 1208) - *(v4 + 1200));
    bzero(*(v4 + 1224), *(v4 + 1232) - *(v4 + 1224));
    bzero(*(v4 + 1248), *(v4 + 1256) - *(v4 + 1248));
    bzero(*(v4 + 1272), *(v4 + 1280) - *(v4 + 1272));
    bzero(*(v4 + 1296), *(v4 + 1304) - *(v4 + 1296));
    v5 = *(v4 + 48);
    if (v5)
    {
      v6 = 0;
      v7 = *(v4 + 1152);
      result = 0.000000041723;
      do
      {
        v8 = fmax(*(v4 + 36) / (v6 * 0.15 + 1.0), *(v4 + 120));
        *(v7 + 4 * v6++) = v8;
      }

      while (v5 != v6);
    }
  }

  return result;
}

uint64_t AUSeparate::Initialize(AUSeparate *this)
{
  v14 = *MEMORY[0x1E69E9840];
  if (AUSeparateLogScope(void)::once != -1)
  {
    dispatch_once(&AUSeparateLogScope(void)::once, &__block_literal_global_32166);
  }

  if (!AUSeparateLogScope(void)::scope)
  {
    v2 = MEMORY[0x1E69E9C10];
LABEL_7:
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315394;
      v11 = "AUSeparate.cpp";
      v12 = 1024;
      v13 = 102;
      _os_log_impl(&dword_1DDB85000, v2, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AUSeparate: Initialize.\n", &v10, 0x12u);
    }

    goto LABEL_9;
  }

  v2 = *AUSeparateLogScope(void)::scope;
  if (*AUSeparateLogScope(void)::scope)
  {
    goto LABEL_7;
  }

LABEL_9:
  Element = ausdk::AUScope::GetElement((this + 80), 0);
  if (!Element)
  {
    goto LABEL_26;
  }

  v4 = *(Element + 80);
  *(this + 154) = *(Element + 108);
  *(this + 76) = v4;
  v5 = ausdk::AUScope::GetElement((this + 80), 0);
  if (!v5)
  {
    goto LABEL_26;
  }

  if (*(v5 + 108) != *(this + 154))
  {
    return 4294956421;
  }

  v6 = ausdk::AUScope::GetElement((this + 128), 0);
  if (!v6)
  {
LABEL_26:
    ausdk::Throw(0xFFFFD583);
  }

  if (*(v6 + 108) != *(this + 154))
  {
    return 4294956421;
  }

  v7 = (*(*this + 408))(this, 4);
  if (!v7)
  {
    ausdk::ThrowQuiet(0);
  }

  ausdk::AUScope::SetNumberOfElements(v7, 0x10u);
  *(this + 150) = *(this + 84);
  AUSeparate::UpdateState(this);
  *(this + 67) = *(this + 66);
  (*(*this + 72))(this, 0, 0);
  if (AUSeparateLogScope(void)::once != -1)
  {
    dispatch_once(&AUSeparateLogScope(void)::once, &__block_literal_global_32166);
  }

  if (AUSeparateLogScope(void)::scope)
  {
    v8 = *AUSeparateLogScope(void)::scope;
    if (!*AUSeparateLogScope(void)::scope)
    {
      return 0;
    }
  }

  else
  {
    v8 = MEMORY[0x1E69E9C10];
  }

  result = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    v10 = 136315394;
    v11 = "AUSeparate.cpp";
    v12 = 1024;
    v13 = 132;
    _os_log_impl(&dword_1DDB85000, v8, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AUSeparate: Successfully initialized.\n", &v10, 0x12u);
    return 0;
  }

  return result;
}

void AUSeparate::CreateExtendedElements(AUSeparate *this)
{
  ausdk::AUScope::Initialize((this + 552), this, 4, 16);
  for (i = 0; i != 16; ++i)
  {
    std::to_string(&v8, i);
    v3 = std::string::insert(&v8, 0, "Mic", 3uLL);
    v4 = *&v3->__r_.__value_.__l.__data_;
    v10 = v3->__r_.__value_.__r.__words[2];
    *__p = v4;
    v3->__r_.__value_.__l.__size_ = 0;
    v3->__r_.__value_.__r.__words[2] = 0;
    v3->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v8.__r_.__value_.__l.__data_);
    }

    if (v10 >= 0)
    {
      v5 = __p;
    }

    else
    {
      v5 = __p[0];
    }

    v6 = CFStringCreateWithCString(0, v5, 0x8000100u);
    Element = ausdk::AUScope::GetElement((this + 552), i);
    ausdk::Owned<__CFString const*>::operator=((Element + 72), v6);
    CFRelease(v6);
    if (SHIBYTE(v10) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_1DE020AE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AUSeparate::~AUSeparate(SeparationBase **this)
{
  AUSeparate::~AUSeparate(this);

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F5937900;
  std::unique_ptr<IVA_HRLS_Rank1>::reset[abi:ne200100](this + 86, 0);
  std::unique_ptr<IVA_DirectiV_Rank1A>::reset[abi:ne200100](this + 87, 0);
  std::unique_ptr<IVA_DirectiV_Rank1A>::reset[abi:ne200100](this + 87, 0);
  std::unique_ptr<IVA_HRLS_Rank1>::reset[abi:ne200100](this + 86, 0);
  v2 = (this + 71);
  std::vector<std::unique_ptr<ausdk::AUElement>>::__destroy_vector::operator()[abi:ne200100](&v2);

  ausdk::AUBase::~AUBase(this);
}

uint64_t _ZN11LeanSpatial17LSFilterProcessorIDF16_EC2ERNS_16LSBankAttributesIDF16_EEfNS_9DelayModeE(uint64_t a1, __int128 *a2, int a3, float a4)
{
  v26 = *MEMORY[0x1E69E9840];
  v8 = MEMORY[0x1E12BCCB0]();
  *(v8 + 64) = 27100;
  *(v8 + 68) = 0;
  *(v8 + 73) = 0;
  *(v8 + 81) = 1;
  *(v8 + 88) = 0u;
  *(v8 + 144) = 0;
  *(v8 + 152) = 0;
  *(v8 + 160) = 0;
  *(v8 + 104) = 0u;
  *(v8 + 120) = 0u;
  *(v8 + 136) = 0;
  v9 = *a2;
  v10 = *(a2 + 4);
  *(v8 + 192) = 0;
  v8 += 192;
  *(v8 - 8) = v10;
  *(v8 - 24) = v9;
  *(v8 + 8) = 0;
  *(v8 + 16) = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(v8, *(a2 + 3), *(a2 + 4), (*(a2 + 4) - *(a2 + 3)) >> 2);
  v11 = a2[3];
  v12 = a2[4];
  *(a1 + 248) = a2[5];
  *(a1 + 232) = v12;
  *(a1 + 216) = v11;
  v13 = a2[6];
  v14 = a2[7];
  v15 = a2[8];
  *(a1 + 312) = *(a2 + 18);
  *(a1 + 280) = v14;
  *(a1 + 296) = v15;
  *(a1 + 264) = v13;
  *(a1 + 320) = *a2;
  *(a1 + 328) = 0;
  *(a1 + 336) = 0u;
  *(a1 + 352) = *(a2 + 1);
  *(a1 + 360) = *(a2 + 4);
  *(a1 + 372) = 2;
  *(a1 + 376) = *(a2 + 23);
  *(a1 + 380) = 1;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 472) = 0;
  *(a1 + 480) = 0u;
  *(a1 + 504) = 0;
  *(a1 + 512) = a3;
  *(a1 + 516) = COERCE_UNSIGNED_INT(1.0);
  *(a1 + 520) = 0;
  *(a1 + 528) = 0;
  *(a1 + 536) = 0;
  *(a1 + 544) = a4;
  *(a1 + 548) = 0;
  *(a1 + 552) = 0x200000002;
  *(a1 + 584) = 0;
  *(a1 + 592) = 0;
  *(a1 + 600) = 0;
  *(a1 + 608) = 0;
  *(a1 + 576) = 0;
  *(a1 + 560) = 0u;
  *(a1 + 728) = 0u;
  *(a1 + 744) = 0u;
  *(a1 + 696) = 0u;
  *(a1 + 712) = 0u;
  *(a1 + 664) = 0u;
  *(a1 + 680) = 0u;
  *(a1 + 632) = 0u;
  *(a1 + 648) = 0u;
  *(a1 + 616) = 0u;
  *(a1 + 496) = *(a2 + 1);
  LODWORD(v13) = *a2;
  *(a1 + 540) = *a2;
  if (*&v13 != a4)
  {
    *(a1 + 548) = 1;
  }

  LSLog = getLSLog();
  if (os_log_type_enabled(LSLog, OS_LOG_TYPE_DEBUG))
  {
    v18 = *(a1 + 544);
    v19 = *(a1 + 540);
    v20 = 134218496;
    v21 = 16;
    v22 = 1024;
    v23 = v18;
    v24 = 1024;
    v25 = v19;
    _os_log_debug_impl(&dword_1DDB85000, LSLog, OS_LOG_TYPE_DEBUG, "LSFilterProcessor: constructed %lu-bit processor (external/internal) = (%uHz/%uHz)", &v20, 0x18u);
  }

  return a1;
}

void sub_1DE020E38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  v12 = *v10;
  if (*v10)
  {
    *(v9 + 152) = v12;
    operator delete(v12);
  }

  a9 = (v9 + 112);
  std::vector<PPUtils::SphericalCoordinateTree::sphericalCoordinateBranch>::__destroy_vector::operator()[abi:ne200100](&a9);
  _ZNSt3__16vectorIN2IR9DelayLineIDF16_EENS_9allocatorIS3_EEE16__destroy_vectorclB8ne200100Ev(&a9);
  std::recursive_mutex::~recursive_mutex(v9);
  _Unwind_Resume(a1);
}

void _ZN11LeanSpatial17LSFilterProcessorIDF16_E5resetEv(std::recursive_mutex *a1)
{
  std::recursive_mutex::lock(a1);
  if (a1[2].__m_.__opaque[0] == 1)
  {
    _ZN2IR9FFTFilterIDF16_E5resetEv();
  }

  std::recursive_mutex::unlock(a1);
}

uint64_t _ZN11LeanSpatial17LSFilterProcessorIDF16_E10initializeEmNS_8BankModeE(uint64_t a1, const char *a2, int a3)
{
  v76 = *MEMORY[0x1E69E9840];
  std::recursive_mutex::lock(a1);
  if (*(a1 + 136) == 1)
  {
    if (*(a1 + 560) == a2 && *(a1 + 552) == a3)
    {
      v6 = 0;
      goto LABEL_79;
    }

    LSLog = getLSLog();
    if (os_log_type_enabled(LSLog, OS_LOG_TYPE_DEBUG))
    {
      v58 = *(a1 + 560);
      v59 = *(a1 + 552);
      __src = 134218240;
      __src_4 = v58;
      v69 = 1024;
      LODWORD(v70) = v59;
      _os_log_debug_impl(&dword_1DDB85000, LSLog, OS_LOG_TYPE_DEBUG, "Processor was already initialized with a blocksize of %zu, bank mode %d", &__src, 0x12u);
    }

    if (*(a1 + 136) == 1)
    {
      v8 = getLSLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(__src) = 0;
        _os_log_debug_impl(&dword_1DDB85000, v8, OS_LOG_TYPE_DEBUG, "LSFilterProcessor: uninitializing", &__src, 2u);
      }

      std::recursive_mutex::lock(a1);
      v10 = *(a1 + 88);
        ;
      }

      *(a1 + 96) = v10;
      v12 = *(a1 + 112);
      for (j = *(a1 + 120); j != v12; std::__destroy_at[abi:ne200100]<PPUtils::SphericalCoordinateTree::sphericalCoordinateBranch,0>(j))
      {
        j -= 7;
      }

      *(a1 + 120) = v12;
      __src = 0;
      v13 = *(a1 + 144);
      v14 = *(a1 + 160);
      if (v14 - v13 < 3)
      {
        if (v13)
        {
          *(a1 + 152) = v13;
          operator delete(v13);
          v14 = 0;
          *(a1 + 144) = 0;
          *(a1 + 152) = 0;
          *(a1 + 160) = 0;
        }

        v15 = 2;
        if (v14 > 2)
        {
          v15 = v14;
        }

        if (v14 >= 0x7FFFFFFFFFFFFFFELL)
        {
          v16 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v16 = v15;
        }

        _ZNSt3__16vectorIDF16_NS_9allocatorIDF16_EEE11__vallocateB8ne200100Em(a1 + 144, v16);
      }

      v17 = *(a1 + 152);
      v18 = v17 - v13;
      if ((v17 - v13) > 2)
      {
        *v13 = __src;
        *(a1 + 152) = v13 + 1;
      }

      else
      {
        if (v17 != v13)
        {
          memcpy(v13, &__src, v17 - v13);
          v17 = *(a1 + 152);
        }

        v19 = v17;
        do
        {
          *v19 = *(&__src + v18);
          v19 = (v19 + 2);
          v18 += 2;
        }

        while (v18 != 4);
        *(a1 + 152) = v19;
      }

      *(a1 + 528) = 0;
      if (*(a1 + 548) == 1)
      {
        std::__optional_destruct_base<CA::AudioSampleRateConverter,false>::reset[abi:ne200100](a1 + 584);
        std::__optional_destruct_base<CA::AudioSampleRateConverter,false>::reset[abi:ne200100](a1 + 600);
      }

      *(a1 + 136) = 0;
      std::recursive_mutex::unlock(a1);
    }
  }

  v20 = getLSLog();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    __src = 134218240;
    __src_4 = a2;
    v69 = 1024;
    LODWORD(v70) = a3;
    _os_log_debug_impl(&dword_1DDB85000, v20, OS_LOG_TYPE_DEBUG, "LSFilterProcessor: initializing processor at %zu samples, bank mode %d", &__src, 0x12u);
  }

  *(a1 + 136) = 0;
  *(a1 + 560) = a2;
  *(a1 + 552) = a3;
  LOWORD(__src) = 0;
  _ZNSt3__16vectorIDF16_NS_9allocatorIDF16_EEE6assignEmRKDF16_((a1 + 144), 2uLL, &__src, v21);
  *(a1 + 81) = 1;
  v22 = *(a1 + 232);
  v23 = *(a1 + 240);
  LOWORD(__src) = 0;
  vDSP_maxmgv_fp16(v22, &__src, v23, v24);
  atomic_store(vcvtph_u16_f16(*&__src), (a1 + 520));
  v25 = *(a1 + 552);
  if (v25 == 2)
  {
    v26 = 2;
  }

  else
  {
    v26 = 1;
  }

  *(a1 + 556) = v26;
  if (v25 > 2)
  {
    v65 = "inBankMode<kBankModeCount";
    v66 = 50;
    goto LABEL_109;
  }

  *(a1 + 372) = v25;
  if (*(a1 + 257))
  {
    v27 = 1;
  }

  else
  {
    v27 = 2;
  }

  *(a1 + 368) = v27;
  v28 = *(a1 + 360);
  if (v28 <= 0.0)
  {
    *(a1 + 360) = 1135869952;
    v29 = 1;
  }

  else
  {
    v29 = vcvtas_u32_f32(360.0 / v28);
  }

  *(a1 + 364) = v29;
  v30 = *(a1 + 192);
  v31 = *(a1 + 200);
  if (v31 - v30 == 4 && v29 == 1)
  {
    *(a1 + 380) = 0;
  }

  std::vector<unsigned int>::__assign_with_size[abi:ne200100]<unsigned int *,unsigned int *>((a1 + 328), v30, v31, (v31 - v30) >> 2);
  v32 = ((*(a1 + 336) - *(a1 + 328)) >> 2) * *(a1 + 364);
  if (*(a1 + 224) != v32 * *(a1 + 352) * *(a1 + 368))
  {
    v65 = "mAttributes.data.size() == dataSize";
    v66 = 72;
    goto LABEL_109;
  }

  if (*(a1 + 240) != v32)
  {
    v65 = "mAttributes.delays.size() == delaySize";
    v66 = 73;
    goto LABEL_109;
  }

  v33 = *(a1 + 176);
  if (!v33)
  {
    v65 = "mAttributes.filterSize > 0U";
    v66 = 74;
LABEL_109:
    __assert_rtn("initialize", "LSBank.cpp", v66, v65);
  }

  v35 = *(a1 + 280);
  v34 = *(a1 + 288);
  v36 = *(a1 + 272);
  if (!(v36 | v34))
  {
    if (v35 == v33)
    {
      goto LABEL_55;
    }

    v34 = 0;
  }

  v37 = *(a1 + 264) - *(a1 + 312);
  *(a1 + 432) = v36;
  *(a1 + 448) = v34;
  if (v37 >= v33)
  {
    v45 = getLSLog();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      __src = 136315138;
      __src_4 = "initialize";
      v46 = "LSBank::%s: window start sample beyond end of filter";
      goto LABEL_104;
    }

    goto LABEL_78;
  }

  if (v35)
  {
    v38 = v37 + v35 > v33;
  }

  else
  {
    v38 = 1;
  }

  v39 = v38;
  if (v39)
  {
    v40 = v33;
  }

  else
  {
    v40 = v37 + v35;
  }

  if (v39)
  {
    v41 = v33 - v37;
  }

  else
  {
    v41 = v35;
  }

  if (v34 + v36 > v41)
  {
    do
    {
      v34 >>= 1;
      v42 = v34 + (v36 >> 1);
      v36 >>= 1;
    }

    while (v42 > v41);
    *(a1 + 432) = v36;
    *(a1 + 448) = v34;
  }

  v43 = v40 >= v34;
  v44 = v40 - v34;
  *(a1 + 456) = v44;
  if (!v43)
  {
    v45 = getLSLog();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      __src = 136315138;
      __src_4 = "initialize";
      v46 = "LSBank::%s: length of fadeout is greater than filter";
LABEL_104:
      _os_log_error_impl(&dword_1DDB85000, v45, OS_LOG_TYPE_ERROR, v46, &__src, 0xCu);
      goto LABEL_78;
    }

    goto LABEL_78;
  }

  if (v44 < v36 + v37)
  {
    v45 = getLSLog();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      __src = 136315138;
      __src_4 = "initialize";
      v46 = "LSBank::%s: start of fadeout is before window fadein";
      goto LABEL_104;
    }

LABEL_78:
    v6 = 4294956445;
    goto LABEL_79;
  }

  if (v40 <= v37)
  {
    v45 = getLSLog();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      __src = 136315138;
      __src_4 = "initialize";
      v46 = "LSBank::%s: start of fadeout is beyond end of filter";
      goto LABEL_104;
    }

    goto LABEL_78;
  }

  if (v36)
  {
    _ZN11LeanSpatialL21calculateFadeInWindowIDF16_EEvmRNSt3__16vectorIT_NS1_9allocatorIS3_EEEE(v36, (a1 + 384));
    if (*(a1 + 432) + v37 > v40)
    {
      *(a1 + 432) = v40 - v37;
    }

    *(a1 + 440) = v37;
    v50 = getLSLog();
    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
    {
      v63 = *(a1 + 432);
      v62 = *(a1 + 440);
      v64 = *(a1 + 352);
      __src = 134219008;
      __src_4 = v62;
      v69 = 2048;
      v70 = v63;
      v71 = 2048;
      v72 = &v62[v63 - 1];
      v73[0] = 2048;
      *&v73[1] = v40;
      v74 = 2048;
      v75 = v64;
      _os_log_debug_impl(&dword_1DDB85000, v50, OS_LOG_TYPE_DEBUG, "LSBank: fade-in will be applied (fade start=%zu, fade lenght=%zu, fade end=%zu, window end=%zu, resulting filtersize=%zu)", &__src, 0x34u);
    }
  }

  if (*(a1 + 456) >= v40)
  {
    *(a1 + 448) = 0;
  }

  else
  {
    v51 = *(a1 + 448);
    if (v51)
    {
      _ZN11LeanSpatialL21calculateFadeInWindowIDF16_EEvmRNSt3__16vectorIT_NS1_9allocatorIS3_EEEE(v51, (a1 + 408));
      v52 = *(a1 + 456);
      if (*(a1 + 448) + v52 > v40)
      {
        *(a1 + 448) = v40 - v52;
      }

      *(a1 + 464) = v40;
      v53 = getLSLog();
      if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
      {
        v55 = *(a1 + 448);
        v54 = *(a1 + 456);
        v56 = *(a1 + 464);
        v57 = *(a1 + 352);
        __src = 134219008;
        __src_4 = v54;
        v69 = 2048;
        v70 = v55;
        v71 = 2048;
        v72 = v40;
        v73[0] = 2048;
        *&v73[1] = v56;
        v74 = 2048;
        v75 = v57;
        _os_log_debug_impl(&dword_1DDB85000, v53, OS_LOG_TYPE_DEBUG, "LSBank: fade-out will be applied (fade start=%zu, fade lenght=%zu, fade end=%zu, window end=%zu, resulting filtersize=%zu)", &__src, 0x34u);
      }
    }
  }

LABEL_55:
  *(a1 + 381) = 1;
  _ZNSt3__16vectorIDF16_NS_9allocatorIDF16_EEE6resizeEm((a1 + 472), *(a1 + 496) * *(a1 + 556));
  if (*(a1 + 256) == 1)
  {
    *(a1 + 528) = 0;
    goto LABEL_87;
  }

  v48 = *(a1 + 248);
  *(a1 + 528) = v48;
  if (v48 <= *(a1 + 312))
  {
LABEL_87:
    operator new();
  }

  v49 = getLSLog();
  if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
  {
    v60 = *(a1 + 528);
    v61 = *(a1 + 312);
    __src = 134218240;
    __src_4 = v60;
    v69 = 2048;
    v70 = v61;
    _os_log_error_impl(&dword_1DDB85000, v49, OS_LOG_TYPE_ERROR, "LSFilterProcessor: failed initialization. The processing delay %zu would be higher than the bank's data offset %zu. Please switch the bank to the hybrid T+D mode", &__src, 0x16u);
  }

  v6 = 4294956421;
LABEL_79:
  std::recursive_mutex::unlock(a1);
  return v6;
}