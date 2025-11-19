uint64_t sub_239BF3178(_BYTE *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a4 + 8);
  if (v10)
  {
    v11 = 0;
    for (i = 0; i < v10; ++i)
    {
      if (*(*(a4 + 24) + v11 + 48) != 1)
      {
        v13 = a1;
        v14 = a4;
        v15 = MTLReportFailureTypeEnabled();
        a4 = v14;
        v16 = v15;
        a1 = v13;
        if (v16)
        {
          v17 = objc_opt_class();
          v40 = NSStringFromClass(v17);
          MTLReportFailure();
          a4 = v14;
          a1 = v13;
        }
      }

      if (*(*(a4 + 24) + v11 + 104) != 1)
      {
        v18 = a1;
        v19 = a4;
        v20 = MTLReportFailureTypeEnabled();
        a4 = v19;
        v21 = v20;
        a1 = v18;
        if (v21)
        {
          v22 = objc_opt_class();
          v40 = NSStringFromClass(v22);
          MTLReportFailure();
          a4 = v19;
          a1 = v18;
        }
      }

      if (*(*(a4 + 24) + v11 + 80) != 2)
      {
        v23 = a1;
        v24 = a4;
        v25 = MTLReportFailureTypeEnabled();
        a4 = v24;
        v26 = v25;
        a1 = v23;
        if (v26)
        {
          v27 = objc_opt_class();
          v40 = NSStringFromClass(v27);
          MTLReportFailure();
          a4 = v24;
          a1 = v23;
        }
      }

      v10 = *(a4 + 8);
      v11 += 176;
    }
  }

  v52 = 0;
  *&v51[32] = 0u;
  *&v51[16] = 0u;
  *v51 = 0u;
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v41 = v10;
  v28 = *(a4 + 216);
  v43 = *(a4 + 200);
  v44 = v28;
  v42 = *(a4 + 184);
  v29 = *(a4 + 96);
  v45 = *(a4 + 280);
  v46 = v29;
  LODWORD(v47) = *(a4 + 88);
  v30 = *(a4 + 24);
  *(&v47 + 1) = *v30[1];
  v31 = *(a4 + 120);
  v48 = *(a4 + 104);
  v49 = v31;
  *&v50 = *(a4 + 144);
  DWORD2(v50) = *(a4 + 136);
  *v51 = *v30[8];
  v32 = *(a4 + 168);
  *&v51[8] = *(a4 + 152);
  *&v51[24] = v32;
  *&v51[40] = *(a4 + 40);
  LODWORD(v52) = *(a4 + 32);
  v53 = *v30[15];
  v33 = *(a4 + 64);
  v54 = *(a4 + 48);
  v55 = v33;
  v56 = *(a4 + 80);
  WORD6(v54) = (WORD5(v49) + 3) >> 2;
  WORD4(v49) = (WORD4(v49) + 3) >> 2;
  *&v51[32] = (*&v51[32] + 3) >> 2;
  v34 = a1;
  v35 = objc_msgSend_useGridValueAsInputCoordinate(a1, a2, a3, a4, a5, a6, a7, a8, v40, v41, v42, v43, v44, v45, v29, v47, v48, v49, v50, *v51, *&v51[8], *&v51[24], *&v51[40], v52, v53, v54, *(&v54 + 1), v33, v56);
  sub_239BF3730(v34, a2, a3, &v41, v35, v36, v37, v38);
  return 0;
}

uint64_t sub_239BF3730(_BYTE *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v135 = a5;
  v162 = *MEMORY[0x277D85DE8];
  v9 = *(a4 + 114);
  if ((a1[*MEMORY[0x277CD7378]] & 1) == 0 && *(a4 + 56) + v9 > *(a4 + 216))
  {
    v124 = a1;
    v125 = a4;
    v126 = MTLReportFailureTypeEnabled();
    a4 = v125;
    v127 = v126;
    a1 = v124;
    if (v127)
    {
      v128 = objc_opt_class();
      v129 = NSStringFromClass(v128);
      MTLReportFailure();
      a4 = v125;
      a1 = v124;
    }
  }

  v136 = a4;
  v10 = *(a4 + 184);
  v11 = *(a4 + 72);
  v12 = *(a4 + 128);
  v13 = objc_msgSend_maxBatchSize(a1, a2, a3, a4, a5, a6, a7, a8, v129);
  *&v14 = -1;
  *(&v14 + 1) = -1;
  v144 = v14;
  v145 = v14;
  v142 = v14;
  v143 = v14;
  v15 = v10 & 0x3F | ((v11 & 0x3F) << 6) & 0xFFF | ((v12 & 0x3F) << 12);
  v16 = v136;
  v140 = v13;
  v141 = v15;
  MPSLibrary::CreateUberShaderKey();
  PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
  objc_msgSend_setComputePipelineState_(a2, v18, PipelineStateForMPSKey, v19, v20, v21, v22, v23, 0, 0, 0, 0, 0);
  v31 = objc_msgSend_threadExecutionWidth(PipelineStateForMPSKey, v24, v25, v26, v27, v28, v29, v30);
  v39 = objc_msgSend_maxTotalThreadsPerThreadgroup(PipelineStateForMPSKey, v32, v33, v34, v35, v36, v37, v38);
  v47 = 0;
  v134 = v31;
  if (v31 <= v39)
  {
    v47 = (v39 / v31 + WORD1(*(v136 + 208)) - 1) / (v39 / v31);
  }

  v132 = v47;
  v133 = v39 / v31;
  v48 = (v9 + 3) >> 2;
  if (v9 >= 5)
  {
    v50 = __clz(0x80000000 / v48);
    v51 = (0x80000000 / v48) >> (16 - v50);
    v52 = v50 + 15;
    v53 = -65536 * v48 * v51 / v48;
    if (v53 <= v51)
    {
      v54 = v51;
    }

    else
    {
      v54 = v51 + 1;
    }

    if (v53 <= v51)
    {
      LOWORD(v51) = 0;
    }

    v49 = (v52 << 48) | ((v53 - v51) << 32) | (v54 << 16) | v48;
  }

  else
  {
    v49 = 65537;
  }

  v130 = (v9 + 3) >> 2;
  v131 = *(v136 + 208);
  v138 = v49;
  v139 = v135;
  v55 = *(v136 + 176);
  if ((*(v136 + 184) & 2) == 0)
  {
    objc_msgSend_setTexture_atIndex_(a2, v40, *(v136 + 176), 0, v43, v44, v45, v46);
    goto LABEL_33;
  }

  v60 = objc_msgSend_count(*(v136 + 176), v40, v41, v42, v43, v44, v45, v46);
  v160 = 0u;
  v161 = 0u;
  v158 = 0u;
  v159 = 0u;
  v156 = 0u;
  v157 = 0u;
  v154 = 0u;
  v155 = 0u;
  v152 = 0u;
  v153 = 0u;
  v150 = 0u;
  v151 = 0u;
  v148 = 0u;
  v149 = 0u;
  v147 = 0u;
  v146 = 0u;
  if (v13)
  {
    v61 = v60;
    for (i = 0; i < v13; i += v64)
    {
      if (v61 <= i)
      {
        v63 = 0;
        if (v13 - i >= 0x20)
        {
          v64 = 32;
        }

        else
        {
          v64 = v13 - i;
        }

        v65 = v64;
        if (!v64)
        {
          goto LABEL_17;
        }
      }

      else
      {
        if (v61 - i >= 0x20)
        {
          v63 = 32;
          objc_msgSend_getObjects_range_(v55, v56, &v146, i, 32, v57, v58, v59);
        }

        else
        {
          v63 = v61 - i;
          objc_msgSend_getObjects_range_(v55, v56, &v146, i, v61 - i, v57, v58, v59);
        }

        if (v13 - i >= 0x20)
        {
          v64 = 32;
        }

        else
        {
          v64 = v13 - i;
        }

        v65 = v64 - v63;
        if (v64 == v63)
        {
          goto LABEL_17;
        }
      }

      bzero(&v146 + 8 * v63, 8 * v65);
LABEL_17:
      objc_msgSend_setTextures_withRange_(a2, v56, &v146, i, v64, v57, v58, v59);
    }
  }

  v16 = v136;
LABEL_33:
  objc_msgSend_setBytes_length_atIndex_(a2, v56, v16 + 200, 40, 0, v57, v58, v59);
  v73 = *(v16 + 64);
  if ((*(v16 + 72) & 2) == 0)
  {
    objc_msgSend_setTexture_atIndex_(a2, v66, *(v16 + 64), v13, v69, v70, v71, v72);
    goto LABEL_53;
  }

  v78 = objc_msgSend_count(*(v16 + 64), v66, v67, v68, v69, v70, v71, v72);
  v160 = 0u;
  v161 = 0u;
  v158 = 0u;
  v159 = 0u;
  v156 = 0u;
  v157 = 0u;
  v154 = 0u;
  v155 = 0u;
  v152 = 0u;
  v153 = 0u;
  v150 = 0u;
  v151 = 0u;
  v148 = 0u;
  v149 = 0u;
  v147 = 0u;
  v146 = 0u;
  if (v13)
  {
    v79 = v78;
    for (j = 0; j < v13; j += v82)
    {
      if (v79 <= j)
      {
        v81 = 0;
        if (v13 - j >= 0x20)
        {
          v82 = 32;
        }

        else
        {
          v82 = v13 - j;
        }

        v83 = v82;
        if (!v82)
        {
          goto LABEL_37;
        }
      }

      else
      {
        if (v79 - j >= 0x20)
        {
          v81 = 32;
          objc_msgSend_getObjects_range_(v73, v74, &v146, j, 32, v75, v76, v77);
        }

        else
        {
          v81 = v79 - j;
          objc_msgSend_getObjects_range_(v73, v74, &v146, j, v79 - j, v75, v76, v77);
        }

        if (v13 - j >= 0x20)
        {
          v82 = 32;
        }

        else
        {
          v82 = v13 - j;
        }

        v83 = v82 - v81;
        if (v82 == v81)
        {
          goto LABEL_37;
        }
      }

      bzero(&v146 + 8 * v81, 8 * v83);
LABEL_37:
      objc_msgSend_setTextures_withRange_(a2, v74, &v146, j + v13, v82, v75, v76, v77);
    }
  }

  v16 = v136;
LABEL_53:
  objc_msgSend_setBytes_length_atIndex_(a2, v74, v16 + 88, 32, 1, v75, v76, v77);
  v91 = *(v16 + 120);
  if ((*(v16 + 128) & 2) != 0)
  {
    v96 = objc_msgSend_count(*(v16 + 120), v84, v85, v86, v87, v88, v89, v90);
    v160 = 0u;
    v161 = 0u;
    v158 = 0u;
    v159 = 0u;
    v156 = 0u;
    v157 = 0u;
    v154 = 0u;
    v155 = 0u;
    v152 = 0u;
    v153 = 0u;
    v150 = 0u;
    v151 = 0u;
    v148 = 0u;
    v149 = 0u;
    v147 = 0u;
    v146 = 0u;
    if (!v13)
    {
LABEL_72:
      v16 = v136;
      goto LABEL_73;
    }

    v97 = v96;
    v98 = 0;
    while (1)
    {
      if (v97 <= v98)
      {
        v99 = 0;
        if (v13 - v98 >= 0x20)
        {
          v100 = 32;
        }

        else
        {
          v100 = v13 - v98;
        }

        v101 = v100;
        if (!v100)
        {
          goto LABEL_57;
        }
      }

      else
      {
        if (v97 - v98 >= 0x20)
        {
          v99 = 32;
          objc_msgSend_getObjects_range_(v91, v92, &v146, v98, 32, v93, v94, v95);
        }

        else
        {
          v99 = v97 - v98;
          objc_msgSend_getObjects_range_(v91, v92, &v146, v98, v97 - v98, v93, v94, v95);
        }

        if (v13 - v98 >= 0x20)
        {
          v100 = 32;
        }

        else
        {
          v100 = v13 - v98;
        }

        v101 = v100 - v99;
        if (v100 == v99)
        {
          goto LABEL_57;
        }
      }

      bzero(&v146 + 8 * v99, 8 * v101);
LABEL_57:
      objc_msgSend_setTextures_withRange_(a2, v92, &v146, v98 + 2 * v13, v100, v93, v94, v95);
      v98 += v100;
      if (v98 >= v13)
      {
        goto LABEL_72;
      }
    }
  }

  objc_msgSend_setTexture_atIndex_(a2, v84, *(v16 + 120), 2 * v13, v87, v88, v89, v90);
LABEL_73:
  objc_msgSend_setBytes_length_atIndex_(a2, v92, v16 + 144, 32, 2, v93, v94, v95);
  objc_msgSend_setBytes_length_atIndex_(a2, v102, &v138, 10, 30, v103, v104, v105);
  Sampler = MPSDevice::GetSampler();
  objc_msgSend_setSamplerState_atIndex_(a2, v107, Sampler, 0, v108, v109, v110, v111);
  v112 = MPSDevice::GetSampler();
  objc_msgSend_setSamplerState_atIndex_(a2, v113, v112, 1, v114, v115, v116, v117);
  *&v146 = (v134 + v131 - 1) / v134;
  *(&v146 + 1) = v132;
  *&v147 = v130 * HIWORD(v131);
  v137[0] = v134;
  v137[1] = v133;
  v137[2] = 1;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v118, &v146, v137, v119, v120, v121, v122);
  return MPSLibrary::ReleaseMPSKey();
}

unint64_t sub_239BF3EB4(uint64_t *a1, char *a2, void *a3, uint64_t a4, char *a5, char *a6, char *a7, uint64_t a8)
{
  v9 = a4;
  result = objc_msgSend_batchSize(a1, a2, a3, a4, a5, a6, a7, a8);
  if (!result)
  {
    return result;
  }

  v19 = objc_msgSend_matrices(v9, v12, v13, v14, v15, v16, v17, v18);
  v27 = v19 - objc_msgSend_batchStart(a1, v20, v21, v22, v23, v24, v25, v26);
  v35 = objc_msgSend_matrices(a5, v28, v29, v30, v31, v32, v33, v34);
  v43 = v35 - objc_msgSend_batchStart(a1, v36, v37, v38, v39, v40, v41, v42);
  v51 = objc_msgSend_matrices(a7, v44, v45, v46, v47, v48, v49, v50);
  v66 = v51 - objc_msgSend_batchStart(a1, v52, v53, v54, v55, v56, v57, v58);
  if (a6)
  {
    v67 = objc_msgSend_vectors(a6, v59, v60, v61, v62, v63, v64, v65);
    v75 = v67 - objc_msgSend_batchStart(a1, v68, v69, v70, v71, v72, v73, v74);
  }

  else
  {
    v75 = objc_msgSend_batchSize(a1, v59, v60, v61, v62, v63, v64, v65);
  }

  if (v27 >= v43)
  {
    v83 = v43;
  }

  else
  {
    v83 = v27;
  }

  if (v83 >= v75)
  {
    v83 = v75;
  }

  v84 = v83 >= v66 ? v66 : v83;
  v85 = objc_msgSend_batchSize(a1, v76, v77, v78, v79, v80, v81, v82);
  v93 = v84 >= v85 ? v85 : v84;
  v1068 = v93;
  result = objc_msgSend_dataType(a7, v86, v87, v88, v89, v90, v91, v92);
  if (result != 268435488)
  {
    return result;
  }

  v108 = objc_msgSend_columns(a5, v94, v95, v96, v97, v98, v99, v100);
  if (a1)
  {
    objc_msgSend_secondarySourceMatrixOrigin(a1, v101, v102, v103, v104, v105, v106, v107);
    v109 = v1086;
  }

  else
  {
    v109 = 0;
  }

  v110 = v108 - v109;
  v111 = objc_msgSend_sourceOutputFeatureChannels(a1, v101, v102, v103, v104, v105, v106, v107);
  if (v110 >= v111)
  {
    v110 = v111;
  }

  v126 = objc_msgSend_columns(v9, v112, v113, v114, v115, v116, v117, v118);
  if (a1)
  {
    objc_msgSend_primarySourceMatrixOrigin(a1, v119, v120, v121, v122, v123, v124, v125);
    v127 = v1086;
    v135 = objc_msgSend_rows(a5, v128, v129, v130, v131, v132, v133, v134);
    objc_msgSend_secondarySourceMatrixOrigin(a1, v136, v137, v138, v139, v140, v141, v142);
    v150 = v1085;
  }

  else
  {
    v135 = objc_msgSend_rows(a5, v119, v120, v121, v122, v123, v124, v125);
    v150 = 0;
    v127 = 0;
  }

  v151 = v135 - v150;
  if (v126 - v127 >= v151)
  {
    v152 = v151;
  }

  else
  {
    v152 = v126 - v127;
  }

  v153 = objc_msgSend_sourceInputFeatureChannels(a1, v143, v144, v145, v146, v147, v148, v149);
  if (v152 >= v153)
  {
    v161 = v153;
  }

  else
  {
    v161 = v152;
  }

  if (a1)
  {
    objc_msgSend_secondarySourceMatrixOrigin(a1, v154, v155, v156, v157, v158, v159, v160);
    v162 = 0;
    if ((v1086 & 0xF) != 0)
    {
      goto LABEL_40;
    }
  }

  else
  {
    v1085 = 0;
    v1086 = 0;
    v1087 = 0;
    v162 = 0;
  }

  if ((v110 & 3) == 0)
  {
    v163 = objc_msgSend_data(a5, v154, v155, v156, v157, v158, v159, v160);
    v171 = objc_msgSend_length(v163, v164, v165, v166, v167, v168, v169, v170);
    v186 = objc_msgSend_rowBytes(a5, v172, v173, v174, v175, v176, v177, v178) * v161;
    if (a1)
    {
      objc_msgSend_secondarySourceMatrixOrigin(a1, v179, v180, v181, v182, v183, v184, v185);
      v186 += objc_msgSend_rowBytes(a5, v187, v188, v189, v190, v191, v192, v193) * v1080;
      objc_msgSend_secondarySourceMatrixOrigin(a1, v194, v195, v196, v197, v198, v199, v200);
      v208 = v1072;
    }

    else
    {
      v1080 = 0;
      v1081 = 0;
      v1082 = 0;
      objc_msgSend_rowBytes(a5, v179, v180, v181, v182, v183, v184, v185);
      v208 = 0;
      v1072 = 0;
      v1073 = 0;
      v1071 = 0;
    }

    v162 = v171 >= v186 + v208 * (objc_msgSend_dataType(a5, v201, v202, v203, v204, v205, v206, v207) >> 3);
  }

LABEL_40:
  if (objc_msgSend_dataType(a5, v154, v155, v156, v157, v158, v159, v160) == 268435488)
  {
    v216 = objc_msgSend_device(a3, v209, v210, v211, v212, v213, v214, v215);
    v223 = objc_msgSend_minimumLinearTextureAlignmentForPixelFormat_(v216, v217, 125, v218, v219, v220, v221, v222);
    if (!v162)
    {
      goto LABEL_48;
    }
  }

  else
  {
    if (objc_msgSend_dataType(a5, v209, v210, v211, v212, v213, v214, v215) == 268435472)
    {
      v238 = 115;
    }

    else
    {
      v238 = 0;
    }

    v239 = objc_msgSend_device(a3, v231, v232, v233, v234, v235, v236, v237);
    v223 = objc_msgSend_minimumLinearTextureAlignmentForPixelFormat_(v239, v240, v238, v241, v242, v243, v244, v245);
    if (!v162)
    {
      goto LABEL_48;
    }
  }

  v246 = v223;
  if (!(objc_msgSend_rowBytes(a5, v224, v225, v226, v227, v228, v229, v230) % v223))
  {
    v1007 = objc_msgSend_rowBytes(a5, v224, v225, v226, v227, v228, v229, v230);
    v247 = v1007 - v110 * (objc_msgSend_dataType(a5, v1008, v1009, v1010, v1011, v1012, v1013, v1014) >> 3) < v246;
    goto LABEL_49;
  }

LABEL_48:
  v247 = 0;
LABEL_49:
  v248 = *(a1 + *MEMORY[0x277CD7350]);
  v249 = (*(v248 + 1476) & 0x400) == 0 && v247;
  if ((*(v248 + 1476) & 0x400) != 0 && v247)
  {
    v249 = *(v248 + 1472) < 8;
  }

  result = objc_msgSend_dataType(v9, v224, v225, v226, v227, v228, v229, v230);
  if (result == 268435488)
  {
    if (v249)
    {
      if (v1068)
      {
        v257 = 0;
        v258 = 1;
        do
        {
          v259 = objc_msgSend_batchStart(a1, v250, v251, v252, v253, v254, v255, v256);
          v1066 = *(a1 + *MEMORY[0x277CD7370]);
          v267 = objc_msgSend_rows(v9, v260, v261, v262, v263, v264, v265, v266);
          objc_msgSend_primarySourceMatrixOrigin(a1, v268, v269, v270, v271, v272, v273, v274);
          v275 = v267 - v1085;
          v283 = objc_msgSend_sourceNumberOfFeatureVectors(a1, v276, v277, v278, v279, v280, v281, v282);
          if (v275 >= v283)
          {
            v291 = v283;
          }

          else
          {
            v291 = v275;
          }

          v292 = objc_msgSend_columns(a5, v284, v285, v286, v287, v288, v289, v290);
          objc_msgSend_secondarySourceMatrixOrigin(a1, v293, v294, v295, v296, v297, v298, v299);
          v300 = v292 - v1086;
          v308 = objc_msgSend_sourceOutputFeatureChannels(a1, v301, v302, v303, v304, v305, v306, v307);
          if (v300 >= v308)
          {
            v316 = v308;
          }

          else
          {
            v316 = v300;
          }

          v317 = objc_msgSend_columns(v9, v309, v310, v311, v312, v313, v314, v315);
          objc_msgSend_primarySourceMatrixOrigin(a1, v318, v319, v320, v321, v322, v323, v324);
          v325 = v317 - v1086;
          v333 = objc_msgSend_rows(a5, v326, v327, v328, v329, v330, v331, v332);
          objc_msgSend_secondarySourceMatrixOrigin(a1, v334, v335, v336, v337, v338, v339, v340);
          if (v325 >= v333 - v1085)
          {
            v348 = v333 - v1085;
          }

          else
          {
            v348 = v325;
          }

          result = objc_msgSend_sourceInputFeatureChannels(a1, v341, v342, v343, v344, v345, v346, v347);
          if (v348 >= result)
          {
            v349 = result;
          }

          else
          {
            v349 = v348;
          }

          if (v291 && v316)
          {
            v350 = v259 + v257;
            objc_msgSend_primarySourceMatrixOrigin(a1, v250, v251, v252, v253, v254, v255, v256);
            v1057 = v1086;
            v1056 = objc_msgSend_dataType(v9, v351, v352, v353, v354, v355, v356, v357);
            objc_msgSend_primarySourceMatrixOrigin(a1, v358, v359, v360, v361, v362, v363, v364);
            v1054 = v1078;
            v1048 = objc_msgSend_rowBytes(v9, v365, v366, v367, v368, v369, v370, v371);
            v1044 = objc_msgSend_matrixBytes(v9, v372, v373, v374, v375, v376, v377, v378);
            v379 = MEMORY[0x277CD73A8];
            v1059 = *&v9[*MEMORY[0x277CD73A8]];
            objc_msgSend_secondarySourceMatrixOrigin(a1, v380, v381, v382, v383, v384, v385, v386);
            v1038 = v1086;
            v1032 = objc_msgSend_dataType(a5, v387, v388, v389, v390, v391, v392, v393);
            objc_msgSend_secondarySourceMatrixOrigin(a1, v394, v395, v396, v397, v398, v399, v400);
            v1028 = v1078;
            v1024 = objc_msgSend_rowBytes(a5, v401, v402, v403, v404, v405, v406, v407);
            v1022 = objc_msgSend_matrixBytes(a5, v408, v409, v410, v411, v412, v413, v414);
            v1050 = *&a5[*v379];
            if (a6)
            {
              v1017 = *&a6[*MEMORY[0x277CD74A8]] + objc_msgSend_vectorBytes(a6, v415, v416, v417, v418, v419, v420, v421) * v350;
            }

            else
            {
              v1017 = 0;
            }

            objc_msgSend_resultMatrixOrigin(a1, v415, v416, v417, v418, v419, v420, v421);
            v1052 = v1086;
            v1046 = objc_msgSend_dataType(a7, v422, v423, v424, v425, v426, v427, v428);
            objc_msgSend_resultMatrixOrigin(a1, v429, v430, v431, v432, v433, v434, v435);
            v1042 = v1078;
            v1036 = objc_msgSend_rowBytes(a7, v436, v437, v438, v439, v440, v441, v442);
            v1034 = objc_msgSend_matrixBytes(a7, v443, v444, v445, v446, v447, v448, v449);
            v1040 = *&a7[*MEMORY[0x277CD73A8]];
            objc_msgSend_neuronType(a1, v450, v451, v452, v453, v454, v455, v456);
            ComputeState = MPSLibrary::GetComputeState();
            v1085 = __PAIR64__(v291, v316);
            LODWORD(v1086) = v349;
            HIDWORD(v1086) = objc_msgSend_rowBytes(a5, v458, v459, v460, v461, v462, v463, v464);
            LODWORD(v1087) = objc_msgSend_rowBytes(v9, v465, v466, v467, v468, v469, v470, v471);
            HIDWORD(v1087) = objc_msgSend_rowBytes(a7, v472, v473, v474, v475, v476, v477, v478);
            v1088 = objc_msgSend_neuronType(a1, v479, v480, v481, v482, v483, v484, v485);
            objc_msgSend_alpha(a1, v486, v487, v488, v489, v490, v491, v492);
            *&v493 = v493;
            v1089 = LODWORD(v493);
            objc_msgSend_neuronA(a1, v494, v495, v496, v497, v498, v499, v500);
            v1090 = v501;
            objc_msgSend_neuronB(a1, v502, v503, v504, v505, v506, v507, v508);
            v1091 = v509;
            objc_msgSend_neuronC(a1, v510, v511, v512, v513, v514, v515, v516);
            v1092 = v517;
            v518 = *(v1066 + 32);
            v1078 = 0u;
            v1079 = 0u;
            v1030 = v291;
            (*(*v518 + 16))(&v1078);
            v519 = *(&v1078 + 1);
            v1026 = v1078;
            v1019 = v1079;
            objc_msgSend_setComputePipelineState_(a2, v520, ComputeState, v521, v522, v523, v524, v525);
            if (objc_msgSend_dataType(a5, v526, v527, v528, v529, v530, v531, v532) == 268435488)
            {
              v540 = 125;
            }

            else if (objc_msgSend_dataType(a5, v533, v534, v535, v536, v537, v538, v539) == 268435472)
            {
              v540 = 115;
            }

            else
            {
              v540 = 0;
            }

            v541 = objc_msgSend_texture2DDescriptorWithPixelFormat_width_height_mipmapped_(MEMORY[0x277CD7058], v533, v540, (v316 + 3) >> 2, v349, 0, v538, v539);
            v549 = objc_msgSend_data(a5, v542, v543, v544, v545, v546, v547, v548);
            v557 = objc_msgSend_rowBytes(a5, v550, v551, v552, v553, v554, v555, v556);
            v562 = objc_msgSend_newTextureWithDescriptor_offset_bytesPerRow_(v549, v558, v541, v1038 * (v1032 >> 3) + v1024 * v1028 + v1022 * v350 + v1050, v557, v559, v560, v561);
            objc_msgSend_setTexture_atIndex_(a2, v563, v562, 0, v564, v565, v566, v567);
            v575 = objc_msgSend_data(v9, v568, v569, v570, v571, v572, v573, v574);
            objc_msgSend_setBuffer_offset_atIndex_(a2, v576, v575, v1057 * (v1056 >> 3) + v1048 * v1054 + v1044 * v350 + v1059, 0, v577, v578, v579);
            if (a6)
            {
              v587 = objc_msgSend_data(a6, v580, v581, v582, v583, v584, v585, v586);
              objc_msgSend_setBuffer_offset_atIndex_(a2, v588, v587, v1017, 1, v589, v590, v591);
            }

            v592 = objc_msgSend_data(a7, v580, v581, v582, v583, v584, v585, v586);
            objc_msgSend_setBuffer_offset_atIndex_(a2, v593, v592, v1052 * (v1046 >> 3) + v1036 * v1042 + v1034 * v350 + v1040, 2, v594, v595, v596);
            objc_msgSend_setBytes_length_atIndex_(a2, v597, &v1085, 44, 3, v598, v599, v600);
            if (objc_msgSend_neuronType(a1, v601, v602, v603, v604, v605, v606, v607) == 10)
            {
              objc_msgSend_setBuffer_offset_atIndex_(a2, v608, a1[23], 0, 4, v610, v611, v612);
              if ((objc_msgSend_retainedReferences(a3, v613, v614, v615, v616, v617, v618, v619) & 1) == 0)
              {
                v620 = a1[23];
                v1080 = MEMORY[0x277D85DD0];
                v1081 = 3221225472;
                v1082 = sub_239BF7CC0;
                v1083 = &unk_278B28F28;
                v1084 = a1;
                objc_msgSend_addCompletedHandler_(a3, v621, &v1080, v622, v623, v624, v625, v626);
              }
            }

            v1077[0] = (v1019 * v1026 + v316 - 1) / (v1019 * v1026);
            v1077[1] = (v1030 + *(&v1019 + 1) * v519 - 1) / (*(&v1019 + 1) * v519);
            v1077[2] = 1;
            v1076[0] = v1026;
            v1076[1] = v519;
            v1076[2] = 1;
            objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v608, v1077, v1076, v609, v610, v611, v612);
            if ((objc_msgSend_retainedReferences(a3, v627, v628, v629, v630, v631, v632, v633) & 1) == 0)
            {
              v634 = v562;
              v1071 = MEMORY[0x277D85DD0];
              v1072 = 3221225472;
              v1073 = sub_239BF7CD4;
              v1074 = &unk_278B28F28;
              v1075 = v562;
              objc_msgSend_addCompletedHandler_(a3, v635, &v1071, v636, v637, v638, v639, v640);
            }

            result = MPSLibrary::ReleaseComputeState();
          }

          v257 = v258++;
        }

        while (v1068 > v257);
      }

      return result;
    }

    if (!v1068)
    {
      return result;
    }

    v641 = 0;
    v642 = 1;
    v1063 = v9;
    do
    {
      v643 = objc_msgSend_batchStart(a1, v250, v251, v252, v253, v254, v255, v256);
      v1061 = *(a1 + *MEMORY[0x277CD7350]);
      v651 = objc_msgSend_rows(v9, v644, v645, v646, v647, v648, v649, v650);
      objc_msgSend_primarySourceMatrixOrigin(a1, v652, v653, v654, v655, v656, v657, v658);
      v659 = v651 - v1085;
      v667 = objc_msgSend_sourceNumberOfFeatureVectors(a1, v660, v661, v662, v663, v664, v665, v666);
      if (v659 >= v667)
      {
        v675 = v667;
      }

      else
      {
        v675 = v659;
      }

      v676 = objc_msgSend_columns(a5, v668, v669, v670, v671, v672, v673, v674);
      objc_msgSend_secondarySourceMatrixOrigin(a1, v677, v678, v679, v680, v681, v682, v683);
      v684 = v676 - v1086;
      v692 = objc_msgSend_sourceOutputFeatureChannels(a1, v685, v686, v687, v688, v689, v690, v691);
      if (v684 >= v692)
      {
        v700 = v692;
      }

      else
      {
        v700 = v684;
      }

      v701 = objc_msgSend_columns(v9, v693, v694, v695, v696, v697, v698, v699);
      objc_msgSend_primarySourceMatrixOrigin(a1, v702, v703, v704, v705, v706, v707, v708);
      v709 = v701 - v1086;
      v717 = objc_msgSend_rows(a5, v710, v711, v712, v713, v714, v715, v716);
      objc_msgSend_secondarySourceMatrixOrigin(a1, v718, v719, v720, v721, v722, v723, v724);
      if (v709 >= v717 - v1085)
      {
        v709 = v717 - v1085;
      }

      result = objc_msgSend_sourceInputFeatureChannels(a1, v725, v726, v727, v728, v729, v730, v731);
      if (v709 >= result)
      {
        LODWORD(v709) = result;
      }

      v1067 = v675;
      if (!v675 || !v700)
      {
        goto LABEL_90;
      }

      v1060 = v700;
      v732 = v643 + v641;
      objc_msgSend_primarySourceMatrixOrigin(a1, v250, v251, v252, v253, v254, v255, v256);
      v1041 = v1086;
      v1039 = objc_msgSend_dataType(v1063, v733, v734, v735, v736, v737, v738, v739);
      objc_msgSend_primarySourceMatrixOrigin(a1, v740, v741, v742, v743, v744, v745, v746);
      v1037 = v1071;
      v1035 = objc_msgSend_rowBytes(v1063, v747, v748, v749, v750, v751, v752, v753);
      v1033 = objc_msgSend_matrixBytes(v1063, v754, v755, v756, v757, v758, v759, v760);
      v761 = MEMORY[0x277CD73A8];
      v762 = *&v1063[*MEMORY[0x277CD73A8]];
      objc_msgSend_secondarySourceMatrixOrigin(a1, v763, v764, v765, v766, v767, v768, v769);
      v1031 = v1086;
      v1029 = objc_msgSend_dataType(a5, v770, v771, v772, v773, v774, v775, v776);
      objc_msgSend_secondarySourceMatrixOrigin(a1, v777, v778, v779, v780, v781, v782, v783);
      v1027 = v1071;
      v1025 = objc_msgSend_rowBytes(a5, v784, v785, v786, v787, v788, v789, v790);
      v1023 = objc_msgSend_matrixBytes(a5, v791, v792, v793, v794, v795, v796, v797);
      v1047 = *&a5[*v761];
      v1058 = v709;
      if (a6)
      {
        v805 = *&a6[*MEMORY[0x277CD74A8]] + objc_msgSend_vectorBytes(a6, v798, v799, v800, v801, v802, v803, v804) * v732;
      }

      else
      {
        v805 = 0;
      }

      objc_msgSend_resultMatrixOrigin(a1, v798, v799, v800, v801, v802, v803, v804);
      v1055 = v1086;
      v1053 = objc_msgSend_dataType(a7, v806, v807, v808, v809, v810, v811, v812);
      objc_msgSend_resultMatrixOrigin(a1, v813, v814, v815, v816, v817, v818, v819);
      v1051 = v1071;
      v1045 = objc_msgSend_rowBytes(a7, v820, v821, v822, v823, v824, v825, v826);
      v1043 = objc_msgSend_matrixBytes(a7, v827, v828, v829, v830, v831, v832, v833);
      v834 = *&a7[*v761];
      objc_msgSend_dataType(a5, v835, v836, v837, v838, v839, v840, v841);
      objc_msgSend_neuronType(a1, v842, v843, v844, v845, v846, v847, v848);
      v1049 = v834;
      if ((*(v1061 + 1477) & 4) != 0)
      {
        v857 = *(v1061 + 1472);
        v858 = objc_msgSend_dataType(a5, v849, v850, v851, v852, v853, v854, v855);
        v867 = (v1060 & 0x3F) == 0 && v857 == 11;
        if (v858 == 268435488)
        {
          if ((v1067 & 0x3F) != 0)
          {
            v867 = 0;
          }

          if (!v867 || (v1058 & 0x3F) != 0)
          {
            goto LABEL_126;
          }
        }

        else
        {
          if ((v1067 & 0x7F) != 0)
          {
            v867 = 0;
          }

          if (!v867 || (v1058 & 7) != 0)
          {
LABEL_126:
            v1015 = 0u;
            v1016 = 0u;
            MPSLibrary::CreateUberShaderKey();
            v1062 = 8;
            v1021 = 4;
            v856 = 16;
            goto LABEL_127;
          }
        }

        if (objc_msgSend_dataType(a5, v859, v860, v861, v862, v863, v864, v865) != 268435488)
        {
          v1015 = 0u;
          v1016 = 0u;
          MPSLibrary::CreateUberShaderKey();
          v1062 = 4;
          v1021 = 64;
          v1020 = 64;
          v868 = 128;
          goto LABEL_128;
        }

        v1015 = 0u;
        v1016 = 0u;
        MPSLibrary::CreateUberShaderKey();
        v1062 = 4;
        v1021 = 32;
        v856 = 64;
      }

      else
      {
        v1015 = 0u;
        v1016 = 0u;
        MPSLibrary::CreateUberShaderKey();
        v1062 = 8;
        v1021 = 8;
        v856 = 32;
      }

LABEL_127:
      v1020 = v856;
      v868 = 64;
LABEL_128:
      v1018 = v868;
      PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
      MPSLibrary::ReleaseMPSKey();
      v1085 = __PAIR64__(v1067, v1060);
      LODWORD(v1086) = v1058;
      HIDWORD(v1086) = objc_msgSend_rowBytes(a5, v870, v871, v872, v873, v874, v875, v876, v1015, v1016, 0);
      LODWORD(v1087) = objc_msgSend_rowBytes(v1063, v877, v878, v879, v880, v881, v882, v883);
      HIDWORD(v1087) = objc_msgSend_rowBytes(a7, v884, v885, v886, v887, v888, v889, v890);
      v1088 = objc_msgSend_neuronType(a1, v891, v892, v893, v894, v895, v896, v897);
      objc_msgSend_alpha(a1, v898, v899, v900, v901, v902, v903, v904);
      *&v905 = v905;
      v1089 = LODWORD(v905);
      objc_msgSend_neuronA(a1, v906, v907, v908, v909, v910, v911, v912);
      v1090 = v913;
      objc_msgSend_neuronB(a1, v914, v915, v916, v917, v918, v919, v920);
      v1091 = v921;
      objc_msgSend_neuronC(a1, v922, v923, v924, v925, v926, v927, v928);
      v1092 = v929;
      objc_msgSend_setComputePipelineState_(a2, v930, PipelineStateForMPSKey, v931, v932, v933, v934, v935);
      v943 = objc_msgSend_data(a5, v936, v937, v938, v939, v940, v941, v942);
      objc_msgSend_setBuffer_offset_atIndex_(a2, v944, v943, v1031 * (v1029 >> 3) + v1025 * v1027 + v1023 * v732 + v1047, 0, v945, v946, v947);
      v955 = objc_msgSend_data(v1063, v948, v949, v950, v951, v952, v953, v954);
      objc_msgSend_setBuffer_offset_atIndex_(a2, v956, v955, v1041 * (v1039 >> 3) + v1035 * v1037 + v1033 * v732 + v762, 1, v957, v958, v959);
      if (a6)
      {
        v967 = objc_msgSend_data(a6, v960, v961, v962, v963, v964, v965, v966);
        objc_msgSend_setBuffer_offset_atIndex_(a2, v968, v967, v805, 2, v969, v970, v971);
      }

      v972 = objc_msgSend_data(a7, v960, v961, v962, v963, v964, v965, v966);
      objc_msgSend_setBuffer_offset_atIndex_(a2, v973, v972, v1055 * (v1053 >> 3) + v1045 * v1051 + v1043 * v732 + v1049, 3, v974, v975, v976);
      objc_msgSend_setBytes_length_atIndex_(a2, v977, &v1085, 44, 4, v978, v979, v980);
      if (objc_msgSend_neuronType(a1, v981, v982, v983, v984, v985, v986, v987) == 10)
      {
        objc_msgSend_setBuffer_offset_atIndex_(a2, v988, a1[23], 0, 5, v990, v991, v992);
        if ((objc_msgSend_retainedReferences(a3, v993, v994, v995, v996, v997, v998, v999) & 1) == 0)
        {
          v1000 = a1[23];
          v1080 = MEMORY[0x277D85DD0];
          v1081 = 3221225472;
          v1082 = sub_239BF7CDC;
          v1083 = &unk_278B28F28;
          v1084 = a1;
          objc_msgSend_addCompletedHandler_(a3, v1001, &v1080, v1002, v1003, v1004, v1005, v1006);
        }
      }

      v1071 = (v1020 + v1060 - 1) / v1020;
      v1072 = (v1018 + v1067 - 1) / v1018;
      v1073 = 1;
      *&v1078 = v1021;
      *(&v1078 + 1) = v1062;
      *&v1079 = 1;
      objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v988, &v1071, &v1078, v989, v990, v991, v992);
      result = MPSLibrary::ReleaseComputeState();
LABEL_90:
      v641 = v642++;
      v9 = v1063;
    }

    while (v1068 > v641);
  }

  return result;
}

