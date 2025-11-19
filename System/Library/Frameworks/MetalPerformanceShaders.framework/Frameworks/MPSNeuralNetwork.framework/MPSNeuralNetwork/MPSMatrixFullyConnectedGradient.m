@interface MPSMatrixFullyConnectedGradient
- (MPSMatrixFullyConnectedGradient)copyWithZone:(NSZone *)zone device:(id)device;
- (MPSMatrixFullyConnectedGradient)initWithCoder:(NSCoder *)aDecoder device:(id)device;
- (MPSMatrixFullyConnectedGradient)initWithDevice:(id)device;
- (void)encodeGradientForDataToCommandBuffer:(id)commandBuffer gradientMatrix:(const MPSMatrix *)gradientMatrix weightMatrix:(const MPSMatrix *)weightMatrix resultGradientForDataMatrix:(MPSMatrix *)resultGradientForDataMatrix;
- (void)encodeGradientForWeightsAndBiasToCommandBuffer:(id)commandBuffer gradientMatrix:(const MPSMatrix *)gradientMatrix inputMatrix:(const MPSMatrix *)inputMatrix resultGradientForWeightMatrix:(MPSMatrix *)resultGradientForWeightMatrix resultGradientForBiasVector:(MPSVector *)resultGradientForBiasVector;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MPSMatrixFullyConnectedGradient

- (MPSMatrixFullyConnectedGradient)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSMatrixFullyConnectedGradient;
  result = [(MPSMatrixBinaryKernel *)&v4 initWithDevice:device];
  if (result)
  {
    result->_alpha = 1.0;
    result->_sourceNumberOfFeatureVectors = -1;
    result->_sourceInputFeatureChannels = -1;
    result->_sourceOutputFeatureChannels = -1;
  }

  return result;
}

