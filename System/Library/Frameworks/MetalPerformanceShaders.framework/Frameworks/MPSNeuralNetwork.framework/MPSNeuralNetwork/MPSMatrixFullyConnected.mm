@interface MPSMatrixFullyConnected
- (MPSMatrixFullyConnected)copyWithZone:(NSZone *)zone device:(id)device;
- (MPSMatrixFullyConnected)initWithCoder:(NSCoder *)aDecoder device:(id)device;
- (MPSMatrixFullyConnected)initWithDevice:(id)device;
- (id)debugDescription;
- (void)dealloc;
- (void)encodeToCommandBuffer:(id)commandBuffer inputMatrix:(MPSMatrix *)inputMatrix weightMatrix:(MPSMatrix *)weightMatrix biasVector:(MPSVector *)biasVector resultMatrix:(MPSMatrix *)resultMatrix;
- (void)encodeWithCoder:(id)a3;
- (void)setNeuronToPReLUWithParametersA:(id)a3;
- (void)setNeuronType:(MPSCNNNeuronType)neuronType parameterA:(float)parameterA parameterB:(float)parameterB parameterC:(float)parameterC;
@end

@implementation MPSMatrixFullyConnected

- (MPSMatrixFullyConnected)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSMatrixFullyConnected;
  result = [(MPSMatrixBinaryKernel *)&v4 initWithDevice:device];
  if (result)
  {
    result->_alpha = 1.0;
    result->_sourceNumberOfFeatureVectors = -1;
    result->_sourceInputFeatureChannels = -1;
    result->_sourceOutputFeatureChannels = -1;
    result->_neuronType = 0;
    result->_neuronA = 0.0;
    result->_neuronB = 0.0;
    result->_neuronC = 0.0;
    result->neuronAParamBuf = 0;
    result->_encode = sub_239BF3EB4;
    result->_plugin = 0;
  }

  return result;
}

