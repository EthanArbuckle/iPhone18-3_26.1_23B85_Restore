@interface MLCDeviceCPU
- ($ADD8B2928F54472B65CB84445603561F)getGateDesc:(SEL)a3 lstmParams:(unint64_t)a4;
- (BOOL)compileLayerDeviceOps:(id)a3 sourceTensors:(id)a4 resultTensor:(id)a5;
- (BOOL)compileLayerDeviceOps:(id)a3 sourceTensors:(id)a4 resultTensors:(id)a5;
- (BOOL)needToAllocateDeviceMemoryForTensor:(id)a3;
- (BOOL)shareDeviceMemoryWithResultTensor:(id)a3 sourceTensor:(id)a4;
- (BOOL)transferTensor:(id)a3 fromDevice:(id)a4;
- (BOOL)updateDeviceMemoryForTensor:(id)a3;
- (MLCDeviceCPU)initWithType:(int)a3;
- (NSString)description;
- (id)batchNormalizationLayerWithChannelCount:(unint64_t)a3 mean:(id)a4 variance:(id)a5 beta:(id)a6 gamma:(id)a7 varianceEpsilon:(float)a8 momentum:(float)a9;
- (id)betaGradients:(id)a3;
- (id)biasesGradients:(id)a3;
- (id)convolutionLayerWithDescriptor:(id)a3 weights:(id)a4 biasTerms:(id)a5;
- (id)convolutionTransposeLayerWithDescriptor:(id)a3 weights:(id)a4 biasTerms:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dropoutLayerWithRate:(float)a3 seed:(unint64_t)a4;
- (id)embeddingWeightsGradients:(id)a3 embeddingCount:(unint64_t)a4 embeddingDimension:(unint64_t)a5;
- (id)fullyConnectedLayerWithDescriptor:(id)a3 weights:(id)a4 biasTerms:(id)a5;
- (id)fusedBatchNormalizationAndNeuronLayerWithDescriptor:(id)a3 numOfFeatureChannels:(unint64_t)a4 mean:(id)a5 variance:(id)a6 beta:(id)a7 gamma:(id)a8 varianceEpsilon:(float)a9 momentum:(float)a10;
- (id)fusedConvolutionAndNeuronLayerWithDescriptor:(id)a3 convolutionDescriptor:(id)a4 weights:(id)a5 biasTerms:(id)a6;
- (id)fusedConvolutionBatchNormalizationAndNeuronLayerWithDescriptor:(id)a3 mean:(id)a4 variance:(id)a5 beta:(id)a6 gamma:(id)a7 varianceEpsilon:(float)a8 momentum:(float)a9 neuronDescriptor:(id)a10 weights:(id)a11 biasTerms:(id)a12;
- (id)fusedConvolutionGroupNormalizationAndNeuronLayerWithDescriptor:(id)a3 beta:(id)a4 gamma:(id)a5 varianceEpsilon:(float)a6 momentum:(float)a7 groupCount:(unint64_t)a8 neuronDescriptor:(id)a9 weights:(id)a10 biasTerms:(id)a11;
- (id)fusedConvolutionInstanceNormalizationAndNeuronLayerWithDescriptor:(id)a3 beta:(id)a4 gamma:(id)a5 varianceEpsilon:(float)a6 momentum:(float)a7 neuronDescriptor:(id)a8 weights:(id)a9 biasTerms:(id)a10;
- (id)fusedFullyConnectedAndNeuronLayerWithDescriptor:(id)a3 convolutionDescriptor:(id)a4 weights:(id)a5 biasTerms:(id)a6;
- (id)fusedFullyConnectedAndSoftmaxLayerWithDescriptor:(id)a3 weights:(id)a4 biasTerms:(id)a5 softmaxOp:(int)a6;
- (id)fusedFullyConnectedBatchNormalizationAndNeuronLayerWithDescriptor:(id)a3 mean:(id)a4 variance:(id)a5 beta:(id)a6 gamma:(id)a7 varianceEpsilon:(float)a8 momentum:(float)a9 neuronDescriptor:(id)a10 weights:(id)a11 biasTerms:(id)a12;
- (id)fusedGroupNormalizationAndNeuronLayerWithDescriptor:(id)a3 featureChannelCount:(unint64_t)a4 groupCount:(unint64_t)a5 beta:(id)a6 gamma:(id)a7 varianceEpsilon:(float)a8;
- (id)fusedInstanceNormalizationAndNeuronLayerWithDescriptor:(id)a3 numOfFeatureChannels:(unint64_t)a4 mean:(id)a5 variance:(id)a6 beta:(id)a7 gamma:(id)a8 varianceEpsilon:(float)a9 momentum:(float)a10;
- (id)gammaGradients:(id)a3;
- (id)gatherLayerWithDimension:(unint64_t)a3;
- (id)getHostPointerIfUnifiedDeviceMemory:(id)a3;
- (id)gramMatrixLayerWithScaleFactor:(float)a3;
- (id)groupNormalizationLayerWithFeatureChannelCount:(unint64_t)a3 groupCount:(unint64_t)a4 beta:(id)a5 gamma:(id)a6 varianceEpsilon:(float)a7;
- (id)instanceNormalizationLayerWithChannelCount:(unint64_t)a3 mean:(id)a4 variance:(id)a5 beta:(id)a6 gamma:(id)a7 varianceEpsilon:(float)a8 momentum:(float)a9;
- (id)lstmBiasGradient:(id)a3 mlcBiasIndex:(unint64_t)a4;
- (id)lstmHiddenWeightGradient:(id)a3 mlcWeightIndex:(unint64_t)a4;
- (id)lstmInputWeightGradient:(id)a3 mlcWeightIndex:(unint64_t)a4;
- (id)lstmLayerWithDescriptor:(id)a3 inputWeights:(id)a4 hiddenWeights:(id)a5 peepholeWeights:(id)a6 biasTerms:(id)a7 gateActivations:(id)a8 outputResultActivation:(id)a9 inferenceOnly:(BOOL)a10;
- (id)mhaAttnBiasGradient:(id)a3 withSize:(unint64_t)a4 index:(unint64_t)a5;
- (id)mhaBiasGradient:(id)a3 withSize:(unint64_t)a4 index:(unint64_t)a5;
- (id)mhaWeightGradient:(id)a3 withSize:(unint64_t)a4 index:(unint64_t)a5;
- (id)neuronLayerWithDescriptor:(id)a3;
- (id)poolingLayerWithDescriptor:(id)a3 paddingSizes:(unint64_t *)a4;
- (id)readFromDevice:(id)a3 deviceIndex:(unint64_t)a4 allocateData:(BOOL)a5 batchSize:(unint64_t)a6;
- (id)readTensor:(id)a3;
- (id)readTensor:(id)a3 fromDeviceIndex:(unint64_t)a4;
- (id)reshapeLayerWithShape:(id)a3;
- (id)selectLayer;
- (id)sliceLayerWithbegin:(id)a3 end:(id)a4 stride:(id)a5 inferenceOnly:(BOOL)a6;
- (id)splitLayerWithDimension:(unint64_t)a3;
- (id)weightsGradients:(id)a3;
- (unint64_t)deviceMemorySizeForTensor:(id)a3;
- (unint64_t)deviceMemorySizeForTensor:(id)a3 batchSize:(unint64_t)a4;
- (void)accumulateParams:(void *)a3 gradients:(void *)a4 accumulators:(void *)a5 numOfParameters:(unint64_t)a6 inArrayOfParams:(id)a7;
- (void)allocateDeviceDataForGlobalNormClippingWithOptimizer:(id)a3 updatableParameterCount:(unint64_t)a4;
- (void)allocateDeviceMemoryForTensor:(id)a3;
- (void)allocateParameterGradientsForDeviceOps:(id)a3 parameters:(id)a4;
- (void)allocateResultTensor:(id)a3;
- (void)broadcastTensor:(id)a3;
- (void)commitAndWaitForCompletion:(id)a3 enableProfiling:(BOOL)a4 graphExecutionTime:(id)a5 graphResultTensor:(id)a6;
- (void)commitWithCompletionHandler:(id)a3 enableProfiling:(BOOL)a4 graphExecutionTime:(id)a5 graphResultTensor:(id)a6;
- (void)convertUpdatesToTensorDataForLayer:(id)a3;
- (void)copyBiasFromBNNSToMLCTensor:(id)a3 biasTensors:(id)a4 baseGateIndex:(unint64_t)a5 lstmDescriptor:(id)a6;
- (void)createBNNSDesc2DForLSTMWeights:(id)a3 tensorParameters:(id)a4 deviceOptimizers:(id)a5 isInputWeight:(BOOL)a6;
- (void)deallocateDeviceMemoryForTensor:(id)a3;
- (void)dispatchBroadcastTensor:(id)a3;
- (void)dispatchForwardAndGradientLossLayer:(id)a3 sourceTensor:(id)a4 labelsTensor:(id)a5 labelsTensorStride:(unint64_t)a6 weightsTensor:(id)a7 resultTensor:(id)a8 resultGradientTensor:(id)a9;
- (void)dispatchForwardConcatLayer:(id)a3 sourceTensors:(id)a4 resultTensor:(id)a5;
- (void)dispatchForwardEmbeddingLayer:(id)a3 weight:(id)a4 sourceTensor:(id)a5 resultTensor:(id)a6;
- (void)dispatchForwardGatherLayer:(id)a3 sourceTensors:(id)a4 resultTensor:(id)a5 forTraining:(BOOL)a6;
- (void)dispatchForwardLayer:(id)a3 sourceTensor:(id)a4 resultTensor:(id)a5 resultStateIsTemporary:(BOOL)a6 forTraining:(BOOL)a7;
- (void)dispatchForwardLayer:(id)a3 sourceTensor:(id)a4 secondaryTensor:(id)a5 tertiaryTensor:(id)a6 resultTensor:(id)a7 resultStateIsTemporary:(BOOL)a8 forTraining:(BOOL)a9;
- (void)dispatchForwardLossLayer:(id)a3 sourceTensor:(id)a4 labelsTensor:(id)a5 labelsTensorStride:(unint64_t)a6 weightsTensor:(id)a7 resultTensor:(id)a8 resultStateIsTemporary:(BOOL)a9 forTraining:(BOOL)a10;
- (void)dispatchForwardMHALayer:(id)a3 sourceTensors:(id)a4 resultTensor:(id)a5 resultStateIsTemporary:(BOOL)a6 forTraining:(BOOL)a7;
- (void)dispatchForwardMatMulLayer:(id)a3 sourceTensors:(id)a4 resultTensor:(id)a5;
- (void)dispatchForwardReduceLayer:(id)a3 sourceTensor:(id)a4 resultTensor:(id)a5 reductionType:(int)a6 reduceDimensions:(id)a7 forTraining:(BOOL)a8;
- (void)dispatchForwardScatterLayer:(id)a3 sourceTensors:(id)a4 resultTensor:(id)a5 forTraining:(BOOL)a6;
- (void)dispatchForwardSliceLayer:(id)a3 sourceTensor:(id)a4 resultTensor:(id)a5 forTraining:(BOOL)a6;
- (void)dispatchForwardSplitLayer:(id)a3 sourceTensor:(id)a4 resultTensors:(id)a5 forConcat:(BOOL)a6;
- (void)dispatchGradientConcatLayer:(id)a3 sourceGradientTensor:(id)a4 resultGradientTensors:(id)a5;
- (void)dispatchGradientEmbeddingLayer:(id)a3 sourceGradientTensor:(id)a4;
- (void)dispatchGradientLayer:(id)a3 sourceGradientTensor:(id)a4 resultGradientTensor:(id)a5;
- (void)dispatchGradientLayer:(id)a3 sourceGradientTensor:(id)a4 resultGradientTensor:(id)a5 secondaryResultGradientTensor:(id)a6;
- (void)dispatchGradientLossLayer:(id)a3 sourceGradientTensor:(id)a4 labelsTensor:(id)a5 labelsTensorStride:(unint64_t)a6 weightsTensor:(id)a7 resultGradientTensor:(id)a8;
- (void)dispatchGradientMHALayer:(id)a3 sourceGradientTensor:(id)a4 resultGradientTensors:(id)a5 resultStateIsTemporary:(BOOL)a6;
- (void)dispatchGradientMatMulLayer:(id)a3 sourceGradientTensor:(id)a4 resultGradientTensors:(id)a5;
- (void)dispatchGradientReduceLayer:(id)a3 sourceGradientTensor:(id)a4 resultGradientTensor:(id)a5 reductionType:(int)a6 reduceDimensions:(id)a7;
- (void)dispatchGradientSelectLayer:(id)a3 conditionTensor:(id)a4 sourceGradientTensor:(id)a5 resultGradientTensors:(id)a6;
- (void)dispatchGradientSliceLayer:(id)a3 sourceGradientTensor:(id)a4 resultGradientTensor:(id)a5;
- (void)dispatchGradientSplitLayer:(id)a3 sourceGradientTensors:(id)a4 resultGradientTensor:(id)a5 forConcat:(BOOL)a6;
- (void)dispatchRNNForwardLayer:(id)a3 sourceTensors:(id)a4 resultTensors:(id)a5 resultStateIsTemporary:(BOOL)a6 forTraining:(BOOL)a7;
- (void)dispatchRNNGradientLayer:(id)a3 sourceGradientTensors:(id)a4 resultGradientTensors:(id)a5;
- (void)dispatchReadTensor:(id)a3 targetBuffer:(void *)a4 batchSize:(unint64_t)a5;
- (void)exportBiasGateOptimizerDataForDeviceOps:(id)a3 biasTensors:(id)a4 gateIndex:(unint64_t)a5 optimizerDataIndex:(unint64_t)a6;
- (void)identifySourceAndOrResultTensorsNeededByGradient:(id)a3;
- (void)optimizerStepForSingleParameterLSTM:(id)a3 tensorParameters:(id)a4 parameterForGateDesc:(id *)a5 gradientsForGateDesc:(id *)a6 parameterMomentumDescData:(id)a7 gateIndex:(unint64_t)a8 deviceOptimizers:(id)a9 isStackedInputWeight:(BOOL)a10;
- (void)readTensor:(id)a3 targetBuffer:(void *)a4;
- (void)reloadParameterDataFromHostToDeviceMemoryForTensor:(id)a3;
- (void)restoreRNNParamsWithDeviceOps:(id)a3 optimizer:(id)a4 inputWeightsParameter:(id)a5 hiddenWeightsParameter:(id)a6 biasesParameter:(id)a7 arrayOfParams:(id)a8;
- (void)saveOrRestoreLSTMBiasesAndAccumulators:(id)a3 auxParameter:(id)a4 auxAccumulators:(id)a5 mlcIndex:(unint64_t)a6 auxIndex:(unint64_t)a7 saveParameter:(BOOL)a8;
- (void)setConvolutionGradientComputeWeightsAndBiasOnly:(id)a3;
- (void)setDeviceMemoryForTensor:(id)a3 data:(id)a4;
- (void)setFullyConnectedGradientComputeWeightsAndBiasOnly:(id)a3;
- (void)setOptimizerLearningRate:(id)a3 learningRate:(float)a4;
- (void)setOptimizerTimeStep:(id)a3 timeStep:(unint64_t)a4;
- (void)shareResultTensor:(id)a3 sourceTensor:(id)a4 deviceOps:(id)a5;
- (void)sumSharedGradientsForConvolutionLayerTensorParameter:(id)a3 layerIndexForSummedGradients:(unint64_t)a4;
- (void)sumSharedGradientsForNormalizationLayerTensorParameter:(id)a3 layerIndexForSummedGradients:(unint64_t)a4 isBetaTensor:(BOOL)a5;
- (void)synchronizeUpdatesForLayer:(id)a3;
- (void)updateAllParametersWithOptimizer:(id)a3 arrayOfParameters:(id)a4;
- (void)updateBatchNormalizationLayer:(id)a3 optimizer:(id)a4 betaParameter:(id)a5 gammaParameter:(id)a6 meanTensor:(id)a7 varianceTensor:(id)a8 arrayOfParams:(id)a9;
- (void)updateEmbeddingLayer:(id)a3 weightsParameter:(id)a4 optimizer:(id)a5 arrayOfParams:(id)a6;
- (void)updateFullyConnectedLayer:(id)a3 optimizer:(id)a4 weightsParameter:(id)a5 biasesParameter:(id)a6 arrayOfParams:(id)a7;
- (void)updateGradientDescriptorsForDeviceOps:(id)a3 sourceTensors:(id)a4 resultTensor:(id)a5;
- (void)updateMultiheadAttentionLayer:(id)a3 optimizer:(id)a4 weightsParameter:(id)a5 biasesParameter:(id)a6 arrayOfParams:(id)a7;
- (void)updateRNNLayer:(id)a3 optimizer:(id)a4 inputWeightsParameter:(id)a5 hiddenWeightsParameter:(id)a6 biasesParameter:(id)a7 arrayOfParams:(id)a8;
- (void)updateTensorParameter:(id)a3 optimizer:(id)a4 gradient:(id)a5 arrayOfParams:(id)a6;
- (void)writeToAllDevices:(id)a3 allocateData:(BOOL)a4 batchSize:(unint64_t)a5;
- (void)writeToDevice:(id)a3 batchSize:(unint64_t)a4;
- (void)writeToDevice:(id)a3 sourceBuffer:(void *)a4 batchSize:(unint64_t)a5;
@end

@implementation MLCDeviceCPU

- (id)batchNormalizationLayerWithChannelCount:(unint64_t)a3 mean:(id)a4 variance:(id)a5 beta:(id)a6 gamma:(id)a7 varianceEpsilon:(float)a8 momentum:(float)a9
{
  v26[1] = *MEMORY[0x277D85DE8];
  v16 = MEMORY[0x277CCABB0];
  v17 = a7;
  v18 = a6;
  v19 = a5;
  v20 = a4;
  v21 = [v16 numberWithUnsignedInteger:a3];
  v26[0] = v21;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:1];
  v23 = CPU_CreateNormalizationLayer(0, self, 0, v22, 1, v20, v19, v18, a8, a9, v17);

  v24 = *MEMORY[0x277D85DE8];

  return v23;
}

- (id)fusedBatchNormalizationAndNeuronLayerWithDescriptor:(id)a3 numOfFeatureChannels:(unint64_t)a4 mean:(id)a5 variance:(id)a6 beta:(id)a7 gamma:(id)a8 varianceEpsilon:(float)a9 momentum:(float)a10
{
  v29[1] = *MEMORY[0x277D85DE8];
  v18 = MEMORY[0x277CCABB0];
  v19 = a8;
  v20 = a7;
  v21 = a6;
  v22 = a5;
  v23 = a3;
  v24 = [v18 numberWithUnsignedInteger:a4];
  v29[0] = v24;
  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:1];
  v26 = CPU_CreateNormalizationLayer(0, self, v23, v25, 1, v22, v21, v20, a9, a10, v19);

  v27 = *MEMORY[0x277D85DE8];

  return v26;
}

- (id)instanceNormalizationLayerWithChannelCount:(unint64_t)a3 mean:(id)a4 variance:(id)a5 beta:(id)a6 gamma:(id)a7 varianceEpsilon:(float)a8 momentum:(float)a9
{
  v26[1] = *MEMORY[0x277D85DE8];
  v16 = MEMORY[0x277CCABB0];
  v17 = a7;
  v18 = a6;
  v19 = a5;
  v20 = a4;
  v21 = [v16 numberWithUnsignedInteger:a3];
  v26[0] = v21;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:1];
  v23 = CPU_CreateNormalizationLayer(1, self, 0, v22, 1, v20, v19, v18, a8, a9, v17);

  v24 = *MEMORY[0x277D85DE8];

  return v23;
}

- (id)fusedInstanceNormalizationAndNeuronLayerWithDescriptor:(id)a3 numOfFeatureChannels:(unint64_t)a4 mean:(id)a5 variance:(id)a6 beta:(id)a7 gamma:(id)a8 varianceEpsilon:(float)a9 momentum:(float)a10
{
  v29[1] = *MEMORY[0x277D85DE8];
  v18 = MEMORY[0x277CCABB0];
  v19 = a8;
  v20 = a7;
  v21 = a6;
  v22 = a5;
  v23 = a3;
  v24 = [v18 numberWithUnsignedInteger:a4];
  v29[0] = v24;
  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:1];
  v26 = CPU_CreateNormalizationLayer(1, self, v23, v25, 1, v22, v21, v20, a9, a10, v19);

  v27 = *MEMORY[0x277D85DE8];

  return v26;
}

- (id)groupNormalizationLayerWithFeatureChannelCount:(unint64_t)a3 groupCount:(unint64_t)a4 beta:(id)a5 gamma:(id)a6 varianceEpsilon:(float)a7
{
  v20[1] = *MEMORY[0x277D85DE8];
  v12 = MEMORY[0x277CCABB0];
  v13 = a6;
  v14 = a5;
  v15 = [v12 numberWithUnsignedInteger:a3];
  v20[0] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
  v17 = CPU_CreateNormalizationLayer(3, self, 0, v16, a4, 0, 0, v14, a7, 1.0, v13);

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

- (id)fusedGroupNormalizationAndNeuronLayerWithDescriptor:(id)a3 featureChannelCount:(unint64_t)a4 groupCount:(unint64_t)a5 beta:(id)a6 gamma:(id)a7 varianceEpsilon:(float)a8
{
  v23[1] = *MEMORY[0x277D85DE8];
  v14 = MEMORY[0x277CCABB0];
  v15 = a7;
  v16 = a6;
  v17 = a3;
  v18 = [v14 numberWithUnsignedInteger:a4];
  v23[0] = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];
  v20 = CPU_CreateNormalizationLayer(3, self, v17, v19, a5, 0, 0, v16, a8, 1.0, v15);

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

- (id)convolutionLayerWithDescriptor:(id)a3 weights:(id)a4 biasTerms:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_autoreleasePoolPush();
  v12 = [_MLCCPUConvolution layerWithDevice:self weights:v9 biasTerms:v10 convolutionDescriptor:v8 neuronDescriptor:0];
  v13 = [v12 deviceOps];
  v14 = [v13 copy];

  [v12 setDeviceOps:0];
  v15 = MEMORY[0x277CBEBF8];
  if (v14)
  {
    v15 = v14;
  }

  v16 = v15;

  objc_autoreleasePoolPop(v11);

  return v16;
}

- (id)fusedConvolutionAndNeuronLayerWithDescriptor:(id)a3 convolutionDescriptor:(id)a4 weights:(id)a5 biasTerms:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = objc_autoreleasePoolPush();
  v15 = [_MLCCPUConvolution layerWithDevice:self weights:v12 biasTerms:v13 convolutionDescriptor:v11 neuronDescriptor:v10];
  v16 = [v15 deviceOps];
  v17 = [v16 copy];

  [v15 setDeviceOps:0];
  v18 = MEMORY[0x277CBEBF8];
  if (v17)
  {
    v18 = v17;
  }

  v19 = v18;

  objc_autoreleasePoolPop(v14);

  return v19;
}

- (id)fusedConvolutionBatchNormalizationAndNeuronLayerWithDescriptor:(id)a3 mean:(id)a4 variance:(id)a5 beta:(id)a6 gamma:(id)a7 varianceEpsilon:(float)a8 momentum:(float)a9 neuronDescriptor:(id)a10 weights:(id)a11 biasTerms:(id)a12
{
  v21 = a12;
  v22 = a11;
  v23 = a10;
  v24 = a7;
  v25 = a6;
  v26 = a5;
  v27 = a4;
  v28 = a3;
  if ([v28 isConvolutionTranspose])
  {
    v29 = 7;
  }

  else
  {
    v29 = 6;
  }

  v30 = CPU_CreateFusedConvolutionNormalizationAndNeuronLayer(a8, a9, self, v22, v21, v28, v23, v27, v26, v25, v24, 0, v29);

  return v30;
}

- (id)fusedConvolutionInstanceNormalizationAndNeuronLayerWithDescriptor:(id)a3 beta:(id)a4 gamma:(id)a5 varianceEpsilon:(float)a6 momentum:(float)a7 neuronDescriptor:(id)a8 weights:(id)a9 biasTerms:(id)a10
{
  v18 = a10;
  v19 = a9;
  v20 = a8;
  v21 = a5;
  v22 = a4;
  v23 = a3;
  if ([v23 isConvolutionTranspose])
  {
    v24 = 23;
  }

  else
  {
    v24 = 22;
  }

  v25 = CPU_CreateFusedConvolutionNormalizationAndNeuronLayer(a6, a7, self, v19, v18, v23, v20, 0, 0, v22, v21, 0, v24);

  return v25;
}

- (id)fusedConvolutionGroupNormalizationAndNeuronLayerWithDescriptor:(id)a3 beta:(id)a4 gamma:(id)a5 varianceEpsilon:(float)a6 momentum:(float)a7 groupCount:(unint64_t)a8 neuronDescriptor:(id)a9 weights:(id)a10 biasTerms:(id)a11
{
  v20 = a11;
  v21 = a10;
  v22 = a9;
  v23 = a5;
  v24 = a4;
  v25 = a3;
  if ([v25 isConvolutionTranspose])
  {
    v26 = 36;
  }

  else
  {
    v26 = 35;
  }

  v27 = CPU_CreateFusedConvolutionNormalizationAndNeuronLayer(a6, a7, self, v21, v20, v25, v22, 0, 0, v24, v23, a8, v26);

  return v27;
}

- (id)convolutionTransposeLayerWithDescriptor:(id)a3 weights:(id)a4 biasTerms:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_autoreleasePoolPush();
  v12 = [_MLCCPUConvolution layerWithDevice:self weights:v9 biasTerms:v10 convolutionDescriptor:v8 neuronDescriptor:0];
  v13 = [v12 deviceOps];
  v14 = [v13 copy];

  [v12 setDeviceOps:0];
  v15 = MEMORY[0x277CBEBF8];
  if (v14)
  {
    v15 = v14;
  }

  v16 = v15;

  objc_autoreleasePoolPop(v11);

  return v16;
}

- (id)dropoutLayerWithRate:(float)a3 seed:(unint64_t)a4
{
  v7 = objc_autoreleasePoolPush();
  *&v8 = a3;
  v9 = [_MLCCPUDropout layerWithDevice:self rate:a4 seed:v8];
  v10 = [v9 deviceOps];
  v11 = [v10 copy];

  [v9 setDeviceOps:0];
  v12 = MEMORY[0x277CBEBF8];
  if (v11)
  {
    v12 = v11;
  }

  v13 = v12;

  objc_autoreleasePoolPop(v7);

  return v13;
}

- (id)fullyConnectedLayerWithDescriptor:(id)a3 weights:(id)a4 biasTerms:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_autoreleasePoolPush();
  v12 = [_MLCCPUFullyConnected layerWithDevice:self weights:v9 biasTerms:v10 convolutionDescriptor:v8 neuronDescriptor:0 opType:9];
  v13 = [v12 deviceOps];
  v14 = [v13 copy];

  [v12 setDeviceOps:0];
  v15 = MEMORY[0x277CBEBF8];
  if (v14)
  {
    v15 = v14;
  }

  v16 = v15;

  objc_autoreleasePoolPop(v11);

  return v16;
}

- (id)fusedFullyConnectedAndNeuronLayerWithDescriptor:(id)a3 convolutionDescriptor:(id)a4 weights:(id)a5 biasTerms:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = objc_autoreleasePoolPush();
  v15 = [_MLCCPUFullyConnected layerWithDevice:self weights:v12 biasTerms:v13 convolutionDescriptor:v11 neuronDescriptor:v10 opType:10];
  v16 = [v15 deviceOps];
  v17 = [v16 copy];

  [v15 setDeviceOps:0];
  v18 = MEMORY[0x277CBEBF8];
  if (v17)
  {
    v18 = v17;
  }

  v19 = v18;

  objc_autoreleasePoolPop(v14);

  return v19;
}

- (id)fusedFullyConnectedAndSoftmaxLayerWithDescriptor:(id)a3 weights:(id)a4 biasTerms:(id)a5 softmaxOp:(int)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = objc_autoreleasePoolPush();
  if (a6)
  {
    v14 = 41;
  }

  else
  {
    v14 = 40;
  }

  v15 = [_MLCCPUFullyConnected layerWithDevice:self weights:v11 biasTerms:v12 convolutionDescriptor:v10 neuronDescriptor:0 opType:v14];
  v16 = [v15 deviceOps];
  v17 = [v16 copy];

  [v15 setDeviceOps:0];
  v18 = MEMORY[0x277CBEBF8];
  if (v17)
  {
    v18 = v17;
  }

  v19 = v18;

  objc_autoreleasePoolPop(v13);

  return v19;
}

- (id)fusedFullyConnectedBatchNormalizationAndNeuronLayerWithDescriptor:(id)a3 mean:(id)a4 variance:(id)a5 beta:(id)a6 gamma:(id)a7 varianceEpsilon:(float)a8 momentum:(float)a9 neuronDescriptor:(id)a10 weights:(id)a11 biasTerms:(id)a12
{
  v20 = a3;
  v37 = a4;
  v21 = a5;
  v22 = a6;
  v23 = a7;
  v24 = a10;
  v25 = a11;
  v26 = a12;
  context = objc_autoreleasePoolPush();
  LODWORD(v35) = 11;
  *&v27 = a8;
  *&v28 = a9;
  v29 = [_MLCCPUFullyConnected layerWithDevice:self weights:v25 biasTerms:v26 convolutionDescriptor:v20 neuronDescriptor:v24 fusedBatchNormAndNeuronLayers:1 mean:v27 variance:v28 beta:v37 gamma:v21 varianceEpsilon:v22 momentum:v23 opType:v35];
  v30 = [v29 deviceOps];
  v31 = [v30 copy];

  [v29 setDeviceOps:0];
  v32 = MEMORY[0x277CBEBF8];
  if (v31)
  {
    v32 = v31;
  }

  v33 = v32;

  objc_autoreleasePoolPop(context);

  return v33;
}

- (id)neuronLayerWithDescriptor:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = [_MLCCPUNeuron layerWithDevice:self descriptor:v4];
  v7 = [v6 deviceOps];
  v8 = [v7 copy];

  [v6 setDeviceOps:0];
  v9 = MEMORY[0x277CBEBF8];
  if (v8)
  {
    v9 = v8;
  }

  v10 = v9;

  objc_autoreleasePoolPop(v5);

  return v10;
}

- (id)lstmLayerWithDescriptor:(id)a3 inputWeights:(id)a4 hiddenWeights:(id)a5 peepholeWeights:(id)a6 biasTerms:(id)a7 gateActivations:(id)a8 outputResultActivation:(id)a9 inferenceOnly:(BOOL)a10
{
  v30 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v22 = objc_autoreleasePoolPush();
  LOBYTE(v29) = a10;
  v23 = [_MLCCPULSTM layerWithDevice:self lstmDescriptor:v30 inputWeights:v16 hiddenWeights:v17 peepholeWeights:v18 biasTerms:v19 gateActivations:v20 ouputResultActivation:v21 inferenceOnly:v29];
  v24 = [v23 deviceOps];
  v25 = [v24 copy];

  [v23 setDeviceOps:0];
  v26 = MEMORY[0x277CBEBF8];
  if (v25)
  {
    v26 = v25;
  }

  v27 = v26;

  objc_autoreleasePoolPop(v22);

  return v27;
}

- (id)gramMatrixLayerWithScaleFactor:(float)a3
{
  v5 = objc_autoreleasePoolPush();
  *&v6 = a3;
  v7 = [_MLCCPUGramMatrix layerWithDevice:self scale:v6];
  v8 = [v7 deviceOps];
  v9 = [v8 copy];

  [v7 setDeviceOps:0];
  v10 = MEMORY[0x277CBEBF8];
  if (v9)
  {
    v10 = v9;
  }

  v11 = v10;

  objc_autoreleasePoolPop(v5);

  return v11;
}

- (id)poolingLayerWithDescriptor:(id)a3 paddingSizes:(unint64_t *)a4
{
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  v7 = [_MLCCPUPooling layerWithDevice:self descriptor:v5];
  v8 = [v7 deviceOps];
  v9 = [v8 copy];

  [v7 setDeviceOps:0];
  v10 = MEMORY[0x277CBEBF8];
  if (v9)
  {
    v10 = v9;
  }

  v11 = v10;

  objc_autoreleasePoolPop(v6);

  return v11;
}

- (id)reshapeLayerWithShape:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = [_MLCCPUReshape layerWithDevice:self];
  v7 = [v6 deviceOps];
  v8 = [v7 copy];

  [v6 setDeviceOps:0];
  v9 = MEMORY[0x277CBEBF8];
  if (v8)
  {
    v9 = v8;
  }

  v10 = v9;

  objc_autoreleasePoolPop(v5);

  return v10;
}

- (id)splitLayerWithDimension:(unint64_t)a3
{
  v5 = objc_autoreleasePoolPush();
  v6 = [_MLCCPUSplit layerWithDevice:self dimension:a3];
  v7 = [v6 deviceOps];
  v8 = [v7 copy];

  [v6 setDeviceOps:0];
  v9 = MEMORY[0x277CBEBF8];
  if (v8)
  {
    v9 = v8;
  }

  v10 = v9;

  objc_autoreleasePoolPop(v5);

  return v10;
}