void sub_239BF58B0(_Unwind_Exception *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_239BACD2C(va, a2, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

uint64_t sub_239BF59C0(void *a1, void *a2, void *a3)
{
  if (a2)
  {
    v4 = a2;
  }

  else
  {
    v4 = a3;
  }

  result = MPSDevice::GetMPSDevice();
  if (result)
  {
    v12 = result;
    result = 0;
    if (a1)
    {
      if (v4)
      {
        if (v4 == a3)
        {

          return MEMORY[0x2821F9840](0);
        }

        else
        {
          v13 = v12;
          v14 = objc_msgSend_length(a1, a1, v6, v7, v8, v9, v10, v11);
          v15 = (*(*v13 + 40))(v13);
          v16 = (*(*v13 + 24))(v13);
          v22 = objc_msgSend_newBufferWithLength_options_(v4, v17, v14, v15 | (16 * v16), v18, v19, v20, v21);
          if (v22)
          {
            v30 = v22;
            v31 = objc_msgSend_contents(v22, v23, v24, v25, v26, v27, v28, v29);
            v39 = objc_msgSend_contents(a1, v32, v33, v34, v35, v36, v37, v38);
            v47 = objc_msgSend_length(a1, v40, v41, v42, v43, v44, v45, v46);
            memcpy(v31, v39, v47);
            return v30;
          }

          else
          {
            if (MTLReportFailureTypeEnabled())
            {
              MTLReportFailure();
            }

            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_239BF5D38(void *a1, void *a2)
{
  result = MPSDevice::GetMPSDevice();
  if (result)
  {
    v11 = result;
    if (objc_msgSend_decodeBoolForKey_(a1, v5, @"MPSMatrixFullyConnected._perChannelNeuronA;", v6, v7, v8, v9, v10))
    {
      v60 = 0;
      v12 = objc_alloc(MEMORY[0x277CCACA8]);
      v19 = objc_msgSend_initWithFormat_(v12, v13, @"%@%@", v14, v15, v16, v17, v18, @"MPSMatrixFullyConnected._perChannelNeuronA;", @".length");
      v20 = objc_alloc(MEMORY[0x277CCACA8]);
      v27 = objc_msgSend_initWithFormat_(v20, v21, @"%@%@", v22, v23, v24, v25, v26, @"MPSMatrixFullyConnected._perChannelNeuronA;", @".data");
      v34 = objc_msgSend_decodeInt64ForKey_(a1, v28, v19, v29, v30, v31, v32, v33);
      v40 = objc_msgSend_decodeBytesForKey_returnedLength_(a1, v35, v27, &v60, v36, v37, v38, v39);

      if (v40)
      {
        if (4 * v34 == v60)
        {
          v41 = malloc_type_malloc(4 * v34, 0x100004052888210uLL);
          if (v41)
          {
            v42 = v41;
            MPSCopyToFromNetworkByteOrder32();
            if (v34)
            {
              v43 = (*(*v11 + 40))(v11);
              v44 = (*(*v11 + 24))(v11);
              v50 = objc_msgSend_newBufferWithLength_options_(a2, v45, 4 * v34, v43 | (16 * v44), v46, v47, v48, v49);
              if (v50)
              {
                v58 = v50;
                v59 = objc_msgSend_contents(v50, v51, v52, v53, v54, v55, v56, v57);
                memcpy(v59, v42, 4 * v34);
                free(v42);
                return v58;
              }
            }

            free(v42);
          }
        }
      }
    }

    return 0;
  }

  return result;
}

void sub_239BF605C(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    v10 = objc_msgSend_contents(a2, a2, a3, a4, a5, a6, a7, a8);
    objc_msgSend_encodeBool_forKey_(a1, v11, v10 != 0, @"MPSMatrixFullyConnected._perChannelNeuronA;", v12, v13, v14, v15);
    if (v10)
    {
      v16 = objc_alloc(MEMORY[0x277CCACA8]);
      v23 = objc_msgSend_initWithFormat_(v16, v17, @"%@%@", v18, v19, v20, v21, v22, @"MPSMatrixFullyConnected._perChannelNeuronA;", @".length");
      v24 = objc_alloc(MEMORY[0x277CCACA8]);
      v42 = objc_msgSend_initWithFormat_(v24, v25, @"%@%@", v26, v27, v28, v29, v30, @"MPSMatrixFullyConnected._perChannelNeuronA;", @".data");
      objc_msgSend_encodeInt64_forKey_(a1, v31, a3, v23, v32, v33, v34, v35);

      v36 = malloc_type_malloc(4 * a3, 0x100004052888210uLL);
      if (v36)
      {
        v37 = v36;
        MPSCopyToFromNetworkByteOrder32();
        objc_msgSend_encodeBytes_length_forKey_(a1, v38, v37, 4 * a3, v42, v39, v40, v41);
        free(v37);
      }
    }
  }

  else
  {

    objc_msgSend_encodeBool_forKey_(a1, 0, 0, @"MPSMatrixFullyConnected._perChannelNeuronA;", a5, a6, a7, a8);
  }
}

__n128 sub_239BF7B48@<Q0>(unint64_t a1@<X1>, _OWORD *a2@<X8>)
{
  if (a1 >= 9)
  {
    if (a1 >= 0x11)
    {
      if (a1 > 0x18)
      {
        v3 = &unk_239D7DC20 + 32 * ((a1 % ((a1 + 7) >> 3)) & 1);
      }

      else
      {
        v3 = &unk_239D7DBC0 + 32 * (a1 % 3u);
      }

      result = *v3;
      v4 = *(v3 + 1);
      *a2 = *v3;
      a2[1] = v4;
    }

    else
    {
      result.n128_u64[0] = 32;
      *a2 = xmmword_239D7DBA0;
      a2[1] = unk_239D7DBB0;
    }
  }

  else
  {
    result.n128_u64[0] = 64;
    *a2 = xmmword_239D7DB80;
    a2[1] = unk_239D7DB90;
  }

  return result;
}

uint64_t sub_239BF7BE8(uint64_t a1, uint64_t a2)
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
    objc_msgSend_setConstantValue_type_atIndex_(v8, v4, &v12, 41, 1, v5, v6, v7);
    if ((*(a2 + 64) & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  objc_msgSend_setConstantValue_type_atIndex_(v3, v4, &v12, 41, 0, v5, v6, v7);
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

uint64_t sub_239BF82A0(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a4 + 56);
  v12 = objc_msgSend_numberOfFeatureChannels(a1, a2, a3, a4, a5, a6, a7, a8);
  objc_msgSend_epsilon(a1, v13, v14, v15, v16, v17, v18, v19);
  v28 = v27;
  v29 = *(a1 + 344);
  explicit = atomic_load_explicit(v29, memory_order_acquire);
  if (explicit)
  {
    v31 = *(a1 + 352);
    v32 = atomic_load_explicit(v31, memory_order_acquire);
    if (v32)
    {
      goto LABEL_3;
    }
  }

  else
  {
    MPSAutoBuffer::AllocateBuffer(v29, 0);
    explicit = atomic_load_explicit(v29, memory_order_acquire);
    v31 = *(a1 + 352);
    v32 = atomic_load_explicit(v31, memory_order_acquire);
    if (v32)
    {
LABEL_3:
      v288 = v11;
      if (v11)
      {
        goto LABEL_4;
      }

LABEL_10:
      v284 = v32;
      v285 = explicit;
      v37 = *(a1 + 328);
      v38 = atomic_load_explicit(v37, memory_order_acquire);
      if (v38)
      {
        goto LABEL_22;
      }

      goto LABEL_21;
    }
  }

  MPSAutoBuffer::AllocateBuffer(v31, 0);
  v32 = atomic_load_explicit(v31, memory_order_acquire);
  v288 = v11;
  if (!v11)
  {
    goto LABEL_10;
  }

LABEL_4:
  v33 = MEMORY[0x277CD7488];
  v34 = atomic_load_explicit((*(v11 + *MEMORY[0x277CD7488]) + 8), memory_order_acquire);
  v35 = (*(v11 + *v33) + 8);
  v36 = atomic_load_explicit(v35, memory_order_acquire);
  if (v34)
  {
    if (!v36)
    {
      MPSAutoBuffer::AllocateBuffer(v35, 0);
      v36 = atomic_load_explicit(v35, memory_order_acquire);
    }

    v285 = v36;
  }

  else
  {
    if (!v36)
    {
      MPSAutoBuffer::AllocateBuffer(v35, 0);
      v36 = atomic_load_explicit(v35, memory_order_acquire);
    }

    v39 = v36;
    ComputeState = MPSLibrary::GetComputeState();
    LOWORD(v295) = v12;
    v48 = 2 * objc_msgSend_threadExecutionWidth(ComputeState, v41, v42, v43, v44, v45, v46, v47);
    v56 = objc_msgSend_maxTotalThreadsPerThreadgroup(ComputeState, v49, v50, v51, v52, v53, v54, v55);
    if (v48 >= v56)
    {
      v48 = v56;
    }

    objc_msgSend_setComputePipelineState_(a2, v57, ComputeState, v58, v59, v60, v61, v62);
    objc_msgSend_setBuffer_offset_atIndex_(a2, v63, v39, 0, 0, v64, v65, v66);
    objc_msgSend_setBuffer_offset_atIndex_(a2, v67, explicit, 0, 1, v68, v69, v70);
    objc_msgSend_setBytes_length_atIndex_(a2, v71, &v295, 2, 2, v72, v73, v74);
    v311 = (v48 + v12 - 1) / v48;
    v312 = vdupq_n_s64(1uLL);
    v306 = v48;
    *v307 = v312;
    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v75, &v311, &v306, v76, v77, v78, v79);
    MPSLibrary::ReleaseComputeState();
    v285 = explicit;
    v11 = v288;
  }

  v80 = atomic_load_explicit((*(v11 + *v33) + 80), memory_order_acquire);
  v81 = *(v11 + *v33);
  v82 = (v81 + 80);
  v83 = atomic_load_explicit((v81 + 80), memory_order_acquire);
  if (v80)
  {
    if (!v83)
    {
      MPSAutoBuffer::AllocateBuffer((v81 + 80), 0);
      v83 = atomic_load_explicit(v82, memory_order_acquire);
    }

    v284 = v83;
    v37 = *(a1 + 328);
    v38 = atomic_load_explicit(v37, memory_order_acquire);
    if (!v38)
    {
LABEL_21:
      MPSAutoBuffer::AllocateBuffer(v37, 0);
      v38 = atomic_load_explicit(v37, memory_order_acquire);
    }
  }

  else
  {
    if (!v83)
    {
      MPSAutoBuffer::AllocateBuffer((v81 + 80), 0);
      v83 = atomic_load_explicit(v82, memory_order_acquire);
    }

    v243 = MPSLibrary::GetComputeState();
    LOWORD(v295) = v12;
    v251 = 2 * objc_msgSend_threadExecutionWidth(v243, v244, v245, v246, v247, v248, v249, v250);
    v259 = objc_msgSend_maxTotalThreadsPerThreadgroup(v243, v252, v253, v254, v255, v256, v257, v258);
    if (v251 >= v259)
    {
      v251 = v259;
    }

    objc_msgSend_setComputePipelineState_(a2, v260, v243, v261, v262, v263, v264, v265);
    objc_msgSend_setBuffer_offset_atIndex_(a2, v266, v83, 0, 0, v267, v268, v269);
    objc_msgSend_setBuffer_offset_atIndex_(a2, v270, v32, 0, 1, v271, v272, v273);
    objc_msgSend_setBytes_length_atIndex_(a2, v274, &v295, 2, 2, v275, v276, v277);
    v311 = (v251 + v12 - 1) / v251;
    v312 = vdupq_n_s64(1uLL);
    v306 = v251;
    *v307 = v312;
    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v278, &v311, &v306, v279, v280, v281, v282);
    MPSLibrary::ReleaseComputeState();
    v284 = v32;
    v37 = *(a1 + 328);
    v38 = atomic_load_explicit(v37, memory_order_acquire);
    if (!v38)
    {
      goto LABEL_21;
    }
  }

LABEL_22:
  v84 = v12 + 3;
  v85 = *(a1 + 336);
  v86 = atomic_load_explicit(v85, memory_order_acquire);
  if (!v86)
  {
    MPSAutoBuffer::AllocateBuffer(v85, 0);
    v86 = atomic_load_explicit(v85, memory_order_acquire);
  }

  v87 = *(a4 + 144);
  v88 = *(a4 + 152);
  v317[0] = v12;
  v317[1] = v28;
  v89 = (v84 >> 2);
  v289 = v84 >> 2;
  if (v89 >= 2)
  {
    v91 = __clz(0x80000000 / v89);
    v92 = (0x80000000 / v89) >> (16 - v91);
    v93 = v91 + 15;
    v94 = -65536 * (v84 >> 2) * v92 / v89;
    if (v94 <= v92)
    {
      v95 = v92;
    }

    else
    {
      v95 = v92 + 1;
    }

    if (v94 <= v92)
    {
      LOWORD(v92) = 0;
    }

    v90 = (v93 << 48) | ((v94 - v92) << 32) | (v95 << 16) | (v84 >> 2);
  }

  else
  {
    v90 = 65537;
  }

  v96 = v87 + 7;
  v97 = v88 + 7;
  v318 = v90;
  v98 = *(a1 + 376);
  v99 = (v98 != 0) << 6;
  if (objc_msgSend_neuronType(v98, v20, v21, v22, v23, v24, v25, v26) == 10)
  {
    if (!*(a1 + 384) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v99 |= 0x80uLL;
  }

  v283 = v96 >> 3;
  *&v107 = -1;
  *(&v107 + 1) = -1;
  v314 = v107;
  v315 = v107;
  v313 = v107;
  v108 = *(a4 + 80) & 0x3F | ((*(a4 + 16) & 0x3Fu) << 6);
  v316 = -1;
  v312.i64[0] = v108;
  v311 = objc_msgSend_maxBatchSize(a1, v100, v101, v102, v103, v104, v105, v106);
  v312.i64[1] = v99;
  MPSLibrary::CreateUberShaderKey();
  PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
  v110.i32[0] = *(a4 + 192) >> 2;
  v110.i32[1] = *(a4 + 136);
  v111 = vuzp1_s16(vmovn_s64(*(a4 + 120)), v110);
  v112 = vmovn_s64(*(a4 + 144));
  v112.i16[1] = v112.i16[2];
  v112.i16[2] = v289;
  v112.i16[3] = *(a4 + 160);
  v310 = 0;
  v306 = v111;
  *v307 = v112;
  *&v307[8] = v12;
  *&v307[10] = 65537;
  v308 = 1;
  v309 = 0;
  v296 = 0;
  v295 = 0;
  v113 = vmovn_s64(*(a4 + 168));
  v298 = v113.i16[2];
  v297 = v113.i16[0];
  v121 = objc_msgSend_strideInPixelsX(a1, v114, v115, v116, v117, v118, v119, v120, 0);
  v129 = objc_msgSend_strideInPixelsY(a1, v122, v123, v124, v125, v126, v127, v128);
  v299 = v121;
  v300 = v129;
  v301 = 0;
  v302 = *(a4 + 200);
  v303 = v12;
  v304 = *(a4 + 184);
  v305 = 1;
  v137 = objc_msgSend_maxBatchSize(a1, v130, v131, v132, v133, v134, v135, v136);
  objc_msgSend_setComputePipelineState_(a2, v138, PipelineStateForMPSKey, v139, v140, v141, v142, v143);
  objc_msgSend_setTexture_atIndex_(a2, v144, *(a4 + 40), v137, v145, v146, v147, v148);
  objc_msgSend_setBytes_length_atIndex_(a2, v149, &v295, 32, 1, v150, v151, v152);
  objc_msgSend_setTexture_atIndex_(a2, v153, *(a4 + 104), 0, v154, v155, v156, v157);
  objc_msgSend_setBytes_length_atIndex_(a2, v158, &v306, 40, 0, v159, v160, v161);
  objc_msgSend_setBuffer_offset_atIndex_(a2, v162, v285, 0, 24, v163, v164, v165);
  objc_msgSend_setBuffer_offset_atIndex_(a2, v166, v284, 0, 25, v167, v168, v169);
  objc_msgSend_setBuffer_offset_atIndex_(a2, v170, v38, 0, 26, v171, v172, v173);
  objc_msgSend_setBuffer_offset_atIndex_(a2, v174, v86, 0, 27, v175, v176, v177);
  objc_msgSend_setBytes_length_atIndex_(a2, v178, v317, 16, 28, v179, v180, v181);
  v189 = *(a1 + 376);
  if (v189)
  {
    v293 = 0;
    v294 = 0;
    objc_msgSend_a(v189, v182, v183, v184, v185, v186, v187, v188);
    v287 = v190;
    objc_msgSend_b(*(a1 + 376), v191, v192, v193, v194, v195, v196, v197);
    v286 = v198;
    objc_msgSend_c(*(a1 + 376), v199, v200, v201, v202, v203, v204, v205);
    v206 = v287;
    DWORD1(v206) = v286;
    DWORD2(v206) = v207;
    v292 = v206;
    LODWORD(v293) = objc_msgSend_neuronType(*(a1 + 376), v208, v209, v210, v211, v212, v213, v214);
    objc_msgSend_setBytes_length_atIndex_(a2, v215, &v292, 32, 29, v216, v217, v218);
    if (v293 == 10)
    {
      objc_msgSend_setBuffer_offset_atIndex_(a2, v219, *(a1 + 384), 0, 30, v220, v221, v222);
    }
  }

  Sampler = MPSDevice::GetSampler();
  objc_msgSend_setSamplerState_atIndex_(a2, v224, Sampler, 0, v225, v226, v227, v228);
  *&v292 = v283;
  *(&v292 + 1) = v97 >> 3;
  v293 = v289;
  v290 = vdupq_n_s64(8uLL);
  v291 = 1;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v229, &v292, &v290, v230, v231, v232, v233);
  MPSLibrary::ReleaseMPSKey();
  if (v288)
  {
    objc_msgSend_epsilon(a1, v234, v235, v236, v237, v238, v239, v240);
    *(v288 + 312) = v241;
  }

  return 0;
}

uint64_t sub_239BF8ACC(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v310 = *MEMORY[0x277D85DE8];
  v10 = *(*(a4 + 24) + 112);
  v11 = objc_msgSend_numberOfFeatureChannels(a1, a2, a3, a4, a5, a6, a7, a8);
  objc_msgSend_epsilon(a1, v12, v13, v14, v15, v16, v17, v18);
  v27 = v26;
  v28 = *(a1 + 344);
  explicit = atomic_load_explicit(v28, memory_order_acquire);
  if (explicit)
  {
    v30 = *(a1 + 352);
    v31 = atomic_load_explicit(v30, memory_order_acquire);
    if (v31)
    {
      goto LABEL_3;
    }
  }

  else
  {
    MPSAutoBuffer::AllocateBuffer(v28, 0);
    explicit = atomic_load_explicit(v28, memory_order_acquire);
    v30 = *(a1 + 352);
    v31 = atomic_load_explicit(v30, memory_order_acquire);
    if (v31)
    {
LABEL_3:
      v283 = v10;
      if (v10)
      {
        goto LABEL_4;
      }

LABEL_9:
      v37 = v31;
      v36 = explicit;
      v38 = *(a1 + 328);
      v39 = atomic_load_explicit(v38, memory_order_acquire);
      if (v39)
      {
        goto LABEL_19;
      }

      goto LABEL_78;
    }
  }

  MPSAutoBuffer::AllocateBuffer(v30, 0);
  v31 = atomic_load_explicit(v30, memory_order_acquire);
  v283 = v10;
  if (!v10)
  {
    goto LABEL_9;
  }

LABEL_4:
  v32 = MEMORY[0x277CD7488];
  v33 = atomic_load_explicit((*(v10 + *MEMORY[0x277CD7488]) + 8), memory_order_acquire);
  v34 = *(v10 + *v32);
  v35 = (v34 + 8);
  v36 = atomic_load_explicit((v34 + 8), memory_order_acquire);
  if (v33)
  {
    if (!v36)
    {
      MPSAutoBuffer::AllocateBuffer((v34 + 8), 0);
      v36 = atomic_load_explicit(v35, memory_order_acquire);
    }
  }

  else
  {
    if (!v36)
    {
      MPSAutoBuffer::AllocateBuffer((v34 + 8), 0);
      v36 = atomic_load_explicit(v35, memory_order_acquire);
    }

    ComputeState = MPSLibrary::GetComputeState();
    v285.i16[0] = v11;
    v48 = 2 * objc_msgSend_threadExecutionWidth(ComputeState, v41, v42, v43, v44, v45, v46, v47);
    v56 = objc_msgSend_maxTotalThreadsPerThreadgroup(ComputeState, v49, v50, v51, v52, v53, v54, v55);
    if (v48 >= v56)
    {
      v48 = v56;
    }

    objc_msgSend_setComputePipelineState_(a2, v57, ComputeState, v58, v59, v60, v61, v62);
    objc_msgSend_setBuffer_offset_atIndex_(a2, v63, v36, 0, 0, v64, v65, v66);
    objc_msgSend_setBuffer_offset_atIndex_(a2, v67, explicit, 0, 1, v68, v69, v70);
    objc_msgSend_setBytes_length_atIndex_(a2, v71, &v285, 2, 2, v72, v73, v74);
    *&v295[0] = (v48 + v11 - 1) / v48;
    *(v295 + 8) = vdupq_n_s64(1uLL);
    v287 = v48;
    v288 = *(v295 + 8);
    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v75, v295, &v287, v76, v77, v78, v79);
    MPSLibrary::ReleaseComputeState();
    v36 = explicit;
    v10 = v283;
  }

  v80 = atomic_load_explicit((*(v10 + *v32) + 80), memory_order_acquire);
  v81 = *(v10 + *v32);
  v82 = (v81 + 80);
  v37 = atomic_load_explicit((v81 + 80), memory_order_acquire);
  if (v80)
  {
    if (v37)
    {
      v38 = *(a1 + 328);
      v39 = atomic_load_explicit(v38, memory_order_acquire);
      if (v39)
      {
        goto LABEL_19;
      }

LABEL_78:
      MPSAutoBuffer::AllocateBuffer(v38, 0);
      v39 = atomic_load_explicit(v38, memory_order_acquire);
      v83 = v11 + 3;
      v84 = *(a1 + 336);
      v85 = atomic_load_explicit(v84, memory_order_acquire);
      if (v85)
      {
        goto LABEL_20;
      }

      goto LABEL_79;
    }

    MPSAutoBuffer::AllocateBuffer((v81 + 80), 0);
    v37 = atomic_load_explicit(v82, memory_order_acquire);
    v38 = *(a1 + 328);
    v39 = atomic_load_explicit(v38, memory_order_acquire);
    if (!v39)
    {
      goto LABEL_78;
    }
  }

  else
  {
    if (!v37)
    {
      MPSAutoBuffer::AllocateBuffer((v81 + 80), 0);
      v37 = atomic_load_explicit(v82, memory_order_acquire);
    }

    v235 = MPSLibrary::GetComputeState();
    v285.i16[0] = v11;
    v243 = 2 * objc_msgSend_threadExecutionWidth(v235, v236, v237, v238, v239, v240, v241, v242);
    v251 = objc_msgSend_maxTotalThreadsPerThreadgroup(v235, v244, v245, v246, v247, v248, v249, v250);
    if (v243 >= v251)
    {
      v243 = v251;
    }

    objc_msgSend_setComputePipelineState_(a2, v252, v235, v253, v254, v255, v256, v257);
    objc_msgSend_setBuffer_offset_atIndex_(a2, v258, v37, 0, 0, v259, v260, v261);
    objc_msgSend_setBuffer_offset_atIndex_(a2, v262, v31, 0, 1, v263, v264, v265);
    objc_msgSend_setBytes_length_atIndex_(a2, v266, &v285, 2, 2, v267, v268, v269);
    *&v295[0] = (v243 + v11 - 1) / v243;
    *(v295 + 8) = vdupq_n_s64(1uLL);
    v287 = v243;
    v288 = *(v295 + 8);
    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v270, v295, &v287, v271, v272, v273, v274);
    MPSLibrary::ReleaseComputeState();
    v37 = v31;
    v38 = *(a1 + 328);
    v39 = atomic_load_explicit(v38, memory_order_acquire);
    if (!v39)
    {
      goto LABEL_78;
    }
  }

LABEL_19:
  v83 = v11 + 3;
  v84 = *(a1 + 336);
  v85 = atomic_load_explicit(v84, memory_order_acquire);
  if (v85)
  {
    goto LABEL_20;
  }

LABEL_79:
  MPSAutoBuffer::AllocateBuffer(v84, 0);
  v85 = atomic_load_explicit(v84, memory_order_acquire);
LABEL_20:
  v277 = *(a4 + 160);
  v293[0] = v11;
  v293[1] = v27;
  v279 = v83 >> 2;
  if ((v83 & 0x3FFF8) != 0)
  {
    v86 = (v83 >> 2);
    v87 = __clz(0x80000000 / v86);
    v88 = (0x80000000 / v86) >> (16 - v87);
    v89 = v87 + 15;
    v90 = -65536 * (v83 >> 2) * v88 / v86;
    if (v90 <= v88)
    {
      v91 = v88;
    }

    else
    {
      v91 = v88 + 1;
    }

    if (v90 <= v88)
    {
      LOWORD(v88) = 0;
    }

    v92 = (v89 << 48) | ((v90 - v88) << 32) | (v91 << 16) | (v83 >> 2);
  }

  else
  {
    v92 = 65537;
  }

  v294 = v92;
  v278 = *(a4 + 8);
  v93 = *(a1 + 376);
  v94 = (v93 != 0) << 6;
  if (objc_msgSend_neuronType(v93, v19, v20, v21, v22, v23, v24, v25) == 10)
  {
    if (!*(a1 + 384) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v94 |= 0x80uLL;
  }

  v276 = vdupq_n_s64(7uLL);
  v292 = -1;
  *&v102 = -1;
  *(&v102 + 1) = -1;
  v291 = v102;
  v290 = v102;
  v289 = v102;
  *&v288 = *(a4 + 32) & 0x3F | ((*(a4 + 88) & 0x3Fu) << 6);
  v287 = objc_msgSend_maxBatchSize(a1, v95, v96, v97, v98, v99, v100, v101);
  *(&v288 + 1) = v94;
  MPSLibrary::CreateUberShaderKey();
  PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
  objc_msgSend_setComputePipelineState_(a2, v104, PipelineStateForMPSKey, v105, v106, v107, v108, v109, 0, 0, 0, 0, 0);
  objc_msgSend_setBuffer_offset_atIndex_(a2, v110, v36, 0, 24, v111, v112, v113);
  objc_msgSend_setBuffer_offset_atIndex_(a2, v114, v37, 0, 25, v115, v116, v117);
  objc_msgSend_setBuffer_offset_atIndex_(a2, v118, v39, 0, 26, v119, v120, v121);
  objc_msgSend_setBuffer_offset_atIndex_(a2, v122, v85, 0, 27, v123, v124, v125);
  objc_msgSend_setBytes_length_atIndex_(a2, v126, v293, 16, 28, v127, v128, v129);
  v137 = *(a1 + 376);
  if (v137)
  {
    v295[1] = 0uLL;
    objc_msgSend_a(v137, v130, v131, v132, v133, v134, v135, v136);
    v280 = v138;
    objc_msgSend_b(*(a1 + 376), v139, v140, v141, v142, v143, v144, v145);
    v275 = v146;
    objc_msgSend_c(*(a1 + 376), v147, v148, v149, v150, v151, v152, v153);
    v154 = v280;
    DWORD1(v154) = v275;
    DWORD2(v154) = v155;
    v295[0] = v154;
    LODWORD(v295[1]) = objc_msgSend_neuronType(*(a1 + 376), v156, v157, v158, v159, v160, v161, v162);
    objc_msgSend_setBytes_length_atIndex_(a2, v163, v295, 32, 29, v164, v165, v166);
    if (LODWORD(v295[1]) == 10)
    {
      objc_msgSend_setBuffer_offset_atIndex_(a2, v167, *(a1 + 384), 0, 30, v168, v169, v170);
    }
  }

  v281 = vaddq_s64(v277, v276);
  Sampler = MPSDevice::GetSampler();
  objc_msgSend_setSamplerState_atIndex_(a2, v172, Sampler, 0, v173, v174, v175, v176);
  v184 = objc_msgSend_maxBatchSize(a1, v177, v178, v179, v180, v181, v182, v183);
  v185 = *(a4 + 40);
  v193 = objc_msgSend_count(v185, v186, v187, v188, v189, v190, v191, v192);
  v308 = 0u;
  v309 = 0u;
  v306 = 0u;
  v307 = 0u;
  v304 = 0u;
  v305 = 0u;
  v302 = 0u;
  v303 = 0u;
  v300 = 0u;
  v301 = 0u;
  v298 = 0u;
  v299 = 0u;
  v296 = 0u;
  v297 = 0u;
  memset(v295, 0, sizeof(v295));
  if (v184)
  {
    v198 = v193;
    for (i = 0; i < v184; i += v201)
    {
      if (v198 <= i)
      {
        v200 = 0;
        if (v184 - i >= 0x20)
        {
          v201 = 32;
        }

        else
        {
          v201 = v184 - i;
        }

        v202 = v201;
        if (!v201)
        {
          goto LABEL_36;
        }
      }

      else
      {
        if (v198 - i >= 0x20)
        {
          v200 = 32;
          objc_msgSend_getObjects_range_(v185, v194, v295, i, 32, v195, v196, v197);
        }

        else
        {
          v200 = v198 - i;
          objc_msgSend_getObjects_range_(v185, v194, v295, i, v198 - i, v195, v196, v197);
        }

        if (v184 - i >= 0x20)
        {
          v201 = 32;
        }

        else
        {
          v201 = v184 - i;
        }

        v202 = v201 - v200;
        if (v201 == v200)
        {
          goto LABEL_36;
        }
      }

      bzero(v295 + 8 * v200, 8 * v202);
LABEL_36:
      objc_msgSend_setTextures_withRange_(a2, v194, v295, i, v201, v195, v196, v197);
    }
  }

  v282 = vshrq_n_u64(v281, 3uLL);
  objc_msgSend_setBytes_length_atIndex_(a2, v194, a4 + 48, 40, 0, v195, v196, v197);
  v203 = *(a4 + 96);
  v211 = objc_msgSend_count(v203, v204, v205, v206, v207, v208, v209, v210);
  v308 = 0u;
  v309 = 0u;
  v306 = 0u;
  v307 = 0u;
  v304 = 0u;
  v305 = 0u;
  v302 = 0u;
  v303 = 0u;
  v300 = 0u;
  v301 = 0u;
  v298 = 0u;
  v299 = 0u;
  v296 = 0u;
  v297 = 0u;
  memset(v295, 0, sizeof(v295));
  if (v184)
  {
    v216 = v211;
    for (j = 0; j < v184; j += v219)
    {
      if (v216 <= j)
      {
        v218 = 0;
        if (v184 - j >= 0x20)
        {
          v219 = 32;
        }

        else
        {
          v219 = v184 - j;
        }

        v220 = v219;
        if (!v219)
        {
          goto LABEL_53;
        }
      }

      else
      {
        if (v216 - j >= 0x20)
        {
          v218 = 32;
          objc_msgSend_getObjects_range_(v203, v212, v295, j, 32, v213, v214, v215);
        }

        else
        {
          v218 = v216 - j;
          objc_msgSend_getObjects_range_(v203, v212, v295, j, v216 - j, v213, v214, v215);
        }

        if (v184 - j >= 0x20)
        {
          v219 = 32;
        }

        else
        {
          v219 = v184 - j;
        }

        v220 = v219 - v218;
        if (v219 == v218)
        {
          goto LABEL_53;
        }
      }

      bzero(v295 + 8 * v218, 8 * v220);
LABEL_53:
      objc_msgSend_setTextures_withRange_(a2, v212, v295, j + v184, v219, v213, v214, v215);
    }
  }

  objc_msgSend_setBytes_length_atIndex_(a2, v212, a4 + 104, 32, 1, v213, v214, v215);
  v295[0] = v282;
  *&v295[1] = v278 * v279;
  v285 = vdupq_n_s64(8uLL);
  v286 = 1;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v221, v295, &v285, v222, v223, v224, v225);
  MPSLibrary::ReleaseMPSKey();
  if (v283)
  {
    objc_msgSend_epsilon(a1, v226, v227, v228, v229, v230, v231, v232);
    *(v283 + 312) = v233;
  }

  return 0;
}

void sub_239BFAB78(_Unwind_Exception *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_239BACD2C(va, a2, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

void sub_239BFAF1C(_Unwind_Exception *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_239BACD2C(va, a2, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

uint64_t sub_239BFC494(uint64_t a1, const char *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((*(a1 + *MEMORY[0x277CD7378]) & 1) == 0)
  {
    if (a4[6] != *(a1 + 344) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (a4[14] != *(a1 + 344) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (*(a1 + 328) > a4[3] && MTLReportFailureTypeEnabled())
    {
      v24 = *(a1 + 328);
      v25 = a4[3];
      MTLReportFailure();
    }

    if (a4[24] + *(a1 + 336) > a4[11] && MTLReportFailureTypeEnabled())
    {
      v25 = a4[11];
      v26 = a4[24];
      v24 = *(a1 + 336);
      MTLReportFailure();
    }

    if (objc_msgSend_weightsDataType(*(a1 + 376), a2, a3, a4, a5, a6, a7, a8, v24, v25, v26) == 268435488)
    {
      objc_msgSend_accumulatorPrecisionOption(*(a1 + 376), v12, v13, v14, v15, a6, a7, a8);
      if (objc_msgSend_accumulatorPrecisionOption(*(a1 + 376), v16, v17, v18, v19, v20, v21, v22) != 1)
      {
        if (MTLReportFailureTypeEnabled())
        {
          MTLReportFailure();
        }
      }
    }
  }

  return sub_239BFD56C(a1, a2, a3, a4, 0, a6, a7, a8);
}

uint64_t sub_239BFC6B8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((*(a1 + *MEMORY[0x277CD7378]) & 1) == 0)
  {
    if (*(a1 + 328) > *(a4 + 130) && MTLReportFailureTypeEnabled())
    {
      v24 = *(a1 + 328);
      v25 = *(a4 + 130);
      MTLReportFailure();
    }

    if (*(a4 + 208) + *(a1 + 336) > *(a4 + 64) && MTLReportFailureTypeEnabled())
    {
      v25 = *(a4 + 64);
      v26 = *(a4 + 208);
      v24 = *(a1 + 336);
      MTLReportFailure();
    }

    if (objc_msgSend_weightsDataType(*(a1 + 376), a2, a3, a4, a5, a6, a7, a8, v24, v25, v26) == 268435488)
    {
      objc_msgSend_accumulatorPrecisionOption(*(a1 + 376), v12, v13, v14, v15, a6, a7, a8);
      if (objc_msgSend_accumulatorPrecisionOption(*(a1 + 376), v16, v17, v18, v19, v20, v21, v22) != 1)
      {
        if (MTLReportFailureTypeEnabled())
        {
          MTLReportFailure();
        }
      }
    }
  }

  return sub_239BFD56C(a1, a2, a3, a4, 1, a6, a7, a8);
}

id sub_239BFCF40(void *a1, const char *a2, uint64_t a3, Class *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = 0;
  v11 = objc_msgSend_decodeBytesForKey_returnedLength_(a1, a2, a2, &v36, a5, a6, a7, a8);
  if (v36)
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
    v19 = objc_msgSend_initWithBytes_length_encoding_(v14, v15, v13, v36 - 1, 1, v16, v17, v18);
    v20 = v19;
    if (v19)
    {
      v21 = NSClassFromString(v19);
      if (v21)
      {
        v27 = v21;
        if (!a4)
        {
          return objc_msgSend_decodeObjectOfClass_forKey_(a1, v22, v27, a3, v23, v24, v25, v26);
        }

        v28 = NSStringFromClass(*a4);
        if (objc_msgSend_isEqual_(v28, v29, v19, v30, v31, v32, v33, v34))
        {
          return objc_msgSend_decodeObjectOfClass_forKey_(a1, v22, v27, a3, v23, v24, v25, v26);
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

uint64_t sub_239BFD56C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a5;
  v13 = MEMORY[0x277CD7370];
  v14 = *(*(a1 + *MEMORY[0x277CD7370]) + 32);
  v15 = *(a1 + 208);
  v99[0] = *(a1 + 200);
  v99[1] = v15;
  v16 = *(a1 + 224);
  v99[2] = *(a1 + 216);
  v99[3] = v16;
  v17 = *(a1 + 240);
  v99[8] = *(a1 + 232);
  v99[9] = v17;
  v18 = *(a1 + 336);
  v99[4] = *(a1 + 328);
  v99[5] = v18;
  v19 = objc_msgSend_channelMultiplier(*(a1 + 376), a2, a3, a4, a5, a6, a7, a8);
  v20 = *(a1 + 368);
  v109 = 0;
  v21 = *(a1 + *v13);
  v99[6] = v20;
  v107 = v21;
  v108 = *(a1 + *MEMORY[0x277CD7378]);
  v22 = *(a1 + 352);
  v23 = *(a1 + 360);
  v110 = v19;
  v113 = v22;
  v114 = v23;
  v102 = objc_msgSend_weights(*(a1 + 376), v24, v25, v26, v27, v28, v29, v30);
  v103 = objc_msgSend_biases(*(a1 + 376), v31, v32, v33, v34, v35, v36, v37);
  v104 = objc_msgSend_neuronABuffer(*(a1 + 376), v38, v39, v40, v41, v42, v43, v44);
  v105 = objc_msgSend_quantizationType(*(a1 + 376), v45, v46, v47, v48, v49, v50, v51);
  v106 = objc_msgSend_quantizationBuffer(*(a1 + 376), v52, v53, v54, v55, v56, v57, v58);
  v99[7] = 1;
  v111 = objc_msgSend_accumulatorPrecisionOption(*(a1 + 376), v59, v60, v61, v62, v63, v64, v65);
  v118 = objc_msgSend_weightsDataType(*(a1 + 376), v66, v67, v68, v69, v70, v71, v72);
  v80 = objc_msgSend_fusedNeuronDescriptor(*(a1 + 376), v73, v74, v75, v76, v77, v78, v79);
  if (v80)
  {
    objc_msgSend_neuronInfo(v80, v81, v82, v83, v84, v85, v86, v87);
  }

  else
  {
    v97 = 0uLL;
    v98 = 0;
  }

  v100 = v97;
  v101 = v98;
  v112 = 1;
  v115 = objc_msgSend_maxBatchSize(a1, v81, v82, v83, v84, v85, v86, v87, v97, v98);
  v116 = 1;
  v117 = objc_msgSend_weightsLayout(*(a1 + 376), v88, v89, v90, v91, v92, v93, v94);
  v95 = *v14;
  if (v8)
  {
    return (*(v95 + 24))(v14, v99, a2, a3, a4);
  }

  else
  {
    return (*(v95 + 16))(v14, v99, a2, a3, a4);
  }
}

uint64_t sub_239BFF020(uint64_t a1, uint64_t a2)
{
  v4 = [MPSCNNAdd alloc];
  result = objc_msgSend_initWithDevice_(v4, v5, a2, v6, v7, v8, v9, v10);
  *(a1 + 104) = result;
  return result;
}

uint64_t sub_239BFF0F0(uint64_t a1, uint64_t a2)
{
  v4 = [MPSCNNSubtract alloc];
  result = objc_msgSend_initWithDevice_(v4, v5, a2, v6, v7, v8, v9, v10);
  *(a1 + 104) = result;
  return result;
}

uint64_t sub_239BFF1C0(uint64_t a1, uint64_t a2)
{
  v4 = [MPSCNNMultiply alloc];
  result = objc_msgSend_initWithDevice_(v4, v5, a2, v6, v7, v8, v9, v10);
  *(a1 + 104) = result;
  return result;
}

uint64_t sub_239BFF28C(uint64_t a1, uint64_t a2)
{
  v4 = [MPSCNNDivide alloc];
  result = objc_msgSend_initWithDevice_(v4, v5, a2, v6, v7, v8, v9, v10);
  *(a1 + 104) = result;
  return result;
}

uint64_t sub_239BFF378(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 112);
  v5 = [MPSNNCompare alloc];
  v12 = objc_msgSend_initWithDevice_(v5, v6, a2, v7, v8, v9, v10, v11);
  *(a1 + 104) = v12;
  v20 = objc_msgSend_comparisonType(v4, v13, v14, v15, v16, v17, v18, v19);

  return MEMORY[0x2821F9670](v12, sel_setComparisonType_, v20, v21, v22, v23, v24, v25);
}

uint64_t sub_239BFF8D0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 112);
  v5 = [MPSCNNAddGradient alloc];
  isSecondarySourceFilter = objc_msgSend_initWithDevice_isSecondarySourceFilter_(v5, v6, a2, *(v4 + 104), v7, v8, v9, v10);
  LODWORD(v12) = *(v4 + 56);
  objc_msgSend_setPrimaryScale_(isSecondarySourceFilter, v13, v14, v15, v16, v17, v18, v19, v12);
  LODWORD(v20) = *(v4 + 60);
  objc_msgSend_setSecondaryScale_(isSecondarySourceFilter, v21, v22, v23, v24, v25, v26, v27, v20);
  LODWORD(v28) = *(v4 + 64);
  objc_msgSend_setBias_(isSecondarySourceFilter, v29, v30, v31, v32, v33, v34, v35, v28);
  objc_msgSend_setSecondaryStrideInPixelsX_(isSecondarySourceFilter, v36, *(v4 + 72), v37, v38, v39, v40, v41);
  objc_msgSend_setSecondaryStrideInPixelsY_(isSecondarySourceFilter, v42, *(v4 + 80), v43, v44, v45, v46, v47);
  objc_msgSend_setSecondaryStrideInFeatureChannels_(isSecondarySourceFilter, v48, *(v4 + 88), v49, v50, v51, v52, v53);
  LODWORD(v54) = *(v4 + 96);
  objc_msgSend_setMinimumValue_(isSecondarySourceFilter, v55, v56, v57, v58, v59, v60, v61, v54);
  LODWORD(v62) = *(v4 + 100);
  result = objc_msgSend_setMaximumValue_(isSecondarySourceFilter, v63, v64, v65, v66, v67, v68, v69, v62);
  *(a1 + 104) = isSecondarySourceFilter;
  return result;
}

uint64_t sub_239BFFA30(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 112);
  v5 = [MPSCNNSubtractGradient alloc];
  isSecondarySourceFilter = objc_msgSend_initWithDevice_isSecondarySourceFilter_(v5, v6, a2, *(v4 + 104), v7, v8, v9, v10);
  LODWORD(v12) = *(v4 + 56);
  objc_msgSend_setPrimaryScale_(isSecondarySourceFilter, v13, v14, v15, v16, v17, v18, v19, v12);
  LODWORD(v20) = *(v4 + 60);
  objc_msgSend_setSecondaryScale_(isSecondarySourceFilter, v21, v22, v23, v24, v25, v26, v27, v20);
  LODWORD(v28) = *(v4 + 64);
  objc_msgSend_setBias_(isSecondarySourceFilter, v29, v30, v31, v32, v33, v34, v35, v28);
  objc_msgSend_setSecondaryStrideInPixelsX_(isSecondarySourceFilter, v36, *(v4 + 72), v37, v38, v39, v40, v41);
  objc_msgSend_setSecondaryStrideInPixelsY_(isSecondarySourceFilter, v42, *(v4 + 80), v43, v44, v45, v46, v47);
  objc_msgSend_setSecondaryStrideInFeatureChannels_(isSecondarySourceFilter, v48, *(v4 + 88), v49, v50, v51, v52, v53);
  LODWORD(v54) = *(v4 + 96);
  objc_msgSend_setMinimumValue_(isSecondarySourceFilter, v55, v56, v57, v58, v59, v60, v61, v54);
  LODWORD(v62) = *(v4 + 100);
  result = objc_msgSend_setMaximumValue_(isSecondarySourceFilter, v63, v64, v65, v66, v67, v68, v69, v62);
  *(a1 + 104) = isSecondarySourceFilter;
  return result;
}

uint64_t sub_239BFFB90(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 112);
  v5 = [MPSCNNMultiplyGradient alloc];
  isSecondarySourceFilter = objc_msgSend_initWithDevice_isSecondarySourceFilter_(v5, v6, a2, *(v4 + 104), v7, v8, v9, v10);
  LODWORD(v12) = *(v4 + 56);
  objc_msgSend_setPrimaryScale_(isSecondarySourceFilter, v13, v14, v15, v16, v17, v18, v19, v12);
  LODWORD(v20) = *(v4 + 60);
  objc_msgSend_setSecondaryScale_(isSecondarySourceFilter, v21, v22, v23, v24, v25, v26, v27, v20);
  LODWORD(v28) = *(v4 + 64);
  objc_msgSend_setBias_(isSecondarySourceFilter, v29, v30, v31, v32, v33, v34, v35, v28);
  objc_msgSend_setSecondaryStrideInPixelsX_(isSecondarySourceFilter, v36, *(v4 + 72), v37, v38, v39, v40, v41);
  objc_msgSend_setSecondaryStrideInPixelsY_(isSecondarySourceFilter, v42, *(v4 + 80), v43, v44, v45, v46, v47);
  objc_msgSend_setSecondaryStrideInFeatureChannels_(isSecondarySourceFilter, v48, *(v4 + 88), v49, v50, v51, v52, v53);
  LODWORD(v54) = *(v4 + 96);
  objc_msgSend_setMinimumValue_(isSecondarySourceFilter, v55, v56, v57, v58, v59, v60, v61, v54);
  LODWORD(v62) = *(v4 + 100);
  result = objc_msgSend_setMaximumValue_(isSecondarySourceFilter, v63, v64, v65, v66, v67, v68, v69, v62);
  *(a1 + 104) = isSecondarySourceFilter;
  return result;
}

void sub_239BFFC6C(uint64_t a1)
{
  sub_239C13FBC(a1);

  JUMPOUT(0x23EE7D130);
}

uint64_t sub_239BFFCA4(void *a1, const char *a2, void *a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = a1[13];
  v15 = objc_msgSend_objectAtIndexedSubscript_(a3, a2, 0, a4, a5, a6, a7, a8);
  v28 = objc_msgSend_objectAtIndexedSubscript_(a3, v16, 1, v17, v18, v19, v20, v21);
  if (a5)
  {
    v29 = objc_msgSend_objectAtIndexedSubscript_(a5, v22, 0, v23, v24, v25, v26, v27);
    objc_msgSend_encodeToCommandBuffer_primaryImage_secondaryImage_destinationState_destinationImage_(v14, v30, a2, v15, v28, v29, a6, v31);
  }

  else
  {
    objc_msgSend_encodeToCommandBuffer_primaryImage_secondaryImage_destinationImage_(v14, v22, a2, v15, v28, a6, v26, v27);
  }

  v32 = *(*a1 + 184);

  return v32(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_239BFFDAC(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6)
{
  (*(*a1 + 192))(a1);
  v11 = a1[13];
  v18 = objc_msgSend_objectAtIndexedSubscript_(a3, v12, 0, v13, v14, v15, v16, v17);
  v31 = objc_msgSend_objectAtIndexedSubscript_(a3, v19, 1, v20, v21, v22, v23, v24);
  if (a5)
  {
    v32 = objc_msgSend_objectAtIndexedSubscript_(a5, v25, 0, v26, v27, v28, v29, v30);

    return MEMORY[0x2821F9670](v11, sel_encodeBatchToCommandBuffer_primaryImages_secondaryImages_destinationStates_destinationImages_, a2, v18, v31, v32, a6, v33);
  }

  else
  {

    return MEMORY[0x2821F9670](v11, sel_encodeBatchToCommandBuffer_primaryImages_secondaryImages_destinationImages_, a2, v18, v31, a6, v29, v30);
  }
}

NSString *sub_239BFFEAC(uint64_t a1)
{
  if (*(a1 + 104))
  {
    v1 = objc_opt_class();
  }

  else
  {
    v1 = objc_opt_class();
  }

  return NSStringFromClass(v1);
}

void sub_239BFFF0C(uint64_t a1)
{
  sub_239C13FBC(a1);

  JUMPOUT(0x23EE7D130);
}

void sub_239BFFF50(uint64_t a1)
{
  sub_239C13FBC(a1);

  JUMPOUT(0x23EE7D130);
}

void sub_239BFFF94(uint64_t a1)
{
  sub_239C13FBC(a1);

  JUMPOUT(0x23EE7D130);
}

void sub_239BFFFD8(uint64_t a1)
{
  sub_239C13FBC(a1);

  JUMPOUT(0x23EE7D130);
}

void sub_239C0001C(uint64_t a1)
{
  sub_239C13FBC(a1);

  JUMPOUT(0x23EE7D130);
}

uint64_t sub_239C00054(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
    if ((*(*(result + 104) + *MEMORY[0x277CD7378]) & 1) == 0)
    {
      result = MTLReportFailureTypeEnabled();
      if (result)
      {

        return MTLReportFailure();
      }
    }
  }

  return result;
}

uint64_t sub_239C000BC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
    if ((*(*(result + 104) + *MEMORY[0x277CD7378]) & 1) == 0)
    {
      result = MTLReportFailureTypeEnabled();
      if (result)
      {

        return MTLReportFailure();
      }
    }
  }

  return result;
}

void sub_239C00130(uint64_t a1)
{
  sub_239C13FBC(a1);

  JUMPOUT(0x23EE7D130);
}

void sub_239C00174(uint64_t a1)
{
  sub_239C13FBC(a1);

  JUMPOUT(0x23EE7D130);
}

void sub_239C001B8(uint64_t a1)
{
  sub_239C13FBC(a1);

  JUMPOUT(0x23EE7D130);
}

uint64_t sub_239C0034C(char *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v663 = *MEMORY[0x277D85DE8];
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
  v585 = 0u;
  v586 = 0u;
  v584 = 0u;
  memset(&v583[1], 0, 32);
  v583[0] = 0u;
  v578 = *a4;
  v579 = *(a4 + 56);
  v580 = *(a4 + 112);
  v581 = *(a4 + 136);
  v582 = *(a4 + 160);
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
  *&v583[0] = v67;
  *(&v583[0] + 1) = v70;
  LOWORD(v583[1]) = v69;
  WORD2(v583[1]) = 1;
  WORD5(v583[1]) = objc_msgSend_maxBatchSize(a1, v71, v72, v73, v74, v75, v76, v77);
  DWORD2(v583[2]) = *(a4 + 16);
  *&v584 = *(a4 + 40);
  WORD5(v584) = v11 - (v12 >> 1) * v27;
  WORD4(v584) = WORD5(v584);
  HIDWORD(v584) = 0;
  WORD1(v585) = v12;
  LOWORD(v585) = v12;
  WORD3(v585) = v11;
  WORD2(v585) = v11;
  WORD4(v585) = objc_msgSend_primaryStrideInPixelsX(a1, v78, v79, v80, v81, v82, v83, v84);
  WORD5(v585) = objc_msgSend_primaryStrideInPixelsY(a1, v85, v86, v87, v88, v89, v90, v91);
  HIWORD(v585) = v27;
  WORD6(v585) = v27;
  LOWORD(v586) = *(a4 + 312);
  WORD1(v586) = *(a4 + 24);
  DWORD1(v586) = *(a4 + 240);
  DWORD2(v586) = *(a4 + 72);
  v587 = *(a4 + 96);
  v589 = v35 - (v43 >> 1) * v58;
  v588 = v589;
  v590 = 0;
  v592 = v43;
  v591 = v43;
  v594 = v35;
  v593 = v35;
  v595 = objc_msgSend_secondaryStrideInPixelsX(a1, v92, v93, v94, v95, v96, v97, v98);
  v596 = objc_msgSend_secondaryStrideInPixelsY(a1, v99, v100, v101, v102, v103, v104, v105);
  v598 = v58;
  v597 = v58;
  v107 = *(a4 + 312);
  v106 = *(a4 + 320);
  v599 = v106;
  v600 = *(a4 + 80);
  v108 = *(a4 + 304);
  v601 = *(a4 + 296);
  v602 = 0;
  v109 = *(a4 + 192);
  v603 = *(a4 + 176);
  *v604 = v109;
  v110 = *(a4 + 224);
  *&v604[16] = *(a4 + 208);
  v605 = v110;
  v111 = *(a4 + 240);
  v607 = *(a4 + 280);
  v112 = *(a4 + 296);
  v606 = v111;
  v608 = v112;
  v609 = v108;
  v610 = v107;
  v113 = *&a1[*MEMORY[0x277CD7370]];
  v611 = v106;
  v114 = v580;
  v122 = objc_msgSend_maxBatchSize(a1, v115, v116, v117, v118, v119, v120, v121);
  v123 = vmovn_s64(vandq_s8(v605, vcgtzq_s64(v605)));
  v124 = vmovn_s64(v603);
  v125 = vmovn_s64(*&v604[8]);
  v568 = *&v604[8];
  v569 = *&v604[16];
  v126 = *(v580 + 296) + 3;
  v635[0] = *(v580 + 296);
  v635[1] = *&v604[24];
  v127 = v126 >> 2;
  v635[2] = 1;
  LOWORD(v636) = v107 >> 2;
  HIWORD(v636) = v106 >> 2;
  v637 = v108 >> 2;
  v638 = *v604;
  WORD1(v639) = v123.i16[2];
  v560 = v123;
  v561 = vmovn_s64(vandq_s8(v607, vcgtzq_s64(v607)));
  LOWORD(v639) = v123.i16[0];
  HIWORD(v639) = v561.i16[2];
  WORD2(v639) = v561.i16[0];
  v641 = v124.i16[2];
  v640 = v124.i16[0];
  v643 = v125.i16[2];
  v559 = v125;
  v642 = v125.i16[0];
  objc_msgSend_epsilon(*(v580 + 288), v128, v129, v130, v131, v132, v133, v134);
  v135 = 1.0 / (*&v604[16] * *&v604[8]);
  v644 = v136;
  v645 = v135;
  if ((v126 & 0x3FFF8) != 0)
  {
    v137 = (v126 >> 2);
    v138 = __clz(0x80000000 / v137);
    v139 = (0x80000000 / v137) >> (16 - v138);
    v140 = v138 + 15;
    v141 = -65536 * v127 * v139 / v137;
    if (v141 <= v139)
    {
      v142 = v139;
    }

    else
    {
      v142 = v139 + 1;
    }

    if (v141 <= v139)
    {
      LOWORD(v139) = 0;
    }

    v143 = (v140 << 48) | ((v141 - v139) << 32) | (v142 << 16) | (v126 >> 2);
  }

  else
  {
    v143 = 65537;
  }

  v646 = v143;
  v144 = *(v113 + 32);
  v633 = 0uLL;
  v634 = 0;
  v574 = v144;
  (*(*v144 + 16))(&v633);
  v145 = MEMORY[0x277CD7488];
  v562 = v587;
  v563 = v584;
  v146 = (*(v580 + *MEMORY[0x277CD7488]) + 8);
  explicit = atomic_load_explicit(v146, memory_order_acquire);
  if (explicit)
  {
    v147 = (*(v580 + *v145) + 152);
    v565 = atomic_load_explicit(v147, memory_order_acquire);
    if (v565)
    {
      goto LABEL_11;
    }
  }

  else
  {
    MPSAutoBuffer::AllocateBuffer(v146, 0);
    explicit = atomic_load_explicit(v146, memory_order_acquire);
    v147 = (*(v580 + *v145) + 152);
    v565 = atomic_load_explicit(v147, memory_order_acquire);
    if (v565)
    {
LABEL_11:
      v148 = (*(v580 + *v145) + 80);
      v564 = atomic_load_explicit(v148, memory_order_acquire);
      if (!v564)
      {
        goto LABEL_15;
      }

      goto LABEL_16;
    }
  }

  MPSAutoBuffer::AllocateBuffer(v147, 0);
  v149 = atomic_load_explicit(v147, memory_order_acquire);
  v148 = (*(v580 + *v145) + 80);
  v564 = atomic_load_explicit(v148, memory_order_acquire);
  v565 = v149;
  if (!v564)
  {
LABEL_15:
    MPSAutoBuffer::AllocateBuffer(v148, 0);
    v564 = atomic_load_explicit(v148, memory_order_acquire);
  }

LABEL_16:
  MEMORY[0x23EE7D040](v632, a3, 0);
  v150 = ((DWORD2(v583[2]) - 1) & 0xFFFFFFFD) == 0;
  v566 = v127;
  if (objc_msgSend_gamma(v580, v151, v152, v153, v154, v155, v156, v157) || objc_msgSend_beta(v580, v158, v159, v160, v161, v162, v163, v164))
  {
    v150 |= 2u;
  }

  *&v165 = -1;
  *(&v165 + 1) = -1;
  v630 = v165;
  v629 = v165;
  v628 = v165;
  v631 = -1;
  v627 = v150;
  v625 = v122;
  v626 = v581 & 0x3F | ((BYTE8(v583[2]) & 0x3F) << 6) & 0xFFF | ((BYTE8(v586) & 0x3F) << 12);
  v623 = v165;
  v622 = v165;
  v621 = v165;
  v624 = -1;
  v620 = v150 | 4;
  v618 = v122;
  v619 = v626;
  MPSLibrary::CreateUberShaderKey();
  MPSLibrary::CreateUberShaderKey();
  MPSLibrary::CreateUberShaderKey();
  MPSLibrary::CreateUberShaderKey();
  PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
  v570 = MPSLibrary::GetPipelineStateForMPSKey();
  v567 = MPSLibrary::GetPipelineStateForMPSKey();
  v572 = MPSLibrary::GetPipelineStateForMPSKey();
  v173 = objc_msgSend_maxTotalThreadsPerThreadgroup(PipelineStateForMPSKey, v166, v167, v168, v169, v170, v171, v172, 0, 0, 0, 0, 0);
  v181 = objc_msgSend_maxTotalThreadsPerThreadgroup(v570, v174, v175, v176, v177, v178, v179, v180);
  v189 = objc_msgSend_maxTotalThreadsPerThreadgroup(v572, v182, v183, v184, v185, v186, v187, v188);
  v197 = objc_msgSend_maxTotalThreadsPerThreadgroup(v567, v190, v191, v192, v193, v194, v195, v196);
  if (v173 >= v181)
  {
    v205 = v181;
  }

  else
  {
    v205 = v173;
  }

  if (v205 >= v189)
  {
    v205 = v189;
  }

  if (v205 >= v197)
  {
    v205 = v197;
  }

  v206 = v633.u64[1];
  v207 = v633.i64[0];
  if (v633.i64[1] * v633.i64[0] > v205)
  {
    do
    {
      v206 >>= 1;
    }

    while (v206 * v633.i64[0] > v205);
    v633.i64[1] = v206;
  }

  if ((BYTE8(v583[2]) & 2) == 0)
  {
    objc_msgSend_setTexture_atIndex_(a2, v198, v584, v122, v201, v202, v203, v204);
    goto LABEL_49;
  }

  v212 = objc_msgSend_count(v584, v198, v199, v200, v201, v202, v203, v204);
  v662 = 0u;
  v661 = 0u;
  v660 = 0u;
  v659 = 0u;
  v658 = 0u;
  v657 = 0u;
  v656 = 0u;
  v655 = 0u;
  v654 = 0u;
  v653 = 0u;
  v652 = 0u;
  v651 = 0u;
  v650 = 0u;
  v649 = 0u;
  v648 = 0u;
  v647 = 0u;
  if (v122)
  {
    v213 = v212;
    for (i = 0; i < v122; i += v216)
    {
      if (v213 <= i)
      {
        v215 = 0;
        if (v122 - i >= 0x20)
        {
          v216 = 32;
        }

        else
        {
          v216 = v122 - i;
        }

        v217 = v216;
        if (!v216)
        {
          goto LABEL_42;
        }
      }

      else
      {
        if (v213 - i >= 0x20)
        {
          v215 = 32;
          objc_msgSend_getObjects_range_(v584, v208, &v647, i, 32, v209, v210, v211);
        }

        else
        {
          v215 = v213 - i;
          objc_msgSend_getObjects_range_(v584, v208, &v647, i, v213 - i, v209, v210, v211);
        }

        if (v122 - i >= 0x20)
        {
          v216 = 32;
        }

        else
        {
          v216 = v122 - i;
        }

        v217 = v216 - v215;
        if (v216 == v215)
        {
          goto LABEL_42;
        }
      }

      bzero(&v647 + 8 * v215, 8 * v217);
LABEL_42:
      objc_msgSend_setTextures_withRange_(a2, v208, &v647, i + v122, v216, v209, v210, v211);
    }
  }

LABEL_49:
  objc_msgSend_setBytes_length_atIndex_(a2, v208, &v584 + 8, 32, 1, v209, v210, v211);
  v225 = 2 * v122;
  v577 = 2 * v122;
  if ((BYTE8(v586) & 2) == 0)
  {
    objc_msgSend_setTexture_atIndex_(a2, v218, v562, 2 * v122, v221, v222, v223, v224);
    goto LABEL_70;
  }

  v230 = v587;
  v231 = objc_msgSend_count(v587, v218, v219, v220, v221, v222, v223, v224);
  v662 = 0u;
  v661 = 0u;
  v660 = 0u;
  v659 = 0u;
  v658 = 0u;
  v657 = 0u;
  v656 = 0u;
  v655 = 0u;
  v654 = 0u;
  v653 = 0u;
  v652 = 0u;
  v651 = 0u;
  v650 = 0u;
  v649 = 0u;
  v648 = 0u;
  v647 = 0u;
  if (v122)
  {
    v232 = v231;
    for (j = 0; j < v122; j += v235)
    {
      if (v232 <= j)
      {
        v234 = 0;
        if (v122 - j >= 0x20)
        {
          v235 = 32;
        }

        else
        {
          v235 = v122 - j;
        }

        v236 = v235;
        if (!v235)
        {
          goto LABEL_62;
        }
      }

      else
      {
        if (v232 - j >= 0x20)
        {
          v234 = 32;
          objc_msgSend_getObjects_range_(v230, v226, &v647, j, 32, v227, v228, v229);
        }

        else
        {
          v234 = v232 - j;
          objc_msgSend_getObjects_range_(v230, v226, &v647, j, v232 - j, v227, v228, v229);
        }

        if (v122 - j >= 0x20)
        {
          v235 = 32;
        }

        else
        {
          v235 = v122 - j;
        }

        v236 = v235 - v234;
        if (v235 == v234)
        {
          goto LABEL_62;
        }
      }

      bzero(&v647 + 8 * v234, 8 * v236);
LABEL_62:
      objc_msgSend_setTextures_withRange_(a2, v226, &v647, j + v577, v235, v227, v228, v229);
    }
  }

  v114 = v580;
  v225 = 2 * v122;
LABEL_70:
  objc_msgSend_setBytes_length_atIndex_(a2, v226, &v588, 32, 2, v227, v228, v229);
  v243 = 16 * v207 * v206;
  v244 = v569 > v633.i64[1] || v568 > v633.i64[0];
  v245 = PipelineStateForMPSKey;
  if (v244)
  {
    v245 = PipelineStateForMPSKey;
    if ((*(v574 + 32) & 1) == 0)
    {
      if ((v568 + v633.i64[0] - 1) / v633.i64[0] >= v633.i64[0])
      {
        v246 = v633.i64[0];
      }

      else
      {
        v246 = (v568 + v633.i64[0] - 1) / v633.i64[0];
      }

      if ((v569 + v633.i64[1] - 1) / v633.i64[1] >= v633.i64[1])
      {
        v247 = v633.u64[1];
      }

      else
      {
        v247 = (v569 + v633.i64[1] - 1) / v633.i64[1];
      }

      v248 = (*(v114 + 296) + 3) >> 2;
      v616.i64[0] = v246;
      v616.i64[1] = v247;
      v617 = v248;
      v615 = **(&v578 + 1);
      v249 = **(&v579 + 1);
      v614 = **(&v579 + 1);
      v250 = *(*(&v578 + 1) + 3) & 0xF;
      if (v250 == 2)
      {
        v251 = 105;
      }

      else if (v250 == 1)
      {
        v251 = 55;
      }

      else
      {
        v251 = 125;
      }

      v615 = v615 & 0xFFFFFFFFFFFFFC00 | v251;
      v252 = *(*(&v579 + 1) + 3) & 0xF;
      v253 = v249 & 0xFFFFFFFFFFFFFC00;
      if (v252 == 2)
      {
        v254 = 105;
      }

      else if (v252 == 1)
      {
        v254 = 55;
      }

      else
      {
        v254 = 125;
      }

      v614 = v253 | v254;
      v255 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v237, 1, v238, v239, v240, v241, v242);
      v575 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v256, 1, v257, v258, v259, v260, v261);
      TempTexture = MPSAutoCache::GetTempTexture();
      objc_msgSend_addObject_(v255, v263, TempTexture, v264, v265, v266, v267, v268);
      v269 = MPSAutoCache::GetTempTexture();
      objc_msgSend_addObject_(v575, v270, v269, v271, v272, v273, v274, v275);
      objc_msgSend_setComputePipelineState_(a2, v276, v570, v277, v278, v279, v280, v281);
      v558 = v247;
      if ((BYTE8(v583[2]) & 2) == 0)
      {
        v289 = objc_msgSend_objectAtIndexedSubscript_(v255, v282, 0, v284, v285, v286, v287, v288);
        objc_msgSend_setTexture_atIndex_(a2, v290, v289, 0, v291, v292, v293, v294);
LABEL_113:
        objc_msgSend_setBytes_length_atIndex_(a2, v295, v583, 40, 0, v296, v297, v298);
        if ((BYTE8(v583[2]) & 2) == 0)
        {
          v312 = objc_msgSend_objectAtIndexedSubscript_(v575, v305, 0, v307, v308, v309, v310, v311);
          objc_msgSend_setTexture_atIndex_(a2, v313, v312, 3 * v122, v314, v315, v316, v317);
LABEL_134:
          objc_msgSend_setBuffer_offset_atIndex_(a2, v318, explicit, 0, 30, v319, v320, v321);
          objc_msgSend_setBytes_length_atIndex_(a2, v328, v635, 48, 29, v329, v330, v331);
          objc_msgSend_setThreadgroupMemoryLength_atIndex_(a2, v332, v243, 0, v333, v334, v335, v336);
          objc_msgSend_setThreadgroupMemoryLength_atIndex_(a2, v337, v243, 1, v338, v339, v340, v341);
          Sampler = MPSDevice::GetSampler();
          objc_msgSend_setSamplerState_atIndex_(a2, v343, Sampler, 0, v344, v345, v346, v347);
          v348 = MPSDevice::GetSampler();
          objc_msgSend_setSamplerState_atIndex_(a2, v349, v348, 1, v350, v351, v352, v353);
          v647.i64[0] = v246;
          v647.i64[1] = v247;
          *&v648 = v566;
          v612 = v633;
          v613 = v634;
          objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v354, &v647, &v612, v355, v356, v357, v358);
          v636 = 0;
          v639 = 0;
          v366 = vmovn_s64(v616);
          v643 = v366.i16[2];
          v642 = v366.i16[0];
          if ((BYTE8(v583[2]) & 2) == 0)
          {
            v367 = objc_msgSend_objectAtIndexedSubscript_(v255, v359, 0, v361, v362, v363, v364, v365);
            objc_msgSend_setTexture_atIndex_(a2, v368, v367, v122, v369, v370, v371, v372);
LABEL_155:
            objc_msgSend_setBytes_length_atIndex_(a2, v373, &v584 + 8, 32, 1, v374, v375, v376);
            if ((BYTE8(v586) & 2) == 0)
            {
              v390 = objc_msgSend_objectAtIndexedSubscript_(v575, v383, 0, v385, v386, v387, v388, v389);
              objc_msgSend_setTexture_atIndex_(a2, v391, v390, v225, v392, v393, v394, v395);
LABEL_176:
              objc_msgSend_setBytes_length_atIndex_(a2, v396, &v588, 32, 2, v397, v398, v399);
              v245 = v567;
              goto LABEL_177;
            }

            v400 = objc_msgSend_count(v575, v383, v384, v385, v386, v387, v388, v389);
            v662 = 0u;
            v661 = 0u;
            v660 = 0u;
            v659 = 0u;
            v658 = 0u;
            v657 = 0u;
            v656 = 0u;
            v655 = 0u;
            v654 = 0u;
            v653 = 0u;
            v652 = 0u;
            v651 = 0u;
            v650 = 0u;
            v649 = 0u;
            v648 = 0u;
            v647 = 0u;
            if (!v122)
            {
LABEL_175:
              v225 = 2 * v122;
              v243 = 16 * v207 * v206;
              goto LABEL_176;
            }

            v401 = v400;
            v402 = 0;
            while (1)
            {
              if (v401 <= v402)
              {
                v403 = 0;
                if (v122 - v402 >= 0x20)
                {
                  v404 = 32;
                }

                else
                {
                  v404 = v122 - v402;
                }

                v405 = v404;
                if (!v404)
                {
                  goto LABEL_168;
                }
              }

              else
              {
                if (v401 - v402 >= 0x20)
                {
                  v403 = 32;
                  objc_msgSend_getObjects_range_(v575, v396, &v647, v402, 32, v397, v398, v399);
                }

                else
                {
                  v403 = v401 - v402;
                  objc_msgSend_getObjects_range_(v575, v396, &v647, v402, v401 - v402, v397, v398, v399);
                }

                if (v122 - v402 >= 0x20)
                {
                  v404 = 32;
                }

                else
                {
                  v404 = v122 - v402;
                }

                v405 = v404 - v403;
                if (v404 == v403)
                {
                  goto LABEL_168;
                }
              }

              bzero(&v647 + 8 * v403, 8 * v405);
LABEL_168:
              objc_msgSend_setTextures_withRange_(a2, v396, &v647, v402 + v577, v404, v397, v398, v399);
              v402 += v404;
              if (v402 >= v122)
              {
                goto LABEL_175;
              }
            }
          }

          v377 = objc_msgSend_count(v255, v359, v360, v361, v362, v363, v364, v365);
          v662 = 0u;
          v661 = 0u;
          v660 = 0u;
          v659 = 0u;
          v658 = 0u;
          v657 = 0u;
          v656 = 0u;
          v655 = 0u;
          v654 = 0u;
          v653 = 0u;
          v652 = 0u;
          v651 = 0u;
          v650 = 0u;
          v649 = 0u;
          v648 = 0u;
          v647 = 0u;
          if (!v122)
          {
LABEL_154:
            v225 = 2 * v122;
            v243 = 16 * v207 * v206;
            goto LABEL_155;
          }

          v378 = v377;
          v379 = 0;
          while (1)
          {
            if (v378 <= v379)
            {
              v380 = 0;
              if (v122 - v379 >= 0x20)
              {
                v381 = 32;
              }

              else
              {
                v381 = v122 - v379;
              }

              v382 = v381;
              if (!v381)
              {
                goto LABEL_147;
              }
            }

            else
            {
              if (v378 - v379 >= 0x20)
              {
                v380 = 32;
                objc_msgSend_getObjects_range_(v255, v373, &v647, v379, 32, v374, v375, v376);
              }

              else
              {
                v380 = v378 - v379;
                objc_msgSend_getObjects_range_(v255, v373, &v647, v379, v378 - v379, v374, v375, v376);
              }

              if (v122 - v379 >= 0x20)
              {
                v381 = 32;
              }

              else
              {
                v381 = v122 - v379;
              }

              v382 = v381 - v380;
              if (v381 == v380)
              {
                goto LABEL_147;
              }
            }

            bzero(&v647 + 8 * v380, 8 * v382);
LABEL_147:
            objc_msgSend_setTextures_withRange_(a2, v373, &v647, v379 + v122, v381, v374, v375, v376);
            v379 += v381;
            if (v379 >= v122)
            {
              goto LABEL_154;
            }
          }
        }

        v322 = objc_msgSend_count(v575, v305, v306, v307, v308, v309, v310, v311);
        v662 = 0u;
        v661 = 0u;
        v660 = 0u;
        v659 = 0u;
        v658 = 0u;
        v657 = 0u;
        v656 = 0u;
        v655 = 0u;
        v654 = 0u;
        v653 = 0u;
        v652 = 0u;
        v651 = 0u;
        v650 = 0u;
        v649 = 0u;
        v648 = 0u;
        v647 = 0u;
        if (!v122)
        {
LABEL_133:
          v225 = 2 * v122;
          v243 = 16 * v207 * v206;
          v247 = v558;
          goto LABEL_134;
        }

        v323 = v322;
        v324 = 0;
        while (1)
        {
          if (v323 <= v324)
          {
            v325 = 0;
            if (v122 - v324 >= 0x20)
            {
              v326 = 32;
            }

            else
            {
              v326 = v122 - v324;
            }

            v327 = v326;
            if (!v326)
            {
              goto LABEL_126;
            }
          }

          else
          {
            if (v323 - v324 >= 0x20)
            {
              v325 = 32;
              objc_msgSend_getObjects_range_(v575, v318, &v647, v324, 32, v319, v320, v321);
            }

            else
            {
              v325 = v323 - v324;
              objc_msgSend_getObjects_range_(v575, v318, &v647, v324, v323 - v324, v319, v320, v321);
            }

            if (v122 - v324 >= 0x20)
            {
              v326 = 32;
            }

            else
            {
              v326 = v122 - v324;
            }

            v327 = v326 - v325;
            if (v326 == v325)
            {
              goto LABEL_126;
            }
          }

          bzero(&v647 + 8 * v325, 8 * v327);
LABEL_126:
          objc_msgSend_setTextures_withRange_(a2, v318, &v647, v324 + 3 * v122, v326, v319, v320, v321);
          v324 += v326;
          if (v324 >= v122)
          {
            goto LABEL_133;
          }
        }
      }

      v299 = objc_msgSend_count(v255, v282, v283, v284, v285, v286, v287, v288);
      v662 = 0u;
      v661 = 0u;
      v660 = 0u;
      v659 = 0u;
      v658 = 0u;
      v657 = 0u;
      v656 = 0u;
      v655 = 0u;
      v654 = 0u;
      v653 = 0u;
      v652 = 0u;
      v651 = 0u;
      v650 = 0u;
      v649 = 0u;
      v648 = 0u;
      v647 = 0u;
      if (!v122)
      {
LABEL_112:
        v225 = 2 * v122;
        v243 = 16 * v207 * v206;
        v247 = v558;
        goto LABEL_113;
      }

      v300 = v299;
      v301 = 0;
      while (1)
      {
        if (v300 <= v301)
        {
          v302 = 0;
          if (v122 - v301 >= 0x20)
          {
            v303 = 32;
          }

          else
          {
            v303 = v122 - v301;
          }

          v304 = v303;
          if (!v303)
          {
            goto LABEL_105;
          }
        }

        else
        {
          if (v300 - v301 >= 0x20)
          {
            v302 = 32;
            objc_msgSend_getObjects_range_(v255, v295, &v647, v301, 32, v296, v297, v298);
          }

          else
          {
            v302 = v300 - v301;
            objc_msgSend_getObjects_range_(v255, v295, &v647, v301, v300 - v301, v296, v297, v298);
          }

          if (v122 - v301 >= 0x20)
          {
            v303 = 32;
          }

          else
          {
            v303 = v122 - v301;
          }

          v304 = v303 - v302;
          if (v303 == v302)
          {
            goto LABEL_105;
          }
        }

        bzero(&v647 + 8 * v302, 8 * v304);
LABEL_105:
        objc_msgSend_setTextures_withRange_(a2, v295, &v647, v301, v303, v296, v297, v298);
        v301 += v303;
        if (v301 >= v122)
        {
          goto LABEL_112;
        }
      }
    }
  }

LABEL_177:
  objc_msgSend_setComputePipelineState_(a2, v237, v245, v238, v239, v240, v241, v242);
  objc_msgSend_setBuffer_offset_atIndex_(a2, v406, explicit, 0, 30, v407, v408, v409);
  objc_msgSend_setBuffer_offset_atIndex_(a2, v410, v565, 0, 29, v411, v412, v413);
  objc_msgSend_setBuffer_offset_atIndex_(a2, v414, v564, 0, 28, v415, v416, v417);
  objc_msgSend_setBytes_length_atIndex_(a2, v418, v635, 48, 27, v419, v420, v421);
  objc_msgSend_setThreadgroupMemoryLength_atIndex_(a2, v422, v243, 0, v423, v424, v425, v426);
  objc_msgSend_setThreadgroupMemoryLength_atIndex_(a2, v427, v243, 1, v428, v429, v430, v431);
  v432 = MPSDevice::GetSampler();
  objc_msgSend_setSamplerState_atIndex_(a2, v433, v432, 0, v434, v435, v436, v437);
  v438 = MPSDevice::GetSampler();
  objc_msgSend_setSamplerState_atIndex_(a2, v439, v438, 1, v440, v441, v442, v443);
  v647 = vdupq_n_s64(1uLL);
  *&v648 = v566;
  v616 = v633;
  v617 = v634;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v444, &v647, &v616, v445, v446, v447, v448);
  v643 = v559.i16[2];
  v642 = v559.i16[0];
  LOWORD(v636) = v610 >> 2;
  WORD1(v639) = v560.i16[2];
  LOWORD(v639) = v560.i16[0];
  v449 = v633;
  HIWORD(v636) = v611 >> 2;
  HIWORD(v639) = v561.i16[2];
  WORD2(v639) = v561.i16[0];
  objc_msgSend_setComputePipelineState_(a2, v450, v572, v451, v452, v453, v454, v455);
  if ((BYTE8(v583[2]) & 2) == 0)
  {
    objc_msgSend_setTexture_atIndex_(a2, v456, v563, v122, v459, v460, v461, v462);
    goto LABEL_198;
  }

  v467 = v584;
  v468 = objc_msgSend_count(v584, v456, v457, v458, v459, v460, v461, v462);
  v662 = 0u;
  v661 = 0u;
  v660 = 0u;
  v659 = 0u;
  v658 = 0u;
  v657 = 0u;
  v656 = 0u;
  v655 = 0u;
  v654 = 0u;
  v653 = 0u;
  v652 = 0u;
  v651 = 0u;
  v650 = 0u;
  v649 = 0u;
  v648 = 0u;
  v647 = 0u;
  if (v122)
  {
    v469 = v468;
    for (k = 0; k < v122; k += v472)
    {
      if (v469 <= k)
      {
        v471 = 0;
        if (v122 - k >= 0x20)
        {
          v472 = 32;
        }

        else
        {
          v472 = v122 - k;
        }

        v473 = v472;
        if (!v472)
        {
          goto LABEL_190;
        }
      }

      else
      {
        if (v469 - k >= 0x20)
        {
          v471 = 32;
          objc_msgSend_getObjects_range_(v467, v463, &v647, k, 32, v464, v465, v466);
        }

        else
        {
          v471 = v469 - k;
          objc_msgSend_getObjects_range_(v467, v463, &v647, k, v469 - k, v464, v465, v466);
        }

        if (v122 - k >= 0x20)
        {
          v472 = 32;
        }

        else
        {
          v472 = v122 - k;
        }

        v473 = v472 - v471;
        if (v472 == v471)
        {
          goto LABEL_190;
        }
      }

      bzero(&v647 + 8 * v471, 8 * v473);
LABEL_190:
      objc_msgSend_setTextures_withRange_(a2, v463, &v647, k + v122, v472, v464, v465, v466);
    }
  }

  v225 = 2 * v122;
LABEL_198:
  objc_msgSend_setBytes_length_atIndex_(a2, v463, &v584 + 8, 32, 1, v464, v465, v466);
  if ((BYTE8(v586) & 2) == 0)
  {
    objc_msgSend_setTexture_atIndex_(a2, v474, v562, v225, v477, v478, v479, v480);
    goto LABEL_218;
  }

  v485 = v587;
  v486 = objc_msgSend_count(v587, v474, v475, v476, v477, v478, v479, v480);
  v662 = 0u;
  v661 = 0u;
  v660 = 0u;
  v659 = 0u;
  v658 = 0u;
  v657 = 0u;
  v656 = 0u;
  v655 = 0u;
  v654 = 0u;
  v653 = 0u;
  v652 = 0u;
  v651 = 0u;
  v650 = 0u;
  v649 = 0u;
  v648 = 0u;
  v647 = 0u;
  if (v122)
  {
    v487 = v486;
    for (m = 0; m < v122; m += v490)
    {
      if (v487 <= m)
      {
        v489 = 0;
        if (v122 - m >= 0x20)
        {
          v490 = 32;
        }

        else
        {
          v490 = v122 - m;
        }

        v491 = v490;
        if (!v490)
        {
          goto LABEL_211;
        }
      }

      else
      {
        if (v487 - m >= 0x20)
        {
          v489 = 32;
          objc_msgSend_getObjects_range_(v485, v481, &v647, m, 32, v482, v483, v484);
        }

        else
        {
          v489 = v487 - m;
          objc_msgSend_getObjects_range_(v485, v481, &v647, m, v487 - m, v482, v483, v484);
        }

        if (v122 - m >= 0x20)
        {
          v490 = 32;
        }

        else
        {
          v490 = v122 - m;
        }

        v491 = v490 - v489;
        if (v490 == v489)
        {
          goto LABEL_211;
        }
      }

      bzero(&v647 + 8 * v489, 8 * v491);
LABEL_211:
      objc_msgSend_setTextures_withRange_(a2, v481, &v647, m + v577, v490, v482, v483, v484);
    }
  }

LABEL_218:
  objc_msgSend_setBytes_length_atIndex_(a2, v481, &v588, 32, 2, v482, v483, v484);
  if ((v581 & 2) == 0)
  {
    objc_msgSend_setTexture_atIndex_(a2, v492, v582, 0, v495, v496, v497, v498);
    goto LABEL_238;
  }

  v503 = objc_msgSend_count(v582, v492, v493, v494, v495, v496, v497, v498);
  v662 = 0u;
  v661 = 0u;
  v660 = 0u;
  v659 = 0u;
  v658 = 0u;
  v657 = 0u;
  v656 = 0u;
  v655 = 0u;
  v654 = 0u;
  v653 = 0u;
  v652 = 0u;
  v651 = 0u;
  v650 = 0u;
  v649 = 0u;
  v648 = 0u;
  v647 = 0u;
  if (v122)
  {
    v504 = v503;
    for (n = 0; n < v122; n += v507)
    {
      if (v504 <= n)
      {
        v506 = 0;
        if (v122 - n >= 0x20)
        {
          v507 = 32;
        }

        else
        {
          v507 = v122 - n;
        }

        v508 = v507;
        if (!v507)
        {
          goto LABEL_231;
        }
      }

      else
      {
        if (v504 - n >= 0x20)
        {
          v506 = 32;
          objc_msgSend_getObjects_range_(v582, v499, &v647, n, 32, v500, v501, v502);
        }

        else
        {
          v506 = v504 - n;
          objc_msgSend_getObjects_range_(v582, v499, &v647, n, v504 - n, v500, v501, v502);
        }

        if (v122 - n >= 0x20)
        {
          v507 = 32;
        }

        else
        {
          v507 = v122 - n;
        }

        v508 = v507 - v506;
        if (v507 == v506)
        {
          goto LABEL_231;
        }
      }

      bzero(&v647 + 8 * v506, 8 * v508);
LABEL_231:
      objc_msgSend_setTextures_withRange_(a2, v499, &v647, n, v507, v500, v501, v502);
    }
  }

LABEL_238:
  objc_msgSend_setBytes_length_atIndex_(a2, v499, v583, 40, 0, v500, v501, v502);
  objc_msgSend_setBuffer_offset_atIndex_(a2, v509, explicit, 0, 30, v510, v511, v512);
  objc_msgSend_setBuffer_offset_atIndex_(a2, v513, v565, 0, 29, v514, v515, v516);
  objc_msgSend_setBuffer_offset_atIndex_(a2, v517, v564, 0, 28, v518, v519, v520);
  if (objc_msgSend_gamma(v580, v521, v522, v523, v524, v525, v526, v527))
  {
    v535 = objc_msgSend_gamma(v580, v528, v529, v530, v531, v532, v533, v534);
    objc_msgSend_setBuffer_offset_atIndex_(a2, v536, v535, 0, 27, v537, v538, v539);
  }

  objc_msgSend_setBytes_length_atIndex_(a2, v528, v635, 48, 26, v532, v533, v534);
  v540 = MPSDevice::GetSampler();
  objc_msgSend_setSamplerState_atIndex_(a2, v541, v540, 0, v542, v543, v544, v545);
  v546 = MPSDevice::GetSampler();
  objc_msgSend_setSamplerState_atIndex_(a2, v547, v546, 1, v548, v549, v550, v551);
  v647.i64[0] = (v568 + v449.i64[0] - 1) / v449.i64[0];
  v647.i64[1] = (v569 + v449.i64[1] - 1) / v449.i64[1];
  *&v648 = v566;
  v616 = v633;
  v617 = v634;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v552, &v647, &v616, v553, v554, v555, v556);
  MPSLibrary::ReleaseComputeState();
  MPSLibrary::ReleaseComputeState();
  MPSLibrary::ReleaseComputeState();
  MPSLibrary::ReleaseComputeState();
  MPSLibrary::ReleaseMPSKey();
  MPSLibrary::ReleaseMPSKey();
  MPSLibrary::ReleaseMPSKey();
  MPSLibrary::ReleaseMPSKey();
  MPSAutoCache::~MPSAutoCache(v632);
  return 0;
}

__n128 sub_239C01FA4@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  result = *(a1 + 8);
  *a2 = result;
  a2[1].n128_u64[0] = *(a1 + 24);
  return result;
}

