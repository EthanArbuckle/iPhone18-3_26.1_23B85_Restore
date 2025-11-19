@interface MPSCNNBatchNormalizationState
+ (id)temporaryStateWithCommandBuffer:(id)a3 numberOfFeatureChannels:(unint64_t)a4 epsilon:(float)a5 batchNormalization:(id)a6;
- (id)beta;
- (id)gamma;
- (id)gradientForBeta;
- (id)gradientForGamma;
- (id)initDeferredWithDevice:(id)a3 numberOfFeatureChannels:(unint64_t)a4 epsilon:(float)a5 batchNormalization:(id)a6;
- (id)mean;
- (id)variance;
- (void)dealloc;
- (void)reset;
@end

@implementation MPSCNNBatchNormalizationState

+ (id)temporaryStateWithCommandBuffer:(id)a3 numberOfFeatureChannels:(unint64_t)a4 epsilon:(float)a5 batchNormalization:(id)a6
{
  v11 = (4 * a4 + 12) & 0xFFFFFFFFFFFFFFF0;
  v12 = objc_autoreleasePoolPush();
  v19 = objc_msgSend_resourceListWithBufferSizes_(MEMORY[0x277CD72A0], v13, v11, v14, v15, v16, v17, v18, v11, v11, v11, 0);
  v20 = v19;
  objc_autoreleasePoolPop(v12);
  v26 = objc_msgSend_temporaryStateWithCommandBuffer_resourceList_(a1, v21, a3, v19, v22, v23, v24, v25);

  *(v26 + 304) = a4;
  *(v26 + 296) = 0;
  *(v26 + 312) = a5;
  *(v26 + 288) = a6;
  return v26;
}

- (id)initDeferredWithDevice:(id)a3 numberOfFeatureChannels:(unint64_t)a4 epsilon:(float)a5 batchNormalization:(id)a6
{
  v11 = (4 * a4 + 12) & 0xFFFFFFFFFFFFFFF0;
  v12 = objc_autoreleasePoolPush();
  v19 = objc_msgSend_resourceListWithBufferSizes_(MEMORY[0x277CD72A0], v13, v11, v14, v15, v16, v17, v18, v11, v11, v11, 0);
  v22.receiver = self;
  v22.super_class = MPSCNNBatchNormalizationState;
  v20 = [(MPSState *)&v22 initWithDevice:a3 resourceList:v19];
  objc_autoreleasePoolPop(v12);
  if (v20)
  {
    v20->_numberOfFeatureChannels = a4;
    v20->_accumulationCount = 0;
    v20->_epsilon = a5;
    v20->_batchNormalization = a6;
  }

  return v20;
}

- (void)reset
{
  v9 = *MEMORY[0x277CD7488];
  v10 = *(&self->super.super.super.isa + v9);
  v11 = (v10 + 8);
  explicit = atomic_load_explicit((v10 + 8), memory_order_acquire);
  if (explicit)
  {
    v13 = (*(&self->super.super.super.isa + v9) + 80);
    v14 = atomic_load_explicit(v13, memory_order_acquire);
    if (v14)
    {
      goto LABEL_3;
    }
  }

  else
  {
    MPSAutoBuffer::AllocateBuffer((v10 + 8), 0);
    explicit = atomic_load_explicit(v11, memory_order_acquire);
    v13 = (*(&self->super.super.super.isa + v9) + 80);
    v14 = atomic_load_explicit(v13, memory_order_acquire);
    if (v14)
    {
      goto LABEL_3;
    }
  }

  MPSAutoBuffer::AllocateBuffer(v13, 0);
  v14 = atomic_load_explicit(v13, memory_order_acquire);
LABEL_3:
  v15 = objc_msgSend_contents(explicit, a2, v2, v3, v4, v5, v6, v7);
  v23 = objc_msgSend_length(explicit, v16, v17, v18, v19, v20, v21, v22);
  bzero(v15, v23);
  __pattern4 = 1065353216;
  v31 = objc_msgSend_contents(v14, v24, v25, v26, v27, v28, v29, v30);
  v39 = objc_msgSend_length(v14, v32, v33, v34, v35, v36, v37, v38);
  memset_pattern4(v31, &__pattern4, v39);
  if (atomic_load_explicit(*(&self->super.super.super.isa + v9) + 19, memory_order_acquire))
  {
    v47 = *(&self->super.super.super.isa + v9);
    v48 = (v47 + 152);
    v49 = atomic_load_explicit((v47 + 152), memory_order_acquire);
    if (!v49)
    {
      MPSAutoBuffer::AllocateBuffer((v47 + 152), 0);
      v49 = atomic_load_explicit(v48, memory_order_acquire);
    }

    v50 = objc_msgSend_contents(v49, v40, v41, v42, v43, v44, v45, v46);
    v58 = objc_msgSend_length(v49, v51, v52, v53, v54, v55, v56, v57);
    bzero(v50, v58);
  }

  if (atomic_load_explicit(*(&self->super.super.super.isa + v9) + 28, memory_order_acquire))
  {
    v59 = *(&self->super.super.super.isa + v9);
    v60 = (v59 + 224);
    v61 = atomic_load_explicit((v59 + 224), memory_order_acquire);
    if (!v61)
    {
      MPSAutoBuffer::AllocateBuffer((v59 + 224), 0);
      v61 = atomic_load_explicit(v60, memory_order_acquire);
    }

    v62 = objc_msgSend_contents(v61, v40, v41, v42, v43, v44, v45, v46);
    v70 = objc_msgSend_length(v61, v63, v64, v65, v66, v67, v68, v69);

    bzero(v62, v70);
  }
}