- (id)sliceLayerWithbegin:(id)a3 end:(id)a4 stride:(id)a5 inferenceOnly:(BOOL)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = objc_autoreleasePoolPush();
  v13 = [_MLCCPUSlice layerWithDevice:self begin:v9 end:v10 stride:v11];
  v14 = [v13 deviceOps];
  v15 = [v14 copy];

  [v13 setDeviceOps:0];
  v16 = MEMORY[0x277CBEBF8];
  if (v15)
  {
    v16 = v15;
  }

  v17 = v16;

  objc_autoreleasePoolPop(v12);

  return v17;
}

- (id)selectLayer
{
  v3 = objc_autoreleasePoolPush();
  v4 = [_MLCCPUSelect layerWithDevice:self];
  v5 = [v4 deviceOps];
  v6 = [v5 copy];

  [v4 setDeviceOps:0];
  v7 = MEMORY[0x277CBEBF8];
  if (v6)
  {
    v7 = v6;
  }

  v8 = v7;

  objc_autoreleasePoolPop(v3);

  return v8;
}

- (id)gatherLayerWithDimension:(unint64_t)a3
{
  v5 = objc_autoreleasePoolPush();
  v6 = [_MLCCPUGather layerWithDevice:self dimension:a3];
  v7 = [v6 deviceOps];
  v8 = [v7 copy];

  [v6 setDeviceOps:0];
  v9 = MEMORY[0x277CBEBF8];
  if (v8)
  {
    v9 = v8;
  }

  v10 = v9;

  objc_autoreleasePoolPop(v5);

  return v10;
}

- (void)identifySourceAndOrResultTensorsNeededByGradient:(id)a3
{
  v15 = [a3 objectAtIndexedSubscript:0];
  LOBYTE(v3) = 0;
  v4 = [v15 deviceOpType] - 1;
  LOBYTE(v5) = 0;
  switch(v4)
  {
    case 0:
      v12 = [v15 params];
      v13 = [v12 bytes];

      v8 = *v13;
      if (*v13 >= 0x18)
      {
        goto LABEL_11;
      }

      LODWORD(v3) = 0xC20030u >> v8;
      v9 = 4062732;
      goto LABEL_10;
    case 1:
    case 13:
    case 19:
    case 23:
    case 26:
    case 27:
    case 32:
    case 38:
    case 41:
    case 45:
    case 47:
    case 48:
      break;
    case 2:
    case 15:
    case 20:
    case 28:
    case 33:
      LOBYTE(v5) = 0;
      LOBYTE(v3) = 1;
      break;
    case 3:
    case 7:
    case 8:
    case 11:
    case 16:
    case 17:
    case 18:
    case 24:
    case 43:
    case 44:
    case 46:
    case 49:
    case 50:
      goto LABEL_11;
    case 4:
    case 5:
    case 6:
    case 9:
    case 10:
    case 21:
    case 22:
    case 25:
    case 29:
    case 30:
    case 31:
    case 34:
    case 35:
    case 36:
    case 37:
    case 39:
    case 40:
      LOBYTE(v3) = 1;
      goto LABEL_12;
    case 12:
      v10 = [v15 params];
      v11 = [v10 bytes];

      v8 = *(v11 + 352);
      if (v8 < 0x18)
      {
        LODWORD(v3) = 0x84001Eu >> v8;
        v9 = 8126433;
        goto LABEL_10;
      }

LABEL_11:
      LOBYTE(v3) = 0;
LABEL_12:
      LOBYTE(v5) = 1;
      break;
    case 14:
      v3 = [v15 params];
      v14 = [v3 bytes];

      LOBYTE(v3) = *(v14 + 576) == 4;
      goto LABEL_17;
    case 42:
      v6 = [v15 params];
      v7 = [v6 bytes];

      v8 = *(v7 + 528);
      if (v8 >= 0xA)
      {
        LOBYTE(v3) = 0;
        LOBYTE(v5) = 0;
      }

      else
      {
        LODWORD(v3) = 3u >> v8;
        v9 = 531;
LABEL_10:
        v5 = v9 >> v8;
      }

      break;
    default:
LABEL_17:
      LOBYTE(v5) = v3;
      break;
  }

  [v15 setSourceOfForwardNeededForGradient:v5 & 1];
  [v15 setResultOfForwardNeededForGradient:v3 & 1];
}

- (BOOL)compileLayerDeviceOps:(id)a3 sourceTensors:(id)a4 resultTensors:(id)a5
{
  v6 = a5;
  v7 = [a3 objectAtIndexedSubscript:0];
  v8 = [v7 deviceOpType];
  if (v8 == 46)
  {
    [v7 setBNNSFilter:0];
    v9 = [v6 objectAtIndexedSubscript:0];
    v10 = [v9 descriptor];
    v11 = [v10 shape];
    v12 = [v11 objectAtIndexedSubscript:0];
    [v7 setBatchSize:{objc_msgSend(v12, "unsignedIntegerValue")}];
  }

  return v8 == 46;
}

- (BOOL)compileLayerDeviceOps:(id)a3 sourceTensors:(id)a4 resultTensor:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 objectAtIndexedSubscript:0];
  v12 = 0;
  v13 = 1;
  v14 = 1;
  switch([v11 deviceOpType])
  {
    case 1u:
      if ([_MLCCPUArithmetic compileWithDevice:self deviceOps:v8 sourceTensors:v9 resultTensor:v10])
      {
        goto LABEL_66;
      }

      v16 = +[MLCLog framework];
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_74;
      }

      goto LABEL_95;
    case 2u:
    case 3u:
      v17 = 0;
      goto LABEL_16;
    case 4u:
    case 5u:
      if ([_MLCCPUConvolution compileWithDevice:self deviceOps:v8 sourceTensors:v9 resultTensor:v10 convolutionTranspose:0])
      {
        goto LABEL_66;
      }

      v16 = +[MLCLog framework];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_95;
      }

      goto LABEL_74;
    case 6u:
    case 7u:
    case 0x16u:
    case 0x17u:
    case 0x1Eu:
    case 0x1Fu:
    case 0x23u:
    case 0x24u:
      v15 = CPU_CompileFusedConvolutionNormalizationAndNeuronLayer(v8, v9, v10);
      goto LABEL_17;
    case 8u:
      if ([_MLCCPUDropout compileWithDevice:self deviceOps:v8 sourceTensors:v9 resultTensor:v10])
      {
        goto LABEL_66;
      }

      v16 = +[MLCLog framework];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_95;
      }

      goto LABEL_74;
    case 9u:
    case 0xAu:
    case 0x28u:
    case 0x29u:
      if ([_MLCCPUFullyConnected compileWithDevice:self deviceOps:v8 sourceTensors:v9 resultTensor:v10])
      {
        goto LABEL_66;
      }

      v16 = +[MLCLog framework];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_95;
      }

      goto LABEL_74;
    case 0xBu:
      if ([_MLCCPUFullyConnected compileWithDevice:self deviceOps:v8 sourceTensors:v9 resultTensor:v10 fusedBatchNormAndNeuron:1])
      {
        goto LABEL_66;
      }

      v16 = +[MLCLog framework];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_95;
      }

      goto LABEL_74;
    case 0xCu:
      v18 = CPU_CompileLossLayer(v8, v9, v10);
      goto LABEL_32;
    case 0xDu:
      if ([_MLCCPUNeuron compileWithDevice:self deviceOps:v8 sourceTensors:v9 resultTensor:v10])
      {
        goto LABEL_66;
      }

      v16 = +[MLCLog framework];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_95;
      }

      goto LABEL_74;
    case 0xEu:
      v15 = CPU_CompilePaddingLayer(v8, v9, v10);
      goto LABEL_17;
    case 0xFu:
      if ([_MLCCPUPooling compileWithDevice:self deviceOps:v8 sourceTensors:v9 resultTensor:v10])
      {
        goto LABEL_66;
      }

      v16 = +[MLCLog framework];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_95;
      }

      goto LABEL_74;
    case 0x10u:
      if ([_MLCCPUSoftmax compileWithDevice:self deviceOps:v8 sourceTensors:v9 resultTensor:v10])
      {
        goto LABEL_66;
      }

      v16 = +[MLCLog framework];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_95;
      }

      goto LABEL_74;
    case 0x11u:
      if ([_MLCCPULSTM compileWithDevice:self deviceOps:v8 sourceTensors:v9 resultTensor:v10])
      {
        goto LABEL_89;
      }

      v16 = +[MLCLog framework];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_95;
      }

      goto LABEL_74;
    case 0x12u:
      v18 = CPU_CompileYOLOLossLayer(v8, v9, v10);
LABEL_32:
      v12 = v18;
      v13 = 0;
      goto LABEL_67;
    case 0x13u:
      if ([_MLCCPUGramMatrix compileWithDevice:self deviceOps:v8 sourceTensors:v9 resultTensor:v10])
      {
        goto LABEL_66;
      }

      v16 = +[MLCLog framework];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_95;
      }

      goto LABEL_74;
    case 0x14u:
    case 0x15u:
      v17 = 1;
      goto LABEL_16;
    case 0x18u:
      v15 = CPU_CompileUpsampleLayer(v8, v9, v10);
      goto LABEL_17;
    case 0x19u:
    case 0x1Au:
      if ([_MLCCPUConvolution compileWithDevice:self deviceOps:v8 sourceTensors:v9 resultTensor:v10 convolutionTranspose:1])
      {
        goto LABEL_66;
      }

      v16 = +[MLCLog framework];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_95;
      }

      goto LABEL_74;
    case 0x1Bu:
      goto LABEL_69;
    case 0x1Cu:
    case 0x1Du:
      v17 = 2;
      goto LABEL_16;
    case 0x21u:
    case 0x22u:
      v17 = 3;
LABEL_16:
      v15 = CPU_CompileNormalizationLayer(v17, v8, v9, v10);
      goto LABEL_17;
    case 0x27u:
      v15 = CPU_CompileTransposeLayer(v8, v9, v10);
LABEL_17:
      v12 = v15;
      goto LABEL_67;
    case 0x2Au:
      if ([_MLCCPUCompare compileWithDevice:self deviceOps:v8 sourceTensors:v9 resultTensor:v10])
      {
        goto LABEL_89;
      }

      v16 = +[MLCLog framework];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_95;
      }

      goto LABEL_74;
    case 0x2Bu:
      if ([_MLCCPUReduction compileWithDevice:self deviceOps:v8 sourceTensors:v9 resultTensor:v10])
      {
        goto LABEL_66;
      }

      v16 = +[MLCLog framework];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_95;
      }

      goto LABEL_74;
    case 0x2Cu:
      if (![_MLCCPUMHAttention compileWithDevice:self deviceOps:v8 sourceTensors:v9 resultTensor:v10])
      {
        v16 = +[MLCLog framework];
        if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_74;
        }

        goto LABEL_95;
      }

LABEL_66:
      v21 = [v11 layer];
      v12 = [v21 filter];

LABEL_67:
      if (v12)
      {
        v14 = 0;
        goto LABEL_69;
      }

LABEL_72:
      v16 = +[MLCLog framework];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [MLCDeviceCPU(MLCLayerOperations) compileLayerDeviceOps:sourceTensors:resultTensor:];
      }

      goto LABEL_74;
    case 0x2Du:
      if ([_MLCCPUMatMul compileWithDevice:self deviceOps:v8 sourceTensors:v9 resultTensor:v10])
      {
        v19 = [v11 layer];
        v12 = [v19 filter];

        goto LABEL_69;
      }

      v16 = +[MLCLog framework];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [MLCDeviceCPU(MLCLayerOperations) compileLayerDeviceOps:sourceTensors:resultTensor:];
      }

      goto LABEL_74;
    case 0x30u:
      if ([_MLCCPUSlice compileWithDevice:self deviceOps:v8 sourceTensors:v9 resultTensor:v10])
      {
        goto LABEL_89;
      }

      v16 = +[MLCLog framework];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_95;
      }

      goto LABEL_74;
    case 0x32u:
      if ([_MLCCPUGather compileWithDevice:self deviceOps:v8 sourceTensors:v9 resultTensor:v10])
      {
        goto LABEL_89;
      }

      v16 = +[MLCLog framework];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_95;
      }

      goto LABEL_74;
    case 0x33u:
      if ([_MLCCPUScatter compileWithDevice:self deviceOps:v8 sourceTensors:v9 resultTensor:v10])
      {
LABEL_89:
        v12 = 0;
LABEL_69:
        [(MLCDeviceCPU *)self identifySourceAndOrResultTensorsNeededByGradient:v8];
        [v11 setBNNSFilter:v12];
        v46 = self;
        if (v13)
        {
          v22 = [v10 descriptor];
          v23 = [v22 shape];
          if ([v23 count] == 1)
          {
            [v11 setBatchSize:1];
LABEL_80:

            v37 = [v11 layer];
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();

            if (isKindOfClass)
            {
              v39 = [v10 descriptor];
              v40 = [v39 shape];
              v41 = [v40 objectAtIndexedSubscript:0];
              [v11 setBatchSize:{objc_msgSend(v41, "unsignedIntegerValue")}];

              v42 = v46;
            }

            else
            {
              v42 = v46;
              if ([v11 deviceOpType] == 39)
              {
                [v11 setBatchSize:1];
              }
            }

            if ((v14 & 1) == 0)
            {
              [(MLCDeviceCPU *)v42 updateGradientDescriptorsForDeviceOps:v8 sourceTensors:v9 resultTensor:v10];
            }

            v24 = 1;
            goto LABEL_87;
          }

          v25 = [v10 descriptor];
          [v25 shape];
          v26 = v8;
          v28 = v27 = v9;
          [v28 objectAtIndexedSubscript:0];
          v30 = v29 = v11;
          [v29 setBatchSize:{objc_msgSend(v30, "unsignedIntegerValue")}];

          v11 = v29;
          v9 = v27;
          v8 = v26;
        }

        else
        {
          v22 = [v9 objectAtIndexedSubscript:0];
          v23 = [v22 descriptor];
          v25 = [v23 shape];
          if ([v25 count] == 1)
          {
            [v11 setBatchSize:1];
          }

          else
          {
            [v9 objectAtIndexedSubscript:0];
            v44 = v8;
            v45 = v10;
            v32 = v31 = v9;
            [v32 descriptor];
            v34 = v33 = v11;
            v35 = [v34 shape];
            v36 = [v35 objectAtIndexedSubscript:0];
            [v33 setBatchSize:{objc_msgSend(v36, "unsignedIntegerValue")}];

            v11 = v33;
            v9 = v31;
            v8 = v44;
            v10 = v45;
          }
        }

        goto LABEL_80;
      }

      v16 = +[MLCLog framework];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
LABEL_95:
        [MLCDeviceCPU(MLCLayerOperations) compileLayerDeviceOps:sourceTensors:resultTensor:];
      }

LABEL_74:

      v24 = 0;
LABEL_87:

      return v24;
    default:
      v20 = +[MLCLog framework];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [MLCDeviceCPU(MLCLayerOperations) compileLayerDeviceOps:sourceTensors:resultTensor:];
      }

      goto LABEL_72;
  }
}

- (void)allocateDeviceDataForGlobalNormClippingWithOptimizer:(id)a3 updatableParameterCount:(unint64_t)a4
{
  v26 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = [v26 oneStepOptimizerBuffers];
  [v6 removeAllObjects];

  objc_autoreleasePoolPop(v5);
  v7 = [MEMORY[0x277CBEBF8] mutableCopy];
  [v26 setOneStepOptimizerBuffers:v7];

  v8 = malloc_type_malloc(8 * a4, 0xFDDCFE98uLL);
  v9 = [v26 oneStepOptimizerBuffers];
  v10 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v8 length:8 * a4 freeWhenDone:1];
  [v9 addObject:v10];

  v11 = malloc_type_malloc(8 * a4, 0x40725954uLL);
  v12 = [v26 oneStepOptimizerBuffers];
  v13 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v11 length:8 * a4 freeWhenDone:1];
  [v12 addObject:v13];

  v14 = malloc_type_malloc(8 * a4 * [v26 numOptimizerDataBuffers], 0xE6385B49uLL);
  v15 = [v26 oneStepOptimizerBuffers];
  v16 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v14 length:8 * a4 * objc_msgSend(v26 freeWhenDone:{"numOptimizerDataBuffers"), 1}];
  [v15 addObject:v16];

  v17 = malloc_type_malloc(8uLL, 0x100004000313F17uLL);
  *v17 = a4;
  v18 = [v26 oneStepOptimizerBuffers];
  v19 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v17 length:8 freeWhenDone:1];
  [v18 addObject:v19];

  v20 = malloc_type_calloc(8uLL, 1uLL, 0xB1B26612uLL);
  v21 = [v26 oneStepOptimizerBuffers];
  v22 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v20 length:8 freeWhenDone:1];
  [v21 addObject:v22];

  v23 = malloc_type_malloc(8uLL, 0x100004000313F17uLL);
  *v23 = [v26 numOptimizerDataBuffers];
  v24 = [v26 oneStepOptimizerBuffers];
  v25 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v23 length:8 freeWhenDone:1];
  [v24 addObject:v25];
}

- (void)updateGradientDescriptorsForDeviceOps:(id)a3 sourceTensors:(id)a4 resultTensor:(id)a5
{
  v147[1] = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a5;
  v9 = [a3 objectAtIndexedSubscript:0];
  if ([v9 deviceOpType] == 44 || objc_msgSend(v9, "deviceOpType") == 1)
  {
    goto LABEL_28;
  }

  v10 = [v9 inDeltaData];
  v11 = [v10 objectAtIndexedSubscript:0];
  v139 = [v11 bytes];

  v12 = [v9 outDeltaData];
  v13 = [v12 objectAtIndexedSubscript:0];
  v14 = [v13 bytes];

  v141 = v7;
  v142 = v8;
  v140 = v14;
  if ([v9 deviceOpType] != 16 && objc_msgSend(v9, "deviceOpType") != 18)
  {
    goto LABEL_10;
  }

  v15 = [v7 objectAtIndexedSubscript:0];
  v16 = [v15 descriptor];
  v17 = [v16 shape];
  v18 = [v17 count];

  if ((v18 - 1) < 2)
  {
    v27 = 1;
    goto LABEL_15;
  }

  if (v18 == 3)
  {
    v28 = [v7 objectAtIndexedSubscript:0];
    v29 = [v28 descriptor];
    v30 = [v29 shape];
    v31 = [v30 objectAtIndexedSubscript:2];
    v27 = [v31 unsignedIntegerValue] == 1;

    goto LABEL_15;
  }

  if (v18 == 4)
  {
    v19 = [v7 objectAtIndexedSubscript:0];
    v20 = [v19 descriptor];
    v21 = [v20 shape];
    v22 = [v21 objectAtIndexedSubscript:3];
    if ([v22 unsignedIntegerValue] == 1)
    {
      v23 = [v7 objectAtIndexedSubscript:0];
      v24 = [v23 descriptor];
      v25 = [v24 shape];
      v26 = [v25 objectAtIndexedSubscript:2];
      v27 = [v26 unsignedIntegerValue] == 1;

      v8 = v142;
      v7 = v141;
    }

    else
    {
      v27 = 0;
    }
  }

  else
  {
LABEL_10:
    v27 = 0;
  }

LABEL_15:
  if ([v9 deviceOpType] == 9 || objc_msgSend(v9, "deviceOpType") == 10 || objc_msgSend(v9, "deviceOpType") == 40 || objc_msgSend(v9, "deviceOpType") == 41 || v27)
  {
    v138 = v9;
    v32 = [v7 objectAtIndexedSubscript:0];
    v33 = [v32 descriptor];
    v34 = [v33 shape];
    v35 = [v34 count];

    v36 = [v7 objectAtIndexedSubscript:0];
    v37 = [v36 descriptor];
    v38 = [v37 shape];
    v39 = [v38 objectAtIndexedSubscript:v35 - 1];
    v40 = [v39 unsignedIntegerValue];

    v41 = [v7 objectAtIndexedSubscript:0];
    v42 = [v41 descriptor];
    v43 = [v42 stride];
    v137 = v35 - 1;
    v44 = [v43 objectAtIndexedSubscript:v35 - 1];
    v45 = [v44 unsignedIntegerValue];

    v143 = v45;
    if (v35 == 4)
    {
      v46 = [v7 objectAtIndexedSubscript:0];
      v47 = [v46 descriptor];
      v48 = [v47 shape];
      v49 = [v48 objectAtIndexedSubscript:3];
      v50 = [v49 unsignedIntegerValue];
      v51 = v50 == 1;
      if (v50 == 1)
      {
        v135 = v40;
        v52 = [v7 objectAtIndexedSubscript:0];
        v53 = [v52 descriptor];
        v54 = [v53 shape];
        [v54 objectAtIndexedSubscript:2];
        v56 = v55 = v7;
        v136 = [v56 unsignedIntegerValue];

        if (v136 != 1)
        {
          v51 = 0;
          v7 = v55;
          v45 = v143;
          v40 = v135;
          goto LABEL_25;
        }

        v46 = [v55 objectAtIndexedSubscript:0];
        v47 = [v46 descriptor];
        v48 = [v47 shape];
        v49 = [v48 objectAtIndexedSubscript:1];
        v40 = [v49 unsignedIntegerValue];
        v7 = v55;
        v45 = v143;
      }
    }

    else
    {
      v51 = 0;
    }

LABEL_25:
    v57 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v40];
    v147[0] = v57;
    v58 = [MEMORY[0x277CBEA60] arrayWithObjects:v147 count:1];
    v59 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v45];
    v146 = v59;
    v60 = [MEMORY[0x277CBEA60] arrayWithObjects:&v146 count:1];
    v61 = [v7 objectAtIndexedSubscript:0];
    v62 = [v61 descriptor];
    CPU_BuildBNNSNDArrayDescriptor(v139, v58, v60, 0, [v62 dataType], v51, 0);

    v8 = v142;
    v63 = [v142 descriptor];
    v64 = [v63 shape];
    v65 = [v64 objectAtIndexedSubscript:v137];
    v66 = [v65 unsignedIntegerValue];

    if (v51)
    {
      v67 = [v142 descriptor];
      v68 = [v67 shape];
      v69 = [v68 objectAtIndexedSubscript:1];
      v66 = [v69 unsignedIntegerValue];
    }

    v70 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v66];
    v145 = v70;
    v71 = [MEMORY[0x277CBEA60] arrayWithObjects:&v145 count:1];
    v72 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v143];
    v144 = v72;
    v73 = [MEMORY[0x277CBEA60] arrayWithObjects:&v144 count:1];
    v74 = [v142 descriptor];
    CPU_BuildBNNSNDArrayDescriptor(v140, v71, v73, 0, [v74 dataType], v51, 0);

    v7 = v141;
    v9 = v138;
    goto LABEL_28;
  }

  if ([v9 deviceOpType] == 19)
  {
    v76 = [v7 objectAtIndexedSubscript:0];
    v77 = [v76 descriptor];
    v78 = [v77 shape];
    v79 = [v7 objectAtIndexedSubscript:0];
    v80 = [v79 descriptor];
    v81 = [v80 stride];
    [v7 objectAtIndexedSubscript:0];
    v83 = v82 = v7;
    v84 = [v83 descriptor];
    CPU_BuildBNNSNDArrayDescriptor(v139, v78, v81, 0, [v84 dataType], 1, 0);

    v8 = v142;
    v7 = v82;

    v85 = [v142 descriptor];
    v86 = [v85 shape];
    v87 = [v142 descriptor];
    v88 = [v87 stride];
    v89 = [v142 descriptor];
    CPU_BuildBNNSNDArrayDescriptor(v140, v86, v88, 0, [v89 dataType], 1, 0);

    goto LABEL_28;
  }

  if ([v9 deviceOpType] == 39)
  {
    v90 = [v7 objectAtIndexedSubscript:0];
    v91 = [v90 descriptor];
    v92 = [v91 shape];
    v93 = [v7 objectAtIndexedSubscript:0];
    v94 = [v93 descriptor];
    v95 = [v94 stride];
    [v7 objectAtIndexedSubscript:0];
    v97 = v96 = v7;
    v98 = [v97 descriptor];
    CPU_BuildPermuteBNNSNDArrayDescriptor(v139, v92, v95, 0, [v98 dataType]);

    v8 = v142;
    v7 = v96;

    v99 = [v142 descriptor];
    v100 = [v99 shape];
    v101 = [v142 descriptor];
    v102 = [v101 stride];
    v103 = [v142 descriptor];
    CPU_BuildPermuteBNNSNDArrayDescriptor(v140, v100, v102, 0, [v103 dataType]);
LABEL_36:

    goto LABEL_28;
  }

  v104 = [v9 deviceOpType];
  v105 = [v7 objectAtIndexedSubscript:0];
  v106 = [v105 descriptor];
  v107 = [v106 shape];
  v108 = v107;
  if (v104 == 43)
  {
    v109 = [v7 objectAtIndexedSubscript:0];
    v110 = [v109 descriptor];
    v111 = [v110 stride];
    [v7 objectAtIndexedSubscript:0];
    v113 = v112 = v7;
    v114 = [v113 descriptor];
    CPU_BuildBNNSNDArrayLastMajorDescriptor(v139, v108, v111, 0, [v114 dataType]);

    v8 = v142;
    v7 = v112;

    v99 = [v142 descriptor];
    v100 = [v99 shape];
    v101 = [v142 descriptor];
    v102 = [v101 stride];
    v103 = [v142 descriptor];
    CPU_BuildBNNSNDArrayLastMajorDescriptor(v140, v100, v102, 0, [v103 dataType]);
    goto LABEL_36;
  }

  v115 = [v107 mutableCopy];

  v116 = [v7 objectAtIndexedSubscript:0];
  v117 = [v116 descriptor];
  v118 = [v117 stride];
  v119 = [v118 mutableCopy];

  v120 = [v9 deviceOpType];
  if (v120 <= 0x22)
  {
    if (((1 << v120) & 0x60030000CLL) != 0)
    {
      if ([v115 count] == 2)
      {
        [v115 insertObject:&unk_284BA59D8 atIndex:2];
        v121 = [v119 objectAtIndexedSubscript:1];
        [v119 insertObject:v121 atIndex:2];
      }
    }

    else if (((1 << v120) & 0x30000000) != 0 && [v115 count] != 4)
    {
      v122 = 0;
      do
      {
        [v115 insertObject:&unk_284BA59D8 atIndex:1];
        v123 = [v119 objectAtIndexedSubscript:0];
        [v119 insertObject:v123 atIndex:1];

        ++v122;
      }

      while (v122 < 4 - [v115 count]);
    }
  }

  v124 = [v7 objectAtIndexedSubscript:0];
  v125 = [v124 descriptor];
  CPU_BuildBNNSNDArrayDescriptor(v139, v115, v119, 0, [v125 dataType], 1, 0);

  v126 = [v8 descriptor];
  v127 = [v126 shape];
  v128 = [v127 mutableCopy];

  v129 = [v8 descriptor];
  v130 = [v129 stride];
  v131 = [v130 mutableCopy];

  if (([v9 deviceOpType] == 28 || objc_msgSend(v9, "deviceOpType") == 29) && objc_msgSend(v128, "count") != 4)
  {
    v132 = 0;
    do
    {
      [v128 insertObject:&unk_284BA59D8 atIndex:1];
      v133 = [v131 objectAtIndexedSubscript:0];
      [v131 insertObject:v133 atIndex:1];

      ++v132;
    }

    while (v132 < 4 - [v128 count]);
  }

  v134 = [v8 descriptor];
  CPU_BuildBNNSNDArrayDescriptor(v140, v128, v131, 0, [v134 dataType], 1, 0);

LABEL_28:
  v75 = *MEMORY[0x277D85DE8];
}

- (void)setConvolutionGradientComputeWeightsAndBiasOnly:(id)a3
{
  v3 = [a3 objectAtIndexedSubscript:0];
  [v3 setComputeWeightsAndBiasOnly:1];
}

- (void)setFullyConnectedGradientComputeWeightsAndBiasOnly:(id)a3
{
  v3 = [a3 objectAtIndexedSubscript:0];
  [v3 setComputeWeightsAndBiasOnly:1];
}

- (id)weightsGradients:(id)a3
{
  v3 = [a3 objectAtIndexedSubscript:0];
  v4 = [v3 weightsDeltaData];
  v5 = [v4 bytes];

  v6 = 96;
  if (*(v5 + 4) == 0x20000)
  {
    v6 = 80;
  }

  v7 = 32;
  if (*(v5 + 4) == 0x20000)
  {
    v7 = 16;
  }

  v8 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:*(v5 + 136) length:CPU_BNNSDataTypeSizeInBytes(*(v5 + 144)) * *(v5 + v7) * *(v5 + v6) freeWhenDone:0];

  return v8;
}

- (id)biasesGradients:(id)a3
{
  v3 = [a3 objectAtIndexedSubscript:0];
  v4 = [v3 biasDeltaData];
  v5 = [v4 bytes];

  v6 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:*(v5 + 136) length:CPU_BNNSDataTypeSizeInBytes(*(v5 + 144)) * *(v5 + 8) freeWhenDone:0];

  return v6;
}

- (id)mhaWeightGradient:(id)a3 withSize:(unint64_t)a4 index:(unint64_t)a5
{
  v7 = [a3 objectAtIndexedSubscript:0];
  v8 = v7;
  if (a5 > 2)
  {
    v9 = [v7 outDeltaData];
    v10 = v9;
    v11 = 0;
  }

  else
  {
    v9 = [v7 inDeltaData];
    v10 = v9;
    v11 = a5;
  }

  v12 = [v9 objectAtIndexedSubscript:v11];
  v13 = *([v12 bytes] + 312);

  v14 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v13 length:a4 freeWhenDone:0];

  return v14;
}

- (id)mhaBiasGradient:(id)a3 withSize:(unint64_t)a4 index:(unint64_t)a5
{
  v7 = [a3 objectAtIndexedSubscript:0];
  v8 = 0;
  if ([v7 hasBias])
  {
    if (a5 > 2)
    {
      v9 = [v7 outDeltaData];
      v10 = v9;
      v11 = 0;
    }

    else
    {
      v9 = [v7 inDeltaData];
      v10 = v9;
      v11 = a5;
    }

    v12 = [v9 objectAtIndexedSubscript:v11];
    v13 = *([v12 bytes] + 488);

    v8 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v13 length:a4 freeWhenDone:0];
  }

  return v8;
}

- (id)mhaAttnBiasGradient:(id)a3 withSize:(unint64_t)a4 index:(unint64_t)a5
{
  v7 = [a3 objectAtIndexedSubscript:0];
  v8 = 0;
  if ([v7 hasAttnBias])
  {
    v9 = [v7 attnBiasDeltaData];
    v10 = [v9 objectAtIndexedSubscript:a5];
    v11 = [v10 bytes];

    v8 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:*(v11 + 136) length:a4 freeWhenDone:0];
  }

  return v8;
}

- (id)lstmInputWeightGradient:(id)a3 mlcWeightIndex:(unint64_t)a4
{
  v5 = a3;
  v6 = [v5 objectAtIndexedSubscript:0];
  v7 = [v6 lstmDeltaParams];
  v8 = [v7 bytes];

  v9 = [v6 biDirectional];
  v10 = [v6 numLayers];
  v11 = [v6 biDirectional];
  v12 = 4 * v10;
  if (v10 < 2 || (v11 & 1) != 0)
  {
    if ((v11 ^ 1))
    {
      v14 = 0;
    }

    else
    {
      v14 = (a4 - v12) >> 2;
    }

    if (v10 >= 2)
    {
      v13 = v14;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = a4 >> 2;
  }

  v15 = v8[116 * (a4 & 3) + 177 + 22 * (v13 != 0)];
  if (v13)
  {
    v15 += 8 * ((v13 - 1) << v9);
    v16 = v8[1];
  }

  else
  {
    v16 = *v8;
  }

  v17 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:*(v15 + 8 * (a4 >= v12)) length:4 * v8[1] * v16 freeWhenDone:0];

  return v17;
}

- (id)lstmHiddenWeightGradient:(id)a3 mlcWeightIndex:(unint64_t)a4
{
  v5 = a3;
  v6 = [v5 objectAtIndexedSubscript:0];
  v7 = [v6 lstmDeltaParams];
  v8 = [v7 bytes];

  v9 = [v6 biDirectional];
  v10 = [v6 numLayers];
  v11 = [v6 biDirectional];
  v12 = 4 * v10;
  if (v10 < 2 || (v11 & 1) != 0)
  {
    if ((v11 ^ 1))
    {
      v13 = 0;
    }

    else
    {
      v13 = (a4 - v12) >> 2;
    }

    if (v10 < 2)
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = a4 >> 2;
  }

  v14 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:*(*(v8 + 928 * (a4 & 3) + 1768) + 8 * (v13 << v9) + 8 * (a4 >= v12)) length:4 * *(v8 + 8) * *(v8 + 8) freeWhenDone:0];

  return v14;
}

- (id)lstmBiasGradient:(id)a3 mlcBiasIndex:(unint64_t)a4
{
  v5 = a3;
  v6 = [v5 objectAtIndexedSubscript:0];
  v7 = [v6 lstmDeltaParams];
  v8 = [v7 bytes];

  v9 = [v6 biDirectional];
  v10 = [v6 numLayers];
  v11 = [v6 biDirectional];
  v12 = 4 * v10;
  if (v10 < 2 || (v11 & 1) != 0)
  {
    if ((v11 ^ 1))
    {
      v13 = 0;
    }

    else
    {
      v13 = (a4 - v12) >> 2;
    }

    if (v10 < 2)
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = a4 >> 2;
  }

  v14 = *(v8 + 8);
  v15 = v14 * (v13 << v9);
  if (a4 >= v12)
  {
    v16 = *(v8 + 8);
  }

  else
  {
    v16 = 0;
  }

  v17 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:*(v8 + 928 * (a4 & 3) + 2120) + 4 * v15 + 4 * v16 length:4 * v14 freeWhenDone:0];

  return v17;
}

