@interface MPSMatrixSolveLU
- (MPSMatrixSolveLU)initWithDevice:(id)device transpose:(BOOL)transpose order:(NSUInteger)order numberOfRightHandSides:(NSUInteger)numberOfRightHandSides;
- (void)dealloc;
- (void)encodeToCommandBuffer:(id)commandBuffer sourceMatrix:(MPSMatrix *)sourceMatrix rightHandSideMatrix:(MPSMatrix *)rightHandSideMatrix pivotIndices:(MPSMatrix *)pivotIndices solutionMatrix:(MPSMatrix *)solutionMatrix;
- (void)encodeToCommandEncoder:(id)encoder commandBuffer:(id)buffer sourceMatrix:(id)matrix rightHandSideMatrix:(id)sideMatrix pivotIndices:(id)indices solutionMatrix:(id)solutionMatrix;
@end

@implementation MPSMatrixSolveLU

- (MPSMatrixSolveLU)initWithDevice:(id)device transpose:(BOOL)transpose order:(NSUInteger)order numberOfRightHandSides:(NSUInteger)numberOfRightHandSides
{
  v38.receiver = self;
  v38.super_class = MPSMatrixSolveLU;
  result = [(MPSMatrixBinaryKernel *)&v38 initWithDevice:?];
  if (result)
  {
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v17 = result;
    objc_msgSend_setResultMatrixOrigin_(result, v11, &v35, v12, v13, v14, v15, v16);
    v35 = 0;
    v36 = 0;
    v37 = 0;
    objc_msgSend_setPrimarySourceMatrixOrigin_(v17, v18, &v35, v19, v20, v21, v22, v23);
    v35 = 0;
    v36 = 0;
    v37 = 0;
    objc_msgSend_setSecondarySourceMatrixOrigin_(v17, v24, &v35, v25, v26, v27, v28, v29);
    v17->_transpose = transpose;
    v17->_order = order;
    v17->_numberOfRightHandSides = numberOfRightHandSides;
    v30 = [MPSMatrixSolveTriangular alloc];
    v17->_trsmL = objc_msgSend_initWithDevice_right_upper_transpose_unit_order_numberOfRightHandSides_alpha_(v30, v31, device, 0, 0, v17->_transpose, 1, v17->_order, 1.0, v17->_numberOfRightHandSides);
    v32 = [MPSMatrixSolveTriangular alloc];
    v34 = objc_msgSend_initWithDevice_right_upper_transpose_unit_order_numberOfRightHandSides_alpha_(v32, v33, device, 0, 1, v17->_transpose, 0, v17->_order, 1.0, v17->_numberOfRightHandSides);
    result = v17;
    v17->_trsmU = v34;
  }

  return result;
}