uint64_t sub_239C021CC(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v491 = *MEMORY[0x277D85DE8];
  v450 = *(a1 + *MEMORY[0x277CD7350]);
  v455 = *(a1 + *MEMORY[0x277CD7370]);
  v10 = MEMORY[0x277CD7488];
  v11 = *(*(a4 + 24) + 168);
  v12 = (*(v11 + *MEMORY[0x277CD7488]) + 8);
  explicit = atomic_load_explicit(v12, memory_order_acquire);
  if (explicit)
  {
    v13 = (*(v11 + *v10) + 80);
    v447 = atomic_load_explicit(v13, memory_order_acquire);
    if (v447)
    {
      goto LABEL_3;
    }
  }

  else
  {
    MPSAutoBuffer::AllocateBuffer(v12, 0);
    v20 = atomic_load_explicit(v12, memory_order_acquire);
    v13 = (*(v11 + *v10) + 80);
    v447 = atomic_load_explicit(v13, memory_order_acquire);
    explicit = v20;
    if (v447)
    {
LABEL_3:
      v14 = (*(v11 + *v10) + 152);
      v443 = atomic_load_explicit(v14, memory_order_acquire);
      if (v443)
      {
        goto LABEL_4;
      }

LABEL_9:
      MPSAutoBuffer::AllocateBuffer(v14, 0);
      v443 = atomic_load_explicit(v14, memory_order_acquire);
      v15 = (*(v11 + *v10) + 224);
      v16 = atomic_load_explicit(v15, memory_order_acquire);
      if (v16)
      {
        goto LABEL_5;
      }

      goto LABEL_10;
    }
  }

  MPSAutoBuffer::AllocateBuffer(v13, 0);
  v447 = atomic_load_explicit(v13, memory_order_acquire);
  v14 = (*(v11 + *v10) + 152);
  v443 = atomic_load_explicit(v14, memory_order_acquire);
  if (!v443)
  {
    goto LABEL_9;
  }

LABEL_4:
  v15 = (*(v11 + *v10) + 224);
  v16 = atomic_load_explicit(v15, memory_order_acquire);
  if (v16)
  {
    goto LABEL_5;
  }

LABEL_10:
  MPSAutoBuffer::AllocateBuffer(v15, 0);
  v16 = atomic_load_explicit(v15, memory_order_acquire);
LABEL_5:
  v438 = v16;
  v445 = *(a4 + 208);
  v441 = *(a4 + 216);
  v17 = *(v11 + 304);
  v18 = *(a1 + 432);
  if (v18)
  {
    v19 = objc_msgSend_neuronType(*(a1 + 432), a2, a3, a4, a5, a6, a7, a8) == 10;
  }

  else
  {
    v19 = 0;
  }

  v439 = v18;
  v474 = 0;
  v473[0] = v17;
  v436 = v11;
  v473[1] = *(v11 + 312);
  LOBYTE(v474) = *(a4 + 16) != 0;
  v21 = *(v455 + 32);
  v471 = 0uLL;
  v472 = 0;
  (*(*v21 + 16))(&v471, v21, 0);
  v469 = 0uLL;
  v470 = 0;
  (*(*v21 + 16))(&v469, v21, 2);
  v29 = 16;
  if (v473[0] > 4u)
  {
    v29 = 24;
  }

  if (v18)
  {
    v29 |= 0x40uLL;
  }

  if (v19)
  {
    v30 = v29 | 0x80;
  }

  else
  {
    v30 = v29;
  }

  v31 = v450[1482];
  *&v32 = -1;
  *(&v32 + 1) = -1;
  v467 = v32;
  v468 = v32;
  v465 = v32;
  v466 = v32;
  v464 = v32;
  *(&v464 + 1) = *(a4 + 32) & 0x3F | ((*(a4 + 88) & 0x3F) << 6) & 0xFFF | ((*(a4 + 136) & 0x3Fu) << 12);
  *&v464 = objc_msgSend_maxBatchSize(a1, v22, v23, v24, v25, v26, v27, v28);
  *&v465 = v30 | (v31 << 8);
  MPSLibrary::CreateUberShaderKey();
  MPSLibrary::CreateUberShaderKey();
  MPSLibrary::CreateUberShaderKey();
  PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
  v444 = MPSLibrary::GetPipelineStateForMPSKey();
  v34 = MPSLibrary::GetPipelineStateForMPSKey();
  v42 = objc_msgSend_maxTotalThreadsPerThreadgroup(PipelineStateForMPSKey, v35, v36, v37, v38, v39, v40, v41, 0, 0, 0, 0, 0);
  v50 = *(&v471 + 1);
  if (v472 * v471 * *(&v471 + 1) > v42)
  {
    do
    {
      v50 >>= 1;
    }

    while (v50 * v472 * v471 > v42);
    *(&v471 + 1) = v50;
  }

  v51 = objc_msgSend_maxTotalThreadsPerThreadgroup(v34, v43, v44, v45, v46, v47, v48, v49);
  v59 = objc_msgSend_maxTotalThreadsPerThreadgroup(v444, v52, v53, v54, v55, v56, v57, v58);
  if (v51 >= v59)
  {
    v67 = v59;
  }

  else
  {
    v67 = v51;
  }

  v68 = *(&v469 + 1);
  v69 = v470;
  if (v470 * v469 * *(&v469 + 1) > v67)
  {
    do
    {
      v68 >>= 1;
    }

    while (v68 * v470 * v469 > v67);
    *(&v469 + 1) = v68;
  }

  v433 = v472;
  v435 = v471;
  v434 = objc_msgSend_threadExecutionWidth(PipelineStateForMPSKey, v60, v61, v62, v63, v64, v65, v66);
  v70 = v469;
  v78 = objc_msgSend_threadExecutionWidth(v34, v71, v72, v73, v74, v75, v76, v77);
  v92 = objc_msgSend_maxBatchSize(a1, v79, v80, v81, v82, v83, v84, v85);
  v93 = (v17 + 3) >> 2;
  v432 = v93 - 1;
  v94 = 16 * (v70 * *(&v70 + 1) + (v78 >> 1));
  v437 = (v69 + v93 - 1) / v69;
  if (v445 > 0x10 || v441 >= 0x11)
  {
    MEMORY[0x23EE7D040](&v462, a3, 0);
    v431 = 16 * (v70 * *(&v70 + 1) + (v78 >> 1));
    v460 = v93;
    PixelInfo = MPSDevice::GetPixelInfo(v450, MTLPixelFormatRGBA32Float, MPSImageFeatureChannelFormatNone);
    v206 = v441 + *(&v471 + 1) - 1;
    if ((v445 + v471 - 1) / v471 >= v471)
    {
      v207 = v471;
    }

    else
    {
      v207 = (v445 + v471 - 1) / v471;
    }

    if (v206 / *(&v471 + 1) >= *(&v471 + 1))
    {
      v208 = *(&v471 + 1);
    }

    else
    {
      v208 = v206 / *(&v471 + 1);
    }

    v458 = v207;
    v459 = v208;
    TempTexture = MPSAutoCache::GetTempTexture();
    v442 = v207;
    v446 = MPSAutoCache::GetTempTexture();
    objc_msgSend_setComputePipelineState_(a2, v209, PipelineStateForMPSKey, v210, v211, v212, v213, v214);
    v215 = *(a4 + 96);
    v223 = objc_msgSend_count(v215, v216, v217, v218, v219, v220, v221, v222);
    v489 = 0u;
    v490 = 0u;
    v487 = 0u;
    v488 = 0u;
    v485 = 0u;
    v486 = 0u;
    v483 = 0u;
    v484 = 0u;
    v481 = 0u;
    v482 = 0u;
    v479 = 0u;
    v480 = 0u;
    v477 = 0u;
    v478 = 0u;
    v475 = 0u;
    v476 = 0u;
    if (v92)
    {
      v228 = v223;
      for (i = 0; i < v92; i += v231)
      {
        if (v228 <= i)
        {
          v230 = 0;
          if (v92 - i >= 0x20)
          {
            v231 = 32;
          }

          else
          {
            v231 = v92 - i;
          }

          v232 = v231;
          if (!v231)
          {
            goto LABEL_68;
          }
        }

        else
        {
          if (v228 - i >= 0x20)
          {
            v230 = 32;
            objc_msgSend_getObjects_range_(v215, v224, &v475, i, 32, v225, v226, v227);
          }

          else
          {
            v230 = v228 - i;
            objc_msgSend_getObjects_range_(v215, v224, &v475, i, v228 - i, v225, v226, v227);
          }

          if (v92 - i >= 0x20)
          {
            v231 = 32;
          }

          else
          {
            v231 = v92 - i;
          }

          v232 = v231 - v230;
          if (v231 == v230)
          {
            goto LABEL_68;
          }
        }

        bzero(&v475 + 8 * v230, 8 * v232);
LABEL_68:
        objc_msgSend_setTextures_withRange_(a2, v224, &v475, i, v231, v225, v226, v227);
      }
    }

    objc_msgSend_setBytes_length_atIndex_(a2, v224, a4 + 104, 32, 0, v225, v226, v227);
    v233 = *(a4 + 144);
    v241 = objc_msgSend_count(v233, v234, v235, v236, v237, v238, v239, v240);
    v489 = 0u;
    v490 = 0u;
    v487 = 0u;
    v488 = 0u;
    v485 = 0u;
    v486 = 0u;
    v483 = 0u;
    v484 = 0u;
    v481 = 0u;
    v482 = 0u;
    v479 = 0u;
    v480 = 0u;
    v477 = 0u;
    v478 = 0u;
    v475 = 0u;
    v476 = 0u;
    if (!v92)
    {
LABEL_111:
      objc_msgSend_setBytes_length_atIndex_(a2, v242, a4 + 152, 32, 1, v243, v244, v245);
      objc_msgSend_setTexture_atIndex_(a2, v269, TempTexture, 2 * v92, v270, v271, v272, v273);
      objc_msgSend_setTexture_atIndex_(a2, v274, v446, (2 * v92) | 1, v275, v276, v277, v278);
      objc_msgSend_setBytes_length_atIndex_(a2, v279, v473, 12, 30, v280, v281, v282);
      if (v439)
      {
        v475 = 0u;
        v476 = 0u;
        objc_msgSend_a(*(a1 + 432), v283, v284, v285, v286, v287, v288, v289);
        v440 = v290;
        objc_msgSend_b(*(a1 + 432), v291, v292, v293, v294, v295, v296, v297);
        v430 = v298;
        objc_msgSend_c(*(a1 + 432), v299, v300, v301, v302, v303, v304, v305);
        v306 = v440;
        v306.i32[1] = v430;
        v306.i32[2] = v307;
        v475 = v306;
        LODWORD(v476) = objc_msgSend_neuronType(*(a1 + 432), v308, v309, v310, v311, v312, v313, v314);
        objc_msgSend_setBytes_length_atIndex_(a2, v315, &v475, 32, 29, v316, v317, v318);
        objc_msgSend_setBuffer_offset_atIndex_(a2, v319, explicit, 0, 28, v320, v321, v322);
        objc_msgSend_setBuffer_offset_atIndex_(a2, v323, v447, 0, 27, v324, v325, v326);
        v334 = objc_msgSend_gamma(v436, v327, v328, v329, v330, v331, v332, v333);
        objc_msgSend_setBuffer_offset_atIndex_(a2, v335, v334, 0, 26, v336, v337, v338);
        v346 = objc_msgSend_beta(v436, v339, v340, v341, v342, v343, v344, v345);
        objc_msgSend_setBuffer_offset_atIndex_(a2, v347, v346, 0, 25, v348, v349, v350);
        if (v476 == 10)
        {
          objc_msgSend_setBuffer_offset_atIndex_(a2, v283, *(a1 + 440), 0, 24, v287, v288, v289);
        }
      }

      v351 = 16 * (v435 * *(&v435 + 1) + (v434 >> 1));
      objc_msgSend_setThreadgroupMemoryLength_atIndex_(a2, v283, v472 * v351, 0, v286, v287, v288, v289);
      objc_msgSend_setThreadgroupMemoryLength_atIndex_(a2, v352, v472 * v351, 1, v353, v354, v355, v356);
      Sampler = MPSDevice::GetSampler();
      objc_msgSend_setSamplerState_atIndex_(a2, v358, Sampler, 0, v359, v360, v361, v362);
      v363 = MPSDevice::GetSampler();
      objc_msgSend_setSamplerState_atIndex_(a2, v364, v363, 1, v365, v366, v367, v368);
      v475.i64[0] = v442;
      v475.i64[1] = v208;
      *&v476 = (v433 + v432) / v433;
      v456 = v471;
      v457 = v472;
      objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v369, &v475, &v456, v370, v371, v372, v373);
      objc_msgSend_setComputePipelineState_(a2, v374, v444, v375, v376, v377, v378, v379);
      objc_msgSend_setTexture_atIndex_(a2, v380, TempTexture, 0, v381, v382, v383, v384);
      objc_msgSend_setTexture_atIndex_(a2, v385, v446, 1, v386, v387, v388, v389);
      objc_msgSend_setBuffer_offset_atIndex_(a2, v390, v443, 0, 0, v391, v392, v393);
      objc_msgSend_setBuffer_offset_atIndex_(a2, v394, v438, 0, 1, v395, v396, v397);
      objc_msgSend_setBytes_length_atIndex_(a2, v398, v473, 12, 2, v399, v400, v401);
      objc_msgSend_setBuffer_offset_atIndex_(a2, v402, explicit, 0, 3, v403, v404, v405);
      objc_msgSend_setBuffer_offset_atIndex_(a2, v406, v447, 0, 4, v407, v408, v409);
      objc_msgSend_setThreadgroupMemoryLength_atIndex_(a2, v410, v470 * v431, 0, v411, v412, v413, v414);
      v475 = vdupq_n_s64(1uLL);
      *&v476 = v437;
      v456 = v469;
      v457 = v470;
      objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v415, &v475, &v456, v416, v417, v418, v419);
      MPSAutoCache::~MPSAutoCache(&v462);
      goto LABEL_116;
    }

    v246 = v241;
    v247 = 0;
    while (1)
    {
      if (v246 <= v247)
      {
        v248 = 0;
        if (v92 - v247 >= 0x20)
        {
          v249 = 32;
        }

        else
        {
          v249 = v92 - v247;
        }

        v250 = v249;
        if (!v249)
        {
          goto LABEL_86;
        }
      }

      else
      {
        if (v246 - v247 >= 0x20)
        {
          v248 = 32;
          objc_msgSend_getObjects_range_(v233, v242, &v475, v247, 32, v243, v244, v245);
        }

        else
        {
          v248 = v246 - v247;
          objc_msgSend_getObjects_range_(v233, v242, &v475, v247, v246 - v247, v243, v244, v245);
        }

        if (v92 - v247 >= 0x20)
        {
          v249 = 32;
        }

        else
        {
          v249 = v92 - v247;
        }

        v250 = v249 - v248;
        if (v249 == v248)
        {
          goto LABEL_86;
        }
      }

      bzero(&v475 + 8 * v248, 8 * v250);
LABEL_86:
      objc_msgSend_setTextures_withRange_(a2, v242, &v475, v247 + v92, v249, v243, v244, v245);
      v247 += v249;
      if (v247 >= v92)
      {
        goto LABEL_111;
      }
    }
  }

  objc_msgSend_setComputePipelineState_(a2, v86, v34, v87, v88, v89, v90, v91);
  objc_msgSend_setBuffer_offset_atIndex_(a2, v95, v443, 0, 30, v96, v97, v98);
  objc_msgSend_setBuffer_offset_atIndex_(a2, v99, v438, 0, 29, v100, v101, v102);
  objc_msgSend_setBuffer_offset_atIndex_(a2, v103, explicit, 0, 28, v104, v105, v106);
  objc_msgSend_setBuffer_offset_atIndex_(a2, v107, v447, 0, 27, v108, v109, v110);
  if (v439)
  {
    v476 = 0uLL;
    objc_msgSend_a(*(a1 + 432), v111, v112, v113, v114, v115, v116, v117);
    v452 = v118;
    objc_msgSend_b(*(a1 + 432), v119, v120, v121, v122, v123, v124, v125);
    v449 = v126;
    objc_msgSend_c(*(a1 + 432), v127, v128, v129, v130, v131, v132, v133);
    v134 = v452;
    v134.i32[1] = v449;
    v134.i32[2] = v135;
    v475 = v134;
    LODWORD(v476) = objc_msgSend_neuronType(*(a1 + 432), v136, v137, v138, v139, v140, v141, v142);
    objc_msgSend_setBytes_length_atIndex_(a2, v143, &v475, 32, 25, v144, v145, v146);
    v154 = objc_msgSend_gamma(v436, v147, v148, v149, v150, v151, v152, v153);
    objc_msgSend_setBuffer_offset_atIndex_(a2, v155, v154, 0, 24, v156, v157, v158);
    v166 = objc_msgSend_beta(v436, v159, v160, v161, v162, v163, v164, v165);
    objc_msgSend_setBuffer_offset_atIndex_(a2, v167, v166, 0, 23, v168, v169, v170);
    if (v476 == 10)
    {
      objc_msgSend_setBuffer_offset_atIndex_(a2, v111, *(a1 + 440), 0, 22, v115, v116, v117);
    }
  }

  objc_msgSend_setThreadgroupMemoryLength_atIndex_(a2, v111, v470 * v94, 0, v114, v115, v116, v117);
  objc_msgSend_setThreadgroupMemoryLength_atIndex_(a2, v171, v470 * v94, 1, v172, v173, v174, v175);
  v176 = MPSDevice::GetSampler();
  objc_msgSend_setSamplerState_atIndex_(a2, v177, v176, 0, v178, v179, v180, v181);
  v182 = MPSDevice::GetSampler();
  objc_msgSend_setSamplerState_atIndex_(a2, v183, v182, 1, v184, v185, v186, v187);
  v188 = *(a4 + 96);
  v196 = objc_msgSend_count(v188, v189, v190, v191, v192, v193, v194, v195);
  v489 = 0u;
  v490 = 0u;
  v487 = 0u;
  v488 = 0u;
  v485 = 0u;
  v486 = 0u;
  v483 = 0u;
  v484 = 0u;
  v481 = 0u;
  v482 = 0u;
  v479 = 0u;
  v480 = 0u;
  v477 = 0u;
  v478 = 0u;
  v475 = 0u;
  v476 = 0u;
  if (v92)
  {
    v201 = v196;
    for (j = 0; j < v92; j += v204)
    {
      if (v201 <= j)
      {
        v203 = 0;
        if (v92 - j >= 0x20)
        {
          v204 = 32;
        }

        else
        {
          v204 = v92 - j;
        }

        v205 = v204;
        if (!v204)
        {
          goto LABEL_44;
        }
      }

      else
      {
        if (v201 - j >= 0x20)
        {
          v203 = 32;
          objc_msgSend_getObjects_range_(v188, v197, &v475, j, 32, v198, v199, v200);
        }

        else
        {
          v203 = v201 - j;
          objc_msgSend_getObjects_range_(v188, v197, &v475, j, v201 - j, v198, v199, v200);
        }

        if (v92 - j >= 0x20)
        {
          v204 = 32;
        }

        else
        {
          v204 = v92 - j;
        }

        v205 = v204 - v203;
        if (v204 == v203)
        {
          goto LABEL_44;
        }
      }

      bzero(&v475 + 8 * v203, 8 * v205);
LABEL_44:
      objc_msgSend_setTextures_withRange_(a2, v197, &v475, j, v204, v198, v199, v200);
    }
  }

  objc_msgSend_setBytes_length_atIndex_(a2, v197, a4 + 104, 32, 0, v198, v199, v200);
  v251 = *(a4 + 144);
  v259 = objc_msgSend_count(v251, v252, v253, v254, v255, v256, v257, v258);
  v489 = 0u;
  v490 = 0u;
  v487 = 0u;
  v488 = 0u;
  v485 = 0u;
  v486 = 0u;
  v483 = 0u;
  v484 = 0u;
  v481 = 0u;
  v482 = 0u;
  v479 = 0u;
  v480 = 0u;
  v477 = 0u;
  v478 = 0u;
  v475 = 0u;
  v476 = 0u;
  if (v92)
  {
    v264 = v259;
    for (k = 0; k < v92; k += v267)
    {
      if (v264 <= k)
      {
        v266 = 0;
        if (v92 - k >= 0x20)
        {
          v267 = 32;
        }

        else
        {
          v267 = v92 - k;
        }

        v268 = v267;
        if (!v267)
        {
          goto LABEL_104;
        }
      }

      else
      {
        if (v264 - k >= 0x20)
        {
          v266 = 32;
          objc_msgSend_getObjects_range_(v251, v260, &v475, k, 32, v261, v262, v263);
        }

        else
        {
          v266 = v264 - k;
          objc_msgSend_getObjects_range_(v251, v260, &v475, k, v264 - k, v261, v262, v263);
        }

        if (v92 - k >= 0x20)
        {
          v267 = 32;
        }

        else
        {
          v267 = v92 - k;
        }

        v268 = v267 - v266;
        if (v267 == v266)
        {
          goto LABEL_104;
        }
      }

      bzero(&v475 + 8 * v266, 8 * v268);
LABEL_104:
      objc_msgSend_setTextures_withRange_(a2, v260, &v475, k + v92, v267, v261, v262, v263);
    }
  }

  objc_msgSend_setBytes_length_atIndex_(a2, v260, a4 + 152, 32, 1, v261, v262, v263);
  objc_msgSend_setBytes_length_atIndex_(a2, v420, v473, 12, 26, v421, v422, v423);
  v475 = vdupq_n_s64(1uLL);
  *&v476 = v437;
  v462 = v469;
  v463 = v470;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v424, &v475, &v462, v425, v426, v427, v428);
