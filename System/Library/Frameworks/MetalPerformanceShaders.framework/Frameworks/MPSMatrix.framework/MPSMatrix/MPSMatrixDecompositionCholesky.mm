@interface MPSMatrixDecompositionCholesky
- (MPSMatrixDecompositionCholesky)initWithDevice:(id)device lower:(BOOL)lower order:(NSUInteger)order;
- (void)encodeToCommandBuffer:(id)commandBuffer sourceMatrix:(MPSMatrix *)sourceMatrix resultMatrix:(MPSMatrix *)resultMatrix status:(id)status;
@end

@implementation MPSMatrixDecompositionCholesky

- (MPSMatrixDecompositionCholesky)initWithDevice:(id)device lower:(BOOL)lower order:(NSUInteger)order
{
  v24.receiver = self;
  v24.super_class = MPSMatrixDecompositionCholesky;
  result = [(MPSMatrixUnaryKernel *)&v24 initWithDevice:device];
  if (result)
  {
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v14 = result;
    objc_msgSend_setResultMatrixOrigin_(result, v8, &v21, v9, v10, v11, v12, v13);
    v21 = 0;
    v22 = 0;
    v23 = 0;
    objc_msgSend_setSourceMatrixOrigin_(v14, v15, &v21, v16, v17, v18, v19, v20);
    result = v14;
    v14->_order = order;
    v14->_lower = lower;
  }

  return result;
}