- (void)encodeGradientForDataToCommandBuffer:(id)commandBuffer gradientMatrix:(const MPSMatrix *)gradientMatrix weightMatrix:(const MPSMatrix *)weightMatrix resultGradientForDataMatrix:(MPSMatrix *)resultGradientForDataMatrix
{
  v13 = *MEMORY[0x277CD7378];
  if ((*(&self->super.super.super.isa + v13) & 1) == 0)
  {
    if (!commandBuffer && MTLReportFailureTypeEnabled())
    {
      v252 = objc_opt_class();
      v259 = NSStringFromClass(v252);
      MTLReportFailure();
    }

    if (!gradientMatrix && MTLReportFailureTypeEnabled())
    {
      v253 = objc_opt_class();
      v259 = NSStringFromClass(v253);
      MTLReportFailure();
    }

    if (!weightMatrix && MTLReportFailureTypeEnabled())
    {
      v254 = objc_opt_class();
      v259 = NSStringFromClass(v254);
      MTLReportFailure();
    }

    if (!resultGradientForDataMatrix && MTLReportFailureTypeEnabled())
    {
      v255 = objc_opt_class();
      v259 = NSStringFromClass(v255);
      MTLReportFailure();
    }

    objc_msgSend_primarySourceMatrixOrigin(self, a2, commandBuffer, gradientMatrix, weightMatrix, resultGradientForDataMatrix, v6, v7, v259);
    objc_msgSend_primarySourceMatrixOrigin(self, v14, v15, v16, v17, v18, v19, v20);
    if (v265 && MTLReportFailureTypeEnabled())
    {
      v256 = objc_opt_class();
      v260 = NSStringFromClass(v256);
      MTLReportFailure();
    }

    objc_msgSend_secondarySourceMatrixOrigin(self, v21, v22, v23, v24, v25, v26, v27, v260);
    objc_msgSend_secondarySourceMatrixOrigin(self, v28, v29, v30, v31, v32, v33, v34);
    if (v265 && MTLReportFailureTypeEnabled())
    {
      v257 = objc_opt_class();
      v261 = NSStringFromClass(v257);
      MTLReportFailure();
    }

    objc_msgSend_resultMatrixOrigin(self, v35, v36, v37, v38, v39, v40, v41, v261);
    objc_msgSend_resultMatrixOrigin(self, v42, v43, v44, v45, v46, v47, v48);
    if (v265 && MTLReportFailureTypeEnabled())
    {
      v258 = objc_opt_class();
      v262 = NSStringFromClass(v258);
      MTLReportFailure();
    }

    if (objc_msgSend_dataType(gradientMatrix, v49, v50, v51, v52, v53, v54, v55, v262) == 268435488 && objc_msgSend_dataType(weightMatrix, v56, v57, v58, v59, v60, v61, v62) == 268435488)
    {
      objc_msgSend_dataType(resultGradientForDataMatrix, v56, v57, v58, v59, v60, v61, v62);
    }

    if ((objc_msgSend_dataType(gradientMatrix, v56, v57, v58, v59, v60, v61, v62) != 268435488 || objc_msgSend_dataType(weightMatrix, v63, v64, v65, v66, v67, v68, v69) != 268435488 || objc_msgSend_dataType(resultGradientForDataMatrix, v70, v71, v72, v73, v74, v75, v76) != 268435488) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (objc_msgSend_matrices(gradientMatrix, v77, v78, v79, v80, v81, v82, v83) == 1 && objc_msgSend_matrices(weightMatrix, v84, v85, v86, v87, v88, v89, v90) == 1)
    {
      objc_msgSend_matrices(resultGradientForDataMatrix, v84, v85, v86, v87, v88, v89, v90);
    }

    if ((objc_msgSend_matrices(gradientMatrix, v84, v85, v86, v87, v88, v89, v90) != 1 || objc_msgSend_matrices(weightMatrix, v91, v92, v93, v94, v95, v96, v97) != 1 || objc_msgSend_matrices(resultGradientForDataMatrix, v98, v99, v100, v101, v102, v103, v104) != 1) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    objc_msgSend_columns(weightMatrix, v105, v106, v107, v108, v109, v110, v111);
    objc_msgSend_secondarySourceMatrixOrigin(self, v112, v113, v114, v115, v116, v117, v118);
    v126 = objc_msgSend_columns(weightMatrix, v119, v120, v121, v122, v123, v124, v125);
    objc_msgSend_secondarySourceMatrixOrigin(self, v127, v128, v129, v130, v131, v132, v133);
    if (v126 <= v264 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    objc_msgSend_rows(weightMatrix, v134, v135, v136, v137, v138, v139, v140);
    objc_msgSend_secondarySourceMatrixOrigin(self, v141, v142, v143, v144, v145, v146, v147);
    v155 = objc_msgSend_rows(weightMatrix, v148, v149, v150, v151, v152, v153, v154);
    objc_msgSend_secondarySourceMatrixOrigin(self, v156, v157, v158, v159, v160, v161, v162);
    if (v155 <= v263 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    objc_msgSend_columns(gradientMatrix, v163, v164, v165, v166, v167, v168, v169);
    objc_msgSend_primarySourceMatrixOrigin(self, v170, v171, v172, v173, v174, v175, v176);
    v184 = objc_msgSend_columns(gradientMatrix, v177, v178, v179, v180, v181, v182, v183);
    objc_msgSend_primarySourceMatrixOrigin(self, v185, v186, v187, v188, v189, v190, v191);
    if (v184 <= v264 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    objc_msgSend_rows(gradientMatrix, v192, v193, v194, v195, v196, v197, v198);
    objc_msgSend_primarySourceMatrixOrigin(self, v199, v200, v201, v202, v203, v204, v205);
    v213 = objc_msgSend_rows(gradientMatrix, v206, v207, v208, v209, v210, v211, v212);
    objc_msgSend_primarySourceMatrixOrigin(self, v214, v215, v216, v217, v218, v219, v220);
    if (v213 <= v263 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }
  }

  v221 = objc_alloc(MEMORY[0x277CD7210]);
  v233 = objc_msgSend_initWithCommandBuffer_withDispatchType_(v221, v222, commandBuffer, 0, v223, v224, v225, v226);
  if ((*(&self->super.super.super.isa + v13) & 0x18) != 0)
  {
    v234 = *(&self->super.super.super.isa + *MEMORY[0x277CD7360]);
    if (v234 || (v235 = objc_opt_class(), v236 = NSStringFromClass(v235), objc_msgSend_setLabel_(self, v237, v236, v238, v239, v240, v241, v242), (v234 = v236) != 0))
    {
      objc_msgSend_setLabel_(v233, v227, v234, v228, v229, v230, v231, v232);
    }
  }

  sub_239BAC7E4(self, v233, gradientMatrix, weightMatrix, resultGradientForDataMatrix, 0, 0, v232);
  v250 = MEMORY[0x277CD7388];
  v251 = *MEMORY[0x277CD7388];
  if (*(&gradientMatrix[3].super.isa + v251))
  {
    MPSDecrementReadCount(gradientMatrix);
    v251 = *v250;
  }

  if (*(&weightMatrix[3].super.isa + v251))
  {
    MPSDecrementReadCount(weightMatrix);
  }

  objc_msgSend_endEncoding(v233, v243, v244, v245, v246, v247, v248, v249);
}

- (void)encodeGradientForWeightsAndBiasToCommandBuffer:(id)commandBuffer gradientMatrix:(const MPSMatrix *)gradientMatrix inputMatrix:(const MPSMatrix *)inputMatrix resultGradientForWeightMatrix:(MPSMatrix *)resultGradientForWeightMatrix resultGradientForBiasVector:(MPSVector *)resultGradientForBiasVector
{
  v14 = *MEMORY[0x277CD7378];
  if ((*(&self->super.super.super.isa + v14) & 1) == 0)
  {
    if (!commandBuffer && MTLReportFailureTypeEnabled())
    {
      v267 = objc_opt_class();
      v275 = NSStringFromClass(v267);
      MTLReportFailure();
    }

    if (!gradientMatrix && MTLReportFailureTypeEnabled())
    {
      v268 = objc_opt_class();
      v275 = NSStringFromClass(v268);
      MTLReportFailure();
    }

    if (!inputMatrix && MTLReportFailureTypeEnabled())
    {
      v269 = objc_opt_class();
      v275 = NSStringFromClass(v269);
      MTLReportFailure();
    }

    if (!resultGradientForWeightMatrix && MTLReportFailureTypeEnabled())
    {
      v270 = objc_opt_class();
      v275 = NSStringFromClass(v270);
      MTLReportFailure();
    }

    if (!resultGradientForBiasVector && MTLReportFailureTypeEnabled())
    {
      v271 = objc_opt_class();
      v275 = NSStringFromClass(v271);
      MTLReportFailure();
    }

    objc_msgSend_primarySourceMatrixOrigin(self, a2, commandBuffer, gradientMatrix, inputMatrix, resultGradientForWeightMatrix, resultGradientForBiasVector, v7, v275);
    objc_msgSend_primarySourceMatrixOrigin(self, v15, v16, v17, v18, v19, v20, v21);
    if (v281 && MTLReportFailureTypeEnabled())
    {
      v272 = objc_opt_class();
      v276 = NSStringFromClass(v272);
      MTLReportFailure();
    }

    objc_msgSend_secondarySourceMatrixOrigin(self, v22, v23, v24, v25, v26, v27, v28, v276);
    objc_msgSend_secondarySourceMatrixOrigin(self, v29, v30, v31, v32, v33, v34, v35);
    if (v281 && MTLReportFailureTypeEnabled())
    {
      v273 = objc_opt_class();
      v277 = NSStringFromClass(v273);
      MTLReportFailure();
    }

    objc_msgSend_resultMatrixOrigin(self, v36, v37, v38, v39, v40, v41, v42, v277);
    objc_msgSend_resultMatrixOrigin(self, v43, v44, v45, v46, v47, v48, v49);
    if (v281 && MTLReportFailureTypeEnabled())
    {
      v274 = objc_opt_class();
      v278 = NSStringFromClass(v274);
      MTLReportFailure();
    }

    if (objc_msgSend_dataType(gradientMatrix, v50, v51, v52, v53, v54, v55, v56, v278) == 268435488 && objc_msgSend_dataType(inputMatrix, v57, v58, v59, v60, v61, v62, v63) == 268435488 && objc_msgSend_dataType(resultGradientForWeightMatrix, v57, v58, v59, v60, v61, v62, v63) == 268435488)
    {
      objc_msgSend_dataType(resultGradientForBiasVector, v57, v58, v59, v60, v61, v62, v63);
    }

    if ((objc_msgSend_dataType(gradientMatrix, v57, v58, v59, v60, v61, v62, v63) != 268435488 || objc_msgSend_dataType(inputMatrix, v64, v65, v66, v67, v68, v69, v70) != 268435488 || objc_msgSend_dataType(resultGradientForWeightMatrix, v71, v72, v73, v74, v75, v76, v77) != 268435488 || objc_msgSend_dataType(resultGradientForBiasVector, v78, v79, v80, v81, v82, v83, v84) != 268435488) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (objc_msgSend_matrices(gradientMatrix, v85, v86, v87, v88, v89, v90, v91) == 1 && objc_msgSend_matrices(inputMatrix, v92, v93, v94, v95, v96, v97, v98) == 1 && objc_msgSend_matrices(resultGradientForWeightMatrix, v92, v93, v94, v95, v96, v97, v98) == 1)
    {
      objc_msgSend_vectors(resultGradientForBiasVector, v92, v93, v94, v95, v96, v97, v98);
    }

    if ((objc_msgSend_matrices(gradientMatrix, v92, v93, v94, v95, v96, v97, v98) != 1 || objc_msgSend_matrices(inputMatrix, v99, v100, v101, v102, v103, v104, v105) != 1 || objc_msgSend_matrices(resultGradientForWeightMatrix, v106, v107, v108, v109, v110, v111, v112) != 1 || objc_msgSend_vectors(resultGradientForBiasVector, v113, v114, v115, v116, v117, v118, v119) != 1) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    objc_msgSend_columns(inputMatrix, v120, v121, v122, v123, v124, v125, v126);
    objc_msgSend_secondarySourceMatrixOrigin(self, v127, v128, v129, v130, v131, v132, v133);
    v141 = objc_msgSend_columns(inputMatrix, v134, v135, v136, v137, v138, v139, v140);
    objc_msgSend_secondarySourceMatrixOrigin(self, v142, v143, v144, v145, v146, v147, v148);
    if (v141 <= v280 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    objc_msgSend_rows(inputMatrix, v149, v150, v151, v152, v153, v154, v155);
    objc_msgSend_secondarySourceMatrixOrigin(self, v156, v157, v158, v159, v160, v161, v162);
    v170 = objc_msgSend_rows(inputMatrix, v163, v164, v165, v166, v167, v168, v169);
    objc_msgSend_secondarySourceMatrixOrigin(self, v171, v172, v173, v174, v175, v176, v177);
    if (v170 <= v279 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    objc_msgSend_columns(gradientMatrix, v178, v179, v180, v181, v182, v183, v184);
    objc_msgSend_primarySourceMatrixOrigin(self, v185, v186, v187, v188, v189, v190, v191);
    v199 = objc_msgSend_columns(gradientMatrix, v192, v193, v194, v195, v196, v197, v198);
    objc_msgSend_primarySourceMatrixOrigin(self, v200, v201, v202, v203, v204, v205, v206);
    if (v199 <= v280 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    objc_msgSend_rows(gradientMatrix, v207, v208, v209, v210, v211, v212, v213);
    objc_msgSend_primarySourceMatrixOrigin(self, v214, v215, v216, v217, v218, v219, v220);
    v228 = objc_msgSend_rows(gradientMatrix, v221, v222, v223, v224, v225, v226, v227);
    objc_msgSend_primarySourceMatrixOrigin(self, v229, v230, v231, v232, v233, v234, v235);
    if (v228 <= v279 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }
  }

  v236 = objc_alloc(MEMORY[0x277CD7210]);
  v248 = objc_msgSend_initWithCommandBuffer_withDispatchType_(v236, v237, commandBuffer, 0, v238, v239, v240, v241);
  if ((*(&self->super.super.super.isa + v14) & 0x18) != 0)
  {
    v249 = *(&self->super.super.super.isa + *MEMORY[0x277CD7360]);
    if (v249 || (v250 = objc_opt_class(), v251 = NSStringFromClass(v250), objc_msgSend_setLabel_(self, v252, v251, v253, v254, v255, v256, v257), (v249 = v251) != 0))
    {
      objc_msgSend_setLabel_(v248, v242, v249, v243, v244, v245, v246, v247);
    }
  }

  sub_239BAC7E4(self, v248, gradientMatrix, inputMatrix, resultGradientForWeightMatrix, resultGradientForBiasVector, 1, v247);
  v265 = MEMORY[0x277CD7388];
  v266 = *MEMORY[0x277CD7388];
  if (*(&gradientMatrix[3].super.isa + v266))
  {
    MPSDecrementReadCount(gradientMatrix);
    v266 = *v265;
  }

  if (*(&inputMatrix[3].super.isa + v266))
  {
    MPSDecrementReadCount(inputMatrix);
  }

  objc_msgSend_endEncoding(v248, v258, v259, v260, v261, v262, v263, v264);
}

- (MPSMatrixFullyConnectedGradient)copyWithZone:(NSZone *)zone device:(id)device
{
  v6.receiver = self;
  v6.super_class = MPSMatrixFullyConnectedGradient;
  result = [(MPSMatrixBinaryKernel *)&v6 copyWithZone:zone device:device];
  result->_sourceNumberOfFeatureVectors = self->_sourceNumberOfFeatureVectors;
  result->_sourceInputFeatureChannels = self->_sourceInputFeatureChannels;
  result->_sourceOutputFeatureChannels = self->_sourceOutputFeatureChannels;
  result->_alpha = self->_alpha;
  return result;
}

- (MPSMatrixFullyConnectedGradient)initWithCoder:(NSCoder *)aDecoder device:(id)device
{
  v34.receiver = self;
  v34.super_class = MPSMatrixFullyConnectedGradient;
  v5 = [(MPSMatrixBinaryKernel *)&v34 initWithCoder:aDecoder device:device];
  v12 = v5;
  if (!v5)
  {
    return v12;
  }

  if (*(&v5->super.super.super.isa + *MEMORY[0x277CD7358] + 2) << 16 == 0x10000)
  {
    objc_msgSend_decodeDoubleForKey_(aDecoder, v6, @"MPSMatrixFullyConnectedGradient._alpha;", v7, v8, v9, v10, v11);
    v12->_alpha = v13;
    v12->_sourceNumberOfFeatureVectors = objc_msgSend_decodeInt64ForKey_(aDecoder, v14, @"MPSMatrixFullyConnectedGradient._sourceNumberOfFeatureVectors;", v15, v16, v17, v18, v19);
    v12->_sourceInputFeatureChannels = objc_msgSend_decodeInt64ForKey_(aDecoder, v20, @"MPSMatrixFullyConnectedGradient._sourceInputFeatureChannels;", v21, v22, v23, v24, v25);
    v12->_sourceOutputFeatureChannels = objc_msgSend_decodeInt64ForKey_(aDecoder, v26, @"MPSMatrixFullyConnectedGradient._sourceOutputFeatureChannels;", v27, v28, v29, v30, v31);
    return v12;
  }

  if (MTLReportFailureTypeEnabled())
  {
    v33 = objc_opt_class();
    NSStringFromClass(v33);
    MTLReportFailure();
  }

  return 0;
}

- (void)encodeWithCoder:(id)a3
{
  *(&self->super.super.super.isa + *MEMORY[0x277CD7358] + 2) = 1;
  v26.receiver = self;
  v26.super_class = MPSMatrixFullyConnectedGradient;
  [(MPSMatrixBinaryKernel *)&v26 encodeWithCoder:?];
  objc_msgSend_encodeDouble_forKey_(a3, v5, @"MPSMatrixFullyConnectedGradient._alpha;", v6, v7, v8, v9, v10, self->_alpha);
  objc_msgSend_encodeInt64_forKey_(a3, v11, self->_sourceNumberOfFeatureVectors, @"MPSMatrixFullyConnectedGradient._sourceNumberOfFeatureVectors;", v12, v13, v14, v15);
  objc_msgSend_encodeInt64_forKey_(a3, v16, self->_sourceInputFeatureChannels, @"MPSMatrixFullyConnectedGradient._sourceInputFeatureChannels;", v17, v18, v19, v20);
  objc_msgSend_encodeInt64_forKey_(a3, v21, self->_sourceOutputFeatureChannels, @"MPSMatrixFullyConnectedGradient._sourceOutputFeatureChannels;", v22, v23, v24, v25);
}

@end