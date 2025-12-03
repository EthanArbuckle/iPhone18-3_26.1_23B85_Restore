@interface MPSMatrixBatchNormalizationGradient
- (MPSMatrixBatchNormalizationGradient)copyWithZone:(NSZone *)zone device:(id)device;
- (MPSMatrixBatchNormalizationGradient)initWithCoder:(NSCoder *)aDecoder device:(id)device;
- (MPSMatrixBatchNormalizationGradient)initWithDevice:(id)device;
- (void)encodeToCommandBuffer:(id)commandBuffer gradientMatrix:(MPSMatrix *)gradientMatrix inputMatrix:(MPSMatrix *)inputMatrix meanVector:(MPSVector *)meanVector varianceVector:(MPSVector *)varianceVector gammaVector:(MPSVector *)gammaVector betaVector:(MPSVector *)betaVector resultGradientForDataMatrix:(MPSMatrix *)resultGradientForDataMatrix resultGradientForGammaVector:(MPSVector *)resultGradientForGammaVector resultGradientForBetaVector:(MPSVector *)resultGradientForBetaVector;
- (void)encodeWithCoder:(id)coder;
- (void)setNeuronType:(MPSCNNNeuronType)neuronType parameterA:(float)parameterA parameterB:(float)parameterB parameterC:(float)parameterC;
@end

@implementation MPSMatrixBatchNormalizationGradient

- (MPSMatrixBatchNormalizationGradient)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSMatrixBatchNormalizationGradient;
  result = [(MPSMatrixBinaryKernel *)&v4 initWithDevice:device];
  if (result)
  {
    result->_sourceNumberOfFeatureVectors = -1;
    result->_sourceInputFeatureChannels = -1;
    result->_neuronType = 0;
    result->_neuronA = 0.0;
    result->_neuronB = 0.0;
    result->_neuronC = 0.0;
    result->_epsilon = 1.1755e-38;
  }

  return result;
}

