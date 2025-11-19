@interface MPSNNOptimizerStochasticGradientDescent
- (MPSNNOptimizerStochasticGradientDescent)initWithCoder:(id)a3 device:(id)a4;
- (MPSNNOptimizerStochasticGradientDescent)initWithDevice:(id)device learningRate:(float)learningRate;
- (MPSNNOptimizerStochasticGradientDescent)initWithDevice:(id)device momentumScale:(float)momentumScale useNesterovMomentum:(BOOL)useNesterovMomentum optimizerDescriptor:(MPSNNOptimizerDescriptor *)optimizerDescriptor;
- (id)copyWithZone:(_NSZone *)a3 device:(id)a4;
- (id)debugDescription;
- (void)encodeToCommandBuffer:(id)commandBuffer batchNormalizationGradientState:(MPSCNNBatchNormalizationState *)batchNormalizationGradientState batchNormalizationSourceState:(MPSCNNBatchNormalizationState *)batchNormalizationSourceState inputMomentumVectors:(NSArray *)inputMomentumVectors resultState:(MPSCNNNormalizationGammaAndBetaState *)resultState;
- (void)encodeToCommandBuffer:(id)commandBuffer batchNormalizationState:(MPSCNNBatchNormalizationState *)batchNormalizationState inputMomentumVectors:(NSArray *)inputMomentumVectors resultState:(MPSCNNNormalizationGammaAndBetaState *)resultState;
- (void)encodeToCommandBuffer:(id)commandBuffer convolutionGradientState:(MPSCNNConvolutionGradientState *)convolutionGradientState convolutionSourceState:(MPSCNNConvolutionWeightsAndBiasesState *)convolutionSourceState inputMomentumVectors:(NSArray *)inputMomentumVectors resultState:(MPSCNNConvolutionWeightsAndBiasesState *)resultState;
- (void)encodeToCommandBuffer:(id)commandBuffer inputGradientMatrix:(MPSMatrix *)inputGradientMatrix inputValuesMatrix:(MPSMatrix *)inputValuesMatrix inputMomentumMatrix:(MPSMatrix *)inputMomentumMatrix resultValuesMatrix:(MPSMatrix *)resultValuesMatrix;
- (void)encodeToCommandBuffer:(id)commandBuffer inputGradientVector:(MPSVector *)inputGradientVector inputValuesVector:(MPSVector *)inputValuesVector inputMomentumVector:(MPSVector *)inputMomentumVector resultValuesVector:(MPSVector *)resultValuesVector;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MPSNNOptimizerStochasticGradientDescent

- (MPSNNOptimizerStochasticGradientDescent)initWithDevice:(id)device learningRate:(float)learningRate
{
  v11 = objc_msgSend_optimizerDescriptorWithLearningRate_gradientRescale_regularizationType_regularizationScale_(MPSNNOptimizerDescriptor, a2, 0, v4, v5, v6, v7, v8);

  return MEMORY[0x2821F9670](self, sel_initWithDevice_momentumScale_useNesterovMomentum_optimizerDescriptor_, device, 0, v11, v12, v13, v14);
}

