@interface MPSNNOptimizerRMSProp
- (MPSNNOptimizerRMSProp)initWithCoder:(id)a3 device:(id)a4;
- (MPSNNOptimizerRMSProp)initWithDevice:(id)a3 decay:(double)a4 epsilon:(float)a5 momentumScale:(double)a6 centered:(BOOL)a7 optimizerDescriptor:(id)a8;
- (MPSNNOptimizerRMSProp)initWithDevice:(id)device learningRate:(float)learningRate;
- (id)copyWithZone:(_NSZone *)a3 device:(id)a4;
- (id)debugDescription;
- (void)encodeToCommandBuffer:(id)a3 inputGradientMatrix:(id)a4 inputValuesMatrix:(id)a5 inputSumOfSquaresMatrix:(id)a6 inputWeightedSumMatrix:(id)a7 inputMomentumMatrix:(id)a8 resultValuesMatrix:(id)a9;
- (void)encodeToCommandBuffer:(id)a3 inputGradientVector:(id)a4 inputValuesVector:(id)a5 inputSumOfSquaresVector:(id)a6 inputWeightedSumVector:(id)a7 inputMomentumVector:(id)a8 resultValuesVector:(id)a9;
- (void)encodeToCommandBuffer:(id)commandBuffer batchNormalizationGradientState:(MPSCNNBatchNormalizationState *)batchNormalizationGradientState batchNormalizationSourceState:(MPSCNNBatchNormalizationState *)batchNormalizationSourceState inputSumOfSquaresVectors:(NSArray *)inputSumOfSquaresVectors resultState:(MPSCNNNormalizationGammaAndBetaState *)resultState;
- (void)encodeToCommandBuffer:(id)commandBuffer batchNormalizationState:(MPSCNNBatchNormalizationState *)batchNormalizationState inputSumOfSquaresVectors:(NSArray *)inputSumOfSquaresVectors resultState:(MPSCNNNormalizationGammaAndBetaState *)resultState;
- (void)encodeToCommandBuffer:(id)commandBuffer convolutionGradientState:(MPSCNNConvolutionGradientState *)convolutionGradientState convolutionSourceState:(MPSCNNConvolutionWeightsAndBiasesState *)convolutionSourceState inputSumOfSquaresVectors:(NSArray *)inputSumOfSquaresVectors resultState:(MPSCNNConvolutionWeightsAndBiasesState *)resultState;
- (void)encodeToCommandBuffer:(id)commandBuffer inputGradientMatrix:(MPSMatrix *)inputGradientMatrix inputValuesMatrix:(MPSMatrix *)inputValuesMatrix inputSumOfSquaresMatrix:(MPSMatrix *)inputSumOfSquaresMatrix resultValuesMatrix:(MPSMatrix *)resultValuesMatrix;
- (void)encodeToCommandBuffer:(id)commandBuffer inputGradientVector:(MPSVector *)inputGradientVector inputValuesVector:(MPSVector *)inputValuesVector inputSumOfSquaresVector:(MPSVector *)inputSumOfSquaresVector resultValuesVector:(MPSVector *)resultValuesVector;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MPSNNOptimizerRMSProp

- (MPSNNOptimizerRMSProp)initWithDevice:(id)device learningRate:(float)learningRate
{
  v11 = objc_msgSend_optimizerDescriptorWithLearningRate_gradientRescale_regularizationType_regularizationScale_(MPSNNOptimizerDescriptor, a2, 0, v4, v5, v6, v7, v8);

  return MEMORY[0x2821F9670](self, sel_initWithDevice_decay_epsilon_momentumScale_centered_optimizerDescriptor_, device, 0, v11, v12, v13, v14);
}

