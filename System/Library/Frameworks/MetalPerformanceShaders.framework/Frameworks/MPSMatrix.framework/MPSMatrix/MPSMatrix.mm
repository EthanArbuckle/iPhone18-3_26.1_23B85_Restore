uint64_t sub_2399CDE90(void *a1, const char *a2, uint64_t a3, void *a4, void *a5, void *a6, uint64_t a7, uint64_t a8)
{
  objc_msgSend_matrices(a4, a2, a3, a4, a5, a6, a7, a8);
  objc_msgSend_batchStart(a1, v12, v13, v14, v15, v16, v17, v18);
  objc_msgSend_matrices(a5, v19, v20, v21, v22, v23, v24, v25);
  objc_msgSend_batchStart(a1, v26, v27, v28, v29, v30, v31, v32);
  objc_msgSend_matrices(a6, v33, v34, v35, v36, v37, v38, v39);
  objc_msgSend_batchStart(a1, v40, v41, v42, v43, v44, v45, v46);
  objc_msgSend_batchSize(a1, v47, v48, v49, v50, v51, v52, v53);
  v61 = objc_msgSend_M(a1, v54, v55, v56, v57, v58, v59, v60);
  objc_msgSend_N(a1, v62, v63, v64, v65, v66, v67, v68);
  objc_msgSend_K(a1, v69, v70, v71, v72, v73, v74, v75);
  objc_msgSend_batchStart(a1, v76, v77, v78, v79, v80, v81, v82);
  v188 = a4;
  objc_msgSend_dataType(a4, v83, v84, v85, v86, v87, v88, v89);
  MPSGetDataTypeName();
  objc_msgSend_dataType(a5, v90, v91, v92, v93, v94, v95, v96);
  MPSGetDataTypeName();
  objc_msgSend_dataType(a6, v97, v98, v99, v100, v101, v102, v103);
  MPSGetDataTypeName();
  result = sub_2399CE0D8(a1, v104, v105, v106, v107, v108, v109, v110, v61);
  if ((*(*(a1 + *MEMORY[0x277CD7350]) + 1477) & 4) != 0)
  {
    v189 = a1[13];
    result = objc_msgSend_batchSize(a1, v112, v113, v114, v115, v116, v117, v118);
    if (result)
    {
      v126 = objc_msgSend_matrices(a4, v119, v120, v121, v122, v123, v124, v125);
      v134 = v126 - objc_msgSend_batchStart(a1, v127, v128, v129, v130, v131, v132, v133);
      v142 = objc_msgSend_matrices(a5, v135, v136, v137, v138, v139, v140, v141);
      v150 = v142 - objc_msgSend_batchStart(a1, v143, v144, v145, v146, v147, v148, v149);
      v158 = objc_msgSend_matrices(a6, v151, v152, v153, v154, v155, v156, v157);
      v166 = objc_msgSend_batchStart(a1, v159, v160, v161, v162, v163, v164, v165);
      if (v134 >= v150)
      {
        v174 = v150;
      }

      else
      {
        v174 = v134;
      }

      if (v174 >= v158 - v166)
      {
        v175 = v158 - v166;
      }

      else
      {
        v175 = v174;
      }

      v176 = objc_msgSend_batchSize(a1, v167, v168, v169, v170, v171, v172, v173);
      if (v175 >= v176)
      {
        v184 = v176;
      }

      else
      {
        v184 = v175;
      }

      v185 = objc_msgSend_batchStart(a1, v177, v178, v179, v180, v181, v182, v183);

      return v189(a1, a2, a3, v188, a5, a6, v185, v184);
    }
  }

  return result;
}

uint64_t sub_2399CE0D8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if ((*(result + *MEMORY[0x277CD7378]) & 0x10) != 0)
  {
    if (*(result + *MEMORY[0x277CD7380]))
    {
      return vfprintf(*MEMORY[0x277D85DF8], "Internal Matrix Multiply: M=%lu, N=%lu, K=%lu, Batch Size=%lu, Batch Start Index: %lu, A Datatype: %s, B Datatype: %s C Datatype: %s\n", &a9);
    }
  }

  return result;
}

id sub_2399CE398(void **a1, char *a2, uint64_t a3, void *a4, void *a5, void *a6, uint64_t a7, uint64_t a8)
{
  v372[3] = *MEMORY[0x277D85DE8];
  v12 = objc_msgSend_matrices(a4, a2, a3, a4, a5, a6, a7, a8);
  v20 = objc_msgSend_matrixBytes(a4, v13, v14, v15, v16, v17, v18, v19);
  v355 = objc_msgSend_matrices(a5, v21, v22, v23, v24, v25, v26, v27);
  v28 = a5;
  v36 = objc_msgSend_matrixBytes(a5, v29, v30, v31, v32, v33, v34, v35);
  v44 = objc_msgSend_matrices(a6, v37, v38, v39, v40, v41, v42, v43);
  v45 = a6;
  v53 = objc_msgSend_matrixBytes(a6, v46, v47, v48, v49, v50, v51, v52);
  if ((objc_msgSend_dataType(a4, v54, v55, v56, v57, v58, v59, v60) & 0x10000000) != 0 && (objc_msgSend_dataType(v28, v61, v62, v63, v64, v65, v66, v67) & 0x10000000) != 0)
  {
    v77 = objc_msgSend_dataType(v45, v68, v69, v70, v71, v72, v73, v74);
    if ((v20 * v12) >= 0x10 && (v36 * v355) >= 0x10 && (v53 * v44) >= 0x10 && (v77 & 0x10000000) != 0)
    {
      v85 = a1;
      result = objc_msgSend_M(a1, v78, v79, v80, v81, v82, v83, v84);
      if (!result || (result = objc_msgSend_N(a1, v86, v87, v88, v89, v90, v91, v92)) == 0)
      {
LABEL_47:
        v354 = *MEMORY[0x277D85DE8];
        return result;
      }

      if (objc_msgSend_transA(a1, v93, v94, v95, v96, v97, v98, v99))
      {
        v107 = a3;
        if (a1)
        {
          objc_msgSend_leftMatrixOrigin(a1, v100, v101, v102, v103, v104, v105, v106);
          v359 = v370;
        }

        else
        {
          v359 = 0;
        }
      }

      else
      {
        v107 = a3;
        if (a1)
        {
          objc_msgSend_leftMatrixOrigin(a1, v100, v101, v102, v103, v104, v105, v106);
          v359 = v369;
        }

        else
        {
          v359 = 0;
          v369 = 0;
          v370 = 0;
          v371 = 0;
        }
      }

      if (objc_msgSend_transA(a1, v100, v101, v102, v103, v104, v105, v106))
      {
        if (a1)
        {
          objc_msgSend_leftMatrixOrigin(a1, v108, v109, v110, v111, v112, v113, v114);
          v357 = v369;
          if (objc_msgSend_transB(a1, v115, v116, v117, v118, v119, v120, v121))
          {
LABEL_29:
            if (a1)
            {
              objc_msgSend_rightMatrixOrigin(a1, v122, v123, v124, v125, v126, v127, v128);
              v362 = v370;
              if (!objc_msgSend_transB(a1, v150, v151, v152, v153, v154, v155, v156))
              {
                goto LABEL_31;
              }

              goto LABEL_34;
            }

LABEL_33:
            v362 = 0;
            if (!objc_msgSend_transB(a1, v122, v123, v124, v125, v126, v127, v128))
            {
LABEL_31:
              if (a1)
              {
                objc_msgSend_rightMatrixOrigin(a1, v143, v144, v145, v146, v147, v148, v149);
                v157 = v370;
LABEL_37:
                v158 = objc_msgSend_K(a1, v143, v144, v145, v146, v147, v148, v149);
                v173 = objc_msgSend_M(a1, v159, v160, v161, v162, v163, v164, v165);
                if (v85)
                {
                  objc_msgSend_leftMatrixOrigin(v85, v166, v167, v168, v169, v170, v171, v172);
                  v174 = v371;
                  v182 = objc_msgSend_matrices(a4, v175, v176, v177, v178, v179, v180, v181);
                  objc_msgSend_leftMatrixOrigin(v85, v183, v184, v185, v186, v187, v188, v189);
                  v197 = v368;
                }

                else
                {
                  v370 = 0;
                  v371 = 0;
                  v182 = objc_msgSend_matrices(a4, v166, v167, v168, v169, v170, v171, v172);
                  v197 = 0;
                  v174 = 0;
                  v367 = 0;
                  v368 = 0;
                }

                v198 = v182 - v197;
                v199 = objc_msgSend_transA(v85, v190, v191, v192, v193, v194, v195, v196);
                v360 = sub_2399D4128(a4, v357, v158, v359, v173, v174, v198, v107, v199);
                v207 = objc_msgSend_N(v85, v200, v201, v202, v203, v204, v205, v206);
                v222 = objc_msgSend_K(v85, v208, v209, v210, v211, v212, v213, v214);
                if (v85)
                {
                  objc_msgSend_rightMatrixOrigin(v85, v215, v216, v217, v218, v219, v220, v221);
                  v223 = v371;
                  v231 = objc_msgSend_matrices(v28, v224, v225, v226, v227, v228, v229, v230);
                  objc_msgSend_rightMatrixOrigin(v85, v232, v233, v234, v235, v236, v237, v238);
                  v246 = v368;
                }

                else
                {
                  v370 = 0;
                  v231 = objc_msgSend_matrices(v28, v215, v216, v217, v218, v219, v220, v221);
                  v246 = 0;
                  v223 = 0;
                  v367 = 0;
                }

                v247 = v231 - v246;
                v248 = objc_msgSend_transB(v85, v239, v240, v241, v242, v243, v244, v245);
                v363 = sub_2399D4128(v28, v157, v207, v362, v222, v223, v247, v107, v248);
                if (v85)
                {
                  objc_msgSend_resultMatrixOrigin(v85, v249, v250, v251, v252, v253, v254, v255);
                  v256 = v370;
                  v264 = objc_msgSend_N(v85, v257, v258, v259, v260, v261, v262, v263);
                  objc_msgSend_resultMatrixOrigin(v85, v265, v266, v267, v268, v269, v270, v271);
                  v272 = v367;
                  v280 = objc_msgSend_M(v85, v273, v274, v275, v276, v277, v278, v279);
                  objc_msgSend_resultMatrixOrigin(v85, v281, v282, v283, v284, v285, v286, v287);
                  v288 = v366;
                  v296 = objc_msgSend_matrices(v45, v289, v290, v291, v292, v293, v294, v295);
                  objc_msgSend_resultMatrixOrigin(v85, v297, v298, v299, v300, v301, v302, v303);
                  v304 = v365;
                }

                else
                {
                  v264 = objc_msgSend_N(0, v249, v250, v251, v252, v253, v254, v255);
                  v280 = objc_msgSend_M(0, v305, v306, v307, v308, v309, v310, v311);
                  v296 = objc_msgSend_matrices(v45, v312, v313, v314, v315, v316, v317, v318);
                  v304 = 0;
                  v288 = 0;
                  v256 = 0;
                  v272 = 0;
                }

                v319 = sub_2399D4128(v45, v256, v264, v272, v280, v288, v296 - v304, v107, 0);
                v372[0] = v360;
                v372[1] = v363;
                v372[2] = v319;
                v325 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v320, v372, 3, v321, v322, v323, v324);
                objc_msgSend_beta(v85, v326, v327, v328, v329, v330, v331, v332);
                objc_msgSend_setBeta_(v85[14], v333, v334, v335, v336, v337, v338, v339);
                objc_msgSend_alpha(v85, v340, v341, v342, v343, v344, v345, v346);
                objc_msgSend_setAlpha_(v85[14], v347, v348, v349, v350, v351, v352, v353);
                result = [v85[14] getUid("encodeToCommandEncoder:a2 commandBuffer:v107 sourceArrays:v325 resultState:0 destinationArray:v319 kernelDAGObject:0")];
                goto LABEL_47;
              }

              goto LABEL_36;
            }

LABEL_34:
            if (a1)
            {
              objc_msgSend_rightMatrixOrigin(a1, v143, v144, v145, v146, v147, v148, v149);
              v157 = v369;
              goto LABEL_37;
            }

LABEL_36:
            v157 = 0;
            goto LABEL_37;
          }

LABEL_25:
          if (a1)
          {
            objc_msgSend_rightMatrixOrigin(a1, v122, v123, v124, v125, v126, v127, v128);
            v362 = v369;
            if (!objc_msgSend_transB(a1, v136, v137, v138, v139, v140, v141, v142))
            {
              goto LABEL_31;
            }

            goto LABEL_34;
          }

          goto LABEL_33;
        }
      }

      else if (a1)
      {
        objc_msgSend_leftMatrixOrigin(a1, v108, v109, v110, v111, v112, v113, v114);
        v357 = v370;
        if (objc_msgSend_transB(a1, v129, v130, v131, v132, v133, v134, v135))
        {
          goto LABEL_29;
        }

        goto LABEL_25;
      }

      v357 = 0;
      if (objc_msgSend_transB(a1, v108, v109, v110, v111, v112, v113, v114))
      {
        goto LABEL_29;
      }

      goto LABEL_25;
    }
  }

  v75 = *MEMORY[0x277D85DE8];

  return sub_2399CE960(a1, a2, a3, a4, v28, v45, a7, a8);
}