- (MPSNNOptimizerStochasticGradientDescent)initWithDevice:(id)device momentumScale:(float)momentumScale useNesterovMomentum:(BOOL)useNesterovMomentum optimizerDescriptor:(MPSNNOptimizerDescriptor *)optimizerDescriptor
{
  v9.receiver = self;
  v9.super_class = MPSNNOptimizerStochasticGradientDescent;
  result = [(MPSNNOptimizer *)&v9 initWithDevice:device optimizerDescriptor:optimizerDescriptor];
  if (result)
  {
    *(&result->super._regularizationScale + 1) = momentumScale;
    LOBYTE(result->_momentumScale) = useNesterovMomentum;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3 device:(id)a4
{
  v6.receiver = self;
  v6.super_class = MPSNNOptimizerStochasticGradientDescent;
  result = [(MPSNNOptimizer *)&v6 copyWithZone:a3 device:a4];
  if (result)
  {
    *(result + 31) = *(&self->super._regularizationScale + 1);
    *(result + 128) = LOBYTE(self->_momentumScale);
  }

  return result;
}

- (void)encodeWithCoder:(id)a3
{
  *(&self->super.super.super.isa + *MEMORY[0x277CD7358] + 1) = 1;
  v17.receiver = self;
  v17.super_class = MPSNNOptimizerStochasticGradientDescent;
  [(MPSNNOptimizer *)&v17 encodeWithCoder:?];
  LODWORD(v5) = *(&self->super._regularizationScale + 1);
  objc_msgSend_encodeFloat_forKey_(a3, v6, @"kMPSNNOptimizer.momentumScale", v7, v8, v9, v10, v11, v5);
  objc_msgSend_encodeBool_forKey_(a3, v12, LOBYTE(self->_momentumScale), @"kMPSNNOptimizer.useNestrovMomentum", v13, v14, v15, v16);
}

- (MPSNNOptimizerStochasticGradientDescent)initWithCoder:(id)a3 device:(id)a4
{
  v22.receiver = self;
  v22.super_class = MPSNNOptimizerStochasticGradientDescent;
  v5 = [(MPSNNOptimizer *)&v22 initWithCoder:a3 device:a4];
  v12 = v5;
  if (!v5)
  {
    return v12;
  }

  if (*(&v5->super.super.super.isa + *MEMORY[0x277CD7358] + 1) << 8 == 256)
  {
    objc_msgSend_decodeFloatForKey_(a3, v6, @"kMPSNNOptimizer.momentumScale", v7, v8, v9, v10, v11);
    *(&v12->super._regularizationScale + 1) = v13;
    LOBYTE(v12->_momentumScale) = objc_msgSend_decodeBoolForKey_(a3, v14, @"kMPSNNOptimizer.useNestrovMomentum", v15, v16, v17, v18, v19);
    return v12;
  }

  if (MTLReportFailureTypeEnabled())
  {
    v21 = objc_opt_class();
    NSStringFromClass(v21);
    MTLReportFailure();
  }

  return 0;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v12.receiver = self;
  v12.super_class = MPSNNOptimizerStochasticGradientDescent;
  v4 = [(MPSNNOptimizer *)&v12 debugDescription];
  return objc_msgSend_stringWithFormat_(v3, v5, @"%@\n            \tmomentumScale:\t\t\t\t%f\n            \tuseNesterovMomentum:\t\t\t\t%d\n", v6, v7, v8, v9, v10, v4, *(&self->super._regularizationScale + 1), LOBYTE(self->_momentumScale));
}

- (void)encodeToCommandBuffer:(id)commandBuffer inputGradientVector:(MPSVector *)inputGradientVector inputValuesVector:(MPSVector *)inputValuesVector inputMomentumVector:(MPSVector *)inputMomentumVector resultValuesVector:(MPSVector *)resultValuesVector
{
  v13 = objc_autoreleasePoolPush();
  v14 = sub_239C05678(inputGradientVector);
  v15 = sub_239C05678(inputValuesVector);
  v16 = sub_239C05678(inputMomentumVector);
  v17 = sub_239C05678(resultValuesVector);
  objc_msgSend_encodeToCommandBuffer_inputGradientMatrix_inputValuesMatrix_inputMomentumMatrix_resultValuesMatrix_(self, v18, commandBuffer, v14, v15, v16, v17, v19);

  objc_autoreleasePoolPop(v13);
}

- (void)encodeToCommandBuffer:(id)commandBuffer inputGradientMatrix:(MPSMatrix *)inputGradientMatrix inputValuesMatrix:(MPSMatrix *)inputValuesMatrix inputMomentumMatrix:(MPSMatrix *)inputMomentumMatrix resultValuesMatrix:(MPSMatrix *)resultValuesMatrix
{
  v273[3] = *MEMORY[0x277D85DE8];
  sub_239C05C9C(inputGradientMatrix, inputGradientMatrix, "inputGradientMatrix", inputGradientMatrix, inputValuesMatrix, inputMomentumMatrix, resultValuesMatrix, v7);
  sub_239C05C9C(inputGradientMatrix, inputValuesMatrix, "inputValuesMatrix", v14, v15, v16, v17, v18);
  if (inputMomentumMatrix)
  {
    sub_239C05C9C(inputGradientMatrix, inputMomentumMatrix, "inputMomentumMatrix", v19, v20, v21, v22, v23);
  }

  sub_239C05C9C(inputGradientMatrix, resultValuesMatrix, "resultValuesMatrix", v19, v20, v21, v22, v23);
  v273[0] = inputGradientMatrix;
  v273[1] = inputValuesMatrix;
  v273[2] = resultValuesMatrix;
  v29 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v24, v273, 3, v25, v26, v27, v28);
  if (objc_msgSend_count(v29, v30, v31, v32, v33, v34, v35, v36))
  {
    v44 = 1;
    do
    {
      v45 = objc_msgSend_objectAtIndexedSubscript_(v29, v37, v44 - 1, v39, v40, v41, v42, v43);
      v53 = (objc_msgSend_rowBytes(v45, v46, v47, v48, v49, v50, v51, v52) & 0xF) == 0;
    }

    while (v44++ < objc_msgSend_count(v29, v54, v55, v56, v57, v58, v59, v60) && v53);
    if (!inputMomentumMatrix)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v53 = 1;
    if (!inputMomentumMatrix)
    {
      goto LABEL_13;
    }
  }

  if (v53)
  {
    v272 = inputMomentumMatrix;
    v62 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v37, &v272, 1, v40, v41, v42, v43);
    if (!objc_msgSend_count(v62, v63, v64, v65, v66, v67, v68, v69))
    {
      goto LABEL_14;
    }

    v70 = 1;
    do
    {
      v71 = objc_msgSend_objectAtIndexedSubscript_(v62, v37, v70 - 1, v39, v40, v41, v42, v43);
      v53 = (objc_msgSend_rowBytes(v71, v72, v73, v74, v75, v76, v77, v78) & 0xF) == 0;
    }

    while (v70++ < objc_msgSend_count(v62, v79, v80, v81, v82, v83, v84, v85) && v53);
  }

LABEL_13:
  if (!v53)
  {
    v94 = objc_msgSend_columns(inputGradientMatrix, v37, v38, v39, v40, v41, v42, v43);
    goto LABEL_16;
  }

LABEL_14:
  v94 = (objc_msgSend_columns(inputGradientMatrix, v37, v38, v39, v40, v41, v42, v43) + 3) >> 2;
LABEL_16:
  v95 = objc_msgSend_rows(inputGradientMatrix, v87, v88, v89, v90, v91, v92, v93);
  v96 = objc_alloc(MEMORY[0x277CD7210]);
  v108 = objc_msgSend_initWithCommandBuffer_withDispatchType_(v96, v97, commandBuffer, 0, v98, v99, v100, v101);
  v270 = v108;
  v271 = self;
  if ((*(&self->super.super.super.isa + *MEMORY[0x277CD7378]) & 0x18) != 0)
  {
    v109 = *(&self->super.super.super.isa + *MEMORY[0x277CD7360]);
    if (v109 || (v110 = objc_opt_class(), v109 = NSStringFromClass(v110), objc_msgSend_setLabel_(self, v111, v109, v112, v113, v114, v115, v116), v109))
    {
      objc_msgSend_setLabel_(v108, v102, v109, v103, v104, v105, v106, v107);
    }
  }

  ComputeState = MPSLibrary::GetComputeState();
  objc_msgSend_setComputePipelineState_(v108, v118, ComputeState, v119, v120, v121, v122, v123);
  MPSLibrary::ReleaseComputeState();
  learningRate = self->super._learningRate;
  gradientClipMin = self->super._gradientClipMin;
  gradientRescale = self->super._gradientRescale;
  regularizationScale = self->super._regularizationScale;
  v265[3] = LODWORD(self->super._gradientClipMax);
  *&v265[4] = gradientClipMin;
  applyGradientClipping = self->super._applyGradientClipping;
  regularizationType = self->super._regularizationType;
  v265[0] = v94;
  *&v265[5] = gradientRescale;
  *&v265[6] = regularizationScale;
  momentumScale_low = LOBYTE(self->_momentumScale);
  v128 = *(&self->super._regularizationScale + 1);
  *&v265[1] = learningRate;
  v265[2] = v128;
  v265[7] = objc_msgSend_rowBytes(inputGradientMatrix, v129, v130, v131, v132, v133, v134, v135);
  v265[9] = objc_msgSend_rowBytes(resultValuesMatrix, v136, v137, v138, v139, v140, v141, v142);
  v265[8] = objc_msgSend_rowBytes(inputValuesMatrix, v143, v144, v145, v146, v147, v148, v149);
  v268 = objc_msgSend_rowBytes(inputMomentumMatrix, v150, v151, v152, v153, v154, v155, v156);
  v164 = objc_msgSend_data(inputGradientMatrix, v157, v158, v159, v160, v161, v162, v163);
  v165 = MEMORY[0x277CD73A8];
  objc_msgSend_setBuffer_offset_atIndex_(v108, v166, v164, *(&inputGradientMatrix->super.isa + *MEMORY[0x277CD73A8]), 0, v167, v168, v169);
  v177 = objc_msgSend_data(inputValuesMatrix, v170, v171, v172, v173, v174, v175, v176);
  objc_msgSend_setBuffer_offset_atIndex_(v108, v178, v177, *(&inputValuesMatrix->super.isa + *v165), 1, v179, v180, v181);
  v189 = objc_msgSend_data(resultValuesMatrix, v182, v183, v184, v185, v186, v187, v188);
  objc_msgSend_setBuffer_offset_atIndex_(v108, v190, v189, *(&resultValuesMatrix->super.isa + *v165), 2, v191, v192, v193);
  objc_msgSend_setBytes_length_atIndex_(v108, v194, v265, 52, 3, v195, v196, v197);
  if (inputMomentumMatrix)
  {
    v205 = objc_msgSend_data(inputMomentumMatrix, v198, v199, v200, v201, v202, v203, v204);
    objc_msgSend_setBuffer_offset_atIndex_(v108, v206, v205, *(&inputMomentumMatrix->super.isa + *v165), 4, v207, v208, v209);
  }

  v210 = objc_msgSend_threadExecutionWidth(ComputeState, v198, v199, v200, v201, v202, v203, v204, v95);
  v218 = objc_msgSend_maxTotalThreadsPerThreadgroup(ComputeState, v211, v212, v213, v214, v215, v216, v217);
  if (v210 <= 1)
  {
    v224 = 1;
  }

  else
  {
    v224 = v210;
  }

  v225 = 2 * v224;
  if (v225 >= v218)
  {
    v225 = v218;
  }

  v264[0] = (v94 + v225 - 1) / v225;
  v264[1] = v261;
  v264[2] = 1;
  v262 = v225;
  v263 = vdupq_n_s64(1uLL);
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v108, v219, v264, &v262, v220, v221, v222, v223);
  objc_msgSend_endEncoding(v108, v226, v227, v228, v229, v230, v231, v232);

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    Count = objc_msgSend_readCount(inputGradientMatrix, v233, v234, v235, v236, v237, v238, v239);
    objc_msgSend_setReadCount_(inputGradientMatrix, v241, Count - 1, v242, v243, v244, v245, v246);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v254 = objc_msgSend_readCount(inputValuesMatrix, v247, v248, v249, v250, v251, v252, v253);
    objc_msgSend_setReadCount_(inputValuesMatrix, v255, v254 - 1, v256, v257, v258, v259, v260);
  }
}

