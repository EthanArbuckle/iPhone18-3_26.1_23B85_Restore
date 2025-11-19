@interface MPSMatrixNeuronGradient
- (MPSMatrixNeuronGradient)copyWithZone:(NSZone *)zone device:(id)device;
- (MPSMatrixNeuronGradient)initWithCoder:(NSCoder *)aDecoder device:(id)device;
- (MPSMatrixNeuronGradient)initWithDevice:(id)device;
- (void)dealloc;
- (void)encodeToCommandBuffer:(id)commandBuffer gradientMatrix:(MPSMatrix *)gradientMatrix inputMatrix:(MPSMatrix *)inputMatrix biasVector:(MPSVector *)biasVector resultGradientForDataMatrix:(MPSMatrix *)resultGradientForDataMatrix resultGradientForBiasVector:(MPSVector *)resultGradientForBiasVector;
- (void)encodeWithCoder:(id)a3;
- (void)setNeuronToPReLUWithParametersA:(NSData *)A;
- (void)setNeuronType:(MPSCNNNeuronType)neuronType parameterA:(float)parameterA parameterB:(float)parameterB parameterC:(float)parameterC;
@end

@implementation MPSMatrixNeuronGradient

- (MPSMatrixNeuronGradient)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSMatrixNeuronGradient;
  result = [(MPSMatrixBinaryKernel *)&v4 initWithDevice:device];
  if (result)
  {
    result->_alpha = 1.0;
    result->_sourceNumberOfFeatureVectors = -1;
    result->_sourceInputFeatureChannels = -1;
    result->_neuronType = 0;
    result->_neuronA = 0.0;
    result->_neuronB = 0.0;
    result->_neuronC = 0.0;
    result->neuronAParamBuf = 0;
  }

  return result;
}

