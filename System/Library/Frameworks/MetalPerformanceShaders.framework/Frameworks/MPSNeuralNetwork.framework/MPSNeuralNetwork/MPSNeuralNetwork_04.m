uint64_t sub_239C1647C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  objc_msgSend_setOptions_(*(a1 + 104), a2, a2, a4, a5, a6, a7, a8);
  v16 = *(a1 + 144);

  return objc_msgSend_setOptions_(v16, v10, a2, v11, v12, v13, v14, v15);
}

void *sub_239C164C4(void *result, const char *a2, void *a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
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

  v34 = v10[13];
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
  v98 = objc_msgSend_sourceFeatureChannelOffset(v10[13], v87, v88, v89, v90, v91, v92, v93);
  v106 = objc_msgSend_width(a6, v99, v100, v101, v102, v103, v104, v105);
  v114 = objc_msgSend_height(a6, v107, v108, v109, v110, v111, v112, v113);
  v122 = objc_msgSend_featureChannels(a6, v115, v116, v117, v118, v119, v120, v121);
  v130 = objc_msgSend_destinationFeatureChannelOffset(v10[13], v123, v124, v125, v126, v127, v128, v129);
  v138 = objc_msgSend_label(v10[13], v131, v132, v133, v134, v135, v136, v137);
  v145 = objc_msgSend_cStringUsingEncoding_(v138, v139, 1, v140, v141, v142, v143, v144);
  v152 = objc_msgSend_cStringUsingEncoding_(v159, v146, 1, v147, v148, v149, v150, v151);
  return sub_239BE215C(v34, v153, "%s[%lu] {%lu x %lu x %lu %s}[%lu](offset:%lu) -> {%lu x %lu x %lu %s}[%lu]  offset: %lu %s\n\tpadding policy: %s\n", v158, v157, v156, v72, v94, v155, v97, v98, v106, v114, v122, v154, v160, v130, v145, v152);
}

void *sub_239C168C8(void *result, const char *a2, void *a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
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

  v236 = v10[13];
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
  v144 = objc_msgSend_sourceFeatureChannelOffset(v10[13], v133, v134, v135, v136, v137, v138, v139);
  v152 = objc_msgSend_count(a6, v145, v146, v147, v148, v149, v150, v151);
  v159 = objc_msgSend_objectAtIndexedSubscript_(a6, v153, 0, v154, v155, v156, v157, v158);
  v167 = objc_msgSend_width(v159, v160, v161, v162, v163, v164, v165, v166);
  v174 = objc_msgSend_objectAtIndexedSubscript_(a6, v168, 0, v169, v170, v171, v172, v173);
  v182 = objc_msgSend_height(v174, v175, v176, v177, v178, v179, v180, v181);
  v189 = objc_msgSend_objectAtIndexedSubscript_(a6, v183, 0, v184, v185, v186, v187, v188);
  v197 = objc_msgSend_featureChannels(v189, v190, v191, v192, v193, v194, v195, v196);
  v205 = objc_msgSend_destinationFeatureChannelOffset(v10[13], v198, v199, v200, v201, v202, v203, v204);
  v213 = objc_msgSend_label(v10[13], v206, v207, v208, v209, v210, v211, v212);
  v220 = objc_msgSend_cStringUsingEncoding_(v213, v214, 1, v215, v216, v217, v218, v219);
  v227 = objc_msgSend_cStringUsingEncoding_(v235, v221, 1, v222, v223, v224, v225, v226);
  return sub_239BE215C(v236, v228, "%s[%lu] %lu*{%lu x %lu x %lu %s}[%lu](offset:%lu) -> %lu*{%lu x %lu x %lu %s}[%lu]  offset: %lu   %s\n\tpadding policy: %s\n", v234, v233, v232, v231, v111, v140, v230, v143, v144, v152, v167, v182, v197, v229, v237, v205, v220, v227);
}

uint64_t sub_239C16D40(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a1 + 144);
  v11 = objc_msgSend_destinationFeatureChannelOffset(v10, a2, a3, a4, a5, a6, a7, a8);
  objc_msgSend_setDestinationFeatureChannelOffset_(v10, v12, &a2[v11], v13, v14, v15, v16, v17);
  v18 = *(a1 + 104);
  v27 = &a2[objc_msgSend_destinationFeatureChannelOffset(v18, v19, v20, v21, v22, v23, v24, v25)];

  return objc_msgSend_setDestinationFeatureChannelOffset_(v18, v26, v27, v28, v29, v30, v31, v32);
}

uint64_t sub_239C16DA8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  objc_msgSend_setDestinationFeatureChannelOffset_(*(a1 + 144), a2, 0, a4, a5, a6, a7, a8);
  v15 = *(a1 + 104);

  return objc_msgSend_setDestinationFeatureChannelOffset_(v15, v9, 0, v10, v11, v12, v13, v14);
}

void *sub_239C16DEC(void **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v77 = xmmword_239D7D680;
  (*(*a1 + 35))(a1, &v77, 0);
  objc_msgSend_setPrimarySourceFeatureChannelOffset_(a1[13], v8, v77, v9, v10, v11, v12, v13);
  objc_msgSend_setPrimarySourceFeatureChannelOffset_(a1[18], v14, v77, v15, v16, v17, v18, v19);
  objc_msgSend_setPrimarySourceFeatureChannelMaxCount_(a1[13], v20, *(&v77 + 1), v21, v22, v23, v24, v25);
  objc_msgSend_setPrimarySourceFeatureChannelMaxCount_(a1[18], v26, *(&v77 + 1), v27, v28, v29, v30, v31);
  v77 = xmmword_239D7D680;
  (*(*a1 + 35))(a1, &v77, 1);
  objc_msgSend_setSecondarySourceFeatureChannelOffset_(a1[13], v32, v77, v33, v34, v35, v36, v37);
  objc_msgSend_setSecondarySourceFeatureChannelOffset_(a1[18], v38, v77, v39, v40, v41, v42, v43);
  objc_msgSend_setSecondarySourceFeatureChannelMaxCount_(a1[13], v44, *(&v77 + 1), v45, v46, v47, v48, v49);
  objc_msgSend_setSecondarySourceFeatureChannelMaxCount_(a1[18], v50, *(&v77 + 1), v51, v52, v53, v54, v55);
  v61 = objc_msgSend_destinationImageDescriptorForSourceImages_sourceStates_(a1[13], v56, a2, a3, v57, v58, v59, v60);
  v68 = v61;
  if (*(a1[1] + 11))
  {
    objc_msgSend_setChannelFormat_(v61, v62, *(a1[1] + 11), v63, v64, v65, v66, v67);
  }

  else
  {
    objc_msgSend_setChannelFormat_(v61, v62, a4, v63, v64, v65, v66, v67);
  }

  if (v68 || !MTLReportFailureTypeEnabled())
  {
    return v68;
  }

  objc_msgSend_padding(a1[13], v70, v71, v72, v73, v74, v75, v76);
  MTLReportFailure();
  return 0;
}

uint64_t sub_239C16FA0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  objc_msgSend_setPadding_(*(a1 + 104), a2, a2, a4, a5, a6, a7, a8);
  v16 = *(a1 + 144);

  return objc_msgSend_setPadding_(v16, v10, a2, v11, v12, v13, v14, v15);
}

uint64_t sub_239C16FE8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  objc_msgSend_setOptions_(*(a1 + 104), a2, a2, a4, a5, a6, a7, a8);
  v16 = *(a1 + 144);

  return objc_msgSend_setOptions_(v16, v10, a2, v11, v12, v13, v14, v15);
}

