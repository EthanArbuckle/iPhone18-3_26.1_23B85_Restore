@interface MPSCNNConvolutionWeightsAndBiasesState
+ (MPSCNNConvolutionWeightsAndBiasesState)temporaryCNNConvolutionWeightsAndBiasesStateWithCommandBuffer:(id)commandBuffer cnnConvolutionDescriptor:(MPSCNNConvolutionDescriptor *)descriptor;
+ (id)temporaryCNNConvolutionWeightsAndBiasesStateWithCommandBuffer:(id)buffer cnnConvolutionDescriptor:(id)descriptor weightsDataType:(unsigned int)type;
+ (id)temporaryCNNConvolutionWeightsAndBiasesStateWithCommandBuffer:(id)buffer cnnConvolutionDescriptor:(id)descriptor weightsDataType:(unsigned int)type weightsLayout:(unsigned int)layout;
- (MPSCNNConvolutionWeightsAndBiasesState)initWithDevice:(id)device cnnConvolutionDescriptor:(MPSCNNConvolutionDescriptor *)descriptor;
- (MPSCNNConvolutionWeightsAndBiasesState)initWithDevice:(id)device cnnConvolutionDescriptor:(id)descriptor weightsDataType:(unsigned int)type;
- (MPSCNNConvolutionWeightsAndBiasesState)initWithDevice:(id)device cnnConvolutionDescriptor:(id)descriptor weightsDataType:(unsigned int)type weightsLayout:(unsigned int)layout;
- (MPSCNNConvolutionWeightsAndBiasesState)initWithWeights:(id)weights biases:(id)biases;
- (MPSCNNConvolutionWeightsAndBiasesState)initWithWeights:(id)weights biases:(id)biases weightsDataType:(unsigned int)type;
- (MPSCNNConvolutionWeightsAndBiasesState)initWithWeights:(id)weights biases:(id)biases weightsDataType:(unsigned int)type weightsLayout:(unsigned int)layout;
- (MPSCNNConvolutionWeightsAndBiasesState)initWithWeights:(id)weights weightsOffset:(NSUInteger)weightsOffset biases:(id)biases biasesOffset:(NSUInteger)biasesOffset cnnConvolutionDescriptor:(MPSCNNConvolutionDescriptor *)descriptor;
- (MPSCNNConvolutionWeightsAndBiasesState)initWithWeights:(id)weights weightsOffset:(unint64_t)offset weightsDataType:(unsigned int)type weightsLayout:(unsigned int)layout biases:(id)biases biasesOffset:(unint64_t)biasesOffset cnnConvolutionDescriptor:(id)descriptor;
- (id)biases;
- (id)weights;
- (void)initializeWithWeightsCount:(unint64_t)count weightsOffset:(unint64_t)offset weightsDataType:(unsigned int)type weightsLayout:(unsigned int)layout biasesCount:(unint64_t)biasesCount biasesOffset:(unint64_t)biasesOffset;
@end

@implementation MPSCNNConvolutionWeightsAndBiasesState

- (id)weights
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

- (id)biases
{
  if (objc_msgSend_resourceCount(self, a2, v2, v3, v4, v5, v6, v7) < 2)
  {
    return 0;
  }

  if (!*(&self->super.super.isa + *MEMORY[0x277CD7480]))
  {
    return 0;
  }

  v10 = *(&self->super.super.isa + *MEMORY[0x277CD7488]);
  v11 = (v10 + 80);
  result = atomic_load_explicit((v10 + 80), memory_order_acquire);
  if (!result)
  {
    MPSAutoBuffer::AllocateBuffer((v10 + 80), 0);
    return atomic_load_explicit(v11, memory_order_acquire);
  }

  return result;
}