- (void)encodeToCommandBuffer:(id)commandBuffer gradientMatrix:(MPSMatrix *)gradientMatrix inputMatrix:(MPSMatrix *)inputMatrix biasVector:(MPSVector *)biasVector resultGradientForDataMatrix:(MPSMatrix *)resultGradientForDataMatrix resultGradientForBiasVector:(MPSVector *)resultGradientForBiasVector
{
  v14 = *MEMORY[0x277CD7378];
  if ((*(&self->super.super.super.isa + v14) & 1) == 0)
  {
    if (!commandBuffer && MTLReportFailureTypeEnabled())
    {
      v513 = objc_opt_class();
      v520 = NSStringFromClass(v513);
      MTLReportFailure();
    }

    if (!inputMatrix && MTLReportFailureTypeEnabled())
    {
      v514 = objc_opt_class();
      v520 = NSStringFromClass(v514);
      MTLReportFailure();
    }

    if (!gradientMatrix && MTLReportFailureTypeEnabled())
    {
      v515 = objc_opt_class();
      v520 = NSStringFromClass(v515);
      MTLReportFailure();
    }

    if (!resultGradientForDataMatrix && MTLReportFailureTypeEnabled())
    {
      v516 = objc_opt_class();
      v520 = NSStringFromClass(v516);
      MTLReportFailure();
    }

    objc_msgSend_primarySourceMatrixOrigin(self, a2, commandBuffer, gradientMatrix, inputMatrix, biasVector, resultGradientForDataMatrix, resultGradientForBiasVector, v520);
    objc_msgSend_primarySourceMatrixOrigin(self, v15, v16, v17, v18, v19, v20, v21);
    if (v547 && MTLReportFailureTypeEnabled())
    {
      v517 = objc_opt_class();
      v521 = NSStringFromClass(v517);
      MTLReportFailure();
    }

    objc_msgSend_secondarySourceMatrixOrigin(self, v22, v23, v24, v25, v26, v27, v28, v521);
    objc_msgSend_secondarySourceMatrixOrigin(self, v29, v30, v31, v32, v33, v34, v35);
    if (v547 && MTLReportFailureTypeEnabled())
    {
      v518 = objc_opt_class();
      v522 = NSStringFromClass(v518);
      MTLReportFailure();
    }

    objc_msgSend_resultMatrixOrigin(self, v36, v37, v38, v39, v40, v41, v42, v522);
    objc_msgSend_resultMatrixOrigin(self, v43, v44, v45, v46, v47, v48, v49);
    if (v547 && MTLReportFailureTypeEnabled())
    {
      v519 = objc_opt_class();
      v523 = NSStringFromClass(v519);
      MTLReportFailure();
    }

    if (objc_msgSend_matrices(gradientMatrix, v50, v51, v52, v53, v54, v55, v56, v523) == 1 && objc_msgSend_matrices(inputMatrix, v57, v58, v59, v60, v61, v62, v63) == 1)
    {
      objc_msgSend_matrices(resultGradientForDataMatrix, v57, v58, v59, v60, v61, v62, v63);
    }

    if ((objc_msgSend_matrices(gradientMatrix, v57, v58, v59, v60, v61, v62, v63) != 1 || objc_msgSend_matrices(inputMatrix, v64, v65, v66, v67, v68, v69, v70) != 1 || objc_msgSend_matrices(resultGradientForDataMatrix, v71, v72, v73, v74, v75, v76, v77) != 1) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    objc_msgSend_dataType(resultGradientForDataMatrix, v78, v79, v80, v81, v82, v83, v84);
    if (objc_msgSend_dataType(resultGradientForDataMatrix, v85, v86, v87, v88, v89, v90, v91) != 268435488 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (resultGradientForBiasVector)
    {
      objc_msgSend_dataType(resultGradientForBiasVector, v92, v93, v94, v95, v96, v97, v98);
      if (objc_msgSend_dataType(resultGradientForBiasVector, v99, v100, v101, v102, v103, v104, v105) != 268435488)
      {
        if (MTLReportFailureTypeEnabled())
        {
          MTLReportFailure();
        }
      }
    }

    objc_msgSend_dataType(gradientMatrix, v92, v93, v94, v95, v96, v97, v98);
    if (objc_msgSend_dataType(gradientMatrix, v106, v107, v108, v109, v110, v111, v112) != 268435488 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    objc_msgSend_dataType(inputMatrix, v113, v114, v115, v116, v117, v118, v119);
    if (objc_msgSend_dataType(inputMatrix, v120, v121, v122, v123, v124, v125, v126) != 268435488 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (self->_neuronType == 10)
    {
      if (self->neuronAParamBuf)
      {
        goto LABEL_22;
      }

      if (MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      if (self->neuronAParamBuf)
      {
LABEL_22:
        v134 = objc_msgSend_columns(inputMatrix, v127, v128, v129, v130, v131, v132, v133);
        objc_msgSend_primarySourceMatrixOrigin(self, v135, v136, v137, v138, v139, v140, v141);
        if (v134 - v546 >= self->_sourceInputFeatureChannels)
        {
          sourceInputFeatureChannels = self->_sourceInputFeatureChannels;
        }

        else
        {
          sourceInputFeatureChannels = v134 - v546;
        }

        objc_msgSend_length(self->neuronAParamBuf, v142, v143, v144, v145, v146, v147, v148);
        if (objc_msgSend_length(self->neuronAParamBuf, v150, v151, v152, v153, v154, v155, v156) < 4 * sourceInputFeatureChannels && MTLReportFailureTypeEnabled())
        {
          MTLReportFailure();
        }
      }
    }
  }

  v534 = resultGradientForBiasVector;
  v535 = resultGradientForDataMatrix;
  v157 = objc_alloc(MEMORY[0x277CD7210]);
  v533 = commandBuffer;
  v170 = objc_msgSend_initWithCommandBuffer_withDispatchType_(v157, v158, commandBuffer, 0, v159, v160, v161, v162);
  if ((*(&self->super.super.super.isa + v14) & 0x18) != 0)
  {
    v164 = *(&self->super.super.super.isa + *MEMORY[0x277CD7360]);
    if (v164 || (v171 = objc_opt_class(), v172 = NSStringFromClass(v171), objc_msgSend_setLabel_(self, v173, v172, v174, v175, v176, v177, v178), (v164 = v172) != 0))
    {
      objc_msgSend_setLabel_(v170, v163, v164, v165, v166, v167, v168, v169);
    }
  }

  v179 = objc_msgSend_columns(inputMatrix, v163, v164, v165, v166, v167, v168, v169);
  objc_msgSend_secondarySourceMatrixOrigin(self, v180, v181, v182, v183, v184, v185, v186);
  v194 = objc_msgSend_columns(gradientMatrix, v187, v188, v189, v190, v191, v192, v193);
  objc_msgSend_primarySourceMatrixOrigin(self, v195, v196, v197, v198, v199, v200, v201);
  v209 = objc_msgSend_sourceInputFeatureChannels(self, v202, v203, v204, v205, v206, v207, v208);
  objc_msgSend_secondarySourceMatrixOrigin(self, v210, v211, v212, v213, v214, v215, v216);
  if (v546 >= objc_msgSend_columns(inputMatrix, v217, v218, v219, v220, v221, v222, v223))
  {
    goto LABEL_37;
  }

  v231 = v179 - v546;
  if (v179 - v546 >= v194 - v546)
  {
    v231 = v194 - v546;
  }

  v232 = v231 >= v209 ? v209 : v231;
  objc_msgSend_primarySourceMatrixOrigin(self, v224, v225, v226, v227, v228, v229, v230);
  if (v541 >= objc_msgSend_columns(gradientMatrix, v233, v234, v235, v236, v237, v238, v239))
  {
LABEL_37:
    v232 = 0;
  }

  v240 = objc_msgSend_rows(inputMatrix, v224, v225, v226, v227, v228, v229, v230);
  objc_msgSend_secondarySourceMatrixOrigin(self, v241, v242, v243, v244, v245, v246, v247);
  v255 = objc_msgSend_rows(gradientMatrix, v248, v249, v250, v251, v252, v253, v254);
  objc_msgSend_primarySourceMatrixOrigin(self, v256, v257, v258, v259, v260, v261, v262);
  v270 = objc_msgSend_sourceNumberOfFeatureVectors(self, v263, v264, v265, v266, v267, v268, v269);
  v278 = v240 - v545;
  if (v240 - v545 >= v255 - v545)
  {
    v278 = v255 - v545;
  }

  if (v278 >= v270)
  {
    v279 = v270;
  }

  else
  {
    v279 = v278;
  }

  objc_msgSend_secondarySourceMatrixOrigin(self, v271, v272, v273, v274, v275, v276, v277);
  if (v545 < objc_msgSend_rows(inputMatrix, v280, v281, v282, v283, v284, v285, v286))
  {
    objc_msgSend_primarySourceMatrixOrigin(self, v287, v288, v289, v290, v291, v292, v293);
    if (v540 < objc_msgSend_rows(gradientMatrix, v294, v295, v296, v297, v298, v299, v300) && v232 && v279)
    {
      objc_msgSend_primarySourceMatrixOrigin(self, v287, v288, v289, v290, v291, v292, v293);
      v301 = v546;
      v309 = objc_msgSend_dataType(gradientMatrix, v302, v303, v304, v305, v306, v307, v308);
      objc_msgSend_primarySourceMatrixOrigin(self, v310, v311, v312, v313, v314, v315, v316);
      v532 = objc_msgSend_rowBytes(gradientMatrix, v317, v318, v319, v320, v321, v322, v323);
      v324 = MEMORY[0x277CD73A8];
      v531 = *(&gradientMatrix->super.isa + *MEMORY[0x277CD73A8]);
      objc_msgSend_secondarySourceMatrixOrigin(self, v325, v326, v327, v328, v329, v330, v331);
      v530 = v546;
      v529 = objc_msgSend_dataType(inputMatrix, v332, v333, v334, v335, v336, v337, v338);
      objc_msgSend_secondarySourceMatrixOrigin(self, v339, v340, v341, v342, v343, v344, v345);
      v528 = objc_msgSend_rowBytes(inputMatrix, v346, v347, v348, v349, v350, v351, v352);
      v527 = *(&inputMatrix->super.isa + *v324);
      objc_msgSend_resultMatrixOrigin(self, v353, v354, v355, v356, v357, v358, v359);
      v526 = v546;
      v525 = objc_msgSend_dataType(v535, v360, v361, v362, v363, v364, v365, v366);
      objc_msgSend_resultMatrixOrigin(self, v367, v368, v369, v370, v371, v372, v373);
      v524 = objc_msgSend_rowBytes(v535, v374, v375, v376, v377, v378, v379, v380);
      v381 = *(&v535->super.isa + *v324);
      objc_msgSend_neuronType(self, v382, v383, v384, v385, v386, v387, v388);
      ComputeState = MPSLibrary::GetComputeState();
      v548 = 0;
      WORD1(v545) = v279;
      LOWORD(v545) = v232;
      HIDWORD(v545) = objc_msgSend_rowBytes(inputMatrix, v390, v391, v392, v393, v394, v395, v396);
      LODWORD(v546) = objc_msgSend_rowBytes(gradientMatrix, v397, v398, v399, v400, v401, v402, v403);
      HIDWORD(v546) = objc_msgSend_rowBytes(v535, v404, v405, v406, v407, v408, v409, v410);
      v547 = objc_msgSend_neuronType(self, v411, v412, v413, v414, v415, v416, v417);
      alpha = self->_alpha;
      *(&v547 + 1) = alpha;
      *&v419 = *&self->_neuronA;
      DWORD2(v419) = LODWORD(self->_neuronC);
      v549 = v419;
      objc_msgSend_setComputePipelineState_(v170, v420, ComputeState, v421, v422, v423, v424, v425);
      v433 = objc_msgSend_data(gradientMatrix, v426, v427, v428, v429, v430, v431, v432);
      objc_msgSend_setBuffer_offset_atIndex_(v170, v434, v433, v301 * (v309 >> 3) + v532 * v540 + v531, 0, v435, v436, v437);
      v445 = objc_msgSend_data(inputMatrix, v438, v439, v440, v441, v442, v443, v444);
      objc_msgSend_setBuffer_offset_atIndex_(v170, v446, v445, v530 * (v529 >> 3) + v528 * v540 + v527, 1, v447, v448, v449);
      v457 = objc_msgSend_data(v535, v450, v451, v452, v453, v454, v455, v456);
      objc_msgSend_setBuffer_offset_atIndex_(v170, v458, v457, v526 * (v525 >> 3) + v524 * v540 + v381, 2, v459, v460, v461);
      v469 = MEMORY[0x277CD74A8];
      if (biasVector)
      {
        v470 = objc_msgSend_data(biasVector, v462, v463, v464, v465, v466, v467, v468);
        objc_msgSend_setBuffer_offset_atIndex_(v170, v471, v470, *(&biasVector->super.isa + *v469), 3, v472, v473, v474);
      }

      if (v534)
      {
        v475 = objc_msgSend_data(v534, v462, v463, v464, v465, v466, v467, v468);
        objc_msgSend_setBuffer_offset_atIndex_(v170, v476, v475, *(&v534->super.isa + *v469), 4, v477, v478, v479);
        objc_msgSend_setThreadgroupMemoryLength_atIndex_(v170, v480, 512, 0, v481, v482, v483, v484);
      }

      objc_msgSend_setBytes_length_atIndex_(v170, v462, &v545, 48, 5, v466, v467, v468);
      if (objc_msgSend_neuronType(self, v485, v486, v487, v488, v489, v490, v491) == 10)
      {
        objc_msgSend_setBuffer_offset_atIndex_(v170, v492, self->neuronAParamBuf, 0, 6, v494, v495, v496);
        if ((objc_msgSend_retainedReferences(v533, v497, v498, v499, v500, v501, v502, v503) & 1) == 0)
        {
          v504 = self->neuronAParamBuf;
          v540 = MEMORY[0x277D85DD0];
          v541 = 3221225472;
          v542 = sub_239D30D48;
          v543 = &unk_278B28F28;
          v544 = self;
          objc_msgSend_addCompletedHandler_(v533, v505, &v540, v506, v507, v508, v509, v510);
        }
      }

      v539[0] = (v232 + 31) >> 5;
      v539[1] = (v279 + 3) >> 2;
      v539[2] = 1;
      v537 = xmmword_239D7D510;
      v538 = 1;
      objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v170, v492, v539, &v537, v493, v494, v495, v496);
      MPSLibrary::ReleaseComputeState();
    }
  }

  v511 = MEMORY[0x277CD7388];
  v512 = *MEMORY[0x277CD7388];
  if (*(&gradientMatrix[3].super.isa + v512))
  {
    MPSDecrementReadCount(gradientMatrix);
    v512 = *v511;
  }

  if (*(&inputMatrix[3].super.isa + v512))
  {
    MPSDecrementReadCount(inputMatrix);
  }

  if (biasVector && *(&biasVector[3].super.isa + *MEMORY[0x277CD74A0]))
  {
    MPSDecrementReadCount(biasVector);
  }

  objc_msgSend_endEncoding(v170, v287, v288, v289, v290, v291, v292, v293);
}

- (void)setNeuronType:(MPSCNNNeuronType)neuronType parameterA:(float)parameterA parameterB:(float)parameterB parameterC:(float)parameterC
{
  if (neuronType == MPSCNNNeuronTypePReLU && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (self->_neuronType == 10)
  {

    self->neuronAParamBuf = 0;
  }

  self->_neuronType = neuronType;
  self->_neuronA = parameterA;
  self->_neuronB = parameterB;
  self->_neuronC = parameterC;
}

- (void)setNeuronToPReLUWithParametersA:(NSData *)A
{
  self->_neuronType = 10;
  self->_neuronA = 0.0;
  self->_neuronB = 0.0;
  self->_neuronC = 0.0;
  v10 = *MEMORY[0x277CD7350];
  v11 = *(&self->super.super.super.isa + v10);
  if (v11)
  {
    v12 = *(v11 + 16);
  }

  else
  {
    v12 = 0;
  }

  v13 = objc_msgSend_length(A, a2, A, v3, v4, v5, v6, v7);
  v14 = (*(**(&self->super.super.super.isa + v10) + 40))(*(&self->super.super.super.isa + v10));
  v15 = (*(**(&self->super.super.super.isa + v10) + 24))(*(&self->super.super.super.isa + v10));
  v21 = objc_msgSend_newBufferWithLength_options_(v12, v16, v13, v14 | (16 * v15), v17, v18, v19, v20);
  self->neuronAParamBuf = v21;
  if (v21)
  {
    v29 = objc_msgSend_contents(v21, v22, v23, v24, v25, v26, v27, v28);
    v37 = objc_msgSend_bytes(A, v30, v31, v32, v33, v34, v35, v36);
    v45 = objc_msgSend_length(A, v38, v39, v40, v41, v42, v43, v44);

    memcpy(v29, v37, v45);
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MPSMatrixNeuronGradient;
  [(MPSKernel *)&v3 dealloc];
}

- (MPSMatrixNeuronGradient)copyWithZone:(NSZone *)zone device:(id)device
{
  v56.receiver = self;
  v56.super_class = MPSMatrixNeuronGradient;
  result = [(MPSMatrixBinaryKernel *)&v56 copyWithZone:zone device:?];
  result->_sourceNumberOfFeatureVectors = self->_sourceNumberOfFeatureVectors;
  result->_sourceInputFeatureChannels = self->_sourceInputFeatureChannels;
  result->_alpha = self->_alpha;
  neuronType = self->_neuronType;
  result->_neuronType = neuronType;
  result->_neuronA = self->_neuronA;
  result->_neuronB = self->_neuronB;
  result->_neuronC = self->_neuronC;
  if (neuronType == 10)
  {
    v8 = result;
    neuronAParamBuf = self->neuronAParamBuf;
    v10 = *(&self->super.super.super.isa + *MEMORY[0x277CD7350]);
    v11 = *(v10 + 16);
    if (!device)
    {
      device = *(v10 + 16);
    }

    MPSDevice = MPSDevice::GetMPSDevice();
    if (MPSDevice)
    {
      v20 = 0;
      if (!neuronAParamBuf)
      {
LABEL_14:
        result = v8;
        goto LABEL_15;
      }

      v21 = MPSDevice;
      result = v8;
      if (!device)
      {
LABEL_15:
        result->neuronAParamBuf = v20;
        return result;
      }

      if (device == v11)
      {
        v20 = neuronAParamBuf;
        goto LABEL_14;
      }

      v22 = objc_msgSend_length(neuronAParamBuf, v13, v14, v15, v16, v17, v18, v19);
      v23 = v21;
      v24 = (*(*v21 + 40))(v21);
      v25 = (*(*v23 + 24))(v23);
      v31 = objc_msgSend_newBufferWithLength_options_(device, v26, v22, v24 | (16 * v25), v27, v28, v29, v30);
      if (v31)
      {
        v20 = v31;
        v39 = objc_msgSend_contents(v31, v32, v33, v34, v35, v36, v37, v38);
        v47 = objc_msgSend_contents(neuronAParamBuf, v40, v41, v42, v43, v44, v45, v46);
        v55 = objc_msgSend_length(neuronAParamBuf, v48, v49, v50, v51, v52, v53, v54);
        memcpy(v39, v47, v55);
        goto LABEL_14;
      }

      if (MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }
    }

    v20 = 0;
    goto LABEL_14;
  }

  return result;
}

- (MPSMatrixNeuronGradient)initWithCoder:(NSCoder *)aDecoder device:(id)device
{
  v113.receiver = self;
  v113.super_class = MPSMatrixNeuronGradient;
  v6 = [MPSMatrixBinaryKernel initWithCoder:sel_initWithCoder_device_ device:?];
  v13 = v6;
  if (v6)
  {
    if (*(&v6->super.super.super.isa + *MEMORY[0x277CD7358] + 2) << 16 != 0x10000)
    {
      if (MTLReportFailureTypeEnabled())
      {
LABEL_16:
        v111 = objc_opt_class();
        NSStringFromClass(v111);
        MTLReportFailure();
      }

LABEL_17:

      return 0;
    }

    objc_msgSend_decodeDoubleForKey_(aDecoder, v7, @"MPSMatrixNeuronGradient._alpha;", v8, v9, v10, v11, v12);
    v13->_alpha = v14;
    v13->_sourceNumberOfFeatureVectors = objc_msgSend_decodeInt64ForKey_(aDecoder, v15, @"MPSMatrixNeuronGradient._sourceNumberOfFeatureVectors;", v16, v17, v18, v19, v20);
    v13->_sourceInputFeatureChannels = objc_msgSend_decodeInt64ForKey_(aDecoder, v21, @"MPSMatrixNeuronGradient._sourceInputFeatureChannels;", v22, v23, v24, v25, v26);
    v13->_neuronType = objc_msgSend_decodeInt32ForKey_(aDecoder, v27, @"MPSMatrixNeuronGradient._neuronType;", v28, v29, v30, v31, v32);
    objc_msgSend_decodeFloatForKey_(aDecoder, v33, @"MPSMatrixNeuronGradient._neuronA;", v34, v35, v36, v37, v38);
    v13->_neuronA = v39;
    objc_msgSend_decodeFloatForKey_(aDecoder, v40, @"MPSMatrixNeuronGradient._neuronB;", v41, v42, v43, v44, v45);
    v13->_neuronB = v46;
    objc_msgSend_decodeFloatForKey_(aDecoder, v47, @"MPSMatrixNeuronGradient._neuronC;", v48, v49, v50, v51, v52);
    v13->_neuronC = v53;
    v13->neuronAParamBuf = 0;
    if (v13->_neuronType == 10)
    {
      MPSDevice = MPSDevice::GetMPSDevice();
      if (MPSDevice)
      {
        v61 = MPSDevice;
        if (objc_msgSend_decodeBoolForKey_(aDecoder, v55, @"MPSMatrixNeuronGradient._perChannelNeuronA;", v56, v57, v58, v59, v60))
        {
          v114 = 0;
          v62 = objc_alloc(MEMORY[0x277CCACA8]);
          v69 = objc_msgSend_initWithFormat_(v62, v63, @"%@%@", v64, v65, v66, v67, v68, @"MPSMatrixNeuronGradient._perChannelNeuronA;", @".length");
          v70 = objc_alloc(MEMORY[0x277CCACA8]);
          v77 = objc_msgSend_initWithFormat_(v70, v71, @"%@%@", v72, v73, v74, v75, v76, @"MPSMatrixNeuronGradient._perChannelNeuronA;", @".data");
          v84 = objc_msgSend_decodeInt64ForKey_(aDecoder, v78, v69, v79, v80, v81, v82, v83);
          v90 = objc_msgSend_decodeBytesForKey_returnedLength_(aDecoder, v85, v77, &v114, v86, v87, v88, v89);

          if (v90)
          {
            v91 = 4 * v84;
            if (4 * v84 == v114)
            {
              v92 = malloc_type_malloc(4 * v84, 0x100004052888210uLL);
              if (v92)
              {
                v93 = v92;
                MPSCopyToFromNetworkByteOrder32();
                if (v84)
                {
                  v94 = (*(*v61 + 40))(v61);
                  v95 = (*(*v61 + 24))(v61);
                  v101 = objc_msgSend_newBufferWithLength_options_(device, v96, v91, v94 | (16 * v95), v97, v98, v99, v100);
                  if (v101)
                  {
                    v109 = v101;
                    v110 = objc_msgSend_contents(v101, v102, v103, v104, v105, v106, v107, v108);
                    memcpy(v110, v93, v91);
                    free(v93);
                    v13->neuronAParamBuf = v109;
                    return v13;
                  }
                }

                free(v93);
              }
            }
          }
        }
      }

      v13->neuronAParamBuf = 0;
      if (MTLReportFailureTypeEnabled())
      {
        goto LABEL_16;
      }

      goto LABEL_17;
    }
  }

  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  *(&self->super.super.super.isa + *MEMORY[0x277CD7358] + 2) = 1;
  v96.receiver = self;
  v96.super_class = MPSMatrixNeuronGradient;
  [(MPSMatrixBinaryKernel *)&v96 encodeWithCoder:?];
  objc_msgSend_encodeDouble_forKey_(a3, v5, @"MPSMatrixNeuronGradient._alpha;", v6, v7, v8, v9, v10, self->_alpha);
  objc_msgSend_encodeInt64_forKey_(a3, v11, self->_sourceNumberOfFeatureVectors, @"MPSMatrixNeuronGradient._sourceNumberOfFeatureVectors;", v12, v13, v14, v15);
  objc_msgSend_encodeInt64_forKey_(a3, v16, self->_sourceInputFeatureChannels, @"MPSMatrixNeuronGradient._sourceInputFeatureChannels;", v17, v18, v19, v20);
  objc_msgSend_encodeInt32_forKey_(a3, v21, self->_neuronType, @"MPSMatrixNeuronGradient._neuronType;", v22, v23, v24, v25);
  *&v26 = self->_neuronA;
  objc_msgSend_encodeFloat_forKey_(a3, v27, @"MPSMatrixNeuronGradient._neuronA;", v28, v29, v30, v31, v32, v26);
  *&v33 = self->_neuronB;
  objc_msgSend_encodeFloat_forKey_(a3, v34, @"MPSMatrixNeuronGradient._neuronB;", v35, v36, v37, v38, v39, v33);
  *&v40 = self->_neuronC;
  objc_msgSend_encodeFloat_forKey_(a3, v41, @"MPSMatrixNeuronGradient._neuronC;", v42, v43, v44, v45, v46, v40);
  if (self->_neuronType == 10)
  {
    neuronAParamBuf = self->neuronAParamBuf;
    if (neuronAParamBuf)
    {
      v55 = objc_msgSend_length(self->neuronAParamBuf, v47, v48, v49, v50, v51, v52, v53);
      v63 = objc_msgSend_contents(neuronAParamBuf, v56, v57, v58, v59, v60, v61, v62);
      objc_msgSend_encodeBool_forKey_(a3, v64, v63 != 0, @"MPSMatrixNeuronGradient._perChannelNeuronA;", v65, v66, v67, v68);
      if (v63)
      {
        v69 = objc_alloc(MEMORY[0x277CCACA8]);
        v76 = objc_msgSend_initWithFormat_(v69, v70, @"%@%@", v71, v72, v73, v74, v75, @"MPSMatrixNeuronGradient._perChannelNeuronA;", @".length");
        v77 = objc_alloc(MEMORY[0x277CCACA8]);
        v84 = objc_msgSend_initWithFormat_(v77, v78, @"%@%@", v79, v80, v81, v82, v83, @"MPSMatrixNeuronGradient._perChannelNeuronA;", @".data");
        objc_msgSend_encodeInt64_forKey_(a3, v85, v55 >> 2, v76, v86, v87, v88, v89);

        v90 = malloc_type_malloc(v55 & 0xFFFFFFFFFFFFFFFCLL, 0x100004052888210uLL);
        if (v90)
        {
          v91 = v90;
          MPSCopyToFromNetworkByteOrder32();
          objc_msgSend_encodeBytes_length_forKey_(a3, v92, v91, v55 & 0xFFFFFFFFFFFFFFFCLL, v84, v93, v94, v95);
          free(v91);
        }
      }
    }
  }
}

@end