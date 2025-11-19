uint64_t sub_239CFF728(char *a1, void *a2, uint64_t a3, uint64_t a4)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = *&a1[*MEMORY[0x277CD7378]];
    v162 = objc_msgSend_strideInPixelsX(a1, v7, v8, v9, v10, v11, v12, v13);
    v22 = objc_msgSend_strideInPixelsY(a1, v15, v16, v17, v18, v19, v20, v21);
    v30 = objc_msgSend_sourceFeatureChannelMaxCount(a1, v23, v24, v25, v26, v27, v28, v29);
  }

  else
  {
    objc_opt_class();
    objc_opt_isKindOfClass();
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v14 = *&a1[*MEMORY[0x277CD7378]];
    v162 = objc_msgSend_primaryStrideInPixelsX(a1, v37, v38, v39, v40, v41, v42, v43);
    v22 = objc_msgSend_primaryStrideInPixelsY(a1, v44, v45, v46, v47, v48, v49, v50);
    v30 = objc_msgSend_primarySourceFeatureChannelMaxCount(a1, v51, v52, v53, v54, v55, v56, v57);
  }

  v58 = *(a4 + 200);
  v59 = v58 + v30;
  v60 = *(a4 + 24);
  v61 = v60 - v58;
  if (v59 <= v60)
  {
    v62 = v30;
  }

  else
  {
    v62 = v61;
  }

  v63 = *(a4 + 40);
  v64 = *(a4 + 104);
  if (*(a4 + 8) == *(a4 + 72) && (v63 == v64 || (objc_msgSend_isEqual_(*(a4 + 40), v31, *(a4 + 104), v32, v33, v34, v35, v36) & 1) != 0))
  {
    return -18;
  }

  if (*(a4 + 152) && *(a4 + 144))
  {
    v65 = *(a4 + 192) + v62;
    v66 = *(a4 + 88);
    if (v14)
    {
      if (v65 > v66)
      {
        return -23;
      }
    }

    else if (v65 > v66 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v68 = *(a4 + 16);
    v69 = *(a4 + 80);
    v70 = *(a4 + 152) * *(a4 + 144);
    *&v71 = -1;
    *(&v71 + 1) = -1;
    v188 = v71;
    v187 = v71;
    v186 = v71;
    v185 = v71;
    v183 = 1;
    v184 = v69 & 0x3F | ((v68 & 0x3F) << 6);
    MPSLibrary::CreateUberShaderKey();
    PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
    if (!PipelineStateForMPSKey)
    {
      return -1;
    }

    v79 = PipelineStateForMPSKey;
    v161 = v22;
    objc_msgSend_setComputePipelineState_(a2, v73, PipelineStateForMPSKey, v74, v75, v76, v77, v78, 0, 0, 0, 0, 0);
    v87 = objc_msgSend_threadExecutionWidth(v79, v80, v81, v82, v83, v84, v85, v86);
    v95 = objc_msgSend_maxTotalThreadsPerThreadgroup(v79, v88, v89, v90, v91, v92, v93, v94);
    MPSLibrary::ReleaseMPSKey();
    if (v70 <= v62)
    {
      v106 = v95 >> 4;
      v103 = *(a4 + 144);
      v107 = (v95 >> 4) + *(a4 + 152) - 1;
      v104 = (v62 + 3) >> 2;
      v87 = 16;
      v105 = v104;
      v159 = v107 / v106;
      v160 = (*(a4 + 144) + 15) >> 4;
    }

    else
    {
      v103 = *(a4 + 144);
      v104 = (v62 + 3) >> 2;
      v159 = *(a4 + 144);
      v105 = *(a4 + 152);
      v160 = 1;
      v106 = 1;
    }

    v108 = vmovn_s64(*(a4 + 168));
    v109 = v108.i16[2];
    v182 = 0;
    v181[1] = v108.i16[2];
    v110 = v108.i16[0];
    v181[0] = v108.i16[0];
    v111 = vmovn_s64(*(a4 + 120));
    v181[3] = v111.i16[2];
    v181[2] = v111.i16[0];
    v112 = vmovn_s64(v103);
    v181[5] = v112.i16[2];
    v181[4] = v112.i16[0];
    v113 = *(a4 + 184);
    v181[7] = *(a4 + 192);
    v114 = *(a4 + 200);
    v181[6] = v114;
    LOWORD(v182) = v62;
    v171 = 0;
    v170 = 0;
    v173 = v109;
    v172 = v110;
    v175 = v161;
    v174 = v162;
    v176 = 0;
    v177 = (v114 + 3) >> 2;
    v178 = v62;
    v179 = v113;
    v180 = objc_msgSend_numberOfImages(*a4, v96, v97, v98, v99, v100, v101, v102);
    objc_msgSend_setTexture_atIndex_(a2, v115, v63, 1, v116, v117, v118, v119);
    objc_msgSend_setBytes_length_atIndex_(a2, v120, &v170, 32, 1, v121, v122, v123);
    v124.i32[0] = (*(a4 + 192) + 3) >> 2;
    v124.i32[1] = *(a4 + 136);
    v125 = vuzp1_s16(vmovn_s64(*(a4 + 120)), v124);
    v126.i32[0] = v104;
    v126.i32[1] = *(a4 + 160);
    v127 = vuzp1_s16(vmovn_s64(*(a4 + 144)), v126);
    v165[0] = v125;
    v165[1] = v127;
    v166 = v62;
    v167 = objc_msgSend_numberOfImages(*(a4 + 64), v128, v129, v130, v131, v132, v133, v134);
    v168 = 0x1000000000001;
    memset(v169, 0, sizeof(v169));
    objc_msgSend_setTexture_atIndex_(a2, v135, v64, 0, v136, v137, v138, v139);
    objc_msgSend_setBytes_length_atIndex_(a2, v140, v165, 40, 0, v141, v142, v143);
    objc_msgSend_setBytes_length_atIndex_(a2, v144, v181, 20, 30, v145, v146, v147);
    Sampler = MPSDevice::GetSampler();
    objc_msgSend_setSamplerState_atIndex_(a2, v149, Sampler, 0, v150, v151, v152, v153);
    v164[0] = v160;
    v164[1] = v159;
    v164[2] = v105;
    v163[0] = v87;
    v163[1] = v106;
    v163[2] = 1;
    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v154, v164, v163, v155, v156, v157, v158);
  }

  return 0;
}

uint64_t sub_239CFFE54(char *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 16);
  v11[0] = *a4;
  v11[1] = v4;
  v11[2] = *(a4 + 32);
  v5 = *(a4 + 136);
  v14 = *(a4 + 120);
  v15 = v5;
  v16 = *(a4 + 152);
  v6 = *(a4 + 224);
  v20 = *(a4 + 208);
  v7 = *(a4 + 176);
  v19 = *(a4 + 192);
  v8 = *(a4 + 112);
  v12 = *(a4 + 48);
  v13 = v8;
  v17 = *(a4 + 168);
  v18 = v7;
  v22 = *(a4 + 240);
  v21 = v6;
  v9 = *(a4 + 328);
  v23 = *(a4 + 304);
  v24 = v9;
  return sub_239CFF728(a1, a2, a3, v11);
}

uint64_t sub_239D006E0(void *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v537 = *MEMORY[0x277D85DE8];
  v12 = *(a4 + 168);
  v13 = objc_msgSend_kernelWidth(a1, a2, a3, a4, a5, a6, a7, a8);
  objc_msgSend_kernelHeight(a1, v14, v15, v16, v17, v18, v19, v20);
  v28 = objc_msgSend_dilationRateX(a1, v21, v22, v23, v24, v25, v26, v27);
  objc_msgSend_dilationRateY(a1, v29, v30, v31, v32, v33, v34, v35);
  memset(&v464[1], 0, 32);
  v464[0] = 0u;
  v457 = vdupq_n_s64(1uLL);
  v458 = *a4;
  v459 = *(a4 + 16);
  v460 = *(a4 + 80);
  v461 = *(a4 + 56);
  v462 = *(a4 + 80);
  v463 = *(a4 + 104);
  v36 = vmovn_s64(*(a4 + 120));
  LOWORD(v37) = v36.i16[0];
  WORD1(v37) = v36.i16[2];
  HIDWORD(v37) = ((*(a4 + 192) + 3) >> 2);
  v38 = vmovn_s64(*(a4 + 144));
  v39 = *(a4 + 88);
  HIWORD(v40) = 1;
  LOWORD(v40) = v38.i16[0];
  WORD1(v40) = v38.i16[2];
  WORD2(v40) = (v39 + 3) >> 2;
  *&v464[0] = v37;
  *(&v464[0] + 1) = v40;
  LOWORD(v464[1]) = v39;
  WORD2(v464[1]) = 1;
  WORD5(v464[1]) = objc_msgSend_maxBatchSize(a1, v41, v42, v43, v44, v45, v46, v47);
  *(&v464[1] + 12) = 0;
  DWORD2(v464[2]) = *(a4 + 16);
  v465 = *(a4 + 40);
  v467 = v12 - (v13 >> 1) * v28;
  v466 = v467;
  v468 = 0;
  v470 = v13;
  v469 = v13;
  v472 = v12;
  v471 = v12;
  v473 = objc_msgSend_strideInPixelsX(a1, v48, v49, v50, v51, v52, v53, v54);
  v474 = objc_msgSend_strideInPixelsY(a1, v55, v56, v57, v58, v59, v60, v61);
  v476 = v28;
  v475 = v28;
  v69 = *(a4 + 192);
  v70 = *(a4 + 200);
  v477 = v70;
  v478 = *(a4 + 24);
  v71 = *(a4 + 184);
  v479 = v71;
  v480 = 0;
  v72 = *(a4 + 152);
  *v482 = *(a4 + 136);
  *&v482[16] = v72;
  v481 = *(a4 + 120);
  v483 = *(a4 + 168);
  v484 = v71;
  v485 = v69;
  v486 = v70;
  if (*(&v460 + 1) < a1[44] + v69 && MTLReportFailureTypeEnabled())
  {
    v434 = objc_opt_class();
    v435 = NSStringFromClass(v434);
    v439 = a1[44];
    v440 = *(&v460 + 1) - v69;
    v438 = v435;
    MTLReportFailure();
  }

  v453 = a3;
  if (*(&v459 + 1) < a1[44] + v70 && MTLReportFailureTypeEnabled())
  {
    v436 = objc_opt_class();
    v437 = NSStringFromClass(v436);
    v439 = a1[44];
    v440 = *(&v459 + 1) - v70;
    v438 = v437;
    MTLReportFailure();
  }

  v73 = *(a1 + *MEMORY[0x277CD7370]);
  v74 = objc_msgSend_maxBatchSize(a1, v62, v63, v64, v65, v66, v67, v68, v438, v439, v440);
  v455 = *&v482[16];
  v456 = a1;
  v75 = a1[44];
  v76 = v457.i64[1];
  v77 = *(v73 + 32);
  v519 = 0uLL;
  v520 = 0;
  (*(*v77 + 16))(&v519, v77);
  v507[0] = WORD4(v459);
  v507[1] = *&v482[24];
  v508 = v486 >> 2;
  v509 = v485 >> 2;
  v78 = vmovn_s64(vandq_s8(v483, vcgtzq_s64(v483)));
  v79 = vmovn_s64(v481);
  v518 = 0;
  v507[2] = v457.i16[4];
  v510 = *v482;
  HIWORD(v511) = v78.i16[2];
  v443 = vmovn_s64(*&v482[8]);
  v444 = v78;
  LOWORD(v511) = v78.i16[0];
  v513 = v79.i16[2];
  v512 = v79.i16[0];
  v515 = v443.i16[2];
  v514 = v443.i16[0];
  objc_msgSend_epsilon(v456, v80, v81, v82, v83, v84, v85, v86);
  v451 = *&v482[8];
  v87 = v75 + 3;
  v88 = (v75 + 3) >> 2;
  v516 = v89;
  v90 = 1.0 / (*&v482[16] * *&v482[8]);
  v517 = v90;
  if (((v75 + 3) & 0x3FFF8) != 0)
  {
    v91 = (v87 >> 2);
    v92 = __clz(0x80000000 / v91);
    v93 = (0x80000000 / v91) >> (16 - v92);
    v94 = v92 + 15;
    v95 = -65536 * v88 * v93 / v91;
    if (v95 <= v93)
    {
      v96 = v93;
    }

    else
    {
      v96 = v93 + 1;
    }

    if (v95 <= v93)
    {
      LOWORD(v93) = 0;
    }

    v97 = (v94 << 48) | ((v95 - v93) << 32) | (v96 << 16) | (v87 >> 2);
  }

  else
  {
    v97 = 65537;
  }

  v518 = v97;
  MEMORY[0x23EE7D040](v506, v453, 0);
  if (v461)
  {
    v98 = (*(v461 + *MEMORY[0x277CD7488]) + 8);
    v99 = v456;
    explicit = atomic_load_explicit(v98, memory_order_acquire);
    if (!explicit)
    {
      MPSAutoBuffer::AllocateBuffer(v98, 0);
      explicit = atomic_load_explicit(v98, memory_order_acquire);
    }
  }

  else
  {
    explicit = MPSAutoCache::GetTempBuffer(v506, 4 * v457.i64[1] * ((2 * v87) & 0x3FFFFFFFFFFFFFF8), 0);
    v99 = v456;
  }

  v100 = ((DWORD2(v464[2]) - 1) & 0xFFFFFFFD) == 0;
  if (atomic_load_explicit(v99[41], memory_order_acquire) || atomic_load_explicit(v99[42], memory_order_acquire))
  {
    v100 |= 2u;
  }

  *&v101 = -1;
  *(&v101 + 1) = -1;
  v504 = v101;
  v503 = v101;
  v502 = v101;
  v505 = -1;
  v501 = v100;
  v499 = v74;
  v500 = v462 & 0x3F | ((BYTE8(v464[2]) & 0x3F) << 6) & 0xFFF | ((BYTE8(v464[2]) & 0x3F) << 12);
  v497 = v101;
  v496 = v101;
  v495 = v101;
  v498 = -1;
  v494 = v100 | 4;
  v492 = v74;
  v493 = v500;
  MPSLibrary::CreateUberShaderKey();
  MPSLibrary::CreateUberShaderKey();
  MPSLibrary::CreateUberShaderKey();
  MPSLibrary::CreateUberShaderKey();
  PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
  v449 = MPSLibrary::GetPipelineStateForMPSKey();
  v448 = MPSLibrary::GetPipelineStateForMPSKey();
  v452 = MPSLibrary::GetPipelineStateForMPSKey();
  v109 = objc_msgSend_maxTotalThreadsPerThreadgroup(PipelineStateForMPSKey, v102, v103, v104, v105, v106, v107, v108, 0, 0, 0, 0, 0);
  v117 = objc_msgSend_maxTotalThreadsPerThreadgroup(v449, v110, v111, v112, v113, v114, v115, v116);
  v125 = objc_msgSend_maxTotalThreadsPerThreadgroup(v452, v118, v119, v120, v121, v122, v123, v124);
  v133 = objc_msgSend_maxTotalThreadsPerThreadgroup(v448, v126, v127, v128, v129, v130, v131, v132);
  if (v109 >= v117)
  {
    v140 = v117;
  }

  else
  {
    v140 = v109;
  }

  if (v140 >= v125)
  {
    v140 = v125;
  }

  if (v140 >= v133)
  {
    v140 = v133;
  }

  if (v140 >= 0x100)
  {
    v141 = 256;
  }

  else
  {
    v141 = v140;
  }

  v142 = v519.u64[1];
  if (v519.i64[1] * v519.i64[0] > v141)
  {
    do
    {
      v142 >>= 1;
    }

    while (v142 * v519.i64[0] > v141);
    v519.i64[1] = v142;
  }

  v447 = v88 * v457.i64[1];
  v143 = 16 * v519.i64[0] * v142;
  v454 = v465;
  v144 = *&v482[16] > v142 || *&v482[8] > v519.i64[0];
  v445 = 16 * v519.i64[0] * v142;
  if (!v144 || (v77[32] & 1) != 0)
  {
    v150 = v465;
    objc_msgSend_setComputePipelineState_(a2, v134, PipelineStateForMPSKey, v135, v136, v137, v138, v139);
    goto LABEL_135;
  }

  v145 = (*&v482[8] + v519.i64[0] - 1) / v519.i64[0];
  v146 = *&v482[16] + v142 - 1;
  if (v145 >= v519.i64[0])
  {
    v145 = v519.i64[0];
  }

  if (v146 / v142 >= v142)
  {
    v147 = v142;
  }

  else
  {
    v147 = v146 / v142;
  }

  v490.i64[0] = v145;
  v490.i64[1] = v147;
  v491 = v88;
  v148 = BYTE3(**(&v458 + 1)) & 0xF;
  v441 = v147;
  v442 = v145;
  if (v148 == 2)
  {
    v149 = 105;
  }

  else if (v148 == 1)
  {
    v149 = 55;
  }

  else
  {
    v149 = 125;
  }

  v489 = **(&v458 + 1) & 0xFFFFFFFFFFFFFC00 | v149;
  v150 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v134, v457.i64[1], v135, v136, v137, v138, v139);
  v170 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v158, v457.i64[1], v159, v160, v161, v162, v163);
  if (v457.i64[1])
  {
    do
    {
      TempTexture = MPSAutoCache::GetTempTexture();
      objc_msgSend_addObject_(v150, v172, TempTexture, v173, v174, v175, v176, v177);
      v178 = MPSAutoCache::GetTempTexture();
      objc_msgSend_addObject_(v170, v179, v178, v180, v181, v182, v183, v184);
      --v76;
    }

    while (v76);
  }

  objc_msgSend_setComputePipelineState_(a2, v164, v449, v165, v166, v167, v168, v169);
  if ((BYTE8(v464[2]) & 2) == 0)
  {
    objc_msgSend_setTexture_atIndex_(a2, v185, v465, v74, v188, v189, v190, v191);
    goto LABEL_71;
  }

  v196 = objc_msgSend_count(v465, v185, v186, v187, v188, v189, v190, v191);
  v536 = 0u;
  v535 = 0u;
  v534 = 0u;
  v533 = 0u;
  v532 = 0u;
  v531 = 0u;
  v530 = 0u;
  v529 = 0u;
  v528 = 0u;
  v526 = 0u;
  v527 = 0u;
  v524 = 0u;
  v525 = 0u;
  v522 = 0u;
  v523 = 0u;
  v521 = 0u;
  if (v74)
  {
    v197 = v196;
    for (i = 0; i < v74; i += v200)
    {
      if (v197 <= i)
      {
        v199 = 0;
        if (v74 - i >= 0x20)
        {
          v200 = 32;
        }

        else
        {
          v200 = v74 - i;
        }

        v201 = v200;
        if (!v200)
        {
          goto LABEL_63;
        }
      }

      else
      {
        if (v197 - i >= 0x20)
        {
          v199 = 32;
          objc_msgSend_getObjects_range_(v465, v192, &v521, i, 32, v193, v194, v195);
        }

        else
        {
          v199 = v197 - i;
          objc_msgSend_getObjects_range_(v465, v192, &v521, i, v197 - i, v193, v194, v195);
        }

        if (v74 - i >= 0x20)
        {
          v200 = 32;
        }

        else
        {
          v200 = v74 - i;
        }

        v201 = v200 - v199;
        if (v200 == v199)
        {
          goto LABEL_63;
        }
      }

      bzero(&v521 + 8 * v199, 8 * v201);
LABEL_63:
      objc_msgSend_setTextures_withRange_(a2, v192, &v521, i + v74, v200, v193, v194, v195);
    }
  }

  v99 = v456;
  v143 = v445;
LABEL_71:
  objc_msgSend_setBytes_length_atIndex_(a2, v192, &v466, 32, 1, v193, v194, v195);
  if ((BYTE8(v464[2]) & 2) == 0)
  {
    v209 = objc_msgSend_objectAtIndexedSubscript_(v150, v202, 0, v204, v205, v206, v207, v208);
    objc_msgSend_setTexture_atIndex_(a2, v210, v209, 0, v211, v212, v213, v214);
    goto LABEL_92;
  }

  v219 = objc_msgSend_count(v150, v202, v203, v204, v205, v206, v207, v208);
  v536 = 0u;
  v535 = 0u;
  v534 = 0u;
  v533 = 0u;
  v532 = 0u;
  v531 = 0u;
  v530 = 0u;
  v529 = 0u;
  v528 = 0u;
  v526 = 0u;
  v527 = 0u;
  v524 = 0u;
  v525 = 0u;
  v522 = 0u;
  v523 = 0u;
  v521 = 0u;
  if (v74)
  {
    v220 = v219;
    for (j = 0; j < v74; j += v223)
    {
      if (v220 <= j)
      {
        v222 = 0;
        if (v74 - j >= 0x20)
        {
          v223 = 32;
        }

        else
        {
          v223 = v74 - j;
        }

        v224 = v223;
        if (!v223)
        {
          goto LABEL_84;
        }
      }

      else
      {
        if (v220 - j >= 0x20)
        {
          v222 = 32;
          objc_msgSend_getObjects_range_(v150, v215, &v521, j, 32, v216, v217, v218);
        }

        else
        {
          v222 = v220 - j;
          objc_msgSend_getObjects_range_(v150, v215, &v521, j, v220 - j, v216, v217, v218);
        }

        if (v74 - j >= 0x20)
        {
          v223 = 32;
        }

        else
        {
          v223 = v74 - j;
        }

        v224 = v223 - v222;
        if (v223 == v222)
        {
          goto LABEL_84;
        }
      }

      bzero(&v521 + 8 * v222, 8 * v224);
LABEL_84:
      objc_msgSend_setTextures_withRange_(a2, v215, &v521, j, v223, v216, v217, v218);
    }
  }

  v99 = v456;
  v143 = v445;
LABEL_92:
  objc_msgSend_setBytes_length_atIndex_(a2, v215, v464, 40, 0, v216, v217, v218);
  if ((BYTE8(v464[2]) & 2) == 0)
  {
    v232 = objc_msgSend_objectAtIndexedSubscript_(v170, v225, 0, v227, v228, v229, v230, v231);
    objc_msgSend_setTexture_atIndex_(a2, v233, v232, 2 * v74, v234, v235, v236, v237);
    goto LABEL_113;
  }

  v242 = objc_msgSend_count(v170, v225, v226, v227, v228, v229, v230, v231);
  v536 = 0u;
  v535 = 0u;
  v534 = 0u;
  v533 = 0u;
  v532 = 0u;
  v531 = 0u;
  v530 = 0u;
  v529 = 0u;
  v528 = 0u;
  v526 = 0u;
  v527 = 0u;
  v524 = 0u;
  v525 = 0u;
  v522 = 0u;
  v523 = 0u;
  v521 = 0u;
  if (v74)
  {
    v243 = v242;
    for (k = 0; k < v74; k += v246)
    {
      if (v243 <= k)
      {
        v245 = 0;
        if (v74 - k >= 0x20)
        {
          v246 = 32;
        }

        else
        {
          v246 = v74 - k;
        }

        v247 = v246;
        if (!v246)
        {
          goto LABEL_105;
        }
      }

      else
      {
        if (v243 - k >= 0x20)
        {
          v245 = 32;
          objc_msgSend_getObjects_range_(v170, v238, &v521, k, 32, v239, v240, v241);
        }

        else
        {
          v245 = v243 - k;
          objc_msgSend_getObjects_range_(v170, v238, &v521, k, v243 - k, v239, v240, v241);
        }

        if (v74 - k >= 0x20)
        {
          v246 = 32;
        }

        else
        {
          v246 = v74 - k;
        }

        v247 = v246 - v245;
        if (v246 == v245)
        {
          goto LABEL_105;
        }
      }

      bzero(&v521 + 8 * v245, 8 * v247);
LABEL_105:
      objc_msgSend_setTextures_withRange_(a2, v238, &v521, k + 2 * v74, v246, v239, v240, v241);
    }
  }

  v99 = v456;
  v143 = v445;
LABEL_113:
  objc_msgSend_setBytes_length_atIndex_(a2, v238, v507, 40, 30, v239, v240, v241);
  objc_msgSend_setThreadgroupMemoryLength_atIndex_(a2, v248, v143, 0, v249, v250, v251, v252);
  objc_msgSend_setThreadgroupMemoryLength_atIndex_(a2, v253, v143, 1, v254, v255, v256, v257);
  Sampler = MPSDevice::GetSampler();
  objc_msgSend_setSamplerState_atIndex_(a2, v259, Sampler, 0, v260, v261, v262, v263);
  v521.i64[0] = v442;
  v521.i64[1] = v441;
  *&v522 = v447;
  v487 = v519;
  v488 = v520;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v264, &v521, &v487, v265, v266, v267, v268);
  v454 = objc_msgSend_objectAtIndexedSubscript_(v150, v269, 0, v270, v271, v272, v273, v274);
  v508 = 0;
  v511 = 0;
  v282 = vmovn_s64(v490);
  v515 = v282.i16[2];
  v514 = v282.i16[0];
  if ((BYTE8(v464[2]) & 2) != 0)
  {
    v293 = objc_msgSend_count(v170, v275, v276, v277, v278, v279, v280, v281);
    v536 = 0u;
    v535 = 0u;
    v534 = 0u;
    v533 = 0u;
    v532 = 0u;
    v531 = 0u;
    v530 = 0u;
    v529 = 0u;
    v528 = 0u;
    v526 = 0u;
    v527 = 0u;
    v524 = 0u;
    v525 = 0u;
    v522 = 0u;
    v523 = 0u;
    v521 = 0u;
    if (!v74)
    {
LABEL_133:
      v99 = v456;
      v143 = v445;
      goto LABEL_134;
    }

    v294 = v293;
    v295 = 0;
    while (1)
    {
      if (v294 <= v295)
      {
        v296 = 0;
        if (v74 - v295 >= 0x20)
        {
          v297 = 32;
        }

        else
        {
          v297 = v74 - v295;
        }

        v298 = v297;
        if (!v297)
        {
          goto LABEL_126;
        }
      }

      else
      {
        if (v294 - v295 >= 0x20)
        {
          v296 = 32;
          objc_msgSend_getObjects_range_(v170, v289, &v521, v295, 32, v290, v291, v292);
        }

        else
        {
          v296 = v294 - v295;
          objc_msgSend_getObjects_range_(v170, v289, &v521, v295, v294 - v295, v290, v291, v292);
        }

        if (v74 - v295 >= 0x20)
        {
          v297 = 32;
        }

        else
        {
          v297 = v74 - v295;
        }

        v298 = v297 - v296;
        if (v297 == v296)
        {
          goto LABEL_126;
        }
      }

      bzero(&v521 + 8 * v296, 8 * v298);
LABEL_126:
      objc_msgSend_setTextures_withRange_(a2, v289, &v521, v295 + 2 * v74, v297, v290, v291, v292);
      v295 += v297;
      if (v295 >= v74)
      {
        goto LABEL_133;
      }
    }
  }

  v283 = objc_msgSend_objectAtIndexedSubscript_(v170, v275, 0, v277, v278, v279, v280, v281);
  objc_msgSend_setTexture_atIndex_(a2, v284, v283, 2 * v74, v285, v286, v287, v288);
LABEL_134:
  objc_msgSend_setBytes_length_atIndex_(a2, v289, &v466, 32, 2, v290, v291, v292);
  objc_msgSend_setComputePipelineState_(a2, v299, v448, v300, v301, v302, v303, v304);
LABEL_135:
  if ((BYTE8(v464[2]) & 2) == 0)
  {
    objc_msgSend_setTexture_atIndex_(a2, v151, v454, v74, v154, v155, v156, v157);
    goto LABEL_156;
  }

  v309 = objc_msgSend_count(v150, v151, v152, v153, v154, v155, v156, v157);
  v536 = 0u;
  v535 = 0u;
  v534 = 0u;
  v533 = 0u;
  v532 = 0u;
  v531 = 0u;
  v530 = 0u;
  v529 = 0u;
  v528 = 0u;
  v526 = 0u;
  v527 = 0u;
  v524 = 0u;
  v525 = 0u;
  v522 = 0u;
  v523 = 0u;
  v521 = 0u;
  if (v74)
  {
    v310 = v309;
    for (m = 0; m < v74; m += v313)
    {
      if (v310 <= m)
      {
        v312 = 0;
        if (v74 - m >= 0x20)
        {
          v313 = 32;
        }

        else
        {
          v313 = v74 - m;
        }

        v314 = v313;
        if (!v313)
        {
          goto LABEL_148;
        }
      }

      else
      {
        if (v310 - m >= 0x20)
        {
          v312 = 32;
          objc_msgSend_getObjects_range_(v150, v305, &v521, m, 32, v306, v307, v308);
        }

        else
        {
          v312 = v310 - m;
          objc_msgSend_getObjects_range_(v150, v305, &v521, m, v310 - m, v306, v307, v308);
        }

        if (v74 - m >= 0x20)
        {
          v313 = 32;
        }

        else
        {
          v313 = v74 - m;
        }

        v314 = v313 - v312;
        if (v313 == v312)
        {
          goto LABEL_148;
        }
      }

      bzero(&v521 + 8 * v312, 8 * v314);
LABEL_148:
      objc_msgSend_setTextures_withRange_(a2, v305, &v521, m + v74, v313, v306, v307, v308);
    }
  }

  v99 = v456;
  v143 = v445;
LABEL_156:
  objc_msgSend_setBytes_length_atIndex_(a2, v305, &v466, 32, 1, v306, v307, v308);
  objc_msgSend_setBuffer_offset_atIndex_(a2, v315, explicit, 0, 30, v316, v317, v318);
  objc_msgSend_setBytes_length_atIndex_(a2, v319, v507, 40, 29, v320, v321, v322);
  objc_msgSend_setThreadgroupMemoryLength_atIndex_(a2, v323, v143, 0, v324, v325, v326, v327);
  objc_msgSend_setThreadgroupMemoryLength_atIndex_(a2, v328, v143, 1, v329, v330, v331, v332);
  v333 = MPSDevice::GetSampler();
  objc_msgSend_setSamplerState_atIndex_(a2, v334, v333, 0, v335, v336, v337, v338);
  v521 = vdupq_n_s64(1uLL);
  *&v522 = v447;
  v490 = v519;
  v491 = v520;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v339, &v521, &v490, v340, v341, v342, v343);
  v344 = v519;
  v515 = v443.i16[2];
  v514 = v443.i16[0];
  v508 = v486 >> 2;
  HIWORD(v511) = v444.i16[2];
  LOWORD(v511) = v444.i16[0];
  objc_msgSend_setComputePipelineState_(a2, v345, v452, v346, v347, v348, v349, v350);
  v358 = v465;
  if ((BYTE8(v464[2]) & 2) == 0)
  {
    objc_msgSend_setTexture_atIndex_(a2, v351, v465, v74, v354, v355, v356, v357);
    goto LABEL_177;
  }

  v363 = objc_msgSend_count(v465, v351, v352, v353, v354, v355, v356, v357);
  v536 = 0u;
  v535 = 0u;
  v534 = 0u;
  v533 = 0u;
  v532 = 0u;
  v531 = 0u;
  v530 = 0u;
  v529 = 0u;
  v528 = 0u;
  v526 = 0u;
  v527 = 0u;
  v524 = 0u;
  v525 = 0u;
  v522 = 0u;
  v523 = 0u;
  v521 = 0u;
  if (v74)
  {
    v364 = v363;
    for (n = 0; n < v74; n += v367)
    {
      if (v364 <= n)
      {
        v366 = 0;
        if (v74 - n >= 0x20)
        {
          v367 = 32;
        }

        else
        {
          v367 = v74 - n;
        }

        v368 = v367;
        if (!v367)
        {
          goto LABEL_169;
        }
      }

      else
      {
        if (v364 - n >= 0x20)
        {
          v366 = 32;
          objc_msgSend_getObjects_range_(v358, v359, &v521, n, 32, v360, v361, v362);
        }

        else
        {
          v366 = v364 - n;
          objc_msgSend_getObjects_range_(v358, v359, &v521, n, v364 - n, v360, v361, v362);
        }

        if (v74 - n >= 0x20)
        {
          v367 = 32;
        }

        else
        {
          v367 = v74 - n;
        }

        v368 = v367 - v366;
        if (v367 == v366)
        {
          goto LABEL_169;
        }
      }

      bzero(&v521 + 8 * v366, 8 * v368);
LABEL_169:
      objc_msgSend_setTextures_withRange_(a2, v359, &v521, n + v74, v367, v360, v361, v362);
    }
  }

  v99 = v456;
LABEL_177:
  objc_msgSend_setBytes_length_atIndex_(a2, v359, &v466, 32, 1, v360, v361, v362);
  if ((v462 & 2) == 0)
  {
    objc_msgSend_setTexture_atIndex_(a2, v369, v463, 0, v372, v373, v374, v375);
    goto LABEL_198;
  }

  v380 = objc_msgSend_count(v463, v369, v370, v371, v372, v373, v374, v375);
  v536 = 0u;
  v535 = 0u;
  v534 = 0u;
  v533 = 0u;
  v532 = 0u;
  v531 = 0u;
  v530 = 0u;
  v529 = 0u;
  v528 = 0u;
  v526 = 0u;
  v527 = 0u;
  v524 = 0u;
  v525 = 0u;
  v522 = 0u;
  v523 = 0u;
  v521 = 0u;
  if (v74)
  {
    v381 = v380;
    for (ii = 0; ii < v74; ii += v384)
    {
      if (v381 <= ii)
      {
        v383 = 0;
        if (v74 - ii >= 0x20)
        {
          v384 = 32;
        }

        else
        {
          v384 = v74 - ii;
        }

        v385 = v384;
        if (!v384)
        {
          goto LABEL_190;
        }
      }

      else
      {
        if (v381 - ii >= 0x20)
        {
          v383 = 32;
          objc_msgSend_getObjects_range_(v463, v376, &v521, ii, 32, v377, v378, v379);
        }

        else
        {
          v383 = v381 - ii;
          objc_msgSend_getObjects_range_(v463, v376, &v521, ii, v381 - ii, v377, v378, v379);
        }

        if (v74 - ii >= 0x20)
        {
          v384 = 32;
        }

        else
        {
          v384 = v74 - ii;
        }

        v385 = v384 - v383;
        if (v384 == v383)
        {
          goto LABEL_190;
        }
      }

      bzero(&v521 + 8 * v383, 8 * v385);
LABEL_190:
      objc_msgSend_setTextures_withRange_(a2, v376, &v521, ii, v384, v377, v378, v379);
    }
  }

  v99 = v456;
LABEL_198:
  objc_msgSend_setBytes_length_atIndex_(a2, v376, v464, 40, 0, v377, v378, v379);
  objc_msgSend_setBuffer_offset_atIndex_(a2, v386, explicit, 0, 30, v387, v388, v389);
  if (atomic_load_explicit(v99[41], memory_order_acquire) || atomic_load_explicit(v99[42], memory_order_acquire))
  {
    v394 = v99[41];
    v395 = atomic_load_explicit(v394, memory_order_acquire);
    if (!v395)
    {
      MPSAutoBuffer::AllocateBuffer(v394, 0);
      v395 = atomic_load_explicit(v394, memory_order_acquire);
    }

    objc_msgSend_setBuffer_offset_atIndex_(a2, v390, v395, 0, 29, v391, v392, v393);
    v400 = v99[42];
    v401 = atomic_load_explicit(v400, memory_order_acquire);
    if (!v401)
    {
      MPSAutoBuffer::AllocateBuffer(v400, 0);
      v401 = atomic_load_explicit(v400, memory_order_acquire);
    }

    objc_msgSend_setBuffer_offset_atIndex_(a2, v396, v401, 0, 28, v397, v398, v399);
    if ((objc_msgSend_retainedReferences(v453, v402, v403, v404, v405, v406, v407, v408) & 1) == 0)
    {
      v409 = v99[41];
      v410 = v99;
      v411 = atomic_load_explicit(v409, memory_order_acquire);
      if (v411)
      {
        v412 = v410[42];
        v413 = atomic_load_explicit(v412, memory_order_acquire);
        if (!v413)
        {
          goto LABEL_209;
        }
      }

      else
      {
        MPSAutoBuffer::AllocateBuffer(v409, 0);
        v411 = atomic_load_explicit(v409, memory_order_acquire);
        v412 = v456[42];
        v413 = atomic_load_explicit(v412, memory_order_acquire);
        if (!v413)
        {
LABEL_209:
          MPSAutoBuffer::AllocateBuffer(v412, 0);
          v413 = atomic_load_explicit(v412, memory_order_acquire);
        }
      }

      v414 = v411;
      v415 = v413;
      v521.i64[0] = MEMORY[0x277D85DD0];
      v521.i64[1] = 3221225472;
      *&v522 = sub_239D03808;
      *(&v522 + 1) = &unk_278B2F6B0;
      *&v523 = v411;
      *(&v523 + 1) = v413;
      objc_msgSend_addCompletedHandler_(v453, v416, &v521, v417, v418, v419, v420, v421);
    }
  }

  objc_msgSend_setBytes_length_atIndex_(a2, v390, v507, 40, 27, v391, v392, v393);
  v422 = MPSDevice::GetSampler();
  objc_msgSend_setSamplerState_atIndex_(a2, v423, v422, 0, v424, v425, v426, v427);
  v490.i64[0] = (v451 + v344.i64[0] - 1) / v344.i64[0];
  v490.i64[1] = (v455 + v344.i64[1] - 1) / v344.i64[1];
  v491 = v447;
  v487 = v519;
  v488 = v520;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v428, &v490, &v487, v429, v430, v431, v432);
  MPSLibrary::ReleaseMPSKey();
  MPSLibrary::ReleaseMPSKey();
  MPSLibrary::ReleaseMPSKey();
  MPSLibrary::ReleaseMPSKey();
  MPSLibrary::ReleaseComputeState();
  MPSLibrary::ReleaseComputeState();
  MPSLibrary::ReleaseComputeState();
  MPSLibrary::ReleaseComputeState();
  MPSAutoCache::~MPSAutoCache(v506);
  return 0;
}