- (void)encodeToCommandBuffer:(id)commandBuffer inputMatrix:(MPSMatrix *)inputMatrix weightMatrix:(MPSMatrix *)weightMatrix biasVector:(MPSVector *)biasVector resultMatrix:(MPSMatrix *)resultMatrix
{
  v14 = *MEMORY[0x277CD7378];
  if ((*(&self->super.super.super.isa + v14) & 1) == 0)
  {
    if (!commandBuffer && MTLReportFailureTypeEnabled())
    {
      v385 = objc_opt_class();
      v392 = NSStringFromClass(v385);
      MTLReportFailure();
    }

    if (!inputMatrix && MTLReportFailureTypeEnabled())
    {
      v386 = objc_opt_class();
      v392 = NSStringFromClass(v386);
      MTLReportFailure();
    }

    if (!weightMatrix && MTLReportFailureTypeEnabled())
    {
      v387 = objc_opt_class();
      v392 = NSStringFromClass(v387);
      MTLReportFailure();
    }

    if (!resultMatrix && MTLReportFailureTypeEnabled())
    {
      v388 = objc_opt_class();
      v392 = NSStringFromClass(v388);
      MTLReportFailure();
    }

    objc_msgSend_primarySourceMatrixOrigin(self, a2, commandBuffer, inputMatrix, weightMatrix, biasVector, resultMatrix, v7, v392);
    objc_msgSend_primarySourceMatrixOrigin(self, v15, v16, v17, v18, v19, v20, v21);
    if (v398 && MTLReportFailureTypeEnabled())
    {
      v389 = objc_opt_class();
      v393 = NSStringFromClass(v389);
      MTLReportFailure();
    }

    objc_msgSend_secondarySourceMatrixOrigin(self, v22, v23, v24, v25, v26, v27, v28, v393);
    objc_msgSend_secondarySourceMatrixOrigin(self, v29, v30, v31, v32, v33, v34, v35);
    if (v398 && MTLReportFailureTypeEnabled())
    {
      v390 = objc_opt_class();
      v394 = NSStringFromClass(v390);
      MTLReportFailure();
    }

    objc_msgSend_resultMatrixOrigin(self, v36, v37, v38, v39, v40, v41, v42, v394);
    objc_msgSend_resultMatrixOrigin(self, v43, v44, v45, v46, v47, v48, v49);
    if (v398 && MTLReportFailureTypeEnabled())
    {
      v391 = objc_opt_class();
      v395 = NSStringFromClass(v391);
      MTLReportFailure();
    }

    objc_msgSend_dataType(resultMatrix, v50, v51, v52, v53, v54, v55, v56, v395);
    if (objc_msgSend_dataType(resultMatrix, v57, v58, v59, v60, v61, v62, v63) != 268435488 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (biasVector)
    {
      objc_msgSend_dataType(biasVector, v64, v65, v66, v67, v68, v69, v70);
      if (objc_msgSend_dataType(biasVector, v71, v72, v73, v74, v75, v76, v77) != 268435488)
      {
        if (MTLReportFailureTypeEnabled())
        {
          MTLReportFailure();
        }
      }
    }

    objc_msgSend_dataType(inputMatrix, v64, v65, v66, v67, v68, v69, v70);
    if (objc_msgSend_dataType(inputMatrix, v78, v79, v80, v81, v82, v83, v84) != 268435488 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (objc_msgSend_dataType(weightMatrix, v85, v86, v87, v88, v89, v90, v91) != 268435472)
    {
      objc_msgSend_dataType(weightMatrix, v92, v93, v94, v95, v96, v97, v98);
    }

    if (objc_msgSend_dataType(weightMatrix, v92, v93, v94, v95, v96, v97, v98) != 268435472 && objc_msgSend_dataType(weightMatrix, v99, v100, v101, v102, v103, v104, v105) != 268435488 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    objc_msgSend_matrices(inputMatrix, v99, v100, v101, v102, v103, v104, v105);
    objc_msgSend_batchStart(self, v106, v107, v108, v109, v110, v111, v112);
    v120 = objc_msgSend_matrices(inputMatrix, v113, v114, v115, v116, v117, v118, v119);
    if (v120 <= objc_msgSend_batchStart(self, v121, v122, v123, v124, v125, v126, v127) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    objc_msgSend_matrices(weightMatrix, v128, v129, v130, v131, v132, v133, v134);
    objc_msgSend_batchStart(self, v135, v136, v137, v138, v139, v140, v141);
    v149 = objc_msgSend_matrices(weightMatrix, v142, v143, v144, v145, v146, v147, v148);
    if (v149 <= objc_msgSend_batchStart(self, v150, v151, v152, v153, v154, v155, v156) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    objc_msgSend_matrices(resultMatrix, v157, v158, v159, v160, v161, v162, v163);
    objc_msgSend_batchStart(self, v164, v165, v166, v167, v168, v169, v170);
    v178 = objc_msgSend_matrices(resultMatrix, v171, v172, v173, v174, v175, v176, v177);
    if (v178 <= objc_msgSend_batchStart(self, v179, v180, v181, v182, v183, v184, v185) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (biasVector)
    {
      objc_msgSend_vectors(biasVector, v186, v187, v188, v189, v190, v191, v192);
      objc_msgSend_batchStart(self, v193, v194, v195, v196, v197, v198, v199);
      v207 = objc_msgSend_vectors(biasVector, v200, v201, v202, v203, v204, v205, v206);
      if (v207 <= objc_msgSend_batchStart(self, v208, v209, v210, v211, v212, v213, v214))
      {
        if (MTLReportFailureTypeEnabled())
        {
          MTLReportFailure();
        }
      }
    }

    objc_msgSend_columns(weightMatrix, v186, v187, v188, v189, v190, v191, v192);
    objc_msgSend_secondarySourceMatrixOrigin(self, v215, v216, v217, v218, v219, v220, v221);
    v229 = objc_msgSend_columns(weightMatrix, v222, v223, v224, v225, v226, v227, v228);
    objc_msgSend_secondarySourceMatrixOrigin(self, v230, v231, v232, v233, v234, v235, v236);
    if (v229 <= v397 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    objc_msgSend_rows(weightMatrix, v237, v238, v239, v240, v241, v242, v243);
    objc_msgSend_secondarySourceMatrixOrigin(self, v244, v245, v246, v247, v248, v249, v250);
    v258 = objc_msgSend_rows(weightMatrix, v251, v252, v253, v254, v255, v256, v257);
    objc_msgSend_secondarySourceMatrixOrigin(self, v259, v260, v261, v262, v263, v264, v265);
    if (v258 <= v396 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    objc_msgSend_columns(inputMatrix, v266, v267, v268, v269, v270, v271, v272);
    objc_msgSend_primarySourceMatrixOrigin(self, v273, v274, v275, v276, v277, v278, v279);
    v287 = objc_msgSend_columns(inputMatrix, v280, v281, v282, v283, v284, v285, v286);
    objc_msgSend_primarySourceMatrixOrigin(self, v288, v289, v290, v291, v292, v293, v294);
    if (v287 <= v397 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    objc_msgSend_rows(inputMatrix, v295, v296, v297, v298, v299, v300, v301);
    objc_msgSend_primarySourceMatrixOrigin(self, v302, v303, v304, v305, v306, v307, v308);
    v316 = objc_msgSend_rows(inputMatrix, v309, v310, v311, v312, v313, v314, v315);
    objc_msgSend_primarySourceMatrixOrigin(self, v317, v318, v319, v320, v321, v322, v323);
    if (v316 <= v396 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (self->_neuronType == 10)
    {
      if (self->neuronAParamBuf)
      {
        goto LABEL_28;
      }

      if (MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      if (self->neuronAParamBuf)
      {
LABEL_28:
        v331 = objc_msgSend_columns(inputMatrix, v324, v325, v326, v327, v328, v329, v330);
        objc_msgSend_primarySourceMatrixOrigin(self, v332, v333, v334, v335, v336, v337, v338);
        if (v331 - v397 >= self->_sourceInputFeatureChannels)
        {
          sourceInputFeatureChannels = self->_sourceInputFeatureChannels;
        }

        else
        {
          sourceInputFeatureChannels = v331 - v397;
        }

        objc_msgSend_length(self->neuronAParamBuf, v339, v340, v341, v342, v343, v344, v345);
        if (objc_msgSend_length(self->neuronAParamBuf, v347, v348, v349, v350, v351, v352, v353) < 4 * sourceInputFeatureChannels && MTLReportFailureTypeEnabled())
        {
          MTLReportFailure();
        }
      }
    }
  }

  v354 = objc_alloc(MEMORY[0x277CD7210]);
  v366 = objc_msgSend_initWithCommandBuffer_withDispatchType_(v354, v355, commandBuffer, 0, v356, v357, v358, v359);
  if ((*(&self->super.super.super.isa + v14) & 0x18) != 0)
  {
    v367 = *(&self->super.super.super.isa + *MEMORY[0x277CD7360]);
    if (v367 || (v368 = objc_opt_class(), v369 = NSStringFromClass(v368), objc_msgSend_setLabel_(self, v370, v369, v371, v372, v373, v374, v375), (v367 = v369) != 0))
    {
      objc_msgSend_setLabel_(v366, v360, v367, v361, v362, v363, v364, v365);
    }
  }

  sub_239BF3EB4(self, v366, commandBuffer, inputMatrix, weightMatrix, biasVector, resultMatrix, v365);
  v383 = MEMORY[0x277CD7388];
  v384 = *MEMORY[0x277CD7388];
  if (*(&inputMatrix[3].super.isa + v384))
  {
    MPSDecrementReadCount(inputMatrix);
    v384 = *v383;
  }

  if (*(&weightMatrix[3].super.isa + v384))
  {
    MPSDecrementReadCount(weightMatrix);
  }

  if (biasVector && *(&biasVector[3].super.isa + *MEMORY[0x277CD74A0]))
  {
    MPSDecrementReadCount(biasVector);
  }

  objc_msgSend_endEncoding(v366, v376, v377, v378, v379, v380, v381, v382);
}

- (MPSMatrixFullyConnected)copyWithZone:(NSZone *)zone device:(id)device
{
  v12.receiver = self;
  v12.super_class = MPSMatrixFullyConnected;
  result = [(MPSMatrixBinaryKernel *)&v12 copyWithZone:zone device:?];
  result->_sourceNumberOfFeatureVectors = self->_sourceNumberOfFeatureVectors;
  result->_sourceInputFeatureChannels = self->_sourceInputFeatureChannels;
  result->_sourceOutputFeatureChannels = self->_sourceOutputFeatureChannels;
  result->_alpha = self->_alpha;
  neuronType = self->_neuronType;
  result->_neuronType = neuronType;
  result->_neuronA = self->_neuronA;
  result->_neuronB = self->_neuronB;
  result->_neuronC = self->_neuronC;
  if (neuronType == 10)
  {
    neuronAParamBuf = self->neuronAParamBuf;
    v9 = (*(&self->super.super.super.isa + *MEMORY[0x277CD7350]))[2];
    v10 = result;
    v11 = sub_239BF59C0(neuronAParamBuf, device, v9);
    result = v10;
    v10->neuronAParamBuf = v11;
  }

  return result;
}

- (MPSMatrixFullyConnected)initWithCoder:(NSCoder *)aDecoder device:(id)device
{
  v63.receiver = self;
  v63.super_class = MPSMatrixFullyConnected;
  v6 = [MPSMatrixBinaryKernel initWithCoder:sel_initWithCoder_device_ device:?];
  v13 = v6;
  if (v6)
  {
    if (*(&v6->super.super.super.isa + *MEMORY[0x277CD7358] + 2) << 16 == 0x10000)
    {
      objc_msgSend_decodeDoubleForKey_(aDecoder, v7, @"MPSMatrixFullyConnected._alpha;", v8, v9, v10, v11, v12);
      v13->_alpha = v14;
      v13->_sourceNumberOfFeatureVectors = objc_msgSend_decodeInt64ForKey_(aDecoder, v15, @"MPSMatrixFullyConnected._sourceNumberOfFeatureVectors;", v16, v17, v18, v19, v20);
      v13->_sourceInputFeatureChannels = objc_msgSend_decodeInt64ForKey_(aDecoder, v21, @"MPSMatrixFullyConnected._sourceInputFeatureChannels;", v22, v23, v24, v25, v26);
      v13->_sourceOutputFeatureChannels = objc_msgSend_decodeInt64ForKey_(aDecoder, v27, @"MPSMatrixFullyConnected._sourceOutputFeatureChannels;", v28, v29, v30, v31, v32);
      v13->_neuronType = objc_msgSend_decodeInt32ForKey_(aDecoder, v33, @"MPSMatrixFullyConnected._neuronType;", v34, v35, v36, v37, v38);
      objc_msgSend_decodeFloatForKey_(aDecoder, v39, @"MPSMatrixFullyConnected._neuronA;", v40, v41, v42, v43, v44);
      v13->_neuronA = v45;
      objc_msgSend_decodeFloatForKey_(aDecoder, v46, @"MPSMatrixFullyConnected._neuronB;", v47, v48, v49, v50, v51);
      v13->_neuronB = v52;
      objc_msgSend_decodeFloatForKey_(aDecoder, v53, @"MPSMatrixFullyConnected._neuronC;", v54, v55, v56, v57, v58);
      v13->_neuronC = v59;
      v13->neuronAParamBuf = 0;
      if (v13->_neuronType != 10 || (v60 = sub_239BF5D38(aDecoder, device), (v13->neuronAParamBuf = v60) != 0))
      {
        v13->_encode = sub_239BF3EB4;
        return v13;
      }

      if (MTLReportFailureTypeEnabled())
      {
        goto LABEL_7;
      }
    }

    else if (MTLReportFailureTypeEnabled())
    {
LABEL_7:
      v61 = objc_opt_class();
      NSStringFromClass(v61);
      MTLReportFailure();
    }

    return 0;
  }

  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  *(&self->super.super.super.isa + *MEMORY[0x277CD7358] + 2) = 1;
  v66.receiver = self;
  v66.super_class = MPSMatrixFullyConnected;
  [(MPSMatrixBinaryKernel *)&v66 encodeWithCoder:?];
  objc_msgSend_encodeDouble_forKey_(a3, v5, @"MPSMatrixFullyConnected._alpha;", v6, v7, v8, v9, v10, self->_alpha);
  objc_msgSend_encodeInt64_forKey_(a3, v11, self->_sourceNumberOfFeatureVectors, @"MPSMatrixFullyConnected._sourceNumberOfFeatureVectors;", v12, v13, v14, v15);
  objc_msgSend_encodeInt64_forKey_(a3, v16, self->_sourceInputFeatureChannels, @"MPSMatrixFullyConnected._sourceInputFeatureChannels;", v17, v18, v19, v20);
  objc_msgSend_encodeInt64_forKey_(a3, v21, self->_sourceOutputFeatureChannels, @"MPSMatrixFullyConnected._sourceOutputFeatureChannels;", v22, v23, v24, v25);
  objc_msgSend_encodeInt32_forKey_(a3, v26, self->_neuronType, @"MPSMatrixFullyConnected._neuronType;", v27, v28, v29, v30);
  *&v31 = self->_neuronA;
  objc_msgSend_encodeFloat_forKey_(a3, v32, @"MPSMatrixFullyConnected._neuronA;", v33, v34, v35, v36, v37, v31);
  *&v38 = self->_neuronB;
  objc_msgSend_encodeFloat_forKey_(a3, v39, @"MPSMatrixFullyConnected._neuronB;", v40, v41, v42, v43, v44, v38);
  *&v45 = self->_neuronC;
  objc_msgSend_encodeFloat_forKey_(a3, v46, @"MPSMatrixFullyConnected._neuronC;", v47, v48, v49, v50, v51, v45);
  if (self->_neuronType == 10)
  {
    neuronAParamBuf = self->neuronAParamBuf;
    v60 = objc_msgSend_length(neuronAParamBuf, v52, v53, v54, v55, v56, v57, v58);
    sub_239BF605C(a3, neuronAParamBuf, v60 >> 2, v61, v62, v63, v64, v65);
  }
}

- (void)setNeuronType:(MPSCNNNeuronType)neuronType parameterA:(float)parameterA parameterB:(float)parameterB parameterC:(float)parameterC
{
  if (neuronType == MPSCNNNeuronTypePReLU && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (self->_neuronType == 10)
  {
  }

  self->_neuronType = neuronType;
  self->_neuronA = parameterA;
  self->_neuronB = parameterB;
  self->_neuronC = parameterC;
}

- (void)setNeuronToPReLUWithParametersA:(id)a3
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

  v13 = objc_msgSend_length(a3, a2, a3, v3, v4, v5, v6, v7);
  v14 = (*(**(&self->super.super.super.isa + v10) + 40))(*(&self->super.super.super.isa + v10));
  v15 = (*(**(&self->super.super.super.isa + v10) + 24))(*(&self->super.super.super.isa + v10));
  v21 = objc_msgSend_newBufferWithLength_options_(v12, v16, v13, v14 | (16 * v15), v17, v18, v19, v20);
  self->neuronAParamBuf = v21;
  if (v21)
  {
    v29 = objc_msgSend_contents(v21, v22, v23, v24, v25, v26, v27, v28);
    v37 = objc_msgSend_bytes(a3, v30, v31, v32, v33, v34, v35, v36);
    v45 = objc_msgSend_length(a3, v38, v39, v40, v41, v42, v43, v44);

    memcpy(v29, v37, v45);
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MPSMatrixFullyConnected;
  [(MPSKernel *)&v3 dealloc];
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v13.receiver = self;
  v13.super_class = MPSMatrixFullyConnected;
  v4 = [(MPSKernel *)&v13 debugDescription];
  alpha = self->_alpha;
  return objc_msgSend_stringWithFormat_(v3, v6, @"%@\n\tsourceNumberOfFeatureVectors:  \t%lu\n\tsourceInputFeatureChannels:  \t%lu\n\tsourceOutputFeatureChannels:  \t%lu\n\talpha:\t%f\n\tneuronType:  \t%lu\n\tneuronParamA:  \t%f\n\tneuronParamB:  \t%f\n\tneuronParamC:  \t%f", v7, v8, v9, v10, v11, v4, self->_sourceNumberOfFeatureVectors, self->_sourceInputFeatureChannels, self->_sourceOutputFeatureChannels, alpha, self->_neuronType, self->_neuronA, self->_neuronB, self->_neuronC);
}

@end