- (void)encodeToCommandBuffer:(id)commandBuffer sourceMatrix:(MPSMatrix *)sourceMatrix resultMatrix:(MPSMatrix *)resultMatrix status:(id)status
{
  v8 = status;
  if (objc_msgSend_options(self, a2, commandBuffer, sourceMatrix, resultMatrix, status, v6, v7))
  {
    isEqual = objc_msgSend_isEqual_(sourceMatrix, v13, resultMatrix, v15, v16, v17, v18, v19);
    v56 = isEqual;
    if (!self)
    {
      v57 = 0;
      v58 = 0;
      v59 = 1;
      if (isEqual)
      {
        goto LABEL_24;
      }

      goto LABEL_27;
    }
  }

  else
  {
    if (!commandBuffer && MTLReportFailureTypeEnabled())
    {
      v823 = objc_opt_class();
      v828 = NSStringFromClass(v823);
      MTLReportFailure();
    }

    if (!sourceMatrix && MTLReportFailureTypeEnabled())
    {
      v824 = objc_opt_class();
      v828 = NSStringFromClass(v824);
      MTLReportFailure();
    }

    if (!resultMatrix && MTLReportFailureTypeEnabled())
    {
      v825 = objc_opt_class();
      v828 = NSStringFromClass(v825);
      MTLReportFailure();
    }

    if (self)
    {
      objc_msgSend_sourceMatrixOrigin(self, v13, v14, v15, v16, v17, v18, v19);
      objc_msgSend_sourceMatrixOrigin(self, v20, v21, v22, v23, v24, v25, v26);
      if (*&v847[16] && MTLReportFailureTypeEnabled())
      {
        v826 = objc_opt_class();
        v828 = NSStringFromClass(v826);
        MTLReportFailure();
      }

      objc_msgSend_resultMatrixOrigin(self, v27, v28, v29, v30, v31, v32, v33, v828);
      objc_msgSend_resultMatrixOrigin(self, v34, v35, v36, v37, v38, v39, v40);
      if (*&v847[16] && MTLReportFailureTypeEnabled())
      {
        v827 = objc_opt_class();
        v829 = NSStringFromClass(v827);
        MTLReportFailure();
      }

      objc_msgSend_sourceMatrixOrigin(self, v41, v42, v43, v44, v45, v46, v47, v829);
    }

    else
    {
      memset(v847, 0, 24);
    }

    objc_msgSend_rows(sourceMatrix, v13, v14, v15, v16, v17, v18, v19, v828);
    objc_msgSend_sourceMatrixOrigin(self, v60, v61, v62, v63, v64, v65, v66);
    v67 = self->_order + *v847;
    if (v67 > objc_msgSend_rows(sourceMatrix, v68, v69, v70, v71, v72, v73, v74) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    objc_msgSend_sourceMatrixOrigin(self, v75, v76, v77, v78, v79, v80, v81);
    objc_msgSend_columns(sourceMatrix, v82, v83, v84, v85, v86, v87, v88);
    objc_msgSend_sourceMatrixOrigin(self, v89, v90, v91, v92, v93, v94, v95);
    v96 = self->_order + *&v847[8];
    if (v96 > objc_msgSend_columns(sourceMatrix, v97, v98, v99, v100, v101, v102, v103) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    objc_msgSend_resultMatrixOrigin(self, v104, v105, v106, v107, v108, v109, v110);
    objc_msgSend_rows(resultMatrix, v111, v112, v113, v114, v115, v116, v117);
    objc_msgSend_resultMatrixOrigin(self, v118, v119, v120, v121, v122, v123, v124);
    v125 = self->_order + *v847;
    if (v125 > objc_msgSend_rows(resultMatrix, v126, v127, v128, v129, v130, v131, v132) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    objc_msgSend_resultMatrixOrigin(self, v133, v134, v135, v136, v137, v138, v139);
    objc_msgSend_columns(resultMatrix, v140, v141, v142, v143, v144, v145, v146);
    objc_msgSend_resultMatrixOrigin(self, v147, v148, v149, v150, v151, v152, v153);
    v154 = self->_order + *&v847[8];
    if (v154 > objc_msgSend_columns(resultMatrix, v155, v156, v157, v158, v159, v160, v161) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (objc_msgSend_dataType(sourceMatrix, v162, v163, v164, v165, v166, v167, v168) == 268435488)
    {
      objc_msgSend_dataType(resultMatrix, v169, v170, v171, v172, v173, v174, v175);
    }

    if ((objc_msgSend_dataType(sourceMatrix, v169, v170, v171, v172, v173, v174, v175) != 268435488 || objc_msgSend_dataType(resultMatrix, v176, v177, v178, v179, v180, v181, v182) != 268435488) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v56 = objc_msgSend_isEqual_(sourceMatrix, v183, resultMatrix, v184, v185, v186, v187, v188);
  }

  objc_msgSend_sourceMatrixOrigin(self, v49, v50, v51, v52, v53, v54, v55);
  objc_msgSend_resultMatrixOrigin(self, v189, v190, v191, v192, v193, v194, v195);
  if (*v847 == v854)
  {
    objc_msgSend_sourceMatrixOrigin(self, v49, v50, v51, v52, v53, v54, v55);
    v58 = v849;
    objc_msgSend_resultMatrixOrigin(self, v196, v197, v198, v199, v200, v201, v202);
    v59 = 0;
    v57 = v846;
    if (v56)
    {
LABEL_24:
      if (v58 == v57)
      {
        goto LABEL_35;
      }
    }
  }

  else
  {
    v59 = 0;
  }

LABEL_27:
  v203 = objc_msgSend_order(self, v49, v50, v51, v52, v53, v54, v55);
  v218 = objc_msgSend_order(self, v204, v205, v206, v207, v208, v209, v210);
  if (v59)
  {
    v837 = 0;
    v840 = 0;
    v219 = 0;
    v843 = 0;
    memset(v847, 0, 24);
    v854 = 0;
    v855 = 0uLL;
    v848 = 0;
    v849 = 0;
    v850 = 0;
  }

  else
  {
    objc_msgSend_sourceMatrixOrigin(self, v211, v212, v213, v214, v215, v216, v217);
    v219 = *v847;
    objc_msgSend_sourceMatrixOrigin(self, v220, v221, v222, v223, v224, v225, v226);
    v843 = v855.i32[0];
    objc_msgSend_resultMatrixOrigin(self, v227, v228, v229, v230, v231, v232, v233);
    v840 = v848;
    objc_msgSend_resultMatrixOrigin(self, v234, v235, v236, v237, v238, v239, v240);
    v837 = v846;
  }

  v241 = sourceMatrix;
  v242 = objc_msgSend_rowBytes(sourceMatrix, v211, v212, v213, v214, v215, v216, v217);
  v250 = objc_msgSend_rowBytes(resultMatrix, v243, v244, v245, v246, v247, v248, v249);
  v251 = objc_alloc(MEMORY[0x277CD7210]);
  v263 = objc_msgSend_initWithCommandBuffer_withDispatchType_(v251, v252, commandBuffer, 0, v253, v254, v255, v256);
  v854 = v263;
  v855.i64[0] = self;
  if ((*(&self->super.super.super.isa + *MEMORY[0x277CD7378]) & 0x18) != 0)
  {
    v264 = *(&self->super.super.super.isa + *MEMORY[0x277CD7360]);
    if (v264)
    {
      goto LABEL_33;
    }

    v265 = objc_opt_class();
    v834 = v219;
    v266 = v218;
    v267 = v203;
    v268 = NSStringFromClass(v265);
    objc_msgSend_setLabel_(self, v269, v268, v270, v271, v272, v273, v274);
    v264 = v268;
    v203 = v267;
    v218 = v266;
    v219 = v834;
    if (v264)
    {
LABEL_33:
      objc_msgSend_setLabel_(v263, v257, v264, v258, v259, v260, v261, v262);
    }
  }

  v275 = *(&self->super.super.super.isa + *MEMORY[0x277CD7350]);
  *v847 = v203;
  *&v847[4] = v218;
  *&v847[8] = v219;
  *&v847[12] = v843;
  *&v847[16] = v840;
  *&v847[20] = v837;
  *&v847[24] = v242;
  *&v847[28] = v250;
  sub_2399E4C74(v275, v263, commandBuffer, v241, resultMatrix, v847, v261, v262);
  objc_msgSend_endEncoding(v263, v276, v277, v278, v279, v280, v281, v282);
  v8 = status;

LABEL_35:
  if (objc_msgSend_lower(self, v49, v50, v51, v52, v53, v54, v55))
  {
    v290 = *(&self->super.super.super.isa + *MEMORY[0x277CD7370]);
    v841 = objc_msgSend_order(self, v283, v284, v285, v286, v287, v288, v289);
    if (v841)
    {
      v838 = v8;
      if (!v8)
      {
        v298 = objc_msgSend_device(commandBuffer, v291, v292, v293, v294, v295, v296, v297);
        v838 = objc_msgSend_newBufferWithLength_options_(v298, v299, 4, 32, v300, v301, v302, v303);
      }

      objc_msgSend_resultMatrixOrigin(self, v291, v292, v293, v294, v295, v296, v297);
      v304 = *v847;
      v312 = objc_msgSend_rowBytes(resultMatrix, v305, v306, v307, v308, v309, v310, v311) * v304;
      objc_msgSend_resultMatrixOrigin(self, v313, v314, v315, v316, v317, v318, v319);
      v320 = v855.i64[0];
      v844 = v312 + v320 * (objc_msgSend_dataType(resultMatrix, v321, v322, v323, v324, v325, v326, v327) >> 3);
      ComputeState = MPSLibrary::GetComputeState();
      v832 = MPSLibrary::GetComputeState();
      v336 = objc_msgSend_maxTotalThreadsPerThreadgroup(ComputeState, v329, v330, v331, v332, v333, v334, v335);
      v835 = ComputeState;
      v344 = objc_msgSend_threadExecutionWidth(ComputeState, v337, v338, v339, v340, v341, v342, v343);
      v352 = 256;
      if (v336 < 0x100)
      {
LABEL_43:
        while (v352 > v344)
        {
          if (--v352 <= v336)
          {
            goto LABEL_42;
          }
        }
      }

      else
      {
LABEL_42:
        if ((v352 & (v344 - 1)) != 0)
        {
          goto LABEL_43;
        }
      }

      v830 = commandBuffer;
      v353 = objc_msgSend_maxTotalThreadsPerThreadgroup(v832, v345, v346, v347, v348, v349, v350, v351);
      v361 = objc_msgSend_threadExecutionWidth(v832, v354, v355, v356, v357, v358, v359, v360);
      v362 = v361 - 1;
      v363 = 1;
      if (v352 == 1)
      {
        if (!v353)
        {
          goto LABEL_47;
        }

LABEL_46:
        if ((v363 & v362) != 0)
        {
LABEL_47:
          while (v363 > v361)
          {
            if (--v363 <= v353)
            {
              goto LABEL_46;
            }
          }
        }
      }

      else
      {
        while ((v352 > v353 || (v352 & v362) != 0) && v352 > v361)
        {
          --v352;
        }
      }

      v472 = objc_alloc(MEMORY[0x277CD7210]);
      v484 = objc_msgSend_initWithCommandBuffer_withDispatchType_(v472, v473, v830, 0, v474, v475, v476, v477);
      if ((*(&self->super.super.super.isa + *MEMORY[0x277CD7378]) & 0x18) != 0)
      {
        v485 = *(&self->super.super.super.isa + *MEMORY[0x277CD7360]);
        if (v485 || (v486 = objc_opt_class(), v487 = NSStringFromClass(v486), objc_msgSend_setLabel_(self, v488, v487, v489, v490, v491, v492, v493), (v485 = v487) != 0))
        {
          objc_msgSend_setLabel_(v484, v478, v485, v479, v480, v481, v482, v483);
        }
      }

      v494 = 0;
      v495 = v841 - 1;
      __asm { FMOV            V0.2S, #-1.0 }

      v501 = -_D0;
      do
      {
        v502 = (v352 + v494 - 1) / v352;
        if (v502 <= 1)
        {
          LODWORD(v502) = 1;
        }

        v851 = v494;
        v852 = v502;
        v853 = 4;
        objc_msgSend_setComputePipelineState_(v484, v478, v835, v479, v480, v481, v482, v483);
        v510 = objc_msgSend_data(resultMatrix, v503, v504, v505, v506, v507, v508, v509);
        v518 = objc_msgSend_rowBytes(resultMatrix, v511, v512, v513, v514, v515, v516, v517);
        objc_msgSend_setBuffer_offset_atIndex_(v484, v519, v510, *(&resultMatrix->super.isa + *MEMORY[0x277CD73A8]) + v844 + v518 * v494, 0, v520, v521, v522);
        objc_msgSend_setBytes_length_atIndex_(v484, v523, &v851, 12, 1, v524, v525, v526);
        objc_msgSend_setBuffer_offset_atIndex_(v484, v527, v838, 0, 2, v528, v529, v530);
        objc_msgSend_setThreadgroupMemoryLength_atIndex_(v484, v531, 4 * v352, 0, v532, v533, v534, v535);
        *v847 = vdupq_n_s64(1uLL);
        *&v847[16] = 1;
        v854 = v352;
        v855.i64[0] = v363;
        v855.i64[1] = 1;
        objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v484, v536, v847, &v854, v537, v538, v539, v540);
        v542 = v494 + 1;
        if (v494 + 1 < v841)
        {
          memset(&v847[12], 0, 24);
          *v847 = v495;
          *&v847[4] = 1;
          *&v847[8] = v494;
          *&v847[12] = objc_msgSend_rowBytes(resultMatrix, v478, v541, v479, v480, v481, v482, v483);
          *&v847[16] = objc_msgSend_rowBytes(resultMatrix, v543, v544, v545, v546, v547, v548, v549);
          *&v847[20] = objc_msgSend_rowBytes(resultMatrix, v550, v551, v552, v553, v554, v555, v556);
          *&v847[24] = objc_msgSend_rowBytes(resultMatrix, v557, v558, v559, v560, v561, v562, v563);
          *&v847[28] = v501;
          objc_msgSend_setComputePipelineState_(v484, v564, v832, v565, v566, v567, v568, v569);
          v577 = objc_msgSend_data(resultMatrix, v570, v571, v572, v573, v574, v575, v576);
          v585 = objc_msgSend_rowBytes(resultMatrix, v578, v579, v580, v581, v582, v583, v584);
          objc_msgSend_setBuffer_offset_atIndex_(v484, v586, v577, *(&resultMatrix->super.isa + *MEMORY[0x277CD73A8]) + v844 + v585 * v494, 0, v587, v588, v589);
          v597 = objc_msgSend_data(resultMatrix, v590, v591, v592, v593, v594, v595, v596);
          v605 = objc_msgSend_rowBytes(resultMatrix, v598, v599, v600, v601, v602, v603, v604);
          objc_msgSend_setBuffer_offset_atIndex_(v484, v606, v597, *(&resultMatrix->super.isa + *MEMORY[0x277CD73A8]) + v844 + v605 * v542, 1, v607, v608, v609);
          v617 = objc_msgSend_data(resultMatrix, v610, v611, v612, v613, v614, v615, v616);
          v625 = objc_msgSend_rowBytes(resultMatrix, v618, v619, v620, v621, v622, v623, v624);
          v633 = objc_msgSend_dataType(resultMatrix, v626, v627, v628, v629, v630, v631, v632);
          objc_msgSend_setBuffer_offset_atIndex_(v484, v634, v617, *(&resultMatrix->super.isa + *MEMORY[0x277CD73A8]) + v844 + (v625 + (v633 >> 3)) * v494, 2, v635, v636, v637);
          objc_msgSend_setBytes_length_atIndex_(v484, v638, v847, 36, 3, v639, v640, v641);
          objc_msgSend_setBuffer_offset_atIndex_(v484, v642, v838, 0, 4, v643, v644, v645);
          v854 = (v352 - 1 + *v847) / v352;
          v855 = vdupq_n_s64(1uLL);
          v848 = v352;
          v849 = v363;
          v850 = 1;
          objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v484, v646, &v854, &v848, v647, v648, v649, v650);
        }

        --v495;
        ++v494;
      }

      while (v841 != v542);
      if (!status)
      {
        if ((objc_msgSend_retainedReferences(v830, v478, v541, v479, v480, v481, v482, v483) & 1) == 0)
        {
          v809 = v838;
          *v847 = MEMORY[0x277D85DD0];
          *&v847[8] = 3221225472;
          *&v847[16] = sub_2399D9A20;
          *&v847[24] = &unk_278AFD238;
          *&v847[32] = v838;
          objc_msgSend_addCompletedHandler_(v830, v810, v847, v811, v812, v813, v814, v815);
        }
      }

      objc_msgSend_endEncoding(v484, v478, v541, v479, v480, v481, v482, v483);

      return;
    }

LABEL_76:
    if (v8)
    {
      v461 = objc_msgSend_blitCommandEncoder(commandBuffer, v291, v292, v293, v294, v295, v296, v297);
      objc_msgSend_fillBuffer_range_value_(v461, v462, v8, 0, 4, 0, v463, v464);
      objc_msgSend_endEncoding(v461, v465, v466, v467, v468, v469, v470, v471);
    }

    return;
  }

  v364 = *(&self->super.super.super.isa + *MEMORY[0x277CD7370]);
  v842 = objc_msgSend_order(self, v283, v284, v285, v286, v287, v288, v289);
  if (!v842)
  {
    goto LABEL_76;
  }

  v839 = v8;
  if (!v8)
  {
    v365 = objc_msgSend_device(commandBuffer, v291, v292, v293, v294, v295, v296, v297);
    v839 = objc_msgSend_newBufferWithLength_options_(v365, v366, 4, 32, v367, v368, v369, v370);
  }

  v371 = objc_alloc(MEMORY[0x277CD7210]);
  v384 = objc_msgSend_initWithCommandBuffer_withDispatchType_(v371, v372, commandBuffer, 0, v373, v374, v375, v376);
  if ((*(&self->super.super.super.isa + *MEMORY[0x277CD7378]) & 0x18) != 0)
  {
    v378 = *(&self->super.super.super.isa + *MEMORY[0x277CD7360]);
    if (v378 || (v385 = objc_opt_class(), v386 = NSStringFromClass(v385), objc_msgSend_setLabel_(self, v387, v386, v388, v389, v390, v391, v392), (v378 = v386) != 0))
    {
      objc_msgSend_setLabel_(v384, v377, v378, v379, v380, v381, v382, v383);
    }
  }

  objc_msgSend_resultMatrixOrigin(self, v377, v378, v379, v380, v381, v382, v383);
  v393 = *v847;
  v401 = objc_msgSend_rowBytes(resultMatrix, v394, v395, v396, v397, v398, v399, v400);
  objc_msgSend_resultMatrixOrigin(self, v402, v403, v404, v405, v406, v407, v408);
  v409 = v855.i64[0];
  v417 = objc_msgSend_dataType(resultMatrix, v410, v411, v412, v413, v414, v415, v416);
  v836 = MPSLibrary::GetComputeState();
  v833 = MPSLibrary::GetComputeState();
  v418 = v836;
  v426 = objc_msgSend_maxTotalThreadsPerThreadgroup(v836, v419, v420, v421, v422, v423, v424, v425);
  v434 = objc_msgSend_threadExecutionWidth(v836, v427, v428, v429, v430, v431, v432, v433);
  v845 = v401 * v393 + v409 * (v417 >> 3);
  v442 = 256;
  if (v426 < 0x100)
  {
LABEL_65:
    while (v442 > v434)
    {
      if (--v442 <= v426)
      {
        goto LABEL_64;
      }
    }
  }

  else
  {
LABEL_64:
    if ((v442 & (v434 - 1)) != 0)
    {
      goto LABEL_65;
    }
  }

  v443 = objc_msgSend_maxTotalThreadsPerThreadgroup(v833, v435, v436, v437, v438, v439, v440, v441);
  v451 = objc_msgSend_threadExecutionWidth(v833, v444, v445, v446, v447, v448, v449, v450);
  v459 = v451 - 1;
  v460 = 1;
  if (v442 == 1)
  {
    if (!v443)
    {
      goto LABEL_69;
    }

LABEL_68:
    if ((v460 & v459) != 0)
    {
LABEL_69:
      while (v460 > v451)
      {
        if (--v460 <= v443)
        {
          goto LABEL_68;
        }
      }
    }
  }

  else
  {
    while ((v442 > v443 || (v442 & v459) != 0) && v442 > v451)
    {
      --v442;
    }
  }

  v651 = 0;
  v652 = v842 - 1;
  __asm { FMOV            V0.2S, #-1.0 }

  v654 = -_D0;
  do
  {
    v655 = (v442 + v651 - 1) / v442;
    if (v655 <= 1)
    {
      LODWORD(v655) = 1;
    }

    v851 = v651;
    v852 = v655;
    v853 = 0;
    v853 = objc_msgSend_rowBytes(resultMatrix, v452, v453, v454, v455, v456, v457, v458);
    objc_msgSend_setComputePipelineState_(v384, v656, v418, v657, v658, v659, v660, v661);
    v669 = objc_msgSend_data(resultMatrix, v662, v663, v664, v665, v666, v667, v668);
    v677 = objc_msgSend_dataType(resultMatrix, v670, v671, v672, v673, v674, v675, v676);
    objc_msgSend_setBuffer_offset_atIndex_(v384, v678, v669, *(&resultMatrix->super.isa + *MEMORY[0x277CD73A8]) + v845 + v651 * (v677 >> 3), 0, v679, v680, v681);
    objc_msgSend_setBytes_length_atIndex_(v384, v682, &v851, 12, 1, v683, v684, v685);
    objc_msgSend_setBuffer_offset_atIndex_(v384, v686, v839, 0, 2, v687, v688, v689);
    objc_msgSend_setThreadgroupMemoryLength_atIndex_(v384, v690, 4 * v442, 0, v691, v692, v693, v694);
    *v847 = vdupq_n_s64(1uLL);
    *&v847[16] = 1;
    v854 = v442;
    v855.i64[0] = v460;
    v855.i64[1] = 1;
    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v384, v695, v847, &v854, v696, v697, v698, v699);
    v700 = v651 + 1;
    if (v651 + 1 < v842)
    {
      memset(&v847[12], 0, 24);
      *v847 = 1;
      *&v847[4] = v652;
      *&v847[8] = v651;
      *&v847[12] = objc_msgSend_rowBytes(resultMatrix, v452, v453, v454, v455, v456, v457, v458);
      *&v847[16] = objc_msgSend_rowBytes(resultMatrix, v701, v702, v703, v704, v705, v706, v707);
      *&v847[20] = objc_msgSend_rowBytes(resultMatrix, v708, v709, v710, v711, v712, v713, v714);
      *&v847[24] = objc_msgSend_rowBytes(resultMatrix, v715, v716, v717, v718, v719, v720, v721);
      *&v847[28] = v654;
      objc_msgSend_setComputePipelineState_(v384, v722, v833, v723, v724, v725, v726, v727);
      v735 = objc_msgSend_data(resultMatrix, v728, v729, v730, v731, v732, v733, v734);
      v743 = objc_msgSend_dataType(resultMatrix, v736, v737, v738, v739, v740, v741, v742);
      objc_msgSend_setBuffer_offset_atIndex_(v384, v744, v735, *(&resultMatrix->super.isa + *MEMORY[0x277CD73A8]) + v845 + v651 * (v743 >> 3), 0, v745, v746, v747);
      v755 = objc_msgSend_data(resultMatrix, v748, v749, v750, v751, v752, v753, v754);
      v763 = objc_msgSend_dataType(resultMatrix, v756, v757, v758, v759, v760, v761, v762);
      objc_msgSend_setBuffer_offset_atIndex_(v384, v764, v755, *(&resultMatrix->super.isa + *MEMORY[0x277CD73A8]) + v845 + v700 * (v763 >> 3), 1, v765, v766, v767);
      v775 = objc_msgSend_data(resultMatrix, v768, v769, v770, v771, v772, v773, v774);
      v783 = objc_msgSend_dataType(resultMatrix, v776, v777, v778, v779, v780, v781, v782);
      v791 = objc_msgSend_rowBytes(resultMatrix, v784, v785, v786, v787, v788, v789, v790);
      objc_msgSend_setBuffer_offset_atIndex_(v384, v792, v775, *(&resultMatrix->super.isa + *MEMORY[0x277CD73A8]) + v845 + (v791 + (v783 >> 3)) * v651, 2, v793, v794, v795);
      objc_msgSend_setBytes_length_atIndex_(v384, v796, v847, 36, 3, v797, v798, v799);
      objc_msgSend_setBuffer_offset_atIndex_(v384, v800, v839, 0, 4, v801, v802, v803);
      v854 = (v442 - 1 + *&v847[4]) / v442;
      v855 = vdupq_n_s64(1uLL);
      v848 = v442;
      v849 = v460;
      v850 = 1;
      objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v384, v804, &v854, &v848, v805, v806, v807, v808);
    }

    --v652;
    ++v651;
    _ZF = v842 == v700;
    v418 = v836;
  }

  while (!_ZF);
  if (!status)
  {
    if ((objc_msgSend_retainedReferences(commandBuffer, v452, v453, v454, v455, v456, v457, v458) & 1) == 0)
    {
      v816 = v839;
      *v847 = MEMORY[0x277D85DD0];
      *&v847[8] = 3221225472;
      *&v847[16] = sub_2399D9A28;
      *&v847[24] = &unk_278AFD238;
      *&v847[32] = v839;
      objc_msgSend_addCompletedHandler_(commandBuffer, v817, v847, v818, v819, v820, v821, v822);
    }
  }

  objc_msgSend_endEncoding(v384, v452, v453, v454, v455, v456, v457, v458);
}

@end