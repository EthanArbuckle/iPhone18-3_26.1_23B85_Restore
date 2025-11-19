@interface MPSMatrixBatchNormalization
- (MPSMatrixBatchNormalization)copyWithZone:(NSZone *)zone device:(id)device;
- (MPSMatrixBatchNormalization)initWithCoder:(NSCoder *)aDecoder device:(id)device;
- (MPSMatrixBatchNormalization)initWithDevice:(id)device;
- (id)debugDescription;
- (void)encodeToCommandBuffer:(id)commandBuffer inputMatrix:(MPSMatrix *)inputMatrix meanVector:(MPSVector *)meanVector varianceVector:(MPSVector *)varianceVector gammaVector:(MPSVector *)gammaVector betaVector:(MPSVector *)betaVector resultMatrix:(MPSMatrix *)resultMatrix;
- (void)encodeWithCoder:(id)a3;
- (void)setNeuronType:(MPSCNNNeuronType)neuronType parameterA:(float)parameterA parameterB:(float)parameterB parameterC:(float)parameterC;
@end

@implementation MPSMatrixBatchNormalization

- (MPSMatrixBatchNormalization)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSMatrixBatchNormalization;
  result = [(MPSMatrixUnaryKernel *)&v4 initWithDevice:device];
  if (result)
  {
    result->_sourceNumberOfFeatureVectors = -1;
    result->_sourceInputFeatureChannels = -1;
    result->_neuronType = 0;
    result->_neuronA = 0.0;
    result->_neuronB = 0.0;
    result->_neuronC = 0.0;
    result->_epsilon = 1.1755e-38;
    result->_computeStatistics = 0;
  }

  return result;
}