- (void)encodeToCommandBuffer:(id)commandBuffer gradientMatrix:(MPSMatrix *)gradientMatrix inputMatrix:(MPSMatrix *)inputMatrix meanVector:(MPSVector *)meanVector varianceVector:(MPSVector *)varianceVector gammaVector:(MPSVector *)gammaVector betaVector:(MPSVector *)betaVector resultGradientForDataMatrix:(MPSMatrix *)resultGradientForDataMatrix resultGradientForGammaVector:(MPSVector *)resultGradientForGammaVector resultGradientForBetaVector:(MPSVector *)resultGradientForBetaVector
{
  v15 = inputMatrix;
  if ((*(&self->super.super.super.isa + *MEMORY[0x277CD7378]) & 1) == 0)
  {
    if (!commandBuffer && MTLReportFailureTypeEnabled())
    {
      v505 = objc_opt_class();
      v515 = NSStringFromClass(v505);
      MTLReportFailure();
    }

    if (!v15 && MTLReportFailureTypeEnabled())
    {
      v506 = objc_opt_class();
      v515 = NSStringFromClass(v506);
      MTLReportFailure();
    }

    if (!gradientMatrix && MTLReportFailureTypeEnabled())
    {
      v507 = objc_opt_class();
      v515 = NSStringFromClass(v507);
      MTLReportFailure();
    }

    if (!meanVector && MTLReportFailureTypeEnabled())
    {
      v508 = objc_opt_class();
      v515 = NSStringFromClass(v508);
      MTLReportFailure();
    }

    if (!varianceVector && MTLReportFailureTypeEnabled())
    {
      v509 = objc_opt_class();
      v515 = NSStringFromClass(v509);
      MTLReportFailure();
    }

    if (!resultGradientForDataMatrix && MTLReportFailureTypeEnabled())
    {
      v510 = objc_opt_class();
      v515 = NSStringFromClass(v510);
      MTLReportFailure();
    }

    objc_msgSend_primarySourceMatrixOrigin(self, a2, commandBuffer, gradientMatrix, inputMatrix, meanVector, varianceVector, gammaVector, v515);
    objc_msgSend_primarySourceMatrixOrigin(self, v19, v20, v21, v22, v23, v24, v25);
    if (v542 && MTLReportFailureTypeEnabled())
    {
      v511 = objc_opt_class();
      v516 = NSStringFromClass(v511);
      MTLReportFailure();
    }

    objc_msgSend_secondarySourceMatrixOrigin(self, v26, v27, v28, v29, v30, v31, v32, v516);
    objc_msgSend_secondarySourceMatrixOrigin(self, v33, v34, v35, v36, v37, v38, v39);
    if (v542 && MTLReportFailureTypeEnabled())
    {
      v512 = objc_opt_class();
      v517 = NSStringFromClass(v512);
      MTLReportFailure();
    }

    objc_msgSend_resultMatrixOrigin(self, v40, v41, v42, v43, v44, v45, v46, v517);
    objc_msgSend_resultMatrixOrigin(self, v47, v48, v49, v50, v51, v52, v53);
    if (v542 && MTLReportFailureTypeEnabled())
    {
      v513 = objc_opt_class();
      v518 = NSStringFromClass(v513);
      MTLReportFailure();
    }

    objc_msgSend_dataType(resultGradientForDataMatrix, v54, v55, v56, v57, v58, v59, v60, v518);
    if (objc_msgSend_dataType(resultGradientForDataMatrix, v61, v62, v63, v64, v65, v66, v67) != 268435488 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (betaVector)
    {
      objc_msgSend_dataType(betaVector, v68, v69, v70, v71, v72, v73, v74);
      if (objc_msgSend_dataType(betaVector, v75, v76, v77, v78, v79, v80, v81) != 268435488)
      {
        if (MTLReportFailureTypeEnabled())
        {
          MTLReportFailure();
        }
      }
    }

    if (gammaVector)
    {
      objc_msgSend_dataType(gammaVector, v68, v69, v70, v71, v72, v73, v74);
      if (objc_msgSend_dataType(gammaVector, v82, v83, v84, v85, v86, v87, v88) != 268435488)
      {
        if (MTLReportFailureTypeEnabled())
        {
          MTLReportFailure();
        }
      }
    }

    objc_msgSend_dataType(inputMatrix, v68, v69, v70, v71, v72, v73, v74);
    v15 = inputMatrix;
    if (objc_msgSend_dataType(inputMatrix, v89, v90, v91, v92, v93, v94, v95) != 268435488)
    {
      if (MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }
    }
  }

  v533 = gammaVector;
  v534 = varianceVector;
  v535 = meanVector;
  v96 = objc_msgSend_computeCommandEncoder(commandBuffer, a2, commandBuffer, gradientMatrix, inputMatrix, meanVector, varianceVector, gammaVector);
  v103 = v96;
  v104 = *(&self->super.super.super.isa + *MEMORY[0x277CD7360]);
  if (v104)
  {
    objc_msgSend_setLabel_(v96, v97, v104, v98, v99, v100, v101, v102);
  }

  v536 = v103;
  v105 = objc_msgSend_columns(v15, v97, v104, v98, v99, v100, v101, v102);
  objc_msgSend_secondarySourceMatrixOrigin(self, v106, v107, v108, v109, v110, v111, v112);
  v120 = objc_msgSend_columns(gradientMatrix, v113, v114, v115, v116, v117, v118, v119);
  objc_msgSend_primarySourceMatrixOrigin(self, v121, v122, v123, v124, v125, v126, v127);
  v135 = objc_msgSend_sourceInputFeatureChannels(self, v128, v129, v130, v131, v132, v133, v134);
  objc_msgSend_primarySourceMatrixOrigin(self, v136, v137, v138, v139, v140, v141, v142);
  if (v541 >= objc_msgSend_columns(gradientMatrix, v143, v144, v145, v146, v147, v148, v149))
  {
    goto LABEL_27;
  }

  v157 = v120 - v541;
  if (v120 - v541 >= v135)
  {
    v157 = v135;
  }

  v158 = v105 - v541 >= v157 ? v157 : v105 - v541;
  objc_msgSend_secondarySourceMatrixOrigin(self, v150, v151, v152, v153, v154, v155, v156);
  if (v546.i64[0] >= objc_msgSend_columns(v15, v159, v160, v161, v162, v163, v164, v165))
  {
LABEL_27:
    v158 = 0;
  }

  v166 = gradientMatrix;
  v167 = v15;
  v168 = objc_msgSend_rows(v15, v150, v151, v152, v153, v154, v155, v156);
  objc_msgSend_secondarySourceMatrixOrigin(self, v169, v170, v171, v172, v173, v174, v175);
  v176 = v168 - v540;
  v184 = objc_msgSend_rows(gradientMatrix, v177, v178, v179, v180, v181, v182, v183);
  objc_msgSend_primarySourceMatrixOrigin(self, v185, v186, v187, v188, v189, v190, v191);
  v199 = objc_msgSend_sourceNumberOfFeatureVectors(self, v192, v193, v194, v195, v196, v197, v198);
  if (v184 - v540 >= v199)
  {
    v207 = v199;
  }

  else
  {
    v207 = v184 - v540;
  }

  if (v176 >= v207)
  {
    v208 = v207;
  }

  else
  {
    v208 = v176;
  }

  objc_msgSend_primarySourceMatrixOrigin(self, v200, v201, v202, v203, v204, v205, v206);
  if (v540 >= objc_msgSend_rows(gradientMatrix, v209, v210, v211, v212, v213, v214, v215))
  {
    v231 = v534;
    v232 = v535;
    v233 = v536;
  }

  else
  {
    objc_msgSend_secondarySourceMatrixOrigin(self, v216, v217, v218, v219, v220, v221, v222);
    v230 = objc_msgSend_rows(v167, v223, v224, v225, v226, v227, v228, v229);
    v231 = v534;
    v232 = v535;
    v233 = v536;
    if (v545 < v230 && v158 && v208)
    {
      objc_msgSend_secondarySourceMatrixOrigin(self, v216, v217, v218, v219, v220, v221, v222);
      v530 = v541 * (objc_msgSend_dataType(inputMatrix, v234, v235, v236, v237, v238, v239, v240) >> 3);
      objc_msgSend_secondarySourceMatrixOrigin(self, v241, v242, v243, v244, v245, v246, v247);
      v520 = objc_msgSend_rowBytes(inputMatrix, v248, v249, v250, v251, v252, v253, v254);
      v255 = MEMORY[0x277CD73A8];
      v527 = *(&inputMatrix->super.isa + *MEMORY[0x277CD73A8]);
      objc_msgSend_primarySourceMatrixOrigin(self, v256, v257, v258, v259, v260, v261, v262);
      v519 = v541 * (objc_msgSend_dataType(gradientMatrix, v263, v264, v265, v266, v267, v268, v269) >> 3);
      objc_msgSend_primarySourceMatrixOrigin(self, v270, v271, v272, v273, v274, v275, v276);
      v284 = objc_msgSend_rowBytes(gradientMatrix, v277, v278, v279, v280, v281, v282, v283);
      v524 = *(&gradientMatrix->super.isa + *v255);
      objc_msgSend_resultMatrixOrigin(self, v285, v286, v287, v288, v289, v290, v291);
      v523 = v541;
      v522 = objc_msgSend_dataType(resultGradientForDataMatrix, v292, v293, v294, v295, v296, v297, v298) >> 3;
      objc_msgSend_resultMatrixOrigin(self, v299, v300, v301, v302, v303, v304, v305);
      v528 = objc_msgSend_rowBytes(resultGradientForDataMatrix, v306, v307, v308, v309, v310, v311, v312);
      v529 = *(&resultGradientForDataMatrix->super.isa + *v255);
      objc_msgSend_neuronType(self, v313, v314, v315, v316, v317, v318, v319);
      v521 = v530 + v520 * v545;
      v324 = v519 + v284 * v545;
      ComputeState = MPSLibrary::GetComputeState();
      HIDWORD(v540) = objc_msgSend_rowBytes(inputMatrix, v326, v327, v328, v329, v330, v331, v332);
      LODWORD(v541) = objc_msgSend_rowBytes(gradientMatrix, v333, v334, v335, v336, v337, v338, v339);
      HIDWORD(v541) = objc_msgSend_rowBytes(resultGradientForDataMatrix, v340, v341, v342, v343, v344, v345, v346);
      WORD1(v540) = v208;
      LOWORD(v540) = v158;
      objc_msgSend_neuronA(self, v347, v348, v349, v350, v351, v352, v353);
      v531 = v354;
      objc_msgSend_neuronB(self, v355, v356, v357, v358, v359, v360, v361);
      v525 = v362;
      objc_msgSend_neuronC(self, v363, v364, v365, v366, v367, v368, v369);
      v370 = v531;
      DWORD1(v370) = v525;
      DWORD2(v370) = v371;
      v543 = v370;
      LODWORD(v542) = objc_msgSend_neuronType(self, v372, v373, v374, v375, v376, v377, v378);
      objc_msgSend_epsilon(self, v379, v380, v381, v382, v383, v384, v385);
      v544 = v386;
      v532 = ComputeState;
      v394 = objc_msgSend_threadExecutionWidth(ComputeState, v387, v388, v389, v390, v391, v392, v393);
      v401 = v394;
      v233 = v536;
      if (v394)
      {
        v526 = (v158 + v394 - 1) / v394;
      }

      else
      {
        v526 = 0;
      }

      objc_msgSend_setComputePipelineState_(v536, v395, v532, v396, v397, v398, v399, v400);
      v409 = objc_msgSend_data(gradientMatrix, v402, v403, v404, v405, v406, v407, v408);
      objc_msgSend_setBuffer_offset_atIndex_(v536, v410, v409, v324 + v524, 0, v411, v412, v413);
      v421 = objc_msgSend_data(inputMatrix, v414, v415, v416, v417, v418, v419, v420);
      objc_msgSend_setBuffer_offset_atIndex_(v536, v422, v421, v521 + v527, 1, v423, v424, v425);
      v433 = objc_msgSend_data(v535, v426, v427, v428, v429, v430, v431, v432);
      v434 = MEMORY[0x277CD74A8];
      objc_msgSend_setBuffer_offset_atIndex_(v536, v435, v433, *(&v535->super.isa + *MEMORY[0x277CD74A8]), 2, v436, v437, v438);
      v446 = objc_msgSend_data(v534, v439, v440, v441, v442, v443, v444, v445);
      objc_msgSend_setBuffer_offset_atIndex_(v536, v447, v446, *(&v534->super.isa + *v434), 3, v448, v449, v450);
      if (v533)
      {
        v458 = objc_msgSend_data(v533, v451, v452, v453, v454, v455, v456, v457);
        objc_msgSend_setBuffer_offset_atIndex_(v536, v459, v458, *(&v533->super.super.isa + *v434), 4, v460, v461, v462);
      }

      if (betaVector)
      {
        v463 = objc_msgSend_data(betaVector, v451, v452, v453, v454, v455, v456, v457);
        objc_msgSend_setBuffer_offset_atIndex_(v536, v464, v463, *(&betaVector->super.isa + *v434), 5, v465, v466, v467);
      }

      v468 = objc_msgSend_data(resultGradientForDataMatrix, v451, v452, v453, v454, v455, v456, v457);
      objc_msgSend_setBuffer_offset_atIndex_(v536, v469, v468, v523 * v522 + v528 * v545 + v529, 6, v470, v471, v472);
      v166 = gradientMatrix;
      if (resultGradientForGammaVector)
      {
        v480 = objc_msgSend_data(resultGradientForGammaVector, v473, v474, v475, v476, v477, v478, v479);
        objc_msgSend_setBuffer_offset_atIndex_(v536, v481, v480, *(&resultGradientForGammaVector->super.isa + *v434), 7, v482, v483, v484);
      }

      if (resultGradientForBetaVector)
      {
        v485 = objc_msgSend_data(resultGradientForBetaVector, v473, v474, v475, v476, v477, v478, v479);
        objc_msgSend_setBuffer_offset_atIndex_(v536, v486, v485, *(&resultGradientForBetaVector->super.isa + *v434), 8, v487, v488, v489);
      }

      objc_msgSend_setBytes_length_atIndex_(v536, v473, &v540, 64, 9, v477, v478, v479);
      objc_msgSend_setThreadgroupMemoryLength_atIndex_(v536, v490, 16 * v401, 0, v491, v492, v493, v494);
      objc_msgSend_setThreadgroupMemoryLength_atIndex_(v536, v495, 16 * v401, 1, v496, v497, v498, v499);
      v545 = v526;
      v546 = vdupq_n_s64(1uLL);
      v538 = v401;
      v539 = xmmword_239D7D700;
      objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v536, v500, &v545, &v538, v501, v502, v503, v504);
      MPSLibrary::ReleaseComputeState();
    }
  }

  objc_msgSend_endEncoding(v233, v216, v217, v218, v219, v220, v221, v222);
  v320 = MEMORY[0x277CD7388];
  v321 = *MEMORY[0x277CD7388];
  if (*(&inputMatrix[3].super.isa + v321))
  {
    MPSDecrementReadCount(inputMatrix);
    v321 = *v320;
  }

  if (*(&v166[3].super.super.isa + v321))
  {
    MPSDecrementReadCount(v166);
  }

  v322 = MEMORY[0x277CD74A0];
  v323 = *MEMORY[0x277CD74A0];
  if (*(&v232[3].super.super.isa + v323))
  {
    MPSDecrementReadCount(v232);
    v323 = *v322;
  }

  if (*(&v231[3].super.super.isa + v323))
  {
    MPSDecrementReadCount(v231);
  }

  if (v533 && *(&v533[3].super.super.isa + *v322))
  {
    MPSDecrementReadCount(v533);
  }

  if (betaVector)
  {
    if (*(&betaVector[3].super.isa + *v322))
    {
      MPSDecrementReadCount(betaVector);
    }
  }
}