- (void)encodeToCommandEncoder:(id)encoder commandBuffer:(id)buffer sourceMatrix:(id)matrix rightHandSideMatrix:(id)sideMatrix pivotIndices:(id)indices solutionMatrix:(id)solutionMatrix
{
  indicesCopy = indices;
  matrixCopy2 = matrix;
  bufferCopy = buffer;
  encoderCopy = encoder;
  if (objc_msgSend_options(self, a2, encoder, buffer, matrix, sideMatrix, indices, solutionMatrix))
  {
    isEqual = objc_msgSend_isEqual_(sideMatrix, v15, solutionMatrix, v17, v18, v19, v20, v21);
    v72 = isEqual;
    if (!self)
    {
      if (isEqual)
      {
LABEL_42:
        v532 = 0uLL;
        v350 = 1;
        v533 = 0;
        goto LABEL_44;
      }

      v527 = indicesCopy;
      v73 = 1;
      goto LABEL_38;
    }
  }

  else
  {
    if (!bufferCopy && MTLReportFailureTypeEnabled())
    {
      v514 = objc_opt_class();
      v522 = NSStringFromClass(v514);
      MTLReportFailure();
    }

    if (!matrixCopy2 && MTLReportFailureTypeEnabled())
    {
      v515 = objc_opt_class();
      v522 = NSStringFromClass(v515);
      MTLReportFailure();
    }

    if (!sideMatrix && MTLReportFailureTypeEnabled())
    {
      v516 = objc_opt_class();
      v522 = NSStringFromClass(v516);
      MTLReportFailure();
    }

    if (!indicesCopy && MTLReportFailureTypeEnabled())
    {
      v517 = objc_opt_class();
      v522 = NSStringFromClass(v517);
      MTLReportFailure();
    }

    if (!solutionMatrix && MTLReportFailureTypeEnabled())
    {
      v518 = objc_opt_class();
      v522 = NSStringFromClass(v518);
      MTLReportFailure();
    }

    if (self)
    {
      objc_msgSend_primarySourceMatrixOrigin(self, v15, v16, v17, v18, v19, v20, v21);
      objc_msgSend_primarySourceMatrixOrigin(self, v22, v23, v24, v25, v26, v27, v28);
      if (*&v534[16] && MTLReportFailureTypeEnabled())
      {
        v519 = objc_opt_class();
        v522 = NSStringFromClass(v519);
        MTLReportFailure();
      }

      objc_msgSend_secondarySourceMatrixOrigin(self, v29, v30, v31, v32, v33, v34, v35, v522);
      objc_msgSend_secondarySourceMatrixOrigin(self, v36, v37, v38, v39, v40, v41, v42);
      if (*&v534[16] && MTLReportFailureTypeEnabled())
      {
        v520 = objc_opt_class();
        v523 = NSStringFromClass(v520);
        MTLReportFailure();
      }

      objc_msgSend_resultMatrixOrigin(self, v43, v44, v45, v46, v47, v48, v49, v523);
      objc_msgSend_resultMatrixOrigin(self, v50, v51, v52, v53, v54, v55, v56);
      if (*&v534[16] && MTLReportFailureTypeEnabled())
      {
        v521 = objc_opt_class();
        v524 = NSStringFromClass(v521);
        MTLReportFailure();
      }

      objc_msgSend_resultMatrixOrigin(self, v57, v58, v59, v60, v61, v62, v63, v524);
    }

    else
    {
      memset(v534, 0, sizeof(v534));
    }

    objc_msgSend_rows(solutionMatrix, v15, v16, v17, v18, v19, v20, v21, v522);
    objc_msgSend_resultMatrixOrigin(self, v74, v75, v76, v77, v78, v79, v80);
    v81 = self->_order + *v534;
    if (v81 > objc_msgSend_rows(solutionMatrix, v82, v83, v84, v85, v86, v87, v88) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    objc_msgSend_resultMatrixOrigin(self, v89, v90, v91, v92, v93, v94, v95);
    objc_msgSend_columns(solutionMatrix, v96, v97, v98, v99, v100, v101, v102);
    objc_msgSend_resultMatrixOrigin(self, v103, v104, v105, v106, v107, v108, v109);
    v110 = self->_numberOfRightHandSides + *&v534[8];
    if (v110 > objc_msgSend_columns(solutionMatrix, v111, v112, v113, v114, v115, v116, v117) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    objc_msgSend_secondarySourceMatrixOrigin(self, v118, v119, v120, v121, v122, v123, v124);
    objc_msgSend_rows(sideMatrix, v125, v126, v127, v128, v129, v130, v131);
    objc_msgSend_secondarySourceMatrixOrigin(self, v132, v133, v134, v135, v136, v137, v138);
    v139 = self->_order + *v534;
    if (v139 > objc_msgSend_rows(sideMatrix, v140, v141, v142, v143, v144, v145, v146) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    objc_msgSend_secondarySourceMatrixOrigin(self, v147, v148, v149, v150, v151, v152, v153);
    objc_msgSend_columns(sideMatrix, v154, v155, v156, v157, v158, v159, v160);
    objc_msgSend_secondarySourceMatrixOrigin(self, v161, v162, v163, v164, v165, v166, v167);
    v168 = self->_numberOfRightHandSides + *&v534[8];
    if (v168 > objc_msgSend_columns(sideMatrix, v169, v170, v171, v172, v173, v174, v175) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (objc_msgSend_dataType(matrixCopy2, v176, v177, v178, v179, v180, v181, v182) == 268435488 && objc_msgSend_dataType(sideMatrix, v183, v184, v185, v186, v187, v188, v189) == 268435488)
    {
      objc_msgSend_dataType(solutionMatrix, v183, v184, v185, v186, v187, v188, v189);
    }

    if ((objc_msgSend_dataType(matrixCopy2, v183, v184, v185, v186, v187, v188, v189) != 268435488 || objc_msgSend_dataType(sideMatrix, v190, v191, v192, v193, v194, v195, v196) != 268435488 || objc_msgSend_dataType(solutionMatrix, v197, v198, v199, v200, v201, v202, v203) != 268435488) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    objc_msgSend_dataType(indicesCopy, v204, v205, v206, v207, v208, v209, v210);
    if (objc_msgSend_dataType(indicesCopy, v211, v212, v213, v214, v215, v216, v217) != 32 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    objc_msgSend_primarySourceMatrixOrigin(self, v218, v219, v220, v221, v222, v223, v224);
    objc_msgSend_rows(matrixCopy2, v225, v226, v227, v228, v229, v230, v231);
    objc_msgSend_primarySourceMatrixOrigin(self, v232, v233, v234, v235, v236, v237, v238);
    v239 = self->_order + *v534;
    if (v239 > objc_msgSend_rows(matrixCopy2, v240, v241, v242, v243, v244, v245, v246) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    objc_msgSend_primarySourceMatrixOrigin(self, v247, v248, v249, v250, v251, v252, v253);
    objc_msgSend_columns(matrixCopy2, v254, v255, v256, v257, v258, v259, v260);
    objc_msgSend_primarySourceMatrixOrigin(self, v261, v262, v263, v264, v265, v266, v267);
    v268 = self->_order + *&v534[8];
    if (v268 > objc_msgSend_columns(matrixCopy2, v269, v270, v271, v272, v273, v274, v275) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v72 = objc_msgSend_isEqual_(sideMatrix, v276, solutionMatrix, v277, v278, v279, v280, v281);
  }

  objc_msgSend_secondarySourceMatrixOrigin(self, v65, v66, v67, v68, v69, v70, v71);
  objc_msgSend_resultMatrixOrigin(self, v282, v283, v284, v285, v286, v287, v288);
  if (*v534 == v543)
  {
    objc_msgSend_secondarySourceMatrixOrigin(self, v65, v66, v67, v68, v69, v70, v71);
    objc_msgSend_resultMatrixOrigin(self, v289, v290, v291, v292, v293, v294, v295);
    v296 = v541 == v538 ? v72 : 0;
    if (v296)
    {
      goto LABEL_43;
    }
  }

  v527 = indicesCopy;
  v73 = 0;
LABEL_38:
  v526 = bufferCopy;
  v528 = encoderCopy;
  v525 = objc_msgSend_order(self, v65, v66, v67, v68, v69, v70, v71);
  v311 = objc_msgSend_numberOfRightHandSides(self, v297, v298, v299, v300, v301, v302, v303);
  if (v73)
  {
    v312 = 0;
    v313 = 0;
    v314 = 0;
    v315 = 0;
    memset(v534, 0, sizeof(v534));
    v543 = 0;
    v544 = 0uLL;
    v540 = 0;
    v541 = 0;
    v542 = 0;
    v537 = 0;
    v538 = 0;
    v539 = 0;
  }

  else
  {
    objc_msgSend_secondarySourceMatrixOrigin(self, v304, v305, v306, v307, v308, v309, v310);
    v314 = *v534;
    objc_msgSend_secondarySourceMatrixOrigin(self, v316, v317, v318, v319, v320, v321, v322);
    v315 = v544;
    objc_msgSend_resultMatrixOrigin(self, v323, v324, v325, v326, v327, v328, v329);
    v313 = v540;
    objc_msgSend_resultMatrixOrigin(self, v330, v331, v332, v333, v334, v335, v336);
    v312 = v538;
  }

  sideMatrixCopy = sideMatrix;
  v338 = objc_msgSend_rowBytes(sideMatrix, v304, v305, v306, v307, v308, v309, v310);
  v346 = objc_msgSend_rowBytes(solutionMatrix, v339, v340, v341, v342, v343, v344, v345);
  v347 = *(&self->super.super.super.isa + *MEMORY[0x277CD7350]);
  *v534 = v525;
  *&v534[4] = v311;
  *&v534[8] = v314;
  *&v534[12] = v315;
  *&v534[16] = v313;
  *&v534[20] = v312;
  v535 = v338;
  v536 = v346;
  encoderCopy = v528;
  bufferCopy = v526;
  sub_2399E4C74(v347, v528, v526, sideMatrixCopy, solutionMatrix, v534, v348, v349);
  indicesCopy = v527;
  matrixCopy2 = matrix;
  if (v73)
  {
    goto LABEL_42;
  }

LABEL_43:
  objc_msgSend_primarySourceMatrixOrigin(self, v65, v66, v67, v68, v69, v70, v71);
  v350 = 0;
LABEL_44:
  trsmL = self->_trsmL;
  *v534 = v532;
  *&v534[16] = v533;
  objc_msgSend_setPrimarySourceMatrixOrigin_(trsmL, v65, v534, v67, v68, v69, v70, v71);
  if (v350)
  {
    v530 = 0uLL;
    v531 = 0;
  }

  else
  {
    objc_msgSend_primarySourceMatrixOrigin(self, v352, v353, v354, v355, v356, v357, v358);
  }

  trsmU = self->_trsmU;
  *v534 = v530;
  *&v534[16] = v531;
  objc_msgSend_setPrimarySourceMatrixOrigin_(trsmU, v352, v534, v354, v355, v356, v357, v358);
  if (self->_transpose)
  {
    objc_msgSend_encodeToCommandBuffer_encoder_sourceMatrix_rightHandSideMatrix_solutionMatrix_(self->_trsmL, v360, bufferCopy, encoderCopy, matrixCopy2, solutionMatrix, solutionMatrix, v361);
    objc_msgSend_encodeToCommandBuffer_encoder_sourceMatrix_rightHandSideMatrix_solutionMatrix_(self->_trsmU, v362, bufferCopy, encoderCopy, matrixCopy2, solutionMatrix, solutionMatrix, v363);
    v364 = *(&self->super.super.super.isa + *MEMORY[0x277CD7370]);
    ComputeState = MPSLibrary::GetComputeState();
    v366 = *(solutionMatrix + *MEMORY[0x277CD73A8]);
    v374 = objc_msgSend_order(self, v367, v368, v369, v370, v371, v372, v373);
    objc_msgSend_setComputePipelineState_(encoderCopy, v375, ComputeState, v376, v377, v378, v379, v380);
    LODWORD(v540) = v374;
    HIDWORD(v540) = objc_msgSend_columns(solutionMatrix, v381, v382, v383, v384, v385, v386, v387);
    LODWORD(v541) = objc_msgSend_rowBytes(solutionMatrix, v388, v389, v390, v391, v392, v393, v394);
    v402 = objc_msgSend_data(solutionMatrix, v395, v396, v397, v398, v399, v400, v401);
    objc_msgSend_setBuffer_offset_atIndex_(encoderCopy, v403, v402, v366, 0, v404, v405, v406);
    v414 = objc_msgSend_data(indicesCopy, v407, v408, v409, v410, v411, v412, v413);
    v422 = objc_msgSend_offset(indicesCopy, v415, v416, v417, v418, v419, v420, v421);
    objc_msgSend_setBuffer_offset_atIndex_(encoderCopy, v423, v414, v422, 1, v424, v425, v426);
    objc_msgSend_setBytes_length_atIndex_(encoderCopy, v427, &v540, 12, 2, v428, v429, v430);
    *v534 = (HIDWORD(v540) + 511) >> 9;
    *&v534[8] = vdupq_n_s64(1uLL);
    v543 = 512;
    v544 = *&v534[8];
    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(encoderCopy, v431, v534, &v543, v432, v433, v434, v435);
  }

  else
  {
    v436 = *(&self->super.super.super.isa + *MEMORY[0x277CD7370]);
    v437 = bufferCopy;
    v438 = MPSLibrary::GetComputeState();
    v439 = *(solutionMatrix + *MEMORY[0x277CD73A8]);
    v447 = indicesCopy;
    v448 = objc_msgSend_order(self, v440, v441, v442, v443, v444, v445, v446);
    objc_msgSend_setComputePipelineState_(encoderCopy, v449, v438, v450, v451, v452, v453, v454);
    LODWORD(v540) = v448;
    HIDWORD(v540) = objc_msgSend_columns(solutionMatrix, v455, v456, v457, v458, v459, v460, v461);
    LODWORD(v541) = objc_msgSend_rowBytes(solutionMatrix, v462, v463, v464, v465, v466, v467, v468);
    v476 = objc_msgSend_data(solutionMatrix, v469, v470, v471, v472, v473, v474, v475);
    objc_msgSend_setBuffer_offset_atIndex_(encoderCopy, v477, v476, v439, 0, v478, v479, v480);
    v488 = objc_msgSend_data(v447, v481, v482, v483, v484, v485, v486, v487);
    v496 = objc_msgSend_offset(v447, v489, v490, v491, v492, v493, v494, v495);
    objc_msgSend_setBuffer_offset_atIndex_(encoderCopy, v497, v488, v496, 1, v498, v499, v500);
    objc_msgSend_setBytes_length_atIndex_(encoderCopy, v501, &v540, 12, 2, v502, v503, v504);
    *v534 = (HIDWORD(v540) + 511) >> 9;
    *&v534[8] = vdupq_n_s64(1uLL);
    v543 = 512;
    v544 = *&v534[8];
    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(encoderCopy, v505, v534, &v543, v506, v507, v508, v509);
    objc_msgSend_encodeToCommandBuffer_encoder_sourceMatrix_rightHandSideMatrix_solutionMatrix_(self->_trsmL, v510, v437, encoderCopy, matrix, solutionMatrix, solutionMatrix, v511);
    objc_msgSend_encodeToCommandBuffer_encoder_sourceMatrix_rightHandSideMatrix_solutionMatrix_(self->_trsmU, v512, v437, encoderCopy, matrix, solutionMatrix, solutionMatrix, v513);
  }
}

- (void)encodeToCommandBuffer:(id)commandBuffer sourceMatrix:(MPSMatrix *)sourceMatrix rightHandSideMatrix:(MPSMatrix *)rightHandSideMatrix pivotIndices:(MPSMatrix *)pivotIndices solutionMatrix:(MPSMatrix *)solutionMatrix
{
  v10 = sourceMatrix;
  v11 = commandBuffer;
  if ((objc_msgSend_options(self, a2, commandBuffer, sourceMatrix, rightHandSideMatrix, pivotIndices, solutionMatrix, v7) & 1) == 0)
  {
    if (!v11 && MTLReportFailureTypeEnabled())
    {
      v586 = objc_opt_class();
      v594 = NSStringFromClass(v586);
      MTLReportFailure();
    }

    if (!v10 && MTLReportFailureTypeEnabled())
    {
      v587 = objc_opt_class();
      v594 = NSStringFromClass(v587);
      MTLReportFailure();
    }

    if (!rightHandSideMatrix && MTLReportFailureTypeEnabled())
    {
      v588 = objc_opt_class();
      v594 = NSStringFromClass(v588);
      MTLReportFailure();
    }

    if (!pivotIndices && MTLReportFailureTypeEnabled())
    {
      v589 = objc_opt_class();
      v594 = NSStringFromClass(v589);
      MTLReportFailure();
    }

    if (!solutionMatrix && MTLReportFailureTypeEnabled())
    {
      v590 = objc_opt_class();
      v594 = NSStringFromClass(v590);
      MTLReportFailure();
    }

    if (self)
    {
      objc_msgSend_primarySourceMatrixOrigin(self, v13, v14, v15, v16, v17, v18, v19);
      objc_msgSend_primarySourceMatrixOrigin(self, v20, v21, v22, v23, v24, v25, v26);
      if (*&v607[16] && MTLReportFailureTypeEnabled())
      {
        v591 = objc_opt_class();
        v594 = NSStringFromClass(v591);
        MTLReportFailure();
      }

      objc_msgSend_secondarySourceMatrixOrigin(self, v27, v28, v29, v30, v31, v32, v33, v594);
      objc_msgSend_secondarySourceMatrixOrigin(self, v34, v35, v36, v37, v38, v39, v40);
      if (*&v607[16] && MTLReportFailureTypeEnabled())
      {
        v592 = objc_opt_class();
        v595 = NSStringFromClass(v592);
        MTLReportFailure();
      }

      objc_msgSend_resultMatrixOrigin(self, v41, v42, v43, v44, v45, v46, v47, v595);
      objc_msgSend_resultMatrixOrigin(self, v48, v49, v50, v51, v52, v53, v54);
      if (*&v607[16] && MTLReportFailureTypeEnabled())
      {
        v593 = objc_opt_class();
        v596 = NSStringFromClass(v593);
        MTLReportFailure();
      }

      v62 = v11;
      objc_msgSend_resultMatrixOrigin(self, v55, v56, v57, v58, v59, v60, v61, v596);
    }

    else
    {
      v62 = v11;
      memset(v607, 0, sizeof(v607));
    }

    objc_msgSend_rows(solutionMatrix, v13, v14, v15, v16, v17, v18, v19, v594);
    objc_msgSend_resultMatrixOrigin(self, v72, v73, v74, v75, v76, v77, v78);
    v79 = self->_order + *v607;
    if (v79 > objc_msgSend_rows(solutionMatrix, v80, v81, v82, v83, v84, v85, v86) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    objc_msgSend_resultMatrixOrigin(self, v87, v88, v89, v90, v91, v92, v93);
    objc_msgSend_columns(solutionMatrix, v94, v95, v96, v97, v98, v99, v100);
    objc_msgSend_resultMatrixOrigin(self, v101, v102, v103, v104, v105, v106, v107);
    v108 = self->_numberOfRightHandSides + *&v607[8];
    if (v108 > objc_msgSend_columns(solutionMatrix, v109, v110, v111, v112, v113, v114, v115) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    objc_msgSend_secondarySourceMatrixOrigin(self, v116, v117, v118, v119, v120, v121, v122);
    objc_msgSend_rows(rightHandSideMatrix, v123, v124, v125, v126, v127, v128, v129);
    objc_msgSend_secondarySourceMatrixOrigin(self, v130, v131, v132, v133, v134, v135, v136);
    v137 = self->_order + *v607;
    if (v137 > objc_msgSend_rows(rightHandSideMatrix, v138, v139, v140, v141, v142, v143, v144) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    objc_msgSend_secondarySourceMatrixOrigin(self, v145, v146, v147, v148, v149, v150, v151);
    objc_msgSend_columns(rightHandSideMatrix, v152, v153, v154, v155, v156, v157, v158);
    objc_msgSend_secondarySourceMatrixOrigin(self, v159, v160, v161, v162, v163, v164, v165);
    v166 = self->_numberOfRightHandSides + *&v607[8];
    v10 = sourceMatrix;
    if (v166 > objc_msgSend_columns(rightHandSideMatrix, v167, v168, v169, v170, v171, v172, v173) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (objc_msgSend_dataType(sourceMatrix, v174, v175, v176, v177, v178, v179, v180) == 268435488 && objc_msgSend_dataType(rightHandSideMatrix, v181, v182, v183, v184, v185, v186, v187) == 268435488)
    {
      objc_msgSend_dataType(solutionMatrix, v181, v182, v183, v184, v185, v186, v187);
    }

    if ((objc_msgSend_dataType(sourceMatrix, v181, v182, v183, v184, v185, v186, v187) != 268435488 || objc_msgSend_dataType(rightHandSideMatrix, v188, v189, v190, v191, v192, v193, v194) != 268435488 || objc_msgSend_dataType(solutionMatrix, v195, v196, v197, v198, v199, v200, v201) != 268435488) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    objc_msgSend_dataType(pivotIndices, v202, v203, v204, v205, v206, v207, v208);
    if (objc_msgSend_dataType(pivotIndices, v209, v210, v211, v212, v213, v214, v215) != 32 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    objc_msgSend_primarySourceMatrixOrigin(self, v216, v217, v218, v219, v220, v221, v222);
    objc_msgSend_rows(sourceMatrix, v223, v224, v225, v226, v227, v228, v229);
    objc_msgSend_primarySourceMatrixOrigin(self, v230, v231, v232, v233, v234, v235, v236);
    v237 = self->_order + *v607;
    if (v237 > objc_msgSend_rows(sourceMatrix, v238, v239, v240, v241, v242, v243, v244) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    objc_msgSend_primarySourceMatrixOrigin(self, v245, v246, v247, v248, v249, v250, v251);
    objc_msgSend_columns(sourceMatrix, v252, v253, v254, v255, v256, v257, v258);
    objc_msgSend_primarySourceMatrixOrigin(self, v259, v260, v261, v262, v263, v264, v265);
    v266 = self->_order + *&v607[8];
    if (v266 > objc_msgSend_columns(sourceMatrix, v267, v268, v269, v270, v271, v272, v273) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    isEqual = objc_msgSend_isEqual_(rightHandSideMatrix, v274, solutionMatrix, v275, v276, v277, v278, v279);
LABEL_31:
    objc_msgSend_secondarySourceMatrixOrigin(self, v64, v65, v66, v67, v68, v69, v70);
    objc_msgSend_resultMatrixOrigin(self, v280, v281, v282, v283, v284, v285, v286);
    if (*v607 == v616)
    {
      objc_msgSend_secondarySourceMatrixOrigin(self, v64, v65, v66, v67, v68, v69, v70);
      objc_msgSend_resultMatrixOrigin(self, v287, v288, v289, v290, v291, v292, v293);
      if (selfCopy2 == v611)
      {
        v294 = isEqual;
      }

      else
      {
        v294 = 0;
      }

      v11 = v62;
      if (v294)
      {
LABEL_46:
        objc_msgSend_primarySourceMatrixOrigin(self, v64, v65, v66, v67, v68, v69, v70);
        v373 = 0;
        goto LABEL_49;
      }

      v295 = 0;
    }

    else
    {
      v295 = 0;
      v11 = v62;
    }

    goto LABEL_38;
  }

  v63 = objc_msgSend_isEqual_(rightHandSideMatrix, v13, solutionMatrix, v15, v16, v17, v18, v19);
  isEqual = v63;
  if (self)
  {
    v62 = v11;
    goto LABEL_31;
  }

  if (v63)
  {
    goto LABEL_48;
  }

  v295 = 1;
LABEL_38:
  v600 = objc_msgSend_order(self, v64, v65, v66, v67, v68, v69, v70);
  v599 = objc_msgSend_numberOfRightHandSides(self, v296, v297, v298, v299, v300, v301, v302);
  v597 = v295;
  if (v295)
  {
    v310 = 0;
    v311 = 0;
    v598 = 0;
    memset(v607, 0, sizeof(v607));
    v616 = 0uLL;
    v617 = 0;
    v613 = 0;
    selfCopy2 = 0;
    v615 = 0;
    v610 = 0;
    v611 = 0;
    v612 = 0;
  }

  else
  {
    objc_msgSend_secondarySourceMatrixOrigin(self, v303, v304, v305, v306, v307, v308, v309);
    objc_msgSend_secondarySourceMatrixOrigin(self, v312, v313, v314, v315, v316, v317, v318);
    v598 = __PAIR64__(*v607, DWORD2(v616));
    objc_msgSend_resultMatrixOrigin(self, v319, v320, v321, v322, v323, v324, v325);
    v311 = v613;
    objc_msgSend_resultMatrixOrigin(self, v326, v327, v328, v329, v330, v331, v332);
    v310 = v611;
  }

  v333 = rightHandSideMatrix;
  v334 = objc_msgSend_rowBytes(rightHandSideMatrix, v303, v304, v305, v306, v307, v308, v309);
  v342 = objc_msgSend_rowBytes(solutionMatrix, v335, v336, v337, v338, v339, v340, v341);
  v343 = objc_alloc(MEMORY[0x277CD7210]);
  v344 = v11;
  v356 = objc_msgSend_initWithCommandBuffer_withDispatchType_(v343, v345, v11, 0, v346, v347, v348, v349);
  *&v616 = v356;
  *(&v616 + 1) = self;
  if ((*(&self->super.super.super.isa + *MEMORY[0x277CD7378]) & 0x18) != 0)
  {
    v357 = *(&self->super.super.super.isa + *MEMORY[0x277CD7360]);
    if (v357 || (v358 = objc_opt_class(), v357 = NSStringFromClass(v358), objc_msgSend_setLabel_(self, v359, v357, v360, v361, v362, v363, v364), v357))
    {
      objc_msgSend_setLabel_(v356, v350, v357, v351, v352, v353, v354, v355);
    }
  }

  v365 = *(&self->super.super.super.isa + *MEMORY[0x277CD7350]);
  *v607 = v600;
  *&v607[4] = v599;
  *&v607[8] = HIDWORD(v598);
  *&v607[12] = v598;
  *&v607[16] = v311;
  *&v607[20] = v310;
  v608 = v334;
  v609 = v342;
  v11 = v344;
  sub_2399E4C74(v365, v356, v344, v333, solutionMatrix, v607, v354, v355);
  objc_msgSend_endEncoding(v356, v366, v367, v368, v369, v370, v371, v372);
  v10 = sourceMatrix;

  if ((v597 & 1) == 0)
  {
    goto LABEL_46;
  }

LABEL_48:
  v605 = 0uLL;
  v373 = 1;
  v606 = 0;
LABEL_49:
  trsmL = self->_trsmL;
  *v607 = v605;
  *&v607[16] = v606;
  objc_msgSend_setPrimarySourceMatrixOrigin_(trsmL, v64, v607, v66, v67, v68, v69, v70);
  if (v373)
  {
    v603 = 0uLL;
    v604 = 0;
  }

  else
  {
    objc_msgSend_primarySourceMatrixOrigin(self, v375, v376, v377, v378, v379, v380, v381);
  }

  trsmU = self->_trsmU;
  *v607 = v603;
  *&v607[16] = v604;
  objc_msgSend_setPrimarySourceMatrixOrigin_(trsmU, v375, v607, v377, v378, v379, v380, v381);
  if (self->_transpose)
  {
    objc_msgSend_encodeToCommandBuffer_sourceMatrix_rightHandSideMatrix_solutionMatrix_(self->_trsmL, v383, v11, v10, solutionMatrix, solutionMatrix, v384, v385);
    objc_msgSend_encodeToCommandBuffer_sourceMatrix_rightHandSideMatrix_solutionMatrix_(self->_trsmU, v386, v11, v10, solutionMatrix, solutionMatrix, v387, v388);
    v389 = *(&self->super.super.super.isa + *MEMORY[0x277CD7370]);
    ComputeState = MPSLibrary::GetComputeState();
    v391 = *(&solutionMatrix->super.isa + *MEMORY[0x277CD73A8]);
    v399 = objc_msgSend_order(self, v392, v393, v394, v395, v396, v397, v398);
    v400 = objc_alloc(MEMORY[0x277CD7210]);
    v412 = objc_msgSend_initWithCommandBuffer_withDispatchType_(v400, v401, v11, 0, v402, v403, v404, v405);
    v613 = v412;
    selfCopy2 = self;
    if ((*(&self->super.super.super.isa + *MEMORY[0x277CD7378]) & 0x18) != 0)
    {
      v413 = *(&self->super.super.super.isa + *MEMORY[0x277CD7360]);
      if (v413 || (v414 = objc_opt_class(), v415 = NSStringFromClass(v414), objc_msgSend_setLabel_(self, v416, v415, v417, v418, v419, v420, v421), (v413 = v415) != 0))
      {
        objc_msgSend_setLabel_(v412, v406, v413, v407, v408, v409, v410, v411);
      }
    }

    objc_msgSend_setComputePipelineState_(v412, v406, ComputeState, v407, v408, v409, v410, v411);
    LODWORD(v610) = v399;
    HIDWORD(v610) = objc_msgSend_columns(solutionMatrix, v422, v423, v424, v425, v426, v427, v428);
    LODWORD(v611) = objc_msgSend_rowBytes(solutionMatrix, v429, v430, v431, v432, v433, v434, v435);
    v443 = objc_msgSend_data(solutionMatrix, v436, v437, v438, v439, v440, v441, v442);
    objc_msgSend_setBuffer_offset_atIndex_(v412, v444, v443, v391, 0, v445, v446, v447);
    v455 = objc_msgSend_data(pivotIndices, v448, v449, v450, v451, v452, v453, v454);
    v463 = objc_msgSend_offset(pivotIndices, v456, v457, v458, v459, v460, v461, v462);
    objc_msgSend_setBuffer_offset_atIndex_(v412, v464, v455, v463, 1, v465, v466, v467);
    objc_msgSend_setBytes_length_atIndex_(v412, v468, &v610, 12, 2, v469, v470, v471);
    *v607 = (HIDWORD(v610) + 511) >> 9;
    *&v607[8] = vdupq_n_s64(1uLL);
    v616 = xmmword_2399EEC90;
    v617 = 1;
    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v412, v472, v607, &v616, v473, v474, v475, v476);
    objc_msgSend_endEncoding(v412, v477, v478, v479, v480, v481, v482, v483);
  }

  else
  {
    v484 = *(&self->super.super.super.isa + *MEMORY[0x277CD7370]);
    v485 = MPSLibrary::GetComputeState();
    v486 = *(&solutionMatrix->super.isa + *MEMORY[0x277CD73A8]);
    v494 = objc_msgSend_order(self, v487, v488, v489, v490, v491, v492, v493);
    v495 = objc_alloc(MEMORY[0x277CD7210]);
    v507 = objc_msgSend_initWithCommandBuffer_withDispatchType_(v495, v496, v11, 0, v497, v498, v499, v500);
    v613 = v507;
    selfCopy2 = self;
    if ((*(&self->super.super.super.isa + *MEMORY[0x277CD7378]) & 0x18) != 0)
    {
      v508 = *(&self->super.super.super.isa + *MEMORY[0x277CD7360]);
      if (v508 || (v509 = objc_opt_class(), v510 = v11, v511 = NSStringFromClass(v509), objc_msgSend_setLabel_(self, v512, v511, v513, v514, v515, v516, v517), v508 = v511, v11 = v510, v10 = sourceMatrix, v508))
      {
        objc_msgSend_setLabel_(v507, v501, v508, v502, v503, v504, v505, v506);
      }
    }

    objc_msgSend_setComputePipelineState_(v507, v501, v485, v502, v503, v504, v505, v506);
    LODWORD(v610) = v494;
    HIDWORD(v610) = objc_msgSend_columns(solutionMatrix, v518, v519, v520, v521, v522, v523, v524);
    LODWORD(v611) = objc_msgSend_rowBytes(solutionMatrix, v525, v526, v527, v528, v529, v530, v531);
    v539 = objc_msgSend_data(solutionMatrix, v532, v533, v534, v535, v536, v537, v538);
    objc_msgSend_setBuffer_offset_atIndex_(v507, v540, v539, v486, 0, v541, v542, v543);
    v551 = objc_msgSend_data(pivotIndices, v544, v545, v546, v547, v548, v549, v550);
    v559 = objc_msgSend_offset(pivotIndices, v552, v553, v554, v555, v556, v557, v558);
    objc_msgSend_setBuffer_offset_atIndex_(v507, v560, v551, v559, 1, v561, v562, v563);
    objc_msgSend_setBytes_length_atIndex_(v507, v564, &v610, 12, 2, v565, v566, v567);
    *v607 = (HIDWORD(v610) + 511) >> 9;
    *&v607[8] = vdupq_n_s64(1uLL);
    v616 = xmmword_2399EEC90;
    v617 = 1;
    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v507, v568, v607, &v616, v569, v570, v571, v572);
    objc_msgSend_endEncoding(v507, v573, v574, v575, v576, v577, v578, v579);

    objc_msgSend_encodeToCommandBuffer_sourceMatrix_rightHandSideMatrix_solutionMatrix_(self->_trsmL, v580, v11, v10, solutionMatrix, solutionMatrix, v581, v582);
    objc_msgSend_encodeToCommandBuffer_sourceMatrix_rightHandSideMatrix_solutionMatrix_(self->_trsmU, v583, v11, v10, solutionMatrix, solutionMatrix, v584, v585);
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MPSMatrixSolveLU;
  [(MPSKernel *)&v3 dealloc];
}

@end