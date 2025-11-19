@interface MPSCNNConvolutionGradientState
+ (id)temporaryStateWithCommandBuffer:(id)a3 resourceList:(id)a4 convolution:(id)a5;
+ (id)temporaryStateWithCommandBuffer:(id)a3 resourceList:(id)a4 convolution:(id)a5 weightsLayout:(unsigned int)a6;
- (MPSCNNConvolutionGradientState)initWithDevice:(id)a3 resourceList:(id)a4 convolution:(id)a5;
- (MPSCNNConvolutionGradientState)initWithDevice:(id)a3 resourceList:(id)a4 convolution:(id)a5 weightsLayout:(unsigned int)a6;
- (MPSCNNConvolutionGradientState)initWithResource:(id)a3;
- (MPSCNNConvolutionGradientState)initWithResource:(id)a3 weightsLayout:(unsigned int)a4;
- (NSString)debugDescription;
- (id)destinationImageDescriptorForSourceImages:(id)a3 sourceStates:(id)a4 forKernel:(id)a5 suggestedDescriptor:(id)a6;
- (id)gradientForBiases;
- (id)gradientForWeights;
- (unint64_t)numberOfWeightGradients;
- (void)dealloc;
@end

@implementation MPSCNNConvolutionGradientState

- (unint64_t)numberOfWeightGradients
{
  v9 = objc_msgSend_channelMultiplier(self->_convolution, a2, v2, v3, v4, v5, v6, v7);
  v17 = objc_msgSend_outputFeatureChannels(self->_convolution, v10, v11, v12, v13, v14, v15, v16);
  v25 = objc_msgSend_kernelWidth(self->_convolution, v18, v19, v20, v21, v22, v23, v24) * v17;
  v40 = v25 * objc_msgSend_kernelHeight(self->_convolution, v26, v27, v28, v29, v30, v31, v32);
  if (v9 != 1)
  {
    v41 = objc_msgSend_inputFeatureChannels(self->_convolution, v33, v34, v35, v36, v37, v38, v39);
    v40 *= v41 / objc_msgSend_groups(self->_convolution, v42, v43, v44, v45, v46, v47, v48);
  }

  return v40;
}

- (id)gradientForWeights
{
  if (!*(&self->super.super.super.isa + *MEMORY[0x277CD7480]))
  {
    return 0;
  }

  v2 = *(&self->super.super.super.isa + *MEMORY[0x277CD7488]);
  v3 = (v2 + 8);
  result = atomic_load_explicit((v2 + 8), memory_order_acquire);
  if (!result)
  {
    MPSAutoBuffer::AllocateBuffer((v2 + 8), 0);
    return atomic_load_explicit(v3, memory_order_acquire);
  }

  return result;
}

- (id)gradientForBiases
{
  if (!*(&self->super.super.super.isa + *MEMORY[0x277CD7480]))
  {
    return 0;
  }

  v2 = *(&self->super.super.super.isa + *MEMORY[0x277CD7488]);
  v3 = (v2 + 80);
  result = atomic_load_explicit((v2 + 80), memory_order_acquire);
  if (!result)
  {
    MPSAutoBuffer::AllocateBuffer((v2 + 80), 0);
    return atomic_load_explicit(v3, memory_order_acquire);
  }

  return result;
}

- (MPSCNNConvolutionGradientState)initWithResource:(id)a3
{
  v4.receiver = self;
  v4.super_class = MPSCNNConvolutionGradientState;
  result = [(MPSState *)&v4 initWithResource:a3];
  if (result)
  {
    result->_convolution = 0;
    result->_weightsLayout = 0;
  }

  return result;
}

- (MPSCNNConvolutionGradientState)initWithDevice:(id)a3 resourceList:(id)a4 convolution:(id)a5
{
  self->_initialized = 0;
  v9.receiver = self;
  v9.super_class = MPSCNNConvolutionGradientState;
  result = [(MPSState *)&v9 initWithDevice:a3 resourceList:a4];
  if (result)
  {
    v7 = result;
    v8 = a5;
    result = v7;
    v7->_convolution = v8;
    v7->_weightsLayout = 0;
  }

  return result;
}

+ (id)temporaryStateWithCommandBuffer:(id)a3 resourceList:(id)a4 convolution:(id)a5
{
  result = objc_msgSend_temporaryStateWithCommandBuffer_resourceList_(a1, a2, a3, a4, a5, v5, v6, v7);
  if (result)
  {
    v10 = result;
    v11 = a5;
    result = v10;
    *(v10 + 37) = v11;
    *(v10 + 83) = 0;
  }

  return result;
}

