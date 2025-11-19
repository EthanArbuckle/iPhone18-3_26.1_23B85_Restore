@interface MPSCNNConvolutionWeightsAndBiasesState
+ (MPSCNNConvolutionWeightsAndBiasesState)temporaryCNNConvolutionWeightsAndBiasesStateWithCommandBuffer:(id)commandBuffer cnnConvolutionDescriptor:(MPSCNNConvolutionDescriptor *)descriptor;
+ (id)temporaryCNNConvolutionWeightsAndBiasesStateWithCommandBuffer:(id)a3 cnnConvolutionDescriptor:(id)a4 weightsDataType:(unsigned int)a5;
+ (id)temporaryCNNConvolutionWeightsAndBiasesStateWithCommandBuffer:(id)a3 cnnConvolutionDescriptor:(id)a4 weightsDataType:(unsigned int)a5 weightsLayout:(unsigned int)a6;
- (MPSCNNConvolutionWeightsAndBiasesState)initWithDevice:(id)a3 cnnConvolutionDescriptor:(id)a4 weightsDataType:(unsigned int)a5;
- (MPSCNNConvolutionWeightsAndBiasesState)initWithDevice:(id)a3 cnnConvolutionDescriptor:(id)a4 weightsDataType:(unsigned int)a5 weightsLayout:(unsigned int)a6;
- (MPSCNNConvolutionWeightsAndBiasesState)initWithDevice:(id)device cnnConvolutionDescriptor:(MPSCNNConvolutionDescriptor *)descriptor;
- (MPSCNNConvolutionWeightsAndBiasesState)initWithWeights:(id)a3 biases:(id)a4 weightsDataType:(unsigned int)a5;
- (MPSCNNConvolutionWeightsAndBiasesState)initWithWeights:(id)a3 biases:(id)a4 weightsDataType:(unsigned int)a5 weightsLayout:(unsigned int)a6;
- (MPSCNNConvolutionWeightsAndBiasesState)initWithWeights:(id)a3 weightsOffset:(unint64_t)a4 weightsDataType:(unsigned int)a5 weightsLayout:(unsigned int)a6 biases:(id)a7 biasesOffset:(unint64_t)a8 cnnConvolutionDescriptor:(id)a9;
- (MPSCNNConvolutionWeightsAndBiasesState)initWithWeights:(id)weights biases:(id)biases;
- (MPSCNNConvolutionWeightsAndBiasesState)initWithWeights:(id)weights weightsOffset:(NSUInteger)weightsOffset biases:(id)biases biasesOffset:(NSUInteger)biasesOffset cnnConvolutionDescriptor:(MPSCNNConvolutionDescriptor *)descriptor;
- (id)biases;
- (id)weights;
- (void)initializeWithWeightsCount:(unint64_t)a3 weightsOffset:(unint64_t)a4 weightsDataType:(unsigned int)a5 weightsLayout:(unsigned int)a6 biasesCount:(unint64_t)a7 biasesOffset:(unint64_t)a8;
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

