@interface MPSMatrixDecompositionLU
- (MPSMatrixDecompositionLU)initWithDevice:(id)device rows:(NSUInteger)rows columns:(NSUInteger)columns;
- (void)dealloc;
- (void)encodeToCommandBuffer:(id)commandBuffer sourceMatrix:(MPSMatrix *)sourceMatrix resultMatrix:(MPSMatrix *)resultMatrix pivotIndices:(MPSMatrix *)pivotIndices status:(id)status;
- (void)encodeToCommandEncoder:(id)encoder commandBuffer:(id)buffer sourceMatrix:(id)matrix resultMatrix:(id)resultMatrix pivotIndices:(id)indices status:(id)status;
@end

@implementation MPSMatrixDecompositionLU

- (MPSMatrixDecompositionLU)initWithDevice:(id)device rows:(NSUInteger)rows columns:(NSUInteger)columns
{
  v30.receiver = self;
  v30.super_class = MPSMatrixDecompositionLU;
  result = [(MPSMatrixUnaryKernel *)&v30 initWithDevice:?];
  if (result)
  {
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v15 = result;
    objc_msgSend_setResultMatrixOrigin_(result, v9, &v27, v10, v11, v12, v13, v14);
    v27 = 0;
    v28 = 0;
    v29 = 0;
    objc_msgSend_setSourceMatrixOrigin_(v15, v16, &v27, v17, v18, v19, v20, v21);
    v15->_rows = rows;
    v15->_columns = columns;
    v22 = [MPSMatrixMultiplication alloc];
    v15->_gemmKernel = objc_msgSend_initWithDevice_transposeLeft_transposeRight_resultRows_resultColumns_interiorColumns_alpha_beta_(v22, v23, device, 0, 0, v15->_rows, v15->_columns, 128, -1.0, 1.0);
    v24 = [MPSMatrixSolveTriangular alloc];
    v26 = objc_msgSend_initWithDevice_right_upper_transpose_unit_order_numberOfRightHandSides_alpha_(v24, v25, device, 0, 0, 0, 1, 128, 1.0, v15->_columns);
    result = v15;
    v15->_trsmKernel = v26;
  }

  return result;
}

