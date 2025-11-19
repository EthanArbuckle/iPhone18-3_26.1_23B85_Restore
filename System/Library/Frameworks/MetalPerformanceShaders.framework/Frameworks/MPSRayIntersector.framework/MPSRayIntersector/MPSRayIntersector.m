uint64_t sub_239DE2F08(int a1)
{
  v1 = 4;
  if (a1 != 32)
  {
    v1 = 1;
  }

  if (a1 == 16)
  {
    return 2;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_239DE30C0(uint64_t a1)
{
  v1 = *(a1 + 84);
  if (v1 == 2)
  {
    return 64;
  }

  if (v1 == 4)
  {
    return 128;
  }

  v3 = MTLReportFailureTypeEnabled();
  result = 0;
  if (v3)
  {
    MTLReportFailure();
    return 0;
  }

  return result;
}

void sub_239DE4A84(uint64_t a1)
{
  v472 = *MEMORY[0x277D85DE8];
  context = objc_autoreleasePoolPush();
  kdebug_trace();
  v439 = a1;
  if ((*(*(a1 + 32) + *MEMORY[0x277CD7378]) & 1) == 0)
  {
    objc_msgSend_validate(*(a1 + 40), v2, v3, v4, v5);
    if (!*(a1 + 48))
    {
      sub_239E20548();
    }
  }

  v6 = *(a1 + 32);
  if (*(v6 + 160))
  {
    if (*(v6 + 168))
    {
      sub_239E18C24(*(v6 + 168));
      *(*(a1 + 32) + 168) = 0;
      v6 = *(a1 + 32);
    }

    v7 = objc_msgSend_group(v6, v2, v3, v4, v5);
    v12 = objc_msgSend_bvhGroup(v7, v8, v9, v10, v11);
    v17 = objc_msgSend_commandBuffer(*(v12 + 24), v13, v14, v15, v16);
    v22 = objc_msgSend_group(*(a1 + 32), v18, v19, v20, v21);
    v27 = *(objc_msgSend_bvhGroup(v22, v23, v24, v25, v26) + 80);
    v32 = objc_msgSend_count(*(*(a1 + 32) + 152), v28, v29, v30, v31);
    v37 = objc_msgSend_encodedLength(*(*(a1 + 32) + 160), v33, v34, v35, v36);
    *(*(a1 + 32) + 168) = sub_239E19178(v27, v37 * v32, v17);
    objc_msgSend_commit(v17, v38, v39, v40, v41);
    v42 = *(a1 + 32);
    LODWORD(v17) = *(*(v42 + 168) + 32);
    v47 = objc_msgSend_encodedLength(*(v42 + 160), v43, v44, v45, v46);
    v6 = *(a1 + 32);
    v437 = v17 / v47;
  }

  else
  {
    v437 = 0;
  }

  if (*(v6 + 176))
  {
    v48 = *(v6 + 176);
  }

  else
  {
    v48 = 16;
  }

  v49 = *(v6 + 128);
  v50 = 4;
  if (v49 != 32)
  {
    v50 = 1;
  }

  v188 = v49 == 16;
  v51 = 2;
  if (!v188)
  {
    v51 = v50;
  }

  v434 = v51;
  v435 = v48;
  v465 = 0;
  v463 = 0u;
  v464 = 0u;
  v462 = 0u;
  if (*(a1 + 40))
  {
    objc_msgSend_getBVHOptions(*(a1 + 40), v2, v3, v4, v5);
    v6 = *(a1 + 32);
  }

  v52 = *(v6 + 144);
  if (v52)
  {
    if (atomic_fetch_add(v52 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v52 + 8))(v52);
    }

    *(*(a1 + 32) + 144) = 0;
  }

  v53 = objc_msgSend_array(MEMORY[0x277CBEB18], v2, v3, v4, v5);
  v58 = objc_msgSend_array(MEMORY[0x277CBEB18], v54, v55, v56, v57);
  v63 = objc_msgSend_array(MEMORY[0x277CBEB18], v59, v60, v61, v62);
  v67 = objc_msgSend_objectAtIndexedSubscript_(*(*(v439 + 32) + 152), v64, 0, v65, v66);
  if (objc_msgSend_indexBuffer(v67, v68, v69, v70, v71))
  {
    v442 = objc_msgSend_array(MEMORY[0x277CBEB18], v72, v73, v74, v75);
    obj = objc_msgSend_array(MEMORY[0x277CBEB18], v76, v77, v78, v79);
  }

  else
  {
    obj = 0;
    v442 = 0;
  }

  v460 = 0u;
  v461 = 0u;
  v458 = 0u;
  v459 = 0u;
  v80 = *(*(v439 + 32) + 152);
  v85 = objc_msgSend_countByEnumeratingWithState_objects_count_(v80, v72, &v458, v471, 16);
  if (v85)
  {
    v86 = *v459;
    do
    {
      for (i = 0; i != v85; ++i)
      {
        if (*v459 != v86)
        {
          objc_enumerationMutation(v80);
        }

        v88 = *(*(&v458 + 1) + 8 * i);
        v89 = objc_msgSend_vertexBuffer(v88, v81, v82, v83, v84);
        objc_msgSend_addObject_(v53, v90, v89, v91, v92);
        v93 = MEMORY[0x277CCABB0];
        v98 = objc_msgSend_vertexBufferOffset(v88, v94, v95, v96, v97);
        v102 = objc_msgSend_numberWithUnsignedInteger_(v93, v99, v98, v100, v101);
        objc_msgSend_addObject_(v58, v103, v102, v104, v105);
        if (objc_msgSend_indexBuffer(v88, v106, v107, v108, v109))
        {
          v114 = objc_msgSend_indexBuffer(v88, v110, v111, v112, v113);
          objc_msgSend_addObject_(v442, v115, v114, v116, v117);
          v118 = MEMORY[0x277CCABB0];
          v123 = objc_msgSend_indexBufferOffset(v88, v119, v120, v121, v122);
          v127 = objc_msgSend_numberWithUnsignedInteger_(v118, v124, v123, v125, v126);
          objc_msgSend_addObject_(obj, v128, v127, v129, v130);
        }

        v131 = MEMORY[0x277CCABB0];
        v132 = objc_msgSend_polygonCount(v88, v110, v111, v112, v113);
        v136 = objc_msgSend_numberWithUnsignedInteger_(v131, v133, v132, v134, v135);
        objc_msgSend_addObject_(v63, v137, v136, v138, v139);
      }

      v85 = objc_msgSend_countByEnumeratingWithState_objects_count_(v80, v81, &v458, v471, 16);
    }

    while (v85);
  }

  v140 = objc_msgSend_group(*(v439 + 40), v81, v82, v83, v84);
  v438 = objc_msgSend_bvhGroup(v140, v141, v142, v143, v144);
  v145 = DWORD2(v464);
  v150 = objc_msgSend_usage(*(v439 + 32), v146, v147, v148, v149);
  v159 = objc_msgSend_usage(*(v439 + 32), v151, v152, v153, v154);
  v160 = (v150 >> 3) & 1;
  if (!v145)
  {
    LODWORD(v160) = 0;
  }

  if (v160 == 1)
  {
    sub_239E20598();
  }

  if ((v159 & 4) != 0 && v145)
  {
    sub_239E205D4();
  }

  if ((v150 & 8) != 0 && (v159 & 4) != 0)
  {
    sub_239E20610();
  }

  else
  {
    if ((v150 & 8) != 0)
    {
      v161 = 1;
    }

    else
    {
      v161 = v145;
    }

    if (v161 == 2)
    {
      goto LABEL_80;
    }

    if (!v161)
    {
      v432 = *MEMORY[0x277CD7350];
      v430 = *(*(*(v439 + 32) + v432) + 16);
      v431 = objc_msgSend_dedicatedMemorySize(v430, v155, v156, v157, v158);
      if (!v431)
      {
        v431 = objc_msgSend_sharedMemorySize(v430, v162, v163, v164, v165);
      }

      v456 = 0u;
      v457 = 0u;
      v454 = 0u;
      v455 = 0u;
      v166 = *(*(v439 + 32) + 152);
      v171 = objc_msgSend_countByEnumeratingWithState_objects_count_(v166, v162, &v454, v470, 16);
      if (v171)
      {
        v172 = 0;
        v173 = *v455;
        do
        {
          for (j = 0; j != v171; ++j)
          {
            if (*v455 != v173)
            {
              objc_enumerationMutation(v166);
            }

            v172 += objc_msgSend_polygonCount(*(*(&v454 + 1) + 8 * j), v167, v168, v169, v170);
          }

          v171 = objc_msgSend_countByEnumeratingWithState_objects_count_(v166, v167, &v454, v470, 16);
        }

        while (v171);
        v175 = v172 > 0x7FF;
      }

      else
      {
        v175 = 0;
      }

      v176 = *(*(*(v439 + 32) + v432) + 16);
      v452[0] = v462;
      v452[1] = v463;
      v452[2] = v464;
      v453 = v465;
      v177 = sub_239E1A3A0(v176, v452, v53, v442, v63);
      v182 = sub_239E1D32C(*(*(*(v439 + 32) + v432) + 16));
      if (v175)
      {
        v183 = objc_msgSend_name(v430, v178, v179, v180, v181);
        v187 = objc_msgSend_containsString_(v183, v184, @"AMD", v185, v186);
      }

      else
      {
        v187 = 0;
      }

      if (HIDWORD(v464) == 2)
      {
        v188 = (DWORD1(v462) & 0xFFFFFFFE) == 2 && v465 == 0;
        v189 = !v188 || v177 > v431;
        v190 = !v189;
        if (v190 & v182) == 1 && (v187 | (v159 >> 2))
        {
LABEL_80:
          if (HIDWORD(v465) != 1)
          {
            if (!HIDWORD(v465))
            {
              operator new();
            }

            abort();
          }

          operator new();
        }
      }
    }
  }

  if (HIDWORD(v464) == 4)
  {
    operator new();
  }

  if (HIDWORD(v464) == 2)
  {
    operator new();
  }

  if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v196 = objc_msgSend_group(*(v439 + 40), v192, v193, v194, v195);
  if (*(*(objc_msgSend_bvhGroup(v196, v197, v198, v199, v200) + 32) + 40))
  {
    operator new();
  }

  *(*(v439 + 32) + 144) = (*(MEMORY[0] + 16))(0, v438, v53, v58, v435, v442, obj, v434, v63, *(*(v439 + 32) + 136), v437);
  (*(MEMORY[0] + 8))(0);
  if (v462 == 1)
  {
    v436 = *(*(*(v439 + 32) + 144) + 104);
    v443 = objc_msgSend_array(MEMORY[0x277CBEB18], v201, v202, v203, v204);
    objc_msgSend_setObject_forKeyedSubscript_(v436, v205, v443, @"User Buffers", v206);
    v450 = 0u;
    v451 = 0u;
    v448 = 0u;
    v449 = 0u;
    obja = *(*(v439 + 32) + 152);
    v208 = 0;
    v213 = objc_msgSend_countByEnumeratingWithState_objects_count_(obja, v207, &v448, v469, 16);
    if (v213)
    {
      v214 = 0;
      v215 = *v449;
      do
      {
        for (k = 0; k != v213; ++k)
        {
          if (*v449 != v215)
          {
            objc_enumerationMutation(obja);
          }

          v217 = *(*(&v448 + 1) + 8 * k);
          v218 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v209, v210, v211, v212);
          objc_msgSend_addObject_(v443, v219, v218, v220, v221);
          v222 = MEMORY[0x277CCABB0];
          v227 = objc_msgSend_vertexBuffer(v217, v223, v224, v225, v226);
          v232 = objc_msgSend_length(v227, v228, v229, v230, v231);
          v237 = objc_msgSend_numberWithDouble_(v222, v233, v234, v235, v236, vcvtd_n_f64_u64(v232, 0x14uLL));
          objc_msgSend_setObject_forKeyedSubscript_(v218, v238, v237, @"Vertex Buffer (mb)", v239);
          v240 = MEMORY[0x277CCABB0];
          v245 = objc_msgSend_indexBuffer(v217, v241, v242, v243, v244);
          v250 = objc_msgSend_length(v245, v246, v247, v248, v249);
          v255 = objc_msgSend_numberWithDouble_(v240, v251, v252, v253, v254, vcvtd_n_f64_u64(v250, 0x14uLL));
          objc_msgSend_setObject_forKeyedSubscript_(v218, v256, v255, @"Index Buffer (mb)", v257);
          v258 = MEMORY[0x277CCABB0];
          v263 = objc_msgSend_maskBuffer(v217, v259, v260, v261, v262);
          v268 = objc_msgSend_length(v263, v264, v265, v266, v267);
          v273 = objc_msgSend_numberWithDouble_(v258, v269, v270, v271, v272, vcvtd_n_f64_u64(v268, 0x14uLL));
          objc_msgSend_setObject_forKeyedSubscript_(v218, v274, v273, @"Mask Buffer (mb)", v275);
          v276 = MEMORY[0x277CCABB0];
          v281 = objc_msgSend_polygonCount(v217, v277, v278, v279, v280);
          v285 = objc_msgSend_numberWithUnsignedInteger_(v276, v282, v281, v283, v284);
          objc_msgSend_setObject_forKeyedSubscript_(v218, v286, v285, @"Polygons", v287);
          v292 = objc_msgSend_vertexBuffer(v217, v288, v289, v290, v291);
          v297 = objc_msgSend_length(v292, v293, v294, v295, v296);
          v302 = objc_msgSend_indexBuffer(v217, v298, v299, v300, v301);
          v307 = objc_msgSend_length(v302, v303, v304, v305, v306);
          v312 = objc_msgSend_maskBuffer(v217, v308, v309, v310, v311);
          v214 += v297 + v307 + objc_msgSend_length(v312, v313, v314, v315, v316);
          v208 += objc_msgSend_polygonCount(v217, v317, v318, v319, v320);
        }

        v213 = objc_msgSend_countByEnumeratingWithState_objects_count_(obja, v209, &v448, v469, 16);
      }

      while (v213);
      v321 = vcvtd_n_f64_u64(v214, 0x14uLL);
    }

    else
    {
      v321 = 0.0;
    }

    v322 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v209, v208, v211, v212);
    objc_msgSend_setObject_forKeyedSubscript_(v436, v323, v322, @"Polygons", v324);
    v467 = @"Total (mb)";
    v468 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v325, v326, v327, v328, v321);
    v330 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v329, &v468, &v467, 1);
    objc_msgSend_addObject_(v443, v331, v330, v332, v333);
    v338 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v334, v335, v336, v337);
    objc_msgSend_setObject_forKeyedSubscript_(v436, v339, v338, @"Internal Buffers", v340);
    v345 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v341, v342, v343, v344, *(*(*(*(v439 + 32) + 144) + 120) + 40) * 0.000000953674316);
    objc_msgSend_setObject_forKeyedSubscript_(v338, v346, v345, @"Polygon Index Buffer (mb)", v347);
    v352 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v348, v349, v350, v351, *(*(*(*(v439 + 32) + 144) + 120) + 40) * 0.000000953674316);
    objc_msgSend_setObject_forKeyedSubscript_(v338, v353, v352, @"Resource Index Buffer (mb)", v354);
    v359 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v355, v356, v357, v358, *(*(*(*(v439 + 32) + 144) + 24) + 40) * 0.000000953674316);
    objc_msgSend_setObject_forKeyedSubscript_(v338, v360, v359, @"Inner Node Buffer (mb)", v361);
    v366 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v362, v363, v364, v365, *(*(*(*(v439 + 32) + 144) + 32) + 40) * 0.000000953674316);
    objc_msgSend_setObject_forKeyedSubscript_(v338, v367, v366, @"Leaf Node Buffer (mb)", v368);
    v373 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v369, v370, v371, v372, *(*(*(*(v439 + 32) + 144) + 40) + 40) * 0.000000953674316);
    objc_msgSend_setObject_forKeyedSubscript_(v338, v374, v373, @"Page Table 0 Buffer (mb)", v375);
    v380 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v376, v377, v378, v379, *(*(*(*(v439 + 32) + 144) + 48) + 40) * 0.000000953674316);
    objc_msgSend_setObject_forKeyedSubscript_(v338, v381, v380, @"Page Table 1 Buffer (mb)", v382);
    v387 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v383, v384, v385, v386, *(*(*(*(v439 + 32) + 144) + 56) + 40) * 0.000000953674316);
    objc_msgSend_setObject_forKeyedSubscript_(v338, v388, v387, @"Page Buffer (mb)", v389);
    v446 = 0u;
    v447 = 0u;
    v444 = 0u;
    v445 = 0u;
    v395 = objc_msgSend_countByEnumeratingWithState_objects_count_(v338, v390, &v444, v466, 16);
    if (v395)
    {
      v396 = *v445;
      v397 = 0.0;
      do
      {
        for (m = 0; m != v395; ++m)
        {
          if (*v445 != v396)
          {
            objc_enumerationMutation(v338);
          }

          v399 = objc_msgSend_objectForKeyedSubscript_(v338, v391, *(*(&v444 + 1) + 8 * m), v393, v394);
          objc_msgSend_doubleValue(v399, v400, v401, v402, v403);
          v397 = v397 + v404;
        }

        v395 = objc_msgSend_countByEnumeratingWithState_objects_count_(v338, v391, &v444, v466, 16);
      }

      while (v395);
    }

    else
    {
      v397 = 0.0;
    }

    v405 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v391, v392, v393, v394, v397);
    objc_msgSend_setObject_forKeyedSubscript_(v338, v406, v405, @"Total (mb)", v407);
  }

  v408 = *(*(v439 + 32) + 144);
  v409 = objc_msgSend_group(*(v439 + 40), v201, v202, v203, v204);
  if (v438 != objc_msgSend_bvhGroup(v409, v410, v411, v412, v413))
  {
    operator new();
  }

  v418 = objc_msgSend_group(*(v439 + 40), v414, v415, v416, v417);
  v423 = objc_msgSend_bvhGroup(v418, v419, v420, v421, v422);
  sub_239E00D2C(*(v423 + 24));
  v424 = *(v439 + 32);
  kdebug_trace();
  objc_msgSend_setStatus_(*(v439 + 40), v425, 1, v426, v427);
  v428 = *(v439 + 40);
  (*(*(v439 + 48) + 16))();

  objc_autoreleasePoolPop(context);
  v429 = *MEMORY[0x277D85DE8];
}

uint64_t sub_239DE63AC(uint64_t a1)
{
  v2 = *(a1 + 32);
  add = atomic_fetch_add(v2 + 2, 0xFFFFFFFF);
  if (v2)
  {
    v4 = add == 1;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    (*(*v2 + 8))(v2);
  }

  result = *(a1 + 40);
  if (result)
  {

    return sub_239E18C24(result);
  }

  return result;
}

uint64_t sub_239DE7190(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v8 = a2;
  if ((atomic_load_explicit(&qword_27DF884E8, memory_order_acquire) & 1) == 0)
  {
    sub_239E206E4();
  }

  std::mutex::lock(&stru_27DF884A8);
  if (!qword_27DF884A0)
  {
    operator new();
  }

  v5 = sub_239DE7494(qword_27DF884A0, &v8);
  if (!v5)
  {
    operator new();
  }

  sub_239DE73FC(v5[3], a4);
  std::mutex::unlock(&stru_27DF884A8);
  MPSLibrary::CreateUberShaderKey();
  PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
  MPSLibrary::ReleaseMPSKey();
  return PipelineStateForMPSKey;
}

uint64_t sub_239DE733C(uint64_t a1)
{
  v2 = *(a1 + 32);
  add = atomic_fetch_add(v2 + 2, 0xFFFFFFFF);
  if (v2)
  {
    v4 = add == 1;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    (*(*v2 + 8))(v2);
  }

  result = *(a1 + 40);
  if (result)
  {

    return sub_239E18C24(result);
  }

  return result;
}

uint64_t sub_239DE73FC(void *a1, __int128 *a2)
{
  v4 = a2[1];
  v9 = *a2;
  v10 = v4;
  v11 = *(a2 + 4);
  v5 = sub_239DE7A70(a1, &v9);
  if (v5)
  {
    return v5[7];
  }

  v6 = a1[3];
  v7 = a2[1];
  v9 = *a2;
  v10 = v7;
  v11 = *(a2 + 4);
  v12 = &v9;
  sub_239DE7BA4(a1, &v9)[7] = v6;
  return v6;
}

void *sub_239DE7494(void *a1, void *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = vcnt_s8(v2);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v5;
    if (v5 >= *&v2)
    {
      v7 = v5 % *&v2;
    }
  }

  else
  {
    v7 = v5 & (*&v2 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  result = *v8;
  if (*v8)
  {
    do
    {
      v10 = result[1];
      if (v10 == v5)
      {
        if (result[2] == *a2)
        {
          return result;
        }
      }

      else
      {
        if (v6.u32[0] > 1uLL)
        {
          if (v10 >= *&v2)
          {
            v10 %= *&v2;
          }
        }

        else
        {
          v10 &= *&v2 - 1;
        }

        if (v10 != v7)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

void *sub_239DE7580(void *a1, void *a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != *a2)
  {
    goto LABEL_17;
  }

  return v9;
}

void sub_239DE77E8()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, &unk_284D087E0, MEMORY[0x277D82620]);
}

void sub_239DE781C(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      sub_239DE790C(a1, prime);
    }
  }
}

void sub_239DE790C(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    sub_239DE77E8();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void *sub_239DE7A70(void *a1, char *__s2)
{
  v3 = 0;
  v4 = 1193086;
  do
  {
    v4 = (1540483477 * ((1540483477 * *&__s2[v3]) ^ ((1540483477 * *&__s2[v3]) >> 24))) ^ (1540483477 * v4);
    v3 += 4;
  }

  while (v3 != 40);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = (1540483477 * (v4 ^ (v4 >> 13))) ^ ((1540483477 * (v4 ^ (v4 >> 13))) >> 15);
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = (1540483477 * (v4 ^ (v4 >> 13))) ^ ((1540483477 * (v4 ^ (v4 >> 13))) >> 15);
    if (*&v5 <= v6)
    {
      v9 = v6 % v5.i32[0];
    }
  }

  else
  {
    v9 = (v5.i32[0] - 1) & v6;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  v11 = *v10;
  if (*v10)
  {
    do
    {
      v12 = v11[1];
      if (v12 == v6)
      {
        if (!memcmp(v11 + 2, __s2, 0x28uLL))
        {
          return v11;
        }
      }

      else
      {
        if (v8 > 1)
        {
          if (v12 >= *&v5)
          {
            v12 %= *&v5;
          }
        }

        else
        {
          v12 &= *&v5 - 1;
        }

        if (v12 != v9)
        {
          return 0;
        }
      }

      v11 = *v11;
    }

    while (v11);
  }

  return v11;
}

void *sub_239DE7BA4(void *a1, char *__s2)
{
  v3 = 0;
  v4 = 1193086;
  do
  {
    v4 = (1540483477 * ((1540483477 * *&__s2[v3]) ^ ((1540483477 * *&__s2[v3]) >> 24))) ^ (1540483477 * v4);
    v3 += 4;
  }

  while (v3 != 40);
  v5 = 1540483477 * (v4 ^ (v4 >> 13));
  v6 = v5 ^ (v5 >> 15);
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_20;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v5 ^ (v5 >> 15);
    if (*&v7 <= v6)
    {
      v10 = v6 % v7.i32[0];
    }
  }

  else
  {
    v10 = (v7.i32[0] - 1) & v6;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_20:
    operator new();
  }

  while (1)
  {
    v13 = v12[1];
    if (v13 == v6)
    {
      break;
    }

    if (v9 > 1)
    {
      if (v13 >= *&v7)
      {
        v13 %= *&v7;
      }
    }

    else
    {
      v13 &= *&v7 - 1;
    }

    if (v13 != v10)
    {
      goto LABEL_20;
    }

LABEL_19:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_20;
    }
  }

  if (memcmp(v12 + 2, __s2, 0x28uLL))
  {
    goto LABEL_19;
  }

  return v12;
}

uint64_t sub_239DE7E3C()
{

  return MTLReportFailureTypeEnabled();
}

float *sub_239DE7FD0(int32x2_t a1, int32x2_t a2, int32x2_t a3, double a4, double a5, double a6, int32x2_t a7, int32x4_t a8, uint64_t a9, uint64_t a10, float *a11, int *a12, _DWORD *a13, _DWORD *a14, _DWORD *a15, _DWORD *a16)
{
  v17 = 0;
  v131 = *MEMORY[0x277D85DE8];
  v18 = vdupq_lane_s32(a1, 0);
  v19 = vdupq_lane_s32(a2, 0);
  v20 = vdupq_lane_s32(a3, 0);
  v21 = vdupq_lane_s32(*&a4, 0);
  v22 = vdupq_lane_s32(*&a5, 0);
  v23 = vdupq_lane_s32(*&a6, 0);
  v24 = 1.0 / *&a4;
  v25 = 1.0 / *&a5;
  if (*&a5 < 0.0)
  {
    v26 = 12;
  }

  else
  {
    v26 = 8;
  }

  if (*&a5 < 0.0)
  {
    v27 = 8;
  }

  else
  {
    v27 = 12;
  }

  if (*&a6 < 0.0)
  {
    v28 = 20;
  }

  else
  {
    v28 = 16;
  }

  if (*&a6 < 0.0)
  {
    v29 = 16;
  }

  else
  {
    v29 = 20;
  }

  v30 = vdupq_lane_s32(a7, 0);
  *&v16 = 0;
  v31 = -1;
  v32 = xmmword_239E26D10;
  v33.i64[0] = 0x7F0000007FLL;
  v33.i64[1] = 0x7F0000007FLL;
  v119 = vnegq_f32(v33);
  result = v130;
  v35 = 1.0 / *&a6;
  __asm { FMOV            V15.4S, #1.0 }

LABEL_14:
  if ((a10 & 0x30) != 0)
  {
LABEL_96:
    v80 = a10 & 0xF;
    if ((a10 & 0xF) != 0)
    {
      v120 = v32;
      v81 = v16;
      v82 = (a10 & 0xFFFFFFFFFFFFFFC0) + 80;
      do
      {
        v84 = *(v82 + 16);
        v83 = *(v82 + 32);
        v85 = *(v82 + 48);
        v86 = vsubq_f32(*(v82 - 80), v84);
        v87 = vsubq_f32(*(v82 - 64), v83);
        v88 = vsubq_f32(*(v82 - 48), v85);
        v89 = vsubq_f32(*(v82 - 32), v84);
        v90 = vsubq_f32(*(v82 - 16), v83);
        v91 = vsubq_f32(*v82, v85);
        v92 = vmlaq_f32(vnegq_f32(vmulq_n_f32(v90, *&a6)), v91, v22);
        v93 = vmlaq_f32(vnegq_f32(vmulq_n_f32(v91, *&a4)), v89, v23);
        v94 = vmlaq_f32(vnegq_f32(vmulq_n_f32(v89, *&a5)), v90, v21);
        v95 = vmlaq_f32(vmlaq_f32(vmulq_f32(v87, v93), v92, v86), v94, v88);
        v96 = vceqzq_f32(v95);
        v97 = vdivq_f32(_Q15, v95);
        v98 = vsubq_f32(v18, v84);
        v99 = vsubq_f32(v19, v83);
        v100 = vsubq_f32(v20, v85);
        v101 = vmulq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v99, v93), v92, v98), v94, v100), v97);
        v102 = vmlaq_f32(vnegq_f32(vmulq_f32(v87, v100)), v88, v99);
        v103 = vmlaq_f32(vnegq_f32(vmulq_f32(v98, v88)), v100, v86);
        v104 = vmlaq_f32(vnegq_f32(vmulq_f32(v86, v99)), v87, v98);
        v105 = vmulq_f32(vmlaq_f32(vmlaq_f32(vmulq_n_f32(v103, *&a5), v102, v21), v104, v23), v97);
        v106 = vandq_s8(vbicq_s8(vandq_s8(vcgezq_f32(v101), vcgezq_f32(v105)), v96), vcgeq_f32(_Q15, vaddq_f32(v101, v105)));
        if ((vmaxvq_u32(v106) & 0x80000000) != 0)
        {
          v107 = vmulq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v90, v103), v102, v89), v104, v91), v97);
          v108 = vand_s8(vmovn_s32(vandq_s8(vcgeq_f32(v107, v30), vcgeq_f32(vdupq_lane_s32(*a8.i8, 0), v107))), vmovn_s32(v106));
          v109 = vmovl_s16(v108);
          if ((vmaxvq_u32(v109) & 0x80000000) != 0)
          {
            v110 = *(v82 + 64);
            v111 = *(v82 + 80);
            *(&v81 + 1) = v120.i64[1];
            v112 = vbslq_s8(v109, v107, v119);
            v113 = vminnmq_f32(v112, vrev64q_s32(v112));
            a8 = vandq_s8(vmovl_s16(vand_s8(vmovn_s32(vceqq_f32(vminnmq_f32(v113, vextq_s8(v113, v113, 8uLL)), v112)), v108)), v120);
            v114 = __clz(__rbit32(vaddvq_s32(a8)));
            v125 = v107;
            a8.i32[0] = *(&v125 & 0xFFFFFFFFFFFFFFF3 | (4 * (v114 & 3)));
            v124 = v101;
            LODWORD(v81) = *(&v124 & 0xFFFFFFFFFFFFFFF3 | (4 * (v114 & 3)));
            v123 = v105;
            DWORD1(v81) = *(&v123 & 0xFFFFFFFFFFFFFFF3 | (4 * (v114 & 3)));
            v122 = v110;
            v31 = *(&v122 & 0xFFFFFFFFFFFFFFF3 | (4 * (v114 & 3)));
            v121 = v111;
            v17 = *(&v121 & 0xFFFFFFFFFFFFFFF3 | (4 * (v114 & 3)));
          }
        }

        v82 += 192;
        --v80;
      }

      while (v80);
      v16 = v81;
      v32 = v120;
    }
  }

  else
  {
    v40 = vdupq_lane_s32(*a8.i8, 0);
    while (1)
    {
      v41 = vmaxnmq_f32(vmaxnmq_f32(vmulq_n_f32(vsubq_f32(*(a10 + 32 + 16 * (*&a4 < 0.0)), v18), v24), vmulq_n_f32(vsubq_f32(*(a10 + 32 + 4 * v26), v19), v25)), vmaxnmq_f32(vmulq_n_f32(vsubq_f32(*(a10 + 32 + 4 * v28), v20), v35), v30));
      v42 = *(a10 + 128) & vaddvq_s32(vandq_s8(vcgeq_f32(vminnmq_f32(vminnmq_f32(vmulq_n_f32(vsubq_f32(*(a10 + 32 + 16 * (*&a4 >= 0.0)), v18), v24), vmulq_n_f32(vsubq_f32(*(a10 + 32 + 4 * v27), v19), v25)), vminnmq_f32(vmulq_n_f32(vsubq_f32(*(a10 + 32 + 4 * v29), v20), v35), v40)), v41), v32));
      if (!v42)
      {
        break;
      }

      v43 = __clz(__rbit32(v42));
      v44 = *(a10 + 8 * v43);
      v129 = v41;
      v45 = v42 & ~(1 << v43);
      if (v45)
      {
        v46 = *(&v129 & 0xFFFFFFFFFFFFFFF3 | (4 * (v43 & 3)));
        v47 = __clz(__rbit32(v45));
        v48 = (&v128 & 0xFFFFFFFFFFFFFFF3 | (4 * (v47 & 3)));
        v49 = 1 << v47;
        v50 = *(a10 + 8 * v47);
        v128 = v41;
        v51 = *v48;
        v52 = v45 & ~v49;
        if (v52)
        {
          v53 = __clz(__rbit32(v52));
          v54 = (&v127 & 0xFFFFFFFFFFFFFFF3 | (4 * (v53 & 3)));
          v55 = 1 << v53;
          v56 = *(a10 + 8 * v53);
          v127 = v41;
          v57 = *v54;
          v58 = v52 & ~v55;
          if (v58)
          {
            v59 = __clz(__rbit32(v58));
            v126 = v41;
            v60 = *(&v126 & 0xFFFFFFFFFFFFFFF3 | (4 * (v59 & 3)));
            v61 = *(a10 + 8 * v59);
            if (v57 < v46)
            {
              v62 = v56;
            }

            else
            {
              v62 = v44;
            }

            if (v57 < v46)
            {
              v63 = v57;
            }

            else
            {
              v63 = v46;
            }

            if (v57 >= v46)
            {
              v44 = v56;
              v46 = v57;
            }

            _NF = v60 < v51;
            if (v60 < v51)
            {
              v65 = v61;
            }

            else
            {
              v65 = v50;
            }

            if (v60 < v51)
            {
              v66 = v60;
            }

            else
            {
              v66 = v51;
            }

            if (v60 < v51)
            {
              v60 = v51;
            }

            if (!_NF)
            {
              v50 = v61;
            }

            if (v66 >= v63)
            {
              a10 = v62;
            }

            else
            {
              a10 = v65;
            }

            if (v66 >= v63)
            {
              v67 = v66;
            }

            else
            {
              v65 = v62;
              v67 = v63;
            }

            v68 = v60 < v46;
            if (v60 < v46)
            {
              v69 = v50;
            }

            else
            {
              v69 = v44;
            }

            if (v60 < v46)
            {
              v70 = v60;
            }

            else
            {
              v70 = v46;
            }

            if (v60 < v46)
            {
              v60 = v46;
            }

            if (!v68)
            {
              v44 = v50;
            }

            if (v70 < v67)
            {
              v71 = v69;
            }

            else
            {
              v71 = v65;
            }

            if (v70 < v67)
            {
              v72 = v70;
            }

            else
            {
              v72 = v67;
            }

            if (v70 >= v67)
            {
              v65 = v69;
            }

            *result = v44;
            result[2] = v60;
            if (v70 < v67)
            {
              v73 = v67;
            }

            else
            {
              v73 = v70;
            }

            *(result + 2) = v65;
            result[6] = v73;
            *(result + 4) = v71;
            result[10] = v72;
            result += 12;
          }

          else
          {
            if (v51 < v46)
            {
              v76 = v50;
            }

            else
            {
              v76 = v44;
            }

            if (v51 < v46)
            {
              v77 = v51;
            }

            else
            {
              v77 = v46;
            }

            if (v51 >= v46)
            {
              v44 = v50;
              v46 = v51;
            }

            if (v57 >= v46)
            {
              v78 = v44;
              v79 = v46;
              v44 = v56;
              v46 = *v54;
            }

            else
            {
              v78 = v56;
              v79 = *v54;
            }

            if (v79 >= v77)
            {
              a10 = v76;
            }

            else
            {
              a10 = v78;
            }

            if (v79 >= v77)
            {
              v77 = v79;
            }

            else
            {
              v78 = v76;
            }

            *result = v44;
            result[2] = v46;
            *(result + 2) = v78;
            result[6] = v77;
            result += 8;
          }
        }

        else
        {
          if (v51 >= v46)
          {
            v74 = v50;
          }

          else
          {
            v74 = v44;
          }

          if (v51 >= v46)
          {
            v75 = v51;
          }

          else
          {
            v75 = v46;
          }

          if (v51 >= v46)
          {
            a10 = v44;
          }

          else
          {
            a10 = v50;
          }

          *result = v74;
          result[2] = v75;
          result += 4;
        }
      }

      else
      {
        a10 = v44;
      }

      if ((a10 & 0x30) != 0)
      {
        goto LABEL_96;
      }
    }
  }

  v115 = result;
  while (v115 != v130)
  {
    result = v115 - 4;
    v116 = *(v115 - 2);
    v115 -= 4;
    if (v116 <= *a8.i32)
    {
      a10 = *result;
      goto LABEL_14;
    }
  }

  v117 = -1.0;
  if (v31 >= 0)
  {
    v117 = *a8.i32;
  }

  *a11 = v117;
  *a12 = v31;
  *a13 = v17;
  *a14 = v16;
  *a15 = DWORD1(v16);
  *a16 = 0;
  v118 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_239DE8554(int32x2_t a1, int32x2_t a2, int32x2_t a3, double a4, double a5, double a6, int32x2_t a7, double a8, uint64_t a9, unint64_t a10, _DWORD *a11, _DWORD *a12, _DWORD *a13, _DWORD *a14, _DWORD *a15, _DWORD *a16)
{
  v16 = vdupq_lane_s32(a1, 0);
  v17 = vdupq_lane_s32(a2, 0);
  v18 = vdupq_lane_s32(a3, 0);
  v19 = vdupq_lane_s32(*&a4, 0);
  v20 = vdupq_lane_s32(*&a5, 0);
  v76 = *MEMORY[0x277D85DE8];
  v21 = vdupq_lane_s32(*&a6, 0);
  v22 = 1.0 / *&a4;
  v23 = 1.0 / *&a5;
  v24 = vdupq_lane_s32(a7, 0);
  v25 = vdupq_lane_s32(*&a8, 0);
  if (*&a5 < 0.0)
  {
    v26 = 12;
  }

  else
  {
    v26 = 8;
  }

  if (*&a5 < 0.0)
  {
    v27 = 8;
  }

  else
  {
    v27 = 12;
  }

  if (*&a6 < 0.0)
  {
    v28 = 20;
  }

  else
  {
    v28 = 16;
  }

  if (*&a6 < 0.0)
  {
    v29 = 16;
  }

  else
  {
    v29 = 20;
  }

  __asm { FMOV            V23.4S, #1.0 }

  v35 = v75;
  v36 = 1.0 / *&a6;
LABEL_14:
  while (1)
  {
    result = a10;
    if ((a10 & 0x30) != 0)
    {
      break;
    }

    v64 = vmaxnmq_f32(vmaxnmq_f32(vmulq_n_f32(vsubq_f32(*(a10 + 32 + 16 * (*&a4 < 0.0)), v16), v22), vmulq_n_f32(vsubq_f32(*(a10 + 32 + 4 * v26), v17), v23)), vmaxnmq_f32(vmulq_n_f32(vsubq_f32(*(a10 + 32 + 4 * v28), v18), v36), v24));
    v65 = *(a10 + 128) & vaddvq_s32(vandq_s8(vcgeq_f32(vminnmq_f32(vminnmq_f32(vmulq_n_f32(vsubq_f32(*(a10 + 32 + 16 * (*&a4 >= 0.0)), v16), v22), vmulq_n_f32(vsubq_f32(*(a10 + 32 + 4 * v27), v17), v23)), vminnmq_f32(vmulq_n_f32(vsubq_f32(*(a10 + 32 + 4 * v29), v18), v36), v25)), v64), xmmword_239E26D10));
    if (!v65)
    {
      goto LABEL_25;
    }

    v66 = __clz(__rbit32(v65));
    v67 = 1 << v66;
    a10 = *(result + 8 * v66);
    while (1)
    {
      v65 &= ~v67;
      if (!v65)
      {
        break;
      }

      v68 = __clz(__rbit32(v65));
      v69 = *(result + 8 * v68);
      v74 = v64;
      v70 = *(&v74 & 0xFFFFFFFFFFFFFFF3 | (4 * (v68 & 3)));
      v67 = 1 << v68;
      *v35 = v69;
      *(v35 + 2) = v70;
      v35 += 2;
    }
  }

  v38 = a10 & 0xF;
  if ((a10 & 0xF) == 0)
  {
    goto LABEL_25;
  }

  result = (a10 & 0xFFFFFFFFFFFFFFC0) + 64;
  do
  {
    v40 = *(result + 32);
    v39 = *(result + 48);
    v41 = *(result + 64);
    v42 = vsubq_f32(*(result - 64), v40);
    v43 = vsubq_f32(*(result - 48), v39);
    v44 = vsubq_f32(*(result - 32), v41);
    v45 = vsubq_f32(*(result - 16), v40);
    v46 = vsubq_f32(*result, v39);
    v47 = vsubq_f32(*(result + 16), v41);
    v48 = vmlaq_f32(vnegq_f32(vmulq_n_f32(v46, *&a6)), v47, v20);
    v49 = vmlaq_f32(vnegq_f32(vmulq_n_f32(v47, *&a4)), v45, v21);
    v50 = vmlaq_f32(vnegq_f32(vmulq_n_f32(v45, *&a5)), v46, v19);
    v51 = vmlaq_f32(vmlaq_f32(vmulq_f32(v43, v49), v48, v42), v50, v44);
    v52 = vceqzq_f32(v51);
    v53 = vdivq_f32(_Q23, v51);
    v54 = vsubq_f32(v16, v40);
    v55 = vsubq_f32(v17, v39);
    v56 = vsubq_f32(v18, v41);
    v57 = vmulq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v55, v49), v48, v54), v50, v56), v53);
    v58 = vmlaq_f32(vnegq_f32(vmulq_f32(v43, v56)), v44, v55);
    v59 = vmlaq_f32(vnegq_f32(vmulq_f32(v54, v44)), v56, v42);
    v60 = vmlaq_f32(vnegq_f32(vmulq_f32(v42, v55)), v43, v54);
    v61 = vmulq_f32(vmlaq_f32(vmlaq_f32(vmulq_n_f32(v59, *&a5), v58, v19), v60, v21), v53);
    v62 = vandq_s8(vbicq_s8(vandq_s8(vcgezq_f32(v57), vcgezq_f32(v61)), v52), vcgeq_f32(_Q23, vaddq_f32(v57, v61)));
    if ((vmaxvq_u32(v62) & 0x80000000) != 0)
    {
      v63 = vmulq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v46, v59), v58, v45), v60, v47), v53);
      if ((vmaxvq_u32(vmovl_s16(vand_s8(vmovn_s32(vandq_s8(vcgeq_f32(v63, v24), vcgeq_f32(v25, v63))), vmovn_s32(v62)))) & 0x80000000) != 0)
      {
        *a11 = 1065353216;
        goto LABEL_30;
      }
    }

    result += 192;
    --v38;
  }

  while (v38);