LABEL_116:
  MPSLibrary::ReleaseMPSKey();
  MPSLibrary::ReleaseMPSKey();
  MPSLibrary::ReleaseMPSKey();
  return 0;
}

__n128 sub_239C03BB4@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __n128 *a3@<X8>)
{
  v3 = (*(a1 + 8) + 24 * a2);
  result = *v3;
  *a3 = *v3;
  a3[1].n128_u64[0] = v3[1].n128_u64[0];
  return result;
}

void sub_239C03DA4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 112);
  v5 = objc_autoreleasePoolPush();
  v6 = [MPSCNNUpsamplingNearest alloc];
  *(a1 + 104) = objc_msgSend_initWithDevice_integerScaleFactorX_integerScaleFactorY_(v6, v7, a2, *(v4 + 56), *(v4 + 64), v8, v9, v10);

  objc_autoreleasePoolPop(v5);
}

BOOL sub_239C03E24(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 104);
  if (v8)
  {
    objc_msgSend_scaleFactorX(*(a1 + 104), a2, a3, a4, a5, a6, a7, a8);
    if (v16 == 1.0)
    {
      objc_msgSend_scaleFactorY(v8, v9, v10, v11, v12, v13, v14, v15);
      return v17 == 1.0;
    }
  }

  else
  {
    v19 = *(a1 + 112);
    if (*(v19 + 56) == 1.0)
    {
      return *(v19 + 64) == 1.0;
    }
  }

  return 0;
}

