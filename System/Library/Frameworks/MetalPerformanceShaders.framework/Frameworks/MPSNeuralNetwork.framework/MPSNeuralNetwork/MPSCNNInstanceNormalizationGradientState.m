@interface MPSCNNInstanceNormalizationGradientState
+ (id)temporaryStateWithCommandBuffer:(id)a3 numberOfFeatureChannels:(unint64_t)a4 instanceNormalization:(id)a5;
- (MPSCNNInstanceNormalizationGradientState)initWithDevice:(id)a3 numberOfFeatureChannels:(unint64_t)a4 instanceNormalization:(id)a5;
- (id)beta;
- (id)debugDescription;
- (id)gamma;
- (id)gradientForBeta;
- (id)gradientForGamma;
- (void)dealloc;
@end

@implementation MPSCNNInstanceNormalizationGradientState

- (id)gamma
{
  if (!atomic_load_explicit(self->_instanceNormalization->_gamma, memory_order_acquire))
  {
    return 0;
  }

  gamma = self->_instanceNormalization->_gamma;
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
  if (!atomic_load_explicit(self->_instanceNormalization->_beta, memory_order_acquire))
  {
    return 0;
  }

  beta = self->_instanceNormalization->_beta;
  result = atomic_load_explicit(beta, memory_order_acquire);
  if (!result)
  {
    MPSAutoBuffer::AllocateBuffer(beta, 0);
    return atomic_load_explicit(beta, memory_order_acquire);
  }

  return result;
}

- (id)gradientForGamma
{
  v2 = *MEMORY[0x277CD7488];
  atomic_load_explicit(*(&self->super.super.super.isa + v2) + 19, memory_order_acquire);
  if (!atomic_load_explicit(*(&self->super.super.super.isa + v2) + 19, memory_order_acquire))
  {
    v6 = self;
    v7 = MTLReportFailureTypeEnabled();
    self = v6;
    if (v7)
    {
      v8 = objc_opt_class();
      NSStringFromClass(v8);
      MTLReportFailure();
      self = v6;
    }
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

- (id)gradientForBeta
{
  v2 = *MEMORY[0x277CD7488];
  atomic_load_explicit(*(&self->super.super.super.isa + v2) + 10, memory_order_acquire);
  if (!atomic_load_explicit(*(&self->super.super.super.isa + v2) + 10, memory_order_acquire))
  {
    v6 = self;
    v7 = MTLReportFailureTypeEnabled();
    self = v6;
    if (v7)
    {
      v8 = objc_opt_class();
      NSStringFromClass(v8);
      MTLReportFailure();
      self = v6;
    }
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

+ (id)temporaryStateWithCommandBuffer:(id)a3 numberOfFeatureChannels:(unint64_t)a4 instanceNormalization:(id)a5
{
  v9 = (4 * a4 + 12) & 0xFFFFFFFFFFFFFFF0;
  v10 = objc_autoreleasePoolPush();
  v17 = objc_msgSend_resourceListWithBufferSizes_(MEMORY[0x277CD72A0], v11, 2 * v9, v12, v13, v14, v15, v16, v9, v9, 0);
  v18 = v17;
  objc_autoreleasePoolPop(v10);
  v24 = objc_msgSend_temporaryStateWithCommandBuffer_resourceList_(a1, v19, a3, v17, v20, v21, v22, v23);

  v24[37] = a4;
  v24[36] = a5;
  return v24;
}

- (MPSCNNInstanceNormalizationGradientState)initWithDevice:(id)a3 numberOfFeatureChannels:(unint64_t)a4 instanceNormalization:(id)a5
{
  v9 = (4 * a4 + 12) & 0xFFFFFFFFFFFFFFF0;
  v10 = objc_autoreleasePoolPush();
  v17 = objc_msgSend_resourceListWithBufferSizes_(MEMORY[0x277CD72A0], v11, 2 * v9, v12, v13, v14, v15, v16, v9, v9, 0);
  v20.receiver = self;
  v20.super_class = MPSCNNInstanceNormalizationGradientState;
  v18 = [(MPSState *)&v20 initWithDevice:a3 resourceList:v17];
  objc_autoreleasePoolPop(v10);
  if (v18)
  {
    v18->_numberOfFeatureChannels = a4;
    v18->_instanceNormalization = a5;
  }

  return v18;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MPSCNNInstanceNormalizationGradientState;
  [(MPSNNGradientState *)&v3 dealloc];
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v36.receiver = self;
  v36.super_class = MPSCNNInstanceNormalizationGradientState;
  v4 = [(MPSNNGradientState *)&v36 debugDescription];
  v5 = *MEMORY[0x277CD7488];
  v6 = (*(&self->super.super.super.isa + v5) + 8);
  if (atomic_load_explicit(v6, memory_order_acquire) || (MPSAutoBuffer::AllocateBuffer(v6, 0), atomic_load_explicit(v6, memory_order_acquire)))
  {
    v7 = MPSAutoBuffer::Print((*(&self->super.super.super.isa + v5) + 8));
    v8 = (*(&self->super.super.super.isa + v5) + 152);
    if (atomic_load_explicit(v8, memory_order_acquire))
    {
      goto LABEL_8;
    }
  }

  else
  {
    v7 = @"<nil>";
    v8 = (*(&self->super.super.super.isa + v5) + 152);
    if (atomic_load_explicit(v8, memory_order_acquire))
    {
      goto LABEL_8;
    }
  }

  MPSAutoBuffer::AllocateBuffer(v8, 0);
  if (!atomic_load_explicit(v8, memory_order_acquire))
  {
    v9 = @"<nil>";
    v10 = (*(&self->super.super.super.isa + v5) + 80);
    if (atomic_load_explicit(v10, memory_order_acquire))
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_8:
  v9 = MPSAutoBuffer::Print((*(&self->super.super.super.isa + v5) + 152));
  v10 = (*(&self->super.super.super.isa + v5) + 80);
  if (atomic_load_explicit(v10, memory_order_acquire))
  {
    goto LABEL_10;
  }

LABEL_9:
  MPSAutoBuffer::AllocateBuffer(v10, 0);
  if (!atomic_load_explicit(v10, memory_order_acquire))
  {
    v18 = @"<nil>";
    goto LABEL_11;
  }

LABEL_10:
  v18 = MPSAutoBuffer::Print((*(&self->super.super.super.isa + v5) + 80));
LABEL_11:
  v19 = objc_msgSend_description(self->_instanceNormalization, v11, v12, v13, v14, v15, v16, v17);
  numberOfFeatureChannels = self->_numberOfFeatureChannels;
  objc_msgSend_epsilon(self->_instanceNormalization, v21, v22, v23, v24, v25, v26, v27);
  return objc_msgSend_stringWithFormat_(v3, v29, @"%@\n\tmeanAndVariance: %@\n\tgradientGamma %@\ntgradientBeta %@\n\tinstance normalization filter: %@\n\tfeature channels: %lu\n\tepsilon: %g", v30, v31, v32, v33, v34, v4, v7, v9, v18, v19, numberOfFeatureChannels, v28);
}

@end