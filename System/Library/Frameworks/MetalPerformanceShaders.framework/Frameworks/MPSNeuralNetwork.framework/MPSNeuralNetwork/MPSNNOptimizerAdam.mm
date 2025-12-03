@interface MPSNNOptimizerAdam
- (MPSNNOptimizerAdam)initWithCoder:(id)coder device:(id)device;
- (MPSNNOptimizerAdam)initWithDevice:(id)device beta1:(double)beta1 beta2:(double)beta2 epsilon:(float)epsilon timeStep:(NSUInteger)timeStep optimizerDescriptor:(MPSNNOptimizerDescriptor *)optimizerDescriptor;
- (MPSNNOptimizerAdam)initWithDevice:(id)device learningRate:(float)learningRate;
- (id)copyWithZone:(_NSZone *)zone device:(id)device;
- (id)debugDescription;
- (void)dealloc;
- (void)encodeToCommandBuffer:(id)commandBuffer batchNormalizationGradientState:(MPSCNNBatchNormalizationState *)batchNormalizationGradientState batchNormalizationSourceState:(MPSCNNBatchNormalizationState *)batchNormalizationSourceState inputMomentumVectors:(NSArray *)inputMomentumVectors inputVelocityVectors:(NSArray *)inputVelocityVectors maximumVelocityVectors:(NSArray *)maximumVelocityVectors resultState:(MPSCNNNormalizationGammaAndBetaState *)resultState;
- (void)encodeToCommandBuffer:(id)commandBuffer batchNormalizationState:(MPSCNNBatchNormalizationState *)batchNormalizationState inputMomentumVectors:(NSArray *)inputMomentumVectors inputVelocityVectors:(NSArray *)inputVelocityVectors maximumVelocityVectors:(NSArray *)maximumVelocityVectors resultState:(MPSCNNNormalizationGammaAndBetaState *)resultState;
- (void)encodeToCommandBuffer:(id)commandBuffer convolutionGradientState:(MPSCNNConvolutionGradientState *)convolutionGradientState convolutionSourceState:(MPSCNNConvolutionWeightsAndBiasesState *)convolutionSourceState inputMomentumVectors:(NSArray *)inputMomentumVectors inputVelocityVectors:(NSArray *)inputVelocityVectors maximumVelocityVectors:(NSArray *)maximumVelocityVectors resultState:(MPSCNNConvolutionWeightsAndBiasesState *)resultState;
- (void)encodeToCommandBuffer:(id)commandBuffer inputGradientMatrix:(MPSMatrix *)inputGradientMatrix inputValuesMatrix:(MPSMatrix *)inputValuesMatrix inputMomentumMatrix:(MPSMatrix *)inputMomentumMatrix inputVelocityMatrix:(MPSMatrix *)inputVelocityMatrix maximumVelocityMatrix:(MPSMatrix *)maximumVelocityMatrix resultValuesMatrix:(MPSMatrix *)resultValuesMatrix;
- (void)encodeToCommandBuffer:(id)commandBuffer inputGradientVector:(MPSVector *)inputGradientVector inputValuesVector:(MPSVector *)inputValuesVector inputMomentumVector:(MPSVector *)inputMomentumVector inputVelocityVector:(MPSVector *)inputVelocityVector maximumVelocityVector:(MPSVector *)maximumVelocityVector resultValuesVector:(MPSVector *)resultValuesVector;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MPSNNOptimizerAdam

- (MPSNNOptimizerAdam)initWithDevice:(id)device learningRate:(float)learningRate
{
  v11 = objc_msgSend_optimizerDescriptorWithLearningRate_gradientRescale_regularizationType_regularizationScale_(MPSNNOptimizerDescriptor, a2, 0, v4, v5, v6, v7, v8);

  return MEMORY[0x2821F9670](self, sel_initWithDevice_beta1_beta2_epsilon_timeStep_optimizerDescriptor_, device, 0, v11, v12, v13, v14);
}