- (void)encodeToCommandEncoder:(id)encoder commandBuffer:(id)buffer sourceMatrix:(id)matrix resultMatrix:(id)resultMatrix pivotIndices:(id)indices status:(id)status
{
  bufferCopy3 = buffer;
  if (objc_msgSend_options(self, a2, encoder, buffer, matrix, resultMatrix, indices, status))
  {
    isEqual = objc_msgSend_isEqual_(matrix, v14, resultMatrix, v16, v17, v18, v19, v20);
    v57 = isEqual;
    if (!self)
    {
      v58 = 0;
      v59 = 0;
      v60 = 1;
      if (isEqual)
      {
        goto LABEL_26;
      }

      goto LABEL_29;
    }
  }

  else
  {
    if (!bufferCopy3 && MTLReportFailureTypeEnabled())
    {
      v561 = objc_opt_class();
      v567 = NSStringFromClass(v561);
      MTLReportFailure();
    }

    if (!matrix && MTLReportFailureTypeEnabled())
    {
      v562 = objc_opt_class();
      v567 = NSStringFromClass(v562);
      MTLReportFailure();
    }

    if (!resultMatrix && MTLReportFailureTypeEnabled())
    {
      v563 = objc_opt_class();
      v567 = NSStringFromClass(v563);
      MTLReportFailure();
    }

    if (!indices && MTLReportFailureTypeEnabled())
    {
      v564 = objc_opt_class();
      v567 = NSStringFromClass(v564);
      MTLReportFailure();
    }

    if (self)
    {
      objc_msgSend_sourceMatrixOrigin(self, v14, v15, v16, v17, v18, v19, v20);
      objc_msgSend_sourceMatrixOrigin(self, v21, v22, v23, v24, v25, v26, v27);
      if (v587 && MTLReportFailureTypeEnabled())
      {
        v565 = objc_opt_class();
        v567 = NSStringFromClass(v565);
        MTLReportFailure();
      }

      objc_msgSend_resultMatrixOrigin(self, v28, v29, v30, v31, v32, v33, v34, v567);
      objc_msgSend_resultMatrixOrigin(self, v35, v36, v37, v38, v39, v40, v41);
      if (v587 && MTLReportFailureTypeEnabled())
      {
        v566 = objc_opt_class();
        v568 = NSStringFromClass(v566);
        MTLReportFailure();
      }

      objc_msgSend_sourceMatrixOrigin(self, v42, v43, v44, v45, v46, v47, v48, v568);
    }

    else
    {
      v585 = 0;
      v586 = 0;
      v587 = 0;
    }

    objc_msgSend_rows(matrix, v14, v15, v16, v17, v18, v19, v20, v567);
    objc_msgSend_sourceMatrixOrigin(self, v61, v62, v63, v64, v65, v66, v67);
    v68 = self->_rows + v585;
    if (v68 > objc_msgSend_rows(matrix, v69, v70, v71, v72, v73, v74, v75) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    objc_msgSend_sourceMatrixOrigin(self, v76, v77, v78, v79, v80, v81, v82);
    objc_msgSend_columns(matrix, v83, v84, v85, v86, v87, v88, v89);
    objc_msgSend_sourceMatrixOrigin(self, v90, v91, v92, v93, v94, v95, v96);
    v97 = self->_columns + v586;
    if (v97 > objc_msgSend_columns(matrix, v98, v99, v100, v101, v102, v103, v104) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    objc_msgSend_resultMatrixOrigin(self, v105, v106, v107, v108, v109, v110, v111);
    objc_msgSend_rows(resultMatrix, v112, v113, v114, v115, v116, v117, v118);
    objc_msgSend_resultMatrixOrigin(self, v119, v120, v121, v122, v123, v124, v125);
    v126 = self->_rows + v585;
    if (v126 > objc_msgSend_rows(resultMatrix, v127, v128, v129, v130, v131, v132, v133) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    objc_msgSend_resultMatrixOrigin(self, v134, v135, v136, v137, v138, v139, v140);
    objc_msgSend_columns(resultMatrix, v141, v142, v143, v144, v145, v146, v147);
    objc_msgSend_resultMatrixOrigin(self, v148, v149, v150, v151, v152, v153, v154);
    v155 = self->_columns + v586;
    if (v155 > objc_msgSend_columns(resultMatrix, v156, v157, v158, v159, v160, v161, v162) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (objc_msgSend_dataType(matrix, v163, v164, v165, v166, v167, v168, v169) == 268435488)
    {
      objc_msgSend_dataType(resultMatrix, v170, v171, v172, v173, v174, v175, v176);
    }

    if ((objc_msgSend_dataType(matrix, v170, v171, v172, v173, v174, v175, v176) != 268435488 || objc_msgSend_dataType(resultMatrix, v177, v178, v179, v180, v181, v182, v183) != 268435488) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    objc_msgSend_dataType(indices, v184, v185, v186, v187, v188, v189, v190);
    if (objc_msgSend_dataType(indices, v191, v192, v193, v194, v195, v196, v197) != 32 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v57 = objc_msgSend_isEqual_(matrix, v198, resultMatrix, v199, v200, v201, v202, v203);
  }

  objc_msgSend_sourceMatrixOrigin(self, v50, v51, v52, v53, v54, v55, v56);
  objc_msgSend_resultMatrixOrigin(self, v204, v205, v206, v207, v208, v209, v210);
  if (v585 == v577)
  {
    objc_msgSend_sourceMatrixOrigin(self, v50, v51, v52, v53, v54, v55, v56);
    v59 = v591;
    objc_msgSend_resultMatrixOrigin(self, v211, v212, v213, v214, v215, v216, v217);
    v60 = 0;
    v58 = v583;
    if (v57)
    {
LABEL_26:
      if (v59 == v58)
      {
        goto LABEL_33;
      }
    }
  }

  else
  {
    v60 = 0;
  }

LABEL_29:
  v574 = objc_msgSend_rows(self, v50, v51, v52, v53, v54, v55, v56);
  v232 = objc_msgSend_columns(self, v218, v219, v220, v221, v222, v223, v224);
  if (v60)
  {
    v233 = 0;
    v234 = 0;
    v235 = 0;
    v236 = 0;
    v585 = 0;
    v586 = 0;
    v587 = 0;
    v577 = 0;
    v578 = 0;
    v579 = 0;
    v590 = 0;
    v591 = 0;
    v592 = 0;
    v582 = 0;
    v583 = 0;
    v584 = 0;
  }

  else
  {
    objc_msgSend_sourceMatrixOrigin(self, v225, v226, v227, v228, v229, v230, v231);
    v235 = v585;
    objc_msgSend_sourceMatrixOrigin(self, v237, v238, v239, v240, v241, v242, v243);
    v236 = v578;
    objc_msgSend_resultMatrixOrigin(self, v244, v245, v246, v247, v248, v249, v250);
    v234 = v590;
    objc_msgSend_resultMatrixOrigin(self, v251, v252, v253, v254, v255, v256, v257);
    v233 = v583;
  }

  matrixCopy = matrix;
  v259 = objc_msgSend_rowBytes(matrix, v225, v226, v227, v228, v229, v230, v231);
  v267 = objc_msgSend_rowBytes(resultMatrix, v260, v261, v262, v263, v264, v265, v266);
  v268 = *(&self->super.super.super.isa + *MEMORY[0x277CD7350]);
  v585 = __PAIR64__(v232, v574);
  v586 = __PAIR64__(v236, v235);
  v587 = __PAIR64__(v233, v234);
  v588 = __PAIR64__(v267, v259);
  bufferCopy3 = buffer;
  sub_2399E4C74(v268, encoder, buffer, matrixCopy, resultMatrix, &v585, v269, v270);
LABEL_33:
  v271 = *(&self->super.super.super.isa + *MEMORY[0x277CD7370]);
  v272 = objc_msgSend_gemmKernel(self, v50, v51, v52, v53, v54, v55, v56);
  v280 = objc_msgSend_trsmKernel(self, v273, v274, v275, v276, v277, v278, v279);
  MEMORY[0x23EE7BFE0](&v590, bufferCopy3, 0);
  if (objc_msgSend_rows(self, v281, v282, v283, v284, v285, v286, v287) && objc_msgSend_columns(self, v288, v289, v290, v291, v292, v293, v294))
  {
    v295 = objc_msgSend_rows(self, v288, v289, v290, v291, v292, v293, v294);
    v303 = objc_msgSend_columns(self, v296, v297, v298, v299, v300, v301, v302);
    if (v295 >= v303)
    {
      v304 = v303;
    }

    else
    {
      v304 = v295;
    }

    (*(**(v271 + 32) + 16))(&v585);
    v305 = v585;
    v313 = objc_msgSend_rows(self, v306, v307, v308, v309, v310, v311, v312);
    v321 = objc_msgSend_offset(indices, v314, v315, v316, v317, v318, v319, v320);
    v569 = (2 * v305 + v313 - 1) / (2 * v305);
    if (v569 <= 1)
    {
      v329 = v321;
    }

    else
    {
      v329 = 0;
    }

    v571 = v329;
    if (v569 > 1)
    {
      v330 = objc_msgSend_dataType(indices, v322, v323, v324, v325, v326, v327, v328);
      TempBuffer = MPSAutoCache::GetTempBuffer(&v590, (v569 + v304) * (v330 >> 3), 0);
    }

    else
    {
      TempBuffer = objc_msgSend_data(indices, v322, v323, v324, v325, v326, v327, v328);
    }

    statusCopy = status;
    if (!status)
    {
      statusCopy = MPSAutoCache::GetTempBuffer(&v590, 4, 0);
    }

    v349 = 0;
    v350 = -128;
    while (v349 + 128 <= v304)
    {
      v351 = objc_msgSend_rows(self, v342, v343, v344, v345, v346, v347, v348);
      sub_2399E9CF4(self, encoder, resultMatrix, TempBuffer, v571, v349, v350 + v351 + 128, 0x80uLL, statusCopy);
      objc_msgSend_resultMatrixOrigin(self, v352, v353, v354, v355, v356, v357, v358);
      v359 = v585;
      objc_msgSend_resultMatrixOrigin(self, v360, v361, v362, v363, v364, v365, v366);
      v582 = v349 + v359;
      v583 = v349 + v578;
      v584 = 0;
      objc_msgSend_setPrimarySourceMatrixOrigin_(v280, v367, &v582, v368, v369, v370, v371, v372);
      objc_msgSend_resultMatrixOrigin(self, v373, v374, v375, v376, v377, v378, v379);
      v380 = v585;
      objc_msgSend_resultMatrixOrigin(self, v381, v382, v383, v384, v385, v386, v387);
      v582 = v349 + v380;
      v583 = v349 + v578 + 128;
      v584 = 0;
      objc_msgSend_setSecondarySourceMatrixOrigin_(v280, v388, &v582, v389, v390, v391, v392, v393);
      objc_msgSend_resultMatrixOrigin(self, v394, v395, v396, v397, v398, v399, v400);
      v401 = v585;
      objc_msgSend_resultMatrixOrigin(self, v402, v403, v404, v405, v406, v407, v408);
      v582 = v349 + v401;
      v583 = v349 + v578 + 128;
      v584 = 0;
      objc_msgSend_setResultMatrixOrigin_(v280, v409, &v582, v410, v411, v412, v413, v414);
      v422 = objc_msgSend_columns(self, v415, v416, v417, v418, v419, v420, v421);
      objc_msgSend_setNumberOfRightHandSides_(v280, v423, v350 + v422, v424, v425, v426, v427, v428);
      objc_msgSend_encodeToCommandBuffer_encoder_sourceMatrix_rightHandSideMatrix_solutionMatrix_(v280, v429, buffer, encoder, resultMatrix, resultMatrix, resultMatrix, v430);
      objc_msgSend_resultMatrixOrigin(self, v431, v432, v433, v434, v435, v436, v437);
      v438 = v585;
      objc_msgSend_resultMatrixOrigin(self, v439, v440, v441, v442, v443, v444, v445);
      v582 = v349 + v438 + 128;
      v583 = v349 + v578;
      v584 = 0;
      objc_msgSend_setLeftMatrixOrigin_(v272, v446, &v582, v447, v448, v449, v450, v451);
      objc_msgSend_resultMatrixOrigin(self, v452, v453, v454, v455, v456, v457, v458);
      v459 = v585;
      objc_msgSend_resultMatrixOrigin(self, v460, v461, v462, v463, v464, v465, v466);
      v582 = v349 + v459;
      v583 = v349 + v578 + 128;
      v584 = 0;
      objc_msgSend_setRightMatrixOrigin_(v272, v467, &v582, v468, v469, v470, v471, v472);
      objc_msgSend_resultMatrixOrigin(self, v473, v474, v475, v476, v477, v478, v479);
      v480 = v585;
      objc_msgSend_resultMatrixOrigin(self, v481, v482, v483, v484, v485, v486, v487);
      v582 = v349 + v480 + 128;
      v583 = v349 + v578 + 128;
      v584 = 0;
      objc_msgSend_setResultMatrixOrigin_(v272, v488, &v582, v489, v490, v491, v492, v493);
      v501 = objc_msgSend_rows(self, v494, v495, v496, v497, v498, v499, v500);
      bufferCopy3 = buffer;
      objc_msgSend_setM_(v272, v502, v350 + v501, v503, v504, v505, v506, v507);
      v515 = objc_msgSend_columns(self, v508, v509, v510, v511, v512, v513, v514);
      objc_msgSend_setN_(v272, v516, v350 + v515, v517, v518, v519, v520, v521);
      objc_msgSend_setK_(v272, v522, 128, v523, v524, v525, v526, v527);
      v350 -= 128;
      objc_msgSend_encodeToCommandBuffer_encoder_leftMatrix_rightMatrix_resultMatrix_(v272, v528, buffer, encoder, resultMatrix, resultMatrix, resultMatrix, v529);
      v349 += 128;
    }

    if (v349 < v304)
    {
      v530 = objc_msgSend_rows(self, v342, v343, v344, v345, v346, v347, v348);
      v538 = objc_msgSend_columns(self, v531, v532, v533, v534, v535, v536, v537);
      sub_2399E9CF4(self, encoder, resultMatrix, TempBuffer, v571, v349, v530 - v349, v538 - v349, statusCopy);
    }

    if (v569 >= 2)
    {
      v539 = objc_msgSend_copyBlock(self, v342, v343, v344, v345, v346, v347, v348);
      (*(v539 + 16))(v539, encoder, bufferCopy3, TempBuffer);
      if ((objc_msgSend_retainedReferences(bufferCopy3, v540, v541, v542, v543, v544, v545, v546) & 1) == 0)
      {
        v547 = TempBuffer;
        v585 = MEMORY[0x277D85DD0];
        v586 = 3221225472;
        v587 = sub_2399EB1A0;
        v588 = &unk_278AFD238;
        v589 = TempBuffer;
        objc_msgSend_addCompletedHandler_(bufferCopy3, v548, &v585, v549, v550, v551, v552, v553);
      }
    }

    if (!status)
    {
      if ((objc_msgSend_retainedReferences(bufferCopy3, v342, v343, v344, v345, v346, v347, v348) & 1) == 0)
      {
        v554 = statusCopy;
        v577 = MEMORY[0x277D85DD0];
        v578 = 3221225472;
        v579 = sub_2399EB1A8;
        v580 = &unk_278AFD238;
        v581 = statusCopy;
        objc_msgSend_addCompletedHandler_(bufferCopy3, v555, &v577, v556, v557, v558, v559, v560);
      }
    }
  }

  else if (status)
  {
    v331 = objc_msgSend_blitCommandEncoder(bufferCopy3, v288, v289, v290, v291, v292, v293, v294);
    objc_msgSend_fillBuffer_range_value_(v331, v332, status, 0, 4, 0, v333, v334);
    objc_msgSend_endEncoding(v331, v335, v336, v337, v338, v339, v340, v341);
  }

  MPSAutoCache::~MPSAutoCache(&v590);
}

- (void)encodeToCommandBuffer:(id)commandBuffer sourceMatrix:(MPSMatrix *)sourceMatrix resultMatrix:(MPSMatrix *)resultMatrix pivotIndices:(MPSMatrix *)pivotIndices status:(id)status
{
  v8 = status;
  v9 = pivotIndices;
  v11 = sourceMatrix;
  v12 = commandBuffer;
  if (objc_msgSend_options(self, a2, commandBuffer, sourceMatrix, resultMatrix, pivotIndices, status, v7))
  {
    isEqual = objc_msgSend_isEqual_(v11, v14, resultMatrix, v16, v17, v18, v19, v20);
    v57 = isEqual;
    if (!self)
    {
      v58 = 0;
      v59 = 0;
      v60 = 1;
      if (isEqual)
      {
        goto LABEL_26;
      }

      goto LABEL_12;
    }
  }

  else
  {
    if (!v12 && MTLReportFailureTypeEnabled())
    {
      v716 = objc_opt_class();
      v722 = NSStringFromClass(v716);
      MTLReportFailure();
    }

    if (!v11 && MTLReportFailureTypeEnabled())
    {
      v717 = objc_opt_class();
      v722 = NSStringFromClass(v717);
      MTLReportFailure();
    }

    if (!resultMatrix && MTLReportFailureTypeEnabled())
    {
      v718 = objc_opt_class();
      v722 = NSStringFromClass(v718);
      MTLReportFailure();
    }

    if (!v9 && MTLReportFailureTypeEnabled())
    {
      v719 = objc_opt_class();
      v722 = NSStringFromClass(v719);
      MTLReportFailure();
    }

    if (self)
    {
      objc_msgSend_sourceMatrixOrigin(self, v14, v15, v16, v17, v18, v19, v20);
      objc_msgSend_sourceMatrixOrigin(self, v21, v22, v23, v24, v25, v26, v27);
      if (v746 && MTLReportFailureTypeEnabled())
      {
        v720 = objc_opt_class();
        v722 = NSStringFromClass(v720);
        MTLReportFailure();
      }

      objc_msgSend_resultMatrixOrigin(self, v28, v29, v30, v31, v32, v33, v34, v722);
      objc_msgSend_resultMatrixOrigin(self, v35, v36, v37, v38, v39, v40, v41);
      if (v746 && MTLReportFailureTypeEnabled())
      {
        v721 = objc_opt_class();
        v723 = NSStringFromClass(v721);
        MTLReportFailure();
      }

      objc_msgSend_sourceMatrixOrigin(self, v42, v43, v44, v45, v46, v47, v48, v723);
    }

    else
    {
      v744 = 0;
      selfCopy3 = 0;
      v746 = 0;
    }

    objc_msgSend_rows(v11, v14, v15, v16, v17, v18, v19, v20, v722);
    objc_msgSend_sourceMatrixOrigin(self, v61, v62, v63, v64, v65, v66, v67);
    v68 = self->_rows + v744;
    if (v68 > objc_msgSend_rows(v11, v69, v70, v71, v72, v73, v74, v75) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    objc_msgSend_sourceMatrixOrigin(self, v76, v77, v78, v79, v80, v81, v82);
    objc_msgSend_columns(v11, v83, v84, v85, v86, v87, v88, v89);
    objc_msgSend_sourceMatrixOrigin(self, v90, v91, v92, v93, v94, v95, v96);
    v97 = self->_columns + selfCopy3;
    if (v97 > objc_msgSend_columns(v11, v98, v99, v100, v101, v102, v103, v104) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    objc_msgSend_resultMatrixOrigin(self, v105, v106, v107, v108, v109, v110, v111);
    objc_msgSend_rows(resultMatrix, v112, v113, v114, v115, v116, v117, v118);
    objc_msgSend_resultMatrixOrigin(self, v119, v120, v121, v122, v123, v124, v125);
    v126 = self->_rows + v744;
    if (v126 > objc_msgSend_rows(resultMatrix, v127, v128, v129, v130, v131, v132, v133) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    objc_msgSend_resultMatrixOrigin(self, v134, v135, v136, v137, v138, v139, v140);
    objc_msgSend_columns(resultMatrix, v141, v142, v143, v144, v145, v146, v147);
    objc_msgSend_resultMatrixOrigin(self, v148, v149, v150, v151, v152, v153, v154);
    v155 = self->_columns + selfCopy3;
    v12 = commandBuffer;
    if (v155 > objc_msgSend_columns(resultMatrix, v156, v157, v158, v159, v160, v161, v162) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (objc_msgSend_dataType(v11, v163, v164, v165, v166, v167, v168, v169) == 268435488)
    {
      objc_msgSend_dataType(resultMatrix, v170, v171, v172, v173, v174, v175, v176);
    }

    if ((objc_msgSend_dataType(v11, v170, v171, v172, v173, v174, v175, v176) != 268435488 || objc_msgSend_dataType(resultMatrix, v177, v178, v179, v180, v181, v182, v183) != 268435488) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    objc_msgSend_dataType(v9, v184, v185, v186, v187, v188, v189, v190);
    if (objc_msgSend_dataType(v9, v191, v192, v193, v194, v195, v196, v197) != 32 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v57 = objc_msgSend_isEqual_(v11, v198, resultMatrix, v199, v200, v201, v202, v203);
  }

  objc_msgSend_sourceMatrixOrigin(self, v50, v51, v52, v53, v54, v55, v56);
  objc_msgSend_resultMatrixOrigin(self, v204, v205, v206, v207, v208, v209, v210);
  if (v744 != v736)
  {
    v60 = 0;
    goto LABEL_29;
  }

  objc_msgSend_sourceMatrixOrigin(self, v50, v51, v52, v53, v54, v55, v56);
  v59 = v742;
  objc_msgSend_resultMatrixOrigin(self, v211, v212, v213, v214, v215, v216, v217);
  v60 = 0;
  v58 = v735;
  if (v57)
  {
LABEL_26:
    v12 = commandBuffer;
    if (v59 == v58)
    {
      goto LABEL_37;
    }

    goto LABEL_29;
  }

LABEL_12:
  v12 = commandBuffer;
LABEL_29:
  v218 = objc_msgSend_rows(self, v50, v51, v52, v53, v54, v55, v56);
  v732 = objc_msgSend_columns(self, v219, v220, v221, v222, v223, v224, v225);
  if (v60)
  {
    v233 = 0;
    v234 = 0;
    v730 = 0;
    v728 = 0;
    v744 = 0;
    selfCopy3 = 0;
    v746 = 0;
    v736 = 0;
    selfCopy = 0;
    v738 = 0;
    v741 = 0;
    v742 = 0;
    v743 = 0;
  }

  else
  {
    objc_msgSend_sourceMatrixOrigin(self, v226, v227, v228, v229, v230, v231, v232);
    v730 = v744;
    objc_msgSend_sourceMatrixOrigin(self, v235, v236, v237, v238, v239, v240, v241);
    v728 = selfCopy;
    objc_msgSend_resultMatrixOrigin(self, v242, v243, v244, v245, v246, v247, v248);
    v234 = v741;
    objc_msgSend_resultMatrixOrigin(self, v249, v250, v251, v252, v253, v254, v255);
    v233 = v735;
  }

  v256 = objc_msgSend_rowBytes(v11, v226, v227, v228, v229, v230, v231, v232);
  v264 = objc_msgSend_rowBytes(resultMatrix, v257, v258, v259, v260, v261, v262, v263);
  v265 = objc_alloc(MEMORY[0x277CD7210]);
  v277 = objc_msgSend_initWithCommandBuffer_withDispatchType_(v265, v266, v12, 0, v267, v268, v269, v270);
  v736 = v277;
  selfCopy = self;
  if ((*(&self->super.super.super.isa + *MEMORY[0x277CD7378]) & 0x18) != 0)
  {
    v278 = *(&self->super.super.super.isa + *MEMORY[0x277CD7360]);
    if (v278)
    {
      goto LABEL_35;
    }

    v279 = objc_opt_class();
    v280 = v218;
    v281 = v11;
    v282 = NSStringFromClass(v279);
    objc_msgSend_setLabel_(self, v283, v282, v284, v285, v286, v287, v288);
    v278 = v282;
    v11 = v281;
    v218 = v280;
    v12 = commandBuffer;
    if (v278)
    {
LABEL_35:
      objc_msgSend_setLabel_(v277, v271, v278, v272, v273, v274, v275, v276);
    }
  }

  v289 = *(&self->super.super.super.isa + *MEMORY[0x277CD7350]);
  v744 = __PAIR64__(v732, v218);
  selfCopy3 = __PAIR64__(v728, v730);
  v746 = __PAIR64__(v233, v234);
  v747 = __PAIR64__(v264, v256);
  sub_2399E4C74(v289, v277, v12, v11, resultMatrix, &v744, v275, v276);
  objc_msgSend_endEncoding(v277, v290, v291, v292, v293, v294, v295, v296);
  v9 = pivotIndices;
  v8 = status;

LABEL_37:
  v297 = *(&self->super.super.super.isa + *MEMORY[0x277CD7370]);
  v298 = objc_msgSend_gemmKernel(self, v50, v51, v52, v53, v54, v55, v56);
  v306 = objc_msgSend_trsmKernel(self, v299, v300, v301, v302, v303, v304, v305);
  if (objc_msgSend_rows(self, v307, v308, v309, v310, v311, v312, v313) && objc_msgSend_columns(self, v314, v315, v316, v317, v318, v319, v320))
  {
    v321 = objc_msgSend_rows(self, v314, v315, v316, v317, v318, v319, v320);
    v329 = objc_msgSend_columns(self, v322, v323, v324, v325, v326, v327, v328);
    if (v321 >= v329)
    {
      v330 = v329;
    }

    else
    {
      v330 = v321;
    }

    (*(**(v297 + 32) + 16))(&v744);
    v331 = v744;
    v339 = (2 * v331 + objc_msgSend_rows(self, v332, v333, v334, v335, v336, v337, v338) - 1) / (2 * v331);
    v347 = objc_msgSend_offset(v9, v340, v341, v342, v343, v344, v345, v346);
    if (v339 <= 1)
    {
      v355 = v347;
    }

    else
    {
      v355 = 0;
    }

    v729 = v355;
    v733 = v330;
    v725 = v339;
    if (v339 < 2)
    {
      v377 = objc_msgSend_data(v9, v348, v349, v350, v351, v352, v353, v354);
      v378 = v8;
      if (!v8)
      {
LABEL_51:
        v390 = objc_msgSend_device(commandBuffer, v370, v371, v372, v373, v374, v375, v376);
        v378 = objc_msgSend_newBufferWithLength_options_(v390, v391, 4, 32, v392, v393, v394, v395);
      }
    }

    else
    {
      v356 = objc_msgSend_device(commandBuffer, v348, v349, v350, v351, v352, v353, v354);
      v364 = objc_msgSend_dataType(v9, v357, v358, v359, v360, v361, v362, v363);
      v377 = objc_msgSend_newBufferWithLength_options_(v356, v365, (v339 + v330) * (v364 >> 3), 32, v366, v367, v368, v369);
      v378 = v8;
      if (!v8)
      {
        goto LABEL_51;
      }
    }

    v396 = commandBuffer;
    v397 = objc_msgSend_blitCommandEncoder(commandBuffer, v370, v371, v372, v373, v374, v375, v376);
    objc_msgSend_fillBuffer_range_value_(v397, v398, v378, 0, 4, 0, v399, v400);
    objc_msgSend_endEncoding(v397, v401, v402, v403, v404, v405, v406, v407);
    v415 = 0;
    v731 = v377;
    if (v733 >= 0x80)
    {
      v416 = 0;
      v417 = -128;
      do
      {
        v418 = v378;
        v419 = objc_msgSend_rows(self, v408, v409, v410, v411, v412, v413, v414);
        v420 = objc_alloc(MEMORY[0x277CD7210]);
        v432 = objc_msgSend_initWithCommandBuffer_withDispatchType_(v420, v421, v396, 0, v422, v423, v424, v425);
        v744 = v432;
        selfCopy3 = self;
        if ((*(&self->super.super.super.isa + *MEMORY[0x277CD7378]) & 0x18) != 0)
        {
          v433 = *(&self->super.super.super.isa + *MEMORY[0x277CD7360]);
          if (v433 || (v434 = objc_opt_class(), v433 = NSStringFromClass(v434), objc_msgSend_setLabel_(self, v435, v433, v436, v437, v438, v439, v440), v433))
          {
            objc_msgSend_setLabel_(v432, v426, v433, v427, v428, v429, v430, v431);
          }
        }

        v441 = v419 + v417;
        v378 = v418;
        v724 = v418;
        v377 = v731;
        sub_2399E9CF4(self, v432, resultMatrix, v731, v729, v416, v441 + 128, 0x80uLL, v724);
        objc_msgSend_endEncoding(v432, v442, v443, v444, v445, v446, v447, v448);

        objc_msgSend_resultMatrixOrigin(self, v449, v450, v451, v452, v453, v454, v455);
        v456 = v416 + v744;
        objc_msgSend_resultMatrixOrigin(self, v457, v458, v459, v460, v461, v462, v463);
        v741 = v456;
        v742 = v416 + selfCopy;
        v743 = 0;
        objc_msgSend_setPrimarySourceMatrixOrigin_(v306, v464, &v741, v465, v466, v467, v468, v469);
        objc_msgSend_resultMatrixOrigin(self, v470, v471, v472, v473, v474, v475, v476);
        v477 = v416 + v744;
        objc_msgSend_resultMatrixOrigin(self, v478, v479, v480, v481, v482, v483, v484);
        v741 = v477;
        v742 = v416 + selfCopy + 128;
        v743 = 0;
        objc_msgSend_setSecondarySourceMatrixOrigin_(v306, v485, &v741, v486, v487, v488, v489, v490);
        objc_msgSend_resultMatrixOrigin(self, v491, v492, v493, v494, v495, v496, v497);
        v498 = v416 + v744;
        objc_msgSend_resultMatrixOrigin(self, v499, v500, v501, v502, v503, v504, v505);
        v741 = v498;
        v742 = v416 + selfCopy + 128;
        v743 = 0;
        objc_msgSend_setResultMatrixOrigin_(v306, v506, &v741, v507, v508, v509, v510, v511);
        v519 = objc_msgSend_columns(self, v512, v513, v514, v515, v516, v517, v518);
        objc_msgSend_setNumberOfRightHandSides_(v306, v520, v519 + v417, v521, v522, v523, v524, v525);
        v396 = commandBuffer;
        objc_msgSend_encodeToCommandBuffer_sourceMatrix_rightHandSideMatrix_solutionMatrix_(v306, v526, commandBuffer, resultMatrix, resultMatrix, resultMatrix, v527, v528);
        objc_msgSend_resultMatrixOrigin(self, v529, v530, v531, v532, v533, v534, v535);
        v536 = v416 + v744 + 128;
        objc_msgSend_resultMatrixOrigin(self, v537, v538, v539, v540, v541, v542, v543);
        v741 = v536;
        v742 = v416 + selfCopy;
        v743 = 0;
        objc_msgSend_setLeftMatrixOrigin_(v298, v544, &v741, v545, v546, v547, v548, v549);
        objc_msgSend_resultMatrixOrigin(self, v550, v551, v552, v553, v554, v555, v556);
        v557 = v416 + v744;
        objc_msgSend_resultMatrixOrigin(self, v558, v559, v560, v561, v562, v563, v564);
        v741 = v557;
        v742 = v416 + selfCopy + 128;
        v743 = 0;
        objc_msgSend_setRightMatrixOrigin_(v298, v565, &v741, v566, v567, v568, v569, v570);
        objc_msgSend_resultMatrixOrigin(self, v571, v572, v573, v574, v575, v576, v577);
        v578 = v416 + v744 + 128;
        objc_msgSend_resultMatrixOrigin(self, v579, v580, v581, v582, v583, v584, v585);
        v741 = v578;
        v742 = v416 + selfCopy + 128;
        v743 = 0;
        objc_msgSend_setResultMatrixOrigin_(v298, v586, &v741, v587, v588, v589, v590, v591);
        v599 = objc_msgSend_rows(self, v592, v593, v594, v595, v596, v597, v598);
        objc_msgSend_setM_(v298, v600, v599 + v417, v601, v602, v603, v604, v605);
        v613 = objc_msgSend_columns(self, v606, v607, v608, v609, v610, v611, v612);
        objc_msgSend_setN_(v298, v614, v613 + v417, v615, v616, v617, v618, v619);
        objc_msgSend_setK_(v298, v620, 128, v621, v622, v623, v624, v625);
        objc_msgSend_encodeToCommandBuffer_leftMatrix_rightMatrix_resultMatrix_(v298, v626, commandBuffer, resultMatrix, resultMatrix, resultMatrix, v627, v628);
        v415 = v416 + 128;
        v629 = v416 + 256;
        v417 -= 128;
        v416 += 128;
      }

      while (v629 <= v733);
    }

    if (v415 < v733)
    {
      v630 = objc_msgSend_rows(self, v408, v409, v410, v411, v412, v413, v414) - v415;
      v638 = objc_msgSend_columns(self, v631, v632, v633, v634, v635, v636, v637) - v415;
      v639 = objc_alloc(MEMORY[0x277CD7210]);
      v651 = objc_msgSend_initWithCommandBuffer_withDispatchType_(v639, v640, commandBuffer, 0, v641, v642, v643, v644);
      v744 = v651;
      selfCopy3 = self;
      if ((*(&self->super.super.super.isa + *MEMORY[0x277CD7378]) & 0x18) != 0)
      {
        v652 = *(&self->super.super.super.isa + *MEMORY[0x277CD7360]);
        if (v652 || (v653 = objc_opt_class(), v654 = v378, v655 = NSStringFromClass(v653), objc_msgSend_setLabel_(self, v656, v655, v657, v658, v659, v660, v661), v652 = v655, v378 = v654, v377 = v731, v652))
        {
          objc_msgSend_setLabel_(v651, v645, v652, v646, v647, v648, v649, v650);
        }
      }

      sub_2399E9CF4(self, v651, resultMatrix, v377, v729, v415, v630, v638, v378);
      objc_msgSend_endEncoding(v651, v662, v663, v664, v665, v666, v667, v668);
    }

    if (v725 >= 2)
    {
      v669 = objc_msgSend_blitCommandEncoder(commandBuffer, v408, v409, v410, v411, v412, v413, v414);
      v677 = objc_msgSend_data(pivotIndices, v670, v671, v672, v673, v674, v675, v676);
      v685 = objc_msgSend_dataType(pivotIndices, v678, v679, v680, v681, v682, v683, v684);
      objc_msgSend_copyFromBuffer_sourceOffset_toBuffer_destinationOffset_size_(v669, v686, v731, 0, v677, 0, v733 * (v685 >> 3), v687);
      objc_msgSend_endEncoding(v669, v688, v689, v690, v691, v692, v693, v694);
      if ((objc_msgSend_retainedReferences(commandBuffer, v695, v696, v697, v698, v699, v700, v701) & 1) == 0)
      {
        v702 = v731;
        v744 = MEMORY[0x277D85DD0];
        selfCopy3 = 3221225472;
        v746 = sub_2399EB5B4;
        v747 = &unk_278AFD238;
        v748 = v731;
        objc_msgSend_addCompletedHandler_(commandBuffer, v703, &v744, v704, v705, v706, v707, v708);
      }
    }

    if (!status)
    {
      if ((objc_msgSend_retainedReferences(commandBuffer, v408, v409, v410, v411, v412, v413, v414) & 1) == 0)
      {
        v709 = v378;
        v736 = MEMORY[0x277D85DD0];
        selfCopy = 3221225472;
        v738 = sub_2399EB5BC;
        v739 = &unk_278AFD238;
        v740 = v378;
        objc_msgSend_addCompletedHandler_(commandBuffer, v710, &v736, v711, v712, v713, v714, v715);
      }
    }

    return;
  }

  if (v8)
  {
    v379 = objc_msgSend_blitCommandEncoder(commandBuffer, v314, v315, v316, v317, v318, v319, v320);
    objc_msgSend_fillBuffer_range_value_(v379, v380, v8, 0, 4, 0, v381, v382);
    objc_msgSend_endEncoding(v379, v383, v384, v385, v386, v387, v388, v389);
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MPSMatrixDecompositionLU;
  [(MPSKernel *)&v3 dealloc];
}

@end