uint64_t sub_239C17030(void *a1, const char *a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = a1[18];
  v15 = objc_msgSend_objectAtIndexedSubscript_(a3, a2, 0, a4, a5, a6, a7, a8);
  v22 = objc_msgSend_objectAtIndexedSubscript_(a3, v16, 1, v17, v18, v19, v20, v21);
  v29 = objc_msgSend_objectAtIndexedSubscript_(a4, v23, 0, v24, v25, v26, v27, v28);
  objc_msgSend_encodeToCommandBuffer_sourceGradient_sourceImage_gradientState_destinationGradient_(v14, v30, a2, v15, v22, v29, a6, v31);
  v32 = *(*a1 + 184);

  return v32(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_239C17118(void *a1, const char *a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = objc_msgSend_objectAtIndexedSubscript_(a4, a2, 0, a4, a5, a6, a7, a8);
  v15 = a1[13];
  v22 = objc_msgSend_objectAtIndexedSubscript_(a3, v16, 0, v17, v18, v19, v20, v21);
  v29 = objc_msgSend_objectAtIndexedSubscript_(a3, v23, 1, v24, v25, v26, v27, v28);
  objc_msgSend_encodeToCommandBuffer_sourceGradient_sourceImage_gradientState_destinationGradient_(v15, v30, a2, v22, v29, v14, a6, v31);
  v32 = *(*a1 + 352);

  return v32(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_239C17214(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  (*(*a1 + 192))(a1);
  v11 = a1[18];
  v18 = objc_msgSend_objectAtIndexedSubscript_(a3, v12, 0, v13, v14, v15, v16, v17);
  v25 = objc_msgSend_objectAtIndexedSubscript_(a3, v19, 1, v20, v21, v22, v23, v24);
  v32 = objc_msgSend_objectAtIndexedSubscript_(a4, v26, 0, v27, v28, v29, v30, v31);
  objc_msgSend_encodeBatchToCommandBuffer_sourceGradients_sourceImages_gradientStates_destinationGradients_(v11, v33, a2, v18, v25, v32, a6, v34);
  objc_msgSend_objectAtIndexedSubscript_(a4, v35, 0, v36, v37, v38, v39, v40);

  return MPSDecrementReadCount();
}

uint64_t sub_239C172E0(void *a1, const char *a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = objc_msgSend_objectAtIndexedSubscript_(a4, a2, 0, a4, a5, a6, a7, a8);
  v15 = a1[13];
  v22 = objc_msgSend_objectAtIndexedSubscript_(a3, v16, 0, v17, v18, v19, v20, v21);
  v29 = objc_msgSend_objectAtIndexedSubscript_(a3, v23, 1, v24, v25, v26, v27, v28);
  objc_msgSend_encodeBatchToCommandBuffer_sourceGradients_sourceImages_gradientStates_destinationGradients_(v15, v30, a2, v22, v29, v14, a6, v31);
  v32 = *(*a1 + 360);

  return v32(a1, a2, a3, a4, a5, a6);
}

void *sub_239C173DC(void *result, const char *a2, void *a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
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
  v20 = MEMORY[0x277CD7318];
  v21 = *(v13 + *MEMORY[0x277CD7318] + 4) & 0x7FF;
  if (v21 <= 0x307)
  {
    if ((*(v13 + *MEMORY[0x277CD7318] + 4) & 0x7FFu) <= 0x117)
    {
      if (v21 == 264)
      {
        v22 = "bfloat16";
        goto LABEL_30;
      }

      if (v21 == 267)
      {
        v22 = "float16";
        goto LABEL_30;
      }
    }

    else
    {
      switch(v21)
      {
        case 0x118u:
          v22 = "float32";
          goto LABEL_30;
        case 0x208u:
          v22 = "unorm8";
          goto LABEL_30;
        case 0x210u:
          v22 = "unorm16";
          goto LABEL_30;
      }
    }
  }

  else if ((*(v13 + *MEMORY[0x277CD7318] + 4) & 0x7FFu) > 0x60F)
  {
    switch(v21)
    {
      case 0x610u:
        v22 = "uint6";
        goto LABEL_30;
      case 0x708u:
        v22 = "sint8";
        goto LABEL_30;
      case 0x710u:
        v22 = "sint16";
        goto LABEL_30;
    }
  }

  else
  {
    switch(v21)
    {
      case 0x308u:
        v22 = "snorm8";
        goto LABEL_30;
      case 0x310u:
        v22 = "snorm16";
        goto LABEL_30;
      case 0x608u:
        v22 = "uint8";
        goto LABEL_30;
    }
  }

  v22 = "<unknown channel format>";
LABEL_30:
  v217 = v22;
  v23 = objc_msgSend_objectAtIndexedSubscript_(a3, v14, 1, v15, v16, v17, v18, v19);
  v31 = *v20;
  v32 = *(v23 + v31 + 4) & 0x7FF;
  if (v32 <= 0x307)
  {
    if ((*(v23 + v31 + 4) & 0x7FFu) <= 0x117)
    {
      if (v32 == 264)
      {
        v33 = "bfloat16";
        goto LABEL_56;
      }

      if (v32 == 267)
      {
        v33 = "float16";
        goto LABEL_56;
      }
    }

    else
    {
      switch(v32)
      {
        case 0x118u:
          v33 = "float32";
          goto LABEL_56;
        case 0x208u:
          v33 = "unorm8";
          goto LABEL_56;
        case 0x210u:
          v33 = "unorm16";
          goto LABEL_56;
      }
    }
  }

  else if ((*(v23 + v31 + 4) & 0x7FFu) > 0x60F)
  {
    switch(v32)
    {
      case 0x610u:
        v33 = "uint6";
        goto LABEL_56;
      case 0x708u:
        v33 = "sint8";
        goto LABEL_56;
      case 0x710u:
        v33 = "sint16";
        goto LABEL_56;
    }
  }

  else
  {
    switch(v32)
    {
      case 0x308u:
        v33 = "snorm8";
        goto LABEL_56;
      case 0x310u:
        v33 = "snorm16";
        goto LABEL_56;
      case 0x608u:
        v33 = "uint8";
        goto LABEL_56;
    }
  }

  v33 = "<unknown channel format>";
LABEL_56:
  v216 = v33;
  v34 = *(a6 + v31 + 4) & 0x7FF;
  v227 = v12;
  if (v34 <= 775)
  {
    if (v34 <= 279)
    {
      if (v34 == 264)
      {
        v35 = "bfloat16";
        goto LABEL_82;
      }

      if (v34 == 267)
      {
        v35 = "float16";
        goto LABEL_82;
      }
    }

    else
    {
      switch(v34)
      {
        case 280:
          v35 = "float32";
          goto LABEL_82;
        case 520:
          v35 = "unorm8";
          goto LABEL_82;
        case 528:
          v35 = "unorm16";
          goto LABEL_82;
      }
    }

LABEL_81:
    v35 = "<unknown channel format>";
    goto LABEL_82;
  }

  if (v34 > 1551)
  {
    switch(v34)
    {
      case 1552:
        v35 = "uint6";
        goto LABEL_82;
      case 1800:
        v35 = "sint8";
        goto LABEL_82;
      case 1808:
        v35 = "sint16";
        goto LABEL_82;
    }

    goto LABEL_81;
  }

  if (v34 == 776)
  {
    v35 = "snorm8";
    goto LABEL_82;
  }

  if (v34 == 784)
  {
    v35 = "snorm16";
    goto LABEL_82;
  }

  if (v34 != 1544)
  {
    goto LABEL_81;
  }

  v35 = "uint8";
LABEL_82:
  v215 = v35;
  v36 = objc_msgSend_padding(v10[13], v24, v25, v26, v27, v28, v29, v30);
  if (objc_opt_respondsToSelector())
  {
    v223 = objc_msgSend_label(v36, v37, v38, v39, v40, v41, v42, v43);
  }

  else
  {
    v223 = @"<missing label>";
  }

  v226 = v10[18];
  v44 = objc_opt_class();
  v45 = NSStringFromClass(v44);
  v52 = objc_msgSend_cStringUsingEncoding_(v45, v46, 1, v47, v48, v49, v50, v51);
  v224 = v10[15];
  v225 = v52;
  v59 = objc_msgSend_objectAtIndexedSubscript_(a3, v53, 0, v54, v55, v56, v57, v58);
  v222 = objc_msgSend_width(v59, v60, v61, v62, v63, v64, v65, v66);
  v73 = objc_msgSend_objectAtIndexedSubscript_(a3, v67, 0, v68, v69, v70, v71, v72);
  v221 = objc_msgSend_height(v73, v74, v75, v76, v77, v78, v79, v80);
  v87 = objc_msgSend_objectAtIndexedSubscript_(a3, v81, 0, v82, v83, v84, v85, v86);
  v220 = objc_msgSend_featureChannels(v87, v88, v89, v90, v91, v92, v93, v94);
  v102 = *v10[4];
  do
  {
    v103 = v102;
    v102 = *(v102 + 40);
  }

  while (v102);
  v219 = *(v103 + 64);
  v218 = objc_msgSend_primarySourceFeatureChannelOffset(v10[18], v95, v96, v97, v98, v99, v100, v101);
  v110 = objc_msgSend_objectAtIndexedSubscript_(a3, v104, 1, v105, v106, v107, v108, v109);
  v118 = objc_msgSend_width(v110, v111, v112, v113, v114, v115, v116, v117);
  v125 = objc_msgSend_objectAtIndexedSubscript_(a3, v119, 1, v120, v121, v122, v123, v124);
  v133 = objc_msgSend_height(v125, v126, v127, v128, v129, v130, v131, v132);
  v140 = objc_msgSend_objectAtIndexedSubscript_(a3, v134, 1, v135, v136, v137, v138, v139);
  v155 = objc_msgSend_featureChannels(v140, v141, v142, v143, v144, v145, v146, v147);
  v156 = *(v10[4] + 8);
  do
  {
    v157 = v156;
    v156 = *(v156 + 40);
  }

  while (v156);
  v158 = *(v157 + 64);
  v159 = objc_msgSend_secondarySourceFeatureChannelOffset(v10[18], v148, v149, v150, v151, v152, v153, v154);
  v167 = objc_msgSend_width(a6, v160, v161, v162, v163, v164, v165, v166);
  v175 = objc_msgSend_height(a6, v168, v169, v170, v171, v172, v173, v174);
  v183 = objc_msgSend_featureChannels(a6, v176, v177, v178, v179, v180, v181, v182);
  v191 = objc_msgSend_destinationFeatureChannelOffset(v10[18], v184, v185, v186, v187, v188, v189, v190);
  v199 = objc_msgSend_label(v10[18], v192, v193, v194, v195, v196, v197, v198);
  v206 = objc_msgSend_cStringUsingEncoding_(v199, v200, 1, v201, v202, v203, v204, v205);
  v213 = objc_msgSend_cStringUsingEncoding_(v223, v207, 1, v208, v209, v210, v211, v212);
  return sub_239BE215C(v226, v214, "%s[%lu] {%lu x %lu x %lu %s}[%lu](offset:%lu) + {%lu x %lu x %lu %s}[%lu](offset:%lu) -> {%lu x %lu x %lu %s}[%lu]  offset: %lu  %s\n\tpadding policy: %s\n", v225, v224, v222, v221, v220, v217, v219, v218, v118, v133, v155, v216, v158, v159, v167, v175, v183, v215, v227, v191, v206, v213);
}

void *sub_239C1798C(void *result, const char *a2, void *a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
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
  v20 = objc_msgSend_objectAtIndexedSubscript_(v13, v14, 0, v15, v16, v17, v18, v19);
  v27 = MEMORY[0x277CD7318];
  v28 = *(v20 + *MEMORY[0x277CD7318] + 4) & 0x7FF;
  if (v28 <= 0x307)
  {
    if ((*(v20 + *MEMORY[0x277CD7318] + 4) & 0x7FFu) <= 0x117)
    {
      if (v28 == 264)
      {
        v29 = "bfloat16";
        goto LABEL_30;
      }

      if (v28 == 267)
      {
        v29 = "float16";
        goto LABEL_30;
      }
    }

    else
    {
      switch(v28)
      {
        case 0x118u:
          v29 = "float32";
          goto LABEL_30;
        case 0x208u:
          v29 = "unorm8";
          goto LABEL_30;
        case 0x210u:
          v29 = "unorm16";
          goto LABEL_30;
      }
    }
  }

  else if ((*(v20 + *MEMORY[0x277CD7318] + 4) & 0x7FFu) > 0x60F)
  {
    switch(v28)
    {
      case 0x610u:
        v29 = "uint6";
        goto LABEL_30;
      case 0x708u:
        v29 = "sint8";
        goto LABEL_30;
      case 0x710u:
        v29 = "sint16";
        goto LABEL_30;
    }
  }

  else
  {
    switch(v28)
    {
      case 0x308u:
        v29 = "snorm8";
        goto LABEL_30;
      case 0x310u:
        v29 = "snorm16";
        goto LABEL_30;
      case 0x608u:
        v29 = "uint8";
        goto LABEL_30;
    }
  }

  v29 = "<unknown channel format>";
LABEL_30:
  v333 = v29;
  v30 = objc_msgSend_objectAtIndexedSubscript_(a3, v21, 1, v22, v23, v24, v25, v26);
  v43 = *(objc_msgSend_objectAtIndexedSubscript_(v30, v31, 0, v32, v33, v34, v35, v36) + *v27 + 4) & 0x7FF;
  if (v43 <= 0x307)
  {
    if (v43 <= 279)
    {
      if (v43 == 264)
      {
        v44 = "bfloat16";
        goto LABEL_56;
      }

      if (v43 == 267)
      {
        v44 = "float16";
        goto LABEL_56;
      }
    }

    else
    {
      switch(v43)
      {
        case 280:
          v44 = "float32";
          goto LABEL_56;
        case 520:
          v44 = "unorm8";
          goto LABEL_56;
        case 528:
          v44 = "unorm16";
          goto LABEL_56;
      }
    }
  }

  else if (v43 > 1551)
  {
    switch(v43)
    {
      case 1552:
        v44 = "uint6";
        goto LABEL_56;
      case 1800:
        v44 = "sint8";
        goto LABEL_56;
      case 1808:
        v44 = "sint16";
        goto LABEL_56;
    }
  }

  else
  {
    switch(v43)
    {
      case 776:
        v44 = "snorm8";
        goto LABEL_56;
      case 784:
        v44 = "snorm16";
        goto LABEL_56;
      case 1544:
        v44 = "uint8";
        goto LABEL_56;
    }
  }

  v44 = "<unknown channel format>";
LABEL_56:
  v332 = v44;
  v52 = *(objc_msgSend_objectAtIndexedSubscript_(a6, v37, 0, v38, v39, v40, v41, v42) + *v27 + 4) & 0x7FF;
  v346 = v12;
  if (v52 <= 0x307)
  {
    if (v52 <= 279)
    {
      if (v52 == 264)
      {
        v53 = "bfloat16";
        goto LABEL_82;
      }

      if (v52 == 267)
      {
        v53 = "float16";
        goto LABEL_82;
      }
    }

    else
    {
      switch(v52)
      {
        case 280:
          v53 = "float32";
          goto LABEL_82;
        case 520:
          v53 = "unorm8";
          goto LABEL_82;
        case 528:
          v53 = "unorm16";
          goto LABEL_82;
      }
    }

LABEL_81:
    v53 = "<unknown channel format>";
    goto LABEL_82;
  }

  if (v52 > 1551)
  {
    switch(v52)
    {
      case 1552:
        v53 = "uint6";
        goto LABEL_82;
      case 1800:
        v53 = "sint8";
        goto LABEL_82;
      case 1808:
        v53 = "sint16";
        goto LABEL_82;
    }

    goto LABEL_81;
  }

  if (v52 == 776)
  {
    v53 = "snorm8";
    goto LABEL_82;
  }

  if (v52 == 784)
  {
    v53 = "snorm16";
    goto LABEL_82;
  }

  if (v52 != 1544)
  {
    goto LABEL_81;
  }

  v53 = "uint8";
LABEL_82:
  v331 = v53;
  v54 = objc_msgSend_padding(v10[13], v45, v46, v47, v48, v49, v50, v51);
  if (objc_opt_respondsToSelector())
  {
    v342 = objc_msgSend_label(v54, v55, v56, v57, v58, v59, v60, v61);
  }

  else
  {
    v342 = @"<missing label>";
  }

  v345 = v10[18];
  v62 = objc_opt_class();
  v63 = NSStringFromClass(v62);
  v70 = objc_msgSend_cStringUsingEncoding_(v63, v64, 1, v65, v66, v67, v68, v69);
  v343 = v10[15];
  v344 = v70;
  v77 = objc_msgSend_objectAtIndexedSubscript_(a3, v71, 0, v72, v73, v74, v75, v76);
  v341 = objc_msgSend_count(v77, v78, v79, v80, v81, v82, v83, v84);
  v91 = objc_msgSend_objectAtIndexedSubscript_(a3, v85, 0, v86, v87, v88, v89, v90);
  v98 = objc_msgSend_objectAtIndexedSubscript_(v91, v92, 0, v93, v94, v95, v96, v97);
  v340 = objc_msgSend_width(v98, v99, v100, v101, v102, v103, v104, v105);
  v112 = objc_msgSend_objectAtIndexedSubscript_(a3, v106, 0, v107, v108, v109, v110, v111);
  v119 = objc_msgSend_objectAtIndexedSubscript_(v112, v113, 0, v114, v115, v116, v117, v118);
  v339 = objc_msgSend_height(v119, v120, v121, v122, v123, v124, v125, v126);
  v133 = objc_msgSend_objectAtIndexedSubscript_(a3, v127, 0, v128, v129, v130, v131, v132);
  v140 = objc_msgSend_objectAtIndexedSubscript_(v133, v134, 0, v135, v136, v137, v138, v139);
  v338 = objc_msgSend_featureChannels(v140, v141, v142, v143, v144, v145, v146, v147);
  v154 = *v10[4];
  do
  {
    v155 = v154;
    v154 = *(v154 + 40);
  }

  while (v154);
  v337 = *(v155 + 64);
  v156 = objc_msgSend_objectAtIndexedSubscript_(a3, v148, 1, v149, v150, v151, v152, v153);
  v336 = objc_msgSend_count(v156, v157, v158, v159, v160, v161, v162, v163);
  v335 = objc_msgSend_primarySourceFeatureChannelOffset(v10[18], v164, v165, v166, v167, v168, v169, v170);
  v177 = objc_msgSend_objectAtIndexedSubscript_(a3, v171, 1, v172, v173, v174, v175, v176);
  v184 = objc_msgSend_objectAtIndexedSubscript_(v177, v178, 0, v179, v180, v181, v182, v183);
  v334 = objc_msgSend_width(v184, v185, v186, v187, v188, v189, v190, v191);
  v198 = objc_msgSend_objectAtIndexedSubscript_(a3, v192, 1, v193, v194, v195, v196, v197);
  v205 = objc_msgSend_objectAtIndexedSubscript_(v198, v199, 0, v200, v201, v202, v203, v204);
  v213 = objc_msgSend_height(v205, v206, v207, v208, v209, v210, v211, v212);
  v220 = objc_msgSend_objectAtIndexedSubscript_(a3, v214, 1, v215, v216, v217, v218, v219);
  v227 = objc_msgSend_objectAtIndexedSubscript_(v220, v221, 0, v222, v223, v224, v225, v226);
  v242 = objc_msgSend_featureChannels(v227, v228, v229, v230, v231, v232, v233, v234);
  v243 = *(v10[4] + 8);
  do
  {
    v244 = v243;
    v243 = *(v243 + 40);
  }

  while (v243);
  v245 = *(v244 + 64);
  v246 = objc_msgSend_count(a6, v235, v236, v237, v238, v239, v240, v241);
  v254 = objc_msgSend_secondarySourceFeatureChannelOffset(v10[18], v247, v248, v249, v250, v251, v252, v253);
  v261 = objc_msgSend_objectAtIndexedSubscript_(a6, v255, 0, v256, v257, v258, v259, v260);
  v269 = objc_msgSend_width(v261, v262, v263, v264, v265, v266, v267, v268);
  v276 = objc_msgSend_objectAtIndexedSubscript_(a6, v270, 0, v271, v272, v273, v274, v275);
  v284 = objc_msgSend_height(v276, v277, v278, v279, v280, v281, v282, v283);
  v291 = objc_msgSend_objectAtIndexedSubscript_(a6, v285, 0, v286, v287, v288, v289, v290);
  v299 = objc_msgSend_featureChannels(v291, v292, v293, v294, v295, v296, v297, v298);
  v307 = objc_msgSend_destinationFeatureChannelOffset(v10[18], v300, v301, v302, v303, v304, v305, v306);
  v315 = objc_msgSend_label(v10[18], v308, v309, v310, v311, v312, v313, v314);
  v322 = objc_msgSend_cStringUsingEncoding_(v315, v316, 1, v317, v318, v319, v320, v321);
  v329 = objc_msgSend_cStringUsingEncoding_(v342, v323, 1, v324, v325, v326, v327, v328);
  return sub_239BE215C(v345, v330, "%s[%lu] %lu*{%lu x %lu x %lu %s}[%lu](offset:%lu) + %lu*{%lu x %lu x %lu %s}[%lu](offset:%lu) -> %lu*{%lu x %lu x %lu %s}[%lu]  offset: %lu  %s\n\tpadding policy: %s\n", v344, v343, v341, v340, v339, v338, v333, v337, v336, v335, v334, v213, v242, v332, v245, v246, v254, v269, v284, v299, v331, v346, v307, v322, v329);
}

NSString *sub_239C17FF0(uint64_t a1)
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

uint64_t sub_239C1808C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  objc_msgSend_setOptions_(*(a1 + 104), a2, a2, a4, a5, a6, a7, a8);
  v16 = *(a1 + 144);

  return objc_msgSend_setOptions_(v16, v10, a2, v11, v12, v13, v14, v15);
}

void *sub_239C180D4(void *result, const char *a2, void *a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
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
  v20 = MEMORY[0x277CD7318];
  v21 = *(v13 + *MEMORY[0x277CD7318] + 4) & 0x7FF;
  if (v21 <= 0x307)
  {
    if ((*(v13 + *MEMORY[0x277CD7318] + 4) & 0x7FFu) <= 0x117)
    {
      if (v21 == 264)
      {
        v22 = "bfloat16";
        goto LABEL_30;
      }

      if (v21 == 267)
      {
        v22 = "float16";
        goto LABEL_30;
      }
    }

    else
    {
      switch(v21)
      {
        case 0x118u:
          v22 = "float32";
          goto LABEL_30;
        case 0x208u:
          v22 = "unorm8";
          goto LABEL_30;
        case 0x210u:
          v22 = "unorm16";
          goto LABEL_30;
      }
    }
  }

  else if ((*(v13 + *MEMORY[0x277CD7318] + 4) & 0x7FFu) > 0x60F)
  {
    switch(v21)
    {
      case 0x610u:
        v22 = "uint6";
        goto LABEL_30;
      case 0x708u:
        v22 = "sint8";
        goto LABEL_30;
      case 0x710u:
        v22 = "sint16";
        goto LABEL_30;
    }
  }

  else
  {
    switch(v21)
    {
      case 0x308u:
        v22 = "snorm8";
        goto LABEL_30;
      case 0x310u:
        v22 = "snorm16";
        goto LABEL_30;
      case 0x608u:
        v22 = "uint8";
        goto LABEL_30;
    }
  }

  v22 = "<unknown channel format>";
LABEL_30:
  v217 = v22;
  v23 = objc_msgSend_objectAtIndexedSubscript_(a3, v14, 1, v15, v16, v17, v18, v19);
  v31 = *v20;
  v32 = *(v23 + v31 + 4) & 0x7FF;
  if (v32 <= 0x307)
  {
    if ((*(v23 + v31 + 4) & 0x7FFu) <= 0x117)
    {
      if (v32 == 264)
      {
        v33 = "bfloat16";
        goto LABEL_56;
      }

      if (v32 == 267)
      {
        v33 = "float16";
        goto LABEL_56;
      }
    }

    else
    {
      switch(v32)
      {
        case 0x118u:
          v33 = "float32";
          goto LABEL_56;
        case 0x208u:
          v33 = "unorm8";
          goto LABEL_56;
        case 0x210u:
          v33 = "unorm16";
          goto LABEL_56;
      }
    }
  }

  else if ((*(v23 + v31 + 4) & 0x7FFu) > 0x60F)
  {
    switch(v32)
    {
      case 0x610u:
        v33 = "uint6";
        goto LABEL_56;
      case 0x708u:
        v33 = "sint8";
        goto LABEL_56;
      case 0x710u:
        v33 = "sint16";
        goto LABEL_56;
    }
  }

  else
  {
    switch(v32)
    {
      case 0x308u:
        v33 = "snorm8";
        goto LABEL_56;
      case 0x310u:
        v33 = "snorm16";
        goto LABEL_56;
      case 0x608u:
        v33 = "uint8";
        goto LABEL_56;
    }
  }

  v33 = "<unknown channel format>";
LABEL_56:
  v216 = v33;
  v34 = *(a6 + v31 + 4) & 0x7FF;
  v227 = v12;
  if (v34 <= 775)
  {
    if (v34 <= 279)
    {
      if (v34 == 264)
      {
        v35 = "bfloat16";
        goto LABEL_82;
      }

      if (v34 == 267)
      {
        v35 = "float16";
        goto LABEL_82;
      }
    }

    else
    {
      switch(v34)
      {
        case 280:
          v35 = "float32";
          goto LABEL_82;
        case 520:
          v35 = "unorm8";
          goto LABEL_82;
        case 528:
          v35 = "unorm16";
          goto LABEL_82;
      }
    }

LABEL_81:
    v35 = "<unknown channel format>";
    goto LABEL_82;
  }

  if (v34 > 1551)
  {
    switch(v34)
    {
      case 1552:
        v35 = "uint6";
        goto LABEL_82;
      case 1800:
        v35 = "sint8";
        goto LABEL_82;
      case 1808:
        v35 = "sint16";
        goto LABEL_82;
    }

    goto LABEL_81;
  }

  if (v34 == 776)
  {
    v35 = "snorm8";
    goto LABEL_82;
  }

  if (v34 == 784)
  {
    v35 = "snorm16";
    goto LABEL_82;
  }

  if (v34 != 1544)
  {
    goto LABEL_81;
  }

  v35 = "uint8";
LABEL_82:
  v215 = v35;
  v36 = objc_msgSend_padding(v10[13], v24, v25, v26, v27, v28, v29, v30);
  if (objc_opt_respondsToSelector())
  {
    v223 = objc_msgSend_label(v36, v37, v38, v39, v40, v41, v42, v43);
  }

  else
  {
    v223 = @"<missing label>";
  }

  v226 = v10[13];
  v44 = objc_opt_class();
  v45 = NSStringFromClass(v44);
  v52 = objc_msgSend_cStringUsingEncoding_(v45, v46, 1, v47, v48, v49, v50, v51);
  v224 = v10[15];
  v225 = v52;
  v59 = objc_msgSend_objectAtIndexedSubscript_(a3, v53, 0, v54, v55, v56, v57, v58);
  v222 = objc_msgSend_width(v59, v60, v61, v62, v63, v64, v65, v66);
  v73 = objc_msgSend_objectAtIndexedSubscript_(a3, v67, 0, v68, v69, v70, v71, v72);
  v221 = objc_msgSend_height(v73, v74, v75, v76, v77, v78, v79, v80);
  v87 = objc_msgSend_objectAtIndexedSubscript_(a3, v81, 0, v82, v83, v84, v85, v86);
  v220 = objc_msgSend_featureChannels(v87, v88, v89, v90, v91, v92, v93, v94);
  v102 = *v10[4];
  do
  {
    v103 = v102;
    v102 = *(v102 + 40);
  }

  while (v102);
  v219 = *(v103 + 64);
  v218 = objc_msgSend_primarySourceFeatureChannelOffset(v10[13], v95, v96, v97, v98, v99, v100, v101);
  v110 = objc_msgSend_objectAtIndexedSubscript_(a3, v104, 1, v105, v106, v107, v108, v109);
  v118 = objc_msgSend_width(v110, v111, v112, v113, v114, v115, v116, v117);
  v125 = objc_msgSend_objectAtIndexedSubscript_(a3, v119, 1, v120, v121, v122, v123, v124);
  v133 = objc_msgSend_height(v125, v126, v127, v128, v129, v130, v131, v132);
  v140 = objc_msgSend_objectAtIndexedSubscript_(a3, v134, 1, v135, v136, v137, v138, v139);
  v155 = objc_msgSend_featureChannels(v140, v141, v142, v143, v144, v145, v146, v147);
  v156 = *(v10[4] + 8);
  do
  {
    v157 = v156;
    v156 = *(v156 + 40);
  }

  while (v156);
  v158 = *(v157 + 64);
  v159 = objc_msgSend_secondarySourceFeatureChannelOffset(v10[13], v148, v149, v150, v151, v152, v153, v154);
  v167 = objc_msgSend_width(a6, v160, v161, v162, v163, v164, v165, v166);
  v175 = objc_msgSend_height(a6, v168, v169, v170, v171, v172, v173, v174);
  v183 = objc_msgSend_featureChannels(a6, v176, v177, v178, v179, v180, v181, v182);
  v191 = objc_msgSend_destinationFeatureChannelOffset(v10[13], v184, v185, v186, v187, v188, v189, v190);
  v199 = objc_msgSend_label(v10[13], v192, v193, v194, v195, v196, v197, v198);
  v206 = objc_msgSend_cStringUsingEncoding_(v199, v200, 1, v201, v202, v203, v204, v205);
  v213 = objc_msgSend_cStringUsingEncoding_(v223, v207, 1, v208, v209, v210, v211, v212);
  return sub_239BE215C(v226, v214, "%s[%lu] {%lu x %lu x %lu %s}[%lu](offset:%lu) + {%lu x %lu x %lu %s}[%lu](offset:%lu) -> {%lu x %lu x %lu %s}[%lu]  offset: %lu  %s\n\tpadding policy: %s\n", v225, v224, v222, v221, v220, v217, v219, v218, v118, v133, v155, v216, v158, v159, v167, v175, v183, v215, v227, v191, v206, v213);
}

void *sub_239C18684(void *result, const char *a2, void *a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
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
  v20 = objc_msgSend_objectAtIndexedSubscript_(v13, v14, 0, v15, v16, v17, v18, v19);
  v27 = MEMORY[0x277CD7318];
  v28 = *(v20 + *MEMORY[0x277CD7318] + 4) & 0x7FF;
  if (v28 <= 0x307)
  {
    if ((*(v20 + *MEMORY[0x277CD7318] + 4) & 0x7FFu) <= 0x117)
    {
      if (v28 == 264)
      {
        v29 = "bfloat16";
        goto LABEL_30;
      }

      if (v28 == 267)
      {
        v29 = "float16";
        goto LABEL_30;
      }
    }

    else
    {
      switch(v28)
      {
        case 0x118u:
          v29 = "float32";
          goto LABEL_30;
        case 0x208u:
          v29 = "unorm8";
          goto LABEL_30;
        case 0x210u:
          v29 = "unorm16";
          goto LABEL_30;
      }
    }
  }

  else if ((*(v20 + *MEMORY[0x277CD7318] + 4) & 0x7FFu) > 0x60F)
  {
    switch(v28)
    {
      case 0x610u:
        v29 = "uint6";
        goto LABEL_30;
      case 0x708u:
        v29 = "sint8";
        goto LABEL_30;
      case 0x710u:
        v29 = "sint16";
        goto LABEL_30;
    }
  }

  else
  {
    switch(v28)
    {
      case 0x308u:
        v29 = "snorm8";
        goto LABEL_30;
      case 0x310u:
        v29 = "snorm16";
        goto LABEL_30;
      case 0x608u:
        v29 = "uint8";
        goto LABEL_30;
    }
  }

  v29 = "<unknown channel format>";
LABEL_30:
  v298 = v29;
  v30 = objc_msgSend_objectAtIndexedSubscript_(a3, v21, 1, v22, v23, v24, v25, v26);
  v43 = *(objc_msgSend_objectAtIndexedSubscript_(v30, v31, 0, v32, v33, v34, v35, v36) + *v27 + 4) & 0x7FF;
  if (v43 <= 0x307)
  {
    if (v43 <= 279)
    {
      if (v43 == 264)
      {
        v44 = "bfloat16";
        goto LABEL_56;
      }

      if (v43 == 267)
      {
        v44 = "float16";
        goto LABEL_56;
      }
    }

    else
    {
      switch(v43)
      {
        case 280:
          v44 = "float32";
          goto LABEL_56;
        case 520:
          v44 = "unorm8";
          goto LABEL_56;
        case 528:
          v44 = "unorm16";
          goto LABEL_56;
      }
    }
  }

  else if (v43 > 1551)
  {
    switch(v43)
    {
      case 1552:
        v44 = "uint6";
        goto LABEL_56;
      case 1800:
        v44 = "sint8";
        goto LABEL_56;
      case 1808:
        v44 = "sint16";
        goto LABEL_56;
    }
  }

  else
  {
    switch(v43)
    {
      case 776:
        v44 = "snorm8";
        goto LABEL_56;
      case 784:
        v44 = "snorm16";
        goto LABEL_56;
      case 1544:
        v44 = "uint8";
        goto LABEL_56;
    }
  }

  v44 = "<unknown channel format>";
LABEL_56:
  v297 = v44;
  v52 = *(objc_msgSend_objectAtIndexedSubscript_(a6, v37, 0, v38, v39, v40, v41, v42) + *v27 + 4) & 0x7FF;
  v308 = v12;
  if (v52 <= 0x307)
  {
    if (v52 <= 279)
    {
      if (v52 == 264)
      {
        v53 = "bfloat16";
        goto LABEL_82;
      }

      if (v52 == 267)
      {
        v53 = "float16";
        goto LABEL_82;
      }
    }

    else
    {
      switch(v52)
      {
        case 280:
          v53 = "float32";
          goto LABEL_82;
        case 520:
          v53 = "unorm8";
          goto LABEL_82;
        case 528:
          v53 = "unorm16";
          goto LABEL_82;
      }
    }

LABEL_81:
    v53 = "<unknown channel format>";
    goto LABEL_82;
  }

  if (v52 > 1551)
  {
    switch(v52)
    {
      case 1552:
        v53 = "uint6";
        goto LABEL_82;
      case 1800:
        v53 = "sint8";
        goto LABEL_82;
      case 1808:
        v53 = "sint16";
        goto LABEL_82;
    }

    goto LABEL_81;
  }

  if (v52 == 776)
  {
    v53 = "snorm8";
    goto LABEL_82;
  }

  if (v52 == 784)
  {
    v53 = "snorm16";
    goto LABEL_82;
  }

  if (v52 != 1544)
  {
    goto LABEL_81;
  }

  v53 = "uint8";
LABEL_82:
  v296 = v53;
  v54 = objc_msgSend_padding(v10[13], v45, v46, v47, v48, v49, v50, v51);
  if (objc_opt_respondsToSelector())
  {
    v304 = objc_msgSend_label(v54, v55, v56, v57, v58, v59, v60, v61);
  }

  else
  {
    v304 = @"<missing label>";
  }

  v307 = v10[13];
  v62 = objc_opt_class();
  v63 = NSStringFromClass(v62);
  v70 = objc_msgSend_cStringUsingEncoding_(v63, v64, 1, v65, v66, v67, v68, v69);
  v305 = v10[15];
  v306 = v70;
  v77 = objc_msgSend_objectAtIndexedSubscript_(a3, v71, 0, v72, v73, v74, v75, v76);
  v84 = objc_msgSend_objectAtIndexedSubscript_(v77, v78, 0, v79, v80, v81, v82, v83);
  v303 = objc_msgSend_width(v84, v85, v86, v87, v88, v89, v90, v91);
  v98 = objc_msgSend_objectAtIndexedSubscript_(a3, v92, 0, v93, v94, v95, v96, v97);
  v105 = objc_msgSend_objectAtIndexedSubscript_(v98, v99, 0, v100, v101, v102, v103, v104);
  v302 = objc_msgSend_height(v105, v106, v107, v108, v109, v110, v111, v112);
  v119 = objc_msgSend_objectAtIndexedSubscript_(a3, v113, 0, v114, v115, v116, v117, v118);
  v126 = objc_msgSend_objectAtIndexedSubscript_(v119, v120, 0, v121, v122, v123, v124, v125);
  v301 = objc_msgSend_featureChannels(v126, v127, v128, v129, v130, v131, v132, v133);
  v141 = *v10[4];
  do
  {
    v142 = v141;
    v141 = *(v141 + 40);
  }

  while (v141);
  v300 = *(v142 + 64);
  v299 = objc_msgSend_primarySourceFeatureChannelOffset(v10[13], v134, v135, v136, v137, v138, v139, v140);
  v149 = objc_msgSend_objectAtIndexedSubscript_(a3, v143, 1, v144, v145, v146, v147, v148);
  v156 = objc_msgSend_objectAtIndexedSubscript_(v149, v150, 0, v151, v152, v153, v154, v155);
  v164 = objc_msgSend_width(v156, v157, v158, v159, v160, v161, v162, v163);
  v171 = objc_msgSend_objectAtIndexedSubscript_(a3, v165, 1, v166, v167, v168, v169, v170);
  v178 = objc_msgSend_objectAtIndexedSubscript_(v171, v172, 0, v173, v174, v175, v176, v177);
  v186 = objc_msgSend_height(v178, v179, v180, v181, v182, v183, v184, v185);
  v193 = objc_msgSend_objectAtIndexedSubscript_(a3, v187, 1, v188, v189, v190, v191, v192);
  v200 = objc_msgSend_objectAtIndexedSubscript_(v193, v194, 0, v195, v196, v197, v198, v199);
  v215 = objc_msgSend_featureChannels(v200, v201, v202, v203, v204, v205, v206, v207);
  v216 = *(v10[4] + 8);
  do
  {
    v217 = v216;
    v216 = *(v216 + 40);
  }

  while (v216);
  v218 = *(v217 + 64);
  v219 = objc_msgSend_secondarySourceFeatureChannelOffset(v10[13], v208, v209, v210, v211, v212, v213, v214);
  v226 = objc_msgSend_objectAtIndexedSubscript_(a6, v220, 0, v221, v222, v223, v224, v225);
  v234 = objc_msgSend_width(v226, v227, v228, v229, v230, v231, v232, v233);
  v241 = objc_msgSend_objectAtIndexedSubscript_(a6, v235, 0, v236, v237, v238, v239, v240);
  v249 = objc_msgSend_height(v241, v242, v243, v244, v245, v246, v247, v248);
  v256 = objc_msgSend_objectAtIndexedSubscript_(a6, v250, 0, v251, v252, v253, v254, v255);
  v264 = objc_msgSend_featureChannels(v256, v257, v258, v259, v260, v261, v262, v263);
  v272 = objc_msgSend_destinationFeatureChannelOffset(v10[13], v265, v266, v267, v268, v269, v270, v271);
  v280 = objc_msgSend_label(v10[13], v273, v274, v275, v276, v277, v278, v279);
  v287 = objc_msgSend_cStringUsingEncoding_(v280, v281, 1, v282, v283, v284, v285, v286);
  v294 = objc_msgSend_cStringUsingEncoding_(v304, v288, 1, v289, v290, v291, v292, v293);
  return sub_239BE215C(v307, v295, "%s[%lu] {%lu x %lu x %lu %s}[%lu](offset:%lu) + {%lu x %lu x %lu %s}[%lu](offset:%lu) -> {%lu x %lu x %lu %s}[%lu]  offset: %lu  %s\n\tpadding policy: %s\n", v306, v305, v303, v302, v301, v298, v300, v299, v164, v186, v215, v297, v218, v219, v234, v249, v264, v296, v308, v272, v287, v294);
}

uint64_t sub_239C18C9C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  *(a1 + 16) = xmmword_239D7DE50;
  *(a1 + 8) = malloc_type_malloc(0x10uLL, 0x2004093837F09uLL);
  *a1 = a3;
  *(a1 + 64) = xmmword_239D7DE60;
  *(a1 + 48) = a5;
  *(a1 + 56) = a4;
  *(a1 + 88) = 0;
  *(a1 + 32) = a2;
  *(a1 + 40) = 0;
  *(a1 + 80) = 0;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    *(a1 + 80) = *(a4 + 48);
    *(a1 + 82) = *(a4 + 49);
    *(a1 + 88) = *(a4 + 40);
    return a1;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return a1;
  }

  *(a1 + 80) = *(a4 + 33);
  *(a1 + 82) = *(a4 + 32);
  return a1;
}

uint64_t sub_239C18DB8(void *a1)
{
  v2 = (*(*a1 + 64))(a1);
  v3 = MEMORY[0x277CCACA8];
  v4 = a1[15];
  v5 = (*(*a1 + 200))(a1);
  if (v2)
  {
    v12 = objc_msgSend_stringWithFormat_(v3, v6, @"[%lu] %@ %p %@", v7, v8, v9, v10, v11, v4, v5, a1[14], v2);
  }

  else
  {
    v12 = objc_msgSend_stringWithFormat_(v3, v6, @"[%lu] %@ %p", v7, v8, v9, v10, v11, v4, v5, a1[14]);
  }

  return objc_msgSend_cStringUsingEncoding_(v12, v13, 4, v14, v15, v16, v17, v18);
}

uint64_t sub_239C18E8C(uint64_t a1)
{
  if ((*(a1 + 83) & 1) == 0)
  {
  }

  free(*(a1 + 8));
  return a1;
}

uint64_t sub_239C18ECC(void *a1, void *a2)
{
  v4 = a1[5];
  if (!v4 || (result = (*(v4 + 16))(v4, a2, &v21), result))
  {
    v6 = a1[6];
    if (v6)
    {
      (*(v6 + 16))(v6, a2, &v21);
    }

    v7 = a2[5];
    if (v7)
    {
      for (i = 0; i != v7; ++i)
      {
        v9 = *(a2[4] + 8 * i);
        if (!*(*a1 + *(v9 + 64)) && *(v9 + 32))
        {
          sub_239C18ECC(a1);
        }

        v10 = a1[7];
        if (v10)
        {
          (*(v10 + 16))(v10, a2, v9, i, &v21);
        }
      }
    }

    v11 = a2[8];
    if (v11)
    {
      for (j = 0; j != v11; ++j)
      {
        v13 = *(a2[7] + 8 * j);
        if (!*(a1[1] + *(v13 + 64)))
        {
          v14 = *(v13 + 32);
          if (v14 && v14 != a2)
          {
            v16 = *(a2[7] + 8 * j);
            sub_239C18ECC(a1);
            v13 = v16;
          }
        }

        v17 = a1[8];
        if (v17)
        {
          (*(v17 + 16))(v17, a2, v13, j, &v21);
        }
      }
    }

    v18 = a1[9];
    if (v18)
    {
      (*(v18 + 16))(v18, a2, &v21);
    }

    *(*a1 + *(a2[1] + 64)) = 1;
    result = a1[10];
    if (result)
    {
      result = (*(result + 16))(result, a2);
    }

    v19 = a2[11];
    if (v19)
    {
      for (k = 0; k != v19; ++k)
      {
        *(a1[1] + *(*(a2[10] + 8 * k) + 64)) = 1;
        result = a1[11];
        if (result)
        {
          result = (*(result + 16))(result, a2);
        }
      }
    }
  }

  return result;
}

void sub_239C190CC(void *a1, void *a2)
{
  v4 = a1[2];
  v43 = objc_opt_new();
  v47 = 0;
  v48 = 0;
  v49 = 0;
  v11 = a2[5];
  if (!v11)
  {
    v44 = 0;
    v14 = a2[8];
    if (v14)
    {
      goto LABEL_5;
    }

LABEL_13:
    v45 = 0;
    v17 = a2[11];
    if (v17)
    {
      goto LABEL_8;
    }

    goto LABEL_14;
  }

  v12 = *(v4 + 208);
  v13 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v5, a2[5], v6, v7, v8, v9, v10);
  if (v13)
  {
    do
    {
      objc_msgSend_addObject_(v13, v5, v12, v6, v7, v8, v9, v10);
      --v11;
    }

    while (v11);
  }

  v44 = v13;
  v14 = a2[8];
  if (!v14)
  {
    goto LABEL_13;
  }

LABEL_5:
  v15 = *(v4 + 208);
  v16 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v5, v14, v6, v7, v8, v9, v10);
  if (v16)
  {
    do
    {
      objc_msgSend_addObject_(v16, v5, v15, v6, v7, v8, v9, v10);
      --v14;
    }

    while (v14);
  }

  v45 = v16;
  v17 = a2[11];
  if (v17)
  {
LABEL_8:
    v18 = *(v4 + 208);
    v25 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v5, v17, v6, v7, v8, v9, v10);
    if (v25)
    {
      do
      {
        objc_msgSend_addObject_(v25, v19, v18, v20, v21, v22, v23, v24);
        --v17;
      }

      while (v17);
    }

    v46 = v25;
    v50 = v4;
    v26 = a1[5];
    if (!v26)
    {
      goto LABEL_16;
    }

LABEL_15:
    if (((*(v26 + 16))(v26, a2, &v43) & 1) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_16;
  }

LABEL_14:
  v46 = 0;
  v50 = v4;
  v26 = a1[5];
  if (v26)
  {
    goto LABEL_15;
  }

LABEL_16:
  v27 = a1[6];
  if (v27)
  {
    (*(v27 + 16))(v27, a2, &v43);
  }

  v28 = a2[5];
  if (v28)
  {
    for (i = 0; i != v28; ++i)
    {
      v30 = *(a2[4] + 8 * i);
      if (!*(*a1 + *(v30 + 64)) && *(v30 + 32))
      {
        sub_239C190CC(a1);
      }

      v31 = a1[7];
      if (v31)
      {
        (*(v31 + 16))(v31, a2, v30, i, &v43);
      }
    }
  }

  v32 = a2[8];
  if (v32)
  {
    for (j = 0; j != v32; ++j)
    {
      v34 = *(a2[7] + 8 * j);
      if (!*(a1[1] + *(v34 + 64)))
      {
        v35 = *(v34 + 32);
        if (v35 && v35 != a2)
        {
          sub_239C190CC(a1);
        }
      }

      v37 = a1[8];
      if (v37)
      {
        (*(v37 + 16))(v37, a2, v34, j, &v43);
      }
    }
  }

  v38 = a1[9];
  if (v38)
  {
    (*(v38 + 16))(v38, a2, &v43);
  }

  *(*a1 + *(a2[1] + 64)) = 1;
  v39 = a1[10];
  if (v39)
  {
    (*(v39 + 16))(v39, a2);
  }

  v40 = a2[11];
  if (v40)
  {
    for (k = 0; k != v40; ++k)
    {
      *(a1[1] + *(*(a2[10] + 8 * k) + 64)) = 1;
      v42 = a1[11];
      if (v42)
      {
        (*(v42 + 16))(v42, a2);
      }
    }
  }

LABEL_46:
}

void sub_239C19438(void *a1, void *a2)
{
  v4 = a1[2];
  v43 = objc_opt_new();
  v47 = 0;
  v48 = 0;
  v49 = 0;
  v11 = a2[5];
  if (!v11)
  {
    v44 = 0;
    v14 = a2[8];
    if (v14)
    {
      goto LABEL_5;
    }

LABEL_13:
    v45 = 0;
    v17 = a2[11];
    if (v17)
    {
      goto LABEL_8;
    }

    goto LABEL_14;
  }

  v12 = *(v4 + 208);
  v13 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v5, a2[5], v6, v7, v8, v9, v10);
  if (v13)
  {
    do
    {
      objc_msgSend_addObject_(v13, v5, v12, v6, v7, v8, v9, v10);
      --v11;
    }

    while (v11);
  }

  v44 = v13;
  v14 = a2[8];
  if (!v14)
  {
    goto LABEL_13;
  }

LABEL_5:
  v15 = *(v4 + 208);
  v16 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v5, v14, v6, v7, v8, v9, v10);
  if (v16)
  {
    do
    {
      objc_msgSend_addObject_(v16, v5, v15, v6, v7, v8, v9, v10);
      --v14;
    }

    while (v14);
  }

  v45 = v16;
  v17 = a2[11];
  if (v17)
  {
LABEL_8:
    v18 = *(v4 + 208);
    v25 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v5, v17, v6, v7, v8, v9, v10);
    if (v25)
    {
      do
      {
        objc_msgSend_addObject_(v25, v19, v18, v20, v21, v22, v23, v24);
        --v17;
      }

      while (v17);
    }

    v46 = v25;
    v50 = v4;
    v26 = a1[5];
    if (!v26)
    {
      goto LABEL_16;
    }

LABEL_15:
    if (((*(v26 + 16))(v26, a2, &v43) & 1) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_16;
  }

LABEL_14:
  v46 = 0;
  v50 = v4;
  v26 = a1[5];
  if (v26)
  {
    goto LABEL_15;
  }

LABEL_16:
  v27 = a1[6];
  if (v27)
  {
    (*(v27 + 16))(v27, a2, &v43);
  }

  v28 = a2[5];
  if (v28)
  {
    for (i = 0; i != v28; ++i)
    {
      v30 = *(a2[4] + 8 * i);
      if (!*(*a1 + *(v30 + 64)) && *(v30 + 32))
      {
        sub_239C19438(a1);
      }

      v31 = a1[7];
      if (v31)
      {
        (*(v31 + 16))(v31, a2, v30, i, &v43);
      }
    }
  }

  v32 = a2[8];
  if (v32)
  {
    for (j = 0; j != v32; ++j)
    {
      v34 = *(a2[7] + 8 * j);
      if (!*(a1[1] + *(v34 + 64)))
      {
        v35 = *(v34 + 32);
        if (v35 && v35 != a2)
        {
          sub_239C19438(a1);
        }
      }

      v37 = a1[8];
      if (v37)
      {
        (*(v37 + 16))(v37, a2, v34, j, &v43);
      }
    }
  }

  v38 = a1[9];
  if (v38)
  {
    (*(v38 + 16))(v38, a2, &v43);
  }

  *(*a1 + *(a2[1] + 64)) = 1;
  v39 = a1[10];
  if (v39)
  {
    (*(v39 + 16))(v39, a2);
  }

  v40 = a2[11];
  if (v40)
  {
    for (k = 0; k != v40; ++k)
    {
      *(a1[1] + *(*(a2[10] + 8 * k) + 64)) = 1;
      v42 = a1[11];
      if (v42)
      {
        (*(v42 + 16))(v42, a2);
      }
    }
  }