- (MPSNNOptimizerAdam)initWithDevice:(id)device beta1:(double)beta1 beta2:(double)beta2 epsilon:(float)epsilon timeStep:(NSUInteger)timeStep optimizerDescriptor:(MPSNNOptimizerDescriptor *)optimizerDescriptor
{
  v15.receiver = self;
  v15.super_class = MPSNNOptimizerAdam;
  result = [(MPSNNOptimizer *)&v15 initWithDevice:device optimizerDescriptor:optimizerDescriptor];
  if (result)
  {
    result->_beta1 = beta1;
    result->_beta2 = beta2;
    result->_epsilon = epsilon;
    result->_timeStep = timeStep;
    v13 = result;
    v14 = dispatch_semaphore_create(1);
    result = v13;
    v13->_timeStepSemaphore = v14;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone device:(id)device
{
  v6.receiver = self;
  v6.super_class = MPSNNOptimizerAdam;
  result = [(MPSNNOptimizer *)&v6 copyWithZone:zone device:device];
  if (result)
  {
    *(result + 16) = *&self->_beta1;
    *(result + 17) = *&self->_beta2;
    *(result + 36) = LODWORD(self->_epsilon);
    *(result + 19) = self->_timeStep;
  }

  return result;
}

- (void)encodeWithCoder:(id)coder
{
  *(&self->super.super.super.isa + *MEMORY[0x277CD7358] + 1) = 1;
  v29.receiver = self;
  v29.super_class = MPSNNOptimizerAdam;
  [(MPSNNOptimizer *)&v29 encodeWithCoder:?];
  objc_msgSend_encodeDouble_forKey_(coder, v5, @"kMPSNNOptimizer.beta1", v6, v7, v8, v9, v10, self->_beta1);
  objc_msgSend_encodeDouble_forKey_(coder, v11, @"kMPSNNOptimizer.beta2", v12, v13, v14, v15, v16, self->_beta2);
  *&v17 = self->_epsilon;
  objc_msgSend_encodeFloat_forKey_(coder, v18, @"kMPSNNOptimizer.epsilon", v19, v20, v21, v22, v23, v17);
  objc_msgSend_encodeInt64_forKey_(coder, v24, self->_timeStep, @"kMPSNNOptimizer.timeStep", v25, v26, v27, v28);
}

- (MPSNNOptimizerAdam)initWithCoder:(id)coder device:(id)device
{
  v36.receiver = self;
  v36.super_class = MPSNNOptimizerAdam;
  v5 = [(MPSNNOptimizer *)&v36 initWithCoder:coder device:device];
  v12 = v5;
  if (!v5)
  {
    return v12;
  }

  if (*(&v5->super.super.super.isa + *MEMORY[0x277CD7358] + 1) << 8 == 256)
  {
    objc_msgSend_decodeDoubleForKey_(coder, v6, @"kMPSNNOptimizer.beta1", v7, v8, v9, v10, v11);
    v12->_beta1 = v13;
    objc_msgSend_decodeDoubleForKey_(coder, v14, @"kMPSNNOptimizer.beta2", v15, v16, v17, v18, v19);
    v12->_beta2 = v20;
    objc_msgSend_decodeFloatForKey_(coder, v21, @"kMPSNNOptimizer.epsilon", v22, v23, v24, v25, v26);
    v12->_epsilon = v27;
    v12->_timeStep = objc_msgSend_decodeInt64ForKey_(coder, v28, @"kMPSNNOptimizer.timeStep", v29, v30, v31, v32, v33);
    return v12;
  }

  if (MTLReportFailureTypeEnabled())
  {
    v35 = objc_opt_class();
    NSStringFromClass(v35);
    MTLReportFailure();
  }

  return 0;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v12.receiver = self;
  v12.super_class = MPSNNOptimizerAdam;
  v4 = [(MPSNNOptimizer *)&v12 debugDescription];
  return objc_msgSend_stringWithFormat_(v3, v5, @"%@\n            \tbeta1:\t\t\t\t%f\n            \tbeta2:\t\t\t\t%f\n            \tepsilon:\t\t\t\t%f            \ttimeStep:\t\t\t\t%lu\n", v6, v7, v8, v9, v10, v4, *&self->_beta1, *&self->_beta2, self->_epsilon, self->_timeStep);
}

- (void)encodeToCommandBuffer:(id)commandBuffer inputGradientVector:(MPSVector *)inputGradientVector inputValuesVector:(MPSVector *)inputValuesVector inputMomentumVector:(MPSVector *)inputMomentumVector inputVelocityVector:(MPSVector *)inputVelocityVector maximumVelocityVector:(MPSVector *)maximumVelocityVector resultValuesVector:(MPSVector *)resultValuesVector
{
  v16 = objc_autoreleasePoolPush();
  v17 = sub_239C05678(inputGradientVector);
  v18 = sub_239C05678(inputValuesVector);
  v19 = sub_239C05678(inputMomentumVector);
  v20 = sub_239C05678(inputVelocityVector);
  v21 = sub_239C05678(maximumVelocityVector);
  v22 = sub_239C05678(resultValuesVector);
  objc_msgSend_encodeToCommandBuffer_inputGradientMatrix_inputValuesMatrix_inputMomentumMatrix_inputVelocityMatrix_maximumVelocityMatrix_resultValuesMatrix_(self, v23, commandBuffer, v17, v18, v19, v20, v21, v22);

  objc_autoreleasePoolPop(v16);
}

- (void)encodeToCommandBuffer:(id)commandBuffer inputGradientMatrix:(MPSMatrix *)inputGradientMatrix inputValuesMatrix:(MPSMatrix *)inputValuesMatrix inputMomentumMatrix:(MPSMatrix *)inputMomentumMatrix inputVelocityMatrix:(MPSMatrix *)inputVelocityMatrix maximumVelocityMatrix:(MPSMatrix *)maximumVelocityMatrix resultValuesMatrix:(MPSMatrix *)resultValuesMatrix
{
  v348[5] = *MEMORY[0x277D85DE8];
  sub_239C05C9C(inputGradientMatrix, inputGradientMatrix, "inputGradientMatrix", inputGradientMatrix, inputValuesMatrix, inputMomentumMatrix, inputVelocityMatrix, maximumVelocityMatrix);
  sub_239C05C9C(inputGradientMatrix, inputValuesMatrix, "inputValuesMatrix", v16, v17, v18, v19, v20);
  v335 = inputMomentumMatrix;
  sub_239C05C9C(inputGradientMatrix, inputMomentumMatrix, "inputMomentumMatrix", v21, v22, v23, v24, v25);
  v334 = inputVelocityMatrix;
  sub_239C05C9C(inputGradientMatrix, inputVelocityMatrix, "inputVelocityMatrix", v26, v27, v28, v29, v30);
  sub_239C05C9C(inputGradientMatrix, resultValuesMatrix, "resultValuesMatrix", v31, v32, v33, v34, v35);
  if (maximumVelocityMatrix)
  {
    sub_239C05C9C(inputGradientMatrix, maximumVelocityMatrix, "maximumVelocityMatrix", v37, v38, v39, v40, v41);
  }

  v348[0] = inputGradientMatrix;
  v348[1] = inputValuesMatrix;
  v348[2] = resultValuesMatrix;
  v348[3] = inputMomentumMatrix;
  v348[4] = inputVelocityMatrix;
  v42 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v36, v348, 5, v38, v39, v40, v41, resultValuesMatrix);
  if (objc_msgSend_count(v42, v43, v44, v45, v46, v47, v48, v49))
  {
    v56 = 1;
    do
    {
      v57 = objc_msgSend_objectAtIndexedSubscript_(v42, v50, v56 - 1, v51, v52, v53, v54, v55);
      v65 = (objc_msgSend_rowBytes(v57, v58, v59, v60, v61, v62, v63, v64) & 0xF) == 0;
    }

    while (v56++ < objc_msgSend_count(v42, v66, v67, v68, v69, v70, v71, v72) && v65);
    if (!maximumVelocityMatrix)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v65 = 1;
    if (!maximumVelocityMatrix)
    {
      goto LABEL_15;
    }
  }

  if (v65)
  {
    v347 = maximumVelocityMatrix;
    v74 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v50, &v347, 1, v52, v53, v54, v55);
    if (objc_msgSend_count(v74, v75, v76, v77, v78, v79, v80, v81))
    {
      v88 = 1;
      do
      {
        v89 = objc_msgSend_objectAtIndexedSubscript_(v74, v82, v88 - 1, v83, v84, v85, v86, v87);
        v65 = (objc_msgSend_rowBytes(v89, v90, v91, v92, v93, v94, v95, v96) & 0xF) == 0;
      }

      while (v88++ < objc_msgSend_count(v74, v97, v98, v99, v100, v101, v102, v103) && v65);
    }

    else
    {
      v65 = 1;
    }
  }

LABEL_15:
  v105 = self->_timeStep + 1;
  self->_timeStep = v105;
  learningRate = self->super._learningRate;
  v107 = v105;
  v108 = pow(self->_beta2, v105);
  v109 = pow(self->_beta1, v107);
  v110 = objc_alloc(MEMORY[0x277CD7210]);
  v122 = objc_msgSend_initWithCommandBuffer_withDispatchType_(v110, v111, commandBuffer, 0, v112, v113, v114, v115);
  v345 = v122;
  selfCopy = self;
  if ((*(&self->super.super.super.isa + *MEMORY[0x277CD7378]) & 0x18) != 0)
  {
    v123 = *(&self->super.super.super.isa + *MEMORY[0x277CD7360]);
    if (v123 || (v124 = objc_opt_class(), v123 = NSStringFromClass(v124), objc_msgSend_setLabel_(self, v125, v123, v126, v127, v128, v129, v130), v123))
    {
      objc_msgSend_setLabel_(v122, v116, v123, v117, v118, v119, v120, v121);
    }
  }

  ComputeState = MPSLibrary::GetComputeState();
  objc_msgSend_setComputePipelineState_(v122, v132, ComputeState, v133, v134, v135, v136, v137);
  MPSLibrary::ReleaseComputeState();
  if (v65)
  {
    v152 = (objc_msgSend_columns(inputGradientMatrix, v138, v139, v140, v141, v142, v143, v144) + 3) >> 2;
  }

  else
  {
    v152 = objc_msgSend_columns(inputGradientMatrix, v138, v139, v140, v141, v142, v143, v144);
  }

  v153 = objc_msgSend_rows(inputGradientMatrix, v145, v146, v147, v148, v149, v150, v151);
  beta1 = self->_beta1;
  v155 = beta1;
  *&beta1 = 1.0 - beta1;
  *&v339[1] = v155;
  v339[2] = LODWORD(beta1);
  beta2 = self->_beta2;
  v157 = beta2;
  *&beta2 = 1.0 - beta2;
  epsilon = self->_epsilon;
  gradientClipMax = self->super._gradientClipMax;
  gradientClipMin = self->super._gradientClipMin;
  *&v339[3] = v157;
  v339[4] = LODWORD(beta2);
  *&beta2 = self->super._gradientRescale;
  regularizationScale = self->super._regularizationScale;
  v162 = sqrt(1.0 - v108) * learningRate / (1.0 - v109);
  *&v339[5] = epsilon;
  *&v339[6] = v162;
  v339[0] = v152;
  *&v339[7] = gradientClipMax;
  *&v339[8] = gradientClipMin;
  v339[9] = LODWORD(beta2);
  *&v339[10] = regularizationScale;
  applyGradientClipping = self->super._applyGradientClipping;
  regularizationType = self->super._regularizationType;
  v339[11] = objc_msgSend_rowBytes(inputGradientMatrix, v163, v164, v165, v166, v167, v168, v169);
  v339[13] = objc_msgSend_rowBytes(v333, v170, v171, v172, v173, v174, v175, v176);
  v339[12] = objc_msgSend_rowBytes(inputValuesMatrix, v177, v178, v179, v180, v181, v182, v183);
  v342 = objc_msgSend_rowBytes(v334, v184, v185, v186, v187, v188, v189, v190);
  v343 = objc_msgSend_rowBytes(v335, v191, v192, v193, v194, v195, v196, v197);
  v344 = objc_msgSend_rowBytes(maximumVelocityMatrix, v198, v199, v200, v201, v202, v203, v204);
  v212 = objc_msgSend_data(inputGradientMatrix, v205, v206, v207, v208, v209, v210, v211);
  v213 = MEMORY[0x277CD73A8];
  objc_msgSend_setBuffer_offset_atIndex_(v122, v214, v212, *(&inputGradientMatrix->super.isa + *MEMORY[0x277CD73A8]), 0, v215, v216, v217);
  v225 = objc_msgSend_data(v335, v218, v219, v220, v221, v222, v223, v224);
  objc_msgSend_setBuffer_offset_atIndex_(v122, v226, v225, *(&v335->super.isa + *v213), 1, v227, v228, v229);
  v237 = objc_msgSend_data(v334, v230, v231, v232, v233, v234, v235, v236);
  objc_msgSend_setBuffer_offset_atIndex_(v122, v238, v237, *(&v334->super.isa + *v213), 2, v239, v240, v241);
  v249 = objc_msgSend_data(inputValuesMatrix, v242, v243, v244, v245, v246, v247, v248);
  objc_msgSend_setBuffer_offset_atIndex_(v122, v250, v249, *(&inputValuesMatrix->super.isa + *v213), 3, v251, v252, v253);
  v261 = objc_msgSend_data(v333, v254, v255, v256, v257, v258, v259, v260);
  objc_msgSend_setBuffer_offset_atIndex_(v122, v262, v261, *&v333[*v213], 4, v263, v264, v265);
  objc_msgSend_setBytes_length_atIndex_(v122, v266, v339, 72, 5, v267, v268, v269);
  if (maximumVelocityMatrix)
  {
    v277 = objc_msgSend_data(maximumVelocityMatrix, v270, v271, v272, v273, v274, v275, v276);
    objc_msgSend_setBuffer_offset_atIndex_(v122, v278, v277, *(&maximumVelocityMatrix->super.isa + *v213), 6, v279, v280, v281);
  }

  v282 = objc_msgSend_threadExecutionWidth(ComputeState, v270, v271, v272, v273, v274, v275, v276);
  v290 = objc_msgSend_maxTotalThreadsPerThreadgroup(ComputeState, v283, v284, v285, v286, v287, v288, v289);
  if (v282 <= 1)
  {
    v296 = 1;
  }

  else
  {
    v296 = v282;
  }

  v297 = 2 * v296;
  if (v297 >= v290)
  {
    v297 = v290;
  }

  v338[0] = (v152 + v297 - 1) / v297;
  v338[1] = v153;
  v338[2] = 1;
  v336 = v297;
  v337 = vdupq_n_s64(1uLL);
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v122, v291, v338, &v336, v292, v293, v294, v295);
  objc_msgSend_endEncoding(v122, v298, v299, v300, v301, v302, v303, v304);

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    Count = objc_msgSend_readCount(inputGradientMatrix, v305, v306, v307, v308, v309, v310, v311);
    objc_msgSend_setReadCount_(inputGradientMatrix, v313, Count - 1, v314, v315, v316, v317, v318);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v326 = objc_msgSend_readCount(inputValuesMatrix, v319, v320, v321, v322, v323, v324, v325);
    objc_msgSend_setReadCount_(inputValuesMatrix, v327, v326 - 1, v328, v329, v330, v331, v332);
  }
}