- (MPSCNNConvolutionGradientState)initWithResource:(id)a3 weightsLayout:(unsigned int)a4
{
  v6.receiver = self;
  v6.super_class = MPSCNNConvolutionGradientState;
  result = [(MPSState *)&v6 initWithResource:a3];
  if (result)
  {
    result->_convolution = 0;
    result->_weightsLayout = a4;
  }

  return result;
}

- (MPSCNNConvolutionGradientState)initWithDevice:(id)a3 resourceList:(id)a4 convolution:(id)a5 weightsLayout:(unsigned int)a6
{
  self->_initialized = 0;
  v11.receiver = self;
  v11.super_class = MPSCNNConvolutionGradientState;
  result = [(MPSState *)&v11 initWithDevice:a3 resourceList:a4];
  if (result)
  {
    v9 = result;
    v10 = a5;
    result = v9;
    v9->_convolution = v10;
    v9->_weightsLayout = a6;
  }

  return result;
}

+ (id)temporaryStateWithCommandBuffer:(id)a3 resourceList:(id)a4 convolution:(id)a5 weightsLayout:(unsigned int)a6
{
  result = objc_msgSend_temporaryStateWithCommandBuffer_resourceList_(a1, a2, a3, a4, a5, *&a6, v6, v7);
  if (result)
  {
    v11 = result;
    v12 = a5;
    result = v11;
    *(v11 + 37) = v12;
    *(v11 + 83) = a6;
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MPSCNNConvolutionGradientState;
  [(MPSNNGradientState *)&v3 dealloc];
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v23.receiver = self;
  v23.super_class = MPSCNNConvolutionGradientState;
  v4 = [(MPSNNGradientState *)&v23 debugDescription];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  convolution = self->_convolution;
  v15 = objc_msgSend_label(convolution, v8, v9, v10, v11, v12, v13, v14);
  return objc_msgSend_stringWithFormat_(v3, v16, @"%@\n\tconvolution: %@ %p %@", v17, v18, v19, v20, v21, v4, v6, convolution, v15);
}

- (id)destinationImageDescriptorForSourceImages:(id)a3 sourceStates:(id)a4 forKernel:(id)a5 suggestedDescriptor:(id)a6
{
  v258.receiver = self;
  v258.super_class = MPSCNNConvolutionGradientState;
  v9 = [(MPSNNGradientState *)&v258 destinationImageDescriptorForSourceImages:a3 sourceStates:a4 forKernel:a5 suggestedDescriptor:a6];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ((*(a5 + *MEMORY[0x277CD7378]) & 1) == 0)
    {
      objc_msgSend_count(a3, v10, v11, v12, v13, v14, v15, v16);
      if (!objc_msgSend_count(a3, v17, v18, v19, v20, v21, v22, v23) && MTLReportFailureTypeEnabled())
      {
        v245 = objc_opt_class();
        v246 = NSStringFromClass(v245);
        MTLReportFailure();
      }

      kernelWidth = self->super._kernelWidth;
      if (kernelWidth == objc_msgSend_kernelWidth(a5, v24, v25, v26, v27, v28, v29, v30, v246))
      {
        objc_msgSend_kernelHeight(a5, v32, v33, v34, v35, v36, v37, v38);
      }

      v39 = self->super._kernelWidth;
      if (v39 != objc_msgSend_kernelWidth(a5, v32, v33, v34, v35, v36, v37, v38) || (v47 = self->super._kernelHeight, v47 != objc_msgSend_kernelHeight(a5, v40, v41, v42, v43, v44, v45, v46)))
      {
        if (MTLReportFailureTypeEnabled())
        {
          v227 = objc_opt_class();
          v228 = NSStringFromClass(v227);
          v236 = objc_msgSend_kernelWidth(a5, v229, v230, v231, v232, v233, v234, v235);
          v244 = objc_msgSend_kernelHeight(a5, v237, v238, v239, v240, v241, v242, v243);
          v249 = self->super._kernelWidth;
          kernelHeight = self->super._kernelHeight;
          v247 = v236;
          v248 = v244;
          v246 = v228;
          MTLReportFailure();
        }
      }
    }

    objc_msgSend_setWidth_(v9, v10, self->super._srcSize.width, v12, v13, v14, v15, v16, v246, v247, v248, v249, kernelHeight);
    objc_msgSend_setHeight_(v9, v48, self->super._srcSize.height, v49, v50, v51, v52, v53);
    v61 = objc_msgSend_outputFeatureChannels(a5, v54, v55, v56, v57, v58, v59, v60);
    objc_msgSend_setFeatureChannels_(v9, v62, v61, v63, v64, v65, v66, v67);
    v68 = ((self->super._kernelWidth & 1) == 0) - self->super._offset.x;
    v69 = ((self->super._kernelHeight & 1) == 0) - self->super._offset.y;
    v77 = objc_msgSend_strideInPixelsX(a5, v70, v71, v72, v73, v74, v75, v76);
    if (v77 <= 1)
    {
      v85 = 1;
    }

    else
    {
      v85 = v77;
    }

    v86 = v68 / v85;
    v87 = v68 % v85;
    v88 = (v87 >> 63) + v86;
    v89 = (v87 >> 63) & v85;
    v90 = objc_msgSend_strideInPixelsY(a5, v78, v79, v80, v81, v82, v83, v84);
    if (v90 <= 1)
    {
      v98 = 1;
    }

    else
    {
      v98 = v90;
    }

    v99 = v69 / v98;
    v100 = v69 % v98;
    v101 = (v100 >> 63) + v99;
    v102 = (v100 >> 63) & v98;
    objc_msgSend_offset(a5, v91, v92, v93, v94, v95, v96, v97);
    v252 = v88;
    v253 = v101;
    v254 = v257;
    objc_msgSend_setOffset_(a5, v103, &v252, v104, v105, v106, v107, v108);
    objc_msgSend_setKernelOffsetX_(a5, v109, v89 + v87, v110, v111, v112, v113, v114);
    objc_msgSend_setKernelOffsetY_(a5, v115, v102 + v100, v116, v117, v118, v119, v120);
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v128 = objc_msgSend_primaryKernelWidth(a5, v121, v122, v123, v124, v125, v126, v127);
      v136 = objc_msgSend_primaryKernelHeight(a5, v129, v130, v131, v132, v133, v134, v135);
      v151 = objc_msgSend_primaryDilationRateX(a5, v137, v138, v139, v140, v141, v142, v143) * (v128 - 1);
      v152 = v151 + 1;
      v160 = objc_msgSend_primaryDilationRateY(a5, v144, v145, v146, v147, v148, v149, v150) * (v136 - 1);
      v251 = v160 + 1;
      if (a5)
      {
        objc_msgSend_primaryOffset(a5, v153, v154, v155, v156, v157, v158, v159);
        v161 = v257;
      }

      else
      {
        v161 = 0;
      }

      p_offset = &self->super._offset;
      v163 = (v151 & 1) - p_offset->x;
      v164 = (v160 & 1) - p_offset->y;
      v165 = objc_msgSend_primaryStrideInPixelsX(a5, v153, v154, v155, v156, v157, v158, v159);
      if (v165 <= 1)
      {
        v173 = 1;
      }

      else
      {
        v173 = v165;
      }

      v174 = v163 / v173;
      v175 = v163 % v173;
      v176 = (v175 >> 63) + v174;
      v177 = (v175 >> 63) & v173;
      v178 = objc_msgSend_primaryStrideInPixelsY(a5, v166, v167, v168, v169, v170, v171, v172);
      if (v178 <= 1)
      {
        v185 = 1;
      }

      else
      {
        v185 = v178;
      }

      v186 = v164 / v185;
      v187 = v164 % v185;
      v188 = (v187 >> 63) & v185;
      v255 = v176;
      v256 = (v187 >> 63) + v186;
      v257 = v161;
      objc_msgSend_setPrimaryOffset_(a5, v179, &v255, v180, v181, v182, v183, v184);
      objc_msgSend_setKernelOffsetX_(a5, v189, v177 + v175, v190, v191, v192, v193, v194);
      objc_msgSend_setKernelOffsetY_(a5, v195, v188 + v187, v196, v197, v198, v199, v200);
      y = p_offset->y;
      v209 = p_offset->x - v152 / 2;
      v210 = y - v251 / 2;
      if (a5)
      {
        objc_msgSend_secondaryOffset(a5, v201, v202, v203, v204, v205, v206, v207);
        v211 = v257;
      }

      else
      {
        v211 = 0;
        v255 = 0;
        v256 = 0;
        v257 = 0;
      }

      v252 = v209;
      v253 = v210;
      v254 = v211;
      objc_msgSend_setSecondaryOffset_(a5, v201, &v252, v203, v204, v205, v206, v207);
      v219 = objc_msgSend_sourceImageFeatureChannels(a5, v212, v213, v214, v215, v216, v217, v218);
      objc_msgSend_setFeatureChannels_(v9, v220, v219, v221, v222, v223, v224, v225);
    }
  }

  return v9;
}

@end