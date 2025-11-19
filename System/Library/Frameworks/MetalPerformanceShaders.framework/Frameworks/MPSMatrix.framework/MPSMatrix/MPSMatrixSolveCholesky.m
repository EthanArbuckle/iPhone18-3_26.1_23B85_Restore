@interface MPSMatrixSolveCholesky
- (MPSMatrixSolveCholesky)initWithDevice:(id)device upper:(BOOL)upper order:(NSUInteger)order numberOfRightHandSides:(NSUInteger)numberOfRightHandSides;
- (void)dealloc;
- (void)encodeToCommandBuffer:(id)commandBuffer sourceMatrix:(MPSMatrix *)sourceMatrix rightHandSideMatrix:(MPSMatrix *)rightHandSideMatrix solutionMatrix:(MPSMatrix *)solutionMatrix;
@end

@implementation MPSMatrixSolveCholesky

- (MPSMatrixSolveCholesky)initWithDevice:(id)device upper:(BOOL)upper order:(NSUInteger)order numberOfRightHandSides:(NSUInteger)numberOfRightHandSides
{
  v38.receiver = self;
  v38.super_class = MPSMatrixSolveCholesky;
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
    v17->_upper = upper;
    v17->_order = order;
    v17->_numberOfRightHandSides = numberOfRightHandSides;
    v30 = [MPSMatrixSolveTriangular alloc];
    v17->_trsmT = objc_msgSend_initWithDevice_right_upper_transpose_unit_order_numberOfRightHandSides_alpha_(v30, v31, device, 0, v17->_upper, 1, 0, v17->_order, 1.0, v17->_numberOfRightHandSides);
    v32 = [MPSMatrixSolveTriangular alloc];
    v34 = objc_msgSend_initWithDevice_right_upper_transpose_unit_order_numberOfRightHandSides_alpha_(v32, v33, device, 0, v17->_upper, 0, 0, v17->_order, 1.0, v17->_numberOfRightHandSides);
    result = v17;
    v17->_trsmN = v34;
  }

  return result;
}