- (void)encodeToCommandBuffer:(id)commandBuffer convolutionGradientState:(MPSCNNConvolutionGradientState *)convolutionGradientState convolutionSourceState:(MPSCNNConvolutionWeightsAndBiasesState *)convolutionSourceState inputMomentumVectors:(NSArray *)inputMomentumVectors inputVelocityVectors:(NSArray *)inputVelocityVectors maximumVelocityVectors:(NSArray *)maximumVelocityVectors resultState:(MPSCNNConvolutionWeightsAndBiasesState *)resultState
{
  objc_opt_class();
  objc_opt_isKindOfClass();
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  objc_opt_class();
  objc_opt_isKindOfClass();
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  objc_opt_class();
  objc_opt_isKindOfClass();
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (!inputMomentumVectors && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  objc_msgSend_count(inputMomentumVectors, v15, v16, v17, v18, v19, v20, v21);
  if (!objc_msgSend_count(inputMomentumVectors, v22, v23, v24, v25, v26, v27, v28) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (!inputVelocityVectors && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  objc_msgSend_count(inputVelocityVectors, v29, v30, v31, v32, v33, v34, v35);
  if (!objc_msgSend_count(inputVelocityVectors, v36, v37, v38, v39, v40, v41, v42) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (maximumVelocityVectors)
  {
    objc_msgSend_count(maximumVelocityVectors, v43, v44, v45, v46, v47, v48, v49);
    if (!objc_msgSend_count(maximumVelocityVectors, v50, v51, v52, v53, v54, v55, v56) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    objc_msgSend_count(maximumVelocityVectors, v57, v58, v59, v60, v61, v62, v63);
    objc_msgSend_count(inputVelocityVectors, v64, v65, v66, v67, v68, v69, v70);
    v78 = objc_msgSend_count(maximumVelocityVectors, v71, v72, v73, v74, v75, v76, v77);
    if (v78 != objc_msgSend_count(inputVelocityVectors, v79, v80, v81, v82, v83, v84, v85) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }
  }

  v334 = maximumVelocityVectors;
  selfCopy = self;
  objc_msgSend_numberOfWeights(resultState, v43, v44, v45, v46, v47, v48, v49);
  objc_msgSend_numberOfWeights(convolutionSourceState, v86, v87, v88, v89, v90, v91, v92);
  v100 = objc_msgSend_numberOfWeights(resultState, v93, v94, v95, v96, v97, v98, v99);
  if (v100 != objc_msgSend_numberOfWeights(convolutionSourceState, v101, v102, v103, v104, v105, v106, v107) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v115 = MEMORY[0x277CD72D0];
  v116 = objc_msgSend_numberOfWeights(resultState, v108, v109, v110, v111, v112, v113, v114);
  v122 = objc_msgSend_vectorDescriptorWithLength_dataType_(v115, v117, v116, 268435488, v118, v119, v120, v121);
  v123 = objc_alloc(MEMORY[0x277CD72C8]);
  v337 = convolutionGradientState;
  v131 = objc_msgSend_gradientForWeights(convolutionGradientState, v124, v125, v126, v127, v128, v129, v130);
  v137 = objc_msgSend_initWithBuffer_descriptor_(v123, v132, v131, v122, v133, v134, v135, v136);
  v138 = objc_alloc(MEMORY[0x277CD72C8]);
  v146 = objc_msgSend_weights(convolutionSourceState, v139, v140, v141, v142, v143, v144, v145);
  v152 = objc_msgSend_initWithBuffer_descriptor_(v138, v147, v146, v122, v148, v149, v150, v151);
  v153 = objc_alloc(MEMORY[0x277CD72C8]);
  v161 = objc_msgSend_weights(resultState, v154, v155, v156, v157, v158, v159, v160);
  v167 = objc_msgSend_initWithBuffer_descriptor_(v153, v162, v161, v122, v163, v164, v165, v166);
  v168 = selfCopy;
  dispatch_semaphore_wait(selfCopy->_timeStepSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  v175 = objc_msgSend_objectAtIndexedSubscript_(inputMomentumVectors, v169, 0, v170, v171, v172, v173, v174);
  v188 = objc_msgSend_objectAtIndexedSubscript_(inputVelocityVectors, v176, 0, v177, v178, v179, v180, v181);
  if (v334)
  {
    v189 = objc_msgSend_objectAtIndexedSubscript_(v334, v182, 0, v183, v184, v185, v186, v187);
    objc_msgSend_encodeToCommandBuffer_inputGradientVector_inputValuesVector_inputMomentumVector_inputVelocityVector_maximumVelocityVector_resultValuesVector_(selfCopy, v190, commandBuffer, v137, v152, v175, v188, v189, v167);
    p_super = &v337->super.super;
    v199 = objc_msgSend_gradientForBiases(v337, v192, v193, v194, v195, v196, v197, v198);
    v207 = inputMomentumVectors;
    if (!v199)
    {
      goto LABEL_23;
    }
  }

  else
  {
    objc_msgSend_encodeToCommandBuffer_inputGradientVector_inputValuesVector_inputMomentumVector_inputVelocityVector_resultValuesVector_(selfCopy, v182, commandBuffer, v137, v152, v175, v188, v167);
    p_super = &v337->super.super;
    v215 = objc_msgSend_gradientForBiases(v337, v208, v209, v210, v211, v212, v213, v214);
    v207 = inputMomentumVectors;
    if (!v215)
    {
      goto LABEL_23;
    }
  }

  if (objc_msgSend_count(v207, v200, v201, v202, v203, v204, v205, v206) == 2 && objc_msgSend_count(inputVelocityVectors, v216, v217, v218, v219, v220, v221, v222) == 2)
  {
    --selfCopy->_timeStep;
    objc_msgSend_numberOfBiases(resultState, v223, v224, v225, v226, v227, v228, v229);
    objc_msgSend_numberOfBiases(convolutionSourceState, v230, v231, v232, v233, v234, v235, v236);
    v244 = objc_msgSend_numberOfBiases(resultState, v237, v238, v239, v240, v241, v242, v243);
    if (v244 != objc_msgSend_numberOfBiases(convolutionSourceState, v245, v246, v247, v248, v249, v250, v251) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v259 = MEMORY[0x277CD72D0];
    v260 = objc_msgSend_numberOfBiases(resultState, v252, v253, v254, v255, v256, v257, v258);
    v266 = objc_msgSend_vectorDescriptorWithLength_dataType_(v259, v261, v260, 268435488, v262, v263, v264, v265);
    v267 = objc_alloc(MEMORY[0x277CD72C8]);
    v275 = objc_msgSend_gradientForBiases(p_super, v268, v269, v270, v271, v272, v273, v274);
    v281 = objc_msgSend_initWithBuffer_descriptor_(v267, v276, v275, v266, v277, v278, v279, v280);
    v282 = objc_alloc(MEMORY[0x277CD72C8]);
    v290 = objc_msgSend_biases(convolutionSourceState, v283, v284, v285, v286, v287, v288, v289);
    v296 = objc_msgSend_initWithBuffer_descriptor_(v282, v291, v290, v266, v292, v293, v294, v295);
    v297 = objc_alloc(MEMORY[0x277CD72C8]);
    v305 = objc_msgSend_biases(resultState, v298, v299, v300, v301, v302, v303, v304);
    v311 = objc_msgSend_initWithBuffer_descriptor_(v297, v306, v305, v266, v307, v308, v309, v310);
    v318 = objc_msgSend_objectAtIndexedSubscript_(inputMomentumVectors, v312, 1, v313, v314, v315, v316, v317);
    v331 = objc_msgSend_objectAtIndexedSubscript_(inputVelocityVectors, v319, 1, v320, v321, v322, v323, v324);
    if (v334)
    {
      v332 = objc_msgSend_objectAtIndexedSubscript_(v334, v325, 1, v326, v327, v328, v329, v330);
      v168 = selfCopy;
      objc_msgSend_encodeToCommandBuffer_inputGradientVector_inputValuesVector_inputMomentumVector_inputVelocityVector_maximumVelocityVector_resultValuesVector_(selfCopy, v333, commandBuffer, v281, v296, v318, v331, v332, v311);
    }

    else
    {
      v168 = selfCopy;
      objc_msgSend_encodeToCommandBuffer_inputGradientVector_inputValuesVector_inputMomentumVector_inputVelocityVector_resultValuesVector_(selfCopy, v325, commandBuffer, v281, v296, v318, v331, v311);
    }

    p_super = &v337->super.super;
  }

LABEL_23:
  dispatch_semaphore_signal(v168->_timeStepSemaphore);
  MPSDecrementReadCount(&convolutionSourceState->super);

  MPSDecrementReadCount(p_super);
}

- (void)encodeToCommandBuffer:(id)commandBuffer batchNormalizationGradientState:(MPSCNNBatchNormalizationState *)batchNormalizationGradientState batchNormalizationSourceState:(MPSCNNBatchNormalizationState *)batchNormalizationSourceState inputMomentumVectors:(NSArray *)inputMomentumVectors inputVelocityVectors:(NSArray *)inputVelocityVectors maximumVelocityVectors:(NSArray *)maximumVelocityVectors resultState:(MPSCNNNormalizationGammaAndBetaState *)resultState
{
  objc_opt_class();
  objc_opt_isKindOfClass();
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  objc_opt_class();
  objc_opt_isKindOfClass();
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  objc_opt_class();
  objc_opt_isKindOfClass();
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (!inputMomentumVectors && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  objc_msgSend_count(inputMomentumVectors, v15, v16, v17, v18, v19, v20, v21);
  if (!objc_msgSend_count(inputMomentumVectors, v22, v23, v24, v25, v26, v27, v28) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (!inputVelocityVectors && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  objc_msgSend_count(inputVelocityVectors, v29, v30, v31, v32, v33, v34, v35);
  if (!objc_msgSend_count(inputVelocityVectors, v36, v37, v38, v39, v40, v41, v42) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (maximumVelocityVectors)
  {
    objc_msgSend_count(maximumVelocityVectors, v43, v44, v45, v46, v47, v48, v49);
    if (!objc_msgSend_count(maximumVelocityVectors, v50, v51, v52, v53, v54, v55, v56) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    objc_msgSend_count(maximumVelocityVectors, v57, v58, v59, v60, v61, v62, v63);
    objc_msgSend_count(inputVelocityVectors, v64, v65, v66, v67, v68, v69, v70);
    v78 = objc_msgSend_count(maximumVelocityVectors, v71, v72, v73, v74, v75, v76, v77);
    if (v78 != objc_msgSend_count(inputVelocityVectors, v79, v80, v81, v82, v83, v84, v85) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }
  }

  v288 = inputVelocityVectors;
  v86 = objc_msgSend_batchNormalization(batchNormalizationGradientState, v43, v44, v45, v46, v47, v48, v49);
  objc_msgSend_gradientForGamma(batchNormalizationGradientState, v87, v88, v89, v90, v91, v92, v93);
  if (!objc_msgSend_gradientForGamma(batchNormalizationGradientState, v94, v95, v96, v97, v98, v99, v100) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v108 = MEMORY[0x277CD72D0];
  v109 = objc_msgSend_numberOfFeatureChannels(v86, v101, v102, v103, v104, v105, v106, v107);
  v115 = objc_msgSend_vectorDescriptorWithLength_dataType_(v108, v110, v109, 268435488, v111, v112, v113, v114);
  v116 = objc_alloc(MEMORY[0x277CD72C8]);
  v286 = batchNormalizationGradientState;
  v124 = objc_msgSend_gradientForGamma(batchNormalizationGradientState, v117, v118, v119, v120, v121, v122, v123);
  v130 = objc_msgSend_initWithBuffer_descriptor_(v116, v125, v124, v115, v126, v127, v128, v129);
  v131 = objc_alloc(MEMORY[0x277CD72C8]);
  v132 = batchNormalizationSourceState;
  v140 = objc_msgSend_gamma(batchNormalizationSourceState, v133, v134, v135, v136, v137, v138, v139);
  v146 = objc_msgSend_initWithBuffer_descriptor_(v131, v141, v140, v115, v142, v143, v144, v145);
  v147 = objc_alloc(MEMORY[0x277CD72C8]);
  v155 = objc_msgSend_gamma(resultState, v148, v149, v150, v151, v152, v153, v154);
  v161 = objc_msgSend_initWithBuffer_descriptor_(v147, v156, v155, v115, v157, v158, v159, v160);
  dispatch_semaphore_wait(self->_timeStepSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  v162 = inputMomentumVectors;
  v169 = objc_msgSend_objectAtIndexedSubscript_(inputMomentumVectors, v163, 0, v164, v165, v166, v167, v168);
  v182 = objc_msgSend_objectAtIndexedSubscript_(v288, v170, 0, v171, v172, v173, v174, v175);
  v285 = maximumVelocityVectors;
  if (maximumVelocityVectors)
  {
    v183 = objc_msgSend_objectAtIndexedSubscript_(maximumVelocityVectors, v176, 0, v177, v178, v179, v180, v181);
    selfCopy2 = self;
    objc_msgSend_encodeToCommandBuffer_inputGradientVector_inputValuesVector_inputMomentumVector_inputVelocityVector_maximumVelocityVector_resultValuesVector_(self, v185, commandBuffer, v130, v146, v169, v182, v183, v161);
    p_super = &v286->super.super;
    v201 = &v132->super.super;
    if (!objc_msgSend_gradientForBeta(v286, v187, v188, v189, v190, v191, v192, v193))
    {
      goto LABEL_22;
    }
  }

  else
  {
    selfCopy2 = self;
    objc_msgSend_encodeToCommandBuffer_inputGradientVector_inputValuesVector_inputMomentumVector_inputVelocityVector_resultValuesVector_(self, v176, commandBuffer, v130, v146, v169, v182, v161);
    p_super = &v286->super.super;
    v201 = &v132->super.super;
    if (!objc_msgSend_gradientForBeta(v286, v202, v203, v204, v205, v206, v207, v208))
    {
      goto LABEL_22;
    }
  }

  v209 = v162;
  if (objc_msgSend_count(v162, v194, v195, v196, v197, v198, v199, v200) == 2 && objc_msgSend_count(v288, v210, v211, v212, v213, v214, v215, v216) == 2)
  {
    v217 = p_super;
    --selfCopy2->_timeStep;
    v218 = objc_alloc(MEMORY[0x277CD72C8]);
    v226 = objc_msgSend_gradientForBeta(v217, v219, v220, v221, v222, v223, v224, v225);
    v232 = objc_msgSend_initWithBuffer_descriptor_(v218, v227, v226, v115, v228, v229, v230, v231);
    v233 = objc_alloc(MEMORY[0x277CD72C8]);
    v241 = objc_msgSend_beta(v201, v234, v235, v236, v237, v238, v239, v240);
    v247 = objc_msgSend_initWithBuffer_descriptor_(v233, v242, v241, v115, v243, v244, v245, v246);
    v248 = objc_alloc(MEMORY[0x277CD72C8]);
    v256 = objc_msgSend_beta(resultState, v249, v250, v251, v252, v253, v254, v255);
    v262 = objc_msgSend_initWithBuffer_descriptor_(v248, v257, v256, v115, v258, v259, v260, v261);
    v269 = objc_msgSend_objectAtIndexedSubscript_(v209, v263, 1, v264, v265, v266, v267, v268);
    v282 = objc_msgSend_objectAtIndexedSubscript_(v288, v270, 1, v271, v272, v273, v274, v275);
    if (v285)
    {
      v283 = objc_msgSend_objectAtIndexedSubscript_(v285, v276, 1, v277, v278, v279, v280, v281);
      objc_msgSend_encodeToCommandBuffer_inputGradientVector_inputValuesVector_inputMomentumVector_inputVelocityVector_maximumVelocityVector_resultValuesVector_(selfCopy2, v284, commandBuffer, v232, v247, v269, v282, v283, v262);
    }

    else
    {
      objc_msgSend_encodeToCommandBuffer_inputGradientVector_inputValuesVector_inputMomentumVector_inputVelocityVector_resultValuesVector_(selfCopy2, v276, commandBuffer, v232, v247, v269, v282, v262);
    }

    p_super = &v286->super.super;
  }

LABEL_22:
  dispatch_semaphore_signal(selfCopy2->_timeStepSemaphore);
  MPSDecrementReadCount(p_super);

  MPSDecrementReadCount(v201);
}

- (void)encodeToCommandBuffer:(id)commandBuffer batchNormalizationState:(MPSCNNBatchNormalizationState *)batchNormalizationState inputMomentumVectors:(NSArray *)inputMomentumVectors inputVelocityVectors:(NSArray *)inputVelocityVectors maximumVelocityVectors:(NSArray *)maximumVelocityVectors resultState:(MPSCNNNormalizationGammaAndBetaState *)resultState
{
  objc_opt_class();
  objc_opt_isKindOfClass();
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  objc_opt_class();
  objc_opt_isKindOfClass();
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (!inputMomentumVectors && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  objc_msgSend_count(inputMomentumVectors, v14, v15, v16, v17, v18, v19, v20);
  if (!objc_msgSend_count(inputMomentumVectors, v21, v22, v23, v24, v25, v26, v27) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (!inputVelocityVectors && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  objc_msgSend_count(inputVelocityVectors, v28, v29, v30, v31, v32, v33, v34);
  if (!objc_msgSend_count(inputVelocityVectors, v35, v36, v37, v38, v39, v40, v41) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (maximumVelocityVectors)
  {
    objc_msgSend_count(maximumVelocityVectors, v42, v43, v44, v45, v46, v47, v48);
    if (!objc_msgSend_count(maximumVelocityVectors, v49, v50, v51, v52, v53, v54, v55) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    objc_msgSend_count(maximumVelocityVectors, v56, v57, v58, v59, v60, v61, v62);
    objc_msgSend_count(inputVelocityVectors, v63, v64, v65, v66, v67, v68, v69);
    v77 = objc_msgSend_count(maximumVelocityVectors, v70, v71, v72, v73, v74, v75, v76);
    if (v77 != objc_msgSend_count(inputVelocityVectors, v78, v79, v80, v81, v82, v83, v84) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }
  }

  v281 = resultState;
  v85 = objc_msgSend_batchNormalization(batchNormalizationState, v42, v43, v44, v45, v46, v47, v48);
  objc_msgSend_gradientForGamma(batchNormalizationState, v86, v87, v88, v89, v90, v91, v92);
  if (!objc_msgSend_gradientForGamma(batchNormalizationState, v93, v94, v95, v96, v97, v98, v99) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v107 = MEMORY[0x277CD72D0];
  v108 = objc_msgSend_numberOfFeatureChannels(v85, v100, v101, v102, v103, v104, v105, v106);
  v114 = objc_msgSend_vectorDescriptorWithLength_dataType_(v107, v109, v108, 268435488, v110, v111, v112, v113);
  v115 = objc_alloc(MEMORY[0x277CD72C8]);
  v123 = objc_msgSend_gradientForGamma(batchNormalizationState, v116, v117, v118, v119, v120, v121, v122);
  v129 = objc_msgSend_initWithBuffer_descriptor_(v115, v124, v123, v114, v125, v126, v127, v128);
  v130 = objc_alloc(MEMORY[0x277CD72C8]);
  v138 = objc_msgSend_gamma(batchNormalizationState, v131, v132, v133, v134, v135, v136, v137);
  v144 = objc_msgSend_initWithBuffer_descriptor_(v130, v139, v138, v114, v140, v141, v142, v143);
  v145 = objc_alloc(MEMORY[0x277CD72C8]);
  v153 = objc_msgSend_gamma(v281, v146, v147, v148, v149, v150, v151, v152);
  v159 = objc_msgSend_initWithBuffer_descriptor_(v145, v154, v153, v114, v155, v156, v157, v158);
  dispatch_semaphore_wait(self->_timeStepSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  v280 = inputMomentumVectors;
  v166 = objc_msgSend_objectAtIndexedSubscript_(inputMomentumVectors, v160, 0, v161, v162, v163, v164, v165);
  v167 = inputVelocityVectors;
  v180 = objc_msgSend_objectAtIndexedSubscript_(inputVelocityVectors, v168, 0, v169, v170, v171, v172, v173);
  v279 = maximumVelocityVectors;
  if (maximumVelocityVectors)
  {
    v181 = objc_msgSend_objectAtIndexedSubscript_(maximumVelocityVectors, v174, 0, v175, v176, v177, v178, v179);
    selfCopy2 = self;
    objc_msgSend_encodeToCommandBuffer_inputGradientVector_inputValuesVector_inputMomentumVector_inputVelocityVector_maximumVelocityVector_resultValuesVector_(self, v183, commandBuffer, v129, v144, v166, v180, v181, v159);
    if (!objc_msgSend_gradientForBeta(batchNormalizationState, v184, v185, v186, v187, v188, v189, v190))
    {
      goto LABEL_20;
    }
  }

  else
  {
    selfCopy2 = self;
    objc_msgSend_encodeToCommandBuffer_inputGradientVector_inputValuesVector_inputMomentumVector_inputVelocityVector_resultValuesVector_(self, v174, commandBuffer, v129, v144, v166, v180, v159);
    if (!objc_msgSend_gradientForBeta(batchNormalizationState, v198, v199, v200, v201, v202, v203, v204))
    {
      goto LABEL_20;
    }
  }

  if (objc_msgSend_count(v280, v191, v192, v193, v194, v195, v196, v197) == 2 && objc_msgSend_count(v167, v205, v206, v207, v208, v209, v210, v211) == 2)
  {
    --selfCopy2->_timeStep;
    v212 = objc_alloc(MEMORY[0x277CD72C8]);
    v220 = objc_msgSend_gradientForBeta(batchNormalizationState, v213, v214, v215, v216, v217, v218, v219);
    v226 = objc_msgSend_initWithBuffer_descriptor_(v212, v221, v220, v114, v222, v223, v224, v225);
    v227 = objc_alloc(MEMORY[0x277CD72C8]);
    v235 = objc_msgSend_beta(batchNormalizationState, v228, v229, v230, v231, v232, v233, v234);
    v241 = objc_msgSend_initWithBuffer_descriptor_(v227, v236, v235, v114, v237, v238, v239, v240);
    v242 = objc_alloc(MEMORY[0x277CD72C8]);
    v250 = objc_msgSend_beta(v281, v243, v244, v245, v246, v247, v248, v249);
    v256 = objc_msgSend_initWithBuffer_descriptor_(v242, v251, v250, v114, v252, v253, v254, v255);
    v263 = objc_msgSend_objectAtIndexedSubscript_(v280, v257, 1, v258, v259, v260, v261, v262);
    v276 = objc_msgSend_objectAtIndexedSubscript_(v167, v264, 1, v265, v266, v267, v268, v269);
    if (v279)
    {
      v277 = objc_msgSend_objectAtIndexedSubscript_(v279, v270, 1, v271, v272, v273, v274, v275);
      objc_msgSend_encodeToCommandBuffer_inputGradientVector_inputValuesVector_inputMomentumVector_inputVelocityVector_maximumVelocityVector_resultValuesVector_(selfCopy2, v278, commandBuffer, v226, v241, v263, v276, v277, v256);
    }

    else
    {
      objc_msgSend_encodeToCommandBuffer_inputGradientVector_inputValuesVector_inputMomentumVector_inputVelocityVector_resultValuesVector_(selfCopy2, v270, commandBuffer, v226, v241, v263, v276, v256);
    }
  }

LABEL_20:
  dispatch_semaphore_signal(selfCopy2->_timeStepSemaphore);

  MPSDecrementReadCount(&batchNormalizationState->super.super);
}

- (void)dealloc
{
  timeStepSemaphore = self->_timeStepSemaphore;
  if (timeStepSemaphore)
  {
    dispatch_release(timeStepSemaphore);
  }

  v4.receiver = self;
  v4.super_class = MPSNNOptimizerAdam;
  [(MPSKernel *)&v4 dealloc];
}

@end