LABEL_25:
  while (v35 != v75)
  {
    v71 = v35 - 2;
    v72 = *(v35 - 2);
    v35 -= 2;
    if (v72 <= *&a8)
    {
      a10 = *v71;
      v35 = v71;
      goto LABEL_14;
    }
  }

  *a11 = -1082130432;
  *a12 = -1;
  *a13 = 0;
  *a14 = 0;
  *a15 = 0;
  *a16 = 0;
LABEL_30:
  v73 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_239DE88C4(double a1, int32x2_t a2, int32x2_t a3, double a4, double a5, double a6, int32x2_t a7, double a8, uint64_t a9, unint64_t a10, float *a11, int *a12, _DWORD *a13, _DWORD *a14, _DWORD *a15, _DWORD *a16)
{
  v18 = 0;
  v156 = 0;
  v163 = 0;
  v150 = *&a1;
  v20 = vdupq_lane_s32(*&a1, 0);
  v21 = vdupq_lane_s32(a2, 0);
  v22 = vdupq_lane_s32(a3, 0);
  v160 = v21;
  v23 = vdupq_lane_s32(*&a4, 0);
  v157 = v23;
  v158 = v20;
  v173 = *MEMORY[0x277D85DE8];
  v24 = vdupq_lane_s32(*&a5, 0);
  v25 = vdupq_lane_s32(*&a6, 0);
  v151 = *&a4;
  *&a1 = 1.0 / *&a4;
  v159 = v22;
  v26 = vdupq_lane_s32(*&a1, 0);
  *&a1 = 1.0 / *&a5;
  v27 = vdupq_lane_s32(*&a1, 0);
  *&a1 = 1.0 / *&a6;
  v28 = vdupq_lane_s32(*&a1, 0);
  v19 = *&a4 < 0.0;
  v29 = 4 * v19;
  v30 = 4 * (*&a4 >= 0.0);
  if (*&a5 < 0.0)
  {
    v31 = 12;
  }

  else
  {
    v31 = 8;
  }

  if (*&a5 < 0.0)
  {
    v32 = 8;
  }

  else
  {
    v32 = 12;
  }

  if (*&a6 < 0.0)
  {
    v33 = 20;
  }

  else
  {
    v33 = 16;
  }

  if (*&a6 < 0.0)
  {
    v34 = 16;
  }

  else
  {
    v34 = 20;
  }

  v161 = -1;
  v35 = vdupq_lane_s32(a7, 0);
  v162 = 0;
  v36 = v34;
  v37 = v33;
  v38 = v32;
  v39 = v31;
  v40 = 4 * (*&a4 >= 0.0);
  v41 = 4 * v19;
  v42 = v28;
  v43 = v27;
  v44.i64[0] = 0x7F0000007FLL;
  v44.i64[1] = 0x7F0000007FLL;
  v155 = vnegq_f32(v44);
  v45 = v26;
  v46 = v25;
  v47 = v24;
  v48 = v172;
  while (2)
  {
    v49 = v18;
LABEL_15:
    v50 = vdupq_lane_s32(*&a8, 0);
    result = 4 * v41;
    v18 = v48;
    v52 = &off_239E26000;
    while (1)
    {
      v53 = a10;
      v54 = (a10 >> 4) & 3;
      if (v54)
      {
        break;
      }

      v55 = vmaxnmq_f32(vmaxnmq_f32(vmulq_f32(v45, vsubq_f32(*(a10 + 32 + 4 * v41), v20)), vmulq_f32(v43, vsubq_f32(*(a10 + 32 + 4 * v39), v21))), vmaxnmq_f32(vmulq_f32(v42, vsubq_f32(*(a10 + 32 + 4 * v37), v22)), v35));
      v56 = *(a10 + 128) & vaddvq_s32(vandq_s8(vcgeq_f32(vminnmq_f32(vminnmq_f32(vmulq_f32(v45, vsubq_f32(*(a10 + 32 + 4 * v40), v20)), vmulq_f32(v43, vsubq_f32(*(a10 + 32 + 4 * v38), v21))), vminnmq_f32(vmulq_f32(v42, vsubq_f32(*(a10 + 32 + 4 * v36), v22)), v50)), v55), v52[209]));
      if (!v56)
      {
        goto LABEL_111;
      }

      v57 = __clz(__rbit32(v56));
      a10 = *(a10 + 8 * v57);
      v58 = v56 & ~(1 << v57);
      if (v58)
      {
        v149 = a15;
        v166 = v55;
        v59 = *(&v166 & 0xFFFFFFFFFFFFFFF3 | (4 * (v57 & 3)));
        v60 = __clz(__rbit32(v58));
        v61 = *(v53 + 8 * v60);
        v62 = *(&v166 & 0xFFFFFFFFFFFFFFF3 | (4 * (v60 & 3)));
        v63 = v58 & ~(1 << v60);
        if (v63)
        {
          v64 = __clz(__rbit32(v63));
          v65 = (&v165 & 0xFFFFFFFFFFFFFFF3 | (4 * (v64 & 3)));
          v66 = 1 << v64;
          v67 = *(v53 + 8 * v64);
          v165 = v55;
          v68 = *v65;
          v69 = v63 & ~v66;
          if (v69)
          {
            v70 = __clz(__rbit32(v69));
            v164 = v55;
            v71 = *(&v164 & 0xFFFFFFFFFFFFFFF3 | (4 * (v70 & 3)));
            v72 = *(v53 + 8 * v70);
            if (v68 < v59)
            {
              v73 = v59;
            }

            else
            {
              v73 = v68;
            }

            if (v68 < v59)
            {
              v74 = a10;
            }

            else
            {
              v74 = v67;
            }

            if (v68 < v59)
            {
              v75 = v68;
            }

            else
            {
              v75 = v59;
            }

            if (v68 >= v59)
            {
              v67 = a10;
            }

            if (v71 < v62)
            {
              v76 = v61;
            }

            else
            {
              v76 = v72;
            }

            if (v71 < v62)
            {
              v77 = v62;
            }

            else
            {
              v77 = v71;
            }

            if (v71 >= v62)
            {
              v71 = v62;
              v72 = v61;
            }

            _NF = v71 < v75;
            if (v71 >= v75)
            {
              v79 = v72;
            }

            else
            {
              v71 = v75;
              v79 = v67;
            }

            if (_NF)
            {
              a10 = v72;
            }

            else
            {
              a10 = v67;
            }

            v80 = v77 < v73;
            if (v77 < v73)
            {
              v81 = v74;
            }

            else
            {
              v81 = v76;
            }

            if (v77 < v73)
            {
              v82 = v73;
            }

            else
            {
              v82 = v77;
            }

            if (v77 < v73)
            {
              v73 = v77;
            }

            if (v80)
            {
              v83 = v76;
            }

            else
            {
              v83 = v74;
            }

            v84 = v73 < v71;
            if (v73 < v71)
            {
              v85 = v71;
            }

            else
            {
              v85 = v73;
            }

            if (v73 < v71)
            {
              v86 = v79;
            }

            else
            {
              v86 = v83;
            }

            if (v73 < v71)
            {
              v71 = v73;
            }

            *v18 = v81;
            v18[2] = v82;
            if (v84)
            {
              v87 = v83;
            }

            else
            {
              v87 = v79;
            }

            *(v18 + 2) = v86;
            v18[6] = v85;
            *(v18 + 4) = v87;
            v18[10] = v71;
            v18 += 12;
            goto LABEL_78;
          }

          if (v62 < v59)
          {
            v90 = v59;
          }

          else
          {
            v90 = v62;
          }

          if (v62 < v59)
          {
            v91 = a10;
          }

          else
          {
            v91 = v61;
          }

          if (v62 < v59)
          {
            v92 = v62;
          }

          else
          {
            v92 = v59;
          }

          if (v62 < v59)
          {
            v93 = v61;
          }

          else
          {
            v93 = a10;
          }

          v52 = &off_239E26000;
          if (v68 >= v90)
          {
            v94 = *v65;
            v95 = v67;
            v68 = v90;
            v67 = v91;
          }

          else
          {
            v94 = v90;
            v95 = v91;
          }

          a15 = v149;
          v96 = v68 < v92;
          if (v68 < v92)
          {
            v97 = v93;
          }

          else
          {
            v92 = v68;
            v97 = v67;
          }

          if (v96)
          {
            a10 = v67;
          }

          else
          {
            a10 = v93;
          }

          *v18 = v95;
          v18[2] = v94;
          *(v18 + 2) = v97;
          v18[6] = v92;
          v18 += 8;
        }

        else
        {
          if (v62 >= v59)
          {
            v88 = v61;
          }

          else
          {
            v88 = a10;
          }

          if (v62 >= v59)
          {
            v89 = v62;
          }

          else
          {
            v89 = v59;
          }

          if (v62 < v59)
          {
            a10 = v61;
          }

          *v18 = v88;
          v18[2] = v89;
          v18 += 4;
LABEL_78:
          a15 = v149;
          v52 = &off_239E26000;
        }
      }
    }

    if (v54 != 1)
    {
      if (v54 != 2)
      {
        goto LABEL_111;
      }

      v98 = (a10 & 0xFFFFFFFFFFFFFFC0);
      a10 = *((a10 & 0xFFFFFFFFFFFFFFC0) + 0x30);
      if (!a10)
      {
        goto LABEL_111;
      }

      v156 = *((v53 & 0xFFFFFFFFFFFFFFC0) + 0x38);
      v138.i64[0] = *v98;
      v138.i64[1] = *((v53 & 0xFFFFFFFFFFFFFFC0) + 8);
      v139.i64[0] = *((v53 & 0xFFFFFFFFFFFFFFC0) + 0xC);
      v139.i64[1] = *((v53 & 0xFFFFFFFFFFFFFFC0) + 0x14);
      v140.i64[0] = *((v53 & 0xFFFFFFFFFFFFFFC0) + 0x18);
      v140.i64[1] = *((v53 & 0xFFFFFFFFFFFFFFC0) + 0x20);
      v141.i64[0] = *((v53 & 0xFFFFFFFFFFFFFFC0) + 0x24);
      v141.i32[2] = *((v53 & 0xFFFFFFFFFFFFFFC0) + 0x2C);
      v141.i32[3] = 1.0;
      v142 = vaddq_f32(vmlaq_f32(vmlaq_f32(vmulq_n_f32(v138, v150), v160, v139), v159, v140), v141);
      v20 = vdupq_lane_s32(*v142.i8, 0);
      v21 = vdupq_lane_s32(*v142.i8, 1);
      v22 = vdupq_laneq_s32(v142, 2);
      v143 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_n_f32(v138, v151), v24, v139), v25, v140), 0, v141);
      v144 = *v143.i32 < 0.0;
      v145 = *v143.i32 < 0.0;
      v23 = vdupq_lane_s32(*v143.i8, 0);
      v47 = vdupq_lane_s32(*v143.i8, 1);
      v46 = vdupq_laneq_s32(v143, 2);
      *v143.i32 = 1.0 / *v143.i32;
      v45 = vdupq_lane_s32(*v143.i8, 0);
      *v143.i32 = 1.0 / *&v143.i32[1];
      v43 = vdupq_lane_s32(*v143.i8, 0);
      *v143.i32 = 1.0 / *&v143.i32[2];
      v42 = vdupq_lane_s32(*v143.i8, 0);
      v146 = !v144;
      v41 = 4 * v145;
      v40 = 4 * v146;
      if (*&v143.i32[1] < 0.0)
      {
        v39 = 12;
      }

      else
      {
        v39 = 8;
      }

      if (*&v143.i32[1] < 0.0)
      {
        v38 = 8;
      }

      else
      {
        v38 = 12;
      }

      if (*&v143.i32[2] < 0.0)
      {
        v37 = 20;
      }

      else
      {
        v37 = 16;
      }

      if (*&v143.i32[2] < 0.0)
      {
        v36 = 16;
      }

      else
      {
        v36 = 20;
      }

      v48 = v18;
      continue;
    }

    break;
  }

  v99 = a10 & 0xF;
  if ((a10 & 0xF) != 0)
  {
    result = (a10 & 0xFFFFFFFFFFFFFFC0) + 80;
    do
    {
      v101 = *(result + 16);
      v100 = *(result + 32);
      v102 = *(result + 48);
      v103 = vsubq_f32(*(result - 80), v101);
      v104 = vsubq_f32(*(result - 64), v100);
      v105 = vsubq_f32(*(result - 48), v102);
      v106 = vsubq_f32(*(result - 32), v101);
      v107 = vsubq_f32(*(result - 16), v100);
      v108 = vsubq_f32(*result, v102);
      v109 = vmlaq_f32(vnegq_f32(vmulq_f32(v46, v107)), v108, v47);
      v110 = vmlaq_f32(vnegq_f32(vmulq_f32(v23, v108)), v106, v46);
      v111 = vmlaq_f32(vnegq_f32(vmulq_f32(v47, v106)), v107, v23);
      v112 = vmlaq_f32(vmlaq_f32(vmulq_f32(v104, v110), v109, v103), v111, v105);
      v113 = vceqzq_f32(v112);
      __asm { FMOV            V2.4S, #1.0 }

      v118 = vdivq_f32(_Q2, v112);
      v119 = vsubq_f32(v20, v101);
      v120 = vsubq_f32(v21, v100);
      v121 = vsubq_f32(v22, v102);
      v122 = vmulq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v120, v110), v109, v119), v111, v121), v118);
      v123 = vmlaq_f32(vnegq_f32(vmulq_f32(v104, v121)), v105, v120);
      v124 = vmlaq_f32(vnegq_f32(vmulq_f32(v119, v105)), v121, v103);
      v125 = vmlaq_f32(vnegq_f32(vmulq_f32(v103, v120)), v104, v119);
      v126 = vmulq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v47, v124), v123, v23), v125, v46), v118);
      v127 = vandq_s8(vbicq_s8(vandq_s8(vcgezq_f32(v122), vcgezq_f32(v126)), v113), vcgeq_f32(_Q2, vaddq_f32(v122, v126)));
      if ((vmaxvq_u32(v127) & 0x80000000) != 0)
      {
        v128 = vmulq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v107, v124), v123, v106), v125, v108), v118);
        v129 = vand_s8(vmovn_s32(vandq_s8(vcgeq_f32(v128, v35), vcgeq_f32(vdupq_lane_s32(*&a8, 0), v128))), vmovn_s32(v127));
        v130 = vmovl_s16(v129);
        if ((vmaxvq_u32(v130) & 0x80000000) != 0)
        {
          v131 = *(result + 64);
          v132 = *(result + 80);
          v133 = vbslq_s8(v130, v128, v155);
          v134 = vminnmq_f32(v133, vrev64q_s32(v133));
          v135 = __clz(__rbit32(vaddvq_s32(vandq_s8(vmovl_s16(vand_s8(vmovn_s32(vceqq_f32(vminnmq_f32(v134, vextq_s8(v134, v134, 8uLL)), v133)), v129)), v52[209]))));
          v171 = v128;
          LODWORD(a8) = *(&v171 & 0xFFFFFFFFFFFFFFF3 | (4 * (v135 & 3)));
          v170 = v122;
          LODWORD(v136) = *(&v170 & 0xFFFFFFFFFFFFFFF3 | (4 * (v135 & 3)));
          v169 = v126;
          HIDWORD(v136) = *(&v169 & 0xFFFFFFFFFFFFFFF3 | (4 * (v135 & 3)));
          v162 = v136;
          v168 = v131;
          v161 = *(&v168 & 0xFFFFFFFFFFFFFFF3 | (4 * (v135 & 3)));
          v167 = v132;
          LODWORD(v163) = *(&v167 & 0xFFFFFFFFFFFFFFF3 | (4 * (v135 & 3)));
          HIDWORD(v163) = v156;
        }
      }

      result += 192;
      --v99;
    }

    while (v99);
  }

LABEL_111:
  while (v18 != v172)
  {
    if (v18 == v49)
    {
      v49 = 0;
      v36 = v34;
      v37 = v33;
      v38 = v32;
      v39 = v31;
      v40 = v30;
      v41 = v29;
      v42 = v28;
      v43 = v27;
      v45 = v26;
      v46 = v25;
      v47 = v24;
      v23 = v157;
      v22 = v159;
      v21 = v160;
      v20 = v158;
    }

    v48 = v18 - 4;
    v137 = *(v18 - 2);
    v18 -= 4;
    if (v137 <= *&a8)
    {
      a10 = *v48;
      goto LABEL_15;
    }
  }

  v147 = -1.0;
  if (v161 >= 0)
  {
    v147 = *&a8;
  }

  *a11 = v147;
  *a12 = v161;
  *a13 = v163;
  *a14 = v162;
  *a15 = HIDWORD(v162);
  *a16 = HIDWORD(v163);
  v148 = *MEMORY[0x277D85DE8];
  return result;
}

_BYTE *sub_239DE9090(int32x2_t a1, int32x2_t a2, int32x2_t a3, double a4, double a5, double a6, int32x2_t a7, double a8, uint64_t a9, unint64_t a10, _DWORD *a11, _DWORD *a12, _DWORD *a13, _DWORD *a14, _DWORD *a15, _DWORD *a16)
{
  v18 = 0;
  v19 = *&a4 < 0.0;
  v20 = *&a4 < 0.0;
  v108 = *a1.i32;
  v21 = vdupq_lane_s32(a1, 0);
  v22 = vdupq_lane_s32(a2, 0);
  v23 = vdupq_lane_s32(a3, 0);
  v24 = vdupq_lane_s32(*&a4, 0);
  v25 = vdupq_lane_s32(*&a5, 0);
  v26 = vdupq_lane_s32(*&a6, 0);
  v109 = *&a4;
  *v16.i32 = 1.0 / *&a4;
  v27 = vdupq_lane_s32(v16, 0);
  *v16.i32 = 1.0 / *&a5;
  v28 = vdupq_lane_s32(v16, 0);
  v121 = *MEMORY[0x277D85DE8];
  *v16.i32 = 1.0 / *&a6;
  v29 = vdupq_lane_s32(v16, 0);
  v30 = !v19;
  v31 = 4 * v20;
  v32 = 4 * v30;
  if (*&a5 < 0.0)
  {
    v33 = 12;
  }

  else
  {
    v33 = 8;
  }

  if (*&a5 < 0.0)
  {
    v34 = 8;
  }

  else
  {
    v34 = 12;
  }

  if (*&a6 < 0.0)
  {
    v35 = 20;
  }

  else
  {
    v35 = 16;
  }

  v36 = vdupq_lane_s32(a7, 0);
  if (*&a6 < 0.0)
  {
    v37 = 16;
  }

  else
  {
    v37 = 20;
  }

  result = v120;
  v39 = vdupq_lane_s32(*&a8, 0);
  v40 = v37;
  v41 = v35;
  v42 = v34;
  v43 = v33;
  v44 = v32;
  v45 = v31;
  v46 = v29;
  v47 = v28;
  v48 = v27;
  v49 = v26;
  v50 = v25;
  v51 = v24;
  v117 = v23;
  v118 = v22;
  v52 = v21;
  v53 = v120;
  v115 = v24;
  v116 = v21;
  v113 = v28;
  v114 = v27;
  v112 = v29;
  while (1)
  {
LABEL_17:
    while (1)
    {
      v54 = a10;
      v55 = (a10 >> 4) & 3;
      if (v55)
      {
        break;
      }

      v56 = vmaxnmq_f32(vmaxnmq_f32(vmulq_f32(v48, vsubq_f32(*(a10 + 32 + 4 * v45), v52)), vmulq_f32(v47, vsubq_f32(*(a10 + 32 + 4 * v43), v22))), vmaxnmq_f32(vmulq_f32(v46, vsubq_f32(*(a10 + 32 + 4 * v41), v23)), v36));
      v57 = *(a10 + 128) & vaddvq_s32(vandq_s8(vcgeq_f32(vminnmq_f32(vminnmq_f32(vmulq_f32(v48, vsubq_f32(*(a10 + 32 + 4 * v44), v52)), vmulq_f32(v47, vsubq_f32(*(a10 + 32 + 4 * v42), v22))), vminnmq_f32(vmulq_f32(v46, vsubq_f32(*(a10 + 32 + 4 * v40), v23)), v39)), v56), xmmword_239E26D10));
      if (!v57)
      {
        goto LABEL_47;
      }

      v58 = __clz(__rbit32(v57));
      a10 = *(a10 + 8 * v58);
      v59 = v57 & ~(1 << v58);
      if (v59)
      {
        v60 = a11;
        do
        {
          v61 = __clz(__rbit32(v59));
          v62 = *(v54 + 8 * v61);
          v119 = v56;
          v63 = *(&v119 & 0xFFFFFFFFFFFFFFF3 | (4 * (v61 & 3)));
          *v53 = v62;
          *(v53 + 2) = v63;
          v53 += 2;
          v59 &= ~(1 << v61);
        }

        while (v59);
        a11 = v60;
      }
    }

    if (v55 == 1)
    {
      v73 = a10 & 0xF;
      if ((a10 & 0xF) == 0)
      {
        break;
      }

      v74 = (a10 & 0xFFFFFFFFFFFFFFC0) + 64;
      while (1)
      {
        v75 = *(v74 + 32);
        v76 = *(v74 + 48);
        v77 = *(v74 + 64);
        v78 = vsubq_f32(*(v74 - 64), v75);
        v79 = vsubq_f32(*(v74 - 48), v76);
        v80 = vsubq_f32(*(v74 - 32), v77);
        v81 = vsubq_f32(*(v74 - 16), v75);
        v82 = vsubq_f32(*v74, v76);
        v83 = vsubq_f32(*(v74 + 16), v77);
        v84 = vmlaq_f32(vnegq_f32(vmulq_f32(v49, v82)), v83, v50);
        v85 = vmlaq_f32(vnegq_f32(vmulq_f32(v51, v83)), v81, v49);
        v86 = vmlaq_f32(vnegq_f32(vmulq_f32(v50, v81)), v82, v51);
        v87 = vmlaq_f32(vmlaq_f32(vmulq_f32(v79, v85), v84, v78), v86, v80);
        v88 = vceqzq_f32(v87);
        __asm { FMOV            V1.4S, #1.0 }

        v94 = vdivq_f32(_Q1, v87);
        v95 = vsubq_f32(v52, v75);
        v96 = vsubq_f32(v22, v76);
        v97 = vsubq_f32(v23, v77);
        v98 = vmulq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v96, v85), v84, v95), v86, v97), v94);
        v99 = vmlaq_f32(vnegq_f32(vmulq_f32(v79, v97)), v80, v96);
        v100 = vmlaq_f32(vnegq_f32(vmulq_f32(v95, v80)), v97, v78);
        v101 = vmlaq_f32(vnegq_f32(vmulq_f32(v78, v96)), v79, v95);
        v102 = vmulq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v50, v100), v99, v51), v101, v49), v94);
        v103 = vandq_s8(vbicq_s8(vandq_s8(vcgezq_f32(v98), vcgezq_f32(v102)), v88), vcgeq_f32(_Q1, vaddq_f32(v98, v102)));
        if ((vmaxvq_u32(v103) & 0x80000000) != 0)
        {
          v104 = vmulq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v82, v100), v99, v81), v101, v83), v94);
          if ((vmaxvq_u32(vmovl_s16(vand_s8(vmovn_s32(vandq_s8(vcgeq_f32(v104, v36), vcgeq_f32(v39, v104))), vmovn_s32(v103)))) & 0x80000000) != 0)
          {
            break;
          }
        }

        v74 += 192;
        if (!--v73)
        {
          goto LABEL_47;
        }
      }

      *a11 = 1065353216;
      goto LABEL_53;
    }

    if (v55 != 2)
    {
      break;
    }

    v64 = (a10 & 0xFFFFFFFFFFFFFFC0);
    a10 = *((a10 & 0xFFFFFFFFFFFFFFC0) + 0x30);
    if (!a10)
    {
      break;
    }

    v65.i64[0] = *v64;
    v65.i64[1] = *((v54 & 0xFFFFFFFFFFFFFFC0) + 8);
    v66.i64[0] = *((v54 & 0xFFFFFFFFFFFFFFC0) + 0xC);
    v66.i64[1] = *((v54 & 0xFFFFFFFFFFFFFFC0) + 0x14);
    v67.i64[0] = *((v54 & 0xFFFFFFFFFFFFFFC0) + 0x18);
    v67.i64[1] = *((v54 & 0xFFFFFFFFFFFFFFC0) + 0x20);
    v68.i64[0] = *((v54 & 0xFFFFFFFFFFFFFFC0) + 0x24);
    v68.i32[2] = *((v54 & 0xFFFFFFFFFFFFFFC0) + 0x2C);
    v68.i32[3] = 1.0;
    v69 = vaddq_f32(vmlaq_f32(vmlaq_f32(vmulq_n_f32(v65, v108), v118, v66), v117, v67), v68);
    v52 = vdupq_lane_s32(*v69.i8, 0);
    v22 = vdupq_lane_s32(*v69.i8, 1);
    v23 = vdupq_laneq_s32(v69, 2);
    v71 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_n_f32(v65, v109), v25, v66), v26, v67), 0, v68);
    v19 = *v71.i32 < 0.0;
    v70 = *v71.i32 < 0.0;
    v51 = vdupq_lane_s32(*v71.i8, 0);
    v50 = vdupq_lane_s32(*v71.i8, 1);
    v49 = vdupq_laneq_s32(v71, 2);
    *v71.i32 = 1.0 / *v71.i32;
    v48 = vdupq_lane_s32(*v71.i8, 0);
    *v71.i32 = 1.0 / *&v71.i32[1];
    v47 = vdupq_lane_s32(*v71.i8, 0);
    *v71.i32 = 1.0 / *&v71.i32[2];
    v46 = vdupq_lane_s32(*v71.i8, 0);
    v72 = !v19;
    v45 = 4 * v70;
    v44 = 4 * v72;
    if (*&v71.i32[1] < 0.0)
    {
      v43 = 12;
    }

    else
    {
      v43 = 8;
    }

    if (*&v71.i32[1] < 0.0)
    {
      v42 = 8;
    }

    else
    {
      v42 = 12;
    }

    if (*&v71.i32[2] < 0.0)
    {
      v41 = 20;
    }

    else
    {
      v41 = 16;
    }

    if (*&v71.i32[2] < 0.0)
    {
      v40 = 16;
    }

    else
    {
      v40 = 20;
    }

    v18 = v53;
  }

LABEL_47:
  while (v53 != v120)
  {
    if (v53 == v18)
    {
      v18 = 0;
      v40 = v37;
      v41 = v35;
      v42 = v34;
      v43 = v33;
      v44 = v32;
      v45 = v31;
      v46 = v112;
      v47 = v113;
      v48 = v114;
      v49 = v26;
      v50 = v25;
      v51 = v115;
      v23 = v117;
      v22 = v118;
      v52 = v116;
    }

    v105 = v53 - 2;
    v106 = *(v53 - 2);
    v53 -= 2;
    if (v106 <= *&a8)
    {
      a10 = *v105;
      v53 = v105;
      goto LABEL_17;
    }
  }

  *a11 = -1082130432;
  *a12 = -1;
  *a13 = 0;
  *a14 = 0;
  *a15 = 0;
  *a16 = 0;