void sub_239D02ED0(_Unwind_Exception *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_239BE43B4(va, a2, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

__n128 sub_239D037F4@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  result = *(a1 + 8);
  *a2 = result;
  a2[1].n128_u64[0] = *(a1 + 24);
  return result;
}

void sub_239D03808(uint64_t a1)
{
  v2 = *(a1 + 40);
}

uint64_t sub_239D03C0C(void *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = a1[41];
  v12 = a1[42];
  v105 = a1[43];
  v13 = *(a4 + 40);
  v14 = objc_msgSend_width(v13, a2, a3, a4, a5, a6, a7, a8);
  v22 = objc_msgSend_height(v13, v15, v16, v17, v18, v19, v20, v21);
  if (v14 && v22)
  {
    v102 = *(a4 + 24);
    v30 = *(a4 + 88) + 3;
    v31 = *(a4 + 200);
    v32 = *(a4 + 192) + 3;
    v33 = v105;
    if (*(a4 + 160) < v105)
    {
      v33 = *(a4 + 160);
    }

    v34 = *(a4 + 184);
    v109 = 0;
    v108 = 0;
    v35 = vmovn_s64(*(a4 + 120));
    v111 = *(a4 + 136) * (v30 >> 2) + (v32 >> 2);
    v110 = vuzp1_s16(v35, v35).u32[0];
    v36 = vmovn_s64(*(a4 + 144));
    v104 = v33;
    v113 = v33;
    v112 = vuzp1_s16(v36, v36).u32[0];
    v116 = v22;
    v115 = v14;
    v118 = v12;
    *v36.i32 = (v14 - 1) / (v11 - 1);
    v117 = v11;
    *&v36.i32[1] = (v22 - 1) / (v12 - 1);
    v114 = v36;
    objc_msgSend_pixelFormat(*(a4 + 40), v23, v24, v25, v26, v27, v28, v29, v102);
    if (*(a4 + 32) == 3)
    {
      v44 = objc_msgSend_pixelFormat(v13, v37, v38, v39, v40, v41, v42, v43);
      v46 = objc_msgSend_newTextureViewWithPixelFormat_textureType_levels_slices_(v13, v45, v44, 2, 0, 1, v34 * ((v103 + 3) >> 2) + ((v31 + 3) >> 2), 1);
    }

    else
    {
      v46 = 0;
    }

    ComputeState = MPSLibrary::GetComputeState();
    objc_msgSend_setComputePipelineState_(a2, v48, ComputeState, v49, v50, v51, v52, v53);
    v61 = objc_msgSend_threadExecutionWidth(ComputeState, v54, v55, v56, v57, v58, v59, v60);
    if (v61 <= 1)
    {
      v69 = 1;
    }

    else
    {
      v69 = v61;
    }

    v70 = objc_msgSend_maxTotalThreadsPerThreadgroup(ComputeState, v62, v63, v64, v65, v66, v67, v68);
    MPSLibrary::ReleaseComputeState();
    if (v46)
    {
      objc_msgSend_setTexture_atIndex_(a2, v71, v46, 0, v72, v73, v74, v75);
    }

    else
    {
      objc_msgSend_setTexture_atIndex_(a2, v71, v13, 0, v72, v73, v74, v75);
    }

    objc_msgSend_setTexture_atIndex_(a2, v76, *(a4 + 104), 1, v77, v78, v79, v80);
    objc_msgSend_setBytes_length_atIndex_(a2, v81, &v108, 40, 0, v82, v83, v84);
    objc_msgSend_setBytes_length_atIndex_(a2, v85, a1[45], 16 * v105, 1, v86, v87, v88);
    Sampler = MPSDevice::GetSampler();
    objc_msgSend_setSamplerState_atIndex_(a2, v90, Sampler, 0, v91, v92, v93, v94);
    v95 = (v70 / v69 + *(a4 + 152) - 1) / (v70 / v69);
    v107[0] = (v69 + *(a4 + 144) - 1) / v69;
    v107[1] = v95;
    v107[2] = v104;
    v106[0] = v69;
    v106[1] = v70 / v69;
    v106[2] = 1;
    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v96, v107, v106, v97, v98, v99, v100);
    if (v46)
    {
    }
  }

  return 0;
}

uint64_t sub_239D0461C(uint64_t a1, int a2, int a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v8 = 0;
  if (a2 && a3)
  {
    v8 = (a5 < 2) & (*(a1 + 8) ^ 1);
    if (a4 == 1)
    {
      v8 = 1;
    }

    if (a7 != a6)
    {
      v8 = 0;
    }

    if ((a7 & 0xFFFFFFFFFFFFFFFELL) != 2)
    {
      v8 = 0;
    }
  }

  return v8 ^ a8 ^ 1u;
}

uint64_t sub_239D04664(uint64_t a1, uint64_t a2, unsigned __int8 a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7, uint64_t a8, unint64_t a9, uint64_t a10, unint64_t a11, char a12)
{
  v12 = 256;
  if (a9 < 0x100)
  {
    v12 = a9;
  }

  v13 = v12 >> 5;
  if (v13 <= 1)
  {
    v13 = 1;
  }

  LODWORD(v13) = ((((v13 * a9 / ((a8 + a8 * a7) >> 1)) >> 2) + 1) >> 3) & 0xFFFFFFFC;
  if (v13 <= 1)
  {
    LODWORD(v13) = 1;
  }

  if (a6 < 2 || (a3 & 1) != 0)
  {
    v14 = a7 > 3;
    v15 = a4 < 5;
    if (a4 <= 4 && a6 == 1 && a7 >= 4)
    {
      LODWORD(v13) = v13 - (v13 >> 1);
      goto LABEL_21;
    }
  }

  else
  {
    v14 = a7 > 3;
    v15 = a4 < 5;
    v13 = (v13 << (a4 > 4)) / a6;
  }

  v16 = v13 * (__clz((a11 >> 1) + 4) ^ 0x3F);
  if (v14)
  {
    v17 = v16;
  }

  else
  {
    v17 = v13;
  }

  if (!v15)
  {
    v17 = v13;
  }

  if (a6 >= 2)
  {
    LODWORD(v13) = v17;
  }

LABEL_21:
  if (a8 == 1)
  {
    v18 = 3;
  }

  else
  {
    v18 = 1;
  }

  if (((a10 * a4 > 0x280) & a3) != 0)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  v20 = v13 << v19;
  if (a12)
  {
    if (a5 == 1)
    {
      v20 += v20 / 8;
      if (a11 >= 2)
      {
        v20 -= v20 / 2;
      }
    }

    else if (a11 >= 2)
    {
      v20 += v20 / 4;
    }
  }

  else if (a7 > 3)
  {
    if (a5 >= 2)
    {
      if (*(a1 + 8) == 1)
      {
        v20 -= v20 / 4;
      }

      else
      {
        v20 <<= a4 > 3;
      }
    }
  }

  else
  {
    if (a4 <= 1)
    {
      v21 = 4;
    }

    else
    {
      v21 = 2;
    }

    v22 = v20 / v21 + v20;
    v24 = a4 > 3 && a9 - 64 < 0xC1;
    v25 = v22 << v24;
    if (a9 - 32 < 0x60 && a4 > 0xF)
    {
      v20 = 3 * v25;
    }

    else
    {
      v20 = v25;
    }
  }

  v27 = v20 & 0xFFFFFFFE;
  if (a7 >= 5)
  {
    v28 = 2;
  }

  else
  {
    v28 = 4;
  }

  if (v28 <= v27)
  {
    return v27;
  }

  else
  {
    return v28;
  }
}

void sub_239D04848(char a1@<W2>, unint64_t a2@<X4>, uint64_t a3@<X5>, uint64_t a4@<X7>, unint64_t *a5@<X8>, uint64_t a6, unint64_t a7, char a8, unint64_t a9, unint64_t a10)
{
  v10 = a7 >> 2;
  if (a7 >> 2 <= 1)
  {
    v10 = 1;
  }

  a5[2] = 1;
  if (a9 > 2)
  {
    v11 = 1;
  }

  else
  {
    v11 = 2;
  }

  v12 = a7 << v11 << (a2 > 1);
  v13 = 3;
  if (a9 <= 1)
  {
    v13 = 1;
  }

  v14 = a7 << v13;
  if (a3 == 2)
  {
    v12 = v14;
  }

  if (a8)
  {
    v15 = 1;
  }

  else
  {
    v15 = 16;
  }

  if (a8)
  {
    v10 = v12;
  }

  if ((a1 & 1) == 0)
  {
    v10 = 4 * a7;
    v15 = 1;
    a5[2] = 1;
  }

  v16 = 2 * a6;
  v17 = 2 * a7;
  if (v10 < 2 * a7)
  {
    v17 = v10;
  }

  if (v10 > v16)
  {
    v10 = v17;
  }

  if (v10 >= a7)
  {
    v18 = a7;
  }

  else
  {
    v18 = v10;
  }

  if (v10 > v16)
  {
    v10 = v18;
  }

  if (v10 * v15 >= a6 * a4)
  {
    if (a7 >> 3 <= 1)
    {
      v10 = 1;
    }

    else
    {
      v10 = a7 >> 3;
    }

    a5[2] = 1;
    v15 = 8;
  }

  if (a10 < 2 || v10 * v15 <= a10)
  {
    *a5 = v10;
    a5[1] = v15;
  }

  else
  {
    do
    {
      v19 = v15 >> (v15 > 1);
      v21 = v10 > 1 && v15 < 2;
      v10 >>= v21;
      v15 = v19;
    }

    while (v10 * v19 > a10);
    *a5 = v10;
    a5[1] = v19;
  }
}

BOOL sub_239D04968(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7)
{
  if (a6 == 2 && a7 == 2 && a4 <= 2 && a5 > 1)
  {
    return 0;
  }

  return a6 != 1 || a7 < 4;
}

uint64_t sub_239D049A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, unint64_t a10)
{
  if (a8 > 3)
  {
    return 2;
  }

  if (a6 >= 2 && a8 == 3)
  {
    if (a10 >= 0x40)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }

  else if (a8 == 2 && a6 > 1 && a10 > 0x7FF)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

void sub_239D049F8(unint64_t a1@<X4>, unint64_t a2@<X6>, uint64_t a3@<X8>, unint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7)
{
  v7 = a5;
  v8 = a5 >> 2;
  if (a5 >> 2 <= 1)
  {
    v8 = 1;
  }

  *a3 = v8;
  *(a3 + 8) = xmmword_239D7D700;
  if (a2 - 1 > 1)
  {
    if (a2 < 4)
    {
      if (a2 != 3)
      {
        return;
      }

      if (a4 >= 0x41)
      {
        v10 = a5 >> 1;
        if (a5 >> 1 <= 1)
        {
          v10 = 1;
        }

        *a3 = v10;
        *(a3 + 8) = 2;
        if (a7 <= 3)
        {
          v11 = 2 * a5;
          if (2 * a5 <= 1)
          {
            v11 = 1;
          }

          *a3 = v11;
          return;
        }

        if (a4 < 0x401)
        {
          return;
        }

        if (a5 <= 1)
        {
          v7 = 1;
        }

        v9 = 1;
LABEL_14:
        *a3 = v7;
        *(a3 + 8) = v9;
        return;
      }

      if (a4 < 0x20 || a7 < 0x10)
      {
        return;
      }
    }

    if (a5 <= 1)
    {
      v7 = 1;
    }

    v9 = 2;
    goto LABEL_14;
  }

  if (a1 >= 2)
  {
    if (a4 < 0x401)
    {
      v12 = a4 > 0x100 && a7 > 4;
      v13 = v12;
      if (a7 <= 0x100 && !v13)
      {
        if (a4 < 0x20 || a7 < 5)
        {
          return;
        }

        goto LABEL_7;
      }
    }

LABEL_6:
    v7 = a5 >> 1;
LABEL_7:
    if (v7 <= 1)
    {
      v7 = 1;
    }

    *a3 = v7;
    return;
  }

  if (a4 >= 0x801)
  {
    *(a3 + 8) = 8;
    return;
  }

  v15 = a4 > 0x100 && a7 > 4;
  if (a7 > 0x100 || v15)
  {
    goto LABEL_6;
  }
}

uint64_t sub_239D04B8C(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = a8;
  if (a6 == 1 || a7 == 1)
  {
    return a8 ^ 1;
  }

  if (a5 != 2 || a6 != 2 || a7 != 2)
  {
    v11 = a4 == 1 && a7 == a6 && (a7 & 0xFFFFFFFFFFFFFFFELL) == 2;
    if (!a3)
    {
      v11 = 0;
    }

    if (!a2)
    {
      v11 = 0;
    }

    return v11 ^ a8 ^ 1;
  }

  return result;
}

uint64_t sub_239D04BF4(uint64_t a1, uint64_t a2, char a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7, uint64_t a8, unint64_t a9, uint64_t a10, unint64_t a11, char a12)
{
  if (a7 == 1 || a8 == 1)
  {
    if (a9 <= 0xFF)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }

    if (a5 == 1)
    {
      return 2;
    }

    else
    {
      return v13;
    }
  }

  if (a5 != 2 || a7 != 2 || a8 != 2)
  {
    if (a5 == 2 && a7 == 3 && a8 == 3 && (a9 < 0x21 || a11 >= 0x40))
    {
      if (a9 > 0x10)
      {
        if (a11 >= 0x10)
        {
          return a9 >> 1;
        }

        if (a9 >= 0x40 && a11 >= 4)
        {
          return a9 >> 2;
        }

        if (a11 < 3 && a9 > 0x7F)
        {
          return 6;
        }

        else
        {
          return 2;
        }
      }

      else if (a11 >= 0x21)
      {
        return 4;
      }

      else
      {
        return 2;
      }
    }

    v14 = 256;
    if (a9 < 0x100)
    {
      v14 = a9;
    }

    v15 = v14 >> 5;
    if (v15 <= 1)
    {
      v15 = 1;
    }

    LODWORD(v15) = ((((v15 * a9 / ((a8 + a8 * a7) >> 1)) >> 2) + 1) >> 3) & 0xFFFFFFFC;
    if (v15 <= 1)
    {
      LODWORD(v15) = 1;
    }

    if (a6 < 2 || (a3 & 1) != 0)
    {
      v16 = a7 > 3;
      v17 = a4 < 5;
      if (a4 <= 4 && a6 == 1 && a7 >= 4)
      {
        v23 = v15 - (v15 >> 1);
        if (a10 * a4 > 0x280)
        {
          v24 = a3;
        }

        else
        {
          v24 = 0;
        }

        v21 = v23 << v24;
        if (a12)
        {
LABEL_41:
          if (a5 == 1)
          {
            v22 = v21 + v21 / 8;
            if (a11 >= 2)
            {
              v22 -= v22 / 2;
            }
          }

          else
          {
            v22 = v21 + v21 / 4;
            if (a11 < 2)
            {
              v22 = v21;
            }
          }

LABEL_82:
          v32 = v22 & 0xFFFFFFFE;
          if (a7 >= 5)
          {
            v33 = 2;
          }

          else
          {
            v33 = 4;
          }

          if (v33 <= v32)
          {
            return v32;
          }

          else
          {
            return v33;
          }
        }

LABEL_54:
        v25 = v21 - v21 / 4;
        if (a5 < 2)
        {
          v25 = v21;
        }

        if (a4 <= 1)
        {
          v26 = 4;
        }

        else
        {
          v26 = 2;
        }

        v27 = v21 / v26 + v21;
        v29 = a4 > 3 && a9 - 64 < 0xC1;
        v30 = v27 << v29;
        v31 = a9 - 32 < 0x60 && a4 > 0xF;
        v22 = 3 * v30;
        if (!v31)
        {
          v22 = v30;
        }

        if (a7 > 3)
        {
          v22 = v25;
        }

        goto LABEL_82;
      }
    }

    else
    {
      v16 = a7 > 3;
      v17 = a4 < 5;
      v15 = (v15 << (a4 > 4)) / a6;
    }

    v18 = v15 * (__clz((a11 >> 1) + 4) ^ 0x3F);
    if (v16)
    {
      v19 = v18;
    }

    else
    {
      v19 = v15;
    }

    if (!v17)
    {
      v19 = v15;
    }

    if (a6 >= 2)
    {
      LODWORD(v15) = v19;
    }

    if (a10 * a4 > 0x280)
    {
      v20 = a3;
    }

    else
    {
      v20 = 0;
    }

    v21 = v15 << v20;
    if (a12)
    {
      goto LABEL_41;
    }

    goto LABEL_54;
  }

  if (a11 >= 0x10)
  {
    if (a9 >> 1 <= 2)
    {
      return 2;
    }

    else
    {
      return a9 >> 1;
    }
  }

  if (a9 >= 0x40 && a11 >= 4)
  {
    return a9 >> 2;
  }

  if (a9 >= 0x80 && a11 >= 4)
  {
    return a9 >> 3;
  }

  v34 = a9 >> 4;
  if (a9 >> 4 <= 2)
  {
    LODWORD(v34) = 2;
  }

  if (a9 <= 0x7F)
  {
    return v34;
  }

  else
  {
    return 25;
  }
}

void sub_239D04EEC(char a1@<W2>, unint64_t a2@<X4>, uint64_t a3@<X5>, uint64_t a4@<X6>, unint64_t a5@<X7>, uint64_t a6@<X8>, unint64_t a7, unint64_t a8, char a9, unint64_t a10, unint64_t a11)
{
  v11 = a8;
  if (a3 == 1 || a4 == 1)
  {
    v13 = a8 >> 1;
    if (a8 >> 1 <= 1)
    {
      v13 = 1;
    }

    *a6 = v13;
    *(a6 + 8) = xmmword_239D7D700;
    if (a2 == 2)
    {
      v14 = a8 >> 3;
      if (a8 >> 3 <= 1)
      {
        v14 = 1;
      }

      v15 = a10 < 4 && a5 > 0xFF;
      v16 = 16;
      if (v15)
      {
        v16 = 8;
      }

      *a6 = v14;
      *(a6 + 8) = v16;
      if (a9)
      {
        *a6 = 2 * a8;
        *(a6 + 8) = 1;
      }
    }

    else if (a9)
    {
      if (a3 == 2)
      {
        *a6 = 2 * a8;
        *(a6 + 8) = 1;
        if (a10 >= 2)
        {
          *a6 = 8 * a8;
        }
      }

      else
      {
        *a6 = 4 * a8;
        *(a6 + 8) = 1;
        if (a10 > 2 || a2 > 1)
        {
          v20 = 2 * a8;
          if (a10 <= 2)
          {
            v20 = 4 * a8;
          }

          *a6 = v20 << (a2 > 1);
        }
      }
    }

    return;
  }

  if (a2 == 2 && a3 == 2 && a4 == 2)
  {
    v12 = a8 >> 3;
    if (a8 >> 3 <= 1)
    {
      v12 = 1;
    }

    *a6 = v12;
    *(a6 + 8) = xmmword_239D91380;
    if (a5 >= 0x100 && a10 <= 3)
    {
      *(a6 + 8) = 8;
    }

    if (a9)
    {
      goto LABEL_12;
    }

    return;
  }

  if (a2 != 2 || a3 != 3 || a4 != 3 || a5 >= 0x21 && a10 < 0x40)
  {
    v17 = a8 >> 2;
    if (a8 >> 2 <= 1)
    {
      v17 = 1;
    }

    *a6 = v17;
    *(a6 + 8) = xmmword_239D91380;
    v18 = 2 * a8;
    if (!a9)
    {
      v19 = 16;
      goto LABEL_65;
    }

    if (a3 == 2)
    {
      v19 = 1;
      *a6 = v18;
      *(a6 + 8) = 1;
      v17 = 2 * a8;
      if (a10 < 2)
      {
        goto LABEL_65;
      }

      v17 = 8 * a8;
    }

    else
    {
      v19 = 1;
      *a6 = 4 * a8;
      *(a6 + 8) = 1;
      if (a10 <= 2)
      {
        v23 = 4 * a8;
      }

      else
      {
        v23 = 2 * a8;
      }

      v17 = v23 << (a2 > 1);
      if (a10 <= 2 && a2 < 2)
      {
LABEL_65:
        if (a1)
        {
          v24 = 2 * a7;
          if (v17 <= 2 * a7 || v17 <= v18)
          {
            goto LABEL_70;
          }
        }

        else
        {
          v17 = 4 * a8;
          *a6 = 4 * a8;
          v19 = 1;
          *(a6 + 8) = vdupq_n_s64(1uLL);
          v24 = 2 * a7;
          if (4 * a8 <= 2 * a7 || v17 <= v18)
          {
LABEL_70:
            if (v17 > v24)
            {
              goto LABEL_71;
            }

            goto LABEL_73;
          }
        }

        *a6 = v18;
        v17 = 2 * a8;
        if (v18 > v24)
        {
LABEL_71:
          if (v17 > a8)
          {
            *a6 = a8;
            v17 = a8;
          }
        }

LABEL_73:
        if (v17 * v19 >= a7 * a5)
        {
          if (a8 >> 3 <= 1)
          {
            v17 = 1;
          }

          else
          {
            v17 = a8 >> 3;
          }

          *a6 = v17;
          *(a6 + 8) = xmmword_239D91390;
          v19 = 8;
        }

        if (a11 >= 2 && v17 * v19 > a11)
        {
          v26 = v17;
          v27 = v19;
          do
          {
            v28 = v26 >> 1;
            if (v26 <= 1)
            {
              v29 = v17;
            }

            else
            {
              v29 = v26 >> 1;
            }

            if (v26 <= 1)
            {
              v28 = v26;
            }

            v30 = v27 >= 2;
            if (v27 < 2)
            {
              v17 = v29;
            }

            else
            {
              v19 = v27 >> 1;
            }

            if (v27 >= 2)
            {
              v27 >>= 1;
            }

            else
            {
              v27 = 1;
            }

            if (!v30)
            {
              v26 = v28;
            }
          }

          while (v26 * v27 > a11);
          *a6 = v17;
          *(a6 + 8) = v19;
        }

        return;
      }
    }

    *a6 = v17;
    v19 = 1;
    goto LABEL_65;
  }

  v21 = a8 >> 3;
  if (a8 >> 3 <= 1)
  {
    v21 = 1;
  }

  *a6 = v21;
  *(a6 + 8) = xmmword_239D91380;
  if (a5 >= 0x100 && a10 <= 3)
  {
    *(a6 + 8) = 8;
  }

  if (a9)
  {
    if (a10 <= 8 || a7 <= 0x10)
    {
LABEL_12:
      if (a8 <= 1)
      {
        v11 = 1;
      }

      *a6 = v11;
      *(a6 + 8) = vdupq_n_s64(1uLL);
      return;
    }

    v22 = 2 * a8;
    if (2 * a8 <= 1)
    {
      v22 = 1;
    }

    *a6 = v22;
    *(a6 + 8) = xmmword_239D7D700;
  }
}

BOOL sub_239D05248(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7, unint64_t a8, unint64_t a9)
{
  if (a6 == 1 && a7 == 1)
  {
    return 1;
  }

  if (a6 == 2 && a7 == 2)
  {
    if (a4 <= 2 && a5 >= 2)
    {
      if (a8 < 0x11)
      {
        return 0;
      }

      if (a8 <= 0x100 && a9 < 3)
      {
        return 0;
      }
    }
  }

  else if (a6 == 1 && a7 > 3)
  {
    return 0;
  }

  return a6 < 5 || a7 < 4 || a5 != 1;
}

