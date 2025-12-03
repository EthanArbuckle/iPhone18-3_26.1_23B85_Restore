@interface MLCDeviceCPU
- ($ADD8B2928F54472B65CB84445603561F)getGateDesc:(SEL)desc lstmParams:(unint64_t)params;
- (BOOL)compileLayerDeviceOps:(id)ops sourceTensors:(id)tensors resultTensor:(id)tensor;
- (BOOL)compileLayerDeviceOps:(id)ops sourceTensors:(id)tensors resultTensors:(id)resultTensors;
- (BOOL)needToAllocateDeviceMemoryForTensor:(id)tensor;
- (BOOL)shareDeviceMemoryWithResultTensor:(id)tensor sourceTensor:(id)sourceTensor;
- (BOOL)transferTensor:(id)tensor fromDevice:(id)device;
- (BOOL)updateDeviceMemoryForTensor:(id)tensor;
- (MLCDeviceCPU)initWithType:(int)type;
- (NSString)description;
- (id)batchNormalizationLayerWithChannelCount:(unint64_t)count mean:(id)mean variance:(id)variance beta:(id)beta gamma:(id)gamma varianceEpsilon:(float)epsilon momentum:(float)momentum;
- (id)betaGradients:(id)gradients;
- (id)biasesGradients:(id)gradients;
- (id)convolutionLayerWithDescriptor:(id)descriptor weights:(id)weights biasTerms:(id)terms;
- (id)convolutionTransposeLayerWithDescriptor:(id)descriptor weights:(id)weights biasTerms:(id)terms;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dropoutLayerWithRate:(float)rate seed:(unint64_t)seed;
- (id)embeddingWeightsGradients:(id)gradients embeddingCount:(unint64_t)count embeddingDimension:(unint64_t)dimension;
- (id)fullyConnectedLayerWithDescriptor:(id)descriptor weights:(id)weights biasTerms:(id)terms;
- (id)fusedBatchNormalizationAndNeuronLayerWithDescriptor:(id)descriptor numOfFeatureChannels:(unint64_t)channels mean:(id)mean variance:(id)variance beta:(id)beta gamma:(id)gamma varianceEpsilon:(float)epsilon momentum:(float)self0;
- (id)fusedConvolutionAndNeuronLayerWithDescriptor:(id)descriptor convolutionDescriptor:(id)convolutionDescriptor weights:(id)weights biasTerms:(id)terms;
- (id)fusedConvolutionBatchNormalizationAndNeuronLayerWithDescriptor:(id)descriptor mean:(id)mean variance:(id)variance beta:(id)beta gamma:(id)gamma varianceEpsilon:(float)epsilon momentum:(float)momentum neuronDescriptor:(id)self0 weights:(id)self1 biasTerms:(id)self2;
- (id)fusedConvolutionGroupNormalizationAndNeuronLayerWithDescriptor:(id)descriptor beta:(id)beta gamma:(id)gamma varianceEpsilon:(float)epsilon momentum:(float)momentum groupCount:(unint64_t)count neuronDescriptor:(id)neuronDescriptor weights:(id)self0 biasTerms:(id)self1;
- (id)fusedConvolutionInstanceNormalizationAndNeuronLayerWithDescriptor:(id)descriptor beta:(id)beta gamma:(id)gamma varianceEpsilon:(float)epsilon momentum:(float)momentum neuronDescriptor:(id)neuronDescriptor weights:(id)weights biasTerms:(id)self0;
- (id)fusedFullyConnectedAndNeuronLayerWithDescriptor:(id)descriptor convolutionDescriptor:(id)convolutionDescriptor weights:(id)weights biasTerms:(id)terms;
- (id)fusedFullyConnectedAndSoftmaxLayerWithDescriptor:(id)descriptor weights:(id)weights biasTerms:(id)terms softmaxOp:(int)op;
- (id)fusedFullyConnectedBatchNormalizationAndNeuronLayerWithDescriptor:(id)descriptor mean:(id)mean variance:(id)variance beta:(id)beta gamma:(id)gamma varianceEpsilon:(float)epsilon momentum:(float)momentum neuronDescriptor:(id)self0 weights:(id)self1 biasTerms:(id)self2;
- (id)fusedGroupNormalizationAndNeuronLayerWithDescriptor:(id)descriptor featureChannelCount:(unint64_t)count groupCount:(unint64_t)groupCount beta:(id)beta gamma:(id)gamma varianceEpsilon:(float)epsilon;
- (id)fusedInstanceNormalizationAndNeuronLayerWithDescriptor:(id)descriptor numOfFeatureChannels:(unint64_t)channels mean:(id)mean variance:(id)variance beta:(id)beta gamma:(id)gamma varianceEpsilon:(float)epsilon momentum:(float)self0;
- (id)gammaGradients:(id)gradients;
- (id)gatherLayerWithDimension:(unint64_t)dimension;
- (id)getHostPointerIfUnifiedDeviceMemory:(id)memory;
- (id)gramMatrixLayerWithScaleFactor:(float)factor;
- (id)groupNormalizationLayerWithFeatureChannelCount:(unint64_t)count groupCount:(unint64_t)groupCount beta:(id)beta gamma:(id)gamma varianceEpsilon:(float)epsilon;
- (id)instanceNormalizationLayerWithChannelCount:(unint64_t)count mean:(id)mean variance:(id)variance beta:(id)beta gamma:(id)gamma varianceEpsilon:(float)epsilon momentum:(float)momentum;
- (id)lstmBiasGradient:(id)gradient mlcBiasIndex:(unint64_t)index;
- (id)lstmHiddenWeightGradient:(id)gradient mlcWeightIndex:(unint64_t)index;
- (id)lstmInputWeightGradient:(id)gradient mlcWeightIndex:(unint64_t)index;
- (id)lstmLayerWithDescriptor:(id)descriptor inputWeights:(id)weights hiddenWeights:(id)hiddenWeights peepholeWeights:(id)peepholeWeights biasTerms:(id)terms gateActivations:(id)activations outputResultActivation:(id)activation inferenceOnly:(BOOL)self0;
- (id)mhaAttnBiasGradient:(id)gradient withSize:(unint64_t)size index:(unint64_t)index;
- (id)mhaBiasGradient:(id)gradient withSize:(unint64_t)size index:(unint64_t)index;
- (id)mhaWeightGradient:(id)gradient withSize:(unint64_t)size index:(unint64_t)index;
- (id)neuronLayerWithDescriptor:(id)descriptor;
- (id)poolingLayerWithDescriptor:(id)descriptor paddingSizes:(unint64_t *)sizes;
- (id)readFromDevice:(id)device deviceIndex:(unint64_t)index allocateData:(BOOL)data batchSize:(unint64_t)size;
- (id)readTensor:(id)tensor;
- (id)readTensor:(id)tensor fromDeviceIndex:(unint64_t)index;
- (id)reshapeLayerWithShape:(id)shape;
- (id)selectLayer;
- (id)sliceLayerWithbegin:(id)withbegin end:(id)end stride:(id)stride inferenceOnly:(BOOL)only;
- (id)splitLayerWithDimension:(unint64_t)dimension;
- (id)weightsGradients:(id)gradients;
- (unint64_t)deviceMemorySizeForTensor:(id)tensor;
- (unint64_t)deviceMemorySizeForTensor:(id)tensor batchSize:(unint64_t)size;
- (void)accumulateParams:(void *)params gradients:(void *)gradients accumulators:(void *)accumulators numOfParameters:(unint64_t)parameters inArrayOfParams:(id)ofParams;
- (void)allocateDeviceDataForGlobalNormClippingWithOptimizer:(id)optimizer updatableParameterCount:(unint64_t)count;
- (void)allocateDeviceMemoryForTensor:(id)tensor;
- (void)allocateParameterGradientsForDeviceOps:(id)ops parameters:(id)parameters;
- (void)allocateResultTensor:(id)tensor;
- (void)broadcastTensor:(id)tensor;
- (void)commitAndWaitForCompletion:(id)completion enableProfiling:(BOOL)profiling graphExecutionTime:(id)time graphResultTensor:(id)tensor;
- (void)commitWithCompletionHandler:(id)handler enableProfiling:(BOOL)profiling graphExecutionTime:(id)time graphResultTensor:(id)tensor;
- (void)convertUpdatesToTensorDataForLayer:(id)layer;
- (void)copyBiasFromBNNSToMLCTensor:(id)tensor biasTensors:(id)tensors baseGateIndex:(unint64_t)index lstmDescriptor:(id)descriptor;
- (void)createBNNSDesc2DForLSTMWeights:(id)weights tensorParameters:(id)parameters deviceOptimizers:(id)optimizers isInputWeight:(BOOL)weight;
- (void)deallocateDeviceMemoryForTensor:(id)tensor;
- (void)dispatchBroadcastTensor:(id)tensor;
- (void)dispatchForwardAndGradientLossLayer:(id)layer sourceTensor:(id)tensor labelsTensor:(id)labelsTensor labelsTensorStride:(unint64_t)stride weightsTensor:(id)weightsTensor resultTensor:(id)resultTensor resultGradientTensor:(id)gradientTensor;
- (void)dispatchForwardConcatLayer:(id)layer sourceTensors:(id)tensors resultTensor:(id)tensor;
- (void)dispatchForwardEmbeddingLayer:(id)layer weight:(id)weight sourceTensor:(id)tensor resultTensor:(id)resultTensor;
- (void)dispatchForwardGatherLayer:(id)layer sourceTensors:(id)tensors resultTensor:(id)tensor forTraining:(BOOL)training;
- (void)dispatchForwardLayer:(id)layer sourceTensor:(id)tensor resultTensor:(id)resultTensor resultStateIsTemporary:(BOOL)temporary forTraining:(BOOL)training;
- (void)dispatchForwardLayer:(id)layer sourceTensor:(id)tensor secondaryTensor:(id)secondaryTensor tertiaryTensor:(id)tertiaryTensor resultTensor:(id)resultTensor resultStateIsTemporary:(BOOL)temporary forTraining:(BOOL)training;
- (void)dispatchForwardLossLayer:(id)layer sourceTensor:(id)tensor labelsTensor:(id)labelsTensor labelsTensorStride:(unint64_t)stride weightsTensor:(id)weightsTensor resultTensor:(id)resultTensor resultStateIsTemporary:(BOOL)temporary forTraining:(BOOL)self0;
- (void)dispatchForwardMHALayer:(id)layer sourceTensors:(id)tensors resultTensor:(id)tensor resultStateIsTemporary:(BOOL)temporary forTraining:(BOOL)training;
- (void)dispatchForwardMatMulLayer:(id)layer sourceTensors:(id)tensors resultTensor:(id)tensor;
- (void)dispatchForwardReduceLayer:(id)layer sourceTensor:(id)tensor resultTensor:(id)resultTensor reductionType:(int)type reduceDimensions:(id)dimensions forTraining:(BOOL)training;
- (void)dispatchForwardScatterLayer:(id)layer sourceTensors:(id)tensors resultTensor:(id)tensor forTraining:(BOOL)training;
- (void)dispatchForwardSliceLayer:(id)layer sourceTensor:(id)tensor resultTensor:(id)resultTensor forTraining:(BOOL)training;
- (void)dispatchForwardSplitLayer:(id)layer sourceTensor:(id)tensor resultTensors:(id)tensors forConcat:(BOOL)concat;
- (void)dispatchGradientConcatLayer:(id)layer sourceGradientTensor:(id)tensor resultGradientTensors:(id)tensors;
- (void)dispatchGradientEmbeddingLayer:(id)layer sourceGradientTensor:(id)tensor;
- (void)dispatchGradientLayer:(id)layer sourceGradientTensor:(id)tensor resultGradientTensor:(id)gradientTensor;
- (void)dispatchGradientLayer:(id)layer sourceGradientTensor:(id)tensor resultGradientTensor:(id)gradientTensor secondaryResultGradientTensor:(id)resultGradientTensor;
- (void)dispatchGradientLossLayer:(id)layer sourceGradientTensor:(id)tensor labelsTensor:(id)labelsTensor labelsTensorStride:(unint64_t)stride weightsTensor:(id)weightsTensor resultGradientTensor:(id)gradientTensor;
- (void)dispatchGradientMHALayer:(id)layer sourceGradientTensor:(id)tensor resultGradientTensors:(id)tensors resultStateIsTemporary:(BOOL)temporary;
- (void)dispatchGradientMatMulLayer:(id)layer sourceGradientTensor:(id)tensor resultGradientTensors:(id)tensors;
- (void)dispatchGradientReduceLayer:(id)layer sourceGradientTensor:(id)tensor resultGradientTensor:(id)gradientTensor reductionType:(int)type reduceDimensions:(id)dimensions;
- (void)dispatchGradientSelectLayer:(id)layer conditionTensor:(id)tensor sourceGradientTensor:(id)gradientTensor resultGradientTensors:(id)tensors;
- (void)dispatchGradientSliceLayer:(id)layer sourceGradientTensor:(id)tensor resultGradientTensor:(id)gradientTensor;
- (void)dispatchGradientSplitLayer:(id)layer sourceGradientTensors:(id)tensors resultGradientTensor:(id)tensor forConcat:(BOOL)concat;
- (void)dispatchRNNForwardLayer:(id)layer sourceTensors:(id)tensors resultTensors:(id)resultTensors resultStateIsTemporary:(BOOL)temporary forTraining:(BOOL)training;
- (void)dispatchRNNGradientLayer:(id)layer sourceGradientTensors:(id)tensors resultGradientTensors:(id)gradientTensors;
- (void)dispatchReadTensor:(id)tensor targetBuffer:(void *)buffer batchSize:(unint64_t)size;
- (void)exportBiasGateOptimizerDataForDeviceOps:(id)ops biasTensors:(id)tensors gateIndex:(unint64_t)index optimizerDataIndex:(unint64_t)dataIndex;
- (void)identifySourceAndOrResultTensorsNeededByGradient:(id)gradient;
- (void)optimizerStepForSingleParameterLSTM:(id)m tensorParameters:(id)parameters parameterForGateDesc:(id *)desc gradientsForGateDesc:(id *)gateDesc parameterMomentumDescData:(id)data gateIndex:(unint64_t)index deviceOptimizers:(id)optimizers isStackedInputWeight:(BOOL)self0;
- (void)readTensor:(id)tensor targetBuffer:(void *)buffer;
- (void)reloadParameterDataFromHostToDeviceMemoryForTensor:(id)tensor;
- (void)restoreRNNParamsWithDeviceOps:(id)ops optimizer:(id)optimizer inputWeightsParameter:(id)parameter hiddenWeightsParameter:(id)weightsParameter biasesParameter:(id)biasesParameter arrayOfParams:(id)params;
- (void)saveOrRestoreLSTMBiasesAndAccumulators:(id)accumulators auxParameter:(id)parameter auxAccumulators:(id)auxAccumulators mlcIndex:(unint64_t)index auxIndex:(unint64_t)auxIndex saveParameter:(BOOL)saveParameter;
- (void)setConvolutionGradientComputeWeightsAndBiasOnly:(id)only;
- (void)setDeviceMemoryForTensor:(id)tensor data:(id)data;
- (void)setFullyConnectedGradientComputeWeightsAndBiasOnly:(id)only;
- (void)setOptimizerLearningRate:(id)rate learningRate:(float)learningRate;
- (void)setOptimizerTimeStep:(id)step timeStep:(unint64_t)timeStep;
- (void)shareResultTensor:(id)tensor sourceTensor:(id)sourceTensor deviceOps:(id)ops;
- (void)sumSharedGradientsForConvolutionLayerTensorParameter:(id)parameter layerIndexForSummedGradients:(unint64_t)gradients;
- (void)sumSharedGradientsForNormalizationLayerTensorParameter:(id)parameter layerIndexForSummedGradients:(unint64_t)gradients isBetaTensor:(BOOL)tensor;
- (void)synchronizeUpdatesForLayer:(id)layer;
- (void)updateAllParametersWithOptimizer:(id)optimizer arrayOfParameters:(id)parameters;
- (void)updateBatchNormalizationLayer:(id)layer optimizer:(id)optimizer betaParameter:(id)parameter gammaParameter:(id)gammaParameter meanTensor:(id)tensor varianceTensor:(id)varianceTensor arrayOfParams:(id)params;
- (void)updateEmbeddingLayer:(id)layer weightsParameter:(id)parameter optimizer:(id)optimizer arrayOfParams:(id)params;
- (void)updateFullyConnectedLayer:(id)layer optimizer:(id)optimizer weightsParameter:(id)parameter biasesParameter:(id)biasesParameter arrayOfParams:(id)params;
- (void)updateGradientDescriptorsForDeviceOps:(id)ops sourceTensors:(id)tensors resultTensor:(id)tensor;
- (void)updateMultiheadAttentionLayer:(id)layer optimizer:(id)optimizer weightsParameter:(id)parameter biasesParameter:(id)biasesParameter arrayOfParams:(id)params;
- (void)updateRNNLayer:(id)layer optimizer:(id)optimizer inputWeightsParameter:(id)parameter hiddenWeightsParameter:(id)weightsParameter biasesParameter:(id)biasesParameter arrayOfParams:(id)params;
- (void)updateTensorParameter:(id)parameter optimizer:(id)optimizer gradient:(id)gradient arrayOfParams:(id)params;
- (void)writeToAllDevices:(id)devices allocateData:(BOOL)data batchSize:(unint64_t)size;
- (void)writeToDevice:(id)device batchSize:(unint64_t)size;
- (void)writeToDevice:(id)device sourceBuffer:(void *)buffer batchSize:(unint64_t)size;
@end

@implementation MLCDeviceCPU

- (id)batchNormalizationLayerWithChannelCount:(unint64_t)count mean:(id)mean variance:(id)variance beta:(id)beta gamma:(id)gamma varianceEpsilon:(float)epsilon momentum:(float)momentum
{
  v26[1] = *MEMORY[0x277D85DE8];
  v16 = MEMORY[0x277CCABB0];
  gammaCopy = gamma;
  betaCopy = beta;
  varianceCopy = variance;
  meanCopy = mean;
  v21 = [v16 numberWithUnsignedInteger:count];
  v26[0] = v21;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:1];
  v23 = CPU_CreateNormalizationLayer(0, self, 0, v22, 1, meanCopy, varianceCopy, betaCopy, epsilon, momentum, gammaCopy);

  v24 = *MEMORY[0x277D85DE8];

  return v23;
}

- (id)fusedBatchNormalizationAndNeuronLayerWithDescriptor:(id)descriptor numOfFeatureChannels:(unint64_t)channels mean:(id)mean variance:(id)variance beta:(id)beta gamma:(id)gamma varianceEpsilon:(float)epsilon momentum:(float)self0
{
  v29[1] = *MEMORY[0x277D85DE8];
  v18 = MEMORY[0x277CCABB0];
  gammaCopy = gamma;
  betaCopy = beta;
  varianceCopy = variance;
  meanCopy = mean;
  descriptorCopy = descriptor;
  v24 = [v18 numberWithUnsignedInteger:channels];
  v29[0] = v24;
  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:1];
  v26 = CPU_CreateNormalizationLayer(0, self, descriptorCopy, v25, 1, meanCopy, varianceCopy, betaCopy, epsilon, momentum, gammaCopy);

  v27 = *MEMORY[0x277D85DE8];

  return v26;
}

- (id)instanceNormalizationLayerWithChannelCount:(unint64_t)count mean:(id)mean variance:(id)variance beta:(id)beta gamma:(id)gamma varianceEpsilon:(float)epsilon momentum:(float)momentum
{
  v26[1] = *MEMORY[0x277D85DE8];
  v16 = MEMORY[0x277CCABB0];
  gammaCopy = gamma;
  betaCopy = beta;
  varianceCopy = variance;
  meanCopy = mean;
  v21 = [v16 numberWithUnsignedInteger:count];
  v26[0] = v21;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:1];
  v23 = CPU_CreateNormalizationLayer(1, self, 0, v22, 1, meanCopy, varianceCopy, betaCopy, epsilon, momentum, gammaCopy);

  v24 = *MEMORY[0x277D85DE8];

  return v23;
}

- (id)fusedInstanceNormalizationAndNeuronLayerWithDescriptor:(id)descriptor numOfFeatureChannels:(unint64_t)channels mean:(id)mean variance:(id)variance beta:(id)beta gamma:(id)gamma varianceEpsilon:(float)epsilon momentum:(float)self0
{
  v29[1] = *MEMORY[0x277D85DE8];
  v18 = MEMORY[0x277CCABB0];
  gammaCopy = gamma;
  betaCopy = beta;
  varianceCopy = variance;
  meanCopy = mean;
  descriptorCopy = descriptor;
  v24 = [v18 numberWithUnsignedInteger:channels];
  v29[0] = v24;
  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:1];
  v26 = CPU_CreateNormalizationLayer(1, self, descriptorCopy, v25, 1, meanCopy, varianceCopy, betaCopy, epsilon, momentum, gammaCopy);

  v27 = *MEMORY[0x277D85DE8];

  return v26;
}

