@interface MPSCNNNormalizationGammaAndBetaState
+ (id)temporaryStateWithCommandBuffer:(id)buffer bufferSize:(unint64_t)size;
- (MPSCNNNormalizationGammaAndBetaState)initWithDevice:(id)device bufferSize:(unint64_t)size;
- (MPSCNNNormalizationGammaAndBetaState)initWithGamma:(id)gamma beta:(id)beta;
- (id)beta;
- (id)gamma;
@end

@implementation MPSCNNNormalizationGammaAndBetaState

- (id)gamma
{
  if (!*(&self->super.super.isa + *MEMORY[0x277CD7480]))
  {
    return 0;
  }

  v2 = *(&self->super.super.isa + *MEMORY[0x277CD7488]);
  v3 = (v2 + 8);
  result = atomic_load_explicit((v2 + 8), memory_order_acquire);
  if (!result)
  {
    MPSAutoBuffer::AllocateBuffer((v2 + 8), 0);
    return atomic_load_explicit(v3, memory_order_acquire);
  }

  return result;
}

- (id)beta
{
  if (!*(&self->super.super.isa + *MEMORY[0x277CD7480]))
  {
    return 0;
  }

  v2 = *(&self->super.super.isa + *MEMORY[0x277CD7488]);
  v3 = (v2 + 80);
  result = atomic_load_explicit((v2 + 80), memory_order_acquire);
  if (!result)
  {
    MPSAutoBuffer::AllocateBuffer((v2 + 80), 0);
    return atomic_load_explicit(v3, memory_order_acquire);
  }

  return result;
}

- (MPSCNNNormalizationGammaAndBetaState)initWithDevice:(id)device bufferSize:(unint64_t)size
{
  v7 = objc_autoreleasePoolPush();
  v14 = objc_msgSend_resourceListWithBufferSizes_(MEMORY[0x277CD72A0], v8, size, v9, v10, v11, v12, v13, size, 0);
  v17.receiver = self;
  v17.super_class = MPSCNNNormalizationGammaAndBetaState;
  v15 = [(MPSState *)&v17 initWithDevice:device resourceList:v14];
  *(&v15->super._updatedAlready + 1) = 0;
  objc_autoreleasePoolPop(v7);
  return v15;
}

- (MPSCNNNormalizationGammaAndBetaState)initWithGamma:(id)gamma beta:(id)beta
{
  v7 = objc_autoreleasePoolPush();
  v14 = objc_msgSend_arrayWithObjects_(MEMORY[0x277CBEA60], v8, gamma, v9, v10, v11, v12, v13, beta, 0);
  v17.receiver = self;
  v17.super_class = MPSCNNNormalizationGammaAndBetaState;
  v15 = [(MPSState *)&v17 initWithResources:v14];
  *(&v15->super._updatedAlready + 1) = 1;
  objc_autoreleasePoolPop(v7);
  return v15;
}

+ (id)temporaryStateWithCommandBuffer:(id)buffer bufferSize:(unint64_t)size
{
  v7 = objc_autoreleasePoolPush();
  v14 = objc_msgSend_resourceListWithBufferSizes_(MEMORY[0x277CD72A0], v8, size, v9, v10, v11, v12, v13, size, 0);
  v20 = objc_msgSend_temporaryStateWithCommandBuffer_resourceList_(self, v15, buffer, v14, v16, v17, v18, v19);
  v20[43] = 0;
  v21 = v20;
  objc_autoreleasePoolPop(v7);

  return v20;
}

@end