uint64x2_t sub_239D05324@<Q0>(char a1@<W2>, unint64_t a2@<X4>, uint64_t a3@<X5>, uint64_t a4@<X6>, unint64_t a5@<X7>, uint64x2_t *a6@<X8>, unint64_t a7, unint64_t a8, char a9, unint64_t a10, unint64_t a11)
{
  a6->i64[0] = 0;
  a6->i64[1] = 0;
  a6[1].i64[0] = 0;
  sub_239D04EEC(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
  if (a2 == 2 && a3 == 2 && a4 == 2)
  {
    v16 = 4;
    if (a7 <= 0x7F)
    {
      v16 = 1;
    }

    v17.i64[0] = vdupq_n_s64(1uLL).u64[0];
    v17.i64[1] = v16;
    result = vshlq_u64(*a6, v17);
    *a6 = result;
  }

  return result;
}

id sub_239D05FA8(uint64_t a1, void *a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = objc_msgSend_destinationFeatureChannelOffset(a2, a2, a3, a4, a5, a6, a7, a8);
  v20 = objc_msgSend_sourceFeatureChannelMaxCount(a2, v13, v14, v15, v16, v17, v18, v19);
  v28 = MEMORY[0x277CD72F8];
  v29 = *&a4[*MEMORY[0x277CD72F8]];
  v30 = v29 >= v12;
  v31 = v29 - v12;
  if (!v30)
  {
    v31 = 0;
  }

  if (v31 >= v20)
  {
    v32 = v20;
  }

  else
  {
    v32 = v31;
  }

  v33 = objc_msgSend_sourceFeatureChannelOffset(a2, v21, v22, v23, v24, v25, v26, v27);
  v41 = objc_msgSend_sourceFeatureChannelMaxCount(a2, v34, v35, v36, v37, v38, v39, v40);
  v49 = *(a3 + *v28);
  v30 = v49 >= v33;
  v50 = v49 - v33;
  if (!v30)
  {
    v50 = 0;
  }

  if (v50 >= v41)
  {
    v50 = v41;
  }

  if (v32 >= v50)
  {
    v32 = v50;
  }

  v51 = MEMORY[0x277CD7058];
  v52 = objc_msgSend_width(a4, v42, v43, v44, v45, v46, v47, v48);
  v60 = objc_msgSend_height(a4, v53, v54, v55, v56, v57, v58, v59);
  v64 = objc_msgSend_texture2DDescriptorWithPixelFormat_width_height_mipmapped_(v51, v61, 73, v52, v60, 0, v62, v63);
  objc_msgSend_setArrayLength_(v64, v65, (v32 + 3) >> 2, v66, v67, v68, v69, v70);
  objc_msgSend_setTextureType_(v64, v71, 3, v72, v73, v74, v75, v76);
  objc_msgSend_setResourceOptions_(v64, v77, 32, v78, v79, v80, v81, v82);
  objc_msgSend_setUsage_(v64, v83, 19, v84, v85, v86, v87, v88);
  if (!v32)
  {
    if (a1)
    {
LABEL_19:

      return objc_msgSend_temporaryStateWithCommandBuffer_(MPSNNGradientState, v89, a1, v90, v91, v92, v93, v94);
    }

    goto LABEL_24;
  }

  v95 = objc_msgSend_resourceListWithTextureDescriptors_(MEMORY[0x277CD72A0], v89, v64, v90, v91, v92, v93, v94, 0);
  v96 = v95;
  if (a1)
  {
    if (v95)
    {

      return objc_msgSend_temporaryStateWithCommandBuffer_resourceList_(MPSNNGradientState, v89, a1, v95, v91, v92, v93, v94);
    }

    goto LABEL_19;
  }

  if (!v95)
  {
LABEL_24:
    v113 = [MPSNNGradientState alloc];
    v112 = objc_msgSend_initWithResource_(v113, v114, 0, v115, v116, v117, v118, v119);
    goto LABEL_25;
  }

  v98 = [MPSNNGradientState alloc];
  v106 = objc_msgSend_device(a2, v99, v100, v101, v102, v103, v104, v105);
  v112 = objc_msgSend_initWithDevice_resourceList_(v98, v107, v106, v96, v108, v109, v110, v111);
LABEL_25:

  return v112;
}

uint64_t sub_239D07118(void *a1, void *a2, void *a3, uint64_t a4, int a5)
{
  v6 = a4;
  v697 = a1[25];
  v691 = a1[26];
  v692 = a1[27];
  v690 = a1[28];
  v715 = a1[29];
  v708 = a1[30];
  v8 = *(a1 + *MEMORY[0x277CD7378]);
  v9 = MEMORY[0x277CD7350];
  v698 = *(a1 + *MEMORY[0x277CD7350]);
  v10 = (a4 + 104);
  MEMORY[0x23EE7D040](v746, a3, *(a4 + 104));
  v18 = (v10 + 64);
  v687 = (v10 - 40);
  v709 = (v10 + 88);
  v711 = v10 - 16;
  v19 = v10 - 96;
  v696 = v10 - 32;
  v20 = v10 - 56;
  v701 = (v10 + 24);
  v722 = (v10 + 40);
  v714 = v10 + 48;
  v718 = (v10 + 8);
  v719 = v10 - 80;
  v699 = (v10 + 32);
  v706 = (v10 + 56);
  v707 = (v10 + 16);
  v731 = a5;
  v689 = v8;
  if (a5 == 3 && (v8 & 1) == 0)
  {
    if (!*v718 && MTLReportFailureTypeEnabled())
    {
      v21 = objc_opt_class();
      v660 = NSStringFromClass(v21);
      MTLReportFailure();
    }

LABEL_9:
    v32 = a1[34];
    if (a5 == 3 && v32 == 4)
    {
      if (v715 <= 1 && v708 < 2)
      {
        v33 = 4;
LABEL_32:
        v693 = v33;
        v704 = 0;
        v49 = 0;
        v682 = 0;
        v684 = 0;
        v716 = 0;
        v744 = *v18;
        v745 = v18[1].i64[0];
        goto LABEL_33;
      }

      v34 = objc_msgSend_width(*v6, v11, v12, v13, v14, v15, v16, v17, v660);
      v42 = objc_msgSend_height(*v6, v35, v36, v37, v38, v39, v40, v41);
      if ((*(*v19 + 5) & 1) == 0)
      {
        v33 = 0;
        goto LABEL_32;
      }

      v50 = vmovn_s64(*v18);
      v51 = vmul_s32(__PAIR64__(v708, v715), vadd_s32(__PAIR64__(v691, v697), -1));
      v52 = vadd_s32(v51, 0x100000001);
      v53 = vsub_s32(v50, vshr_n_s32(vsra_n_u32(v52, v52, 0x1FuLL), 1uLL));
      v54 = vmla_s32(vsra_n_s32(v50, vsra_n_u32(v51, v51, 0x1FuLL), 1uLL), __PAIR64__(v690, v692), vmovn_s64(*v722));
      v728 = v53;
      v55 = vcltz_s32(v53);
      if ((vpmax_u32(v55, v55).u32[0] & 0x80000000) != 0 || (v56 = vcge_s32(v54, __PAIR64__(v42, v34)), (vpmax_u32(v56, v56).u32[0] & 0x80000000) != 0))
      {
        v57 = v6[11];
        v757 = v6[10];
        v758 = v57;
        v58 = v6[13];
        v759 = v6[12];
        v760 = v58;
        v59 = v6[7];
        v753 = v6[6];
        v754 = v59;
        v60 = v6[9];
        v755 = v6[8];
        v756 = v60;
        v61 = v6[3];
        v749 = v6[2];
        v750 = v61;
        v62 = v6[5];
        v751 = v6[4];
        v752 = v62;
        v63 = v6[1];
        v747 = *v6;
        v748 = v63;
        v64 = objc_msgSend_featureChannels(v747, v11, v43, v44, v45, v46, v47, v48);
        v65 = *(v747 + *MEMORY[0x277CD7310]) * ((v64 + 3) >> 2);
        v66 = vsub_s32(v54, v728);
        *&v67 = v66.i32[0];
        *(&v67 + 1) = v66.i32[1];
        *&v775[0].width = v67;
        v775[0].depth = v65;
        v68 = objc_alloc_init(MEMORY[0x277CD7058]);
        objc_msgSend_setTextureType_(v68, v69, v749, v70, v71, v72, v73, v74);
        v82 = objc_msgSend_pixelFormat(*(&v753 + 1), v75, v76, v77, v78, v79, v80, v81);
        objc_msgSend_setPixelFormat_(v68, v83, v82, v84, v85, v86, v87, v88);
        objc_msgSend_setWidth_(v68, v89, v67, v90, v91, v92, v93, v94);
        objc_msgSend_setHeight_(v68, v95, *(&v67 + 1), v96, v97, v98, v99, v100);
        objc_msgSend_setArrayLength_(v68, v101, v65, v102, v103, v104, v105, v106);
        objc_msgSend_setUsage_(v68, v107, 3, v108, v109, v110, v111, v112);
        objc_msgSend_setStorageMode_(v68, v113, 2, v114, v115, v116, v117, v118);
        TempTexture = MPSAutoCache::GetTempTexture();
        v120 = objc_alloc(MEMORY[0x277CD7218]);
        v128 = objc_msgSend_featureChannels(v747, v121, v122, v123, v124, v125, v126, v127);
        v134 = objc_msgSend_initWithTexture_featureChannels_(v120, v129, TempTexture, v128, v130, v131, v132, v133);

        v770 = v757;
        v771 = v758;
        v772 = v759;
        v773 = v760;
        v768 = v753;
        v769[0] = v754;
        v769[1] = v755;
        v769[2] = v756;
        v764 = v749;
        v765 = v750;
        v766 = v751;
        v767 = v752;
        v762 = v747;
        v763 = v748;
        v135 = *(&v758 + 1);
        *(&v767 + 1) = objc_msgSend_featureChannels(v747, v136, v137, v138, v139, v140, v141, v142);
        *&v772 = 0;
        *&v769[0] = objc_msgSend_featureChannelsLayout(v134, v143, v144, v145, v146, v147, v148, v149);
        *&v766 = v134;
        *(&v766 + 1) = *(&v751 + 1);
        *(&v768 + 1) = objc_msgSend_texture(v134, v150, v151, v152, v153, v154, v155, v156);
        *&v768 = objc_msgSend_textureType(v134, v157, v158, v159, v160, v161, v162, v163);
        LODWORD(v767) = MPSGetImageType(v134);
        *(&v770 + 1) = v728.i32[0];
        *&v771 = v728.i32[1];
        *(&v771 + 1) = v135;
        v164 = [MPSNNPad alloc];
        v172 = objc_msgSend_device(v134, v165, v166, v167, v168, v169, v170, v171);
        v179 = objc_msgSend_initWithDevice_(v164, v173, v172, v174, v175, v176, v177, v178);
        v187 = objc_msgSend_featureChannelFormat(v134, v180, v181, v182, v183, v184, v185, v186);
        LODWORD(v195) = -8388609;
        if (v187 == 3)
        {
          *&v195 = -65504.0;
        }

        objc_msgSend_setFillValue_(v179, v188, v189, v190, v191, v192, v193, v194, v195);
        v761.origin.x = v728.i32[0];
        v761.origin.y = v728.i32[1];
        v761.origin.z = v135;
        objc_msgSend_setOffset_(v179, v196, &v761, v197, v198, v199, v200, v201);
        objc_msgSend_setEdgeMode_(v179, v202, 4, v203, v204, v205, v206, v207);
        origin = v775[0];
        if (v179)
        {
          objc_msgSend_clipRect(v179, v208, v209, v210, v211, v212, v213, v214);
        }

        else
        {
          memset(&v761, 0, sizeof(v761));
        }

        MPSGetEffectiveClipRegion(v769 + 1, &origin, &v761);
        if ((*(v179 + *MEMORY[0x277CD7378]) & 8) != 0)
        {
          v658 = *(v179 + *MEMORY[0x277CD7360]);
          if (!v658)
          {
            v659 = objc_opt_class();
            v658 = NSStringFromClass(v659);
          }

          v221 = a2;
          objc_msgSend_pushDebugGroup_(a2, v215, v658, v216, v217, v218, v219, v220);
        }

        else
        {
          v221 = 0;
        }

        (*(v179 + 288))(*(v179 + 304), a2, a3, &v762);
        if (v221)
        {
          objc_msgSend_popDebugGroup(v221, v222, v223, v224, v225, v226, v227, v228);
        }

        v229 = v134;
        v33 = 0;
        v18 = (&v757 + 8);
        v719 = &v748 + 8;
        v687 = &v751;
        v709 = &v759;
        v711 = &v752 + 8;
        v10 = &v753 + 8;
        v19 = &v747 + 8;
        v696 = &v751 + 8;
        v20 = &v750;
        v707 = &v754 + 4;
        v701 = &v755;
        v722 = &v756;
        v747 = v766;
        v748 = v767;
        v714 = &v756 + 1;
        v718 = &v754;
        *&v750 = *&v769[0];
        *(&v757 + 1) -= v728.i32[0];
        v699 = &v755 + 2;
        v706 = &v757;
        v749 = v768;
        *&v758 = v758 - v728.i32[1];
        v6 = &v747;
        goto LABEL_32;
      }

      v32 = 1;
    }

    v49 = 0;
    v682 = 0;
    v684 = 0;
    v716 = 0;
    v744 = *v18;
    v745 = *(v10 + 10);
    v693 = v32;
    v704 = v32 == 1;
    goto LABEL_33;
  }

  if (a5 != 1)
  {
    goto LABEL_9;
  }

  v22 = objc_msgSend_zeroPadSizeX(a1, v11, v12, v13, v14, v15, v16, v17);
  v30 = objc_msgSend_zeroPadSizeY(a1, v23, v24, v25, v26, v27, v28, v29);
  v31 = a1[34];
  v744 = *v18;
  v745 = *(v10 + 10);
  v684 = v22;
  v682 = v30;
  if (v31 == 1)
  {
    v716 = (v22 | v30) != 0;
    v704 = 1;
    v693 = 1;
  }

  else
  {
    v693 = v31;
    v704 = 0;
    v716 = 0;
  }

  v49 = 1;
LABEL_33:
  v230 = *(v6 + 24);
  v231 = *(v6 + 5);
  v232 = *(v6 + 11);
  v233 = *(v6 + 3);
  v713 = *(v6 + 12);
  if (*(v6 + 4) == v713)
  {
    v700 = *(v6 + 24);
    v234 = *(v6 + 13);
    v729 = *(v6 + 5);
    v235 = v231;
    v236 = v234;
    v726 = v234;
    if (*v20 == 1)
    {
      goto LABEL_35;
    }

LABEL_43:
    v702 = 1;
    v245 = v232;
    v246 = v233 + 3;
    v727 = (v233 + 3) >> 2;
    if (v731 == 3)
    {
      goto LABEL_76;
    }

    goto LABEL_44;
  }

  if (v232 - v230 >= 4)
  {
    v232 = 4;
  }

  else
  {
    v232 -= v230;
  }

  v729 = objc_msgSend_newTextureViewWithPixelFormat_textureType_levels_slices_(v231, v11, **v19 & 0x3FFLL, 2, 0, 1, 0, 1, v660);
  v248 = objc_msgSend_newTextureViewWithPixelFormat_textureType_levels_slices_(*v10, v247, **v696 & 0x3FFLL, 2, 0, 1, (v230 + 3) >> 2, 1);
  if ((objc_msgSend_retainedReferences(a3, v249, v250, v251, v252, v253, v254, v255) & 1) == 0)
  {
    v256 = v729;
    v257 = v248;
    v743[0] = MEMORY[0x277D85DD0];
    v743[1] = 3221225472;
    v743[2] = sub_239D094A4;
    v743[3] = &unk_278B2F6B0;
    v743[4] = v248;
    v743[5] = v729;
    objc_msgSend_addCompletedHandler_(a3, v258, v743, v259, v260, v261, v262, v263);
  }

  v700 = 0;
  v713 = 2;
  v726 = v248;
  if (*v20 != 1)
  {
    goto LABEL_43;
  }

LABEL_35:
  v702 = (*v719 + 3) >> 2;
  v245 = 4;
  v246 = 7;
  v727 = 1;
  if (v731 == 3)
  {
    goto LABEL_76;
  }

LABEL_44:
  v674 = v744;
  v668 = v745;
  v264 = a1[25];
  v265 = a1[26];
  v680 = a1[27];
  v678 = a1[28];
  v665 = *(a1 + *MEMORY[0x277CD7378]);
  if (v49)
  {
    v672 = objc_msgSend_zeroPadSizeX(a1, v237, v238, v239, v240, v241, v242, v243);
    v670 = objc_msgSend_zeroPadSizeY(a1, v266, v267, v268, v269, v270, v271, v272);
  }

  else
  {
    v670 = 0;
    v672 = 0;
  }

  v676 = *(*(a1 + *MEMORY[0x277CD7370]) + 32);
  v685 = MPSIsTextureTwiddled();
  v694 = MPSIsTextureTwiddled();
  v273 = (*(**(a1 + *v9) + 96))(*(a1 + *v9));
  if (((v685 | v694) & 1) == 0)
  {
    goto LABEL_247;
  }

  if (v731)
  {
    _ZF = v693 == 0;
  }

  else
  {
    _ZF = 1;
  }

  v275 = v716;
  if (!_ZF)
  {
    v275 = 1;
  }

  if ((v275 & 1) != 0 || (v276 = v273, v277 = (*(*v676 + 16))(v676, v694, v685, v727, v678, v264, v265, *v714, v702), v273 = v276, v277))
  {
LABEL_247:
    if ((v264 - 1) <= 4 && (v265 - 1) <= 4)
    {
      v662 = (v264 & 6) == 2 && v265 == v264 && (*(*v676 + 24))(v676, v694, v685, v727, v680, v264, v264, (v694 ^ 1 | v273) & 1) != 0;
      MPSLibrary::CreateUberShaderKey();
      PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
      objc_msgSend_setComputePipelineState_(a2, v279, PipelineStateForMPSKey, v280, v281, v282, v283, v284, 0, 0, 0, 0, 0);
      v663 = objc_msgSend_threadExecutionWidth(PipelineStateForMPSKey, v285, v286, v287, v288, v289, v290, v291);
      v299 = v663;
      if (v663 <= 1)
      {
        v299 = 1;
      }

      v661 = v299;
      v300 = objc_msgSend_maxTotalThreadsPerThreadgroup(PipelineStateForMPSKey, v292, v293, v294, v295, v296, v297, v298);
      MPSLibrary::ReleaseMPSKey();
      *&v244 = v680;
      *(&v244 + 1) = v678;
      *&v762 = vcvt_f32_f64(vcvtq_f64_s64(v674));
      *(&v762 + 1) = v244;
      v301 = *v707;
      WORD1(v763) = *v701;
      LOWORD(v763) = v301;
      v302 = v722->i64[0];
      v303 = *v714;
      WORD3(v763) = *v714;
      WORD2(v763) = v302;
      *(&v763 + 2) = 1.0 / (v265 * v264);
      v304 = -1;
      v305 = v672;
      if (v672 >= 0xFFFF)
      {
        v305 = -1;
      }

      WORD4(v767) = v305;
      if (v670 < 0xFFFF)
      {
        v304 = v670;
      }

      WORD5(v767) = v304;
      v306 = *v719;
      v307 = (*v719 + 3) >> 2;
      WORD6(v764) = v307;
      v308 = (v232 + 3) >> 2;
      HIWORD(v764) = v308;
      if (*v709 < *v711)
      {
        if (v306 + v700 > v232)
        {
          v309 = v303;
          v310 = v302;
          if ((v665 & 1) == 0 && MTLReportFailureTypeEnabled())
          {
            v311 = objc_opt_class();
            NSStringFromClass(v311);
            MTLReportFailure();
          }

          v306 = v232 - v700;
          if (v232 == v700)
          {
            goto LABEL_176;
          }

          LOWORD(v302) = v310;
          LOWORD(v303) = v309;
        }

        if (*v718 == 1)
        {
          LOWORD(v312) = 0;
          v313 = (v306 + 3) >> 2;
          v314 = (v700 + 3) >> 2;
          v315 = 1;
        }

        else
        {
          LOWORD(v314) = 0;
          v312 = (v700 + 3) >> 2;
          HIDWORD(v764) = 65537;
          v307 = 1;
          v315 = (v232 + 3) >> 2;
          LODWORD(v313) = v702;
          v308 = 1;
        }

        WORD4(v765) = v315;
        WORD5(v765) = v312;
        LODWORD(v765) = v313;
        v427 = 1.0 / v313;
        *(&v765 + 1) = v427;
        WORD6(v763) = v307 * v668;
        v725 = v313;
        WORD6(v767) = v307 * v668 + *v706 * v313;
        HIWORD(v763) = v314 + *v699 * v308;
        WORD1(v764) = v727;
        *(&v764 + 2) = v727;
        v428 = v722->i32[0] * v727;
        WORD3(v764) = *v714;
        WORD2(v764) = v428;
        v429 = v302;
        v430 = v303;
        if (v662)
        {
          v431 = v303;
        }

        else
        {
          v431 = v302;
        }

        v432 = v431;
        v433 = (*(*v676 + 32))(v676, v694, v685);
        memset(&v761, 0, 24);
        (*(*v676 + 40))(&v761);
        if (v702 < 2 * v661 || v661 < v432)
        {
          x = v761.origin.x;
          y = v761.origin.y;
          z = v761.origin.z;
        }

        else
        {
          x = 8;
          if (v432 > 7)
          {
            v433 = 8;
          }

          if (v663 < 4)
          {
            z = 1;
          }

          else
          {
            z = v661 >> 2;
          }

          y = 1;
          v761.origin.y = 1;
          v761.origin.z = z;
          if (v432 <= 0xF)
          {
            if (v663 < 8)
            {
              z = 1;
            }

            else
            {
              z = v661 >> 3;
            }

            v761.origin.z = z;
            x = 8;
            y = 1;
          }
        }

        if (v300 >= 2)
        {
          while (y * z * x > v300)
          {
            if (y >= 2)
            {
              y >>= 1;
              v761.origin.y = y;
            }

            else if (x < 2)
            {
              if (z >= 2)
              {
                z >>= 1;
                v761.origin.z = z;
              }
            }

            else
            {
              x >>= 1;
            }
          }
        }

        if (x <= 1)
        {
          x = 1;
        }

        v761.origin.x = x;
        v437 = (v433 * v265 * y + v430 - 1) / (v433 * v265 * y);
        v438 = (v433 * v264 * y + v429 - 1) / (v433 * v264 * y);
        if (v662)
        {
          v439 = v438;
        }

        else
        {
          v439 = v437;
        }

        v440.f64[0] = v439;
        WORD2(v767) = v439;
        v440.f64[1] = v727;
        __asm { FMOV            V1.2D, #1.0 }

        *(&v766 + 1) = vcvt_f32_f64(vdivq_f64(_Q1, v440));
        WORD3(v767) = v433;
        Sampler = MPSDevice::GetSampler();
        objc_msgSend_setSamplerState_atIndex_(a2, v445, Sampler, 0, v446, v447, v448, v449);
        objc_msgSend_setThreadgroupMemoryLength_atIndex_(a2, v450, 0, 0, v451, v452, v453, v454);
        objc_msgSend_setTexture_atIndex_(a2, v455, v729, 0, v456, v457, v458, v459);
        objc_msgSend_setTexture_atIndex_(a2, v460, v726, 1, v461, v462, v463, v464);
        objc_msgSend_setBytes_length_atIndex_(a2, v465, &v762, 104, 0, v466, v467, v468);
        v474 = v761.origin.z;
        if (v761.origin.z)
        {
          v474 = (v761.origin.z + v725 * v439 * *v706 - 1) / v761.origin.z;
        }

        v775[0].width = v727;
        v775[0].height = (v432 + v761.origin.x - 1) / v761.origin.x;
        v775[0].depth = v474;
        origin = v761.origin;
        objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v469, v775, &origin, v470, v471, v472, v473);
LABEL_176:

LABEL_236:
        v369 = 0;
        goto LABEL_237;
      }
    }
  }

LABEL_76:
  if (*v709 >= *v711)
  {
    goto LABEL_236;
  }

  v316 = v744;
  LODWORD(v244) = *v707 * ((v245 + 3) >> 2);
  WORD2(v244) = *v701;
  v677 = v244;
  v686 = v722->i32[0];
  v710 = *v714;
  v317 = *v719;
  v318 = *v719;
  if (*v719 + v700 > v232)
  {
    if ((v689 & 1) == 0 && MTLReportFailureTypeEnabled())
    {
      v319 = objc_opt_class();
      v660 = NSStringFromClass(v319);
      MTLReportFailure();
    }

    v318 = v232 - v700;
    if (v232 == v700)
    {
      goto LABEL_236;
    }
  }

  v664 = (v245 + 3) >> 2;
  v320 = (v232 + 3) >> 2;
  v321 = (v318 + 3) >> 2;
  if (*v718 != 1)
  {
    LODWORD(v321) = v702;
  }

  v712 = v321;
  if (*v718 == 1)
  {
    v322 = v320;
  }

  else
  {
    v322 = 1;
  }

  v675 = v322;
  if (*v718 == 1)
  {
    v323 = (v317 + 3) >> 2;
  }

  else
  {
    LOWORD(v323) = 1;
  }

  if (*v718 == 1)
  {
    v324 = (v700 + 3) >> 2;
  }

  else
  {
    LOWORD(v324) = 0;
  }

  v669 = v324;
  if (*v718 == 1)
  {
    v325 = (v317 + 3) >> 2;
  }

  else
  {
    v325 = 1;
  }

  LOWORD(v681) = v325;
  if (*v718 == 1)
  {
    v326 = v320;
  }

  else
  {
    v326 = 1;
  }

  v679 = v326;
  if (*v718 == 1)
  {
    v327 = 1;
  }

  else
  {
    v327 = v320;
  }

  v673 = v327;
  if (*v718 == 1)
  {
    v328 = 0;
  }

  else
  {
    v328 = (v700 + 3) >> 2;
  }

  v671 = v328;
  v329 = v745;
  v667 = *v699;
  if ((v689 & 1) == 0)
  {
    objc_msgSend_numberOfImages(*v6, v237, v238, v239, v240, v241, v242, v243);
    v330 = v745;
    v331 = *v706;
    if (v331 + v330 > objc_msgSend_numberOfImages(*v6, v332, v333, v334, v335, v336, v337, v338) && MTLReportFailureTypeEnabled())
    {
      v656 = objc_opt_class();
      v660 = NSStringFromClass(v656);
      MTLReportFailure();
    }

    objc_msgSend_numberOfImages(*v687, v339, v340, v341, v342, v343, v344, v345, v660);
    v346 = *v699;
    v347 = *v706;
    if (v347 + v346 > objc_msgSend_numberOfImages(*v687, v348, v349, v350, v351, v352, v353, v354) && MTLReportFailureTypeEnabled())
    {
      v657 = objc_opt_class();
      NSStringFromClass(v657);
      MTLReportFailure();
    }
  }

  v355 = (v316.i64[0] * v727);
  v356 = v316.i64[1];
  *&v357 = v355;
  *(&v357 + 1) = v316.i64[1];
  v695 = v704 && v731 != 3 && v731 || v716;
  v358 = v691 - 1;
  if (v691 == 1)
  {
    v359 = 0;
    *&v357 = v355 - ((v246 >> 2) * ((v715 * (v697 - 1) + 1) >> 1));
    v360 = v697;
LABEL_116:
    v361 = 1.0 / v360;
    v362 = v697;
    goto LABEL_119;
  }

  v363 = v697 - 1;
  if (v697 == 1)
  {
    *(&v357 + 1) = v356 - ((v708 * v358 + 1) >> 1);
    v361 = 1.0 / v691;
    v359 = 4;
    v362 = v691;
  }

  else
  {
    v362 = 0;
    v361 = 0.0;
    v359 = -1;
    if (v363 <= 2 && v697 == v691)
    {
      if (!v695)
      {
        if (v697 == 2)
        {
          v359 = 6;
        }

        else
        {
          v359 = 8;
        }

        *&v357 = v355 - ((v246 >> 2) * ((v715 * v363 + 1) >> 1));
        *(&v357 + 1) = v356 - ((v708 * v363 + 1) >> 1);
        v360 = v697 * v697;
        goto LABEL_116;
      }

      v362 = 0;
    }
  }

LABEL_119:
  HIDWORD(v364) = v710;
  LODWORD(v364) = v686 * v727;
  v688 = v364;
  v365 = v722->i64[0];
  HIDWORD(v766) = 1065353216;
  v366 = -1;
  v367 = v684;
  if (v684 >= 0xFFFF)
  {
    v367 = -1;
  }

  WORD4(v767) = v367;
  if (v682 < 0xFFFF)
  {
    v366 = v682;
  }

  WORD5(v767) = v366;
  v368 = v246 > 7 && v704;
  v666 = v357;
  if (v368 && (v731 == 3 || !v731))
  {
    *(&v766 + 3) = 1.0 / v727;
  }

  v683 = v690;
  v705 = v329 * v323;
  if (v359 == -1)
  {
    v761.origin.y = 0;
    v761.origin.x = 0;
    v761.origin.z = 0;
    v370 = *v6;
    v761.origin.x = *(*v6 + *MEMORY[0x277CD7330]);
    v761.origin.y = *&v370[*MEMORY[0x277CD7308]];
    v761.origin.z = *&v370[*MEMORY[0x277CD7310]] * v702;
    v371 = v708 * v358 + 1;
    MPSSeparatePassDimensions();
    height = v775[0].height;
    v739 = v775[0].width * v727;
    v741 = v775[0].depth * v712;
    if (v691 * v697 < 9 && *(*v696 + 4) << 32 == 0x800000000)
    {
      v373 = MTLPixelFormatRGBA16Float;
    }

    else
    {
      v373 = MTLPixelFormatRGBA32Float;
    }

    PixelInfo = MPSDevice::GetPixelInfo(v698, v373, MPSImageFeatureChannelFormatNone);
    v374 = objc_alloc_init(MEMORY[0x277CD7058]);
    objc_msgSend_setTextureType_(v374, v375, v713, v376, v377, v378, v379, v380, &origin, v742);
    objc_msgSend_setPixelFormat_(v374, v381, v373, v382, v383, v384, v385, v386);
    objc_msgSend_setWidth_(v374, v387, v739, v388, v389, v390, v391, v392);
    objc_msgSend_setHeight_(v374, v393, height, v394, v395, v396, v397, v398);
    objc_msgSend_setArrayLength_(v374, v399, v741, v400, v401, v402, v403, v404);
    objc_msgSend_setUsage_(v374, v405, 3, v406, v407, v408, v409, v410);
    objc_msgSend_setStorageMode_(v374, v411, 2, v412, v413, v414, v415, v416);
    v417 = MPSAutoCache::GetTempTexture();

    if (*v718 == 1)
    {
      v681 = (*v719 + 3) >> 2;
      v679 = v712;
    }

    width = origin.width;
    v426 = origin.height;
    v720 = *&v775[0].width;
    v703 = v417;
    objc_msgSend_textureType(v417, v418, v419, v420, v421, v422, v423, v424);
    MPSLibrary::CreateUberShaderKey();
    v533 = MPSLibrary::GetPipelineStateForMPSKey();
    objc_msgSend_setComputePipelineState_(a2, v534, v533, v535, v536, v537, v538, v539, 0, 0, 0, 0, 0);
    v717 = v371;
    v547 = objc_msgSend_threadExecutionWidth(v533, v540, v541, v542, v543, v544, v545, v546);
    v555 = v547;
    if (v547 <= 1)
    {
      v556 = 1;
    }

    else
    {
      v556 = v547;
    }

    v557 = objc_msgSend_maxTotalThreadsPerThreadgroup(v533, v548, v549, v550, v551, v552, v553, v554);
    MPSLibrary::ReleaseMPSKey();
    objc_msgSend_setTexture_atIndex_(a2, v558, v729, 0, v559, v560, v561, v562);
    v563 = MPSDevice::GetSampler();
    objc_msgSend_setSamplerState_atIndex_(a2, v564, v563, 0, v565, v566, v567, v568);
    objc_msgSend_setTexture_atIndex_(a2, v569, v417, 1, v570, v571, v572, v573);
    *&v574 = ((width - ((v715 * (v697 - 1) + 1) >> 1)) * v727);
    __asm { FMOV            V1.2S, #1.0 }

    *&_D1 = (v727 * v692);
    *(&v574 + 1) = v426;
    v576 = vmovn_s64(v720);
    *&v762 = v574;
    *(&v762 + 1) = _D1;
    LODWORD(v763) = 0;
    WORD3(v763) = v576.i16[2];
    WORD2(v763) = v576.i16[0];
    *(&v763 + 2) = 1.0 / v697;
    HIDWORD(v763) = v705;
    LOWORD(v764) = v697;
    WORD1(v764) = v727;
    WORD3(v764) = WORD2(v688);
    WORD2(v764) = v688;
    *(&v764 + 2) = v727;
    WORD6(v764) = v681;
    HIWORD(v764) = v679;
    LODWORD(v765) = v712;
    *(&v765 + 1) = 1.0 / v712;
    DWORD2(v765) = v727;
    WORD6(v765) = v715;
    HIWORD(v765) = v708;
    LODWORD(v766) = v731;
    objc_msgSend_setBytes_length_atIndex_(a2, v577, &v762, 104, 0, v578, v579, v580);
    v586 = v557 / v556;
    v587 = v557 / v556 * v556;
    v588 = v720.u16[4] * v720.u16[0];
    _CF = v587 >= v588;
    if (v587 >= v588)
    {
      v590 = v556 >> 3;
    }

    else
    {
      v590 = v555;
    }

    if (_CF)
    {
      v586 = 8;
    }

    if (v590 <= 1)
    {
      v590 = 1;
    }

    v591 = *v706;
    v735 = (v720.u16[0] + v590 - 1) / v590;
    v736 = (v720.u16[4] + v586 - 1) / v586;
    v737 = v591 * v712;
    v732 = v590;
    v733 = v586;
    v734 = 1;
    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v581, &v735, &v732, v582, v583, v584, v585);
    v593 = *v699;
    if (*v718 == 1)
    {
      LOWORD(v721) = 0;
      v593 = v593 * v675 + ((v700 + 3) >> 2);
      LOWORD(v681) = v712;
      v679 = v320;
      LOWORD(v320) = v727;
    }

    else
    {
      v721 = (v700 + 3) >> 2;
    }

    v594 = v742[0];
    v595 = v742[1];
    v596 = v722->i64[0];
    v597 = *v714;
    WORD2(v592) = *v701;
    LODWORD(v592) = *v707 * v664;
    v723 = v592;
    MPSLibrary::CreateUberShaderKey();
    v598 = MPSLibrary::GetPipelineStateForMPSKey();
    objc_msgSend_setComputePipelineState_(a2, v599, v598, v600, v601, v602, v603, v604, 0, 0, 0, 0, 0);
    v612 = objc_msgSend_threadExecutionWidth(v598, v605, v606, v607, v608, v609, v610, v611);
    v620 = v612;
    if (v612 <= 1)
    {
      v621 = 1;
    }

    else
    {
      v621 = v612;
    }

    v622 = objc_msgSend_maxTotalThreadsPerThreadgroup(v598, v613, v614, v615, v616, v617, v618, v619);
    MPSLibrary::ReleaseMPSKey();
    objc_msgSend_setTexture_atIndex_(a2, v623, v703, 0, v624, v625, v626, v627);
    v628 = MPSDevice::GetSampler();
    objc_msgSend_setSamplerState_atIndex_(a2, v629, v628, 0, v630, v631, v632, v633);
    objc_msgSend_setTexture_atIndex_(a2, v634, v726, 1, v635, v636, v637, v638);
    *&v639 = (v594 * v727);
    *(&v639 + 1) = (v595 - (v717 >> 1));
    *&v762 = v639;
    *(&v762 + 1) = __PAIR64__(LODWORD(v683), v727);
    WORD1(v763) = WORD2(v723);
    LOWORD(v763) = v723;
    WORD3(v763) = v597;
    WORD2(v763) = v596;
    *(&v763 + 2) = 1.0 / v691;
    WORD6(v763) = 0;
    HIWORD(v763) = v593;
    LOWORD(v764) = v691;
    WORD1(v764) = v727;
    WORD3(v764) = WORD2(v688);
    WORD2(v764) = v688;
    *(&v764 + 2) = v727;
    WORD6(v764) = v681;
    HIWORD(v764) = v679;
    LODWORD(v765) = v712;
    *(&v765 + 1) = 1.0 / v712;
    WORD4(v765) = v320;
    WORD5(v765) = v721;
    WORD6(v765) = v715;
    HIWORD(v765) = v708;
    LODWORD(v766) = v731;
    objc_msgSend_setBytes_length_atIndex_(a2, v640, &v762, 104, 0, v641, v642, v643);
    v649 = v622 / v621;
    v650 = v622 / v621 * v621;
    v651 = v597 * v596;
    v652 = v650 >= v651;
    if (v650 >= v651)
    {
      v653 = v621 >> 3;
    }

    else
    {
      v653 = v620;
    }

    if (v652)
    {
      v649 = 8;
    }

    if (v653 <= 1)
    {
      v653 = 1;
    }

    v654 = *v706;
    v735 = (v596 + v653 - 1) / v653;
    v736 = (v597 + v649 - 1) / v649;
    v737 = v654 * v712;
    v732 = v653;
    v733 = v649;
    v734 = 1;
    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v644, &v735, &v732, v645, v646, v647, v648);

    goto LABEL_236;
  }

  if (!v726 || !v729 || v729 != v726 && (objc_msgSend_isEqual_(v729, v237, v726, v239, v240, v241, v690, v243) & 1) == 0)
  {
    MPSLibrary::CreateUberShaderKey();
    v475 = MPSLibrary::GetPipelineStateForMPSKey();
    objc_msgSend_setComputePipelineState_(a2, v476, v475, v477, v478, v479, v480, v481, 0, 0, 0, 0, 0);
    v489 = objc_msgSend_threadExecutionWidth(v475, v482, v483, v484, v485, v486, v487, v488);
    if (v489 <= 1)
    {
      v497 = 1;
    }

    else
    {
      v497 = v489;
    }

    v498 = objc_msgSend_maxTotalThreadsPerThreadgroup(v475, v490, v491, v492, v493, v494, v495, v496);
    MPSLibrary::ReleaseMPSKey();
    objc_msgSend_setTexture_atIndex_(a2, v499, v729, 0, v500, v501, v502, v503);
    v504 = MPSDevice::GetSampler();
    objc_msgSend_setSamplerState_atIndex_(a2, v505, v504, 0, v506, v507, v508, v509);
    objc_msgSend_setTexture_atIndex_(a2, v510, v726, 1, v511, v512, v513, v514);
    *&v762 = v666;
    *(&v762 + 1) = __PAIR64__(LODWORD(v683), (v727 * v692));
    WORD1(v763) = WORD2(v677);
    LOWORD(v763) = v677;
    WORD3(v763) = v710;
    WORD2(v763) = v686;
    *(&v763 + 2) = v361;
    WORD6(v763) = v705;
    HIWORD(v763) = v669 + v667 * v675;
    LOWORD(v764) = v362;
    WORD1(v764) = v727;
    WORD3(v764) = WORD2(v688);
    WORD2(v764) = v688;
    *(&v764 + 2) = v727;
    WORD6(v764) = v681;
    HIWORD(v764) = v679;
    LODWORD(v765) = v712;
    *(&v765 + 1) = 1.0 / v712;
    WORD4(v765) = v673;
    WORD5(v765) = v671;
    WORD6(v765) = v715;
    HIWORD(v765) = v708;
    LODWORD(v766) = v731;
    objc_msgSend_setBytes_length_atIndex_(a2, v515, &v762, 104, 0, v516, v517, v518);
    v524 = v498 / v497;
    if ((*(v698 + 1477) & 4) != 0)
    {
      v527 = v726;
      v528 = MPSIsTextureTwiddled();
      if ((((*(v698 + 368) - 5) < 2) & v528 & MPSIsTextureTwiddled()) == 1 && v712 >= 2)
      {
        v526 = v498 / (4 * v497);
        if (v526 <= 1)
        {
          v526 = 1;
        }

        v524 = v497;
      }

      else
      {
        v526 = v497;
      }
    }

    else
    {
      v525 = 4;
      if (v524 < 4)
      {
        v525 = v498 / v497;
      }

      if (v525 <= 1)
      {
        v524 = 1;
      }

      else
      {
        v524 = v525;
      }

      v526 = v497;
      v527 = v726;
    }

    v529 = v497 >> 3;
    if (v497 >> 3 <= 1)
    {
      v529 = 1;
    }

    v530 = 8;
    if (v526 * v524 >= v365 * v710)
    {
      v526 = v529;
    }

    else
    {
      v530 = v524;
    }

    v531 = *v706;
    v532 = (*v714 + v530 - 1) / v530;
    v761.origin.x = (v365 + v526 - 1) / v526;
    v761.origin.y = v532;
    v761.origin.z = v531 * v712;
    v775[0].width = v526;
    v775[0].height = v530;
    v775[0].depth = 1;
    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v519, &v761, v775, v520, v521, v522, v523);

    goto LABEL_236;
  }

  v369 = -18;
LABEL_237:
  MPSAutoCache::~MPSAutoCache(v746);
  return v369;
}

void sub_239D094A4(uint64_t a1)
{
  v2 = *(a1 + 40);
}

uint64_t sub_239D094E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 64);
  v3 = MPSCreateFunctionConstantValues();
  v20 = v2 & 7;
  v19 = (v2 & 8) != 0;
  v18 = (v2 & 0x10) != 0;
  objc_msgSend_setConstantValue_type_atIndex_(v3, v4, &v20, 37, 2, v5, v6, v7);
  objc_msgSend_setConstantValue_type_atIndex_(v3, v8, &v19, 53, 3, v9, v10, v11);
  objc_msgSend_setConstantValue_type_atIndex_(v3, v12, &v18, 53, 4, v13, v14, v15);
  v16 = _MPSNewSpecializedFunction();

  return v16;
}