LABEL_53:
  v107 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_239DE9618(int32x2_t a1, int32x2_t a2, int32x2_t a3, double a4, double a5, double a6, int32x2_t a7, int32x4_t a8, uint64_t a9, unint64_t a10, float *a11, int *a12, _DWORD *a13, _DWORD *a14, _DWORD *a15, _DWORD *a16)
{
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v138 = *MEMORY[0x277D85DE8];
  v19 = vdupq_lane_s32(a1, 0);
  v20 = vdupq_lane_s32(a2, 0);
  v21 = vdupq_lane_s32(a3, 0);
  v22 = vdupq_lane_s32(*&a4, 0);
  v23 = vdupq_lane_s32(*&a5, 0);
  v24 = vdupq_lane_s32(*&a6, 0);
  v25 = 1.0 / *&a4;
  v26 = 1.0 / *&a5;
  if (*&a5 < 0.0)
  {
    v27 = 12;
  }

  else
  {
    v27 = 8;
  }

  if (*&a5 < 0.0)
  {
    v28 = 8;
  }

  else
  {
    v28 = 12;
  }

  if (*&a6 < 0.0)
  {
    v29 = 20;
  }

  else
  {
    v29 = 16;
  }

  if (*&a6 < 0.0)
  {
    v30 = 16;
  }

  else
  {
    v30 = 20;
  }

  v31 = vdupq_lane_s32(a7, 0);
  v128 = 0;
  v32 = -1;
  v33 = 4 * v27;
  v34 = 4 * v28;
  v35 = 4 * v29;
  v36 = 4 * v30;
  result = 1;
  v38.i64[0] = 0x7F0000007FLL;
  v38.i64[1] = 0x7F0000007FLL;
  v127 = vnegq_f32(v38);
  v39 = v137;
  v40 = 1.0 / *&a6;
  __asm { FMOV            V15.4S, #1.0 }

LABEL_14:
  v45 = vdupq_lane_s32(*a8.i8, 0);
  v46 = v39;
  while (1)
  {
    while (1)
    {
      v47 = a10;
      v48 = (a10 >> 4) & 3;
      if (v48)
      {
        break;
      }

      v49 = vmaxnmq_f32(vmaxnmq_f32(vmulq_n_f32(vsubq_f32(*(v47 + 32 + 16 * (*&a4 < 0.0)), v19), v25), vmulq_n_f32(vsubq_f32(*(v47 + 32 + v33), v20), v26)), vmaxnmq_f32(vmulq_n_f32(vsubq_f32(*(v47 + 32 + v35), v21), v40), v31));
      v50 = *(v47 + 128) & vaddvq_s32(vandq_s8(vcgeq_f32(vminnmq_f32(vminnmq_f32(vmulq_n_f32(vsubq_f32(*(v47 + 32 + 16 * (*&a4 >= 0.0)), v19), v25), vmulq_n_f32(vsubq_f32(*(v47 + 32 + v34), v20), v26)), vminnmq_f32(vmulq_n_f32(vsubq_f32(*(v47 + 32 + v36), v21), v40), v45)), v49), xmmword_239E26D10));
      if (!v50)
      {
        goto LABEL_109;
      }

      v51 = __clz(__rbit32(v50));
      a10 = *(v47 + 8 * v51);
      v52 = v50 & ~(1 << v51);
      if (v52)
      {
        v131 = v49;
        v53 = *(&v131 & 0xFFFFFFFFFFFFFFF3 | (4 * (v51 & 3)));
        v54 = __clz(__rbit32(v52));
        v55 = (&v131 & 0xFFFFFFFFFFFFFFF3 | (4 * (v54 & 3)));
        v56 = 1 << v54;
        v57 = *(v47 + 8 * v54);
        v58 = *v55;
        v59 = v52 & ~v56;
        if (v59)
        {
          v60 = __clz(__rbit32(v59));
          v61 = (&v130 & 0xFFFFFFFFFFFFFFF3 | (4 * (v60 & 3)));
          v62 = 1 << v60;
          v63 = *(v47 + 8 * v60);
          v130 = v49;
          v64 = *v61;
          v65 = v59 & ~v62;
          if (v65)
          {
            v66 = __clz(__rbit32(v65));
            v129 = v49;
            v67 = *(&v129 & 0xFFFFFFFFFFFFFFF3 | (4 * (v66 & 3)));
            v68 = *(v47 + 8 * v66);
            if (v64 < v53)
            {
              v69 = v63;
            }

            else
            {
              v69 = a10;
            }

            if (v64 < v53)
            {
              v70 = v64;
            }

            else
            {
              v70 = v53;
            }

            if (v64 >= v53)
            {
              v53 = v64;
            }

            else
            {
              v63 = a10;
            }

            _NF = v67 < v58;
            if (v67 < v58)
            {
              v72 = v68;
            }

            else
            {
              v72 = v57;
            }

            if (v67 < v58)
            {
              v73 = v67;
            }

            else
            {
              v73 = v58;
            }

            if (v67 < v58)
            {
              v67 = v58;
            }

            if (_NF)
            {
              v68 = v57;
            }

            if (v73 >= v70)
            {
              a10 = v69;
            }

            else
            {
              a10 = v72;
            }

            if (v73 >= v70)
            {
              v74 = v72;
            }

            else
            {
              v74 = v69;
            }

            if (v73 >= v70)
            {
              v75 = v73;
            }

            else
            {
              v75 = v70;
            }

            v76 = v67 < v53;
            if (v67 < v53)
            {
              v77 = v68;
            }

            else
            {
              v77 = v63;
            }

            if (v67 < v53)
            {
              v78 = v67;
            }

            else
            {
              v78 = v53;
            }

            if (v67 < v53)
            {
              v67 = v53;
            }

            if (v76)
            {
              v68 = v63;
            }

            if (v78 < v75)
            {
              v79 = v77;
            }

            else
            {
              v79 = v74;
            }

            if (v78 < v75)
            {
              v80 = v78;
            }

            else
            {
              v80 = v75;
            }

            if (v78 >= v75)
            {
              v74 = v77;
            }

            *v46 = v68;
            v46[2] = v67;
            if (v78 < v75)
            {
              v81 = v75;
            }

            else
            {
              v81 = v78;
            }

            *(v46 + 2) = v74;
            v46[6] = v81;
            *(v46 + 4) = v79;
            v46[10] = v80;
            v46 += 12;
          }

          else
          {
            if (v58 < v53)
            {
              v85 = v57;
            }

            else
            {
              v85 = a10;
            }

            if (v58 < v53)
            {
              v86 = v58;
            }

            else
            {
              v86 = v53;
            }

            if (v58 >= v53)
            {
              v53 = v58;
            }

            else
            {
              v57 = a10;
            }

            if (v64 >= v53)
            {
              v87 = v57;
              v88 = v53;
              v57 = v63;
              v53 = *v61;
            }

            else
            {
              v87 = v63;
              v88 = *v61;
            }

            if (v88 >= v86)
            {
              a10 = v85;
            }

            else
            {
              a10 = v87;
            }

            if (v88 >= v86)
            {
              v85 = v87;
              v86 = v88;
            }

            *v46 = v57;
            v46[2] = v53;
            *(v46 + 2) = v85;
            v46[6] = v86;
            v46 += 8;
          }
        }

        else
        {
          if (v58 >= v53)
          {
            v83 = v57;
          }

          else
          {
            v83 = a10;
          }

          if (v58 >= v53)
          {
            v84 = v58;
          }

          else
          {
            v84 = v53;
          }

          if (v58 < v53)
          {
            a10 = v57;
          }

          *v46 = v83;
          v46[2] = v84;
          v46 += 4;
        }
      }
    }

    if (v48 == 1)
    {
      break;
    }

    if (v48 != 2)
    {
      goto LABEL_109;
    }

    v82 = v47 & 0xFFFFFFFFFFFFFFC0;
    a10 = *(v82 + 48);
    if (!a10)
    {
      goto LABEL_109;
    }

    v16 = *(v82 + 56);
  }

  v89 = v47 & 0xF;
  if ((v47 & 0xF) != 0)
  {
    v90 = (v47 & 0xFFFFFFFFFFFFFFC0) + 80;
    do
    {
      v92 = *(v90 + 16);
      v91 = *(v90 + 32);
      v93 = *(v90 + 48);
      v94 = vsubq_f32(*(v90 - 80), v92);
      v95 = vsubq_f32(*(v90 - 64), v91);
      v96 = vsubq_f32(*(v90 - 48), v93);
      v97 = vsubq_f32(*(v90 - 32), v92);
      v98 = vsubq_f32(*(v90 - 16), v91);
      v99 = vsubq_f32(*v90, v93);
      v100 = vmlaq_f32(vnegq_f32(vmulq_n_f32(v98, *&a6)), v99, v23);
      v101 = vmlaq_f32(vnegq_f32(vmulq_n_f32(v99, *&a4)), v97, v24);
      v102 = vmlaq_f32(vnegq_f32(vmulq_n_f32(v97, *&a5)), v98, v22);
      v103 = vmlaq_f32(vmlaq_f32(vmulq_f32(v95, v101), v100, v94), v102, v96);
      v104 = vceqzq_f32(v103);
      v105 = vdivq_f32(_Q15, v103);
      v106 = vsubq_f32(v19, v92);
      v107 = vsubq_f32(v20, v91);
      v108 = vsubq_f32(v21, v93);
      v109 = vmulq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v107, v101), v100, v106), v102, v108), v105);
      v110 = vmlaq_f32(vnegq_f32(vmulq_f32(v95, v108)), v96, v107);
      v111 = vmlaq_f32(vnegq_f32(vmulq_f32(v106, v96)), v108, v94);
      v112 = vmlaq_f32(vnegq_f32(vmulq_f32(v94, v107)), v95, v106);
      v113 = vmulq_f32(vmlaq_f32(vmlaq_f32(vmulq_n_f32(v111, *&a5), v110, v22), v112, v24), v105);
      v114 = vandq_s8(vbicq_s8(vandq_s8(vcgezq_f32(v109), vcgezq_f32(v113)), v104), vcgeq_f32(_Q15, vaddq_f32(v109, v113)));
      if ((vmaxvq_u32(v114) & 0x80000000) != 0)
      {
        v115 = vmulq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v98, v111), v110, v97), v112, v99), v105);
        v116 = vand_s8(vmovn_s32(vandq_s8(vcgeq_f32(v115, v31), vcgeq_f32(vdupq_lane_s32(*a8.i8, 0), v115))), vmovn_s32(v114));
        v117 = vmovl_s16(v116);
        if ((vmaxvq_u32(v117) & 0x80000000) != 0)
        {
          v118 = *(v90 + 64);
          v119 = *(v90 + 80);
          v120 = vbslq_s8(v117, v115, v127);
          v121 = vminnmq_f32(v120, vrev64q_s32(v120));
          a8 = vandq_s8(vmovl_s16(vand_s8(vmovn_s32(vceqq_f32(vminnmq_f32(v121, vextq_s8(v121, v121, 8uLL)), v120)), v116)), xmmword_239E26D10);
          v122 = __clz(__rbit32(vaddvq_s32(a8)));
          v136 = v115;
          a8.i32[0] = *(&v136 & 0xFFFFFFFFFFFFFFF3 | (4 * (v122 & 3)));
          v135 = v109;
          LODWORD(v123) = *(&v135 & 0xFFFFFFFFFFFFFFF3 | (4 * (v122 & 3)));
          v134 = v113;
          HIDWORD(v123) = *(&v134 & 0xFFFFFFFFFFFFFFF3 | (4 * (v122 & 3)));
          v128 = v123;
          v133 = v118;
          v32 = *(&v133 & 0xFFFFFFFFFFFFFFF3 | (4 * (v122 & 3)));
          v132 = v119;
          v18 = *(&v132 & 0xFFFFFFFFFFFFFFF3 | (4 * (v122 & 3)));
          v17 = v16;
        }
      }

      v90 += 192;
      --v89;
    }

    while (v89);
  }

LABEL_109:
  while (v46 != v137)
  {
    v39 = v46 - 4;
    v124 = *(v46 - 2);
    v46 -= 4;
    if (v124 <= *a8.i32)
    {
      a10 = *v39;
      goto LABEL_14;
    }
  }

  v125 = -1.0;
  if (v32 >= 0)
  {
    v125 = *a8.i32;
  }

  *a11 = v125;
  *a12 = v32;
  *a13 = v18;
  *a14 = v128;
  *a15 = HIDWORD(v128);
  *a16 = v17;
  v126 = *MEMORY[0x277D85DE8];
  return result;
}

float *sub_239DE9BC4(int32x2_t a1, int32x2_t a2, int32x2_t a3, double a4, double a5, double a6, int32x2_t a7, double a8, uint64_t a9, unint64_t a10, _DWORD *a11, _DWORD *a12, _DWORD *a13, _DWORD *a14, _DWORD *a15, _DWORD *a16)
{
  v77 = *MEMORY[0x277D85DE8];
  v16 = vdupq_lane_s32(a1, 0);
  v17 = vdupq_lane_s32(a2, 0);
  v18 = vdupq_lane_s32(a3, 0);
  v19 = vdupq_lane_s32(*&a4, 0);
  v20 = vdupq_lane_s32(*&a5, 0);
  v21 = vdupq_lane_s32(*&a6, 0);
  v22 = 1.0 / *&a4;
  v23 = 1.0 / *&a5;
  v24 = vdupq_lane_s32(a7, 0);
  v25 = vdupq_lane_s32(*&a8, 0);
  if (*&a5 < 0.0)
  {
    v26 = 12;
  }

  else
  {
    v26 = 8;
  }

  if (*&a5 < 0.0)
  {
    v27 = 8;
  }

  else
  {
    v27 = 12;
  }

  if (*&a6 < 0.0)
  {
    v28 = 20;
  }

  else
  {
    v28 = 16;
  }

  if (*&a6 < 0.0)
  {
    v29 = 16;
  }

  else
  {
    v29 = 20;
  }

  __asm { FMOV            V22.4S, #1.0 }

  v35 = v76;
  v36 = 1.0 / *&a6;
LABEL_14:
  while (2)
  {
    v37 = a10;
    while (1)
    {
      v38 = (v37 >> 4) & 3;
      if (v38 != 2)
      {
        break;
      }

      v37 = *((v37 & 0xFFFFFFFFFFFFFFC0) + 0x30);
      if (!v37)
      {
        goto LABEL_30;
      }
    }

    if (v38 == 3)
    {
      goto LABEL_30;
    }

    if (v38 != 1)
    {
      v66 = vmaxnmq_f32(vmaxnmq_f32(vmulq_n_f32(vsubq_f32(*(v37 + 32 + 16 * (*&a4 < 0.0)), v16), v22), vmulq_n_f32(vsubq_f32(*(v37 + 32 + 4 * v26), v17), v23)), vmaxnmq_f32(vmulq_n_f32(vsubq_f32(*(v37 + 32 + 4 * v28), v18), v36), v24));
      v67 = *(v37 + 128) & vaddvq_s32(vandq_s8(vcgeq_f32(vminnmq_f32(vminnmq_f32(vmulq_n_f32(vsubq_f32(*(v37 + 32 + 16 * (*&a4 >= 0.0)), v16), v22), vmulq_n_f32(vsubq_f32(*(v37 + 32 + 4 * v27), v17), v23)), vminnmq_f32(vmulq_n_f32(vsubq_f32(*(v37 + 32 + 4 * v29), v18), v36), v25)), v66), xmmword_239E26D10));
      if (v67)
      {
        v68 = __clz(__rbit32(v67));
        v69 = 1 << v68;
        a10 = *(v37 + 8 * v68);
        while (1)
        {
          v67 &= ~v69;
          if (!v67)
          {
            break;
          }

          v70 = __clz(__rbit32(v67));
          v71 = *(v37 + 8 * v70);
          v75 = v66;
          v72 = *(&v75 & 0xFFFFFFFFFFFFFFF3 | (4 * (v70 & 3)));
          v69 = 1 << v70;
          *v35 = v71;
          *(v35 + 2) = v72;
          v35 += 4;
        }

        continue;
      }

      goto LABEL_30;
    }

    break;
  }

  result = (v37 & 0xF);
  if ((v37 & 0xF) == 0)
  {
LABEL_30:
    result = v35;
    while (result != v76)
    {
      v35 = result - 4;
      v73 = *(result - 2);
      result -= 4;
      if (v73 <= *&a8)
      {
        a10 = *v35;
        goto LABEL_14;
      }
    }

    *a11 = -1082130432;
    *a12 = -1;
    *a13 = 0;
    *a14 = 0;
    *a15 = 0;
    *a16 = 0;
    goto LABEL_35;
  }

  v40 = (v37 & 0xFFFFFFFFFFFFFFC0) + 64;
  while (1)
  {
    v41 = *(v40 + 32);
    v42 = *(v40 + 48);
    v43 = *(v40 + 64);
    v44 = vsubq_f32(*(v40 - 64), v41);
    v45 = vsubq_f32(*(v40 - 48), v42);
    v46 = vsubq_f32(*(v40 - 32), v43);
    v47 = vsubq_f32(*(v40 - 16), v41);
    v48 = vsubq_f32(*v40, v42);
    v49 = vsubq_f32(*(v40 + 16), v43);
    v50 = vmlaq_f32(vnegq_f32(vmulq_n_f32(v48, *&a6)), v49, v20);
    v51 = vmlaq_f32(vnegq_f32(vmulq_n_f32(v49, *&a4)), v47, v21);
    v52 = vmlaq_f32(vnegq_f32(vmulq_n_f32(v47, *&a5)), v48, v19);
    v53 = vmlaq_f32(vmlaq_f32(vmulq_f32(v45, v51), v50, v44), v52, v46);
    v54 = vceqzq_f32(v53);
    v55 = vdivq_f32(_Q22, v53);
    v56 = vsubq_f32(v16, v41);
    v57 = vsubq_f32(v17, v42);
    v58 = vsubq_f32(v18, v43);
    v59 = vmulq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v57, v51), v50, v56), v52, v58), v55);
    v60 = vmlaq_f32(vnegq_f32(vmulq_f32(v45, v58)), v46, v57);
    v61 = vmlaq_f32(vnegq_f32(vmulq_f32(v56, v46)), v58, v44);
    v62 = vmlaq_f32(vnegq_f32(vmulq_f32(v44, v57)), v45, v56);
    v63 = vmulq_f32(vmlaq_f32(vmlaq_f32(vmulq_n_f32(v61, *&a5), v60, v19), v62, v21), v55);
    v64 = vandq_s8(vbicq_s8(vandq_s8(vcgezq_f32(v59), vcgezq_f32(v63)), v54), vcgeq_f32(_Q22, vaddq_f32(v59, v63)));
    if ((vmaxvq_u32(v64) & 0x80000000) != 0)
    {
      v65 = vmulq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v48, v61), v60, v47), v62, v49), v55);
      if ((vmaxvq_u32(vmovl_s16(vand_s8(vmovn_s32(vandq_s8(vcgeq_f32(v65, v24), vcgeq_f32(v25, v65))), vmovn_s32(v64)))) & 0x80000000) != 0)
      {
        break;
      }
    }

    v40 += 192;
    result = (result - 1);
    if (!result)
    {
      goto LABEL_30;
    }
  }

  *a11 = 1065353216;