- (void)setNeuronType:(MPSCNNNeuronType)neuronType parameterA:(float)parameterA parameterB:(float)parameterB parameterC:(float)parameterC
{
  if (neuronType == MPSCNNNeuronTypePReLU)
  {
    selfCopy = self;
    v7 = parameterC;
    v8 = parameterB;
    v9 = parameterA;
    v10 = neuronType;
    v11 = MTLReportFailureTypeEnabled();
    neuronType = v10;
    parameterA = v9;
    parameterB = v8;
    parameterC = v7;
    v12 = v11;
    self = selfCopy;
    if (v12)
    {
      MTLReportFailure();
      neuronType = v10;
      parameterA = v9;
      self = selfCopy;
      parameterB = v8;
      parameterC = v7;
    }
  }

  self->_neuronType = neuronType;
  self->_neuronA = parameterA;
  self->_neuronB = parameterB;
  self->_neuronC = parameterC;
}

- (MPSMatrixBatchNormalizationGradient)copyWithZone:(NSZone *)zone device:(id)device
{
  v6.receiver = self;
  v6.super_class = MPSMatrixBatchNormalizationGradient;
  result = [(MPSMatrixBinaryKernel *)&v6 copyWithZone:zone device:device];
  result->_sourceNumberOfFeatureVectors = self->_sourceNumberOfFeatureVectors;
  result->_sourceInputFeatureChannels = self->_sourceInputFeatureChannels;
  result->_neuronType = self->_neuronType;
  result->_neuronA = self->_neuronA;
  result->_neuronB = self->_neuronB;
  result->_neuronC = self->_neuronC;
  result->_epsilon = self->_epsilon;
  return result;
}