uint64_t sub_2399CE960(char *a1, char *a2, uint64_t a3, char *a4, uint64_t a5, char *a6, uint64_t a7, uint64_t a8)
{
  v8 = a8;
  v9 = a5;
  v12 = a1;
  if (objc_msgSend_M(a1, a2, a3, a4, a5, a6, a7, a8) >= 8 && objc_msgSend_N(v12, v13, v14, v15, v16, v17, v18, v19) >= 8)
  {
    v241 = objc_msgSend_K(v12, v13, v14, v15, v16, v17, v18, v19);
    if (v8 != 1 || v241 > 7)
    {
      goto LABEL_4;
    }

LABEL_18:

    return sub_2399D1A44(v12, a2, a3, a4, v9, a6, a7, 1uLL);
  }

  if (v8 == 1)
  {
    goto LABEL_18;
  }

LABEL_4:
  v2345 = v8;
  v2346 = a2;
  v2349 = v9;
  v2350 = a4;
  if (objc_msgSend_dataType(a4, v13, v14, v15, v16, v17, v18, v19) == 268435488)
  {
    if (v8 >= 2 && objc_msgSend_dataType(v9, v20, v21, v22, v23, v24, v25, v26) == 268435488)
    {
      v27 = *&v12[*MEMORY[0x277CD7370]];
      result = objc_msgSend_M(v12, v20, v21, v22, v23, v24, v25, v26);
      if (!result)
      {
        return result;
      }

      result = objc_msgSend_N(v12, v29, v30, v31, v32, v33, v34, v35);
      if (!result)
      {
        return result;
      }

      objc_msgSend_leftMatrixOrigin(v12, v36, v37, v38, v39, v40, v41, v42);
      v2296 = v2363;
      v2280 = objc_msgSend_dataType(v2350, v43, v44, v45, v46, v47, v48, v49);
      objc_msgSend_leftMatrixOrigin(v12, v50, v51, v52, v53, v54, v55, v56);
      v2329 = v2359.i64[0];
      v2323 = objc_msgSend_rowBytes(v2350, v57, v58, v59, v60, v61, v62, v63);
      objc_msgSend_rightMatrixOrigin(v12, v64, v65, v66, v67, v68, v69, v70);
      v2291 = v2363;
      v2274 = objc_msgSend_dataType(v9, v71, v72, v73, v74, v75, v76, v77);
      objc_msgSend_rightMatrixOrigin(v12, v78, v79, v80, v81, v82, v83, v84);
      v2318 = v2359.i64[0];
      v2312 = objc_msgSend_rowBytes(v9, v85, v86, v87, v88, v89, v90, v91);
      objc_msgSend_resultMatrixOrigin(v12, v92, v93, v94, v95, v96, v97, v98);
      v2286 = v2363;
      v106 = v9;
      v107 = objc_msgSend_dataType(a6, v99, v100, v101, v102, v103, v104, v105);
      objc_msgSend_resultMatrixOrigin(v12, v108, v109, v110, v111, v112, v113, v114);
      v2307 = v2359.i64[0];
      v2302 = objc_msgSend_rowBytes(a6, v115, v116, v117, v118, v119, v120, v121);
      v122 = *MEMORY[0x277CD73A8];
      v123 = *&v106[v122];
      v2334 = v123;
      v2339 = *&v2350[v122];
      v2344 = *&a6[v122];
      objc_msgSend_transA(v12, v124, v125, v126, v127, v128, v129, v130);
      objc_msgSend_transB(v12, v131, v132, v133, v134, v135, v136, v137);
      objc_msgSend_dataType(v106, v138, v139, v140, v141, v142, v143, v144);
      objc_msgSend_dataType(v106, v145, v146, v147, v148, v149, v150, v151);
      objc_msgSend_dataType(v106, v152, v153, v154, v155, v156, v157, v158);
      objc_msgSend_dataType(v106, v159, v160, v161, v162, v163, v164, v165);
      objc_msgSend_dataType(v2350, v166, v167, v168, v169, v170, v171, v172);
      objc_msgSend_dataType(v2350, v173, v174, v175, v176, v177, v178, v179);
      objc_msgSend_dataType(v2350, v180, v181, v182, v183, v184, v185, v186);
      objc_msgSend_dataType(v2350, v187, v188, v189, v190, v191, v192, v193);
      objc_msgSend_dataType(a6, v194, v195, v196, v197, v198, v199, v200);
      objc_msgSend_dataType(a6, v201, v202, v203, v204, v205, v206, v207);
      if (objc_msgSend_M(v12, v208, v209, v210, v211, v212, v213, v214) > 0x20 || objc_msgSend_N(v12, v215, v216, v217, v218, v219, v220, v221) <= 0x1FF)
      {
        if (objc_msgSend_N(v12, v215, v216, v217, v218, v219, v220, v221) > 0x20 || objc_msgSend_M(v12, v215, v216, v217, v218, v219, v220, v221) < 0x200)
        {
LABEL_254:
          if (qword_280D74AC8 != -1)
          {
            dispatch_once(&qword_280D74AC8, &unk_284C9E178);
          }

          objc_msgSend_alpha(v12, v215, v216, v217, v218, v219, v220, v221);
          if (v2002 == 1.0)
          {
            objc_msgSend_beta(v12, v1995, v1996, v1997, v1998, v1999, v2000, v2001);
          }

          v2285 = v2280 >> 3;
          v2279 = v2274 >> 3;
          v2273 = v107 >> 3;
          if (objc_msgSend_M(v12, v1995, v1996, v1997, v1998, v1999, v2000, v2001) > 0x7FFE)
          {
            v2010 = v27;
          }

          else
          {
            v2010 = v27;
            if (objc_msgSend_N(v12, v2003, v2004, v2005, v2006, v2007, v2008, v2009) <= 0x7FFE)
            {
              objc_msgSend_K(v12, v2003, v2004, v2005, v2006, v2007, v2008, v2009);
            }
          }

          if (objc_msgSend_M(v12, v2003, v2004, v2005, v2006, v2007, v2008, v2009) % word_27DF856EA || objc_msgSend_N(v12, v2011, v2012, v2013, v2014, v2015, v2016, v2017) % word_27DF856E8 || objc_msgSend_K(v12, v2018, v2019, v2020, v2021, v2022, v2023, v2024) % dword_27DF856EC)
          {
            v2025 = 75;
          }

          else
          {
            v2025 = 74;
          }

          v2026 = (&off_284CA32C0)[16 * v2025];
          MPSLibrary::CreateUberShaderKey();
          PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
          MPSLibrary::ReleaseMPSKey();
          v2034 = objc_msgSend_N(v12, v2027, v2028, v2029, v2030, v2031, v2032, v2033, 0, 0, 0, 0, 0);
          v2361 = v2034;
          v2042 = objc_msgSend_M(v12, v2035, v2036, v2037, v2038, v2039, v2040, v2041);
          v2362 = v2042;
          LODWORD(v2363) = objc_msgSend_K(v12, v2043, v2044, v2045, v2046, v2047, v2048, v2049);
          HIDWORD(v2363) = v8;
          v2364 = objc_msgSend_rowBytes(v2349, v2050, v2051, v2052, v2053, v2054, v2055, v2056);
          v2365 = objc_msgSend_rowBytes(v2350, v2057, v2058, v2059, v2060, v2061, v2062, v2063);
          v2366 = objc_msgSend_rowBytes(a6, v2064, v2065, v2066, v2067, v2068, v2069, v2070);
          v2367 = objc_msgSend_rowBytes(a6, v2071, v2072, v2073, v2074, v2075, v2076, v2077);
          v2368 = objc_msgSend_matrixBytes(v2349, v2078, v2079, v2080, v2081, v2082, v2083, v2084);
          v2369 = objc_msgSend_matrixBytes(v2350, v2085, v2086, v2087, v2088, v2089, v2090, v2091);
          v2370 = objc_msgSend_matrixBytes(a6, v2092, v2093, v2094, v2095, v2096, v2097, v2098);
          v2371 = objc_msgSend_matrixBytes(a6, v2099, v2100, v2101, v2102, v2103, v2104, v2105);
          objc_msgSend_alpha(v12, v2106, v2107, v2108, v2109, v2110, v2111, v2112);
          *&v2113 = v2113;
          v2372 = LODWORD(v2113);
          objc_msgSend_beta(v12, v2114, v2115, v2116, v2117, v2118, v2119, v2120);
          *&v2121 = v2121;
          v2373 = LODWORD(v2121);
          v2374 = 0u;
          memset(v2375, 0, sizeof(v2375));
          v2122 = *(v2010 + 32);
          v2359 = 0u;
          v2360 = 0u;
          (*(*v2122 + 24))(&v2359);
          v2130 = (((HIWORD(dword_27DF856EC) - 128) >> 7) | ((HIWORD(dword_27DF856EC) - 128) << 9));
          if (v2130 > 2)
          {
            v2132 = v2286;
            v2131 = v2291;
            v2134 = v2279;
            v2133 = v2285;
            v2135 = v2273;
            if (v2130 == 3)
            {
              v2359 = xmmword_2399EC740;
              v2137 = 32;
              v2136 = 16;
              goto LABEL_276;
            }

            if (v2130 == 7)
            {
              v2136 = 32;
              v2359 = vdupq_n_s64(0x20uLL);
              v2137 = 32;
              goto LABEL_276;
            }
          }

          else
          {
            v2132 = v2286;
            v2131 = v2291;
            v2134 = v2279;
            v2133 = v2285;
            v2135 = v2273;
            if (!(((HIWORD(dword_27DF856EC) - 128) >> 7) | ((HIWORD(dword_27DF856EC) - 128) << 9)))
            {
              v2359 = xmmword_2399EC750;
              v2137 = 16;
              v2136 = 8;
              goto LABEL_276;
            }

            if (v2130 == 1)
            {
              v2136 = 16;
              v2359 = vdupq_n_s64(0x10uLL);
              v2137 = 16;
LABEL_276:
              v2138 = v2296 * v2133;
              v2139 = v2131 * v2134;
              v2140 = v2132 * v2135;
              *&v2360 = word_27DF856E8 / v2137;
              *(&v2360 + 1) = word_27DF856EA / v2136;
              v2141 = objc_msgSend_maxTotalThreadsPerThreadgroup(PipelineStateForMPSKey, v2123, v2124, v2125, v2126, v2127, v2128, v2129);
              v2149 = v2141 / v2137;
              if (v2136 < v2141 / v2137)
              {
                v2149 = v2136;
              }

              if (v2137 * v2136 <= v2141)
              {
                v2150 = 1;
              }

              else
              {
                v2136 = v2149;
                v2150 = v2149 * v2137 <= v2141;
              }

              v2301 = v2150;
              v2151 = v2360 * v2137;
              v2152 = v2360 * v2137 + v2034 - 1;
              v2153 = *(&v2360 + 1) * v2136;
              v2154 = *(&v2360 + 1) * v2136 + v2042 - 1;
              if (objc_msgSend_dataType(v2349, v2142, v2143, v2144, v2145, v2146, v2147, v2148) == 268435472)
              {
                v2162 = 1;
              }

              else
              {
                v2163 = objc_msgSend_dataType(v2349, v2155, v2156, v2157, v2158, v2159, v2160, v2161);
                v2162 = 1;
                if (v2163 != 536870928)
                {
                  v2162 = 2;
                }
              }

              v2164 = v2138 + v2323 * v2329;
              v2165 = v2139 + v2312 * v2318;
              v2166 = v2140 + v2302 * v2307;
              v2328 = (v2137 << v2162) * dword_27DF856EC * v2360;
              v2167 = v2154 / v2153;
              if (objc_msgSend_dataType(v2350, v2155, v2156, v2157, v2158, v2159, v2160, v2161) == 268435472)
              {
                v2175 = 1;
              }

              else
              {
                v2176 = objc_msgSend_dataType(v2350, v2168, v2169, v2170, v2171, v2172, v2173, v2174);
                v2175 = 1;
                if (v2176 != 536870928)
                {
                  v2175 = 2;
                }
              }

              v2177 = (v2136 << v2175) * dword_27DF856EC * *(&v2360 + 1);
              objc_msgSend_setComputePipelineState_(v2346, v2168, PipelineStateForMPSKey, v2170, v2171, v2172, v2173, v2174);
              v2185 = objc_msgSend_data(v2349, v2178, v2179, v2180, v2181, v2182, v2183, v2184);
              objc_msgSend_setBuffer_offset_atIndex_(v2346, v2186, v2185, v2165 + v2334, 0, v2187, v2188, v2189);
              v2197 = objc_msgSend_data(v2350, v2190, v2191, v2192, v2193, v2194, v2195, v2196);
              objc_msgSend_setBuffer_offset_atIndex_(v2346, v2198, v2197, v2164 + v2339, 1, v2199, v2200, v2201);
              v2209 = objc_msgSend_data(a6, v2202, v2203, v2204, v2205, v2206, v2207, v2208);
              objc_msgSend_setBuffer_offset_atIndex_(v2346, v2210, v2209, v2166 + v2344, 2, v2211, v2212, v2213);
              objc_msgSend_setBytes_length_atIndex_(v2346, v2214, &v2361, 100, 3, v2215, v2216, v2217);
              objc_msgSend_setThreadgroupMemoryLength_atIndex_(v2346, v2218, v2328, 0, v2219, v2220, v2221, v2222);
              objc_msgSend_setThreadgroupMemoryLength_atIndex_(v2346, v2223, v2177, 1, v2224, v2225, v2226, v2227);
              v2356 = v2152 / v2151;
              v2357 = v2167;
              v2358 = v2345;
              v2353 = v2137;
              v2354 = v2136;
              v2355 = v2301;
              objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v2346, v2228, &v2356, &v2353, v2229, v2230, v2231, v2232);
              return MPSLibrary::ReleaseComputeState();
            }
          }

          v2136 = v2359.u64[1];
          v2137 = v2359.i64[0];
          goto LABEL_276;
        }

        v222 = 128;
        v223 = 32;
      }

      else
      {
        v222 = 32;
        v223 = 128;
      }

      word_27DF856E8 = v223;
      word_27DF856EA = v222;
      dword_27DF856EC = 16777232;
      goto LABEL_254;
    }

    result = objc_msgSend_dataType(v9, v20, v21, v22, v23, v24, v25, v26);
    if (result == 268435472)
    {
      if (!v8)
      {
        return result;
      }

      v675 = 0;
      v676 = MEMORY[0x277CD7370];
      v677 = 1;
      v2233 = v12;
      while (1)
      {
        v739 = *&v12[*v676];
        result = objc_msgSend_M(v12, v668, v669, v670, v671, v672, v673, v674);
        if (result)
        {
          result = objc_msgSend_N(v12, v668, v669, v670, v671, v672, v673, v674);
          if (result)
          {
            break;
          }
        }

LABEL_77:
        v675 = v677++;
        if (v675 >= v8)
        {
          return result;
        }
      }

      v2336 = v677;
      objc_msgSend_leftMatrixOrigin(v12, v668, v669, v670, v671, v672, v673, v674);
      v2325 = v2363;
      v2320 = objc_msgSend_dataType(v2350, v740, v741, v742, v743, v744, v745, v746);
      objc_msgSend_leftMatrixOrigin(v12, v747, v748, v749, v750, v751, v752, v753);
      v2315 = v2359.i64[0];
      v2304 = objc_msgSend_rowBytes(v2350, v754, v755, v756, v757, v758, v759, v760);
      v2298 = objc_msgSend_matrixBytes(v2350, v761, v762, v763, v764, v765, v766, v767);
      objc_msgSend_rightMatrixOrigin(v12, v768, v769, v770, v771, v772, v773, v774);
      v2293 = v2363;
      v2282 = objc_msgSend_dataType(v9, v775, v776, v777, v778, v779, v780, v781);
      objc_msgSend_rightMatrixOrigin(v12, v782, v783, v784, v785, v786, v787, v788);
      v2276 = v2359.i64[0];
      v2270 = objc_msgSend_rowBytes(v9, v789, v790, v791, v792, v793, v794, v795);
      v2266 = objc_msgSend_matrixBytes(v9, v796, v797, v798, v799, v800, v801, v802);
      objc_msgSend_resultMatrixOrigin(v12, v803, v804, v805, v806, v807, v808, v809);
      v2262 = v2363;
      v2258 = objc_msgSend_dataType(a6, v810, v811, v812, v813, v814, v815, v816);
      objc_msgSend_resultMatrixOrigin(v12, v817, v818, v819, v820, v821, v822, v823);
      v2254 = v2359.i64[0];
      v2250 = objc_msgSend_rowBytes(a6, v824, v825, v826, v827, v828, v829, v830);
      v2246 = objc_msgSend_matrixBytes(a6, v831, v832, v833, v834, v835, v836, v837);
      v838 = *MEMORY[0x277CD73A8];
      v2309 = *&v2350[v838];
      v2288 = *&v9[v838];
      v2331 = *&a6[v838];
      objc_msgSend_transA(v12, v839, v840, v841, v842, v843, v844, v845);
      objc_msgSend_transB(v12, v846, v847, v848, v849, v850, v851, v852);
      objc_msgSend_dataType(v9, v853, v854, v855, v856, v857, v858, v859);
      objc_msgSend_dataType(v9, v860, v861, v862, v863, v864, v865, v866);
      objc_msgSend_dataType(v9, v867, v868, v869, v870, v871, v872, v873);
      objc_msgSend_dataType(v9, v874, v875, v876, v877, v878, v879, v880);
      objc_msgSend_dataType(v2350, v881, v882, v883, v884, v885, v886, v887);
      objc_msgSend_dataType(v2350, v888, v889, v890, v891, v892, v893, v894);
      objc_msgSend_dataType(v2350, v895, v896, v897, v898, v899, v900, v901);
      objc_msgSend_dataType(v2350, v902, v903, v904, v905, v906, v907, v908);
      objc_msgSend_dataType(a6, v909, v910, v911, v912, v913, v914, v915);
      objc_msgSend_dataType(a6, v916, v917, v918, v919, v920, v921, v922);
      if (objc_msgSend_M(v12, v923, v924, v925, v926, v927, v928, v929) > 0x20 || objc_msgSend_N(v12, v930, v931, v932, v933, v934, v935, v936) <= 0x1FF)
      {
        v939 = v739;
        if (objc_msgSend_N(v12, v930, v931, v932, v933, v934, v935, v936) > 0x20 || objc_msgSend_M(v12, v930, v931, v932, v933, v934, v935, v936) < 0x200)
        {
LABEL_87:
          if (qword_280D74AD0 != -1)
          {
            dispatch_once(&qword_280D74AD0, &unk_284CAA6D8);
          }

          objc_msgSend_alpha(v12, v930, v931, v932, v933, v934, v935, v936);
          if (v947 == 1.0)
          {
            objc_msgSend_beta(v12, v940, v941, v942, v943, v944, v945, v946);
          }

          if (objc_msgSend_M(v12, v940, v941, v942, v943, v944, v945, v946) <= 0x7FFE && objc_msgSend_N(v12, v948, v949, v950, v951, v952, v953, v954) <= 0x7FFE)
          {
            objc_msgSend_K(v12, v948, v949, v950, v951, v952, v953, v954);
          }

          if (objc_msgSend_M(v12, v948, v949, v950, v951, v952, v953, v954) % word_27DF856F2 || objc_msgSend_N(v12, v955, v956, v957, v958, v959, v960, v961) % word_27DF856F0 || objc_msgSend_K(v12, v962, v963, v964, v965, v966, v967, v968) % dword_27DF856F4)
          {
            v969 = 75;
          }

          else
          {
            v969 = 74;
          }

          v970 = (&off_284CA32C0)[16 * v969];
          MPSLibrary::CreateUberShaderKey();
          v2341 = MPSLibrary::GetPipelineStateForMPSKey();
          MPSLibrary::ReleaseMPSKey();
          v978 = objc_msgSend_N(v12, v971, v972, v973, v974, v975, v976, v977, 0, 0, 0, 0, 0);
          v2361 = v978;
          v2242 = objc_msgSend_M(v12, v979, v980, v981, v982, v983, v984, v985);
          v2362 = v2242;
          LODWORD(v2363) = objc_msgSend_K(v12, v986, v987, v988, v989, v990, v991, v992);
          HIDWORD(v2363) = 1;
          v2364 = objc_msgSend_rowBytes(v2349, v993, v994, v995, v996, v997, v998, v999);
          v2365 = objc_msgSend_rowBytes(v2350, v1000, v1001, v1002, v1003, v1004, v1005, v1006);
          v2366 = objc_msgSend_rowBytes(a6, v1007, v1008, v1009, v1010, v1011, v1012, v1013);
          v2367 = objc_msgSend_rowBytes(a6, v1014, v1015, v1016, v1017, v1018, v1019, v1020);
          v2368 = objc_msgSend_matrixBytes(v2349, v1021, v1022, v1023, v1024, v1025, v1026, v1027);
          v2369 = objc_msgSend_matrixBytes(v2350, v1028, v1029, v1030, v1031, v1032, v1033, v1034);
          v2370 = objc_msgSend_matrixBytes(a6, v1035, v1036, v1037, v1038, v1039, v1040, v1041);
          v2371 = objc_msgSend_matrixBytes(a6, v1042, v1043, v1044, v1045, v1046, v1047, v1048);
          objc_msgSend_alpha(v12, v1049, v1050, v1051, v1052, v1053, v1054, v1055);
          *&v1056 = v1056;
          v2372 = LODWORD(v1056);
          objc_msgSend_beta(v12, v1057, v1058, v1059, v1060, v1061, v1062, v1063);
          *&v1064 = v1064;
          v2373 = LODWORD(v1064);
          v2374 = 0u;
          memset(v2375, 0, sizeof(v2375));
          v1065 = *(v939 + 32);
          v2359 = 0u;
          v2360 = 0u;
          (*(*v1065 + 24))(&v2359);
          v1073 = (((HIWORD(dword_27DF856F4) - 128) >> 7) | ((HIWORD(dword_27DF856F4) - 128) << 9));
          if (v1073 <= 2)
          {
            if (!(((HIWORD(dword_27DF856F4) - 128) >> 7) | ((HIWORD(dword_27DF856F4) - 128) << 9)))
            {
              v2359 = xmmword_2399EC750;
              v1074 = 8;
              v1075 = 16;
              goto LABEL_109;
            }

            if (v1073 == 1)
            {
              v2359 = vdupq_n_s64(0x10uLL);
              v1074 = 16;
              v1075 = 16;
LABEL_109:
              *&v2360 = word_27DF856F0 / v1075;
              *(&v2360 + 1) = word_27DF856F2 / v1074;
              v1076 = objc_msgSend_maxTotalThreadsPerThreadgroup(v2341, v1066, v1067, v1068, v1069, v1070, v1071, v1072);
              v1084 = v1075 * v1074;
              v1085 = v1076 / v1075;
              if (v1074 < v1076 / v1075)
              {
                v1085 = v1074;
              }

              if (v1084 > v1076)
              {
                v1086 = v1085;
              }

              else
              {
                v1086 = v1074;
              }

              v1087 = v1084 <= v1076 || v1085 * v1075 <= v1076;
              v1088 = v2360;
              v2238 = v1087;
              if (objc_msgSend_dataType(v2349, v1077, v1078, v1079, v1080, v1081, v1082, v1083) == 268435472)
              {
                v1096 = 1;
              }

              else if (objc_msgSend_dataType(v2349, v1089, v1090, v1091, v1092, v1093, v1094, v1095) == 536870928)
              {
                v1096 = 1;
              }

              else
              {
                v1096 = 2;
              }

              v1097 = dword_27DF856F4;
              v1098 = v2360;
              if (objc_msgSend_dataType(v2350, v1089, v1090, v1091, v1092, v1093, v1094, v1095) == 268435472)
              {
                v678 = 1;
              }

              else
              {
                v1106 = objc_msgSend_dataType(v2350, v1099, v1100, v1101, v1102, v1103, v1104, v1105);
                v678 = 1;
                if (v1106 != 536870928)
                {
                  v678 = 2;
                }
              }

              v679 = v675 + a7;
              v680 = v2325 * (v2320 >> 3) + v2304 * v2315 + v2298 * (v675 + a7);
              v681 = v2293 * (v2282 >> 3) + v2270 * v2276 + v2266 * v679;
              v2314 = v2262 * (v2258 >> 3) + v2250 * v2254 + v2246 * v679;
              v682 = (v1075 << v1096) * v1097 * v1098;
              v683 = (v1086 << v678) * dword_27DF856F4 * *(&v2360 + 1);
              objc_msgSend_setComputePipelineState_(v2346, v1099, v2341, v1101, v1102, v1103, v1104, v1105);
              v9 = v2349;
              v691 = objc_msgSend_data(v2349, v684, v685, v686, v687, v688, v689, v690);
              objc_msgSend_setBuffer_offset_atIndex_(v2346, v692, v691, v681 + v2288, 0, v693, v694, v695);
              v703 = objc_msgSend_data(v2350, v696, v697, v698, v699, v700, v701, v702);
              objc_msgSend_setBuffer_offset_atIndex_(v2346, v704, v703, v680 + v2309, 1, v705, v706, v707);
              v715 = objc_msgSend_data(a6, v708, v709, v710, v711, v712, v713, v714);
              objc_msgSend_setBuffer_offset_atIndex_(v2346, v716, v715, v2314 + v2331, 2, v717, v718, v719);
              objc_msgSend_setBytes_length_atIndex_(v2346, v720, &v2361, 100, 3, v721, v722, v723);
              objc_msgSend_setThreadgroupMemoryLength_atIndex_(v2346, v724, v682, 0, v725, v726, v727, v728);
              objc_msgSend_setThreadgroupMemoryLength_atIndex_(v2346, v729, v683, 1, v730, v731, v732, v733);
              v2356 = (v1088 * v1075 + v978 - 1) / (v1088 * v1075);
              v2357 = (*(&v1088 + 1) * v1086 + v2242 - 1) / (*(&v1088 + 1) * v1086);
              v2358 = 1;
              v2353 = v1075;
              v2354 = v1086;
              v2355 = v2238;
              objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v2346, v734, &v2356, &v2353, v735, v736, v737, v738);
              result = MPSLibrary::ReleaseComputeState();
              v8 = v2345;
              v676 = MEMORY[0x277CD7370];
              v677 = v2336;
              v12 = v2233;
              goto LABEL_77;
            }

LABEL_105:
            v1074 = v2359.u64[1];
            v1075 = v2359.i64[0];
            goto LABEL_109;
          }

          if (v1073 == 3)
          {
            v2359 = xmmword_2399EC740;
            v1074 = 16;
          }

          else
          {
            if (v1073 != 7)
            {
              goto LABEL_105;
            }

            v2359 = vdupq_n_s64(0x20uLL);
            v1074 = 32;
          }

          v1075 = 32;
          goto LABEL_109;
        }

        v937 = 128;
        v938 = 32;
      }

      else
      {
        v937 = 32;
        v938 = 128;
        v939 = v739;
      }

      word_27DF856F0 = v938;
      word_27DF856F2 = v937;
      dword_27DF856F4 = 16777232;
      goto LABEL_87;
    }

    if (!v8)
    {
      return result;
    }

    v1123 = 0;
    v1124 = MEMORY[0x277CD7370];
    v1125 = 1;
    while (1)
    {
      v1184 = *&v12[*v1124];
      result = objc_msgSend_M(v12, v668, v669, v670, v671, v672, v673, v674);
      if (result)
      {
        result = objc_msgSend_N(v12, v668, v669, v670, v671, v672, v673, v674);
        if (result)
        {
          break;
        }
      }

LABEL_137:
      v1123 = v1125++;
      if (v1123 >= v8)
      {
        return result;
      }
    }

    v2239 = v1123;
    v2337 = v1125;
    objc_msgSend_leftMatrixOrigin(v12, v668, v669, v670, v671, v672, v673, v674);
    v2326 = v2363;
    v2321 = objc_msgSend_dataType(v2350, v1185, v1186, v1187, v1188, v1189, v1190, v1191);
    objc_msgSend_leftMatrixOrigin(v12, v1192, v1193, v1194, v1195, v1196, v1197, v1198);
    v2316 = v2359.i64[0];
    v2305 = objc_msgSend_rowBytes(v2350, v1199, v1200, v1201, v1202, v1203, v1204, v1205);
    v2299 = objc_msgSend_matrixBytes(v2350, v1206, v1207, v1208, v1209, v1210, v1211, v1212);
    objc_msgSend_rightMatrixOrigin(v12, v1213, v1214, v1215, v1216, v1217, v1218, v1219);
    v2294 = v2363;
    v2283 = objc_msgSend_dataType(v9, v1220, v1221, v1222, v1223, v1224, v1225, v1226);
    objc_msgSend_rightMatrixOrigin(v12, v1227, v1228, v1229, v1230, v1231, v1232, v1233);
    v2277 = v2359.i64[0];
    v2271 = objc_msgSend_rowBytes(v9, v1234, v1235, v1236, v1237, v1238, v1239, v1240);
    v2267 = objc_msgSend_matrixBytes(v9, v1241, v1242, v1243, v1244, v1245, v1246, v1247);
    objc_msgSend_resultMatrixOrigin(v12, v1248, v1249, v1250, v1251, v1252, v1253, v1254);
    v2263 = v2363;
    v2259 = objc_msgSend_dataType(a6, v1255, v1256, v1257, v1258, v1259, v1260, v1261);
    objc_msgSend_resultMatrixOrigin(v12, v1262, v1263, v1264, v1265, v1266, v1267, v1268);
    v2255 = v2359.i64[0];
    v2251 = objc_msgSend_rowBytes(a6, v1269, v1270, v1271, v1272, v1273, v1274, v1275);
    v2247 = objc_msgSend_matrixBytes(a6, v1276, v1277, v1278, v1279, v1280, v1281, v1282);
    v1283 = *MEMORY[0x277CD73A8];
    v2310 = *&v2350[v1283];
    v2289 = *&v9[v1283];
    v2332 = *&a6[v1283];
    objc_msgSend_transA(v12, v1284, v1285, v1286, v1287, v1288, v1289, v1290);
    objc_msgSend_transB(v12, v1291, v1292, v1293, v1294, v1295, v1296, v1297);
    objc_msgSend_dataType(v9, v1298, v1299, v1300, v1301, v1302, v1303, v1304);
    objc_msgSend_dataType(v9, v1305, v1306, v1307, v1308, v1309, v1310, v1311);
    objc_msgSend_dataType(v9, v1312, v1313, v1314, v1315, v1316, v1317, v1318);
    objc_msgSend_dataType(v9, v1319, v1320, v1321, v1322, v1323, v1324, v1325);
    objc_msgSend_dataType(v2350, v1326, v1327, v1328, v1329, v1330, v1331, v1332);
    objc_msgSend_dataType(v2350, v1333, v1334, v1335, v1336, v1337, v1338, v1339);
    objc_msgSend_dataType(v2350, v1340, v1341, v1342, v1343, v1344, v1345, v1346);
    objc_msgSend_dataType(v2350, v1347, v1348, v1349, v1350, v1351, v1352, v1353);
    objc_msgSend_dataType(a6, v1354, v1355, v1356, v1357, v1358, v1359, v1360);
    objc_msgSend_dataType(a6, v1361, v1362, v1363, v1364, v1365, v1366, v1367);
    if (objc_msgSend_M(v12, v1368, v1369, v1370, v1371, v1372, v1373, v1374) > 0x20 || objc_msgSend_N(v12, v1375, v1376, v1377, v1378, v1379, v1380, v1381) <= 0x1FF)
    {
      v1384 = v1184;
      if (objc_msgSend_N(v12, v1375, v1376, v1377, v1378, v1379, v1380, v1381) > 0x20 || objc_msgSend_M(v12, v1375, v1376, v1377, v1378, v1379, v1380, v1381) < 0x200)
      {
LABEL_147:
        if (qword_280D74AD8 != -1)
        {
          dispatch_once(&qword_280D74AD8, &unk_284CAA6F8);
        }

        objc_msgSend_alpha(v12, v1375, v1376, v1377, v1378, v1379, v1380, v1381);
        if (v1392 == 1.0)
        {
          objc_msgSend_beta(v12, v1385, v1386, v1387, v1388, v1389, v1390, v1391);
        }

        if (objc_msgSend_M(v12, v1385, v1386, v1387, v1388, v1389, v1390, v1391) <= 0x7FFE && objc_msgSend_N(v12, v1393, v1394, v1395, v1396, v1397, v1398, v1399) <= 0x7FFE)
        {
          objc_msgSend_K(v12, v1393, v1394, v1395, v1396, v1397, v1398, v1399);
        }

        if (objc_msgSend_M(v12, v1393, v1394, v1395, v1396, v1397, v1398, v1399) % word_27DF856FA || objc_msgSend_N(v12, v1400, v1401, v1402, v1403, v1404, v1405, v1406) % word_27DF856F8 || objc_msgSend_K(v12, v1407, v1408, v1409, v1410, v1411, v1412, v1413) % dword_27DF856FC)
        {
          v1414 = 75;
        }

        else
        {
          v1414 = 74;
        }

        v1415 = (&off_284CA32C0)[16 * v1414];
        MPSLibrary::CreateUberShaderKey();
        v2342 = MPSLibrary::GetPipelineStateForMPSKey();
        MPSLibrary::ReleaseMPSKey();
        v1423 = objc_msgSend_N(v12, v1416, v1417, v1418, v1419, v1420, v1421, v1422, 0, 0, 0, 0, 0);
        v2361 = v1423;
        v2243 = objc_msgSend_M(v12, v1424, v1425, v1426, v1427, v1428, v1429, v1430);
        v2362 = v2243;
        LODWORD(v2363) = objc_msgSend_K(v12, v1431, v1432, v1433, v1434, v1435, v1436, v1437);
        HIDWORD(v2363) = 1;
        v2364 = objc_msgSend_rowBytes(v2349, v1438, v1439, v1440, v1441, v1442, v1443, v1444);
        v2365 = objc_msgSend_rowBytes(v2350, v1445, v1446, v1447, v1448, v1449, v1450, v1451);
        v2366 = objc_msgSend_rowBytes(a6, v1452, v1453, v1454, v1455, v1456, v1457, v1458);
        v2367 = objc_msgSend_rowBytes(a6, v1459, v1460, v1461, v1462, v1463, v1464, v1465);
        v2368 = objc_msgSend_matrixBytes(v2349, v1466, v1467, v1468, v1469, v1470, v1471, v1472);
        v2369 = objc_msgSend_matrixBytes(v2350, v1473, v1474, v1475, v1476, v1477, v1478, v1479);
        v2370 = objc_msgSend_matrixBytes(a6, v1480, v1481, v1482, v1483, v1484, v1485, v1486);
        v2371 = objc_msgSend_matrixBytes(a6, v1487, v1488, v1489, v1490, v1491, v1492, v1493);
        objc_msgSend_alpha(v12, v1494, v1495, v1496, v1497, v1498, v1499, v1500);
        *&v1501 = v1501;
        v2372 = LODWORD(v1501);
        objc_msgSend_beta(v12, v1502, v1503, v1504, v1505, v1506, v1507, v1508);
        *&v1509 = v1509;
        v2373 = LODWORD(v1509);
        v2374 = 0u;
        memset(v2375, 0, sizeof(v2375));
        v1510 = *(v1384 + 32);
        v2359 = 0u;
        v2360 = 0u;
        (*(*v1510 + 24))(&v2359);
        v1518 = (((HIWORD(dword_27DF856FC) - 128) >> 7) | ((HIWORD(dword_27DF856FC) - 128) << 9));
        if (v1518 <= 2)
        {
          if (!(((HIWORD(dword_27DF856FC) - 128) >> 7) | ((HIWORD(dword_27DF856FC) - 128) << 9)))
          {
            v2359 = xmmword_2399EC750;
            v1519 = 8;
            v1520 = 16;
            goto LABEL_169;
          }

          if (v1518 == 1)
          {
            v2359 = vdupq_n_s64(0x10uLL);
            v1519 = 16;
            v1520 = 16;
LABEL_169:
            *&v2360 = word_27DF856F8 / v1520;
            *(&v2360 + 1) = word_27DF856FA / v1519;
            v1521 = objc_msgSend_maxTotalThreadsPerThreadgroup(v2342, v1511, v1512, v1513, v1514, v1515, v1516, v1517);
            v1529 = v1520 * v1519;
            v1530 = v1521 / v1520;
            if (v1519 < v1521 / v1520)
            {
              v1530 = v1519;
            }

            if (v1529 > v1521)
            {
              v1531 = v1530;
            }

            else
            {
              v1531 = v1519;
            }

            v1532 = v1529 <= v1521 || v1530 * v1520 <= v1521;
            v1533 = v2360;
            v2235 = v1532;
            if (objc_msgSend_dataType(v2349, v1522, v1523, v1524, v1525, v1526, v1527, v1528) == 268435472)
            {
              v1541 = 1;
            }

            else if (objc_msgSend_dataType(v2349, v1534, v1535, v1536, v1537, v1538, v1539, v1540) == 536870928)
            {
              v1541 = 1;
            }

            else
            {
              v1541 = 2;
            }

            v1542 = dword_27DF856FC;
            v1543 = v2360;
            if (objc_msgSend_dataType(v2350, v1534, v1535, v1536, v1537, v1538, v1539, v1540) == 268435472)
            {
              v1126 = 1;
            }

            else
            {
              v1551 = objc_msgSend_dataType(v2350, v1544, v1545, v1546, v1547, v1548, v1549, v1550);
              v1126 = 1;
              if (v1551 != 536870928)
              {
                v1126 = 2;
              }
            }

            v1127 = (v1520 << v1541) * v1542 * v1543;
            v1128 = (v1531 << v1126) * dword_27DF856FC * *(&v2360 + 1);
            objc_msgSend_setComputePipelineState_(v2346, v1544, v2342, v1546, v1547, v1548, v1549, v1550);
            v9 = v2349;
            v1136 = objc_msgSend_data(v2349, v1129, v1130, v1131, v1132, v1133, v1134, v1135);
            objc_msgSend_setBuffer_offset_atIndex_(v2346, v1137, v1136, v2294 * (v2283 >> 3) + v2271 * v2277 + v2267 * (v2239 + a7) + v2289, 0, v1138, v1139, v1140);
            v1148 = objc_msgSend_data(v2350, v1141, v1142, v1143, v1144, v1145, v1146, v1147);
            objc_msgSend_setBuffer_offset_atIndex_(v2346, v1149, v1148, v2326 * (v2321 >> 3) + v2305 * v2316 + v2299 * (v2239 + a7) + v2310, 1, v1150, v1151, v1152);
            v1160 = objc_msgSend_data(a6, v1153, v1154, v1155, v1156, v1157, v1158, v1159);
            objc_msgSend_setBuffer_offset_atIndex_(v2346, v1161, v1160, v2263 * (v2259 >> 3) + v2251 * v2255 + v2247 * (v2239 + a7) + v2332, 2, v1162, v1163, v1164);
            objc_msgSend_setBytes_length_atIndex_(v2346, v1165, &v2361, 100, 3, v1166, v1167, v1168);
            objc_msgSend_setThreadgroupMemoryLength_atIndex_(v2346, v1169, v1127, 0, v1170, v1171, v1172, v1173);
            objc_msgSend_setThreadgroupMemoryLength_atIndex_(v2346, v1174, v1128, 1, v1175, v1176, v1177, v1178);
            v2356 = (v1533 * v1520 + v1423 - 1) / (v1533 * v1520);
            v2357 = (*(&v1533 + 1) * v1531 + v2243 - 1) / (*(&v1533 + 1) * v1531);
            v2358 = 1;
            v2353 = v1520;
            v2354 = v1531;
            v2355 = v2235;
            objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v2346, v1179, &v2356, &v2353, v1180, v1181, v1182, v1183);
            result = MPSLibrary::ReleaseComputeState();
            v8 = v2345;
            v1124 = MEMORY[0x277CD7370];
            v1125 = v2337;
            goto LABEL_137;
          }

LABEL_165:
          v1519 = v2359.u64[1];
          v1520 = v2359.i64[0];
          goto LABEL_169;
        }

        if (v1518 == 3)
        {
          v2359 = xmmword_2399EC740;
          v1519 = 16;
        }

        else
        {
          if (v1518 != 7)
          {
            goto LABEL_165;
          }

          v2359 = vdupq_n_s64(0x20uLL);
          v1519 = 32;
        }

        v1520 = 32;
        goto LABEL_169;
      }

      v1382 = 128;
      v1383 = 32;
    }

    else
    {
      v1382 = 32;
      v1383 = 128;
      v1384 = v1184;
    }

    word_27DF856F8 = v1383;
    word_27DF856FA = v1382;
    dword_27DF856FC = 16777232;
    goto LABEL_147;
  }

  if (objc_msgSend_dataType(a4, v20, v21, v22, v23, v24, v25, v26) == 268435472)
  {
    result = objc_msgSend_dataType(a6, v224, v225, v226, v227, v228, v229, v230);
    if (result == 268435472)
    {
      if (!v8)
      {
        return result;
      }

      v238 = 0;
      v239 = MEMORY[0x277CD7370];
      v240 = 1;
      while (1)
      {
        v307 = *&v12[*v239];
        result = objc_msgSend_M(v12, v231, v232, v233, v234, v235, v236, v237);
        if (result)
        {
          result = objc_msgSend_N(v12, v231, v232, v233, v234, v235, v236, v237);
          if (result)
          {
            break;
          }
        }

LABEL_24:
        v238 = v240++;
        if (v238 >= v8)
        {
          return result;
        }
      }

      v2340 = v240;
      objc_msgSend_leftMatrixOrigin(v12, v231, v232, v233, v234, v235, v236, v237);
      v2330 = v2363;
      v2324 = objc_msgSend_dataType(v2350, v308, v309, v310, v311, v312, v313, v314);
      objc_msgSend_leftMatrixOrigin(v12, v315, v316, v317, v318, v319, v320, v321);
      v2319 = v2359.i64[0];
      v2308 = objc_msgSend_rowBytes(v2350, v322, v323, v324, v325, v326, v327, v328);
      v2303 = objc_msgSend_matrixBytes(v2350, v329, v330, v331, v332, v333, v334, v335);
      objc_msgSend_rightMatrixOrigin(v12, v336, v337, v338, v339, v340, v341, v342);
      v2297 = v2363;
      v2287 = objc_msgSend_dataType(v9, v343, v344, v345, v346, v347, v348, v349);
      objc_msgSend_rightMatrixOrigin(v12, v350, v351, v352, v353, v354, v355, v356);
      v2281 = v2359.i64[0];
      v2275 = objc_msgSend_rowBytes(v9, v357, v358, v359, v360, v361, v362, v363);
      v2269 = objc_msgSend_matrixBytes(v9, v364, v365, v366, v367, v368, v369, v370);
      objc_msgSend_resultMatrixOrigin(v12, v371, v372, v373, v374, v375, v376, v377);
      v2265 = v2363;
      v2261 = objc_msgSend_dataType(a6, v378, v379, v380, v381, v382, v383, v384);
      objc_msgSend_resultMatrixOrigin(v12, v385, v386, v387, v388, v389, v390, v391);
      v2257 = v2359.i64[0];
      v2253 = objc_msgSend_rowBytes(a6, v392, v393, v394, v395, v396, v397, v398);
      v2249 = objc_msgSend_matrixBytes(a6, v399, v400, v401, v402, v403, v404, v405);
      v406 = *MEMORY[0x277CD73A8];
      v2313 = *&v2350[v406];
      v2292 = *&v9[v406];
      v2335 = *&a6[v406];
      objc_msgSend_transA(v12, v407, v408, v409, v410, v411, v412, v413);
      objc_msgSend_transB(v12, v414, v415, v416, v417, v418, v419, v420);
      objc_msgSend_dataType(v9, v421, v422, v423, v424, v425, v426, v427);
      objc_msgSend_dataType(v9, v428, v429, v430, v431, v432, v433, v434);
      objc_msgSend_dataType(v9, v435, v436, v437, v438, v439, v440, v441);
      objc_msgSend_dataType(v9, v442, v443, v444, v445, v446, v447, v448);
      objc_msgSend_dataType(v2350, v449, v450, v451, v452, v453, v454, v455);
      objc_msgSend_dataType(v2350, v456, v457, v458, v459, v460, v461, v462);
      objc_msgSend_dataType(v2350, v463, v464, v465, v466, v467, v468, v469);
      objc_msgSend_dataType(v2350, v470, v471, v472, v473, v474, v475, v476);
      objc_msgSend_dataType(a6, v477, v478, v479, v480, v481, v482, v483);
      objc_msgSend_dataType(a6, v484, v485, v486, v487, v488, v489, v490);
      if (objc_msgSend_M(v12, v491, v492, v493, v494, v495, v496, v497) > 0x20 || objc_msgSend_N(v12, v498, v499, v500, v501, v502, v503, v504) <= 0x1FF)
      {
        v507 = v307;
        if (objc_msgSend_N(v12, v498, v499, v500, v501, v502, v503, v504) > 0x20 || objc_msgSend_M(v12, v498, v499, v500, v501, v502, v503, v504) < 0x200)
        {
LABEL_34:
          if (qword_280D74AE0 != -1)
          {
            dispatch_once(&qword_280D74AE0, &unk_284CAA718);
          }

          objc_msgSend_alpha(v12, v498, v499, v500, v501, v502, v503, v504);
          if (v515 == 1.0)
          {
            objc_msgSend_beta(v12, v508, v509, v510, v511, v512, v513, v514);
          }

          if (objc_msgSend_M(v12, v508, v509, v510, v511, v512, v513, v514) <= 0x7FFE && objc_msgSend_N(v12, v516, v517, v518, v519, v520, v521, v522) <= 0x7FFE)
          {
            objc_msgSend_K(v12, v516, v517, v518, v519, v520, v521, v522);
          }

          if (objc_msgSend_M(v12, v516, v517, v518, v519, v520, v521, v522) % word_27DF85702 || objc_msgSend_N(v12, v523, v524, v525, v526, v527, v528, v529) % word_27DF85700 || objc_msgSend_K(v12, v530, v531, v532, v533, v534, v535, v536) % dword_27DF85704)
          {
            v537 = 75;
          }

          else
          {
            v537 = 74;
          }

          v538 = (&off_284CA32C0)[16 * v537];
          MPSLibrary::CreateUberShaderKey();
          v539 = MPSLibrary::GetPipelineStateForMPSKey();
          MPSLibrary::ReleaseMPSKey();
          v2245 = objc_msgSend_N(v12, v540, v541, v542, v543, v544, v545, v546, 0, 0, 0, 0, 0);
          v2361 = v2245;
          v2241 = objc_msgSend_M(v12, v547, v548, v549, v550, v551, v552, v553);
          v2362 = v2241;
          LODWORD(v2363) = objc_msgSend_K(v12, v554, v555, v556, v557, v558, v559, v560);
          HIDWORD(v2363) = 1;
          v2364 = objc_msgSend_rowBytes(v2349, v561, v562, v563, v564, v565, v566, v567);
          v2365 = objc_msgSend_rowBytes(v2350, v568, v569, v570, v571, v572, v573, v574);
          v2366 = objc_msgSend_rowBytes(a6, v575, v576, v577, v578, v579, v580, v581);
          v2367 = objc_msgSend_rowBytes(a6, v582, v583, v584, v585, v586, v587, v588);
          v2368 = objc_msgSend_matrixBytes(v2349, v589, v590, v591, v592, v593, v594, v595);
          v2369 = objc_msgSend_matrixBytes(v2350, v596, v597, v598, v599, v600, v601, v602);
          v2370 = objc_msgSend_matrixBytes(a6, v603, v604, v605, v606, v607, v608, v609);
          v2371 = objc_msgSend_matrixBytes(a6, v610, v611, v612, v613, v614, v615, v616);
          objc_msgSend_alpha(v12, v617, v618, v619, v620, v621, v622, v623);
          *&v624 = v624;
          v2372 = LODWORD(v624);
          objc_msgSend_beta(v12, v625, v626, v627, v628, v629, v630, v631);
          *&v632 = v632;
          v2373 = LODWORD(v632);
          v2374 = 0u;
          memset(v2375, 0, sizeof(v2375));
          v633 = *(v507 + 32);
          v2359 = 0u;
          v2360 = 0u;
          (*(*v633 + 24))(&v2359);
          v641 = (((HIWORD(dword_27DF85704) - 128) >> 7) | ((HIWORD(dword_27DF85704) - 128) << 9));
          v2237 = v238;
          if (v641 <= 2)
          {
            if (!(((HIWORD(dword_27DF85704) - 128) >> 7) | ((HIWORD(dword_27DF85704) - 128) << 9)))
            {
              v2359 = xmmword_2399EC750;
              v642 = 8;
              v643 = 16;
              goto LABEL_56;
            }

            if (v641 == 1)
            {
              v2359 = vdupq_n_s64(0x10uLL);
              v642 = 16;
              v643 = 16;
LABEL_56:
              *&v2360 = word_27DF85700 / v643;
              *(&v2360 + 1) = word_27DF85702 / v642;
              v644 = objc_msgSend_maxTotalThreadsPerThreadgroup(v539, v634, v635, v636, v637, v638, v639, v640);
              v652 = v643 * v642;
              v653 = v644 / v643;
              if (v642 < v644 / v643)
              {
                v653 = v642;
              }

              if (v652 > v644)
              {
                v654 = v653;
              }

              else
              {
                v654 = v642;
              }

              v655 = v652 <= v644 || v653 * v643 <= v644;
              v656 = v2360;
              v2234 = v655;
              if (objc_msgSend_dataType(v2349, v645, v646, v647, v648, v649, v650, v651) == 268435472)
              {
                v664 = 1;
              }

              else if (objc_msgSend_dataType(v2349, v657, v658, v659, v660, v661, v662, v663) == 536870928)
              {
                v664 = 1;
              }

              else
              {
                v664 = 2;
              }

              v665 = dword_27DF85704;
              v666 = v2360;
              if (objc_msgSend_dataType(v2350, v657, v658, v659, v660, v661, v662, v663) == 268435472)
              {
                v249 = 1;
              }

              else
              {
                v242 = objc_msgSend_dataType(v2350, v243, v667, v244, v245, v246, v247, v248);
                v249 = 1;
                if (v242 != 536870928)
                {
                  v249 = 2;
                }
              }

              v250 = (v643 << v664) * v665 * v666;
              v251 = (v654 << v249) * dword_27DF85704 * *(&v2360 + 1);
              objc_msgSend_setComputePipelineState_(v2346, v243, v539, v244, v245, v246, v247, v248);
              v9 = v2349;
              v259 = objc_msgSend_data(v2349, v252, v253, v254, v255, v256, v257, v258);
              objc_msgSend_setBuffer_offset_atIndex_(v2346, v260, v259, v2297 * (v2287 >> 3) + v2275 * v2281 + v2269 * (v2237 + a7) + v2292, 0, v261, v262, v263);
              v271 = objc_msgSend_data(v2350, v264, v265, v266, v267, v268, v269, v270);
              objc_msgSend_setBuffer_offset_atIndex_(v2346, v272, v271, v2330 * (v2324 >> 3) + v2308 * v2319 + v2303 * (v2237 + a7) + v2313, 1, v273, v274, v275);
              v283 = objc_msgSend_data(a6, v276, v277, v278, v279, v280, v281, v282);
              objc_msgSend_setBuffer_offset_atIndex_(v2346, v284, v283, v2265 * (v2261 >> 3) + v2253 * v2257 + v2249 * (v2237 + a7) + v2335, 2, v285, v286, v287);
              objc_msgSend_setBytes_length_atIndex_(v2346, v288, &v2361, 100, 3, v289, v290, v291);
              objc_msgSend_setThreadgroupMemoryLength_atIndex_(v2346, v292, v250, 0, v293, v294, v295, v296);
              objc_msgSend_setThreadgroupMemoryLength_atIndex_(v2346, v297, v251, 1, v298, v299, v300, v301);
              v2356 = (v656 * v643 + v2245 - 1) / (v656 * v643);
              v2357 = (*(&v656 + 1) * v654 + v2241 - 1) / (*(&v656 + 1) * v654);
              v2358 = 1;
              v2353 = v643;
              v2354 = v654;
              v2355 = v2234;
              objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v2346, v302, &v2356, &v2353, v303, v304, v305, v306);
              result = MPSLibrary::ReleaseComputeState();
              v8 = v2345;
              v239 = MEMORY[0x277CD7370];
              v240 = v2340;
              goto LABEL_24;
            }

LABEL_52:
            v642 = v2359.u64[1];
            v643 = v2359.i64[0];
            goto LABEL_56;
          }

          if (v641 == 3)
          {
            v2359 = xmmword_2399EC740;
            v642 = 16;
          }

          else
          {
            if (v641 != 7)
            {
              goto LABEL_52;
            }

            v2359 = vdupq_n_s64(0x20uLL);
            v642 = 32;
          }

          v643 = 32;
          goto LABEL_56;
        }

        v505 = 128;
        v506 = 32;
      }

      else
      {
        v505 = 32;
        v506 = 128;
        v507 = v307;
      }

      word_27DF85700 = v506;
      word_27DF85702 = v505;
      dword_27DF85704 = 16777232;
      goto LABEL_34;
    }

    result = objc_msgSend_dataType(a6, v231, v232, v233, v234, v235, v236, v237);
    if (!v8 || result != 268435488)
    {
      return result;
    }

    v1559 = 0;
    v1560 = MEMORY[0x277CD7370];
    v1561 = 1;
    while (1)
    {
      v1622 = *&v12[*v1560];
      result = objc_msgSend_M(v12, v1552, v1553, v1554, v1555, v1556, v1557, v1558);
      if (result)
      {
        result = objc_msgSend_N(v12, v1552, v1553, v1554, v1555, v1556, v1557, v1558);
        if (result)
        {
          break;
        }
      }

LABEL_193:
      v1559 = v1561++;
      if (v1559 >= v8)
      {
        return result;
      }
    }

    v2338 = v1561;
    objc_msgSend_leftMatrixOrigin(v12, v1552, v1553, v1554, v1555, v1556, v1557, v1558);
    v2327 = v2363;
    v2322 = objc_msgSend_dataType(v2350, v1623, v1624, v1625, v1626, v1627, v1628, v1629);
    objc_msgSend_leftMatrixOrigin(v12, v1630, v1631, v1632, v1633, v1634, v1635, v1636);
    v2317 = v2359.i64[0];
    v2306 = objc_msgSend_rowBytes(v2350, v1637, v1638, v1639, v1640, v1641, v1642, v1643);
    v2300 = objc_msgSend_matrixBytes(v2350, v1644, v1645, v1646, v1647, v1648, v1649, v1650);
    objc_msgSend_rightMatrixOrigin(v12, v1651, v1652, v1653, v1654, v1655, v1656, v1657);
    v2295 = v2363;
    v2284 = objc_msgSend_dataType(v9, v1658, v1659, v1660, v1661, v1662, v1663, v1664);
    objc_msgSend_rightMatrixOrigin(v12, v1665, v1666, v1667, v1668, v1669, v1670, v1671);
    v2278 = v2359.i64[0];
    v2272 = objc_msgSend_rowBytes(v9, v1672, v1673, v1674, v1675, v1676, v1677, v1678);
    v2268 = objc_msgSend_matrixBytes(v9, v1679, v1680, v1681, v1682, v1683, v1684, v1685);
    objc_msgSend_resultMatrixOrigin(v12, v1686, v1687, v1688, v1689, v1690, v1691, v1692);
    v2264 = v2363;
    v2260 = objc_msgSend_dataType(a6, v1693, v1694, v1695, v1696, v1697, v1698, v1699);
    objc_msgSend_resultMatrixOrigin(v12, v1700, v1701, v1702, v1703, v1704, v1705, v1706);
    v2256 = v2359.i64[0];
    v2252 = objc_msgSend_rowBytes(a6, v1707, v1708, v1709, v1710, v1711, v1712, v1713);
    v2248 = objc_msgSend_matrixBytes(a6, v1714, v1715, v1716, v1717, v1718, v1719, v1720);
    v1721 = *MEMORY[0x277CD73A8];
    v2311 = *&v2350[v1721];
    v2290 = *&v9[v1721];
    v2333 = *&a6[v1721];
    objc_msgSend_transA(v12, v1722, v1723, v1724, v1725, v1726, v1727, v1728);
    objc_msgSend_transB(v12, v1729, v1730, v1731, v1732, v1733, v1734, v1735);
    objc_msgSend_dataType(v9, v1736, v1737, v1738, v1739, v1740, v1741, v1742);
    objc_msgSend_dataType(v9, v1743, v1744, v1745, v1746, v1747, v1748, v1749);
    objc_msgSend_dataType(v9, v1750, v1751, v1752, v1753, v1754, v1755, v1756);
    objc_msgSend_dataType(v9, v1757, v1758, v1759, v1760, v1761, v1762, v1763);
    objc_msgSend_dataType(v2350, v1764, v1765, v1766, v1767, v1768, v1769, v1770);
    objc_msgSend_dataType(v2350, v1771, v1772, v1773, v1774, v1775, v1776, v1777);
    objc_msgSend_dataType(v2350, v1778, v1779, v1780, v1781, v1782, v1783, v1784);
    objc_msgSend_dataType(v2350, v1785, v1786, v1787, v1788, v1789, v1790, v1791);
    objc_msgSend_dataType(a6, v1792, v1793, v1794, v1795, v1796, v1797, v1798);
    objc_msgSend_dataType(a6, v1799, v1800, v1801, v1802, v1803, v1804, v1805);
    if (objc_msgSend_M(v12, v1806, v1807, v1808, v1809, v1810, v1811, v1812) > 0x20 || objc_msgSend_N(v12, v1813, v1814, v1815, v1816, v1817, v1818, v1819) <= 0x1FF)
    {
      v1822 = v1622;
      if (objc_msgSend_N(v12, v1813, v1814, v1815, v1816, v1817, v1818, v1819) > 0x20 || objc_msgSend_M(v12, v1813, v1814, v1815, v1816, v1817, v1818, v1819) < 0x200)
      {
LABEL_203:
        if (qword_280D74AE8 != -1)
        {
          dispatch_once(&qword_280D74AE8, &unk_284CAA738);
        }

        objc_msgSend_alpha(v12, v1813, v1814, v1815, v1816, v1817, v1818, v1819);
        if (v1830 == 1.0)
        {
          objc_msgSend_beta(v12, v1823, v1824, v1825, v1826, v1827, v1828, v1829);
        }

        if (objc_msgSend_M(v12, v1823, v1824, v1825, v1826, v1827, v1828, v1829) <= 0x7FFE && objc_msgSend_N(v12, v1831, v1832, v1833, v1834, v1835, v1836, v1837) <= 0x7FFE)
        {
          objc_msgSend_K(v12, v1831, v1832, v1833, v1834, v1835, v1836, v1837);
        }

        if (objc_msgSend_M(v12, v1831, v1832, v1833, v1834, v1835, v1836, v1837) % word_27DF8570A || objc_msgSend_N(v12, v1838, v1839, v1840, v1841, v1842, v1843, v1844) % word_27DF85708 || objc_msgSend_K(v12, v1845, v1846, v1847, v1848, v1849, v1850, v1851) % dword_27DF8570C)
        {
          v1852 = 75;
        }

        else
        {
          v1852 = 74;
        }

        v1853 = (&off_284CA32C0)[16 * v1852];
        MPSLibrary::CreateUberShaderKey();
        v2343 = MPSLibrary::GetPipelineStateForMPSKey();
        MPSLibrary::ReleaseMPSKey();
        v2244 = objc_msgSend_N(v12, v1854, v1855, v1856, v1857, v1858, v1859, v1860, 0, 0, 0, 0, 0);
        v2361 = v2244;
        v1868 = objc_msgSend_M(v12, v1861, v1862, v1863, v1864, v1865, v1866, v1867);
        v2362 = v1868;
        LODWORD(v2363) = objc_msgSend_K(v12, v1869, v1870, v1871, v1872, v1873, v1874, v1875);
        HIDWORD(v2363) = 1;
        v2364 = objc_msgSend_rowBytes(v2349, v1876, v1877, v1878, v1879, v1880, v1881, v1882);
        v2365 = objc_msgSend_rowBytes(v2350, v1883, v1884, v1885, v1886, v1887, v1888, v1889);
        v2366 = objc_msgSend_rowBytes(a6, v1890, v1891, v1892, v1893, v1894, v1895, v1896);
        v2367 = objc_msgSend_rowBytes(a6, v1897, v1898, v1899, v1900, v1901, v1902, v1903);
        v2368 = objc_msgSend_matrixBytes(v2349, v1904, v1905, v1906, v1907, v1908, v1909, v1910);
        v2369 = objc_msgSend_matrixBytes(v2350, v1911, v1912, v1913, v1914, v1915, v1916, v1917);
        v2370 = objc_msgSend_matrixBytes(a6, v1918, v1919, v1920, v1921, v1922, v1923, v1924);
        v2371 = objc_msgSend_matrixBytes(a6, v1925, v1926, v1927, v1928, v1929, v1930, v1931);
        objc_msgSend_alpha(v12, v1932, v1933, v1934, v1935, v1936, v1937, v1938);
        *&v1939 = v1939;
        v2372 = LODWORD(v1939);
        objc_msgSend_beta(v12, v1940, v1941, v1942, v1943, v1944, v1945, v1946);
        *&v1947 = v1947;
        v2373 = LODWORD(v1947);
        v2374 = 0u;
        memset(v2375, 0, sizeof(v2375));
        v1948 = *(v1822 + 32);
        v2359 = 0u;
        v2360 = 0u;
        (*(*v1948 + 24))(&v2359);
        v1956 = (((HIWORD(dword_27DF8570C) - 128) >> 7) | ((HIWORD(dword_27DF8570C) - 128) << 9));
        v2240 = v1868;
        if (v1956 <= 2)
        {
          if (!(((HIWORD(dword_27DF8570C) - 128) >> 7) | ((HIWORD(dword_27DF8570C) - 128) << 9)))
          {
            v2359 = xmmword_2399EC750;
            v1957 = 8;
            v1958 = 16;
            goto LABEL_225;
          }

          if (v1956 == 1)
          {
            v2359 = vdupq_n_s64(0x10uLL);
            v1957 = 16;
            v1958 = 16;
LABEL_225:
            *&v2360 = word_27DF85708 / v1958;
            *(&v2360 + 1) = word_27DF8570A / v1957;
            v1959 = objc_msgSend_maxTotalThreadsPerThreadgroup(v2343, v1949, v1950, v1951, v1952, v1953, v1954, v1955);
            v1967 = v1958 * v1957;
            v1968 = v1959 / v1958;
            if (v1957 < v1959 / v1958)
            {
              v1968 = v1957;
            }

            if (v1967 > v1959)
            {
              v1969 = v1968;
            }

            else
            {
              v1969 = v1957;
            }

            v1970 = v1967 <= v1959 || v1968 * v1958 <= v1959;
            v1971 = v2360;
            v2236 = v1970;
            if (objc_msgSend_dataType(v2349, v1960, v1961, v1962, v1963, v1964, v1965, v1966) == 268435472)
            {
              v1979 = 1;
            }

            else if (objc_msgSend_dataType(v2349, v1972, v1973, v1974, v1975, v1976, v1977, v1978) == 536870928)
            {
              v1979 = 1;
            }

            else
            {
              v1979 = 2;
            }

            v1980 = dword_27DF8570C;
            v1981 = v2360;
            if (objc_msgSend_dataType(v2350, v1972, v1973, v1974, v1975, v1976, v1977, v1978) == 268435472)
            {
              v1562 = v2343;
              v1564 = 1;
            }

            else
            {
              v1562 = v2343;
              v1563 = objc_msgSend_dataType(v2350, v1982, v1983, v1984, v1985, v1986, v1987, v1988);
              v1564 = 1;
              if (v1563 != 536870928)
              {
                v1564 = 2;
              }
            }

            v1565 = (v1958 << v1979) * v1980 * v1981;
            v1566 = (v1969 << v1564) * dword_27DF8570C * *(&v2360 + 1);
            objc_msgSend_setComputePipelineState_(v2346, v2268, v1562, v2260, v2256, v2252, v2248, v2244);
            v9 = v2349;
            v1574 = objc_msgSend_data(v2349, v1567, v1568, v1569, v1570, v1571, v1572, v1573);
            objc_msgSend_setBuffer_offset_atIndex_(v2346, v1575, v1574, v2295 * (v2284 >> 3) + v2272 * v2278 + v2268 * (v1559 + a7) + v2290, 0, v1576, v1577, v1578);
            v1586 = objc_msgSend_data(v2350, v1579, v1580, v1581, v1582, v1583, v1584, v1585);
            objc_msgSend_setBuffer_offset_atIndex_(v2346, v1587, v1586, v2327 * (v2322 >> 3) + v2306 * v2317 + v2300 * (v1559 + a7) + v2311, 1, v1588, v1589, v1590);
            v1598 = objc_msgSend_data(a6, v1591, v1592, v1593, v1594, v1595, v1596, v1597);
            objc_msgSend_setBuffer_offset_atIndex_(v2346, v1599, v1598, v2264 * (v2260 >> 3) + v2252 * v2256 + v2248 * (v1559 + a7) + v2333, 2, v1600, v1601, v1602);
            objc_msgSend_setBytes_length_atIndex_(v2346, v1603, &v2361, 100, 3, v1604, v1605, v1606);
            objc_msgSend_setThreadgroupMemoryLength_atIndex_(v2346, v1607, v1565, 0, v1608, v1609, v1610, v1611);
            objc_msgSend_setThreadgroupMemoryLength_atIndex_(v2346, v1612, v1566, 1, v1613, v1614, v1615, v1616);
            v2356 = (v1971 * v1958 + v2244 - 1) / (v1971 * v1958);
            v2357 = (*(&v1971 + 1) * v1969 + v2240 - 1) / (*(&v1971 + 1) * v1969);
            v2358 = 1;
            v2353 = v1958;
            v2354 = v1969;
            v2355 = v2236;
            objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v2346, v1617, &v2356, &v2353, v1618, v1619, v1620, v1621);
            result = MPSLibrary::ReleaseComputeState();
            v8 = v2345;
            v1560 = MEMORY[0x277CD7370];
            v1561 = v2338;
            goto LABEL_193;
          }

LABEL_221:
          v1957 = v2359.u64[1];
          v1958 = v2359.i64[0];
          goto LABEL_225;
        }

        if (v1956 == 3)
        {
          v2359 = xmmword_2399EC740;
          v1957 = 16;
        }

        else
        {
          if (v1956 != 7)
          {
            goto LABEL_221;
          }

          v2359 = vdupq_n_s64(0x20uLL);
          v1957 = 32;
        }

        v1958 = 32;
        goto LABEL_225;
      }

      v1820 = 128;
      v1821 = 32;
    }

    else
    {
      v1820 = 32;
      v1821 = 128;
      v1822 = v1622;
    }

    word_27DF85708 = v1821;
    word_27DF8570A = v1820;
    dword_27DF8570C = 16777232;
    goto LABEL_203;
  }

  result = objc_msgSend_dataType(a4, v224, v225, v226, v227, v228, v229, v230);
  if (result == 536870920)
  {
    result = objc_msgSend_dataType(a6, v1107, v1108, v1109, v1110, v1111, v1112, v1113);
    if (result == 268435488)
    {
      if (v8)
      {
        v1121 = 0;
        v1122 = 1;
        do
        {
          result = sub_2399D43C0(v12, a2, v2350, v9, a6, v1121 + a7, v1119, v1120);
          v1121 = v1122++;
        }

        while (v1121 < v8);
      }
    }

    else
    {
      result = objc_msgSend_dataType(a6, v1114, v1115, v1116, v1117, v1118, v1119, v1120);
      if (v8 && result == 268435472)
      {
        v1993 = 0;
        v1994 = 1;
        do
        {
          result = sub_2399D4834(v12, a2, v2350, v9, a6, v1993 + a7, v1991, v1992);
          v1993 = v1994++;
        }

        while (v1993 < v8);
      }
    }
  }

  else if (v8)
  {
    v1989 = 0;
    v1990 = 1;
    do
    {
      result = sub_2399D4CA8(v12, a2, v2350, v9, a6, v1989 + a7, v1112, v1113);
      v1989 = v1990++;
    }

    while (v1989 < v8);
  }

  return result;
}