- (id)groupNormalizationLayerWithFeatureChannelCount:(unint64_t)count groupCount:(unint64_t)groupCount beta:(id)beta gamma:(id)gamma varianceEpsilon:(float)epsilon
{
  v20[1] = *MEMORY[0x277D85DE8];
  v12 = MEMORY[0x277CCABB0];
  gammaCopy = gamma;
  betaCopy = beta;
  v15 = [v12 numberWithUnsignedInteger:count];
  v20[0] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
  v17 = CPU_CreateNormalizationLayer(3, self, 0, v16, groupCount, 0, 0, betaCopy, epsilon, 1.0, gammaCopy);

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

- (id)fusedGroupNormalizationAndNeuronLayerWithDescriptor:(id)descriptor featureChannelCount:(unint64_t)count groupCount:(unint64_t)groupCount beta:(id)beta gamma:(id)gamma varianceEpsilon:(float)epsilon
{
  v23[1] = *MEMORY[0x277D85DE8];
  v14 = MEMORY[0x277CCABB0];
  gammaCopy = gamma;
  betaCopy = beta;
  descriptorCopy = descriptor;
  v18 = [v14 numberWithUnsignedInteger:count];
  v23[0] = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];
  v20 = CPU_CreateNormalizationLayer(3, self, descriptorCopy, v19, groupCount, 0, 0, betaCopy, epsilon, 1.0, gammaCopy);

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

- (id)convolutionLayerWithDescriptor:(id)descriptor weights:(id)weights biasTerms:(id)terms
{
  descriptorCopy = descriptor;
  weightsCopy = weights;
  termsCopy = terms;
  v11 = objc_autoreleasePoolPush();
  v12 = [_MLCCPUConvolution layerWithDevice:self weights:weightsCopy biasTerms:termsCopy convolutionDescriptor:descriptorCopy neuronDescriptor:0];
  deviceOps = [v12 deviceOps];
  v14 = [deviceOps copy];

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

- (id)fusedConvolutionAndNeuronLayerWithDescriptor:(id)descriptor convolutionDescriptor:(id)convolutionDescriptor weights:(id)weights biasTerms:(id)terms
{
  descriptorCopy = descriptor;
  convolutionDescriptorCopy = convolutionDescriptor;
  weightsCopy = weights;
  termsCopy = terms;
  v14 = objc_autoreleasePoolPush();
  v15 = [_MLCCPUConvolution layerWithDevice:self weights:weightsCopy biasTerms:termsCopy convolutionDescriptor:convolutionDescriptorCopy neuronDescriptor:descriptorCopy];
  deviceOps = [v15 deviceOps];
  v17 = [deviceOps copy];

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

- (id)fusedConvolutionBatchNormalizationAndNeuronLayerWithDescriptor:(id)descriptor mean:(id)mean variance:(id)variance beta:(id)beta gamma:(id)gamma varianceEpsilon:(float)epsilon momentum:(float)momentum neuronDescriptor:(id)self0 weights:(id)self1 biasTerms:(id)self2
{
  termsCopy = terms;
  weightsCopy = weights;
  neuronDescriptorCopy = neuronDescriptor;
  gammaCopy = gamma;
  betaCopy = beta;
  varianceCopy = variance;
  meanCopy = mean;
  descriptorCopy = descriptor;
  if ([descriptorCopy isConvolutionTranspose])
  {
    v29 = 7;
  }

  else
  {
    v29 = 6;
  }

  v30 = CPU_CreateFusedConvolutionNormalizationAndNeuronLayer(epsilon, momentum, self, weightsCopy, termsCopy, descriptorCopy, neuronDescriptorCopy, meanCopy, varianceCopy, betaCopy, gammaCopy, 0, v29);

  return v30;
}

- (id)fusedConvolutionInstanceNormalizationAndNeuronLayerWithDescriptor:(id)descriptor beta:(id)beta gamma:(id)gamma varianceEpsilon:(float)epsilon momentum:(float)momentum neuronDescriptor:(id)neuronDescriptor weights:(id)weights biasTerms:(id)self0
{
  termsCopy = terms;
  weightsCopy = weights;
  neuronDescriptorCopy = neuronDescriptor;
  gammaCopy = gamma;
  betaCopy = beta;
  descriptorCopy = descriptor;
  if ([descriptorCopy isConvolutionTranspose])
  {
    v24 = 23;
  }

  else
  {
    v24 = 22;
  }

  v25 = CPU_CreateFusedConvolutionNormalizationAndNeuronLayer(epsilon, momentum, self, weightsCopy, termsCopy, descriptorCopy, neuronDescriptorCopy, 0, 0, betaCopy, gammaCopy, 0, v24);

  return v25;
}

- (id)fusedConvolutionGroupNormalizationAndNeuronLayerWithDescriptor:(id)descriptor beta:(id)beta gamma:(id)gamma varianceEpsilon:(float)epsilon momentum:(float)momentum groupCount:(unint64_t)count neuronDescriptor:(id)neuronDescriptor weights:(id)self0 biasTerms:(id)self1
{
  termsCopy = terms;
  weightsCopy = weights;
  neuronDescriptorCopy = neuronDescriptor;
  gammaCopy = gamma;
  betaCopy = beta;
  descriptorCopy = descriptor;
  if ([descriptorCopy isConvolutionTranspose])
  {
    v26 = 36;
  }

  else
  {
    v26 = 35;
  }

  v27 = CPU_CreateFusedConvolutionNormalizationAndNeuronLayer(epsilon, momentum, self, weightsCopy, termsCopy, descriptorCopy, neuronDescriptorCopy, 0, 0, betaCopy, gammaCopy, count, v26);

  return v27;
}

- (id)convolutionTransposeLayerWithDescriptor:(id)descriptor weights:(id)weights biasTerms:(id)terms
{
  descriptorCopy = descriptor;
  weightsCopy = weights;
  termsCopy = terms;
  v11 = objc_autoreleasePoolPush();
  v12 = [_MLCCPUConvolution layerWithDevice:self weights:weightsCopy biasTerms:termsCopy convolutionDescriptor:descriptorCopy neuronDescriptor:0];
  deviceOps = [v12 deviceOps];
  v14 = [deviceOps copy];

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

- (id)dropoutLayerWithRate:(float)rate seed:(unint64_t)seed
{
  v7 = objc_autoreleasePoolPush();
  *&v8 = rate;
  v9 = [_MLCCPUDropout layerWithDevice:self rate:seed seed:v8];
  deviceOps = [v9 deviceOps];
  v11 = [deviceOps copy];

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

- (id)fullyConnectedLayerWithDescriptor:(id)descriptor weights:(id)weights biasTerms:(id)terms
{
  descriptorCopy = descriptor;
  weightsCopy = weights;
  termsCopy = terms;
  v11 = objc_autoreleasePoolPush();
  v12 = [_MLCCPUFullyConnected layerWithDevice:self weights:weightsCopy biasTerms:termsCopy convolutionDescriptor:descriptorCopy neuronDescriptor:0 opType:9];
  deviceOps = [v12 deviceOps];
  v14 = [deviceOps copy];

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

- (id)fusedFullyConnectedAndNeuronLayerWithDescriptor:(id)descriptor convolutionDescriptor:(id)convolutionDescriptor weights:(id)weights biasTerms:(id)terms
{
  descriptorCopy = descriptor;
  convolutionDescriptorCopy = convolutionDescriptor;
  weightsCopy = weights;
  termsCopy = terms;
  v14 = objc_autoreleasePoolPush();
  v15 = [_MLCCPUFullyConnected layerWithDevice:self weights:weightsCopy biasTerms:termsCopy convolutionDescriptor:convolutionDescriptorCopy neuronDescriptor:descriptorCopy opType:10];
  deviceOps = [v15 deviceOps];
  v17 = [deviceOps copy];

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

- (id)fusedFullyConnectedAndSoftmaxLayerWithDescriptor:(id)descriptor weights:(id)weights biasTerms:(id)terms softmaxOp:(int)op
{
  descriptorCopy = descriptor;
  weightsCopy = weights;
  termsCopy = terms;
  v13 = objc_autoreleasePoolPush();
  if (op)
  {
    v14 = 41;
  }

  else
  {
    v14 = 40;
  }

  v15 = [_MLCCPUFullyConnected layerWithDevice:self weights:weightsCopy biasTerms:termsCopy convolutionDescriptor:descriptorCopy neuronDescriptor:0 opType:v14];
  deviceOps = [v15 deviceOps];
  v17 = [deviceOps copy];

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

- (id)fusedFullyConnectedBatchNormalizationAndNeuronLayerWithDescriptor:(id)descriptor mean:(id)mean variance:(id)variance beta:(id)beta gamma:(id)gamma varianceEpsilon:(float)epsilon momentum:(float)momentum neuronDescriptor:(id)self0 weights:(id)self1 biasTerms:(id)self2
{
  descriptorCopy = descriptor;
  meanCopy = mean;
  varianceCopy = variance;
  betaCopy = beta;
  gammaCopy = gamma;
  neuronDescriptorCopy = neuronDescriptor;
  weightsCopy = weights;
  termsCopy = terms;
  context = objc_autoreleasePoolPush();
  LODWORD(v35) = 11;
  *&v27 = epsilon;
  *&v28 = momentum;
  v29 = [_MLCCPUFullyConnected layerWithDevice:self weights:weightsCopy biasTerms:termsCopy convolutionDescriptor:descriptorCopy neuronDescriptor:neuronDescriptorCopy fusedBatchNormAndNeuronLayers:1 mean:v27 variance:v28 beta:meanCopy gamma:varianceCopy varianceEpsilon:betaCopy momentum:gammaCopy opType:v35];
  deviceOps = [v29 deviceOps];
  v31 = [deviceOps copy];

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

- (id)neuronLayerWithDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  v5 = objc_autoreleasePoolPush();
  v6 = [_MLCCPUNeuron layerWithDevice:self descriptor:descriptorCopy];
  deviceOps = [v6 deviceOps];
  v8 = [deviceOps copy];

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

- (id)lstmLayerWithDescriptor:(id)descriptor inputWeights:(id)weights hiddenWeights:(id)hiddenWeights peepholeWeights:(id)peepholeWeights biasTerms:(id)terms gateActivations:(id)activations outputResultActivation:(id)activation inferenceOnly:(BOOL)self0
{
  descriptorCopy = descriptor;
  weightsCopy = weights;
  hiddenWeightsCopy = hiddenWeights;
  peepholeWeightsCopy = peepholeWeights;
  termsCopy = terms;
  activationsCopy = activations;
  activationCopy = activation;
  v22 = objc_autoreleasePoolPush();
  LOBYTE(v29) = only;
  v23 = [_MLCCPULSTM layerWithDevice:self lstmDescriptor:descriptorCopy inputWeights:weightsCopy hiddenWeights:hiddenWeightsCopy peepholeWeights:peepholeWeightsCopy biasTerms:termsCopy gateActivations:activationsCopy ouputResultActivation:activationCopy inferenceOnly:v29];
  deviceOps = [v23 deviceOps];
  v25 = [deviceOps copy];

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

- (id)gramMatrixLayerWithScaleFactor:(float)factor
{
  v5 = objc_autoreleasePoolPush();
  *&v6 = factor;
  v7 = [_MLCCPUGramMatrix layerWithDevice:self scale:v6];
  deviceOps = [v7 deviceOps];
  v9 = [deviceOps copy];

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

- (id)poolingLayerWithDescriptor:(id)descriptor paddingSizes:(unint64_t *)sizes
{
  descriptorCopy = descriptor;
  v6 = objc_autoreleasePoolPush();
  v7 = [_MLCCPUPooling layerWithDevice:self descriptor:descriptorCopy];
  deviceOps = [v7 deviceOps];
  v9 = [deviceOps copy];

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

- (id)reshapeLayerWithShape:(id)shape
{
  shapeCopy = shape;
  v5 = objc_autoreleasePoolPush();
  v6 = [_MLCCPUReshape layerWithDevice:self];
  deviceOps = [v6 deviceOps];
  v8 = [deviceOps copy];

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

- (id)splitLayerWithDimension:(unint64_t)dimension
{
  v5 = objc_autoreleasePoolPush();
  v6 = [_MLCCPUSplit layerWithDevice:self dimension:dimension];
  deviceOps = [v6 deviceOps];
  v8 = [deviceOps copy];

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

- (id)sliceLayerWithbegin:(id)withbegin end:(id)end stride:(id)stride inferenceOnly:(BOOL)only
{
  withbeginCopy = withbegin;
  endCopy = end;
  strideCopy = stride;
  v12 = objc_autoreleasePoolPush();
  v13 = [_MLCCPUSlice layerWithDevice:self begin:withbeginCopy end:endCopy stride:strideCopy];
  deviceOps = [v13 deviceOps];
  v15 = [deviceOps copy];

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
  deviceOps = [v4 deviceOps];
  v6 = [deviceOps copy];

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

- (id)gatherLayerWithDimension:(unint64_t)dimension
{
  v5 = objc_autoreleasePoolPush();
  v6 = [_MLCCPUGather layerWithDevice:self dimension:dimension];
  deviceOps = [v6 deviceOps];
  v8 = [deviceOps copy];

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

- (void)identifySourceAndOrResultTensorsNeededByGradient:(id)gradient
{
  v15 = [gradient objectAtIndexedSubscript:0];
  LOBYTE(params3) = 0;
  v4 = [v15 deviceOpType] - 1;
  LOBYTE(v5) = 0;
  switch(v4)
  {
    case 0:
      params = [v15 params];
      bytes = [params bytes];

      v8 = *bytes;
      if (*bytes >= 0x18)
      {
        goto LABEL_11;
      }

      LODWORD(params3) = 0xC20030u >> v8;
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
      LOBYTE(params3) = 1;
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
      LOBYTE(params3) = 1;
      goto LABEL_12;
    case 12:
      params2 = [v15 params];
      bytes2 = [params2 bytes];

      v8 = *(bytes2 + 352);
      if (v8 < 0x18)
      {
        LODWORD(params3) = 0x84001Eu >> v8;
        v9 = 8126433;
        goto LABEL_10;
      }

LABEL_11:
      LOBYTE(params3) = 0;
LABEL_12:
      LOBYTE(v5) = 1;
      break;
    case 14:
      params3 = [v15 params];
      bytes3 = [params3 bytes];

      LOBYTE(params3) = *(bytes3 + 576) == 4;
      goto LABEL_17;
    case 42:
      params4 = [v15 params];
      bytes4 = [params4 bytes];

      v8 = *(bytes4 + 528);
      if (v8 >= 0xA)
      {
        LOBYTE(params3) = 0;
        LOBYTE(v5) = 0;
      }

      else
      {
        LODWORD(params3) = 3u >> v8;
        v9 = 531;
LABEL_10:
        v5 = v9 >> v8;
      }

      break;
    default:
LABEL_17:
      LOBYTE(v5) = params3;
      break;
  }

  [v15 setSourceOfForwardNeededForGradient:v5 & 1];
  [v15 setResultOfForwardNeededForGradient:params3 & 1];
}

- (BOOL)compileLayerDeviceOps:(id)ops sourceTensors:(id)tensors resultTensors:(id)resultTensors
{
  resultTensorsCopy = resultTensors;
  v7 = [ops objectAtIndexedSubscript:0];
  deviceOpType = [v7 deviceOpType];
  if (deviceOpType == 46)
  {
    [v7 setBNNSFilter:0];
    v9 = [resultTensorsCopy objectAtIndexedSubscript:0];
    descriptor = [v9 descriptor];
    shape = [descriptor shape];
    v12 = [shape objectAtIndexedSubscript:0];
    [v7 setBatchSize:{objc_msgSend(v12, "unsignedIntegerValue")}];
  }

  return deviceOpType == 46;
}

- (BOOL)compileLayerDeviceOps:(id)ops sourceTensors:(id)tensors resultTensor:(id)tensor
{
  opsCopy = ops;
  tensorsCopy = tensors;
  tensorCopy = tensor;
  v11 = [opsCopy objectAtIndexedSubscript:0];
  filter = 0;
  v13 = 1;
  v14 = 1;
  switch([v11 deviceOpType])
  {
    case 1u:
      if ([_MLCCPUArithmetic compileWithDevice:self deviceOps:opsCopy sourceTensors:tensorsCopy resultTensor:tensorCopy])
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
      if ([_MLCCPUConvolution compileWithDevice:self deviceOps:opsCopy sourceTensors:tensorsCopy resultTensor:tensorCopy convolutionTranspose:0])
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
      v15 = CPU_CompileFusedConvolutionNormalizationAndNeuronLayer(opsCopy, tensorsCopy, tensorCopy);
      goto LABEL_17;
    case 8u:
      if ([_MLCCPUDropout compileWithDevice:self deviceOps:opsCopy sourceTensors:tensorsCopy resultTensor:tensorCopy])
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
      if ([_MLCCPUFullyConnected compileWithDevice:self deviceOps:opsCopy sourceTensors:tensorsCopy resultTensor:tensorCopy])
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
      if ([_MLCCPUFullyConnected compileWithDevice:self deviceOps:opsCopy sourceTensors:tensorsCopy resultTensor:tensorCopy fusedBatchNormAndNeuron:1])
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
      v18 = CPU_CompileLossLayer(opsCopy, tensorsCopy, tensorCopy);
      goto LABEL_32;
    case 0xDu:
      if ([_MLCCPUNeuron compileWithDevice:self deviceOps:opsCopy sourceTensors:tensorsCopy resultTensor:tensorCopy])
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
      v15 = CPU_CompilePaddingLayer(opsCopy, tensorsCopy, tensorCopy);
      goto LABEL_17;
    case 0xFu:
      if ([_MLCCPUPooling compileWithDevice:self deviceOps:opsCopy sourceTensors:tensorsCopy resultTensor:tensorCopy])
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
      if ([_MLCCPUSoftmax compileWithDevice:self deviceOps:opsCopy sourceTensors:tensorsCopy resultTensor:tensorCopy])
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
      if ([_MLCCPULSTM compileWithDevice:self deviceOps:opsCopy sourceTensors:tensorsCopy resultTensor:tensorCopy])
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
      v18 = CPU_CompileYOLOLossLayer(opsCopy, tensorsCopy, tensorCopy);
LABEL_32:
      filter = v18;
      v13 = 0;
      goto LABEL_67;
    case 0x13u:
      if ([_MLCCPUGramMatrix compileWithDevice:self deviceOps:opsCopy sourceTensors:tensorsCopy resultTensor:tensorCopy])
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
      v15 = CPU_CompileUpsampleLayer(opsCopy, tensorsCopy, tensorCopy);
      goto LABEL_17;
    case 0x19u:
    case 0x1Au:
      if ([_MLCCPUConvolution compileWithDevice:self deviceOps:opsCopy sourceTensors:tensorsCopy resultTensor:tensorCopy convolutionTranspose:1])
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
      v15 = CPU_CompileNormalizationLayer(v17, opsCopy, tensorsCopy, tensorCopy);
      goto LABEL_17;
    case 0x27u:
      v15 = CPU_CompileTransposeLayer(opsCopy, tensorsCopy, tensorCopy);
LABEL_17:
      filter = v15;
      goto LABEL_67;
    case 0x2Au:
      if ([_MLCCPUCompare compileWithDevice:self deviceOps:opsCopy sourceTensors:tensorsCopy resultTensor:tensorCopy])
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
      if ([_MLCCPUReduction compileWithDevice:self deviceOps:opsCopy sourceTensors:tensorsCopy resultTensor:tensorCopy])
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
      if (![_MLCCPUMHAttention compileWithDevice:self deviceOps:opsCopy sourceTensors:tensorsCopy resultTensor:tensorCopy])
      {
        v16 = +[MLCLog framework];
        if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_74;
        }

        goto LABEL_95;
      }

LABEL_66:
      layer = [v11 layer];
      filter = [layer filter];

LABEL_67:
      if (filter)
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
      if ([_MLCCPUMatMul compileWithDevice:self deviceOps:opsCopy sourceTensors:tensorsCopy resultTensor:tensorCopy])
      {
        layer2 = [v11 layer];
        filter = [layer2 filter];

        goto LABEL_69;
      }

      v16 = +[MLCLog framework];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [MLCDeviceCPU(MLCLayerOperations) compileLayerDeviceOps:sourceTensors:resultTensor:];
      }

      goto LABEL_74;
    case 0x30u:
      if ([_MLCCPUSlice compileWithDevice:self deviceOps:opsCopy sourceTensors:tensorsCopy resultTensor:tensorCopy])
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
      if ([_MLCCPUGather compileWithDevice:self deviceOps:opsCopy sourceTensors:tensorsCopy resultTensor:tensorCopy])
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
      if ([_MLCCPUScatter compileWithDevice:self deviceOps:opsCopy sourceTensors:tensorsCopy resultTensor:tensorCopy])
      {
LABEL_89:
        filter = 0;
LABEL_69:
        [(MLCDeviceCPU *)self identifySourceAndOrResultTensorsNeededByGradient:opsCopy];
        [v11 setBNNSFilter:filter];
        selfCopy = self;
        if (v13)
        {
          descriptor = [tensorCopy descriptor];
          shape = [descriptor shape];
          if ([shape count] == 1)
          {
            [v11 setBatchSize:1];
LABEL_80:

            layer3 = [v11 layer];
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();

            if (isKindOfClass)
            {
              descriptor2 = [tensorCopy descriptor];
              shape2 = [descriptor2 shape];
              v41 = [shape2 objectAtIndexedSubscript:0];
              [v11 setBatchSize:{objc_msgSend(v41, "unsignedIntegerValue")}];

              v42 = selfCopy;
            }

            else
            {
              v42 = selfCopy;
              if ([v11 deviceOpType] == 39)
              {
                [v11 setBatchSize:1];
              }
            }

            if ((v14 & 1) == 0)
            {
              [(MLCDeviceCPU *)v42 updateGradientDescriptorsForDeviceOps:opsCopy sourceTensors:tensorsCopy resultTensor:tensorCopy];
            }

            v24 = 1;
            goto LABEL_87;
          }

          descriptor3 = [tensorCopy descriptor];
          [descriptor3 shape];
          v26 = opsCopy;
          v28 = v27 = tensorsCopy;
          [v28 objectAtIndexedSubscript:0];
          v30 = v29 = v11;
          [v29 setBatchSize:{objc_msgSend(v30, "unsignedIntegerValue")}];

          v11 = v29;
          tensorsCopy = v27;
          opsCopy = v26;
        }

        else
        {
          descriptor = [tensorsCopy objectAtIndexedSubscript:0];
          shape = [descriptor descriptor];
          descriptor3 = [shape shape];
          if ([descriptor3 count] == 1)
          {
            [v11 setBatchSize:1];
          }

          else
          {
            [tensorsCopy objectAtIndexedSubscript:0];
            v44 = opsCopy;
            v45 = tensorCopy;
            v32 = v31 = tensorsCopy;
            [v32 descriptor];
            v34 = v33 = v11;
            shape3 = [v34 shape];
            v36 = [shape3 objectAtIndexedSubscript:0];
            [v33 setBatchSize:{objc_msgSend(v36, "unsignedIntegerValue")}];

            v11 = v33;
            tensorsCopy = v31;
            opsCopy = v44;
            tensorCopy = v45;
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

- (void)allocateDeviceDataForGlobalNormClippingWithOptimizer:(id)optimizer updatableParameterCount:(unint64_t)count
{
  optimizerCopy = optimizer;
  v5 = objc_autoreleasePoolPush();
  oneStepOptimizerBuffers = [optimizerCopy oneStepOptimizerBuffers];
  [oneStepOptimizerBuffers removeAllObjects];

  objc_autoreleasePoolPop(v5);
  v7 = [MEMORY[0x277CBEBF8] mutableCopy];
  [optimizerCopy setOneStepOptimizerBuffers:v7];

  v8 = malloc_type_malloc(8 * count, 0xFDDCFE98uLL);
  oneStepOptimizerBuffers2 = [optimizerCopy oneStepOptimizerBuffers];
  v10 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v8 length:8 * count freeWhenDone:1];
  [oneStepOptimizerBuffers2 addObject:v10];

  v11 = malloc_type_malloc(8 * count, 0x40725954uLL);
  oneStepOptimizerBuffers3 = [optimizerCopy oneStepOptimizerBuffers];
  v13 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v11 length:8 * count freeWhenDone:1];
  [oneStepOptimizerBuffers3 addObject:v13];

  v14 = malloc_type_malloc(8 * count * [optimizerCopy numOptimizerDataBuffers], 0xE6385B49uLL);
  oneStepOptimizerBuffers4 = [optimizerCopy oneStepOptimizerBuffers];
  v16 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v14 length:8 * count * objc_msgSend(optimizerCopy freeWhenDone:{"numOptimizerDataBuffers"), 1}];
  [oneStepOptimizerBuffers4 addObject:v16];

  v17 = malloc_type_malloc(8uLL, 0x100004000313F17uLL);
  *v17 = count;
  oneStepOptimizerBuffers5 = [optimizerCopy oneStepOptimizerBuffers];
  v19 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v17 length:8 freeWhenDone:1];
  [oneStepOptimizerBuffers5 addObject:v19];

  v20 = malloc_type_calloc(8uLL, 1uLL, 0xB1B26612uLL);
  oneStepOptimizerBuffers6 = [optimizerCopy oneStepOptimizerBuffers];
  v22 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v20 length:8 freeWhenDone:1];
  [oneStepOptimizerBuffers6 addObject:v22];

  v23 = malloc_type_malloc(8uLL, 0x100004000313F17uLL);
  *v23 = [optimizerCopy numOptimizerDataBuffers];
  oneStepOptimizerBuffers7 = [optimizerCopy oneStepOptimizerBuffers];
  v25 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v23 length:8 freeWhenDone:1];
  [oneStepOptimizerBuffers7 addObject:v25];
}

- (void)updateGradientDescriptorsForDeviceOps:(id)ops sourceTensors:(id)tensors resultTensor:(id)tensor
{
  v147[1] = *MEMORY[0x277D85DE8];
  tensorsCopy = tensors;
  tensorCopy = tensor;
  v9 = [ops objectAtIndexedSubscript:0];
  if ([v9 deviceOpType] == 44 || objc_msgSend(v9, "deviceOpType") == 1)
  {
    goto LABEL_28;
  }

  inDeltaData = [v9 inDeltaData];
  v11 = [inDeltaData objectAtIndexedSubscript:0];
  bytes = [v11 bytes];

  outDeltaData = [v9 outDeltaData];
  v13 = [outDeltaData objectAtIndexedSubscript:0];
  bytes2 = [v13 bytes];

  v141 = tensorsCopy;
  v142 = tensorCopy;
  v140 = bytes2;
  if ([v9 deviceOpType] != 16 && objc_msgSend(v9, "deviceOpType") != 18)
  {
    goto LABEL_10;
  }

  v15 = [tensorsCopy objectAtIndexedSubscript:0];
  descriptor = [v15 descriptor];
  shape = [descriptor shape];
  v18 = [shape count];

  if ((v18 - 1) < 2)
  {
    v27 = 1;
    goto LABEL_15;
  }

  if (v18 == 3)
  {
    v28 = [tensorsCopy objectAtIndexedSubscript:0];
    descriptor2 = [v28 descriptor];
    shape2 = [descriptor2 shape];
    v31 = [shape2 objectAtIndexedSubscript:2];
    v27 = [v31 unsignedIntegerValue] == 1;

    goto LABEL_15;
  }

  if (v18 == 4)
  {
    v19 = [tensorsCopy objectAtIndexedSubscript:0];
    descriptor3 = [v19 descriptor];
    shape3 = [descriptor3 shape];
    v22 = [shape3 objectAtIndexedSubscript:3];
    if ([v22 unsignedIntegerValue] == 1)
    {
      v23 = [tensorsCopy objectAtIndexedSubscript:0];
      descriptor4 = [v23 descriptor];
      shape4 = [descriptor4 shape];
      v26 = [shape4 objectAtIndexedSubscript:2];
      v27 = [v26 unsignedIntegerValue] == 1;

      tensorCopy = v142;
      tensorsCopy = v141;
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
    v32 = [tensorsCopy objectAtIndexedSubscript:0];
    descriptor5 = [v32 descriptor];
    shape5 = [descriptor5 shape];
    v35 = [shape5 count];

    v36 = [tensorsCopy objectAtIndexedSubscript:0];
    descriptor6 = [v36 descriptor];
    shape6 = [descriptor6 shape];
    v39 = [shape6 objectAtIndexedSubscript:v35 - 1];
    unsignedIntegerValue = [v39 unsignedIntegerValue];

    v41 = [tensorsCopy objectAtIndexedSubscript:0];
    descriptor7 = [v41 descriptor];
    stride = [descriptor7 stride];
    v137 = v35 - 1;
    v44 = [stride objectAtIndexedSubscript:v35 - 1];
    unsignedIntegerValue2 = [v44 unsignedIntegerValue];

    v143 = unsignedIntegerValue2;
    if (v35 == 4)
    {
      v46 = [tensorsCopy objectAtIndexedSubscript:0];
      descriptor8 = [v46 descriptor];
      shape7 = [descriptor8 shape];
      v49 = [shape7 objectAtIndexedSubscript:3];
      unsignedIntegerValue3 = [v49 unsignedIntegerValue];
      v51 = unsignedIntegerValue3 == 1;
      if (unsignedIntegerValue3 == 1)
      {
        v135 = unsignedIntegerValue;
        v52 = [tensorsCopy objectAtIndexedSubscript:0];
        descriptor9 = [v52 descriptor];
        shape8 = [descriptor9 shape];
        [shape8 objectAtIndexedSubscript:2];
        v56 = v55 = tensorsCopy;
        unsignedIntegerValue4 = [v56 unsignedIntegerValue];

        if (unsignedIntegerValue4 != 1)
        {
          v51 = 0;
          tensorsCopy = v55;
          unsignedIntegerValue2 = v143;
          unsignedIntegerValue = v135;
          goto LABEL_25;
        }

        v46 = [v55 objectAtIndexedSubscript:0];
        descriptor8 = [v46 descriptor];
        shape7 = [descriptor8 shape];
        v49 = [shape7 objectAtIndexedSubscript:1];
        unsignedIntegerValue = [v49 unsignedIntegerValue];
        tensorsCopy = v55;
        unsignedIntegerValue2 = v143;
      }
    }

    else
    {
      v51 = 0;
    }

LABEL_25:
    v57 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:unsignedIntegerValue];
    v147[0] = v57;
    v58 = [MEMORY[0x277CBEA60] arrayWithObjects:v147 count:1];
    v59 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:unsignedIntegerValue2];
    v146 = v59;
    v60 = [MEMORY[0x277CBEA60] arrayWithObjects:&v146 count:1];
    v61 = [tensorsCopy objectAtIndexedSubscript:0];
    descriptor10 = [v61 descriptor];
    CPU_BuildBNNSNDArrayDescriptor(bytes, v58, v60, 0, [descriptor10 dataType], v51, 0);

    tensorCopy = v142;
    descriptor11 = [v142 descriptor];
    shape9 = [descriptor11 shape];
    v65 = [shape9 objectAtIndexedSubscript:v137];
    unsignedIntegerValue5 = [v65 unsignedIntegerValue];

    if (v51)
    {
      descriptor12 = [v142 descriptor];
      shape10 = [descriptor12 shape];
      v69 = [shape10 objectAtIndexedSubscript:1];
      unsignedIntegerValue5 = [v69 unsignedIntegerValue];
    }

    v70 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:unsignedIntegerValue5];
    v145 = v70;
    v71 = [MEMORY[0x277CBEA60] arrayWithObjects:&v145 count:1];
    v72 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v143];
    v144 = v72;
    v73 = [MEMORY[0x277CBEA60] arrayWithObjects:&v144 count:1];
    descriptor13 = [v142 descriptor];
    CPU_BuildBNNSNDArrayDescriptor(v140, v71, v73, 0, [descriptor13 dataType], v51, 0);

    tensorsCopy = v141;
    v9 = v138;
    goto LABEL_28;
  }

  if ([v9 deviceOpType] == 19)
  {
    v76 = [tensorsCopy objectAtIndexedSubscript:0];
    descriptor14 = [v76 descriptor];
    shape11 = [descriptor14 shape];
    v79 = [tensorsCopy objectAtIndexedSubscript:0];
    descriptor15 = [v79 descriptor];
    stride2 = [descriptor15 stride];
    [tensorsCopy objectAtIndexedSubscript:0];
    v83 = v82 = tensorsCopy;
    descriptor16 = [v83 descriptor];
    CPU_BuildBNNSNDArrayDescriptor(bytes, shape11, stride2, 0, [descriptor16 dataType], 1, 0);

    tensorCopy = v142;
    tensorsCopy = v82;

    descriptor17 = [v142 descriptor];
    shape12 = [descriptor17 shape];
    descriptor18 = [v142 descriptor];
    stride3 = [descriptor18 stride];
    descriptor19 = [v142 descriptor];
    CPU_BuildBNNSNDArrayDescriptor(v140, shape12, stride3, 0, [descriptor19 dataType], 1, 0);

    goto LABEL_28;
  }

  if ([v9 deviceOpType] == 39)
  {
    v90 = [tensorsCopy objectAtIndexedSubscript:0];
    descriptor20 = [v90 descriptor];
    shape13 = [descriptor20 shape];
    v93 = [tensorsCopy objectAtIndexedSubscript:0];
    descriptor21 = [v93 descriptor];
    stride4 = [descriptor21 stride];
    [tensorsCopy objectAtIndexedSubscript:0];
    v97 = v96 = tensorsCopy;
    descriptor22 = [v97 descriptor];
    CPU_BuildPermuteBNNSNDArrayDescriptor(bytes, shape13, stride4, 0, [descriptor22 dataType]);

    tensorCopy = v142;
    tensorsCopy = v96;

    descriptor23 = [v142 descriptor];
    shape14 = [descriptor23 shape];
    descriptor24 = [v142 descriptor];
    stride5 = [descriptor24 stride];
    descriptor25 = [v142 descriptor];
    CPU_BuildPermuteBNNSNDArrayDescriptor(v140, shape14, stride5, 0, [descriptor25 dataType]);
LABEL_36:

    goto LABEL_28;
  }

  deviceOpType = [v9 deviceOpType];
  v105 = [tensorsCopy objectAtIndexedSubscript:0];
  descriptor26 = [v105 descriptor];
  shape15 = [descriptor26 shape];
  v108 = shape15;
  if (deviceOpType == 43)
  {
    v109 = [tensorsCopy objectAtIndexedSubscript:0];
    descriptor27 = [v109 descriptor];
    stride6 = [descriptor27 stride];
    [tensorsCopy objectAtIndexedSubscript:0];
    v113 = v112 = tensorsCopy;
    descriptor28 = [v113 descriptor];
    CPU_BuildBNNSNDArrayLastMajorDescriptor(bytes, v108, stride6, 0, [descriptor28 dataType]);

    tensorCopy = v142;
    tensorsCopy = v112;

    descriptor23 = [v142 descriptor];
    shape14 = [descriptor23 shape];
    descriptor24 = [v142 descriptor];
    stride5 = [descriptor24 stride];
    descriptor25 = [v142 descriptor];
    CPU_BuildBNNSNDArrayLastMajorDescriptor(v140, shape14, stride5, 0, [descriptor25 dataType]);
    goto LABEL_36;
  }

  v115 = [shape15 mutableCopy];

  v116 = [tensorsCopy objectAtIndexedSubscript:0];
  descriptor29 = [v116 descriptor];
  stride7 = [descriptor29 stride];
  v119 = [stride7 mutableCopy];

  deviceOpType2 = [v9 deviceOpType];
  if (deviceOpType2 <= 0x22)
  {
    if (((1 << deviceOpType2) & 0x60030000CLL) != 0)
    {
      if ([v115 count] == 2)
      {
        [v115 insertObject:&unk_284BA59D8 atIndex:2];
        v121 = [v119 objectAtIndexedSubscript:1];
        [v119 insertObject:v121 atIndex:2];
      }
    }

    else if (((1 << deviceOpType2) & 0x30000000) != 0 && [v115 count] != 4)
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

  v124 = [tensorsCopy objectAtIndexedSubscript:0];
  descriptor30 = [v124 descriptor];
  CPU_BuildBNNSNDArrayDescriptor(bytes, v115, v119, 0, [descriptor30 dataType], 1, 0);

  descriptor31 = [tensorCopy descriptor];
  shape16 = [descriptor31 shape];
  v128 = [shape16 mutableCopy];

  descriptor32 = [tensorCopy descriptor];
  stride8 = [descriptor32 stride];
  v131 = [stride8 mutableCopy];

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

  descriptor33 = [tensorCopy descriptor];
  CPU_BuildBNNSNDArrayDescriptor(v140, v128, v131, 0, [descriptor33 dataType], 1, 0);

LABEL_28:
  v75 = *MEMORY[0x277D85DE8];
}

- (void)setConvolutionGradientComputeWeightsAndBiasOnly:(id)only
{
  v3 = [only objectAtIndexedSubscript:0];
  [v3 setComputeWeightsAndBiasOnly:1];
}

- (void)setFullyConnectedGradientComputeWeightsAndBiasOnly:(id)only
{
  v3 = [only objectAtIndexedSubscript:0];
  [v3 setComputeWeightsAndBiasOnly:1];
}

- (id)weightsGradients:(id)gradients
{
  v3 = [gradients objectAtIndexedSubscript:0];
  weightsDeltaData = [v3 weightsDeltaData];
  bytes = [weightsDeltaData bytes];

  v6 = 96;
  if (*(bytes + 4) == 0x20000)
  {
    v6 = 80;
  }

  v7 = 32;
  if (*(bytes + 4) == 0x20000)
  {
    v7 = 16;
  }

  v8 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:*(bytes + 136) length:CPU_BNNSDataTypeSizeInBytes(*(bytes + 144)) * *(bytes + v7) * *(bytes + v6) freeWhenDone:0];

  return v8;
}

- (id)biasesGradients:(id)gradients
{
  v3 = [gradients objectAtIndexedSubscript:0];
  biasDeltaData = [v3 biasDeltaData];
  bytes = [biasDeltaData bytes];

  v6 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:*(bytes + 136) length:CPU_BNNSDataTypeSizeInBytes(*(bytes + 144)) * *(bytes + 8) freeWhenDone:0];

  return v6;
}

- (id)mhaWeightGradient:(id)gradient withSize:(unint64_t)size index:(unint64_t)index
{
  v7 = [gradient objectAtIndexedSubscript:0];
  v8 = v7;
  if (index > 2)
  {
    outDeltaData = [v7 outDeltaData];
    v10 = outDeltaData;
    indexCopy = 0;
  }

  else
  {
    outDeltaData = [v7 inDeltaData];
    v10 = outDeltaData;
    indexCopy = index;
  }

  v12 = [outDeltaData objectAtIndexedSubscript:indexCopy];
  v13 = *([v12 bytes] + 312);

  v14 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v13 length:size freeWhenDone:0];

  return v14;
}

- (id)mhaBiasGradient:(id)gradient withSize:(unint64_t)size index:(unint64_t)index
{
  v7 = [gradient objectAtIndexedSubscript:0];
  v8 = 0;
  if ([v7 hasBias])
  {
    if (index > 2)
    {
      outDeltaData = [v7 outDeltaData];
      v10 = outDeltaData;
      indexCopy = 0;
    }

    else
    {
      outDeltaData = [v7 inDeltaData];
      v10 = outDeltaData;
      indexCopy = index;
    }

    v12 = [outDeltaData objectAtIndexedSubscript:indexCopy];
    v13 = *([v12 bytes] + 488);

    v8 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v13 length:size freeWhenDone:0];
  }

  return v8;
}

- (id)mhaAttnBiasGradient:(id)gradient withSize:(unint64_t)size index:(unint64_t)index
{
  v7 = [gradient objectAtIndexedSubscript:0];
  v8 = 0;
  if ([v7 hasAttnBias])
  {
    attnBiasDeltaData = [v7 attnBiasDeltaData];
    v10 = [attnBiasDeltaData objectAtIndexedSubscript:index];
    bytes = [v10 bytes];

    v8 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:*(bytes + 136) length:size freeWhenDone:0];
  }

  return v8;
}

- (id)lstmInputWeightGradient:(id)gradient mlcWeightIndex:(unint64_t)index
{
  gradientCopy = gradient;
  v6 = [gradientCopy objectAtIndexedSubscript:0];
  lstmDeltaParams = [v6 lstmDeltaParams];
  bytes = [lstmDeltaParams bytes];

  biDirectional = [v6 biDirectional];
  numLayers = [v6 numLayers];
  biDirectional2 = [v6 biDirectional];
  v12 = 4 * numLayers;
  if (numLayers < 2 || (biDirectional2 & 1) != 0)
  {
    if ((biDirectional2 ^ 1))
    {
      v14 = 0;
    }

    else
    {
      v14 = (index - v12) >> 2;
    }

    if (numLayers >= 2)
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
    v13 = index >> 2;
  }

  v15 = bytes[116 * (index & 3) + 177 + 22 * (v13 != 0)];
  if (v13)
  {
    v15 += 8 * ((v13 - 1) << biDirectional);
    v16 = bytes[1];
  }

  else
  {
    v16 = *bytes;
  }

  v17 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:*(v15 + 8 * (index >= v12)) length:4 * bytes[1] * v16 freeWhenDone:0];

  return v17;
}

- (id)lstmHiddenWeightGradient:(id)gradient mlcWeightIndex:(unint64_t)index
{
  gradientCopy = gradient;
  v6 = [gradientCopy objectAtIndexedSubscript:0];
  lstmDeltaParams = [v6 lstmDeltaParams];
  bytes = [lstmDeltaParams bytes];

  biDirectional = [v6 biDirectional];
  numLayers = [v6 numLayers];
  biDirectional2 = [v6 biDirectional];
  v12 = 4 * numLayers;
  if (numLayers < 2 || (biDirectional2 & 1) != 0)
  {
    if ((biDirectional2 ^ 1))
    {
      v13 = 0;
    }

    else
    {
      v13 = (index - v12) >> 2;
    }

    if (numLayers < 2)
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = index >> 2;
  }

  v14 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:*(*(bytes + 928 * (index & 3) + 1768) + 8 * (v13 << biDirectional) + 8 * (index >= v12)) length:4 * *(bytes + 8) * *(bytes + 8) freeWhenDone:0];

  return v14;
}

- (id)lstmBiasGradient:(id)gradient mlcBiasIndex:(unint64_t)index
{
  gradientCopy = gradient;
  v6 = [gradientCopy objectAtIndexedSubscript:0];
  lstmDeltaParams = [v6 lstmDeltaParams];
  bytes = [lstmDeltaParams bytes];

  biDirectional = [v6 biDirectional];
  numLayers = [v6 numLayers];
  biDirectional2 = [v6 biDirectional];
  v12 = 4 * numLayers;
  if (numLayers < 2 || (biDirectional2 & 1) != 0)
  {
    if ((biDirectional2 ^ 1))
    {
      v13 = 0;
    }

    else
    {
      v13 = (index - v12) >> 2;
    }

    if (numLayers < 2)
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = index >> 2;
  }

  v14 = *(bytes + 8);
  v15 = v14 * (v13 << biDirectional);
  if (index >= v12)
  {
    v16 = *(bytes + 8);
  }

  else
  {
    v16 = 0;
  }

  v17 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:*(bytes + 928 * (index & 3) + 2120) + 4 * v15 + 4 * v16 length:4 * v14 freeWhenDone:0];

  return v17;
}

- (id)betaGradients:(id)gradients
{
  v3 = [gradients objectAtIndexedSubscript:0];
  betaDeltaData = [v3 betaDeltaData];
  bytes = [betaDeltaData bytes];

  v6 = *(bytes + 4);
  if (v6 == 196608)
  {
    v7 = *(bytes + 16) * *(bytes + 8) * *(bytes + 24);
  }

  else if (v6 == 0x20000)
  {
    v7 = *(bytes + 16) * *(bytes + 8);
  }

  else
  {
    v7 = 0;
    if (v6 == 0x10000)
    {
      v7 = *(bytes + 8);
    }
  }

  v8 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:*(bytes + 136) length:CPU_BNNSDataTypeSizeInBytes(*(bytes + 144)) * v7 freeWhenDone:0];

  return v8;
}

- (id)gammaGradients:(id)gradients
{
  v3 = [gradients objectAtIndexedSubscript:0];
  gammaDeltaData = [v3 gammaDeltaData];
  bytes = [gammaDeltaData bytes];

  v6 = *(bytes + 4);
  if (v6 == 196608)
  {
    v7 = *(bytes + 16) * *(bytes + 8) * *(bytes + 24);
  }

  else if (v6 == 0x20000)
  {
    v7 = *(bytes + 16) * *(bytes + 8);
  }

  else
  {
    v7 = 0;
    if (v6 == 0x10000)
    {
      v7 = *(bytes + 8);
    }
  }

  v8 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:*(bytes + 136) length:CPU_BNNSDataTypeSizeInBytes(*(bytes + 144)) * v7 freeWhenDone:0];

  return v8;
}

- (id)embeddingWeightsGradients:(id)gradients embeddingCount:(unint64_t)count embeddingDimension:(unint64_t)dimension
{
  gradientsCopy = gradients;
  v9 = [gradientsCopy objectAtIndexedSubscript:0];
  source = [v9 source];
  bytes = [source bytes];
  v11 = [source length];
  v12 = dimension * count;
  v13 = malloc_type_calloc(dimension * count, 4uLL, 0x100004052888210uLL);
  if (v13)
  {
    v14 = v13;
    v15 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v13 length:4 * v12 freeWhenDone:1];
    weightsDeltaDataBytes = [v9 weightsDeltaDataBytes];
    bytes2 = [weightsDeltaDataBytes bytes];

    if (v11 >= 8)
    {
      v31 = gradientsCopy;
      v29 = v15;
      v30 = source;
      v18 = 0;
      v19 = v11 >> 3;
      do
      {
        paddingIndex = [v9 paddingIndex];
        if (!paddingIndex || (v21 = paddingIndex, [v9 paddingIndex], v22 = objc_claimAutoreleasedReturnValue(), v23 = objc_msgSend(v22, "longLongValue"), v24 = *(bytes + 8 * v18), v22, v21, v23 != v24))
        {
          if (dimension)
          {
            v25 = 0;
            v26 = &v14[4 * *(bytes + 8 * v18) * dimension];
            do
            {
              *&v26[4 * v25] = *(bytes2 + 4 * v25) + *&v26[4 * v25];
              ++v25;
            }

            while (dimension != v25);
          }
        }

        ++v18;
        bytes2 += 4 * dimension;
      }

      while (v18 != v19);
      source = v30;
      gradientsCopy = v31;
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

- (void)allocateParameterGradientsForDeviceOps:(id)ops parameters:(id)parameters
{
  parametersCopy = parameters;
  v7 = [ops objectAtIndexedSubscript:0];
  deviceOpType = [v7 deviceOpType];
  if (deviceOpType <= 21)
  {
    if ((deviceOpType - 4) >= 4 && (deviceOpType - 9) >= 3)
    {
      if (deviceOpType == 17)
      {
        v154 = v7;
        v155 = parametersCopy;
        v18 = v7;
        params = [v18 params];
        bytes = [params bytes];
        lstmDeltaParams = [v18 lstmDeltaParams];
        bytes2 = [lstmDeltaParams bytes];
        v158 = *(bytes + 8);
        v39 = *(bytes + 44) & 1;
        v168 = *(bytes + 24);
        v157 = v168 << v39;
        if (v168 << v39)
        {
          v40 = 0;
          v41 = 0;
          v159 = *bytes;
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
              inputWeightsDeltaPointers = [v18 inputWeightsDeltaPointers];
              [inputWeightsDeltaPointers setObject:v45 atIndexedSubscript:v40];

              v47 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:malloc_type_calloc(4 * v158 * v158 length:1uLL freeWhenDone:{0x9BB016F5uLL), 4 * v158 * v158, 1}];
              hiddenWeightsDeltaPointers = [v18 hiddenWeightsDeltaPointers];
              [hiddenWeightsDeltaPointers setObject:v47 atIndexedSubscript:v40];

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
          inputWeightsDeltaPointers2 = [v18 inputWeightsDeltaPointers];
          v54 = [inputWeightsDeltaPointers2 objectAtIndexedSubscript:v49];
          *v52 = [v54 bytes];

          if (v39)
          {
            inputWeightsDeltaPointers3 = [v18 inputWeightsDeltaPointers];
            v56 = [inputWeightsDeltaPointers3 objectAtIndexedSubscript:v51 + v49];
            v52[1] = [v56 bytes];
          }

          v57 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v52 length:v50 freeWhenDone:1];
          bnnsInputWeightsDeltaPointers = [v18 bnnsInputWeightsDeltaPointers];
          [bnnsInputWeightsDeltaPointers setObject:v57 atIndexedSubscript:v49];

          ++v49;
        }

        while (v49 != 4);
        bnnsInputWeightsDeltaPointers2 = [v18 bnnsInputWeightsDeltaPointers];
        v60 = [bnnsInputWeightsDeltaPointers2 objectAtIndexedSubscript:0];
        bytes2[177] = [v60 bytes];

        bnnsInputWeightsDeltaPointers3 = [v18 bnnsInputWeightsDeltaPointers];
        v62 = [bnnsInputWeightsDeltaPointers3 objectAtIndexedSubscript:1];
        bytes2[293] = [v62 bytes];

        bnnsInputWeightsDeltaPointers4 = [v18 bnnsInputWeightsDeltaPointers];
        v64 = [bnnsInputWeightsDeltaPointers4 objectAtIndexedSubscript:2];
        bytes2[409] = [v64 bytes];

        bnnsInputWeightsDeltaPointers5 = [v18 bnnsInputWeightsDeltaPointers];
        v66 = [bnnsInputWeightsDeltaPointers5 objectAtIndexedSubscript:3];
        bytes2[525] = [v66 bytes];

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
              inputWeightsDeltaPointers4 = [v18 inputWeightsDeltaPointers];
              v74 = [inputWeightsDeltaPointers4 objectAtIndexedSubscript:v70];
              v71[v72 << v39] = [v74 bytes];

              if (v39)
              {
                inputWeightsDeltaPointers5 = [v18 inputWeightsDeltaPointers];
                v76 = [inputWeightsDeltaPointers5 objectAtIndexedSubscript:v69];
                v71[(v72 << v39) + 1] = [v76 bytes];
              }

              v69 += 4;
              ++v72;
              v70 += 4;
            }

            while (v168 - 1 != v72);
            v68 = 8 * ((v168 - 1) << v39);
            v77 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v71 length:v68 freeWhenDone:1];
            bnnsInputWeightsDeltaPointers6 = [v18 bnnsInputWeightsDeltaPointers];
            [bnnsInputWeightsDeltaPointers6 setObject:v77 atIndexedSubscript:v67 | 4];

            ++v67;
            v69 = v162 + 1;
            v70 = v160 + 1;
          }

          while (v165 != 3);
          bnnsInputWeightsDeltaPointers7 = [v18 bnnsInputWeightsDeltaPointers];
          v80 = [bnnsInputWeightsDeltaPointers7 objectAtIndexedSubscript:4];
          bytes2[199] = [v80 bytes];

          bnnsInputWeightsDeltaPointers8 = [v18 bnnsInputWeightsDeltaPointers];
          v82 = [bnnsInputWeightsDeltaPointers8 objectAtIndexedSubscript:5];
          bytes2[315] = [v82 bytes];

          bnnsInputWeightsDeltaPointers9 = [v18 bnnsInputWeightsDeltaPointers];
          v84 = [bnnsInputWeightsDeltaPointers9 objectAtIndexedSubscript:6];
          bytes2[431] = [v84 bytes];

          bnnsInputWeightsDeltaPointers10 = [v18 bnnsInputWeightsDeltaPointers];
          v86 = [bnnsInputWeightsDeltaPointers10 objectAtIndexedSubscript:7];
          bytes2[547] = [v86 bytes];

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
              hiddenWeightsDeltaPointers2 = [v18 hiddenWeightsDeltaPointers];
              v94 = [hiddenWeightsDeltaPointers2 objectAtIndexedSubscript:v91];
              v89[v90 << v39] = [v94 bytes];

              if (v39)
              {
                hiddenWeightsDeltaPointers3 = [v18 hiddenWeightsDeltaPointers];
                v96 = [hiddenWeightsDeltaPointers3 objectAtIndexedSubscript:v92];
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
          bnnsHiddenWeightsDeltaPointers = [v18 bnnsHiddenWeightsDeltaPointers];
          [bnnsHiddenWeightsDeltaPointers setObject:v97 atIndexedSubscript:v87];

          ++v87;
          ++v166;
        }

        while (v87 != 4);
        bnnsHiddenWeightsDeltaPointers2 = [v18 bnnsHiddenWeightsDeltaPointers];
        v100 = [bnnsHiddenWeightsDeltaPointers2 objectAtIndexedSubscript:0];
        bytes2[221] = [v100 bytes];

        bnnsHiddenWeightsDeltaPointers3 = [v18 bnnsHiddenWeightsDeltaPointers];
        v102 = [bnnsHiddenWeightsDeltaPointers3 objectAtIndexedSubscript:1];
        bytes2[337] = [v102 bytes];

        bnnsHiddenWeightsDeltaPointers4 = [v18 bnnsHiddenWeightsDeltaPointers];
        v104 = [bnnsHiddenWeightsDeltaPointers4 objectAtIndexedSubscript:2];
        bytes2[453] = [v104 bytes];

        bnnsHiddenWeightsDeltaPointers5 = [v18 bnnsHiddenWeightsDeltaPointers];
        v106 = [bnnsHiddenWeightsDeltaPointers5 objectAtIndexedSubscript:3];
        bytes2[569] = [v106 bytes];

        v7 = v154;
        parametersCopy = v155;
        if ([v18 hasBias])
        {
          for (i = 0; i != 4; ++i)
          {
            v108 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:malloc_type_calloc(((4 * v168) << v39) * v158 length:1uLL freeWhenDone:{0x9BB016F5uLL), ((4 * v168) << v39) * v158, 1}];
            weightAndBiasGateDeltaBuffers = [v18 weightAndBiasGateDeltaBuffers];
            [weightAndBiasGateDeltaBuffers setObject:v108 atIndexedSubscript:i];
          }

          weightAndBiasGateDeltaBuffers2 = [v18 weightAndBiasGateDeltaBuffers];
          v111 = [weightAndBiasGateDeltaBuffers2 objectAtIndexedSubscript:0];
          bytes2[265] = [v111 bytes];

          weightAndBiasGateDeltaBuffers3 = [v18 weightAndBiasGateDeltaBuffers];
          v113 = [weightAndBiasGateDeltaBuffers3 objectAtIndexedSubscript:1];
          bytes2[381] = [v113 bytes];

          weightAndBiasGateDeltaBuffers4 = [v18 weightAndBiasGateDeltaBuffers];
          v115 = [weightAndBiasGateDeltaBuffers4 objectAtIndexedSubscript:2];
          bytes2[497] = [v115 bytes];

          weightAndBiasGateDeltaBuffers5 = [v18 weightAndBiasGateDeltaBuffers];
          v117 = [weightAndBiasGateDeltaBuffers5 objectAtIndexedSubscript:3];
          bytes2[613] = [v117 bytes];
        }

        goto LABEL_55;
      }

      goto LABEL_59;
    }
  }

  else
  {
    if (deviceOpType > 0x2F)
    {
      goto LABEL_59;
    }

    if (((1 << deviceOpType) & 0x379C6C00000) == 0)
    {
      if (deviceOpType != 44)
      {
        if (deviceOpType == 47)
        {
          weightsDeltaDataBytesArray = [v7 weightsDeltaDataBytesArray];
          v10 = [weightsDeltaDataBytesArray count];

          if (!v10)
          {
            v11 = [parametersCopy objectAtIndexedSubscript:0];
            descriptor = [v11 descriptor];
            v13 = malloc_type_calloc([descriptor tensorAllocationSizeInBytes], 1uLL, 0x7187251BuLL);

            if (v13)
            {
              weightsDeltaData = [v7 weightsDeltaData];
              *([weightsDeltaData bytes] + 136) = v13;

              v15 = MEMORY[0x277CBEA90];
              v16 = [parametersCopy objectAtIndexedSubscript:0];
              descriptor2 = [v16 descriptor];
              v18 = [v15 dataWithBytesNoCopy:v13 length:objc_msgSend(descriptor2 freeWhenDone:{"tensorAllocationSizeInBytes"), 1}];

              weightsDeltaDataBytesArray2 = [v7 weightsDeltaDataBytesArray];
              [weightsDeltaDataBytesArray2 addObject:v18];

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

      biasDeltaDataBytesArray = [v7 biasDeltaDataBytesArray];
      v119 = [biasDeltaDataBytesArray count];

      if (v119)
      {
        goto LABEL_61;
      }

      if ([parametersCopy count] == 6)
      {
        v120 = 0;
        v163 = 1;
        v167 = 4;
        goto LABEL_71;
      }

      if ([parametersCopy count] == 8)
      {
        v167 = 0;
        v163 = 0;
      }

      else
      {
        if ([parametersCopy count] != 10)
        {
LABEL_61:
          v167 = 0;
          v163 = 0;
          v120 = 0;
LABEL_71:
          weightsDeltaDataBytesArray3 = [v7 weightsDeltaDataBytesArray];
          biasDeltaDataBytesArray2 = [v7 biasDeltaDataBytesArray];
          weightsDeltaDataBytesArray4 = [v7 weightsDeltaDataBytesArray];
          v123 = [weightsDeltaDataBytesArray4 count];

          if (!v123)
          {
            for (j = 0; j != 4; ++j)
            {
              v125 = v7;
              if (j == 3)
              {
                outDeltaData = [v7 outDeltaData];
                v127 = outDeltaData;
                v128 = 0;
              }

              else
              {
                outDeltaData = [v7 inDeltaData];
                v127 = outDeltaData;
                v128 = j;
              }

              v129 = [outDeltaData objectAtIndexedSubscript:v128];

              v130 = [parametersCopy objectAtIndexedSubscript:j];
              descriptor3 = [v130 descriptor];
              tensorAllocationSizeInBytes = [descriptor3 tensorAllocationSizeInBytes];

              v133 = malloc_type_malloc(tensorAllocationSizeInBytes, 0x9B703018uLL);
              v134 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v133 length:tensorAllocationSizeInBytes freeWhenDone:1];
              [weightsDeltaDataBytesArray3 addObject:v134];
              *([v129 bytes] + 312) = v133;
              if (v120)
              {
                v135 = [parametersCopy objectAtIndexedSubscript:j + 4];
                descriptor4 = [v135 descriptor];
                v137 = parametersCopy;
                tensorAllocationSizeInBytes2 = [descriptor4 tensorAllocationSizeInBytes];

                v139 = malloc_type_malloc(tensorAllocationSizeInBytes2, 0x873C0A36uLL);
                v140 = tensorAllocationSizeInBytes2;
                parametersCopy = v137;
                v141 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v139 length:v140 freeWhenDone:1];
                [biasDeltaDataBytesArray2 addObject:v141];
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
              attnBiasDeltaData = [v7 attnBiasDeltaData];
              v146 = [attnBiasDeltaData objectAtIndexedSubscript:v142];

              v167 = [parametersCopy objectAtIndexedSubscript:v142 | v167];
              descriptor5 = [v167 descriptor];
              tensorAllocationSizeInBytes3 = [descriptor5 tensorAllocationSizeInBytes];

              v150 = malloc_type_malloc(tensorAllocationSizeInBytes3, 0x219B7350uLL);
              v151 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v150 length:tensorAllocationSizeInBytes3 freeWhenDone:1];
              [biasDeltaDataBytesArray2 addObject:v151];
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

  weightsDeltaDataBytes = [v7 weightsDeltaDataBytes];

  if (!weightsDeltaDataBytes)
  {
    v21 = [parametersCopy objectAtIndexedSubscript:0];
    descriptor6 = [v21 descriptor];
    v23 = malloc_type_calloc([descriptor6 tensorAllocationSizeInBytes], 1uLL, 0xCC777CAFuLL);

    if (!v23)
    {
      v37 = +[MLCLog framework];
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        [MLCDeviceCPU(MLCLayerOperations) allocateParameterGradientsForDeviceOps:a2 parameters:?];
      }

      goto LABEL_58;
    }

    weightsDeltaData2 = [v7 weightsDeltaData];
    *([weightsDeltaData2 bytes] + 136) = v23;

    v25 = MEMORY[0x277CBEA90];
    v26 = [parametersCopy objectAtIndexedSubscript:0];
    descriptor7 = [v26 descriptor];
    v28 = [v25 dataWithBytesNoCopy:v23 length:objc_msgSend(descriptor7 freeWhenDone:{"tensorAllocationSizeInBytes"), 1}];

    [v7 setWeightsDeltaDataBytes:v28];
  }

  if ([parametersCopy count] == 2)
  {
    biasDeltaDataBytes = [v7 biasDeltaDataBytes];

    if (!biasDeltaDataBytes)
    {
      v30 = [parametersCopy objectAtIndexedSubscript:1];
      descriptor8 = [v30 descriptor];
      v32 = malloc_type_calloc([descriptor8 tensorAllocationSizeInBytes], 1uLL, 0xAB51ED69uLL);

      if (v32)
      {
        biasDeltaData = [v7 biasDeltaData];
        *([biasDeltaData bytes] + 136) = v32;

        v34 = MEMORY[0x277CBEA90];
        v35 = [parametersCopy objectAtIndexedSubscript:1];
        descriptor9 = [v35 descriptor];
        v18 = [v34 dataWithBytesNoCopy:v32 length:objc_msgSend(descriptor9 freeWhenDone:{"tensorAllocationSizeInBytes"), 1}];

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

- (void)allocateResultTensor:(id)tensor
{
  tensorCopy = tensor;
  deviceMemory = [tensorCopy deviceMemory];
  v7 = [deviceMemory count];

  if (v7)
  {
    deviceMemory2 = [tensorCopy deviceMemory];
    v9 = [deviceMemory2 count];

    if (v9 == 1)
    {
      deviceMemory3 = [tensorCopy deviceMemory];
      v11 = [deviceMemory3 objectAtIndexedSubscript:0];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
        deviceMemory4 = [tensorCopy deviceMemory];
        v14 = [deviceMemory4 objectAtIndexedSubscript:0];
        objc_opt_class();
        v15 = objc_opt_isKindOfClass();

        if (v15)
        {
          v16 = [(MLCDeviceCPU *)self deviceMemorySizeForTensor:tensorCopy];
          v17 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:malloc_type_malloc(v16 length:0x2BC0A111uLL) freeWhenDone:{v16, 1}];
          deviceMemory5 = [tensorCopy deviceMemory];
          [deviceMemory5 addObject:v17];

          [tensorCopy setDeviceIndex:1];
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
    [(MLCDeviceCPU *)self allocateDeviceMemoryForTensor:tensorCopy];
  }
}

- (void)shareResultTensor:(id)tensor sourceTensor:(id)sourceTensor deviceOps:(id)ops
{
  tensorCopy = tensor;
  sourceTensorCopy = sourceTensor;
  deviceMemory = [tensorCopy deviceMemory];
  v9 = [deviceMemory count];

  if (v9)
  {
    v10 = CPU_GetDeviceMemoryData(tensorCopy);
    v11 = CPU_GetDeviceMemoryData(sourceTensorCopy);

    if (v10 != v11)
    {
      v12 = CPU_GetDeviceMemoryData(sourceTensorCopy);
      v13 = CPU_GetDeviceMemoryData(tensorCopy);
      memcpy([v13 bytes], objc_msgSend(v12, "bytes"), objc_msgSend(v12, "length"));
    }
  }

  else
  {
    [(MLCDeviceCPU *)self shareDeviceMemoryWithResultTensor:tensorCopy sourceTensor:sourceTensorCopy];
  }
}

- (void)dispatchForwardSplitLayer:(id)layer sourceTensor:(id)tensor resultTensors:(id)tensors forConcat:(BOOL)concat
{
  concatCopy = concat;
  v60 = a2;
  tensorCopy = tensor;
  tensorsCopy = tensors;
  v64 = [layer objectAtIndexedSubscript:0];
  memset(&src, 0, sizeof(src));
  memset(&dest, 0, sizeof(dest));
  if ([tensorsCopy count])
  {
    v9 = 0;
    v61 = tensorsCopy;
    while (1)
    {
      v10 = [tensorsCopy objectAtIndexedSubscript:{v9, v60}];
      [(MLCDeviceCPU *)self allocateResultTensor:v10];

      v11 = [tensorsCopy objectAtIndexedSubscript:v9];
      descriptor = [v11 descriptor];
      shape = [descriptor shape];
      descriptor2 = [tensorCopy descriptor];
      stride = [descriptor2 stride];
      descriptor3 = [tensorCopy descriptor];
      CPU_BuildBNNSNDArrayDescriptor(&src, shape, stride, 0, [descriptor3 dataType], 1, 0);

      v17 = [tensorsCopy objectAtIndexedSubscript:v9];
      v18 = v17;
      if (concatCopy)
      {
        BNNSConcatLayerTensorDataOffset = getBNNSConcatLayerTensorDataOffset(v17);
      }

      else
      {
        BNNSConcatLayerTensorDataOffset = getBNNSSplitLayerTensorDataOffset(v17);
      }

      v20 = BNNSConcatLayerTensorDataOffset;

      v21 = CPU_GetDeviceMemoryData(tensorCopy);
      src.data = ([v21 bytes] + v20);

      tensorsCopy = v61;
      v22 = [v61 objectAtIndexedSubscript:v9];
      descriptor4 = [v22 descriptor];
      shape2 = [descriptor4 shape];
      v25 = [v61 objectAtIndexedSubscript:v9];
      descriptor5 = [v25 descriptor];
      stride2 = [descriptor5 stride];
      v28 = [v61 objectAtIndexedSubscript:v9];
      descriptor6 = [v28 descriptor];
      CPU_BuildBNNSNDArrayDescriptor(&dest, shape2, stride2, 0, [descriptor6 dataType], 1, 0);

      v30 = [v61 objectAtIndexedSubscript:v9];
      v31 = CPU_GetDeviceMemoryData(v30);
      dest.data = [v31 bytes];

      descriptor7 = [tensorCopy descriptor];
      dataType = [descriptor7 dataType];

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
      batchSize = [v64 batchSize];
      v38 = [v61 objectAtIndexedSubscript:v9];
      descriptor8 = [v38 descriptor];
      shape3 = [descriptor8 shape];
      v41 = [shape3 objectAtIndexedSubscript:0];
      unsignedIntegerValue = [v41 unsignedIntegerValue];

      if (batchSize > unsignedIntegerValue)
      {
        v43 = [v61 objectAtIndexedSubscript:v9];
        descriptor9 = [v43 descriptor];
        shape4 = [descriptor9 shape];
        v46 = [shape4 objectAtIndexedSubscript:0];
        batchSize = [v46 unsignedIntegerValue];
      }

      v47 = layout == BNNSDataLayoutVector;
      v48 = layout == BNNSDataLayoutVector ? 16 : 32;
      *(&src.flags + v48) = batchSize;
      v49 = v47 ? 80 : 96;
      descriptor10 = [tensorCopy descriptor];
      stride3 = [descriptor10 stride];
      v52 = [stride3 objectAtIndexedSubscript:0];
      unsignedIntegerValue2 = [v52 unsignedIntegerValue];
      v54 = dataType == 1 ? 2 : dataType == 3;
      *(&src.flags + v49) = unsignedIntegerValue2 >> v54;

      *(&dest.flags + v48) = batchSize;
      v55 = [v61 objectAtIndexedSubscript:v9];
      descriptor11 = [v55 descriptor];
      stride4 = [descriptor11 stride];
      v58 = [stride4 objectAtIndexedSubscript:0];
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

- (void)dispatchForwardSliceLayer:(id)layer sourceTensor:(id)tensor resultTensor:(id)resultTensor forTraining:(BOOL)training
{
  resultTensorCopy = resultTensor;
  tensorCopy = tensor;
  layerCopy = layer;
  [(MLCDeviceCPU *)self allocateResultTensor:resultTensorCopy];
  v12 = [layerCopy objectAtIndexedSubscript:0];

  v13 = CPU_GetDeviceMemoryData(tensorCopy);

  v14 = CPU_GetDeviceMemoryData(resultTensorCopy);

  inDeltaData = [v12 inDeltaData];
  v16 = [inDeltaData objectAtIndexedSubscript:0];
  bytes = [v16 bytes];

  outDeltaData = [v12 outDeltaData];
  v19 = [outDeltaData objectAtIndexedSubscript:0];
  bytes2 = [v19 bytes];

  beginOffset = [v12 beginOffset];
  bytes->data = ([v13 bytes] + beginOffset);
  bytes2->data = [v14 bytes];
  if (BNNSCopy(bytes2, bytes, 0))
  {
    v22 = +[MLCLog framework];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [MLCDeviceCPU(MLCEngineDispatch) dispatchForwardSliceLayer:sourceTensor:resultTensor:forTraining:];
    }
  }
}

- (void)dispatchGradientSliceLayer:(id)layer sourceGradientTensor:(id)tensor resultGradientTensor:(id)gradientTensor
{
  gradientTensorCopy = gradientTensor;
  tensorCopy = tensor;
  layerCopy = layer;
  [(MLCDeviceCPU *)self allocateResultTensor:gradientTensorCopy];
  v11 = [layerCopy objectAtIndexedSubscript:0];

  v12 = CPU_GetDeviceMemoryData(tensorCopy);

  v13 = CPU_GetDeviceMemoryData(gradientTensorCopy);

  bzero([v13 bytes], objc_msgSend(v13, "length"));
  inDeltaData = [v11 inDeltaData];
  v15 = [inDeltaData objectAtIndexedSubscript:0];
  bytes = [v15 bytes];

  outDeltaData = [v11 outDeltaData];
  v18 = [outDeltaData objectAtIndexedSubscript:0];
  bytes2 = [v18 bytes];

  bytes2->data = [v12 bytes];
  beginOffset = [v11 beginOffset];
  bytes->data = ([v13 bytes] + beginOffset);
  if (BNNSCopy(bytes, bytes2, 0))
  {
    v21 = +[MLCLog framework];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [MLCDeviceCPU(MLCEngineDispatch) dispatchForwardSliceLayer:sourceTensor:resultTensor:forTraining:];
    }
  }
}

- (void)dispatchGradientSplitLayer:(id)layer sourceGradientTensors:(id)tensors resultGradientTensor:(id)tensor forConcat:(BOOL)concat
{
  concatCopy = concat;
  tensorsCopy = tensors;
  tensorCopy = tensor;
  v65 = [layer objectAtIndexedSubscript:0];
  memset(&src, 0, sizeof(src));
  memset(&dest, 0, sizeof(dest));
  v66 = tensorCopy;
  [(MLCDeviceCPU *)self allocateResultTensor:tensorCopy];
  if ([tensorsCopy count])
  {
    v11 = 0;
    while (1)
    {
      v12 = [tensorsCopy objectAtIndexedSubscript:v11];
      deviceMemory = [v12 deviceMemory];
      v14 = [deviceMemory count];

      if (v14)
      {
        v15 = [tensorsCopy objectAtIndexedSubscript:v11];
        descriptor = [v15 descriptor];
        shape = [descriptor shape];
        v18 = [tensorsCopy objectAtIndexedSubscript:v11];
        descriptor2 = [v18 descriptor];
        stride = [descriptor2 stride];
        v21 = [tensorsCopy objectAtIndexedSubscript:v11];
        descriptor3 = [v21 descriptor];
        CPU_BuildBNNSNDArrayDescriptor(&src, shape, stride, 0, [descriptor3 dataType], 1, 0);

        v23 = [tensorsCopy objectAtIndexedSubscript:v11];
        v24 = CPU_GetDeviceMemoryData(v23);
        src.data = [v24 bytes];

        v25 = [tensorsCopy objectAtIndexedSubscript:v11];
        descriptor4 = [v25 descriptor];
        shape2 = [descriptor4 shape];
        descriptor5 = [v66 descriptor];
        stride2 = [descriptor5 stride];
        descriptor6 = [v66 descriptor];
        CPU_BuildBNNSNDArrayDescriptor(&dest, shape2, stride2, 0, [descriptor6 dataType], 1, 0);

        v31 = [tensorsCopy objectAtIndexedSubscript:v11];
        v32 = v31;
        if (concatCopy)
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

        descriptor7 = [v66 descriptor];
        dataType = [descriptor7 dataType];

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
        batchSize = [v65 batchSize];
        v42 = [tensorsCopy objectAtIndexedSubscript:v11];
        descriptor8 = [v42 descriptor];
        shape3 = [descriptor8 shape];
        v45 = [shape3 objectAtIndexedSubscript:0];
        unsignedIntegerValue = [v45 unsignedIntegerValue];

        if (batchSize > unsignedIntegerValue)
        {
          v47 = [tensorsCopy objectAtIndexedSubscript:v11];
          descriptor9 = [v47 descriptor];
          shape4 = [descriptor9 shape];
          v50 = [shape4 objectAtIndexedSubscript:0];
          batchSize = [v50 unsignedIntegerValue];
        }

        v51 = layout == BNNSDataLayoutVector;
        v52 = layout == BNNSDataLayoutVector ? 16 : 32;
        *(&src.flags + v52) = batchSize;
        v53 = v51 ? 80 : 96;
        v54 = [tensorsCopy objectAtIndexedSubscript:v11];
        descriptor10 = [v54 descriptor];
        stride3 = [descriptor10 stride];
        v57 = [stride3 objectAtIndexedSubscript:0];
        unsignedIntegerValue2 = [v57 unsignedIntegerValue];
        v59 = dataType == 1 ? 2 : dataType == 3;
        *(&src.flags + v53) = unsignedIntegerValue2 >> v59;

        *(&dest.flags + v52) = batchSize;
        descriptor11 = [v66 descriptor];
        stride4 = [descriptor11 stride];
        v62 = [stride4 objectAtIndexedSubscript:0];
        *(&dest.flags + v53) = [v62 unsignedIntegerValue] >> v59;

        if (BNNSCopy(&dest, &src, 0))
        {
          break;
        }
      }

      if (++v11 >= [tensorsCopy count])
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

- (void)dispatchForwardConcatLayer:(id)layer sourceTensors:(id)tensors resultTensor:(id)tensor
{
  v17[1] = *MEMORY[0x277D85DE8];
  layerCopy = layer;
  tensorsCopy = tensors;
  tensorCopy = tensor;
  v11 = [tensorsCopy objectAtIndexedSubscript:0];
  concatDimension = [v11 concatDimension];

  if (concatDimension == 1)
  {
    if ([tensorsCopy count])
    {
      v13 = 0;
      do
      {
        v14 = [tensorsCopy objectAtIndexedSubscript:v13];
        v17[0] = v14;
        v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
        [(MLCDeviceCPU *)self dispatchGradientSplitLayer:layerCopy sourceGradientTensors:v15 resultGradientTensor:tensorCopy forConcat:1];

        ++v13;
      }

      while (v13 < [tensorsCopy count]);
    }
  }

  else
  {
    [(MLCDeviceCPU *)self dispatchGradientSplitLayer:layerCopy sourceGradientTensors:tensorsCopy resultGradientTensor:tensorCopy forConcat:1];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)dispatchGradientConcatLayer:(id)layer sourceGradientTensor:(id)tensor resultGradientTensors:(id)tensors
{
  v17[1] = *MEMORY[0x277D85DE8];
  layerCopy = layer;
  tensorCopy = tensor;
  tensorsCopy = tensors;
  v11 = [tensorsCopy objectAtIndexedSubscript:0];
  concatDimension = [v11 concatDimension];

  if (concatDimension == 1)
  {
    if ([tensorsCopy count])
    {
      v13 = 0;
      do
      {
        v14 = [tensorsCopy objectAtIndexedSubscript:v13];
        v17[0] = v14;
        v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
        [(MLCDeviceCPU *)self dispatchForwardSplitLayer:layerCopy sourceTensor:tensorCopy resultTensors:v15 forConcat:1];

        ++v13;
      }

      while (v13 < [tensorsCopy count]);
    }
  }

  else
  {
    [(MLCDeviceCPU *)self dispatchForwardSplitLayer:layerCopy sourceTensor:tensorCopy resultTensors:tensorsCopy forConcat:1];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)dispatchForwardMatMulLayer:(id)layer sourceTensors:(id)tensors resultTensor:(id)tensor
{
  tensorsCopy = tensors;
  tensorCopy = tensor;
  layerCopy = layer;
  v11 = [tensorsCopy objectAtIndexedSubscript:0];
  v12 = [tensorsCopy objectAtIndexedSubscript:1];
  [(MLCDeviceCPU *)self allocateResultTensor:tensorCopy];
  v13 = [layerCopy objectAtIndexedSubscript:0];

  v29 = v11;
  v14 = CPU_GetDeviceMemoryData(v11);
  v15 = CPU_GetDeviceMemoryData(v12);
  v16 = CPU_GetDeviceMemoryData(tensorCopy);

  if ([tensorsCopy count] == 3)
  {
    v17 = [tensorsCopy objectAtIndexedSubscript:2];
    v18 = CPU_GetDeviceMemoryData(v17);

    [tensorsCopy objectAtIndexedSubscript:2];
    bytes = [v18 bytes];
    fusedPrimitiveParams = [v13 fusedPrimitiveParams];
    *([fusedPrimitiveParams bytes] + 312) = bytes;

    bytes2 = [v16 bytes];
    params = [v13 params];
    *([params bytes] + 504) = bytes2;

    params2 = [v13 params];
    bytes3 = [params2 bytes];
    fusedPrimitiveParams2 = [v13 fusedPrimitiveParams];
    LODWORD(bytes3) = BNNSCopy((bytes3 + 368), ([fusedPrimitiveParams2 bytes] + 176), 0);

    if (bytes3)
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

- (void)dispatchForwardEmbeddingLayer:(id)layer weight:(id)weight sourceTensor:(id)tensor resultTensor:(id)resultTensor
{
  layerCopy = layer;
  weightCopy = weight;
  tensorCopy = tensor;
  resultTensorCopy = resultTensor;
  [(MLCDeviceCPU *)self allocateResultTensor:resultTensorCopy];
  v55 = layerCopy;
  v48 = [layerCopy objectAtIndexedSubscript:0];
  v14 = CPU_GetDeviceMemoryData(tensorCopy);
  [v48 setSource:v14];
  v51 = v14;
  bytes = [v14 bytes];
  data = [weightCopy data];
  bytes2 = [data bytes];
  v52 = resultTensorCopy;
  v49 = CPU_GetDeviceMemoryData(resultTensorCopy);
  bytes3 = [v49 bytes];
  descriptor = [weightCopy descriptor];
  shape = [descriptor shape];
  v54 = weightCopy;
  descriptor2 = [weightCopy descriptor];
  v21 = [shape objectAtIndexedSubscript:{objc_msgSend(descriptor2, "dimensionCount") - 1}];
  unsignedIntegerValue = [v21 unsignedIntegerValue];

  __N = unsignedIntegerValue;
  descriptor3 = [tensorCopy descriptor];
  tensorAllocationSizeInBytes = [descriptor3 tensorAllocationSizeInBytes];
  v53 = tensorCopy;
  descriptor4 = [tensorCopy descriptor];
  v26 = +[MLCTensorDescriptor elementByteCount:](MLCTensorDescriptor, "elementByteCount:", [descriptor4 dataType]);
  v27 = tensorAllocationSizeInBytes / v26;

  embeddingParams = [v48 embeddingParams];

  if (embeddingParams)
  {
    embeddingParams2 = [v48 embeddingParams];
    v30 = [embeddingParams2 objectAtIndexedSubscript:0];
    [v30 floatValue];
    v32 = v31;

    embeddingParams3 = [v48 embeddingParams];
    v34 = [embeddingParams3 objectAtIndexedSubscript:1];
    [v34 floatValue];
    v36 = v35;
    v58 = v35;

    if (v36 == INFINITY)
    {
      if (v26 <= tensorAllocationSizeInBytes)
      {
        v37 = 0;
        do
        {
          __C = 0.0;
          v38 = (bytes2 + 4 * unsignedIntegerValue * *(bytes + 8 * v37));
          vDSP_maxmgv(v38, 1, &__C, unsignedIntegerValue);
          if (__C > (v32 + 0.00001))
          {
            v56 = v32 / __C;
            MEMORY[0x23EE76610](v38, 1, &v56, v38, 1, unsignedIntegerValue);
          }

          memcpy(bytes3, v38, 4 * unsignedIntegerValue);
          ++v37;
          bytes3 += 4 * unsignedIntegerValue;
        }

        while (v37 < v27);
      }
    }

    else if (v36 == 1.0)
    {
      if (v26 <= tensorAllocationSizeInBytes)
      {
        v40 = 0;
        do
        {
          __C = 0.0;
          v41 = (bytes2 + 4 * unsignedIntegerValue * *(bytes + 8 * v40));
          vDSP_svemg(v41, 1, &__C, unsignedIntegerValue);
          if (__C > (v32 + 0.00001))
          {
            v56 = v32 / __C;
            MEMORY[0x23EE76610](v41, 1, &v56, v41, 1, unsignedIntegerValue);
          }

          memcpy(bytes3, v41, 4 * unsignedIntegerValue);
          ++v40;
          bytes3 += 4 * unsignedIntegerValue;
        }

        while (v40 < v27);
      }
    }

    else if (v36 == 2.0)
    {
      if (v26 <= tensorAllocationSizeInBytes)
      {
        v42 = 0;
        do
        {
          __C = 0.0;
          v43 = (bytes2 + 4 * unsignedIntegerValue * *(bytes + 8 * v42));
          vDSP_svesq(v43, 1, &__C, unsignedIntegerValue);
          v44 = sqrtf(__C);
          __C = v44;
          if (v44 > (v32 + 0.00001))
          {
            v56 = v32 / v44;
            MEMORY[0x23EE76610](v43, 1, &v56, v43, 1, unsignedIntegerValue);
          }

          memcpy(bytes3, v43, 4 * unsignedIntegerValue);
          ++v42;
          bytes3 += 4 * unsignedIntegerValue;
        }

        while (v42 < v27);
      }
    }

    else if (v26 <= tensorAllocationSizeInBytes)
    {
      v45 = 0;
      do
      {
        __C = 0.0;
        v46 = (bytes2 + 4 * unsignedIntegerValue * *(bytes + 8 * v45));
        memcpy(bytes3, v46, 4 * unsignedIntegerValue);
        vDSP_vabs(bytes3, 1, bytes3, 1, unsignedIntegerValue);
        vvpowsf(bytes3, &v58, bytes3, &__N);
        vDSP_sve(bytes3, 1, &__C, __N);
        v47 = powf(__C, 1.0 / v58);
        __C = v47;
        if (v47 > (v32 + 0.00001))
        {
          v56 = v32 / v47;
          MEMORY[0x23EE76610](v46, 1, &v56, v46, 1, __N);
        }

        unsignedIntegerValue = __N;
        memcpy(bytes3, v46, 4 * __N);
        bytes3 += 4 * unsignedIntegerValue;
        ++v45;
      }

      while (v45 < v27);
    }
  }

  else if (v26 <= tensorAllocationSizeInBytes)
  {
    v39 = 0;
    do
    {
      memcpy(bytes3, (bytes2 + 4 * unsignedIntegerValue * *(bytes + 8 * v39++)), 4 * unsignedIntegerValue);
      bytes3 += 4 * unsignedIntegerValue;
    }

    while (v39 < v27);
  }
}

- (void)dispatchForwardMHALayer:(id)layer sourceTensors:(id)tensors resultTensor:(id)tensor resultStateIsTemporary:(BOOL)temporary forTraining:(BOOL)training
{
  trainingCopy = training;
  tensorsCopy = tensors;
  tensorCopy = tensor;
  layerCopy = layer;
  [(MLCDeviceCPU *)self allocateResultTensor:tensorCopy];
  v14 = [tensorsCopy objectAtIndexedSubscript:0];
  attnMask2 = CPU_GetDeviceMemoryData(v14);

  v16 = [tensorsCopy objectAtIndexedSubscript:1];
  v17 = CPU_GetDeviceMemoryData(v16);

  v18 = [tensorsCopy objectAtIndexedSubscript:2];
  v19 = CPU_GetDeviceMemoryData(v18);

  v59 = CPU_GetDeviceMemoryData(tensorCopy);

  [tensorsCopy objectAtIndexedSubscript:0];
  [tensorsCopy objectAtIndexedSubscript:1];

  [tensorsCopy objectAtIndexedSubscript:2];
  v20 = [layerCopy objectAtIndexedSubscript:0];

  bNNSFilter = [v20 BNNSFilter];
  if ([v20 hasKeyMask])
  {
    v21 = [tensorsCopy objectAtIndexedSubscript:3];
    v22 = CPU_GetDeviceMemoryData(v21);

    keyMask = [v20 keyMask];
    bytes = [keyMask bytes];

    *(bytes + 136) = [v22 bytes];
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
    v26 = [tensorsCopy objectAtIndexedSubscript:v25];
    v27 = CPU_GetDeviceMemoryData(v26);

    attnMask = [v20 attnMask];
    bytes2 = [attnMask bytes];

    *(bytes2 + 136) = [v27 bytes];
  }

  workspace_size = 0;
  backprop_cache_size[0] = 0;
  if (trainingCopy)
  {
    if (BNNSApplyMultiheadAttention(bNNSFilter, [v20 batchSize], objc_msgSend(attnMask2, "bytes"), 0, objc_msgSend(v17, "bytes"), 0, 0, 0, objc_msgSend(v19, "bytes"), 0, objc_msgSend(v59, "bytes"), 0, 0, backprop_cache_size, 0, &workspace_size, 0))
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

  batchSize = [v20 batchSize];
  bytes3 = [attnMask2 bytes];
  sourceStride = [v20 sourceStride];
  v53 = v17;
  bytes4 = [v17 bytes];
  sourceStrideSecondary = [v20 sourceStrideSecondary];
  hasKeyMask = [v20 hasKeyMask];
  v55 = tensorsCopy;
  v52 = trainingCopy;
  if (hasKeyMask)
  {
    keyMask2 = [v20 keyMask];
    bytes5 = [keyMask2 bytes];
  }

  else
  {
    bytes5 = 0;
  }

  v54 = attnMask2;
  keyMaskStride = [v20 keyMaskStride];
  v33 = v19;
  value = [v19 bytes];
  value_stride = [v20 sourceStrideTertiary];
  bytes6 = [v59 bytes];
  output_stride = [v20 resultStride];
  hasAttnMask = [v20 hasAttnMask];
  if (hasAttnMask)
  {
    attnMask2 = [v20 attnMask];
    bytes7 = [attnMask2 bytes];
  }

  else
  {
    bytes7 = 0;
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

  v42 = BNNSApplyMultiheadAttention(bNNSFilter, batchSize, bytes3, sourceStride, bytes4, sourceStrideSecondary, bytes5, keyMaskStride, value, value_stride, bytes6, output_stride, bytes7, v40, v58, p_workspace_size, v57);
  if (hasAttnMask)
  {
  }

  if (hasKeyMask)
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

- (void)dispatchForwardLayer:(id)layer sourceTensor:(id)tensor resultTensor:(id)resultTensor resultStateIsTemporary:(BOOL)temporary forTraining:(BOOL)training
{
  trainingCopy = training;
  tensorCopy = tensor;
  resultTensorCopy = resultTensor;
  v13 = [layer objectAtIndexedSubscript:0];
  [(MLCDeviceCPU *)self allocateResultTensor:resultTensorCopy];
  v14 = CPU_GetDeviceMemoryData(tensorCopy);
  v15 = CPU_GetDeviceMemoryData(resultTensorCopy);
  bNNSFilter = [v13 BNNSFilter];
  batchSize = [v13 batchSize];
  deviceOpType = [v13 deviceOpType];
  if (deviceOpType <= 0x29)
  {
    if (((1 << deviceOpType) & 0x36100000E00) != 0)
    {
      v19 = adjustBatchSizeForFC(tensorCopy, batchSize);
LABEL_4:
      [v13 setBatchSize:v19];
      goto LABEL_5;
    }

    if (deviceOpType == 39)
    {
      v19 = 1;
      goto LABEL_4;
    }
  }

LABEL_5:
  training = trainingCopy;
  v72 = v15;
  if ([v13 isFusedBNNSFilter])
  {
    v20 = v15;
    batchSize2 = [v13 batchSize];
    bytes = [v14 bytes];
    v23 = v14;
    v24 = resultTensorCopy;
    v25 = tensorCopy;
    v26 = batchSize;
    sourceStride = [v13 sourceStride];
    bytes2 = [v20 bytes];
    resultStride = [v13 resultStride];
    v30 = sourceStride;
    batchSize = v26;
    tensorCopy = v25;
    resultTensorCopy = v24;
    v14 = v23;
    v31 = bytes2;
    trainingCopy4 = training;
    v33 = BNNSFusedFilterApplyBatch(bNNSFilter, batchSize2, bytes, v30, v31, resultStride, training);
    goto LABEL_10;
  }

  deviceOpType2 = [v13 deviceOpType];
  if (deviceOpType2 > 0x22)
  {
    goto LABEL_25;
  }

  if (((1 << deviceOpType2) & 0x63030000CLL) == 0)
  {
    if (deviceOpType2 == 15 && trainingCopy)
    {
      params = [v13 params];
      bytes3 = [params bytes];

      if (!*(bytes3 + 576))
      {
        poolingIndicesBuffer = [v13 poolingIndicesBuffer];

        if (!poolingIndicesBuffer)
        {
          descriptor = [resultTensorCopy descriptor];
          v52 = 2 * ([descriptor tensorAllocationSizeInBytes] & 0x1FFFFFFFFFFFFFFFLL);

          v53 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:malloc_type_calloc(v52 length:1uLL freeWhenDone:{0x6573C90BuLL), v52, 1}];
          [v13 setPoolingIndicesBuffer:v53];
        }
      }

      batchSize3 = [v13 batchSize];
      bytes4 = [v14 bytes];
      in_stride = [v13 sourceStride];
      bytes5 = [v15 bytes];
      resultStride2 = [v13 resultStride];
      poolingIndicesBuffer2 = [v13 poolingIndicesBuffer];
      v58 = BNNSPoolingFilterApplyBatch(bNNSFilter, batchSize3, bytes4, in_stride, bytes5, resultStride2, [poolingIndicesBuffer2 bytes], objc_msgSend(v13, "resultStride"));

LABEL_26:
      trainingCopy4 = training;
      if (!v58)
      {
        goto LABEL_14;
      }

      goto LABEL_11;
    }

LABEL_25:
    batchSize4 = [v13 batchSize];
    bytes6 = [v14 bytes];
    v61 = v14;
    v62 = resultTensorCopy;
    v63 = tensorCopy;
    v64 = batchSize;
    v65 = bNNSFilter;
    sourceStride2 = [v13 sourceStride];
    bytes7 = [v15 bytes];
    resultStride3 = [v13 resultStride];
    v69 = v65;
    batchSize = v64;
    tensorCopy = v63;
    resultTensorCopy = v62;
    v14 = v61;
    v58 = BNNSFilterApplyBatch(v69, batchSize4, bytes6, sourceStride2, bytes7, resultStride3);
    goto LABEL_26;
  }

  batchSize5 = [v13 batchSize];
  bytes8 = [v14 bytes];
  v37 = v14;
  v38 = resultTensorCopy;
  v39 = tensorCopy;
  v40 = batchSize;
  v41 = bNNSFilter;
  sourceStride3 = [v13 sourceStride];
  bytes9 = [v15 bytes];
  resultStride4 = [v13 resultStride];
  v45 = v41;
  batchSize = v40;
  tensorCopy = v39;
  resultTensorCopy = v38;
  v14 = v37;
  v46 = batchSize5;
  trainingCopy4 = training;
  v33 = BNNSNormalizationFilterApplyBatch(v45, v46, bytes8, sourceStride3, bytes9, resultStride4, training);
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
  [v13 setBatchSize:{batchSize, in_stride}];
  if (trainingCopy4)
  {
    [v13 setSource:v14];
    [v13 setResult:v72];
    [v13 setSourceDataOffset:0];
    [v13 setResultDataOffset:0];
  }
}

- (void)dispatchForwardLayer:(id)layer sourceTensor:(id)tensor secondaryTensor:(id)secondaryTensor tertiaryTensor:(id)tertiaryTensor resultTensor:(id)resultTensor resultStateIsTemporary:(BOOL)temporary forTraining:(BOOL)training
{
  v36 = *MEMORY[0x277D85DE8];
  secondaryTensorCopy = secondaryTensor;
  resultTensorCopy = resultTensor;
  tensorCopy = tensor;
  v16 = [layer objectAtIndexedSubscript:0];
  bNNSFilter = [v16 BNNSFilter];
  [(MLCDeviceCPU *)self allocateResultTensor:resultTensorCopy];
  v18 = CPU_GetDeviceMemoryData(tensorCopy);

  v19 = CPU_GetDeviceMemoryData(resultTensorCopy);

  in = [v18 bytes];
  bytes = 0;
  in_stride = [v16 sourceStride];
  sourceStrideSecondary = 0;
  v20 = 0;
  if ([v16 binaryOperation])
  {
    v20 = CPU_GetDeviceMemoryData(secondaryTensorCopy);
    bytes = [v20 bytes];
    sourceStrideSecondary = [v16 sourceStrideSecondary];
    if (training)
    {
      [v16 setSecondarySource:v20];
      [v16 setSecondarySourceDataOffset:0];
    }
  }

  deviceOpType = [v16 deviceOpType];
  if (deviceOpType == 1)
  {
    batchSize = [v16 batchSize];
    if ([v16 binaryOperation])
    {
      v28 = 2;
    }

    else
    {
      v28 = 1;
    }

    v26 = BNNSArithmeticFilterApplyBatch(bNNSFilter, batchSize, v28, &in, &in_stride, [v19 bytes], objc_msgSend(v16, "resultStride"));
  }

  else
  {
    if (deviceOpType != 42)
    {
      goto LABEL_18;
    }

    params = [v16 params];
    bytes2 = [params bytes];

    v24 = *bytes2;
    *(bytes2 + 144) = [v18 bytes];
    *(bytes2 + 320) = [v20 bytes];
    *(bytes2 + 496) = [v19 bytes];
    if ([v16 binaryOperation])
    {
      v25 = (bytes2 + 184);
    }

    else
    {
      v25 = (bytes2 + 8);
    }

    v26 = BNNSCompareTensor((bytes2 + 8), v25, v24, (bytes2 + 360));
  }

  if (v26)
  {
LABEL_18:
    v30 = +[MLCLog framework];
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      [MLCDeviceCPU(MLCEngineDispatch) dispatchForwardLayer:sourceTensor:resultTensor:resultStateIsTemporary:forTraining:];
    }

    if (training)
    {
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  if (training)
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

- (void)dispatchForwardLossLayer:(id)layer sourceTensor:(id)tensor labelsTensor:(id)labelsTensor labelsTensorStride:(unint64_t)stride weightsTensor:(id)weightsTensor resultTensor:(id)resultTensor resultStateIsTemporary:(BOOL)temporary forTraining:(BOOL)self0
{
  resultTensorCopy = resultTensor;
  weightsTensorCopy = weightsTensor;
  labelsTensorCopy = labelsTensor;
  tensorCopy = tensor;
  layerCopy = layer;
  [(MLCDeviceCPU *)self allocateResultTensor:resultTensorCopy];
  v20 = [layerCopy objectAtIndexedSubscript:0];

  v21 = CPU_GetDeviceMemoryData(tensorCopy);

  v30 = CPU_GetDeviceMemoryData(resultTensorCopy);

  v22 = CPU_GetDeviceMemoryData(labelsTensorCopy);

  v23 = CPU_GetDeviceMemoryData(weightsTensorCopy);

  [v20 lossWeight];
  v25 = v24;
  v31 = v24;
  if ([v23 bytes])
  {
    bytes = [v23 bytes];
    v27 = [v23 length] >> 2;
  }

  else
  {
    v27 = v25 != 1.0;
    if (v25 == 1.0)
    {
      bytes = 0;
    }

    else
    {
      bytes = &v31;
    }
  }

  if (BNNSLossFilterApplyBatch([v20 BNNSFilter], objc_msgSend(v20, "batchSize"), objc_msgSend(v21, "bytes"), objc_msgSend(v20, "sourceStride"), objc_msgSend(v22, "bytes"), stride, bytes, v27, objc_msgSend(v30, "bytes"), 0, 0))
  {
    v28 = +[MLCLog framework];
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      [MLCDeviceCPU(MLCEngineDispatch) dispatchForwardLossLayer:sourceTensor:labelsTensor:labelsTensorStride:weightsTensor:resultTensor:resultStateIsTemporary:forTraining:];
    }
  }

  if (training)
  {
    [v20 setSource:v21];
    [v20 setSourceDataOffset:0];
  }
}

- (void)dispatchGradientLayer:(id)layer sourceGradientTensor:(id)tensor resultGradientTensor:(id)gradientTensor
{
  v72[4] = *MEMORY[0x277D85DE8];
  tensorCopy = tensor;
  gradientTensorCopy = gradientTensor;
  v10 = [layer objectAtIndexedSubscript:0];
  [(MLCDeviceCPU *)self allocateResultTensor:gradientTensorCopy];
  deviceMemory = [tensorCopy deviceMemory];
  deviceMemory2 = [gradientTensorCopy deviceMemory];

  batchSize = [v10 batchSize];
  deviceOpType = [v10 deviceOpType];
  if (deviceOpType <= 0x29)
  {
    if (((1 << deviceOpType) & 0x36100000E00) != 0)
    {
      v15 = adjustBatchSizeForFC(tensorCopy, batchSize);
LABEL_4:
      [v10 setBatchSize:v15];
      goto LABEL_5;
    }

    if (deviceOpType == 39)
    {
      v15 = 1;
      goto LABEL_4;
    }
  }

LABEL_5:
  v68 = batchSize;
  inDeltaData = [v10 inDeltaData];
  v17 = [inDeltaData objectAtIndexedSubscript:0];
  bytes = [v17 bytes];

  outDeltaData = [v10 outDeltaData];
  v20 = [outDeltaData objectAtIndexedSubscript:0];
  out_delta = [v20 bytes];

  v22 = [deviceMemory2 objectAtIndexedSubscript:0];
  bytes->data = [v22 bytes];

  v23 = [deviceMemory objectAtIndexedSubscript:0];
  out_delta->data = [v23 bytes];

  out = 0;
  if ([v10 resultOfForwardNeededForGradient])
  {
    result = [v10 result];
    resultDataOffset = [v10 resultDataOffset];
    out = ([result bytes] + resultDataOffset);
  }

  if ([v10 sourceOfForwardNeededForGradient])
  {
    source = [v10 source];
    sourceDataOffset = [v10 sourceDataOffset];
    v28 = ([source bytes] + sourceDataOffset);
  }

  else
  {
    v28 = 0;
  }

  v69 = deviceMemory2;
  v70 = deviceMemory;
  if ([v10 isFusedBNNSFilter])
  {
    weightsDeltaData = [v10 weightsDeltaData];
    v72[0] = [weightsDeltaData bytes];
    biasDeltaData = [v10 biasDeltaData];
    v72[1] = [biasDeltaData bytes];
    betaDeltaData = [v10 betaDeltaData];
    v72[2] = [betaDeltaData bytes];
    gammaDeltaData = [v10 gammaDeltaData];
    v72[3] = [gammaDeltaData bytes];

    bNNSFilter = [v10 BNNSFilter];
    batchSize2 = [v10 batchSize];
    sourceStride = [v10 sourceStride];
    if ([v10 computeWeightsAndBiasOnly])
    {
      v36 = 0;
    }

    else
    {
      v36 = bytes;
    }

    v37 = BNNSFusedFilterApplyBackwardBatch(bNNSFilter, batchSize2, v28, sourceStride, v36, [v10 sourceStride], out, objc_msgSend(v10, "resultStride"), out_delta, objc_msgSend(v10, "resultStride"), v72);
  }

  else
  {
    v67 = tensorCopy;
    if ([v10 deviceOpType] == 2 || objc_msgSend(v10, "deviceOpType") == 3 || objc_msgSend(v10, "deviceOpType") == 20 || objc_msgSend(v10, "deviceOpType") == 21 || objc_msgSend(v10, "deviceOpType") == 28 || objc_msgSend(v10, "deviceOpType") == 29 || objc_msgSend(v10, "deviceOpType") == 33 || objc_msgSend(v10, "deviceOpType") == 34)
    {
      bNNSFilter2 = [v10 BNNSFilter];
      batch_sizea = [v10 batchSize];
      sourceStride2 = [v10 sourceStride];
      resultStride = [v10 resultStride];
      resultStride2 = [v10 resultStride];
      betaDeltaData2 = [v10 betaDeltaData];
      bytes2 = [betaDeltaData2 bytes];
      [v10 gammaDeltaData];
      v45 = v44 = out_delta;
      v37 = BNNSNormalizationFilterApplyBackwardBatch(bNNSFilter2, batch_sizea, bytes, sourceStride2, out, resultStride, v44, resultStride2, bytes2, [v45 bytes]);
    }

    else
    {
      deviceOpType2 = [v10 deviceOpType];
      bNNSFilter3 = [v10 BNNSFilter];
      batch_size = [v10 batchSize];
      sourceStride3 = [v10 sourceStride];
      if (deviceOpType2 == 15)
      {
        sourceStride4 = [v10 sourceStride];
        resultStride3 = [v10 resultStride];
        out_delta_stride = [v10 resultStride];
        poolingIndicesBuffer = [v10 poolingIndicesBuffer];
        v37 = BNNSPoolingFilterApplyBackwardBatch(bNNSFilter3, batch_size, v28, sourceStride3, bytes, sourceStride4, out, resultStride3, out_delta, out_delta_stride, 0, [poolingIndicesBuffer bytes], objc_msgSend(v10, "resultStride"));
      }

      else
      {
        if ([v10 computeWeightsAndBiasOnly])
        {
          v54 = 0;
        }

        else
        {
          v54 = bytes;
        }

        in_delta = v54;
        sourceStride5 = [v10 sourceStride];
        resultStride4 = [v10 resultStride];
        resultStride5 = [v10 resultStride];
        weightsDeltaData2 = [v10 weightsDeltaData];
        v59 = bNNSFilter3;
        v60 = out_delta;
        weights_delta = [weightsDeltaData2 bytes];
        biasDeltaData2 = [v10 biasDeltaData];
        v37 = BNNSFilterApplyBackwardBatch(v59, batch_size, v28, sourceStride3, in_delta, sourceStride5, out, resultStride4, v60, resultStride5, weights_delta, [biasDeltaData2 bytes]);
      }
    }

    tensorCopy = v67;
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

- (void)dispatchGradientMatMulLayer:(id)layer sourceGradientTensor:(id)tensor resultGradientTensors:(id)tensors
{
  v68 = *MEMORY[0x277D85DE8];
  layerCopy = layer;
  tensorCopy = tensor;
  tensorsCopy = tensors;
  v11 = [tensorsCopy objectAtIndexedSubscript:0];
  v12 = [tensorsCopy objectAtIndexedSubscript:1];
  v62 = layerCopy;
  v13 = [layerCopy objectAtIndexedSubscript:0];
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v14 = tensorsCopy;
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

  v61 = tensorCopy;
  deviceMemory = [tensorCopy deviceMemory];
  v20 = [deviceMemory objectAtIndexedSubscript:0];

  v60 = v11;
  deviceMemory2 = [v11 deviceMemory];
  v22 = [deviceMemory2 objectAtIndexedSubscript:0];

  deviceMemory3 = [v12 deviceMemory];
  v24 = [deviceMemory3 objectAtIndexedSubscript:0];

  inDeltaData = [v13 inDeltaData];
  v26 = [inDeltaData objectAtIndexedSubscript:0];
  bytes = [v26 bytes];

  v58 = v22;
  v56 = bytes;
  *(bytes + 136) = [v22 bytes];
  inDeltaData2 = [v13 inDeltaData];
  v29 = [inDeltaData2 objectAtIndexedSubscript:1];
  bytes2 = [v29 bytes];

  v57 = v24;
  inB_delta = bytes2;
  *(bytes2 + 136) = [v24 bytes];
  outDeltaData = [v13 outDeltaData];
  v32 = [outDeltaData objectAtIndexedSubscript:0];
  out_delta = [v32 bytes];

  v59 = v20;
  out_delta->data = [v20 bytes];
  if ([v14 count] == 3)
  {
    v34 = [v14 objectAtIndexedSubscript:2];
    deviceMemory4 = [v34 deviceMemory];
    v36 = [deviceMemory4 objectAtIndexedSubscript:0];

    [v14 objectAtIndexedSubscript:2];
    layer = [v13 layer];
    LODWORD(v34) = BNNSFilterApply([layer secondaryFilter], out_delta->data, objc_msgSend(v36, "bytes"));

    if (v34)
    {
      v38 = +[MLCLog framework];
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        [MLCDeviceCPU(MLCEngineDispatch) dispatchGradientMatMulLayer:sourceGradientTensor:resultGradientTensors:];
      }
    }
  }

  bNNSFilter = [v13 BNNSFilter];
  source = [v13 source];
  sourceDataOffset = [v13 sourceDataOffset];
  bytes3 = [source bytes];
  inA_stride = [v13 sourceStride];
  sourceStride = [v13 sourceStride];
  secondarySource = [v13 secondarySource];
  secondarySourceDataOffset = [v13 secondarySourceDataOffset];
  bytes4 = [secondarySource bytes];
  sourceStrideSecondary = [v13 sourceStrideSecondary];
  v41 = v12;
  inB_delta_stride = [v13 sourceStrideSecondary];
  result = [v13 result];
  v44 = BNNSFilterApplyBackwardTwoInputBatch(bNNSFilter, 1uLL, (bytes3 + sourceDataOffset), inA_stride, v56, sourceStride, (bytes4 + secondarySourceDataOffset), sourceStrideSecondary, inB_delta, inB_delta_stride, ([result bytes] + objc_msgSend(v13, "resultDataOffset")), objc_msgSend(v13, "resultStride"), out_delta, objc_msgSend(v13, "resultStride"), 0, 0);

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

- (void)dispatchGradientLayer:(id)layer sourceGradientTensor:(id)tensor resultGradientTensor:(id)gradientTensor secondaryResultGradientTensor:(id)resultGradientTensor
{
  v62 = *MEMORY[0x277D85DE8];
  layerCopy = layer;
  tensorCopy = tensor;
  gradientTensorCopy = gradientTensor;
  resultGradientTensorCopy = resultGradientTensor;
  v14 = [layerCopy objectAtIndexedSubscript:0];
  if (![v14 binaryOperation] || !objc_msgSend(v14, "useSourceGradientDeviceMemoryForSecondaryResultGradientTensor") || !objc_msgSend(v14, "useSourceGradientDeviceMemoryForResultGradientTensor"))
  {
    if (gradientTensorCopy)
    {
      [(MLCDeviceCPU *)self allocateResultTensor:gradientTensorCopy];
    }

    v54 = layerCopy;
    if (resultGradientTensorCopy)
    {
      [(MLCDeviceCPU *)self allocateResultTensor:resultGradientTensorCopy];
    }

    deviceMemory = [tensorCopy deviceMemory];
    deviceMemory2 = [gradientTensorCopy deviceMemory];
    deviceMemory3 = [resultGradientTensorCopy deviceMemory];
    inDeltaData = [v14 inDeltaData];
    v19 = [inDeltaData objectAtIndexedSubscript:0];
    bytes = [v19 bytes];

    v21 = [deviceMemory2 objectAtIndexedSubscript:0];
    bytes->data = [v21 bytes];

    outDeltaData = [v14 outDeltaData];
    v23 = [outDeltaData objectAtIndexedSubscript:0];
    out_delta = [v23 bytes];

    v52 = deviceMemory;
    v25 = [deviceMemory objectAtIndexedSubscript:0];
    out_delta->data = [v25 bytes];

    in = 0;
    v61 = 0;
    in_delta_stride = [v14 sourceStride];
    sourceStrideSecondary = 0;
    in_delta = bytes;
    v57 = 0;
    v53 = tensorCopy;
    if ([v14 binaryOperation])
    {
      source = [v14 source];
      sourceDataOffset = [v14 sourceDataOffset];
      v28 = ([source bytes] + sourceDataOffset);

      if ([v14 sourceOfForwardNeededForGradient])
      {
        in = v28;
      }

      inDeltaData2 = [v14 inDeltaData];
      v30 = [inDeltaData2 objectAtIndexedSubscript:1];
      bytes2 = [v30 bytes];

      v32 = [deviceMemory3 objectAtIndexedSubscript:0];
      *(bytes2 + 136) = [v32 bytes];

      secondarySource = [v14 secondarySource];
      secondarySourceDataOffset = [v14 secondarySourceDataOffset];
      v35 = ([secondarySource bytes] + secondarySourceDataOffset);

      if ([v14 sourceOfForwardNeededForGradient])
      {
        v61 = v35;
      }

      sourceStrideSecondary = [v14 sourceStrideSecondary];
      if (v28 == v35)
      {
        v36 = bytes;
      }

      else
      {
        v36 = bytes2;
      }

      v57 = v36;
      params = [v14 params];
      bytes3 = [params bytes];

      v39 = *(bytes3 + 8);
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
      result = [v14 result];
      resultDataOffset = [v14 resultDataOffset];
      v40 = ([result bytes] + resultDataOffset);
    }

    else
    {
      source2 = [v14 source];
      sourceDataOffset2 = [v14 sourceDataOffset];
      v45 = ([source2 bytes] + sourceDataOffset2);

      v40 = 0;
      in = v45;
    }

    if ([v14 deviceOpType] == 1)
    {
      bNNSFilter = [v14 BNNSFilter];
      batchSize = [v14 batchSize];
      if ([v14 binaryOperation])
      {
        v48 = 2;
      }

      else
      {
        v48 = 1;
      }

      v49 = BNNSArithmeticFilterApplyBackwardBatch(bNNSFilter, batchSize, v48, &in, &in_delta_stride, &in_delta, &in_delta_stride, v40, [v14 resultStride], out_delta, objc_msgSend(v14, "resultStride"));
      tensorCopy = v53;
      layerCopy = v54;
      if (!v49)
      {
LABEL_35:

        goto LABEL_36;
      }
    }

    else
    {
      tensorCopy = v53;
      layerCopy = v54;
    }

    v50 = +[MLCLog framework];
    if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
    {
      [MLCDeviceCPU(MLCEngineDispatch) dispatchGradientLayer:sourceGradientTensor:resultGradientTensor:];
    }

    goto LABEL_35;
  }

  v15 = objc_autoreleasePoolPush();
  [(MLCDeviceCPU *)self shareDeviceMemoryWithResultTensor:gradientTensorCopy sourceTensor:tensorCopy];
  [(MLCDeviceCPU *)self shareDeviceMemoryWithResultTensor:resultGradientTensorCopy sourceTensor:tensorCopy];
  objc_autoreleasePoolPop(v15);
LABEL_36:

  v51 = *MEMORY[0x277D85DE8];
}

- (void)dispatchGradientMHALayer:(id)layer sourceGradientTensor:(id)tensor resultGradientTensors:(id)tensors resultStateIsTemporary:(BOOL)temporary
{
  tensorCopy = tensor;
  tensorsCopy = tensors;
  v11 = [layer objectAtIndexedSubscript:0];
  for (i = 0; i != 3; ++i)
  {
    v13 = [tensorsCopy objectAtIndexedSubscript:i];
    [(MLCDeviceCPU *)self allocateResultTensor:v13];
  }

  v79 = tensorCopy;
  deviceMemory = [tensorCopy deviceMemory];
  v14 = [deviceMemory objectAtIndexedSubscript:0];
  bytes = [v14 bytes];
  outDeltaData = [v11 outDeltaData];
  v17 = [outDeltaData objectAtIndexedSubscript:0];
  *([v17 bytes] + 136) = bytes;

  for (j = 0; j != 3; ++j)
  {
    v19 = [tensorsCopy objectAtIndexedSubscript:j];
    deviceMemory2 = [v19 deviceMemory];

    [tensorsCopy objectAtIndexedSubscript:j];
    v21 = [deviceMemory2 objectAtIndexedSubscript:0];
    bytes2 = [v21 bytes];
    inDeltaData = [v11 inDeltaData];
    v24 = [inDeltaData objectAtIndexedSubscript:j];
    *([v24 bytes] + 136) = bytes2;
  }

  bNNSFilter = [v11 BNNSFilter];
  batchSize = [v11 batchSize];
  source = [v11 source];
  sourceDataOffset = [v11 sourceDataOffset];
  v77 = source;
  bytes3 = [source bytes];
  sourceStride = [v11 sourceStride];
  inDeltaData2 = [v11 inDeltaData];
  v75 = [inDeltaData2 objectAtIndexedSubscript:0];
  bytes4 = [v75 bytes];
  secondarySource = [v11 secondarySource];
  secondarySourceDataOffset = [v11 secondarySourceDataOffset];
  v74 = secondarySource;
  bytes5 = [secondarySource bytes];
  sourceStrideSecondary = [v11 sourceStrideSecondary];
  hasKeyMask = [v11 hasKeyMask];
  if (hasKeyMask)
  {
    keyMask = [v11 keyMask];
    bytes6 = [keyMask bytes];
  }

  else
  {
    bytes6 = 0;
  }

  key_mask_stride = [v11 keyMaskStride];
  inDeltaData3 = [v11 inDeltaData];
  v66 = [inDeltaData3 objectAtIndexedSubscript:1];
  bytes7 = [v66 bytes];
  tertiarySource = [v11 tertiarySource];
  tertiarySourceDataOffset = [v11 tertiarySourceDataOffset];
  v64 = tertiarySource;
  bytes8 = [tertiarySource bytes];
  sourceStrideTertiary = [v11 sourceStrideTertiary];
  inDeltaData4 = [v11 inDeltaData];
  v58 = [inDeltaData4 objectAtIndexedSubscript:2];
  value_param_delta = [v58 bytes];
  hasAttnMask = [v11 hasAttnMask];
  if (hasAttnMask)
  {
    attnMask = [v11 attnMask];
    add_to_attention = [attnMask bytes];
  }

  else
  {
    add_to_attention = 0;
  }

  hasAttnBias = [v11 hasAttnBias];
  if (hasAttnBias)
  {
    attnBiasDeltaData = [v11 attnBiasDeltaData];
    v43 = [attnBiasDeltaData objectAtIndexedSubscript:0];
    bytes9 = [v43 bytes];
  }

  else
  {
    bytes9 = 0;
  }

  value = (bytes8 + tertiarySourceDataOffset);
  hasAttnBias2 = [v11 hasAttnBias];
  if (hasAttnBias2)
  {
    attnBiasDeltaData2 = [v11 attnBiasDeltaData];
    v41 = [attnBiasDeltaData2 objectAtIndexedSubscript:1];
    value_attn_bias_delta = [v41 bytes];
  }

  else
  {
    value_attn_bias_delta = 0;
  }

  result = [v11 result];
  resultDataOffset = [v11 resultDataOffset];
  v32 = ([result bytes] + resultDataOffset);
  output_stride = [v11 resultStride];
  outDeltaData2 = [v11 outDeltaData];
  v35 = [outDeltaData2 objectAtIndexedSubscript:0];
  bytes10 = [v35 bytes];
  backprop_cache_size = [v11 backpropCacheSize];
  backpropCacheData = [v11 backpropCacheData];
  v39 = BNNSApplyMultiheadAttentionBackward(bNNSFilter, batchSize, (bytes3 + sourceDataOffset), sourceStride, bytes4, (bytes5 + secondarySourceDataOffset), sourceStrideSecondary, bytes6, key_mask_stride, bytes7, value, sourceStrideTertiary, value_param_delta, add_to_attention, bytes9, value_attn_bias_delta, v32, output_stride, bytes10, backprop_cache_size, [backpropCacheData bytes], 0, 0);

  if (hasAttnBias2)
  {
  }

  if (hasAttnBias)
  {
  }

  if (hasAttnMask)
  {
  }

  if (hasKeyMask)
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

- (void)dispatchGradientLossLayer:(id)layer sourceGradientTensor:(id)tensor labelsTensor:(id)labelsTensor labelsTensorStride:(unint64_t)stride weightsTensor:(id)weightsTensor resultGradientTensor:(id)gradientTensor
{
  gradientTensorCopy = gradientTensor;
  weightsTensorCopy = weightsTensor;
  labelsTensorCopy = labelsTensor;
  tensorCopy = tensor;
  layerCopy = layer;
  [(MLCDeviceCPU *)self allocateResultTensor:gradientTensorCopy];
  v18 = [layerCopy objectAtIndexedSubscript:0];

  deviceMemory = [tensorCopy deviceMemory];

  deviceMemory2 = [gradientTensorCopy deviceMemory];

  deviceMemory3 = [labelsTensorCopy deviceMemory];

  deviceMemory4 = [weightsTensorCopy deviceMemory];

  inDeltaData = [v18 inDeltaData];
  v24 = [inDeltaData objectAtIndexedSubscript:0];
  bytes = [v24 bytes];

  outDeltaData = [v18 outDeltaData];
  v27 = [outDeltaData objectAtIndexedSubscript:0];
  bytes2 = [v27 bytes];

  v45 = deviceMemory2;
  v29 = [deviceMemory2 objectAtIndexedSubscript:0];
  bytes->data = [v29 bytes];

  v47 = deviceMemory;
  v30 = [deviceMemory objectAtIndexedSubscript:0];
  out_delta = bytes2;
  *(bytes2 + 136) = [v30 bytes];

  v31 = [deviceMemory3 objectAtIndexedSubscript:0];
  v44 = deviceMemory4;
  v32 = [deviceMemory4 objectAtIndexedSubscript:0];
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

  bNNSFilter = [v18 BNNSFilter];
  batchSize = [v18 batchSize];
  source = [v18 source];
  v39 = BNNSLossFilterApplyBackwardBatch(bNNSFilter, batchSize, ([source bytes] + objc_msgSend(v18, "sourceDataOffset")), objc_msgSend(v18, "sourceStride"), bytes, objc_msgSend(v18, "sourceStride"), objc_msgSend(v31, "bytes"), stride, weights, v41, out_delta, objc_msgSend(v18, "resultStride"));

  if (v39)
  {
    v40 = +[MLCLog framework];
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      [MLCDeviceCPU(MLCEngineDispatch) dispatchGradientLossLayer:sourceGradientTensor:labelsTensor:labelsTensorStride:weightsTensor:resultGradientTensor:];
    }
  }
}

- (void)dispatchGradientEmbeddingLayer:(id)layer sourceGradientTensor:(id)tensor
{
  layerCopy = layer;
  tensorCopy = tensor;
  v7 = [layerCopy objectAtIndexedSubscript:0];
  deviceMemory = [tensorCopy deviceMemory];
  v9 = [deviceMemory objectAtIndexedSubscript:0];
  bytes = [v9 bytes];

  v11 = [deviceMemory objectAtIndexedSubscript:0];
  v12 = [v11 length];

  v13 = [MEMORY[0x277CBEA90] dataWithBytes:bytes length:v12];
  if ([v7 scaleGradientByFrequency])
  {
    v38 = v13;
    v39 = deviceMemory;
    v40 = v7;
    source = [v7 source];
    bytes2 = [source bytes];
    v37 = source;
    v16 = [source length];
    descriptor = [tensorCopy descriptor];
    shape = [descriptor shape];
    v41 = tensorCopy;
    descriptor2 = [tensorCopy descriptor];
    v20 = [shape objectAtIndexedSubscript:{objc_msgSend(descriptor2, "dimensionCount") - 1}];
    unsignedIntegerValue = [v20 unsignedIntegerValue];

    v22 = [MEMORY[0x277CBEC10] mutableCopy];
    v42 = layerCopy;
    if (v16 >= 8)
    {
      v36 = unsignedIntegerValue;
      v23 = v16 >> 3;
      v24 = bytes2;
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
      bytes3 = [v38 bytes];
      do
      {
        v32 = *bytes2++;
        v33 = [MEMORY[0x277CCABB0] numberWithLongLong:v32];
        v34 = [v22 objectForKeyedSubscript:v33];
        v35 = 1.0 / [v34 unsignedIntegerValue];

        v43 = v35;
        MEMORY[0x23EE76610](bytes3, 1, &v43, bytes3, 1, v36);
        bytes3 += 4 * v36;
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

    tensorCopy = v41;
    layerCopy = v42;
    deviceMemory = v39;
  }

  else
  {
    [v7 setWeightsDeltaDataBytes:v13];
  }
}

- (void)dispatchForwardAndGradientLossLayer:(id)layer sourceTensor:(id)tensor labelsTensor:(id)labelsTensor labelsTensorStride:(unint64_t)stride weightsTensor:(id)weightsTensor resultTensor:(id)resultTensor resultGradientTensor:(id)gradientTensor
{
  tensorCopy = tensor;
  labelsTensorCopy = labelsTensor;
  gradientTensorCopy = gradientTensor;
  resultTensorCopy = resultTensor;
  weightsTensorCopy = weightsTensor;
  layerCopy = layer;
  [(MLCDeviceCPU *)self allocateResultTensor:resultTensorCopy];
  [(MLCDeviceCPU *)self allocateResultTensor:gradientTensorCopy];
  v20 = [layerCopy objectAtIndexedSubscript:0];

  v57 = tensorCopy;
  deviceMemory = [tensorCopy deviceMemory];
  v56 = labelsTensorCopy;
  deviceMemory2 = [labelsTensorCopy deviceMemory];
  deviceMemory3 = [weightsTensorCopy deviceMemory];

  deviceMemory4 = [resultTensorCopy deviceMemory];

  deviceMemory5 = [gradientTensorCopy deviceMemory];
  inDeltaData = [v20 inDeltaData];
  v27 = [inDeltaData objectAtIndexedSubscript:0];
  in_delta = [v27 bytes];

  v55 = deviceMemory5;
  v29 = [deviceMemory5 objectAtIndexedSubscript:0];
  in_delta->data = [v29 bytes];

  v53 = deviceMemory;
  v30 = [deviceMemory objectAtIndexedSubscript:0];
  v50 = deviceMemory4;
  v58 = [deviceMemory4 objectAtIndexedSubscript:0];
  v52 = deviceMemory2;
  v31 = [deviceMemory2 objectAtIndexedSubscript:0];
  v51 = deviceMemory3;
  v32 = [deviceMemory3 objectAtIndexedSubscript:0];
  [v20 lossWeight];
  v34 = v33;
  v59 = v33;
  if ([v20 deviceOpType] == 18)
  {
    weights_size = 0;
    bytes = 0;
  }

  else if ([v32 bytes])
  {
    bytes = [v32 bytes];
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

    bytes = v35;
  }

  v47 = v32;
  v54 = gradientTensorCopy;
  v48 = v30;
  if ([v20 deviceOpType] == 18)
  {
    v36 = [MEMORY[0x277CBEA90] dataWithBytes:objc_msgSend(v30 length:{"bytes"), objc_msgSend(v30, "length")}];
    v37 = [MEMORY[0x277CBEA90] dataWithBytes:objc_msgSend(v31 length:{"bytes"), objc_msgSend(v31, "length")}];
    descriptor = [v57 descriptor];
    convertDataLayout(descriptor, v30, v36, 0, 1);

    descriptor2 = [v56 descriptor];
    convertDataLayout(descriptor2, v31, v37, 0, 1);
  }

  else
  {
    v36 = v30;
    v37 = v31;
  }

  v40 = BNNSLossFilterApplyBatch([v20 BNNSFilter], objc_msgSend(v20, "batchSize"), objc_msgSend(v36, "bytes"), objc_msgSend(v20, "sourceStride"), objc_msgSend(v37, "bytes"), stride, bytes, weights_size, objc_msgSend(v58, "bytes"), in_delta, objc_msgSend(v20, "sourceStride"));
  if ([v20 deviceOpType] == 18)
  {
    v41 = [v55 objectAtIndexedSubscript:0];
    v42 = [MEMORY[0x277CBEA90] dataWithBytes:objc_msgSend(v41 length:{"bytes"), objc_msgSend(v41, "length")}];
    descriptor3 = [gradientTensorCopy descriptor];
    convertDataLayout(descriptor3, v42, v41, 1, 0);
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

- (void)dispatchRNNForwardLayer:(id)layer sourceTensors:(id)tensors resultTensors:(id)resultTensors resultStateIsTemporary:(BOOL)temporary forTraining:(BOOL)training
{
  trainingCopy = training;
  v124 = *MEMORY[0x277D85DE8];
  layerCopy = layer;
  tensorsCopy = tensors;
  resultTensorsCopy = resultTensors;
  if ([resultTensorsCopy count])
  {
    v13 = 0;
    do
    {
      v14 = [resultTensorsCopy objectAtIndexedSubscript:v13];
      [(MLCDeviceCPU *)self allocateResultTensor:v14];

      ++v13;
    }

    while (v13 < [resultTensorsCopy count]);
  }

  v15 = [tensorsCopy objectAtIndexedSubscript:0];
  descriptor = [v15 descriptor];
  shape = [descriptor shape];
  if ([shape count] == 4)
  {

    goto LABEL_7;
  }

  v18 = [tensorsCopy objectAtIndexedSubscript:0];
  descriptor2 = [v18 descriptor];
  shape2 = [descriptor2 shape];
  v21 = [shape2 count];

  if (v21 == 3)
  {
LABEL_7:
    v22 = [tensorsCopy objectAtIndexedSubscript:0];
    v23 = CPU_GetDeviceMemoryData(v22);

    v24 = [resultTensorsCopy objectAtIndexedSubscript:0];
    v25 = CPU_GetDeviceMemoryData(v24);

    [tensorsCopy objectAtIndexedSubscript:0];
    [resultTensorsCopy objectAtIndexedSubscript:0];

    v114 = layerCopy;
    v26 = [layerCopy objectAtIndexedSubscript:0];
    params = [v26 params];
    bytes = [params bytes];
    bytes2 = [v23 bytes];
    v113 = v25;
    __dst = [v25 bytes];
    bzero(__dst, [v25 length]);
    returnsSequences = [v26 returnsSequences];
    batchSize = [v26 batchSize];
    *(bytes + 16) = batchSize;
    biDirectional = [v26 biDirectional];
    v31 = 1;
    if (biDirectional)
    {
      v31 = 2;
    }

    v107 = v31;
    v108 = biDirectional;
    v117 = v26;
    if (![v26 batchFirst])
    {
      goto LABEL_13;
    }

    v32 = [tensorsCopy objectAtIndexedSubscript:0];
    descriptor3 = [v32 descriptor];
    shape3 = [descriptor3 shape];
    v35 = [shape3 count];

    if (v35 == 3)
    {
      v36 = *(bytes + 32);
      *(bytes + 232) = *bytes;
      *(bytes + 240) = v36;
      *(bytes + 248) = batchSize;
      *(bytes + 368) = 65568;
      *(bytes + 228) = 196610;
      if (returnsSequences)
      {
        *(bytes + 784) = 0;
        *(bytes + 776) = batchSize;
        *(bytes + 768) = v36;
        *(bytes + 760) = *(bytes + 8) << v108;
        *(bytes + 756) = 196610;
        *(bytes + 888) = __dst;
        goto LABEL_15;
      }
    }

    else
    {
LABEL_13:
      *(bytes + 240) = batchSize;
    }

    *(bytes + 776) = batchSize;
LABEL_15:
    *(bytes + 416) = batchSize;
    *(bytes + 592) = batchSize;
    *(bytes + 944) = batchSize;
    *(bytes + 1120) = batchSize;
    v37 = [tensorsCopy objectAtIndexedSubscript:0];
    descriptor4 = [v37 descriptor];
    shape4 = [descriptor4 shape];
    v40 = [shape4 count];

    if (v40 == 4)
    {
      v41 = [tensorsCopy objectAtIndexedSubscript:0];
      convertNCHWtoTNC(v41, batchSize, bytes2, *(bytes + 360));

      goto LABEL_22;
    }

    if (![v117 batchFirst])
    {
      goto LABEL_19;
    }

    v42 = [tensorsCopy objectAtIndexedSubscript:0];
    descriptor5 = [v42 descriptor];
    shape5 = [descriptor5 shape];
    v45 = [shape5 count];

    if (v45 != 3)
    {
LABEL_19:
      if ([v117 batchFirst])
      {
        goto LABEL_22;
      }

      v46 = [tensorsCopy objectAtIndexedSubscript:0];
      descriptor6 = [v46 descriptor];
      shape6 = [descriptor6 shape];
      v49 = [shape6 count];

      if (v49 != 3)
      {
        log = +[MLCLog framework];
        if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
        {
          [MLCDeviceCPU(MLCEngineDispatch) dispatchRNNForwardLayer:? sourceTensors:? resultTensors:? resultStateIsTemporary:? forTraining:?];
        }

        layerCopy = v114;
        goto LABEL_60;
      }
    }

    *(bytes + 360) = bytes2;
LABEL_22:
    v50 = [tensorsCopy objectAtIndexedSubscript:0];
    descriptor7 = [v50 descriptor];
    log = [descriptor7 batchSizePerSequenceStep];

    v52 = [tensorsCopy objectAtIndexedSubscript:0];
    descriptor8 = [v52 descriptor];
    variableLengthSequences = [descriptor8 variableLengthSequences];

    if (variableLengthSequences)
    {
      v106 = v23;
      v55 = [tensorsCopy objectAtIndexedSubscript:0];
      descriptor9 = [v55 descriptor];
      sequenceLengths = [descriptor9 sequenceLengths];

      v105 = sequenceLengths;
      v58 = [sequenceLengths objectAtIndexedSubscript:0];
      unsignedIntegerValue = [v58 unsignedIntegerValue];

      v60 = [objc_alloc(MEMORY[0x277CBEB28]) initWithCapacity:unsignedIntegerValue];
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

            unsignedIntegerValue2 = [*(*(&v119 + 1) + 8 * i) unsignedIntegerValue];
            [v60 appendBytes:&unsignedIntegerValue2 length:4];
          }

          v63 = [v61 countByEnumeratingWithState:&v119 objects:v123 count:16];
        }

        while (v63);
      }

      *(bytes + 184) = [v60 bytes];
      *(bytes + 52) = 0x10000;
      *(bytes + 192) = 65568;
      *(bytes + 56) = unsignedIntegerValue;
      *(bytes + 212) = 1065353216;

      v23 = v106;
    }

    if ([tensorsCopy count] == 3 || objc_msgSend(tensorsCopy, "count") == 4)
    {
      v66 = [tensorsCopy objectAtIndexedSubscript:1];
      v67 = CPU_GetDeviceMemoryData(v66);

      v68 = [tensorsCopy objectAtIndexedSubscript:2];
      v69 = CPU_GetDeviceMemoryData(v68);

      v70 = [tensorsCopy objectAtIndexedSubscript:1];
      *(bytes + 536) = [v67 bytes];

      v71 = [tensorsCopy objectAtIndexedSubscript:2];
      *(bytes + 712) = [v69 bytes];
    }

    layerCopy = v114;
    if ([resultTensorsCopy count] == 3)
    {
      v72 = [resultTensorsCopy objectAtIndexedSubscript:1];
      v73 = CPU_GetDeviceMemoryData(v72);

      v74 = [resultTensorsCopy objectAtIndexedSubscript:2];
      v75 = CPU_GetDeviceMemoryData(v74);

      v76 = [resultTensorsCopy objectAtIndexedSubscript:1];
      *(bytes + 1064) = [v73 bytes];

      v77 = [resultTensorsCopy objectAtIndexedSubscript:2];
      *(bytes + 1240) = [v75 bytes];
    }

    if (trainingCopy)
    {
      v78 = MEMORY[0x23EE75B70](bytes);
      v79 = malloc_type_malloc(v78, 0x46EF08AFuLL);
    }

    else
    {
      v78 = 0;
      v79 = 0;
    }

    if (BNNSDirectApplyLSTMBatchTrainingCaching(bytes, 0, v79, v78))
    {
      v80 = +[MLCLog framework];
      if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
      {
        [MLCDeviceCPU(MLCEngineDispatch) dispatchRNNForwardLayer:sourceTensors:resultTensors:resultStateIsTemporary:forTraining:];
      }
    }

    if (trainingCopy)
    {
      v81 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v79 length:v78 freeWhenDone:1];
      [v117 setTrainingCache:v81];
    }

    v82 = [tensorsCopy objectAtIndexedSubscript:0];
    descriptor10 = [v82 descriptor];
    shape7 = [descriptor10 shape];
    v85 = [shape7 count];

    if (v85 == 4)
    {
      v86 = [tensorsCopy objectAtIndexedSubscript:0];
      v87 = [resultTensorsCopy objectAtIndexedSubscript:0];
      v88 = *(bytes + 888);
      v89 = v117;
      convertTNCtoNCHW(v86, v87, batchSize, v88, __dst, [v117 returnsSequences]);

LABEL_47:
      v90 = v113;
LABEL_62:

      goto LABEL_63;
    }

    if (![v117 batchFirst])
    {
      goto LABEL_52;
    }

    v91 = [tensorsCopy objectAtIndexedSubscript:0];
    descriptor11 = [v91 descriptor];
    shape8 = [descriptor11 shape];
    v94 = [shape8 count];

    if (v94 == 3)
    {
      if ((returnsSequences & 1) == 0)
      {
        v95 = *(bytes + 1064);
        v86 = [resultTensorsCopy objectAtIndexedSubscript:0];
        v89 = v117;
        convertHiddenBNNStoMLC(v95, __dst, v86, [v117 numLayers], v107);
        goto LABEL_47;
      }
    }

    else
    {
LABEL_52:
      v96 = [tensorsCopy objectAtIndexedSubscript:0];
      descriptor12 = [v96 descriptor];
      shape9 = [descriptor12 shape];
      v99 = [shape9 count];

      if (v99 == 3)
      {
        if (!returnsSequences)
        {
          v101 = ([v117 numLayers] - 1) << v108;
          hiddenSize = [v117 hiddenSize];
          v103 = *(bytes + 1064);
          v89 = v117;
          v104 = (v103 + 4 * hiddenSize * batchSize * v101);
          v90 = v113;
          memcpy(__dst, v104, [v113 length]);
          goto LABEL_62;
        }

        v90 = v113;
        memcpy(__dst, *(bytes + 888), [v113 length]);
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

- (void)dispatchRNNGradientLayer:(id)layer sourceGradientTensors:(id)tensors resultGradientTensors:(id)gradientTensors
{
  v132 = *MEMORY[0x277D85DE8];
  layerCopy = layer;
  tensorsCopy = tensors;
  gradientTensorsCopy = gradientTensors;
  v11 = [tensorsCopy count];
  v12 = [gradientTensorsCopy count];
  v13 = [gradientTensorsCopy objectAtIndexedSubscript:0];
  [(MLCDeviceCPU *)self allocateResultTensor:v13];

  if ([tensorsCopy count] >= 2)
  {
    v14 = 1;
    do
    {
      v15 = [tensorsCopy objectAtIndexedSubscript:v14];
      [(MLCDeviceCPU *)self allocateResultTensor:v15];

      ++v14;
    }

    while (v14 < [tensorsCopy count]);
  }

  v16 = v12 - 3;
  if (v16 < 2)
  {
    v17 = [gradientTensorsCopy objectAtIndexedSubscript:1];
    [(MLCDeviceCPU *)self allocateResultTensor:v17];

    v18 = [gradientTensorsCopy objectAtIndexedSubscript:2];
    [(MLCDeviceCPU *)self allocateResultTensor:v18];
  }

  v122 = layerCopy;
  v19 = [layerCopy objectAtIndexedSubscript:0];
  params = [v19 params];
  bytes = [params bytes];
  lstmDeltaParams = [v19 lstmDeltaParams];
  bytes2 = [lstmDeltaParams bytes];
  v21 = [tensorsCopy objectAtIndexedSubscript:0];
  deviceMemory = [v21 deviceMemory];

  v23 = [gradientTensorsCopy objectAtIndexedSubscript:0];
  deviceMemory2 = [v23 deviceMemory];

  v114 = deviceMemory;
  v124 = [deviceMemory objectAtIndexedSubscript:0];
  v113 = deviceMemory2;
  v25 = [deviceMemory2 objectAtIndexedSubscript:0];
  [tensorsCopy objectAtIndexedSubscript:0];

  [gradientTensorsCopy objectAtIndexedSubscript:0];
  v125 = v25;
  if (v11 == 3)
  {
    v26 = [tensorsCopy objectAtIndexedSubscript:1];
    deviceMemory3 = [v26 deviceMemory];

    v28 = [deviceMemory3 objectAtIndexedSubscript:0];
    [tensorsCopy objectAtIndexedSubscript:1];

    *(bytes2 + 1064) = [v28 bytes];
    v29 = [tensorsCopy objectAtIndexedSubscript:2];
    deviceMemory4 = [v29 deviceMemory];

    v31 = [deviceMemory4 objectAtIndexedSubscript:0];
    [tensorsCopy objectAtIndexedSubscript:2];

    *(bytes2 + 1240) = [v31 bytes];
    v25 = v125;
  }

  if (v16 <= 1)
  {
    v32 = [gradientTensorsCopy objectAtIndexedSubscript:1];
    deviceMemory5 = [v32 deviceMemory];

    v34 = [deviceMemory5 objectAtIndexedSubscript:0];
    [gradientTensorsCopy objectAtIndexedSubscript:1];

    *(bytes2 + 536) = [v34 bytes];
    v35 = [gradientTensorsCopy objectAtIndexedSubscript:2];
    deviceMemory6 = [v35 deviceMemory];

    v37 = [deviceMemory6 objectAtIndexedSubscript:0];
    [gradientTensorsCopy objectAtIndexedSubscript:2];

    *(bytes2 + 712) = [v37 bytes];
    v25 = v125;
  }

  v123 = gradientTensorsCopy;
  v38 = [tensorsCopy objectAtIndexedSubscript:0];
  descriptor = [v38 descriptor];
  variableLengthSequences = [descriptor variableLengthSequences];

  if (variableLengthSequences)
  {
    bzero([v25 bytes], objc_msgSend(v25, "length"));
  }

  batchSize = [v19 batchSize];
  *(bytes2 + 16) = batchSize;
  *(bytes2 + 240) = batchSize;
  *(bytes2 + 416) = batchSize;
  *(bytes2 + 592) = batchSize;
  *(bytes2 + 776) = batchSize;
  *(bytes2 + 944) = batchSize;
  *(bytes2 + 1120) = batchSize;
  bytes3 = [v124 bytes];
  bytes4 = [v25 bytes];
  [MEMORY[0x277CBEA90] dataWithBytes:bytes4 length:{objc_msgSend(v25, "length")}];
  v121 = v19;
  v118 = v117 = batchSize;
  v111 = bytes3;
  __dst = bytes4;
  if ([v19 returnsSequences])
  {
    bzero(bytes4, [v25 length]);
    v44 = [MEMORY[0x277CBEA90] dataWithBytes:bytes3 length:{objc_msgSend(v124, "length")}];
    v45 = [tensorsCopy objectAtIndexedSubscript:0];
    descriptor2 = [v45 descriptor];
    shape = [descriptor2 shape];
    v48 = [shape count];

    if (v48 == 4)
    {
      v49 = [tensorsCopy objectAtIndexedSubscript:0];
      batchSize = v117;
      convertNCHWtoTNC(v49, v117, bytes3, [v44 bytes]);

      v50 = v121;
    }

    else
    {
      v50 = v121;
      batchSize = v117;
      if ([v121 batchFirst])
      {
        v60 = [tensorsCopy objectAtIndexedSubscript:0];
        descriptor3 = [v60 descriptor];
        shape2 = [descriptor3 shape];
        [shape2 count];
      }
    }

    v59 = v44;
    v58 = v122;
  }

  else
  {
    bytes5 = [v124 bytes];
    v52 = *(bytes + 8);
    v53 = *(bytes + 32);
    if (*(bytes + 44))
    {
      v54 = 2;
    }

    else
    {
      v54 = 1;
    }

    v55 = 4 * v52 * ((v53 * batchSize) << (*(bytes + 44) & 1));
    v56 = malloc_type_malloc(v55, 0x100004052888210uLL);
    convertNCtoTNC(v53, v52, v54, batchSize, bytes5, v56);
    v57 = v55;
    v58 = v122;
    v59 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v56 length:v57 freeWhenDone:1];
    v50 = v121;
  }

  v63 = [tensorsCopy objectAtIndexedSubscript:0];
  descriptor4 = [v63 descriptor];
  batchSizePerSequenceStep = [descriptor4 batchSizePerSequenceStep];

  v66 = [tensorsCopy objectAtIndexedSubscript:0];
  descriptor5 = [v66 descriptor];
  variableLengthSequences2 = [descriptor5 variableLengthSequences];

  v119 = v59;
  if (variableLengthSequences2)
  {
    v69 = [tensorsCopy objectAtIndexedSubscript:0];
    descriptor6 = [v69 descriptor];
    sequenceLengths = [descriptor6 sequenceLengths];

    v72 = [sequenceLengths objectAtIndexedSubscript:0];
    unsignedIntegerValue = [v72 unsignedIntegerValue];

    v74 = [objc_alloc(MEMORY[0x277CBEB28]) initWithCapacity:unsignedIntegerValue];
    v127 = 0u;
    v128 = 0u;
    v129 = 0u;
    v130 = 0u;
    v109 = batchSizePerSequenceStep;
    v75 = batchSizePerSequenceStep;
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

          unsignedIntegerValue2 = [*(*(&v127 + 1) + 8 * i) unsignedIntegerValue];
          [v74 appendBytes:&unsignedIntegerValue2 length:4];
        }

        v77 = [v75 countByEnumeratingWithState:&v127 objects:v131 count:16];
      }

      while (v77);
    }

    *(bytes + 184) = [v74 bytes];
    *(bytes + 52) = 0x10000;
    *(bytes + 192) = 65568;
    *(bytes + 56) = unsignedIntegerValue;
    *(bytes + 212) = 1065353216;
    *(bytes2 + 184) = [v74 bytes];
    *(bytes2 + 52) = 0x10000;
    *(bytes2 + 192) = 65568;
    *(bytes2 + 56) = unsignedIntegerValue;
    *(bytes2 + 212) = 1065353216;

    v50 = v121;
    v58 = v122;
    v59 = v119;
    batchSize = v117;
    batchSizePerSequenceStep = v109;
  }

  if (![v50 returnsSequences])
  {
    goto LABEL_36;
  }

  if (![v50 batchFirst])
  {
    goto LABEL_36;
  }

  v80 = [tensorsCopy objectAtIndexedSubscript:0];
  descriptor7 = [v80 descriptor];
  shape3 = [descriptor7 shape];
  v83 = [shape3 count];

  v84 = v83 == 3;
  v59 = v119;
  if (v84)
  {
    biDirectional = [v50 biDirectional];
    *(bytes2 + 776) = batchSize;
    *(bytes2 + 768) = *(bytes + 32);
    *(bytes2 + 760) = *(bytes + 8) << biDirectional;
    *(bytes2 + 756) = 196610;
    bytes6 = v111;
  }

  else
  {
LABEL_36:
    bytes6 = [v59 bytes];
  }

  *(bytes2 + 888) = bytes6;
  if (![v50 batchFirst])
  {
    goto LABEL_41;
  }

  v87 = [v123 objectAtIndexedSubscript:0];
  descriptor8 = [v87 descriptor];
  shape4 = [descriptor8 shape];
  v90 = [shape4 count];

  v84 = v90 == 3;
  v59 = v119;
  if (v84)
  {
    *(bytes2 + 232) = *bytes;
    *(bytes2 + 240) = *(bytes + 32);
    *(bytes2 + 248) = batchSize;
    *(bytes2 + 228) = 196610;
    bytes7 = __dst;
    v92 = v118;
  }

  else
  {
LABEL_41:
    v92 = v118;
    bytes7 = [v118 bytes];
  }

  *(bytes2 + 360) = bytes7;
  if (!*(bytes2 + 1416) || !*(bytes2 + 2344) || !*(bytes2 + 3272) || !*(bytes2 + 4200) || !*(bytes2 + 1768) || !*(bytes2 + 2696) || !*(bytes2 + 3624) || !*(bytes2 + 4552))
  {
    v103 = +[MLCLog framework];
    if (os_log_type_enabled(v103, OS_LOG_TYPE_ERROR))
    {
      [MLCDeviceCPU(MLCEngineDispatch) dispatchRNNGradientLayer:a2 sourceGradientTensors:? resultGradientTensors:?];
    }

    goto LABEL_68;
  }

  if (*(bytes + 24) >= 2uLL && (!*(bytes2 + 1592) || !*(bytes2 + 2520) || !*(bytes2 + 3448) || !*(bytes2 + 4376)))
  {
    v103 = +[MLCLog framework];
    if (os_log_type_enabled(v103, OS_LOG_TYPE_ERROR))
    {
      [MLCDeviceCPU(MLCEngineDispatch) dispatchRNNGradientLayer:a2 sourceGradientTensors:? resultGradientTensors:?];
    }

    goto LABEL_68;
  }

  if ([v50 hasBias] && (!*(bytes2 + 2120) || !*(bytes2 + 3048) || !*(bytes2 + 3976) || !*(bytes2 + 4904)))
  {
    v103 = +[MLCLog framework];
    if (os_log_type_enabled(v103, OS_LOG_TYPE_ERROR))
    {
      [MLCDeviceCPU(MLCEngineDispatch) dispatchRNNGradientLayer:a2 sourceGradientTensors:? resultGradientTensors:?];
    }

LABEL_68:

    v95 = params;
    goto LABEL_69;
  }

  v93 = MEMORY[0x23EE75B70](bytes);
  trainingCache = [v50 trainingCache];
  LODWORD(v93) = BNNSDirectApplyLSTMBatchBackward(bytes, bytes2, 0, [trainingCache bytes], v93);

  v95 = params;
  if (v93)
  {
    v96 = +[MLCLog framework];
    if (os_log_type_enabled(v96, OS_LOG_TYPE_ERROR))
    {
      [MLCDeviceCPU(MLCEngineDispatch) dispatchRNNGradientLayer:sourceGradientTensors:resultGradientTensors:];
    }
  }

  v97 = [v123 objectAtIndexedSubscript:0];
  descriptor9 = [v97 descriptor];
  shape5 = [descriptor9 shape];
  v100 = [shape5 count];

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
    descriptor10 = [v105 descriptor];
    shape6 = [descriptor10 shape];
    v108 = [shape6 count];

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

- (void)dispatchForwardReduceLayer:(id)layer sourceTensor:(id)tensor resultTensor:(id)resultTensor reductionType:(int)type reduceDimensions:(id)dimensions forTraining:(BOOL)training
{
  trainingCopy = training;
  resultTensorCopy = resultTensor;
  tensorCopy = tensor;
  v14 = [layer objectAtIndexedSubscript:0];
  [(MLCDeviceCPU *)self allocateResultTensor:resultTensorCopy];
  v15 = CPU_GetDeviceMemoryData(tensorCopy);

  v16 = CPU_GetDeviceMemoryData(resultTensorCopy);

  if (BNNSFilterApplyBatch([v14 BNNSFilter], 1uLL, objc_msgSend(v15, "bytes"), objc_msgSend(v14, "sourceStride"), objc_msgSend(v16, "bytes"), objc_msgSend(v14, "resultStride")))
  {
    v17 = +[MLCLog framework];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [MLCDeviceCPU(MLCEngineDispatch) dispatchForwardLayer:sourceTensor:resultTensor:resultStateIsTemporary:forTraining:];
    }
  }

  [v14 setBatchSize:1];
  if (trainingCopy)
  {
    [v14 setSource:v15];
    [v14 setResult:v16];
    [v14 setSourceDataOffset:0];
    [v14 setResultDataOffset:0];
  }
}

- (void)dispatchGradientReduceLayer:(id)layer sourceGradientTensor:(id)tensor resultGradientTensor:(id)gradientTensor reductionType:(int)type reduceDimensions:(id)dimensions
{
  gradientTensorCopy = gradientTensor;
  tensorCopy = tensor;
  v12 = [layer objectAtIndexedSubscript:0];
  [(MLCDeviceCPU *)self allocateResultTensor:gradientTensorCopy];
  deviceMemory = [tensorCopy deviceMemory];

  deviceMemory2 = [gradientTensorCopy deviceMemory];

  inDeltaData = [v12 inDeltaData];
  v16 = [inDeltaData objectAtIndexedSubscript:0];
  bytes = [v16 bytes];

  outDeltaData = [v12 outDeltaData];
  v19 = [outDeltaData objectAtIndexedSubscript:0];
  bytes2 = [v19 bytes];

  v40 = deviceMemory2;
  v21 = [deviceMemory2 objectAtIndexedSubscript:0];
  bytes->data = [v21 bytes];

  v41 = deviceMemory;
  v22 = [deviceMemory objectAtIndexedSubscript:0];
  out_delta = bytes2;
  *(bytes2 + 136) = [v22 bytes];

  v23 = 0;
  if ([v12 resultOfForwardNeededForGradient])
  {
    result = [v12 result];
    resultDataOffset = [v12 resultDataOffset];
    v23 = ([result bytes] + resultDataOffset);
  }

  v38 = v23;
  if ([v12 sourceOfForwardNeededForGradient])
  {
    source = [v12 source];
    sourceDataOffset = [v12 sourceDataOffset];
    in = ([source bytes] + sourceDataOffset);
  }

  else
  {
    in = 0;
  }

  bNNSFilter = [v12 BNNSFilter];
  sourceStride = [v12 sourceStride];
  if ([v12 computeWeightsAndBiasOnly])
  {
    bytes = 0;
  }

  sourceStride2 = [v12 sourceStride];
  resultStride = [v12 resultStride];
  resultStride2 = [v12 resultStride];
  weightsDeltaData = [v12 weightsDeltaData];
  weights_delta = [weightsDeltaData bytes];
  biasDeltaData = [v12 biasDeltaData];
  LODWORD(weights_delta) = BNNSFilterApplyBackwardBatch(bNNSFilter, 1uLL, in, sourceStride, bytes, sourceStride2, v38, resultStride, out_delta, resultStride2, weights_delta, [biasDeltaData bytes]);

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

- (void)dispatchGradientSelectLayer:(id)layer conditionTensor:(id)tensor sourceGradientTensor:(id)gradientTensor resultGradientTensors:(id)tensors
{
  v7 = [MLCLog framework:layer];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE setDeviceMemoryForTensor:a2 data:?];
  }
}

- (void)dispatchForwardScatterLayer:(id)layer sourceTensors:(id)tensors resultTensor:(id)tensor forTraining:(BOOL)training
{
  v69[2] = *MEMORY[0x277D85DE8];
  layerCopy = layer;
  tensorsCopy = tensors;
  tensorCopy = tensor;
  v66 = [layerCopy objectAtIndexedSubscript:0];
  [(MLCDeviceCPU *)self allocateResultTensor:tensorCopy];
  v11 = [tensorsCopy objectAtIndexedSubscript:2];

  if (v11 == tensorCopy)
  {
    [tensorsCopy objectAtIndexedSubscript:1];

    v12 = [tensorsCopy objectAtIndexedSubscript:0];
    bytes = 0;
  }

  else
  {
    [tensorsCopy objectAtIndexedSubscript:2];

    [tensorsCopy objectAtIndexedSubscript:1];
    [tensorsCopy objectAtIndexedSubscript:0];

    v12 = [tensorsCopy objectAtIndexedSubscript:2];
    v13 = CPU_GetDeviceMemoryData(v12);
    bytes = [v13 bytes];
  }

  v15 = [tensorsCopy objectAtIndexedSubscript:1];
  v16 = CPU_GetDeviceMemoryData(v15);
  bytes2 = [v16 bytes];

  v17 = [tensorsCopy objectAtIndexedSubscript:0];
  v18 = CPU_GetDeviceMemoryData(v17);
  bytes3 = [v18 bytes];

  v19 = CPU_GetDeviceMemoryData(tensorCopy);
  bytes4 = [v19 bytes];

  descriptor = [tensorCopy descriptor];
  tensorAllocationSizeInBytes = [descriptor tensorAllocationSizeInBytes];
  if (v11 == tensorCopy)
  {
    bzero(bytes4, tensorAllocationSizeInBytes);
  }

  else
  {
    memcpy(bytes4, bytes, tensorAllocationSizeInBytes);
  }

  scatterGatherDimension = [v66 scatterGatherDimension];
  v69[0] = 0;
  v69[1] = 0;
  v24 = [tensorsCopy objectAtIndexedSubscript:1];
  descriptor2 = [v24 descriptor];
  elementCount = [descriptor2 elementCount];

  if (elementCount)
  {
    v27 = 0;
    v68 = scatterGatherDimension;
    v63 = bytes4;
    while (1)
    {
      v28 = *(bytes2 + 4 * v27);
      v67 = v27;
      v29 = *(bytes3 + 4 * v27);
      descriptor3 = [tensorCopy descriptor];
      shape = [descriptor3 shape];
      v32 = [shape count];

      v33 = bytes4;
      if (v32 >= 1)
      {
        v34 = 0;
        v33 = bytes4;
        do
        {
          v35 = v28;
          if (v68 != v34)
          {
            v35 = *(v69 + v34);
          }

          descriptor4 = [tensorCopy descriptor];
          stride = [descriptor4 stride];
          v38 = [stride objectAtIndexedSubscript:v34];
          v33 = (v33 + (v35 * [v38 unsignedIntegerValue]));

          ++v34;
          descriptor5 = [tensorCopy descriptor];
          shape2 = [descriptor5 shape];
          LODWORD(v38) = [shape2 count];
        }

        while (v34 < v38);
      }

      scatterReduceType = [v66 scatterReduceType];
      if (!scatterReduceType)
      {
        goto LABEL_17;
      }

      if (scatterReduceType == 1)
      {
        break;
      }

LABEL_18:
      descriptor6 = [tensorCopy descriptor];
      shape3 = [descriptor6 shape];
      v44 = [shape3 count];
      ++*(v69 + v44 - 1);

      v45 = tensorsCopy;
      v46 = [tensorsCopy objectAtIndexedSubscript:1];
      descriptor7 = [v46 descriptor];
      shape4 = [descriptor7 shape];
      v49 = [shape4 count];

      if (v49 >= 2)
      {
        v50 = (v49 & 0x7FFFFFFF) + 1;
        v51 = &v68 + (v49 & 0x7FFFFFFF) + 1;
        do
        {
          v52 = *v51;
          v53 = [v45 objectAtIndexedSubscript:1];
          descriptor8 = [v53 descriptor];
          shape5 = [descriptor8 shape];
          v56 = [shape5 objectAtIndexedSubscript:v50 - 2];
          unsignedIntegerValue = [v56 unsignedIntegerValue];

          if (v52 == unsignedIntegerValue)
          {
            *(v51 - 1) = (*(v51 - 1) + 1);
          }

          --v50;
          --v51;
        }

        while (v50 > 2);
      }

      v27 = v67 + 1;
      tensorsCopy = v45;
      v58 = [v45 objectAtIndexedSubscript:1];
      descriptor9 = [v58 descriptor];
      elementCount2 = [descriptor9 elementCount];

      bytes4 = v63;
      if (v67 + 1 >= elementCount2)
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

- (void)dispatchForwardGatherLayer:(id)layer sourceTensors:(id)tensors resultTensor:(id)tensor forTraining:(BOOL)training
{
  v65[2] = *MEMORY[0x277D85DE8];
  layerCopy = layer;
  tensorsCopy = tensors;
  tensorCopy = tensor;
  v11 = [layerCopy objectAtIndexedSubscript:0];
  [(MLCDeviceCPU *)self allocateResultTensor:tensorCopy];
  [tensorsCopy objectAtIndexedSubscript:0];

  [tensorsCopy objectAtIndexedSubscript:1];
  v12 = [tensorsCopy objectAtIndexedSubscript:0];
  v13 = CPU_GetDeviceMemoryData(v12);
  bytes = [v13 bytes];

  v14 = [tensorsCopy objectAtIndexedSubscript:1];
  v15 = CPU_GetDeviceMemoryData(v14);
  bytes2 = [v15 bytes];

  v59 = tensorCopy;
  v16 = CPU_GetDeviceMemoryData(tensorCopy);
  bytes3 = [v16 bytes];

  v65[0] = 0;
  v65[1] = 0;
  v58 = v11;
  scatterGatherDimension = [v11 scatterGatherDimension];
  v18 = [tensorsCopy objectAtIndexedSubscript:1];
  descriptor = [v18 descriptor];
  elementCount = [descriptor elementCount];

  if (elementCount)
  {
    v21 = 0;
    v22 = scatterGatherDimension;
    do
    {
      v23 = 0;
      v24 = bytes;
      v64 = v21;
      v25 = *(bytes2 + 4 * v21);
      while (1)
      {
        v26 = [tensorsCopy objectAtIndexedSubscript:0];
        descriptor2 = [v26 descriptor];
        shape = [descriptor2 shape];
        v29 = [shape count];

        if (v23 >= v29)
        {
          break;
        }

        v30 = v25;
        if (v22 != v23)
        {
          v30 = *(v65 + v23);
        }

        v31 = [tensorsCopy objectAtIndexedSubscript:0];
        descriptor3 = [v31 descriptor];
        stride = [descriptor3 stride];
        v34 = [stride objectAtIndexedSubscript:v23];
        v24 = (v24 + (v30 * [v34 unsignedIntegerValue]));

        ++v23;
      }

      *(bytes3 + 4 * v64) = *v24;
      v35 = [tensorsCopy objectAtIndexedSubscript:1];
      descriptor4 = [v35 descriptor];
      shape2 = [descriptor4 shape];
      v38 = [shape2 count];
      ++*(v65 + v38 - 1);

      v39 = [tensorsCopy objectAtIndexedSubscript:1];
      descriptor5 = [v39 descriptor];
      shape3 = [descriptor5 shape];
      v42 = [shape3 count];

      if (v42 >= 2)
      {
        v43 = (v42 & 0x7FFFFFFF) + 1;
        v44 = &v64 + (v42 & 0x7FFFFFFF) + 1;
        do
        {
          v45 = *v44;
          v46 = [tensorsCopy objectAtIndexedSubscript:1];
          descriptor6 = [v46 descriptor];
          shape4 = [descriptor6 shape];
          v49 = [shape4 objectAtIndexedSubscript:v43 - 2];
          unsignedIntegerValue = [v49 unsignedIntegerValue];

          if (v45 == unsignedIntegerValue)
          {
            *(v44 - 1) = (*(v44 - 1) + 1);
          }

          --v43;
          --v44;
        }

        while (v43 > 2);
      }

      v21 = v64 + 1;
      v51 = [tensorsCopy objectAtIndexedSubscript:1];
      descriptor7 = [v51 descriptor];
      elementCount2 = [descriptor7 elementCount];
    }

    while (v21 < elementCount2);
  }

  if (training)
  {
    v54 = [tensorsCopy objectAtIndexedSubscript:1];
    v55 = CPU_GetDeviceMemoryData(v54);
    [v58 setSource:v55];

    [v58 setSourceDataOffset:0];
  }

  v56 = *MEMORY[0x277D85DE8];
}

- (MLCDeviceCPU)initWithType:(int)type
{
  v9.receiver = self;
  v9.super_class = MLCDeviceCPU;
  v4 = [(MLCDeviceCPU *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_deviceType = type;
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
  deviceType = [(MLCDeviceCPU *)self deviceType];
  deviceList = [(MLCDeviceCPU *)self deviceList];
  v8 = [v3 stringWithFormat:@"%@: { deviceType=%d : deviceList=%@}", v5, deviceType, deviceList];

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  deviceType = [(MLCDeviceCPU *)self deviceType];

  return [v4 initWithType:deviceType];
}

- (unint64_t)deviceMemorySizeForTensor:(id)tensor
{
  tensorCopy = tensor;
  descriptor = [tensorCopy descriptor];
  v5 = +[MLCTensorDescriptor elementByteCount:](MLCTensorDescriptor, "elementByteCount:", [descriptor dataType]);

  if (v5)
  {
    descriptor2 = [tensorCopy descriptor];
    shape = [descriptor2 shape];
    v8 = [shape count];

    if (v8)
    {
      v9 = 0;
      v10 = 1;
      do
      {
        descriptor3 = [tensorCopy descriptor];
        shape2 = [descriptor3 shape];
        v13 = [shape2 objectAtIndexedSubscript:v9];
        v10 *= [v13 unsignedIntegerValue];

        ++v9;
        descriptor4 = [tensorCopy descriptor];
        shape3 = [descriptor4 shape];
        v16 = [shape3 count];
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

- (unint64_t)deviceMemorySizeForTensor:(id)tensor batchSize:(unint64_t)size
{
  tensorCopy = tensor;
  descriptor = [tensorCopy descriptor];
  v7 = +[MLCTensorDescriptor elementByteCount:](MLCTensorDescriptor, "elementByteCount:", [descriptor dataType]);

  if (v7)
  {
    descriptor2 = [tensorCopy descriptor];
    shape = [descriptor2 shape];
    v10 = [shape count];

    if (v10 == 1)
    {
      descriptor3 = [tensorCopy descriptor];
      shape2 = [descriptor3 shape];
      v13 = [shape2 objectAtIndexedSubscript:0];
      v14 = [v13 unsignedIntegerValue] * v7;
    }

    else
    {
      v14 = v7 * size;
      descriptor4 = [tensorCopy descriptor];
      shape3 = [descriptor4 shape];
      v18 = [shape3 count];

      if (v18 >= 2)
      {
        v19 = 1;
        do
        {
          descriptor5 = [tensorCopy descriptor];
          shape4 = [descriptor5 shape];
          v22 = [shape4 objectAtIndexedSubscript:v19];
          v14 *= [v22 unsignedIntegerValue];

          ++v19;
          descriptor6 = [tensorCopy descriptor];
          shape5 = [descriptor6 shape];
          v25 = [shape5 count];
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

- (BOOL)needToAllocateDeviceMemoryForTensor:(id)tensor
{
  tensorCopy = tensor;
  deviceMemory = [tensorCopy deviceMemory];
  v5 = [deviceMemory count];

  if (!v5)
  {
    goto LABEL_6;
  }

  device = [tensorCopy device];

  if (!device)
  {
    goto LABEL_6;
  }

  device2 = [tensorCopy device];
  type = [device2 type];

  if (!type || ([tensorCopy device], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "type"), v9, v10 == 3))
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

- (void)allocateDeviceMemoryForTensor:(id)tensor
{
  tensorCopy = tensor;
  v5 = [MEMORY[0x277CBEBF8] mutableCopy];
  [tensorCopy setDeviceMemory:v5];

  v6 = [(MLCDeviceCPU *)self deviceMemorySizeForTensor:tensorCopy];
  v8 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:malloc_type_calloc(v6 length:1uLL freeWhenDone:{0x2945949uLL), v6, 1}];
  deviceMemory = [tensorCopy deviceMemory];

  [deviceMemory setObject:v8 atIndexedSubscript:0];
}

- (void)deallocateDeviceMemoryForTensor:(id)tensor
{
  tensorCopy = tensor;
  v3 = objc_autoreleasePoolPush();
  deviceMemory = [tensorCopy deviceMemory];
  [deviceMemory removeAllObjects];

  objc_autoreleasePoolPop(v3);
}

- (BOOL)shareDeviceMemoryWithResultTensor:(id)tensor sourceTensor:(id)sourceTensor
{
  tensorCopy = tensor;
  sourceTensorCopy = sourceTensor;
  if (sourceTensorCopy != tensorCopy)
  {
    v7 = [MEMORY[0x277CBEBF8] mutableCopy];
    [tensorCopy setDeviceMemory:v7];

    deviceMemory = [sourceTensorCopy deviceMemory];
    v9 = [deviceMemory count];

    if (v9)
    {
      v10 = 0;
      do
      {
        deviceMemory2 = [tensorCopy deviceMemory];
        deviceMemory3 = [sourceTensorCopy deviceMemory];
        v13 = [deviceMemory3 objectAtIndexedSubscript:v10];
        [deviceMemory2 addObject:v13];

        ++v10;
        deviceMemory4 = [sourceTensorCopy deviceMemory];
        v15 = [deviceMemory4 count];
      }

      while (v10 < v15);
    }

    sharedMemoryTensor = [sourceTensorCopy sharedMemoryTensor];
    if (sharedMemoryTensor)
    {
      sharedMemoryTensor2 = [sourceTensorCopy sharedMemoryTensor];
      [tensorCopy setSharedMemoryTensor:sharedMemoryTensor2];
    }

    else
    {
      [tensorCopy setSharedMemoryTensor:sourceTensorCopy];
    }

    [tensorCopy setDeviceIndex:{objc_msgSend(sourceTensorCopy, "deviceIndex")}];
  }

  return 1;
}

- (id)getHostPointerIfUnifiedDeviceMemory:(id)memory
{
  memoryCopy = memory;
  deviceMemory = [memoryCopy deviceMemory];
  deviceIndex = [memoryCopy deviceIndex];

  v6 = [deviceMemory objectAtIndexedSubscript:deviceIndex];

  return v6;
}

- (id)readTensor:(id)tensor
{
  tensorCopy = tensor;
  v5 = -[MLCDeviceCPU readTensor:fromDeviceIndex:](self, "readTensor:fromDeviceIndex:", tensorCopy, [tensorCopy deviceIndex]);

  return v5;
}

- (id)readTensor:(id)tensor fromDeviceIndex:(unint64_t)index
{
  tensorCopy = tensor;
  descriptor = [tensorCopy descriptor];
  shape = [descriptor shape];
  if ([shape count] == 1)
  {
    unsignedIntegerValue = 1;
  }

  else
  {
    descriptor2 = [tensorCopy descriptor];
    shape2 = [descriptor2 shape];
    v12 = [shape2 objectAtIndexedSubscript:0];
    unsignedIntegerValue = [v12 unsignedIntegerValue];
  }

  v13 = [(MLCDeviceCPU *)self readFromDevice:tensorCopy deviceIndex:index allocateData:0 batchSize:unsignedIntegerValue];

  return v13;
}

- (id)readFromDevice:(id)device deviceIndex:(unint64_t)index allocateData:(BOOL)data batchSize:(unint64_t)size
{
  dataCopy = data;
  v30 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  if ([deviceCopy deviceIndex] != index)
  {
    v13 = +[MLCLog framework];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v23 = NSStringFromSelector(a2);
      v24 = 138412802;
      v25 = v23;
      v26 = 2048;
      deviceIndex = [deviceCopy deviceIndex];
      v28 = 2048;
      indexCopy = index;
      _os_log_error_impl(&dword_238C1D000, v13, OS_LOG_TYPE_ERROR, "%@: -readTensor:deviceIndex:allocateData:batchSize must be called with deviceIndex = %lu, but given deviceIndex = %lu", &v24, 0x20u);
    }

    goto LABEL_6;
  }

  deviceMemory = [deviceCopy deviceMemory];
  v13 = [deviceMemory objectAtIndexedSubscript:index];

  v14 = [(MLCDeviceCPU *)self deviceMemorySizeForTensor:deviceCopy batchSize:size];
  v15 = v14;
  if (!dataCopy)
  {
    data = [deviceCopy data];
    bytes = [data bytes];

    if (bytes)
    {
      goto LABEL_8;
    }

    v22 = +[MLCLog framework];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      [MLCDeviceCPU readFromDevice:v22 deviceIndex:? allocateData:? batchSize:?];
    }

LABEL_6:
    data2 = 0;
    goto LABEL_11;
  }

  bytes = malloc_type_malloc(v14, 0x100004077774924uLL);
  v17 = [MEMORY[0x277CBEB28] dataWithBytesNoCopy:bytes length:v15 freeWhenDone:1];
  [deviceCopy setData:v17];

LABEL_8:
  if ([v13 bytes]!= bytes)
  {
    memcpy(bytes, [v13 bytes], v15);
  }

  data2 = [deviceCopy data];
LABEL_11:

  v20 = *MEMORY[0x277D85DE8];

  return data2;
}

- (void)readTensor:(id)tensor targetBuffer:(void *)buffer
{
  tensorCopy = tensor;
  v6 = CPU_GetDeviceMemoryData(tensorCopy);
  if ([v6 bytes] != buffer)
  {
    memcpy(buffer, [v6 bytes], -[MLCDeviceCPU deviceMemorySizeForTensor:](self, "deviceMemorySizeForTensor:", tensorCopy));
  }
}

- (void)dispatchReadTensor:(id)tensor targetBuffer:(void *)buffer batchSize:(unint64_t)size
{
  tensorCopy = tensor;
  v8 = CPU_GetDeviceMemoryData(tensorCopy);
  if ([v8 bytes] != buffer)
  {
    memcpy(buffer, [v8 bytes], -[MLCDeviceCPU deviceMemorySizeForTensor:batchSize:](self, "deviceMemorySizeForTensor:batchSize:", tensorCopy, size));
  }
}

- (void)broadcastTensor:(id)tensor
{
  tensorCopy = tensor;
  descriptor = [tensorCopy descriptor];
  shape = [descriptor shape];
  if ([shape count] == 1)
  {
    unsignedIntegerValue = 1;
  }

  else
  {
    descriptor2 = [tensorCopy descriptor];
    shape2 = [descriptor2 shape];
    v9 = [shape2 objectAtIndexedSubscript:0];
    unsignedIntegerValue = [v9 unsignedIntegerValue];
  }

  [(MLCDeviceCPU *)self writeToAllDevices:tensorCopy allocateData:0 batchSize:unsignedIntegerValue];
}

- (void)dispatchBroadcastTensor:(id)tensor
{
  tensorCopy = tensor;
  descriptor = [tensorCopy descriptor];
  shape = [descriptor shape];
  if ([shape count] == 1)
  {
    unsignedIntegerValue = 1;
  }

  else
  {
    descriptor2 = [tensorCopy descriptor];
    shape2 = [descriptor2 shape];
    v9 = [shape2 objectAtIndexedSubscript:0];
    unsignedIntegerValue = [v9 unsignedIntegerValue];
  }

  [(MLCDeviceCPU *)self writeToAllDevices:tensorCopy allocateData:0 batchSize:unsignedIntegerValue];
}

- (void)writeToAllDevices:(id)devices allocateData:(BOOL)data batchSize:(unint64_t)size
{
  dataCopy = data;
  devicesCopy = devices;
  v9 = devicesCopy;
  if (dataCopy)
  {
    [(MLCDeviceCPU *)self allocateDeviceMemoryForTensor:devicesCopy];
    devicesCopy = v9;
  }

  [(MLCDeviceCPU *)self writeToDevice:devicesCopy batchSize:size];
}

- (void)writeToDevice:(id)device batchSize:(unint64_t)size
{
  deviceCopy = device;
  data = [deviceCopy data];
  v7 = data;
  -[MLCDeviceCPU writeToDevice:sourceBuffer:batchSize:](self, "writeToDevice:sourceBuffer:batchSize:", deviceCopy, [data bytes], size);
}

- (void)writeToDevice:(id)device sourceBuffer:(void *)buffer batchSize:(unint64_t)size
{
  deviceCopy = device;
  v11 = CPU_GetDeviceMemoryData(deviceCopy);
  v9 = [(MLCDeviceCPU *)self deviceMemorySizeForTensor:deviceCopy batchSize:size];

  v10 = v11;
  if ([v11 bytes] != buffer)
  {
    memcpy([v11 bytes], buffer, v9);
  }
}

- (void)commitAndWaitForCompletion:(id)completion enableProfiling:(BOOL)profiling graphExecutionTime:(id)time graphResultTensor:(id)tensor
{
  profilingCopy = profiling;
  completionCopy = completion;
  timeCopy = time;
  tensorCopy = tensor;
  v12 = 0.0;
  if (profilingCopy)
  {
    Current = CFAbsoluteTimeGetCurrent();
    v12 = Current - *[timeCopy bytes];
  }

  if (tensorCopy)
  {
    data = [tensorCopy data];
    if ([data bytes])
    {
      device = [tensorCopy device];

      if (!device)
      {
        goto LABEL_8;
      }

      data = [tensorCopy data];
      -[MLCDeviceCPU readTensor:targetBuffer:](self, "readTensor:targetBuffer:", tensorCopy, [data bytes]);
    }
  }

LABEL_8:
  if (completionCopy)
  {
    completionCopy[2](completionCopy, tensorCopy, 0, v12);
  }
}

- (void)commitWithCompletionHandler:(id)handler enableProfiling:(BOOL)profiling graphExecutionTime:(id)time graphResultTensor:(id)tensor
{
  profilingCopy = profiling;
  handlerCopy = handler;
  timeCopy = time;
  tensorCopy = tensor;
  v12 = 0.0;
  if (profilingCopy)
  {
    Current = CFAbsoluteTimeGetCurrent();
    v12 = Current - *[timeCopy bytes];
  }

  if (tensorCopy)
  {
    data = [tensorCopy data];
    if ([data bytes])
    {
      device = [tensorCopy device];

      if (!device)
      {
        goto LABEL_8;
      }

      data = [tensorCopy data];
      -[MLCDeviceCPU readTensor:targetBuffer:](self, "readTensor:targetBuffer:", tensorCopy, [data bytes]);
    }
  }

LABEL_8:
  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, tensorCopy, 0, v12);
  }
}

- (BOOL)transferTensor:(id)tensor fromDevice:(id)device
{
  v46 = *MEMORY[0x277D85DE8];
  tensorCopy = tensor;
  deviceCopy = device;
  if (deviceCopy)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (self != deviceCopy || (isKindOfClass & 1) == 0)
    {
      deviceIndex = [tensorCopy deviceIndex];
      deviceMemory = [tensorCopy deviceMemory];
      v13 = [deviceMemory objectAtIndexedSubscript:deviceIndex];
      objc_opt_class();
      v14 = objc_opt_isKindOfClass();

      if (v14)
      {
        deviceMemory2 = [tensorCopy deviceMemory];
        v16 = [deviceMemory2 count];

        deviceMemory3 = [tensorCopy deviceMemory];
        v18 = [deviceMemory3 count];

        if (v18 == 1)
        {
          v19 = [(MLCDeviceCPU *)self deviceMemorySizeForTensor:tensorCopy];
          bytes = malloc_type_malloc(v19, 0x2B50BB67uLL);
          v16 = 1;
          deviceMemory9 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:bytes length:v19 freeWhenDone:1];
          deviceMemory4 = [tensorCopy deviceMemory];
          [deviceMemory4 addObject:deviceMemory9];
LABEL_21:

          deviceMemory5 = [tensorCopy deviceMemory];
          v23 = [deviceMemory5 objectAtIndexedSubscript:deviceIndex];

          calculateBatchSizeToUse = [tensorCopy calculateBatchSizeToUse];
          liveIOStatus = [v23 liveIOStatus];
          OutputTensor = ANE_ReadOutputTensor(tensorCopy, liveIOStatus, [tensorCopy deviceIndex], bytes, calculateBatchSizeToUse);

          if (OutputTensor)
          {
            [tensorCopy setDeviceIndex:v16];
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

        deviceMemory6 = [tensorCopy deviceMemory];
        v25 = [deviceMemory6 count];

        if (v25 == 2)
        {
          deviceMemory7 = [tensorCopy deviceMemory];
          v27 = [deviceMemory7 count];

          if (v27)
          {
            v28 = 0;
            while (1)
            {
              deviceMemory8 = [tensorCopy deviceMemory];
              v30 = [deviceMemory8 objectAtIndexedSubscript:v28];
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
          deviceMemory9 = [tensorCopy deviceMemory];
          deviceMemory4 = [deviceMemory9 objectAtIndexedSubscript:v16];
          bytes = [deviceMemory4 bytes];
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
          deviceMemory10 = [tensorCopy deviceMemory];
          v40 = [deviceMemory10 objectAtIndexedSubscript:deviceIndex];
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

- (void)setDeviceMemoryForTensor:(id)tensor data:(id)data
{
  tensorCopy = tensor;
  data = [data data];
  deviceMemory = [tensorCopy deviceMemory];
  deviceIndex = [tensorCopy deviceIndex];

  [deviceMemory setObject:data atIndexedSubscript:deviceIndex];
}

- (BOOL)updateDeviceMemoryForTensor:(id)tensor
{
  tensorCopy = tensor;
  deviceMemory = [tensorCopy deviceMemory];
  v6 = [deviceMemory count];

  if (!v6)
  {
    goto LABEL_13;
  }

  deviceMemory2 = [tensorCopy deviceMemory];
  v8 = [deviceMemory2 count];

  if (v8 < 3)
  {
    deviceMemory3 = [tensorCopy deviceMemory];
    v11 = [deviceMemory3 count];

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
      deviceMemory4 = [tensorCopy deviceMemory];
      v14 = [deviceMemory4 objectAtIndexedSubscript:v12];
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

    [tensorCopy setDeviceIndex:v12];
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

- (void)updateBatchNormalizationLayer:(id)layer optimizer:(id)optimizer betaParameter:(id)parameter gammaParameter:(id)gammaParameter meanTensor:(id)tensor varianceTensor:(id)varianceTensor arrayOfParams:(id)params
{
  v47[1] = a2;
  selfCopy = self;
  v55[1] = *MEMORY[0x277D85DE8];
  optimizerCopy = optimizer;
  parameterCopy = parameter;
  gammaParameterCopy = gammaParameter;
  paramsCopy = params;
  v16 = [layer objectAtIndexedSubscript:0];
  fusedPrimitiveParams = [v16 fusedPrimitiveParams];
  v51 = paramsCopy;
  if (fusedPrimitiveParams)
  {
    [v16 fusedPrimitiveParams];
  }

  else
  {
    [v16 params];
  }
  v18 = ;

  bytes = [v18 bytes];
  v54 = 0;
  v55[0] = 0;
  bytes2 = 0;
  v53 = 0;
  if (parameterCopy)
  {
    if ([parameterCopy isUpdatable])
    {
      v20 = &v53;
      v21 = v55;
      v54 = bytes + 352;
      betaDeltaData = [v16 betaDeltaData];
      bytes2 = [betaDeltaData bytes];

      v23 = 0;
      v24 = 2;
      if (!gammaParameterCopy)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v24 = 1;
      v21 = &v54;
      v20 = &bytes2;
      v23 = 1;
      if (!gammaParameterCopy)
      {
        goto LABEL_13;
      }
    }
  }

  else
  {
    v23 = 1;
    v21 = &v54;
    v20 = &bytes2;
    v24 = 1;
    if (!gammaParameterCopy)
    {
      goto LABEL_13;
    }
  }

  if ([gammaParameterCopy isUpdatable])
  {
    v48 = gammaParameterCopy;
    *v21 = bytes + 528;
    gammaDeltaData = [v16 gammaDeltaData];
    *v20 = [gammaDeltaData bytes];

    goto LABEL_15;
  }

LABEL_13:
  v26 = v51;
  if (v23)
  {
    goto LABEL_35;
  }

  v48 = gammaParameterCopy;
  v24 = 1;
LABEL_15:
  v49 = optimizerCopy;
  v27 = [optimizerCopy objectAtIndexedSubscript:0];
  accumulatorBufferCount = [v27 accumulatorBufferCount];

  v47[2] = v47;
  v29 = 8 * accumulatorBufferCount * v24;
  v30 = v47 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v29 >= 0x200)
  {
    v31 = 512;
  }

  else
  {
    v31 = 8 * accumulatorBufferCount * v24;
  }

  bzero(v47 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0), v31);
  bzero(v47 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * accumulatorBufferCount * v24);
  if (v24 == 2)
  {
    if (accumulatorBufferCount)
    {
      v32 = 0;
      v33 = v30 + 8;
      do
      {
        betaMomentumData = [v16 betaMomentumData];
        v35 = [betaMomentumData objectAtIndexedSubscript:v32];
        *(v33 - 1) = [v35 bytes];

        gammaMomentumData = [v16 gammaMomentumData];
        v37 = [gammaMomentumData objectAtIndexedSubscript:v32];
        *v33 = [v37 bytes];
        v33 += 2;

        ++v32;
      }

      while (accumulatorBufferCount != v32);
    }
  }

  else if (accumulatorBufferCount)
  {
    for (i = 0; i != accumulatorBufferCount; ++i)
    {
      if ([parameterCopy isUpdatable])
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
    [(MLCDeviceCPU *)selfCopy accumulateParams:&v54 gradients:&bytes2 accumulators:v30 numOfParameters:v24 inArrayOfParams:v51];
    gammaParameterCopy = v48;
    optimizerCopy = v49;
  }

  else
  {
    optimizerCopy = v49;
    v41 = [v49 objectAtIndexedSubscript:0];
    function = [v41 function];
    v43 = [optimizerCopy objectAtIndexedSubscript:0];
    optimizerAlgFields = [v43 optimizerAlgFields];
    LODWORD(function) = MEMORY[0x23EE75D80](function, [optimizerAlgFields bytes], v24, &v54, &bytes2, v30, 0);

    v26 = v51;
    gammaParameterCopy = v48;
    if (function)
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

- (void)sumSharedGradientsForConvolutionLayerTensorParameter:(id)parameter layerIndexForSummedGradients:(unint64_t)gradients
{
  parameterCopy = parameter;
  childLayers = [parameterCopy childLayers];
  v6 = [childLayers count];

  if (v6 == 1)
  {
    goto LABEL_34;
  }

  childLayers2 = [parameterCopy childLayers];
  v8 = [childLayers2 objectAtIndexedSubscript:gradients];

  deviceOps = [v8 deviceOps];
  v10 = [deviceOps objectAtIndexedSubscript:0];

  v11 = 0x278A68000uLL;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  weights = [v8 weights];

  if (isKindOfClass)
  {
    if (weights == parameterCopy)
    {
      weightsDeltaData = [v10 weightsDeltaData];
      bytes = [weightsDeltaData bytes];

      v16 = bytes[12];
      v17 = bytes[4];
LABEL_8:
      v19 = v17 * v16;
      goto LABEL_9;
    }
  }

  else if (weights == parameterCopy)
  {
    weightsDeltaData2 = [v10 weightsDeltaData];
    bytes = [weightsDeltaData2 bytes];

    v16 = bytes[10];
    v17 = bytes[2];
    goto LABEL_8;
  }

  biasDeltaData = [v10 biasDeltaData];
  bytes = [biasDeltaData bytes];

  v19 = bytes[1];
LABEL_9:
  v21 = bytes[17];
  childLayers3 = [parameterCopy childLayers];
  v23 = [childLayers3 count];

  if (v23)
  {
    v24 = 0;
    while (1)
    {
      v25 = v8;
      childLayers4 = [parameterCopy childLayers];
      v8 = [childLayers4 objectAtIndexedSubscript:v24];

      if (v24 == gradients || ![v8 isTrainable])
      {
        goto LABEL_31;
      }

      deviceOps2 = [v8 deviceOps];
      v28 = [deviceOps2 objectAtIndexedSubscript:0];

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
      v38 = parameterCopy;
LABEL_32:
      ++v24;
      childLayers5 = [v38 childLayers];
      v43 = [childLayers5 count];

      if (v24 >= v43)
      {
        goto LABEL_33;
      }
    }

    v30 = v8;
    if (weights == parameterCopy)
    {
      weightsParameter = [v30 weightsParameter];
      if (!weightsParameter)
      {
        goto LABEL_25;
      }

      weightsParameter2 = [v30 weightsParameter];
      isUpdatable = [weightsParameter2 isUpdatable];

      if (isUpdatable)
      {
        weightsDeltaData3 = [v28 weightsDeltaData];
        goto LABEL_22;
      }
    }

    else
    {
      weightsParameter = [v30 biasesParameter];
      if (!weightsParameter)
      {
        goto LABEL_25;
      }

      biasesParameter = [v30 biasesParameter];
      isUpdatable2 = [biasesParameter isUpdatable];

      if (isUpdatable2)
      {
        weightsDeltaData3 = [v28 biasDeltaData];
LABEL_22:
        v37 = weightsDeltaData3;
        weightsParameter = *([weightsDeltaData3 bytes] + 136);

LABEL_24:
        v11 = 0x278A68000;
LABEL_25:

        if (weightsParameter)
        {
          v38 = parameterCopy;
          if (v19)
          {
            v39 = v21;
            v40 = v19;
            do
            {
              v41 = *weightsParameter++;
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

    weightsParameter = 0;
    goto LABEL_24;
  }

LABEL_33:

LABEL_34:
}

- (void)sumSharedGradientsForNormalizationLayerTensorParameter:(id)parameter layerIndexForSummedGradients:(unint64_t)gradients isBetaTensor:(BOOL)tensor
{
  tensorCopy = tensor;
  parameterCopy = parameter;
  childLayers = [parameterCopy childLayers];
  v8 = [childLayers count];

  if (v8 != 1)
  {
    childLayers2 = [parameterCopy childLayers];
    v10 = [childLayers2 objectAtIndexedSubscript:gradients];

    deviceOps = [v10 deviceOps];
    v12 = [deviceOps objectAtIndexedSubscript:0];

    if (tensorCopy)
    {
      [v12 betaDeltaData];
    }

    else
    {
      [v12 gammaDeltaData];
    }
    v13 = ;
    bytes = [v13 bytes];

    v15 = *(bytes + 8);
    if (v15)
    {
      v16 = (bytes + 16);
      v17 = 1;
      v18 = parameterCopy;
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
      v18 = parameterCopy;
    }

    v20 = *(bytes + 136);
    childLayers3 = [v18 childLayers];
    v22 = [childLayers3 count];

    if (v22)
    {
      v23 = 0;
      while (1)
      {
        v24 = v10;
        childLayers4 = [parameterCopy childLayers];
        v10 = [childLayers4 objectAtIndexedSubscript:v23];

        if (v23 == gradients || ![v10 isTrainable])
        {
          goto LABEL_33;
        }

        deviceOps2 = [v10 deviceOps];
        v27 = [deviceOps2 objectAtIndexedSubscript:0];

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
        v37 = parameterCopy;
LABEL_34:
        ++v23;
        childLayers5 = [v37 childLayers];
        v42 = [childLayers5 count];

        if (v23 >= v42)
        {
          goto LABEL_35;
        }
      }

      v28 = v10;
      v29 = v28;
      if (tensorCopy)
      {
        betaParameter = [v28 betaParameter];
        if (!betaParameter)
        {
          goto LABEL_27;
        }

        betaParameter2 = [v29 betaParameter];
        isUpdatable = [betaParameter2 isUpdatable];

        if (isUpdatable)
        {
          betaDeltaData = [v27 betaDeltaData];
LABEL_25:
          v36 = betaDeltaData;
          betaParameter = *([betaDeltaData bytes] + 136);

          goto LABEL_27;
        }
      }

      else
      {
        betaParameter = [v28 gammaParameter];
        if (!betaParameter)
        {
          goto LABEL_27;
        }

        gammaParameter = [v29 gammaParameter];
        isUpdatable2 = [gammaParameter isUpdatable];

        if (isUpdatable2)
        {
          betaDeltaData = [v27 gammaDeltaData];
          goto LABEL_25;
        }
      }

      betaParameter = 0;
LABEL_27:

      if (betaParameter)
      {
        v37 = parameterCopy;
        if (v17)
        {
          v38 = v20;
          v39 = v17;
          do
          {
            v40 = *betaParameter++;
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

- (void)updateFullyConnectedLayer:(id)layer optimizer:(id)optimizer weightsParameter:(id)parameter biasesParameter:(id)biasesParameter arrayOfParams:(id)params
{
  v46[1] = a2;
  selfCopy = self;
  v54[1] = *MEMORY[0x277D85DE8];
  optimizerCopy = optimizer;
  parameterCopy = parameter;
  biasesParameterCopy = biasesParameter;
  paramsCopy = params;
  v13 = [layer objectAtIndexedSubscript:0];
  params = [v13 params];
  bytes = [params bytes];
  v53 = 0;
  v54[0] = 0;
  bytes2 = 0;
  v52 = 0;
  isUpdatable = [parameterCopy isUpdatable];
  v17 = &v53;
  v18 = &bytes2;
  if (isUpdatable)
  {
    v17 = v54;
    v18 = &v52;
    v53 = bytes + 176;
    weightsDeltaData = [v13 weightsDeltaData];
    bytes2 = [weightsDeltaData bytes];

    v20 = 2;
  }

  else
  {
    v20 = 1;
  }

  v21 = biasesParameterCopy;
  if (biasesParameterCopy && [biasesParameterCopy isUpdatable])
  {
    *v17 = bytes + 528;
    biasDeltaData = [v13 biasDeltaData];
    *v18 = [biasDeltaData bytes];
  }

  else
  {
    if (!isUpdatable)
    {
      goto LABEL_30;
    }

    v20 = 1;
  }

  v47 = optimizerCopy;
  v23 = [optimizerCopy objectAtIndexedSubscript:0];
  accumulatorBufferCount = [v23 accumulatorBufferCount];

  v46[2] = v46;
  v25 = 8 * accumulatorBufferCount * v20;
  v26 = v46 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v25 >= 0x200)
  {
    v27 = 512;
  }

  else
  {
    v27 = 8 * accumulatorBufferCount * v20;
  }

  bzero(v46 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0), v27);
  bzero(v46 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * accumulatorBufferCount * v20);
  if (v20 == 2)
  {
    if (accumulatorBufferCount)
    {
      v28 = 0;
      v29 = v26 + 8;
      do
      {
        weightsMomentumData = [v13 weightsMomentumData];
        v31 = [weightsMomentumData objectAtIndexedSubscript:v28];
        *(v29 - 1) = [v31 bytes];

        biasMomentumData = [v13 biasMomentumData];
        v33 = [biasMomentumData objectAtIndexedSubscript:v28];
        *v29 = [v33 bytes];
        v29 += 2;

        ++v28;
      }

      while (accumulatorBufferCount != v28);
    }
  }

  else if (accumulatorBufferCount)
  {
    for (i = 0; i != accumulatorBufferCount; ++i)
    {
      if ([parameterCopy isUpdatable])
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

  if (paramsCopy)
  {
    [(MLCDeviceCPU *)selfCopy accumulateParams:&v53 gradients:&bytes2 accumulators:v26 numOfParameters:v20 inArrayOfParams:?];
    optimizerCopy = v47;
  }

  else
  {
    v37 = v47;
    v38 = [v47 objectAtIndexedSubscript:0];
    function = [v38 function];
    v40 = [v37 objectAtIndexedSubscript:0];
    optimizerAlgFields = [v40 optimizerAlgFields];
    bytes3 = [optimizerAlgFields bytes];
    v43 = v26;
    optimizerCopy = v37;
    LODWORD(v37) = MEMORY[0x23EE75D80](function, bytes3, v20, &v53, &bytes2, v43, 0);

    if (v37)
    {
      v44 = +[MLCLog framework];
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        [MLCDeviceCPU(MLComputeEngineOptimizerUpdate) updateFullyConnectedLayer:optimizer:weightsParameter:biasesParameter:arrayOfParams:];
      }
    }
  }

  v21 = biasesParameterCopy;
LABEL_30:

  v45 = *MEMORY[0x277D85DE8];
}

- ($ADD8B2928F54472B65CB84445603561F)getGateDesc:(SEL)desc lstmParams:(unint64_t)params
{
  v6 = 928 * params + 1280;
  if (params >= 3)
  {
    v6 = 4064;
  }

  return memcpy(retstr, a5 + v6, sizeof($ADD8B2928F54472B65CB84445603561F));
}

- (void)saveOrRestoreLSTMBiasesAndAccumulators:(id)accumulators auxParameter:(id)parameter auxAccumulators:(id)auxAccumulators mlcIndex:(unint64_t)index auxIndex:(unint64_t)auxIndex saveParameter:(BOOL)saveParameter
{
  saveParameterCopy = saveParameter;
  accumulatorsCopy = accumulators;
  parameterCopy = parameter;
  auxAccumulatorsCopy = auxAccumulators;
  params = [accumulatorsCopy params];
  bytes = [params bytes];
  hiddenSize = [accumulatorsCopy hiddenSize];
  biDirectional = [accumulatorsCopy biDirectional];
  numLayers = [accumulatorsCopy numLayers];
  numAccumulatorsPerParameter = [accumulatorsCopy numAccumulatorsPerParameter];
  v18 = 4 * numLayers;
  v36 = accumulatorsCopy;
  if (numLayers < 2)
  {
    v20 = 0;
    indexCopy3 = index;
  }

  else if ([accumulatorsCopy biDirectional])
  {
    indexCopy3 = index;
    if ([accumulatorsCopy biDirectional])
    {
      v20 = (index - v18) >> 2;
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    indexCopy3 = index;
    v20 = index >> 2;
  }

  [(MLCDeviceCPU *)self getGateDesc:indexCopy3 & 3 lstmParams:bytes];
  if (indexCopy3 >= v18)
  {
    v21 = hiddenSize;
  }

  else
  {
    v21 = 0;
  }

  v22 = v21 + (v20 << biDirectional) * hiddenSize;
  if (saveParameterCopy)
  {
    v23 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:malloc_type_calloc(hiddenSize length:4uLL freeWhenDone:{0x100004052888210uLL), hiddenSize, 1}];
    [parameterCopy addObject:v23];
    auxIndexCopy2 = auxIndex;
  }

  else
  {
    auxIndexCopy2 = auxIndex;
    v23 = [parameterCopy objectAtIndexedSubscript:auxIndex];
  }

  v30 = v23;
  saveOrRestoreLSTMWeightsAndAccumulatorsHelper(v37, v22, [v23 bytes], 4 * hiddenSize, saveParameterCopy);
  if (numAccumulatorsPerParameter)
  {
    v25 = numAccumulatorsPerParameter * auxIndexCopy2;
    do
    {
      if (saveParameterCopy)
      {
        v26 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:malloc_type_calloc(hiddenSize length:4uLL freeWhenDone:{0x100004052888210uLL), hiddenSize, 1}];
        [auxAccumulatorsCopy addObject:v26];
      }

      else
      {
        v26 = [auxAccumulatorsCopy objectAtIndexedSubscript:v25];
      }

      biasMomentumData = [v36 biasMomentumData];
      v28 = [biasMomentumData objectAtIndexedSubscript:index & 3];
      bytes2 = [v28 bytes];

      saveOrRestoreLSTMWeightsAndAccumulatorsHelper(*(bytes2 + 136), v22, [v26 bytes], 4 * hiddenSize, saveParameterCopy);
      ++v25;
      --numAccumulatorsPerParameter;
    }

    while (numAccumulatorsPerParameter);
  }
}

- (void)createBNNSDesc2DForLSTMWeights:(id)weights tensorParameters:(id)parameters deviceOptimizers:(id)optimizers isInputWeight:(BOOL)weight
{
  weightCopy = weight;
  weightsCopy = weights;
  parametersCopy = parameters;
  optimizersCopy = optimizers;
  params = [weightsCopy params];
  bytes = [params bytes];

  lstmDeltaParams = [weightsCopy lstmDeltaParams];
  bytes2 = [lstmDeltaParams bytes];

  numLayers = [weightsCopy numLayers];
  biDirectional = [weightsCopy biDirectional];
  v49 = optimizersCopy;
  v15 = [optimizersCopy objectAtIndexedSubscript:0];
  accumulatorBufferCount = [v15 accumulatorBufferCount];

  v50 = parametersCopy;
  v61 = [parametersCopy count];
  inputSize = [weightsCopy inputSize];
  hiddenSize = [weightsCopy hiddenSize];
  v64 = weightCopy;
  if (weightCopy)
  {
    bnnsDesc2DInputWeightParams = [weightsCopy bnnsDesc2DInputWeightParams];
    bnnsDesc2DInputWeightGrads = [weightsCopy bnnsDesc2DInputWeightGrads];
    [weightsCopy bnnsDesc2DInputWeightAccumulators];
  }

  else
  {
    bnnsDesc2DInputWeightParams = [weightsCopy bnnsDesc2DHiddenWeightParams];
    bnnsDesc2DInputWeightGrads = [weightsCopy bnnsDesc2DHiddenWeightGrads];
    [weightsCopy bnnsDesc2DHiddenWeightAccumulators];
  }
  v17 = ;
  if (![v17 count] && accumulatorBufferCount)
  {
    v18 = 0;
    v19 = MEMORY[0x277CBEBF8];
    do
    {
      v20 = [v19 mutableCopy];
      [v17 setObject:v20 atIndexedSubscript:v18];

      ++v18;
    }

    while (accumulatorBufferCount != v18);
  }

  v21 = v64;
  v51 = weightsCopy;
  v65 = v17;
  if (v64)
  {
    [weightsCopy inputWeightsMomentumDescData];
  }

  else
  {
    [weightsCopy hiddenWeightsMomentumDescData];
  }
  v22 = ;
  if (v61)
  {
    v23 = 0;
    v52 = 4 * numLayers;
    do
    {
      v24 = accumulatorBufferCount;
      v25 = v23 >= v52;
      v26 = biDirectional & v25;
      memset(v121, 0, 32);
      if ((biDirectional & v25) != 0)
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
      v34 = inputSize;
      if (v33)
      {
        v34 = hiddenSize;
      }

      *(&v121[0] + 1) = v34;
      *&v121[1] = hiddenSize;
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
      v111 = hiddenSize;
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
      [(MLCDeviceCPU *)self getGateDesc:v35 lstmParams:bytes];
      memset(v85, 0, 384);
      v83 = 0u;
      v84 = 0u;
      v81 = 0u;
      v82 = 0u;
      v79 = 0u;
      v80 = 0u;
      v77 = 0u;
      v78 = 0u;
      [(MLCDeviceCPU *)self getGateDesc:v35 lstmParams:bytes2];
      if (v32)
      {
        v36 = (*(&v86 + 1) + 8 * v26);
        v37 = v85 + 8;
        v38 = v26;
      }

      else if (v21)
      {
        v38 = ((v29 - 1) << biDirectional) + v26;
        v36 = (*(&v97 + 1) + 8 * v38);
        v37 = &v85[11] + 8;
      }

      else
      {
        v38 = (v29 << biDirectional) + v26;
        v36 = (*(&v108 + 1) + 8 * v38);
        v37 = &v85[22] + 8;
      }

      *(&v122 + 1) = *v36;
      *(&v118 + 1) = *(*v37 + 8 * v38);
      v39 = [MEMORY[0x277CBEA90] dataWithBytes:v121 length:176];
      [bnnsDesc2DInputWeightParams setObject:v39 atIndexedSubscript:v23];

      v40 = [MEMORY[0x277CBEA90] dataWithBytes:v110 length:176];
      [bnnsDesc2DInputWeightGrads setObject:v40 atIndexedSubscript:v23];

      if (accumulatorBufferCount)
      {
        v41 = 0;
        if (v64 && v28 > 3)
        {
          v35 |= 4uLL;
        }

        v62 = (v29 - 1) << biDirectional;
        v63 = v29 << biDirectional;
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
          bytes3 = [v43 bytes];

          accumulatorBufferCount = v24;
          v45 = *(bytes3 + 136);
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

- (void)optimizerStepForSingleParameterLSTM:(id)m tensorParameters:(id)parameters parameterForGateDesc:(id *)desc gradientsForGateDesc:(id *)gateDesc parameterMomentumDescData:(id)data gateIndex:(unint64_t)index deviceOptimizers:(id)optimizers isStackedInputWeight:(BOOL)self0
{
  gateDescCopy = gateDesc;
  v106[1] = *MEMORY[0x277D85DE8];
  mCopy = m;
  parametersCopy = parameters;
  dataCopy = data;
  optimizersCopy = optimizers;
  numLayers = [mCopy numLayers];
  v58 = mCopy;
  biDirectional = [mCopy biDirectional];
  v71 = optimizersCopy;
  v19 = [optimizersCopy objectAtIndexedSubscript:0];
  accumulatorBufferCount = [v19 accumulatorBufferCount];

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
  v21 = desc->var2[1];
  *(&v91 + 1) = desc->var2[0];
  *&v92 = v21;
  v22 = desc->var3[1];
  *(&v95 + 1) = desc->var3[0];
  *&v96 = v22;
  v106[0] = &v91;
  LODWORD(v100) = desc->var5;
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
  if ((8 * accumulatorBufferCount) >= 0x200)
  {
    v23 = 512;
  }

  else
  {
    v23 = 8 * accumulatorBufferCount;
  }

  bzero(&v57 - ((8 * accumulatorBufferCount + 15) & 0xFFFFFFFFFFFFFFF0), v23);
  v73 = &v57 - ((8 * accumulatorBufferCount + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v73, 8 * accumulatorBufferCount);
  v24 = [MEMORY[0x277CBEBF8] mutableCopy];
  v26 = accumulatorBufferCount;
  if (accumulatorBufferCount)
  {
    v27 = 0;
    do
    {
      memset(v102, 0, sizeof(v102));
      v103 = 0u;
      v104 = 0u;
      LODWORD(v103) = desc->var5;
      *(v102 + 8) = *desc->var2;
      DWORD1(v102[0]) = 0x20000;
      v28 = v26;
      v29 = [MEMORY[0x277CBEA90] dataWithBytes:v102 length:176];
      [v24 setObject:v29 atIndexedSubscript:v27];

      v30 = [v24 objectAtIndexedSubscript:v27];
      bytes = [v30 bytes];
      *&v73[8 * v27] = bytes;

      v26 = v28;
      ++v27;
    }

    while (v28 != v27);
  }

  v70 = v24;
  v77 = v26;
  v62 = desc->var2[3];
  if (v62)
  {
    v32 = 0;
    v60 = biDirectional;
    weightCopy = weight;
    indexCopy = index + 4;
    if (!weight)
    {
      indexCopy = index;
    }

    v64 = indexCopy;
    *&v25 = 67109120;
    v59 = v25;
    v67 = parametersCopy;
    indexCopy2 = index;
    v65 = numLayers;
    descCopy = desc;
    do
    {
      v34 = 0;
      v75 = v32 + weightCopy;
      v63 = v32;
      v72 = v32 << v60;
      v35 = 1;
      do
      {
        v76 = v35;
        v36 = [parametersCopy objectAtIndexedSubscript:index + 4 * (v75 + v34 * numLayers)];
        isUpdatable = [v36 isUpdatable];

        if (isUpdatable)
        {
          v38 = v34 + v72;
          *(&v99 + 1) = *(desc->var4 + v34 + v72);
          v39 = v70;
          *(&v88 + 1) = *(gateDescCopy->var4 + v38);
          v40 = v64;
          if (v77)
          {
            for (i = 0; i != v77; ++i)
            {
              v42 = [v39 objectAtIndexedSubscript:i];
              bytes2 = [v42 bytes];
              v43 = [dataCopy objectAtIndexedSubscript:i];
              [v43 objectAtIndexedSubscript:v40];
              v44 = v38;
              v46 = v45 = dataCopy;
              bytes3 = [v46 bytes];

              dataCopy = v45;
              v38 = v44;

              *(bytes2 + 136) = *(*(bytes3 + 136) + 8 * v44);
            }
          }

          v48 = v71;
          v49 = [v71 objectAtIndexedSubscript:0];
          function = [v49 function];
          v51 = [v48 objectAtIndexedSubscript:0];
          optimizerAlgFields = [v51 optimizerAlgFields];
          bytes4 = [optimizerAlgFields bytes];
          v54 = MEMORY[0x23EE75D80](function, bytes4, 1, v106, &v105, v73, 0);

          parametersCopy = v67;
          index = indexCopy2;
          numLayers = v65;
          desc = descCopy;
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

      while ((biDirectional & v76 & 1) != 0);
      v32 = v63 + 1;
    }

    while (v63 + 1 != v62);
  }

  v56 = *MEMORY[0x277D85DE8];
}

- (void)updateRNNLayer:(id)layer optimizer:(id)optimizer inputWeightsParameter:(id)parameter hiddenWeightsParameter:(id)weightsParameter biasesParameter:(id)biasesParameter arrayOfParams:(id)params
{
  v103[1] = a2;
  v116 = *MEMORY[0x277D85DE8];
  optimizerCopy = optimizer;
  parameterCopy = parameter;
  weightsParameterCopy = weightsParameter;
  biasesParameterCopy = biasesParameter;
  paramsCopy = params;
  v18 = [layer objectAtIndexedSubscript:0];
  params = [v18 params];
  bytes = [params bytes];
  lstmDeltaParams = [v18 lstmDeltaParams];
  bytes2 = [lstmDeltaParams bytes];

  auxBiasTerms = [v18 auxBiasTerms];
  [auxBiasTerms removeAllObjects];

  auxBiasTermsAccumulators = [v18 auxBiasTermsAccumulators];
  [auxBiasTermsAccumulators removeAllObjects];

  [(MLCDeviceCPU *)self createBNNSDesc2DForLSTMWeights:v18 tensorParameters:parameterCopy deviceOptimizers:optimizerCopy isInputWeight:1];
  selfCopy = self;
  [(MLCDeviceCPU *)self createBNNSDesc2DForLSTMWeights:v18 tensorParameters:weightsParameterCopy deviceOptimizers:optimizerCopy isInputWeight:0];
  v115 = parameterCopy;
  v22 = 0;
  if ([parameterCopy count])
  {
    v23 = 0;
    do
    {
      v24 = [v115 objectAtIndexedSubscript:v23];
      isUpdatable = [v24 isUpdatable];

      v22 += isUpdatable;
      ++v23;
    }

    while (v23 < [v115 count]);
  }

  if ([weightsParameterCopy count])
  {
    v26 = 0;
    do
    {
      v27 = [weightsParameterCopy objectAtIndexedSubscript:v26];
      isUpdatable2 = [v27 isUpdatable];

      v22 += isUpdatable2;
      ++v26;
    }

    while (v26 < [weightsParameterCopy count]);
  }

  if (biasesParameterCopy)
  {
    v114 = [biasesParameterCopy count] != 0;
  }

  else
  {
    v114 = 0;
  }

  v29 = v115;
  v109 = optimizerCopy;
  if ([v18 hasBias])
  {
    v30 = v22;
    v31 = 0;
    if ([biasesParameterCopy count])
    {
      v32 = 0;
      do
      {
        v33 = [biasesParameterCopy objectAtIndexedSubscript:v32];
        isUpdatable3 = [v33 isUpdatable];

        if ((isUpdatable3 & 1) == 0)
        {
          auxBiasTerms2 = [v18 auxBiasTerms];
          auxBiasTermsAccumulators2 = [v18 auxBiasTermsAccumulators];
          [(MLCDeviceCPU *)selfCopy saveOrRestoreLSTMBiasesAndAccumulators:v18 auxParameter:auxBiasTerms2 auxAccumulators:auxBiasTermsAccumulators2 mlcIndex:v32 auxIndex:0 saveParameter:1];
        }

        v31 |= isUpdatable3;
        ++v32;
      }

      while (v32 < [biasesParameterCopy count]);
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
    optimizerCopy = v109;
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
        isUpdatable4 = [v43 isUpdatable];

        if (isUpdatable4)
        {
          bnnsDesc2DInputWeightParams = [v18 bnnsDesc2DInputWeightParams];
          v46 = [bnnsDesc2DInputWeightParams objectAtIndexedSubscript:v41];
          bytes3 = [v46 bytes];
          *&v113[8 * v40] = bytes3;

          bnnsDesc2DInputWeightGrads = [v18 bnnsDesc2DInputWeightGrads];
          v49 = [bnnsDesc2DInputWeightGrads objectAtIndexedSubscript:v41];
          bytes4 = [v49 bytes];
          *&v112[8 * v40] = bytes4;

          ++v40;
        }

        ++v41;
        v42 = v115;
      }

      while (v41 < [v115 count]);
    }

    if ([weightsParameterCopy count])
    {
      v51 = 0;
      do
      {
        v52 = [weightsParameterCopy objectAtIndexedSubscript:v51];
        isUpdatable5 = [v52 isUpdatable];

        if (isUpdatable5)
        {
          bnnsDesc2DHiddenWeightParams = [v18 bnnsDesc2DHiddenWeightParams];
          v55 = [bnnsDesc2DHiddenWeightParams objectAtIndexedSubscript:v51];
          bytes5 = [v55 bytes];
          *&v113[8 * v40] = bytes5;

          bnnsDesc2DHiddenWeightGrads = [v18 bnnsDesc2DHiddenWeightGrads];
          v58 = [bnnsDesc2DHiddenWeightGrads objectAtIndexedSubscript:v51];
          bytes6 = [v58 bytes];
          *&v112[8 * v40] = bytes6;

          ++v40;
        }

        ++v51;
      }

      while (v51 < [weightsParameterCopy count]);
    }

    v104 = biasesParameterCopy;
    hasBias = [v18 hasBias];
    if (hasBias & v114)
    {
      v61 = vdupq_n_s64(bytes);
      v62 = &v113[8 * v40];
      v63 = vdupq_n_s64(bytes2);
      *v62 = vaddq_s64(v61, xmmword_238D45FB0);
      v62[1] = vaddq_s64(v61, xmmword_238D45FC0);
      v64 = &v112[8 * v40];
      *v64 = vaddq_s64(v63, xmmword_238D45FB0);
      v64[1] = vaddq_s64(v63, xmmword_238D45FC0);
    }

    v65 = [optimizerCopy objectAtIndexedSubscript:0];
    accumulatorBufferCount = [v65 accumulatorBufferCount];

    v67 = 8 * accumulatorBufferCount * v107;
    v68 = v103 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v67 >= 0x200)
    {
      v69 = 512;
    }

    else
    {
      v69 = 8 * accumulatorBufferCount * v107;
    }

    bzero(v103 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0), v69);
    bzero(v103 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0), v67);
    v70 = v115;
    bytes = accumulatorBufferCount;
    if (accumulatorBufferCount)
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
            isUpdatable6 = [v75 isUpdatable];

            if (isUpdatable6)
            {
              bnnsDesc2DInputWeightAccumulators = [v18 bnnsDesc2DInputWeightAccumulators];
              v78 = [bnnsDesc2DInputWeightAccumulators objectAtIndexedSubscript:v71];
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

        if ([weightsParameterCopy count])
        {
          v80 = 0;
          do
          {
            v81 = [weightsParameterCopy objectAtIndexedSubscript:v80];
            isUpdatable7 = [v81 isUpdatable];

            if (isUpdatable7)
            {
              bnnsDesc2DHiddenWeightAccumulators = [v18 bnnsDesc2DHiddenWeightAccumulators];
              v84 = [bnnsDesc2DHiddenWeightAccumulators objectAtIndexedSubscript:v71];
              v85 = [v84 objectAtIndexedSubscript:v80];
              *&v68[8 * v72] = [v85 bytes];

              ++v72;
              v18 = v73;
            }

            ++v80;
          }

          while (v80 < [weightsParameterCopy count]);
        }

        hasBias2 = [v18 hasBias];
        if (hasBias2 & v114)
        {
          biasMomentumData = [v18 biasMomentumData];
          v88 = [biasMomentumData objectAtIndexedSubscript:4 * v71];
          v89 = &v68[8 * v72];
          *v89 = [v88 bytes];

          biasMomentumData2 = [v18 biasMomentumData];
          v91 = [biasMomentumData2 objectAtIndexedSubscript:(4 * v71) | 1];
          *(v89 + 1) = [v91 bytes];

          biasMomentumData3 = [v18 biasMomentumData];
          v93 = [biasMomentumData3 objectAtIndexedSubscript:(4 * v71) | 2];
          *(v89 + 2) = [v93 bytes];

          biasMomentumData4 = [v18 biasMomentumData];
          v95 = [biasMomentumData4 objectAtIndexedSubscript:(4 * v71) | 3];
          v72 += 4;
          *(v89 + 3) = [v95 bytes];
        }

        ++v71;
        v70 = v115;
      }

      while (v71 != bytes);
    }

    if (paramsCopy)
    {
      [(MLCDeviceCPU *)selfCopy accumulateParams:v113 gradients:v112 accumulators:v68 numOfParameters:v107 inArrayOfParams:?];
      optimizerCopy = v109;
      biasesParameterCopy = v104;
    }

    else
    {
      optimizerCopy = v109;
      v96 = [v109 objectAtIndexedSubscript:0];
      function = [v96 function];
      v98 = [optimizerCopy objectAtIndexedSubscript:0];
      optimizerAlgFields = [v98 optimizerAlgFields];
      bytes7 = [optimizerAlgFields bytes];
      LODWORD(function) = MEMORY[0x23EE75D80](function, bytes7, v107, v113, v112, v68, 0);

      biasesParameterCopy = v104;
      if (function)
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

- (void)updateMultiheadAttentionLayer:(id)layer optimizer:(id)optimizer weightsParameter:(id)parameter biasesParameter:(id)biasesParameter arrayOfParams:(id)params
{
  v113 = a2;
  selfCopy = self;
  v124 = *MEMORY[0x277D85DE8];
  optimizerCopy = optimizer;
  parameterCopy = parameter;
  biasesParameterCopy = biasesParameter;
  paramsCopy = params;
  v15 = [layer objectAtIndexedSubscript:{0, v113}];
  params = [v15 params];
  bytes = [params bytes];
  v17 = 0;
  if ([parameterCopy count])
  {
    v18 = 0;
    do
    {
      v19 = [parameterCopy objectAtIndexedSubscript:v18];
      isUpdatable = [v19 isUpdatable];

      v17 += isUpdatable;
      ++v18;
    }

    while (v18 < [parameterCopy count]);
  }

  if (biasesParameterCopy && [biasesParameterCopy count])
  {
    v21 = 0;
    do
    {
      v22 = [biasesParameterCopy objectAtIndexedSubscript:v21];
      isUpdatable2 = [v22 isUpdatable];

      v17 += isUpdatable2;
      ++v21;
    }

    while (v21 < [biasesParameterCopy count]);
  }

  if (v17)
  {
    v117 = params;
    v118 = paramsCopy;
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
    v119 = optimizerCopy;
    v28 = [optimizerCopy objectAtIndexedSubscript:0];
    accumulatorBufferCount = [v28 accumulatorBufferCount];

    v122 = accumulatorBufferCount;
    v30 = 8 * accumulatorBufferCount * v17;
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
    v35 = [parameterCopy objectAtIndexedSubscript:0];
    isUpdatable3 = [v35 isUpdatable];

    v37 = 0;
    v38 = bytes;
    if (isUpdatable3)
    {
      *v25 = bytes + 176;
      inDeltaData = [v15 inDeltaData];
      v40 = [inDeltaData objectAtIndexedSubscript:0];
      *v34 = [v40 bytes] + 176;

      v37 = 1;
    }

    v41 = [parameterCopy objectAtIndexedSubscript:1];
    isUpdatable4 = [v41 isUpdatable];

    if (isUpdatable4)
    {
      v25[v37] = v38 + 704;
      inDeltaData2 = [v15 inDeltaData];
      v44 = [inDeltaData2 objectAtIndexedSubscript:1];
      v34[v37] = [v44 bytes] + 176;

      ++v37;
    }

    v45 = [parameterCopy objectAtIndexedSubscript:2];
    isUpdatable5 = [v45 isUpdatable];

    if (isUpdatable5)
    {
      v25[v37] = v38 + 1232;
      inDeltaData3 = [v15 inDeltaData];
      v48 = [inDeltaData3 objectAtIndexedSubscript:2];
      v34[v37] = [v48 bytes] + 176;

      ++v37;
    }

    v49 = [parameterCopy objectAtIndexedSubscript:3];
    isUpdatable6 = [v49 isUpdatable];

    if (isUpdatable6)
    {
      v25[v37] = v38 + 2120;
      outDeltaData = [v15 outDeltaData];
      v52 = [outDeltaData objectAtIndexedSubscript:0];
      v34[v37] = [v52 bytes] + 176;

      ++v37;
    }

    hasBias = [v15 hasBias];
    v54 = 4;
    if (!hasBias)
    {
      v54 = 0;
    }

    v114 = v54;
    hasBias2 = [v15 hasBias];
    v116 = v17;
    if (hasBias2)
    {
      v56 = [biasesParameterCopy objectAtIndexedSubscript:0];
      isUpdatable7 = [v56 isUpdatable];

      if (isUpdatable7)
      {
        v25[v37] = v38 + 352;
        inDeltaData4 = [v15 inDeltaData];
        v59 = [inDeltaData4 objectAtIndexedSubscript:0];
        v34[v37] = [v59 bytes] + 352;

        ++v37;
      }

      v60 = [biasesParameterCopy objectAtIndexedSubscript:1];
      isUpdatable8 = [v60 isUpdatable];

      if (isUpdatable8)
      {
        v25[v37] = v38 + 880;
        inDeltaData5 = [v15 inDeltaData];
        v63 = [inDeltaData5 objectAtIndexedSubscript:1];
        v34[v37] = [v63 bytes] + 352;

        ++v37;
      }

      v64 = [biasesParameterCopy objectAtIndexedSubscript:2];
      isUpdatable9 = [v64 isUpdatable];

      if (isUpdatable9)
      {
        v25[v37] = v38 + 1408;
        inDeltaData6 = [v15 inDeltaData];
        v67 = [inDeltaData6 objectAtIndexedSubscript:2];
        v34[v37] = [v67 bytes] + 352;

        ++v37;
      }

      v68 = [biasesParameterCopy objectAtIndexedSubscript:3];
      isUpdatable10 = [v68 isUpdatable];

      if (isUpdatable10)
      {
        v25[v37] = v38 + 2296;
        outDeltaData2 = [v15 outDeltaData];
        v71 = [outDeltaData2 objectAtIndexedSubscript:0];
        v34[v37] = [v71 bytes] + 352;

        ++v37;
      }
    }

    if ([v15 hasAttnBias])
    {
      v72 = [biasesParameterCopy objectAtIndexedSubscript:v114];
      isUpdatable11 = [v72 isUpdatable];

      if (isUpdatable11)
      {
        v25[v37] = v38 + 1592;
        attnBiasDeltaData = [v15 attnBiasDeltaData];
        v75 = [attnBiasDeltaData objectAtIndexedSubscript:0];
        v34[v37] = [v75 bytes];

        ++v37;
      }

      v76 = [biasesParameterCopy objectAtIndexedSubscript:v114 | 1];
      isUpdatable12 = [v76 isUpdatable];

      if (isUpdatable12)
      {
        v25[v37] = v38 + 1768;
        attnBiasDeltaData2 = [v15 attnBiasDeltaData];
        v79 = [attnBiasDeltaData2 objectAtIndexedSubscript:1];
        v34[v37] = [v79 bytes];
      }
    }

    v114 = v34;
    bytes = v25;
    if (v122)
    {
      v80 = 0;
      v81 = 0;
      v82 = parameterCopy;
      do
      {
        v83 = biasesParameterCopy;
        weightsMomentumDeltaDataArray = [v15 weightsMomentumDeltaDataArray];
        v85 = [weightsMomentumDeltaDataArray count];

        if (v85)
        {
          v86 = 0;
          do
          {
            v87 = [parameterCopy objectAtIndexedSubscript:v86];
            isUpdatable13 = [v87 isUpdatable];

            if (isUpdatable13)
            {
              weightsMomentumDeltaDataArray2 = [v15 weightsMomentumDeltaDataArray];
              v90 = [weightsMomentumDeltaDataArray2 objectAtIndexedSubscript:v86];
              v91 = [v90 objectAtIndexedSubscript:v80];
              bytes2 = [v91 bytes];
              *&v123[8 * v81] = bytes2;

              ++v81;
              parameterCopy = v82;
            }

            ++v86;
            weightsMomentumDeltaDataArray3 = [v15 weightsMomentumDeltaDataArray];
            v94 = [weightsMomentumDeltaDataArray3 count];
          }

          while (v86 < v94);
        }

        biasMomentumDeltaDataArray = [v15 biasMomentumDeltaDataArray];
        v96 = [biasMomentumDeltaDataArray count];

        if (v96)
        {
          v97 = 0;
          biasesParameterCopy = v83;
          do
          {
            v98 = [biasesParameterCopy objectAtIndexedSubscript:v97];
            isUpdatable14 = [v98 isUpdatable];

            if (isUpdatable14)
            {
              biasMomentumDeltaDataArray2 = [v15 biasMomentumDeltaDataArray];
              v101 = [biasMomentumDeltaDataArray2 objectAtIndexedSubscript:v97];
              v102 = [v101 objectAtIndexedSubscript:v80];
              bytes3 = [v102 bytes];
              *&v123[8 * v81] = bytes3;

              biasesParameterCopy = v83;
              ++v81;
              parameterCopy = v82;
            }

            ++v97;
            biasMomentumDeltaDataArray3 = [v15 biasMomentumDeltaDataArray];
            v105 = [biasMomentumDeltaDataArray3 count];
          }

          while (v97 < v105);
        }

        else
        {
          biasesParameterCopy = v83;
        }

        ++v80;
      }

      while (v80 != v122);
    }

    paramsCopy = v118;
    if (v118)
    {
      [(MLCDeviceCPU *)selfCopy accumulateParams:bytes gradients:v114 accumulators:v123 numOfParameters:v116 inArrayOfParams:v118];
      optimizerCopy = v119;
    }

    else
    {
      optimizerCopy = v119;
      v106 = [v119 objectAtIndexedSubscript:0];
      function = [v106 function];
      v108 = [optimizerCopy objectAtIndexedSubscript:0];
      optimizerAlgFields = [v108 optimizerAlgFields];
      bytes4 = [optimizerAlgFields bytes];
      LODWORD(function) = MEMORY[0x23EE75D80](function, bytes4, v116, bytes, v114, v123, 0);

      if (function)
      {
        v111 = +[MLCLog framework];
        if (os_log_type_enabled(v111, OS_LOG_TYPE_ERROR))
        {
          [MLCDeviceCPU(MLComputeEngineOptimizerUpdate) updateMultiheadAttentionLayer:optimizer:weightsParameter:biasesParameter:arrayOfParams:];
        }
      }
    }

    params = v117;
  }

  v112 = *MEMORY[0x277D85DE8];
}

- (void)updateEmbeddingLayer:(id)layer weightsParameter:(id)parameter optimizer:(id)optimizer arrayOfParams:(id)params
{
  v67[1] = *MEMORY[0x277D85DE8];
  layerCopy = layer;
  parameterCopy = parameter;
  optimizerCopy = optimizer;
  paramsCopy = params;
  if ([parameterCopy isUpdatable])
  {
    selfCopy = self;
    v62 = paramsCopy;
    v65 = layerCopy;
    v15 = [layerCopy objectAtIndexedSubscript:{0, a2}];
    v64 = parameterCopy;
    tensor = [parameterCopy tensor];
    params = [v15 params];
    v67[0] = [params bytes];

    v63 = optimizerCopy;
    v18 = [optimizerCopy objectAtIndexedSubscript:0];
    accumulatorBufferCount = [v18 accumulatorBufferCount];

    v60 = &v55;
    v57 = accumulatorBufferCount;
    v20 = 8 * accumulatorBufferCount;
    v21 = &v55 - ((8 * accumulatorBufferCount + 15) & 0xFFFFFFFFFFFFFFF0);
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
    source = [v15 source];
    bytes = [source bytes];
    v59 = source;
    v25 = [source length];
    v26 = v25 >> 3;
    descriptor = [tensor descriptor];
    shape = [descriptor shape];
    descriptor2 = [tensor descriptor];
    v30 = [shape objectAtIndexedSubscript:{objc_msgSend(descriptor2, "dimensionCount") - 1}];
    unsignedIntegerValue = [v30 unsignedIntegerValue];

    weightsDeltaData = [v15 weightsDeltaData];
    v33 = *([weightsDeltaData bytes] + 136);

    v61 = tensor;
    descriptor3 = [tensor descriptor];
    bzero(v33, [descriptor3 tensorAllocationSizeInBytes]);

    weightsDeltaDataBytes = [v15 weightsDeltaDataBytes];
    bytes2 = [weightsDeltaDataBytes bytes];

    paddingIndex = [v15 paddingIndex];

    if (paddingIndex)
    {
      if (v25 >= 8)
      {
        do
        {
          paddingIndex2 = [v15 paddingIndex];
          longLongValue = [paddingIndex2 longLongValue];
          v40 = *bytes;

          if (longLongValue != v40)
          {
            MEMORY[0x23EE765F0](&v33[4 * *bytes * unsignedIntegerValue], 1, bytes2, 1, &v33[4 * *bytes * unsignedIntegerValue], 1, unsignedIntegerValue);
          }

          bytes2 += 4 * unsignedIntegerValue;
          ++bytes;
          --v26;
        }

        while (v26);
      }
    }

    else if (v25 >= 8)
    {
      do
      {
        v41 = *bytes++;
        MEMORY[0x23EE765F0](&v33[4 * v41 * unsignedIntegerValue], 1, bytes2, 1, &v33[4 * v41 * unsignedIntegerValue], 1, unsignedIntegerValue);
        bytes2 += 4 * unsignedIntegerValue;
        --v26;
      }

      while (v26);
    }

    weightsDeltaData2 = [v15 weightsDeltaData];
    bytes3 = [weightsDeltaData2 bytes];

    v43 = v57;
    v44 = v58;
    if (v57)
    {
      v45 = 0;
      do
      {
        weightsMomentumData = [v15 weightsMomentumData];
        v47 = [weightsMomentumData objectAtIndexedSubscript:v45];
        *&v44[8 * v45] = [v47 bytes];

        ++v45;
      }

      while (v43 != v45);
    }

    paramsCopy = v62;
    optimizerCopy = v63;
    if (v62)
    {
      [(MLCDeviceCPU *)selfCopy accumulateParams:v67 gradients:&bytes3 accumulators:v44 numOfParameters:1 inArrayOfParams:v62];
      parameterCopy = v64;
      layerCopy = v65;
    }

    else
    {
      v48 = [v63 objectAtIndexedSubscript:0];
      function = [v48 function];
      v50 = [optimizerCopy objectAtIndexedSubscript:0];
      optimizerAlgFields = [v50 optimizerAlgFields];
      v52 = MEMORY[0x23EE75D80](function, [optimizerAlgFields bytes], 1, v67, &bytes3, v44, 0);

      parameterCopy = v64;
      layerCopy = v65;
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

- (void)updateAllParametersWithOptimizer:(id)optimizer arrayOfParameters:(id)parameters
{
  optimizerCopy = optimizer;
  parametersCopy = parameters;
  v7 = [parametersCopy objectAtIndexedSubscript:0];
  bytes = [v7 bytes];

  v8 = [parametersCopy objectAtIndexedSubscript:1];
  bytes2 = [v8 bytes];

  v9 = [parametersCopy objectAtIndexedSubscript:2];
  bytes3 = [v9 bytes];

  v10 = [parametersCopy objectAtIndexedSubscript:3];
  v11 = *[v10 bytes];

  v12 = [parametersCopy objectAtIndexedSubscript:4];
  v13 = *[v12 bytes];

  if (v11 != v13)
  {
    v14 = [optimizerCopy objectAtIndexedSubscript:0];
    accumulatorBufferCount = [v14 accumulatorBufferCount];

    if (accumulatorBufferCount >= 2)
    {
      v16 = 8 * v11;
      v17 = (bytes3 + 8 * v11);
      v18 = 1;
      v19 = (bytes3 + 8 * v13);
      do
      {
        memmove(v19, v17, 8 * v13);
        ++v18;
        v20 = [optimizerCopy objectAtIndexedSubscript:0];
        accumulatorBufferCount2 = [v20 accumulatorBufferCount];

        v17 += v16;
        v19 += 8 * v13;
      }

      while (v18 < accumulatorBufferCount2);
    }
  }

  v22 = [optimizerCopy objectAtIndexedSubscript:{0, a2}];
  function = [v22 function];
  v24 = [optimizerCopy objectAtIndexedSubscript:0];
  optimizerAlgFields = [v24 optimizerAlgFields];
  LODWORD(function) = MEMORY[0x23EE75D80](function, [optimizerAlgFields bytes], v13, bytes, bytes2, bytes3, 0);

  if (function)
  {
    v26 = +[MLCLog framework];
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      [MLCDeviceCPU(MLComputeEngineOptimizerUpdate) updateAllParametersWithOptimizer:arrayOfParameters:];
    }
  }

  v27 = [parametersCopy objectAtIndexedSubscript:4];
  *[v27 bytes] = 0;
}

- (void)updateTensorParameter:(id)parameter optimizer:(id)optimizer gradient:(id)gradient arrayOfParams:(id)params
{
  v48[1] = *MEMORY[0x277D85DE8];
  parameterCopy = parameter;
  optimizerCopy = optimizer;
  gradientCopy = gradient;
  paramsCopy = params;
  if ([parameterCopy isUpdatable])
  {
    selfCopy = self;
    tensor = [parameterCopy tensor];
    optimizerDeviceData = [tensor optimizerDeviceData];
    v17 = [optimizerDeviceData objectAtIndexedSubscript:0];

    tensor2 = [parameterCopy tensor];
    deviceMemory = [tensor2 deviceMemory];

    v45 = deviceMemory;
    v20 = [deviceMemory objectAtIndexedSubscript:0];
    v46 = gradientCopy;
    deviceMemory2 = [gradientCopy deviceMemory];
    v21 = [deviceMemory2 objectAtIndexedSubscript:0];
    sourceBNNSDesc = [v17 sourceBNNSDesc];
    bytes = [sourceBNNSDesc bytes];

    gradientBNNSDesc = [v17 gradientBNNSDesc];
    bytes2 = [gradientBNNSDesc bytes];

    v44 = v20;
    *(bytes + 136) = [v20 bytes];
    *(bytes2 + 136) = [v21 bytes];
    v47 = bytes2;
    v48[0] = bytes;
    v26 = [optimizerCopy objectAtIndexedSubscript:0];
    accumulatorBufferCount = [v26 accumulatorBufferCount];

    v42 = &v40;
    v28 = &v40 - ((8 * accumulatorBufferCount + 15) & 0xFFFFFFFFFFFFFFF0);
    if ((8 * accumulatorBufferCount) >= 0x200)
    {
      v29 = 512;
    }

    else
    {
      v29 = 8 * accumulatorBufferCount;
    }

    bzero(&v40 - ((8 * accumulatorBufferCount + 15) & 0xFFFFFFFFFFFFFFF0), v29);
    bzero(&v40 - ((8 * accumulatorBufferCount + 15) & 0xFFFFFFFFFFFFFFF0), 8 * accumulatorBufferCount);
    if (accumulatorBufferCount)
    {
      for (i = 0; i != accumulatorBufferCount; ++i)
      {
        momentumData = [v17 momentumData];
        v32 = [momentumData objectAtIndexedSubscript:i];
        *&v28[8 * i] = [v32 bytes];
      }
    }

    if (paramsCopy)
    {
      [(MLCDeviceCPU *)selfCopy accumulateParams:v48 gradients:&v47 accumulators:&v40 - ((8 * accumulatorBufferCount + 15) & 0xFFFFFFFFFFFFFFF0) numOfParameters:1 inArrayOfParams:paramsCopy];
      gradientCopy = v46;
    }

    else
    {
      v33 = [optimizerCopy objectAtIndexedSubscript:0];
      function = [v33 function];
      v35 = [optimizerCopy objectAtIndexedSubscript:0];
      optimizerAlgFields = [v35 optimizerAlgFields];
      v37 = MEMORY[0x23EE75D80](function, [optimizerAlgFields bytes], 1, v48, &v47, v28, 0);

      gradientCopy = v46;
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

- (void)copyBiasFromBNNSToMLCTensor:(id)tensor biasTensors:(id)tensors baseGateIndex:(unint64_t)index lstmDescriptor:(id)descriptor
{
  tensorCopy = tensor;
  tensorsCopy = tensors;
  descriptorCopy = descriptor;
  layerCount = [descriptorCopy layerCount];
  hiddenSize = [descriptorCopy hiddenSize];
  isBidirectional = [descriptorCopy isBidirectional];
  v12 = [tensorCopy objectAtIndexedSubscript:index];
  if (layerCount)
  {
    v13 = 0;
    v19 = 4 * layerCount;
    do
    {
      v14 = [tensorsCopy objectAtIndexedSubscript:index];
      data = [v14 data];
      memcpy([data bytes], (objc_msgSend(v12, "bytes") + 4 * (v13 << isBidirectional)), 4 * hiddenSize);

      if (isBidirectional)
      {
        index = [tensorsCopy objectAtIndexedSubscript:v19 + index];
        data2 = [index data];
        memcpy([data2 bytes], (objc_msgSend(v12, "bytes") + 4 * (v13 << isBidirectional) + 4 * hiddenSize), 4 * hiddenSize);
      }

      index += 4;
      v13 += hiddenSize;
      --layerCount;
    }

    while (layerCount);
  }
}

- (void)synchronizeUpdatesForLayer:(id)layer
{
  layerCopy = layer;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = layerCopy;
    descriptor = [v4 descriptor];
    if ([descriptor isBidirectional])
    {
    }

    else
    {
      descriptor2 = [v4 descriptor];
      layerCount = [descriptor2 layerCount];

      if (layerCount < 2)
      {
LABEL_8:

        goto LABEL_9;
      }
    }

    deviceOps = [v4 deviceOps];
    v9 = [deviceOps objectAtIndexedSubscript:0];

    combinedGateWeightsAndBias = [v9 combinedGateWeightsAndBias];
    descriptor3 = [v4 descriptor];
    usesBiases = [descriptor3 usesBiases];

    if (usesBiases)
    {
      biases = [v4 biases];
      descriptor4 = [v4 descriptor];
      [(MLCDeviceCPU *)self copyBiasFromBNNSToMLCTensor:combinedGateWeightsAndBias biasTensors:biases baseGateIndex:0 lstmDescriptor:descriptor4];

      biases2 = [v4 biases];
      descriptor5 = [v4 descriptor];
      [(MLCDeviceCPU *)self copyBiasFromBNNSToMLCTensor:combinedGateWeightsAndBias biasTensors:biases2 baseGateIndex:1 lstmDescriptor:descriptor5];

      biases3 = [v4 biases];
      descriptor6 = [v4 descriptor];
      [(MLCDeviceCPU *)self copyBiasFromBNNSToMLCTensor:combinedGateWeightsAndBias biasTensors:biases3 baseGateIndex:2 lstmDescriptor:descriptor6];

      biases4 = [v4 biases];
      descriptor7 = [v4 descriptor];
      [(MLCDeviceCPU *)self copyBiasFromBNNSToMLCTensor:combinedGateWeightsAndBias biasTensors:biases4 baseGateIndex:3 lstmDescriptor:descriptor7];
    }

    goto LABEL_8;
  }

LABEL_9:

  MEMORY[0x2821F96F8]();
}

- (void)exportBiasGateOptimizerDataForDeviceOps:(id)ops biasTensors:(id)tensors gateIndex:(unint64_t)index optimizerDataIndex:(unint64_t)dataIndex
{
  opsCopy = ops;
  tensorsCopy = tensors;
  numLayers = [opsCopy numLayers];
  biDirectional = [opsCopy biDirectional];
  hiddenSize = [opsCopy hiddenSize];
  biasMomentumData = [opsCopy biasMomentumData];
  dataIndex = [biasMomentumData objectAtIndexedSubscript:index + 4 * dataIndex];

  v28 = dataIndex;
  bytes = [dataIndex bytes];
  if (numLayers)
  {
    v15 = 0;
    v16 = 0;
    v17 = 4 * hiddenSize;
    v32 = biDirectional;
    v30 = numLayers;
    v31 = hiddenSize;
    do
    {
      v18 = 0;
      v19 = 4 * v15;
      v20 = 1;
      v34 = v16;
      do
      {
        v21 = [tensorsCopy objectAtIndexedSubscript:index + 4 * (v16 + v18 * numLayers)];
        [v21 optimizerData];
        v23 = v22 = tensorsCopy;
        [v23 objectAtIndexedSubscript:dataIndex];
        indexCopy = index;
        v26 = v25 = dataIndex;
        memcpy([v26 bytes], (*(bytes + 136) + v19), v17);

        dataIndex = v25;
        index = indexCopy;

        tensorsCopy = v22;
        numLayers = v30;

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

- (void)convertUpdatesToTensorDataForLayer:(id)layer
{
  layerCopy = layer;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = layerCopy;
    deviceOps = [v4 deviceOps];
    v6 = [deviceOps objectAtIndexedSubscript:0];

    biases = [v4 biases];
    v8 = biases;
    if (biases)
    {
      v9 = [biases objectAtIndexedSubscript:0];
      optimizerData = [v9 optimizerData];
      v11 = [optimizerData count];

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

- (void)setOptimizerLearningRate:(id)rate learningRate:(float)learningRate
{
  v5 = [rate objectAtIndexedSubscript:0];
  optimizerAlgFields = [v5 optimizerAlgFields];

  v6 = optimizerAlgFields;
  *[optimizerAlgFields bytes] = learningRate;
}

- (void)setOptimizerTimeStep:(id)step timeStep:(unint64_t)timeStep
{
  v5 = [step objectAtIndexedSubscript:0];
  optimizerAlgFields = [v5 optimizerAlgFields];

  v6 = optimizerAlgFields;
  *([optimizerAlgFields bytes] + 12) = timeStep;
}

- (void)reloadParameterDataFromHostToDeviceMemoryForTensor:(id)tensor
{
  tensorCopy = tensor;
  childLayers = [tensorCopy childLayers];
  v5 = [childLayers objectAtIndexedSubscript:0];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    biases = [v6 biases];

    if (biases && ([v6 biases], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "count"), v8, biases = 0, v9))
    {
      while (1)
      {
        biases2 = [v6 biases];
        v11 = [biases2 objectAtIndexedSubscript:biases];

        v12 = v11 == tensorCopy;
        if (v11 == tensorCopy)
        {
          break;
        }

        ++biases;
        biases3 = [v6 biases];
        v14 = [biases3 count];

        if (biases >= v14)
        {
          biases = 0;
          break;
        }
      }
    }

    else
    {
      v12 = 0;
    }

    v15 = v6;
    v16 = tensorCopy;
    deviceOps = [v15 deviceOps];
    v18 = [deviceOps objectAtIndexedSubscript:0];

    params = [v18 params];
    bytes = [params bytes];
    [v18 inputSize];
    hiddenSize = [v18 hiddenSize];
    biDirectional = [v18 biDirectional];
    numLayers = [v18 numLayers];
    v36 = 4 * numLayers;
    if (numLayers >= 2)
    {
      if (([v18 biDirectional] & 1) == 0)
      {
        v23 = biases >> 2;
LABEL_15:
        v34 = v23;
        if (v12)
        {
LABEL_16:
          biases4 = [v15 biases];

          if (biases4)
          {
            v33 = *(bytes + 928 * (biases & 3) + 2120);
            data = [v16 data];
            v26 = [data length];

            if (v26 != 4 * hiddenSize)
            {
              v27 = +[MLCLog framework];
              if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
              {
                [MLCDeviceCPU(MLComputeEngineOptimizerUpdate) reloadParameterDataFromHostToDeviceMemoryForTensor:v16];
              }
            }

            if (biases >= v36)
            {
              v28 = hiddenSize;
            }

            else
            {
              v28 = 0;
            }

            v29 = (v33 + 4 * (v34 << biDirectional) * hiddenSize + 4 * v28);
            data2 = [v16 data];
            bytes2 = [data2 bytes];
            data3 = [v16 data];
            memcpy(v29, bytes2, [data3 length]);
          }
        }

LABEL_25:

        goto LABEL_26;
      }

      if ([v18 biDirectional])
      {
        v23 = (biases - v36) >> 2;
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

- (void)accumulateParams:(void *)params gradients:(void *)gradients accumulators:(void *)accumulators numOfParameters:(unint64_t)parameters inArrayOfParams:(id)ofParams
{
  ofParamsCopy = ofParams;
  v10 = [ofParamsCopy objectAtIndexedSubscript:0];
  bytes = [v10 bytes];

  v12 = [ofParamsCopy objectAtIndexedSubscript:1];
  bytes2 = [v12 bytes];

  v14 = [ofParamsCopy objectAtIndexedSubscript:2];
  bytes3 = [v14 bytes];

  v16 = [ofParamsCopy objectAtIndexedSubscript:3];
  v17 = *[v16 bytes];

  v18 = [ofParamsCopy objectAtIndexedSubscript:4];
  bytes4 = [v18 bytes];

  v20 = [ofParamsCopy objectAtIndexedSubscript:5];
  v21 = *[v20 bytes];

  memcpy((bytes + 8 * *bytes4), params, 8 * parameters);
  memcpy((bytes2 + 8 * *bytes4), gradients, 8 * parameters);
  for (; v21; --v21)
  {
    memcpy((bytes3 + 8 * *bytes4), accumulators, 8 * parameters);
    bytes3 += 8 * v17;
    accumulators += parameters;
  }

  *bytes4 += parameters;
}

- (void)restoreRNNParamsWithDeviceOps:(id)ops optimizer:(id)optimizer inputWeightsParameter:(id)parameter hiddenWeightsParameter:(id)weightsParameter biasesParameter:(id)biasesParameter arrayOfParams:(id)params
{
  optimizerCopy = optimizer;
  biasesParameterCopy = biasesParameter;
  v12 = [ops objectAtIndexedSubscript:0];
  params = [v12 params];
  [params bytes];
  lstmDeltaParams = [v12 lstmDeltaParams];
  [lstmDeltaParams bytes];

  if ([v12 hasBias])
  {
    v15 = [optimizerCopy objectAtIndexedSubscript:0];
    accumulatorBufferCount = [v15 accumulatorBufferCount];

    if (biasesParameterCopy)
    {
      if ([biasesParameterCopy count])
      {
        if ([biasesParameterCopy count])
        {
          v17 = 0;
          v18 = 0;
          do
          {
            v19 = [biasesParameterCopy objectAtIndexedSubscript:v18];
            isUpdatable = [v19 isUpdatable];

            v17 |= isUpdatable;
            ++v18;
          }

          while (v18 < [biasesParameterCopy count]);
          if (v17)
          {
            if (accumulatorBufferCount)
            {
              v21 = 3;
              do
              {
                biasMomentumData = [v12 biasMomentumData];
                v23 = [biasMomentumData objectAtIndexedSubscript:v21 - 3];
                [v23 bytes];

                biasMomentumData2 = [v12 biasMomentumData];
                v25 = [biasMomentumData2 objectAtIndexedSubscript:v21 - 2];
                [v25 bytes];

                biasMomentumData3 = [v12 biasMomentumData];
                v27 = [biasMomentumData3 objectAtIndexedSubscript:v21 - 1];
                [v27 bytes];

                biasMomentumData4 = [v12 biasMomentumData];
                v29 = [biasMomentumData4 objectAtIndexedSubscript:v21];
                [v29 bytes];

                v21 += 4;
                --accumulatorBufferCount;
              }

              while (accumulatorBufferCount);
            }

            if ([biasesParameterCopy count])
            {
              v30 = 0;
              v31 = 0;
              do
              {
                v32 = [biasesParameterCopy objectAtIndexedSubscript:v30];
                isUpdatable2 = [v32 isUpdatable];

                if ((isUpdatable2 & 1) == 0)
                {
                  auxBiasTerms = [v12 auxBiasTerms];
                  auxBiasTermsAccumulators = [v12 auxBiasTermsAccumulators];
                  [(MLCDeviceCPU *)self saveOrRestoreLSTMBiasesAndAccumulators:v12 auxParameter:auxBiasTerms auxAccumulators:auxBiasTermsAccumulators mlcIndex:v30 auxIndex:v31 saveParameter:0];

                  ++v31;
                }

                ++v30;
              }

              while (v30 < [biasesParameterCopy count]);
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