LABEL_35:
  v74 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_239DE9F60(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, float32x4_t *a7@<X8>, float32x4_t a8@<Q0>, float32x4_t a9@<Q1>)
{
  v11 = a2;
  v14.i64[0] = 0x7F0000007FLL;
  v14.i64[1] = 0x7F0000007FLL;
  v15 = vnegq_f32(v14);
  a7[2] = v15;
  a7[3] = v14;
  a7[4] = v15;
  a7[5] = v14;
  a7[6].i32[0] = 0;
  v16 = vsubq_f32(a9, a8);
  v17 = v16.n128_f32[1];
  v18 = v16.n128_f32[0] <= v16.n128_f32[1];
  v19 = v16.n128_f32[2];
  v58 = v15;
  v59 = v16.n128_f32[0];
  if (v16.n128_f32[0] <= v16.n128_f32[1])
  {
    v16.n128_f32[0] = v16.n128_f32[1];
  }

  if (v16.n128_f32[0] <= v16.n128_f32[2])
  {
    v18 = 2;
  }

  a7->i32[0] = 2139095040;
  a7->i32[1] = v18;
  v16.n128_f64[0] = vcvtd_n_f64_u32(a3, 1uLL);
  LODWORD(v9) = vcvtad_u64_f64(v16.n128_f64[0]);
  a7->i32[2] = v9;
  a7->i32[3] = 2139095040;
  v20 = a3 - v9;
  a7[1].i32[0] = v9;
  a7[1].i32[1] = v20;
  v21 = a2 + 32 * v9;
  v22 = (a2 + 32 * a3);
  v60 = v18;
  v23 = 126 - 2 * __clz(a3);
  if (a3)
  {
    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  sub_239DEA478(v11, v22, &v60, v24, 1, a4, a5, a6, v16, a9);
  v25 = v58;
  v26 = v58;
  v27.i64[0] = 0x7F0000007FLL;
  v27.i32[2] = 127;
  if (v9)
  {
    v28.i64[0] = 0x7F0000007FLL;
    v28.i64[1] = 0x7F0000007FLL;
    v29 = vnegq_f32(v28);
    do
    {
      v30.i64[0] = *v11;
      v31.i64[0] = *(v11 + 16);
      v32 = v29;
      v32.i32[3] = 0;
      v30.i64[1] = *(v11 + 8);
      v33 = v28;
      v33.i32[3] = 0;
      v26 = vminnmq_f32(v32, v30);
      v31.i64[1] = *(v11 + 24);
      v27 = vmaxnmq_f32(v33, v31);
      v26.i32[3] = v29.i32[3];
      v27.i32[3] = v28.i32[3];
      v11 += 32;
      v28 = v27;
      v29 = v26;
    }

    while (v11 != v21);
  }

  a7[2].i32[2] = v26.i32[2];
  a7[2].i64[0] = v26.i64[0];
  a7[3].i32[2] = v27.i32[2];
  a7[3].i64[0] = v27.i64[0];
  v26.i64[0] = 0x7F0000007FLL;
  v26.i32[2] = 127;
  if (a3 != v9)
  {
    v34 = v21 + 32 * v20;
    v35.i64[0] = 0x7F0000007FLL;
    v35.i64[1] = 0x7F0000007FLL;
    v36 = vnegq_f32(v35);
    do
    {
      v37.i64[0] = *v21;
      v38.i64[0] = *(v21 + 16);
      v39 = v36;
      v39.i32[3] = 0;
      v37.i64[1] = *(v21 + 8);
      v40 = v35;
      v40.i32[3] = 0;
      v25 = vminnmq_f32(v39, v37);
      v38.i64[1] = *(v21 + 24);
      v26 = vmaxnmq_f32(v40, v38);
      v25.i32[3] = v36.i32[3];
      v26.i32[3] = v35.i32[3];
      v21 += 32;
      v35 = v26;
      v36 = v25;
    }

    while (v21 != v34);
  }

  a7[4].i32[2] = v25.i32[2];
  a7[4].i64[0] = v25.i64[0];
  a7[5].i32[2] = v26.i32[2];
  a7[5].i64[0] = v26.i64[0];
  v41 = a7[2];
  v42 = a7[3];
  _Q2 = vsubq_f32(v42, v41);
  _S4 = _Q2.i32[2];
  __asm { FMLA            S3, S4, V2.S[1] }

  _Q2.f32[0] = _S3 + _S3;
  v50 = a7[4];
  v51 = a7[5];
  _Q5 = vsubq_f32(v51, v50);
  _S7 = _Q5.i32[2];
  __asm { FMLA            S6, S7, V5.S[1] }

  _Q5.f32[0] = _S6 + _S6;
  v55 = ((v59 * v19) + (v59 * v17)) + (v17 * v19);
  a7->f32[0] = ((*(a1 + 16) * (((1.0 / (v55 + v55)) * _Q2.f32[0]) * v9)) + 2.0) + (*(a1 + 16) * (((1.0 / (v55 + v55)) * _Q5.f32[0]) * v20));
  v41.i32[3] = 0;
  v50.i32[3] = 0;
  v42.i32[3] = 0;
  v51.i32[3] = 0;
  v56 = vsubq_f32(vminnmq_f32(v42, v51), vmaxnmq_f32(v41, v50));
  *_Q2.f32 = vmul_f32(*v56.i8, *&vextq_s8(v56, v56, 4uLL));
  v57 = (_Q2.f32[1] + (_Q2.f32[0] + (*v56.i32 * *&v56.i32[2]))) + (_Q2.f32[1] + (_Q2.f32[0] + (*v56.i32 * *&v56.i32[2])));
  if (v57 < 0.0)
  {
    v57 = 0.0;
  }

  a7->f32[3] = v57;
}

void sub_239DEA218(__n128 a1, __n128 a2, uint64_t a3, uint64_t a4, float *a5, unsigned int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v10 = &a5[8 * a6];
  v13 = *(a4 + 4);
  v11 = 126 - 2 * __clz(a6);
  if (a6)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  sub_239DEA478(a5, v10, &v13, v12, 1, a8, a9, a10, a1, a2);
}

uint64_t sub_239DEA26C(double a1, __n128 a2, float32x4_t a3, float32x4_t a4, uint64_t a5, uint64_t a6, float *a7, unsigned int a8, uint64_t a9, unsigned int *a10, _DWORD *a11, uint64_t a12, uint64_t a13)
{
  v17 = vsubq_f32(a4, a3);
  a2.n128_u32[0] = v17.n128_u32[1];
  v18 = v17.n128_f32[0] <= v17.n128_f32[1];
  if (v17.n128_f32[0] <= v17.n128_f32[1])
  {
    v17.n128_f32[0] = v17.n128_f32[1];
  }

  v19 = v17.n128_f32[0] <= v17.n128_f32[2];
  v17.n128_f64[0] = vcvtd_n_f64_u32(a8, 1uLL);
  v20 = vcvtad_u64_f64(v17.n128_f64[0]);
  if (v19)
  {
    v18 = 2;
  }

  *a10 = v20;
  *a11 = a8 - v20;
  v21 = &a7[8 * a8];
  v47 = v18;
  v22 = 126 - 2 * __clz(a8);
  if (a8)
  {
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  sub_239DEA478(a7, v21, &v47, v23, 1, a10, a11, a12, v17, a2);
  v24 = *a10;
  v25.i64[0] = 0x7F0000007FLL;
  v25.i64[1] = 0x7F0000007FLL;
  v26 = vnegq_f32(v25);
  v27 = v26;
  v28.i64[0] = 0x7F0000007FLL;
  v28.i32[2] = 127;
  if (v24)
  {
    v29 = &a7[8 * v24];
    v30.i64[0] = 0x7F0000007FLL;
    v30.i64[1] = 0x7F0000007FLL;
    v31 = vnegq_f32(v30);
    v32 = a7;
    do
    {
      v33.i64[0] = *v32;
      v34.i64[0] = *(v32 + 2);
      v35 = v31;
      v35.i32[3] = 0;
      v33.i64[1] = *(v32 + 2);
      v36 = v30;
      v36.i32[3] = 0;
      v27 = vminnmq_f32(v35, v33);
      v34.i64[1] = *(v32 + 6);
      v28 = vmaxnmq_f32(v36, v34);
      v27.i32[3] = v31.i32[3];
      v28.i32[3] = v30.i32[3];
      v32 += 8;
      v30 = v28;
      v31 = v27;
    }

    while (v32 != v29);
  }

  *(a12 + 8) = v27.i32[2];
  *a12 = v27.i64[0];
  *(a12 + 24) = v28.i32[2];
  *(a12 + 16) = v28.i64[0];
  v37 = *a11;
  if (v37)
  {
    v38 = &a7[8 * *a10];
    v39 = &v38[8 * v37];
    v40.i64[0] = 0x7F0000007FLL;
    v40.i64[1] = 0x7F0000007FLL;
    v41 = vnegq_f32(v40);
    do
    {
      v42.i64[0] = *v38;
      v43.i64[0] = *(v38 + 2);
      v44 = v41;
      v44.i32[3] = 0;
      v42.i64[1] = *(v38 + 2);
      v45 = v40;
      v45.i32[3] = 0;
      v26 = vminnmq_f32(v44, v42);
      v43.i64[1] = *(v38 + 6);
      v25 = vmaxnmq_f32(v45, v43);
      v26.i32[3] = v41.i32[3];
      v25.i32[3] = v40.i32[3];
      v38 += 8;
      v40 = v25;
      v41 = v26;
    }

    while (v38 != v39);
  }

  *(a13 + 8) = v26.i32[2];
  *a13 = v26.i64[0];
  *(a13 + 24) = v25.i32[2];
  *(a13 + 16) = v25.i64[0];
  return 1;
}

void sub_239DEA440(uint64_t a1)
{
  sub_239E0512C(a1);

  JUMPOUT(0x23EE7D780);
}

void sub_239DEA478(float *a1, __n128 *a2, unsigned int *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9, __n128 a10)
{
  HIDWORD(v137) = a5;
LABEL_2:
  v13 = a2 - 2;
  *&v137 = a2 - 4;
  v14 = a2 - 6;
  v15 = a1;
LABEL_3:
  v16 = 1 - a4;
  while (1)
  {
    a1 = v15;
    v17 = v16;
    v18 = (a2 - v15) >> 5;
    if (v18 > 2)
    {
      break;
    }

    if (v18 < 2)
    {
      return;
    }

    if (v18 == 2)
    {
      v128 = *a3;
      if (v128 >= 2)
      {
        v128 = (a2 - v15) >> 5;
      }

      if ((v13->n128_f32[v128] + ((a2[-1].n128_f32[v128] - v13->n128_f32[v128]) * 0.5)) < (v15[v128] + ((v15[v128 + 4] - v15[v128]) * 0.5)))
      {
        goto LABEL_127;
      }

      return;
    }

LABEL_11:
    if (v18 <= 23)
    {
      if (BYTE12(v137))
      {

        sub_239DEB528(v15, a2, a3, a9.n128_f64[0], a10);
      }

      else
      {

        sub_239DEB670(v15, a2, a3, a9.n128_f64[0], a10);
      }

      return;
    }

    if (v16 == 1)
    {
      if (v15 != a2)
      {

        sub_239DEC2AC(v15, a2, a2, a3, a9);
      }

      return;
    }

    v19 = &v15[8 * (v18 >> 1)];
    v20 = *a3;
    if (v20 >= 2)
    {
      v21 = 2;
    }

    else
    {
      v21 = *a3;
    }

    v22 = a2 + v21;
    v23 = *(v22 - 8);
    v24 = *(v22 - 4) - v23;
    if (v18 >= 0x81)
    {
      v25 = v20;
      if (v20 >= 2uLL)
      {
        v25 = 2;
      }

      v26 = v19[v25] + ((v19[v25 + 4] - v19[v25]) * 0.5);
      v27 = v23 + (v24 * 0.5);
      if (v26 >= (v15[v25] + ((v15[v25 + 4] - v15[v25]) * 0.5)))
      {
        if (v27 < v26)
        {
          v168 = *(v19 + 4);
          v147 = *v19;
          *(v19 + 1) = a2[-1];
          *v19 = *v13;
          a2[-1] = v168;
          *v13 = v147;
          v31 = *a3;
          if (v31 >= 2)
          {
            v31 = 2;
          }

          if ((v19[v31] + ((v19[v31 + 4] - v19[v31]) * 0.5)) < (v15[v31] + ((v15[v31 + 4] - v15[v31]) * 0.5)))
          {
            v169 = *(v15 + 1);
            v148 = *v15;
            *(v15 + 1) = *(v19 + 1);
            *v15 = *v19;
            *(v19 + 1) = v169;
            *v19 = v148;
          }
        }
      }

      else
      {
        if (v27 < v26)
        {
          v166 = *(v15 + 4);
          v145 = *v15;
          *(v15 + 1) = a2[-1];
          *v15 = *v13;
          goto LABEL_41;
        }

        v172 = *(v15 + 1);
        v151 = *v15;
        *(v15 + 1) = *(v19 + 1);
        *v15 = *v19;
        *(v19 + 1) = v172;
        *v19 = v151;
        v33 = *a3;
        if (v33 >= 2)
        {
          v33 = 2;
        }

        if ((a2[-2].n128_f32[v33] + ((a2[-1].n128_f32[v33] - a2[-2].n128_f32[v33]) * 0.5)) < (v19[v33] + ((v19[v33 + 4] - v19[v33]) * 0.5)))
        {
          v166 = *(v19 + 4);
          v145 = *v19;
          *(v19 + 1) = a2[-1];
          *v19 = *v13;
LABEL_41:
          a2[-1] = v166;
          *v13 = v145;
        }
      }

      v34 = v15 + 8;
      v35 = v19 - 8;
      v36 = *a3;
      if (v36 >= 2)
      {
        v36 = 2;
      }

      v37 = v35[v36] + ((v35[v36 + 4] - v35[v36]) * 0.5);
      v38 = a2[-4].n128_f32[v36] + ((a2[-3].n128_f32[v36] - a2[-4].n128_f32[v36]) * 0.5);
      if (v37 >= (v34[v36] + ((v15[v36 + 12] - v34[v36]) * 0.5)))
      {
        if (v38 < v37)
        {
          v173 = *(v19 - 1);
          v152 = *v35;
          *(v19 - 1) = *(v137 + 16);
          *v35 = *v137;
          *(v137 + 16) = v173;
          *v137 = v152;
          v42 = *a3;
          if (v42 >= 2)
          {
            v42 = 2;
          }

          if ((v19[v42 - 8] + ((v19[v42 - 4] - v19[v42 - 8]) * 0.5)) < (v15[v42 + 8] + ((v15[v42 + 12] - v15[v42 + 8]) * 0.5)))
          {
            v43 = *v34;
            v174 = *(v15 + 3);
            *(v15 + 3) = *(v19 - 1);
            *v34 = *v35;
            *v35 = v43;
            *(v19 - 1) = v174;
          }
        }
      }

      else if (v38 >= v37)
      {
        v45 = *v34;
        v176 = *(v15 + 3);
        *(v15 + 3) = *(v19 - 1);
        *v34 = *v35;
        *v35 = v45;
        *(v19 - 1) = v176;
        v46 = *a3;
        if (v46 >= 2)
        {
          v46 = 2;
        }

        if ((a2[-4].n128_f32[v46] + ((a2[-3].n128_f32[v46] - a2[-4].n128_f32[v46]) * 0.5)) < (v19[v46 - 8] + ((v19[v46 - 4] - v19[v46 - 8]) * 0.5)))
        {
          v177 = *(v19 - 1);
          v154 = *v35;
          *(v19 - 1) = *(v137 + 16);
          *v35 = *v137;
          *(v137 + 16) = v177;
          *v137 = v154;
        }
      }

      else
      {
        v40 = *v34;
        v39 = *(v15 + 3);
        v41 = *(v137 + 16);
        *v34 = *v137;
        *(v15 + 3) = v41;
        *v137 = v40;
        *(v137 + 16) = v39;
      }

      v47 = v15 + 16;
      v48 = v19 + 8;
      v49 = *a3;
      if (v49 >= 2)
      {
        v49 = 2;
      }

      v50 = v48[v49] + ((v48[v49 + 4] - v48[v49]) * 0.5);
      v51 = a2[-6].n128_f32[v49] + ((a2[-5].n128_f32[v49] - a2[-6].n128_f32[v49]) * 0.5);
      if (v50 >= (v47[v49] + ((v15[v49 + 20] - v47[v49]) * 0.5)))
      {
        if (v51 < v50)
        {
          v178 = *(v19 + 12);
          v155 = *v48;
          *(v19 + 3) = a2[-5];
          *v48 = *v14;
          a2[-5] = v178;
          *v14 = v155;
          v55 = *a3;
          if (v55 >= 2)
          {
            v55 = 2;
          }

          if ((v19[v55 + 8] + ((v19[v55 + 12] - v19[v55 + 8]) * 0.5)) < (v15[v55 + 16] + ((v15[v55 + 20] - v15[v55 + 16]) * 0.5)))
          {
            v56 = *v47;
            v179 = *(v15 + 5);
            *(v15 + 5) = *(v19 + 3);
            *v47 = *v48;
            *v48 = v56;
            *(v19 + 3) = v179;
          }
        }
      }

      else if (v51 >= v50)
      {
        v57 = *v47;
        v180 = *(v15 + 5);
        *(v15 + 5) = *(v19 + 3);
        *v47 = *v48;
        *v48 = v57;
        *(v19 + 3) = v180;
        v58 = *a3;
        if (v58 >= 2)
        {
          v58 = 2;
        }

        if ((a2[-6].n128_f32[v58] + ((a2[-5].n128_f32[v58] - a2[-6].n128_f32[v58]) * 0.5)) < (v19[v58 + 8] + ((v19[v58 + 12] - v19[v58 + 8]) * 0.5)))
        {
          v181 = *(v19 + 12);
          v156 = *v48;
          *(v19 + 3) = a2[-5];
          *v48 = *v14;
          a2[-5] = v181;
          *v14 = v156;
        }
      }

      else
      {
        v53 = *v47;
        v52 = *(v15 + 20);
        v54 = a2[-5];
        *v47 = *v14;
        *(v15 + 5) = v54;
        *v14 = v53;
        a2[-5] = v52;
      }

      v59 = *a3;
      if (v59 >= 2)
      {
        v59 = 2;
      }

      v60 = v19[v59] + ((v19[v59 + 4] - v19[v59]) * 0.5);
      v61 = v48[v59] + ((v48[v59 + 4] - v48[v59]) * 0.5);
      if (v60 >= (v35[v59] + ((v35[v59 + 4] - v35[v59]) * 0.5)))
      {
        if (v61 < v60)
        {
          v183 = *(v19 + 1);
          v158 = *v19;
          v63 = *(v19 + 3);
          *v19 = *v48;
          *(v19 + 1) = v63;
          *v48 = v158;
          *(v19 + 3) = v183;
          v64 = *a3;
          if (v64 >= 2)
          {
            v64 = 2;
          }

          if ((v19[v64] + ((v19[v64 + 4] - v19[v64]) * 0.5)) < (v35[v64] + ((v35[v64 + 4] - v35[v64]) * 0.5)))
          {
            v184 = *(v19 - 1);
            v159 = *v35;
            v65 = *(v19 + 1);
            *v35 = *v19;
            *(v19 - 1) = v65;
            *v19 = v159;
            *(v19 + 1) = v184;
          }
        }
      }

      else
      {
        if (v61 < v60)
        {
          v182 = *(v19 - 1);
          v157 = *v35;
          v62 = *(v19 + 3);
          *v35 = *v48;
          *(v19 - 1) = v62;
          goto LABEL_89;
        }

        v185 = *(v19 - 1);
        v160 = *v35;
        v66 = *(v19 + 1);
        *v35 = *v19;
        *(v19 - 1) = v66;
        *v19 = v160;
        *(v19 + 1) = v185;
        v67 = *a3;
        if (v67 >= 2)
        {
          v67 = 2;
        }

        if ((v48[v67] + ((v48[v67 + 4] - v48[v67]) * 0.5)) < (v19[v67] + ((v19[v67 + 4] - v19[v67]) * 0.5)))
        {
          v182 = *(v19 + 1);
          v157 = *v19;
          v68 = *(v19 + 3);
          *v19 = *v48;
          *(v19 + 1) = v68;
LABEL_89:
          *v48 = v157;
          *(v19 + 3) = v182;
        }
      }

      v186 = *(v15 + 1);
      v161 = *v15;
      *(v15 + 1) = *(v19 + 1);
      *v15 = *v19;
      *(v19 + 1) = v186;
      *v19 = v161;
      goto LABEL_91;
    }

    v28 = v20;
    if (v20 >= 2uLL)
    {
      v28 = 2;
    }

    v29 = v15[v28] + ((v15[v28 + 4] - v15[v28]) * 0.5);
    v30 = v23 + (v24 * 0.5);
    if (v29 >= (v19[v28] + ((v19[v28 + 4] - v19[v28]) * 0.5)))
    {
      if (v30 < v29)
      {
        v170 = *(v15 + 4);
        v149 = *v15;
        *(v15 + 1) = a2[-1];
        *v15 = *v13;
        a2[-1] = v170;
        *v13 = v149;
        v32 = *a3;
        if (v32 >= 2)
        {
          v32 = 2;
        }

        if ((v15[v32] + ((v15[v32 + 4] - v15[v32]) * 0.5)) < (v19[v32] + ((v19[v32 + 4] - v19[v32]) * 0.5)))
        {
          v171 = *(v19 + 1);
          v150 = *v19;
          *(v19 + 1) = *(v15 + 1);
          *v19 = *v15;
          *(v15 + 1) = v171;
          *v15 = v150;
        }
      }
    }

    else
    {
      if (v30 < v29)
      {
        v167 = *(v19 + 4);
        v146 = *v19;
        *(v19 + 1) = a2[-1];
        *v19 = *v13;
LABEL_56:
        a2[-1] = v167;
        *v13 = v146;
        goto LABEL_91;
      }

      v175 = *(v19 + 1);
      v153 = *v19;
      *(v19 + 1) = *(v15 + 1);
      *v19 = *v15;
      *(v15 + 1) = v175;
      *v15 = v153;
      v44 = *a3;
      if (v44 >= 2)
      {
        v44 = 2;
      }

      if ((a2[-2].n128_f32[v44] + ((a2[-1].n128_f32[v44] - a2[-2].n128_f32[v44]) * 0.5)) < (v15[v44] + ((v15[v44 + 4] - v15[v44]) * 0.5)))
      {
        v167 = *(v15 + 4);
        v146 = *v15;
        *(v15 + 1) = a2[-1];
        *v15 = *v13;
        goto LABEL_56;
      }
    }

LABEL_91:
    if ((BYTE12(v137) & 1) == 0)
    {
      v69 = *a3;
      if (v69 >= 2)
      {
        v69 = 2;
      }

      v70 = &v15[v69];
      if ((*(v70 - 8) + ((*(v70 - 4) - *(v70 - 8)) * 0.5)) >= (*v70 + ((v70[4] - *v70) * 0.5)))
      {
        v15 = sub_239DEB794(v15, a2, a3, a4, a5, a6, a7, a8, v135, v137, v139, v141, v143);
        goto LABEL_100;
      }
    }

    v76 = sub_239DEB9E4(v15, a2, a3, a4, a5, a6, a7, a8, v135, v137, v139, v141, v143);
    if ((v85 & 1) == 0)
    {
      goto LABEL_98;
    }

    v86 = sub_239DEBC00(v15, v76, a3, v77, v78, v79, v80, v71, v72, v73, v74, v75, v81, v135, v82, v137, v83, v139, v84, v141);
    v15 = &v76[2];
    if (sub_239DEBC00(&v76[2], a2, a3, v92, v93, v94, v95, v87, v88, v89, v90, v91, v96, v136, v97, v138, v98, v140, v99, v142))
    {
      a4 = -v17;
      a2 = v76;
      if (v86)
      {
        return;
      }

      goto LABEL_2;
    }

    v16 = v17 + 1;
    if (!v86)
    {
LABEL_98:
      sub_239DEA478(a1, v76, a3, -v17, BYTE12(v137) & 1);
      v15 = &v76[2];
LABEL_100:
      HIDWORD(v137) = 0;
      a4 = -v17;
      goto LABEL_3;
    }
  }

  if (v18 != 3)
  {
    if (v18 == 4)
    {

      sub_239DEB2C4(v15, v15 + 8, v15 + 16, &a2[-2], a3, a9);
      return;
    }

    if (v18 == 5)
    {
      v110 = v15 + 24;
      sub_239DEB2C4(v15, v15 + 8, v15 + 16, v15 + 24, a3, a9);
      v111 = *a3;
      if (v111 >= 2)
      {
        v111 = 2;
      }

      if ((v13->n128_f32[v111] + ((a2[-1].n128_f32[v111] - v13->n128_f32[v111]) * 0.5)) < (v110[v111] + ((v15[v111 + 28] - v110[v111]) * 0.5)))
      {
        v113 = *v110;
        v112 = *(v15 + 28);
        v114 = a2[-1];
        *v110 = *v13;
        *(v15 + 7) = v114;
        *v13 = v113;
        a2[-1] = v112;
        v115 = *a3;
        if (v115 >= 2)
        {
          v115 = 2;
        }

        v116 = &v15[v115];
        if ((v116[24] + ((v116[28] - v116[24]) * 0.5)) < (v116[16] + ((v116[20] - v116[16]) * 0.5)))
        {
          v118 = *(v15 + 4);
          v117 = *(v15 + 5);
          v119 = *(v15 + 7);
          *(v15 + 4) = *v110;
          *(v15 + 5) = v119;
          *v110 = v118;
          *(v15 + 7) = v117;
          v120 = *a3;
          if (v120 >= 2)
          {
            v120 = 2;
          }

          v121 = &v15[v120];
          if ((v121[16] + ((v121[20] - v121[16]) * 0.5)) < (v121[8] + ((v121[12] - v121[8]) * 0.5)))
          {
            v123 = *(v15 + 2);
            v122 = *(v15 + 3);
            v124 = *(v15 + 5);
            *(v15 + 2) = *(v15 + 4);
            *(v15 + 3) = v124;
            *(v15 + 4) = v123;
            *(v15 + 5) = v122;
            v125 = *a3;
            if (v125 >= 2)
            {
              v125 = 2;
            }

            v126 = &v15[v125];
            if ((v126[8] + ((v126[12] - v126[8]) * 0.5)) < (*v126 + ((v126[4] - *v126) * 0.5)))
            {
              v163 = *v15;
              v188 = *(v15 + 1);
              v127 = *(v15 + 3);
              *v15 = *(v15 + 2);
              *(v15 + 1) = v127;
              *(v15 + 2) = v163;
              *(v15 + 3) = v188;
            }
          }
        }
      }

      return;
    }

    goto LABEL_11;
  }

  v100 = v15 + 8;
  v101 = *a3;
  if (v101 >= 2)
  {
    v101 = 2;
  }

  v102 = &v15[v101];
  v103 = v100[v101] + ((v102[12] - v100[v101]) * 0.5);
  v104 = v13->n128_f32[v101] + ((a2[-1].n128_f32[v101] - v13->n128_f32[v101]) * 0.5);
  if (v103 >= (*v102 + ((v102[4] - *v102) * 0.5)))
  {
    if (v104 < v103)
    {
      v130 = *v100;
      v129 = *(v15 + 12);
      v131 = a2[-1];
      *v100 = *v13;
      *(v15 + 3) = v131;
      *v13 = v130;
      a2[-1] = v129;
      v132 = *a3;
      if (v132 >= 2)
      {
        v132 = 2;
      }

      v133 = &v15[v132];
      if ((v133[8] + ((v133[12] - v133[8]) * 0.5)) < (*v133 + ((v133[4] - *v133) * 0.5)))
      {
        v165 = *v15;
        v190 = *(v15 + 1);
        v134 = *(v15 + 3);
        *v15 = *v100;
        *(v15 + 1) = v134;
        *v100 = v165;
        *(v15 + 3) = v190;
      }
    }
  }

  else
  {
    if (v104 < v103)
    {
LABEL_127:
      v189 = *(v15 + 4);
      v164 = *v15;
      *(v15 + 1) = a2[-1];
      *v15 = *v13;
      a2[-1] = v189;
      *v13 = v164;
      return;
    }

    v162 = *v15;
    v187 = *(v15 + 1);
    v105 = *(v15 + 3);
    *v15 = *v100;
    *(v15 + 1) = v105;
    *v100 = v162;
    *(v15 + 3) = v187;
    v106 = *a3;
    if (v106 >= 2)
    {
      v106 = 2;
    }

    if ((a2[-2].n128_f32[v106] + ((a2[-1].n128_f32[v106] - a2[-2].n128_f32[v106]) * 0.5)) < (v15[v106 + 8] + ((v15[v106 + 12] - v15[v106 + 8]) * 0.5)))
    {
      v108 = *v100;
      v107 = *(v15 + 12);
      v109 = a2[-1];
      *v100 = *v13;
      *(v15 + 3) = v109;
      *v13 = v108;
      a2[-1] = v107;
    }
  }
}

__n128 sub_239DEB2C4(float *a1, float *a2, float *a3, float *a4, unsigned int *a5, __n128 result)
{
  v6 = *a5;
  if (v6 >= 2)
  {
    v6 = 2;
  }

  v7 = a2[v6] + ((a2[v6 + 4] - a2[v6]) * 0.5);
  v8 = a3[v6] + ((a3[v6 + 4] - a3[v6]) * 0.5);
  if (v7 >= (a1[v6] + ((a1[v6 + 4] - a1[v6]) * 0.5)))
  {
    if (v8 < v7)
    {
      v11 = *a2;
      result = *(a2 + 4);
      v12 = *(a3 + 1);
      *a2 = *a3;
      *(a2 + 1) = v12;
      *a3 = v11;
      *(a3 + 1) = result;
      v13 = *a5;
      if (v13 >= 2)
      {
        v13 = 2;
      }

      if ((a2[v13] + ((a2[v13 + 4] - a2[v13]) * 0.5)) < (a1[v13] + ((a1[v13 + 4] - a1[v13]) * 0.5)))
      {
        v14 = *a1;
        result = *(a1 + 4);
        v15 = *(a2 + 1);
        *a1 = *a2;
        *(a1 + 1) = v15;
        *a2 = v14;
        *(a2 + 1) = result;
      }
    }
  }

  else
  {
    if (v8 < v7)
    {
      v9 = *a1;
      result = *(a1 + 4);
      v10 = *(a3 + 1);
      *a1 = *a3;
      *(a1 + 1) = v10;
LABEL_15:
      *a3 = v9;
      *(a3 + 1) = result;
      goto LABEL_16;
    }

    v16 = *a1;
    result = *(a1 + 4);
    v17 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 1) = v17;
    *a2 = v16;
    *(a2 + 1) = result;
    v18 = *a5;
    if (v18 >= 2)
    {
      v18 = 2;
    }

    if ((a3[v18] + ((a3[v18 + 4] - a3[v18]) * 0.5)) < (a2[v18] + ((a2[v18 + 4] - a2[v18]) * 0.5)))
    {
      v9 = *a2;
      result = *(a2 + 4);
      v19 = *(a3 + 1);
      *a2 = *a3;
      *(a2 + 1) = v19;
      goto LABEL_15;
    }
  }

LABEL_16:
  v20 = *a5;
  if (v20 >= 2)
  {
    v20 = 2;
  }

  result.n128_u32[0] = 0.5;
  if ((a4[v20] + ((a4[v20 + 4] - a4[v20]) * 0.5)) < (a3[v20] + ((a3[v20 + 4] - a3[v20]) * 0.5)))
  {
    v22 = *a3;
    v21 = *(a3 + 1);
    v23 = *(a4 + 1);
    *a3 = *a4;
    *(a3 + 1) = v23;
    *a4 = v22;
    *(a4 + 1) = v21;
    v24 = *a5;
    if (v24 >= 2)
    {
      v24 = 2;
    }

    result.n128_f32[0] = a2[v24] + ((a2[v24 + 4] - a2[v24]) * 0.5);
    if ((a3[v24] + ((a3[v24 + 4] - a3[v24]) * 0.5)) < result.n128_f32[0])
    {
      v25 = *a2;
      result = *(a2 + 4);
      v26 = *(a3 + 1);
      *a2 = *a3;
      *(a2 + 1) = v26;
      *a3 = v25;
      *(a3 + 1) = result;
      v27 = *a5;
      if (v27 >= 2)
      {
        v27 = 2;
      }

      result.n128_f32[0] = a2[v27] + ((a2[v27 + 4] - a2[v27]) * 0.5);
      if (result.n128_f32[0] < (a1[v27] + ((a1[v27 + 4] - a1[v27]) * 0.5)))
      {
        v28 = *a1;
        result = *(a1 + 4);
        v29 = *(a2 + 1);
        *a1 = *a2;
        *(a1 + 1) = v29;
        *a2 = v28;
        *(a2 + 1) = result;
      }
    }
  }

  return result;
}

uint64_t sub_239DEB528(uint64_t result, uint64_t a2, unsigned int *a3, double a4, __n128 a5)
{
  if (result != a2)
  {
    v5 = result + 32;
    if (result + 32 != a2)
    {
      v6 = 0;
      v7 = result;
      do
      {
        v8 = v5;
        v9 = *(v7 + 32);
        a5.n128_u64[0] = *(v7 + 48);
        a5.n128_u32[2] = *(v7 + 56);
        v10 = *a3;
        v11 = (&v27 & 0xFFFFFFFFFFFFFFF3 | (4 * (v10 & 3)));
        v12 = (&v26 & 0xFFFFFFFFFFFFFFF3 | (4 * (v10 & 3)));
        v26 = v9;
        if (v10 >= 2)
        {
          v10 = 2;
        }

        v13 = *v12;
        v27 = a5;
        if ((v13 + ((*v11 - v13) * 0.5)) < (*(v7 + 4 * v10) + ((*(v7 + 4 * v10 + 16) - *(v7 + 4 * v10)) * 0.5)))
        {
          v14 = *(v7 + 44);
          v15 = *(v7 + 60);
          v16 = v6;
          while (1)
          {
            v17 = result + v16;
            v18 = *(result + v16 + 16);
            *(v17 + 32) = *(result + v16);
            *(v17 + 48) = v18;
            if (!v16)
            {
              break;
            }

            v19 = *a3;
            v20 = (&v24 & 0xFFFFFFFFFFFFFFF3 | (4 * (v19 & 3)));
            v21 = (&v25 & 0xFFFFFFFFFFFFFFF3 | (4 * (v19 & 3)));
            v25 = v9;
            if (v19 >= 2)
            {
              v19 = 2;
            }

            v22 = *v21;
            v24 = a5;
            v16 -= 32;
            if ((v22 + ((*v20 - v22) * 0.5)) >= (*(v17 + 4 * v19 - 32) + ((*(v17 + 4 * v19 - 16) - *(v17 + 4 * v19 - 32)) * 0.5)))
            {
              v23 = result + v16 + 32;
              goto LABEL_14;
            }
          }

          v23 = result;
LABEL_14:
          *(v23 + 8) = DWORD2(v9);
          *v23 = v9;
          *(v23 + 12) = v14;
          *(v23 + 24) = a5.n128_u32[2];
          *(v23 + 16) = a5.n128_u64[0];
          *(v23 + 28) = v15;
        }

        v5 = v8 + 32;
        v6 += 32;
        v7 = v8;
      }

      while (v8 + 32 != a2);
    }
  }

  return result;
}

uint64_t sub_239DEB670(uint64_t result, uint64_t a2, unsigned int *a3, double a4, __n128 a5)
{
  if (result != a2)
  {
    v5 = result + 32;
    if (result + 32 != a2)
    {
      do
      {
        v6 = v5;
        v7 = *(result + 32);
        a5.n128_u64[0] = *(result + 48);
        a5.n128_u32[2] = *(result + 56);
        v8 = *a3;
        v9 = (&v23 & 0xFFFFFFFFFFFFFFF3 | (4 * (v8 & 3)));
        v10 = (&v22 & 0xFFFFFFFFFFFFFFF3 | (4 * (v8 & 3)));
        v22 = v7;
        if (v8 >= 2)
        {
          v8 = 2;
        }

        v11 = *v10;
        v23 = a5;
        if ((v11 + ((*v9 - v11) * 0.5)) < (*(result + 4 * v8) + ((*(result + 4 * v8 + 16) - *(result + 4 * v8)) * 0.5)))
        {
          v12 = *(result + 44);
          v13 = *(result + 60);
          v14 = v6;
          do
          {
            v15 = *(v14 - 16);
            *v14 = *(v14 - 32);
            *(v14 + 16) = v15;
            v16 = *a3;
            if (v16 >= 2)
            {
              v17 = 2;
            }

            else
            {
              v17 = *a3;
            }

            v18 = v14 + 4 * v17;
            v14 -= 32;
            v21 = v7;
            v19 = *(&v21 & 0xFFFFFFFFFFFFFFF3 | (4 * (v16 & 3)));
            v20 = a5;
          }

          while ((v19 + ((*(&v20 & 0xFFFFFFFFFFFFFFF3 | (4 * (v16 & 3))) - v19) * 0.5)) < (*(v18 - 64) + ((*(v18 - 48) - *(v18 - 64)) * 0.5)));
          *(v14 + 8) = DWORD2(v7);
          *v14 = v7;
          *(v14 + 12) = v12;
          *(v14 + 24) = a5.n128_u32[2];
          *(v14 + 16) = a5.n128_u64[0];
          *(v14 + 28) = v13;
        }

        v5 = v6 + 32;
        result = v6;
      }

      while (v6 + 32 != a2);
    }
  }

  return result;
}

float *sub_239DEB794(float *a1, float *a2, unsigned int *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, __int128 a11, __int128 a12, __int128 a13)
{
  v14 = *a1;
  v13 = *(a1 + 1);
  v15 = *(a1 + 3);
  v16 = *(a1 + 7);
  v17 = *a3;
  a10 = *a1;
  v18 = 2;
  if (v17 < 2)
  {
    v18 = v17;
  }

  v19 = *(&a10 & 0xFFFFFFFFFFFFFFF3 | (4 * (v17 & 3)));
  a11 = v13;
  v20 = v19 + ((*(&a11 & 0xFFFFFFFFFFFFFFF3 | (4 * (v17 & 3))) - v19) * 0.5);
  if (v20 >= (a2[v18 - 8] + ((a2[v18 - 4] - a2[v18 - 8]) * 0.5)))
  {
    v25 = a1 + 8;
    do
    {
      v22 = v25;
      if (v25 >= a2)
      {
        break;
      }

      v26 = v17 >= 2uLL ? 2 : v17;
      v27 = v22[v26] + ((v22[v26 + 4] - v22[v26]) * 0.5);
      v25 = v22 + 8;
    }

    while (v20 >= v27);
  }

  else
  {
    v21 = a1;
    do
    {
      v22 = v21 + 8;
      if (v17 >= 2uLL)
      {
        v23 = 2;
      }

      else
      {
        v23 = v17;
      }

      v24 = v22[v23] + ((v21[v23 + 12] - v22[v23]) * 0.5);
      v21 += 8;
    }

    while (v20 >= v24);
  }

  if (v22 >= a2)
  {
    v29 = a2;
  }

  else
  {
    v28 = v17;
    do
    {
      v29 = a2 - 8;
      if (v28 >= 2)
      {
        v30 = 2;
      }

      else
      {
        v30 = v28;
      }

      v31 = v29[v30] + ((a2[v30 - 4] - v29[v30]) * 0.5);
      a2 -= 8;
    }

    while (v20 < v31);
  }

  while (v22 < v29)
  {
    a13 = *(v22 + 1);
    a12 = *v22;
    *(v22 + 1) = *(v29 + 1);
    *v22 = *v29;
    *(v29 + 1) = a13;
    *v29 = a12;
    v32 = *a3;
    v33 = (&vars0 & 0xFFFFFFFFFFFFFFF3 | (4 * (*a3 & 3)));
    v34 = (&a9 & 0xFFFFFFFFFFFFFFF3 | (4 * (*a3 & 3)));
    a9 = v14;
    v35 = *v34;
    vars0 = v13;
    v36 = v35 + ((*v33 - v35) * 0.5);
    do
    {
      if (v32 >= 2uLL)
      {
        v37 = 2;
      }

      else
      {
        v37 = v32;
      }

      v38 = &v22[v37];
      v22 += 8;
    }

    while (v36 >= (v22[v37] + ((v38[12] - v22[v37]) * 0.5)));
    do
    {
      if (v32 >= 2uLL)
      {
        v39 = 2;
      }

      else
      {
        v39 = v32;
      }

      v40 = &v29[v39];
      v29 -= 8;
    }

    while (v36 < (v29[v39] + ((*(v40 - 4) - v29[v39]) * 0.5)));
  }

  if (v22 - 8 != a1)
  {
    *(a1 + 1) = *(v22 - 1);
    *a1 = *(v22 - 2);
  }

  *(v22 - 6) = *(&v14 + 2);
  *(v22 - 4) = v14;
  *(v22 - 5) = v15;
  *(v22 - 2) = *(&v13 + 2);
  *(v22 - 2) = v13;
  *(v22 - 1) = v16;
  return v22;
}

float *sub_239DEB9E4(float *a1, float *a2, unsigned int *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, __int128 a11, __int128 a12, __int128 a13)
{
  v13 = 0;
  v15 = *a1;
  v14 = *(a1 + 1);
  v16 = *(a1 + 3);
  v17 = *(a1 + 7);
  v18 = *a3;
  v19 = (&a10 & 0xFFFFFFFFFFFFFFF3 | (4 * (*a3 & 3)));
  a10 = *a1;
  v20 = *v19;
  a11 = v14;
  v21 = v20 + ((*(&a11 & 0xFFFFFFFFFFFFFFF3 | (4 * (v18 & 3))) - v20) * 0.5);
  do
  {
    if (v18 >= 2uLL)
    {
      v22 = 2;
    }

    else
    {
      v22 = v18;
    }

    v23 = a1[v13 + 8 + v22] + ((a1[v13 + 12 + v22] - a1[v13 + 8 + v22]) * 0.5);
    v13 += 8;
  }

  while (v23 < v21);
  v24 = &a1[v13];
  if (v13 == 8)
  {
    while (v24 < a2)
    {
      v25 = a2 - 8;
      if (v18 >= 2uLL)
      {
        v28 = 2;
      }

      else
      {
        v28 = v18;
      }

      v29 = v25[v28] + ((a2[v28 - 4] - v25[v28]) * 0.5);
      a2 -= 8;
      if (v29 < v21)
      {
        goto LABEL_18;
      }
    }

    v25 = a2;
  }

  else
  {
    do
    {
      v25 = a2 - 8;
      if (v18 >= 2uLL)
      {
        v26 = 2;
      }

      else
      {
        v26 = v18;
      }

      v27 = v25[v26] + ((a2[v26 - 4] - v25[v26]) * 0.5);
      a2 -= 8;
    }

    while (v27 >= v21);
  }

LABEL_18:
  if (v24 >= v25)
  {
    v30 = v24;
  }

  else
  {
    v30 = v24;
    v31 = v25;
    do
    {
      v32 = *(v30 + 1);
      a12 = *v30;
      v33 = a12;
      a13 = v32;
      *(v30 + 1) = *(v31 + 1);
      *v30 = *v31;
      *v31 = v33;
      *(v31 + 1) = v32;
      v34 = *a3;
      v35 = (&vars0 & 0xFFFFFFFFFFFFFFF3 | (4 * (*a3 & 3)));
      v36 = (&a9 & 0xFFFFFFFFFFFFFFF3 | (4 * (*a3 & 3)));
      a9 = v15;
      LODWORD(v32) = *v36;
      vars0 = v14;
      v37 = *&v32 + ((*v35 - *&v32) * 0.5);
      do
      {
        if (v34 >= 2uLL)
        {
          v38 = 2;
        }

        else
        {
          v38 = v34;
        }

        v39 = &v30[v38];
        v30 += 8;
      }

      while ((v30[v38] + ((v39[12] - v30[v38]) * 0.5)) < v37);
      do
      {
        if (v34 >= 2uLL)
        {
          v40 = 2;
        }

        else
        {
          v40 = v34;
        }

        v41 = &v31[v40];
        v31 -= 8;
      }

      while ((v31[v40] + ((*(v41 - 4) - v31[v40]) * 0.5)) >= v37);
    }

    while (v30 < v31);
  }

  if (v30 - 8 != a1)
  {
    *(a1 + 1) = *(v30 - 1);
    *a1 = *(v30 - 2);
  }

  *(v30 - 6) = *(&v15 + 2);
  *(v30 - 4) = v15;
  *(v30 - 5) = v16;
  *(v30 - 2) = *(&v14 + 2);
  *(v30 - 2) = v14;
  *(v30 - 1) = v17;
  return v30 - 8;
}

BOOL sub_239DEBC00(uint64_t a1, __n128 *a2, unsigned int *a3, __n128 a4, __n128 a5, double a6, __n128 a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __n128 a13, __int128 a14, __n128 a15, __int128 a16, __n128 a17, __int128 a18, __n128 a19, __n128 a20)
{
  v23 = (a2 - a1) >> 5;
  if (v23 > 2)
  {
    if (v23 != 3)
    {
      if (v23 == 4)
      {
        sub_239DEB2C4(a1, (a1 + 32), (a1 + 64), &a2[-2], a3, a4);
        return 1;
      }

      if (v23 == 5)
      {
        v29 = (a1 + 96);
        v30 = &a2[-2];
        sub_239DEB2C4(a1, (a1 + 32), (a1 + 64), (a1 + 96), a3, a4);
        v31 = *a3;
        if (v31 >= 2)
        {
          v31 = 2;
        }

        if ((v30[v31] + ((a2[-1].n128_f32[v31] - v30[v31]) * 0.5)) < (v29[v31] + ((*(a1 + 4 * v31 + 112) - v29[v31]) * 0.5)))
        {
          v33 = *v29;
          v32 = *(a1 + 112);
          v34 = a2[-1];
          *v29 = *v30;
          *(a1 + 112) = v34;
          *v30 = v33;
          a2[-1] = v32;
          v35 = *a3;
          if (v35 >= 2)
          {
            v35 = 2;
          }

          v36 = (a1 + 4 * v35);
          if ((v36[24] + ((v36[28] - v36[24]) * 0.5)) < (v36[16] + ((v36[20] - v36[16]) * 0.5)))
          {
            v38 = *(a1 + 64);
            v37 = *(a1 + 80);
            v39 = *(a1 + 112);
            *(a1 + 64) = *v29;
            *(a1 + 80) = v39;
            *v29 = v38;
            *(a1 + 112) = v37;
            v40 = *a3;
            if (v40 >= 2)
            {
              v40 = 2;
            }

            v41 = (a1 + 4 * v40);
            if ((v41[16] + ((v41[20] - v41[16]) * 0.5)) < (v41[8] + ((v41[12] - v41[8]) * 0.5)))
            {
              v43 = *(a1 + 32);
              v42 = *(a1 + 48);
              v44 = *(a1 + 80);
              *(a1 + 32) = *(a1 + 64);
              *(a1 + 48) = v44;
              *(a1 + 64) = v43;
              *(a1 + 80) = v42;
              v45 = *a3;
              if (v45 >= 2)
              {
                v45 = 2;
              }

              v46 = (a1 + 4 * v45);
              if ((v46[8] + ((v46[12] - v46[8]) * 0.5)) < (*v46 + ((v46[4] - *v46) * 0.5)))
              {
                v48 = *a1;
                v47 = *(a1 + 16);
                v49 = *(a1 + 48);
                *a1 = *(a1 + 32);
                *(a1 + 16) = v49;
                *(a1 + 32) = v48;
                *(a1 + 48) = v47;
              }
            }
          }
        }

        return 1;
      }

      goto LABEL_30;
    }

    v24 = (a1 + 32);
    v50 = &a2[-2];
    v51 = *a3;
    if (v51 >= 2)
    {
      v51 = 2;
    }

    v52 = (a1 + 4 * v51);
    v53 = v24[v51] + ((v52[12] - v24[v51]) * 0.5);
    v54 = v50[v51] + ((a2[-1].n128_f32[v51] - v50[v51]) * 0.5);
    if (v53 >= (*v52 + ((v52[4] - *v52) * 0.5)))
    {
      if (v54 >= v53)
      {
        return 1;
      }

      v71 = *v24;
      v70 = *(a1 + 48);
      v72 = a2[-1];
      *v24 = *v50;
      *(a1 + 48) = v72;
      *v50 = v71;
      a2[-1] = v70;
      v73 = *a3;
      if (v73 >= 2)
      {
        v73 = 2;
      }

      v74 = (a1 + 4 * v73);
      if ((v74[8] + ((v74[12] - v74[8]) * 0.5)) >= (*v74 + ((v74[4] - *v74) * 0.5)))
      {
        return 1;
      }

      v27 = *a1;
      v26 = *(a1 + 16);
      v75 = *(a1 + 48);
      *a1 = *v24;
      *(a1 + 16) = v75;
LABEL_8:
      *v24 = v27;
      *(v24 + 1) = v26;
      return 1;
    }

    if (v54 >= v53)
    {
      v86 = *a1;
      v85 = *(a1 + 16);
      v87 = *(a1 + 48);
      *a1 = *v24;
      *(a1 + 16) = v87;
      *v24 = v86;
      *(a1 + 48) = v85;
      v88 = *a3;
      if (v88 >= 2)
      {
        v88 = 2;
      }

      if ((a2[-2].n128_f32[v88] + ((a2[-1].n128_f32[v88] - a2[-2].n128_f32[v88]) * 0.5)) >= (*(a1 + 4 * v88 + 32) + ((*(a1 + 4 * v88 + 48) - *(a1 + 4 * v88 + 32)) * 0.5)))
      {
        return 1;
      }

      v56 = *v24;
      v55 = *(a1 + 48);
      v89 = a2[-1];
      *v24 = *v50;
      *(a1 + 48) = v89;
    }

    else
    {
      v56 = *a1;
      v55 = *(a1 + 16);
      v57 = a2[-1];
      *a1 = *v50;
      *(a1 + 16) = v57;
    }

    *v50 = v56;
    a2[-1] = v55;
    return 1;
  }

  if (v23 < 2)
  {
    return 1;
  }

  if (v23 == 2)
  {
    v24 = &a2[-2];
    v25 = *a3;
    if (v25 >= 2)
    {
      v25 = 2;
    }

    if ((v24[v25] + ((a2[-1].n128_f32[v25] - v24[v25]) * 0.5)) >= (*(a1 + 4 * v25) + ((*(a1 + 4 * v25 + 16) - *(a1 + 4 * v25)) * 0.5)))
    {
      return 1;
    }

    v27 = *a1;
    v26 = *(a1 + 16);
    v28 = a2[-1];
    *a1 = *v24;
    *(a1 + 16) = v28;
    goto LABEL_8;
  }

LABEL_30:
  v58 = (a1 + 64);
  v59 = *(a1 + 64);
  v60 = (a1 + 32);
  v61 = *a3;
  v62 = 2;
  if (v61 < 2)
  {
    v62 = *a3;
  }

  v63 = v60->n128_f32[v62] + ((*(a1 + 4 * v62 + 48) - v60->n128_f32[v62]) * 0.5);
  v64 = *a1;
  a5.n128_u64[0] = *(a1 + 16);
  a5.n128_u32[2] = *(a1 + 24);
  a17 = *a1;
  a7.n128_u32[0] = *(&a17 & 0xFFFFFFFFFFFFFFF3 | (4 * (v61 & 3)));
  a20 = a5;
  v65 = a7.n128_f32[0] + ((*(&a20 & 0xFFFFFFFFFFFFFFF3 | (4 * (v61 & 3))) - a7.n128_f32[0]) * 0.5);
  a7.n128_u64[0] = *(a1 + 80);
  a7.n128_u32[2] = *(a1 + 88);
  a18 = v59;
  v66 = *(&a18 & 0xFFFFFFFFFFFFFFF3 | (4 * (v61 & 3)));
  a19 = a7;
  v67 = *(&a19 & 0xFFFFFFFFFFFFFFF3 | (4 * (v61 & 3))) - v66;
  if (v63 >= v65)
  {
    if ((v66 + (v67 * 0.5)) < v63)
    {
      v77 = *v60;
      v76 = *(a1 + 48);
      v78 = *(a1 + 80);
      *v60 = *v58;
      *(a1 + 48) = v78;
      *v58 = v77;
      *(a1 + 80) = v76;
      v79 = *a3;
      v80 = 2;
      if (v79 < 2)
      {
        v80 = *a3;
      }

      v81 = *(a1 + 4 * v80 + 32) + ((*(a1 + 4 * v80 + 48) - *(a1 + 4 * v80 + 32)) * 0.5);
      a16 = v64;
      v82 = *(&a16 & 0xFFFFFFFFFFFFFFF3 | (4 * (v79 & 3)));
      a15 = a5;
      if (v81 < (v82 + ((*(&a15 & 0xFFFFFFFFFFFFFFF3 | (4 * (v79 & 3))) - v82) * 0.5)))
      {
        a5 = *a1;
        v83 = *(a1 + 16);
        v84 = *(a1 + 48);
        *a1 = *v60;
        *(a1 + 16) = v84;
        *v60 = a5;
        *(a1 + 48) = v83;
      }
    }
  }

  else
  {
    if ((v66 + (v67 * 0.5)) < v63)
    {
      a5 = *a1;
      v68 = *(a1 + 16);
      v69 = *(a1 + 80);
      *a1 = *v58;
      *(a1 + 16) = v69;
LABEL_55:
      *v58 = a5;
      *(a1 + 80) = v68;
      goto LABEL_56;
    }

    v90 = *a1;
    a5 = *(a1 + 16);
    v91 = *(a1 + 48);
    *a1 = *v60;
    *(a1 + 16) = v91;
    *v60 = v90;
    *(a1 + 48) = a5;
    v92 = *a3;
    v93 = (&a13 & 0xFFFFFFFFFFFFFFF3 | (4 * (v92 & 3)));
    v94 = (&a14 & 0xFFFFFFFFFFFFFFF3 | (4 * (v92 & 3)));
    a14 = v59;
    if (v92 >= 2)
    {
      v92 = 2;
    }

    v95 = *v94;
    a13 = a7;
    if ((v95 + ((*v93 - v95) * 0.5)) < (*(a1 + 4 * v92 + 32) + ((*(a1 + 4 * v92 + 48) - *(a1 + 4 * v92 + 32)) * 0.5)))
    {
      a5 = *v60;
      v68 = *(a1 + 48);
      v96 = *(a1 + 80);
      *v60 = *v58;
      *(a1 + 48) = v96;
      goto LABEL_55;
    }
  }

LABEL_56:
  v97 = (a1 + 96);
  if ((a1 + 96) == a2)
  {
    return 1;
  }

  v98 = 0;
  v99 = 0;
  while (1)
  {
    v100 = *v97;
    a5.n128_u64[0] = v97[1].n128_u64[0];
    a5.n128_u32[2] = v97[1].n128_u32[2];
    v101 = *a3;
    v102 = (&vars0 & 0xFFFFFFFFFFFFFFF3 | (4 * (v101 & 3)));
    v103 = (&v118 & 0xFFFFFFFFFFFFFFF3 | (4 * (v101 & 3)));
    v118 = *v97;
    if (v101 >= 2)
    {
      v101 = 2;
    }

    v104 = *v103;
    vars0 = a5;
    if ((v104 + ((*v102 - v104) * 0.5)) < (v58->n128_f32[v101] + ((v58[1].n128_f32[v101] - v58->n128_f32[v101]) * 0.5)))
    {
      v105 = v97->n128_i32[3];
      v106 = v97[1].n128_i32[3];
      v107 = v98;
      while (1)
      {
        v108 = a1 + v107;
        v109 = *(a1 + v107 + 80);
        *(v108 + 96) = *(a1 + v107 + 64);
        *(v108 + 112) = v109;
        if (v107 == -64)
        {
          break;
        }

        v110 = *a3;
        v111 = (&v116 & 0xFFFFFFFFFFFFFFF3 | (4 * (v110 & 3)));
        v112 = (&v117 & 0xFFFFFFFFFFFFFFF3 | (4 * (v110 & 3)));
        v117 = v100;
        if (v110 >= 2)
        {
          v110 = 2;
        }

        v113 = *v112;
        v116 = a5;
        v107 -= 32;
        if ((v113 + ((*v111 - v113) * 0.5)) >= (*(v108 + 4 * v110 + 32) + ((*(v108 + 4 * v110 + 48) - *(v108 + 4 * v110 + 32)) * 0.5)))
        {
          v114 = a1 + v107 + 96;
          goto LABEL_68;
        }
      }

      v114 = a1;
LABEL_68:
      *(v114 + 8) = v100.n128_u32[2];
      *v114 = v100.n128_u64[0];
      *(v114 + 12) = v105;
      *(v114 + 24) = a5.n128_u32[2];
      *(v114 + 16) = a5.n128_u64[0];
      ++v99;
      *(v114 + 28) = v106;
      if (v99 == 8)
      {
        return &v97[2] == a2;
      }
    }

    v58 = v97;
    v98 += 32;
    v97 += 2;
    if (v97 == a2)
    {
      return 1;
    }
  }
}

__n128 *sub_239DEC2AC(uint64_t a1, __n128 *a2, __n128 *a3, unsigned int *a4, __n128 a5)
{
  if (a1 != a2)
  {
    v9 = (a2 - a1) >> 5;
    if (v9 >= 2)
    {
      v10 = (v9 - 2) >> 1;
      v11 = v10 + 1;
      v12 = (a1 + 32 * v10);
      do
      {
        sub_239DEC450(a1, a4, v9, v12, a5);
        v12 -= 8;
        --v11;
      }

      while (v11);
    }

    v13 = a2;
    if (a2 != a3)
    {
      v13 = a2;
      do
      {
        v14 = *a4;
        if (v14 >= 2)
        {
          v14 = 2;
        }

        if ((v13->n128_f32[v14] + ((v13[1].n128_f32[v14] - v13->n128_f32[v14]) * 0.5)) < (*(a1 + 4 * v14) + ((*(a1 + 4 * v14 + 16) - *(a1 + 4 * v14)) * 0.5)))
        {
          v16 = *v13;
          v15 = v13[1];
          v17 = *(a1 + 16);
          *v13 = *a1;
          v13[1] = v17;
          *a1 = v16;
          *(a1 + 16) = v15;
          sub_239DEC450(a1, a4, v9, a1, v15);
        }

        v13 += 2;
      }

      while (v13 != a3);
    }

    if (v9 >= 2)
    {
      v18 = a2 - 2;
      do
      {
        v22 = *a1;
        v23 = *(a1 + 16);
        v19 = sub_239DEC638(a1, a4, v9);
        if (v18 == v19)
        {
          *v19 = v22;
          v19[1] = v23;
        }

        else
        {
          v19[1] = v18[1];
          *v19 = *v18;
          *v18 = v22;
          v18[1] = v23;
          sub_239DEC6D8(a1, &v19[2], a4, (&v19[2] - a1) >> 5, v23.n128_f64[0], v22);
        }

        v18 -= 2;
      }

      while (v9-- > 2);
    }

    return v13;
  }

  return a3;
}

uint64_t sub_239DEC450(uint64_t result, unsigned int *a2, uint64_t a3, float *a4, __n128 a5)
{
  if (a3 >= 2)
  {
    v5 = a4 - result;
    v6 = (a3 - 2) >> 1;
    if (v6 >= (a4 - result) >> 5)
    {
      v7 = v5 >> 4;
      v8 = (v5 >> 4) + 1;
      v9 = (result + 32 * v8);
      v10 = v7 + 2;
      v11 = *a2;
      if (v10 < a3)
      {
        v12 = 2;
        if (v11 < 2)
        {
          v12 = *a2;
        }

        if ((v9[v12] + ((v9[v12 + 4] - v9[v12]) * 0.5)) < (v9[v12 + 8] + ((v9[v12 + 12] - v9[v12 + 8]) * 0.5)))
        {
          v9 += 8;
          v8 = v10;
        }
      }

      v13 = 2;
      if (v11 < 2)
      {
        v13 = *a2;
      }

      v14 = v9[v13] + ((v9[v13 + 4] - v9[v13]) * 0.5);
      v15 = *a4;
      a5.n128_u64[0] = *(a4 + 2);
      a5.n128_f32[2] = a4[6];
      v29 = *a4;
      v16 = *(&v29 & 0xFFFFFFFFFFFFFFF3 | (4 * (v11 & 3)));
      v30 = a5;
      if (v14 >= (v16 + ((*(&v30 & 0xFFFFFFFFFFFFFFF3 | (4 * (v11 & 3))) - v16) * 0.5)))
      {
        v17 = *(a4 + 3);
        v18 = *(a4 + 7);
        do
        {
          v19 = a4;
          a4 = v9;
          *(v19 + 1) = *(v9 + 1);
          *v19 = *v9;
          if (v6 < v8)
          {
            break;
          }

          v20 = 2 * v8;
          v8 = (2 * v8) | 1;
          v9 = (result + 32 * v8);
          v21 = v20 + 2;
          v22 = *a2;
          if (v21 < a3)
          {
            v23 = v22 >= 2 ? 2 : *a2;
            if ((v9[v23] + ((v9[v23 + 4] - v9[v23]) * 0.5)) < (v9[v23 + 8] + ((v9[v23 + 12] - v9[v23 + 8]) * 0.5)))
            {
              v9 += 8;
              v8 = v21;
            }
          }

          v24 = v22 >= 2 ? 2 : *a2;
          v25 = v9[v24] + ((v9[v24 + 4] - v9[v24]) * 0.5);
          v28 = v15;
          v26 = *(&v28 & 0xFFFFFFFFFFFFFFF3 | (4 * (v22 & 3)));
          v27 = a5;
        }

        while (v25 >= (v26 + ((*(&v27 & 0xFFFFFFFFFFFFFFF3 | (4 * (v22 & 3))) - v26) * 0.5)));
        a4[2] = *(&v15 + 2);
        *a4 = v15;
        *(a4 + 3) = v17;
        a4[6] = a5.n128_f32[2];
        *(a4 + 2) = a5.n128_u64[0];
        *(a4 + 7) = v18;
      }
    }
  }

  return result;
}

_OWORD *sub_239DEC638(_OWORD *result, unsigned int *a2, uint64_t a3)
{
  v3 = 0;
  do
  {
    v4 = result;
    v5 = &result[2 * v3];
    result = v5 + 2;
    v6 = 2 * v3;
    v3 = (2 * v3) | 1;
    v7 = v6 + 2;
    if (v7 < a3)
    {
      v8 = *a2;
      if (v8 >= 2)
      {
        v8 = 2;
      }

      if ((*(v5 + v8 + 8) + ((*(v5 + v8 + 12) - *(v5 + v8 + 8)) * 0.5)) < (*(v5 + v8 + 16) + ((*(v5 + v8 + 20) - *(v5 + v8 + 16)) * 0.5)))
      {
        result = v5 + 4;
        v3 = v7;
      }
    }

    v4[1] = result[1];
    *v4 = *result;
  }

  while (v3 <= (a3 - 2) / 2);
  return result;
}

uint64_t sub_239DEC6D8(uint64_t result, uint64_t a2, unsigned int *a3, uint64_t a4, double a5, __n128 a6)
{
  v6 = a4 - 2;
  if (a4 >= 2)
  {
    v7 = v6 >> 1;
    v8 = (result + 32 * (v6 >> 1));
    v9 = (a2 - 32);
    v10 = *(a2 - 32);
    v11 = *a3;
    v12 = 2;
    if (v11 < 2)
    {
      v12 = *a3;
    }

    v13 = v8[v12] + ((v8[v12 + 4] - v8[v12]) * 0.5);
    a6.n128_u64[0] = *(a2 - 16);
    a6.n128_u32[2] = *(a2 - 8);
    v24 = *(a2 - 32);
    v14 = *(&v24 & 0xFFFFFFFFFFFFFFF3 | (4 * (v11 & 3)));
    v25 = a6;
    if (v13 < (v14 + ((*(&v25 & 0xFFFFFFFFFFFFFFF3 | (4 * (v11 & 3))) - v14) * 0.5)))
    {
      v15 = *(a2 - 20);
      v16 = *(a2 - 4);
      do
      {
        v17 = v9;
        v9 = v8;
        *(v17 + 1) = *(v8 + 1);
        *v17 = *v8;
        if (!v7)
        {
          break;
        }

        v7 = (v7 - 1) >> 1;
        v8 = (result + 32 * v7);
        v18 = *a3;
        v19 = v18 >= 2 ? 2 : *a3;
        v20 = v8[v19] + ((v8[v19 + 4] - v8[v19]) * 0.5);
        v23 = v10;
        v21 = *(&v23 & 0xFFFFFFFFFFFFFFF3 | (4 * (v18 & 3)));
        v22 = a6;
      }

      while (v20 < (v21 + ((*(&v22 & 0xFFFFFFFFFFFFFFF3 | (4 * (v18 & 3))) - v21) * 0.5)));
      v9[2] = *(&v10 + 2);
      *v9 = v10;
      *(v9 + 3) = v15;
      v9[6] = a6.n128_f32[2];
      *(v9 + 2) = a6.n128_u64[0];
      *(v9 + 7) = v16;
    }
  }

  return result;
}

void sub_239DEC804(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>, float32x4_t a5@<Q0>, float32x4_t a6@<Q1>)
{
  v102 = a2;
  v111 = a6;
  v110 = a5;
  v130 = *MEMORY[0x277D85DE8];
  _Q4 = vsubq_f32(a6, a5);
  _S2 = _Q4.i32[2];
  __asm { FMLA            S1, S2, V4.S[1] }

  a5.f32[0] = 1.0 / (_S1 + _S1);
  v109 = a5;
  *a4 = 2139095040;
  *(a4 + 4) = 0;
  *(a4 + 12) = 2139095040;
  *(a4 + 16) = 0;
  v16.i64[0] = 0x7F0000007FLL;
  v16.i64[1] = 0x7F0000007FLL;
  v17 = vnegq_f32(v16);
  *(a4 + 32) = v17;
  v18 = (a4 + 32);
  *(a4 + 48) = v16;
  *(a4 + 64) = v17;
  v108 = v17;
  *(a4 + 80) = v16;
  *(a4 + 96) = 0;
  v19 = *(a1 + 44);
  MEMORY[0x28223BE20]();
  v21 = v101 - v20;
  v107 = v22;
  bzero(v101 - v20, v22);
  MEMORY[0x28223BE20]();
  v23 = &v101[-4 * v19];
  bzero(v23, 32 * v19);
  MEMORY[0x28223BE20]();
  bzero(v23, 32 * v19);
  v28 = v109.f32[0];
  v29 = v110;
  v30 = v111;
  v31 = 0;
  v113 = (a3 + 0x7FFF) >> 15;
  v101[1] = v121;
  v32 = (v19 - 1);
  v104 = a3;
  v103 = v102 + 16;
  v106 = v23 + 1;
  f32 = v23[1].f32;
  v105 = &v23[2 * v32 + 1];
  do
  {
    v119 = v30;
    v33 = *(&v119 & 0xFFFFFFFFFFFFFFF3 | (4 * (v31 & 3)));
    v118 = v29;
    v34 = *(&v118 & 0xFFFFFFFFFFFFFFF3 | (4 * (v31 & 3)));
    v35 = v33 - v34;
    if ((v33 - v34) >= 0.001)
    {
      v115 = v26;
      v114 = v27;
      if (v19)
      {
        bzero(v21, v107);
        v27 = v114;
        v26 = v115;
        v24 = v108;
        *&v36 = 0x7F0000007FLL;
        *(&v36 + 1) = 0x7F0000007FLL;
        v28 = v109.f32[0];
        v29 = v110;
        v30 = v111;
        v37 = v19;
        v38 = f32;
        do
        {
          *(v38 - 1) = v24;
          *v38 = v36;
          v38 += 2;
          --v37;
        }

        while (v37);
      }

      if (v113 == 1 || (v39 = *(a1 + 64)) == 0)
      {
        if (a3)
        {
          v40 = v104;
          v41 = v103;
          do
          {
            v24.i64[0] = *(v41 - 16);
            v42 = *(v41 - 8);
            v43.i32[3] = 0;
            v43.i64[0] = v24.i64[0];
            v25.i64[0] = *v41;
            v44.i32[3] = 0;
            v44.i64[0] = *v41;
            v24.i32[2] = v42;
            v45 = *(v41 + 8);
            v25.i32[2] = v45;
            v46 = vsubq_f32(v25, v24);
            v116 = v24;
            v47 = *(&v116 & 0xFFFFFFFFFFFFFFF3 | (4 * (v31 & 3)));
            v117 = v46;
            LODWORD(v48) = ((((v47 + (*(&v117 & 0xFFFFFFFFFFFFFFF3 | (4 * (v31 & 3))) * 0.5)) - v34) / v35) * v19);
            if (v32 >= v48)
            {
              v48 = v48;
            }

            else
            {
              v48 = v32;
            }

            v49 = &v23[2 * v48];
            v50 = *v49;
            v25 = v49[1];
            v43.i32[2] = v42;
            v50.i32[3] = 0;
            v25.i32[3] = 0;
            v44.i32[2] = v45;
            ++*&v21[4 * v48];
            v51 = vminnmq_f32(v50, v43);
            v24 = vmaxnmq_f32(v25, v44);
            v49->i32[2] = v51.i32[2];
            v49->i64[0] = v51.i64[0];
            v49[1].i32[2] = v24.i32[2];
            v49[1].i64[0] = v24.i64[0];
            v41 += 32;
            --v40;
          }

          while (v40);
        }
      }

      else
      {
        __dmb(0xBu);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        v121[0] = sub_239DECEBC;
        v121[1] = &unk_278B3B390;
        v127 = v19;
        v128 = a3;
        v129 = v31;
        v122 = v29;
        v123 = v30;
        v124 = v102;
        v125 = v21;
        v126 = &v101[-4 * v19];
        dispatch_apply(v113, v39, block);
        v27 = v114;
        v26 = v115;
        v28 = v109.f32[0];
        v29 = v110;
        v30 = v111;
        __dmb(9u);
      }

      if (v19)
      {
        v52.i64[0] = 0x7F0000007FLL;
        v52.i64[1] = 0x7F0000007FLL;
        v53 = vnegq_f32(v52);
        v54 = v19;
        v55 = f32;
        v56 = v106;
        do
        {
          v56[-1] = v53;
          *v56 = v52;
          v57 = v55[-1];
          v58 = *v55;
          v59 = v53;
          v59.i32[3] = 0;
          v57.i32[3] = 0;
          v60 = vminnmq_f32(v59, v57);
          v61 = v52;
          v61.i32[3] = 0;
          v58.i32[3] = 0;
          v25 = vmaxnmq_f32(v61, v58);
          v60.i32[3] = v53.i32[3];
          v56 += 2;
          v25.i32[3] = v52.i32[3];
          v55 += 2;
          v52 = v25;
          v53 = v60;
          --v54;
        }

        while (v54);
      }

      v62 = *a4;
      v64 = *(a4 + 4);
      v63 = *(a4 + 8);
      v65 = *(a4 + 12);
      v67 = *(a4 + 16);
      v66 = *(a4 + 20);
      v24 = *(a4 + 64);
      if (v19 != 1)
      {
        v68 = 0;
        v69 = (a1 + 16);
        v70 = *(a1 + 32);
        v71 = *(a4 + 80);
        v72.i64[0] = 0x7F0000007FLL;
        v72.i64[1] = 0x7F0000007FLL;
        v73 = vnegq_f32(v72);
        v74 = vld1_dup_f32(v69);
        v75 = &v23[2 * v32];
        v76 = v105;
        v77 = (v19 - 1);
        v78 = a3;
        do
        {
          v79 = v73;
          v80 = v72;
          v81 = v76[-1];
          v82 = *v76;
          v83 = v79;
          v83.i32[3] = 0;
          v81.i32[3] = 0;
          v84 = vminnmq_f32(v83, v81);
          v85 = v80;
          v85.i32[3] = 0;
          v82.i32[3] = 0;
          v86 = vmaxnmq_f32(v85, v82);
          v73 = v84;
          v73.i32[3] = v79.i32[3];
          v72 = v86;
          v72.i32[3] = v80.i32[3];
          v87 = *&v21[4 * v77];
          v78 -= v87;
          v68 += v87;
          if (v78 >= v70 && v68 >= v70)
          {
            v88 = vsubq_f32(v72, v73);
            v89 = *v75;
            v90 = v75[1];
            v91 = vsubq_f32(v90, *v75);
            v92 = vzip1_s32(*v88.i8, *v91.i8);
            v93 = vzip2_s32(*v88.i8, *v91.i8);
            *v88.i8 = vzip1_s32(*&vextq_s8(v88, v88, 8uLL), *&vextq_s8(v91, v91, 8uLL));
            *v91.i8 = vmla_f32(vmla_f32(vmul_f32(v92, *v88.i8), v93, v92), *v88.i8, v93);
            *v88.i8 = vmul_f32(v74, vmul_f32(vmul_n_f32(vadd_f32(*v91.i8, *v91.i8), v28), vcvt_f32_u32(__PAIR64__(v78, v68))));
            v94 = *v88.i32 + (*&v88.i32[1] + 2.0);
            if (v94 < v62)
            {
              v89.i32[3] = 0;
              v84.i32[3] = 0;
              v90.i32[3] = 0;
              v86.i32[3] = 0;
              v95 = vmaxnmq_f32(v89, v84);
              v96 = vminnmq_f32(v90, v86);
              v95.i32[3] = v27.i32[3];
              v96.i32[3] = v26.i32[3];
              v97 = vsubq_f32(v96, v95);
              v98 = vmul_f32(*v97.i8, *&vextq_s8(v97, v97, 4uLL));
              v65 = (v98.f32[1] + (v98.f32[0] + (*v97.i32 * *&v97.i32[2]))) + (v98.f32[1] + (v98.f32[0] + (*v97.i32 * *&v97.i32[2])));
              if (v65 < 0.0)
              {
                v65 = 0.0;
              }

              v71 = v72;
              v99 = v75[1];
              v24 = v73;
              v66 = v68;
              v67 = v78;
              v63 = v77;
              *v18 = *v75;
              v18[1] = v99;
              v64 = v31;
              v62 = v94;
              v26 = v96;
              v27 = v95;
            }
          }

          v76 -= 2;
          v75 -= 2;
          --v77;
        }

        while (v77);
        *(a4 + 80) = v71;
      }

      *a4 = v62;
      *(a4 + 4) = v64;
      *(a4 + 8) = v63;
      *(a4 + 12) = v65;
      *(a4 + 16) = v67;
      *(a4 + 20) = v66;
      *(a4 + 64) = v24;
    }

    ++v31;
  }

  while (v31 != 3);
  v100 = *MEMORY[0x277D85DE8];
}

void sub_239DECEBC(uint64_t a1, int a2)
{
  v74 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 88);
  MEMORY[0x28223BE20]();
  v5 = &v72 - ((4 * v4 + 15) & 0x7FFFFFFF0);
  bzero(v5, 4 * v4);
  MEMORY[0x28223BE20]();
  v6 = &v72 - 2 * v4;
  bzero(v6, v7);
  if (v4)
  {
    bzero(&v72 - ((4 * v4 + 15) & 0x7FFFFFFF0), 4 * v4);
    v10 = v6 + 1;
    v11.i64[0] = 0x7F0000007FLL;
    v11.i64[1] = 0x7F0000007FLL;
    v12 = vnegq_f32(v11);
    v13 = v4;
    do
    {
      v10[-1] = v12;
      *v10 = v11;
      v10 += 2;
      --v13;
    }

    while (v13);
  }

  v14 = *(a1 + 92);
  if ((a2 << 15) + 0x8000 < v14)
  {
    v14 = (a2 << 15) + 0x8000;
  }

  if (a2 << 15 < v14)
  {
    v15 = a1 + 4 * (*(a1 + 96) & 3);
    v16 = *(v15 + 32);
    v17 = *(v15 + 48) - v16;
    v18 = v4 - 1;
    v19 = *(a1 + 64) + ((*&a2 & 0x1FFFFLL) << 20) + 16;
    v20 = v14 - (a2 << 15);
    v21 = *(a1 + 96);
    v22 = (&v72 & 0xFFFFFFFFFFFFFFF3 | (4 * (v21 & 3)));
    v23 = (&v73 & 0xFFFFFFFFFFFFFFF3 | (4 * (v21 & 3)));
    do
    {
      v8.i64[0] = *(v19 - 16);
      v24 = *(v19 - 8);
      v25.i32[3] = 0;
      v25.i64[0] = v8.i64[0];
      v9.i64[0] = *v19;
      v9.i32[2] = *(v19 + 8);
      v8.i32[2] = v24;
      v26 = vsubq_f32(v9, v8);
      v72 = v8;
      v27 = *v22;
      v73 = v26;
      LODWORD(v28) = ((((v27 + (*v23 * 0.5)) - v16) / v17) * v4);
      if (v18 >= v28)
      {
        v28 = v28;
      }

      else
      {
        v28 = v18;
      }

      v29 = &v6[2 * v28];
      v30 = *v29;
      v31 = v29[1];
      v25.i32[2] = v24;
      v30.i32[3] = 0;
      v31.i32[3] = 0;
      v9.i32[3] = 0;
      ++*&v5[4 * v28];
      v8 = vminnmq_f32(v30, v25);
      v32 = vmaxnmq_f32(v31, v9);
      v29->i32[2] = v8.i32[2];
      v29->i64[0] = v8.i64[0];
      v29[1].i32[2] = v32.i32[2];
      v29[1].i64[0] = v32.i64[0];
      v19 += 32;
      --v20;
    }

    while (v20);
  }

  if (v4)
  {
    v33 = 0;
    do
    {
      atomic_fetch_add((*(a1 + 72) + 4 * v33), *&v5[4 * v33]);
      v34 = (*(a1 + 80) + 32 * v33);
      f32 = v6[2 * v33].f32;
      v36 = *f32;
      v37 = COERCE_FLOAT(atomic_load(v34));
      v38 = LODWORD(v37);
      if (*&v36 <= v37)
      {
        v38 = *f32;
      }

      v39 = v37;
      atomic_compare_exchange_strong_explicit(v34, &v39, v38, memory_order_release, memory_order_relaxed);
      if (LODWORD(v39) != LODWORD(v37))
      {
        v40 = v39;
        do
        {
          v41 = v39;
          if (*&v36 <= v39)
          {
            v41 = *&v36;
          }

          atomic_compare_exchange_strong_explicit(v34, &v40, LODWORD(v41), memory_order_release, memory_order_relaxed);
          v42 = LODWORD(v40) == LODWORD(v39);
          v39 = v40;
        }

        while (!v42);
      }

      v43 = COERCE_FLOAT(atomic_load(v34 + 1));
      v44 = v43;
      if (*(&v36 + 1) <= v43)
      {
        v44 = *(&v36 + 1);
      }

      v45 = v43;
      atomic_compare_exchange_strong_explicit(v34 + 1, &v45, LODWORD(v44), memory_order_release, memory_order_relaxed);
      if (LODWORD(v45) != LODWORD(v43))
      {
        v46 = v45;
        do
        {
          v47 = v45;
          if (*(&v36 + 1) <= v45)
          {
            v47 = *(&v36 + 1);
          }

          atomic_compare_exchange_strong_explicit(v34 + 1, &v46, LODWORD(v47), memory_order_release, memory_order_relaxed);
          v42 = LODWORD(v46) == LODWORD(v45);
          v45 = v46;
        }

        while (!v42);
      }

      v48 = f32[2];
      v49 = COERCE_FLOAT(atomic_load(v34 + 2));
      v50 = LODWORD(v49);
      if (v48 <= v49)
      {
        v50 = *(f32 + 2);
      }

      v51 = v49;
      atomic_compare_exchange_strong_explicit(v34 + 2, &v51, v50, memory_order_release, memory_order_relaxed);
      if (LODWORD(v51) != LODWORD(v49))
      {
        v52 = v51;
        do
        {
          *&v53 = v51;
          if (v48 <= v51)
          {
            *&v53 = v48;
          }

          atomic_compare_exchange_strong_explicit(v34 + 2, &v52, v53, memory_order_release, memory_order_relaxed);
          v42 = LODWORD(v52) == LODWORD(v51);
          v51 = v52;
        }

        while (!v42);
      }

      v54 = *(f32 + 1);
      v55 = COERCE_FLOAT(atomic_load(v34 + 4));
      v56 = LODWORD(v55);
      if (*&v54 > v55)
      {
        v56 = *(f32 + 1);
      }

      v57 = v55;
      atomic_compare_exchange_strong_explicit(v34 + 4, &v57, v56, memory_order_release, memory_order_relaxed);
      if (LODWORD(v57) != LODWORD(v55))
      {
        v58 = v57;
        do
        {
          v59 = v57;
          if (*&v54 > v57)
          {
            v59 = *&v54;
          }

          atomic_compare_exchange_strong_explicit(v34 + 4, &v58, LODWORD(v59), memory_order_release, memory_order_relaxed);
          v42 = LODWORD(v58) == LODWORD(v57);
          v57 = v58;
        }

        while (!v42);
      }

      v60 = COERCE_FLOAT(atomic_load(v34 + 5));
      v61 = v60;
      if (*(&v54 + 1) > v60)
      {
        v61 = *(&v54 + 1);
      }

      v62 = v60;
      atomic_compare_exchange_strong_explicit(v34 + 5, &v62, LODWORD(v61), memory_order_release, memory_order_relaxed);
      if (LODWORD(v62) != LODWORD(v60))
      {
        v63 = v62;
        do
        {
          v64 = v62;
          if (*(&v54 + 1) > v62)
          {
            v64 = *(&v54 + 1);
          }

          atomic_compare_exchange_strong_explicit(v34 + 5, &v63, LODWORD(v64), memory_order_release, memory_order_relaxed);
          v42 = LODWORD(v63) == LODWORD(v62);
          v62 = v63;
        }

        while (!v42);
      }

      v65 = f32[6];
      v66 = COERCE_FLOAT(atomic_load(v34 + 6));
      v67 = LODWORD(v66);
      if (v65 > v66)
      {
        v67 = *(f32 + 6);
      }

      v68 = v66;
      atomic_compare_exchange_strong_explicit(v34 + 6, &v68, v67, memory_order_release, memory_order_relaxed);
      if (LODWORD(v68) != LODWORD(v66))
      {
        v69 = v68;
        do
        {
          *&v70 = v68;
          if (v65 > v68)
          {
            *&v70 = v65;
          }

          atomic_compare_exchange_strong_explicit(v34 + 6, &v69, v70, memory_order_release, memory_order_relaxed);
          v42 = LODWORD(v69) == LODWORD(v68);
          v68 = v69;
        }

        while (!v42);
      }

      ++v33;
    }

    while (v33 < *(a1 + 88));
  }

  v71 = *MEMORY[0x277D85DE8];
}