- (void)encodeToCommandBuffer:(id)commandBuffer sourceMatrix:(MPSMatrix *)sourceMatrix rightHandSideMatrix:(MPSMatrix *)rightHandSideMatrix solutionMatrix:(MPSMatrix *)solutionMatrix
{
  v10 = sourceMatrix;
  v11 = commandBuffer;
  if (objc_msgSend_options(self, a2, commandBuffer, sourceMatrix, rightHandSideMatrix, solutionMatrix, v6, v7))
  {
    isEqual = objc_msgSend_isEqual_(rightHandSideMatrix, v13, solutionMatrix, v15, v16, v17, v18, v19);
    v70 = isEqual;
    if (!self)
    {
      if (isEqual)
      {
LABEL_44:
        v393 = 0uLL;
        v358 = 1;
        v394 = 0;
        goto LABEL_46;
      }

      v71 = 1;
      goto LABEL_36;
    }
  }

  else
  {
    if (!v11 && MTLReportFailureTypeEnabled())
    {
      v376 = objc_opt_class();
      v383 = NSStringFromClass(v376);
      MTLReportFailure();
    }

    if (!v10 && MTLReportFailureTypeEnabled())
    {
      v377 = objc_opt_class();
      v383 = NSStringFromClass(v377);
      MTLReportFailure();
    }

    if (!rightHandSideMatrix && MTLReportFailureTypeEnabled())
    {
      v378 = objc_opt_class();
      v383 = NSStringFromClass(v378);
      MTLReportFailure();
    }

    if (!solutionMatrix && MTLReportFailureTypeEnabled())
    {
      v379 = objc_opt_class();
      v383 = NSStringFromClass(v379);
      MTLReportFailure();
    }

    if (self)
    {
      objc_msgSend_primarySourceMatrixOrigin(self, v13, v14, v15, v16, v17, v18, v19);
      objc_msgSend_primarySourceMatrixOrigin(self, v20, v21, v22, v23, v24, v25, v26);
      if (v396 && MTLReportFailureTypeEnabled())
      {
        v380 = objc_opt_class();
        v383 = NSStringFromClass(v380);
        MTLReportFailure();
      }

      objc_msgSend_secondarySourceMatrixOrigin(self, v27, v28, v29, v30, v31, v32, v33, v383);
      objc_msgSend_secondarySourceMatrixOrigin(self, v34, v35, v36, v37, v38, v39, v40);
      if (v396 && MTLReportFailureTypeEnabled())
      {
        v381 = objc_opt_class();
        v384 = NSStringFromClass(v381);
        MTLReportFailure();
      }

      objc_msgSend_resultMatrixOrigin(self, v41, v42, v43, v44, v45, v46, v47, v384);
      objc_msgSend_resultMatrixOrigin(self, v48, v49, v50, v51, v52, v53, v54);
      if (v396 && MTLReportFailureTypeEnabled())
      {
        v382 = objc_opt_class();
        v385 = NSStringFromClass(v382);
        MTLReportFailure();
      }

      objc_msgSend_resultMatrixOrigin(self, v55, v56, v57, v58, v59, v60, v61, v385);
    }

    else
    {
      v395 = 0uLL;
      v396 = 0;
    }

    objc_msgSend_rows(solutionMatrix, v13, v14, v15, v16, v17, v18, v19, v383);
    objc_msgSend_resultMatrixOrigin(self, v72, v73, v74, v75, v76, v77, v78);
    v79 = self->_order + v395;
    if (v79 > objc_msgSend_rows(solutionMatrix, v80, v81, v82, v83, v84, v85, v86) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    objc_msgSend_resultMatrixOrigin(self, v87, v88, v89, v90, v91, v92, v93);
    objc_msgSend_columns(solutionMatrix, v94, v95, v96, v97, v98, v99, v100);
    objc_msgSend_resultMatrixOrigin(self, v101, v102, v103, v104, v105, v106, v107);
    v108 = self->_numberOfRightHandSides + *(&v395 + 1);
    if (v108 > objc_msgSend_columns(solutionMatrix, v109, v110, v111, v112, v113, v114, v115) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    objc_msgSend_secondarySourceMatrixOrigin(self, v116, v117, v118, v119, v120, v121, v122);
    objc_msgSend_rows(rightHandSideMatrix, v123, v124, v125, v126, v127, v128, v129);
    objc_msgSend_secondarySourceMatrixOrigin(self, v130, v131, v132, v133, v134, v135, v136);
    v137 = self->_order + v395;
    if (v137 > objc_msgSend_rows(rightHandSideMatrix, v138, v139, v140, v141, v142, v143, v144) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    objc_msgSend_secondarySourceMatrixOrigin(self, v145, v146, v147, v148, v149, v150, v151);
    objc_msgSend_columns(rightHandSideMatrix, v152, v153, v154, v155, v156, v157, v158);
    objc_msgSend_secondarySourceMatrixOrigin(self, v159, v160, v161, v162, v163, v164, v165);
    v166 = self->_numberOfRightHandSides + *(&v395 + 1);
    if (v166 > objc_msgSend_columns(rightHandSideMatrix, v167, v168, v169, v170, v171, v172, v173) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (objc_msgSend_dataType(v10, v174, v175, v176, v177, v178, v179, v180) == 268435488 && objc_msgSend_dataType(rightHandSideMatrix, v181, v182, v183, v184, v185, v186, v187) == 268435488)
    {
      objc_msgSend_dataType(solutionMatrix, v181, v182, v183, v184, v185, v186, v187);
    }

    if ((objc_msgSend_dataType(v10, v181, v182, v183, v184, v185, v186, v187) != 268435488 || objc_msgSend_dataType(rightHandSideMatrix, v188, v189, v190, v191, v192, v193, v194) != 268435488 || objc_msgSend_dataType(solutionMatrix, v195, v196, v197, v198, v199, v200, v201) != 268435488) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    objc_msgSend_primarySourceMatrixOrigin(self, v202, v203, v204, v205, v206, v207, v208);
    objc_msgSend_rows(v10, v209, v210, v211, v212, v213, v214, v215);
    objc_msgSend_primarySourceMatrixOrigin(self, v216, v217, v218, v219, v220, v221, v222);
    v223 = self->_order + v395;
    if (v223 > objc_msgSend_rows(v10, v224, v225, v226, v227, v228, v229, v230) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    objc_msgSend_primarySourceMatrixOrigin(self, v231, v232, v233, v234, v235, v236, v237);
    objc_msgSend_columns(v10, v238, v239, v240, v241, v242, v243, v244);
    objc_msgSend_primarySourceMatrixOrigin(self, v245, v246, v247, v248, v249, v250, v251);
    v252 = self->_order + *(&v395 + 1);
    if (v252 > objc_msgSend_columns(v10, v253, v254, v255, v256, v257, v258, v259) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v70 = objc_msgSend_isEqual_(rightHandSideMatrix, v260, solutionMatrix, v261, v262, v263, v264, v265);
  }

  objc_msgSend_secondarySourceMatrixOrigin(self, v63, v64, v65, v66, v67, v68, v69);
  objc_msgSend_resultMatrixOrigin(self, v266, v267, v268, v269, v270, v271, v272);
  if (v395 == v405)
  {
    objc_msgSend_secondarySourceMatrixOrigin(self, v63, v64, v65, v66, v67, v68, v69);
    objc_msgSend_resultMatrixOrigin(self, v273, v274, v275, v276, v277, v278, v279);
    v280 = v403 == v400 ? v70 : 0;
    if (v280)
    {
      goto LABEL_45;
    }
  }

  v71 = 0;
LABEL_36:
  v387 = v10;
  v390 = objc_msgSend_order(self, v63, v64, v65, v66, v67, v68, v69);
  v389 = objc_msgSend_numberOfRightHandSides(self, v281, v282, v283, v284, v285, v286, v287);
  v386 = v71;
  if (v71)
  {
    v295 = v11;
    v296 = 0;
    v297 = 0;
    v388 = 0;
    v395 = 0uLL;
    v396 = 0;
    v405 = 0;
    v406 = 0;
    v407 = 0;
    v402 = 0;
    v403 = 0;
    v404 = 0;
    v399 = 0;
    v400 = 0;
    v401 = 0;
  }

  else
  {
    v295 = v11;
    objc_msgSend_secondarySourceMatrixOrigin(self, v288, v289, v290, v291, v292, v293, v294);
    objc_msgSend_secondarySourceMatrixOrigin(self, v298, v299, v300, v301, v302, v303, v304);
    v388 = __PAIR64__(v395, v406);
    objc_msgSend_resultMatrixOrigin(self, v305, v306, v307, v308, v309, v310, v311);
    v297 = v402;
    objc_msgSend_resultMatrixOrigin(self, v312, v313, v314, v315, v316, v317, v318);
    v296 = v400;
  }

  v319 = rightHandSideMatrix;
  v320 = objc_msgSend_rowBytes(rightHandSideMatrix, v288, v289, v290, v291, v292, v293, v294);
  v328 = objc_msgSend_rowBytes(solutionMatrix, v321, v322, v323, v324, v325, v326, v327);
  v329 = objc_alloc(MEMORY[0x277CD7210]);
  v341 = objc_msgSend_initWithCommandBuffer_withDispatchType_(v329, v330, v295, 0, v331, v332, v333, v334);
  v405 = v341;
  v406 = self;
  if ((*(&self->super.super.super.isa + *MEMORY[0x277CD7378]) & 0x18) != 0)
  {
    v342 = *(&self->super.super.super.isa + *MEMORY[0x277CD7360]);
    if (v342 || (v343 = objc_opt_class(), v342 = NSStringFromClass(v343), objc_msgSend_setLabel_(self, v344, v342, v345, v346, v347, v348, v349), v342))
    {
      objc_msgSend_setLabel_(v341, v335, v342, v336, v337, v338, v339, v340);
    }
  }

  v350 = *(&self->super.super.super.isa + *MEMORY[0x277CD7350]);
  *&v395 = __PAIR64__(v389, v390);
  *(&v395 + 1) = __PAIR64__(v388, HIDWORD(v388));
  v396 = __PAIR64__(v296, v297);
  v397 = v320;
  v398 = v328;
  v11 = v295;
  sub_2399E4C74(v350, v341, v295, v319, solutionMatrix, &v395, v339, v340);
  objc_msgSend_endEncoding(v341, v351, v352, v353, v354, v355, v356, v357);
  v10 = v387;

  if (v386)
  {
    goto LABEL_44;
  }

LABEL_45:
  objc_msgSend_primarySourceMatrixOrigin(self, v63, v64, v65, v66, v67, v68, v69);
  v358 = 0;
LABEL_46:
  p_trsmT = &self->_trsmT;
  trsmT = self->_trsmT;
  v395 = v393;
  v396 = v394;
  objc_msgSend_setPrimarySourceMatrixOrigin_(trsmT, v63, &v395, v65, v66, v67, v68, v69);
  if (v358)
  {
    v391 = 0uLL;
    v392 = 0;
  }

  else
  {
    objc_msgSend_primarySourceMatrixOrigin(self, v361, v362, v363, v364, v365, v366, v367);
  }

  trsmN = self->_trsmN;
  v395 = v391;
  v396 = v392;
  objc_msgSend_setPrimarySourceMatrixOrigin_(trsmN, v361, &v395, v363, v364, v365, v366, v367);
  if (self->_upper)
  {
    p_trsmN = &self->_trsmT;
  }

  else
  {
    p_trsmN = &self->_trsmN;
  }

  if (self->_upper)
  {
    p_trsmT = &self->_trsmN;
  }

  objc_msgSend_encodeToCommandBuffer_sourceMatrix_rightHandSideMatrix_solutionMatrix_(*p_trsmN, v369, v11, v10, solutionMatrix, solutionMatrix, v370, v371);
  objc_msgSend_encodeToCommandBuffer_sourceMatrix_rightHandSideMatrix_solutionMatrix_(*p_trsmT, v373, v11, v10, solutionMatrix, solutionMatrix, v374, v375);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MPSMatrixSolveCholesky;
  [(MPSKernel *)&v3 dealloc];
}

@end