- (id)betaGradients:(id)a3
{
  v3 = [a3 objectAtIndexedSubscript:0];
  v4 = [v3 betaDeltaData];
  v5 = [v4 bytes];

  v6 = *(v5 + 4);
  if (v6 == 196608)
  {
    v7 = *(v5 + 16) * *(v5 + 8) * *(v5 + 24);
  }

  else if (v6 == 0x20000)
  {
    v7 = *(v5 + 16) * *(v5 + 8);
  }

  else
  {
    v7 = 0;
    if (v6 == 0x10000)
    {
      v7 = *(v5 + 8);
    }
  }

  v8 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:*(v5 + 136) length:CPU_BNNSDataTypeSizeInBytes(*(v5 + 144)) * v7 freeWhenDone:0];

  return v8;
}

- (id)gammaGradients:(id)a3
{
  v3 = [a3 objectAtIndexedSubscript:0];
  v4 = [v3 gammaDeltaData];
  v5 = [v4 bytes];

  v6 = *(v5 + 4);
  if (v6 == 196608)
  {
    v7 = *(v5 + 16) * *(v5 + 8) * *(v5 + 24);
  }

  else if (v6 == 0x20000)
  {
    v7 = *(v5 + 16) * *(v5 + 8);
  }

  else
  {
    v7 = 0;
    if (v6 == 0x10000)
    {
      v7 = *(v5 + 8);
    }
  }

  v8 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:*(v5 + 136) length:CPU_BNNSDataTypeSizeInBytes(*(v5 + 144)) * v7 freeWhenDone:0];

  return v8;
}

- (id)embeddingWeightsGradients:(id)a3 embeddingCount:(unint64_t)a4 embeddingDimension:(unint64_t)a5
{
  v8 = a3;
  v9 = [v8 objectAtIndexedSubscript:0];
  v10 = [v9 source];
  v32 = [v10 bytes];
  v11 = [v10 length];
  v12 = a5 * a4;
  v13 = malloc_type_calloc(a5 * a4, 4uLL, 0x100004052888210uLL);
  if (v13)
  {
    v14 = v13;
    v15 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v13 length:4 * v12 freeWhenDone:1];
    v16 = [v9 weightsDeltaDataBytes];
    v17 = [v16 bytes];

    if (v11 >= 8)
    {
      v31 = v8;
      v29 = v15;
      v30 = v10;
      v18 = 0;
      v19 = v11 >> 3;
      do
      {
        v20 = [v9 paddingIndex];
        if (!v20 || (v21 = v20, [v9 paddingIndex], v22 = objc_claimAutoreleasedReturnValue(), v23 = objc_msgSend(v22, "longLongValue"), v24 = *(v32 + 8 * v18), v22, v21, v23 != v24))
        {
          if (a5)
          {
            v25 = 0;
            v26 = &v14[4 * *(v32 + 8 * v18) * a5];
            do
            {
              *&v26[4 * v25] = *(v17 + 4 * v25) + *&v26[4 * v25];
              ++v25;
            }

            while (a5 != v25);
          }
        }

        ++v18;
        v17 += 4 * a5;
      }

      while (v18 != v19);
      v10 = v30;
      v8 = v31;
      v15 = v29;
    }
  }

  else
  {
    v27 = +[MLCLog framework];
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      [MLCDeviceCPU(MLCLayerOperations) embeddingWeightsGradients:a2 embeddingCount:? embeddingDimension:?];
    }

    v15 = 0;
  }

  return v15;
}

- (void)allocateParameterGradientsForDeviceOps:(id)a3 parameters:(id)a4
{
  v6 = a4;
  v7 = [a3 objectAtIndexedSubscript:0];
  v8 = [v7 deviceOpType];
  if (v8 <= 21)
  {
    if ((v8 - 4) >= 4 && (v8 - 9) >= 3)
    {
      if (v8 == 17)
      {
        v154 = v7;
        v155 = v6;
        v18 = v7;
        v153 = [v18 params];
        v38 = [v153 bytes];
        v152 = [v18 lstmDeltaParams];
        v156 = [v152 bytes];
        v158 = *(v38 + 8);
        v39 = *(v38 + 44) & 1;
        v168 = *(v38 + 24);
        v157 = v168 << v39;
        if (v168 << v39)
        {
          v40 = 0;
          v41 = 0;
          v159 = *v38;
          do
          {
            v161 = v41;
            v164 = v40;
            v42 = v158;
            if (!(v41 % v168))
            {
              v42 = v159;
            }

            v43 = 4 * v158 * v42;
            v44 = 4;
            do
            {
              v45 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:malloc_type_calloc(v43 length:1uLL freeWhenDone:{0x9BB016F5uLL), v43, 1}];
              v46 = [v18 inputWeightsDeltaPointers];
              [v46 setObject:v45 atIndexedSubscript:v40];

              v47 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:malloc_type_calloc(4 * v158 * v158 length:1uLL freeWhenDone:{0x9BB016F5uLL), 4 * v158 * v158, 1}];
              v48 = [v18 hiddenWeightsDeltaPointers];
              [v48 setObject:v47 atIndexedSubscript:v40];

              ++v40;
              --v44;
            }

            while (v44);
            v41 = v161 + 1;
            v40 = v164 + 4;
          }

          while (v161 + 1 != v157);
        }

        v49 = 0;
        if (v39)
        {
          v50 = 16;
        }

        else
        {
          v50 = 8;
        }

        v51 = 4 * v168;
        do
        {
          v52 = malloc_type_malloc(v50, 0x80040B8603338uLL);
          v53 = [v18 inputWeightsDeltaPointers];
          v54 = [v53 objectAtIndexedSubscript:v49];
          *v52 = [v54 bytes];

          if (v39)
          {
            v55 = [v18 inputWeightsDeltaPointers];
            v56 = [v55 objectAtIndexedSubscript:v51 + v49];
            v52[1] = [v56 bytes];
          }

          v57 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v52 length:v50 freeWhenDone:1];
          v58 = [v18 bnnsInputWeightsDeltaPointers];
          [v58 setObject:v57 atIndexedSubscript:v49];

          ++v49;
        }

        while (v49 != 4);
        v59 = [v18 bnnsInputWeightsDeltaPointers];
        v60 = [v59 objectAtIndexedSubscript:0];
        v156[177] = [v60 bytes];

        v61 = [v18 bnnsInputWeightsDeltaPointers];
        v62 = [v61 objectAtIndexedSubscript:1];
        v156[293] = [v62 bytes];

        v63 = [v18 bnnsInputWeightsDeltaPointers];
        v64 = [v63 objectAtIndexedSubscript:2];
        v156[409] = [v64 bytes];

        v65 = [v18 bnnsInputWeightsDeltaPointers];
        v66 = [v65 objectAtIndexedSubscript:3];
        v156[525] = [v66 bytes];

        if (v168 >= 2)
        {
          v67 = 0;
          v68 = 8 * ((v168 - 1) << v39);
          v69 = v51 + 4;
          v70 = 4;
          do
          {
            v165 = v67;
            v71 = malloc_type_malloc(v68, 0x80040B8603338uLL);
            v72 = 0;
            v160 = v70;
            v162 = v69;
            do
            {
              v73 = [v18 inputWeightsDeltaPointers];
              v74 = [v73 objectAtIndexedSubscript:v70];
              v71[v72 << v39] = [v74 bytes];

              if (v39)
              {
                v75 = [v18 inputWeightsDeltaPointers];
                v76 = [v75 objectAtIndexedSubscript:v69];
                v71[(v72 << v39) + 1] = [v76 bytes];
              }

              v69 += 4;
              ++v72;
              v70 += 4;
            }

            while (v168 - 1 != v72);
            v68 = 8 * ((v168 - 1) << v39);
            v77 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v71 length:v68 freeWhenDone:1];
            v78 = [v18 bnnsInputWeightsDeltaPointers];
            [v78 setObject:v77 atIndexedSubscript:v67 | 4];

            ++v67;
            v69 = v162 + 1;
            v70 = v160 + 1;
          }

          while (v165 != 3);
          v79 = [v18 bnnsInputWeightsDeltaPointers];
          v80 = [v79 objectAtIndexedSubscript:4];
          v156[199] = [v80 bytes];

          v81 = [v18 bnnsInputWeightsDeltaPointers];
          v82 = [v81 objectAtIndexedSubscript:5];
          v156[315] = [v82 bytes];

          v83 = [v18 bnnsInputWeightsDeltaPointers];
          v84 = [v83 objectAtIndexedSubscript:6];
          v156[431] = [v84 bytes];

          v85 = [v18 bnnsInputWeightsDeltaPointers];
          v86 = [v85 objectAtIndexedSubscript:7];
          v156[547] = [v86 bytes];

          v51 = 4 * v168;
        }

        v87 = 0;
        v88 = 8 * v157;
        v166 = v51;
        do
        {
          v89 = malloc_type_malloc(v88, 0x80040B8603338uLL);
          if (v168)
          {
            v90 = 0;
            v91 = v87;
            v92 = v166;
            do
            {
              v93 = [v18 hiddenWeightsDeltaPointers];
              v94 = [v93 objectAtIndexedSubscript:v91];
              v89[v90 << v39] = [v94 bytes];

              if (v39)
              {
                v95 = [v18 hiddenWeightsDeltaPointers];
                v96 = [v95 objectAtIndexedSubscript:v92];
                v89[(v90 << v39) + 1] = [v96 bytes];
              }

              ++v90;
              v92 += 4;
              v91 += 4;
            }

            while (v168 != v90);
          }

          v88 = 8 * v157;
          v97 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v89 length:8 * v157 freeWhenDone:1];
          v98 = [v18 bnnsHiddenWeightsDeltaPointers];
          [v98 setObject:v97 atIndexedSubscript:v87];

          ++v87;
          ++v166;
        }

        while (v87 != 4);
        v99 = [v18 bnnsHiddenWeightsDeltaPointers];
        v100 = [v99 objectAtIndexedSubscript:0];
        v156[221] = [v100 bytes];

        v101 = [v18 bnnsHiddenWeightsDeltaPointers];
        v102 = [v101 objectAtIndexedSubscript:1];
        v156[337] = [v102 bytes];

        v103 = [v18 bnnsHiddenWeightsDeltaPointers];
        v104 = [v103 objectAtIndexedSubscript:2];
        v156[453] = [v104 bytes];

        v105 = [v18 bnnsHiddenWeightsDeltaPointers];
        v106 = [v105 objectAtIndexedSubscript:3];
        v156[569] = [v106 bytes];

        v7 = v154;
        v6 = v155;
        if ([v18 hasBias])
        {
          for (i = 0; i != 4; ++i)
          {
            v108 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:malloc_type_calloc(((4 * v168) << v39) * v158 length:1uLL freeWhenDone:{0x9BB016F5uLL), ((4 * v168) << v39) * v158, 1}];
            v109 = [v18 weightAndBiasGateDeltaBuffers];
            [v109 setObject:v108 atIndexedSubscript:i];
          }

          v110 = [v18 weightAndBiasGateDeltaBuffers];
          v111 = [v110 objectAtIndexedSubscript:0];
          v156[265] = [v111 bytes];

          v112 = [v18 weightAndBiasGateDeltaBuffers];
          v113 = [v112 objectAtIndexedSubscript:1];
          v156[381] = [v113 bytes];

          v114 = [v18 weightAndBiasGateDeltaBuffers];
          v115 = [v114 objectAtIndexedSubscript:2];
          v156[497] = [v115 bytes];

          v116 = [v18 weightAndBiasGateDeltaBuffers];
          v117 = [v116 objectAtIndexedSubscript:3];
          v156[613] = [v117 bytes];
        }

        goto LABEL_55;
      }

      goto LABEL_59;
    }
  }

  else
  {
    if (v8 > 0x2F)
    {
      goto LABEL_59;
    }

    if (((1 << v8) & 0x379C6C00000) == 0)
    {
      if (v8 != 44)
      {
        if (v8 == 47)
        {
          v9 = [v7 weightsDeltaDataBytesArray];
          v10 = [v9 count];

          if (!v10)
          {
            v11 = [v6 objectAtIndexedSubscript:0];
            v12 = [v11 descriptor];
            v13 = malloc_type_calloc([v12 tensorAllocationSizeInBytes], 1uLL, 0x7187251BuLL);

            if (v13)
            {
              v14 = [v7 weightsDeltaData];
              *([v14 bytes] + 136) = v13;

              v15 = MEMORY[0x277CBEA90];
              v16 = [v6 objectAtIndexedSubscript:0];
              v17 = [v16 descriptor];
              v18 = [v15 dataWithBytesNoCopy:v13 length:objc_msgSend(v17 freeWhenDone:{"tensorAllocationSizeInBytes"), 1}];

              v19 = [v7 weightsDeltaDataBytesArray];
              [v19 addObject:v18];

LABEL_55:
              goto LABEL_59;
            }

            v37 = +[MLCLog framework];
            if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
            {
              [MLCDeviceCPU(MLCLayerOperations) allocateParameterGradientsForDeviceOps:a2 parameters:?];
            }

            goto LABEL_58;
          }
        }

        goto LABEL_59;
      }

      v118 = [v7 biasDeltaDataBytesArray];
      v119 = [v118 count];

      if (v119)
      {
        goto LABEL_61;
      }

      if ([v6 count] == 6)
      {
        v120 = 0;
        v163 = 1;
        v167 = 4;
        goto LABEL_71;
      }

      if ([v6 count] == 8)
      {
        v167 = 0;
        v163 = 0;
      }

      else
      {
        if ([v6 count] != 10)
        {
LABEL_61:
          v167 = 0;
          v163 = 0;
          v120 = 0;
LABEL_71:
          v169 = [v7 weightsDeltaDataBytesArray];
          v121 = [v7 biasDeltaDataBytesArray];
          v122 = [v7 weightsDeltaDataBytesArray];
          v123 = [v122 count];

          if (!v123)
          {
            for (j = 0; j != 4; ++j)
            {
              v125 = v7;
              if (j == 3)
              {
                v126 = [v7 outDeltaData];
                v127 = v126;
                v128 = 0;
              }

              else
              {
                v126 = [v7 inDeltaData];
                v127 = v126;
                v128 = j;
              }

              v129 = [v126 objectAtIndexedSubscript:v128];

              v130 = [v6 objectAtIndexedSubscript:j];
              v131 = [v130 descriptor];
              v132 = [v131 tensorAllocationSizeInBytes];

              v133 = malloc_type_malloc(v132, 0x9B703018uLL);
              v134 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v133 length:v132 freeWhenDone:1];
              [v169 addObject:v134];
              *([v129 bytes] + 312) = v133;
              if (v120)
              {
                v135 = [v6 objectAtIndexedSubscript:j + 4];
                v136 = [v135 descriptor];
                v137 = v6;
                v138 = [v136 tensorAllocationSizeInBytes];

                v139 = malloc_type_malloc(v138, 0x873C0A36uLL);
                v140 = v138;
                v6 = v137;
                v141 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v139 length:v140 freeWhenDone:1];
                [v121 addObject:v141];
                *([v129 bytes] + 488) = v139;
              }

              v7 = v125;
            }
          }

          if (v163)
          {
            v142 = 0;
            v143 = 1;
            do
            {
              v144 = v143;
              v145 = [v7 attnBiasDeltaData];
              v146 = [v145 objectAtIndexedSubscript:v142];

              v147 = [v6 objectAtIndexedSubscript:v142 | v167];
              v148 = [v147 descriptor];
              v149 = [v148 tensorAllocationSizeInBytes];

              v150 = malloc_type_malloc(v149, 0x219B7350uLL);
              v151 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v150 length:v149 freeWhenDone:1];
              [v121 addObject:v151];
              *([v146 bytes] + 136) = v150;

              v143 = 0;
              v142 = 1;
            }

            while ((v144 & 1) != 0);
          }

          goto LABEL_59;
        }

        v163 = 1;
        v167 = 8;
      }

      v120 = 1;
      goto LABEL_71;
    }
  }

  v20 = [v7 weightsDeltaDataBytes];

  if (!v20)
  {
    v21 = [v6 objectAtIndexedSubscript:0];
    v22 = [v21 descriptor];
    v23 = malloc_type_calloc([v22 tensorAllocationSizeInBytes], 1uLL, 0xCC777CAFuLL);

    if (!v23)
    {
      v37 = +[MLCLog framework];
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        [MLCDeviceCPU(MLCLayerOperations) allocateParameterGradientsForDeviceOps:a2 parameters:?];
      }

      goto LABEL_58;
    }

    v24 = [v7 weightsDeltaData];
    *([v24 bytes] + 136) = v23;

    v25 = MEMORY[0x277CBEA90];
    v26 = [v6 objectAtIndexedSubscript:0];
    v27 = [v26 descriptor];
    v28 = [v25 dataWithBytesNoCopy:v23 length:objc_msgSend(v27 freeWhenDone:{"tensorAllocationSizeInBytes"), 1}];

    [v7 setWeightsDeltaDataBytes:v28];
  }

  if ([v6 count] == 2)
  {
    v29 = [v7 biasDeltaDataBytes];

    if (!v29)
    {
      v30 = [v6 objectAtIndexedSubscript:1];
      v31 = [v30 descriptor];
      v32 = malloc_type_calloc([v31 tensorAllocationSizeInBytes], 1uLL, 0xAB51ED69uLL);

      if (v32)
      {
        v33 = [v7 biasDeltaData];
        *([v33 bytes] + 136) = v32;

        v34 = MEMORY[0x277CBEA90];
        v35 = [v6 objectAtIndexedSubscript:1];
        v36 = [v35 descriptor];
        v18 = [v34 dataWithBytesNoCopy:v32 length:objc_msgSend(v36 freeWhenDone:{"tensorAllocationSizeInBytes"), 1}];

        [v7 setBiasDeltaDataBytes:v18];
        goto LABEL_55;
      }

      v37 = +[MLCLog framework];
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        [MLCDeviceCPU(MLCLayerOperations) allocateParameterGradientsForDeviceOps:a2 parameters:?];
      }

LABEL_58:
    }
  }

LABEL_59:
}

- (void)allocateResultTensor:(id)a3
{
  v5 = a3;
  v6 = [v5 deviceMemory];
  v7 = [v6 count];

  if (v7)
  {
    v8 = [v5 deviceMemory];
    v9 = [v8 count];

    if (v9 == 1)
    {
      v10 = [v5 deviceMemory];
      v11 = [v10 objectAtIndexedSubscript:0];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
        v13 = [v5 deviceMemory];
        v14 = [v13 objectAtIndexedSubscript:0];
        objc_opt_class();
        v15 = objc_opt_isKindOfClass();

        if (v15)
        {
          v16 = [(MLCDeviceCPU *)self deviceMemorySizeForTensor:v5];
          v17 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:malloc_type_malloc(v16 length:0x2BC0A111uLL) freeWhenDone:{v16, 1}];
          v18 = [v5 deviceMemory];
          [v18 addObject:v17];

          [v5 setDeviceIndex:1];
        }

        else
        {
          v19 = +[MLCLog framework];
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            [MLCDeviceCPU(MLCEngineDispatch) allocateResultTensor:a2];
          }
        }
      }
    }
  }

  else
  {
    [(MLCDeviceCPU *)self allocateDeviceMemoryForTensor:v5];
  }
}

- (void)shareResultTensor:(id)a3 sourceTensor:(id)a4 deviceOps:(id)a5
{
  v14 = a3;
  v7 = a4;
  v8 = [v14 deviceMemory];
  v9 = [v8 count];

  if (v9)
  {
    v10 = CPU_GetDeviceMemoryData(v14);
    v11 = CPU_GetDeviceMemoryData(v7);

    if (v10 != v11)
    {
      v12 = CPU_GetDeviceMemoryData(v7);
      v13 = CPU_GetDeviceMemoryData(v14);
      memcpy([v13 bytes], objc_msgSend(v12, "bytes"), objc_msgSend(v12, "length"));
    }
  }

  else
  {
    [(MLCDeviceCPU *)self shareDeviceMemoryWithResultTensor:v14 sourceTensor:v7];
  }
}

- (void)dispatchForwardSplitLayer:(id)a3 sourceTensor:(id)a4 resultTensors:(id)a5 forConcat:(BOOL)a6
{
  v63 = a6;
  v60 = a2;
  v65 = a4;
  v8 = a5;
  v64 = [a3 objectAtIndexedSubscript:0];
  memset(&src, 0, sizeof(src));
  memset(&dest, 0, sizeof(dest));
  if ([v8 count])
  {
    v9 = 0;
    v61 = v8;
    while (1)
    {
      v10 = [v8 objectAtIndexedSubscript:{v9, v60}];
      [(MLCDeviceCPU *)self allocateResultTensor:v10];

      v11 = [v8 objectAtIndexedSubscript:v9];
      v12 = [v11 descriptor];
      v13 = [v12 shape];
      v14 = [v65 descriptor];
      v15 = [v14 stride];
      v16 = [v65 descriptor];
      CPU_BuildBNNSNDArrayDescriptor(&src, v13, v15, 0, [v16 dataType], 1, 0);

      v17 = [v8 objectAtIndexedSubscript:v9];
      v18 = v17;
      if (v63)
      {
        BNNSConcatLayerTensorDataOffset = getBNNSConcatLayerTensorDataOffset(v17);
      }

      else
      {
        BNNSConcatLayerTensorDataOffset = getBNNSSplitLayerTensorDataOffset(v17);
      }

      v20 = BNNSConcatLayerTensorDataOffset;

      v21 = CPU_GetDeviceMemoryData(v65);
      src.data = ([v21 bytes] + v20);

      v8 = v61;
      v22 = [v61 objectAtIndexedSubscript:v9];
      v23 = [v22 descriptor];
      v24 = [v23 shape];
      v25 = [v61 objectAtIndexedSubscript:v9];
      v26 = [v25 descriptor];
      v27 = [v26 stride];
      v28 = [v61 objectAtIndexedSubscript:v9];
      v29 = [v28 descriptor];
      CPU_BuildBNNSNDArrayDescriptor(&dest, v24, v27, 0, [v29 dataType], 1, 0);

      v30 = [v61 objectAtIndexedSubscript:v9];
      v31 = CPU_GetDeviceMemoryData(v30);
      dest.data = [v31 bytes];

      v32 = [v65 descriptor];
      v33 = [v32 dataType];

      layout = src.layout;
      if (src.layout == BNNSDataLayoutVector)
      {
        v35 = BNNSDataLayout2DLastMajor;
      }

      else
      {
        v35 = BNNSDataLayout4DLastMajor;
      }

      src.layout = v35;
      if (dest.layout == BNNSDataLayoutVector)
      {
        v36 = BNNSDataLayout2DLastMajor;
      }

      else
      {
        v36 = BNNSDataLayout4DLastMajor;
      }

      dest.layout = v36;
      v37 = [v64 batchSize];
      v38 = [v61 objectAtIndexedSubscript:v9];
      v39 = [v38 descriptor];
      v40 = [v39 shape];
      v41 = [v40 objectAtIndexedSubscript:0];
      v42 = [v41 unsignedIntegerValue];

      if (v37 > v42)
      {
        v43 = [v61 objectAtIndexedSubscript:v9];
        v44 = [v43 descriptor];
        v45 = [v44 shape];
        v46 = [v45 objectAtIndexedSubscript:0];
        v37 = [v46 unsignedIntegerValue];
      }

      v47 = layout == BNNSDataLayoutVector;
      v48 = layout == BNNSDataLayoutVector ? 16 : 32;
      *(&src.flags + v48) = v37;
      v49 = v47 ? 80 : 96;
      v50 = [v65 descriptor];
      v51 = [v50 stride];
      v52 = [v51 objectAtIndexedSubscript:0];
      v53 = [v52 unsignedIntegerValue];
      v54 = v33 == 1 ? 2 : v33 == 3;
      *(&src.flags + v49) = v53 >> v54;

      *(&dest.flags + v48) = v37;
      v55 = [v61 objectAtIndexedSubscript:v9];
      v56 = [v55 descriptor];
      v57 = [v56 stride];
      v58 = [v57 objectAtIndexedSubscript:0];
      *(&dest.flags + v49) = [v58 unsignedIntegerValue] >> v54;

      if (BNNSCopy(&dest, &src, 0))
      {
        break;
      }

      if (++v9 >= [v61 count])
      {
        goto LABEL_29;
      }
    }

    v59 = +[MLCLog framework];
    if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
    {
      [MLCDeviceCPU(MLCEngineDispatch) dispatchForwardSplitLayer:sourceTensor:resultTensors:forConcat:];
    }
  }

LABEL_29:
}

- (void)dispatchForwardSliceLayer:(id)a3 sourceTensor:(id)a4 resultTensor:(id)a5 forTraining:(BOOL)a6
{
  v9 = a5;
  v10 = a4;
  v11 = a3;
  [(MLCDeviceCPU *)self allocateResultTensor:v9];
  v12 = [v11 objectAtIndexedSubscript:0];

  v13 = CPU_GetDeviceMemoryData(v10);

  v14 = CPU_GetDeviceMemoryData(v9);

  v15 = [v12 inDeltaData];
  v16 = [v15 objectAtIndexedSubscript:0];
  v17 = [v16 bytes];

  v18 = [v12 outDeltaData];
  v19 = [v18 objectAtIndexedSubscript:0];
  v20 = [v19 bytes];

  v21 = [v12 beginOffset];
  v17->data = ([v13 bytes] + v21);
  v20->data = [v14 bytes];
  if (BNNSCopy(v20, v17, 0))
  {
    v22 = +[MLCLog framework];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [MLCDeviceCPU(MLCEngineDispatch) dispatchForwardSliceLayer:sourceTensor:resultTensor:forTraining:];
    }
  }
}

- (void)dispatchGradientSliceLayer:(id)a3 sourceGradientTensor:(id)a4 resultGradientTensor:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  [(MLCDeviceCPU *)self allocateResultTensor:v8];
  v11 = [v10 objectAtIndexedSubscript:0];

  v12 = CPU_GetDeviceMemoryData(v9);

  v13 = CPU_GetDeviceMemoryData(v8);

  bzero([v13 bytes], objc_msgSend(v13, "length"));
  v14 = [v11 inDeltaData];
  v15 = [v14 objectAtIndexedSubscript:0];
  v16 = [v15 bytes];

  v17 = [v11 outDeltaData];
  v18 = [v17 objectAtIndexedSubscript:0];
  v19 = [v18 bytes];

  v19->data = [v12 bytes];
  v20 = [v11 beginOffset];
  v16->data = ([v13 bytes] + v20);
  if (BNNSCopy(v16, v19, 0))
  {
    v21 = +[MLCLog framework];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [MLCDeviceCPU(MLCEngineDispatch) dispatchForwardSliceLayer:sourceTensor:resultTensor:forTraining:];
    }
  }
}

- (void)dispatchGradientSplitLayer:(id)a3 sourceGradientTensors:(id)a4 resultGradientTensor:(id)a5 forConcat:(BOOL)a6
{
  v64 = a6;
  v9 = a4;
  v10 = a5;
  v65 = [a3 objectAtIndexedSubscript:0];
  memset(&src, 0, sizeof(src));
  memset(&dest, 0, sizeof(dest));
  v66 = v10;
  [(MLCDeviceCPU *)self allocateResultTensor:v10];
  if ([v9 count])
  {
    v11 = 0;
    while (1)
    {
      v12 = [v9 objectAtIndexedSubscript:v11];
      v13 = [v12 deviceMemory];
      v14 = [v13 count];

      if (v14)
      {
        v15 = [v9 objectAtIndexedSubscript:v11];
        v16 = [v15 descriptor];
        v17 = [v16 shape];
        v18 = [v9 objectAtIndexedSubscript:v11];
        v19 = [v18 descriptor];
        v20 = [v19 stride];
        v21 = [v9 objectAtIndexedSubscript:v11];
        v22 = [v21 descriptor];
        CPU_BuildBNNSNDArrayDescriptor(&src, v17, v20, 0, [v22 dataType], 1, 0);

        v23 = [v9 objectAtIndexedSubscript:v11];
        v24 = CPU_GetDeviceMemoryData(v23);
        src.data = [v24 bytes];

        v25 = [v9 objectAtIndexedSubscript:v11];
        v26 = [v25 descriptor];
        v27 = [v26 shape];
        v28 = [v66 descriptor];
        v29 = [v28 stride];
        v30 = [v66 descriptor];
        CPU_BuildBNNSNDArrayDescriptor(&dest, v27, v29, 0, [v30 dataType], 1, 0);

        v31 = [v9 objectAtIndexedSubscript:v11];
        v32 = v31;
        if (v64)
        {
          BNNSConcatLayerTensorDataOffset = getBNNSConcatLayerTensorDataOffset(v31);
        }

        else
        {
          BNNSConcatLayerTensorDataOffset = getBNNSSplitLayerTensorDataOffset(v31);
        }

        v34 = BNNSConcatLayerTensorDataOffset;

        v35 = CPU_GetDeviceMemoryData(v66);
        dest.data = ([v35 bytes] + v34);

        v36 = [v66 descriptor];
        v37 = [v36 dataType];

        layout = src.layout;
        if (src.layout == BNNSDataLayoutVector)
        {
          v39 = BNNSDataLayout2DLastMajor;
        }

        else
        {
          v39 = BNNSDataLayout4DLastMajor;
        }

        src.layout = v39;
        if (dest.layout == BNNSDataLayoutVector)
        {
          v40 = BNNSDataLayout2DLastMajor;
        }

        else
        {
          v40 = BNNSDataLayout4DLastMajor;
        }

        dest.layout = v40;
        v41 = [v65 batchSize];
        v42 = [v9 objectAtIndexedSubscript:v11];
        v43 = [v42 descriptor];
        v44 = [v43 shape];
        v45 = [v44 objectAtIndexedSubscript:0];
        v46 = [v45 unsignedIntegerValue];

        if (v41 > v46)
        {
          v47 = [v9 objectAtIndexedSubscript:v11];
          v48 = [v47 descriptor];
          v49 = [v48 shape];
          v50 = [v49 objectAtIndexedSubscript:0];
          v41 = [v50 unsignedIntegerValue];
        }

        v51 = layout == BNNSDataLayoutVector;
        v52 = layout == BNNSDataLayoutVector ? 16 : 32;
        *(&src.flags + v52) = v41;
        v53 = v51 ? 80 : 96;
        v54 = [v9 objectAtIndexedSubscript:v11];
        v55 = [v54 descriptor];
        v56 = [v55 stride];
        v57 = [v56 objectAtIndexedSubscript:0];
        v58 = [v57 unsignedIntegerValue];
        v59 = v37 == 1 ? 2 : v37 == 3;
        *(&src.flags + v53) = v58 >> v59;

        *(&dest.flags + v52) = v41;
        v60 = [v66 descriptor];
        v61 = [v60 stride];
        v62 = [v61 objectAtIndexedSubscript:0];
        *(&dest.flags + v53) = [v62 unsignedIntegerValue] >> v59;

        if (BNNSCopy(&dest, &src, 0))
        {
          break;
        }
      }

      if (++v11 >= [v9 count])
      {
        goto LABEL_30;
      }
    }

    v63 = +[MLCLog framework];
    if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
    {
      [MLCDeviceCPU(MLCEngineDispatch) dispatchForwardSplitLayer:sourceTensor:resultTensors:forConcat:];
    }
  }

LABEL_30:
}