uint64_t sub_239DED2EC(uint64_t result, uint64_t a2, float *a3, int a4, __n128 a5, __n128 a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __n128 a11, __int128 a12, __int128 a13)
{
  if (a4)
  {
    v13 = *(a2 + 4);
    v14 = *(a2 + 8);
    v15 = &a3[8 * a4];
    v16 = *(result + 44);
    a11 = a5;
    v17 = *(&a11 & 0xFFFFFFFFFFFFFFF3 | (4 * (v13 & 3)));
    vars0 = a6;
    v18 = *(&vars0 & 0xFFFFFFFFFFFFFFF3 | (4 * (v13 & 3))) - v17;
    v19 = v16;
    v20 = v16 - 1;
    while (1)
    {
LABEL_3:
      if (v13 >= 2)
      {
        v21 = 2;
      }

      else
      {
        v21 = v13;
      }

      v22 = ((((a3[v21] + ((a3[v21 + 4] - a3[v21]) * 0.5)) - v17) / v18) * v19);
      if (v20 < v22)
      {
        v22 = v20;
      }

      if (v22 >= v14)
      {
        break;
      }

      a3 += 8;
      if (a3 == v15)
      {
        return result;
      }
    }

    v23 = v15;
    while (1)
    {
      v15 = v23 - 8;
      if (v23 - 8 == a3)
      {
        break;
      }

      if (v13 >= 2)
      {
        v24 = 2;
      }

      else
      {
        v24 = v13;
      }

      v25 = ((((v23[v24 - 8] + ((v23[v24 - 4] - v23[v24 - 8]) * 0.5)) - v17) / v18) * v19);
      if (v20 >= v25)
      {
        v26 = v25;
      }

      else
      {
        v26 = v20;
      }

      v23 = v15;
      if (v26 < v14)
      {
        a13 = *(a3 + 1);
        a12 = *a3;
        *(a3 + 1) = *(v15 + 1);
        *a3 = *v15;
        a3 += 8;
        *(v15 + 1) = a13;
        *v15 = a12;
        if (v15 != a3)
        {
          goto LABEL_3;
        }

        return result;
      }
    }
  }

  return result;
}

BOOL sub_239DED42C(uint64_t a1, double a2, double a3, float32x4_t a4, float32x4_t a5, uint64_t a6, float *a7, unsigned int a8, uint64_t a9, _DWORD *a10, __int32 *a11, __n128 *a12, _OWORD *a13)
{
  v50 = *MEMORY[0x277D85DE8];
  sub_239DEC804(a1, a7, a8, &v43, a4, a5);
  v26 = v43.f32[0];
  v27 = v43.f32[0];
  if (v43.f32[0] == INFINITY)
  {
    sub_239DE9F60(a1, a7, a8, v20, v21, v22, v37, a4, a5);
    v47 = v40;
    v48 = v41;
    v49 = v42;
    v43 = v37[0];
    v44 = v37[1];
    v24 = v38;
    v23 = v39;
    v45 = v38;
    v46 = v39;
    v27 = v37[0].f32[0];
  }

  v28 = *(a1 + 16) * a8;
  v24.n128_u32[0] = 2139095040;
  if (*(a1 + 36) >= a8)
  {
    v29 = *(a1 + 16) * a8;
  }

  else
  {
    v29 = INFINITY;
  }

  if (v27 < v29)
  {
    v23.n128_u32[0] = 2139095040;
    if (v26 == INFINITY)
    {
      sub_239DEA218(v23, v24, a1, &v43, a7, a8, v19, v20, v21, v22);
    }

    else
    {
      sub_239DED2EC(a1, &v43, a7, a8, a4, a5, v19, v20, v21, v22, v25, *&a4, *&a5);
    }

    v30 = v44.i32[1];
    *a10 = v44.i32[0];
    *a11 = v30;
    v31 = v46;
    *a12 = v45;
    a12[1] = v31;
    v32 = v48;
    *a13 = v47;
    a13[1] = v32;
  }

  result = v27 < v29;
  v34 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_239DED5C0(uint64_t a1)
{
  sub_239E0512C(a1);

  JUMPOUT(0x23EE7D780);
}

void sub_239DEDCF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a22)
  {
    operator delete(a22);
  }

  if (a25)
  {
    operator delete(a25);
  }

  if (a28)
  {
    operator delete(a28);
  }

  if (a31)
  {
    operator delete(a31);
  }

  _Unwind_Resume(exception_object);
}