void sub_239C0411C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 112);
  v5 = objc_autoreleasePoolPush();
  v6 = [MPSCNNUpsamplingBilinear alloc];
  *(a1 + 104) = objc_msgSend_initWithDevice_integerScaleFactorX_integerScaleFactorY_alignCorners_(v6, v7, a2, *(v4 + 56), *(v4 + 64), *(v4 + 72), v8, v9);

  objc_autoreleasePoolPop(v5);
}

void sub_239C044C8(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 112);
  v5 = objc_autoreleasePoolPush();
  v6 = [MPSCNNUpsamplingNearestGradient alloc];
  *(a1 + 104) = objc_msgSend_initWithDevice_integerScaleFactorX_integerScaleFactorY_(v6, v7, a2, *(v4 + 56), *(v4 + 64), v8, v9, v10);

  objc_autoreleasePoolPop(v5);
}

void sub_239C0486C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 112);
  v5 = objc_autoreleasePoolPush();
  v6 = [MPSCNNUpsamplingBilinearGradient alloc];
  *(a1 + 104) = objc_msgSend_initWithDevice_integerScaleFactorX_integerScaleFactorY_(v6, v7, a2, *(v4 + 56), *(v4 + 64), v8, v9, v10);

  objc_autoreleasePoolPop(v5);
}

void sub_239C048F0(uint64_t a1)
{
  sub_239C13FBC(a1);

  JUMPOUT(0x23EE7D130);
}

void sub_239C0493C(uint64_t a1)
{
  sub_239C13FBC(a1);

  JUMPOUT(0x23EE7D130);
}

void sub_239C04980(uint64_t a1)
{
  sub_239C13FBC(a1);

  JUMPOUT(0x23EE7D130);
}

void sub_239C049CC(uint64_t a1)
{
  sub_239C13FBC(a1);

  JUMPOUT(0x23EE7D130);
}

void *sub_239C05678(void *result)
{
  if (result)
  {
    v1 = result;
    v2 = objc_autoreleasePoolPush();
    v3 = MEMORY[0x277CD7258];
    v11 = objc_msgSend_length(v1, v4, v5, v6, v7, v8, v9, v10);
    v19 = objc_msgSend_dataType(v1, v12, v13, v14, v15, v16, v17, v18);
    v25 = objc_msgSend_rowBytesForColumns_dataType_(v3, v20, v11, v19, v21, v22, v23, v24);
    v33 = objc_msgSend_data(v1, v26, v27, v28, v29, v30, v31, v32);
    if (v25 > objc_msgSend_length(v33, v34, v35, v36, v37, v38, v39, v40))
    {
      v48 = objc_msgSend_dataType(v1, v41, v42, v43, v44, v45, v46, v47) >> 3;
      v25 = objc_msgSend_length(v1, v49, v50, v51, v52, v53, v54, v55) * v48;
    }

    v56 = MEMORY[0x277CD7258];
    v57 = objc_msgSend_length(v1, v41, v42, v43, v44, v45, v46, v47);
    v65 = objc_msgSend_dataType(v1, v58, v59, v60, v61, v62, v63, v64);
    v69 = objc_msgSend_matrixDescriptorWithRows_columns_rowBytes_dataType_(v56, v66, 1, v57, v25, v65, v67, v68);
    v70 = objc_alloc(MEMORY[0x277CD7250]);
    v78 = objc_msgSend_data(v1, v71, v72, v73, v74, v75, v76, v77);
    v84 = objc_msgSend_initWithBuffer_descriptor_(v70, v79, v78, v69, v80, v81, v82, v83);
    objc_autoreleasePoolPop(v2);
    return v84;
  }

  return result;
}

void sub_239C05C2C(_Unwind_Exception *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  sub_239BACD2C(va, a2, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

void sub_239C05C40(_Unwind_Exception *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  sub_239BACD2C(va, a2, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

void sub_239C05C54(_Unwind_Exception *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  sub_239BACD2C(va, a2, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

void sub_239C05C68(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_239BAD79C(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_239C05C9C(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  objc_msgSend_dataType(a2, a2, a3, a4, a5, a6, a7, a8);
  if (objc_msgSend_dataType(a2, v11, v12, v13, v14, v15, v16, v17) != 268435488 && MTLReportFailureTypeEnabled())
  {
    v91 = a3;
    MTLReportFailure();
  }

  objc_msgSend_matrices(a2, v18, v19, v20, v21, v22, v23, v24, v91);
  if (objc_msgSend_matrices(a2, v25, v26, v27, v28, v29, v30, v31) != 1 && MTLReportFailureTypeEnabled())
  {
    v92 = a3;
    MTLReportFailure();
  }

  objc_msgSend_rows(a1, v32, v33, v34, v35, v36, v37, v38, v92);
  objc_msgSend_rows(a2, v39, v40, v41, v42, v43, v44, v45);
  v53 = objc_msgSend_rows(a1, v46, v47, v48, v49, v50, v51, v52);
  if (v53 != objc_msgSend_rows(a2, v54, v55, v56, v57, v58, v59, v60) && MTLReportFailureTypeEnabled())
  {
    v93 = a3;
    MTLReportFailure();
  }

  objc_msgSend_columns(a1, v61, v62, v63, v64, v65, v66, v67, v93);
  objc_msgSend_columns(a2, v68, v69, v70, v71, v72, v73, v74);
  v82 = objc_msgSend_columns(a1, v75, v76, v77, v78, v79, v80, v81);
  result = objc_msgSend_columns(a2, v83, v84, v85, v86, v87, v88, v89);
  if (v82 != result)
  {
    result = MTLReportFailureTypeEnabled();
    if (result)
    {
      return MTLReportFailure();
    }
  }

  return result;
}

void sub_239C07810(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_239BAD79C(a1);
  }

  _Unwind_Resume(a1);
}

void sub_239C09034(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_239BAD79C(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_239C0A6A8(uint64_t a1, const char *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(a1 + 120) = a4;
  v12 = objc_msgSend_count(a3, a2, a3, a4, a5, a6, a7, a8);
  if (*(a1 + 64) != v12)
  {
    v20 = (v12 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v21 = malloc_type_malloc(8 * v20, 0x2004093837F09uLL);
    if (v21)
    {
      v22 = v21;
      v23 = *(a1 + 56);
      if (v23)
      {
        memcpy(v21, *(a1 + 48), 8 * v23);
      }

      free(*(a1 + 48));
      *(a1 + 64) = v20;
      *(a1 + 48) = v22;
    }

    else if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }
  }

  v24 = objc_msgSend_count(a3, v13, v14, v15, v16, v17, v18, v19);
  if (!v24)
  {
LABEL_21:
    v137 = *(a1 + 56);
    v138 = a2;
    v57 = MEMORY[0x277CD7378];
    v58 = MEMORY[0x277D85DF8];
    if ((*(*(a1 + 120) + *MEMORY[0x277CD7378]) & 0x10) != 0)
    {
      fprintf(*MEMORY[0x277D85DF8], "\nInit MPSNNGraph %p\n\t%lu nodes are specified.\n\tSome may have been pruned because they were not needed to produce a result.\n\n", *(a1 + 120), *(a1 + 136));
      fwrite("Initial graph:\n", 0xFuLL, 1uLL, *v58);
      sub_239C0FA60(a1);
    }

    v148 = 0;
    v146 = 0u;
    v147 = 0u;
    v145 = 0u;
    v59 = *(a1 + 160);
    v142 = a1;
    v143 = v59;
    v144 = *(a1 + 184);
    v60 = malloc_type_calloc(v59, 1uLL, 0x100004077774924uLL);
    v140 = v60;
    v141 = malloc_type_calloc(v144, 1uLL, 0x100004077774924uLL);
    *&v146 = &unk_284CC9F80;
    *(&v146 + 1) = &unk_284CC85E0;
    v61 = *(a1 + 56);
    if (v61)
    {
      for (i = 0; i != v61; ++i)
      {
        v63 = *(*(a1 + 48) + 8 * i);
        if (!*(v140 + *(v63 + 64)))
        {
          v64 = *(v63 + 32);
          if (v64)
          {
            sub_239C18ECC(&v140, v64);
          }
        }
      }

      bzero(v140, v143);
      v65 = v141;
      if (v141)
      {
        goto LABEL_30;
      }
    }

    else
    {
      bzero(v60, v59);
      v65 = v141;
      if (v141)
      {
LABEL_30:
        bzero(v65, v144);
      }
    }

    v66 = *(a1 + 120);
    v67 = *v57;
    v68 = *(v66 + v67);
    if (v68)
    {
      if ((v68 & 0x10) == 0)
      {
LABEL_43:
        if ((*(v66 + v67) & 0x10) != 0)
        {
          fwrite("  Pruning unproductive filter nodes...\n", 0x27uLL, 1uLL, *v58);
        }

        v176 = 0u;
        v175 = 0u;
        v174 = 0u;
        v75 = *(a1 + 160);
        v171 = a1;
        v172 = v75;
        v76 = *(a1 + 184);
        v177 = 0;
        v173 = v76;
        v169 = malloc_type_calloc(v75, 1uLL, 0x100004077774924uLL);
        v170 = malloc_type_calloc(v76, 1uLL, 0x100004077774924uLL);
        v165 = 0;
        v166 = &v165;
        v167 = 0x2020000000;
        v168 = 0;
        v149 = MEMORY[0x277D85DD0];
        v150 = 3221225472;
        v151 = sub_239C11684;
        v152 = &unk_278B2F0C8;
        v153 = &v165;
        v154 = a1;
        *(&v174 + 1) = &v149;
        v77 = *(a1 + 56);
        if (v77)
        {
          for (j = 0; j != v77; ++j)
          {
            v79 = *(*(a1 + 48) + 8 * j);
            if (!v169[*(v79 + 64)])
            {
              v80 = *(v79 + 32);
              if (v80)
              {
                sub_239C18ECC(&v169, v80);
              }
            }
          }
        }

        if ((*(*(a1 + 120) + *v57) & 0x10) != 0)
        {
          fprintf(*v58, "  Pruned %lu nodes.\n\n", v166[3]);
        }

        _Block_object_dispose(&v165, 8);
        free(v169);
        free(v170);
        if ((*(*(a1 + 120) + *v57) & 0x10) != 0)
        {
          fwrite("  Attempting to contract consecutive filter passes into a single pass...\n", 0x49uLL, 1uLL, *v58);
        }

        v176 = 0u;
        v175 = 0u;
        v174 = 0u;
        v81 = *(a1 + 160);
        v171 = a1;
        v172 = v81;
        v82 = *(a1 + 184);
        v177 = 0;
        v173 = v82;
        v169 = malloc_type_calloc(v81, 1uLL, 0x100004077774924uLL);
        v83 = malloc_type_calloc(v82, 1uLL, 0x100004077774924uLL);
        v90 = 0;
        v170 = v83;
        v165 = 0;
        v166 = &v165;
        v167 = 0x2020000000;
        v168 = 0;
        v161 = 0;
        v162 = &v161;
        v163 = 0x2020000000;
        v164 = 0;
        v157 = 0;
        v158 = &v157;
        v159 = 0x2020000000;
        v160 = 0;
        v91 = *(a1 + 136);
        if ((*(*(a1 + 120) + *v57) & 0x10) != 0)
        {
          v92 = malloc_type_calloc(*(a1 + 136), 8uLL, 0x80040B8603338uLL);
          v162[3] = v92;
          v93 = malloc_type_malloc(v91, 0x100004077774924uLL);
          v158[3] = v93;
          memset(v93, 1, v91);
          v90 = objc_opt_new();
        }

        v94 = 0;
        v149 = MEMORY[0x277D85DD0];
        v150 = 3221225472;
        v151 = sub_239C10760;
        v152 = &unk_278B2F0A0;
        v153 = &v161;
        v154 = &v157;
        v155 = &v165;
        v156 = a1;
        *&v176 = &v149;
        do
        {
          v95 = *(a1 + 56);
          if (!v95)
          {
            break;
          }

          v96 = 0;
          v97 = v166[3];
          do
          {
            v98 = *(*(a1 + 48) + 8 * v96);
            if (!v169[*(v98 + 64)])
            {
              v84 = *(v98 + 32);
              if (v84)
              {
                sub_239C18ECC(&v169, v84);
              }
            }

            ++v96;
          }

          while (v95 != v96);
          if (v97 == v166[3])
          {
            break;
          }

          bzero(v169, v172);
          if (v170)
          {
            bzero(v170, v173);
          }

          ++v94;
        }

        while (v94 != 10);
        v99 = v162[3];
        if (v99)
        {
          if (v91)
          {
            for (k = 0; k != v91; ++k)
            {
              v101 = *(v162[3] + 8 * k);
              if (v101)
              {
                v102 = *v58;
                v103 = objc_msgSend_cStringUsingEncoding_(v101, v84, 4, v85, v86, v87, v88, v89);
                fprintf(v102, "\t%s\n", v103);
              }
            }

            v99 = v162[3];
          }

          free(v99);
          free(v158[3]);

          v104 = *v58;
          if (v166[3])
          {
            fprintf(v104, "  Removed %lu passes\n\n", v166[3]);
          }

          else
          {
            fwrite("  No passes removed by contraction.\n\t\t(This is common in training graphs because the intermediate tensors are needed for gradient passes.)\n\n", 0x8CuLL, 1uLL, v104);
          }
        }

        _Block_object_dispose(&v157, 8);
        _Block_object_dispose(&v161, 8);
        _Block_object_dispose(&v165, 8);
        free(v169);
        free(v170);
        if ((*(*(a1 + 120) + *v57) & 0x10) != 0)
        {
          fwrite("  Attempting to use feature channel offsets to eliminate concatenation and slice passes...\n", 0x5BuLL, 1uLL, *v58);
        }

        v176 = 0u;
        v175 = 0u;
        v174 = 0u;
        v105 = *(a1 + 160);
        v171 = a1;
        v172 = v105;
        v106 = *(a1 + 184);
        v177 = 0;
        v173 = v106;
        v169 = malloc_type_calloc(v105, 1uLL, 0x100004077774924uLL);
        v107 = malloc_type_calloc(v106, 1uLL, 0x100004077774924uLL);
        v108 = 0;
        v109 = 0;
        v170 = v107;
        v165 = 0;
        v166 = &v165;
        v167 = 0x2020000000;
        v168 = 0;
        v149 = MEMORY[0x277D85DD0];
        v150 = 3221225472;
        v151 = sub_239C1181C;
        v152 = &unk_278B2F0C8;
        v153 = &v165;
        v154 = a1;
        *(&v174 + 1) = &v149;
        do
        {
          v166[3] = 0;
          v110 = *(a1 + 56);
          if (!v110)
          {
            break;
          }

          for (m = 0; m != v110; ++m)
          {
            v112 = *(*(a1 + 48) + 8 * m);
            if (!v169[*(v112 + 64)])
            {
              v113 = *(v112 + 32);
              if (v113)
              {
                sub_239C18ECC(&v169, v113);
              }
            }
          }

          v114 = v166[3];
          v108 += v114;
          if (!v114)
          {
            break;
          }

          bzero(v169, v172);
          if (v170)
          {
            bzero(v170, v173);
          }

          ++v109;
        }

        while (v109 != 10);
        if ((*(*(a1 + 120) + *v57) & 0x10) != 0)
        {
          fprintf(*v58, "  Removed %lu passes\n", v108);
        }

        _Block_object_dispose(&v165, 8);
        free(v169);
        free(v170);
        if ((*(*(a1 + 120) + *v57) & 0x10) != 0)
        {
          fwrite("End graph optimization passes.\n\n", 0x20uLL, 1uLL, *v58);
          if ((*(*(a1 + 120) + *v57) & 0x10) != 0)
          {
            fwrite("\nFinal graph:\n", 0xEuLL, 1uLL, *v58);
            sub_239C0FA60(a1);
          }
        }

        if (v137)
        {
          v115 = 0;
          v116 = *(a1 + 48);
          v117 = v116;
          v118 = v137;
          v119 = v137;
          v120 = v138;
          do
          {
            while (*(*v117 + 32))
            {
              *(v116 + 8 * v115++) = *v117;
              v117 += 8;
              if (!--v118)
              {
                goto LABEL_106;
              }
            }

            --v119;
            v117 += 8;
            --v118;
          }

          while (v118);
LABEL_106:
          if (v119 < v137)
          {
            if (*(a1 + 64) >= v119)
            {
              *(a1 + 56) = v119;
              if (!v119)
              {
LABEL_152:
                free(v140);
                free(v141);
                return 1;
              }
            }

            else
            {
              v121 = (v119 + 1) & 0xFFFFFFFFFFFFFFFELL;
              v122 = malloc_type_malloc(8 * v121, 0x2004093837F09uLL);
              v123 = v122;
              if (v122)
              {
                v124 = *(a1 + 56);
                if (v124)
                {
                  memcpy(v122, *(a1 + 48), 8 * v124);
                }

                free(*(a1 + 48));
                *(a1 + 64) = v121;
                *(a1 + 48) = v123;
              }

              else if (MTLReportFailureTypeEnabled())
              {
                MTLReportFailure();
              }

              *(a1 + 56) = v119;
            }
          }
        }

        else
        {
          v120 = v138;
        }

        v125 = *(a1 + 184);
        if (v125)
        {
          for (n = 0; n != v125; ++n)
          {
            v127 = *(*(a1 + 176) + 8 * n);
            if (v127)
            {
              if (!*(v127 + 32))
              {
                sub_239C0F98C(a1 + 24, v127);
              }

              if (*(v127 + 80) == 1)
              {
                sub_239C0F98C(a1 + 96, v127);
              }
            }
          }
        }

        v128 = *(a1 + 160);
        v129 = *(a1 + 56);
        if (v129)
        {
          v130 = **(a1 + 48);
          if (!v128)
          {
LABEL_143:
            v169 = 0;
            v170 = &v169;
            v171 = 0x2020000000;
            v172 = 0;
            v146 = 0uLL;
            v139[0] = MEMORY[0x277D85DD0];
            v139[1] = 3221225472;
            v139[2] = sub_239C10140;
            v139[3] = &unk_278B2F078;
            v139[5] = &v169;
            v139[6] = a1;
            v139[4] = v120;
            *&v147 = v139;
            if (v129)
            {
              for (ii = 0; ii != v129; ++ii)
              {
                v135 = *(*(a1 + 48) + 8 * ii);
                if (!*(v140 + *(v135 + 64)))
                {
                  v136 = *(v135 + 32);
                  if (v136)
                  {
                    sub_239C18ECC(&v140, v136);
                  }
                }
              }

              if (v170[3])
              {
                *(a1 + 200) = dispatch_semaphore_create(1);
              }
            }

            _Block_object_dispose(&v169, 8);
            goto LABEL_152;
          }
        }

        else
        {
          v130 = 0;
          if (!v128)
          {
            goto LABEL_143;
          }
        }

        v131 = 0;
        while (1)
        {
          v132 = *(*(a1 + 152) + 8 * v131);
          if (!v132)
          {
            goto LABEL_131;
          }

          if (!*(v132 + 32))
          {
            sub_239C0F98C(a1, v132);
          }

          if ((*(v132 + 80) & 1) == 0)
          {
            break;
          }

          if (v132 != v130)
          {
            goto LABEL_130;
          }

LABEL_131:
          if (v128 == ++v131)
          {
            v129 = *(a1 + 56);
            goto LABEL_143;
          }
        }

        if (*(v132 + 81) != 1 || v132 == v130)
        {
          goto LABEL_131;
        }

LABEL_130:
        sub_239C0F98C(a1 + 72, v132);
        goto LABEL_131;
      }
    }

    else
    {
      if ((v68 & 0x10) != 0)
      {
        fwrite("Verify Graph:\n", 0xEuLL, 1uLL, *v58);
      }

      if (*(a1 + 56))
      {
        v176 = 0u;
        v175 = 0u;
        v174 = 0u;
        v69 = *(a1 + 160);
        v171 = a1;
        v172 = v69;
        v70 = *(a1 + 184);
        v177 = 0;
        v173 = v70;
        v169 = malloc_type_calloc(v69, 1uLL, 0x100004077774924uLL);
        v170 = malloc_type_calloc(v70, 1uLL, 0x100004077774924uLL);
        v165 = 0;
        v166 = &v165;
        v167 = 0x2020000000;
        v168 = 0;
        v149 = MEMORY[0x277D85DD0];
        v150 = 3221225472;
        v151 = sub_239C11CD4;
        v152 = &unk_278B2F0C8;
        v153 = &v165;
        v154 = a1;
        *&v176 = &v149;
        v71 = *(a1 + 56);
        if (v71)
        {
          for (jj = 0; jj != v71; ++jj)
          {
            v73 = *(*(a1 + 48) + 8 * jj);
            if (!v169[*(v73 + 64)])
            {
              v74 = *(v73 + 32);
              if (v74)
              {
                sub_239C18ECC(&v169, v74);
              }
            }
          }
        }

        if ((*(*(a1 + 120) + *v57) & 0x10) != 0)
        {
          fprintf(*v58, "\t%lu issues reported.\n", v166[3]);
        }

        _Block_object_dispose(&v165, 8);
        free(v169);
        free(v170);
      }

      else if ((*(*(a1 + 120) + *v57) & 0x10) != 0)
      {
        fwrite("\tNo filters in graph.\n", 0x16uLL, 1uLL, *v58);
      }

      v66 = *(a1 + 120);
      v67 = *v57;
      if ((*(v66 + v67) & 0x10) == 0)
      {
        goto LABEL_43;
      }
    }

    fwrite("\nOptimizing graph structure...\n", 0x1FuLL, 1uLL, *v58);
    v66 = *(a1 + 120);
    LODWORD(v67) = *v57;
    goto LABEL_43;
  }

  v31 = v24;
  v32 = objc_msgSend_objectAtIndexedSubscript_(a3, v25, 0, v26, v27, v28, v29, v30);
  result = sub_239C0F4E0(a1, v32, v33, v34, v35, v36, v37, v38);
  if (result)
  {
    v45 = result;
    v46 = 0;
    do
    {
      v47 = *(a1 + 56);
      if (!v47)
      {
        goto LABEL_15;
      }

      v48 = 0;
      while (*(*(a1 + 48) + 8 * v48) != v45)
      {
        if (v47 == ++v48)
        {
          goto LABEL_15;
        }
      }

      if (v48 == -1)
      {
LABEL_15:
        sub_239C0F98C(a1 + 48, v45);
        v49 = *(*(a1 + 48) + 8 * v47);
        *(v49 + 81) = 1;
        if (a5 && *(a5 + v47) == 1)
        {
          *(v49 + 80) = 1;
        }
      }

      if (++v46 == v31)
      {
        goto LABEL_21;
      }

      v50 = objc_msgSend_objectAtIndexedSubscript_(a3, v45, v46, v40, v41, v42, v43, v44);
      v45 = sub_239C0F4E0(a1, v50, v51, v52, v53, v54, v55, v56);
    }

    while (v45);
    return v46 >= v31;
  }

  return result;
}

void sub_239C0B4D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44)
{
  free(a20);
  free(a21);
  _Unwind_Resume(a1);
}

void sub_239C0C74C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, void *a50)
{
  _Block_object_dispose(&a25, 8);
  free(*(v50 - 208));
  free(*(v50 - 200));
  _Unwind_Resume(a1);
}

void sub_239C0D3D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, void *a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a61, 8);
  _Block_object_dispose((v61 - 240), 8);
  free(*(v61 - 208));
  free(*(v61 - 200));
  _Unwind_Resume(a1);
}

void sub_239C0D730(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, void *a26)
{
  free(a25);
  free(a26);
  _Block_object_dispose((v26 - 160), 8);
  _Block_object_dispose((v26 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_239C0E3D4(_Unwind_Exception *a1, int a2)
{
  if (a2 == 2)
  {
    if (*__cxa_begin_catch(a1))
    {

      __cxa_end_catch();
      JUMPOUT(0x239C0E2C8);
    }

    __cxa_end_catch();
    JUMPOUT(0x239C0E20CLL);
  }

  _Unwind_Resume(a1);
}

void sub_239C0E3E4(void *a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x239C0E3F4);
  }

  __cxa_begin_catch(a1);
  exception = __cxa_allocate_exception(4uLL);
  *exception = 1;
  __cxa_throw(exception, &unk_284CD31F8, 0);
}

void sub_239C0E470(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_239BAD79C(a1);
  }

  _Unwind_Resume(a1);
}

void sub_239C0EA7C(void *a1)
{
  __cxa_begin_catch(a1);
  objc_msgSend_dealloc(v1, v2, v3, v4, v5, v6, v7, v8);
  __cxa_end_catch();
  JUMPOUT(0x239C0E9A0);
}

void sub_239C0EE0C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = objc_msgSend_status(a2, a2, a3, a4, a5, a6, a7, a8);
  if (v10 <= 3)
  {
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }
  }

  else if (v10 == 5)
  {
    objc_msgSend_error(a2, v11, v12, v13, v14, v15, v16, v17);
    MPSDevice::DeleteQueue();
  }

  (*(*(a1 + 56) + 16))(*(a1 + 56));

  v18 = *(a1 + 40);
}

void sub_239C0F07C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10)
{
  free(a9);
  free(a10);
  _Unwind_Resume(a1);
}

void sub_239C0F43C(_Unwind_Exception *a1)
{
  free(v1[22]);
  free(v1[19]);
  free(v1[16]);
  free(v1[12]);
  free(v1[9]);
  free(v1[6]);
  free(v1[3]);
  free(*v1);
  _Unwind_Resume(a1);
}

void sub_239C0F4B0(_Unwind_Exception *a1)
{
  free(v1[3]);
  free(*v1);
  _Unwind_Resume(a1);
}

uint64_t sub_239C0F4E0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a1[20];
  while (v9 >= 1)
  {
    v10 = *(a1[19] + 8 * v9-- - 8);
    if (*(v10 + 56) == a2)
    {
      return v10;
    }
  }

  v12 = *(a2 + 16);
  if (!v12)
  {
    operator new();
  }

  v13 = sub_239C0F628(a1, v12, a3, a4, a5, a6, a7, a8);
  if (!v13)
  {
    return 0;
  }

  v10 = v13[1];
  if (!*(a2 + 24))
  {
    return v10;
  }

  (*(*v13 + 104))(v13);
  return v10;
}

void *sub_239C0F628(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = objc_msgSend_sourceImages(a2, a2, a3, a4, a5, a6, a7, a8);
  v18 = objc_msgSend_sourceStates(a2, v11, v12, v13, v14, v15, v16, v17);
  v26 = objc_msgSend_newFilterNode(a2, v19, v20, v21, v22, v23, v24, v25);
  if (!v26)
  {
    if (MTLReportFailureTypeEnabled())
    {
      v67 = objc_opt_class();
      NSStringFromClass(v67);
      objc_msgSend_debugDescription(a2, v68, v69, v70, v71, v72, v73, v74);
      MTLReportFailure();
    }

    return 0;
  }

  v27 = v26;
  v28 = a1[17];
  sub_239C0F98C((a1 + 16), v26);
  v27[15] = v28;
  v29 = a1[20];
  v30 = v27[1];
  sub_239C0F98C((a1 + 19), v30);
  *(v30 + 64) = v29;
  v38 = v27[11];
  if (v38)
  {
    for (i = 0; i != v38; ++i)
    {
      v40 = a1[23];
      v41 = *(v27[10] + 8 * i);
      sub_239C0F98C((a1 + 22), v41);
      *(v41 + 64) = v40;
    }
  }

  if (v10)
  {
    v42 = objc_msgSend_count(v10, v31, v32, v33, v34, v35, v36, v37);
    if (v42)
    {
      v43 = v42;
      for (j = 0; j != v43; ++j)
      {
        v45 = objc_msgSend_objectAtIndexedSubscript_(v10, v31, j, v33, v34, v35, v36, v37, v75);
        if (v45)
        {
          v46 = sub_239C0F4E0(a1, v45);
          if (!v46)
          {
            goto LABEL_36;
          }

          v47 = v46;
          sub_239C0F98C((v27 + 4), v46);
          sub_239C0F98C(v47 + 8, v27);
        }

        else if (MTLReportFailureTypeEnabled())
        {
          v48 = objc_opt_class();
          v75 = NSStringFromClass(v48);
          MTLReportFailure();
        }
      }
    }
  }

  if (v18)
  {
    v49 = objc_msgSend_count(v18, v31, v32, v33, v34, v35, v36, v37);
    if (v49)
    {
      v56 = v49;
      v57 = 0;
      while (1)
      {
        v58 = objc_msgSend_objectAtIndexedSubscript_(v18, v50, v57, v51, v52, v53, v54, v55, v75);
        if (v58)
        {
          break;
        }

        if (MTLReportFailureTypeEnabled())
        {
          v65 = objc_opt_class();
          v75 = NSStringFromClass(v65);
          MTLReportFailure();
        }

LABEL_32:
        if (++v57 == v56)
        {
          return v27;
        }
      }

      v59 = v58;
      v60 = a1[23];
      while (v60 >= 1)
      {
        v61 = *(a1[22] + 8 * v60-- - 8);
        if (*(v61 + 56) == v58)
        {
          goto LABEL_31;
        }
      }

      if (!*(v58 + 16))
      {
        operator new();
      }

      v62 = sub_239C0F628(a1);
      if (v62)
      {
        v63 = *(v62 + 88);
        if (v63)
        {
          v64 = *(v62 + 80);
          while (1)
          {
            v61 = *v64;
            if (*(*v64 + 56) == v59)
            {
              break;
            }

            ++v64;
            if (!--v63)
            {
              goto LABEL_36;
            }
          }

LABEL_31:
          sub_239C0F98C((v27 + 7), v61);
          sub_239C0F98C(v61 + 8, v27);
          goto LABEL_32;
        }
      }

LABEL_36:
      (*(*v27 + 16))(v27);
      return 0;
    }
  }

  return v27;
}

void sub_239C0F98C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (*(a1 + 8) >= v4)
  {
    v5 = 2;
    if (v4 > 2)
    {
      v5 = *(a1 + 16);
    }

    v6 = (v4 + v5 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v7 = malloc_type_malloc(8 * v6, 0x2004093837F09uLL);
    if (v7)
    {
      v8 = v7;
      v9 = *(a1 + 8);
      if (v9)
      {
        memcpy(v7, *a1, 8 * v9);
      }

      free(*a1);
      *(a1 + 16) = v6;
      *a1 = v8;
    }

    else if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }
  }

  v10 = *(a1 + 8);
  *(*a1 + 8 * v10) = a2;
  *(a1 + 8) = v10 + 1;
}

void sub_239C0FA60(void *a1)
{
  v75 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D85DF8];
  fwrite("\t result image id <-- filter <-- {filter source image id list}\n", 0x3FuLL, 1uLL, *MEMORY[0x277D85DF8]);
  fwrite("\t ============================================================\n", 0x3FuLL, 1uLL, *v2);
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v73 = 0;
  v71 = 0u;
  v72 = 0u;
  v70 = 0u;
  v4 = a1[20];
  v67 = a1;
  v68 = v4;
  v69 = a1[23];
  v65 = malloc_type_calloc(v4, 1uLL, 0x100004077774924uLL);
  v66 = malloc_type_calloc(v69, 1uLL, 0x100004077774924uLL);
  v64[0] = MEMORY[0x277D85DD0];
  v64[1] = 3221225472;
  v64[2] = sub_239C0FD2C;
  v64[3] = &unk_278B2F030;
  v64[4] = v3;
  v64[5] = &v74;
  *&v72 = v64;
  v5 = a1[7];
  if (v5)
  {
    for (i = 0; i != v5; ++i)
    {
      v7 = *(a1[6] + 8 * i);
      if (!*(v65 + *(v7 + 64)))
      {
        v8 = *(v7 + 32);
        if (v8)
        {
          sub_239C18ECC(&v65, v8);
        }
      }
    }
  }

  fwrite("\n\t   * an image passed into the graph\n", 0x26uLL, 1uLL, *v2);
  fwrite("\t   0 is the graph result image.\n", 0x21uLL, 1uLL, *v2);
  fwrite("\t   () the result may be only partially overwritten.\n", 0x35uLL, 1uLL, *v2);
  fwrite("\nSummary:\n", 0xAuLL, 1uLL, *v2);
  v16 = objc_msgSend_allKeys(v3, v9, v10, v11, v12, v13, v14, v15);
  v24 = objc_msgSend_allValues(v3, v17, v18, v19, v20, v21, v22, v23);
  v38 = objc_msgSend_count(v16, v25, v26, v27, v28, v29, v30, v31);
  if (v38)
  {
    for (j = 0; j != v38; ++j)
    {
      v40 = *v2;
      v41 = objc_msgSend_objectAtIndexedSubscript_(v24, v32, j, v33, v34, v35, v36, v37);
      v49 = objc_msgSend_unsignedIntegerValue(v41, v42, v43, v44, v45, v46, v47, v48);
      v56 = objc_msgSend_objectAtIndexedSubscript_(v16, v50, j, v51, v52, v53, v54, v55);
      v63 = objc_msgSend_cStringUsingEncoding_(v56, v57, 4, v58, v59, v60, v61, v62);
      fprintf(v40, "%4lu %s\n", v49, v63);
    }
  }

  fputc(10, *v2);

  free(v65);
  free(v66);
}