uint64_t sub_2399D1A44(char *a1, char *a2, uint64_t a3, char *a4, char *a5, char *a6, uint64_t a7, unint64_t a8)
{
  if (objc_msgSend_dataType(a4, a2, a3, a4, a5, a6, a7, a8) != 268435488)
  {
    if (objc_msgSend_dataType(a4, v16, v17, v18, v19, v20, v21, v22) != 268435472)
    {
      result = objc_msgSend_dataType(a4, v75, v76, v77, v78, v79, v80, v81);
      if (result == 536870920)
      {
        result = objc_msgSend_dataType(a6, v109, v110, v111, v112, v113, v114, v115);
        if (result == 268435488)
        {
          if (a8)
          {
            v123 = 0;
            v124 = 1;
            do
            {
              result = sub_2399D43C0(a1, a2, a4, a5, a6, v123 + a7, v121, v122);
              v123 = v124++;
            }

            while (v123 < a8);
          }
        }

        else
        {
          result = objc_msgSend_dataType(a6, v116, v117, v118, v119, v120, v121, v122);
          if (a8 && result == 268435472)
          {
            v186 = 0;
            v187 = 1;
            do
            {
              result = sub_2399D4834(a1, a2, a4, a5, a6, v186 + a7, v184, v185);
              v186 = v187++;
            }

            while (v186 < a8);
          }
        }
      }

      else if (a8)
      {
        v125 = 0;
        v126 = 1;
        do
        {
          result = sub_2399D4CA8(a1, a2, a4, a5, a6, v125 + a7, v114, v115);
          v125 = v126++;
        }

        while (v125 < a8);
      }

      return result;
    }

    v635 = a3;
    v638 = a2;
    if ((objc_msgSend_transA(a1, v75, v76, v77, v78, v79, v80, v81) & 1) != 0 || (objc_msgSend_transB(a1, v82, v83, v84, v85, v86, v87, v88) & 1) != 0 || (objc_msgSend_rowBytes(a5, v82, v83, v84, v85, v86, v87, v88) & 0x3F) != 0)
    {
      goto LABEL_18;
    }

    if (a1)
    {
      objc_msgSend_rightMatrixOrigin(a1, v82, v83, v84, v85, v86, v87, v88);
      if ((v646 & 0xF) != 0)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v645 = 0;
      v646 = 0;
      v647 = 0;
    }

    if (objc_msgSend_N(a1, v82, v83, v84, v85, v86, v87, v88) >= 4)
    {
      v384 = objc_msgSend_data(a5, v82, v83, v84, v85, v86, v87, v88);
      v392 = objc_msgSend_length(v384, v385, v386, v387, v388, v389, v390, v391);
      v400 = objc_msgSend_K(a1, v393, v394, v395, v396, v397, v398, v399);
      v415 = objc_msgSend_rowBytes(a5, v401, v402, v403, v404, v405, v406, v407) * v400;
      if (a1)
      {
        objc_msgSend_rightMatrixOrigin(a1, v408, v409, v410, v411, v412, v413, v414);
        v415 += objc_msgSend_rowBytes(a5, v416, v417, v418, v419, v420, v421, v422) * v643;
        objc_msgSend_rightMatrixOrigin(a1, v423, v424, v425, v426, v427, v428, v429);
        v437 = v641;
      }

      else
      {
        v643 = 0uLL;
        *&v644 = 0;
        objc_msgSend_rowBytes(a5, v408, v409, v410, v411, v412, v413, v414);
        v437 = 0;
        v641 = 0;
        v642 = 0;
        v640 = 0;
      }

      if (v392 >= v415 + v437 * (objc_msgSend_dataType(a5, v430, v431, v432, v433, v434, v435, v436) >> 3) && (objc_msgSend_N(a1, v82, v83, v84, v85, v86, v87, v88) & 7) == 0 && (objc_msgSend_M(a1, v82, v83, v84, v85, v86, v87, v88) & 0x3F) == 0 && (objc_msgSend_K(a1, v82, v83, v84, v85, v86, v87, v88) & 0xF) == 0)
      {
        if (qword_280D74AF0 != -1)
        {
          dispatch_once(&qword_280D74AF0, &unk_284CAA758);
        }

        v89 = byte_280D74AC0 ^ 1;
        goto LABEL_19;
      }
    }

LABEL_18:
    v89 = 0;
LABEL_19:
    v90 = *(*&a1[*MEMORY[0x277CD7350]] + 16);
    v91 = objc_msgSend_N(a1, v82, v83, v84, v85, v86, v87, v88);
    v99 = objc_msgSend_K(a1, v92, v93, v94, v95, v96, v97, v98);
    v108 = (v89 & 1) == 0 || (v107 = v99, objc_msgSend_maxTextureWidth2D(v90, v100, v101, v102, v103, v104, v105, v106) < (v91 + 3) >> 2) || v107 > objc_msgSend_maxTextureHeight2D(v90, v100, v101, v102, v103, v104, v105, v106);
    if ((objc_msgSend_rowBytes(a4, v100, v101, v102, v103, v104, v105, v106) & 0xF) != 0 || ((objc_msgSend_rowBytes(a6, v161, v162, v163, v164, v165, v166, v167) & 0xF) != 0 ? (v168 = 1) : (v168 = v108), (v168 & 1) != 0 || (result = objc_msgSend_dataType(a6, v161, v162, v163, v164, v165, v166, v167), result != 268435472)))
    {
      result = objc_msgSend_dataType(a6, v161, v162, v163, v164, v165, v166, v167);
      if (result == 268435472)
      {
        if (a8)
        {
          v178 = 0;
          v179 = 1;
          do
          {
            result = sub_2399D6B84(a1, v638, a4, a5, a6, v178 + a7, v176, v177);
            v178 = v179++;
          }

          while (v178 < a8);
        }
      }

      else
      {
        result = objc_msgSend_dataType(a6, v171, v172, v173, v174, v175, v176, v177);
        if (a8 && result == 268435488)
        {
          v182 = 0;
          v183 = 1;
          do
          {
            result = sub_2399D6FF8(a1, v638, a4, a5, a6, v182 + a7, v180, v181);
            v182 = v183++;
          }

          while (v182 < a8);
        }
      }
    }

    else if (a8)
    {
      v169 = 0;
      v170 = 1;
      do
      {
        result = sub_2399D5B44(a1, v638, v635, a4, a5, a6, v169 + a7, v167);
        v169 = v170++;
      }

      while (v169 < a8);
    }

    return result;
  }

  v634 = a3;
  v637 = a2;
  if ((objc_msgSend_transA(a1, v16, v17, v18, v19, v20, v21, v22) & 1) != 0 || (objc_msgSend_transB(a1, v23, v24, v25, v26, v27, v28, v29) & 1) != 0 || (objc_msgSend_rowBytes(a5, v23, v24, v25, v26, v27, v28, v29) & 0x3F) != 0)
  {
    goto LABEL_5;
  }

  if (a1)
  {
    objc_msgSend_rightMatrixOrigin(a1, v23, v24, v25, v26, v27, v28, v29);
    if ((v646 & 0xF) != 0)
    {
LABEL_5:
      v30 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    v645 = 0;
    v646 = 0;
    v647 = 0;
  }

  if (objc_msgSend_N(a1, v23, v24, v25, v26, v27, v28, v29) < 4)
  {
    goto LABEL_5;
  }

  v323 = objc_msgSend_data(a5, v23, v24, v25, v26, v27, v28, v29);
  v331 = objc_msgSend_length(v323, v324, v325, v326, v327, v328, v329, v330);
  v339 = objc_msgSend_K(a1, v332, v333, v334, v335, v336, v337, v338);
  v354 = objc_msgSend_rowBytes(a5, v340, v341, v342, v343, v344, v345, v346) * v339;
  if (a1)
  {
    objc_msgSend_rightMatrixOrigin(a1, v347, v348, v349, v350, v351, v352, v353);
    v354 += objc_msgSend_rowBytes(a5, v355, v356, v357, v358, v359, v360, v361) * v643;
    objc_msgSend_rightMatrixOrigin(a1, v362, v363, v364, v365, v366, v367, v368);
    v376 = v641;
  }

  else
  {
    v643 = 0uLL;
    *&v644 = 0;
    objc_msgSend_rowBytes(a5, v347, v348, v349, v350, v351, v352, v353);
    v376 = 0;
    v641 = 0;
    v642 = 0;
    v640 = 0;
  }

  v30 = v331 >= v354 + v376 * (objc_msgSend_dataType(a5, v369, v370, v371, v372, v373, v374, v375) >> 3);
LABEL_6:
  v31 = *(*&a1[*MEMORY[0x277CD7350]] + 16);
  v32 = objc_msgSend_N(a1, v23, v24, v25, v26, v27, v28, v29);
  v40 = objc_msgSend_K(a1, v33, v34, v35, v36, v37, v38, v39);
  if (v30 && (v48 = v40, objc_msgSend_maxTextureWidth2D(v31, v41, v42, v43, v44, v45, v46, v47) >= (v32 + 3) >> 2) && v48 <= objc_msgSend_maxTextureHeight2D(v31, v41, v42, v43, v44, v45, v46, v47))
  {
    if (qword_280D74AF0 != -1)
    {
      dispatch_once(&qword_280D74AF0, &unk_284CAA758);
    }

    v49 = byte_280D74AC0;
    if ((objc_msgSend_rowBytes(a4, v41, v42, v43, v44, v45, v46, v47) & 0xF) != 0)
    {
LABEL_10:
      v57 = 1;
      if ((objc_msgSend_offset(a4, v50, v51, v52, v53, v54, v55, v56) & 0xF) != 0)
      {
        goto LABEL_11;
      }

      goto LABEL_36;
    }
  }

  else
  {
    v49 = 1;
    if ((objc_msgSend_rowBytes(a4, v41, v42, v43, v44, v45, v46, v47) & 0xF) != 0)
    {
      goto LABEL_10;
    }
  }

  v57 = (objc_msgSend_rowBytes(a6, v50, v51, v52, v53, v54, v55, v56) & 0xF) != 0;
  if ((objc_msgSend_offset(a4, v127, v128, v129, v130, v131, v132, v133) & 0xF) != 0)
  {
LABEL_11:
    v65 = 1;
    result = objc_msgSend_dataType(a5, v58, v59, v60, v61, v62, v63, v64);
    if (result == 268435472)
    {
      goto LABEL_12;
    }

LABEL_37:
    v74 = 0;
    if (a8 < 2)
    {
      goto LABEL_43;
    }

    goto LABEL_38;
  }

LABEL_36:
  v65 = (objc_msgSend_offset(a6, v58, v59, v60, v61, v62, v63, v64) & 0xF) != 0;
  result = objc_msgSend_dataType(a5, v134, v135, v136, v137, v138, v139, v140);
  if (result != 268435472)
  {
    goto LABEL_37;
  }

LABEL_12:
  result = objc_msgSend_M(a1, v67, v68, v69, v70, v71, v72, v73);
  v74 = (result & 0xF) == 0;
  if (a8 < 2)
  {
LABEL_43:
    if ((v49 | v57 | (v65 || v74)))
    {
      result = objc_msgSend_dataType(a5, v67, v68, v69, v70, v71, v72, v73);
      if (result == 268435472)
      {
        if (a8)
        {
          v155 = 0;
          v156 = 1;
          do
          {
            result = sub_2399D60DC(a1, v637, a4, a5, a6, v155 + a7, v153, v154);
            v155 = v156++;
          }

          while (v155 < a8);
        }
      }

      else if (a8)
      {
        v159 = 0;
        v160 = 1;
        do
        {
          result = sub_2399D6754(a1, v637, a4, a5, a6, v159 + a7, v153, v154);
          v159 = v160++;
        }

        while (v159 < a8);
      }
    }

    else if (a8)
    {
      v157 = 0;
      v158 = 1;
      do
      {
        result = sub_2399D5B44(a1, v637, v634, a4, a5, a6, v157 + a7, v73);
        v157 = v158++;
      }

      while (v157 < a8);
    }

    return result;
  }

LABEL_38:
  result = objc_msgSend_dataType(a5, v67, v68, v69, v70, v71, v72, v73);
  if (result != 268435488)
  {
    goto LABEL_43;
  }

  if ((objc_msgSend_K(a1, v67, v68, v69, v70, v71, v72, v73) & 0xF) != 0 && ((objc_msgSend_N(a1, v141, v142, v143, v144, v145, v146, v147) & 0xF) != 0 || (objc_msgSend_M(a1, v148, v149, v150, v151, v152, v146, v147) & 0xF) != 0))
  {
    return sub_2399D5634(a1, v637, a4, a5, a6, a8, v146, v147);
  }

  v188 = *&a1[*MEMORY[0x277CD7370]];
  result = objc_msgSend_M(a1, v141, v142, v143, v144, v145, v146, v147);
  if (result)
  {
    result = objc_msgSend_N(a1, v189, v190, v191, v192, v193, v194, v195);
    if (result)
    {
      v636 = v188;
      objc_msgSend_leftMatrixOrigin(a1, v196, v197, v198, v199, v200, v201, v202);
      v619 = objc_msgSend_dataType(a4, v203, v204, v205, v206, v207, v208, v209) >> 3;
      objc_msgSend_leftMatrixOrigin(a1, v210, v211, v212, v213, v214, v215, v216);
      v630 = v643;
      v628 = objc_msgSend_rowBytes(a4, v217, v218, v219, v220, v221, v222, v223);
      objc_msgSend_rightMatrixOrigin(a1, v224, v225, v226, v227, v228, v229, v230);
      v616 = objc_msgSend_dataType(a5, v231, v232, v233, v234, v235, v236, v237) >> 3;
      objc_msgSend_rightMatrixOrigin(a1, v238, v239, v240, v241, v242, v243, v244);
      v626 = v643;
      v624 = objc_msgSend_rowBytes(a5, v245, v246, v247, v248, v249, v250, v251);
      objc_msgSend_resultMatrixOrigin(a1, v252, v253, v254, v255, v256, v257, v258);
      v613 = objc_msgSend_dataType(a6, v259, v260, v261, v262, v263, v264, v265) >> 3;
      objc_msgSend_resultMatrixOrigin(a1, v266, v267, v268, v269, v270, v271, v272);
      v623 = v643;
      v622 = objc_msgSend_rowBytes(a6, v273, v274, v275, v276, v277, v278, v279);
      v280 = *MEMORY[0x277CD73A8];
      v281 = *&a5[v280];
      v631 = v281;
      v632 = *&a4[v280];
      v633 = *&a6[v280];
      v289 = objc_msgSend_transB(a1, v282, v283, v284, v285, v286, v287, v288);
      v297 = objc_msgSend_transA(a1, v290, v291, v292, v293, v294, v295, v296);
      v305 = objc_msgSend_N(a1, v298, v299, v300, v301, v302, v303, v304);
      v313 = objc_msgSend_M(a1, v306, v307, v308, v309, v310, v311, v312);
      v321 = objc_msgSend_K(a1, v314, v315, v316, v317, v318, v319, v320);
      if (v289)
      {
        if (v297)
        {
          v322 = 61;
        }

        else if (((v313 | v305) & 3) != 0 || v313 > 0x20 || v305 > 0x20 || (v321 & 0xF) != 0)
        {
          v322 = 60;
        }

        else
        {
          v322 = 71;
        }

        v383 = v636;
        goto LABEL_117;
      }

      if (v297)
      {
        v378 = v619;
        v377 = v646;
        v380 = v616;
        v379 = v646;
        v382 = v613;
        v381 = v646;
        if ((v305 & 3) != 0 || v313 > 0x20 || v305 > 0x20 || (v313 & 3) != 0)
        {
          v322 = 59;
          v383 = v636;
        }

        else
        {
          v322 = 72;
          v383 = v636;
        }

        goto LABEL_118;
      }

      v383 = v636;
      if (v305 >= 0x41 && v313 >= 0x41 && v321 > 0x80)
      {
        goto LABEL_116;
      }

      if (v313 & 3 | v305 & 0xF)
      {
        v322 = 63;
      }

      else
      {
        v322 = 64;
      }

      if ((v305 & 0xF) == 0)
      {
        goto LABEL_117;
      }

      if (v313 & 1 | v305 & 7)
      {
LABEL_116:
        v322 = 58;
      }

      else
      {
        v322 = 62;
      }

LABEL_117:
      v378 = v619;
      v377 = v646;
      v380 = v616;
      v379 = v646;
      v382 = v613;
      v381 = v646;
LABEL_118:
      v620 = v377 * v378;
      v617 = v381 * v382;
      v618 = v379 * v380;
      ComputeState = MPSLibrary::GetComputeState();
      v615 = objc_msgSend_N(a1, v439, v440, v441, v442, v443, v444, v445);
      LODWORD(v645) = v615;
      v614 = objc_msgSend_M(a1, v446, v447, v448, v449, v450, v451, v452);
      HIDWORD(v645) = v614;
      LODWORD(v646) = objc_msgSend_K(a1, v453, v454, v455, v456, v457, v458, v459);
      HIDWORD(v646) = a8;
      LODWORD(v647) = objc_msgSend_rowBytes(a5, v460, v461, v462, v463, v464, v465, v466);
      HIDWORD(v647) = objc_msgSend_rowBytes(a4, v467, v468, v469, v470, v471, v472, v473);
      v648 = objc_msgSend_rowBytes(a6, v474, v475, v476, v477, v478, v479, v480);
      v649 = objc_msgSend_rowBytes(a6, v481, v482, v483, v484, v485, v486, v487);
      v650 = objc_msgSend_matrixBytes(a5, v488, v489, v490, v491, v492, v493, v494);
      v651 = objc_msgSend_matrixBytes(a4, v495, v496, v497, v498, v499, v500, v501);
      v652 = objc_msgSend_matrixBytes(a6, v502, v503, v504, v505, v506, v507, v508);
      v653 = objc_msgSend_matrixBytes(a6, v509, v510, v511, v512, v513, v514, v515);
      objc_msgSend_alpha(a1, v516, v517, v518, v519, v520, v521, v522);
      *&v523 = v523;
      v654 = LODWORD(v523);
      objc_msgSend_beta(a1, v524, v525, v526, v527, v528, v529, v530);
      *&v531 = v531;
      v655 = LODWORD(v531);
      v656 = 0u;
      memset(v657, 0, sizeof(v657));
      v532 = *(v383 + 32);
      v643 = 0u;
      v644 = 0u;
      v533 = v322;
      (*(*v532 + 24))(&v643);
      v535 = *(&v643 + 1);
      v534 = v643;
      v621 = ComputeState;
      v543 = objc_msgSend_maxTotalThreadsPerThreadgroup(ComputeState, v536, v537, v538, v539, v540, v541, v542);
      v550 = 8 * v535 * v534;
      if (v535 * v534 > v543 && v535 >= v543 / v534)
      {
        v535 = v543 / v534;
      }

      v551 = v620 + v628 * v630;
      v552 = v618 + v624 * v626;
      v553 = v543 / (v535 * v534);
      if (v553 >= 8)
      {
        v553 = 8;
      }

      if (v550 > v543)
      {
        v554 = v553;
      }

      else
      {
        v554 = 8;
      }

      v625 = v617 + v622 * v623;
      if ((v533 & 0x7E) == 0x3C || (v533 & 0x7E) == 0x3A)
      {
        v629 = (v644 * v534 + v615 - 1) / (v644 * v534);
        v555 = (*(&v644 + 1) * v535 + v614 - 1) / (*(&v644 + 1) * v535);
      }

      else
      {
        v629 = 1;
        v555 = 1;
      }

      v627 = v555;
      objc_msgSend_setComputePipelineState_(v637, v544, v621, v545, v546, v547, v548, v549);
      v563 = objc_msgSend_data(a5, v556, v557, v558, v559, v560, v561, v562);
      objc_msgSend_setBuffer_offset_atIndex_(v637, v564, v563, v552 + v631, 0, v565, v566, v567);
      v575 = objc_msgSend_data(a4, v568, v569, v570, v571, v572, v573, v574);
      objc_msgSend_setBuffer_offset_atIndex_(v637, v576, v575, v551 + v632, 1, v577, v578, v579);
      v587 = objc_msgSend_data(a6, v580, v581, v582, v583, v584, v585, v586);
      objc_msgSend_setBuffer_offset_atIndex_(v637, v588, v587, v625 + v633, 2, v589, v590, v591);
      v599 = objc_msgSend_data(a6, v592, v593, v594, v595, v596, v597, v598);
      objc_msgSend_setBuffer_offset_atIndex_(v637, v600, v599, v625 + v633, 3, v601, v602, v603);
      objc_msgSend_setBytes_length_atIndex_(v637, v604, &v645, 100, 4, v605, v606, v607);
      v640 = v629;
      v641 = v627;
      v642 = (v554 + a8 - 1) / v554;
      v639[0] = v534;
      v639[1] = v535;
      v639[2] = v554;
      objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v637, v608, &v640, v639, v609, v610, v611, v612);
      return MPSLibrary::ReleaseComputeState();
    }
  }

  return result;
}