void sub_239D095A4(char *a1, void *a2, void *a3, uint64_t a4, unsigned int a5)
{
  v639 = *MEMORY[0x277D85DE8];
  if (!*(a4 + 160))
  {
    return;
  }

  v5 = a4;
  if (!*(a4 + 168) || !(*(a4 + 114) * *(a4 + 112)))
  {
    return;
  }

  v577 = *(a4 + 168);
  v578 = *(a4 + 160);
  v598 = (a4 + 24);
  MEMORY[0x23EE7D040](v609, a3, *(*(a4 + 24) + 96));
  v590 = v5 + 104;
  v16 = (v5 + 124);
  v17 = v5 + 120;
  v18 = (v5 + 112);
  v582 = (v5 + 96);
  v601 = (v5 + 8);
  v604 = a1;
  v597 = a5;
  v584 = v5 + 88;
  v586 = a3;
  v579 = (v5 + 32);
  v581 = (v5 + 48);
  v567 = (v5 + 192);
  v568 = (v5 + 184);
  if (a5 != 3 || *(a1 + 34) != 4 || *(v5 + 62) <= 1u && *(v5 + 63) < 2u)
  {
    goto LABEL_66;
  }

  v19 = objc_msgSend_width(**v598, v9, v10, v11, v12, v13, v14, v15);
  v27 = objc_msgSend_height(**v598, v20, v21, v22, v23, v24, v25, v26);
  v16 = (v5 + 124);
  v18 = (v5 + 112);
  if ((*(*(*(v5 + 3) + 8) + 5) & 1) == 0)
  {
    goto LABEL_66;
  }

  v28.i32[0] = *(v5 + 56);
  v28.i32[1] = *(v5 + 57);
  v29.i32[0] = *(v5 + 62);
  v29.i32[1] = *(v5 + 63);
  v30 = vmovn_s64(*(v5 + 184));
  v31.i32[0] = *(v5 + 60);
  v31.i32[1] = *(v5 + 61);
  v32 = vmul_s32(vadd_s32(v28, -1), v29);
  v33 = vadd_s32(v32, 0x100000001);
  v34 = vsub_s32(v30, vshr_n_s32(vsra_n_u32(v33, v33, 0x1FuLL), 1uLL));
  v35 = vmla_s32(vsra_n_s32(v30, vsra_n_u32(v32, v32, 0x1FuLL), 1uLL), vmovn_s64(*(v5 + 10)), v31);
  v594 = v34;
  v36 = vcltz_s32(v34);
  if ((vpmax_u32(v36, v36).u32[0] & 0x80000000) == 0)
  {
    v37 = vcge_s32(v35, __PAIR64__(v27, v19));
    if ((vpmax_u32(v37, v37).u32[0] & 0x80000000) == 0)
    {
      goto LABEL_66;
    }
  }

  v38 = *(v5 + 5);
  v613 = *(v5 + 4);
  v614 = v38;
  v39 = *(v5 + 3);
  v611 = *(v5 + 2);
  v612 = v39;
  v40 = *(v5 + 9);
  v617 = *(v5 + 8);
  v618 = v40;
  v41 = *(v5 + 7);
  v615 = *(v5 + 6);
  v616 = v41;
  v42 = *(v5 + 13);
  v621[0] = *(v5 + 12);
  v621[1] = v42;
  v43 = *(v5 + 11);
  v619 = *(v5 + 10);
  v620 = v43;
  v44 = *(v5 + 1);
  *v610 = *v5;
  *&v610[16] = v44;
  v45 = *(&v44 + 1);
  v46 = *(**(&v44 + 1) + *MEMORY[0x277CD7310]) * ((objc_msgSend_featureChannels(**(&v44 + 1), v9, v10, v11, v12, v13, v14, v15) + 3) >> 2);
  v47 = vsub_s32(v35, v594);
  *&v48 = v47.i32[0];
  *(&v48 + 1) = v47.i32[1];
  *&v623.width = v48;
  v623.depth = v46;
  v602 = objc_alloc_init(MEMORY[0x277CD7058]);
  objc_msgSend_setTextureType_(v602, v49, *(v45 + 32), v50, v51, v52, v53, v54);
  objc_msgSend_setPixelFormat_(v602, v55, **(v45 + 64) & 0x3FFLL, v56, v57, v58, v59, v60);
  objc_msgSend_setWidth_(v602, v61, v48, v62, v63, v64, v65, v66);
  objc_msgSend_setHeight_(v602, v67, *(&v48 + 1), v68, v69, v70, v71, v72);
  objc_msgSend_setArrayLength_(v602, v73, v46, v74, v75, v76, v77, v78);
  objc_msgSend_setUsage_(v602, v79, 3, v80, v81, v82, v83, v84);
  objc_msgSend_setStorageMode_(v602, v85, 2, v86, v87, v88, v89, v90);
  *&v624[0] = *v610;
  v626 = v612;
  v627 = v613;
  v581 = &v612;
  v583 = v594.i32[1];
  *&v628 = v614;
  LODWORD(v625) = v611;
  *(v624 + 8) = *&v610[8];
  v590 = &v615 + 4;
  v591 = v594.i32[0];
  *&v631 = v617;
  HIDWORD(v629) = HIDWORD(v615);
  *(&v634 + 1) = v594.i32[0];
  *(&v630 + 1) = 0x1000100010001;
  v91 = *(&v621[0] + 1);
  *&v635 = v594.i32[1];
  *(&v635 + 1) = *(&v621[0] + 1);
  v636 = 0uLL;
  WORD3(v630) = v594.i16[2];
  WORD2(v630) = v594.i16[0];
  WORD5(v629) = v594.i16[2];
  WORD4(v629) = v594.i16[0];
  LODWORD(v630) = 65537;
  *&v629 = v615;
  DWORD2(v628) = DWORD2(v614);
  v595 = *&v610[8];
  v592 = malloc_type_calloc(*&v610[8], 0x78uLL, 0x10E004012FEE65DuLL);
  v92 = [MPSNNPad alloc];
  v100 = objc_msgSend_device(a3, v93, v94, v95, v96, v97, v98, v99);
  v599 = objc_msgSend_initWithDevice_(v92, v101, v100, v102, v103, v104, v105, v106);
  v606.origin.x = v591;
  v606.origin.y = v583;
  v606.origin.z = v91;
  objc_msgSend_setOffset_(v599, v107, &v606, v108, v109, v110, v111, v112);
  objc_msgSend_setEdgeMode_(v599, v113, 4, v114, v115, v116, v117, v118);
  v622 = v623;
  if (v599)
  {
    objc_msgSend_clipRect(v599, v119, v120, v121, v122, v123, v124, v125);
  }

  else
  {
    memset(&v606, 0, sizeof(v606));
  }

  MPSGetEffectiveClipRegion(&v631 + 1, &v622, &v606);
  v126.i32[0] = 0;
  v126.i32[1] = DWORD1(v626);
  LODWORD(v127) = vuzp1_s16(vmovn_s64(v633), v126).u32[0];
  HIDWORD(v127) = HIDWORD(v626);
  *&v626 = v126;
  *(&v626 + 1) = v127;
  v128 = objc_alloc(MEMORY[0x277CBEB18]);
  v142 = objc_msgSend_initWithCapacity_(v128, v129, v595, v130, v131, v132, v133, v134);
  v585 = v45;
  if (v595)
  {
    v143 = 0;
    v144 = (v592 + 13);
    v145 = v585 + 8;
    do
    {
      TempTexture = MPSAutoCache::GetTempTexture();
      v147 = objc_alloc(MEMORY[0x277CD7218]);
      v155 = objc_msgSend_featureChannels(*(v145 - 8), v148, v149, v150, v151, v152, v153, v154);
      v161 = objc_msgSend_initWithTexture_featureChannels_(v147, v156, TempTexture, v155, v157, v158, v159, v160);
      v162 = *(v145 - 8);
      v163 = *(v145 + 8);
      v164 = *(v145 + 24);
      *(v144 - 7) = *(v145 + 40);
      *(v144 - 9) = v164;
      *(v144 - 11) = v163;
      *(v144 - 13) = v162;
      v165 = *(v145 + 56);
      v166 = *(v145 + 72);
      v167 = *(v145 + 88);
      v144[1] = *(v145 + 104);
      *(v144 - 1) = v167;
      *(v144 - 3) = v166;
      *(v144 - 5) = v165;
      *(v144 - 3) = objc_msgSend_featureChannels(v161, v168, v169, v170, v171, v172, v173, v174);
      *v144 = objc_msgSend_featureChannelsLayout(v161, v175, v176, v177, v178, v179, v180, v181);
      *(v144 - 6) = v161;
      *(v144 - 5) = *v145;
      *(v144 - 1) = objc_msgSend_texture(v161, v182, v183, v184, v185, v186, v187, v188);
      *(v144 - 2) = objc_msgSend_textureType(v161, v189, v190, v191, v192, v193, v194, v195);
      *(v144 - 8) = MPSGetImageType(v161);
      objc_msgSend_setObject_atIndexedSubscript_(v142, v196, v161, v143, v197, v198, v199, v200);
      v201 = v161;
      ++v143;
      v144 += 15;
      v145 += 120;
    }

    while (v595 != v143);
  }

  v202 = objc_msgSend_count(v142, v135, v136, v137, v138, v139, v140, v141);
  v210 = v585;
  v209 = v586;
  if (v202 >= v595)
  {
    v211 = v595;
  }

  else
  {
    v211 = v202;
  }

  if (!v211)
  {
    v316 = 0;
    v235 = 0;
    goto LABEL_48;
  }

  v212 = objc_msgSend_objectAtIndexedSubscript_(v142, v203, 0, v204, v205, v206, v207, v208);
  v220 = objc_msgSend_featureChannels(v212, v213, v214, v215, v216, v217, v218, v219);
  v580 = objc_msgSend_retainedReferences(v586, v221, v222, v223, v224, v225, v226, v227);
  v228 = objc_alloc(MEMORY[0x277CBEB18]);
  v235 = objc_msgSend_initWithCapacity_(v228, v229, v211, v230, v231, v232, v233, v234);
  if (v220 < 5)
  {
    v236 = 2;
  }

  else
  {
    v236 = 3;
  }

  context = objc_autoreleasePoolPush();
  v237 = 0;
  for (i = objc_msgSend_objectAtIndexedSubscript_(v142, v238, 0, v239, v240, v241, v242, v243); ; i = objc_msgSend_objectAtIndexedSubscript_(v142, v260, v237, v262, v263, v264, v265, v266))
  {
    v252 = objc_msgSend_texture(i, v245, v246, v247, v248, v249, v250, v251);
    if (objc_msgSend_textureType(v252, v253, v254, v255, v256, v257, v258, v259) == v236)
    {
      v267 = 1;
      if (v252)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v268 = objc_msgSend_pixelFormat(v252, v260, v261, v262, v263, v264, v265, v266);
      v270 = objc_msgSend_newTextureViewWithPixelFormat_textureType_levels_slices_(v252, v269, v268, v236, 0, 1, 0, 1);
      v267 = v270 == 0;
      if (v270)
      {
        v252 = v270;
      }

      if (v252)
      {
LABEL_33:
        objc_msgSend_setObject_atIndexedSubscript_(v235, v260, v252, v237, v263, v264, v265, v266);
      }
    }

    if (!v267)
    {
    }

    if (v211 == ++v237)
    {
      break;
    }
  }

  if ((v580 & 1) == 0)
  {
    v271 = v235;
    v606.origin.x = MEMORY[0x277D85DD0];
    v606.origin.y = 3221225472;
    v606.origin.z = sub_239D0AEE8;
    v606.size.width = &unk_278B28F28;
    v606.size.height = v235;
    objc_msgSend_addCompletedHandler_(v586, v272, &v606, v273, v274, v275, v276, v277);
  }

  objc_autoreleasePoolPop(context);
  v284 = objc_msgSend_objectAtIndexedSubscript_(v142, v278, 0, v279, v280, v281, v282, v283);
  v292 = objc_msgSend_featureChannelFormat(v284, v285, v286, v287, v288, v289, v290, v291);
  v299 = objc_msgSend_objectAtIndexedSubscript_(v235, v293, 0, v294, v295, v296, v297, v298);
  v307 = objc_msgSend_textureType(v299, v300, v301, v302, v303, v304, v305, v306);
  if (v292 - 1 > 4)
  {
    v315 = 0;
  }

  else
  {
    v315 = dword_239D91470[v292 - 1];
  }

  if (v307 == 3)
  {
    v317 = v315 + 1;
  }

  else
  {
    v317 = v315;
  }

  objc_msgSend_device(v299, v308, v309, v310, v311, v312, v313, v314);
  MPSDevice = MPSDevice::GetMPSDevice();
  v326 = objc_msgSend_pixelFormat(v299, v319, v320, v321, v322, v323, v324, v325);
  PixelInfo = MPSDevice::GetPixelInfo(MPSDevice, v326, v292);
  v328 = v317 | 4;
  if ((PixelInfo & 0x3000000) == 0)
  {
    v328 = v317;
  }

  v316 = v328 | 2;
LABEL_48:
  v329 = v235;
  v337 = v329;
  v338 = v595;
  if (v595)
  {
    if (v595 == 1)
    {
      v339 = 0;
      goto LABEL_54;
    }

    v339 = v595 & 0xFFFFFFFFFFFFFFFELL;
    v340 = (v592 + 24);
    v341 = v595 & 0xFFFFFFFFFFFFFFFELL;
    do
    {
      *(v340 - 30) = v316;
      *v340 = v316;
      v340 += 60;
      v341 -= 2;
    }

    while (v341);
    v338 = v595;
    if (v595 != v339)
    {
LABEL_54:
      v342 = v338 - v339;
      v343 = &v592[15 * v339 + 9];
      do
      {
        *v343 = v316;
        v343 += 30;
        --v342;
      }

      while (v342);
    }
  }

  *(&v624[1] + 1) = v592;
  *(&v625 + 1) = v329;
  v344 = objc_msgSend_featureChannelFormat(*v592, v330, v331, v332, v333, v334, v335, v336);
  LODWORD(v352) = -8388609;
  if (v344 == 3)
  {
    *&v352 = -65504.0;
  }

  objc_msgSend_setFillValue_(v599, v345, v346, v347, v348, v349, v350, v351, v352);
  if ((*(v599 + *MEMORY[0x277CD7378]) & 8) != 0)
  {
    v564 = *(v599 + *MEMORY[0x277CD7360]);
    if (!v564)
    {
      v565 = objc_opt_class();
      v564 = NSStringFromClass(v565);
    }

    v359 = a2;
    objc_msgSend_pushDebugGroup_(a2, v353, v564, v354, v355, v356, v357, v358);
    v210 = v585;
    v209 = v586;
  }

  else
  {
    v359 = 0;
  }

  (*(v599 + 296))(*(v599 + 304), a2, v209, v624);
  if (v359)
  {
    objc_msgSend_popDebugGroup(v359, v360, v361, v362, v363, v364, v365, v366);
  }

  v367 = *(&v624[0] + 1);
  if (*(&v624[0] + 1))
  {
    v368 = (v210 + 56);
    v369 = v592 + 7;
    do
    {
      v370 = *(v369 + 1);
      *(v369 - 7) = *v369;
      *(v369 - 5) = v370;
      *(v369 - 3) = *(v369 + 2);
      *(v369 - 1) = v369[6];
      v372 = v368[1];
      v371 = v368[2];
      v373 = *(v368 + 6);
      v374 = *v368;
      v368 = (v368 + 120);
      v369[6] = v373;
      *(v369 + 1) = v372;
      *(v369 + 2) = v371;
      *v369 = v374;
      v369 += 15;
      --v367;
    }

    while (v367);
  }

  DWORD2(v614) = v316;
  *&v610[24] = v592;
  *&v615 = v337;

  v579 = &v611;
  v584 = &v614 + 8;
  v16 = &v616 + 6;
  v17 = &v616 + 8;
  v18 = &v616;
  v598 = &v610[24];
  v601 = &v610[8];
  v568 = &v620 + 4;
  *(&v620 + 1) -= v591;
  *&v621[0] -= v583;
  v567 = v621;
  v582 = &v615;
  WORD3(v616) = v621[0];
  WORD2(v616) = WORD4(v620);
  v5 = v610;
LABEL_66:
  v596 = *(v5 + 32);
  contexta = *(v5 + 62);
  v566 = v16;
  v572 = v16[1];
  v574 = *(v5 + 60);
  v573 = *(v17 + 1);
  v593 = v5;
  v375 = *(v5 + 56);
  v569 = v18;
  v376 = v18[1];
  *&v377 = -1;
  *(&v377 + 1) = -1;
  v607 = v377;
  v608 = v377;
  v570 = v376;
  v571 = v375;
  *&v606.origin.z = v377;
  *&v606.size.height = v377;
  *&v606.origin.x = v377;
  v606.origin.x = objc_msgSend_maxBatchSize(v604, v9, v10, v11, v12, v13, v14, v15);
  v385 = (*v598)[14];
  if (!v385)
  {
    v387 = 0;
    v386 = v601;
    goto LABEL_85;
  }

  v386 = v601;
  if (!objc_msgSend_resourceCount(v385, v378, v379, v380, v381, v382, v383, v384))
  {
    v387 = 0;
    goto LABEL_85;
  }

  v387 = malloc_type_malloc(8 * *v601, 0x80040B8603338uLL);
  if (*v601)
  {
    v388 = 0;
    v389 = 14;
    v390 = MEMORY[0x277CD7488];
    while (1)
    {
      v391 = (*v598)[v389];
      v387[v388] = 0;
      if (!v391)
      {
LABEL_84:
        free(v387);
        v387 = 0;
        break;
      }

      v392 = *&v391[*v390];
      v393 = *v392;
      if (v393 == 2)
      {
        v394 = (v392 + 1);
        explicit = atomic_load_explicit(v392 + 1, memory_order_acquire);
        if (explicit)
        {
          goto LABEL_78;
        }

        MPSAutoTexture::AllocateTexture(v394, 0);
      }

      else
      {
        if (v393 != 1)
        {
          goto LABEL_84;
        }

        v394 = (v392 + 1);
        explicit = atomic_load_explicit(v392 + 1, memory_order_acquire);
        if (explicit)
        {
          goto LABEL_78;
        }

        MPSAutoBuffer::AllocateBuffer(v394, 0);
      }

      explicit = atomic_load_explicit(v394, memory_order_acquire);
LABEL_78:
      v387[v388++] = explicit;
      if (v388 < *v601)
      {
        v389 += 15;
        if (explicit)
        {
          continue;
        }
      }

      if (explicit)
      {
        break;
      }

      goto LABEL_84;
    }
  }

LABEL_85:
  v396 = (v578 + 1) >> 1;
  v397 = (v577 + 1) >> 1;
  if (v387)
  {
    LOWORD(v397) = v577;
    LOWORD(v396) = v578;
  }

  if (v572 != 1)
  {
    LOWORD(v397) = v577;
    LOWORD(v396) = v578;
  }

  v398 = (v578 * v578) >= 0x11 && v571 == 3;
  v402 = v398 && v570 == 3 && v574 == 1 && v573 == 1 && contexta == 1;
  if (v402)
  {
    v403 = v397;
  }

  else
  {
    v403 = v577;
  }

  if (v402)
  {
    v404 = v396;
  }

  else
  {
    v404 = v578;
  }

  MPSLibrary::CreateUberShaderKey();
  v600 = v387;
  PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
  v406 = v596 + 3;
  v407.i16[0] = v404;
  v407.i16[1] = v403;
  v407.i16[2] = (v596 + 3) >> 2;
  v407.i16[3] = *v386;
  v587 = v407;
  v415 = objc_msgSend_maxTotalThreadsPerThreadgroup(PipelineStateForMPSKey, v408, v409, v410, v411, v412, v413, v414, 0, 0, 0, 0, 0);
  objc_msgSend_threadExecutionWidth(PipelineStateForMPSKey, v416, v417, v418, v419, v420, v421, v422);
  v603 = v386;
  if (v415 >= 0x100)
  {
    v430 = 256;
  }

  else
  {
    v430 = v415;
  }

  v431 = *(*&v604[*MEMORY[0x277CD7350]] + 16);
  memset(&v623, 0, sizeof(v623));
  if (v431)
  {
    objc_msgSend_maxThreadsPerThreadgroup(v431, v423, v424, v425, v426, v427, v428, v429);
    height = v623.height;
    width = v623.width;
    depth = v623.depth;
  }

  else
  {
    depth = 0;
    height = 0;
    width = 0;
  }

  v435 = vmax_u16(v587, 0x1000100010001);
  v436 = v435.u16[0];
  v437 = v435.u16[1];
  v438 = v435.u16[2];
  if (v435.u16[0] * v435.u16[1] * v435.u16[2] <= v430 && width >= v435.u16[0] && height >= v435.u16[1] && depth >= v435.u16[2])
  {
    v444 = v435;
    v445 = v435.u16[2];
    v446 = v435.u16[1];
    v447 = v435.u16[0];
    goto LABEL_186;
  }

  if (v431)
  {
    v588 = v435;
    memset(v624, 0, 24);
    objc_msgSend_maxThreadsPerThreadgroup(v431, v423, v424, v425, v426, v427, v428, v429);
    v442 = *(&v624[0] + 1);
    v443 = *&v624[0];
    height = v623.height;
    width = v623.width;
    depth = v623.depth;
    v435 = v588;
  }

  else
  {
    v443 = 0;
    v442 = 0;
  }

  v448 = (64 - __clz(v430)) >> 1;
  v449 = 63 - __clz(v442);
  v398 = v442 == 0;
  v450 = 0x8000000000000000;
  if (!v398)
  {
    v450 = v449;
  }

  if (v448 < v450)
  {
    LOBYTE(v450) = v448;
  }

  if (v443 >= v430 >> v450)
  {
    v451 = v430 >> v450;
  }

  else
  {
    v451 = v443;
  }

  v452 = 1 << v450;
  v444.i16[2] = 1;
  if (width >= v436)
  {
    v453 = v436;
  }

  else
  {
    v453 = width;
  }

  if (height >= v437)
  {
    v454 = v437;
  }

  else
  {
    v454 = height;
  }

  if (depth >= v438)
  {
    v455 = v438;
  }

  else
  {
    v455 = depth;
  }

  if (!v451)
  {
    v458 = 0;
    v457 = (v437 + v452 - 1) / v452;
    v444.i16[0] = 0;
    if (!v457)
    {
      goto LABEL_153;
    }

    goto LABEL_151;
  }

  v456 = v436 + v451 - 1;
  v457 = (v437 + v452 - 1) / v452;
  if (v451 <= v456)
  {
    v458 = (v436 + v456 / v451 - 1) / (v456 / v451);
    v444.i16[0] = v451;
    if (!v457)
    {
      goto LABEL_153;
    }

    goto LABEL_151;
  }

  v458 = 0;
  v444.i16[0] = v451;
  if (v457)
  {
LABEL_151:
    v459 = (v437 + v457 - 1) / v457;
    goto LABEL_154;
  }

LABEL_153:
  v459 = 0;
LABEL_154:
  if (v458 >= v453)
  {
    v447 = v453;
  }

  else
  {
    v447 = v458;
  }

  if (v459 >= v454)
  {
    v446 = v454;
  }

  else
  {
    v446 = v459;
  }

  v460 = v446 * v447;
  if (v430 / (v446 * v447) >= v455)
  {
    v461 = v455;
  }

  else
  {
    v461 = v430 / (v446 * v447);
  }

  if (v435.u16[3] < 2u || v461 < 2)
  {
    v445 = v461;
    v463 = v430 - v461 * v460;
    if (v459 < v454)
    {
LABEL_169:
      v464 = v445 * v447;
      if (v463 > v445 * v447)
      {
        v446 += v463 / v464;
        if (v446 >= v454)
        {
          v446 = v454;
        }

        v463 = v430 - v446 * v464;
      }
    }
  }

  else
  {
    do
    {
      v445 = v461;
      v462 = v438 / v461 * v461;
      --v461;
    }

    while (v438 != v462);
    v463 = v430 - v445 * v460;
    if (v459 < v454)
    {
      goto LABEL_169;
    }
  }

  v444.i16[1] = v452;
  if (v458 < v453)
  {
    v465 = v446 * v445;
    if (v463 > v446 * v445)
    {
      v447 += v463 / v465;
      if (v447 >= v453)
      {
        v447 = v453;
      }

      v463 = v430 - v447 * v465;
    }
  }

  if (v445 < v455 && v463 > v447 * v446)
  {
    v445 += v463 / (v447 * v446);
    if (v445 >= v455)
    {
      v445 = v455;
    }

    if (v435.u16[3] >= 2u && v445 >= 2)
    {
      do
      {
        v466 = v445;
        v467 = v438 / v445 * v445;
        --v445;
      }

      while (v438 != v467);
      v445 = v466;
    }
  }

LABEL_186:
  v468 = v444.i16[0];
  if (v444.i16[0])
  {
    v469 = (v436 + v444.u16[0] - 1) / v444.u16[0];
    v470.i16[0] = v469;
    v471 = v444.u16[1];
    if (v444.i16[1])
    {
      goto LABEL_188;
    }

LABEL_190:
    LOWORD(v472) = 0;
  }

  else
  {
    LOWORD(v469) = 0;
    v470.i16[0] = 0;
    v471 = v444.u16[1];
    if (!v444.i16[1])
    {
      goto LABEL_190;
    }

LABEL_188:
    v472 = (v437 + v471 - 1) / v471;
  }

  v470.i16[1] = v472;
  v473 = v444.i16[2];
  if (v444.i16[2])
  {
    v474 = (v438 + v444.u16[2] - 1) / v444.u16[2];
  }

  else
  {
    LOWORD(v474) = 0;
  }

  v470.i16[2] = v474;
  if (v447)
  {
    v475 = (v436 + v447 - 1) / v447;
    v470.i16[3] = v435.i16[3];
    if (v446)
    {
      goto LABEL_196;
    }

LABEL_199:
    v476 = 0;
    v477 = v406 >> 2;
    if (!v445)
    {
      goto LABEL_200;
    }

LABEL_197:
    v478 = (v438 + v445 - 1) / v445;
  }

  else
  {
    LOWORD(v475) = 0;
    v470.i16[3] = v435.i16[3];
    if (!v446)
    {
      goto LABEL_199;
    }

LABEL_196:
    v476 = (v437 + v446 - 1) / v446;
    v477 = v406 >> 2;
    if (v445)
    {
      goto LABEL_197;
    }

LABEL_200:
    v478 = 0;
  }

  v479 = v597;
  v480 = v478;
  v481 = v476 * v475 * v478;
  v482 = v472 * v469 * v474;
  v483.i16[0] = v475;
  v483.i16[1] = v476;
  v483.i16[2] = v478;
  v483.i16[3] = v435.i16[3];
  if (v481 < v482)
  {
    v484 = v445;
  }

  else
  {
    v484 = v473;
  }

  if (v481 < v482)
  {
    v485 = v446;
  }

  else
  {
    v485 = v471;
  }

  if (v481 < v482)
  {
    v486 = v447;
  }

  else
  {
    v486 = v468;
  }

  if (v481 >= v482)
  {
    v483 = v470;
  }

  v589 = v483;
  *(v593 + 35) = v485 * v484 * v486;
  if (v596 >= 5)
  {
    v490 = __clz(0x80000000 / v477);
    v491 = (0x80000000 / v477) >> (16 - v490);
    v492 = v490 + 15;
    v493 = -65536 * v477 * v491 / v477;
    if (v493 <= v491)
    {
      v494 = v491;
    }

    else
    {
      v494 = v491 + 1;
    }

    if (v493 <= v491)
    {
      LOWORD(v491) = 0;
    }

    v622.height = (v492 << 48) | ((v493 - v491) << 32) | (v494 << 16) | v477;
    if (v597 == 1)
    {
      goto LABEL_222;
    }

LABEL_214:
    LODWORD(v622.width) = 1065353216;
    if (v597 == 3)
    {
      v483.i16[0] = *v569;
      v483.i16[2] = v569[1];
      v487 = 0xFFFF0000FFFFLL;
      v435.i16[0] = *v566;
      v435.i16[2] = v566[1];
      v488 = vmla_s32(0x100000001, vadd_s32(v483, 0xFFFF0000FFFFLL), v435);
      v487.i16[0] = *v568;
      v487.i16[2] = *v567;
      v489 = vsub_s32(v487, vshr_n_u32(vshr_n_s32(vshl_n_s32(vsra_n_u32(v488, vand_s8(v488, 0xFFFF0000FFFFLL), 0xFuLL), 0x10uLL), 0x10uLL), 1uLL));
      v590[1] = v489.i16[2];
      *v590 = v489.i16[0];
    }
  }

  else
  {
    v622.height = 65537;
    if (v597 != 1)
    {
      goto LABEL_214;
    }

LABEL_222:
    v495 = 1.0 / (v569[1] * *v569);
    *&v622.width = v495;
    WORD2(v622.width) = objc_msgSend_zeroPadSizeX(v604, v476, v478, v481, v478, v597, v428, v429);
    HIWORD(v622.width) = objc_msgSend_zeroPadSizeY(v604, v496, v497, v498, v499, v500, v501, v502);
  }

  v503 = objc_msgSend_maxBatchSize(v604, v476, v478, v481, v480, v479, v428, v429);
  objc_msgSend_setComputePipelineState_(a2, v504, PipelineStateForMPSKey, v505, v506, v507, v508, v509);
  v517 = *v582;
  if ((*v584 & 2) == 0)
  {
    objc_msgSend_setTexture_atIndex_(a2, v510, v517, v503, v513, v514, v515, v516);
    goto LABEL_243;
  }

  v522 = objc_msgSend_count(v517, v510, v511, v512, v513, v514, v515, v516);
  v637 = 0u;
  v638 = 0u;
  v635 = 0u;
  v636 = 0u;
  v633 = 0u;
  v634 = 0u;
  v631 = 0u;
  v632 = 0u;
  v629 = 0u;
  v630 = 0u;
  v627 = 0u;
  v628 = 0u;
  v625 = 0u;
  v626 = 0u;
  memset(v624, 0, sizeof(v624));
  if (v503)
  {
    v523 = v522;
    for (j = 0; j < v503; j += v526)
    {
      if (v523 <= j)
      {
        v525 = 0;
        if (v503 - j >= 0x20)
        {
          v526 = 32;
        }

        else
        {
          v526 = v503 - j;
        }

        v527 = v526;
        if (!v526)
        {
          goto LABEL_236;
        }
      }

      else
      {
        if (v523 - j >= 0x20)
        {
          v525 = 32;
          objc_msgSend_getObjects_range_(v517, v518, v624, j, 32, v519, v520, v521);
        }

        else
        {
          v525 = v523 - j;
          objc_msgSend_getObjects_range_(v517, v518, v624, j, v523 - j, v519, v520, v521);
        }

        if (v503 - j >= 0x20)
        {
          v526 = 32;
        }

        else
        {
          v526 = v503 - j;
        }

        v527 = v526 - v525;
        if (v526 == v525)
        {
          goto LABEL_236;
        }
      }

      bzero(v624 + 8 * v525, 8 * v527);
LABEL_236:
      objc_msgSend_setTextures_withRange_(a2, v518, v624, j + v503, v526, v519, v520, v521);
    }
  }

LABEL_243:
  objc_msgSend_setBytes_length_atIndex_(a2, v518, v590, 32, 1, v519, v520, v521);
  Sampler = MPSDevice::GetSampler();
  objc_msgSend_setSamplerState_atIndex_(a2, v529, Sampler, 1, v530, v531, v532, v533);
  v541 = *(v593 + 5);
  if ((*v579 & 2) == 0)
  {
    objc_msgSend_setTexture_atIndex_(a2, v534, *(v593 + 5), 0, v537, v538, v539, v540);
    goto LABEL_264;
  }

  v546 = objc_msgSend_count(*(v593 + 5), v534, v535, v536, v537, v538, v539, v540);
  v547 = v485;
  v637 = 0u;
  v638 = 0u;
  v635 = 0u;
  v636 = 0u;
  v633 = 0u;
  v634 = 0u;
  v631 = 0u;
  v632 = 0u;
  v629 = 0u;
  v630 = 0u;
  v627 = 0u;
  v628 = 0u;
  v625 = 0u;
  v626 = 0u;
  memset(v624, 0, sizeof(v624));
  if (v503)
  {
    v548 = v546;
    for (k = 0; k < v503; k += v551)
    {
      if (v548 <= k)
      {
        v550 = 0;
        if (v503 - k >= 0x20)
        {
          v551 = 32;
        }

        else
        {
          v551 = v503 - k;
        }

        v552 = v551;
        if (!v551)
        {
          goto LABEL_256;
        }
      }

      else
      {
        if (v548 - k >= 0x20)
        {
          v550 = 32;
          objc_msgSend_getObjects_range_(v541, v542, v624, k, 32, v543, v544, v545);
        }

        else
        {
          v550 = v548 - k;
          objc_msgSend_getObjects_range_(v541, v542, v624, k, v548 - k, v543, v544, v545);
        }

        if (v503 - k >= 0x20)
        {
          v551 = 32;
        }

        else
        {
          v551 = v503 - k;
        }

        v552 = v551 - v550;
        if (v551 == v550)
        {
          goto LABEL_256;
        }
      }

      bzero(v624 + 8 * v550, 8 * v552);
LABEL_256:
      objc_msgSend_setTextures_withRange_(a2, v542, v624, k, v551, v543, v544, v545);
    }
  }

  v485 = v547;
LABEL_264:
  objc_msgSend_setBytes_length_atIndex_(a2, v542, v581, 40, 0, v543, v544, v545);
  if (v600)
  {
    objc_msgSend_setTextures_withRange_(a2, v553, v600, 2 * v503, *v603, v554, v555, v556);
  }

  objc_msgSend_setBytes_length_atIndex_(a2, v553, &v622, 16, 30, v554, v555, v556);
  v557 = vand_s8(*&vmovl_u16(v589), 0xFFFF0000FFFFLL);
  *&v558 = v557.u32[0];
  *(&v558 + 1) = v557.u32[1];
  v624[0] = v558;
  *&v624[1] = (v589.i16[2] * v589.i16[3]);
  v623.width = v486;
  v623.height = v485;
  v623.depth = v484;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v559, v624, &v623, v560, v561, v562, v563);
  if (v600)
  {
    free(v600);
  }

  MPSLibrary::ReleaseMPSKey();
  MPSAutoCache::~MPSAutoCache(v609);
}

void sub_239D0ABBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, char a56)
{
  if (a2)
  {
    sub_239BAD79C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_239D0AC40(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *(a2 + 64);
  v5 = MPSCreateFunctionConstantValues();
  v6 = *a3;
  v66 = WORD2(v4) & 0x1C0 | (v4 >> 41) & 7;
  objc_msgSend_setConstantValue_type_atIndex_(v5, v7, &v66, 33, 126, v8, v9, v10);
  if (v6 != -1)
  {
    v66 = v6;
    objc_msgSend_setConstantValue_type_atIndex_(v5, v11, &v66, 33, 125, v12, v13, v14);
  }

  v66 = 0;
  objc_msgSend_setConstantValue_type_atIndex_(v5, v11, &v66, 33, 123, v12, v13, v14);
  v66 = 0;
  objc_msgSend_setConstantValue_type_atIndex_(v5, v15, &v66, 33, 119, v16, v17, v18);
  v66 = 0;
  objc_msgSend_setConstantValue_type_atIndex_(v5, v19, &v66, 33, 118, v20, v21, v22);
  v66 = 0;
  objc_msgSend_setConstantValue_type_atIndex_(v5, v23, &v66, 33, 122, v24, v25, v26);
  v66 = 0;
  objc_msgSend_setConstantValue_type_atIndex_(v5, v27, &v66, 33, 121, v28, v29, v30);
  v66 = 0;
  objc_msgSend_setConstantValue_type_atIndex_(v5, v31, &v66, 33, 117, v32, v33, v34);
  v66 = 0;
  objc_msgSend_setConstantValue_type_atIndex_(v5, v35, &v66, 33, 116, v36, v37, v38);
  LOWORD(v66) = BYTE4(v4) & 0x1F;
  objc_msgSend_setConstantValue_type_atIndex_(v5, v39, &v66, 37, 2, v40, v41, v42);
  v64 = BYTE1(v4);
  v65 = v4;
  if (v4)
  {
    objc_msgSend_setConstantValue_type_atIndex_(v5, v43, &v65, 37, 5, v44, v45, v46);
  }

  if (v4 >= 0x100u)
  {
    objc_msgSend_setConstantValue_type_atIndex_(v5, v43, &v64, 37, 6, v44, v45, v46);
  }

  v63 = BYTE2(v4) & 0xF;
  v62 = (v4 >> 20) & 0xF;
  if ((v4 & 0xF0000) != 0)
  {
    objc_msgSend_setConstantValue_type_atIndex_(v5, v43, &v63, 37, 7, v44, v45, v46);
  }

  if (((v4 >> 20) & 0xF) != 0)
  {
    objc_msgSend_setConstantValue_type_atIndex_(v5, v43, &v62, 37, 8, v44, v45, v46);
  }

  v61 = (v4 & 0x2000000000) != 0;
  objc_msgSend_setConstantValue_type_atIndex_(v5, v43, &v61, 53, 9, v44, v45, v46);
  v60 = BYTE3(v4) & 0xF;
  v59 = v4 >> 28;
  if ((v4 & 0xF000000) != 0)
  {
    objc_msgSend_setConstantValue_type_atIndex_(v5, v47, &v60, 37, 10, v48, v49, v50);
  }

  if (v4 >> 28)
  {
    objc_msgSend_setConstantValue_type_atIndex_(v5, v47, &v59, 37, 11, v48, v49, v50);
  }

  v58 = (v4 & 0x1000000000000000) != 0;
  objc_msgSend_setConstantValue_type_atIndex_(v5, v47, &v58, 53, 12, v48, v49, v50);
  v57 = (v4 & 0x2000000000000000) != 0;
  objc_msgSend_setConstantValue_type_atIndex_(v5, v51, &v57, 53, 3, v52, v53, v54);
  v55 = _MPSNewSpecializedFunction();

  return v55;
}

uint64_t sub_239D0B064(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a4 + 112);
  *&v12 = -1;
  *(&v12 + 1) = -1;
  v277 = v12;
  v276 = v12;
  v275 = v12;
  v274 = v12;
  v273 = *(a4 + 136) & 0x3F | ((*(a4 + 16) & 0x3F) << 6) & 0xFFF | ((*(a4 + 72) & 0x3Fu) << 12);
  v272 = objc_msgSend_maxBatchSize(a1, a2, a3, a4, a5, a6, a7, a8);
  v20 = *(v11 + 304);
  v236 = *(v11 + 296);
  v21 = *(v11 + 312);
  v22 = *(a1 + 432);
  if (v22)
  {
    v23 = *(a1 + 432);
    v24 = objc_msgSend_neuronType(v22, v13, v14, v15, v16, v17, v18, v19) == 10;
  }

  else
  {
    v23 = 0;
    v24 = 0;
  }

  v25 = MEMORY[0x277CD7488];
  v26 = (*(v11 + *MEMORY[0x277CD7488]) + 8);
  explicit = atomic_load_explicit(v26, memory_order_acquire);
  if (explicit)
  {
    v232 = explicit;
    v28 = (*(v11 + *v25) + 80);
    v29 = atomic_load_explicit(v28, memory_order_acquire);
    if (v29)
    {
      goto LABEL_6;
    }
  }

  else
  {
    MPSAutoBuffer::AllocateBuffer(v26, 0);
    v232 = atomic_load_explicit(v26, memory_order_acquire);
    v28 = (*(v11 + *v25) + 80);
    v29 = atomic_load_explicit(v28, memory_order_acquire);
    if (v29)
    {
      goto LABEL_6;
    }
  }

  MPSAutoBuffer::AllocateBuffer(v28, 0);
  v29 = atomic_load_explicit(v28, memory_order_acquire);
LABEL_6:
  v230 = v29;
  v229 = objc_msgSend_gamma(v11, v13, v14, v15, v16, v17, v18, v19);
  v30 = (*(v11 + *v25) + 152);
  v31 = atomic_load_explicit(v30, memory_order_acquire);
  if (!v31)
  {
    MPSAutoBuffer::AllocateBuffer(v30, 0);
    v31 = atomic_load_explicit(v30, memory_order_acquire);
  }

  v228 = v31;
  v32 = *(v11 + *v25);
  v33 = (v32 + 224);
  v34 = atomic_load_explicit((v32 + 224), memory_order_acquire);
  if (!v34)
  {
    MPSAutoBuffer::AllocateBuffer((v32 + 224), 0);
    v34 = atomic_load_explicit(v33, memory_order_acquire);
  }

  v234 = *(a4 + 208);
  v235 = *(a4 + 200);
  v270[0] = v20;
  v270[1] = v21;
  v270[2] = v236;
  if (v24)
  {
    v35 = ((v23 != 0) << 6) | 0x80;
  }

  else
  {
    v35 = (v23 != 0) << 6;
  }

  v271 = 0;
  *&v274 = v35;
  MPSLibrary::CreateUberShaderKey();
  PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
  v260 = 0;
  v259 = 0;
  v37 = vmovn_s64(*(a4 + 224));
  v262 = v37.i16[2];
  v261 = v37.i16[0];
  v263 = objc_msgSend_primaryStrideInPixelsX(a1, v38, v39, v40, v41, v42, v43, v44, 0, 0, 0);
  v264 = objc_msgSend_primaryStrideInPixelsY(a1, v45, v46, v47, v48, v49, v50, v51);
  v265 = 0;
  v266 = *(a4 + 312);
  v267 = *(a4 + 24);
  v268 = *(a4 + 240);
  v269 = objc_msgSend_numberOfImages(*a4, v52, v53, v54, v55, v56, v57, v58);
  v249 = 0;
  v248 = 0;
  v59 = vmovn_s64(*(a4 + 280));
  v251 = v59.i16[2];
  v250 = v59.i16[0];
  v252 = objc_msgSend_secondaryStrideInPixelsX(a1, v60, v61, v62, v63, v64, v65, v66);
  v253 = objc_msgSend_secondaryStrideInPixelsY(a1, v67, v68, v69, v70, v71, v72, v73);
  v254 = 0;
  v255 = *(a4 + 320);
  v256 = *(a4 + 80);
  v257 = *(a4 + 296);
  v81 = objc_msgSend_numberOfImages(*(a4 + 56), v74, v75, v76, v77, v78, v79, v80);
  v82.i32[0] = *(a4 + 304) >> 2;
  v82.i32[1] = *(a4 + 192);
  v83 = vuzp1_s16(vmovn_s64(*(a4 + 176)), v82);
  v84 = *(a4 + 200);
  v237 = (v20 + 3) >> 2;
  v85.i32[0] = v237;
  v85.i32[1] = *(a4 + 216);
  v258 = v81;
  v243[0] = v83;
  v243[1] = vuzp1_s16(vmovn_s64(v84), v85);
  v244 = *(a4 + 144);
  v245 = objc_msgSend_numberOfImages(*(a4 + 120), v86, v87, v88, v89, v90, v91, v92);
  v246 = 0x1000000000002;
  memset(v247, 0, sizeof(v247));
  v100 = objc_msgSend_maxBatchSize(a1, v93, v94, v95, v96, v97, v98, v99);
  objc_msgSend_setComputePipelineState_(a2, v101, PipelineStateForMPSKey, v102, v103, v104, v105, v106);
  objc_msgSend_setTexture_atIndex_(a2, v107, *(a4 + 40), v100, v108, v109, v110, v111);
  objc_msgSend_setBytes_length_atIndex_(a2, v112, &v259, 32, 1, v113, v114, v115);
  objc_msgSend_setTexture_atIndex_(a2, v116, *(a4 + 96), 2 * v100, v117, v118, v119, v120);
  objc_msgSend_setBytes_length_atIndex_(a2, v121, &v248, 32, 2, v122, v123, v124);
  objc_msgSend_setTexture_atIndex_(a2, v125, *(a4 + 160), 0, v126, v127, v128, v129);
  objc_msgSend_setBytes_length_atIndex_(a2, v130, v243, 40, 0, v131, v132, v133);
  objc_msgSend_setBuffer_offset_atIndex_(a2, v134, v232, 0, 30, v135, v136, v137);
  objc_msgSend_setBuffer_offset_atIndex_(a2, v138, v230, 0, 29, v139, v140, v141);
  objc_msgSend_setBuffer_offset_atIndex_(a2, v142, v229, 0, 28, v143, v144, v145);
  objc_msgSend_setBuffer_offset_atIndex_(a2, v146, v228, 0, 27, v147, v148, v149);
  objc_msgSend_setBuffer_offset_atIndex_(a2, v150, v34, 0, 26, v151, v152, v153);
  objc_msgSend_setBytes_length_atIndex_(a2, v154, v270, 20, 25, v155, v156, v157);
  if (v23)
  {
    v241 = 0;
    v242 = 0;
    objc_msgSend_a(*(a1 + 432), v158, v159, v160, v161, v162, v163, v164);
    v233 = v165;
    objc_msgSend_b(*(a1 + 432), v166, v167, v168, v169, v170, v171, v172);
    v231 = v173;
    objc_msgSend_c(*(a1 + 432), v174, v175, v176, v177, v178, v179, v180);
    v181 = v233;
    DWORD1(v181) = v231;
    DWORD2(v181) = v182;
    v240 = v181;
    LODWORD(v241) = objc_msgSend_neuronType(*(a1 + 432), v183, v184, v185, v186, v187, v188, v189);
    objc_msgSend_setBytes_length_atIndex_(a2, v190, &v240, 32, 24, v191, v192, v193);
    v201 = objc_msgSend_beta(v11, v194, v195, v196, v197, v198, v199, v200);
    objc_msgSend_setBuffer_offset_atIndex_(a2, v202, v201, 0, 23, v203, v204, v205);
    if (v241 == 10)
    {
      objc_msgSend_setBuffer_offset_atIndex_(a2, v206, *(a1 + 440), 0, 22, v207, v208, v209);
    }
  }

  Sampler = MPSDevice::GetSampler();
  objc_msgSend_setSamplerState_atIndex_(a2, v211, Sampler, 0, v212, v213, v214, v215);
  v216 = MPSDevice::GetSampler();
  objc_msgSend_setSamplerState_atIndex_(a2, v217, v216, 1, v218, v219, v220, v221);
  *&v240 = (v235 + 7) >> 3;
  *(&v240 + 1) = (v234 + 7) >> 3;
  v241 = v237;
  v238 = vdupq_n_s64(8uLL);
  v239 = 1;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v222, &v240, &v238, v223, v224, v225, v226);
  MPSLibrary::ReleaseMPSKey();
  return 0;
}