void sub_239C0FD04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, void *a19)
{
  free(a18);
  free(a19);
  _Unwind_Resume(a1);
}

uint64_t sub_239C0FD2C(uint64_t result, uint64_t a2)
{
  v77 = *MEMORY[0x277D85DE8];
  if ((*(a2 + 129) & 1) == 0)
  {
    v3 = result;
    v4 = *(result + 40);
    v5 = *(a2 + 16);
    if (v5)
    {
      v6 = "(%lu)";
    }

    else
    {
      v5 = *(a2 + 8);
      v6 = "%lu ";
    }

    v7 = *(a2 + 40);
    snprintf(__str, 0x1EuLL, v6, *(v5 + 64));
    v8 = (*(*a2 + 64))(a2);
    v9 = MEMORY[0x277CCACA8];
    v10 = *(a2 + 120);
    v11 = (*(*a2 + 200))(a2);
    if (v8)
    {
      v18 = objc_msgSend_stringWithFormat_(v9, v12, @"[%lu] %@ %p %@", v13, v14, v15, v16, v17, v10, v11, *(a2 + 112), v8);
    }

    else
    {
      v18 = objc_msgSend_stringWithFormat_(v9, v12, @"[%lu] %@ %p", v13, v14, v15, v16, v17, v10, v11, *(a2 + 112));
    }

    v25 = objc_msgSend_cStringUsingEncoding_(v18, v19, 4, v20, v21, v22, v23, v24);
    v26 = snprintf(v4, 0x400uLL, "%5s <-- %s <-- ", __str, v25);
    if (v26 <= 0x3FF)
    {
      v27 = **(a2 + 32);
      if (v7 == 1)
      {
        v28 = **(a2 + 32);
        do
        {
          v28 = *(v28 + 40);
        }

        while (v28);
        do
        {
          v27 = *(v27 + 40);
        }

        while (v27);
        snprintf(&v4[v26], 1024 - v26, "%lu%s\n");
      }

      else
      {
        v29 = **(a2 + 32);
        do
        {
          v30 = v29;
          v29 = *(v29 + 40);
        }

        while (v29);
        v31 = *(v30 + 64);
        do
        {
          v32 = v27;
          v27 = *(v27 + 40);
        }

        while (v27);
        if (*(v32 + 32))
        {
          v33 = "";
        }

        else
        {
          v33 = "*";
        }

        v34 = v26 + snprintf(&v4[v26], 1024 - v26, "{%lu%s", v31, v33);
        if (v7 && v34 <= 0x3FF)
        {
          v35 = 1;
          do
          {
            v36 = *(*(a2 + 32) + 8 * v35);
            v37 = v36;
            do
            {
              v38 = v37;
              v37 = *(v37 + 40);
            }

            while (v37);
            v39 = *(v38 + 64);
            do
            {
              v40 = v36;
              v36 = *(v36 + 40);
            }

            while (v36);
            if (*(v40 + 32))
            {
              v41 = "";
            }

            else
            {
              v41 = "*";
            }

            v34 += snprintf(&v4[v34], 1024 - v34, ", %lu%s", v39, v41);
            ++v35;
          }

          while (v35 < v7 && v34 < 0x400);
        }

        if (v34 <= 0x3FF)
        {
          snprintf(&v4[v34], 1024 - v34, "}\n");
        }
      }
    }

    fprintf(*MEMORY[0x277D85DF8], "\t %s", *(v3 + 40));
    v42 = *(v3 + 32);
    v43 = objc_opt_class();
    v44 = NSStringFromClass(v43);
    v51 = objc_msgSend_objectForKey_(v42, v45, v44, v46, v47, v48, v49, v50);
    v52 = *(v3 + 32);
    v53 = MEMORY[0x277CCABB0];
    v61 = objc_msgSend_intValue(v51, v54, v55, v56, v57, v58, v59, v60);
    v68 = objc_msgSend_numberWithInt_(v53, v62, (v61 + 1), v63, v64, v65, v66, v67);
    v69 = objc_opt_class();
    v70 = NSStringFromClass(v69);
    return objc_msgSend_setObject_forKey_(v52, v71, v68, v70, v72, v73, v74, v75);
  }

  return result;
}

uint64_t sub_239C10090(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = (*(*a2 + 32))(a2, a4);
  *(a3 + 72) += result;
  return result;
}

uint64_t sub_239C100E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = (*(*a2 + 40))(a2, a4);
  *(a3 + 72) += result;
  return result;
}

uint64_t sub_239C10140(void *a1, uint64_t a2)
{
  v4 = a1[6];
  (*(*a2 + 24))(a2, a1[4]);
  v5 = *(a2 + 112);
  v13 = objc_msgSend_paddingPolicy(v5, v6, v7, v8, v9, v10, v11, v12);
  (*(*a2 + 120))(a2, v13);
  v21 = objc_msgSend_label(v5, v14, v15, v16, v17, v18, v19, v20);
  if (v21)
  {
    objc_msgSend_setLabel_(*(a2 + 104), v22, v21, v23, v24, v25, v26, v27);
  }

  result = (*(*a2 + 128))(a2, *(*(v4 + 120) + *MEMORY[0x277CD7378]));
  *(*(a1[5] + 8) + 24) |= *(a2 + 136);
  v29 = *(a2 + 8);
  if (v29 && *(v29 + 48))
  {
    v30 = *(*a2 + 104);

    return v30(a2);
  }

  return result;
}

void *sub_239C10294(void *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = a1[14];
  if (!objc_msgSend_paddingPolicy(v10, a2, a3, a4, a5, a6, a7, a8) || (v18 = objc_msgSend_paddingPolicy(v10, v11, v12, v13, v14, v15, v16, v17), (objc_msgSend_paddingMethod(v18, v19, v20, v21, v22, v23, v24, v25) & 0x6000) != 0x4000))
  {
    v44 = *a1[4];
    if (v44)
    {
      v45 = *(v44 + 32);
      if (v45)
      {
        if ((*(*a1 + 32))(a1, 0) >= *(v44 + 72) + *(v44 + 80))
        {
          v64 = a1[11];
          if (!v64)
          {
            return v45;
          }

          v65 = a1[10];
          result = v45;
          while (1)
          {
            v67 = *v65;
            if (*v65)
            {
              if (*(v67 + 72) + *(v67 + 80))
              {
                break;
              }
            }

            ++v65;
            if (!--v64)
            {
              return result;
            }
          }

          if (a2)
          {
            v68 = MEMORY[0x277CCACA8];
            v69 = (*(*a1 + 64))(a1);
            v70 = MEMORY[0x277CCACA8];
            v71 = a1[15];
            v72 = (*(*a1 + 200))(a1);
            if (v69)
            {
              v79 = objc_msgSend_stringWithFormat_(v70, v73, @"[%lu] %@ %p %@", v74, v75, v76, v77, v78, v71, v72, a1[14], v69);
            }

            else
            {
              v79 = objc_msgSend_stringWithFormat_(v70, v73, @"[%lu] %@ %p", v74, v75, v76, v77, v78, v71, v72, a1[14]);
            }

            v120 = objc_msgSend_cStringUsingEncoding_(v79, v80, 4, v81, v82, v83, v84, v85);
            v121 = v45;
            v122 = (*(*v45 + 64))(v45);
            v123 = MEMORY[0x277CCACA8];
            v124 = v45[15];
            v125 = (*(*v121 + 200))(v121);
            if (v122)
            {
              v132 = objc_msgSend_stringWithFormat_(v123, v126, @"[%lu] %@ %p %@", v127, v128, v129, v130, v131, v124, v125, v121[14], v122);
            }

            else
            {
              v132 = objc_msgSend_stringWithFormat_(v123, v126, @"[%lu] %@ %p", v127, v128, v129, v130, v131, v124, v125, v121[14], v151);
            }

            v147 = objc_msgSend_cStringUsingEncoding_(v132, v133, 4, v134, v135, v136, v137, v138);
            v92 = objc_msgSend_stringWithFormat_(v68, v139, @"Rejected contraction of %s into %s:\n\t\tit produces a state that is read at least once (%lu)", v140, v141, v142, v143, v144, v120, v147, *(v67 + 72) + *(v67 + 80));
            goto LABEL_29;
          }
        }

        else if (a2)
        {
          v46 = MEMORY[0x277CCACA8];
          v47 = (*(*a1 + 64))(a1);
          v48 = MEMORY[0x277CCACA8];
          v49 = a1[15];
          v50 = (*(*a1 + 200))(a1);
          if (v47)
          {
            v57 = objc_msgSend_stringWithFormat_(v48, v51, @"[%lu] %@ %p %@", v52, v53, v54, v55, v56, v49, v50, a1[14], v47);
          }

          else
          {
            v57 = objc_msgSend_stringWithFormat_(v48, v51, @"[%lu] %@ %p", v52, v53, v54, v55, v56, v49, v50, a1[14]);
          }

          v93 = objc_msgSend_cStringUsingEncoding_(v57, v58, 4, v59, v60, v61, v62, v63);
          v94 = (*(*v45 + 64))(v45);
          v95 = MEMORY[0x277CCACA8];
          v96 = v45[15];
          v97 = (*(*v45 + 200))(v45);
          if (v94)
          {
            v104 = objc_msgSend_stringWithFormat_(v95, v98, @"[%lu] %@ %p %@", v99, v100, v101, v102, v103, v96, v97, v45[14], v94);
          }

          else
          {
            v104 = objc_msgSend_stringWithFormat_(v95, v98, @"[%lu] %@ %p", v99, v100, v101, v102, v103, v96, v97, v45[14], v150);
          }

          v111 = objc_msgSend_cStringUsingEncoding_(v104, v105, 4, v106, v107, v108, v109, v110);
          v112 = *(v44 + 72) + *(v44 + 80);
          v149 = v112 - (*(*a1 + 32))(a1, 0);
          v92 = objc_msgSend_stringWithFormat_(v46, v113, @"Rejected contraction of %s into %s:\n\t\tthe intermediate image is read by another filter (%lu)", v114, v115, v116, v117, v118, v93, v111, v149);
          goto LABEL_29;
        }
      }
    }

    return 0;
  }

  if (!a2)
  {
    return 0;
  }

  v26 = MEMORY[0x277CCACA8];
  v27 = (*(*a1 + 64))(a1);
  v28 = MEMORY[0x277CCACA8];
  v29 = a1[15];
  v30 = (*(*a1 + 200))(a1);
  if (v27)
  {
    v37 = objc_msgSend_stringWithFormat_(v28, v31, @"[%lu] %@ %p %@", v32, v33, v34, v35, v36, v29, v30, a1[14], v27);
  }

  else
  {
    v37 = objc_msgSend_stringWithFormat_(v28, v31, @"[%lu] %@ %p", v32, v33, v34, v35, v36, v29, v30, a1[14]);
  }

  v145 = objc_msgSend_cStringUsingEncoding_(v37, v38, 4, v39, v40, v41, v42, v43);
  v92 = objc_msgSend_stringWithFormat_(v26, v86, @"Rejected contraction of %s:\n\t\tit uses MPSNNPaddingMethodCustom without MPSNNPaddingMethodCustomAllowForNodeFusion", v87, v88, v89, v90, v91, v145, v146, v148);
LABEL_29:
  v119 = v92;
  result = 0;
  *a2 = v119;
  return result;
}

unint64_t sub_239C10760(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = *(a2 + 120);
  v333 = 0;
  v5 = *(*(a1[4] + 8) + 24);
  if (v5)
  {
    v6 = &v333;
  }

  else
  {
    v6 = 0;
  }

  if ((*(*a2 + 312))(a2))
  {
    result = sub_239C10294(a2, v6, v7, v8, v9, v10, v11, v12);
    if (result)
    {
      v14 = result;
      v15 = *(a2 + 8);
      v16 = *(result + 8);
      v17 = *(a2 + 40);
      if (v17)
      {
        for (i = 0; i != v17; ++i)
        {
          v19 = *(*(a2 + 32) + 8 * i);
          if (v19)
          {
            result = (*(*a2 + 32))(a2, i);
            *(v19 + 72) -= result;
          }
        }
      }

      v61 = *(a2 + 64);
      if (v61)
      {
        for (j = 0; j != v61; ++j)
        {
          v63 = *(*(a2 + 56) + 8 * j);
          if (v63)
          {
            result = (*(*a2 + 40))(a2, j);
            *(v63 + 72) -= result;
          }
        }
      }

      *(v15 + 32) = v14;
      *(v14 + 8) = v15;
      *(v16 + 32) = a2;
      *(a2 + 8) = v16;
      *(a2 + 129) = 1;
      if (*(*(v3[4] + 8) + 24))
      {
        v64 = MEMORY[0x277CCACA8];
        v65 = (*(*a2 + 64))(a2);
        v66 = MEMORY[0x277CCACA8];
        v67 = *(a2 + 120);
        v68 = (*(*a2 + 200))(a2);
        if (v65)
        {
          v75 = objc_msgSend_stringWithFormat_(v66, v69, @"[%lu] %@ %p %@", v70, v71, v72, v73, v74, v67, v68, *(a2 + 112), v65);
        }

        else
        {
          v75 = objc_msgSend_stringWithFormat_(v66, v69, @"[%lu] %@ %p", v70, v71, v72, v73, v74, v67, v68, *(a2 + 112));
        }

        v83 = objc_msgSend_cStringUsingEncoding_(v75, v76, 4, v77, v78, v79, v80, v81);
        result = objc_msgSend_stringWithFormat_(v64, v84, @"Removed %s because it does nothing", v85, v86, v87, v88, v89, v83);
        *(*(*(v3[4] + 8) + 24) + 8 * v4) = result;
        *(*(*(v3[5] + 8) + 24) + v4) = 0;
      }

LABEL_106:
      v282 = v3[6];
LABEL_107:
      ++*(*(v282 + 8) + 24);
      return result;
    }
  }

  result = (*(*a2 + 320))(a2);
  if (result)
  {
    result = sub_239C10294(a2, v6, v20, v21, v22, v23, v24, v25);
    if (result)
    {
      v33 = result;
      if (*(*(v3[4] + 8) + 24))
      {
        v34 = v3;
        v35 = (*(*result + 64))(result);
        v36 = MEMORY[0x277CCACA8];
        v37 = v33[15];
        v38 = (*(*v33 + 200))(v33);
        if (v35)
        {
          v45 = objc_msgSend_stringWithFormat_(v36, v39, @"[%lu] %@ %p %@", v40, v41, v42, v43, v44, v37, v38, v33[14], v35);
        }

        else
        {
          v45 = objc_msgSend_stringWithFormat_(v36, v39, @"[%lu] %@ %p", v40, v41, v42, v43, v44, v37, v38, v33[14]);
        }

        v82 = objc_msgSend_cStringUsingEncoding_(v45, v46, 4, v47, v48, v49, v50, v51);
        v3 = v34;
      }

      else
      {
        v82 = 0;
      }

      result = (*(*v33 + 328))(v33, a2);
      if (result)
      {
        if (*(*(v3[4] + 8) + 24))
        {
          v90 = v82;
          v91 = MEMORY[0x277CCACA8];
          v92 = (*(*a2 + 64))(a2);
          v93 = MEMORY[0x277CCACA8];
          v94 = *(a2 + 120);
          v95 = (*(*a2 + 200))(a2);
          if (v92)
          {
            v102 = objc_msgSend_stringWithFormat_(v93, v96, @"[%lu] %@ %p %@", v97, v98, v99, v100, v101, v94, v95, *(a2 + 112), v92);
          }

          else
          {
            v102 = objc_msgSend_stringWithFormat_(v93, v96, @"[%lu] %@ %p", v97, v98, v99, v100, v101, v94, v95, *(a2 + 112), v328);
          }

          v267 = objc_msgSend_cStringUsingEncoding_(v102, v103, 4, v104, v105, v106, v107, v108);
          result = objc_msgSend_stringWithFormat_(v91, v268, @"Contracted %s into %s", v269, v270, v271, v272, v273, v267, v90);
          *(*(*(v3[4] + 8) + 24) + 8 * v4) = result;
          *(*(*(v3[5] + 8) + 24) + v4) = 0;
        }

        v274 = *(a2 + 8);
        v275 = v33[1];
        v276 = *(a2 + 40);
        if (v276)
        {
          for (k = 0; k != v276; ++k)
          {
            v278 = *(*(a2 + 32) + 8 * k);
            if (v278)
            {
              result = (*(*a2 + 32))(a2, k);
              *(v278 + 72) -= result;
            }
          }
        }

        v279 = *(a2 + 64);
        if (v279)
        {
          for (m = 0; m != v279; ++m)
          {
            v281 = *(*(a2 + 56) + 8 * m);
            if (v281)
            {
              result = (*(*a2 + 40))(a2, m);
              *(v281 + 72) -= result;
            }
          }
        }

        *(v274 + 32) = v33;
        v33[1] = v274;
        *(v275 + 32) = a2;
        *(a2 + 8) = v275;
        *(a2 + 129) = 1;
        goto LABEL_106;
      }
    }

    else
    {
      v82 = 0;
    }

    v109 = *(*(v3[4] + 8) + 24);
    if (v109)
    {
      v110 = v333 == 0;
    }

    else
    {
      v110 = 1;
    }

    if (!v110 && *(*(*(v3[5] + 8) + 24) + v4))
    {
      *(v109 + 8 * v4) = v333;
    }

    v332 = v3;
    v333 = 0;
    v111 = *(a2 + 40);
    if (v111)
    {
      v329 = v82;
      v330 = v4;
      v112 = 0;
      while (1)
      {
        v128 = *(*(a2 + 32) + 8 * v112);
        if (!v128)
        {
          goto LABEL_51;
        }

        v129 = *(v128 + 32);
        if (!v129)
        {
          goto LABEL_51;
        }

        v130 = *(v129 + 112);
        if (!objc_msgSend_paddingPolicy(v130, v26, v27, v28, v29, v30, v31, v32))
        {
          break;
        }

        v138 = objc_msgSend_paddingPolicy(v130, v131, v132, v133, v134, v135, v136, v137);
        result = objc_msgSend_paddingMethod(v138, v139, v140, v141, v142, v143, v144, v145);
        if ((result & 0x6000) != 0x4000)
        {
          break;
        }

        if (!v5)
        {
          goto LABEL_51;
        }

        v146 = MEMORY[0x277CCACA8];
        v147 = (*(*v129 + 64))(v129);
        v148 = MEMORY[0x277CCACA8];
        v149 = *(v129 + 120);
        v150 = (*(*v129 + 200))(v129);
        if (v147)
        {
          v157 = objc_msgSend_stringWithFormat_(v148, v151, @"[%lu] %@ %p %@", v152, v153, v154, v155, v156, v149, v150, *(v129 + 112), v147);
        }

        else
        {
          v157 = objc_msgSend_stringWithFormat_(v148, v151, @"[%lu] %@ %p", v152, v153, v154, v155, v156, v149, v150, *(v129 + 112), v328);
        }

        v324 = objc_msgSend_cStringUsingEncoding_(v157, v158, 4, v159, v160, v161, v162, v163);
        result = objc_msgSend_stringWithFormat_(v146, v194, @"Rejected contraction of %s:\n\t\tit uses MPSNNPaddingMethodCustom without MPSNNPaddingMethodCustomAllowForNodeFusion", v195, v196, v197, v198, v199, v324, v325, v327);
LABEL_50:
        v333 = result;
LABEL_51:
        if (v111 == ++v112)
        {
          v200 = *(*(v332[4] + 8) + 24);
          if (v200)
          {
            v201 = v333 == 0;
          }

          else
          {
            v201 = 1;
          }

          if (!v201 && *(*(*(v332[5] + 8) + 24) + v330))
          {
            *(v200 + 8 * v330) = v333;
          }

          return result;
        }
      }

      v164 = *(v128 + 72) + *(v128 + 80);
      result = (*(*a2 + 32))(a2, v112);
      if (v164 < result)
      {
        if (!v5)
        {
          goto LABEL_51;
        }

        v165 = MEMORY[0x277CCACA8];
        v166 = (*(*v129 + 64))(v129);
        v167 = MEMORY[0x277CCACA8];
        v168 = *(v129 + 120);
        v169 = (*(*v129 + 200))(v129);
        if (v166)
        {
          v328 = v166;
          v176 = objc_msgSend_stringWithFormat_(v167, v170, @"[%lu] %@ %p %@", v171, v172, v173, v174, v175, v168, v169, *(v129 + 112));
        }

        else
        {
          v176 = objc_msgSend_stringWithFormat_(v167, v170, @"[%lu] %@ %p", v171, v172, v173, v174, v175, v168, v169, *(v129 + 112));
        }

        v183 = objc_msgSend_cStringUsingEncoding_(v176, v177, 4, v178, v179, v180, v181, v182);
        v184 = (*(*a2 + 64))(a2);
        v185 = MEMORY[0x277CCACA8];
        v186 = *(a2 + 120);
        v187 = (*(*a2 + 200))(a2);
        if (v184)
        {
          v328 = v184;
          v113 = objc_msgSend_stringWithFormat_(v185, v188, @"[%lu] %@ %p %@", v189, v190, v191, v192, v193, v186, v187, *(a2 + 112));
        }

        else
        {
          v113 = objc_msgSend_stringWithFormat_(v185, v188, @"[%lu] %@ %p", v189, v190, v191, v192, v193, v186, v187, *(a2 + 112));
        }

        v120 = objc_msgSend_cStringUsingEncoding_(v113, v114, 4, v115, v116, v117, v118, v119);
        v121 = *(v128 + 72) + *(v128 + 80);
        v326 = v121 - (*(*a2 + 32))(a2, v112);
        result = objc_msgSend_stringWithFormat_(v165, v122, @"Rejected contraction of %s into %s:\n\t\tthe intermediate image is read by another filter (%lu)", v123, v124, v125, v126, v127, v183, v120, v326);
        goto LABEL_50;
      }

      v202 = *(v129 + 88);
      if (v202)
      {
        for (n = 0; v202 != n; ++n)
        {
          v218 = *(*(v129 + 80) + 8 * n);
          if (v218)
          {
            v219 = *(v218 + 80);
            if (*(v218 + 72) + v219)
            {
              if (v5)
              {
                goto LABEL_85;
              }
            }

            else if (v5 && (v219 & 1) != 0)
            {
LABEL_85:
              v331 = MEMORY[0x277CCACA8];
              v220 = (*(*v129 + 64))(v129);
              v221 = MEMORY[0x277CCACA8];
              v222 = *(v129 + 120);
              v223 = (*(*v129 + 200))(v129);
              if (v220)
              {
                v230 = objc_msgSend_stringWithFormat_(v221, v224, @"[%lu] %@ %p %@", v225, v226, v227, v228, v229, v222, v223, *(v129 + 112), v220);
              }

              else
              {
                v230 = objc_msgSend_stringWithFormat_(v221, v224, @"[%lu] %@ %p", v225, v226, v227, v228, v229, v222, v223, *(v129 + 112), v328);
              }

              v237 = objc_msgSend_cStringUsingEncoding_(v230, v231, 4, v232, v233, v234, v235, v236);
              v238 = (*(*a2 + 64))(a2);
              v239 = MEMORY[0x277CCACA8];
              v240 = *(a2 + 120);
              v241 = (*(*a2 + 200))(a2);
              if (v238)
              {
                v328 = v238;
                v204 = objc_msgSend_stringWithFormat_(v239, v242, @"[%lu] %@ %p %@", v243, v244, v245, v246, v247, v240, v241, *(a2 + 112));
              }

              else
              {
                v204 = objc_msgSend_stringWithFormat_(v239, v242, @"[%lu] %@ %p", v243, v244, v245, v246, v247, v240, v241, *(a2 + 112));
              }

              v211 = objc_msgSend_cStringUsingEncoding_(v204, v205, 4, v206, v207, v208, v209, v210);
              v333 = objc_msgSend_stringWithFormat_(v331, v212, @"Rejected contraction of %s into %s:\n\t\tit produces a state that is read at least once (%lu) or exported from the graph", v213, v214, v215, v216, v217, v237, v211, *(v218 + 72) + *(v218 + 80));
            }
          }
        }
      }

      v248 = *(v129 + 120);
      v249 = v329;
      if (*(*(v332[4] + 8) + 24))
      {
        v250 = (*(*a2 + 64))(a2);
        v251 = MEMORY[0x277CCACA8];
        v252 = *(a2 + 120);
        v253 = (*(*a2 + 200))(a2);
        if (v250)
        {
          v260 = objc_msgSend_stringWithFormat_(v251, v254, @"[%lu] %@ %p %@", v255, v256, v257, v258, v259, v252, v253, *(a2 + 112), v250);
        }

        else
        {
          v260 = objc_msgSend_stringWithFormat_(v251, v254, @"[%lu] %@ %p", v255, v256, v257, v258, v259, v252, v253, *(a2 + 112), v328);
        }

        v249 = objc_msgSend_cStringUsingEncoding_(v260, v261, 4, v262, v263, v264, v265, v266);
      }

      result = (*(*a2 + 336))(a2, v129);
      v283 = *(*(v332[4] + 8) + 24);
      if (result)
      {
        if (v283)
        {
          v284 = v249;
          v285 = MEMORY[0x277CCACA8];
          v286 = (*(*v129 + 64))(v129);
          v287 = MEMORY[0x277CCACA8];
          v288 = *(v129 + 120);
          v289 = (*(*v129 + 200))(v129);
          if (v286)
          {
            v296 = objc_msgSend_stringWithFormat_(v287, v290, @"[%lu] %@ %p %@", v291, v292, v293, v294, v295, v288, v289, *(v129 + 112), v286);
          }

          else
          {
            v296 = objc_msgSend_stringWithFormat_(v287, v290, @"[%lu] %@ %p", v291, v292, v293, v294, v295, v288, v289, *(v129 + 112), v328);
          }

          v304 = objc_msgSend_cStringUsingEncoding_(v296, v297, 4, v298, v299, v300, v301, v302);
          result = objc_msgSend_stringWithFormat_(v285, v305, @"Contracted %s into %s", v306, v307, v308, v309, v310, v304, v284);
          *(*(*(v332[4] + 8) + 24) + 8 * v248) = result;
          *(*(*(v332[5] + 8) + 24) + v248) = 0;
        }

        v311 = *(a2 + 40);
        if (v311)
        {
          v312 = 0;
          v313 = 0;
          v314 = **(v129 + 32);
          v315 = *(v129 + 8);
          v316 = *(a2 + 32);
          do
          {
            v317 = *(v316 + 8 * v313);
            if (v317 && *(v317 + 32) == v129)
            {
              ++v312;
              result = (*(*a2 + 32))(a2, v313);
              v316 = *(a2 + 32);
              *(v316 + 8 * v313) = v314;
              *(v314 + 72) += result;
              *(v317 + 72) -= result;
            }

            ++v313;
          }

          while (v311 != v313);
          if (v312)
          {
            v318 = *(v129 + 40);
            if (v318)
            {
              for (ii = 0; ii != v318; ++ii)
              {
                v320 = *(*(v129 + 32) + 8 * ii);
                if (v320)
                {
                  result = (*(*v129 + 32))(v129, ii);
                  *(v320 + 72) -= result;
                }
              }
            }

            v321 = *(v129 + 64);
            if (v321)
            {
              for (jj = 0; jj != v321; ++jj)
              {
                v323 = *(*(v129 + 56) + 8 * jj);
                if (v323)
                {
                  result = (*(*v129 + 40))(v129, jj);
                  *(v323 + 72) -= result;
                }
              }
            }

            **(v129 + 32) = v315;
            *(v129 + 129) = 1;
          }
        }

        v282 = v332[6];
        goto LABEL_107;
      }

      if (v283)
      {
        v303 = v333 == 0;
      }

      else
      {
        v303 = 1;
      }

      if (!v303 && *(*(*(v332[5] + 8) + 24) + v248))
      {
        *(v283 + 8 * v248) = v333;
      }
    }
  }

  else
  {
    v52 = *(*(v3[4] + 8) + 24);
    if (v52)
    {
      if (!*(v52 + 8 * v4))
      {
        result = (*(*a2 + 72))(a2);
        v333 = result;
        if (result)
        {
          if (*(*(v3[4] + 8) + 24) && *(*(*(v3[5] + 8) + 24) + v4))
          {
            v53 = MEMORY[0x277CCACA8];
            v54 = sub_239C18DB8(a2);
            result = objc_msgSend_stringWithFormat_(v53, v55, @"Can not contract %s: \n\t\t%@", v56, v57, v58, v59, v60, v54, v333);
            *(*(*(v3[4] + 8) + 24) + 8 * v4) = result;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_239C11684(uint64_t result, void *a2)
{
  v2 = *(result + 40);
  v3 = v2[7];
  if (v3)
  {
    v4 = 0;
    v5 = a2[1];
    while (*(v2[6] + 8 * v4) != v5)
    {
      if (v3 == ++v4)
      {
        return result;
      }
    }

    if (v4 != -1)
    {
      v6 = *(v5 + 72);
      v7 = *(v5 + 80);
      if (!(v6 + v7) && (v7 & 1) == 0)
      {
        v8 = a2[11];
        if (v8)
        {
          v9 = a2[10];
          while (1)
          {
            v10 = *v9;
            if (*v9)
            {
              v11 = *(v10 + 72);
              v12 = *(v10 + 80);
              if (v11 + v12 || (v12 & 1) != 0)
              {
                break;
              }
            }

            ++v9;
            if (!--v8)
            {
              goto LABEL_16;
            }
          }
        }

        else
        {
LABEL_16:
          v13 = result;
          result = (*(*a2 + 344))(a2);
          if ((result & 1) == 0)
          {
            v15 = a2;
            if (a2[5] <= 1uLL)
            {
              v16 = *a2[4];
              if (v16)
              {
                if (*(v16 + 32))
                {
                  v17 = v13;
                  if ((*(v2[15] + *MEMORY[0x277CD7378]) & 0x10) != 0)
                  {
                    v18 = *MEMORY[0x277D85DF8];
                    v19 = sub_239C18DB8(v15);
                    result = fprintf(v18, "\tPruned %s\n", v19);
                    v17 = v13;
                  }

                  *(v2[6] + 8 * v4) = v16;
                  ++*(*(*(v17 + 32) + 8) + 24);
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_239C1181C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 40);
  result = (*(*a2 + 80))(a2);
  if (result == 5)
  {
    if ((*(a2 + 129) & 1) == 0)
    {
      v11 = a2[1];
      if (v11)
      {
        if ((*(v11 + 80) & 1) == 0 && (*(v11 + 81) & 1) == 0)
        {
          v12 = *(v11 + 16);
          if (v12)
          {
            v13 = 0;
            while (1)
            {
              result = *(*(v11 + 8) + 8 * v13);
              if (result)
              {
                result = (*(*result + 80))(result);
                if (result == 4)
                {
                  break;
                }
              }

              if (v12 == ++v13)
              {
                goto LABEL_37;
              }
            }
          }

          else
          {
LABEL_37:
            v42 = a2[8];
            if (v42)
            {
              v43 = 0;
              while (1)
              {
                v44 = *(a2[7] + 8 * v43);
                if (v44)
                {
                  result = *(v44 + 32);
                  if (result)
                  {
                    result = (*(*result + 80))(result);
                    if (result == 4)
                    {
                      break;
                    }
                  }
                }

                if (v42 == ++v43)
                {
                  return result;
                }
              }

              if ((*(a2 + 129) & 1) == 0)
              {
                *(a2 + 129) = 1;
                *(a2[1] + 40) = *a2[4];
              }

              v45 = v11;
              do
              {
                v46 = v45;
                v45 = *(v45 + 40);
              }

              while (v45);
              if (v11 != v46)
              {
                v47 = *(v11 + 72) + *(v11 + 80);
                *(v46 + 72) += v47;
                *(v11 + 72) -= v47;
              }

              v48 = a2[5];
              if (v48)
              {
                for (i = 0; i != v48; ++i)
                {
                  v50 = *(a2[4] + 8 * i);
                  if (v50)
                  {
                    do
                    {
                      v51 = v50;
                      v50 = *(v50 + 40);
                    }

                    while (v50);
                    result = (*(*a2 + 32))(a2, i);
                    *(v51 + 72) -= result;
                  }
                }
              }

              v52 = a2[8];
              if (v52)
              {
                for (j = 0; j != v52; ++j)
                {
                  v54 = *(a2[7] + 8 * j);
                  if (v54)
                  {
                    do
                    {
                      v55 = v54;
                      v54 = *(v54 + 40);
                    }

                    while (v54);
                    result = (*(*a2 + 40))(a2, j);
                    *(v55 + 72) -= result;
                  }
                }
              }

              if ((*(*(v4 + 120) + *MEMORY[0x277CD7378]) & 0x10) != 0)
              {
                v56 = *MEMORY[0x277D85DF8];
                sub_239C18DB8(a2);
                result = fprintf(v56, "\tOptimized away %s\n");
              }

              goto LABEL_59;
            }
          }
        }
      }
    }
  }

  else if (result == 4 && (*(a2 + 129) & 1) == 0)
  {
    v6 = a2[4];
    v7 = a2[5];
    if (v7)
    {
      v8 = 0;
      v9 = v7 - 1;
      v10 = v6 + 1;
      do
      {
        v14 = v6[v8];
        if (v14)
        {
          if (*(v14 + 80) & 1) != 0 || !*(v14 + 32) || *(v14 + 72) > 1uLL || (*(v14 + 81))
          {
            return result;
          }

          v15 = v9;
          v16 = v10;
          while (v15)
          {
            v17 = *v16++;
            --v15;
            if (v14 == v17)
            {
              return result;
            }
          }
        }

        ++v8;
        ++v10;
        --v9;
      }

      while (v8 != v7);
    }

    *(a2 + 129) = 1;
    v18 = *(*v6 + 32);
    --*(*v6 + 72);
    v19 = a2[1];
    if (a2[2])
    {
      v19 = a2[2];
    }

    if (v7 < 2)
    {
      v23 = v18;
    }

    else
    {
      v20 = v7 - 1;
      v21 = v6 + 1;
      do
      {
        v22 = *v21++;
        v23 = *(v22 + 32);
        *(v18 + 16) = v19;
        *(v18 + 24) = v23;
        --*(v22 + 72);
        v18 = v23;
        --v20;
      }

      while (v20);
    }

    *(v23 + 16) = v19;
    if ((*(*(v4 + 120) + *MEMORY[0x277CD7378]) & 0x10) != 0)
    {
      v24 = *MEMORY[0x277D85DF8];
      if (a2)
      {
        v25 = (*(*a2 + 64))(a2);
        v26 = MEMORY[0x277CCACA8];
        v27 = a2[15];
        v28 = (*(*a2 + 200))(a2);
        if (v25)
        {
          v35 = objc_msgSend_stringWithFormat_(v26, v29, @"[%lu] %@ %p %@", v30, v31, v32, v33, v34, v27, v28, a2[14], v25);
        }

        else
        {
          v35 = objc_msgSend_stringWithFormat_(v26, v29, @"[%lu] %@ %p", v30, v31, v32, v33, v34, v27, v28, a2[14]);
        }

        objc_msgSend_cStringUsingEncoding_(v35, v36, 4, v37, v38, v39, v40, v41);
      }

      result = fprintf(v24, "\t\tOptimized away %s\n");
    }

LABEL_59:
    ++*(*(*(a1 + 32) + 8) + 24);
  }

  return result;
}

uint64_t sub_239C11CD4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((*(a2 + 129) & 1) == 0)
  {
    v9 = result;
    if (*(a2 + 16))
    {
      v10 = *(a2 + 16);
    }

    else
    {
      v10 = *(a2 + 8);
    }

    v11 = *(a2 + 112);
    if (v10)
    {
      v12 = *(result + 40);
      v13 = *(v12 + 56);
      if (v13)
      {
        v14 = 0;
        v15 = *(v12 + 48);
        while (*(v15 + 8 * v14) != v10)
        {
          if (v13 == ++v14)
          {
            v14 = -1;
            break;
          }
        }

        v16 = v14 != -1;
      }

      else
      {
        v16 = 0;
      }

      v51 = MEMORY[0x277D85DF8];
      if (!(*(v10 + 72) + (*(v10 + 80) & 1)) && !v16 && (*(v10 + 80) & 1) == 0)
      {
        if (MTLReportFailureTypeEnabled())
        {
          v59 = objc_opt_class();
          v60 = NSStringFromClass(v59);
          v194 = objc_msgSend_label(v11, v61, v62, v63, v64, v65, v66, v67);
          v195 = objc_msgSend_debugDescription(v11, v68, v69, v70, v71, v72, v73, v74);
          v192 = v11;
          v193 = v60;
          MTLReportFailure();
        }

        v75 = *v51;
        if (v11)
        {
          v76 = MEMORY[0x277CCACA8];
          v77 = objc_opt_class();
          v78 = NSStringFromClass(v77);
          v85 = objc_msgSend_stringWithFormat_(v76, v79, @"%@ %p", v80, v81, v82, v83, v84, v78, v11);
          v93 = objc_msgSend_label(v11, v86, v87, v88, v89, v90, v91, v92);
          if (v93)
          {
            v85 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v94, @"%@ %@", v95, v96, v97, v98, v99, v85, v93);
          }

          v100 = objc_msgSend_cStringUsingEncoding_(v85, v94, 4, v95, v96, v97, v98, v99);
        }

        else
        {
          v100 = "<nil>";
        }

        v101 = objc_msgSend_debugDescription(v11, v52, v53, v54, v55, v56, v57, v58, v192, v193, v194, v195);
        v108 = objc_msgSend_cStringUsingEncoding_(v101, v102, 4, v103, v104, v105, v106, v107);
        result = fprintf(v75, "\tError: nothing reads the result from node %s. \n\t\tPossibly you forgot to use node.result in another filter or set node.exportFromGraph=YES.\n\t\t%s\n", v100, v108);
        ++*(*(*(v9 + 32) + 8) + 24);
      }

      v109 = *(a2 + 88);
      if (v109)
      {
        for (i = 0; v109 != i; ++i)
        {
          v118 = *(*(a2 + 80) + 8 * i);
          if (v118)
          {
            if (*(v118 + 72) + *(v118 + 80))
            {
              continue;
            }

            if (!(*(v10 + 72) + *(v10 + 80)) && MTLReportFailureTypeEnabled())
            {
              v176 = objc_opt_class();
              v177 = NSStringFromClass(v176);
              v194 = objc_msgSend_label(v11, v178, v179, v180, v181, v182, v183, v184);
              v195 = objc_msgSend_debugDescription(v11, v185, v186, v187, v188, v189, v190, v191);
              v192 = v11;
              v193 = v177;
              MTLReportFailure();
            }

            v119 = *v51;
            if (v11)
            {
              v120 = MEMORY[0x277CCACA8];
              v121 = objc_opt_class();
              v122 = NSStringFromClass(v121);
              v129 = objc_msgSend_stringWithFormat_(v120, v123, @"%@ %p", v124, v125, v126, v127, v128, v122, v11);
              v137 = objc_msgSend_label(v11, v130, v131, v132, v133, v134, v135, v136);
              if (v137)
              {
                v129 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v138, @"%@ %@", v139, v140, v141, v142, v143, v129, v137);
              }

              objc_msgSend_cStringUsingEncoding_(v129, v138, 4, v139, v140, v141, v142, v143);
            }

            v169 = objc_msgSend_debugDescription(v11, a2, a3, a4, a5, a6, a7, a8, v192, v193, v194, v195);
            objc_msgSend_cStringUsingEncoding_(v169, v170, 4, v171, v172, v173, v174, v175);
            result = fprintf(v119, "\tError: nothing reads the result state %lu from node %s. \n\t\t%s\n");
          }

          else
          {
            v144 = *v51;
            if (v11)
            {
              v145 = MEMORY[0x277CCACA8];
              v146 = objc_opt_class();
              v147 = NSStringFromClass(v146);
              v154 = objc_msgSend_stringWithFormat_(v145, v148, @"%@ %p", v149, v150, v151, v152, v153, v147, v11);
              v162 = objc_msgSend_label(v11, v155, v156, v157, v158, v159, v160, v161);
              if (v162)
              {
                v154 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v163, @"%@ %@", v164, v165, v166, v167, v168, v154, v162);
              }

              objc_msgSend_cStringUsingEncoding_(v154, v163, 4, v164, v165, v166, v167, v168);
            }

            v111 = objc_msgSend_debugDescription(v11, a2, a3, a4, a5, a6, a7, a8);
            objc_msgSend_cStringUsingEncoding_(v111, v112, 4, v113, v114, v115, v116, v117);
            result = fprintf(v144, "\tError: node %s has a missing result state? %lu\n\t\t%s\n");
          }

          ++*(*(*(v9 + 32) + 8) + 24);
        }
      }
    }

    else
    {
      if (MTLReportFailureTypeEnabled())
      {
        v17 = objc_opt_class();
        NSStringFromClass(v17);
        objc_msgSend_label(v11, v18, v19, v20, v21, v22, v23, v24);
        MTLReportFailure();
      }

      v25 = *MEMORY[0x277D85DF8];
      if (v11)
      {
        v26 = MEMORY[0x277CCACA8];
        v27 = objc_opt_class();
        v28 = NSStringFromClass(v27);
        v35 = objc_msgSend_stringWithFormat_(v26, v29, @"%@ %p", v30, v31, v32, v33, v34, v28, v11);
        v43 = objc_msgSend_label(v11, v36, v37, v38, v39, v40, v41, v42);
        if (v43)
        {
          v35 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v44, @"%@ %@", v45, v46, v47, v48, v49, v35, v43);
        }

        v50 = objc_msgSend_cStringUsingEncoding_(v35, v44, 4, v45, v46, v47, v48, v49);
      }

      else
      {
        v50 = "<nil>";
      }

      result = fprintf(v25, "\tError: node %s has no result image. All MPS nodes are required to have a result.\n", v50);
      ++*(*(*(v9 + 32) + 8) + 24);
    }
  }

  return result;
}

uint64_t sub_239C12190(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a5 + 40);
  *(a5 + 40) = v10 + 1;
  v11 = *(a1 + 32);
  do
  {
    v12 = a3;
    a3 = *(a3 + 40);
  }

  while (a3);
  v13 = objc_msgSend_objectAtIndexedSubscript_(v11, a2, *(v12 + 64), a4, a5, a6, a7, a8);
  objc_msgSend_setObject_atIndexedSubscript_(*(a5 + 8), v14, v13, v10, v15, v16, v17, v18);
  result = objc_msgSend_objectAtIndexedSubscript_(*(a5 + 8), v19, v10, v20, v21, v22, v23, v24);
  if (*(result + *MEMORY[0x277CD7320] + 56))
  {
    objc_msgSend_objectAtIndexedSubscript_(*(a5 + 8), v26, v10, v27, v28, v29, v30, v31);
    result = objc_msgSend_objectAtIndexedSubscript_(*(a5 + 8), v32, v10, v33, v34, v35, v36, v37);
    if (!*(result + *MEMORY[0x277CD7490]) && (*(a2 + 129) & 1) == 0)
    {
      result = MTLReportFailureTypeEnabled();
      if (result)
      {

        return MTLReportFailure();
      }
    }
  }

  return result;
}

uint64_t sub_239C1228C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 32), a2, *(a3 + 64), a4, a5, a6, a7, a8);
  v15 = *(a5 + 16);
  v16 = *(a5 + 48);
  *(a5 + 48) = v16 + 1;

  return objc_msgSend_setObject_atIndexedSubscript_(v15, v9, v10, v16, v11, v12, v13, v14);
}

__n128 sub_239C122DC(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a1[3] = result;
  return result;
}

uint64_t sub_239C122F8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a1 + 88);
  v12 = *(a2 + 8);
  v13 = *(v12 + 64);
  v14 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 32), a2, v13, a4, a5, a6, a7, a8);
  v21 = v14;
  if (v14)
  {
    v22 = *(a1 + 40) == v14;
  }

  else
  {
    v22 = 1;
  }

  if (v22)
  {
    v54 = 0;
    v23 = *(v11 + 56);
    if (!v23)
    {
      goto LABEL_13;
    }

    v24 = 0;
    while (*(*(v11 + 48) + 8 * v24) != v12)
    {
      if (v23 == ++v24)
      {
        goto LABEL_13;
      }
    }

    if (v24 == -1)
    {
LABEL_13:
      v25 = 0;
    }

    else
    {
      v25 = *(a1 + 56);
    }

    v21 = (*(*a2 + 208))(a2, a3[1], a3[2], *(a1 + 48), *(a1 + 96), v25, &v54);
    objc_msgSend_setObject_atIndexedSubscript_(*(a1 + 32), v26, v21, v13, v27, v28, v29, v30);
    a3[4] = v21;
    if (objc_msgSend_storageMode(v54, v31, v32, v33, v34, v35, v36, v37) == 2)
    {
      sub_239C12530(*(*(a1 + 80) + 8) + 48, v54);
    }
  }

  v38 = *(a2 + 88);
  if (v38)
  {
    for (i = 0; i != v38; ++i)
    {
      v40 = *(*(a2 + 80) + 8 * i);
      v41 = *(v40 + 64);
      v42 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 64), v15, v41, v16, v17, v18, v19, v20);
      if (!v42 || *(a1 + 72) == v42)
      {
        if (*(v40 + 80) == 1)
        {
          v43 = *(a1 + 104);
        }

        else
        {
          v43 = 1;
        }

        v44 = (*(*a2 + 224))(a2, a3[1], a3[2], v21, i, *(a1 + 48), v43 & 1);
        if (v44)
        {
          v45 = v44;
          objc_msgSend_setObject_atIndexedSubscript_(*(a1 + 64), v15, v44, v41, v17, v18, v19, v20);
          v46 = a3[3];
          v47 = a3[7];
          a3[7] = v47 + 1;
          objc_msgSend_setObject_atIndexedSubscript_(v46, v48, v45, v47, v49, v50, v51, v52);
        }
      }
    }
  }

  return (*(*a2 + 168))(a2, *(a1 + 48), a3[1], a3[2], a3[3], v21);
}