void sub_239DEDD74(uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      sub_239DEDF38();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      sub_239DEDFE0(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

void sub_239DEDE48(const void **a1, _DWORD *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      sub_239DEDF38();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFFCLL;
    v12 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      sub_239DEE028(a1, v12);
    }

    v13 = (4 * (v8 >> 2));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

void sub_239DEDF50(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_239DEDFAC(exception, a1);
  __cxa_throw(exception, &unk_284D08810, MEMORY[0x277D825F0]);
}

std::logic_error *sub_239DEDFAC(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void sub_239DEDFE0(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_239DE77E8();
}

void sub_239DEE028(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  sub_239DE77E8();
}

uint64_t sub_239DEEE1C(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v8 = a2;
  if ((atomic_load_explicit(&qword_27DF88718, memory_order_acquire) & 1) == 0)
  {
    sub_239E20B34();
  }

  std::mutex::lock(&stru_27DF886D8);
  if (!qword_27DF886D0)
  {
    operator new();
  }

  v5 = sub_239DE7494(qword_27DF886D0, &v8);
  if (!v5)
  {
    operator new();
  }

  sub_239DF1484(v5[3], a4);
  std::mutex::unlock(&stru_27DF886D8);
  MPSLibrary::CreateUberShaderKey();
  PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
  MPSLibrary::ReleaseMPSKey();
  return PipelineStateForMPSKey;
}

uint64_t sub_239DEEFC0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v5 = a2[8];
  v6 = v5[1];
  v34 = *v5;
  v35 = v6;
  v7 = MPSCreateFunctionConstantValues();
  v9 = v7;
  v10 = *a3;
  v11 = *(a3 + 1);
  v12.i64[0] = -1;
  v12.i64[1] = -1;
  v13 = vceqq_s64(v11, v12);
  if (*a3 != -1 || ((v14 = vaddvq_s32(vbicq_s8(xmmword_239E26D10, vuzp1q_s32(vceqq_s64(*(a3 + 3), v12), vceqq_s64(*(a3 + 4), v12)))) & 0xF, (~vaddvq_s32(vandq_s8(vuzp1q_s32(v13, vceqq_s64(*(a3 + 3), v12)), xmmword_239E26D10)) & 0xF) == 0) ? (v15 = v14 == 0) : (v15 = 0), v15 ? (v16 = a3[5] == -1) : (v16 = 0), !v16))
  {
    if ((vuzp1_s16(vmovn_s64(v13), *v11.i8).u8[0] & 1) == 0)
    {
      v36 = *(a3 + 1);
      objc_msgSend_setConstantValue_type_atIndex_(v7, v8, &v36, 33, 126);
      v10 = *a3;
    }

    if (v10 != -1)
    {
      v36 = v10;
      objc_msgSend_setConstantValue_type_atIndex_(v9, v8, &v36, 33, 125);
    }

    if (a3[2] != -1)
    {
      v36 = a3[2];
      objc_msgSend_setConstantValue_type_atIndex_(v9, v8, &v36, 33, 124);
    }

    if (a3[3] != -1)
    {
      v36 = a3[3];
      objc_msgSend_setConstantValue_type_atIndex_(v9, v8, &v36, 33, 123);
    }

    if (a3[4] != -1)
    {
      v36 = a3[4];
      objc_msgSend_setConstantValue_type_atIndex_(v9, v8, &v36, 33, 119);
    }

    if (a3[5] != -1)
    {
      v36 = a3[5];
      objc_msgSend_setConstantValue_type_atIndex_(v9, v8, &v36, 33, 118);
    }

    if (a3[8] != -1)
    {
      v36 = a3[8];
      objc_msgSend_setConstantValue_type_atIndex_(v9, v8, &v36, 33, 122);
    }

    if (a3[9] != -1)
    {
      v36 = a3[9];
      objc_msgSend_setConstantValue_type_atIndex_(v9, v8, &v36, 33, 121);
    }

    if (a3[6] != -1)
    {
      v36 = a3[6];
      objc_msgSend_setConstantValue_type_atIndex_(v9, v8, &v36, 33, 117);
    }

    if (a3[7] != -1)
    {
      v36 = a3[7];
      objc_msgSend_setConstantValue_type_atIndex_(v9, v8, &v36, 33, 116);
    }
  }

  v17 = v34;
  v36 = (v34 >> 2) & 1;
  objc_msgSend_setConstantValue_type_atIndex_(v9, v8, &v36, 33, 0);
  v33 = (v34 & 8) != 0;
  objc_msgSend_setConstantValue_type_atIndex_(v9, v18, &v33, 53, 1);
  v32 = (v17 & 0x10) != 0;
  objc_msgSend_setConstantValue_type_atIndex_(v9, v19, &v32, 53, 2);
  v31 = (v17 & 0x20) != 0;
  objc_msgSend_setConstantValue_type_atIndex_(v9, v20, &v31, 53, 3);
  objc_msgSend_setConstantValue_type_atIndex_(v9, v21, &v35, 33, 4);
  objc_msgSend_setConstantValue_type_atIndex_(v9, v22, &v35 + 4, 33, 5);
  objc_msgSend_setConstantValue_type_atIndex_(v9, v23, &v35 + 8, 33, 6);
  v30 = v34 >> 6;
  objc_msgSend_setConstantValue_type_atIndex_(v9, v24, &v30, 33, 7);
  v29 = BYTE1(v34) & 3;
  objc_msgSend_setConstantValue_type_atIndex_(v9, v25, &v29, 33, 8);
  v26 = *a2;
  v27 = _MPSNewSpecializedFunction();

  return v27;
}

uint64_t sub_239DF1484(void *a1, __int128 *a2)
{
  v4 = a2[1];
  v9 = *a2;
  v10 = v4;
  v5 = sub_239DF150C(a1, &v9);
  if (v5)
  {
    return v5[6];
  }

  v6 = a1[3];
  v7 = a2[1];
  v9 = *a2;
  v10 = v7;
  v11 = &v9;
  sub_239DF1618(a1, &v9)[6] = v6;
  return v6;
}

void *sub_239DF150C(void *a1, void *a2)
{
  v2 = 0;
  v3 = 1193078;
  do
  {
    v3 = (1540483477 * ((1540483477 * *(a2 + v2)) ^ ((1540483477 * *(a2 + v2)) >> 24))) ^ (1540483477 * v3);
    v2 += 4;
  }

  while (v2 != 32);
  v4 = a1[1];
  if (!*&v4)
  {
    return 0;
  }

  v5 = (1540483477 * (v3 ^ (v3 >> 13))) ^ ((1540483477 * (v3 ^ (v3 >> 13))) >> 15);
  v6 = vcnt_s8(v4);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v5;
    if (*&v4 <= v5)
    {
      v7 = v5 % v4.i32[0];
    }
  }

  else
  {
    v7 = (v4.i32[0] - 1) & v5;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  result = *v8;
  if (*v8)
  {
    do
    {
      v10 = result[1];
      if (v10 == v5)
      {
        if (result[2] == *a2 && result[3] == a2[1] && result[4] == a2[2] && result[5] == a2[3])
        {
          return result;
        }
      }

      else
      {
        if (v6.u32[0] > 1uLL)
        {
          if (v10 >= *&v4)
          {
            v10 %= *&v4;
          }
        }

        else
        {
          v10 &= *&v4 - 1;
        }

        if (v10 != v7)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

void *sub_239DF1618(void *a1, void *a2)
{
  v2 = 0;
  v3 = 1193078;
  do
  {
    v3 = (1540483477 * ((1540483477 * *(a2 + v2)) ^ ((1540483477 * *(a2 + v2)) >> 24))) ^ (1540483477 * v3);
    v2 += 4;
  }

  while (v2 != 32);
  v4 = (1540483477 * (v3 ^ (v3 >> 13))) ^ ((1540483477 * (v3 ^ (v3 >> 13))) >> 15);
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_30;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = (1540483477 * (v3 ^ (v3 >> 13))) ^ ((1540483477 * (v3 ^ (v3 >> 13))) >> 15);
    if (*&v5 <= v4)
    {
      v7 = v4 % v5.i32[0];
    }
  }

  else
  {
    v7 = (v5.i32[0] - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_30:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_30;
    }

LABEL_29:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_30;
    }
  }

  if (v9[2] != *a2 || v9[3] != a2[1] || v9[4] != a2[2] || v9[5] != a2[3])
  {
    goto LABEL_29;
  }

  return v9;
}

uint64_t sub_239DF18A8()
{

  return MTLReportFailureTypeEnabled();
}

uint64_t sub_239DF18C8()
{

  return MTLReportFailureTypeEnabled();
}

uint64_t sub_239DF18FC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return objc_msgSend_channelCount_(v6, a2, v5, a4, a5);
}

uint64_t sub_239DF1914(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return objc_msgSend_channelCount_(v6, a2, v5, a4, a5);
}

uint64_t sub_239DF192C()
{

  return MTLReportFailureTypeEnabled();
}

uint64_t sub_239DF1D00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  v8 = a4;
  if ((atomic_load_explicit(&qword_27DF88768, memory_order_acquire) & 1) == 0)
  {
    sub_239E21F70();
  }

  std::mutex::lock(&stru_27DF88728);
  if (!qword_27DF88720)
  {
    operator new();
  }

  v4 = sub_239DE7494(qword_27DF88720, &v7);
  if (!v4)
  {
    operator new();
  }

  sub_239DF2470(v4[3], &v8);
  std::mutex::unlock(&stru_27DF88728);
  MPSLibrary::CreateUberShaderKey();
  PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
  MPSLibrary::ReleaseMPSKey();
  return PipelineStateForMPSKey;
}

uint64_t sub_239DF1EA0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *a2[8];
  v6 = MPSCreateFunctionConstantValues();
  v8 = v6;
  v9 = *a3;
  v10 = *(a3 + 1);
  v11.i64[0] = -1;
  v11.i64[1] = -1;
  v12 = vceqq_s64(v10, v11);
  v13 = vaddvq_s32(vbicq_s8(xmmword_239E26D10, vuzp1q_s32(vceqq_s64(*(a3 + 3), v11), vceqq_s64(*(a3 + 4), v11))));
  v14 = ~vaddvq_s32(vandq_s8(vuzp1q_s32(v12, vceqq_s64(*(a3 + 3), v11)), xmmword_239E26D10)) & 0xF;
  if (*a3 != -1 || v14 != 0 || (v13 & 0xF) != 0 || a3[5] != -1)
  {
    if ((vuzp1_s16(vmovn_s64(v12), *v10.i8).u8[0] & 1) == 0)
    {
      v23 = *(a3 + 1);
      objc_msgSend_setConstantValue_type_atIndex_(v6, v7, &v23, 33, 126);
      v9 = *a3;
    }

    if (v9 != -1)
    {
      v23 = v9;
      objc_msgSend_setConstantValue_type_atIndex_(v8, v7, &v23, 33, 125);
    }

    if (a3[2] != -1)
    {
      v23 = a3[2];
      objc_msgSend_setConstantValue_type_atIndex_(v8, v7, &v23, 33, 124);
    }

    if (a3[3] != -1)
    {
      v23 = a3[3];
      objc_msgSend_setConstantValue_type_atIndex_(v8, v7, &v23, 33, 123);
    }

    if (a3[4] != -1)
    {
      v23 = a3[4];
      objc_msgSend_setConstantValue_type_atIndex_(v8, v7, &v23, 33, 119);
    }

    if (a3[5] != -1)
    {
      v23 = a3[5];
      objc_msgSend_setConstantValue_type_atIndex_(v8, v7, &v23, 33, 118);
    }

    if (a3[8] != -1)
    {
      v23 = a3[8];
      objc_msgSend_setConstantValue_type_atIndex_(v8, v7, &v23, 33, 122);
    }

    if (a3[9] != -1)
    {
      v23 = a3[9];
      objc_msgSend_setConstantValue_type_atIndex_(v8, v7, &v23, 33, 121);
    }

    if (a3[6] != -1)
    {
      v23 = a3[6];
      objc_msgSend_setConstantValue_type_atIndex_(v8, v7, &v23, 33, 117);
    }

    if (a3[7] != -1)
    {
      v23 = a3[7];
      objc_msgSend_setConstantValue_type_atIndex_(v8, v7, &v23, 33, 116);
    }
  }

  LOBYTE(v23) = (v5 & 2) != 0;
  objc_msgSend_setConstantValue_type_atIndex_(v8, v7, &v23, 53, 0);
  v22 = (v5 & 4) != 0;
  objc_msgSend_setConstantValue_type_atIndex_(v8, v18, &v22, 53, 1);
  v19 = *a2;
  v20 = _MPSNewSpecializedFunction();

  return v20;
}

uint64_t sub_239DF2470(void *a1, void *a2)
{
  v8 = *a2;
  v4 = sub_239DF24F8(a1, &v8);
  if (v4)
  {
    return v4[3];
  }

  v5 = a1[3];
  v7 = *a2;
  v8 = &v7;
  sub_239DF25F0(a1, &v7)[3] = v5;
  return v5;
}

void *sub_239DF24F8(void *a1, void *a2)
{
  v2 = 0;
  v3 = 1193054;
  do
  {
    v3 = (1540483477 * ((1540483477 * *(a2 + v2)) ^ ((1540483477 * *(a2 + v2)) >> 24))) ^ (1540483477 * v3);
    v2 += 4;
  }

  while (v2 != 8);
  v4 = a1[1];
  if (!*&v4)
  {
    return 0;
  }

  v5 = (1540483477 * (v3 ^ (v3 >> 13))) ^ ((1540483477 * (v3 ^ (v3 >> 13))) >> 15);
  v6 = vcnt_s8(v4);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v5;
    if (*&v4 <= v5)
    {
      v7 = v5 % v4.i32[0];
    }
  }

  else
  {
    v7 = (v4.i32[0] - 1) & v5;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  result = *v8;
  if (*v8)
  {
    do
    {
      v10 = result[1];
      if (v10 == v5)
      {
        if (result[2] == *a2)
        {
          return result;
        }
      }

      else
      {
        if (v6.u32[0] > 1uLL)
        {
          if (v10 >= *&v4)
          {
            v10 %= *&v4;
          }
        }

        else
        {
          v10 &= *&v4 - 1;
        }

        if (v10 != v7)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

void *sub_239DF25F0(void *a1, void *a2)
{
  v2 = 0;
  v3 = 1193054;
  do
  {
    v3 = (1540483477 * ((1540483477 * *(a2 + v2)) ^ ((1540483477 * *(a2 + v2)) >> 24))) ^ (1540483477 * v3);
    v2 += 4;
  }

  while (v2 != 8);
  v4 = (1540483477 * (v3 ^ (v3 >> 13))) ^ ((1540483477 * (v3 ^ (v3 >> 13))) >> 15);
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_20;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = (1540483477 * (v3 ^ (v3 >> 13))) ^ ((1540483477 * (v3 ^ (v3 >> 13))) >> 15);
    if (*&v5 <= v4)
    {
      v7 = v4 % v5.i32[0];
    }
  }

  else
  {
    v7 = (v5.i32[0] - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_20:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_20;
    }

LABEL_19:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_20;
    }
  }

  if (v9[2] != *a2)
  {
    goto LABEL_19;
  }

  return v9;
}

void sub_239DF38B8(uint64_t a1)
{
  v233[1] = *MEMORY[0x277D85DE8];
  context = objc_autoreleasePoolPush();
  kdebug_trace();
  if ((*(*(a1 + 32) + *MEMORY[0x277CD7378]) & 1) == 0)
  {
    objc_msgSend_validate(*(a1 + 40), v2, v3, v4, v5);
    if (!*(a1 + 48))
    {
      sub_239E228F8();
    }
  }

  v6 = *(*(a1 + 32) + 136);
  if (v6)
  {
    if (atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v6 + 8))(v6);
    }

    *(*(a1 + 32) + 136) = 0;
  }

  kdebug_trace();
  v232 = 0;
  v230 = 0u;
  v231 = 0u;
  v229 = 0u;
  v11 = *(a1 + 40);
  if (v11)
  {
    objc_msgSend_getBVHOptions(v11, v7, v8, v9, v10);
    if (DWORD1(v229) == 3)
    {
      DWORD1(v229) = 2;
    }
  }

  *(&v230 + 1) = 0x100000001;
  kdebug_trace();
  kdebug_trace();
  v16 = objc_msgSend_group(*(a1 + 40), v12, v13, v14, v15);
  v21 = objc_msgSend_bvhGroup(v16, v17, v18, v19, v20);
  v22 = DWORD2(v231);
  v27 = objc_msgSend_usage(*(a1 + 32), v23, v24, v25, v26);
  v36 = objc_msgSend_usage(*(a1 + 32), v28, v29, v30, v31);
  v37 = (v27 >> 3) & 1;
  if (!DWORD2(v231))
  {
    LODWORD(v37) = 0;
  }

  if (v37 == 1)
  {
    sub_239E22948();
  }

  if ((v36 & 4) != 0 && DWORD2(v231))
  {
    sub_239E22984();
  }

  if ((v27 & 8) != 0 && (v36 & 4) != 0)
  {
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v22 = 1;
  }

  else
  {
    if ((v27 & 8) != 0)
    {
      v22 = 1;
    }

    if (!v22)
    {
      v38 = *MEMORY[0x277CD7350];
      v39 = *(*(*(a1 + 32) + v38) + 16);
      v44 = objc_msgSend_dedicatedMemorySize(v39, v32, v33, v34, v35);
      if (!v44)
      {
        v44 = objc_msgSend_sharedMemorySize(v39, v40, v41, v42, v43);
      }

      v45 = *(a1 + 32);
      v46 = *(*(v45 + v38) + 16);
      v227[0] = v229;
      v227[1] = v230;
      v227[2] = v231;
      v228 = v232;
      v233[0] = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v40, *(v45 + 200), v42, v43);
      v49 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v47, v233, 1, v48);
      v50 = sub_239E1A3A0(v46, v227, 0, 0, v49);
      v51 = sub_239E1D32C(*(*(*(a1 + 32) + v38) + 16));
      v55 = HIDWORD(v231) == 2 && DWORD1(v229) == 2 && v232 == 0 && v50 <= v44;
      if (v55 & v51 & (v36 >> 2))
      {
        v22 = 2;
      }

      else
      {
        v22 = 1;
      }
    }
  }

  kdebug_trace();
  kdebug_trace();
  if (v22 == 2)
  {
    operator new();
  }

  if (objc_msgSend_count(*(*(a1 + 32) + 144), v56, v57, v58, v59))
  {
    v63 = objc_msgSend_objectAtIndexedSubscript_(*(*(a1 + 32) + 144), v60, 0, v61, v62);
    v68 = objc_msgSend_branchingFactor(v63, v64, v65, v66, v67);
    if (v68 != HIDWORD(v231))
    {
      sub_239E229C0();
    }

    v72 = objc_msgSend_objectAtIndexedSubscript_(*(*(a1 + 32) + 144), v69, 0, v70, v71);
    v77 = objc_msgSend_nodeLayout(v72, v73, v74, v75, v76);
    if (v232 != v77)
    {
      sub_239E229FC();
    }
  }

  if (HIDWORD(v231) == 4)
  {
    operator new();
  }

  if (HIDWORD(v231) == 2)
  {
    operator new();
  }

  if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v82 = objc_msgSend_group(*(a1 + 32), v78, v79, v80, v81);
  if (*(*(objc_msgSend_bvhGroup(v82, v83, v84, v85, v86) + 32) + 40))
  {
    operator new();
  }

  kdebug_trace();
  v87 = *(a1 + 32);
  v87[17] = (*(MEMORY[0] + 24))(0, v21, v87[21], v87[22], v87[16], v87[19], v87[20], v87[25], v87[18]);
  (*(MEMORY[0] + 8))(0);
  if (v229 == 1)
  {
    v92 = *(a1 + 32);
    v93 = *(*(v92 + 136) + 104);
    v94 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v88, *(v92 + 200), v90, v91);
    objc_msgSend_setObject_forKeyedSubscript_(v93, v95, v94, @"Instances", v96);
    v101 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v97, v98, v99, v100);
    objc_msgSend_setObject_forKeyedSubscript_(v93, v102, v101, @"Buffers", v103);
    v104 = MEMORY[0x277CCABB0];
    v109 = objc_msgSend_length(*(*(a1 + 32) + 152), v105, v106, v107, v108);
    v114 = objc_msgSend_numberWithDouble_(v104, v110, v111, v112, v113, vcvtd_n_f64_u64(v109, 0x14uLL));
    objc_msgSend_setObject_forKeyedSubscript_(v101, v115, v114, @"Instance Buffer (mb)", v116);
    v117 = MEMORY[0x277CCABB0];
    v122 = objc_msgSend_length(*(*(a1 + 32) + 168), v118, v119, v120, v121);
    v127 = objc_msgSend_numberWithDouble_(v117, v123, v124, v125, v126, vcvtd_n_f64_u64(v122, 0x14uLL));
    objc_msgSend_setObject_forKeyedSubscript_(v101, v128, v127, @"Transform Buffer (mb)", v129);
    v130 = MEMORY[0x277CCABB0];
    v135 = objc_msgSend_length(*(*(a1 + 32) + 184), v131, v132, v133, v134);
    v140 = objc_msgSend_numberWithDouble_(v130, v136, v137, v138, v139, vcvtd_n_f64_u64(v135, 0x14uLL));
    objc_msgSend_setObject_forKeyedSubscript_(v101, v141, v140, @"Mask Buffer (mb)", v142);
    v143 = MEMORY[0x277CCABB0];
    v148 = objc_msgSend_length(*(*(*(a1 + 32) + 136) + 120), v144, v145, v146, v147);
    v153 = objc_msgSend_numberWithDouble_(v143, v149, v150, v151, v152, vcvtd_n_f64_u64(v148, 0x14uLL));
    objc_msgSend_setObject_forKeyedSubscript_(v101, v154, v153, @"Inverse Transform Buffer (mb)", v155);
    v160 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v156, v157, v158, v159, *(*(*(*(a1 + 32) + 136) + 24) + 40) * 0.000000953674316);
    objc_msgSend_setObject_forKeyedSubscript_(v101, v161, v160, @"Inner Node Buffer (mb)", v162);
    v167 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v163, v164, v165, v166, *(*(*(*(a1 + 32) + 136) + 32) + 40) * 0.000000953674316);
    objc_msgSend_setObject_forKeyedSubscript_(v101, v168, v167, @"Leaf Node Buffer (mb)", v169);
    v174 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v170, v171, v172, v173, *(*(*(*(a1 + 32) + 136) + 40) + 40) * 0.000000953674316);
    objc_msgSend_setObject_forKeyedSubscript_(v101, v175, v174, @"Page Table 0 Buffer (mb)", v176);
    v181 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v177, v178, v179, v180, *(*(*(*(a1 + 32) + 136) + 48) + 40) * 0.000000953674316);
    objc_msgSend_setObject_forKeyedSubscript_(v101, v182, v181, @"Page Table 1 Buffer (mb)", v183);
    v188 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v184, v185, v186, v187, *(*(*(*(a1 + 32) + 136) + 56) + 40) * 0.000000953674316);
    objc_msgSend_setObject_forKeyedSubscript_(v101, v189, v188, @"Page Buffer (mb)", v190);
    v195 = objc_msgSend_length(*(*(*(a1 + 32) + 136) + 120), v191, v192, v193, v194);
    v196 = *(*(a1 + 32) + 136);
    v201 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v197, v198, v199, v200, vcvtd_n_f64_u64(*(v196[3] + 40) + v195 + *(v196[4] + 40) + *(v196[5] + 40) + *(v196[6] + 40) + *(v196[7] + 40), 0x14uLL));
    objc_msgSend_setObject_forKeyedSubscript_(v101, v202, v201, @"Total Internal (mb)", v203);
  }

  v204 = *(*(a1 + 32) + 136);
  v205 = objc_msgSend_group(*(a1 + 40), v88, v89, v90, v91);
  if (v21 != objc_msgSend_bvhGroup(v205, v206, v207, v208, v209))
  {
    operator new();
  }

  v214 = objc_msgSend_group(*(a1 + 40), v210, v211, v212, v213);
  v219 = objc_msgSend_bvhGroup(v214, v215, v216, v217, v218);
  sub_239E00D2C(*(v219 + 24));
  v220 = *(a1 + 32);
  kdebug_trace();
  objc_msgSend_setStatus_(*(a1 + 40), v221, 1, v222, v223);
  v224 = *(a1 + 40);
  (*(*(a1 + 48) + 16))();

  objc_autoreleasePoolPop(context);
  v225 = *MEMORY[0x277D85DE8];
}

void sub_239DF46D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_239DF5260(uint64_t a1)
{
  v2 = *(a1 + 32);
  add = atomic_fetch_add(v2 + 2, 0xFFFFFFFF);
  if (v2)
  {
    v4 = add == 1;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    (*(*v2 + 8))(v2);
  }

  v5 = *(a1 + 40);
  v6 = *v5;
  v7 = v5[1];
  if (*v5 == v7)
  {
    goto LABEL_16;
  }

  do
  {
    result = *v6;
    v9 = atomic_fetch_add((*v6 + 8), 0xFFFFFFFF);
    if (result)
    {
      v10 = v9 == 1;
    }

    else
    {
      v10 = 0;
    }

    if (v10)
    {
      result = (*(*result + 8))(result);
    }

    ++v6;
  }

  while (v6 != v7);
  v5 = *(a1 + 40);
  if (v5)
  {
LABEL_16:
    v11 = *v5;
    if (*v5)
    {
      v5[1] = v11;
      operator delete(v11);
    }

    JUMPOUT(0x23EE7D780);
  }

  return result;
}

atomic_uint *sub_239DF5D58(uint64_t a1)
{
  result = *(a1 + 32);
  add = atomic_fetch_add(result + 2, 0xFFFFFFFF);
  if (result)
  {
    v3 = add == 1;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_239DF5E8C(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  sub_239DE77E8();
}

void sub_239DF5EE4(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_239DE77E8();
}

uint64_t MPSRayDataTypeStride(MPSRayDataType a1)
{
  if (a1 == MPSRayDataTypePackedOriginDirection)
  {
    return 24;
  }

  else
  {
    return 32;
  }
}

uint64_t MPSIntersectionDataTypeStride(MPSIntersectionDataType a1)
{
  if (a1 - 1 > 7)
  {
    return 4;
  }

  else
  {
    return qword_239E26F68[a1 - 1];
  }
}

uint64_t sub_239DF72B4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a2 + 64);
  v7 = *v6;
  v8 = *(v6 + 2);
  v9 = *(v6 + 3);
  v10 = *(v6 + 4);
  v11 = *(v6 + 5);
  v13 = *(v6 + 6);
  v12 = *(v6 + 7);
  v14 = *(v6 + 8);
  v15 = MPSCreateFunctionConstantValues();
  v17 = v15;
  v18 = *a3;
  v19 = *(a3 + 1);
  v20.i64[0] = -1;
  v20.i64[1] = -1;
  v21 = vceqq_s64(v19, v20);
  if (*a3 != -1 || ((v22 = vaddvq_s32(vbicq_s8(xmmword_239E26D10, vuzp1q_s32(vceqq_s64(*(a3 + 3), v20), vceqq_s64(*(a3 + 4), v20)))) & 0xF, (~vaddvq_s32(vandq_s8(vuzp1q_s32(v21, vceqq_s64(*(a3 + 3), v20)), xmmword_239E26D10)) & 0xF) == 0) ? (v23 = v22 == 0) : (v23 = 0), v23 ? (v24 = a3[5] == -1) : (v24 = 0), !v24))
  {
    if ((vuzp1_s16(vmovn_s64(v21), *v19.i8).u8[0] & 1) == 0)
    {
      v89 = *(a3 + 1);
      objc_msgSend_setConstantValue_type_atIndex_(v15, v16, &v89, 33, 126);
      v18 = *a3;
    }

    if (v18 != -1)
    {
      v89 = v18;
      objc_msgSend_setConstantValue_type_atIndex_(v17, v16, &v89, 33, 125);
    }

    if (a3[2] != -1)
    {
      v89 = a3[2];
      objc_msgSend_setConstantValue_type_atIndex_(v17, v16, &v89, 33, 124);
    }

    if (a3[3] != -1)
    {
      v89 = a3[3];
      objc_msgSend_setConstantValue_type_atIndex_(v17, v16, &v89, 33, 123);
    }

    if (a3[4] != -1)
    {
      v89 = a3[4];
      objc_msgSend_setConstantValue_type_atIndex_(v17, v16, &v89, 33, 119);
    }

    if (a3[5] != -1)
    {
      v89 = a3[5];
      objc_msgSend_setConstantValue_type_atIndex_(v17, v16, &v89, 33, 118);
    }

    if (a3[8] != -1)
    {
      v89 = a3[8];
      objc_msgSend_setConstantValue_type_atIndex_(v17, v16, &v89, 33, 122);
    }

    if (a3[9] != -1)
    {
      v89 = a3[9];
      objc_msgSend_setConstantValue_type_atIndex_(v17, v16, &v89, 33, 121);
    }

    if (a3[6] != -1)
    {
      v89 = a3[6];
      objc_msgSend_setConstantValue_type_atIndex_(v17, v16, &v89, 33, 117);
    }

    if (a3[7] != -1)
    {
      v89 = a3[7];
      objc_msgSend_setConstantValue_type_atIndex_(v17, v16, &v89, 33, 116);
    }
  }

  v88 = (v7 >> 4) & 1;
  v89 = (v7 >> 2) & 3;
  v86 = (v7 >> 6) & 1;
  v87 = (v7 >> 5) & 1;
  v84 = (v7 >> 10) & 3;
  v85 = (v7 >> 7) & 3;
  v83 = (v7 & 0x200) != 0;
  v82 = (v7 & 0x1000) != 0;
  v80 = v9;
  v81 = v8;
  v78 = (v7 >> 13) & 3;
  v79 = v10;
  v76 = (v7 >> 19) & 3;
  v77 = (v7 >> 15) & 0xF;
  v74 = (v7 >> 29) & 1;
  v75 = (v7 >> 21);
  v72 = (v7 >> 36) & 1;
  v73 = (v7 >> 30) & 0x3F;
  v71 = (v7 & 0x2000000000) != 0;
  v70 = (v7 & 0x4000000000) != 0;
  v68 = v11;
  v69 = (v7 >> 39) & 1;
  v66 = v12;
  v67 = v13;
  v65 = (v7 >> 40) & 3;
  v64 = (v7 & 0x40000000000) != 0;
  v63 = v14;
  v62 = (v7 & 0x80000000000) != 0;
  v61 = (v7 >> 44) & 0xF;
  objc_msgSend_setConstantValue_type_atIndex_(v17, v16, &v89, 33, 0, a2, a1, a4, a5);
  objc_msgSend_setConstantValue_type_atIndex_(v17, v25, &v88, 33, 1);
  objc_msgSend_setConstantValue_type_atIndex_(v17, v26, &v87, 33, 2);
  objc_msgSend_setConstantValue_type_atIndex_(v17, v27, &v86, 33, 3);
  objc_msgSend_setConstantValue_type_atIndex_(v17, v28, &v85, 33, 4);
  objc_msgSend_setConstantValue_type_atIndex_(v17, v29, &v83, 53, 5);
  objc_msgSend_setConstantValue_type_atIndex_(v17, v30, &v84, 33, 6);
  objc_msgSend_setConstantValue_type_atIndex_(v17, v31, &v82, 53, 7);
  objc_msgSend_setConstantValue_type_atIndex_(v17, v32, &v81, 33, 8);
  objc_msgSend_setConstantValue_type_atIndex_(v17, v33, &v80, 33, 9);
  objc_msgSend_setConstantValue_type_atIndex_(v17, v34, &v79, 33, 10);
  objc_msgSend_setConstantValue_type_atIndex_(v17, v35, &v78, 33, 11);
  objc_msgSend_setConstantValue_type_atIndex_(v17, v36, &v77, 33, 12);
  objc_msgSend_setConstantValue_type_atIndex_(v17, v37, &v76, 33, 14);
  objc_msgSend_setConstantValue_type_atIndex_(v17, v38, &v75, 33, 13);
  objc_msgSend_setConstantValue_type_atIndex_(v17, v39, &v68, 33, 15);
  objc_msgSend_setConstantValue_type_atIndex_(v17, v40, &v67, 33, 16);
  objc_msgSend_setConstantValue_type_atIndex_(v17, v41, &v66, 33, 17);
  objc_msgSend_setConstantValue_type_atIndex_(v17, v42, &v74, 33, 18);
  objc_msgSend_setConstantValue_type_atIndex_(v17, v43, &v73, 33, 19);
  objc_msgSend_setConstantValue_type_atIndex_(v17, v44, &v72, 33, 20);
  objc_msgSend_setConstantValue_type_atIndex_(v17, v45, &v71, 53, 21);
  objc_msgSend_setConstantValue_type_atIndex_(v17, v46, &v70, 53, 22);
  objc_msgSend_setConstantValue_type_atIndex_(v17, v47, &v69, 33, 23);
  objc_msgSend_setConstantValue_type_atIndex_(v17, v48, &v65, 33, 24);
  objc_msgSend_setConstantValue_type_atIndex_(v17, v49, &v64, 53, 25);
  objc_msgSend_setConstantValue_type_atIndex_(v17, v50, &v63, 33, 26);
  objc_msgSend_setConstantValue_type_atIndex_(v17, v51, &v62, 53, 27);
  objc_msgSend_setConstantValue_type_atIndex_(v17, v52, &v61, 33, 28);
  v53 = *v57;
  v54 = _MPSNewSpecializedFunction();

  return v54;
}

uint64_t sub_239DFA1F8()
{

  return MTLReportFailureTypeEnabled();
}

uint64_t sub_239DFA214()
{

  return MTLReportFailureTypeEnabled();
}

uint64_t sub_239DFA254(uint64_t a1, unsigned int *a2, uint64_t *a3, void *a4)
{
  v6 = *a3;
  v7 = *(a3 + 2);
  v8 = a3[2];
  v9 = *(a3 + 6);
  sub_239DFA788(a1);
  v14 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v10, v11, v12, v13);
  objc_msgSend_setObject_forKeyedSubscript_(a4, v15, v14, @"BVH Statistics", v16);
  v20 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v17, 0, v18, v19);
  objc_msgSend_setObject_forKeyedSubscript_(v14, v21, v20, @"Nodes", v22);
  v26 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v23, 0, v24, v25);
  objc_msgSend_setObject_forKeyedSubscript_(v14, v27, v26, @"Primitive Indices", v28);
  *&v29 = 0.0 / 0;
  v34 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v30, v31, v32, v33, v29);
  objc_msgSend_setObject_forKeyedSubscript_(v14, v35, v34, @"Average leaf depth", v36);
  v40 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v37, 0xFFFFFFFFLL, v38, v39);
  objc_msgSend_setObject_forKeyedSubscript_(v14, v41, v40, @"Min Leaf Depth", v42);
  v46 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v43, 1, v44, v45);
  objc_msgSend_setObject_forKeyedSubscript_(v14, v47, v46, @"Max Leaf Depth", v48);
  v52 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v49, 0, v50, v51);
  objc_msgSend_setObject_forKeyedSubscript_(v14, v53, v52, @"Inner Nodes", v54);
  v58 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v55, 0, v56, v57);
  objc_msgSend_setObject_forKeyedSubscript_(v14, v59, v58, @"Leaf Nodes", v60);
  *&v61 = 0 / 0;
  v66 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v62, v63, v64, v65, v61);
  objc_msgSend_setObject_forKeyedSubscript_(v14, v67, v66, @"Inner Node Percentage", v68);
  *&v69 = 0 / 0;
  v74 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v70, v71, v72, v73, v69);
  objc_msgSend_setObject_forKeyedSubscript_(v14, v75, v74, @"Leaf Node Percentage", v76);
  *&v77 = 0.0 / 0;
  v82 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v78, v79, v80, v81, v77);
  objc_msgSend_setObject_forKeyedSubscript_(v14, v83, v82, @"Average Fragments per Leaf", v84);
  v88 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v85, 0xFFFFFFFFLL, v86, v87);
  objc_msgSend_setObject_forKeyedSubscript_(v14, v89, v88, @"Min Fragments per Leaf", v90);
  v94 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v91, 0, v92, v93);
  objc_msgSend_setObject_forKeyedSubscript_(v14, v95, v94, @"Max Fragments per Leaf", v96);
  LODWORD(v97) = 0;
  v102 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v98, v99, v100, v101, v97);
  objc_msgSend_setObject_forKeyedSubscript_(v14, v103, v102, @"SAH Cost", v104);
  v109 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v105, v106, v107, v108, 0.0);
  objc_msgSend_setObject_forKeyedSubscript_(v14, v110, v109, @"Overlap", v111);
  *&v112 = 0.0 / 0;
  v117 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v113, v114, v115, v116, v112);
  objc_msgSend_setObject_forKeyedSubscript_(v14, v118, v117, @"Average Children per Inner Node", v119);
  v124 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v120, v121, v122, v123);
  objc_msgSend_setObject_forKeyedSubscript_(a4, v125, v124, @"BVH Options", v126);
  v130 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v127, a2[8], v128, v129);
  objc_msgSend_setObject_forKeyedSubscript_(v124, v131, v130, @"Max Depth", v132);
  v136 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v133, a2[6], v134, v135);
  objc_msgSend_setObject_forKeyedSubscript_(v124, v137, v136, @"Min Fragments Per Leaf", v138);
  v142 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v139, a2[7], v140, v141);
  objc_msgSend_setObject_forKeyedSubscript_(v124, v143, v142, @"Max Fragments Per Leaf", v144);
  LODWORD(v145) = a2[2];
  v150 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v146, v147, v148, v149, v145);
  objc_msgSend_setObject_forKeyedSubscript_(v124, v151, v150, @"Fragment Cost", v152);
  v158 = a2[1];
  if (v158 <= 3)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v124, v153, off_278B3C378[v158], @"Split Heuristic", v156);
  }

  v159 = a2[12];
  if (v159 == 1)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v124, v153, @"AOS", @"Node Layout", v156);
  }

  else if (!v159)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v124, v153, @"SOA", @"Node Layout", v156);
  }

  v160 = a2[10];
  if (v160 <= 2)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v124, v153, off_278B3C398[v160], @"Builder", v156);
  }

  LODWORD(v157) = a2[3];
  v161 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v153, v154, v155, v156, v157);
  objc_msgSend_setObject_forKeyedSubscript_(v124, v162, v161, @"Minimum Overlap", v163);
  v167 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v164, a2[4], v165, v166);
  objc_msgSend_setObject_forKeyedSubscript_(v124, v168, v167, @"Batch Size", v169);
  v173 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v170, a2[5], v171, v172);
  objc_msgSend_setObject_forKeyedSubscript_(v124, v174, v173, @"Max Concurrent Node Size", v175);
  v179 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v176, a2[9], v177, v178);
  objc_msgSend_setObject_forKeyedSubscript_(v124, v180, v179, @"Bins", v181);
  v185 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v182, a2[11], v183, v184);
  return objc_msgSend_setObject_forKeyedSubscript_(v124, v186, v185, @"Branching Factor", v187);
}