- (void)dispatchForwardConcatLayer:(id)a3 sourceTensors:(id)a4 resultTensor:(id)a5
{
  v17[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v9 objectAtIndexedSubscript:0];
  v12 = [v11 concatDimension];

  if (v12 == 1)
  {
    if ([v9 count])
    {
      v13 = 0;
      do
      {
        v14 = [v9 objectAtIndexedSubscript:v13];
        v17[0] = v14;
        v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
        [(MLCDeviceCPU *)self dispatchGradientSplitLayer:v8 sourceGradientTensors:v15 resultGradientTensor:v10 forConcat:1];

        ++v13;
      }

      while (v13 < [v9 count]);
    }
  }

  else
  {
    [(MLCDeviceCPU *)self dispatchGradientSplitLayer:v8 sourceGradientTensors:v9 resultGradientTensor:v10 forConcat:1];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)dispatchGradientConcatLayer:(id)a3 sourceGradientTensor:(id)a4 resultGradientTensors:(id)a5
{
  v17[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v10 objectAtIndexedSubscript:0];
  v12 = [v11 concatDimension];

  if (v12 == 1)
  {
    if ([v10 count])
    {
      v13 = 0;
      do
      {
        v14 = [v10 objectAtIndexedSubscript:v13];
        v17[0] = v14;
        v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
        [(MLCDeviceCPU *)self dispatchForwardSplitLayer:v8 sourceTensor:v9 resultTensors:v15 forConcat:1];

        ++v13;
      }

      while (v13 < [v10 count]);
    }
  }

  else
  {
    [(MLCDeviceCPU *)self dispatchForwardSplitLayer:v8 sourceTensor:v9 resultTensors:v10 forConcat:1];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)dispatchForwardMatMulLayer:(id)a3 sourceTensors:(id)a4 resultTensor:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = [v8 objectAtIndexedSubscript:0];
  v12 = [v8 objectAtIndexedSubscript:1];
  [(MLCDeviceCPU *)self allocateResultTensor:v9];
  v13 = [v10 objectAtIndexedSubscript:0];

  v29 = v11;
  v14 = CPU_GetDeviceMemoryData(v11);
  v15 = CPU_GetDeviceMemoryData(v12);
  v16 = CPU_GetDeviceMemoryData(v9);

  if ([v8 count] == 3)
  {
    v17 = [v8 objectAtIndexedSubscript:2];
    v18 = CPU_GetDeviceMemoryData(v17);

    [v8 objectAtIndexedSubscript:2];
    v19 = [v18 bytes];
    v20 = [v13 fusedPrimitiveParams];
    *([v20 bytes] + 312) = v19;

    v21 = [v16 bytes];
    v22 = [v13 params];
    *([v22 bytes] + 504) = v21;

    v23 = [v13 params];
    v24 = [v23 bytes];
    v25 = [v13 fusedPrimitiveParams];
    LODWORD(v24) = BNNSCopy((v24 + 368), ([v25 bytes] + 176), 0);

    if (v24)
    {
      v26 = +[MLCLog framework];
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        [MLCDeviceCPU(MLCEngineDispatch) dispatchForwardMatMulLayer:sourceTensors:resultTensor:];
      }
    }
  }

  if (BNNSFilterApplyTwoInputBatch([v13 BNNSFilter], 1uLL, objc_msgSend(v14, "bytes"), objc_msgSend(v13, "sourceStride"), objc_msgSend(v15, "bytes"), objc_msgSend(v13, "sourceStrideSecondary"), objc_msgSend(v16, "bytes"), objc_msgSend(v13, "resultStride")))
  {
    v27 = +[MLCLog framework];
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      [MLCDeviceCPU(MLCEngineDispatch) dispatchForwardMatMulLayer:sourceTensors:resultTensor:];
    }
  }

  [v13 setSource:v14];
  [v13 setSecondarySource:v15];
}

- (void)dispatchForwardEmbeddingLayer:(id)a3 weight:(id)a4 sourceTensor:(id)a5 resultTensor:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  [(MLCDeviceCPU *)self allocateResultTensor:v13];
  v55 = v10;
  v48 = [v10 objectAtIndexedSubscript:0];
  v14 = CPU_GetDeviceMemoryData(v12);
  [v48 setSource:v14];
  v51 = v14;
  v15 = [v14 bytes];
  v50 = [v11 data];
  v16 = [v50 bytes];
  v52 = v13;
  v49 = CPU_GetDeviceMemoryData(v13);
  v17 = [v49 bytes];
  v18 = [v11 descriptor];
  v19 = [v18 shape];
  v54 = v11;
  v20 = [v11 descriptor];
  v21 = [v19 objectAtIndexedSubscript:{objc_msgSend(v20, "dimensionCount") - 1}];
  v22 = [v21 unsignedIntegerValue];

  __N = v22;
  v23 = [v12 descriptor];
  v24 = [v23 tensorAllocationSizeInBytes];
  v53 = v12;
  v25 = [v12 descriptor];
  v26 = +[MLCTensorDescriptor elementByteCount:](MLCTensorDescriptor, "elementByteCount:", [v25 dataType]);
  v27 = v24 / v26;

  v28 = [v48 embeddingParams];

  if (v28)
  {
    v29 = [v48 embeddingParams];
    v30 = [v29 objectAtIndexedSubscript:0];
    [v30 floatValue];
    v32 = v31;

    v33 = [v48 embeddingParams];
    v34 = [v33 objectAtIndexedSubscript:1];
    [v34 floatValue];
    v36 = v35;
    v58 = v35;

    if (v36 == INFINITY)
    {
      if (v26 <= v24)
      {
        v37 = 0;
        do
        {
          __C = 0.0;
          v38 = (v16 + 4 * v22 * *(v15 + 8 * v37));
          vDSP_maxmgv(v38, 1, &__C, v22);
          if (__C > (v32 + 0.00001))
          {
            v56 = v32 / __C;
            MEMORY[0x23EE76610](v38, 1, &v56, v38, 1, v22);
          }

          memcpy(v17, v38, 4 * v22);
          ++v37;
          v17 += 4 * v22;
        }

        while (v37 < v27);
      }
    }

    else if (v36 == 1.0)
    {
      if (v26 <= v24)
      {
        v40 = 0;
        do
        {
          __C = 0.0;
          v41 = (v16 + 4 * v22 * *(v15 + 8 * v40));
          vDSP_svemg(v41, 1, &__C, v22);
          if (__C > (v32 + 0.00001))
          {
            v56 = v32 / __C;
            MEMORY[0x23EE76610](v41, 1, &v56, v41, 1, v22);
          }

          memcpy(v17, v41, 4 * v22);
          ++v40;
          v17 += 4 * v22;
        }

        while (v40 < v27);
      }
    }

    else if (v36 == 2.0)
    {
      if (v26 <= v24)
      {
        v42 = 0;
        do
        {
          __C = 0.0;
          v43 = (v16 + 4 * v22 * *(v15 + 8 * v42));
          vDSP_svesq(v43, 1, &__C, v22);
          v44 = sqrtf(__C);
          __C = v44;
          if (v44 > (v32 + 0.00001))
          {
            v56 = v32 / v44;
            MEMORY[0x23EE76610](v43, 1, &v56, v43, 1, v22);
          }

          memcpy(v17, v43, 4 * v22);
          ++v42;
          v17 += 4 * v22;
        }

        while (v42 < v27);
      }
    }

    else if (v26 <= v24)
    {
      v45 = 0;
      do
      {
        __C = 0.0;
        v46 = (v16 + 4 * v22 * *(v15 + 8 * v45));
        memcpy(v17, v46, 4 * v22);
        vDSP_vabs(v17, 1, v17, 1, v22);
        vvpowsf(v17, &v58, v17, &__N);
        vDSP_sve(v17, 1, &__C, __N);
        v47 = powf(__C, 1.0 / v58);
        __C = v47;
        if (v47 > (v32 + 0.00001))
        {
          v56 = v32 / v47;
          MEMORY[0x23EE76610](v46, 1, &v56, v46, 1, __N);
        }

        v22 = __N;
        memcpy(v17, v46, 4 * __N);
        v17 += 4 * v22;
        ++v45;
      }

      while (v45 < v27);
    }
  }

  else if (v26 <= v24)
  {
    v39 = 0;
    do
    {
      memcpy(v17, (v16 + 4 * v22 * *(v15 + 8 * v39++)), 4 * v22);
      v17 += 4 * v22;
    }

    while (v39 < v27);
  }
}

- (void)dispatchForwardMHALayer:(id)a3 sourceTensors:(id)a4 resultTensor:(id)a5 resultStateIsTemporary:(BOOL)a6 forTraining:(BOOL)a7
{
  v7 = a7;
  v11 = a4;
  v12 = a5;
  v13 = a3;
  [(MLCDeviceCPU *)self allocateResultTensor:v12];
  v14 = [v11 objectAtIndexedSubscript:0];
  v15 = CPU_GetDeviceMemoryData(v14);

  v16 = [v11 objectAtIndexedSubscript:1];
  v17 = CPU_GetDeviceMemoryData(v16);

  v18 = [v11 objectAtIndexedSubscript:2];
  v19 = CPU_GetDeviceMemoryData(v18);

  v59 = CPU_GetDeviceMemoryData(v12);

  [v11 objectAtIndexedSubscript:0];
  [v11 objectAtIndexedSubscript:1];

  [v11 objectAtIndexedSubscript:2];
  v20 = [v13 objectAtIndexedSubscript:0];

  v56 = [v20 BNNSFilter];
  if ([v20 hasKeyMask])
  {
    v21 = [v11 objectAtIndexedSubscript:3];
    v22 = CPU_GetDeviceMemoryData(v21);

    v23 = [v20 keyMask];
    v24 = [v23 bytes];

    *(v24 + 136) = [v22 bytes];
  }

  if ([v20 hasKeyMask])
  {
    if ([v20 hasAttnMask])
    {
      v25 = 4;
    }

    else
    {
      v25 = 3;
    }
  }

  else
  {
    v25 = 3;
  }

  if ([v20 hasAttnMask])
  {
    v26 = [v11 objectAtIndexedSubscript:v25];
    v27 = CPU_GetDeviceMemoryData(v26);

    v28 = [v20 attnMask];
    v29 = [v28 bytes];

    *(v29 + 136) = [v27 bytes];
  }

  workspace_size = 0;
  backprop_cache_size[0] = 0;
  if (v7)
  {
    if (BNNSApplyMultiheadAttention(v56, [v20 batchSize], objc_msgSend(v15, "bytes"), 0, objc_msgSend(v17, "bytes"), 0, 0, 0, objc_msgSend(v19, "bytes"), 0, objc_msgSend(v59, "bytes"), 0, 0, backprop_cache_size, 0, &workspace_size, 0))
    {
      v30 = +[MLCLog framework];
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        [MLCDeviceCPU(MLCEngineDispatch) dispatchForwardMHALayer:sourceTensors:resultTensor:resultStateIsTemporary:forTraining:];
      }
    }

    if (backprop_cache_size[0])
    {
      v58 = malloc_type_malloc(backprop_cache_size[0], 0x72995DE5uLL);
    }

    else
    {
      v58 = 0;
    }

    if (workspace_size)
    {
      v57 = malloc_type_malloc(workspace_size, 0x34D0BB61uLL);
    }

    else
    {
      v57 = 0;
    }
  }

  else
  {
    v57 = 0;
    v58 = 0;
  }

  v51 = [v20 batchSize];
  v50 = [v15 bytes];
  v49 = [v20 sourceStride];
  v53 = v17;
  v48 = [v17 bytes];
  v47 = [v20 sourceStrideSecondary];
  v31 = [v20 hasKeyMask];
  v55 = v11;
  v52 = v7;
  if (v31)
  {
    v45 = [v20 keyMask];
    v46 = [v45 bytes];
  }

  else
  {
    v46 = 0;
  }

  v54 = v15;
  v32 = [v20 keyMaskStride];
  v33 = v19;
  value = [v19 bytes];
  value_stride = [v20 sourceStrideTertiary];
  v36 = [v59 bytes];
  output_stride = [v20 resultStride];
  v38 = [v20 hasAttnMask];
  if (v38)
  {
    v15 = [v20 attnMask];
    v39 = [v15 bytes];
  }

  else
  {
    v39 = 0;
  }

  v40 = backprop_cache_size;
  if (!backprop_cache_size[0])
  {
    v40 = 0;
  }

  p_workspace_size = &workspace_size;
  if (!workspace_size)
  {
    p_workspace_size = 0;
  }

  v42 = BNNSApplyMultiheadAttention(v56, v51, v50, v49, v48, v47, v46, v32, value, value_stride, v36, output_stride, v39, v40, v58, p_workspace_size, v57);
  if (v38)
  {
  }

  if (v31)
  {
  }

  if (v42)
  {
    v43 = +[MLCLog framework];
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      [MLCDeviceCPU(MLCEngineDispatch) dispatchForwardMHALayer:sourceTensors:resultTensor:resultStateIsTemporary:forTraining:];
    }
  }

  if (workspace_size)
  {
    free(v57);
  }

  if (!backprop_cache_size[0])
  {
    v44 = 0;
    if (!v52)
    {
      goto LABEL_45;
    }

    goto LABEL_44;
  }

  v44 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v58 length:backprop_cache_size[0] freeWhenDone:1];
  if (v52)
  {
LABEL_44:
    [v20 setSource:v54];
    [v20 setSecondarySource:v53];
    [v20 setTertiarySource:v33];
    [v20 setResult:v59];
    [v20 setSourceDataOffset:0];
    [v20 setSecondarySourceDataOffset:0];
    [v20 setTertiarySourceDataOffset:0];
    [v20 setResultDataOffset:0];
    [v20 setBackpropCacheSize:backprop_cache_size[0]];
    [v20 setBackpropCacheData:v44];
  }

LABEL_45:
}

- (void)dispatchForwardLayer:(id)a3 sourceTensor:(id)a4 resultTensor:(id)a5 resultStateIsTemporary:(BOOL)a6 forTraining:(BOOL)a7
{
  v7 = a7;
  v11 = a4;
  v12 = a5;
  v13 = [a3 objectAtIndexedSubscript:0];
  [(MLCDeviceCPU *)self allocateResultTensor:v12];
  v14 = CPU_GetDeviceMemoryData(v11);
  v15 = CPU_GetDeviceMemoryData(v12);
  v16 = [v13 BNNSFilter];
  v17 = [v13 batchSize];
  v18 = [v13 deviceOpType];
  if (v18 <= 0x29)
  {
    if (((1 << v18) & 0x36100000E00) != 0)
    {
      v19 = adjustBatchSizeForFC(v11, v17);
LABEL_4:
      [v13 setBatchSize:v19];
      goto LABEL_5;
    }

    if (v18 == 39)
    {
      v19 = 1;
      goto LABEL_4;
    }
  }

LABEL_5:
  training = v7;
  v72 = v15;
  if ([v13 isFusedBNNSFilter])
  {
    v20 = v15;
    v21 = [v13 batchSize];
    v22 = [v14 bytes];
    v23 = v14;
    v24 = v12;
    v25 = v11;
    v26 = v17;
    v27 = [v13 sourceStride];
    v28 = [v20 bytes];
    v29 = [v13 resultStride];
    v30 = v27;
    v17 = v26;
    v11 = v25;
    v12 = v24;
    v14 = v23;
    v31 = v28;
    v32 = training;
    v33 = BNNSFusedFilterApplyBatch(v16, v21, v22, v30, v31, v29, training);
    goto LABEL_10;
  }

  v34 = [v13 deviceOpType];
  if (v34 > 0x22)
  {
    goto LABEL_25;
  }

  if (((1 << v34) & 0x63030000CLL) == 0)
  {
    if (v34 == 15 && v7)
    {
      v48 = [v13 params];
      v49 = [v48 bytes];

      if (!*(v49 + 576))
      {
        v50 = [v13 poolingIndicesBuffer];

        if (!v50)
        {
          v51 = [v12 descriptor];
          v52 = 2 * ([v51 tensorAllocationSizeInBytes] & 0x1FFFFFFFFFFFFFFFLL);

          v53 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:malloc_type_calloc(v52 length:1uLL freeWhenDone:{0x6573C90BuLL), v52, 1}];
          [v13 setPoolingIndicesBuffer:v53];
        }
      }

      v54 = [v13 batchSize];
      v71 = [v14 bytes];
      in_stride = [v13 sourceStride];
      v55 = [v15 bytes];
      v56 = [v13 resultStride];
      v57 = [v13 poolingIndicesBuffer];
      v58 = BNNSPoolingFilterApplyBatch(v16, v54, v71, in_stride, v55, v56, [v57 bytes], objc_msgSend(v13, "resultStride"));

LABEL_26:
      v32 = training;
      if (!v58)
      {
        goto LABEL_14;
      }

      goto LABEL_11;
    }

LABEL_25:
    v59 = [v13 batchSize];
    v60 = [v14 bytes];
    v61 = v14;
    v62 = v12;
    v63 = v11;
    v64 = v17;
    v65 = v16;
    v66 = [v13 sourceStride];
    v67 = [v15 bytes];
    v68 = [v13 resultStride];
    v69 = v65;
    v17 = v64;
    v11 = v63;
    v12 = v62;
    v14 = v61;
    v58 = BNNSFilterApplyBatch(v69, v59, v60, v66, v67, v68);
    goto LABEL_26;
  }

  v35 = [v13 batchSize];
  v36 = [v14 bytes];
  v37 = v14;
  v38 = v12;
  v39 = v11;
  v40 = v17;
  v41 = v16;
  v42 = [v13 sourceStride];
  v43 = [v15 bytes];
  v44 = [v13 resultStride];
  v45 = v41;
  v17 = v40;
  v11 = v39;
  v12 = v38;
  v14 = v37;
  v46 = v35;
  v32 = training;
  v33 = BNNSNormalizationFilterApplyBatch(v45, v46, v36, v42, v43, v44, training);
LABEL_10:
  if (!v33)
  {
    goto LABEL_14;
  }

LABEL_11:
  v47 = +[MLCLog framework];
  if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceCPU(MLCEngineDispatch) dispatchForwardLayer:sourceTensor:resultTensor:resultStateIsTemporary:forTraining:];
  }

LABEL_14:
  [v13 setBatchSize:{v17, in_stride}];
  if (v32)
  {
    [v13 setSource:v14];
    [v13 setResult:v72];
    [v13 setSourceDataOffset:0];
    [v13 setResultDataOffset:0];
  }
}

- (void)dispatchForwardLayer:(id)a3 sourceTensor:(id)a4 secondaryTensor:(id)a5 tertiaryTensor:(id)a6 resultTensor:(id)a7 resultStateIsTemporary:(BOOL)a8 forTraining:(BOOL)a9
{
  v36 = *MEMORY[0x277D85DE8];
  v13 = a5;
  v14 = a7;
  v15 = a4;
  v16 = [a3 objectAtIndexedSubscript:0];
  v17 = [v16 BNNSFilter];
  [(MLCDeviceCPU *)self allocateResultTensor:v14];
  v18 = CPU_GetDeviceMemoryData(v15);

  v19 = CPU_GetDeviceMemoryData(v14);

  in = [v18 bytes];
  v35 = 0;
  in_stride = [v16 sourceStride];
  v33 = 0;
  v20 = 0;
  if ([v16 binaryOperation])
  {
    v20 = CPU_GetDeviceMemoryData(v13);
    v35 = [v20 bytes];
    v33 = [v16 sourceStrideSecondary];
    if (a9)
    {
      [v16 setSecondarySource:v20];
      [v16 setSecondarySourceDataOffset:0];
    }
  }

  v21 = [v16 deviceOpType];
  if (v21 == 1)
  {
    v27 = [v16 batchSize];
    if ([v16 binaryOperation])
    {
      v28 = 2;
    }

    else
    {
      v28 = 1;
    }

    v26 = BNNSArithmeticFilterApplyBatch(v17, v27, v28, &in, &in_stride, [v19 bytes], objc_msgSend(v16, "resultStride"));
  }

  else
  {
    if (v21 != 42)
    {
      goto LABEL_18;
    }

    v22 = [v16 params];
    v23 = [v22 bytes];

    v24 = *v23;
    *(v23 + 144) = [v18 bytes];
    *(v23 + 320) = [v20 bytes];
    *(v23 + 496) = [v19 bytes];
    if ([v16 binaryOperation])
    {
      v25 = (v23 + 184);
    }

    else
    {
      v25 = (v23 + 8);
    }

    v26 = BNNSCompareTensor((v23 + 8), v25, v24, (v23 + 360));
  }

  if (v26)
  {
LABEL_18:
    v30 = +[MLCLog framework];
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      [MLCDeviceCPU(MLCEngineDispatch) dispatchForwardLayer:sourceTensor:resultTensor:resultStateIsTemporary:forTraining:];
    }

    if (a9)
    {
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  if (a9)
  {
LABEL_16:
    [v16 setSource:v18];
    [v16 setResult:v19];
    [v16 setSourceDataOffset:0];
    [v16 setResultDataOffset:0];
  }

LABEL_17:

  v29 = *MEMORY[0x277D85DE8];
}

- (void)dispatchForwardLossLayer:(id)a3 sourceTensor:(id)a4 labelsTensor:(id)a5 labelsTensorStride:(unint64_t)a6 weightsTensor:(id)a7 resultTensor:(id)a8 resultStateIsTemporary:(BOOL)a9 forTraining:(BOOL)a10
{
  v15 = a8;
  v16 = a7;
  v17 = a5;
  v18 = a4;
  v19 = a3;
  [(MLCDeviceCPU *)self allocateResultTensor:v15];
  v20 = [v19 objectAtIndexedSubscript:0];

  v21 = CPU_GetDeviceMemoryData(v18);

  v30 = CPU_GetDeviceMemoryData(v15);

  v22 = CPU_GetDeviceMemoryData(v17);

  v23 = CPU_GetDeviceMemoryData(v16);

  [v20 lossWeight];
  v25 = v24;
  v31 = v24;
  if ([v23 bytes])
  {
    v26 = [v23 bytes];
    v27 = [v23 length] >> 2;
  }

  else
  {
    v27 = v25 != 1.0;
    if (v25 == 1.0)
    {
      v26 = 0;
    }

    else
    {
      v26 = &v31;
    }
  }

  if (BNNSLossFilterApplyBatch([v20 BNNSFilter], objc_msgSend(v20, "batchSize"), objc_msgSend(v21, "bytes"), objc_msgSend(v20, "sourceStride"), objc_msgSend(v22, "bytes"), a6, v26, v27, objc_msgSend(v30, "bytes"), 0, 0))
  {
    v28 = +[MLCLog framework];
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      [MLCDeviceCPU(MLCEngineDispatch) dispatchForwardLossLayer:sourceTensor:labelsTensor:labelsTensorStride:weightsTensor:resultTensor:resultStateIsTemporary:forTraining:];
    }
  }

  if (a10)
  {
    [v20 setSource:v21];
    [v20 setSourceDataOffset:0];
  }
}

- (void)dispatchGradientLayer:(id)a3 sourceGradientTensor:(id)a4 resultGradientTensor:(id)a5
{
  v72[4] = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  v10 = [a3 objectAtIndexedSubscript:0];
  [(MLCDeviceCPU *)self allocateResultTensor:v9];
  v11 = [v8 deviceMemory];
  v12 = [v9 deviceMemory];

  v13 = [v10 batchSize];
  v14 = [v10 deviceOpType];
  if (v14 <= 0x29)
  {
    if (((1 << v14) & 0x36100000E00) != 0)
    {
      v15 = adjustBatchSizeForFC(v8, v13);
LABEL_4:
      [v10 setBatchSize:v15];
      goto LABEL_5;
    }

    if (v14 == 39)
    {
      v15 = 1;
      goto LABEL_4;
    }
  }

LABEL_5:
  v68 = v13;
  v16 = [v10 inDeltaData];
  v17 = [v16 objectAtIndexedSubscript:0];
  v18 = [v17 bytes];

  v19 = [v10 outDeltaData];
  v20 = [v19 objectAtIndexedSubscript:0];
  out_delta = [v20 bytes];

  v22 = [v12 objectAtIndexedSubscript:0];
  v18->data = [v22 bytes];

  v23 = [v11 objectAtIndexedSubscript:0];
  out_delta->data = [v23 bytes];

  out = 0;
  if ([v10 resultOfForwardNeededForGradient])
  {
    v24 = [v10 result];
    v25 = [v10 resultDataOffset];
    out = ([v24 bytes] + v25);
  }

  if ([v10 sourceOfForwardNeededForGradient])
  {
    v26 = [v10 source];
    v27 = [v10 sourceDataOffset];
    v28 = ([v26 bytes] + v27);
  }

  else
  {
    v28 = 0;
  }

  v69 = v12;
  v70 = v11;
  if ([v10 isFusedBNNSFilter])
  {
    v29 = [v10 weightsDeltaData];
    v72[0] = [v29 bytes];
    v30 = [v10 biasDeltaData];
    v72[1] = [v30 bytes];
    v31 = [v10 betaDeltaData];
    v72[2] = [v31 bytes];
    v32 = [v10 gammaDeltaData];
    v72[3] = [v32 bytes];

    v33 = [v10 BNNSFilter];
    v34 = [v10 batchSize];
    v35 = [v10 sourceStride];
    if ([v10 computeWeightsAndBiasOnly])
    {
      v36 = 0;
    }

    else
    {
      v36 = v18;
    }

    v37 = BNNSFusedFilterApplyBackwardBatch(v33, v34, v28, v35, v36, [v10 sourceStride], out, objc_msgSend(v10, "resultStride"), out_delta, objc_msgSend(v10, "resultStride"), v72);
  }

  else
  {
    v67 = v8;
    if ([v10 deviceOpType] == 2 || objc_msgSend(v10, "deviceOpType") == 3 || objc_msgSend(v10, "deviceOpType") == 20 || objc_msgSend(v10, "deviceOpType") == 21 || objc_msgSend(v10, "deviceOpType") == 28 || objc_msgSend(v10, "deviceOpType") == 29 || objc_msgSend(v10, "deviceOpType") == 33 || objc_msgSend(v10, "deviceOpType") == 34)
    {
      v38 = [v10 BNNSFilter];
      batch_sizea = [v10 batchSize];
      v39 = [v10 sourceStride];
      v40 = [v10 resultStride];
      v41 = [v10 resultStride];
      v42 = [v10 betaDeltaData];
      v43 = [v42 bytes];
      [v10 gammaDeltaData];
      v45 = v44 = out_delta;
      v37 = BNNSNormalizationFilterApplyBackwardBatch(v38, batch_sizea, v18, v39, out, v40, v44, v41, v43, [v45 bytes]);
    }

    else
    {
      v48 = [v10 deviceOpType];
      v49 = [v10 BNNSFilter];
      batch_size = [v10 batchSize];
      v64 = [v10 sourceStride];
      if (v48 == 15)
      {
        v50 = [v10 sourceStride];
        v51 = [v10 resultStride];
        out_delta_stride = [v10 resultStride];
        v53 = [v10 poolingIndicesBuffer];
        v37 = BNNSPoolingFilterApplyBackwardBatch(v49, batch_size, v28, v64, v18, v50, out, v51, out_delta, out_delta_stride, 0, [v53 bytes], objc_msgSend(v10, "resultStride"));
      }

      else
      {
        if ([v10 computeWeightsAndBiasOnly])
        {
          v54 = 0;
        }

        else
        {
          v54 = v18;
        }

        in_delta = v54;
        v55 = [v10 sourceStride];
        v56 = [v10 resultStride];
        v57 = [v10 resultStride];
        v58 = [v10 weightsDeltaData];
        v59 = v49;
        v60 = out_delta;
        weights_delta = [v58 bytes];
        v62 = [v10 biasDeltaData];
        v37 = BNNSFilterApplyBackwardBatch(v59, batch_size, v28, v64, in_delta, v55, out, v56, v60, v57, weights_delta, [v62 bytes]);
      }
    }

    v8 = v67;
  }

  if (v37)
  {
    v46 = +[MLCLog framework];
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      [MLCDeviceCPU(MLCEngineDispatch) dispatchGradientLayer:sourceGradientTensor:resultGradientTensor:];
    }
  }

  [v10 setBatchSize:v68];

  v47 = *MEMORY[0x277D85DE8];
}

- (void)dispatchGradientMatMulLayer:(id)a3 sourceGradientTensor:(id)a4 resultGradientTensors:(id)a5
{
  v68 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v10 objectAtIndexedSubscript:0];
  v12 = [v10 objectAtIndexedSubscript:1];
  v62 = v8;
  v13 = [v8 objectAtIndexedSubscript:0];
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v14 = v10;
  v15 = [v14 countByEnumeratingWithState:&v63 objects:v67 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v64;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v64 != v17)
        {
          objc_enumerationMutation(v14);
        }

        [(MLCDeviceCPU *)self allocateResultTensor:*(*(&v63 + 1) + 8 * i)];
      }

      v16 = [v14 countByEnumeratingWithState:&v63 objects:v67 count:16];
    }

    while (v16);
  }

  v61 = v9;
  v19 = [v9 deviceMemory];
  v20 = [v19 objectAtIndexedSubscript:0];

  v60 = v11;
  v21 = [v11 deviceMemory];
  v22 = [v21 objectAtIndexedSubscript:0];

  v23 = [v12 deviceMemory];
  v24 = [v23 objectAtIndexedSubscript:0];

  v25 = [v13 inDeltaData];
  v26 = [v25 objectAtIndexedSubscript:0];
  v27 = [v26 bytes];

  v58 = v22;
  v56 = v27;
  *(v27 + 136) = [v22 bytes];
  v28 = [v13 inDeltaData];
  v29 = [v28 objectAtIndexedSubscript:1];
  v30 = [v29 bytes];

  v57 = v24;
  inB_delta = v30;
  *(v30 + 136) = [v24 bytes];
  v31 = [v13 outDeltaData];
  v32 = [v31 objectAtIndexedSubscript:0];
  out_delta = [v32 bytes];

  v59 = v20;
  out_delta->data = [v20 bytes];
  if ([v14 count] == 3)
  {
    v34 = [v14 objectAtIndexedSubscript:2];
    v35 = [v34 deviceMemory];
    v36 = [v35 objectAtIndexedSubscript:0];

    [v14 objectAtIndexedSubscript:2];
    v37 = [v13 layer];
    LODWORD(v34) = BNNSFilterApply([v37 secondaryFilter], out_delta->data, objc_msgSend(v36, "bytes"));

    if (v34)
    {
      v38 = +[MLCLog framework];
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        [MLCDeviceCPU(MLCEngineDispatch) dispatchGradientMatMulLayer:sourceGradientTensor:resultGradientTensors:];
      }
    }
  }

  v54 = [v13 BNNSFilter];
  v39 = [v13 source];
  v53 = [v13 sourceDataOffset];
  v50 = [v39 bytes];
  inA_stride = [v13 sourceStride];
  v51 = [v13 sourceStride];
  v40 = [v13 secondarySource];
  v49 = [v13 secondarySourceDataOffset];
  v47 = [v40 bytes];
  v48 = [v13 sourceStrideSecondary];
  v41 = v12;
  inB_delta_stride = [v13 sourceStrideSecondary];
  v43 = [v13 result];
  v44 = BNNSFilterApplyBackwardTwoInputBatch(v54, 1uLL, (v50 + v53), inA_stride, v56, v51, (v47 + v49), v48, inB_delta, inB_delta_stride, ([v43 bytes] + objc_msgSend(v13, "resultDataOffset")), objc_msgSend(v13, "resultStride"), out_delta, objc_msgSend(v13, "resultStride"), 0, 0);

  if (v44)
  {
    v45 = +[MLCLog framework];
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      [MLCDeviceCPU(MLCEngineDispatch) dispatchGradientMatMulLayer:sourceGradientTensor:resultGradientTensors:];
    }
  }

  v46 = *MEMORY[0x277D85DE8];
}

- (void)dispatchGradientLayer:(id)a3 sourceGradientTensor:(id)a4 resultGradientTensor:(id)a5 secondaryResultGradientTensor:(id)a6
{
  v62 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [v10 objectAtIndexedSubscript:0];
  if (![v14 binaryOperation] || !objc_msgSend(v14, "useSourceGradientDeviceMemoryForSecondaryResultGradientTensor") || !objc_msgSend(v14, "useSourceGradientDeviceMemoryForResultGradientTensor"))
  {
    if (v12)
    {
      [(MLCDeviceCPU *)self allocateResultTensor:v12];
    }

    v54 = v10;
    if (v13)
    {
      [(MLCDeviceCPU *)self allocateResultTensor:v13];
    }

    v16 = [v11 deviceMemory];
    v17 = [v12 deviceMemory];
    v55 = [v13 deviceMemory];
    v18 = [v14 inDeltaData];
    v19 = [v18 objectAtIndexedSubscript:0];
    v20 = [v19 bytes];

    v21 = [v17 objectAtIndexedSubscript:0];
    v20->data = [v21 bytes];

    v22 = [v14 outDeltaData];
    v23 = [v22 objectAtIndexedSubscript:0];
    out_delta = [v23 bytes];

    v52 = v16;
    v25 = [v16 objectAtIndexedSubscript:0];
    out_delta->data = [v25 bytes];

    in = 0;
    v61 = 0;
    in_delta_stride = [v14 sourceStride];
    v59 = 0;
    in_delta = v20;
    v57 = 0;
    v53 = v11;
    if ([v14 binaryOperation])
    {
      v26 = [v14 source];
      v27 = [v14 sourceDataOffset];
      v28 = ([v26 bytes] + v27);

      if ([v14 sourceOfForwardNeededForGradient])
      {
        in = v28;
      }

      v29 = [v14 inDeltaData];
      v30 = [v29 objectAtIndexedSubscript:1];
      v31 = [v30 bytes];

      v32 = [v55 objectAtIndexedSubscript:0];
      *(v31 + 136) = [v32 bytes];

      v33 = [v14 secondarySource];
      v34 = [v14 secondarySourceDataOffset];
      v35 = ([v33 bytes] + v34);

      if ([v14 sourceOfForwardNeededForGradient])
      {
        v61 = v35;
      }

      v59 = [v14 sourceStrideSecondary];
      if (v28 == v35)
      {
        v36 = v20;
      }

      else
      {
        v36 = v31;
      }

      v57 = v36;
      v37 = [v14 params];
      v38 = [v37 bytes];

      v39 = *(v38 + 8);
      if (!*(v39 + 176))
      {
        in_delta = 0;
      }

      v40 = 0;
      if (!*(v39 + 360))
      {
        v57 = 0;
      }
    }

    else if ([v14 resultOfForwardNeededForGradient])
    {
      v41 = [v14 result];
      v42 = [v14 resultDataOffset];
      v40 = ([v41 bytes] + v42);
    }

    else
    {
      v43 = [v14 source];
      v44 = [v14 sourceDataOffset];
      v45 = ([v43 bytes] + v44);

      v40 = 0;
      in = v45;
    }

    if ([v14 deviceOpType] == 1)
    {
      v46 = [v14 BNNSFilter];
      v47 = [v14 batchSize];
      if ([v14 binaryOperation])
      {
        v48 = 2;
      }

      else
      {
        v48 = 1;
      }

      v49 = BNNSArithmeticFilterApplyBackwardBatch(v46, v47, v48, &in, &in_delta_stride, &in_delta, &in_delta_stride, v40, [v14 resultStride], out_delta, objc_msgSend(v14, "resultStride"));
      v11 = v53;
      v10 = v54;
      if (!v49)
      {
LABEL_35:

        goto LABEL_36;
      }
    }

    else
    {
      v11 = v53;
      v10 = v54;
    }

    v50 = +[MLCLog framework];
    if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
    {
      [MLCDeviceCPU(MLCEngineDispatch) dispatchGradientLayer:sourceGradientTensor:resultGradientTensor:];
    }

    goto LABEL_35;
  }

  v15 = objc_autoreleasePoolPush();
  [(MLCDeviceCPU *)self shareDeviceMemoryWithResultTensor:v12 sourceTensor:v11];
  [(MLCDeviceCPU *)self shareDeviceMemoryWithResultTensor:v13 sourceTensor:v11];
  objc_autoreleasePoolPop(v15);
LABEL_36:

  v51 = *MEMORY[0x277D85DE8];
}

