@interface MPSMatrixVectorMultiplication
- (MPSMatrixVectorMultiplication)initWithDevice:(id)device transpose:(BOOL)transpose rows:(NSUInteger)rows columns:(NSUInteger)columns alpha:(double)alpha beta:(double)beta;
- (id)copyWithZone:(_NSZone *)a3 device:(id)a4;
- (void)dealloc;
- (void)encodeToCommandBuffer:(id)commandBuffer inputMatrix:(MPSMatrix *)inputMatrix inputVector:(MPSVector *)inputVector resultVector:(MPSVector *)resultVector;
- (void)setPrimarySourceMatrixOrigin:(id *)a3;
- (void)setResultMatrixOrigin:(id *)a3;
- (void)setSecondarySourceMatrixOrigin:(id *)a3;
@end

@implementation MPSMatrixVectorMultiplication

- (MPSMatrixVectorMultiplication)initWithDevice:(id)device transpose:(BOOL)transpose rows:(NSUInteger)rows columns:(NSUInteger)columns alpha:(double)alpha beta:(double)beta
{
  v14.receiver = self;
  v14.super_class = MPSMatrixVectorMultiplication;
  result = [(MPSMatrixBinaryKernel *)&v14 initWithDevice:device];
  if (result)
  {
    result->_resultMatrixOrigin.y = 0;
    result->_resultMatrixOrigin.z = 0;
    result->_resultMatrixOrigin.x = 0;
    result->_primarySourceMatrixOrigin.y = 0;
    result->_primarySourceMatrixOrigin.z = 0;
    result->_primarySourceMatrixOrigin.x = 0;
    result->_secondarySourceMatrixOrigin.y = 0;
    result->_secondarySourceMatrixOrigin.z = 0;
    result->_secondarySourceMatrixOrigin.x = 0;
    result->_batchStart = 0;
    result->_batchSize = -1;
    result->_transpose = transpose;
    result->_alpha = alpha;
    result->_beta = beta;
    result->_M = rows;
    result->_N = columns;
    result->_plugin = 0;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3 device:(id)a4
{
  v9.receiver = self;
  v9.super_class = MPSMatrixVectorMultiplication;
  result = [(MPSMatrixBinaryKernel *)&v9 copyWithZone:a3 device:a4];
  if (result)
  {
    z = self->_resultMatrixOrigin.z;
    *(result + 15) = *&self->_resultMatrixOrigin.x;
    *(result + 32) = z;
    v7 = self->_primarySourceMatrixOrigin.z;
    *(result + 264) = *&self->_primarySourceMatrixOrigin.x;
    *(result + 35) = v7;
    v8 = self->_secondarySourceMatrixOrigin.z;
    *(result + 18) = *&self->_secondarySourceMatrixOrigin.x;
    *(result + 38) = v8;
    *(result + 24) = self->_batchStart;
    *(result + 25) = self->_batchSize;
    *(result + 184) = self->_transpose;
    *(result + 26) = *&self->_alpha;
    *(result + 27) = *&self->_beta;
    *(result + 28) = self->_M;
    *(result + 29) = self->_N;
    *(result + 22) = 0;
  }

  return result;
}

- (void)encodeToCommandBuffer:(id)commandBuffer inputMatrix:(MPSMatrix *)inputMatrix inputVector:(MPSVector *)inputVector resultVector:(MPSVector *)resultVector
{
  v12 = *MEMORY[0x277CD7378];
  if (*(&self->super.super.super.isa + v12))
  {
    goto LABEL_41;
  }

  if (!commandBuffer && MTLReportFailureTypeEnabled())
  {
    v553 = objc_opt_class();
    v558 = NSStringFromClass(v553);
    MTLReportFailure();
  }

  if (!inputMatrix && MTLReportFailureTypeEnabled())
  {
    v554 = objc_opt_class();
    v558 = NSStringFromClass(v554);
    MTLReportFailure();
  }

  if (!inputVector && MTLReportFailureTypeEnabled())
  {
    v555 = objc_opt_class();
    v558 = NSStringFromClass(v555);
    MTLReportFailure();
  }

  if (!resultVector && MTLReportFailureTypeEnabled())
  {
    v556 = objc_opt_class();
    v558 = NSStringFromClass(v556);
    MTLReportFailure();
  }

  if ((self->_secondarySourceMatrixOrigin.z || self->_secondarySourceMatrixOrigin.y) && MTLReportFailureTypeEnabled())
  {
    v13 = objc_opt_class();
    v558 = NSStringFromClass(v13);
    MTLReportFailure();
  }

  p_primarySourceMatrixOrigin = &self->_primarySourceMatrixOrigin;
  if (self->_primarySourceMatrixOrigin.z && MTLReportFailureTypeEnabled())
  {
    v557 = objc_opt_class();
    v558 = NSStringFromClass(v557);
    MTLReportFailure();
  }

  if ((self->_resultMatrixOrigin.z || self->_resultMatrixOrigin.y) && MTLReportFailureTypeEnabled())
  {
    v15 = objc_opt_class();
    v558 = NSStringFromClass(v15);
    MTLReportFailure();
  }

  objc_msgSend_matrices(inputMatrix, a2, commandBuffer, inputMatrix, inputVector, resultVector, v6, v7, v558);
  batchStart = self->_batchStart;
  if (batchStart >= objc_msgSend_matrices(inputMatrix, v17, v18, v19, v20, v21, v22, v23) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  objc_msgSend_vectors(inputVector, v24, v25, v26, v27, v28, v29, v30);
  v31 = self->_batchStart;
  if (v31 >= objc_msgSend_vectors(inputVector, v32, v33, v34, v35, v36, v37, v38) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  objc_msgSend_vectors(resultVector, v39, v40, v41, v42, v43, v44, v45);
  v46 = self->_batchStart;
  if (v46 >= objc_msgSend_vectors(resultVector, v47, v48, v49, v50, v51, v52, v53) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  objc_msgSend_length(resultVector, v54, v55, v56, v57, v58, v59, v60);
  v61 = self->_M + self->_resultMatrixOrigin.x;
  if (v61 > objc_msgSend_length(resultVector, v62, v63, v64, v65, v66, v67, v68) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  objc_msgSend_dataType(inputMatrix, v69, v70, v71, v72, v73, v74, v75);
  objc_msgSend_dataType(inputVector, v76, v77, v78, v79, v80, v81, v82);
  v90 = objc_msgSend_dataType(inputMatrix, v83, v84, v85, v86, v87, v88, v89);
  if (v90 != objc_msgSend_dataType(inputVector, v91, v92, v93, v94, v95, v96, v97) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (objc_msgSend_dataType(inputMatrix, v98, v99, v100, v101, v102, v103, v104) != 268435488 && objc_msgSend_dataType(inputMatrix, v105, v106, v107, v108, v109, v110, v111) != 268435472)
  {
    objc_msgSend_dataType(inputMatrix, v105, v106, v107, v108, v109, v110, v111);
  }

  if (objc_msgSend_dataType(inputMatrix, v105, v106, v107, v108, v109, v110, v111) != 268435488 && objc_msgSend_dataType(inputMatrix, v112, v113, v114, v115, v116, v117, v118) != 268435472 && objc_msgSend_dataType(inputMatrix, v112, v113, v114, v115, v116, v117, v118) != 536870920 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v119 = objc_msgSend_dataType(inputMatrix, v112, v113, v114, v115, v116, v117, v118);
  v127 = objc_msgSend_dataType(resultVector, v120, v121, v122, v123, v124, v125, v126);
  if (v119 == 536870920)
  {
    if (objc_msgSend_dataType(resultVector, v128, v129, v130, v131, v132, v133, v134) != 268435472 && MTLReportFailureTypeEnabled())
    {
LABEL_105:
      MTLReportFailure();
    }
  }

  else
  {
    if (v127 != 268435488)
    {
      objc_msgSend_dataType(resultVector, v128, v129, v130, v131, v132, v133, v134);
    }

    if (objc_msgSend_dataType(resultVector, v128, v129, v130, v131, v132, v133, v134) != 268435488 && objc_msgSend_dataType(resultVector, v135, v136, v137, v138, v139, v140, v141) != 268435472 && MTLReportFailureTypeEnabled())
    {
      goto LABEL_105;
    }
  }

  if (self->_transpose)
  {
    objc_msgSend_rows(inputMatrix, v135, v136, v137, v138, v139, v140, v141);
    v142 = self->_N + p_primarySourceMatrixOrigin->x;
    if (v142 > objc_msgSend_rows(inputMatrix, v143, v144, v145, v146, v147, v148, v149) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    objc_msgSend_columns(inputMatrix, v150, v151, v152, v153, v154, v155, v156);
    v157 = self->_M + self->_primarySourceMatrixOrigin.y;
    if (v157 > objc_msgSend_columns(inputMatrix, v158, v159, v160, v161, v162, v163, v164) && MTLReportFailureTypeEnabled())
    {
LABEL_101:
      MTLReportFailure();
    }
  }

  else
  {
    objc_msgSend_rows(inputMatrix, v135, v136, v137, v138, v139, v140, v141);
    v165 = self->_M + p_primarySourceMatrixOrigin->x;
    if (v165 > objc_msgSend_rows(inputMatrix, v166, v167, v168, v169, v170, v171, v172) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    objc_msgSend_columns(inputMatrix, v173, v174, v175, v176, v177, v178, v179);
    v180 = self->_N + self->_primarySourceMatrixOrigin.y;
    if (v180 > objc_msgSend_columns(inputMatrix, v181, v182, v183, v184, v185, v186, v187) && MTLReportFailureTypeEnabled())
    {
      goto LABEL_101;
    }
  }

LABEL_41:
  v188 = objc_alloc(MEMORY[0x277CD7210]);
  v201 = objc_msgSend_initWithCommandBuffer_withDispatchType_(v188, v189, commandBuffer, 0, v190, v191, v192, v193);
  if ((*(&self->super.super.super.isa + v12) & 0x18) != 0)
  {
    v195 = *(&self->super.super.super.isa + *MEMORY[0x277CD7360]);
    if (v195 || (v202 = objc_opt_class(), v203 = NSStringFromClass(v202), objc_msgSend_setLabel_(self, v204, v203, v205, v206, v207, v208, v209), (v195 = v203) != 0))
    {
      objc_msgSend_setLabel_(v201, v194, v195, v196, v197, v198, v199, v200);
    }
  }

  v577 = v201;
  v210 = inputMatrix;
  v211 = resultVector;
  if (objc_msgSend_batchSize(self, v194, v195, v196, v197, v198, v199, v200))
  {
    v219 = objc_msgSend_matrices(inputMatrix, v212, v213, v214, v215, v216, v217, v218);
    v227 = objc_msgSend_batchStart(self, v220, v221, v222, v223, v224, v225, v226);
    v235 = objc_msgSend_vectors(inputVector, v228, v229, v230, v231, v232, v233, v234);
    v243 = objc_msgSend_batchStart(self, v236, v237, v238, v239, v240, v241, v242);
    v251 = objc_msgSend_vectors(resultVector, v244, v245, v246, v247, v248, v249, v250);
    v259 = objc_msgSend_batchStart(self, v252, v253, v254, v255, v256, v257, v258);
    v267 = objc_msgSend_batchSize(self, v260, v261, v262, v263, v264, v265, v266);
    v268 = v219 - v227;
    if (v219 - v227 >= (v235 - v243))
    {
      v268 = v235 - v243;
    }

    if (v268 >= v251 - v259)
    {
      v268 = v251 - v259;
    }

    if (v268 >= v267)
    {
      v268 = v267;
    }

    v559 = v268;
    if (v268)
    {
      for (i = 0; v559 != i; ++i)
      {
        v574 = objc_msgSend_batchStart(self, v212, v213, v214, v215, v216, v217, v218);
        v575 = *(&self->super.super.super.isa + *MEMORY[0x277CD7370]);
        objc_msgSend_primarySourceMatrixOrigin(self, v270, v271, v272, v273, v274, v275, v276);
        v573 = v582;
        v572 = objc_msgSend_dataType(v210, v277, v278, v279, v280, v281, v282, v283);
        objc_msgSend_primarySourceMatrixOrigin(self, v284, v285, v286, v287, v288, v289, v290);
        v571 = v588;
        v570 = objc_msgSend_rowBytes(v210, v291, v292, v293, v294, v295, v296, v297);
        v569 = objc_msgSend_matrixBytes(v210, v298, v299, v300, v301, v302, v303, v304);
        v568 = *(&v210->super.isa + *MEMORY[0x277CD73A8]);
        objc_msgSend_secondarySourceMatrixOrigin(self, v305, v306, v307, v308, v309, v310, v311);
        v567 = v581;
        v566 = objc_msgSend_dataType(inputVector, v312, v313, v314, v315, v316, v317, v318);
        v565 = objc_msgSend_vectorBytes(inputVector, v319, v320, v321, v322, v323, v324, v325);
        v564 = *(&inputVector->super.isa + *MEMORY[0x277CD74A8]);
        objc_msgSend_resultMatrixOrigin(self, v326, v327, v328, v329, v330, v331, v332);
        v563 = v581;
        v562 = objc_msgSend_dataType(v211, v333, v334, v335, v336, v337, v338, v339);
        v561 = objc_msgSend_vectorBytes(v211, v340, v341, v342, v343, v344, v345, v346);
        v560 = *(&v211->super.isa + *MEMORY[0x277CD74A8]);
        if (objc_msgSend_dataType(v210, v347, v348, v349, v350, v351, v352, v353) == 536870920)
        {
          objc_msgSend_transpose(self, v354, v355, v356, v357, v358, v359, v360);
        }

        else
        {
          if (objc_msgSend_dataType(v210, v354, v355, v356, v357, v358, v359, v360) == 268435472)
          {
            objc_msgSend_dataType(v211, v361, v362, v363, v364, v365, v366, v367);
          }

          objc_msgSend_transpose(self, v361, v362, v363, v364, v365, v366, v367);
        }

        ComputeState = MPSLibrary::GetComputeState();
        v376 = objc_msgSend_M(self, v369, v370, v371, v372, v373, v374, v375);
        v581 = v376 | 0x100000000;
        LODWORD(v582) = objc_msgSend_N(self, v377, v378, v379, v380, v381, v382, v383);
        HIDWORD(v582) = objc_msgSend_rowBytes(v210, v384, v385, v386, v387, v388, v389, v390);
        v398 = objc_msgSend_length(inputVector, v391, v392, v393, v394, v395, v396, v397);
        v583 = (objc_msgSend_dataType(inputVector, v399, v400, v401, v402, v403, v404, v405) >> 3) * v398;
        v413 = objc_msgSend_length(v211, v406, v407, v408, v409, v410, v411, v412);
        v584 = (objc_msgSend_dataType(v211, v414, v415, v416, v417, v418, v419, v420) >> 3) * v413;
        v428 = objc_msgSend_length(v211, v421, v422, v423, v424, v425, v426, v427);
        v585 = (objc_msgSend_dataType(v211, v429, v430, v431, v432, v433, v434, v435) >> 3) * v428;
        objc_msgSend_alpha(self, v436, v437, v438, v439, v440, v441, v442);
        *&v443 = v443;
        v586 = LODWORD(v443);
        objc_msgSend_beta(self, v444, v445, v446, v447, v448, v449, v450);
        *&v451 = v451;
        v587 = LODWORD(v451);
        v452 = *(v575 + 32);
        v588 = 0uLL;
        v589 = 0;
        (*(*v452 + 16))(&v588);
        v460 = objc_msgSend_transpose(self, v453, v454, v455, v456, v457, v458, v459);
        v461 = *(&v588 + 1);
        v462 = v588;
        v463 = v589;
        v471 = objc_msgSend_maxTotalThreadsPerThreadgroup(ComputeState, v464, v465, v466, v467, v468, v469, v470);
        if (v460)
        {
          if (v461 * v462 > v471)
          {
            if (v462 >= v471 / v461)
            {
              v462 = v471 / v461;
            }

LABEL_68:
            v463 = 1;
          }
        }

        else if (v461 * v462 > v471)
        {
          if (v461 >= v471 / v462)
          {
            v461 = v471 / v462;
          }

          goto LABEL_68;
        }

        *&v588 = v462;
        *(&v588 + 1) = v461;
        v589 = v463;
        v486 = v376;
        if (objc_msgSend_transpose(self, v472, v473, v474, v475, v476, v477, v478))
        {
          v487 = v588;
          v488 = objc_msgSend_dataType(v210, v479, v480, v481, v482, v483, v484, v485);
          v489 = v588;
          v497 = objc_msgSend_dataType(v210, v490, v491, v492, v493, v494, v495, v496);
          v498 = v486 + v487 * (0x10u / (v488 >> 3)) - 1;
          v499 = 1;
          v500 = v498 / (v489 * (0x10u / (v497 >> 3)));
        }

        else
        {
          v500 = 1;
          v499 = (v376 + *(&v588 + 1) - 1) / *(&v588 + 1);
        }

        objc_msgSend_setComputePipelineState_(v577, v479, ComputeState, v481, v482, v483, v484, v485);
        v508 = objc_msgSend_data(v210, v501, v502, v503, v504, v505, v506, v507);
        objc_msgSend_setBuffer_offset_atIndex_(v577, v509, v508, v573 * (v572 >> 3) + v570 * v571 + v569 * (i + v574) + v568, 0, v510, v511, v512);
        v520 = objc_msgSend_data(inputVector, v513, v514, v515, v516, v517, v518, v519);
        objc_msgSend_setBuffer_offset_atIndex_(v577, v521, v520, v567 * (v566 >> 3) + v565 * (i + v574) + v564, 1, v522, v523, v524);
        v532 = objc_msgSend_data(v211, v525, v526, v527, v528, v529, v530, v531);
        objc_msgSend_setBuffer_offset_atIndex_(v577, v533, v532, v563 * (v562 >> 3) + v561 * (i + v574) + v560, 2, v534, v535, v536);
        objc_msgSend_setBytes_length_atIndex_(v577, v537, &v581, 36, 3, v538, v539, v540);
        if ((objc_msgSend_transpose(self, v541, v542, v543, v544, v545, v546, v547) & 1) == 0)
        {
          objc_msgSend_setThreadgroupMemoryLength_atIndex_(v577, v548, 4 * *(&v588 + 1) * (v588 + (v588 >> 1)), 0, v549, v550, v551, v552);
        }

        v580[0] = v500;
        v580[1] = v499;
        v580[2] = 1;
        v578 = v588;
        v579 = v589;
        objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v577, v548, v580, &v578, v549, v550, v551, v552);
        MPSLibrary::ReleaseComputeState();
      }
    }
  }

  objc_msgSend_endEncoding(v577, v212, v213, v214, v215, v216, v217, v218);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MPSMatrixVectorMultiplication;
  [(MPSKernel *)&v3 dealloc];
}

- (void)setResultMatrixOrigin:(id *)a3
{
  var2 = a3->var2;
  *&self->_resultMatrixOrigin.x = *&a3->var0;
  self->_resultMatrixOrigin.z = var2;
}

- (void)setPrimarySourceMatrixOrigin:(id *)a3
{
  var2 = a3->var2;
  *&self->_primarySourceMatrixOrigin.x = *&a3->var0;
  self->_primarySourceMatrixOrigin.z = var2;
}

- (void)setSecondarySourceMatrixOrigin:(id *)a3
{
  var2 = a3->var2;
  *&self->_secondarySourceMatrixOrigin.x = *&a3->var0;
  self->_secondarySourceMatrixOrigin.z = var2;
}

@end