- (void)encodeToCommandBuffer:(id)commandBuffer inputMatrix:(MPSMatrix *)inputMatrix meanVector:(MPSVector *)meanVector varianceVector:(MPSVector *)varianceVector gammaVector:(MPSVector *)gammaVector betaVector:(MPSVector *)betaVector resultMatrix:(MPSMatrix *)resultMatrix
{
  v9 = betaVector;
  v10 = gammaVector;
  if ((*(&self->super.super.super.isa + *MEMORY[0x277CD7378]) & 1) == 0)
  {
    if (!commandBuffer && MTLReportFailureTypeEnabled())
    {
      v470 = objc_opt_class();
      v475 = NSStringFromClass(v470);
      MTLReportFailure();
    }

    if (!inputMatrix && MTLReportFailureTypeEnabled())
    {
      v471 = objc_opt_class();
      v475 = NSStringFromClass(v471);
      MTLReportFailure();
    }

    if (!resultMatrix && MTLReportFailureTypeEnabled())
    {
      v472 = objc_opt_class();
      v475 = NSStringFromClass(v472);
      MTLReportFailure();
    }

    objc_msgSend_sourceMatrixOrigin(self, a2, commandBuffer, inputMatrix, meanVector, varianceVector, gammaVector, betaVector, v475);
    objc_msgSend_sourceMatrixOrigin(self, v14, v15, v16, v17, v18, v19, v20);
    if (v493 && MTLReportFailureTypeEnabled())
    {
      v473 = objc_opt_class();
      v476 = NSStringFromClass(v473);
      MTLReportFailure();
    }

    objc_msgSend_resultMatrixOrigin(self, v21, v22, v23, v24, v25, v26, v27, v476);
    objc_msgSend_resultMatrixOrigin(self, v28, v29, v30, v31, v32, v33, v34);
    if (v493 && MTLReportFailureTypeEnabled())
    {
      v474 = objc_opt_class();
      v477 = NSStringFromClass(v474);
      MTLReportFailure();
    }

    objc_msgSend_dataType(resultMatrix, v35, v36, v37, v38, v39, v40, v41, v477);
    if (objc_msgSend_dataType(resultMatrix, v42, v43, v44, v45, v46, v47, v48) != 268435488 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (v9)
    {
      objc_msgSend_dataType(v9, v49, v50, v51, v52, v53, v54, v55);
      if (objc_msgSend_dataType(v9, v56, v57, v58, v59, v60, v61, v62) != 268435488)
      {
        if (MTLReportFailureTypeEnabled())
        {
          MTLReportFailure();
        }
      }
    }

    if (v10)
    {
      objc_msgSend_dataType(v10, v49, v50, v51, v52, v53, v54, v55);
      if (objc_msgSend_dataType(v10, v63, v64, v65, v66, v67, v68, v69) != 268435488)
      {
        if (MTLReportFailureTypeEnabled())
        {
          MTLReportFailure();
        }
      }
    }

    if (objc_msgSend_dataType(inputMatrix, v49, v50, v51, v52, v53, v54, v55) != 268435488)
    {
      objc_msgSend_dataType(inputMatrix, v70, v71, v72, v73, v74, v75, v76);
    }

    if (objc_msgSend_dataType(inputMatrix, v70, v71, v72, v73, v74, v75, v76) != 268435488 && objc_msgSend_dataType(inputMatrix, v77, v78, v79, v80, v81, v82, v83) != 268435472 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    objc_msgSend_dataType(inputMatrix, v77, v78, v79, v80, v81, v82, v83);
    objc_msgSend_dataType(resultMatrix, v84, v85, v86, v87, v88, v89, v90);
    v98 = objc_msgSend_dataType(inputMatrix, v91, v92, v93, v94, v95, v96, v97);
    if (v98 != objc_msgSend_dataType(resultMatrix, v99, v100, v101, v102, v103, v104, v105) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    objc_msgSend_columns(inputMatrix, v106, v107, v108, v109, v110, v111, v112);
    objc_msgSend_sourceMatrixOrigin(self, v113, v114, v115, v116, v117, v118, v119);
    v127 = objc_msgSend_columns(inputMatrix, v120, v121, v122, v123, v124, v125, v126);
    objc_msgSend_sourceMatrixOrigin(self, v128, v129, v130, v131, v132, v133, v134);
    if (v127 <= v492 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    objc_msgSend_rows(inputMatrix, v135, v136, v137, v138, v139, v140, v141);
    objc_msgSend_sourceMatrixOrigin(self, v142, v143, v144, v145, v146, v147, v148);
    v156 = objc_msgSend_rows(inputMatrix, v149, v150, v151, v152, v153, v154, v155);
    objc_msgSend_sourceMatrixOrigin(self, v157, v158, v159, v160, v161, v162, v163);
    if (v156 <= v491 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }
  }

  v164 = objc_msgSend_computeCommandEncoder(commandBuffer, a2, commandBuffer, inputMatrix, meanVector, varianceVector, gammaVector, betaVector);
  v171 = v164;
  v172 = *(&self->super.super.super.isa + *MEMORY[0x277CD7360]);
  if (v172)
  {
    objc_msgSend_setLabel_(v164, v165, v172, v166, v167, v168, v169, v170);
  }

  v173 = objc_msgSend_columns(inputMatrix, v165, v172, v166, v167, v168, v169, v170);
  objc_msgSend_sourceMatrixOrigin(self, v174, v175, v176, v177, v178, v179, v180);
  v181 = v173 - v492;
  v189 = objc_msgSend_sourceInputFeatureChannels(self, v182, v183, v184, v185, v186, v187, v188);
  if (v173 - v492 >= v189)
  {
    v181 = v189;
  }

  objc_msgSend_sourceMatrixOrigin(self, v190, v191, v192, v193, v194, v195, v196);
  if (v492 >= objc_msgSend_columns(inputMatrix, v197, v198, v199, v200, v201, v202, v203))
  {
    v211 = 0;
  }

  else
  {
    v211 = v181;
  }

  v212 = objc_msgSend_rows(inputMatrix, v204, v205, v206, v207, v208, v209, v210);
  objc_msgSend_sourceMatrixOrigin(self, v213, v214, v215, v216, v217, v218, v219);
  v220 = v212 - v491;
  v228 = objc_msgSend_sourceNumberOfFeatureVectors(self, v221, v222, v223, v224, v225, v226, v227);
  if (v212 - v491 >= v228)
  {
    v220 = v228;
  }

  objc_msgSend_sourceMatrixOrigin(self, v229, v230, v231, v232, v233, v234, v235);
  if (v491 >= objc_msgSend_rows(inputMatrix, v236, v237, v238, v239, v240, v241, v242))
  {
    v250 = 0;
  }

  else
  {
    v250 = v220;
  }

  if (v211 && v250)
  {
    v485 = v9;
    v486 = v10;
    objc_msgSend_sourceMatrixOrigin(self, v243, v244, v245, v246, v247, v248, v249);
    v258 = v492 * (objc_msgSend_dataType(inputMatrix, v251, v252, v253, v254, v255, v256, v257) >> 3);
    objc_msgSend_sourceMatrixOrigin(self, v259, v260, v261, v262, v263, v264, v265);
    v480 = v258 + objc_msgSend_rowBytes(inputMatrix, v266, v267, v268, v269, v270, v271, v272) * v495;
    v273 = MEMORY[0x277CD73A8];
    v479 = *(&inputMatrix->super.isa + *MEMORY[0x277CD73A8]);
    objc_msgSend_resultMatrixOrigin(self, v274, v275, v276, v277, v278, v279, v280);
    v281 = v492;
    v289 = objc_msgSend_dataType(resultMatrix, v282, v283, v284, v285, v286, v287, v288) >> 3;
    objc_msgSend_resultMatrixOrigin(self, v290, v291, v292, v293, v294, v295, v296);
    v483 = objc_msgSend_rowBytes(resultMatrix, v297, v298, v299, v300, v301, v302, v303);
    v484 = *(&resultMatrix->super.isa + *v273);
    objc_msgSend_neuronType(self, v304, v305, v306, v307, v308, v309, v310);
    objc_msgSend_computeStatistics(self, v311, v312, v313, v314, v315, v316, v317);
    ComputeState = MPSLibrary::GetComputeState();
    HIDWORD(v491) = objc_msgSend_rowBytes(inputMatrix, v319, v320, v321, v322, v323, v324, v325);
    LODWORD(v492) = objc_msgSend_rowBytes(resultMatrix, v326, v327, v328, v329, v330, v331, v332);
    WORD1(v491) = v250;
    LOWORD(v491) = v211;
    objc_msgSend_neuronA(self, v333, v334, v335, v336, v337, v338, v339);
    v481 = v340;
    objc_msgSend_neuronB(self, v341, v342, v343, v344, v345, v346, v347);
    v478 = v348;
    objc_msgSend_neuronC(self, v349, v350, v351, v352, v353, v354, v355);
    v356 = v481;
    DWORD1(v356) = v478;
    DWORD2(v356) = v357;
    v493 = v356;
    HIDWORD(v492) = objc_msgSend_neuronType(self, v358, v359, v360, v361, v362, v363, v364);
    objc_msgSend_epsilon(self, v365, v366, v367, v368, v369, v370, v371);
    v494 = v372;
    v380 = objc_msgSend_threadExecutionWidth(ComputeState, v373, v374, v375, v376, v377, v378, v379);
    v387 = v380;
    if (v380)
    {
      v482 = (v211 + v380 - 1) / v380;
    }

    else
    {
      v482 = 0;
    }

    v388 = v281 * v289;
    objc_msgSend_setComputePipelineState_(v171, v381, ComputeState, v382, v383, v384, v385, v386);
    v396 = objc_msgSend_data(inputMatrix, v389, v390, v391, v392, v393, v394, v395);
    objc_msgSend_setBuffer_offset_atIndex_(v171, v397, v396, v480 + v479, 0, v398, v399, v400);
    v408 = objc_msgSend_data(meanVector, v401, v402, v403, v404, v405, v406, v407);
    v409 = MEMORY[0x277CD74A8];
    objc_msgSend_setBuffer_offset_atIndex_(v171, v410, v408, *(&meanVector->super.isa + *MEMORY[0x277CD74A8]), 1, v411, v412, v413);
    v421 = objc_msgSend_data(varianceVector, v414, v415, v416, v417, v418, v419, v420);
    objc_msgSend_setBuffer_offset_atIndex_(v171, v422, v421, *(&varianceVector->super.isa + *v409), 2, v423, v424, v425);
    v9 = v485;
    if (v486)
    {
      v433 = objc_msgSend_data(v486, v426, v427, v428, v429, v430, v431, v432);
      objc_msgSend_setBuffer_offset_atIndex_(v171, v434, v433, *(&v486->super.super.isa + *v409), 3, v435, v436, v437);
    }

    v438 = v388 + v483 * v495;
    if (v485)
    {
      v439 = objc_msgSend_data(v485, v426, v427, v428, v429, v430, v431, v432);
      objc_msgSend_setBuffer_offset_atIndex_(v171, v440, v439, *(&v485->super.super.isa + *v409), 4, v441, v442, v443);
    }

    v444 = objc_msgSend_data(resultMatrix, v426, v427, v428, v429, v430, v431, v432);
    objc_msgSend_setBuffer_offset_atIndex_(v171, v445, v444, v438 + v484, 5, v446, v447, v448);
    objc_msgSend_setBytes_length_atIndex_(v171, v449, &v491, 48, 6, v450, v451, v452);
    objc_msgSend_setThreadgroupMemoryLength_atIndex_(v171, v453, 16 * v387, 0, v454, v455, v456, v457);
    objc_msgSend_setThreadgroupMemoryLength_atIndex_(v171, v458, 16 * v387, 1, v459, v460, v461, v462);
    v495 = v482;
    v496 = vdupq_n_s64(1uLL);
    v489 = v387;
    v490 = xmmword_239D7D700;
    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v171, v463, &v495, &v489, v464, v465, v466, v467);
    MPSLibrary::ReleaseComputeState();
    v10 = v486;
  }

  objc_msgSend_endEncoding(v171, v243, v244, v245, v246, v247, v248, v249);
  if (*(&inputMatrix[3].super.isa + *MEMORY[0x277CD7388]))
  {
    MPSDecrementReadCount(inputMatrix);
  }

  v468 = MEMORY[0x277CD74A0];
  if (!self->_computeStatistics)
  {
    v469 = *MEMORY[0x277CD74A0];
    if (*(&meanVector[3].super.isa + v469))
    {
      MPSDecrementReadCount(meanVector);
      v469 = *v468;
    }

    if (*(&varianceVector[3].super.isa + v469))
    {
      MPSDecrementReadCount(varianceVector);
    }
  }

  if (v10 && *(&v10[3].super.super.isa + *v468))
  {
    MPSDecrementReadCount(v10);
  }

  if (v9)
  {
    if (*(&v9[3].super.super.isa + *v468))
    {
      MPSDecrementReadCount(v9);
    }
  }
}

- (MPSMatrixBatchNormalization)copyWithZone:(NSZone *)zone device:(id)device
{
  v6.receiver = self;
  v6.super_class = MPSMatrixBatchNormalization;
  result = [(MPSMatrixUnaryKernel *)&v6 copyWithZone:zone device:device];
  result->_sourceNumberOfFeatureVectors = self->_sourceNumberOfFeatureVectors;
  result->_sourceInputFeatureChannels = self->_sourceInputFeatureChannels;
  result->_neuronType = self->_neuronType;
  result->_neuronA = self->_neuronA;
  result->_neuronB = self->_neuronB;
  result->_neuronC = self->_neuronC;
  result->_epsilon = self->_epsilon;
  result->_computeStatistics = self->_computeStatistics;
  return result;
}

- (MPSMatrixBatchNormalization)initWithCoder:(NSCoder *)aDecoder device:(id)device
{
  v61.receiver = self;
  v61.super_class = MPSMatrixBatchNormalization;
  v5 = [(MPSMatrixUnaryKernel *)&v61 initWithCoder:aDecoder device:device];
  v12 = v5;
  if (!v5)
  {
    return v12;
  }

  if (*(&v5->super.super.super.isa + *MEMORY[0x277CD7358] + 2) << 16 == 0x10000)
  {
    v5->_sourceNumberOfFeatureVectors = objc_msgSend_decodeInt64ForKey_(aDecoder, v6, @"MPSMatrixBatchNormalization._sourceNumberOfFeatureVectors;", v7, v8, v9, v10, v11);
    v12->_sourceInputFeatureChannels = objc_msgSend_decodeInt64ForKey_(aDecoder, v13, @"MPSMatrixBatchNormalization._sourceInputFeatureChannels;", v14, v15, v16, v17, v18);
    v12->_neuronType = objc_msgSend_decodeInt32ForKey_(aDecoder, v19, @"MPSMatrixBatchNormalization._neuronType;", v20, v21, v22, v23, v24);
    objc_msgSend_decodeFloatForKey_(aDecoder, v25, @"MPSMatrixBatchNormalization._neuronA;", v26, v27, v28, v29, v30);
    v12->_neuronA = v31;
    objc_msgSend_decodeFloatForKey_(aDecoder, v32, @"MPSMatrixBatchNormalization._neuronB;", v33, v34, v35, v36, v37);
    v12->_neuronB = v38;
    objc_msgSend_decodeFloatForKey_(aDecoder, v39, @"MPSMatrixBatchNormalization._neuronC;", v40, v41, v42, v43, v44);
    v12->_neuronC = v45;
    objc_msgSend_decodeFloatForKey_(aDecoder, v46, @"MPSMatrixBatchNormalization._epsilon;", v47, v48, v49, v50, v51);
    v12->_epsilon = v52;
    v12->_computeStatistics = objc_msgSend_decodeBoolForKey_(aDecoder, v53, @"MPSMatrixBatchNormalization._computeStatistics;", v54, v55, v56, v57, v58);
    return v12;
  }

  if (MTLReportFailureTypeEnabled())
  {
    v60 = objc_opt_class();
    NSStringFromClass(v60);
    MTLReportFailure();
  }

  return 0;
}

- (void)encodeWithCoder:(id)a3
{
  *(&self->super.super.super.isa + *MEMORY[0x277CD7358] + 2) = 1;
  v53.receiver = self;
  v53.super_class = MPSMatrixBatchNormalization;
  [(MPSMatrixUnaryKernel *)&v53 encodeWithCoder:?];
  objc_msgSend_encodeInt64_forKey_(a3, v5, self->_sourceNumberOfFeatureVectors, @"MPSMatrixBatchNormalization._sourceNumberOfFeatureVectors;", v6, v7, v8, v9);
  objc_msgSend_encodeInt64_forKey_(a3, v10, self->_sourceInputFeatureChannels, @"MPSMatrixBatchNormalization._sourceInputFeatureChannels;", v11, v12, v13, v14);
  objc_msgSend_encodeInt32_forKey_(a3, v15, self->_neuronType, @"MPSMatrixBatchNormalization._neuronType;", v16, v17, v18, v19);
  *&v20 = self->_neuronA;
  objc_msgSend_encodeFloat_forKey_(a3, v21, @"MPSMatrixBatchNormalization._neuronA;", v22, v23, v24, v25, v26, v20);
  *&v27 = self->_neuronB;
  objc_msgSend_encodeFloat_forKey_(a3, v28, @"MPSMatrixBatchNormalization._neuronB;", v29, v30, v31, v32, v33, v27);
  *&v34 = self->_neuronC;
  objc_msgSend_encodeFloat_forKey_(a3, v35, @"MPSMatrixBatchNormalization._neuronC;", v36, v37, v38, v39, v40, v34);
  *&v41 = self->_epsilon;
  objc_msgSend_encodeFloat_forKey_(a3, v42, @"MPSMatrixBatchNormalization._epsilon;", v43, v44, v45, v46, v47, v41);
  objc_msgSend_encodeBool_forKey_(a3, v48, self->_computeStatistics, @"MPSMatrixBatchNormalization._computeStatistics;", v49, v50, v51, v52);
}

- (void)setNeuronType:(MPSCNNNeuronType)neuronType parameterA:(float)parameterA parameterB:(float)parameterB parameterC:(float)parameterC
{
  if (neuronType == MPSCNNNeuronTypePReLU)
  {
    v6 = self;
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
    self = v6;
    if (v12)
    {
      MTLReportFailure();
      neuronType = v10;
      parameterA = v9;
      self = v6;
      parameterB = v8;
      parameterC = v7;
    }
  }

  self->_neuronType = neuronType;
  self->_neuronA = parameterA;
  self->_neuronB = parameterB;
  self->_neuronC = parameterC;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v12.receiver = self;
  v12.super_class = MPSMatrixBatchNormalization;
  v4 = [(MPSMatrixUnaryKernel *)&v12 debugDescription];
  return objc_msgSend_stringWithFormat_(v3, v5, @"%@\n\tsourceNumberOfFeatureVectors:  \t%lu\n\tsourceInputFeatureChannels:  \t%lu\n\tneuronType:  \t%lu\n\tneuronParamA:  \t%f\n\tneuronParamB:  \t%f\n\tneuronParamC:  \t%f", v6, v7, v8, v9, v10, v4, self->_sourceNumberOfFeatureVectors, self->_sourceInputFeatureChannels, self->_neuronType, self->_neuronA, self->_neuronB, self->_neuronC);
}

@end