- (void)encodeToCommandBuffer:(id)commandBuffer convolutionGradientState:(MPSCNNConvolutionGradientState *)convolutionGradientState convolutionSourceState:(MPSCNNConvolutionWeightsAndBiasesState *)convolutionSourceState inputMomentumVectors:(NSArray *)inputMomentumVectors resultState:(MPSCNNConvolutionWeightsAndBiasesState *)resultState
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

  if (inputMomentumVectors)
  {
    objc_msgSend_count(inputMomentumVectors, v11, v12, v13, v14, v15, v16, v17);
    if (!objc_msgSend_count(inputMomentumVectors, v18, v19, v20, v21, v22, v23, v24))
    {
      if (MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }
    }
  }

  objc_msgSend_numberOfWeights(resultState, v11, v12, v13, v14, v15, v16, v17, self, commandBuffer);
  objc_msgSend_numberOfWeights(convolutionSourceState, v25, v26, v27, v28, v29, v30, v31);
  v39 = objc_msgSend_numberOfWeights(resultState, v32, v33, v34, v35, v36, v37, v38);
  if (v39 != objc_msgSend_numberOfWeights(convolutionSourceState, v40, v41, v42, v43, v44, v45, v46) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v54 = MEMORY[0x277CD72D0];
  v55 = objc_msgSend_numberOfWeights(resultState, v47, v48, v49, v50, v51, v52, v53);
  v61 = objc_msgSend_vectorDescriptorWithLength_dataType_(v54, v56, v55, 268435488, v57, v58, v59, v60);
  v62 = objc_alloc(MEMORY[0x277CD72C8]);
  v70 = objc_msgSend_gradientForWeights(convolutionGradientState, v63, v64, v65, v66, v67, v68, v69);
  v76 = objc_msgSend_initWithBuffer_descriptor_(v62, v71, v70, v61, v72, v73, v74, v75);
  v77 = objc_alloc(MEMORY[0x277CD72C8]);
  v85 = objc_msgSend_weights(convolutionSourceState, v78, v79, v80, v81, v82, v83, v84);
  v91 = objc_msgSend_initWithBuffer_descriptor_(v77, v86, v85, v61, v87, v88, v89, v90);
  v92 = objc_alloc(MEMORY[0x277CD72C8]);
  v100 = objc_msgSend_weights(resultState, v93, v94, v95, v96, v97, v98, v99);
  v112 = objc_msgSend_initWithBuffer_descriptor_(v92, v101, v100, v61, v102, v103, v104, v105);
  if (inputMomentumVectors)
  {
    v113 = objc_msgSend_objectAtIndexedSubscript_(inputMomentumVectors, v106, 0, v107, v108, v109, v110, v111);
    objc_msgSend_encodeToCommandBuffer_inputGradientVector_inputValuesVector_inputMomentumVector_resultValuesVector_(v227, v114, v229, v76, v91, v113, v112, v115);
  }

  else
  {
    objc_msgSend_encodeToCommandBuffer_inputGradientVector_inputValuesVector_inputMomentumVector_resultValuesVector_(v227, v106, v229, v76, v91, 0, v112, v111);
  }

  if (objc_msgSend_gradientForBiases(convolutionGradientState, v116, v117, v118, v119, v120, v121, v122))
  {
    objc_msgSend_numberOfBiases(resultState, v123, v124, v125, v126, v127, v128, v129);
    objc_msgSend_numberOfBiases(convolutionSourceState, v130, v131, v132, v133, v134, v135, v136);
    v144 = objc_msgSend_numberOfBiases(resultState, v137, v138, v139, v140, v141, v142, v143);
    if (v144 != objc_msgSend_numberOfBiases(convolutionSourceState, v145, v146, v147, v148, v149, v150, v151) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v159 = MEMORY[0x277CD72D0];
    v160 = objc_msgSend_numberOfBiases(resultState, v152, v153, v154, v155, v156, v157, v158);
    v166 = objc_msgSend_vectorDescriptorWithLength_dataType_(v159, v161, v160, 268435488, v162, v163, v164, v165);
    v167 = objc_alloc(MEMORY[0x277CD72C8]);
    v175 = objc_msgSend_gradientForBiases(convolutionGradientState, v168, v169, v170, v171, v172, v173, v174);
    v181 = objc_msgSend_initWithBuffer_descriptor_(v167, v176, v175, v166, v177, v178, v179, v180);
    v182 = objc_alloc(MEMORY[0x277CD72C8]);
    v190 = objc_msgSend_biases(convolutionSourceState, v183, v184, v185, v186, v187, v188, v189);
    v196 = objc_msgSend_initWithBuffer_descriptor_(v182, v191, v190, v166, v192, v193, v194, v195);
    v197 = objc_alloc(MEMORY[0x277CD72C8]);
    v205 = objc_msgSend_biases(resultState, v198, v199, v200, v201, v202, v203, v204);
    v218 = objc_msgSend_initWithBuffer_descriptor_(v197, v206, v205, v166, v207, v208, v209, v210);
    if (inputMomentumVectors && objc_msgSend_count(inputMomentumVectors, v211, v212, v213, v214, v215, v216, v217) == 2)
    {
      v223 = objc_msgSend_objectAtIndexedSubscript_(inputMomentumVectors, v211, 1, v219, v220, v221, v222, v217);
      objc_msgSend_encodeToCommandBuffer_inputGradientVector_inputValuesVector_inputMomentumVector_resultValuesVector_(v227, v224, v229, v181, v196, v223, v218, v225);
    }

    else
    {
      objc_msgSend_encodeToCommandBuffer_inputGradientVector_inputValuesVector_inputMomentumVector_resultValuesVector_(v227, v211, v229, v181, v196, 0, v218, v217);
    }
  }

  MPSDecrementReadCount(&convolutionSourceState->super);

  MPSDecrementReadCount(&convolutionGradientState->super.super);
}

- (void)encodeToCommandBuffer:(id)commandBuffer batchNormalizationGradientState:(MPSCNNBatchNormalizationState *)batchNormalizationGradientState batchNormalizationSourceState:(MPSCNNBatchNormalizationState *)batchNormalizationSourceState inputMomentumVectors:(NSArray *)inputMomentumVectors resultState:(MPSCNNNormalizationGammaAndBetaState *)resultState
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

  if (inputMomentumVectors)
  {
    objc_msgSend_count(inputMomentumVectors, v12, v13, v14, v15, v16, v17, v18);
    if (!objc_msgSend_count(inputMomentumVectors, v19, v20, v21, v22, v23, v24, v25))
    {
      if (MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }
    }
  }

  v26 = objc_msgSend_batchNormalization(batchNormalizationGradientState, v12, v13, v14, v15, v16, v17, v18);
  objc_msgSend_gradientForGamma(batchNormalizationGradientState, v27, v28, v29, v30, v31, v32, v33);
  if (!objc_msgSend_gradientForGamma(batchNormalizationGradientState, v34, v35, v36, v37, v38, v39, v40) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v48 = MEMORY[0x277CD72D0];
  v49 = objc_msgSend_numberOfFeatureChannels(v26, v41, v42, v43, v44, v45, v46, v47);
  v55 = objc_msgSend_vectorDescriptorWithLength_dataType_(v48, v50, v49, 268435488, v51, v52, v53, v54);
  v56 = objc_alloc(MEMORY[0x277CD72C8]);
  v64 = objc_msgSend_gradientForGamma(batchNormalizationGradientState, v57, v58, v59, v60, v61, v62, v63);
  v70 = objc_msgSend_initWithBuffer_descriptor_(v56, v65, v64, v55, v66, v67, v68, v69);
  v71 = objc_alloc(MEMORY[0x277CD72C8]);
  v79 = objc_msgSend_gamma(batchNormalizationSourceState, v72, v73, v74, v75, v76, v77, v78);
  v85 = objc_msgSend_initWithBuffer_descriptor_(v71, v80, v79, v55, v81, v82, v83, v84);
  v86 = objc_alloc(MEMORY[0x277CD72C8]);
  v94 = objc_msgSend_gamma(resultState, v87, v88, v89, v90, v91, v92, v93);
  v106 = objc_msgSend_initWithBuffer_descriptor_(v86, v95, v94, v55, v96, v97, v98, v99);
  if (inputMomentumVectors)
  {
    v107 = objc_msgSend_objectAtIndexedSubscript_(inputMomentumVectors, v100, 0, v101, v102, v103, v104, v105);
    objc_msgSend_encodeToCommandBuffer_inputGradientVector_inputValuesVector_inputMomentumVector_resultValuesVector_(self, v108, commandBuffer, v70, v85, v107, v106, v109);
  }

  else
  {
    objc_msgSend_encodeToCommandBuffer_inputGradientVector_inputValuesVector_inputMomentumVector_resultValuesVector_(self, v100, commandBuffer, v70, v85, 0, v106, v105);
  }

  if (objc_msgSend_gradientForBeta(batchNormalizationGradientState, v110, v111, v112, v113, v114, v115, v116))
  {
    v117 = objc_alloc(MEMORY[0x277CD72C8]);
    v125 = objc_msgSend_gradientForBeta(batchNormalizationGradientState, v118, v119, v120, v121, v122, v123, v124);
    v131 = objc_msgSend_initWithBuffer_descriptor_(v117, v126, v125, v55, v127, v128, v129, v130);
    v132 = objc_alloc(MEMORY[0x277CD72C8]);
    v140 = objc_msgSend_beta(batchNormalizationSourceState, v133, v134, v135, v136, v137, v138, v139);
    v146 = objc_msgSend_initWithBuffer_descriptor_(v132, v141, v140, v55, v142, v143, v144, v145);
    v147 = objc_alloc(MEMORY[0x277CD72C8]);
    v155 = objc_msgSend_beta(resultState, v148, v149, v150, v151, v152, v153, v154);
    v168 = objc_msgSend_initWithBuffer_descriptor_(v147, v156, v155, v55, v157, v158, v159, v160);
    if (inputMomentumVectors && objc_msgSend_count(inputMomentumVectors, v161, v162, v163, v164, v165, v166, v167) == 2)
    {
      v173 = objc_msgSend_objectAtIndexedSubscript_(inputMomentumVectors, v161, 1, v169, v170, v171, v172, v167);
      objc_msgSend_encodeToCommandBuffer_inputGradientVector_inputValuesVector_inputMomentumVector_resultValuesVector_(self, v174, commandBuffer, v131, v146, v173, v168, v175);
    }

    else
    {
      objc_msgSend_encodeToCommandBuffer_inputGradientVector_inputValuesVector_inputMomentumVector_resultValuesVector_(self, v161, commandBuffer, v131, v146, 0, v168, v167);
    }
  }

  MPSDecrementReadCount(&batchNormalizationGradientState->super.super);

  MPSDecrementReadCount(&batchNormalizationSourceState->super.super);
}

- (void)encodeToCommandBuffer:(id)commandBuffer batchNormalizationState:(MPSCNNBatchNormalizationState *)batchNormalizationState inputMomentumVectors:(NSArray *)inputMomentumVectors resultState:(MPSCNNNormalizationGammaAndBetaState *)resultState
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

  if (inputMomentumVectors)
  {
    objc_msgSend_count(inputMomentumVectors, v11, v12, v13, v14, v15, v16, v17);
    if (!objc_msgSend_count(inputMomentumVectors, v18, v19, v20, v21, v22, v23, v24))
    {
      if (MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }
    }
  }

  v25 = objc_msgSend_batchNormalization(batchNormalizationState, v11, v12, v13, v14, v15, v16, v17);
  objc_msgSend_gradientForGamma(batchNormalizationState, v26, v27, v28, v29, v30, v31, v32);
  if (!objc_msgSend_gradientForGamma(batchNormalizationState, v33, v34, v35, v36, v37, v38, v39) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v47 = MEMORY[0x277CD72D0];
  v48 = objc_msgSend_numberOfFeatureChannels(v25, v40, v41, v42, v43, v44, v45, v46);
  v54 = objc_msgSend_vectorDescriptorWithLength_dataType_(v47, v49, v48, 268435488, v50, v51, v52, v53);
  v55 = objc_alloc(MEMORY[0x277CD72C8]);
  v63 = objc_msgSend_gradientForGamma(batchNormalizationState, v56, v57, v58, v59, v60, v61, v62);
  v69 = objc_msgSend_initWithBuffer_descriptor_(v55, v64, v63, v54, v65, v66, v67, v68);
  v70 = objc_alloc(MEMORY[0x277CD72C8]);
  v78 = objc_msgSend_gamma(batchNormalizationState, v71, v72, v73, v74, v75, v76, v77);
  v84 = objc_msgSend_initWithBuffer_descriptor_(v70, v79, v78, v54, v80, v81, v82, v83);
  v85 = objc_alloc(MEMORY[0x277CD72C8]);
  v93 = objc_msgSend_gamma(resultState, v86, v87, v88, v89, v90, v91, v92);
  v105 = objc_msgSend_initWithBuffer_descriptor_(v85, v94, v93, v54, v95, v96, v97, v98);
  if (inputMomentumVectors)
  {
    v106 = objc_msgSend_objectAtIndexedSubscript_(inputMomentumVectors, v99, 0, v100, v101, v102, v103, v104);
    objc_msgSend_encodeToCommandBuffer_inputGradientVector_inputValuesVector_inputMomentumVector_resultValuesVector_(self, v107, commandBuffer, v69, v84, v106, v105, v108);
  }

  else
  {
    objc_msgSend_encodeToCommandBuffer_inputGradientVector_inputValuesVector_inputMomentumVector_resultValuesVector_(self, v99, commandBuffer, v69, v84, 0, v105, v104);
  }

  if (objc_msgSend_gradientForBeta(batchNormalizationState, v109, v110, v111, v112, v113, v114, v115))
  {
    v116 = objc_alloc(MEMORY[0x277CD72C8]);
    v124 = objc_msgSend_gradientForBeta(batchNormalizationState, v117, v118, v119, v120, v121, v122, v123);
    v130 = objc_msgSend_initWithBuffer_descriptor_(v116, v125, v124, v54, v126, v127, v128, v129);
    v131 = objc_alloc(MEMORY[0x277CD72C8]);
    v139 = objc_msgSend_beta(batchNormalizationState, v132, v133, v134, v135, v136, v137, v138);
    v145 = objc_msgSend_initWithBuffer_descriptor_(v131, v140, v139, v54, v141, v142, v143, v144);
    v146 = objc_alloc(MEMORY[0x277CD72C8]);
    v154 = objc_msgSend_beta(resultState, v147, v148, v149, v150, v151, v152, v153);
    v167 = objc_msgSend_initWithBuffer_descriptor_(v146, v155, v154, v54, v156, v157, v158, v159);
    if (inputMomentumVectors && objc_msgSend_count(inputMomentumVectors, v160, v161, v162, v163, v164, v165, v166) == 2)
    {
      v172 = objc_msgSend_objectAtIndexedSubscript_(inputMomentumVectors, v160, 1, v168, v169, v170, v171, v166);
      objc_msgSend_encodeToCommandBuffer_inputGradientVector_inputValuesVector_inputMomentumVector_resultValuesVector_(self, v173, commandBuffer, v130, v145, v172, v167, v174);
    }

    else
    {
      objc_msgSend_encodeToCommandBuffer_inputGradientVector_inputValuesVector_inputMomentumVector_resultValuesVector_(self, v160, commandBuffer, v130, v145, 0, v167, v166);
    }
  }

  MPSDecrementReadCount(&batchNormalizationState->super.super);
}

@end