void sub_239C12530(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (*(a1 + 8) >= v4)
  {
    v5 = 2;
    if (v4 > 2)
    {
      v5 = *(a1 + 16);
    }

    v6 = (v4 + v5 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v7 = malloc_type_malloc(8 * v6, 0x80040B8603338uLL);
    if (v7)
    {
      v8 = v7;
      v9 = *(a1 + 8);
      if (v9)
      {
        memcpy(v7, *a1, 8 * v9);
      }

      free(*a1);
      *(a1 + 16) = v6;
      *a1 = v8;
    }

    else if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }
  }

  *(*a1 + 8 * (*(a1 + 8))++) = a2;
}

uint64_t sub_239C12608(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 32), a2, *(*(a2 + 8) + 64), a4, a5, a6, a7, a8);
  a3[4] = v17;
  v18 = *(a2 + 88);
  if (v18)
  {
    for (i = 0; i != v18; ++i)
    {
      v20 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 40), v11, *(*(*(a2 + 80) + 8 * i) + 64), v12, v13, v14, v15, v16);
      v21 = a3[3];
      v22 = a3[7];
      a3[7] = v22 + 1;
      objc_msgSend_setObject_atIndexedSubscript_(v21, v23, v20, v22, v24, v25, v26, v27);
    }
  }

  v28 = *(a2 + 16);
  if (v28)
  {
    v35 = (*(*a2 + 48))(a2);
    v36 = *(a2 + 24);
    if (v36)
    {
      (**v36)(v36, (v35 + *(v17 + *MEMORY[0x277CD72F8]) + 3) & 0xFFFFFFFFFFFFFFFCLL);
    }

    v17 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 32), v29, *(v28 + 64), v30, v31, v32, v33, v34);
  }

  (*(*a2 + 136))(a2, *(a1 + 48), a3[1], a3[2], a3[3], v17);
  result = (*(*a2 + 144))(a2, *(a1 + 48), a3[1], a3[2], a3[3], v17);
  if (*(a1 + 64) == 1 && ++*(*(*(a1 + 56) + 8) + 24) >= 0xAuLL)
  {
    result = objc_msgSend_commitAndContinue(*(a1 + 48), v38, v39, v40, v41, v42, v43, v44);
    *(*(*(a1 + 56) + 8) + 24) -= 10;
  }

  if (v28)
  {
    v45 = *(*a2 + 56);

    return v45(a2);
  }

  return result;
}

void sub_239C12830(uint64_t a1)
{
  v1 = *(a1 + 32);
  dispatch_semaphore_signal(*(v1 + 200));
  v2 = *(v1 + 120);
}

uint64_t sub_239C1286C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a5 + 40);
  *(a5 + 40) = v10 + 1;
  do
  {
    v11 = a3;
    a3 = *(a3 + 40);
  }

  while (a3);
  v12 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 32), a2, *(v11 + 64), a4, a5, a6, a7, a8);
  objc_msgSend_setObject_atIndexedSubscript_(*(a5 + 8), v13, v12, v10, v14, v15, v16, v17);
  v24 = objc_msgSend_objectAtIndexedSubscript_(*(a5 + 8), v18, v10, v19, v20, v21, v22, v23);
  result = objc_msgSend_objectAtIndexedSubscript_(v24, v25, 0, v26, v27, v28, v29, v30);
  if (*(result + *MEMORY[0x277CD7320] + 56))
  {
    v38 = objc_msgSend_objectAtIndexedSubscript_(*(a5 + 8), v32, v10, v33, v34, v35, v36, v37);
    objc_msgSend_objectAtIndexedSubscript_(v38, v39, 0, v40, v41, v42, v43, v44);
    v51 = objc_msgSend_objectAtIndexedSubscript_(*(a5 + 8), v45, v10, v46, v47, v48, v49, v50);
    result = objc_msgSend_objectAtIndexedSubscript_(v51, v52, 0, v53, v54, v55, v56, v57);
    if (!*(result + *MEMORY[0x277CD7490]) && (*(a2 + 129) & 1) == 0)
    {
      result = MTLReportFailureTypeEnabled();
      if (result)
      {

        return MTLReportFailure();
      }
    }
  }

  return result;
}

uint64_t sub_239C12980(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 32), a2, *(a3 + 64), a4, a5, a6, a7, a8);
  v15 = *(a5 + 16);
  v16 = *(a5 + 48);
  *(a5 + 48) = v16 + 1;

  return objc_msgSend_setObject_atIndexedSubscript_(v15, v9, v10, v16, v11, v12, v13, v14);
}

NSUInteger sub_239C129D0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a1 + 104);
  v12 = *(a2 + 8);
  v13 = *(v12 + 64);
  v14 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 32), a2, v13, a4, a5, a6, a7, a8);
  v21 = v14;
  if (v14)
  {
    v22 = *(a1 + 40) == v14;
  }

  else
  {
    v22 = 1;
  }

  if (v22)
  {
    v94 = 0;
    v23 = *(v11 + 56);
    if (!v23)
    {
      goto LABEL_13;
    }

    v24 = 0;
    while (*(*(v11 + 48) + 8 * v24) != v12)
    {
      if (v23 == ++v24)
      {
        goto LABEL_13;
      }
    }

    if (v24 == -1)
    {
LABEL_13:
      v25 = 0;
    }

    else
    {
      v25 = *(a1 + 56);
    }

    v21 = (*(*a2 + 216))(a2, a3[1], a3[2], *(a1 + 48), *(a1 + 112), v25, &v94);
    objc_msgSend_setObject_atIndexedSubscript_(*(a1 + 32), v26, v21, v13, v27, v28, v29, v30);
    a3[4] = v21;
    if (v94)
    {
      v32 = objc_msgSend_count(v94, v15, v31, v16, v17, v18, v19, v20);
      if (v32)
      {
        v33 = v32;
        v34 = 0;
        for (i = objc_msgSend_objectAtIndexedSubscript_(v94, v15, 0, v16, v17, v18, v19, v20); ; i = objc_msgSend_objectAtIndexedSubscript_(v94, v15, v34, v16, v17, v18, v19, v20))
        {
          if (objc_msgSend_storageMode(i, v36, v37, v38, v39, v40, v41, v42) == 2)
          {
            v43 = *(*(a1 + 80) + 8);
            v44 = objc_msgSend_objectAtIndexedSubscript_(v94, v15, v34, v16, v17, v18, v19, v20);
            sub_239C12530(v43 + 48, v44);
          }

          if (v33 == ++v34)
          {
            break;
          }
        }
      }
    }

    v45 = *(v12 + 72) + *(v12 + 80);
    *(v12 + 96) = v45;
    if (v45)
    {
      *(*(*(a1 + 88) + 8) + 24) += MPSImageBatchResourceSize(v21);
      v46 = *(*(*(a1 + 88) + 8) + 24);
      v47 = *(*(a1 + 96) + 8);
      if (v46 <= *(v47 + 24))
      {
        v46 = *(v47 + 24);
      }

      *(v47 + 24) = v46;
    }
  }

  v48 = *(a2 + 88);
  if (v48)
  {
    for (j = 0; j != v48; ++j)
    {
      v50 = *(*(a2 + 80) + 8 * j);
      v51 = *(v50 + 64);
      v52 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 64), v15, v51, v16, v17, v18, v19, v20);
      if (!v52 || *(a1 + 72) == v52)
      {
        v53 = *(v50 + 80) == 1 ? *(a1 + 120) : 1;
        v54 = (*(*a2 + 232))(a2, a3[1], a3[2], v21, j, *(a1 + 48), v53 & 1);
        if (v54)
        {
          v55 = v54;
          objc_msgSend_setObject_atIndexedSubscript_(*(a1 + 64), v15, v54, v51, v17, v18, v19, v20);
          v56 = a3[3];
          v57 = a3[7];
          a3[7] = v57 + 1;
          objc_msgSend_setObject_atIndexedSubscript_(v56, v58, v55, v57, v59, v60, v61, v62);
          v63 = *(v50 + 72) + *(v50 + 80);
          *(v50 + 96) = v63;
          if (v63)
          {
            *(*(*(a1 + 88) + 8) + 24) += MPSStateBatchResourceSize(v55);
            v64 = *(*(*(a1 + 88) + 8) + 24);
            v65 = *(*(a1 + 96) + 8);
            if (v64 <= *(v65 + 24))
            {
              v64 = *(v65 + 24);
            }

            *(v65 + 24) = v64;
          }
        }
      }
    }
  }

  v66 = (*(*a2 + 304))(a2, a3[1], a3[2], v21);
  v67 = *(*(a1 + 96) + 8);
  v68 = *(*(*(a1 + 88) + 8) + 24) + v66;
  if (*(v67 + 24) > v68)
  {
    v68 = *(v67 + 24);
  }

  *(v67 + 24) = v68;
  result = (*(*a2 + 176))(a2, *(a1 + 48), a3[1], a3[2], a3[3], v21);
  if ((*(a2 + 129) & 1) == 0)
  {
    v70 = *(a2 + 40);
    if (v70)
    {
      for (k = 0; k != v70; ++k)
      {
        v72 = *(*(a2 + 32) + 8 * k);
        if (v72)
        {
          result = (*(*a2 + 32))(a2, k);
          if (result)
          {
            do
            {
              v79 = v72;
              v72 = v72[5];
            }

            while (v72);
            if (v79[4])
            {
              v80 = v79[12] - result;
              v79[12] = v80;
              if (!v80)
              {
                v81 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 32), v73, v79[8], v74, v75, v76, v77, v78);
                result = MPSImageBatchResourceSize(v81);
                *(*(*(a1 + 88) + 8) + 24) -= result;
              }
            }
          }
        }
      }
    }

    v82 = *(a2 + 64);
    if (v82)
    {
      for (m = 0; m != v82; ++m)
      {
        v84 = *(*(a2 + 56) + 8 * m);
        if (v84)
        {
          result = (*(*a2 + 40))(a2, m);
          if (result)
          {
            do
            {
              v91 = v84;
              v84 = v84[5];
            }

            while (v84);
            if (v91[4])
            {
              v92 = v91[12] - result;
              v91[12] = v92;
              if (!v92)
              {
                v93 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 64), v85, v91[8], v86, v87, v88, v89, v90);
                result = MPSStateBatchResourceSize(v93);
                *(*(*(a1 + 88) + 8) + 24) -= result;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_239C12E98(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 32), a2, *(*(a2 + 8) + 64), a4, a5, a6, a7, a8);
  a3[4] = v17;
  v18 = *(a2 + 88);
  if (v18)
  {
    for (i = 0; i != v18; ++i)
    {
      v20 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 40), v11, *(*(*(a2 + 80) + 8 * i) + 64), v12, v13, v14, v15, v16);
      v21 = a3[3];
      v22 = a3[7];
      a3[7] = v22 + 1;
      objc_msgSend_setObject_atIndexedSubscript_(v21, v23, v20, v22, v24, v25, v26, v27);
    }
  }

  v28 = *(a2 + 16);
  if (v28)
  {
    v29 = (*(*a2 + 48))(a2);
    v42 = objc_msgSend_objectAtIndexedSubscript_(v17, v30, 0, v31, v32, v33, v34, v35);
    v43 = *(a2 + 24);
    if (v43)
    {
      (**v43)(v43, (v29 + *(v42 + *MEMORY[0x277CD72F8]) + 3) & 0xFFFFFFFFFFFFFFFCLL);
    }

    v17 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 32), v36, *(v28 + 64), v37, v38, v39, v40, v41);
  }

  (*(*a2 + 152))(a2, *(a1 + 48), a3[1], a3[2], a3[3], v17);
  result = (*(*a2 + 160))(a2, *(a1 + 48), a3[1], a3[2], a3[3], v17);
  if (*(a1 + 64) == 1 && ++*(*(*(a1 + 56) + 8) + 24) >= 0xAuLL)
  {
    result = objc_msgSend_commitAndContinue(*(a1 + 48), v45, v46, v47, v48, v49, v50, v51);
    *(*(*(a1 + 56) + 8) + 24) -= 10;
  }

  if (v28)
  {
    v52 = *(*a2 + 56);

    return v52(a2);
  }

  return result;
}

void sub_239C130F8(uint64_t a1, uint64_t a2)
{
  v4 = *(*(a2 + 8) + 88);
  if (v4 >= 6)
  {
    if (MTLReportFailureTypeEnabled())
    {
      v6 = objc_opt_class();
      NSStringFromClass(v6);
      MTLReportFailure();
    }

    v5 = 0;
  }

  else
  {
    v5 = off_278B2F240[v4];
  }

  v7 = objc_alloc(MEMORY[0x277CCACA8]);
  v8 = *(*(*(a1 + 32) + 8) + 40);
  v9 = sub_239C13204(a2);
  v16 = objc_msgSend_initWithFormat_(v7, v10, @"%@\n%@\n\tresultFormat:  %s\n", v11, v12, v13, v14, v15, v8, v9, v5);
  if (v16)
  {
    v17 = v16;

    *(*(*(a1 + 32) + 8) + 40) = v17;
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

uint64_t sub_239C13204(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  memcpy(__dst, "<empty>", sizeof(__dst));
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = snprintf(__dst, 0x400uLL, "%lu", *(**(a1 + 32) + 64));
    if (v2 != 1)
    {
      v4 = v3;
      for (i = 1; i != v2; ++i)
      {
        v4 += snprintf(&__dst[v4], 1024 - v4, ", %lu", *(*(*(a1 + 32) + 8 * i) + 64));
      }
    }
  }

  v6 = MEMORY[0x277CCACA8];
  v14 = (*(*a1 + 200))(a1);
  v15 = *(a1 + 120);
  v16 = *(a1 + 64);
  v17 = *(*(a1 + 8) + 64);
  v18 = *(a1 + 88);
  v19 = *(a1 + 104);
  if (!v19)
  {
    v19 = *(a1 + 112);
  }

  v20 = objc_msgSend_debugDescription(v19, v7, v8, v9, v10, v11, v12, v13);
  return objc_msgSend_stringWithFormat_(v6, v21, @"Filter: %@ {%lu}\n\tSource Images: %lu {%s}\n\tSource States: %lu\n\tResult Images: %lu {%lu}\n\tResult States: %lu\n\tFilter:\n  %@\n", v22, v23, v24, v25, v26, v14, v15, v2, __dst, v16, 1, v17, v18, v20);
}

void sub_239C13390(void *a1)
{
  v2 = a1[20];
  if (v2)
  {
    for (i = 0; i != v2; ++i)
    {
      v4 = *(a1[19] + 8 * i);
      if (v4)
      {
        v5 = *(v4 + 32);
        if (v5 != 0xFFFF && a1[17] > v5)
        {
          v7 = *(a1[16] + 8 * v5);
          *(v4 + 32) = v7;
          v8 = *(v4 + 16);
          if (v8)
          {
LABEL_13:
            v9 = *(v4 + 8);
            v10 = a1[16];
            do
            {
              while (1)
              {
                v11 = *v9;
                if (*v9 == 0xFFFF || a1[17] <= v11)
                {
                  break;
                }

                *v9++ = *(v10 + 8 * v11);
                if (!--v8)
                {
                  goto LABEL_20;
                }
              }

              *v9++ = 0;
              --v8;
            }

            while (v8);
LABEL_20:
            v13 = *(v4 + 32);
            *(v4 + 83) = 0;
            if (v13)
            {
              continue;
            }

LABEL_21:
            sub_239C0F98C(a1, v4);
            continue;
          }
        }

        else
        {
          v7 = 0;
          *(v4 + 32) = 0;
          v8 = *(v4 + 16);
          if (v8)
          {
            goto LABEL_13;
          }
        }

        *(v4 + 83) = 0;
        if (!v7)
        {
          goto LABEL_21;
        }
      }
    }
  }

  v14 = a1[7];
  if (v14)
  {
    v15 = a1[6];
    v16 = a1[19];
    do
    {
      *v15 = *(v16 + 8 * *v15);
      ++v15;
      --v14;
    }

    while (v14);
  }

  v17 = a1[23];
  if (v17)
  {
    for (j = 0; j != v17; ++j)
    {
      v19 = *(a1[22] + 8 * j);
      if (!v19)
      {
        continue;
      }

      v20 = *(v19 + 32);
      if (v20 != 0xFFFF && a1[17] > v20)
      {
        v22 = *(a1[16] + 8 * v20);
        *(v19 + 32) = v22;
        v23 = *(v19 + 16);
        if (!v23)
        {
LABEL_34:
          *(v19 + 83) = 0;
          if (v22)
          {
            goto LABEL_35;
          }

          goto LABEL_46;
        }
      }

      else
      {
        v22 = 0;
        *(v19 + 32) = 0;
        v23 = *(v19 + 16);
        if (!v23)
        {
          goto LABEL_34;
        }
      }

      v24 = *(v19 + 8);
      v25 = a1[16];
      do
      {
        while (1)
        {
          v26 = *v24;
          if (*v24 == 0xFFFF || a1[17] <= v26)
          {
            break;
          }

          *v24++ = *(v25 + 8 * v26);
          if (!--v23)
          {
            goto LABEL_45;
          }
        }

        *v24++ = 0;
        --v23;
      }

      while (v23);
LABEL_45:
      v28 = *(v19 + 32);
      *(v19 + 83) = 0;
      if (v28)
      {
LABEL_35:
        if (*(v19 + 80) == 1)
        {
          goto LABEL_47;
        }

        continue;
      }

LABEL_46:
      sub_239C0F98C((a1 + 3), v19);
      if (*(v19 + 80) == 1)
      {
LABEL_47:
        sub_239C0F98C((a1 + 12), v19);
      }
    }
  }

  v29 = a1[17];
  if (!v29)
  {
    return;
  }

  v30 = 0;
  v31 = a1[16];
  do
  {
    v32 = *(v31 + 8 * v30);
    if (!v32)
    {
      goto LABEL_51;
    }

    v33 = *(v32 + 8);
    if (v33 != 0xFFFF && a1[20] > v33)
    {
      *(v32 + 8) = *(a1[19] + 8 * v33);
      v35 = *(v32 + 16);
      if (v35 == 0xFFFF || a1[20] <= v35)
      {
LABEL_73:
        *(v32 + 16) = 0;
        v37 = *(v32 + 24);
        if (v37 != 0xFFFF && a1[17] > v37)
        {
          goto LABEL_67;
        }

        goto LABEL_77;
      }
    }

    else
    {
      *(v32 + 8) = 0;
      v35 = *(v32 + 16);
      if (v35 == 0xFFFF || a1[20] <= v35)
      {
        goto LABEL_73;
      }
    }

    *(v32 + 16) = *(a1[19] + 8 * v35);
    v37 = *(v32 + 24);
    if (v37 != 0xFFFF && a1[17] > v37)
    {
LABEL_67:
      *(v32 + 24) = *(v31 + 8 * v37);
      v39 = *(v32 + 40);
      if (v39)
      {
        goto LABEL_78;
      }

      goto LABEL_85;
    }

LABEL_77:
    *(v32 + 24) = 0;
    v39 = *(v32 + 40);
    if (v39)
    {
LABEL_78:
      v42 = *(v32 + 32);
      v43 = a1[19];
      do
      {
        while (1)
        {
          v44 = *v42;
          if (*v42 == 0xFFFF || a1[20] <= v44)
          {
            break;
          }

          *v42++ = *(v43 + 8 * v44);
          if (!--v39)
          {
            goto LABEL_85;
          }
        }

        *v42++ = 0;
        --v39;
      }

      while (v39);
    }

LABEL_85:
    v46 = *(v32 + 64);
    if (v46)
    {
      v47 = *(v32 + 56);
      v48 = a1[22];
      do
      {
        while (1)
        {
          v49 = *v47;
          if (*v47 == 0xFFFF || a1[23] <= v49)
          {
            break;
          }

          *v47++ = *(v48 + 8 * v49);
          if (!--v46)
          {
            goto LABEL_93;
          }
        }

        *v47++ = 0;
        --v46;
      }

      while (v46);
    }

LABEL_93:
    v51 = *(v32 + 88);
    if (v51)
    {
      v52 = *(v32 + 80);
      v53 = a1[22];
      do
      {
        while (1)
        {
          v54 = *v52;
          if (*v52 == 0xFFFF || a1[23] <= v54)
          {
            break;
          }

          *v52++ = *(v53 + 8 * v54);
          if (!--v51)
          {
            goto LABEL_50;
          }
        }

        *v52++ = 0;
        --v51;
      }

      while (v51);
    }

LABEL_50:
    *(v32 + 120) = v30;
    *(v32 + 128) = 0;
LABEL_51:
    ++v30;
  }

  while (v30 != v29);
  for (k = 0; k != v29; ++k)
  {
    v57 = *(a1[16] + 8 * k);
    if (v57)
    {
      (*(*v57 + 256))(v57);
    }
  }
}

void sub_239C137A4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v57[2] = *MEMORY[0x277D85DE8];
  v8 = objc_autoreleasePoolPush();
  v9 = MEMORY[0x277CBEB98];
  v57[0] = objc_opt_class();
  v57[1] = a4;
  v15 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v10, v57, 2, v11, v12, v13, v14);
  v22 = objc_msgSend_setWithArray_(v9, v16, v15, v17, v18, v19, v20, v21);
  v28 = objc_msgSend_decodeObjectOfClasses_forKey_(a2, v23, v22, a3, v24, v25, v26, v27);
  if (!v28)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = -1;
    __cxa_throw(exception, MEMORY[0x277D827C0], 0);
  }

  v36 = v28;
  v37 = objc_msgSend_count(v28, v29, v30, v31, v32, v33, v34, v35);
  *(a1 + 8) = 0;
  *(a1 + 16) = v37;
  free(*a1);
  v38 = malloc_type_malloc(8 * *(a1 + 16), 0x2004093837F09uLL);
  *a1 = v38;
  if (!v38)
  {
    v56 = __cxa_allocate_exception(4uLL);
    *v56 = -2;
    __cxa_throw(v56, MEMORY[0x277D827C0], 0);
  }

  if (*(a1 + 16))
  {
    v45 = 0;
    do
    {
      v46 = objc_msgSend_objectAtIndex_(v36, v39, v45, v40, v41, v42, v43, v44);
      v54 = objc_msgSend_node(v46, v47, v48, v49, v50, v51, v52, v53);
      sub_239C0F98C(a1, v54);
      ++v45;
    }

    while (v45 < *(a1 + 16));
  }

  objc_autoreleasePoolPop(v8);
}

BOOL sub_239C13920(uint64_t a1, unsigned __int16 *a2, uint64_t a3, uint64_t a4)
{
  v4 = *a2;
  v5 = __rev16(v4);
  v6 = 2 * v5 + 2;
  if (v6 == a3)
  {
    *(a1 + 8) = 0;
    if (*(a1 + 16) != v5)
    {
      v8 = a2;
      v9 = a4;
      v10 = a3;
      v11 = (v5 + 1) & 0x1FFFE;
      v12 = malloc_type_malloc(8 * v11, 0x2004093837F09uLL);
      if (v12)
      {
        v13 = v12;
        v14 = *(a1 + 8);
        if (v14)
        {
          memcpy(v12, *a1, 8 * v14);
        }

        free(*a1);
        *(a1 + 16) = v11;
        *a1 = v13;
        a3 = v10;
        a4 = v9;
        a2 = v8;
      }

      else
      {
        v20 = MTLReportFailureTypeEnabled();
        a3 = v10;
        a4 = v9;
        a2 = v8;
        if (v20)
        {
          MTLReportFailure();
          a2 = v8;
          a4 = v9;
          a3 = v10;
        }
      }
    }

    if (v4)
    {
      v15 = *a1;
      v16 = a2 + 1;
      do
      {
        while (1)
        {
          v18 = *v16++;
          v17 = v18;
          if (v18 == 0xFFFF)
          {
            break;
          }

          *v15++ = *(a4 + 8 * __rev16(v17));
          if (!--v5)
          {
            return v6 == a3;
          }
        }

        *v15++ = 0;
        --v5;
      }

      while (v5);
    }
  }

  return v6 == a3;
}

void sub_239C13AB0(uint64_t a1, void *a2)
{
  *a1 = &unk_284CD3088;
  *(a1 + 40) = xmmword_239D7DE50;
  *(a1 + 32) = malloc_type_malloc(0x10uLL, 0x2004093837F09uLL);
  *(a1 + 64) = xmmword_239D7DE50;
  *(a1 + 56) = malloc_type_malloc(0x10uLL, 0x2004093837F09uLL);
  *(a1 + 88) = xmmword_239D7DE50;
  *(a1 + 80) = malloc_type_malloc(0x10uLL, 0x2004093837F09uLL);
  objc_msgSend_resultImage(a2, v4, v5, v6, v7, v8, v9, v10);
  operator new();
}

void sub_239C13CA0(_Unwind_Exception *a1)
{
  free(v1[10]);
  free(v1[7]);
  free(v1[4]);
  _Unwind_Resume(a1);
}

uint64_t sub_239C13D54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = &unk_284CD3088;
  *(a1 + 40) = xmmword_239D7DE50;
  *(a1 + 32) = malloc_type_malloc(0x10uLL, 0x2004093837F09uLL);
  *(a1 + 64) = xmmword_239D7DE50;
  *(a1 + 56) = malloc_type_malloc(0x10uLL, 0x2004093837F09uLL);
  *(a1 + 88) = xmmword_239D7DE50;
  *(a1 + 80) = malloc_type_malloc(0x10uLL, 0x2004093837F09uLL);
  v13 = *(a3 + 8);
  if (v13)
  {
    v14 = *(v13 + 64);
  }

  else
  {
    v14 = 0xFFFFLL;
  }

  *(a1 + 8) = v14;
  *(a1 + 104) = objc_msgSend_copyWithZone_device_(*(a3 + 104), v8, a2, a4, v9, v10, v11, v12, 0, 2);
  *(a1 + 112) = 0;
  *(a1 + 120) = *(a3 + 120);
  v15 = *(a3 + 16);
  if (v15)
  {
    *(a1 + 16) = *(v15 + 64);
    v16 = *(a3 + 24);
    if (v16)
    {
LABEL_6:
      v17 = *(v16 + 120);
      goto LABEL_9;
    }
  }

  else
  {
    *(a1 + 16) = 0xFFFFLL;
    v16 = *(a3 + 24);
    if (v16)
    {
      goto LABEL_6;
    }
  }

  v17 = 0xFFFFLL;
