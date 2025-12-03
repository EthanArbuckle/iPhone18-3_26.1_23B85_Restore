@interface MPSCNNInstanceNormalization
- (MPSCNNInstanceNormalization)initWithCoder:(NSCoder *)aDecoder device:(id)device;
- (MPSCNNInstanceNormalization)initWithDevice:(id)device dataSource:(id)dataSource;
- (MPSCNNInstanceNormalizationGradientState)resultStateForSourceImage:(MPSImage *)sourceImage sourceStates:(NSArray *)sourceStates destinationImage:(MPSImage *)destinationImage;
- (MPSCNNInstanceNormalizationGradientState)temporaryResultStateForCommandBuffer:(id)commandBuffer sourceImage:(MPSImage *)sourceImage sourceStates:(NSArray *)sourceStates destinationImage:(MPSImage *)destinationImage;
- (id)copyWithZone:(_NSZone *)zone device:(id)device;
- (id)debugDescription;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)reloadDataSourceDeprecated:(id)deprecated;
- (void)reloadGammaAndBetaWithCommandBuffer:(id)commandBuffer gammaAndBetaState:(MPSCNNNormalizationGammaAndBetaState *)gammaAndBetaState;
@end

@implementation MPSCNNInstanceNormalization

- (MPSCNNInstanceNormalization)initWithDevice:(id)device dataSource:(id)dataSource
{
  v37.receiver = self;
  v37.super_class = MPSCNNInstanceNormalization;
  v12 = [(MPSCNNKernel *)&v37 initWithDevice:?];
  if (v12)
  {
    v13 = objc_msgSend_numberOfFeatureChannels(dataSource, v5, v6, v7, v8, v9, v10, v11);
    v12->_numberOfFeatureChannels = v13;
    if (!v13 && MTLReportFailureTypeEnabled())
    {
      v36 = objc_opt_class();
      NSStringFromClass(v36);
      MTLReportFailure();
    }

    v12->_epsilon = 1.1755e-38;
    if (objc_opt_respondsToSelector())
    {
      objc_msgSend_epsilon(dataSource, v14, v15, v16, v17, v18, v19, v20);
      v12->_epsilon = v21;
    }

    v12->_dataSource = dataSource;
    if (objc_opt_respondsToSelector())
    {
      v28 = objc_msgSend_performSelector_(dataSource, v22, sel_label, v23, v24, v25, v26, v27);
      objc_msgSend_setLabel_(v12, v29, v28, v30, v31, v32, v33, v34);
    }

    operator new[]();
  }

  return 0;
}

- (void)dealloc
{
  gamma = self->_gamma;
  if (gamma)
  {
    MPSAutoBuffer::~MPSAutoBuffer(gamma);
    MEMORY[0x23EE7D130]();
  }

  beta = self->_beta;
  if (beta)
  {
    MPSAutoBuffer::~MPSAutoBuffer(beta);
    MEMORY[0x23EE7D130]();
  }

  v5.receiver = self;
  v5.super_class = MPSCNNInstanceNormalization;
  [(MPSCNNKernel *)&v5 dealloc];
}