uint64_t sub_239D0B698(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v241 = *MEMORY[0x277D85DE8];
  v10 = *(*(a4 + 24) + 168);
  *&v11 = -1;
  *(&v11 + 1) = -1;
  v223 = v11;
  v224 = v11;
  v221 = v11;
  v222 = v11;
  v220 = *(a4 + 32) & 0x3F | ((*(a4 + 88) & 0x3F) << 6) & 0xFFF | ((*(a4 + 136) & 0x3Fu) << 12);
  v219 = objc_msgSend_maxBatchSize(a1, a2, a3, a4, a5, a6, a7, a8);
  v19 = *(v10 + 304);
  v209 = *(v10 + 296);
  v20 = *(v10 + 312);
  v21 = *(a1 + 432);
  if (v21)
  {
    v22 = *(a1 + 432);
    v211 = objc_msgSend_neuronType(v21, v12, v13, v14, v15, v16, v17, v18) == 10;
  }

  else
  {
    v22 = 0;
    v211 = 0;
  }

  v23 = MEMORY[0x277CD7488];
  v24 = (*(v10 + *MEMORY[0x277CD7488]) + 8);
  explicit = atomic_load_explicit(v24, memory_order_acquire);
  if (explicit)
  {
    v206 = explicit;
    v26 = (*(v10 + *v23) + 80);
    v27 = atomic_load_explicit(v26, memory_order_acquire);
    if (v27)
    {
      goto LABEL_6;
    }
  }

  else
  {
    MPSAutoBuffer::AllocateBuffer(v24, 0);
    v206 = atomic_load_explicit(v24, memory_order_acquire);
    v26 = (*(v10 + *v23) + 80);
    v27 = atomic_load_explicit(v26, memory_order_acquire);
    if (v27)
    {
      goto LABEL_6;
    }
  }

  MPSAutoBuffer::AllocateBuffer(v26, 0);
  v27 = atomic_load_explicit(v26, memory_order_acquire);
LABEL_6:
  v205 = objc_msgSend_gamma(v10, v12, v13, v14, v15, v16, v17, v18);
  v28 = *(v10 + *v23);
  v29 = (v28 + 152);
  v30 = atomic_load_explicit((v28 + 152), memory_order_acquire);
  if (v30)
  {
    v31 = v19 + 3;
    v32 = (*(v10 + *v23) + 224);
    v33 = atomic_load_explicit(v32, memory_order_acquire);
    if (v33)
    {
      goto LABEL_8;
    }
  }

  else
  {
    MPSAutoBuffer::AllocateBuffer((v28 + 152), 0);
    v30 = atomic_load_explicit(v29, memory_order_acquire);
    v31 = v19 + 3;
    v32 = (*(v10 + *v23) + 224);
    v33 = atomic_load_explicit(v32, memory_order_acquire);
    if (v33)
    {
      goto LABEL_8;
    }
  }

  MPSAutoBuffer::AllocateBuffer(v32, 0);
  v33 = atomic_load_explicit(v32, memory_order_acquire);
LABEL_8:
  v213 = *(a4 + 208);
  v217[0] = v19;
  v217[1] = v20;
  v217[2] = v209;
  v212 = v31 >> 2;
  if ((v31 & 0x3FFF8) != 0)
  {
    v34 = (v31 >> 2);
    v35 = __clz(0x80000000 / v34);
    v36 = (0x80000000 / v34) >> (16 - v35);
    v37 = v35 + 15;
    v38 = -65536 * (v31 >> 2) * v36 / v34;
    if (v38 <= v36)
    {
      v39 = v36;
    }

    else
    {
      v39 = v36 + 1;
    }

    if (v38 <= v36)
    {
      LOWORD(v36) = 0;
    }

    v40 = (v37 << 48) | ((v38 - v36) << 32) | (v39 << 16) | (v31 >> 2);
  }

  else
  {
    v40 = 65537;
  }

  v218 = v40;
  v210 = *(a4 + 8);
  if (v211)
  {
    v41 = ((v22 != 0) << 6) | 0x80;
  }

  else
  {
    v41 = (v22 != 0) << 6;
  }

  *&v221 = v41;
  MPSLibrary::CreateUberShaderKey();
  PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
  v50 = objc_msgSend_maxBatchSize(a1, v43, v44, v45, v46, v47, v48, v49, 0, 0, 0, 0, 0);
  objc_msgSend_setComputePipelineState_(a2, v51, PipelineStateForMPSKey, v52, v53, v54, v55, v56);
  objc_msgSend_setBuffer_offset_atIndex_(a2, v57, v206, 0, 30, v58, v59, v60);
  objc_msgSend_setBuffer_offset_atIndex_(a2, v61, v27, 0, 29, v62, v63, v64);
  objc_msgSend_setBuffer_offset_atIndex_(a2, v65, v205, 0, 28, v66, v67, v68);
  objc_msgSend_setBuffer_offset_atIndex_(a2, v69, v30, 0, 27, v70, v71, v72);
  objc_msgSend_setBuffer_offset_atIndex_(a2, v73, v33, 0, 26, v74, v75, v76);
  objc_msgSend_setBytes_length_atIndex_(a2, v77, v217, 20, 25, v78, v79, v80);
  if (v22)
  {
    v226 = 0uLL;
    objc_msgSend_a(*(a1 + 432), v81, v82, v83, v84, v85, v86, v87);
    v208 = v88;
    objc_msgSend_b(*(a1 + 432), v89, v90, v91, v92, v93, v94, v95);
    v207 = v96;
    objc_msgSend_c(*(a1 + 432), v97, v98, v99, v100, v101, v102, v103);
    v104 = v208;
    v104.i32[1] = v207;
    v104.i32[2] = v105;
    v225 = v104;
    LODWORD(v226) = objc_msgSend_neuronType(*(a1 + 432), v106, v107, v108, v109, v110, v111, v112);
    objc_msgSend_setBytes_length_atIndex_(a2, v113, &v225, 32, 24, v114, v115, v116);
    v124 = objc_msgSend_beta(v10, v117, v118, v119, v120, v121, v122, v123);
    objc_msgSend_setBuffer_offset_atIndex_(a2, v125, v124, 0, 23, v126, v127, v128);
    if (v226 == 10)
    {
      objc_msgSend_setBuffer_offset_atIndex_(a2, v129, *(a1 + 440), 0, 22, v130, v131, v132);
    }
  }

  Sampler = MPSDevice::GetSampler();
  objc_msgSend_setSamplerState_atIndex_(a2, v134, Sampler, 0, v135, v136, v137, v138);
  v139 = MPSDevice::GetSampler();
  objc_msgSend_setSamplerState_atIndex_(a2, v140, v139, 1, v141, v142, v143, v144);
  v145 = *(a4 + 40);
  v153 = objc_msgSend_count(v145, v146, v147, v148, v149, v150, v151, v152);
  v239 = 0u;
  v240 = 0u;
  v237 = 0u;
  v238 = 0u;
  v235 = 0u;
  v236 = 0u;
  v233 = 0u;
  v234 = 0u;
  v231 = 0u;
  v232 = 0u;
  v229 = 0u;
  v230 = 0u;
  v227 = 0u;
  v228 = 0u;
  v225 = 0u;
  v226 = 0u;
  if (v50)
  {
    v158 = v153;
    for (i = 0; i < v50; i += v161)
    {
      if (v158 <= i)
      {
        v160 = 0;
        if (v50 - i >= 0x20)
        {
          v161 = 32;
        }

        else
        {
          v161 = v50 - i;
        }

        v162 = v161;
        if (!v161)
        {
          goto LABEL_28;
        }
      }

      else
      {
        if (v158 - i >= 0x20)
        {
          v160 = 32;
          objc_msgSend_getObjects_range_(v145, v154, &v225, i, 32, v155, v156, v157);
        }

        else
        {
          v160 = v158 - i;
          objc_msgSend_getObjects_range_(v145, v154, &v225, i, v158 - i, v155, v156, v157);
        }

        if (v50 - i >= 0x20)
        {
          v161 = 32;
        }

        else
        {
          v161 = v50 - i;
        }

        v162 = v161 - v160;
        if (v161 == v160)
        {
          goto LABEL_28;
        }
      }

      bzero(&v225 + 8 * v160, 8 * v162);
LABEL_28:
      objc_msgSend_setTextures_withRange_(a2, v154, &v225, i, v161, v155, v156, v157);
    }
  }

  objc_msgSend_setBytes_length_atIndex_(a2, v154, a4 + 48, 40, 0, v155, v156, v157);
  v163 = *(a4 + 96);
  v171 = objc_msgSend_count(v163, v164, v165, v166, v167, v168, v169, v170);
  v239 = 0u;
  v240 = 0u;
  v237 = 0u;
  v238 = 0u;
  v235 = 0u;
  v236 = 0u;
  v233 = 0u;
  v234 = 0u;
  v231 = 0u;
  v232 = 0u;
  v229 = 0u;
  v230 = 0u;
  v227 = 0u;
  v228 = 0u;
  v225 = 0u;
  v226 = 0u;
  if (v50)
  {
    v176 = v171;
    for (j = 0; j < v50; j += v179)
    {
      if (v176 <= j)
      {
        v178 = 0;
        if (v50 - j >= 0x20)
        {
          v179 = 32;
        }

        else
        {
          v179 = v50 - j;
        }

        v180 = v179;
        if (!v179)
        {
          goto LABEL_45;
        }
      }

      else
      {
        if (v176 - j >= 0x20)
        {
          v178 = 32;
          objc_msgSend_getObjects_range_(v163, v172, &v225, j, 32, v173, v174, v175);
        }

        else
        {
          v178 = v176 - j;
          objc_msgSend_getObjects_range_(v163, v172, &v225, j, v176 - j, v173, v174, v175);
        }

        if (v50 - j >= 0x20)
        {
          v179 = 32;
        }

        else
        {
          v179 = v50 - j;
        }

        v180 = v179 - v178;
        if (v179 == v178)
        {
          goto LABEL_45;
        }
      }

      bzero(&v225 + 8 * v178, 8 * v180);
LABEL_45:
      objc_msgSend_setTextures_withRange_(a2, v172, &v225, j + v50, v179, v173, v174, v175);
    }
  }

  objc_msgSend_setBytes_length_atIndex_(a2, v172, a4 + 104, 32, 1, v173, v174, v175);
  v181 = *(a4 + 144);
  v189 = objc_msgSend_count(v181, v182, v183, v184, v185, v186, v187, v188);
  v239 = 0u;
  v240 = 0u;
  v237 = 0u;
  v238 = 0u;
  v235 = 0u;
  v236 = 0u;
  v233 = 0u;
  v234 = 0u;
  v231 = 0u;
  v232 = 0u;
  v229 = 0u;
  v230 = 0u;
  v227 = 0u;
  v228 = 0u;
  v225 = 0u;
  v226 = 0u;
  if (v50)
  {
    v194 = v189;
    for (k = 0; k < v50; k += v197)
    {
      if (v194 <= k)
      {
        v196 = 0;
        if (v50 - k >= 0x20)
        {
          v197 = 32;
        }

        else
        {
          v197 = v50 - k;
        }

        v198 = v197;
        if (!v197)
        {
          goto LABEL_62;
        }
      }

      else
      {
        if (v194 - k >= 0x20)
        {
          v196 = 32;
          objc_msgSend_getObjects_range_(v181, v190, &v225, k, 32, v191, v192, v193);
        }

        else
        {
          v196 = v194 - k;
          objc_msgSend_getObjects_range_(v181, v190, &v225, k, v194 - k, v191, v192, v193);
        }

        if (v50 - k >= 0x20)
        {
          v197 = 32;
        }

        else
        {
          v197 = v50 - k;
        }

        v198 = v197 - v196;
        if (v197 == v196)
        {
          goto LABEL_62;
        }
      }

      bzero(&v225 + 8 * v196, 8 * v198);
LABEL_62:
      objc_msgSend_setTextures_withRange_(a2, v190, &v225, k + 2 * v50, v197, v191, v192, v193);
    }
  }

  objc_msgSend_setBytes_length_atIndex_(a2, v190, a4 + 152, 32, 2, v191, v192, v193);
  v225 = vshrq_n_u64(vaddq_s64(v213, vdupq_n_s64(7uLL)), 3uLL);
  *&v226 = v210 * v212;
  v215 = vdupq_n_s64(8uLL);
  v216 = 1;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v199, &v225, &v215, v200, v201, v202, v203);
  MPSLibrary::ReleaseMPSKey();
  return 0;
}

id sub_239D0D098(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v30 = 0;
  v11 = objc_msgSend_decodeBytesForKey_returnedLength_(a1, a2, a2, &v30, a5, a6, a7, a8);
  if (v30)
  {
    v12 = v11 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (!v12)
  {
    v13 = v11;
    v14 = objc_alloc(MEMORY[0x277CCACA8]);
    v19 = objc_msgSend_initWithBytes_length_encoding_(v14, v15, v13, v30 - 1, 1, v16, v17, v18);
    v20 = v19;
    if (v19)
    {
      v21 = NSClassFromString(v19);
      if (v21)
      {
        v28 = v21;
        if (!a4 || objc_msgSend_conformsToProtocol_(v21, v22, a4, v23, v24, v25, v26, v27))
        {
          return objc_msgSend_decodeObjectOfClass_forKey_(a1, v22, v28, a3, v24, v25, v26, v27);
        }
      }

      else if (MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }
    }
  }

  return 0;
}

void sub_239D10374(_Unwind_Exception *exception_object, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (v8)
  {
    objc_msgSend_popDebugGroup(v8, a2, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

MPSImage *sub_239D10394(uint64_t a1, const char *a2, MPSImage *a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = a3;
  if (a4)
  {
    if ((a4 & 3) != 0)
    {
      context = objc_autoreleasePoolPush();
      v12 = [MPSNNSlice alloc];
      v19 = objc_msgSend_initWithDevice_(v12, v13, (*(&v10->super.isa + *MEMORY[0x277CD72E8]))[2], v14, v15, v16, v17, v18);
      v20 = *(&v10->super.isa + *MEMORY[0x277CD72F0]);
      v21 = *(&v10->super.isa + *MEMORY[0x277CD7330]);
      v22 = MEMORY[0x277CD7220];
      v23 = MEMORY[0x277CD7308];
      v24 = *(&v10->super.isa + *MEMORY[0x277CD7308]);
      v32 = objc_msgSend_numberOfImages(v10, v25, v26, v27, v28, v29, v30, v31);
      v34 = objc_msgSend_imageDescriptorWithChannelFormat_width_height_featureChannels_numberOfImages_usage_(v22, v33, v20, v21, v24, a5, v32, 19);
      v40 = objc_msgSend_temporaryImageWithCommandBuffer_imageDescriptor_(MEMORY[0x277CD72A8], v35, a1, v34, v36, v37, v38, v39);
      v90 = 0u;
      v91 = 0u;
      v94 = 0;
      v93 = 0u;
      v92 = 0u;
      v41 = MEMORY[0x277CD7318];
      v42 = v10 + *MEMORY[0x277CD7318];
      v43 = MEMORY[0x277CD72F8];
      v44 = *(&v10->super.isa + *MEMORY[0x277CD72F8]);
      v45 = MEMORY[0x277CD7328];
      v89[0] = v10;
      v89[1] = v42;
      v46 = *(&v10->super.isa + *MEMORY[0x277CD7328]);
      *(&v90 + 1) = v44;
      *&v91 = v46;
      v54 = objc_msgSend_texture(v10, v47, v48, v49, v50, v51, v52, v53);
      v55 = MEMORY[0x277CD7300];
      v56 = *(&v10->super.isa + *MEMORY[0x277CD7300]);
      *(&v91 + 1) = v54;
      v92 = v56;
      *&v93 = v40;
      *(&v93 + 1) = &v40[*v41];
      v57 = *&v40[*v45];
      v95 = *&v40[*v43];
      v96 = v57;
      v65 = objc_msgSend_texture(v40, v58, v59, v60, v61, v62, v63, v64);
      v71 = a2;
      v72 = 0;
      v73 = *&v40[*v55];
      v97 = v65;
      v98 = v73;
      v100 = 0;
      v101 = 0;
      v99 = 0;
      v102 = *&v40[*MEMORY[0x277CD7330]];
      v103 = *&v40[*v23];
      v74 = *&v40[*MEMORY[0x277CD7310]];
      v105 = 0u;
      v106 = 0u;
      v104 = v74;
      v107 = a4;
      v108 = xmmword_239D7E290;
      if ((*(v19 + *MEMORY[0x277CD7378]) & 8) != 0)
      {
        v84 = *(v19 + *MEMORY[0x277CD7360]);
        if (!v84)
        {
          v85 = objc_opt_class();
          v86 = NSStringFromClass(v85);
          v71 = a2;
          v84 = v86;
        }

        objc_msgSend_pushDebugGroup_(v71, v71, v84, v66, v67, v68, v69, v70);
        v71 = a2;
        v72 = a2;
      }

      (*(v19 + 288))(*(v19 + 304), v71, a1, v89);
      if (v72)
      {
        objc_msgSend_popDebugGroup(v72, v75, v76, v77, v78, v79, v80, v81);
      }

      objc_autoreleasePoolPop(context);
      v82 = 0;
      goto LABEL_9;
    }

LABEL_8:
    v82 = objc_msgSend_subImageWithFeatureChannelRange_(a3, a2, a4, a5, a5, a6, a7, a8);
LABEL_9:
    MPSDecrementReadCount(v10);
    return v82;
  }

  if (a5 < *(&a3->super.isa + *MEMORY[0x277CD72F8]))
  {
    goto LABEL_8;
  }

  return v10;
}

void sub_239D1068C(_Unwind_Exception *exception_object, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (v8)
  {
    objc_msgSend_popDebugGroup(v8, a2, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void sub_239D11044(_Unwind_Exception *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
{
  va_start(va, a23);
  sub_239BACD2C(va, a2, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

uint64_t sub_239D112C8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (objc_opt_respondsToSelector())
  {

    return objc_msgSend_imageBatchForCommandBuffer_imageDescriptor_kernel_count_(a2, v10, a1, a3, a4, a5, v14, v15);
  }

  else
  {
    v21 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v10, a5, v11, v12, v13, v14, v15);
    if (v21 && a5)
    {
      v22 = 0;
      v23 = MEMORY[0x277CD7378];
      do
      {
        v24 = objc_msgSend_imageForCommandBuffer_imageDescriptor_kernel_(a2, v17, a1, a3, a4, v18, v19, v20, v39);
        objc_msgSend_setObject_atIndexedSubscript_(v21, v25, v24, v22, v26, v27, v28, v29);
        if ((*(a4 + *v23) & 1) == 0)
        {
          objc_msgSend_objectAtIndexedSubscript_(v21, v17, v22, v30, v31, v18, v19, v20);
          if (!objc_msgSend_objectAtIndexedSubscript_(v21, v32, v22, v33, v34, v35, v36, v37))
          {
            if (MTLReportFailureTypeEnabled())
            {
              v38 = objc_opt_class();
              v39 = NSStringFromClass(v38);
              MTLReportFailure();
            }
          }
        }

        ++v22;
      }

      while (a5 != v22);
    }

    return v21;
  }
}

void *sub_239D12298(uint64_t a1, const char *a2, void *a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = objc_msgSend_count(a3, a2, a3, a4, a5, a6, a7, a8);
  if (!v13)
  {
    return a3;
  }

  v20 = v13;
  if (!a4 && a5 >= *(objc_msgSend_objectAtIndexedSubscript_(a3, v14, 0, v15, v16, v17, v18, v19) + *MEMORY[0x277CD72F8]))
  {
    return a3;
  }

  v21 = objc_msgSend_objectAtIndexedSubscript_(a3, v14, 0, v15, v16, v17, v18, v19);
  v25 = sub_239D10394(a1, a2, v21, a4, a5, v22, v23, v24);
  if (v25 == objc_msgSend_objectAtIndexedSubscript_(a3, v26, 0, v27, v28, v29, v30, v31))
  {
    return a3;
  }

  v38 = malloc_type_malloc(8 * v20, 0x80040B8603338uLL);
  *v38 = v25;
  if (v20 != 1)
  {
    for (i = 1; i != v20; ++i)
    {
      v40 = objc_msgSend_objectAtIndexedSubscript_(a3, v32, i, v33, v34, v35, v36, v37);
      v38[i] = sub_239D10394(a1, a2, v40, a4, a5, v41, v42, v43);
    }
  }

  v44 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v32, v38, v20, v34, v35, v36, v37);
  free(v38);
  return v44;
}

void *sub_239D123FC(void *a1, char *a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = objc_msgSend_count(a1, a2, a3, a4, a5, a6, a7, a8);
  if (v13 >= a4)
  {
    v20 = a4;
  }

  else
  {
    v20 = v13;
  }

  if (!v20)
  {
    return 0;
  }

  v134 = a5;
  v21 = objc_msgSend_objectAtIndexedSubscript_(a1, v14, 0, v15, v16, v17, v18, v19);
  v29 = objc_msgSend_featureChannels(v21, v22, v23, v24, v25, v26, v27, v28);
  v37 = objc_msgSend_retainedReferences(a2, v30, v31, v32, v33, v34, v35, v36);
  v38 = objc_alloc(MEMORY[0x277CBEB18]);
  v45 = objc_msgSend_initWithCapacity_(v38, v39, v20, v40, v41, v42, v43, v44);
  if (v29 < 5)
  {
    v46 = 2;
  }

  else
  {
    v46 = 3;
  }

  context = objc_autoreleasePoolPush();
  for (i = 0; i != v20; ++i)
  {
    v54 = objc_msgSend_objectAtIndexedSubscript_(a1, v47, a3 + i, v48, v49, v50, v51, v52);
    v62 = objc_msgSend_texture(v54, v55, v56, v57, v58, v59, v60, v61);
    if (objc_msgSend_textureType(v62, v63, v64, v65, v66, v67, v68, v69) == v46)
    {
      v71 = 1;
      if (!v62)
      {
        goto LABEL_13;
      }

LABEL_12:
      objc_msgSend_setObject_atIndexedSubscript_(v45, v47, v62, i, v49, v50, v51, v52);
      goto LABEL_13;
    }

    v72 = objc_msgSend_pixelFormat(v62, v47, v70, v48, v49, v50, v51, v52);
    v74 = objc_msgSend_newTextureViewWithPixelFormat_textureType_levels_slices_(v62, v73, v72, v46, 0, 1, 0, 1);
    v71 = v74 == 0;
    if (v74)
    {
      v62 = v74;
    }

    if (v62)
    {
      goto LABEL_12;
    }

LABEL_13:
    if (!v71)
    {
    }
  }

  if ((v37 & 1) == 0)
  {
    v75 = v45;
    v135[0] = MEMORY[0x277D85DD0];
    v135[1] = 3221225472;
    v135[2] = sub_239D15EA0;
    v135[3] = &unk_278B28F28;
    v135[4] = v45;
    objc_msgSend_addCompletedHandler_(a2, v76, v135, v77, v78, v79, v80, v81);
  }

  objc_autoreleasePoolPop(context);
  if (v134)
  {
    v88 = objc_msgSend_objectAtIndexedSubscript_(a1, v82, 0, v83, v84, v85, v86, v87);
    v96 = objc_msgSend_featureChannelFormat(v88, v89, v90, v91, v92, v93, v94, v95);
    v103 = objc_msgSend_objectAtIndexedSubscript_(v45, v97, 0, v98, v99, v100, v101, v102);
    v111 = objc_msgSend_textureType(v103, v104, v105, v106, v107, v108, v109, v110);
    if (v96 - 1 > 4)
    {
      v119 = 0;
    }

    else
    {
      v119 = dword_239D91498[v96 - 1];
    }

    if (v111 == 3)
    {
      v120 = v119 + 1;
    }

    else
    {
      v120 = v119;
    }

    objc_msgSend_device(v103, v112, v113, v114, v115, v116, v117, v118);
    MPSDevice = MPSDevice::GetMPSDevice();
    v129 = objc_msgSend_pixelFormat(v103, v122, v123, v124, v125, v126, v127, v128);
    PixelInfo = MPSDevice::GetPixelInfo(MPSDevice, v129, v96);
    v131 = v120 | 4;
    if ((PixelInfo & 0x3000000) == 0)
    {
      v131 = v120;
    }

    *v134 = v131 | 2;
  }

  return v45;
}

uint64_t sub_239D16C78(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a1 + 328);
  v11 = *(a1 + 336);
  v12 = *(a1 + 344);
  v13 = *(a4 + 40);
  v14 = *(a4 + 104);
  v15 = vmovn_s64(*(a4 + 168));
  v111 = *(a4 + 200) >> 2;
  v110 = vuzp1_s16(v15, v15).u32[0];
  v16 = vmovn_s64(*(a4 + 120));
  v17 = *(a4 + 192) >> 2;
  v112 = vuzp1_s16(v16, v16).u32[0];
  v18 = vmovn_s64(*(a4 + 144));
  v113 = v17;
  v114 = vuzp1_s16(v18, v18).u32[0];
  v115 = objc_msgSend_arrayLength(v14, a2, a3, a4, a5, a6, a7, a8);
  v26 = objc_msgSend_width(v13, v19, v20, v21, v22, v23, v24, v25);
  v27 = *(a4 + 168);
  v35 = objc_msgSend_height(v13, v28, v29, v30, v31, v32, v33, v34);
  v44 = v26 - v27;
  if (v26 != v27)
  {
    v45 = *(a4 + 176);
    if (v35 != v45)
    {
      v46 = v35 - v45;
      *&v47 = v44 / v10;
      *&v43 = (v44 - 1) / (v10 - 1);
      v48 = v46 - 1;
      v49 = v11 - 1;
      if (v12)
      {
        v47 = v43;
      }

      else
      {
        v49 = v11;
        v48 = v46;
      }

      *(&v47 + 1) = v48 / v49;
      v116 = v47;
      objc_msgSend_pixelFormat(*(a4 + 40), v36, v37, v38, v39, v40, v41, v42);
      ComputeState = MPSLibrary::GetComputeState();
      objc_msgSend_setComputePipelineState_(a2, v51, ComputeState, v52, v53, v54, v55, v56);
      v64 = objc_msgSend_threadExecutionWidth(ComputeState, v57, v58, v59, v60, v61, v62, v63);
      if (v64 <= 1)
      {
        v72 = 1;
      }

      else
      {
        v72 = v64;
      }

      v73 = objc_msgSend_maxTotalThreadsPerThreadgroup(ComputeState, v65, v66, v67, v68, v69, v70, v71);
      MPSLibrary::ReleaseComputeState();
      objc_msgSend_setTexture_atIndex_(a2, v74, v13, 0, v75, v76, v77, v78);
      objc_msgSend_setTexture_atIndex_(a2, v79, v14, 1, v80, v81, v82, v83);
      objc_msgSend_setBytes_length_atIndex_(a2, v84, &v110, 32, 0, v85, v86, v87);
      Sampler = MPSDevice::GetSampler();
      objc_msgSend_setSamplerState_atIndex_(a2, v89, Sampler, 0, v90, v91, v92, v93);
      v94 = *(a4 + 152);
      v109[0] = (v72 + *(a4 + 144) - 1) / v72;
      v109[1] = (v73 / v72 + v94 - 1) / (v73 / v72);
      v109[2] = objc_msgSend_arrayLength(v14, v95, v96, v97, v98, v99, v100, v101);
      v108[0] = v72;
      v108[1] = v73 / v72;
      v108[2] = 1;
      objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v102, v109, v108, v103, v104, v105, v106);
    }
  }

  return 0;
}

uint64_t sub_239D1757C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 112);
  v5 = [MPSCNNDropout alloc];
  LODWORD(v6) = *(v4 + 56);
  v7 = *(v4 + 64);
  v8 = *(v4 + 88);
  v14 = *(v4 + 72);
  v15 = v8;
  result = objc_msgSend_initWithDevice_keepProbability_seed_maskStrideInPixels_(v5, v9, a2, v7, &v14, v10, v11, v12, v6);
  *(a1 + 104) = result;
  return result;
}

BOOL sub_239D175FC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 104);
  if (!v9)
  {
    return *(*(a1 + 112) + 56) == 1.0;
  }

  objc_msgSend_keepProbability(v9, a2, a3, a4, a5, a6, a7, a8);
  return v10 == 1.0;
}

uint64_t sub_239D179CC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 112);
  v5 = [MPSCNNDropoutGradient alloc];
  LODWORD(v6) = *(v4 + 56);
  v7 = *(v4 + 64);
  v8 = *(v4 + 88);
  v14 = *(v4 + 72);
  v15 = v8;
  result = objc_msgSend_initWithDevice_keepProbability_seed_maskStrideInPixels_(v5, v9, a2, v7, &v14, v10, v11, v12, v6);
  *(a1 + 104) = result;
  return result;
}

void sub_239D17A50(uint64_t a1)
{
  sub_239C13FBC(a1);

  JUMPOUT(0x23EE7D130);
}

void *sub_239D17A90(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a5)
  {
    return 0;
  }

  v9 = a7;
  v14 = *(a1 + 104);
  v16 = objc_msgSend_objectAtIndexedSubscript_(a2, a2, 0, a4, a5, a6, a7, a8);
  if (v9)
  {
    result = objc_msgSend_temporaryResultStateForCommandBuffer_sourceImage_sourceStates_destinationImage_(v14, v15, a6, v16, a3, a4, v18, v19);
    if (!result)
    {
      return result;
    }

    v26 = *(**(a1 + 80) + 72) + *(**(a1 + 80) + 80);
    if (v26 != 1)
    {
      v27 = result;
      objc_msgSend_setReadCount_(result, v20, v26, v21, v22, v23, v24, v25);
      result = v27;
    }
  }

  else
  {
    result = objc_msgSend_resultStateForSourceImage_sourceStates_destinationImage_(v14, v15, v16, a3, a4, v17, v18, v19);
    if (!result)
    {
      return result;
    }
  }

  v28 = **(a1 + 8);
  if (v28)
  {
    v29 = result;
    v30 = objc_msgSend_label(v28, v20, v26, v21, v22, v23, v24, v25);
    if (v30)
    {
      objc_msgSend_setLabel_(v29, v31, v30, v32, v33, v34, v35, v36);
    }

    return v29;
  }

  return result;
}

void sub_239D17B8C(uint64_t a1)
{
  sub_239C13FBC(a1);

  JUMPOUT(0x23EE7D130);
}

uint64_t sub_239D17D38(uint64_t a1, uint64_t a2)
{
  v4 = [MPSCNNSoftMax alloc];
  result = objc_msgSend_initWithDevice_(v4, v5, a2, v6, v7, v8, v9, v10);
  *(a1 + 104) = result;
  return result;
}

uint64_t sub_239D17ED8(uint64_t a1, uint64_t a2)
{
  v4 = [MPSCNNLogSoftMax alloc];
  result = objc_msgSend_initWithDevice_(v4, v5, a2, v6, v7, v8, v9, v10);
  *(a1 + 104) = result;
  return result;
}

uint64_t sub_239D18128(uint64_t a1, uint64_t a2)
{
  v4 = [MPSCNNSoftMaxGradient alloc];
  result = objc_msgSend_initWithDevice_(v4, v5, a2, v6, v7, v8, v9, v10);
  *(a1 + 104) = result;
  return result;
}

uint64_t sub_239D18378(uint64_t a1, uint64_t a2)
{
  v4 = [MPSCNNLogSoftMaxGradient alloc];
  result = objc_msgSend_initWithDevice_(v4, v5, a2, v6, v7, v8, v9, v10);
  *(a1 + 104) = result;
  return result;
}

void sub_239D183B8(uint64_t a1)
{
  sub_239C13FBC(a1);

  JUMPOUT(0x23EE7D130);
}

void sub_239D183FC(uint64_t a1)
{
  sub_239C13FBC(a1);

  JUMPOUT(0x23EE7D130);
}

void sub_239D18440(uint64_t a1)
{
  sub_239C13FBC(a1);

  JUMPOUT(0x23EE7D130);
}

void sub_239D18484(uint64_t a1)
{
  sub_239C13FBC(a1);

  JUMPOUT(0x23EE7D130);
}