LABEL_9:
  *(a1 + 24) = v17;
  *(a1 + 128) = 1;
  *(a1 + 132) = *(a3 + 132);
  *(a1 + 136) = *(a3 + 136);
  *(a1 + 129) = *(a3 + 129);
  v18 = *(a3 + 40);
  if (v18)
  {
    for (i = 0; i != v18; ++i)
    {
      v20 = *(*(a3 + 32) + 8 * i);
      if (v20)
      {
        v21 = *(v20 + 64);
      }

      else
      {
        v21 = 0xFFFFLL;
      }

      sub_239C0F98C(a1 + 32, v21);
    }
  }

  v22 = *(a3 + 64);
  if (v22)
  {
    for (j = 0; j != v22; ++j)
    {
      v24 = *(*(a3 + 56) + 8 * j);
      if (v24)
      {
        v25 = *(v24 + 64);
      }

      else
      {
        v25 = 0xFFFFLL;
      }

      sub_239C0F98C(a1 + 56, v25);
    }
  }

  v26 = *(a3 + 88);
  if (v26)
  {
    for (k = 0; k != v26; ++k)
    {
      v28 = *(*(a3 + 80) + 8 * k);
      if (v28)
      {
        v29 = *(v28 + 64);
      }

      else
      {
        v29 = 0xFFFFLL;
      }

      sub_239C0F98C(a1 + 80, v29);
    }
  }

  return a1;
}

void sub_239C13F5C(_Unwind_Exception *a1)
{
  free(*(v2 + 80));
  free(v1[3]);
  free(*v1);
  _Unwind_Resume(a1);
}

uint64_t sub_239C13FBC(uint64_t a1)
{
  *a1 = &unk_284CD3088;

  if ((*(a1 + 128) & 1) == 0)
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      if ((*(v3 + 83) & 1) == 0)
      {
      }

      free(*(v3 + 8));
      MEMORY[0x23EE7D130](v3, 0x10A0C408D08F740);
    }

    v4 = *(a1 + 88);
    if (v4)
    {
      for (i = 0; i != v4; ++i)
      {
        v6 = *(*(a1 + 80) + 8 * i);
        if (v6)
        {
          if ((*(v6 + 83) & 1) == 0)
          {
          }

          free(*(v6 + 8));
          MEMORY[0x23EE7D130](v6, 0x10A0C408D08F740);
        }
      }
    }
  }

  free(*(a1 + 80));
  free(*(a1 + 56));
  free(*(a1 + 32));
  return a1;
}

uint64_t sub_239C140D4(uint64_t a1, void *a2, unsigned __int16 **a3, unint64_t *a4)
{
  *a1 = &unk_284CD3088;
  *(a1 + 40) = xmmword_239D7DE50;
  *(a1 + 32) = malloc_type_malloc(0x10uLL, 0x2004093837F09uLL);
  *(a1 + 64) = xmmword_239D7DE50;
  *(a1 + 56) = malloc_type_malloc(0x10uLL, 0x2004093837F09uLL);
  *(a1 + 88) = xmmword_239D7DE50;
  *(a1 + 80) = malloc_type_malloc(0x10uLL, 0x2004093837F09uLL);
  if (a2)
  {
    v8 = a2;
  }

  else
  {
    v8 = 0;
  }

  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 104) = v8;
  *(a1 + 128) = 1;
  if (*a4 <= 0xD)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 1;
    __cxa_throw(exception, &unk_284CD31F8, 0);
  }

  v9 = *a3;
  v10 = bswap32(**a3) >> 16;
  *(a1 + 132) = v10;
  if (v10 >= 4)
  {
    v33 = __cxa_allocate_exception(4uLL);
    *v33 = 2;
    __cxa_throw(v33, &unk_284CD31F8, 0);
  }

  v11 = bswap32(v9[2]);
  *(a1 + 8) = bswap32(v9[1]) >> 16;
  *(a1 + 16) = HIWORD(v11);
  *(a1 + 24) = bswap32(v9[3]) >> 16;
  v12 = v9[4];
  v13 = v9[5];
  v14 = v9[6];
  if (v10 == 2)
  {
    v15 = 0;
    v16 = v9 + 8;
    *(a1 + 136) = bswap32(v9[7]) >> 16;
    *(a1 + 129) = 0;
    v17 = 8;
  }

  else if (v10 == 1)
  {
    v15 = 0;
    v16 = v9 + 7;
    *(a1 + 136) = 0;
    *(a1 + 129) = 0;
    v17 = 7;
  }

  else
  {
    v16 = v9 + 10;
    *(a1 + 136) = bswap32(v9[7]) >> 16;
    v15 = *(v9 + 19) & 1;
    v17 = 10;
  }

  v18 = *a4 - v17 * 2;
  *a4 = v18;
  v19 = &(*a3)[v17];
  *a3 = v19;
  *(a1 + 129) = v15;
  if (!a2 && !v15)
  {
    goto LABEL_26;
  }

  v20 = __rev16(v12);
  v21 = 2 * v20;
  v22 = v18 - v21;
  if (v18 < v21)
  {
    goto LABEL_26;
  }

  *a4 = v22;
  *a3 = &v19[v21 / 2];
  if (v12)
  {
    do
    {
      sub_239C0F98C(a1 + 32, bswap32(*v16++) >> 16);
      --v20;
    }

    while (v20);
    v22 = *a4;
  }

  v23 = __rev16(v13);
  v24 = 2 * v23;
  v25 = v22 - v24;
  if (v22 < v24)
  {
    goto LABEL_26;
  }

  *a4 = v25;
  *a3 = (*a3 + v24);
  if (v13)
  {
    do
    {
      sub_239C0F98C(a1 + 56, bswap32(*v16++) >> 16);
      --v23;
    }

    while (v23);
    v25 = *a4;
  }

  v26 = __rev16(v14);
  v27 = 2 * v26;
  v28 = v25 >= v27;
  v29 = v25 - v27;
  if (!v28)
  {
LABEL_26:
    v31 = __cxa_allocate_exception(4uLL);
    *v31 = 1;
    __cxa_throw(v31, &unk_284CD31F8, 0);
  }

  *a4 = v29;
  *a3 = (*a3 + v27);
  if (v14)
  {
    do
    {
      sub_239C0F98C(a1 + 80, bswap32(*v16++) >> 16);
      --v26;
    }

    while (v26);
  }

  return a1;
}

void sub_239C143F8(_Unwind_Exception *a1)
{
  free(*(v2 + 80));
  free(v1[3]);
  free(*v1);
  _Unwind_Resume(a1);
}

_WORD *sub_239C14460(uint64_t a1, size_t *a2)
{
  v4 = 2 * (*(a1 + 64) + *(a1 + 40) + *(a1 + 88)) + 22;
  result = malloc_type_malloc(v4, 0x9D6C8376uLL);
  if (!result)
  {
    *a2 = 0;
    return result;
  }

  *a2 = v4;
  v6 = result;
  v7 = (*(*a1 + 240))(a1);
  result = v6;
  *v6 = bswap32(v7) >> 16;
  v6[1] = 768;
  v8 = v6 + 1;
  v9 = *(a1 + 16);
  v6[2] = bswap32(*(*(a1 + 8) + 64)) >> 16;
  if (v9)
  {
    v6[3] = bswap32(*(v9 + 64)) >> 16;
    v10 = *(a1 + 24);
    if (v10)
    {
LABEL_4:
      v11 = *(v10 + 120);
      goto LABEL_8;
    }
  }

  else
  {
    v6[3] = bswap32(0xFFFFu) >> 16;
    v10 = *(a1 + 24);
    if (v10)
    {
      goto LABEL_4;
    }
  }

  v11 = 0xFFFF;
LABEL_8:
  v6[4] = bswap32(v11) >> 16;
  v12 = *(a1 + 40);
  v6[5] = bswap32(v12) >> 16;
  v13 = *(a1 + 64);
  v6[6] = bswap32(v13) >> 16;
  v14 = *(a1 + 88);
  v6[7] = bswap32(v14) >> 16;
  v6[8] = bswap32(*(a1 + 136)) >> 16;
  *(v6 + 9) = *(a1 + 129) << 24;
  if (!v12)
  {
    goto LABEL_16;
  }

  v15 = *(a1 + 32);
  if (v12 == 1)
  {
    v16 = 0;
LABEL_14:
    v21 = v12 - v16;
    v22 = &v8[v16 + 10];
    v23 = (v15 + 8 * v16);
    do
    {
      v24 = *v23++;
      *v22++ = bswap32(*(v24 + 64)) >> 16;
      --v21;
    }

    while (v21);
    goto LABEL_16;
  }

  v16 = v12 & 0xFFFFFFFFFFFFFFFELL;
  v17 = v15 + 8;
  v18 = v6 + 12;
  v19 = v12 & 0xFFFFFFFFFFFFFFFELL;
  do
  {
    v20 = bswap32(*(*v17 + 64));
    *(v18 - 1) = bswap32(*(*(v17 - 8) + 64)) >> 16;
    *v18 = HIWORD(v20);
    v18 += 2;
    v17 += 16;
    v19 -= 2;
  }

  while (v19);
  if (v12 != v16)
  {
    goto LABEL_14;
  }

LABEL_16:
  if (!v13)
  {
    goto LABEL_24;
  }

  v25 = *(a1 + 56);
  if (v13 == 1)
  {
    v26 = 0;
LABEL_22:
    v31 = v13 - v26;
    v32 = &v8[v26 + 10 + v12];
    v33 = (v25 + 8 * v26);
    do
    {
      v34 = *v33++;
      *v32++ = bswap32(*(v34 + 64)) >> 16;
      --v31;
    }

    while (v31);
    goto LABEL_24;
  }

  v26 = v13 & 0xFFFFFFFFFFFFFFFELL;
  v27 = v25 + 8;
  v28 = &v8[v12 + 11];
  v29 = v13 & 0xFFFFFFFFFFFFFFFELL;
  do
  {
    v30 = bswap32(*(*v27 + 64));
    *(v28 - 1) = bswap32(*(*(v27 - 8) + 64)) >> 16;
    *v28 = HIWORD(v30);
    v28 += 2;
    v27 += 16;
    v29 -= 2;
  }

  while (v29);
  if (v13 != v26)
  {
    goto LABEL_22;
  }

LABEL_24:
  if (!v14)
  {
    return result;
  }

  v35 = *(a1 + 80);
  if (v14 == 1)
  {
    v36 = 0;
LABEL_30:
    v41 = v14 - v36;
    v42 = &v8[v36 + 10 + v13 + v12];
    v43 = (v35 + 8 * v36);
    do
    {
      v44 = *v43++;
      *v42++ = bswap32(*(v44 + 64)) >> 16;
      --v41;
    }

    while (v41);
    return result;
  }

  v36 = v14 & 0xFFFFFFFFFFFFFFFELL;
  v37 = v35 + 8;
  v38 = &v8[v13 + 11 + v12];
  v39 = v14 & 0xFFFFFFFFFFFFFFFELL;
  do
  {
    v40 = bswap32(*(*v37 + 64));
    *(v38 - 1) = bswap32(*(*(v37 - 8) + 64)) >> 16;
    *v38 = HIWORD(v40);
    v38 += 2;
    v37 += 16;
    v39 -= 2;
  }

  while (v39);
  if (v14 != v36)
  {
    goto LABEL_30;
  }

  return result;
}

uint64_t sub_239C14794(uint64_t a1)
{
  *a1 = &unk_284CD2A80;

  return sub_239C13FBC(a1);
}

uint64_t sub_239C147F8(uint64_t a1, void *a2, unsigned __int16 **a3, unint64_t *a4)
{
  v8 = sub_239C140D4(a1, a2, a3, a4);
  *v8 = &unk_284CD2A80;
  v9 = *(v8 + 132);
  if (v9 < 2)
  {
    v44 = 3;
    goto LABEL_12;
  }

  if (v9 > 3)
  {
    v44 = 2;
    goto LABEL_12;
  }

  v10 = *a4;
  if (*a4 <= 3)
  {
    v44 = 1;
LABEL_12:
    exception = __cxa_allocate_exception(4uLL);
    *exception = v44;
    __cxa_throw(exception, &unk_284CD31F8, 0);
  }

  v11 = bswap32(**a3);
  *a3 += 2;
  v12 = v10 - 4;
  *a4 = v12;
  if (v12 < v11)
  {
    v46 = __cxa_allocate_exception(4uLL);
    *v46 = 1;
    __cxa_throw(v46, &unk_284CD31F8, 0);
  }

  v13 = objc_autoreleasePoolPush();
  v18 = objc_msgSend_dataWithBytesNoCopy_length_freeWhenDone_(MEMORY[0x277CBEA90], v14, *a3, v11, 0, v15, v16, v17);
  *a4 -= v11;
  *a3 = (*a3 + v11);
  v47 = 0;
  v19 = MEMORY[0x277CBEB98];
  v20 = objc_opt_class();
  v27 = objc_msgSend_setWithObject_(v19, v21, v20, v22, v23, v24, v25, v26);
  if (!a2 || (v35 = v27, v36 = MEMORY[0x277CD7248], v37 = objc_msgSend_device(a2, v28, v29, v30, v31, v32, v33, v34), (v41 = objc_msgSend_unarchivedObjectOfClasses_fromData_device_error_(v36, v38, v35, v18, v37, &v47, v39, v40)) == 0))
  {
    v43 = __cxa_allocate_exception(4uLL);
    *v43 = 1;
    __cxa_throw(v43, &unk_284CD31F8, 0);
  }

  *(a1 + 144) = v41;
  objc_autoreleasePoolPop(v13);
  return a1;
}

char *sub_239C14A2C(uint64_t a1, size_t *a2)
{
  result = sub_239C14460(a1, a2);
  if (result)
  {
    v5 = result;
    v6 = objc_autoreleasePoolPush();
    v32 = 0;
    v11 = objc_msgSend_archivedDataWithRootObject_requiringSecureCoding_error_(MEMORY[0x277CCAAB0], v7, *(a1 + 144), 1, &v32, v8, v9, v10);
    v19 = objc_msgSend_length(v11, v12, v13, v14, v15, v16, v17, v18);
    v20 = v19 + *a2 + 4;
    v21 = reallocf(v5, v20);
    if (v21)
    {
      v29 = v21;
      v30 = &v21[*a2];
      *v30 = bswap32(v19);
      if (v11)
      {
        v31 = objc_msgSend_bytes(v11, v22, v23, v24, v25, v26, v27, v28);
        memcpy(v30 + 4, v31, v19);
      }

      *a2 = v20;
      objc_autoreleasePoolPop(v6);
      return v29;
    }

    else
    {
      *a2 = 0;
      objc_autoreleasePoolPop(v6);
      return 0;
    }
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

uint64_t sub_239C14B28(uint64_t a1, void *a2, unsigned __int16 **a3, unint64_t *a4)
{
  v8 = sub_239C140D4(a1, a2, a3, a4);
  *v8 = &unk_284CD0170;
  v9 = *(v8 + 132);
  if (v9 < 2)
  {
    v44 = 3;
    goto LABEL_12;
  }

  if (v9 > 3)
  {
    v44 = 2;
    goto LABEL_12;
  }

  v10 = *a4;
  if (*a4 <= 3)
  {
    v44 = 1;
LABEL_12:
    exception = __cxa_allocate_exception(4uLL);
    *exception = v44;
    __cxa_throw(exception, &unk_284CD31F8, 0);
  }

  v11 = bswap32(**a3);
  *a3 += 2;
  v12 = v10 - 4;
  *a4 = v12;
  if (v12 < v11)
  {
    v46 = __cxa_allocate_exception(4uLL);
    *v46 = 1;
    __cxa_throw(v46, &unk_284CD31F8, 0);
  }

  v13 = objc_autoreleasePoolPush();
  v18 = objc_msgSend_dataWithBytesNoCopy_length_freeWhenDone_(MEMORY[0x277CBEA90], v14, *a3, v11, 0, v15, v16, v17);
  *a4 -= v11;
  *a3 = (*a3 + v11);
  v47 = 0;
  v19 = MEMORY[0x277CBEB98];
  v20 = objc_opt_class();
  v27 = objc_msgSend_setWithObject_(v19, v21, v20, v22, v23, v24, v25, v26);
  if (!a2 || (v35 = v27, v36 = MEMORY[0x277CD7248], v37 = objc_msgSend_device(a2, v28, v29, v30, v31, v32, v33, v34), (v41 = objc_msgSend_unarchivedObjectOfClasses_fromData_device_error_(v36, v38, v35, v18, v37, &v47, v39, v40)) == 0))
  {
    v43 = __cxa_allocate_exception(4uLL);
    *v43 = 1;
    __cxa_throw(v43, &unk_284CD31F8, 0);
  }

  *(a1 + 144) = v41;
  objc_autoreleasePoolPop(v13);
  return a1;
}

char *sub_239C14D64(uint64_t a1, size_t *a2)
{
  result = sub_239C14460(a1, a2);
  if (result)
  {
    v5 = result;
    v6 = objc_autoreleasePoolPush();
    v32 = 0;
    v11 = objc_msgSend_archivedDataWithRootObject_requiringSecureCoding_error_(MEMORY[0x277CCAAB0], v7, *(a1 + 144), 1, &v32, v8, v9, v10);
    v19 = objc_msgSend_length(v11, v12, v13, v14, v15, v16, v17, v18);
    v20 = v19 + *a2 + 4;
    v21 = reallocf(v5, v20);
    if (v21)
    {
      v29 = v21;
      v30 = &v21[*a2];
      *v30 = bswap32(v19);
      if (v11)
      {
        v31 = objc_msgSend_bytes(v11, v22, v23, v24, v25, v26, v27, v28);
        memcpy(v30 + 4, v31, v19);
      }

      *a2 = v20;
      objc_autoreleasePoolPop(v6);
      return v29;
    }

    else
    {
      *a2 = 0;
      objc_autoreleasePoolPop(v6);
      return 0;
    }
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

uint64_t sub_239C15758(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a1 + 144);
  v11 = objc_msgSend_destinationFeatureChannelOffset(v10, a2, a3, a4, a5, a6, a7, a8);
  objc_msgSend_setDestinationFeatureChannelOffset_(v10, v12, &a2[v11], v13, v14, v15, v16, v17);
  v18 = *(a1 + 104);
  v27 = &a2[objc_msgSend_destinationFeatureChannelOffset(v18, v19, v20, v21, v22, v23, v24, v25)];

  return objc_msgSend_setDestinationFeatureChannelOffset_(v18, v26, v27, v28, v29, v30, v31, v32);
}

uint64_t sub_239C157C0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  objc_msgSend_setDestinationFeatureChannelOffset_(*(a1 + 144), a2, 0, a4, a5, a6, a7, a8);
  v15 = *(a1 + 104);

  return objc_msgSend_setDestinationFeatureChannelOffset_(v15, v9, 0, v10, v11, v12, v13, v14);
}

void *sub_239C15804(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v53 = xmmword_239D7D680;
  (*(*a1 + 280))(a1, &v53, 0);
  objc_msgSend_setSourceFeatureChannelOffset_(*(a1 + 104), v8, v53, v9, v10, v11, v12, v13);
  objc_msgSend_setSourceFeatureChannelOffset_(*(a1 + 144), v14, v53, v15, v16, v17, v18, v19);
  objc_msgSend_setSourceFeatureChannelMaxCount_(*(a1 + 104), v20, *(&v53 + 1), v21, v22, v23, v24, v25);
  objc_msgSend_setSourceFeatureChannelMaxCount_(*(a1 + 144), v26, *(&v53 + 1), v27, v28, v29, v30, v31);
  v37 = objc_msgSend_destinationImageDescriptorForSourceImages_sourceStates_(*(a1 + 104), v32, a2, a3, v33, v34, v35, v36);
  v44 = v37;
  if (*(*(a1 + 8) + 88))
  {
    objc_msgSend_setChannelFormat_(v37, v38, *(*(a1 + 8) + 88), v39, v40, v41, v42, v43);
  }

  else
  {
    objc_msgSend_setChannelFormat_(v37, v38, a4, v39, v40, v41, v42, v43);
  }

  if (v44 || !MTLReportFailureTypeEnabled())
  {
    return v44;
  }

  objc_msgSend_padding(*(a1 + 104), v46, v47, v48, v49, v50, v51, v52);
  MTLReportFailure();
  return 0;
}

uint64_t sub_239C15938(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  objc_msgSend_setPadding_(*(a1 + 104), a2, a2, a4, a5, a6, a7, a8);
  v16 = *(a1 + 144);

  return objc_msgSend_setPadding_(v16, v10, a2, v11, v12, v13, v14, v15);
}

uint64_t sub_239C15980(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  objc_msgSend_setOptions_(*(a1 + 104), a2, a2, a4, a5, a6, a7, a8);
  v16 = *(a1 + 144);

  return objc_msgSend_setOptions_(v16, v10, a2, v11, v12, v13, v14, v15);
}

uint64_t sub_239C159C8(void *a1, const char *a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = a1[18];
  v15 = objc_msgSend_objectAtIndexedSubscript_(a3, a2, 0, a4, a5, a6, a7, a8);
  v22 = objc_msgSend_objectAtIndexedSubscript_(a4, v16, 0, v17, v18, v19, v20, v21);
  objc_msgSend_encodeToCommandBuffer_sourceImage_inState_destinationImage_(v14, v23, a2, v15, v22, a6, v24, v25);
  v32 = objc_msgSend_objectAtIndexedSubscript_(a4, v26, 0, v27, v28, v29, v30, v31);
  MPSDecrementReadCount(v32);
  v33 = *(*a1 + 184);

  return v33(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_239C15AA8(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  (*(*a1 + 192))(a1);
  v11 = a1[18];
  v18 = objc_msgSend_objectAtIndexedSubscript_(a3, v12, 0, v13, v14, v15, v16, v17);
  v25 = objc_msgSend_objectAtIndexedSubscript_(a4, v19, 0, v20, v21, v22, v23, v24);
  objc_msgSend_encodeBatchToCommandBuffer_sourceImages_inStates_destinationImages_(v11, v26, a2, v18, v25, a6, v27, v28);
  objc_msgSend_objectAtIndexedSubscript_(a4, v29, 0, v30, v31, v32, v33, v34);

  return MPSDecrementReadCount();
}

void *sub_239C15B64(void *result, const char *a2, void *a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  if ((*(result[13] + *MEMORY[0x277CD7378]) & 0x10) == 0)
  {
    return result;
  }

  v10 = result;
  v11 = result[2];
  if (!v11)
  {
    v11 = result[1];
  }

  v12 = *(v11 + 64);
  v13 = objc_msgSend_objectAtIndexedSubscript_(a3, a2, 0, a4, a5, a6, a7, a8);
  v21 = *MEMORY[0x277CD7318];
  v22 = *(v13 + v21 + 4) & 0x7FF;
  if (v22 <= 0x307)
  {
    if ((*(v13 + v21 + 4) & 0x7FFu) <= 0x117)
    {
      if (v22 == 264)
      {
        v23 = "bfloat16";
        goto LABEL_30;
      }

      if (v22 == 267)
      {
        v23 = "float16";
        goto LABEL_30;
      }
    }

    else
    {
      switch(v22)
      {
        case 0x118u:
          v23 = "float32";
          goto LABEL_30;
        case 0x208u:
          v23 = "unorm8";
          goto LABEL_30;
        case 0x210u:
          v23 = "unorm16";
          goto LABEL_30;
      }
    }
  }

  else if ((*(v13 + v21 + 4) & 0x7FFu) > 0x60F)
  {
    switch(v22)
    {
      case 0x610u:
        v23 = "uint6";
        goto LABEL_30;
      case 0x708u:
        v23 = "sint8";
        goto LABEL_30;
      case 0x710u:
        v23 = "sint16";
        goto LABEL_30;
    }
  }

  else
  {
    switch(v22)
    {
      case 0x308u:
        v23 = "snorm8";
        goto LABEL_30;
      case 0x310u:
        v23 = "snorm16";
        goto LABEL_30;
      case 0x608u:
        v23 = "uint8";
        goto LABEL_30;
    }
  }

  v23 = "<unknown channel format>";
LABEL_30:
  v155 = v23;
  v24 = *(a6 + v21 + 4) & 0x7FF;
  v160 = v12;
  if (v24 <= 775)
  {
    if (v24 <= 279)
    {
      if (v24 == 264)
      {
        v25 = "bfloat16";
        goto LABEL_56;
      }

      if (v24 == 267)
      {
        v25 = "float16";
        goto LABEL_56;
      }
    }

    else
    {
      switch(v24)
      {
        case 280:
          v25 = "float32";
          goto LABEL_56;
        case 520:
          v25 = "unorm8";
          goto LABEL_56;
        case 528:
          v25 = "unorm16";
          goto LABEL_56;
      }
    }

LABEL_55:
    v25 = "<unknown channel format>";
    goto LABEL_56;
  }

  if (v24 > 1551)
  {
    switch(v24)
    {
      case 1552:
        v25 = "uint6";
        goto LABEL_56;
      case 1800:
        v25 = "sint8";
        goto LABEL_56;
      case 1808:
        v25 = "sint16";
        goto LABEL_56;
    }

    goto LABEL_55;
  }

  if (v24 == 776)
  {
    v25 = "snorm8";
    goto LABEL_56;
  }

  if (v24 == 784)
  {
    v25 = "snorm16";
    goto LABEL_56;
  }

  if (v24 != 1544)
  {
    goto LABEL_55;
  }

  v25 = "uint8";
LABEL_56:
  v154 = v25;
  v26 = objc_msgSend_padding(v10[13], v14, v15, v16, v17, v18, v19, v20);
  if (objc_opt_respondsToSelector())
  {
    v159 = objc_msgSend_label(v26, v27, v28, v29, v30, v31, v32, v33);
  }

  else
  {
    v159 = @"<missing label>";
  }

  v34 = v10[18];
  v35 = objc_opt_class();
  v36 = NSStringFromClass(v35);
  v43 = objc_msgSend_cStringUsingEncoding_(v36, v37, 1, v38, v39, v40, v41, v42);
  v157 = v10[15];
  v158 = v43;
  v50 = objc_msgSend_objectAtIndexedSubscript_(a3, v44, 0, v45, v46, v47, v48, v49);
  v156 = objc_msgSend_width(v50, v51, v52, v53, v54, v55, v56, v57);
  v64 = objc_msgSend_objectAtIndexedSubscript_(a3, v58, 0, v59, v60, v61, v62, v63);
  v72 = objc_msgSend_height(v64, v65, v66, v67, v68, v69, v70, v71);
  v79 = objc_msgSend_objectAtIndexedSubscript_(a3, v73, 0, v74, v75, v76, v77, v78);
  v94 = objc_msgSend_featureChannels(v79, v80, v81, v82, v83, v84, v85, v86);
  v95 = *v10[4];
  do
  {
    v96 = v95;
    v95 = *(v95 + 40);
  }

  while (v95);
  v97 = *(v96 + 64);
  v98 = objc_msgSend_sourceFeatureChannelOffset(v10[18], v87, v88, v89, v90, v91, v92, v93);
  v106 = objc_msgSend_width(a6, v99, v100, v101, v102, v103, v104, v105);
  v114 = objc_msgSend_height(a6, v107, v108, v109, v110, v111, v112, v113);
  v122 = objc_msgSend_featureChannels(a6, v115, v116, v117, v118, v119, v120, v121);
  v130 = objc_msgSend_destinationFeatureChannelOffset(v10[18], v123, v124, v125, v126, v127, v128, v129);
  v138 = objc_msgSend_label(v10[18], v131, v132, v133, v134, v135, v136, v137);
  v145 = objc_msgSend_cStringUsingEncoding_(v138, v139, 1, v140, v141, v142, v143, v144);
  v152 = objc_msgSend_cStringUsingEncoding_(v159, v146, 1, v147, v148, v149, v150, v151);
  return sub_239BE215C(v34, v153, "%s[%lu] {%lu x %lu x %lu %s}[%lu](offset:%lu) -> {%lu x %lu x %lu %s}[%lu]  offset: %lu %s\n\tpadding policy: %s\n", v158, v157, v156, v72, v94, v155, v97, v98, v106, v114, v122, v154, v160, v130, v145, v152);
}

void *sub_239C15F68(void *result, const char *a2, void *a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  if ((*(result[13] + *MEMORY[0x277CD7378]) & 0x10) == 0)
  {
    return result;
  }

  v10 = result;
  v11 = result[2];
  if (!v11)
  {
    v11 = result[1];
  }

  v237 = *(v11 + 64);
  v12 = objc_msgSend_objectAtIndexedSubscript_(a3, a2, 0, a4, a5, a6, a7, a8);
  v19 = objc_msgSend_objectAtIndexedSubscript_(v12, v13, 0, v14, v15, v16, v17, v18);
  v26 = MEMORY[0x277CD7318];
  v27 = *(v19 + *MEMORY[0x277CD7318] + 4) & 0x7FF;
  if (v27 <= 0x307)
  {
    if ((*(v19 + *MEMORY[0x277CD7318] + 4) & 0x7FFu) <= 0x117)
    {
      if (v27 == 264)
      {
        v28 = "bfloat16";
        goto LABEL_30;
      }

      if (v27 == 267)
      {
        v28 = "float16";
        goto LABEL_30;
      }
    }

    else
    {
      switch(v27)
      {
        case 0x118u:
          v28 = "float32";
          goto LABEL_30;
        case 0x208u:
          v28 = "unorm8";
          goto LABEL_30;
        case 0x210u:
          v28 = "unorm16";
          goto LABEL_30;
      }
    }
  }

  else if ((*(v19 + *MEMORY[0x277CD7318] + 4) & 0x7FFu) > 0x60F)
  {
    switch(v27)
    {
      case 0x610u:
        v28 = "uint6";
        goto LABEL_30;
      case 0x708u:
        v28 = "sint8";
        goto LABEL_30;
      case 0x710u:
        v28 = "sint16";
        goto LABEL_30;
    }
  }

  else
  {
    switch(v27)
    {
      case 0x308u:
        v28 = "snorm8";
        goto LABEL_30;
      case 0x310u:
        v28 = "snorm16";
        goto LABEL_30;
      case 0x608u:
        v28 = "uint8";
        goto LABEL_30;
    }
  }

  v28 = "<unknown channel format>";
LABEL_30:
  v230 = v28;
  v36 = *(objc_msgSend_objectAtIndexedSubscript_(a6, v20, 0, v21, v22, v23, v24, v25) + *v26 + 4) & 0x7FF;
  if (v36 <= 0x307)
  {
    if (v36 <= 279)
    {
      if (v36 == 264)
      {
        v37 = "bfloat16";
        goto LABEL_56;
      }

      if (v36 == 267)
      {
        v37 = "float16";
        goto LABEL_56;
      }
    }

    else
    {
      switch(v36)
      {
        case 280:
          v37 = "float32";
          goto LABEL_56;
        case 520:
          v37 = "unorm8";
          goto LABEL_56;
        case 528:
          v37 = "unorm16";
          goto LABEL_56;
      }
    }

LABEL_55:
    v37 = "<unknown channel format>";
    goto LABEL_56;
  }

  if (v36 > 1551)
  {
    switch(v36)
    {
      case 1552:
        v37 = "uint6";
        goto LABEL_56;
      case 1800:
        v37 = "sint8";
        goto LABEL_56;
      case 1808:
        v37 = "sint16";
        goto LABEL_56;
    }

    goto LABEL_55;
  }

  if (v36 == 776)
  {
    v37 = "snorm8";
    goto LABEL_56;
  }

  if (v36 == 784)
  {
    v37 = "snorm16";
    goto LABEL_56;
  }

  if (v36 != 1544)
  {
    goto LABEL_55;
  }

  v37 = "uint8";
LABEL_56:
  v229 = v37;
  v38 = objc_msgSend_padding(v10[13], v29, v30, v31, v32, v33, v34, v35);
  if (objc_opt_respondsToSelector())
  {
    v235 = objc_msgSend_label(v38, v39, v40, v41, v42, v43, v44, v45);
  }

  else
  {
    v235 = @"<missing label>";
  }

  v236 = v10[18];
  v46 = objc_opt_class();
  v47 = NSStringFromClass(v46);
  v54 = objc_msgSend_cStringUsingEncoding_(v47, v48, 1, v49, v50, v51, v52, v53);
  v233 = v10[15];
  v234 = v54;
  v61 = objc_msgSend_objectAtIndexedSubscript_(a3, v55, 0, v56, v57, v58, v59, v60);
  v232 = objc_msgSend_count(v61, v62, v63, v64, v65, v66, v67, v68);
  v75 = objc_msgSend_objectAtIndexedSubscript_(a3, v69, 0, v70, v71, v72, v73, v74);
  v82 = objc_msgSend_objectAtIndexedSubscript_(v75, v76, 0, v77, v78, v79, v80, v81);
  v231 = objc_msgSend_width(v82, v83, v84, v85, v86, v87, v88, v89);
  v96 = objc_msgSend_objectAtIndexedSubscript_(a3, v90, 0, v91, v92, v93, v94, v95);
  v103 = objc_msgSend_objectAtIndexedSubscript_(v96, v97, 0, v98, v99, v100, v101, v102);
  v111 = objc_msgSend_height(v103, v104, v105, v106, v107, v108, v109, v110);
  v118 = objc_msgSend_objectAtIndexedSubscript_(a3, v112, 0, v113, v114, v115, v116, v117);
  v125 = objc_msgSend_objectAtIndexedSubscript_(v118, v119, 0, v120, v121, v122, v123, v124);
  v140 = objc_msgSend_featureChannels(v125, v126, v127, v128, v129, v130, v131, v132);
  v141 = *v10[4];
  do
  {
    v142 = v141;
    v141 = *(v141 + 40);
  }

  while (v141);
  v143 = *(v142 + 64);
  v144 = objc_msgSend_sourceFeatureChannelOffset(v10[18], v133, v134, v135, v136, v137, v138, v139);
  v152 = objc_msgSend_count(a6, v145, v146, v147, v148, v149, v150, v151);
  v159 = objc_msgSend_objectAtIndexedSubscript_(a6, v153, 0, v154, v155, v156, v157, v158);
  v167 = objc_msgSend_width(v159, v160, v161, v162, v163, v164, v165, v166);
  v174 = objc_msgSend_objectAtIndexedSubscript_(a6, v168, 0, v169, v170, v171, v172, v173);
  v182 = objc_msgSend_height(v174, v175, v176, v177, v178, v179, v180, v181);
  v189 = objc_msgSend_objectAtIndexedSubscript_(a6, v183, 0, v184, v185, v186, v187, v188);
  v197 = objc_msgSend_featureChannels(v189, v190, v191, v192, v193, v194, v195, v196);
  v205 = objc_msgSend_destinationFeatureChannelOffset(v10[18], v198, v199, v200, v201, v202, v203, v204);
  v213 = objc_msgSend_label(v10[18], v206, v207, v208, v209, v210, v211, v212);
  v220 = objc_msgSend_cStringUsingEncoding_(v213, v214, 1, v215, v216, v217, v218, v219);
  v227 = objc_msgSend_cStringUsingEncoding_(v235, v221, 1, v222, v223, v224, v225, v226);
  return sub_239BE215C(v236, v228, "%s[%lu] %lu*{%lu x %lu x %lu %s}[%lu](offset:%lu) -> %lu*{%lu x %lu x %lu %s}[%lu]  offset: %lu   %s\n\tpadding policy: %s\n", v234, v233, v232, v231, v111, v140, v230, v143, v144, v152, v167, v182, v197, v229, v237, v205, v220, v227);
}

NSString *sub_239C163E0(uint64_t a1)
{
  if (*(a1 + 144))
  {
    v1 = MEMORY[0x277CCACA8];
    v2 = objc_opt_class();
    v3 = NSStringFromClass(v2);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    return objc_msgSend_stringWithFormat_(v1, v6, @"(%@ --> %@)", v7, v8, v9, v10, v11, v3, v5);
  }

  else
  {
    v13 = objc_opt_class();

    return NSStringFromClass(v13);
  }
}