LABEL_46:
}

void sub_239C197A4(void *a1, void *a2)
{
  v21 = objc_opt_new();
  v4 = a1[5];
  if (!v4 || ((*(v4 + 16))(v4, a2, &v21) & 1) != 0)
  {
    v5 = a1[6];
    if (v5)
    {
      (*(v5 + 16))(v5, a2, &v21);
    }

    v6 = a2[5];
    if (v6)
    {
      for (i = 0; i != v6; ++i)
      {
        v8 = *(a2[4] + 8 * i);
        if (!*(*a1 + *(v8 + 64)) && *(v8 + 32))
        {
          sub_239C197A4(a1);
        }

        v9 = a1[7];
        if (v9)
        {
          (*(v9 + 16))(v9, a2, v8, i, &v21);
        }
      }
    }

    v10 = a2[8];
    if (v10)
    {
      for (j = 0; j != v10; ++j)
      {
        v12 = *(a2[7] + 8 * j);
        if (!*(a1[1] + *(v12 + 64)))
        {
          v13 = *(v12 + 32);
          if (v13 && v13 != a2)
          {
            sub_239C197A4(a1);
          }
        }

        v15 = a1[8];
        if (v15)
        {
          (*(v15 + 16))(v15, a2, v12, j, &v21);
        }
      }
    }

    v16 = a1[9];
    if (v16)
    {
      (*(v16 + 16))(v16, a2, &v21);
    }

    *(*a1 + *(a2[1] + 64)) = 1;
    v17 = a1[10];
    if (v17)
    {
      (*(v17 + 16))(v17, a2);
    }

    v18 = a2[11];
    if (v18)
    {
      for (k = 0; k != v18; ++k)
      {
        *(a1[1] + *(*(a2[10] + 8 * k) + 64)) = 1;
        v20 = a1[11];
        if (v20)
        {
          (*(v20 + 16))(v20, a2);
        }
      }
    }
  }
}

uint64_t sub_239C199F0(uint64_t a1, uint64_t a2)
{
  v3 = MPSCreateFunctionConstantValues();
  v4 = *(a2 + 64);
  v21 = WORD1(v4);
  v20 = v4;
  v19 = (v4 & 0xFFFF00000000) != 0;
  objc_msgSend_setConstantValue_type_atIndex_(v3, v5, &v21, 41, 0, v6, v7, v8);
  objc_msgSend_setConstantValue_type_atIndex_(v3, v9, &v20, 41, 1, v10, v11, v12);
  objc_msgSend_setConstantValue_type_atIndex_(v3, v13, &v19, 53, 2, v14, v15, v16);
  v17 = _MPSNewSpecializedFunction();

  return v17;
}

uint64_t sub_239C19AB4(uint64_t a1, uint64_t a2)
{
  v3 = MPSCreateFunctionConstantValues();
  v10 = *(a2 + 64) != 0;
  objc_msgSend_setConstantValue_type_atIndex_(v3, v4, &v10, 53, 0, v5, v6, v7);
  v8 = _MPSNewSpecializedFunction();

  return v8;
}

uint64_t sub_239C19B44(void *a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  objc_msgSend_device(a1, a2, a3, a4, a5, a6, a7, a8);
  v9 = *(MPSDevice::GetMPSDevice() + 1472);
  v86[0] = v9 > 6;
  v85 = v9 > 7;
  v84 = v9 > 10;
  v10 = *(a2 + 64);
  v11 = MPSCreateFunctionConstantValues();
  v16 = v11;
  v82 = v10 >> 4;
  v81 = (v10 >> 8) & 7;
  v80 = (v10 >> 11) & 0xF;
  v79 = v80;
  v78 = (v10 >> 15) & 1;
  v77 = BYTE3(v10) & 0x1F;
  v76 = (v10 >> 44) & 0xF;
  v75 = BYTE6(v10) & 0xF;
  v74 = (v10 >> 52) & 0xF;
  v73 = HIBYTE(v10) & 1;
  v72 = (v10 & 0x400000000000000) != 0;
  v71 = (v10 & 0x800000000000000) != 0;
  v70 = (v10 & 0x1000000000000000) != 0;
  v69 = (v10 & 0x2000000000000000) != 0;
  v83 = v10 & 0xF;
  if ((v10 & 0xF) != 0)
  {
    objc_msgSend_setConstantValue_type_atIndex_(v11, v12, &v83, 37, 2, v13, v14, v15);
  }

  if (v10 >> 4)
  {
    objc_msgSend_setConstantValue_type_atIndex_(v16, v12, &v82, 37, 3, v13, v14, v15);
  }

  if (((v10 >> 11) & 0xF) != 0)
  {
    objc_msgSend_setConstantValue_type_atIndex_(v16, v12, &v79, 38, 4, v13, v14, v15);
  }

  if (((v10 >> 8) & 7) != 0)
  {
    objc_msgSend_setConstantValue_type_atIndex_(v16, v12, &v81, 41, 5, v13, v14, v15);
  }

  if (v10 < 0)
  {
    objc_msgSend_setConstantValue_type_atIndex_(v16, v12, &v78, 41, 6, v13, v14, v15);
  }

  objc_msgSend_setConstantValue_type_atIndex_(v16, v12, &v77, 41, 7, v13, v14, v15);
  if (((v10 >> 52) & 0xF) != 0)
  {
    objc_msgSend_setConstantValue_type_atIndex_(v16, v17, &v74, 41, 8, v18, v19, v20);
  }

  if (((v10 >> 44) & 0xF) != 0)
  {
    objc_msgSend_setConstantValue_type_atIndex_(v16, v17, &v76, 37, 9, v18, v19, v20);
  }

  if ((v10 & 0xF000000000000) != 0)
  {
    objc_msgSend_setConstantValue_type_atIndex_(v16, v17, &v75, 37, 10, v18, v19, v20);
  }

  objc_msgSend_setConstantValue_type_atIndex_(v16, v17, &v73, 53, 11, v18, v19, v20);
  objc_msgSend_setConstantValue_type_atIndex_(v16, v21, v86, 53, 12, v22, v23, v24);
  v68 = (v10 >> 39) & 0x1F;
  objc_msgSend_setConstantValue_type_atIndex_(v16, v25, &v68, 41, 13, v26, v27, v28);
  objc_msgSend_setConstantValue_type_atIndex_(v16, v29, &v72, 53, 14, v30, v31, v32);
  objc_msgSend_setConstantValue_type_atIndex_(v16, v33, &v71, 53, 15, v34, v35, v36);
  objc_msgSend_setConstantValue_type_atIndex_(v16, v37, &v85, 53, 16, v38, v39, v40);
  objc_msgSend_setConstantValue_type_atIndex_(v16, v41, &v70, 53, 17, v42, v43, v44);
  objc_msgSend_setConstantValue_type_atIndex_(v16, v45, &v84, 53, 18, v46, v47, v48);
  objc_msgSend_setConstantValue_type_atIndex_(v16, v49, &v69, 53, 19, v50, v51, v52);
  v62 = *a3;
  v63 = -1;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0;
  sub_239C19E34(v16, &v62, v53, v54, v55, v56, v57, v58);
  v59 = _MPSNewSpecializedFunction();

  return v59;
}

void *sub_239C19E34(void *result, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  v9 = *(a2 + 1);
  v10.i64[0] = -1;
  v10.i64[1] = -1;
  v11 = vceqq_s64(v9, v10);
  v12 = vaddvq_s32(vbicq_s8(xmmword_239D7CEE0, vuzp1q_s32(vceqq_s64(*(a2 + 3), v10), vceqq_s64(*(a2 + 4), v10))));
  v13 = ~vaddvq_s32(vandq_s8(vuzp1q_s32(v11, vceqq_s64(*(a2 + 3), v10)), xmmword_239D7CEE0)) & 0xF;
  if (*a2 != -1 || v13 != 0 || (v12 & 0xF) != 0 || a2[5] != -1)
  {
    v18 = result;
    if ((vuzp1_s16(vmovn_s64(v11), *v9.i8).u8[0] & 1) == 0)
    {
      v19 = *(a2 + 1);
      result = objc_msgSend_setConstantValue_type_atIndex_(result, a2, &v19, 33, 126, a6, a7, a8);
      v8 = *a2;
    }

    if (v8 != -1)
    {
      v19 = v8;
      result = objc_msgSend_setConstantValue_type_atIndex_(v18, a2, &v19, 33, 125, a6, a7, a8);
    }

    if (a2[2] != -1)
    {
      v19 = a2[2];
      result = objc_msgSend_setConstantValue_type_atIndex_(v18, a2, &v19, 33, 124, a6, a7, a8);
    }

    if (a2[3] != -1)
    {
      v19 = a2[3];
      result = objc_msgSend_setConstantValue_type_atIndex_(v18, a2, &v19, 33, 123, a6, a7, a8);
    }

    if (a2[4] != -1)
    {
      v19 = a2[4];
      result = objc_msgSend_setConstantValue_type_atIndex_(v18, a2, &v19, 33, 119, a6, a7, a8);
    }

    if (a2[5] != -1)
    {
      v19 = a2[5];
      result = objc_msgSend_setConstantValue_type_atIndex_(v18, a2, &v19, 33, 118, a6, a7, a8);
    }

    if (a2[8] != -1)
    {
      v19 = a2[8];
      result = objc_msgSend_setConstantValue_type_atIndex_(v18, a2, &v19, 33, 122, a6, a7, a8);
    }

    if (a2[9] != -1)
    {
      v19 = a2[9];
      result = objc_msgSend_setConstantValue_type_atIndex_(v18, a2, &v19, 33, 121, a6, a7, a8);
    }

    if (a2[6] != -1)
    {
      v19 = a2[6];
      result = objc_msgSend_setConstantValue_type_atIndex_(v18, a2, &v19, 33, 117, a6, a7, a8);
    }

    if (a2[7] != -1)
    {
      v19 = a2[7];
      return objc_msgSend_setConstantValue_type_atIndex_(v18, a2, &v19, 33, 116, a6, a7, a8);
    }
  }

  return result;
}

uint64_t sub_239C1A49C(uint64_t a1, _WORD *a2, unsigned __int16 *a3)
{
  v4 = a3[3];
  v5 = a3[2];
  v6 = a3[7];
  result = (*(*a1 + 264))(a1);
  if (v4 < 5)
  {
    if (*a2 != 8)
    {
      return result;
    }

    goto LABEL_11;
  }

  v8 = a2[1];
  if (result < v8)
  {
    if (((result - 1 + v4 / v6) & -result) % v8)
    {
      v8 = result;
    }

    a2[1] = v8;
  }

  v9 = a2[2];
  v10 = v9 + 1;
  v11 = v8 * v9;
  do
  {
    v12 = ((result - 1 + v4 / v6) & -result) % v11;
    --v10;
    v11 -= v8;
  }

  while (v12);
  a2[2] = v10;
  if (*a2 == 8)
  {
LABEL_11:
    v13 = a2[3];
    do
    {
      v14 = v13;
      v15 = ((v5 + 7) >> 3) % v13;
      v13 >>= 1;
    }

    while (v15);
    a2[3] = v14;
  }

  return result;
}

_WORD *sub_239C1A5B8(_WORD *result, unsigned __int16 *a2, int a3)
{
  v3 = a2[3];
  v4 = a2[7];
  v5 = *a2;
  v6 = a2[1];
  if (*result == 8)
  {
    v7 = result[3];
    do
    {
      v8 = v7;
      v9 = ((a2[2] + 7) >> 3) % v7;
      v7 >>= 1;
    }

    while (v9);
    result[3] = v8;
  }

  v10 = (a3 + 0xFFFF + v3 / v4) & -a3;
  if (v3 <= 4)
  {
    v11 = result[1];
    v13 = result[2];
    v10 = v10;
    v14 = v11 * v13;
    if (result[3] == 1)
    {
LABEL_12:
      if (v10 % v14)
      {
        v15 = 0;
        LOWORD(v16) = result[6];
        v17 = result[7];
        do
        {
          v13 >>= 1;
          v18 = v15 != 0;
          v15 ^= 1u;
          v16 = v16 << v15;
          v17 <<= v18;
        }

        while (v10 % (v13 * v11));
      }

      else
      {
        LOWORD(v16) = result[6];
        LOWORD(v17) = result[7];
      }

      result[2] = v13;
      v23 = (v5 + result[4] - 1) / result[4];
      v24 = (v6 + result[5] - 1) / result[5];
      if (v23 > v16)
      {
        LOWORD(v23) = v16;
      }

      result[6] = v23;
      if (v24 > v17)
      {
        LOWORD(v24) = v17;
      }

      result[7] = v24;
      return result;
    }
  }

  else
  {
    v11 = result[1];
    if (v11 > a3)
    {
      if (v10 % v11)
      {
        v12 = a3;
      }

      else
      {
        v12 = result[1];
      }

      v11 = v12;
      result[1] = v12;
    }

    v13 = result[2];
    v10 = v10;
    v14 = v11 * v13;
    if (result[3] == 1)
    {
      goto LABEL_12;
    }
  }

  if (v13 >= 2 && v10 < v14)
  {
    v19 = 0;
    v20 = result[7];
    do
    {
      v21 = v13 >> 1;
      v22 = v19 != 0;
      v19 ^= 1u;
      v20 <<= v22;
      if (v13 < 4)
      {
        break;
      }

      v13 >>= 1;
    }

    while (v10 < v21 * v11);
    result[6] = result[6] << v19;
    result[7] = v20;
    LOWORD(v13) = v21;
  }

  result[2] = v13;
  return result;
}

_WORD *sub_239C1A774(uint64_t a1, _WORD *a2, unsigned __int16 *a3)
{
  v5 = (*(*a1 + 264))(a1);

  return sub_239C1A5B8(a2, a3, v5);
}

_WORD *sub_239C1A7E0(uint64_t a1, _WORD *a2, unsigned __int16 *a3)
{
  v5 = (*(*a1 + 264))(a1);

  return sub_239C1A5B8(a2, a3, v5);
}

_WORD *sub_239C1A84C(uint64_t a1, _WORD *a2, unsigned __int16 *a3)
{
  v5 = (*(*a1 + 264))(a1);

  return sub_239C1A5B8(a2, a3, v5);
}

uint64_t sub_239C1A9E8(uint64_t a1, unsigned __int16 *a2, int a3, int a4)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[7];
  v9 = 32;
  if (a3)
  {
    v9 = 40;
  }

  if (a4)
  {
    v9 = 24;
  }

  if (v6 <= 4 && v7 <= 4 && v8 == 1)
  {
    LOWORD(v69) = a2[2];
    *(&v69 + 2) = 0x1000100010004;
    WORD5(v69) = 1;
    if (v4 >= 4)
    {
      v22 = 4;
    }

    else
    {
      v22 = v4;
    }

    WORD6(v69) = v22;
    if (v5 >= 4)
    {
      v23 = 4;
    }

    else
    {
      v23 = v5;
    }

    HIWORD(v69) = v23;
    return v69;
  }

  v13 = a2[4];
  v14 = a2[5];
  v15 = *(a1 + v9);
  v16 = *(a1 + 48);
  if (v16 < 1)
  {
    if (v6 <= 4 && v8 == 1)
    {
      v32 = -1;
LABEL_67:
      v69 = v15[v32];
      goto LABEL_106;
    }

    if (v7 <= 4 && v8 == 1)
    {
      v40 = -1;
    }

    else
    {
LABEL_71:
      v41 = a1;
      v42 = (*(*a1 + 264))();
      a1 = v41;
      v43 = *(v41 + 48);
      if (v43 < 1)
      {
        v50 = -1;
      }

      else
      {
        v44 = 0;
        v45 = v8 * ((v42 + v7 / v8 - 1) & -v42);
        v46 = (v6 + 7) & 0xFFF8;
        v47 = v45;
        v48 = *(v41 + 16);
        v49 = (v48 + 6);
        v50 = -1;
        v51 = -1;
        do
        {
          if (v49[1] == v13 && v49[2] == v14)
          {
            v52 = *(v49 - 1);
            if (v52 >= 5)
            {
              v53 = *v49;
              if (v53 >= 5)
              {
                v54 = *(v49 - 3) - v4;
                if (v54 < 0)
                {
                  v54 = v4 - *(v49 - 3);
                }

                v55 = v52 - v46;
                if (v55 < 0)
                {
                  v55 = -v55;
                }

                v56 = v53 - v47;
                if (v56 < 0)
                {
                  v56 = -v56;
                }

                v57 = v56 + v55 + 10 * v54;
                if (v57 < v51)
                {
                  v51 = v57;
                  v50 = v44;
                }
              }
            }
          }

          ++v44;
          v49 += 8;
        }

        while (v43 != v44);
        if (v50 == -1)
        {
          v58 = 0;
          v59 = (v48 + 6);
          v50 = -1;
          v60 = -1;
          do
          {
            v61 = *(v59 - 1);
            if (v61 >= 5)
            {
              v62 = *v59;
              if (v62 >= 5)
              {
                v63 = *(v59 - 3) - v4;
                if (v63 < 0)
                {
                  v63 = v4 - *(v59 - 3);
                }

                v64 = v61 - v46;
                if (v64 < 0)
                {
                  v64 = -v64;
                }

                v65 = v62 - v47;
                if (v65 < 0)
                {
                  v65 = -v65;
                }

                v66 = v65 + v64 + 10 * v63;
                if (v66 < v60)
                {
                  v60 = v66;
                  v50 = v58;
                }
              }
            }

            ++v58;
            v59 += 8;
          }

          while (v43 != v58);
        }
      }

      v40 = v50;
    }
  }

  else
  {
    v17 = *(a1 + 16);
    v18 = v17 + 4;
    v19 = *(a1 + 48);
    v20 = v15;
    while (*(v18 - 4) != v4 || *(v18 - 3) != v5 || *(v18 - 2) != v6 || *(v18 - 1) != v7 || *v18 != v13 || v18[1] != v14 || v18[2] != a2[6] || v18[3] != v8)
    {
      ++v20;
      v18 += 8;
      if (!--v19)
      {
        goto LABEL_36;
      }
    }

    if (v15)
    {
      v21 = a2[7] != 1 || v6 >= 5;
      v69 = *v20;
      if (v21)
      {
        goto LABEL_105;
      }

      goto LABEL_106;
    }

LABEL_36:
    if (v6 <= 4 && v8 == 1)
    {
      v24 = 0;
      if (v6 <= 1)
      {
        v25 = a2[2];
      }

      else
      {
        v25 = 3;
      }

      v26 = v17 + 3;
      v27 = -1;
      v28 = -1;
      do
      {
        if (*(v26 - 1) == v25)
        {
          v29 = *(v26 - 3) - v4;
          if (v29 < 0)
          {
            v29 = v4 - *(v26 - 3);
          }

          v30 = *v26 - v7;
          if (v30 < 0)
          {
            v30 = v7 - *v26;
          }

          v31 = v30 + 10 * v29;
          if (v31 < v28)
          {
            v28 = v31;
            v27 = v24;
          }
        }

        ++v24;
        v26 += 8;
      }

      while (v16 != v24);
      v32 = v27;
      goto LABEL_67;
    }

    if (v7 > 4 || v8 != 1)
    {
      goto LABEL_71;
    }

    v33 = 0;
    v34 = v17 + 2;
    v35 = -1;
    v36 = -1;
    do
    {
      if (v34[1] == 4)
      {
        v37 = *(v34 - 2) - v4;
        if (v37 < 0)
        {
          v37 = v4 - *(v34 - 2);
        }

        v38 = *v34 - v6;
        if (v38 < 0)
        {
          v38 = v6 - *v34;
        }

        v39 = v38 + 10 * v37;
        if (v39 < v36)
        {
          v36 = v39;
          v35 = v33;
        }
      }

      ++v33;
      v34 += 8;
    }

    while (v16 != v33);
    v40 = v35;
  }

  v69 = v15[v40];
LABEL_105:
  LOWORD(v6) = v69;
LABEL_106:
  LOWORD(v69) = v6;
  v67 = WORD1(v69);
  if (WORD1(v69) <= 4u)
  {
    v67 = 4;
  }

  WORD1(v69) = v67;
  (*(*a1 + 232))(a1, &v69, a2);
  return v69;
}

__n128 sub_239C1AE6C@<Q0>(void *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, unsigned __int16 *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, char a11)
{
  v18 = *(a10 + 24);
  v17 = *(a10 + 32);
  v19 = *(a10 + 40);
  v20 = (*(*a1 + 264))(a1);
  v21 = -v20;
  if (a3 <= 4 && a5 == 1)
  {
    v22 = 4;
    if (a3 == 1)
    {
      v22 = 1;
    }

    LODWORD(v23) = a6[3];
    v24 = v20 - 1;
  }

  else
  {
    v24 = v20 - 1;
    v23 = a6[3];
    v22 = ((((a3 + 3) & 0xFFFFFFFC) / a5 + v20 - 1) & v21) / v23;
  }

  v25 = ((v24 + a4) & v21) - 1;
  v26 = a6[2];
  v27 = a6[6];
  v28 = a6[7];
  v29 = a6[4];
  v30 = a6[5];
  if (a5 == 1 && a4 < 5)
  {
    v25 = 3;
  }

  v32 = (v25 + a6[1]) / a6[1];
  v42 = xmmword_239D7E290;
  *&v43 = v22;
  *(&v43 + 1) = v22;
  *&v44 = v32 * a5;
  *(&v44 + 1) = v32;
  v45.n128_u64[0] = (v26 + v32 * a5 - 1) / v26;
  v45.n128_u64[1] = v27;
  *&v46 = v28;
  *(&v46 + 1) = v23 * v26;
  *&v47 = (v18 + v29 * v27 - 1) / (v29 * v27);
  *(&v47 + 1) = (v17 + v30 * v28 - 1) / (v30 * v28);
  v48 = v45.n128_u64[0] * v19;
  if (a2 != 2 || a11)
  {
    v36 = v47;
    *(a9 + 64) = v46;
    *(a9 + 80) = v36;
    *(a9 + 96) = v48;
    v37 = v43;
    *a9 = v42;
    *(a9 + 16) = v37;
    result = v45;
    *(a9 + 32) = v44;
    *(a9 + 48) = result;
  }

  else
  {
    v33 = a1[7];
    v34 = *(a10 + 16);
    v41[0] = *a10;
    v41[1] = v34;
    v41[2] = *(a10 + 32);
    v33(&v42, a6, a7, a8, a4, a5, v41);
  }

  return result;
}

__n128 sub_239C1B058@<Q0>(uint64_t a1@<X0>, unsigned __int16 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *(a1 + 16);
  if (v5 <= 4)
  {
    v6 = *(a1 + 80);
    *(a5 + 64) = *(a1 + 64);
    *(a5 + 80) = v6;
    *(a5 + 96) = *(a1 + 96);
    v7 = *(a1 + 16);
    *a5 = *a1;
    *(a5 + 16) = v7;
    result = *(a1 + 48);
    *(a5 + 32) = *(a1 + 32);
    *(a5 + 48) = result;
    return result;
  }

  v9 = a2[4];
  v10 = a2[5];
  v11 = a2[1];
  v12 = *(a1 + 24);
  v13 = *(a1 + 8);
  v14 = *(a1 + 56);
  v15 = *(a1 + 64);
  v16 = *(a1 + 72);
  v17 = *(a1 + 80);
  v18 = *(a1 + 88);
  v19 = *(a1 + 96);
  v20 = v15 * v14 * v16;
  v21 = v18 * v17 * v19;
  if (v20 > 0x1F)
  {
    v23 = v21 * ((v20 + 31) >> 5);
  }

  else
  {
    LODWORD(v22) = 0x20u / (v15 * v14 * v16);
    if (v22 >= 8)
    {
      v22 = 8;
    }

    else
    {
      v22 = v22;
    }

    v23 = (v21 + v22 - 1) / v22;
  }

  v24 = a4 * a3;
  v25 = 10000;
  if (v23 >= 0xC1)
  {
    v23 = 1;
  }

  else
  {
    v25 = 1600000;
  }

  v26 = v24 * v11;
  v27 = v26 * v9 * v10 * v23;
  if (v27 * v5 > v25)
  {
    if ((v5 & 1) == 0 && (v5 & 0xE) == 0)
    {
      v28 = v5 >> 1;
      if (v27 * (v5 >> 1) <= v25)
      {
        v13 = 2;
LABEL_75:
        v12 = v28;
        goto LABEL_76;
      }
    }

    v28 = v5 / 3;
    if (v5 % 3)
    {
      v29 = 0;
    }

    else
    {
      v29 = ((v5 / 3) & 7) == 0;
    }

    if (v29 && v27 * v28 <= v25)
    {
      v13 = 3;
      goto LABEL_75;
    }

    if ((v5 & 3) == 0 && (v5 & 0x1C) == 0)
    {
      v28 = v5 >> 2;
      if (v27 * (v5 >> 2) <= v25)
      {
        v13 = 4;
        goto LABEL_75;
      }
    }

    v28 = v5 / 5;
    if (v5 == 5 * (v5 / 5) && (v28 & 7) == 0 && v27 * v28 <= v25)
    {
      v13 = 5;
      goto LABEL_75;
    }

    v28 = v5 / 6;
    if (!(v5 % 6) && (v28 & 7) == 0 && v27 * v28 <= v25)
    {
      v13 = 6;
      goto LABEL_75;
    }

    v28 = v5 / 7;
    if (!(v5 % 7) && (v28 & 7) == 0 && v27 * v28 <= v25)
    {
      v13 = 7;
      goto LABEL_75;
    }

    if ((v5 & 7) == 0 && (v5 & 0x38) == 0)
    {
      v28 = v5 >> 3;
      if (v27 * (v5 >> 3) <= v25)
      {
        v13 = 8;
        goto LABEL_75;
      }
    }

    v28 = v5 / 9;
    if (v5 == 9 * (v5 / 9) && (v28 & 7) == 0 && v27 * v28 <= v25)
    {
      v13 = 9;
      goto LABEL_75;
    }

    v28 = v5 / 0xA;
    if (!(v5 % 0xA) && (v28 & 7) == 0 && v27 * v28 <= v25)
    {
      v13 = 10;
      goto LABEL_75;
    }

    v28 = v5 / 0xB;
    if (!(v5 % 0xB) && (v28 & 7) == 0 && v27 * v28 <= v25)
    {
      v13 = 11;
      goto LABEL_75;
    }

    v28 = v5 / 0xC;
    if (!(v5 % 0xC) && (v28 & 7) == 0 && v27 * v28 <= v25)
    {
      v13 = 12;
      goto LABEL_75;
    }

    v28 = v5 / 0xD;
    if (!(v5 % 0xD) && (v28 & 7) == 0 && v27 * v28 <= v25)
    {
      v13 = 13;
      goto LABEL_75;
    }

    v28 = v5 / 0xE;
    if (!(v5 % 0xE) && (v28 & 7) == 0 && v27 * v28 <= v25)
    {
      v13 = 14;
      goto LABEL_75;
    }

    v28 = v5 / 0xF;
    if (!(v5 % 0xF) && (v28 & 7) == 0 && v27 * v28 <= v25)
    {
      v13 = 15;
      goto LABEL_75;
    }

    if ((v5 & 0xF) == 0 && (v5 & 0x70) == 0)
    {
      v28 = v5 >> 4;
      if (v27 * (v5 >> 4) <= v25)
      {
        v13 = 16;
        goto LABEL_75;
      }
    }
  }

LABEL_76:
  if (v12 * v26 < 0x7531 || v13 > 0x10)
  {
LABEL_90:
    v31 = v13;
  }

  else
  {
    v31 = v13;
    while (1)
    {
      v32 = !(v5 % v31) && ((v5 / v31) & 7) == 0;
      if (v32 && v5 / v31 * v26 < 0x7531)
      {
        break;
      }

      if (++v31 == 17)
      {
        goto LABEL_90;
      }
    }

    v12 = v5 / v31;
  }

  *a5 = v31 > 1;
  *(a5 + 8) = v31;
  *(a5 + 16) = v5;
  *(a5 + 24) = v12;
  result = *(a1 + 32);
  *(a5 + 32) = result;
  *(a5 + 48) = *(a1 + 48);
  *(a5 + 56) = v14;
  *(a5 + 64) = v15;
  *(a5 + 72) = v16;
  *(a5 + 80) = v17;
  *(a5 + 88) = v18;
  *(a5 + 96) = v19;
  return result;
}