- (void)dispatchGradientMHALayer:(id)a3 sourceGradientTensor:(id)a4 resultGradientTensors:(id)a5 resultStateIsTemporary:(BOOL)a6
{
  v9 = a4;
  v10 = a5;
  v11 = [a3 objectAtIndexedSubscript:0];
  for (i = 0; i != 3; ++i)
  {
    v13 = [v10 objectAtIndexedSubscript:i];
    [(MLCDeviceCPU *)self allocateResultTensor:v13];
  }

  v79 = v9;
  v78 = [v9 deviceMemory];
  v14 = [v78 objectAtIndexedSubscript:0];
  v15 = [v14 bytes];
  v16 = [v11 outDeltaData];
  v17 = [v16 objectAtIndexedSubscript:0];
  *([v17 bytes] + 136) = v15;

  for (j = 0; j != 3; ++j)
  {
    v19 = [v10 objectAtIndexedSubscript:j];
    v20 = [v19 deviceMemory];

    [v10 objectAtIndexedSubscript:j];
    v21 = [v20 objectAtIndexedSubscript:0];
    v22 = [v21 bytes];
    v23 = [v11 inDeltaData];
    v24 = [v23 objectAtIndexedSubscript:j];
    *([v24 bytes] + 136) = v22;
  }

  v72 = [v11 BNNSFilter];
  v71 = [v11 batchSize];
  v25 = [v11 source];
  v70 = [v11 sourceDataOffset];
  v77 = v25;
  v67 = [v25 bytes];
  v69 = [v11 sourceStride];
  v76 = [v11 inDeltaData];
  v75 = [v76 objectAtIndexedSubscript:0];
  v65 = [v75 bytes];
  v26 = [v11 secondarySource];
  v63 = [v11 secondarySourceDataOffset];
  v74 = v26;
  v61 = [v26 bytes];
  v62 = [v11 sourceStrideSecondary];
  v73 = [v11 hasKeyMask];
  if (v73)
  {
    v46 = [v11 keyMask];
    v59 = [v46 bytes];
  }

  else
  {
    v59 = 0;
  }

  key_mask_stride = [v11 keyMaskStride];
  v68 = [v11 inDeltaData];
  v66 = [v68 objectAtIndexedSubscript:1];
  v55 = [v66 bytes];
  v27 = [v11 tertiarySource];
  v28 = [v11 tertiarySourceDataOffset];
  v64 = v27;
  v29 = [v27 bytes];
  v54 = [v11 sourceStrideTertiary];
  v60 = [v11 inDeltaData];
  v58 = [v60 objectAtIndexedSubscript:2];
  value_param_delta = [v58 bytes];
  v56 = [v11 hasAttnMask];
  if (v56)
  {
    v45 = [v11 attnMask];
    add_to_attention = [v45 bytes];
  }

  else
  {
    add_to_attention = 0;
  }

  v53 = [v11 hasAttnBias];
  if (v53)
  {
    v44 = [v11 attnBiasDeltaData];
    v43 = [v44 objectAtIndexedSubscript:0];
    v49 = [v43 bytes];
  }

  else
  {
    v49 = 0;
  }

  value = (v29 + v28);
  v50 = [v11 hasAttnBias];
  if (v50)
  {
    v42 = [v11 attnBiasDeltaData];
    v41 = [v42 objectAtIndexedSubscript:1];
    value_attn_bias_delta = [v41 bytes];
  }

  else
  {
    value_attn_bias_delta = 0;
  }

  v30 = [v11 result];
  v31 = [v11 resultDataOffset];
  v32 = ([v30 bytes] + v31);
  output_stride = [v11 resultStride];
  v34 = [v11 outDeltaData];
  v35 = [v34 objectAtIndexedSubscript:0];
  v36 = [v35 bytes];
  backprop_cache_size = [v11 backpropCacheSize];
  v38 = [v11 backpropCacheData];
  v39 = BNNSApplyMultiheadAttentionBackward(v72, v71, (v67 + v70), v69, v65, (v61 + v63), v62, v59, key_mask_stride, v55, value, v54, value_param_delta, add_to_attention, v49, value_attn_bias_delta, v32, output_stride, v36, backprop_cache_size, [v38 bytes], 0, 0);

  if (v50)
  {
  }

  if (v53)
  {
  }

  if (v56)
  {
  }

  if (v73)
  {
  }

  if (v39)
  {
    v40 = +[MLCLog framework];
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      [MLCDeviceCPU(MLCEngineDispatch) dispatchGradientMHALayer:sourceGradientTensor:resultGradientTensors:resultStateIsTemporary:];
    }
  }
}

- (void)dispatchGradientLossLayer:(id)a3 sourceGradientTensor:(id)a4 labelsTensor:(id)a5 labelsTensorStride:(unint64_t)a6 weightsTensor:(id)a7 resultGradientTensor:(id)a8
{
  v13 = a8;
  v14 = a7;
  v15 = a5;
  v16 = a4;
  v17 = a3;
  [(MLCDeviceCPU *)self allocateResultTensor:v13];
  v18 = [v17 objectAtIndexedSubscript:0];

  v19 = [v16 deviceMemory];

  v20 = [v13 deviceMemory];

  v21 = [v15 deviceMemory];

  v22 = [v14 deviceMemory];

  v23 = [v18 inDeltaData];
  v24 = [v23 objectAtIndexedSubscript:0];
  v25 = [v24 bytes];

  v26 = [v18 outDeltaData];
  v27 = [v26 objectAtIndexedSubscript:0];
  v28 = [v27 bytes];

  v45 = v20;
  v29 = [v20 objectAtIndexedSubscript:0];
  v25->data = [v29 bytes];

  v47 = v19;
  v30 = [v19 objectAtIndexedSubscript:0];
  out_delta = v28;
  *(v28 + 136) = [v30 bytes];

  v31 = [v21 objectAtIndexedSubscript:0];
  v44 = v22;
  v32 = [v22 objectAtIndexedSubscript:0];
  [v18 lossWeight];
  v34 = v33;
  v48 = v33;
  if ([v32 bytes])
  {
    weights = [v32 bytes];
    v41 = [v32 length] >> 2;
  }

  else
  {
    v41 = v34 != 1.0;
    v35 = &v48;
    if (v34 == 1.0)
    {
      v35 = 0;
    }

    weights = v35;
  }

  v36 = [v18 BNNSFilter];
  v37 = [v18 batchSize];
  v38 = [v18 source];
  v39 = BNNSLossFilterApplyBackwardBatch(v36, v37, ([v38 bytes] + objc_msgSend(v18, "sourceDataOffset")), objc_msgSend(v18, "sourceStride"), v25, objc_msgSend(v18, "sourceStride"), objc_msgSend(v31, "bytes"), a6, weights, v41, out_delta, objc_msgSend(v18, "resultStride"));

  if (v39)
  {
    v40 = +[MLCLog framework];
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      [MLCDeviceCPU(MLCEngineDispatch) dispatchGradientLossLayer:sourceGradientTensor:labelsTensor:labelsTensorStride:weightsTensor:resultGradientTensor:];
    }
  }
}

- (void)dispatchGradientEmbeddingLayer:(id)a3 sourceGradientTensor:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 objectAtIndexedSubscript:0];
  v8 = [v6 deviceMemory];
  v9 = [v8 objectAtIndexedSubscript:0];
  v10 = [v9 bytes];

  v11 = [v8 objectAtIndexedSubscript:0];
  v12 = [v11 length];

  v13 = [MEMORY[0x277CBEA90] dataWithBytes:v10 length:v12];
  if ([v7 scaleGradientByFrequency])
  {
    v38 = v13;
    v39 = v8;
    v40 = v7;
    v14 = [v7 source];
    v15 = [v14 bytes];
    v37 = v14;
    v16 = [v14 length];
    v17 = [v6 descriptor];
    v18 = [v17 shape];
    v41 = v6;
    v19 = [v6 descriptor];
    v20 = [v18 objectAtIndexedSubscript:{objc_msgSend(v19, "dimensionCount") - 1}];
    v21 = [v20 unsignedIntegerValue];

    v22 = [MEMORY[0x277CBEC10] mutableCopy];
    v42 = v5;
    if (v16 >= 8)
    {
      v36 = v21;
      v23 = v16 >> 3;
      v24 = v15;
      v25 = v16 >> 3;
      do
      {
        v26 = *v24++;
        v27 = [MEMORY[0x277CCABB0] numberWithLongLong:v26];
        v28 = [v22 objectForKeyedSubscript:v27];
        v29 = v28;
        if (v28)
        {
          v30 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v28, "unsignedIntegerValue") + 1}];
          [v22 setObject:v30 forKey:v27];
        }

        else
        {
          [v22 setObject:&unk_284BA5A98 forKeyedSubscript:v27];
        }

        --v25;
      }

      while (v25);
      v13 = v38;
      v31 = [v38 bytes];
      do
      {
        v32 = *v15++;
        v33 = [MEMORY[0x277CCABB0] numberWithLongLong:v32];
        v34 = [v22 objectForKeyedSubscript:v33];
        v35 = 1.0 / [v34 unsignedIntegerValue];

        v43 = v35;
        MEMORY[0x23EE76610](v31, 1, &v43, v31, 1, v36);
        v31 += 4 * v36;
        --v23;
      }

      while (v23);
    }

    else
    {
      v13 = v38;
      [v38 bytes];
    }

    v7 = v40;
    [v40 setWeightsDeltaDataBytes:v13];

    v6 = v41;
    v5 = v42;
    v8 = v39;
  }

  else
  {
    [v7 setWeightsDeltaDataBytes:v13];
  }
}

- (void)dispatchForwardAndGradientLossLayer:(id)a3 sourceTensor:(id)a4 labelsTensor:(id)a5 labelsTensorStride:(unint64_t)a6 weightsTensor:(id)a7 resultTensor:(id)a8 resultGradientTensor:(id)a9
{
  v14 = a4;
  v15 = a5;
  v16 = a9;
  v17 = a8;
  v18 = a7;
  v19 = a3;
  [(MLCDeviceCPU *)self allocateResultTensor:v17];
  [(MLCDeviceCPU *)self allocateResultTensor:v16];
  v20 = [v19 objectAtIndexedSubscript:0];

  v57 = v14;
  v21 = [v14 deviceMemory];
  v56 = v15;
  v22 = [v15 deviceMemory];
  v23 = [v18 deviceMemory];

  v24 = [v17 deviceMemory];

  v25 = [v16 deviceMemory];
  v26 = [v20 inDeltaData];
  v27 = [v26 objectAtIndexedSubscript:0];
  in_delta = [v27 bytes];

  v55 = v25;
  v29 = [v25 objectAtIndexedSubscript:0];
  in_delta->data = [v29 bytes];

  v53 = v21;
  v30 = [v21 objectAtIndexedSubscript:0];
  v50 = v24;
  v58 = [v24 objectAtIndexedSubscript:0];
  v52 = v22;
  v31 = [v22 objectAtIndexedSubscript:0];
  v51 = v23;
  v32 = [v23 objectAtIndexedSubscript:0];
  [v20 lossWeight];
  v34 = v33;
  v59 = v33;
  if ([v20 deviceOpType] == 18)
  {
    weights_size = 0;
    v46 = 0;
  }

  else if ([v32 bytes])
  {
    v46 = [v32 bytes];
    weights_size = [v32 length] >> 2;
  }

  else
  {
    weights_size = v34 != 1.0;
    v35 = &v59;
    if (v34 == 1.0)
    {
      v35 = 0;
    }

    v46 = v35;
  }

  v47 = v32;
  v54 = v16;
  v48 = v30;
  if ([v20 deviceOpType] == 18)
  {
    v36 = [MEMORY[0x277CBEA90] dataWithBytes:objc_msgSend(v30 length:{"bytes"), objc_msgSend(v30, "length")}];
    v37 = [MEMORY[0x277CBEA90] dataWithBytes:objc_msgSend(v31 length:{"bytes"), objc_msgSend(v31, "length")}];
    v38 = [v57 descriptor];
    convertDataLayout(v38, v30, v36, 0, 1);

    v39 = [v56 descriptor];
    convertDataLayout(v39, v31, v37, 0, 1);
  }

  else
  {
    v36 = v30;
    v37 = v31;
  }

  v40 = BNNSLossFilterApplyBatch([v20 BNNSFilter], objc_msgSend(v20, "batchSize"), objc_msgSend(v36, "bytes"), objc_msgSend(v20, "sourceStride"), objc_msgSend(v37, "bytes"), a6, v46, weights_size, objc_msgSend(v58, "bytes"), in_delta, objc_msgSend(v20, "sourceStride"));
  if ([v20 deviceOpType] == 18)
  {
    v41 = [v55 objectAtIndexedSubscript:0];
    v42 = [MEMORY[0x277CBEA90] dataWithBytes:objc_msgSend(v41 length:{"bytes"), objc_msgSend(v41, "length")}];
    v43 = [v16 descriptor];
    convertDataLayout(v43, v42, v41, 1, 0);
  }

  if (v40)
  {
    v44 = +[MLCLog framework];
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      [MLCDeviceCPU(MLCEngineDispatch) dispatchForwardAndGradientLossLayer:sourceTensor:labelsTensor:labelsTensorStride:weightsTensor:resultTensor:resultGradientTensor:];
    }
  }
}

- (void)dispatchRNNForwardLayer:(id)a3 sourceTensors:(id)a4 resultTensors:(id)a5 resultStateIsTemporary:(BOOL)a6 forTraining:(BOOL)a7
{
  v116 = a7;
  v124 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if ([v12 count])
  {
    v13 = 0;
    do
    {
      v14 = [v12 objectAtIndexedSubscript:v13];
      [(MLCDeviceCPU *)self allocateResultTensor:v14];

      ++v13;
    }

    while (v13 < [v12 count]);
  }

  v15 = [v11 objectAtIndexedSubscript:0];
  v16 = [v15 descriptor];
  v17 = [v16 shape];
  if ([v17 count] == 4)
  {

    goto LABEL_7;
  }

  v18 = [v11 objectAtIndexedSubscript:0];
  v19 = [v18 descriptor];
  v20 = [v19 shape];
  v21 = [v20 count];

  if (v21 == 3)
  {
LABEL_7:
    v22 = [v11 objectAtIndexedSubscript:0];
    v23 = CPU_GetDeviceMemoryData(v22);

    v24 = [v12 objectAtIndexedSubscript:0];
    v25 = CPU_GetDeviceMemoryData(v24);

    [v11 objectAtIndexedSubscript:0];
    [v12 objectAtIndexedSubscript:0];

    v114 = v10;
    v26 = [v10 objectAtIndexedSubscript:0];
    v112 = [v26 params];
    v27 = [v112 bytes];
    v28 = [v23 bytes];
    v113 = v25;
    __dst = [v25 bytes];
    bzero(__dst, [v25 length]);
    v110 = [v26 returnsSequences];
    v29 = [v26 batchSize];
    *(v27 + 16) = v29;
    v30 = [v26 biDirectional];
    v31 = 1;
    if (v30)
    {
      v31 = 2;
    }

    v107 = v31;
    v108 = v30;
    v117 = v26;
    if (![v26 batchFirst])
    {
      goto LABEL_13;
    }

    v32 = [v11 objectAtIndexedSubscript:0];
    v33 = [v32 descriptor];
    v34 = [v33 shape];
    v35 = [v34 count];

    if (v35 == 3)
    {
      v36 = *(v27 + 32);
      *(v27 + 232) = *v27;
      *(v27 + 240) = v36;
      *(v27 + 248) = v29;
      *(v27 + 368) = 65568;
      *(v27 + 228) = 196610;
      if (v110)
      {
        *(v27 + 784) = 0;
        *(v27 + 776) = v29;
        *(v27 + 768) = v36;
        *(v27 + 760) = *(v27 + 8) << v108;
        *(v27 + 756) = 196610;
        *(v27 + 888) = __dst;
        goto LABEL_15;
      }
    }

    else
    {
LABEL_13:
      *(v27 + 240) = v29;
    }

    *(v27 + 776) = v29;
LABEL_15:
    *(v27 + 416) = v29;
    *(v27 + 592) = v29;
    *(v27 + 944) = v29;
    *(v27 + 1120) = v29;
    v37 = [v11 objectAtIndexedSubscript:0];
    v38 = [v37 descriptor];
    v39 = [v38 shape];
    v40 = [v39 count];

    if (v40 == 4)
    {
      v41 = [v11 objectAtIndexedSubscript:0];
      convertNCHWtoTNC(v41, v29, v28, *(v27 + 360));

      goto LABEL_22;
    }

    if (![v117 batchFirst])
    {
      goto LABEL_19;
    }

    v42 = [v11 objectAtIndexedSubscript:0];
    v43 = [v42 descriptor];
    v44 = [v43 shape];
    v45 = [v44 count];

    if (v45 != 3)
    {
LABEL_19:
      if ([v117 batchFirst])
      {
        goto LABEL_22;
      }

      v46 = [v11 objectAtIndexedSubscript:0];
      v47 = [v46 descriptor];
      v48 = [v47 shape];
      v49 = [v48 count];

      if (v49 != 3)
      {
        log = +[MLCLog framework];
        if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
        {
          [MLCDeviceCPU(MLCEngineDispatch) dispatchRNNForwardLayer:? sourceTensors:? resultTensors:? resultStateIsTemporary:? forTraining:?];
        }

        v10 = v114;
        goto LABEL_60;
      }
    }

    *(v27 + 360) = v28;
LABEL_22:
    v50 = [v11 objectAtIndexedSubscript:0];
    v51 = [v50 descriptor];
    log = [v51 batchSizePerSequenceStep];

    v52 = [v11 objectAtIndexedSubscript:0];
    v53 = [v52 descriptor];
    v54 = [v53 variableLengthSequences];

    if (v54)
    {
      v106 = v23;
      v55 = [v11 objectAtIndexedSubscript:0];
      v56 = [v55 descriptor];
      v57 = [v56 sequenceLengths];

      v105 = v57;
      v58 = [v57 objectAtIndexedSubscript:0];
      v59 = [v58 unsignedIntegerValue];

      v60 = [objc_alloc(MEMORY[0x277CBEB28]) initWithCapacity:v59];
      v119 = 0u;
      v120 = 0u;
      v121 = 0u;
      v122 = 0u;
      v61 = log;
      v62 = [v61 countByEnumeratingWithState:&v119 objects:v123 count:16];
      if (v62)
      {
        v63 = v62;
        v64 = *v120;
        do
        {
          for (i = 0; i != v63; ++i)
          {
            if (*v120 != v64)
            {
              objc_enumerationMutation(v61);
            }

            v118 = [*(*(&v119 + 1) + 8 * i) unsignedIntegerValue];
            [v60 appendBytes:&v118 length:4];
          }

          v63 = [v61 countByEnumeratingWithState:&v119 objects:v123 count:16];
        }

        while (v63);
      }

      *(v27 + 184) = [v60 bytes];
      *(v27 + 52) = 0x10000;
      *(v27 + 192) = 65568;
      *(v27 + 56) = v59;
      *(v27 + 212) = 1065353216;

      v23 = v106;
    }

    if ([v11 count] == 3 || objc_msgSend(v11, "count") == 4)
    {
      v66 = [v11 objectAtIndexedSubscript:1];
      v67 = CPU_GetDeviceMemoryData(v66);

      v68 = [v11 objectAtIndexedSubscript:2];
      v69 = CPU_GetDeviceMemoryData(v68);

      v70 = [v11 objectAtIndexedSubscript:1];
      *(v27 + 536) = [v67 bytes];

      v71 = [v11 objectAtIndexedSubscript:2];
      *(v27 + 712) = [v69 bytes];
    }

    v10 = v114;
    if ([v12 count] == 3)
    {
      v72 = [v12 objectAtIndexedSubscript:1];
      v73 = CPU_GetDeviceMemoryData(v72);

      v74 = [v12 objectAtIndexedSubscript:2];
      v75 = CPU_GetDeviceMemoryData(v74);

      v76 = [v12 objectAtIndexedSubscript:1];
      *(v27 + 1064) = [v73 bytes];

      v77 = [v12 objectAtIndexedSubscript:2];
      *(v27 + 1240) = [v75 bytes];
    }

    if (v116)
    {
      v78 = MEMORY[0x23EE75B70](v27);
      v79 = malloc_type_malloc(v78, 0x46EF08AFuLL);
    }

    else
    {
      v78 = 0;
      v79 = 0;
    }

    if (BNNSDirectApplyLSTMBatchTrainingCaching(v27, 0, v79, v78))
    {
      v80 = +[MLCLog framework];
      if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
      {
        [MLCDeviceCPU(MLCEngineDispatch) dispatchRNNForwardLayer:sourceTensors:resultTensors:resultStateIsTemporary:forTraining:];
      }
    }

    if (v116)
    {
      v81 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v79 length:v78 freeWhenDone:1];
      [v117 setTrainingCache:v81];
    }

    v82 = [v11 objectAtIndexedSubscript:0];
    v83 = [v82 descriptor];
    v84 = [v83 shape];
    v85 = [v84 count];

    if (v85 == 4)
    {
      v86 = [v11 objectAtIndexedSubscript:0];
      v87 = [v12 objectAtIndexedSubscript:0];
      v88 = *(v27 + 888);
      v89 = v117;
      convertTNCtoNCHW(v86, v87, v29, v88, __dst, [v117 returnsSequences]);

LABEL_47:
      v90 = v113;
LABEL_62:

      goto LABEL_63;
    }

    if (![v117 batchFirst])
    {
      goto LABEL_52;
    }

    v91 = [v11 objectAtIndexedSubscript:0];
    v92 = [v91 descriptor];
    v93 = [v92 shape];
    v94 = [v93 count];

    if (v94 == 3)
    {
      if ((v110 & 1) == 0)
      {
        v95 = *(v27 + 1064);
        v86 = [v12 objectAtIndexedSubscript:0];
        v89 = v117;
        convertHiddenBNNStoMLC(v95, __dst, v86, [v117 numLayers], v107);
        goto LABEL_47;
      }
    }

    else
    {
LABEL_52:
      v96 = [v11 objectAtIndexedSubscript:0];
      v97 = [v96 descriptor];
      v98 = [v97 shape];
      v99 = [v98 count];

      if (v99 == 3)
      {
        if (!v110)
        {
          v101 = ([v117 numLayers] - 1) << v108;
          v102 = [v117 hiddenSize];
          v103 = *(v27 + 1064);
          v89 = v117;
          v104 = (v103 + 4 * v102 * v29 * v101);
          v90 = v113;
          memcpy(__dst, v104, [v113 length]);
          goto LABEL_62;
        }

        v90 = v113;
        memcpy(__dst, *(v27 + 888), [v113 length]);
        goto LABEL_61;
      }
    }

LABEL_60:
    v90 = v113;
LABEL_61:
    v89 = v117;
    goto LABEL_62;
  }

  v23 = +[MLCLog framework];
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceCPU(MLCEngineDispatch) dispatchRNNForwardLayer:a2 sourceTensors:? resultTensors:? resultStateIsTemporary:? forTraining:?];
  }

LABEL_63:

  v100 = *MEMORY[0x277D85DE8];
}

- (void)dispatchRNNGradientLayer:(id)a3 sourceGradientTensors:(id)a4 resultGradientTensors:(id)a5
{
  v132 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v9 count];
  v12 = [v10 count];
  v13 = [v10 objectAtIndexedSubscript:0];
  [(MLCDeviceCPU *)self allocateResultTensor:v13];

  if ([v9 count] >= 2)
  {
    v14 = 1;
    do
    {
      v15 = [v9 objectAtIndexedSubscript:v14];
      [(MLCDeviceCPU *)self allocateResultTensor:v15];

      ++v14;
    }

    while (v14 < [v9 count]);
  }

  v16 = v12 - 3;
  if (v16 < 2)
  {
    v17 = [v10 objectAtIndexedSubscript:1];
    [(MLCDeviceCPU *)self allocateResultTensor:v17];

    v18 = [v10 objectAtIndexedSubscript:2];
    [(MLCDeviceCPU *)self allocateResultTensor:v18];
  }

  v122 = v8;
  v19 = [v8 objectAtIndexedSubscript:0];
  v116 = [v19 params];
  v120 = [v116 bytes];
  v115 = [v19 lstmDeltaParams];
  v20 = [v115 bytes];
  v21 = [v9 objectAtIndexedSubscript:0];
  v22 = [v21 deviceMemory];

  v23 = [v10 objectAtIndexedSubscript:0];
  v24 = [v23 deviceMemory];

  v114 = v22;
  v124 = [v22 objectAtIndexedSubscript:0];
  v113 = v24;
  v25 = [v24 objectAtIndexedSubscript:0];
  [v9 objectAtIndexedSubscript:0];

  [v10 objectAtIndexedSubscript:0];
  v125 = v25;
  if (v11 == 3)
  {
    v26 = [v9 objectAtIndexedSubscript:1];
    v27 = [v26 deviceMemory];

    v28 = [v27 objectAtIndexedSubscript:0];
    [v9 objectAtIndexedSubscript:1];

    *(v20 + 1064) = [v28 bytes];
    v29 = [v9 objectAtIndexedSubscript:2];
    v30 = [v29 deviceMemory];

    v31 = [v30 objectAtIndexedSubscript:0];
    [v9 objectAtIndexedSubscript:2];

    *(v20 + 1240) = [v31 bytes];
    v25 = v125;
  }

  if (v16 <= 1)
  {
    v32 = [v10 objectAtIndexedSubscript:1];
    v33 = [v32 deviceMemory];

    v34 = [v33 objectAtIndexedSubscript:0];
    [v10 objectAtIndexedSubscript:1];

    *(v20 + 536) = [v34 bytes];
    v35 = [v10 objectAtIndexedSubscript:2];
    v36 = [v35 deviceMemory];

    v37 = [v36 objectAtIndexedSubscript:0];
    [v10 objectAtIndexedSubscript:2];

    *(v20 + 712) = [v37 bytes];
    v25 = v125;
  }

  v123 = v10;
  v38 = [v9 objectAtIndexedSubscript:0];
  v39 = [v38 descriptor];
  v40 = [v39 variableLengthSequences];

  if (v40)
  {
    bzero([v25 bytes], objc_msgSend(v25, "length"));
  }

  v41 = [v19 batchSize];
  *(v20 + 16) = v41;
  *(v20 + 240) = v41;
  *(v20 + 416) = v41;
  *(v20 + 592) = v41;
  *(v20 + 776) = v41;
  *(v20 + 944) = v41;
  *(v20 + 1120) = v41;
  v42 = [v124 bytes];
  v43 = [v25 bytes];
  [MEMORY[0x277CBEA90] dataWithBytes:v43 length:{objc_msgSend(v25, "length")}];
  v121 = v19;
  v118 = v117 = v41;
  v111 = v42;
  __dst = v43;
  if ([v19 returnsSequences])
  {
    bzero(v43, [v25 length]);
    v44 = [MEMORY[0x277CBEA90] dataWithBytes:v42 length:{objc_msgSend(v124, "length")}];
    v45 = [v9 objectAtIndexedSubscript:0];
    v46 = [v45 descriptor];
    v47 = [v46 shape];
    v48 = [v47 count];

    if (v48 == 4)
    {
      v49 = [v9 objectAtIndexedSubscript:0];
      v41 = v117;
      convertNCHWtoTNC(v49, v117, v42, [v44 bytes]);

      v50 = v121;
    }

    else
    {
      v50 = v121;
      v41 = v117;
      if ([v121 batchFirst])
      {
        v60 = [v9 objectAtIndexedSubscript:0];
        v61 = [v60 descriptor];
        v62 = [v61 shape];
        [v62 count];
      }
    }

    v59 = v44;
    v58 = v122;
  }

  else
  {
    v51 = [v124 bytes];
    v52 = *(v120 + 8);
    v53 = *(v120 + 32);
    if (*(v120 + 44))
    {
      v54 = 2;
    }

    else
    {
      v54 = 1;
    }

    v55 = 4 * v52 * ((v53 * v41) << (*(v120 + 44) & 1));
    v56 = malloc_type_malloc(v55, 0x100004052888210uLL);
    convertNCtoTNC(v53, v52, v54, v41, v51, v56);
    v57 = v55;
    v58 = v122;
    v59 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v56 length:v57 freeWhenDone:1];
    v50 = v121;
  }

  v63 = [v9 objectAtIndexedSubscript:0];
  v64 = [v63 descriptor];
  v65 = [v64 batchSizePerSequenceStep];

  v66 = [v9 objectAtIndexedSubscript:0];
  v67 = [v66 descriptor];
  v68 = [v67 variableLengthSequences];

  v119 = v59;
  if (v68)
  {
    v69 = [v9 objectAtIndexedSubscript:0];
    v70 = [v69 descriptor];
    v71 = [v70 sequenceLengths];

    v72 = [v71 objectAtIndexedSubscript:0];
    v73 = [v72 unsignedIntegerValue];

    v74 = [objc_alloc(MEMORY[0x277CBEB28]) initWithCapacity:v73];
    v127 = 0u;
    v128 = 0u;
    v129 = 0u;
    v130 = 0u;
    v109 = v65;
    v75 = v65;
    v76 = [v75 countByEnumeratingWithState:&v127 objects:v131 count:16];
    if (v76)
    {
      v77 = v76;
      v78 = *v128;
      do
      {
        for (i = 0; i != v77; ++i)
        {
          if (*v128 != v78)
          {
            objc_enumerationMutation(v75);
          }

          v126 = [*(*(&v127 + 1) + 8 * i) unsignedIntegerValue];
          [v74 appendBytes:&v126 length:4];
        }

        v77 = [v75 countByEnumeratingWithState:&v127 objects:v131 count:16];
      }

      while (v77);
    }

    *(v120 + 184) = [v74 bytes];
    *(v120 + 52) = 0x10000;
    *(v120 + 192) = 65568;
    *(v120 + 56) = v73;
    *(v120 + 212) = 1065353216;
    *(v20 + 184) = [v74 bytes];
    *(v20 + 52) = 0x10000;
    *(v20 + 192) = 65568;
    *(v20 + 56) = v73;
    *(v20 + 212) = 1065353216;

    v50 = v121;
    v58 = v122;
    v59 = v119;
    v41 = v117;
    v65 = v109;
  }

  if (![v50 returnsSequences])
  {
    goto LABEL_36;
  }

  if (![v50 batchFirst])
  {
    goto LABEL_36;
  }

  v80 = [v9 objectAtIndexedSubscript:0];
  v81 = [v80 descriptor];
  v82 = [v81 shape];
  v83 = [v82 count];

  v84 = v83 == 3;
  v59 = v119;
  if (v84)
  {
    v85 = [v50 biDirectional];
    *(v20 + 776) = v41;
    *(v20 + 768) = *(v120 + 32);
    *(v20 + 760) = *(v120 + 8) << v85;
    *(v20 + 756) = 196610;
    v86 = v111;
  }

  else
  {
LABEL_36:
    v86 = [v59 bytes];
  }

  *(v20 + 888) = v86;
  if (![v50 batchFirst])
  {
    goto LABEL_41;
  }

  v87 = [v123 objectAtIndexedSubscript:0];
  v88 = [v87 descriptor];
  v89 = [v88 shape];
  v90 = [v89 count];

  v84 = v90 == 3;
  v59 = v119;
  if (v84)
  {
    *(v20 + 232) = *v120;
    *(v20 + 240) = *(v120 + 32);
    *(v20 + 248) = v41;
    *(v20 + 228) = 196610;
    v91 = __dst;
    v92 = v118;
  }

  else
  {
LABEL_41:
    v92 = v118;
    v91 = [v118 bytes];
  }

  *(v20 + 360) = v91;
  if (!*(v20 + 1416) || !*(v20 + 2344) || !*(v20 + 3272) || !*(v20 + 4200) || !*(v20 + 1768) || !*(v20 + 2696) || !*(v20 + 3624) || !*(v20 + 4552))
  {
    v103 = +[MLCLog framework];
    if (os_log_type_enabled(v103, OS_LOG_TYPE_ERROR))
    {
      [MLCDeviceCPU(MLCEngineDispatch) dispatchRNNGradientLayer:a2 sourceGradientTensors:? resultGradientTensors:?];
    }

    goto LABEL_68;
  }

  if (*(v120 + 24) >= 2uLL && (!*(v20 + 1592) || !*(v20 + 2520) || !*(v20 + 3448) || !*(v20 + 4376)))
  {
    v103 = +[MLCLog framework];
    if (os_log_type_enabled(v103, OS_LOG_TYPE_ERROR))
    {
      [MLCDeviceCPU(MLCEngineDispatch) dispatchRNNGradientLayer:a2 sourceGradientTensors:? resultGradientTensors:?];
    }

    goto LABEL_68;
  }

  if ([v50 hasBias] && (!*(v20 + 2120) || !*(v20 + 3048) || !*(v20 + 3976) || !*(v20 + 4904)))
  {
    v103 = +[MLCLog framework];
    if (os_log_type_enabled(v103, OS_LOG_TYPE_ERROR))
    {
      [MLCDeviceCPU(MLCEngineDispatch) dispatchRNNGradientLayer:a2 sourceGradientTensors:? resultGradientTensors:?];
    }

LABEL_68:

    v95 = v116;
    goto LABEL_69;
  }

  v93 = MEMORY[0x23EE75B70](v120);
  v94 = [v50 trainingCache];
  LODWORD(v93) = BNNSDirectApplyLSTMBatchBackward(v120, v20, 0, [v94 bytes], v93);

  v95 = v116;
  if (v93)
  {
    v96 = +[MLCLog framework];
    if (os_log_type_enabled(v96, OS_LOG_TYPE_ERROR))
    {
      [MLCDeviceCPU(MLCEngineDispatch) dispatchRNNGradientLayer:sourceGradientTensors:resultGradientTensors:];
    }
  }

  v97 = [v123 objectAtIndexedSubscript:0];
  v98 = [v97 descriptor];
  v99 = [v98 shape];
  v100 = [v99 count];

  if (v100 == 4)
  {
    v101 = [v123 objectAtIndexedSubscript:0];
    v102 = [v123 objectAtIndexedSubscript:0];
    v92 = v118;
    convertTNCtoNCHW(v101, v102, v117, [v118 bytes], __dst, 1);

    v59 = v119;
  }

  else
  {
    v92 = v118;
    v59 = v119;
    if (![v50 batchFirst])
    {
      goto LABEL_76;
    }

    v105 = [v123 objectAtIndexedSubscript:0];
    v106 = [v105 descriptor];
    v107 = [v106 shape];
    v108 = [v107 count];

    v92 = v118;
    v84 = v108 == 3;
    v59 = v119;
    if (!v84)
    {
LABEL_76:
      memcpy(__dst, [v92 bytes], objc_msgSend(v125, "length"));
    }
  }