uint64_t sub_239DFA788(uint64_t a1)
{
  v37[1] = *MEMORY[0x277D85DE8];
  v1 = (8 * ((*(a1 + 52) - 1) * *(a1 + 40)) + 15) & 0xFFFFFFFF0;
  result = MEMORY[0x28223BE20]();
  v9 = (v37 - v8);
  v10 = 0;
  v11 = 1;
  for (i = v9; ; --i)
  {
    if (*(v3 + 32 * v10 + 28) < 1)
    {
      v21 = *(v5 + 8);
      v22 = **v5 + 32 * v10;
      v23 = *v21;
      if (*v21 <= v11)
      {
        v23 = v11;
      }

      *v21 = v23;
      v24 = *(v5 + 24);
      **(v5 + 16) = **(v5 + 16) + v11;
      v6.i64[0] = *v22;
      v6.i32[2] = *(v22 + 8);
      v7.i64[0] = *(v22 + 16);
      v7.i32[2] = *(v22 + 24);
      v6 = vsubq_f32(v7, v6);
      v25 = vmul_f32(*v6.f32, *&vextq_s8(v6, v6, 4uLL));
      v6.f32[0] = v25.f32[0] + (v6.f32[0] * v6.f32[2]);
      v26 = *(v22 + 28);
      v27 = -v26;
      *v24 = *v24 + -v26;
      v28 = *(v5 + 32);
      v29 = *(v5 + 40);
      if (*v28 < v11)
      {
        LODWORD(v11) = *v28;
      }

      v30 = (v25.f32[1] + v6.f32[0]) + (v25.f32[1] + v6.f32[0]);
      *v28 = v11;
      v31 = *v29;
      if (*v29 >= v27)
      {
        v31 = -v26;
      }

      *v29 = v31;
      v32 = *(v5 + 48);
      v33 = *(v5 + 56);
      v34 = *v32 <= v27 ? -v26 : *v32;
      *v32 = v34;
      *v33 = *v33 + (((v30 * **(v5 + 64)) * -v26) * *(*(v5 + 72) + 8));
      v35 = *(v5 + 88);
      ++**(v5 + 80);
      *v35 -= v26;
    }

    else
    {
      v13 = *(v4 + 8);
      v14 = **v4 + 32 * v10;
      v15 = *v13;
      if (*v13 <= v11)
      {
        v15 = v11;
      }

      *v13 = v15;
      **(v4 + 16) = **(v4 + 16) + v11;
      v6.i64[0] = *v14;
      v6.i32[2] = *(v14 + 8);
      v7.i64[0] = *(v14 + 16);
      v7.i32[2] = *(v14 + 24);
      v6 = vsubq_f32(v7, v6);
      v16 = vmul_f32(*v6.f32, *&vextq_s8(v6, v6, 4uLL));
      **(v4 + 32) = **(v4 + 32) + (**(v4 + 40) * (((v16.f32[1] + (v16.f32[0] + (v6.f32[0] * v6.f32[2]))) + (v16.f32[1] + (v16.f32[0] + (v6.f32[0] * v6.f32[2])))) * *(*(v4 + 24) + 52)));
      v17 = *(v4 + 56);
      ++**(v4 + 48);
      v18 = *(v14 + 28);
      *v17 = *v17 + v18;
      if (v18 >= 1)
      {
        v19 = (v11 << 32) + 0x100000000;
        v20 = v18 + 1;
        do
        {
          *i++ = v19 | (v20 + *(v14 + 12) - 2);
          --v20;
        }

        while (v20 > 1);
      }
    }

    if (i == v9)
    {
      break;
    }

    v10 = *(i - 2);
    v11 = *(i - 1);
  }

  v36 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_239DFB37C()
{

  return MTLReportFailureTypeEnabled();
}

BOOL sub_239DFB58C(uint64_t a1, double a2, double a3, float32x4_t a4, float32x4_t a5, uint64_t a6, float *a7, unsigned int a8, uint64_t a9, _DWORD *a10, unsigned int *a11, __n128 *a12, __n128 *a13)
{
  v16 = a8;
  v17 = malloc_type_malloc(32 * a8, 0x1000040E0EAB150uLL);
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  _Q0 = vsubq_f32(a5, a4);
  _S2 = _Q0.i32[2];
  __asm { FMLA            S1, S2, V0.S[1] }

  v32 = 1.0 / (_S1 + _S1);
  v33 = &a7[8 * v16];
  v34 = 126 - 2 * __clz(v16);
  if (a8)
  {
    v35 = v34;
  }

  else
  {
    v35 = 0;
  }

  v82 = v17 + 1;
  v36 = (32 * (a8 - 1)) | 0x10;
  v37 = INFINITY;
  v81 = v17;
  v83 = (v17 + v36);
  v84 = a7 + v36;
  v38.n128_u64[0] = 0x7F0000007FLL;
  v38.n128_u64[1] = 0x7F0000007FLL;
  v39.n128_u64[0] = 0x7F0000007FLL;
  v39.n128_u64[1] = 0x7F0000007FLL;
  v91 = v39;
  v40 = vnegq_f32(v38);
  v87 = v38;
  v89 = v40;
  v85 = v32;
  v86 = v40;
  do
  {
    v92 = v21;
    sub_239DEA478(a7, v33, &v92, v35, 1, v18, v19, v20, v40, v38);
    if (!a8)
    {
      goto LABEL_9;
    }

    v40.n128_u64[0] = 0x7F0000007FLL;
    v40.n128_u64[1] = 0x7F0000007FLL;
    v38 = vnegq_f32(v40);
    v42 = v82;
    v41 = v16;
    v43 = a7 + 4;
    do
    {
      v42[-1] = v38;
      *v42 = v40;
      v44.i64[0] = *(v43 - 2);
      v45.i64[0] = *v43;
      v46 = v38;
      v46.i32[3] = 0;
      v44.i64[1] = *(v43 - 2);
      v47 = vminnmq_f32(v46, v44);
      v48 = v40;
      v48.i32[3] = 0;
      v45.i64[1] = *(v43 + 2);
      v49 = vmaxnmq_f32(v48, v45);
      v47.i32[3] = v38.n128_i32[3];
      v42 += 2;
      v49.i32[3] = v40.n128_i32[3];
      v43 += 8;
      v38 = v47;
      v40 = v49;
      --v41;
    }

    while (v41);
    if (a8 == 1)
    {
      v59 = v91;
      v61 = v87;
      v60 = v89;
      v58 = v86;
    }

    else
    {
LABEL_9:
      v40.n128_f32[0] = *(a1 + 52);
      v50 = (a1 + 16);
      v51 = *(a1 + 32);
      v52.i64[0] = 0x7F0000007FLL;
      v52.i64[1] = 0x7F0000007FLL;
      v53 = vnegq_f32(v52);
      v38.n128_u64[0] = vld1_dup_f32(v50);
      v54 = 1;
      v55 = v83;
      v56 = v84;
      v57 = a8 - 1;
      v58 = v86;
      v59 = v91;
      v61 = v87;
      v60 = v89;
      do
      {
        v62 = v52;
        v63 = v53;
        v64.i64[0] = *(v56 - 2);
        v65.i64[0] = *v56;
        v66 = v63;
        v66.i32[3] = 0;
        v64.i64[1] = *(v56 - 2);
        v53 = vminnmq_f32(v66, v64);
        v67 = v62;
        v67.i32[3] = 0;
        v65.i64[1] = *(v56 + 2);
        v52 = vmaxnmq_f32(v67, v65);
        v53.i32[3] = v63.i32[3];
        v52.i32[3] = v62.i32[3];
        if (v57 >= v51 && v54 >= v51)
        {
          v68 = vsubq_f32(v52, v53);
          v69 = vsubq_f32(*v55, v55[-1]);
          v70 = vzip1_s32(*v68.i8, *v69.i8);
          v71 = vzip2_s32(*v68.i8, *v69.i8);
          *v68.i8 = vzip1_s32(*&vextq_s8(v68, v68, 8uLL), *&vextq_s8(v69, v69, 8uLL));
          *v69.i8 = vmla_f32(vmla_f32(vmul_f32(v70, *v68.i8), v71, v70), *v68.i8, v71);
          *v68.i8 = vmul_f32(v38.n128_u64[0], vmul_f32(vmul_n_f32(vadd_f32(*v69.i8, *v69.i8), v85), vcvt_f32_u32(__PAIR64__(v57, v54))));
          v72 = *v68.i32 + (*&v68.i32[1] + v40.n128_f32[0]);
          if (v72 < v37)
          {
            v24 = v21;
            v37 = v72;
            v23 = v57;
            v22 = v54;
            v58 = v55[-1];
            v61 = *v55;
            v60 = v53;
            v59 = v52;
          }
        }

        v56 -= 32;
        ++v54;
        v55 -= 2;
        --v57;
      }

      while (v57);
    }

    v86 = v58;
    v87 = v61;
    v89 = v60;
    v91 = v59;
    ++v21;
  }

  while (v21 != 3);
  free(v81);
  v76 = *(a1 + 16) * a8;
  if (v37 < v76)
  {
    *a10 = v23;
    *a11 = v22;
    *a12 = v86;
    a12[1] = v87;
    *a13 = v89;
    a13[1] = v91;
    v93[0] = v24;
    sub_239DEA478(a7, v33, v93, v35, 1, v73, v74, v75, v91, v89);
  }

  return v37 < v76;
}

void sub_239DFB8F8(uint64_t a1)
{
  sub_239E0512C(a1);

  JUMPOUT(0x23EE7D780);
}

BOOL sub_239DFB930(uint64_t a1, double a2, double a3, float32x4_t a4, float32x4_t a5, uint64_t a6, float *a7, unsigned int a8, unsigned int a9, _DWORD *a10, _DWORD *a11, float32x4_t *a12, float32x4_t *a13)
{
  v64 = *MEMORY[0x277D85DE8];
  sub_239DEC804(a1, a7, a8, &v58, a4, a5);
  if (v58.f32[0] == INFINITY)
  {
    sub_239DE9F60(a1, a7, a8, v21, v22, v23, &v51, a4, a5);
    v62[0] = v55;
    v62[1] = v56;
    v63 = v57;
    v58 = v51;
    v59 = v52;
    v24 = 2;
    v60 = v53;
    v61 = v54;
  }

  else
  {
    v24 = 1;
  }

  v51.i32[0] = 2139095040;
  *(v51.i64 + 4) = 0;
  v51.i32[3] = 2139095040;
  *&v52 = 0;
  v25.i64[0] = 0x7F0000007FLL;
  v25.i64[1] = 0x7F0000007FLL;
  v53 = vnegq_f32(v25);
  v54 = v25;
  v55 = v53;
  v56 = v25;
  v57 = 0;
  v26 = v40;
  v27 = vsubq_f32(v41, v40);
  v28 = vextq_s8(v27, v27, 4uLL);
  v28.n128_u64[0] = vmul_f32(v27.n128_u64[0], v28.n128_u64[0]);
  if ((v58.f32[3] / ((v28.n128_f32[1] + (v28.n128_f32[0] + (v27.n128_f32[0] * v27.n128_f32[2]))) + (v28.n128_f32[1] + (v28.n128_f32[0] + (v27.n128_f32[0] * v27.n128_f32[2]))))) <= *(a1 + 20))
  {
    v27.n128_u32[0] = 2139095040;
  }

  else
  {
    if (*(a1 + 176))
    {
      sub_239DFC264(a1, a7, a8, a9, &v44, a4, a5);
    }

    else
    {
      sub_239DFBC30(a1, a7, a8, a9, &v44, a4, a5);
    }

    v55 = v48;
    v56 = v49;
    v57 = v50;
    v51 = v44;
    v52 = v45;
    v26 = v46;
    v27 = v47;
    v53 = v46;
    v54 = v47;
    if (DWORD1(v45) + v45 <= a9)
    {
      v27.n128_u32[0] = v51.i32[0];
    }

    else
    {
      v51.i32[0] = 2139095040;
      v27.n128_u32[0] = 2139095040;
    }
  }

  v26.n128_f32[0] = *(a1 + 16) * a8;
  if (*(a1 + 36) < a8)
  {
    v26.n128_f32[0] = INFINITY;
  }

  v28.n128_u32[0] = v58.i32[0];
  if (v58.f32[0] >= v26.n128_f32[0])
  {
    v29 = v26.n128_f32[0];
  }

  else
  {
    v29 = v58.f32[0];
  }

  v30 = v27.n128_f32[0] < v29 || v58.f32[0] < v26.n128_f32[0];
  if (v30)
  {
    if (v58.f32[0] >= v26.n128_f32[0])
    {
      v31 = 0;
    }

    else
    {
      v31 = v24;
    }

    if (v27.n128_f32[0] < v29)
    {
      v31 = 3;
    }

    if (v31 == 2)
    {
      sub_239DEA218(v27, v26, a1, &v58, a7, a8, v20, v21, v22, v23);
    }

    else
    {
      if (v31 != 1)
      {
        v34 = &v55;
        if (*(a1 + 176))
        {
          sub_239DFCF68(a1, &v51, a7, a8, a4, a5);
        }

        else
        {
          sub_239DFC898(a1, &v51, a7, a8, a4, a5);
        }

        v35 = DWORD1(v52);
        *a10 = v52;
        *a11 = v35;
        v36 = v54;
        *a12 = v53;
        a12[1] = v36;
        goto LABEL_35;
      }

      sub_239DED2EC(a1, &v58, a7, a8, a4, a5, v20, v21, v22, v23, v28, v40, v41);
    }

    v32 = DWORD1(v59);
    *a10 = v59;
    *a11 = v32;
    v33 = v61;
    *a12 = v60;
    a12[1] = v33;
    v34 = v62;
LABEL_35:
    v37 = v34[1];
    *a13 = *v34;
    a13[1] = v37;
  }

  v38 = *MEMORY[0x277D85DE8];
  return v30;
}

void sub_239DFBC30(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, unsigned int a4@<W3>, uint64_t a5@<X8>, float32x4_t a6@<Q0>, float32x4_t a7@<Q1>)
{
  v85 = a3;
  v84 = a2;
  v103 = *MEMORY[0x277D85DE8];
  v10 = *(a1 + 44);
  v88 = a7;
  v87 = a6;
  _Q0 = vsubq_f32(a7, a6);
  _S2 = _Q0.i32[2];
  __asm { FMLA            S1, S2, V0.S[1] }

  _Q0.f32[0] = 1.0 / (_S1 + _S1);
  v83 = _Q0;
  *a5 = 2139095040;
  *(a5 + 4) = 0;
  *(a5 + 12) = 2139095040;
  _Q0.i64[0] = 0x7F0000007FLL;
  _Q0.i64[1] = 0x7F0000007FLL;
  v17 = vnegq_f32(_Q0);
  *(a5 + 32) = v17;
  v18 = (a5 + 32);
  *(a5 + 16) = 0;
  *(a5 + 48) = _Q0;
  *(a5 + 64) = v17;
  v79 = v17;
  *(a5 + 80) = _Q0;
  *(a5 + 96) = 0;
  MEMORY[0x28223BE20]();
  v19 = v74 - ((4 * v10 + 15) & 0x7FFFFFFF0);
  bzero(v19, 4 * v10);
  MEMORY[0x28223BE20]();
  v78 = 4 * v10;
  bzero(v19, v78);
  MEMORY[0x28223BE20]();
  bzero(&v74[-4 * v10], 32 * v10);
  MEMORY[0x28223BE20]();
  v20 = &v74[-4 * v10];
  bzero(v20, 32 * v10);
  v27 = 0;
  v81 = v85 - 1;
  v74[1] = v92;
  LODWORD(v28) = 0;
  HIDWORD(v28) = v85;
  v80 = v28;
  v82 = v20;
  v29 = (v10 - 1);
  v77 = v20 + 1;
  f32 = v20[1].f32;
  v76 = &v20[2 * v29 + 1];
  v75 = &v20[2 * v29];
  do
  {
    v90 = v88;
    v30 = *(&v90 & 0xFFFFFFFFFFFFFFF3 | (4 * (v27 & 3)));
    v89 = v87;
    if ((v30 - *(&v89 & 0xFFFFFFFFFFFFFFF3 | (4 * (v27 & 3)))) >= 0.001)
    {
      if (v10)
      {
        v31 = v78;
        bzero(v19, v78);
        bzero(v19, v31);
        v32 = v79;
        *&v33 = 0x7F0000007FLL;
        *(&v33 + 1) = 0x7F0000007FLL;
        v34 = v10;
        v35 = f32;
        do
        {
          *(v35 - 1) = v32;
          *v35 = v33;
          v35 += 2;
          --v34;
        }

        while (v34);
      }

      v36 = (v81 + *(a1 + 24)) / *(a1 + 24);
      if (v36 == 1 || (v37 = *(a1 + 64)) == 0)
      {
        if (v27 == 2)
        {
          sub_239DFE608(a1, v84, v19, v19, v82, 0, v85, v87, v88, *v21.i64, *v22.i64, *v23.i64, *v24.i64, *v25.i64, v26);
        }

        else if (v27 == 1)
        {
          sub_239DFE28C(a1, v84, v19, v19, v82, 0, v85, v87, v88, *v21.i64, *v22.i64, *v23.i64, *v24.i64, *v25.i64, v26);
        }

        else
        {
          sub_239DFDF40(a1, v84, v19, v19, v82, 0, v85, v87, v88, *v21.i64, *v22.i64, *v23.i64, *v24.i64, *v25.i64, v26);
        }
      }

      else
      {
        __dmb(0xBu);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        v92[0] = sub_239DFE960;
        v92[1] = &unk_278B3C3B0;
        v100 = v10;
        v101 = v85;
        v102 = v27;
        v93 = v87;
        v94 = v88;
        v95 = a1;
        v96 = v84;
        v97 = v74 - ((4 * v10 + 15) & 0x7FFFFFFF0);
        v98 = v97;
        v99 = v82;
        dispatch_apply(v36, v37, block);
        __dmb(9u);
      }

      v38 = v83.f32[0];
      if (v10)
      {
        v39.i64[0] = 0x7F0000007FLL;
        v39.i64[1] = 0x7F0000007FLL;
        v40 = vnegq_f32(v39);
        v41 = v10;
        v42 = f32;
        v43 = v77;
        do
        {
          v43[-1] = v40;
          *v43 = v39;
          v44 = v42[-1];
          v45 = *v42;
          v46 = v40;
          v46.i32[3] = 0;
          v44.i32[3] = 0;
          v21 = vminnmq_f32(v46, v44);
          v23 = v39;
          v23.i32[3] = 0;
          v45.i32[3] = 0;
          v22 = vmaxnmq_f32(v23, v45);
          v21.i32[3] = v40.i32[3];
          v43 += 2;
          v22.i32[3] = v39.i32[3];
          v42 += 2;
          v39 = v22;
          v40 = v21;
          --v41;
        }

        while (v41);
      }

      v21.i32[0] = *a5;
      v48 = *(a5 + 4);
      v47 = *(a5 + 8);
      v49 = *(a5 + 12);
      v51 = *(a5 + 16);
      v50 = *(a5 + 20);
      v52 = *(a5 + 64);
      if (v10 != 1)
      {
        v53 = (a1 + 16);
        v54 = *(a1 + 32);
        v24 = *(a5 + 80);
        v23.i64[0] = 0x7F0000007FLL;
        v23.i64[1] = 0x7F0000007FLL;
        v25 = vnegq_f32(v23);
        *v22.f32 = vld1_dup_f32(v53);
        v55 = v75;
        v56 = v76;
        v57 = (v10 - 1);
        v26 = v80;
        do
        {
          v58 = v25;
          v59 = v56[-1];
          v60 = *v56;
          v61 = v58;
          v61.i32[3] = 0;
          v59.i32[3] = 0;
          v62 = v23.i32[3];
          v23.i32[3] = 0;
          v60.i32[3] = 0;
          v25 = vminnmq_f32(v61, v59);
          v23 = vmaxnmq_f32(v23, v60);
          v25.i32[3] = v58.i32[3];
          v23.i32[3] = v62;
          v58.i32[0] = *&v19[4 * v57];
          v58.i32[1] = v58.i32[0];
          v63 = vsub_s32(v26.n128_u64[0], *v58.f32);
          v26.n128_u32[0] = vadd_s32(v26.n128_u64[0], *v58.f32).u32[0];
          v26.n128_u32[1] = v63.u32[1];
          v64 = v63.i32[1];
          if (v63.i32[1] >= v54 && v26.n128_u32[0] >= v54 && v26.n128_u32[0] + v63.i32[1] <= a4)
          {
            v67 = vsubq_f32(v23, v25);
            v68 = vsubq_f32(v55[1], *v55);
            v69 = vzip1_s32(*v67.i8, *v68.i8);
            v70 = vzip2_s32(*v67.i8, *v68.i8);
            *v67.i8 = vzip1_s32(*&vextq_s8(v67, v67, 8uLL), *&vextq_s8(v68, v68, 8uLL));
            *v68.i8 = vmla_f32(vmla_f32(vmul_f32(v69, *v67.i8), v70, v69), *v67.i8, v70);
            *v67.i8 = vmul_f32(*v22.f32, vmul_f32(vmul_n_f32(vadd_f32(*v68.i8, *v68.i8), v38), vcvt_f32_u32(v26.n128_u64[0])));
            v71 = *v67.i32 + (*&v67.i32[1] + 2.0);
            if (v71 < v21.f32[0])
            {
              v72 = v55[1];
              *v18 = *v55;
              v18[1] = v72;
              v24 = v23;
              v52 = v25;
              v50 = v26.n128_u32[0];
              v49 = 0;
              v51 = v64;
              v47 = v57;
              v48 = v27;
              v21.f32[0] = v71;
            }
          }

          v56 -= 2;
          v55 -= 2;
          --v57;
        }

        while (v57);
        *(a5 + 80) = v24;
      }

      *a5 = v21.i32[0];
      *(a5 + 4) = v48;
      *(a5 + 8) = v47;
      *(a5 + 12) = v49;
      *(a5 + 16) = v51;
      *(a5 + 20) = v50;
      *(a5 + 64) = v52;
    }

    ++v27;
  }

  while (v27 != 3);
  v73 = *MEMORY[0x277D85DE8];
}

void sub_239DFC264(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, unsigned int a4@<W3>, uint64_t a5@<X8>, float32x4_t a6@<Q0>, float32x4_t a7@<Q1>)
{
  v88 = a3;
  v87 = a2;
  v106 = *MEMORY[0x277D85DE8];
  v10 = *(a1 + 44);
  v91 = a7;
  v90 = a6;
  _Q0 = vsubq_f32(a7, a6);
  _S2 = _Q0.i32[2];
  __asm { FMLA            S1, S2, V0.S[1] }

  _Q0.f32[0] = 1.0 / (_S1 + _S1);
  v86 = _Q0;
  *a5 = 2139095040;
  *(a5 + 4) = 0;
  *(a5 + 12) = 2139095040;
  _Q0.i64[0] = 0x7F0000007FLL;
  _Q0.i64[1] = 0x7F0000007FLL;
  v17 = vnegq_f32(_Q0);
  *(a5 + 32) = v17;
  v18 = (a5 + 32);
  *(a5 + 16) = 0;
  *(a5 + 48) = _Q0;
  *(a5 + 64) = v17;
  v82 = v17;
  *(a5 + 80) = _Q0;
  *(a5 + 96) = 0;
  MEMORY[0x28223BE20]();
  v19 = v77 - ((4 * v10 + 15) & 0x7FFFFFFF0);
  bzero(v19, 4 * v10);
  MEMORY[0x28223BE20]();
  v81 = 4 * v10;
  bzero(v19, v81);
  MEMORY[0x28223BE20]();
  bzero(&v77[-4 * v10], 32 * v10);
  MEMORY[0x28223BE20]();
  v20 = &v77[-4 * v10];
  bzero(v20, 32 * v10);
  v21 = 0;
  v84 = v88 - 1;
  v77[1] = v95;
  LODWORD(v22) = 0;
  HIDWORD(v22) = v88;
  v83 = v22;
  v85 = v20;
  v23 = (v10 - 1);
  v80 = v20 + 1;
  f32 = v20[1].f32;
  v79 = &v20[2 * v23 + 1];
  v78 = &v20[2 * v23];
  do
  {
    v93 = v91;
    v24 = *(&v93 & 0xFFFFFFFFFFFFFFF3 | (4 * (v21 & 3)));
    v92 = v90;
    if ((v24 - *(&v92 & 0xFFFFFFFFFFFFFFF3 | (4 * (v21 & 3)))) >= 0.001)
    {
      if (v10)
      {
        v25 = v81;
        bzero(v19, v81);
        bzero(v19, v25);
        v26 = v82;
        *&v27 = 0x7F0000007FLL;
        *(&v27 + 1) = 0x7F0000007FLL;
        v28 = v10;
        v29 = f32;
        do
        {
          *(v29 - 1) = v26;
          *v29 = v27;
          v29 += 2;
          --v28;
        }

        while (v28);
      }

      v30 = (v84 + *(a1 + 24)) / *(a1 + 24);
      if (v30 == 1 || (v31 = *(a1 + 64)) == 0)
      {
        if (v21 == 2)
        {
          sub_239DFFA00(a1, v87, v19, v19, v85, 0, v88, v90, v91);
        }

        else if (v21 == 1)
        {
          sub_239DFF3A8(a1, v87, v19, v19, v85, 0, v88, v90, v91);
        }

        else
        {
          sub_239DFED64(a1, v87, v19, v19, v85, 0, v88, v90, v91);
        }
      }

      else
      {
        __dmb(0xBu);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        v95[0] = sub_239E00038;
        v95[1] = &unk_278B3C3B0;
        v103 = v10;
        v104 = v88;
        v105 = v21;
        v96 = v90;
        v97 = v91;
        v98 = a1;
        v99 = v87;
        v100 = v77 - ((4 * v10 + 15) & 0x7FFFFFFF0);
        v101 = v100;
        v102 = v85;
        dispatch_apply(v30, v31, block);
        __dmb(9u);
      }

      v32 = v86.f32[0];
      if (v10)
      {
        v33.i64[0] = 0x7F0000007FLL;
        v33.i64[1] = 0x7F0000007FLL;
        v34 = vnegq_f32(v33);
        v35 = v10;
        v36 = f32;
        v37 = v80;
        do
        {
          v37[-1] = v34;
          *v37 = v33;
          v38 = v36[-1];
          v39 = *v36;
          v40 = v34;
          v40.i32[3] = 0;
          v38.i32[3] = 0;
          v41 = vminnmq_f32(v40, v38);
          v42 = v33;
          v42.i32[3] = 0;
          v39.i32[3] = 0;
          v43 = vmaxnmq_f32(v42, v39);
          v41.i32[3] = v34.i32[3];
          v37 += 2;
          v43.i32[3] = v33.i32[3];
          v36 += 2;
          v33 = v43;
          v34 = v41;
          --v35;
        }

        while (v35);
      }

      v44 = *a5;
      v46 = *(a5 + 4);
      v45 = *(a5 + 8);
      v47 = *(a5 + 12);
      v49 = *(a5 + 16);
      v48 = *(a5 + 20);
      v50 = *(a5 + 64);
      if (v10 != 1)
      {
        v51 = (a1 + 16);
        v52 = *(a1 + 32);
        v53 = *(a5 + 80);
        v54.i64[0] = 0x7F0000007FLL;
        v54.i64[1] = 0x7F0000007FLL;
        v55 = vnegq_f32(v54);
        v56 = vld1_dup_f32(v51);
        v57 = v78;
        v58 = v79;
        v59 = (v10 - 1);
        v60 = v83;
        do
        {
          v61 = v55;
          v62 = v58[-1];
          v63 = *v58;
          v64 = v61;
          v64.i32[3] = 0;
          v62.i32[3] = 0;
          v65 = v54.i32[3];
          v54.i32[3] = 0;
          v63.i32[3] = 0;
          v55 = vminnmq_f32(v64, v62);
          v54 = vmaxnmq_f32(v54, v63);
          v55.i32[3] = v61.i32[3];
          v54.i32[3] = v65;
          v61.i32[0] = *&v19[4 * v59];
          v61.i32[1] = v61.i32[0];
          v66 = vsub_s32(v60, *v61.f32);
          v60.i32[0] = vadd_s32(v60, *v61.f32).u32[0];
          v60.i32[1] = v66.i32[1];
          v67 = v66.i32[1];
          if (v66.i32[1] >= v52 && v60.i32[0] >= v52 && v60.i32[0] + v66.i32[1] <= a4)
          {
            v70 = vsubq_f32(v54, v55);
            v71 = vsubq_f32(v57[1], *v57);
            v72 = vzip1_s32(*v70.i8, *v71.i8);
            v73 = vzip2_s32(*v70.i8, *v71.i8);
            *v70.i8 = vzip1_s32(*&vextq_s8(v70, v70, 8uLL), *&vextq_s8(v71, v71, 8uLL));
            *v71.i8 = vmla_f32(vmla_f32(vmul_f32(v72, *v70.i8), v73, v72), *v70.i8, v73);
            *v70.i8 = vmul_f32(v56, vmul_f32(vmul_n_f32(vadd_f32(*v71.i8, *v71.i8), v32), vcvt_f32_u32(v60)));
            v74 = *v70.i32 + (*&v70.i32[1] + 2.0);
            if (v74 < v44)
            {
              v75 = v57[1];
              *v18 = *v57;
              v18[1] = v75;
              v53 = v54;
              v50 = v55;
              v48 = v60.i32[0];
              v47 = 0;
              v49 = v67;
              v45 = v59;
              v46 = v21;
              v44 = v74;
            }
          }

          v58 -= 2;
          v57 -= 2;
          --v59;
        }

        while (v59);
        *(a5 + 80) = v53;
      }

      *a5 = v44;
      *(a5 + 4) = v46;
      *(a5 + 8) = v45;
      *(a5 + 12) = v47;
      *(a5 + 16) = v49;
      *(a5 + 20) = v48;
      *(a5 + 64) = v50;
    }

    ++v21;
  }

  while (v21 != 3);
  v76 = *MEMORY[0x277D85DE8];
}

__int128 *sub_239DFC898(uint64_t a1, __int128 *a2, float *a3, int a4, __n128 a5, __n128 a6)
{
  v140 = *MEMORY[0x277D85DE8];
  v9 = *(a1 + 44);
  v10 = a2[5];
  v11 = &a3[8 * a4];
  v134 = a2[4];
  v135 = v10;
  v136 = *(a2 + 24);
  v12 = a2[1];
  v130 = *a2;
  v131 = v12;
  v13 = a2[3];
  v132 = a2[2];
  v133 = v13;
  v137 = a5;
  v138 = a6;
  v139 = v9;
  v14 = sub_239E0043C(a3, v11, &v130);
  v15 = a2[5];
  v134 = a2[4];
  v135 = v15;
  v136 = *(a2 + 24);
  v16 = a2[1];
  v130 = *a2;
  v131 = v16;
  v17 = a2[3];
  v132 = a2[2];
  v133 = v17;
  v137 = a5;
  v138 = a6;
  v139 = v9;
  result = sub_239E00554(a3, v14, &v130);
  if (result < v14)
  {
    while (1)
    {
      v22 = *(result + 7);
      v23 = *(result + 3);
      v24 = 3 * v23;
      v25 = 3 * v23 + 1;
      v26 = 3 * v23 + 2;
      v27 = *(*(a1 + 128) + 8 * v22);
      if (v27)
      {
        if (*(*(a1 + 152) + 4 * v22) == 4)
        {
          v24 = *(v27 + 4 * v24);
          v25 = *(v27 + 4 * v25);
          v26 = *(v27 + 4 * v26);
        }

        else
        {
          v24 = *(v27 + 2 * v24);
          v25 = *(v27 + 2 * v25);
          v26 = *(v27 + 2 * v26);
        }
      }

      v28 = *(*(a1 + 80) + 8 * v22);
      v29 = *(*(a1 + 104) + 4 * v22);
      v30 = v28 + v29 * v24;
      v20.i64[0] = *v30;
      v20.i32[2] = *(v30 + 8);
      v31 = v28 + v29 * v25;
      v21.i64[0] = *v31;
      v21.i32[2] = *(v31 + 8);
      v32 = v28 + v29 * v26;
      v19.i64[0] = *v32;
      v19.i32[2] = *(v32 + 8);
      v33.i64[0] = *result;
      v34 = *(result + 2);
      v35.i64[0] = *(result + 2);
      v36 = *(result + 6);
      v37 = *(a2 + 1);
      LODWORD(v30) = *(a2 + 2) - 1;
      v129 = a6;
      v38 = *(&v129 & 0xFFFFFFFFFFFFFFF3 | (4 * (v37 & 3)));
      v128 = a5;
      v39 = (*(&v128 & 0xFFFFFFFFFFFFFFF3 | (4 * (v37 & 3))) + ((v38 - *(&v128 & 0xFFFFFFFFFFFFFFF3 | (4 * (v37 & 3)))) / v9)) + (((v38 - *(&v128 & 0xFFFFFFFFFFFFFFF3 | (4 * (v37 & 3)))) / v9) * v30);
      if (v37 == 2)
      {
        if (vmovn_s32(vcgtq_f32(v20, v21)).i32[1])
        {
          v80 = -1;
        }

        else
        {
          v80 = 0;
        }

        v81 = vdupq_n_s32(v80);
        v82 = vbslq_s8(v81, v20, v21);
        if (vmovn_s32(vcgtq_f32(v82, v19)).i32[1])
        {
          v83 = -1;
        }

        else
        {
          v83 = 0;
        }

        v84 = vdupq_n_s32(v83);
        v85 = vbslq_s8(v81, v21, v20);
        v86 = vbslq_s8(v84, v19, v82);
        v87 = vbslq_s8(v84, v82, v19);
        if (vmovn_s32(vcgtq_f32(v85, v86)).i32[1])
        {
          v88 = -1;
        }

        else
        {
          v88 = 0;
        }

        v89 = vdupq_n_s32(v88);
        v90 = vbslq_s8(v89, v85, v86);
        v91 = vbslq_s8(v89, v86, v85);
        v92 = vmlaq_n_f32(v91, vsubq_f32(v87, v91), (v39 - v91.f32[2]) / (v87.f32[2] - v91.f32[2]));
        if (v90.f32[2] < v39 || v91.f32[2] == v90.f32[2])
        {
          v91.i32[3] = 0;
          v94 = v90;
          v94.i32[3] = 0;
          v95 = vminnmq_f32(v91, v94);
          v96 = vmaxnmq_f32(v91, v94);
          v92.i32[3] = 0;
          v97 = vmlaq_n_f32(v90, vsubq_f32(v87, v90), (v39 - v90.f32[2]) / (v87.f32[2] - v90.f32[2]));
          v97.i32[3] = 0;
          v98 = vminnmq_f32(v92, v97);
          v116 = vmaxnmq_f32(v92, v97);
          v95.i32[3] = 0;
          v98.i32[3] = 0;
          v96.i32[3] = 0;
          v116.i32[3] = 0;
          v19 = vminnmq_f32(v95, v98);
          v58 = vmaxnmq_f32(v96, v116);
          v87.i32[3] = 0;
          v60 = vminnmq_f32(v98, v87);
        }

        else
        {
          v92.i32[3] = 0;
          v114 = vmlaq_n_f32(v91, vsubq_f32(v90, v91), (v39 - v91.f32[2]) / (v90.f32[2] - v91.f32[2]));
          v114.i32[3] = 0;
          v115 = vminnmq_f32(v92, v114);
          v116 = vmaxnmq_f32(v92, v114);
          v91.i32[3] = 0;
          v115.i32[3] = 0;
          v19 = vminnmq_f32(v91, v115);
          v116.i32[3] = 0;
          v58 = vmaxnmq_f32(v91, v116);
          v90.i32[3] = 0;
          v87.i32[3] = 0;
          v117 = vminnmq_f32(v90, v87);
          v87 = vmaxnmq_f32(v90, v87);
          v117.i32[3] = 0;
          v60 = vminnmq_f32(v115, v117);
          v87.i32[3] = 0;
        }

        v21 = vmaxnmq_f32(v116, v87);
        v107 = 2;
        goto LABEL_56;
      }

      if (v37 == 1)
      {
        break;
      }

      if (!v37)
      {
        if (vmovn_s32(vcgtq_f32(v20, v21)).u8[0])
        {
          v40 = -1;
        }

        else
        {
          v40 = 0;
        }

        v41 = vdupq_n_s32(v40);
        v42 = vbslq_s8(v41, v20, v21);
        v43 = vbslq_s8(v41, v21, v20);
        if (vmovn_s32(vcgtq_f32(v42, v19)).u8[0])
        {
          v44 = -1;
        }

        else
        {
          v44 = 0;
        }

        v45 = vdupq_n_s32(v44);
        v46 = vbslq_s8(v45, v42, v19);
        v47 = vbslq_s8(v45, v19, v42);
        if (vmovn_s32(vcgtq_f32(v43, v47)).u8[0])
        {
          v48 = -1;
        }

        else
        {
          v48 = 0;
        }

        v49 = vdupq_n_s32(v48);
        v50 = vbslq_s8(v49, v43, v47);
        v51 = vbslq_s8(v49, v47, v43);
        v52 = vsubq_f32(v46, v51);
        v53 = vmlaq_n_f32(v51, v52, (v39 - v51.f32[0]) / v52.f32[0]);
        if (v50.f32[0] < v39 || (vmovn_s32(vceqq_f32(v51, v50)).u8[0] & 1) != 0)
        {
          v108 = vsubq_f32(v46, v50);
          v51.i32[3] = 0;
          v109 = v50;
          v109.i32[3] = 0;
          v110 = vminnmq_f32(v51, v109);
          v111 = vmaxnmq_f32(v51, v109);
          v53.i32[3] = 0;
          v112 = vmlaq_n_f32(v50, v108, (v39 - v50.f32[0]) / v108.f32[0]);
          v112.i32[3] = 0;
          v113 = vminnmq_f32(v53, v112);
          v57 = vmaxnmq_f32(v53, v112);
          v110.i32[3] = 0;
          v113.i32[3] = 0;
          v111.i32[3] = 0;
          v57.i32[3] = 0;
          v19 = vminnmq_f32(v110, v113);
          v58 = vmaxnmq_f32(v111, v57);
          v46.i32[3] = 0;
          v60 = vminnmq_f32(v113, v46);
        }

        else
        {
          v54 = vsubq_f32(v50, v51);
          v53.i32[3] = 0;
          v55 = vmlaq_n_f32(v51, v54, (v39 - v51.f32[0]) / v54.f32[0]);
          v55.i32[3] = 0;
          v56 = vminnmq_f32(v53, v55);
          v57 = vmaxnmq_f32(v53, v55);
          v51.i32[3] = 0;
          v56.i32[3] = 0;
          v19 = vminnmq_f32(v51, v56);
          v57.i32[3] = 0;
          v58 = vmaxnmq_f32(v51, v57);
          v50.i32[3] = 0;
          v46.i32[3] = 0;
          v59 = vminnmq_f32(v50, v46);
          v46 = vmaxnmq_f32(v50, v46);
          v59.i32[3] = 0;
          v60 = vminnmq_f32(v56, v59);
          v46.i32[3] = 0;
        }

        v21 = vmaxnmq_f32(v57, v46);
        v107 = 0;
LABEL_56:
        v127 = v58;
        *(&v127 & 0xFFFFFFFFFFFFFFF3 | (4 * (v107 & 3))) = v39;
        v20 = v127;
        v126 = v60;
        *(&v126 & 0xFFFFFFFFFFFFFFF3 | (4 * (v107 & 3))) = v39;
        v118 = v19;
        v118.i32[3] = 0;
        v33.i64[1] = v34;
        v119 = v20;
        v119.i32[3] = 0;
        v35.i64[1] = v36;
        v101 = vmaxnmq_f32(v118, v33);
        v102 = vminnmq_f32(v119, v35);
        v120 = v126;
        v120.i32[3] = 0;
        v100 = vmaxnmq_f32(v120, v33);
        v121 = v21;
        v121.i32[3] = 0;
        v99 = vminnmq_f32(v121, v35);
        goto LABEL_57;
      }

      v99.i64[0] = 0x7F0000007FLL;
      v99.i64[1] = 0x7F0000007FLL;
      v100 = vnegq_f32(v99);
      v101 = v100;
      v102.i64[0] = 0x7F0000007FLL;
      v102.i32[2] = 127;
LABEL_57:
      *result = v101.i64[0];
      *(result + 2) = v102.i64[0];
      *(result + 2) = v101.i32[2];
      *(result + 6) = v102.i32[2];
      *v11 = v100.i64[0];
      v11[2] = v100.f32[2];
      *(v11 + 3) = v23;
      *(v11 + 2) = v99.i64[0];
      v122 = v11 + 6;
      *(v11 + 7) = v22;
      v11 += 8;
      result += 2;
      *v122 = v99.i32[2];
      if (result >= v14)
      {
        goto LABEL_58;
      }
    }

    if (vmovn_s32(vcgtq_f32(v20, v21)).i8[2])
    {
      v61 = -1;
    }

    else
    {
      v61 = 0;
    }

    v62 = vdupq_n_s32(v61);
    v63 = vbslq_s8(v62, v20, v21);
    if (vmovn_s32(vcgtq_f32(v63, v19)).i8[2])
    {
      v64 = -1;
    }

    else
    {
      v64 = 0;
    }

    v65 = vdupq_n_s32(v64);
    v66 = vbslq_s8(v62, v21, v20);
    v67 = vbslq_s8(v65, v19, v63);
    v68 = vbslq_s8(v65, v63, v19);
    if (vmovn_s32(vcgtq_f32(v66, v67)).i16[1])
    {
      v69 = -1;
    }

    else
    {
      v69 = 0;
    }

    v70 = vdupq_n_s32(v69);
    v71 = vbslq_s8(v70, v66, v67);
    v72 = vbslq_s8(v70, v67, v66);
    v73 = vmlaq_n_f32(v72, vsubq_f32(v68, v72), (v39 - v72.f32[1]) / (v68.f32[1] - v72.f32[1]));
    if (v71.f32[1] < v39 || v72.f32[1] == v71.f32[1])
    {
      v72.i32[3] = 0;
      v75 = v71;
      v75.i32[3] = 0;
      v76 = vminnmq_f32(v72, v75);
      v77 = vmaxnmq_f32(v72, v75);
      v73.i32[3] = 0;
      v78 = vmlaq_n_f32(v71, vsubq_f32(v68, v71), (v39 - v71.f32[1]) / (v68.f32[1] - v71.f32[1]));
      v78.i32[3] = 0;
      v79 = vminnmq_f32(v73, v78);
      v105 = vmaxnmq_f32(v73, v78);
      v76.i32[3] = 0;
      v79.i32[3] = 0;
      v77.i32[3] = 0;
      v105.i32[3] = 0;
      v19 = vminnmq_f32(v76, v79);
      v58 = vmaxnmq_f32(v77, v105);
      v68.i32[3] = 0;
      v60 = vminnmq_f32(v79, v68);
    }

    else
    {
      v73.i32[3] = 0;
      v103 = vmlaq_n_f32(v72, vsubq_f32(v71, v72), (v39 - v72.f32[1]) / (v71.f32[1] - v72.f32[1]));
      v103.i32[3] = 0;
      v104 = vminnmq_f32(v73, v103);
      v105 = vmaxnmq_f32(v73, v103);
      v72.i32[3] = 0;
      v104.i32[3] = 0;
      v19 = vminnmq_f32(v72, v104);
      v105.i32[3] = 0;
      v58 = vmaxnmq_f32(v72, v105);
      v71.i32[3] = 0;
      v68.i32[3] = 0;
      v106 = vminnmq_f32(v71, v68);
      v68 = vmaxnmq_f32(v71, v68);
      v106.i32[3] = 0;
      v60 = vminnmq_f32(v104, v106);
      v68.i32[3] = 0;
    }

    v21 = vmaxnmq_f32(v105, v68);
    v107 = 1;
    goto LABEL_56;
  }

LABEL_58:
  v123 = *MEMORY[0x277D85DE8];
  return result;
}

__int128 *sub_239DFCF68(uint64_t a1, __int128 *a2, float *a3, int a4, __n128 a5, __n128 a6)
{
  v292 = *MEMORY[0x277D85DE8];
  v9 = *(a1 + 44);
  v10 = a2[5];
  v11 = &a3[8 * a4];
  v286 = a2[4];
  v287 = v10;
  v288 = *(a2 + 24);
  v12 = a2[1];
  v282 = *a2;
  v283 = v12;
  v13 = a2[3];
  v284 = a2[2];
  v285 = v13;
  v289 = a5;
  v290 = a6;
  v291 = v9;
  v14 = sub_239E0043C(a3, v11, &v282);
  v15 = a2[5];
  v286 = a2[4];
  v287 = v15;
  v288 = *(a2 + 24);
  v16 = a2[1];
  v282 = *a2;
  v283 = v16;
  v17 = a2[3];
  v284 = a2[2];
  v285 = v17;
  v289 = a5;
  v290 = a6;
  v291 = v9;
  for (result = sub_239E00554(a3, v14, &v282); result < v14; *v276 = v275.i32[2])
  {
    v23 = *(result + 7);
    v24 = *(result + 3);
    v25 = 4 * v24;
    v26 = (4 * v24) | 1;
    v27 = (4 * v24) | 2;
    v28 = (4 * v24) | 3;
    v29 = *(*(a1 + 128) + 8 * v23);
    if (v29)
    {
      if (*(*(a1 + 152) + 4 * v23) == 4)
      {
        v25 = *(v29 + 4 * v25);
        v26 = *(v29 + 4 * v26);
        v27 = *(v29 + 4 * v27);
        v28 = *(v29 + 4 * v28);
      }

      else
      {
        v25 = *(v29 + 2 * v25);
        v26 = *(v29 + 2 * v26);
        v27 = *(v29 + 2 * v27);
        v28 = *(v29 + 2 * v28);
      }
    }

    v30 = *(*(a1 + 80) + 8 * v23);
    v31 = *(*(a1 + 104) + 4 * v23);
    v32 = v30 + v31 * v25;
    v19.i64[0] = *v32;
    v19.i32[2] = *(v32 + 8);
    v33 = v30 + v31 * v26;
    v22.i64[0] = *v33;
    v22.i32[2] = *(v33 + 8);
    v34 = v30 + v31 * v27;
    v21.i64[0] = *v34;
    v21.i32[2] = *(v34 + 8);
    v35 = v30 + v31 * v28;
    v20.i64[0] = *v35;
    v20.i32[2] = *(v35 + 8);
    v36.i64[0] = *result;
    v37 = *(result + 2);
    v38.i64[0] = *(result + 2);
    v39 = *(result + 6);
    v40 = *(a2 + 1);
    LODWORD(v33) = *(a2 + 2) - 1;
    v281 = a6;
    v41 = *(&v281 & 0xFFFFFFFFFFFFFFF3 | (4 * (v40 & 3)));
    v280 = a5;
    v42 = (*(&v280 & 0xFFFFFFFFFFFFFFF3 | (4 * (v40 & 3))) + ((v41 - *(&v280 & 0xFFFFFFFFFFFFFFF3 | (4 * (v40 & 3)))) / v9)) + (((v41 - *(&v280 & 0xFFFFFFFFFFFFFFF3 | (4 * (v40 & 3)))) / v9) * v33);
    if (v40 == 2)
    {
      v43.i64[0] = 0x7F0000007FLL;
      v43.i64[1] = 0x7F0000007FLL;
      v44 = vnegq_f32(v43);
      v45 = v44;
      v46.i64[0] = 0x7F0000007FLL;
      v46.i64[1] = 0x7F0000007FLL;
      if (v19.f32[2] <= v42)
      {
        v195 = v19;
        v195.i32[3] = 0;
        v45 = vminnmq_f32(v195, xmmword_239E26FC0);
        v46 = vmaxnmq_f32(v195, xmmword_239E26FD0);
      }

      if (v19.f32[2] < v42)
      {
        v197 = v22.f32[2] <= v42;
      }

      else
      {
        v196 = v19;
        v196.i32[3] = 0;
        v44 = vminnmq_f32(v196, xmmword_239E26FC0);
        v43 = vmaxnmq_f32(v196, xmmword_239E26FD0);
        v197 = 1;
      }

      if (!v197 || (v19.f32[2] > v42 ? (v198 = v22.f32[2] < v42) : (v198 = 0), v198))
      {
        v199 = v45;
        v199.i32[3] = 0;
        v200 = vmlaq_n_f32(vmulq_n_f32(v19, 1.0 - ((v42 - v19.f32[2]) / (v22.f32[2] - v19.f32[2]))), v22, (v42 - v19.f32[2]) / (v22.f32[2] - v19.f32[2]));
        v200.i32[3] = 0;
        v201 = vminnmq_f32(v199, v200);
        v202 = v46;
        v202.i32[3] = 0;
        v203 = vmaxnmq_f32(v202, v200);
        v201.i32[3] = v45.i32[3];
        v203.i32[3] = v46.i32[3];
        v204 = v44;
        v204.i32[3] = 0;
        v205 = vminnmq_f32(v204, v200);
        v206 = v43;
        v206.i32[3] = 0;
        v207 = vmaxnmq_f32(v206, v200);
        v205.i32[3] = v44.i32[3];
        v207.i32[3] = v43.i32[3];
        v44 = v205;
        v43 = v207;
        v45 = v201;
        v46 = v203;
      }

      if (v22.f32[2] <= v42)
      {
        v208 = v45;
        v208.i32[3] = 0;
        v209 = v22;
        v209.i32[3] = 0;
        v210 = vminnmq_f32(v208, v209);
        v211 = v46;
        v211.i32[3] = 0;
        v212 = vmaxnmq_f32(v211, v209);
        v210.i32[3] = v45.i32[3];
        v212.i32[3] = v46.i32[3];
        v45 = v210;
        v46 = v212;
      }

      if (v22.f32[2] >= v42)
      {
        v213 = v44;
        v213.i32[3] = 0;
        v214 = v22;
        v214.i32[3] = 0;
        v215 = vminnmq_f32(v213, v214);
        v216 = v43;
        v216.i32[3] = 0;
        v217 = vmaxnmq_f32(v216, v214);
        v215.i32[3] = v44.i32[3];
        v217.i32[3] = v43.i32[3];
        v44 = v215;
        v43 = v217;
      }

      v219 = v21.f32[2] < v42 && v22.f32[2] > v42;
      v221 = v21.f32[2] > v42 && v22.f32[2] < v42;
      if (v221 || v219)
      {
        v22 = vmlaq_n_f32(vmulq_n_f32(v22, 1.0 - ((v42 - v22.f32[2]) / (v21.f32[2] - v22.f32[2]))), v21, (v42 - v22.f32[2]) / (v21.f32[2] - v22.f32[2]));
        v222 = v45;
        v222.i32[3] = 0;
        v22.i32[3] = 0;
        v223 = vminnmq_f32(v222, v22);
        v224 = v46;
        v224.i32[3] = 0;
        v225 = vmaxnmq_f32(v224, v22);
        v223.i32[3] = v45.i32[3];
        v225.i32[3] = v46.i32[3];
        v226 = v44;
        v226.i32[3] = 0;
        v227 = vminnmq_f32(v226, v22);
        v228 = v43;
        v228.i32[3] = 0;
        v229 = vmaxnmq_f32(v228, v22);
        v227.i32[3] = v44.i32[3];
        v229.i32[3] = v43.i32[3];
        v44 = v227;
        v43 = v229;
        v45 = v223;
        v46 = v225;
      }

      if (v21.f32[2] <= v42)
      {
        v230 = v45;
        v230.i32[3] = 0;
        v231 = v21;
        v231.i32[3] = 0;
        v22 = vminnmq_f32(v230, v231);
        v232 = v46;
        v232.i32[3] = 0;
        v233 = vmaxnmq_f32(v232, v231);
        v22.i32[3] = v45.i32[3];
        v233.i32[3] = v46.i32[3];
        v45 = v22;
        v46 = v233;
      }

      if (v21.f32[2] >= v42)
      {
        v234 = v44;
        v234.i32[3] = 0;
        v235 = v21;
        v235.i32[3] = 0;
        v22 = vminnmq_f32(v234, v235);
        v236 = v43;
        v236.i32[3] = 0;
        v237 = vmaxnmq_f32(v236, v235);
        v22.i32[3] = v44.i32[3];
        v237.i32[3] = v43.i32[3];
        v44 = v22;
        v43 = v237;
      }

      v239 = v20.f32[2] < v42 && v21.f32[2] > v42;
      v241 = v20.f32[2] > v42 && v21.f32[2] < v42;
      if (v241 || v239)
      {
        v21 = vmlaq_n_f32(vmulq_n_f32(v21, 1.0 - ((v42 - v21.f32[2]) / (v20.f32[2] - v21.f32[2]))), v20, (v42 - v21.f32[2]) / (v20.f32[2] - v21.f32[2]));
        v242 = v45;
        v242.i32[3] = 0;
        v21.i32[3] = 0;
        v243 = vminnmq_f32(v242, v21);
        v244 = v46;
        v244.i32[3] = 0;
        v245 = vmaxnmq_f32(v244, v21);
        v243.i32[3] = v45.i32[3];
        v245.i32[3] = v46.i32[3];
        v246 = v44;
        v246.i32[3] = 0;
        v247 = vminnmq_f32(v246, v21);
        v248 = v43;
        v248.i32[3] = 0;
        v249 = vmaxnmq_f32(v248, v21);
        v247.i32[3] = v44.i32[3];
        v249.i32[3] = v43.i32[3];
        v44 = v247;
        v43 = v249;
        v45 = v243;
        v46 = v245;
      }

      if (v20.f32[2] <= v42)
      {
        v250 = v45;
        v250.i32[3] = 0;
        v251 = v20;
        v251.i32[3] = 0;
        v21 = vminnmq_f32(v250, v251);
        v252 = v46;
        v252.i32[3] = 0;
        v253 = vmaxnmq_f32(v252, v251);
        v21.i32[3] = v45.i32[3];
        v253.i32[3] = v46.i32[3];
        v45 = v21;
        v46 = v253;
      }

      if (v20.f32[2] >= v42)
      {
        v254 = v44;
        v254.i32[3] = 0;
        v255 = v20;
        v255.i32[3] = 0;
        v21 = vminnmq_f32(v254, v255);
        v256 = v43;
        v256.i32[3] = 0;
        v257 = vmaxnmq_f32(v256, v255);
        v21.i32[3] = v44.i32[3];
        v257.i32[3] = v43.i32[3];
        v44 = v21;
        v43 = v257;
      }

      v259 = v19.f32[2] < v42 && v20.f32[2] > v42;
      v261 = v19.f32[2] > v42 && v20.f32[2] < v42;
      if (v261 || v259)
      {
        v262 = vmlaq_n_f32(vmulq_n_f32(v20, 1.0 - ((v42 - v20.f32[2]) / (v19.f32[2] - v20.f32[2]))), v19, (v42 - v20.f32[2]) / (v19.f32[2] - v20.f32[2]));
        v263 = v45;
        v263.i32[3] = 0;
        v262.i32[3] = 0;
        v19 = vminnmq_f32(v263, v262);
        v264 = v46;
        v264.i32[3] = 0;
        v21 = vmaxnmq_f32(v264, v262);
        v19.i32[3] = v45.i32[3];
        v21.i32[3] = v46.i32[3];
        v265 = v44;
        v265.i32[3] = 0;
        v266 = vminnmq_f32(v265, v262);
        v267 = v43;
        v267.i32[3] = 0;
        v20 = vmaxnmq_f32(v267, v262);
        v266.i32[3] = v44.i32[3];
        v20.i32[3] = v43.i32[3];
        v44 = v266;
        v43 = v20;
        v45 = v19;
        v46 = v21;
      }

      v46.f32[2] = v42;
      v44.f32[2] = v42;
    }

    else if (v40 == 1)
    {
      v43.i64[0] = 0x7F0000007FLL;
      v43.i64[1] = 0x7F0000007FLL;
      v44 = vnegq_f32(v43);
      v45 = v44;
      v46.i64[0] = 0x7F0000007FLL;
      v46.i64[1] = 0x7F0000007FLL;
      if (v19.f32[1] <= v42)
      {
        v122 = v19;
        v122.i32[3] = 0;
        v45 = vminnmq_f32(v122, xmmword_239E26FC0);
        v46 = vmaxnmq_f32(v122, xmmword_239E26FD0);
      }

      if (v19.f32[1] < v42)
      {
        v124 = v22.f32[1] <= v42;
      }

      else
      {
        v123 = v19;
        v123.i32[3] = 0;
        v44 = vminnmq_f32(v123, xmmword_239E26FC0);
        v43 = vmaxnmq_f32(v123, xmmword_239E26FD0);
        v124 = 1;
      }

      if (!v124 || (v19.f32[1] > v42 ? (v125 = v22.f32[1] < v42) : (v125 = 0), v125))
      {
        v126 = v45;
        v126.i32[3] = 0;
        v127 = vmlaq_n_f32(vmulq_n_f32(v19, 1.0 - ((v42 - v19.f32[1]) / (v22.f32[1] - v19.f32[1]))), v22, (v42 - v19.f32[1]) / (v22.f32[1] - v19.f32[1]));
        v127.i32[3] = 0;
        v128 = vminnmq_f32(v126, v127);
        v129 = v46;
        v129.i32[3] = 0;
        v130 = vmaxnmq_f32(v129, v127);
        v128.i32[3] = v45.i32[3];
        v130.i32[3] = v46.i32[3];
        v131 = v44;
        v131.i32[3] = 0;
        v132 = vminnmq_f32(v131, v127);
        v133 = v43;
        v133.i32[3] = 0;
        v134 = vmaxnmq_f32(v133, v127);
        v132.i32[3] = v44.i32[3];
        v134.i32[3] = v43.i32[3];
        v44 = v132;
        v43 = v134;
        v45 = v128;
        v46 = v130;
      }

      if (v22.f32[1] <= v42)
      {
        v135 = v45;
        v135.i32[3] = 0;
        v136 = v22;
        v136.i32[3] = 0;
        v137 = vminnmq_f32(v135, v136);
        v138 = v46;
        v138.i32[3] = 0;
        v139 = vmaxnmq_f32(v138, v136);
        v137.i32[3] = v45.i32[3];
        v139.i32[3] = v46.i32[3];
        v45 = v137;
        v46 = v139;
      }

      if (v22.f32[1] >= v42)
      {
        v140 = v44;
        v140.i32[3] = 0;
        v141 = v22;
        v141.i32[3] = 0;
        v142 = vminnmq_f32(v140, v141);
        v143 = v43;
        v143.i32[3] = 0;
        v144 = vmaxnmq_f32(v143, v141);
        v142.i32[3] = v44.i32[3];
        v144.i32[3] = v43.i32[3];
        v44 = v142;
        v43 = v144;
      }

      v146 = v21.f32[1] < v42 && v22.f32[1] > v42;
      v148 = v21.f32[1] > v42 && v22.f32[1] < v42;
      if (v148 || v146)
      {
        v22 = vmlaq_n_f32(vmulq_n_f32(v22, 1.0 - ((v42 - v22.f32[1]) / (v21.f32[1] - v22.f32[1]))), v21, (v42 - v22.f32[1]) / (v21.f32[1] - v22.f32[1]));
        v149 = v45;
        v149.i32[3] = 0;
        v22.i32[3] = 0;
        v150 = vminnmq_f32(v149, v22);
        v151 = v46;
        v151.i32[3] = 0;
        v152 = vmaxnmq_f32(v151, v22);
        v150.i32[3] = v45.i32[3];
        v152.i32[3] = v46.i32[3];
        v153 = v44;
        v153.i32[3] = 0;
        v154 = vminnmq_f32(v153, v22);
        v155 = v43;
        v155.i32[3] = 0;
        v156 = vmaxnmq_f32(v155, v22);
        v154.i32[3] = v44.i32[3];
        v156.i32[3] = v43.i32[3];
        v44 = v154;
        v43 = v156;
        v45 = v150;
        v46 = v152;
      }

      if (v21.f32[1] <= v42)
      {
        v157 = v45;
        v157.i32[3] = 0;
        v158 = v21;
        v158.i32[3] = 0;
        v22 = vminnmq_f32(v157, v158);
        v159 = v46;
        v159.i32[3] = 0;
        v160 = vmaxnmq_f32(v159, v158);
        v22.i32[3] = v45.i32[3];
        v160.i32[3] = v46.i32[3];
        v45 = v22;
        v46 = v160;
      }

      if (v21.f32[1] >= v42)
      {
        v161 = v44;
        v161.i32[3] = 0;
        v162 = v21;
        v162.i32[3] = 0;
        v22 = vminnmq_f32(v161, v162);
        v163 = v43;
        v163.i32[3] = 0;
        v164 = vmaxnmq_f32(v163, v162);
        v22.i32[3] = v44.i32[3];
        v164.i32[3] = v43.i32[3];
        v44 = v22;
        v43 = v164;
      }

      v166 = v20.f32[1] < v42 && v21.f32[1] > v42;
      v168 = v20.f32[1] > v42 && v21.f32[1] < v42;
      if (v168 || v166)
      {
        v21 = vmlaq_n_f32(vmulq_n_f32(v21, 1.0 - ((v42 - v21.f32[1]) / (v20.f32[1] - v21.f32[1]))), v20, (v42 - v21.f32[1]) / (v20.f32[1] - v21.f32[1]));
        v169 = v45;
        v169.i32[3] = 0;
        v21.i32[3] = 0;
        v170 = vminnmq_f32(v169, v21);
        v171 = v46;
        v171.i32[3] = 0;
        v172 = vmaxnmq_f32(v171, v21);
        v170.i32[3] = v45.i32[3];
        v172.i32[3] = v46.i32[3];
        v173 = v44;
        v173.i32[3] = 0;
        v174 = vminnmq_f32(v173, v21);
        v175 = v43;
        v175.i32[3] = 0;
        v176 = vmaxnmq_f32(v175, v21);
        v174.i32[3] = v44.i32[3];
        v176.i32[3] = v43.i32[3];
        v44 = v174;
        v43 = v176;
        v45 = v170;
        v46 = v172;
      }

      if (v20.f32[1] <= v42)
      {
        v177 = v45;
        v177.i32[3] = 0;
        v178 = v20;
        v178.i32[3] = 0;
        v21 = vminnmq_f32(v177, v178);
        v179 = v46;
        v179.i32[3] = 0;
        v180 = vmaxnmq_f32(v179, v178);
        v21.i32[3] = v45.i32[3];
        v180.i32[3] = v46.i32[3];
        v45 = v21;
        v46 = v180;
      }

      if (v20.f32[1] >= v42)
      {
        v181 = v44;
        v181.i32[3] = 0;
        v182 = v20;
        v182.i32[3] = 0;
        v21 = vminnmq_f32(v181, v182);
        v183 = v43;
        v183.i32[3] = 0;
        v184 = vmaxnmq_f32(v183, v182);
        v21.i32[3] = v44.i32[3];
        v184.i32[3] = v43.i32[3];
        v44 = v21;
        v43 = v184;
      }

      v186 = v19.f32[1] < v42 && v20.f32[1] > v42;
      v188 = v19.f32[1] > v42 && v20.f32[1] < v42;
      if (v188 || v186)
      {
        v189 = vmlaq_n_f32(vmulq_n_f32(v20, 1.0 - ((v42 - v20.f32[1]) / (v19.f32[1] - v20.f32[1]))), v19, (v42 - v20.f32[1]) / (v19.f32[1] - v20.f32[1]));
        v190 = v45;
        v190.i32[3] = 0;
        v189.i32[3] = 0;
        v19 = vminnmq_f32(v190, v189);
        v191 = v46;
        v191.i32[3] = 0;
        v21 = vmaxnmq_f32(v191, v189);
        v19.i32[3] = v45.i32[3];
        v21.i32[3] = v46.i32[3];
        v192 = v44;
        v192.i32[3] = 0;
        v193 = vminnmq_f32(v192, v189);
        v194 = v43;
        v194.i32[3] = 0;
        v20 = vmaxnmq_f32(v194, v189);
        v193.i32[3] = v44.i32[3];
        v20.i32[3] = v43.i32[3];
        v44 = v193;
        v43 = v20;
        v45 = v19;
        v46 = v21;
      }

      v46.f32[1] = v42;
      v44.f32[1] = v42;
    }

    else
    {
      if (v40)
      {
        v275.i64[0] = 0x7F0000007FLL;
        v275.i64[1] = 0x7F0000007FLL;
        v273 = vnegq_f32(v275);
        v270 = v273;
        v271.i64[0] = 0x7F0000007FLL;
        v271.i32[2] = 127;
        goto LABEL_230;
      }

      v43.i64[0] = 0x7F0000007FLL;
      v43.i64[1] = 0x7F0000007FLL;
      v44 = vnegq_f32(v43);
      v45 = v44;
      v46.i64[0] = 0x7F0000007FLL;
      v46.i64[1] = 0x7F0000007FLL;
      if (v19.f32[0] <= v42)
      {
        v47 = v19;
        v47.i32[3] = 0;
        v45 = vminnmq_f32(v47, xmmword_239E26FC0);
        v46 = vmaxnmq_f32(v47, xmmword_239E26FD0);
      }

      if (v19.f32[0] >= v42)
      {
        v48 = v19;
        v48.i32[3] = 0;
        v44 = vminnmq_f32(v48, xmmword_239E26FC0);
        v43 = vmaxnmq_f32(v48, xmmword_239E26FD0);
      }

      v50 = v22.f32[0] < v42 && v19.f32[0] > v42;
      v52 = v22.f32[0] > v42 && v19.f32[0] < v42;
      if (v52 || v50)
      {
        v53 = (v42 - v19.f32[0]) / vsubq_f32(v22, v19).f32[0];
        v54 = v45;
        v54.i32[3] = 0;
        v55 = vmlaq_n_f32(vmulq_n_f32(v19, 1.0 - v53), v22, v53);
        v55.i32[3] = 0;
        v56 = vminnmq_f32(v54, v55);
        v57 = v46;
        v57.i32[3] = 0;
        v58 = vmaxnmq_f32(v57, v55);
        v56.i32[3] = v45.i32[3];
        v58.i32[3] = v46.i32[3];
        v59 = v44;
        v59.i32[3] = 0;
        v60 = vminnmq_f32(v59, v55);
        v61 = v43;
        v61.i32[3] = 0;
        v62 = vmaxnmq_f32(v61, v55);
        v60.i32[3] = v44.i32[3];
        v62.i32[3] = v43.i32[3];
        v44 = v60;
        v43 = v62;
        v45 = v56;
        v46 = v58;
      }

      if (v22.f32[0] <= v42)
      {
        v63 = v45;
        v63.i32[3] = 0;
        v64 = v22;
        v64.i32[3] = 0;
        v65 = vminnmq_f32(v63, v64);
        v66 = v46;
        v66.i32[3] = 0;
        v67 = vmaxnmq_f32(v66, v64);
        v65.i32[3] = v45.i32[3];
        v67.i32[3] = v46.i32[3];
        v45 = v65;
        v46 = v67;
      }

      if (v22.f32[0] >= v42)
      {
        v68 = v44;
        v68.i32[3] = 0;
        v69 = v22;
        v69.i32[3] = 0;
        v70 = vminnmq_f32(v68, v69);
        v71 = v43;
        v71.i32[3] = 0;
        v72 = vmaxnmq_f32(v71, v69);
        v70.i32[3] = v44.i32[3];
        v72.i32[3] = v43.i32[3];
        v44 = v70;
        v43 = v72;
      }

      v74 = v21.f32[0] < v42 && v22.f32[0] > v42;
      v76 = v21.f32[0] > v42 && v22.f32[0] < v42;
      if (v76 || v74)
      {
        v77 = (v42 - v22.f32[0]) / vsubq_f32(v21, v22).f32[0];
        v22 = vmlaq_n_f32(vmulq_n_f32(v22, 1.0 - v77), v21, v77);
        v78 = v45;
        v78.i32[3] = 0;
        v22.i32[3] = 0;
        v79 = vminnmq_f32(v78, v22);
        v80 = v46;
        v80.i32[3] = 0;
        v81 = vmaxnmq_f32(v80, v22);
        v79.i32[3] = v45.i32[3];
        v81.i32[3] = v46.i32[3];
        v82 = v44;
        v82.i32[3] = 0;
        v83 = vminnmq_f32(v82, v22);
        v84 = v43;
        v84.i32[3] = 0;
        v85 = vmaxnmq_f32(v84, v22);
        v83.i32[3] = v44.i32[3];
        v85.i32[3] = v43.i32[3];
        v44 = v83;
        v43 = v85;
        v45 = v79;
        v46 = v81;
      }

      if (v21.f32[0] <= v42)
      {
        v86 = v45;
        v86.i32[3] = 0;
        v87 = v21;
        v87.i32[3] = 0;
        v22 = vminnmq_f32(v86, v87);
        v88 = v46;
        v88.i32[3] = 0;
        v89 = vmaxnmq_f32(v88, v87);
        v22.i32[3] = v45.i32[3];
        v89.i32[3] = v46.i32[3];
        v45 = v22;
        v46 = v89;
      }

      if (v21.f32[0] >= v42)
      {
        v90 = v44;
        v90.i32[3] = 0;
        v91 = v21;
        v91.i32[3] = 0;
        v22 = vminnmq_f32(v90, v91);
        v92 = v43;
        v92.i32[3] = 0;
        v93 = vmaxnmq_f32(v92, v91);
        v22.i32[3] = v44.i32[3];
        v93.i32[3] = v43.i32[3];
        v44 = v22;
        v43 = v93;
      }

      v95 = v20.f32[0] < v42 && v21.f32[0] > v42;
      v97 = v20.f32[0] > v42 && v21.f32[0] < v42;
      if (v97 || v95)
      {
        v98 = (v42 - v21.f32[0]) / vsubq_f32(v20, v21).f32[0];
        v21 = vmlaq_n_f32(vmulq_n_f32(v21, 1.0 - v98), v20, v98);
        v99 = v45;
        v99.i32[3] = 0;
        v21.i32[3] = 0;
        v22 = vminnmq_f32(v99, v21);
        v100 = v46;
        v100.i32[3] = 0;
        v101 = vmaxnmq_f32(v100, v21);
        v22.i32[3] = v45.i32[3];
        v101.i32[3] = v46.i32[3];
        v102 = v44;
        v102.i32[3] = 0;
        v103 = vminnmq_f32(v102, v21);
        v104 = v43;
        v104.i32[3] = 0;
        v105 = vmaxnmq_f32(v104, v21);
        v103.i32[3] = v44.i32[3];
        v105.i32[3] = v43.i32[3];
        v44 = v103;
        v43 = v105;
        v45 = v22;
        v46 = v101;
      }

      if (v20.f32[0] <= v42)
      {
        v106 = v45;
        v106.i32[3] = 0;
        v107 = v20;
        v107.i32[3] = 0;
        v21 = vminnmq_f32(v106, v107);
        v108 = v46;
        v108.i32[3] = 0;
        v22 = vmaxnmq_f32(v108, v107);
        v21.i32[3] = v45.i32[3];
        v22.i32[3] = v46.i32[3];
        v45 = v21;
        v46 = v22;
      }

      if (v20.f32[0] >= v42)
      {
        v109 = v44;
        v109.i32[3] = 0;
        v110 = v20;
        v110.i32[3] = 0;
        v21 = vminnmq_f32(v109, v110);
        v111 = v43;
        v111.i32[3] = 0;
        v22 = vmaxnmq_f32(v111, v110);
        v21.i32[3] = v44.i32[3];
        v22.i32[3] = v43.i32[3];
        v44 = v21;
        v43 = v22;
      }

      v113 = v19.f32[0] < v42 && v20.f32[0] > v42;
      v115 = v19.f32[0] > v42 && v20.f32[0] < v42;
      if (v115 || v113)
      {
        v22 = vsubq_f32(v19, v20);
        v116 = vmlaq_n_f32(vmulq_n_f32(v20, 1.0 - ((v42 - v20.f32[0]) / v22.f32[0])), v19, (v42 - v20.f32[0]) / v22.f32[0]);
        v117 = v45;
        v117.i32[3] = 0;
        v116.i32[3] = 0;
        v19 = vminnmq_f32(v117, v116);
        v118 = v46;
        v118.i32[3] = 0;
        v21 = vmaxnmq_f32(v118, v116);
        v19.i32[3] = v45.i32[3];
        v21.i32[3] = v46.i32[3];
        v119 = v44;
        v119.i32[3] = 0;
        v120 = vminnmq_f32(v119, v116);
        v121 = v43;
        v121.i32[3] = 0;
        v20 = vmaxnmq_f32(v121, v116);
        v120.i32[3] = v44.i32[3];
        v20.i32[3] = v43.i32[3];
        v44 = v120;
        v43 = v20;
        v45 = v19;
        v46 = v21;
      }

      v46.f32[0] = v42;
      v44.f32[0] = v42;
    }

    v268 = v45;
    v268.i32[3] = 0;
    v36.i64[1] = v37;
    v269 = v46;
    v269.i32[3] = 0;
    v38.i64[1] = v39;
    v270 = vmaxnmq_f32(v268, v36);
    v271 = vminnmq_f32(v269, v38);
    v272 = v44;
    v272.i32[3] = 0;
    v273 = vmaxnmq_f32(v272, v36);
    v274 = v43;
    v274.i32[3] = 0;
    v275 = vminnmq_f32(v274, v38);
LABEL_230:
    *result = v270.i64[0];
    *(result + 2) = v271.i64[0];
    *(result + 2) = v270.i32[2];
    *(result + 6) = v271.i32[2];
    *v11 = v273.i64[0];
    v11[2] = v273.f32[2];
    *(v11 + 3) = v24;
    *(v11 + 2) = v275.i64[0];
    v276 = v11 + 6;
    *(v11 + 7) = v23;
    v11 += 8;
    result += 2;
  }

  v277 = *MEMORY[0x277D85DE8];
  return result;
}