- (void)initializeWithWeightsCount:(unint64_t)a3 weightsOffset:(unint64_t)a4 weightsDataType:(unsigned int)a5 weightsLayout:(unsigned int)a6 biasesCount:(unint64_t)a7 biasesOffset:(unint64_t)a8
{
  v14 = 2;
  if (a5 != 268435472)
  {
    v14 = 0;
  }

  if (a5 == 268435488)
  {
    v15 = 4;
  }

  else
  {
    v15 = v14;
  }

  if (a5 == 8)
  {
    v16 = 1;
  }

  else
  {
    v16 = v15;
  }

  v23 = objc_msgSend_bufferSizeAtIndex_(self, a2, 0, a4, *&a5, *&a6, a7, a8);
  if (a7)
  {
    v24 = objc_msgSend_bufferSizeAtIndex_(self, v17, 1, v18, v19, v20, v21, v22);
    if (a5 == 268435472)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v24 = 0;
    if (a5 == 268435472)
    {
      goto LABEL_16;
    }
  }

  if (a5 != 268435488 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

LABEL_16:
  if (((v16 - 1) & a4) != 0 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if ((a8 & 3) != 0 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (a4 + v16 * a3 > v23 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (a8 + 4 * a7 > v24 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  self->_weightsDataType = a5;
  self->_numberOfWeights = a3;
  self->_numberOfBiases = a7;
  self->_weightsLayout = a6;
  self->_weightsOffset = a4;
  self->_biasesOffset = a8;
}

- (MPSCNNConvolutionWeightsAndBiasesState)initWithWeights:(id)a3 biases:(id)a4 weightsDataType:(unsigned int)a5
{
  v5 = *&a5;
  v9 = objc_autoreleasePoolPush();
  v16 = objc_msgSend_arrayWithObjects_(MEMORY[0x277CBEA60], v10, a3, v11, v12, v13, v14, v15, a4, 0);
  v32.receiver = self;
  v32.super_class = MPSCNNConvolutionWeightsAndBiasesState;
  v17 = [(MPSState *)&v32 initWithResources:v16];
  objc_autoreleasePoolPop(v9);
  if (v17)
  {
    if (a3)
    {
      v25 = objc_msgSend_length(a3, v18, v19, v20, v21, v22, v23, v24);
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

      a3 = (v25 / v26);
    }

    if (a4)
    {
      v29 = objc_msgSend_length(a4, v18, v19, v20, v21, v22, v23, v24) >> 2;
      objc_msgSend_initializeWithWeightsCount_weightsOffset_weightsDataType_weightsLayout_biasesCount_biasesOffset_(v17, v30, a3, 0, v5, 0, v29, 0);
    }

    else
    {
      objc_msgSend_initializeWithWeightsCount_weightsOffset_weightsDataType_weightsLayout_biasesCount_biasesOffset_(v17, v18, a3, 0, v5, 0, 0, 0);
    }
  }

  return v17;
}

- (MPSCNNConvolutionWeightsAndBiasesState)initWithWeights:(id)a3 biases:(id)a4 weightsDataType:(unsigned int)a5 weightsLayout:(unsigned int)a6
{
  v6 = *&a6;
  v7 = *&a5;
  v11 = objc_autoreleasePoolPush();
  v18 = objc_msgSend_arrayWithObjects_(MEMORY[0x277CBEA60], v12, a3, v13, v14, v15, v16, v17, a4, 0);
  v34.receiver = self;
  v34.super_class = MPSCNNConvolutionWeightsAndBiasesState;
  v19 = [(MPSState *)&v34 initWithResources:v18];
  objc_autoreleasePoolPop(v11);
  if (v19)
  {
    if (a3)
    {
      v27 = objc_msgSend_length(a3, v20, v21, v22, v23, v24, v25, v26);
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

      a3 = (v27 / v28);
    }

    if (a4)
    {
      v31 = objc_msgSend_length(a4, v20, v21, v22, v23, v24, v25, v26) >> 2;
      objc_msgSend_initializeWithWeightsCount_weightsOffset_weightsDataType_weightsLayout_biasesCount_biasesOffset_(v19, v32, a3, 0, v7, v6, v31, 0);
    }

    else
    {
      objc_msgSend_initializeWithWeightsCount_weightsOffset_weightsDataType_weightsLayout_biasesCount_biasesOffset_(v19, v20, a3, 0, v7, v6, 0, 0);
    }
  }

  return v19;
}

- (MPSCNNConvolutionWeightsAndBiasesState)initWithDevice:(id)a3 cnnConvolutionDescriptor:(id)a4 weightsDataType:(unsigned int)a5
{
  v5 = *&a5;
  v15 = objc_autoreleasePoolPush();
  if (v5 != 268435472 && v5 != 268435488 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v16 = *(a4 + 4);
  v17 = *(a4 + 2) * *(a4 + 1);
  if ((*(a4 + 112) & 1) == 0)
  {
    v17 *= *(a4 + 3) / *(a4 + 8);
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
  v23 = [(MPSState *)&v26 initWithDevice:a3 resourceList:v22];
  objc_autoreleasePoolPop(v15);
  if (v23)
  {
    objc_msgSend_initializeWithWeightsCount_weightsOffset_weightsDataType_weightsLayout_biasesCount_biasesOffset_(v23, v24, v18, 0, v5, 0, v16, 0);
  }

  return v23;
}

- (MPSCNNConvolutionWeightsAndBiasesState)initWithDevice:(id)a3 cnnConvolutionDescriptor:(id)a4 weightsDataType:(unsigned int)a5 weightsLayout:(unsigned int)a6
{
  v6 = *&a6;
  v7 = *&a5;
  v17 = objc_autoreleasePoolPush();
  if (v7 != 268435472 && v7 != 268435488 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v18 = *(a4 + 4);
  v19 = *(a4 + 2) * *(a4 + 1);
  if ((*(a4 + 112) & 1) == 0)
  {
    v19 *= *(a4 + 3) / *(a4 + 8);
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
  v25 = [(MPSState *)&v28 initWithDevice:a3 resourceList:v24];
  objc_autoreleasePoolPop(v17);
  if (v25)
  {
    objc_msgSend_initializeWithWeightsCount_weightsOffset_weightsDataType_weightsLayout_biasesCount_biasesOffset_(v25, v26, v20, 0, v7, v6, v18, 0);
  }

  return v25;
}

+ (id)temporaryCNNConvolutionWeightsAndBiasesStateWithCommandBuffer:(id)a3 cnnConvolutionDescriptor:(id)a4 weightsDataType:(unsigned int)a5
{
  v15 = objc_autoreleasePoolPush();
  if (a5 != 268435472 && a5 != 268435488 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v16 = *(a4 + 4);
  v17 = *(a4 + 2) * *(a4 + 1);
  if ((*(a4 + 112) & 1) == 0)
  {
    v17 *= *(a4 + 3) / *(a4 + 8);
  }

  v18 = v17 * v16;
  v19 = 1;
  v20 = 2;
  if (a5 != 268435472)
  {
    v20 = 0;
  }

  if (a5 == 268435488)
  {
    v21 = 4;
  }

  else
  {
    v21 = v20;
  }

  if (a5 != 8)
  {
    v19 = v21;
  }

  v22 = objc_msgSend_resourceListWithBufferSizes_(MEMORY[0x277CD72A0], v9, v19 * v18, v10, v11, v12, v13, v14, 4 * v16, 0);
  objc_autoreleasePoolPop(v15);
  v28 = objc_msgSend_temporaryStateWithCommandBuffer_resourceList_(a1, v23, a3, v22, v24, v25, v26, v27);

  if (v28)
  {
    *(v28 + 72) = 0;
    *(v28 + 80) = 0;
    *(v28 + 64) = a5;
    *(v28 + 68) = 0;
    *(v28 + 48) = v18;
    *(v28 + 56) = v16;
  }

  return v28;
}

+ (id)temporaryCNNConvolutionWeightsAndBiasesStateWithCommandBuffer:(id)a3 cnnConvolutionDescriptor:(id)a4 weightsDataType:(unsigned int)a5 weightsLayout:(unsigned int)a6
{
  v17 = objc_autoreleasePoolPush();
  if (a5 != 268435472 && a5 != 268435488 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v18 = *(a4 + 4);
  v19 = *(a4 + 2) * *(a4 + 1);
  if ((*(a4 + 112) & 1) == 0)
  {
    v19 *= *(a4 + 3) / *(a4 + 8);
  }

  v20 = v19 * v18;
  v21 = 1;
  v22 = 2;
  if (a5 != 268435472)
  {
    v22 = 0;
  }

  if (a5 == 268435488)
  {
    v23 = 4;
  }

  else
  {
    v23 = v22;
  }

  if (a5 != 8)
  {
    v21 = v23;
  }

  v24 = objc_msgSend_resourceListWithBufferSizes_(MEMORY[0x277CD72A0], v11, v21 * v20, v12, v13, v14, v15, v16, 4 * v18, 0);
  objc_autoreleasePoolPop(v17);
  v30 = objc_msgSend_temporaryStateWithCommandBuffer_resourceList_(a1, v25, a3, v24, v26, v27, v28, v29);

  if (v30)
  {
    *(v30 + 72) = 0;
    *(v30 + 80) = 0;
    *(v30 + 64) = a5;
    *(v30 + 68) = a6;
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
  v23 = objc_msgSend_temporaryStateWithCommandBuffer_resourceList_(a1, v18, commandBuffer, v17, v19, v20, v21, v22);

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

- (MPSCNNConvolutionWeightsAndBiasesState)initWithWeights:(id)a3 weightsOffset:(unint64_t)a4 weightsDataType:(unsigned int)a5 weightsLayout:(unsigned int)a6 biases:(id)a7 biasesOffset:(unint64_t)a8 cnnConvolutionDescriptor:(id)a9
{
  v11 = *&a6;
  v12 = *&a5;
  v16 = objc_autoreleasePoolPush();
  v23 = objc_msgSend_arrayWithObjects_(MEMORY[0x277CBEA60], v17, a3, v18, v19, v20, v21, v22, a7, 0);
  v28.receiver = self;
  v28.super_class = MPSCNNConvolutionWeightsAndBiasesState;
  v24 = [(MPSState *)&v28 initWithResources:v23];
  objc_autoreleasePoolPop(v16);
  if (v24)
  {
    v26 = *(a9 + 2) * *(a9 + 1);
    if ((*(a9 + 112) & 1) == 0)
    {
      v26 *= *(a9 + 3) / *(a9 + 8);
    }

    objc_msgSend_initializeWithWeightsCount_weightsOffset_weightsDataType_weightsLayout_biasesCount_biasesOffset_(v24, v25, v26 * *(a9 + 4), a4, v12, v11, *(a9 + 4), a8);
  }

  return v24;
}

@end