__n128 sub_239C1B4F8@<Q0>(uint64_t a1@<X0>, unsigned __int16 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *(a1 + 16);
  if (v5 <= 4)
  {
    v6 = *(a1 + 80);
    *(a5 + 64) = *(a1 + 64);
    *(a5 + 80) = v6;
    *(a5 + 96) = *(a1 + 96);
    v7 = *(a1 + 16);
    *a5 = *a1;
    *(a5 + 16) = v7;
    result = *(a1 + 48);
    *(a5 + 32) = *(a1 + 32);
    *(a5 + 48) = result;
    return result;
  }

  v9 = a2[4];
  v10 = a2[5];
  v11 = a2[1];
  v12 = *(a1 + 24);
  v13 = *(a1 + 8);
  v14 = *(a1 + 56);
  v15 = *(a1 + 64);
  v16 = *(a1 + 72);
  v17 = *(a1 + 80);
  v18 = *(a1 + 88);
  v19 = *(a1 + 96);
  v20 = v15 * v14 * v16;
  v21 = v18 * v17 * v19;
  if (v20 > 0x1F)
  {
    v22 = v21 * ((v20 + 31) >> 5);
  }

  else
  {
    v22 = (v21 + (0x20u / (v15 * v14 * v16)) - 1) / (0x20u / (v15 * v14 * v16));
  }

  v23 = a4 * a3;
  v24 = v22 * v23;
  v25 = v23 * v11;
  v26 = v25 * v9 * v10;
  v27 = 12000;
  if (v22 >= 0x81)
  {
    v24 = v26;
  }

  else
  {
    v27 = 70000;
  }

  if (v24 * v5 > v27)
  {
    if ((v5 & 1) == 0 && (v5 & 0xE) == 0)
    {
      v28 = v5 >> 1;
      if (v24 * (v5 >> 1) <= v27)
      {
        v13 = 2;
LABEL_72:
        v12 = v28;
        goto LABEL_73;
      }
    }

    v28 = v5 / 3;
    if (v5 % 3)
    {
      v29 = 0;
    }

    else
    {
      v29 = ((v5 / 3) & 7) == 0;
    }

    if (v29 && v24 * v28 <= v27)
    {
      v13 = 3;
      goto LABEL_72;
    }

    if ((v5 & 3) == 0 && (v5 & 0x1C) == 0)
    {
      v28 = v5 >> 2;
      if (v24 * (v5 >> 2) <= v27)
      {
        v13 = 4;
        goto LABEL_72;
      }
    }

    v28 = v5 / 5;
    if (v5 == 5 * (v5 / 5) && (v28 & 7) == 0 && v24 * v28 <= v27)
    {
      v13 = 5;
      goto LABEL_72;
    }

    v28 = v5 / 6;
    if (!(v5 % 6) && (v28 & 7) == 0 && v24 * v28 <= v27)
    {
      v13 = 6;
      goto LABEL_72;
    }

    v28 = v5 / 7;
    if (!(v5 % 7) && (v28 & 7) == 0 && v24 * v28 <= v27)
    {
      v13 = 7;
      goto LABEL_72;
    }

    if ((v5 & 7) == 0 && (v5 & 0x38) == 0)
    {
      v28 = v5 >> 3;
      if (v24 * (v5 >> 3) <= v27)
      {
        v13 = 8;
        goto LABEL_72;
      }
    }

    v28 = v5 / 9;
    if (v5 == 9 * (v5 / 9) && (v28 & 7) == 0 && v24 * v28 <= v27)
    {
      v13 = 9;
      goto LABEL_72;
    }

    v28 = v5 / 0xA;
    if (!(v5 % 0xA) && (v28 & 7) == 0 && v24 * v28 <= v27)
    {
      v13 = 10;
      goto LABEL_72;
    }

    v28 = v5 / 0xB;
    if (!(v5 % 0xB) && (v28 & 7) == 0 && v24 * v28 <= v27)
    {
      v13 = 11;
      goto LABEL_72;
    }

    v28 = v5 / 0xC;
    if (!(v5 % 0xC) && (v28 & 7) == 0 && v24 * v28 <= v27)
    {
      v13 = 12;
      goto LABEL_72;
    }

    v28 = v5 / 0xD;
    if (!(v5 % 0xD) && (v28 & 7) == 0 && v24 * v28 <= v27)
    {
      v13 = 13;
      goto LABEL_72;
    }

    v28 = v5 / 0xE;
    if (!(v5 % 0xE) && (v28 & 7) == 0 && v24 * v28 <= v27)
    {
      v13 = 14;
      goto LABEL_72;
    }

    v28 = v5 / 0xF;
    if (!(v5 % 0xF) && (v28 & 7) == 0 && v24 * v28 <= v27)
    {
      v13 = 15;
      goto LABEL_72;
    }

    if ((v5 & 0xF) == 0 && (v5 & 0x70) == 0)
    {
      v28 = v5 >> 4;
      if (v24 * (v5 >> 4) <= v27)
      {
        v13 = 16;
        goto LABEL_72;
      }
    }
  }

LABEL_73:
  if (v12 * v25 < 0x7531 || v13 > 0x10)
  {
LABEL_87:
    v31 = v13;
  }

  else
  {
    v31 = v13;
    while (1)
    {
      v32 = !(v5 % v31) && ((v5 / v31) & 7) == 0;
      if (v32 && v5 / v31 * v25 < 0x7531)
      {
        break;
      }

      if (++v31 == 17)
      {
        goto LABEL_87;
      }
    }

    v12 = v5 / v31;
  }

  *a5 = v31 > 1;
  *(a5 + 8) = v31;
  *(a5 + 16) = v5;
  *(a5 + 24) = v12;
  result = *(a1 + 32);
  *(a5 + 32) = result;
  *(a5 + 48) = *(a1 + 48);
  *(a5 + 56) = v14;
  *(a5 + 64) = v15;
  *(a5 + 72) = v16;
  *(a5 + 80) = v17;
  *(a5 + 88) = v18;
  *(a5 + 96) = v19;
  return result;
}

unint64_t sub_239C1B98C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X6>, uint64_t a8@<X8>)
{
  v8 = a1[2] * *(a2 + 6);
  a1[2] = v8;
  a1[3] = v8;
  *(a2 + 6) = 1;
  *(a2 + 8) = 65537;
  if (*(a2 + 2) >= 8u)
  {
    v9 = 8;
  }

  else
  {
    v9 = *(a2 + 2);
  }

  *(a2 + 2) = v9;
  v10 = a1[1];
  v11 = a4 * a3 * v9;
  if (v11 * v8 < 0xBB9)
  {
    v12 = v8;
  }

  else if ((v8 & 0xF) != 0 || (v12 = v8 >> 1, v11 * (v8 >> 1) >= 0xBB9))
  {
    if (v8 % 3)
    {
      v13 = 0;
    }

    else
    {
      v13 = ((v8 / 3) & 7) == 0;
    }

    if (v13 && v11 * (v8 / 3) < 0xBB9)
    {
      v10 = 3;
      v12 = v8 / 3;
    }

    else if ((v8 & 0x1F) != 0 || (v12 = v8 >> 2, v11 * (v8 >> 2) >= 0xBB9))
    {
      v14 = v8 / 5;
      if (v8 % 5)
      {
        v15 = 0;
      }

      else
      {
        v15 = ((v8 / 5) & 7) == 0;
      }

      if (v15 && v11 * v14 < 0xBB9)
      {
        v10 = 5;
        v12 = v8 / 5;
      }

      else
      {
        if (v8 % 6)
        {
          v16 = 0;
        }

        else
        {
          v16 = ((v8 / 6) & 7) == 0;
        }

        if (v16 && v11 * (v8 / 6) < 0xBB9)
        {
          v10 = 6;
          v12 = v8 / 6;
        }

        else if (v8 % 7 || ((v8 / 7) & 7) != 0 || v11 * (v8 / 7) >= 0xBB9)
        {
          if ((v8 & 0x3F) != 0 || (v12 = v8 >> 3, v11 * (v8 >> 3) >= 0xBB9))
          {
            if (v8 % 9 || ((v8 / 9) & 7) != 0 || v11 * (v8 / 9) >= 0xBB9)
            {
              if (v8 % 0xA || ((v8 / 0xA) & 7) != 0 || v11 * (v8 / 0xA) >= 0xBB9)
              {
                if (v8 % 0xB || ((v8 / 0xB) & 7) != 0 || v11 * (v8 / 0xB) >= 0xBB9)
                {
                  if (v8 % 0xC || ((v8 / 0xC) & 7) != 0 || v11 * (v8 / 0xC) >= 0xBB9)
                  {
                    if (v8 % 0xD || ((v8 / 0xD) & 7) != 0 || v11 * (v8 / 0xD) >= 0xBB9)
                    {
                      if (v8 % 0xE || ((v8 / 0xE) & 7) != 0 || v11 * (v8 / 0xE) >= 0xBB9)
                      {
                        if (v8 % 0xF || ((v8 / 0xF) & 7) != 0 || v11 * (v8 / 0xF) >= 0xBB9)
                        {
                          if ((v8 & 0x7F) != 0 || (v12 = v8 >> 4, v11 * (v8 >> 4) >= 0xBB9))
                          {
                            v12 = v8;
                            if (v10 == 1)
                            {
                              v17 = (v8 % 3) | (v8 / 3) & 7;
                              v18 = 1;
                              if ((v8 & 0xF) == 0)
                              {
                                v18 = 2;
                              }

                              v19 = v17 == 0;
                              if (v17)
                              {
                                v20 = v8 >> ((v8 & 0xF) == 0);
                              }

                              else
                              {
                                v20 = v8 / 3;
                              }

                              v21 = 3;
                              if (!v19)
                              {
                                v21 = v18;
                              }

                              if ((v8 & 3) == 0 && (v8 & 0x1C) == 0)
                              {
                                v20 = v8 >> 2;
                                v21 = 4;
                              }

                              v22 = (v8 % 5) | (v8 / 5) & 7;
                              v23 = v22 == 0;
                              if (v22)
                              {
                                v14 = v20;
                              }

                              v24 = 5;
                              if (!v23)
                              {
                                v24 = v21;
                              }

                              if (!((v8 % 6) | (v8 / 6) & 7))
                              {
                                v14 = v8 / 6;
                                v24 = 6;
                              }

                              if (!((v8 % 7) | (v8 / 7) & 7))
                              {
                                v14 = v8 / 7;
                                v24 = 7;
                              }

                              if ((v8 & 7) == 0 && (v8 & 0x38) == 0)
                              {
                                v14 = v8 >> 3;
                                v24 = 8;
                              }

                              v25 = (v8 % 0xF) | (v8 / 0xF) & 7;
                              v26 = (v8 % 9) | (v8 / 9) & 7;
                              if (!v26)
                              {
                                v14 = v8 / 9;
                              }

                              v27 = 9;
                              if (v26)
                              {
                                v27 = v24;
                              }

                              if (!((v8 % 0xA) | (v8 / 0xA) & 7))
                              {
                                v14 = v8 / 0xA;
                                v27 = 10;
                              }

                              if (!((v8 % 0xB) | (v8 / 0xB) & 7))
                              {
                                v14 = v8 / 0xB;
                                v27 = 11;
                              }

                              if (!((v8 % 0xC) | (v8 / 0xC) & 7))
                              {
                                v14 = v8 / 0xC;
                                v27 = 12;
                              }

                              if (!((v8 % 0xD) | (v8 / 0xD) & 7))
                              {
                                v14 = v8 / 0xD;
                                v27 = 13;
                              }

                              if (!((v8 % 0xE) | (v8 / 0xE) & 7))
                              {
                                v14 = v8 / 0xE;
                                v27 = 14;
                              }

                              v28 = v25 == 0;
                              if (v25)
                              {
                                v12 = v14;
                              }

                              else
                              {
                                v12 = v8 / 0xF;
                              }

                              v10 = 15;
                              if (!v28)
                              {
                                v10 = v27;
                              }

                              if ((v8 & 0xF) == 0 && (v8 & 0x70) == 0)
                              {
                                v12 = v8 >> 4;
                                v10 = 16;
                              }
                            }
                          }

                          else
                          {
                            v10 = 16;
                          }
                        }

                        else
                        {
                          v10 = 15;
                          v12 = v8 / 0xF;
                        }
                      }

                      else
                      {
                        v10 = 14;
                        v12 = v8 / 0xE;
                      }
                    }

                    else
                    {
                      v10 = 13;
                      v12 = v8 / 0xD;
                    }
                  }

                  else
                  {
                    v10 = 12;
                    v12 = v8 / 0xC;
                  }
                }

                else
                {
                  v10 = 11;
                  v12 = v8 / 0xB;
                }
              }

              else
              {
                v10 = 10;
                v12 = v8 / 0xA;
              }
            }

            else
            {
              v10 = 9;
              v12 = v8 / 9;
            }
          }

          else
          {
            v10 = 8;
          }
        }

        else
        {
          v10 = 7;
          v12 = v8 / 7;
        }
      }
    }

    else
    {
      v10 = 4;
    }
  }

  else
  {
    v10 = 2;
  }

  v29 = *(a2 + 4);
  v30 = *(a2 + 12);
  result = *(a2 + 14);
  v32 = ((a5 + 7) & 0xFFFFFFFFFFFFFFF8) - 1;
  if (a6 == 1 && a5 < 5)
  {
    v32 = 3;
  }

  v34 = (v32 + v9) / v9;
  v35 = (v29 + v34 * a6 - 1) / v29;
  v36 = v35 * a7[5];
  v37 = (a7[3] + v30 - 1) / v30;
  v38 = a7[4] + result - 1;
  *a8 = v10 > 1;
  *(a8 + 8) = v10;
  *(a8 + 16) = v8;
  *(a8 + 24) = v12;
  *(a8 + 32) = v34 * a6;
  *(a8 + 40) = v34;
  *(a8 + 48) = v35;
  *(a8 + 56) = v30;
  *(a8 + 64) = result;
  *(a8 + 72) = v29;
  *(a8 + 80) = v37;
  *(a8 + 88) = v38 / result;
  *(a8 + 96) = v36;
  return result;
}

__n128 sub_239C1BFA0@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 80);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = v2;
  *(a2 + 96) = *(a1 + 96);
  v3 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v3;
  result = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = result;
  return result;
}

__n128 sub_239C1BFC4@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 80);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = v2;
  *(a2 + 96) = *(a1 + 96);
  v3 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v3;
  result = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = result;
  return result;
}

__n128 sub_239C1BFE8@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 80);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = v2;
  *(a2 + 96) = *(a1 + 96);
  v3 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v3;
  result = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = result;
  return result;
}