uint64_t sub_239D18618(char *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v734 = *MEMORY[0x277D85DE8];
  v11 = *(a4 + 224);
  v12 = objc_msgSend_primaryKernelWidth(a1, a2, a3, a4, a5, a6, a7, a8);
  objc_msgSend_primaryKernelHeight(a1, v13, v14, v15, v16, v17, v18, v19);
  v27 = objc_msgSend_primaryDilationRateX(a1, v20, v21, v22, v23, v24, v25, v26);
  objc_msgSend_primaryDilationRateY(a1, v28, v29, v30, v31, v32, v33, v34);
  v35 = *(a4 + 280);
  v43 = objc_msgSend_secondaryKernelWidth(a1, v36, v37, v38, v39, v40, v41, v42);
  objc_msgSend_secondaryKernelHeight(a1, v44, v45, v46, v47, v48, v49, v50);
  v58 = objc_msgSend_secondaryDilationRateX(a1, v51, v52, v53, v54, v55, v56, v57);
  objc_msgSend_secondaryDilationRateY(a1, v59, v60, v61, v62, v63, v64, v65);
  v649 = 0u;
  v650 = 0u;
  v648 = 0u;
  memset(&v647[1], 0, 32);
  v647[0] = 0u;
  v641 = vdupq_n_s64(1uLL);
  v642 = *a4;
  v643 = *(a4 + 56);
  v644 = *(a4 + 112);
  v645 = *(a4 + 136);
  v646 = *(a4 + 160);
  v66 = vmovn_s64(*(a4 + 176));
  LOWORD(v67) = v66.i16[0];
  WORD1(v67) = v66.i16[2];
  HIDWORD(v67) = ((*(a4 + 304) + 3) >> 2);
  v68 = vmovn_s64(*(a4 + 200));
  v69 = *(a4 + 144);
  HIWORD(v70) = 1;
  LOWORD(v70) = v68.i16[0];
  WORD1(v70) = v68.i16[2];
  WORD2(v70) = (v69 + 3) >> 2;
  *&v647[0] = v67;
  *(&v647[0] + 1) = v70;
  LOWORD(v647[1]) = v69;
  WORD2(v647[1]) = 1;
  WORD5(v647[1]) = objc_msgSend_maxBatchSize(a1, v71, v72, v73, v74, v75, v76, v77);
  DWORD2(v647[2]) = *(a4 + 16);
  *&v648 = *(a4 + 40);
  WORD5(v648) = v11 - (v12 >> 1) * v27;
  WORD4(v648) = WORD5(v648);
  HIDWORD(v648) = 0;
  WORD1(v649) = v12;
  LOWORD(v649) = v12;
  WORD3(v649) = v11;
  WORD2(v649) = v11;
  WORD4(v649) = objc_msgSend_primaryStrideInPixelsX(a1, v78, v79, v80, v81, v82, v83, v84);
  WORD5(v649) = objc_msgSend_primaryStrideInPixelsY(a1, v85, v86, v87, v88, v89, v90, v91);
  HIWORD(v649) = v27;
  WORD6(v649) = v27;
  LOWORD(v650) = *(a4 + 312);
  WORD1(v650) = *(a4 + 24);
  DWORD1(v650) = *(a4 + 240);
  DWORD2(v650) = *(a4 + 72);
  v651 = *(a4 + 96);
  v653 = v35 - (v43 >> 1) * v58;
  v652 = v653;
  v654 = 0;
  v656 = v43;
  v655 = v43;
  v658 = v35;
  v657 = v35;
  v659 = objc_msgSend_secondaryStrideInPixelsX(a1, v92, v93, v94, v95, v96, v97, v98);
  v660 = objc_msgSend_secondaryStrideInPixelsY(a1, v99, v100, v101, v102, v103, v104, v105);
  v662 = v58;
  v661 = v58;
  v107 = *(a4 + 312);
  v106 = *(a4 + 320);
  v663 = v106;
  v664 = *(a4 + 80);
  v108 = *(a4 + 304);
  v665 = *(a4 + 296);
  v666 = 0;
  v109 = *(a4 + 192);
  v667 = *(a4 + 176);
  *v668 = v109;
  v110 = *(a4 + 224);
  *&v668[16] = *(a4 + 208);
  v669 = v110;
  v111 = *(a4 + 240);
  v671 = *(a4 + 280);
  v112 = *(a4 + 296);
  v670 = v111;
  v672 = v112;
  v673 = v108;
  v674 = v107;
  v636 = *&a1[*MEMORY[0x277CD7370]];
  v675 = v106;
  v120 = objc_msgSend_maxBatchSize(a1, v113, v114, v115, v116, v117, v118, v119);
  v623 = vmovn_s64(vandq_s8(v669, vcgtzq_s64(v669)));
  v624 = vmovn_s64(vandq_s8(v671, vcgtzq_s64(v671)));
  v634 = vmovn_s64(v667);
  v622 = vmovn_s64(*&v668[8]);
  v629 = *&v668[8];
  v630 = *&v668[16];
  v121 = *(v644 + 296) + 3;
  v122 = v121 >> 2;
  v123 = *(v644 + 304);
  *&v710[2] = 0;
  objc_msgSend_epsilon(*(v644 + 288), v124, v125, v126, v127, v128, v129, v130);
  v705[0] = v131;
  v132 = *(v644 + 296);
  v707 = *&v668[24];
  v706 = v132;
  v133 = v132 / v123;
  v134 = 1.0 / ((*&v668[16] * *&v668[8]) * v133);
  *&v705[1] = v134;
  v708 = 1;
  LOWORD(v709) = v107 >> 2;
  HIWORD(v709) = v106 >> 2;
  *v710 = (v108 >> 2);
  *&v710[2] = *v668;
  WORD1(v711) = v623.i16[2];
  LOWORD(v711) = v623.i16[0];
  HIWORD(v711) = v624.i16[2];
  WORD2(v711) = v624.i16[0];
  v713 = v634.i16[2];
  v712 = v634.i16[0];
  v715 = v622.i16[2];
  v714 = v622.i16[0];
  v716 = v123;
  v717 = v133;
  if ((v121 & 0x3FFF8) != 0)
  {
    v135 = (v121 >> 2);
    v136 = __clz(0x80000000 / v135);
    v137 = (0x80000000 / v135) >> (16 - v136);
    v138 = v136 + 15;
    v139 = -65536 * v122 * v137 / v135;
    if (v139 <= v137)
    {
      v140 = v137;
    }

    else
    {
      v140 = v137 + 1;
    }

    if (v139 <= v137)
    {
      LOWORD(v137) = 0;
    }

    v141 = (v138 << 48) | ((v139 - v137) << 32) | (v140 << 16) | (v121 >> 2);
  }

  else
  {
    v141 = 65537;
  }

  v718 = v141;
  v142 = *(v636 + 32);
  v703 = 0uLL;
  v704 = 0;
  (*(*v142 + 16))(&v703, v142);
  v143 = MEMORY[0x277CD7488];
  v617 = v651;
  v618 = v648;
  v144 = (*(v644 + *MEMORY[0x277CD7488]) + 8);
  explicit = atomic_load_explicit(v144, memory_order_acquire);
  if (explicit)
  {
    v145 = (*(v644 + *v143) + 152);
    v626 = atomic_load_explicit(v145, memory_order_acquire);
    if (v626)
    {
      goto LABEL_11;
    }
  }

  else
  {
    MPSAutoBuffer::AllocateBuffer(v144, 0);
    explicit = atomic_load_explicit(v144, memory_order_acquire);
    v145 = (*(v644 + *v143) + 152);
    v626 = atomic_load_explicit(v145, memory_order_acquire);
    if (v626)
    {
LABEL_11:
      v146 = (*(v644 + *v143) + 80);
      v625 = atomic_load_explicit(v146, memory_order_acquire);
      if (!v625)
      {
        goto LABEL_15;
      }

      goto LABEL_16;
    }
  }

  MPSAutoBuffer::AllocateBuffer(v145, 0);
  v147 = atomic_load_explicit(v145, memory_order_acquire);
  v146 = (*(v644 + *v143) + 80);
  v625 = atomic_load_explicit(v146, memory_order_acquire);
  v626 = v147;
  if (!v625)
  {
LABEL_15:
    MPSAutoBuffer::AllocateBuffer(v146, 0);
    v625 = atomic_load_explicit(v146, memory_order_acquire);
  }

LABEL_16:
  MEMORY[0x23EE7D040](v702, a3, 0);
  v148 = 4 * v123 + 12;
  TempBuffer = MPSAutoCache::GetTempBuffer(v702, v148 & 0xFFFFFFFFFFFFFFF0, 0);
  v620 = MPSAutoCache::GetTempBuffer(v702, v148 & 0xFFFFFFFFFFFFFFF0, 0);
  v149 = ((DWORD2(v647[2]) - 1) & 0xFFFFFFFD) == 0;
  v627 = v122;
  if (objc_msgSend_gamma(v644, v150, v151, v152, v153, v154, v155, v156) || objc_msgSend_beta(v644, v157, v158, v159, v160, v161, v162, v163))
  {
    v149 |= 2u;
    v164 = 2;
  }

  else
  {
    v164 = 0;
  }

  *&v165 = -1;
  *(&v165 + 1) = -1;
  v699 = v165;
  v700 = v165;
  v698 = v165;
  v701 = -1;
  v697 = v149;
  v695 = v120;
  v696 = v645 & 0x3F | ((BYTE8(v647[2]) & 0x3F) << 6) & 0xFFF | ((BYTE8(v650) & 0x3F) << 12);
  v692 = v165;
  v693 = v165;
  v691 = v165;
  v694 = -1;
  v690 = v149 | 4;
  v688 = v120;
  v689 = v696;
  v687 = -1;
  v685 = v165;
  v686 = v165;
  v682 = -1;
  v684 = v165;
  v681 = v120;
  v683 = v164;
  MPSLibrary::CreateUberShaderKey();
  MPSLibrary::CreateUberShaderKey();
  MPSLibrary::CreateUberShaderKey();
  MPSLibrary::CreateUberShaderKey();
  MPSLibrary::CreateUberShaderKey();
  PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
  v631 = MPSLibrary::GetPipelineStateForMPSKey();
  v628 = MPSLibrary::GetPipelineStateForMPSKey();
  v166 = MPSLibrary::GetPipelineStateForMPSKey();
  v633 = MPSLibrary::GetPipelineStateForMPSKey();
  v174 = objc_msgSend_maxTotalThreadsPerThreadgroup(PipelineStateForMPSKey, v167, v168, v169, v170, v171, v172, v173, 0, 0, 0, 0, 0);
  v182 = objc_msgSend_maxTotalThreadsPerThreadgroup(v631, v175, v176, v177, v178, v179, v180, v181);
  v190 = objc_msgSend_maxTotalThreadsPerThreadgroup(v633, v183, v184, v185, v186, v187, v188, v189);
  v198 = objc_msgSend_maxTotalThreadsPerThreadgroup(v166, v191, v192, v193, v194, v195, v196, v197);
  v637 = v142;
  v616 = v166;
  v206 = objc_msgSend_maxTotalThreadsPerThreadgroup(v628, v199, v200, v201, v202, v203, v204, v205);
  if (v174 >= v182)
  {
    v214 = v182;
  }

  else
  {
    v214 = v174;
  }

  if (v214 >= v190)
  {
    v214 = v190;
  }

  if (v214 >= v198)
  {
    v214 = v198;
  }

  if (v214 >= v206)
  {
    v215 = v206;
  }

  else
  {
    v215 = v214;
  }

  v216 = *(&v703 + 1);
  v217 = v703;
  if (*(&v703 + 1) * v703 > v215)
  {
    do
    {
      v216 >>= 1;
    }

    while (v216 * v703 > v215);
    *(&v703 + 1) = v216;
  }

  v619 = v215;
  if ((BYTE8(v647[2]) & 2) == 0)
  {
    objc_msgSend_setTexture_atIndex_(a2, v207, v648, v120, v210, v211, v212, v213);
    goto LABEL_53;
  }

  v222 = objc_msgSend_count(v648, v207, v208, v209, v210, v211, v212, v213);
  v733 = 0u;
  v732 = 0u;
  v731 = 0u;
  v730 = 0u;
  v729 = 0u;
  v728 = 0u;
  v727 = 0u;
  v726 = 0u;
  v725 = 0u;
  v724 = 0u;
  v723 = 0u;
  v722 = 0u;
  v721 = 0u;
  v720 = 0u;
  memset(v719, 0, sizeof(v719));
  if (v120)
  {
    v223 = v222;
    for (i = 0; i < v120; i += v226)
    {
      if (v223 <= i)
      {
        v225 = 0;
        if (v120 - i >= 0x20)
        {
          v226 = 32;
        }

        else
        {
          v226 = v120 - i;
        }

        v227 = v226;
        if (!v226)
        {
          goto LABEL_45;
        }
      }

      else
      {
        if (v223 - i >= 0x20)
        {
          v225 = 32;
          objc_msgSend_getObjects_range_(v648, v218, v719, i, 32, v219, v220, v221);
        }

        else
        {
          v225 = v223 - i;
          objc_msgSend_getObjects_range_(v648, v218, v719, i, v223 - i, v219, v220, v221);
        }

        if (v120 - i >= 0x20)
        {
          v226 = 32;
        }

        else
        {
          v226 = v120 - i;
        }

        v227 = v226 - v225;
        if (v226 == v225)
        {
          goto LABEL_45;
        }
      }

      bzero(v719 + 8 * v225, 8 * v227);
LABEL_45:
      objc_msgSend_setTextures_withRange_(a2, v218, v719, i + v120, v226, v219, v220, v221);
    }
  }

  v215 = v619;
LABEL_53:
  objc_msgSend_setBytes_length_atIndex_(a2, v218, &v648 + 8, 32, 1, v219, v220, v221);
  v235 = 2 * v120;
  v640 = 2 * v120;
  if ((BYTE8(v650) & 2) == 0)
  {
    objc_msgSend_setTexture_atIndex_(a2, v228, v617, 2 * v120, v231, v232, v233, v234);
    goto LABEL_74;
  }

  v240 = v651;
  v241 = objc_msgSend_count(v651, v228, v229, v230, v231, v232, v233, v234);
  v733 = 0u;
  v732 = 0u;
  v731 = 0u;
  v730 = 0u;
  v729 = 0u;
  v728 = 0u;
  v727 = 0u;
  v726 = 0u;
  v725 = 0u;
  v724 = 0u;
  v723 = 0u;
  v722 = 0u;
  v721 = 0u;
  v720 = 0u;
  memset(v719, 0, sizeof(v719));
  if (v120)
  {
    v242 = v241;
    for (j = 0; j < v120; j += v245)
    {
      if (v242 <= j)
      {
        v244 = 0;
        if (v120 - j >= 0x20)
        {
          v245 = 32;
        }

        else
        {
          v245 = v120 - j;
        }

        v246 = v245;
        if (!v245)
        {
          goto LABEL_66;
        }
      }

      else
      {
        if (v242 - j >= 0x20)
        {
          v244 = 32;
          objc_msgSend_getObjects_range_(v240, v236, v719, j, 32, v237, v238, v239);
        }

        else
        {
          v244 = v242 - j;
          objc_msgSend_getObjects_range_(v240, v236, v719, j, v242 - j, v237, v238, v239);
        }

        if (v120 - j >= 0x20)
        {
          v245 = 32;
        }

        else
        {
          v245 = v120 - j;
        }

        v246 = v245 - v244;
        if (v245 == v244)
        {
          goto LABEL_66;
        }
      }

      bzero(v719 + 8 * v244, 8 * v246);
LABEL_66:
      objc_msgSend_setTextures_withRange_(a2, v236, v719, j + v640, v245, v237, v238, v239);
    }
  }

  v235 = 2 * v120;
  v215 = v619;
LABEL_74:
  objc_msgSend_setBytes_length_atIndex_(a2, v236, &v652, 32, 2, v237, v238, v239);
  v253 = 16 * v217 * v216;
  v254 = v630 > *(&v703 + 1) || v629 > v703;
  v255 = PipelineStateForMPSKey;
  if (v254)
  {
    v255 = PipelineStateForMPSKey;
    if ((*(v637 + 32) & 1) == 0)
    {
      if ((v629 + v703 - 1) / v703 >= v703)
      {
        v256 = v703;
      }

      else
      {
        v256 = (v629 + v703 - 1) / v703;
      }

      if ((v630 + *(&v703 + 1) - 1) / *(&v703 + 1) >= *(&v703 + 1))
      {
        v257 = *(&v703 + 1);
      }

      else
      {
        v257 = (v630 + *(&v703 + 1) - 1) / *(&v703 + 1);
      }

      v258 = (*(v644 + 296) + 3) >> 2;
      *v680 = v256;
      *&v680[8] = v257;
      *&v680[16] = v258;
      v679 = **(&v642 + 1);
      v259 = **(&v643 + 1);
      v678 = **(&v643 + 1);
      v260 = *(*(&v642 + 1) + 3) & 0xF;
      if (v260 == 2)
      {
        v261 = 105;
      }

      else if (v260 == 1)
      {
        v261 = 55;
      }

      else
      {
        v261 = 125;
      }

      v679 = v679 & 0xFFFFFFFFFFFFFC00 | v261;
      v262 = *(*(&v643 + 1) + 3) & 0xF;
      v263 = v259 & 0xFFFFFFFFFFFFFC00;
      v615 = v257;
      if (v262 == 2)
      {
        v264 = 105;
      }

      else if (v262 == 1)
      {
        v264 = 55;
      }

      else
      {
        v264 = 125;
      }

      v678 = v263 | v264;
      v265 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v247, 1, v248, v249, v250, v251, v252);
      v638 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v266, 1, v267, v268, v269, v270, v271);
      TempTexture = MPSAutoCache::GetTempTexture();
      objc_msgSend_addObject_(v265, v273, TempTexture, v274, v275, v276, v277, v278);
      v279 = MPSAutoCache::GetTempTexture();
      objc_msgSend_addObject_(v638, v280, v279, v281, v282, v283, v284, v285);
      objc_msgSend_setComputePipelineState_(a2, v286, v631, v287, v288, v289, v290, v291);
      v614 = v256;
      if ((BYTE8(v647[2]) & 2) == 0)
      {
        v299 = objc_msgSend_objectAtIndexedSubscript_(v265, v292, 0, v294, v295, v296, v297, v298);
        objc_msgSend_setTexture_atIndex_(a2, v300, v299, 0, v301, v302, v303, v304);
LABEL_117:
        objc_msgSend_setBytes_length_atIndex_(a2, v305, v647, 40, 0, v306, v307, v308);
        if ((BYTE8(v647[2]) & 2) == 0)
        {
          v322 = objc_msgSend_objectAtIndexedSubscript_(v638, v315, 0, v317, v318, v319, v320, v321);
          objc_msgSend_setTexture_atIndex_(a2, v323, v322, 3 * v120, v324, v325, v326, v327);
LABEL_138:
          objc_msgSend_setBuffer_offset_atIndex_(a2, v328, explicit, 0, 30, v329, v330, v331);
          objc_msgSend_setBytes_length_atIndex_(a2, v338, v705, 52, 29, v339, v340, v341);
          objc_msgSend_setThreadgroupMemoryLength_atIndex_(a2, v342, v253, 0, v343, v344, v345, v346);
          objc_msgSend_setThreadgroupMemoryLength_atIndex_(a2, v347, v253, 1, v348, v349, v350, v351);
          Sampler = MPSDevice::GetSampler();
          objc_msgSend_setSamplerState_atIndex_(a2, v353, Sampler, 0, v354, v355, v356, v357);
          v358 = MPSDevice::GetSampler();
          objc_msgSend_setSamplerState_atIndex_(a2, v359, v358, 1, v360, v361, v362, v363);
          *&v719[0] = v256;
          *(&v719[0] + 1) = v615;
          *&v719[1] = v627;
          v676 = v703;
          v677 = v704;
          objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v364, v719, &v676, v365, v366, v367, v368);
          v709 = 0;
          v711 = 0;
          v376 = vmovn_s64(*v680);
          v715 = v376.i16[2];
          v714 = v376.i16[0];
          if ((BYTE8(v647[2]) & 2) == 0)
          {
            v377 = objc_msgSend_objectAtIndexedSubscript_(v265, v369, 0, v371, v372, v373, v374, v375);
            objc_msgSend_setTexture_atIndex_(a2, v378, v377, v120, v379, v380, v381, v382);
LABEL_159:
            objc_msgSend_setBytes_length_atIndex_(a2, v383, &v648 + 8, 32, 1, v384, v385, v386);
            if ((BYTE8(v650) & 2) == 0)
            {
              v400 = objc_msgSend_objectAtIndexedSubscript_(v638, v393, 0, v395, v396, v397, v398, v399);
              objc_msgSend_setTexture_atIndex_(a2, v401, v400, v235, v402, v403, v404, v405);
LABEL_180:
              objc_msgSend_setBytes_length_atIndex_(a2, v406, &v652, 32, 2, v407, v408, v409);
              v255 = v628;
              goto LABEL_181;
            }

            v410 = objc_msgSend_count(v638, v393, v394, v395, v396, v397, v398, v399);
            v733 = 0u;
            v732 = 0u;
            v731 = 0u;
            v730 = 0u;
            v729 = 0u;
            v728 = 0u;
            v727 = 0u;
            v726 = 0u;
            v725 = 0u;
            v724 = 0u;
            v723 = 0u;
            v722 = 0u;
            v721 = 0u;
            v720 = 0u;
            memset(v719, 0, sizeof(v719));
            if (!v120)
            {
LABEL_179:
              v235 = 2 * v120;
              goto LABEL_180;
            }

            v411 = v410;
            v412 = 0;
            while (1)
            {
              if (v411 <= v412)
              {
                v413 = 0;
                if (v120 - v412 >= 0x20)
                {
                  v414 = 32;
                }

                else
                {
                  v414 = v120 - v412;
                }

                v415 = v414;
                if (!v414)
                {
                  goto LABEL_172;
                }
              }

              else
              {
                if (v411 - v412 >= 0x20)
                {
                  v413 = 32;
                  objc_msgSend_getObjects_range_(v638, v406, v719, v412, 32, v407, v408, v409);
                }

                else
                {
                  v413 = v411 - v412;
                  objc_msgSend_getObjects_range_(v638, v406, v719, v412, v411 - v412, v407, v408, v409);
                }

                if (v120 - v412 >= 0x20)
                {
                  v414 = 32;
                }

                else
                {
                  v414 = v120 - v412;
                }

                v415 = v414 - v413;
                if (v414 == v413)
                {
                  goto LABEL_172;
                }
              }

              bzero(v719 + 8 * v413, 8 * v415);
LABEL_172:
              objc_msgSend_setTextures_withRange_(a2, v406, v719, v412 + v640, v414, v407, v408, v409);
              v412 += v414;
              if (v412 >= v120)
              {
                goto LABEL_179;
              }
            }
          }

          v387 = objc_msgSend_count(v265, v369, v370, v371, v372, v373, v374, v375);
          v733 = 0u;
          v732 = 0u;
          v731 = 0u;
          v730 = 0u;
          v729 = 0u;
          v728 = 0u;
          v727 = 0u;
          v726 = 0u;
          v725 = 0u;
          v724 = 0u;
          v723 = 0u;
          v722 = 0u;
          v721 = 0u;
          v720 = 0u;
          memset(v719, 0, sizeof(v719));
          if (!v120)
          {
LABEL_158:
            v235 = 2 * v120;
            v215 = v619;
            goto LABEL_159;
          }

          v388 = v387;
          v389 = 0;
          while (1)
          {
            if (v388 <= v389)
            {
              v390 = 0;
              if (v120 - v389 >= 0x20)
              {
                v391 = 32;
              }

              else
              {
                v391 = v120 - v389;
              }

              v392 = v391;
              if (!v391)
              {
                goto LABEL_151;
              }
            }

            else
            {
              if (v388 - v389 >= 0x20)
              {
                v390 = 32;
                objc_msgSend_getObjects_range_(v265, v383, v719, v389, 32, v384, v385, v386);
              }

              else
              {
                v390 = v388 - v389;
                objc_msgSend_getObjects_range_(v265, v383, v719, v389, v388 - v389, v384, v385, v386);
              }

              if (v120 - v389 >= 0x20)
              {
                v391 = 32;
              }

              else
              {
                v391 = v120 - v389;
              }

              v392 = v391 - v390;
              if (v391 == v390)
              {
                goto LABEL_151;
              }
            }

            bzero(v719 + 8 * v390, 8 * v392);
LABEL_151:
            objc_msgSend_setTextures_withRange_(a2, v383, v719, v389 + v120, v391, v384, v385, v386);
            v389 += v391;
            if (v389 >= v120)
            {
              goto LABEL_158;
            }
          }
        }

        v332 = objc_msgSend_count(v638, v315, v316, v317, v318, v319, v320, v321);
        v733 = 0u;
        v732 = 0u;
        v731 = 0u;
        v730 = 0u;
        v729 = 0u;
        v728 = 0u;
        v727 = 0u;
        v726 = 0u;
        v725 = 0u;
        v724 = 0u;
        v723 = 0u;
        v722 = 0u;
        v721 = 0u;
        v720 = 0u;
        memset(v719, 0, sizeof(v719));
        if (!v120)
        {
LABEL_137:
          v235 = 2 * v120;
          v215 = v619;
          v256 = v614;
          goto LABEL_138;
        }

        v333 = v332;
        v334 = 0;
        while (1)
        {
          if (v333 <= v334)
          {
            v335 = 0;
            if (v120 - v334 >= 0x20)
            {
              v336 = 32;
            }

            else
            {
              v336 = v120 - v334;
            }

            v337 = v336;
            if (!v336)
            {
              goto LABEL_130;
            }
          }

          else
          {
            if (v333 - v334 >= 0x20)
            {
              v335 = 32;
              objc_msgSend_getObjects_range_(v638, v328, v719, v334, 32, v329, v330, v331);
            }

            else
            {
              v335 = v333 - v334;
              objc_msgSend_getObjects_range_(v638, v328, v719, v334, v333 - v334, v329, v330, v331);
            }

            if (v120 - v334 >= 0x20)
            {
              v336 = 32;
            }

            else
            {
              v336 = v120 - v334;
            }

            v337 = v336 - v335;
            if (v336 == v335)
            {
              goto LABEL_130;
            }
          }

          bzero(v719 + 8 * v335, 8 * v337);
LABEL_130:
          objc_msgSend_setTextures_withRange_(a2, v328, v719, v334 + 3 * v120, v336, v329, v330, v331);
          v334 += v336;
          if (v334 >= v120)
          {
            goto LABEL_137;
          }
        }
      }

      v309 = objc_msgSend_count(v265, v292, v293, v294, v295, v296, v297, v298);
      v733 = 0u;
      v732 = 0u;
      v731 = 0u;
      v730 = 0u;
      v729 = 0u;
      v728 = 0u;
      v727 = 0u;
      v726 = 0u;
      v725 = 0u;
      v724 = 0u;
      v723 = 0u;
      v722 = 0u;
      v721 = 0u;
      v720 = 0u;
      memset(v719, 0, sizeof(v719));
      if (!v120)
      {
LABEL_116:
        v235 = 2 * v120;
        v215 = v619;
        v256 = v614;
        goto LABEL_117;
      }

      v310 = v309;
      v311 = 0;
      while (1)
      {
        if (v310 <= v311)
        {
          v312 = 0;
          if (v120 - v311 >= 0x20)
          {
            v313 = 32;
          }

          else
          {
            v313 = v120 - v311;
          }

          v314 = v313;
          if (!v313)
          {
            goto LABEL_109;
          }
        }

        else
        {
          if (v310 - v311 >= 0x20)
          {
            v312 = 32;
            objc_msgSend_getObjects_range_(v265, v305, v719, v311, 32, v306, v307, v308);
          }

          else
          {
            v312 = v310 - v311;
            objc_msgSend_getObjects_range_(v265, v305, v719, v311, v310 - v311, v306, v307, v308);
          }

          if (v120 - v311 >= 0x20)
          {
            v313 = 32;
          }

          else
          {
            v313 = v120 - v311;
          }

          v314 = v313 - v312;
          if (v313 == v312)
          {
            goto LABEL_109;
          }
        }

        bzero(v719 + 8 * v312, 8 * v314);
LABEL_109:
        objc_msgSend_setTextures_withRange_(a2, v305, v719, v311, v313, v306, v307, v308);
        v311 += v313;
        if (v311 >= v120)
        {
          goto LABEL_116;
        }
      }
    }
  }

LABEL_181:
  objc_msgSend_setComputePipelineState_(a2, v247, v255, v248, v249, v250, v251, v252);
  objc_msgSend_setBuffer_offset_atIndex_(a2, v416, explicit, 0, 30, v417, v418, v419);
  objc_msgSend_setBuffer_offset_atIndex_(a2, v420, v626, 0, 29, v421, v422, v423);
  objc_msgSend_setBuffer_offset_atIndex_(a2, v424, v625, 0, 28, v425, v426, v427);
  objc_msgSend_setBytes_length_atIndex_(a2, v428, v705, 52, 27, v429, v430, v431);
  objc_msgSend_setThreadgroupMemoryLength_atIndex_(a2, v432, v253, 0, v433, v434, v435, v436);
  objc_msgSend_setThreadgroupMemoryLength_atIndex_(a2, v437, v253, 1, v438, v439, v440, v441);
  v442 = MPSDevice::GetSampler();
  objc_msgSend_setSamplerState_atIndex_(a2, v443, v442, 0, v444, v445, v446, v447);
  v448 = MPSDevice::GetSampler();
  objc_msgSend_setSamplerState_atIndex_(a2, v449, v448, 1, v450, v451, v452, v453);
  v719[0] = vdupq_n_s64(1uLL);
  *&v719[1] = v627;
  *v680 = v703;
  *&v680[16] = v704;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v454, v719, v680, v455, v456, v457, v458);
  objc_msgSend_setComputePipelineState_(a2, v459, v616, v460, v461, v462, v463, v464);
  objc_msgSend_setBuffer_offset_atIndex_(a2, v465, v626, 0, 30, v466, v467, v468);
  objc_msgSend_setBuffer_offset_atIndex_(a2, v469, v625, 0, 29, v470, v471, v472);
  objc_msgSend_setBuffer_offset_atIndex_(a2, v473, TempBuffer, 0, 28, v474, v475, v476);
  objc_msgSend_setBuffer_offset_atIndex_(a2, v477, v620, 0, 27, v478, v479, v480);
  if (objc_msgSend_gamma(v644, v481, v482, v483, v484, v485, v486, v487))
  {
    v495 = objc_msgSend_gamma(v644, v488, v489, v490, v491, v492, v493, v494);
    objc_msgSend_setBuffer_offset_atIndex_(a2, v496, v495, 0, 26, v497, v498, v499);
  }

  objc_msgSend_setBytes_length_atIndex_(a2, v488, v705, 52, 25, v492, v493, v494);
  *&v719[0] = v641.i64[1];
  *(v719 + 8) = vdupq_n_s64(1uLL);
  *v680 = v215;
  *&v680[8] = *(v719 + 8);
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v500, v719, v680, v501, v502, v503, v504);
  v715 = v622.i16[2];
  v714 = v622.i16[0];
  LOWORD(v709) = v674 >> 2;
  WORD1(v711) = v623.i16[2];
  LOWORD(v711) = v623.i16[0];
  v505 = v703;
  HIWORD(v709) = v675 >> 2;
  HIWORD(v711) = v624.i16[2];
  WORD2(v711) = v624.i16[0];
  objc_msgSend_setComputePipelineState_(a2, v506, v633, v507, v508, v509, v510, v511);
  if ((BYTE8(v647[2]) & 2) == 0)
  {
    objc_msgSend_setTexture_atIndex_(a2, v512, v618, v120, v515, v516, v517, v518);
    goto LABEL_204;
  }

  v523 = v648;
  v524 = objc_msgSend_count(v648, v512, v513, v514, v515, v516, v517, v518);
  v733 = 0u;
  v732 = 0u;
  v731 = 0u;
  v730 = 0u;
  v729 = 0u;
  v728 = 0u;
  v727 = 0u;
  v726 = 0u;
  v725 = 0u;
  v724 = 0u;
  v723 = 0u;
  v722 = 0u;
  v721 = 0u;
  v720 = 0u;
  memset(v719, 0, sizeof(v719));
  if (v120)
  {
    v525 = v524;
    for (k = 0; k < v120; k += v528)
    {
      if (v525 <= k)
      {
        v527 = 0;
        if (v120 - k >= 0x20)
        {
          v528 = 32;
        }

        else
        {
          v528 = v120 - k;
        }

        v529 = v528;
        if (!v528)
        {
          goto LABEL_196;
        }
      }

      else
      {
        if (v525 - k >= 0x20)
        {
          v527 = 32;
          objc_msgSend_getObjects_range_(v523, v519, v719, k, 32, v520, v521, v522);
        }

        else
        {
          v527 = v525 - k;
          objc_msgSend_getObjects_range_(v523, v519, v719, k, v525 - k, v520, v521, v522);
        }

        if (v120 - k >= 0x20)
        {
          v528 = 32;
        }

        else
        {
          v528 = v120 - k;
        }

        v529 = v528 - v527;
        if (v528 == v527)
        {
          goto LABEL_196;
        }
      }

      bzero(v719 + 8 * v527, 8 * v529);
LABEL_196:
      objc_msgSend_setTextures_withRange_(a2, v519, v719, k + v120, v528, v520, v521, v522);
    }
  }

  v235 = 2 * v120;
LABEL_204:
  objc_msgSend_setBytes_length_atIndex_(a2, v519, &v648 + 8, 32, 1, v520, v521, v522);
  if ((BYTE8(v650) & 2) == 0)
  {
    objc_msgSend_setTexture_atIndex_(a2, v530, v617, v235, v533, v534, v535, v536);
    goto LABEL_224;
  }

  v541 = v651;
  v542 = objc_msgSend_count(v651, v530, v531, v532, v533, v534, v535, v536);
  v733 = 0u;
  v732 = 0u;
  v731 = 0u;
  v730 = 0u;
  v729 = 0u;
  v728 = 0u;
  v727 = 0u;
  v726 = 0u;
  v725 = 0u;
  v724 = 0u;
  v723 = 0u;
  v722 = 0u;
  v721 = 0u;
  v720 = 0u;
  memset(v719, 0, sizeof(v719));
  if (v120)
  {
    v543 = v542;
    for (m = 0; m < v120; m += v546)
    {
      if (v543 <= m)
      {
        v545 = 0;
        if (v120 - m >= 0x20)
        {
          v546 = 32;
        }

        else
        {
          v546 = v120 - m;
        }

        v547 = v546;
        if (!v546)
        {
          goto LABEL_217;
        }
      }

      else
      {
        if (v543 - m >= 0x20)
        {
          v545 = 32;
          objc_msgSend_getObjects_range_(v541, v537, v719, m, 32, v538, v539, v540);
        }

        else
        {
          v545 = v543 - m;
          objc_msgSend_getObjects_range_(v541, v537, v719, m, v543 - m, v538, v539, v540);
        }

        if (v120 - m >= 0x20)
        {
          v546 = 32;
        }

        else
        {
          v546 = v120 - m;
        }

        v547 = v546 - v545;
        if (v546 == v545)
        {
          goto LABEL_217;
        }
      }

      bzero(v719 + 8 * v545, 8 * v547);
LABEL_217:
      objc_msgSend_setTextures_withRange_(a2, v537, v719, m + v640, v546, v538, v539, v540);
    }
  }

LABEL_224:
  objc_msgSend_setBytes_length_atIndex_(a2, v537, &v652, 32, 2, v538, v539, v540);
  if ((v645 & 2) == 0)
  {
    objc_msgSend_setTexture_atIndex_(a2, v548, v646, 0, v551, v552, v553, v554);
    goto LABEL_244;
  }

  v559 = objc_msgSend_count(v646, v548, v549, v550, v551, v552, v553, v554);
  v733 = 0u;
  v732 = 0u;
  v731 = 0u;
  v730 = 0u;
  v729 = 0u;
  v728 = 0u;
  v727 = 0u;
  v726 = 0u;
  v725 = 0u;
  v724 = 0u;
  v723 = 0u;
  v722 = 0u;
  v721 = 0u;
  v720 = 0u;
  memset(v719, 0, sizeof(v719));
  if (v120)
  {
    v560 = v559;
    for (n = 0; n < v120; n += v563)
    {
      if (v560 <= n)
      {
        v562 = 0;
        if (v120 - n >= 0x20)
        {
          v563 = 32;
        }

        else
        {
          v563 = v120 - n;
        }

        v564 = v563;
        if (!v563)
        {
          goto LABEL_237;
        }
      }

      else
      {
        if (v560 - n >= 0x20)
        {
          v562 = 32;
          objc_msgSend_getObjects_range_(v646, v555, v719, n, 32, v556, v557, v558);
        }

        else
        {
          v562 = v560 - n;
          objc_msgSend_getObjects_range_(v646, v555, v719, n, v560 - n, v556, v557, v558);
        }

        if (v120 - n >= 0x20)
        {
          v563 = 32;
        }

        else
        {
          v563 = v120 - n;
        }

        v564 = v563 - v562;
        if (v563 == v562)
        {
          goto LABEL_237;
        }
      }

      bzero(v719 + 8 * v562, 8 * v564);
LABEL_237:
      objc_msgSend_setTextures_withRange_(a2, v555, v719, n, v563, v556, v557, v558);
    }
  }