- (void)initializeWithWeightsCount:(unint64_t)count weightsOffset:(unint64_t)offset weightsDataType:(unsigned int)type weightsLayout:(unsigned int)layout biasesCount:(unint64_t)biasesCount biasesOffset:(unint64_t)biasesOffset
{
  v14 = 2;
  if (type != 268435472)
  {
    v14 = 0;
  }

  if (type == 268435488)
  {
    v15 = 4;
  }

  else
  {
    v15 = v14;
  }

  if (type == 8)
  {
    v16 = 1;
  }

  else
  {
    v16 = v15;
  }

  v23 = objc_msgSend_bufferSizeAtIndex_(self, a2, 0, offset, *&type, *&layout, biasesCount, biasesOffset);
  if (biasesCount)
  {
    v24 = objc_msgSend_bufferSizeAtIndex_(self, v17, 1, v18, v19, v20, v21, v22);
    if (type == 268435472)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v24 = 0;
    if (type == 268435472)
    {
      goto LABEL_16;
    }
  }

  if (type != 268435488 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

LABEL_16:
  if (((v16 - 1) & offset) != 0 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if ((biasesOffset & 3) != 0 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (offset + v16 * count > v23 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (biasesOffset + 4 * biasesCount > v24 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  self->_weightsDataType = type;
  self->_numberOfWeights = count;
  self->_numberOfBiases = biasesCount;
  self->_weightsLayout = layout;
  self->_weightsOffset = offset;
  self->_biasesOffset = biasesOffset;
}

- (MPSCNNConvolutionWeightsAndBiasesState)initWithWeights:(id)weights biases:(id)biases weightsDataType:(unsigned int)type
{
  v5 = *&type;
  v9 = objc_autoreleasePoolPush();
  v16 = objc_msgSend_arrayWithObjects_(MEMORY[0x277CBEA60], v10, weights, v11, v12, v13, v14, v15, biases, 0);
  v32.receiver = self;
  v32.super_class = MPSCNNConvolutionWeightsAndBiasesState;
  v17 = [(MPSState *)&v32 initWithResources:v16];
  objc_autoreleasePoolPop(v9);
  if (v17)
  {
    if (weights)
    {
      v25 = objc_msgSend_length(weights, v18, v19, v20, v21, v22, v23, v24);
      v26 = 1;
      v27 = 2;
      if (v5 != 268435472)
      {
        v27 = 0;
      }

      if (v5 == 268435488)
      {
        v28 = 4;
      }

      else
      {
        v28 = v27;
      }

      if (v5 != 8)
      {
        v26 = v28;
      }

      weights = (v25 / v26);
    }

    if (biases)
    {
      v29 = objc_msgSend_length(biases, v18, v19, v20, v21, v22, v23, v24) >> 2;
      objc_msgSend_initializeWithWeightsCount_weightsOffset_weightsDataType_weightsLayout_biasesCount_biasesOffset_(v17, v30, weights, 0, v5, 0, v29, 0);
    }

    else
    {
      objc_msgSend_initializeWithWeightsCount_weightsOffset_weightsDataType_weightsLayout_biasesCount_biasesOffset_(v17, v18, weights, 0, v5, 0, 0, 0);
    }
  }

  return v17;
}

- (MPSCNNConvolutionWeightsAndBiasesState)initWithWeights:(id)weights biases:(id)biases weightsDataType:(unsigned int)type weightsLayout:(unsigned int)layout
{
  v6 = *&layout;
  v7 = *&type;
  v11 = objc_autoreleasePoolPush();
  v18 = objc_msgSend_arrayWithObjects_(MEMORY[0x277CBEA60], v12, weights, v13, v14, v15, v16, v17, biases, 0);
  v34.receiver = self;
  v34.super_class = MPSCNNConvolutionWeightsAndBiasesState;
  v19 = [(MPSState *)&v34 initWithResources:v18];
  objc_autoreleasePoolPop(v11);
  if (v19)
  {
    if (weights)
    {
      v27 = objc_msgSend_length(weights, v20, v21, v22, v23, v24, v25, v26);
      v28 = 1;
      v29 = 2;
      if (v7 != 268435472)
      {
        v29 = 0;
      }

      if (v7 == 268435488)
      {
        v30 = 4;
      }

      else
      {
        v30 = v29;
      }

      if (v7 != 8)
      {
        v28 = v30;
      }

      weights = (v27 / v28);
    }

    if (biases)
    {
      v31 = objc_msgSend_length(biases, v20, v21, v22, v23, v24, v25, v26) >> 2;
      objc_msgSend_initializeWithWeightsCount_weightsOffset_weightsDataType_weightsLayout_biasesCount_biasesOffset_(v19, v32, weights, 0, v7, v6, v31, 0);
    }

    else
    {
      objc_msgSend_initializeWithWeightsCount_weightsOffset_weightsDataType_weightsLayout_biasesCount_biasesOffset_(v19, v20, weights, 0, v7, v6, 0, 0);
    }
  }

  return v19;
}

- (MPSCNNConvolutionWeightsAndBiasesState)initWithDevice:(id)device cnnConvolutionDescriptor:(id)descriptor weightsDataType:(unsigned int)type
{
  v5 = *&type;
  v15 = objc_autoreleasePoolPush();
  if (v5 != 268435472 && v5 != 268435488 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v16 = *(descriptor + 4);
  v17 = *(descriptor + 2) * *(descriptor + 1);
  if ((*(descriptor + 112) & 1) == 0)
  {
    v17 *= *(descriptor + 3) / *(descriptor + 8);
  }

  v18 = v17 * v16;
  v19 = 1;
  v20 = 2;
  if (v5 != 268435472)
  {
    v20 = 0;
  }

  if (v5 == 268435488)
  {
    v21 = 4;
  }

  else
  {
    v21 = v20;
  }

  if (v5 != 8)
  {
    v19 = v21;
  }

  v22 = objc_msgSend_resourceListWithBufferSizes_(MEMORY[0x277CD72A0], v9, v19 * v18, v10, v11, v12, v13, v14, 4 * v16, 0);
  v26.receiver = self;
  v26.super_class = MPSCNNConvolutionWeightsAndBiasesState;
  v23 = [(MPSState *)&v26 initWithDevice:device resourceList:v22];
  objc_autoreleasePoolPop(v15);
  if (v23)
  {
    objc_msgSend_initializeWithWeightsCount_weightsOffset_weightsDataType_weightsLayout_biasesCount_biasesOffset_(v23, v24, v18, 0, v5, 0, v16, 0);
  }

  return v23;
}

- (MPSCNNConvolutionWeightsAndBiasesState)initWithDevice:(id)device cnnConvolutionDescriptor:(id)descriptor weightsDataType:(unsigned int)type weightsLayout:(unsigned int)layout
{
  v6 = *&layout;
  v7 = *&type;
  v17 = objc_autoreleasePoolPush();
  if (v7 != 268435472 && v7 != 268435488 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v18 = *(descriptor + 4);
  v19 = *(descriptor + 2) * *(descriptor + 1);
  if ((*(descriptor + 112) & 1) == 0)
  {
    v19 *= *(descriptor + 3) / *(descriptor + 8);
  }

  v20 = v19 * v18;
  v21 = 1;
  v22 = 2;
  if (v7 != 268435472)
  {
    v22 = 0;
  }

  if (v7 == 268435488)
  {
    v23 = 4;
  }

  else
  {
    v23 = v22;
  }

  if (v7 != 8)
  {
    v21 = v23;
  }

  v24 = objc_msgSend_resourceListWithBufferSizes_(MEMORY[0x277CD72A0], v11, v21 * v20, v12, v13, v14, v15, v16, 4 * v18, 0);
  v28.receiver = self;
  v28.super_class = MPSCNNConvolutionWeightsAndBiasesState;
  v25 = [(MPSState *)&v28 initWithDevice:device resourceList:v24];
  objc_autoreleasePoolPop(v17);
  if (v25)
  {
    objc_msgSend_initializeWithWeightsCount_weightsOffset_weightsDataType_weightsLayout_biasesCount_biasesOffset_(v25, v26, v20, 0, v7, v6, v18, 0);
  }

  return v25;
}

+ (id)temporaryCNNConvolutionWeightsAndBiasesStateWithCommandBuffer:(id)buffer cnnConvolutionDescriptor:(id)descriptor weightsDataType:(unsigned int)type
{
  v15 = objc_autoreleasePoolPush();
  if (type != 268435472 && type != 268435488 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v16 = *(descriptor + 4);
  v17 = *(descriptor + 2) * *(descriptor + 1);
  if ((*(descriptor + 112) & 1) == 0)
  {
    v17 *= *(descriptor + 3) / *(descriptor + 8);
  }

  v18 = v17 * v16;
  v19 = 1;
  v20 = 2;
  if (type != 268435472)
  {
    v20 = 0;
  }

  if (type == 268435488)
  {
    v21 = 4;
  }

  else
  {
    v21 = v20;
  }

  if (type != 8)
  {
    v19 = v21;
  }

  v22 = objc_msgSend_resourceListWithBufferSizes_(MEMORY[0x277CD72A0], v9, v19 * v18, v10, v11, v12, v13, v14, 4 * v16, 0);
  objc_autoreleasePoolPop(v15);
  v28 = objc_msgSend_temporaryStateWithCommandBuffer_resourceList_(self, v23, buffer, v22, v24, v25, v26, v27);

  if (v28)
  {
    *(v28 + 72) = 0;
    *(v28 + 80) = 0;
    *(v28 + 64) = type;
    *(v28 + 68) = 0;
    *(v28 + 48) = v18;
    *(v28 + 56) = v16;
  }

  return v28;
}

+ (id)temporaryCNNConvolutionWeightsAndBiasesStateWithCommandBuffer:(id)buffer cnnConvolutionDescriptor:(id)descriptor weightsDataType:(unsigned int)type weightsLayout:(unsigned int)layout
{
  v17 = objc_autoreleasePoolPush();
  if (type != 268435472 && type != 268435488 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v18 = *(descriptor + 4);
  v19 = *(descriptor + 2) * *(descriptor + 1);
  if ((*(descriptor + 112) & 1) == 0)
  {
    v19 *= *(descriptor + 3) / *(descriptor + 8);
  }

  v20 = v19 * v18;
  v21 = 1;
  v22 = 2;
  if (type != 268435472)
  {
    v22 = 0;
  }

  if (type == 268435488)
  {
    v23 = 4;
  }

  else
  {
    v23 = v22;
  }

  if (type != 8)
  {
    v21 = v23;
  }

  v24 = objc_msgSend_resourceListWithBufferSizes_(MEMORY[0x277CD72A0], v11, v21 * v20, v12, v13, v14, v15, v16, 4 * v18, 0);
  objc_autoreleasePoolPop(v17);
  v30 = objc_msgSend_temporaryStateWithCommandBuffer_resourceList_(self, v25, buffer, v24, v26, v27, v28, v29);

  if (v30)
  {
    *(v30 + 72) = 0;
    *(v30 + 80) = 0;
    *(v30 + 64) = type;
    *(v30 + 68) = layout;
    *(v30 + 48) = v20;
    *(v30 + 56) = v18;
  }

  return v30;
}

- (MPSCNNConvolutionWeightsAndBiasesState)initWithWeights:(id)weights biases:(id)biases
{
  v7 = objc_autoreleasePoolPush();
  v14 = objc_msgSend_arrayWithObjects_(MEMORY[0x277CBEA60], v8, weights, v9, v10, v11, v12, v13, biases, 0);
  v26.receiver = self;
  v26.super_class = MPSCNNConvolutionWeightsAndBiasesState;
  v15 = [(MPSState *)&v26 initWithResources:v14];
  objc_autoreleasePoolPop(v7);
  if (v15)
  {
    if (weights)
    {
      weights = (objc_msgSend_length(weights, v16, v17, v18, v19, v20, v21, v22) >> 2);
    }

    if (biases)
    {
      v23 = objc_msgSend_length(biases, v16, v17, v18, v19, v20, v21, v22) >> 2;
      objc_msgSend_initializeWithWeightsCount_weightsOffset_weightsDataType_weightsLayout_biasesCount_biasesOffset_(v15, v24, weights, 0, 268435488, 0, v23, 0);
    }

    else
    {
      objc_msgSend_initializeWithWeightsCount_weightsOffset_weightsDataType_weightsLayout_biasesCount_biasesOffset_(v15, v16, weights, 0, 268435488, 0, 0, 0);
    }
  }

  return v15;
}

- (MPSCNNConvolutionWeightsAndBiasesState)initWithDevice:(id)device cnnConvolutionDescriptor:(MPSCNNConvolutionDescriptor *)descriptor
{
  v13 = objc_autoreleasePoolPush();
  outputFeatureChannels = descriptor->_outputFeatureChannels;
  v15 = descriptor->_kernelHeight * descriptor->_kernelWidth;
  if (!descriptor->_depthWiseConvolution)
  {
    v15 *= descriptor->_inputFeatureChannels / descriptor->_groups;
  }

  v16 = v15 * outputFeatureChannels;
  v17 = objc_msgSend_resourceListWithBufferSizes_(MEMORY[0x277CD72A0], v7, 4 * v15 * outputFeatureChannels, v8, v9, v10, v11, v12, 4 * outputFeatureChannels, 0);
  v21.receiver = self;
  v21.super_class = MPSCNNConvolutionWeightsAndBiasesState;
  v18 = [(MPSState *)&v21 initWithDevice:device resourceList:v17];
  objc_autoreleasePoolPop(v13);
  if (v18)
  {
    objc_msgSend_initializeWithWeightsCount_weightsOffset_weightsDataType_weightsLayout_biasesCount_biasesOffset_(v18, v19, v16, 0, 268435488, 0, outputFeatureChannels, 0);
  }

  return v18;
}

+ (MPSCNNConvolutionWeightsAndBiasesState)temporaryCNNConvolutionWeightsAndBiasesStateWithCommandBuffer:(id)commandBuffer cnnConvolutionDescriptor:(MPSCNNConvolutionDescriptor *)descriptor
{
  v13 = objc_autoreleasePoolPush();
  outputFeatureChannels = descriptor->_outputFeatureChannels;
  v15 = descriptor->_kernelHeight * descriptor->_kernelWidth;
  if (!descriptor->_depthWiseConvolution)
  {
    v15 *= descriptor->_inputFeatureChannels / descriptor->_groups;
  }

  v16 = v15 * outputFeatureChannels;
  v17 = objc_msgSend_resourceListWithBufferSizes_(MEMORY[0x277CD72A0], v7, 4 * v15 * outputFeatureChannels, v8, v9, v10, v11, v12, 4 * outputFeatureChannels, 0);
  objc_autoreleasePoolPop(v13);
  v23 = objc_msgSend_temporaryStateWithCommandBuffer_resourceList_(self, v18, commandBuffer, v17, v19, v20, v21, v22);

  if (v23)
  {
    v23->_weightsOffset = 0;
    v23->_biasesOffset = 0;
    v23->_weightsDataType = 268435488;
    v23->_weightsLayout = 0;
    v23->_numberOfWeights = v16;
    v23->_numberOfBiases = outputFeatureChannels;
  }

  return v23;
}

- (MPSCNNConvolutionWeightsAndBiasesState)initWithWeights:(id)weights weightsOffset:(NSUInteger)weightsOffset biases:(id)biases biasesOffset:(NSUInteger)biasesOffset cnnConvolutionDescriptor:(MPSCNNConvolutionDescriptor *)descriptor
{
  v13 = objc_autoreleasePoolPush();
  v20 = objc_msgSend_arrayWithObjects_(MEMORY[0x277CBEA60], v14, weights, v15, v16, v17, v18, v19, biases, 0);
  v25.receiver = self;
  v25.super_class = MPSCNNConvolutionWeightsAndBiasesState;
  v21 = [(MPSState *)&v25 initWithResources:v20];
  objc_autoreleasePoolPop(v13);
  if (v21)
  {
    v23 = descriptor->_kernelHeight * descriptor->_kernelWidth;
    if (!descriptor->_depthWiseConvolution)
    {
      v23 *= descriptor->_inputFeatureChannels / descriptor->_groups;
    }

    objc_msgSend_initializeWithWeightsCount_weightsOffset_weightsDataType_weightsLayout_biasesCount_biasesOffset_(v21, v22, v23 * descriptor->_outputFeatureChannels, weightsOffset, 268435488, 0, descriptor->_outputFeatureChannels, biasesOffset);
  }

  return v21;
}

- (MPSCNNConvolutionWeightsAndBiasesState)initWithWeights:(id)weights weightsOffset:(unint64_t)offset weightsDataType:(unsigned int)type weightsLayout:(unsigned int)layout biases:(id)biases biasesOffset:(unint64_t)biasesOffset cnnConvolutionDescriptor:(id)descriptor
{
  v11 = *&layout;
  v12 = *&type;
  v16 = objc_autoreleasePoolPush();
  v23 = objc_msgSend_arrayWithObjects_(MEMORY[0x277CBEA60], v17, weights, v18, v19, v20, v21, v22, biases, 0);
  v28.receiver = self;
  v28.super_class = MPSCNNConvolutionWeightsAndBiasesState;
  v24 = [(MPSState *)&v28 initWithResources:v23];
  objc_autoreleasePoolPop(v16);
  if (v24)
  {
    v26 = *(descriptor + 2) * *(descriptor + 1);
    if ((*(descriptor + 112) & 1) == 0)
    {
      v26 *= *(descriptor + 3) / *(descriptor + 8);
    }

    objc_msgSend_initializeWithWeightsCount_weightsOffset_weightsDataType_weightsLayout_biasesCount_biasesOffset_(v24, v25, v26 * *(descriptor + 4), offset, v12, v11, *(descriptor + 4), biasesOffset);
  }

  return v24;
}

@end