uint64_t sub_239C1C00C(unint64_t a1, const char *a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, void *a11, char *a12, const void *a13)
{
  v15 = a12;
  v16 = (a2 + 3) & 0xFFFFFFFC;
  v17 = ((v16 / a3) + 7) & 0xFFFFFFF8;
  if (a1 == 1 && a6 == 1 && a7 == 1 && (a8 & 1) == 0)
  {
    if (a4 == 3 && a5 == 3 || a4 == 5 && a5 == 5)
    {
      v18 = a5 * a4;
      v19 = a5 * a4 + 7;
      v20 = objc_msgSend_newBufferWithLength_options_(a9, a2, 2 * (v19 & 0x7FFFFFFFFFFFFFF8) * v16, 0, a5, 1, 1, a8);
      *a10 = v20;
      if (!v20)
      {
        return 1;
      }

      v189 = v17;
      v28 = objc_msgSend_contents(v20, v21, v22, v23, v24, v25, v26, v27);
      bzero(v28, 2 * (v19 & 0x7FFFFFFFFFFFFFF8) * v16);
      if (a2 && a12)
      {
        v34 = (2 * v19) & 0xFFFFFFFFFFFFFFF0;
        v35 = a2;
        do
        {
          memcpy(v28, v15, 2 * v18);
          v28 += v34;
          v15 += 2 * v18;
          --v35;
        }

        while (v35);
      }
    }

    else
    {
      v57 = a4 + 7;
      v58 = 2 * a5 * ((a4 + 7) & 0x7FFFFFFFFFFFFFF8) * v17;
      v59 = objc_msgSend_newBufferWithLength_options_(a9, a2, v58, 0, a5, 1, 1, a8);
      *a10 = v59;
      if (!v59)
      {
        return 1;
      }

      v189 = v17;
      v67 = objc_msgSend_contents(v59, v60, v61, v62, v63, v64, v65, v66);
      bzero(v67, v58);
      if (a2 && a12 && a5)
      {
        v68 = 0;
        v69 = 2 * a4;
        v70 = (2 * v57) & 0xFFFFFFFFFFFFFFF0;
        do
        {
          v71 = a5;
          do
          {
            memcpy(v67, v15, v69);
            v67 += v70;
            v15 += v69;
            --v71;
          }

          while (v71);
          ++v68;
        }

        while (v68 != a2);
      }
    }
  }

  else
  {
    v36 = (a1 + 3) & 0xFFFFFFFC;
    if (a8)
    {
      v38 = v36 / a3;
      v39 = v36 / a3 * a4;
      v212 = (v39 + 7) & 0xFFFFFFFFFFFFFFF8;
      v40 = 2 * v16 * a5 * v212;
      v41 = objc_msgSend_newBufferWithLength_options_(a9, a2, v40, 0, a5, a6, a7, a8);
      *a10 = v41;
      if (!v41)
      {
        return 1;
      }

      v189 = v17;
      v49 = objc_msgSend_contents(v41, v42, v43, v44, v45, v46, v47, v48);
      bzero(v49, v40);
      if (a12)
      {
        v50 = a1 / a3;
        if ((v39 & 7) == 0 && v16 == a2 && v38 == v50)
        {
          memcpy(v49, a12, v40);
        }

        else if (a2 && a4 && a5)
        {
          v171 = 0;
          v172 = v212 - v39;
          do
          {
            v215 = v171;
            v173 = 0;
            do
            {
              v174 = a4;
              do
              {
                memcpy(v49, v15, 2 * v50);
                v49 += 2 * v38;
                v15 += 2 * v50;
                --v174;
              }

              while (v174);
              v49 += 2 * v172;
              ++v173;
            }

            while (v173 != a5);
            v171 = v215 + 1;
          }

          while ((v215 + 1) != a2);
        }
      }
    }

    else
    {
      v189 = ((v16 / a3) + 7) & 0xFFFFFFF8;
      v51 = a1 / a3;
      v52 = a1 / a3 + 3;
      v53 = a3 > 1;
      if ((v52 & 4) == 0)
      {
        v53 = 1;
      }

      v213 = v53;
      v54 = v52 & 0xFFFFFFFFFFFFFFFCLL;
      v55 = ((v52 & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFF8;
      v56 = a2 / a3;
      if (a3 <= 1)
      {
        v55 = v54;
      }

      if (a3 == 1)
      {
        if (a1 < 4 || (v72 = a2, a2 >= 5))
        {
          v72 = 8;
          if ((a1 & 0xFFFFFFFFFFFFFFFDLL) != 1 && a4 == 1 && a5 == 1)
          {
            if (v36 >= 0x140 && v16 == 16 || (v72 = 8, v36 >= 0x60) && ((a2 + 3) & 0xFFFFFFEC) == 0x20)
            {
              v72 = 4;
            }
          }
        }
      }

      else
      {
        v72 = 8;
      }

      v73 = v56 + v72 - 1;
      v204 = v73 / v72;
      v207 = (v55 * a4 + 7) & 0xFFFFFFFFFFFFFFF8;
      v209 = 2 * a3 * a5 * v207 * v72 * (v73 / v72);
      v75 = objc_msgSend_newBufferWithLength_options_(a9, a2, v209, 0, a5, a6, a7, a8);
      *a10 = v75;
      if (!v75)
      {
        return 1;
      }

      v83 = v51 * a4;
      v84 = v73 < v72;
      if (!a5)
      {
        v84 = 1;
      }

      v186 = v84;
      v85 = v83 == 0;
      if (!a5)
      {
        v85 = 1;
      }

      v205 = v85;
      v86 = a4 == 0;
      v87 = a5 == 0;
      if (!a5)
      {
        v86 = 1;
      }

      if (!a4)
      {
        v87 = 1;
      }

      if (v73 < v72)
      {
        v86 = 1;
      }

      v187 = v86;
      v185 = (v83 & 4) == 0;
      v88 = v73 < v72 || v87;
      v191 = v88;
      v196 = v207 * a5 * v72 * v204;
      v197 = objc_msgSend_contents(v75, v76, v77, v78, v79, v80, v81, v82);
      bzero(v197, v209);
      v89 = 0;
      if (a3 <= 1)
      {
        v90 = 1;
      }

      else
      {
        v90 = a3;
      }

      v195 = v90;
      v91 = 3;
      v92 = v72 * a5;
      v93 = v54 * a4 + 7;
      if (v213)
      {
        v91 = 7;
      }

      v94 = v83 * a5;
      v188 = v91 & v51;
      v211 = v72 * (v93 & 0xFFFFFFFFFFFFFFF8);
      v203 = v92 * v83;
      v202 = v92 * (v93 & 0xFFFFFFFFFFFFFFF8);
      v95 = v51 >> 3;
      v199 = v83 >> 2;
      v96 = (v83 >> 2) * a5;
      v29 = v51 >> 2;
      v214 = v51 * a4;
      v97 = v83 >> 3;
      v198 = (v83 >> 2) * v92;
      if (v83 >> 3 <= 1)
      {
        v30 = 1;
      }

      else
      {
        v30 = v83 >> 3;
      }

      v194 = (v83 & 7 | v91 & v51) != 0;
      v32 = v97 * a5;
      v98 = v205;
      if (v72 - 1 >= v73)
      {
        v98 = 1;
      }

      v192 = v98;
      v206 = v97 * v92;
      v99 = v73 / v72;
      v201 = v83 >> 3;
      do
      {
        v100 = &v197[2 * v196 * v89];
        v101 = &a12[2 * a5 * a4 * v51 * v56 * v89];
        v200 = v89;
        if (v194)
        {
          if ((v51 & 3) != 0)
          {
            if ((v191 & 1) == 0)
            {
              v102 = 0;
              do
              {
                v103 = 0;
                v208 = v102;
                v210 = v101;
                v104 = v100;
                v105 = v101;
                do
                {
                  v106 = 0;
                  v33 = v104;
                  v107 = v105;
                  do
                  {
                    if (v106 + v102 * v72 < v56)
                    {
                      v108 = 0;
                      v109 = v107;
                      do
                      {
                        v110 = 0;
                        v111 = v51;
                        v31 = v109;
                        do
                        {
                          v112 = *v31;
                          v31 += 2;
                          *(v33 + ((((v110 + v108 * v54) & 0x7FFFFFFFFFFFFFF8) * v72) & 0xFFFFFFFFFFFFFFF8 | (v110 + v108 * v54) & 7)) = v112;
                          ++v110;
                          --v111;
                        }

                        while (v111);
                        ++v108;
                        v109 += 2 * v51;
                      }

                      while (v108 != a4);
                    }

                    ++v106;
                    v107 += 2 * v94;
                    v33 += 2;
                  }

                  while (v106 != v72);
                  ++v103;
                  v105 += 2 * v214;
                  v104 = (v104 + 2 * v211);
                }

                while (v103 != a5);
                ++v102;
                v99 = v204;
                v101 = &v210[2 * v203];
                v97 = v201;
                v100 += 2 * v202;
              }

              while (v208 + 1 < v204);
            }
          }

          else if (v188)
          {
            if (!v187)
            {
              if (v51 > 7)
              {
                if ((v51 & 4) != 0)
                {
                  v151 = 0;
                  v33 = 0;
                  do
                  {
                    v152 = 0;
                    v153 = v101;
                    do
                    {
                      v154 = 0;
                      v31 = v153;
                      do
                      {
                        v155 = 0;
                        v156 = v31;
                        do
                        {
                          v157 = v151;
                          v158 = v72;
                          v159 = v156;
                          do
                          {
                            if (v157 < v56)
                            {
                              *v100 = *v159;
                              *(v100 + 1) = v159[1];
                            }

                            v100 += 16;
                            v159 += v96;
                            ++v157;
                            --v158;
                          }

                          while (v158);
                          ++v155;
                          v156 += 2;
                        }

                        while (v155 != v95);
                        v160 = v151;
                        v161 = v72;
                        do
                        {
                          if (v160 < v56)
                          {
                            *v100 = *v156;
                          }

                          v100 += 16;
                          v156 += v96;
                          ++v160;
                          --v161;
                        }

                        while (v161);
                        ++v154;
                        v31 += 8 * v29;
                      }

                      while (v154 != a4);
                      ++v152;
                      v153 += 8 * v199;
                    }

                    while (v152 != a5);
                    v33 = (v33 + 1);
                    v101 += 8 * v198;
                    v151 += v72;
                  }

                  while (v33 < v99);
                }

                else
                {
                  v135 = 0;
                  v136 = 0;
                  do
                  {
                    v137 = 0;
                    v138 = v101;
                    do
                    {
                      v139 = 0;
                      v140 = v138;
                      do
                      {
                        v141 = 0;
                        v31 = v140;
                        do
                        {
                          v142 = v135;
                          v143 = v72;
                          v33 = v31;
                          do
                          {
                            if (v142 < v56)
                            {
                              *v100 = *v33;
                              *(v100 + 1) = v33[1];
                            }

                            v100 += 16;
                            v33 += v96;
                            ++v142;
                            --v143;
                          }

                          while (v143);
                          ++v141;
                          v31 += 16;
                        }

                        while (v141 != v95);
                        ++v139;
                        v140 += 8 * v29;
                      }

                      while (v139 != a4);
                      ++v137;
                      v138 += 8 * v199;
                    }

                    while (v137 != a5);
                    ++v136;
                    v101 += 8 * v198;
                    v135 += v72;
                  }

                  while (v136 < v99);
                }
              }

              else if ((v51 & 4) != 0)
              {
                v121 = 0;
                v122 = 0;
                do
                {
                  v123 = 0;
                  v124 = v101;
                  do
                  {
                    v125 = 0;
                    v126 = v124;
                    do
                    {
                      v127 = v121;
                      v31 = v72;
                      v33 = v126;
                      do
                      {
                        if (v127 < v56)
                        {
                          *v100 = *v33;
                        }

                        v100 += 16;
                        v33 += v96;
                        ++v127;
                        --v31;
                      }

                      while (v31);
                      ++v125;
                      v126 += 8 * v29;
                    }

                    while (v125 != a4);
                    ++v123;
                    v124 += 8 * v199;
                  }

                  while (v123 != a5);
                  ++v122;
                  v101 += 8 * v198;
                  v121 += v72;
                }

                while (v122 < v99);
              }
            }
          }

          else if (!v186)
          {
            if (v214 >= 8)
            {
              if ((v214 & 4) != 0)
              {
                v162 = 0;
                v33 = 0;
                do
                {
                  v163 = 0;
                  v164 = v101;
                  do
                  {
                    v165 = 0;
                    v166 = v164;
                    do
                    {
                      v167 = v162;
                      v168 = v72;
                      v31 = v166;
                      do
                      {
                        if (v167 < v56)
                        {
                          *v100 = *v31;
                          *(v100 + 1) = *(v31 + 8);
                        }

                        v100 += 16;
                        v31 += 8 * v96;
                        ++v167;
                        --v168;
                      }

                      while (v168);
                      ++v165;
                      v166 += 16;
                    }

                    while (v165 != v30);
                    v169 = v162;
                    v170 = v72;
                    do
                    {
                      if (v169 < v56)
                      {
                        *v100 = *v166;
                      }

                      v100 += 16;
                      v166 += 8 * v96;
                      ++v169;
                      --v170;
                    }

                    while (v170);
                    ++v163;
                    v164 += 8 * v199;
                  }

                  while (v163 != a5);
                  v33 = (v33 + 1);
                  v101 += 8 * v198;
                  v162 += v72;
                }

                while (v33 < v99);
              }

              else
              {
                v144 = 0;
                v145 = 0;
                do
                {
                  v146 = 0;
                  v147 = v101;
                  do
                  {
                    v148 = 0;
                    v149 = v147;
                    do
                    {
                      v150 = v144;
                      v31 = v72;
                      v33 = v149;
                      do
                      {
                        if (v150 < v56)
                        {
                          *v100 = *v33;
                          *(v100 + 1) = v33[1];
                        }

                        v100 += 16;
                        v33 += v96;
                        ++v150;
                        --v31;
                      }

                      while (v31);
                      ++v148;
                      v149 += 16;
                    }

                    while (v148 != v30);
                    ++v146;
                    v147 += 8 * v199;
                  }

                  while (v146 != a5);
                  ++v145;
                  v101 += 8 * v198;
                  v144 += v72;
                }

                while (v145 < v99);
              }
            }

            else if (!v185)
            {
              v128 = 0;
              v129 = 0;
              do
              {
                v130 = 0;
                v131 = v101;
                do
                {
                  v132 = v128;
                  v133 = v72;
                  v134 = v131;
                  do
                  {
                    if (v132 < v56)
                    {
                      *v100 = *v134;
                    }

                    v100 += 16;
                    v134 += 8 * v96;
                    ++v132;
                    --v133;
                  }

                  while (v133);
                  ++v130;
                  v131 += 8 * v199;
                }

                while (v130 != a5);
                ++v129;
                v101 += 8 * v198;
                v128 += v72;
              }

              while (v129 < v99);
            }
          }
        }

        else if ((v192 & 1) == 0)
        {
          v113 = 0;
          v114 = 0;
          do
          {
            v115 = 0;
            v116 = v101;
            do
            {
              v117 = 0;
              v118 = v116;
              do
              {
                v119 = v113;
                v31 = v72;
                v120 = v118;
                do
                {
                  if (v119 < v56)
                  {
                    *v100 = *v120;
                  }

                  v100 += 16;
                  v120 += 16 * v32;
                  ++v119;
                  --v31;
                }

                while (v31);
                ++v117;
                v118 += 16;
              }

              while (v117 != v30);
              ++v115;
              v116 += 16 * v97;
            }

            while (v115 != a5);
            ++v114;
            v101 += 16 * v206;
            v113 += v72;
          }

          while (v114 < v99);
        }

        v89 = v200 + 1;
      }

      while (v200 + 1 != v195);
    }
  }

  if (!a11)
  {
    return 0;
  }

  v175 = objc_msgSend_newBufferWithLength_options_(a9, v29, 4 * v189 * a3, 0, v30, v31, v32, v33);
  *a11 = v175;
  if (v175)
  {
    v183 = objc_msgSend_contents(v175, v176, v177, v178, v179, v180, v181, v182);
    bzero(v183, 4 * v189 * a3);
    if (a13)
    {
      memcpy(v183, a13, 4 * a2);
    }

    return 0;
  }

  return 1;
}

uint64_t sub_239C1CC0C(uint64_t a1, char *a2, void **a3, _DWORD *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8)
{
  v9 = a6;
  v10 = a5;
  v13 = objc_msgSend_sourceImageFeatureChannels(a7, a2, a3, a4, a5, a6, a7, a8);
  v21 = objc_msgSend_sourceGradientFeatureChannels(a7, v14, v15, v16, v17, v18, v19, v20);
  v29 = objc_msgSend_groups(a7, v22, v23, v24, v25, v26, v27, v28);
  v37 = objc_msgSend_primaryKernelWidth(a7, v30, v31, v32, v33, v34, v35, v36);
  v45 = objc_msgSend_primaryKernelHeight(a7, v38, v39, v40, v41, v42, v43, v44);
  v53 = objc_msgSend_channelMultiplier(a7, v46, v47, v48, v49, v50, v51, v52);
  v54 = (*(*a1 + 264))(a1);
  if (v10 == 268435488)
  {
    return sub_239C1CD78(v21, v13, v29, v37, v45, a2, a3, 0, 0, a4, 0, 0, 1uLL, v53, 1u, v54, v9);
  }

  else
  {
    return sub_239C1D570(v21, v13, v29, v37, v45, a2, a3, 0, 0, a4, 0, 0, 1uLL, v53, 1u, v54, v9);
  }
}

uint64_t sub_239C1CD78(unint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, void *a6, void **a7, void **a8, void *a9, _DWORD *a10, char *a11, char *a12, unint64_t a13, unint64_t a14, unsigned __int8 a15, unint64_t a16, int a17)
{
  v20 = a4;
  v22 = a1 / a3;
  if (a13 < 2)
  {
    v24 = a2 / a3;
    v134 = a2;
    v135 = a2;
    v133 = a2 / a3;
    if (a14 == 1)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v23 = a2 / (a13 * a13);
    if (a3 != 1 && (v23 & 3) != 0)
    {
      v24 = a2 / a3;
      v134 = a2;
      v135 = a2;
      v133 = a2 / a3;
      if (a14 != 1)
      {
        goto LABEL_5;
      }

LABEL_15:
      v27 = (v24 + 7) & 0xFFFFFFFFFFFFFFF8;
      v140 = 8;
      v30 = 1;
LABEL_19:
      v138 = a1 / a3;
      goto LABEL_20;
    }

    a2 = ((v23 + 3) & 0xFFFFFFFFFFFFFFFCLL) * a13 * a13;
    v24 = a2 / a3;
    v134 = v23;
    v135 = (v23 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v133 = a2 / a3;
    if (a14 == 1)
    {
      goto LABEL_15;
    }
  }

LABEL_5:
  if (a14)
  {
    v31 = 4;
    if (a14 < 4)
    {
      v31 = a14;
    }

    v140 = v31;
    v27 = ((v22 + 3) & 0xFFFFFFFFFFFFFFFCLL) * a14;
    v30 = (2 * v22 - 1) / v22 * v22;
    goto LABEL_19;
  }

  if (a3 == 1 && v24 < 5)
  {
    v25 = 4;
  }

  else
  {
    v25 = a16;
  }

  v26 = 8;
  if (a3 == 1 && v22 < 5)
  {
    v26 = 4;
  }

  v138 = v26;
  v140 = v25;
  v27 = (v24 + v25 - 1) / v25 * v25;
  v28 = v22 + v26;
  v29 = -8;
  if (a3 == 1 && v22 < 5)
  {
    v29 = -4;
  }

  v30 = (v28 - 1) & v29;
LABEL_20:
  v131 = v30;
  v132 = v27;
  if (v27 * a3 <= a2)
  {
    v32 = a2;
  }

  else
  {
    v32 = v27 * a3;
  }

  v33 = 4 * a4 * a5 * v30 * v32 + 60;
  v34 = *a7;
  if (!*a7)
  {
    v34 = objc_msgSend_newBufferWithLength_options_(a6, a2, v33 & 0xFFFFFFFFFFFFFFC0, 0, a5, a6, a7, a8);
    *a7 = v34;
    if (!v34)
    {
      return 1;
    }
  }

  v35 = objc_msgSend_contents(v34, a2, a3, a4, a5, a6, a7, a8);
  bzero(v35, v33 & 0xFFFFFFFFFFFFFFC0);
  v136 = a5;
  if (a8)
  {
    v43 = *a8;
    if (*a8 || (v43 = objc_msgSend_newBufferWithLength_options_(a6, v36, 4 * v32, 0, v39, v40, v41, v42), (*a8 = v43) != 0))
    {
      __dst = objc_msgSend_contents(v43, v36, v37, v38, v39, v40, v41, v42);
      bzero(__dst, 4 * v32);
      v44 = a15;
      v45 = a9;
      v46 = a17;
      v48 = a11;
      v47 = a12;
      v49 = a15;
      if (!a9)
      {
        goto LABEL_33;
      }

      goto LABEL_31;
    }

    return 1;
  }

  __dst = 0;
  v44 = a15;
  v45 = a9;
  v46 = a17;
  v48 = a11;
  v47 = a12;
  v49 = a15;
  if (!a9)
  {
LABEL_33:
    v59 = 0;
    goto LABEL_34;
  }

LABEL_31:
  *v45 = 0;
  if (!v47)
  {
    goto LABEL_33;
  }

  v129 = v20;
  v50 = 4 * v32;
  v51 = objc_msgSend_newBufferWithLength_options_(a6, v36, 4 * v32, 0, v39, v40, v41, v42);
  *v45 = v51;
  v59 = objc_msgSend_contents(v51, v52, v53, v54, v55, v56, v57, v58);
  v60 = v50;
  v20 = v129;
  bzero(v59, v60);
  v44 = v49;
LABEL_34:
  v61 = a10;
  v141[0] = v138;
  v141[1] = v22;
  v141[2] = v131;
  v141[3] = v140;
  v141[4] = v133;
  v141[5] = v132;
  v141[6] = a3;
  v141[7] = v20;
  v141[8] = v136;
  v141[9] = v134;
  v141[10] = v135;
  v141[11] = a13;
  v141[12] = a14;
  v142 = v44;
  v143 = v46;
  if (v48)
  {
    sub_239C269EC(__dst, v48, v141);
    v44 = v49;
  }

  if (v47)
  {
    sub_239C269EC(v59, v47, v141);
    v44 = v49;
  }

  if (a10)
  {
    if (a14)
    {
      if (a14 == 1)
      {
        v62 = (v22 + 7) & 0xFFFFFFFFFFFFFFF8;
        if (v62)
        {
          v63 = v136 * v20;
          v64 = v44 ? -1 : 1;
          if (v63)
          {
            v65 = 0;
            v66 = 32 * v63;
            v67 = 4 * v64;
            do
            {
              if (v65 >= v22)
              {
                v35 = (v35 + v66);
              }

              else
              {
                v68 = &v61[v63 - 1];
                if (!v44)
                {
                  v68 = v61;
                }

                if ((v65 | 1) < v22)
                {
                  v69 = v65 | 3;
                  v70 = v65 | 4;
                  v71 = v65 | 5;
                  v72 = v65 | 6;
                  v73 = v65 | 7;
                  v74 = v136 * v20;
                  while (1)
                  {
                    *v35 = *v68;
                    v35[1] = v68[v63];
                    if ((v65 | 2) >= v22)
                    {
                      if (v69 >= v22)
                      {
LABEL_57:
                        if (v70 < v22)
                        {
                          goto LABEL_58;
                        }

                        goto LABEL_64;
                      }
                    }

                    else
                    {
                      v35[2] = v68[2 * v63];
                      if (v69 >= v22)
                      {
                        goto LABEL_57;
                      }
                    }

                    v35[3] = v68[3 * v63];
                    if (v70 < v22)
                    {
LABEL_58:
                      v35[4] = v68[4 * v63];
                      if (v71 >= v22)
                      {
                        goto LABEL_59;
                      }

                      goto LABEL_65;
                    }

LABEL_64:
                    if (v71 >= v22)
                    {
LABEL_59:
                      if (v72 < v22)
                      {
                        goto LABEL_60;
                      }

                      goto LABEL_66;
                    }

LABEL_65:
                    v35[5] = v68[5 * v63];
                    if (v72 < v22)
                    {
LABEL_60:
                      v35[6] = v68[6 * v63];
                      if (v73 < v22)
                      {
                        goto LABEL_67;
                      }

                      goto LABEL_54;
                    }

LABEL_66:
                    if (v73 < v22)
                    {
LABEL_67:
                      v35[7] = v68[7 * v63];
                    }

LABEL_54:
                    v35 += 8;
                    v68 = (v68 + v67);
                    if (!--v74)
                    {
                      goto LABEL_48;
                    }
                  }
                }

                v75 = v136 * v20;
                do
                {
                  *v35 = *v68;
                  v35 += 8;
                  v68 = (v68 + v67);
                  --v75;
                }

                while (v75);
              }

LABEL_48:
              v65 += 8;
              v61 = (v61 + v66);
            }

            while (v65 < v62);
          }
        }
      }

      else
      {
        v79 = (v22 + 3) & 0xFFFFFFFFFFFFFFFCLL;
        if (v79 && v140 <= a14)
        {
          v80 = v136 * v20;
          v81 = v140;
          if (v140 <= 1)
          {
            v81 = 1;
          }

          if (v80)
          {
            v82 = 0;
            v83 = v80 * v140;
            v84 = 4 * v80;
            v139 = 4 * v80 * a14;
            v85 = a10 + v139;
            v86 = a14 * v136 * v20;
            v87 = 16 * v86;
            v88 = 4 * v140 * v136 * v20;
            v89 = a14 / v140;
            v90 = &a10[3 * v86];
            v91 = &a10[2 * v86];
            do
            {
              if (v82 >= v22)
              {
                v104 = 0;
                do
                {
                  v35 += 4 * v81 * v80;
                  ++v104;
                }

                while (v104 < v89);
              }

              else if ((v82 | 1) >= v22)
              {
                v105 = 0;
                v106 = v61;
                do
                {
                  v107 = 0;
                  v108 = v106;
                  do
                  {
                    v109 = v108;
                    v110 = v81;
                    do
                    {
                      *v35 = *v109;
                      v35 += 4;
                      v109 = (v109 + v84);
                      --v110;
                    }

                    while (v110);
                    ++v107;
                    ++v108;
                  }

                  while (v107 != v80);
                  ++v105;
                  v106 += v83;
                }

                while (v105 < v89);
              }

              else if ((v82 | 2) >= v22)
              {
                v111 = 0;
                v112 = v85;
                v113 = v61;
                do
                {
                  v114 = 0;
                  v115 = v112;
                  v116 = v113;
                  do
                  {
                    v117 = 0;
                    v118 = v81;
                    do
                    {
                      *v35 = *(v116 + v117);
                      v35[1] = *(v115 + v117);
                      v35 += 4;
                      v117 += v84;
                      --v118;
                    }

                    while (v118);
                    ++v114;
                    ++v116;
                    v115 += 4;
                  }

                  while (v114 != v80);
                  ++v111;
                  v113 += v83;
                  v112 += v88;
                }

                while (v111 < v89);
              }

              else if ((v82 | 3) >= v22)
              {
                v119 = 0;
                v120 = v85;
                v121 = v91;
                v122 = v61;
                do
                {
                  v123 = 0;
                  v124 = v120;
                  v125 = v121;
                  v126 = v122;
                  do
                  {
                    v127 = 0;
                    v128 = v81;
                    do
                    {
                      *v35 = *(v126 + v127);
                      v35[1] = *(v124 + v127);
                      v35[2] = *&v125[v127];
                      v35 += 4;
                      v127 += v84;
                      --v128;
                    }

                    while (v128);
                    ++v123;
                    ++v126;
                    v125 += 4;
                    v124 += 4;
                  }

                  while (v123 != v80);
                  ++v119;
                  v122 += v83;
                  v121 += v88;
                  v120 += v88;
                }

                while (v119 < v89);
              }

              else
              {
                v92 = 0;
                v93 = v85;
                v94 = v91;
                v95 = v90;
                v96 = v61;
                do
                {
                  v97 = 0;
                  v98 = v93;
                  v99 = v94;
                  v100 = v95;
                  v101 = v96;
                  do
                  {
                    v102 = 0;
                    v103 = v81;
                    do
                    {
                      *v35 = *(v101 + v102);
                      v35[1] = *(v98 + v102);
                      v35[2] = *&v99[v102];
                      v35[3] = *&v100[v102];
                      v35 += 4;
                      v102 += v84;
                      --v103;
                    }

                    while (v103);
                    ++v97;
                    ++v101;
                    v100 += 4;
                    v99 += 4;
                    v98 += 4;
                  }

                  while (v97 != v80);
                  v96 += v83;
                  ++v92;
                  v95 += v88;
                  v94 += v88;
                  v93 += v88;
                }

                while (v92 < v89);
              }

              v61 += v139;
              v82 += 4;
              v85 += v87;
              v91 += v87;
              v90 += v87;
            }

            while (v82 < v79);
          }
        }
      }
    }

    else
    {
      v77 = 5 * (63 - __clz((v140 >> 2)));
      if (!(v140 >> 2))
      {
        v77 = 0x8000000000000000;
      }

      if (v138 < 4)
      {
        v78 = 0;
      }

      else
      {
        v78 = 10;
        if (v22 % v138)
        {
          v78 = 0;
        }
      }

      (*(&off_284CCA008[v77 + 39] + v78 + v138 - 3 * (v138 >> 3)))(v35, a10, v141);
    }
  }

  return 0;
}

uint64_t sub_239C1D570(unint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, void *a6, void **a7, void **a8, void *a9, _WORD *a10, float32x4_t *a11, char *a12, unint64_t a13, unint64_t a14, unsigned __int8 a15, unint64_t a16, int a17)
{
  v21 = a14;
  v22 = a1 / a3;
  if (a13 < 2)
  {
    v25 = a2;
    v26 = a2 / a3;
    v134 = a2 / a3;
    v135 = a2;
    if (a14 == 1)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v23 = a13 * a13;
    v24 = a2 / (a13 * a13);
    if (a3 != 1)
    {
      v25 = a2;
      if ((v24 & 3) != 0)
      {
        v26 = a2 / a3;
        v134 = a2 / a3;
        v135 = a2;
        if (a14 != 1)
        {
          goto LABEL_5;
        }

LABEL_15:
        v29 = (v26 + 7) & 0xFFFFFFFFFFFFFFF8;
        v139 = 8;
        v32 = 1;
LABEL_19:
        v138 = a1 / a3;
        goto LABEL_20;
      }
    }

    v25 = (v24 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    a2 = v25 * v23;
    v26 = v25 * v23 / a3;
    v134 = v26;
    v135 = v24;
    if (a14 == 1)
    {
      goto LABEL_15;
    }
  }

LABEL_5:
  if (a14)
  {
    v33 = 4;
    if (a14 < 4)
    {
      v33 = a14;
    }

    v139 = v33;
    v29 = ((v22 + 3) & 0xFFFFFFFFFFFFFFFCLL) * a14;
    v32 = (2 * v22 - 1) / v22 * v22;
    goto LABEL_19;
  }

  if (a3 == 1 && v26 < 5)
  {
    v27 = 4;
  }

  else
  {
    v27 = a16;
  }

  v28 = 8;
  if (a3 == 1 && v22 < 5)
  {
    v28 = 4;
  }

  v138 = v28;
  v139 = v27;
  v29 = (v26 + v27 - 1) / v27 * v27;
  v30 = v22 + v28;
  v31 = -8;
  if (a3 == 1 && v22 < 5)
  {
    v31 = -4;
  }

  v32 = (v30 - 1) & v31;
LABEL_20:
  v132 = v32;
  v133 = v29;
  if (v29 * a3 <= a2)
  {
    v34 = a2;
  }

  else
  {
    v34 = v29 * a3;
  }

  v35 = 2 * a4 * a5 * v32 * v34 + 30;
  v36 = *a7;
  if (!*a7)
  {
    v36 = objc_msgSend_newBufferWithLength_options_(a6, a2, v35 & 0xFFFFFFFFFFFFFFE0, 0, a5, a6, a7, a8);
    *a7 = v36;
    if (!v36)
    {
      return 1;
    }
  }

  v131 = v25;
  v37 = objc_msgSend_contents(v36, a2, a3, a4, a5, a6, a7, a8);
  bzero(v37, v35 & 0xFFFFFFFFFFFFFFE0);
  v136 = a5;
  if (a8)
  {
    v45 = *a8;
    if (*a8 || (v45 = objc_msgSend_newBufferWithLength_options_(a6, v38, 2 * v34, 0, v41, v42, v43, v44), (*a8 = v45) != 0))
    {
      v130 = objc_msgSend_contents(v45, v38, v39, v40, v41, v42, v43, v44);
      bzero(v130, 2 * v34);
      v46 = a15;
      v47 = a9;
      v48 = a17;
      v50 = a11;
      v49 = a12;
      v51 = a15;
      if (!a9)
      {
        goto LABEL_33;
      }

      goto LABEL_31;
    }

    return 1;
  }

  v130 = 0;
  v46 = a15;
  v47 = a9;
  v48 = a17;
  v50 = a11;
  v49 = a12;
  v51 = a15;
  if (!a9)
  {
LABEL_33:
    v61 = 0;
    goto LABEL_34;
  }

LABEL_31:
  *v47 = 0;
  if (!v49)
  {
    goto LABEL_33;
  }

  v52 = 4 * v34;
  v53 = objc_msgSend_newBufferWithLength_options_(a6, v38, 4 * v34, 0, v41, v42, v43, v44);
  *v47 = v53;
  v61 = objc_msgSend_contents(v53, v54, v55, v56, v57, v58, v59, v60);
  v62 = v52;
  v21 = a14;
  bzero(v61, v62);
  v46 = v51;
LABEL_34:
  v63 = a10;
  v142[0] = v138;
  v142[1] = v22;
  v142[2] = v132;
  v142[3] = v139;
  v142[4] = v134;
  v142[5] = v133;
  v142[6] = a3;
  v142[7] = a4;
  v142[8] = v136;
  v142[9] = v135;
  v142[10] = v131;
  v142[11] = a13;
  v142[12] = v21;
  v143 = v46;
  v144 = v48;
  if (v50)
  {
    sub_239CE2CB4(v130, v50, v142);
    v46 = v51;
  }

  if (v49)
  {
    sub_239C269EC(v61, v49, v142);
    v46 = v51;
  }

  if (a10)
  {
    if (v21)
    {
      if (v21 == 1)
      {
        v64 = (v22 + 7) & 0xFFFFFFFFFFFFFFF8;
        if (v64)
        {
          v65 = v136 * a4;
          v66 = v46 ? -1 : 1;
          if (v65)
          {
            v67 = 0;
            v68 = 16 * v65;
            v69 = 2 * v66;
            do
            {
              if (v67 >= v22)
              {
                v37 = (v37 + v68);
              }

              else
              {
                v70 = &v63[v65 - 1];
                if (!v46)
                {
                  v70 = v63;
                }

                if ((v67 | 1) < v22)
                {
                  v71 = v67 | 3;
                  v72 = v67 | 4;
                  v73 = v67 | 5;
                  v74 = v67 | 6;
                  v75 = v67 | 7;
                  v76 = v136 * a4;
                  while (1)
                  {
                    *v37 = *v70;
                    v37[1] = v70[v65];
                    if ((v67 | 2) >= v22)
                    {
                      if (v71 >= v22)
                      {
LABEL_57:
                        if (v72 < v22)
                        {
                          goto LABEL_58;
                        }

                        goto LABEL_64;
                      }
                    }

                    else
                    {
                      v37[2] = v70[2 * v65];
                      if (v71 >= v22)
                      {
                        goto LABEL_57;
                      }
                    }

                    v37[3] = v70[3 * v65];
                    if (v72 < v22)
                    {
LABEL_58:
                      v37[4] = v70[4 * v65];
                      if (v73 >= v22)
                      {
                        goto LABEL_59;
                      }

                      goto LABEL_65;
                    }

LABEL_64:
                    if (v73 >= v22)
                    {
LABEL_59:
                      if (v74 < v22)
                      {
                        goto LABEL_60;
                      }

                      goto LABEL_66;
                    }

LABEL_65:
                    v37[5] = v70[5 * v65];
                    if (v74 < v22)
                    {
LABEL_60:
                      v37[6] = v70[6 * v65];
                      if (v75 < v22)
                      {
                        goto LABEL_67;
                      }

                      goto LABEL_54;
                    }

LABEL_66:
                    if (v75 < v22)
                    {
LABEL_67:
                      v37[7] = v70[7 * v65];
                    }

LABEL_54:
                    v37 += 8;
                    v70 = (v70 + v69);
                    if (!--v76)
                    {
                      goto LABEL_48;
                    }
                  }
                }

                v77 = v136 * a4;
                do
                {
                  *v37 = *v70;
                  v37 += 8;
                  v70 = (v70 + v69);
                  --v77;
                }

                while (v77);
              }

LABEL_48:
              v67 += 8;
              v63 = (v63 + v68);
            }

            while (v67 < v64);
          }
        }
      }

      else
      {
        v81 = (v22 + 3) & 0xFFFFFFFFFFFFFFFCLL;
        if (v81 && v139 <= v21)
        {
          v82 = v139;
          v83 = v136 * a4;
          if (v139 <= 1)
          {
            v82 = 1;
          }

          if (v83)
          {
            v84 = 0;
            v85 = v83 * v139;
            v86 = 2 * v83;
            v87 = &a10[v83 * v21];
            v88 = 8 * v83 * v21;
            v89 = 2 * v83 * v139;
            v141 = 2 * v83 * v21;
            v90 = &a10[v141];
            v91 = &a10[3 * v83 * v21];
            v92 = v21 / v139;
            do
            {
              if (v84 >= v22)
              {
                v105 = 0;
                do
                {
                  v37 += 4 * v82 * v83;
                  ++v105;
                }

                while (v105 < v92);
              }

              else if ((v84 | 1) >= v22)
              {
                v106 = 0;
                v107 = v63;
                do
                {
                  v108 = 0;
                  v109 = v107;
                  do
                  {
                    v110 = v109;
                    v111 = v82;
                    do
                    {
                      *v37 = *v110;
                      v37 += 4;
                      v110 = (v110 + v86);
                      --v111;
                    }

                    while (v111);
                    ++v108;
                    ++v109;
                  }

                  while (v108 != v83);
                  ++v106;
                  v107 += v85;
                }

                while (v106 < v92);
              }

              else if ((v84 | 2) >= v22)
              {
                v112 = 0;
                v113 = v87;
                v114 = v63;
                do
                {
                  v115 = 0;
                  v116 = v113;
                  v117 = v114;
                  do
                  {
                    v118 = 0;
                    v119 = v82;
                    do
                    {
                      *v37 = *(v117 + v118);
                      v37[1] = *&v116[v118];
                      v37 += 4;
                      v118 += v86;
                      --v119;
                    }

                    while (v119);
                    ++v115;
                    ++v117;
                    v116 += 2;
                  }

                  while (v115 != v83);
                  ++v112;
                  v114 += v85;
                  v113 += v89;
                }

                while (v112 < v92);
              }

              else if ((v84 | 3) >= v22)
              {
                v120 = 0;
                v121 = v87;
                v122 = v90;
                v123 = v63;
                do
                {
                  v124 = 0;
                  v125 = v121;
                  v126 = v122;
                  v127 = v123;
                  do
                  {
                    v128 = 0;
                    v129 = v82;
                    do
                    {
                      *v37 = *(v127 + v128);
                      v37[1] = *&v125[v128];
                      v37[2] = *&v126[v128];
                      v37 += 4;
                      v128 += v86;
                      --v129;
                    }

                    while (v129);
                    ++v124;
                    ++v127;
                    v126 += 2;
                    v125 += 2;
                  }

                  while (v124 != v83);
                  ++v120;
                  v123 += v85;
                  v122 += v89;
                  v121 += v89;
                }

                while (v120 < v92);
              }

              else
              {
                v93 = 0;
                v94 = v87;
                v95 = v90;
                v96 = v91;
                v97 = v63;
                do
                {
                  v98 = 0;
                  v99 = v94;
                  v100 = v95;
                  v101 = v96;
                  v102 = v97;
                  do
                  {
                    v103 = 0;
                    v104 = v82;
                    do
                    {
                      *v37 = *(v102 + v103);
                      v37[1] = *&v99[v103];
                      v37[2] = *&v100[v103];
                      v37[3] = *&v101[v103];
                      v37 += 4;
                      v103 += v86;
                      --v104;
                    }

                    while (v104);
                    ++v98;
                    ++v102;
                    v101 += 2;
                    v100 += 2;
                    v99 += 2;
                  }

                  while (v98 != v83);
                  v97 += v85;
                  ++v93;
                  v96 += v89;
                  v95 += v89;
                  v94 += v89;
                }

                while (v93 < v92);
              }

              v63 += v141 * 2;
              v84 += 4;
              v87 += v88;
              v90 += v88;
              v91 += v88;
            }

            while (v84 < v81);
          }
        }
      }
    }

    else
    {
      v79 = 5 * (63 - __clz((v139 >> 2)));
      if (!(v139 >> 2))
      {
        v79 = 0x8000000000000000;
      }

      if (v138 < 4)
      {
        v80 = 0;
      }

      else
      {
        v80 = 10;
        if (v22 % v138)
        {
          v80 = 0;
        }
      }

      (*(&off_284CCA008[v79 + 19] + v80 + v138 - 3 * (v138 >> 3)))(v37, a10, v142);
    }
  }

  return 0;
}

_WORD *sub_239C1DD50(uint64_t a1, char *a2, _WORD *a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v72 = a5;
  v10 = objc_msgSend_channelMultiplier(a6, a2, a3, a4, a5, a6, a7, a8);
  v18 = objc_msgSend_sourceImageFeatureChannels(a6, v11, v12, v13, v14, v15, v16, v17);
  v26 = objc_msgSend_sourceGradientFeatureChannels(a6, v19, v20, v21, v22, v23, v24, v25);
  v34 = objc_msgSend_groups(a6, v27, v28, v29, v30, v31, v32, v33);
  v70 = objc_msgSend_primaryKernelWidth(a6, v35, v36, v37, v38, v39, v40, v41);
  v49 = objc_msgSend_primaryKernelHeight(a6, v42, v43, v44, v45, v46, v47, v48);
  v50 = v26 / v34;
  v51 = v18 / v34;
  v52 = (*(*a1 + 264))(a1);
  if (v10 == 1)
  {
    v65 = (v51 + 7) & 0xFFFFFFFFFFFFFFF8;
    v62 = 8;
    v67 = 1;
LABEL_17:
    v64 = v26 / v34;
    goto LABEL_18;
  }

  if (v10)
  {
    if (v10 >= 4)
    {
      v62 = 4;
    }

    else
    {
      v62 = v10;
    }

    v65 = ((v50 + 3) & 0xFFFFFFFFFFFFFFFCLL) * v10;
    v67 = (2 * v50 - 1) / v50 * v50;
    goto LABEL_17;
  }

  v60 = v50 < 5;
  v61 = v34 == 1;
  if (v61 && v51 < 5)
  {
    v62 = 4;
  }

  else
  {
    v62 = v52;
  }

  v63 = !v61 || !v60;
  if (v61 && v60)
  {
    v64 = 4;
  }

  else
  {
    v64 = 8;
  }

  v65 = (v51 + v62 - 1) / v62 * v62;
  v66 = -8;
  if (!v63)
  {
    v66 = -4;
  }

  v67 = (v50 + v64 - 1) & v66;
LABEL_18:
  v68 = objc_msgSend_contents(a2, v53, v54, v55, v56, v57, v58, v59);
  v74[0] = v64;
  v74[1] = v50;
  v74[2] = v67;
  v74[3] = v62;
  v74[4] = v18 / v34;
  v74[5] = v65;
  v74[6] = v34;
  v74[7] = v70;
  v74[8] = v49;
  v74[9] = v18;
  v74[10] = v18;
  v74[11] = 1;
  v74[12] = v10;
  v75 = 1;
  v76 = v72;
  return sub_239C1DF30(v68, a3, 0, 0, 0, 0, 0, v74);
}

_WORD *sub_239C1DF30(_WORD *result, _WORD *a2, const void *a3, const __int16 *a4, void *a5, const float *a6, unint64_t a7, uint64_t a8)
{
  v236 = a2;
  v8 = *(a8 + 56);
  v225 = *(a8 + 48);
  v254 = *(a8 + 64);
  v10 = *(a8 + 24);
  v9 = *(a8 + 32);
  v11 = *(a8 + 8);
  v246 = *a8;
  v12 = *(a8 + 96);
  v13 = (v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = *(a8 + 108);
  if (*(a8 + 104) != 1)
  {
    if (!v12)
    {
      v77 = *(a8 + 16);
      v78 = *(a8 + 40);
      v79 = *(a8 + 72);
      v80 = *(a8 + 80);
      if (v14)
      {
        if (v225 && v10 <= v78 && v246 <= v77 && v254 && v8)
        {
          v81 = 0;
          v82 = 0;
          v228 = v78 / v10;
          v83 = v254 * v8 * v11;
          v84 = v254 * v8 * v77;
          v226 = v84 * v10;
          v216 = v84 * v78;
          if (v10 <= 1)
          {
            v85 = 1;
          }

          else
          {
            v85 = *(a8 + 24);
          }

          v237 = v77 / v246;
          do
          {
            v86 = 0;
            v87 = 0;
            v217 = v82;
            v218 = v81;
            v88 = v82 * v9;
            v89 = v81;
            v90 = v236;
            v91 = result;
            do
            {
              v92 = 0;
              v232 = v90;
              v234 = v87;
              v93 = v87 * v10;
              v244 = v90;
              v230 = v91;
              v242 = v91;
              do
              {
                v241 = v92;
                v94 = v92 * v246;
                if (v94 >= v94 + v246)
                {
                  for (i = 0; i != v254; ++i)
                  {
                    for (j = 0; j != v8; ++j)
                    {
                      v99 = 0;
                      v108 = v86;
                      v109 = v89;
                      v110 = v85;
                      do
                      {
                        if (v108 < v9 && v109 % v80 < v79)
                        {
                          ++v99;
                        }

                        ++v109;
                        ++v108;
                        --v110;
                      }

                      while (v110);
                    }
                  }
                }

                else
                {
                  v95 = 0;
                  v97 = v242;
                  v96 = v244;
                  do
                  {
                    v249 = v96;
                    v251 = v95;
                    v98 = 0;
                    v248 = v97;
                    do
                    {
                      v99 = 0;
                      v100 = 0;
                      v101 = v96;
                      v102 = v97;
                      do
                      {
                        if (v100 + v93 < v9)
                        {
                          v103 = v102;
                          v104 = v101;
                          v105 = v94;
                          if ((v100 + v93 + v88) % v80 < v79)
                          {
                            do
                            {
                              if (v105 < v11)
                              {
                                *v104 = *v103;
                              }

                              ++v105;
                              v104 += v8 * v254;
                              v103 += v10;
                            }

                            while (v105 < v94 + v246);
                            v101 += v83;
                            ++v99;
                          }
                        }

                        ++v100;
                        ++v102;
                      }

                      while (v100 != v85);
                      ++v98;
                      v97 += v246 * v10;
                      ++v96;
                    }

                    while (v98 != v8);
                    ++v95;
                    v97 = &v248[v246 * v10 * v8];
                    v96 = &v249[v8];
                  }

                  while (v251 + 1 != v254);
                }

                v92 = v241 + 1;
                v242 += v246 * v10 * v254 * v8;
                v244 += v254 * v8 * v246;
              }

              while (v241 + 1 < v237);
              v90 = &v232[v99 * v83];
              v87 = v234 + 1;
              v91 = &v230[v226];
              v89 += v10;
              v86 += v10;
            }

            while (v234 + 1 < v228);
            v82 = v217 + 1;
            result += v216;
            v236 += v83 * v9;
            v81 = v218 + v9;
          }

          while (v217 + 1 != v225);
        }
      }

      else if (v225 && v10 <= v78 && v246 <= v77 && v254 && v8)
      {
        v192 = 0;
        v233 = v78 / v10;
        v193 = v254 * v8 * v11;
        v194 = v254 * v8 * v77;
        v231 = v194 * v10;
        v227 = v194 * v78;
        if (v246 <= 1)
        {
          v195 = 1;
        }

        else
        {
          v195 = *a8;
        }

        if (v10 <= 1)
        {
          v196 = 1;
        }

        else
        {
          v196 = v10;
        }

        v240 = v77 / v246;
        do
        {
          v197 = 0;
          v229 = v192;
          v198 = v192 * v9;
          v199 = v236;
          v200 = result;
          do
          {
            v201 = 0;
            v202 = 0;
            v238 = v199;
            v239 = v197;
            v203 = v197 * v10;
            v235 = v200;
            do
            {
              v247 = v202;
              v204 = 0;
              v243 = v200;
              v245 = v199;
              do
              {
                v253 = v204;
                v205 = 0;
                v206 = v199;
                v207 = v200;
                do
                {
                  v208 = 0;
                  v209 = 0;
                  v210 = v206;
                  v211 = v207;
                  do
                  {
                    if (v209 + v203 < v9)
                    {
                      v212 = v211;
                      v213 = v201;
                      v214 = v195;
                      v215 = v210;
                      if ((v209 + v203 + v198) % v80 < v79)
                      {
                        do
                        {
                          if (v213 < v11)
                          {
                            *v215++ = *v212;
                          }

                          ++v213;
                          v212 += v10;
                          --v214;
                        }

                        while (v214);
                        v210 += v193;
                        ++v208;
                      }
                    }

                    ++v209;
                    ++v211;
                  }

                  while (v209 != v196);
                  ++v205;
                  v207 += v246 * v10;
                  v206 += v11;
                }

                while (v205 != v8);
                v204 = v253 + 1;
                v200 += v246 * v10 * v8;
                v199 += v8 * v11;
              }

              while (v253 + 1 != v254);
              ++v202;
              v200 = &v243[v246 * v10 * v254 * v8];
              v199 = &v245[v246];
              v201 += v246;
            }

            while (v247 + 1 < v240);
            v199 = &v238[v208 * v193];
            v197 = v239 + 1;
            v200 = &v235[v231];
          }

          while (v239 + 1 < v233);
          v192 = v229 + 1;
          result += v227;
          v236 += v193 * v9;
        }

        while (v229 + 1 != v225);
      }

      goto LABEL_218;
    }

    if (v12 != 1)
    {
      v111 = (v11 + 3) & 0xFFFFFFFFFFFFFFFCLL;
      if (v111 && v10 <= v12)
      {
        v112 = v254 * v8;
        v113 = v10 <= 1 ? 1 : *(a8 + 24);
        if (v112)
        {
          v114 = 0;
          v115 = v10 * v112;
          v116 = v8 * v254;
          v117 = 2 * v8 * v254;
          v118 = &v236[v116 * v12];
          v119 = &v236[3 * v116 * v12];
          v120 = 8 * v116 * v12;
          v121 = 2 * v116 * v10;
          v122 = v12 / v10;
          v255 = 2 * v112 * v12;
          v123 = &v236[v255];
          do
          {
            if (v114 >= v11)
            {
              v136 = 0;
              do
              {
                result += 4 * v112 * v113;
                ++v136;
              }

              while (v136 < v122);
            }

            else if ((v114 | 1) >= v11)
            {
              v137 = 0;
              v138 = v236;
              do
              {
                v139 = 0;
                v140 = v138;
                do
                {
                  v141 = v140;
                  v142 = v113;
                  do
                  {
                    v143 = *result;
                    result += 4;
                    *v141 = v143;
                    v141 = (v141 + v117);
                    --v142;
                  }

                  while (v142);
                  ++v139;
                  ++v140;
                }

                while (v139 != v112);
                ++v137;
                v138 += v115;
              }

              while (v137 < v122);
            }

            else if ((v114 | 2) >= v11)
            {
              v144 = 0;
              v145 = v118;
              v146 = v236;
              do
              {
                v147 = 0;
                v148 = v145;
                v149 = v146;
                do
                {
                  v150 = 0;
                  v151 = v113;
                  do
                  {
                    *&v149[v150] = *result;
                    *(v148 + v150) = result[1];
                    result += 4;
                    v150 += v117;
                    --v151;
                  }

                  while (v151);
                  ++v147;
                  v149 += 2;
                  ++v148;
                }

                while (v147 != v112);
                ++v144;
                v146 += 2 * v115;
                v145 = (v145 + v121);
              }

              while (v144 < v122);
            }

            else if ((v114 | 3) >= v11)
            {
              v152 = 0;
              v153 = v118;
              v154 = v123;
              v155 = v236;
              do
              {
                v156 = 0;
                v157 = v153;
                v158 = v154;
                v159 = v155;
                do
                {
                  v160 = 0;
                  v161 = v113;
                  do
                  {
                    *&v159[v160] = *result;
                    *(v157 + v160) = result[1];
                    *(v158 + v160) = result[2];
                    result += 4;
                    v160 += v117;
                    --v161;
                  }

                  while (v161);
                  ++v156;
                  v159 += 2;
                  ++v158;
                  ++v157;
                }

                while (v156 != v112);
                ++v152;
                v155 += 2 * v115;
                v154 = (v154 + v121);
                v153 = (v153 + v121);
              }

              while (v152 < v122);
            }

            else
            {
              v124 = 0;
              v125 = v118;
              v126 = v123;
              v127 = v119;
              v128 = v236;
              do
              {
                v129 = 0;
                v130 = v125;
                v131 = v126;
                v132 = v127;
                v133 = v128;
                do
                {
                  v134 = 0;
                  v135 = v113;
                  do
                  {
                    *&v133[v134] = *result;
                    *(v130 + v134) = result[1];
                    *(v131 + v134) = result[2];
                    *(v132 + v134) = result[3];
                    result += 4;
                    v134 += v117;
                    --v135;
                  }

                  while (v135);
                  ++v129;
                  v133 += 2;
                  ++v132;
                  ++v131;
                  ++v130;
                }

                while (v129 != v112);
                v128 += 2 * v115;
                ++v124;
                v127 = (v127 + v121);
                v126 = (v126 + v121);
                v125 = (v125 + v121);
              }

              while (v124 < v122);
            }

            v236 += v255 * 2;
            v114 += 4;
            v118 = (v118 + v120);
            v123 = (v123 + v120);
            v119 = (v119 + v120);
          }

          while (v114 < v111);
        }
      }

      goto LABEL_218;
    }

    if (!v13)
    {
      goto LABEL_218;
    }

    v34 = v254 * v8;
    if (!(v254 * v8))
    {
      goto LABEL_218;
    }

    v35 = 0;
    v36 = 16 * v34;
    v37 = &a2[7 * v34];
    v38 = &a2[6 * v34];
    v39 = &a2[5 * v34];
    v40 = &v236[4 * v34];
    v41 = &v236[3 * v34];
    v42 = &v236[2 * v34];
    v43 = &v236[v8 * v254];
    while (v35 >= v11)
    {
      result = (result + v36);
LABEL_33:
      v35 += 8;
      v236 = (v236 + v36);
      v37 = (v37 + v36);
      v38 = (v38 + v36);
      v39 = (v39 + v36);
      v40 = (v40 + v36);
      v41 = (v41 + v36);
      v42 = (v42 + v36);
      v43 = (v43 + v36);
      if (v35 >= v13)
      {
        goto LABEL_218;
      }
    }

    v44 = 0;
    v45 = v35 | 2;
    v46 = v35 | 3;
    v47 = v35 | 4;
    v48 = v35 | 5;
    v49 = v35 | 6;
    v50 = v35 | 7;
    while (1)
    {
      v236[v44] = *result;
      if ((v35 | 1) < v11)
      {
        v43[v44] = result[1];
        if (v45 >= v11)
        {
LABEL_39:
          if (v46 >= v11)
          {
            goto LABEL_40;
          }

          goto LABEL_47;
        }
      }

      else if (v45 >= v11)
      {
        goto LABEL_39;
      }

      v42[v44] = result[2];
      if (v46 >= v11)
      {
LABEL_40:
        if (v47 >= v11)
        {
          goto LABEL_41;
        }

        goto LABEL_48;
      }

LABEL_47:
      v41[v44] = result[3];
      if (v47 >= v11)
      {
LABEL_41:
        if (v48 >= v11)
        {
          goto LABEL_42;
        }

        goto LABEL_49;
      }

LABEL_48:
      v40[v44] = result[4];
      if (v48 >= v11)
      {
LABEL_42:
        if (v49 >= v11)
        {
          goto LABEL_43;
        }

        goto LABEL_50;
      }

LABEL_49:
      v39[v44] = result[5];
      if (v49 >= v11)
      {
LABEL_43:
        if (v50 < v11)
        {
          goto LABEL_51;
        }

        goto LABEL_36;
      }

LABEL_50:
      v38[v44] = result[6];
      if (v50 < v11)
      {
LABEL_51:
        v37[v44] = result[7];
      }

LABEL_36:
      result += 8;
      if (v34 == ++v44)
      {
        goto LABEL_33;
      }
    }
  }

  if (v12)
  {
    if (v12 == 1)
    {
      if (v13)
      {
        v15 = v254 * v8;
        if (v254 * v8)
        {
          v16 = 0;
          v17 = 16 * v15;
          v18 = &a2[8 * v15 - 1];
          v19 = &a2[7 * v15 - 1];
          v20 = &a2[6 * v15 - 1];
          v21 = &a2[5 * v15 - 1];
          v22 = &v236[4 * v15 - 1];
          v23 = &v236[3 * v15 - 1];
          v24 = &v236[2 * v15 - 1];
          v25 = &v236[v8 * v254 - 1];
          v26 = -(v8 * v254);
          while (v16 >= v11)
          {
            result = (result + v17);
LABEL_8:
            v16 += 8;
            v18 += v17;
            v19 += v17;
            v20 += v17;
            v21 += v17;
            v22 += v17;
            v23 += v17;
            v24 += v17;
            v25 += v17;
            if (v16 >= v13)
            {
              goto LABEL_218;
            }
          }

          v27 = 0;
          v28 = v16 | 2;
          v29 = v16 | 3;
          v30 = v16 | 4;
          v31 = v16 | 5;
          v32 = v16 | 6;
          v33 = v16 | 7;
          while (1)
          {
            *(v25 + 2 * v27) = *result;
            if ((v16 | 1) < v11)
            {
              *(v24 + 2 * v27) = result[1];
              if (v28 >= v11)
              {
LABEL_14:
                if (v29 >= v11)
                {
                  goto LABEL_15;
                }

                goto LABEL_22;
              }
            }

            else if (v28 >= v11)
            {
              goto LABEL_14;
            }

            *(v23 + 2 * v27) = result[2];
            if (v29 >= v11)
            {
LABEL_15:
              if (v30 >= v11)
              {
                goto LABEL_16;
              }

              goto LABEL_23;
            }

LABEL_22:
            *(v22 + 2 * v27) = result[3];
            if (v30 >= v11)
            {
LABEL_16:
              if (v31 >= v11)
              {
                goto LABEL_17;
              }

              goto LABEL_24;
            }

LABEL_23:
            *(v21 + 2 * v27) = result[4];
            if (v31 >= v11)
            {
LABEL_17:
              if (v32 >= v11)
              {
                goto LABEL_18;
              }

              goto LABEL_25;
            }

LABEL_24:
            *(v20 + 2 * v27) = result[5];
            if (v32 >= v11)
            {
LABEL_18:
              if (v33 < v11)
              {
                goto LABEL_26;
              }

              goto LABEL_11;
            }

LABEL_25:
            *(v19 + 2 * v27) = result[6];
            if (v33 < v11)
            {
LABEL_26:
              *(v18 + 2 * v27) = result[7];
            }

LABEL_11:
            result += 8;
            if (v26 == --v27)
            {
              goto LABEL_8;
            }
          }
        }
      }
    }
  }

  else if (v14)
  {
    if (v225 && v9 && v11 && v254 && v8)
    {
      v51 = 0;
      v52 = v254 * v8 * v9;
      v53 = v246 * v52;
      v250 = v52 * v11;
      do
      {
        v54 = 0;
        v55 = v236;
        v56 = v246;
        do
        {
          v57 = v54 + v10;
          if (v54 >= v54 + v10)
          {
            v70 = 0;
            do
            {
              v71 = v70 + v56;
              if (v70 < v70 + v56)
              {
                for (k = 0; k != v254; ++k)
                {
                  for (m = 0; m != v8; ++m)
                  {
                    v74 = v56;
                    v75 = v70;
                    do
                    {
                      if (v75 >= v11)
                      {
                        v76 = v10;
                      }

                      else
                      {
                        v76 = 0;
                      }

                      result += v76;
                      ++v75;
                      --v74;
                    }

                    while (v74);
                  }
                }
              }

              v70 += v56;
            }

            while (v71 < v11);
          }

          else
          {
            v58 = 0;
            v59 = v56;
            v60 = v55;
            do
            {
              v61 = v58 + v56;
              if (v58 < v58 + v56)
              {
                v62 = 0;
                v63 = &v60[(v254 - 1) * v8];
                do
                {
                  v64 = 0;
                  v65 = &v63[v8 - 1];
                  do
                  {
                    v66 = v65;
                    v67 = v58;
                    do
                    {
                      if (v67 >= v11)
                      {
                        result += v10;
                      }

                      else
                      {
                        v68 = v66;
                        v69 = v54;
                        do
                        {
                          if (v69 < v9)
                          {
                            *v68 = *result;
                          }

                          ++result;
                          ++v69;
                          v68 += v8 * v254;
                        }

                        while (v69 < v57);
                      }

                      ++v67;
                      v66 += v8 * v254 * v9;
                    }

                    while (v67 != v59);
                    ++v64;
                    --v65;
                  }

                  while (v64 != v8);
                  ++v62;
                  v63 -= v8;
                }

                while (v62 != v254);
              }

              v60 += v53;
              v56 = v246;
              v59 += v246;
              v58 = v61;
            }

            while (v61 < v11);
          }

          v55 += v10 * v254 * v8;
          v54 = v57;
        }

        while (v57 < v9);
        ++v51;
        v236 += v250;
      }

      while (v51 != v225);
    }
  }

  else if (v225 && v9 && v11 && v254 && v8)
  {
    v162 = 0;
    v163 = v8 * v9 * v254;
    v164 = v9 - 3;
    do
    {
      v252 = v162;
      v165 = 0;
      v166 = v236;
      v167 = v246;
      do
      {
        v168 = v165 + v10;
        if (v165 + v10 >= v164)
        {
          v169 = v9 - 3;
        }

        else
        {
          v169 = v165 + v10;
        }

        if (v165 >= v168 || v165 >= v164)
        {
          v184 = 0;
          do
          {
            v185 = v184 + v167;
            if (v184 < v184 + v167)
            {
              for (n = 0; n != v254; ++n)
              {
                for (ii = 0; ii != v8; ++ii)
                {
                  v188 = v167;
                  v189 = v184;
                  do
                  {
                    if (v189 >= v11)
                    {
                      v190 = v10 >> 2;
                    }

                    else
                    {
                      v190 = 0;
                    }

                    result += 4 * v190;
                    ++v189;
                    --v188;
                  }

                  while (v188);
                }
              }
            }

            v184 += v167;
          }

          while (v185 < v11);
        }

        else
        {
          v171 = 0;
          v172 = v167;
          v173 = v166;
          do
          {
            v174 = v171 + v167;
            if (v171 < v171 + v167)
            {
              v175 = 0;
              v176 = &v173[(v254 - 1) * v8 * v9];
              do
              {
                v177 = 0;
                v178 = &v176[(v8 - 1) * v9];
                do
                {
                  v179 = v171;
                  v180 = v178;
                  do
                  {
                    if (v179 >= v11)
                    {
                      result += 4 * (v10 >> 2);
                    }

                    else
                    {
                      v181 = v165;
                      v182 = v180;
                      do
                      {
                        v183 = *result;
                        result += 4;
                        *v182++ = v183;
                        v181 += 4;
                      }

                      while (v181 < v169);
                    }

                    ++v179;
                    v180 = (v180 + 2 * v163);
                  }

                  while (v179 != v172);
                  ++v177;
                  v178 = (v178 - 2 * v9);
                }

                while (v177 != v8);
                ++v175;
                v176 -= v8 * v9;
              }

              while (v175 != v254);
            }

            v173 += v246 * v163;
            v167 = v246;
            v172 += v246;
            v171 = v174;
          }

          while (v174 < v11);
        }

        v166 += v10;
        v165 = v168;
      }

      while (v168 < v9);
      v162 = v252 + 1;
      v236 += v163 * v11;
    }

    while (v252 + 1 != v225);
  }

LABEL_218:
  if (a3)
  {
    result = memcpy(a5, a3, 4 * v9 * v225);
    v191 = a8;
  }

  else
  {
    v191 = a8;
    if (a4)
    {
      result = sub_239CE31B4(a5, a4, a8);
      v191 = a8;
    }
  }

  if (a6)
  {

    return sub_239CE3780(a7, a6, v191);
  }

  return result;
}

uint64_t sub_239C1EEEC(uint64_t a1, char *a2, void **a3, void **a4, void *a5, char *a6, float32x4_t *a7, char *a8, unsigned __int8 a9, int a10, int a11, uint64_t a12, void *a13)
{
  v86 = objc_msgSend_inputFeatureChannels(a13, a2, a3, a4, a5, a6, a7, a8);
  v85 = objc_msgSend_outputFeatureChannels(a13, v15, v16, v17, v18, v19, v20, v21);
  v83 = objc_msgSend_groups(a13, v22, v23, v24, v25, v26, v27, v28);
  v36 = objc_msgSend_kernelWidth(a13, v29, v30, v31, v32, v33, v34, v35);
  v44 = objc_msgSend_kernelHeight(a13, v37, v38, v39, v40, v41, v42, v43);
  v52 = objc_msgSend_strideInPixelsX(a13, v45, v46, v47, v48, v49, v50, v51);
  v60 = objc_msgSend_strideInPixelsY(a13, v53, v54, v55, v56, v57, v58, v59);
  v68 = objc_msgSend_subPixelScaleFactor(a13, v61, v62, v63, v64, v65, v66, v67);
  v76 = objc_msgSend_channelMultiplier(a13, v69, v70, v71, v72, v73, v74, v75);
  switch(a10)
  {
    case 8:
      v80 = (*(*a1 + 264))(a1);
      return sub_239C1F188(v86, v85, v83, v36, v44, a2, a3, a4, a5, a6, a7, a8, v68, v76, 0, v80, a11);
    case 268435472:
      if (a12)
      {
        v79 = (*(*a1 + 264))(a1);
        return sub_239C1D570(v86, v85, v83, v36, v44, a2, a3, a4, a5, a6, a7, a8, v68, v76, 0, v79, a11);
      }

      break;
    case 268435488:
      if (a12)
      {
        v77 = (*(*a1 + 264))(a1);
        return sub_239C1CD78(v86, v85, v83, v36, v44, a2, a3, a4, a5, a6, a7, a8, v68, v76, 0, v77, a11);
      }

      break;
    default:
      return 1;
  }

  return sub_239C1C00C(v86, v85, v83, v36, v44, v52, v60, a9, a2, a3, a4, a6, a7);
}

uint64_t sub_239C1F188(unint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, void *a6, void **a7, void **a8, void *a9, _BYTE *a10, float32x4_t *a11, char *a12, unint64_t a13, unint64_t a14, unsigned __int8 a15, unint64_t a16, int a17)
{
  v22 = a14;
  v23 = a1 / a3;
  if (a13 < 2)
  {
    v25 = a2 / a3;
    v133 = a2;
    v134 = a2;
    v132 = a2 / a3;
    if (a14 == 1)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v24 = a2 / (a13 * a13);
    if (a3 != 1 && (v24 & 3) != 0)
    {
      v25 = a2 / a3;
      v133 = a2;
      v134 = a2;
      v132 = a2 / a3;
      if (a14 != 1)
      {
        goto LABEL_5;
      }

LABEL_15:
      v28 = (v25 + 7) & 0xFFFFFFFFFFFFFFF8;
      v138 = 8;
      v31 = 1;
LABEL_19:
      v137 = a1 / a3;
      goto LABEL_20;
    }

    a2 = ((v24 + 3) & 0xFFFFFFFFFFFFFFFCLL) * a13 * a13;
    v25 = a2 / a3;
    v133 = v24;
    v134 = (v24 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v132 = a2 / a3;
    if (a14 == 1)
    {
      goto LABEL_15;
    }
  }

LABEL_5:
  if (a14)
  {
    v32 = 4;
    if (a14 < 4)
    {
      v32 = a14;
    }

    v138 = v32;
    v28 = ((v23 + 3) & 0xFFFFFFFFFFFFFFFCLL) * a14;
    v31 = (2 * v23 - 1) / v23 * v23;
    goto LABEL_19;
  }

  if (a3 == 1 && v25 < 5)
  {
    v26 = 4;
  }

  else
  {
    v26 = a16;
  }

  v27 = 8;
  if (a3 == 1 && v23 < 5)
  {
    v27 = 4;
  }

  v137 = v27;
  v138 = v26;
  v28 = (v25 + v26 - 1) / v26 * v26;
  v29 = v23 + v27;
  v30 = -8;
  if (a3 == 1 && v23 < 5)
  {
    v30 = -4;
  }

  v31 = (v29 - 1) & v30;
LABEL_20:
  v130 = v31;
  v131 = v28;
  if (v28 * a3 <= a2)
  {
    v33 = a2;
  }

  else
  {
    v33 = v28 * a3;
  }

  v34 = a5 * a4;
  v35 = a5 * a4 * v31 * v33 + 15;
  v36 = *a7;
  if (!*a7)
  {
    v36 = objc_msgSend_newBufferWithLength_options_(a6, a2, v35 & 0xFFFFFFFFFFFFFFF0, 0, a5, a6, a7, a8);
    *a7 = v36;
    if (!v36)
    {
      return 1;
    }
  }

  v37 = objc_msgSend_contents(v36, a2, a3, a4, a5, a6, a7, a8);
  bzero(v37, v35 & 0xFFFFFFFFFFFFFFF0);
  v128 = a4;
  v129 = a5;
  if (a8)
  {
    v45 = *a8;
    if (*a8 || (v45 = objc_msgSend_newBufferWithLength_options_(a6, v38, 2 * v33, 0, v41, v42, v43, v44), (*a8 = v45) != 0))
    {
      v127 = objc_msgSend_contents(v45, v38, v39, v40, v41, v42, v43, v44);
      bzero(v127, 2 * v33);
      v46 = a15;
      v47 = a9;
      v48 = a17;
      v50 = a11;
      v49 = a12;
      v51 = a15;
      if (!a9)
      {
        goto LABEL_33;
      }

      goto LABEL_31;
    }

    return 1;
  }

  v127 = 0;
  v46 = a15;
  v47 = a9;
  v48 = a17;
  v50 = a11;
  v49 = a12;
  v51 = a15;
  if (!a9)
  {
LABEL_33:
    v62 = 0;
    goto LABEL_34;
  }

LABEL_31:
  *v47 = 0;
  if (!v49)
  {
    goto LABEL_33;
  }

  v52 = 4 * v33;
  v53 = a6;
  v136 = v48;
  v54 = objc_msgSend_newBufferWithLength_options_(v53, v38, 4 * v33, 0, v41, v42, v43, v44);
  *v47 = v54;
  v62 = objc_msgSend_contents(v54, v55, v56, v57, v58, v59, v60, v61);
  v63 = v52;
  v22 = a14;
  bzero(v62, v63);
  v48 = v136;
  v46 = v51;
LABEL_34:
  v64 = a10;
  v139[0] = v137;
  v139[1] = v23;
  v139[2] = v130;
  v139[3] = v138;
  v139[4] = v132;
  v139[5] = v131;
  v139[6] = a3;
  v139[7] = v128;
  v139[8] = v129;
  v139[9] = v133;
  v139[10] = v134;
  v139[11] = a13;
  v139[12] = v22;
  v140 = v46;
  v141 = v48;
  if (v50)
  {
    sub_239CE2CB4(v127, v50, v139);
    v46 = v51;
  }

  if (v49)
  {
    sub_239C269EC(v62, v49, v139);
    v46 = v51;
  }

  if (a10)
  {
    if (v22)
    {
      if (v22 == 1)
      {
        v65 = (v23 + 7) & 0xFFFFFFFFFFFFFFF8;
        if (v65)
        {
          v66 = -1;
          if (!v46)
          {
            v66 = 1;
          }

          if (v34)
          {
            v67 = 0;
            v68 = 8 * v34;
            do
            {
              if (v67 >= v23)
              {
                v37 += v68;
              }

              else
              {
                v69 = &v64[v34 - 1];
                if (!v46)
                {
                  v69 = v64;
                }

                if ((v67 | 1) < v23)
                {
                  v70 = v67 | 3;
                  v71 = v67 | 4;
                  v72 = v67 | 5;
                  v73 = v67 | 6;
                  v74 = v67 | 7;
                  v75 = v34;
                  while (1)
                  {
                    *v37 = *v69;
                    v37[1] = v69[v34];
                    if ((v67 | 2) >= v23)
                    {
                      if (v70 >= v23)
                      {
LABEL_56:
                        if (v71 < v23)
                        {
                          goto LABEL_57;
                        }

                        goto LABEL_63;
                      }
                    }

                    else
                    {
                      v37[2] = v69[2 * v34];
                      if (v70 >= v23)
                      {
                        goto LABEL_56;
                      }
                    }

                    v37[3] = v69[3 * v34];
                    if (v71 < v23)
                    {
LABEL_57:
                      v37[4] = v69[4 * v34];
                      if (v72 >= v23)
                      {
                        goto LABEL_58;
                      }

                      goto LABEL_64;
                    }

LABEL_63:
                    if (v72 >= v23)
                    {
LABEL_58:
                      if (v73 < v23)
                      {
                        goto LABEL_59;
                      }

                      goto LABEL_65;
                    }

LABEL_64:
                    v37[5] = v69[5 * v34];
                    if (v73 < v23)
                    {
LABEL_59:
                      v37[6] = v69[6 * v34];
                      if (v74 < v23)
                      {
                        goto LABEL_66;
                      }

                      goto LABEL_53;
                    }

LABEL_65:
                    if (v74 < v23)
                    {
LABEL_66:
                      v37[7] = v69[7 * v34];
                    }

LABEL_53:
                    v37 += 8;
                    v69 += v66;
                    if (!--v75)
                    {
                      goto LABEL_47;
                    }
                  }
                }

                v76 = v34;
                do
                {
                  *v37 = *v69;
                  v37 += 8;
                  v69 += v66;
                  --v76;
                }

                while (v76);
              }

LABEL_47:
              v67 += 8;
              v64 += v68;
            }

            while (v67 < v65);
          }
        }
      }

      else
      {
        v81 = (v23 + 3) & 0xFFFFFFFFFFFFFFFCLL;
        if (v81 && v138 <= v22)
        {
          v82 = v138;
          if (v138 <= 1)
          {
            v82 = 1;
          }

          if (v34)
          {
            v83 = 0;
            v84 = v34 * v138;
            v85 = 4 * v34 * v22;
            v86 = &a10[v34 * v22];
            v87 = &a10[2 * v34 * v22];
            v88 = &a10[3 * v34 * v22];
            v89 = v22 / v138;
            do
            {
              if (v83 >= v23)
              {
                v102 = 0;
                do
                {
                  v37 += 4 * v82 * v34;
                  ++v102;
                }

                while (v102 < v89);
              }

              else if ((v83 | 1) >= v23)
              {
                v103 = 0;
                v104 = v64;
                do
                {
                  v105 = 0;
                  v106 = v104;
                  do
                  {
                    v107 = v82;
                    v108 = v106;
                    do
                    {
                      *v37 = *v108;
                      v37 += 4;
                      v108 += v34;
                      --v107;
                    }

                    while (v107);
                    ++v105;
                    ++v106;
                  }

                  while (v105 != v34);
                  ++v103;
                  v104 += v84;
                }

                while (v103 < v89);
              }

              else if ((v83 | 2) >= v23)
              {
                v109 = 0;
                v110 = v86;
                v111 = v64;
                do
                {
                  v112 = 0;
                  v113 = v110;
                  v114 = v111;
                  do
                  {
                    v115 = 0;
                    v116 = v82;
                    do
                    {
                      *v37 = v114[v115];
                      v37[1] = v113[v115];
                      v37 += 4;
                      v115 += v34;
                      --v116;
                    }

                    while (v116);
                    ++v112;
                    ++v114;
                    ++v113;
                  }

                  while (v112 != v34);
                  ++v109;
                  v111 += v84;
                  v110 += v84;
                }

                while (v109 < v89);
              }

              else if ((v83 | 3) >= v23)
              {
                v117 = 0;
                v118 = v86;
                v119 = v87;
                v120 = v64;
                do
                {
                  v121 = 0;
                  v122 = v118;
                  v123 = v119;
                  v124 = v120;
                  do
                  {
                    v125 = 0;
                    v126 = v82;
                    do
                    {
                      *v37 = v124[v125];
                      v37[1] = v122[v125];
                      v37[2] = v123[v125];
                      v37 += 4;
                      v125 += v34;
                      --v126;
                    }

                    while (v126);
                    ++v121;
                    ++v124;
                    ++v123;
                    ++v122;
                  }

                  while (v121 != v34);
                  ++v117;
                  v120 += v84;
                  v119 += v84;
                  v118 += v84;
                }

                while (v117 < v89);
              }

              else
              {
                v90 = 0;
                v91 = v86;
                v92 = v87;
                v93 = v88;
                v94 = v64;
                do
                {
                  v95 = 0;
                  v96 = v91;
                  v97 = v92;
                  v98 = v93;
                  v99 = v94;
                  do
                  {
                    v100 = 0;
                    v101 = v82;
                    do
                    {
                      *v37 = v99[v100];
                      v37[1] = v96[v100];
                      v37[2] = v97[v100];
                      v37[3] = v98[v100];
                      v37 += 4;
                      v100 += v34;
                      --v101;
                    }

                    while (v101);
                    ++v95;
                    ++v99;
                    ++v98;
                    ++v97;
                    ++v96;
                  }

                  while (v95 != v34);
                  ++v90;
                  v94 += v84;
                  v93 += v84;
                  v92 += v84;
                  v91 += v84;
                }

                while (v90 < v89);
              }

              v83 += 4;
              v64 += v85;
              v86 += v85;
              v87 += v85;
              v88 += v85;
            }

            while (v83 < v81);
          }
        }
      }
    }

    else
    {
      v78 = 5 * (63 - __clz((v138 >> 2)));
      if (!(v138 >> 2))
      {
        v78 = 0x8000000000000000;
      }

      v79 = v137 + v78 - 3 * (v137 >> 3) - 1;
      if (v137 < 4)
      {
        v80 = 0;
      }

      else
      {
        v80 = 10;
        if (v23 % v137)
        {
          v80 = 0;
        }
      }

      (*(&off_284CCA008[v79] + v80))(v37, a10, v139);
    }
  }

  return 0;
}

void *sub_239C1F93C(uint64_t a1, void *a2, int *a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a7;
  v9 = a4;
  if (*a3 < 2)
  {
    v26 = a5;
    v27 = 248;
    if (a4 > 0xF8)
    {
      v27 = a4;
    }

    if (a4 >= 0xF9)
    {
      *a3 = 1;
    }

    v13 = objc_msgSend_newBufferWithLength_options_(a2, a2, 8 * v27, 0, a5, a6, a7, a8);
    v23 = objc_msgSend_contents(v13, v28, v29, v30, v31, v32, v33, v34);
    if (!v8)
    {
      v25 = 8 * v9;
      v24 = v26;
      goto LABEL_13;
    }

    for (; v9; --v9)
    {
      v35 = *v8++;
      v36 = v35;
      v37 = *v26++;
      *v23++ = vmul_n_f32(v37, v36);
    }
  }

  else
  {
    v12 = 4 * a4;
    v13 = objc_msgSend_newBufferWithLength_options_(a2, a2, 2 * (a7 != 0) * 4 * a4 + 512, 0, a5, a6, a7, a8);
    v21 = objc_msgSend_contents(v13, v14, v15, v16, v17, v18, v19, v20);
    MPSConvertFloatToHalf();
    if (v8)
    {
      v22 = (v21 + 512);
      *a3 = 3;
      memcpy(v22, v8, v12);
      v23 = &v22[v12];
      v24 = a8;
      v25 = v12;
LABEL_13:
      memcpy(v23, v24, v25);
    }
  }

  return v13;
}

uint64_t sub_239C1FA68(void *a1, void *a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, uint64_t a12, unint64_t a13, unint64_t a14, unint64_t a15, uint64_t a16, uint64_t a17, char a18, char a19, char a20, unsigned __int8 a21, char a22)
{
  v22 = (*(**(a3 + 32) + 264))(*(a3 + 32));
  v23 = a13 / a15 < 5;
  v24 = a15 == 1;
  v25 = 4;
  if (v24 && a14 / a15 < 5)
  {
    v26 = 4;
  }

  else
  {
    v26 = v22;
  }

  if (!v24 || !v23)
  {
    v25 = 8;
  }

  v27 = a17 * a16;
  if (v24 && v23)
  {
    v28 = 2;
  }

  else
  {
    v28 = 3;
  }

  if (a18)
  {
    v29 = a14;
    v30 = a2;
    v31 = a21;
  }

  else
  {
    v31 = a21;
    v29 = a14;
    v30 = a2;
  }

  v32 = v28;
  v33 = (v25 - 1 + a13 / a15) >> v28;
  v86 = (a14 / a15 + v26 - 1) / v26;
  MPSLibrary::CreateUberShaderKey();
  PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
  v99 = 0u;
  v100 = 0u;
  v98 = 0u;
  v97 = 0u;
  if (v31)
  {
    v34 = a13 / a15;
LABEL_15:
    WORD1(v97) = v29;
    LOWORD(v97) = v34 * v27;
    goto LABEL_17;
  }

  v34 = a13 / a15;
  if (a22)
  {
    goto LABEL_15;
  }

  WORD1(v97) = v86 * a15;
  LOWORD(v97) = v33 * v27;
LABEL_17:
  MPSGetUShortDivisorMagicNumber();
  *(&v97 + 1) = v35;
  MPSGetUShortDivisorMagicNumber();
  *&v98 = v36;
  MPSGetUShortDivisorMagicNumber();
  *(&v98 + 1) = v37;
  MPSGetUShortDivisorMagicNumber();
  *&v99 = v44;
  v45 = a13;
  if (a19)
  {
    v45 = v29;
  }

  DWORD2(v99) = (v33 << v32) * v27 * v26;
  HIDWORD(v99) = v45 / a15 * v27;
  LODWORD(v100) = v34;
  DWORD1(v100) = a14 / a15;
  WORD4(v100) = a16;
  WORD5(v100) = a17;
  if (a18)
  {
    v46 = a5;
  }

  else
  {
    v46 = a5;
    if (v31 || a22)
    {
      v27 *= v34;
    }

    else
    {
      v27 *= v33;
      v29 = v86 * a15;
    }
  }

  objc_msgSend_setComputePipelineState_(v30, v38, PipelineStateForMPSKey, v39, v40, v41, v42, v43, 0, 0, 0, 0, 0);
  objc_msgSend_setBuffer_offset_atIndex_(v30, v47, v46, a9, 0, v48, v49, v50);
  objc_msgSend_setBuffer_offset_atIndex_(v30, v51, a4, 0, 1, v52, v53, v54);
  if (a11 && (a19 & 1) == 0)
  {
    objc_msgSend_setBuffer_offset_atIndex_(v30, v55, a11, a12, 2, v56, v57, v58);
    objc_msgSend_setBuffer_offset_atIndex_(v30, v59, a10, 0, 3, v60, v61, v62);
  }

  objc_msgSend_setBytes_length_atIndex_(v30, v55, &v97, 64, 5, v56, v57, v58);
  v96[0] = (v27 + 7) >> 3;
  v96[1] = (v29 + 7) >> 3;
  v96[2] = 1;
  v94 = vdupq_n_s64(8uLL);
  v95 = 1;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v30, v63, v96, &v94, v64, v65, v66, v67);
  if ((objc_msgSend_retainedReferences(a1, v68, v69, v70, v71, v72, v73, v74) & 1) == 0)
  {
    v75 = v46;
    v76 = a4;
    if ((a19 & 1) == 0)
    {
      v83 = a11;
      v84 = a10;
    }

    v92[0] = MEMORY[0x277D85DD0];
    v92[1] = 3221225472;
    v92[2] = sub_239C200EC;
    v92[3] = &unk_278B2F278;
    v92[4] = v46;
    v92[5] = a4;
    v93 = a19;
    v92[6] = a11;
    v92[7] = a10;
    objc_msgSend_addCompletedHandler_(a1, v77, v92, v78, v79, v80, v81, v82);
  }

  return MPSLibrary::ReleaseMPSKey();
}

uint64_t sub_239C1FFF0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *(a2 + 64);
  v5 = MPSCreateFunctionConstantValues();
  v14[0] = *a3;
  v14[1] = 0;
  v14[2] = (v4 >> 4) & 0xFF0 | v4 | (v4 >> 8) & 0xFF00 | (v4 >> 13) & 0x7F800 | (v4 >> 18) & 0x7C000 | (v4 >> 19) & 0x80000 | (v4 >> 17) & 0x100000 | (v4 >> 18) & 0x600000;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0;
  sub_239C19E34(v5, v14, v6, v7, v8, v9, v10, v11);
  v12 = _MPSNewSpecializedFunction();

  return v12;
}

void sub_239C200EC(uint64_t a1)
{
  if ((*(a1 + 64) & 1) == 0)
  {

    v2 = *(a1 + 56);
  }
}

void sub_239C2014C(uint64_t a1, uint64_t a2, char *a3, void *a4, unsigned int a5, uint64_t a6, unsigned int a7, void *a8, uint64_t a9, char a10)
{
  if (a10)
  {
    v12 = @"export";
  }

  else
  {
    v12 = @"reloadForward";
  }

  v13 = objc_alloc(MEMORY[0x277CD7210]);
  v116 = a2;
  v26 = objc_msgSend_initWithCommandBuffer_withDispatchType_(v13, v14, a2, 0, v15, v16, v17, v18);
  if ((a3[*MEMORY[0x277CD7378]] & 0x18) != 0)
  {
    v27 = *&a3[*MEMORY[0x277CD7360]];
    if (v27 || (v28 = objc_opt_class(), v27 = NSStringFromClass(v28), objc_msgSend_setLabel_(a3, v29, v27, v30, v31, v32, v33, v34), v27))
    {
      v35 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v19, @"_%@", v21, v22, v23, v24, v25, v12);
      v42 = objc_msgSend_stringByAppendingString_(v27, v36, v35, v37, v38, v39, v40, v41);
      if (v42)
      {
        objc_msgSend_setLabel_(v26, v19, v42, v21, v22, v23, v24, v25);
      }
    }
  }

  v115 = *&a3[*MEMORY[0x277CD7370]];
  v43 = objc_msgSend_weights(a3, v19, v20, v21, v22, v23, v24, v25);
  v51 = objc_msgSend_weightsDataType(a3, v44, v45, v46, v47, v48, v49, v50);
  v59 = objc_msgSend_biases(a3, v52, v53, v54, v55, v56, v57, v58);
  v67 = objc_msgSend_inputFeatureChannels(a3, v60, v61, v62, v63, v64, v65, v66);
  v75 = objc_msgSend_outputFeatureChannels(a3, v68, v69, v70, v71, v72, v73, v74);
  v83 = objc_msgSend_groups(a3, v76, v77, v78, v79, v80, v81, v82);
  v91 = objc_msgSend_kernelWidth(a3, v84, v85, v86, v87, v88, v89, v90);
  v99 = objc_msgSend_kernelHeight(a3, v92, v93, v94, v95, v96, v97, v98);
  v107 = objc_msgSend_channelMultiplier(a3, v100, v101, v102, v103, v104, v105, v106);
  sub_239C1FA68(v116, v26, v115, v43, a4, a5, v51, a7, a6, v59, a8, a9, v67, v75, v83, v91, v99, v107 != 0, 0, a10, 0, 0);
  objc_msgSend_endEncoding(v26, v108, v109, v110, v111, v112, v113, v114);
}

void sub_239C20368(uint64_t a1, uint64_t a2, char *a3, void *a4, unsigned int a5, unsigned int a6, uint64_t a7)
{
  v9 = objc_alloc(MEMORY[0x277CD7210]);
  v104 = a2;
  v22 = objc_msgSend_initWithCommandBuffer_withDispatchType_(v9, v10, a2, 0, v11, v12, v13, v14);
  if ((a3[*MEMORY[0x277CD7378]] & 0x18) != 0)
  {
    v23 = *&a3[*MEMORY[0x277CD7360]];
    if (v23 || (v24 = objc_opt_class(), v23 = NSStringFromClass(v24), objc_msgSend_setLabel_(a3, v25, v23, v26, v27, v28, v29, v30), v23))
    {
      v31 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v15, @"_%@", v17, v18, v19, v20, v21, @"reloadBackward");
      v38 = objc_msgSend_stringByAppendingString_(v23, v32, v31, v33, v34, v35, v36, v37);
      if (v38)
      {
        objc_msgSend_setLabel_(v22, v15, v38, v17, v18, v19, v20, v21);
      }
    }
  }

  v39 = *&a3[*MEMORY[0x277CD7370]];
  v40 = objc_msgSend_weights(a3, v15, v16, v17, v18, v19, v20, v21);
  v48 = objc_msgSend_preferredWeightsDataType(a3, v41, v42, v43, v44, v45, v46, v47);
  v56 = objc_msgSend_sourceGradientFeatureChannels(a3, v49, v50, v51, v52, v53, v54, v55);
  v64 = objc_msgSend_sourceImageFeatureChannels(a3, v57, v58, v59, v60, v61, v62, v63);
  v72 = objc_msgSend_groups(a3, v65, v66, v67, v68, v69, v70, v71);
  v80 = objc_msgSend_primaryKernelWidth(a3, v73, v74, v75, v76, v77, v78, v79);
  v88 = objc_msgSend_primaryKernelHeight(a3, v81, v82, v83, v84, v85, v86, v87);
  v96 = objc_msgSend_channelMultiplier(a3, v89, v90, v91, v92, v93, v94, v95) != 0;
  sub_239C1FA68(v104, v22, v39, v40, a4, a5, v48, a6, a7, 0, 0, 0, v56, v64, v72, v80, v88, v96, 1, 0, 0, 0);
  objc_msgSend_endEncoding(v22, v97, v98, v99, v100, v101, v102, v103);
}

unint64_t sub_239C2054C(uint64_t a1, const char *a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  v10 = a2;
  v12 = a9;
  v13 = objc_msgSend_kernelWidth(a3, a2, a3, a4, a5, a6, a7, a8);
  v443 = objc_msgSend_kernelHeight(a3, v14, v15, v16, v17, v18, v19, v20);
  v28 = objc_msgSend_inputFeatureChannels(a3, v21, v22, v23, v24, v25, v26, v27);
  v36 = objc_msgSend_outputFeatureChannels(a3, v29, v30, v31, v32, v33, v34, v35);
  v44 = objc_msgSend_groups(a3, v37, v38, v39, v40, v41, v42, v43);
  v52 = objc_msgSend_subPixelScaleFactor(a3, v45, v46, v47, v48, v49, v50, v51);
  v60 = objc_msgSend_channelMultiplier(a3, v53, v54, v55, v56, v57, v58, v59);
  result = objc_msgSend_weightsLayout(a3, v61, v62, v63, v64, v65, v66, v67);
  if (a9 == -1)
  {
    v76 = 268435472;
  }

  else
  {
    v76 = 8;
  }

  *v10 = v76;
  *(v10 + 1) = result;
  v392 = *(v10 + 1);
  if (!v392)
  {
    v104 = a8;
    if (a9 == -1)
    {
      return result;
    }

    goto LABEL_314;
  }

  v418 = result;
  v381 = *(v10 + 8);
  __dst = *(v10 + 2);
  v77 = (*(*a1 + 264))(a1);
  v85 = v28 / v44;
  v86 = v44;
  v389 = v44;
  if (a9 == -1)
  {
    if (v52 < 2)
    {
      v106 = v36;
      v107 = v36;
    }

    else
    {
      v105 = v36 / (v52 * v52);
      if (v44 == 1 || (v106 = v36, v107 = v36, (v105 & 3) == 0))
      {
        v107 = (v105 + 3) & 0xFFFFFFFFFFFFFFFCLL;
        v36 = v107 * v52 * v52;
        v106 = v105;
      }
    }

    v184 = v36 / v44;
    if (v60 == 1)
    {
      v415 = (v184 + 7) & 0xFFFFFFFFFFFFFFF8;
      v188 = 8;
      v193 = 1;
      v424 = v85;
      v185 = a7;
      v391 = objc_msgSend_contents(a4, v78, v79, v80, v81, v82, v83, v84);
      v201 = a5;
      if (!a5)
      {
        goto LABEL_183;
      }
    }

    else
    {
      v185 = a7;
      if (v60)
      {
        if (v60 >= 4)
        {
          v188 = 4;
        }

        else
        {
          v188 = v60;
        }

        v415 = ((v85 + 3) & 0xFFFFFFFFFFFFFFFCLL) * v60;
        v193 = (2 * v85 - 1) / v85 * v85;
        v424 = v85;
        v391 = objc_msgSend_contents(a4, v78, v79, v80, v81, v82, v83, v84);
        v201 = a5;
        if (!a5)
        {
          goto LABEL_183;
        }
      }

      else
      {
        v186 = v85 < 5;
        v187 = v86 == 1;
        if (v187 && v184 < 5)
        {
          v188 = 4;
        }

        else
        {
          v188 = v77;
        }

        v189 = !v187 || !v186;
        if (v187 && v186)
        {
          v190 = 4;
        }

        else
        {
          v190 = 8;
        }

        v415 = (v184 + v188 - 1) / v188 * v188;
        v424 = v190;
        v191 = v85 + v190;
        v192 = -8;
        if (!v189)
        {
          v192 = -4;
        }

        v193 = (v191 - 1) & v192;
        v391 = objc_msgSend_contents(a4, v78, v79, v80, v81, v82, v83, v84);
        v201 = a5;
        if (!a5)
        {
LABEL_183:
          v375 = 0;
          v202 = a6;
          if (!a6)
          {
LABEL_184:
            v380 = 0;
            if (!v185)
            {
              goto LABEL_185;
            }

            goto LABEL_178;
          }

LABEL_177:
          v380 = objc_msgSend_contents(v202, v194, v195, v196, v197, v198, v199, v200);
          if (!v185)
          {
LABEL_185:
            result = 0;
LABEL_186:
            v444 = v424;
            v445 = v85;
            v446 = v193;
            v447 = v188;
            v448 = v184;
            v449 = v415;
            v450 = v389;
            v451 = v13;
            v452 = v443;
            v453 = v106;
            v454 = v107;
            v455 = v52;
            v456 = v60;
            v457 = 0;
            v458 = v418;
            v378 = result;
            if (v60)
            {
              if (v60 == 1)
              {
                v203 = (v85 + 7) & 0xFFFFFFFFFFFFFFF8;
                if (v203)
                {
                  v204 = v443 * v13;
                  if (v443 * v13)
                  {
                    v205 = 0;
                    v206 = 16 * v204;
                    v207 = v392 + v13 * v443 * ((2 * v203 - 2) & 0xFFFFFFFFFFFFFFF3);
                    v208 = v204 & 7;
                    if ((v204 & 7) == 0)
                    {
                      v208 = 8;
                    }

                    v209 = v204 - v208;
                    v210 = v392 + 6 * v204;
                    result = v392 + 10 * v204;
                    v211 = v392 + 12 * v204;
                    v212 = v392 + 4 * v204;
                    v213 = v392 + 14 * v204;
                    v214 = v392;
                    v215 = v392 + 8 * v204;
                    v216 = v392 + 2 * v13 * v443;
                    do
                    {
                      if (v205 >= v85)
                      {
                        v217 = (v391 + v206);
                      }

                      else
                      {
                        if ((v205 | 1) < v85)
                        {
                          v218 = 0;
                          v219 = v205 | 3;
                          v220 = v205 | 4;
                          v221 = v205 | 5;
                          v222 = v205 | 6;
                          v223 = v205 | 7;
                          v217 = v391;
                          while (1)
                          {
                            v214->i16[v218] = *v217;
                            *(v216 + 2 * v218) = v217[1];
                            if ((v205 | 2) < v85)
                            {
                              *(v212 + 2 * v218) = v217[2];
                              if (v219 >= v85)
                              {
LABEL_201:
                                if (v220 >= v85)
                                {
                                  goto LABEL_202;
                                }

                                goto LABEL_208;
                              }
                            }

                            else if (v219 >= v85)
                            {
                              goto LABEL_201;
                            }

                            *(v210 + 2 * v218) = v217[3];
                            if (v220 >= v85)
                            {
LABEL_202:
                              if (v221 >= v85)
                              {
                                goto LABEL_203;
                              }

                              goto LABEL_209;
                            }

LABEL_208:
                            *(v215 + 2 * v218) = v217[4];
                            if (v221 >= v85)
                            {
LABEL_203:
                              if (v222 >= v85)
                              {
                                goto LABEL_204;
                              }

                              goto LABEL_210;
                            }

LABEL_209:
                            *(result + 2 * v218) = v217[5];
                            if (v222 >= v85)
                            {
LABEL_204:
                              if (v223 < v85)
                              {
                                goto LABEL_211;
                              }

                              goto LABEL_198;
                            }

LABEL_210:
                            *(v211 + 2 * v218) = v217[6];
                            if (v223 < v85)
                            {
LABEL_211:
                              *(v213 + 2 * v218) = v217[7];
                            }

LABEL_198:
                            v217 += 8;
                            if (v204 == ++v218)
                            {
                              goto LABEL_194;
                            }
                          }
                        }

                        v224 = v391;
                        v225 = 0;
                        if (v204 <= 8 || (v391 < v207 ? (v226 = v392 >= v391 + 16 * v204 - 14) : (v226 = 1), !v226 || v206 < 0))
                        {
                          v227 = v214;
                        }

                        else
                        {
                          v227 = (v214 + 2 * v209);
                          v228 = v209;
                          v229 = v214;
                          do
                          {
                            v460 = *(v224 + 96);
                            v462 = *(v224 + 64);
                            v465 = *(v224 + 32);
                            v231 = *v224;
                            v230 = *(v224 + 16);
                            v224 += 128;
                            v460.val[0] = vqtbl2q_s8(v460, xmmword_239D7E2E0);
                            v460.val[1] = vqtbl2q_s8(v462, xmmword_239D7E2F0);
                            v460.val[1].i32[3] = v460.val[0].i32[3];
                            v460.val[0].i32[0] = vzip1q_s16(v231, v230).u32[0];
                            v460.val[0].i32[1] = vqtbl2q_s8(v465, xmmword_239D7E300).i32[1];
                            v460.val[0].i64[1] = v460.val[1].i64[1];
                            *v229++ = v460.val[0];
                            v228 -= 8;
                          }

                          while (v228);
                          v225 = v209;
                          v391 += 16 * v209;
                        }

                        v232 = v204 - v225;
                        v217 = v391;
                        do
                        {
                          v233 = *v217;
                          v217 += 8;
                          v227->i16[0] = v233;
                          v227 = (v227 + 2);
                          --v232;
                        }

                        while (v232);
                      }

LABEL_194:
                      v391 = v217;
                      v205 += 8;
                      v214 = (v214 + v206);
                      v212 += v206;
                      v210 += v206;
                      v215 += v206;
                      result += v206;
                      v211 += v206;
                      v213 += v206;
                      v216 += v206;
                    }

                    while (v205 < v203);
                  }
                }
              }

              else
              {
                v267 = (v85 + 3) & 0xFFFFFFFFFFFFFFFCLL;
                if (v267 && v188 <= v60)
                {
                  v268 = v443 * v13;
                  v269 = v188 <= 1 ? 1 : v188;
                  if (v268)
                  {
                    v270 = 0;
                    v271 = v188 * v268;
                    v272 = 4 * v268 * v60;
                    v273 = 2 * v13 * v443;
                    v274 = v392 + 2 * v13 * v443 * v60;
                    v275 = v392 + 6 * v13 * v443 * v60;
                    result = 8 * v13 * v443 * v60;
                    v276 = 2 * v13 * v443 * v188;
                    v277 = v60 / v188;
                    v278 = v392 + v272;
                    do
                    {
                      if (v270 >= v85)
                      {
                        v292 = 0;
                        v279 = v391;
                        do
                        {
                          v279 += 4 * v268 * v269;
                          ++v292;
                        }

                        while (v292 < v277);
                      }

                      else
                      {
                        v279 = v391;
                        if ((v270 | 1) >= v85)
                        {
                          v293 = 0;
                          v294 = v392;
                          do
                          {
                            v295 = 0;
                            v296 = v294;
                            do
                            {
                              v297 = v296;
                              v298 = v269;
                              do
                              {
                                v299 = *v279;
                                v279 += 4;
                                *v297 = v299;
                                v297 = (v297 + v273);
                                --v298;
                              }

                              while (v298);
                              ++v295;
                              ++v296;
                            }

                            while (v295 != v268);
                            ++v293;
                            v294 += 2 * v271;
                          }

                          while (v293 < v277);
                        }

                        else if ((v270 | 2) >= v85)
                        {
                          v300 = 0;
                          v301 = v274;
                          v302 = v392;
                          do
                          {
                            v303 = 0;
                            v304 = v301;
                            v305 = v302;
                            do
                            {
                              v306 = 0;
                              v307 = v269;
                              do
                              {
                                *(v305 + v306) = *v279;
                                *(v304 + v306) = v279[1];
                                v279 += 4;
                                v306 += v273;
                                --v307;
                              }

                              while (v307);
                              ++v303;
                              v305 += 2;
                              v304 += 2;
                            }

                            while (v303 != v268);
                            ++v300;
                            v302 += 2 * v271;
                            v301 += v276;
                          }

                          while (v300 < v277);
                        }

                        else if ((v270 | 3) >= v85)
                        {
                          v308 = 0;
                          v309 = v274;
                          v310 = v278;
                          v311 = v392;
                          do
                          {
                            v312 = 0;
                            v313 = v309;
                            v314 = v310;
                            v315 = v311;
                            do
                            {
                              v316 = 0;
                              v317 = v269;
                              do
                              {
                                *(v315 + v316) = *v279;
                                *(v313 + v316) = v279[1];
                                *(v314 + v316) = v279[2];
                                v279 += 4;
                                v316 += v273;
                                --v317;
                              }

                              while (v317);
                              ++v312;
                              v315 += 2;
                              v314 += 2;
                              v313 += 2;
                            }

                            while (v312 != v268);
                            ++v308;
                            v311 += 2 * v271;
                            v310 += v276;
                            v309 += v276;
                          }

                          while (v308 < v277);
                        }

                        else
                        {
                          v280 = 0;
                          v281 = v274;
                          v282 = v278;
                          v283 = v275;
                          v284 = v392;
                          do
                          {
                            v285 = 0;
                            v286 = v281;
                            v287 = v282;
                            v288 = v283;
                            v289 = v284;
                            do
                            {
                              v290 = 0;
                              v291 = v269;
                              do
                              {
                                *(v289 + v290) = *v279;
                                *(v286 + v290) = v279[1];
                                *(v287 + v290) = v279[2];
                                *(v288 + v290) = v279[3];
                                v279 += 4;
                                v290 += v273;
                                --v291;
                              }

                              while (v291);
                              ++v285;
                              v289 += 2;
                              v288 += 2;
                              v287 += 2;
                              v286 += 2;
                            }

                            while (v285 != v268);
                            v284 += 2 * v271;
                            ++v280;
                            v283 += v276;
                            v282 += v276;
                            v281 += v276;
                          }

                          while (v280 < v277);
                        }
                      }

                      v391 = v279;
                      v392 += 2 * v272;
                      v270 += 4;
                      v274 += result;
                      v278 += result;
                      v275 += result;
                    }

                    while (v270 < v267);
                  }
                }
              }
            }

            else
            {
              v234 = v443 * v13;
              v235 = v424 * v188;
              v422 = v424 * v188 * v443 * v13;
              v236 = v85 * v443 * v13;
              v442 = v424 * v188 * v13;
              v384 = v184 * v236;
              v397 = v415 / v188;
              v400 = v188;
              if (v418)
              {
                if (v188 <= v415 && v13 && v443 && v424 <= v193)
                {
                  v237 = 0;
                  v419 = v424 * v234;
                  v238 = v193 * v234;
                  v394 = v238 * v188;
                  v376 = v238 * v415;
                  if (v188 <= 1)
                  {
                    result = 1;
                  }

                  else
                  {
                    result = v188;
                  }

                  v239 = 2 * v188;
                  do
                  {
                    v240 = 0;
                    v241 = 0;
                    v386 = v237;
                    v242 = v237 * v184;
                    v243 = v391;
                    v244 = v392;
                    do
                    {
                      v245 = 0;
                      v406 = v244;
                      v410 = v241;
                      v246 = v241 * v188;
                      v247 = v244;
                      v402 = v243;
                      do
                      {
                        v432 = v247;
                        v437 = v245;
                        v248 = v245 * v424;
                        v249 = v245 * v424 + v424;
                        v427 = v243;
                        if (v245 * v424 >= v249)
                        {
                          for (i = 0; i != v443; ++i)
                          {
                            for (j = 0; j != v13; ++j)
                            {
                              v255 = 0;
                              v264 = 0;
                              v265 = v240;
                              v266 = result;
                              do
                              {
                                if (v265 < v184 && (v264 + v246 + v242) % v107 < v106)
                                {
                                  ++v255;
                                }

                                ++v264;
                                ++v265;
                                --v266;
                              }

                              while (v266);
                            }
                          }
                        }

                        else
                        {
                          v250 = 0;
                          v251 = v247;
                          do
                          {
                            v252 = 0;
                            v253 = v251;
                            v254 = v243;
                            do
                            {
                              v255 = 0;
                              v256 = 0;
                              v257 = v253;
                              v258 = v254;
                              do
                              {
                                if (v256 + v246 < v184)
                                {
                                  v259 = v258;
                                  v260 = v257;
                                  v261 = v248;
                                  if ((v256 + v246 + v242) % v107 < v106)
                                  {
                                    do
                                    {
                                      if (v261 < v85)
                                      {
                                        *v260 = *v259;
                                      }

                                      ++v261;
                                      v260 += v13 * v443;
                                      v259 = (v259 + v239);
                                    }

                                    while (v261 < v249);
                                    v257 += v236;
                                    ++v255;
                                  }
                                }

                                ++v256;
                                ++v258;
                              }

                              while (v256 != result);
                              ++v252;
                              v254 += v235;
                              ++v253;
                            }

                            while (v252 != v13);
                            ++v250;
                            v243 += 2 * v442;
                            v251 += v13;
                          }

                          while (v250 != v443);
                        }

                        v245 = v437 + 1;
                        v243 = v427 + 2 * v422;
                        v247 = v432 + 2 * v419;
                      }

                      while (v437 + 1 < v193 / v424);
                      v244 = v406 + 2 * v255 * v236;
                      v241 = v410 + 1;
                      v188 = v400;
                      v243 = v402 + 2 * v394;
                      v240 += v400;
                    }

                    while (v410 + 1 < v397);
                    v237 = v386 + 1;
                    v391 += 2 * v376;
                    v392 += 2 * v384;
                  }

                  while (v386 + 1 != v389);
                }
              }

              else if (v188 <= v415 && v13 && v443 && v424 <= v193)
              {
                v348 = 0;
                v349 = v193 * v234;
                v404 = v349 * v188;
                v388 = v349 * v415;
                if (v424 <= 1)
                {
                  v350 = 1;
                }

                else
                {
                  v350 = v424;
                }

                if (v188 <= 1)
                {
                  result = 1;
                }

                else
                {
                  result = v188;
                }

                v351 = 2 * v188;
                do
                {
                  v352 = 0;
                  v395 = v348;
                  v353 = v348 * v184;
                  v355 = v391;
                  v354 = v392;
                  do
                  {
                    v356 = 0;
                    v357 = 0;
                    v412 = v354;
                    v417 = v352;
                    v358 = v352 * v188;
                    v408 = v355;
                    do
                    {
                      v434 = v354;
                      v439 = v357;
                      v359 = 0;
                      v429 = v355;
                      do
                      {
                        v360 = 0;
                        v361 = v354;
                        v362 = v355;
                        do
                        {
                          v363 = 0;
                          v364 = 0;
                          v365 = v361;
                          v366 = v362;
                          do
                          {
                            if (v364 + v358 < v184)
                            {
                              v367 = v366;
                              v368 = v356;
                              v369 = v350;
                              v370 = v365;
                              if ((v364 + v358 + v353) % v107 < v106)
                              {
                                do
                                {
                                  if (v368 < v85)
                                  {
                                    *v370++ = *v367;
                                  }

                                  ++v368;
                                  v367 = (v367 + v351);
                                  --v369;
                                }

                                while (v369);
                                v365 += v236;
                                ++v363;
                              }
                            }

                            ++v364;
                            ++v366;
                          }

                          while (v364 != result);
                          ++v360;
                          v362 += v235;
                          v361 += v85;
                        }

                        while (v360 != v13);
                        ++v359;
                        v355 += 2 * v442;
                        v354 += 2 * v85 * v13;
                      }

                      while (v359 != v443);
                      v357 = v439 + 1;
                      v355 = v429 + 2 * v422;
                      v354 = v434 + 2 * v424;
                      v356 += v424;
                    }

                    while (v439 + 1 < v193 / v424);
                    v354 = v412 + 2 * v363 * v236;
                    v352 = v417 + 1;
                    v355 = v408 + 2 * v404;
                    v188 = v400;
                  }

                  while (v417 + 1 < v397);
                  v348 = v395 + 1;
                  v391 += 2 * v388;
                  v392 += 2 * v384;
                }

                while (v395 + 1 != v389);
              }
            }

            if (v378)
            {
              result = memcpy(__dst, v378, 4 * v389 * v184);
              v330 = v380;
            }

            else
            {
              v330 = v380;
              if (v375)
              {
                result = sub_239CE31B4(__dst, v375, &v444);
                v330 = v380;
              }
            }

            if (v330)
            {
              return sub_239CE3780(v381, v330, &v444);
            }

            return result;
          }

LABEL_178:
          result = objc_msgSend_bytes(v185, v194, v195, v196, v197, v198, v199, v200);
          goto LABEL_186;
        }
      }
    }

    v375 = objc_msgSend_contents(v201, v194, v195, v196, v197, v198, v199, v200);
    v202 = a6;
    if (!a6)
    {
      goto LABEL_184;
    }

    goto LABEL_177;
  }

  v377 = v10;
  v379 = v36;
  if (v52 < 2)
  {
    v90 = v36;
    v88 = v36;
    v91 = v36 / v44;
    v92 = a7;
    if (v60 != 1)
    {
      goto LABEL_11;
    }

LABEL_31:
    v413 = (v91 + 7) & 0xFFFFFFFFFFFFFFF8;
    v95 = 8;
    v100 = 1;
    goto LABEL_36;
  }

  v87 = v36 / (v52 * v52);
  if (v44 == 1 || (v88 = v36, v89 = v36, v90 = v36, (v87 & 3) == 0))
  {
    v88 = (v87 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v89 = v88 * v52 * v52;
    v90 = v36 / (v52 * v52);
  }

  v91 = v89 / v44;
  v92 = a7;
  if (v60 == 1)
  {
    goto LABEL_31;
  }

LABEL_11:
  if (v60)
  {
    if (v60 >= 4)
    {
      v95 = 4;
    }

    else
    {
      v95 = v60;
    }

    v413 = ((v85 + 3) & 0xFFFFFFFFFFFFFFFCLL) * v60;
    v100 = (2 * v85 - 1) / v85 * v85;
LABEL_36:
    v423 = v85;
    v393 = objc_msgSend_contents(a4, v78, v79, v80, v81, v82, v83, v84);
    v102 = a5;
    if (!a5)
    {
      goto LABEL_21;
    }

    goto LABEL_37;
  }

  v93 = v85 < 5;
  v94 = v86 == 1;
  if (v94 && v91 < 5)
  {
    v95 = 4;
  }

  else
  {
    v95 = v77;
  }

  v96 = !v94 || !v93;
  if (v94 && v93)
  {
    v97 = 4;
  }

  else
  {
    v97 = 8;
  }

  v413 = (v91 + v95 - 1) / v95 * v95;
  v423 = v97;
  v98 = v85 + v97;
  v99 = -8;
  if (!v96)
  {
    v99 = -4;
  }

  v100 = (v98 - 1) & v99;
  v393 = objc_msgSend_contents(a4, v78, v79, v80, v81, v82, v83, v84);
  v102 = a5;
  if (!a5)
  {
LABEL_21:
    v371 = 0;
    v103 = a6;
    if (!a6)
    {
      goto LABEL_22;
    }

LABEL_38:
    v374 = objc_msgSend_contents(v103, v101, v70, v71, v72, v73, v74, v75, v371);
    if (!v92)
    {
      goto LABEL_23;
    }

LABEL_39:
    __src = objc_msgSend_bytes(v92, v101, v70, v71, v72, v73, v74, v75, v371);
    goto LABEL_40;
  }

LABEL_37:
  v371 = objc_msgSend_contents(v102, v101, v70, v71, v72, v73, v74, v75);
  v103 = a6;
  if (a6)
  {
    goto LABEL_38;
  }

LABEL_22:
  v374 = 0;
  if (v92)
  {
    goto LABEL_39;
  }

LABEL_23:
  __src = 0;
LABEL_40:
  v108 = v423;
  v444 = v423;
  v445 = v85;
  v446 = v100;
  v447 = v95;
  v448 = v91;
  v449 = v413;
  v450 = v389;
  v451 = v13;
  v452 = v443;
  v453 = v90;
  v454 = v88;
  v455 = v52;
  v456 = v60;
  v457 = 0;
  v458 = v418;
  if (v60)
  {
    if (v60 == 1)
    {
      v109 = (v85 + 7) & 0xFFFFFFFFFFFFFFF8;
      if (v109)
      {
        v110 = v443 * v13;
        if (v443 * v13)
        {
          v111 = 0;
          v112 = 8 * v110;
          v75 = v392;
          v113 = v392 + v13 * v443 * ((v109 - 1) & 0xFFFFFFFFFFFFFFF9);
          v114 = v110 & 0xF;
          if ((v110 & 0xF) == 0)
          {
            v114 = 16;
          }

          v115 = v110 - v114;
          v116 = v392 + 2 * v110;
          v117 = v392 + 3 * v110;
          v118 = v392 + 4 * v110;
          v70 = v392 + 5 * v110;
          v71 = v392 + 6 * v110;
          v72 = v392 + 7 * v110;
          v73 = (v392 + v110);
          v74 = 5;
          while (v111 >= v85)
          {
            v119 = v393 + v112;
LABEL_48:
            v393 = v119;
            v111 += 8;
            v75 += v112;
            v116 += v112;
            v117 += v112;
            v118 += v112;
            v70 += v112;
            v71 += v112;
            v72 += v112;
            v73 += v112;
            if (v111 >= v109)
            {
              goto LABEL_308;
            }
          }

          v119 = v393;
          if ((v111 | 1) < v85)
          {
            v120 = 0;
            v121 = v111 | 3;
            v122 = v111 | 4;
            v123 = v111 | 5;
            v124 = v111 | 6;
            v125 = v111 | 7;
            while (1)
            {
              *(v75 + v120) = *v119;
              v73[v120] = *(v119 + 1);
              if ((v111 | 2) < v85)
              {
                *(v116 + v120) = *(v119 + 2);
                if (v121 >= v85)
                {
LABEL_55:
                  if (v122 >= v85)
                  {
                    goto LABEL_56;
                  }

                  goto LABEL_62;
                }
              }

              else if (v121 >= v85)
              {
                goto LABEL_55;
              }

              *(v117 + v120) = *(v119 + 3);
              if (v122 >= v85)
              {
LABEL_56:
                if (v123 >= v85)
                {
                  goto LABEL_57;
                }

                goto LABEL_63;
              }

LABEL_62:
              *(v118 + v120) = *(v119 + 4);
              if (v123 >= v85)
              {
LABEL_57:
                if (v124 >= v85)
                {
                  goto LABEL_58;
                }

                goto LABEL_64;
              }

LABEL_63:
              *(v70 + v120) = *(v119 + 5);
              if (v124 >= v85)
              {
LABEL_58:
                if (v125 < v85)
                {
                  goto LABEL_65;
                }

                goto LABEL_52;
              }

LABEL_64:
              *(v71 + v120) = *(v119 + 6);
              if (v125 < v85)
              {
LABEL_65:
                *(v72 + v120) = *(v119 + 7);
              }

LABEL_52:
              v119 += 8;
              if (v110 == ++v120)
              {
                goto LABEL_48;
              }
            }
          }

          if (v110 > 0x10)
          {
            v126 = 0;
            v127 = v393 >= v113 || v392 >= v393 + 8 * v110 - 7;
            if (v127 && (v112 & 0x8000000000000000) == 0)
            {
              v128 = 0;
              v129 = (v75 + v115);
              do
              {
                v461 = *(v119 + 96);
                v463 = *(v119 + 64);
                v464 = *(v119 + 32);
                v466 = *v119;
                v119 += 128;
                v461.val[0] = vqtbl2q_s8(v461, xmmword_239D7E2A0);
                v461.val[1] = vqtbl2q_s8(v463, xmmword_239D7E2B0);
                v461.val[1].i32[3] = v461.val[0].i32[3];
                v463.val[0].i32[0] = vqtbl2q_s8(v466, xmmword_239D7E2D0).u32[0];
                v463.val[0].i32[1] = vqtbl2q_s8(v464, xmmword_239D7E2C0).i32[1];
                v463.val[0].i64[1] = v461.val[1].i64[1];
                *(v75 + v128) = v463.val[0];
                v128 += 16;
              }

              while (v115 != v128);
              v126 = v115;
              v119 = v393 + 8 * v115;
              goto LABEL_78;
            }
          }

          else
          {
            v126 = 0;
          }

          v129 = v75;
LABEL_78:
          v130 = v110 - v126;
          do
          {
            v131 = *v119;
            v119 += 8;
            *v129++ = v131;
            --v130;
          }

          while (v130);
          goto LABEL_48;
        }
      }
    }

    else
    {
      v158 = (v85 + 3) & 0xFFFFFFFFFFFFFFFCLL;
      if (v158 && v95 <= v60)
      {
        v159 = v443 * v13;
        v160 = v95 <= 1 ? 1 : v95;
        if (v159)
        {
          v161 = 0;
          v162 = v95 * v159;
          v163 = v60 * 4 * v159;
          v164 = v392 + v60 * v159;
          v165 = v392 + 2 * v60 * v159;
          v166 = v392 + 3 * v60 * v159;
          v167 = v60 / v95;
          do
          {
            if (v161 >= v85)
            {
              v175 = 0;
              v168 = v393;
              do
              {
                v168 += v160 * 4 * v159;
                ++v175;
              }

              while (v175 < v167);
            }

            else
            {
              v168 = v393;
              if ((v161 | 1) >= v85)
              {
                v176 = 0;
                v70 = v392;
                do
                {
                  v71 = 0;
                  v72 = v70;
                  do
                  {
                    v73 = v160;
                    v74 = v72;
                    do
                    {
                      v177 = *v168;
                      v168 += 4;
                      v75 = v177;
                      *v74 = v177;
                      v74 += v159;
                      --v73;
                    }

                    while (v73);
                    ++v71;
                    ++v72;
                  }

                  while (v71 != v159);
                  ++v176;
                  v70 += v162;
                }

                while (v176 < v167);
              }

              else if ((v161 | 2) >= v85)
              {
                v178 = 0;
                v70 = v164;
                v71 = v392;
                do
                {
                  v72 = 0;
                  v73 = v70;
                  v74 = v71;
                  do
                  {
                    v75 = 0;
                    v179 = v160;
                    do
                    {
                      *(v74 + v75) = *v168;
                      v73[v75] = v168[1];
                      v168 += 4;
                      v75 += v159;
                      --v179;
                    }

                    while (v179);
                    ++v72;
                    ++v74;
                    ++v73;
                  }

                  while (v72 != v159);
                  ++v178;
                  v71 += v162;
                  v70 += v162;
                }

                while (v178 < v167);
              }

              else if ((v161 | 3) >= v85)
              {
                v180 = 0;
                v70 = v164;
                v71 = v165;
                v72 = v392;
                do
                {
                  v73 = 0;
                  v74 = v70;
                  v75 = v71;
                  v181 = v72;
                  do
                  {
                    v182 = 0;
                    v183 = v160;
                    do
                    {
                      *(v181 + v182) = *v168;
                      *(v74 + v182) = v168[1];
                      *(v75 + v182) = v168[2];
                      v168 += 4;
                      v182 += v159;
                      --v183;
                    }

                    while (v183);
                    ++v73;
                    ++v181;
                    ++v75;
                    ++v74;
                  }

                  while (v73 != v159);
                  ++v180;
                  v72 += v162;
                  v71 += v162;
                  v70 += v162;
                }

                while (v180 < v167);
              }

              else
              {
                v169 = 0;
                v70 = v164;
                v71 = v165;
                v72 = v166;
                v73 = v392;
                do
                {
                  v74 = 0;
                  v75 = v70;
                  v170 = v71;
                  v171 = v72;
                  v172 = v73;
                  do
                  {
                    v173 = 0;
                    v174 = v160;
                    do
                    {
                      v172[v173] = *v168;
                      *(v75 + v173) = v168[1];
                      *(v170 + v173) = v168[2];
                      *(v171 + v173) = v168[3];
                      v168 += 4;
                      v173 += v159;
                      --v174;
                    }

                    while (v174);
                    ++v74;
                    ++v172;
                    ++v171;
                    ++v170;
                    ++v75;
                  }

                  while (v74 != v159);
                  ++v169;
                  v73 += v162;
                  v72 += v162;
                  v71 += v162;
                  v70 += v162;
                }

                while (v169 < v167);
              }
            }

            v161 += 4;
            v392 += v163;
            v393 = v168;
            v164 += v163;
            v165 += v163;
            v166 += v163;
          }

          while (v161 < v158);
        }
      }
    }
  }

  else
  {
    v132 = v443 * v13;
    v133 = v423 * v95;
    v421 = v423 * v95 * v443 * v13;
    v134 = v85 * v443 * v13;
    v441 = v423 * v95 * v13;
    v383 = v91 * v134;
    v399 = v413 / v95;
    if (v418)
    {
      if (v95 <= v413 && v13 && v443 && v423 <= v100)
      {
        v135 = 0;
        v396 = v100 * v132 * v95;
        v372 = v100 * v132 * v413;
        if (v95 <= 1)
        {
          v70 = 1;
        }

        else
        {
          v70 = v95;
        }

        v414 = v100 / v423;
        do
        {
          v72 = 0;
          v136 = 0;
          v385 = v135;
          v74 = v135 * v91;
          v137 = v392;
          v138 = v393;
          do
          {
            v139 = 0;
            v405 = v137;
            v409 = v136;
            v140 = v136 * v95;
            v141 = v137;
            v401 = v138;
            do
            {
              v431 = v141;
              v436 = v139;
              v142 = v139 * v108;
              v143 = v139 * v108 + v108;
              v426 = v138;
              if (v139 * v108 >= v143)
              {
                for (k = 0; k != v443; ++k)
                {
                  for (m = 0; m != v13; ++m)
                  {
                    v148 = 0;
                    v155 = 0;
                    v156 = v72;
                    v157 = v70;
                    do
                    {
                      if (v156 < v91 && (v155 + v140 + v74) % v88 < v90)
                      {
                        ++v148;
                      }

                      ++v155;
                      ++v156;
                      --v157;
                    }

                    while (v157);
                  }
                }
              }

              else
              {
                v144 = 0;
                v145 = v141;
                do
                {
                  v146 = 0;
                  v147 = v145;
                  v71 = v138;
                  do
                  {
                    v148 = 0;
                    v149 = 0;
                    v75 = v147;
                    v73 = v71;
                    do
                    {
                      if (v149 + v140 < v91)
                      {
                        v150 = v142;
                        v151 = v75;
                        v152 = v73;
                        if ((v149 + v140 + v74) % v88 < v90)
                        {
                          do
                          {
                            if (v150 < v85)
                            {
                              *v151 = *v152;
                            }

                            ++v150;
                            v152 += v95;
                            v151 += v132;
                          }

                          while (v150 < v143);
                          v75 += v134;
                          ++v148;
                        }
                      }

                      ++v149;
                      ++v73;
                    }

                    while (v149 != v70);
                    ++v146;
                    v71 += v133;
                    ++v147;
                  }

                  while (v146 != v13);
                  ++v144;
                  v138 += v441;
                  v145 += v13;
                }

                while (v144 != v443);
              }

              v139 = v436 + 1;
              v138 = v426 + v421;
              v141 = v431 + v423 * v132;
              v108 = v423;
            }

            while (v436 + 1 < v414);
            v137 = v405 + v148 * v134;
            v136 = v409 + 1;
            v138 = v401 + v396;
            v72 += v95;
          }

          while (v409 + 1 < v399);
          v135 = v385 + 1;
          v393 += v372;
          v392 += v383;
        }

        while (v385 + 1 != v389);
      }
    }

    else if (v95 <= v413 && v13 && v443 && v423 <= v100)
    {
      v331 = 0;
      v403 = v100 * v132 * v95;
      v387 = v100 * v132 * v413;
      if (v423 <= 1)
      {
        v75 = 1;
      }

      else
      {
        v75 = v423;
      }

      if (v95 <= 1)
      {
        v332 = 1;
      }

      else
      {
        v332 = v95;
      }

      v420 = v100 / v423;
      do
      {
        v333 = 0;
        v398 = v331;
        v71 = v331 * v91;
        v335 = v392;
        v334 = v393;
        do
        {
          v336 = 0;
          v337 = 0;
          v411 = v335;
          v416 = v333;
          v338 = v333 * v95;
          v407 = v334;
          v339 = v334;
          do
          {
            v433 = v335;
            v438 = v337;
            v340 = 0;
            v428 = v339;
            do
            {
              v341 = 0;
              v70 = v335;
              v342 = v339;
              do
              {
                v343 = 0;
                v344 = 0;
                v72 = v70;
                v345 = v342;
                do
                {
                  if (v344 + v338 < v91)
                  {
                    v74 = v336;
                    v346 = v75;
                    v347 = v72;
                    v73 = v345;
                    if ((v344 + v338 + v71) % v88 < v90)
                    {
                      do
                      {
                        if (v74 < v85)
                        {
                          *v347++ = *v73;
                        }

                        v73 += v95;
                        ++v74;
                        --v346;
                      }

                      while (v346);
                      v72 += v134;
                      ++v343;
                    }
                  }

                  ++v344;
                  ++v345;
                }

                while (v344 != v332);
                ++v341;
                v342 += v133;
                v70 += v85;
              }

              while (v341 != v13);
              ++v340;
              v339 += v441;
              v335 += v85 * v13;
            }

            while (v340 != v443);
            v337 = v438 + 1;
            v339 = v428 + v421;
            v335 = v433 + v423;
            v336 += v423;
          }

          while (v438 + 1 < v420);
          v335 = v411 + v343 * v134;
          v333 = v416 + 1;
          v334 = v407 + v403;
        }

        while (v416 + 1 < v399);
        v331 = v398 + 1;
        v393 += v387;
        v392 += v383;
      }

      while (v398 + 1 != v389);
    }
  }

LABEL_308:
  if (__src)
  {
    memcpy(__dst, __src, 4 * v389 * v91);
    v10 = v377;
    v36 = v379;
    v104 = a8;
    v12 = a9;
    v69 = v374;
  }

  else
  {
    v10 = v377;
    v36 = v379;
    v104 = a8;
    v12 = a9;
    v69 = v374;
    if (v371)
    {
      sub_239CE31B4(__dst, v371, &v444);
      v69 = v374;
    }
  }

  if (v69)
  {
    sub_239CE3780(v381, v69, &v444);
  }

LABEL_314:
  if (v12 < 2)
  {
    v329 = *(v10 + 4);
    v327 = objc_msgSend_contents(v104, v69, v70, v71, v72, v73, v74, v75);
    v328 = 8 * v36;
    v326 = v329;
  }

  else
  {
    objc_msgSend_contents(v104, v69, v70, v71, v72, v73, v74, v75);
    result = MPSConvertHalfToFloat();
    if (v12 != 3)
    {
      return result;
    }

    v325 = (objc_msgSend_contents(v104, v318, v319, v320, v321, v322, v323, v324) + 512);
    memcpy(**(v10 + 5), v325, 4 * v36);
    v326 = *(*(v10 + 5) + 8);
    v327 = &v325[4 * v36];
    v328 = 4 * v36;
  }

  return memcpy(v326, v327, v328);
}