- (MPSMatrixBatchNormalizationGradient)initWithCoder:(NSCoder *)aDecoder device:(id)device
{
  v55.receiver = self;
  v55.super_class = MPSMatrixBatchNormalizationGradient;
  v5 = [(MPSMatrixBinaryKernel *)&v55 initWithCoder:aDecoder device:device];
  v12 = v5;
  if (!v5)
  {
    return v12;
  }

  if (*(&v5->super.super.super.isa + *MEMORY[0x277CD7358] + 2) << 16 == 0x10000)
  {
    v5->_sourceNumberOfFeatureVectors = objc_msgSend_decodeInt64ForKey_(aDecoder, v6, @"MPSMatrixBatchNormalizationGradient._sourceNumberOfFeatureVectors;", v7, v8, v9, v10, v11);
    v12->_sourceInputFeatureChannels = objc_msgSend_decodeInt64ForKey_(aDecoder, v13, @"MPSMatrixBatchNormalizationGradient._sourceInputFeatureChannels;", v14, v15, v16, v17, v18);
    v12->_neuronType = objc_msgSend_decodeInt32ForKey_(aDecoder, v19, @"MPSMatrixBatchNormalizationGradient._neuronType;", v20, v21, v22, v23, v24);
    objc_msgSend_decodeFloatForKey_(aDecoder, v25, @"MPSMatrixBatchNormalizationGradient._neuronA;", v26, v27, v28, v29, v30);
    v12->_neuronA = v31;
    objc_msgSend_decodeFloatForKey_(aDecoder, v32, @"MPSMatrixBatchNormalizationGradient._neuronB;", v33, v34, v35, v36, v37);
    v12->_neuronB = v38;
    objc_msgSend_decodeFloatForKey_(aDecoder, v39, @"MPSMatrixBatchNormalizationGradient._neuronC;", v40, v41, v42, v43, v44);
    v12->_neuronC = v45;
    objc_msgSend_decodeFloatForKey_(aDecoder, v46, @"MPSMatrixBatchNormalizationGradient._epsilon;", v47, v48, v49, v50, v51);
    v12->_epsilon = v52;
    return v12;
  }

  if (MTLReportFailureTypeEnabled())
  {
    v54 = objc_opt_class();
    NSStringFromClass(v54);
    MTLReportFailure();
  }

  return 0;
}