LABEL_69:

  v104 = *MEMORY[0x277D85DE8];
}

- (void)dispatchForwardReduceLayer:(id)a3 sourceTensor:(id)a4 resultTensor:(id)a5 reductionType:(int)a6 reduceDimensions:(id)a7 forTraining:(BOOL)a8
{
  v8 = a8;
  v12 = a5;
  v13 = a4;
  v14 = [a3 objectAtIndexedSubscript:0];
  [(MLCDeviceCPU *)self allocateResultTensor:v12];
  v15 = CPU_GetDeviceMemoryData(v13);

  v16 = CPU_GetDeviceMemoryData(v12);

  if (BNNSFilterApplyBatch([v14 BNNSFilter], 1uLL, objc_msgSend(v15, "bytes"), objc_msgSend(v14, "sourceStride"), objc_msgSend(v16, "bytes"), objc_msgSend(v14, "resultStride")))
  {
    v17 = +[MLCLog framework];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [MLCDeviceCPU(MLCEngineDispatch) dispatchForwardLayer:sourceTensor:resultTensor:resultStateIsTemporary:forTraining:];
    }
  }

  [v14 setBatchSize:1];
  if (v8)
  {
    [v14 setSource:v15];
    [v14 setResult:v16];
    [v14 setSourceDataOffset:0];
    [v14 setResultDataOffset:0];
  }
}

- (void)dispatchGradientReduceLayer:(id)a3 sourceGradientTensor:(id)a4 resultGradientTensor:(id)a5 reductionType:(int)a6 reduceDimensions:(id)a7
{
  v10 = a5;
  v11 = a4;
  v12 = [a3 objectAtIndexedSubscript:0];
  [(MLCDeviceCPU *)self allocateResultTensor:v10];
  v13 = [v11 deviceMemory];

  v14 = [v10 deviceMemory];

  v15 = [v12 inDeltaData];
  v16 = [v15 objectAtIndexedSubscript:0];
  v17 = [v16 bytes];

  v18 = [v12 outDeltaData];
  v19 = [v18 objectAtIndexedSubscript:0];
  v20 = [v19 bytes];

  v40 = v14;
  v21 = [v14 objectAtIndexedSubscript:0];
  v17->data = [v21 bytes];

  v41 = v13;
  v22 = [v13 objectAtIndexedSubscript:0];
  out_delta = v20;
  *(v20 + 136) = [v22 bytes];

  v23 = 0;
  if ([v12 resultOfForwardNeededForGradient])
  {
    v24 = [v12 result];
    v25 = [v12 resultDataOffset];
    v23 = ([v24 bytes] + v25);
  }

  v38 = v23;
  if ([v12 sourceOfForwardNeededForGradient])
  {
    v26 = [v12 source];
    v27 = [v12 sourceDataOffset];
    in = ([v26 bytes] + v27);
  }

  else
  {
    in = 0;
  }

  v28 = [v12 BNNSFilter];
  v29 = [v12 sourceStride];
  if ([v12 computeWeightsAndBiasOnly])
  {
    v17 = 0;
  }

  v30 = [v12 sourceStride];
  v31 = [v12 resultStride];
  v32 = [v12 resultStride];
  v33 = [v12 weightsDeltaData];
  weights_delta = [v33 bytes];
  v35 = [v12 biasDeltaData];
  LODWORD(weights_delta) = BNNSFilterApplyBackwardBatch(v28, 1uLL, in, v29, v17, v30, v38, v31, out_delta, v32, weights_delta, [v35 bytes]);

  if (weights_delta)
  {
    v36 = +[MLCLog framework];
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      [MLCDeviceCPU(MLCEngineDispatch) dispatchGradientLayer:sourceGradientTensor:resultGradientTensor:];
    }
  }

  [v12 setBatchSize:1];
}

- (void)dispatchGradientSelectLayer:(id)a3 conditionTensor:(id)a4 sourceGradientTensor:(id)a5 resultGradientTensors:(id)a6
{
  v7 = [MLCLog framework:a3];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE setDeviceMemoryForTensor:a2 data:?];
  }
}

- (void)dispatchForwardScatterLayer:(id)a3 sourceTensors:(id)a4 resultTensor:(id)a5 forTraining:(BOOL)a6
{
  v69[2] = *MEMORY[0x277D85DE8];
  v62 = a3;
  v9 = a4;
  v10 = a5;
  v66 = [v62 objectAtIndexedSubscript:0];
  [(MLCDeviceCPU *)self allocateResultTensor:v10];
  v11 = [v9 objectAtIndexedSubscript:2];

  if (v11 == v10)
  {
    [v9 objectAtIndexedSubscript:1];

    v12 = [v9 objectAtIndexedSubscript:0];
    v14 = 0;
  }

  else
  {
    [v9 objectAtIndexedSubscript:2];

    [v9 objectAtIndexedSubscript:1];
    [v9 objectAtIndexedSubscript:0];

    v12 = [v9 objectAtIndexedSubscript:2];
    v13 = CPU_GetDeviceMemoryData(v12);
    v14 = [v13 bytes];
  }

  v15 = [v9 objectAtIndexedSubscript:1];
  v16 = CPU_GetDeviceMemoryData(v15);
  v65 = [v16 bytes];

  v17 = [v9 objectAtIndexedSubscript:0];
  v18 = CPU_GetDeviceMemoryData(v17);
  v64 = [v18 bytes];

  v19 = CPU_GetDeviceMemoryData(v10);
  v20 = [v19 bytes];

  v21 = [v10 descriptor];
  v22 = [v21 tensorAllocationSizeInBytes];
  if (v11 == v10)
  {
    bzero(v20, v22);
  }

  else
  {
    memcpy(v20, v14, v22);
  }

  v23 = [v66 scatterGatherDimension];
  v69[0] = 0;
  v69[1] = 0;
  v24 = [v9 objectAtIndexedSubscript:1];
  v25 = [v24 descriptor];
  v26 = [v25 elementCount];

  if (v26)
  {
    v27 = 0;
    v68 = v23;
    v63 = v20;
    while (1)
    {
      v28 = *(v65 + 4 * v27);
      v67 = v27;
      v29 = *(v64 + 4 * v27);
      v30 = [v10 descriptor];
      v31 = [v30 shape];
      v32 = [v31 count];

      v33 = v20;
      if (v32 >= 1)
      {
        v34 = 0;
        v33 = v20;
        do
        {
          v35 = v28;
          if (v68 != v34)
          {
            v35 = *(v69 + v34);
          }

          v36 = [v10 descriptor];
          v37 = [v36 stride];
          v38 = [v37 objectAtIndexedSubscript:v34];
          v33 = (v33 + (v35 * [v38 unsignedIntegerValue]));

          ++v34;
          v39 = [v10 descriptor];
          v40 = [v39 shape];
          LODWORD(v38) = [v40 count];
        }

        while (v34 < v38);
      }

      v41 = [v66 scatterReduceType];
      if (!v41)
      {
        goto LABEL_17;
      }

      if (v41 == 1)
      {
        break;
      }

LABEL_18:
      v42 = [v10 descriptor];
      v43 = [v42 shape];
      v44 = [v43 count];
      ++*(v69 + v44 - 1);

      v45 = v9;
      v46 = [v9 objectAtIndexedSubscript:1];
      v47 = [v46 descriptor];
      v48 = [v47 shape];
      v49 = [v48 count];

      if (v49 >= 2)
      {
        v50 = (v49 & 0x7FFFFFFF) + 1;
        v51 = &v68 + (v49 & 0x7FFFFFFF) + 1;
        do
        {
          v52 = *v51;
          v53 = [v45 objectAtIndexedSubscript:1];
          v54 = [v53 descriptor];
          v55 = [v54 shape];
          v56 = [v55 objectAtIndexedSubscript:v50 - 2];
          v57 = [v56 unsignedIntegerValue];

          if (v52 == v57)
          {
            *(v51 - 1) = (*(v51 - 1) + 1);
          }

          --v50;
          --v51;
        }

        while (v50 > 2);
      }

      v27 = v67 + 1;
      v9 = v45;
      v58 = [v45 objectAtIndexedSubscript:1];
      v59 = [v58 descriptor];
      v60 = [v59 elementCount];

      v20 = v63;
      if (v67 + 1 >= v60)
      {
        goto LABEL_24;
      }
    }

    v29 = v29 + *v33;
LABEL_17:
    *v33 = v29;
    goto LABEL_18;
  }

LABEL_24:

  v61 = *MEMORY[0x277D85DE8];
}

- (void)dispatchForwardGatherLayer:(id)a3 sourceTensors:(id)a4 resultTensor:(id)a5 forTraining:(BOOL)a6
{
  v65[2] = *MEMORY[0x277D85DE8];
  v60 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v60 objectAtIndexedSubscript:0];
  [(MLCDeviceCPU *)self allocateResultTensor:v10];
  [v9 objectAtIndexedSubscript:0];

  [v9 objectAtIndexedSubscript:1];
  v12 = [v9 objectAtIndexedSubscript:0];
  v13 = CPU_GetDeviceMemoryData(v12);
  v63 = [v13 bytes];

  v14 = [v9 objectAtIndexedSubscript:1];
  v15 = CPU_GetDeviceMemoryData(v14);
  v62 = [v15 bytes];

  v59 = v10;
  v16 = CPU_GetDeviceMemoryData(v10);
  v61 = [v16 bytes];

  v65[0] = 0;
  v65[1] = 0;
  v58 = v11;
  v17 = [v11 scatterGatherDimension];
  v18 = [v9 objectAtIndexedSubscript:1];
  v19 = [v18 descriptor];
  v20 = [v19 elementCount];

  if (v20)
  {
    v21 = 0;
    v22 = v17;
    do
    {
      v23 = 0;
      v24 = v63;
      v64 = v21;
      v25 = *(v62 + 4 * v21);
      while (1)
      {
        v26 = [v9 objectAtIndexedSubscript:0];
        v27 = [v26 descriptor];
        v28 = [v27 shape];
        v29 = [v28 count];

        if (v23 >= v29)
        {
          break;
        }

        v30 = v25;
        if (v22 != v23)
        {
          v30 = *(v65 + v23);
        }

        v31 = [v9 objectAtIndexedSubscript:0];
        v32 = [v31 descriptor];
        v33 = [v32 stride];
        v34 = [v33 objectAtIndexedSubscript:v23];
        v24 = (v24 + (v30 * [v34 unsignedIntegerValue]));

        ++v23;
      }

      *(v61 + 4 * v64) = *v24;
      v35 = [v9 objectAtIndexedSubscript:1];
      v36 = [v35 descriptor];
      v37 = [v36 shape];
      v38 = [v37 count];
      ++*(v65 + v38 - 1);

      v39 = [v9 objectAtIndexedSubscript:1];
      v40 = [v39 descriptor];
      v41 = [v40 shape];
      v42 = [v41 count];

      if (v42 >= 2)
      {
        v43 = (v42 & 0x7FFFFFFF) + 1;
        v44 = &v64 + (v42 & 0x7FFFFFFF) + 1;
        do
        {
          v45 = *v44;
          v46 = [v9 objectAtIndexedSubscript:1];
          v47 = [v46 descriptor];
          v48 = [v47 shape];
          v49 = [v48 objectAtIndexedSubscript:v43 - 2];
          v50 = [v49 unsignedIntegerValue];

          if (v45 == v50)
          {
            *(v44 - 1) = (*(v44 - 1) + 1);
          }

          --v43;
          --v44;
        }

        while (v43 > 2);
      }

      v21 = v64 + 1;
      v51 = [v9 objectAtIndexedSubscript:1];
      v52 = [v51 descriptor];
      v53 = [v52 elementCount];
    }

    while (v21 < v53);
  }

  if (a6)
  {
    v54 = [v9 objectAtIndexedSubscript:1];
    v55 = CPU_GetDeviceMemoryData(v54);
    [v58 setSource:v55];

    [v58 setSourceDataOffset:0];
  }

  v56 = *MEMORY[0x277D85DE8];
}

- (MLCDeviceCPU)initWithType:(int)a3
{
  v9.receiver = self;
  v9.super_class = MLCDeviceCPU;
  v4 = [(MLCDeviceCPU *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_deviceType = a3;
    deviceList = v4->_deviceList;
    v4->_deviceList = &unk_284BA60C8;

    deviceHeap = v5->_deviceHeap;
    v5->_deviceHeap = 0;
  }

  return v5;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(MLCDeviceCPU *)self deviceType];
  v7 = [(MLCDeviceCPU *)self deviceList];
  v8 = [v3 stringWithFormat:@"%@: { deviceType=%d : deviceList=%@}", v5, v6, v7];

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(MLCDeviceCPU *)self deviceType];

  return [v4 initWithType:v5];
}

- (unint64_t)deviceMemorySizeForTensor:(id)a3
{
  v3 = a3;
  v4 = [v3 descriptor];
  v5 = +[MLCTensorDescriptor elementByteCount:](MLCTensorDescriptor, "elementByteCount:", [v4 dataType]);

  if (v5)
  {
    v6 = [v3 descriptor];
    v7 = [v6 shape];
    v8 = [v7 count];

    if (v8)
    {
      v9 = 0;
      v10 = 1;
      do
      {
        v11 = [v3 descriptor];
        v12 = [v11 shape];
        v13 = [v12 objectAtIndexedSubscript:v9];
        v10 *= [v13 unsignedIntegerValue];

        ++v9;
        v14 = [v3 descriptor];
        v15 = [v14 shape];
        v16 = [v15 count];
      }

      while (v9 < v16);
    }

    else
    {
      v10 = 1;
    }

    v18 = v10 * v5;
  }

  else
  {
    v17 = +[MLCLog framework];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [MLCDeviceCPU deviceMemorySizeForTensor:];
    }

    v18 = 0;
  }

  return v18;
}

- (unint64_t)deviceMemorySizeForTensor:(id)a3 batchSize:(unint64_t)a4
{
  v5 = a3;
  v6 = [v5 descriptor];
  v7 = +[MLCTensorDescriptor elementByteCount:](MLCTensorDescriptor, "elementByteCount:", [v6 dataType]);

  if (v7)
  {
    v8 = [v5 descriptor];
    v9 = [v8 shape];
    v10 = [v9 count];

    if (v10 == 1)
    {
      v11 = [v5 descriptor];
      v12 = [v11 shape];
      v13 = [v12 objectAtIndexedSubscript:0];
      v14 = [v13 unsignedIntegerValue] * v7;
    }

    else
    {
      v14 = v7 * a4;
      v16 = [v5 descriptor];
      v17 = [v16 shape];
      v18 = [v17 count];

      if (v18 >= 2)
      {
        v19 = 1;
        do
        {
          v20 = [v5 descriptor];
          v21 = [v20 shape];
          v22 = [v21 objectAtIndexedSubscript:v19];
          v14 *= [v22 unsignedIntegerValue];

          ++v19;
          v23 = [v5 descriptor];
          v24 = [v23 shape];
          v25 = [v24 count];
        }

        while (v19 < v25);
      }
    }
  }

  else
  {
    v15 = +[MLCLog framework];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [MLCDeviceCPU deviceMemorySizeForTensor:];
    }

    v14 = 0;
  }

  return v14;
}

- (BOOL)needToAllocateDeviceMemoryForTensor:(id)a3
{
  v3 = a3;
  v4 = [v3 deviceMemory];
  v5 = [v4 count];

  if (!v5)
  {
    goto LABEL_6;
  }

  v6 = [v3 device];

  if (!v6)
  {
    goto LABEL_6;
  }

  v7 = [v3 device];
  v8 = [v7 type];

  if (!v8 || ([v3 device], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "type"), v9, v10 == 3))
  {
    v11 = 0;
  }

  else
  {
LABEL_6:
    v11 = 1;
  }

  return v11;
}

- (void)allocateDeviceMemoryForTensor:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEBF8] mutableCopy];
  [v4 setDeviceMemory:v5];

  v6 = [(MLCDeviceCPU *)self deviceMemorySizeForTensor:v4];
  v8 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:malloc_type_calloc(v6 length:1uLL freeWhenDone:{0x2945949uLL), v6, 1}];
  v7 = [v4 deviceMemory];

  [v7 setObject:v8 atIndexedSubscript:0];
}

- (void)deallocateDeviceMemoryForTensor:(id)a3
{
  v5 = a3;
  v3 = objc_autoreleasePoolPush();
  v4 = [v5 deviceMemory];
  [v4 removeAllObjects];

  objc_autoreleasePoolPop(v3);
}

- (BOOL)shareDeviceMemoryWithResultTensor:(id)a3 sourceTensor:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v6 != v5)
  {
    v7 = [MEMORY[0x277CBEBF8] mutableCopy];
    [v5 setDeviceMemory:v7];

    v8 = [v6 deviceMemory];
    v9 = [v8 count];

    if (v9)
    {
      v10 = 0;
      do
      {
        v11 = [v5 deviceMemory];
        v12 = [v6 deviceMemory];
        v13 = [v12 objectAtIndexedSubscript:v10];
        [v11 addObject:v13];

        ++v10;
        v14 = [v6 deviceMemory];
        v15 = [v14 count];
      }

      while (v10 < v15);
    }

    v16 = [v6 sharedMemoryTensor];
    if (v16)
    {
      v17 = [v6 sharedMemoryTensor];
      [v5 setSharedMemoryTensor:v17];
    }

    else
    {
      [v5 setSharedMemoryTensor:v6];
    }

    [v5 setDeviceIndex:{objc_msgSend(v6, "deviceIndex")}];
  }

  return 1;
}

- (id)getHostPointerIfUnifiedDeviceMemory:(id)a3
{
  v3 = a3;
  v4 = [v3 deviceMemory];
  v5 = [v3 deviceIndex];

  v6 = [v4 objectAtIndexedSubscript:v5];

  return v6;
}

- (id)readTensor:(id)a3
{
  v4 = a3;
  v5 = -[MLCDeviceCPU readTensor:fromDeviceIndex:](self, "readTensor:fromDeviceIndex:", v4, [v4 deviceIndex]);

  return v5;
}

- (id)readTensor:(id)a3 fromDeviceIndex:(unint64_t)a4
{
  v6 = a3;
  v7 = [v6 descriptor];
  v8 = [v7 shape];
  if ([v8 count] == 1)
  {
    v9 = 1;
  }

  else
  {
    v10 = [v6 descriptor];
    v11 = [v10 shape];
    v12 = [v11 objectAtIndexedSubscript:0];
    v9 = [v12 unsignedIntegerValue];
  }

  v13 = [(MLCDeviceCPU *)self readFromDevice:v6 deviceIndex:a4 allocateData:0 batchSize:v9];

  return v13;
}

- (id)readFromDevice:(id)a3 deviceIndex:(unint64_t)a4 allocateData:(BOOL)a5 batchSize:(unint64_t)a6
{
  v7 = a5;
  v30 = *MEMORY[0x277D85DE8];
  v11 = a3;
  if ([v11 deviceIndex] != a4)
  {
    v13 = +[MLCLog framework];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v23 = NSStringFromSelector(a2);
      v24 = 138412802;
      v25 = v23;
      v26 = 2048;
      v27 = [v11 deviceIndex];
      v28 = 2048;
      v29 = a4;
      _os_log_error_impl(&dword_238C1D000, v13, OS_LOG_TYPE_ERROR, "%@: -readTensor:deviceIndex:allocateData:batchSize must be called with deviceIndex = %lu, but given deviceIndex = %lu", &v24, 0x20u);
    }

    goto LABEL_6;
  }

  v12 = [v11 deviceMemory];
  v13 = [v12 objectAtIndexedSubscript:a4];

  v14 = [(MLCDeviceCPU *)self deviceMemorySizeForTensor:v11 batchSize:a6];
  v15 = v14;
  if (!v7)
  {
    v19 = [v11 data];
    v16 = [v19 bytes];

    if (v16)
    {
      goto LABEL_8;
    }

    v22 = +[MLCLog framework];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      [MLCDeviceCPU readFromDevice:v22 deviceIndex:? allocateData:? batchSize:?];
    }

LABEL_6:
    v18 = 0;
    goto LABEL_11;
  }

  v16 = malloc_type_malloc(v14, 0x100004077774924uLL);
  v17 = [MEMORY[0x277CBEB28] dataWithBytesNoCopy:v16 length:v15 freeWhenDone:1];
  [v11 setData:v17];

LABEL_8:
  if ([v13 bytes]!= v16)
  {
    memcpy(v16, [v13 bytes], v15);
  }

  v18 = [v11 data];
LABEL_11:

  v20 = *MEMORY[0x277D85DE8];

  return v18;
}

- (void)readTensor:(id)a3 targetBuffer:(void *)a4
{
  v7 = a3;
  v6 = CPU_GetDeviceMemoryData(v7);
  if ([v6 bytes] != a4)
  {
    memcpy(a4, [v6 bytes], -[MLCDeviceCPU deviceMemorySizeForTensor:](self, "deviceMemorySizeForTensor:", v7));
  }
}

- (void)dispatchReadTensor:(id)a3 targetBuffer:(void *)a4 batchSize:(unint64_t)a5
{
  v9 = a3;
  v8 = CPU_GetDeviceMemoryData(v9);
  if ([v8 bytes] != a4)
  {
    memcpy(a4, [v8 bytes], -[MLCDeviceCPU deviceMemorySizeForTensor:batchSize:](self, "deviceMemorySizeForTensor:batchSize:", v9, a5));
  }
}

- (void)broadcastTensor:(id)a3
{
  v10 = a3;
  v4 = [v10 descriptor];
  v5 = [v4 shape];
  if ([v5 count] == 1)
  {
    v6 = 1;
  }

  else
  {
    v7 = [v10 descriptor];
    v8 = [v7 shape];
    v9 = [v8 objectAtIndexedSubscript:0];
    v6 = [v9 unsignedIntegerValue];
  }

  [(MLCDeviceCPU *)self writeToAllDevices:v10 allocateData:0 batchSize:v6];
}

- (void)dispatchBroadcastTensor:(id)a3
{
  v10 = a3;
  v4 = [v10 descriptor];
  v5 = [v4 shape];
  if ([v5 count] == 1)
  {
    v6 = 1;
  }

  else
  {
    v7 = [v10 descriptor];
    v8 = [v7 shape];
    v9 = [v8 objectAtIndexedSubscript:0];
    v6 = [v9 unsignedIntegerValue];
  }

  [(MLCDeviceCPU *)self writeToAllDevices:v10 allocateData:0 batchSize:v6];
}

- (void)writeToAllDevices:(id)a3 allocateData:(BOOL)a4 batchSize:(unint64_t)a5
{
  v6 = a4;
  v8 = a3;
  v9 = v8;
  if (v6)
  {
    [(MLCDeviceCPU *)self allocateDeviceMemoryForTensor:v8];
    v8 = v9;
  }

  [(MLCDeviceCPU *)self writeToDevice:v8 batchSize:a5];
}

- (void)writeToDevice:(id)a3 batchSize:(unint64_t)a4
{
  v6 = a3;
  v8 = [v6 data];
  v7 = v8;
  -[MLCDeviceCPU writeToDevice:sourceBuffer:batchSize:](self, "writeToDevice:sourceBuffer:batchSize:", v6, [v8 bytes], a4);
}

- (void)writeToDevice:(id)a3 sourceBuffer:(void *)a4 batchSize:(unint64_t)a5
{
  v8 = a3;
  v11 = CPU_GetDeviceMemoryData(v8);
  v9 = [(MLCDeviceCPU *)self deviceMemorySizeForTensor:v8 batchSize:a5];

  v10 = v11;
  if ([v11 bytes] != a4)
  {
    memcpy([v11 bytes], a4, v9);
  }
}

- (void)commitAndWaitForCompletion:(id)a3 enableProfiling:(BOOL)a4 graphExecutionTime:(id)a5 graphResultTensor:(id)a6
{
  v8 = a4;
  v16 = a3;
  v10 = a5;
  v11 = a6;
  v12 = 0.0;
  if (v8)
  {
    Current = CFAbsoluteTimeGetCurrent();
    v12 = Current - *[v10 bytes];
  }

  if (v11)
  {
    v14 = [v11 data];
    if ([v14 bytes])
    {
      v15 = [v11 device];

      if (!v15)
      {
        goto LABEL_8;
      }

      v14 = [v11 data];
      -[MLCDeviceCPU readTensor:targetBuffer:](self, "readTensor:targetBuffer:", v11, [v14 bytes]);
    }
  }

LABEL_8:
  if (v16)
  {
    v16[2](v16, v11, 0, v12);
  }
}

- (void)commitWithCompletionHandler:(id)a3 enableProfiling:(BOOL)a4 graphExecutionTime:(id)a5 graphResultTensor:(id)a6
{
  v8 = a4;
  v16 = a3;
  v10 = a5;
  v11 = a6;
  v12 = 0.0;
  if (v8)
  {
    Current = CFAbsoluteTimeGetCurrent();
    v12 = Current - *[v10 bytes];
  }

  if (v11)
  {
    v14 = [v11 data];
    if ([v14 bytes])
    {
      v15 = [v11 device];

      if (!v15)
      {
        goto LABEL_8;
      }

      v14 = [v11 data];
      -[MLCDeviceCPU readTensor:targetBuffer:](self, "readTensor:targetBuffer:", v11, [v14 bytes]);
    }
  }

LABEL_8:
  if (v16)
  {
    v16[2](v16, v11, 0, v12);
  }
}

- (BOOL)transferTensor:(id)a3 fromDevice:(id)a4
{
  v46 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (v8)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (self != v8 || (isKindOfClass & 1) == 0)
    {
      v11 = [v7 deviceIndex];
      v12 = [v7 deviceMemory];
      v13 = [v12 objectAtIndexedSubscript:v11];
      objc_opt_class();
      v14 = objc_opt_isKindOfClass();

      if (v14)
      {
        v15 = [v7 deviceMemory];
        v16 = [v15 count];

        v17 = [v7 deviceMemory];
        v18 = [v17 count];

        if (v18 == 1)
        {
          v19 = [(MLCDeviceCPU *)self deviceMemorySizeForTensor:v7];
          v20 = malloc_type_malloc(v19, 0x2B50BB67uLL);
          v16 = 1;
          v21 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v20 length:v19 freeWhenDone:1];
          v22 = [v7 deviceMemory];
          [v22 addObject:v21];
LABEL_21:

          v32 = [v7 deviceMemory];
          v23 = [v32 objectAtIndexedSubscript:v11];

          v33 = [v7 calculateBatchSizeToUse];
          v34 = [v23 liveIOStatus];
          OutputTensor = ANE_ReadOutputTensor(v7, v34, [v7 deviceIndex], v20, v33);

          if (OutputTensor)
          {
            [v7 setDeviceIndex:v16];
          }

          else
          {
            v35 = +[MLCLog framework];
            if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
            {
              [MLCDeviceCPU transferTensor:fromDevice:];
            }
          }

          goto LABEL_26;
        }

        v24 = [v7 deviceMemory];
        v25 = [v24 count];

        if (v25 == 2)
        {
          v26 = [v7 deviceMemory];
          v27 = [v26 count];

          if (v27)
          {
            v28 = 0;
            while (1)
            {
              v29 = [v7 deviceMemory];
              v30 = [v29 objectAtIndexedSubscript:v28];
              objc_opt_class();
              v31 = objc_opt_isKindOfClass();

              if (v31)
              {
                break;
              }

              if (v27 == ++v28)
              {
                goto LABEL_20;
              }
            }

            v16 = v28;
          }

LABEL_20:
          v21 = [v7 deviceMemory];
          v22 = [v21 objectAtIndexedSubscript:v16];
          v20 = [v22 bytes];
          goto LABEL_21;
        }

        v23 = +[MLCLog framework];
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          [MLCDeviceANE transferTensor:fromDevice:];
        }
      }

      else
      {
        v23 = +[MLCLog framework];
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          v38 = NSStringFromSelector(a2);
          v39 = [v7 deviceMemory];
          v40 = [v39 objectAtIndexedSubscript:v11];
          *buf = 138412546;
          v43 = v38;
          v44 = 2112;
          v45 = objc_opt_class();
          v41 = v45;
          _os_log_error_impl(&dword_238C1D000, v23, OS_LOG_TYPE_ERROR, "%@: unsupported device memory class=%@", buf, 0x16u);
        }
      }

      OutputTensor = 0;
LABEL_26:

      goto LABEL_27;
    }
  }

  OutputTensor = 1;
LABEL_27:

  v36 = *MEMORY[0x277D85DE8];
  return OutputTensor;
}

- (void)setDeviceMemoryForTensor:(id)a3 data:(id)a4
{
  v5 = a3;
  v8 = [a4 data];
  v6 = [v5 deviceMemory];
  v7 = [v5 deviceIndex];

  [v6 setObject:v8 atIndexedSubscript:v7];
}

- (BOOL)updateDeviceMemoryForTensor:(id)a3
{
  v4 = a3;
  v5 = [v4 deviceMemory];
  v6 = [v5 count];

  if (!v6)
  {
    goto LABEL_13;
  }

  v7 = [v4 deviceMemory];
  v8 = [v7 count];

  if (v8 < 3)
  {
    v10 = [v4 deviceMemory];
    v11 = [v10 count];

    if (!v11)
    {
LABEL_9:
      v9 = +[MLCLog framework];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [MLCDeviceCPU updateDeviceMemoryForTensor:a2];
      }

      goto LABEL_11;
    }

    v12 = 0;
    while (1)
    {
      v13 = [v4 deviceMemory];
      v14 = [v13 objectAtIndexedSubscript:v12];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        break;
      }

      if (v11 == ++v12)
      {
        goto LABEL_9;
      }
    }

    [v4 setDeviceIndex:v12];
LABEL_13:
    v16 = 1;
    goto LABEL_14;
  }

  v9 = +[MLCLog framework];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceCPU updateDeviceMemoryForTensor:a2];
  }

LABEL_11:

  v16 = 0;
LABEL_14:

  return v16;
}