LABEL_244:
  objc_msgSend_setBytes_length_atIndex_(a2, v555, v647, 40, 0, v556, v557, v558);
  objc_msgSend_setBuffer_offset_atIndex_(a2, v565, explicit, 0, 30, v566, v567, v568);
  objc_msgSend_setBuffer_offset_atIndex_(a2, v569, TempBuffer, 0, 29, v570, v571, v572);
  objc_msgSend_setBuffer_offset_atIndex_(a2, v573, v620, 0, 28, v574, v575, v576);
  if (objc_msgSend_gamma(v644, v577, v578, v579, v580, v581, v582, v583))
  {
    v591 = objc_msgSend_gamma(v644, v584, v585, v586, v587, v588, v589, v590);
    objc_msgSend_setBuffer_offset_atIndex_(a2, v592, v591, 0, 27, v593, v594, v595);
  }

  objc_msgSend_setBytes_length_atIndex_(a2, v584, v705, 52, 26, v588, v589, v590);
  v596 = MPSDevice::GetSampler();
  objc_msgSend_setSamplerState_atIndex_(a2, v597, v596, 0, v598, v599, v600, v601);
  v602 = MPSDevice::GetSampler();
  objc_msgSend_setSamplerState_atIndex_(a2, v603, v602, 1, v604, v605, v606, v607);
  *&v719[0] = (v629 + v505 - 1) / v505;
  *(&v719[0] + 1) = (v630 + *(&v505 + 1) - 1) / *(&v505 + 1);
  *&v719[1] = v627;
  *v680 = v703;
  *&v680[16] = v704;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v608, v719, v680, v609, v610, v611, v612);
  MPSLibrary::ReleaseComputeState();
  MPSLibrary::ReleaseComputeState();
  MPSLibrary::ReleaseComputeState();
  MPSLibrary::ReleaseComputeState();
  MPSLibrary::ReleaseMPSKey();
  MPSLibrary::ReleaseMPSKey();
  MPSLibrary::ReleaseMPSKey();
  MPSLibrary::ReleaseMPSKey();
  MPSLibrary::ReleaseMPSKey();
  MPSAutoCache::~MPSAutoCache(v702);
  return 0;
}

__n128 sub_239D1A4C4@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  result = *(a1 + 8);
  *a2 = result;
  a2[1].n128_u64[0] = *(a1 + 24);
  return result;
}

uint64_t sub_239D1A4D8(uint64_t a1, uint64_t a2)
{
  v3 = MPSCreateFunctionConstantValues();
  v8 = v3;
  v12 = 1;
  v9 = *(a2 + 64);
  if ((v9 & 1) == 0)
  {
    if ((v9 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    objc_msgSend_setConstantValue_type_atIndex_(v8, v4, &v12, 53, 1, v5, v6, v7);
    if ((*(a2 + 64) & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  objc_msgSend_setConstantValue_type_atIndex_(v3, v4, &v12, 53, 0, v5, v6, v7);
  v9 = *(a2 + 64);
  if ((v9 & 2) != 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  if ((v9 & 4) != 0)
  {
LABEL_4:
    objc_msgSend_setConstantValue_type_atIndex_(v8, v4, &v12, 53, 2, v5, v6, v7);
  }

LABEL_5:
  v10 = _MPSNewSpecializedFunction();

  return v10;
}

const char *GetMPSCNNNeuronTypeName(unsigned int a1)
{
  if (a1 > 0xF)
  {
    return "<invalid/missing type>";
  }

  else
  {
    return off_278B30B88[a1];
  }
}

uint64_t sub_239D1B484(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = *(a4 + 192);
  v13 = *(a4 + 88);
  if (v12 < v13)
  {
    v165 = v11;
    v166 = v10;
    v167 = v8;
    v168 = v9;
    if (*(a4 + 24) + v12 <= v13)
    {
      goto LABEL_7;
    }

    if ((*(a1 + *MEMORY[0x277CD7378]) & 1) == 0 && MTLReportFailureTypeEnabled())
    {
      v18 = objc_opt_class();
      v138 = NSStringFromClass(v18);
      MTLReportFailure();
    }

    if (*(a4 + 88) != *(a4 + 192))
    {
LABEL_7:
      v147 = objc_msgSend_maxBatchSize(a1, a2, a3, a4, a5, a6, a7, a8, v138);
      v143 = vmovn_s64(*(a4 + 168));
      v26 = objc_msgSend_kernelWidth(a1, v19, v20, v21, v22, v23, v24, v25);
      v34 = objc_msgSend_kernelHeight(a1, v27, v28, v29, v30, v31, v32, v33);
      v35 = v34;
      v36 = vand_s8(__PAIR64__(v34, v26), 0xFFFF0000FFFFLL);
      v44 = objc_msgSend_kernelWidth(a1, v37, v38, v39, v40, v41, v42, v43);
      v144 = v44;
      v52 = objc_msgSend_kernelWidth(a1, v45, v46, v47, v48, v49, v50, v51);
      v53 = v52;
      v54 = vand_s8(__PAIR64__(v52, v44), 0xFFFF0000FFFFLL);
      v146 = a3;
      v62 = objc_msgSend_dilationRateX(a1, v55, v56, v57, v58, v59, v60, v61);
      v70 = objc_msgSend_dilationRateY(a1, v63, v64, v65, v66, v67, v68, v69);
      v145 = a2;
      v71 = v70;
      v140 = __PAIR64__(v70, v62);
      v79 = objc_msgSend_dilationRateX(a1, v72, v73, v74, v75, v76, v77, v78);
      v87 = objc_msgSend_dilationRateY(a1, v80, v81, v82, v83, v84, v85, v86);
      v88 = v87;
      v142 = __PAIR64__(v87, v79);
      v139 = objc_msgSend_strideInPixelsX(a1, v89, v90, v91, v92, v93, v94, v95);
      LOWORD(v44) = objc_msgSend_strideInPixelsY(a1, v96, v97, v98, v99, v100, v101, v102);
      v141 = objc_msgSend_strideInPixelsX(a1, v103, v104, v105, v106, v107, v108, v109);
      v117 = objc_msgSend_strideInPixelsY(a1, v110, v111, v112, v113, v114, v115, v116);
      v118 = *(a4 + 120);
      v119 = *(a4 + 136);
      v120 = *(a4 + 144);
      v121 = *(a4 + 160);
      HIDWORD(v122) = 0;
      v163 = 0u;
      v164 = 0u;
      v161 = 0u;
      v162 = 0u;
      v159 = 0u;
      v160 = 0u;
      v157 = 0u;
      v158 = 0u;
      v155 = 0u;
      v156 = 0u;
      v123 = *(a1 + *MEMORY[0x277CD7350]);
      v153 = 0u;
      v154 = 0u;
      v124 = *(a1 + *MEMORY[0x277CD7370]);
      v125 = *(a1 + 272);
      v148[0] = v123;
      v148[1] = v124;
      v148[2] = v125;
      v148[3] = 0;
      v148[4] = *(a1 + *MEMORY[0x277CD7378]);
      v148[5] = v121;
      v126 = *(a4 + 120);
      v127 = *(a4 + 136);
      v151 = *(a4 + 152);
      v152 = 0u;
      v149 = v126;
      v150 = v127;
      *&v152 = *(a4 + 192);
      DWORD2(v152) = *(a1 + 328);
      *&v122 = *(a1 + 332);
      DWORD2(v122) = *(a1 + 340);
      v153 = v122;
      v128 = *(a4 + 40);
      *&v154 = *(a1 + 368);
      *(&v154 + 1) = v128;
      LODWORD(v155) = *(a4 + 16);
      *&v126 = vmls_s32(v143, v140, vshr_n_u32(v36, 1uLL));
      WORD3(v155) = WORD2(v126);
      WORD2(v155) = v126;
      HIWORD(v155) = v35;
      WORD6(v155) = v26;
      WORD1(v156) = v143.i16[2];
      LOWORD(v156) = v143.i16[0];
      WORD3(v156) = v44;
      WORD2(v156) = v139;
      WORD5(v156) = v71;
      WORD4(v156) = v62;
      WORD6(v156) = *(a4 + 200);
      HIWORD(v156) = *(a4 + 24);
      LOWORD(v157) = *(a4 + 184);
      *(&v157 + 1) = v128;
      LODWORD(v158) = v155;
      *&v126 = vmls_s32(v143, v142, vshr_n_u32(v54, 1uLL));
      WORD3(v158) = WORD2(v126);
      WORD2(v158) = v126;
      HIWORD(v158) = v53;
      WORD6(v158) = v144;
      WORD1(v159) = v143.i16[2];
      LOWORD(v159) = v143.i16[0];
      WORD3(v159) = v117;
      WORD2(v159) = v141;
      WORD5(v159) = v88;
      WORD4(v159) = v79;
      HIDWORD(v159) = HIDWORD(v156);
      LOWORD(v160) = v157;
      *(&v160 + 1) = *(a4 + 104);
      LODWORD(v161) = *(a4 + 80);
      LODWORD(v122) = (v152 + 3) >> 2;
      DWORD1(v122) = v119;
      *v118.i8 = vuzp1_s16(vmovn_s64(v118), *&v122);
      v129 = *(a4 + 88);
      LODWORD(v122) = (v129 + 3) >> 2;
      DWORD1(v122) = v121;
      *(&v161 + 1) = v118.i64[0];
      *&v162 = vuzp1_s16(vmovn_s64(v120), *&v122);
      WORD4(v162) = v129;
      WORD5(v162) = objc_msgSend_numberOfImages(*(a4 + 64), v130, v131, v132, v133, v134, v135, v136);
      HIDWORD(v162) = 1;
      LOWORD(v163) = 0;
      WORD1(v163) = v147;
      *(&v163 + 4) = 0;
      sub_239D1E4F8(v145, v146, v148);
    }
  }

  return 0;
}

uint64_t sub_239D1B88C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  memset(&v21[3], 0, 64);
  memset(&v21[1], 0, 32);
  v21[0] = 0u;
  memset(v20, 0, sizeof(v20));
  v18 = 0u;
  v19 = 0u;
  v4 = *(a1 + *MEMORY[0x277CD7370]);
  v13[0] = *(a1 + *MEMORY[0x277CD7350]);
  v13[1] = v4;
  v13[2] = *(a1 + 272);
  v13[3] = 0;
  v5 = *(a4 + 8);
  v13[4] = *(a1 + *MEMORY[0x277CD7378]);
  v13[5] = v5;
  v16 = *(a4 + 168);
  v17 = 0u;
  v6 = *(a4 + 152);
  v14 = *(a4 + 136);
  v15 = v6;
  *&v17 = *(a4 + 208);
  DWORD2(v17) = *(a1 + 328);
  *&v6 = *(a1 + 332);
  DWORD2(v6) = *(a1 + 340);
  v18 = v6;
  v7 = *(a4 + 96);
  *&v19 = *(a1 + 368);
  *(&v19 + 1) = v7;
  LODWORD(v20[0]) = *(a4 + 88);
  v8 = *(a4 + 104);
  *(&v20[1] + 4) = *(a4 + 120);
  *(v20 + 4) = v8;
  *(&v20[2] + 1) = v7;
  LODWORD(v21[0]) = v20[0];
  v9 = *(a4 + 104);
  *(&v21[1] + 4) = *(a4 + 120);
  *(v21 + 4) = v9;
  *(&v21[2] + 1) = *(a4 + 40);
  LODWORD(v21[3]) = *(a4 + 32);
  v10 = *(a4 + 80);
  v11 = *(a4 + 48);
  *(&v21[4] + 8) = *(a4 + 64);
  *(&v21[5] + 1) = v10;
  *(&v21[3] + 8) = v11;
  sub_239D1E4F8(a2, a3, v13);
  return 0;
}

uint64_t sub_239D1C93C(uint64_t a1, const char *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v154 = vmovn_s64(*(a4 + 224));
  v155 = objc_msgSend_kernelOffsetX(a1, a2, a3, a4, a5, a6, a7, a8);
  v153 = objc_msgSend_kernelOffsetY(a1, v10, v11, v12, v13, v14, v15, v16);
  v24 = objc_msgSend_primaryKernelWidth(a1, v17, v18, v19, v20, v21, v22, v23);
  v32 = objc_msgSend_primaryKernelHeight(a1, v25, v26, v27, v28, v29, v30, v31);
  v33 = v32;
  v34 = vand_s8(__PAIR64__(v32, v24), 0xFFFF0000FFFFLL);
  v42 = objc_msgSend_primaryDilationRateX(a1, v35, v36, v37, v38, v39, v40, v41);
  v50 = objc_msgSend_primaryDilationRateY(a1, v43, v44, v45, v46, v47, v48, v49);
  v51 = v50;
  v145 = __PAIR64__(v50, v42);
  v149 = objc_msgSend_primaryStrideInPixelsX(a1, v52, v53, v54, v55, v56, v57, v58);
  v147 = objc_msgSend_primaryStrideInPixelsY(a1, v59, v60, v61, v62, v63, v64, v65);
  v151 = vmovn_s64(*(a4 + 280));
  v73 = objc_msgSend_secondaryKernelWidth(a1, v66, v67, v68, v69, v70, v71, v72);
  v81 = objc_msgSend_secondaryKernelHeight(a1, v74, v75, v76, v77, v78, v79, v80);
  v82 = v81;
  v83 = vand_s8(__PAIR64__(v81, v73), 0xFFFF0000FFFFLL);
  v91 = objc_msgSend_secondaryDilationRateX(a1, v84, v85, v86, v87, v88, v89, v90);
  v99 = objc_msgSend_secondaryDilationRateY(a1, v92, v93, v94, v95, v96, v97, v98);
  v100 = v99;
  v141 = __PAIR64__(v99, v91);
  v143 = objc_msgSend_secondaryStrideInPixelsX(a1, v101, v102, v103, v104, v105, v106, v107);
  v142 = objc_msgSend_secondaryStrideInPixelsY(a1, v108, v109, v110, v111, v112, v113, v114);
  v146 = *(a4 + 176);
  v144 = *(a4 + 192);
  v150 = *(a4 + 200);
  v148 = *(a4 + 216);
  v152 = objc_msgSend_maxBatchSize(a1, v115, v116, v117, v118, v119, v120, v121);
  v173 = 0u;
  v174 = 0u;
  v171 = 0u;
  v172 = 0u;
  v169 = 0u;
  v170 = 0u;
  v167 = 0u;
  v168 = 0u;
  v165 = 0u;
  v166 = 0u;
  v163 = 0u;
  v164 = 0u;
  v122 = *(a1 + *MEMORY[0x277CD7370]);
  v158[0] = *(a1 + *MEMORY[0x277CD7350]);
  v158[1] = v122;
  v123 = *(a1 + 360);
  v158[2] = *(a1 + 352);
  v158[3] = v123;
  v124 = *(a4 + 216);
  v158[4] = *(a1 + *MEMORY[0x277CD7378]);
  v158[5] = v124;
  v161 = *(a4 + 208);
  v162 = 0u;
  v125 = *(a4 + 192);
  v159 = *(a4 + 176);
  v160 = v125;
  v126 = *(a4 + 296);
  *&v162 = *(a4 + 304);
  DWORD2(v162) = *(a1 + 432);
  *&v125 = *(a1 + 436);
  DWORD2(v125) = *(a1 + 444);
  v127 = *(a1 + 472);
  v163 = v125;
  v128 = *(a4 + 40);
  *&v164 = v127;
  *(&v164 + 1) = v128;
  LODWORD(v165) = *(a4 + 16);
  v129 = vmls_s32(v154, v145, vshr_n_u32(v34, 1uLL));
  WORD2(v165) = v129.i16[0];
  WORD3(v165) = v129.i16[2];
  WORD5(v165) = v153;
  WORD4(v165) = v155;
  WORD6(v165) = v24;
  HIWORD(v165) = v33;
  LOWORD(v166) = v154.i16[0];
  WORD1(v166) = v154.i16[2];
  WORD3(v166) = v147;
  WORD2(v166) = v149;
  WORD4(v166) = v42;
  WORD5(v166) = v51;
  v130 = *(a4 + 320);
  WORD6(v166) = *(a4 + 312);
  HIWORD(v166) = *(a4 + 24);
  LOWORD(v167) = *(a4 + 240);
  *(&v167 + 1) = *(a4 + 96);
  v131 = vmls_s32(v151, v141, vshr_n_u32(v83, 1uLL));
  LODWORD(v168) = *(a4 + 72);
  WORD3(v168) = v131.i16[2];
  WORD2(v168) = v131.i16[0];
  HIWORD(v168) = v82;
  WORD6(v168) = v73;
  WORD1(v169) = v151.i16[2];
  LOWORD(v169) = v151.i16[0];
  WORD2(v169) = v143;
  WORD3(v169) = v142;
  WORD5(v169) = v100;
  WORD4(v169) = v91;
  WORD6(v169) = v130;
  HIWORD(v169) = *(a4 + 80);
  LOWORD(v170) = v126;
  *(&v170 + 1) = *(a4 + 160);
  LODWORD(v171) = *(a4 + 136);
  LODWORD(v125) = (v162 + 3) >> 2;
  DWORD1(v125) = v144;
  v132 = *(a4 + 144);
  v131.i32[0] = (v132 + 3) >> 2;
  v131.i32[1] = v148;
  *(&v171 + 1) = vuzp1_s16(vmovn_s64(v146), *&v125);
  *&v172 = vuzp1_s16(vmovn_s64(v150), v131);
  WORD4(v172) = v132;
  WORD5(v172) = objc_msgSend_numberOfImages(*(a4 + 120), v133, v134, v135, v136, v137, v138, v139);
  HIDWORD(v172) = 2;
  LOWORD(v173) = 0;
  WORD1(v173) = v152;
  *(&v173 + 4) = 0;
  LOBYTE(v174) = 1;
  sub_239D1E4F8(a2, a3, v158);
  return 0;
}

uint64_t sub_239D1CD24(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v24 = 0u;
  memset(&v23[3], 0, 48);
  memset(&v23[1], 0, 32);
  v23[0] = 0u;
  memset(v22, 0, sizeof(v22));
  v20 = 0u;
  v21 = 0u;
  v4 = *(a1 + *MEMORY[0x277CD7370]);
  v15[0] = *(a1 + *MEMORY[0x277CD7350]);
  v15[1] = v4;
  v5 = *(a1 + 360);
  v15[2] = *(a1 + 352);
  v15[3] = v5;
  v6 = *(a4 + 8);
  v15[4] = *(a1 + *MEMORY[0x277CD7378]);
  v15[5] = v6;
  v18 = *(a4 + 216);
  v19 = 0u;
  v7 = *(a4 + 200);
  v16 = *(a4 + 184);
  v17 = v7;
  *&v19 = *(a4 + 280);
  DWORD2(v19) = *(a1 + 432);
  *&v7 = *(a1 + 436);
  DWORD2(v7) = *(a1 + 444);
  v8 = *(a1 + 472);
  v20 = v7;
  v9 = *(a4 + 96);
  *&v21 = v8;
  *(&v21 + 1) = v9;
  LODWORD(v22[0]) = *(a4 + 88);
  v10 = *(a4 + 104);
  *(&v22[1] + 4) = *(a4 + 120);
  *(v22 + 4) = v10;
  *(&v22[2] + 1) = *(a4 + 144);
  LODWORD(v23[0]) = v22[0];
  v11 = *(a4 + 152);
  *(&v23[1] + 4) = *(a4 + 168);
  *(v23 + 4) = v11;
  *(&v23[2] + 1) = *(a4 + 40);
  LODWORD(v23[3]) = *(a4 + 32);
  v12 = *(a4 + 80);
  v13 = *(a4 + 48);
  *(&v23[4] + 8) = *(a4 + 64);
  *(&v23[5] + 1) = v12;
  *(&v23[3] + 8) = v13;
  LOBYTE(v24) = 1;
  sub_239D1E4F8(a2, a3, v15);
  return 0;
}

uint64_t sub_239D1E4F8(uint64_t result, void *a2, uint64_t a3)
{
  v231 = *MEMORY[0x277D85DE8];
  v4 = *(a3 + 72);
  v3 = *(a3 + 80);
  if (v4)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    return result;
  }

  v8 = result;
  v9 = *(a3 + 104);
  v204 = *(a3 + 112);
  v208 = *(a3 + 128);
  v10 = *(a3 + 274);
  v11 = *(a3 + 174);
  v12 = *(a3 + 288);
  *&v218 = v10;
  if (v12 == 1)
  {
    v13 = (*(a3 + 192) & 0x3F) << 12;
  }

  else
  {
    v13 = 0;
  }

  v207 = v9;
  *(&v218 + 1) = *(a3 + 240) & 0x3F | ((*(a3 + 144) & 0x3F) << 6) | v13;
  *&v219[0] = (v9 | (((v11 & 3) == 0) << 16));
  memset(v219 + 8, 0, 56);
  v200 = v11 + 3;
  MPSLibrary::CreateUberShaderKey();
  v209 = a2;
  PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
  v15.i16[0] = v4;
  v15.i16[1] = v3;
  v15.i16[2] = (v11 + 3) >> 2;
  v15.i16[3] = *(a3 + 40);
  v210 = v15;
  v30 = objc_msgSend_maxTotalThreadsPerThreadgroup(PipelineStateForMPSKey, v16, v17, v18, v19, v20, v21, v22, 0, 0, 0, 0, 0);
  v31 = *(*a3 + 16);
  v32 = vmax_u16(v210, 0x1000100010001);
  v215 = 0uLL;
  v216 = 0;
  v211 = v32;
  if (v31)
  {
    objc_msgSend_maxThreadsPerThreadgroup(v31, v23, v24, v25, v26, v27, v28, v29);
    v32 = v211;
    v33 = *(&v215 + 1);
    v34 = v215;
    v35 = v216;
  }

  else
  {
    v35 = 0;
    v33 = 0;
    v34 = 0;
  }

  v36 = v32.i16[0];
  v37 = v32.u16[1];
  v38 = v32.u16[2];
  if (v32.u16[0] * v32.u16[1] * v32.u16[2] <= v30 && v34 >= v32.u16[0] && v33 >= v32.u16[1] && v35 >= v32.u16[2])
  {
    v42 = v32;
    v43 = v32.u16[0];
    v44 = v32.u16[1];
    v45 = v32.u16[2];
    goto LABEL_81;
  }

  if (v31)
  {
    v218 = 0uLL;
    *&v219[0] = 0;
    objc_msgSend_maxThreadsPerThreadgroup(v31, v23, v24, v25, v26, v27, v28, v29);
    v33 = *(&v215 + 1);
    v34 = v215;
    v35 = v216;
  }

  v46 = (64 - __clz(v30)) >> 1;
  if (v46 >= 0x8000000000000000)
  {
    v47 = 0x8000000000000000;
  }

  else
  {
    v47 = v46;
  }

  if (v30 >> v47)
  {
    LOWORD(v48) = 0;
  }

  else
  {
    v48 = v30 >> v47;
  }

  if (v34 >= v36)
  {
    v49 = v36;
  }

  else
  {
    v49 = v34;
  }

  if (v33 >= v37)
  {
    v50 = v37;
  }

  else
  {
    v50 = v33;
  }

  if (v35 >= v38)
  {
    v51 = v38;
  }

  else
  {
    v51 = v35;
  }

  v52 = v48;
  if (v48)
  {
    v52 = (v48 + v36 - 1) / v48;
  }

  v32.i16[3] = v211.i16[3];
  v42.i16[2] = 1;
  v53 = 1 << v47;
  if (v47 > 0xF)
  {
    v54 = 0;
    if (v52)
    {
      goto LABEL_43;
    }

LABEL_46:
    v55 = 0;
    v42.i16[0] = v48;
    if (v54)
    {
      goto LABEL_44;
    }

    goto LABEL_47;
  }

  v54 = (v53 + v37 - 1) / v53;
  if (!v52)
  {
    goto LABEL_46;
  }

LABEL_43:
  v55 = (v52 + v36 - 1) / v52;
  v42.i16[0] = v48;
  if (v54)
  {
LABEL_44:
    v56 = (v54 + v37 - 1) / v54;
    goto LABEL_48;
  }

LABEL_47:
  v56 = 0;
LABEL_48:
  if (v55 >= v49)
  {
    v43 = v49;
  }

  else
  {
    v43 = v55;
  }

  if (v56 >= v50)
  {
    v44 = v50;
  }

  else
  {
    v44 = v56;
  }

  v57 = v44 * v43;
  if (v30 / (v44 * v43) >= v51)
  {
    v58 = v51;
  }

  else
  {
    v58 = v30 / (v44 * v43);
  }

  if (v211.u16[3] < 2u)
  {
    v45 = v58;
    v60 = v30 - v58 * v57;
    if (v56 < v50)
    {
      goto LABEL_63;
    }
  }

  else
  {
    if (v58 < 2)
    {
      v45 = v58;
    }

    else
    {
      do
      {
        v45 = v58;
        v59 = v38 / v58 * v58;
        --v58;
      }

      while (v38 != v59);
    }

    v60 = v30 - v45 * v57;
    if (v56 < v50)
    {
LABEL_63:
      v61 = v45 * v43;
      if (v60 > v45 * v43)
      {
        v44 += v60 / v61;
        if (v44 >= v50)
        {
          v44 = v50;
        }

        v60 = v30 - v44 * v61;
      }
    }
  }

  v42.i16[1] = v53;
  if (v55 < v49)
  {
    v62 = v44 * v45;
    if (v60 > v44 * v45)
    {
      v43 += v60 / v62;
      if (v43 >= v49)
      {
        v43 = v49;
      }

      v60 = v30 - v43 * v62;
    }
  }

  if (v45 < v51 && v60 > v43 * v44)
  {
    v45 += v60 / (v43 * v44);
    if (v45 >= v51)
    {
      v45 = v51;
    }

    if (v211.u16[3] >= 2u && v45 >= 2)
    {
      do
      {
        v63 = v45;
        v64 = v38 / v45 * v45;
        --v45;
      }

      while (v38 != v64);
      v45 = v63;
    }
  }

LABEL_81:
  v65 = v42.i16[0];
  if (v42.i16[0])
  {
    v66 = (v42.u16[0] + v36 - 1) / v42.u16[0];
    v67.i16[0] = v66;
    v68 = v42.u16[1];
    if (v42.i16[1])
    {
      goto LABEL_83;
    }
  }

  else
  {
    LOWORD(v66) = 0;
    v67.i16[0] = 0;
    v68 = v42.u16[1];
    if (v42.i16[1])
    {
LABEL_83:
      v69 = (v68 + v37 - 1) / v68;
      v67.i16[1] = v69;
      v70 = v42.u16[2];
      if (v42.i16[2])
      {
        goto LABEL_84;
      }

      goto LABEL_90;
    }
  }

  LOWORD(v69) = 0;
  v67.i16[1] = 0;
  v70 = v42.u16[2];
  if (v42.i16[2])
  {
LABEL_84:
    v71 = (v38 + v70 - 1) / v70;
    v67.i16[2] = v71;
    if (v43)
    {
      goto LABEL_85;
    }

    goto LABEL_91;
  }

LABEL_90:
  LOWORD(v71) = 0;
  v67.i16[2] = 0;
  if (v43)
  {
LABEL_85:
    v72 = (v43 + v36 - 1) / v43;
    v67.i16[3] = v32.i16[3];
    if (v44)
    {
      goto LABEL_86;
    }

LABEL_92:
    LOWORD(v73) = 0;
    if (v45)
    {
      goto LABEL_87;
    }

    goto LABEL_93;
  }

LABEL_91:
  LOWORD(v72) = 0;
  v67.i16[3] = v32.i16[3];
  if (!v44)
  {
    goto LABEL_92;
  }

LABEL_86:
  v73 = (v44 + v37 - 1) / v44;
  if (v45)
  {
LABEL_87:
    v74 = (v38 + v45 - 1) / v45;
    goto LABEL_94;
  }

LABEL_93:
  v74 = 0;
LABEL_94:
  v75 = v73 * v72 * v74;
  v76 = v69 * v66 * v71;
  v77.i16[0] = v72;
  v77.i16[1] = v73;
  v77.i16[2] = v74;
  v77.i16[3] = v32.i16[3];
  if (v75 < v76)
  {
    v78 = v45;
  }

  else
  {
    v78 = v70;
  }

  if (v75 < v76)
  {
    v79 = v44;
  }

  else
  {
    v79 = v68;
  }

  if (v75 < v76)
  {
    v80 = v43;
  }

  else
  {
    v80 = v65;
  }

  if (v75 >= v76)
  {
    v77 = v67;
  }

  *(a3 + 270) = v79 * v78 * v80;
  v212 = v77;
  if (v11 >= 5)
  {
    v82 = 0x80000000 / (v200 >> 2);
    v83 = __clz(v82);
    v84 = v82 >> (16 - v83);
    v85 = v83 + 15;
    v86 = -65536 * (v200 >> 2) * v84 / (v200 >> 2);
    if (v86 <= v84)
    {
      v87 = v84;
    }

    else
    {
      v87 = v84 + 1;
    }

    if (v86 <= v84)
    {
      LOWORD(v84) = 0;
    }

    v81 = (v85 << 48) | ((v86 - v84) << 32) | (v87 << 16) | (v200 >> 2);
  }

  else
  {
    v81 = 65537;
  }

  *(a3 + 276) = v81;
  LOWORD(v88) = v77.i16[2] * v77.i16[3];
  v217 = 0;
  v215 = v204;
  v216 = v207;
  objc_msgSend_setComputePipelineState_(v8, v74, PipelineStateForMPSKey, v74, v26, v27, v28, v29);
  v96 = *(a3 + 136);
  if ((*(a3 + 144) & 2) == 0)
  {
    objc_msgSend_setTexture_atIndex_(v8, v89, *(a3 + 136), v10, v92, v93, v94, v95);
    goto LABEL_133;
  }

  v197 = v88;
  v201 = v80;
  v101 = objc_msgSend_count(v96, v89, v90, v91, v92, v93, v94, v95);
  v229 = 0u;
  v230 = 0u;
  v227 = 0u;
  v228 = 0u;
  v225 = 0u;
  v226 = 0u;
  v223 = 0u;
  v224 = 0u;
  v221 = 0u;
  v222 = 0u;
  v220 = 0u;
  memset(v219, 0, sizeof(v219));
  v218 = 0u;
  if (v10)
  {
    v102 = v101;
    for (i = 0; i < v10; i += v105)
    {
      if (v102 <= i)
      {
        v104 = 0;
        if (v10 - i >= 0x20)
        {
          v105 = 32;
        }

        else
        {
          v105 = v10 - i;
        }

        v106 = v105;
        if (!v105)
        {
          goto LABEL_117;
        }
      }

      else
      {
        if (v102 - i >= 0x20)
        {
          v104 = 32;
          objc_msgSend_getObjects_range_(v96, v97, &v218, i, 32, v98, v99, v100);
        }

        else
        {
          v104 = v102 - i;
          objc_msgSend_getObjects_range_(v96, v97, &v218, i, v102 - i, v98, v99, v100);
        }

        if (v10 - i >= 0x20)
        {
          v105 = 32;
        }

        else
        {
          v105 = v10 - i;
        }

        v106 = v105 - v104;
        if (v105 == v104)
        {
          goto LABEL_117;
        }
      }

      bzero(&v219[-1] + 8 * v104, 8 * v106);
LABEL_117:
      objc_msgSend_setTextures_withRange_(v8, v97, &v218, i + v10, v105, v98, v99, v100);
    }
  }

  v80 = v201;
  LOWORD(v88) = v197;
LABEL_133:
  objc_msgSend_setBytes_length_atIndex_(v8, v97, a3 + 148, 32, 1, v98, v99, v100);
  Sampler = MPSDevice::GetSampler();
  objc_msgSend_setSamplerState_atIndex_(v8, v108, Sampler, 1, v109, v110, v111, v112);
  if (*(a3 + 288) != 1)
  {
    goto LABEL_155;
  }

  v120 = *(a3 + 184);
  if ((*(a3 + 192) & 2) != 0)
  {
    v198 = v88;
    v202 = v80;
    v205 = v79;
    v125 = objc_msgSend_count(v120, v113, v114, v115, v116, v117, v118, v119);
    v229 = 0u;
    v230 = 0u;
    v227 = 0u;
    v228 = 0u;
    v225 = 0u;
    v226 = 0u;
    v223 = 0u;
    v224 = 0u;
    v221 = 0u;
    v222 = 0u;
    v220 = 0u;
    memset(v219, 0, sizeof(v219));
    v218 = 0u;
    if (!v10)
    {
LABEL_153:
      v80 = v202;
      v79 = v205;
      LOWORD(v88) = v198;
      goto LABEL_154;
    }

    v126 = v125;
    v127 = 0;
    while (1)
    {
      if (v126 <= v127)
      {
        v128 = 0;
        if (v10 - v127 >= 0x20)
        {
          v129 = 32;
        }

        else
        {
          v129 = v10 - v127;
        }

        v130 = v129;
        if (!v129)
        {
          goto LABEL_138;
        }
      }

      else
      {
        if (v126 - v127 >= 0x20)
        {
          v128 = 32;
          objc_msgSend_getObjects_range_(v120, v121, &v218, v127, 32, v122, v123, v124);
        }

        else
        {
          v128 = v126 - v127;
          objc_msgSend_getObjects_range_(v120, v121, &v218, v127, v126 - v127, v122, v123, v124);
        }

        if (v10 - v127 >= 0x20)
        {
          v129 = 32;
        }

        else
        {
          v129 = v10 - v127;
        }

        v130 = v129 - v128;
        if (v129 == v128)
        {
          goto LABEL_138;
        }
      }

      bzero(&v219[-1] + 8 * v128, 8 * v130);
LABEL_138:
      objc_msgSend_setTextures_withRange_(v8, v121, &v218, v127 + 2 * v10, v129, v122, v123, v124);
      v127 += v129;
      if (v127 >= v10)
      {
        goto LABEL_153;
      }
    }
  }

  objc_msgSend_setTexture_atIndex_(v8, v113, *(a3 + 184), 2 * v10, v116, v117, v118, v119);
LABEL_154:
  objc_msgSend_setBytes_length_atIndex_(v8, v121, a3 + 196, 32, 2, v122, v123, v124);
  v131 = MPSDevice::GetSampler();
  objc_msgSend_setSamplerState_atIndex_(v8, v132, v131, 2, v133, v134, v135, v136);
LABEL_155:
  v137 = v80;
  v138 = v79;
  v213 = vmovl_u16(v212).u64[0];
  v88 = v88;
  v139 = *(a3 + 232);
  if ((*(a3 + 240) & 2) == 0)
  {
    objc_msgSend_setTexture_atIndex_(v8, v113, *(a3 + 232), 0, v116, v117, v118, v119);
    goto LABEL_175;
  }

  v199 = v88;
  v203 = v79;
  v206 = v137;
  v144 = objc_msgSend_count(v139, v113, v114, v115, v116, v117, v118, v119);
  v229 = 0u;
  v230 = 0u;
  v227 = 0u;
  v228 = 0u;
  v225 = 0u;
  v226 = 0u;
  v223 = 0u;
  v224 = 0u;
  v221 = 0u;
  v222 = 0u;
  v220 = 0u;
  memset(v219, 0, sizeof(v219));
  v218 = 0u;
  if (v10)
  {
    v145 = v144;
    for (j = 0; j < v10; j += v148)
    {
      if (v145 <= j)
      {
        v147 = 0;
        if (v10 - j >= 0x20)
        {
          v148 = 32;
        }

        else
        {
          v148 = v10 - j;
        }

        v149 = v148;
        if (!v148)
        {
          goto LABEL_159;
        }
      }

      else
      {
        if (v145 - j >= 0x20)
        {
          v147 = 32;
          objc_msgSend_getObjects_range_(v139, v140, &v218, j, 32, v141, v142, v143);
        }

        else
        {
          v147 = v145 - j;
          objc_msgSend_getObjects_range_(v139, v140, &v218, j, v145 - j, v141, v142, v143);
        }

        if (v10 - j >= 0x20)
        {
          v148 = 32;
        }

        else
        {
          v148 = v10 - j;
        }

        v149 = v148 - v147;
        if (v148 == v147)
        {
          goto LABEL_159;
        }
      }

      bzero(&v219[-1] + 8 * v147, 8 * v149);
LABEL_159:
      objc_msgSend_setTextures_withRange_(v8, v140, &v218, j, v148, v141, v142, v143);
    }
  }

  v138 = v203;
  v137 = v206;
  v88 = v199;
LABEL_175:
  objc_msgSend_setBytes_length_atIndex_(v8, v140, a3 + 248, 40, 0, v141, v142, v143);
  objc_msgSend_setBytes_length_atIndex_(v8, v150, &v215, 32, 30, v151, v152, v153);
  objc_msgSend_setBuffer_offset_atIndex_(v8, v154, v208, 0, 29, v155, v156, v157);
  if (v208 && (objc_msgSend_retainedReferences(v209, v158, v159, v160, v161, v162, v163, v164) & 1) == 0)
  {
    v167 = objc_msgSend_userDictionary(v209, v158, v165, v166, v161, v162, v163, v164);
    v174 = objc_msgSend_objectForKey_(v167, v168, @"_MPSCommandBufferRetainListKey", v169, v170, v171, v172, v173);
    if (!v174)
    {
      v181 = v88;
      v182 = v138;
      v183 = objc_alloc_init(MEMORY[0x277CBEB18]);
      objc_msgSend_setObject_forKey_(v167, v184, v183, @"_MPSCommandBufferRetainListKey", v185, v186, v187, v188);

      *&v218 = MEMORY[0x277D85DD0];
      *(&v218 + 1) = 3221225472;
      *&v219[0] = sub_239D1F004;
      *(&v219[0] + 1) = &unk_278B28F28;
      *&v219[1] = @"_MPSCommandBufferRetainListKey";
      objc_msgSend_addCompletedHandler_(v209, v189, &v218, v190, v191, v192, v193, v194);
      v174 = v183;
      v138 = v182;
      v88 = v181;
    }

    objc_msgSend_addObject_(v174, v175, v208, v176, v177, v178, v179, v180);
  }

  v195 = vand_s8(v213, 0xFFFF0000FFFFLL);
  *&v196 = v195.u32[0];
  *(&v196 + 1) = v195.u32[1];
  v218 = v196;
  *&v219[0] = v88;
  v214[0] = v137;
  v214[1] = v138;
  v214[2] = v78;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v8, v158, &v218, v214, v161, v162, v163, v164);
  return MPSLibrary::ReleaseMPSKey();
}

uint64_t sub_239D1F004(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = objc_msgSend_userDictionary(a2, a2, a3, a4, a5, a6, a7, a8);
  v15 = *(a1 + 32);

  return MEMORY[0x2821F9670](v9, sel_removeObjectForKey_, v15, v10, v11, v12, v13, v14);
}

uint64_t sub_239D1F1C8(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = [MPSNNPermute alloc];
  v11 = objc_msgSend_initWithDevice_(v4, v5, a2, v6, v7, v8, v9, v10);
  v12 = *(*(a1 + 112) + 72);
  v21 = *(*(a1 + 112) + 56);
  v22 = v12;
  v20[0] = v21;
  v20[1] = v12;
  result = objc_msgSend_setDimensionOrder_(v11, v13, v20, v14, v15, v16, v17, v18);
  *(a1 + 104) = v11;
  return result;
}

uint64_t sub_239D1F404(uint64_t a1, uint64_t a2)
{
  v4 = [MPSNNPermuteGradient alloc];
  result = objc_msgSend_initWithDevice_(v4, v5, a2, v6, v7, v8, v9, v10);
  *(a1 + 104) = result;
  return result;
}

void sub_239D1F444(uint64_t a1)
{
  sub_239C13FBC(a1);

  JUMPOUT(0x23EE7D130);
}

void sub_239D1F488(uint64_t a1)
{
  sub_239C13FBC(a1);

  JUMPOUT(0x23EE7D130);
}

uint64_t sub_239D1F77C(void *a1, const char *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  objc_msgSend_alpha(a1, a2, a3, a4, a5, a6, a7, a8);
  v20 = v19;
  if (*(a4 + 56) && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v20 = *(*(a4 + 56) + 288);
  }

  else
  {
    v21 = a1[41];
    if (v21)
    {
      objc_msgSend_alphaForSourceImage_destinationImage_(v21, v12, *a4, *(a4 + 64), v15, v16, v17, v18);
      v20 = v22;
    }
  }

  v23 = *(a1 + *MEMORY[0x277CD7370]);
  v45 = *(a1 + *MEMORY[0x277CD7350]);
  v46 = v23;
  v24 = *(a1 + *MEMORY[0x277CD7378]);
  v51 = 0;
  *&v52 = 0;
  v47 = a1 + 42;
  v48 = v24;
  v25 = *(a4 + 40);
  v49 = 1;
  v50 = v25;
  LODWORD(v51) = *(a4 + 16);
  v52 = *(a4 + 104);
  DWORD2(v52) = *(a4 + 80);
  v26 = objc_msgSend_width(*a4, v12, v13, v14, v15, v16, v17, v18, v45, v46, a1 + 42, v48, 1, v25, v51, v52);
  v34 = objc_msgSend_height(*a4, v27, v28, v29, v30, v31, v32, v33);
  v42 = objc_msgSend_featureChannels(*a4, v35, v36, v37, v38, v39, v40, v41);
  LOWORD(v43) = v26;
  WORD1(v43) = v34;
  WORD2(v43) = v42;
  v53 = v43;
  v54 = a4;
  v55 = *(a4 + 88);
  v56 = *(a4 + 192);
  v57 = v20;
  sub_239D20C40(a2, a3, &v45);
  return 0;
}

uint64_t sub_239D1F8F0(void *a1, const char *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  objc_msgSend_alpha(a1, a2, a3, a4, a5, a6, a7, a8);
  v19 = v18;
  if (*(*(a4 + 24) + 112) && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v19 = *(*(*(a4 + 24) + 112) + 288);
  }

  else
  {
    v20 = a1[41];
    if (v20)
    {
      objc_msgSend_alphaForSourceImage_destinationImage_(v20, v12, **(a4 + 24), *(*(a4 + 24) + 56), v14, v15, v16, v17);
      v19 = v21;
    }
  }

  v22 = *(a1 + *MEMORY[0x277CD7370]);
  v51 = *(a1 + *MEMORY[0x277CD7350]);
  v52 = v22;
  v23 = *(a1 + *MEMORY[0x277CD7378]);
  v57 = 0;
  *&v58 = 0;
  v53 = a1 + 42;
  v54 = v23;
  v24 = *(a4 + 96);
  v55 = *(a4 + 8);
  v56 = v24;
  LODWORD(v57) = *(a4 + 88);
  v58 = *(a4 + 40);
  DWORD2(v58) = *(a4 + 32);
  v25 = objc_msgSend_objectAtIndexedSubscript_(v24, v12, 0, v13, v14, v15, v16, v17, v51, v52, a1 + 42, v23, v55, v24, v57, v58);
  v33 = objc_msgSend_width(v25, v26, v27, v28, v29, v30, v31, v32);
  v40 = objc_msgSend_objectAtIndexedSubscript_(*(a4 + 96), v34, 0, v35, v36, v37, v38, v39);
  v48 = objc_msgSend_height(v40, v41, v42, v43, v44, v45, v46, v47);
  LOWORD(v49) = v33;
  WORD1(v49) = v48;
  WORD2(v49) = *(a4 + 130);
  v59 = v49;
  v60 = *(a4 + 24);
  v61 = *(a4 + 64);
  v62 = *(a4 + 208);
  v63 = v19;
  sub_239D20C40(a2, a3, &v51);
  return 0;
}

uint64_t sub_239D203FC(char *a1, const char *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  objc_msgSend_alpha(a1, a2, a3, a4, a5, a6, a7, a8);
  v18 = v17;
  if (*(a4 + 112))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = *(*(a4 + 112) + 288);
    }
  }

  v71 = *&a1[*MEMORY[0x277CD7350]];
  v19 = *&a1[*MEMORY[0x277CD7370]];
  v20 = *&a1[*MEMORY[0x277CD7378]];
  v21 = *(a4 + 96);
  v22 = *(a4 + 72);
  v70 = *(a4 + 160);
  v69 = *(a4 + 136);
  v23 = objc_msgSend_width(*(a4 + 56), v10, v11, v12, v13, v14, v15, v16);
  v31 = objc_msgSend_height(*(a4 + 56), v24, v25, v26, v27, v28, v29, v30);
  v39 = objc_msgSend_featureChannels(*(a4 + 56), v32, v33, v34, v35, v36, v37, v38);
  LOWORD(v40) = v23;
  WORD1(v40) = v31;
  WORD2(v40) = v39;
  v41 = *(a4 + 144);
  v42 = *(a4 + 304);
  v74[0] = v71;
  v74[1] = v19;
  v74[2] = a1 + 432;
  v74[3] = v20;
  v74[4] = 1;
  v74[5] = v21;
  v75 = v22;
  v76 = 0;
  v77 = v70;
  v78 = v69;
  v79 = 0;
  v80 = v40;
  v81 = a4 + 56;
  v82 = v41;
  v83 = v42;
  v84 = v18;
  v85 = *(a4 + 40);
  v86 = *(a4 + 16);
  v50 = objc_msgSend_width(*a4, v43, v44, v45, v46, v47, v48, v49);
  v58 = objc_msgSend_height(*a4, v51, v52, v53, v54, v55, v56, v57);
  v66 = objc_msgSend_featureChannels(*a4, v59, v60, v61, v62, v63, v64, v65);
  LOWORD(v67) = v50;
  HIWORD(v67) = v58;
  v88 = v66;
  v87 = v67;
  v89 = a1 + 432;
  sub_239D21348(a2, a3, v74);
  return 0;
}

uint64_t sub_239D205BC(char *a1, const char *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  objc_msgSend_alpha(a1, a2, a3, a4, a5, a6, a7, a8);
  v17 = v16;
  if (*(*(a4 + 24) + 168))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = *(*(*(a4 + 24) + 168) + 288);
    }
  }

  v84 = *&a1[*MEMORY[0x277CD7350]];
  v83 = *&a1[*MEMORY[0x277CD7370]];
  v18 = *&a1[*MEMORY[0x277CD7378]];
  v19 = *(a4 + 8);
  v20 = *(a4 + 144);
  v21 = *(a4 + 136);
  v22 = *(a4 + 40);
  v23 = *(a4 + 32);
  v24 = objc_msgSend_objectAtIndexedSubscript_(v20, v10, 0, v11, v12, v13, v14, v15);
  v32 = objc_msgSend_width(v24, v25, v26, v27, v28, v29, v30, v31);
  v39 = objc_msgSend_objectAtIndexedSubscript_(*(a4 + 144), v33, 0, v34, v35, v36, v37, v38);
  v47 = objc_msgSend_height(v39, v40, v41, v42, v43, v44, v45, v46);
  LOWORD(v48) = v32;
  WORD1(v48) = v47;
  WORD2(v48) = *(a4 + 178);
  v49 = *(a4 + 24) + 56;
  v50 = *(a4 + 64);
  v51 = *(a4 + 280);
  v87[0] = v84;
  v87[1] = v83;
  v87[2] = a1 + 432;
  v87[3] = v18;
  v87[4] = v19;
  v87[5] = v20;
  v88 = v21;
  v89 = 0;
  v90 = v22;
  v91 = v23;
  v92 = 0;
  v93 = v48;
  v94 = v49;
  v95 = v50;
  v96 = v51;
  v97 = v17;
  v58 = objc_msgSend_objectAtIndexedSubscript_(*(a4 + 96), v52, 0, v53, v54, v55, v56, v57);
  LOWORD(v20) = objc_msgSend_width(v58, v59, v60, v61, v62, v63, v64, v65);
  v72 = objc_msgSend_objectAtIndexedSubscript_(*(a4 + 96), v66, 0, v67, v68, v69, v70, v71);
  v80 = objc_msgSend_height(v72, v73, v74, v75, v76, v77, v78, v79);
  LOWORD(v81) = v20;
  HIWORD(v81) = v80;
  v101 = *(a4 + 130);
  v100 = v81;
  v98 = *(a4 + 96);
  v99 = *(a4 + 88);
  v102 = a1 + 432;
  sub_239D21348(a2, a3, v87);
  return 0;
}