- (id)gamma
{
  if ((*(&self->super.super.super.isa + *MEMORY[0x277CD7470]) & 1) != 0 && !*(&self->super.super.super.isa + *MEMORY[0x277CD7478]))
  {
    v4 = self;
    v12 = MTLReportFailureTypeEnabled();
    self = v4;
    if (v12)
    {
      objc_msgSend_debugDescription(v4, v5, v6, v7, v8, v9, v10, v11);
      MTLReportFailure();
      self = v4;
    }
  }

  gamma = self->_batchNormalization->_gamma;
  result = atomic_load_explicit(gamma, memory_order_acquire);
  if (!result)
  {
    MPSAutoBuffer::AllocateBuffer(gamma, 0);
    return atomic_load_explicit(gamma, memory_order_acquire);
  }

  return result;
}

- (id)beta
{
  if ((*(&self->super.super.super.isa + *MEMORY[0x277CD7470]) & 1) != 0 && !*(&self->super.super.super.isa + *MEMORY[0x277CD7478]))
  {
    v4 = self;
    v12 = MTLReportFailureTypeEnabled();
    self = v4;
    if (v12)
    {
      objc_msgSend_debugDescription(v4, v5, v6, v7, v8, v9, v10, v11);
      MTLReportFailure();
      self = v4;
    }
  }

  beta = self->_batchNormalization->_beta;
  result = atomic_load_explicit(beta, memory_order_acquire);
  if (!result)
  {
    MPSAutoBuffer::AllocateBuffer(beta, 0);
    return atomic_load_explicit(beta, memory_order_acquire);
  }

  return result;
}

- (id)mean
{
  if ((*(&self->super.super.super.isa + *MEMORY[0x277CD7470]) & 1) != 0 && !*(&self->super.super.super.isa + *MEMORY[0x277CD7478]))
  {
    v6 = self;
    v14 = MTLReportFailureTypeEnabled();
    self = v6;
    if (v14)
    {
      objc_msgSend_debugDescription(v6, v7, v8, v9, v10, v11, v12, v13);
      MTLReportFailure();
      self = v6;
    }
  }

  v2 = *MEMORY[0x277CD7488];
  if (!atomic_load_explicit(*(&self->super.super.super.isa + v2) + 1, memory_order_acquire))
  {
    return 0;
  }

  v3 = *(&self->super.super.super.isa + v2);
  v4 = (v3 + 8);
  result = atomic_load_explicit((v3 + 8), memory_order_acquire);
  if (!result)
  {
    MPSAutoBuffer::AllocateBuffer((v3 + 8), 0);
    return atomic_load_explicit(v4, memory_order_acquire);
  }

  return result;
}

- (id)variance
{
  if ((*(&self->super.super.super.isa + *MEMORY[0x277CD7470]) & 1) != 0 && !*(&self->super.super.super.isa + *MEMORY[0x277CD7478]))
  {
    v6 = self;
    v14 = MTLReportFailureTypeEnabled();
    self = v6;
    if (v14)
    {
      objc_msgSend_debugDescription(v6, v7, v8, v9, v10, v11, v12, v13);
      MTLReportFailure();
      self = v6;
    }
  }

  v2 = *MEMORY[0x277CD7488];
  if (!atomic_load_explicit(*(&self->super.super.super.isa + v2) + 10, memory_order_acquire))
  {
    return 0;
  }

  v3 = *(&self->super.super.super.isa + v2);
  v4 = (v3 + 80);
  result = atomic_load_explicit((v3 + 80), memory_order_acquire);
  if (!result)
  {
    MPSAutoBuffer::AllocateBuffer((v3 + 80), 0);
    return atomic_load_explicit(v4, memory_order_acquire);
  }

  return result;
}

- (id)gradientForGamma
{
  if ((*(&self->super.super.super.isa + *MEMORY[0x277CD7470]) & 1) != 0 && !*(&self->super.super.super.isa + *MEMORY[0x277CD7478]))
  {
    v6 = self;
    v14 = MTLReportFailureTypeEnabled();
    self = v6;
    if (v14)
    {
      objc_msgSend_debugDescription(v6, v7, v8, v9, v10, v11, v12, v13);
      MTLReportFailure();
      self = v6;
    }
  }

  v2 = *MEMORY[0x277CD7488];
  if (!atomic_load_explicit(*(&self->super.super.super.isa + v2) + 28, memory_order_acquire))
  {
    return 0;
  }

  v3 = *(&self->super.super.super.isa + v2);
  v4 = (v3 + 224);
  result = atomic_load_explicit((v3 + 224), memory_order_acquire);
  if (!result)
  {
    MPSAutoBuffer::AllocateBuffer((v3 + 224), 0);
    return atomic_load_explicit(v4, memory_order_acquire);
  }

  return result;
}

- (id)gradientForBeta
{
  if ((*(&self->super.super.super.isa + *MEMORY[0x277CD7470]) & 1) != 0 && !*(&self->super.super.super.isa + *MEMORY[0x277CD7478]))
  {
    v6 = self;
    v14 = MTLReportFailureTypeEnabled();
    self = v6;
    if (v14)
    {
      objc_msgSend_debugDescription(v6, v7, v8, v9, v10, v11, v12, v13);
      MTLReportFailure();
      self = v6;
    }
  }

  v2 = *MEMORY[0x277CD7488];
  if (!atomic_load_explicit(*(&self->super.super.super.isa + v2) + 19, memory_order_acquire))
  {
    return 0;
  }

  v3 = *(&self->super.super.super.isa + v2);
  v4 = (v3 + 152);
  result = atomic_load_explicit((v3 + 152), memory_order_acquire);
  if (!result)
  {
    MPSAutoBuffer::AllocateBuffer((v3 + 152), 0);
    return atomic_load_explicit(v4, memory_order_acquire);
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MPSCNNBatchNormalizationState;
  [(MPSNNGradientState *)&v3 dealloc];
}

@end