- (MPSNNOptimizerRMSProp)initWithDevice:(id)a3 decay:(double)a4 epsilon:(float)a5 momentumScale:(double)a6 centered:(BOOL)a7 optimizerDescriptor:(id)a8
{
  v13.receiver = self;
  v13.super_class = MPSNNOptimizerRMSProp;
  result = [(MPSNNOptimizer *)&v13 initWithDevice:a3 optimizerDescriptor:a8];
  if (result)
  {
    result->_decay = a4;
    result->_epsilon = a5;
    result->_momentumScale = a6;
    result->_centered = a7;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3 device:(id)a4
{
  v6.receiver = self;
  v6.super_class = MPSNNOptimizerRMSProp;
  result = [(MPSNNOptimizer *)&v6 copyWithZone:a3 device:a4];
  if (result)
  {
    *(result + 16) = *&self->_decay;
    *(result + 36) = LODWORD(self->_epsilon);
    *(result + 17) = *&self->_momentumScale;
    *(result + 148) = self->_centered;
  }

  return result;
}

- (void)encodeWithCoder:(id)a3
{
  *(&self->super.super.super.isa + *MEMORY[0x277CD7358] + 1) = 1;
  v29.receiver = self;
  v29.super_class = MPSNNOptimizerRMSProp;
  [(MPSNNOptimizer *)&v29 encodeWithCoder:?];
  objc_msgSend_encodeDouble_forKey_(a3, v5, @"kMPSNNOptimizer.decay", v6, v7, v8, v9, v10, self->_decay);
  *&v11 = self->_epsilon;
  objc_msgSend_encodeFloat_forKey_(a3, v12, @"kMPSNNOptimizer.epsilon", v13, v14, v15, v16, v17, v11);
  objc_msgSend_encodeDouble_forKey_(a3, v18, @"kMPSNNOptimizer.momentumScale", v19, v20, v21, v22, v23, self->_momentumScale);
  objc_msgSend_encodeBool_forKey_(a3, v24, self->_centered, @"kMPSNNOptimizer.centered", v25, v26, v27, v28);
}

- (MPSNNOptimizerRMSProp)initWithCoder:(id)a3 device:(id)a4
{
  v37.receiver = self;
  v37.super_class = MPSNNOptimizerRMSProp;
  v5 = [(MPSNNOptimizer *)&v37 initWithCoder:a3 device:a4];
  v12 = v5;
  if (!v5)
  {
    return v12;
  }

  if (*(&v5->super.super.super.isa + *MEMORY[0x277CD7358] + 1) << 8 == 256)
  {
    objc_msgSend_decodeDoubleForKey_(a3, v6, @"kMPSNNOptimizer.decay", v7, v8, v9, v10, v11);
    v12->_decay = v13;
    objc_msgSend_decodeFloatForKey_(a3, v14, @"kMPSNNOptimizer.epsilon", v15, v16, v17, v18, v19);
    v12->_epsilon = v20;
    objc_msgSend_decodeFloatForKey_(a3, v21, @"kMPSNNOptimizer.momentumScale", v22, v23, v24, v25, v26);
    v12->_momentumScale = v27;
    objc_msgSend_decodeFloatForKey_(a3, v28, @"kMPSNNOptimizer.centered", v29, v30, v31, v32, v33);
    v12->_centered = v34 != 0.0;
    return v12;
  }

  if (MTLReportFailureTypeEnabled())
  {
    v36 = objc_opt_class();
    NSStringFromClass(v36);
    MTLReportFailure();
  }

  return 0;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v12.receiver = self;
  v12.super_class = MPSNNOptimizerRMSProp;
  v4 = [(MPSNNOptimizer *)&v12 debugDescription];
  return objc_msgSend_stringWithFormat_(v3, v5, @"%@\n            \tdecay:\t\t\t\t%f\n            \tepsilon:\t\t\t\t%f\n            \tmomentumScale:\t\t\t\t%f\n            \tcentered:\t\t\t\t%d\n", v6, v7, v8, v9, v10, v4, *&self->_decay, self->_epsilon, *&self->_momentumScale, self->_centered);
}

- (void)encodeToCommandBuffer:(id)commandBuffer inputGradientVector:(MPSVector *)inputGradientVector inputValuesVector:(MPSVector *)inputValuesVector inputSumOfSquaresVector:(MPSVector *)inputSumOfSquaresVector resultValuesVector:(MPSVector *)resultValuesVector
{
  v13 = objc_autoreleasePoolPush();
  v14 = sub_239C05678(inputGradientVector);
  v15 = sub_239C05678(inputValuesVector);
  v16 = sub_239C05678(inputSumOfSquaresVector);
  v17 = sub_239C05678(resultValuesVector);
  objc_msgSend_encodeToCommandBuffer_inputGradientMatrix_inputValuesMatrix_inputSumOfSquaresMatrix_inputWeightedSumMatrix_inputMomentumMatrix_resultValuesMatrix_(self, v18, commandBuffer, v14, v15, v16, 0, 0, v17);

  objc_autoreleasePoolPop(v13);
}

- (void)encodeToCommandBuffer:(id)commandBuffer inputGradientMatrix:(MPSMatrix *)inputGradientMatrix inputValuesMatrix:(MPSMatrix *)inputValuesMatrix inputSumOfSquaresMatrix:(MPSMatrix *)inputSumOfSquaresMatrix resultValuesMatrix:(MPSMatrix *)resultValuesMatrix
{
  v13 = objc_autoreleasePoolPush();
  objc_msgSend_encodeToCommandBuffer_inputGradientMatrix_inputValuesMatrix_inputSumOfSquaresMatrix_inputWeightedSumMatrix_inputMomentumMatrix_resultValuesMatrix_(self, v14, commandBuffer, inputGradientMatrix, inputValuesMatrix, inputSumOfSquaresMatrix, 0, 0, resultValuesMatrix);

  objc_autoreleasePoolPop(v13);
}

- (void)encodeToCommandBuffer:(id)a3 inputGradientVector:(id)a4 inputValuesVector:(id)a5 inputSumOfSquaresVector:(id)a6 inputWeightedSumVector:(id)a7 inputMomentumVector:(id)a8 resultValuesVector:(id)a9
{
  v16 = objc_autoreleasePoolPush();
  v17 = sub_239C05678(a4);
  v18 = sub_239C05678(a5);
  v19 = sub_239C05678(a6);
  v20 = sub_239C05678(a7);
  v21 = sub_239C05678(a8);
  v22 = sub_239C05678(a9);
  objc_msgSend_encodeToCommandBuffer_inputGradientMatrix_inputValuesMatrix_inputSumOfSquaresMatrix_inputWeightedSumMatrix_inputMomentumMatrix_resultValuesMatrix_(self, v23, a3, v17, v18, v19, v20, v21, v22);

  objc_autoreleasePoolPop(v16);
}

- (void)encodeToCommandBuffer:(id)a3 inputGradientMatrix:(id)a4 inputValuesMatrix:(id)a5 inputSumOfSquaresMatrix:(id)a6 inputWeightedSumMatrix:(id)a7 inputMomentumMatrix:(id)a8 resultValuesMatrix:(id)a9
{
  v399[4] = *MEMORY[0x277D85DE8];
  sub_239C05C9C(a4, a4, "inputGradientMatrix", a4, a5, a6, a7, a8);
  sub_239C05C9C(a4, a5, "inputValuesMatrix", v15, v16, v17, v18, v19);
  sub_239C05C9C(a4, a6, "inputSumOfSquaresMatrix", v20, v21, v22, v23, v24);
  if (self->_momentumScale != 0.0)
  {
    if (!a8 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    sub_239C05C9C(a4, a8, "inputMomentumMatrix", v25, v26, v27, v28, v29);
  }

  if (self->_centered)
  {
    if (!a7 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    sub_239C05C9C(a4, a7, "inputWeightedSumMatrix", v25, v26, v27, v28, v29);
  }

  sub_239C05C9C(a4, a9, "resultValuesMatrix", v25, v26, v27, v28, v29);
  v399[0] = a4;
  v399[1] = a5;
  v370 = a5;
  v399[2] = a9;
  v399[3] = a6;
  v35 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v30, v399, 4, v31, v32, v33, v34);
  if (objc_msgSend_count(v35, v36, v37, v38, v39, v40, v41, v42))
  {
    v49 = 1;
    do
    {
      v50 = objc_msgSend_objectAtIndexedSubscript_(v35, v43, v49 - 1, v44, v45, v46, v47, v48);
      v58 = (objc_msgSend_rowBytes(v50, v51, v52, v53, v54, v55, v56, v57) & 0xF) == 0;
      v66 = (v49++ < objc_msgSend_count(v35, v59, v60, v61, v62, v63, v64, v65)) & v58;
    }

    while ((v66 & 1) != 0);
    if (!a7)
    {
LABEL_11:
      if (!a8)
      {
        goto LABEL_26;
      }

      goto LABEL_20;
    }
  }

  else
  {
    v58 = 1;
    if (!a7)
    {
      goto LABEL_11;
    }
  }

  v398 = a7;
  v67 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v43, &v398, 1, v45, v46, v47, v48);
  if (objc_msgSend_count(v67, v68, v69, v70, v71, v72, v73, v74))
  {
    v76 = 1;
    do
    {
      v77 = objc_msgSend_objectAtIndexedSubscript_(v67, v43, v76 - 1, v75, v45, v46, v47, v48);
      v85 = (objc_msgSend_rowBytes(v77, v78, v79, v80, v81, v82, v83, v84) & 0xF) == 0;
    }

    while (v76++ < objc_msgSend_count(v67, v86, v87, v88, v89, v90, v91, v92) && v85);
    v58 &= v85;
    if (!a8)
    {
      goto LABEL_26;
    }
  }

  else if (!a8)
  {
    goto LABEL_26;
  }

LABEL_20:
  v397 = a8;
  v94 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v43, &v397, 1, v45, v46, v47, v48);
  if (objc_msgSend_count(v94, v95, v96, v97, v98, v99, v100, v101))
  {
    v108 = 1;
    do
    {
      v109 = objc_msgSend_objectAtIndexedSubscript_(v94, v102, v108 - 1, v103, v104, v105, v106, v107);
      v117 = (objc_msgSend_rowBytes(v109, v110, v111, v112, v113, v114, v115, v116) & 0xF) == 0;
    }

    while (v108++ < objc_msgSend_count(v94, v118, v119, v120, v121, v122, v123, v124) && v117);
  }

  else
  {
    v117 = 1;
  }

  v58 &= v117;
LABEL_26:
  v126 = objc_alloc(MEMORY[0x277CD7210]);
  v138 = objc_msgSend_initWithCommandBuffer_withDispatchType_(v126, v127, a3, 0, v128, v129, v130, v131);
  v395 = v138;
  v396 = self;
  if ((*(&self->super.super.super.isa + *MEMORY[0x277CD7378]) & 0x18) != 0)
  {
    v139 = *(&self->super.super.super.isa + *MEMORY[0x277CD7360]);
    if (v139 || (v140 = objc_opt_class(), v139 = NSStringFromClass(v140), objc_msgSend_setLabel_(self, v141, v139, v142, v143, v144, v145, v146), v139))
    {
      objc_msgSend_setLabel_(v138, v132, v139, v133, v134, v135, v136, v137);
    }
  }

  v147 = self->_centered | (2 * (self->_momentumScale != 0.0));
  v388 = -1;
  v389 = -1;
  v390 = v147;
  v391 = -1;
  v392 = 0u;
  v393 = 0u;
  v394 = xmmword_239D7DDD0;
  MPSLibrary::CreateUberShaderKey();
  PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
  objc_msgSend_setComputePipelineState_(v138, v149, PipelineStateForMPSKey, v150, v151, v152, v153, v154, 0, 0, 0);
  MPSLibrary::ReleaseComputeState();
  if (v58)
  {
    v169 = (objc_msgSend_columns(a4, v155, v156, v157, v158, v159, v160, v161) + 3) >> 2;
  }

  else
  {
    v169 = objc_msgSend_columns(a4, v155, v156, v157, v158, v159, v160, v161);
  }

  v369 = objc_msgSend_rows(a4, v162, v163, v164, v165, v166, v167, v168);
  decay = self->_decay;
  v171 = decay;
  epsilon = self->_epsilon;
  *&decay = 1.0 - decay;
  momentumScale = self->_momentumScale;
  *&v374[1] = v171;
  v374[2] = LODWORD(decay);
  v174 = momentumScale;
  centered = self->_centered;
  *&decay = self->super._learningRate;
  gradientClipMax = self->super._gradientClipMax;
  *&momentumScale = self->super._gradientClipMin;
  v374[0] = v169;
  *&v374[3] = epsilon;
  v374[4] = LODWORD(decay);
  *&v374[5] = v174;
  *&decay = self->super._gradientRescale;
  v376 = gradientClipMax;
  v377 = LODWORD(momentumScale);
  regularizationScale = self->super._regularizationScale;
  v378 = LODWORD(decay);
  v379 = regularizationScale;
  applyGradientClipping = self->super._applyGradientClipping;
  regularizationType = self->super._regularizationType;
  v380 = objc_msgSend_rowBytes(a4, v177, v178, v179, v180, v181, v182, v183);
  v382 = objc_msgSend_rowBytes(a9, v184, v185, v186, v187, v188, v189, v190);
  v381 = objc_msgSend_rowBytes(v370, v191, v192, v193, v194, v195, v196, v197);
  v385 = objc_msgSend_rowBytes(a6, v198, v199, v200, v201, v202, v203, v204);
  v386 = objc_msgSend_rowBytes(a7, v205, v206, v207, v208, v209, v210, v211);
  v387 = objc_msgSend_rowBytes(a8, v212, v213, v214, v215, v216, v217, v218);
  v226 = objc_msgSend_data(a4, v219, v220, v221, v222, v223, v224, v225);
  v227 = MEMORY[0x277CD73A8];
  objc_msgSend_setBuffer_offset_atIndex_(v138, v228, v226, *(a4 + *MEMORY[0x277CD73A8]), 0, v229, v230, v231);
  v239 = objc_msgSend_data(a6, v232, v233, v234, v235, v236, v237, v238);
  objc_msgSend_setBuffer_offset_atIndex_(v138, v240, v239, *(a6 + *v227), 1, v241, v242, v243);
  v251 = objc_msgSend_data(v370, v244, v245, v246, v247, v248, v249, v250);
  objc_msgSend_setBuffer_offset_atIndex_(v138, v252, v251, *&v370[*v227], 2, v253, v254, v255);
  if (a7)
  {
    v263 = objc_msgSend_data(a7, v256, v257, v258, v259, v260, v261, v262);
    objc_msgSend_setBuffer_offset_atIndex_(v138, v264, v263, *(a7 + *v227), 3, v265, v266, v267);
  }

  if (a8)
  {
    v268 = objc_msgSend_data(a8, v256, v257, v258, v259, v260, v261, v262);
    objc_msgSend_setBuffer_offset_atIndex_(v138, v269, v268, *(a8 + *v227), 4, v270, v271, v272);
  }

  v273 = objc_msgSend_data(a9, v256, v257, v258, v259, v260, v261, v262);
  objc_msgSend_setBuffer_offset_atIndex_(v138, v274, v273, *(a9 + *v227), 5, v275, v276, v277);
  objc_msgSend_setBytes_length_atIndex_(v138, v278, v374, 72, 6, v279, v280, v281);
  v289 = objc_msgSend_threadExecutionWidth(PipelineStateForMPSKey, v282, v283, v284, v285, v286, v287, v288);
  v297 = objc_msgSend_maxTotalThreadsPerThreadgroup(PipelineStateForMPSKey, v290, v291, v292, v293, v294, v295, v296);
  if (v289 <= 1)
  {
    v303 = 1;
  }

  else
  {
    v303 = v289;
  }

  v304 = 2 * v303;
  if (v304 >= v297)
  {
    v304 = v297;
  }

  v373[0] = (v169 + v304 - 1) / v304;
  v373[1] = v369;
  v373[2] = 1;
  v371 = v304;
  v372 = vdupq_n_s64(1uLL);
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v138, v298, v373, &v371, v299, v300, v301, v302);
  objc_msgSend_endEncoding(v138, v305, v306, v307, v308, v309, v310, v311);

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    Count = objc_msgSend_readCount(a4, v312, v313, v314, v315, v316, v317, v318);
    objc_msgSend_setReadCount_(a4, v320, Count - 1, v321, v322, v323, v324, v325);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v333 = objc_msgSend_readCount(v370, v326, v327, v328, v329, v330, v331, v332);
    objc_msgSend_setReadCount_(v370, v334, v333 - 1, v335, v336, v337, v338, v339);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v347 = objc_msgSend_readCount(a7, v340, v341, v342, v343, v344, v345, v346);
    objc_msgSend_setReadCount_(a7, v348, v347 - 1, v349, v350, v351, v352, v353);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v361 = objc_msgSend_readCount(a8, v354, v355, v356, v357, v358, v359, v360);
    objc_msgSend_setReadCount_(a8, v362, v361 - 1, v363, v364, v365, v366, v367);
  }
}