void sub_239D20C40(uint64_t a1, void *a2, uint64_t a3)
{
  MEMORY[0x23EE7D040](v190, a2, 0);
  v9 = *(a3 + 32);
  v10 = *(a3 + 72);
  v11 = WORD2(v10);
  if (((**(*(a3 + 80) + 8) >> 34) & 0x3FuLL) >= 3)
  {
    v12 = 268435488;
  }

  else
  {
    v12 = 268435472;
  }

  v187 = WORD1(v10) * v10;
  v13 = objc_msgSend_rowBytesForColumns_dataType_(MEMORY[0x277CD7258], v4, v187 * WORD2(v10), v12, v5, v6, v7, v8);
  v17 = objc_msgSend_matrixDescriptorWithRows_columns_rowBytes_dataType_(MEMORY[0x277CD7258], v14, v9, v187 * v11, v13, v12, v15, v16);
  TempBuffer = MPSAutoCache::GetTempBuffer(v190, v13 * v9, 0);
  v19 = objc_alloc(MEMORY[0x277CD7250]);
  v186 = objc_msgSend_initWithBuffer_descriptor_(v19, v20, TempBuffer, v17, v21, v22, v23, v24);
  v25 = objc_alloc(MEMORY[0x277CBEB18]);
  v38 = objc_msgSend_initWithCapacity_(v25, v26, v9, v27, v28, v29, v30, v31);
  if (v9)
  {
    for (i = 0; i != v9; ++i)
    {
      v40 = *(a3 + 40);
      if ((*(a3 + 48) & 2) != 0)
      {
        v40 = objc_msgSend_objectAtIndexedSubscript_(*(a3 + 40), v32, i, v33, v34, v35, v36, v37);
      }

      v41 = objc_alloc(MEMORY[0x277CD7218]);
      v47 = objc_msgSend_initWithTexture_featureChannels_(v41, v42, v40, *(*(a3 + 80) + 24), v43, v44, v45, v46);
      objc_msgSend_setObject_atIndexedSubscript_(v38, v48, v47, i, v49, v50, v51, v52);
    }
  }

  objc_msgSend_encodeBatchToCommandBuffer_encoder_sourceImages_destinationMatrix_(**(a3 + 16), v32, a2, a1, v38, v186, v36, v37);

  v54 = objc_msgSend_matrixDescriptorWithRows_columns_matrices_rowBytes_matrixBytes_dataType_(MEMORY[0x277CD7258], v53, v187, v11, v9, v11 * ((v12 >> 3) & 6), v13, v12);
  v55 = objc_alloc(MEMORY[0x277CD7250]);
  v61 = objc_msgSend_initWithBuffer_descriptor_(v55, v56, TempBuffer, v54, v57, v58, v59, v60);
  v67 = objc_msgSend_rowBytesForColumns_dataType_(MEMORY[0x277CD7258], v62, v11 * v11, 268435488, v63, v64, v65, v66);
  v69 = objc_msgSend_matrixDescriptorWithRows_columns_matrices_rowBytes_matrixBytes_dataType_(MEMORY[0x277CD7258], v68, v11, v11, v9, 4 * v11, v67, 268435488);
  v77 = objc_msgSend_matrixBytes(v69, v70, v71, v72, v73, v74, v75, v76);
  v78 = MPSAutoCache::GetTempBuffer(v190, v77 * v9, 0);
  v79 = objc_alloc(MEMORY[0x277CD7250]);
  v185 = objc_msgSend_initWithBuffer_descriptor_(v79, v80, v78, v69, v81, v82, v83, v84);
  v85 = *(*(a3 + 16) + 16);
  objc_msgSend_setK_(v85, v86, v187, v87, v88, v89, v90, v91);
  objc_msgSend_setN_(v85, v92, v11, v93, v94, v95, v96, v97);
  objc_msgSend_setM_(v85, v98, v11, v99, v100, v101, v102, v103);
  objc_msgSend_setAlpha_(v85, v104, v105, v106, v107, v108, v109, v110, *(a3 + 92));
  objc_msgSend_encodeToCommandBuffer_encoder_leftMatrix_rightMatrix_resultMatrix_(v85, v111, a2, a1, v61, v61, v185, v112);

  v113 = MEMORY[0x277CD7258];
  v121 = objc_msgSend_matrixBytes(v69, v114, v115, v116, v117, v118, v119, v120);
  v125 = objc_msgSend_matrixDescriptorWithRows_columns_rowBytes_dataType_(v113, v122, v9, v11 * v11, v121, 268435488, v123, v124);
  v126 = objc_alloc(MEMORY[0x277CD7250]);
  v132 = objc_msgSend_initWithBuffer_descriptor_(v126, v127, v78, v125, v128, v129, v130, v131);
  v133 = objc_alloc(MEMORY[0x277CBEB18]);
  v140 = objc_msgSend_initWithCapacity_(v133, v134, v9, v135, v136, v137, v138, v139);
  v148 = objc_msgSend_retainedReferences(a2, v141, v142, v143, v144, v145, v146, v147);
  if (v140)
  {
    v156 = v148;
  }

  else
  {
    v156 = 1;
  }

  if ((v156 & 1) == 0)
  {
    v157 = objc_msgSend_userDictionary(a2, v149, v150, v151, v152, v153, v154, v155);
    v164 = objc_msgSend_objectForKey_(v157, v158, @"_MPSCommandBufferRetainListKey", v159, v160, v161, v162, v163);
    if (!v164)
    {
      v171 = objc_alloc_init(MEMORY[0x277CBEB18]);
      objc_msgSend_setObject_forKey_(v157, v172, v171, @"_MPSCommandBufferRetainListKey", v173, v174, v175, v176);

      v191[0] = MEMORY[0x277D85DD0];
      v191[1] = 3221225472;
      v191[2] = sub_239D2130C;
      v191[3] = &unk_278B28F28;
      v191[4] = @"_MPSCommandBufferRetainListKey";
      objc_msgSend_addCompletedHandler_(a2, v177, v191, v178, v179, v180, v181, v182);
      v164 = v171;
    }

    objc_msgSend_addObject_(v164, v165, v140, v166, v167, v168, v169, v170);
  }

  if (v9)
  {
    for (j = 0; j != v9; ++j)
    {
      v184 = *(a3 + 56);
      if ((*(a3 + 64) & 2) != 0)
      {
        v184 = objc_msgSend_objectAtIndexedSubscript_(v184, v149, j, v151, v152, v153, v154, v155);
      }

      sub_239D211E8(v184, v140, *(a3 + 88), *(a3 + 90), v152, v153, v154, v155);
    }
  }

  objc_msgSend_encodeBatchToCommandBuffer_encoder_sourceMatrix_destinationImages_(*(*(a3 + 16) + 8), v149, a2, a1, v132, v140, v154, v155);

  MPSAutoCache::~MPSAutoCache(v190);
}

void sub_239D2106C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MPSAutoCache::~MPSAutoCache(va);
  _Unwind_Resume(a1);
}

void sub_239D21080(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MPSAutoCache::~MPSAutoCache(va);
  _Unwind_Resume(a1);
}

void sub_239D21094(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MPSAutoCache::~MPSAutoCache(va);
  _Unwind_Resume(a1);
}

void sub_239D210A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MPSAutoCache::~MPSAutoCache(va);
  _Unwind_Resume(a1);
}

void sub_239D210BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MPSAutoCache::~MPSAutoCache(va);
  _Unwind_Resume(a1);
}

void sub_239D210D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MPSAutoCache::~MPSAutoCache(va);
  _Unwind_Resume(a1);
}

void sub_239D210E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MPSAutoCache::~MPSAutoCache(va);
  _Unwind_Resume(a1);
}

void sub_239D210F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MPSAutoCache::~MPSAutoCache(va);
  _Unwind_Resume(a1);
}

void sub_239D2110C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MPSAutoCache::~MPSAutoCache(va);
  _Unwind_Resume(a1);
}

void sub_239D21120(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MPSAutoCache::~MPSAutoCache(va);
  _Unwind_Resume(a1);
}

void sub_239D21134(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MPSAutoCache::~MPSAutoCache(va);
  _Unwind_Resume(a1);
}

void sub_239D21148(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MPSAutoCache::~MPSAutoCache(va);
  _Unwind_Resume(a1);
}

void sub_239D2115C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MPSAutoCache::~MPSAutoCache(va);
  _Unwind_Resume(a1);
}

void sub_239D21170(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MPSAutoCache::~MPSAutoCache(va);
  _Unwind_Resume(a1);
}

void sub_239D21184(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MPSAutoCache::~MPSAutoCache(va);
  _Unwind_Resume(a1);
}

void sub_239D21198(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MPSAutoCache::~MPSAutoCache(va);
  _Unwind_Resume(a1);
}

void sub_239D211AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MPSAutoCache::~MPSAutoCache(va);
  _Unwind_Resume(a1);
}

void sub_239D211C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MPSAutoCache::~MPSAutoCache(va);
  _Unwind_Resume(a1);
}

void sub_239D211D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MPSAutoCache::~MPSAutoCache(va);
  _Unwind_Resume(a1);
}

void sub_239D211E8(void *a1, char *a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a4)
  {
    v12 = a4 >> 2;
    v13 = objc_msgSend_arrayLength(a1, a2, a3, a4, a5, a6, a7, a8);
    v21 = v13 - v12;
    if (v13 <= v12)
    {
      return;
    }

    v22 = objc_msgSend_pixelFormat(a1, v14, v15, v16, v17, v18, v19, v20);
    v30 = objc_msgSend_textureType(a1, v23, v24, v25, v26, v27, v28, v29);
    v57 = objc_msgSend_newTextureViewWithPixelFormat_textureType_levels_slices_(a1, v31, v22, v30, 0, 1, v12, v21);
    v32 = objc_alloc(MEMORY[0x277CD7218]);
    v38 = objc_msgSend_initWithTexture_featureChannels_(v32, v33, v57, a3 - a4, v34, v35, v36, v37);
    objc_msgSend_addObject_(a2, v39, v38, v40, v41, v42, v43, v44);
  }

  else
  {
    v45 = objc_alloc(MEMORY[0x277CD7218]);
    v57 = objc_msgSend_initWithTexture_featureChannels_(v45, v46, a1, a3, v47, v48, v49, v50);
    objc_msgSend_addObject_(a2, v51, v57, v52, v53, v54, v55, v56);
  }
}

uint64_t sub_239D2130C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = objc_msgSend_userDictionary(a2, a2, a3, a4, a5, a6, a7, a8);
  v15 = *(a1 + 32);

  return MEMORY[0x2821F9670](v9, sel_removeObjectForKey_, v15, v10, v11, v12, v13, v14);
}

void sub_239D21348(uint64_t a1, void *a2, uint64_t a3)
{
  v331[2] = *MEMORY[0x277D85DE8];
  MEMORY[0x23EE7D040](v329, a2, 0);
  v10 = *(a3 + 32);
  v327 = *(a3 + 72);
  v11 = *(a3 + 116);
  if (((**(*(a3 + 80) + 8) >> 34) & 0x3FuLL) >= 3)
  {
    v12 = 268435488;
    v13 = objc_msgSend_rowBytesForColumns_dataType_(MEMORY[0x277CD7258], v5, *(a3 + 116) * *(a3 + 116), 268435488, v6, v7, v8, v9);
  }

  else
  {
    v12 = 268435472;
    v13 = objc_msgSend_rowBytesForColumns_dataType_(MEMORY[0x277CD7258], v5, *(a3 + 116) * *(a3 + 116), 268435472, v6, v7, v8, v9);
  }

  v324 = v13;
  v326 = WORD1(v327) * v327;
  v19 = objc_msgSend_rowBytesForColumns_dataType_(MEMORY[0x277CD7258], v14, v326 * WORD2(v327), v12, v15, v16, v17, v18);
  context = objc_autoreleasePoolPush();
  v320 = v19;
  v23 = objc_msgSend_matrixDescriptorWithRows_columns_rowBytes_dataType_(MEMORY[0x277CD7258], v20, v10, v326 * WORD2(v327), v19, v12, v21, v22);
  v31 = objc_msgSend_rowBytes(v23, v24, v25, v26, v27, v28, v29, v30);
  TempBuffer = MPSAutoCache::GetTempBuffer(v329, v31 * v10, 0);
  v32 = objc_alloc(MEMORY[0x277CD7250]);
  v319 = objc_msgSend_initWithBuffer_descriptor_(v32, v33, TempBuffer, v23, v34, v35, v36, v37);
  v41 = objc_msgSend_matrixDescriptorWithRows_columns_rowBytes_dataType_(MEMORY[0x277CD7258], v38, v10, v11 * v11, v324, v12, v39, v40);
  v49 = objc_msgSend_rowBytes(v41, v42, v43, v44, v45, v46, v47, v48);
  v322 = MPSAutoCache::GetTempBuffer(v329, v49 * v10, 0);
  v50 = objc_alloc(MEMORY[0x277CD7250]);
  v318 = objc_msgSend_initWithBuffer_descriptor_(v50, v51, v322, v41, v52, v53, v54, v55);
  v321 = v326 * WORD2(v327);
  v56 = objc_alloc(MEMORY[0x277CBEB18]);
  v63 = objc_msgSend_initWithCapacity_(v56, v57, v10, v58, v59, v60, v61, v62);
  v64 = objc_alloc(MEMORY[0x277CBEB18]);
  v77 = objc_msgSend_initWithCapacity_(v64, v65, v10, v66, v67, v68, v69, v70);
  v317 = a1;
  if (v10)
  {
    for (i = 0; i != v10; ++i)
    {
      v79 = *(a3 + 96);
      if ((*(a3 + 104) & 2) != 0)
      {
        v79 = objc_msgSend_objectAtIndexedSubscript_(*(a3 + 96), v71, i, v72, v73, v74, v75, v76);
      }

      v80 = *(a3 + 40);
      if ((*(a3 + 48) & 2) != 0)
      {
        v80 = objc_msgSend_objectAtIndexedSubscript_(*(a3 + 40), v71, i, v72, v73, v74, v75, v76);
      }

      v81 = objc_alloc(MEMORY[0x277CD7218]);
      v87 = objc_msgSend_initWithTexture_featureChannels_(v81, v82, v80, WORD2(v327), v83, v84, v85, v86);
      v88 = objc_alloc(MEMORY[0x277CD7218]);
      v94 = objc_msgSend_initWithTexture_featureChannels_(v88, v89, v79, v11, v90, v91, v92, v93);
      objc_msgSend_setObject_atIndexedSubscript_(v63, v95, v87, i, v96, v97, v98, v99);
      objc_msgSend_setObject_atIndexedSubscript_(v77, v100, v94, i, v101, v102, v103, v104);
    }
  }

  objc_msgSend_encodeBatchToCommandBuffer_encoder_sourceImages_destinationMatrix_(**(a3 + 16), v71, a2, v317, v63, v319, v75, v76);
  objc_msgSend_encodeBatchToCommandBuffer_encoder_sourceImages_destinationMatrix_(**(a3 + 16), v105, a2, v317, v77, v318, v106, v107);
  v108 = (v12 >> 3) & 6;
  v110 = objc_msgSend_matrixDescriptorWithRows_columns_matrices_rowBytes_matrixBytes_dataType_(MEMORY[0x277CD7258], v109, v326, WORD2(v327), v10, WORD2(v327) * v108, v320, v12);
  v111 = objc_alloc(MEMORY[0x277CD7250]);
  v117 = objc_msgSend_initWithBuffer_descriptor_(v111, v112, TempBuffer, v110, v113, v114, v115, v116);
  v119 = objc_msgSend_matrixDescriptorWithRows_columns_matrices_rowBytes_matrixBytes_dataType_(MEMORY[0x277CD7258], v118, v11, v11, v10, v108 * v11, v324, v12);
  v120 = objc_alloc(MEMORY[0x277CD7250]);
  v126 = objc_msgSend_initWithBuffer_descriptor_(v120, v121, v322, v119, v122, v123, v124, v125);
  v325 = v117;
  v132 = objc_msgSend_rowBytesForColumns_dataType_(MEMORY[0x277CD7258], v127, v11, v12, v128, v129, v130, v131);
  v134 = objc_msgSend_matrixDescriptorWithRows_columns_matrices_rowBytes_matrixBytes_dataType_(MEMORY[0x277CD7258], v133, v11, v11, v10, v132, v132 * v11, v12);
  v142 = objc_msgSend_matrixBytes(v134, v135, v136, v137, v138, v139, v140, v141);
  v143 = MPSAutoCache::GetTempBuffer(v329, v142 * v10, 0);
  v151 = objc_msgSend_matrixBytes(v134, v144, v145, v146, v147, v148, v149, v150);
  v152 = MPSAutoCache::GetTempBuffer(v329, v151 * v10, 0);
  v153 = objc_alloc(MEMORY[0x277CD7250]);
  v159 = objc_msgSend_initWithBuffer_descriptor_(v153, v154, v143, v134, v155, v156, v157, v158);
  v160 = objc_alloc(MEMORY[0x277CD7250]);
  v166 = objc_msgSend_initWithBuffer_descriptor_(v160, v161, v152, v134, v162, v163, v164, v165);
  v167 = objc_alloc(MEMORY[0x277CD75B8]);
  v175 = objc_msgSend_device(a2, v168, v169, v170, v171, v172, v173, v174);
  v178 = objc_msgSend_initWithDevice_copyRows_copyColumns_sourcesAreTransposed_destinationsAreTransposed_(v167, v176, v175, v11, v11, 1, 0, v177);
  v182 = objc_msgSend_descriptorWithSourceMatrix_destinationMatrix_offsets_(MEMORY[0x277CD75C0], v179, v126, v166, 0, 0, v180, v181);
  objc_msgSend_encodeToCommandBuffer_encoder_copyDescriptor_rowPermuteIndices_rowPermuteOffset_columnPermuteIndices_columnPermuteOffset_(v178, v183, a2, v317, v182, 0, 0, 0, 0);
  v184 = [MPSMatrixSum alloc];
  v192 = objc_msgSend_device(a2, v185, v186, v187, v188, v189, v190, v191);
  v195 = objc_msgSend_initWithDevice_count_rows_columns_transpose_(v184, v193, v192, 2, v11, v11, 0, v194);
  v331[0] = v166;
  v331[1] = v126;
  v201 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v196, v331, 2, v197, v198, v199, v200);
  objc_msgSend_encodeToCommandBuffer_encoder_sourceMatrices_resultMatrix_scaleVector_offsetVector_biasVector_startIndex_(v195, v202, a2, v317, v201, v159, 0, 0, 0, 0);
  v208 = objc_msgSend_rowBytesForColumns_dataType_(MEMORY[0x277CD7258], v203, v321, 268435488, v204, v205, v206, v207);
  v210 = objc_msgSend_matrixDescriptorWithRows_columns_matrices_rowBytes_matrixBytes_dataType_(MEMORY[0x277CD7258], v209, v326, WORD2(v327), v10, 4 * WORD2(v327), v208, 268435488);
  v212 = objc_msgSend_matrixDescriptorWithRows_columns_matrices_rowBytes_matrixBytes_dataType_(MEMORY[0x277CD7258], v211, v10, v321, 1, v208, v208, 268435488);
  v220 = objc_msgSend_matrixBytes(v210, v213, v214, v215, v216, v217, v218, v219);
  v221 = MPSAutoCache::GetTempBuffer(v329, v220 * v10, 0);
  v222 = objc_alloc(MEMORY[0x277CD7250]);
  v228 = objc_msgSend_initWithBuffer_descriptor_(v222, v223, v221, v210, v224, v225, v226, v227);
  v229 = objc_alloc(MEMORY[0x277CD7250]);
  v235 = objc_msgSend_initWithBuffer_descriptor_(v229, v230, v221, v212, v231, v232, v233, v234);
  v236 = *(*(a3 + 120) + 24);
  objc_msgSend_setK_(v236, v237, WORD2(v327), v238, v239, v240, v241, v242);
  objc_msgSend_setN_(v236, v243, WORD2(v327), v244, v245, v246, v247, v248);
  objc_msgSend_setM_(v236, v249, v326, v250, v251, v252, v253, v254);
  objc_msgSend_setAlpha_(v236, v255, v256, v257, v258, v259, v260, v261, *(a3 + 92));
  objc_msgSend_encodeToCommandBuffer_encoder_leftMatrix_rightMatrix_resultMatrix_(v236, v262, a2, v317, v325, v159, v228, v263);
  v264 = objc_alloc(MEMORY[0x277CBEB18]);
  v271 = objc_msgSend_initWithCapacity_(v264, v265, v10, v266, v267, v268, v269, v270);
  v279 = objc_msgSend_retainedReferences(a2, v272, v273, v274, v275, v276, v277, v278);
  if (v271)
  {
    v287 = v279;
  }

  else
  {
    v287 = 1;
  }

  if ((v287 & 1) == 0)
  {
    v288 = objc_msgSend_userDictionary(a2, v280, v281, v282, v283, v284, v285, v286);
    v295 = objc_msgSend_objectForKey_(v288, v289, @"_MPSCommandBufferRetainListKey", v290, v291, v292, v293, v294);
    if (!v295)
    {
      v302 = objc_alloc_init(MEMORY[0x277CBEB18]);
      objc_msgSend_setObject_forKey_(v288, v303, v302, @"_MPSCommandBufferRetainListKey", v304, v305, v306, v307);

      v330[0] = MEMORY[0x277D85DD0];
      v330[1] = 3221225472;
      v330[2] = sub_239D2130C;
      v330[3] = &unk_278B28F28;
      v330[4] = @"_MPSCommandBufferRetainListKey";
      objc_msgSend_addCompletedHandler_(a2, v308, v330, v309, v310, v311, v312, v313);
      v295 = v302;
    }

    objc_msgSend_addObject_(v295, v296, v271, v297, v298, v299, v300, v301);
  }

  if (v10)
  {
    for (j = 0; j != v10; ++j)
    {
      v315 = *(a3 + 56);
      if ((*(a3 + 64) & 2) != 0)
      {
        v315 = objc_msgSend_objectAtIndexedSubscript_(v315, v280, j, v282, v283, v284, v285, v286);
      }

      sub_239D211E8(v315, v271, *(a3 + 88), *(a3 + 90), v283, v284, v285, v286);
    }
  }

  objc_msgSend_encodeBatchToCommandBuffer_encoder_sourceMatrix_destinationImages_(*(*(a3 + 16) + 8), v280, a2, v317, v235, v271, v285, v286);
  objc_autoreleasePoolPop(context);
  MPSAutoCache::~MPSAutoCache(v329);
}

void sub_239D21AC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  MPSAutoCache::~MPSAutoCache(va);
  _Unwind_Resume(a1);
}

void sub_239D21AD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  MPSAutoCache::~MPSAutoCache(va);
  _Unwind_Resume(a1);
}

void sub_239D21AE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  MPSAutoCache::~MPSAutoCache(va);
  _Unwind_Resume(a1);
}

void sub_239D21AFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  MPSAutoCache::~MPSAutoCache(va);
  _Unwind_Resume(a1);
}

void sub_239D21B10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  MPSAutoCache::~MPSAutoCache(va);
  _Unwind_Resume(a1);
}

void sub_239D21B24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  MPSAutoCache::~MPSAutoCache(va);
  _Unwind_Resume(a1);
}

void sub_239D21B38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  MPSAutoCache::~MPSAutoCache(va);
  _Unwind_Resume(a1);
}

void sub_239D21B4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  MPSAutoCache::~MPSAutoCache(va);
  _Unwind_Resume(a1);
}

void sub_239D21B60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  MPSAutoCache::~MPSAutoCache(va);
  _Unwind_Resume(a1);
}

void sub_239D21B74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  MPSAutoCache::~MPSAutoCache(va);
  _Unwind_Resume(a1);
}

void sub_239D21B88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  MPSAutoCache::~MPSAutoCache(va);
  _Unwind_Resume(a1);
}

void sub_239D21B9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  MPSAutoCache::~MPSAutoCache(va);
  _Unwind_Resume(a1);
}

void sub_239D21BB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  MPSAutoCache::~MPSAutoCache(va);
  _Unwind_Resume(a1);
}

void sub_239D21BC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  MPSAutoCache::~MPSAutoCache(va);
  _Unwind_Resume(a1);
}

void sub_239D21BD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  MPSAutoCache::~MPSAutoCache(va);
  _Unwind_Resume(a1);
}

void sub_239D21BEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  MPSAutoCache::~MPSAutoCache(va);
  _Unwind_Resume(a1);
}

void sub_239D21C00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  MPSAutoCache::~MPSAutoCache(va);
  _Unwind_Resume(a1);
}

void sub_239D21C18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  MPSAutoCache::~MPSAutoCache(va);
  _Unwind_Resume(a1);
}

void sub_239D21C2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  MPSAutoCache::~MPSAutoCache(va);
  _Unwind_Resume(a1);
}

void sub_239D21C40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  MPSAutoCache::~MPSAutoCache(va);
  _Unwind_Resume(a1);
}

void sub_239D21C54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  MPSAutoCache::~MPSAutoCache(va);
  _Unwind_Resume(a1);
}

void sub_239D21C68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  MPSAutoCache::~MPSAutoCache(va);
  _Unwind_Resume(a1);
}

void sub_239D21C7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  MPSAutoCache::~MPSAutoCache(va);
  _Unwind_Resume(a1);
}

void sub_239D21C90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  MPSAutoCache::~MPSAutoCache(va);
  _Unwind_Resume(a1);
}