- (MPSCNNInstanceNormalizationGradientState)resultStateForSourceImage:(MPSImage *)sourceImage sourceStates:(NSArray *)sourceStates destinationImage:(MPSImage *)destinationImage
{
  v12 = objc_msgSend_sourceFeatureChannelOffset(self, a2, sourceImage, sourceStates, destinationImage, v5, v6, v7);
  v20 = objc_msgSend_sourceFeatureChannelMaxCount(self, v13, v14, v15, v16, v17, v18, v19);
  v28 = *(&sourceImage->super.isa + *MEMORY[0x277CD72F8]);
  v29 = v28 >= v12;
  v30 = v28 - v12;
  if (!v29)
  {
    v30 = 0;
  }

  if (v30 >= v20)
  {
    v31 = v20;
  }

  else
  {
    v31 = v30;
  }

  if (v31 > self->_numberOfFeatureChannels && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  objc_msgSend_numberOfImages(sourceImage, v21, v22, v23, v24, v25, v26, v27);
  if (objc_msgSend_numberOfImages(sourceImage, v32, v33, v34, v35, v36, v37, v38) != 1 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  objc_msgSend_numberOfImages(destinationImage, v39, v40, v41, v42, v43, v44, v45);
  if (objc_msgSend_numberOfImages(destinationImage, v46, v47, v48, v49, v50, v51, v52) != 1 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v53 = [MPSCNNInstanceNormalizationGradientState alloc];
  v61 = objc_msgSend_device(self, v54, v55, v56, v57, v58, v59, v60);
  v69 = objc_msgSend_initWithDevice_numberOfFeatureChannels_instanceNormalization_(v53, v62, v61, v31, self, v63, v64, v65);
  if (v69)
  {
    objc_msgSend_copyToGradientState_sourceImage_sourceStates_destinationImage_(self, v66, v69, sourceImage, sourceStates, destinationImage, v67, v68);
  }

  return v69;
}

- (MPSCNNInstanceNormalizationGradientState)temporaryResultStateForCommandBuffer:(id)commandBuffer sourceImage:(MPSImage *)sourceImage sourceStates:(NSArray *)sourceStates destinationImage:(MPSImage *)destinationImage
{
  v13 = objc_msgSend_sourceFeatureChannelOffset(self, a2, commandBuffer, sourceImage, sourceStates, destinationImage, v6, v7);
  v21 = objc_msgSend_sourceFeatureChannelMaxCount(self, v14, v15, v16, v17, v18, v19, v20);
  v29 = *(&sourceImage->super.isa + *MEMORY[0x277CD72F8]);
  v30 = v29 >= v13;
  v31 = v29 - v13;
  if (!v30)
  {
    v31 = 0;
  }

  if (v31 >= v21)
  {
    v32 = v21;
  }

  else
  {
    v32 = v31;
  }

  if (v32 > self->_numberOfFeatureChannels && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  objc_msgSend_numberOfImages(sourceImage, v22, v23, v24, v25, v26, v27, v28);
  if (objc_msgSend_numberOfImages(sourceImage, v33, v34, v35, v36, v37, v38, v39) != 1 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  objc_msgSend_numberOfImages(destinationImage, v40, v41, v42, v43, v44, v45, v46);
  if (objc_msgSend_numberOfImages(destinationImage, v47, v48, v49, v50, v51, v52, v53) != 1 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v61 = objc_msgSend_temporaryStateWithCommandBuffer_numberOfFeatureChannels_instanceNormalization_(MPSCNNInstanceNormalizationGradientState, v54, commandBuffer, v32, self, v55, v56, v57);
  if (v61)
  {
    objc_msgSend_copyToGradientState_sourceImage_sourceStates_destinationImage_(self, v58, v61, sourceImage, sourceStates, destinationImage, v59, v60);
  }

  return v61;
}

- (MPSCNNInstanceNormalization)initWithCoder:(NSCoder *)aDecoder device:(id)device
{
  v51.receiver = self;
  v51.super_class = MPSCNNInstanceNormalization;
  v10 = [MPSCNNKernel initWithCoder:sel_initWithCoder_device_ device:?];
  if (v10)
  {
    v52 = 0;
    v11 = objc_msgSend_decodeBytesForKey_returnedLength_(aDecoder, v5, @"kMPSCNNInstanceNormalization.s", &v52, v6, v7, v8, v9);
    if (v52)
    {
      v19 = v11 == 0;
    }

    else
    {
      v19 = 1;
    }

    if (!v19)
    {
      v20 = v11;
      v21 = objc_alloc(MEMORY[0x277CCACA8]);
      v26 = objc_msgSend_initWithBytes_length_encoding_(v21, v22, v20, v52 - 1, 1, v23, v24, v25);
      v27 = v26;
      if (v26)
      {
        v28 = NSClassFromString(v26);
        if (v28)
        {
          v30 = v28;
          if (!&unk_284D1B518 || objc_msgSend_conformsToProtocol_(v28, v12, &unk_284D1B518, v29, v15, v16, v17, v18))
          {
            v31 = objc_msgSend_decodeObjectOfClass_forKey_(aDecoder, v12, v30, @"kMPSCNNInstanceNormalization.o", v15, v16, v17, v18);
            v39 = objc_msgSend_numberOfFeatureChannels(v31, v32, v33, v34, v35, v36, v37, v38);
LABEL_14:
            v10->_numberOfFeatureChannels = v39;
            if (!v39 && MTLReportFailureTypeEnabled())
            {
              v49 = objc_opt_class();
              NSStringFromClass(v49);
              MTLReportFailure();
            }

            v10->_epsilon = 1.1755e-38;
            if (objc_opt_respondsToSelector())
            {
              objc_msgSend_epsilon(v31, v40, v41, v42, v43, v44, v45, v46);
              v10->_epsilon = v47;
            }

            v10->_dataSource = v31;
            operator new[]();
          }
        }

        else if (MTLReportFailureTypeEnabled())
        {
          v50 = v26;
          MTLReportFailure();
        }
      }
    }

    v31 = 0;
    v39 = objc_msgSend_numberOfFeatureChannels(0, v12, v13, v14, v15, v16, v17, v18, v50);
    goto LABEL_14;
  }

  return 0;
}

- (void)encodeWithCoder:(id)coder
{
  *(&self->super.super.super.isa + *MEMORY[0x277CD7358] + 2) = 1;
  v64.receiver = self;
  v64.super_class = MPSCNNInstanceNormalization;
  [(MPSCNNKernel *)&v64 encodeWithCoder:?];
  if (self->_dataSource)
  {
    if (objc_msgSend_conformsToProtocol_(self->_dataSource, v6, &unk_284D09FA0, v7, v8, v9, v10, v11))
    {
      v18 = objc_opt_class();
      objc_msgSend_supportsSecureCoding(v18, v19, v20, v21, v22, v23, v24, v25);
    }

    if (!objc_msgSend_conformsToProtocol_(self->_dataSource, v12, &unk_284D09FA0, v13, v14, v15, v16, v17) || (v26 = objc_opt_class(), (objc_msgSend_supportsSecureCoding(v26, v27, v28, v29, v30, v31, v32, v33) & 1) == 0))
    {
      if (MTLReportFailureTypeEnabled())
      {
        v56 = objc_opt_class();
        NSStringFromClass(v56);
        NSStringFromSelector(a2);
        objc_msgSend_debugDescription(self->_dataSource, v57, v58, v59, v60, v61, v62, v63);
        MTLReportFailure();
      }
    }

    dataSource = self->_dataSource;
    v35 = objc_autoreleasePoolPush();
    v36 = objc_opt_class();
    if (v36)
    {
      v37 = NSStringFromClass(v36);
      v44 = objc_msgSend_cStringUsingEncoding_(v37, v38, 1, v39, v40, v41, v42, v43);
      if (v44)
      {
        v45 = v44;
        v46 = strlen(v44);
        if (v46)
        {
          objc_msgSend_encodeBytes_length_forKey_(coder, v47, v45, v46 + 1, @"kMPSCNNInstanceNormalization.s", v48, v49, v50);
          objc_msgSend_encodeObject_forKey_(coder, v51, dataSource, @"kMPSCNNInstanceNormalization.o", v52, v53, v54, v55);
        }
      }
    }

    objc_autoreleasePoolPop(v35);
  }
}

- (id)copyWithZone:(_NSZone *)zone device:(id)device
{
  v21.receiver = self;
  v21.super_class = MPSCNNInstanceNormalization;
  v7 = [MPSCNNKernel copyWithZone:sel_copyWithZone_device_ device:?];
  if (v7)
  {
    v8 = objc_opt_respondsToSelector();
    v15 = objc_opt_respondsToSelector();
    dataSource = self->_dataSource;
    if (v8)
    {
      v17 = objc_msgSend_copyWithZone_device_(dataSource, v9, zone, device, v11, v12, v13, v14);
      v7[43] = v17;
      if (!v17)
      {
        goto LABEL_9;
      }

LABEL_7:
      operator new[]();
    }

    if (v15)
    {
      v18 = objc_msgSend_copyWithZone_(dataSource, v9, zone, v10, v11, v12, v13, v14);
      v7[43] = v18;
      if (v18)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v19 = dataSource;
      v7[43] = v19;
      if (v19)
      {
        goto LABEL_7;
      }
    }

LABEL_9:

    return 0;
  }

  return v7;
}

- (void)reloadDataSourceDeprecated:(id)deprecated
{
  self->_numberOfFeatureChannels = objc_msgSend_numberOfFeatureChannels(deprecated, a2, deprecated, v3, v4, v5, v6, v7);
  if (objc_opt_respondsToSelector())
  {
    objc_msgSend_epsilon(deprecated, v10, v11, v12, v13, v14, v15, v16);
    self->_epsilon = v17;
  }

  v18 = objc_msgSend_gamma(deprecated, v10, v11, v12, v13, v14, v15, v16);
  v33 = objc_msgSend_beta(deprecated, v19, v20, v21, v22, v23, v24, v25);
  if (v18)
  {
    gamma = self->_gamma;
    explicit = atomic_load_explicit(gamma, memory_order_acquire);
    if (!explicit)
    {
      MPSAutoBuffer::AllocateBuffer(gamma, 0);
      explicit = atomic_load_explicit(gamma, memory_order_acquire);
    }

    v36 = objc_msgSend_contents(explicit, v26, v27, v28, v29, v30, v31, v32);
    memcpy(v36, v18, 4 * self->_numberOfFeatureChannels);
  }

  if (v33)
  {
    beta = self->_beta;
    v38 = atomic_load_explicit(beta, memory_order_acquire);
    if (!v38)
    {
      MPSAutoBuffer::AllocateBuffer(beta, 0);
      v38 = atomic_load_explicit(beta, memory_order_acquire);
    }

    v39 = objc_msgSend_contents(v38, v26, v27, v28, v29, v30, v31, v32);
    v40 = 4 * self->_numberOfFeatureChannels;

    memcpy(v39, v33, v40);
  }
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v21.receiver = self;
  v21.super_class = MPSCNNInstanceNormalization;
  v4 = [(MPSCNNKernel *)&v21 debugDescription];
  dataSource = self->_dataSource;
  v13 = objc_msgSend_label(dataSource, v6, v7, v8, v9, v10, v11, v12);
  return objc_msgSend_stringWithFormat_(v3, v14, @"%@\n\tdata source: %p %@\n\tepsilon: %g", v15, v16, v17, v18, v19, v4, dataSource, v13, self->_epsilon);
}

- (void)reloadGammaAndBetaWithCommandBuffer:(id)commandBuffer gammaAndBetaState:(MPSCNNNormalizationGammaAndBetaState *)gammaAndBetaState
{
  if (objc_msgSend_gamma(gammaAndBetaState, a2, commandBuffer, gammaAndBetaState, v4, v5, v6, v7))
  {
    objc_msgSend_beta(gammaAndBetaState, v11, v12, v13, v14, v15, v16, v17);
  }

  if ((!objc_msgSend_gamma(gammaAndBetaState, v11, v12, v13, v14, v15, v16, v17) || !objc_msgSend_beta(gammaAndBetaState, v18, v19, v20, v21, v22, v23, v24)) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  gamma = self->_gamma;
  explicit = atomic_load_explicit(gamma, memory_order_acquire);
  if (!explicit)
  {
    MPSAutoBuffer::AllocateBuffer(gamma, 0);
    explicit = atomic_load_explicit(gamma, memory_order_acquire);
    beta = self->_beta;
    v35 = atomic_load_explicit(beta, memory_order_acquire);
    if (v35)
    {
      goto LABEL_7;
    }

LABEL_19:
    MPSAutoBuffer::AllocateBuffer(beta, 0);
    v35 = atomic_load_explicit(beta, memory_order_acquire);
    goto LABEL_7;
  }

  beta = self->_beta;
  v35 = atomic_load_explicit(beta, memory_order_acquire);
  if (!v35)
  {
    goto LABEL_19;
  }

LABEL_7:
  v36 = objc_msgSend_gamma(gammaAndBetaState, v25, v26, v27, v28, v29, v30, v31);
  v149 = objc_msgSend_beta(gammaAndBetaState, v37, v38, v39, v40, v41, v42, v43);
  ComputeState = MPSLibrary::GetComputeState();
  v45 = objc_alloc(MEMORY[0x277CD7210]);
  v58 = objc_msgSend_initWithCommandBuffer_withDispatchType_(v45, v46, commandBuffer, 0, v47, v48, v49, v50);
  if ((*(&self->super.super.super.isa + *MEMORY[0x277CD7378]) & 0x18) != 0)
  {
    v52 = *(&self->super.super.super.isa + *MEMORY[0x277CD7360]);
    if (v52 || (v59 = objc_opt_class(), v60 = NSStringFromClass(v59), objc_msgSend_setLabel_(self, v61, v60, v62, v63, v64, v65, v66), (v52 = v60) != 0))
    {
      objc_msgSend_setLabel_(v58, v51, v52, v53, v54, v55, v56, v57);
    }
  }

  numberOfFeatureChannels = self->_numberOfFeatureChannels;
  v154 = numberOfFeatureChannels;
  v68 = objc_msgSend_threadExecutionWidth(ComputeState, v51, v52, v53, v54, v55, v56, v57);
  v76 = objc_msgSend_maxTotalThreadsPerThreadgroup(ComputeState, v69, v70, v71, v72, v73, v74, v75);
  if (2 * v68 >= v76)
  {
    v83 = v76;
  }

  else
  {
    v83 = 2 * v68;
  }

  objc_msgSend_setComputePipelineState_(v58, v77, ComputeState, v78, v79, v80, v81, v82);
  objc_msgSend_setBuffer_offset_atIndex_(v58, v84, explicit, 0, 0, v85, v86, v87);
  objc_msgSend_setBuffer_offset_atIndex_(v58, v88, v36, 0, 1, v89, v90, v91);
  objc_msgSend_setBytes_length_atIndex_(v58, v92, &v154, 2, 2, v93, v94, v95);
  v152 = (numberOfFeatureChannels + v83 - 1) / v83;
  v153 = vdupq_n_s64(1uLL);
  v150 = v83;
  v151 = v153;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v58, v96, &v152, &v150, v97, v98, v99, v100);
  v101 = self->_numberOfFeatureChannels;
  v154 = v101;
  v109 = objc_msgSend_threadExecutionWidth(ComputeState, v102, v103, v104, v105, v106, v107, v108);
  v117 = objc_msgSend_maxTotalThreadsPerThreadgroup(ComputeState, v110, v111, v112, v113, v114, v115, v116);
  if (2 * v109 >= v117)
  {
    v124 = v117;
  }

  else
  {
    v124 = 2 * v109;
  }

  objc_msgSend_setComputePipelineState_(v58, v118, ComputeState, v119, v120, v121, v122, v123);
  objc_msgSend_setBuffer_offset_atIndex_(v58, v125, v35, 0, 0, v126, v127, v128);
  objc_msgSend_setBuffer_offset_atIndex_(v58, v129, v149, 0, 1, v130, v131, v132);
  objc_msgSend_setBytes_length_atIndex_(v58, v133, &v154, 2, 2, v134, v135, v136);
  v152 = (v101 + v124 - 1) / v124;
  v153 = vdupq_n_s64(1uLL);
  v150 = v124;
  v151 = v153;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v58, v137, &v152, &v150, v138, v139, v140, v141);
  MPSLibrary::ReleaseComputeState();
  MPSDecrementReadCount(&gammaAndBetaState->super);
  objc_msgSend_endEncoding(v58, v142, v143, v144, v145, v146, v147, v148);
}

@end