- (void)encodeToCommandBuffer:(id)commandBuffer convolutionGradientState:(MPSCNNConvolutionGradientState *)convolutionGradientState convolutionSourceState:(MPSCNNConvolutionWeightsAndBiasesState *)convolutionSourceState inputSumOfSquaresVectors:(NSArray *)inputSumOfSquaresVectors resultState:(MPSCNNConvolutionWeightsAndBiasesState *)resultState
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

  if (!inputSumOfSquaresVectors && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  objc_msgSend_count(inputSumOfSquaresVectors, v11, v12, v13, v14, v15, v16, v17, self, commandBuffer);
  if (!objc_msgSend_count(inputSumOfSquaresVectors, v18, v19, v20, v21, v22, v23, v24) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  objc_msgSend_numberOfWeights(resultState, v25, v26, v27, v28, v29, v30, v31);
  objc_msgSend_numberOfWeights(convolutionSourceState, v32, v33, v34, v35, v36, v37, v38);
  v46 = objc_msgSend_numberOfWeights(resultState, v39, v40, v41, v42, v43, v44, v45);
  if (v46 != objc_msgSend_numberOfWeights(convolutionSourceState, v47, v48, v49, v50, v51, v52, v53) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v61 = MEMORY[0x277CD72D0];
  v62 = objc_msgSend_numberOfWeights(resultState, v54, v55, v56, v57, v58, v59, v60);
  v68 = objc_msgSend_vectorDescriptorWithLength_dataType_(v61, v63, v62, 268435488, v64, v65, v66, v67);
  v69 = objc_alloc(MEMORY[0x277CD72C8]);
  v77 = objc_msgSend_gradientForWeights(convolutionGradientState, v70, v71, v72, v73, v74, v75, v76);
  v83 = objc_msgSend_initWithBuffer_descriptor_(v69, v78, v77, v68, v79, v80, v81, v82);
  v84 = objc_alloc(MEMORY[0x277CD72C8]);
  v92 = objc_msgSend_weights(convolutionSourceState, v85, v86, v87, v88, v89, v90, v91);
  v98 = objc_msgSend_initWithBuffer_descriptor_(v84, v93, v92, v68, v94, v95, v96, v97);
  v99 = objc_alloc(MEMORY[0x277CD72C8]);
  v107 = objc_msgSend_weights(resultState, v100, v101, v102, v103, v104, v105, v106);
  v113 = objc_msgSend_initWithBuffer_descriptor_(v99, v108, v107, v68, v109, v110, v111, v112);
  v120 = objc_msgSend_objectAtIndexedSubscript_(inputSumOfSquaresVectors, v114, 0, v115, v116, v117, v118, v119);
  objc_msgSend_encodeToCommandBuffer_inputGradientVector_inputValuesVector_inputSumOfSquaresVector_resultValuesVector_(v236, v121, v238, v83, v98, v120, v113, v122);
  if (objc_msgSend_gradientForBiases(convolutionGradientState, v123, v124, v125, v126, v127, v128, v129) && objc_msgSend_count(inputSumOfSquaresVectors, v130, v131, v132, v133, v134, v135, v136) == 2)
  {
    objc_msgSend_numberOfBiases(resultState, v137, v138, v139, v140, v141, v142, v143);
    objc_msgSend_numberOfBiases(convolutionSourceState, v144, v145, v146, v147, v148, v149, v150);
    v158 = objc_msgSend_numberOfBiases(resultState, v151, v152, v153, v154, v155, v156, v157);
    if (v158 != objc_msgSend_numberOfBiases(convolutionSourceState, v159, v160, v161, v162, v163, v164, v165) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v173 = MEMORY[0x277CD72D0];
    v174 = objc_msgSend_numberOfBiases(resultState, v166, v167, v168, v169, v170, v171, v172);
    v180 = objc_msgSend_vectorDescriptorWithLength_dataType_(v173, v175, v174, 268435488, v176, v177, v178, v179);
    v181 = objc_alloc(MEMORY[0x277CD72C8]);
    v189 = objc_msgSend_gradientForBiases(convolutionGradientState, v182, v183, v184, v185, v186, v187, v188);
    v195 = objc_msgSend_initWithBuffer_descriptor_(v181, v190, v189, v180, v191, v192, v193, v194);
    v196 = objc_alloc(MEMORY[0x277CD72C8]);
    v204 = objc_msgSend_biases(convolutionSourceState, v197, v198, v199, v200, v201, v202, v203);
    v210 = objc_msgSend_initWithBuffer_descriptor_(v196, v205, v204, v180, v206, v207, v208, v209);
    v211 = objc_alloc(MEMORY[0x277CD72C8]);
    v219 = objc_msgSend_biases(resultState, v212, v213, v214, v215, v216, v217, v218);
    v225 = objc_msgSend_initWithBuffer_descriptor_(v211, v220, v219, v180, v221, v222, v223, v224);
    v232 = objc_msgSend_objectAtIndexedSubscript_(inputSumOfSquaresVectors, v226, 1, v227, v228, v229, v230, v231);
    objc_msgSend_encodeToCommandBuffer_inputGradientVector_inputValuesVector_inputSumOfSquaresVector_resultValuesVector_(v236, v233, v238, v195, v210, v232, v225, v234);
  }

  MPSDecrementReadCount(&convolutionSourceState->super);

  MPSDecrementReadCount(&convolutionGradientState->super.super);
}

- (void)encodeToCommandBuffer:(id)commandBuffer batchNormalizationGradientState:(MPSCNNBatchNormalizationState *)batchNormalizationGradientState batchNormalizationSourceState:(MPSCNNBatchNormalizationState *)batchNormalizationSourceState inputSumOfSquaresVectors:(NSArray *)inputSumOfSquaresVectors resultState:(MPSCNNNormalizationGammaAndBetaState *)resultState
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

  if (!inputSumOfSquaresVectors && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  objc_msgSend_count(inputSumOfSquaresVectors, v12, v13, v14, v15, v16, v17, v18);
  if (!objc_msgSend_count(inputSumOfSquaresVectors, v19, v20, v21, v22, v23, v24, v25) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v33 = objc_msgSend_batchNormalization(batchNormalizationGradientState, v26, v27, v28, v29, v30, v31, v32);
  objc_msgSend_gradientForGamma(batchNormalizationGradientState, v34, v35, v36, v37, v38, v39, v40);
  if (!objc_msgSend_gradientForGamma(batchNormalizationGradientState, v41, v42, v43, v44, v45, v46, v47) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v55 = MEMORY[0x277CD72D0];
  v56 = objc_msgSend_numberOfFeatureChannels(v33, v48, v49, v50, v51, v52, v53, v54);
  v62 = objc_msgSend_vectorDescriptorWithLength_dataType_(v55, v57, v56, 268435488, v58, v59, v60, v61);
  v63 = objc_alloc(MEMORY[0x277CD72C8]);
  v71 = objc_msgSend_gradientForGamma(batchNormalizationGradientState, v64, v65, v66, v67, v68, v69, v70);
  v77 = objc_msgSend_initWithBuffer_descriptor_(v63, v72, v71, v62, v73, v74, v75, v76);
  v78 = objc_alloc(MEMORY[0x277CD72C8]);
  v86 = objc_msgSend_gamma(batchNormalizationSourceState, v79, v80, v81, v82, v83, v84, v85);
  v92 = objc_msgSend_initWithBuffer_descriptor_(v78, v87, v86, v62, v88, v89, v90, v91);
  v93 = objc_alloc(MEMORY[0x277CD72C8]);
  v101 = objc_msgSend_gamma(resultState, v94, v95, v96, v97, v98, v99, v100);
  v107 = objc_msgSend_initWithBuffer_descriptor_(v93, v102, v101, v62, v103, v104, v105, v106);
  v114 = objc_msgSend_objectAtIndexedSubscript_(inputSumOfSquaresVectors, v108, 0, v109, v110, v111, v112, v113);
  objc_msgSend_encodeToCommandBuffer_inputGradientVector_inputValuesVector_inputSumOfSquaresVector_resultValuesVector_(self, v115, commandBuffer, v77, v92, v114, v107, v116);
  if (objc_msgSend_gradientForBeta(batchNormalizationGradientState, v117, v118, v119, v120, v121, v122, v123) && objc_msgSend_count(inputSumOfSquaresVectors, v124, v125, v126, v127, v128, v129, v130) == 2)
  {
    v131 = objc_alloc(MEMORY[0x277CD72C8]);
    v139 = objc_msgSend_gradientForBeta(batchNormalizationGradientState, v132, v133, v134, v135, v136, v137, v138);
    v145 = objc_msgSend_initWithBuffer_descriptor_(v131, v140, v139, v62, v141, v142, v143, v144);
    v146 = objc_alloc(MEMORY[0x277CD72C8]);
    v154 = objc_msgSend_beta(batchNormalizationSourceState, v147, v148, v149, v150, v151, v152, v153);
    v160 = objc_msgSend_initWithBuffer_descriptor_(v146, v155, v154, v62, v156, v157, v158, v159);
    v161 = objc_alloc(MEMORY[0x277CD72C8]);
    v169 = objc_msgSend_beta(resultState, v162, v163, v164, v165, v166, v167, v168);
    v175 = objc_msgSend_initWithBuffer_descriptor_(v161, v170, v169, v62, v171, v172, v173, v174);
    v182 = objc_msgSend_objectAtIndexedSubscript_(inputSumOfSquaresVectors, v176, 1, v177, v178, v179, v180, v181);
    objc_msgSend_encodeToCommandBuffer_inputGradientVector_inputValuesVector_inputSumOfSquaresVector_resultValuesVector_(self, v183, commandBuffer, v145, v160, v182, v175, v184);
  }

  MPSDecrementReadCount(&batchNormalizationGradientState->super.super);

  MPSDecrementReadCount(&batchNormalizationSourceState->super.super);
}

- (void)encodeToCommandBuffer:(id)commandBuffer batchNormalizationState:(MPSCNNBatchNormalizationState *)batchNormalizationState inputSumOfSquaresVectors:(NSArray *)inputSumOfSquaresVectors resultState:(MPSCNNNormalizationGammaAndBetaState *)resultState
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

  if (!inputSumOfSquaresVectors && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  objc_msgSend_count(inputSumOfSquaresVectors, v11, v12, v13, v14, v15, v16, v17);
  if (!objc_msgSend_count(inputSumOfSquaresVectors, v18, v19, v20, v21, v22, v23, v24) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v32 = objc_msgSend_batchNormalization(batchNormalizationState, v25, v26, v27, v28, v29, v30, v31);
  objc_msgSend_gradientForGamma(batchNormalizationState, v33, v34, v35, v36, v37, v38, v39);
  if (!objc_msgSend_gradientForGamma(batchNormalizationState, v40, v41, v42, v43, v44, v45, v46) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v54 = MEMORY[0x277CD72D0];
  v55 = objc_msgSend_numberOfFeatureChannels(v32, v47, v48, v49, v50, v51, v52, v53);
  v61 = objc_msgSend_vectorDescriptorWithLength_dataType_(v54, v56, v55, 268435488, v57, v58, v59, v60);
  v62 = objc_alloc(MEMORY[0x277CD72C8]);
  v70 = objc_msgSend_gradientForGamma(batchNormalizationState, v63, v64, v65, v66, v67, v68, v69);
  v76 = objc_msgSend_initWithBuffer_descriptor_(v62, v71, v70, v61, v72, v73, v74, v75);
  v77 = objc_alloc(MEMORY[0x277CD72C8]);
  v85 = objc_msgSend_gamma(batchNormalizationState, v78, v79, v80, v81, v82, v83, v84);
  v91 = objc_msgSend_initWithBuffer_descriptor_(v77, v86, v85, v61, v87, v88, v89, v90);
  v92 = objc_alloc(MEMORY[0x277CD72C8]);
  v100 = objc_msgSend_gamma(resultState, v93, v94, v95, v96, v97, v98, v99);
  v106 = objc_msgSend_initWithBuffer_descriptor_(v92, v101, v100, v61, v102, v103, v104, v105);
  v113 = objc_msgSend_objectAtIndexedSubscript_(inputSumOfSquaresVectors, v107, 0, v108, v109, v110, v111, v112);
  objc_msgSend_encodeToCommandBuffer_inputGradientVector_inputValuesVector_inputSumOfSquaresVector_resultValuesVector_(self, v114, commandBuffer, v76, v91, v113, v106, v115);
  if (objc_msgSend_gradientForBeta(batchNormalizationState, v116, v117, v118, v119, v120, v121, v122) && objc_msgSend_count(inputSumOfSquaresVectors, v123, v124, v125, v126, v127, v128, v129) == 2)
  {
    v130 = objc_alloc(MEMORY[0x277CD72C8]);
    v138 = objc_msgSend_gradientForBeta(batchNormalizationState, v131, v132, v133, v134, v135, v136, v137);
    v144 = objc_msgSend_initWithBuffer_descriptor_(v130, v139, v138, v61, v140, v141, v142, v143);
    v145 = objc_alloc(MEMORY[0x277CD72C8]);
    v153 = objc_msgSend_beta(batchNormalizationState, v146, v147, v148, v149, v150, v151, v152);
    v159 = objc_msgSend_initWithBuffer_descriptor_(v145, v154, v153, v61, v155, v156, v157, v158);
    v160 = objc_alloc(MEMORY[0x277CD72C8]);
    v168 = objc_msgSend_beta(resultState, v161, v162, v163, v164, v165, v166, v167);
    v174 = objc_msgSend_initWithBuffer_descriptor_(v160, v169, v168, v61, v170, v171, v172, v173);
    v181 = objc_msgSend_objectAtIndexedSubscript_(inputSumOfSquaresVectors, v175, 1, v176, v177, v178, v179, v180);
    objc_msgSend_encodeToCommandBuffer_inputGradientVector_inputValuesVector_inputSumOfSquaresVector_resultValuesVector_(self, v182, commandBuffer, v144, v159, v181, v174, v183);
  }

  MPSDecrementReadCount(&batchNormalizationState->super.super);
}

@end