uint64_t sub_2399D276C(char *a1, char *a2, uint64_t a3, void *a4, void *a5, char *a6, uint64_t a7, unint64_t a8)
{
  v15 = objc_msgSend_dataType(a4, a2, a3, a4, a5, a6, a7, a8);
  result = objc_msgSend_dataType(a5, v16, v17, v18, v19, v20, v21, v22);
  if (v15 == result)
  {
    result = objc_msgSend_dataType(a4, v24, v25, v26, v27, v28, v29, v30);
    if (result == 268435488)
    {
      if (a8 <= 1)
      {
        if (a8 == 1)
        {

          return sub_2399D6754(a1, a2, a4, a5, a6, a7, v36, v37);
        }
      }

      else
      {

        return sub_2399D5634(a1, a2, a4, a5, a6, a8, v36, v37);
      }
    }

    else if (objc_msgSend_dataType(a4, v31, v32, v33, v34, v35, v36, v37) == 268435472)
    {
      result = objc_msgSend_dataType(a6, v40, v41, v42, v43, v44, v45, v46);
      if (result == 268435472)
      {
        if (a8)
        {
          v54 = 0;
          v55 = 1;
          do
          {
            result = sub_2399D6B84(a1, a2, a4, a5, a6, v54 + a7, v52, v53);
            v54 = v55++;
          }

          while (v54 < a8);
        }
      }

      else
      {
        result = objc_msgSend_dataType(a6, v47, v48, v49, v50, v51, v52, v53);
        if (a8 && result == 268435488)
        {
          v74 = 0;
          v75 = 1;
          do
          {
            result = sub_2399D6FF8(a1, a2, a4, a5, a6, v74 + a7, v72, v73);
            v74 = v75++;
          }

          while (v74 < a8);
        }
      }
    }

    else
    {
      result = objc_msgSend_dataType(a4, v40, v41, v42, v43, v44, v45, v46);
      if (result == 536870920)
      {
        result = objc_msgSend_dataType(a6, v56, v57, v58, v59, v60, v61, v62);
        if (result == 268435488)
        {
          if (a8)
          {
            v70 = 0;
            v71 = 1;
            do
            {
              result = sub_2399D43C0(a1, a2, a4, a5, a6, v70 + a7, v68, v69);
              v70 = v71++;
            }

            while (v70 < a8);
          }
        }

        else
        {
          result = objc_msgSend_dataType(a6, v63, v64, v65, v66, v67, v68, v69);
          if (a8 && result == 268435472)
          {
            v80 = 0;
            v81 = 1;
            do
            {
              result = sub_2399D4834(a1, a2, a4, a5, a6, v80 + a7, v78, v79);
              v80 = v81++;
            }

            while (v80 < a8);
          }
        }
      }

      else if (a8)
      {
        v76 = 0;
        v77 = 1;
        do
        {
          result = sub_2399D4CA8(a1, a2, a4, a5, a6, v76 + a7, v61, v62);
          v76 = v77++;
        }

        while (v76 < a8);
      }
    }
  }

  else if (a8)
  {
    v38 = 0;
    v39 = 1;
    do
    {
      result = sub_2399D60DC(a1, a2, a4, a5, a6, v38 + a7, v29, v30);
      v38 = v39++;
    }

    while (v38 < a8);
  }

  return result;
}

void sub_2399D3CBC(_Unwind_Exception *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  sub_2399D74A4(va, a2, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

uint64_t sub_2399D405C(uint64_t a1, uint64_t *a2)
{
  v3 = MPSCreateFunctionConstantValues();
  v11 = a2[8];
  objc_msgSend_setConstantValue_type_atIndex_(v3, v4, &v11, 41, 0, v5, v6, v7);
  v8 = *a2;
  v9 = _MPSNewSpecializedFunction();

  return v9;
}

__n128 sub_2399D4114@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v3 = *(a1 + 8) + 32 * a2;
  result = *v3;
  v5 = *(v3 + 16);
  *a3 = *v3;
  a3[1] = v5;
  return result;
}

char *sub_2399D4128(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, char a9)
{
  v139 = *MEMORY[0x277D85DE8];
  v138 = 0;
  v137 = 0u;
  v136 = 0u;
  v135 = 0u;
  v134 = 0u;
  v133 = 0u;
  v132 = 0u;
  v131[0] = objc_msgSend_columns(a1, a2, a3, a4, a5, a6, a7, a8);
  v131[1] = objc_msgSend_rows(a1, v16, v17, v18, v19, v20, v21, v22);
  v131[2] = objc_msgSend_matrices(a1, v23, v24, v25, v26, v27, v28, v29);
  v37 = objc_msgSend_offset(a1, v30, v31, v32, v33, v34, v35, v36);
  v38 = MEMORY[0x277CD7268];
  v46 = objc_msgSend_dataType(a1, v39, v40, v41, v42, v43, v44, v45);
  v51 = objc_msgSend_descriptorWithDataType_dimensionCount_dimensionSizes_(v38, v47, v46, 3, v131, v48, v49, v50);
  v59 = objc_msgSend_rowBytes(a1, v52, v53, v54, v55, v56, v57, v58);
  objc_msgSend_setRowBytes_(v51, v60, v59, v61, v62, v63, v64, v65);
  if (a9)
  {
    objc_msgSend_transposeDimension_withDimension_(v51, v66, 0, 1, v67, v68, v69, v70);
  }

  objc_msgSend_sliceDimension_withSubrange_(v51, v66, 0, a2, a3, v68, v69, v70);
  objc_msgSend_sliceDimension_withSubrange_(v51, v71, 1, a4, a5, v72, v73, v74);
  objc_msgSend_sliceDimension_withSubrange_(v51, v75, 2, a6, a7, v76, v77, v78);
  v79 = objc_alloc(MEMORY[0x277CD7260]);
  v87 = objc_msgSend_data(a1, v80, v81, v82, v83, v84, v85, v86);
  v93 = objc_msgSend_initWithBuffer_descriptor_(v79, v88, v87, v51, v89, v90, v91, v92);
  *&v93[*MEMORY[0x277CD73F8]] = v37;
  v101 = objc_msgSend_userDictionary(a8, v94, v95, v96, v97, v98, v99, v100);
  v108 = objc_msgSend_objectForKey_(v101, v102, @"_MPSCommandBufferRetainListKey", v103, v104, v105, v106, v107);
  if (!v108)
  {
    v115 = objc_alloc_init(MEMORY[0x277CBEB18]);
    objc_msgSend_setObject_forKey_(v101, v116, v115, @"_MPSCommandBufferRetainListKey", v117, v118, v119, v120);

    v130[0] = MEMORY[0x277D85DD0];
    v130[1] = 3221225472;
    v130[2] = sub_2399D4384;
    v130[3] = &unk_278AFD238;
    v130[4] = @"_MPSCommandBufferRetainListKey";
    objc_msgSend_addCompletedHandler_(a8, v121, v130, v122, v123, v124, v125, v126);
    v108 = v115;
  }

  objc_msgSend_addObject_(v108, v109, v93, v110, v111, v112, v113, v114);

  v127 = *MEMORY[0x277D85DE8];
  return v93;
}

uint64_t sub_2399D4384(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = objc_msgSend_userDictionary(a2, a2, a3, a4, a5, a6, a7, a8);
  v15 = *(a1 + 32);

  return MEMORY[0x2821F9670](v9, sel_removeObjectForKey_, v15, v10, v11, v12, v13, v14);
}

uint64_t sub_2399D43C0(char *a1, char *a2, char *a3, char *a4, char *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = *&a1[*MEMORY[0x277CD7370]];
  result = objc_msgSend_M(a1, a2, a3, a4, a5, a6, a7, a8);
  if (!result)
  {
    return result;
  }

  result = objc_msgSend_N(a1, v16, v17, v18, v19, v20, v21, v22);
  if (!result)
  {
    return result;
  }

  v327 = v14;
  objc_msgSend_leftMatrixOrigin(a1, v23, v24, v25, v26, v27, v28, v29);
  v37 = v333 * (objc_msgSend_dataType(a3, v30, v31, v32, v33, v34, v35, v36) >> 3);
  objc_msgSend_leftMatrixOrigin(a1, v38, v39, v40, v41, v42, v43, v44);
  v52 = v37 + objc_msgSend_rowBytes(a3, v45, v46, v47, v48, v49, v50, v51) * v330;
  v60 = v52 + objc_msgSend_matrixBytes(a3, v53, v54, v55, v56, v57, v58, v59) * a6;
  objc_msgSend_rightMatrixOrigin(a1, v61, v62, v63, v64, v65, v66, v67);
  v75 = v333 * (objc_msgSend_dataType(a4, v68, v69, v70, v71, v72, v73, v74) >> 3);
  objc_msgSend_rightMatrixOrigin(a1, v76, v77, v78, v79, v80, v81, v82);
  v90 = v75 + objc_msgSend_rowBytes(a4, v83, v84, v85, v86, v87, v88, v89) * v330;
  v98 = v90 + objc_msgSend_matrixBytes(a4, v91, v92, v93, v94, v95, v96, v97) * a6;
  objc_msgSend_resultMatrixOrigin(a1, v99, v100, v101, v102, v103, v104, v105);
  v113 = v333 * (objc_msgSend_dataType(a5, v106, v107, v108, v109, v110, v111, v112) >> 3);
  objc_msgSend_resultMatrixOrigin(a1, v114, v115, v116, v117, v118, v119, v120);
  v128 = v113 + objc_msgSend_rowBytes(a5, v121, v122, v123, v124, v125, v126, v127) * v330;
  v136 = objc_msgSend_matrixBytes(a5, v129, v130, v131, v132, v133, v134, v135);
  v137 = *MEMORY[0x277CD73A8];
  v138 = v98 + *&a4[v137];
  v326 = *&a5[v137];
  v325 = v60 + *&a3[v137];
  objc_msgSend_rowBytes(a3, v139, v140, v141, v142, v143, v144, v145);
  objc_msgSend_rowBytes(a4, v146, v147, v148, v149, v150, v151, v152);
  v324 = v138;
  objc_msgSend_transB(a1, v153, v154, v155, v156, v157, v158, v159);
  objc_msgSend_transA(a1, v160, v161, v162, v163, v164, v165, v166);
  v323 = v128 + v136 * a6;
  ComputeState = MPSLibrary::GetComputeState();
  v175 = objc_msgSend_N(a1, v168, v169, v170, v171, v172, v173, v174);
  v332[0] = v175;
  v183 = objc_msgSend_M(a1, v176, v177, v178, v179, v180, v181, v182);
  v332[1] = v183;
  LODWORD(v333) = objc_msgSend_K(a1, v184, v185, v186, v187, v188, v189, v190);
  HIDWORD(v333) = objc_msgSend_rowBytes(a4, v191, v192, v193, v194, v195, v196, v197);
  v334 = objc_msgSend_rowBytes(a3, v198, v199, v200, v201, v202, v203, v204);
  v335 = objc_msgSend_rowBytes(a5, v205, v206, v207, v208, v209, v210, v211);
  v336 = objc_msgSend_rowBytes(a5, v212, v213, v214, v215, v216, v217, v218);
  objc_msgSend_alpha(a1, v219, v220, v221, v222, v223, v224, v225);
  *&v226 = v226;
  v337 = LODWORD(v226);
  objc_msgSend_beta(a1, v227, v228, v229, v230, v231, v232, v233);
  *&v234 = v234;
  v338 = LODWORD(v234);
  v235 = *(v327 + 32);
  v330 = 0u;
  v331 = 0u;
  (*(*v235 + 24))(&v330);
  v243 = objc_msgSend_threadExecutionWidth(ComputeState, v236, v237, v238, v239, v240, v241, v242);
  if (v175 > 32 * v183)
  {
    v251 = *(&v330 + 1);
    v252 = v330;
    if (*(&v330 + 1) * v330 < 2 * (v243 & 0x7FFFFFFF))
    {
      v252 = 2 * v330;
LABEL_12:
      *&v330 = v252;
      goto LABEL_13;
    }

    v251 = *(&v330 + 1) >> 1;
LABEL_10:
    *(&v330 + 1) = v251;
    goto LABEL_13;
  }

  v251 = *(&v330 + 1);
  v252 = v330;
  if (v183 > 32 * v175)
  {
    if (*(&v330 + 1) * v330 >= 2 * (v243 & 0x7FFFFFFF))
    {
      v252 = v330 >> 1;
      goto LABEL_12;
    }

    v251 = 2 * *(&v330 + 1);
    goto LABEL_10;
  }

LABEL_13:
  v253 = objc_msgSend_maxTotalThreadsPerThreadgroup(ComputeState, v244, v245, v246, v247, v248, v249, v250);
  v260 = v252 * v251;
  v261 = v253 / v252;
  if (v251 < v253 / v252)
  {
    v261 = v251;
  }

  if (v260 > v253)
  {
    v262 = v261;
  }

  else
  {
    v262 = v251;
  }

  v263 = v260 <= v253 || v261 * v252 <= v253;
  v264 = (v331 * v252 + v175 - 1) / (v331 * v252);
  v265 = (*(&v331 + 1) * v262 + v183 - 1) / (*(&v331 + 1) * v262);
  objc_msgSend_setComputePipelineState_(a2, v254, ComputeState, v255, v256, v257, v258, v259);
  v273 = objc_msgSend_data(a4, v266, v267, v268, v269, v270, v271, v272);
  objc_msgSend_setBuffer_offset_atIndex_(a2, v274, v273, v324, 0, v275, v276, v277);
  v285 = objc_msgSend_data(a3, v278, v279, v280, v281, v282, v283, v284);
  objc_msgSend_setBuffer_offset_atIndex_(a2, v286, v285, v325, 1, v287, v288, v289);
  v297 = objc_msgSend_data(a5, v290, v291, v292, v293, v294, v295, v296);
  objc_msgSend_setBuffer_offset_atIndex_(a2, v298, v297, v323 + v326, 2, v299, v300, v301);
  v309 = objc_msgSend_data(a5, v302, v303, v304, v305, v306, v307, v308);
  objc_msgSend_setBuffer_offset_atIndex_(a2, v310, v309, v323 + v326, 3, v311, v312, v313);
  objc_msgSend_setBytes_length_atIndex_(a2, v314, v332, 36, 4, v315, v316, v317);
  v329[0] = v264;
  v329[1] = v265;
  v329[2] = 1;
  v328[0] = v252;
  v328[1] = v262;
  v328[2] = v263;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v318, v329, v328, v319, v320, v321, v322);
  return MPSLibrary::ReleaseComputeState();
}

uint64_t sub_2399D4834(char *a1, char *a2, char *a3, char *a4, char *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = *&a1[*MEMORY[0x277CD7370]];
  result = objc_msgSend_M(a1, a2, a3, a4, a5, a6, a7, a8);
  if (!result)
  {
    return result;
  }

  result = objc_msgSend_N(a1, v16, v17, v18, v19, v20, v21, v22);
  if (!result)
  {
    return result;
  }

  v327 = v14;
  objc_msgSend_leftMatrixOrigin(a1, v23, v24, v25, v26, v27, v28, v29);
  v37 = v333 * (objc_msgSend_dataType(a3, v30, v31, v32, v33, v34, v35, v36) >> 3);
  objc_msgSend_leftMatrixOrigin(a1, v38, v39, v40, v41, v42, v43, v44);
  v52 = v37 + objc_msgSend_rowBytes(a3, v45, v46, v47, v48, v49, v50, v51) * v330;
  v60 = v52 + objc_msgSend_matrixBytes(a3, v53, v54, v55, v56, v57, v58, v59) * a6;
  objc_msgSend_rightMatrixOrigin(a1, v61, v62, v63, v64, v65, v66, v67);
  v75 = v333 * (objc_msgSend_dataType(a4, v68, v69, v70, v71, v72, v73, v74) >> 3);
  objc_msgSend_rightMatrixOrigin(a1, v76, v77, v78, v79, v80, v81, v82);
  v90 = v75 + objc_msgSend_rowBytes(a4, v83, v84, v85, v86, v87, v88, v89) * v330;
  v98 = v90 + objc_msgSend_matrixBytes(a4, v91, v92, v93, v94, v95, v96, v97) * a6;
  objc_msgSend_resultMatrixOrigin(a1, v99, v100, v101, v102, v103, v104, v105);
  v113 = v333 * (objc_msgSend_dataType(a5, v106, v107, v108, v109, v110, v111, v112) >> 3);
  objc_msgSend_resultMatrixOrigin(a1, v114, v115, v116, v117, v118, v119, v120);
  v128 = v113 + objc_msgSend_rowBytes(a5, v121, v122, v123, v124, v125, v126, v127) * v330;
  v136 = objc_msgSend_matrixBytes(a5, v129, v130, v131, v132, v133, v134, v135);
  v137 = *MEMORY[0x277CD73A8];
  v138 = v98 + *&a4[v137];
  v326 = *&a5[v137];
  v325 = v60 + *&a3[v137];
  objc_msgSend_rowBytes(a3, v139, v140, v141, v142, v143, v144, v145);
  objc_msgSend_rowBytes(a4, v146, v147, v148, v149, v150, v151, v152);
  v324 = v138;
  objc_msgSend_transB(a1, v153, v154, v155, v156, v157, v158, v159);
  objc_msgSend_transA(a1, v160, v161, v162, v163, v164, v165, v166);
  v323 = v128 + v136 * a6;
  ComputeState = MPSLibrary::GetComputeState();
  v175 = objc_msgSend_N(a1, v168, v169, v170, v171, v172, v173, v174);
  v332[0] = v175;
  v183 = objc_msgSend_M(a1, v176, v177, v178, v179, v180, v181, v182);
  v332[1] = v183;
  LODWORD(v333) = objc_msgSend_K(a1, v184, v185, v186, v187, v188, v189, v190);
  HIDWORD(v333) = objc_msgSend_rowBytes(a4, v191, v192, v193, v194, v195, v196, v197);
  v334 = objc_msgSend_rowBytes(a3, v198, v199, v200, v201, v202, v203, v204);
  v335 = objc_msgSend_rowBytes(a5, v205, v206, v207, v208, v209, v210, v211);
  v336 = objc_msgSend_rowBytes(a5, v212, v213, v214, v215, v216, v217, v218);
  objc_msgSend_alpha(a1, v219, v220, v221, v222, v223, v224, v225);
  *&v226 = v226;
  v337 = LODWORD(v226);
  objc_msgSend_beta(a1, v227, v228, v229, v230, v231, v232, v233);
  *&v234 = v234;
  v338 = LODWORD(v234);
  v235 = *(v327 + 32);
  v330 = 0u;
  v331 = 0u;
  (*(*v235 + 24))(&v330);
  v243 = objc_msgSend_threadExecutionWidth(ComputeState, v236, v237, v238, v239, v240, v241, v242);
  if (v175 > 32 * v183)
  {
    v251 = *(&v330 + 1);
    v252 = v330;
    if (*(&v330 + 1) * v330 < 2 * (v243 & 0x7FFFFFFF))
    {
      v252 = 2 * v330;
LABEL_12:
      *&v330 = v252;
      goto LABEL_13;
    }

    v251 = *(&v330 + 1) >> 1;
LABEL_10:
    *(&v330 + 1) = v251;
    goto LABEL_13;
  }

  v251 = *(&v330 + 1);
  v252 = v330;
  if (v183 > 32 * v175)
  {
    if (*(&v330 + 1) * v330 >= 2 * (v243 & 0x7FFFFFFF))
    {
      v252 = v330 >> 1;
      goto LABEL_12;
    }

    v251 = 2 * *(&v330 + 1);
    goto LABEL_10;
  }

LABEL_13:
  v253 = objc_msgSend_maxTotalThreadsPerThreadgroup(ComputeState, v244, v245, v246, v247, v248, v249, v250);
  v260 = v252 * v251;
  v261 = v253 / v252;
  if (v251 < v253 / v252)
  {
    v261 = v251;
  }

  if (v260 > v253)
  {
    v262 = v261;
  }

  else
  {
    v262 = v251;
  }

  v263 = v260 <= v253 || v261 * v252 <= v253;
  v264 = (v331 * v252 + v175 - 1) / (v331 * v252);
  v265 = (*(&v331 + 1) * v262 + v183 - 1) / (*(&v331 + 1) * v262);
  objc_msgSend_setComputePipelineState_(a2, v254, ComputeState, v255, v256, v257, v258, v259);
  v273 = objc_msgSend_data(a4, v266, v267, v268, v269, v270, v271, v272);
  objc_msgSend_setBuffer_offset_atIndex_(a2, v274, v273, v324, 0, v275, v276, v277);
  v285 = objc_msgSend_data(a3, v278, v279, v280, v281, v282, v283, v284);
  objc_msgSend_setBuffer_offset_atIndex_(a2, v286, v285, v325, 1, v287, v288, v289);
  v297 = objc_msgSend_data(a5, v290, v291, v292, v293, v294, v295, v296);
  objc_msgSend_setBuffer_offset_atIndex_(a2, v298, v297, v323 + v326, 2, v299, v300, v301);
  v309 = objc_msgSend_data(a5, v302, v303, v304, v305, v306, v307, v308);
  objc_msgSend_setBuffer_offset_atIndex_(a2, v310, v309, v323 + v326, 3, v311, v312, v313);
  objc_msgSend_setBytes_length_atIndex_(a2, v314, v332, 36, 4, v315, v316, v317);
  v329[0] = v264;
  v329[1] = v265;
  v329[2] = 1;
  v328[0] = v252;
  v328[1] = v262;
  v328[2] = v263;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v318, v329, v328, v319, v320, v321, v322);
  return MPSLibrary::ReleaseComputeState();
}