- (void)updateBatchNormalizationLayer:(id)a3 optimizer:(id)a4 betaParameter:(id)a5 gammaParameter:(id)a6 meanTensor:(id)a7 varianceTensor:(id)a8 arrayOfParams:(id)a9
{
  v47[1] = a2;
  v50 = self;
  v55[1] = *MEMORY[0x277D85DE8];
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a9;
  v16 = [a3 objectAtIndexedSubscript:0];
  v17 = [v16 fusedPrimitiveParams];
  v51 = v15;
  if (v17)
  {
    [v16 fusedPrimitiveParams];
  }

  else
  {
    [v16 params];
  }
  v18 = ;

  v19 = [v18 bytes];
  v54 = 0;
  v55[0] = 0;
  v52 = 0;
  v53 = 0;
  if (v13)
  {
    if ([v13 isUpdatable])
    {
      v20 = &v53;
      v21 = v55;
      v54 = v19 + 352;
      v22 = [v16 betaDeltaData];
      v52 = [v22 bytes];

      v23 = 0;
      v24 = 2;
      if (!v14)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v24 = 1;
      v21 = &v54;
      v20 = &v52;
      v23 = 1;
      if (!v14)
      {
        goto LABEL_13;
      }
    }
  }

  else
  {
    v23 = 1;
    v21 = &v54;
    v20 = &v52;
    v24 = 1;
    if (!v14)
    {
      goto LABEL_13;
    }
  }

  if ([v14 isUpdatable])
  {
    v48 = v14;
    *v21 = v19 + 528;
    v25 = [v16 gammaDeltaData];
    *v20 = [v25 bytes];

    goto LABEL_15;
  }

LABEL_13:
  v26 = v51;
  if (v23)
  {
    goto LABEL_35;
  }

  v48 = v14;
  v24 = 1;
LABEL_15:
  v49 = v12;
  v27 = [v12 objectAtIndexedSubscript:0];
  v28 = [v27 accumulatorBufferCount];

  v47[2] = v47;
  v29 = 8 * v28 * v24;
  v30 = v47 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v29 >= 0x200)
  {
    v31 = 512;
  }

  else
  {
    v31 = 8 * v28 * v24;
  }

  bzero(v47 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0), v31);
  bzero(v47 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * v28 * v24);
  if (v24 == 2)
  {
    if (v28)
    {
      v32 = 0;
      v33 = v30 + 8;
      do
      {
        v34 = [v16 betaMomentumData];
        v35 = [v34 objectAtIndexedSubscript:v32];
        *(v33 - 1) = [v35 bytes];

        v36 = [v16 gammaMomentumData];
        v37 = [v36 objectAtIndexedSubscript:v32];
        *v33 = [v37 bytes];
        v33 += 2;

        ++v32;
      }

      while (v28 != v32);
    }
  }

  else if (v28)
  {
    for (i = 0; i != v28; ++i)
    {
      if ([v13 isUpdatable])
      {
        [v16 betaMomentumData];
      }

      else
      {
        [v16 gammaMomentumData];
      }
      v39 = ;
      v40 = [v39 objectAtIndexedSubscript:i];
      *&v30[8 * i] = [v40 bytes];
    }
  }

  v26 = v51;
  if (v51)
  {
    [(MLCDeviceCPU *)v50 accumulateParams:&v54 gradients:&v52 accumulators:v30 numOfParameters:v24 inArrayOfParams:v51];
    v14 = v48;
    v12 = v49;
  }

  else
  {
    v12 = v49;
    v41 = [v49 objectAtIndexedSubscript:0];
    v42 = [v41 function];
    v43 = [v12 objectAtIndexedSubscript:0];
    v44 = [v43 optimizerAlgFields];
    LODWORD(v42) = MEMORY[0x23EE75D80](v42, [v44 bytes], v24, &v54, &v52, v30, 0);

    v26 = v51;
    v14 = v48;
    if (v42)
    {
      v45 = +[MLCLog framework];
      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        [MLCDeviceCPU(MLComputeEngineOptimizerUpdate) updateBatchNormalizationLayer:optimizer:betaParameter:gammaParameter:meanTensor:varianceTensor:arrayOfParams:];
      }
    }
  }

LABEL_35:

  v46 = *MEMORY[0x277D85DE8];
}

- (void)sumSharedGradientsForConvolutionLayerTensorParameter:(id)a3 layerIndexForSummedGradients:(unint64_t)a4
{
  v44 = a3;
  v5 = [v44 childLayers];
  v6 = [v5 count];

  if (v6 == 1)
  {
    goto LABEL_34;
  }

  v7 = [v44 childLayers];
  v8 = [v7 objectAtIndexedSubscript:a4];

  v9 = [v8 deviceOps];
  v10 = [v9 objectAtIndexedSubscript:0];

  v11 = 0x278A68000uLL;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v13 = [v8 weights];

  if (isKindOfClass)
  {
    if (v13 == v44)
    {
      v14 = [v10 weightsDeltaData];
      v15 = [v14 bytes];

      v16 = v15[12];
      v17 = v15[4];
LABEL_8:
      v19 = v17 * v16;
      goto LABEL_9;
    }
  }

  else if (v13 == v44)
  {
    v20 = [v10 weightsDeltaData];
    v15 = [v20 bytes];

    v16 = v15[10];
    v17 = v15[2];
    goto LABEL_8;
  }

  v18 = [v10 biasDeltaData];
  v15 = [v18 bytes];

  v19 = v15[1];
LABEL_9:
  v21 = v15[17];
  v22 = [v44 childLayers];
  v23 = [v22 count];

  if (v23)
  {
    v24 = 0;
    while (1)
    {
      v25 = v8;
      v26 = [v44 childLayers];
      v8 = [v26 objectAtIndexedSubscript:v24];

      if (v24 == a4 || ![v8 isTrainable])
      {
        goto LABEL_31;
      }

      v27 = [v8 deviceOps];
      v28 = [v27 objectAtIndexedSubscript:0];

      v29 = *(v11 + 2808);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

LABEL_30:
      v10 = v28;
LABEL_31:
      v38 = v44;
LABEL_32:
      ++v24;
      v42 = [v38 childLayers];
      v43 = [v42 count];

      if (v24 >= v43)
      {
        goto LABEL_33;
      }
    }

    v30 = v8;
    if (v13 == v44)
    {
      v31 = [v30 weightsParameter];
      if (!v31)
      {
        goto LABEL_25;
      }

      v35 = [v30 weightsParameter];
      v36 = [v35 isUpdatable];

      if (v36)
      {
        v34 = [v28 weightsDeltaData];
        goto LABEL_22;
      }
    }

    else
    {
      v31 = [v30 biasesParameter];
      if (!v31)
      {
        goto LABEL_25;
      }

      v32 = [v30 biasesParameter];
      v33 = [v32 isUpdatable];

      if (v33)
      {
        v34 = [v28 biasDeltaData];
LABEL_22:
        v37 = v34;
        v31 = *([v34 bytes] + 136);

LABEL_24:
        v11 = 0x278A68000;
LABEL_25:

        if (v31)
        {
          v38 = v44;
          if (v19)
          {
            v39 = v21;
            v40 = v19;
            do
            {
              v41 = *v31++;
              *v39 = v41 + *v39;
              ++v39;
              --v40;
            }

            while (v40);
          }

          v10 = v28;
          goto LABEL_32;
        }

        goto LABEL_30;
      }
    }

    v31 = 0;
    goto LABEL_24;
  }

LABEL_33:

LABEL_34:
}

- (void)sumSharedGradientsForNormalizationLayerTensorParameter:(id)a3 layerIndexForSummedGradients:(unint64_t)a4 isBetaTensor:(BOOL)a5
{
  v5 = a5;
  v43 = a3;
  v7 = [v43 childLayers];
  v8 = [v7 count];

  if (v8 != 1)
  {
    v9 = [v43 childLayers];
    v10 = [v9 objectAtIndexedSubscript:a4];

    v11 = [v10 deviceOps];
    v12 = [v11 objectAtIndexedSubscript:0];

    if (v5)
    {
      [v12 betaDeltaData];
    }

    else
    {
      [v12 gammaDeltaData];
    }
    v13 = ;
    v14 = [v13 bytes];

    v15 = *(v14 + 8);
    if (v15)
    {
      v16 = (v14 + 16);
      v17 = 1;
      v18 = v43;
      do
      {
        v17 *= v15;
        v19 = *v16++;
        v15 = v19;
      }

      while (v19);
    }

    else
    {
      v17 = 1;
      v18 = v43;
    }

    v20 = *(v14 + 136);
    v21 = [v18 childLayers];
    v22 = [v21 count];

    if (v22)
    {
      v23 = 0;
      while (1)
      {
        v24 = v10;
        v25 = [v43 childLayers];
        v10 = [v25 objectAtIndexedSubscript:v23];

        if (v23 == a4 || ![v10 isTrainable])
        {
          goto LABEL_33;
        }

        v26 = [v10 deviceOps];
        v27 = [v26 objectAtIndexedSubscript:0];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          break;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          break;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          break;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          break;
        }

LABEL_32:
        v12 = v27;
LABEL_33:
        v37 = v43;
LABEL_34:
        ++v23;
        v41 = [v37 childLayers];
        v42 = [v41 count];

        if (v23 >= v42)
        {
          goto LABEL_35;
        }
      }

      v28 = v10;
      v29 = v28;
      if (v5)
      {
        v30 = [v28 betaParameter];
        if (!v30)
        {
          goto LABEL_27;
        }

        v31 = [v29 betaParameter];
        v32 = [v31 isUpdatable];

        if (v32)
        {
          v33 = [v27 betaDeltaData];
LABEL_25:
          v36 = v33;
          v30 = *([v33 bytes] + 136);

          goto LABEL_27;
        }
      }

      else
      {
        v30 = [v28 gammaParameter];
        if (!v30)
        {
          goto LABEL_27;
        }

        v34 = [v29 gammaParameter];
        v35 = [v34 isUpdatable];

        if (v35)
        {
          v33 = [v27 gammaDeltaData];
          goto LABEL_25;
        }
      }

      v30 = 0;
LABEL_27:

      if (v30)
      {
        v37 = v43;
        if (v17)
        {
          v38 = v20;
          v39 = v17;
          do
          {
            v40 = *v30++;
            *v38 = v40 + *v38;
            ++v38;
            --v39;
          }

          while (v39);
        }

        v12 = v27;
        goto LABEL_34;
      }

      goto LABEL_32;
    }

LABEL_35:
  }
}

- (void)updateFullyConnectedLayer:(id)a3 optimizer:(id)a4 weightsParameter:(id)a5 biasesParameter:(id)a6 arrayOfParams:(id)a7
{
  v46[1] = a2;
  v48 = self;
  v54[1] = *MEMORY[0x277D85DE8];
  v11 = a4;
  v12 = a5;
  v50 = a6;
  v49 = a7;
  v13 = [a3 objectAtIndexedSubscript:0];
  v14 = [v13 params];
  v15 = [v14 bytes];
  v53 = 0;
  v54[0] = 0;
  v51 = 0;
  v52 = 0;
  v16 = [v12 isUpdatable];
  v17 = &v53;
  v18 = &v51;
  if (v16)
  {
    v17 = v54;
    v18 = &v52;
    v53 = v15 + 176;
    v19 = [v13 weightsDeltaData];
    v51 = [v19 bytes];

    v20 = 2;
  }

  else
  {
    v20 = 1;
  }

  v21 = v50;
  if (v50 && [v50 isUpdatable])
  {
    *v17 = v15 + 528;
    v22 = [v13 biasDeltaData];
    *v18 = [v22 bytes];
  }

  else
  {
    if (!v16)
    {
      goto LABEL_30;
    }

    v20 = 1;
  }

  v47 = v11;
  v23 = [v11 objectAtIndexedSubscript:0];
  v24 = [v23 accumulatorBufferCount];

  v46[2] = v46;
  v25 = 8 * v24 * v20;
  v26 = v46 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v25 >= 0x200)
  {
    v27 = 512;
  }

  else
  {
    v27 = 8 * v24 * v20;
  }

  bzero(v46 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0), v27);
  bzero(v46 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * v24 * v20);
  if (v20 == 2)
  {
    if (v24)
    {
      v28 = 0;
      v29 = v26 + 8;
      do
      {
        v30 = [v13 weightsMomentumData];
        v31 = [v30 objectAtIndexedSubscript:v28];
        *(v29 - 1) = [v31 bytes];

        v32 = [v13 biasMomentumData];
        v33 = [v32 objectAtIndexedSubscript:v28];
        *v29 = [v33 bytes];
        v29 += 2;

        ++v28;
      }

      while (v24 != v28);
    }
  }

  else if (v24)
  {
    for (i = 0; i != v24; ++i)
    {
      if ([v12 isUpdatable])
      {
        [v13 weightsMomentumData];
      }

      else
      {
        [v13 biasMomentumData];
      }
      v35 = ;
      v36 = [v35 objectAtIndexedSubscript:i];
      *&v26[8 * i] = [v36 bytes];
    }
  }

  if (v49)
  {
    [(MLCDeviceCPU *)v48 accumulateParams:&v53 gradients:&v51 accumulators:v26 numOfParameters:v20 inArrayOfParams:?];
    v11 = v47;
  }

  else
  {
    v37 = v47;
    v38 = [v47 objectAtIndexedSubscript:0];
    v39 = [v38 function];
    v40 = [v37 objectAtIndexedSubscript:0];
    v41 = [v40 optimizerAlgFields];
    v42 = [v41 bytes];
    v43 = v26;
    v11 = v37;
    LODWORD(v37) = MEMORY[0x23EE75D80](v39, v42, v20, &v53, &v51, v43, 0);

    if (v37)
    {
      v44 = +[MLCLog framework];
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        [MLCDeviceCPU(MLComputeEngineOptimizerUpdate) updateFullyConnectedLayer:optimizer:weightsParameter:biasesParameter:arrayOfParams:];
      }
    }
  }

  v21 = v50;
LABEL_30:

  v45 = *MEMORY[0x277D85DE8];
}

- ($ADD8B2928F54472B65CB84445603561F)getGateDesc:(SEL)a3 lstmParams:(unint64_t)a4
{
  v6 = 928 * a4 + 1280;
  if (a4 >= 3)
  {
    v6 = 4064;
  }

  return memcpy(retstr, a5 + v6, sizeof($ADD8B2928F54472B65CB84445603561F));
}

- (void)saveOrRestoreLSTMBiasesAndAccumulators:(id)a3 auxParameter:(id)a4 auxAccumulators:(id)a5 mlcIndex:(unint64_t)a6 auxIndex:(unint64_t)a7 saveParameter:(BOOL)a8
{
  v8 = a8;
  v12 = a3;
  v32 = a4;
  v34 = a5;
  v31 = [v12 params];
  v13 = [v31 bytes];
  v14 = [v12 hiddenSize];
  v15 = [v12 biDirectional];
  v16 = [v12 numLayers];
  v17 = [v12 numAccumulatorsPerParameter];
  v18 = 4 * v16;
  v36 = v12;
  if (v16 < 2)
  {
    v20 = 0;
    v19 = a6;
  }

  else if ([v12 biDirectional])
  {
    v19 = a6;
    if ([v12 biDirectional])
    {
      v20 = (a6 - v18) >> 2;
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v19 = a6;
    v20 = a6 >> 2;
  }

  [(MLCDeviceCPU *)self getGateDesc:v19 & 3 lstmParams:v13];
  if (v19 >= v18)
  {
    v21 = v14;
  }

  else
  {
    v21 = 0;
  }

  v22 = v21 + (v20 << v15) * v14;
  if (v8)
  {
    v23 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:malloc_type_calloc(v14 length:4uLL freeWhenDone:{0x100004052888210uLL), v14, 1}];
    [v32 addObject:v23];
    v24 = a7;
  }

  else
  {
    v24 = a7;
    v23 = [v32 objectAtIndexedSubscript:a7];
  }

  v30 = v23;
  saveOrRestoreLSTMWeightsAndAccumulatorsHelper(v37, v22, [v23 bytes], 4 * v14, v8);
  if (v17)
  {
    v25 = v17 * v24;
    do
    {
      if (v8)
      {
        v26 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:malloc_type_calloc(v14 length:4uLL freeWhenDone:{0x100004052888210uLL), v14, 1}];
        [v34 addObject:v26];
      }

      else
      {
        v26 = [v34 objectAtIndexedSubscript:v25];
      }

      v27 = [v36 biasMomentumData];
      v28 = [v27 objectAtIndexedSubscript:a6 & 3];
      v29 = [v28 bytes];

      saveOrRestoreLSTMWeightsAndAccumulatorsHelper(*(v29 + 136), v22, [v26 bytes], 4 * v14, v8);
      ++v25;
      --v17;
    }

    while (v17);
  }
}

- (void)createBNNSDesc2DForLSTMWeights:(id)a3 tensorParameters:(id)a4 deviceOptimizers:(id)a5 isInputWeight:(BOOL)a6
{
  v6 = a6;
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [v9 params];
  v56 = [v12 bytes];

  v13 = [v9 lstmDeltaParams];
  v55 = [v13 bytes];

  v14 = [v9 numLayers];
  v58 = [v9 biDirectional];
  v49 = v11;
  v15 = [v11 objectAtIndexedSubscript:0];
  v16 = [v15 accumulatorBufferCount];

  v50 = v10;
  v61 = [v10 count];
  v54 = [v9 inputSize];
  v53 = [v9 hiddenSize];
  v64 = v6;
  if (v6)
  {
    v60 = [v9 bnnsDesc2DInputWeightParams];
    v59 = [v9 bnnsDesc2DInputWeightGrads];
    [v9 bnnsDesc2DInputWeightAccumulators];
  }

  else
  {
    v60 = [v9 bnnsDesc2DHiddenWeightParams];
    v59 = [v9 bnnsDesc2DHiddenWeightGrads];
    [v9 bnnsDesc2DHiddenWeightAccumulators];
  }
  v17 = ;
  if (![v17 count] && v16)
  {
    v18 = 0;
    v19 = MEMORY[0x277CBEBF8];
    do
    {
      v20 = [v19 mutableCopy];
      [v17 setObject:v20 atIndexedSubscript:v18];

      ++v18;
    }

    while (v16 != v18);
  }

  v21 = v64;
  v51 = v9;
  v65 = v17;
  if (v64)
  {
    [v9 inputWeightsMomentumDescData];
  }

  else
  {
    [v9 hiddenWeightsMomentumDescData];
  }
  v22 = ;
  if (v61)
  {
    v23 = 0;
    v52 = 4 * v14;
    do
    {
      v24 = v16;
      v25 = v23 >= v52;
      v26 = v58 & v25;
      memset(v121, 0, 32);
      if ((v58 & v25) != 0)
      {
        v27 = v52;
      }

      else
      {
        v27 = 0;
      }

      v28 = v23 - v27;
      v124 = 0uLL;
      v29 = (v23 - v27) >> 2;
      v123 = 0uLL;
      v122 = 0uLL;
      memset(&v121[2], 0, 96);
      LODWORD(v123) = 65568;
      v30 = v23 - v27 >= 4;
      v31 = v23 - v27 < 4;
      v32 = !v30 && v21;
      v33 = !v21 || !v31;
      v34 = v54;
      if (v33)
      {
        v34 = v53;
      }

      *(&v121[0] + 1) = v34;
      *&v121[1] = v53;
      DWORD1(v121[0]) = 0x20000;
      v110[0] = 0x2000000000000;
      v120 = 0uLL;
      v119 = 0uLL;
      v118 = 0uLL;
      v117 = 0uLL;
      v116 = 0uLL;
      v115 = 0uLL;
      v114 = 0uLL;
      v113 = 0uLL;
      v112 = 0uLL;
      LODWORD(v119) = 65568;
      v110[1] = v34;
      v111 = v53;
      v35 = v23 & 3;
      v109 = 0uLL;
      v108 = 0uLL;
      v107 = 0uLL;
      v106 = 0uLL;
      v105 = 0uLL;
      v104 = 0uLL;
      v103 = 0uLL;
      v102 = 0uLL;
      v101 = 0uLL;
      v100 = 0uLL;
      v99 = 0uLL;
      v98 = 0uLL;
      v97 = 0uLL;
      v96 = 0uLL;
      v95 = 0uLL;
      v94 = 0uLL;
      v93 = 0uLL;
      v92 = 0uLL;
      v91 = 0uLL;
      v90 = 0uLL;
      v89 = 0uLL;
      v88 = 0uLL;
      v87 = 0uLL;
      v86 = 0uLL;
      memset(&v85[50], 0, 128);
      [(MLCDeviceCPU *)self getGateDesc:v35 lstmParams:v56];
      memset(v85, 0, 384);
      v83 = 0u;
      v84 = 0u;
      v81 = 0u;
      v82 = 0u;
      v79 = 0u;
      v80 = 0u;
      v77 = 0u;
      v78 = 0u;
      [(MLCDeviceCPU *)self getGateDesc:v35 lstmParams:v55];
      if (v32)
      {
        v36 = (*(&v86 + 1) + 8 * v26);
        v37 = v85 + 8;
        v38 = v26;
      }

      else if (v21)
      {
        v38 = ((v29 - 1) << v58) + v26;
        v36 = (*(&v97 + 1) + 8 * v38);
        v37 = &v85[11] + 8;
      }

      else
      {
        v38 = (v29 << v58) + v26;
        v36 = (*(&v108 + 1) + 8 * v38);
        v37 = &v85[22] + 8;
      }

      *(&v122 + 1) = *v36;
      *(&v118 + 1) = *(*v37 + 8 * v38);
      v39 = [MEMORY[0x277CBEA90] dataWithBytes:v121 length:176];
      [v60 setObject:v39 atIndexedSubscript:v23];

      v40 = [MEMORY[0x277CBEA90] dataWithBytes:v110 length:176];
      [v59 setObject:v40 atIndexedSubscript:v23];

      if (v16)
      {
        v41 = 0;
        if (v64 && v28 > 3)
        {
          v35 |= 4uLL;
        }

        v62 = (v29 - 1) << v58;
        v63 = v29 << v58;
        do
        {
          v66 = 0x2000000000000;
          *&v67[8] = 0u;
          v75 = 0u;
          v76 = 0u;
          v73 = 0u;
          v74 = 0u;
          v71 = 0u;
          v72 = 0u;
          v69 = 0u;
          v70 = 0u;
          v68 = 0u;
          LODWORD(v75) = 65568;
          *v67 = *(v121 + 8);
          v42 = [v22 objectAtIndexedSubscript:v41];
          v43 = [v42 objectAtIndexedSubscript:v35];
          v44 = [v43 bytes];

          v16 = v24;
          v45 = *(v44 + 136);
          if (!v32)
          {
            if (v64)
            {
              v46 = v62;
            }

            else
            {
              v46 = v63;
            }

            v45 += 8 * v46;
          }

          *(&v74 + 1) = *(v45 + 8 * v26);
          v47 = [MEMORY[0x277CBEA90] dataWithBytes:&v66 length:176];
          v48 = [v65 objectAtIndexedSubscript:v41];
          [v48 setObject:v47 atIndexedSubscript:v23];

          ++v41;
        }

        while (v24 != v41);
      }

      ++v23;
      v21 = v64;
    }

    while (v23 != v61);
  }
}

- (void)optimizerStepForSingleParameterLSTM:(id)a3 tensorParameters:(id)a4 parameterForGateDesc:(id *)a5 gradientsForGateDesc:(id *)a6 parameterMomentumDescData:(id)a7 gateIndex:(unint64_t)a8 deviceOptimizers:(id)a9 isStackedInputWeight:(BOOL)a10
{
  v69 = a6;
  v106[1] = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a4;
  v16 = a7;
  v17 = a9;
  v18 = [v14 numLayers];
  v58 = v14;
  v74 = [v14 biDirectional];
  v71 = v17;
  v19 = [v17 objectAtIndexedSubscript:0];
  v20 = [v19 accumulatorBufferCount];

  v57 = &v57;
  v91 = 0u;
  v92 = 0u;
  v95 = 0u;
  v96 = 0u;
  v100 = 0u;
  v101 = 0u;
  v98 = 0u;
  v99 = 0u;
  v97 = 0u;
  v93 = 0u;
  v94 = 0u;
  DWORD1(v91) = 0x20000;
  v21 = a5->var2[1];
  *(&v91 + 1) = a5->var2[0];
  *&v92 = v21;
  v22 = a5->var3[1];
  *(&v95 + 1) = a5->var3[0];
  *&v96 = v22;
  v106[0] = &v91;
  LODWORD(v100) = a5->var5;
  v79[0] = 0x2000000000000;
  v80 = 0u;
  v83 = 0;
  v85 = 0u;
  v89 = 0u;
  v90 = 0u;
  v87 = 0u;
  v88 = 0u;
  v86 = 0u;
  v81 = 0u;
  v82 = 0u;
  v79[1] = *(&v91 + 1);
  *&v80 = v21;
  v84 = *(&v95 + 1);
  *&v85 = v22;
  LODWORD(v89) = v100;
  v105 = v79;
  if ((8 * v20) >= 0x200)
  {
    v23 = 512;
  }

  else
  {
    v23 = 8 * v20;
  }

  bzero(&v57 - ((8 * v20 + 15) & 0xFFFFFFFFFFFFFFF0), v23);
  v73 = &v57 - ((8 * v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v73, 8 * v20);
  v24 = [MEMORY[0x277CBEBF8] mutableCopy];
  v26 = v20;
  if (v20)
  {
    v27 = 0;
    do
    {
      memset(v102, 0, sizeof(v102));
      v103 = 0u;
      v104 = 0u;
      LODWORD(v103) = a5->var5;
      *(v102 + 8) = *a5->var2;
      DWORD1(v102[0]) = 0x20000;
      v28 = v26;
      v29 = [MEMORY[0x277CBEA90] dataWithBytes:v102 length:176];
      [v24 setObject:v29 atIndexedSubscript:v27];

      v30 = [v24 objectAtIndexedSubscript:v27];
      v31 = [v30 bytes];
      *&v73[8 * v27] = v31;

      v26 = v28;
      ++v27;
    }

    while (v28 != v27);
  }

  v70 = v24;
  v77 = v26;
  v62 = a5->var2[3];
  if (v62)
  {
    v32 = 0;
    v60 = v74;
    v61 = a10;
    v33 = a8 + 4;
    if (!a10)
    {
      v33 = a8;
    }

    v64 = v33;
    *&v25 = 67109120;
    v59 = v25;
    v67 = v15;
    v68 = a8;
    v65 = v18;
    v66 = a5;
    do
    {
      v34 = 0;
      v75 = v32 + v61;
      v63 = v32;
      v72 = v32 << v60;
      v35 = 1;
      do
      {
        v76 = v35;
        v36 = [v15 objectAtIndexedSubscript:a8 + 4 * (v75 + v34 * v18)];
        v37 = [v36 isUpdatable];

        if (v37)
        {
          v38 = v34 + v72;
          *(&v99 + 1) = *(a5->var4 + v34 + v72);
          v39 = v70;
          *(&v88 + 1) = *(v69->var4 + v38);
          v40 = v64;
          if (v77)
          {
            for (i = 0; i != v77; ++i)
            {
              v42 = [v39 objectAtIndexedSubscript:i];
              v78 = [v42 bytes];
              v43 = [v16 objectAtIndexedSubscript:i];
              [v43 objectAtIndexedSubscript:v40];
              v44 = v38;
              v46 = v45 = v16;
              v47 = [v46 bytes];

              v16 = v45;
              v38 = v44;

              *(v78 + 136) = *(*(v47 + 136) + 8 * v44);
            }
          }

          v48 = v71;
          v49 = [v71 objectAtIndexedSubscript:0];
          v50 = [v49 function];
          v51 = [v48 objectAtIndexedSubscript:0];
          v52 = [v51 optimizerAlgFields];
          v53 = [v52 bytes];
          v54 = MEMORY[0x23EE75D80](v50, v53, 1, v106, &v105, v73, 0);

          v15 = v67;
          a8 = v68;
          v18 = v65;
          a5 = v66;
          if (v54)
          {
            v55 = +[MLCLog framework];
            if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
            {
              *&v102[0] = __PAIR64__(v54, v59);
              _os_log_error_impl(&dword_238C1D000, v55, OS_LOG_TYPE_ERROR, "Optimizer update for LSTM with BNNS failed:%d", v102, 8u);
            }
          }
        }

        v34 = 1;
        v35 = 0;
      }

      while ((v74 & v76 & 1) != 0);
      v32 = v63 + 1;
    }

    while (v63 + 1 != v62);
  }

  v56 = *MEMORY[0x277D85DE8];
}

- (void)updateRNNLayer:(id)a3 optimizer:(id)a4 inputWeightsParameter:(id)a5 hiddenWeightsParameter:(id)a6 biasesParameter:(id)a7 arrayOfParams:(id)a8
{
  v103[1] = a2;
  v116 = *MEMORY[0x277D85DE8];
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v110 = a8;
  v18 = [a3 objectAtIndexedSubscript:0];
  v108 = [v18 params];
  v111 = [v108 bytes];
  v19 = [v18 lstmDeltaParams];
  v105 = [v19 bytes];

  v20 = [v18 auxBiasTerms];
  [v20 removeAllObjects];

  v21 = [v18 auxBiasTermsAccumulators];
  [v21 removeAllObjects];

  [(MLCDeviceCPU *)self createBNNSDesc2DForLSTMWeights:v18 tensorParameters:v15 deviceOptimizers:v14 isInputWeight:1];
  v106 = self;
  [(MLCDeviceCPU *)self createBNNSDesc2DForLSTMWeights:v18 tensorParameters:v16 deviceOptimizers:v14 isInputWeight:0];
  v115 = v15;
  v22 = 0;
  if ([v15 count])
  {
    v23 = 0;
    do
    {
      v24 = [v115 objectAtIndexedSubscript:v23];
      v25 = [v24 isUpdatable];

      v22 += v25;
      ++v23;
    }

    while (v23 < [v115 count]);
  }

  if ([v16 count])
  {
    v26 = 0;
    do
    {
      v27 = [v16 objectAtIndexedSubscript:v26];
      v28 = [v27 isUpdatable];

      v22 += v28;
      ++v26;
    }

    while (v26 < [v16 count]);
  }

  if (v17)
  {
    v114 = [v17 count] != 0;
  }

  else
  {
    v114 = 0;
  }

  v29 = v115;
  v109 = v14;
  if ([v18 hasBias])
  {
    v30 = v22;
    v31 = 0;
    if ([v17 count])
    {
      v32 = 0;
      do
      {
        v33 = [v17 objectAtIndexedSubscript:v32];
        v34 = [v33 isUpdatable];

        if ((v34 & 1) == 0)
        {
          v35 = [v18 auxBiasTerms];
          v36 = [v18 auxBiasTermsAccumulators];
          [(MLCDeviceCPU *)v106 saveOrRestoreLSTMBiasesAndAccumulators:v18 auxParameter:v35 auxAccumulators:v36 mlcIndex:v32 auxIndex:0 saveParameter:1];
        }

        v31 |= v34;
        ++v32;
      }

      while (v32 < [v17 count]);
    }

    v114 &= v31;
    if (v114)
    {
      v22 = v30 + 4;
    }

    else
    {
      v22 = v30;
    }

    v29 = v115;
    v14 = v109;
  }

  if (v22)
  {
    v103[2] = v103;
    v107 = v22;
    v37 = (8 * v22 + 15) & 0xFFFFFFFFFFFFFFF0;
    if ((8 * v22) >= 0x200)
    {
      v38 = 512;
    }

    else
    {
      v38 = 8 * v22;
    }

    bzero(v103 - v37, v38);
    v113 = v103 - v37;
    bzero(v103 - v37, 8 * v22);
    v39 = v103 - v37;
    bzero(v39, v38);
    v112 = v39;
    bzero(v39, 8 * v22);
    v40 = 0;
    if ([v29 count])
    {
      v41 = 0;
      v42 = v115;
      do
      {
        v43 = [v42 objectAtIndexedSubscript:v41];
        v44 = [v43 isUpdatable];

        if (v44)
        {
          v45 = [v18 bnnsDesc2DInputWeightParams];
          v46 = [v45 objectAtIndexedSubscript:v41];
          v47 = [v46 bytes];
          *&v113[8 * v40] = v47;

          v48 = [v18 bnnsDesc2DInputWeightGrads];
          v49 = [v48 objectAtIndexedSubscript:v41];
          v50 = [v49 bytes];
          *&v112[8 * v40] = v50;

          ++v40;
        }

        ++v41;
        v42 = v115;
      }

      while (v41 < [v115 count]);
    }

    if ([v16 count])
    {
      v51 = 0;
      do
      {
        v52 = [v16 objectAtIndexedSubscript:v51];
        v53 = [v52 isUpdatable];

        if (v53)
        {
          v54 = [v18 bnnsDesc2DHiddenWeightParams];
          v55 = [v54 objectAtIndexedSubscript:v51];
          v56 = [v55 bytes];
          *&v113[8 * v40] = v56;

          v57 = [v18 bnnsDesc2DHiddenWeightGrads];
          v58 = [v57 objectAtIndexedSubscript:v51];
          v59 = [v58 bytes];
          *&v112[8 * v40] = v59;

          ++v40;
        }

        ++v51;
      }

      while (v51 < [v16 count]);
    }

    v104 = v17;
    v60 = [v18 hasBias];
    if (v60 & v114)
    {
      v61 = vdupq_n_s64(v111);
      v62 = &v113[8 * v40];
      v63 = vdupq_n_s64(v105);
      *v62 = vaddq_s64(v61, xmmword_238D45FB0);
      v62[1] = vaddq_s64(v61, xmmword_238D45FC0);
      v64 = &v112[8 * v40];
      *v64 = vaddq_s64(v63, xmmword_238D45FB0);
      v64[1] = vaddq_s64(v63, xmmword_238D45FC0);
    }

    v65 = [v14 objectAtIndexedSubscript:0];
    v66 = [v65 accumulatorBufferCount];

    v67 = 8 * v66 * v107;
    v68 = v103 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v67 >= 0x200)
    {
      v69 = 512;
    }

    else
    {
      v69 = 8 * v66 * v107;
    }

    bzero(v103 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0), v69);
    bzero(v103 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0), v67);
    v70 = v115;
    v111 = v66;
    if (v66)
    {
      v71 = 0;
      v72 = 0;
      v73 = v18;
      do
      {
        if ([v70 count])
        {
          v74 = 0;
          do
          {
            v75 = [v70 objectAtIndexedSubscript:v74];
            v76 = [v75 isUpdatable];

            if (v76)
            {
              v77 = [v18 bnnsDesc2DInputWeightAccumulators];
              v78 = [v77 objectAtIndexedSubscript:v71];
              v79 = [v78 objectAtIndexedSubscript:v74];
              *&v68[8 * v72] = [v79 bytes];

              v70 = v115;
              ++v72;
              v18 = v73;
            }

            ++v74;
          }

          while (v74 < [v70 count]);
        }

        if ([v16 count])
        {
          v80 = 0;
          do
          {
            v81 = [v16 objectAtIndexedSubscript:v80];
            v82 = [v81 isUpdatable];

            if (v82)
            {
              v83 = [v18 bnnsDesc2DHiddenWeightAccumulators];
              v84 = [v83 objectAtIndexedSubscript:v71];
              v85 = [v84 objectAtIndexedSubscript:v80];
              *&v68[8 * v72] = [v85 bytes];

              ++v72;
              v18 = v73;
            }

            ++v80;
          }

          while (v80 < [v16 count]);
        }

        v86 = [v18 hasBias];
        if (v86 & v114)
        {
          v87 = [v18 biasMomentumData];
          v88 = [v87 objectAtIndexedSubscript:4 * v71];
          v89 = &v68[8 * v72];
          *v89 = [v88 bytes];

          v90 = [v18 biasMomentumData];
          v91 = [v90 objectAtIndexedSubscript:(4 * v71) | 1];
          *(v89 + 1) = [v91 bytes];

          v92 = [v18 biasMomentumData];
          v93 = [v92 objectAtIndexedSubscript:(4 * v71) | 2];
          *(v89 + 2) = [v93 bytes];

          v94 = [v18 biasMomentumData];
          v95 = [v94 objectAtIndexedSubscript:(4 * v71) | 3];
          v72 += 4;
          *(v89 + 3) = [v95 bytes];
        }

        ++v71;
        v70 = v115;
      }

      while (v71 != v111);
    }

    if (v110)
    {
      [(MLCDeviceCPU *)v106 accumulateParams:v113 gradients:v112 accumulators:v68 numOfParameters:v107 inArrayOfParams:?];
      v14 = v109;
      v17 = v104;
    }

    else
    {
      v14 = v109;
      v96 = [v109 objectAtIndexedSubscript:0];
      v97 = [v96 function];
      v98 = [v14 objectAtIndexedSubscript:0];
      v99 = [v98 optimizerAlgFields];
      v100 = [v99 bytes];
      LODWORD(v97) = MEMORY[0x23EE75D80](v97, v100, v107, v113, v112, v68, 0);

      v17 = v104;
      if (v97)
      {
        v101 = +[MLCLog framework];
        if (os_log_type_enabled(v101, OS_LOG_TYPE_ERROR))
        {
          [MLCDeviceCPU(MLComputeEngineOptimizerUpdate) updateRNNLayer:optimizer:inputWeightsParameter:hiddenWeightsParameter:biasesParameter:arrayOfParams:];
        }
      }
    }

    v29 = v115;
  }

  v102 = *MEMORY[0x277D85DE8];
}