- (void)encodeWithCoder:(id)coder
{
  *(&self->super.super.super.isa + *MEMORY[0x277CD7358] + 2) = 1;
  v48.receiver = self;
  v48.super_class = MPSMatrixBatchNormalizationGradient;
  [(MPSMatrixBinaryKernel *)&v48 encodeWithCoder:?];
  objc_msgSend_encodeInt64_forKey_(coder, v5, self->_sourceNumberOfFeatureVectors, @"MPSMatrixBatchNormalizationGradient._sourceNumberOfFeatureVectors;", v6, v7, v8, v9);
  objc_msgSend_encodeInt64_forKey_(coder, v10, self->_sourceInputFeatureChannels, @"MPSMatrixBatchNormalizationGradient._sourceInputFeatureChannels;", v11, v12, v13, v14);
  objc_msgSend_encodeInt32_forKey_(coder, v15, self->_neuronType, @"MPSMatrixBatchNormalizationGradient._neuronType;", v16, v17, v18, v19);
  *&v20 = self->_neuronA;
  objc_msgSend_encodeFloat_forKey_(coder, v21, @"MPSMatrixBatchNormalizationGradient._neuronA;", v22, v23, v24, v25, v26, v20);
  *&v27 = self->_neuronB;
  objc_msgSend_encodeFloat_forKey_(coder, v28, @"MPSMatrixBatchNormalizationGradient._neuronB;", v29, v30, v31, v32, v33, v27);
  *&v34 = self->_neuronC;
  objc_msgSend_encodeFloat_forKey_(coder, v35, @"MPSMatrixBatchNormalizationGradient._neuronC;", v36, v37, v38, v39, v40, v34);
  *&v41 = self->_epsilon;
  objc_msgSend_encodeFloat_forKey_(coder, v42, @"MPSMatrixBatchNormalizationGradient._epsilon;", v43, v44, v45, v46, v47, v41);
}

@end