uint64_t sub_2399D4CA8(char *a1, char *a2, char *a3, char *a4, char *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = *&a1[*MEMORY[0x277CD7370]];
  result = objc_msgSend_M(a1, a2, a3, a4, a5, a6, a7, a8);
  if (!result)
  {
    return result;
  }

  result = objc_msgSend_N(a1, v16, v17, v18, v19, v20, v21, v22);
  if (!result)
  {
    return result;
  }

  v327 = v14;
  objc_msgSend_leftMatrixOrigin(a1, v23, v24, v25, v26, v27, v28, v29);
  v37 = v333 * (objc_msgSend_dataType(a3, v30, v31, v32, v33, v34, v35, v36) >> 3);
  objc_msgSend_leftMatrixOrigin(a1, v38, v39, v40, v41, v42, v43, v44);
  v52 = v37 + objc_msgSend_rowBytes(a3, v45, v46, v47, v48, v49, v50, v51) * v330;
  v60 = v52 + objc_msgSend_matrixBytes(a3, v53, v54, v55, v56, v57, v58, v59) * a6;
  objc_msgSend_rightMatrixOrigin(a1, v61, v62, v63, v64, v65, v66, v67);
  v75 = v333 * (objc_msgSend_dataType(a4, v68, v69, v70, v71, v72, v73, v74) >> 3);
  objc_msgSend_rightMatrixOrigin(a1, v76, v77, v78, v79, v80, v81, v82);
  v90 = v75 + objc_msgSend_rowBytes(a4, v83, v84, v85, v86, v87, v88, v89) * v330;
  v98 = v90 + objc_msgSend_matrixBytes(a4, v91, v92, v93, v94, v95, v96, v97) * a6;
  objc_msgSend_resultMatrixOrigin(a1, v99, v100, v101, v102, v103, v104, v105);
  v113 = v333 * (objc_msgSend_dataType(a5, v106, v107, v108, v109, v110, v111, v112) >> 3);
  objc_msgSend_resultMatrixOrigin(a1, v114, v115, v116, v117, v118, v119, v120);
  v128 = v113 + objc_msgSend_rowBytes(a5, v121, v122, v123, v124, v125, v126, v127) * v330;
  v136 = objc_msgSend_matrixBytes(a5, v129, v130, v131, v132, v133, v134, v135);
  v137 = *MEMORY[0x277CD73A8];
  v138 = v98 + *&a4[v137];
  v326 = *&a5[v137];
  v325 = v60 + *&a3[v137];
  objc_msgSend_rowBytes(a3, v139, v140, v141, v142, v143, v144, v145);
  objc_msgSend_rowBytes(a4, v146, v147, v148, v149, v150, v151, v152);
  v324 = v138;
  objc_msgSend_transB(a1, v153, v154, v155, v156, v157, v158, v159);
  objc_msgSend_transA(a1, v160, v161, v162, v163, v164, v165, v166);
  v323 = v128 + v136 * a6;
  ComputeState = MPSLibrary::GetComputeState();
  v175 = objc_msgSend_N(a1, v168, v169, v170, v171, v172, v173, v174);
  v332[0] = v175;
  v183 = objc_msgSend_M(a1, v176, v177, v178, v179, v180, v181, v182);
  v332[1] = v183;
  LODWORD(v333) = objc_msgSend_K(a1, v184, v185, v186, v187, v188, v189, v190);
  HIDWORD(v333) = objc_msgSend_rowBytes(a4, v191, v192, v193, v194, v195, v196, v197);
  v334 = objc_msgSend_rowBytes(a3, v198, v199, v200, v201, v202, v203, v204);
  v335 = objc_msgSend_rowBytes(a5, v205, v206, v207, v208, v209, v210, v211);
  v336 = objc_msgSend_rowBytes(a5, v212, v213, v214, v215, v216, v217, v218);
  objc_msgSend_alpha(a1, v219, v220, v221, v222, v223, v224, v225);
  *&v226 = v226;
  v337 = LODWORD(v226);
  objc_msgSend_beta(a1, v227, v228, v229, v230, v231, v232, v233);
  *&v234 = v234;
  v338 = LODWORD(v234);
  v235 = *(v327 + 32);
  v330 = 0u;
  v331 = 0u;
  (*(*v235 + 24))(&v330);
  v243 = objc_msgSend_threadExecutionWidth(ComputeState, v236, v237, v238, v239, v240, v241, v242);
  if (v175 > 32 * v183)
  {
    v251 = *(&v330 + 1);
    v252 = v330;
    if (*(&v330 + 1) * v330 < 2 * (v243 & 0x7FFFFFFF))
    {
      v252 = 2 * v330;
LABEL_12:
      *&v330 = v252;
      goto LABEL_13;
    }

    v251 = *(&v330 + 1) >> 1;
LABEL_10:
    *(&v330 + 1) = v251;
    goto LABEL_13;
  }

  v251 = *(&v330 + 1);
  v252 = v330;
  if (v183 > 32 * v175)
  {
    if (*(&v330 + 1) * v330 >= 2 * (v243 & 0x7FFFFFFF))
    {
      v252 = v330 >> 1;
      goto LABEL_12;
    }

    v251 = 2 * *(&v330 + 1);
    goto LABEL_10;
  }

LABEL_13:
  v253 = objc_msgSend_maxTotalThreadsPerThreadgroup(ComputeState, v244, v245, v246, v247, v248, v249, v250);
  v260 = v252 * v251;
  v261 = v253 / v252;
  if (v251 < v253 / v252)
  {
    v261 = v251;
  }

  if (v260 > v253)
  {
    v262 = v261;
  }

  else
  {
    v262 = v251;
  }

  v263 = v260 <= v253 || v261 * v252 <= v253;
  v264 = (v331 * v252 + v175 - 1) / (v331 * v252);
  v265 = (*(&v331 + 1) * v262 + v183 - 1) / (*(&v331 + 1) * v262);
  objc_msgSend_setComputePipelineState_(a2, v254, ComputeState, v255, v256, v257, v258, v259);
  v273 = objc_msgSend_data(a4, v266, v267, v268, v269, v270, v271, v272);
  objc_msgSend_setBuffer_offset_atIndex_(a2, v274, v273, v324, 0, v275, v276, v277);
  v285 = objc_msgSend_data(a3, v278, v279, v280, v281, v282, v283, v284);
  objc_msgSend_setBuffer_offset_atIndex_(a2, v286, v285, v325, 1, v287, v288, v289);
  v297 = objc_msgSend_data(a5, v290, v291, v292, v293, v294, v295, v296);
  objc_msgSend_setBuffer_offset_atIndex_(a2, v298, v297, v323 + v326, 2, v299, v300, v301);
  v309 = objc_msgSend_data(a5, v302, v303, v304, v305, v306, v307, v308);
  objc_msgSend_setBuffer_offset_atIndex_(a2, v310, v309, v323 + v326, 3, v311, v312, v313);
  objc_msgSend_setBytes_length_atIndex_(a2, v314, v332, 36, 4, v315, v316, v317);
  v329[0] = v264;
  v329[1] = v265;
  v329[2] = 1;
  v328[0] = v252;
  v328[1] = v262;
  v328[2] = v263;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v318, v329, v328, v319, v320, v321, v322);
  return MPSLibrary::ReleaseComputeState();
}

char *sub_2399D511C()
{
  v0 = getenv("MPS_MATMUL_TILEM");
  v1 = getenv("MPS_MATMUL_TILEN");
  v2 = getenv("MPS_MATMUL_TILEK");
  result = getenv("MPS_MATMUL_TGSIZE");
  v4 = result;
  if (v0)
  {
    result = atoi(v0);
    word_27DF856E8 = result;
  }

  if (v1)
  {
    result = atoi(v1);
    word_27DF856EA = result;
  }

  if (v2)
  {
    result = atoi(v2);
    LOWORD(dword_27DF856EC) = result;
  }

  if (v4)
  {
    result = atoi(v4);
    HIWORD(dword_27DF856EC) = result;
  }

  return result;
}

uint64_t sub_2399D51D0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v5 = MPSCreateFunctionConstantValues();
  v10 = v5;
  v11 = a2[8];
  v13 = *a3;
  v12 = a3[1];
  v14 = a3[3];
  if (v12 != -1)
  {
    v42 = v12;
    objc_msgSend_setConstantValue_type_atIndex_(v5, v6, &v42, 33, 126, v7, v8, v9);
  }

  if (v13 != -1)
  {
    v42 = v13;
    objc_msgSend_setConstantValue_type_atIndex_(v10, v6, &v42, 33, 125, v7, v8, v9);
  }

  v42 = HIDWORD(v11);
  objc_msgSend_setConstantValue_type_atIndex_(v10, v6, &v42, 33, 124, v7, v8, v9);
  if (v14 != -1)
  {
    v42 = v14;
    objc_msgSend_setConstantValue_type_atIndex_(v10, v15, &v42, 33, 123, v16, v17, v18);
  }

  v42 = 0;
  objc_msgSend_setConstantValue_type_atIndex_(v10, v15, &v42, 33, 119, v16, v17, v18);
  v42 = 0;
  objc_msgSend_setConstantValue_type_atIndex_(v10, v19, &v42, 33, 118, v20, v21, v22);
  v42 = 0;
  objc_msgSend_setConstantValue_type_atIndex_(v10, v23, &v42, 33, 122, v24, v25, v26);
  v42 = 0;
  objc_msgSend_setConstantValue_type_atIndex_(v10, v27, &v42, 33, 121, v28, v29, v30);
  v42 = 0;
  objc_msgSend_setConstantValue_type_atIndex_(v10, v31, &v42, 33, 117, v32, v33, v34);
  v42 = 0;
  objc_msgSend_setConstantValue_type_atIndex_(v10, v35, &v42, 33, 116, v36, v37, v38);
  v39 = *a2;
  v40 = _MPSNewSpecializedFunction();

  return v40;
}

char *sub_2399D5364()
{
  v0 = getenv("MPS_MATMUL_TILEM");
  v1 = getenv("MPS_MATMUL_TILEN");
  v2 = getenv("MPS_MATMUL_TILEK");
  result = getenv("MPS_MATMUL_TGSIZE");
  v4 = result;
  if (v0)
  {
    result = atoi(v0);
    word_27DF856F0 = result;
  }

  if (v1)
  {
    result = atoi(v1);
    word_27DF856F2 = result;
  }

  if (v2)
  {
    result = atoi(v2);
    LOWORD(dword_27DF856F4) = result;
  }

  if (v4)
  {
    result = atoi(v4);
    HIWORD(dword_27DF856F4) = result;
  }

  return result;
}

char *sub_2399D5418()
{
  v0 = getenv("MPS_MATMUL_TILEM");
  v1 = getenv("MPS_MATMUL_TILEN");
  v2 = getenv("MPS_MATMUL_TILEK");
  result = getenv("MPS_MATMUL_TGSIZE");
  v4 = result;
  if (v0)
  {
    result = atoi(v0);
    word_27DF856F8 = result;
  }

  if (v1)
  {
    result = atoi(v1);
    word_27DF856FA = result;
  }

  if (v2)
  {
    result = atoi(v2);
    LOWORD(dword_27DF856FC) = result;
  }

  if (v4)
  {
    result = atoi(v4);
    HIWORD(dword_27DF856FC) = result;
  }

  return result;
}

char *sub_2399D54CC()
{
  v0 = getenv("MPS_MATMUL_TILEM");
  v1 = getenv("MPS_MATMUL_TILEN");
  v2 = getenv("MPS_MATMUL_TILEK");
  result = getenv("MPS_MATMUL_TGSIZE");
  v4 = result;
  if (v0)
  {
    result = atoi(v0);
    word_27DF85700 = result;
  }

  if (v1)
  {
    result = atoi(v1);
    word_27DF85702 = result;
  }

  if (v2)
  {
    result = atoi(v2);
    LOWORD(dword_27DF85704) = result;
  }

  if (v4)
  {
    result = atoi(v4);
    HIWORD(dword_27DF85704) = result;
  }

  return result;
}

char *sub_2399D5580()
{
  v0 = getenv("MPS_MATMUL_TILEM");
  v1 = getenv("MPS_MATMUL_TILEN");
  v2 = getenv("MPS_MATMUL_TILEK");
  result = getenv("MPS_MATMUL_TGSIZE");
  v4 = result;
  if (v0)
  {
    result = atoi(v0);
    word_27DF85708 = result;
  }

  if (v1)
  {
    result = atoi(v1);
    word_27DF8570A = result;
  }

  if (v2)
  {
    result = atoi(v2);
    LOWORD(dword_27DF8570C) = result;
  }

  if (v4)
  {
    result = atoi(v4);
    HIWORD(dword_27DF8570C) = result;
  }

  return result;
}

uint64_t sub_2399D5634(char *a1, const char *a2, char *a3, char *a4, char *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a6;
  v14 = *&a1[*MEMORY[0x277CD7370]];
  result = objc_msgSend_M(a1, a2, a3, a4, a5, a6, a7, a8);
  if (!result)
  {
    return result;
  }

  result = objc_msgSend_N(a1, v16, v17, v18, v19, v20, v21, v22);
  if (!result)
  {
    return result;
  }

  v346 = v8;
  v348 = v14;
  objc_msgSend_leftMatrixOrigin(a1, v23, v24, v25, v26, v27, v28, v29);
  v331 = objc_msgSend_dataType(a3, v30, v31, v32, v33, v34, v35, v36) >> 3;
  objc_msgSend_leftMatrixOrigin(a1, v37, v38, v39, v40, v41, v42, v43);
  v341 = v351;
  v338 = objc_msgSend_rowBytes(a3, v44, v45, v46, v47, v48, v49, v50);
  objc_msgSend_rightMatrixOrigin(a1, v51, v52, v53, v54, v55, v56, v57);
  v328 = objc_msgSend_dataType(a4, v58, v59, v60, v61, v62, v63, v64) >> 3;
  objc_msgSend_rightMatrixOrigin(a1, v65, v66, v67, v68, v69, v70, v71);
  v337 = v351;
  v336 = objc_msgSend_rowBytes(a4, v72, v73, v74, v75, v76, v77, v78);
  objc_msgSend_resultMatrixOrigin(a1, v79, v80, v81, v82, v83, v84, v85);
  v93 = objc_msgSend_dataType(a5, v86, v87, v88, v89, v90, v91, v92) >> 3;
  objc_msgSend_resultMatrixOrigin(a1, v94, v95, v96, v97, v98, v99, v100);
  v335 = v351;
  v334 = objc_msgSend_rowBytes(a5, v101, v102, v103, v104, v105, v106, v107);
  v108 = *MEMORY[0x277CD73A8];
  v109 = *&a4[v108];
  v343 = v109;
  v344 = *&a3[v108];
  v345 = *&a5[v108];
  v117 = objc_msgSend_transB(a1, v110, v111, v112, v113, v114, v115, v116);
  v125 = objc_msgSend_transA(a1, v118, v119, v120, v121, v122, v123, v124);
  v133 = objc_msgSend_N(a1, v126, v127, v128, v129, v130, v131, v132);
  v141 = objc_msgSend_M(a1, v134, v135, v136, v137, v138, v139, v140);
  v149 = objc_msgSend_K(a1, v142, v143, v144, v145, v146, v147, v148);
  v340 = a2;
  if (v117)
  {
    if (v125)
    {
      v150 = 61;
    }

    else
    {
      v150 = 60;
    }
  }

  else if (v125)
  {
    v150 = 59;
  }

  else
  {
    if (v133 >= 0x41 && v141 >= 0x21 && v149 > 0x40)
    {
      goto LABEL_17;
    }

    if (v141 & 3 | v133 & 0xF)
    {
      v150 = 63;
    }

    else
    {
      v150 = 64;
    }

    if ((v133 & 0xF) == 0)
    {
      goto LABEL_18;
    }

    if (v141 & 1 | v133 & 7)
    {
LABEL_17:
      v150 = 58;
    }

    else
    {
      v150 = 62;
    }
  }

LABEL_18:
  v151 = v354 * v331;
  v332 = v354 * v93;
  v333 = v354 * v328;
  ComputeState = MPSLibrary::GetComputeState();
  v329 = objc_msgSend_N(a1, v153, v154, v155, v156, v157, v158, v159);
  v353[0] = v329;
  v327 = objc_msgSend_M(a1, v160, v161, v162, v163, v164, v165, v166);
  v353[1] = v327;
  LODWORD(v354) = objc_msgSend_K(a1, v167, v168, v169, v170, v171, v172, v173);
  HIDWORD(v354) = v346;
  v355 = objc_msgSend_rowBytes(a4, v174, v175, v176, v177, v178, v179, v180);
  v356 = objc_msgSend_rowBytes(a3, v181, v182, v183, v184, v185, v186, v187);
  v357 = objc_msgSend_rowBytes(a5, v188, v189, v190, v191, v192, v193, v194);
  v358 = objc_msgSend_rowBytes(a5, v195, v196, v197, v198, v199, v200, v201);
  v359 = objc_msgSend_matrixBytes(a4, v202, v203, v204, v205, v206, v207, v208);
  v330 = a3;
  v360 = objc_msgSend_matrixBytes(a3, v209, v210, v211, v212, v213, v214, v215);
  v361 = objc_msgSend_matrixBytes(a5, v216, v217, v218, v219, v220, v221, v222);
  v362 = objc_msgSend_matrixBytes(a5, v223, v224, v225, v226, v227, v228, v229);
  objc_msgSend_alpha(a1, v230, v231, v232, v233, v234, v235, v236);
  *&v237 = v237;
  v363 = LODWORD(v237);
  objc_msgSend_beta(a1, v238, v239, v240, v241, v242, v243, v244);
  *&v245 = v245;
  v364 = LODWORD(v245);
  v365 = 0u;
  memset(v366, 0, sizeof(v366));
  v246 = *(v348 + 32);
  v351 = 0u;
  v352 = 0u;
  (*(*v246 + 24))(&v351);
  v247 = *(&v351 + 1);
  v248 = v351;
  v249 = ComputeState;
  v257 = objc_msgSend_maxTotalThreadsPerThreadgroup(ComputeState, v250, v251, v252, v253, v254, v255, v256);
  v264 = 8 * v247 * v248;
  if (v247 * v248 > v257 && v247 >= v257 / v248)
  {
    v247 = v257 / v248;
  }

  v265 = v151 + v338 * v341;
  v266 = v332 + v334 * v335;
  v267 = v257 / (v247 * v248);
  if (v267 >= 8)
  {
    v267 = 8;
  }

  if (v264 > v257)
  {
    v268 = v267;
  }

  else
  {
    v268 = 8;
  }

  v347 = (v268 + v346 - 1) / v268;
  if ((v150 & 0x7E) == 0x3C || (v150 & 0x7E) == 0x3A)
  {
    v342 = (v352 * v248 + v329 - 1) / (v352 * v248);
    v269 = (*(&v352 + 1) * v247 + v327 - 1) / (*(&v352 + 1) * v247);
  }

  else
  {
    v342 = 1;
    v269 = 1;
  }

  v339 = v269;
  objc_msgSend_setComputePipelineState_(v340, v258, v249, v259, v260, v261, v262, v263);
  v277 = objc_msgSend_data(a4, v270, v271, v272, v273, v274, v275, v276);
  objc_msgSend_setBuffer_offset_atIndex_(v340, v278, v277, v333 + v336 * v337 + v343, 0, v279, v280, v281);
  v289 = objc_msgSend_data(v330, v282, v283, v284, v285, v286, v287, v288);
  objc_msgSend_setBuffer_offset_atIndex_(v340, v290, v289, v265 + v344, 1, v291, v292, v293);
  v301 = objc_msgSend_data(a5, v294, v295, v296, v297, v298, v299, v300);
  objc_msgSend_setBuffer_offset_atIndex_(v340, v302, v301, v266 + v345, 2, v303, v304, v305);
  v313 = objc_msgSend_data(a5, v306, v307, v308, v309, v310, v311, v312);
  objc_msgSend_setBuffer_offset_atIndex_(v340, v314, v313, v266 + v345, 3, v315, v316, v317);
  objc_msgSend_setBytes_length_atIndex_(v340, v318, v353, 100, 4, v319, v320, v321);
  v350[0] = v342;
  v350[1] = v339;
  v350[2] = v347;
  v349[0] = v248;
  v349[1] = v247;
  v349[2] = v268;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v340, v322, v350, v349, v323, v324, v325, v326);
  return MPSLibrary::ReleaseComputeState();
}

uint64_t sub_2399D5B44(char *a1, const char *a2, uint64_t a3, char *a4, char *a5, char *a6, uint64_t a7, uint64_t a8)
{
  v15 = *&a1[*MEMORY[0x277CD7370]];
  result = objc_msgSend_M(a1, a2, a3, a4, a5, a6, a7, a8);
  if (!result)
  {
    return result;
  }

  result = objc_msgSend_N(a1, v17, v18, v19, v20, v21, v22, v23);
  if (!result)
  {
    return result;
  }

  v379 = a2;
  v380 = a3;
  v384 = v15;
  objc_msgSend_leftMatrixOrigin(a1, v24, v25, v26, v27, v28, v29, v30);
  v38 = v391 * (objc_msgSend_dataType(a4, v31, v32, v33, v34, v35, v36, v37) >> 3);
  objc_msgSend_leftMatrixOrigin(a1, v39, v40, v41, v42, v43, v44, v45);
  v382 = v38 + objc_msgSend_rowBytes(a4, v46, v47, v48, v49, v50, v51, v52) * v388;
  v374 = objc_msgSend_matrixBytes(a4, v53, v54, v55, v56, v57, v58, v59);
  objc_msgSend_rightMatrixOrigin(a1, v60, v61, v62, v63, v64, v65, v66);
  v74 = v391 * (objc_msgSend_dataType(a5, v67, v68, v69, v70, v71, v72, v73) >> 3);
  objc_msgSend_rightMatrixOrigin(a1, v75, v76, v77, v78, v79, v80, v81);
  v89 = v74 + objc_msgSend_rowBytes(a5, v82, v83, v84, v85, v86, v87, v88) * v388;
  v97 = objc_msgSend_matrixBytes(a5, v90, v91, v92, v93, v94, v95, v96);
  objc_msgSend_resultMatrixOrigin(a1, v98, v99, v100, v101, v102, v103, v104);
  v112 = v391 * (objc_msgSend_dataType(a6, v105, v106, v107, v108, v109, v110, v111) >> 3);
  objc_msgSend_resultMatrixOrigin(a1, v113, v114, v115, v116, v117, v118, v119);
  v127 = v112 + objc_msgSend_rowBytes(a6, v120, v121, v122, v123, v124, v125, v126) * v388;
  v135 = objc_msgSend_matrixBytes(a6, v128, v129, v130, v131, v132, v133, v134);
  v136 = *MEMORY[0x277CD73A8];
  v137 = *&a5[v136];
  v376 = v137;
  v377 = *&a4[v136];
  v378 = *&a6[v136];
  v145 = objc_msgSend_N(a1, v138, v139, v140, v141, v142, v143, v144);
  v381 = a4;
  if ((objc_msgSend_N(a1, v146, v147, v148, v149, v150, v151, v152) & 7) == 0 && (objc_msgSend_M(a1, v153, v154, v155, v156, v157, v158, v159) & 0x3F) == 0 && (objc_msgSend_K(a1, v153, v154, v155, v156, v157, v158, v159) & 0xF) == 0)
  {
    objc_msgSend_dataType(a4, v153, v154, v155, v156, v157, v158, v159);
    v168 = 1;
LABEL_11:
    v370 = v168;
    goto LABEL_13;
  }

  v160 = v145 & 3;
  if ((objc_msgSend_M(a1, v153, v154, v155, v156, v157, v158, v159) & 0xF) != 0 || objc_msgSend_K(a1, v161, v162, v163, v164, v165, v166, v167) & 3 | v160)
  {
    if (v160 > 1)
    {
      v370 = 0;
      goto LABEL_13;
    }

    v168 = 0;
    goto LABEL_11;
  }

  v370 = 0;
LABEL_13:
  v372 = v89 + v97 * a7;
  v373 = v382 + v374 * a7;
  v375 = v127 + v135 * a7;
  ComputeState = MPSLibrary::GetComputeState();
  v177 = objc_msgSend_N(a1, v170, v171, v172, v173, v174, v175, v176);
  v390[0] = v177;
  v185 = objc_msgSend_M(a1, v178, v179, v180, v181, v182, v183, v184);
  v390[1] = v185;
  v193 = objc_msgSend_K(a1, v186, v187, v188, v189, v190, v191, v192);
  LODWORD(v391) = v193;
  HIDWORD(v391) = objc_msgSend_rowBytes(a5, v194, v195, v196, v197, v198, v199, v200);
  v392 = objc_msgSend_rowBytes(v381, v201, v202, v203, v204, v205, v206, v207);
  v393 = objc_msgSend_rowBytes(a6, v208, v209, v210, v211, v212, v213, v214);
  v394 = objc_msgSend_rowBytes(a6, v215, v216, v217, v218, v219, v220, v221);
  objc_msgSend_alpha(a1, v222, v223, v224, v225, v226, v227, v228);
  *&v229 = v229;
  v395 = LODWORD(v229);
  objc_msgSend_beta(a1, v230, v231, v232, v233, v234, v235, v236);
  *&v237 = v237;
  v396 = LODWORD(v237);
  v238 = *(v384 + 32);
  v388 = 0u;
  v389 = 0u;
  (*(*v238 + 24))(&v388);
  v239 = *(&v388 + 1);
  v240 = v388;
  v383 = ComputeState;
  v248 = objc_msgSend_maxTotalThreadsPerThreadgroup(ComputeState, v241, v242, v243, v244, v245, v246, v247);
  v256 = v239 * v240;
  v257 = v248 / v240;
  if (v239 < v248 / v240)
  {
    v257 = v239;
  }

  if (v256 > v248)
  {
    v258 = v257;
  }

  else
  {
    v258 = v239;
  }

  v259 = v256 <= v248 || v257 * v240 <= v248;
  if (v370)
  {
    v240 *= 2;
  }

  else
  {
    v260 = objc_msgSend_M(a1, v249, v250, v251, v252, v253, v254, v255);
    if (v258 == 2 && v260 < 9)
    {
      v258 = 1;
    }
  }

  v371 = (v388 * v389 + v177 - 1) / (v388 * v389);
  objc_msgSend_setComputePipelineState_(v379, v249, v383, v251, v252, v253, v254, v255, (*(&v388 + 1) * *(&v389 + 1) + v185 - 1) / (*(&v388 + 1) * *(&v389 + 1)));
  if (objc_msgSend_dataType(a5, v262, v263, v264, v265, v266, v267, v268) == 268435488)
  {
    v272 = objc_msgSend_texture2DDescriptorWithPixelFormat_width_height_mipmapped_(MEMORY[0x277CD7058], v269, 125, (v177 + 3) >> 2, v193, 0, v270, v271);
  }

  else
  {
    v272 = objc_msgSend_texture2DDescriptorWithPixelFormat_width_height_mipmapped_(MEMORY[0x277CD7058], v269, 115, (v177 + 3) >> 2, v193, 0, v270, v271);
  }

  v280 = v272;
  v281 = objc_msgSend_data(a5, v273, v274, v275, v276, v277, v278, v279);
  v289 = objc_msgSend_resourceOptions(v281, v282, v283, v284, v285, v286, v287, v288);
  objc_msgSend_setResourceOptions_(v280, v290, v289, v291, v292, v293, v294, v295);
  v303 = objc_msgSend_data(a5, v296, v297, v298, v299, v300, v301, v302);
  v311 = objc_msgSend_rowBytes(a5, v304, v305, v306, v307, v308, v309, v310);
  v316 = objc_msgSend_newTextureWithDescriptor_offset_bytesPerRow_(v303, v312, v280, v372 + v376, v311, v313, v314, v315);
  objc_msgSend_setTexture_atIndex_(v379, v317, v316, 0, v318, v319, v320, v321);
  v329 = objc_msgSend_data(v381, v322, v323, v324, v325, v326, v327, v328);
  objc_msgSend_setBuffer_offset_atIndex_(v379, v330, v329, v373 + v377, 0, v331, v332, v333);
  v341 = objc_msgSend_data(a6, v334, v335, v336, v337, v338, v339, v340);
  objc_msgSend_setBuffer_offset_atIndex_(v379, v342, v341, v375 + v378, 1, v343, v344, v345);
  objc_msgSend_setBytes_length_atIndex_(v379, v346, v390, 36, 2, v347, v348, v349);
  v387[0] = v371;
  v387[1] = v369;
  v387[2] = 1;
  v386[0] = v240;
  v386[1] = v258;
  v386[2] = v259;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v379, v350, v387, v386, v351, v352, v353, v354);
  if ((objc_msgSend_retainedReferences(v380, v355, v356, v357, v358, v359, v360, v361) & 1) == 0)
  {
    v362 = v316;
    v385[0] = MEMORY[0x277D85DD0];
    v385[1] = 3221225472;
    v385[2] = sub_2399D749C;
    v385[3] = &unk_278AFD238;
    v385[4] = v316;
    objc_msgSend_addCompletedHandler_(v380, v363, v385, v364, v365, v366, v367, v368);
  }

  return MPSLibrary::ReleaseComputeState();
}