- (void)updateMultiheadAttentionLayer:(id)a3 optimizer:(id)a4 weightsParameter:(id)a5 biasesParameter:(id)a6 arrayOfParams:(id)a7
{
  v113 = a2;
  v120 = self;
  v124 = *MEMORY[0x277D85DE8];
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = a7;
  v15 = [a3 objectAtIndexedSubscript:{0, v113}];
  v16 = [v15 params];
  v121 = [v16 bytes];
  v17 = 0;
  if ([v12 count])
  {
    v18 = 0;
    do
    {
      v19 = [v12 objectAtIndexedSubscript:v18];
      v20 = [v19 isUpdatable];

      v17 += v20;
      ++v18;
    }

    while (v18 < [v12 count]);
  }

  if (v13 && [v13 count])
  {
    v21 = 0;
    do
    {
      v22 = [v13 objectAtIndexedSubscript:v21];
      v23 = [v22 isUpdatable];

      v17 += v23;
      ++v21;
    }

    while (v21 < [v13 count]);
  }

  if (v17)
  {
    v117 = v16;
    v118 = v14;
    v115 = &v113;
    v24 = (8 * v17 + 15) & 0xFFFFFFFFFFFFFFF0;
    v25 = (&v113 - v24);
    if ((8 * v17) >= 0x200)
    {
      v26 = 512;
    }

    else
    {
      v26 = 8 * v17;
    }

    bzero(&v113 - v24, v26);
    bzero(&v113 - v24, 8 * v17);
    v27 = &v113 - v24;
    bzero(v27, v26);
    bzero(v27, 8 * v17);
    v119 = v11;
    v28 = [v11 objectAtIndexedSubscript:0];
    v29 = [v28 accumulatorBufferCount];

    v122 = v29;
    v30 = 8 * v29 * v17;
    v31 = (v30 + 15) & 0xFFFFFFFFFFFFFFF0;
    v32 = &v113 - v31;
    if (v30 >= 0x200)
    {
      v33 = 512;
    }

    else
    {
      v33 = v30;
    }

    v34 = v27;
    bzero(&v113 - v31, v33);
    v123 = v32;
    bzero(v32, v30);
    v35 = [v12 objectAtIndexedSubscript:0];
    v36 = [v35 isUpdatable];

    v37 = 0;
    v38 = v121;
    if (v36)
    {
      *v25 = v121 + 176;
      v39 = [v15 inDeltaData];
      v40 = [v39 objectAtIndexedSubscript:0];
      *v34 = [v40 bytes] + 176;

      v37 = 1;
    }

    v41 = [v12 objectAtIndexedSubscript:1];
    v42 = [v41 isUpdatable];

    if (v42)
    {
      v25[v37] = v38 + 704;
      v43 = [v15 inDeltaData];
      v44 = [v43 objectAtIndexedSubscript:1];
      v34[v37] = [v44 bytes] + 176;

      ++v37;
    }

    v45 = [v12 objectAtIndexedSubscript:2];
    v46 = [v45 isUpdatable];

    if (v46)
    {
      v25[v37] = v38 + 1232;
      v47 = [v15 inDeltaData];
      v48 = [v47 objectAtIndexedSubscript:2];
      v34[v37] = [v48 bytes] + 176;

      ++v37;
    }

    v49 = [v12 objectAtIndexedSubscript:3];
    v50 = [v49 isUpdatable];

    if (v50)
    {
      v25[v37] = v38 + 2120;
      v51 = [v15 outDeltaData];
      v52 = [v51 objectAtIndexedSubscript:0];
      v34[v37] = [v52 bytes] + 176;

      ++v37;
    }

    v53 = [v15 hasBias];
    v54 = 4;
    if (!v53)
    {
      v54 = 0;
    }

    v114 = v54;
    v55 = [v15 hasBias];
    v116 = v17;
    if (v55)
    {
      v56 = [v13 objectAtIndexedSubscript:0];
      v57 = [v56 isUpdatable];

      if (v57)
      {
        v25[v37] = v38 + 352;
        v58 = [v15 inDeltaData];
        v59 = [v58 objectAtIndexedSubscript:0];
        v34[v37] = [v59 bytes] + 352;

        ++v37;
      }

      v60 = [v13 objectAtIndexedSubscript:1];
      v61 = [v60 isUpdatable];

      if (v61)
      {
        v25[v37] = v38 + 880;
        v62 = [v15 inDeltaData];
        v63 = [v62 objectAtIndexedSubscript:1];
        v34[v37] = [v63 bytes] + 352;

        ++v37;
      }

      v64 = [v13 objectAtIndexedSubscript:2];
      v65 = [v64 isUpdatable];

      if (v65)
      {
        v25[v37] = v38 + 1408;
        v66 = [v15 inDeltaData];
        v67 = [v66 objectAtIndexedSubscript:2];
        v34[v37] = [v67 bytes] + 352;

        ++v37;
      }

      v68 = [v13 objectAtIndexedSubscript:3];
      v69 = [v68 isUpdatable];

      if (v69)
      {
        v25[v37] = v38 + 2296;
        v70 = [v15 outDeltaData];
        v71 = [v70 objectAtIndexedSubscript:0];
        v34[v37] = [v71 bytes] + 352;

        ++v37;
      }
    }

    if ([v15 hasAttnBias])
    {
      v72 = [v13 objectAtIndexedSubscript:v114];
      v73 = [v72 isUpdatable];

      if (v73)
      {
        v25[v37] = v38 + 1592;
        v74 = [v15 attnBiasDeltaData];
        v75 = [v74 objectAtIndexedSubscript:0];
        v34[v37] = [v75 bytes];

        ++v37;
      }

      v76 = [v13 objectAtIndexedSubscript:v114 | 1];
      v77 = [v76 isUpdatable];

      if (v77)
      {
        v25[v37] = v38 + 1768;
        v78 = [v15 attnBiasDeltaData];
        v79 = [v78 objectAtIndexedSubscript:1];
        v34[v37] = [v79 bytes];
      }
    }

    v114 = v34;
    v121 = v25;
    if (v122)
    {
      v80 = 0;
      v81 = 0;
      v82 = v12;
      do
      {
        v83 = v13;
        v84 = [v15 weightsMomentumDeltaDataArray];
        v85 = [v84 count];

        if (v85)
        {
          v86 = 0;
          do
          {
            v87 = [v12 objectAtIndexedSubscript:v86];
            v88 = [v87 isUpdatable];

            if (v88)
            {
              v89 = [v15 weightsMomentumDeltaDataArray];
              v90 = [v89 objectAtIndexedSubscript:v86];
              v91 = [v90 objectAtIndexedSubscript:v80];
              v92 = [v91 bytes];
              *&v123[8 * v81] = v92;

              ++v81;
              v12 = v82;
            }

            ++v86;
            v93 = [v15 weightsMomentumDeltaDataArray];
            v94 = [v93 count];
          }

          while (v86 < v94);
        }

        v95 = [v15 biasMomentumDeltaDataArray];
        v96 = [v95 count];

        if (v96)
        {
          v97 = 0;
          v13 = v83;
          do
          {
            v98 = [v13 objectAtIndexedSubscript:v97];
            v99 = [v98 isUpdatable];

            if (v99)
            {
              v100 = [v15 biasMomentumDeltaDataArray];
              v101 = [v100 objectAtIndexedSubscript:v97];
              v102 = [v101 objectAtIndexedSubscript:v80];
              v103 = [v102 bytes];
              *&v123[8 * v81] = v103;

              v13 = v83;
              ++v81;
              v12 = v82;
            }

            ++v97;
            v104 = [v15 biasMomentumDeltaDataArray];
            v105 = [v104 count];
          }

          while (v97 < v105);
        }

        else
        {
          v13 = v83;
        }

        ++v80;
      }

      while (v80 != v122);
    }

    v14 = v118;
    if (v118)
    {
      [(MLCDeviceCPU *)v120 accumulateParams:v121 gradients:v114 accumulators:v123 numOfParameters:v116 inArrayOfParams:v118];
      v11 = v119;
    }

    else
    {
      v11 = v119;
      v106 = [v119 objectAtIndexedSubscript:0];
      v107 = [v106 function];
      v108 = [v11 objectAtIndexedSubscript:0];
      v109 = [v108 optimizerAlgFields];
      v110 = [v109 bytes];
      LODWORD(v107) = MEMORY[0x23EE75D80](v107, v110, v116, v121, v114, v123, 0);

      if (v107)
      {
        v111 = +[MLCLog framework];
        if (os_log_type_enabled(v111, OS_LOG_TYPE_ERROR))
        {
          [MLCDeviceCPU(MLComputeEngineOptimizerUpdate) updateMultiheadAttentionLayer:optimizer:weightsParameter:biasesParameter:arrayOfParams:];
        }
      }
    }

    v16 = v117;
  }

  v112 = *MEMORY[0x277D85DE8];
}

- (void)updateEmbeddingLayer:(id)a3 weightsParameter:(id)a4 optimizer:(id)a5 arrayOfParams:(id)a6
{
  v67[1] = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if ([v12 isUpdatable])
  {
    v56 = self;
    v62 = v14;
    v65 = v11;
    v15 = [v11 objectAtIndexedSubscript:{0, a2}];
    v64 = v12;
    v16 = [v12 tensor];
    v17 = [v15 params];
    v67[0] = [v17 bytes];

    v63 = v13;
    v18 = [v13 objectAtIndexedSubscript:0];
    v19 = [v18 accumulatorBufferCount];

    v60 = &v55;
    v57 = v19;
    v20 = 8 * v19;
    v21 = &v55 - ((8 * v19 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v20 >= 0x200)
    {
      v22 = 512;
    }

    else
    {
      v22 = v20;
    }

    bzero(v21, v22);
    v58 = v21;
    bzero(v21, v20);
    v23 = [v15 source];
    v24 = [v23 bytes];
    v59 = v23;
    v25 = [v23 length];
    v26 = v25 >> 3;
    v27 = [v16 descriptor];
    v28 = [v27 shape];
    v29 = [v16 descriptor];
    v30 = [v28 objectAtIndexedSubscript:{objc_msgSend(v29, "dimensionCount") - 1}];
    v31 = [v30 unsignedIntegerValue];

    v32 = [v15 weightsDeltaData];
    v33 = *([v32 bytes] + 136);

    v61 = v16;
    v34 = [v16 descriptor];
    bzero(v33, [v34 tensorAllocationSizeInBytes]);

    v35 = [v15 weightsDeltaDataBytes];
    v36 = [v35 bytes];

    v37 = [v15 paddingIndex];

    if (v37)
    {
      if (v25 >= 8)
      {
        do
        {
          v38 = [v15 paddingIndex];
          v39 = [v38 longLongValue];
          v40 = *v24;

          if (v39 != v40)
          {
            MEMORY[0x23EE765F0](&v33[4 * *v24 * v31], 1, v36, 1, &v33[4 * *v24 * v31], 1, v31);
          }

          v36 += 4 * v31;
          ++v24;
          --v26;
        }

        while (v26);
      }
    }

    else if (v25 >= 8)
    {
      do
      {
        v41 = *v24++;
        MEMORY[0x23EE765F0](&v33[4 * v41 * v31], 1, v36, 1, &v33[4 * v41 * v31], 1, v31);
        v36 += 4 * v31;
        --v26;
      }

      while (v26);
    }

    v42 = [v15 weightsDeltaData];
    v66 = [v42 bytes];

    v43 = v57;
    v44 = v58;
    if (v57)
    {
      v45 = 0;
      do
      {
        v46 = [v15 weightsMomentumData];
        v47 = [v46 objectAtIndexedSubscript:v45];
        *&v44[8 * v45] = [v47 bytes];

        ++v45;
      }

      while (v43 != v45);
    }

    v14 = v62;
    v13 = v63;
    if (v62)
    {
      [(MLCDeviceCPU *)v56 accumulateParams:v67 gradients:&v66 accumulators:v44 numOfParameters:1 inArrayOfParams:v62];
      v12 = v64;
      v11 = v65;
    }

    else
    {
      v48 = [v63 objectAtIndexedSubscript:0];
      v49 = [v48 function];
      v50 = [v13 objectAtIndexedSubscript:0];
      v51 = [v50 optimizerAlgFields];
      v52 = MEMORY[0x23EE75D80](v49, [v51 bytes], 1, v67, &v66, v44, 0);

      v12 = v64;
      v11 = v65;
      if (v52)
      {
        v53 = +[MLCLog framework];
        if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
        {
          [MLCDeviceCPU(MLComputeEngineOptimizerUpdate) updateMultiheadAttentionLayer:optimizer:weightsParameter:biasesParameter:arrayOfParams:];
        }
      }
    }
  }

  v54 = *MEMORY[0x277D85DE8];
}

- (void)updateAllParametersWithOptimizer:(id)a3 arrayOfParameters:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 objectAtIndexedSubscript:0];
  v30 = [v7 bytes];

  v8 = [v6 objectAtIndexedSubscript:1];
  v29 = [v8 bytes];

  v9 = [v6 objectAtIndexedSubscript:2];
  v31 = [v9 bytes];

  v10 = [v6 objectAtIndexedSubscript:3];
  v11 = *[v10 bytes];

  v12 = [v6 objectAtIndexedSubscript:4];
  v13 = *[v12 bytes];

  if (v11 != v13)
  {
    v14 = [v5 objectAtIndexedSubscript:0];
    v15 = [v14 accumulatorBufferCount];

    if (v15 >= 2)
    {
      v16 = 8 * v11;
      v17 = (v31 + 8 * v11);
      v18 = 1;
      v19 = (v31 + 8 * v13);
      do
      {
        memmove(v19, v17, 8 * v13);
        ++v18;
        v20 = [v5 objectAtIndexedSubscript:0];
        v21 = [v20 accumulatorBufferCount];

        v17 += v16;
        v19 += 8 * v13;
      }

      while (v18 < v21);
    }
  }

  v22 = [v5 objectAtIndexedSubscript:{0, a2}];
  v23 = [v22 function];
  v24 = [v5 objectAtIndexedSubscript:0];
  v25 = [v24 optimizerAlgFields];
  LODWORD(v23) = MEMORY[0x23EE75D80](v23, [v25 bytes], v13, v30, v29, v31, 0);

  if (v23)
  {
    v26 = +[MLCLog framework];
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      [MLCDeviceCPU(MLComputeEngineOptimizerUpdate) updateAllParametersWithOptimizer:arrayOfParameters:];
    }
  }

  v27 = [v6 objectAtIndexedSubscript:4];
  *[v27 bytes] = 0;
}

- (void)updateTensorParameter:(id)a3 optimizer:(id)a4 gradient:(id)a5 arrayOfParams:(id)a6
{
  v48[1] = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if ([v11 isUpdatable])
  {
    v41 = self;
    v15 = [v11 tensor];
    v16 = [v15 optimizerDeviceData];
    v17 = [v16 objectAtIndexedSubscript:0];

    v18 = [v11 tensor];
    v19 = [v18 deviceMemory];

    v45 = v19;
    v20 = [v19 objectAtIndexedSubscript:0];
    v46 = v13;
    v43 = [v13 deviceMemory];
    v21 = [v43 objectAtIndexedSubscript:0];
    v22 = [v17 sourceBNNSDesc];
    v23 = [v22 bytes];

    v24 = [v17 gradientBNNSDesc];
    v25 = [v24 bytes];

    v44 = v20;
    *(v23 + 136) = [v20 bytes];
    *(v25 + 136) = [v21 bytes];
    v47 = v25;
    v48[0] = v23;
    v26 = [v12 objectAtIndexedSubscript:0];
    v27 = [v26 accumulatorBufferCount];

    v42 = &v40;
    v28 = &v40 - ((8 * v27 + 15) & 0xFFFFFFFFFFFFFFF0);
    if ((8 * v27) >= 0x200)
    {
      v29 = 512;
    }

    else
    {
      v29 = 8 * v27;
    }

    bzero(&v40 - ((8 * v27 + 15) & 0xFFFFFFFFFFFFFFF0), v29);
    bzero(&v40 - ((8 * v27 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * v27);
    if (v27)
    {
      for (i = 0; i != v27; ++i)
      {
        v31 = [v17 momentumData];
        v32 = [v31 objectAtIndexedSubscript:i];
        *&v28[8 * i] = [v32 bytes];
      }
    }

    if (v14)
    {
      [(MLCDeviceCPU *)v41 accumulateParams:v48 gradients:&v47 accumulators:&v40 - ((8 * v27 + 15) & 0xFFFFFFFFFFFFFFF0) numOfParameters:1 inArrayOfParams:v14];
      v13 = v46;
    }

    else
    {
      v33 = [v12 objectAtIndexedSubscript:0];
      v34 = [v33 function];
      v35 = [v12 objectAtIndexedSubscript:0];
      v36 = [v35 optimizerAlgFields];
      v37 = MEMORY[0x23EE75D80](v34, [v36 bytes], 1, v48, &v47, v28, 0);

      v13 = v46;
      if (v37)
      {
        v38 = +[MLCLog framework];
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          [MLCDeviceCPU(MLComputeEngineOptimizerUpdate) updateTensorParameter:optimizer:gradient:arrayOfParams:];
        }
      }
    }
  }

  v39 = *MEMORY[0x277D85DE8];
}

- (void)copyBiasFromBNNSToMLCTensor:(id)a3 biasTensors:(id)a4 baseGateIndex:(unint64_t)a5 lstmDescriptor:(id)a6
{
  v18 = a3;
  v21 = a4;
  v9 = a6;
  v10 = [v9 layerCount];
  v11 = [v9 hiddenSize];
  v20 = [v9 isBidirectional];
  v12 = [v18 objectAtIndexedSubscript:a5];
  if (v10)
  {
    v13 = 0;
    v19 = 4 * v10;
    do
    {
      v14 = [v21 objectAtIndexedSubscript:a5];
      v15 = [v14 data];
      memcpy([v15 bytes], (objc_msgSend(v12, "bytes") + 4 * (v13 << v20)), 4 * v11);

      if (v20)
      {
        v16 = [v21 objectAtIndexedSubscript:v19 + a5];
        v17 = [v16 data];
        memcpy([v17 bytes], (objc_msgSend(v12, "bytes") + 4 * (v13 << v20) + 4 * v11), 4 * v11);
      }

      a5 += 4;
      v13 += v11;
      --v10;
    }

    while (v10);
  }
}

- (void)synchronizeUpdatesForLayer:(id)a3
{
  v21 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v21;
    v5 = [v4 descriptor];
    if ([v5 isBidirectional])
    {
    }

    else
    {
      v6 = [v4 descriptor];
      v7 = [v6 layerCount];

      if (v7 < 2)
      {
LABEL_8:

        goto LABEL_9;
      }
    }

    v8 = [v4 deviceOps];
    v9 = [v8 objectAtIndexedSubscript:0];

    v10 = [v9 combinedGateWeightsAndBias];
    v11 = [v4 descriptor];
    v12 = [v11 usesBiases];

    if (v12)
    {
      v13 = [v4 biases];
      v14 = [v4 descriptor];
      [(MLCDeviceCPU *)self copyBiasFromBNNSToMLCTensor:v10 biasTensors:v13 baseGateIndex:0 lstmDescriptor:v14];

      v15 = [v4 biases];
      v16 = [v4 descriptor];
      [(MLCDeviceCPU *)self copyBiasFromBNNSToMLCTensor:v10 biasTensors:v15 baseGateIndex:1 lstmDescriptor:v16];

      v17 = [v4 biases];
      v18 = [v4 descriptor];
      [(MLCDeviceCPU *)self copyBiasFromBNNSToMLCTensor:v10 biasTensors:v17 baseGateIndex:2 lstmDescriptor:v18];

      v19 = [v4 biases];
      v20 = [v4 descriptor];
      [(MLCDeviceCPU *)self copyBiasFromBNNSToMLCTensor:v10 biasTensors:v19 baseGateIndex:3 lstmDescriptor:v20];
    }

    goto LABEL_8;
  }

LABEL_9:

  MEMORY[0x2821F96F8]();
}

- (void)exportBiasGateOptimizerDataForDeviceOps:(id)a3 biasTensors:(id)a4 gateIndex:(unint64_t)a5 optimizerDataIndex:(unint64_t)a6
{
  v29 = a3;
  v9 = a4;
  v10 = [v29 numLayers];
  v11 = [v29 biDirectional];
  v12 = [v29 hiddenSize];
  v13 = [v29 biasMomentumData];
  v14 = [v13 objectAtIndexedSubscript:a5 + 4 * a6];

  v28 = v14;
  v33 = [v14 bytes];
  if (v10)
  {
    v15 = 0;
    v16 = 0;
    v17 = 4 * v12;
    v32 = v11;
    v30 = v10;
    v31 = v12;
    do
    {
      v18 = 0;
      v19 = 4 * v15;
      v20 = 1;
      v34 = v16;
      do
      {
        v21 = [v9 objectAtIndexedSubscript:a5 + 4 * (v16 + v18 * v10)];
        [v21 optimizerData];
        v23 = v22 = v9;
        [v23 objectAtIndexedSubscript:a6];
        v24 = a5;
        v26 = v25 = a6;
        memcpy([v26 bytes], (*(v33 + 136) + v19), v17);

        a6 = v25;
        a5 = v24;

        v9 = v22;
        v10 = v30;

        v16 = v34;
        v15 += v31;
        v27 = v32 & v20;
        v19 += v17;
        v18 = 1;
        v20 = 0;
      }

      while ((v27 & 1) != 0);
      v16 = v34 + 1;
    }

    while (v34 + 1 != v30);
  }
}

- (void)convertUpdatesToTensorDataForLayer:(id)a3
{
  v13 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v13;
    v5 = [v4 deviceOps];
    v6 = [v5 objectAtIndexedSubscript:0];

    v7 = [v4 biases];
    v8 = v7;
    if (v7)
    {
      v9 = [v7 objectAtIndexedSubscript:0];
      v10 = [v9 optimizerData];
      v11 = [v10 count];

      if (v11)
      {
        for (i = 0; i != v11; ++i)
        {
          [(MLCDeviceCPU *)self exportBiasGateOptimizerDataForDeviceOps:v6 biasTensors:v8 gateIndex:0 optimizerDataIndex:i];
          [(MLCDeviceCPU *)self exportBiasGateOptimizerDataForDeviceOps:v6 biasTensors:v8 gateIndex:1 optimizerDataIndex:i];
          [(MLCDeviceCPU *)self exportBiasGateOptimizerDataForDeviceOps:v6 biasTensors:v8 gateIndex:2 optimizerDataIndex:i];
          [(MLCDeviceCPU *)self exportBiasGateOptimizerDataForDeviceOps:v6 biasTensors:v8 gateIndex:3 optimizerDataIndex:i];
        }
      }
    }
  }

  MEMORY[0x2821F96F8]();
}

- (void)setOptimizerLearningRate:(id)a3 learningRate:(float)a4
{
  v5 = [a3 objectAtIndexedSubscript:0];
  v7 = [v5 optimizerAlgFields];

  v6 = v7;
  *[v7 bytes] = a4;
}

- (void)setOptimizerTimeStep:(id)a3 timeStep:(unint64_t)a4
{
  v5 = [a3 objectAtIndexedSubscript:0];
  v7 = [v5 optimizerAlgFields];

  v6 = v7;
  *([v7 bytes] + 12) = a4;
}

- (void)reloadParameterDataFromHostToDeviceMemoryForTensor:(id)a3
{
  v3 = a3;
  v4 = [v3 childLayers];
  v5 = [v4 objectAtIndexedSubscript:0];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    v7 = [v6 biases];

    if (v7 && ([v6 biases], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "count"), v8, v7 = 0, v9))
    {
      while (1)
      {
        v10 = [v6 biases];
        v11 = [v10 objectAtIndexedSubscript:v7];

        v12 = v11 == v3;
        if (v11 == v3)
        {
          break;
        }

        ++v7;
        v13 = [v6 biases];
        v14 = [v13 count];

        if (v7 >= v14)
        {
          v7 = 0;
          break;
        }
      }
    }

    else
    {
      v12 = 0;
    }

    v15 = v6;
    v16 = v3;
    v17 = [v15 deviceOps];
    v18 = [v17 objectAtIndexedSubscript:0];

    v19 = [v18 params];
    v20 = [v19 bytes];
    [v18 inputSize];
    v21 = [v18 hiddenSize];
    v35 = [v18 biDirectional];
    v22 = [v18 numLayers];
    v36 = 4 * v22;
    if (v22 >= 2)
    {
      if (([v18 biDirectional] & 1) == 0)
      {
        v23 = v7 >> 2;
LABEL_15:
        v34 = v23;
        if (v12)
        {
LABEL_16:
          v24 = [v15 biases];

          if (v24)
          {
            v33 = *(v20 + 928 * (v7 & 3) + 2120);
            v25 = [v16 data];
            v26 = [v25 length];

            if (v26 != 4 * v21)
            {
              v27 = +[MLCLog framework];
              if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
              {
                [MLCDeviceCPU(MLComputeEngineOptimizerUpdate) reloadParameterDataFromHostToDeviceMemoryForTensor:v16];
              }
            }

            if (v7 >= v36)
            {
              v28 = v21;
            }

            else
            {
              v28 = 0;
            }

            v29 = (v33 + 4 * (v34 << v35) * v21 + 4 * v28);
            v30 = [v16 data];
            v31 = [v30 bytes];
            v32 = [v16 data];
            memcpy(v29, v31, [v32 length]);
          }
        }

LABEL_25:

        goto LABEL_26;
      }

      if ([v18 biDirectional])
      {
        v23 = (v7 - v36) >> 2;
        goto LABEL_15;
      }
    }

    v34 = 0;
    if (v12)
    {
      goto LABEL_16;
    }

    goto LABEL_25;
  }

LABEL_26:
}

- (void)accumulateParams:(void *)a3 gradients:(void *)a4 accumulators:(void *)a5 numOfParameters:(unint64_t)a6 inArrayOfParams:(id)a7
{
  v23 = a7;
  v10 = [v23 objectAtIndexedSubscript:0];
  v11 = [v10 bytes];

  v12 = [v23 objectAtIndexedSubscript:1];
  v13 = [v12 bytes];

  v14 = [v23 objectAtIndexedSubscript:2];
  v15 = [v14 bytes];

  v16 = [v23 objectAtIndexedSubscript:3];
  v17 = *[v16 bytes];

  v18 = [v23 objectAtIndexedSubscript:4];
  v19 = [v18 bytes];

  v20 = [v23 objectAtIndexedSubscript:5];
  v21 = *[v20 bytes];

  memcpy((v11 + 8 * *v19), a3, 8 * a6);
  memcpy((v13 + 8 * *v19), a4, 8 * a6);
  for (; v21; --v21)
  {
    memcpy((v15 + 8 * *v19), a5, 8 * a6);
    v15 += 8 * v17;
    a5 += a6;
  }

  *v19 += a6;
}

- (void)restoreRNNParamsWithDeviceOps:(id)a3 optimizer:(id)a4 inputWeightsParameter:(id)a5 hiddenWeightsParameter:(id)a6 biasesParameter:(id)a7 arrayOfParams:(id)a8
{
  v36 = a4;
  v11 = a7;
  v12 = [a3 objectAtIndexedSubscript:0];
  v13 = [v12 params];
  [v13 bytes];
  v14 = [v12 lstmDeltaParams];
  [v14 bytes];

  if ([v12 hasBias])
  {
    v15 = [v36 objectAtIndexedSubscript:0];
    v16 = [v15 accumulatorBufferCount];

    if (v11)
    {
      if ([v11 count])
      {
        if ([v11 count])
        {
          v17 = 0;
          v18 = 0;
          do
          {
            v19 = [v11 objectAtIndexedSubscript:v18];
            v20 = [v19 isUpdatable];

            v17 |= v20;
            ++v18;
          }

          while (v18 < [v11 count]);
          if (v17)
          {
            if (v16)
            {
              v21 = 3;
              do
              {
                v22 = [v12 biasMomentumData];
                v23 = [v22 objectAtIndexedSubscript:v21 - 3];
                [v23 bytes];

                v24 = [v12 biasMomentumData];
                v25 = [v24 objectAtIndexedSubscript:v21 - 2];
                [v25 bytes];

                v26 = [v12 biasMomentumData];
                v27 = [v26 objectAtIndexedSubscript:v21 - 1];
                [v27 bytes];

                v28 = [v12 biasMomentumData];
                v29 = [v28 objectAtIndexedSubscript:v21];
                [v29 bytes];

                v21 += 4;
                --v16;
              }

              while (v16);
            }

            if ([v11 count])
            {
              v30 = 0;
              v31 = 0;
              do
              {
                v32 = [v11 objectAtIndexedSubscript:v30];
                v33 = [v32 isUpdatable];

                if ((v33 & 1) == 0)
                {
                  v34 = [v12 auxBiasTerms];
                  v35 = [v12 auxBiasTermsAccumulators];
                  [(MLCDeviceCPU *)self saveOrRestoreLSTMBiasesAndAccumulators:v12 auxParameter:v34 auxAccumulators:v35 mlcIndex:v30 auxIndex:v31 saveParameter:0];

                  ++v31;
                }

                ++v30;
              }

              while (v30 < [v11 count]);
            }
          }
        }
      }
    }
  }
}

- (void)deviceMemorySizeForTensor:.cold.1()
{
  OUTLINED_FUNCTION_5_0();
  v10 = *MEMORY[0x277D85DE8];
  v2 = NSStringFromSelector(v1);
  v3 = [v0 descriptor];
  [v3 dataType];
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x12u);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)transferTensor:fromDevice:.cold.2()
{
  OUTLINED_FUNCTION_5_0();
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(v0);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)updateDeviceMemoryForTensor:(const char *)a1 .cold.1(const char *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)updateDeviceMemoryForTensor:(const char *)a1 .cold.2(const char *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);

  v6 = *MEMORY[0x277D85DE8];
}

@end