uint64_t sub_2399D60DC(char *a1, char *a2, char *a3, char *a4, char *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = *&a1[*MEMORY[0x277CD7370]];
  result = objc_msgSend_M(a1, a2, a3, a4, a5, a6, a7, a8);
  if (result)
  {
    result = objc_msgSend_N(a1, v16, v17, v18, v19, v20, v21, v22);
    if (result)
    {
      objc_msgSend_leftMatrixOrigin(a1, v23, v24, v25, v26, v27, v28, v29);
      v37 = v479 * (objc_msgSend_dataType(a3, v30, v31, v32, v33, v34, v35, v36) >> 3);
      objc_msgSend_leftMatrixOrigin(a1, v38, v39, v40, v41, v42, v43, v44);
      v52 = v37 + objc_msgSend_rowBytes(a3, v45, v46, v47, v48, v49, v50, v51) * v485;
      v472 = v52 + objc_msgSend_matrixBytes(a3, v53, v54, v55, v56, v57, v58, v59) * a6;
      objc_msgSend_rightMatrixOrigin(a1, v60, v61, v62, v63, v64, v65, v66);
      v74 = v479 * (objc_msgSend_dataType(a4, v67, v68, v69, v70, v71, v72, v73) >> 3);
      objc_msgSend_rightMatrixOrigin(a1, v75, v76, v77, v78, v79, v80, v81);
      v89 = v74 + objc_msgSend_rowBytes(a4, v82, v83, v84, v85, v86, v87, v88) * v485;
      v470 = v89 + objc_msgSend_matrixBytes(a4, v90, v91, v92, v93, v94, v95, v96) * a6;
      objc_msgSend_resultMatrixOrigin(a1, v97, v98, v99, v100, v101, v102, v103);
      v111 = v479 * (objc_msgSend_dataType(a5, v104, v105, v106, v107, v108, v109, v110) >> 3);
      objc_msgSend_resultMatrixOrigin(a1, v112, v113, v114, v115, v116, v117, v118);
      v126 = v111 + objc_msgSend_rowBytes(a5, v119, v120, v121, v122, v123, v124, v125) * v485;
      v134 = v126 + objc_msgSend_matrixBytes(a5, v127, v128, v129, v130, v131, v132, v133) * a6;
      v135 = *MEMORY[0x277CD73A8];
      v471 = *&a3[v135];
      v469 = *&a4[v135];
      v473 = *&a5[v135];
      v477 = objc_msgSend_N(a1, v136, v137, v138, v139, v140, v141, v142);
      v478 = objc_msgSend_M(a1, v143, v144, v145, v146, v147, v148, v149);
      LODWORD(v479) = objc_msgSend_K(a1, v150, v151, v152, v153, v154, v155, v156);
      HIDWORD(v479) = objc_msgSend_rowBytes(a4, v157, v158, v159, v160, v161, v162, v163);
      v480 = objc_msgSend_rowBytes(a3, v164, v165, v166, v167, v168, v169, v170);
      v481 = objc_msgSend_rowBytes(a5, v171, v172, v173, v174, v175, v176, v177);
      v482 = objc_msgSend_rowBytes(a5, v178, v179, v180, v181, v182, v183, v184);
      objc_msgSend_alpha(a1, v185, v186, v187, v188, v189, v190, v191);
      *&v192 = v192;
      v483 = LODWORD(v192);
      objc_msgSend_beta(a1, v193, v194, v195, v196, v197, v198, v199);
      *&v200 = v200;
      v484 = LODWORD(v200);
      v208 = objc_msgSend_transA(a1, v201, v202, v203, v204, v205, v206, v207);
      v216 = objc_msgSend_transB(a1, v209, v210, v211, v212, v213, v214, v215);
      if (v208)
      {
        if ((v216 & 1) == 0)
        {
          ComputeState = MPSLibrary::GetComputeState();
          v249 = objc_msgSend_maxTotalThreadsPerThreadgroup(ComputeState, v242, v243, v244, v245, v246, v247, v248);
          if (v249 <= 0xFF)
          {
            v239 = v249 >> 6;
          }

          else
          {
            v239 = 4;
          }

          v240 = (v477 + 127) >> 7;
          v241 = (v478 + 4 * v239 - 1) / (4 * v239);
          goto LABEL_15;
        }
      }

      else if ((v216 & 1) == 0)
      {
        if (objc_msgSend_M(a1, v217, v218, v219, v220, v221, v222, v223) > 8 || (objc_msgSend_N(a1, v307, v308, v309, v310, v311, v312, v313) & 0x1F) != 0)
        {
          v314 = objc_msgSend_M(a1, v307, v308, v309, v310, v311, v312, v313);
          if (v314)
          {
            v315 = 57;
          }

          else
          {
            v315 = 56;
          }

          if ((v314 & 0xF) != 0)
          {
            v316 = v315;
          }

          else
          {
            v316 = 44;
          }

          v317 = MPSLibrary::GetComputeState();
          v318 = (&unk_2399EC768 + 32 * v316);
          v319 = *v318;
          v320 = v318[1];
          v321 = v134;
          v322 = v318[2];
          v323 = v318[3];
          v331 = objc_msgSend_maxTotalThreadsPerThreadgroup(v317, v324, v325, v326, v327, v328, v329, v330);
          v338 = v320 * v319;
          v339 = v331 / v319;
          if (v320 < v331 / v319)
          {
            v339 = v320;
          }

          v340 = v338 > v331;
          if (v338 > v331)
          {
            v320 = v339;
          }

          v341 = 1;
          if (v340)
          {
            v341 = v339 * v319 <= v331;
          }

          v342 = (v322 * v319 + v477 - 1) / (v322 * v319);
          v343 = (v320 * v323 + v478 - 1) / (v320 * v323);
          objc_msgSend_setComputePipelineState_(a2, v332, v317, v333, v334, v335, v336, v337, v341);
          v351 = objc_msgSend_data(a4, v344, v345, v346, v347, v348, v349, v350);
          objc_msgSend_setBuffer_offset_atIndex_(a2, v352, v351, v470 + v469, 0, v353, v354, v355);
          v363 = objc_msgSend_data(a3, v356, v357, v358, v359, v360, v361, v362);
          objc_msgSend_setBuffer_offset_atIndex_(a2, v364, v363, v472 + v471, 1, v365, v366, v367);
          v375 = objc_msgSend_data(a5, v368, v369, v370, v371, v372, v373, v374);
          objc_msgSend_setBuffer_offset_atIndex_(a2, v376, v375, v321 + v473, 2, v377, v378, v379);
          v387 = objc_msgSend_data(a5, v380, v381, v382, v383, v384, v385, v386);
          objc_msgSend_setBuffer_offset_atIndex_(a2, v388, v387, v321 + v473, 3, v389, v390, v391);
          objc_msgSend_setBytes_length_atIndex_(a2, v392, &v477, 36, 4, v393, v394, v395);
          v485 = v342;
          v486.i64[0] = v343;
          v486.i64[1] = 1;
          v474 = v319;
          v475 = v320;
          v396 = v467;
        }

        else
        {
          v397 = objc_msgSend_M(a1, v307, v308, v309, v310, v311, v312, v313) + 47;
          v398 = MPSLibrary::GetComputeState();
          v399 = (&unk_2399EC768 + 32 * v397);
          v400 = *v399;
          v401 = v399[1];
          v402 = v399[2];
          v410 = objc_msgSend_maxTotalThreadsPerThreadgroup(v398, v403, v404, v405, v406, v407, v408, v409);
          v417 = v401 * v400;
          v418 = v410 / v400;
          if (v401 < v410 / v400)
          {
            v418 = v401;
          }

          v419 = v417 > v410;
          if (v417 > v410)
          {
            v401 = v418;
          }

          v420 = 1;
          if (v419)
          {
            v420 = v418 * v400 <= v410;
          }

          v468 = v420;
          v421 = (v402 * v400 + v477 - 1) / (v402 * v400);
          objc_msgSend_setComputePipelineState_(a2, v411, v398, v412, v413, v414, v415, v416);
          v429 = objc_msgSend_data(a4, v422, v423, v424, v425, v426, v427, v428);
          objc_msgSend_setBuffer_offset_atIndex_(a2, v430, v429, v470 + v469, 0, v431, v432, v433);
          v441 = objc_msgSend_data(a3, v434, v435, v436, v437, v438, v439, v440);
          objc_msgSend_setBuffer_offset_atIndex_(a2, v442, v441, v472 + v471, 1, v443, v444, v445);
          v453 = objc_msgSend_data(a5, v446, v447, v448, v449, v450, v451, v452);
          objc_msgSend_setBuffer_offset_atIndex_(a2, v454, v453, v134 + v473, 2, v455, v456, v457);
          objc_msgSend_setBytes_length_atIndex_(a2, v458, &v477, 36, 3, v459, v460, v461);
          objc_msgSend_setThreadgroupMemoryLength_atIndex_(a2, v462, 768, 0, v463, v464, v465, v466);
          v485 = v421;
          v486 = vdupq_n_s64(1uLL);
          v474 = v400;
          v475 = v401;
          v396 = v468;
        }

        v476 = v396;
        goto LABEL_33;
      }

      ComputeState = MPSLibrary::GetComputeState();
      v232 = objc_msgSend_maxTotalThreadsPerThreadgroup(ComputeState, v225, v226, v227, v228, v229, v230, v231);
      if (v232 <= 0xFF)
      {
        v239 = v232 >> 6;
      }

      else
      {
        v239 = 4;
      }

      v240 = (v477 + 63) >> 6;
      v241 = (v239 + v478 - 1) / v239;
LABEL_15:
      objc_msgSend_setComputePipelineState_(a2, v233, ComputeState, v234, v235, v236, v237, v238);
      v257 = objc_msgSend_data(a4, v250, v251, v252, v253, v254, v255, v256);
      objc_msgSend_setBuffer_offset_atIndex_(a2, v258, v257, v470 + v469, 0, v259, v260, v261);
      v269 = objc_msgSend_data(a3, v262, v263, v264, v265, v266, v267, v268);
      objc_msgSend_setBuffer_offset_atIndex_(a2, v270, v269, v472 + v471, 1, v271, v272, v273);
      v281 = objc_msgSend_data(a5, v274, v275, v276, v277, v278, v279, v280);
      objc_msgSend_setBuffer_offset_atIndex_(a2, v282, v281, v134 + v473, 2, v283, v284, v285);
      v293 = objc_msgSend_data(a5, v286, v287, v288, v289, v290, v291, v292);
      objc_msgSend_setBuffer_offset_atIndex_(a2, v294, v293, v134 + v473, 3, v295, v296, v297);
      objc_msgSend_setBytes_length_atIndex_(a2, v298, &v477, 36, 4, v299, v300, v301);
      v485 = v240;
      v486.i64[0] = v241;
      v486.i64[1] = 1;
      v474 = 64;
      v475 = v239;
      v476 = 1;
LABEL_33:
      objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v302, &v485, &v474, v303, v304, v305, v306);
      return MPSLibrary::ReleaseComputeState();
    }
  }

  return result;
}

uint64_t sub_2399D6754(char *a1, char *a2, char *a3, char *a4, char *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = *&a1[*MEMORY[0x277CD7370]];
  result = objc_msgSend_M(a1, a2, a3, a4, a5, a6, a7, a8);
  if (!result)
  {
    return result;
  }

  result = objc_msgSend_N(a1, v16, v17, v18, v19, v20, v21, v22);
  if (!result)
  {
    return result;
  }

  objc_msgSend_leftMatrixOrigin(a1, v23, v24, v25, v26, v27, v28, v29);
  v37 = v332 * (objc_msgSend_dataType(a3, v30, v31, v32, v33, v34, v35, v36) >> 3);
  objc_msgSend_leftMatrixOrigin(a1, v38, v39, v40, v41, v42, v43, v44);
  v52 = v37 + objc_msgSend_rowBytes(a3, v45, v46, v47, v48, v49, v50, v51) * v329;
  v326 = v52 + objc_msgSend_matrixBytes(a3, v53, v54, v55, v56, v57, v58, v59) * a6;
  objc_msgSend_rightMatrixOrigin(a1, v60, v61, v62, v63, v64, v65, v66);
  v74 = v332 * (objc_msgSend_dataType(a4, v67, v68, v69, v70, v71, v72, v73) >> 3);
  objc_msgSend_rightMatrixOrigin(a1, v75, v76, v77, v78, v79, v80, v81);
  v89 = v74 + objc_msgSend_rowBytes(a4, v82, v83, v84, v85, v86, v87, v88) * v329;
  v323 = v89 + objc_msgSend_matrixBytes(a4, v90, v91, v92, v93, v94, v95, v96) * a6;
  objc_msgSend_resultMatrixOrigin(a1, v97, v98, v99, v100, v101, v102, v103);
  v111 = v332 * (objc_msgSend_dataType(a5, v104, v105, v106, v107, v108, v109, v110) >> 3);
  objc_msgSend_resultMatrixOrigin(a1, v112, v113, v114, v115, v116, v117, v118);
  v126 = v111 + objc_msgSend_rowBytes(a5, v119, v120, v121, v122, v123, v124, v125) * v329;
  v325 = v126 + objc_msgSend_matrixBytes(a5, v127, v128, v129, v130, v131, v132, v133) * a6;
  v134 = *MEMORY[0x277CD73A8];
  v135 = *&a4[v134];
  v321 = v135;
  v322 = *&a3[v134];
  v324 = *&a5[v134];
  objc_msgSend_rowBytes(a3, v136, v137, v138, v139, v140, v141, v142);
  objc_msgSend_rowBytes(a4, v143, v144, v145, v146, v147, v148, v149);
  objc_msgSend_transB(a1, v150, v151, v152, v153, v154, v155, v156);
  objc_msgSend_transA(a1, v157, v158, v159, v160, v161, v162, v163);
  ComputeState = MPSLibrary::GetComputeState();
  v172 = objc_msgSend_N(a1, v165, v166, v167, v168, v169, v170, v171);
  v331[0] = v172;
  v180 = v14;
  v181 = objc_msgSend_M(a1, v173, v174, v175, v176, v177, v178, v179);
  v331[1] = v181;
  LODWORD(v332) = objc_msgSend_K(a1, v182, v183, v184, v185, v186, v187, v188);
  HIDWORD(v332) = objc_msgSend_rowBytes(a4, v189, v190, v191, v192, v193, v194, v195);
  v333 = objc_msgSend_rowBytes(a3, v196, v197, v198, v199, v200, v201, v202);
  v334 = objc_msgSend_rowBytes(a5, v203, v204, v205, v206, v207, v208, v209);
  v335 = objc_msgSend_rowBytes(a5, v210, v211, v212, v213, v214, v215, v216);
  objc_msgSend_alpha(a1, v217, v218, v219, v220, v221, v222, v223);
  *&v224 = v224;
  v336 = LODWORD(v224);
  objc_msgSend_beta(a1, v225, v226, v227, v228, v229, v230, v231);
  *&v232 = v232;
  v337 = LODWORD(v232);
  v233 = *(v180 + 32);
  v329 = 0u;
  v330 = 0u;
  (*(*v233 + 24))(&v329);
  v241 = objc_msgSend_threadExecutionWidth(ComputeState, v234, v235, v236, v237, v238, v239, v240);
  if (v172 > 32 * v181)
  {
    v249 = *(&v329 + 1);
    v250 = v329;
    if (*(&v329 + 1) * v329 < 2 * (v241 & 0x7FFFFFFF))
    {
      v250 = 2 * v329;
LABEL_12:
      *&v329 = v250;
      goto LABEL_13;
    }

    v249 = *(&v329 + 1) >> 1;
LABEL_10:
    *(&v329 + 1) = v249;
    goto LABEL_13;
  }

  v249 = *(&v329 + 1);
  v250 = v329;
  if (v181 > 32 * v172)
  {
    if (*(&v329 + 1) * v329 >= 2 * (v241 & 0x7FFFFFFF))
    {
      v250 = v329 >> 1;
      goto LABEL_12;
    }

    v249 = 2 * *(&v329 + 1);
    goto LABEL_10;
  }

LABEL_13:
  v251 = objc_msgSend_maxTotalThreadsPerThreadgroup(ComputeState, v242, v243, v244, v245, v246, v247, v248);
  v258 = v250 * v249;
  v259 = v251 / v250;
  if (v249 < v251 / v250)
  {
    v259 = v249;
  }

  if (v258 > v251)
  {
    v260 = v259;
  }

  else
  {
    v260 = v249;
  }

  v261 = v258 <= v251 || v259 * v250 <= v251;
  v262 = (v330 * v250 + v172 - 1) / (v330 * v250);
  v263 = (*(&v330 + 1) * v260 + v181 - 1) / (*(&v330 + 1) * v260);
  objc_msgSend_setComputePipelineState_(a2, v252, ComputeState, v253, v254, v255, v256, v257);
  v271 = objc_msgSend_data(a4, v264, v265, v266, v267, v268, v269, v270);
  objc_msgSend_setBuffer_offset_atIndex_(a2, v272, v271, v323 + v321, 0, v273, v274, v275);
  v283 = objc_msgSend_data(a3, v276, v277, v278, v279, v280, v281, v282);
  objc_msgSend_setBuffer_offset_atIndex_(a2, v284, v283, v326 + v322, 1, v285, v286, v287);
  v295 = objc_msgSend_data(a5, v288, v289, v290, v291, v292, v293, v294);
  objc_msgSend_setBuffer_offset_atIndex_(a2, v296, v295, v325 + v324, 2, v297, v298, v299);
  v307 = objc_msgSend_data(a5, v300, v301, v302, v303, v304, v305, v306);
  objc_msgSend_setBuffer_offset_atIndex_(a2, v308, v307, v325 + v324, 3, v309, v310, v311);
  objc_msgSend_setBytes_length_atIndex_(a2, v312, v331, 36, 4, v313, v314, v315);
  v328[0] = v262;
  v328[1] = v263;
  v328[2] = 1;
  v327[0] = v250;
  v327[1] = v260;
  v327[2] = v261;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v316, v328, v327, v317, v318, v319, v320);
  return MPSLibrary::ReleaseComputeState();
}

uint64_t sub_2399D6B84(char *a1, char *a2, char *a3, char *a4, char *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = *&a1[*MEMORY[0x277CD7370]];
  result = objc_msgSend_M(a1, a2, a3, a4, a5, a6, a7, a8);
  if (!result)
  {
    return result;
  }

  result = objc_msgSend_N(a1, v16, v17, v18, v19, v20, v21, v22);
  if (!result)
  {
    return result;
  }

  v327 = v14;
  objc_msgSend_leftMatrixOrigin(a1, v23, v24, v25, v26, v27, v28, v29);
  v37 = v333 * (objc_msgSend_dataType(a3, v30, v31, v32, v33, v34, v35, v36) >> 3);
  objc_msgSend_leftMatrixOrigin(a1, v38, v39, v40, v41, v42, v43, v44);
  v52 = v37 + objc_msgSend_rowBytes(a3, v45, v46, v47, v48, v49, v50, v51) * v330;
  v60 = v52 + objc_msgSend_matrixBytes(a3, v53, v54, v55, v56, v57, v58, v59) * a6;
  objc_msgSend_rightMatrixOrigin(a1, v61, v62, v63, v64, v65, v66, v67);
  v75 = v333 * (objc_msgSend_dataType(a4, v68, v69, v70, v71, v72, v73, v74) >> 3);
  objc_msgSend_rightMatrixOrigin(a1, v76, v77, v78, v79, v80, v81, v82);
  v90 = v75 + objc_msgSend_rowBytes(a4, v83, v84, v85, v86, v87, v88, v89) * v330;
  v98 = v90 + objc_msgSend_matrixBytes(a4, v91, v92, v93, v94, v95, v96, v97) * a6;
  objc_msgSend_resultMatrixOrigin(a1, v99, v100, v101, v102, v103, v104, v105);
  v113 = v333 * (objc_msgSend_dataType(a5, v106, v107, v108, v109, v110, v111, v112) >> 3);
  objc_msgSend_resultMatrixOrigin(a1, v114, v115, v116, v117, v118, v119, v120);
  v128 = v113 + objc_msgSend_rowBytes(a5, v121, v122, v123, v124, v125, v126, v127) * v330;
  v136 = objc_msgSend_matrixBytes(a5, v129, v130, v131, v132, v133, v134, v135);
  v137 = *MEMORY[0x277CD73A8];
  v138 = v98 + *&a4[v137];
  v326 = *&a5[v137];
  v325 = v60 + *&a3[v137];
  objc_msgSend_rowBytes(a3, v139, v140, v141, v142, v143, v144, v145);
  objc_msgSend_rowBytes(a4, v146, v147, v148, v149, v150, v151, v152);
  v324 = v138;
  objc_msgSend_transB(a1, v153, v154, v155, v156, v157, v158, v159);
  objc_msgSend_transA(a1, v160, v161, v162, v163, v164, v165, v166);
  v323 = v128 + v136 * a6;
  ComputeState = MPSLibrary::GetComputeState();
  v175 = objc_msgSend_N(a1, v168, v169, v170, v171, v172, v173, v174);
  v332[0] = v175;
  v183 = objc_msgSend_M(a1, v176, v177, v178, v179, v180, v181, v182);
  v332[1] = v183;
  LODWORD(v333) = objc_msgSend_K(a1, v184, v185, v186, v187, v188, v189, v190);
  HIDWORD(v333) = objc_msgSend_rowBytes(a4, v191, v192, v193, v194, v195, v196, v197);
  v334 = objc_msgSend_rowBytes(a3, v198, v199, v200, v201, v202, v203, v204);
  v335 = objc_msgSend_rowBytes(a5, v205, v206, v207, v208, v209, v210, v211);
  v336 = objc_msgSend_rowBytes(a5, v212, v213, v214, v215, v216, v217, v218);
  objc_msgSend_alpha(a1, v219, v220, v221, v222, v223, v224, v225);
  *&v226 = v226;
  v337 = LODWORD(v226);
  objc_msgSend_beta(a1, v227, v228, v229, v230, v231, v232, v233);
  *&v234 = v234;
  v338 = LODWORD(v234);
  v235 = *(v327 + 32);
  v330 = 0u;
  v331 = 0u;
  (*(*v235 + 24))(&v330);
  v243 = objc_msgSend_threadExecutionWidth(ComputeState, v236, v237, v238, v239, v240, v241, v242);
  if (v175 > 32 * v183)
  {
    v251 = *(&v330 + 1);
    v252 = v330;
    if (*(&v330 + 1) * v330 < 2 * (v243 & 0x7FFFFFFF))
    {
      v252 = 2 * v330;
LABEL_12:
      *&v330 = v252;
      goto LABEL_13;
    }

    v251 = *(&v330 + 1) >> 1;
LABEL_10:
    *(&v330 + 1) = v251;
    goto LABEL_13;
  }

  v251 = *(&v330 + 1);
  v252 = v330;
  if (v183 > 32 * v175)
  {
    if (*(&v330 + 1) * v330 >= 2 * (v243 & 0x7FFFFFFF))
    {
      v252 = v330 >> 1;
      goto LABEL_12;
    }

    v251 = 2 * *(&v330 + 1);
    goto LABEL_10;
  }

LABEL_13:
  v253 = objc_msgSend_maxTotalThreadsPerThreadgroup(ComputeState, v244, v245, v246, v247, v248, v249, v250);
  v260 = v252 * v251;
  v261 = v253 / v252;
  if (v251 < v253 / v252)
  {
    v261 = v251;
  }

  if (v260 > v253)
  {
    v262 = v261;
  }

  else
  {
    v262 = v251;
  }

  v263 = v260 <= v253 || v261 * v252 <= v253;
  v264 = (v331 * v252 + v175 - 1) / (v331 * v252);
  v265 = (*(&v331 + 1) * v262 + v183 - 1) / (*(&v331 + 1) * v262);
  objc_msgSend_setComputePipelineState_(a2, v254, ComputeState, v255, v256, v257, v258, v259);
  v273 = objc_msgSend_data(a4, v266, v267, v268, v269, v270, v271, v272);
  objc_msgSend_setBuffer_offset_atIndex_(a2, v274, v273, v324, 0, v275, v276, v277);
  v285 = objc_msgSend_data(a3, v278, v279, v280, v281, v282, v283, v284);
  objc_msgSend_setBuffer_offset_atIndex_(a2, v286, v285, v325, 1, v287, v288, v289);
  v297 = objc_msgSend_data(a5, v290, v291, v292, v293, v294, v295, v296);
  objc_msgSend_setBuffer_offset_atIndex_(a2, v298, v297, v323 + v326, 2, v299, v300, v301);
  v309 = objc_msgSend_data(a5, v302, v303, v304, v305, v306, v307, v308);
  objc_msgSend_setBuffer_offset_atIndex_(a2, v310, v309, v323 + v326, 3, v311, v312, v313);
  objc_msgSend_setBytes_length_atIndex_(a2, v314, v332, 36, 4, v315, v316, v317);
  v329[0] = v264;
  v329[1] = v265;
  v329[2] = 1;
  v328[0] = v252;
  v328[1] = v262;
  v328[2] = v263;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v318, v329, v328, v319, v320, v321, v322);
  return MPSLibrary::ReleaseComputeState();
}

uint64_t sub_2399D6FF8(char *a1, char *a2, char *a3, char *a4, char *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = *&a1[*MEMORY[0x277CD7370]];
  result = objc_msgSend_M(a1, a2, a3, a4, a5, a6, a7, a8);
  if (!result)
  {
    return result;
  }

  result = objc_msgSend_N(a1, v16, v17, v18, v19, v20, v21, v22);
  if (!result)
  {
    return result;
  }

  v327 = v14;
  objc_msgSend_leftMatrixOrigin(a1, v23, v24, v25, v26, v27, v28, v29);
  v37 = v333 * (objc_msgSend_dataType(a3, v30, v31, v32, v33, v34, v35, v36) >> 3);
  objc_msgSend_leftMatrixOrigin(a1, v38, v39, v40, v41, v42, v43, v44);
  v52 = v37 + objc_msgSend_rowBytes(a3, v45, v46, v47, v48, v49, v50, v51) * v330;
  v60 = v52 + objc_msgSend_matrixBytes(a3, v53, v54, v55, v56, v57, v58, v59) * a6;
  objc_msgSend_rightMatrixOrigin(a1, v61, v62, v63, v64, v65, v66, v67);
  v75 = v333 * (objc_msgSend_dataType(a4, v68, v69, v70, v71, v72, v73, v74) >> 3);
  objc_msgSend_rightMatrixOrigin(a1, v76, v77, v78, v79, v80, v81, v82);
  v90 = v75 + objc_msgSend_rowBytes(a4, v83, v84, v85, v86, v87, v88, v89) * v330;
  v98 = v90 + objc_msgSend_matrixBytes(a4, v91, v92, v93, v94, v95, v96, v97) * a6;
  objc_msgSend_resultMatrixOrigin(a1, v99, v100, v101, v102, v103, v104, v105);
  v113 = v333 * (objc_msgSend_dataType(a5, v106, v107, v108, v109, v110, v111, v112) >> 3);
  objc_msgSend_resultMatrixOrigin(a1, v114, v115, v116, v117, v118, v119, v120);
  v128 = v113 + objc_msgSend_rowBytes(a5, v121, v122, v123, v124, v125, v126, v127) * v330;
  v136 = objc_msgSend_matrixBytes(a5, v129, v130, v131, v132, v133, v134, v135);
  v137 = *MEMORY[0x277CD73A8];
  v138 = v98 + *&a4[v137];
  v326 = *&a5[v137];
  v325 = v60 + *&a3[v137];
  objc_msgSend_rowBytes(a3, v139, v140, v141, v142, v143, v144, v145);
  objc_msgSend_rowBytes(a4, v146, v147, v148, v149, v150, v151, v152);
  v324 = v138;
  objc_msgSend_transB(a1, v153, v154, v155, v156, v157, v158, v159);
  objc_msgSend_transA(a1, v160, v161, v162, v163, v164, v165, v166);
  v323 = v128 + v136 * a6;
  ComputeState = MPSLibrary::GetComputeState();
  v175 = objc_msgSend_N(a1, v168, v169, v170, v171, v172, v173, v174);
  v332[0] = v175;
  v183 = objc_msgSend_M(a1, v176, v177, v178, v179, v180, v181, v182);
  v332[1] = v183;
  LODWORD(v333) = objc_msgSend_K(a1, v184, v185, v186, v187, v188, v189, v190);
  HIDWORD(v333) = objc_msgSend_rowBytes(a4, v191, v192, v193, v194, v195, v196, v197);
  v334 = objc_msgSend_rowBytes(a3, v198, v199, v200, v201, v202, v203, v204);
  v335 = objc_msgSend_rowBytes(a5, v205, v206, v207, v208, v209, v210, v211);
  v336 = objc_msgSend_rowBytes(a5, v212, v213, v214, v215, v216, v217, v218);
  objc_msgSend_alpha(a1, v219, v220, v221, v222, v223, v224, v225);
  *&v226 = v226;
  v337 = LODWORD(v226);
  objc_msgSend_beta(a1, v227, v228, v229, v230, v231, v232, v233);
  *&v234 = v234;
  v338 = LODWORD(v234);
  v235 = *(v327 + 32);
  v330 = 0u;
  v331 = 0u;
  (*(*v235 + 24))(&v330);
  v243 = objc_msgSend_threadExecutionWidth(ComputeState, v236, v237, v238, v239, v240, v241, v242);
  if (v175 > 32 * v183)
  {
    v251 = *(&v330 + 1);
    v252 = v330;
    if (*(&v330 + 1) * v330 < 2 * (v243 & 0x7FFFFFFF))
    {
      v252 = 2 * v330;
LABEL_12:
      *&v330 = v252;
      goto LABEL_13;
    }

    v251 = *(&v330 + 1) >> 1;
LABEL_10:
    *(&v330 + 1) = v251;
    goto LABEL_13;
  }

  v251 = *(&v330 + 1);
  v252 = v330;
  if (v183 > 32 * v175)
  {
    if (*(&v330 + 1) * v330 >= 2 * (v243 & 0x7FFFFFFF))
    {
      v252 = v330 >> 1;
      goto LABEL_12;
    }

    v251 = 2 * *(&v330 + 1);
    goto LABEL_10;
  }

LABEL_13:
  v253 = objc_msgSend_maxTotalThreadsPerThreadgroup(ComputeState, v244, v245, v246, v247, v248, v249, v250);
  v260 = v252 * v251;
  v261 = v253 / v252;
  if (v251 < v253 / v252)
  {
    v261 = v251;
  }

  if (v260 > v253)
  {
    v262 = v261;
  }

  else
  {
    v262 = v251;
  }

  v263 = v260 <= v253 || v261 * v252 <= v253;
  v264 = (v331 * v252 + v175 - 1) / (v331 * v252);
  v265 = (*(&v331 + 1) * v262 + v183 - 1) / (*(&v331 + 1) * v262);
  objc_msgSend_setComputePipelineState_(a2, v254, ComputeState, v255, v256, v257, v258, v259);
  v273 = objc_msgSend_data(a4, v266, v267, v268, v269, v270, v271, v272);
  objc_msgSend_setBuffer_offset_atIndex_(a2, v274, v273, v324, 0, v275, v276, v277);
  v285 = objc_msgSend_data(a3, v278, v279, v280, v281, v282, v283, v284);
  objc_msgSend_setBuffer_offset_atIndex_(a2, v286, v285, v325, 1, v287, v288, v289);
  v297 = objc_msgSend_data(a5, v290, v291, v292, v293, v294, v295, v296);
  objc_msgSend_setBuffer_offset_atIndex_(a2, v298, v297, v323 + v326, 2, v299, v300, v301);
  v309 = objc_msgSend_data(a5, v302, v303, v304, v305, v306, v307, v308);
  objc_msgSend_setBuffer_offset_atIndex_(a2, v310, v309, v323 + v326, 3, v311, v312, v313);
  objc_msgSend_setBytes_length_atIndex_(a2, v314, v332, 36, 4, v315, v316, v317);
  v329[0] = v264;
  v329[1] = v265;
  v329[2] = 1;
  v328[0] = v252;
  v328[1] = v262;
  v328[2] = v263;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v318, v329, v328, v319, v320, v321, v322);
  return MPSLibrary::ReleaseComputeState();
}

char *sub_2399D746C()
{
  result = getenv("MPS_GRAPH_CAPTURE_OUTPUT_FOLDER");
  if (result)
  {
    byte_280D74AC0 = 1;
  }

  return result;
}

void **sub_2399D74A4(void **a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  objc_msgSend_endEncoding(*a1, a2, a3, a4, a5, a6, a7, a8);

  return a1;
}

void sub_2399D79F8(_Unwind_Exception *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_2399D7EE0(va, a2, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

unint64_t sub_2399D7A0C(char *a1, char *a2, uint64_t a3, char *a4, char *a5, char *a6, uint64_t a7, uint64_t a8)
{
  v329 = *&a1[*MEMORY[0x277CD7370]];
  v11 = objc_msgSend_columns(a5, a2, a3, a4, a5, a6, a7, a8);
  objc_msgSend_secondarySourceMatrixOrigin(a1, v12, v13, v14, v15, v16, v17, v18);
  v26 = objc_msgSend_columns(a4, v19, v20, v21, v22, v23, v24, v25);
  objc_msgSend_primarySourceMatrixOrigin(a1, v27, v28, v29, v30, v31, v32, v33);
  v41 = objc_msgSend_sourceColumns(a1, v34, v35, v36, v37, v38, v39, v40);
  objc_msgSend_secondarySourceMatrixOrigin(a1, v42, v43, v44, v45, v46, v47, v48);
  if (v339 >= objc_msgSend_columns(a5, v49, v50, v51, v52, v53, v54, v55))
  {
    goto LABEL_8;
  }

  v63 = v11 - v339;
  if (v11 - v339 >= v26 - v339)
  {
    v63 = v26 - v339;
  }

  v64 = v63 >= v41 ? v41 : v63;
  objc_msgSend_primarySourceMatrixOrigin(a1, v56, v57, v58, v59, v60, v61, v62);
  if (*(&v336 + 1) >= objc_msgSend_columns(a4, v65, v66, v67, v68, v69, v70, v71))
  {
LABEL_8:
    v64 = 0;
  }

  v72 = objc_msgSend_rows(a5, v56, v57, v58, v59, v60, v61, v62);
  objc_msgSend_secondarySourceMatrixOrigin(a1, v73, v74, v75, v76, v77, v78, v79);
  v80 = v72 - v338;
  v88 = objc_msgSend_rows(a4, v81, v82, v83, v84, v85, v86, v87);
  objc_msgSend_primarySourceMatrixOrigin(a1, v89, v90, v91, v92, v93, v94, v95);
  if (v80 >= v88 - v338)
  {
    v80 = v88 - v338;
  }

  v103 = objc_msgSend_sourceRows(a1, v96, v97, v98, v99, v100, v101, v102);
  if (v80 >= v103)
  {
    v111 = v103;
  }

  else
  {
    v111 = v80;
  }

  objc_msgSend_secondarySourceMatrixOrigin(a1, v104, v105, v106, v107, v108, v109, v110);
  result = objc_msgSend_rows(a5, v112, v113, v114, v115, v116, v117, v118);
  if (v338 < result)
  {
    objc_msgSend_primarySourceMatrixOrigin(a1, v120, v121, v122, v123, v124, v125, v126);
    result = objc_msgSend_rows(a4, v127, v128, v129, v130, v131, v132, v133);
    if (v336 < result && v64 && v111)
    {
      v330 = a4;
      v331 = v111;
      MPSLibrary::CreateUberShaderKey();
      PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
      MPSLibrary::ReleaseMPSKey();
      if ((objc_msgSend_threadExecutionWidth(PipelineStateForMPSKey, v135, v136, v137, v138, v139, v140, v141, 0, 0, 0, 0, 0) & 0xFFFFFFC0) == 0)
      {
        v149 = 64;
        do
        {
          MPSLibrary::ReleaseComputeState();
          MPSLibrary::CreateUberShaderKey();
          PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
          MPSLibrary::ReleaseMPSKey();
          v149 >>= 1;
        }

        while (v149 > objc_msgSend_threadExecutionWidth(PipelineStateForMPSKey, v150, v151, v152, v153, v154, v155, v156, 0, 0, 0, 0, 0));
      }

      v332[1] = v331;
      v332[0] = v64;
      v333 = objc_msgSend_rowBytes(v330, v142, v143, v144, v145, v146, v147, v148);
      v334 = objc_msgSend_rowBytes(a5, v157, v158, v159, v160, v161, v162, v163);
      v335 = objc_msgSend_rowBytes(a6, v164, v165, v166, v167, v168, v169, v170);
      objc_msgSend_primarySourceMatrixOrigin(a1, v171, v172, v173, v174, v175, v176, v177);
      v178 = v339;
      v186 = v178 * (objc_msgSend_dataType(v330, v179, v180, v181, v182, v183, v184, v185) >> 3);
      objc_msgSend_primarySourceMatrixOrigin(a1, v187, v188, v189, v190, v191, v192, v193);
      v194 = v336;
      v326 = v186 + objc_msgSend_rowBytes(v330, v195, v196, v197, v198, v199, v200, v201) * v194;
      v202 = MEMORY[0x277CD73A8];
      v325 = *&v330[*MEMORY[0x277CD73A8]];
      objc_msgSend_secondarySourceMatrixOrigin(a1, v203, v204, v205, v206, v207, v208, v209);
      v210 = v339;
      v218 = v210 * (objc_msgSend_dataType(a5, v211, v212, v213, v214, v215, v216, v217) >> 3);
      objc_msgSend_secondarySourceMatrixOrigin(a1, v219, v220, v221, v222, v223, v224, v225);
      v226 = v336;
      v324 = v218 + objc_msgSend_rowBytes(a5, v227, v228, v229, v230, v231, v232, v233) * v226;
      v234 = *&a5[*v202];
      objc_msgSend_resultMatrixOrigin(a1, v235, v236, v237, v238, v239, v240, v241);
      v242 = v339;
      v250 = v242 * (objc_msgSend_dataType(a6, v243, v244, v245, v246, v247, v248, v249) >> 3);
      objc_msgSend_resultMatrixOrigin(a1, v251, v252, v253, v254, v255, v256, v257);
      v258 = v336;
      v266 = v250 + objc_msgSend_rowBytes(a6, v259, v260, v261, v262, v263, v264, v265) * v258;
      v267 = *&a6[*v202];
      objc_msgSend_setComputePipelineState_(a2, v268, PipelineStateForMPSKey, v269, v270, v271, v272, v273);
      v281 = objc_msgSend_data(v330, v274, v275, v276, v277, v278, v279, v280);
      objc_msgSend_setBuffer_offset_atIndex_(a2, v282, v281, v326 + v325, 0, v283, v284, v285);
      v293 = objc_msgSend_data(a5, v286, v287, v288, v289, v290, v291, v292);
      objc_msgSend_setBuffer_offset_atIndex_(a2, v294, v293, v324 + v234, 1, v295, v296, v297);
      v305 = objc_msgSend_data(a6, v298, v299, v300, v301, v302, v303, v304);
      objc_msgSend_setBuffer_offset_atIndex_(a2, v306, v305, v266 + v267, 2, v307, v308, v309);
      objc_msgSend_setBytes_length_atIndex_(a2, v310, v332, 16, 3, v311, v312, v313);
      objc_msgSend_setThreadgroupMemoryLength_atIndex_(a2, v314, 1024, 0, v315, v316, v317, v318);
      v338 = 1;
      v339 = (v331 + 1) >> 1;
      v340 = 1;
      v336 = xmmword_2399EE2C0;
      v337 = 1;
      objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v319, &v338, &v336, v320, v321, v322, v323);
      return MPSLibrary::ReleaseComputeState();
    }
  }

  return result;
}

void **sub_2399D7EE0(void **a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  objc_msgSend_endEncoding(*a1, a2, a3, a4, a5, a6, a7, a8);

  return a1;
}

void sub_2399D865C(_Unwind_Exception *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_2399D7EE0(va, a2, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

uint64_t sub_2399D8670(uint64_t a1, uint64_t *a2)
{
  v3 = MPSCreateFunctionConstantValues();
  v8 = v3;
  v14 = 1;
  v9 = a2[8];
  if (v9)
  {
    objc_msgSend_setConstantValue_type_atIndex_(v3, v4, &v14, 53, 0, v5, v6, v7);
    v9 = a2[8];
  }

  v13 = 31 - __clz(v9 >> 1);
  objc_msgSend_setConstantValue_type_atIndex_(v8, v4, &v13, 49, 1, v5, v6, v7);
  v10 = *a2;
  v11 = _MPSNewSpecializedFunction();

  return v11;
}

void sub_2399D98C8(_Unwind_Exception *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  sub_2399D7EE0(va, a2, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

void sub_2399D98DC(_Unwind_Exception *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  sub_2399D7EE0(va, a2, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

void sub_2399D98F0(_Unwind_Exception *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  sub_2399D7EE0(va, a2, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

void sub_2399D9904(_Unwind_Exception *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  sub_2399D7EE0(va, a2, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

void sub_2399D9920(_Unwind_Exception *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  sub_2399D7EE0(va, a2, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

void sub_2399D9934(_Unwind_Exception *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  sub_2399D7EE0(va, a2, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

void sub_2399D9948(_Unwind_Exception *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  sub_2399D7EE0(va, a2, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

void sub_2399D995C(_Unwind_Exception *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  sub_2399D7EE0(va, a2, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

void sub_2399D9988(_Unwind_Exception *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  sub_2399D7EE0(va, a2, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

void sub_2399D999C(_Unwind_Exception *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  sub_2399D7EE0(va, a2, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

void sub_2399D99B0(_Unwind_Exception *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  sub_2399D7EE0(va, a2, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

void sub_2399D99C4(_Unwind_Exception *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  sub_2399D7EE0(va, a2, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

void sub_2399D99D8(_Unwind_Exception *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  sub_2399D7EE0(va, a2, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

void sub_2399D99EC(_Unwind_Exception *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  sub_2399D7EE0(va, a2, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

void sub_2399DA124(_Unwind_Exception *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_2399D74A4(va, a2, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

void sub_2399DA138(_Unwind_Exception *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_2399D74A4(va, a2, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

uint64_t sub_2399DB230(uint64_t a1, uint64_t *a2)
{
  v3 = MPSCreateFunctionConstantValues();
  v4 = *(a2 + 64);
  v17 = v4 & 1;
  v16 = (v4 & 2) != 0;
  objc_msgSend_setConstantValue_type_atIndex_(v3, v5, &v17, 53, 0, v6, v7, v8);
  objc_msgSend_setConstantValue_type_atIndex_(v3, v9, &v16, 53, 1, v10, v11, v12);
  v13 = *a2;
  v14 = _MPSNewSpecializedFunction();

  return v14;
}

void sub_2399E090C(_Unwind_Exception *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_2399D74A4(va, a2, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

uint64_t sub_2399E3204(uint64_t a1, uint64_t *a2)
{
  v3 = MPSCreateFunctionConstantValues();
  v11 = a2[8] & 1;
  objc_msgSend_setConstantValue_type_atIndex_(v3, v4, &v11, 53, 3, v5, v6, v7);
  v8 = *a2;
  v9 = _MPSNewSpecializedFunction();

  return v9;
}

uint64_t sub_2399E4C74(MPSDevice *a1, char *a2, uint64_t a3, void *a4, void *a5, unsigned int *a6, uint64_t a7, uint64_t a8)
{
  v13 = *a6 + a6[2];
  if (objc_msgSend_rows(a4, a2, a3, a4, a5, a6, a7, a8) < v13)
  {
    return -20;
  }

  v21 = a6[1] + a6[3];
  if (objc_msgSend_columns(a4, v14, v15, v16, v17, v18, v19, v20) < v21)
  {
    return -20;
  }

  v29 = *a6 + a6[4];
  if (objc_msgSend_rows(a5, v22, v23, v24, v25, v26, v27, v28) < v29)
  {
    return -20;
  }

  v37 = a6[1] + a6[5];
  if (objc_msgSend_columns(a5, v30, v31, v32, v33, v34, v35, v36) < v37 || objc_msgSend_dataType(a4, v38, v39, v40, v41, v42, v43, v44) != 268435488 || objc_msgSend_dataType(a5, v45, v46, v47, v48, v49, v50, v51) != 268435488)
  {
    return -20;
  }

  if (*a6)
  {
    if (a6[1])
    {
      MPSDevice::GetMPSLibrary_DoNotUse(a1, &stru_278AFE720);
      ComputeState = MPSLibrary::GetComputeState();
      objc_msgSend_setComputePipelineState_(a2, v53, ComputeState, v54, v55, v56, v57, v58);
      MPSLibrary::ReleaseComputeState();
      v59 = (*a6 + 15) >> 4;
      v60 = (a6[1] + 63) >> 6;
      v68 = objc_msgSend_data(a4, v61, v62, v63, v64, v65, v66, v67);
      v69 = a6[3];
      v70 = a6[6] * a6[2];
      v78 = objc_msgSend_dataType(a4, v71, v72, v73, v74, v75, v76, v77) >> 3;
      v86 = objc_msgSend_offset(a4, v79, v80, v81, v82, v83, v84, v85);
      objc_msgSend_setBuffer_offset_atIndex_(a2, v87, v68, v86 + v70 + v69 * v78, 0, v88, v89, v90);
      v98 = objc_msgSend_data(a5, v91, v92, v93, v94, v95, v96, v97);
      LODWORD(v68) = a6[5];
      v99 = a6[7] * a6[4];
      v107 = objc_msgSend_dataType(a5, v100, v101, v102, v103, v104, v105, v106) >> 3;
      v115 = objc_msgSend_offset(a5, v108, v109, v110, v111, v112, v113, v114);
      objc_msgSend_setBuffer_offset_atIndex_(a2, v116, v98, v115 + v99 + v68 * v107, 1, v117, v118, v119);
      objc_msgSend_setBytes_length_atIndex_(a2, v120, a6, 32, 2, v121, v122, v123);
      v132[0] = v59;
      v132[1] = v60;
      v132[2] = 1;
      v130 = vdupq_n_s64(0x10uLL);
      v131 = 1;
      objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v124, v132, &v130, v125, v126, v127, v128);
    }
  }

  return 0;
}

unint64_t sub_2399E6218(void *a1, const char *a2, uint64_t a3, char *a4, char *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v227 = *(a1 + *MEMORY[0x277CD7370]);
  v13 = a1[19];
  v14 = a1[20];
  v246 = 0;
  v247 = 0;
  v248 = 0;
  objc_msgSend_sourceMatrixOrigin(a1, a2, a3, a4, a5, a6, a7, a8);
  v243 = 0;
  v244 = 0;
  v245 = 0;
  objc_msgSend_resultMatrixOrigin(a1, v15, v16, v17, v18, v19, v20, v21);
  if ((*(a1 + *MEMORY[0x277CD7378]) & 1) == 0)
  {
    if (!a3 && MTLReportFailureTypeEnabled())
    {
      v217 = objc_opt_class();
      v224 = NSStringFromClass(v217);
      MTLReportFailure();
    }

    if (!a4 && MTLReportFailureTypeEnabled())
    {
      v218 = objc_opt_class();
      v224 = NSStringFromClass(v218);
      MTLReportFailure();
    }

    if (!a5 && MTLReportFailureTypeEnabled())
    {
      v219 = objc_opt_class();
      v224 = NSStringFromClass(v219);
      MTLReportFailure();
    }

    objc_msgSend_dataType(a4, v22, v23, v24, v25, v26, v27, v28, v224);
    objc_msgSend_dataType(a5, v29, v30, v31, v32, v33, v34, v35);
    v43 = objc_msgSend_dataType(a4, v36, v37, v38, v39, v40, v41, v42);
    if (v43 != objc_msgSend_dataType(a5, v44, v45, v46, v47, v48, v49, v50) && MTLReportFailureTypeEnabled())
    {
      v220 = objc_opt_class();
      v225 = NSStringFromClass(v220);
      MTLReportFailure();
    }

    if (objc_msgSend_dataType(a4, v51, v52, v53, v54, v55, v56, v57, v225) != 268435488)
    {
      objc_msgSend_dataType(a4, v58, v59, v60, v61, v62, v63, v64);
    }

    if (objc_msgSend_dataType(a4, v58, v59, v60, v61, v62, v63, v64) != 268435488 && objc_msgSend_dataType(a4, v22, v23, v24, v25, v26, v27, v28) != 268435472 && MTLReportFailureTypeEnabled())
    {
      v221 = objc_opt_class();
      v224 = NSStringFromClass(v221);
      MTLReportFailure();
    }
  }

  v65 = *MEMORY[0x277CD73B0];
  v66 = *&a5[v65];
  v67 = *&a4[v65];
  v239 = v66;
  v240 = v67;
  v68 = *MEMORY[0x277CD73A0];
  v69 = *&a5[v68];
  v70 = *&a4[v68];
  v229 = v69;
  v241 = v69;
  v242 = v70;
  v232 = v70;
  v71 = objc_msgSend_batchStart(a1, v22, v23, v24, v25, v26, v27, v28, v224);
  v79 = objc_msgSend_batchSize(a1, v72, v73, v74, v75, v76, v77, v78);
  if (objc_msgSend_columns(a4, v80, v81, v82, v83, v84, v85, v86) >= v247)
  {
    v95 = objc_msgSend_columns(a4, v87, v88, v89, v90, v91, v92, v93);
    if (v95 - v247 < v13)
    {
      LODWORD(v13) = v95 - v247;
    }
  }

  else
  {
    LODWORD(v13) = 0;
  }

  LODWORD(v94) = v13;
  v230 = v94;
  if (objc_msgSend_rows(a4, v87, v88, v89, v90, v91, v92, v93) >= v246)
  {
    v103 = objc_msgSend_rows(a4, v96, v97, v98, v99, v100, v101, v102);
    if (v103 - v246 < v14)
    {
      LODWORD(v14) = v103 - v246;
    }
  }

  else
  {
    LODWORD(v14) = 0;
  }

  v233 = a2;
  v238 = DWORD2(v230);
  v237 = __PAIR64__(v14, v230);
  if (objc_msgSend_matrices(a4, v96, v97, v98, v99, v100, v101, v102) <= v71)
  {
    v111 = 0;
    result = objc_msgSend_matrices(a5, v104, v105, v106, v107, v108, v109, v110);
    if (result <= v71)
    {
      return result;
    }
  }

  else
  {
    v111 = objc_msgSend_matrices(a4, v104, v105, v106, v107, v108, v109, v110) - v71;
    result = objc_msgSend_matrices(a5, v112, v113, v114, v115, v116, v117, v118);
    if (result <= v71)
    {
      return result;
    }
  }

  result = objc_msgSend_matrices(a5, v120, v121, v122, v123, v124, v125, v126);
  v134 = result - v71;
  if (v111 < result - v71)
  {
    v134 = v111;
  }

  if (v134 >= v79)
  {
    v134 = v79;
  }

  if (v134 && v13 && v14)
  {
    v231 = v134;
    if ((*(a1 + *MEMORY[0x277CD7378]) & 1) == 0)
    {
      objc_msgSend_rows(a5, v127, v128, v129, v130, v131, v132, v133);
      if (v243 + v14 > objc_msgSend_rows(a5, v135, v136, v137, v138, v139, v140, v141) && MTLReportFailureTypeEnabled())
      {
        v222 = objc_opt_class();
        v226 = NSStringFromClass(v222);
        MTLReportFailure();
      }

      objc_msgSend_columns(a5, v142, v143, v144, v145, v146, v147, v148, v226);
      if (v244 + v13 > objc_msgSend_columns(a5, v149, v150, v151, v152, v153, v154, v155) && MTLReportFailureTypeEnabled())
      {
        v223 = objc_opt_class();
        v226 = NSStringFromClass(v223);
        MTLReportFailure();
      }
    }

    if ((v67 & 0xF) != 0 || (v66 & 0xF) != 0)
    {
      v156 = 0;
      if ((v232 & 0xF) == 0)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v156 = 1;
      if ((v232 & 0xF) == 0)
      {
LABEL_35:
        v157 = (v13 > 0xFF) & ((v229 & 0xF) == 0) & v156;
LABEL_38:
        objc_msgSend_dataType(a4, v127, v128, v129, v130, v131, v132, v133, v226);
        ComputeState = MPSLibrary::GetComputeState();
        objc_msgSend_setComputePipelineState_(v233, v159, ComputeState, v160, v161, v162, v163, v164);
        v172 = objc_msgSend_threadExecutionWidth(ComputeState, v165, v166, v167, v168, v169, v170, v171);
        v180 = objc_msgSend_maxTotalThreadsPerThreadgroup(ComputeState, v173, v174, v175, v176, v177, v178, v179);
        MPSLibrary::ReleaseComputeState();
        if (v157)
        {
          if (v13 <= 0xFFF)
          {
            v190 = 64;
            if (v13 <= 0x3FF)
            {
              v190 = v172;
            }

            if (v13 <= 0x7FF)
            {
              v186 = v190;
            }

            else
            {
              v186 = 128;
            }
          }

          else
          {
            v186 = 256;
          }

          v228 = v14;
          objc_msgSend_setThreadgroupMemoryLength_atIndex_(v233, v181, 4 * v186, 0, v182, v183, v184, v185);
          v189 = MEMORY[0x277CD73B0];
        }

        else
        {
          v187 = 4 * v172;
          if ((4 * v172) <= 1)
          {
            v187 = 1;
          }

          if (v187 >= v180)
          {
            v188 = v180;
          }

          else
          {
            v188 = v187;
          }

          if (v188 >= v14)
          {
            v186 = v172;
          }

          else
          {
            v186 = v188;
          }

          v189 = MEMORY[0x277CD73B0];
          if (v186)
          {
            v228 = (v14 + v186 - 1) / v186;
          }

          else
          {
            v228 = 0;
          }
        }

        v191 = *MEMORY[0x277CD7398];
        v192 = *v189;
        v193 = *MEMORY[0x277CD73A8];
        v194 = *&a4[v193];
        v195 = v71 * v232 + v247 * (*&a4[v191] >> 3) + *&a4[v192] * v246;
        v196 = *&a5[v192];
        v197 = *&a5[v193];
        v198 = v71 * v229 + v244 * (*&a5[v191] >> 3);
        v199 = MEMORY[0x277CD7388];
        v200 = &a4[*MEMORY[0x277CD7388]];
        explicit = atomic_load_explicit(v200, memory_order_acquire);
        if (!explicit)
        {
          MPSAutoBuffer::AllocateBuffer(v200, 0);
          explicit = atomic_load_explicit(v200, memory_order_acquire);
        }

        objc_msgSend_setBuffer_offset_atIndex_(v233, v181, explicit, v195 + v194, 1, v183, v184, v185);
        v206 = &a5[*v199];
        v207 = atomic_load_explicit(v206, memory_order_acquire);
        if (!v207)
        {
          MPSAutoBuffer::AllocateBuffer(v206, 0);
          v207 = atomic_load_explicit(v206, memory_order_acquire);
        }

        objc_msgSend_setBuffer_offset_atIndex_(v233, v202, v207, v198 + v196 * v243 + v197, 2, v203, v204, v205);
        objc_msgSend_setBytes_length_atIndex_(v233, v208, &v237, 32, 0, v209, v210, v211);
        v236[0] = v228;
        v236[1] = v231;
        v236[2] = 1;
        v234 = v186;
        v235 = vdupq_n_s64(1uLL);
        return objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v233, v212, v236, &v234, v213, v214, v215, v216);
      }
    }

    v157 = 0;
    goto LABEL_38;
  }

  return result;
}

uint64_t sub_2399E6D04(uint64_t a1, uint64_t *a2)
{
  v3 = MPSCreateFunctionConstantValues();
  v4 = *(a2 + 64);
  v17 = v4 & 1;
  v16 = (v4 & 2) != 0;
  objc_msgSend_setConstantValue_type_atIndex_(v3, v5, &v17, 53, 2, v6, v7, v8);
  objc_msgSend_setConstantValue_type_atIndex_(v3, v9, &v16, 53, 3, v10, v11, v12);
  v13 = *a2;
  v14 = _MPSNewSpecializedFunction();

  return v14;
}

__n128 sub_2399E7F10@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __n128 *a3@<X8>)
{
  v3 = (*(a1 + 8) + 24 * a2);
  result = *v3;
  *a3 = *v3;
  a3[1].n128_u64[0] = v3[1].n128_u64[0];
  return result;
}

void sub_2399E9B88(_Unwind_Exception *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  sub_2399D7EE0(va, a2, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

__n128 sub_2399E9CD4@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 8) + 48 * a2;
  v4 = *(v3 + 16);
  *a3 = *v3;
  *(a3 + 16) = v4;
  result = *(v3 + 32);
  *(a3 + 32) = result;
  return result;
}

char *sub_2399E9CF4(char *result, char *a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, unint64_t a8, uint64_t a9)
{
  if (a7 && a8)
  {
    v11 = *&result[*MEMORY[0x277CD7370]];
    v12 = result;
    objc_msgSend_resultMatrixOrigin(result, a2, a3, a4, a5, a6, a7, a8);
    v800 = *v815;
    v805 = objc_msgSend_rowBytes(a3, v13, v14, v15, v16, v17, v18, v19);
    objc_msgSend_resultMatrixOrigin(v12, v20, v21, v22, v23, v24, v25, v26);
    v802 = *&v816[8];
    v796 = a3;
    v798 = objc_msgSend_dataType(a3, v27, v28, v29, v30, v31, v32, v33);
    v794 = objc_msgSend_columns(v12, v34, v35, v36, v37, v38, v39, v40);
    ComputeState = MPSLibrary::GetComputeState();
    v42 = MPSLibrary::GetComputeState();
    v760 = MPSLibrary::GetComputeState();
    v758 = MPSLibrary::GetComputeState();
    v780 = MPSLibrary::GetComputeState();
    v771 = MPSLibrary::GetComputeState();
    v43 = *(v11 + 32);
    (*(*v43 + 16))(v815, v43, 6);
    v772 = *&v815[8];
    v774 = *v815;
    v770 = *&v815[16];
    (*(*v43 + 16))(v815, v43, 5);
    v782 = *v815;
    v779 = *&v815[16];
    (*(*v43 + 16))(v815, v43, 1);
    v44 = *&v815[8];
    v45 = *v815;
    v793 = *&v815[16];
    (*(*v43 + 16))(v815, v43, 0);
    v47 = *&v815[8];
    v46 = *v815;
    v787 = *&v815[16];
    (*(*v43 + 16))(v815, v43, 7);
    v761 = *v815;
    v756 = *&v815[16];
    v777 = v43;
    (*(*v43 + 16))(v815, v43, 4);
    v763 = *v815;
    v757 = *&v815[16];
    v55 = objc_msgSend_maxTotalThreadsPerThreadgroup(v42, v48, v49, v50, v51, v52, v53, v54);
    v63 = objc_msgSend_threadExecutionWidth(v42, v56, v57, v58, v59, v60, v61, v62);
    if (v45 == 1)
    {
      if (v44 > v55)
      {
        goto LABEL_6;
      }

LABEL_5:
      if ((v44 & (v63 - 1)) != 0)
      {
LABEL_6:
        while (v44 > v63)
        {
          if (--v44 <= v55)
          {
            goto LABEL_5;
          }
        }
      }
    }

    else if (v44 == 1)
    {
      if (v45 > v55)
      {
        goto LABEL_12;
      }

LABEL_11:
      if ((v45 & (v63 - 1)) != 0)
      {
LABEL_12:
        while (v45 > v63)
        {
          if (--v45 <= v55)
          {
            goto LABEL_11;
          }
        }
      }
    }

    else
    {
      v71 = v44 * v45;
      if (v44 * v45 > v55)
      {
        while (v71 > v63)
        {
          if (--v71 <= v55 && (v71 & (v63 - 1)) == 0)
          {
            break;
          }
        }

        v72 = v71 / v63;
        v73 = v45 > v44;
        if (v45 <= v44)
        {
          v44 = v72;
        }

        else
        {
          v44 = v63;
        }

        if (v73)
        {
          v45 = v72;
        }

        else
        {
          v45 = v63;
        }
      }
    }

    *&v792 = v45;
    *(&v792 + 1) = v44;
    v74 = objc_msgSend_maxTotalThreadsPerThreadgroup(ComputeState, v64, v65, v66, v67, v68, v69, v70);
    v82 = objc_msgSend_threadExecutionWidth(ComputeState, v75, v76, v77, v78, v79, v80, v81);
    if (v46 == 1)
    {
      v90 = v760;
      if (v47 > v74)
      {
        goto LABEL_30;
      }

LABEL_29:
      if ((v47 & (v82 - 1)) != 0)
      {
LABEL_30:
        while (v47 > v82)
        {
          if (--v47 <= v74)
          {
            goto LABEL_29;
          }
        }
      }
    }

    else
    {
      v90 = v760;
      if (v47 == 1)
      {
        if (v46 > v74)
        {
          goto LABEL_36;
        }

LABEL_35:
        if ((v46 & (v82 - 1)) != 0)
        {
LABEL_36:
          while (v46 > v82)
          {
            if (--v46 <= v74)
            {
              goto LABEL_35;
            }
          }
        }
      }

      else
      {
        v91 = v47 * v46;
        if (v47 * v46 > v74)
        {
          while (v91 > v82)
          {
            if (--v91 <= v74 && (v91 & (v82 - 1)) == 0)
            {
              break;
            }
          }

          v92 = v91 / v82;
          v93 = v46 > v47;
          if (v46 <= v47)
          {
            v47 = v92;
          }

          else
          {
            v47 = v82;
          }

          if (v93)
          {
            v46 = v92;
          }

          else
          {
            v46 = v82;
          }
        }
      }
    }

    v791 = v46;
    v786 = v47;
    v94 = v90;
    v95 = objc_msgSend_maxTotalThreadsPerThreadgroup(v90, v83, v84, v85, v86, v87, v88, v89);
    v103 = objc_msgSend_threadExecutionWidth(v94, v96, v97, v98, v99, v100, v101, v102);
    v111 = v763;
    if (v763 == 1)
    {
      v112 = *(&v763 + 1);
      v113 = a8;
      v114 = v772;
      if (*(&v763 + 1) > v95)
      {
        goto LABEL_54;
      }

LABEL_53:
      if ((v112 & (v103 - 1)) != 0)
      {
LABEL_54:
        while (v112 > v103)
        {
          if (--v112 <= v95)
          {
            goto LABEL_53;
          }
        }
      }
    }

    else
    {
      v112 = *(&v763 + 1);
      v113 = a8;
      v114 = v772;
      if (*(&v763 + 1) == 1)
      {
        if (v763 > v95)
        {
          goto LABEL_60;
        }

LABEL_59:
        if ((v111 & (v103 - 1)) != 0)
        {
LABEL_60:
          while (v111 > v103)
          {
            if (--v111 <= v95)
            {
              goto LABEL_59;
            }
          }
        }
      }

      else
      {
        v115 = *(&v763 + 1) * v763;
        if (*(&v763 + 1) * v763 > v95)
        {
          while (v115 > v103)
          {
            if (--v115 <= v95 && (v115 & (v103 - 1)) == 0)
            {
              break;
            }
          }

          v116 = v115 / v103;
          if (v763 <= *(&v763 + 1))
          {
            v112 = v116;
          }

          else
          {
            v112 = v103;
          }

          if (v763 <= *(&v763 + 1))
          {
            v111 = v103;
          }

          else
          {
            v111 = v116;
          }
        }
      }
    }

    *&v764 = v111;
    *(&v764 + 1) = v112;
    v785 = v42;
    v117 = objc_msgSend_maxTotalThreadsPerThreadgroup(v758, v104, v105, v106, v107, v108, v109, v110);
    v125 = objc_msgSend_threadExecutionWidth(v758, v118, v119, v120, v121, v122, v123, v124);
    v133 = v761;
    if (v761 == 1)
    {
      v134 = *(&v761 + 1);
      if (*(&v761 + 1) > v117)
      {
        goto LABEL_78;
      }

LABEL_77:
      if ((v134 & (v125 - 1)) != 0)
      {
LABEL_78:
        while (v134 > v125)
        {
          if (--v134 <= v117)
          {
            goto LABEL_77;
          }
        }
      }
    }

    else
    {
      v134 = *(&v761 + 1);
      if (*(&v761 + 1) == 1)
      {
        if (v761 > v117)
        {
          goto LABEL_84;
        }

LABEL_83:
        if ((v133 & (v125 - 1)) != 0)
        {
LABEL_84:
          while (v133 > v125)
          {
            if (--v133 <= v117)
            {
              goto LABEL_83;
            }
          }
        }
      }

      else
      {
        v135 = *(&v761 + 1) * v761;
        if (*(&v761 + 1) * v761 > v117)
        {
          while (v135 > v125)
          {
            if (--v135 <= v117 && (v135 & (v125 - 1)) == 0)
            {
              break;
            }
          }

          v136 = v135 / v125;
          if (v761 <= *(&v761 + 1))
          {
            v134 = v136;
          }

          else
          {
            v134 = v125;
          }

          if (v761 <= *(&v761 + 1))
          {
            v133 = v125;
          }

          else
          {
            v133 = v136;
          }
        }
      }
    }

    *&v762 = v133;
    *(&v762 + 1) = v134;
    v137 = objc_msgSend_maxTotalThreadsPerThreadgroup(v771, v126, v127, v128, v129, v130, v131, v132);
    v145 = objc_msgSend_threadExecutionWidth(v771, v138, v139, v140, v141, v142, v143, v144);
    v153 = v774;
    if (v774 == 1)
    {
      if (v114 > v137)
      {
        goto LABEL_102;
      }

LABEL_101:
      if ((v114 & (v145 - 1)) != 0)
      {
LABEL_102:
        while (v114 > v145)
        {
          if (--v114 <= v137)
          {
            goto LABEL_101;
          }
        }
      }
    }

    else if (v114 == 1)
    {
      if (v774 > v137)
      {
        goto LABEL_108;
      }

LABEL_107:
      if ((v153 & (v145 - 1)) != 0)
      {
LABEL_108:
        while (v153 > v145)
        {
          if (--v153 <= v137)
          {
            goto LABEL_107;
          }
        }
      }
    }

    else
    {
      v154 = v114 * v774;
      if (v114 * v774 > v137)
      {
        while (v154 > v145)
        {
          if (--v154 <= v137 && (v154 & (v145 - 1)) == 0)
          {
            break;
          }
        }

        v155 = v154 / v145;
        v156 = v774 > v114;
        if (v774 <= v114)
        {
          v114 = v155;
        }

        else
        {
          v114 = v145;
        }

        if (v156)
        {
          v153 = v155;
        }

        else
        {
          v153 = v145;
        }
      }
    }

    v775 = v153;
    v157 = objc_msgSend_maxTotalThreadsPerThreadgroup(v780, v146, v147, v148, v149, v150, v151, v152);
    v165 = objc_msgSend_threadExecutionWidth(v780, v158, v159, v160, v161, v162, v163, v164);
    v166 = v782;
    if (v782 == 1)
    {
      v167 = *(&v782 + 1);
      if (*(&v782 + 1) > v157)
      {
        goto LABEL_126;
      }

LABEL_125:
      if ((v167 & (v165 - 1)) != 0)
      {
LABEL_126:
        while (v167 > v165)
        {
          if (--v167 <= v157)
          {
            goto LABEL_125;
          }
        }
      }
    }

    else
    {
      v167 = *(&v782 + 1);
      if (*(&v782 + 1) == 1)
      {
        if (v782 > v157)
        {
          goto LABEL_132;
        }

LABEL_131:
        if ((v166 & (v165 - 1)) != 0)
        {
LABEL_132:
          while (v166 > v165)
          {
            if (--v166 <= v157)
            {
              goto LABEL_131;
            }
          }
        }
      }

      else
      {
        v168 = *(&v782 + 1) * v782;
        if (*(&v782 + 1) * v782 > v157)
        {
          while (v168 > v165)
          {
            if (--v168 <= v157 && (v168 & (v165 - 1)) == 0)
            {
              break;
            }
          }

          v169 = v168 / v165;
          if (v782 <= *(&v782 + 1))
          {
            v167 = v169;
          }

          else
          {
            v167 = v165;
          }

          if (v782 <= *(&v782 + 1))
          {
            v166 = v165;
          }

          else
          {
            v166 = v169;
          }
        }
      }
    }

    *&v783 = v166;
    *(&v783 + 1) = v167;
    v789 = v11;
    v797 = (v800 + a6) * v805 + (v802 + a6) * (v798 >> 3);
    v170 = v777;
    (*(*v777 + 16))(v815, v777, 6);
    v171 = *&v815[24];
    (*(*v170 + 16))(v815, v170, 5);
    v172 = *&v815[32];
    (*(*v170 + 16))(v815, v170, 7);
    v174 = *&v815[24];
    v173 = *&v815[32];
    (*(*v170 + 16))(v815, v170, 4);
    v750 = *&v815[24];
    v751 = *&v815[32];
    if (a7 >= v113)
    {
      v182 = v113;
    }

    else
    {
      v182 = a7;
    }

    v812 = a7;
    v813 = v113;
    result = objc_msgSend_rowBytes(v796, v175, v176, v177, v178, v179, v180, v181);
    v814 = result;
    v767 = v182;
    v788 = ComputeState;
    if (v182 >= 8)
    {
      v773 = v114;
      v769 = v171 * v775;
      v768 = v171 * v775 - 1;
      v778 = v172 * *(&v783 + 1);
      v776 = v172 * *(&v783 + 1) - 1;
      v755 = v174 * v762;
      v327 = v173 * *(&v762 + 1);
      v328 = 0;
      v753 = v327;
      v754 = v174 * v762 - 1;
      v752 = v327 - 1;
      v329 = 8;
      __asm { FMOV            V0.2S, #-1.0 }

      v335 = -_D0;
      v336 = v113;
      do
      {
        v374 = 0;
        v766 = v329;
        v375 = -8;
        v765 = v336;
        v807 = v328;
        do
        {
          v476 = v814;
          v801 = v336;
          v804 = v374;
          if ((v375 + 8) > 1)
          {
            v376 = v374 | v328;
            v377 = v328 + v375;
            v378 = v328 + v375 + 8;
            *v815 = 1;
            *&v815[4] = v336;
            *&v815[8] = v375 + 7;
            *&v815[12] = vdupq_n_s32(v814);
            *&v815[28] = v335;
            v379 = a2;
            objc_msgSend_setComputePipelineState_(a2, v183, v771, v184, v185, v186, v187, v188);
            v380 = v796;
            v388 = objc_msgSend_data(v796, v381, v382, v383, v384, v385, v386, v387);
            v377 += 7;
            v396 = v797;
            v397 = v797 + objc_msgSend_rowBytes(v796, v389, v390, v391, v392, v393, v394, v395) * v377;
            v405 = objc_msgSend_dataType(v796, v398, v399, v400, v401, v402, v403, v404);
            v406 = MEMORY[0x277CD73A8];
            objc_msgSend_setBuffer_offset_atIndex_(a2, v407, v388, v397 + *&v796[*MEMORY[0x277CD73A8]] + v807 * (v405 >> 3), 0, v408, v409, v410);
            v418 = objc_msgSend_data(v796, v411, v412, v413, v414, v415, v416, v417);
            v426 = objc_msgSend_dataType(v796, v419, v420, v421, v422, v423, v424, v425) >> 3;
            v434 = objc_msgSend_rowBytes(v796, v427, v428, v429, v430, v431, v432, v433);
            objc_msgSend_setBuffer_offset_atIndex_(a2, v435, v418, v797 + v434 * v807 + *&v796[*v406] + v378 * v426, 1, v436, v437, v438);
            v446 = objc_msgSend_data(v796, v439, v440, v441, v442, v443, v444, v445);
            v454 = v797 + objc_msgSend_rowBytes(v796, v447, v448, v449, v450, v451, v452, v453) * v377;
            v462 = v454 + *&v796[*v406] + v378 * (objc_msgSend_dataType(v796, v455, v456, v457, v458, v459, v460, v461) >> 3);
            v328 = v807;
            objc_msgSend_setBuffer_offset_atIndex_(a2, v463, v446, v462, 2, v464, v465, v466);
            objc_msgSend_setBytes_length_atIndex_(a2, v467, v815, 36, 3, v468, v469, v470);
            *v816 = (v768 + *&v815[4]) / v769;
            *&v816[8] = vdupq_n_s64(1uLL);
            *&v810 = v775;
            *(&v810 + 1) = v773;
            v811 = v770;
            objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v471, v816, &v810, v472, v473, v474, v475);
            v476 = v814;
            v477 = v804;
          }

          else
          {
            v477 = v375 + 8;
            v376 = v328 + v375 + 8;
            v380 = v796;
            v396 = v797;
            v379 = a2;
            v406 = MEMORY[0x277CD73A8];
          }

          *v815 = v812;
          *&v815[4] = 1;
          *&v815[8] = v477;
          *&v815[12] = vdupq_n_s32(v476);
          *&v815[28] = v335;
          objc_msgSend_setComputePipelineState_(v379, v183, v780, v184, v185, v186, v187, v188);
          v485 = objc_msgSend_data(v380, v478, v479, v480, v481, v482, v483, v484);
          v493 = objc_msgSend_dataType(v380, v486, v487, v488, v489, v490, v491, v492) >> 3;
          v501 = objc_msgSend_rowBytes(v380, v494, v495, v496, v497, v498, v499, v500);
          objc_msgSend_setBuffer_offset_atIndex_(v379, v502, v485, v396 + v501 * v328 + *&v380[*v406] + v376 * v493, 0, v503, v504, v505);
          v513 = objc_msgSend_data(v380, v506, v507, v508, v509, v510, v511, v512);
          v521 = v396 + objc_msgSend_rowBytes(v380, v514, v515, v516, v517, v518, v519, v520) * v376;
          v529 = objc_msgSend_dataType(v380, v522, v523, v524, v525, v526, v527, v528);
          objc_msgSend_setBuffer_offset_atIndex_(v379, v530, v513, v521 + *&v380[*v406] + v328 * (v529 >> 3), 1, v531, v532, v533);
          v541 = objc_msgSend_data(v380, v534, v535, v536, v537, v538, v539, v540);
          v549 = objc_msgSend_rowBytes(v380, v542, v543, v544, v545, v546, v547, v548);
          v557 = objc_msgSend_dataType(v380, v550, v551, v552, v553, v554, v555, v556);
          objc_msgSend_setBuffer_offset_atIndex_(v379, v558, v541, *&v380[*v406] + v396 + (v549 + (v557 >> 3)) * v376, 2, v559, v560, v561);
          objc_msgSend_setBytes_length_atIndex_(v379, v562, v815, 36, 3, v563, v564, v565);
          *v816 = 1;
          *&v816[8] = (v776 + *v815) / v778;
          *&v816[16] = 1;
          v810 = v783;
          v811 = v779;
          objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v379, v566, v816, &v810, v567, v568, v569, v570);
          *&v808 = __PAIR64__(v794, v812);
          DWORD2(v808) = v376 + a6;
          HIDWORD(v808) = v376 + a6;
          v809 = v814;
          *v816 = v808;
          *&v816[16] = v814;
          sub_2399EB1B0(v789, v379, v380, a4, v816, a5 + 4 * (v376 + a6));
          v191 = v785;
          objc_msgSend_setComputePipelineState_(v379, v571, v785, v572, v573, v574, v575, v576);
          v584 = objc_msgSend_data(v380, v577, v578, v579, v580, v581, v582, v583);
          objc_msgSend_setBuffer_offset_atIndex_(v379, v585, v584, *&v380[*v406], 0, v586, v587, v588);
          objc_msgSend_setBuffer_offset_atIndex_(v379, v589, a4, a5 + 4 * (v376 + a6), 1, v590, v591, v592);
          objc_msgSend_setBuffer_offset_atIndex_(v379, v593, a9, 0, 2, v594, v595, v596);
          objc_msgSend_setBytes_length_atIndex_(v379, v597, &v808, 20, 3, v598, v599, v600);
          *v816 = (v792 - 1 + DWORD1(v808)) / v792;
          v799 = vdupq_n_s64(1uLL);
          *&v816[8] = v799;
          v810 = v792;
          v811 = v793;
          objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v379, v601, v816, &v810, v602, v603, v604, v605);
          objc_msgSend_setComputePipelineState_(v379, v606, v788, v607, v608, v609, v610, v611);
          v619 = objc_msgSend_data(v380, v612, v613, v614, v615, v616, v617, v618);
          v627 = objc_msgSend_rowBytes(v380, v620, v621, v622, v623, v624, v625, v626);
          v635 = v627 + (objc_msgSend_dataType(v380, v628, v629, v630, v631, v632, v633, v634) >> 3);
          v328 = v807;
          objc_msgSend_setBuffer_offset_atIndex_(v379, v636, v619, *&v380[*v406] + v396 + v635 * v376, 0, v637, v638, v639);
          objc_msgSend_setBuffer_offset_atIndex_(v379, v640, a9, 0, 1, v641, v642, v643);
          objc_msgSend_setBytes_length_atIndex_(v379, v644, &v812, 12, 2, v645, v646, v647);
          *v816 = (v791 - 1 + v812) / v791;
          *&v816[8] = v799;
          *&v810 = v791;
          *(&v810 + 1) = v786;
          v811 = v787;
          objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v379, v648, v816, &v810, v649, v650, v651, v652);
          --v812;
          v374 = v804 + 1;
          v336 = v801 - 1;
        }

        while (!__CFADD__(v375++, 1));
        v190 = v766;
        v653 = MEMORY[0x277CD73A8];
        if (v766 < a8)
        {
          *v815 = 1;
          *&v815[4] = a8 - v807 - 8;
          *&v815[8] = 7;
          v654 = &v814;
          v655 = vld1q_dup_f32(v654);
          *&v815[12] = v655;
          *&v815[28] = v335;
          objc_msgSend_setComputePipelineState_(a2, v183, v771, v184, v185, v186, v187, v188);
          v663 = objc_msgSend_data(v796, v656, v657, v658, v659, v660, v661, v662);
          v671 = v797 + objc_msgSend_rowBytes(v796, v664, v665, v666, v667, v668, v669, v670) * (v807 | 7);
          v679 = objc_msgSend_dataType(v796, v672, v673, v674, v675, v676, v677, v678);
          objc_msgSend_setBuffer_offset_atIndex_(a2, v680, v663, v671 + *&v796[*v653] + v807 * (v679 >> 3), 0, v681, v682, v683);
          v691 = objc_msgSend_data(v796, v684, v685, v686, v687, v688, v689, v690);
          v699 = objc_msgSend_dataType(v796, v692, v693, v694, v695, v696, v697, v698) >> 3;
          v707 = objc_msgSend_rowBytes(v796, v700, v701, v702, v703, v704, v705, v706);
          objc_msgSend_setBuffer_offset_atIndex_(a2, v708, v691, v797 + v707 * v807 + *&v796[*v653] + v766 * v699, 1, v709, v710, v711);
          v719 = objc_msgSend_data(v796, v712, v713, v714, v715, v716, v717, v718);
          v727 = v797 + objc_msgSend_rowBytes(v796, v720, v721, v722, v723, v724, v725, v726) * (v807 | 7);
          v735 = objc_msgSend_dataType(v796, v728, v729, v730, v731, v732, v733, v734);
          v736 = v727 + *&v796[*v653];
          v191 = v785;
          objc_msgSend_setBuffer_offset_atIndex_(a2, v737, v719, v736 + v766 * (v735 >> 3), 2, v738, v739, v740);
          objc_msgSend_setBytes_length_atIndex_(a2, v741, v815, 36, 3, v742, v743, v744);
          *v816 = (v768 + *&v815[4]) / v769;
          *&v816[8] = vdupq_n_s64(1uLL);
          *&v810 = v775;
          *(&v810 + 1) = v773;
          v811 = v770;
          objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v745, v816, &v810, v746, v747, v748, v749);
        }

        objc_msgSend_setComputePipelineState_(a2, v183, v758, v184, v185, v186, v187, v188);
        LODWORD(v810) = v812 + 8;
        DWORD1(v810) = v813 - v807;
        DWORD2(v810) = v814;
        v344 = objc_msgSend_data(v796, v337, v338, v339, v340, v341, v342, v343);
        v352 = objc_msgSend_rowBytes(v796, v345, v346, v347, v348, v349, v350, v351);
        v360 = v352 + (objc_msgSend_dataType(v796, v353, v354, v355, v356, v357, v358, v359) >> 3);
        objc_msgSend_setBuffer_offset_atIndex_(a2, v361, v344, *&v796[*v653] + v797 + v360 * v807, 0, v362, v363, v364);
        objc_msgSend_setBytes_length_atIndex_(a2, v365, &v810, 12, 1, v366, v367, v368);
        *v815 = (v754 + v810) / v755;
        *&v815[8] = (v752 + DWORD1(v810)) / v753;
        *&v815[16] = 1;
        *v816 = v762;
        *&v816[16] = v756;
        result = objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v369, v815, v816, v370, v371, v372, v373);
        v329 = v766 + 8;
        v328 = v807 + 8;
        v336 = v765 - 8;
        v189 = v767;
      }

      while (v766 + 8 <= v767);
    }

    else
    {
      v189 = v182;
      v190 = 0;
      v191 = v785;
    }

    v193 = v793;
    v192 = v794;
    v194 = v191;
    v195 = *(&v792 + 1);
    v196 = v190;
    v197 = MEMORY[0x277CD73A8];
    if (v190 < v189)
    {
      v198 = v812;
      v199 = -v190;
      v200 = v190 + a6;
      v201 = a5 + 4 * (v190 + a6);
      v803 = vdupq_n_s64(1uLL);
      do
      {
        v806 = v201;
        *&v810 = __PAIR64__(v192, v198);
        DWORD2(v810) = v200;
        HIDWORD(v810) = v200;
        LODWORD(v811) = v814;
        *v815 = v810;
        *&v815[16] = v814;
        sub_2399EB1B0(v789, a2, v796, a4, v815, v201);
        objc_msgSend_setComputePipelineState_(a2, v202, v194, v203, v204, v205, v206, v207);
        v215 = objc_msgSend_data(v796, v208, v209, v210, v211, v212, v213, v214);
        objc_msgSend_setBuffer_offset_atIndex_(a2, v216, v215, *&v796[*v197], 0, v217, v218, v219);
        objc_msgSend_setBuffer_offset_atIndex_(a2, v220, a4, v806, 1, v221, v222, v223);
        objc_msgSend_setBuffer_offset_atIndex_(a2, v224, a9, 0, 2, v225, v226, v227);
        objc_msgSend_setBytes_length_atIndex_(a2, v228, &v810, 20, 3, v229, v230, v231);
        *v815 = (v792 - 1 + DWORD1(v810)) / v792;
        *&v815[8] = v803;
        *v816 = v792;
        *&v816[8] = v195;
        *&v816[16] = v193;
        objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v232, v815, v816, v233, v234, v235, v236);
        objc_msgSend_setComputePipelineState_(a2, v237, v788, v238, v239, v240, v241, v242);
        v250 = objc_msgSend_data(v796, v243, v244, v245, v246, v247, v248, v249);
        v258 = objc_msgSend_rowBytes(v796, v251, v252, v253, v254, v255, v256, v257);
        v266 = objc_msgSend_dataType(v796, v259, v260, v261, v262, v263, v264, v265);
        objc_msgSend_setBuffer_offset_atIndex_(a2, v267, v250, *&v796[*MEMORY[0x277CD73A8]] + v797 + (v258 + (v266 >> 3)) * v196, 0, v268, v269, v270);
        objc_msgSend_setBuffer_offset_atIndex_(a2, v271, a9, 0, 1, v272, v273, v274);
        objc_msgSend_setBytes_length_atIndex_(a2, v275, &v812, 12, 2, v276, v277, v278);
        *v815 = (v791 - 1 + v812) / v791;
        *&v815[8] = v803;
        *v816 = v791;
        *&v816[8] = v786;
        *&v816[16] = v787;
        objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v279, v815, v816, v280, v281, v282, v283);
        objc_msgSend_setComputePipelineState_(a2, v284, v760, v285, v286, v287, v288, v289);
        LODWORD(v808) = v812;
        DWORD1(v808) = v199 + v813;
        DWORD2(v808) = v814;
        v297 = objc_msgSend_data(v796, v290, v291, v292, v293, v294, v295, v296);
        v305 = objc_msgSend_rowBytes(v796, v298, v299, v300, v301, v302, v303, v304);
        v313 = v305 + (objc_msgSend_dataType(v796, v306, v307, v308, v309, v310, v311, v312) >> 3);
        v195 = *(&v792 + 1);
        v193 = v793;
        v197 = MEMORY[0x277CD73A8];
        objc_msgSend_setBuffer_offset_atIndex_(a2, v314, v297, *&v796[*MEMORY[0x277CD73A8]] + v797 + v313 * v196, 0, v315, v316, v317);
        objc_msgSend_setBytes_length_atIndex_(a2, v318, &v808, 12, 1, v319, v320, v321);
        *v815 = (v750 * v764 - 1 + v808) / (v750 * v764);
        *&v815[8] = (v751 * *(&v764 + 1) - 1 + DWORD1(v808)) / (v751 * *(&v764 + 1));
        *&v815[16] = 1;
        *v816 = v764;
        *&v816[16] = v757;
        result = objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v322, v815, v816, v323, v324, v325, v326);
        v192 = v794;
        v198 = v812 - 1;
        ++v196;
        --v812;
        --v199;
        v201 = v806 + 4;
        ++v200;
      }

      while (v767 != v196);
    }
  }

  return result;
}

uint64_t sub_2399EB1B0(uint64_t result, void *a2, char *a3, uint64_t a4, unsigned int *a5, uint64_t a6)
{
  if (*a5)
  {
    v11 = result;
    ComputeState = MPSLibrary::GetComputeState();
    v13 = MPSLibrary::GetComputeState();
    (*(**(v11 + 32) + 16))(&v132);
    v14 = v132;
    v125 = v133.i64[1];
    v15 = v133.i64[0];
    v23 = objc_msgSend_maxTotalThreadsPerThreadgroup(ComputeState, v16, v17, v18, v19, v20, v21, v22);
    v31 = objc_msgSend_threadExecutionWidth(ComputeState, v24, v25, v26, v27, v28, v29, v30);
    if (v14 == 1)
    {
      if (v15 > v23)
      {
        goto LABEL_5;
      }

LABEL_4:
      if ((v15 & (v31 - 1)) != 0)
      {
LABEL_5:
        while (v15 > v31)
        {
          if (--v15 <= v23)
          {
            goto LABEL_4;
          }
        }
      }
    }

    else if (v15 == 1)
    {
      if (v14 > v23)
      {
        goto LABEL_11;
      }

LABEL_10:
      if ((v14 & (v31 - 1)) != 0)
      {
LABEL_11:
        while (v14 > v31)
        {
          if (--v14 <= v23)
          {
            goto LABEL_10;
          }
        }
      }
    }

    else
    {
      v39 = v15 * v14;
      if (v15 * v14 > v23)
      {
        while (v39 > v31)
        {
          if (--v39 <= v23 && (v39 & (v31 - 1)) == 0)
          {
            break;
          }
        }

        v40 = v39 / v31;
        v41 = v14 > v15;
        if (v14 <= v15)
        {
          v15 = v40;
        }

        else
        {
          v15 = v31;
        }

        if (v41)
        {
          v14 = v40;
        }

        else
        {
          v14 = v31;
        }
      }
    }

    v42 = objc_msgSend_maxTotalThreadsPerThreadgroup(v13, v32, v33, v34, v35, v36, v37, v38);
    v50 = objc_msgSend_threadExecutionWidth(v13, v43, v44, v45, v46, v47, v48, v49);
    v128 = a6;
    if (v14 == 1)
    {
      v57 = ComputeState;
      v58 = v125;
      if (v15 > v42)
      {
        goto LABEL_29;
      }

LABEL_28:
      if ((v15 & (v50 - 1)) != 0)
      {
LABEL_29:
        while (v15 > v50)
        {
          if (--v15 <= v42)
          {
            goto LABEL_28;
          }
        }
      }
    }

    else
    {
      v57 = ComputeState;
      if (v15 == 1)
      {
        v58 = v125;
        if (v14 > v42)
        {
          goto LABEL_35;
        }

LABEL_34:
        if ((v14 & (v50 - 1)) != 0)
        {
LABEL_35:
          while (v14 > v50)
          {
            if (--v14 <= v42)
            {
              goto LABEL_34;
            }
          }
        }
      }

      else
      {
        v59 = v15 * v14;
        v58 = v125;
        if (v15 * v14 > v42)
        {
          while (v59 > v50)
          {
            if (--v59 <= v42 && (v59 & (v50 - 1)) == 0)
            {
              break;
            }
          }

          v60 = v59 / v50;
          v61 = v14 > v15;
          if (v14 <= v15)
          {
            v15 = v60;
          }

          else
          {
            v15 = v50;
          }

          if (v61)
          {
            v14 = v60;
          }

          else
          {
            v14 = v50;
          }
        }
      }
    }

    v62 = 2 * v14 - 1;
    v126 = (v62 + *a5) / (2 * v14);
    objc_msgSend_setComputePipelineState_(a2, v51, v57, v52, v53, v54, v55, v56, v13);
    v70 = objc_msgSend_data(a3, v63, v64, v65, v66, v67, v68, v69);
    objc_msgSend_setBuffer_offset_atIndex_(a2, v71, v70, *&a3[*MEMORY[0x277CD73A8]], 0, v72, v73, v74);
    v75 = a4;
    v76 = a4;
    v77 = v128;
    objc_msgSend_setBuffer_offset_atIndex_(a2, v78, v75, v128, 1, v79, v80, v81);
    objc_msgSend_setBytes_length_atIndex_(a2, v82, a5, 20, 2, v83, v84, v85);
    v131 = v58;
    v132 = v126;
    v133 = vdupq_n_s64(1uLL);
    v129 = v14;
    v130 = v15;
    result = objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v86, &v132, &v129, v87, v88, v89, v90);
    if (2 * v14 < *a5)
    {
      result = objc_msgSend_setComputePipelineState_(a2, v91, v124, v92, v93, v94, v95, v96);
      v104 = (2 * v14 + *a5 - 1) / (2 * v14);
      *a5 = v104;
      if (v104 >= 2)
      {
        v127 = vdupq_n_s64(1uLL);
        do
        {
          v105 = objc_msgSend_data(a3, v97, v98, v99, v100, v101, v102, v103);
          objc_msgSend_setBuffer_offset_atIndex_(a2, v106, v105, *&a3[*MEMORY[0x277CD73A8]], 0, v107, v108, v109);
          objc_msgSend_setBuffer_offset_atIndex_(a2, v110, v76, v77, 1, v111, v112, v113);
          objc_msgSend_setBytes_length_atIndex_(a2, v114, a5, 20, 2, v115, v116, v117);
          v118 = (v62 + *a5) / (2 * v14);
          v131 = v58;
          v132 = v118;
          v133 = v127;
          v129 = v14;
          v130 = v15;
          result = objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v119, &v132, &v129, v120, v121, v122, v123);
          *a5 = v118;
          v41 = v118 > 1;
          v77 = v128;
        }

        while (v41);
      }
    }
  }

  return result;
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}