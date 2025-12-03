@interface MLCDeviceGPU
+ (id)filteredGPUListIncludingLowPoweredBuiltin:(BOOL)builtin;
+ (unint64_t)calculateImageSizeForTensor:(id)tensor;
- (BOOL)canFuseConvolutionLayerForInference:(id)inference;
- (BOOL)canFuseFullyConnectedLayerForInference:(id)inference;
- (BOOL)checkToConvertTensor:(id)tensor inLayer:(id)layer;
- (BOOL)compileLayerDeviceOps:(id)ops sourceTensors:(id)tensors resultTensor:(id)tensor;
- (BOOL)compileLayerDeviceOps:(id)ops sourceTensors:(id)tensors resultTensors:(id)resultTensors;
- (BOOL)createPipelineStatesForMissingActivationFunctions;
- (BOOL)isEqual:(id)equal;
- (BOOL)isResultTensorUsedForGradientComputationByLayer:(id)layer;
- (BOOL)needToAllocateDeviceMemoryForTensor:(id)tensor;
- (BOOL)needToAllocateDeviceMemoryForTensor:(id)tensor batchSize:(unint64_t)size;
- (BOOL)shareDeviceMemoryWithResultTensor:(id)tensor sourceTensor:(id)sourceTensor;
- (BOOL)synchronizeTensor:(id)tensor;
- (BOOL)synchronizeTensorOnHost:(id)host;
- (BOOL)transferTensor:(id)tensor fromDevice:(id)device;
- (MLCDeviceGPU)initWithDeviceList:(id)list;
- (MLCDeviceGPU)initWithType:(int)type gpuDeviceList:(id)list gpuLocalEventList:(id)eventList gpuSharedEventList:(id)sharedEventList currentEventValue:(unint64_t *)value gpuCommandQueueList:(id)queueList gpuCommandBufferList:(id)bufferList gpuMPSCommandBufferList:(id)self0;
- (MLCDeviceGPU)initWithType:(int)type selectsMultipleComputeDevices:(BOOL)devices;
- (NSString)description;
- (id)allocateDeviceMemoryForTensor:(id)tensor device:(id)device count:(unint64_t)count;
- (id)batchNormalizationLayerWithChannelCount:(unint64_t)count mean:(id)mean variance:(id)variance beta:(id)beta gamma:(id)gamma varianceEpsilon:(float)epsilon momentum:(float)momentum;
- (id)betaGradients:(id)gradients;
- (id)biasesGradients:(id)gradients;
- (id)convolutionLayerWithDescriptor:(id)descriptor weights:(id)weights biasTerms:(id)terms;
- (id)copyWithZone:(_NSZone *)zone;
- (id)createOptimizerDeviceDataForTensor:(id)tensor optimizer:(id)optimizer optimizerData:(id)data isVector:(BOOL)vector;
- (id)dropoutLayerWithRate:(float)rate seed:(unint64_t)seed;
- (id)embeddingWeightsGradients:(id)gradients embeddingCount:(unint64_t)count embeddingDimension:(unint64_t)dimension;
- (id)fullyConnectedLayerWithDescriptor:(id)descriptor weights:(id)weights biasTerms:(id)terms;
- (id)fusedBatchNormalizationAndNeuronLayerWithDescriptor:(id)descriptor numOfFeatureChannels:(unint64_t)channels mean:(id)mean variance:(id)variance beta:(id)beta gamma:(id)gamma varianceEpsilon:(float)epsilon momentum:(float)self0;
- (id)fusedConvolutionAndNeuronLayerWithDescriptor:(id)descriptor convolutionDescriptor:(id)convolutionDescriptor weights:(id)weights biasTerms:(id)terms;
- (id)fusedFullyConnectedAndNeuronLayerWithDescriptor:(id)descriptor convolutionDescriptor:(id)convolutionDescriptor weights:(id)weights biasTerms:(id)terms;
- (id)fusedInstanceNormalizationAndNeuronLayerWithDescriptor:(id)descriptor numOfFeatureChannels:(unint64_t)channels mean:(id)mean variance:(id)variance beta:(id)beta gamma:(id)gamma varianceEpsilon:(float)epsilon momentum:(float)self0;
- (id)gammaGradients:(id)gradients;
- (id)gatherLayerWithDimension:(unint64_t)dimension;
- (id)getGradientBufferForNormalizationState:(id)state layer:(id)layer isBetaTensor:(BOOL)tensor;
- (id)getHostPointerIfUnifiedDeviceMemory:(id)memory;
- (id)gramMatrixLayerWithScaleFactor:(float)factor;
- (id)groupNormalizationLayerWithFeatureChannelCount:(unint64_t)count groupCount:(unint64_t)groupCount beta:(id)beta gamma:(id)gamma varianceEpsilon:(float)epsilon;
- (id)instanceNormalizationLayerWithChannelCount:(unint64_t)count mean:(id)mean variance:(id)variance beta:(id)beta gamma:(id)gamma varianceEpsilon:(float)epsilon momentum:(float)momentum;
- (id)lstmBiasGradient:(id)gradient mlcBiasIndex:(unint64_t)index;
- (id)lstmHiddenWeightGradient:(id)gradient mlcWeightIndex:(unint64_t)index;
- (id)lstmInputWeightGradient:(id)gradient mlcWeightIndex:(unint64_t)index;
- (id)lstmLayerWithDescriptor:(id)descriptor inputWeights:(id)weights hiddenWeights:(id)hiddenWeights peepholeWeights:(id)peepholeWeights biasTerms:(id)terms gateActivations:(id)activations outputResultActivation:(id)activation inferenceOnly:(BOOL)self0;
- (id)matMulLayerWithDescriptor:(id)descriptor sourceTensors:(id)tensors resultTensor:(id)tensor inferenceOnly:(BOOL)only;
- (id)mhaAttnBiasGradient:(id)gradient withSize:(unint64_t)size index:(unint64_t)index;
- (id)mhaBiasGradient:(id)gradient withSize:(unint64_t)size index:(unint64_t)index;
- (id)mhaWeightGradient:(id)gradient withSize:(unint64_t)size index:(unint64_t)index;
- (id)neuronLayerWithDescriptor:(id)descriptor;
- (id)poolingLayerWithDescriptor:(id)descriptor paddingSizes:(unint64_t *)sizes;
- (id)readTensor:(id)tensor;
- (id)readTensor:(id)tensor fromDeviceIndex:(unint64_t)index;
- (id)readTensor:(id)tensor fromDeviceIndex:(unint64_t)index batchSize:(unint64_t)size;
- (id)reshapeLayerWithShape:(id)shape;
- (id)selectLayer;
- (id)sliceLayerWithbegin:(id)withbegin end:(id)end stride:(id)stride inferenceOnly:(BOOL)only;
- (id)splitLayerWithDimension:(unint64_t)dimension;
- (id)transposeLayerWithShape:(id)shape;
- (id)weightsGradients:(id)gradients;
- (unint64_t)allocatedDeviceDataSizeForTraining:(BOOL)training layer:(id)layer;
- (unint64_t)deviceMemorySizeForTensor:(id)tensor;
- (void)allReduceOverXGMI:(id)i deviceIndex:(unint64_t)index stateBuffers:(id)buffers;
- (void)allocateCommandBufferForDeviceAtIndex:(unint64_t)index;
- (void)allocateDeviceDataForGlobalNormClippingWithOptimizer:(id)optimizer updatableParameterCount:(unint64_t)count;
- (void)allocateDeviceHeapForGraph:(id)graph forInference:(BOOL)inference;
- (void)allocateDeviceMemoryForTensor:(id)tensor;
- (void)allocateDeviceMemoryForTensor:(id)tensor batchSize:(unint64_t)size;
- (void)allocateResultTensor:(id)tensor;
- (void)broadcastTensor:(id)tensor;
- (void)broadcastTensor:(id)tensor batchSize:(unint64_t)size;
- (void)commitAndWaitForCompletion:(id)completion enableProfiling:(BOOL)profiling graphExecutionTime:(id)time graphResultTensor:(id)tensor;
- (void)commitDeviceAtIndex:(unint64_t)index;
- (void)commitWithCompletionHandler:(id)handler enableProfiling:(BOOL)profiling graphExecutionTime:(id)time graphResultTensor:(id)tensor;
- (void)convertUpdatesToTensorDataForLayer:(id)layer;
- (void)convertUpdatesToTensorDataForTensorParameters:(id)parameters;
- (void)copyMTLBuffer:(id)buffer toBytes:(void *)bytes length:(unint64_t)length;
- (void)copyMTLBuffer:(id)buffer toNSData:(id)data;
- (void)dealloc;
- (void)deallocateDeviceMemoryForTensor:(id)tensor;
- (void)dispatchBroadcastTensor:(id)tensor;
- (void)dispatchBroadcastTensor:(id)tensor batchSize:(unint64_t)size;
- (void)dispatchFillTensor:(id)tensor deviceIndex:(unint64_t)index;
- (void)dispatchForwardActivationsKernel:(id)kernel sourceTensor:(id)tensor resultTensor:(id)resultTensor deviceIndex:(unint64_t)index;
- (void)dispatchForwardAndGradientLossLayer:(id)layer sourceTensor:(id)tensor labelsTensor:(id)labelsTensor labelsTensorStride:(unint64_t)stride weightsTensor:(id)weightsTensor resultTensor:(id)resultTensor resultGradientTensor:(id)gradientTensor;
- (void)dispatchForwardArithmeticBinaryKernel:(id)kernel sourceTensor:(id)tensor sourceSecondaryTensor:(id)secondaryTensor resultTensor:(id)resultTensor deviceIndex:(unint64_t)index;
- (void)dispatchForwardArithmeticTertiaryKernel:(id)kernel sourceTensor:(id)tensor sourceSecondaryTensor:(id)secondaryTensor sourceTertiaryTensor:(id)tertiaryTensor resultTensor:(id)resultTensor deviceIndex:(unint64_t)index;
- (void)dispatchForwardArithmeticUnaryKernel:(id)kernel sourceTensor:(id)tensor resultTensor:(id)resultTensor deviceIndex:(unint64_t)index;
- (void)dispatchForwardBatchNormalizationKernel:(id)kernel sourceTensor:(id)tensor resultTensor:(id)resultTensor deviceIndex:(unint64_t)index forTraining:(BOOL)training;
- (void)dispatchForwardCompareLayer:(id)layer sourceTensor:(id)tensor secondaryTensor:(id)secondaryTensor resultTensor:(id)resultTensor compareOp:(int)op forTraining:(BOOL)training;
- (void)dispatchForwardEmbeddingLayer:(id)layer weight:(id)weight sourceTensor:(id)tensor resultTensor:(id)resultTensor;
- (void)dispatchForwardFullyConnectedLayer:(id)layer sourceTensor:(id)tensor resultTensor:(id)resultTensor forTraining:(BOOL)training;
- (void)dispatchForwardGatherLayer:(id)layer sourceTensors:(id)tensors resultTensor:(id)tensor forTraining:(BOOL)training;
- (void)dispatchForwardGramMatrixKernel:(id)kernel sourceTensor:(id)tensor resultTensor:(id)resultTensor deviceIndex:(unint64_t)index forTraining:(BOOL)training;
- (void)dispatchForwardGroupNormalizationKernel:(id)kernel sourceTensor:(id)tensor resultTensor:(id)resultTensor deviceIndex:(unint64_t)index forTraining:(BOOL)training;
- (void)dispatchForwardInstanceNormalizationKernel:(id)kernel sourceTensor:(id)tensor resultTensor:(id)resultTensor deviceIndex:(unint64_t)index forTraining:(BOOL)training;
- (void)dispatchForwardLayer:(id)layer sourceTensor:(id)tensor secondaryTensor:(id)secondaryTensor tertiaryTensor:(id)tertiaryTensor resultTensor:(id)resultTensor resultStateIsTemporary:(BOOL)temporary forTraining:(BOOL)training;
- (void)dispatchForwardLayerNormalizationKernel:(id)kernel sourceTensors:(id)tensors resultTensor:(id)tensor deviceIndex:(unint64_t)index forTraining:(BOOL)training;
- (void)dispatchForwardLossLayer:(id)layer sourceTensor:(id)tensor labelsTensor:(id)labelsTensor labelsTensorStride:(unint64_t)stride weightsTensor:(id)weightsTensor resultTensor:(id)resultTensor resultStateIsTemporary:(BOOL)temporary forTraining:(BOOL)self0;
- (void)dispatchForwardMHALayer:(id)layer sourceTensors:(id)tensors resultTensor:(id)tensor resultStateIsTemporary:(BOOL)temporary forTraining:(BOOL)training;
- (void)dispatchForwardMatMulLayer:(id)layer sourceTensors:(id)tensors resultTensor:(id)tensor;
- (void)dispatchForwardPaddingKernel:(id)kernel sourceTensor:(id)tensor resultTensor:(id)resultTensor deviceIndex:(unint64_t)index;
- (void)dispatchForwardPoolingKernel:(id)kernel sourceTensor:(id)tensor resultTensor:(id)resultTensor deviceIndex:(unint64_t)index forTraining:(BOOL)training;
- (void)dispatchForwardReduceLayer:(id)layer sourceTensor:(id)tensor resultTensor:(id)resultTensor reductionType:(int)type reduceDimensions:(id)dimensions forTraining:(BOOL)training;
- (void)dispatchForwardResizeKernel:(id)kernel sourceTensor:(id)tensor resultTensor:(id)resultTensor deviceIndex:(unint64_t)index;
- (void)dispatchForwardScatterLayer:(id)layer sourceTensors:(id)tensors resultTensor:(id)tensor forTraining:(BOOL)training;
- (void)dispatchForwardSelectLayer:(id)layer conditionTensor:(id)tensor sourceTensors:(id)tensors resultTensor:(id)resultTensor forTraining:(BOOL)training;
- (void)dispatchForwardSliceLayer:(id)layer sourceTensor:(id)tensor resultTensor:(id)resultTensor forTraining:(BOOL)training;
- (void)dispatchForwardSoftmaxKernel:(id)kernel sourceTensor:(id)tensor resultTensor:(id)resultTensor deviceIndex:(unint64_t)index;
- (void)dispatchForwardSplitLayer:(id)layer sourceTensor:(id)tensor resultTensors:(id)tensors forConcat:(BOOL)concat;
- (void)dispatchGradientActivationsKernel:(id)kernel sourceGradientTensor:(id)tensor resultGradientTensor:(id)gradientTensor deviceIndex:(unint64_t)index;
- (void)dispatchGradientArithmeticBinaryKernel:(id)kernel sourceGradientTensor:(id)tensor resultGradientTensor:(id)gradientTensor secondaryResultGradientTensor:(id)resultGradientTensor deviceIndex:(unint64_t)index;
- (void)dispatchGradientArithmeticUnaryKernel:(id)kernel sourceGradientTensor:(id)tensor resultGradientTensor:(id)gradientTensor deviceIndex:(unint64_t)index;
- (void)dispatchGradientBatchNormalizationKernel:(id)kernel sourceGradientTensor:(id)tensor resultGradientTensor:(id)gradientTensor deviceIndex:(unint64_t)index;
- (void)dispatchGradientEmbeddingLayer:(id)layer sourceGradientTensor:(id)tensor;
- (void)dispatchGradientFullyConnectedLayer:(id)layer sourceGradientTensor:(id)tensor resultGradientTensor:(id)gradientTensor resultStateIsTemporary:(BOOL)temporary;
- (void)dispatchGradientGramMatrixKernel:(id)kernel sourceGradientTensor:(id)tensor resultGradientTensor:(id)gradientTensor deviceIndex:(unint64_t)index;
- (void)dispatchGradientGroupNormalizationKernel:(id)kernel sourceGradientTensor:(id)tensor resultGradientTensor:(id)gradientTensor deviceIndex:(unint64_t)index;
- (void)dispatchGradientInstanceNormalizationKernel:(id)kernel sourceGradientTensor:(id)tensor resultGradientTensor:(id)gradientTensor deviceIndex:(unint64_t)index;
- (void)dispatchGradientLayer:(id)layer sourceGradientTensor:(id)tensor resultGradientTensor:(id)gradientTensor;
- (void)dispatchGradientLayer:(id)layer sourceGradientTensor:(id)tensor resultGradientTensor:(id)gradientTensor secondaryResultGradientTensor:(id)resultGradientTensor;
- (void)dispatchGradientLayerNormalizationKernel:(id)kernel sourceGradientTensor:(id)tensor resultGradientTensor:(id)gradientTensor deviceIndex:(unint64_t)index;
- (void)dispatchGradientLossLayer:(id)layer sourceGradientTensor:(id)tensor labelsTensor:(id)labelsTensor labelsTensorStride:(unint64_t)stride weightsTensor:(id)weightsTensor resultGradientTensor:(id)gradientTensor;
- (void)dispatchGradientMHALayer:(id)layer sourceGradientTensor:(id)tensor resultGradientTensors:(id)tensors resultStateIsTemporary:(BOOL)temporary;
- (void)dispatchGradientMatMulLayer:(id)layer sourceGradientTensor:(id)tensor resultGradientTensors:(id)tensors;
- (void)dispatchGradientPaddingKernel:(id)kernel sourceGradientTensor:(id)tensor resultGradientTensor:(id)gradientTensor deviceIndex:(unint64_t)index;
- (void)dispatchGradientPoolingKernel:(id)kernel sourceGradientTensor:(id)tensor resultGradientTensor:(id)gradientTensor deviceIndex:(unint64_t)index;
- (void)dispatchGradientReduceLayer:(id)layer sourceGradientTensor:(id)tensor resultGradientTensor:(id)gradientTensor reductionType:(int)type reduceDimensions:(id)dimensions;
- (void)dispatchGradientResizeKernel:(id)kernel sourceGradientTensor:(id)tensor resultGradientTensor:(id)gradientTensor deviceIndex:(unint64_t)index;
- (void)dispatchGradientSelectLayer:(id)layer conditionTensor:(id)tensor sourceGradientTensor:(id)gradientTensor resultGradientTensors:(id)tensors;
- (void)dispatchGradientSliceLayer:(id)layer sourceGradientTensor:(id)tensor resultGradientTensor:(id)gradientTensor;
- (void)dispatchGradientSoftmaxKernel:(id)kernel sourceGradientTensor:(id)tensor resultGradientTensor:(id)gradientTensor deviceIndex:(unint64_t)index;
- (void)dispatchGradientSplitLayer:(id)layer sourceGradientTensors:(id)tensors resultGradientTensor:(id)tensor forConcat:(BOOL)concat;
- (void)dispatchPadChannelsKernel:(id)kernel sourceImageBatch:(id)batch resultImageBatch:(id)imageBatch deviceIndex:(unint64_t)index;
- (void)dispatchRNNForwardLayer:(id)layer sourceTensors:(id)tensors resultTensors:(id)resultTensors;
- (void)dispatchRNNForwardLayer:(id)layer sourceTensors:(id)tensors resultTensors:(id)resultTensors resultStateIsTemporary:(BOOL)temporary forTraining:(BOOL)training;
- (void)dispatchRNNGradientLayer:(id)layer sourceGradientTensors:(id)tensors resultGradientTensors:(id)gradientTensors;
- (void)dispatchReadTensor:(id)tensor targetBuffer:(void *)buffer batchSize:(unint64_t)size;
- (void)dispatchReadTensorFromAllDevices:(id)devices targetBuffer:(void *)buffer batchSize:(unint64_t)size;
- (void)dispatchTransposeKernel:(id)kernel sourceTensor:(id)tensor resultTensor:(id)resultTensor deviceIndex:(unint64_t)index forward:(BOOL)forward;
- (void)encodePrimitiveToCommandBuffer:(id)buffer gpuDeviceOps:(id)ops sourceTensor:(id)tensor secondaryTensor:(id)secondaryTensor tertiaryTensor:(id)tertiaryTensor resultTensor:(id)resultTensor params:(CompareParams *)params sizeOfParams:(unint64_t)self0 pipelineState:(id)self1 deviceIndex:(unint64_t)self2;
- (void)incrementReadCountForGradientState:(id)state increment:(int64_t)increment;
- (void)incrementReadCountForTensorDeviceMemory:(id)memory increment:(int64_t)increment;
- (void)multiDeviceTensorReduction:(id)reduction sourceBuffer:(void *)buffer targetBuffer:(void *)targetBuffer;
- (void)readTensor:(id)tensor fromDeviceIndex:(unint64_t)index targetBuffer:(void *)buffer batchSize:(unint64_t)size reduceOverBatch:(BOOL)batch;
- (void)readTensor:(id)tensor targetBuffer:(void *)buffer;
- (void)reduceAcrossBatchForSource:(id)source result:(id)result batchSize:(unint64_t)size batchStride:(unint64_t)stride numEntries:(unint64_t)entries deviceIndex:(unint64_t)index commandBuffer:(id)buffer;
- (void)reloadLSTMParameters:(id)parameters rnnGPUDeviceOps:(id)ops mlcParameterIndex:(unint64_t)index tensor:(id)tensor isInputWeight:(BOOL)weight isHiddenWeight:(BOOL)hiddenWeight isBias:(BOOL)bias deviceNumber:(unint64_t)self0;
- (void)reloadParameterDataFromHostToDeviceMemoryForTensor:(id)tensor;
- (void)restoreConvolutionParamsWithDeviceOps:(id)ops;
- (void)restoreRNNParamsWithDeviceOps:(id)ops optimizer:(id)optimizer inputWeightsParameter:(id)parameter hiddenWeightsParameter:(id)weightsParameter biasesParameter:(id)biasesParameter arrayOfParams:(id)params;
- (void)rotateAndCopyMTLBuffer:(id)buffer toNSData:(id)data withTensorDescriptor:(id)descriptor;
- (void)saveOrRestoreTempMatrixDisableUpdates:(id)updates commandBuffer:(id)buffer auxiliaryWeightsMemory:(id)memory auxiliaryMomentumMemory:(id)momentumMemory auxiliaryVelocityMemory:(id)velocityMemory auxiliaryCenterWeightMemory:(id)weightMemory deviceNumber:(unint64_t)number kernelNumber:(unint64_t)self0 mlcIndex:(unint64_t)self1 auxIndex:(unint64_t)self2 numOptimizerData:(unint64_t)self3 saveToAux:(BOOL)self4 isInputWeight:(BOOL)self5 isHiddenWeight:(BOOL)self6 isBias:(BOOL)self7;
- (void)selectDevicesWithBatchSize:(unint64_t)size calledfromBindAndWrite:(BOOL)write;
- (void)setDeviceMemoryForTensor:(id)tensor data:(id)data;
- (void)setOptimizerLearningRate:(id)rate learningRate:(float)learningRate;
- (void)setOptimizerTimeStep:(id)step timeStep:(unint64_t)timeStep;
- (void)signalAllDevicesExcludingDevice:(unint64_t)device eventValue:(unint64_t)value;
- (void)signalNextEvent;
- (void)sumSharedGradientsForConvolutionLayerTensorParameter:(id)parameter layerIndexForSummedGradients:(unint64_t)gradients;
- (void)sumSharedGradientsForNormalizationLayerTensorParameter:(id)parameter layerIndexForSummedGradients:(unint64_t)gradients isBetaTensor:(BOOL)tensor;
- (void)synchronizeOptimizerBuffers:(id)buffers commandBuffer:(id)buffer;
- (void)synchronizeOptimizerUpdatesForTensor:(id)tensor;
- (void)synchronizeUpdatesForLayer:(id)layer;
- (void)synchronizeWeightMatrixForRNNLayer:(id)layer matrixId:(unint64_t)id parameterType:(unint64_t)type accumulatorIndex:(unint64_t)index forLSTMNum:(unint64_t)num forDeviceNum:(unint64_t)deviceNum forGate:(unint64_t)gate;
- (void)unsafe_signalAllDevicesExcludingDevice:(unint64_t)device eventValue:(unint64_t)value;
- (void)updateAllParametersWithOptimizer:(id)optimizer arrayOfParameters:(id)parameters;
- (void)updateConvolutionLayer:(id)layer optimizer:(id)optimizer weightsParameter:(id)parameter biasesParameter:(id)biasesParameter arrayOfParams:(id)params;
- (void)updateEmbeddingLayer:(id)layer weightsParameter:(id)parameter optimizer:(id)optimizer arrayOfParams:(id)params;
- (void)updateFullyConnectedLayer:(id)layer optimizer:(id)optimizer weightsParameter:(id)parameter biasesParameter:(id)biasesParameter arrayOfParams:(id)params;
- (void)updateGraphExecutionTime:(id)time atIndex:(int)index gpuTime:(double)gpuTime;
- (void)updateLayerNormalizationLayer:(id)layer optimizer:(id)optimizer betaParameter:(id)parameter gammaParameter:(id)gammaParameter arrayOfParams:(id)params;
- (void)updateMultiheadAttentionLayer:(id)layer optimizer:(id)optimizer weightsParameter:(id)parameter biasesParameter:(id)biasesParameter arrayOfParams:(id)params;
- (void)updateRNNLayer:(id)layer optimizer:(id)optimizer inputWeightsParameter:(id)parameter hiddenWeightsParameter:(id)weightsParameter biasesParameter:(id)biasesParameter arrayOfParams:(id)params;
- (void)updateTensorParameter:(id)parameter optimizer:(id)optimizer gradient:(id)gradient arrayOfParams:(id)params;
- (void)updateTensorsForFMAFusedLayers:(id)layers layerNext:(id)next;
- (void)updateTensorsForFusedArithmeticAndLayerNormalizationLayer:(id)layer layerNext:(id)next;
- (void)updateWithAdamOptimizer:(id)optimizer encoder:(id)encoder deviceParameter:(id)parameter source:(id)source gradient:(id)gradient result:(id)result momentumIndex:(unint64_t)index;
- (void)updateWithOptimizer:(id)optimizer arrayOfParams:(id)params commandBuffer:(id)buffer deviceParameter:(id)parameter source:(id)source gradient:(id)gradient result:(id)result momentumIndex:(unint64_t)self0;
- (void)updateWithRMSPropOptimizer:(id)optimizer encoder:(id)encoder deviceParameter:(id)parameter source:(id)source gradient:(id)gradient result:(id)result momentumIndex:(unint64_t)index;
- (void)updateWithSGDOptimizer:(id)optimizer encoder:(id)encoder deviceParameter:(id)parameter source:(id)source gradient:(id)gradient result:(id)result momentumIndex:(unint64_t)index;
- (void)waitForAllDevicesExcludingDevice:(unint64_t)device eventValue:(unint64_t)value;
- (void)waitForOthers;
@end

@implementation MLCDeviceGPU

- (id)batchNormalizationLayerWithChannelCount:(unint64_t)count mean:(id)mean variance:(id)variance beta:(id)beta gamma:(id)gamma varianceEpsilon:(float)epsilon momentum:(float)momentum
{
  meanCopy = mean;
  varianceCopy = variance;
  betaCopy = beta;
  gammaCopy = gamma;
  v20 = objc_autoreleasePoolPush();
  *&v21 = epsilon;
  *&v22 = momentum;
  v23 = [_MLCGPUBatchNormalization layerWithDevice:self numOfFeatureChannels:count mean:meanCopy variance:varianceCopy beta:betaCopy gamma:gammaCopy varianceEpsilon:v21 momentum:v22];
  deviceOps = [v23 deviceOps];
  v25 = [deviceOps copy];

  [v23 setDeviceOps:0];
  v26 = MEMORY[0x277CBEBF8];
  if (v25)
  {
    v26 = v25;
  }

  v27 = v26;

  objc_autoreleasePoolPop(v20);

  return v27;
}

- (id)groupNormalizationLayerWithFeatureChannelCount:(unint64_t)count groupCount:(unint64_t)groupCount beta:(id)beta gamma:(id)gamma varianceEpsilon:(float)epsilon
{
  betaCopy = beta;
  gammaCopy = gamma;
  v14 = objc_autoreleasePoolPush();
  *&v15 = epsilon;
  v16 = [_MLCGPUGroupNormalization layerWithDevice:self numOfFeatureChannels:count groupCount:groupCount beta:betaCopy gamma:gammaCopy varianceEpsilon:v15];
  deviceOps = [v16 deviceOps];
  v18 = [deviceOps copy];

  [v16 setDeviceOps:0];
  v19 = MEMORY[0x277CBEBF8];
  if (v18)
  {
    v19 = v18;
  }

  v20 = v19;

  objc_autoreleasePoolPop(v14);

  return v20;
}

- (id)fusedBatchNormalizationAndNeuronLayerWithDescriptor:(id)descriptor numOfFeatureChannels:(unint64_t)channels mean:(id)mean variance:(id)variance beta:(id)beta gamma:(id)gamma varianceEpsilon:(float)epsilon momentum:(float)self0
{
  descriptorCopy = descriptor;
  meanCopy = mean;
  varianceCopy = variance;
  betaCopy = beta;
  gammaCopy = gamma;
  v23 = objc_autoreleasePoolPush();
  *&v24 = epsilon;
  *&v25 = momentum;
  v26 = [_MLCGPUBatchNormalization layerWithDevice:self fusedWithNeuronDescriptor:descriptorCopy numOfFeatureChannels:channels mean:meanCopy variance:varianceCopy beta:betaCopy gamma:v24 varianceEpsilon:v25 momentum:gammaCopy];
  deviceOps = [v26 deviceOps];
  v28 = [deviceOps copy];

  [v26 setDeviceOps:0];
  v29 = MEMORY[0x277CBEBF8];
  if (v28)
  {
    v29 = v28;
  }

  v30 = v29;

  objc_autoreleasePoolPop(v23);

  return v30;
}

- (id)instanceNormalizationLayerWithChannelCount:(unint64_t)count mean:(id)mean variance:(id)variance beta:(id)beta gamma:(id)gamma varianceEpsilon:(float)epsilon momentum:(float)momentum
{
  meanCopy = mean;
  varianceCopy = variance;
  betaCopy = beta;
  gammaCopy = gamma;
  v20 = objc_autoreleasePoolPush();
  *&v21 = epsilon;
  *&v22 = momentum;
  v23 = [_MLCGPUInstanceNormalization layerWithDevice:self numOfFeatureChannels:count mean:meanCopy variance:varianceCopy beta:betaCopy gamma:gammaCopy varianceEpsilon:v21 momentum:v22];
  deviceOps = [v23 deviceOps];
  v25 = [deviceOps copy];

  [v23 setDeviceOps:0];
  v26 = MEMORY[0x277CBEBF8];
  if (v25)
  {
    v26 = v25;
  }

  v27 = v26;

  objc_autoreleasePoolPop(v20);

  return v27;
}

- (id)fusedInstanceNormalizationAndNeuronLayerWithDescriptor:(id)descriptor numOfFeatureChannels:(unint64_t)channels mean:(id)mean variance:(id)variance beta:(id)beta gamma:(id)gamma varianceEpsilon:(float)epsilon momentum:(float)self0
{
  descriptorCopy = descriptor;
  meanCopy = mean;
  varianceCopy = variance;
  betaCopy = beta;
  gammaCopy = gamma;
  v23 = objc_autoreleasePoolPush();
  *&v24 = epsilon;
  *&v25 = momentum;
  v26 = [_MLCGPUInstanceNormalization layerWithDevice:self fusedWithNeuronDescriptor:descriptorCopy numOfFeatureChannels:channels mean:meanCopy variance:varianceCopy beta:betaCopy gamma:v24 varianceEpsilon:v25 momentum:gammaCopy];
  deviceOps = [v26 deviceOps];
  v28 = [deviceOps copy];

  [v26 setDeviceOps:0];
  v29 = MEMORY[0x277CBEBF8];
  if (v28)
  {
    v29 = v28;
  }

  v30 = v29;

  objc_autoreleasePoolPop(v23);

  return v30;
}

- (id)convolutionLayerWithDescriptor:(id)descriptor weights:(id)weights biasTerms:(id)terms
{
  descriptorCopy = descriptor;
  weightsCopy = weights;
  termsCopy = terms;
  v11 = objc_autoreleasePoolPush();
  v12 = [_MLCGPUConvolution layerWithDevice:self weights:weightsCopy biasTerms:termsCopy descriptor:descriptorCopy neuronDescriptor:0];
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
  v15 = [_MLCGPUConvolution layerWithDevice:self weights:weightsCopy biasTerms:termsCopy descriptor:convolutionDescriptorCopy neuronDescriptor:descriptorCopy];
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

- (id)dropoutLayerWithRate:(float)rate seed:(unint64_t)seed
{
  v7 = objc_autoreleasePoolPush();
  *&v8 = rate;
  v9 = [_MLCGPUDropout layerWithDevice:self rate:seed seed:v8];
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
  v12 = [_MLCGPUFullyConnected layerWithDevice:self weights:weightsCopy biasTerms:termsCopy descriptor:descriptorCopy neuronDescriptor:0];
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
  v15 = [_MLCGPUFullyConnected layerWithDevice:self weights:weightsCopy biasTerms:termsCopy descriptor:convolutionDescriptorCopy neuronDescriptor:descriptorCopy];
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

- (id)neuronLayerWithDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  v5 = objc_autoreleasePoolPush();
  v6 = [_MLCGPUNeuron layerWithDevice:self descriptor:descriptorCopy];
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
  v23 = [_MLCGPULSTM layerWithDevice:self descriptor:descriptorCopy inputWeights:weightsCopy hiddenWeights:hiddenWeightsCopy peepholeWeights:peepholeWeightsCopy biasTerms:termsCopy gateActivations:activationsCopy outputResultActivation:activationCopy inferenceOnly:v29];
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

- (id)poolingLayerWithDescriptor:(id)descriptor paddingSizes:(unint64_t *)sizes
{
  descriptorCopy = descriptor;
  v7 = objc_autoreleasePoolPush();
  v8 = [_MLCGPUPooling layerWithDevice:self descriptor:descriptorCopy paddingSizes:sizes];
  deviceOps = [v8 deviceOps];
  v10 = [deviceOps copy];

  [v8 setDeviceOps:0];
  v11 = MEMORY[0x277CBEBF8];
  if (v10)
  {
    v11 = v10;
  }

  v12 = v11;

  objc_autoreleasePoolPop(v7);

  return v12;
}

- (id)reshapeLayerWithShape:(id)shape
{
  shapeCopy = shape;
  v5 = objc_autoreleasePoolPush();
  v6 = [_MLCGPUReshape layerWithDevice:self];
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
  v6 = [_MLCGPUSplit layerWithDevice:self dimension:dimension];
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

- (id)gramMatrixLayerWithScaleFactor:(float)factor
{
  v5 = objc_autoreleasePoolPush();
  *&v6 = factor;
  v7 = [_MLCGPUGramMatrix layerWithDevice:self scale:v6];
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

- (id)transposeLayerWithShape:(id)shape
{
  shapeCopy = shape;
  v5 = objc_autoreleasePoolPush();
  v6 = [_MLCGPUTranspose layerWithDevice:self shape:shapeCopy];
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

- (id)selectLayer
{
  v3 = objc_autoreleasePoolPush();
  v4 = [_MLCGPUSelect layerWithDevice:self];
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

- (void)updateTensorsForFMAFusedLayers:(id)layers layerNext:(id)next
{
  layersCopy = layers;
  nextCopy = next;
  resultTensors = [nextCopy resultTensors];
  v7 = [resultTensors objectAtIndexedSubscript:0];

  sourceTensors = [nextCopy sourceTensors];
  v9 = [sourceTensors objectAtIndexedSubscript:0];
  resultTensors2 = [layersCopy resultTensors];
  v11 = [resultTensors2 objectAtIndexedSubscript:0];
  v12 = v9 == v11;

  sourceTensors2 = [nextCopy sourceTensors];
  v14 = [sourceTensors2 objectAtIndexedSubscript:v12];
  sourceTensors3 = [layersCopy sourceTensors];
  [sourceTensors3 setObject:v14 atIndexedSubscript:2];

  sourceGradientTensors = [layersCopy sourceGradientTensors];
  v17 = [sourceGradientTensors count];

  if (v17)
  {
    sourceGradientTensors2 = [nextCopy sourceGradientTensors];
    v19 = [sourceGradientTensors2 objectAtIndexedSubscript:0];
    sourceGradientTensors3 = [layersCopy sourceGradientTensors];
    [sourceGradientTensors3 setObject:v19 atIndexedSubscript:0];
  }

  resultTensors3 = [layersCopy resultTensors];
  [resultTensors3 setObject:v7 atIndexedSubscript:0];

  parentLayers = [v7 parentLayers];
  [parentLayers setObject:layersCopy atIndexedSubscript:0];

  fusedLayers = [layersCopy fusedLayers];
  [fusedLayers addObject:nextCopy];

  [nextCopy setSkipLayer:1];
  [nextCopy setIsLastFusedLayer:1];
  deviceOps = [layersCopy deviceOps];
  v25 = [deviceOps count];

  if (v25)
  {
    v26 = [MEMORY[0x277CBEBF8] mutableCopy];
    [layersCopy setDeviceOps:v26];
  }
}

- (void)updateTensorsForFusedArithmeticAndLayerNormalizationLayer:(id)layer layerNext:(id)next
{
  layerCopy = layer;
  nextCopy = next;
  sourceTensors = [layerCopy sourceTensors];
  v7 = [sourceTensors objectAtIndexedSubscript:0];

  sourceTensors2 = [nextCopy sourceTensors];
  [sourceTensors2 setObject:v7 atIndexedSubscript:0];

  childLayers = [v7 childLayers];
  [childLayers setObject:nextCopy atIndexedSubscript:0];

  sourceTensors3 = [layerCopy sourceTensors];
  v11 = [sourceTensors3 objectAtIndexedSubscript:1];

  sourceTensors4 = [nextCopy sourceTensors];
  [sourceTensors4 setObject:v11 atIndexedSubscript:1];

  sourceTensors5 = [layerCopy sourceTensors];
  v14 = [sourceTensors5 objectAtIndexedSubscript:0];
  v15 = v11 == v14;

  childLayers2 = [v11 childLayers];
  [childLayers2 setObject:nextCopy atIndexedSubscript:v15];

  [layerCopy setSkipLayer:1];
  [layerCopy setIsLastFusedLayer:0];
  fusedLayers = [nextCopy fusedLayers];
  [fusedLayers addObject:layerCopy];

  deviceOps = [nextCopy deviceOps];
  v19 = [deviceOps count];

  if (v19)
  {
    v20 = [MEMORY[0x277CBEBF8] mutableCopy];
    [nextCopy setDeviceOps:v20];
  }
}

- (BOOL)canFuseConvolutionLayerForInference:(id)inference
{
  inferenceCopy = inference;
  weights = [inferenceCopy weights];
  childLayers = [weights childLayers];
  v6 = [childLayers count];

  if (v6 == 1)
  {
    compileForInferenceOnly = [inferenceCopy compileForInferenceOnly];
  }

  else
  {
    weights2 = [inferenceCopy weights];
    childLayers2 = [weights2 childLayers];
    v10 = [childLayers2 count];

    if (v10)
    {
      v11 = 0;
      do
      {
        weights3 = [inferenceCopy weights];
        childLayers3 = [weights3 childLayers];
        v14 = [childLayers3 objectAtIndexedSubscript:v11];

        compileForInferenceOnly = [v14 compileForInferenceOnly];
        if ((compileForInferenceOnly & 1) == 0)
        {
          break;
        }

        ++v11;
        weights4 = [inferenceCopy weights];
        childLayers4 = [weights4 childLayers];
        v17 = [childLayers4 count];
      }

      while (v11 < v17);
    }

    else
    {
      compileForInferenceOnly = 1;
    }
  }

  return compileForInferenceOnly;
}

- (BOOL)canFuseFullyConnectedLayerForInference:(id)inference
{
  inferenceCopy = inference;
  weights = [inferenceCopy weights];
  childLayers = [weights childLayers];
  v6 = [childLayers count];

  if (v6 == 1)
  {
    compileForInferenceOnly = [inferenceCopy compileForInferenceOnly];
  }

  else
  {
    weights2 = [inferenceCopy weights];
    childLayers2 = [weights2 childLayers];
    v10 = [childLayers2 count];

    if (v10)
    {
      v11 = 0;
      do
      {
        weights3 = [inferenceCopy weights];
        childLayers3 = [weights3 childLayers];
        v14 = [childLayers3 objectAtIndexedSubscript:v11];

        compileForInferenceOnly = [v14 compileForInferenceOnly];
        if ((compileForInferenceOnly & 1) == 0)
        {
          break;
        }

        ++v11;
        weights4 = [inferenceCopy weights];
        childLayers4 = [weights4 childLayers];
        v17 = [childLayers4 count];
      }

      while (v11 < v17);
    }

    else
    {
      compileForInferenceOnly = 1;
    }
  }

  return compileForInferenceOnly;
}

- (BOOL)compileLayerDeviceOps:(id)ops sourceTensors:(id)tensors resultTensor:(id)tensor
{
  opsCopy = ops;
  tensorsCopy = tensors;
  tensorCopy = tensor;
  v11 = [opsCopy objectAtIndexedSubscript:0];
  layer = [v11 layer];
  v13 = objc_opt_class();

  if (!v13)
  {
    v13 = objc_opt_class();
  }

  v14 = [v13 compileWithDevice:self deviceOps:opsCopy sourceTensors:tensorsCopy resultTensor:tensorCopy];
  v15 = [tensorsCopy objectAtIndexedSubscript:0];
  [tensorCopy setMultiDeviceReductionType:{objc_msgSend(v15, "multiDeviceReductionType")}];

  layer2 = [v11 layer];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v34 = v14;
    batchFirst = [v11 batchFirst];
    v18 = [tensorsCopy objectAtIndexedSubscript:0];
    descriptor = [v18 descriptor];
    shape = [descriptor shape];
    v26 = [shape objectAtIndexedSubscript:(batchFirst & 1) == 0];
    unsignedIntegerValue = [v26 unsignedIntegerValue];
  }

  else
  {
    v33 = v13;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v18 = [tensorsCopy objectAtIndexedSubscript:0];
    descriptor = [v18 descriptor];
    shape2 = [descriptor shape];
    shape = shape2;
    if (isKindOfClass)
    {
      v34 = v14;
      v26 = [shape2 objectAtIndexedSubscript:0];
      v30 = [tensorsCopy objectAtIndexedSubscript:{objc_msgSend(v26, "unsignedIntegerValue") == 1}];
      [v30 descriptor];
      v23 = v31 = layer2;
      [v23 shape];
      v24 = v32 = opsCopy;
      v25 = [v24 objectAtIndexedSubscript:0];
      unsignedIntegerValue = [v25 unsignedIntegerValue];

      opsCopy = v32;
      layer2 = v31;
    }

    else
    {
      v28 = [shape2 count];

      if (v28 < 2)
      {
        unsignedIntegerValue = 1;
        v13 = v33;
        goto LABEL_11;
      }

      v34 = v14;
      v18 = [tensorsCopy objectAtIndexedSubscript:0];
      descriptor = [v18 descriptor];
      shape = [descriptor shape];
      v26 = [shape objectAtIndexedSubscript:0];
      unsignedIntegerValue = [v26 unsignedIntegerValue];
    }

    v13 = v33;
  }

  v14 = v34;
LABEL_11:
  [v11 setBatchSize:unsignedIntegerValue];

  return v14;
}

- (BOOL)compileLayerDeviceOps:(id)ops sourceTensors:(id)tensors resultTensors:(id)resultTensors
{
  opsCopy = ops;
  tensorsCopy = tensors;
  resultTensorsCopy = resultTensors;
  v11 = [opsCopy objectAtIndexedSubscript:0];
  layer = [v11 layer];
  v13 = objc_opt_class();

  if (!v13)
  {
    v13 = objc_opt_class();
  }

  v14 = [v13 compileWithDevice:self deviceOps:opsCopy sourceTensors:tensorsCopy resultTensors:resultTensorsCopy];
  v15 = [tensorsCopy objectAtIndexedSubscript:0];
  descriptor = [v15 descriptor];
  shape = [descriptor shape];
  v18 = [shape count];

  if (v18 < 2)
  {
    unsignedIntegerValue = 1;
  }

  else
  {
    v29 = [tensorsCopy objectAtIndexedSubscript:0];
    descriptor2 = [v29 descriptor];
    shape2 = [descriptor2 shape];
    [shape2 objectAtIndexedSubscript:0];
    v21 = v11;
    v22 = tensorsCopy;
    v23 = opsCopy;
    v24 = resultTensorsCopy;
    v26 = v25 = v14;
    unsignedIntegerValue = [v26 unsignedIntegerValue];

    v14 = v25;
    resultTensorsCopy = v24;
    opsCopy = v23;
    tensorsCopy = v22;
    v11 = v21;
  }

  [v11 setBatchSize:unsignedIntegerValue];

  return v14;
}

- (id)createOptimizerDeviceDataForTensor:(id)tensor optimizer:(id)optimizer optimizerData:(id)data isVector:(BOOL)vector
{
  if (vector)
  {
    GPU_CreateOptimizerDeviceVectorDataForTensor(self, tensor, data);
  }

  else
  {
    GPU_CreateOptimizerDeviceDataForTensor(self, tensor, data);
  }
  v6 = ;

  return v6;
}

- (void)allocateDeviceDataForGlobalNormClippingWithOptimizer:(id)optimizer updatableParameterCount:(unint64_t)count
{
  optimizerCopy = optimizer;
  if ([(MLCDeviceGPU *)self numDevicesToUse]== 1)
  {
    v5 = [MEMORY[0x277CBEBF8] mutableCopy];
    [optimizerCopy setOneStepOptimizerBuffers:v5];
  }
}

- (unint64_t)allocatedDeviceDataSizeForTraining:(BOOL)training layer:(id)layer
{
  if (!training)
  {
    return 0;
  }

  v4 = [layer objectAtIndexedSubscript:0];
  forwardKernel = [v4 forwardKernel];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v7 = 0;
  if (isKindOfClass)
  {
    gradientKernel = [v4 gradientKernel];
    v9 = [gradientKernel count];

    v29 = v4;
    v10 = v4;
    v7 = 0;
    if (v9)
    {
      for (i = 0; i != v9; ++i)
      {
        rnnTrainableWeightGradients = [v10 rnnTrainableWeightGradients];
        v13 = [rnnTrainableWeightGradients objectAtIndexedSubscript:i];

        rnnMomentumMatrices = [v10 rnnMomentumMatrices];
        v15 = [rnnMomentumMatrices objectAtIndexedSubscript:i];

        rnnVelocityMatrices = [v10 rnnVelocityMatrices];
        v17 = [rnnVelocityMatrices objectAtIndexedSubscript:i];

        rnnCenterWeightMatrices = [v10 rnnCenterWeightMatrices];
        v19 = [rnnCenterWeightMatrices objectAtIndexedSubscript:i];

        if ([v13 count])
        {
          v20 = 0;
          do
          {
            v21 = [v13 objectAtIndexedSubscript:v20];
            v7 += [v21 matrixBytes];

            ++v20;
          }

          while (v20 < [v13 count]);
        }

        if ([v15 count])
        {
          v22 = 0;
          do
          {
            v23 = [v15 objectAtIndexedSubscript:v22];
            v7 += [v23 matrixBytes];

            ++v22;
          }

          while (v22 < [v15 count]);
        }

        if ([v17 count])
        {
          v24 = 0;
          do
          {
            v25 = [v17 objectAtIndexedSubscript:v24];
            v7 += [v25 matrixBytes];

            ++v24;
          }

          while (v24 < [v17 count]);
        }

        if ([v19 count])
        {
          v26 = 0;
          do
          {
            v27 = [v19 objectAtIndexedSubscript:v26];
            v7 += [v27 matrixBytes];

            ++v26;
          }

          while (v26 < [v19 count]);
        }
      }
    }

    v4 = v29;
  }

  return v7;
}

- (id)matMulLayerWithDescriptor:(id)descriptor sourceTensors:(id)tensors resultTensor:(id)tensor inferenceOnly:(BOOL)only
{
  descriptorCopy = descriptor;
  tensorsCopy = tensors;
  tensorCopy = tensor;
  v12 = objc_autoreleasePoolPush();
  v13 = [_MLCGPUMatMul layerWithDevice:self descriptor:descriptorCopy sourceTensors:tensorsCopy resultTensor:tensorCopy];
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

- (id)sliceLayerWithbegin:(id)withbegin end:(id)end stride:(id)stride inferenceOnly:(BOOL)only
{
  withbeginCopy = withbegin;
  endCopy = end;
  strideCopy = stride;
  v12 = objc_autoreleasePoolPush();
  v13 = [_MLCGPUSlice layerWithDevice:self begin:withbeginCopy end:endCopy stride:strideCopy];
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

- (id)gatherLayerWithDimension:(unint64_t)dimension
{
  v5 = objc_autoreleasePoolPush();
  v6 = [_MLCGPUGather layerWithDevice:self dimension:dimension];
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

- (id)weightsGradients:(id)gradients
{
  v67[4] = *MEMORY[0x277D85DE8];
  gradientsCopy = gradients;
  v4 = 0;
  if ([(MLCDeviceGPU *)self numDevicesToUse])
  {
    v5 = 0;
    selfCopy = self;
    do
    {
      v6 = [gradientsCopy objectAtIndexedSubscript:v5];
      gradientState = [v6 gradientState];
      v8 = [gradientState objectAtIndexedSubscript:0];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      gradientState2 = [v6 gradientState];
      v11 = [gradientState2 objectAtIndexedSubscript:0];
      if (isKindOfClass)
      {

        gradientForWeights = [v11 gradientForWeights];
        forwardKernel = [v6 forwardKernel];
        dataSource = [forwardKernel dataSource];
        weight = [dataSource weight];
        descriptor = [weight descriptor];
        tensorAllocationSizeInBytes = [descriptor tensorAllocationSizeInBytes];

        self = selfCopy;
      }

      else
      {
        objc_opt_class();
        v18 = objc_opt_isKindOfClass();

        gradientState3 = [v6 gradientState];
        v20 = [gradientState3 objectAtIndexedSubscript:0];
        gradientForWeights = v20;
        if (v18)
        {
          data = [v20 data];

          tensorAllocationSizeInBytes = [data length];
          gradientForWeights = data;
        }

        else
        {

          tensorAllocationSizeInBytes = [gradientForWeights length];
        }
      }

      gpuCommandQueueList = [(MLCDeviceGPU *)self gpuCommandQueueList];
      v23 = [gpuCommandQueueList objectAtIndexedSubscript:v5];
      commandBuffer = [v23 commandBuffer];

      [MLCGPUHelper synchronizeResource:gradientForWeights commandBuffer:commandBuffer];
      [commandBuffer commit];
      [commandBuffer waitUntilCompleted];
      if (v5)
      {
        if ([v4 length] >= 4)
        {
          v25 = 0;
          do
          {
            v26 = *([gradientForWeights contents] + 4 * v25);
            bytes = [v4 bytes];
            *(bytes + 4 * v25) = v26 + *(bytes + 4 * v25);
            ++v25;
          }

          while (v25 < [v4 length] >> 2);
        }
      }

      else
      {
        v28 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:objc_msgSend(gradientForWeights length:"contents") freeWhenDone:{tensorAllocationSizeInBytes, 0}];

        v4 = v28;
      }

      if (-[MLCDeviceGPU numDevicesToUse](self, "numDevicesToUse") - 1 == v5 && ([v6 forwardKernel], v29 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), v30 = objc_opt_isKindOfClass(), v29, (v30 & 1) != 0))
      {
        v61 = objc_autoreleasePoolPush();
        v59 = [MEMORY[0x277CBEA90] dataWithBytes:objc_msgSend(v4 length:{"bytes"), objc_msgSend(v4, "length")}];
        forwardKernel2 = [v6 forwardKernel];
        v67[0] = &unk_284BA5888;
        v32 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(forwardKernel2, "outputFeatureChannels") * objc_msgSend(forwardKernel2, "inputFeatureChannels")}];
        v67[1] = v32;
        v33 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(forwardKernel2, "kernelHeight")}];
        v67[2] = v33;
        v34 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(forwardKernel2, "kernelWidth")}];
        v67[3] = v34;
        shape = [MEMORY[0x277CBEA60] arrayWithObjects:v67 count:4];

        self = selfCopy;
        v36 = v59;

        v37 = v61;
        rotateWeightsTensorBy180Degree(shape, v59, v4);
      }

      else
      {
        if ([(MLCDeviceGPU *)self numDevicesToUse]- 1 != v5)
        {
          goto LABEL_29;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_29;
        }

        v62 = objc_autoreleasePoolPush();
        v38 = [MEMORY[0x277CBEA90] dataWithBytes:objc_msgSend(v4 length:{"bytes"), objc_msgSend(v4, "length")}];
        mpsGraphTensors = [v6 mpsGraphTensors];
        forwardKernel2 = [mpsGraphTensors objectAtIndexedSubscript:0];

        shape = [forwardKernel2 shape];
        convolutionTranspose = [v6 convolutionTranspose];
        v60 = v38;
        bytes2 = [v38 bytes];
        bytes3 = [v4 bytes];
        v58 = [shape objectAtIndexedSubscript:1];
        unsignedIntegerValue = [v58 unsignedIntegerValue];
        v57 = [shape objectAtIndexedSubscript:0];
        unsignedIntegerValue2 = [v57 unsignedIntegerValue];
        if (convolutionTranspose)
        {
          v41 = [shape objectAtIndexedSubscript:3];
          unsignedIntegerValue3 = [v41 unsignedIntegerValue];
          v42 = [shape objectAtIndexedSubscript:2];
          unsignedIntegerValue4 = [v42 unsignedIntegerValue];
          LODWORD(v50) = GPU_GetDataTypeFromMPSDataType([forwardKernel2 dataType]);
          v44 = [MLCDataHelper convertSourceHWOI:bytes2 toResultOIHW:bytes3 width:unsignedIntegerValue height:unsignedIntegerValue2 inputFeatureChannelCount:unsignedIntegerValue3 outputFeatureChannelCount:unsignedIntegerValue4 dataType:v50];
        }

        else
        {
          v41 = [shape objectAtIndexedSubscript:2];
          unsignedIntegerValue5 = [v41 unsignedIntegerValue];
          v42 = [shape objectAtIndexedSubscript:3];
          unsignedIntegerValue6 = [v42 unsignedIntegerValue];
          LODWORD(v50) = GPU_GetDataTypeFromMPSDataType([forwardKernel2 dataType]);
          v44 = [MLCDataHelper convertSourceHWIO:bytes2 toResultOIHW:bytes3 width:unsignedIntegerValue height:unsignedIntegerValue2 inputFeatureChannelCount:unsignedIntegerValue5 outputFeatureChannelCount:unsignedIntegerValue6 dataType:v50];
        }

        v46 = v44;

        if (v46)
        {
          v37 = v62;
          self = selfCopy;
        }

        else
        {
          v47 = +[MLCLog framework];
          v37 = v62;
          if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
          {
            [(MLCDeviceGPU(MLCLayerOperations) *)buf weightsGradients:v47];
          }

          self = selfCopy;
        }

        v36 = v60;
      }

      objc_autoreleasePoolPop(v37);
LABEL_29:

      ++v5;
    }

    while (v5 < [(MLCDeviceGPU *)self numDevicesToUse]);
  }

  v48 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)biasesGradients:(id)gradients
{
  gradientsCopy = gradients;
  v5 = 0;
  if ([(MLCDeviceGPU *)self numDevicesToUse])
  {
    v6 = 0;
    v7 = 0x277CD7000uLL;
    v35 = gradientsCopy;
    do
    {
      v8 = [gradientsCopy objectAtIndexedSubscript:{v6, v35}];
      gradientState = [v8 gradientState];
      v10 = [gradientState objectAtIndexedSubscript:0];
      v11 = *(v7 + 1584);
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      gradientState2 = [v8 gradientState];
      v14 = [gradientState2 objectAtIndexedSubscript:0];
      v36 = v8;
      if (isKindOfClass)
      {

        gradientForBiases = [v14 gradientForBiases];
        forwardKernel = [v8 forwardKernel];
        [forwardKernel dataSource];
        v18 = v17 = self;
        biasTerm = [v18 biasTerm];
        descriptor = [biasTerm descriptor];
        tensorAllocationSizeInBytes = [descriptor tensorAllocationSizeInBytes];

        self = v17;
        v7 = 0x277CD7000;

        gradientsCopy = v35;
      }

      else
      {
        objc_opt_class();
        v22 = objc_opt_isKindOfClass();

        gradientState3 = [v8 gradientState];
        v24 = [gradientState3 objectAtIndexedSubscript:1];
        gradientForBiases = v24;
        if (v22)
        {
          data = [v24 data];

          tensorAllocationSizeInBytes = [data length];
          gradientForBiases = data;
        }

        else
        {

          tensorAllocationSizeInBytes = [gradientForBiases length];
        }
      }

      gpuCommandQueueList = [(MLCDeviceGPU *)self gpuCommandQueueList];
      v27 = [gpuCommandQueueList objectAtIndexedSubscript:v6];
      commandBuffer = [v27 commandBuffer];

      [MLCGPUHelper synchronizeResource:gradientForBiases commandBuffer:commandBuffer];
      [commandBuffer commit];
      [commandBuffer waitUntilCompleted];
      if (v6)
      {
        v29 = v36;
        if ([v5 length] >= 4)
        {
          v30 = 0;
          do
          {
            v31 = *([gradientForBiases contents] + 4 * v30);
            bytes = [v5 bytes];
            *(bytes + 4 * v30) = v31 + *(bytes + 4 * v30);
            ++v30;
          }

          while (v30 < [v5 length] >> 2);
        }
      }

      else
      {
        v33 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:objc_msgSend(gradientForBiases length:"contents") freeWhenDone:{tensorAllocationSizeInBytes, 0}];

        v5 = v33;
        v29 = v36;
      }

      ++v6;
    }

    while (v6 < [(MLCDeviceGPU *)self numDevicesToUse]);
  }

  return v5;
}

- (id)mhaWeightGradient:(id)gradient withSize:(unint64_t)size index:(unint64_t)index
{
  indexCopy = index;
  gradientCopy = gradient;
  v7 = 0;
  if ([(MLCDeviceGPU *)self numDevicesToUse])
  {
    v8 = 0;
    do
    {
      v9 = [gradientCopy objectAtIndexedSubscript:{v8, indexCopy}];
      gpuCommandQueueList = [(MLCDeviceGPU *)self gpuCommandQueueList];
      v11 = [gpuCommandQueueList objectAtIndexedSubscript:v8];
      commandBuffer = [v11 commandBuffer];

      gradientState = [v9 gradientState];
      v14 = [gradientState objectAtIndexedSubscript:indexCopy];
      data = [v14 data];

      [MLCGPUHelper synchronizeResource:data commandBuffer:commandBuffer];
      [commandBuffer commit];
      [commandBuffer waitUntilCompleted];
      data2 = [MEMORY[0x277CBEB28] data];
      v17 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:objc_msgSend(data length:"contents") freeWhenDone:{size, 0}];
      [data2 appendData:v17];

      if (v8)
      {
        if (size >= 4)
        {
          v18 = 0;
          do
          {
            v19 = *([data2 bytes] + 4 * v18);
            bytes = [v7 bytes];
            *(bytes + 4 * v18) = v19 + *(bytes + 4 * v18);
            ++v18;
          }

          while (size >> 2 != v18);
        }
      }

      else
      {
        v21 = data2;

        v7 = v21;
      }

      ++v8;
    }

    while (v8 < [(MLCDeviceGPU *)self numDevicesToUse]);
  }

  return v7;
}

- (id)mhaBiasGradient:(id)gradient withSize:(unint64_t)size index:(unint64_t)index
{
  indexCopy = index;
  gradientCopy = gradient;
  v7 = 0;
  if ([(MLCDeviceGPU *)self numDevicesToUse])
  {
    v8 = 0;
    do
    {
      v9 = [gradientCopy objectAtIndexedSubscript:{v8, indexCopy}];
      gpuCommandQueueList = [(MLCDeviceGPU *)self gpuCommandQueueList];
      v11 = [gpuCommandQueueList objectAtIndexedSubscript:v8];
      commandBuffer = [v11 commandBuffer];

      gradientState = [v9 gradientState];
      v14 = [gradientState objectAtIndexedSubscript:indexCopy + 4];
      data = [v14 data];

      [MLCGPUHelper synchronizeResource:data commandBuffer:commandBuffer];
      [commandBuffer commit];
      [commandBuffer waitUntilCompleted];
      data2 = [MEMORY[0x277CBEB28] data];
      v17 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:objc_msgSend(data length:"contents") freeWhenDone:{size, 0}];
      [data2 appendData:v17];

      if (v8)
      {
        if (size >= 4)
        {
          v18 = 0;
          do
          {
            v19 = *([data2 bytes] + 4 * v18);
            bytes = [v7 bytes];
            *(bytes + 4 * v18) = v19 + *(bytes + 4 * v18);
            ++v18;
          }

          while (size >> 2 != v18);
        }
      }

      else
      {
        v21 = data2;

        v7 = v21;
      }

      ++v8;
    }

    while (v8 < [(MLCDeviceGPU *)self numDevicesToUse]);
  }

  return v7;
}

- (id)mhaAttnBiasGradient:(id)gradient withSize:(unint64_t)size index:(unint64_t)index
{
  gradientCopy = gradient;
  v8 = 0;
  if ([(MLCDeviceGPU *)self numDevicesToUse])
  {
    v9 = 0;
    v25 = index + 4;
    do
    {
      v10 = [gradientCopy objectAtIndexedSubscript:{v9, v25}];
      gpuCommandQueueList = [(MLCDeviceGPU *)self gpuCommandQueueList];
      v12 = [gpuCommandQueueList objectAtIndexedSubscript:v9];
      commandBuffer = [v12 commandBuffer];

      if ([v10 mhaHasBias])
      {
        v14 = 4;
      }

      else
      {
        v14 = 0;
      }

      gradientState = [v10 gradientState];
      v16 = [gradientState objectAtIndexedSubscript:v25 + v14];
      data = [v16 data];

      [MLCGPUHelper synchronizeResource:data commandBuffer:commandBuffer];
      [commandBuffer commit];
      [commandBuffer waitUntilCompleted];
      data2 = [MEMORY[0x277CBEB28] data];
      v19 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:objc_msgSend(data length:"contents") freeWhenDone:{size, 0}];
      [data2 appendData:v19];

      if (v9)
      {
        if (size >= 4)
        {
          v20 = 0;
          do
          {
            v21 = *([data2 bytes] + 4 * v20);
            bytes = [v8 bytes];
            *(bytes + 4 * v20) = v21 + *(bytes + 4 * v20);
            ++v20;
          }

          while (size >> 2 != v20);
        }
      }

      else
      {
        v23 = data2;

        v8 = v23;
      }

      ++v9;
    }

    while (v9 < [(MLCDeviceGPU *)self numDevicesToUse]);
  }

  return v8;
}

- (id)lstmInputWeightGradient:(id)gradient mlcWeightIndex:(unint64_t)index
{
  gradientCopy = gradient;
  v6 = 0;
  if ([(MLCDeviceGPU *)self numDevicesToUse])
  {
    v7 = 0;
    v31 = index & 3;
    v32 = index >> 2;
    selfCopy = self;
    indexCopy = index;
    do
    {
      v8 = [gradientCopy objectAtIndexedSubscript:v7];
      gradientKernel = [v8 gradientKernel];
      v10 = qword_278A69218[v31];
      rnnExportedInputWeightGradientMatrices = [v8 rnnExportedInputWeightGradientMatrices];
      v12 = [rnnExportedInputWeightGradientMatrices objectAtIndexedSubscript:index];

      v13 = objc_autoreleasePoolPush();
      gpuCommandQueueList = [(MLCDeviceGPU *)self gpuCommandQueueList];
      v15 = [gpuCommandQueueList objectAtIndexedSubscript:v7];
      commandBuffer = [v15 commandBuffer];

      v36 = gradientKernel;
      v17 = [gradientKernel objectAtIndexedSubscript:v32];
      rnnTrainableWeightGradients = [v8 rnnTrainableWeightGradients];
      v19 = [rnnTrainableWeightGradients objectAtIndexedSubscript:v32];
      unsignedIntegerValue = [v10 unsignedIntegerValue];
      memset(v37, 0, sizeof(v37));
      [v17 encodeCopyWeightsToCommandBuffer:commandBuffer weights:v19 matrixId:unsignedIntegerValue matrix:v12 copyFromWeightsToMatrix:1 matrixOffset:v37];

      [v12 synchronizeOnCommandBuffer:commandBuffer];
      [commandBuffer commit];
      [commandBuffer waitUntilCompleted];

      objc_autoreleasePoolPop(v13);
      if (v7)
      {
        if ([v6 length] >= 4)
        {
          v21 = 0;
          self = selfCopy;
          index = indexCopy;
          do
          {
            data = [v12 data];
            v23 = *([data contents] + 4 * v21);
            bytes = [v6 bytes];
            *(bytes + 4 * v21) = v23 + *(bytes + 4 * v21);

            ++v21;
          }

          while (v21 < [v6 length] >> 2);
          goto LABEL_10;
        }
      }

      else
      {
        v25 = MEMORY[0x277CBEA90];
        data2 = [v12 data];
        contents = [data2 contents];
        data3 = [v12 data];
        v29 = [v25 dataWithBytesNoCopy:contents length:objc_msgSend(data3 freeWhenDone:{"length"), 0}];

        v6 = v29;
      }

      self = selfCopy;
      index = indexCopy;
LABEL_10:

      ++v7;
    }

    while (v7 < [(MLCDeviceGPU *)self numDevicesToUse]);
  }

  return v6;
}

- (id)lstmHiddenWeightGradient:(id)gradient mlcWeightIndex:(unint64_t)index
{
  gradientCopy = gradient;
  v6 = 0;
  if ([(MLCDeviceGPU *)self numDevicesToUse])
  {
    v7 = 0;
    v31 = index & 3;
    v32 = index >> 2;
    selfCopy = self;
    indexCopy = index;
    do
    {
      v8 = [gradientCopy objectAtIndexedSubscript:v7];
      gradientKernel = [v8 gradientKernel];
      v10 = qword_278A69238[v31];
      rnnExportedHiddenWeightGradientMatrices = [v8 rnnExportedHiddenWeightGradientMatrices];
      v12 = [rnnExportedHiddenWeightGradientMatrices objectAtIndexedSubscript:index];

      v13 = objc_autoreleasePoolPush();
      gpuCommandQueueList = [(MLCDeviceGPU *)self gpuCommandQueueList];
      v15 = [gpuCommandQueueList objectAtIndexedSubscript:v7];
      commandBuffer = [v15 commandBuffer];

      v36 = gradientKernel;
      v17 = [gradientKernel objectAtIndexedSubscript:v32];
      rnnTrainableWeightGradients = [v8 rnnTrainableWeightGradients];
      v19 = [rnnTrainableWeightGradients objectAtIndexedSubscript:v32];
      unsignedIntegerValue = [v10 unsignedIntegerValue];
      memset(v37, 0, sizeof(v37));
      [v17 encodeCopyWeightsToCommandBuffer:commandBuffer weights:v19 matrixId:unsignedIntegerValue matrix:v12 copyFromWeightsToMatrix:1 matrixOffset:v37];

      [v12 synchronizeOnCommandBuffer:commandBuffer];
      [commandBuffer commit];
      [commandBuffer waitUntilCompleted];

      objc_autoreleasePoolPop(v13);
      if (v7)
      {
        if ([v6 length] >= 4)
        {
          v21 = 0;
          self = selfCopy;
          index = indexCopy;
          do
          {
            data = [v12 data];
            v23 = *([data contents] + 4 * v21);
            bytes = [v6 bytes];
            *(bytes + 4 * v21) = v23 + *(bytes + 4 * v21);

            ++v21;
          }

          while (v21 < [v6 length] >> 2);
          goto LABEL_10;
        }
      }

      else
      {
        v25 = MEMORY[0x277CBEA90];
        data2 = [v12 data];
        contents = [data2 contents];
        data3 = [v12 data];
        v29 = [v25 dataWithBytesNoCopy:contents length:objc_msgSend(data3 freeWhenDone:{"length"), 0}];

        v6 = v29;
      }

      self = selfCopy;
      index = indexCopy;
LABEL_10:

      ++v7;
    }

    while (v7 < [(MLCDeviceGPU *)self numDevicesToUse]);
  }

  return v6;
}

- (id)lstmBiasGradient:(id)gradient mlcBiasIndex:(unint64_t)index
{
  gradientCopy = gradient;
  v6 = 0;
  if ([(MLCDeviceGPU *)self numDevicesToUse])
  {
    v7 = 0;
    v31 = index & 3;
    v32 = index >> 2;
    selfCopy = self;
    indexCopy = index;
    do
    {
      v8 = [gradientCopy objectAtIndexedSubscript:v7];
      gradientKernel = [v8 gradientKernel];
      v10 = qword_278A69258[v31];
      rnnExportedBiasGradientMatrices = [v8 rnnExportedBiasGradientMatrices];
      v12 = [rnnExportedBiasGradientMatrices objectAtIndexedSubscript:index];

      v13 = objc_autoreleasePoolPush();
      gpuCommandQueueList = [(MLCDeviceGPU *)self gpuCommandQueueList];
      v15 = [gpuCommandQueueList objectAtIndexedSubscript:v7];
      commandBuffer = [v15 commandBuffer];

      v36 = gradientKernel;
      v17 = [gradientKernel objectAtIndexedSubscript:v32];
      rnnTrainableWeightGradients = [v8 rnnTrainableWeightGradients];
      v19 = [rnnTrainableWeightGradients objectAtIndexedSubscript:v32];
      unsignedIntegerValue = [v10 unsignedIntegerValue];
      memset(v37, 0, sizeof(v37));
      [v17 encodeCopyWeightsToCommandBuffer:commandBuffer weights:v19 matrixId:unsignedIntegerValue matrix:v12 copyFromWeightsToMatrix:1 matrixOffset:v37];

      [v12 synchronizeOnCommandBuffer:commandBuffer];
      [commandBuffer commit];
      [commandBuffer waitUntilCompleted];

      objc_autoreleasePoolPop(v13);
      if (v7)
      {
        if ([v6 length] >= 4)
        {
          v21 = 0;
          self = selfCopy;
          index = indexCopy;
          do
          {
            data = [v12 data];
            v23 = *([data contents] + 4 * v21);
            bytes = [v6 bytes];
            *(bytes + 4 * v21) = v23 + *(bytes + 4 * v21);

            ++v21;
          }

          while (v21 < [v6 length] >> 2);
          goto LABEL_10;
        }
      }

      else
      {
        v25 = MEMORY[0x277CBEA90];
        data2 = [v12 data];
        contents = [data2 contents];
        data3 = [v12 data];
        v29 = [v25 dataWithBytesNoCopy:contents length:objc_msgSend(data3 freeWhenDone:{"length"), 0}];

        v6 = v29;
      }

      self = selfCopy;
      index = indexCopy;
LABEL_10:

      ++v7;
    }

    while (v7 < [(MLCDeviceGPU *)self numDevicesToUse]);
  }

  return v6;
}

- (id)betaGradients:(id)gradients
{
  gradientsCopy = gradients;
  v5 = 0;
  if ([(MLCDeviceGPU *)self numDevicesToUse])
  {
    v6 = 0;
    do
    {
      v7 = [gradientsCopy objectAtIndexedSubscript:v6];
      normalizationBetaGradient = [v7 normalizationBetaGradient];
      normalizationSumBetaGammaDeltaKernel = [v7 normalizationSumBetaGammaDeltaKernel];

      v10 = [normalizationBetaGradient length];
      if (normalizationSumBetaGammaDeltaKernel)
      {
        v10 /= [v7 batchSize];
      }

      gpuCommandQueueList = [(MLCDeviceGPU *)self gpuCommandQueueList];
      v12 = [gpuCommandQueueList objectAtIndexedSubscript:v6];
      commandBuffer = [v12 commandBuffer];

      [MLCGPUHelper synchronizeResource:normalizationBetaGradient commandBuffer:commandBuffer];
      [commandBuffer commit];
      [commandBuffer waitUntilCompleted];
      if (v6)
      {
        if ([v5 length] >= 4)
        {
          v14 = 0;
          do
          {
            v15 = *([normalizationBetaGradient contents] + 4 * v14);
            bytes = [v5 bytes];
            *(bytes + 4 * v14) = v15 + *(bytes + 4 * v14);
            ++v14;
          }

          while (v14 < [v5 length] >> 2);
        }
      }

      else
      {
        v17 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:objc_msgSend(normalizationBetaGradient length:"contents") freeWhenDone:{v10, 0}];

        v5 = v17;
      }

      ++v6;
    }

    while (v6 < [(MLCDeviceGPU *)self numDevicesToUse]);
  }

  return v5;
}

- (id)gammaGradients:(id)gradients
{
  gradientsCopy = gradients;
  v5 = 0;
  if ([(MLCDeviceGPU *)self numDevicesToUse])
  {
    v6 = 0;
    do
    {
      v7 = [gradientsCopy objectAtIndexedSubscript:v6];
      normalizationGammaGradient = [v7 normalizationGammaGradient];
      normalizationSumBetaGammaDeltaKernel = [v7 normalizationSumBetaGammaDeltaKernel];

      v10 = [normalizationGammaGradient length];
      if (normalizationSumBetaGammaDeltaKernel)
      {
        v10 /= [v7 batchSize];
      }

      gpuCommandQueueList = [(MLCDeviceGPU *)self gpuCommandQueueList];
      v12 = [gpuCommandQueueList objectAtIndexedSubscript:v6];
      commandBuffer = [v12 commandBuffer];

      [MLCGPUHelper synchronizeResource:normalizationGammaGradient commandBuffer:commandBuffer];
      [commandBuffer commit];
      [commandBuffer waitUntilCompleted];
      if (v6)
      {
        if ([v5 length] >= 4)
        {
          v14 = 0;
          do
          {
            v15 = *([normalizationGammaGradient contents] + 4 * v14);
            bytes = [v5 bytes];
            *(bytes + 4 * v14) = v15 + *(bytes + 4 * v14);
            ++v14;
          }

          while (v14 < [v5 length] >> 2);
        }
      }

      else
      {
        v17 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:objc_msgSend(normalizationGammaGradient length:"contents") freeWhenDone:{v10, 0}];

        v5 = v17;
      }

      ++v6;
    }

    while (v6 < [(MLCDeviceGPU *)self numDevicesToUse]);
  }

  return v5;
}

- (id)embeddingWeightsGradients:(id)gradients embeddingCount:(unint64_t)count embeddingDimension:(unint64_t)dimension
{
  gradientsCopy = gradients;
  v7 = 0;
  if ([(MLCDeviceGPU *)self numDevicesToUse])
  {
    v8 = 0;
    do
    {
      v9 = [gradientsCopy objectAtIndexedSubscript:v8];
      gradientForWeights = [v9 gradientForWeights];
      gpuCommandQueueList = [(MLCDeviceGPU *)self gpuCommandQueueList];
      v12 = [gpuCommandQueueList objectAtIndexedSubscript:v8];
      commandBuffer = [v12 commandBuffer];

      [MLCGPUHelper synchronizeResource:gradientForWeights commandBuffer:commandBuffer];
      [commandBuffer commit];
      [commandBuffer waitUntilCompleted];
      if (v8)
      {
        if ([v7 length] >= 4)
        {
          v14 = 0;
          do
          {
            v15 = *([gradientForWeights contents] + 4 * v14);
            bytes = [v7 bytes];
            *(bytes + 4 * v14) = v15 + *(bytes + 4 * v14);
            ++v14;
          }

          while (v14 < [v7 length] >> 2);
        }
      }

      else
      {
        v17 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:objc_msgSend(gradientForWeights length:"contents") freeWhenDone:{objc_msgSend(gradientForWeights, "length"), 0}];

        v7 = v17;
      }

      ++v8;
    }

    while (v8 < [(MLCDeviceGPU *)self numDevicesToUse]);
  }

  return v7;
}

- (void)rotateAndCopyMTLBuffer:(id)buffer toNSData:(id)data withTensorDescriptor:(id)descriptor
{
  bufferCopy = buffer;
  dataCopy = data;
  descriptorCopy = descriptor;
  v9 = objc_autoreleasePoolPush();
  v10 = MEMORY[0x277CBEA90];
  v11 = bufferCopy;
  v12 = [v10 dataWithBytesNoCopy:objc_msgSend(bufferCopy length:"contents") freeWhenDone:{objc_msgSend(dataCopy, "length"), 0}];
  shape = [descriptorCopy shape];
  rotateWeightsTensorBy180Degree(shape, v12, dataCopy);

  objc_autoreleasePoolPop(v9);
}

+ (unint64_t)calculateImageSizeForTensor:(id)tensor
{
  tensorCopy = tensor;
  descriptor = [tensorCopy descriptor];
  shape = [descriptor shape];
  v6 = [shape count] != 1;

  descriptor2 = [tensorCopy descriptor];
  dimensionCount = [descriptor2 dimensionCount];

  v9 = 1;
  if (dimensionCount > v6)
  {
    do
    {
      descriptor3 = [tensorCopy descriptor];
      shape2 = [descriptor3 shape];
      v12 = [shape2 objectAtIndexedSubscript:v6];
      v9 *= [v12 unsignedIntegerValue];

      ++v6;
      descriptor4 = [tensorCopy descriptor];
      dimensionCount2 = [descriptor4 dimensionCount];
    }

    while (v6 < dimensionCount2);
  }

  descriptor5 = [tensorCopy descriptor];
  dataType = [descriptor5 dataType];

  if ((dataType - 1) > 6)
  {
    v17 = 1;
  }

  else
  {
    v17 = qword_238D45CB8[dataType - 1];
  }

  v18 = v17 * v9;

  return v18;
}

+ (id)filteredGPUListIncludingLowPoweredBuiltin:(BOOL)builtin
{
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = MTLCreateSystemDefaultDevice();
  v4 = v3;
  if (v3 && [v3 supportsFamily:1006])
  {
    v8[0] = v4;
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  }

  else
  {
    v5 = MEMORY[0x277CBEBF8];
  }

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (MLCDeviceGPU)initWithType:(int)type selectsMultipleComputeDevices:(BOOL)devices
{
  devicesCopy = devices;
  v8 = [objc_opt_class() filteredGPUListIncludingLowPoweredBuiltin:1];
  if ([v8 count])
  {
    v9 = [MEMORY[0x277CBEBF8] mutableCopy];
    if (type == 1 && devicesCopy && ([objc_opt_class() multiGPUNotSupportedInFilteredGPUList:v8] & 1) == 0)
    {
      v10 = v9;
      v9 = [v8 mutableCopy];
    }

    else
    {
      v10 = [v8 objectAtIndexedSubscript:0];
      [v9 addObject:v10];
    }

    self = [(MLCDeviceGPU *)self initWithDeviceList:v9];
    selfCopy = self;
  }

  else
  {
    v11 = +[MLCLog framework];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [MLCDeviceGPU initWithType:a2 selectsMultipleComputeDevices:?];
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (MLCDeviceGPU)initWithDeviceList:(id)list
{
  v49 = *MEMORY[0x277D85DE8];
  listCopy = list;
  if ([listCopy count])
  {
    v5 = 0;
    while (1)
    {
      v6 = [listCopy objectAtIndexedSubscript:v5];
      v7 = [v6 supportsFamily:1006];

      if ((v7 & 1) == 0)
      {
        break;
      }

      if (++v5 >= [listCopy count])
      {
        goto LABEL_5;
      }
    }

    v10 = +[MLCLog framework];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [MLCDeviceGPU initWithDeviceList:a2];
    }

    selfCopy2 = 0;
  }

  else
  {
LABEL_5:
    selfCopy = self;
    v8 = +[MLCLog framework];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [(MLCDeviceGPU *)listCopy initWithDeviceList:v8];
    }

    v9 = MEMORY[0x277CBEBF8];
    v10 = [MEMORY[0x277CBEBF8] mutableCopy];
    v11 = [v9 mutableCopy];
    v42 = [v9 mutableCopy];
    v41 = [v9 mutableCopy];
    v12 = [v9 mutableCopy];
    if ([listCopy count])
    {
      v13 = 0;
      do
      {
        v14 = [listCopy objectAtIndexedSubscript:v13];
        newEvent = [v14 newEvent];

        if (newEvent)
        {
          [v10 setObject:newEvent atIndexedSubscript:v13];
        }

        else
        {
          v16 = +[MLCLog framework];
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            v25 = NSStringFromSelector(a2);
            v26 = [listCopy objectAtIndexedSubscript:v13];
            *buf = 138412802;
            v44 = v25;
            v45 = 2048;
            v46 = v13;
            v47 = 2112;
            v48 = v26;
            _os_log_error_impl(&dword_238C1D000, v16, OS_LOG_TYPE_ERROR, "%@: No MTLLocalEvent: gpuDeviceList[%lu]=%@", buf, 0x20u);
          }
        }

        v17 = [listCopy objectAtIndexedSubscript:v13];
        newSharedEvent = [v17 newSharedEvent];

        if (newSharedEvent)
        {
          [v11 setObject:newSharedEvent atIndexedSubscript:v13];
        }

        else
        {
          v19 = +[MLCLog framework];
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            v27 = NSStringFromSelector(a2);
            v28 = [listCopy objectAtIndexedSubscript:v13];
            *buf = 138412802;
            v44 = v27;
            v45 = 2048;
            v46 = v13;
            v47 = 2112;
            v48 = v28;
            _os_log_error_impl(&dword_238C1D000, v19, OS_LOG_TYPE_ERROR, "%@: No MTLSharedEvent: gpuDeviceList[%lu]=%@", buf, 0x20u);
          }
        }

        v20 = [listCopy objectAtIndexedSubscript:v13];
        newCommandQueue = [v20 newCommandQueue];

        if (newCommandQueue)
        {
          [v42 setObject:newCommandQueue atIndexedSubscript:v13];
          v22 = [MEMORY[0x277CD7208] commandBufferFromCommandQueue:newCommandQueue];
          [v12 setObject:v22 atIndexedSubscript:v13];

          v23 = [v12 objectAtIndexedSubscript:v13];
          rootCommandBuffer = [v23 rootCommandBuffer];
          [v41 setObject:rootCommandBuffer atIndexedSubscript:v13];
        }

        else
        {
          v23 = +[MLCLog framework];
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            v38 = NSStringFromSelector(a2);
            v29 = [listCopy objectAtIndexedSubscript:v13];
            *buf = 138412802;
            v44 = v38;
            v45 = 2048;
            v46 = v13;
            v47 = 2112;
            v48 = v29;
            v30 = v29;
            _os_log_error_impl(&dword_238C1D000, v23, OS_LOG_TYPE_ERROR, "%@: No MTLCommandQueue: gpuDeviceList[%lu]=%@", buf, 0x20u);
          }
        }

        ++v13;
      }

      while (v13 < [listCopy count]);
    }

    v31 = malloc_type_calloc([listCopy count], 8uLL, 0x100004000313F17uLL);
    v32 = [listCopy copy];
    v33 = [v10 copy];
    v34 = [v11 copy];
    self = [(MLCDeviceGPU *)selfCopy initWithType:1 gpuDeviceList:v32 gpuLocalEventList:v33 gpuSharedEventList:v34 currentEventValue:v31 gpuCommandQueueList:v42 gpuCommandBufferList:v41 gpuMPSCommandBufferList:v12];

    selfCopy2 = self;
  }

  v36 = *MEMORY[0x277D85DE8];
  return selfCopy2;
}

- (MLCDeviceGPU)initWithType:(int)type gpuDeviceList:(id)list gpuLocalEventList:(id)eventList gpuSharedEventList:(id)sharedEventList currentEventValue:(unint64_t *)value gpuCommandQueueList:(id)queueList gpuCommandBufferList:(id)bufferList gpuMPSCommandBufferList:(id)self0
{
  listCopy = list;
  eventListCopy = eventList;
  sharedEventListCopy = sharedEventList;
  queueListCopy = queueList;
  bufferListCopy = bufferList;
  commandBufferListCopy = commandBufferList;
  v43.receiver = self;
  v43.super_class = MLCDeviceGPU;
  v18 = [(MLCDeviceGPU *)&v43 init];
  v19 = v18;
  if (!v18)
  {
    goto LABEL_6;
  }

  v18->_l._os_unfair_lock_opaque = 0;
  [listCopy objectAtIndexedSubscript:0];
  obj = bufferList;
  v21 = v20 = value;
  v19->_isAppleSoCGPU = GPU_isAppleFamily(v21);

  v19->_deviceType = type;
  objc_storeStrong(&v19->_deviceList, list);
  v19->_numDevicesToUse = [listCopy count];
  v19->_numDevicesUsedWithFirstBatch = 0;
  objc_storeStrong(&v19->_gpuLocalEventList, eventList);
  objc_storeStrong(&v19->_gpuSharedEventList, sharedEventList);
  v19->_currentEventValue = v20;
  objc_storeStrong(&v19->_gpuCommandQueueList, queueList);
  objc_storeStrong(&v19->_gpuMPSCommandBufferList, commandBufferList);
  objc_storeStrong(&v19->_gpuCommandBufferList, bufferList);
  v22 = MEMORY[0x277CBEBF8];
  v23 = [MEMORY[0x277CBEBF8] mutableCopy];
  gpuHeapTemporaryResourceAllocator = v19->_gpuHeapTemporaryResourceAllocator;
  v19->_gpuHeapTemporaryResourceAllocator = v23;

  v19->_executionTimeInterval = malloc_type_calloc([listCopy count], 8uLL, 0x100004000313F17uLL);
  v25 = [v22 mutableCopy];
  gpuWriteTensorKernelList = v19->_gpuWriteTensorKernelList;
  v19->_gpuWriteTensorKernelList = v25;

  v27 = [v22 mutableCopy];
  gpuReadTensorKernelList = v19->_gpuReadTensorKernelList;
  v19->_gpuReadTensorKernelList = v27;

  v29 = [v22 mutableCopy];
  gpuLibrary = v19->_gpuLibrary;
  v19->_gpuLibrary = v29;

  if ([listCopy count])
  {
    v31 = 0;
    do
    {
      v32 = [listCopy objectAtIndexedSubscript:{v31, obj}];
      v33 = [objc_alloc(MEMORY[0x277CD7598]) initWithDevice:v32 dataLayout:1];
      [(NSMutableArray *)v19->_gpuWriteTensorKernelList setObject:v33 atIndexedSubscript:v31];

      v34 = [objc_alloc(MEMORY[0x277CD7508]) initWithDevice:v32 dataLayout:1];
      [(NSMutableArray *)v19->_gpuReadTensorKernelList setObject:v34 atIndexedSubscript:v31];

      ++v31;
    }

    while (v31 < [listCopy count]);
  }

  if (![(MLCDeviceGPU *)v19 createPipelineStatesForMissingActivationFunctions])
  {
    v35 = 0;
  }

  else
  {
LABEL_6:
    v35 = v19;
  }

  return v35;
}

- (BOOL)createPipelineStatesForMissingActivationFunctions
{
  v184 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEBF8];
  v5 = [MEMORY[0x277CBEBF8] mutableCopy];
  [(MLCDeviceGPU *)self setGpuPipelineStatesForwardConcat2DArray:v5];

  v6 = [v4 mutableCopy];
  [(MLCDeviceGPU *)self setGpuPipelineStatesForwardConcat2D:v6];

  v7 = [v4 mutableCopy];
  [(MLCDeviceGPU *)self setGpuPipelineStatesConcatFloat:v7];

  v8 = [v4 mutableCopy];
  [(MLCDeviceGPU *)self setGpuPipelineStatesConcatBool:v8];

  v9 = [v4 mutableCopy];
  [(MLCDeviceGPU *)self setGpuPipelineStatesPad2DArray:v9];

  v10 = [v4 mutableCopy];
  [(MLCDeviceGPU *)self setGpuPipelineStatesPad2D:v10];

  v11 = [v4 mutableCopy];
  [(MLCDeviceGPU *)self setGpuPipelineStatesReduceAcrossBatch:v11];

  v12 = [v4 mutableCopy];
  [(MLCDeviceGPU *)self setGpuPipelineStatesReduceAcrossChannel:v12];

  v13 = [v4 mutableCopy];
  [(MLCDeviceGPU *)self setGpuPipelineStatesArithmeticUnaryForward:v13];

  v14 = [v4 mutableCopy];
  [(MLCDeviceGPU *)self setGpuPipelineStatesArithmeticUnaryGradient:v14];

  v15 = [v4 mutableCopy];
  [(MLCDeviceGPU *)self setGpuPipelineStatesArithmeticBinaryForward:v15];

  v16 = [v4 mutableCopy];
  [(MLCDeviceGPU *)self setGpuPipelineStatesArithmeticBinaryGradient:v16];

  v17 = [v4 mutableCopy];
  [(MLCDeviceGPU *)self setGpuPipelineStatesArithmeticReduceGradientAny:v17];

  v18 = [v4 mutableCopy];
  [(MLCDeviceGPU *)self setGpuPipelineStatesArithmeticReduceGradientAll:v18];

  v19 = [v4 mutableCopy];
  [(MLCDeviceGPU *)self setGpuPipelineStatesEmbeddingRenormalizeWeights:v19];

  v20 = [v4 mutableCopy];
  [(MLCDeviceGPU *)self setGpuPipelineStatesEmbeddingForward:v20];

  v21 = [v4 mutableCopy];
  [(MLCDeviceGPU *)self setGpuPipelineStatesEmbeddingGradient:v21];

  v22 = [v4 mutableCopy];
  [(MLCDeviceGPU *)self setGpuPipelineStatesCompareRelationalOpForward:v22];

  v23 = [v4 mutableCopy];
  [(MLCDeviceGPU *)self setGpuPipelineStatesCompareLogicalOpForward:v23];

  v24 = [v4 mutableCopy];
  [(MLCDeviceGPU *)self setGpuConcurrentEncoderFence:v24];

  v25 = [v4 mutableCopy];
  [(MLCDeviceGPU *)self setGpuPipelineStatesMemFillFloat:v25];

  v26 = [v4 mutableCopy];
  [(MLCDeviceGPU *)self setGpuPipelineStatesMemCopy:v26];

  memset(&v173, 0, sizeof(v173));
  v27 = 0;
  if (dladdr("/System/Library/Frameworks/MLCompute.framework/", &v173) && v173.dli_fname)
  {
    v28 = strlen(v173.dli_fname);
    bzero(v183, 0x400uLL);
    __strncpy_chk();
    v29 = &v183[v28 - 1];
    do
    {
      v30 = v29 > v183;
      v32 = *v29--;
      v31 = v32;
    }

    while (v30 && v31 != 47);
    v29[1] = 0;
    memset(&v172, 0, sizeof(v172));
    if (stat(v183, &v172))
    {
      v33 = "/System/Library/Frameworks/MLCompute.framework/";
    }

    else
    {
      v33 = v183;
    }

    snprintf(__str, 0x400uLL, "%s/%s.metallib", v33, "default");
    v124 = [MEMORY[0x277CCACA8] stringWithUTF8String:__str];
    deviceList = [(MLCDeviceGPU *)self deviceList];
    v35 = [deviceList count];

    if (v35)
    {
      aSelector = a2;
      v36 = 0;
      v37 = 0;
      while (1)
      {
        deviceList2 = [(MLCDeviceGPU *)self deviceList];
        v39 = [deviceList2 objectAtIndexedSubscript:v37];

        v171 = v36;
        v40 = [v39 newLibraryWithFile:v124 error:&v171];
        v41 = v171;

        v123 = v40 != 0;
        if (!v40)
        {
          break;
        }

        gpuLibrary = [(MLCDeviceGPU *)self gpuLibrary];
        [gpuLibrary setObject:v40 atIndexedSubscript:v37];

        buf[0] = 1;
        v170 = 0;
        v43 = objc_opt_new();
        [v43 setConstantValue:buf type:53 atIndex:0];
        [v43 setConstantValue:&v170 type:53 atIndex:1];
        [(MLCDeviceGPU *)self gpuLibrary];
        v44 = v154 = v40;
        v45 = [v44 objectAtIndexedSubscript:v37];
        v169 = v41;
        v153 = [v45 newFunctionWithName:@"concat_channels_forward" constantValues:v43 error:&v169];
        v46 = v169;

        v167 = [v39 newComputePipelineStateWithFunction:v153 error:0];
        buf[0] = 0;
        v170 = 1;
        [v43 setConstantValue:buf type:53 atIndex:0];
        [v43 setConstantValue:&v170 type:53 atIndex:1];
        gpuLibrary2 = [(MLCDeviceGPU *)self gpuLibrary];
        v48 = [gpuLibrary2 objectAtIndexedSubscript:v37];
        v152 = [v48 newFunctionWithName:@"concat_channels_forward" constantValues:v43 error:0];

        v166 = [v39 newComputePipelineStateWithFunction:v152 error:0];
        buf[0] = 1;
        v170 = 0;
        [v43 setConstantValue:buf type:53 atIndex:0];
        [v43 setConstantValue:&v170 type:53 atIndex:1];
        gpuLibrary3 = [(MLCDeviceGPU *)self gpuLibrary];
        v50 = [gpuLibrary3 objectAtIndexedSubscript:v37];
        v168 = v46;
        v150 = [v50 newFunctionWithName:@"pad_channels_mps_image" constantValues:v43 error:&v168];
        v151 = v168;

        v165 = [v39 newComputePipelineStateWithFunction:v150 error:0];
        buf[0] = 0;
        v170 = 1;
        [v43 setConstantValue:buf type:53 atIndex:0];
        v146 = v43;
        [v43 setConstantValue:&v170 type:53 atIndex:1];
        gpuLibrary4 = [(MLCDeviceGPU *)self gpuLibrary];
        v52 = [gpuLibrary4 objectAtIndexedSubscript:v37];
        v149 = [v52 newFunctionWithName:@"pad_channels_mps_image" constantValues:v43 error:0];

        v131 = [v39 newComputePipelineStateWithFunction:v149 error:0];
        gpuLibrary5 = [(MLCDeviceGPU *)self gpuLibrary];
        v54 = [gpuLibrary5 objectAtIndexedSubscript:v37];
        v148 = [v54 newFunctionWithName:@"reduce_across_batch"];

        v164 = [v39 newComputePipelineStateWithFunction:v148 error:0];
        gpuLibrary6 = [(MLCDeviceGPU *)self gpuLibrary];
        v56 = [gpuLibrary6 objectAtIndexedSubscript:v37];
        v147 = [v56 newFunctionWithName:@"reduce_across_channel"];

        v163 = [v39 newComputePipelineStateWithFunction:v147 error:0];
        gpuLibrary7 = [(MLCDeviceGPU *)self gpuLibrary];
        v58 = [gpuLibrary7 objectAtIndexedSubscript:v37];
        v145 = [v58 newFunctionWithName:@"arithmetic_unary_forward_float"];

        v162 = [v39 newComputePipelineStateWithFunction:v145 error:0];
        gpuLibrary8 = [(MLCDeviceGPU *)self gpuLibrary];
        v60 = [gpuLibrary8 objectAtIndexedSubscript:v37];
        v144 = [v60 newFunctionWithName:@"arithmetic_unary_gradient_float"];

        v161 = [v39 newComputePipelineStateWithFunction:v144 error:0];
        gpuLibrary9 = [(MLCDeviceGPU *)self gpuLibrary];
        v62 = [gpuLibrary9 objectAtIndexedSubscript:v37];
        v143 = [v62 newFunctionWithName:@"arithmetic_binary_forward_float"];

        v160 = [v39 newComputePipelineStateWithFunction:v143 error:0];
        gpuLibrary10 = [(MLCDeviceGPU *)self gpuLibrary];
        v64 = [gpuLibrary10 objectAtIndexedSubscript:v37];
        v142 = [v64 newFunctionWithName:@"arithmetic_binary_gradient_float"];

        v159 = [v39 newComputePipelineStateWithFunction:v142 error:0];
        gpuLibrary11 = [(MLCDeviceGPU *)self gpuLibrary];
        v66 = [gpuLibrary11 objectAtIndexedSubscript:v37];
        v67 = [v66 newFunctionWithName:@"arithmetic_reduce_gradient_any"];

        v158 = [v39 newComputePipelineStateWithFunction:v67 error:0];
        gpuLibrary12 = [(MLCDeviceGPU *)self gpuLibrary];
        v69 = [gpuLibrary12 objectAtIndexedSubscript:v37];
        v141 = [v69 newFunctionWithName:@"arithmetic_reduce_gradient_all"];

        v157 = [v39 newComputePipelineStateWithFunction:v141 error:0];
        gpuLibrary13 = [(MLCDeviceGPU *)self gpuLibrary];
        v71 = [gpuLibrary13 objectAtIndexedSubscript:v37];
        v140 = [v71 newFunctionWithName:@"embedding_renormalize_weights"];

        v156 = [v39 newComputePipelineStateWithFunction:v140 error:0];
        gpuLibrary14 = [(MLCDeviceGPU *)self gpuLibrary];
        v73 = [gpuLibrary14 objectAtIndexedSubscript:v37];
        v139 = [v73 newFunctionWithName:@"embedding_forward_training"];

        v155 = [v39 newComputePipelineStateWithFunction:v139 error:0];
        gpuLibrary15 = [(MLCDeviceGPU *)self gpuLibrary];
        v75 = [gpuLibrary15 objectAtIndexedSubscript:v37];
        v138 = [v75 newFunctionWithName:@"embedding_gradient_training"];

        v134 = [v39 newComputePipelineStateWithFunction:v138 error:0];
        gpuLibrary16 = [(MLCDeviceGPU *)self gpuLibrary];
        v77 = [gpuLibrary16 objectAtIndexedSubscript:v37];
        v137 = [v77 newFunctionWithName:@"compare_relationalop_forward"];

        v132 = [v39 newComputePipelineStateWithFunction:v137 error:0];
        gpuLibrary17 = [(MLCDeviceGPU *)self gpuLibrary];
        v79 = [gpuLibrary17 objectAtIndexedSubscript:v37];
        v136 = [v79 newFunctionWithName:@"compare_logicalop_forward"];

        v129 = [v39 newComputePipelineStateWithFunction:v136 error:0];
        gpuLibrary18 = [(MLCDeviceGPU *)self gpuLibrary];
        v81 = [gpuLibrary18 objectAtIndexedSubscript:v37];
        v135 = [v81 newFunctionWithName:@"concat_float"];

        v127 = [v39 newComputePipelineStateWithFunction:v135 error:0];
        gpuLibrary19 = [(MLCDeviceGPU *)self gpuLibrary];
        v83 = [gpuLibrary19 objectAtIndexedSubscript:v37];
        v133 = [v83 newFunctionWithName:@"concat_BOOL"];

        v125 = [v39 newComputePipelineStateWithFunction:v133 error:0];
        gpuLibrary20 = [(MLCDeviceGPU *)self gpuLibrary];
        v85 = [gpuLibrary20 objectAtIndexedSubscript:v37];
        v130 = [v85 newFunctionWithName:@"mem_fill_float"];

        v126 = [v39 newComputePipelineStateWithFunction:v130 error:0];
        gpuLibrary21 = [(MLCDeviceGPU *)self gpuLibrary];
        v87 = [gpuLibrary21 objectAtIndexedSubscript:v37];
        v128 = [v87 newFunctionWithName:@"memcpy"];

        v88 = [v39 newComputePipelineStateWithFunction:v128 error:0];
        gpuPipelineStatesForwardConcat2DArray = [(MLCDeviceGPU *)self gpuPipelineStatesForwardConcat2DArray];
        [gpuPipelineStatesForwardConcat2DArray setObject:v167 atIndexedSubscript:v37];

        gpuPipelineStatesForwardConcat2D = [(MLCDeviceGPU *)self gpuPipelineStatesForwardConcat2D];
        [gpuPipelineStatesForwardConcat2D setObject:v166 atIndexedSubscript:v37];

        gpuPipelineStatesConcatFloat = [(MLCDeviceGPU *)self gpuPipelineStatesConcatFloat];
        [gpuPipelineStatesConcatFloat setObject:v127 atIndexedSubscript:v37];

        gpuPipelineStatesConcatBool = [(MLCDeviceGPU *)self gpuPipelineStatesConcatBool];
        [gpuPipelineStatesConcatBool setObject:v125 atIndexedSubscript:v37];

        gpuPipelineStatesPad2DArray = [(MLCDeviceGPU *)self gpuPipelineStatesPad2DArray];
        [gpuPipelineStatesPad2DArray setObject:v165 atIndexedSubscript:v37];

        gpuPipelineStatesPad2D = [(MLCDeviceGPU *)self gpuPipelineStatesPad2D];
        [gpuPipelineStatesPad2D setObject:v131 atIndexedSubscript:v37];

        gpuPipelineStatesReduceAcrossBatch = [(MLCDeviceGPU *)self gpuPipelineStatesReduceAcrossBatch];
        [gpuPipelineStatesReduceAcrossBatch setObject:v164 atIndexedSubscript:v37];

        gpuPipelineStatesReduceAcrossChannel = [(MLCDeviceGPU *)self gpuPipelineStatesReduceAcrossChannel];
        [gpuPipelineStatesReduceAcrossChannel setObject:v163 atIndexedSubscript:v37];

        gpuPipelineStatesArithmeticUnaryForward = [(MLCDeviceGPU *)self gpuPipelineStatesArithmeticUnaryForward];
        [gpuPipelineStatesArithmeticUnaryForward setObject:v162 atIndexedSubscript:v37];

        gpuPipelineStatesArithmeticUnaryGradient = [(MLCDeviceGPU *)self gpuPipelineStatesArithmeticUnaryGradient];
        [gpuPipelineStatesArithmeticUnaryGradient setObject:v161 atIndexedSubscript:v37];

        gpuPipelineStatesArithmeticBinaryForward = [(MLCDeviceGPU *)self gpuPipelineStatesArithmeticBinaryForward];
        [gpuPipelineStatesArithmeticBinaryForward setObject:v160 atIndexedSubscript:v37];

        gpuPipelineStatesArithmeticBinaryGradient = [(MLCDeviceGPU *)self gpuPipelineStatesArithmeticBinaryGradient];
        [gpuPipelineStatesArithmeticBinaryGradient setObject:v159 atIndexedSubscript:v37];

        gpuPipelineStatesArithmeticReduceGradientAny = [(MLCDeviceGPU *)self gpuPipelineStatesArithmeticReduceGradientAny];
        [gpuPipelineStatesArithmeticReduceGradientAny setObject:v158 atIndexedSubscript:v37];

        gpuPipelineStatesArithmeticReduceGradientAll = [(MLCDeviceGPU *)self gpuPipelineStatesArithmeticReduceGradientAll];
        [gpuPipelineStatesArithmeticReduceGradientAll setObject:v157 atIndexedSubscript:v37];

        gpuPipelineStatesEmbeddingRenormalizeWeights = [(MLCDeviceGPU *)self gpuPipelineStatesEmbeddingRenormalizeWeights];
        [gpuPipelineStatesEmbeddingRenormalizeWeights setObject:v156 atIndexedSubscript:v37];

        gpuPipelineStatesEmbeddingForward = [(MLCDeviceGPU *)self gpuPipelineStatesEmbeddingForward];
        [gpuPipelineStatesEmbeddingForward setObject:v155 atIndexedSubscript:v37];

        gpuPipelineStatesEmbeddingGradient = [(MLCDeviceGPU *)self gpuPipelineStatesEmbeddingGradient];
        [gpuPipelineStatesEmbeddingGradient setObject:v134 atIndexedSubscript:v37];

        gpuPipelineStatesCompareRelationalOpForward = [(MLCDeviceGPU *)self gpuPipelineStatesCompareRelationalOpForward];
        [gpuPipelineStatesCompareRelationalOpForward setObject:v132 atIndexedSubscript:v37];

        gpuPipelineStatesCompareLogicalOpForward = [(MLCDeviceGPU *)self gpuPipelineStatesCompareLogicalOpForward];
        [gpuPipelineStatesCompareLogicalOpForward setObject:v129 atIndexedSubscript:v37];

        gpuPipelineStatesMemFillFloat = [(MLCDeviceGPU *)self gpuPipelineStatesMemFillFloat];
        [gpuPipelineStatesMemFillFloat setObject:v126 atIndexedSubscript:v37];

        gpuPipelineStatesMemCopy = [(MLCDeviceGPU *)self gpuPipelineStatesMemCopy];
        v110 = v88;
        [gpuPipelineStatesMemCopy setObject:v88 atIndexedSubscript:v37];

        newFence = [v39 newFence];
        gpuConcurrentEncoderFence = [(MLCDeviceGPU *)self gpuConcurrentEncoderFence];
        [gpuConcurrentEncoderFence setObject:newFence atIndexedSubscript:v37];

        ++v37;
        deviceList3 = [(MLCDeviceGPU *)self deviceList];
        v114 = [deviceList3 count];

        v115 = v37 >= v114;
        v36 = v151;
        if (v115)
        {
          goto LABEL_20;
        }
      }

      v116 = +[MLCLog framework];
      if (os_log_type_enabled(v116, OS_LOG_TYPE_ERROR))
      {
        v119 = NSStringFromSelector(aSelector);
        deviceList4 = [(MLCDeviceGPU *)self deviceList];
        v121 = [deviceList4 objectAtIndexedSubscript:v37];
        *buf = 138413058;
        v175 = v119;
        v176 = 2080;
        v177 = __str;
        v178 = 2048;
        v179 = v37;
        v180 = 2112;
        v181 = v121;
        _os_log_error_impl(&dword_238C1D000, v116, OS_LOG_TYPE_ERROR, "%@: MTLLibrary(%s) not found: gpuDeviceList[%lu]=%@", buf, 0x2Au);
      }

      v36 = v41;
LABEL_20:

      v27 = v123;
    }

    else
    {
      v27 = 1;
    }
  }

  v117 = *MEMORY[0x277D85DE8];
  return v27;
}

- (void)dealloc
{
  currentEventValue = self->_currentEventValue;
  if (currentEventValue)
  {
    free(currentEventValue);
  }

  executionTimeInterval = self->_executionTimeInterval;
  if (executionTimeInterval)
  {
    free(executionTimeInterval);
  }

  v5.receiver = self;
  v5.super_class = MLCDeviceGPU;
  [(MLCDeviceGPU *)&v5 dealloc];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = NSStringFromSelector(a2);
  deviceType = [(MLCDeviceGPU *)self deviceType];
  deviceList = [(MLCDeviceGPU *)self deviceList];
  gpuCommandQueueList = [(MLCDeviceGPU *)self gpuCommandQueueList];
  gpuCommandBufferList = [(MLCDeviceGPU *)self gpuCommandBufferList];
  v9 = [v3 stringWithFormat:@"%@: { deviceType=%d : gpuDeviceList=%@ : gpuCommandQueueList=%@ : gpuCommandBufferList=%@ }", v4, deviceType, deviceList, gpuCommandQueueList, gpuCommandBufferList];

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  deviceList = [(MLCDeviceGPU *)self deviceList];
  v6 = malloc_type_calloc([deviceList count], 8uLL, 0x100004000313F17uLL);

  [(MLCDeviceGPU *)self currentEventValue];
  deviceList2 = [(MLCDeviceGPU *)self deviceList];
  [deviceList2 count];

  v8 = [objc_opt_class() allocWithZone:zone];
  deviceType = [(MLCDeviceGPU *)self deviceType];
  deviceList3 = [(MLCDeviceGPU *)self deviceList];
  gpuLocalEventList = [(MLCDeviceGPU *)self gpuLocalEventList];
  gpuSharedEventList = [(MLCDeviceGPU *)self gpuSharedEventList];
  gpuCommandQueueList = [(MLCDeviceGPU *)self gpuCommandQueueList];
  gpuCommandBufferList = [(MLCDeviceGPU *)self gpuCommandBufferList];
  gpuMPSCommandBufferList = [(MLCDeviceGPU *)self gpuMPSCommandBufferList];
  v16 = [v8 initWithType:deviceType gpuDeviceList:deviceList3 gpuLocalEventList:gpuLocalEventList gpuSharedEventList:gpuSharedEventList currentEventValue:v6 gpuCommandQueueList:gpuCommandQueueList gpuCommandBufferList:gpuCommandBufferList gpuMPSCommandBufferList:gpuMPSCommandBufferList];

  return v16;
}

- (BOOL)synchronizeTensor:(id)tensor
{
  deviceMemory = [tensor deviceMemory];
  v5 = [deviceMemory count];

  if (v5)
  {
    v6 = -1;
    do
    {
      ++v6;
    }

    while (v6 < [(MLCDeviceGPU *)self numDevicesToUse]);
  }

  return v5 != 0;
}

- (BOOL)synchronizeTensorOnHost:(id)host
{
  hostCopy = host;
  deviceMemory = [hostCopy deviceMemory];
  v6 = [deviceMemory count];

  v25 = v6;
  if (v6 && [(MLCDeviceGPU *)self numDevicesToUse])
  {
    v7 = 0;
    v8 = 0x278A68000uLL;
    while (1)
    {
      v9 = objc_autoreleasePoolPush();
      gpuCommandQueueList = [(MLCDeviceGPU *)self gpuCommandQueueList];
      v11 = [gpuCommandQueueList objectAtIndexedSubscript:v7];
      commandBuffer = [v11 commandBuffer];

      if ([hostCopy isLayerParameter])
      {
        break;
      }

LABEL_17:
      [commandBuffer commit];
      [commandBuffer waitUntilCompleted];

      objc_autoreleasePoolPop(v9);
      if (++v7 >= [(MLCDeviceGPU *)self numDevicesToUse])
      {
        goto LABEL_18;
      }
    }

    childLayers = [hostCopy childLayers];
    v14 = [childLayers objectAtIndexedSubscript:0];

    v15 = *(v8 + 2808);
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
LABEL_16:

      goto LABEL_17;
    }

    deviceOps = [v14 deviceOps];
    v17 = [deviceOps objectAtIndexedSubscript:v7];

    if ([v17 isMPSGraph])
    {
LABEL_15:

      goto LABEL_16;
    }

    forwardKernel = [v17 forwardKernel];
    v19 = [forwardKernel exportWeightsAndBiasesWithCommandBuffer:commandBuffer resultStateCanBeTemporary:0];
    weights = [v14 weights];

    if (weights == hostCopy)
    {
      biases2 = MLCGPUHelper;
      weights2 = [v19 weights];
    }

    else
    {
      biases = [v14 biases];
      if (biases != hostCopy)
      {
LABEL_13:

        goto LABEL_14;
      }

      biases2 = [v19 biases];

      if (!biases2)
      {
LABEL_14:
        [v17 setExportableState:{v19, biases2}];

        v8 = 0x278A68000;
        goto LABEL_15;
      }

      biases2 = MLCGPUHelper;
      weights2 = [v19 biases];
    }

    biases = weights2;
    [MLCGPUHelper synchronizeResource:weights2 commandBuffer:commandBuffer];
    goto LABEL_13;
  }

LABEL_18:

  return v25 != 0;
}

- (void)allocateCommandBufferForDeviceAtIndex:(unint64_t)index
{
  v5 = MEMORY[0x277CD7208];
  gpuCommandQueueList = [(MLCDeviceGPU *)self gpuCommandQueueList];
  v7 = [gpuCommandQueueList objectAtIndexedSubscript:index];
  v8 = [v5 commandBufferFromCommandQueue:v7];
  gpuMPSCommandBufferList = [(MLCDeviceGPU *)self gpuMPSCommandBufferList];
  [gpuMPSCommandBufferList setObject:v8 atIndexedSubscript:index];

  gpuMPSCommandBufferList2 = [(MLCDeviceGPU *)self gpuMPSCommandBufferList];
  v10 = [gpuMPSCommandBufferList2 objectAtIndexedSubscript:index];
  rootCommandBuffer = [v10 rootCommandBuffer];
  gpuCommandBufferList = [(MLCDeviceGPU *)self gpuCommandBufferList];
  [gpuCommandBufferList setObject:rootCommandBuffer atIndexedSubscript:index];
}

- (void)commitDeviceAtIndex:(unint64_t)index
{
  gpuMPSCommandBufferList = [(MLCDeviceGPU *)self gpuMPSCommandBufferList];
  v6 = [gpuMPSCommandBufferList objectAtIndexedSubscript:index];
  rootCommandBuffer = [v6 rootCommandBuffer];
  [rootCommandBuffer commit];

  [(MLCDeviceGPU *)self allocateCommandBufferForDeviceAtIndex:index];
}

- (void)updateGraphExecutionTime:(id)time atIndex:(int)index gpuTime:(double)gpuTime
{
  timeCopy = time;
  bytes = [time bytes];
  os_unfair_lock_lock(&self->_l);
  gpuTimeCopy = *(bytes + 8 * index);
  if (gpuTimeCopy <= gpuTime)
  {
    gpuTimeCopy = gpuTime;
  }

  *(bytes + 8 * index) = gpuTimeCopy;

  os_unfair_lock_unlock(&self->_l);
}

void __55__MLCDeviceGPU_commitWithProfiling_graphExecutionTime___block_invoke(uint64_t a1, void *a2)
{
  if (([a2 status] - 5) <= 1)
  {
    v3 = +[MLCLog framework];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __55__MLCDeviceGPU_commitWithProfiling_graphExecutionTime___block_invoke_cold_1(a1);
    }
  }

  if (*(a1 + 72) == 1)
  {
    [*(a1 + 40) GPUEndTime];
    v5 = v4;
    [*(a1 + 40) GPUStartTime];
    [*(a1 + 32) updateGraphExecutionTime:*(a1 + 48) atIndex:1 gpuTime:v5 - v6];
  }
}

- (void)commitWithCompletionHandler:(id)handler enableProfiling:(BOOL)profiling graphExecutionTime:(id)time graphResultTensor:(id)tensor
{
  handlerCopy = handler;
  timeCopy = time;
  tensorCopy = tensor;
  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x2020000000;
  atomic_store([(MLCDeviceGPU *)self numDevicesToUse], &v28);
  [(MLCDeviceGPU *)self signalNextEvent];
  [(MLCDeviceGPU *)self waitForOthers];
  for (i = 0; i < [(MLCDeviceGPU *)self numDevicesToUse]; ++i)
  {
    gpuCommandBufferList = [(MLCDeviceGPU *)self gpuCommandBufferList];
    v16 = [gpuCommandBufferList objectAtIndexedSubscript:i];

    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __97__MLCDeviceGPU_commitWithCompletionHandler_enableProfiling_graphExecutionTime_graphResultTensor___block_invoke;
    v18[3] = &unk_278A692E8;
    v24 = a2;
    v25 = i;
    v18[4] = self;
    profilingCopy = profiling;
    v17 = v16;
    v19 = v17;
    v20 = timeCopy;
    v23 = v27;
    v21 = tensorCopy;
    v22 = handlerCopy;
    [v17 addCompletedHandler:v18];
    [(MLCDeviceGPU *)self commitDeviceAtIndex:i];
  }

  _Block_object_dispose(v27, 8);
}

void __97__MLCDeviceGPU_commitWithCompletionHandler_enableProfiling_graphExecutionTime_graphResultTensor___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([v3 status] - 5) > 1)
  {
    v4 = 0;
  }

  else
  {
    v4 = [v3 error];
    v5 = +[MLCLog framework];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __97__MLCDeviceGPU_commitWithCompletionHandler_enableProfiling_graphExecutionTime_graphResultTensor___block_invoke_cold_1(a1);
    }
  }

  if (*(a1 + 96) == 1)
  {
    [*(a1 + 40) GPUEndTime];
    v7 = v6;
    [*(a1 + 40) GPUStartTime];
    [*(a1 + 32) updateGraphExecutionTime:*(a1 + 48) atIndex:2 gpuTime:v7 - v8];
  }

  if (atomic_fetch_add((*(*(a1 + 72) + 8) + 24), 0xFFFFFFFFFFFFFFFFLL) == 1)
  {
    v9 = *(a1 + 56);
    if (v9)
    {
      v10 = [v9 data];
      if (![v10 bytes])
      {
LABEL_13:

        goto LABEL_14;
      }

      v11 = [*(a1 + 56) device];

      if (v11)
      {
        v12 = *(a1 + 32);
        v13 = *(a1 + 56);
        v10 = [v13 data];
        [v12 readTensor:v13 targetBuffer:{objc_msgSend(v10, "bytes")}];
        goto LABEL_13;
      }
    }

LABEL_14:
    v14 = 0.0;
    if (*(a1 + 96) == 1)
    {
      os_unfair_lock_lock((*(a1 + 32) + 16));
      v15 = [*(a1 + 48) bytes];
      v14 = *(v15 + 8) + *(v15 + 16);
      os_unfair_lock_unlock((*(a1 + 32) + 16));
    }

    v16 = *(a1 + 64);
    if (v16)
    {
      (*(v16 + 16))(v16, *(a1 + 56), v4, v14);
    }
  }
}

- (void)commitAndWaitForCompletion:(id)completion enableProfiling:(BOOL)profiling graphExecutionTime:(id)time graphResultTensor:(id)tensor
{
  profilingCopy = profiling;
  v49 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  timeCopy = time;
  tensorCopy = tensor;
  [(MLCDeviceGPU *)self signalNextEvent];
  [(MLCDeviceGPU *)self waitForOthers];
  if ([(MLCDeviceGPU *)self numDevicesToUse])
  {
    v13 = 0;
    do
    {
      gpuCommandBufferList = [(MLCDeviceGPU *)self gpuCommandBufferList];
      v15 = [gpuCommandBufferList objectAtIndexedSubscript:v13];
      [v15 commit];

      ++v13;
    }

    while (v13 < [(MLCDeviceGPU *)self numDevicesToUse]);
  }

  v16 = 0;
  if ([(MLCDeviceGPU *)self numDevicesToUse])
  {
    v17 = 0;
    do
    {
      gpuCommandBufferList2 = [(MLCDeviceGPU *)self gpuCommandBufferList];
      v19 = [gpuCommandBufferList2 objectAtIndexedSubscript:v17];
      [v19 waitUntilCompleted];

      gpuCommandBufferList3 = [(MLCDeviceGPU *)self gpuCommandBufferList];
      v21 = [gpuCommandBufferList3 objectAtIndexedSubscript:v17];

      if (([v21 status] - 5) <= 1)
      {
        error = [v21 error];

        v23 = +[MLCLog framework];
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          NSStringFromSelector(a2);
          v31 = v41 = completionCopy;
          gpuCommandQueueList = [(MLCDeviceGPU *)self gpuCommandQueueList];
          [gpuCommandQueueList objectAtIndexedSubscript:v17];
          v33 = v40 = tensorCopy;
          *buf = 138412802;
          v44 = v31;
          v45 = 2048;
          v46 = v17;
          v47 = 2112;
          v48 = v33;
          _os_log_error_impl(&dword_238C1D000, v23, OS_LOG_TYPE_ERROR, "%@: Internal Error: CommandBuffer failure: gpuCommandQueueList[%lu]=%@", buf, 0x20u);

          tensorCopy = v40;
          completionCopy = v41;
        }

        v16 = error;
      }

      if (profilingCopy)
      {
        [v21 GPUEndTime];
        v25 = v24;
        [v21 GPUStartTime];
        v27 = v25 - v26;
        os_unfair_lock_lock(&self->_l);
        bytes = [timeCopy bytes];
        [(MLCDeviceGPU *)self executionTimeInterval][8 * v17] = v27;
        v29 = *(bytes + 8);
        executionTimeInterval = [(MLCDeviceGPU *)self executionTimeInterval];
        executionTimeInterval[v17] = v29 + executionTimeInterval[v17];
        os_unfair_lock_unlock(&self->_l);
      }

      ++v17;
    }

    while (v17 < [(MLCDeviceGPU *)self numDevicesToUse]);
  }

  if (tensorCopy)
  {
    data = [tensorCopy data];
    if ([data bytes])
    {
      device = [tensorCopy device];

      if (!device)
      {
        goto LABEL_18;
      }

      data = [tensorCopy data];
      -[MLCDeviceGPU readTensor:targetBuffer:](self, "readTensor:targetBuffer:", tensorCopy, [data bytes]);
    }
  }

LABEL_18:
  if ([(MLCDeviceGPU *)self numDevicesToUse])
  {
    v36 = 0;
    do
    {
      [(MLCDeviceGPU *)self allocateCommandBufferForDeviceAtIndex:v36++];
    }

    while (v36 < [(MLCDeviceGPU *)self numDevicesToUse]);
  }

  if (completionCopy)
  {
    v37 = 0.0;
    if (profilingCopy)
    {
      os_unfair_lock_lock(&self->_l);
      if ([(MLCDeviceGPU *)self numDevicesToUse])
      {
        v38 = 0;
        do
        {
          if (v37 <= [(MLCDeviceGPU *)self executionTimeInterval][8 * v38])
          {
            v37 = [(MLCDeviceGPU *)self executionTimeInterval][8 * v38];
          }

          ++v38;
        }

        while (v38 < [(MLCDeviceGPU *)self numDevicesToUse]);
      }

      os_unfair_lock_unlock(&self->_l);
    }

    completionCopy[2](completionCopy, tensorCopy, v16, v37);
  }

  v39 = *MEMORY[0x277D85DE8];
}

- (void)allocateDeviceHeapForGraph:(id)graph forInference:(BOOL)inference
{
  inferenceCopy = inference;
  graphCopy = graph;
  if ([graphCopy count])
  {
    bytes = 0;
    v183 = 0;
    v180 = 0;
    v6 = 0;
    v7 = 0;
    while (1)
    {
      deviceList = [(MLCDeviceGPU *)self deviceList];
      v9 = [deviceList objectAtIndexedSubscript:0];

      v10 = [graphCopy objectAtIndexedSubscript:v7];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {

LABEL_6:
        if (!inferenceCopy || ([graphCopy objectAtIndexedSubscript:v7], v13 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v13, (isKindOfClass & 1) == 0))
        {
          v178 = v6;
          v184 = 0;
          v185 = 0;
          v15 = [graphCopy objectAtIndexedSubscript:v7];
          sourceTensors = [v15 sourceTensors];
          v17 = [sourceTensors objectAtIndexedSubscript:0];

          GPU_GetTensorWidthAndHeight(v17, &v185, &v184);
          descriptor = [v17 descriptor];
          shape = [descriptor shape];
          v20 = [shape count];

          descriptor2 = [v17 descriptor];
          shape2 = [descriptor2 shape];
          v23 = [shape2 objectAtIndexedSubscript:0];
          unsignedIntegerValue = [v23 unsignedIntegerValue];

          if (v20 < 2)
          {
            unsignedIntegerValue2 = unsignedIntegerValue;
            unsignedIntegerValue = 1;
          }

          else
          {
            descriptor3 = [v17 descriptor];
            shape3 = [descriptor3 shape];
            v27 = [shape3 objectAtIndexedSubscript:1];
            unsignedIntegerValue2 = [v27 unsignedIntegerValue];
          }

          v29 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:125 width:v185 height:v184 mipmapped:0];
          v30 = v29;
          if (unsignedIntegerValue2 <= 4)
          {
            v31 = 2;
          }

          else
          {
            v31 = 3;
          }

          [v29 setTextureType:v31];
          [v30 setArrayLength:(unsignedIntegerValue2 + 3) >> 2];
          v176 = v9;
          v32 = [v9 heapTextureSizeAndAlignWithDescriptor:v30];
          v34 = v183;
          if ((v32 + v33 - 1) / v33 * v33 * unsignedIntegerValue > v183)
          {
            v34 = (v32 + v33 - 1) / v33 * v33 * unsignedIntegerValue;
          }

          v35 = bytes;
          if (v33 > bytes)
          {
            v35 = v33;
          }

          bytesa = v35;
          v183 = v34;
          v36 = [graphCopy objectAtIndexedSubscript:v7];
          resultTensors = [v36 resultTensors];
          v38 = [resultTensors objectAtIndexedSubscript:0];

          GPU_GetTensorWidthAndHeight(v38, &v185, &v184);
          descriptor4 = [v38 descriptor];
          shape4 = [descriptor4 shape];
          v41 = [shape4 count];

          descriptor5 = [v38 descriptor];
          shape5 = [descriptor5 shape];
          v44 = [shape5 objectAtIndexedSubscript:0];
          unsignedIntegerValue3 = [v44 unsignedIntegerValue];

          if (v41 < 2)
          {
            unsignedIntegerValue4 = unsignedIntegerValue3;
            unsignedIntegerValue3 = 1;
          }

          else
          {
            descriptor6 = [v38 descriptor];
            shape6 = [descriptor6 shape];
            v48 = [shape6 objectAtIndexedSubscript:1];
            unsignedIntegerValue4 = [v48 unsignedIntegerValue];
          }

          v50 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:125 width:v185 height:v184 mipmapped:0];

          if (unsignedIntegerValue4 <= 4)
          {
            v51 = 2;
          }

          else
          {
            v51 = 3;
          }

          [v50 setTextureType:v51];
          [v50 setStorageMode:2];
          [v50 setUsage:3];
          [v50 setArrayLength:(unsignedIntegerValue4 + 3) >> 2];
          v9 = v176;
          v52 = [v176 heapTextureSizeAndAlignWithDescriptor:v50];
          v6 = v178;
          v54 = v180;
          if ((v52 + v53 - 1) / v53 * v53 * unsignedIntegerValue3 > v180)
          {
            v54 = (v52 + v53 - 1) / v53 * v53 * unsignedIntegerValue3;
          }

          v55 = bytesa;
          if (v53 > bytesa)
          {
            v55 = v53;
          }

          v180 = v54;
          bytes = v55;
          if (v178 <= 3)
          {
            v6 = 3;
          }
        }

        goto LABEL_59;
      }

      v11 = [graphCopy objectAtIndexedSubscript:v7];
      objc_opt_class();
      v12 = objc_opt_isKindOfClass();

      if (v12)
      {
        goto LABEL_6;
      }

      v56 = v9;
      v57 = [graphCopy objectAtIndexedSubscript:v7];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
      }

      else
      {
        v58 = [graphCopy objectAtIndexedSubscript:v7];
        objc_opt_class();
        v59 = objc_opt_isKindOfClass();

        if ((v59 & 1) == 0)
        {
          v69 = [graphCopy objectAtIndexedSubscript:v7];
          objc_opt_class();
          v70 = objc_opt_isKindOfClass();

          if (v70)
          {
            v179 = v6;
            v71 = [graphCopy objectAtIndexedSubscript:v7];
            sourceTensors2 = [v71 sourceTensors];
            v73 = [sourceTensors2 objectAtIndexedSubscript:0];

            v74 = [graphCopy objectAtIndexedSubscript:v7];
            sourceTensors3 = [v74 sourceTensors];
            v76 = [sourceTensors3 objectAtIndexedSubscript:1];

            descriptor7 = [v73 descriptor];
            shape7 = [descriptor7 shape];
            v79 = [shape7 objectAtIndexedSubscript:0];
            unsignedIntegerValue5 = [v79 unsignedIntegerValue];

            v177 = v73;
            descriptor8 = [v73 descriptor];
            shape8 = [descriptor8 shape];
            v83 = [shape8 objectAtIndexedSubscript:1];
            unsignedIntegerValue6 = [v83 unsignedIntegerValue];

            v174 = v76;
            descriptor9 = [v76 descriptor];
            shape9 = [descriptor9 shape];
            v86 = [shape9 objectAtIndexedSubscript:1];
            unsignedIntegerValue7 = [v86 unsignedIntegerValue];

            v88 = [graphCopy objectAtIndexedSubscript:v7];
            descriptor10 = [v88 descriptor];
            LODWORD(shape9) = [descriptor10 hasAttentionBiases];

            v90 = unsignedIntegerValue7 + shape9;
            descriptor11 = [v88 descriptor];
            LODWORD(shape9) = [descriptor11 addsZeroAttention];

            v92 = v90 + shape9;
            descriptor12 = [v88 descriptor];
            headCount = [descriptor12 headCount];

            v171 = unsignedIntegerValue5;
            v95 = 4 * unsignedIntegerValue6 * unsignedIntegerValue5;
            v96 = v95 * v92 * headCount;
            v97 = 1;
            if (!inferenceCopy)
            {
              descriptor13 = [v88 descriptor];
              modelDimension = [descriptor13 modelDimension];

              descriptor14 = [v88 descriptor];
              v173 = v92;
              valueDimension = [descriptor14 valueDimension];

              v102 = v95 * modelDimension;
              v103 = v95 * valueDimension;
              if (v95 * valueDimension <= (4 * v173 * v171 * modelDimension))
              {
                v103 = 4 * v173 * v171 * modelDimension;
              }

              if (v102 <= v103)
              {
                v102 = v103;
              }

              if (v102 > v96)
              {
                v96 = v102;
              }

              v97 = 6;
            }

            v104 = v183;
            if (v96 > v183)
            {
              v104 = v96;
            }

            v183 = v104;
            v6 = v179;
            if (v97 > v179)
            {
              v6 = v97;
            }

            v105 = bytes;
            if (*MEMORY[0x277D85FA0] > bytes)
            {
              v105 = *MEMORY[0x277D85FA0];
            }

            bytes = v105;
          }

          goto LABEL_58;
        }
      }

      if (!inferenceCopy)
      {
        v60 = [graphCopy objectAtIndexedSubscript:v7];
        sourceTensors4 = [v60 sourceTensors];
        v62 = [sourceTensors4 objectAtIndexedSubscript:0];

        descriptor15 = [v62 descriptor];
        v64 = [v56 heapBufferSizeAndAlignWithLength:objc_msgSend(descriptor15 options:{"tensorAllocationSizeInBytes"), +[MLCGPUHelper mtlResourceOptions](MLCGPUHelper, "mtlResourceOptions")}];
        v66 = v65;

        v67 = v183;
        if ((v64 + v66 - 1) / v66 * v66 > v183)
        {
          v67 = (v64 + v66 - 1) / v66 * v66;
        }

        v68 = bytes;
        if (v66 > bytes)
        {
          v68 = v66;
        }

        bytes = v68;
        v183 = v67;
        if (v6 <= 1)
        {
          v6 = 1;
        }
      }

LABEL_58:
      v9 = v56;
LABEL_59:

      if (++v7 >= [graphCopy count])
      {
        goto LABEL_62;
      }
    }
  }

  v6 = 0;
  v180 = 0;
  bytes = 0;
  v183 = 0;
LABEL_62:
  if (v183 | v180)
  {
    if (v183 <= v180)
    {
      v106 = v180;
    }

    else
    {
      v106 = v183;
    }

    v107 = NSRoundUpToMultipleOfPageSize(bytes);
    v108 = (v107 + v106 - 1) / v107 * v107;
    gpuHeapTemporaryResourceAllocator = [(MLCDeviceGPU *)self gpuHeapTemporaryResourceAllocator];
    v110 = [gpuHeapTemporaryResourceAllocator count];

    if (!v110)
    {
      goto LABEL_72;
    }

    v111 = 0;
    while (1)
    {
      gpuHeapTemporaryResourceAllocator2 = [(MLCDeviceGPU *)self gpuHeapTemporaryResourceAllocator];
      v113 = [gpuHeapTemporaryResourceAllocator2 objectAtIndexedSubscript:v111];

      heapSize = [v113 heapSize];
      if (heapSize >= v108 * v6)
      {
        break;
      }

      deviceList2 = [(MLCDeviceGPU *)self deviceList];
      v111 += [deviceList2 count];

      gpuHeapTemporaryResourceAllocator3 = [(MLCDeviceGPU *)self gpuHeapTemporaryResourceAllocator];
      v117 = [gpuHeapTemporaryResourceAllocator3 count];

      if (v111 >= v117)
      {
        goto LABEL_72;
      }
    }

    if (v111 == 0xFFFFFFFF)
    {
LABEL_72:
      gpuHeapTemporaryResourceAllocator4 = [(MLCDeviceGPU *)self gpuHeapTemporaryResourceAllocator];
      v111 = [gpuHeapTemporaryResourceAllocator4 count];

      deviceList3 = [(MLCDeviceGPU *)self deviceList];
      v120 = [deviceList3 count];

      if (v120)
      {
        v121 = 0;
        v122 = v108 * v6;
        v123 = v6;
        do
        {
          deviceList4 = [(MLCDeviceGPU *)self deviceList];
          v125 = [deviceList4 objectAtIndexedSubscript:v121];

          v126 = [[MLCDeviceGPUHeapAllocator alloc] initWithDevice:v125 heapSize:v122 resourceSize:v108 numResources:v123];
          [(MLCDeviceGPU *)self gpuHeapTemporaryResourceAllocator];
          v128 = v127 = v108;
          [v128 setObject:v126 atIndexedSubscript:v111 + v121];

          v108 = v127;
          ++v121;
          deviceList5 = [(MLCDeviceGPU *)self deviceList];
          v130 = [deviceList5 count];
        }

        while (v121 < v130);
      }
    }

    if ([graphCopy count])
    {
      v131 = 0;
      while (1)
      {
        v132 = [graphCopy objectAtIndexedSubscript:v131];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          break;
        }

        v133 = [graphCopy objectAtIndexedSubscript:v131];
        objc_opt_class();
        v134 = objc_opt_isKindOfClass();

        if (v134)
        {
          goto LABEL_80;
        }

        v149 = [graphCopy objectAtIndexedSubscript:v131];
        skipLayer = [v149 skipLayer];

        if ((skipLayer & 1) == 0)
        {
          v151 = [graphCopy objectAtIndexedSubscript:v131];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            goto LABEL_90;
          }

          v152 = [graphCopy objectAtIndexedSubscript:v131];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {

LABEL_90:
          }

          else
          {
            v161 = [graphCopy objectAtIndexedSubscript:v131];
            objc_opt_class();
            v162 = objc_opt_isKindOfClass();

            if ((v162 & 1) == 0)
            {
              deviceList6 = [(MLCDeviceGPU *)self deviceList];
              v164 = [deviceList6 count];

              if (v164)
              {
                v165 = 0;
                do
                {
                  v166 = [graphCopy objectAtIndexedSubscript:v131];
                  deviceOps = [v166 deviceOps];
                  v168 = [deviceOps objectAtIndexedSubscript:v165];

                  [v168 setTemporaryHeapIndex:0];
                  ++v165;
                  deviceList7 = [(MLCDeviceGPU *)self deviceList];
                  v170 = [deviceList7 count];
                }

                while (v165 < v170);
              }

              goto LABEL_94;
            }
          }

          deviceList8 = [(MLCDeviceGPU *)self deviceList];
          v154 = [deviceList8 count];

          if (v154)
          {
            v155 = 0;
            do
            {
              v156 = [graphCopy objectAtIndexedSubscript:v131];
              deviceOps2 = [v156 deviceOps];
              v158 = [deviceOps2 objectAtIndexedSubscript:v155];

              [v158 setTemporaryHeapIndex:v111 + v155];
              ++v155;
              deviceList9 = [(MLCDeviceGPU *)self deviceList];
              v160 = [deviceList9 count];
            }

            while (v155 < v160);
          }
        }

LABEL_94:
        if (++v131 >= [graphCopy count])
        {
          goto LABEL_101;
        }
      }

LABEL_80:
      deviceList10 = [(MLCDeviceGPU *)self deviceList];
      v136 = [deviceList10 count];

      if (v136)
      {
        v137 = 0;
        do
        {
          v138 = [graphCopy objectAtIndexedSubscript:v131];
          deviceOps3 = [v138 deviceOps];
          v140 = [deviceOps3 objectAtIndexedSubscript:v137];

          if (([v140 isMPSGraph] & 1) == 0)
          {
            forwardKernel = [v140 forwardKernel];
            gpuHeapTemporaryResourceAllocator5 = [(MLCDeviceGPU *)self gpuHeapTemporaryResourceAllocator];
            v137 = [gpuHeapTemporaryResourceAllocator5 objectAtIndexedSubscript:v111 + v137];
            [forwardKernel setDestinationImageAllocator:v137];

            gradientKernel = [v140 gradientKernel];

            gpuHeapTemporaryResourceAllocator6 = [(MLCDeviceGPU *)self gpuHeapTemporaryResourceAllocator];
            v1372 = [gpuHeapTemporaryResourceAllocator6 objectAtIndexedSubscript:v111 + v137];
            [gradientKernel setDestinationImageAllocator:v1372];
          }

          ++v137;
          deviceList11 = [(MLCDeviceGPU *)self deviceList];
          v148 = [deviceList11 count];
        }

        while (v137 < v148);
      }

      goto LABEL_94;
    }
  }

LABEL_101:
}

- (BOOL)needToAllocateDeviceMemoryForTensor:(id)tensor
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
    v10 = [shape2 objectAtIndexedSubscript:0];
    unsignedIntegerValue = [v10 unsignedIntegerValue];
  }

  v11 = [(MLCDeviceGPU *)self needToAllocateDeviceMemoryForTensor:tensorCopy batchSize:unsignedIntegerValue];
  return v11;
}

- (BOOL)needToAllocateDeviceMemoryForTensor:(id)tensor batchSize:(unint64_t)size
{
  tensorCopy = tensor;
  deviceMemory = [tensorCopy deviceMemory];
  v8 = [deviceMemory count];

  if (v8)
  {
    device = [tensorCopy device];
    if (!device)
    {
      goto LABEL_5;
    }

    v10 = device;
    device2 = [tensorCopy device];
    computeEngine = [device2 computeEngine];
    v13 = [(MLCDeviceGPU *)self isEqual:computeEngine];

    if (v13)
    {
      LOBYTE(v14) = 0;
    }

    else
    {
LABEL_5:
      v15 = [tensorCopy calculateBatchSizeToUse:size];
      numDevicesToUse = [(MLCDeviceGPU *)self numDevicesToUse];
      descriptor = [tensorCopy descriptor];
      tensorAllocationSizeInBytes = [descriptor tensorAllocationSizeInBytes];
      if (v15 == 1)
      {
        v19 = tensorAllocationSizeInBytes;
      }

      else
      {
        v19 = tensorAllocationSizeInBytes / numDevicesToUse;
      }

      deviceMemory2 = [tensorCopy deviceMemory];
      v14 = [deviceMemory2 count];

      if (v14)
      {
        v21 = 0;
        do
        {
          deviceMemory3 = [tensorCopy deviceMemory];
          v23 = [deviceMemory3 objectAtIndexedSubscript:v21];

          v14 = [v23 length];
          v24 = v14 >= v19;
          LOBYTE(v14) = v14 < v19;
          if (!v24)
          {
            break;
          }

          ++v21;
          deviceMemory4 = [tensorCopy deviceMemory];
          v26 = [deviceMemory4 count];
        }

        while (v21 < v26);
      }
    }
  }

  else
  {
    LOBYTE(v14) = 1;
  }

  return v14;
}

- (void)allocateDeviceMemoryForTensor:(id)tensor
{
  tensorCopy = tensor;
  -[MLCDeviceGPU allocateDeviceMemoryForTensor:batchSize:](self, "allocateDeviceMemoryForTensor:batchSize:", tensorCopy, [tensorCopy calculateBatchSizeToUse]);
}

- (void)allocateDeviceMemoryForTensor:(id)tensor batchSize:(unint64_t)size
{
  tensorCopy = tensor;
  v6 = [tensorCopy calculateBatchSizeToUse:size];
  v7 = [MEMORY[0x277CBEBF8] mutableCopy];
  [tensorCopy setDeviceMemory:v7];

  numDevicesToUse = [(MLCDeviceGPU *)self numDevicesToUse];
  v9 = numDevicesToUse;
  if (numDevicesToUse < 2 || v6 < 2)
  {
    if (!numDevicesToUse)
    {
      goto LABEL_9;
    }
  }

  else if (!(v6 % numDevicesToUse))
  {
    v6 /= numDevicesToUse;
  }

  v10 = 0;
  do
  {
    deviceList = [(MLCDeviceGPU *)self deviceList];
    v12 = [deviceList objectAtIndexedSubscript:v10];

    deviceMemory = [tensorCopy deviceMemory];
    v14 = [(MLCDeviceGPU *)self allocateDeviceMemoryForTensor:tensorCopy device:v12 count:v6];
    [deviceMemory addObject:v14];

    ++v10;
  }

  while (v9 != v10);
LABEL_9:
}

- (void)selectDevicesWithBatchSize:(unint64_t)size calledfromBindAndWrite:(BOOL)write
{
  deviceList = [(MLCDeviceGPU *)self deviceList];
  v8 = [deviceList count];

  if (size && v8 >= 2 && size % v8 && size > 1)
  {
    v8 = 1;
  }

  if ([(MLCDeviceGPU *)self numDevicesUsedWithFirstBatch])
  {
    numDevicesUsedWithFirstBatch = [(MLCDeviceGPU *)self numDevicesUsedWithFirstBatch];
    numDevicesUsedWithFirstBatch2 = numDevicesUsedWithFirstBatch;
    if (size != 1 || !write)
    {
      numDevicesUsedWithFirstBatch2 = v8;
      if (v8 > numDevicesUsedWithFirstBatch)
      {
        numDevicesUsedWithFirstBatch2 = [(MLCDeviceGPU *)self numDevicesUsedWithFirstBatch];
      }
    }
  }

  else
  {
    [(MLCDeviceGPU *)self setNumDevicesUsedWithFirstBatch:v8];
    numDevicesUsedWithFirstBatch2 = v8;
  }

  [(MLCDeviceGPU *)self setNumDevicesToUse:numDevicesUsedWithFirstBatch2];
}

- (void)deallocateDeviceMemoryForTensor:(id)tensor
{
  v4 = +[MLCLog framework];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceGPU deallocateDeviceMemoryForTensor:a2];
  }
}

- (id)getHostPointerIfUnifiedDeviceMemory:(id)memory
{
  memoryCopy = memory;
  if (![(MLCDeviceGPU *)self isAppleSoCGPU])
  {
    goto LABEL_5;
  }

  data = [memoryCopy data];
  if (!data)
  {
    goto LABEL_6;
  }

  deviceMemory2 = data;
  data2 = [memoryCopy data];
  if (data2)
  {
    data3 = [memoryCopy data];
    bytes = [data3 bytes];
    deviceMemory = [memoryCopy deviceMemory];
    v11 = [deviceMemory objectAtIndexedSubscript:0];
    contents = [v11 contents];

    if (bytes != contents)
    {
LABEL_5:
      data2 = 0;
      goto LABEL_8;
    }

LABEL_6:
    v13 = MEMORY[0x277CBEA90];
    deviceMemory2 = [memoryCopy deviceMemory];
    v14 = [deviceMemory2 objectAtIndexedSubscript:0];
    contents2 = [v14 contents];
    descriptor = [memoryCopy descriptor];
    data2 = [v13 dataWithBytesNoCopy:contents2 length:objc_msgSend(descriptor freeWhenDone:{"tensorAllocationSizeInBytes"), 0}];
  }

LABEL_8:

  return data2;
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
  }

  return 1;
}

- (void)multiDeviceTensorReduction:(id)reduction sourceBuffer:(void *)buffer targetBuffer:(void *)targetBuffer
{
  reductionCopy = reduction;
  descriptor = [reductionCopy descriptor];
  elementCount = [descriptor elementCount];

  if (!elementCount)
  {
    goto LABEL_14;
  }

  v11 = 0;
  while (1)
  {
    descriptor2 = [reductionCopy descriptor];
    dataType = [descriptor2 dataType];

    if (dataType == 1)
    {
      *(targetBuffer + v11) = *(buffer + v11) + *(targetBuffer + v11);
      goto LABEL_9;
    }

    if (dataType == 3)
    {
      *(targetBuffer + v11) = *(targetBuffer + v11) + *(buffer + v11);
      goto LABEL_9;
    }

    if (dataType != 6)
    {
      break;
    }

    *(targetBuffer + v11) += *(buffer + v11);
LABEL_9:
    ++v11;
    descriptor3 = [reductionCopy descriptor];
    elementCount2 = [descriptor3 elementCount];

    if (v11 >= elementCount2)
    {
      goto LABEL_14;
    }
  }

  v16 = +[MLCLog framework];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceGPU multiDeviceTensorReduction:a2 sourceBuffer:? targetBuffer:?];
  }

LABEL_14:
}

- (id)readTensor:(id)tensor
{
  tensorCopy = tensor;
  descriptor = [tensorCopy descriptor];
  tensorAllocationSizeInBytes = [descriptor tensorAllocationSizeInBytes];

  descriptor2 = [tensorCopy descriptor];
  v8 = tensorAllocationSizeInBytes / [descriptor2 elementCount];

  descriptor3 = [tensorCopy descriptor];
  v10 = malloc_type_calloc([descriptor3 elementCount], v8, 0x100004077774924uLL);

  [(MLCDeviceGPU *)self readTensor:tensorCopy targetBuffer:v10];
  v11 = MEMORY[0x277CBEA90];

  return [v11 dataWithBytesNoCopy:v10 length:tensorAllocationSizeInBytes freeWhenDone:1];
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

  v13 = [(MLCDeviceGPU *)self readTensor:tensorCopy fromDeviceIndex:index batchSize:unsignedIntegerValue];

  return v13;
}

- (id)readTensor:(id)tensor fromDeviceIndex:(unint64_t)index batchSize:(unint64_t)size
{
  tensorCopy = tensor;
  v9 = [objc_opt_class() calculateImageSizeForTensor:tensorCopy] * size;
  v10 = malloc_type_malloc(v9, 0x100004077774924uLL);
  [(MLCDeviceGPU *)self readTensor:tensorCopy fromDeviceIndex:index targetBuffer:v10 batchSize:size];

  v11 = MEMORY[0x277CBEA90];

  return [v11 dataWithBytesNoCopy:v10 length:v9 freeWhenDone:1];
}

- (void)readTensor:(id)tensor targetBuffer:(void *)buffer
{
  v103 = *MEMORY[0x277D85DE8];
  tensorCopy = tensor;
  v8 = tensorCopy;
  __dst = buffer;
  if (!buffer)
  {
    v20 = +[MLCLog framework];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [MLCDeviceGPU readTensor:a2 targetBuffer:?];
    }

    goto LABEL_9;
  }

  context = [tensorCopy calculateBatchSizeToUse];
  if ([v8 isLayerParameter])
  {
    childLayers = [v8 childLayers];
    v10 = [childLayers objectAtIndexedSubscript:0];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
      deviceOps = [v11 deviceOps];
      v13 = [deviceOps objectAtIndexedSubscript:0];

      LOBYTE(deviceOps) = [v13 isMPSGraph];
      weights = [v11 weights];
      v15 = weights;
      if (deviceOps)
      {

        if (v15 != v8)
        {
          exportableState = [v13 exportableState];
          v17 = [exportableState objectAtIndexedSubscript:1];
          contents = [v17 contents];
          descriptor = [v8 descriptor];
          memcpy(buffer, contents, [descriptor tensorAllocationSizeInBytes]);

LABEL_64:
          goto LABEL_65;
        }

        v43 = objc_autoreleasePoolPush();
        exportableState2 = [v13 exportableState];
        v45 = [exportableState2 objectAtIndexedSubscript:0];
        contents2 = [v45 contents];

        if (contents2 == __dst)
        {
          descriptor2 = [v8 descriptor];
          v58 = malloc_type_malloc([descriptor2 tensorAllocationSizeInBytes], 0xAB9161ADuLL);

          exportableState3 = [v13 exportableState];
          v48 = [exportableState3 objectAtIndexedSubscript:0];
          contents3 = [v48 contents];
          [v8 descriptor];
          v61 = v60 = contents2;
          __n = v58;
          memcpy(v58, contents3, [v61 tensorAllocationSizeInBytes]);

          contents2 = v60;
        }

        else
        {
          exportableState3 = [v13 exportableState];
          v48 = [exportableState3 objectAtIndexedSubscript:0];
          __n = [v48 contents];
        }

        descriptor3 = [v11 descriptor];
        isConvolutionTranspose = [descriptor3 isConvolutionTranspose];

        descriptor4 = [v11 descriptor];
        kernelWidth = [descriptor4 kernelWidth];
        descriptor5 = [v11 descriptor];
        kernelHeight = [descriptor5 kernelHeight];
        descriptor6 = [v11 descriptor];
        contexta = v43;
        v91 = descriptor4;
        v92 = contents2;
        v89 = descriptor6;
        v90 = descriptor5;
        if (isConvolutionTranspose)
        {
          outputFeatureChannelCount = [descriptor6 outputFeatureChannelCount];
          descriptor7 = [v11 descriptor];
          v87 = outputFeatureChannelCount / [descriptor7 groupCount];
          descriptor8 = [v11 descriptor];
          inputFeatureChannelCount = [descriptor8 inputFeatureChannelCount];
          weights2 = [v11 weights];
          descriptor9 = [weights2 descriptor];
          LODWORD(v81) = [descriptor9 dataType];
          v74 = __n;
          [MLCDataHelper convertSourceHWOI:__n toResultOIHW:__dst width:kernelWidth height:kernelHeight inputFeatureChannelCount:v87 outputFeatureChannelCount:inputFeatureChannelCount dataType:v81];
        }

        else
        {
          v84 = kernelHeight;
          v86 = kernelWidth;
          inputFeatureChannelCount2 = [descriptor6 inputFeatureChannelCount];
          descriptor10 = [v11 descriptor];
          v82 = inputFeatureChannelCount2 / [descriptor10 groupCount];
          descriptor8 = [v11 descriptor];
          descriptor9 = [descriptor8 usesDepthwiseConvolution];
          weights2 = [v11 descriptor];
          outputFeatureChannelCount2 = [weights2 outputFeatureChannelCount];
          v83 = descriptor9;
          v88 = descriptor10;
          if (descriptor9)
          {
            descriptor9 = [v11 descriptor];
            outputFeatureChannelCount2 /= [descriptor9 inputFeatureChannelCount];
          }

          weights3 = [v11 weights];
          descriptor11 = [weights3 descriptor];
          LODWORD(v81) = [descriptor11 dataType];
          v74 = __n;
          [MLCDataHelper convertSourceHWIO:__n toResultOIHW:__dst width:v86 height:v84 inputFeatureChannelCount:v82 outputFeatureChannelCount:outputFeatureChannelCount2 dataType:v81];

          descriptor7 = v88;
          if (!v83)
          {
            goto LABEL_60;
          }
        }

LABEL_60:
        if (v92 == __dst && v74)
        {
          free(v74);
        }

        objc_autoreleasePoolPop(contexta);
        goto LABEL_64;
      }

      exportableState4 = [v13 exportableState];
      v41 = exportableState4;
      if (v15 == v8)
      {
        [exportableState4 weights];
      }

      else
      {
        [exportableState4 biases];
      }
      v49 = ;

      descriptor12 = [v11 descriptor];
      if ([descriptor12 isConvolutionTranspose])
      {
        weights4 = [v11 weights];

        if (weights4 == v8)
        {
          v52 = MEMORY[0x277CBEA90];
          descriptor13 = [v8 descriptor];
          v54 = [v52 dataWithBytesNoCopy:buffer length:objc_msgSend(descriptor13 freeWhenDone:{"tensorAllocationSizeInBytes"), 0}];
          descriptor14 = [v8 descriptor];
          [(MLCDeviceGPU *)self rotateAndCopyMTLBuffer:v49 toNSData:v54 withTensorDescriptor:descriptor14];

LABEL_52:
          goto LABEL_64;
        }
      }

      else
      {
      }

      contents4 = [v49 contents];
      descriptor13 = [v8 descriptor];
      memcpy(buffer, contents4, [descriptor13 tensorAllocationSizeInBytes]);
      goto LABEL_52;
    }
  }

  deviceMemory = [v8 deviceMemory];
  v22 = [deviceMemory objectAtIndexedSubscript:0];
  v23 = [v22 conformsToProtocol:&unk_284BC3750];

  if (!v23)
  {
    if (context >= -[MLCDeviceGPU numDevicesToUse](self, "numDevicesToUse") || [v8 multiDeviceReductionType])
    {
      descriptor15 = [v8 descriptor];
      tensorAllocationSizeInBytes = [descriptor15 tensorAllocationSizeInBytes];

      if ([(MLCDeviceGPU *)self numDevicesToUse])
      {
        v30 = 0;
        v31 = 0;
        do
        {
          if ([v8 multiDeviceReductionType] && -[MLCDeviceGPU numDevicesToUse](self, "numDevicesToUse") > 1)
          {
            if (!v31)
            {
              bzero(__dst, tensorAllocationSizeInBytes);
            }

            v32 = [(MLCDeviceGPU *)self readTensor:v8 fromDeviceIndex:v31 batchSize:context];
            -[MLCDeviceGPU multiDeviceTensorReduction:sourceBuffer:targetBuffer:](self, "multiDeviceTensorReduction:sourceBuffer:targetBuffer:", v8, [v32 bytes], __dst);
          }

          else
          {
            [(MLCDeviceGPU *)self readTensor:v8 fromDeviceIndex:v31 targetBuffer:&__dst[v30 / [(MLCDeviceGPU *)self numDevicesToUse]] batchSize:context / [(MLCDeviceGPU *)self numDevicesToUse]];
          }

          ++v31;
          v30 += tensorAllocationSizeInBytes;
        }

        while (v31 < [(MLCDeviceGPU *)self numDevicesToUse]);
      }

      goto LABEL_65;
    }

    v20 = +[MLCLog framework];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v42 = NSStringFromSelector(a2);
      *buf = 138412802;
      v98 = v42;
      v99 = 2048;
      v100 = context;
      v101 = 2048;
      numDevicesToUse = [(MLCDeviceGPU *)self numDevicesToUse];
      _os_log_error_impl(&dword_238C1D000, v20, OS_LOG_TYPE_ERROR, "%@: Reading tensor with batchSize %lu from %lu GPUs without reduction", buf, 0x20u);
    }

LABEL_9:

    goto LABEL_65;
  }

  descriptor16 = [v8 descriptor];
  tensorAllocationSizeInBytes2 = [descriptor16 tensorAllocationSizeInBytes];

  numDevicesToUse2 = [(MLCDeviceGPU *)self numDevicesToUse];
  v27 = numDevicesToUse2;
  if (context == 1 && numDevicesToUse2 == 2)
  {
    if ([v8 multiDeviceReductionType])
    {
      v27 = 2;
    }

    else
    {
      v27 = 1;
    }
  }

  else if (!numDevicesToUse2)
  {
    goto LABEL_65;
  }

  v33 = 0;
  v34 = 0;
  do
  {
    if ([v8 multiDeviceReductionType] && -[MLCDeviceGPU numDevicesToUse](self, "numDevicesToUse") > 1)
    {
      if (!v34)
      {
        bzero(__dst, tensorAllocationSizeInBytes2);
      }

      v39 = [(MLCDeviceGPU *)self readTensor:v8 fromDeviceIndex:v34 batchSize:context];
      -[MLCDeviceGPU multiDeviceTensorReduction:sourceBuffer:targetBuffer:](self, "multiDeviceTensorReduction:sourceBuffer:targetBuffer:", v8, [v39 bytes], __dst);
    }

    else
    {
      v35 = &__dst[v33 / v27];
      deviceMemory2 = [v8 deviceMemory];
      v37 = [deviceMemory2 objectAtIndexedSubscript:v34];
      contents5 = [v37 contents];

      if (v35 != contents5)
      {
        memcpy(v35, contents5, tensorAllocationSizeInBytes2 / v27);
      }
    }

    ++v34;
    v33 += tensorAllocationSizeInBytes2;
  }

  while (v27 != v34);
LABEL_65:

  v80 = *MEMORY[0x277D85DE8];
}

- (void)readTensor:(id)tensor fromDeviceIndex:(unint64_t)index targetBuffer:(void *)buffer batchSize:(unint64_t)size reduceOverBatch:(BOOL)batch
{
  tensorCopy = tensor;
  deviceMemory = [tensorCopy deviceMemory];
  v12 = [deviceMemory objectAtIndexedSubscript:index];
  v13 = [v12 conformsToProtocol:&unk_284BC3750];

  deviceMemory2 = [tensorCopy deviceMemory];
  v15 = [deviceMemory2 objectAtIndexedSubscript:index];

  if (v13)
  {
    contents = [v15 contents];
    if (contents != buffer)
    {
      v17 = contents;
      v18 = [objc_opt_class() calculateImageSizeForTensor:tensorCopy];
      memcpy(buffer, v17, v18 * size);
    }
  }

  else
  {
    v19 = [objc_opt_class() calculateImageSizeForTensor:tensorCopy];
    v20 = v19;
    if (batch)
    {
      v21 = malloc_type_malloc(v19, 0x641D81FDuLL);
      v22 = v15;
      if (size)
      {
        v23 = v22;
        v24 = 0;
        do
        {
          v25 = [v23 objectAtIndexedSubscript:v24];
          v26 = v25;
          if (v24)
          {
            [v25 readBytes:v21 dataLayout:1 imageIndex:0];
            if (v20 >= 4)
            {
              v27 = v21;
              bufferCopy = buffer;
              v29 = v20 >> 2;
              do
              {
                v30 = *v27++;
                *bufferCopy = v30 + *bufferCopy;
                ++bufferCopy;
                --v29;
              }

              while (v29);
            }
          }

          else
          {
            [v25 readBytes:buffer dataLayout:1 imageIndex:0];
          }

          ++v24;
        }

        while (v24 != size);
      }

      free(v21);
    }

    else
    {
      v31 = v15;
      if (size)
      {
        v32 = v31;
        v33 = 0;
        do
        {
          v34 = [v32 objectAtIndexedSubscript:v33];
          [v34 readBytes:buffer dataLayout:1 imageIndex:0];
          buffer = buffer + v20;

          ++v33;
        }

        while (size != v33);
      }
    }
  }
}

- (void)dispatchReadTensor:(id)tensor targetBuffer:(void *)buffer batchSize:(unint64_t)size
{
  tensorCopy = tensor;
  deviceMemory = [tensorCopy deviceMemory];
  v9 = [deviceMemory objectAtIndexedSubscript:0];

  if (-[MLCDeviceGPU numDevicesToUse](self, "numDevicesToUse") != 1 || [v9 contents] != buffer)
  {
    [(MLCDeviceGPU *)self dispatchReadTensorFromAllDevices:tensorCopy targetBuffer:buffer batchSize:size];
  }
}

- (void)dispatchReadTensorFromAllDevices:(id)devices targetBuffer:(void *)buffer batchSize:(unint64_t)size
{
  devicesCopy = devices;
  deviceMemory = [devicesCopy deviceMemory];
  v9 = [deviceMemory objectAtIndexedSubscript:0];
  contents = [v9 contents];

  if (contents == buffer && [(MLCDeviceGPU *)self numDevicesToUse]< 2)
  {
    deviceMemory2 = [devicesCopy deviceMemory];
    v28 = [deviceMemory2 objectAtIndexedSubscript:0];
    gpuCommandBufferList = [(MLCDeviceGPU *)self gpuCommandBufferList];
    blitCommandEncoder = [gpuCommandBufferList objectAtIndexedSubscript:0];
    [MLCGPUHelper synchronizeResource:v28 commandBuffer:blitCommandEncoder];
  }

  else
  {
    deviceMemory2 = [devicesCopy descriptor];
    shape = [deviceMemory2 shape];
    v13 = [shape count] != 1;

    shape2 = [deviceMemory2 shape];
    v15 = [shape2 count];

    v16 = 1;
    if (v15 > v13)
    {
      do
      {
        shape3 = [deviceMemory2 shape];
        v18 = [shape3 objectAtIndexedSubscript:v13];
        v16 *= [v18 unsignedIntegerValue];

        ++v13;
        shape4 = [deviceMemory2 shape];
        v20 = [shape4 count];
      }

      while (v13 < v20);
    }

    dataType = [deviceMemory2 dataType];
    if (dataType == 4)
    {
      v22 = v16;
    }

    else
    {
      v22 = 0;
    }

    if (dataType == 6)
    {
      v22 = v16;
    }

    v23 = 4 * v16;
    v24 = 2 * v16;
    if (dataType != 3)
    {
      v24 = 0;
    }

    if (dataType != 1)
    {
      v23 = v24;
    }

    if (dataType <= 3)
    {
      v25 = v23;
    }

    else
    {
      v25 = v22;
    }

    v26 = v25 * size;
    deviceList = [(MLCDeviceGPU *)self deviceList];
    v28 = [deviceList objectAtIndexedSubscript:0];

    gpuCommandBufferList = [v28 newBufferWithBytesNoCopy:buffer length:NSRoundUpToMultipleOfPageSize(v25 * size) options:0 deallocator:0];
    numDevicesToUse = [(MLCDeviceGPU *)self numDevicesToUse];
    if (size != 1 && numDevicesToUse != 1)
    {
      v26 = size / [(MLCDeviceGPU *)self numDevicesToUse]* v25;
    }

    gpuCommandBufferList2 = [(MLCDeviceGPU *)self gpuCommandBufferList];
    v32 = [gpuCommandBufferList2 objectAtIndexedSubscript:0];
    blitCommandEncoder = [v32 blitCommandEncoder];

    deviceMemory3 = [devicesCopy deviceMemory];
    v35 = [deviceMemory3 objectAtIndexedSubscript:0];
    [blitCommandEncoder copyFromBuffer:v35 sourceOffset:0 toBuffer:gpuCommandBufferList destinationOffset:0 size:v26];

    [blitCommandEncoder endEncoding];
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

  [(MLCDeviceGPU *)self broadcastTensor:tensorCopy batchSize:unsignedIntegerValue];
}

- (void)broadcastTensor:(id)tensor batchSize:(unint64_t)size
{
  v39 = *MEMORY[0x277D85DE8];
  tensorCopy = tensor;
  numDevicesToUse = [(MLCDeviceGPU *)self numDevicesToUse];
  numDevicesToUse2 = [(MLCDeviceGPU *)self numDevicesToUse];
  deviceMemory = [tensorCopy deviceMemory];
  v11 = [deviceMemory count];

  if (numDevicesToUse2 != v11)
  {
    v29 = +[MLCLog framework];
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = NSStringFromSelector(a2);
      deviceMemory2 = [tensorCopy deviceMemory];
      v33 = 138412802;
      v34 = v30;
      v35 = 2048;
      v36 = [deviceMemory2 count];
      v37 = 2048;
      numDevicesToUse3 = [(MLCDeviceGPU *)self numDevicesToUse];
      _os_log_error_impl(&dword_238C1D000, v29, OS_LOG_TYPE_ERROR, "%@: tensor deviceMemory count:%lu not matching numDeviceUsed:%lu", &v33, 0x20u);
    }

    goto LABEL_25;
  }

  deviceMemory3 = [tensorCopy deviceMemory];
  v13 = [deviceMemory3 objectAtIndexedSubscript:0];
  v14 = [v13 conformsToProtocol:&unk_284BC3750];

  if (!v14)
  {
    v29 = +[MLCLog framework];
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      [MLCDeviceGPU broadcastTensor:a2 batchSize:?];
    }

LABEL_25:

    goto LABEL_26;
  }

  sizeCopy2 = size / numDevicesToUse;
  if (size % numDevicesToUse)
  {
    v16 = 0;
  }

  else
  {
    v16 = -1;
  }

  if (size % numDevicesToUse)
  {
    sizeCopy2 = size;
  }

  if (numDevicesToUse < 2)
  {
    v16 = 0;
    sizeCopy2 = size;
  }

  if (size >= 2)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if (size >= 2)
  {
    sizeCopy3 = sizeCopy2;
  }

  else
  {
    sizeCopy3 = size;
  }

  v19 = [objc_opt_class() calculateImageSizeForTensor:tensorCopy];
  data = [tensorCopy data];
  bytes = [data bytes];

  v22 = objc_autoreleasePoolPush();
  v23 = 0;
  v24 = v19 * sizeCopy3;
  if (v17)
  {
    v25 = v24;
  }

  else
  {
    v25 = 0;
  }

  do
  {
    deviceMemory4 = [tensorCopy deviceMemory];
    v27 = [deviceMemory4 objectAtIndexedSubscript:v23];

    memcpy([v27 contents], bytes, v24);
    v28 = objc_autoreleasePoolPush();
    [MLCGPUHelper didModifyRange:0 buffer:v24, v27];
    objc_autoreleasePoolPop(v28);
    bytes += v25;

    ++v23;
  }

  while (numDevicesToUse != v23);
  objc_autoreleasePoolPop(v22);
LABEL_26:

  v32 = *MEMORY[0x277D85DE8];
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

  [(MLCDeviceGPU *)self dispatchBroadcastTensor:tensorCopy batchSize:unsignedIntegerValue];
}

- (void)dispatchBroadcastTensor:(id)tensor batchSize:(unint64_t)size
{
  v49 = *MEMORY[0x277D85DE8];
  tensorCopy = tensor;
  numDevicesToUse = [(MLCDeviceGPU *)self numDevicesToUse];
  numDevicesToUse2 = [(MLCDeviceGPU *)self numDevicesToUse];
  deviceMemory = [tensorCopy deviceMemory];
  v11 = [deviceMemory count];

  if (numDevicesToUse2 != v11)
  {
    v31 = +[MLCLog framework];
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v32 = NSStringFromSelector(a2);
      deviceMemory2 = [tensorCopy deviceMemory];
      v43 = 138412802;
      v44 = v32;
      v45 = 2048;
      v46 = [deviceMemory2 count];
      v47 = 2048;
      numDevicesToUse3 = [(MLCDeviceGPU *)self numDevicesToUse];
      _os_log_error_impl(&dword_238C1D000, v31, OS_LOG_TYPE_ERROR, "%@: tensor deviceMemory count:%lu not matching numDeviceUsed:%lu", &v43, 0x20u);
    }

    goto LABEL_22;
  }

  deviceMemory3 = [tensorCopy deviceMemory];
  v13 = [deviceMemory3 objectAtIndexedSubscript:0];
  v14 = [v13 conformsToProtocol:&unk_284BC3750];

  if (!v14)
  {
    v31 = +[MLCLog framework];
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      [MLCDeviceGPU broadcastTensor:a2 batchSize:?];
    }

LABEL_22:

    goto LABEL_29;
  }

  sizeCopy2 = size / numDevicesToUse;
  if (size % numDevicesToUse)
  {
    v16 = 0;
  }

  else
  {
    v16 = -1;
  }

  if (size % numDevicesToUse)
  {
    sizeCopy2 = size;
  }

  if (numDevicesToUse < 2)
  {
    v16 = 0;
    sizeCopy2 = size;
  }

  if (size >= 2)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if (size >= 2)
  {
    sizeCopy3 = sizeCopy2;
  }

  else
  {
    sizeCopy3 = size;
  }

  v19 = [objc_opt_class() calculateImageSizeForTensor:tensorCopy] * sizeCopy3;
  if ([(MLCDeviceGPU *)self isAppleSoCGPU])
  {
    v20 = objc_autoreleasePoolPush();
    deviceList = [(MLCDeviceGPU *)self deviceList];
    v22 = [deviceList objectAtIndexedSubscript:0];

    data = [tensorCopy data];
    v24 = [v22 newBufferWithBytes:objc_msgSend(data length:"bytes") options:{v19, 0}];

    gpuCommandBufferList = [(MLCDeviceGPU *)self gpuCommandBufferList];
    v26 = [gpuCommandBufferList objectAtIndexedSubscript:0];
    blitCommandEncoder = [v26 blitCommandEncoder];

    deviceMemory4 = [tensorCopy deviceMemory];
    v29 = [deviceMemory4 objectAtIndexedSubscript:0];
    [blitCommandEncoder copyFromBuffer:v24 sourceOffset:0 toBuffer:v29 destinationOffset:0 size:v19];

    [blitCommandEncoder endEncoding];
    v30 = v20;
  }

  else
  {
    data2 = [tensorCopy data];
    bytes = [data2 bytes];

    v36 = objc_autoreleasePoolPush();
    v37 = 0;
    if (v17)
    {
      v38 = v19;
    }

    else
    {
      v38 = 0;
    }

    do
    {
      deviceMemory5 = [tensorCopy deviceMemory];
      v40 = [deviceMemory5 objectAtIndexedSubscript:v37];

      memcpy([v40 contents], bytes, v19);
      v41 = objc_autoreleasePoolPush();
      [MLCGPUHelper didModifyRange:0 buffer:v19, v40];
      objc_autoreleasePoolPop(v41);
      bytes += v38;

      ++v37;
    }

    while (numDevicesToUse != v37);
    v30 = v36;
  }

  objc_autoreleasePoolPop(v30);
LABEL_29:

  v42 = *MEMORY[0x277D85DE8];
}

- (void)signalNextEvent
{
  os_unfair_lock_lock(&self->_l);
  if ([(MLCDeviceGPU *)self numDevicesToUse])
  {
    v3 = 0;
    do
    {
      [(MLCDeviceGPU *)self unsafe_signalAllDevicesExcludingDevice:v3 eventValue:[(MLCDeviceGPU *)self currentEventValue][8 * v3] + 1];
      ++v3;
    }

    while (v3 < [(MLCDeviceGPU *)self numDevicesToUse]);
  }

  os_unfair_lock_unlock(&self->_l);
}

- (void)signalAllDevicesExcludingDevice:(unint64_t)device eventValue:(unint64_t)value
{
  os_unfair_lock_lock(&self->_l);
  [(MLCDeviceGPU *)self unsafe_signalAllDevicesExcludingDevice:device eventValue:value];

  os_unfair_lock_unlock(&self->_l);
}

- (void)unsafe_signalAllDevicesExcludingDevice:(unint64_t)device eventValue:(unint64_t)value
{
  gpuSharedEventList = [(MLCDeviceGPU *)self gpuSharedEventList];
  v11 = [gpuSharedEventList objectAtIndexedSubscript:device];

  if ([(MLCDeviceGPU *)self numDevicesToUse])
  {
    v8 = 0;
    do
    {
      if (device == v8)
      {
        [(MLCDeviceGPU *)self currentEventValue][8 * device] = value;
      }

      else
      {
        gpuCommandBufferList = [(MLCDeviceGPU *)self gpuCommandBufferList];
        v10 = [gpuCommandBufferList objectAtIndexedSubscript:v8];

        [v10 encodeSignalEvent:v11 value:value];
      }

      ++v8;
    }

    while (v8 < [(MLCDeviceGPU *)self numDevicesToUse]);
  }
}

- (void)waitForOthers
{
  if ([(MLCDeviceGPU *)self numDevicesToUse])
  {
    v3 = 0;
    do
    {
      os_unfair_lock_lock(&self->_l);
      v4 = [(MLCDeviceGPU *)self currentEventValue][8 * v3];
      os_unfair_lock_unlock(&self->_l);
      [(MLCDeviceGPU *)self waitForAllDevicesExcludingDevice:v3++ eventValue:v4];
    }

    while (v3 < [(MLCDeviceGPU *)self numDevicesToUse]);
  }
}

- (void)waitForAllDevicesExcludingDevice:(unint64_t)device eventValue:(unint64_t)value
{
  os_unfair_lock_lock(&self->_l);
  gpuCommandBufferList = [(MLCDeviceGPU *)self gpuCommandBufferList];
  v11 = [gpuCommandBufferList objectAtIndexedSubscript:device];

  if ([(MLCDeviceGPU *)self numDevicesToUse])
  {
    v8 = 0;
    do
    {
      if (device != v8)
      {
        gpuSharedEventList = [(MLCDeviceGPU *)self gpuSharedEventList];
        v10 = [gpuSharedEventList objectAtIndexedSubscript:v8];

        [v11 encodeWaitForEvent:v10 value:value];
      }

      ++v8;
    }

    while (v8 < [(MLCDeviceGPU *)self numDevicesToUse]);
  }

  os_unfair_lock_unlock(&self->_l);
}

- (unint64_t)deviceMemorySizeForTensor:(id)tensor
{
  descriptor = [tensor descriptor];
  tensorAllocationSizeInBytes = [descriptor tensorAllocationSizeInBytes];
  v6 = tensorAllocationSizeInBytes / [(MLCDeviceGPU *)self numDevicesToUse];

  return v6;
}

- (id)allocateDeviceMemoryForTensor:(id)tensor device:(id)device count:(unint64_t)count
{
  tensorCopy = tensor;
  deviceCopy = device;
  descriptor = [tensorCopy descriptor];
  shape = [descriptor shape];
  if ([shape count] == 1)
  {
    v11 = count == 1;
  }

  else
  {
    descriptor2 = [tensorCopy descriptor];
    shape2 = [descriptor2 shape];
    v14 = [shape2 objectAtIndexedSubscript:0];
    v11 = [v14 unsignedIntegerValue] / count;
  }

  descriptor3 = [tensorCopy descriptor];
  dataType = [descriptor3 dataType];

  if (dataType == 5)
  {
    v17 = 1;
  }

  else
  {
    v17 = v11;
  }

  descriptor4 = [tensorCopy descriptor];
  v19 = [deviceCopy newBufferWithLength:objc_msgSend(descriptor4 options:{"tensorAllocationSizeInBytes") / v17, +[MLCGPUHelper mtlResourceOptions](MLCGPUHelper, "mtlResourceOptions")}];

  return v19;
}

- (void)allReduceOverXGMI:(id)i deviceIndex:(unint64_t)index stateBuffers:(id)buffers
{
  v80[2] = *MEMORY[0x277D85DE8];
  iCopy = i;
  buffersCopy = buffers;
  if ([(MLCDeviceGPU *)self numDevicesToUse]<= 1)
  {
    v11 = +[MLCLog framework];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [MLCDeviceGPU allReduceOverXGMI:a2 deviceIndex:self stateBuffers:?];
    }
  }

  v12 = [iCopy objectAtIndexedSubscript:index];
  v78 = ~index;
  v75 = iCopy;
  v76 = [iCopy objectAtIndexedSubscript:{-[MLCDeviceGPU numDevicesToUse](self, "numDevicesToUse") + ~index}];
  gpuCommandBufferList = [(MLCDeviceGPU *)self gpuCommandBufferList];
  v14 = [gpuCommandBufferList objectAtIndexedSubscript:index];

  currentEventValue = [(MLCDeviceGPU *)self currentEventValue];
  ++currentEventValue[index];
  gpuLocalEventList = [(MLCDeviceGPU *)self gpuLocalEventList];
  v17 = [gpuLocalEventList objectAtIndexedSubscript:index];
  [v14 encodeSignalEvent:v17 value:{-[MLCDeviceGPU currentEventValue](self, "currentEventValue")[8 * index]}];

  gpuLocalEventList2 = [(MLCDeviceGPU *)self gpuLocalEventList];
  v19 = [gpuLocalEventList2 objectAtIndexedSubscript:index];
  indexCopy = index;
  [v14 encodeWaitForEvent:v19 value:{-[MLCDeviceGPU currentEventValue](self, "currentEventValue")[8 * index]}];

  localGradientMatrices = [v12 localGradientMatrices];
  v22 = [localGradientMatrices count];

  if (v22)
  {
    v23 = 0;
    do
    {
      v24 = [buffersCopy objectAtIndexedSubscript:v23];
      localGradientMatrices2 = [v12 localGradientMatrices];
      v26 = [localGradientMatrices2 objectAtIndexedSubscript:v23];

      data = [v26 data];
      blitCommandEncoder = [v14 blitCommandEncoder];
      [blitCommandEncoder copyFromBuffer:v24 sourceOffset:0 toBuffer:data destinationOffset:0 size:{objc_msgSend(data, "length")}];
      [blitCommandEncoder endEncoding];

      ++v23;
      localGradientMatrices3 = [v12 localGradientMatrices];
      v30 = [localGradientMatrices3 count];
    }

    while (v23 < v30);
  }

  v77 = buffersCopy;
  currentEventValue2 = [(MLCDeviceGPU *)self currentEventValue];
  ++currentEventValue2[indexCopy];
  gpuSharedEventList = [(MLCDeviceGPU *)self gpuSharedEventList];
  v33 = [gpuSharedEventList objectAtIndexedSubscript:indexCopy];
  [v14 encodeSignalEvent:v33 value:{-[MLCDeviceGPU currentEventValue](self, "currentEventValue")[8 * indexCopy]}];

  gpuSharedEventList2 = [(MLCDeviceGPU *)self gpuSharedEventList];
  v35 = [gpuSharedEventList2 objectAtIndexedSubscript:{-[MLCDeviceGPU numDevicesToUse](self, "numDevicesToUse") + v78}];
  [v14 encodeWaitForEvent:v35 value:{-[MLCDeviceGPU currentEventValue](self, "currentEventValue")[8 * indexCopy]}];

  receivedGradientMatrices = [v12 receivedGradientMatrices];
  v37 = [receivedGradientMatrices count];

  v38 = v14;
  if (v37)
  {
    v39 = 0;
    do
    {
      remoteGradientBuffers = [v76 remoteGradientBuffers];
      v41 = [remoteGradientBuffers objectAtIndexedSubscript:v39];

      receivedGradientMatrices2 = [v12 receivedGradientMatrices];
      v43 = [receivedGradientMatrices2 objectAtIndexedSubscript:v39];

      data2 = [v43 data];
      blitCommandEncoder2 = [v38 blitCommandEncoder];
      [blitCommandEncoder2 copyFromBuffer:v41 sourceOffset:0 toBuffer:data2 destinationOffset:0 size:{objc_msgSend(data2, "length")}];
      [blitCommandEncoder2 endEncoding];

      ++v39;
      receivedGradientMatrices3 = [v12 receivedGradientMatrices];
      v47 = [receivedGradientMatrices3 count];
    }

    while (v39 < v47);
  }

  v79 = v38;
  localGradientMatrices4 = [v12 localGradientMatrices];
  v49 = [localGradientMatrices4 count];

  if (v49)
  {
    v50 = 0;
    do
    {
      localGradientMatrices5 = [v12 localGradientMatrices];
      v52 = [localGradientMatrices5 objectAtIndexedSubscript:v50];

      v53 = [MEMORY[0x277CD7258] matrixDescriptorWithRows:objc_msgSend(v52 columns:"rows") rowBytes:objc_msgSend(v52 dataType:{"columns"), objc_msgSend(v52, "rowBytes"), objc_msgSend(v52, "dataType")}];
      v54 = objc_alloc(MEMORY[0x277CD7250]);
      v55 = [v77 objectAtIndexedSubscript:v50];
      v56 = [v54 initWithBuffer:v55 descriptor:v53];
      allReducedGradientMatrices = [v12 allReducedGradientMatrices];
      [allReducedGradientMatrices setObject:v56 atIndexedSubscript:v50];

      ++v50;
      localGradientMatrices6 = [v12 localGradientMatrices];
      v59 = [localGradientMatrices6 count];
    }

    while (v50 < v59);
  }

  localGradientMatrices7 = [v12 localGradientMatrices];
  v61 = [localGradientMatrices7 count];

  if (v61)
  {
    v62 = 0;
    do
    {
      matrixSumKernels = [v12 matrixSumKernels];
      v64 = [matrixSumKernels objectAtIndexedSubscript:v62];

      localGradientMatrices8 = [v12 localGradientMatrices];
      v66 = [localGradientMatrices8 objectAtIndexedSubscript:v62];
      v80[0] = v66;
      receivedGradientMatrices4 = [v12 receivedGradientMatrices];
      v68 = [receivedGradientMatrices4 objectAtIndexedSubscript:v62];
      v80[1] = v68;
      v69 = [MEMORY[0x277CBEA60] arrayWithObjects:v80 count:2];
      allReducedGradientMatrices2 = [v12 allReducedGradientMatrices];
      v71 = [allReducedGradientMatrices2 objectAtIndexedSubscript:v62];
      [v64 encodeToCommandBuffer:v79 sourceMatrices:v69 resultMatrix:v71 scaleVector:0 offsetVector:0 biasVector:0 startIndex:0];

      ++v62;
      localGradientMatrices9 = [v12 localGradientMatrices];
      v73 = [localGradientMatrices9 count];
    }

    while (v62 < v73);
  }

  v74 = *MEMORY[0x277D85DE8];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    deviceList = [(MLCDeviceGPU *)self deviceList];
    v7 = [deviceList count];
    deviceList2 = [v5 deviceList];
    v9 = [deviceList2 count];

    if (v7 == v9)
    {
      deviceList3 = [(MLCDeviceGPU *)self deviceList];
      v11 = [deviceList3 count];

      if (v11)
      {
        v12 = 0;
        do
        {
          deviceList4 = [(MLCDeviceGPU *)self deviceList];
          v14 = [deviceList4 objectAtIndexedSubscript:v12];
          deviceList5 = [v5 deviceList];
          v16 = [deviceList5 objectAtIndexedSubscript:v12];

          v17 = v14 == v16;
          if (v14 != v16)
          {
            break;
          }

          ++v12;
          deviceList6 = [(MLCDeviceGPU *)self deviceList];
          v19 = [deviceList6 count];
        }

        while (v12 < v19);
      }

      else
      {
        v17 = 1;
      }
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (BOOL)transferTensor:(id)tensor fromDevice:(id)device
{
  v21 = *MEMORY[0x277D85DE8];
  tensorCopy = tensor;
  deviceCopy = device;
  if (!deviceCopy || (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), self == deviceCopy) && (isKindOfClass & 1) != 0)
  {
    v10 = 1;
  }

  else
  {
    v11 = +[MLCLog framework];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v14 = NSStringFromSelector(a2);
      v15 = 138412802;
      v16 = v14;
      v17 = 2112;
      v18 = tensorCopy;
      v19 = 2112;
      v20 = deviceCopy;
      _os_log_error_impl(&dword_238C1D000, v11, OS_LOG_TYPE_ERROR, "%@: cannot transfer tensor = %@ to GPU from device = %@", &v15, 0x20u);
    }

    v10 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v10;
}

- (void)setDeviceMemoryForTensor:(id)tensor data:(id)data
{
  tensorCopy = tensor;
  dataCopy = data;
  deviceList = [(MLCDeviceGPU *)self deviceList];
  v8 = [deviceList count];

  if (v8)
  {
    v9 = 0;
    do
    {
      deviceList2 = [(MLCDeviceGPU *)self deviceList];
      v11 = [deviceList2 objectAtIndexedSubscript:v9];

      data = [dataCopy data];
      bytes = [data bytes];
      data2 = [dataCopy data];
      v15 = [v11 newBufferWithBytesNoCopy:bytes length:objc_msgSend(data2 options:"length") deallocator:{+[MLCGPUHelper mtlResourceOptions](MLCGPUHelper, "mtlResourceOptions"), 0}];
      deviceMemory = [tensorCopy deviceMemory];
      [deviceMemory setObject:v15 atIndexedSubscript:v9];

      ++v9;
      deviceList3 = [(MLCDeviceGPU *)self deviceList];
      v18 = [deviceList3 count];
    }

    while (v9 < v18);
  }
}

- (void)allocateResultTensor:(id)tensor
{
  tensorCopy = tensor;
  if ([(MLCDeviceGPU *)self needToAllocateDeviceMemoryForTensor:?])
  {
    [(MLCDeviceGPU *)self allocateDeviceMemoryForTensor:tensorCopy];
  }
}

- (void)reduceAcrossBatchForSource:(id)source result:(id)result batchSize:(unint64_t)size batchStride:(unint64_t)stride numEntries:(unint64_t)entries deviceIndex:(unint64_t)index commandBuffer:(id)buffer
{
  strideCopy = stride;
  sizeCopy = size;
  sourceCopy = source;
  resultCopy = result;
  bufferCopy = buffer;
  context = objc_autoreleasePoolPush();
  gpuPipelineStatesReduceAcrossBatch = [(MLCDeviceGPU *)self gpuPipelineStatesReduceAcrossBatch];
  v18 = [gpuPipelineStatesReduceAcrossBatch objectAtIndexedSubscript:index];
  maxTotalThreadsPerThreadgroup = [v18 maxTotalThreadsPerThreadgroup];

  if (maxTotalThreadsPerThreadgroup >= entries)
  {
    entriesCopy = entries;
  }

  else
  {
    entriesCopy = maxTotalThreadsPerThreadgroup;
  }

  v31[0] = 0;
  v31[1] = sizeCopy;
  v31[2] = strideCopy;
  v31[3] = entries;
  v31[4] = 0;
  v21 = (entries + entriesCopy - 1) / entriesCopy;
  v22 = [bufferCopy computeCommandEncoderWithDispatchType:0];
  gpuPipelineStatesReduceAcrossBatch2 = [(MLCDeviceGPU *)self gpuPipelineStatesReduceAcrossBatch];
  v24 = [gpuPipelineStatesReduceAcrossBatch2 objectAtIndexedSubscript:index];
  [v22 setComputePipelineState:v24];

  [v22 setBuffer:sourceCopy offset:0 atIndex:0];
  [v22 setBuffer:resultCopy offset:0 atIndex:1];
  [v22 setBytes:v31 length:20 atIndex:2];
  v29 = v21;
  v30 = vdupq_n_s64(1uLL);
  v27 = entriesCopy;
  v28 = v30;
  [v22 dispatchThreadgroups:&v29 threadsPerThreadgroup:&v27];
  [v22 endEncoding];

  objc_autoreleasePoolPop(context);
}

- (void)dispatchFillTensor:(id)tensor deviceIndex:(unint64_t)index
{
  deviceMemory = [tensor deviceMemory];
  v10 = [deviceMemory objectAtIndexedSubscript:index];

  gpuCommandBufferList = [(MLCDeviceGPU *)self gpuCommandBufferList];
  v8 = [gpuCommandBufferList objectAtIndexedSubscript:index];

  blitCommandEncoder = [v8 blitCommandEncoder];
  [blitCommandEncoder fillBuffer:v10 range:0 value:{objc_msgSend(v10, "length"), 0}];
  [blitCommandEncoder endEncoding];
}

- (void)dispatchPadChannelsKernel:(id)kernel sourceImageBatch:(id)batch resultImageBatch:(id)imageBatch deviceIndex:(unint64_t)index
{
  kernelCopy = kernel;
  batchCopy = batch;
  imageBatchCopy = imageBatch;
  gpuCommandBufferList = [(MLCDeviceGPU *)self gpuCommandBufferList];
  v13 = [gpuCommandBufferList objectAtIndexedSubscript:index];

  context = objc_autoreleasePoolPush();
  v14 = [batchCopy objectAtIndexedSubscript:0];
  width = [v14 width];

  v16 = [batchCopy objectAtIndexedSubscript:0];
  height = [v16 height];

  v33 = width;
  v19 = width < 9 || height < 9;
  if (v19)
  {
    v20 = 8;
  }

  else
  {
    v20 = 16;
  }

  if (v19)
  {
    v21 = 3;
  }

  else
  {
    v21 = 4;
  }

  v22 = [imageBatchCopy objectAtIndexedSubscript:0];
  featureChannels = [v22 featureChannels];

  v39 = featureChannels;
  v35 = v13;
  v24 = [v13 computeCommandEncoderWithDispatchType:1];
  if (featureChannels > 4)
  {
    [(MLCDeviceGPU *)self gpuPipelineStatesPad2DArray];
  }

  else
  {
    [(MLCDeviceGPU *)self gpuPipelineStatesPad2D];
  }
  v25 = ;
  v26 = [v25 objectAtIndexedSubscript:index];
  [v24 setComputePipelineState:v26];

  [v24 memoryBarrierWithScope:2];
  if ([batchCopy count])
  {
    v27 = 0;
    v28 = (v20 - 1 + height) >> v21;
    do
    {
      v29 = [batchCopy objectAtIndexedSubscript:v27];
      texture = [v29 texture];
      [v24 setTexture:texture atIndex:0];

      v31 = [imageBatchCopy objectAtIndexedSubscript:v27];
      texture2 = [v31 texture];
      [v24 setTexture:texture2 atIndex:1];

      [v24 setBytes:&v39 length:8 atIndex:0];
      v38[0] = (v20 - 1 + v33) >> v21;
      v38[1] = v28;
      v38[2] = 1;
      v37[0] = v20;
      v37[1] = v20;
      v37[2] = 1;
      [v24 dispatchThreadgroups:v38 threadsPerThreadgroup:v37];
      ++v27;
    }

    while (v27 < [batchCopy count]);
  }

  [v24 endEncoding];

  objc_autoreleasePoolPop(context);
}

- (void)dispatchForwardActivationsKernel:(id)kernel sourceTensor:(id)tensor resultTensor:(id)resultTensor deviceIndex:(unint64_t)index
{
  kernelCopy = kernel;
  resultTensorCopy = resultTensor;
  deviceMemory = [tensor deviceMemory];
  deviceMemory2 = [resultTensorCopy deviceMemory];
  v47 = kernelCopy;
  v14 = [kernelCopy objectAtIndexedSubscript:index];
  gpuCommandBufferList = [(MLCDeviceGPU *)self gpuCommandBufferList];
  v16 = [gpuCommandBufferList objectAtIndexedSubscript:index];

  v46 = deviceMemory;
  v17 = [deviceMemory objectAtIndexedSubscript:index];
  v45 = deviceMemory2;
  v18 = [deviceMemory2 objectAtIndexedSubscript:index];
  neuronDescriptor = [v14 neuronDescriptor];
  [neuronDescriptor a];
  v52[0] = v20;

  neuronDescriptor2 = [v14 neuronDescriptor];
  [neuronDescriptor2 b];
  v52[1] = v22;

  neuronDescriptor3 = [v14 neuronDescriptor];
  v52[2] = [neuronDescriptor3 activationType];

  batchSize = [v14 batchSize];
  descriptor = [resultTensorCopy descriptor];
  shape = [descriptor shape];
  v27 = [shape count];

  descriptor2 = [resultTensorCopy descriptor];
  shape2 = [descriptor2 shape];
  v30 = shape2;
  if (v27 == 1)
  {
    v31 = [shape2 objectAtIndexedSubscript:0];
    batchSize = [v31 unsignedIntegerValue];
  }

  else
  {
    v32 = [shape2 count];

    if (v32 >= 2)
    {
      v33 = 1;
      do
      {
        descriptor3 = [resultTensorCopy descriptor];
        shape3 = [descriptor3 shape];
        v36 = [shape3 objectAtIndexedSubscript:v33];
        batchSize *= [v36 unsignedIntegerValue];

        ++v33;
        descriptor4 = [resultTensorCopy descriptor];
        shape4 = [descriptor4 shape];
        v39 = [shape4 count];
      }

      while (v33 < v39);
    }
  }

  v52[3] = batchSize;
  forwardKernel = [v14 forwardKernel];
  maxTotalThreadsPerThreadgroup = [forwardKernel maxTotalThreadsPerThreadgroup];

  v42 = (batchSize + maxTotalThreadsPerThreadgroup - 1) / maxTotalThreadsPerThreadgroup;
  v43 = [v16 computeCommandEncoderWithDispatchType:0];
  forwardKernel2 = [v14 forwardKernel];
  [v43 setComputePipelineState:forwardKernel2];

  [v43 setBuffer:v17 offset:0 atIndex:0];
  [v43 setBuffer:v18 offset:0 atIndex:1];
  [v43 setBytes:v52 length:16 atIndex:2];
  v50 = v42;
  v51 = vdupq_n_s64(1uLL);
  v48 = maxTotalThreadsPerThreadgroup;
  v49 = v51;
  [v43 dispatchThreadgroups:&v50 threadsPerThreadgroup:&v48];
  [v43 endEncoding];
}

- (void)dispatchGradientActivationsKernel:(id)kernel sourceGradientTensor:(id)tensor resultGradientTensor:(id)gradientTensor deviceIndex:(unint64_t)index
{
  kernelCopy = kernel;
  gradientTensorCopy = gradientTensor;
  deviceMemory = [tensor deviceMemory];
  deviceMemory2 = [gradientTensorCopy deviceMemory];
  v48 = kernelCopy;
  v14 = [kernelCopy objectAtIndexedSubscript:index];
  gpuCommandBufferList = [(MLCDeviceGPU *)self gpuCommandBufferList];
  v44 = [gpuCommandBufferList objectAtIndexedSubscript:index];

  v47 = deviceMemory;
  v16 = [deviceMemory objectAtIndexedSubscript:index];
  v46 = deviceMemory2;
  v17 = [deviceMemory2 objectAtIndexedSubscript:index];
  source = [v14 source];
  neuronDescriptor = [v14 neuronDescriptor];
  [neuronDescriptor a];
  v53[0] = v20;

  neuronDescriptor2 = [v14 neuronDescriptor];
  [neuronDescriptor2 b];
  v53[1] = v22;

  neuronDescriptor3 = [v14 neuronDescriptor];
  v53[2] = [neuronDescriptor3 activationType];

  batchSize = [v14 batchSize];
  descriptor = [gradientTensorCopy descriptor];
  shape = [descriptor shape];
  v27 = [shape count];

  descriptor2 = [gradientTensorCopy descriptor];
  shape2 = [descriptor2 shape];
  v30 = shape2;
  if (v27 == 1)
  {
    v31 = [shape2 objectAtIndexedSubscript:0];
    batchSize = [v31 unsignedIntegerValue];
  }

  else
  {
    v32 = [shape2 count];

    if (v32 >= 2)
    {
      v33 = 1;
      do
      {
        descriptor3 = [gradientTensorCopy descriptor];
        shape3 = [descriptor3 shape];
        v36 = [shape3 objectAtIndexedSubscript:v33];
        batchSize *= [v36 unsignedIntegerValue];

        ++v33;
        descriptor4 = [gradientTensorCopy descriptor];
        shape4 = [descriptor4 shape];
        v39 = [shape4 count];
      }

      while (v33 < v39);
    }
  }

  v53[3] = batchSize;
  gradientKernel = [v14 gradientKernel];
  maxTotalThreadsPerThreadgroup = [gradientKernel maxTotalThreadsPerThreadgroup];

  v42 = [v45 computeCommandEncoderWithDispatchType:0];
  gradientKernel2 = [v14 gradientKernel];
  [v42 setComputePipelineState:gradientKernel2];

  [v42 setBuffer:source offset:0 atIndex:0];
  [v42 setBuffer:v16 offset:0 atIndex:1];
  [v42 setBuffer:v17 offset:0 atIndex:2];
  [v42 setBytes:v53 length:16 atIndex:3];
  v51 = (batchSize + maxTotalThreadsPerThreadgroup - 1) / maxTotalThreadsPerThreadgroup;
  v52 = vdupq_n_s64(1uLL);
  v49 = maxTotalThreadsPerThreadgroup;
  v50 = v52;
  [v42 dispatchThreadgroups:&v51 threadsPerThreadgroup:&v49];
  [v42 endEncoding];
}

- (void)encodePrimitiveToCommandBuffer:(id)buffer gpuDeviceOps:(id)ops sourceTensor:(id)tensor secondaryTensor:(id)secondaryTensor tertiaryTensor:(id)tertiaryTensor resultTensor:(id)resultTensor params:(CompareParams *)params sizeOfParams:(unint64_t)self0 pipelineState:(id)self1 deviceIndex:(unint64_t)self2
{
  bufferCopy = buffer;
  opsCopy = ops;
  tensorCopy = tensor;
  secondaryTensorCopy = secondaryTensor;
  tertiaryTensorCopy = tertiaryTensor;
  resultTensorCopy = resultTensor;
  stateCopy = state;
  deviceMemory = [tensorCopy deviceMemory];
  v97 = secondaryTensorCopy;
  if (secondaryTensorCopy)
  {
    deviceMemory2 = [secondaryTensorCopy deviceMemory];
  }

  else
  {
    deviceMemory2 = 0;
  }

  v101 = deviceMemory2;
  if (tertiaryTensorCopy)
  {
    deviceMemory3 = [tertiaryTensorCopy deviceMemory];
    v94 = deviceMemory3;
  }

  else
  {
    v94 = 0;
    deviceMemory3 = deviceMemory;
  }

  deviceMemory4 = [resultTensorCopy deviceMemory];
  source0Shape = [opsCopy source0Shape];
  source1Shape = [opsCopy source1Shape];
  source2Shape = [opsCopy source2Shape];
  descriptor = [resultTensorCopy descriptor];
  shape = [descriptor shape];

  context = objc_autoreleasePoolPush();
  v100 = bufferCopy;
  v98 = opsCopy;
  v99 = source2Shape;
  v95 = resultTensorCopy;
  v96 = tertiaryTensorCopy;
  v91 = source1Shape;
  v92 = source0Shape;
  if ([shape count] == 1)
  {
    *&params->var1[3].var0 = 0x100000001;
    *&params->var1[2].var0 = 0x100000001;
    *&params->var1[1].var0 = 0x100000001;
    *&params->var1[0].var0 = 0x100000001;
    params->var1[3].var2 = 1;
    params->var1[2].var2 = 1;
    params->var1[1].var2 = 1;
    params->var1[0].var2 = 1;
    v29 = [source0Shape objectAtIndexedSubscript:0];
    params->var1[0].var3 = [v29 unsignedIntegerValue];

    v30 = [source1Shape objectAtIndexedSubscript:0];
    params->var1[1].var3 = [v30 unsignedIntegerValue];

    v31 = [shape objectAtIndexedSubscript:0];
    params->var1[2].var3 = [v31 unsignedIntegerValue];

    v32 = source2Shape;
    v33 = 0;
LABEL_11:
    v41 = [v32 objectAtIndexedSubscript:v33];
    params->var1[3].var3 = [v41 unsignedIntegerValue];

    goto LABEL_27;
  }

  if ([shape count] == 2)
  {
    *&params->var1[3].var0 = 0x100000001;
    *&params->var1[2].var0 = 0x100000001;
    *&params->var1[1].var0 = 0x100000001;
    *&params->var1[0].var0 = 0x100000001;
    v34 = [source0Shape objectAtIndexedSubscript:0];
    params->var1[0].var2 = [v34 unsignedIntegerValue];

    v35 = [source1Shape objectAtIndexedSubscript:0];
    params->var1[1].var2 = [v35 unsignedIntegerValue];

    v36 = [shape objectAtIndexedSubscript:0];
    params->var1[2].var2 = [v36 unsignedIntegerValue];

    v37 = [source2Shape objectAtIndexedSubscript:0];
    params->var1[3].var2 = [v37 unsignedIntegerValue];

    v38 = [source0Shape objectAtIndexedSubscript:1];
    params->var1[0].var3 = [v38 unsignedIntegerValue];

    v39 = [source1Shape objectAtIndexedSubscript:1];
    params->var1[1].var3 = [v39 unsignedIntegerValue];

    v40 = [shape objectAtIndexedSubscript:1];
    params->var1[2].var3 = [v40 unsignedIntegerValue];

    v32 = source2Shape;
    v33 = 1;
    goto LABEL_11;
  }

  v42 = [source0Shape objectAtIndexedSubscript:0];
  unsignedIntegerValue = [v42 unsignedIntegerValue];
  if (unsignedIntegerValue <= [opsCopy batchSize])
  {
    v44 = [source0Shape objectAtIndexedSubscript:0];
    params->var1[0].var0 = [v44 unsignedIntegerValue];
  }

  else
  {
    params->var1[0].var0 = [opsCopy batchSize];
  }

  v45 = [source1Shape objectAtIndexedSubscript:0];
  unsignedIntegerValue2 = [v45 unsignedIntegerValue];
  if (unsignedIntegerValue2 <= [opsCopy batchSize])
  {
    v47 = [source1Shape objectAtIndexedSubscript:0];
    params->var1[1].var0 = [v47 unsignedIntegerValue];
  }

  else
  {
    params->var1[1].var0 = [opsCopy batchSize];
  }

  v48 = [shape objectAtIndexedSubscript:0];
  unsignedIntegerValue3 = [v48 unsignedIntegerValue];
  if (unsignedIntegerValue3 <= [opsCopy batchSize])
  {
    v50 = [shape objectAtIndexedSubscript:0];
    params->var1[2].var0 = [v50 unsignedIntegerValue];
  }

  else
  {
    params->var1[2].var0 = [opsCopy batchSize];
  }

  v51 = [v99 objectAtIndexedSubscript:0];
  unsignedIntegerValue4 = [v51 unsignedIntegerValue];
  if (unsignedIntegerValue4 <= [opsCopy batchSize])
  {
    v53 = [v99 objectAtIndexedSubscript:0];
    params->var1[3].var0 = [v53 unsignedIntegerValue];
  }

  else
  {
    params->var1[3].var0 = [opsCopy batchSize];
  }

  v54 = [shape count];
  v55 = [source0Shape objectAtIndexedSubscript:1];
  params->var1[0].var1 = [v55 unsignedIntegerValue];

  v56 = [source1Shape objectAtIndexedSubscript:1];
  params->var1[1].var1 = [v56 unsignedIntegerValue];

  v57 = [shape objectAtIndexedSubscript:1];
  params->var1[2].var1 = [v57 unsignedIntegerValue];

  v58 = [v99 objectAtIndexedSubscript:1];
  params->var1[3].var1 = [v58 unsignedIntegerValue];

  v59 = [source0Shape objectAtIndexedSubscript:2];
  unsignedIntegerValue5 = [v59 unsignedIntegerValue];
  if (v54 == 3)
  {
    params->var1[0].var3 = unsignedIntegerValue5;

    v61 = [source1Shape objectAtIndexedSubscript:2];
    params->var1[1].var3 = [v61 unsignedIntegerValue];

    v62 = [shape objectAtIndexedSubscript:2];
    params->var1[2].var3 = [v62 unsignedIntegerValue];

    v63 = [v99 objectAtIndexedSubscript:2];
    params->var1[3].var3 = [v63 unsignedIntegerValue];

    params->var1[3].var2 = 1;
    params->var1[2].var2 = 1;
    params->var1[1].var2 = 1;
    params->var1[0].var2 = 1;
  }

  else
  {
    params->var1[0].var2 = unsignedIntegerValue5;

    v64 = [source1Shape objectAtIndexedSubscript:2];
    params->var1[1].var2 = [v64 unsignedIntegerValue];

    v65 = [shape objectAtIndexedSubscript:2];
    params->var1[2].var2 = [v65 unsignedIntegerValue];

    v66 = [v99 objectAtIndexedSubscript:2];
    params->var1[3].var2 = [v66 unsignedIntegerValue];

    v67 = [source0Shape objectAtIndexedSubscript:3];
    params->var1[0].var3 = [v67 unsignedIntegerValue];

    v68 = [source1Shape objectAtIndexedSubscript:3];
    params->var1[1].var3 = [v68 unsignedIntegerValue];

    v69 = [shape objectAtIndexedSubscript:3];
    params->var1[2].var3 = [v69 unsignedIntegerValue];

    v70 = [v99 objectAtIndexedSubscript:3];
    params->var1[3].var3 = [v70 unsignedIntegerValue];
  }

LABEL_27:
  var0 = params->var1[2].var0;
  v72 = __clz(__rbit32(var0)) << 16;
  if (((params->var1[2].var0 - 1) & var0) != 0)
  {
    v73 = -65536;
  }

  else
  {
    v73 = v72;
  }

  params->var2 = (v73 & 0xFFFF0000 | params->var1[2].var0);
  maxTotalThreadsPerThreadgroup = [stateCopy maxTotalThreadsPerThreadgroup];
  v76 = params->var1[2].var0;
  var1 = params->var1[2].var1;
  var2 = params->var1[2].var2;
  var3 = params->var1[2].var3;
  v79 = [bufferCopy computeCommandEncoderWithDispatchType:0];
  [v79 setComputePipelineState:stateCopy];
  v80 = [deviceMemory objectAtIndexedSubscript:index];
  [v79 setBuffer:v80 offset:0 atIndex:0];

  if (v101)
  {
    v81 = [v101 objectAtIndexedSubscript:index];
    [v79 setBuffer:v81 offset:0 atIndex:1];
  }

  else
  {
    [v79 setBuffer:0 offset:0 atIndex:1];
  }

  v82 = [deviceMemory4 objectAtIndexedSubscript:index];
  [v79 setBuffer:v82 offset:0 atIndex:2];

  [v79 setBytes:params length:v88 atIndex:3];
  v83 = [deviceMemory3 objectAtIndexedSubscript:index];
  [v79 setBuffer:v83 offset:0 atIndex:4];

  v84 = 5;
  if (var3 < 32)
  {
    v84 = 3;
  }

  v85 = maxTotalThreadsPerThreadgroup >> v84;
  v86 = 32;
  if (var3 < 32)
  {
    v86 = 8;
  }

  if (v85 >= var2)
  {
    v85 = var2;
  }

  v87 = maxTotalThreadsPerThreadgroup / (v85 << v84);
  if (v87 >= v76 * var1)
  {
    v87 = v76 * var1;
  }

  v105[0] = (var3 + v86 - 1) >> v84;
  v105[1] = (var2 + v85 - 1) / v85;
  v105[2] = (v87 + v76 * var1 - 1) / v87;
  v104[0] = v86;
  v104[1] = v85;
  v104[2] = v87;
  [v79 dispatchThreadgroups:v105 threadsPerThreadgroup:v104];
  [v79 endEncoding];

  objc_autoreleasePoolPop(context);
}

- (void)dispatchForwardCompareLayer:(id)layer sourceTensor:(id)tensor secondaryTensor:(id)secondaryTensor resultTensor:(id)resultTensor compareOp:(int)op forTraining:(BOOL)training
{
  layerCopy = layer;
  tensorCopy = tensor;
  secondaryTensorCopy = secondaryTensor;
  resultTensorCopy = resultTensor;
  if ([(MLCDeviceGPU *)self numDevicesToUse])
  {
    v16 = 0;
    do
    {
      v17 = [layerCopy objectAtIndexedSubscript:v16];
      gpuCommandBufferList = [(MLCDeviceGPU *)self gpuCommandBufferList];
      v19 = [gpuCommandBufferList objectAtIndexedSubscript:v16];

      [(MLCDeviceGPU *)self allocateResultTensor:resultTensorCopy];
      memset(v24, 0, 76);
      if (op < 6)
      {
        LODWORD(v24[0]) = op;
        [(MLCDeviceGPU *)self gpuPipelineStatesCompareRelationalOpForward];
      }

      else
      {
        LODWORD(v24[0]) = op - 6;
        [(MLCDeviceGPU *)self gpuPipelineStatesCompareLogicalOpForward];
      }
      v20 = ;
      v21 = [v20 objectAtIndexedSubscript:v16];

      descriptor = [tensorCopy descriptor];
      DWORD2(v24[4]) = [descriptor dataType] == 4;

      [(MLCDeviceGPU *)self encodePrimitiveToCommandBuffer:v19 gpuDeviceOps:v17 sourceTensor:tensorCopy secondaryTensor:secondaryTensorCopy tertiaryTensor:0 resultTensor:resultTensorCopy params:v24 sizeOfParams:76 pipelineState:v21 deviceIndex:v16];
      ++v16;
    }

    while (v16 < [(MLCDeviceGPU *)self numDevicesToUse]);
  }
}

- (void)dispatchForwardPaddingKernel:(id)kernel sourceTensor:(id)tensor resultTensor:(id)resultTensor deviceIndex:(unint64_t)index
{
  tensorCopy = tensor;
  resultTensorCopy = resultTensor;
  kernelCopy = kernel;
  deviceMemory = [tensorCopy deviceMemory];
  deviceMemory2 = [resultTensorCopy deviceMemory];
  v15 = [kernelCopy objectAtIndexedSubscript:index];

  gpuCommandBufferList = [(MLCDeviceGPU *)self gpuCommandBufferList];
  v69 = [gpuCommandBufferList objectAtIndexedSubscript:index];

  v71 = deviceMemory;
  v68 = [deviceMemory objectAtIndexedSubscript:index];
  v70 = deviceMemory2;
  v67 = [deviceMemory2 objectAtIndexedSubscript:index];
  forwardKernel = [v15 forwardKernel];
  maxTotalThreadsPerThreadgroup = [forwardKernel maxTotalThreadsPerThreadgroup];

  v79 = 0;
  v80 = 0;
  v77 = 0;
  v78 = 0;
  GPU_GetTensorWidthAndHeight(tensorCopy, &v80, &v79);
  GPU_GetTensorWidthAndHeight(resultTensorCopy, &v78, &v77);
  v75 = 0u;
  v76 = 0u;
  v74 = 0u;
  descriptor = [resultTensorCopy descriptor];
  shape = [descriptor shape];
  v21 = [shape count];
  descriptor2 = [resultTensorCopy descriptor];
  shape2 = [descriptor2 shape];
  v24 = shape2;
  if (v21 <= 3)
  {
    v25 = 2;
  }

  else
  {
    v25 = 3;
  }

  v26 = [shape2 objectAtIndexedSubscript:v25];
  LODWORD(v75) = [v26 unsignedIntegerValue];

  descriptor3 = [resultTensorCopy descriptor];
  shape3 = [descriptor3 shape];
  if ([shape3 count] <= 3)
  {
    DWORD1(v75) = 1;
  }

  else
  {
    descriptor4 = [resultTensorCopy descriptor];
    shape4 = [descriptor4 shape];
    v31 = [shape4 objectAtIndexedSubscript:2];
    DWORD1(v75) = [v31 unsignedIntegerValue];
  }

  batchSize = [v15 batchSize];
  descriptor5 = [resultTensorCopy descriptor];
  shape5 = [descriptor5 shape];
  v35 = [shape5 objectAtIndexedSubscript:1];
  v65 = [v35 unsignedIntegerValue] * batchSize;
  DWORD2(v75) = v65;

  descriptor6 = [tensorCopy descriptor];
  shape6 = [descriptor6 shape];
  v38 = [shape6 count];
  descriptor7 = [tensorCopy descriptor];
  shape7 = [descriptor7 shape];
  v41 = shape7;
  if (v38 <= 3)
  {
    v42 = 2;
  }

  else
  {
    v42 = 3;
  }

  v43 = [shape7 objectAtIndexedSubscript:v42];
  DWORD1(v74) = [v43 unsignedIntegerValue];

  descriptor8 = [tensorCopy descriptor];
  shape8 = [descriptor8 shape];
  v66 = resultTensorCopy;
  if ([shape8 count] <= 3)
  {
    DWORD2(v74) = 1;
  }

  else
  {
    descriptor9 = [tensorCopy descriptor];
    shape9 = [descriptor9 shape];
    v48 = [shape9 objectAtIndexedSubscript:2];
    DWORD2(v74) = [v48 unsignedIntegerValue];
  }

  v49 = tensorCopy;
  v64 = tensorCopy;
  v50 = maxTotalThreadsPerThreadgroup >= 0x400;
  v51 = maxTotalThreadsPerThreadgroup;
  if (maxTotalThreadsPerThreadgroup >= 0x400)
  {
    v52 = 32;
  }

  else
  {
    v52 = 16;
  }

  if (v50)
  {
    v53 = 5;
  }

  else
  {
    v53 = 4;
  }

  v54 = v51 >> v53;

  batchSize2 = [v15 batchSize];
  descriptor10 = [v49 descriptor];
  shape10 = [descriptor10 shape];
  v58 = [shape10 objectAtIndexedSubscript:1];
  HIDWORD(v74) = [v58 unsignedIntegerValue] * batchSize2;

  HIDWORD(v75) = [v15 paddingLeft];
  LODWORD(v76) = [v15 paddingRight];
  DWORD1(v76) = [v15 paddingTop];
  DWORD2(v76) = [v15 paddingBottom];
  LODWORD(v74) = [v15 paddingType];
  [v15 paddingValue];
  HIDWORD(v76) = v59;
  v60 = (v52 + v75 - 1) >> v53;
  v61 = (v54 + SDWORD1(v75)) / v54;
  v62 = [v69 computeCommandEncoderWithDispatchType:0];
  forwardKernel2 = [v15 forwardKernel];
  [v62 setComputePipelineState:forwardKernel2];

  [v62 setBuffer:v68 offset:0 atIndex:0];
  [v62 setBuffer:v67 offset:0 atIndex:1];
  [v62 setBytes:&v74 length:48 atIndex:2];
  v73[0] = v52;
  v73[1] = v54;
  v73[2] = 1;
  v72[0] = v60;
  v72[1] = v61;
  v72[2] = v65;
  [v62 dispatchThreadgroups:v72 threadsPerThreadgroup:v73];
  [v62 endEncoding];
}

- (void)dispatchGradientPaddingKernel:(id)kernel sourceGradientTensor:(id)tensor resultGradientTensor:(id)gradientTensor deviceIndex:(unint64_t)index
{
  tensorCopy = tensor;
  gradientTensorCopy = gradientTensor;
  kernelCopy = kernel;
  deviceMemory = [tensorCopy deviceMemory];
  deviceMemory2 = [gradientTensorCopy deviceMemory];
  v15 = [kernelCopy objectAtIndexedSubscript:index];

  selfCopy = self;
  gpuCommandBufferList = [(MLCDeviceGPU *)self gpuCommandBufferList];
  v78 = [gpuCommandBufferList objectAtIndexedSubscript:index];

  v74 = deviceMemory;
  v72 = [deviceMemory objectAtIndexedSubscript:index];
  v73 = deviceMemory2;
  indexCopy = index;
  v76 = [deviceMemory2 objectAtIndexedSubscript:index];
  v90 = 0;
  v91 = 0;
  v88 = 0;
  v89 = 0;
  GPU_GetTensorWidthAndHeight(tensorCopy, &v91, &v90);
  GPU_GetTensorWidthAndHeight(gradientTensorCopy, &v89, &v88);
  paddingType = [v15 paddingType];
  v86 = 0u;
  v87 = 0u;
  v85 = 0u;
  descriptor = [gradientTensorCopy descriptor];
  shape = [descriptor shape];
  v19 = [shape count];
  descriptor2 = [gradientTensorCopy descriptor];
  shape2 = [descriptor2 shape];
  v22 = shape2;
  if (v19 <= 3)
  {
    v23 = 2;
  }

  else
  {
    v23 = 3;
  }

  v24 = [shape2 objectAtIndexedSubscript:v23];
  LODWORD(v86) = [v24 unsignedIntegerValue];

  descriptor3 = [gradientTensorCopy descriptor];
  shape3 = [descriptor3 shape];
  if ([shape3 count] <= 3)
  {
    DWORD1(v86) = 1;
  }

  else
  {
    descriptor4 = [gradientTensorCopy descriptor];
    shape4 = [descriptor4 shape];
    v29 = [shape4 objectAtIndexedSubscript:2];
    DWORD1(v86) = [v29 unsignedIntegerValue];
  }

  batchSize = [v15 batchSize];
  descriptor5 = [gradientTensorCopy descriptor];
  shape5 = [descriptor5 shape];
  v33 = [shape5 objectAtIndexedSubscript:1];
  v77 = [v33 unsignedIntegerValue] * batchSize;
  DWORD2(v86) = v77;

  descriptor6 = [tensorCopy descriptor];
  shape6 = [descriptor6 shape];
  v36 = [shape6 count];
  descriptor7 = [tensorCopy descriptor];
  shape7 = [descriptor7 shape];
  v39 = shape7;
  if (v36 <= 3)
  {
    v40 = 2;
  }

  else
  {
    v40 = 3;
  }

  v41 = [shape7 objectAtIndexedSubscript:v40];
  DWORD1(v85) = [v41 unsignedIntegerValue];

  descriptor8 = [tensorCopy descriptor];
  shape8 = [descriptor8 shape];
  if ([shape8 count] <= 3)
  {
    DWORD2(v85) = 1;
  }

  else
  {
    descriptor9 = [tensorCopy descriptor];
    shape9 = [descriptor9 shape];
    v46 = [shape9 objectAtIndexedSubscript:2];
    DWORD2(v85) = [v46 unsignedIntegerValue];
  }

  v47 = &v86;

  batchSize2 = [v15 batchSize];
  descriptor10 = [tensorCopy descriptor];
  shape10 = [descriptor10 shape];
  v51 = [shape10 objectAtIndexedSubscript:1];
  v69 = [v51 unsignedIntegerValue] * batchSize2;
  HIDWORD(v85) = v69;

  v52 = [v78 computeCommandEncoderWithDispatchType:0];
  v53 = paddingType;
  if ((paddingType - 1) <= 1)
  {
    gpuPipelineStatesMemFillFloat = [(MLCDeviceGPU *)selfCopy gpuPipelineStatesMemFillFloat];
    v55 = [gpuPipelineStatesMemFillFloat objectAtIndexedSubscript:indexCopy];
    maxTotalThreadsPerThreadgroup = [v55 maxTotalThreadsPerThreadgroup];

    v83 = 0;
    v84 = DWORD1(v86) * v86 * v77;
    v68 = (maxTotalThreadsPerThreadgroup + ((v84 + 3) >> 2) - 1) / maxTotalThreadsPerThreadgroup;
    gpuPipelineStatesMemFillFloat2 = [(MLCDeviceGPU *)selfCopy gpuPipelineStatesMemFillFloat];
    v58 = [gpuPipelineStatesMemFillFloat2 objectAtIndexedSubscript:indexCopy];
    [v52 setComputePipelineState:v58];

    v53 = paddingType;
    [v52 setBuffer:v76 offset:0 atIndex:0];
    [v52 setBytes:&v83 length:8 atIndex:1];
    v81 = v68;
    v82 = vdupq_n_s64(1uLL);
    v79 = maxTotalThreadsPerThreadgroup;
    v80 = v82;
    [v52 dispatchThreadgroups:&v81 threadsPerThreadgroup:&v79];
  }

  gradientKernel = [v15 gradientKernel];
  maxTotalThreadsPerThreadgroup2 = [gradientKernel maxTotalThreadsPerThreadgroup];

  HIDWORD(v86) = [v15 paddingLeft];
  LODWORD(v87) = [v15 paddingRight];
  DWORD1(v87) = [v15 paddingTop];
  DWORD2(v87) = [v15 paddingBottom];
  LODWORD(v85) = [v15 paddingType];
  if (v53)
  {
    v61 = &v86 + 4;
    if (v53 != 3)
    {
      v47 = (&v85 + 4);
      v77 = v69;
      v61 = &v85 + 8;
    }
  }

  else
  {
    v61 = &v86 + 4;
  }

  v62 = 4;
  if (maxTotalThreadsPerThreadgroup2 < 0x400)
  {
    v63 = 16;
  }

  else
  {
    v62 = 5;
    v63 = 32;
  }

  v64 = (v63 + *v47 - 1) >> v62;
  v65 = maxTotalThreadsPerThreadgroup2 >> v62;
  v66 = ((maxTotalThreadsPerThreadgroup2 >> v62) + *v61) / (maxTotalThreadsPerThreadgroup2 >> v62);
  gradientKernel2 = [v15 gradientKernel];
  [v52 setComputePipelineState:gradientKernel2];

  [v52 setBuffer:v72 offset:0 atIndex:0];
  [v52 setBuffer:v76 offset:0 atIndex:1];
  [v52 setBytes:&v85 length:48 atIndex:2];
  v81 = v63;
  v82.i64[0] = v65;
  v82.i64[1] = 1;
  v79 = v64;
  v80.i64[0] = v66;
  v80.i64[1] = v77;
  [v52 dispatchThreadgroups:&v79 threadsPerThreadgroup:&v81];
  [v52 endEncoding];
}

- (void)dispatchForwardSoftmaxKernel:(id)kernel sourceTensor:(id)tensor resultTensor:(id)resultTensor deviceIndex:(unint64_t)index
{
  kernelCopy = kernel;
  tensorCopy = tensor;
  resultTensorCopy = resultTensor;
  deviceMemory = [tensorCopy deviceMemory];
  v55 = resultTensorCopy;
  deviceMemory2 = [resultTensorCopy deviceMemory];
  v56 = kernelCopy;
  v15 = [kernelCopy objectAtIndexedSubscript:index];
  gpuCommandBufferList = [(MLCDeviceGPU *)self gpuCommandBufferList];
  v52 = [gpuCommandBufferList objectAtIndexedSubscript:index];

  v54 = deviceMemory;
  v51 = [deviceMemory objectAtIndexedSubscript:index];
  v53 = deviceMemory2;
  v17 = [deviceMemory2 objectAtIndexedSubscript:index];
  forwardKernel = [v15 forwardKernel];
  maxTotalThreadsPerThreadgroup = [forwardKernel maxTotalThreadsPerThreadgroup];

  descriptor = [tensorCopy descriptor];
  shape = [descriptor shape];
  v22 = [shape objectAtIndexedSubscript:{objc_msgSend(v15, "softmaxAxis")}];
  unsignedIntegerValue = [v22 unsignedIntegerValue];

  if (maxTotalThreadsPerThreadgroup > unsignedIntegerValue)
  {
    descriptor2 = [tensorCopy descriptor];
    shape2 = [descriptor2 shape];
    v26 = [shape2 objectAtIndexedSubscript:{objc_msgSend(v15, "softmaxAxis")}];
    unsignedIntegerValue2 = [v26 unsignedIntegerValue];

    v28 = 1 << -__clz(unsignedIntegerValue2);
    if ((unsignedIntegerValue2 & (unsignedIntegerValue2 - 1)) != 0)
    {
      v29 = v28;
    }

    else
    {
      v29 = unsignedIntegerValue2;
    }

    forwardKernel2 = [v15 forwardKernel];
    threadExecutionWidth = [forwardKernel2 threadExecutionWidth];

    if (v29 <= threadExecutionWidth)
    {
      maxTotalThreadsPerThreadgroup = threadExecutionWidth;
    }

    else
    {
      maxTotalThreadsPerThreadgroup = v29;
    }
  }

  descriptor3 = [tensorCopy descriptor];
  shape3 = [descriptor3 shape];
  v34 = [shape3 count];

  v35 = v34 - 1;
  softmaxAxis = [v15 softmaxAxis];
  v37 = 1;
  while (v35 > softmaxAxis)
  {
    descriptor4 = [tensorCopy descriptor];
    shape4 = [descriptor4 shape];
    v40 = [shape4 objectAtIndexedSubscript:v35];
    v37 *= [v40 unsignedIntegerValue];

    --v35;
    softmaxAxis = [v15 softmaxAxis];
  }

  if ([v15 softmaxAxis])
  {
    batchSize = [v15 batchSize];
  }

  else
  {
    batchSize = 1;
  }

  if ([v15 softmaxAxis] >= 2)
  {
    v42 = 1;
    do
    {
      descriptor5 = [tensorCopy descriptor];
      shape5 = [descriptor5 shape];
      v45 = [shape5 objectAtIndexedSubscript:v42];
      batchSize *= [v45 unsignedIntegerValue];

      ++v42;
    }

    while (v42 < [v15 softmaxAxis]);
  }

  descriptor6 = [tensorCopy descriptor];
  shape6 = [descriptor6 shape];
  v48 = [shape6 objectAtIndexedSubscript:{objc_msgSend(v15, "softmaxAxis")}];
  v60[0] = [v48 unsignedIntegerValue];

  v61 = maxTotalThreadsPerThreadgroup >= v60[0];
  v60[1] = [v15 softmaxAxis];
  v62 = v37;
  v63 = v60[0] * v37;
  v49 = [v52 computeCommandEncoderWithDispatchType:0];
  if (maxTotalThreadsPerThreadgroup < v60[0])
  {
    [v15 forwardKernel];
  }

  else
  {
    [v15 forwardStatisticsKernel];
  }
  v50 = ;
  [v49 setComputePipelineState:v50];

  [v49 setBuffer:v51 offset:0 atIndex:0];
  [v49 setBuffer:v17 offset:0 atIndex:1];
  [v49 setBytes:v60 length:20 atIndex:2];
  [v49 setThreadgroupMemoryLength:GPU_AlignForThreadGroupMemorySize(4 * (maxTotalThreadsPerThreadgroup + maxTotalThreadsPerThreadgroup * v61)) atIndex:0];
  v59[0] = v37;
  v59[1] = batchSize;
  v59[2] = 1;
  v57 = maxTotalThreadsPerThreadgroup;
  v58 = vdupq_n_s64(1uLL);
  [v49 dispatchThreadgroups:v59 threadsPerThreadgroup:&v57];
  [v49 endEncoding];
}

- (void)dispatchGradientSoftmaxKernel:(id)kernel sourceGradientTensor:(id)tensor resultGradientTensor:(id)gradientTensor deviceIndex:(unint64_t)index
{
  kernelCopy = kernel;
  tensorCopy = tensor;
  gradientTensorCopy = gradientTensor;
  deviceMemory = [tensorCopy deviceMemory];
  v51 = gradientTensorCopy;
  deviceMemory2 = [gradientTensorCopy deviceMemory];
  v52 = kernelCopy;
  v15 = [kernelCopy objectAtIndexedSubscript:index];
  gpuCommandBufferList = [(MLCDeviceGPU *)self gpuCommandBufferList];
  v48 = [gpuCommandBufferList objectAtIndexedSubscript:index];

  v50 = deviceMemory;
  v47 = [deviceMemory objectAtIndexedSubscript:index];
  v49 = deviceMemory2;
  v46 = [deviceMemory2 objectAtIndexedSubscript:index];
  result = [v15 result];
  gradientKernel = [v15 gradientKernel];
  maxTotalThreadsPerThreadgroup = [gradientKernel maxTotalThreadsPerThreadgroup];

  descriptor = [tensorCopy descriptor];
  shape = [descriptor shape];
  v21 = [shape objectAtIndexedSubscript:{objc_msgSend(v15, "softmaxAxis")}];
  unsignedIntegerValue = [v21 unsignedIntegerValue];

  if (maxTotalThreadsPerThreadgroup > unsignedIntegerValue)
  {
    descriptor2 = [tensorCopy descriptor];
    shape2 = [descriptor2 shape];
    v25 = [shape2 objectAtIndexedSubscript:{objc_msgSend(v15, "softmaxAxis")}];
    maxTotalThreadsPerThreadgroup = [v25 unsignedIntegerValue];

    if ((maxTotalThreadsPerThreadgroup & (maxTotalThreadsPerThreadgroup - 1)) != 0)
    {
      maxTotalThreadsPerThreadgroup = 1 << -__clz(maxTotalThreadsPerThreadgroup);
    }
  }

  descriptor3 = [tensorCopy descriptor];
  shape3 = [descriptor3 shape];
  v28 = [shape3 count];

  v29 = v28 - 1;
  softmaxAxis = [v15 softmaxAxis];
  v31 = 1;
  while (v29 > softmaxAxis)
  {
    descriptor4 = [tensorCopy descriptor];
    shape4 = [descriptor4 shape];
    v34 = [shape4 objectAtIndexedSubscript:v29];
    v31 *= [v34 unsignedIntegerValue];

    --v29;
    softmaxAxis = [v15 softmaxAxis];
  }

  if ([v15 softmaxAxis])
  {
    batchSize = [v15 batchSize];
  }

  else
  {
    batchSize = 1;
  }

  if ([v15 softmaxAxis] >= 2)
  {
    v36 = 1;
    do
    {
      descriptor5 = [tensorCopy descriptor];
      shape5 = [descriptor5 shape];
      v39 = [shape5 objectAtIndexedSubscript:v36];
      batchSize *= [v39 unsignedIntegerValue];

      ++v36;
    }

    while (v36 < [v15 softmaxAxis]);
  }

  descriptor6 = [tensorCopy descriptor];
  shape6 = [descriptor6 shape];
  v42 = [shape6 objectAtIndexedSubscript:{objc_msgSend(v15, "softmaxAxis")}];
  v56[0] = [v42 unsignedIntegerValue];

  v57 = maxTotalThreadsPerThreadgroup >= v56[0];
  v56[1] = [v15 softmaxAxis];
  v58 = v31;
  v59 = v56[0] * v31;
  v43 = [v48 computeCommandEncoderWithDispatchType:0];
  gradientKernel2 = [v15 gradientKernel];
  [v43 setComputePipelineState:gradientKernel2];

  [v43 setBuffer:v47 offset:0 atIndex:0];
  [v43 setBuffer:v46 offset:0 atIndex:1];
  [v43 setBuffer:result offset:0 atIndex:2];
  [v43 setBytes:v56 length:20 atIndex:3];
  [v43 setThreadgroupMemoryLength:GPU_AlignForThreadGroupMemorySize(4 * (maxTotalThreadsPerThreadgroup + maxTotalThreadsPerThreadgroup * v57)) atIndex:0];
  v55[0] = v31;
  v55[1] = batchSize;
  v55[2] = 1;
  v53 = maxTotalThreadsPerThreadgroup;
  v54 = vdupq_n_s64(1uLL);
  [v43 dispatchThreadgroups:v55 threadsPerThreadgroup:&v53];
  [v43 endEncoding];
}

- (void)dispatchForwardPoolingKernel:(id)kernel sourceTensor:(id)tensor resultTensor:(id)resultTensor deviceIndex:(unint64_t)index forTraining:(BOOL)training
{
  trainingCopy = training;
  tensorCopy = tensor;
  resultTensorCopy = resultTensor;
  kernelCopy = kernel;
  v93 = tensorCopy;
  deviceMemory = [tensorCopy deviceMemory];
  deviceMemory2 = [resultTensorCopy deviceMemory];
  v16 = [kernelCopy objectAtIndexedSubscript:index];

  gpuCommandBufferList = [(MLCDeviceGPU *)self gpuCommandBufferList];
  v18 = [gpuCommandBufferList objectAtIndexedSubscript:index];

  deviceList = [(MLCDeviceGPU *)self deviceList];
  v88 = [deviceList objectAtIndexedSubscript:index];

  v87 = [deviceMemory objectAtIndexedSubscript:index];
  v20 = [deviceMemory2 objectAtIndexedSubscript:index];
  forwardKernel = [v16 forwardKernel];
  maxTotalThreadsPerThreadgroup = [forwardKernel maxTotalThreadsPerThreadgroup];

  descriptor = [resultTensorCopy descriptor];
  shape = [descriptor shape];
  v24 = [shape count];

  v90 = deviceMemory2;
  v91 = deviceMemory;
  v89 = v18;
  if (v24 == 3)
  {
    v25 = 2;
  }

  else
  {
    if (v24 != 4)
    {
      v30 = 8;
      goto LABEL_11;
    }

    v25 = 3;
  }

  descriptor2 = [resultTensorCopy descriptor];
  shape2 = [descriptor2 shape];
  v28 = [shape2 objectAtIndexedSubscript:v25];
  unsignedIntegerValue = [v28 unsignedIntegerValue];

  v30 = 16;
  if (unsignedIntegerValue < 0x10)
  {
    v30 = 8;
  }

  if (unsignedIntegerValue >= 0x20)
  {
    v30 = 32;
  }

LABEL_11:
  v84 = v30;
  v86 = v20;
  descriptor3 = [resultTensorCopy descriptor];
  shape3 = [descriptor3 shape];
  v33 = 1;
  v34 = [shape3 objectAtIndexedSubscript:1];
  unsignedIntegerValue2 = [v34 unsignedIntegerValue];

  batchSize = [v16 batchSize];
  v115 = 0u;
  v111 = 0u;
  v96 = trainingCopy;
  kernelSizeInX = [v16 kernelSizeInX];
  kernelSizeInY = [v16 kernelSizeInY];
  strideInX = [v16 strideInX];
  strideInY = [v16 strideInY];
  dilationRateInX = [v16 dilationRateInX];
  dilationRateInY = [v16 dilationRateInY];
  paddingLeft = [v16 paddingLeft];
  paddingTop = [v16 paddingTop];
  paddingRight = [v16 paddingRight];
  paddingBottom = [v16 paddingBottom];
  v107 = 1.0 / (kernelSizeInY * kernelSizeInX);
  batchSize2 = [v16 batchSize];
  descriptor4 = [v93 descriptor];
  shape4 = [descriptor4 shape];
  v37 = [shape4 objectAtIndexedSubscript:1];
  unsignedIntegerValue3 = [v37 unsignedIntegerValue];
  v109 = unsignedIntegerValue3;

  batchSize3 = [v16 batchSize];
  descriptor5 = [v93 descriptor];
  shape5 = [descriptor5 shape];
  v41 = [shape5 objectAtIndexedSubscript:1];
  unsignedIntegerValue4 = [v41 unsignedIntegerValue];
  v113 = unsignedIntegerValue4;

  v110 = 0x100000001;
  v114 = 0x100000001;
  descriptor6 = [resultTensorCopy descriptor];
  shape6 = [descriptor6 shape];
  v45 = [shape6 count];

  if (v45 == 4)
  {
    descriptor7 = [v93 descriptor];
    [descriptor7 shape];
    v59 = v58 = resultTensorCopy;
    v60 = [v59 objectAtIndexedSubscript:2];
    unsignedIntegerValue5 = [v60 unsignedIntegerValue];
    LODWORD(v110) = unsignedIntegerValue5;

    descriptor8 = [v93 descriptor];
    shape7 = [descriptor8 shape];
    v63 = [shape7 objectAtIndexedSubscript:3];
    HIDWORD(v110) = [v63 unsignedIntegerValue];

    descriptor9 = [v58 descriptor];
    shape8 = [descriptor9 shape];
    v66 = [shape8 objectAtIndexedSubscript:2];
    LODWORD(v114) = [v66 unsignedIntegerValue];

    descriptor10 = [v58 descriptor];
    shape9 = [descriptor10 shape];
    v69 = [shape9 objectAtIndexedSubscript:3];
    HIDWORD(v114) = [v69 unsignedIntegerValue];

    resultTensorCopy = v58;
    v33 = v114;
    unsignedIntegerValue6 = HIDWORD(v110);
    unsignedIntegerValue7 = HIDWORD(v114);
  }

  else
  {
    unsignedIntegerValue7 = 1;
    unsignedIntegerValue5 = 1;
    unsignedIntegerValue6 = 1;
    if (v45 == 3)
    {
      descriptor11 = [v93 descriptor];
      shape10 = [descriptor11 shape];
      v51 = [shape10 objectAtIndexedSubscript:2];
      unsignedIntegerValue6 = [v51 unsignedIntegerValue];
      HIDWORD(v110) = unsignedIntegerValue6;

      v33 = 1;
      LODWORD(v110) = 1;
      descriptor12 = [resultTensorCopy descriptor];
      shape11 = [descriptor12 shape];
      [shape11 objectAtIndexedSubscript:2];
      v54 = unsignedIntegerValue3;
      v56 = v55 = resultTensorCopy;
      unsignedIntegerValue7 = [v56 unsignedIntegerValue];
      HIDWORD(v114) = unsignedIntegerValue7;

      resultTensorCopy = v55;
      unsignedIntegerValue3 = v54;

      LODWORD(v114) = 1;
      unsignedIntegerValue5 = 1;
    }
  }

  *(&v111 + 1) = unsignedIntegerValue6 | 0x100000000;
  LODWORD(v111) = unsignedIntegerValue5 * unsignedIntegerValue6 * unsignedIntegerValue3;
  DWORD1(v111) = unsignedIntegerValue5 * unsignedIntegerValue6;
  *(&v115 + 1) = unsignedIntegerValue7 | 0x100000000;
  DWORD1(v115) = v33 * unsignedIntegerValue7;
  LODWORD(v115) = v33 * unsignedIntegerValue7 * unsignedIntegerValue4;
  if (!trainingCopy)
  {
    v74 = 0;
    v75 = v88;
    v70 = v89;
    v71 = v87;
    goto LABEL_22;
  }

  v70 = v89;
  v71 = v87;
  if ([v16 metalKernelType] != 15)
  {
    v74 = 0;
    goto LABEL_21;
  }

  batchSize4 = [v16 batchSize];
  poolingIndicesBuffer = [v16 poolingIndicesBuffer];

  if (poolingIndicesBuffer)
  {
    v74 = 1;
LABEL_21:
    v75 = v88;
    goto LABEL_22;
  }

  v80 = 4 * batchSize4 * (v33 * unsignedIntegerValue4 * unsignedIntegerValue7);
  v75 = v88;
  v81 = [v88 newBufferWithLength:v80 options:{+[MLCGPUHelper mtlResourceOptions](MLCGPUHelper, "mtlResourceOptions")}];
  [v16 setPoolingIndicesBuffer:v81];

  v74 = 1;
LABEL_22:
  v76 = [v70 computeCommandEncoderWithDispatchType:0];
  forwardKernel2 = [v16 forwardKernel];
  [v76 setComputePipelineState:forwardKernel2];

  [v76 setBuffer:v71 offset:0 atIndex:0];
  [v76 setBuffer:v86 offset:0 atIndex:1];
  if (v74)
  {
    poolingIndicesBuffer2 = [v16 poolingIndicesBuffer];
    [v76 setBuffer:poolingIndicesBuffer2 offset:0 atIndex:2];
  }

  else
  {
    [v76 setBuffer:v71 offset:0 atIndex:2];
  }

  if (maxTotalThreadsPerThreadgroup / v84 >= v84)
  {
    v79 = v84;
  }

  else
  {
    v79 = maxTotalThreadsPerThreadgroup / v84;
  }

  [v76 setBytes:&v96 length:112 atIndex:3];
  [v76 setThreadgroupMemoryLength:GPU_AlignForThreadGroupMemorySize(4 * v84 * v79) atIndex:0];
  v95[0] = unsignedIntegerValue2;
  v95[1] = batchSize;
  v95[2] = 1;
  v94[0] = v84;
  v94[1] = v79;
  v94[2] = 1;
  [v76 dispatchThreadgroups:v95 threadsPerThreadgroup:v94];
  [v76 endEncoding];
}

- (void)dispatchGradientPoolingKernel:(id)kernel sourceGradientTensor:(id)tensor resultGradientTensor:(id)gradientTensor deviceIndex:(unint64_t)index
{
  tensorCopy = tensor;
  gradientTensorCopy = gradientTensor;
  kernelCopy = kernel;
  deviceMemory = [tensorCopy deviceMemory];
  deviceMemory2 = [gradientTensorCopy deviceMemory];
  v15 = [kernelCopy objectAtIndexedSubscript:index];

  selfCopy = self;
  gpuCommandBufferList = [(MLCDeviceGPU *)self gpuCommandBufferList];
  v88 = [gpuCommandBufferList objectAtIndexedSubscript:index];

  v87 = [deviceMemory objectAtIndexedSubscript:index];
  v89 = deviceMemory2;
  v86 = [deviceMemory2 objectAtIndexedSubscript:index];
  source = [v15 source];
  result = [v15 result];
  gradientKernel = [v15 gradientKernel];
  maxTotalThreadsPerThreadgroup = [gradientKernel maxTotalThreadsPerThreadgroup];

  gradientKernel2 = [v15 gradientKernel];
  threadExecutionWidth = [gradientKernel2 threadExecutionWidth];

  descriptor = [tensorCopy descriptor];
  shape = [descriptor shape];
  v22 = [shape count];

  v93 = tensorCopy;
  v90 = deviceMemory;
  if (v22 == 3)
  {
    v23 = 2;
  }

  else
  {
    if (v22 != 4)
    {
      v29 = 8;
      goto LABEL_11;
    }

    v23 = 3;
  }

  descriptor2 = [tensorCopy descriptor];
  shape2 = [descriptor2 shape];
  v26 = [shape2 objectAtIndexedSubscript:v23];
  unsignedIntegerValue = [v26 unsignedIntegerValue];

  v28 = 16;
  if (unsignedIntegerValue < 0x10)
  {
    v28 = 8;
  }

  v29 = 32;
  if (unsignedIntegerValue < 0x20)
  {
    v29 = v28;
  }

LABEL_11:
  v30 = maxTotalThreadsPerThreadgroup / v29;
  v91 = v29;
  if (maxTotalThreadsPerThreadgroup / v29 >= v29)
  {
    v30 = v29;
  }

  v82 = v30;
  descriptor3 = [gradientTensorCopy descriptor];
  shape3 = [descriptor3 shape];
  unsignedIntegerValue7 = 1;
  v34 = [shape3 objectAtIndexedSubscript:1];
  unsignedIntegerValue2 = [v34 unsignedIntegerValue];

  batchSize = [v15 batchSize];
  v119 = 0u;
  v115 = 0u;
  v100 = 0;
  kernelSizeInX = [v15 kernelSizeInX];
  kernelSizeInY = [v15 kernelSizeInY];
  strideInX = [v15 strideInX];
  strideInY = [v15 strideInY];
  dilationRateInX = [v15 dilationRateInX];
  dilationRateInY = [v15 dilationRateInY];
  paddingLeft = [v15 paddingLeft];
  paddingTop = [v15 paddingTop];
  paddingRight = [v15 paddingRight];
  paddingBottom = [v15 paddingBottom];
  v111 = 1.0 / (kernelSizeInY * kernelSizeInX);
  batchSize2 = [v15 batchSize];
  descriptor4 = [gradientTensorCopy descriptor];
  shape4 = [descriptor4 shape];
  v37 = [shape4 objectAtIndexedSubscript:1];
  unsignedIntegerValue3 = [v37 unsignedIntegerValue];
  v113 = unsignedIntegerValue3;

  batchSize3 = [v15 batchSize];
  descriptor5 = [gradientTensorCopy descriptor];
  shape5 = [descriptor5 shape];
  v41 = [shape5 objectAtIndexedSubscript:1];
  unsignedIntegerValue4 = [v41 unsignedIntegerValue];
  v117 = unsignedIntegerValue4;

  v114 = 0x100000001;
  v118 = 0x100000001;
  descriptor6 = [gradientTensorCopy descriptor];
  shape6 = [descriptor6 shape];
  v45 = [shape6 count];

  v92 = gradientTensorCopy;
  if (v45 == 4)
  {
    descriptor7 = [gradientTensorCopy descriptor];
    shape7 = [descriptor7 shape];
    v57 = [shape7 objectAtIndexedSubscript:2];
    unsignedIntegerValue5 = [v57 unsignedIntegerValue];
    LODWORD(v114) = unsignedIntegerValue5;

    descriptor8 = [gradientTensorCopy descriptor];
    shape8 = [descriptor8 shape];
    v60 = [shape8 objectAtIndexedSubscript:3];
    unsignedIntegerValue6 = [v60 unsignedIntegerValue];
    HIDWORD(v114) = unsignedIntegerValue6;

    descriptor9 = [v93 descriptor];
    shape9 = [descriptor9 shape];
    v63 = [shape9 objectAtIndexedSubscript:2];
    unsignedIntegerValue7 = [v63 unsignedIntegerValue];
    LODWORD(v118) = unsignedIntegerValue7;

    descriptor10 = [v93 descriptor];
    shape10 = [descriptor10 shape];
    v66 = [shape10 objectAtIndexedSubscript:3];
    HIDWORD(v118) = [v66 unsignedIntegerValue];

    unsignedIntegerValue8 = HIDWORD(v118);
  }

  else
  {
    unsignedIntegerValue8 = 1;
    unsignedIntegerValue5 = 1;
    unsignedIntegerValue6 = 1;
    if (v45 == 3)
    {
      descriptor11 = [v92 descriptor];
      shape11 = [descriptor11 shape];
      v51 = [shape11 objectAtIndexedSubscript:2];
      unsignedIntegerValue6 = [v51 unsignedIntegerValue];
      HIDWORD(v114) = unsignedIntegerValue6;

      unsignedIntegerValue7 = 1;
      LODWORD(v114) = 1;
      descriptor12 = [v93 descriptor];
      shape12 = [descriptor12 shape];
      v54 = [shape12 objectAtIndexedSubscript:2];
      unsignedIntegerValue8 = [v54 unsignedIntegerValue];
      HIDWORD(v118) = unsignedIntegerValue8;

      LODWORD(v118) = 1;
      unsignedIntegerValue5 = 1;
    }
  }

  *(&v115 + 1) = unsignedIntegerValue6 | 0x100000000;
  DWORD1(v115) = unsignedIntegerValue5 * unsignedIntegerValue6;
  LODWORD(v115) = unsignedIntegerValue5 * unsignedIntegerValue6 * unsignedIntegerValue3;
  *(&v119 + 1) = unsignedIntegerValue8 | 0x100000000;
  DWORD1(v119) = unsignedIntegerValue7 * unsignedIntegerValue8;
  LODWORD(v119) = unsignedIntegerValue7 * unsignedIntegerValue8 * unsignedIntegerValue4;
  v67 = [v88 computeCommandEncoderWithDispatchType:0];
  gpuPipelineStatesMemFillFloat = [(MLCDeviceGPU *)selfCopy gpuPipelineStatesMemFillFloat];
  v69 = [gpuPipelineStatesMemFillFloat objectAtIndexedSubscript:index];
  maxTotalThreadsPerThreadgroup2 = [v69 maxTotalThreadsPerThreadgroup];

  v98 = 0;
  v99 = v115 * [v15 batchSize];
  v71 = (maxTotalThreadsPerThreadgroup2 + ((v99 + 3) >> 2) - 1) / maxTotalThreadsPerThreadgroup2;
  gpuPipelineStatesMemFillFloat2 = [(MLCDeviceGPU *)selfCopy gpuPipelineStatesMemFillFloat];
  v73 = [gpuPipelineStatesMemFillFloat2 objectAtIndexedSubscript:index];
  [v67 setComputePipelineState:v73];

  [v67 setBuffer:v86 offset:0 atIndex:0];
  [v67 setBytes:&v98 length:8 atIndex:1];
  v96 = v71;
  v97 = vdupq_n_s64(1uLL);
  v94 = maxTotalThreadsPerThreadgroup2;
  v95 = v97;
  [v67 dispatchThreadgroups:&v96 threadsPerThreadgroup:&v94];
  gradientKernel3 = [v15 gradientKernel];
  [v67 setComputePipelineState:gradientKernel3];

  [v67 setBuffer:v87 offset:0 atIndex:0];
  [v67 setBuffer:v86 offset:0 atIndex:1];
  if ([v15 metalKernelType] == 15)
  {
    poolingIndicesBuffer = [v15 poolingIndicesBuffer];
    [v67 setBuffer:poolingIndicesBuffer offset:0 atIndex:2];

    v77 = v92;
    v76 = v93;
    v78 = source;
  }

  else
  {
    v78 = source;
    [v67 setBuffer:source offset:0 atIndex:2];
    v77 = v92;
    v76 = v93;
  }

  [v67 setBuffer:result offset:0 atIndex:3];
  [v67 setBytes:&v100 length:112 atIndex:4];
  [v67 setThreadgroupMemoryLength:GPU_AlignForThreadGroupMemorySize(4 * v91 * v82) atIndex:0];
  if (kernelSizeInX <= strideInX && kernelSizeInY <= strideInY)
  {
    v96 = unsignedIntegerValue2;
    v97.i64[0] = batchSize;
    v97.i64[1] = 1;
    v94 = v91;
    v95.i64[0] = v82;
    v95.i64[1] = 1;
  }

  else
  {
    v96 = unsignedIntegerValue2;
    v97.i64[0] = batchSize;
    v97.i64[1] = 1;
    v94 = threadExecutionWidth;
    v95 = vdupq_n_s64(1uLL);
  }

  [v67 dispatchThreadgroups:&v96 threadsPerThreadgroup:&v94];
  [v67 endEncoding];
}

- (void)dispatchForwardResizeKernel:(id)kernel sourceTensor:(id)tensor resultTensor:(id)resultTensor deviceIndex:(unint64_t)index
{
  tensorCopy = tensor;
  resultTensorCopy = resultTensor;
  kernelCopy = kernel;
  deviceMemory = [tensorCopy deviceMemory];
  deviceMemory2 = [resultTensorCopy deviceMemory];
  v15 = [kernelCopy objectAtIndexedSubscript:index];

  gpuCommandBufferList = [(MLCDeviceGPU *)self gpuCommandBufferList];
  v70 = [gpuCommandBufferList objectAtIndexedSubscript:index];

  v72 = deviceMemory;
  v69 = [deviceMemory objectAtIndexedSubscript:index];
  v71 = deviceMemory2;
  v68 = [deviceMemory2 objectAtIndexedSubscript:index];
  descriptor = [tensorCopy descriptor];
  shape = [descriptor shape];
  v19 = [shape count];

  v73 = resultTensorCopy;
  if (v19 == 3)
  {
    descriptor2 = [tensorCopy descriptor];
    shape2 = [descriptor2 shape];
    unsignedIntegerValue5 = 1;
    v42 = [shape2 objectAtIndexedSubscript:1];
    unsignedIntegerValue = [v42 unsignedIntegerValue];

    descriptor3 = [tensorCopy descriptor];
    shape3 = [descriptor3 shape];
    v45 = [shape3 objectAtIndexedSubscript:2];
    unsignedIntegerValue2 = [v45 unsignedIntegerValue];

    descriptor4 = [resultTensorCopy descriptor];
    shape4 = [descriptor4 shape];
    v38 = [shape4 objectAtIndexedSubscript:2];
    unsignedIntegerValue3 = [v38 unsignedIntegerValue];
    unsignedIntegerValue4 = 1;
    goto LABEL_5;
  }

  if (v19 == 4)
  {
    descriptor5 = [tensorCopy descriptor];
    shape5 = [descriptor5 shape];
    v22 = [shape5 objectAtIndexedSubscript:1];
    unsignedIntegerValue = [v22 unsignedIntegerValue];

    descriptor6 = [tensorCopy descriptor];
    shape6 = [descriptor6 shape];
    v26 = [shape6 objectAtIndexedSubscript:3];
    unsignedIntegerValue2 = [v26 unsignedIntegerValue];

    descriptor7 = [tensorCopy descriptor];
    shape7 = [descriptor7 shape];
    v30 = [shape7 objectAtIndexedSubscript:2];
    unsignedIntegerValue4 = [v30 unsignedIntegerValue];

    descriptor8 = [resultTensorCopy descriptor];
    shape8 = [descriptor8 shape];
    v34 = [shape8 objectAtIndexedSubscript:3];
    unsignedIntegerValue3 = [v34 unsignedIntegerValue];

    descriptor4 = [resultTensorCopy descriptor];
    shape4 = [descriptor4 shape];
    v38 = [shape4 objectAtIndexedSubscript:2];
    unsignedIntegerValue5 = [v38 unsignedIntegerValue];
LABEL_5:

    goto LABEL_7;
  }

  unsignedIntegerValue = 1;
  unsignedIntegerValue5 = 1;
  unsignedIntegerValue3 = 1;
  unsignedIntegerValue4 = 1;
  unsignedIntegerValue2 = 1;
LABEL_7:
  v81 = 1;
  v82 = unsignedIntegerValue2;
  v83 = unsignedIntegerValue2 * unsignedIntegerValue4;
  v84 = unsignedIntegerValue2 * unsignedIntegerValue4 * unsignedIntegerValue;
  v85 = 1;
  v86 = unsignedIntegerValue3;
  v87 = unsignedIntegerValue3 * unsignedIntegerValue5;
  v88 = unsignedIntegerValue3 * unsignedIntegerValue5 * unsignedIntegerValue;
  v77 = unsignedIntegerValue2;
  v78 = unsignedIntegerValue4;
  v79 = unsignedIntegerValue3;
  v80 = unsignedIntegerValue5;
  [v15 scaleFactorX];
  v67 = v46;
  [v15 scaleFactorY];
  v48 = __PAIR64__(v47, v67);
  __asm { FMOV            V0.2S, #1.0 }

  v76 = vdiv_f32(_D0, v48);
  alignCorners = [v15 alignCorners];
  batchSize = [v15 batchSize];
  v54 = __clz(__rbit32(batchSize)) << 16;
  if (((batchSize - 1) & batchSize) != 0)
  {
    v55 = -65536;
  }

  else
  {
    v55 = v54;
  }

  v90 = v55 & 0xFFFF0000 | batchSize;
  forwardKernel = [v15 forwardKernel];
  maxTotalThreadsPerThreadgroup = [forwardKernel maxTotalThreadsPerThreadgroup];

  if ([v15 isSpecialCasedNearestForwardKernel])
  {
    if (unsignedIntegerValue2 >= maxTotalThreadsPerThreadgroup)
    {
      v58 = maxTotalThreadsPerThreadgroup;
    }

    else
    {
      v58 = unsignedIntegerValue2;
    }

    v59 = 1;
  }

  else
  {
    if (unsignedIntegerValue3 >= 0x10)
    {
      v58 = 16;
    }

    else
    {
      v58 = 8;
    }

    if (maxTotalThreadsPerThreadgroup < 0x400)
    {
      _CF = unsignedIntegerValue5 >= 0x10;
      v60 = 16;
      v61 = 8;
    }

    else
    {
      v60 = 32;
      if (unsignedIntegerValue3 >= 0x20)
      {
        v58 = 32;
      }

      v61 = 16;
      if (unsignedIntegerValue5 < 0x10)
      {
        v61 = 8;
      }

      _CF = unsignedIntegerValue5 >= 0x20;
    }

    if (_CF)
    {
      v59 = v60;
    }

    else
    {
      v59 = v61;
    }

    unsignedIntegerValue4 = unsignedIntegerValue5;
    unsignedIntegerValue2 = unsignedIntegerValue3;
  }

  v63 = (v58 + unsignedIntegerValue2 - 1) / v58;
  v64 = (unsignedIntegerValue4 + v59 - 1) / v59;
  v65 = [v70 computeCommandEncoderWithDispatchType:0];
  forwardKernel2 = [v15 forwardKernel];
  [v65 setComputePipelineState:forwardKernel2];

  [v65 setBuffer:v69 offset:0 atIndex:0];
  [v65 setBuffer:v68 offset:0 atIndex:1];
  [v65 setBytes:&v76 length:64 atIndex:2];
  v75[0] = v63;
  v75[1] = v64;
  v75[2] = [v15 batchSize] * unsignedIntegerValue;
  v74[0] = v58;
  v74[1] = v59;
  v74[2] = 1;
  [v65 dispatchThreadgroups:v75 threadsPerThreadgroup:v74];
  [v65 endEncoding];
}

- (void)dispatchTransposeKernel:(id)kernel sourceTensor:(id)tensor resultTensor:(id)resultTensor deviceIndex:(unint64_t)index forward:(BOOL)forward
{
  forwardCopy = forward;
  v88 = *MEMORY[0x277D85DE8];
  kernelCopy = kernel;
  tensorCopy = tensor;
  resultTensorCopy = resultTensor;
  deviceMemory = [tensorCopy deviceMemory];
  v79 = resultTensorCopy;
  deviceMemory2 = [resultTensorCopy deviceMemory];
  v15 = [kernelCopy objectAtIndexedSubscript:index];
  gpuCommandBufferList = [(MLCDeviceGPU *)self gpuCommandBufferList];
  indexCopy = index;
  v76 = [gpuCommandBufferList objectAtIndexedSubscript:index];

  memset(v84, 0, 76);
  transposeShape = [v15 transposeShape];
  v18 = [transposeShape count];

  if (v18)
  {
    v19 = 0;
    do
    {
      if (forwardCopy)
      {
        [v15 transposeShape];
      }

      else
      {
        [v15 transposeGradientShape];
      }
      v20 = ;
      v21 = [v20 objectAtIndexedSubscript:v19];
      unsignedIntegerValue = [v21 unsignedIntegerValue];

      *(v84 + v19) = unsignedIntegerValue;
      descriptor = [tensorCopy descriptor];
      stride = [descriptor stride];
      v25 = [stride objectAtIndexedSubscript:v19];
      v26 = v84 + 4 * v19;
      *(v26 + 11) = [v25 unsignedIntegerValue] >> 2;

      descriptor2 = [v79 descriptor];
      stride2 = [descriptor2 stride];
      v29 = [stride2 objectAtIndexedSubscript:v19];
      *(v26 + 15) = [v29 unsignedIntegerValue] >> 2;

      ++v19;
      transposeShape2 = [v15 transposeShape];
      v31 = [transposeShape2 count];
    }

    while (v19 < v31);
  }

  descriptor3 = [tensorCopy descriptor];
  shape = [descriptor3 shape];
  v34 = [shape count];

  v74 = kernelCopy;
  if (v34 == 4)
  {
    v70 = v85 + 1;
    v71 = (&v86 + 8);
    if (forwardCopy)
    {
      batchSize = [v15 batchSize];
    }

    else
    {
      batchSize = 0;
    }

    v78 = [tensorCopy calculateBatchSizeToUse:batchSize];
    v36 = 1;
    HIDWORD(v84[0]) = 1;
  }

  else
  {
    v36 = 0;
    v71 = &v86;
    v70 = v85;
    v78 = 1;
  }

  v37 = indexCopy;
  forwardKernel = [v15 forwardKernel];
  maxTotalThreadsPerThreadgroup = [forwardKernel maxTotalThreadsPerThreadgroup];

  v86 = xmmword_238D45D80;
  v87 = unk_238D45D90;
  v85[0] = xmmword_238D45D80;
  v85[1] = unk_238D45D90;
  descriptor4 = [tensorCopy descriptor];
  shape2 = [descriptor4 shape];
  v42 = [shape2 count];

  v75 = v36;
  if (v36 < v42)
  {
    v43 = v36;
    do
    {
      descriptor5 = [tensorCopy descriptor];
      shape3 = [descriptor5 shape];
      v46 = [shape3 objectAtIndexedSubscript:v43];
      unsignedIntegerValue2 = [v46 unsignedIntegerValue];

      if (unsignedIntegerValue2 <= maxTotalThreadsPerThreadgroup)
      {
        *(&v86 + v43) = unsignedIntegerValue2;
        v48 = unsignedIntegerValue2;
      }

      else if (unsignedIntegerValue2 % maxTotalThreadsPerThreadgroup)
      {
        *(&v86 + v43) = 1;
        v48 = 1;
      }

      else
      {
        *(&v86 + v43) = maxTotalThreadsPerThreadgroup;
        v48 = maxTotalThreadsPerThreadgroup;
      }

      v37 = indexCopy;
      *(v85 + v43++) = (unsignedIntegerValue2 + v48 - 1) / v48;
      maxTotalThreadsPerThreadgroup /= v48;
      descriptor6 = [tensorCopy descriptor];
      shape4 = [descriptor6 shape];
      v51 = [shape4 count];
    }

    while (v43 < v51);
  }

  descriptor7 = [tensorCopy descriptor];
  shape5 = [descriptor7 shape];
  v54 = [shape5 count];

  if (v54)
  {
    v55 = 0;
    do
    {
      if (forwardCopy)
      {
        [v15 transposeShape];
      }

      else
      {
        [v15 transposeGradientShape];
      }
      v56 = ;
      v57 = [v56 objectAtIndexedSubscript:v55];
      unsignedIntegerValue3 = [v57 unsignedIntegerValue];

      *((v84 | 0xC) + 4 * v55++) = *(&v86 + unsignedIntegerValue3);
      descriptor8 = [tensorCopy descriptor];
      shape6 = [descriptor8 shape];
      v61 = [shape6 count];
    }

    while (v55 < v61);
  }

  v62 = [v76 computeCommandEncoderWithDispatchType:0];
  forwardKernel2 = [v15 forwardKernel];
  [v62 setComputePipelineState:forwardKernel2];

  if (v78)
  {
    v64 = 0;
    v65 = 4 * v86 * *(&v86 + 1) * v87 * *(&v87 + 1);
    v66 = 8 * v75 + 8;
    do
    {
      DWORD2(v84[0]) = v64;
      v67 = [deviceMemory objectAtIndexedSubscript:v37];
      [v62 setBuffer:v67 offset:0 atIndex:0];

      v68 = [deviceMemory2 objectAtIndexedSubscript:v37];
      [v62 setBuffer:v68 offset:0 atIndex:1];

      [v62 setBytes:v84 length:76 atIndex:2];
      [v62 setThreadgroupMemoryLength:GPU_AlignForThreadGroupMemorySize(v65) atIndex:0];
      v82 = *v70;
      v83 = *(v85 + v66);
      v80 = *v71;
      v81 = *(&v86 + v66);
      [v62 dispatchThreadgroups:&v82 threadsPerThreadgroup:&v80];
      ++v64;
    }

    while (v78 != v64);
  }

  [v62 endEncoding];

  v69 = *MEMORY[0x277D85DE8];
}

- (void)dispatchGradientResizeKernel:(id)kernel sourceGradientTensor:(id)tensor resultGradientTensor:(id)gradientTensor deviceIndex:(unint64_t)index
{
  tensorCopy = tensor;
  gradientTensorCopy = gradientTensor;
  kernelCopy = kernel;
  deviceMemory = [tensorCopy deviceMemory];
  deviceMemory2 = [gradientTensorCopy deviceMemory];
  v75 = [kernelCopy objectAtIndexedSubscript:index];

  selfCopy = self;
  gpuCommandBufferList = [(MLCDeviceGPU *)self gpuCommandBufferList];
  v86 = [gpuCommandBufferList objectAtIndexedSubscript:index];

  v83 = deviceMemory;
  v81 = [deviceMemory objectAtIndexedSubscript:index];
  v82 = deviceMemory2;
  indexCopy = index;
  v80 = [deviceMemory2 objectAtIndexedSubscript:index];
  descriptor = [tensorCopy descriptor];
  shape = [descriptor shape];
  v18 = [shape count];

  v84 = gradientTensorCopy;
  v85 = tensorCopy;
  if (v18 == 3)
  {
    descriptor2 = [tensorCopy descriptor];
    shape2 = [descriptor2 shape];
    unsignedIntegerValue5 = 1;
    v41 = [shape2 objectAtIndexedSubscript:1];
    unsignedIntegerValue = [v41 unsignedIntegerValue];

    descriptor3 = [tensorCopy descriptor];
    shape3 = [descriptor3 shape];
    v44 = [shape3 objectAtIndexedSubscript:2];
    unsignedIntegerValue2 = [v44 unsignedIntegerValue];

    descriptor4 = [gradientTensorCopy descriptor];
    shape4 = [descriptor4 shape];
    v37 = [shape4 objectAtIndexedSubscript:2];
    unsignedIntegerValue3 = [v37 unsignedIntegerValue];
    unsignedIntegerValue4 = 1;
    goto LABEL_5;
  }

  if (v18 == 4)
  {
    descriptor5 = [tensorCopy descriptor];
    shape5 = [descriptor5 shape];
    v21 = [shape5 objectAtIndexedSubscript:1];
    unsignedIntegerValue = [v21 unsignedIntegerValue];

    descriptor6 = [tensorCopy descriptor];
    shape6 = [descriptor6 shape];
    v25 = [shape6 objectAtIndexedSubscript:3];
    unsignedIntegerValue2 = [v25 unsignedIntegerValue];

    descriptor7 = [tensorCopy descriptor];
    shape7 = [descriptor7 shape];
    v29 = [shape7 objectAtIndexedSubscript:2];
    unsignedIntegerValue4 = [v29 unsignedIntegerValue];

    descriptor8 = [gradientTensorCopy descriptor];
    shape8 = [descriptor8 shape];
    v33 = [shape8 objectAtIndexedSubscript:3];
    unsignedIntegerValue3 = [v33 unsignedIntegerValue];

    descriptor4 = [gradientTensorCopy descriptor];
    shape4 = [descriptor4 shape];
    v37 = [shape4 objectAtIndexedSubscript:2];
    unsignedIntegerValue5 = [v37 unsignedIntegerValue];
LABEL_5:

    goto LABEL_7;
  }

  unsignedIntegerValue = 1;
  unsignedIntegerValue5 = 1;
  unsignedIntegerValue3 = 1;
  unsignedIntegerValue4 = 1;
  unsignedIntegerValue2 = 1;
LABEL_7:
  v45 = v75;
  gradientKernel = [v75 gradientKernel];
  maxTotalThreadsPerThreadgroup = [gradientKernel maxTotalThreadsPerThreadgroup];

  if (unsignedIntegerValue3 >= 0x10)
  {
    v48 = 16;
  }

  else
  {
    v48 = 8;
  }

  if (maxTotalThreadsPerThreadgroup < 0x400)
  {
    _CF = unsignedIntegerValue5 >= 0x10;
    v49 = 16;
    v50 = 8;
  }

  else
  {
    v49 = 32;
    if (unsignedIntegerValue3 >= 0x20)
    {
      v48 = 32;
    }

    v50 = 16;
    if (unsignedIntegerValue5 < 0x10)
    {
      v50 = 8;
    }

    _CF = unsignedIntegerValue5 >= 0x20;
  }

  if (_CF)
  {
    v52 = v49;
  }

  else
  {
    v52 = v50;
  }

  v98 = 1;
  v99 = unsignedIntegerValue2;
  v100 = unsignedIntegerValue2 * unsignedIntegerValue4;
  v101 = unsignedIntegerValue2 * unsignedIntegerValue4 * unsignedIntegerValue;
  v102 = 1;
  v103 = unsignedIntegerValue3;
  v53 = unsignedIntegerValue3 * unsignedIntegerValue5 * unsignedIntegerValue;
  v104 = unsignedIntegerValue3 * unsignedIntegerValue5;
  v105 = v53;
  v94 = unsignedIntegerValue2;
  v95 = unsignedIntegerValue4;
  v96 = unsignedIntegerValue3;
  v97 = unsignedIntegerValue5;
  [v75 scaleFactorX];
  v76 = v54;
  [v45 scaleFactorY];
  v56 = __PAIR64__(v55, v76);
  __asm { FMOV            V0.2S, #1.0 }

  v93 = vdiv_f32(_D0, v56);
  alignCorners = [v45 alignCorners];
  batchSize = [v45 batchSize];
  v62 = __clz(__rbit32(batchSize)) << 16;
  if (((batchSize - 1) & batchSize) != 0)
  {
    v63 = -65536;
  }

  else
  {
    v63 = v62;
  }

  v107 = v63 & 0xFFFF0000 | batchSize;
  v74 = (unsignedIntegerValue4 + v52 - 1) / v52;
  v77 = (unsignedIntegerValue2 + v48 - 1) / v48;
  v64 = [v86 computeCommandEncoderWithDispatchType:0];
  gpuPipelineStatesMemFillFloat = [(MLCDeviceGPU *)selfCopy gpuPipelineStatesMemFillFloat];
  v66 = [gpuPipelineStatesMemFillFloat objectAtIndexedSubscript:indexCopy];
  maxTotalThreadsPerThreadgroup2 = [v66 maxTotalThreadsPerThreadgroup];

  v91 = 0;
  v92 = v53 * [v45 batchSize];
  v68 = (maxTotalThreadsPerThreadgroup2 + ((v92 + 3) >> 2) - 1) / maxTotalThreadsPerThreadgroup2;
  gpuPipelineStatesMemFillFloat2 = [(MLCDeviceGPU *)selfCopy gpuPipelineStatesMemFillFloat];
  v70 = [gpuPipelineStatesMemFillFloat2 objectAtIndexedSubscript:indexCopy];
  [v64 setComputePipelineState:v70];

  [v64 setBuffer:v80 offset:0 atIndex:0];
  [v64 setBytes:&v91 length:8 atIndex:1];
  v89 = v68;
  v90 = vdupq_n_s64(1uLL);
  v87 = maxTotalThreadsPerThreadgroup2;
  v88 = v90;
  [v64 dispatchThreadgroups:&v89 threadsPerThreadgroup:&v87];
  gradientKernel2 = [v45 gradientKernel];
  [v64 setComputePipelineState:gradientKernel2];

  [v64 setBuffer:v81 offset:0 atIndex:0];
  [v64 setBuffer:v80 offset:0 atIndex:1];
  [v64 setBytes:&v93 length:64 atIndex:2];
  batchSize2 = [v45 batchSize];
  v89 = v77;
  v90.i64[0] = v74;
  v90.i64[1] = batchSize2 * unsignedIntegerValue;
  v87 = v48;
  v88.i64[0] = v73;
  v88.i64[1] = 1;
  [v64 dispatchThreadgroups:&v89 threadsPerThreadgroup:&v87];
  [v64 endEncoding];
}

- (void)dispatchForwardArithmeticUnaryKernel:(id)kernel sourceTensor:(id)tensor resultTensor:(id)resultTensor deviceIndex:(unint64_t)index
{
  kernelCopy = kernel;
  tensorCopy = tensor;
  resultTensorCopy = resultTensor;
  deviceMemory = [tensorCopy deviceMemory];
  v51 = [deviceMemory objectAtIndexedSubscript:index];

  v52 = resultTensorCopy;
  deviceMemory2 = [resultTensorCopy deviceMemory];
  v50 = [deviceMemory2 objectAtIndexedSubscript:index];

  v53 = kernelCopy;
  v15 = [kernelCopy objectAtIndexedSubscript:index];
  gpuCommandBufferList = [(MLCDeviceGPU *)self gpuCommandBufferList];
  v48 = [gpuCommandBufferList objectAtIndexedSubscript:index];

  batchSize = [v15 batchSize];
  descriptor = [tensorCopy descriptor];
  shape = [descriptor shape];
  v20 = [shape count];

  descriptor2 = [tensorCopy descriptor];
  shape2 = [descriptor2 shape];
  v23 = shape2;
  if (v20 == 1)
  {
    v24 = [shape2 objectAtIndexedSubscript:0];
    batchSize = [v24 unsignedIntegerValue];
  }

  else
  {
    v25 = [shape2 count];

    if (v25 >= 2)
    {
      v26 = 1;
      do
      {
        descriptor3 = [tensorCopy descriptor];
        shape3 = [descriptor3 shape];
        v29 = [shape3 objectAtIndexedSubscript:v26];
        batchSize *= [v29 unsignedIntegerValue];

        ++v26;
        descriptor4 = [tensorCopy descriptor];
        shape4 = [descriptor4 shape];
        v32 = [shape4 count];
      }

      while (v26 < v32);
    }
  }

  v59 = 0;
  v60 = 0;
  v58[0] = [v15 arithmeticOp] - 4;
  v58[1] = batchSize;
  neuronDescriptor = [v15 neuronDescriptor];

  if (neuronDescriptor)
  {
    neuronDescriptor2 = [v15 neuronDescriptor];
    [neuronDescriptor2 a];
    LODWORD(v59) = v35;

    neuronDescriptor3 = [v15 neuronDescriptor];
    [neuronDescriptor3 b];
    HIDWORD(v59) = v37;

    neuronDescriptor4 = [v15 neuronDescriptor];
    LODWORD(v60) = [neuronDescriptor4 activationType];
  }

  v39 = objc_autoreleasePoolPush();
  gpuPipelineStatesArithmeticUnaryForward = [(MLCDeviceGPU *)self gpuPipelineStatesArithmeticUnaryForward];
  v41 = [gpuPipelineStatesArithmeticUnaryForward objectAtIndexedSubscript:index];
  maxTotalThreadsPerThreadgroup = [v41 maxTotalThreadsPerThreadgroup];

  selfCopy = self;
  v44 = (batchSize + maxTotalThreadsPerThreadgroup - 1) / maxTotalThreadsPerThreadgroup;
  v45 = [v49 computeCommandEncoderWithDispatchType:0];
  gpuPipelineStatesArithmeticUnaryForward2 = [(MLCDeviceGPU *)selfCopy gpuPipelineStatesArithmeticUnaryForward];
  v47 = [gpuPipelineStatesArithmeticUnaryForward2 objectAtIndexedSubscript:index];
  [v45 setComputePipelineState:v47];

  [v45 memoryBarrierWithScope:2];
  [v45 setBuffer:v51 offset:0 atIndex:0];
  [v45 setBuffer:v50 offset:0 atIndex:1];
  [v45 setBytes:v58 length:24 atIndex:2];
  v56 = v44;
  v57 = vdupq_n_s64(1uLL);
  v54 = maxTotalThreadsPerThreadgroup;
  v55 = v57;
  [v45 dispatchThreadgroups:&v56 threadsPerThreadgroup:&v54];
  [v45 endEncoding];

  objc_autoreleasePoolPop(v39);
}

- (void)dispatchGradientArithmeticUnaryKernel:(id)kernel sourceGradientTensor:(id)tensor resultGradientTensor:(id)gradientTensor deviceIndex:(unint64_t)index
{
  kernelCopy = kernel;
  tensorCopy = tensor;
  gradientTensorCopy = gradientTensor;
  v52 = kernelCopy;
  v13 = [kernelCopy objectAtIndexedSubscript:index];
  deviceMemory = [tensorCopy deviceMemory];
  v50 = [deviceMemory objectAtIndexedSubscript:index];

  v51 = gradientTensorCopy;
  deviceMemory2 = [gradientTensorCopy deviceMemory];
  v49 = [deviceMemory2 objectAtIndexedSubscript:index];

  source = [v13 source];
  gpuCommandBufferList = [(MLCDeviceGPU *)self gpuCommandBufferList];
  v47 = [gpuCommandBufferList objectAtIndexedSubscript:index];

  batchSize = [v13 batchSize];
  descriptor = [tensorCopy descriptor];
  shape = [descriptor shape];
  v20 = [shape count];

  descriptor2 = [tensorCopy descriptor];
  shape2 = [descriptor2 shape];
  v23 = shape2;
  if (v20 == 1)
  {
    v24 = [shape2 objectAtIndexedSubscript:0];
    batchSize = [v24 unsignedIntegerValue];
  }

  else
  {
    v25 = [shape2 count];

    if (v25 >= 2)
    {
      v26 = 1;
      do
      {
        descriptor3 = [tensorCopy descriptor];
        shape3 = [descriptor3 shape];
        v29 = [shape3 objectAtIndexedSubscript:v26];
        batchSize *= [v29 unsignedIntegerValue];

        ++v26;
        descriptor4 = [tensorCopy descriptor];
        shape4 = [descriptor4 shape];
        v32 = [shape4 count];
      }

      while (v26 < v32);
    }
  }

  v58 = 0;
  v59 = 0;
  v57[0] = [v13 arithmeticOp] - 4;
  v57[1] = batchSize;
  neuronDescriptor = [v13 neuronDescriptor];

  if (neuronDescriptor)
  {
    neuronDescriptor2 = [v13 neuronDescriptor];
    [neuronDescriptor2 a];
    LODWORD(v58) = v35;

    neuronDescriptor3 = [v13 neuronDescriptor];
    [neuronDescriptor3 b];
    HIDWORD(v58) = v37;

    neuronDescriptor4 = [v13 neuronDescriptor];
    LODWORD(v59) = [neuronDescriptor4 activationType];
  }

  context = objc_autoreleasePoolPush();
  gpuPipelineStatesArithmeticUnaryGradient = [(MLCDeviceGPU *)self gpuPipelineStatesArithmeticUnaryGradient];
  v40 = [gpuPipelineStatesArithmeticUnaryGradient objectAtIndexedSubscript:index];
  maxTotalThreadsPerThreadgroup = [v40 maxTotalThreadsPerThreadgroup];

  v42 = (batchSize + maxTotalThreadsPerThreadgroup - 1) / maxTotalThreadsPerThreadgroup;
  v43 = [v47 computeCommandEncoderWithDispatchType:0];
  gpuPipelineStatesArithmeticUnaryGradient2 = [(MLCDeviceGPU *)self gpuPipelineStatesArithmeticUnaryGradient];
  v45 = [gpuPipelineStatesArithmeticUnaryGradient2 objectAtIndexedSubscript:index];
  [v43 setComputePipelineState:v45];

  [v43 memoryBarrierWithScope:2];
  [v43 setBuffer:source offset:0 atIndex:0];
  [v43 setBuffer:v50 offset:0 atIndex:1];
  [v43 setBuffer:v49 offset:0 atIndex:2];
  [v43 setBytes:v57 length:24 atIndex:3];
  v55 = v42;
  v56 = vdupq_n_s64(1uLL);
  v53 = maxTotalThreadsPerThreadgroup;
  v54 = v56;
  [v43 dispatchThreadgroups:&v55 threadsPerThreadgroup:&v53];
  [v43 endEncoding];

  objc_autoreleasePoolPop(context);
}

- (void)dispatchForwardArithmeticBinaryKernel:(id)kernel sourceTensor:(id)tensor sourceSecondaryTensor:(id)secondaryTensor resultTensor:(id)resultTensor deviceIndex:(unint64_t)index
{
  resultTensorCopy = resultTensor;
  secondaryTensorCopy = secondaryTensor;
  tensorCopy = tensor;
  v15 = [kernel objectAtIndexedSubscript:index];
  gpuCommandBufferList = [(MLCDeviceGPU *)self gpuCommandBufferList];
  v17 = [gpuCommandBufferList objectAtIndexedSubscript:index];

  v29 = 0u;
  memset(v28, 0, sizeof(v28));
  arithmeticOp = [v15 arithmeticOp];
  if (arithmeticOp <= 26)
  {
    if (arithmeticOp == 21)
    {
      v19 = 4;
      goto LABEL_12;
    }

    if (arithmeticOp == 26)
    {
      v19 = 5;
      goto LABEL_12;
    }
  }

  else
  {
    switch(arithmeticOp)
    {
      case 29:
        v19 = 8;
        goto LABEL_12;
      case 28:
        v19 = 7;
        goto LABEL_12;
      case 27:
        v19 = 6;
LABEL_12:
        LODWORD(v28[0]) = v19;
        goto LABEL_13;
    }
  }

  LODWORD(v28[0]) = [v15 arithmeticOp];
LABEL_13:
  neuronDescriptor = [v15 neuronDescriptor];

  if (neuronDescriptor)
  {
    neuronDescriptor2 = [v15 neuronDescriptor];
    [neuronDescriptor2 a];
    LODWORD(v29) = v22;

    neuronDescriptor3 = [v15 neuronDescriptor];
    [neuronDescriptor3 b];
    DWORD1(v29) = v24;

    neuronDescriptor4 = [v15 neuronDescriptor];
    DWORD2(v29) = [neuronDescriptor4 activationType];
  }

  gpuPipelineStatesArithmeticBinaryForward = [(MLCDeviceGPU *)self gpuPipelineStatesArithmeticBinaryForward];
  v27 = [gpuPipelineStatesArithmeticBinaryForward objectAtIndexedSubscript:index];
  [(MLCDeviceGPU *)self encodePrimitiveToCommandBuffer:v17 gpuDeviceOps:v15 sourceTensor:tensorCopy secondaryTensor:secondaryTensorCopy tertiaryTensor:0 resultTensor:resultTensorCopy params:v28 sizeOfParams:96 pipelineState:v27 deviceIndex:index];
}

- (void)dispatchForwardArithmeticTertiaryKernel:(id)kernel sourceTensor:(id)tensor sourceSecondaryTensor:(id)secondaryTensor sourceTertiaryTensor:(id)tertiaryTensor resultTensor:(id)resultTensor deviceIndex:(unint64_t)index
{
  resultTensorCopy = resultTensor;
  tertiaryTensorCopy = tertiaryTensor;
  secondaryTensorCopy = secondaryTensor;
  tensorCopy = tensor;
  v18 = [kernel objectAtIndexedSubscript:index];
  gpuCommandBufferList = [(MLCDeviceGPU *)self gpuCommandBufferList];
  v20 = [gpuCommandBufferList objectAtIndexedSubscript:index];

  memset(v34, 0, sizeof(v34));
  v33 = 0u;
  v32 = 0u;
  v31 = 0u;
  v30 = 0u;
  v29 = 10;
  neuronDescriptor = [v18 neuronDescriptor];

  if (neuronDescriptor)
  {
    neuronDescriptor2 = [v18 neuronDescriptor];
    [neuronDescriptor2 a];
    v34[3] = v23;

    neuronDescriptor3 = [v18 neuronDescriptor];
    [neuronDescriptor3 b];
    v34[4] = v25;

    neuronDescriptor4 = [v18 neuronDescriptor];
    v34[5] = [neuronDescriptor4 activationType];
  }

  gpuPipelineStatesArithmeticBinaryForward = [(MLCDeviceGPU *)self gpuPipelineStatesArithmeticBinaryForward];
  v28 = [gpuPipelineStatesArithmeticBinaryForward objectAtIndexedSubscript:index];
  [(MLCDeviceGPU *)self encodePrimitiveToCommandBuffer:v20 gpuDeviceOps:v18 sourceTensor:tensorCopy secondaryTensor:secondaryTensorCopy tertiaryTensor:tertiaryTensorCopy resultTensor:resultTensorCopy params:&v29 sizeOfParams:96 pipelineState:v28 deviceIndex:index];
}

- (void)dispatchGradientArithmeticBinaryKernel:(id)kernel sourceGradientTensor:(id)tensor resultGradientTensor:(id)gradientTensor secondaryResultGradientTensor:(id)resultGradientTensor deviceIndex:(unint64_t)index
{
  v207[1] = *MEMORY[0x277D85DE8];
  kernelCopy = kernel;
  tensorCopy = tensor;
  gradientTensorCopy = gradientTensor;
  resultGradientTensorCopy = resultGradientTensor;
  v14 = [kernelCopy objectAtIndexedSubscript:index];
  if ([v14 useSourceGradientDeviceMemoryForResultGradientTensor] && objc_msgSend(v14, "useSourceGradientDeviceMemoryForSecondaryResultGradientTensor"))
  {
    neuronDescriptor = [v14 neuronDescriptor];

    if (!neuronDescriptor)
    {
      goto LABEL_154;
    }

    v16 = 1;
  }

  else
  {
    v16 = 0;
  }

  source0Shape = [v14 source0Shape];
  source1Shape = [v14 source1Shape];
  v18 = [source0Shape count];
  v172 = source0Shape;
  v19 = [source0Shape objectAtIndexedSubscript:0];
  unsignedIntegerValue = [v19 unsignedIntegerValue];
  if (v18 == 1)
  {
  }

  else
  {
    if (unsignedIntegerValue <= [v14 batchSize])
    {
      v21 = v172;
      v22 = [v172 objectAtIndexedSubscript:0];
      [v22 unsignedIntegerValue];
    }

    else
    {
      [v14 batchSize];
      v21 = v172;
    }

    if ([v21 count] >= 2)
    {
      v23 = 1;
      do
      {
        v24 = [v21 objectAtIndexedSubscript:v23];
        [v24 unsignedIntegerValue];

        ++v23;
      }

      while (v23 < [v21 count]);
    }
  }

  v25 = [source1Shape count];
  v26 = [source1Shape objectAtIndexedSubscript:0];
  unsignedIntegerValue2 = [v26 unsignedIntegerValue];
  if (v25 == 1)
  {
  }

  else
  {
    if (unsignedIntegerValue2 <= [v14 batchSize])
    {
      v28 = source1Shape;
      v29 = [source1Shape objectAtIndexedSubscript:0];
      [v29 unsignedIntegerValue];
    }

    else
    {
      [v14 batchSize];
      v28 = source1Shape;
    }

    if ([v28 count] >= 2)
    {
      v30 = 1;
      do
      {
        v31 = [v28 objectAtIndexedSubscript:v30];
        [v31 unsignedIntegerValue];

        ++v30;
      }

      while (v30 < [v28 count]);
    }
  }

  descriptor = [tensorCopy descriptor];
  shape = [descriptor shape];

  unsignedIntegerValue4 = [shape count];
  v171 = shape;
  v35 = [shape objectAtIndexedSubscript:0];
  unsignedIntegerValue3 = [v35 unsignedIntegerValue];
  if (unsignedIntegerValue4 == 1)
  {
  }

  else
  {
    if (unsignedIntegerValue3 <= [v14 batchSize])
    {
      v37 = v171;
      v38 = [v171 objectAtIndexedSubscript:0];
      unsignedIntegerValue4 = [v38 unsignedIntegerValue];
    }

    else
    {
      unsignedIntegerValue4 = [v14 batchSize];
      v37 = v171;
    }

    unsignedIntegerValue3 = 1;
    if ([v37 count] >= 2)
    {
      v39 = 1;
      do
      {
        v40 = [v171 objectAtIndexedSubscript:v39];
        unsignedIntegerValue3 *= [v40 unsignedIntegerValue];

        ++v39;
      }

      while (v39 < [v171 count]);
    }
  }

  v174 = [MEMORY[0x277CD7258] matrixDescriptorWithRows:unsignedIntegerValue4 columns:unsignedIntegerValue3 rowBytes:4 * unsignedIntegerValue3 dataType:268435488];
  deviceMemory = [tensorCopy deviceMemory];
  deviceMemory2 = [gradientTensorCopy deviceMemory];
  deviceMemory3 = [resultGradientTensorCopy deviceMemory];
  gpuCommandBufferList = [(MLCDeviceGPU *)self gpuCommandBufferList];
  v185 = [gpuCommandBufferList objectAtIndexedSubscript:index];

  v202 = 0u;
  v203 = 0u;
  v200 = 0u;
  v201 = 0u;
  v198 = 0u;
  v199 = 0u;
  arithmeticOp = [v14 arithmeticOp];
  if (arithmeticOp <= 26)
  {
    if (arithmeticOp == 21)
    {
      v43 = 4;
      goto LABEL_41;
    }

    if (arithmeticOp == 26)
    {
      v43 = 5;
      goto LABEL_41;
    }

LABEL_52:
    if (v16)
    {
      arithmeticOp2 = 9;
    }

    else
    {
      arithmeticOp2 = [v14 arithmeticOp];
    }

    LODWORD(v198) = arithmeticOp2;
    goto LABEL_42;
  }

  if (arithmeticOp == 29)
  {
    v43 = 8;
    goto LABEL_41;
  }

  if (arithmeticOp == 28)
  {
    v43 = 7;
    goto LABEL_41;
  }

  if (arithmeticOp != 27)
  {
    goto LABEL_52;
  }

  v43 = 6;
LABEL_41:
  LODWORD(v198) = v43;
LABEL_42:
  neuronDescriptor2 = [v14 neuronDescriptor];

  if (neuronDescriptor2)
  {
    neuronDescriptor3 = [v14 neuronDescriptor];
    [neuronDescriptor3 a];
    LODWORD(v203) = v46;

    neuronDescriptor4 = [v14 neuronDescriptor];
    [neuronDescriptor4 b];
    DWORD1(v203) = v48;

    neuronDescriptor5 = [v14 neuronDescriptor];
    DWORD2(v203) = [neuronDescriptor5 activationType];
  }

  constantArithmeticSourcesFlags = [v14 constantArithmeticSourcesFlags];
  HIDWORD(v202) = constantArithmeticSourcesFlags;
  source = [v14 source];

  if (!source)
  {
    HIDWORD(v202) = constantArithmeticSourcesFlags | 0x100;
  }

  context = objc_autoreleasePoolPush();
  v184 = v14;
  if ([v171 count] == 1)
  {
    *(&v200 + 4) = 0x100000001;
    *(&v199 + 4) = 0x100000001;
    *(&v198 + 4) = 0x100000001;
    v52 = 1;
    HIDWORD(v200) = 1;
    HIDWORD(v199) = 1;
    HIDWORD(v198) = 1;
    v53 = [v172 objectAtIndexedSubscript:0];
    LODWORD(v199) = [v53 unsignedIntegerValue];

    v54 = [source1Shape objectAtIndexedSubscript:0];
    LODWORD(v200) = [v54 unsignedIntegerValue];

    v55 = [v171 objectAtIndexedSubscript:0];
    unsignedIntegerValue5 = [v55 unsignedIntegerValue];
    LODWORD(v201) = unsignedIntegerValue5;

    unsignedIntegerValue12 = 1;
    v178 = 1;
  }

  else if ([v171 count] == 2)
  {
    *(&v200 + 4) = 0x100000001;
    *(&v199 + 4) = 0x100000001;
    *(&v198 + 4) = 0x100000001;
    v57 = [v172 objectAtIndexedSubscript:0];
    HIDWORD(v198) = [v57 unsignedIntegerValue];

    v58 = [source1Shape objectAtIndexedSubscript:0];
    HIDWORD(v199) = [v58 unsignedIntegerValue];

    v59 = [v171 objectAtIndexedSubscript:0];
    HIDWORD(v200) = [v59 unsignedIntegerValue];

    v60 = [v172 objectAtIndexedSubscript:1];
    LODWORD(v199) = [v60 unsignedIntegerValue];

    v61 = [source1Shape objectAtIndexedSubscript:1];
    LODWORD(v200) = [v61 unsignedIntegerValue];

    v62 = [v171 objectAtIndexedSubscript:1];
    unsignedIntegerValue5 = [v62 unsignedIntegerValue];
    LODWORD(v201) = unsignedIntegerValue5;

    v52 = HIDWORD(v200);
    unsignedIntegerValue12 = 1;
    v178 = 1;
  }

  else
  {
    v63 = [v172 objectAtIndexedSubscript:0];
    unsignedIntegerValue6 = [v63 unsignedIntegerValue];
    if (unsignedIntegerValue6 <= [v14 batchSize])
    {
      v67 = [v172 objectAtIndexedSubscript:0];
      unsignedIntegerValue7 = [v67 unsignedIntegerValue];
    }

    else
    {
      unsignedIntegerValue7 = [v14 batchSize];
    }

    DWORD1(v198) = unsignedIntegerValue7;

    v68 = [source1Shape objectAtIndexedSubscript:0];
    unsignedIntegerValue8 = [v68 unsignedIntegerValue];
    if (unsignedIntegerValue8 <= [v14 batchSize])
    {
      v71 = [source1Shape objectAtIndexedSubscript:0];
      unsignedIntegerValue9 = [v71 unsignedIntegerValue];
    }

    else
    {
      unsignedIntegerValue9 = [v14 batchSize];
    }

    DWORD1(v199) = unsignedIntegerValue9;

    v72 = [v171 objectAtIndexedSubscript:0];
    unsignedIntegerValue10 = [v72 unsignedIntegerValue];
    if (unsignedIntegerValue10 <= [v14 batchSize])
    {
      v75 = [v171 objectAtIndexedSubscript:0];
      unsignedIntegerValue11 = [v75 unsignedIntegerValue];
    }

    else
    {
      unsignedIntegerValue11 = [v14 batchSize];
    }

    v178 = unsignedIntegerValue11;
    DWORD1(v200) = unsignedIntegerValue11;

    v76 = [v171 count];
    v77 = [v172 objectAtIndexedSubscript:1];
    DWORD2(v198) = [v77 unsignedIntegerValue];

    v78 = [source1Shape objectAtIndexedSubscript:1];
    DWORD2(v199) = [v78 unsignedIntegerValue];

    v79 = [v171 objectAtIndexedSubscript:1];
    unsignedIntegerValue12 = [v79 unsignedIntegerValue];
    DWORD2(v200) = unsignedIntegerValue12;

    v80 = [v172 objectAtIndexedSubscript:2];
    unsignedIntegerValue13 = [v80 unsignedIntegerValue];
    if (v76 == 3)
    {
      LODWORD(v199) = unsignedIntegerValue13;

      v82 = [source1Shape objectAtIndexedSubscript:2];
      LODWORD(v200) = [v82 unsignedIntegerValue];

      v83 = [v171 objectAtIndexedSubscript:2];
      unsignedIntegerValue5 = [v83 unsignedIntegerValue];
      LODWORD(v201) = unsignedIntegerValue5;

      HIDWORD(v200) = 1;
      v52 = 1;
      HIDWORD(v199) = 1;
      HIDWORD(v198) = 1;
    }

    else
    {
      HIDWORD(v198) = unsignedIntegerValue13;

      v84 = [source1Shape objectAtIndexedSubscript:2];
      HIDWORD(v199) = [v84 unsignedIntegerValue];

      v85 = [v171 objectAtIndexedSubscript:2];
      HIDWORD(v200) = [v85 unsignedIntegerValue];

      v86 = [v172 objectAtIndexedSubscript:3];
      LODWORD(v199) = [v86 unsignedIntegerValue];

      v87 = [source1Shape objectAtIndexedSubscript:3];
      LODWORD(v200) = [v87 unsignedIntegerValue];

      v88 = [v171 objectAtIndexedSubscript:3];
      unsignedIntegerValue5 = [v88 unsignedIntegerValue];
      LODWORD(v201) = unsignedIntegerValue5;

      v52 = HIDWORD(v200);
    }
  }

  v166 = gradientTensorCopy;
  v167 = tensorCopy;
  v168 = kernelCopy;
  v89 = 0;
  v206 = 0;
  v207[0] = 0;
  v90 = v197;
  v91 = &v206;
  v92 = &v204;
  v204 = 0;
  v205 = 0;
  v93 = 1;
  while (1)
  {
    v94 = v93;
    constantArithmeticSourcesFlags2 = [v184 constantArithmeticSourcesFlags];
    if (v94)
    {
      v96 = 1;
    }

    else
    {
      v96 = 2;
    }

    if ((constantArithmeticSourcesFlags2 & v96) == 0)
    {
      v99 = &v198 + 4 * v89 + 1;
      v100 = *v99 != v178;
      if (*v99 == v178)
      {
        v101 = 2;
      }

      else
      {
        v101 = 3;
      }

      if (v99[1] != unsignedIntegerValue12)
      {
        v100 = v101;
      }

      v103 = v99[2];
      v102 = v99[3];
      if (v103 != v52)
      {
        v100 |= 4u;
      }

      v104 = v102 == unsignedIntegerValue5 ? v100 : v100 | 8;
      *v90 = v104;
      if (v104)
      {
        v105 = [MEMORY[0x277CD72B0] temporaryMatrixWithCommandBuffer:v185 matrixDescriptor:v174];
        v106 = *v92;
        *v92 = v105;

        data = [v105 data];
        v98 = *v91;
        *v91 = data;
        goto LABEL_83;
      }
    }

    if ((v94 & 1) == 0)
    {
      break;
    }

    v97 = [deviceMemory2 objectAtIndexedSubscript:index];
    v98 = v206;
    v206 = v97;
LABEL_83:

    v93 = 0;
    v90 = v196;
    v92 = &v205;
    v91 = v207;
    v89 = 1;
    if ((v94 & 1) == 0)
    {
      goto LABEL_86;
    }
  }

  v108 = [deviceMemory3 objectAtIndexedSubscript:index];
  v109 = v207[v89 - 1];
  v207[v89 - 1] = v108;

LABEL_86:
  v110 = __clz(__rbit32(v178)) << 16;
  if (((v178 - 1) & v178) != 0)
  {
    v111 = -65536;
  }

  else
  {
    v111 = v110;
  }

  DWORD1(v202) = v111 & 0xFFFF0000 | v178;
  gpuPipelineStatesArithmeticBinaryGradient = [(MLCDeviceGPU *)self gpuPipelineStatesArithmeticBinaryGradient];
  v113 = [gpuPipelineStatesArithmeticBinaryGradient objectAtIndexedSubscript:index];
  maxTotalThreadsPerThreadgroup = [v113 maxTotalThreadsPerThreadgroup];

  v115 = v178 * unsignedIntegerValue12;
  if (unsignedIntegerValue5 >= 32)
  {
    v116 = 32;
  }

  else
  {
    v116 = 8;
  }

  v182 = v116;
  v117 = 5;
  if (unsignedIntegerValue5 < 32)
  {
    v117 = 3;
  }

  if (maxTotalThreadsPerThreadgroup >> v117 >= v52)
  {
    v118 = v52;
  }

  else
  {
    v118 = maxTotalThreadsPerThreadgroup >> v117;
  }

  if (maxTotalThreadsPerThreadgroup / (v118 << v117) >= v115)
  {
    v119 = v115;
  }

  else
  {
    v119 = maxTotalThreadsPerThreadgroup / (v118 << v117);
  }

  v179 = (v116 + unsignedIntegerValue5 - 1) >> v117;
  v120 = (v119 + v115 - 1) / v119;
  v121 = [v185 computeCommandEncoderWithDispatchType:0];
  gpuPipelineStatesArithmeticBinaryGradient2 = [(MLCDeviceGPU *)self gpuPipelineStatesArithmeticBinaryGradient];
  v123 = [gpuPipelineStatesArithmeticBinaryGradient2 objectAtIndexedSubscript:index];
  [v121 setComputePipelineState:v123];

  source2 = [v184 source];
  [v121 setBuffer:source2 offset:0 atIndex:0];

  selfCopy2 = self;
  secondarySource = [v184 secondarySource];
  [v121 setBuffer:secondarySource offset:0 atIndex:1];

  v127 = [deviceMemory objectAtIndexedSubscript:index];
  [v121 setBuffer:v127 offset:0 atIndex:2];

  [v121 setBuffer:v206 offset:0 atIndex:3];
  [v121 setBuffer:v207[0] offset:0 atIndex:4];
  [v121 setBytes:&v198 length:96 atIndex:5];
  v194 = v179;
  v195.i64[0] = (v118 + v52 - 1) / v118;
  v195.i64[1] = v120;
  v192 = v182;
  v193.i64[0] = v118;
  v193.i64[1] = v119;
  [v121 dispatchThreadgroups:&v194 threadsPerThreadgroup:&v192];
  v176 = v121;
  [v121 endEncoding];
  v128 = 0;
  v129 = v197;
  v130 = &v206;
  v131 = 1;
  while (2)
  {
    v132 = v131;
    v133 = *v129;
    if (!v133)
    {
      goto LABEL_148;
    }

    WORD4(v202) = v133;
    WORD5(v202) = v128;
    if (v133 <= 7)
    {
      if (v133 == 1)
      {
        v138 = DWORD1(v200);
        v137 = HIDWORD(v200) * DWORD2(v200) * v201;
        indexCopy4 = index;
      }

      else
      {
        indexCopy4 = index;
        if (v133 == 2)
        {
          v183 = v131;
          v138 = DWORD2(v200);
          v137 = v201 * HIDWORD(v200);
          gpuPipelineStatesReduceAcrossChannel = [(MLCDeviceGPU *)selfCopy2 gpuPipelineStatesReduceAcrossChannel];
          v140 = [gpuPipelineStatesReduceAcrossChannel objectAtIndexedSubscript:index];

          v141 = SDWORD1(v200);
          goto LABEL_133;
        }

        if (v133 != 3)
        {
          goto LABEL_116;
        }

        v137 = v201 * HIDWORD(v200);
        v138 = DWORD2(v200) * DWORD1(v200);
      }

      v183 = v131;
      gpuPipelineStatesReduceAcrossBatch = [(MLCDeviceGPU *)selfCopy2 gpuPipelineStatesReduceAcrossBatch];
      v140 = [gpuPipelineStatesReduceAcrossBatch objectAtIndexedSubscript:indexCopy4];

      v141 = 1;
LABEL_133:
      v154 = v138;
      maxTotalThreadsPerThreadgroup2 = [v140 maxTotalThreadsPerThreadgroup];
      v156 = 1 << -__clz(v137);
      if ((v137 & (v137 - 1)) == 0)
      {
        v156 = v137;
      }

      if (maxTotalThreadsPerThreadgroup2 < v137)
      {
        v157 = (v137 + maxTotalThreadsPerThreadgroup2 - 1) / maxTotalThreadsPerThreadgroup2;
      }

      else
      {
        v157 = 1;
      }

      if (maxTotalThreadsPerThreadgroup2 < v137)
      {
        v158 = maxTotalThreadsPerThreadgroup2;
      }

      else
      {
        v158 = v156;
      }

      v150 = [v185 computeCommandEncoderWithDispatchType:0];
      v180 = v140;
      [v150 setComputePipelineState:v140];
      v188 = 0x100000000;
      v189 = v137;
      v190 = v137;
      v191 = DWORD2(v200);
      if (v154)
      {
        v159 = *v130;
        if (v183)
        {
          v160 = deviceMemory2;
        }

        else
        {
          v160 = deviceMemory3;
        }

        do
        {
          [v150 setBuffer:v159 offset:0 atIndex:0];
          v161 = [v160 objectAtIndexedSubscript:index];
          [v150 setBuffer:v161 offset:0 atIndex:1];

          [v150 setThreadgroupMemoryLength:GPU_AlignForThreadGroupMemorySize(4 * v158) atIndex:0];
          [v150 setBytes:&v188 length:20 atIndex:2];
          v194 = v157;
          v195.i64[0] = v141;
          v195.i64[1] = 1;
          v192 = v158;
          v193 = vdupq_n_s64(1uLL);
          [v150 dispatchThreadgroups:&v194 threadsPerThreadgroup:&v192];
          LODWORD(v188) = v188 + 1;
          --v154;
        }

        while (v154);
      }

      [v150 endEncoding];
      selfCopy2 = self;
      v143 = v180;
      v132 = v183;
      goto LABEL_147;
    }

    if (v133 > 13)
    {
      indexCopy4 = index;
      if (v133 == 14)
      {
        v135 = SDWORD1(v200);
        LODWORD(v136) = HIDWORD(v200) * DWORD2(v200) * v201;
      }

      else
      {
        if (v133 != 15)
        {
          goto LABEL_116;
        }

        LODWORD(v136) = DWORD2(v200) * DWORD1(v200) * HIDWORD(v200) * v201;
        v135 = 1;
      }

      goto LABEL_119;
    }

    indexCopy4 = index;
    if (v133 == 8)
    {
      LODWORD(v136) = v201;
      v135 = SDWORD2(v200) * SDWORD1(v200) * SHIDWORD(v200);
LABEL_119:
      gpuPipelineStatesArithmeticReduceGradientAll = [(MLCDeviceGPU *)selfCopy2 gpuPipelineStatesArithmeticReduceGradientAll];
      v146 = [gpuPipelineStatesArithmeticReduceGradientAll objectAtIndexedSubscript:indexCopy4];

      maxTotalThreadsPerThreadgroup3 = [v146 maxTotalThreadsPerThreadgroup];
      if (maxTotalThreadsPerThreadgroup3 <= v136)
      {
        maxTotalThreadsPerThreadgroup4 = maxTotalThreadsPerThreadgroup3;
      }

      else
      {
        v148 = 1 << -__clz(v136);
        if ((v136 & (v136 - 1)) != 0)
        {
          v136 = v148;
        }

        else
        {
          v136 = v136;
        }

        threadExecutionWidth = [v146 threadExecutionWidth];
        if (v136 <= threadExecutionWidth)
        {
          maxTotalThreadsPerThreadgroup4 = threadExecutionWidth;
        }

        else
        {
          maxTotalThreadsPerThreadgroup4 = v136;
        }
      }

      v143 = v146;
      goto LABEL_128;
    }

    if (v133 == 12)
    {
      v135 = SDWORD2(v200) * SDWORD1(v200);
      LODWORD(v136) = v201 * HIDWORD(v200);
      goto LABEL_119;
    }

LABEL_116:
    gpuPipelineStatesArithmeticReduceGradientAny = [(MLCDeviceGPU *)selfCopy2 gpuPipelineStatesArithmeticReduceGradientAny];
    v143 = [gpuPipelineStatesArithmeticReduceGradientAny objectAtIndexedSubscript:indexCopy4];

    maxTotalThreadsPerThreadgroup4 = [v143 maxTotalThreadsPerThreadgroup];
    v135 = 1;
LABEL_128:
    v150 = [v185 computeCommandEncoderWithDispatchType:0];
    [v150 setComputePipelineState:v143];
    [v150 setBuffer:*v130 offset:0 atIndex:0];
    if (v132)
    {
      v151 = deviceMemory2;
    }

    else
    {
      v151 = deviceMemory3;
    }

    v152 = [v151 objectAtIndexedSubscript:indexCopy4];
    [v150 setBuffer:v152 offset:0 atIndex:1];

    [v150 setThreadgroupMemoryLength:GPU_AlignForThreadGroupMemorySize(4 * maxTotalThreadsPerThreadgroup4) atIndex:0];
    [v150 setBytes:&v198 length:96 atIndex:2];
    v194 = v135;
    v195 = vdupq_n_s64(1uLL);
    v192 = maxTotalThreadsPerThreadgroup4;
    v193 = v195;
    [v150 dispatchThreadgroups:&v194 threadsPerThreadgroup:&v192];
    [v150 endEncoding];
LABEL_147:

LABEL_148:
    v131 = 0;
    v128 = 1;
    v129 = v196;
    v130 = v207;
    if (v132)
    {
      continue;
    }

    break;
  }

  for (i = 8; i != -8; i -= 8)
  {
  }

  v163 = 1;
  tensorCopy = v167;
  kernelCopy = v168;
  gradientTensorCopy = v166;
  v14 = v184;
  do
  {
  }

  while (v163 != -1);
  objc_autoreleasePoolPop(context);

LABEL_154:
  v164 = *MEMORY[0x277D85DE8];
}

- (void)dispatchForwardGramMatrixKernel:(id)kernel sourceTensor:(id)tensor resultTensor:(id)resultTensor deviceIndex:(unint64_t)index forTraining:(BOOL)training
{
  kernelCopy = kernel;
  tensorCopy = tensor;
  resultTensorCopy = resultTensor;
  deviceMemory = [tensorCopy deviceMemory];
  v46 = resultTensorCopy;
  deviceMemory2 = [resultTensorCopy deviceMemory];
  v47 = kernelCopy;
  v14 = [kernelCopy objectAtIndexedSubscript:index];
  gpuCommandBufferList = [(MLCDeviceGPU *)self gpuCommandBufferList];
  v16 = [gpuCommandBufferList objectAtIndexedSubscript:index];

  deviceList = [(MLCDeviceGPU *)self deviceList];
  v48 = [deviceList objectAtIndexedSubscript:index];

  descriptor = [tensorCopy descriptor];
  shape = [descriptor shape];
  v20 = [shape count];

  if (v20 < 3)
  {
    v22 = 1;
  }

  else
  {
    v21 = 2;
    v22 = 1;
    do
    {
      descriptor2 = [tensorCopy descriptor];
      shape2 = [descriptor2 shape];
      v25 = [shape2 objectAtIndexedSubscript:v21];
      v22 *= [v25 unsignedIntegerValue];

      ++v21;
      descriptor3 = [tensorCopy descriptor];
      shape3 = [descriptor3 shape];
      v28 = [shape3 count];
    }

    while (v21 < v28);
  }

  descriptor4 = [tensorCopy descriptor];
  shape4 = [descriptor4 shape];
  v31 = [shape4 objectAtIndexedSubscript:1];
  unsignedIntegerValue = [v31 unsignedIntegerValue];

  [v14 gramMatrixScale];
  v53 = v33;
  v55 = unsignedIntegerValue;
  v57 = v22;
  v58 = v22;
  v59 = unsignedIntegerValue * v22;
  v60 = unsignedIntegerValue;
  v61 = unsignedIntegerValue * unsignedIntegerValue;
  forwardKernel = [v14 forwardKernel];
  maxTotalThreadsPerThreadgroup = [forwardKernel maxTotalThreadsPerThreadgroup];

  forwardKernel2 = [v14 forwardKernel];
  threadExecutionWidth = [forwardKernel2 threadExecutionWidth];

  if (v22 <= threadExecutionWidth)
  {
    v38 = threadExecutionWidth;
  }

  else
  {
    v38 = maxTotalThreadsPerThreadgroup;
  }

  if (v22 <= threadExecutionWidth)
  {
    v39 = 0;
  }

  else
  {
    v39 = 4 * (maxTotalThreadsPerThreadgroup + unsignedIntegerValue);
  }

  v54 = v22 > threadExecutionWidth;
  v56 = (v22 + v38 - 1) / v38;
  if (v56 <= 1)
  {
    v40 = deviceMemory;
  }

  else
  {
    v40 = deviceMemory;
    if (v38 + unsignedIntegerValue > [v48 maxThreadgroupMemoryLength] >> 2)
    {
      v39 = 4 * v38;
      v54 = 0;
    }
  }

  v41 = [v16 computeCommandEncoderWithDispatchType:0];
  forwardKernel3 = [v14 forwardKernel];
  [v41 setComputePipelineState:forwardKernel3];

  v43 = [v40 objectAtIndexedSubscript:index];
  [v41 setBuffer:v43 offset:0 atIndex:0];

  v44 = [deviceMemory2 objectAtIndexedSubscript:index];
  [v41 setBuffer:v44 offset:0 atIndex:1];

  [v41 setBytes:&v53 length:36 atIndex:2];
  if (v39)
  {
    [v41 setThreadgroupMemoryLength:GPU_AlignForThreadGroupMemorySize(v39) atIndex:0];
  }

  v52[0] = unsignedIntegerValue;
  v52[1] = [v14 batchSize];
  v52[2] = 1;
  v50 = v38;
  v51 = vdupq_n_s64(1uLL);
  [v41 dispatchThreadgroups:v52 threadsPerThreadgroup:&v50];
  [v41 endEncoding];
}

- (void)dispatchGradientGramMatrixKernel:(id)kernel sourceGradientTensor:(id)tensor resultGradientTensor:(id)gradientTensor deviceIndex:(unint64_t)index
{
  kernelCopy = kernel;
  gradientTensorCopy = gradientTensor;
  deviceMemory = [tensor deviceMemory];
  deviceMemory2 = [gradientTensorCopy deviceMemory];
  v40 = kernelCopy;
  v13 = [kernelCopy objectAtIndexedSubscript:index];
  gpuCommandBufferList = [(MLCDeviceGPU *)self gpuCommandBufferList];
  v15 = [gpuCommandBufferList objectAtIndexedSubscript:index];

  descriptor = [gradientTensorCopy descriptor];
  shape = [descriptor shape];
  v18 = [shape count];

  if (v18 < 3)
  {
    v20 = 1;
  }

  else
  {
    v19 = 2;
    v20 = 1;
    do
    {
      descriptor2 = [gradientTensorCopy descriptor];
      shape2 = [descriptor2 shape];
      v23 = [shape2 objectAtIndexedSubscript:v19];
      v20 *= [v23 unsignedIntegerValue];

      ++v19;
      descriptor3 = [gradientTensorCopy descriptor];
      shape3 = [descriptor3 shape];
      v26 = [shape3 count];
    }

    while (v19 < v26);
  }

  descriptor4 = [gradientTensorCopy descriptor];
  shape4 = [descriptor4 shape];
  v29 = [shape4 objectAtIndexedSubscript:1];
  unsignedIntegerValue = [v29 unsignedIntegerValue];

  v44[3] = 0;
  [v13 gramMatrixScale];
  v44[0] = v31;
  v44[4] = v20;
  v44[5] = unsignedIntegerValue;
  v44[6] = unsignedIntegerValue * unsignedIntegerValue;
  v44[7] = v20;
  v44[8] = unsignedIntegerValue * v20;
  v44[1] = 0;
  v44[2] = unsignedIntegerValue;
  gradientKernel = [v13 gradientKernel];
  maxTotalThreadsPerThreadgroup = [gradientKernel maxTotalThreadsPerThreadgroup];

  v34 = [v15 computeCommandEncoderWithDispatchType:0];
  gradientKernel2 = [v13 gradientKernel];
  [v34 setComputePipelineState:gradientKernel2];

  source = [v13 source];
  [v34 setBuffer:source offset:0 atIndex:0];

  v37 = [deviceMemory objectAtIndexedSubscript:index];
  [v34 setBuffer:v37 offset:0 atIndex:1];

  v38 = [deviceMemory2 objectAtIndexedSubscript:index];
  [v34 setBuffer:v38 offset:0 atIndex:2];

  [v34 setBytes:v44 length:36 atIndex:3];
  [v34 setThreadgroupMemoryLength:GPU_AlignForThreadGroupMemorySize(8 * unsignedIntegerValue) atIndex:0];
  v43[0] = unsignedIntegerValue;
  v43[1] = [v13 batchSize];
  v43[2] = 1;
  v41 = maxTotalThreadsPerThreadgroup;
  v42 = vdupq_n_s64(1uLL);
  [v34 dispatchThreadgroups:v43 threadsPerThreadgroup:&v41];
  [v34 endEncoding];
}

- (void)dispatchForwardLayerNormalizationKernel:(id)kernel sourceTensors:(id)tensors resultTensor:(id)tensor deviceIndex:(unint64_t)index forTraining:(BOOL)training
{
  LODWORD(v7) = training;
  kernelCopy = kernel;
  tensorsCopy = tensors;
  tensorCopy = tensor;
  v15 = [tensorsCopy objectAtIndexedSubscript:0];
  deviceMemory = [v15 deviceMemory];

  v67 = tensorCopy;
  deviceMemory2 = [tensorCopy deviceMemory];
  v68 = kernelCopy;
  v16 = [kernelCopy objectAtIndexedSubscript:index];
  exportableState = [v16 exportableState];
  gpuCommandBufferList = [(MLCDeviceGPU *)self gpuCommandBufferList];
  v73 = [gpuCommandBufferList objectAtIndexedSubscript:index];

  deviceList = [(MLCDeviceGPU *)self deviceList];
  v70 = [deviceList objectAtIndexedSubscript:index];

  v80 = 0;
  v81 = 0;
  v82 = 0;
  v79 = [tensorsCopy count] != 1;
  v84 = v7;
  [v16 varianceEpsilon];
  v83 = v19;
  normalizedShape = [v16 normalizedShape];
  v21 = [normalizedShape count];

  normalizedShape2 = [v16 normalizedShape];
  normalizedShape5 = normalizedShape2;
  v71 = v7;
  if (v21 == 3)
  {
    v24 = [normalizedShape2 objectAtIndexedSubscript:0];
    unsignedIntegerValue = [v24 unsignedIntegerValue];
    normalizedShape3 = [v16 normalizedShape];
    v27 = [normalizedShape3 objectAtIndexedSubscript:1];
    v28 = [v27 unsignedIntegerValue] * unsignedIntegerValue;
    normalizedShape4 = [v16 normalizedShape];
    v7 = [normalizedShape4 objectAtIndexedSubscript:2];
    v30 = v28 * [v7 unsignedIntegerValue];
    HIDWORD(v79) = v30;

    LOBYTE(v7) = v71;
  }

  else
  {
    v31 = [normalizedShape2 count];

    normalizedShape5 = [v16 normalizedShape];
    v24 = [normalizedShape5 objectAtIndexedSubscript:0];
    unsignedIntegerValue2 = [v24 unsignedIntegerValue];
    v30 = unsignedIntegerValue2;
    if (v31 == 2)
    {
      normalizedShape6 = [v16 normalizedShape];
      v34 = [normalizedShape6 objectAtIndexedSubscript:1];
      v30 *= [v34 unsignedIntegerValue];
      HIDWORD(v79) = v30;
    }

    else
    {
      HIDWORD(v79) = unsignedIntegerValue2;
    }
  }

  v69 = v30;
  *(&v82 + 1) = 1.0 / v30;
  v35 = 1;
  v36 = 1;
  while (1)
  {
    v37 = [tensorsCopy objectAtIndexedSubscript:0];
    descriptor = [v37 descriptor];
    shape = [descriptor shape];
    v40 = [shape count];

    if (v35 >= v40)
    {
      break;
    }

    v41 = [tensorsCopy objectAtIndexedSubscript:0];
    descriptor2 = [v41 descriptor];
    shape2 = [descriptor2 shape];
    v44 = [shape2 objectAtIndexedSubscript:v35];
    v36 *= [v44 unsignedIntegerValue];

    ++v35;
  }

  batchSize = [v16 batchSize];
  if (v7)
  {
    v46 = 4 * v36 * batchSize;
    normalizationInputNormalized = [v16 normalizationInputNormalized];

    if (!normalizationInputNormalized)
    {
      v48 = [v70 newBufferWithLength:v46 options:{+[MLCGPUHelper mtlResourceOptions](MLCGPUHelper, "mtlResourceOptions")}];
      [v16 setNormalizationInputNormalized:v48];
    }

    normalizationInverseSqrtVariance = [v16 normalizationInverseSqrtVariance];

    if (!normalizationInverseSqrtVariance)
    {
      v50 = [v70 newBufferWithLength:v46 / v69 options:{+[MLCGPUHelper mtlResourceOptions](MLCGPUHelper, "mtlResourceOptions")}];
      [v16 setNormalizationInverseSqrtVariance:v50];
    }
  }

  v80 = v36;
  LODWORD(v81) = v36;
  HIDWORD(v81) = v36;
  forwardKernel = [v16 forwardKernel];
  threadExecutionWidth = [forwardKernel threadExecutionWidth];

  batchSize2 = [v16 batchSize];
  v54 = [v73 computeCommandEncoderWithDispatchType:0];
  if (v7)
  {
    [v16 forwardKernel];
  }

  else
  {
    [v16 forwardStatisticsKernel];
  }
  v55 = ;
  [v54 setComputePipelineState:v55];

  v56 = deviceMemory;
  v57 = [deviceMemory objectAtIndexedSubscript:index];
  [v54 setBuffer:v57 offset:0 atIndex:0];

  v58 = [deviceMemory2 objectAtIndexedSubscript:index];
  [v54 setBuffer:v58 offset:0 atIndex:1];

  [v54 setBytes:&v79 length:36 atIndex:2];
  beta = [exportableState beta];
  [v54 setBuffer:beta offset:0 atIndex:3];

  gamma = [exportableState gamma];
  [v54 setBuffer:gamma offset:0 atIndex:4];

  [v54 setThreadgroupMemoryLength:GPU_AlignForThreadGroupMemorySize(4 * SHIDWORD(v79)) atIndex:0];
  if (v71)
  {
    normalizationInputNormalized2 = [v16 normalizationInputNormalized];
    [v54 setBuffer:normalizationInputNormalized2 offset:0 atIndex:5];

    [v16 normalizationInverseSqrtVariance];
  }

  else
  {
    v62 = [deviceMemory objectAtIndexedSubscript:index];
    [v54 setBuffer:v62 offset:0 atIndex:5];

    [deviceMemory objectAtIndexedSubscript:index];
  }
  v63 = ;
  [v54 setBuffer:v63 offset:0 atIndex:6];

  if (v79)
  {
    v64 = [tensorsCopy objectAtIndexedSubscript:1];
    deviceMemory3 = [v64 deviceMemory];
    v66 = [deviceMemory3 objectAtIndexedSubscript:index];
    [v54 setBuffer:v66 offset:0 atIndex:7];

    v56 = deviceMemory;
  }

  else
  {
    v64 = [deviceMemory objectAtIndexedSubscript:index];
    [v54 setBuffer:v64 offset:0 atIndex:7];
  }

  v78[0] = v36 / v69;
  v78[1] = batchSize2;
  v78[2] = 1;
  v76 = threadExecutionWidth;
  v77 = vdupq_n_s64(1uLL);
  [v54 dispatchThreadgroups:v78 threadsPerThreadgroup:&v76];
  [v54 endEncoding];
}

- (void)dispatchGradientLayerNormalizationKernel:(id)kernel sourceGradientTensor:(id)tensor resultGradientTensor:(id)gradientTensor deviceIndex:(unint64_t)index
{
  kernelCopy = kernel;
  tensorCopy = tensor;
  gradientTensorCopy = gradientTensor;
  deviceMemory = [tensorCopy deviceMemory];
  v71 = gradientTensorCopy;
  deviceMemory2 = [gradientTensorCopy deviceMemory];
  v72 = kernelCopy;
  v14 = [kernelCopy objectAtIndexedSubscript:index];
  exportableState = [v14 exportableState];
  gpuCommandBufferList = [(MLCDeviceGPU *)self gpuCommandBufferList];
  v16 = [gpuCommandBufferList objectAtIndexedSubscript:index];

  v78 = 0;
  v79 = 0;
  v80 = 0;
  v81 = 0.0;
  v83 = 1;
  [v14 varianceEpsilon];
  v82 = v17;
  normalizedShape = [v14 normalizedShape];
  v19 = [normalizedShape count];

  normalizedShape2 = [v14 normalizedShape];
  normalizedShape5 = normalizedShape2;
  v73 = deviceMemory;
  indexCopy = index;
  if (v19 == 3)
  {
    v22 = [normalizedShape2 objectAtIndexedSubscript:0];
    unsignedIntegerValue = [v22 unsignedIntegerValue];
    normalizedShape3 = [v14 normalizedShape];
    v25 = [normalizedShape3 objectAtIndexedSubscript:1];
    v26 = [v25 unsignedIntegerValue] * unsignedIntegerValue;
    normalizedShape4 = [v14 normalizedShape];
    v28 = [normalizedShape4 objectAtIndexedSubscript:2];
    v29 = v26 * [v28 unsignedIntegerValue];
    HIDWORD(v78) = v29;
  }

  else
  {
    v30 = [normalizedShape2 count];

    normalizedShape5 = [v14 normalizedShape];
    v22 = [normalizedShape5 objectAtIndexedSubscript:0];
    unsignedIntegerValue2 = [v22 unsignedIntegerValue];
    v32 = unsignedIntegerValue2;
    if (v30 == 2)
    {
      normalizedShape6 = [v14 normalizedShape];
      v34 = [normalizedShape6 objectAtIndexedSubscript:1];
      v29 = [v34 unsignedIntegerValue] * v32;
      HIDWORD(v78) = v29;
    }

    else
    {
      HIDWORD(v78) = unsignedIntegerValue2;
      v29 = unsignedIntegerValue2;
    }
  }

  v81 = 1.0 / v29;
  descriptor = [tensorCopy descriptor];
  shape = [descriptor shape];
  v37 = [shape count];

  v38 = 1;
  if (v37 >= 2)
  {
    v39 = 1;
    do
    {
      descriptor2 = [tensorCopy descriptor];
      shape2 = [descriptor2 shape];
      v42 = [shape2 objectAtIndexedSubscript:v39];
      v38 *= [v42 unsignedIntegerValue];

      ++v39;
      descriptor3 = [tensorCopy descriptor];
      shape3 = [descriptor3 shape];
      v45 = [shape3 count];
    }

    while (v39 < v45);
  }

  LODWORD(v79) = v38;
  HIDWORD(v79) = v38;
  LODWORD(v80) = v38;
  HIDWORD(v80) = [v14 batchSize];
  gradientStatisticsKernel = [v14 gradientStatisticsKernel];
  maxTotalThreadsPerThreadgroup = [gradientStatisticsKernel maxTotalThreadsPerThreadgroup];

  if (maxTotalThreadsPerThreadgroup <= v29)
  {
    v48 = (v29 + maxTotalThreadsPerThreadgroup - 1) / maxTotalThreadsPerThreadgroup;
  }

  else
  {
    maxTotalThreadsPerThreadgroup = v29;
    v48 = 1;
  }

  v49 = [v16 computeCommandEncoderWithDispatchType:0];
  gradientStatisticsKernel2 = [v14 gradientStatisticsKernel];
  [v49 setComputePipelineState:gradientStatisticsKernel2];

  v51 = [v73 objectAtIndexedSubscript:v68];
  [v49 setBuffer:v51 offset:0 atIndex:0];

  [v49 setBytes:&v78 length:36 atIndex:2];
  normalizationBetaGradient = [v14 normalizationBetaGradient];
  [v49 setBuffer:normalizationBetaGradient offset:0 atIndex:3];

  normalizationGammaGradient = [v14 normalizationGammaGradient];
  [v49 setBuffer:normalizationGammaGradient offset:0 atIndex:4];

  normalizationInputNormalized = [v14 normalizationInputNormalized];
  [v49 setBuffer:normalizationInputNormalized offset:0 atIndex:5];

  [v49 setThreadgroupMemoryLength:GPU_AlignForThreadGroupMemorySize(8 * maxTotalThreadsPerThreadgroup) atIndex:0];
  v76 = v48;
  v55 = 1;
  v77 = vdupq_n_s64(1uLL);
  v74 = maxTotalThreadsPerThreadgroup;
  v75 = v77;
  [v49 dispatchThreadgroups:&v76 threadsPerThreadgroup:&v74];
  v56 = v80 / SHIDWORD(v78);
  v57 = v80 / SHIDWORD(v78);
  forwardKernel = [v14 forwardKernel];
  maxTotalThreadsPerThreadgroup2 = [forwardKernel maxTotalThreadsPerThreadgroup];

  if (maxTotalThreadsPerThreadgroup2 <= v56)
  {
    v57 = maxTotalThreadsPerThreadgroup2;
    v55 = (v56 + maxTotalThreadsPerThreadgroup2 - 1) / maxTotalThreadsPerThreadgroup2;
  }

  batchSize = [v14 batchSize];
  gradientKernel = [v14 gradientKernel];
  [v49 setComputePipelineState:gradientKernel];

  v62 = [v73 objectAtIndexedSubscript:v68];
  [v49 setBuffer:v62 offset:0 atIndex:0];

  v63 = [deviceMemory2 objectAtIndexedSubscript:v68];
  [v49 setBuffer:v63 offset:0 atIndex:1];

  [v49 setBytes:&v78 length:36 atIndex:2];
  gamma = [exportableState gamma];
  [v49 setBuffer:gamma offset:0 atIndex:4];

  normalizationInputNormalized2 = [v14 normalizationInputNormalized];
  [v49 setBuffer:normalizationInputNormalized2 offset:0 atIndex:5];

  normalizationInverseSqrtVariance = [v14 normalizationInverseSqrtVariance];
  [v49 setBuffer:normalizationInverseSqrtVariance offset:0 atIndex:6];

  v76 = v55;
  v77.i64[0] = batchSize;
  v77.i64[1] = 1;
  v74 = v57;
  v75 = vdupq_n_s64(1uLL);
  [v49 dispatchThreadgroups:&v76 threadsPerThreadgroup:&v74];
  [v49 endEncoding];
}

- (void)dispatchForwardInstanceNormalizationKernel:(id)kernel sourceTensor:(id)tensor resultTensor:(id)resultTensor deviceIndex:(unint64_t)index forTraining:(BOOL)training
{
  trainingCopy = training;
  kernelCopy = kernel;
  tensorCopy = tensor;
  resultTensorCopy = resultTensor;
  deviceMemory = [tensorCopy deviceMemory];
  v92 = resultTensorCopy;
  deviceMemory2 = [resultTensorCopy deviceMemory];
  v93 = kernelCopy;
  v14 = [kernelCopy objectAtIndexedSubscript:index];
  exportableState = [v14 exportableState];
  gpuCommandBufferList = [(MLCDeviceGPU *)self gpuCommandBufferList];
  v95 = [gpuCommandBufferList objectAtIndexedSubscript:index];

  deviceList = [(MLCDeviceGPU *)self deviceList];
  v94 = [deviceList objectAtIndexedSubscript:index];

  v106 = 0;
  v104 = 0u;
  v105 = 0u;
  v18 = exportableState;
  if (exportableState)
  {
    v19 = 12;
  }

  else
  {
    v19 = 0;
  }

  v103 = v19;
  [v14 varianceEpsilon];
  LODWORD(v105) = v20;
  [v14 momentum];
  DWORD1(v105) = v21;
  descriptor = [tensorCopy descriptor];
  shape = [descriptor shape];
  v24 = 1;
  v25 = [shape objectAtIndexedSubscript:1];
  unsignedIntegerValue = [v25 unsignedIntegerValue];

  batchSize = [v14 batchSize];
  descriptor2 = [tensorCopy descriptor];
  shape2 = [descriptor2 shape];
  v28 = [shape2 count];

  if (v28 >= 3)
  {
    v29 = 2;
    v24 = 1;
    do
    {
      descriptor3 = [tensorCopy descriptor];
      shape3 = [descriptor3 shape];
      v32 = [shape3 objectAtIndexedSubscript:v29];
      v24 *= [v32 unsignedIntegerValue];

      ++v29;
      descriptor4 = [tensorCopy descriptor];
      shape4 = [descriptor4 shape];
      v35 = [shape4 count];
    }

    while (v29 < v35);
  }

  LODWORD(v104) = v24;
  DWORD1(v104) = v24 * unsignedIntegerValue;
  *(&v104 + 2) = 1.0 / v24;
  HIDWORD(v104) = unsignedIntegerValue;
  neuronDescriptor = [v14 neuronDescriptor];

  if (neuronDescriptor)
  {
    v19 |= 0x10u;
    v103 = v19;
    neuronDescriptor2 = [v14 neuronDescriptor];
    [neuronDescriptor2 a];
    DWORD2(v105) = v38;

    neuronDescriptor3 = [v14 neuronDescriptor];
    [neuronDescriptor3 b];
    HIDWORD(v105) = v40;

    neuronDescriptor4 = [v14 neuronDescriptor];
    LODWORD(v106) = [neuronDescriptor4 activationType];
  }

  movingState = [v14 movingState];

  if (movingState)
  {
    v103 = v19 | 3;
  }

  batchSize2 = [v14 batchSize];
  if (trainingCopy)
  {
    v44 = batchSize2;
    v45 = 4 * unsignedIntegerValue;
    batchSize3 = [v14 batchSize];
    normalizationInputNormalized = [v14 normalizationInputNormalized];

    if (!normalizationInputNormalized)
    {
      v48 = [v94 newBufferWithLength:v45 * v24 * v44 options:{+[MLCGPUHelper mtlResourceOptions](MLCGPUHelper, "mtlResourceOptions")}];
      [v14 setNormalizationInputNormalized:v48];
    }

    normalizationInverseSqrtVariance = [v14 normalizationInverseSqrtVariance];

    if (!normalizationInverseSqrtVariance)
    {
      v50 = [v94 newBufferWithLength:v45 * batchSize3 options:{+[MLCGPUHelper mtlResourceOptions](MLCGPUHelper, "mtlResourceOptions")}];
      [v14 setNormalizationInverseSqrtVariance:v50];
    }

    movingState2 = [v14 movingState];

    if (movingState2)
    {
      normalizationComputedMean = [v14 normalizationComputedMean];

      if (!normalizationComputedMean)
      {
        v53 = [v94 newBufferWithLength:v45 * objc_msgSend(v14 options:{"batchSize"), +[MLCGPUHelper mtlResourceOptions](MLCGPUHelper, "mtlResourceOptions")}];
        [v14 setNormalizationComputedMean:v53];
      }

      normalizationComputedVariance = [v14 normalizationComputedVariance];

      if (!normalizationComputedVariance)
      {
        v55 = [v94 newBufferWithLength:v45 * objc_msgSend(v14 options:{"batchSize"), +[MLCGPUHelper mtlResourceOptions](MLCGPUHelper, "mtlResourceOptions")}];
        [v14 setNormalizationComputedVariance:v55];
      }
    }
  }

  forwardKernel = [v14 forwardKernel];
  maxTotalThreadsPerThreadgroup = [forwardKernel maxTotalThreadsPerThreadgroup];

  if (maxTotalThreadsPerThreadgroup > v24)
  {
    v58 = 1 << -__clz(v24);
    v59 = (v24 & (v24 - 1)) != 0 ? v58 : v24;
    gradientKernel = [v14 gradientKernel];
    maxTotalThreadsPerThreadgroup = [gradientKernel threadExecutionWidth];

    if (v59 > maxTotalThreadsPerThreadgroup)
    {
      maxTotalThreadsPerThreadgroup = v59;
    }
  }

  v61 = [v95 computeCommandEncoderWithDispatchType:0];
  if (trainingCopy)
  {
    [v14 forwardKernel];
  }

  else
  {
    [v14 forwardStatisticsKernel];
  }
  v62 = ;
  [v61 setComputePipelineState:v62];

  v63 = [deviceMemory objectAtIndexedSubscript:index];
  [v61 setBuffer:v63 offset:0 atIndex:0];

  v64 = [deviceMemory2 objectAtIndexedSubscript:index];
  [v61 setBuffer:v64 offset:0 atIndex:1];

  [v61 setBytes:&v103 length:44 atIndex:2];
  if (v18)
  {
    beta = [v18 beta];
    [v61 setBuffer:beta offset:0 atIndex:3];

    gamma = [v18 gamma];
    [v61 setBuffer:gamma offset:0 atIndex:4];
  }

  v67 = unsignedIntegerValue;
  if (trainingCopy)
  {
    normalizationInputNormalized2 = [v14 normalizationInputNormalized];
    [v61 setBuffer:normalizationInputNormalized2 offset:0 atIndex:5];

    normalizationInverseSqrtVariance2 = [v14 normalizationInverseSqrtVariance];
    [v61 setBuffer:normalizationInverseSqrtVariance2 offset:0 atIndex:6];

    movingState3 = [v14 movingState];

    if (movingState3)
    {
      normalizationComputedMean2 = [v14 normalizationComputedMean];
      [v61 setBuffer:normalizationComputedMean2 offset:0 atIndex:7];

      normalizationComputedVariance2 = [v14 normalizationComputedVariance];
      [v61 setBuffer:normalizationComputedVariance2 offset:0 atIndex:8];
LABEL_37:
    }
  }

  else
  {
    movingState4 = [v14 movingState];

    if (movingState4)
    {
      normalizationComputedVariance2 = [v14 movingState];
      mean = [normalizationComputedVariance2 mean];
      [v61 setBuffer:mean offset:0 atIndex:7];

      variance = [normalizationComputedVariance2 variance];
      [v61 setBuffer:variance offset:0 atIndex:8];

      v67 = unsignedIntegerValue;
      goto LABEL_37;
    }
  }

  [v61 setThreadgroupMemoryLength:GPU_AlignForThreadGroupMemorySize(4 * maxTotalThreadsPerThreadgroup) atIndex:0];
  v101 = v67;
  v102.i64[0] = batchSize;
  v102.i64[1] = 1;
  v99 = maxTotalThreadsPerThreadgroup;
  v100 = vdupq_n_s64(1uLL);
  [v61 dispatchThreadgroups:&v101 threadsPerThreadgroup:&v99];
  if (trainingCopy)
  {
    movingState5 = [v14 movingState];

    if (movingState5)
    {
      v98[1] = v67;
      v98[0] = [v14 batchSize];
      [v14 momentum];
      v98[2] = v77;
      v78 = 0.0;
      if (v24 != 1)
      {
        v78 = v24 / (v24 - 1);
      }

      *&v98[3] = v78;
      instanceNormMovingMeanVarianceKernel = [v14 instanceNormMovingMeanVarianceKernel];
      maxTotalThreadsPerThreadgroup2 = [instanceNormMovingMeanVarianceKernel maxTotalThreadsPerThreadgroup];

      if (maxTotalThreadsPerThreadgroup2 <= v67)
      {
        v81 = maxTotalThreadsPerThreadgroup2;
        v82 = (v67 + maxTotalThreadsPerThreadgroup2 - 1) / maxTotalThreadsPerThreadgroup2;
      }

      else
      {
        v81 = v67;
        v82 = 1;
      }

      instanceNormMovingMeanVarianceKernel2 = [v14 instanceNormMovingMeanVarianceKernel];
      [v61 setComputePipelineState:instanceNormMovingMeanVarianceKernel2];

      normalizationComputedMean3 = [v14 normalizationComputedMean];
      [v61 setBuffer:normalizationComputedMean3 offset:0 atIndex:0];

      normalizationComputedVariance3 = [v14 normalizationComputedVariance];
      [v61 setBuffer:normalizationComputedVariance3 offset:0 atIndex:1];

      [v61 setBytes:v98 length:16 atIndex:2];
      movingState6 = [v14 movingState];
      mean2 = [movingState6 mean];
      [v61 setBuffer:mean2 offset:0 atIndex:3];

      variance2 = [movingState6 variance];
      [v61 setBuffer:variance2 offset:0 atIndex:4];

      v101 = v82;
      v102 = vdupq_n_s64(1uLL);
      v99 = v81;
      v100 = v102;
      [v61 dispatchThreadgroups:&v101 threadsPerThreadgroup:&v99];
    }
  }

  [v61 endEncoding];
}

- (void)dispatchGradientInstanceNormalizationKernel:(id)kernel sourceGradientTensor:(id)tensor resultGradientTensor:(id)gradientTensor deviceIndex:(unint64_t)index
{
  kernelCopy = kernel;
  tensorCopy = tensor;
  gradientTensorCopy = gradientTensor;
  deviceMemory = [tensorCopy deviceMemory];
  v86 = gradientTensorCopy;
  deviceMemory2 = [gradientTensorCopy deviceMemory];
  v87 = kernelCopy;
  v14 = [kernelCopy objectAtIndexedSubscript:index];
  exportableState = [v14 exportableState];
  gpuCommandBufferList = [(MLCDeviceGPU *)self gpuCommandBufferList];
  v92 = [gpuCommandBufferList objectAtIndexedSubscript:index];

  selfCopy = self;
  deviceList = [(MLCDeviceGPU *)self deviceList];
  indexCopy = index;
  v91 = [deviceList objectAtIndexedSubscript:index];

  v103 = 0;
  v101 = 0u;
  v102 = 0u;
  v100 = 12;
  [v14 varianceEpsilon];
  LODWORD(v102) = v17;
  descriptor = [tensorCopy descriptor];
  shape = [descriptor shape];
  v20 = 1;
  v21 = [shape objectAtIndexedSubscript:1];
  unsignedIntegerValue = [v21 unsignedIntegerValue];

  batchSize = [v14 batchSize];
  descriptor2 = [tensorCopy descriptor];
  shape2 = [descriptor2 shape];
  v25 = [shape2 count];

  if (v25 >= 3)
  {
    v26 = 2;
    v20 = 1;
    do
    {
      descriptor3 = [tensorCopy descriptor];
      shape3 = [descriptor3 shape];
      v29 = [shape3 objectAtIndexedSubscript:v26];
      v20 *= [v29 unsignedIntegerValue];

      ++v26;
      descriptor4 = [tensorCopy descriptor];
      shape4 = [descriptor4 shape];
      v32 = [shape4 count];
    }

    while (v26 < v32);
  }

  v90 = deviceMemory2;
  result = [v14 result];
  v33 = v20 * unsignedIntegerValue;
  batchSize2 = [v14 batchSize];
  normalizationGammaGradient = [v14 normalizationGammaGradient];
  if (!normalizationGammaGradient)
  {
    v38 = 4 * unsignedIntegerValue;
    goto LABEL_8;
  }

  v35 = normalizationGammaGradient;
  normalizationGammaGradient2 = [v14 normalizationGammaGradient];
  v37 = [normalizationGammaGradient2 length];
  v38 = 4 * unsignedIntegerValue;
  v39 = 4 * unsignedIntegerValue * [v14 batchSize];

  if (v37 < v39)
  {
LABEL_8:
    v40 = [v91 newBufferWithLength:objc_msgSend(v14 options:{"batchSize") * v38, +[MLCGPUHelper mtlResourceOptions](MLCGPUHelper, "mtlResourceOptions")}];
    v41 = [v91 newBufferWithLength:objc_msgSend(v14 options:{"batchSize") * v38, +[MLCGPUHelper mtlResourceOptions](MLCGPUHelper, "mtlResourceOptions")}];
    [v14 setNormalizationGammaGradient:v40];
    [v14 setNormalizationBetaGradient:v41];
  }

  v42 = [v92 computeCommandEncoderWithDispatchType:0];
  gradientKernel = [v14 gradientKernel];
  maxTotalThreadsPerThreadgroup = [gradientKernel maxTotalThreadsPerThreadgroup];

  if (maxTotalThreadsPerThreadgroup > v20)
  {
    v45 = 1 << -__clz(v20);
    if ((v20 & (v20 - 1)) != 0)
    {
      v46 = v45;
    }

    else
    {
      v46 = v20;
    }

    gradientKernel2 = [v14 gradientKernel];
    threadExecutionWidth = [gradientKernel2 threadExecutionWidth];

    if (v46 <= threadExecutionWidth)
    {
      maxTotalThreadsPerThreadgroup = threadExecutionWidth;
    }

    else
    {
      maxTotalThreadsPerThreadgroup = v46;
    }
  }

  v49 = v90;
  *&v101 = __PAIR64__(v33, v20);
  *(&v101 + 2) = 1.0 / v20;
  HIDWORD(v101) = unsignedIntegerValue;
  neuronDescriptor = [v14 neuronDescriptor];

  v88 = 4 * maxTotalThreadsPerThreadgroup;
  if (neuronDescriptor)
  {
    v100 = 28;
    neuronDescriptor2 = [v14 neuronDescriptor];
    [neuronDescriptor2 a];
    DWORD2(v102) = v52;

    neuronDescriptor3 = [v14 neuronDescriptor];
    [neuronDescriptor3 b];
    HIDWORD(v102) = v54;

    neuronDescriptor4 = [v14 neuronDescriptor];
    LODWORD(v103) = [neuronDescriptor4 activationType];

    if ([v14 recomputeResultTensor])
    {
      v56 = 4 * v33 * batchSize2;
      gpuHeapTemporaryResourceAllocator = [(MLCDeviceGPU *)selfCopy gpuHeapTemporaryResourceAllocator];
      v58 = [gpuHeapTemporaryResourceAllocator objectAtIndexedSubscript:{objc_msgSend(v14, "temporaryHeapIndex")}];
      v59 = [v58 allocateBuffer:v56];

      v49 = v90;
      normalizationRecomputeResultKernel = [v14 normalizationRecomputeResultKernel];
      [v42 setComputePipelineState:normalizationRecomputeResultKernel];

      normalizationInputNormalized = [v14 normalizationInputNormalized];
      [v42 setBuffer:normalizationInputNormalized offset:0 atIndex:0];

      [v42 setBuffer:v59 offset:0 atIndex:1];
      [v42 setBytes:&v100 length:44 atIndex:2];
      beta = [exportableState beta];
      [v42 setBuffer:beta offset:0 atIndex:3];

      gamma = [exportableState gamma];
      [v42 setBuffer:gamma offset:0 atIndex:4];

      [v42 setThreadgroupMemoryLength:GPU_AlignForThreadGroupMemorySize(v88) atIndex:0];
      v98 = unsignedIntegerValue;
      v99.i64[0] = batchSize;
      v99.i64[1] = 1;
      v96 = maxTotalThreadsPerThreadgroup;
      v97 = vdupq_n_s64(1uLL);
      [v42 dispatchThreadgroups:&v98 threadsPerThreadgroup:&v96];
      result = v59;
    }
  }

  gradientKernel3 = [v14 gradientKernel];
  [v42 setComputePipelineState:gradientKernel3];

  v65 = [deviceMemory objectAtIndexedSubscript:indexCopy];
  [v42 setBuffer:v65 offset:0 atIndex:0];

  v66 = [v49 objectAtIndexedSubscript:indexCopy];
  [v42 setBuffer:v66 offset:0 atIndex:1];

  [v42 setBytes:&v100 length:44 atIndex:2];
  beta2 = [exportableState beta];
  [v42 setBuffer:beta2 offset:0 atIndex:3];

  gamma2 = [exportableState gamma];
  [v42 setBuffer:gamma2 offset:0 atIndex:4];

  normalizationInputNormalized2 = [v14 normalizationInputNormalized];
  [v42 setBuffer:normalizationInputNormalized2 offset:0 atIndex:5];

  normalizationInverseSqrtVariance = [v14 normalizationInverseSqrtVariance];
  [v42 setBuffer:normalizationInverseSqrtVariance offset:0 atIndex:6];

  normalizationBetaGradient = [v14 normalizationBetaGradient];
  [v42 setBuffer:normalizationBetaGradient offset:0 atIndex:7];

  normalizationGammaGradient3 = [v14 normalizationGammaGradient];
  [v42 setBuffer:normalizationGammaGradient3 offset:0 atIndex:8];

  neuronDescriptor5 = [v14 neuronDescriptor];

  if (neuronDescriptor5)
  {
    [v42 setBuffer:result offset:0 atIndex:9];
  }

  else
  {
    v74 = [deviceMemory objectAtIndexedSubscript:indexCopy];
    [v42 setBuffer:v74 offset:0 atIndex:9];
  }

  [v42 setThreadgroupMemoryLength:GPU_AlignForThreadGroupMemorySize(v88) atIndex:0];
  v98 = unsignedIntegerValue;
  v99.i64[0] = batchSize;
  v75 = 1;
  v99.i64[1] = 1;
  v96 = maxTotalThreadsPerThreadgroup;
  v97 = vdupq_n_s64(1uLL);
  [v42 dispatchThreadgroups:&v98 threadsPerThreadgroup:&v96];
  v95[0] = unsignedIntegerValue;
  v95[1] = [v14 batchSize];
  normalizationSumBetaGammaDeltaKernel = [v14 normalizationSumBetaGammaDeltaKernel];
  maxTotalThreadsPerThreadgroup2 = [normalizationSumBetaGammaDeltaKernel maxTotalThreadsPerThreadgroup];

  if (maxTotalThreadsPerThreadgroup2 < unsignedIntegerValue)
  {
    v78 = unsignedIntegerValue + maxTotalThreadsPerThreadgroup2 - 1;
    unsignedIntegerValue = maxTotalThreadsPerThreadgroup2;
    v75 = v78 / maxTotalThreadsPerThreadgroup2;
  }

  normalizationSumBetaGammaDeltaKernel2 = [v14 normalizationSumBetaGammaDeltaKernel];
  [v42 setComputePipelineState:normalizationSumBetaGammaDeltaKernel2];

  normalizationBetaGradient2 = [v14 normalizationBetaGradient];
  [v42 setBuffer:normalizationBetaGradient2 offset:0 atIndex:0];

  normalizationGammaGradient4 = [v14 normalizationGammaGradient];
  [v42 setBuffer:normalizationGammaGradient4 offset:0 atIndex:1];

  [v42 setBytes:v95 length:8 atIndex:2];
  v98 = v75;
  v99 = vdupq_n_s64(1uLL);
  v96 = unsignedIntegerValue;
  v97 = v99;
  [v42 dispatchThreadgroups:&v98 threadsPerThreadgroup:&v96];
  [v42 endEncoding];
}

- (void)dispatchForwardBatchNormalizationKernel:(id)kernel sourceTensor:(id)tensor resultTensor:(id)resultTensor deviceIndex:(unint64_t)index forTraining:(BOOL)training
{
  trainingCopy = training;
  kernelCopy = kernel;
  tensorCopy = tensor;
  resultTensorCopy = resultTensor;
  deviceMemory = [tensorCopy deviceMemory];
  v88 = resultTensorCopy;
  deviceMemory2 = [resultTensorCopy deviceMemory];
  v89 = kernelCopy;
  v14 = [kernelCopy objectAtIndexedSubscript:index];
  movingState = [v14 movingState];
  exportableState = [v14 exportableState];
  gpuCommandBufferList = [(MLCDeviceGPU *)self gpuCommandBufferList];
  v91 = [gpuCommandBufferList objectAtIndexedSubscript:index];

  deviceList = [(MLCDeviceGPU *)self deviceList];
  v90 = [deviceList objectAtIndexedSubscript:index];

  v100 = 0u;
  v99 = 0u;
  v98 = 0u;
  v84 = exportableState;
  if (exportableState)
  {
    v18 = 12;
  }

  else
  {
    v18 = 0;
  }

  v97 = v18;
  [v14 varianceEpsilon];
  DWORD1(v99) = v19;
  [v14 momentum];
  DWORD2(v99) = v20;
  descriptor = [tensorCopy descriptor];
  shape = [descriptor shape];
  v23 = 1;
  v24 = [shape objectAtIndexedSubscript:1];
  unsignedIntegerValue = [v24 unsignedIntegerValue];

  batchSize = [v14 batchSize];
  descriptor2 = [tensorCopy descriptor];
  shape2 = [descriptor2 shape];
  v28 = [shape2 count];

  if (v28 >= 3)
  {
    v29 = 2;
    v23 = 1;
    do
    {
      descriptor3 = [tensorCopy descriptor];
      shape3 = [descriptor3 shape];
      v32 = [shape3 objectAtIndexedSubscript:v29];
      v23 *= [v32 unsignedIntegerValue];

      ++v29;
      descriptor4 = [tensorCopy descriptor];
      shape4 = [descriptor4 shape];
      v35 = [shape4 count];
    }

    while (v29 < v35);
  }

  v36 = [v14 batchSize] * v23;
  LODWORD(v98) = v23;
  DWORD1(v98) = v23 * unsignedIntegerValue;
  *(&v98 + 2) = 1.0 / v36;
  HIDWORD(v98) = unsignedIntegerValue;
  LODWORD(v99) = [v14 batchSize];
  v37 = 0.0;
  if (v36 != 1)
  {
    v37 = v36 / (v36 - 1);
  }

  *(&v99 + 3) = v37;
  neuronDescriptor = [v14 neuronDescriptor];

  if (neuronDescriptor)
  {
    v18 |= 0x10u;
    v97 = v18;
    neuronDescriptor2 = [v14 neuronDescriptor];
    [neuronDescriptor2 a];
    LODWORD(v100) = v40;

    neuronDescriptor3 = [v14 neuronDescriptor];
    [neuronDescriptor3 b];
    DWORD1(v100) = v42;

    neuronDescriptor4 = [v14 neuronDescriptor];
    DWORD2(v100) = [neuronDescriptor4 activationType];
  }

  batchSize2 = [v14 batchSize];
  if (trainingCopy)
  {
    v45 = batchSize2;
    normalizationInputNormalized = [v14 normalizationInputNormalized];

    if (!normalizationInputNormalized)
    {
      v47 = [v90 newBufferWithLength:4 * unsignedIntegerValue * v23 * v45 options:{+[MLCGPUHelper mtlResourceOptions](MLCGPUHelper, "mtlResourceOptions")}];
      [v14 setNormalizationInputNormalized:v47];
    }

    normalizationComputedMean = [v14 normalizationComputedMean];

    if (!normalizationComputedMean)
    {
      v49 = [v90 newBufferWithLength:4 * unsignedIntegerValue options:{+[MLCGPUHelper mtlResourceOptions](MLCGPUHelper, "mtlResourceOptions")}];
      [v14 setNormalizationComputedMean:v49];
    }

    normalizationComputedVariance = [v14 normalizationComputedVariance];

    if (!normalizationComputedVariance)
    {
      v51 = [v90 newBufferWithLength:4 * unsignedIntegerValue options:{+[MLCGPUHelper mtlResourceOptions](MLCGPUHelper, "mtlResourceOptions")}];
      [v14 setNormalizationComputedVariance:v51];
    }
  }

  v52 = [v91 computeCommandEncoderWithDispatchType:0];
  forwardKernel = [v14 forwardKernel];
  maxTotalThreadsPerThreadgroup = [forwardKernel maxTotalThreadsPerThreadgroup];

  if (maxTotalThreadsPerThreadgroup > v23)
  {
    v55 = 1 << -__clz(v23);
    if ((v23 & (v23 - 1)) != 0)
    {
      v23 = v55;
    }

    gradientKernel = [v14 gradientKernel];
    threadExecutionWidth = [gradientKernel threadExecutionWidth];

    if (v23 <= threadExecutionWidth)
    {
      maxTotalThreadsPerThreadgroup = threadExecutionWidth;
    }

    else
    {
      maxTotalThreadsPerThreadgroup = v23;
    }
  }

  if (trainingCopy)
  {
    v97 = v18 | 3;
    batchNormMeanKernel = [v14 batchNormMeanKernel];
    [v52 setComputePipelineState:batchNormMeanKernel];

    v59 = deviceMemory;
    v60 = [deviceMemory objectAtIndexedSubscript:index];
    [v52 setBuffer:v60 offset:0 atIndex:0];

    normalizationComputedMean2 = [v14 normalizationComputedMean];
    [v52 setBuffer:normalizationComputedMean2 offset:0 atIndex:1];

    v62 = movingState;
    mean = [movingState mean];
    [v52 setBuffer:mean offset:0 atIndex:2];

    [v52 setBytes:&v97 length:52 atIndex:3];
    [v52 setThreadgroupMemoryLength:GPU_AlignForThreadGroupMemorySize(4 * maxTotalThreadsPerThreadgroup) atIndex:0];
    v95 = unsignedIntegerValue;
    v82 = vdupq_n_s64(1uLL);
    v96 = v82;
    v93 = maxTotalThreadsPerThreadgroup;
    v94 = v82;
    [v52 dispatchThreadgroups:&v95 threadsPerThreadgroup:&v93];
    batchNormVarianceKernel = [v14 batchNormVarianceKernel];
    [v52 setComputePipelineState:batchNormVarianceKernel];

    v65 = [deviceMemory objectAtIndexedSubscript:index];
    [v52 setBuffer:v65 offset:0 atIndex:0];

    normalizationComputedMean3 = [v14 normalizationComputedMean];
    [v52 setBuffer:normalizationComputedMean3 offset:0 atIndex:1];

    normalizationComputedVariance2 = [v14 normalizationComputedVariance];
    [v52 setBuffer:normalizationComputedVariance2 offset:0 atIndex:2];

    variance = [movingState variance];
    [v52 setBuffer:variance offset:0 atIndex:3];

    [v52 setBytes:&v97 length:52 atIndex:4];
    [v52 setThreadgroupMemoryLength:GPU_AlignForThreadGroupMemorySize(4 * maxTotalThreadsPerThreadgroup) atIndex:0];
    v95 = unsignedIntegerValue;
    v96 = v82;
    v93 = maxTotalThreadsPerThreadgroup;
    v94 = v82;
    [v52 dispatchThreadgroups:&v95 threadsPerThreadgroup:&v93];
    forwardKernel2 = [v14 forwardKernel];
    [v52 setComputePipelineState:forwardKernel2];
  }

  else
  {
    forwardStatisticsKernel = [v14 forwardStatisticsKernel];
    [v52 setComputePipelineState:forwardStatisticsKernel];

    v59 = deviceMemory;
    v62 = movingState;
  }

  v71 = [v59 objectAtIndexedSubscript:index];
  [v52 setBuffer:v71 offset:0 atIndex:0];

  v72 = [deviceMemory2 objectAtIndexedSubscript:index];
  [v52 setBuffer:v72 offset:0 atIndex:1];

  [v52 setBytes:&v97 length:52 atIndex:2];
  if (v84)
  {
    beta = [v84 beta];
    [v52 setBuffer:beta offset:0 atIndex:3];

    gamma = [v84 gamma];
    [v52 setBuffer:gamma offset:0 atIndex:4];
  }

  if (trainingCopy)
  {
    normalizationComputedMean4 = [v14 normalizationComputedMean];
    [v52 setBuffer:normalizationComputedMean4 offset:0 atIndex:5];

    normalizationComputedVariance3 = [v14 normalizationComputedVariance];
    [v52 setBuffer:normalizationComputedVariance3 offset:0 atIndex:6];

    normalizationInputNormalized2 = [v14 normalizationInputNormalized];
    v78 = v52;
    v79 = normalizationInputNormalized2;
    v80 = 7;
  }

  else
  {
    mean2 = [v62 mean];
    [v52 setBuffer:mean2 offset:0 atIndex:5];

    normalizationInputNormalized2 = [v62 variance];
    v78 = v52;
    v79 = normalizationInputNormalized2;
    v80 = 6;
  }

  [v78 setBuffer:v79 offset:0 atIndex:v80];

  v95 = unsignedIntegerValue;
  v96.i64[0] = batchSize;
  v96.i64[1] = 1;
  v93 = maxTotalThreadsPerThreadgroup;
  v94 = vdupq_n_s64(1uLL);
  [v52 dispatchThreadgroups:&v95 threadsPerThreadgroup:&v93];
  [v52 endEncoding];
}

- (void)dispatchGradientBatchNormalizationKernel:(id)kernel sourceGradientTensor:(id)tensor resultGradientTensor:(id)gradientTensor deviceIndex:(unint64_t)index
{
  kernelCopy = kernel;
  tensorCopy = tensor;
  gradientTensorCopy = gradientTensor;
  deviceMemory = [tensorCopy deviceMemory];
  v98 = gradientTensorCopy;
  deviceMemory2 = [gradientTensorCopy deviceMemory];
  v99 = kernelCopy;
  v14 = [kernelCopy objectAtIndexedSubscript:index];
  gpuCommandBufferList = [(MLCDeviceGPU *)self gpuCommandBufferList];
  v16 = [gpuCommandBufferList objectAtIndexedSubscript:index];

  selfCopy = self;
  deviceList = [(MLCDeviceGPU *)self deviceList];
  indexCopy = index;
  v100 = [deviceList objectAtIndexedSubscript:index];

  v114 = 0u;
  v113 = 0u;
  v112 = 0u;
  v111 = 12;
  [v14 varianceEpsilon];
  DWORD1(v113) = v18;
  [v14 momentum];
  DWORD2(v113) = v19;
  descriptor = [tensorCopy descriptor];
  shape = [descriptor shape];
  v22 = 1;
  v23 = [shape objectAtIndexedSubscript:1];
  unsignedIntegerValue = [v23 unsignedIntegerValue];

  batchSize = [v14 batchSize];
  descriptor2 = [tensorCopy descriptor];
  shape2 = [descriptor2 shape];
  v27 = [shape2 count];

  if (v27 >= 3)
  {
    v28 = 2;
    v22 = 1;
    do
    {
      descriptor3 = [tensorCopy descriptor];
      shape3 = [descriptor3 shape];
      v31 = [shape3 objectAtIndexedSubscript:v28];
      v22 *= [v31 unsignedIntegerValue];

      ++v28;
      descriptor4 = [tensorCopy descriptor];
      shape4 = [descriptor4 shape];
      v34 = [shape4 count];
    }

    while (v28 < v34);
  }

  v97 = deviceMemory;
  v35 = [v14 batchSize] * v22;
  v96 = v16;
  v36 = [v16 computeCommandEncoderWithDispatchType:0];
  exportableState = [v14 exportableState];
  LODWORD(v112) = v22;
  DWORD1(v112) = v22 * unsignedIntegerValue;
  v94 = v22 * unsignedIntegerValue;
  *(&v112 + 2) = 1.0 / v35;
  HIDWORD(v112) = unsignedIntegerValue;
  LODWORD(v113) = [v14 batchSize];
  result = [v14 result];
  batchSize2 = [v14 batchSize];
  normalizationGammaGradient = [v14 normalizationGammaGradient];
  if (!normalizationGammaGradient)
  {
    v41 = 4 * unsignedIntegerValue;
    goto LABEL_8;
  }

  v38 = normalizationGammaGradient;
  normalizationGammaGradient2 = [v14 normalizationGammaGradient];
  v40 = [normalizationGammaGradient2 length];
  v41 = 4 * unsignedIntegerValue;
  v42 = 4 * unsignedIntegerValue * [v14 batchSize];

  if (v40 < v42)
  {
LABEL_8:
    v43 = [v100 newBufferWithLength:objc_msgSend(v14 options:{"batchSize") * v41, +[MLCGPUHelper mtlResourceOptions](MLCGPUHelper, "mtlResourceOptions")}];
    v44 = [v100 newBufferWithLength:objc_msgSend(v14 options:{"batchSize") * v41, +[MLCGPUHelper mtlResourceOptions](MLCGPUHelper, "mtlResourceOptions")}];
    [v14 setNormalizationGammaGradient:v43];
    [v14 setNormalizationBetaGradient:v44];
  }

  gradientKernel = [v14 gradientKernel];
  maxTotalThreadsPerThreadgroup = [gradientKernel maxTotalThreadsPerThreadgroup];

  if (maxTotalThreadsPerThreadgroup > v22)
  {
    v47 = 1 << -__clz(v22);
    if ((v22 & (v22 - 1)) != 0)
    {
      v22 = v47;
    }

    gradientKernel2 = [v14 gradientKernel];
    threadExecutionWidth = [gradientKernel2 threadExecutionWidth];

    if (v22 <= threadExecutionWidth)
    {
      maxTotalThreadsPerThreadgroup = threadExecutionWidth;
    }

    else
    {
      maxTotalThreadsPerThreadgroup = v22;
    }
  }

  neuronDescriptor = [v14 neuronDescriptor];

  if (neuronDescriptor)
  {
    v111 = 28;
    neuronDescriptor2 = [v14 neuronDescriptor];
    [neuronDescriptor2 a];
    LODWORD(v114) = v52;

    neuronDescriptor3 = [v14 neuronDescriptor];
    [neuronDescriptor3 b];
    DWORD1(v114) = v54;

    neuronDescriptor4 = [v14 neuronDescriptor];
    DWORD2(v114) = [neuronDescriptor4 activationType];

    if ([v14 recomputeResultTensor])
    {
      gpuHeapTemporaryResourceAllocator = [(MLCDeviceGPU *)selfCopy gpuHeapTemporaryResourceAllocator];
      v57 = [gpuHeapTemporaryResourceAllocator objectAtIndexedSubscript:{objc_msgSend(v14, "temporaryHeapIndex")}];
      v58 = [v57 allocateBuffer:4 * v94 * batchSize2];

      normalizationRecomputeResultKernel = [v14 normalizationRecomputeResultKernel];
      [v36 setComputePipelineState:normalizationRecomputeResultKernel];

      normalizationInputNormalized = [v14 normalizationInputNormalized];
      [v36 setBuffer:normalizationInputNormalized offset:0 atIndex:0];

      [v36 setBuffer:v58 offset:0 atIndex:1];
      [v36 setBytes:&v111 length:52 atIndex:2];
      beta = [exportableState beta];
      [v36 setBuffer:beta offset:0 atIndex:3];

      gamma = [exportableState gamma];
      [v36 setBuffer:gamma offset:0 atIndex:4];

      v109 = unsignedIntegerValue;
      v110.i64[0] = batchSize;
      v110.i64[1] = 1;
      v107 = maxTotalThreadsPerThreadgroup;
      v108 = vdupq_n_s64(1uLL);
      [v36 dispatchThreadgroups:&v109 threadsPerThreadgroup:&v107];
      result = v58;
    }
  }

  batchNormBetaGammaDeltaKernel = [v14 batchNormBetaGammaDeltaKernel];
  [v36 setComputePipelineState:batchNormBetaGammaDeltaKernel];

  v64 = [v97 objectAtIndexedSubscript:indexCopy];
  [v36 setBuffer:v64 offset:0 atIndex:0];

  v65 = [deviceMemory2 objectAtIndexedSubscript:indexCopy];
  [v36 setBuffer:v65 offset:0 atIndex:1];

  [v36 setBytes:&v111 length:52 atIndex:2];
  beta2 = [exportableState beta];
  [v36 setBuffer:beta2 offset:0 atIndex:3];

  gamma2 = [exportableState gamma];
  [v36 setBuffer:gamma2 offset:0 atIndex:4];

  normalizationInputNormalized2 = [v14 normalizationInputNormalized];
  [v36 setBuffer:normalizationInputNormalized2 offset:0 atIndex:5];

  normalizationComputedVariance = [v14 normalizationComputedVariance];
  [v36 setBuffer:normalizationComputedVariance offset:0 atIndex:6];

  normalizationBetaGradient = [v14 normalizationBetaGradient];
  [v36 setBuffer:normalizationBetaGradient offset:0 atIndex:7];

  normalizationGammaGradient3 = [v14 normalizationGammaGradient];
  [v36 setBuffer:normalizationGammaGradient3 offset:0 atIndex:8];

  neuronDescriptor5 = [v14 neuronDescriptor];

  if (neuronDescriptor5)
  {
    [v36 setBuffer:result offset:0 atIndex:9];
  }

  else
  {
    v73 = [v97 objectAtIndexedSubscript:indexCopy];
    [v36 setBuffer:v73 offset:0 atIndex:9];
  }

  [v36 setThreadgroupMemoryLength:GPU_AlignForThreadGroupMemorySize(4 * maxTotalThreadsPerThreadgroup) atIndex:0];
  v109 = unsignedIntegerValue;
  v110.i64[0] = batchSize;
  v74 = 1;
  v110.i64[1] = 1;
  v107 = maxTotalThreadsPerThreadgroup;
  v108 = vdupq_n_s64(1uLL);
  [v36 dispatchThreadgroups:&v109 threadsPerThreadgroup:&v107];
  v106[0] = unsignedIntegerValue;
  v106[1] = [v14 batchSize];
  normalizationSumBetaGammaDeltaKernel = [v14 normalizationSumBetaGammaDeltaKernel];
  maxTotalThreadsPerThreadgroup2 = [normalizationSumBetaGammaDeltaKernel maxTotalThreadsPerThreadgroup];

  v77 = unsignedIntegerValue;
  if (maxTotalThreadsPerThreadgroup2 < unsignedIntegerValue)
  {
    v77 = maxTotalThreadsPerThreadgroup2;
    v74 = (unsignedIntegerValue + maxTotalThreadsPerThreadgroup2 - 1) / maxTotalThreadsPerThreadgroup2;
  }

  normalizationSumBetaGammaDeltaKernel2 = [v14 normalizationSumBetaGammaDeltaKernel];
  [v36 setComputePipelineState:normalizationSumBetaGammaDeltaKernel2];

  normalizationBetaGradient2 = [v14 normalizationBetaGradient];
  [v36 setBuffer:normalizationBetaGradient2 offset:0 atIndex:0];

  normalizationGammaGradient4 = [v14 normalizationGammaGradient];
  [v36 setBuffer:normalizationGammaGradient4 offset:0 atIndex:1];

  [v36 setBytes:v106 length:8 atIndex:2];
  v109 = v74;
  v110 = vdupq_n_s64(1uLL);
  v107 = v77;
  v108 = v110;
  [v36 dispatchThreadgroups:&v109 threadsPerThreadgroup:&v107];
  gradientKernel3 = [v14 gradientKernel];
  [v36 setComputePipelineState:gradientKernel3];

  v82 = [v97 objectAtIndexedSubscript:indexCopy];
  [v36 setBuffer:v82 offset:0 atIndex:0];

  v83 = [deviceMemory2 objectAtIndexedSubscript:indexCopy];
  [v36 setBuffer:v83 offset:0 atIndex:1];

  [v36 setBytes:&v111 length:52 atIndex:2];
  beta3 = [exportableState beta];
  [v36 setBuffer:beta3 offset:0 atIndex:3];

  gamma3 = [exportableState gamma];
  [v36 setBuffer:gamma3 offset:0 atIndex:4];

  normalizationInputNormalized3 = [v14 normalizationInputNormalized];
  [v36 setBuffer:normalizationInputNormalized3 offset:0 atIndex:5];

  normalizationComputedVariance2 = [v14 normalizationComputedVariance];
  [v36 setBuffer:normalizationComputedVariance2 offset:0 atIndex:6];

  normalizationBetaGradient3 = [v14 normalizationBetaGradient];
  [v36 setBuffer:normalizationBetaGradient3 offset:0 atIndex:7];

  normalizationGammaGradient5 = [v14 normalizationGammaGradient];
  [v36 setBuffer:normalizationGammaGradient5 offset:0 atIndex:8];

  neuronDescriptor6 = [v14 neuronDescriptor];

  if (neuronDescriptor6)
  {
    v91 = result;
    [v36 setBuffer:result offset:0 atIndex:9];
  }

  else
  {
    v92 = [v97 objectAtIndexedSubscript:indexCopy];
    [v36 setBuffer:v92 offset:0 atIndex:9];

    v91 = result;
  }

  v109 = unsignedIntegerValue;
  v110.i64[0] = batchSize;
  v110.i64[1] = 1;
  v107 = maxTotalThreadsPerThreadgroup;
  v108 = vdupq_n_s64(1uLL);
  [v36 dispatchThreadgroups:&v109 threadsPerThreadgroup:&v107];
  [v36 endEncoding];
}

- (void)dispatchForwardGroupNormalizationKernel:(id)kernel sourceTensor:(id)tensor resultTensor:(id)resultTensor deviceIndex:(unint64_t)index forTraining:(BOOL)training
{
  trainingCopy = training;
  kernelCopy = kernel;
  tensorCopy = tensor;
  resultTensorCopy = resultTensor;
  deviceMemory = [tensorCopy deviceMemory];
  v62 = resultTensorCopy;
  deviceMemory2 = [resultTensorCopy deviceMemory];
  v63 = kernelCopy;
  v14 = [kernelCopy objectAtIndexedSubscript:index];
  exportableState = [v14 exportableState];
  gpuCommandBufferList = [(MLCDeviceGPU *)self gpuCommandBufferList];
  v66 = [gpuCommandBufferList objectAtIndexedSubscript:index];

  deviceList = [(MLCDeviceGPU *)self deviceList];
  v64 = [deviceList objectAtIndexedSubscript:index];

  descriptor = [tensorCopy descriptor];
  shape = [descriptor shape];
  v20 = 1;
  v21 = [shape objectAtIndexedSubscript:1];
  unsignedIntegerValue = [v21 unsignedIntegerValue];

  groupCount = [v14 groupCount];
  batchSize = [v14 batchSize];
  descriptor2 = [tensorCopy descriptor];
  shape2 = [descriptor2 shape];
  v25 = [shape2 count];

  if (v25 >= 3)
  {
    v26 = 2;
    v20 = 1;
    do
    {
      descriptor3 = [tensorCopy descriptor];
      shape3 = [descriptor3 shape];
      v29 = [shape3 objectAtIndexedSubscript:v26];
      v20 *= [v29 unsignedIntegerValue];

      ++v26;
      descriptor4 = [tensorCopy descriptor];
      shape4 = [descriptor4 shape];
      v32 = [shape4 count];
    }

    while (v26 < v32);
  }

  v73 = 0;
  v70[0] = trainingCopy;
  v71 = unsignedIntegerValue / [v14 groupCount];
  [v14 varianceEpsilon];
  v75 = v33;
  groupCount2 = [v14 groupCount];
  v74 = 1.0 / (v20 * v71);
  v70[1] = v20;
  v70[2] = v20 * unsignedIntegerValue;
  batchSize2 = [v14 batchSize];
  v35 = exportableState;
  if (trainingCopy)
  {
    v36 = batchSize2;
    v37 = 4 * unsignedIntegerValue;
    batchSize3 = [v14 batchSize];
    normalizationInputNormalized = [v14 normalizationInputNormalized];

    if (!normalizationInputNormalized)
    {
      v40 = [v64 newBufferWithLength:v37 * v20 * v36 options:{+[MLCGPUHelper mtlResourceOptions](MLCGPUHelper, "mtlResourceOptions")}];
      [v14 setNormalizationInputNormalized:v40];
    }

    normalizationInverseSqrtVariance = [v14 normalizationInverseSqrtVariance];

    if (!normalizationInverseSqrtVariance)
    {
      v42 = [v64 newBufferWithLength:v37 * batchSize3 options:{+[MLCGPUHelper mtlResourceOptions](MLCGPUHelper, "mtlResourceOptions")}];
      [v14 setNormalizationInverseSqrtVariance:v42];
    }
  }

  forwardKernel = [v14 forwardKernel];
  maxTotalThreadsPerThreadgroup = [forwardKernel maxTotalThreadsPerThreadgroup];

  if (maxTotalThreadsPerThreadgroup > v20)
  {
    v45 = 1 << -__clz(v20);
    if ((v20 & (v20 - 1)) != 0)
    {
      v46 = v45;
    }

    else
    {
      v46 = v20;
    }

    forwardKernel2 = [v14 forwardKernel];
    threadExecutionWidth = [forwardKernel2 threadExecutionWidth];

    if (v46 <= threadExecutionWidth)
    {
      maxTotalThreadsPerThreadgroup = threadExecutionWidth;
    }

    else
    {
      maxTotalThreadsPerThreadgroup = v46;
    }
  }

  v49 = [v66 computeCommandEncoderWithDispatchType:0];
  forwardKernel3 = [v14 forwardKernel];
  [v49 setComputePipelineState:forwardKernel3];

  v51 = [deviceMemory objectAtIndexedSubscript:index];
  [v49 setBuffer:v51 offset:0 atIndex:0];

  v52 = [deviceMemory2 objectAtIndexedSubscript:index];
  [v49 setBuffer:v52 offset:0 atIndex:1];

  [v49 setBytes:v70 length:32 atIndex:2];
  beta = [exportableState beta];
  [v49 setBuffer:beta offset:0 atIndex:3];

  gamma = [exportableState gamma];
  [v49 setBuffer:gamma offset:0 atIndex:4];

  if (trainingCopy)
  {
    normalizationInputNormalized2 = [v14 normalizationInputNormalized];
    [v49 setBuffer:normalizationInputNormalized2 offset:0 atIndex:5];

    [v14 normalizationInverseSqrtVariance];
  }

  else
  {
    v56 = [deviceMemory objectAtIndexedSubscript:index];
    [v49 setBuffer:v56 offset:0 atIndex:5];

    [deviceMemory objectAtIndexedSubscript:index];
  }
  v57 = ;
  [v49 setBuffer:v57 offset:0 atIndex:6];

  [v49 setThreadgroupMemoryLength:GPU_AlignForThreadGroupMemorySize(4 * maxTotalThreadsPerThreadgroup) atIndex:0];
  v69[0] = groupCount;
  v69[1] = batchSize;
  v69[2] = 1;
  v67 = maxTotalThreadsPerThreadgroup;
  v68 = vdupq_n_s64(1uLL);
  [v49 dispatchThreadgroups:v69 threadsPerThreadgroup:&v67];
  [v49 endEncoding];
}

- (void)dispatchGradientGroupNormalizationKernel:(id)kernel sourceGradientTensor:(id)tensor resultGradientTensor:(id)gradientTensor deviceIndex:(unint64_t)index
{
  kernelCopy = kernel;
  tensorCopy = tensor;
  gradientTensorCopy = gradientTensor;
  deviceMemory = [tensorCopy deviceMemory];
  v70 = gradientTensorCopy;
  [gradientTensorCopy deviceMemory];
  v68 = v67 = kernelCopy;
  v13 = [kernelCopy objectAtIndexedSubscript:index];
  exportableState = [v13 exportableState];
  gpuCommandBufferList = [(MLCDeviceGPU *)self gpuCommandBufferList];
  v15 = [gpuCommandBufferList objectAtIndexedSubscript:index];

  deviceList = [(MLCDeviceGPU *)self deviceList];
  indexCopy = index;
  v71 = [deviceList objectAtIndexedSubscript:index];

  descriptor = [tensorCopy descriptor];
  shape = [descriptor shape];
  v19 = 1;
  v20 = [shape objectAtIndexedSubscript:1];
  unsignedIntegerValue = [v20 unsignedIntegerValue];

  groupCount = [v13 groupCount];
  batchSize = [v13 batchSize];
  descriptor2 = [tensorCopy descriptor];
  shape2 = [descriptor2 shape];
  v24 = [shape2 count];

  if (v24 >= 3)
  {
    v25 = 2;
    v19 = 1;
    do
    {
      descriptor3 = [tensorCopy descriptor];
      shape3 = [descriptor3 shape];
      v28 = [shape3 objectAtIndexedSubscript:v25];
      v19 *= [v28 unsignedIntegerValue];

      ++v25;
      descriptor4 = [tensorCopy descriptor];
      shape4 = [descriptor4 shape];
      v31 = [shape4 count];
    }

    while (v25 < v31);
  }

  normalizationGammaGradient = [v13 normalizationGammaGradient];
  if (normalizationGammaGradient)
  {
    v33 = normalizationGammaGradient;
    normalizationGammaGradient2 = [v13 normalizationGammaGradient];
    v35 = [normalizationGammaGradient2 length];
    v36 = 4 * unsignedIntegerValue;
    v37 = 4 * unsignedIntegerValue * [v13 batchSize];

    if (v35 >= v37)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v36 = 4 * unsignedIntegerValue;
  }

  v38 = [v71 newBufferWithLength:objc_msgSend(v13 options:{"batchSize") * v36, +[MLCGPUHelper mtlResourceOptions](MLCGPUHelper, "mtlResourceOptions")}];
  v39 = [v71 newBufferWithLength:objc_msgSend(v13 options:{"batchSize") * v36, +[MLCGPUHelper mtlResourceOptions](MLCGPUHelper, "mtlResourceOptions")}];
  [v13 setNormalizationGammaGradient:v38];
  [v13 setNormalizationBetaGradient:v39];

LABEL_9:
  v78[0] = 1;
  v81 = unsignedIntegerValue;
  v79 = unsignedIntegerValue / [v13 groupCount];
  [v13 varianceEpsilon];
  v83 = v40;
  groupCount2 = [v13 groupCount];
  v82 = 1.0 / (v19 * v79);
  v78[1] = v19;
  v78[2] = v19 * unsignedIntegerValue;
  gradientKernel = [v13 gradientKernel];
  maxTotalThreadsPerThreadgroup = [gradientKernel maxTotalThreadsPerThreadgroup];

  if (maxTotalThreadsPerThreadgroup > v19)
  {
    v43 = 1 << -__clz(v19);
    v44 = (v19 & (v19 - 1)) != 0 ? v43 : v19;
    gradientKernel2 = [v13 gradientKernel];
    maxTotalThreadsPerThreadgroup = [gradientKernel2 threadExecutionWidth];

    if (v44 > maxTotalThreadsPerThreadgroup)
    {
      maxTotalThreadsPerThreadgroup = v44;
    }
  }

  v66 = v15;
  v46 = [v15 computeCommandEncoderWithDispatchType:0];
  gradientKernel3 = [v13 gradientKernel];
  [v46 setComputePipelineState:gradientKernel3];

  v48 = [deviceMemory objectAtIndexedSubscript:indexCopy];
  [v46 setBuffer:v48 offset:0 atIndex:0];

  v49 = [v68 objectAtIndexedSubscript:indexCopy];
  v50 = 1;
  [v46 setBuffer:v49 offset:0 atIndex:1];

  [v46 setBytes:v78 length:32 atIndex:2];
  beta = [exportableState beta];
  [v46 setBuffer:beta offset:0 atIndex:3];

  gamma = [exportableState gamma];
  [v46 setBuffer:gamma offset:0 atIndex:4];

  normalizationInputNormalized = [v13 normalizationInputNormalized];
  [v46 setBuffer:normalizationInputNormalized offset:0 atIndex:5];

  normalizationInverseSqrtVariance = [v13 normalizationInverseSqrtVariance];
  [v46 setBuffer:normalizationInverseSqrtVariance offset:0 atIndex:6];

  normalizationBetaGradient = [v13 normalizationBetaGradient];
  [v46 setBuffer:normalizationBetaGradient offset:0 atIndex:7];

  normalizationGammaGradient3 = [v13 normalizationGammaGradient];
  [v46 setBuffer:normalizationGammaGradient3 offset:0 atIndex:8];

  [v46 setThreadgroupMemoryLength:GPU_AlignForThreadGroupMemorySize(4 * maxTotalThreadsPerThreadgroup) atIndex:0];
  v76 = groupCount;
  v77.i64[0] = batchSize;
  v77.i64[1] = 1;
  v74 = maxTotalThreadsPerThreadgroup;
  v75 = vdupq_n_s64(1uLL);
  [v46 dispatchThreadgroups:&v76 threadsPerThreadgroup:&v74];
  v73[0] = unsignedIntegerValue;
  v73[1] = [v13 batchSize];
  normalizationSumBetaGammaDeltaKernel = [v13 normalizationSumBetaGammaDeltaKernel];
  maxTotalThreadsPerThreadgroup2 = [normalizationSumBetaGammaDeltaKernel maxTotalThreadsPerThreadgroup];

  if (maxTotalThreadsPerThreadgroup2 < unsignedIntegerValue)
  {
    v59 = unsignedIntegerValue + maxTotalThreadsPerThreadgroup2 - 1;
    unsignedIntegerValue = maxTotalThreadsPerThreadgroup2;
    v50 = v59 / maxTotalThreadsPerThreadgroup2;
  }

  normalizationSumBetaGammaDeltaKernel2 = [v13 normalizationSumBetaGammaDeltaKernel];
  [v46 setComputePipelineState:normalizationSumBetaGammaDeltaKernel2];

  normalizationBetaGradient2 = [v13 normalizationBetaGradient];
  [v46 setBuffer:normalizationBetaGradient2 offset:0 atIndex:0];

  normalizationGammaGradient4 = [v13 normalizationGammaGradient];
  [v46 setBuffer:normalizationGammaGradient4 offset:0 atIndex:1];

  [v46 setBytes:v73 length:8 atIndex:2];
  v76 = v50;
  v77 = vdupq_n_s64(1uLL);
  v74 = unsignedIntegerValue;
  v75 = v77;
  [v46 dispatchThreadgroups:&v76 threadsPerThreadgroup:&v74];
  [v46 endEncoding];
}

- (void)dispatchForwardSplitLayer:(id)layer sourceTensor:(id)tensor resultTensors:(id)tensors forConcat:(BOOL)concat
{
  layerCopy = layer;
  tensorCopy = tensor;
  tensorsCopy = tensors;
  v110 = tensorCopy;
  deviceMemory = [tensorCopy deviceMemory];
  if ([tensorsCopy count])
  {
    v11 = 0;
    do
    {
      v12 = [tensorsCopy objectAtIndexedSubscript:v11];
      [(MLCDeviceGPU *)self allocateResultTensor:v12];

      ++v11;
    }

    while (v11 < [tensorsCopy count]);
  }

  descriptor = [v110 descriptor];
  v113 = +[MLCTensorDescriptor elementByteCount:](MLCTensorDescriptor, "elementByteCount:", [descriptor dataType]);

  if ([(MLCDeviceGPU *)self numDevicesToUse])
  {
    v14 = 0;
    selfCopy = self;
    while (1)
    {
      v112 = [deviceMemory objectAtIndexedSubscript:v14];
      gpuCommandBufferList = [(MLCDeviceGPU *)self gpuCommandBufferList];
      v111 = [gpuCommandBufferList objectAtIndexedSubscript:v14];

      if ([tensorsCopy count])
      {
        break;
      }

LABEL_57:

      ++v14;
      self = selfCopy;
      if (v14 >= [(MLCDeviceGPU *)selfCopy numDevicesToUse])
      {
        goto LABEL_58;
      }
    }

    v16 = 0;
    v120 = v14;
    while (1)
    {
      v17 = [tensorsCopy objectAtIndexedSubscript:v16];
      deviceMemory2 = [v17 deviceMemory];

      v117 = deviceMemory2;
      v19 = [deviceMemory2 objectAtIndexedSubscript:v14];
      v20 = [tensorsCopy objectAtIndexedSubscript:v16];
      v21 = v20;
      v116 = v19;
      v22 = concat ? [v20 concatDimension] : objc_msgSend(v20, "splitDimension");
      v23 = v22;

      v24 = [tensorsCopy objectAtIndexedSubscript:v16];
      descriptor2 = [v24 descriptor];
      shape = [descriptor2 shape];
      v27 = [shape count];

      v28 = [tensorsCopy objectAtIndexedSubscript:v16];
      calculateBatchSizeToUse = [v28 calculateBatchSizeToUse];

      v30 = [tensorsCopy objectAtIndexedSubscript:v16];
      v31 = v30;
      v32 = concat ? [v30 concatOffset] : objc_msgSend(v30, "splitOffset");
      v33 = v32;
      v115 = v23;
      v118 = v27;
      v119 = v23 + 1;
      v34 = v23 + 1 != v27;

      while (1)
      {
        v35 = [tensorsCopy objectAtIndexedSubscript:v16];
        descriptor3 = [v35 descriptor];
        shape2 = [descriptor3 shape];
        v38 = [shape2 count];

        if (v34 >= v38)
        {
          break;
        }

        v39 = [tensorsCopy objectAtIndexedSubscript:v16];
        descriptor4 = [v39 descriptor];
        shape3 = [descriptor4 shape];
        v42 = [shape3 objectAtIndexedSubscript:v34];
        unsignedIntegerValue = [v42 unsignedIntegerValue];

        v44 = [tensorsCopy objectAtIndexedSubscript:v16];
        descriptor5 = [v44 descriptor];
        shape4 = [descriptor5 shape];
        v47 = [shape4 count];

        if (v47 >= 2)
        {
          if (v16)
          {
            v48 = [tensorsCopy objectAtIndexedSubscript:v16 - 1];
            descriptor6 = [v48 descriptor];
            shape5 = [descriptor6 shape];
            v51 = [shape5 objectAtIndexedSubscript:v34];
            v33 *= [v51 unsignedIntegerValue];
          }
        }

        calculateBatchSizeToUse *= unsignedIntegerValue;
        ++v34;
      }

      if (v115 || ((calculateBatchSizeToUse * v113) & 3) != 0)
      {
        break;
      }

      blitCommandEncoder = [v111 blitCommandEncoder];
      v89 = v33 * v113;
      v90 = v116;
      [blitCommandEncoder copyFromBuffer:v112 sourceOffset:v89 toBuffer:v116 destinationOffset:0 size:calculateBatchSizeToUse * v113];
      [blitCommandEncoder endEncoding];

LABEL_56:
      ++v16;
      v14 = v120;
      if (v16 >= [tensorsCopy count])
      {
        goto LABEL_57;
      }
    }

    v125 = 0u;
    v126 = 0u;
    v124 = 0u;
    v52 = [tensorsCopy objectAtIndexedSubscript:v16];
    v53 = v52;
    if (concat)
    {
      concatOffset = [v52 concatOffset];
    }

    else
    {
      concatOffset = [v52 splitOffset];
    }

    v55 = concatOffset;
    v56 = v118;

    v57 = v119;
    if (v119 == v118)
    {
      v68 = [tensorsCopy objectAtIndexedSubscript:v16];
      descriptor7 = [v68 descriptor];
      shape6 = [descriptor7 shape];
      v71 = [shape6 objectAtIndexedSubscript:v115];
      LODWORD(v124) = [v71 unsignedIntegerValue];

      DWORD1(v124) = 1;
      if (v115)
      {
        for (i = 0; i != v115; ++i)
        {
          v73 = [tensorsCopy objectAtIndexedSubscript:v16];
          descriptor8 = [v73 descriptor];
          shape7 = [descriptor8 shape];
          v76 = [shape7 objectAtIndexedSubscript:i];
          unsignedIntegerValue2 = [v76 unsignedIntegerValue];
          DWORD1(v124) *= unsignedIntegerValue2;
        }
      }

      DWORD2(v124) = 1;
    }

    else
    {
      LODWORD(v124) = 1;
      while (1)
      {
        v58 = [tensorsCopy objectAtIndexedSubscript:v16];
        descriptor9 = [v58 descriptor];
        shape8 = [descriptor9 shape];
        v61 = [shape8 count];

        v62 = [tensorsCopy objectAtIndexedSubscript:v16];
        descriptor10 = [v62 descriptor];
        shape9 = [descriptor10 shape];
        v65 = shape9;
        if (v57 >= v61)
        {
          break;
        }

        v66 = [shape9 objectAtIndexedSubscript:v57];
        unsignedIntegerValue3 = [v66 unsignedIntegerValue];
        LODWORD(v124) = v124 * unsignedIntegerValue3;

        ++v57;
      }

      v78 = [shape9 objectAtIndexedSubscript:v115];
      DWORD1(v124) = [v78 unsignedIntegerValue];

      DWORD2(v124) = 1;
      v56 = v118;
      if (v115)
      {
        for (j = 0; j != v115; ++j)
        {
          v80 = [tensorsCopy objectAtIndexedSubscript:v16];
          descriptor11 = [v80 descriptor];
          shape10 = [descriptor11 shape];
          v83 = [shape10 objectAtIndexedSubscript:j];
          unsignedIntegerValue4 = [v83 unsignedIntegerValue];
          DWORD2(v124) *= unsignedIntegerValue4;
        }
      }
    }

    if (v119 == v56)
    {
      DWORD1(v126) = v55;
      HIDWORD(v124) = 1;
      descriptor12 = [v110 descriptor];
      shape11 = [descriptor12 shape];
      v87 = [shape11 objectAtIndexedSubscript:v115];
      LODWORD(v125) = [v87 unsignedIntegerValue];

      *(&v125 + 4) = 0x100000001;
      HIDWORD(v125) = v124;
      LODWORD(v126) = 1;
      HIDWORD(v126) = 1;
    }

    else
    {
      HIDWORD(v126) = 0;
      DWORD1(v126) = v55;
      if (v115 == 2)
      {
        v91 = v124;
        HIDWORD(v124) = 1;
        LODWORD(v125) = v124;
        descriptor13 = [v110 descriptor];
        shape12 = [descriptor13 shape];
        v94 = shape12;
        v95 = 2;
      }

      else
      {
        if (v115 != 1)
        {
          if (!v115)
          {
            HIDWORD(v124) = 1;
            LODWORD(v125) = v124;
            *(&v125 + 4) = 0x100000001;
            HIDWORD(v125) = v124;
            LODWORD(v126) = 1;
          }

          goto LABEL_46;
        }

        v91 = v124;
        HIDWORD(v124) = 1;
        LODWORD(v125) = v124;
        descriptor13 = [v110 descriptor];
        shape12 = [descriptor13 shape];
        v94 = shape12;
        v95 = 1;
      }

      v96 = [shape12 objectAtIndexedSubscript:v95];
      DWORD1(v125) = v91 * [v96 unsignedIntegerValue];

      DWORD2(v125) = 1;
      HIDWORD(v125) = v124;
      LODWORD(v126) = DWORD1(v124) * v124;
    }

LABEL_46:
    gpuPipelineStatesConcatFloat = [(MLCDeviceGPU *)selfCopy gpuPipelineStatesConcatFloat];
    v98 = [gpuPipelineStatesConcatFloat objectAtIndexedSubscript:v120];
    maxTotalThreadsPerThreadgroup = [v98 maxTotalThreadsPerThreadgroup];

    v100 = v124;
    if (maxTotalThreadsPerThreadgroup <= v124)
    {
      v103 = SDWORD1(v124);
      v100 = maxTotalThreadsPerThreadgroup;
      v101 = 1;
      v102 = (maxTotalThreadsPerThreadgroup + v124 - 1) / maxTotalThreadsPerThreadgroup;
    }

    else
    {
      if (maxTotalThreadsPerThreadgroup / v124 >= SDWORD1(v124))
      {
        v101 = SDWORD1(v124);
      }

      else
      {
        v101 = maxTotalThreadsPerThreadgroup / v124;
      }

      v102 = 1;
      v103 = (SDWORD1(v124) + v101 - 1) / v101;
    }

    v104 = SDWORD2(v124);
    v105 = [v111 computeCommandEncoderWithDispatchType:0];
    if (v113 == 1)
    {
      [(MLCDeviceGPU *)selfCopy gpuPipelineStatesConcatBool];
    }

    else
    {
      [(MLCDeviceGPU *)selfCopy gpuPipelineStatesConcatFloat];
    }
    v106 = ;
    v107 = [v106 objectAtIndexedSubscript:v120];
    [v105 setComputePipelineState:v107];

    [v105 setBuffer:v112 offset:0 atIndex:0];
    v90 = v116;
    [v105 setBuffer:v116 offset:0 atIndex:1];
    [v105 setBytes:&v124 length:48 atIndex:2];
    v123[0] = v102;
    v123[1] = v103;
    v123[2] = v104;
    v122[0] = v100;
    v122[1] = v101;
    v122[2] = 1;
    [v105 dispatchThreadgroups:v123 threadsPerThreadgroup:v122];
    [v105 endEncoding];

    goto LABEL_56;
  }

LABEL_58:
}

- (void)dispatchGradientSplitLayer:(id)layer sourceGradientTensors:(id)tensors resultGradientTensor:(id)tensor forConcat:(BOOL)concat
{
  layerCopy = layer;
  tensorsCopy = tensors;
  selfCopy = self;
  tensorCopy = tensor;
  if ([(MLCDeviceGPU *)self needToAllocateDeviceMemoryForTensor:?])
  {
    [(MLCDeviceGPU *)self allocateDeviceMemoryForTensor:tensorCopy, layerCopy];
    if ([tensorsCopy count] >= 2)
    {
      if ([tensorsCopy count])
      {
        v10 = 0;
        while (1)
        {
          v11 = [tensorsCopy objectAtIndexedSubscript:v10];
          deviceMemory = [v11 deviceMemory];

          v13 = [deviceMemory count];
          if (!v13)
          {
            break;
          }

          if (++v10 >= [tensorsCopy count])
          {
            goto LABEL_11;
          }
        }

        if ([(MLCDeviceGPU *)selfCopy numDevicesToUse])
        {
          v14 = 0;
          do
          {
            [(MLCDeviceGPU *)selfCopy dispatchFillTensor:tensorCopy deviceIndex:v14++];
          }

          while (v14 < [(MLCDeviceGPU *)selfCopy numDevicesToUse]);
        }
      }
    }
  }

LABEL_11:
  deviceMemory2 = [tensorCopy deviceMemory];
  descriptor = [tensorCopy descriptor];
  v119 = +[MLCTensorDescriptor elementByteCount:](MLCTensorDescriptor, "elementByteCount:", [descriptor dataType]);

  v16 = [tensorsCopy objectAtIndexedSubscript:0];
  calculateBatchSizeToUse = [v16 calculateBatchSizeToUse];

  v18 = [tensorsCopy objectAtIndexedSubscript:0];
  v19 = v18;
  if (concat)
  {
    concatDimension = [v18 concatDimension];
  }

  else
  {
    concatDimension = [v18 splitDimension];
  }

  v21 = concatDimension;

  isAppleSoCGPU = [(MLCDeviceGPU *)selfCopy isAppleSoCGPU];
  v23 = 3;
  if (isAppleSoCGPU)
  {
    v23 = 0;
  }

  if ((v23 & v119) != 0)
  {
    v122 = 0;
  }

  else if (!v21 || (v122 = 0, v21 == 1) && calculateBatchSizeToUse == 1)
  {
    v122 = 1;
  }

  v24 = [tensorsCopy objectAtIndexedSubscript:0];
  descriptor2 = [v24 descriptor];
  shape = [descriptor2 shape];
  v118 = [shape count];

  v27 = selfCopy;
  if ([(MLCDeviceGPU *)selfCopy numDevicesToUse])
  {
    v28 = 0;
    v117 = v21 + 1;
    while (1)
    {
      gpuCommandBufferList = [(MLCDeviceGPU *)v27 gpuCommandBufferList];
      v30 = [gpuCommandBufferList objectAtIndexedSubscript:v28];

      v112 = v30;
      if (v122)
      {
        blitCommandEncoder = [v30 blitCommandEncoder];
      }

      else
      {
        blitCommandEncoder = 0;
      }

      v121 = [deviceMemory2 objectAtIndexedSubscript:v28];
      if ([tensorsCopy count])
      {
        break;
      }

LABEL_76:
      if (v122)
      {
        [blitCommandEncoder endEncoding];
      }

      ++v28;
      v27 = selfCopy;
      if (v28 >= [(MLCDeviceGPU *)selfCopy numDevicesToUse])
      {
        goto LABEL_79;
      }
    }

    v31 = 0;
    v127 = 0;
    v123 = v28;
    while (1)
    {
      if (v31)
      {
        v32 = 0;
        v33 = 1;
        while (1)
        {
          v34 = [tensorsCopy objectAtIndexedSubscript:v31];
          descriptor3 = [v34 descriptor];
          shape2 = [descriptor3 shape];
          v37 = [shape2 count];

          if (v32 >= v37)
          {
            break;
          }

          v38 = [tensorsCopy objectAtIndexedSubscript:v31 - 1];
          descriptor4 = [v38 descriptor];
          shape3 = [descriptor4 shape];
          v41 = [shape3 objectAtIndexedSubscript:v32];
          v33 *= [v41 unsignedIntegerValue];

          ++v32;
        }

        v127 += v33;
        v28 = v123;
      }

      v42 = [tensorsCopy objectAtIndexedSubscript:v31];
      deviceMemory3 = [v42 deviceMemory];

      if (!concat && ![deviceMemory3 count])
      {
        goto LABEL_75;
      }

      v126 = deviceMemory3;
      v125 = [deviceMemory3 objectAtIndexedSubscript:v28];
      v44 = [tensorsCopy objectAtIndexedSubscript:v31];
      calculateBatchSizeToUse2 = [v44 calculateBatchSizeToUse];

      v46 = [tensorsCopy objectAtIndexedSubscript:v31];
      descriptor5 = [v46 descriptor];
      shape4 = [descriptor5 shape];
      v49 = [shape4 count] != 1;

      while (1)
      {
        v50 = [tensorsCopy objectAtIndexedSubscript:v31];
        descriptor6 = [v50 descriptor];
        shape5 = [descriptor6 shape];
        v53 = [shape5 count];

        if (v49 >= v53)
        {
          break;
        }

        v54 = [tensorsCopy objectAtIndexedSubscript:v31];
        descriptor7 = [v54 descriptor];
        shape6 = [descriptor7 shape];
        v57 = [shape6 objectAtIndexedSubscript:v49];
        calculateBatchSizeToUse2 *= [v57 unsignedIntegerValue];

        ++v49;
      }

      if ((v122 & 1) == 0)
      {
        break;
      }

      v58 = v125;
      [blitCommandEncoder copyFromBuffer:v125 sourceOffset:0 toBuffer:v121 destinationOffset:v127 * v119 size:calculateBatchSizeToUse2 * v119];
LABEL_74:
      deviceMemory3 = v126;

LABEL_75:
      if (++v31 >= [tensorsCopy count])
      {
        goto LABEL_76;
      }
    }

    v131 = 0u;
    v132 = 0u;
    v130 = 0u;
    v59 = [tensorsCopy objectAtIndexedSubscript:v31];
    v60 = v59;
    if (concat)
    {
      concatOffset = [v59 concatOffset];
    }

    else
    {
      concatOffset = [v59 splitOffset];
    }

    v115 = concatOffset;

    v62 = v21 + 1;
    if (v117 == v118)
    {
      v63 = [tensorsCopy objectAtIndexedSubscript:v31];
      descriptor8 = [v63 descriptor];
      shape7 = [descriptor8 shape];
      v66 = [shape7 objectAtIndexedSubscript:v21];
      LODWORD(v130) = [v66 unsignedIntegerValue];

      DWORD1(v130) = 1;
      if (v21)
      {
        for (i = 0; i != v21; ++i)
        {
          v68 = [tensorsCopy objectAtIndexedSubscript:v31];
          descriptor9 = [v68 descriptor];
          shape8 = [descriptor9 shape];
          v71 = [shape8 objectAtIndexedSubscript:i];
          unsignedIntegerValue = [v71 unsignedIntegerValue];
          DWORD1(v130) *= unsignedIntegerValue;
        }
      }

      DWORD2(v130) = 1;
    }

    else
    {
      LODWORD(v130) = 1;
      while (1)
      {
        v73 = [tensorsCopy objectAtIndexedSubscript:v31];
        descriptor10 = [v73 descriptor];
        shape9 = [descriptor10 shape];
        v76 = [shape9 count];

        v77 = [tensorsCopy objectAtIndexedSubscript:v31];
        descriptor11 = [v77 descriptor];
        shape10 = [descriptor11 shape];
        v80 = shape10;
        if (v62 >= v76)
        {
          break;
        }

        v81 = [shape10 objectAtIndexedSubscript:v62];
        unsignedIntegerValue2 = [v81 unsignedIntegerValue];
        LODWORD(v130) = v130 * unsignedIntegerValue2;

        ++v62;
      }

      v83 = [shape10 objectAtIndexedSubscript:v21];
      DWORD1(v130) = [v83 unsignedIntegerValue];

      DWORD2(v130) = 1;
      if (v21)
      {
        for (j = 0; j != v21; ++j)
        {
          v85 = [tensorsCopy objectAtIndexedSubscript:v31];
          descriptor12 = [v85 descriptor];
          shape11 = [descriptor12 shape];
          v88 = [shape11 objectAtIndexedSubscript:j];
          unsignedIntegerValue3 = [v88 unsignedIntegerValue];
          DWORD2(v130) *= unsignedIntegerValue3;
        }
      }
    }

    if (v117 == v118)
    {
      HIDWORD(v130) = 1;
      LODWORD(v131) = v130;
      *(&v131 + 4) = 0x100000001;
      descriptor13 = [tensorCopy descriptor];
      shape12 = [descriptor13 shape];
      v92 = [shape12 objectAtIndexedSubscript:v21];
      HIDWORD(v131) = [v92 unsignedIntegerValue];

      LODWORD(v132) = 1;
      *(&v132 + 1) = v115 | 0x100000000;
    }

    else
    {
      *(&v132 + 1) = v115;
      if (v21 == 2)
      {
        v93 = v130;
        HIDWORD(v130) = 1;
        LODWORD(v131) = v130;
        DWORD1(v131) = DWORD1(v130) * v130;
        DWORD2(v131) = 1;
        HIDWORD(v131) = v130;
        descriptor14 = [tensorCopy descriptor];
        shape13 = [descriptor14 shape];
        v96 = shape13;
        v97 = 2;
      }

      else
      {
        if (v21 != 1)
        {
          v28 = v123;
          if (!v21)
          {
            HIDWORD(v130) = 1;
            LODWORD(v131) = v130;
            *(&v131 + 4) = 0x100000001;
            HIDWORD(v131) = v130;
            LODWORD(v132) = 1;
          }

          goto LABEL_64;
        }

        v93 = v130;
        HIDWORD(v130) = 1;
        LODWORD(v131) = v130;
        DWORD1(v131) = DWORD1(v130) * v130;
        DWORD2(v131) = 1;
        HIDWORD(v131) = v130;
        descriptor14 = [tensorCopy descriptor];
        shape13 = [descriptor14 shape];
        v96 = shape13;
        v97 = 1;
      }

      v98 = [shape13 objectAtIndexedSubscript:v97];
      LODWORD(v132) = v93 * [v98 unsignedIntegerValue];

      v28 = v123;
    }

LABEL_64:
    gpuPipelineStatesConcatFloat = [(MLCDeviceGPU *)selfCopy gpuPipelineStatesConcatFloat];
    v100 = [gpuPipelineStatesConcatFloat objectAtIndexedSubscript:v28];
    maxTotalThreadsPerThreadgroup = [v100 maxTotalThreadsPerThreadgroup];

    v102 = v130;
    if (maxTotalThreadsPerThreadgroup <= v130)
    {
      v102 = maxTotalThreadsPerThreadgroup;
      v103 = 1;
      v114 = (maxTotalThreadsPerThreadgroup + v130 - 1) / maxTotalThreadsPerThreadgroup;
      v116 = SDWORD1(v130);
    }

    else
    {
      if (maxTotalThreadsPerThreadgroup / v130 >= SDWORD1(v130))
      {
        v103 = SDWORD1(v130);
      }

      else
      {
        v103 = maxTotalThreadsPerThreadgroup / v130;
      }

      v114 = 1;
      v116 = (SDWORD1(v130) + v103 - 1) / v103;
    }

    v104 = SDWORD2(v130);
    v105 = [v112 computeCommandEncoderWithDispatchType:0];
    if (v119 == 1)
    {
      [(MLCDeviceGPU *)selfCopy gpuPipelineStatesConcatBool];
    }

    else
    {
      [(MLCDeviceGPU *)selfCopy gpuPipelineStatesConcatFloat];
    }
    v106 = ;
    v28 = v123;
    v107 = [v106 objectAtIndexedSubscript:v123];
    [v105 setComputePipelineState:v107];

    v58 = v125;
    [v105 setBuffer:v125 offset:0 atIndex:0];
    [v105 setBuffer:v121 offset:0 atIndex:1];
    [v105 setBytes:&v130 length:48 atIndex:2];
    v129[0] = v114;
    v129[1] = v116;
    v129[2] = v104;
    v128[0] = v102;
    v128[1] = v103;
    v128[2] = 1;
    [v105 dispatchThreadgroups:v129 threadsPerThreadgroup:v128];
    [v105 endEncoding];

    goto LABEL_74;
  }

LABEL_79:
}

- (void)dispatchForwardReduceLayer:(id)layer sourceTensor:(id)tensor resultTensor:(id)resultTensor reductionType:(int)type reduceDimensions:(id)dimensions forTraining:(BOOL)training
{
  layerCopy = layer;
  tensorCopy = tensor;
  resultTensorCopy = resultTensor;
  dimensionsCopy = dimensions;
  v68 = tensorCopy;
  deviceMemory = [tensorCopy deviceMemory];
  [(MLCDeviceGPU *)self allocateResultTensor:resultTensorCopy];
  v65 = resultTensorCopy;
  deviceMemory2 = [resultTensorCopy deviceMemory];
  if ([(MLCDeviceGPU *)self numDevicesToUse])
  {
    v14 = 0;
    v74 = (type - 5) < 2;
    selfCopy = self;
    while (1)
    {
      v15 = [layerCopy objectAtIndexedSubscript:v14];
      gpuCommandBufferList = [(MLCDeviceGPU *)self gpuCommandBufferList];
      v76 = [gpuCommandBufferList objectAtIndexedSubscript:v14];

      descriptor = [v68 descriptor];
      shape = [descriptor shape];
      v19 = [shape mutableCopy];

      if ([v19 count] >= 2)
      {
        v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v15, "batchSize")}];
        [v19 setObject:v20 atIndexedSubscript:0];
      }

      v21 = [v19 mutableCopy];
      v22 = objc_autoreleasePoolPush();
      if ([dimensionsCopy count])
      {
        break;
      }

LABEL_47:
      objc_autoreleasePoolPop(v22);
      if (training)
      {
        v63 = [deviceMemory objectAtIndexedSubscript:v14];
        [v15 setSource:v63];

        if ((type - 3) <= 1)
        {
          v64 = [deviceMemory2 objectAtIndexedSubscript:v14];
          [v15 setResult:v64];
        }
      }

      if (++v14 >= [(MLCDeviceGPU *)self numDevicesToUse])
      {
        goto LABEL_51;
      }
    }

    v70 = v22;
    v78 = v15;
    v73 = v14;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = dimensionsCopy;
    while (1)
    {
      v81 = v25;
      v27 = [v26 objectAtIndexedSubscript:v25];
      unsignedIntegerValue = [v27 unsignedIntegerValue];

      v29 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:1];
      [v21 setObject:v29 atIndexedSubscript:unsignedIntegerValue];

      memset(&v90[4], 0, 32);
      *v90 = type;
      v30 = [v19 objectAtIndexedSubscript:unsignedIntegerValue];
      *&v90[20] = [v30 unsignedIntegerValue];

      *&v31 = 0x100000001;
      *(&v31 + 1) = 0x100000001;
      *&v90[4] = v31;
      *&v90[28] = 0;
      *&v90[32] = 0;
      for (i = unsignedIntegerValue; i < [v19 count]; ++i)
      {
        v33 = [v19 objectAtIndexedSubscript:i];
        unsignedIntegerValue2 = [v33 unsignedIntegerValue];
        *&v90[4] *= unsignedIntegerValue2;

        v35 = [v21 objectAtIndexedSubscript:i];
        unsignedIntegerValue3 = [v35 unsignedIntegerValue];
        *&v90[12] *= unsignedIntegerValue3;

        if (i > unsignedIntegerValue)
        {
          v37 = [v19 objectAtIndexedSubscript:i];
          unsignedIntegerValue4 = [v37 unsignedIntegerValue];
          *&v90[8] *= unsignedIntegerValue4;

          v39 = [v21 objectAtIndexedSubscript:i];
          unsignedIntegerValue5 = [v39 unsignedIntegerValue];
          *&v90[16] *= unsignedIntegerValue5;
        }
      }

      if ([v19 count])
      {
        break;
      }

      v43 = 1;
      v42 = 1;
LABEL_21:
      *&v90[24] = 1.0 / *&v90[20];
      if (v81)
      {
        v45 = v24;
      }

      else
      {
        v45 = [deviceMemory objectAtIndexedSubscript:v73];
      }

      v80 = v45;

      if ([v21 count])
      {
        v46 = 0;
        v47 = 1;
        do
        {
          v48 = [v21 objectAtIndexedSubscript:v46];
          v47 *= [v48 unsignedIntegerValue];

          ++v46;
        }

        while (v46 < [v21 count]);
      }

      else
      {
        v47 = 1;
      }

      if ([dimensionsCopy count] - 1 == v81)
      {
        [deviceMemory2 objectAtIndexedSubscript:v73];
      }

      else
      {
        MPSGetTemporaryBufferFromCommandBufferCache();
      }
      v77 = ;

      forwardKernel = [v78 forwardKernel];
      maxTotalThreadsPerThreadgroup = [forwardKernel maxTotalThreadsPerThreadgroup];

      v51 = [v19 objectAtIndexedSubscript:unsignedIntegerValue];
      unsignedIntegerValue6 = [v51 unsignedIntegerValue];

      v87 = *v90;
      v88 = *&v90[16];
      v89 = *&v90[32];
      if (unsignedIntegerValue6 <= 16 * maxTotalThreadsPerThreadgroup)
      {
        v55 = 0;
        v53 = 1;
        v54 = v76;
      }

      else
      {
        v53 = (maxTotalThreadsPerThreadgroup + unsignedIntegerValue6 - 1) / maxTotalThreadsPerThreadgroup;
        v90[32] = 1;
        *&v90[12] *= v53;
        *&v90[28] = v53 * v47;
        v54 = v76;
        v55 = MPSGetTemporaryBufferFromCommandBufferCache();
      }

      v56 = [v54 computeCommandEncoderWithDispatchType:0];
      forwardKernel2 = [v78 forwardKernel];
      [v56 setComputePipelineState:forwardKernel2];

      [v56 setBuffer:v80 offset:0 atIndex:0];
      if (v90[32])
      {
        v58 = v55;
      }

      else
      {
        v58 = v77;
      }

      [v56 setBuffer:v58 offset:0 atIndex:1];
      [v56 setBytes:v90 length:36 atIndex:2];
      v59 = 4 * maxTotalThreadsPerThreadgroup;
      if ((type & 0xFFFFFFFE) == 8)
      {
        v59 = maxTotalThreadsPerThreadgroup;
      }

      v60 = v59 << v74;
      [v56 setThreadgroupMemoryLength:GPU_AlignForThreadGroupMemorySize(v59 << v74) atIndex:0];
      v84 = v43;
      v85 = v42;
      v86 = v53;
      v82 = maxTotalThreadsPerThreadgroup;
      v83 = vdupq_n_s64(1uLL);
      [v56 dispatchThreadgroups:&v84 threadsPerThreadgroup:&v82];
      if (v90[32] == 1)
      {
        *(&v87 + 4) = *&v90[12];
        *(&v88 + 4) = v53 | 0x3F80000000000000;
        LOWORD(v89) = 256;
        [v56 setBuffer:v55 offset:0 atIndex:0];
        [v56 setBuffer:v77 offset:0 atIndex:1];
        [v56 setBytes:&v87 length:36 atIndex:2];
        [v56 setThreadgroupMemoryLength:GPU_AlignForThreadGroupMemorySize(v60) atIndex:0];
        v84 = v43;
        v85 = v42;
        v86 = 1;
        v82 = maxTotalThreadsPerThreadgroup;
        v83 = vdupq_n_s64(1uLL);
        [v56 dispatchThreadgroups:&v84 threadsPerThreadgroup:&v82];
      }

      [v56 endEncoding];
      if ([v19 count])
      {
        v61 = 0;
        do
        {
          v62 = [v21 objectAtIndexedSubscript:v61];
          [v19 setObject:v62 atIndexedSubscript:v61];

          ++v61;
        }

        while (v61 < [v19 count]);
      }

      v25 = v81 + 1;
      v26 = dimensionsCopy;
      v23 = v80;
      v24 = v77;
      if (v81 + 1 >= [dimensionsCopy count])
      {

        self = selfCopy;
        v14 = v73;
        v15 = v78;
        v22 = v70;
        goto LABEL_47;
      }
    }

    v41 = 0;
    v42 = 1;
    v43 = 1;
    while (v41 >= unsignedIntegerValue)
    {
      if (v41 > unsignedIntegerValue)
      {
        v44 = [v19 objectAtIndexedSubscript:v41];
        v43 *= [v44 unsignedIntegerValue];
        goto LABEL_17;
      }

LABEL_18:
      if (++v41 >= [v19 count])
      {
        goto LABEL_21;
      }
    }

    v44 = [v19 objectAtIndexedSubscript:v41];
    v42 *= [v44 unsignedIntegerValue];
LABEL_17:

    goto LABEL_18;
  }

LABEL_51:
}

- (void)dispatchGradientReduceLayer:(id)layer sourceGradientTensor:(id)tensor resultGradientTensor:(id)gradientTensor reductionType:(int)type reduceDimensions:(id)dimensions
{
  layerCopy = layer;
  tensorCopy = tensor;
  gradientTensorCopy = gradientTensor;
  dimensionsCopy = dimensions;
  v84 = tensorCopy;
  deviceMemory = [tensorCopy deviceMemory];
  [(MLCDeviceGPU *)self allocateResultTensor:gradientTensorCopy];
  deviceMemory2 = [gradientTensorCopy deviceMemory];
  if (![(MLCDeviceGPU *)self numDevicesToUse])
  {
    goto LABEL_54;
  }

  v14 = 0;
  selfCopy = self;
  v94 = dimensionsCopy;
  do
  {
    v96 = [layerCopy objectAtIndexedSubscript:{v14, selfCopy}];
    gpuCommandBufferList = [(MLCDeviceGPU *)self gpuCommandBufferList];
    v89 = v14;
    v91 = [gpuCommandBufferList objectAtIndexedSubscript:v14];

    v16 = objc_autoreleasePoolPush();
    descriptor = [v84 descriptor];
    shape = [descriptor shape];
    v19 = [shape mutableCopy];

    descriptor2 = [v84 descriptor];
    shape2 = [descriptor2 shape];
    v22 = [shape2 mutableCopy];

    if (![dimensionsCopy count])
    {
      goto LABEL_53;
    }

    v86 = v16;
    v98 = 0;
    v23 = 0;
    v24 = 0;
    v92 = 0;
    v95 = 0;
    do
    {
      v93 = v23;
      v97 = v24;
      v25 = [dimensionsCopy objectAtIndexedSubscript:v24];
      unsignedIntegerValue = [v25 unsignedIntegerValue];

      if (unsignedIntegerValue || ([gradientTensorCopy descriptor], v27 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v27, "shape"), v28 = objc_claimAutoreleasedReturnValue(), v29 = objc_msgSend(v28, "count"), v28, v27, v29))
      {
        descriptor3 = [gradientTensorCopy descriptor];
        shape3 = [descriptor3 shape];
        v32 = [shape3 objectAtIndexedSubscript:unsignedIntegerValue];
        v33 = [v32 copy];
        [v22 setObject:v33 atIndexedSubscript:unsignedIntegerValue];
      }

      else
      {
        descriptor3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v96, "batchSize")}];
        [v22 setObject:descriptor3 atIndexedSubscript:0];
      }

      v104 = 0u;
      v103 = 0u;
      typeCopy = type;
      v34 = [v22 objectAtIndexedSubscript:unsignedIntegerValue];
      LODWORD(v104) = [v34 unsignedIntegerValue];

      *&v35 = 0x100000001;
      *(&v35 + 1) = 0x100000001;
      v103 = v35;
      for (i = unsignedIntegerValue; i < [v22 count]; ++i)
      {
        v37 = [v22 objectAtIndexedSubscript:i];
        unsignedIntegerValue2 = [v37 unsignedIntegerValue];
        LODWORD(v103) = v103 * unsignedIntegerValue2;

        v39 = [v19 objectAtIndexedSubscript:i];
        unsignedIntegerValue3 = [v39 unsignedIntegerValue];
        DWORD2(v103) *= unsignedIntegerValue3;

        if (i > unsignedIntegerValue)
        {
          v41 = [v22 objectAtIndexedSubscript:i];
          unsignedIntegerValue4 = [v41 unsignedIntegerValue];
          DWORD1(v103) *= unsignedIntegerValue4;

          v43 = [v19 objectAtIndexedSubscript:i];
          unsignedIntegerValue5 = [v43 unsignedIntegerValue];
          HIDWORD(v103) *= unsignedIntegerValue5;
        }
      }

      if ([v22 count])
      {
        v45 = 0;
        v46 = 1;
        v47 = 1;
        while (v45 >= unsignedIntegerValue)
        {
          if (v45 > unsignedIntegerValue)
          {
            v48 = [v22 objectAtIndexedSubscript:v45];
            v47 *= [v48 unsignedIntegerValue];
            goto LABEL_18;
          }

LABEL_19:
          if (++v45 >= [v22 count])
          {
            goto LABEL_22;
          }
        }

        v48 = [v22 objectAtIndexedSubscript:v45];
        v46 *= [v48 unsignedIntegerValue];
LABEL_18:

        goto LABEL_19;
      }

      v47 = 1;
      v46 = 1;
LABEL_22:
      *(&v104 + 1) = 1.0 / v104;
      descriptor4 = [gradientTensorCopy descriptor];
      shape4 = [descriptor4 shape];
      v51 = [shape4 count];

      if (v51 >= 2)
      {
        v52 = 1;
        do
        {
          descriptor5 = [gradientTensorCopy descriptor];
          shape5 = [descriptor5 shape];
          v55 = [shape5 objectAtIndexedSubscript:v52];
          [v55 unsignedIntegerValue];

          ++v52;
          descriptor6 = [gradientTensorCopy descriptor];
          shape6 = [descriptor6 shape];
          v58 = [shape6 count];
        }

        while (v52 < v58);
      }

      v59 = v97;
      if (v97)
      {
        v60 = v93;
        v61 = v93;
        v62 = v96;
LABEL_29:

        v98 = v61;
        goto LABEL_30;
      }

      source = [v96 source];

      v61 = [deviceMemory objectAtIndexedSubscript:v89];

      result = [v96 result];

      if (result)
      {
        [v96 result];
        v92 = v98 = v92;
        v95 = source;
        v62 = v96;
        v59 = 0;
        v60 = v93;
        goto LABEL_29;
      }

      v95 = source;
      v98 = v61;
      v62 = v96;
      v59 = 0;
      v60 = v93;
LABEL_30:
      if ([v94 count] - 1 == v59)
      {
        v65 = [deviceMemory2 objectAtIndexedSubscript:v89];
      }

      else
      {
        if ([v22 count])
        {
          v66 = 0;
          v67 = 1;
          do
          {
            v68 = [v22 objectAtIndexedSubscript:v66];
            v67 *= [v68 unsignedIntegerValue];

            ++v66;
          }

          while (v66 < [v22 count]);
          v62 = v96;
        }

        v65 = MPSGetTemporaryBufferFromCommandBufferCache();
      }

      v69 = v65;

      gradientKernel = [v62 gradientKernel];
      maxTotalThreadsPerThreadgroup = [gradientKernel maxTotalThreadsPerThreadgroup];

      v72 = [v22 objectAtIndexedSubscript:unsignedIntegerValue];
      unsignedIntegerValue6 = [v72 unsignedIntegerValue];

      if (v46 == 1 && v47 == 1)
      {
        v74 = unsignedIntegerValue6 > 32 * maxTotalThreadsPerThreadgroup;
        if (unsignedIntegerValue6 > 32 * maxTotalThreadsPerThreadgroup)
        {
          v46 = 1;
          v47 = (maxTotalThreadsPerThreadgroup + unsignedIntegerValue6 - 1) / maxTotalThreadsPerThreadgroup;
        }
      }

      else
      {
        v74 = 0;
      }

      BYTE12(v104) = v74;
      v75 = [v91 computeCommandEncoderWithDispatchType:0];
      gradientKernel2 = [v96 gradientKernel];
      [v75 setComputePipelineState:gradientKernel2];

      [v75 setBuffer:v98 offset:0 atIndex:0];
      [v75 setBuffer:v69 offset:0 atIndex:1];
      [v75 setBuffer:v95 offset:0 atIndex:2];
      result2 = [v96 result];

      if (result2 && v92)
      {
        v78 = v75;
        v79 = v92;
      }

      else
      {
        v78 = v75;
        v79 = v95;
      }

      [v78 setBuffer:v79 offset:0 atIndex:3];
      [v75 setBytes:&typeCopy length:36 atIndex:4];
      v101[0] = v47;
      v101[1] = v46;
      v101[2] = 1;
      v99 = maxTotalThreadsPerThreadgroup;
      v100 = vdupq_n_s64(1uLL);
      [v75 dispatchThreadgroups:v101 threadsPerThreadgroup:&v99];
      [v75 endEncoding];
      if ([v19 count])
      {
        v80 = 0;
        do
        {
          v81 = [v22 objectAtIndexedSubscript:v80];
          [v19 setObject:v81 atIndexedSubscript:v80];

          ++v80;
        }

        while (v80 < [v19 count]);
      }

      v24 = v97 + 1;
      dimensionsCopy = v94;
      v82 = [v94 count];
      v23 = v69;
    }

    while (v97 + 1 < v82);

    self = selfCopy;
    v16 = v86;
LABEL_53:

    objc_autoreleasePoolPop(v16);
    v14 = v89 + 1;
  }

  while (v89 + 1 < [(MLCDeviceGPU *)self numDevicesToUse]);
LABEL_54:
}

- (void)dispatchForwardSelectLayer:(id)layer conditionTensor:(id)tensor sourceTensors:(id)tensors resultTensor:(id)resultTensor forTraining:(BOOL)training
{
  layerCopy = layer;
  tensorCopy = tensor;
  tensorsCopy = tensors;
  resultTensorCopy = resultTensor;
  [(MLCDeviceGPU *)self allocateResultTensor:resultTensorCopy];
  deviceMemory = [resultTensorCopy deviceMemory];
  descriptor = [resultTensorCopy descriptor];
  shape = [descriptor shape];
  v16 = [shape count];

  v72 = tensorCopy;
  descriptor2 = [tensorCopy descriptor];
  v18 = [descriptor2 newShapeWithCount:v16];

  v19 = [tensorsCopy objectAtIndexedSubscript:0];
  descriptor3 = [v19 descriptor];
  v75 = [descriptor3 newShapeWithCount:v16];

  v71 = tensorsCopy;
  v21 = [tensorsCopy objectAtIndexedSubscript:1];
  descriptor4 = [v21 descriptor];
  v74 = [descriptor4 newShapeWithCount:v16];

  v65 = resultTensorCopy;
  descriptor5 = [resultTensorCopy descriptor];
  shape2 = [descriptor5 shape];

  if ([(MLCDeviceGPU *)self numDevicesToUse])
  {
    v25 = 0;
    v66 = vdupq_n_s64(8uLL);
    v68 = v18;
    selfCopy = self;
    v67 = shape2;
    while (1)
    {
      v26 = [layerCopy objectAtIndexedSubscript:v25];
      gpuCommandBufferList = [(MLCDeviceGPU *)self gpuCommandBufferList];
      v28 = [gpuCommandBufferList objectAtIndexedSubscript:v25];

      v86 = 0;
      memset_pattern16(__b, &unk_238D45D70, 0x40uLL);
      if ([shape2 count] == 1)
      {
        break;
      }

      v30 = [shape2 count];
      v31 = [v18 objectAtIndexedSubscript:0];
      unsignedIntegerValue = [v31 unsignedIntegerValue];
      if (v30 == 2)
      {
        v33 = 0;
        v29 = 1;
        goto LABEL_10;
      }

      __b[0] = unsignedIntegerValue;

      v34 = [v75 objectAtIndexedSubscript:0];
      __b[4] = [v34 unsignedIntegerValue];

      v35 = [v74 objectAtIndexedSubscript:0];
      __b[8] = [v35 unsignedIntegerValue];

      v36 = [shape2 objectAtIndexedSubscript:0];
      unsignedIntegerValue2 = [v36 unsignedIntegerValue];

      v37 = [shape2 count];
      v38 = [v18 objectAtIndexedSubscript:1];
      __b[1] = [v38 unsignedIntegerValue];

      v39 = [v75 objectAtIndexedSubscript:1];
      __b[5] = [v39 unsignedIntegerValue];

      v40 = [v74 objectAtIndexedSubscript:1];
      __b[9] = [v40 unsignedIntegerValue];

      v41 = [shape2 objectAtIndexedSubscript:1];
      unsignedIntegerValue3 = [v41 unsignedIntegerValue];

      v31 = [v18 objectAtIndexedSubscript:2];
      unsignedIntegerValue = [v31 unsignedIntegerValue];
      if (v37 != 3)
      {
        v33 = 2;
        v29 = 3;
LABEL_10:
        __b[2] = unsignedIntegerValue;

        v42 = [v75 objectAtIndexedSubscript:v33];
        __b[6] = [v42 unsignedIntegerValue];

        v43 = [v74 objectAtIndexedSubscript:v33];
        __b[10] = [v43 unsignedIntegerValue];

        v44 = [shape2 objectAtIndexedSubscript:v33];
        unsignedIntegerValue4 = [v44 unsignedIntegerValue];

LABEL_11:
        v31 = [v18 objectAtIndexedSubscript:v29];
        unsignedIntegerValue = [v31 unsignedIntegerValue];
        goto LABEL_12;
      }

      v29 = 2;
LABEL_12:
      __b[3] = unsignedIntegerValue;

      v45 = [v75 objectAtIndexedSubscript:v29];
      __b[7] = [v45 unsignedIntegerValue];

      v46 = [v74 objectAtIndexedSubscript:v29];
      __b[11] = [v46 unsignedIntegerValue];

      v47 = [shape2 objectAtIndexedSubscript:v29];
      unsignedIntegerValue5 = [v47 unsignedIntegerValue];

      v48 = __clz(__rbit32(unsignedIntegerValue2)) << 16;
      if (((unsignedIntegerValue2 - 1) & unsignedIntegerValue2) != 0)
      {
        v49 = -65536;
      }

      else
      {
        v49 = v48;
      }

      v86 = v49 & 0xFFFF0000 | unsignedIntegerValue2;
      forwardKernel = [v26 forwardKernel];
      maxTotalThreadsPerThreadgroup = [forwardKernel maxTotalThreadsPerThreadgroup];

      if (maxTotalThreadsPerThreadgroup >> 6 >= unsignedIntegerValue2 * unsignedIntegerValue3)
      {
        v52 = unsignedIntegerValue2 * unsignedIntegerValue3;
      }

      else
      {
        v52 = maxTotalThreadsPerThreadgroup >> 6;
      }

      v77 = (unsignedIntegerValue5 + 7) >> 3;
      v76 = (unsignedIntegerValue4 + 7) >> 3;
      v53 = (v52 + unsignedIntegerValue2 * unsignedIntegerValue3 - 1) / v52;
      v54 = [v28 computeCommandEncoderWithDispatchType:0];
      forwardKernel2 = [v26 forwardKernel];
      [v54 setComputePipelineState:forwardKernel2];

      deviceMemory2 = [v72 deviceMemory];
      v57 = [deviceMemory2 objectAtIndexedSubscript:v25];
      [v54 setBuffer:v57 offset:0 atIndex:0];

      v58 = [v71 objectAtIndexedSubscript:0];
      deviceMemory3 = [v58 deviceMemory];
      v60 = [deviceMemory3 objectAtIndexedSubscript:v25];
      [v54 setBuffer:v60 offset:0 atIndex:1];

      v61 = [v71 objectAtIndexedSubscript:1];
      deviceMemory4 = [v61 deviceMemory];
      v63 = [deviceMemory4 objectAtIndexedSubscript:v25];
      [v54 setBuffer:v63 offset:0 atIndex:2];

      v64 = [deviceMemory objectAtIndexedSubscript:v25];
      [v54 setBuffer:v64 offset:0 atIndex:3];

      [v54 setBytes:__b length:68 atIndex:4];
      v80[0] = v77;
      v80[1] = v76;
      v80[2] = v53;
      v78 = v66;
      v79 = v52;
      shape2 = v67;
      [v54 dispatchThreadgroups:v80 threadsPerThreadgroup:&v78];
      [v54 endEncoding];

      ++v25;
      self = selfCopy;
      v18 = v68;
      if (v25 >= [(MLCDeviceGPU *)selfCopy numDevicesToUse])
      {
        goto LABEL_19;
      }
    }

    v29 = 0;
    goto LABEL_11;
  }

LABEL_19:
}

- (void)dispatchGradientSelectLayer:(id)layer conditionTensor:(id)tensor sourceGradientTensor:(id)gradientTensor resultGradientTensors:(id)tensors
{
  v141[1] = *MEMORY[0x277D85DE8];
  layerCopy = layer;
  tensorCopy = tensor;
  gradientTensorCopy = gradientTensor;
  tensorsCopy = tensors;
  v13 = [tensorsCopy objectAtIndexedSubscript:0];
  [(MLCDeviceGPU *)self allocateResultTensor:v13];

  v14 = [tensorsCopy objectAtIndexedSubscript:1];
  [(MLCDeviceGPU *)self allocateResultTensor:v14];

  descriptor = [gradientTensorCopy descriptor];
  shape = [descriptor shape];
  v17 = [shape count];

  deviceMemory = [tensorCopy deviceMemory];
  deviceMemory2 = [gradientTensorCopy deviceMemory];
  v18 = [tensorsCopy objectAtIndexedSubscript:0];
  deviceMemory3 = [v18 deviceMemory];

  v19 = [tensorsCopy objectAtIndexedSubscript:1];
  deviceMemory4 = [v19 deviceMemory];

  v108 = tensorCopy;
  descriptor2 = [tensorCopy descriptor];
  v21 = [descriptor2 newShapeWithCount:v17];

  v22 = [tensorsCopy objectAtIndexedSubscript:0];
  descriptor3 = [v22 descriptor];
  v115 = [descriptor3 newShapeWithCount:v17];

  v107 = tensorsCopy;
  v24 = [tensorsCopy objectAtIndexedSubscript:1];
  descriptor4 = [v24 descriptor];
  v114 = [descriptor4 newShapeWithCount:v17];

  descriptor5 = [gradientTensorCopy descriptor];
  shape2 = [descriptor5 shape];

  if (![(MLCDeviceGPU *)self numDevicesToUse])
  {
    goto LABEL_56;
  }

  v28 = 0;
  v109 = vdupq_n_s64(8uLL);
  v117 = v21;
  selfCopy = self;
  v110 = shape2;
  do
  {
    v29 = [layerCopy objectAtIndexedSubscript:v28];
    gpuCommandBufferList = [(MLCDeviceGPU *)self gpuCommandBufferList];
    v31 = [gpuCommandBufferList objectAtIndexedSubscript:v28];

    unsignedIntegerValue2 = [shape2 count];
    v33 = [shape2 objectAtIndexedSubscript:0];
    unsignedIntegerValue = [v33 unsignedIntegerValue];
    v118 = v29;
    if (unsignedIntegerValue2 == 1)
    {

      v35 = v117;
    }

    else
    {
      if (unsignedIntegerValue <= [v29 batchSize])
      {
        v36 = [shape2 objectAtIndexedSubscript:0];
        unsignedIntegerValue2 = [v36 unsignedIntegerValue];
      }

      else
      {
        unsignedIntegerValue2 = [v29 batchSize];
      }

      v35 = v117;

      unsignedIntegerValue = 1;
      if ([shape2 count] >= 2)
      {
        v37 = 1;
        do
        {
          v38 = [shape2 objectAtIndexedSubscript:v37];
          unsignedIntegerValue *= [v38 unsignedIntegerValue];

          ++v37;
        }

        while (v37 < [shape2 count]);
      }
    }

    v119 = [MEMORY[0x277CD7258] matrixDescriptorWithRows:unsignedIntegerValue2 columns:unsignedIntegerValue rowBytes:4 * unsignedIntegerValue dataType:268435488];
    v137 = 0;
    memset_pattern16(__b, &unk_238D45D70, 0x40uLL);
    if ([shape2 count] == 1)
    {
      v39 = 0;
LABEL_19:
      v41 = [v35 objectAtIndexedSubscript:v39];
      unsignedIntegerValue3 = [v41 unsignedIntegerValue];
      goto LABEL_20;
    }

    v40 = [shape2 count];
    v41 = [v35 objectAtIndexedSubscript:0];
    unsignedIntegerValue3 = [v41 unsignedIntegerValue];
    if (v40 == 2)
    {
      v43 = 0;
      v39 = 1;
LABEL_18:
      __b[2] = unsignedIntegerValue3;

      v52 = [v115 objectAtIndexedSubscript:v43];
      DWORD2(v134) = [v52 unsignedIntegerValue];

      v53 = [v114 objectAtIndexedSubscript:v43];
      DWORD2(v135) = [v53 unsignedIntegerValue];

      v54 = [shape2 objectAtIndexedSubscript:v43];
      DWORD2(v136) = [v54 unsignedIntegerValue];

      goto LABEL_19;
    }

    __b[0] = unsignedIntegerValue3;

    v44 = [v115 objectAtIndexedSubscript:0];
    LODWORD(v134) = [v44 unsignedIntegerValue];

    v45 = [v114 objectAtIndexedSubscript:0];
    LODWORD(v135) = [v45 unsignedIntegerValue];

    v46 = [shape2 objectAtIndexedSubscript:0];
    LODWORD(v136) = [v46 unsignedIntegerValue];

    v47 = [shape2 count];
    v48 = [v35 objectAtIndexedSubscript:1];
    __b[1] = [v48 unsignedIntegerValue];

    v49 = [v115 objectAtIndexedSubscript:1];
    DWORD1(v134) = [v49 unsignedIntegerValue];

    v50 = [v114 objectAtIndexedSubscript:1];
    DWORD1(v135) = [v50 unsignedIntegerValue];

    v51 = [shape2 objectAtIndexedSubscript:1];
    DWORD1(v136) = [v51 unsignedIntegerValue];

    v41 = [v35 objectAtIndexedSubscript:2];
    unsignedIntegerValue3 = [v41 unsignedIntegerValue];
    if (v47 != 3)
    {
      v43 = 2;
      v39 = 3;
      goto LABEL_18;
    }

    v39 = 2;
LABEL_20:
    __b[3] = unsignedIntegerValue3;

    v55 = [v115 objectAtIndexedSubscript:v39];
    HIDWORD(v134) = [v55 unsignedIntegerValue];

    v56 = [v114 objectAtIndexedSubscript:v39];
    HIDWORD(v135) = [v56 unsignedIntegerValue];

    v57 = [shape2 objectAtIndexedSubscript:v39];
    HIDWORD(v136) = [v57 unsignedIntegerValue];

    v58 = 0;
    v140 = 0;
    v141[0] = 0;
    v59 = v132;
    v60 = &v140;
    v61 = &v138;
    v62 = 1;
    v138 = 0;
    v139 = 0;
    while (1)
    {
      v63 = v62;
      v64 = &__b[4 * v58];
      v65 = v64[4];
      v66 = v65 == v136;
      v67 = v65 != v136;
      if (v66)
      {
        v68 = 2;
      }

      else
      {
        v68 = 3;
      }

      if (v64[5] != DWORD1(v136))
      {
        v67 = v68;
      }

      v70 = v64[6];
      v69 = v64[7];
      if (v70 != DWORD2(v136))
      {
        v67 |= 4u;
      }

      v71 = v69 == HIDWORD(v136) ? v67 : v67 | 8;
      *v59 = v71;
      if (!v71)
      {
        break;
      }

      v72 = [MEMORY[0x277CD72B0] temporaryMatrixWithCommandBuffer:v31 matrixDescriptor:v119];
      v73 = *v61;
      *v61 = v72;

      data = [*v61 data];
      v75 = *v60;
      *v60 = data;
LABEL_35:

      v62 = 0;
      v59 = v131;
      v61 = &v139;
      v60 = v141;
      v58 = 1;
      if ((v63 & 1) == 0)
      {
        goto LABEL_38;
      }
    }

    if (v63)
    {
      v76 = [deviceMemory3 objectAtIndexedSubscript:v28];
      v75 = v140;
      v140 = v76;
      goto LABEL_35;
    }

    v77 = [deviceMemory4 objectAtIndexedSubscript:v28];
    v78 = v141[v58 - 1];
    v141[v58 - 1] = v77;

LABEL_38:
    v79 = __clz(__rbit32(v136)) << 16;
    if (((v136 - 1) & v136) != 0)
    {
      v80 = -65536;
    }

    else
    {
      v80 = v79;
    }

    v137 = v80 & 0xFFFF0000 | v136;
    gradientKernel = [v118 gradientKernel];
    maxTotalThreadsPerThreadgroup = [gradientKernel maxTotalThreadsPerThreadgroup];

    if (maxTotalThreadsPerThreadgroup >> 6 >= v136 * SDWORD1(v136))
    {
      v83 = v136 * SDWORD1(v136);
    }

    else
    {
      v83 = maxTotalThreadsPerThreadgroup >> 6;
    }

    v116 = (SHIDWORD(v136) + 7) >> 3;
    v84 = (SDWORD2(v136) + 7) >> 3;
    v85 = (v83 + v136 * SDWORD1(v136) - 1) / v83;
    v86 = [v31 computeCommandEncoderWithDispatchType:0];
    gradientKernel2 = [v118 gradientKernel];
    [v86 setComputePipelineState:gradientKernel2];

    v88 = [deviceMemory objectAtIndexedSubscript:v28];
    [v86 setBuffer:v88 offset:0 atIndex:0];

    v89 = [deviceMemory2 objectAtIndexedSubscript:v28];
    v90 = 1;
    [v86 setBuffer:v89 offset:0 atIndex:1];

    [v86 setBuffer:v140 offset:0 atIndex:2];
    [v86 setBuffer:v141[0] offset:0 atIndex:3];
    [v86 setBytes:__b length:68 atIndex:4];
    *v125 = v116;
    *&v125[8] = v84;
    *&v125[16] = v85;
    v129 = v109;
    v130 = v83;
    [v86 dispatchThreadgroups:v125 threadsPerThreadgroup:&v129];
    [v86 endEncoding];
    v91 = 0;
    v127 = 0u;
    v128 = 0u;
    *&v126[12] = 0u;
    *v125 = 0;
    *&v125[4] = v134;
    *&v125[20] = v135;
    v92 = v132;
    v93 = &v140;
    *v126 = v136;
    do
    {
      v94 = v90;
      v95 = *v92;
      if (v95)
      {
        WORD4(v127) = v95;
        WORD5(v127) = v91;
        gpuPipelineStatesArithmeticReduceGradientAny = [(MLCDeviceGPU *)selfCopy gpuPipelineStatesArithmeticReduceGradientAny];
        v97 = [gpuPipelineStatesArithmeticReduceGradientAny objectAtIndexedSubscript:v28];
        maxTotalThreadsPerThreadgroup2 = [v97 maxTotalThreadsPerThreadgroup];

        v99 = [v31 computeCommandEncoderWithDispatchType:0];
        gpuPipelineStatesArithmeticReduceGradientAny2 = [(MLCDeviceGPU *)selfCopy gpuPipelineStatesArithmeticReduceGradientAny];
        v101 = [gpuPipelineStatesArithmeticReduceGradientAny2 objectAtIndexedSubscript:v28];
        [v99 setComputePipelineState:v101];

        [v99 setBuffer:*v93 offset:0 atIndex:0];
        if (v94)
        {
          v102 = deviceMemory3;
        }

        else
        {
          v102 = deviceMemory4;
        }

        v103 = [v102 objectAtIndexedSubscript:v28];
        [v99 setBuffer:v103 offset:0 atIndex:1];

        [v99 setThreadgroupMemoryLength:GPU_AlignForThreadGroupMemorySize(4 * maxTotalThreadsPerThreadgroup2) atIndex:0];
        [v99 setBytes:v125 length:96 atIndex:2];
        v129 = vdupq_n_s64(1uLL);
        v130 = 1;
        v123 = maxTotalThreadsPerThreadgroup2;
        v124 = v129;
        [v99 dispatchThreadgroups:&v129 threadsPerThreadgroup:&v123];
        [v99 endEncoding];
      }

      v90 = 0;
      v91 = 1;
      v92 = v131;
      v93 = v141;
    }

    while ((v94 & 1) != 0);

    for (i = 8; i != -8; i -= 8)
    {
    }

    v105 = 1;
    v21 = v117;
    shape2 = v110;
    do
    {
    }

    while (v105 != -1);

    ++v28;
    self = selfCopy;
  }

  while (v28 < [(MLCDeviceGPU *)selfCopy numDevicesToUse]);
LABEL_56:

  v106 = *MEMORY[0x277D85DE8];
}

- (void)dispatchForwardScatterLayer:(id)layer sourceTensors:(id)tensors resultTensor:(id)tensor forTraining:(BOOL)training
{
  layerCopy = layer;
  tensorsCopy = tensors;
  tensorCopy = tensor;
  [(MLCDeviceGPU *)self allocateResultTensor:tensorCopy];
  v11 = [tensorsCopy objectAtIndexedSubscript:2];
  deviceMemory = [v11 deviceMemory];

  v12 = [tensorsCopy objectAtIndexedSubscript:1];
  deviceMemory2 = [v12 deviceMemory];

  v13 = [tensorsCopy objectAtIndexedSubscript:0];
  deviceMemory3 = [v13 deviceMemory];

  deviceMemory4 = [tensorCopy deviceMemory];
  v14 = [tensorsCopy objectAtIndexedSubscript:2];

  if ([(MLCDeviceGPU *)self numDevicesToUse])
  {
    v15 = 0;
    selfCopy = self;
    v107 = v14;
    while (1)
    {
      v16 = [layerCopy objectAtIndexedSubscript:v15];
      gpuCommandBufferList = [(MLCDeviceGPU *)self gpuCommandBufferList];
      v18 = [gpuCommandBufferList objectAtIndexedSubscript:v15];

      v19 = [v18 computeCommandEncoderWithDispatchType:0];
      v109 = v15;
      v110 = v16;
      v105 = v19;
      v106 = v18;
      if (v14 == tensorCopy)
      {
        gpuPipelineStatesMemFillFloat = [(MLCDeviceGPU *)self gpuPipelineStatesMemFillFloat];
        v27 = [gpuPipelineStatesMemFillFloat objectAtIndexedSubscript:v15];
        maxTotalThreadsPerThreadgroup = [v27 maxTotalThreadsPerThreadgroup];

        v111.i64[0] = 0;
        v28 = [tensorsCopy objectAtIndexedSubscript:2];
        descriptor = [v28 descriptor];
        shape = [descriptor shape];
        if ([shape count] == 1)
        {
          batchSize = 1;
        }

        else
        {
          batchSize = [v16 batchSize];
        }

        for (i = 1; ; ++i)
        {
          v46 = [tensorsCopy objectAtIndexedSubscript:2];
          descriptor2 = [v46 descriptor];
          shape2 = [descriptor2 shape];
          v49 = [shape2 count];

          if (i >= v49)
          {
            break;
          }

          v50 = [tensorsCopy objectAtIndexedSubscript:2];
          descriptor3 = [v50 descriptor];
          shape3 = [descriptor3 shape];
          v53 = [shape3 objectAtIndexedSubscript:i];
          batchSize *= [v53 unsignedIntegerValue];
        }

        v111.i32[0] = 0;
        v111.i32[1] = batchSize;
        gpuPipelineStatesMemFillFloat2 = [(MLCDeviceGPU *)self gpuPipelineStatesMemFillFloat];
        v55 = [gpuPipelineStatesMemFillFloat2 objectAtIndexedSubscript:v109];
        [v19 setComputePipelineState:v55];

        v43 = [deviceMemory4 objectAtIndexedSubscript:v109];
        [v19 setBuffer:v43 offset:0 atIndex:0];
        [v19 setBytes:&v111 length:8 atIndex:1];
        *&v113[0] = (maxTotalThreadsPerThreadgroup + ((batchSize + 3) >> 2) - 1) / maxTotalThreadsPerThreadgroup;
        *(v113 + 8) = vdupq_n_s64(1uLL);
        v116 = maxTotalThreadsPerThreadgroup;
        v117 = *(v113 + 8);
        [v19 dispatchThreadgroups:v113 threadsPerThreadgroup:&v116];
      }

      else
      {
        gpuPipelineStatesMemCopy = [(MLCDeviceGPU *)self gpuPipelineStatesMemCopy];
        v21 = [gpuPipelineStatesMemCopy objectAtIndexedSubscript:v15];
        maxTotalThreadsPerThreadgroup2 = [v21 maxTotalThreadsPerThreadgroup];

        v111.i32[0] = 0;
        v22 = [tensorsCopy objectAtIndexedSubscript:0];
        descriptor4 = [v22 descriptor];
        shape4 = [descriptor4 shape];
        if ([shape4 count] == 1)
        {
          batchSize2 = 1;
        }

        else
        {
          batchSize2 = [v16 batchSize];
        }

        for (j = 1; ; ++j)
        {
          v33 = [tensorsCopy objectAtIndexedSubscript:2];
          descriptor5 = [v33 descriptor];
          shape5 = [descriptor5 shape];
          v36 = [shape5 count];

          if (j >= v36)
          {
            break;
          }

          v37 = [tensorsCopy objectAtIndexedSubscript:2];
          descriptor6 = [v37 descriptor];
          shape6 = [descriptor6 shape];
          v40 = [shape6 objectAtIndexedSubscript:j];
          batchSize2 *= [v40 unsignedIntegerValue];
        }

        v111.i32[0] = 4 * batchSize2;
        gpuPipelineStatesMemCopy2 = [(MLCDeviceGPU *)self gpuPipelineStatesMemCopy];
        v42 = [gpuPipelineStatesMemCopy2 objectAtIndexedSubscript:v109];
        [v19 setComputePipelineState:v42];

        v43 = [deviceMemory objectAtIndexedSubscript:v109];
        v44 = [deviceMemory4 objectAtIndexedSubscript:v109];
        [v19 setBuffer:v43 offset:0 atIndex:0];
        [v19 setBuffer:v44 offset:0 atIndex:1];
        [v19 setBytes:&v111 length:4 atIndex:2];
        *&v113[0] = (maxTotalThreadsPerThreadgroup2 + (batchSize2 & 0x3FFFFFFF) - 1) / maxTotalThreadsPerThreadgroup2;
        *(v113 + 8) = vdupq_n_s64(1uLL);
        v116 = maxTotalThreadsPerThreadgroup2;
        v117 = *(v113 + 8);
        [v19 dispatchThreadgroups:v113 threadsPerThreadgroup:&v116];
      }

      v114 = 0u;
      v115 = 0u;
      memset(v113, 0, sizeof(v113));
      v56 = [tensorsCopy objectAtIndexedSubscript:1];
      descriptor7 = [v56 descriptor];
      shape7 = [descriptor7 shape];
      DWORD1(v115) = [shape7 count];

      LODWORD(v115) = [v110 scatterGatherDimension];
      DWORD2(v115) = [v110 scatterReduceType] == 1;
      v59 = [tensorsCopy objectAtIndexedSubscript:1];
      descriptor8 = [v59 descriptor];
      shape8 = [descriptor8 shape];
      v62 = [shape8 count];

      if (v62 >= 1)
      {
        v63 = v113 + v62;
        do
        {
          v64 = v62 - 1;
          v65 = 1;
          v66 = [tensorsCopy objectAtIndexedSubscript:1];
          descriptor9 = [v66 descriptor];
          shape9 = [descriptor9 shape];
          v69 = [shape9 objectAtIndexedSubscript:v62 - 1];
          *(v63 - 1) = [v69 unsignedIntegerValue];

          v70 = [tensorsCopy objectAtIndexedSubscript:1];
          descriptor10 = [v70 descriptor];
          shape10 = [descriptor10 shape];
          if (v62 != [shape10 count])
          {
            v65 = v63[4] * *v63;
          }

          v63[3] = v65;

          --v63;
          --v62;
        }

        while ((v64 + 1) > 1);
      }

      descriptor11 = [tensorCopy descriptor];
      shape11 = [descriptor11 shape];
      v75 = [shape11 count];

      if (v75 >= 1)
      {
        v76 = &v114 + v75;
        do
        {
          v77 = v75 - 1;
          descriptor12 = [tensorCopy descriptor];
          shape12 = [descriptor12 shape];
          v80 = [shape12 objectAtIndexedSubscript:v75 - 1];
          *(v76 - 5) = [v80 unsignedIntegerValue];

          descriptor13 = [tensorCopy descriptor];
          shape13 = [descriptor13 shape];
          if (v75 == [shape13 count])
          {
            v83 = 1;
          }

          else
          {
            v83 = *v76 * *(v76 - 4);
          }

          *--v76 = v83;

          --v75;
        }

        while ((v77 + 1) > 1);
      }

      if (SDWORD1(v115) <= 1)
      {
        v86 = 1;
      }

      else
      {
        v84 = __clz(__rbit32(LOWORD(v113[0]))) << 16;
        if (((LOWORD(v113[0]) - 1) & v113[0]) != 0)
        {
          v85 = -65536;
        }

        else
        {
          v85 = v84;
        }

        v86 = v85 & 0xFFFF0000 | LOWORD(v113[0]);
      }

      HIDWORD(v115) = v86;
      forwardKernel = [v110 forwardKernel];
      maxTotalThreadsPerThreadgroup3 = [forwardKernel maxTotalThreadsPerThreadgroup];

      if (SDWORD1(v115) > 2)
      {
        if (DWORD1(v115) == 3)
        {
          v89 = SDWORD1(v113[0]) * SLODWORD(v113[0]);
          v91 = SDWORD2(v113[0]);
          v90 = 1;
        }

        else
        {
          v89 = 1;
          v90 = 1;
          v91 = 1;
          if (DWORD1(v115) == 4)
          {
            v89 = SDWORD1(v113[0]) * SLODWORD(v113[0]);
            v91 = SDWORD2(v113[0]);
            v90 = (SHIDWORD(v113[0]) + 7) >> 3;
          }
        }

        goto LABEL_45;
      }

      if (DWORD1(v115) == 1)
      {
        break;
      }

      v89 = 1;
      v90 = 1;
      v91 = 1;
      if (DWORD1(v115) == 2)
      {
        v89 = SDWORD1(v113[0]) * SLODWORD(v113[0]);
LABEL_43:
        v90 = 1;
        v91 = 1;
      }

LABEL_45:
      v92 = maxTotalThreadsPerThreadgroup3 >> 6;
      if (v89 < maxTotalThreadsPerThreadgroup3 >> 6)
      {
        v92 = v89;
      }

      if (v92 <= 1)
      {
        v93 = 1;
      }

      else
      {
        v93 = v92;
      }

      if (v107 == tensorCopy)
      {
        [v110 gradientKernel];
      }

      else
      {
        [v110 forwardKernel];
      }
      v94 = ;
      [v105 setComputePipelineState:v94];

      v95 = [deviceMemory2 objectAtIndexedSubscript:v109];
      [v105 setBuffer:v95 offset:0 atIndex:0];

      v96 = [deviceMemory3 objectAtIndexedSubscript:v109];
      [v105 setBuffer:v96 offset:0 atIndex:1];

      v97 = [deviceMemory4 objectAtIndexedSubscript:v109];
      [v105 setBuffer:v97 offset:0 atIndex:2];

      [v105 setBytes:v113 length:80 atIndex:3];
      v116 = v90;
      *&v117 = (v91 + 7) >> 3;
      *(&v117 + 1) = (v89 + v93 - 1) / v93;
      v111 = vdupq_n_s64(8uLL);
      v112 = v93;
      [v105 dispatchThreadgroups:&v116 threadsPerThreadgroup:&v111];
      [v105 endEncoding];

      v15 = v109 + 1;
      self = selfCopy;
      v14 = v107;
      if (v109 + 1 >= [(MLCDeviceGPU *)selfCopy numDevicesToUse])
      {
        goto LABEL_54;
      }
    }

    v89 = SLODWORD(v113[0]);
    goto LABEL_43;
  }

LABEL_54:
}

- (void)dispatchForwardGatherLayer:(id)layer sourceTensors:(id)tensors resultTensor:(id)tensor forTraining:(BOOL)training
{
  layerCopy = layer;
  tensorsCopy = tensors;
  tensorCopy = tensor;
  [(MLCDeviceGPU *)self allocateResultTensor:tensorCopy];
  v11 = [tensorsCopy objectAtIndexedSubscript:0];
  deviceMemory = [v11 deviceMemory];

  v12 = [tensorsCopy objectAtIndexedSubscript:1];
  deviceMemory2 = [v12 deviceMemory];

  deviceMemory3 = [tensorCopy deviceMemory];
  if ([(MLCDeviceGPU *)self numDevicesToUse])
  {
    v13 = 0;
    v59 = vdupq_n_s64(8uLL);
    selfCopy = self;
    while (1)
    {
      v14 = [layerCopy objectAtIndexedSubscript:v13];
      gpuCommandBufferList = [(MLCDeviceGPU *)self gpuCommandBufferList];
      v66 = [gpuCommandBufferList objectAtIndexedSubscript:v13];

      v71 = 0u;
      memset(v72, 0, 28);
      memset(v70, 0, sizeof(v70));
      v16 = [tensorsCopy objectAtIndexedSubscript:1];
      descriptor = [v16 descriptor];
      shape = [descriptor shape];
      v72[5] = [shape count];

      v65 = v14;
      v72[4] = [v14 scatterGatherDimension];
      v19 = [tensorsCopy objectAtIndexedSubscript:0];
      descriptor2 = [v19 descriptor];
      shape2 = [descriptor2 shape];
      v22 = [shape2 count];

      if (v22 >= 1)
      {
        v23 = v70 + v22;
        do
        {
          v24 = v22 - 1;
          v25 = [tensorsCopy objectAtIndexedSubscript:0];
          descriptor3 = [v25 descriptor];
          shape3 = [descriptor3 shape];
          v28 = [shape3 objectAtIndexedSubscript:v22 - 1];
          *(v23 - 1) = [v28 unsignedIntegerValue];

          v29 = [tensorsCopy objectAtIndexedSubscript:0];
          descriptor4 = [v29 descriptor];
          shape4 = [descriptor4 shape];
          if (v22 == [shape4 count])
          {
            v32 = 1;
          }

          else
          {
            v32 = v23[4] * *v23;
          }

          v23[3] = v32;

          --v23;
          --v22;
        }

        while ((v24 + 1) > 1);
      }

      descriptor5 = [tensorCopy descriptor];
      shape5 = [descriptor5 shape];
      v35 = [shape5 count];

      if (v35 >= 1)
      {
        v36 = &v72[v35];
        do
        {
          v37 = v35 - 1;
          descriptor6 = [tensorCopy descriptor];
          shape6 = [descriptor6 shape];
          v40 = [shape6 objectAtIndexedSubscript:v35 - 1];
          *(v36 - 5) = [v40 unsignedIntegerValue];

          descriptor7 = [tensorCopy descriptor];
          shape7 = [descriptor7 shape];
          if (v35 == [shape7 count])
          {
            v43 = 1;
          }

          else
          {
            v43 = *v36 * *(v36 - 4);
          }

          *--v36 = v43;

          --v35;
        }

        while ((v37 + 1) > 1);
      }

      if (v72[5] <= 1)
      {
        v46 = 1;
      }

      else
      {
        v44 = __clz(__rbit32(v71)) << 16;
        if (((v71 - 1) & v71) != 0)
        {
          v45 = -65536;
        }

        else
        {
          v45 = v44;
        }

        v46 = v45 & 0xFFFF0000 | v71;
      }

      v72[6] = v46;
      forwardKernel = [v65 forwardKernel];
      maxTotalThreadsPerThreadgroup = [forwardKernel maxTotalThreadsPerThreadgroup];

      if (v72[5] > 2)
      {
        if (v72[5] == 3)
        {
          v49 = SDWORD1(v71) * v71;
          v51 = SDWORD2(v71);
          v50 = 1;
        }

        else
        {
          v49 = 1;
          v50 = 1;
          v51 = 1;
          if (v72[5] == 4)
          {
            v49 = SDWORD1(v71) * v71;
            v51 = SDWORD2(v71);
            v50 = (SHIDWORD(v71) + 7) >> 3;
          }
        }

        goto LABEL_31;
      }

      if (v72[5] == 1)
      {
        break;
      }

      v49 = 1;
      v50 = 1;
      v51 = 1;
      if (v72[5] == 2)
      {
        v49 = SDWORD1(v71) * v71;
LABEL_29:
        v50 = 1;
        v51 = 1;
      }

LABEL_31:
      v52 = maxTotalThreadsPerThreadgroup >> 6;
      if (v49 < maxTotalThreadsPerThreadgroup >> 6)
      {
        v52 = v49;
      }

      if (v52 <= 1)
      {
        v53 = 1;
      }

      else
      {
        v53 = v52;
      }

      v54 = [v66 computeCommandEncoderWithDispatchType:0];
      if ([v65 metalKernelType] == 13)
      {
        [v65 gradientKernel];
      }

      else
      {
        [v65 forwardKernel];
      }
      v55 = ;
      [v54 setComputePipelineState:v55];

      v56 = [deviceMemory2 objectAtIndexedSubscript:v13];
      [v54 setBuffer:v56 offset:0 atIndex:0];

      v57 = [deviceMemory objectAtIndexedSubscript:v13];
      [v54 setBuffer:v57 offset:0 atIndex:1];

      v58 = [deviceMemory3 objectAtIndexedSubscript:v13];
      [v54 setBuffer:v58 offset:0 atIndex:2];

      [v54 setBytes:v70 length:76 atIndex:3];
      v69[0] = v50;
      v69[1] = (v51 + 7) >> 3;
      v69[2] = (v49 + v53 - 1) / v53;
      v67 = v59;
      v68 = v53;
      [v54 dispatchThreadgroups:v69 threadsPerThreadgroup:&v67];
      [v54 endEncoding];

      ++v13;
      self = selfCopy;
      if (v13 >= [(MLCDeviceGPU *)selfCopy numDevicesToUse])
      {
        goto LABEL_40;
      }
    }

    v49 = v71;
    goto LABEL_29;
  }

LABEL_40:
}

- (void)dispatchForwardEmbeddingLayer:(id)layer weight:(id)weight sourceTensor:(id)tensor resultTensor:(id)resultTensor
{
  layerCopy = layer;
  weightCopy = weight;
  tensorCopy = tensor;
  resultTensorCopy = resultTensor;
  v59 = tensorCopy;
  deviceMemory = [tensorCopy deviceMemory];
  [(MLCDeviceGPU *)self allocateResultTensor:resultTensorCopy];
  v54 = resultTensorCopy;
  deviceMemory2 = [resultTensorCopy deviceMemory];
  if ([(MLCDeviceGPU *)self numDevicesToUse])
  {
    v14 = 0;
    v55 = vdupq_n_s64(1uLL);
    v56 = deviceMemory;
    selfCopy = self;
    do
    {
      v15 = [layerCopy objectAtIndexedSubscript:v14];
      gpuCommandBufferList = [(MLCDeviceGPU *)self gpuCommandBufferList];
      v62 = [gpuCommandBufferList objectAtIndexedSubscript:v14];

      v68 = 0;
      v66 = 0u;
      v67 = 0u;
      embeddingParams = [v15 embeddingParams];

      if (embeddingParams)
      {
        embeddingParams2 = [v15 embeddingParams];
        v19 = [embeddingParams2 objectAtIndexedSubscript:0];
        [v19 floatValue];
        LODWORD(v67) = v20;

        embeddingParams3 = [v15 embeddingParams];
        v22 = [embeddingParams3 objectAtIndexedSubscript:1];
        [v22 floatValue];
        DWORD1(v67) = v23;

        v24 = *(&v67 + 1);
      }

      else
      {
        *&v67 = 0;
        v24 = 0.0;
      }

      *(&v67 + 2) = 1.0 / v24;
      descriptor = [weightCopy descriptor];
      shape = [descriptor shape];
      descriptor2 = [weightCopy descriptor];
      v28 = [shape objectAtIndexedSubscript:{objc_msgSend(descriptor2, "dimensionCount") - 1}];
      v29 = weightCopy;
      unsignedIntegerValue = [v28 unsignedIntegerValue];

      descriptor3 = [v59 descriptor];
      tensorAllocationSizeInBytes = [descriptor3 tensorAllocationSizeInBytes];
      descriptor4 = [v59 descriptor];
      v34 = tensorAllocationSizeInBytes / +[MLCTensorDescriptor elementByteCount:](MLCTensorDescriptor, "elementByteCount:", [descriptor4 dataType]);

      *&v66 = __PAIR64__(v34, unsignedIntegerValue);
      weightCopy = v29;
      context = objc_autoreleasePoolPush();
      [v15 batchSize];
      v35 = [v62 computeCommandEncoderWithDispatchType:0];
      deviceMemory = v56;
      self = selfCopy;
      if (embeddingParams)
      {
        gpuPipelineStatesEmbeddingRenormalizeWeights = [(MLCDeviceGPU *)selfCopy gpuPipelineStatesEmbeddingRenormalizeWeights];
        v37 = [gpuPipelineStatesEmbeddingRenormalizeWeights objectAtIndexedSubscript:v14];
        maxTotalThreadsPerThreadgroup = [v37 maxTotalThreadsPerThreadgroup];

        gpuPipelineStatesEmbeddingRenormalizeWeights2 = [(MLCDeviceGPU *)selfCopy gpuPipelineStatesEmbeddingRenormalizeWeights];
        v40 = [gpuPipelineStatesEmbeddingRenormalizeWeights2 objectAtIndexedSubscript:v14];
        [v35 setComputePipelineState:v40];

        v41 = [v56 objectAtIndexedSubscript:v14];
        [v35 setBuffer:v41 offset:0 atIndex:0];

        deviceMemory3 = [weightCopy deviceMemory];
        v43 = [deviceMemory3 objectAtIndexedSubscript:v14];
        [v35 setBuffer:v43 offset:0 atIndex:2];

        [v35 setBytes:&v66 length:40 atIndex:3];
        [v35 setThreadgroupMemoryLength:GPU_AlignForThreadGroupMemorySize(4 * maxTotalThreadsPerThreadgroup) atIndex:0];
        v64 = vdupq_n_s64(1uLL);
        *v65 = v64;
        *&v65[16] = 1;
        v63 = maxTotalThreadsPerThreadgroup;
        [v35 dispatchThreadgroups:v65 threadsPerThreadgroup:&v63];
      }

      gpuPipelineStatesEmbeddingForward = [(MLCDeviceGPU *)selfCopy gpuPipelineStatesEmbeddingForward];
      v45 = [gpuPipelineStatesEmbeddingForward objectAtIndexedSubscript:v14];
      maxTotalThreadsPerThreadgroup2 = [v45 maxTotalThreadsPerThreadgroup];

      gpuPipelineStatesEmbeddingForward2 = [(MLCDeviceGPU *)selfCopy gpuPipelineStatesEmbeddingForward];
      v48 = [gpuPipelineStatesEmbeddingForward2 objectAtIndexedSubscript:v14];
      [v35 setComputePipelineState:v48];

      v49 = [v56 objectAtIndexedSubscript:v14];
      [v35 setBuffer:v49 offset:0 atIndex:0];

      v50 = [deviceMemory2 objectAtIndexedSubscript:v14];
      [v35 setBuffer:v50 offset:0 atIndex:1];

      deviceMemory4 = [weightCopy deviceMemory];
      v52 = [deviceMemory4 objectAtIndexedSubscript:v14];
      [v35 setBuffer:v52 offset:0 atIndex:2];

      [v35 setBytes:&v66 length:40 atIndex:3];
      *v65 = v34;
      *&v65[8] = v55;
      v63 = maxTotalThreadsPerThreadgroup2;
      v64 = v55;
      [v35 dispatchThreadgroups:v65 threadsPerThreadgroup:&v63];
      [v35 endEncoding];

      objc_autoreleasePoolPop(context);
      v53 = [v56 objectAtIndexedSubscript:v14];
      [v15 setSource:v53];

      ++v14;
    }

    while (v14 < [(MLCDeviceGPU *)selfCopy numDevicesToUse]);
  }
}

- (void)dispatchGradientEmbeddingLayer:(id)layer sourceGradientTensor:(id)tensor
{
  layerCopy = layer;
  tensorCopy = tensor;
  deviceMemory = [tensorCopy deviceMemory];
  if ([(MLCDeviceGPU *)self numDevicesToUse])
  {
    v6 = 0;
    v29 = vdupq_n_s64(1uLL);
    do
    {
      v7 = [layerCopy objectAtIndexedSubscript:{v6, *&v29}];
      gpuCommandBufferList = [(MLCDeviceGPU *)self gpuCommandBufferList];
      v9 = [gpuCommandBufferList objectAtIndexedSubscript:v6];

      longLongValue = 0;
      memset(v38, 0, sizeof(v38));
      descriptor = [tensorCopy descriptor];
      shape = [descriptor shape];
      descriptor2 = [tensorCopy descriptor];
      v13 = [shape objectAtIndexedSubscript:{objc_msgSend(descriptor2, "dimensionCount") - 1}];
      unsignedIntegerValue = [v13 unsignedIntegerValue];

      source = [v7 source];
      gradientForWeights = [v7 gradientForWeights];
      LODWORD(v38[0]) = unsignedIntegerValue;
      DWORD1(v38[0]) = [source length] >> 3;
      DWORD2(v38[0]) = [gradientForWeights length] >> 2;
      paddingIndex = [v7 paddingIndex];
      HIDWORD(v38[0]) = paddingIndex != 0;

      if (HIDWORD(v38[0]))
      {
        paddingIndex2 = [v7 paddingIndex];
        longLongValue = [paddingIndex2 longLongValue];
      }

      context = objc_autoreleasePoolPush();
      gpuPipelineStatesEmbeddingGradient = [(MLCDeviceGPU *)self gpuPipelineStatesEmbeddingGradient];
      v20 = [gpuPipelineStatesEmbeddingGradient objectAtIndexedSubscript:v6];
      maxTotalThreadsPerThreadgroup = [v20 maxTotalThreadsPerThreadgroup];

      v22 = [v9 computeCommandEncoderWithDispatchType:0];
      gpuPipelineStatesEmbeddingGradient2 = [(MLCDeviceGPU *)self gpuPipelineStatesEmbeddingGradient];
      [gpuPipelineStatesEmbeddingGradient2 objectAtIndexedSubscript:v6];
      selfCopy = self;
      v26 = v25 = v9;
      [v22 setComputePipelineState:v26];

      source2 = [v7 source];
      [v22 setBuffer:source2 offset:0 atIndex:0];

      v28 = [deviceMemory objectAtIndexedSubscript:v6];
      [v22 setBuffer:v28 offset:0 atIndex:1];

      [v22 setBuffer:gradientForWeights offset:0 atIndex:2];
      [v22 setBytes:v38 length:40 atIndex:3];
      v35 = v29;
      v36 = v29;
      v37 = 1;
      v34 = maxTotalThreadsPerThreadgroup;
      [v22 dispatchThreadgroups:&v36 threadsPerThreadgroup:&v34];
      [v22 endEncoding];

      objc_autoreleasePoolPop(context);
      self = selfCopy;

      ++v6;
    }

    while (v6 < [(MLCDeviceGPU *)selfCopy numDevicesToUse]);
  }
}

- (void)dispatchForwardSliceLayer:(id)layer sourceTensor:(id)tensor resultTensor:(id)resultTensor forTraining:(BOOL)training
{
  v82 = *MEMORY[0x277D85DE8];
  layerCopy = layer;
  tensorCopy = tensor;
  resultTensorCopy = resultTensor;
  deviceMemory = [tensorCopy deviceMemory];
  [(MLCDeviceGPU *)self allocateResultTensor:resultTensorCopy];
  deviceMemory2 = [resultTensorCopy deviceMemory];
  if ([(MLCDeviceGPU *)self numDevicesToUse])
  {
    v11 = 0;
    v61 = &v75;
    selfCopy = self;
    do
    {
      v12 = [layerCopy objectAtIndexedSubscript:{v11, v61}];
      gpuCommandBufferList = [(MLCDeviceGPU *)self gpuCommandBufferList];
      v68 = v11;
      v67 = [gpuCommandBufferList objectAtIndexedSubscript:v11];

      context = objc_autoreleasePoolPush();
      v77 = 0;
      v75 = 0u;
      memset(v76, 0, sizeof(v76));
      memset(v74, 0, sizeof(v74));
      descriptor = [resultTensorCopy descriptor];
      shape = [descriptor shape];
      v69 = [shape count];

      descriptor2 = [resultTensorCopy descriptor];
      shape2 = [descriptor2 shape];
      v18 = [shape2 count];

      if (v18)
      {
        v19 = 0;
        v20 = v76 - v69;
        do
        {
          stride = [v12 stride];
          v22 = [stride objectAtIndexedSubscript:v19];
          *(v20 - 12) = [v22 unsignedIntegerValue];

          begin = [v12 begin];
          v24 = [begin objectAtIndexedSubscript:v19];
          *(v20 - 8) = [v24 unsignedIntegerValue];

          descriptor3 = [tensorCopy descriptor];
          shape3 = [descriptor3 shape];
          v27 = [shape3 objectAtIndexedSubscript:v19];
          *(v20 - 4) = [v27 unsignedIntegerValue];

          descriptor4 = [tensorCopy descriptor];
          stride2 = [descriptor4 stride];
          v30 = [stride2 objectAtIndexedSubscript:v19];
          *v20 = [v30 unsignedIntegerValue] >> 2;

          v20[4] = 0;
          descriptor5 = [resultTensorCopy descriptor];
          shape4 = [descriptor5 shape];
          v33 = [shape4 objectAtIndexedSubscript:v19];
          v20[8] = [v33 unsignedIntegerValue];

          descriptor6 = [resultTensorCopy descriptor];
          stride3 = [descriptor6 stride];
          v36 = [stride3 objectAtIndexedSubscript:v19];
          v20[12] = [v36 unsignedIntegerValue] >> 2;

          ++v19;
          descriptor7 = [resultTensorCopy descriptor];
          shape5 = [descriptor7 shape];
          v39 = [shape5 count];

          ++v20;
        }

        while (v19 < v39);
      }

      v40 = v69 - 4;
      if (v69 != 4)
      {
        v41 = v61;
        do
        {
          *(v41 - 12) = 0;
          *(v41 - 8) = 0;
          *(v41 - 4) = 1;
          *v41 = 0;
          *(v41 + 4) = 0;
          *(v41 + 8) = 1;
          *(v41 + 12) = 0;
          v41 = (v41 + 4);
        }

        while (!__CFADD__(v40++, 1));
      }

      LODWORD(v77) = 0;
      forwardKernel = [v12 forwardKernel];
      maxTotalThreadsPerThreadgroup = [forwardKernel maxTotalThreadsPerThreadgroup];

      v45 = 0;
      v80 = xmmword_238D45D80;
      v81 = unk_238D45D90;
      v78 = xmmword_238D45D80;
      v79 = unk_238D45D90;
      do
      {
        v46 = *(&v76[1] + v45 + 3);
        v47 = &v80 + 8 * v45;
        if (maxTotalThreadsPerThreadgroup >= v46)
        {
          *(v47 + 3) = v46;
          v48 = v46;
        }

        else if (v46 % maxTotalThreadsPerThreadgroup)
        {
          *(v47 + 3) = 1;
          v48 = 1;
        }

        else
        {
          *(v47 + 3) = maxTotalThreadsPerThreadgroup;
          v48 = maxTotalThreadsPerThreadgroup;
        }

        v79.i64[v45 + 1] = (v46 + v48 - 1) / v48;
        v49 = v45 + 3;
        --v45;
        maxTotalThreadsPerThreadgroup /= v48;
      }

      while (v49 > 1);
      descriptor8 = [resultTensorCopy descriptor];
      shape6 = [descriptor8 shape];
      v52 = [shape6 count];

      if (v52 == 4)
      {
        v53 = __clz(__rbit32(LOWORD(v76[1]))) << 16;
        if (((LOWORD(v76[1]) - 1) & v76[1]) != 0)
        {
          v54 = -65536;
        }

        else
        {
          v54 = v53;
        }

        HIDWORD(v77) = v54 & 0xFFFF0000 | LOWORD(v76[1]);
        v55 = *(&v78 + 1) * SLODWORD(v76[1]);
      }

      else
      {
        HIDWORD(v77) = 1;
        v55 = *(&v78 + 1);
      }

      v56 = [v67 computeCommandEncoderWithDispatchType:0];
      forwardKernel2 = [v12 forwardKernel];
      [v56 setComputePipelineState:forwardKernel2];

      v58 = [deviceMemory objectAtIndexedSubscript:v68];
      [v56 setBuffer:v58 offset:0 atIndex:0];

      v59 = [deviceMemory2 objectAtIndexedSubscript:v68];
      [v56 setBuffer:v59 offset:0 atIndex:1];

      [v56 setBytes:v74 length:120 atIndex:2];
      v72 = vextq_s8(v79, v79, 8uLL);
      v73 = v55;
      v70 = vextq_s8(v81, v81, 8uLL);
      v71 = *(&v80 + 1);
      [v56 dispatchThreadgroups:&v72 threadsPerThreadgroup:&v70];
      [v56 endEncoding];

      objc_autoreleasePoolPop(context);
      v11 = v68 + 1;
      self = selfCopy;
    }

    while (v68 + 1 < [(MLCDeviceGPU *)selfCopy numDevicesToUse]);
  }

  v60 = *MEMORY[0x277D85DE8];
}

- (void)dispatchForwardFullyConnectedLayer:(id)layer sourceTensor:(id)tensor resultTensor:(id)resultTensor forTraining:(BOOL)training
{
  trainingCopy = training;
  layerCopy = layer;
  tensorCopy = tensor;
  resultTensorCopy = resultTensor;
  deviceMemory = [tensorCopy deviceMemory];
  [(MLCDeviceGPU *)self allocateResultTensor:resultTensorCopy];
  deviceMemory2 = [resultTensorCopy deviceMemory];
  if ([(MLCDeviceGPU *)self numDevicesToUse])
  {
    v11 = 0;
    v107 = 1;
    v108 = resultTensorCopy;
    v98 = tensorCopy;
    selfCopy = self;
    do
    {
      v105 = objc_autoreleasePoolPush();
      v12 = [layerCopy objectAtIndexedSubscript:v11];
      gpuCommandBufferList = [(MLCDeviceGPU *)self gpuCommandBufferList];
      v111 = v11;
      v112 = [gpuCommandBufferList objectAtIndexedSubscript:v11];

      descriptor = [tensorCopy descriptor];
      shape = [descriptor shape];
      v16 = [shape count];

      descriptor2 = [tensorCopy descriptor];
      shape2 = [descriptor2 shape];
      v19 = [shape2 objectAtIndexedSubscript:v16 - 1];
      unsignedIntegerValue = [v19 unsignedIntegerValue];

      descriptor3 = [resultTensorCopy descriptor];
      shape3 = [descriptor3 shape];
      v23 = [shape3 objectAtIndexedSubscript:v16 - 1];
      unsignedIntegerValue2 = [v23 unsignedIntegerValue];

      batchSize = [v12 batchSize];
      if (v16 < 3)
      {
        goto LABEL_8;
      }

      descriptor4 = [tensorCopy descriptor];
      shape4 = [descriptor4 shape];
      v28 = [shape4 objectAtIndexedSubscript:1];
      batchSize *= [v28 unsignedIntegerValue];

      if (v16 == 3)
      {
        goto LABEL_8;
      }

      descriptor5 = [tensorCopy descriptor];
      shape5 = [descriptor5 shape];
      v31 = [shape5 objectAtIndexedSubscript:2];
      batchSize *= [v31 unsignedIntegerValue];

      if (v16 != 4)
      {
LABEL_8:
        v99 = 0;
      }

      else
      {
        descriptor6 = [tensorCopy descriptor];
        shape6 = [descriptor6 shape];
        v33 = [shape6 objectAtIndexedSubscript:2];
        unsignedIntegerValue3 = [v33 unsignedIntegerValue];
        descriptor7 = [tensorCopy descriptor];
        shape7 = [descriptor7 shape];
        v37 = [shape7 objectAtIndexedSubscript:3];
        v38 = [v37 unsignedIntegerValue] * unsignedIntegerValue3;

        if (v38 == 1)
        {
          batchSize = [v12 batchSize];
          tensorCopy = v98;
          descriptor8 = [v98 descriptor];
          shape8 = [descriptor8 shape];
          v99 = 1;
          v41 = [shape8 objectAtIndexedSubscript:1];
          unsignedIntegerValue = [v41 unsignedIntegerValue];

          descriptor9 = [v108 descriptor];
          shape9 = [descriptor9 shape];
          v44 = [shape9 objectAtIndexedSubscript:1];
          unsignedIntegerValue2 = [v44 unsignedIntegerValue];
        }

        else
        {
          v99 = 0;
          tensorCopy = v98;
        }
      }

      if ([v12 totalElementsPerChannel] != batchSize)
      {
        deviceList = [(MLCDeviceGPU *)selfCopy deviceList];
        v46 = [deviceList objectAtIndexedSubscript:v111];

        v47 = [objc_alloc(MEMORY[0x277CD75E0]) initWithDevice:v46 transposeLeft:0 transposeRight:1 resultRows:batchSize resultColumns:unsignedIntegerValue2 interiorColumns:unsignedIntegerValue alpha:1.0 beta:0.0];
        forwardStatisticsKernel = [v12 forwardStatisticsKernel];
        [forwardStatisticsKernel setObject:v47 atIndexedSubscript:0];

        v49 = [MEMORY[0x277CBEBF8] mutableCopy];
        [v12 setGradientStatisticsKernel:v49];

        [v12 setTotalElementsPerChannel:batchSize];
      }

      v50 = unsignedIntegerValue2;
      v51 = MEMORY[0x277CD7258];
      descriptor10 = [tensorCopy descriptor];
      v53 = [descriptor10 elementByteCount] * unsignedIntegerValue;
      descriptor11 = [tensorCopy descriptor];
      v55 = [v51 matrixDescriptorWithRows:batchSize columns:unsignedIntegerValue rowBytes:v53 dataType:{GPU_GetDataType(objc_msgSend(descriptor11, "dataType"))}];

      v56 = unsignedIntegerValue;
      v57 = objc_alloc(MEMORY[0x277CD7250]);
      v58 = batchSize;
      v59 = v111;
      v60 = [deviceMemory objectAtIndexedSubscript:v111];
      v104 = v55;
      v110 = [v57 initWithBuffer:v60 descriptor:v55];

      v61 = MEMORY[0x277CD7258];
      descriptor12 = [v108 descriptor];
      v63 = [descriptor12 elementByteCount] * v50;
      descriptor13 = [v108 descriptor];
      v65 = [v61 matrixDescriptorWithRows:v58 columns:v50 rowBytes:v63 dataType:{GPU_GetDataType(objc_msgSend(descriptor13, "dataType"))}];

      v66 = objc_alloc(MEMORY[0x277CD7250]);
      v67 = [deviceMemory2 objectAtIndexedSubscript:v111];
      v68 = [v66 initWithBuffer:v67 descriptor:v65];

      weightsDataType = [v12 weightsDataType];
      v70 = [MEMORY[0x277CD7258] matrixDescriptorWithRows:v50 columns:v56 rowBytes:+[MLCTensorDescriptor elementByteCount:](MLCTensorDescriptor dataType:{"elementByteCount:", weightsDataType) * v56, GPU_GetDataType(weightsDataType)}];
      v71 = objc_alloc(MEMORY[0x277CD7250]);
      exportableState = [v12 exportableState];
      v73 = [exportableState objectAtIndexedSubscript:0];
      v102 = v70;
      v74 = [v71 initWithBuffer:v73 descriptor:v70];

      forwardStatisticsKernel2 = [v12 forwardStatisticsKernel];
      v76 = [forwardStatisticsKernel2 objectAtIndexedSubscript:0];

      v103 = v68;
      v77 = v68;
      resultTensorCopy = v108;
      [v76 encodeToCommandBuffer:v112 leftMatrix:v110 rightMatrix:v74 resultMatrix:v77];
      exportableState2 = [v12 exportableState];
      v79 = [exportableState2 count];

      if (v79 >= 2)
      {
        context = objc_autoreleasePoolPush();
        descriptor14 = [v108 descriptor];
        shape10 = [descriptor14 shape];
        [v12 setSource0Shape:shape10];

        v82 = [&unk_284BA6080 mutableCopy];
        v83 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v50];
        v84 = v65;
        if (v99)
        {
          [v82 setObject:v83 atIndexedSubscript:1];
        }

        else
        {
          descriptor15 = [v108 descriptor];
          shape11 = [descriptor15 shape];
          [v82 setObject:v83 atIndexedSubscript:{objc_msgSend(shape11, "count") - 1}];
        }

        v87 = [v82 copy];
        [v12 setSource1Shape:v87];

        source1Shape = [v12 source1Shape];
        v89 = [MLCTensor tensorWithShape:source1Shape];

        v90 = v107;
        do
        {
          deviceMemory3 = [v89 deviceMemory];
          exportableState3 = [v12 exportableState];
          v93 = [exportableState3 objectAtIndexedSubscript:1];
          [deviceMemory3 addObject:v93];

          --v90;
        }

        while (v90);
        resultTensorCopy = v108;
        v59 = v111;
        [(MLCDeviceGPU *)selfCopy dispatchForwardArithmeticBinaryKernel:layerCopy sourceTensor:v108 sourceSecondaryTensor:v89 resultTensor:v108 deviceIndex:v111];

        objc_autoreleasePoolPop(context);
        v65 = v84;
      }

      self = selfCopy;
      if (trainingCopy)
      {
        v94 = [deviceMemory objectAtIndexedSubscript:v59];
        [v12 setSource:v94];
      }

      objc_autoreleasePoolPop(v105);
      v11 = v59 + 1;
      ++v107;
      tensorCopy = v98;
    }

    while (v11 < [(MLCDeviceGPU *)selfCopy numDevicesToUse]);
  }
}

- (void)dispatchGradientFullyConnectedLayer:(id)layer sourceGradientTensor:(id)tensor resultGradientTensor:(id)gradientTensor resultStateIsTemporary:(BOOL)temporary
{
  temporaryCopy = temporary;
  v130[2] = *MEMORY[0x277D85DE8];
  layerCopy = layer;
  tensorCopy = tensor;
  selfCopy = self;
  v11 = tensorCopy;
  gradientTensorCopy = gradientTensor;
  deviceMemory = [v11 deviceMemory];
  [(MLCDeviceGPU *)self allocateResultTensor:gradientTensorCopy];
  v125 = gradientTensorCopy;
  deviceMemory2 = [gradientTensorCopy deviceMemory];
  if ([(MLCDeviceGPU *)self numDevicesToUse])
  {
    v13 = 0;
    v111 = v11;
    selfCopy2 = self;
    do
    {
      context = objc_autoreleasePoolPush();
      v14 = [layerCopy objectAtIndexedSubscript:v13];
      gpuCommandBufferList = [(MLCDeviceGPU *)selfCopy gpuCommandBufferList];
      v123 = [gpuCommandBufferList objectAtIndexedSubscript:v13];

      descriptor = [v11 descriptor];
      shape = [descriptor shape];
      v18 = [shape count];

      descriptor2 = [v11 descriptor];
      shape2 = [descriptor2 shape];
      v21 = [shape2 objectAtIndexedSubscript:v18 - 1];
      unsignedIntegerValue = [v21 unsignedIntegerValue];

      descriptor3 = [v125 descriptor];
      shape3 = [descriptor3 shape];
      v24 = [shape3 objectAtIndexedSubscript:v18 - 1];
      unsignedIntegerValue2 = [v24 unsignedIntegerValue];

      batchSize = [v14 batchSize];
      if (v18 < 3)
      {
        goto LABEL_9;
      }

      descriptor4 = [v11 descriptor];
      shape4 = [descriptor4 shape];
      v28 = [shape4 objectAtIndexedSubscript:1];
      batchSize *= [v28 unsignedIntegerValue];

      if (v18 == 3)
      {
        goto LABEL_9;
      }

      descriptor5 = [v11 descriptor];
      shape5 = [descriptor5 shape];
      v31 = [shape5 objectAtIndexedSubscript:2];
      batchSize *= [v31 unsignedIntegerValue];

      if (v18 != 4)
      {
LABEL_9:
        v40 = selfCopy2;
      }

      else
      {
        descriptor6 = [v11 descriptor];
        shape6 = [descriptor6 shape];
        v32 = [shape6 objectAtIndexedSubscript:2];
        unsignedIntegerValue3 = [v32 unsignedIntegerValue];
        descriptor7 = [v11 descriptor];
        shape7 = [descriptor7 shape];
        v36 = [shape7 objectAtIndexedSubscript:3];
        v37 = batchSize;
        v38 = [v36 unsignedIntegerValue] * unsignedIntegerValue3;

        v11 = v111;
        v39 = v38 == 1;
        batchSize = v37;
        v40 = selfCopy2;
        if (v39)
        {
          batchSize = [v14 batchSize];
          descriptor8 = [v111 descriptor];
          shape8 = [descriptor8 shape];
          v43 = [shape8 objectAtIndexedSubscript:1];
          unsignedIntegerValue = [v43 unsignedIntegerValue];

          descriptor9 = [v125 descriptor];
          shape9 = [descriptor9 shape];
          v46 = [shape9 objectAtIndexedSubscript:1];
          unsignedIntegerValue2 = [v46 unsignedIntegerValue];
        }
      }

      gradientStatisticsKernel = [v14 gradientStatisticsKernel];
      v48 = [gradientStatisticsKernel count];

      if (!v48)
      {
        deviceList = [(MLCDeviceGPU *)v40 deviceList];
        v50 = [deviceList objectAtIndexedSubscript:v13];

        v51 = [objc_alloc(MEMORY[0x277CD75E0]) initWithDevice:v50 transposeLeft:0 transposeRight:0 resultRows:batchSize resultColumns:unsignedIntegerValue2 interiorColumns:unsignedIntegerValue alpha:1.0 beta:0.0];
        gradientStatisticsKernel2 = [v14 gradientStatisticsKernel];
        [gradientStatisticsKernel2 setObject:v51 atIndexedSubscript:0];

        v53 = [objc_alloc(MEMORY[0x277CD75E0]) initWithDevice:v50 transposeLeft:1 transposeRight:0 resultRows:unsignedIntegerValue resultColumns:unsignedIntegerValue2 interiorColumns:batchSize alpha:1.0 beta:0.0];
        gradientStatisticsKernel3 = [v14 gradientStatisticsKernel];
        [gradientStatisticsKernel3 setObject:v53 atIndexedSubscript:1];
      }

      v55 = MEMORY[0x277CD7258];
      descriptor10 = [v11 descriptor];
      v115 = 4 * unsignedIntegerValue;
      v57 = [v55 matrixDescriptorWithRows:batchSize columns:unsignedIntegerValue rowBytes:4 * unsignedIntegerValue dataType:{GPU_GetDataType(objc_msgSend(descriptor10, "dataType"))}];

      v58 = objc_alloc(MEMORY[0x277CD7250]);
      v59 = [deviceMemory objectAtIndexedSubscript:v13];
      v119 = v57;
      v60 = [v58 initWithBuffer:v59 descriptor:v57];

      v61 = MEMORY[0x277CD7258];
      descriptor11 = [v125 descriptor];
      v112 = batchSize;
      v63 = [v61 matrixDescriptorWithRows:batchSize columns:unsignedIntegerValue2 rowBytes:4 * unsignedIntegerValue2 dataType:{GPU_GetDataType(objc_msgSend(descriptor11, "dataType"))}];

      v64 = objc_alloc(MEMORY[0x277CD7250]);
      v117 = v13;
      v65 = [deviceMemory2 objectAtIndexedSubscript:v13];
      v127 = v63;
      v66 = [v64 initWithBuffer:v65 descriptor:v63];

      v67 = MEMORY[0x277CD7258];
      v68 = v14;
      descriptor12 = [v125 descriptor];
      v70 = [v67 matrixDescriptorWithRows:unsignedIntegerValue columns:unsignedIntegerValue2 rowBytes:4 * unsignedIntegerValue2 dataType:{GPU_GetDataType(objc_msgSend(descriptor12, "dataType"))}];

      v71 = objc_alloc(MEMORY[0x277CD7250]);
      exportableState = [v14 exportableState];
      v73 = [exportableState objectAtIndexedSubscript:0];
      v74 = [v71 initWithBuffer:v73 descriptor:v70];

      v75 = v123;
      if (([v68 computeWeightsAndBiasOnly] & 1) == 0)
      {
        gradientStatisticsKernel4 = [v68 gradientStatisticsKernel];
        v77 = [gradientStatisticsKernel4 objectAtIndexedSubscript:0];
        [v77 encodeToCommandBuffer:v123 leftMatrix:v60 rightMatrix:v74 resultMatrix:v66];
      }

      v122 = v66;
      v78 = objc_alloc(MEMORY[0x277CD7250]);
      source = [v68 source];
      v80 = [v78 initWithBuffer:source descriptor:v127];

      v116 = v74;
      if (temporaryCopy)
      {
        v81 = [MEMORY[0x277CD72B0] temporaryMatrixWithCommandBuffer:v123 matrixDescriptor:v70];
        selfCopy = selfCopy2;
        v82 = v117;
      }

      else
      {
        gradientState = [v68 gradientState];
        v84 = [gradientState count];

        selfCopy = selfCopy2;
        v82 = v117;
        if (v84)
        {
          gradientState2 = [v68 gradientState];
          v81 = [gradientState2 objectAtIndexedSubscript:0];
        }

        else
        {
          deviceList2 = [(MLCDeviceGPU *)selfCopy2 deviceList];
          gradientState2 = [deviceList2 objectAtIndexedSubscript:v117];

          data = [v74 data];
          v88 = [gradientState2 newBufferWithLength:objc_msgSend(data options:{"length"), +[MLCGPUHelper mtlResourceOptions](MLCGPUHelper, "mtlResourceOptions")}];

          v81 = [objc_alloc(MEMORY[0x277CD7250]) initWithBuffer:v88 descriptor:v70];
        }
      }

      gradientStatisticsKernel5 = [v68 gradientStatisticsKernel];
      v90 = [gradientStatisticsKernel5 objectAtIndexedSubscript:1];
      [v90 encodeToCommandBuffer:v123 leftMatrix:v60 rightMatrix:v80 resultMatrix:v81];

      exportableState2 = [v68 exportableState];
      v92 = [exportableState2 count];

      if (v92 < 2)
      {
        v129 = v81;
        v95 = [MEMORY[0x277CBEA60] arrayWithObjects:&v129 count:1];
        v96 = [v95 copy];
        [v68 setGradientState:v96];
      }

      else
      {
        v93 = MEMORY[0x277CD7258];
        descriptor13 = [v125 descriptor];
        v95 = [v93 matrixDescriptorWithRows:1 columns:unsignedIntegerValue rowBytes:v115 dataType:{GPU_GetDataType(objc_msgSend(descriptor13, "dataType"))}];

        v108 = v60;
        if (temporaryCopy)
        {
          v96 = [MEMORY[0x277CD72B0] temporaryMatrixWithCommandBuffer:v123 matrixDescriptor:v95];
        }

        else
        {
          gradientState3 = [v68 gradientState];
          v98 = [gradientState3 count];

          if (v98 < 2)
          {
            deviceList3 = [(MLCDeviceGPU *)selfCopy2 deviceList];
            v101 = [deviceList3 objectAtIndexedSubscript:v82];

            v102 = [v101 newBufferWithLength:v115 options:{+[MLCGPUHelper mtlResourceOptions](MLCGPUHelper, "mtlResourceOptions")}];
            v96 = [objc_alloc(MEMORY[0x277CD7250]) initWithBuffer:v102 descriptor:v95];
          }

          else
          {
            gradientState4 = [v68 gradientState];
            v96 = [gradientState4 objectAtIndexedSubscript:1];
          }
        }

        v103 = [deviceMemory objectAtIndexedSubscript:v82];
        data2 = [v96 data];
        [(MLCDeviceGPU *)selfCopy2 reduceAcrossBatchForSource:v103 result:data2 batchSize:v112 batchStride:unsignedIntegerValue numEntries:unsignedIntegerValue deviceIndex:v82 commandBuffer:v123];

        v130[0] = v81;
        v130[1] = v96;
        v105 = [MEMORY[0x277CBEA60] arrayWithObjects:v130 count:2];
        v106 = [v105 copy];
        [v68 setGradientState:v106];

        selfCopy = selfCopy2;
        v75 = v123;
        v60 = v108;
      }

      objc_autoreleasePoolPop(context);
      v13 = v82 + 1;
      v11 = v111;
    }

    while (v13 < [(MLCDeviceGPU *)selfCopy numDevicesToUse]);
  }

  v107 = *MEMORY[0x277D85DE8];
}

- (void)dispatchForwardLayer:(id)layer sourceTensor:(id)tensor secondaryTensor:(id)secondaryTensor tertiaryTensor:(id)tertiaryTensor resultTensor:(id)resultTensor resultStateIsTemporary:(BOOL)temporary forTraining:(BOOL)training
{
  layerCopy = layer;
  tensorCopy = tensor;
  secondaryTensorCopy = secondaryTensor;
  tertiaryTensorCopy = tertiaryTensor;
  resultTensorCopy = resultTensor;
  deviceMemory = [tensorCopy deviceMemory];
  deviceMemory2 = [secondaryTensorCopy deviceMemory];
  [(MLCDeviceGPU *)self allocateResultTensor:resultTensorCopy];
  if ([(MLCDeviceGPU *)self numDevicesToUse])
  {
    for (i = 0; i < [(MLCDeviceGPU *)self numDevicesToUse]; ++i)
    {
      v20 = [layerCopy objectAtIndexedSubscript:i];
      v21 = v20;
      if (training)
      {
        [v20 setGradientState:0];
        v22 = [deviceMemory objectAtIndexedSubscript:i];
        [v21 setSource:v22];

        if (tertiaryTensorCopy)
        {
          [(MLCDeviceGPU *)self dispatchForwardArithmeticTertiaryKernel:layerCopy sourceTensor:tensorCopy sourceSecondaryTensor:secondaryTensorCopy sourceTertiaryTensor:tertiaryTensorCopy resultTensor:resultTensorCopy deviceIndex:i];
        }

        else
        {
          if (!secondaryTensorCopy)
          {
            goto LABEL_13;
          }

          [(MLCDeviceGPU *)self dispatchForwardArithmeticBinaryKernel:layerCopy sourceTensor:tensorCopy sourceSecondaryTensor:secondaryTensorCopy resultTensor:resultTensorCopy deviceIndex:i];
        }

        v23 = [deviceMemory2 objectAtIndexedSubscript:i];
        [v21 setSecondarySource:v23];
      }

      else if (tertiaryTensorCopy)
      {
        [(MLCDeviceGPU *)self dispatchForwardArithmeticTertiaryKernel:layerCopy sourceTensor:tensorCopy sourceSecondaryTensor:secondaryTensorCopy sourceTertiaryTensor:tertiaryTensorCopy resultTensor:resultTensorCopy deviceIndex:i];
      }

      else
      {
        if (!secondaryTensorCopy)
        {
LABEL_13:
          [(MLCDeviceGPU *)self dispatchForwardArithmeticUnaryKernel:layerCopy sourceTensor:tensorCopy resultTensor:resultTensorCopy deviceIndex:i];
          goto LABEL_14;
        }

        [(MLCDeviceGPU *)self dispatchForwardArithmeticBinaryKernel:layerCopy sourceTensor:tensorCopy sourceSecondaryTensor:secondaryTensorCopy resultTensor:resultTensorCopy deviceIndex:i];
      }

LABEL_14:
    }
  }
}

- (void)dispatchForwardMatMulLayer:(id)layer sourceTensors:(id)tensors resultTensor:(id)tensor
{
  v95[3] = *MEMORY[0x277D85DE8];
  layerCopy = layer;
  tensorsCopy = tensors;
  tensorCopy = tensor;
  context = objc_autoreleasePoolPush();
  v10 = [tensorsCopy objectAtIndexedSubscript:0];
  descriptor = [v10 descriptor];
  DataType = GPU_GetDataType([descriptor dataType]);

  v12 = [tensorsCopy objectAtIndexedSubscript:0];
  deviceMemory = [v12 deviceMemory];

  v84 = tensorsCopy;
  v14 = [tensorsCopy objectAtIndexedSubscript:1];
  deviceMemory2 = [v14 deviceMemory];

  [(MLCDeviceGPU *)self allocateResultTensor:tensorCopy];
  v79 = tensorCopy;
  deviceMemory3 = [tensorCopy deviceMemory];
  if ([(MLCDeviceGPU *)self numDevicesToUse])
  {
    v16 = 0;
    v81 = deviceMemory;
    selfCopy = self;
    v80 = deviceMemory2;
    do
    {
      v17 = [layerCopy objectAtIndexedSubscript:v16];
      gpuCommandBufferList = [(MLCDeviceGPU *)self gpuCommandBufferList];
      v90 = [gpuCommandBufferList objectAtIndexedSubscript:v16];

      matmulKernel = [v17 matmulKernel];
      shapes = [v17 shapes];
      v19 = [deviceMemory objectAtIndexedSubscript:v16];
      v95[0] = v19;
      v20 = [deviceMemory2 objectAtIndexedSubscript:v16];
      v95[1] = v20;
      v86 = v16;
      v21 = [deviceMemory3 objectAtIndexedSubscript:v16];
      v95[2] = v21;
      v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v95 count:3];
      v92 = [v22 copy];

      transposeLeft = [v17 transposeLeft];
      v24 = [transposeLeft objectAtIndexedSubscript:0];
      v94[0] = v24;
      transposeRight = [v17 transposeRight];
      v26 = [transposeRight objectAtIndexedSubscript:0];
      v94[1] = v26;
      v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v94 count:2];
      v88 = [v27 copy];

      forwardMatricesOrNDArrays = [v17 forwardMatricesOrNDArrays];
      for (i = 0; i != 3; ++i)
      {
        matrixDescs = [v17 matrixDescs];
        v31 = [matrixDescs objectAtIndexedSubscript:i];

        matrices = [v31 matrices];
        if (matrices > [v17 batchSize])
        {
          v33 = [MEMORY[0x277CD7258] matrixDescriptorWithRows:objc_msgSend(v31 columns:"rows") matrices:objc_msgSend(v31 rowBytes:"columns") matrixBytes:objc_msgSend(v17 dataType:{"batchSize"), objc_msgSend(v31, "rowBytes"), objc_msgSend(v31, "matrixBytes"), DataType}];
          matrixDescs2 = [v17 matrixDescs];
          [matrixDescs2 setObject:v33 atIndexedSubscript:i];
        }
      }

      broadcastingFlags = [v17 broadcastingFlags];
      v36 = [broadcastingFlags objectAtIndexedSubscript:0];
      if ([v36 unsignedIntegerValue])
      {
      }

      else
      {
        broadcastingFlags2 = [v17 broadcastingFlags];
        v38 = [broadcastingFlags2 objectAtIndexedSubscript:1];
        unsignedIntegerValue = [v38 unsignedIntegerValue];

        if (!unsignedIntegerValue)
        {
          for (j = 0; j != 3; ++j)
          {
            if ([forwardMatricesOrNDArrays count] <= j)
            {
              goto LABEL_27;
            }

            v68 = [forwardMatricesOrNDArrays objectAtIndexedSubscript:j];
            data = [v68 data];
            v70 = [v92 objectAtIndexedSubscript:j];

            if (data != v70)
            {
LABEL_27:
              v71 = objc_alloc(MEMORY[0x277CD7250]);
              v72 = [v92 objectAtIndexedSubscript:j];
              matrixDescs3 = [v17 matrixDescs];
              v74 = [matrixDescs3 objectAtIndexedSubscript:j];
              v75 = [v71 initWithBuffer:v72 descriptor:v74];

              forwardMatricesOrNDArrays2 = [v17 forwardMatricesOrNDArrays];
              [forwardMatricesOrNDArrays2 setObject:v75 atIndexedSubscript:j];
            }
          }

          forwardKernel = [v17 forwardKernel];
          v61 = [forwardMatricesOrNDArrays objectAtIndexedSubscript:0];
          v62 = [forwardMatricesOrNDArrays objectAtIndexedSubscript:1];
          v63 = [forwardMatricesOrNDArrays objectAtIndexedSubscript:2];
          [forwardKernel encodeToCommandBuffer:v90 leftMatrix:v61 rightMatrix:v62 resultMatrix:v63];
          goto LABEL_20;
        }
      }

      v40 = 0;
      v41 = 1;
      do
      {
        if ([forwardMatricesOrNDArrays count] <= (v41 - 1))
        {
          goto LABEL_13;
        }

        v42 = [forwardMatricesOrNDArrays objectAtIndexedSubscript:v41 - 1];
        data2 = [v42 data];
        v44 = [v92 objectAtIndexedSubscript:v40];

        if (data2 != v44)
        {
LABEL_13:
          v45 = objc_alloc(MEMORY[0x277CD7250]);
          v46 = [v92 objectAtIndexedSubscript:v40];
          matrixDescs4 = [v17 matrixDescs];
          v48 = [matrixDescs4 objectAtIndexedSubscript:v40];
          v49 = [v45 initWithBuffer:v46 descriptor:v48];

          v50 = MEMORY[0x277CD7268];
          v51 = [shapes objectAtIndexedSubscript:v40];
          v52 = [v50 descriptorWithDataType:DataType shape:v51];

          [v52 setPreferPackedRows:1];
          v53 = [v49 ndArrayWithCommandBuffer:v90 descriptor:v52 aliasing:1];
          if (v40 == 2 || ([v88 objectAtIndexedSubscript:v40], v54 = objc_claimAutoreleasedReturnValue(), v55 = objc_msgSend(v54, "BOOLValue"), v54, !v55))
          {
            v57 = v53;
          }

          else
          {
            descriptor2 = [v53 descriptor];
            [descriptor2 transposeDimension:0 withDimension:1];
            v57 = [v53 arrayViewWithCommandBuffer:v90 descriptor:descriptor2 aliasing:1];
          }

          forwardMatricesOrNDArrays3 = [v17 forwardMatricesOrNDArrays];
          [forwardMatricesOrNDArrays3 setObject:v49 atIndexedSubscript:v41 - 1];

          forwardMatricesOrNDArrays4 = [v17 forwardMatricesOrNDArrays];
          [forwardMatricesOrNDArrays4 setObject:v57 atIndexedSubscript:v41];
        }

        ++v40;
        v41 += 2;
      }

      while (v40 != 3);
      forwardKernel = [forwardMatricesOrNDArrays objectAtIndexedSubscript:1];
      v93[0] = forwardKernel;
      v61 = [forwardMatricesOrNDArrays objectAtIndexedSubscript:3];
      v93[1] = v61;
      v62 = [MEMORY[0x277CBEA60] arrayWithObjects:v93 count:2];
      v63 = [forwardMatricesOrNDArrays objectAtIndexedSubscript:5];
      [matmulKernel encodeToCommandBuffer:v90 sourceArrays:v62 destinationArray:v63];
LABEL_20:

      self = selfCopy;
      if ([v84 count] >= 3)
      {
        v64 = [v84 objectAtIndexedSubscript:2];
        [(MLCDeviceGPU *)selfCopy dispatchForwardArithmeticBinaryKernel:layerCopy sourceTensor:v79 sourceSecondaryTensor:v64 resultTensor:v79 deviceIndex:v86];
      }

      deviceMemory = v81;
      v65 = [v81 objectAtIndexedSubscript:v86];
      [v17 setSource:v65];

      deviceMemory2 = v80;
      v66 = [v80 objectAtIndexedSubscript:v86];
      [v17 setSecondarySource:v66];

      v16 = v86 + 1;
    }

    while (v86 + 1 < [(MLCDeviceGPU *)selfCopy numDevicesToUse]);
  }

  objc_autoreleasePoolPop(context);
  v77 = *MEMORY[0x277D85DE8];
}

- (void)dispatchGradientMatMulLayer:(id)layer sourceGradientTensor:(id)tensor resultGradientTensors:(id)tensors
{
  v193 = *MEMORY[0x277D85DE8];
  layerCopy = layer;
  tensorCopy = tensor;
  tensorsCopy = tensors;
  context = objc_autoreleasePoolPush();
  descriptor = [tensorCopy descriptor];
  DataType = GPU_GetDataType([descriptor dataType]);

  v165 = tensorCopy;
  deviceMemory = [tensorCopy deviceMemory];
  v185 = 0u;
  v186 = 0u;
  v187 = 0u;
  v188 = 0u;
  v11 = tensorsCopy;
  v12 = [v11 countByEnumeratingWithState:&v185 objects:v192 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v186;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v186 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [(MLCDeviceGPU *)self allocateResultTensor:*(*(&v185 + 1) + 8 * i)];
      }

      v13 = [v11 countByEnumeratingWithState:&v185 objects:v192 count:16];
    }

    while (v13);
  }

  v16 = [v11 objectAtIndexedSubscript:0];
  deviceMemory2 = [v16 deviceMemory];

  v17 = [v11 objectAtIndexedSubscript:1];
  deviceMemory3 = [v17 deviceMemory];

  if (![(MLCDeviceGPU *)self numDevicesToUse])
  {
    goto LABEL_104;
  }

  v18 = 0;
  v19 = 0x277CD7000uLL;
  v166 = v11;
  selfCopy = self;
  do
  {
    v20 = [layerCopy objectAtIndexedSubscript:v18];
    gpuCommandBufferList = [(MLCDeviceGPU *)self gpuCommandBufferList];
    v22 = [gpuCommandBufferList objectAtIndexedSubscript:v18];

    if ([v11 count] >= 3)
    {
      v23 = [v11 objectAtIndexedSubscript:2];
      [(MLCDeviceGPU *)self dispatchGradientArithmeticBinaryKernel:layerCopy sourceGradientTensor:v165 resultGradientTensor:v165 secondaryResultGradientTensor:v23 deviceIndex:v18];
    }

    shapes = [v20 shapes];
    v24 = [deviceMemory2 objectAtIndexedSubscript:v18];
    v191[0] = v24;
    v25 = [deviceMemory3 objectAtIndexedSubscript:v18];
    v26 = v18;
    v27 = v25;
    v191[1] = v25;
    v172 = v26;
    v28 = [deviceMemory objectAtIndexedSubscript:?];
    v191[2] = v28;
    v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v191 count:3];
    v181 = [v29 copy];

    broadcastingFlags = [v20 broadcastingFlags];
    v31 = [broadcastingFlags objectAtIndexedSubscript:0];
    if ([v31 unsignedIntegerValue])
    {
      v32 = 0;
    }

    else
    {
      broadcastingFlags2 = [v20 broadcastingFlags];
      v34 = [broadcastingFlags2 objectAtIndexedSubscript:1];
      v32 = [v34 unsignedIntegerValue] == 0;
    }

    for (j = 0; j != 3; ++j)
    {
      if (v32)
      {
        if (j == 2)
        {
          gradientLeftRightMatrixSelectionFlags = [v20 gradientLeftRightMatrixSelectionFlags];
          v37 = [gradientLeftRightMatrixSelectionFlags objectAtIndexedSubscript:0];
          v38 = 1 - [v37 unsignedIntegerValue];
        }

        else
        {
          v38 = 3 * j + 2;
        }
      }

      else
      {
        v38 = j + 6;
      }

      gradientMatricesOrNDArrays = [v20 gradientMatricesOrNDArrays];
      if (![gradientMatricesOrNDArrays count])
      {

LABEL_27:
        if (!v32)
        {
          v56 = 0;
LABEL_62:
          matmulKernel = [v20 matmulKernel];
          gradientMatricesOrNDArrays2 = [v20 gradientMatricesOrNDArrays];
          v180 = gradientMatricesOrNDArrays2;
          if ((v56 & 1) == 0)
          {
            v182 = v22;
            v86 = MEMORY[0x277CBEBF8];
            v87 = [MEMORY[0x277CBEBF8] mutableCopy];
            v178 = [v86 mutableCopy];
            for (k = 0; k != 3; ++k)
            {
              v89 = objc_alloc(*(v19 + 592));
              v90 = [v181 objectAtIndexedSubscript:k];
              matrixDescs = [v20 matrixDescs];
              v92 = [matrixDescs objectAtIndexedSubscript:k];
              v93 = [v89 initWithBuffer:v90 descriptor:v92];

              [v178 setObject:v93 atIndexedSubscript:k];
              v94 = MEMORY[0x277CD7268];
              v95 = [shapes objectAtIndexedSubscript:k];
              v96 = [v94 descriptorWithDataType:DataType shape:v95];

              [v96 setPreferPackedRows:1];
              v97 = [v93 ndArrayWithCommandBuffer:v182 descriptor:v96 aliasing:1];
              [v87 addObject:v97];
              if (k != 2)
              {
                v98 = objc_alloc(*(v19 + 592));
                if (k)
                {
                  [v20 secondarySource];
                }

                else
                {
                  [v20 source];
                }
                v99 = ;
                matrixDescs2 = [v20 matrixDescs];
                v101 = [matrixDescs2 objectAtIndexedSubscript:k];
                v102 = [v98 initWithBuffer:v99 descriptor:v101];

                v103 = [v102 ndArrayWithCommandBuffer:v182 descriptor:v96 aliasing:1];
                [v87 addObject:v103];

                v19 = 0x277CD7000;
              }
            }

            v104 = 0;
            v105 = 1;
            gradientMatricesOrNDArrays2 = v180;
            do
            {
              v106 = v105;
              gradientLeftRightMatrixSelectionFlags2 = [v20 gradientLeftRightMatrixSelectionFlags];
              v108 = [gradientLeftRightMatrixSelectionFlags2 objectAtIndexedSubscript:v104];
              bOOLValue = [v108 BOOLValue];

              v110 = 4;
              if ((v106 & 1) == 0)
              {
                v110 = 1;
              }

              v111 = 3;
              if ((v106 & 1) == 0)
              {
                v111 = 4;
              }

              if (bOOLValue)
              {
                v112 = v110;
              }

              else
              {
                v112 = v111;
              }

              if (bOOLValue)
              {
                v113 = v111;
              }

              else
              {
                v113 = v110;
              }

              v114 = [v87 objectAtIndexedSubscript:v112];
              v115 = [v87 objectAtIndexedSubscript:v113];
              transposeLeft = [v20 transposeLeft];
              v117 = [transposeLeft objectAtIndexedSubscript:v104 + 1];
              bOOLValue2 = [v117 BOOLValue];

              v119 = 3 * v104;
              if (bOOLValue2)
              {
                descriptor2 = [v114 descriptor];
                [descriptor2 transposeDimension:0 withDimension:1];
                v121 = [v114 arrayViewWithCommandBuffer:v182 descriptor:descriptor2 aliasing:1];
                [gradientMatricesOrNDArrays2 setObject:v121 atIndexedSubscript:3 * v104];
              }

              else
              {
                [gradientMatricesOrNDArrays2 setObject:v114 atIndexedSubscript:3 * v104];
              }

              transposeRight = [v20 transposeRight];
              v123 = [transposeRight objectAtIndexedSubscript:v104 + 1];
              bOOLValue3 = [v123 BOOLValue];

              if (bOOLValue3)
              {
                descriptor3 = [v115 descriptor];
                [descriptor3 transposeDimension:0 withDimension:1];
                v126 = [v115 arrayViewWithCommandBuffer:v182 descriptor:descriptor3 aliasing:1];
                gradientMatricesOrNDArrays2 = v180;
                [v180 setObject:v126 atIndexedSubscript:v119 + 1];
              }

              else
              {
                gradientMatricesOrNDArrays2 = v180;
                [v180 setObject:v115 atIndexedSubscript:v119 + 1];
              }

              v104 = [v87 objectAtIndexedSubscript:2 * v104];
              [gradientMatricesOrNDArrays2 setObject:v104 atIndexedSubscript:v119 + 2];

              v105 = 0;
              v104 = 1;
            }

            while ((v106 & 1) != 0);
            for (m = 0; m != 3; ++m)
            {
              v129 = [v178 objectAtIndexedSubscript:m];
              [gradientMatricesOrNDArrays2 setObject:v129 atIndexedSubscript:m + 6];
            }

            v19 = 0x277CD7000;
            v22 = v182;
          }

          v130 = 0;
          v131 = 1;
          do
          {
            v132 = v22;
            v183 = v131;
            broadcastingFlags3 = [v20 broadcastingFlags];
            v134 = [broadcastingFlags3 objectAtIndexedSubscript:v130];
            unsignedIntegerValue = [v134 unsignedIntegerValue];

            v136 = 3 * v130;
            v130 = [gradientMatricesOrNDArrays2 objectAtIndexedSubscript:3 * v130];
            v138 = v130;
            if (unsignedIntegerValue)
            {
              v189[0] = v130;
              v139 = [gradientMatricesOrNDArrays2 objectAtIndexedSubscript:v136 + 1];
              v189[1] = v139;
              v140 = [MEMORY[0x277CBEA60] arrayWithObjects:v189 count:2];
              v141 = [matmulKernel encodeToCommandBuffer:v132 sourceArrays:v140];

              v138 = v141;
              v142 = [gradientMatricesOrNDArrays2 objectAtIndexedSubscript:v136 + 2];
              broadcastingFlags4 = [v20 broadcastingFlags];
              v144 = [broadcastingFlags4 objectAtIndexedSubscript:v130];
              unsignedIntegerValue2 = [v144 unsignedIntegerValue];

              if (unsignedIntegerValue2 < 2)
              {
                v159 = v138;
                v22 = v132;
              }

              else
              {
                descriptor4 = [v138 descriptor];
                reductionShapes = [v20 reductionShapes];
                v148 = 2 * v130;
                v1302 = [reductionShapes objectAtIndexedSubscript:2 * v130];
                [descriptor4 reshapeWithShape:v1302];

                broadcastingFlags5 = [v20 broadcastingFlags];
                v151 = [broadcastingFlags5 objectAtIndexedSubscript:v130];
                unsignedIntegerValue3 = [v151 unsignedIntegerValue];

                if (unsignedIntegerValue3 == 2)
                {
                  v153 = [v180 objectAtIndexedSubscript:v136 + 2];
                  descriptor5 = [v153 descriptor];

                  reductionShapes2 = [v20 reductionShapes];
                  v156 = [reductionShapes2 objectAtIndexedSubscript:v148 | 1];
                  [descriptor5 reshapeWithShape:v156];

                  v157 = [v180 objectAtIndexedSubscript:v136 + 2];
                  v22 = v132;
                  v158 = [v157 arrayViewWithCommandBuffer:v132 descriptor:descriptor5 aliasing:1];

                  v142 = v158;
                }

                else
                {
                  v22 = v132;
                }

                v159 = [v138 arrayViewWithCommandBuffer:v22 descriptor:descriptor4 aliasing:1];

                v19 = 0x277CD7000;
              }

              reduceSumKernel = [v20 reduceSumKernel];
              [reduceSumKernel encodeToCommandBuffer:v22 sourceArray:v159 destinationArray:v142];
            }

            else
            {
              v190[0] = v130;
              v159 = [gradientMatricesOrNDArrays2 objectAtIndexedSubscript:v136 + 1];
              v190[1] = v159;
              v160 = [MEMORY[0x277CBEA60] arrayWithObjects:v190 count:2];
              v161 = gradientMatricesOrNDArrays2;
              v142 = v160;
              reduceSumKernel = [v161 objectAtIndexedSubscript:v136 + 2];
              v22 = v132;
              [matmulKernel encodeToCommandBuffer:v132 sourceArrays:v142 destinationArray:reduceSumKernel];
            }

            v131 = 0;
            v130 = 1;
            gradientMatricesOrNDArrays2 = v180;
          }

          while ((v183 & 1) != 0);

          self = selfCopy;
          goto LABEL_103;
        }

        matmulKernel = [v20 gradientMatricesOrNDArrays];
        v44 = [MEMORY[0x277CBEBF8] mutableCopy];
        for (n = 0; ; ++n)
        {
          v46 = objc_alloc(*(v19 + 592));
          v47 = [v181 objectAtIndexedSubscript:n];
          matrixDescs3 = [v20 matrixDescs];
          v49 = [matrixDescs3 objectAtIndexedSubscript:n];
          v50 = [v46 initWithBuffer:v47 descriptor:v49];

          [v44 addObject:v50];
          if (n == 2)
          {
            break;
          }

          v51 = objc_alloc(*(v19 + 592));
          if (n)
          {
            [v20 secondarySource];
          }

          else
          {
            [v20 source];
          }
          v52 = ;
          matrixDescs4 = [v20 matrixDescs];
          v54 = [matrixDescs4 objectAtIndexedSubscript:n];
          v55 = [v51 initWithBuffer:v52 descriptor:v54];

          [v44 addObject:v55];
        }

        v57 = 0;
        v58 = 1;
        while (1)
        {
          gradientLeftRightMatrixSelectionFlags3 = [v20 gradientLeftRightMatrixSelectionFlags];
          v60 = [gradientLeftRightMatrixSelectionFlags3 objectAtIndexedSubscript:v57];
          bOOLValue4 = [v60 BOOLValue];

          v62 = 3 * v57;
          if (!bOOLValue4)
          {
            break;
          }

          if (v58)
          {
            v63 = [v44 objectAtIndexedSubscript:4];
            v174 = v63;
          }

          else
          {
            v63 = [v44 objectAtIndexedSubscript:1];
            v173 = v63;
          }

          gradientMatricesOrNDArrays3 = [v20 gradientMatricesOrNDArrays];
          [gradientMatricesOrNDArrays3 setObject:v63 atIndexedSubscript:3 * v57];

          if ((v58 & 1) == 0)
          {
            v69 = v173;
LABEL_48:

            v66 = v44;
            v67 = 4;
            goto LABEL_50;
          }

          v66 = v44;
          v67 = 3;
LABEL_50:
          v70 = [v66 objectAtIndexedSubscript:v67];
          gradientMatricesOrNDArrays4 = [v20 gradientMatricesOrNDArrays];
          [gradientMatricesOrNDArrays4 setObject:v70 atIndexedSubscript:v62 + 1];

          v72 = v62 + 2;
          v73 = [v44 objectAtIndexedSubscript:2 * v57];
          gradientMatricesOrNDArrays5 = [v20 gradientMatricesOrNDArrays];
          v75 = gradientMatricesOrNDArrays5;
          v76 = v58 & 1;
          if (v58)
          {
            v77 = 2;
          }

          else
          {
            v77 = v72;
          }

          [gradientMatricesOrNDArrays5 setObject:v73 atIndexedSubscript:v77];

          v58 = 0;
          v57 = 1;
          if (!v76)
          {

            goto LABEL_55;
          }
        }

        if (v58)
        {
          v64 = [v44 objectAtIndexedSubscript:3];
          v175 = v64;
        }

        else
        {
          v64 = [v44 objectAtIndexedSubscript:4];
          v176 = v64;
        }

        gradientMatricesOrNDArrays6 = [v20 gradientMatricesOrNDArrays];
        [gradientMatricesOrNDArrays6 setObject:v64 atIndexedSubscript:3 * v57];

        if ((v58 & 1) == 0)
        {

          v66 = v44;
          v67 = 1;
          goto LABEL_50;
        }

        v69 = v175;
        goto LABEL_48;
      }

      gradientMatricesOrNDArrays7 = [v20 gradientMatricesOrNDArrays];
      v41 = [gradientMatricesOrNDArrays7 objectAtIndexedSubscript:v38];
      data = [v41 data];
      v43 = [v181 objectAtIndexedSubscript:j];

      if (data != v43)
      {
        goto LABEL_27;
      }
    }

    if (!v32)
    {
      v56 = 1;
      goto LABEL_62;
    }

    matmulKernel = [v20 gradientMatricesOrNDArrays];
LABEL_55:
    v78 = 0;
    v79 = 1;
    self = selfCopy;
    do
    {
      v80 = v79;
      if (v79)
      {
        [v20 gradientKernel];
      }

      else
      {
        [v20 secondaryGradientKernel];
      }
      v81 = ;
      v82 = [matmulKernel objectAtIndexedSubscript:v78];
      v83 = [matmulKernel objectAtIndexedSubscript:v78 + 1];
      v84 = [matmulKernel objectAtIndexedSubscript:v78 + 2];
      [v81 encodeToCommandBuffer:v22 leftMatrix:v82 rightMatrix:v83 resultMatrix:v84];

      v79 = 0;
      v78 = 3;
    }

    while ((v80 & 1) != 0);
LABEL_103:
    v11 = v166;

    v18 = v172 + 1;
  }

  while (v172 + 1 < [(MLCDeviceGPU *)self numDevicesToUse]);
LABEL_104:

  objc_autoreleasePoolPop(context);
  v163 = *MEMORY[0x277D85DE8];
}

- (void)dispatchForwardMHALayer:(id)layer sourceTensors:(id)tensors resultTensor:(id)tensor resultStateIsTemporary:(BOOL)temporary forTraining:(BOOL)training
{
  trainingCopy = training;
  temporaryCopy = temporary;
  v387[2] = *MEMORY[0x277D85DE8];
  layerCopy = layer;
  tensorsCopy = tensors;
  tensorCopy = tensor;
  v283 = objc_autoreleasePoolPush();
  v12 = [tensorsCopy objectAtIndexedSubscript:0];
  descriptor = [v12 descriptor];
  stride = [descriptor stride];
  v321 = tensorsCopy;
  v15 = [tensorsCopy objectAtIndexedSubscript:0];
  descriptor2 = [v15 descriptor];
  v17 = [stride objectAtIndexedSubscript:{objc_msgSend(descriptor2, "dimensionCount") - 1}];
  unsignedIntegerValue = [v17 unsignedIntegerValue];

  selfCopy = self;
  [(MLCDeviceGPU *)self allocateResultTensor:tensorCopy];
  v287 = tensorCopy;
  deviceMemory = [tensorCopy deviceMemory];
  if ([(MLCDeviceGPU *)self numDevicesToUse])
  {
    v19 = 0;
    selfCopy2 = self;
    do
    {
      v20 = [layerCopy objectAtIndexedSubscript:v19];
      deviceList = [(MLCDeviceGPU *)selfCopy deviceList];
      v330 = [deviceList objectAtIndexedSubscript:v19];

      gpuCommandBufferList = [(MLCDeviceGPU *)selfCopy gpuCommandBufferList];
      v358 = [gpuCommandBufferList objectAtIndexedSubscript:v19];

      mhaHeadCount = [v20 mhaHeadCount];
      v23 = [MEMORY[0x277CBEBF8] mutableCopy];
      [v20 setMhaSourcesQKV:v23];

      v24 = 0;
      v25 = 0;
      v355 = v19;
      v356 = v20;
      do
      {
        mhaMatrixDescriptors = [v20 mhaMatrixDescriptors];
        v27 = [mhaMatrixDescriptors objectAtIndexedSubscript:v24];

        mhaNDArrayDescriptors = [v20 mhaNDArrayDescriptors];
        v29 = [mhaNDArrayDescriptors objectAtIndexedSubscript:v24];

        v30 = objc_alloc(MEMORY[0x277CD7250]);
        v31 = [v321 objectAtIndexedSubscript:v25];
        deviceMemory2 = [v31 deviceMemory];
        v33 = [deviceMemory2 objectAtIndexedSubscript:v19];
        v349 = v27;
        v34 = [v30 initWithBuffer:v33 descriptor:v27];

        v343 = v34;
        v346 = v29;
        v35 = [v34 ndArrayWithCommandBuffer:v358 descriptor:v29 aliasing:1];
        descriptor3 = [v35 descriptor];
        [descriptor3 transposeDimension:0 withDimension:1];
        v359 = v35;
        v340 = descriptor3;
        v37 = [v35 arrayViewWithCommandBuffer:v358 descriptor:descriptor3 aliasing:1];
        mhaMatrixDescriptors2 = [v20 mhaMatrixDescriptors];
        v39 = [mhaMatrixDescriptors2 objectAtIndexedSubscript:v24 + 1];

        mhaNDArrayDescriptors2 = [v20 mhaNDArrayDescriptors];
        v41 = [mhaNDArrayDescriptors2 objectAtIndexedSubscript:v24 + 1];

        v42 = objc_alloc(MEMORY[0x277CD7250]);
        exportableState = [v20 exportableState];
        v44 = [exportableState objectAtIndexedSubscript:v25];
        v334 = v39;
        v45 = [v42 initWithBuffer:v44 descriptor:v39];

        v327 = v45;
        v331 = v41;
        v366 = [v45 ndArrayWithCommandBuffer:v358 descriptor:v41 aliasing:1];
        mhaMatrixDescriptors3 = [v20 mhaMatrixDescriptors];
        v47 = [mhaMatrixDescriptors3 objectAtIndexedSubscript:v24 + 2];

        mhaNDArrayDescriptors3 = [v20 mhaNDArrayDescriptors];
        v363 = [mhaNDArrayDescriptors3 objectAtIndexedSubscript:v24 + 2];

        mhaMatMulSourcesQKV = [v20 mhaMatMulSourcesQKV];
        if ([mhaMatMulSourcesQKV count] <= v25)
        {
        }

        else
        {
          mhaMatMulSourcesQKV2 = [v20 mhaMatMulSourcesQKV];
          v51 = [mhaMatMulSourcesQKV2 objectAtIndexedSubscript:v25];

          if (v51)
          {
            mhaMatMulSourcesQKV3 = [v356 mhaMatMulSourcesQKV];
            v53 = [mhaMatMulSourcesQKV3 objectAtIndexedSubscript:v25];
            data = [v53 data];

            goto LABEL_9;
          }
        }

        data = [v330 newBufferWithLength:objc_msgSend(v47 options:{"matrixBytes") * objc_msgSend(v47, "matrices"), +[MLCGPUHelper mtlResourceOptions](MLCGPUHelper, "mtlResourceOptions")}];
LABEL_9:
        v55 = [objc_alloc(MEMORY[0x277CD7250]) initWithBuffer:data descriptor:v47];
        v56 = [v55 ndArrayWithCommandBuffer:v358 descriptor:v363 aliasing:1];
        v20 = v356;
        mhaMatMulKernel = [v356 mhaMatMulKernel];
        v387[0] = v366;
        v387[1] = v37;
        v337 = v37;
        v58 = [MEMORY[0x277CBEA60] arrayWithObjects:v387 count:2];
        v352 = v56;
        [mhaMatMulKernel encodeToCommandBuffer:v358 sourceArrays:v58 destinationArray:v56];

        if (trainingCopy)
        {
          mhaSourcesQKV = [v356 mhaSourcesQKV];
          [mhaSourcesQKV addObject:v359];
        }

        if ([v356 mhaHasBias])
        {
          mhaMatrixDescriptorsForBias = [v356 mhaMatrixDescriptorsForBias];
          v322 = [mhaMatrixDescriptorsForBias objectAtIndexedSubscript:v25];

          v61 = objc_alloc(MEMORY[0x277CD7250]);
          exportableState2 = [v356 exportableState];
          v63 = [exportableState2 objectAtIndexedSubscript:v25 + 4];
          v318 = [v61 initWithBuffer:v63 descriptor:v322];

          mhaNDArrayDescriptorsForBias = [v356 mhaNDArrayDescriptorsForBias];
          contextb = [mhaNDArrayDescriptorsForBias objectAtIndexedSubscript:v25];

          v65 = [v318 ndArrayWithCommandBuffer:v358 descriptor:contextb aliasing:1];
          mhaBiasAddKernel = [v356 mhaBiasAddKernel];
          v386[0] = v352;
          v386[1] = v65;
          [MEMORY[0x277CBEA60] arrayWithObjects:v386 count:2];
          v68 = v67 = v47;
          [mhaBiasAddKernel encodeToCommandBuffer:v358 sourceArrays:v68 destinationArray:v352];

          v47 = v67;
        }

        mhaInputProjResults = [v356 mhaInputProjResults];
        [mhaInputProjResults setObject:data atIndexedSubscript:v25];

        ++v25;
        v24 += 3;
        v19 = v355;
      }

      while (v25 != 3);
      mhaHasZeroAttention = [v356 mhaHasZeroAttention];
      mhaHasAttnBias = [v356 mhaHasAttnBias];
      if (([v356 mhaHasAttnBias] & 1) != 0 || objc_msgSend(v356, "mhaHasZeroAttention"))
      {
        v72 = 0;
        v350 = mhaHasAttnBias + mhaHasZeroAttention;
        v73 = 1;
        if (mhaHasAttnBias)
        {
          v74 = 2;
        }

        else
        {
          v74 = 1;
        }

        v332 = v74 + mhaHasZeroAttention;
        do
        {
          v319 = v73;
          gpuPipelineStatesConcatFloat = [(MLCDeviceGPU *)selfCopy2 gpuPipelineStatesConcatFloat];
          v76 = v19;
          v77 = gpuPipelineStatesConcatFloat;
          v78 = [gpuPipelineStatesConcatFloat objectAtIndexedSubscript:v76];
          maxTotalThreadsPerThreadgroup = [v78 maxTotalThreadsPerThreadgroup];

          batchSize = [v356 batchSize];
          v353 = v72;
          v81 = [v321 objectAtIndexedSubscript:v72 + 1];
          descriptor4 = [v81 descriptor];
          shape = [descriptor4 shape];
          v84 = [shape objectAtIndexedSubscript:1];
          unsignedIntegerValue2 = [v84 unsignedIntegerValue];

          v86 = maxTotalThreadsPerThreadgroup;
          mhaModelDimension = [v356 mhaModelDimension];
          v88 = 0;
          v360 = unsignedIntegerValue2;
          v323 = mhaModelDimension * unsignedIntegerValue;
          v325 = unsignedIntegerValue2 + 1;
          v341 = mhaModelDimension;
          v344 = unsignedIntegerValue2 + v350;
          v338 = mhaModelDimension * (unsignedIntegerValue2 + v350);
          v328 = maxTotalThreadsPerThreadgroup - 1;
          v375 = 0u;
          v376[0] = 0u;
          v335 = 4 * mhaModelDimension * batchSize * (unsignedIntegerValue2 + v350);
          v374 = 0u;
          v347 = maxTotalThreadsPerThreadgroup;
          do
          {
            v89 = v356;
            if (v350 == v88 && [v356 mhaHasZeroAttention])
            {
              gpuHeapTemporaryResourceAllocator = [(MLCDeviceGPU *)selfCopy2 gpuHeapTemporaryResourceAllocator];
              v91 = [gpuHeapTemporaryResourceAllocator objectAtIndexedSubscript:{objc_msgSend(v356, "temporaryHeapIndex")}];
              v92 = [v91 allocateBuffer:v323];

              blitCommandEncoder = [v358 blitCommandEncoder];
              [blitCommandEncoder fillBuffer:v92 range:0 value:{objc_msgSend(v92, "length"), 0}];
              [blitCommandEncoder endEncoding];
            }

            else
            {
              v92 = 0;
            }

            v94 = v353;
            if (v88 == 2)
            {
              v367 = v92;
              v99 = v325;
              goto LABEL_33;
            }

            if (v88 != 1)
            {
              mhaInputProjResults2 = [v356 mhaInputProjResults];
              v98 = [mhaInputProjResults2 objectAtIndexedSubscript:v353 + 1];
              v99 = 0;
              goto LABEL_31;
            }

            if ([v356 mhaHasAttnBias])
            {
              mhaInputProjResults2 = [v356 mhaAttentionBiasTensors];
              v96 = [mhaInputProjResults2 objectAtIndexedSubscript:v353];
              deviceMemory3 = [v96 deviceMemory];
              v98 = [deviceMemory3 objectAtIndexedSubscript:v355];

              v89 = v356;
              v92 = v96;
              v94 = v353;
              v99 = v360;
LABEL_31:

              v367 = v98;
              goto LABEL_33;
            }

            v367 = v92;
            v99 = v360;
LABEL_33:
            if (v88)
            {
              v100 = 1;
            }

            else
            {
              v100 = v360;
            }

            *&v374 = __PAIR64__(v341, v100);
            batchSize2 = [v89 batchSize];
            *(&v374 + 1) = batchSize2 | 0x100000000;
            v102 = v374;
            v103 = SDWORD1(v374);
            v104 = DWORD1(v374) * v374;
            if (v88)
            {
              v104 = 0;
            }

            *&v375 = __PAIR64__(v104, v374);
            DWORD2(v375) = 1;
            HIDWORD(v375) = v344;
            LODWORD(v376[0]) = v338;
            *(&v376[0] + 1) = v99 | 0x100000000;
            if (v86 <= v374)
            {
              v105 = 1;
              v102 = v86;
              v364 = (v328 + v374) / v86;
            }

            else
            {
              if (v86 / v374 >= SDWORD1(v374))
              {
                v105 = SDWORD1(v374);
              }

              else
              {
                v105 = v86 / v374;
              }

              v364 = 1;
              v103 = (SDWORD1(v374) + v105 - 1) / v105;
            }

            mhaInputProjResults3 = [v89 mhaInputProjResults];
            [mhaInputProjResults3 objectAtIndexedSubscript:v94 + 1];
            v108 = v107 = v89;
            v109 = v94;
            v110 = [v108 length];

            if (v110 == v335)
            {
              mhaInputProjResults4 = [v107 mhaInputProjResults];
              v112 = [mhaInputProjResults4 objectAtIndexedSubscript:v109 + 1];
            }

            else
            {
              v112 = [v330 newBufferWithLength:v335 options:{+[MLCGPUHelper mtlResourceOptions](MLCGPUHelper, "mtlResourceOptions")}];
              mhaInputProjResults4 = [v107 mhaInputProjResults];
              [mhaInputProjResults4 setObject:v112 atIndexedSubscript:v109 + 1];
            }

            v113 = batchSize2;

            v114 = [v358 computeCommandEncoderWithDispatchType:0];
            gpuPipelineStatesConcatFloat2 = [(MLCDeviceGPU *)selfCopy2 gpuPipelineStatesConcatFloat];
            v116 = [gpuPipelineStatesConcatFloat2 objectAtIndexedSubscript:v355];
            [v114 setComputePipelineState:v116];

            [v114 setBuffer:v367 offset:0 atIndex:0];
            [v114 setBuffer:v112 offset:0 atIndex:1];
            [v114 setBytes:&v374 length:48 atIndex:2];
            v379 = v364;
            v380 = v103;
            v381 = v113;
            v377 = v102;
            v378.i64[0] = v105;
            v378.i64[1] = 1;
            [v114 dispatchThreadgroups:&v379 threadsPerThreadgroup:&v377];
            [v114 endEncoding];

            ++v88;
            v86 = v347;
          }

          while (v332 != v88);
          v73 = 0;
          v72 = 1;
          v19 = v355;
        }

        while ((v319 & 1) != 0);
      }

      mhaMatMulSourcesQKV4 = [v356 mhaMatMulSourcesQKV];
      v118 = [mhaMatMulSourcesQKV4 count];

      if (v118 <= 2)
      {
        for (i = 0; i != 3; ++i)
        {
          mhaInputProjResults5 = [v356 mhaInputProjResults];
          v121 = [mhaInputProjResults5 objectAtIndexedSubscript:i];

          v122 = objc_alloc(MEMORY[0x277CD7250]);
          mhaMatrixDescriptors4 = [v356 mhaMatrixDescriptors];
          v124 = [mhaMatrixDescriptors4 objectAtIndexedSubscript:i + 9];
          v125 = [v122 initWithBuffer:v121 descriptor:v124];

          mhaMatMulSourcesQKV5 = [v356 mhaMatMulSourcesQKV];
          [mhaMatMulSourcesQKV5 setObject:v125 atIndexedSubscript:i];
        }
      }

      mhaMatMulSourcesQKV6 = [v356 mhaMatMulSourcesQKV];
      v128 = [mhaMatMulSourcesQKV6 objectAtIndexedSubscript:0];

      mhaMatMulSourcesQKV7 = [v356 mhaMatMulSourcesQKV];
      v130 = [mhaMatMulSourcesQKV7 objectAtIndexedSubscript:1];

      mhaNDArrayDescriptors4 = [v356 mhaNDArrayDescriptors];
      v132 = [mhaNDArrayDescriptors4 objectAtIndexedSubscript:9];

      v354 = v128;
      v348 = v132;
      v133 = [v128 ndArrayWithCommandBuffer:v358 descriptor:v132 aliasing:1];
      descriptor5 = [v133 descriptor];
      [descriptor5 transposeDimension:0 withDimension:1];
      v342 = descriptor5;
      v345 = v133;
      v135 = [v133 arrayViewWithCommandBuffer:v358 descriptor:descriptor5 aliasing:1];
      mhaNDArrayDescriptors5 = [v356 mhaNDArrayDescriptors];
      v137 = [mhaNDArrayDescriptors5 objectAtIndexedSubscript:10];

      v351 = v130;
      v336 = v137;
      v138 = [v130 ndArrayWithCommandBuffer:v358 descriptor:v137 aliasing:1];
      mhaMatrixDescriptors5 = [v356 mhaMatrixDescriptors];
      v140 = [mhaMatrixDescriptors5 objectAtIndexedSubscript:12];

      matrices = [v140 matrices];
      v142 = [v140 matrixBytes] * matrices;
      gpuHeapTemporaryResourceAllocator2 = [(MLCDeviceGPU *)selfCopy2 gpuHeapTemporaryResourceAllocator];
      v144 = [gpuHeapTemporaryResourceAllocator2 objectAtIndexedSubscript:{objc_msgSend(v356, "temporaryHeapIndex")}];
      v145 = [v144 allocateBuffer:v142];

      v146 = v140;
      v326 = v145;
      v147 = [objc_alloc(MEMORY[0x277CD7250]) initWithBuffer:v145 descriptor:v140];
      mhaNDArrayDescriptors6 = [v356 mhaNDArrayDescriptors];
      v149 = [mhaNDArrayDescriptors6 objectAtIndexedSubscript:12];

      v324 = v149;
      v150 = [v147 ndArrayWithCommandBuffer:v358 descriptor:v149 aliasing:1];
      mhaMatMulKernelWithScale = [v356 mhaMatMulKernelWithScale];
      v339 = v135;
      v385[0] = v135;
      v385[1] = v138;
      v333 = v138;
      v152 = [MEMORY[0x277CBEA60] arrayWithObjects:v385 count:2];
      v320 = v150;
      [mhaMatMulKernelWithScale encodeToCommandBuffer:v358 sourceArrays:v152 destinationArray:v150];

      mhaQKSoftmaxResultMatrix = [v356 mhaQKSoftmaxResultMatrix];

      v329 = v146;
      if (mhaQKSoftmaxResultMatrix)
      {
        mhaQKSoftmaxResultMatrix2 = [v356 mhaQKSoftmaxResultMatrix];
        data2 = [mhaQKSoftmaxResultMatrix2 data];
      }

      else
      {
        data2 = [v330 newBufferWithLength:objc_msgSend(v147 options:{"matrixBytes") * objc_msgSend(v147, "matrices"), +[MLCGPUHelper mtlResourceOptions](MLCGPUHelper, "mtlResourceOptions")}];
        mhaQKSoftmaxResultMatrix2 = [objc_alloc(MEMORY[0x277CD7250]) initWithBuffer:data2 descriptor:v146];
        [v356 setMhaQKSoftmaxResultMatrix:mhaQKSoftmaxResultMatrix2];
      }

      v156 = v356;

      mhaQKSoftmaxResultMatrix3 = [v356 mhaQKSoftmaxResultMatrix];
      context = objc_autoreleasePoolPush();
      columns = [v147 columns];
      [v356 setResult:data2];
      v368 = v147;
      data3 = [v147 data];
      v158 = data2;
      mhaMaskSoftmaxForwardKernel = [v356 mhaMaskSoftmaxForwardKernel];
      maxTotalThreadsPerThreadgroup2 = [mhaMaskSoftmaxForwardKernel maxTotalThreadsPerThreadgroup];

      if (maxTotalThreadsPerThreadgroup2 > columns)
      {
        v161 = 1 << -__clz(columns);
        maxTotalThreadsPerThreadgroup2 = (columns & (columns - 1)) != 0 ? v161 : columns;
        mhaMaskSoftmaxForwardKernel2 = [v356 mhaMaskSoftmaxForwardKernel];
        threadExecutionWidth = [mhaMaskSoftmaxForwardKernel2 threadExecutionWidth];

        if (maxTotalThreadsPerThreadgroup2 <= threadExecutionWidth)
        {
          maxTotalThreadsPerThreadgroup2 = threadExecutionWidth;
        }
      }

      v375 = 0u;
      memset(v376, 0, 28);
      v374 = 0u;
      mhaHasKeyMask = [v356 mhaHasKeyMask];
      v165 = data3;
      if (([v356 mhaHasAttentionMask] & 1) != 0 || objc_msgSend(v356, "mhaHasKeyMask"))
      {
        LODWORD(v374) = [v147 matrices];
        DWORD1(v374) = [v147 rows];
        DWORD2(v374) = 1;
        HIDWORD(v374) = [v147 columns];
        LODWORD(v376[1]) = mhaHeadCount;
        if ([v356 mhaHasAttentionMask])
        {
          if (mhaHasKeyMask)
          {
            v166 = 4;
          }

          else
          {
            v166 = 3;
          }

          v167 = [v321 objectAtIndexedSubscript:v166];
          descriptor6 = [v167 descriptor];
          if ([descriptor6 isFloatingPoint])
          {
            v169 = 1;
          }

          else
          {
            v169 = 2;
          }

          DWORD1(v376[1]) = v169;

          v170 = [v321 objectAtIndexedSubscript:v166];
          descriptor7 = [v170 descriptor];
          shape2 = [descriptor7 shape];
          [shape2 objectAtIndexedSubscript:0];
          v173 = mhaHasKeyMask;
          v175 = v174 = v158;
          LODWORD(v375) = [v175 unsignedIntegerValue];

          v158 = v174;
          mhaHasKeyMask = v173;
          v165 = data3;

          DWORD1(v375) = [v147 rows];
          DWORD2(v375) = 1;
          v176 = [v321 objectAtIndexedSubscript:v166];
          descriptor8 = [v176 descriptor];
          shape3 = [descriptor8 shape];
          v179 = [shape3 objectAtIndexedSubscript:2];
          HIDWORD(v375) = [v179 unsignedIntegerValue];

          v156 = v356;
        }

        else
        {
          DWORD1(v376[1]) = 0;
        }

        if ([v156 mhaHasKeyMask])
        {
          DWORD2(v376[1]) = 1;
          LODWORD(v376[0]) = [v156 batchSize];
          *(v376 + 4) = 0x100000001;
          v180 = [v321 objectAtIndexedSubscript:3];
          descriptor9 = [v180 descriptor];
          shape4 = [descriptor9 shape];
          v183 = [shape4 objectAtIndexedSubscript:1];
          HIDWORD(v376[0]) = [v183 unsignedIntegerValue];

          v156 = v356;
        }

        else
        {
          DWORD2(v376[1]) = 0;
        }
      }

      matrices2 = [v147 matrices];
      rows = [v147 rows];
      v370[0] = columns;
      v370[1] = 2;
      v371 = maxTotalThreadsPerThreadgroup2 >= columns;
      v372 = 1;
      v373 = columns;
      v186 = [v358 computeCommandEncoderWithDispatchType:0];
      if (v371)
      {
        [v156 mhaMaskSoftmaxForwardKernel];
      }

      else
      {
        [v156 mhaMaskSoftmaxFastForwardKernel];
      }
      v187 = ;
      [v186 setComputePipelineState:v187];

      [v186 setBuffer:v165 offset:0 atIndex:0];
      [v186 setBuffer:v158 offset:0 atIndex:1];
      v362 = v158;

      if ([v156 mhaHasAttentionMask])
      {
        if (mhaHasKeyMask)
        {
          v188 = 4;
        }

        else
        {
          v188 = 3;
        }

        [v321 objectAtIndexedSubscript:v188];
        v190 = v189 = maxTotalThreadsPerThreadgroup2;
        descriptor10 = [v190 descriptor];
        if ([descriptor10 isFloatingPoint])
        {
          v192 = 2;
        }

        else
        {
          v192 = 3;
        }

        v193 = [v321 objectAtIndexedSubscript:v188];
        deviceMemory4 = [v193 deviceMemory];
        v195 = [deviceMemory4 objectAtIndexedSubscript:v355];
        [v186 setBuffer:v195 offset:0 atIndex:v192];

        v156 = v356;
        maxTotalThreadsPerThreadgroup2 = v189;
      }

      if ([v156 mhaHasKeyMask])
      {
        v196 = [v321 objectAtIndexedSubscript:3];
        [v196 deviceMemory];
        v198 = v197 = maxTotalThreadsPerThreadgroup2;
        v199 = [v198 objectAtIndexedSubscript:v355];
        [v186 setBuffer:v199 offset:0 atIndex:4];

        v156 = v356;
        maxTotalThreadsPerThreadgroup2 = v197;
      }

      [v186 setBytes:v370 length:20 atIndex:5];
      [v186 setBytes:&v374 length:60 atIndex:6];
      [v186 setThreadgroupMemoryLength:GPU_AlignForThreadGroupMemorySize(4 * (maxTotalThreadsPerThreadgroup2 + maxTotalThreadsPerThreadgroup2 * v371)) atIndex:0];
      v379 = 1;
      v380 = rows * matrices2;
      v381 = 1;
      v377 = maxTotalThreadsPerThreadgroup2;
      v378 = vdupq_n_s64(1uLL);
      [v186 dispatchThreadgroups:&v379 threadsPerThreadgroup:&v377];
      [v186 endEncoding];

      objc_autoreleasePoolPop(context);
      mhaMatMulSourcesQKV8 = [v156 mhaMatMulSourcesQKV];
      v201 = [mhaMatMulSourcesQKV8 objectAtIndexedSubscript:2];

      mhaMatMulSourcesQKV9 = [v156 mhaMatMulSourcesQKV];
      v203 = [mhaMatMulSourcesQKV9 count];

      v204 = v156;
      v205 = v355;
      if (v203 > 3)
      {
        mhaMatMulSourcesQKV10 = [v156 mhaMatMulSourcesQKV];
        v209 = [mhaMatMulSourcesQKV10 objectAtIndexedSubscript:3];
      }

      else
      {
        mhaMatrixDescriptors6 = [v156 mhaMatrixDescriptors];
        mhaMatMulSourcesQKV10 = [mhaMatrixDescriptors6 objectAtIndexedSubscript:13];

        v208 = [v330 newBufferWithLength:objc_msgSend(mhaMatMulSourcesQKV10 options:{"matrixBytes") * objc_msgSend(mhaMatMulSourcesQKV10, "matrices"), +[MLCGPUHelper mtlResourceOptions](MLCGPUHelper, "mtlResourceOptions")}];
        v209 = [objc_alloc(MEMORY[0x277CD7250]) initWithBuffer:v208 descriptor:mhaMatMulSourcesQKV10];
        mhaMatMulSourcesQKV11 = [v156 mhaMatMulSourcesQKV];
        [mhaMatMulSourcesQKV11 setObject:v209 atIndexedSubscript:3];
      }

      mhaNDArrayDescriptors7 = [v156 mhaNDArrayDescriptors];
      v212 = [mhaNDArrayDescriptors7 objectAtIndexedSubscript:11];

      contexta = v201;
      v310 = v212;
      v213 = [v201 ndArrayWithCommandBuffer:v358 descriptor:v212 aliasing:1];
      mhaNDArrayDescriptors8 = [v156 mhaNDArrayDescriptors];
      v215 = [mhaNDArrayDescriptors8 objectAtIndexedSubscript:12];

      v308 = v215;
      v216 = [mhaQKSoftmaxResultMatrix3 ndArrayWithCommandBuffer:v358 descriptor:v215 aliasing:1];
      descriptor11 = [v216 descriptor];
      [descriptor11 transposeDimension:0 withDimension:1];
      v306 = descriptor11;
      v307 = v216;
      v218 = [v216 arrayViewWithCommandBuffer:v358 descriptor:descriptor11 aliasing:1];
      mhaNDArrayDescriptors9 = [v156 mhaNDArrayDescriptors];
      v220 = [mhaNDArrayDescriptors9 objectAtIndexedSubscript:13];

      v304 = v220;
      v221 = [v209 ndArrayWithCommandBuffer:v358 descriptor:v220 aliasing:1];
      mhaMatMulKernel2 = [v156 mhaMatMulKernel];
      v309 = v213;
      v384[0] = v213;
      v384[1] = v218;
      v305 = v218;
      v223 = [MEMORY[0x277CBEA60] arrayWithObjects:v384 count:2];
      v303 = v221;
      [mhaMatMulKernel2 encodeToCommandBuffer:v358 sourceArrays:v223 destinationArray:v221];

      mhaMatrixDescriptors7 = [v156 mhaMatrixDescriptors];
      v225 = [mhaMatrixDescriptors7 objectAtIndexedSubscript:2];

      v226 = objc_alloc(MEMORY[0x277CD7250]);
      v312 = v209;
      data4 = [v209 data];
      v302 = v225;
      v228 = [v226 initWithBuffer:data4 descriptor:v225];

      mhaNDArrayDescriptors10 = [v156 mhaNDArrayDescriptors];
      v230 = [mhaNDArrayDescriptors10 objectAtIndexedSubscript:2];

      v300 = v230;
      v301 = v228;
      v231 = [v228 ndArrayWithCommandBuffer:v358 descriptor:v230 aliasing:1];
      descriptor12 = [v231 descriptor];
      [descriptor12 transposeDimension:0 withDimension:1];
      v298 = descriptor12;
      v299 = v231;
      v233 = [v231 arrayViewWithCommandBuffer:v358 descriptor:descriptor12 aliasing:1];
      mhaMatrixDescriptors8 = [v156 mhaMatrixDescriptors];
      v235 = [mhaMatrixDescriptors8 objectAtIndexedSubscript:14];

      v236 = objc_alloc(MEMORY[0x277CD7250]);
      exportableState3 = [v156 exportableState];
      v238 = [exportableState3 objectAtIndexedSubscript:3];
      v296 = v235;
      v239 = [v236 initWithBuffer:v238 descriptor:v235];

      mhaNDArrayDescriptors11 = [v156 mhaNDArrayDescriptors];
      v241 = [mhaNDArrayDescriptors11 objectAtIndexedSubscript:14];

      v295 = v239;
      v242 = [v239 ndArrayWithCommandBuffer:v358 descriptor:v241 aliasing:1];
      descriptor13 = [v242 descriptor];
      [descriptor13 transposeDimension:0 withDimension:1];
      v293 = descriptor13;
      v294 = v242;
      v244 = [v242 arrayViewWithCommandBuffer:v358 descriptor:descriptor13 aliasing:1];
      mhaMatrixDescriptors9 = [v156 mhaMatrixDescriptors];
      v246 = [mhaMatrixDescriptors9 objectAtIndexedSubscript:15];

      v247 = objc_alloc(MEMORY[0x277CD7250]);
      v248 = [deviceMemory objectAtIndexedSubscript:v355];
      v291 = v246;
      v249 = [v247 initWithBuffer:v248 descriptor:v246];

      mhaNDArrayDescriptors12 = [v156 mhaNDArrayDescriptors];
      v251 = [mhaNDArrayDescriptors12 objectAtIndexedSubscript:15];

      v289 = v251;
      v290 = v249;
      v252 = [v249 ndArrayWithCommandBuffer:v358 descriptor:v251 aliasing:1];
      mhaMatMulKernel3 = [v156 mhaMatMulKernel];
      v297 = v233;
      v383[0] = v233;
      v383[1] = v244;
      v292 = v244;
      v254 = [MEMORY[0x277CBEA60] arrayWithObjects:v383 count:2];
      [mhaMatMulKernel3 encodeToCommandBuffer:v358 sourceArrays:v254 destinationArray:v252];

      selfCopy = selfCopy2;
      if ([v156 mhaHasBias])
      {
        mhaMatrixDescriptorsForBias2 = [v156 mhaMatrixDescriptorsForBias];
        v256 = [mhaMatrixDescriptorsForBias2 objectAtIndexedSubscript:3];

        v257 = objc_alloc(MEMORY[0x277CD7250]);
        exportableState4 = [v156 exportableState];
        v259 = [exportableState4 objectAtIndexedSubscript:7];
        v260 = [v257 initWithBuffer:v259 descriptor:v256];

        mhaNDArrayDescriptorsForBias2 = [v204 mhaNDArrayDescriptorsForBias];
        v262 = [mhaNDArrayDescriptorsForBias2 objectAtIndexedSubscript:3];

        v263 = [v260 ndArrayWithCommandBuffer:v358 descriptor:v262 aliasing:1];
        mhaBiasAddKernel2 = [v204 mhaBiasAddKernel];
        v382[0] = v252;
        v382[1] = v263;
        v265 = [MEMORY[0x277CBEA60] arrayWithObjects:v382 count:2];
        [mhaBiasAddKernel2 encodeToCommandBuffer:v358 sourceArrays:v265 destinationArray:v252];

        selfCopy = selfCopy2;
        v205 = v355;
      }

      mhaDropoutForwardKernel = [v204 mhaDropoutForwardKernel];

      if (mhaDropoutForwardKernel)
      {
        v285 = v252;
        gpuWriteTensorKernelList = [(MLCDeviceGPU *)selfCopy gpuWriteTensorKernelList];
        v268 = [gpuWriteTensorKernelList objectAtIndexedSubscript:v205];
        v269 = +[MLCGPUHelper allocateMPSImageBatchForTensor:commandBuffer:kernel:batchSize:heapAllocator:imageBatchIsTemporary:](MLCGPUHelper, "allocateMPSImageBatchForTensor:commandBuffer:kernel:batchSize:heapAllocator:imageBatchIsTemporary:", v287, v358, v268, [v204 batchSize], 0, temporaryCopy);

        if (temporaryCopy && trainingCopy)
        {
          MPSImageBatchIncrementReadCount(v269, 1);
        }

        gpuWriteTensorKernelList2 = [(MLCDeviceGPU *)selfCopy2 gpuWriteTensorKernelList];
        v271 = [gpuWriteTensorKernelList2 objectAtIndexedSubscript:v205];
        v272 = [deviceMemory objectAtIndexedSubscript:v205];
        descriptor14 = [v287 descriptor];
        +[MLCGPUHelper copyMTLBufferToMPSImageBatch:commandBuffer:sourceMTLBuffer:destinationImageBatch:MLCDataType:](MLCGPUHelper, "copyMTLBufferToMPSImageBatch:commandBuffer:sourceMTLBuffer:destinationImageBatch:MLCDataType:", v271, v358, v272, v269, [descriptor14 dataType]);

        mhaDropoutForwardKernel2 = [v356 mhaDropoutForwardKernel];
        defaultAllocator = [MEMORY[0x277CD72A8] defaultAllocator];
        [mhaDropoutForwardKernel2 setDestinationImageAllocator:defaultAllocator];

        v369 = 0;
        v276 = [mhaDropoutForwardKernel2 encodeBatchToCommandBuffer:v358 sourceImages:v269 destinationStates:&v369 destinationStateIsTemporary:temporaryCopy];
        v277 = v369;
        [v356 setMhaDropoutSource:v269];
        [v356 setMhaDropoutState:v277];

        gpuReadTensorKernelList = [(MLCDeviceGPU *)selfCopy2 gpuReadTensorKernelList];
        v279 = [gpuReadTensorKernelList objectAtIndexedSubscript:v355];
        v280 = [deviceMemory objectAtIndexedSubscript:v355];
        descriptor15 = [v287 descriptor];
        +[MLCGPUHelper copyMPSImageBatchToMTLBuffer:commandBuffer:sourceImageBatch:destinationMTLBuffer:MLCDataType:](MLCGPUHelper, "copyMPSImageBatchToMTLBuffer:commandBuffer:sourceImageBatch:destinationMTLBuffer:MLCDataType:", v279, v358, v276, v280, [descriptor15 dataType]);

        selfCopy = selfCopy2;
        v205 = v355;

        v252 = v285;
      }

      if (trainingCopy)
      {
        [v356 setSource:v297];
      }

      v19 = v205 + 1;
    }

    while (v205 + 1 < [(MLCDeviceGPU *)selfCopy numDevicesToUse]);
  }

  objc_autoreleasePoolPop(v283);
  v282 = *MEMORY[0x277D85DE8];
}

- (void)dispatchGradientMHALayer:(id)layer sourceGradientTensor:(id)tensor resultGradientTensors:(id)tensors resultStateIsTemporary:(BOOL)temporary
{
  temporaryCopy = temporary;
  v397 = *MEMORY[0x277D85DE8];
  layerCopy = layer;
  tensorCopy = tensor;
  tensorsCopy = tensors;
  v278 = objc_autoreleasePoolPush();
  descriptor = [tensorCopy descriptor];
  stride = [descriptor stride];
  v327 = tensorCopy;
  descriptor2 = [tensorCopy descriptor];
  v14 = [stride objectAtIndexedSubscript:{objc_msgSend(descriptor2, "dimensionCount") - 1}];
  unsignedIntegerValue = [v14 unsignedIntegerValue];

  v15 = [MEMORY[0x277CBEBF8] mutableCopy];
  v384 = 0u;
  v385 = 0u;
  v386 = 0u;
  v387 = 0u;
  obj = tensorsCopy;
  v16 = [obj countByEnumeratingWithState:&v384 objects:v396 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v385;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v385 != v18)
        {
          objc_enumerationMutation(obj);
        }

        [(MLCDeviceGPU *)self allocateResultTensor:*(*(&v384 + 1) + 8 * i)];
      }

      v17 = [obj countByEnumeratingWithState:&v384 objects:v396 count:16];
    }

    while (v17);
  }

  if ([(MLCDeviceGPU *)self numDevicesToUse])
  {
    v20 = 0;
    selfCopy = self;
    v280 = v15;
    do
    {
      v21 = [layerCopy objectAtIndexedSubscript:v20];
      gpuCommandBufferList = [(MLCDeviceGPU *)self gpuCommandBufferList];
      v23 = [gpuCommandBufferList objectAtIndexedSubscript:v20];

      deviceList = [(MLCDeviceGPU *)self deviceList];
      v351 = [deviceList objectAtIndexedSubscript:v20];

      mhaDropoutGradientKernel = [v21 mhaDropoutGradientKernel];

      v347 = v21;
      if (mhaDropoutGradientKernel)
      {
        batchSize = [v21 batchSize];
        gpuWriteTensorKernelList = [(MLCDeviceGPU *)self gpuWriteTensorKernelList];
        v28 = [gpuWriteTensorKernelList objectAtIndexedSubscript:v20];
        deviceMemory = [v327 deviceMemory];
        v30 = [deviceMemory objectAtIndexedSubscript:v20];
        descriptor3 = [v327 descriptor];
        deviceMemory3 = +[MLCGPUHelper allocateAndCopyToTemporaryMPSImageBatchForTensor:commandBuffer:batchSize:copyingKernel:sourceMTLBuffer:MLCDataType:heapAllocator:](MLCGPUHelper, "allocateAndCopyToTemporaryMPSImageBatchForTensor:commandBuffer:batchSize:copyingKernel:sourceMTLBuffer:MLCDataType:heapAllocator:", v327, v23, batchSize, v28, v30, [descriptor3 dataType], 0);

        mhaDropoutGradientKernel2 = [v347 mhaDropoutGradientKernel];
        defaultAllocator = [MEMORY[0x277CD72A8] defaultAllocator];
        [mhaDropoutGradientKernel2 setDestinationImageAllocator:defaultAllocator];

        batchSize2 = [v347 batchSize];
        mhaDropoutSource = [v347 mhaDropoutSource];
        v37 = [mhaDropoutSource subarrayWithRange:{0, batchSize2}];
        mhaDropoutState = [v347 mhaDropoutState];
        v39 = [mhaDropoutGradientKernel2 encodeBatchToCommandBuffer:v23 sourceGradients:deviceMemory3 sourceImages:v37 gradientStates:mhaDropoutState];

        deviceMemory2 = [v327 deviceMemory];
        v41 = [deviceMemory2 objectAtIndexedSubscript:v20];
        v42 = [v41 length];

        gpuHeapTemporaryResourceAllocator = [(MLCDeviceGPU *)selfCopy gpuHeapTemporaryResourceAllocator];
        v44 = [gpuHeapTemporaryResourceAllocator objectAtIndexedSubscript:{objc_msgSend(v347, "temporaryHeapIndex")}];
        v45 = [v44 allocateBuffer:v42];

        gpuReadTensorKernelList = [(MLCDeviceGPU *)selfCopy gpuReadTensorKernelList];
        v47 = [gpuReadTensorKernelList objectAtIndexedSubscript:v20];
        descriptor4 = [v327 descriptor];
        v15 = v280;
        +[MLCGPUHelper copyMPSImageBatchToMTLBuffer:commandBuffer:sourceImageBatch:destinationMTLBuffer:MLCDataType:](MLCGPUHelper, "copyMPSImageBatchToMTLBuffer:commandBuffer:sourceImageBatch:destinationMTLBuffer:MLCDataType:", v47, v23, v39, v45, [descriptor4 dataType]);

        self = selfCopy;
        v21 = v347;

        [v280 setObject:v45 atIndexedSubscript:v20];
      }

      else
      {
        deviceMemory3 = [v327 deviceMemory];
        mhaDropoutGradientKernel2 = [deviceMemory3 objectAtIndexedSubscript:v20];
        [v15 setObject:mhaDropoutGradientKernel2 atIndexedSubscript:v20];
      }

      mhaMatrixDescriptors = [v21 mhaMatrixDescriptors];
      v50 = [mhaMatrixDescriptors objectAtIndexedSubscript:15];

      v51 = objc_alloc(MEMORY[0x277CD7250]);
      v52 = [v15 objectAtIndexedSubscript:v20];
      v318 = v50;
      v53 = [v51 initWithBuffer:v52 descriptor:v50];

      mhaNDArrayDescriptors = [v21 mhaNDArrayDescriptors];
      v55 = [mhaNDArrayDescriptors objectAtIndexedSubscript:15];

      v316 = v55;
      v317 = v53;
      v56 = [v53 ndArrayWithCommandBuffer:v23 descriptor:v55 aliasing:1];
      descriptor5 = [v56 descriptor];
      [descriptor5 transposeDimension:0 withDimension:1];
      v330 = v56;
      v315 = descriptor5;
      v326 = [v56 arrayViewWithCommandBuffer:v23 descriptor:descriptor5 aliasing:1];
      mhaMatrixDescriptors2 = [v21 mhaMatrixDescriptors];
      v59 = [mhaMatrixDescriptors2 objectAtIndexedSubscript:14];

      v60 = objc_alloc(MEMORY[0x277CD7250]);
      exportableState = [v21 exportableState];
      v62 = [exportableState objectAtIndexedSubscript:3];
      v329 = v59;
      v63 = [v60 initWithBuffer:v62 descriptor:v59];

      mhaNDArrayDescriptors2 = [v21 mhaNDArrayDescriptors];
      v65 = [mhaNDArrayDescriptors2 objectAtIndexedSubscript:14];

      v314 = v63;
      v328 = v65;
      v66 = [v63 ndArrayWithCommandBuffer:v23 descriptor:v65 aliasing:1];
      descriptor6 = [v66 descriptor];
      [descriptor6 transposeDimension:0 withDimension:1];
      v312 = descriptor6;
      v313 = v66;
      v68 = [v66 arrayViewWithCommandBuffer:v23 descriptor:descriptor6 aliasing:1];
      mhaMatrixDescriptors3 = [v21 mhaMatrixDescriptors];
      v70 = [mhaMatrixDescriptors3 objectAtIndexedSubscript:2];

      gpuHeapTemporaryResourceAllocator2 = [(MLCDeviceGPU *)self gpuHeapTemporaryResourceAllocator];
      v72 = [gpuHeapTemporaryResourceAllocator2 objectAtIndexedSubscript:{objc_msgSend(v21, "temporaryHeapIndex")}];
      v73 = [v72 allocateBuffer:{objc_msgSend(v70, "matrixBytes") * objc_msgSend(v70, "matrices")}];

      v325 = v73;
      v310 = v70;
      v74 = [objc_alloc(MEMORY[0x277CD7250]) initWithBuffer:v73 descriptor:v70];
      mhaNDArrayDescriptors3 = [v21 mhaNDArrayDescriptors];
      v76 = [mhaNDArrayDescriptors3 objectAtIndexedSubscript:2];

      v308 = v76;
      v309 = v74;
      v77 = [v74 ndArrayWithCommandBuffer:v23 descriptor:v76 aliasing:1];
      mhaMatMulKernel = [v21 mhaMatMulKernel];
      v311 = v68;
      v395[0] = v68;
      v395[1] = v326;
      v79 = [MEMORY[0x277CBEA60] arrayWithObjects:v395 count:2];
      v368 = v23;
      v307 = v77;
      [mhaMatMulKernel encodeToCommandBuffer:v23 sourceArrays:v79 destinationArray:v77];

      v80 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:3];
      for (j = 0; j != 3; ++j)
      {
        mhaMatrixDescriptors4 = [v21 mhaMatrixDescriptors];
        v83 = [mhaMatrixDescriptors4 objectAtIndexedSubscript:j + 9];

        gpuHeapTemporaryResourceAllocator3 = [(MLCDeviceGPU *)self gpuHeapTemporaryResourceAllocator];
        v85 = [gpuHeapTemporaryResourceAllocator3 objectAtIndexedSubscript:{objc_msgSend(v21, "temporaryHeapIndex")}];
        v86 = [v85 allocateBuffer:{objc_msgSend(v83, "matrices") * objc_msgSend(v83, "matrixBytes")}];

        v87 = [objc_alloc(MEMORY[0x277CD7250]) initWithBuffer:v86 descriptor:v83];
        [v80 setObject:v87 atIndexedSubscript:j];
      }

      mhaMatrixDescriptors5 = [v21 mhaMatrixDescriptors];
      v89 = [mhaMatrixDescriptors5 objectAtIndexedSubscript:13];

      v306 = v89;
      v90 = [objc_alloc(MEMORY[0x277CD7250]) initWithBuffer:v325 descriptor:v89];
      mhaNDArrayDescriptors4 = [v21 mhaNDArrayDescriptors];
      v92 = [mhaNDArrayDescriptors4 objectAtIndexedSubscript:13];

      v304 = v92;
      v305 = v90;
      v93 = [v90 ndArrayWithCommandBuffer:v368 descriptor:v92 aliasing:1];
      mhaQKSoftmaxResultMatrix = [v21 mhaQKSoftmaxResultMatrix];
      mhaNDArrayDescriptors5 = [v21 mhaNDArrayDescriptors];
      v96 = [mhaNDArrayDescriptors5 objectAtIndexedSubscript:12];

      v322 = v96;
      v97 = [mhaQKSoftmaxResultMatrix ndArrayWithCommandBuffer:v368 descriptor:v96 aliasing:1];
      mhaNDArrayDescriptors6 = [v21 mhaNDArrayDescriptors];
      v99 = [mhaNDArrayDescriptors6 objectAtIndexedSubscript:11];

      v324 = v80;
      v100 = [v80 objectAtIndexedSubscript:2];
      v301 = v99;
      v101 = [v100 ndArrayWithCommandBuffer:v368 descriptor:v99 aliasing:1];

      mhaMatMulKernel2 = [v21 mhaMatMulKernel];
      v394[0] = v93;
      v302 = v97;
      v394[1] = v97;
      v103 = [MEMORY[0x277CBEA60] arrayWithObjects:v394 count:2];
      v300 = v101;
      [mhaMatMulKernel2 encodeToCommandBuffer:v368 sourceArrays:v103 destinationArray:v101];

      descriptor7 = [v93 descriptor];
      [descriptor7 transposeDimension:0 withDimension:1];
      v303 = v93;
      v299 = descriptor7;
      v105 = [v93 arrayViewWithCommandBuffer:v368 descriptor:descriptor7 aliasing:1];
      mhaMatMulSourcesQKV = [v21 mhaMatMulSourcesQKV];
      v107 = [mhaMatMulSourcesQKV objectAtIndexedSubscript:2];

      mhaNDArrayDescriptors7 = [v21 mhaNDArrayDescriptors];
      v109 = [mhaNDArrayDescriptors7 objectAtIndexedSubscript:11];
      v297 = v107;
      v321 = [v107 ndArrayWithCommandBuffer:v368 descriptor:v109 aliasing:1];

      gpuHeapTemporaryResourceAllocator4 = [(MLCDeviceGPU *)self gpuHeapTemporaryResourceAllocator];
      v111 = [gpuHeapTemporaryResourceAllocator4 objectAtIndexedSubscript:{objc_msgSend(v21, "temporaryHeapIndex")}];
      v323 = mhaQKSoftmaxResultMatrix;
      v112 = [v111 allocateBuffer:{objc_msgSend(mhaQKSoftmaxResultMatrix, "matrices") * objc_msgSend(mhaQKSoftmaxResultMatrix, "matrixBytes")}];

      mhaMatrixDescriptors6 = [v21 mhaMatrixDescriptors];
      v114 = [mhaMatrixDescriptors6 objectAtIndexedSubscript:12];

      v115 = [objc_alloc(MEMORY[0x277CD7250]) initWithBuffer:v112 descriptor:v114];
      mhaNDArrayDescriptors8 = [v21 mhaNDArrayDescriptors];
      v117 = [mhaNDArrayDescriptors8 objectAtIndexedSubscript:12];

      v293 = v117;
      v294 = v115;
      v118 = [v115 ndArrayWithCommandBuffer:v368 descriptor:v117 aliasing:1];
      mhaMatMulKernel3 = [v21 mhaMatMulKernel];
      v298 = v105;
      v393[0] = v105;
      v393[1] = v321;
      v120 = [MEMORY[0x277CBEA60] arrayWithObjects:v393 count:2];
      v292 = v118;
      [mhaMatMulKernel3 encodeToCommandBuffer:v368 sourceArrays:v120 destinationArray:v118];

      selfCopy2 = self;
      v122 = v112;
      gpuHeapTemporaryResourceAllocator5 = [(MLCDeviceGPU *)selfCopy2 gpuHeapTemporaryResourceAllocator];
      v124 = [gpuHeapTemporaryResourceAllocator5 objectAtIndexedSubscript:{objc_msgSend(v21, "temporaryHeapIndex")}];
      v125 = [v124 allocateBuffer:{objc_msgSend(v112, "length")}];

      v295 = v114;
      v320 = [objc_alloc(MEMORY[0x277CD7250]) initWithBuffer:v125 descriptor:v114];
      context = objc_autoreleasePoolPush();
      columns = [v323 columns];
      mhaSoftmaxGradientKernel = [v21 mhaSoftmaxGradientKernel];
      maxTotalThreadsPerThreadgroup = [mhaSoftmaxGradientKernel maxTotalThreadsPerThreadgroup];

      v129 = 1 << -__clz(columns);
      if ((columns & (columns - 1)) == 0)
      {
        v129 = columns;
      }

      if (maxTotalThreadsPerThreadgroup > columns)
      {
        maxTotalThreadsPerThreadgroup = v129;
      }

      matrices = [v323 matrices];
      v131 = [v323 rows] * matrices;
      v372 = columns | 0x200000000;
      LODWORD(v373) = maxTotalThreadsPerThreadgroup >= columns;
      HIDWORD(v373) = 1;
      LODWORD(v374) = columns;
      v132 = [v368 computeCommandEncoderWithDispatchType:0];
      mhaSoftmaxGradientKernel2 = [v21 mhaSoftmaxGradientKernel];
      [v132 setComputePipelineState:mhaSoftmaxGradientKernel2];

      v296 = v122;
      [v132 setBuffer:v122 offset:0 atIndex:0];
      v291 = v125;
      [v132 setBuffer:v125 offset:0 atIndex:1];
      result = [v21 result];
      [v132 setBuffer:result offset:0 atIndex:2];

      [v132 setBytes:&v372 length:20 atIndex:3];
      [v132 setThreadgroupMemoryLength:GPU_AlignForThreadGroupMemorySize(4 * (maxTotalThreadsPerThreadgroup + maxTotalThreadsPerThreadgroup * v373)) atIndex:0];
      v375 = 1;
      v376 = v131;
      *v377 = 1;
      v382 = maxTotalThreadsPerThreadgroup;
      v383 = vdupq_n_s64(1uLL);
      [v132 dispatchThreadgroups:&v375 threadsPerThreadgroup:&v382];
      [v132 endEncoding];

      objc_autoreleasePoolPop(context);
      v319 = [v320 ndArrayWithCommandBuffer:v368 descriptor:v322 aliasing:1];
      descriptor8 = [v319 descriptor];
      [descriptor8 transposeDimension:0 withDimension:1];
      v290 = descriptor8;
      v136 = [v319 arrayViewWithCommandBuffer:v368 descriptor:descriptor8 aliasing:1];
      mhaMatMulSourcesQKV2 = [v21 mhaMatMulSourcesQKV];
      v138 = [mhaMatMulSourcesQKV2 objectAtIndexedSubscript:1];

      mhaNDArrayDescriptors9 = [v21 mhaNDArrayDescriptors];
      v140 = [mhaNDArrayDescriptors9 objectAtIndexedSubscript:9];

      mhaNDArrayDescriptors10 = [v21 mhaNDArrayDescriptors];
      v142 = [mhaNDArrayDescriptors10 objectAtIndexedSubscript:10];

      v288 = v138;
      v143 = [v138 ndArrayWithCommandBuffer:v368 descriptor:v142 aliasing:1];
      v144 = [v324 objectAtIndexedSubscript:0];
      v145 = [v144 ndArrayWithCommandBuffer:v368 descriptor:v140 aliasing:1];

      mhaMatMulKernelWithScale = [v21 mhaMatMulKernelWithScale];
      v285 = v143;
      v392[0] = v143;
      v289 = v136;
      v392[1] = v136;
      v147 = [MEMORY[0x277CBEA60] arrayWithObjects:v392 count:2];
      v284 = v145;
      [mhaMatMulKernelWithScale encodeToCommandBuffer:v368 sourceArrays:v147 destinationArray:v145];

      mhaMatMulSourcesQKV3 = [v21 mhaMatMulSourcesQKV];
      v149 = [mhaMatMulSourcesQKV3 objectAtIndexedSubscript:0];

      v283 = v149;
      v287 = v140;
      v150 = [v149 ndArrayWithCommandBuffer:v368 descriptor:v140 aliasing:1];
      v151 = [v324 objectAtIndexedSubscript:1];
      v286 = v142;
      v152 = [v151 ndArrayWithCommandBuffer:v368 descriptor:v142 aliasing:1];

      mhaMatMulKernelWithScale2 = [v21 mhaMatMulKernelWithScale];
      v282 = v150;
      v391[0] = v150;
      v391[1] = v319;
      v154 = [MEMORY[0x277CBEA60] arrayWithObjects:v391 count:2];
      v281 = v152;
      [mhaMatMulKernelWithScale2 encodeToCommandBuffer:v368 sourceArrays:v154 destinationArray:v152];

      v155 = [v324 objectAtIndexedSubscript:0];
      data = [v155 data];
      v390[0] = data;
      v157 = [v324 objectAtIndexedSubscript:1];
      data2 = [v157 data];
      v390[1] = data2;
      v159 = [v324 objectAtIndexedSubscript:2];
      [v159 data];
      v161 = v160 = v21;
      v390[2] = v161;
      v162 = [MEMORY[0x277CBEA60] arrayWithObjects:v390 count:3];
      v365 = [v162 mutableCopy];

      v332 = [MEMORY[0x277CBEBF8] mutableCopy];
      contexta = v20;
      if (([v160 mhaHasAttnBias] & 1) != 0 || objc_msgSend(v347, "mhaHasZeroAttention"))
      {
        mhaHasZeroAttention = [v347 mhaHasZeroAttention];
        mhaHasAttnBias = [v347 mhaHasAttnBias];
        batchSize3 = [v347 batchSize];
        v165 = 0;
        v338 = batchSize3 * unsignedIntegerValue;
        v341 = batchSize3;
        v335 = mhaHasAttnBias + mhaHasZeroAttention;
        v166 = 1;
        do
        {
          v343 = v166;
          v167 = [obj objectAtIndexedSubscript:v165 + 1];
          descriptor9 = [v167 descriptor];
          shape = [descriptor9 shape];
          v170 = 1;
          v171 = [shape objectAtIndexedSubscript:1];
          unsignedIntegerValue2 = [v171 unsignedIntegerValue];

          mhaModelDimension = [v347 mhaModelDimension];
          v366 = [v365 objectAtIndexedSubscript:v165 + 1];
          v358 = v338 * mhaModelDimension;
          v360 = unsignedIntegerValue2;
          v355 = v335 + unsignedIntegerValue2;
          v352 = mhaModelDimension * v341;
          v363 = v165;
          while (1)
          {
            v174 = +[MLCGPUHelper mtlResourceOptions];
            v175 = (v170 & 1) != 0 ? v360 : 1;
            v176 = (v170 & 1) != 0 ? 0 : v360;
            v177 = [v351 newBufferWithLength:v358 * v175 options:v174];
            v380 = v176;
            v375 = __PAIR64__(v352, v175);
            v376 = 0x100000001;
            *v377 = v355;
            *&v377[4] = 0x100000001;
            v378 = v175;
            v379 = 1;
            v381 = 0x100000000;
            gpuPipelineStatesConcatFloat = [(MLCDeviceGPU *)selfCopy gpuPipelineStatesConcatFloat];
            v179 = [gpuPipelineStatesConcatFloat objectAtIndexedSubscript:v20];
            maxTotalThreadsPerThreadgroup2 = [v179 maxTotalThreadsPerThreadgroup];

            v181 = v375;
            if (maxTotalThreadsPerThreadgroup2 <= v375)
            {
              v184 = SHIDWORD(v375);
              v182 = 1;
              v181 = maxTotalThreadsPerThreadgroup2;
              v183 = (maxTotalThreadsPerThreadgroup2 + v375 - 1) / maxTotalThreadsPerThreadgroup2;
            }

            else
            {
              v182 = maxTotalThreadsPerThreadgroup2 / v375 >= SHIDWORD(v375) ? SHIDWORD(v375) : maxTotalThreadsPerThreadgroup2 / v375;
              v183 = 1;
              v184 = (SHIDWORD(v375) + v182 - 1) / v182;
            }

            v185 = v376;
            v186 = [v368 computeCommandEncoderWithDispatchType:0];
            gpuPipelineStatesConcatFloat2 = [(MLCDeviceGPU *)selfCopy gpuPipelineStatesConcatFloat];
            v188 = [gpuPipelineStatesConcatFloat2 objectAtIndexedSubscript:contexta];
            [v186 setComputePipelineState:v188];

            [v186 setBuffer:v366 offset:0 atIndex:0];
            [v186 setBuffer:v177 offset:0 atIndex:1];
            [v186 setBytes:&v375 length:48 atIndex:2];
            v382 = v183;
            v383.i64[0] = v184;
            v383.i64[1] = v185;
            v372 = v181;
            v373 = v182;
            v374 = 1;
            [v186 dispatchThreadgroups:&v382 threadsPerThreadgroup:&v372];
            [v186 endEncoding];
            if ((v170 & 1) == 0)
            {
              break;
            }

            [v365 setObject:v177 atIndexedSubscript:v363 + 1];

            v189 = mhaHasAttnBias & v170;
            v170 = 0;
            v20 = contexta;
            if ((v189 & 1) == 0)
            {
              goto LABEL_39;
            }
          }

          [v332 setObject:v177 atIndexedSubscript:v363];

          v20 = contexta;
LABEL_39:

          v166 = 0;
          v165 = 1;
        }

        while ((v343 & 1) != 0);
      }

      v344 = [MEMORY[0x277CBEBF8] mutableCopy];
      v190 = 0;
      v191 = 0;
      v192 = 0x277CBE000;
      v193 = v347;
      v194 = v368;
      do
      {
        if (v191 == 3)
        {
          v359 = v329;
          v364 = v328;
          v367 = v330;
        }

        else
        {
          mhaMatrixDescriptors7 = [v193 mhaMatrixDescriptors];
          v361 = [mhaMatrixDescriptors7 objectAtIndexedSubscript:v190 + 2];

          v196 = objc_alloc(MEMORY[0x277CD7250]);
          v197 = [v365 objectAtIndexedSubscript:v191];
          v356 = [v196 initWithBuffer:v197 descriptor:v361];

          mhaNDArrayDescriptors11 = [v193 mhaNDArrayDescriptors];
          v353 = [mhaNDArrayDescriptors11 objectAtIndexedSubscript:v190 + 2];

          v349 = [v356 ndArrayWithCommandBuffer:v194 descriptor:v353 aliasing:1];
          descriptor10 = [v349 descriptor];
          [descriptor10 transposeDimension:0 withDimension:1];
          v367 = [v349 arrayViewWithCommandBuffer:v194 descriptor:descriptor10 aliasing:1];
          mhaMatrixDescriptors8 = [v193 mhaMatrixDescriptors];
          v200 = [mhaMatrixDescriptors8 objectAtIndexedSubscript:v190 + 1];

          v201 = objc_alloc(MEMORY[0x277CD7250]);
          exportableState2 = [v193 exportableState];
          v203 = [exportableState2 objectAtIndexedSubscript:v191];
          v359 = v200;
          v336 = [v201 initWithBuffer:v203 descriptor:v200];

          mhaNDArrayDescriptors12 = [v193 mhaNDArrayDescriptors];
          v205 = [mhaNDArrayDescriptors12 objectAtIndexedSubscript:v190 + 1];

          v364 = v205;
          v334 = [v336 ndArrayWithCommandBuffer:v194 descriptor:v205 aliasing:1];
          [v193 mhaMatrixDescriptors];
          v207 = v206 = v194;
          v333 = [v207 objectAtIndexedSubscript:v190];

          v208 = objc_alloc(MEMORY[0x277CD7250]);
          v209 = [obj objectAtIndexedSubscript:v191];
          [v209 deviceMemory];
          v211 = v210 = v193;
          v212 = [v211 objectAtIndexedSubscript:v20];
          v213 = [v208 initWithBuffer:v212 descriptor:v333];

          mhaNDArrayDescriptors13 = [v210 mhaNDArrayDescriptors];
          v215 = [mhaNDArrayDescriptors13 objectAtIndexedSubscript:v190];

          v216 = [v213 ndArrayWithCommandBuffer:v206 descriptor:v215 aliasing:1];
          mhaMatMulKernel4 = [v210 mhaMatMulKernel];
          v389[0] = v367;
          v389[1] = v334;
          v218 = [MEMORY[0x277CBEA60] arrayWithObjects:v389 count:2];
          [mhaMatMulKernel4 encodeToCommandBuffer:v206 sourceArrays:v218 destinationArray:v216];

          v20 = contexta;
          v192 = 0x277CBE000uLL;
        }

        if (temporaryCopy)
        {
          v194 = v368;
          v219 = [MEMORY[0x277CD72B0] temporaryMatrixWithCommandBuffer:v368 matrixDescriptor:v359];
          v193 = v347;
        }

        else
        {
          v193 = v347;
          gradientState = [v347 gradientState];
          v221 = [gradientState count];

          v194 = v368;
          if (v221 <= v191)
          {
            exportableState3 = [v347 exportableState];
            v224 = [exportableState3 objectAtIndexedSubscript:v191];
            v225 = [v351 newBufferWithLength:objc_msgSend(v224 options:{"length"), +[MLCGPUHelper mtlResourceOptions](MLCGPUHelper, "mtlResourceOptions")}];

            v219 = [objc_alloc(MEMORY[0x277CD7250]) initWithBuffer:v225 descriptor:v359];
          }

          else
          {
            gradientState2 = [v347 gradientState];
            v219 = [gradientState2 objectAtIndexedSubscript:v191];
          }
        }

        v357 = v219;
        [v364 setPreferPackedRows:1];
        v362 = [v219 ndArrayWithCommandBuffer:v194 descriptor:v364 aliasing:1];
        descriptor11 = [v367 descriptor];
        [descriptor11 transposeDimension:0 withDimension:1];
        v227 = [v367 arrayViewWithCommandBuffer:v194 descriptor:descriptor11 aliasing:1];
        if (v191 == 3)
        {
          source = [v193 source];
        }

        else
        {
          mhaSourcesQKV = [v193 mhaSourcesQKV];
          source = [mhaSourcesQKV objectAtIndexedSubscript:v191];
        }

        mhaMatMulKernel5 = [v193 mhaMatMulKernel];
        v354 = v227;
        v388[0] = v227;
        v350 = source;
        v388[1] = source;
        v231 = [*(v192 + 2656) arrayWithObjects:v388 count:2];
        v232 = [mhaMatMulKernel5 encodeToCommandBuffer:v194 sourceArrays:v231];

        mhaReduceSumKernels = [v193 mhaReduceSumKernels];
        v234 = [mhaReduceSumKernels objectAtIndexedSubscript:0];
        [v234 encodeToCommandBuffer:v194 sourceArray:v232 destinationArray:v362];

        gradientState3 = [v193 gradientState];
        v236 = v357;
        [gradientState3 setObject:v357 atIndexedSubscript:v191];

        if ([v193 mhaHasBias])
        {
          mhaModelDimension2 = [v193 mhaModelDimension];
          mhaMatrixDescriptorsForBias = [v193 mhaMatrixDescriptorsForBias];
          v239 = [mhaMatrixDescriptorsForBias objectAtIndexedSubscript:3];

          v340 = v232;
          v342 = v190;
          v337 = v239;
          if (temporaryCopy)
          {
            v240 = [MEMORY[0x277CD72B0] temporaryMatrixWithCommandBuffer:v194 matrixDescriptor:v239];
          }

          else
          {
            gradientState4 = [v193 gradientState];
            v242 = [gradientState4 count];

            if (v242 < 5)
            {
              gradientState5 = [v351 newBufferWithLength:mhaModelDimension2 * unsignedIntegerValue options:{+[MLCGPUHelper mtlResourceOptions](MLCGPUHelper, "mtlResourceOptions")}];
              v244 = [objc_alloc(MEMORY[0x277CD7250]) initWithBuffer:gradientState5 descriptor:v239];
            }

            else
            {
              gradientState5 = [v193 gradientState];
              v244 = [gradientState5 objectAtIndexedSubscript:v191 + 4];
            }

            v240 = v244;

            v194 = v368;
          }

          mhaNDArrayDescriptorsForBias = [v193 mhaNDArrayDescriptorsForBias];
          v246 = [mhaNDArrayDescriptorsForBias objectAtIndexedSubscript:3];

          v247 = [v240 ndArrayWithCommandBuffer:v194 descriptor:v246 aliasing:1];
          v248 = v367;
          mhaReduceSumKernels2 = [v193 mhaReduceSumKernels];
          v250 = [mhaReduceSumKernels2 objectAtIndexedSubscript:0];
          v251 = [v250 encodeToCommandBuffer:v194 sourceArray:v248];

          mhaReduceSumKernels3 = [v347 mhaReduceSumKernels];
          v253 = [mhaReduceSumKernels3 objectAtIndexedSubscript:1];
          [v253 encodeToCommandBuffer:v194 sourceArray:v251 destinationArray:v247];

          v193 = v347;
          [v344 setObject:v240 atIndexedSubscript:v191];

          v20 = contexta;
          v192 = 0x277CBE000;
          v232 = v340;
          v190 = v342;
          v236 = v357;
        }

        ++v191;
        v190 += 3;
      }

      while (v191 != 4);
      if ([v193 mhaHasAttnBias])
      {
        v254 = 0;
        v255 = 1;
        do
        {
          v256 = v255;
          mhaModelDimension3 = [v193 mhaModelDimension];
          batchSize4 = [v193 batchSize];
          v259 = MEMORY[0x277CD7258];
          descriptor12 = [v327 descriptor];
          v261 = [v259 matrixDescriptorWithRows:1 columns:mhaModelDimension3 rowBytes:mhaModelDimension3 * unsignedIntegerValue dataType:{GPU_GetDataType(objc_msgSend(descriptor12, "dataType"))}];

          if (temporaryCopy)
          {
            v262 = [MEMORY[0x277CD72B0] temporaryMatrixWithCommandBuffer:v194 matrixDescriptor:v261];
          }

          else
          {
            gradientState6 = [v193 gradientState];
            v264 = v193;
            v265 = [gradientState6 count];

            if (v265 < 5)
            {
              gradientState7 = [v351 newBufferWithLength:mhaModelDimension3 * unsignedIntegerValue options:{+[MLCGPUHelper mtlResourceOptions](MLCGPUHelper, "mtlResourceOptions")}];
              v254 = [objc_alloc(MEMORY[0x277CD7250]) initWithBuffer:gradientState7 descriptor:v261];
            }

            else
            {
              gradientState7 = [v264 gradientState];
              mhaHasBias = [v264 mhaHasBias];
              v268 = 4;
              if (mhaHasBias)
              {
                v268 = 8;
              }

              v254 = [gradientState7 objectAtIndexedSubscript:v268 | v254];
            }

            v262 = v254;

            v194 = v368;
          }

          v270 = [v332 objectAtIndexedSubscript:v254];
          data3 = [v262 data];
          [(MLCDeviceGPU *)selfCopy reduceAcrossBatchForSource:v270 result:data3 batchSize:batchSize4 batchStride:mhaModelDimension3 numEntries:mhaModelDimension3 deviceIndex:v20 commandBuffer:v194];

          v193 = v347;
          mhaHasBias2 = [v347 mhaHasBias];
          v273 = 4;
          if (!mhaHasBias2)
          {
            v273 = 0;
          }

          [v344 setObject:v262 atIndexedSubscript:v273 | v254];

          v255 = 0;
          v254 = 1;
        }

        while ((v256 & 1) != 0);
      }

      gradientState8 = [v193 gradientState];
      v275 = [gradientState8 count];

      if (v275 <= 4)
      {
        gradientState9 = [v193 gradientState];
        [gradientState9 addObjectsFromArray:v344];
      }

      ++v20;
      self = selfCopy;
      v15 = v280;
    }

    while (v20 < [(MLCDeviceGPU *)selfCopy numDevicesToUse]);
  }

  objc_autoreleasePoolPop(v278);
  v277 = *MEMORY[0x277D85DE8];
}

- (void)dispatchForwardLossLayer:(id)layer sourceTensor:(id)tensor labelsTensor:(id)labelsTensor labelsTensorStride:(unint64_t)stride weightsTensor:(id)weightsTensor resultTensor:(id)resultTensor resultStateIsTemporary:(BOOL)temporary forTraining:(BOOL)self0
{
  layerCopy = layer;
  tensorCopy = tensor;
  labelsTensorCopy = labelsTensor;
  weightsTensorCopy = weightsTensor;
  resultTensorCopy = resultTensor;
  v66 = tensorCopy;
  [tensorCopy deviceMemory];
  v70 = v69 = labelsTensorCopy;
  deviceMemory = [labelsTensorCopy deviceMemory];
  v68 = weightsTensorCopy;
  deviceMemory2 = [weightsTensorCopy deviceMemory];
  [(MLCDeviceGPU *)self allocateResultTensor:resultTensorCopy];
  deviceMemory3 = [resultTensorCopy deviceMemory];
  if ([(MLCDeviceGPU *)self numDevicesToUse])
  {
    v19 = 0;
    v20 = 0x278A68000uLL;
    selfCopy = self;
    v76 = resultTensorCopy;
    do
    {
      v21 = [layerCopy objectAtIndexedSubscript:v19];
      gpuCommandBufferList = [(MLCDeviceGPU *)self gpuCommandBufferList];
      v84 = [gpuCommandBufferList objectAtIndexedSubscript:v19];

      forwardKernel = [v21 forwardKernel];
      reduceLossKernel = [v21 reduceLossKernel];
      v23 = *(v20 + 2936);
      batchSize = [v21 batchSize];
      gpuWriteTensorKernelList = [(MLCDeviceGPU *)self gpuWriteTensorKernelList];
      v25 = [gpuWriteTensorKernelList objectAtIndexedSubscript:v19];
      v26 = [v70 objectAtIndexedSubscript:v19];
      descriptor = [v66 descriptor];
      v80 = [v23 allocateAndCopyToTemporaryMPSImageBatchForTensor:v66 commandBuffer:v84 batchSize:batchSize copyingKernel:v25 sourceMTLBuffer:v26 MLCDataType:objc_msgSend(descriptor heapAllocator:{"dataType"), 0}];

      v77 = *(v20 + 2936);
      batchSize2 = [v21 batchSize];
      gpuWriteTensorKernelList2 = [(MLCDeviceGPU *)self gpuWriteTensorKernelList];
      v30 = [gpuWriteTensorKernelList2 objectAtIndexedSubscript:v19];
      v31 = [deviceMemory objectAtIndexedSubscript:v19];
      descriptor2 = [v69 descriptor];
      v78 = [v77 allocateAndCopyToTemporaryMPSImageBatchForTensor:v69 commandBuffer:v84 batchSize:batchSize2 copyingKernel:v30 sourceMTLBuffer:v31 MLCDataType:objc_msgSend(descriptor2 heapAllocator:{"dataType"), 0}];

      if (v68)
      {
        batchSize3 = [v21 batchSize];
        gpuWriteTensorKernelList3 = [(MLCDeviceGPU *)selfCopy gpuWriteTensorKernelList];
        v35 = [gpuWriteTensorKernelList3 objectAtIndexedSubscript:v19];
        v36 = [deviceMemory2 objectAtIndexedSubscript:v19];
        descriptor3 = [v68 descriptor];
        v38 = +[MLCGPUHelper allocateAndCopyToTemporaryMPSImageBatchForTensor:commandBuffer:batchSize:copyingKernel:sourceMTLBuffer:MLCDataType:heapAllocator:](MLCGPUHelper, "allocateAndCopyToTemporaryMPSImageBatchForTensor:commandBuffer:batchSize:copyingKernel:sourceMTLBuffer:MLCDataType:heapAllocator:", v68, v84, batchSize3, v35, v36, [descriptor3 dataType], 0);
      }

      else
      {
        v38 = 0;
      }

      if (training)
      {
        v85[0] = 0;
        v39 = [forwardKernel encodeBatchToCommandBuffer:v84 sourceImages:v80 labels:v78 weights:v38 destinationStates:v85 destinationStateIsTemporary:temporary];
        v74 = v85[0];
      }

      else
      {
        v39 = [forwardKernel encodeBatchToCommandBuffer:v84 sourceImages:v80 labels:v78 weights:v38 destinationStates:0 destinationStateIsTemporary:temporary];
        v74 = 0;
      }

      v40 = selfCopy;
      v75 = v38;
      if (reduceLossKernel)
      {
        defaultAllocator = [MEMORY[0x277CD72A8] defaultAllocator];
        [reduceLossKernel setDestinationImageAllocator:defaultAllocator];

        v42 = [reduceLossKernel encodeBatchToCommandBuffer:v84 sourceImages:v39];
      }

      else
      {
        v42 = v39;
      }

      v43 = v42;
      if (-[MLCDeviceGPU numDevicesToUse](selfCopy, "numDevicesToUse") >= 2 && [forwardKernel reductionType] == 2)
      {
        v44 = objc_autoreleasePoolPush();
        secondaryGradientKernel = [v21 secondaryGradientKernel];
        GPU_ScaleMPSImageBatchWithKernel(secondaryGradientKernel, v84, v43, 1);

        objc_autoreleasePoolPop(v44);
      }

      v72 = v43;
      v73 = v39;
      context = objc_autoreleasePoolPush();
      descriptor4 = [v76 descriptor];
      shape = [descriptor4 shape];
      v48 = [shape objectAtIndexedSubscript:0];
      unsignedIntegerValue = [v48 unsignedIntegerValue];
      if (unsignedIntegerValue >= [v21 batchSize])
      {
        batchSize4 = [v21 batchSize];
        v55 = 0x278A68000uLL;
        v54 = v76;
      }

      else
      {
        descriptor5 = [v76 descriptor];
        shape2 = [descriptor5 shape];
        v52 = [shape2 objectAtIndexedSubscript:0];
        batchSize4 = [v52 unsignedIntegerValue];

        v54 = v76;
        v40 = selfCopy;

        v55 = 0x278A68000;
      }

      v56 = *(v55 + 2936);
      gpuReadTensorKernelList = [(MLCDeviceGPU *)v40 gpuReadTensorKernelList];
      v58 = [gpuReadTensorKernelList objectAtIndexedSubscript:v19];
      v59 = [v72 subarrayWithRange:{0, batchSize4}];
      v60 = [deviceMemory3 objectAtIndexedSubscript:v19];
      descriptor6 = [v54 descriptor];
      [v56 copyMPSImageBatchToMTLBuffer:v58 commandBuffer:v84 sourceImageBatch:v59 destinationMTLBuffer:v60 MLCDataType:{objc_msgSend(descriptor6, "dataType")}];

      GPU_clearTemporaryImageBatchReadCount(v72);
      objc_autoreleasePoolPop(context);
      if (training)
      {
        [v21 setGradientState:v74];
        v62 = [v70 objectAtIndexedSubscript:v19];
        [v21 setSource:v62];
      }

      ++v19;
      self = selfCopy;
      v20 = 0x278A68000;
      resultTensorCopy = v76;
    }

    while (v19 < [(MLCDeviceGPU *)selfCopy numDevicesToUse]);
  }
}

- (void)dispatchGradientLayer:(id)layer sourceGradientTensor:(id)tensor resultGradientTensor:(id)gradientTensor
{
  v96[2] = *MEMORY[0x277D85DE8];
  layerCopy = layer;
  tensorCopy = tensor;
  gradientTensorCopy = gradientTensor;
  v90 = tensorCopy;
  deviceMemory = [tensorCopy deviceMemory];
  [(MLCDeviceGPU *)self allocateResultTensor:gradientTensorCopy];
  v92 = gradientTensorCopy;
  deviceMemory2 = [gradientTensorCopy deviceMemory];
  if ([(MLCDeviceGPU *)self numDevicesToUse])
  {
    v11 = 0;
    v83 = layerCopy;
    selfCopy = self;
    do
    {
      v12 = [layerCopy objectAtIndexedSubscript:v11];
      gpuCommandBufferList = [(MLCDeviceGPU *)self gpuCommandBufferList];
      v14 = [gpuCommandBufferList objectAtIndexedSubscript:v11];

      gradientKernel = [v12 gradientKernel];
      if ([v12 isMPSKernel])
      {
        v91 = v14;
        v93 = gradientKernel;
        if ([v12 isMPSGraph])
        {
          descriptor = [v92 descriptor];
          v17 = [MLCTensor tensorWithDescriptor:descriptor];

          source = [v12 source];
          v86 = v17;
          deviceMemory3 = [v17 deviceMemory];
          [deviceMemory3 setObject:source atIndexedSubscript:v11];

          transposedTensors = [v12 transposedTensors];
          v21 = [transposedTensors objectAtIndexedSubscript:0];

          gpuHeapTemporaryResourceAllocator = [(MLCDeviceGPU *)self gpuHeapTemporaryResourceAllocator];
          v23 = [gpuHeapTemporaryResourceAllocator objectAtIndexedSubscript:{objc_msgSend(v12, "temporaryHeapIndex")}];
          source2 = [v12 source];
          v25 = [v23 allocateBuffer:{objc_msgSend(source2, "length")}];
          v88 = v21;
          deviceMemory4 = [v21 deviceMemory];
          [deviceMemory4 setObject:v25 atIndexedSubscript:v11];

          if ([(MLCDeviceGPU *)self numDevicesToUse]< 2)
          {
            transposeDeviceOps = [v12 transposeDeviceOps];
            v95 = transposeDeviceOps;
            v27TransposeDeviceOps = [MEMORY[0x277CBEA60] arrayWithObjects:&v95 count:1];
            v32 = [v27TransposeDeviceOps copy];
          }

          else
          {
            transposeDeviceOps = [layerCopy objectAtIndexedSubscript:0];
            v27TransposeDeviceOps = [transposeDeviceOps transposeDeviceOps];
            v96[0] = v27TransposeDeviceOps;
            v29 = [layerCopy objectAtIndexedSubscript:1];
            transposeDeviceOps2 = [v29 transposeDeviceOps];
            v96[1] = transposeDeviceOps2;
            v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v96 count:2];
            v32 = [v31 copy];
          }

          contexta = v32;

          batchSize = [v12 batchSize];
          v56 = [v32 objectAtIndexedSubscript:v11];
          [v56 setBatchSize:batchSize];

          [(MLCDeviceGPU *)self dispatchTransposeKernel:v32 sourceTensor:v86 resultTensor:v88 deviceIndex:v11 forward:1];
          transposedTensors2 = [v12 transposedTensors];
          v58 = [transposedTensors2 objectAtIndexedSubscript:1];

          gpuHeapTemporaryResourceAllocator2 = [(MLCDeviceGPU *)self gpuHeapTemporaryResourceAllocator];
          v60 = [gpuHeapTemporaryResourceAllocator2 objectAtIndexedSubscript:{objc_msgSend(v12, "temporaryHeapIndex")}];
          v61 = [deviceMemory objectAtIndexedSubscript:v11];
          v62 = [v60 allocateBuffer:{objc_msgSend(v61, "length")}];
          deviceMemory5 = [v58 deviceMemory];
          [deviceMemory5 setObject:v62 atIndexedSubscript:v11];

          v80 = v58;
          [(MLCDeviceGPU *)selfCopy dispatchTransposeKernel:v32 sourceTensor:v90 resultTensor:v58 deviceIndex:v11 forward:1];
          transposedTensors3 = [v12 transposedTensors];
          v65 = [transposedTensors3 objectAtIndexedSubscript:2];

          gpuHeapTemporaryResourceAllocator3 = [(MLCDeviceGPU *)selfCopy gpuHeapTemporaryResourceAllocator];
          v67 = [gpuHeapTemporaryResourceAllocator3 objectAtIndexedSubscript:{objc_msgSend(v12, "temporaryHeapIndex")}];
          v68 = [deviceMemory2 objectAtIndexedSubscript:v11];
          v69 = [v67 allocateBuffer:{objc_msgSend(v68, "length")}];
          deviceMemory6 = [v65 deviceMemory];
          [deviceMemory6 setObject:v69 atIndexedSubscript:v11];

          deviceMemory7 = [v88 deviceMemory];
          v72 = [deviceMemory7 objectAtIndexedSubscript:v11];
          deviceMemory8 = [v58 deviceMemory];
          v74 = [deviceMemory8 objectAtIndexedSubscript:v11];
          deviceMemory9 = [v65 deviceMemory];
          v76 = [deviceMemory9 objectAtIndexedSubscript:v11];
          descriptor2 = [v90 descriptor];
          -[MLCDeviceGPU dispatchGradientMPSGraphWithDeviceOps:sourceBuffer:souceGradientBuffer:resultGradientBuffer:deviceIndex:dataType:](selfCopy, "dispatchGradientMPSGraphWithDeviceOps:sourceBuffer:souceGradientBuffer:resultGradientBuffer:deviceIndex:dataType:", v12, v72, v74, v76, v11, GPU_GetDataType([descriptor2 dataType]));

          self = selfCopy;
          [(MLCDeviceGPU *)selfCopy dispatchTransposeKernel:contexta sourceTensor:v65 resultTensor:v92 deviceIndex:v11 forward:0];

          layerCopy = v83;
          v14 = v91;
          gradientKernel = v93;
        }

        else
        {
          context = objc_autoreleasePoolPush();
          batchSize2 = [v12 batchSize];
          gpuWriteTensorKernelList = [(MLCDeviceGPU *)self gpuWriteTensorKernelList];
          v36 = [gpuWriteTensorKernelList objectAtIndexedSubscript:v11];
          v37 = [deviceMemory objectAtIndexedSubscript:v11];
          descriptor3 = [v90 descriptor];
          dataType = [descriptor3 dataType];
          destinationImageAllocator = [gradientKernel destinationImageAllocator];
          v87 = [MLCGPUHelper allocateAndCopyToTemporaryMPSImageBatchForTensor:v90 commandBuffer:v91 batchSize:batchSize2 copyingKernel:v36 sourceMTLBuffer:v37 MLCDataType:dataType heapAllocator:destinationImageAllocator];

          v41 = v92;
          [v12 source];
          v79 = v89 = v12;
          batchSize3 = [v12 batchSize];
          gpuWriteTensorKernelList2 = [(MLCDeviceGPU *)selfCopy gpuWriteTensorKernelList];
          v44 = [gpuWriteTensorKernelList2 objectAtIndexedSubscript:v11];
          descriptor4 = [v41 descriptor];
          dataType2 = [descriptor4 dataType];
          destinationImageAllocator2 = [v93 destinationImageAllocator];
          v48 = [MLCGPUHelper allocateAndCopyToTemporaryMPSImageBatchForTensor:v41 commandBuffer:v91 batchSize:batchSize3 copyingKernel:v44 sourceMTLBuffer:v79 MLCDataType:dataType2 heapAllocator:destinationImageAllocator2];

          gradientState = [v89 gradientState];
          v14 = v91;
          v50 = [v93 encodeBatchToCommandBuffer:v91 sourceGradients:v87 sourceImages:v48 gradientStates:gradientState];

          gpuReadTensorKernelList = [(MLCDeviceGPU *)selfCopy gpuReadTensorKernelList];
          v52 = [gpuReadTensorKernelList objectAtIndexedSubscript:v11];
          v53 = [deviceMemory2 objectAtIndexedSubscript:v11];
          descriptor5 = [v41 descriptor];

          +[MLCGPUHelper copyMPSImageBatchToMTLBuffer:commandBuffer:sourceImageBatch:destinationMTLBuffer:MLCDataType:](MLCGPUHelper, "copyMPSImageBatchToMTLBuffer:commandBuffer:sourceImageBatch:destinationMTLBuffer:MLCDataType:", v52, v91, v50, v53, [descriptor5 dataType]);
          gradientKernel = v93;

          self = selfCopy;
          layerCopy = v83;

          v12 = v89;
          objc_autoreleasePoolPop(context);
        }
      }

      else
      {
        metalKernelType = [v12 metalKernelType];
        if (metalKernelType > 8)
        {
          if (metalKernelType <= 14)
          {
            switch(metalKernelType)
            {
              case 9:
                [(MLCDeviceGPU *)self dispatchGradientGroupNormalizationKernel:layerCopy sourceGradientTensor:v90 resultGradientTensor:v92 deviceIndex:v11];
                break;
              case 10:
                [(MLCDeviceGPU *)self dispatchGradientResizeKernel:layerCopy sourceGradientTensor:v90 resultGradientTensor:v92 deviceIndex:v11];
                break;
              case 12:
                [(MLCDeviceGPU *)self dispatchTransposeKernel:layerCopy sourceTensor:v90 resultTensor:v92 deviceIndex:v11 forward:0];
                break;
            }
          }

          else if ((metalKernelType - 15) >= 3)
          {
            if (metalKernelType == 18)
            {
              [(MLCDeviceGPU *)self dispatchGradientGramMatrixKernel:layerCopy sourceGradientTensor:v90 resultGradientTensor:v92 deviceIndex:v11];
            }
          }

          else
          {
            [(MLCDeviceGPU *)self dispatchGradientPoolingKernel:layerCopy sourceGradientTensor:v90 resultGradientTensor:v92 deviceIndex:v11];
          }
        }

        else if (metalKernelType > 3)
        {
          if ((metalKernelType - 5) < 2)
          {
            [(MLCDeviceGPU *)self dispatchGradientInstanceNormalizationKernel:layerCopy sourceGradientTensor:v90 resultGradientTensor:v92 deviceIndex:v11];
          }

          else if ((metalKernelType - 7) >= 2)
          {
            if (metalKernelType == 4)
            {
              [(MLCDeviceGPU *)self dispatchGradientLayerNormalizationKernel:layerCopy sourceGradientTensor:v90 resultGradientTensor:v92 deviceIndex:v11];
            }
          }

          else
          {
            [(MLCDeviceGPU *)self dispatchGradientBatchNormalizationKernel:layerCopy sourceGradientTensor:v90 resultGradientTensor:v92 deviceIndex:v11];
          }
        }

        else
        {
          switch(metalKernelType)
          {
            case 1:
              [(MLCDeviceGPU *)self dispatchGradientActivationsKernel:layerCopy sourceGradientTensor:v90 resultGradientTensor:v92 deviceIndex:v11];
              break;
            case 2:
              [(MLCDeviceGPU *)self dispatchGradientPaddingKernel:layerCopy sourceGradientTensor:v90 resultGradientTensor:v92 deviceIndex:v11];
              break;
            case 3:
              [(MLCDeviceGPU *)self dispatchGradientSoftmaxKernel:layerCopy sourceGradientTensor:v90 resultGradientTensor:v92 deviceIndex:v11];
              break;
          }
        }
      }

      ++v11;
    }

    while (v11 < [(MLCDeviceGPU *)self numDevicesToUse]);
  }

  v78 = *MEMORY[0x277D85DE8];
}

- (void)dispatchGradientLayer:(id)layer sourceGradientTensor:(id)tensor resultGradientTensor:(id)gradientTensor secondaryResultGradientTensor:(id)resultGradientTensor
{
  layerCopy = layer;
  tensorCopy = tensor;
  gradientTensorCopy = gradientTensor;
  resultGradientTensorCopy = resultGradientTensor;
  if (resultGradientTensorCopy)
  {
    v13 = [layerCopy objectAtIndexedSubscript:0];
    useSourceGradientDeviceMemoryForResultGradientTensor = [v13 useSourceGradientDeviceMemoryForResultGradientTensor];
    useSourceGradientDeviceMemoryForSecondaryResultGradientTensor = [v13 useSourceGradientDeviceMemoryForSecondaryResultGradientTensor];
    if (useSourceGradientDeviceMemoryForResultGradientTensor)
    {
      [(MLCDeviceGPU *)self shareDeviceMemoryWithResultTensor:gradientTensorCopy sourceTensor:tensorCopy];
    }

    else
    {
      [(MLCDeviceGPU *)self allocateResultTensor:gradientTensorCopy];
    }

    if (useSourceGradientDeviceMemoryForSecondaryResultGradientTensor)
    {
      [(MLCDeviceGPU *)self shareDeviceMemoryWithResultTensor:resultGradientTensorCopy sourceTensor:tensorCopy];
    }

    else
    {
      [(MLCDeviceGPU *)self allocateResultTensor:resultGradientTensorCopy];
    }
  }

  else
  {
    [(MLCDeviceGPU *)self allocateResultTensor:gradientTensorCopy];
  }

  if ([(MLCDeviceGPU *)self numDevicesToUse])
  {
    v16 = 0;
    do
    {
      if (resultGradientTensorCopy)
      {
        [(MLCDeviceGPU *)self dispatchGradientArithmeticBinaryKernel:layerCopy sourceGradientTensor:tensorCopy resultGradientTensor:gradientTensorCopy secondaryResultGradientTensor:resultGradientTensorCopy deviceIndex:v16];
      }

      else
      {
        [(MLCDeviceGPU *)self dispatchGradientArithmeticUnaryKernel:layerCopy sourceGradientTensor:tensorCopy resultGradientTensor:gradientTensorCopy deviceIndex:v16];
      }

      ++v16;
    }

    while (v16 < [(MLCDeviceGPU *)self numDevicesToUse]);
  }
}

- (void)dispatchGradientSliceLayer:(id)layer sourceGradientTensor:(id)tensor resultGradientTensor:(id)gradientTensor
{
  v81 = *MEMORY[0x277D85DE8];
  layerCopy = layer;
  tensorCopy = tensor;
  gradientTensorCopy = gradientTensor;
  deviceMemory = [tensorCopy deviceMemory];
  [(MLCDeviceGPU *)self allocateResultTensor:gradientTensorCopy];
  deviceMemory2 = [gradientTensorCopy deviceMemory];
  if ([(MLCDeviceGPU *)self numDevicesToUse])
  {
    v10 = 0;
    v60 = &v74;
    selfCopy = self;
    do
    {
      v11 = [layerCopy objectAtIndexedSubscript:{v10, v60}];
      gpuCommandBufferList = [(MLCDeviceGPU *)self gpuCommandBufferList];
      v66 = [gpuCommandBufferList objectAtIndexedSubscript:v10];

      v67 = v10;
      [(MLCDeviceGPU *)self dispatchFillTensor:gradientTensorCopy deviceIndex:v10];
      context = objc_autoreleasePoolPush();
      v76 = 0;
      v74 = 0u;
      memset(v75, 0, sizeof(v75));
      memset(v73, 0, sizeof(v73));
      descriptor = [gradientTensorCopy descriptor];
      shape = [descriptor shape];
      v68 = [shape count];

      descriptor2 = [gradientTensorCopy descriptor];
      shape2 = [descriptor2 shape];
      v17 = [shape2 count];

      if (v17)
      {
        v18 = 0;
        v19 = v75 - v68;
        do
        {
          stride = [v11 stride];
          v21 = [stride objectAtIndexedSubscript:v18];
          *(v19 - 12) = [v21 unsignedIntegerValue];

          *(v19 - 8) = 0;
          descriptor3 = [tensorCopy descriptor];
          shape3 = [descriptor3 shape];
          v24 = [shape3 objectAtIndexedSubscript:v18];
          *(v19 - 4) = [v24 unsignedIntegerValue];

          descriptor4 = [tensorCopy descriptor];
          stride2 = [descriptor4 stride];
          v27 = [stride2 objectAtIndexedSubscript:v18];
          *v19 = [v27 unsignedIntegerValue] >> 2;

          begin = [v11 begin];
          v29 = [begin objectAtIndexedSubscript:v18];
          v19[4] = [v29 unsignedIntegerValue];

          descriptor5 = [gradientTensorCopy descriptor];
          shape4 = [descriptor5 shape];
          v32 = [shape4 objectAtIndexedSubscript:v18];
          v19[8] = [v32 unsignedIntegerValue];

          descriptor6 = [gradientTensorCopy descriptor];
          stride3 = [descriptor6 stride];
          v35 = [stride3 objectAtIndexedSubscript:v18];
          v19[12] = [v35 unsignedIntegerValue] >> 2;

          ++v18;
          descriptor7 = [gradientTensorCopy descriptor];
          shape5 = [descriptor7 shape];
          v38 = [shape5 count];

          ++v19;
        }

        while (v18 < v38);
      }

      v39 = v68 - 4;
      if (v68 != 4)
      {
        v40 = v60;
        do
        {
          *(v40 - 12) = 0;
          *(v40 - 8) = 0;
          *(v40 - 4) = 1;
          *v40 = 0;
          *(v40 + 4) = 0;
          *(v40 + 8) = 1;
          *(v40 + 12) = 0;
          v40 = (v40 + 4);
        }

        while (!__CFADD__(v39++, 1));
      }

      LODWORD(v76) = 1;
      forwardKernel = [v11 forwardKernel];
      maxTotalThreadsPerThreadgroup = [forwardKernel maxTotalThreadsPerThreadgroup];

      v44 = 0;
      v79 = xmmword_238D45D80;
      v80 = unk_238D45D90;
      v77 = xmmword_238D45D80;
      v78 = unk_238D45D90;
      do
      {
        v45 = *(&v75[1] + v44 + 3);
        v46 = &v79 + 8 * v44;
        if (maxTotalThreadsPerThreadgroup >= v45)
        {
          *(v46 + 3) = v45;
          v47 = v45;
        }

        else if (v45 % maxTotalThreadsPerThreadgroup)
        {
          *(v46 + 3) = 1;
          v47 = 1;
        }

        else
        {
          *(v46 + 3) = maxTotalThreadsPerThreadgroup;
          v47 = maxTotalThreadsPerThreadgroup;
        }

        v78.i64[v44 + 1] = (v45 + v47 - 1) / v47;
        v48 = v44 + 3;
        --v44;
        maxTotalThreadsPerThreadgroup /= v47;
      }

      while (v48 > 1);
      descriptor8 = [gradientTensorCopy descriptor];
      shape6 = [descriptor8 shape];
      v51 = [shape6 count];

      if (v51 == 4)
      {
        v52 = __clz(__rbit32(LOWORD(v75[1]))) << 16;
        if (((LOWORD(v75[1]) - 1) & v75[1]) != 0)
        {
          v53 = -65536;
        }

        else
        {
          v53 = v52;
        }

        HIDWORD(v76) = v53 & 0xFFFF0000 | LOWORD(v75[1]);
        v54 = *(&v77 + 1) * SLODWORD(v75[1]);
      }

      else
      {
        HIDWORD(v76) = 1;
        v54 = *(&v77 + 1);
      }

      v55 = [v66 computeCommandEncoderWithDispatchType:0];
      forwardKernel2 = [v11 forwardKernel];
      [v55 setComputePipelineState:forwardKernel2];

      v57 = [deviceMemory objectAtIndexedSubscript:v67];
      [v55 setBuffer:v57 offset:0 atIndex:0];

      v58 = [deviceMemory2 objectAtIndexedSubscript:v67];
      [v55 setBuffer:v58 offset:0 atIndex:1];

      [v55 setBytes:v73 length:120 atIndex:2];
      v71 = vextq_s8(v78, v78, 8uLL);
      v72 = v54;
      v69 = vextq_s8(v80, v80, 8uLL);
      v70 = *(&v79 + 1);
      [v55 dispatchThreadgroups:&v71 threadsPerThreadgroup:&v69];
      [v55 endEncoding];

      objc_autoreleasePoolPop(context);
      v10 = v67 + 1;
      self = selfCopy;
    }

    while (v67 + 1 < [(MLCDeviceGPU *)selfCopy numDevicesToUse]);
  }

  v59 = *MEMORY[0x277D85DE8];
}

- (void)dispatchGradientLossLayer:(id)layer sourceGradientTensor:(id)tensor labelsTensor:(id)labelsTensor labelsTensorStride:(unint64_t)stride weightsTensor:(id)weightsTensor resultGradientTensor:(id)gradientTensor
{
  layerCopy = layer;
  tensorCopy = tensor;
  labelsTensorCopy = labelsTensor;
  weightsTensorCopy = weightsTensor;
  gradientTensorCopy = gradientTensor;
  deviceMemory = [tensorCopy deviceMemory];
  v68 = labelsTensorCopy;
  v17 = labelsTensorCopy;
  selfCopy = self;
  deviceMemory2 = [v17 deviceMemory];
  deviceMemory3 = [weightsTensorCopy deviceMemory];
  [(MLCDeviceGPU *)self allocateResultTensor:gradientTensorCopy];
  v73 = gradientTensorCopy;
  deviceMemory4 = [gradientTensorCopy deviceMemory];
  if ([(MLCDeviceGPU *)self numDevicesToUse])
  {
    v19 = 0;
    v71 = weightsTensorCopy;
    v72 = tensorCopy;
    selfCopy2 = self;
    do
    {
      v20 = [layerCopy objectAtIndexedSubscript:v19];
      gpuCommandBufferList = [(MLCDeviceGPU *)selfCopy gpuCommandBufferList];
      v22 = [gpuCommandBufferList objectAtIndexedSubscript:v19];

      gradientKernel = [v20 gradientKernel];
      defaultAllocator = [MEMORY[0x277CD72A8] defaultAllocator];
      v80 = gradientKernel;
      [gradientKernel setDestinationImageAllocator:defaultAllocator];

      batchSize = [v20 batchSize];
      gpuWriteTensorKernelList = [(MLCDeviceGPU *)selfCopy gpuWriteTensorKernelList];
      v27 = [gpuWriteTensorKernelList objectAtIndexedSubscript:v19];
      source = [v20 source];
      descriptor = [v73 descriptor];
      v70 = v22;
      v79 = +[MLCGPUHelper allocateAndCopyToTemporaryMPSImageBatchForTensor:commandBuffer:batchSize:copyingKernel:sourceMTLBuffer:MLCDataType:heapAllocator:](MLCGPUHelper, "allocateAndCopyToTemporaryMPSImageBatchForTensor:commandBuffer:batchSize:copyingKernel:sourceMTLBuffer:MLCDataType:heapAllocator:", v73, v22, batchSize, v27, source, [descriptor dataType], 0);

      descriptor2 = [v72 descriptor];
      shape = [descriptor2 shape];
      v32 = [shape objectAtIndexedSubscript:0];
      unsignedIntegerValue = [v32 unsignedIntegerValue];
      v74 = v20;
      if (unsignedIntegerValue >= [v20 batchSize])
      {
        batchSize2 = [v20 batchSize];
        v36 = v72;
      }

      else
      {
        descriptor3 = [v72 descriptor];
        shape2 = [descriptor3 shape];
        [shape2 objectAtIndexedSubscript:0];
        v37 = v36 = v72;
        batchSize2 = [v37 unsignedIntegerValue];
      }

      gpuWriteTensorKernelList2 = [(MLCDeviceGPU *)selfCopy2 gpuWriteTensorKernelList];
      v40 = [gpuWriteTensorKernelList2 objectAtIndexedSubscript:v19];
      v41 = [deviceMemory objectAtIndexedSubscript:v19];
      descriptor4 = [v36 descriptor];
      v78 = +[MLCGPUHelper allocateAndCopyToTemporaryMPSImageBatchForTensor:commandBuffer:batchSize:copyingKernel:sourceMTLBuffer:MLCDataType:heapAllocator:](MLCGPUHelper, "allocateAndCopyToTemporaryMPSImageBatchForTensor:commandBuffer:batchSize:copyingKernel:sourceMTLBuffer:MLCDataType:heapAllocator:", v36, v70, batchSize2, v40, v41, [descriptor4 dataType], 0);

      batchSize3 = [v74 batchSize];
      gpuWriteTensorKernelList3 = [(MLCDeviceGPU *)selfCopy2 gpuWriteTensorKernelList];
      v45 = [gpuWriteTensorKernelList3 objectAtIndexedSubscript:v19];
      v46 = [deviceMemory2 objectAtIndexedSubscript:v19];
      descriptor5 = [v68 descriptor];
      v77 = +[MLCGPUHelper allocateAndCopyToTemporaryMPSImageBatchForTensor:commandBuffer:batchSize:copyingKernel:sourceMTLBuffer:MLCDataType:heapAllocator:](MLCGPUHelper, "allocateAndCopyToTemporaryMPSImageBatchForTensor:commandBuffer:batchSize:copyingKernel:sourceMTLBuffer:MLCDataType:heapAllocator:", v68, v70, batchSize3, v45, v46, [descriptor5 dataType], 0);

      if (v71)
      {
        batchSize4 = [v74 batchSize];
        gpuWriteTensorKernelList4 = [(MLCDeviceGPU *)selfCopy2 gpuWriteTensorKernelList];
        v49 = [gpuWriteTensorKernelList4 objectAtIndexedSubscript:v19];
        v50 = [deviceMemory3 objectAtIndexedSubscript:v19];
        descriptor6 = [v71 descriptor];
        v52 = v70;
        v76 = +[MLCGPUHelper allocateAndCopyToTemporaryMPSImageBatchForTensor:commandBuffer:batchSize:copyingKernel:sourceMTLBuffer:MLCDataType:heapAllocator:](MLCGPUHelper, "allocateAndCopyToTemporaryMPSImageBatchForTensor:commandBuffer:batchSize:copyingKernel:sourceMTLBuffer:MLCDataType:heapAllocator:", v71, v70, batchSize4, v49, v50, [descriptor6 dataType], 0);
      }

      else
      {
        v52 = v70;
        v76 = 0;
      }

      reduceLossKernel = [v74 reduceLossKernel];

      if (reduceLossKernel)
      {
        v54 = v52;
        v55 = +[MLCGPUHelper allocateTemporaryMPSImageBatchForTensor:commandBuffer:kernel:batchSize:](MLCGPUHelper, "allocateTemporaryMPSImageBatchForTensor:commandBuffer:kernel:batchSize:", v73, v52, v80, [v74 batchSize]);
        [(MLCDeviceGPU *)selfCopy2 dispatchPadChannelsKernel:layerCopy sourceImageBatch:v78 resultImageBatch:v55 deviceIndex:v19];
      }

      else
      {
        v55 = v78;
        v54 = v52;
      }

      gradientState = [v74 gradientState];
      v57 = [v80 encodeBatchToCommandBuffer:v54 sourceGradients:v55 sourceImages:v79 labels:v77 weights:v76 sourceStates:gradientState];

      GPU_clearTemporaryImageBatchReadCount(v55);
      if (-[MLCDeviceGPU numDevicesToUse](selfCopy2, "numDevicesToUse") >= 2 && [v80 reductionType] == 2)
      {
        MPSImageBatchIncrementReadCount(v57, 1);
        v58 = objc_autoreleasePoolPush();
        secondaryGradientKernel = [v74 secondaryGradientKernel];
        GPU_ScaleMPSImageBatchWithKernel(secondaryGradientKernel, v54, v57, 1);

        objc_autoreleasePoolPop(v58);
      }

      gpuReadTensorKernelList = [(MLCDeviceGPU *)selfCopy2 gpuReadTensorKernelList];
      v61 = [gpuReadTensorKernelList objectAtIndexedSubscript:v19];
      v62 = [deviceMemory4 objectAtIndexedSubscript:v19];
      descriptor7 = [v73 descriptor];
      +[MLCGPUHelper copyMPSImageBatchToMTLBuffer:commandBuffer:sourceImageBatch:destinationMTLBuffer:MLCDataType:](MLCGPUHelper, "copyMPSImageBatchToMTLBuffer:commandBuffer:sourceImageBatch:destinationMTLBuffer:MLCDataType:", v61, v54, v57, v62, [descriptor7 dataType]);

      selfCopy = selfCopy2;
      GPU_clearTemporaryImageBatchReadCount(v57);

      ++v19;
      weightsTensorCopy = v71;
      tensorCopy = v72;
    }

    while (v19 < [(MLCDeviceGPU *)selfCopy2 numDevicesToUse]);
  }
}

- (void)dispatchForwardAndGradientLossLayer:(id)layer sourceTensor:(id)tensor labelsTensor:(id)labelsTensor labelsTensorStride:(unint64_t)stride weightsTensor:(id)weightsTensor resultTensor:(id)resultTensor resultGradientTensor:(id)gradientTensor
{
  layerCopy = layer;
  tensorCopy = tensor;
  labelsTensorCopy = labelsTensor;
  weightsTensorCopy = weightsTensor;
  resultTensorCopy = resultTensor;
  gradientTensorCopy = gradientTensor;
  deviceMemory = [tensorCopy deviceMemory];
  v152 = labelsTensorCopy;
  deviceMemory2 = [labelsTensorCopy deviceMemory];
  v148 = weightsTensorCopy;
  deviceMemory3 = [weightsTensorCopy deviceMemory];
  [(MLCDeviceGPU *)self allocateResultTensor:resultTensorCopy];
  [(MLCDeviceGPU *)self allocateResultTensor:gradientTensorCopy];
  deviceMemory4 = [resultTensorCopy deviceMemory];
  v147 = gradientTensorCopy;
  deviceMemory5 = [gradientTensorCopy deviceMemory];
  v151 = resultTensorCopy;
  descriptor = [resultTensorCopy descriptor];
  descriptor2 = [tensorCopy descriptor];
  if ([(MLCDeviceGPU *)self numDevicesToUse])
  {
    v153 = 0;
    v19 = 0;
    v141 = tensorCopy;
    selfCopy = self;
    while (1)
    {
      v155 = v19;
      v20 = [layerCopy objectAtIndexedSubscript:v19];
      gpuCommandBufferList = [(MLCDeviceGPU *)self gpuCommandBufferList];
      v170 = [gpuCommandBufferList objectAtIndexedSubscript:v19];

      combinedForwardAndGradientLossKernel = [v20 combinedForwardAndGradientLossKernel];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      combinedForwardAndGradientLossKernel2 = [v20 combinedForwardAndGradientLossKernel];
      v24 = 0.0;
      v158 = isKindOfClass;
      if (isKindOfClass)
      {
        if ([(MLCDeviceGPU *)self numDevicesToUse]< 2)
        {
          v29 = 0.0;
          v26 = 0.0;
        }

        else
        {
          [combinedForwardAndGradientLossKernel2 scaleXY];
          v26 = v25;
          *&v27 = v25 / [(MLCDeviceGPU *)self numDevicesToUse];
          [combinedForwardAndGradientLossKernel2 setScaleXY:v27];
          [combinedForwardAndGradientLossKernel2 scaleWH];
          v29 = v28;
          *&v30 = v28 / [(MLCDeviceGPU *)self numDevicesToUse];
          [combinedForwardAndGradientLossKernel2 setScaleWH:v30];
          [combinedForwardAndGradientLossKernel2 scaleClass];
          v24 = v31;
          *&v32 = v31 / [(MLCDeviceGPU *)self numDevicesToUse];
          [combinedForwardAndGradientLossKernel2 setScaleClass:v32];
        }

        v157 = combinedForwardAndGradientLossKernel2;
        combinedForwardAndGradientLossKernel2 = 0;
      }

      else
      {
        v157 = 0;
        v29 = 0.0;
        v26 = 0.0;
      }

      descriptor3 = [tensorCopy descriptor];
      shape = [descriptor3 shape];
      v35 = [shape objectAtIndexedSubscript:0];
      unsignedIntegerValue = [v35 unsignedIntegerValue];
      v160 = v20;
      if (unsignedIntegerValue >= [v20 batchSize])
      {
        batchSize = [v20 batchSize];
      }

      else
      {
        descriptor4 = [tensorCopy descriptor];
        shape2 = [descriptor4 shape];
        [shape2 objectAtIndexedSubscript:0];
        v40 = v39 = self;
        batchSize = [v40 unsignedIntegerValue];

        self = v39;
      }

      gpuWriteTensorKernelList = [(MLCDeviceGPU *)self gpuWriteTensorKernelList];
      v43 = [gpuWriteTensorKernelList objectAtIndexedSubscript:v19];
      v44 = [deviceMemory objectAtIndexedSubscript:v19];
      descriptor5 = [tensorCopy descriptor];
      v154 = +[MLCGPUHelper allocateAndCopyToTemporaryMPSImageBatchForTensor:commandBuffer:batchSize:copyingKernel:sourceMTLBuffer:MLCDataType:heapAllocator:](MLCGPUHelper, "allocateAndCopyToTemporaryMPSImageBatchForTensor:commandBuffer:batchSize:copyingKernel:sourceMTLBuffer:MLCDataType:heapAllocator:", tensorCopy, v170, batchSize, v43, v44, [descriptor5 dataType], 0);

      gpuWriteTensorKernelList2 = [(MLCDeviceGPU *)self gpuWriteTensorKernelList];
      v47 = [gpuWriteTensorKernelList2 objectAtIndexedSubscript:v19];
      v48 = [deviceMemory2 objectAtIndexedSubscript:v19];
      descriptor6 = [v152 descriptor];
      v169 = +[MLCGPUHelper allocateAndCopyToTemporaryMPSImageBatchForTensor:commandBuffer:batchSize:copyingKernel:sourceMTLBuffer:MLCDataType:heapAllocator:](MLCGPUHelper, "allocateAndCopyToTemporaryMPSImageBatchForTensor:commandBuffer:batchSize:copyingKernel:sourceMTLBuffer:MLCDataType:heapAllocator:", v152, v170, batchSize, v47, v48, [descriptor6 dataType], 0);

      if (v148)
      {
        gpuWriteTensorKernelList3 = [(MLCDeviceGPU *)self gpuWriteTensorKernelList];
        v51 = [gpuWriteTensorKernelList3 objectAtIndexedSubscript:v19];
        v52 = [deviceMemory3 objectAtIndexedSubscript:v19];
        descriptor7 = [v148 descriptor];
        v168 = +[MLCGPUHelper allocateAndCopyToTemporaryMPSImageBatchForTensor:commandBuffer:batchSize:copyingKernel:sourceMTLBuffer:MLCDataType:heapAllocator:](MLCGPUHelper, "allocateAndCopyToTemporaryMPSImageBatchForTensor:commandBuffer:batchSize:copyingKernel:sourceMTLBuffer:MLCDataType:heapAllocator:", v148, v170, batchSize, v51, v52, [descriptor7 dataType], 0);
      }

      else
      {
        v168 = 0;
      }

      v54 = batchSize;
      shape3 = [descriptor shape];
      v56 = [shape3 count] != 1;
      shape4 = [descriptor shape];
      v58 = [shape4 objectAtIndexedSubscript:v56];
      unsignedIntegerValue2 = [v58 unsignedIntegerValue];

      reduceLossKernel = [v160 reduceLossKernel];

      if (reduceLossKernel)
      {
        shape5 = [descriptor2 shape];
        v62 = [shape5 objectAtIndexedSubscript:1];
        unsignedIntegerValue2 = [v62 unsignedIntegerValue];
      }

      shape6 = [descriptor shape];
      v64 = [shape6 count];

      if (v64 >= 3)
      {
        shape7 = [descriptor shape];
        v68 = [shape7 count];

        shape8 = [descriptor shape];
        v70 = shape8;
        if (v68 == 3)
        {
          v71 = [shape8 objectAtIndexedSubscript:2];
          unsignedIntegerValue3 = [v71 unsignedIntegerValue];
          unsignedIntegerValue4 = 1;
        }

        else
        {
          v71 = [shape8 objectAtIndexedSubscript:3];
          unsignedIntegerValue3 = [v71 unsignedIntegerValue];
          shape9 = [descriptor shape];
          v73 = [shape9 objectAtIndexedSubscript:2];
          unsignedIntegerValue4 = [v73 unsignedIntegerValue];
        }
      }

      else
      {
        unsignedIntegerValue4 = 1;
        unsignedIntegerValue3 = 1;
      }

      v74 = [MEMORY[0x277CBEBF8] mutableCopy];
      v171 = v74;
      if ((v158 & 1) == 0)
      {
        break;
      }

      v75 = unsignedIntegerValue4;
      v140 = unsignedIntegerValue2;
      shape10 = [descriptor2 shape];
      v77 = [shape10 objectAtIndexedSubscript:3];
      unsignedIntegerValue5 = [v77 unsignedIntegerValue];
      shape11 = [descriptor2 shape];
      v79 = [shape11 objectAtIndexedSubscript:2];
      context = [v79 unsignedIntegerValue];
      shape12 = [descriptor2 shape];
      v81 = [shape12 objectAtIndexedSubscript:1];
      unsignedIntegerValue6 = [v81 unsignedIntegerValue];

      data = [v152 data];
      bytes = [data bytes];

      if (v54)
      {
        v84 = 0;
        v85 = context * unsignedIntegerValue5 * unsignedIntegerValue6;
        v86 = 4 * v85;
        v87 = bytes + v85 * v54 * v153;
        v166 = v54;
        v88 = v75;
        do
        {
          v89 = [MEMORY[0x277CBEA90] dataWithBytes:v87 length:v86];
          v172 = unsignedIntegerValue5;
          v173 = context;
          v174 = unsignedIntegerValue6;
          v90 = [MEMORY[0x277CD7688] cnnLossDataDescriptorWithData:v89 layout:1 size:&v172];
          v91 = objc_alloc(MEMORY[0x277CD7698]);
          device = [v170 device];
          v172 = unsignedIntegerValue3;
          v173 = v88;
          v174 = v140;
          v93 = [v91 initWithDevice:device lossImageSize:&v172 labelsDescriptor:v90 weightsDescriptor:0];

          [v171 addObject:v93];
          v87 += v86;
          v84 = v93;
          --v54;
        }

        while (v54);
LABEL_31:
        v101 = v157;
        v54 = v166;
        v74 = v171;
        if (v158)
        {
          goto LABEL_36;
        }

        goto LABEL_35;
      }

      v93 = 0;
      v101 = v157;
LABEL_36:
      v165 = [v101 encodeBatchToCommandBuffer:v170 sourceImages:v154 labels:v74];
      reduceLossKernel2 = [v160 reduceLossKernel];

      if (reduceLossKernel2)
      {
        v103 = objc_autoreleasePoolPush();
        v104 = [MEMORY[0x277CBEBF8] mutableCopy];
        if (v54)
        {
          for (i = 0; i != v54; ++i)
          {
            v106 = [v74 objectAtIndexedSubscript:i];
            lossImage = [v106 lossImage];
            [v104 addObject:lossImage];

            v74 = v171;
          }
        }

        reduceLossKernel3 = [v160 reduceLossKernel];
        defaultAllocator = [MEMORY[0x277CD72A8] defaultAllocator];
        [reduceLossKernel3 setDestinationImageAllocator:defaultAllocator];

        v110 = [reduceLossKernel3 encodeBatchToCommandBuffer:v170 sourceImages:v104];

        objc_autoreleasePoolPop(v103);
      }

      else
      {
        v111 = [MEMORY[0x277CBEBF8] mutableCopy];
        if (v54)
        {
          for (j = 0; j != v54; ++j)
          {
            v113 = [v74 objectAtIndexedSubscript:j];
            lossImage2 = [v113 lossImage];
            [v111 addObject:lossImage2];
          }
        }

        v110 = [v111 copy];
      }

      if ([(MLCDeviceGPU *)selfCopy numDevicesToUse]>= 2)
      {
        if (v158)
        {
          *&v115 = v26;
          [v157 setScaleXY:v115];
          *&v116 = v29;
          [v157 setScaleWH:v116];
          *&v117 = v24;
          [v157 setScaleClass:v117];
        }

        if ([combinedForwardAndGradientLossKernel2 reductionType] == 2)
        {
          MPSImageBatchIncrementReadCount(v110, 1);
          MPSImageBatchIncrementReadCount(v165, 1);
          v118 = objc_autoreleasePoolPush();
          secondaryGradientKernel = [v160 secondaryGradientKernel];
          GPU_ScaleMPSImageBatchWithKernel(secondaryGradientKernel, v170, v110, 0);

          secondaryGradientKernel2 = [v160 secondaryGradientKernel];
          GPU_ScaleMPSImageBatchWithKernel(secondaryGradientKernel2, v170, v165, 0);

          objc_autoreleasePoolPop(v118);
        }
      }

      v167 = v110;
      contexta = objc_autoreleasePoolPush();
      v121 = v151;
      descriptor8 = [v151 descriptor];
      shape13 = [descriptor8 shape];
      v124 = [shape13 objectAtIndexedSubscript:0];
      unsignedIntegerValue7 = [v124 unsignedIntegerValue];
      if (unsignedIntegerValue7 >= [v160 batchSize])
      {
        batchSize2 = [v160 batchSize];
      }

      else
      {
        descriptor9 = [v151 descriptor];
        shape14 = [descriptor9 shape];
        v128 = [shape14 objectAtIndexedSubscript:0];
        batchSize2 = [v128 unsignedIntegerValue];

        v121 = v151;
      }

      gpuReadTensorKernelList = [(MLCDeviceGPU *)selfCopy gpuReadTensorKernelList];
      v131 = [gpuReadTensorKernelList objectAtIndexedSubscript:v155];
      v129 = [(MPSImageBatch *)v167 subarrayWithRange:0, batchSize2];
      v133 = [deviceMemory4 objectAtIndexedSubscript:v155];
      descriptor10 = [v121 descriptor];
      +[MLCGPUHelper copyMPSImageBatchToMTLBuffer:commandBuffer:sourceImageBatch:destinationMTLBuffer:MLCDataType:](MLCGPUHelper, "copyMPSImageBatchToMTLBuffer:commandBuffer:sourceImageBatch:destinationMTLBuffer:MLCDataType:", v131, v170, v129, v133, [descriptor10 dataType]);

      gpuReadTensorKernelList2 = [(MLCDeviceGPU *)selfCopy gpuReadTensorKernelList];
      v136 = [gpuReadTensorKernelList2 objectAtIndexedSubscript:v155];
      v137 = [deviceMemory5 objectAtIndexedSubscript:v155];
      descriptor11 = [v147 descriptor];
      +[MLCGPUHelper copyMPSImageBatchToMTLBuffer:commandBuffer:sourceImageBatch:destinationMTLBuffer:MLCDataType:](MLCGPUHelper, "copyMPSImageBatchToMTLBuffer:commandBuffer:sourceImageBatch:destinationMTLBuffer:MLCDataType:", v136, v170, v165, v137, [descriptor11 dataType]);

      GPU_clearTemporaryImageBatchReadCount(v154);
      GPU_clearTemporaryImageBatchReadCount(v169);
      GPU_clearTemporaryImageBatchReadCount(v168);
      GPU_clearTemporaryImageBatchReadCount(v167);
      GPU_clearTemporaryImageBatchReadCount(v165);
      objc_autoreleasePoolPop(contexta);
      [v160 setGradientState:0];
      [v160 setSource:0];

      self = selfCopy;
      v19 = v155 + 1;
      v153 += 4;
      tensorCopy = v141;
      if (v155 + 1 >= [(MLCDeviceGPU *)selfCopy numDevicesToUse])
      {
        goto LABEL_54;
      }
    }

    if (v54)
    {
      v166 = v54;
      v94 = 0;
      v95 = 0;
      v96 = unsignedIntegerValue2;
      do
      {
        v97 = objc_alloc(MEMORY[0x277CD7698]);
        device2 = [v170 device];
        v99 = [v169 objectAtIndexedSubscript:v94];
        v100 = [v168 objectAtIndexedSubscript:v94];
        v172 = unsignedIntegerValue3;
        v173 = unsignedIntegerValue4;
        v174 = v96;
        v93 = [v97 initWithDevice:device2 lossImageSize:&v172 labelsImage:v99 weightsImage:v100];

        [v171 addObject:v93];
        ++v94;
        v95 = v93;
      }

      while (v54 != v94);
      goto LABEL_31;
    }

    v93 = 0;
LABEL_35:
    v101 = combinedForwardAndGradientLossKernel2;
    goto LABEL_36;
  }

LABEL_54:
}

- (BOOL)isResultTensorUsedForGradientComputationByLayer:(id)layer
{
  v3 = [layer objectAtIndexedSubscript:0];
  if ([v3 isMPSKernel])
  {
    goto LABEL_7;
  }

  metalKernelType = [v3 metalKernelType];
  v5 = 0;
  if (metalKernelType <= 0x11)
  {
    if (((1 << metalKernelType) & 0x30008) != 0)
    {
      v5 = 1;
      goto LABEL_8;
    }

    if (((1 << metalKernelType) & 0x140) == 0)
    {
      goto LABEL_8;
    }

    [v3 setRecomputeResultTensor:1];
LABEL_7:
    v5 = 0;
  }

LABEL_8:

  return v5;
}

- (void)dispatchRNNForwardLayer:(id)layer sourceTensors:(id)tensors resultTensors:(id)resultTensors
{
  v403 = *MEMORY[0x277D85DE8];
  layerCopy = layer;
  tensorsCopy = tensors;
  resultTensorsCopy = resultTensors;
  if ([resultTensorsCopy count])
  {
    v9 = 0;
    do
    {
      v10 = [resultTensorsCopy objectAtIndexedSubscript:v9];
      [(MLCDeviceGPU *)self allocateResultTensor:v10];

      ++v9;
    }

    while (v9 < [resultTensorsCopy count]);
  }

  if ([(MLCDeviceGPU *)self numDevicesToUse])
  {
    v11 = 0;
    v365 = xmmword_238D45D60;
    v402 = resultTensorsCopy;
    selfCopy = self;
    while (1)
    {
      v12 = [layerCopy objectAtIndexedSubscript:v11];
      gpuCommandBufferList = [(MLCDeviceGPU *)self gpuCommandBufferList];
      v401 = v11;
      v14 = [gpuCommandBufferList objectAtIndexedSubscript:v11];

      v15 = tensorsCopy;
      v16 = [tensorsCopy objectAtIndexedSubscript:0];
      descriptor = [v16 descriptor];
      shape = [descriptor shape];
      v374 = [shape count];

      v19 = [v15 objectAtIndexedSubscript:0];
      descriptor2 = [v19 descriptor];
      shape2 = [descriptor2 shape];
      v371 = [shape2 count];

      v22 = [v15 count] == 3 || objc_msgSend(v15, "count") == 4;
      LODWORD(v388) = v22;
      batchSize = [v12 batchSize];
      isBidirectional = [v12 isBidirectional];
      v24 = 1;
      if (isBidirectional)
      {
        v24 = 2;
      }

      v369 = v24;
      v25 = [v15 objectAtIndexedSubscript:0];
      descriptor3 = [v25 descriptor];
      variableLengthSequences = [descriptor3 variableLengthSequences];
      batchSizePerSequenceStep = 0;
      if (variableLengthSequences)
      {
        v28 = [v15 objectAtIndexedSubscript:0];
        descriptor4 = [v28 descriptor];
        batchSizePerSequenceStep = [descriptor4 batchSizePerSequenceStep];
      }

      v30 = [v15 objectAtIndexedSubscript:0];
      descriptor5 = [v30 descriptor];
      variableLengthSequences2 = [descriptor5 variableLengthSequences];
      sequenceLengths = 0;
      if (variableLengthSequences2)
      {
        v33 = [tensorsCopy objectAtIndexedSubscript:0];
        descriptor6 = [v33 descriptor];
        sequenceLengths = [descriptor6 sequenceLengths];
      }

      batchFirst = [v12 batchFirst];
      v36 = v401;
      if (batchFirst && v371 == 4)
      {
        rnnBuffers = [v12 rnnBuffers];
        v376 = [rnnBuffers objectAtIndexedSubscript:0];
      }

      else
      {
        rnnBuffers = [tensorsCopy objectAtIndexedSubscript:0];
        deviceMemory = [rnnBuffers deviceMemory];
        v376 = [deviceMemory objectAtIndexedSubscript:v36];
      }

      if ([v12 returnsSequences] && v374 == 3)
      {
        rnnBuffers2 = [resultTensorsCopy objectAtIndexedSubscript:0];
        deviceMemory2 = [rnnBuffers2 deviceMemory];
        v41 = [deviceMemory2 objectAtIndexedSubscript:v36];
      }

      else
      {
        rnnBuffers2 = [v12 rnnBuffers];
        v41 = [rnnBuffers2 objectAtIndexedSubscript:1];
      }

      v42 = tensorsCopy;
      v396 = v41;

      returnsSequences = [v12 returnsSequences];
      batchFirst2 = [v12 batchFirst];
      v399 = batchSize;
      if (batchFirst2 && v371 == 4)
      {
        v44 = [v42 objectAtIndexedSubscript:0];
        descriptor7 = [v44 descriptor];
        shape3 = [descriptor7 shape];
        v47 = [shape3 objectAtIndexedSubscript:1];
        unsignedIntegerValue = [v47 unsignedIntegerValue];

        v48 = [v42 objectAtIndexedSubscript:0];
        descriptor8 = [v48 descriptor];
        shape4 = [descriptor8 shape];
        v51 = [shape4 objectAtIndexedSubscript:3];
        unsignedIntegerValue2 = [v51 unsignedIntegerValue];

        v53 = [resultTensorsCopy objectAtIndexedSubscript:0];
        descriptor9 = [v53 descriptor];
        shape5 = [descriptor9 shape];
        v56 = [shape5 objectAtIndexedSubscript:1];
        unsignedIntegerValue3 = [v56 unsignedIntegerValue];

        v58 = unsignedIntegerValue3;
        v59 = unsignedIntegerValue3 >> isBidirectional;
        v60 = unsignedIntegerValue2;
        v61 = batchSize;
        v62 = unsignedIntegerValue;
        v63 = batchSizePerSequenceStep;
        v400 = createMatrices(unsignedIntegerValue2, v61, unsignedIntegerValue, unsignedIntegerValue, batchSizePerSequenceStep, 0, v376);
        v373 = v59;
        v380 = createMatrices(unsignedIntegerValue2, v399, unsignedIntegerValue3, v59, v63, 0, v396);
        deviceList = [(MLCDeviceGPU *)selfCopy deviceList];
        v64 = v401;
        v65 = [deviceList objectAtIndexedSubscript:v401];
        v66 = [tensorsCopy objectAtIndexedSubscript:0];
        deviceMemory3 = [v66 deviceMemory];
        v68 = [deviceMemory3 objectAtIndexedSubscript:v64];
        v69 = v62;
        batchSize = v399;
        copyNC1TtoNTCMTLBuffer(v14, v65, v399, v69, v60, v68, v376);

        unsignedIntegerValue6 = v58;
      }

      else
      {
        batchFirst3 = [v12 batchFirst];
        v73 = [v42 objectAtIndexedSubscript:0];
        descriptor10 = [v73 descriptor];
        shape6 = [descriptor10 shape];
        v76 = shape6;
        if (batchFirst3 && v374 == 3)
        {
          v77 = [shape6 objectAtIndexedSubscript:1];
          unsignedIntegerValue4 = [v77 unsignedIntegerValue];

          v78 = [tensorsCopy objectAtIndexedSubscript:0];
          descriptor11 = [v78 descriptor];
          shape7 = [descriptor11 shape];
          v81 = [shape7 objectAtIndexedSubscript:2];
          unsignedIntegerValue5 = [v81 unsignedIntegerValue];

          v83 = [resultTensorsCopy objectAtIndexedSubscript:0];
          descriptor12 = [v83 descriptor];
          shape8 = [descriptor12 shape];
          v86 = [shape8 objectAtIndexedSubscript:2];
          unsignedIntegerValue6 = [v86 unsignedIntegerValue];

          v60 = unsignedIntegerValue4;
          v87 = unsignedIntegerValue6 >> isBidirectional;
          unsignedIntegerValue = unsignedIntegerValue5;
          v88 = batchSizePerSequenceStep;
          v400 = createMatrices(v60, batchSize, unsignedIntegerValue5, unsignedIntegerValue5, batchSizePerSequenceStep, 0, v376);
          v373 = v87;
          v71 = createMatrices(v60, batchSize, unsignedIntegerValue6, v87, v88, 0, v396);
        }

        else
        {
          v89 = [shape6 objectAtIndexedSubscript:2];
          unsignedIntegerValue7 = [v89 unsignedIntegerValue];

          v91 = [tensorsCopy objectAtIndexedSubscript:0];
          descriptor13 = [v91 descriptor];
          shape9 = [descriptor13 shape];
          v94 = [shape9 objectAtIndexedSubscript:0];
          unsignedIntegerValue4 = [v94 unsignedIntegerValue];

          v95 = [resultTensorsCopy objectAtIndexedSubscript:0];
          descriptor14 = [v95 descriptor];
          shape10 = [descriptor14 shape];
          v98 = [shape10 objectAtIndexedSubscript:2];
          unsignedIntegerValue6 = [v98 unsignedIntegerValue];

          v60 = unsignedIntegerValue4;
          v99 = unsignedIntegerValue6 >> isBidirectional;
          unsignedIntegerValue = unsignedIntegerValue7;
          v100 = batchSizePerSequenceStep;
          v400 = createMatricesForTNCBuffer(v60, batchSize, unsignedIntegerValue7, unsignedIntegerValue7, batchSizePerSequenceStep, v376);
          v373 = v99;
          v71 = createMatricesForTNCBuffer(v60, batchSize, unsignedIntegerValue6, v99, v100, v396);
        }

        v380 = v71;
      }

      v368 = &v361;
      v101 = MEMORY[0x28223BE20](v71);
      v103 = &v361 - ((v102 + 15) & 0xFFFFFFFFFFFFFFF0);
      v363 = v102;
      MEMORY[0x28223BE20](v101);
      v105 = &v361 - v104;
      batchFirst4 = [v12 batchFirst];
      v107 = sequenceLengths;
      if (batchFirst4 && v60)
      {
        v108 = 0;
        v109 = 4 * unsignedIntegerValue;
        v110 = (v60 + 1) & 0xFFFFFFFFFFFFFFFELL;
        v111 = vdupq_n_s64(v60 - 1);
        v112 = v103 + 8;
        v113 = 8 * unsignedIntegerValue;
        v114 = v110;
        v115 = v365;
        do
        {
          v116 = vmovn_s64(vcgeq_u64(v111, v115));
          if (v116.i8[0])
          {
            *(v112 - 1) = v108;
          }

          if (v116.i8[4])
          {
            *v112 = v109 + v108;
          }

          v115 = vaddq_s64(v115, vdupq_n_s64(2uLL));
          v112 += 2;
          v108 += v113;
          v114 -= 2;
        }

        while (v114);
        v117 = 0;
        v118 = v105 + 8;
        v119 = v365;
        do
        {
          v120 = vmovn_s64(vcgeq_u64(v111, v119));
          if (v120.i8[0])
          {
            *(v118 - 1) = v117;
          }

          if (v120.i8[4])
          {
            *v118 = 4 * unsignedIntegerValue6 + v117;
          }

          v119 = vaddq_s64(v119, vdupq_n_s64(2uLL));
          v118 += 2;
          v117 += 8 * unsignedIntegerValue6;
          v110 -= 2;
        }

        while (v110);
      }

      deviceList = v105;
      v392 = v103;
      v378 = unsignedIntegerValue6;
      unsignedIntegerValue4 = v60;
      if (v107)
      {
        v121 = v396;
        bzero([v396 contents], objc_msgSend(v396, "length"));
        +[MLCGPUHelper didModifyRange:buffer:](MLCGPUHelper, "didModifyRange:buffer:", 0, [v121 length], v121);
      }

      forwardKernel = [v12 forwardKernel];
      v122 = [forwardKernel count];
      v123 = v122 >> isBidirectional;
      v124 = [MEMORY[0x277CBEBF8] mutableCopy];
      v386 = v123;
      v125 = v123 == 1;
      v382 = v123 - 1;
      v126 = v123 - 1;
      v364 = (v123 - 1);
      v127 = unsignedIntegerValue4;
      v128 = v378;
      if (!v125)
      {
        do
        {
          v129 = [resultTensorsCopy objectAtIndexedSubscript:0];
          v130 = createTemporaryMatrixViews(v129, v14, 2, v127, batchSize, v128);

          [v124 addObject:v130];
          --v126;
        }

        while (v126);
      }

      v381 = v124;
      v131 = v400;
      batchFirst5 = [v12 batchFirst];
      batchFirst6 = [v12 batchFirst];
      v134 = deviceList;
      if (!batchFirst6)
      {
        v134 = 0;
      }

      v394 = v134;
      v370 = v131;
      v387 = v12;
      v397 = v14;
      if (v386)
      {
        v135 = 0;
        v136 = 0;
        v137 = 0;
        v138 = v392;
        if (!batchFirst5)
        {
          v138 = 0;
        }

        v384 = 4 * batchSize * v373;
        v139 = v386;
        v131 = v370;
        do
        {
          data4 = v138;
          data6 = v139;
          v392 = v131;
          if (v139 == 1)
          {
            v140 = v380;
          }

          else
          {
            v140 = [v381 objectAtIndexedSubscript:v137];
          }

          v400 = v140;

          rnnTrainableStates = [v12 rnnTrainableStates];
          v142 = [rnnTrainableStates objectAtIndexedSubscript:v137];

          deviceList = v142;
          [v142 removeAllObjects];
          if (v388)
          {
            v143 = [forwardKernel objectAtIndexedSubscript:v137];
            v144 = v397;
            v145 = [v143 temporaryRecurrentStateForCommandBuffer:v397 batchSize:batchSize forGradientPass:0];

            v146 = [v145 getRecurrentOutputMatrixForLayerIndex:0];
            data = [v146 data];

            v148 = [v145 getMemoryCellMatrixForLayerIndex:0];
            data2 = [v148 data];

            blitCommandEncoder = [v144 blitCommandEncoder];
            v150 = tensorsCopy;
            v151 = [tensorsCopy objectAtIndexedSubscript:1];
            deviceMemory4 = [v151 deviceMemory];
            v153 = v401;
            v154 = [deviceMemory4 objectAtIndexedSubscript:v401];
            v391 = data;
            [blitCommandEncoder copyFromBuffer:v154 sourceOffset:v135 toBuffer:data destinationOffset:0 size:{objc_msgSend(data, "length")}];

            v155 = [v150 objectAtIndexedSubscript:2];
            deviceMemory5 = [v155 deviceMemory];
            v157 = v387;
            v158 = [deviceMemory5 objectAtIndexedSubscript:v153];
            v159 = data2;
            [blitCommandEncoder copyFromBuffer:v158 sourceOffset:v135 toBuffer:data2 destinationOffset:0 size:{objc_msgSend(data2, "length")}];

            resultTensorsCopy = v402;
            v160 = forwardKernel;

            [blitCommandEncoder endEncoding];
            v161 = [v160 objectAtIndexedSubscript:v137];
            [v161 setRecurrentOutputIsTemporary:1];

            v162 = [MEMORY[0x277CBEBF8] mutableCopy];
            v12 = v157;
          }

          else
          {
            v145 = 0;
            v162 = 0;
            v160 = forwardKernel;
          }

          v163 = [v160 objectAtIndexedSubscript:v137];
          [v163 setPropagateFullRecurrentRows:1];

          v164 = [v160 objectAtIndexedSubscript:v137];
          rnnTrainableWeights = [v12 rnnTrainableWeights];
          v166 = [rnnTrainableWeights objectAtIndexedSubscript:v137];
          v391 = v145;
          v167 = v392;
          [v164 encodeForwardSequenceToCommandBuffer:v397 sourceMatrices:v392 sourceOffsets:data4 destinationMatrices:v400 destinationOffsets:v394 trainingStates:deviceList recurrentInputState:v145 recurrentOutputStates:v162 weights:v166];

          if ([resultTensorsCopy count] == 3 && v162 && objc_msgSend(v162, "count"))
          {
            v168 = [v162 objectAtIndexedSubscript:0];
            v169 = [v168 getRecurrentOutputMatrixForLayerIndex:0];
            data3 = [v169 data];

            v171 = [v162 objectAtIndexedSubscript:0];
            v172 = [v171 getMemoryCellMatrixForLayerIndex:0];
            data4 = [v172 data];

            blitCommandEncoder2 = [v397 blitCommandEncoder];
            v174 = [resultTensorsCopy objectAtIndexedSubscript:1];
            deviceMemory6 = [v174 deviceMemory];
            v176 = v167;
            v177 = v401;
            v178 = [deviceMemory6 objectAtIndexedSubscript:v401];
            [blitCommandEncoder2 copyFromBuffer:data3 sourceOffset:0 toBuffer:v178 destinationOffset:v135 size:{objc_msgSend(data3, "length")}];

            v179 = [v402 objectAtIndexedSubscript:2];
            deviceMemory7 = [v179 deviceMemory];
            v181 = v177;
            v167 = v176;
            v182 = [deviceMemory7 objectAtIndexedSubscript:v181];
            v183 = data4;
            [blitCommandEncoder2 copyFromBuffer:data4 sourceOffset:0 toBuffer:v182 destinationOffset:v135 size:{objc_msgSend(data4, "length")}];

            v12 = v387;
            resultTensorsCopy = v402;

            [blitCommandEncoder2 endEncoding];
            [v162 removeAllObjects];
          }

          v131 = v400;

          ++v137;
          v135 += v384;
          v138 = v394;
          v136 = v131;
          v139 = data6 - 1;
          batchSize = v399;
        }

        while (data6 != 1);

        v14 = v397;
      }

      isBidirectional2 = [v12 isBidirectional];
      if (isBidirectional2)
      {
        break;
      }

LABEL_115:
      v280 = [tensorsCopy objectAtIndexedSubscript:0];
      [v12 setSource:v280];

      if (v374 == 3)
      {
        LODWORD(v281) = returnsSequences ^ 1;
      }

      else
      {
        LODWORD(v281) = 1;
      }

      self = selfCopy;
      v282 = 0x277CD7000uLL;
      v283 = v381;
      if (v281 != 1)
      {
        goto LABEL_151;
      }

      if (v371 == 4)
      {
        v284 = returnsSequences ^ 1;
      }

      else
      {
        v284 = 1;
      }

      if (v284)
      {
        if (sequenceLengths)
        {
          v285 = 1;
        }

        else
        {
          v285 = returnsSequences;
        }

        if ((v285 & 1) == 0)
        {
          LODWORD(v386) = 1;
          v364 = v131;
          v384 = objc_autoreleasePoolPush();
          v344 = objc_alloc(MEMORY[0x277CD75C0]);
          deviceList2 = [(MLCDeviceGPU *)self deviceList];
          v346 = [deviceList2 objectAtIndexedSubscript:v401];
          v347 = [v344 initWithDevice:v346 count:v369];

          v348 = objc_alloc(MEMORY[0x277CD75B8]);
          deviceList3 = [(MLCDeviceGPU *)self deviceList];
          v350 = [deviceList3 objectAtIndexedSubscript:v401];
          data2 = [v348 initWithDevice:v350 copyRows:batchSize copyColumns:v373 sourcesAreTransposed:0 destinationsAreTransposed:0];

          v351 = v378;
          v352 = ((unsignedIntegerValue4 - 1) * v378);
          v353 = [MEMORY[0x277CD7258] matrixDescriptorWithRows:batchSize columns:unsignedIntegerValue4 * v378 rowBytes:4 * unsignedIntegerValue4 * v378 dataType:268435488];
          v316 = v347;
          v343 = [MEMORY[0x277CD7258] matrixDescriptorWithRows:batchSize columns:v351 rowBytes:4 * v351 dataType:268435488];
          v354 = objc_alloc(MEMORY[0x277CD7250]);
          data6 = v353;
          v281 = [v354 initWithBuffer:v396 offset:0 descriptor:v353];
          v355 = objc_alloc(MEMORY[0x277CD7250]);
          v356 = [resultTensorsCopy objectAtIndexedSubscript:0];
          deviceMemory8 = [v356 deviceMemory];
          v358 = [deviceMemory8 objectAtIndexedSubscript:v401];
          v359 = [v355 initWithBuffer:v358 offset:0 descriptor:v343];

          [v316 setCopyOperationAtIndex:0 sourceMatrix:v281 destinationMatrix:v359 offsets:{v352 << 32, 0}];
          if ([v12 isBidirectional])
          {
            [v316 setCopyOperationAtIndex:1 sourceMatrix:v281 destinationMatrix:v359 offsets:{v373 << 32, v373 << 32}];
          }

          v315 = data2;
          [data2 encodeToCommandBuffer:v14 copyDescriptor:v316];

          resultTensorsCopy = v402;
          v283 = v381;
          v131 = v364;
          LOBYTE(v281) = v386;
          self = selfCopy;
          goto LABEL_150;
        }

        v286 = returnsSequences;
        if (!sequenceLengths)
        {
          v286 = 1;
        }

        if (v286)
        {
          goto LABEL_151;
        }

        LODWORD(v386) = 1;
        v364 = v131;
        v287 = isBidirectional;
        v384 = objc_autoreleasePoolPush();
        v288 = objc_alloc(MEMORY[0x277CD75C0]);
        deviceList4 = [(MLCDeviceGPU *)self deviceList];
        v290 = v401;
        v291 = [deviceList4 objectAtIndexedSubscript:v401];
        data4 = [v288 initWithDevice:v291 count:batchSize << v287];

        v292 = objc_alloc(MEMORY[0x277CD75B8]);
        deviceList5 = [(MLCDeviceGPU *)self deviceList];
        v294 = [deviceList5 objectAtIndexedSubscript:v290];
        v295 = v373;
        data2 = [v292 initWithDevice:v294 copyRows:1 copyColumns:v373 sourcesAreTransposed:0 destinationsAreTransposed:0];

        v296 = v378;
        v297 = unsignedIntegerValue4;
        data6 = [MEMORY[0x277CD7258] matrixDescriptorWithRows:unsignedIntegerValue4 columns:v378 rowBytes:4 * v378 dataType:268435488];
        deviceList = [MEMORY[0x277CD7258] matrixDescriptorWithRows:1 columns:v296 rowBytes:4 * v296 dataType:268435488];
        if (batchSize)
        {
          v394 = 0;
          LODWORD(v298) = 0;
          v299 = v295 << 32;
          v388 = 4 * v297;
          do
          {
            v300 = v394;
            v391 = (4 * v394 * v296);
            v392 = v388 * v394 * v296;
            v301 = 1;
            v302 = v369;
            do
            {
              v303 = [sequenceLengths objectAtIndexedSubscript:v394];
              unsignedIntegerValue8 = [v303 unsignedIntegerValue];

              v400 = (unsignedIntegerValue8 - 1);
              v305 = v298;
              v306 = objc_alloc(MEMORY[0x277CD7250]);
              v307 = [v306 initWithBuffer:v396 offset:v392 descriptor:data6];
              v308 = objc_alloc(MEMORY[0x277CD7250]);
              v309 = [v402 objectAtIndexedSubscript:0];
              deviceMemory9 = [v309 deviceMemory];
              v311 = [deviceMemory9 objectAtIndexedSubscript:v401];
              v312 = [v308 initWithBuffer:v311 offset:v391 descriptor:deviceList];

              if (v301)
              {
                v313 = 0;
              }

              else
              {
                v313 = v299;
              }

              v298 = v313 | v305;
              if (v301)
              {
                v314 = v400;
              }

              else
              {
                v314 = v299;
              }

              [data4 setCopyOperationAtIndex:v300 sourceMatrix:v307 destinationMatrix:v312 offsets:{v314, v298}];

              v300 += v399;
              --v301;
              --v302;
            }

            while (v302);
            ++v394;
            v296 = v378;
          }

          while (v394 != v399);
        }

        v315 = data2;
        v14 = v397;
        v316 = data4;
        [data2 encodeToCommandBuffer:v397 copyDescriptor:data4];
        self = selfCopy;
        resultTensorsCopy = v402;
        v12 = v387;
        v283 = v381;
        v131 = v364;
        LOBYTE(v281) = v386;
      }

      else
      {
        LODWORD(v386) = 1;
        v364 = v131;
        v384 = objc_autoreleasePoolPush();
        v317 = objc_alloc(MEMORY[0x277CD75C0]);
        deviceList6 = [(MLCDeviceGPU *)self deviceList];
        v319 = v401;
        v320 = [deviceList6 objectAtIndexedSubscript:v401];
        v321 = [v317 initWithDevice:v320 count:batchSize];

        v322 = objc_alloc(MEMORY[0x277CD75B8]);
        deviceList7 = [(MLCDeviceGPU *)self deviceList];
        v324 = [deviceList7 objectAtIndexedSubscript:v319];
        v325 = unsignedIntegerValue4;
        v326 = v378;
        data2 = [v322 initWithDevice:v324 copyRows:unsignedIntegerValue4 copyColumns:v378 sourcesAreTransposed:0 destinationsAreTransposed:1];

        v327 = [MEMORY[0x277CD7258] matrixDescriptorWithRows:v325 columns:v326 rowBytes:4 * v326 dataType:268435488];
        v328 = v326;
        deviceList = [MEMORY[0x277CD7258] matrixDescriptorWithRows:v326 columns:v325 rowBytes:4 * v325 dataType:268435488];
        v329 = resultTensorsCopy;
        v330 = v396;
        if (batchSize)
        {
          v331 = 0;
          v332 = 0;
          v394 = 4 * v325 * v328;
          do
          {
            v400 = [objc_alloc(*(v282 + 592)) initWithBuffer:v330 offset:v331 descriptor:v327];
            v333 = objc_alloc(*(v282 + 592));
            [v329 objectAtIndexedSubscript:0];
            v334 = v282;
            v336 = v335 = v327;
            [v336 deviceMemory];
            v337 = v329;
            v339 = v338 = v321;
            v340 = [v339 objectAtIndexedSubscript:v401];
            v341 = [v333 initWithBuffer:v340 offset:v331 descriptor:deviceList];

            v321 = v338;
            v329 = v337;

            v327 = v335;
            v282 = v334;
            v342 = v400;
            [v321 setCopyOperationAtIndex:v332 sourceMatrix:v400 destinationMatrix:v341 offsets:{0, 0}];

            v330 = v396;
            ++v332;
            v331 += v394;
          }

          while (v399 != v332);
        }

        data6 = v327;
        v315 = data2;
        v14 = v397;
        [data2 encodeToCommandBuffer:v397 copyDescriptor:v321];
        resultTensorsCopy = v329;
        v316 = v321;
        v12 = v387;
        v283 = v381;
        v131 = v364;
        LOBYTE(v281) = v386;
        self = selfCopy;
      }

      v343 = deviceList;
LABEL_150:

      objc_autoreleasePoolPop(v384);
LABEL_151:

      if (v281)
      {
        v11 = v401 + 1;
        if (v11 < [(MLCDeviceGPU *)self numDevicesToUse])
        {
          continue;
        }
      }

      goto LABEL_153;
    }

    v361 = &v361;
    v185 = MEMORY[0x28223BE20](isBidirectional2);
    v391 = &v361 - ((v186 + 15) & 0xFFFFFFFFFFFFFFF0);
    MEMORY[0x28223BE20](v185);
    v188 = &v361 - v187;
    batchFirst7 = [v12 batchFirst];
    data4 = v188;
    if (batchFirst7)
    {
      v190 = unsignedIntegerValue4;
      v191 = unsignedIntegerValue;
      v192 = batchSizePerSequenceStep;
      v363 = createMatrices(unsignedIntegerValue4, batchSize, unsignedIntegerValue, unsignedIntegerValue, batchSizePerSequenceStep, 1, v376);
      data2 = createMatrices(v190, batchSize, v378, v373, v192, 1, v396);
      if (v190)
      {
        v193 = 0;
        v194 = (v190 + 1) & 0xFFFFFFFFFFFFFFFELL;
        v195 = vdupq_n_s64(v190 - 1);
        v196 = 4 * v191 * (v190 - 1);
        v197 = v365;
        v198 = v378;
        v199 = v373;
        v200 = v391;
        do
        {
          v201 = vmovn_s64(vcgeq_u64(v195, v197));
          if (v201.i8[0])
          {
            *&v200[8 * v193] = v196;
          }

          if (v201.i8[4])
          {
            *&v200[8 * v193 + 8] = 4 * v191 * (v190 + (v193 ^ 0xFFFFFFFFFFFFFFFELL));
          }

          v193 += 2;
          v197 = vaddq_s64(v197, vdupq_n_s64(2uLL));
          v196 -= 8 * v191;
        }

        while (v194 != v193);
        v202 = 0;
        v203 = 4 * v198 * (v190 - 1) + 4 * v199;
        v204 = v365;
        do
        {
          v205 = vmovn_s64(vcgeq_u64(v195, v204));
          if (v205.i8[0])
          {
            *&v188[8 * v202] = v203;
          }

          if (v205.i8[4])
          {
            *&v188[8 * v202 + 8] = 4 * (v199 + (v190 + (v202 ^ 0x3FFFFFFFFFFFFFFELL)) * v198);
          }

          v202 += 2;
          v204 = vaddq_s64(v204, vdupq_n_s64(2uLL));
          v203 -= 8 * v198;
        }

        while (v194 != v202);
      }
    }

    else
    {
      v190 = unsignedIntegerValue4;
      v206 = unsignedIntegerValue;
      v207 = batchSizePerSequenceStep;
      v363 = createMatricesForTNCBufferNoOffset(unsignedIntegerValue4, batchSize, unsignedIntegerValue, unsignedIntegerValue, batchSizePerSequenceStep, v376);
      data2 = createMatricesForTNCBufferNoOffset(v190, batchSize, v378, v373, v207, v396);
      if (v190)
      {
        v208 = 0;
        v209 = 4 * batchSize * v206;
        v210 = (v190 + 1) & 0xFFFFFFFFFFFFFFFELL;
        v211 = vdupq_n_s64(v190 - 1);
        v212 = v209 * (v190 - 1);
        v213 = v365;
        v214 = v378;
        v215 = v373;
        v216 = v391;
        do
        {
          v217 = vmovn_s64(vcgeq_u64(v211, v213));
          if (v217.i8[0])
          {
            *&v216[8 * v208] = v212;
          }

          if (v217.i8[4])
          {
            *&v216[8 * v208 + 8] = v209 * (v190 + (v208 ^ 0xFFFFFFFFFFFFFFFELL));
          }

          v208 += 2;
          v213 = vaddq_s64(v213, vdupq_n_s64(2uLL));
          v212 -= 8 * batchSize * v206;
        }

        while (v210 != v208);
        v218 = 0;
        v219 = 4 * v214 * batchSize * (v190 - 1) + 4 * v215;
        v220 = v365;
        do
        {
          v221 = vmovn_s64(vcgeq_u64(v211, v220));
          if (v221.i8[0])
          {
            *&v188[8 * v218] = v219;
          }

          if (v221.i8[4])
          {
            *&v188[8 * v218 + 8] = 4 * (v215 + v214 * batchSize * (v190 + (v218 ^ 0x3FFFFFFFFFFFFFFELL)));
          }

          v218 += 2;
          v220 = vaddq_s64(v220, vdupq_n_s64(2uLL));
          v219 -= 8 * v214 * batchSize;
        }

        while (v210 != v218);
      }
    }

    v222 = [MEMORY[0x277CBEBF8] mutableCopy];
    v223 = v190;
    v224 = v378;
    v225 = v364;
    unsignedIntegerValue = v222;
    v226 = v397;
    if (v364)
    {
      do
      {
        v227 = [resultTensorsCopy objectAtIndexedSubscript:0];
        v228 = createTemporaryMatrixViews(v227, v226, 2, v223, batchSize, v224);

        [v222 addObject:v228];
        --v225;
      }

      while (v225);
      v229 = v363;
      v230 = v363;
      v231 = v386;
      v12 = v387;
      if (!v386)
      {
        v232 = v230;
        v14 = v397;
LABEL_114:

        goto LABEL_115;
      }
    }

    else
    {
      v229 = v363;
      v233 = v363;
      v231 = v386;
      v12 = v387;
    }

    v364 = v131;
    v234 = batchSize;
    v235 = 0;
    v232 = 0;
    v384 = 4 * v234 * v373;
    v392 = v384;
    v400 = v229;
    v14 = v397;
    do
    {
      if (v382 == v235)
      {
        v236 = data2;
      }

      else
      {
        v236 = [unsignedIntegerValue objectAtIndexedSubscript:v235];
      }

      deviceList = v236;

      rnnTrainableStates2 = [v12 rnnTrainableStates];
      v238 = [rnnTrainableStates2 objectAtIndexedSubscript:&v235[v231]];

      v394 = v238;
      [v238 removeAllObjects];
      if (v388)
      {
        v239 = forwardKernel;
        v240 = [forwardKernel objectAtIndexedSubscript:&v235[v231]];
        v241 = [v240 temporaryRecurrentStateForCommandBuffer:v14 batchSize:v399 forGradientPass:0];

        v242 = [v241 getRecurrentOutputMatrixForLayerIndex:0];
        data5 = [v242 data];

        v244 = [v241 getMemoryCellMatrixForLayerIndex:0];
        data6 = [v244 data];

        blitCommandEncoder3 = [v14 blitCommandEncoder];
        v246 = tensorsCopy;
        v247 = [tensorsCopy objectAtIndexedSubscript:1];
        deviceMemory10 = [v247 deviceMemory];
        v249 = [deviceMemory10 objectAtIndexedSubscript:v401];
        v250 = [data5 length];
        v251 = v392;
        [blitCommandEncoder3 copyFromBuffer:v249 sourceOffset:v392 toBuffer:data5 destinationOffset:0 size:v250];

        v252 = [v246 objectAtIndexedSubscript:2];
        deviceMemory11 = [v252 deviceMemory];
        v254 = [deviceMemory11 objectAtIndexedSubscript:v401];
        v255 = data6;
        [blitCommandEncoder3 copyFromBuffer:v254 sourceOffset:v251 toBuffer:data6 destinationOffset:0 size:{objc_msgSend(data6, "length")}];

        v14 = v397;
        [blitCommandEncoder3 endEncoding];
        v256 = [v239 objectAtIndexedSubscript:&v235[v386]];
        [v256 setRecurrentOutputIsTemporary:1];

        v231 = v386;
        v257 = [MEMORY[0x277CBEBF8] mutableCopy];

        v12 = v387;
      }

      else
      {
        v241 = 0;
        v257 = 0;
        v239 = forwardKernel;
      }

      [v239 objectAtIndexedSubscript:&v235[v231]];
      v259 = v258 = v231;
      rnnTrainableWeights2 = [v12 rnnTrainableWeights];
      v261 = [rnnTrainableWeights2 objectAtIndexedSubscript:&v235[v258]];
      data6 = v241;
      v262 = data4;
      [v259 encodeForwardSequenceToCommandBuffer:v14 sourceMatrices:v400 sourceOffsets:v391 destinationMatrices:deviceList destinationOffsets:data4 trainingStates:v394 recurrentInputState:v241 recurrentOutputStates:v257 weights:v261];

      resultTensorsCopy = v402;
      if ([v402 count] == 3 && v257 && objc_msgSend(v257, "count"))
      {
        v263 = [v257 objectAtIndexedSubscript:0];
        v264 = [v263 getRecurrentOutputMatrixForLayerIndex:0];
        data7 = [v264 data];

        v266 = [v257 objectAtIndexedSubscript:0];
        v267 = [v266 getMemoryCellMatrixForLayerIndex:0];
        data8 = [v267 data];

        blitCommandEncoder4 = [v397 blitCommandEncoder];
        v270 = [v402 objectAtIndexedSubscript:1];
        deviceMemory12 = [v270 deviceMemory];
        v272 = v401;
        v273 = [deviceMemory12 objectAtIndexedSubscript:v401];
        v391 = data7;
        v274 = [data7 length];
        v275 = data7;
        v276 = v392;
        [blitCommandEncoder4 copyFromBuffer:v275 sourceOffset:0 toBuffer:v273 destinationOffset:v392 size:v274];

        v277 = [v402 objectAtIndexedSubscript:2];
        deviceMemory13 = [v277 deviceMemory];
        v279 = [deviceMemory13 objectAtIndexedSubscript:v272];
        [blitCommandEncoder4 copyFromBuffer:data8 sourceOffset:0 toBuffer:v279 destinationOffset:v276 size:{objc_msgSend(data8, "length")}];

        v12 = v387;
        [blitCommandEncoder4 endEncoding];
        [v257 removeAllObjects];

        v14 = v397;
        resultTensorsCopy = v402;
      }

      ++v235;
      v232 = deviceList;

      v391 = v262;
      v392 += v384;
      v400 = v232;
      v231 = v386;
    }

    while (v386 != v235);

    batchSize = v399;
    v131 = v364;
    goto LABEL_114;
  }

LABEL_153:

  v360 = *MEMORY[0x277D85DE8];
}

- (void)dispatchRNNForwardLayer:(id)layer sourceTensors:(id)tensors resultTensors:(id)resultTensors resultStateIsTemporary:(BOOL)temporary forTraining:(BOOL)training
{
  v400[0] = a2;
  *&v445[3] = *MEMORY[0x277D85DE8];
  layerCopy = layer;
  tensorsCopy = tensors;
  resultTensorsCopy = resultTensors;
  if ([resultTensorsCopy count])
  {
    v12 = 0;
    do
    {
      v13 = [resultTensorsCopy objectAtIndexedSubscript:{v12, v400[0]}];
      [(MLCDeviceGPU *)self allocateResultTensor:v13];

      ++v12;
    }

    while (v12 < [resultTensorsCopy count]);
  }

  if ([(MLCDeviceGPU *)self numDevicesToUse])
  {
    v14 = 0;
    v405 = xmmword_238D45D60;
    v420 = tensorsCopy;
    v442 = resultTensorsCopy;
    selfCopy = self;
    while (1)
    {
      v15 = [layerCopy objectAtIndexedSubscript:v14];
      gpuCommandBufferList = [(MLCDeviceGPU *)self gpuCommandBufferList];
      v439 = v14;
      v438 = [gpuCommandBufferList objectAtIndexedSubscript:v14];

      v17 = [tensorsCopy objectAtIndexedSubscript:0];
      descriptor = [v17 descriptor];
      shape = [descriptor shape];
      v20 = [shape count];

      v21 = [tensorsCopy objectAtIndexedSubscript:0];
      descriptor2 = [v21 descriptor];
      shape2 = [descriptor2 shape];
      v24 = [shape2 count];

      v25 = [tensorsCopy count] == 3 || objc_msgSend(tensorsCopy, "count") == 4;
      LODWORD(v426) = v25;
      v26 = [tensorsCopy objectAtIndexedSubscript:0];
      descriptor3 = [v26 descriptor];
      variableLengthSequences = [descriptor3 variableLengthSequences];

      returnsSequences = [v15 returnsSequences];
      isBidirectional = [v15 isBidirectional];
      sequenceLengths = 0;
      batchSizePerSequenceStep = 0;
      v413 = isBidirectional;
      if (isBidirectional)
      {
        v30 = 2;
      }

      else
      {
        v30 = 1;
      }

      v412 = v30;
      LODWORD(v441) = variableLengthSequences;
      if (variableLengthSequences)
      {
        v31 = [tensorsCopy objectAtIndexedSubscript:0];
        descriptor4 = [v31 descriptor];
        batchSizePerSequenceStep = [descriptor4 batchSizePerSequenceStep];

        v33 = [tensorsCopy objectAtIndexedSubscript:0];
        descriptor5 = [v33 descriptor];
        sequenceLengths = [descriptor5 sequenceLengths];
      }

      batchSize = [v15 batchSize];
      v35 = [tensorsCopy objectAtIndexedSubscript:0];
      descriptor6 = [v35 descriptor];
      variableLengthSequences2 = [descriptor6 variableLengthSequences];

      if (variableLengthSequences2)
      {
        rnnBuffers = [v15 rnnBuffers];
        v39 = [rnnBuffers objectAtIndexedSubscript:0];

        bzero([v39 contents], objc_msgSend(v39, "length"));
        +[MLCGPUHelper didModifyRange:buffer:](MLCGPUHelper, "didModifyRange:buffer:", 0, [v39 length], v39);
        rnnBuffers2 = [v15 rnnBuffers];
        v41 = [rnnBuffers2 objectAtIndexedSubscript:1];

        bzero([v41 contents], objc_msgSend(v41, "length"));
        +[MLCGPUHelper didModifyRange:buffer:](MLCGPUHelper, "didModifyRange:buffer:", 0, [v41 length], v41);
        rnnBuffers3 = [v15 rnnBuffers];
        v43 = [rnnBuffers3 objectAtIndexedSubscript:2];

        bzero([v43 contents], objc_msgSend(v43, "length"));
        +[MLCGPUHelper didModifyRange:buffer:](MLCGPUHelper, "didModifyRange:buffer:", 0, [v43 length], v43);
        rnnBuffers4 = [v15 rnnBuffers];
        v45 = [rnnBuffers4 objectAtIndexedSubscript:3];

        bzero([v45 contents], objc_msgSend(v45, "length"));
        +[MLCGPUHelper didModifyRange:buffer:](MLCGPUHelper, "didModifyRange:buffer:", 0, [v45 length], v45);
        if ([v15 isBidirectional])
        {
          rnnBuffers5 = [v15 rnnBuffers];
          v47 = [rnnBuffers5 objectAtIndexedSubscript:4];

          bzero([v47 contents], objc_msgSend(v47, "length"));
          +[MLCGPUHelper didModifyRange:buffer:](MLCGPUHelper, "didModifyRange:buffer:", 0, [v47 length], v47);
          rnnBuffers6 = [v15 rnnBuffers];
          v45 = [rnnBuffers6 objectAtIndexedSubscript:5];

          bzero([v45 contents], objc_msgSend(v45, "length"));
          +[MLCGPUHelper didModifyRange:buffer:](MLCGPUHelper, "didModifyRange:buffer:", 0, [v45 length], v45);
        }

        v49 = [v442 objectAtIndexedSubscript:0];
        deviceMemory = [v49 deviceMemory];
        v51 = [deviceMemory objectAtIndexedSubscript:v439];

        bzero([v51 contents], objc_msgSend(v51, "length"));
        +[MLCGPUHelper didModifyRange:buffer:](MLCGPUHelper, "didModifyRange:buffer:", 0, [v51 length], v51);
      }

      if ([v15 batchFirst] && v24 == 4)
      {
        rnnBuffers7 = [v15 rnnBuffers];
        v414 = [rnnBuffers7 objectAtIndexedSubscript:0];
        tensorsCopy = v420;
      }

      else
      {
        tensorsCopy = v420;
        rnnBuffers7 = [v420 objectAtIndexedSubscript:0];
        deviceMemory2 = [rnnBuffers7 deviceMemory];
        v414 = [deviceMemory2 objectAtIndexedSubscript:v439];
      }

      v54 = v442;

      v55 = returnsSequences ^ 1;
      v403 = returnsSequences ^ 1;
      if (v20 != 3)
      {
        v55 = 1;
      }

      v408 = v55;
      if (v55 == 1)
      {
        rnnBuffers8 = [v15 rnnBuffers];
        v433 = [rnnBuffers8 objectAtIndexedSubscript:1];
      }

      else
      {
        rnnBuffers8 = [v54 objectAtIndexedSubscript:0];
        deviceMemory3 = [rnnBuffers8 deviceMemory];
        v433 = [deviceMemory3 objectAtIndexedSubscript:v439];
      }

      batchFirst = [v15 batchFirst];
      v404 = v24;
      if (batchFirst && v24 == 4)
      {
        v59 = [tensorsCopy objectAtIndexedSubscript:0];
        descriptor7 = [v59 descriptor];
        shape3 = [descriptor7 shape];
        [shape3 objectAtIndexedSubscript:1];
        v63 = v62 = tensorsCopy;
        unsignedIntegerValue = [v63 unsignedIntegerValue];

        v64 = [tensorsCopy objectAtIndexedSubscript:0];
        descriptor8 = [v64 descriptor];
        shape4 = [descriptor8 shape];
        v67 = [shape4 objectAtIndexedSubscript:3];
        unsignedIntegerValue2 = [v67 unsignedIntegerValue];

        v69 = [v442 objectAtIndexedSubscript:0];
        descriptor9 = [v69 descriptor];
        shape5 = [descriptor9 shape];
        v72 = [shape5 objectAtIndexedSubscript:1];
        unsignedIntegerValue3 = [v72 unsignedIntegerValue];
        v425 = unsignedIntegerValue3;

        v74 = unsignedIntegerValue3 >> v413;
        deviceList = [(MLCDeviceGPU *)selfCopy deviceList];
        v76 = v439;
        v77 = [deviceList objectAtIndexedSubscript:v439];
        v78 = [v62 objectAtIndexedSubscript:0];
        deviceMemory4 = [v78 deviceMemory];
        v80 = [deviceMemory4 objectAtIndexedSubscript:v76];
        v81 = batchSize;
        unsignedIntegerValue5 = unsignedIntegerValue;
        unsignedIntegerValue4 = unsignedIntegerValue2;
        v83 = unsignedIntegerValue2;
        v84 = v414;
        copyNC1TtoNTCMTLBuffer(v438, v77, batchSize, unsignedIntegerValue, v83, v80, v414);

        v85 = v425;
      }

      else
      {
        if (![v15 batchFirst] || v20 != 3)
        {
          v397 = +[MLCLog framework];
          if (os_log_type_enabled(v397, OS_LOG_TYPE_ERROR))
          {
            [MLCDeviceGPU(MLCEngineDispatch) dispatchRNNForwardLayer:v444 sourceTensors:v400[0] resultTensors:v445 resultStateIsTemporary:v397 forTraining:?];
          }

          resultTensorsCopy = v442;
          goto LABEL_146;
        }

        v86 = [tensorsCopy objectAtIndexedSubscript:0];
        descriptor10 = [v86 descriptor];
        shape6 = [descriptor10 shape];
        v89 = [shape6 objectAtIndexedSubscript:1];
        unsignedIntegerValue4 = [v89 unsignedIntegerValue];

        v90 = [tensorsCopy objectAtIndexedSubscript:0];
        descriptor11 = [v90 descriptor];
        shape7 = [descriptor11 shape];
        v93 = [shape7 objectAtIndexedSubscript:2];
        unsignedIntegerValue5 = [v93 unsignedIntegerValue];

        v94 = [v442 objectAtIndexedSubscript:0];
        descriptor12 = [v94 descriptor];
        shape8 = [descriptor12 shape];
        v97 = [shape8 objectAtIndexedSubscript:2];
        unsignedIntegerValue6 = [v97 unsignedIntegerValue];

        v85 = unsignedIntegerValue6;
        v74 = unsignedIntegerValue6 >> v413;
        v81 = batchSize;
        v84 = v414;
      }

      v99 = unsignedIntegerValue4;
      v100 = batchSizePerSequenceStep;
      v101 = createMatrices(unsignedIntegerValue4, v81, unsignedIntegerValue5, unsignedIntegerValue5, batchSizePerSequenceStep, 0, v84);
      v411 = v74;
      v418 = createMatrices(v99, v81, v85, v74, v100, 0, v433);
      v406 = v400;
      MEMORY[0x28223BE20](v418);
      v402 = v102;
      v103 = MEMORY[0x28223BE20](v400 - ((v102 + 15) & 0xFFFFFFFFFFFFFFF0));
      v430 = v400 - v104;
      v105 = v442;
      if (v99)
      {
        v106 = 0;
        v107 = (v99 + 1) & 0xFFFFFFFFFFFFFFFELL;
        v108 = vdupq_n_s64(v99 - 1);
        v109 = v103 + 8;
        v110 = v107;
        v111 = v405;
        do
        {
          v112 = vmovn_s64(vcgeq_u64(v108, v111));
          if (v112.i8[0])
          {
            *(v109 - 1) = v106;
          }

          if (v112.i8[4])
          {
            *v109 = 4 * unsignedIntegerValue5 + v106;
          }

          v111 = vaddq_s64(v111, vdupq_n_s64(2uLL));
          v109 += 2;
          v106 += 8 * unsignedIntegerValue5;
          v110 -= 2;
        }

        while (v110);
        v113 = 0;
        v114 = v430 + 8;
        v115 = v405;
        do
        {
          v116 = vmovn_s64(vcgeq_u64(v108, v115));
          if (v116.i8[0])
          {
            *(v114 - 1) = v113;
          }

          if (v116.i8[4])
          {
            *v114 = 4 * v85 + v113;
          }

          v115 = vaddq_s64(v115, vdupq_n_s64(2uLL));
          v114 += 2;
          v113 += 8 * v85;
          v107 -= 2;
        }

        while (v107);
      }

      v325 = v103;
      unsignedIntegerValue = unsignedIntegerValue5;
      v425 = v85;
      gradientKernel = [v15 gradientKernel];
      v437 = [gradientKernel count];
      v118 = MEMORY[0x277CBEBF8];
      v119 = [MEMORY[0x277CBEBF8] mutableCopy];
      v120 = [v118 mutableCopy];
      rnnStackedLayersResults = [v15 rnnStackedLayersResults];
      v434 = v15;
      v122 = gradientKernel;
      v427 = gradientKernel;
      if (!rnnStackedLayersResults)
      {
        goto LABEL_48;
      }

      v123 = rnnStackedLayersResults;
      rnnStackedLayersResults2 = [v15 rnnStackedLayersResults];
      v125 = [rnnStackedLayersResults2 count] == 0;
      v126 = v125 | v441;

      if ((v126 & 1) == 0)
      {
        rnnStackedLayersResults3 = [v15 rnnStackedLayersResults];
        v147 = [rnnStackedLayersResults3 count];

        if (v147)
        {
          rnnStackedLayersResults4 = [v15 rnnStackedLayersResults];

          rnnStackedLayersBufferResults = [v15 rnnStackedLayersBufferResults];

          v424 = rnnStackedLayersBufferResults;
          v119 = rnnStackedLayersResults4;
        }

        else
        {
          v424 = v120;
        }

        resultTensorsCopy = v105;
        v145 = v122;
      }

      else
      {
LABEL_48:
        v436 = v101;
        v127 = [v122 count];
        v128 = v127 - v412;
        v129 = selfCopy;
        v130 = v439;
        v131 = 0x278A68000uLL;
        v132 = v119;
        v133 = v105;
        v424 = v120;
        if (v127 - v412 >= 1)
        {
          v441 = 4 * batchSize * v425 * unsignedIntegerValue4;
          do
          {
            v134 = v129;
            [(MLCDeviceGPU *)v129 deviceList];
            v136 = v135 = v132;
            v137 = [v136 objectAtIndexedSubscript:v130];
            mtlResourceOptions = [*(v131 + 2936) mtlResourceOptions];
            v139 = [v137 newBufferWithLength:v441 options:mtlResourceOptions];

            v140 = [v133 objectAtIndexedSubscript:0];
            descriptor13 = [v140 descriptor];
            [descriptor13 batchSizePerSequenceStep];
            v143 = v142 = v133;
            v144 = createMatrices(unsignedIntegerValue4, batchSize, v425, v425, v143, 0, v139);

            v133 = v142;
            v132 = v135;
            v120 = v424;
            [v132 addObject:v144];
            [v120 addObject:v139];

            v131 = 0x278A68000;
            v129 = v134;
            --v128;
          }

          while (v128);
        }

        v15 = v434;
        [v434 setRnnStackedLayersResults:v132];
        [v15 setRnnStackedLayersBufferResults:v120];
        v145 = v427;
        v119 = v132;
        resultTensorsCopy = v133;
        v101 = v436;
      }

      v419 = v119;
      lstmDropoutSource = [v15 lstmDropoutSource];
      [lstmDropoutSource removeAllObjects];

      lstmDropoutState = [v15 lstmDropoutState];
      [lstmDropoutState removeAllObjects];

      v152 = v101;
      rnnTrainableStates = [v15 rnnTrainableStates];
      v154 = [rnnTrainableStates count];

      if (v154)
      {
        v155 = 0;
        do
        {
          rnnTrainableStates2 = [v15 rnnTrainableStates];
          v157 = [rnnTrainableStates2 objectAtIndexedSubscript:v155];

          [v157 removeAllObjects];
          ++v155;
          rnnTrainableStates3 = [v15 rnnTrainableStates];
          v159 = [rnnTrainableStates3 count];
        }

        while (v155 < v159);
      }

      v410 = v152;
      v160 = v152;
      v431 = v437 >> v413;
      if (v437 >> v413)
      {
        v435 = 0;
        v161 = 0;
        v162 = 0;
        v423 = 4 * batchSize * v411;
        v163 = v431;
        v160 = v410;
        do
        {
          v441 = v160;
          if (v163 == 1)
          {
            v164 = v418;
          }

          else
          {
            v164 = [v419 objectAtIndexedSubscript:v162];
          }

          v437 = v164;

          if (v426)
          {
            v165 = [v145 objectAtIndexedSubscript:v162];
            v166 = v438;
            v167 = [v165 temporaryRecurrentStateForCommandBuffer:v438 batchSize:batchSize forGradientPass:0];

            v168 = [v167 getRecurrentOutputMatrixForLayerIndex:0];
            data = [v168 data];

            v436 = v167;
            v170 = [v167 getMemoryCellMatrixForLayerIndex:0];
            data2 = [v170 data];

            blitCommandEncoder = [v166 blitCommandEncoder];
            v172 = v420;
            v173 = [v420 objectAtIndexedSubscript:1];
            deviceMemory5 = [v173 deviceMemory];
            v175 = v439;
            v176 = [deviceMemory5 objectAtIndexedSubscript:v439];
            data6 = data;
            v177 = [data length];
            v178 = v163;
            v179 = v435;
            [blitCommandEncoder copyFromBuffer:v176 sourceOffset:v435 toBuffer:data destinationOffset:0 size:v177];

            v145 = v427;
            v180 = [v172 objectAtIndexedSubscript:2];
            deviceMemory6 = [v180 deviceMemory];
            v182 = v438;
            v183 = [deviceMemory6 objectAtIndexedSubscript:v175];
            v184 = data2;
            v185 = [data2 length];
            v186 = v179;
            v163 = v178;
            v187 = v184;
            [blitCommandEncoder copyFromBuffer:v183 sourceOffset:v186 toBuffer:v184 destinationOffset:0 size:v185];

            [blitCommandEncoder endEncoding];
            v188 = [v145 objectAtIndexedSubscript:v162];
            [v188 setRecurrentOutputIsTemporary:1];

            v189 = [MEMORY[0x277CBEBF8] mutableCopy];
            v15 = v434;
          }

          else
          {
            v436 = 0;
            v189 = 0;
            v182 = v438;
          }

          v190 = [v145 objectAtIndexedSubscript:v162];
          [v190 setPropagateFullRecurrentRows:1];

          v191 = [v145 objectAtIndexedSubscript:v162];
          rnnTrainableStates4 = [v15 rnnTrainableStates];
          v193 = [rnnTrainableStates4 objectAtIndexedSubscript:v162];
          [v15 rnnTrainableWeights];
          v195 = v194 = v145;
          data6 = v162;
          v196 = [v195 objectAtIndexedSubscript:v162];
          [v191 encodeForwardSequenceToCommandBuffer:v182 sourceMatrices:v441 sourceOffsets:v325 destinationMatrices:v437 destinationOffsets:v430 trainingStates:v193 recurrentInputState:v436 recurrentOutputStates:v189 weights:v196];

          v145 = v194;
          resultTensorsCopy = v442;
          if ([v442 count] == 3 && v189 && objc_msgSend(v189, "count"))
          {
            v197 = [v189 objectAtIndexedSubscript:0];
            v198 = [v197 getRecurrentOutputMatrixForLayerIndex:0];
            data3 = [v198 data];

            v200 = [v189 objectAtIndexedSubscript:0];
            v201 = [v200 getMemoryCellMatrixForLayerIndex:0];
            data4 = [v201 data];

            blitCommandEncoder2 = [v438 blitCommandEncoder];
            v204 = [v442 objectAtIndexedSubscript:1];
            deviceMemory7 = [v204 deviceMemory];
            v206 = v439;
            v207 = [deviceMemory7 objectAtIndexedSubscript:v439];
            v208 = [data3 length];
            v209 = v163;
            v210 = v435;
            [blitCommandEncoder2 copyFromBuffer:data3 sourceOffset:0 toBuffer:v207 destinationOffset:v435 size:v208];

            v211 = [v442 objectAtIndexedSubscript:2];
            deviceMemory8 = [v211 deviceMemory];
            v213 = [deviceMemory8 objectAtIndexedSubscript:v206];
            v214 = [data4 length];
            v215 = v210;
            v163 = v209;
            [blitCommandEncoder2 copyFromBuffer:data4 sourceOffset:0 toBuffer:v213 destinationOffset:v215 size:v214];

            [blitCommandEncoder2 endEncoding];
            [v189 removeAllObjects];

            v145 = v427;
            resultTensorsCopy = v442;
          }

          v15 = v434;
          v216 = data6;
          if (v431 != 1 && v163 != 1)
          {
            [v434 lstmDropout];
            if (v217 > 0.0 && ([v15 isBidirectional] & 1) == 0)
            {
              v218 = [MEMORY[0x277CD7220] imageDescriptorWithChannelFormat:4 width:1 height:v425 featureChannels:unsignedIntegerValue4];
              v325 = v218;
              defaultAllocator = [MEMORY[0x277CD72A8] defaultAllocator];
              data2 = defaultAllocator;
              v220 = selfCopy;
              gpuWriteTensorKernelList = [(MLCDeviceGPU *)selfCopy gpuWriteTensorKernelList];
              v222 = v439;
              v223 = [gpuWriteTensorKernelList objectAtIndexedSubscript:v439];
              batchSize2 = [v15 batchSize];
              v225 = [defaultAllocator imageBatchForCommandBuffer:v438 imageDescriptor:v218 kernel:v223 count:batchSize2];

              MPSImageBatchIncrementReadCount(v225, 1);
              gpuWriteTensorKernelList2 = [(MLCDeviceGPU *)v220 gpuWriteTensorKernelList];
              v227 = [gpuWriteTensorKernelList2 objectAtIndexedSubscript:v222];
              v228 = [v424 objectAtIndexedSubscript:v216];
              [MLCGPUHelper copyMTLBufferToMPSImageBatch:v227 commandBuffer:v438 sourceMTLBuffer:v228 destinationImageBatch:v225 MLCDataType:1];

              lstmDropoutForwardKernel = [v434 lstmDropoutForwardKernel];
              v230 = [lstmDropoutForwardKernel objectAtIndexedSubscript:v216];

              defaultAllocator2 = [MEMORY[0x277CD72A8] defaultAllocator];
              v416 = v230;
              [v230 setDestinationImageAllocator:defaultAllocator2];

              v443 = 0;
              v232 = [v230 encodeBatchToCommandBuffer:v438 sourceImages:v225 destinationStates:&v443 destinationStateIsTemporary:1];
              v233 = v443;
              lstmDropoutSource2 = [v434 lstmDropoutSource];
              [lstmDropoutSource2 addObject:v225];

              lstmDropoutState2 = [v434 lstmDropoutState];
              [lstmDropoutState2 addObject:v233];

              gpuReadTensorKernelList = [(MLCDeviceGPU *)selfCopy gpuReadTensorKernelList];
              v237 = [gpuReadTensorKernelList objectAtIndexedSubscript:v222];
              v238 = [v424 objectAtIndexedSubscript:v216];
              [MLCGPUHelper copyMPSImageBatchToMTLBuffer:v237 commandBuffer:v438 sourceImageBatch:v232 destinationMTLBuffer:v238 MLCDataType:1];

              v15 = v434;
              v145 = v427;
              resultTensorsCopy = v442;
            }
          }

          v160 = v437;

          v162 = (v216 + 1);
          v435 += v423;
          v325 = v430;
          v161 = v160;
          --v163;
        }

        while (v163);
      }

      v239 = v145;
      isBidirectional2 = [v15 isBidirectional];
      tensorsCopy = v420;
      v241 = v425;
      v416 = v160;
      if (isBidirectional2)
      {
        v242 = unsignedIntegerValue4;
        v243 = batchSize;
        v244 = unsignedIntegerValue;
        v245 = batchSizePerSequenceStep;
        v246 = createMatrices(unsignedIntegerValue4, batchSize, unsignedIntegerValue, unsignedIntegerValue, batchSizePerSequenceStep, 1, v414);
        v247 = v243;
        v248 = v411;
        data2 = createMatrices(v242, v247, v241, v411, v245, 1, v433);
        v400[1] = v400;
        v249 = MEMORY[0x28223BE20](v242);
        v251 = v400 - ((v250 + 15) & 0xFFFFFFFFFFFFFFF0);
        v252 = MEMORY[0x28223BE20](v249);
        v254 = v400 - v253;
        if (v252)
        {
          v255 = 0;
          v256 = (v252 + 1) & 0xFFFFFFFFFFFFFFFELL;
          v257 = vdupq_n_s64(v252 - 1);
          v258 = 4 * v244 * (v252 - 1);
          v259 = v405;
          do
          {
            v260 = vmovn_s64(vcgeq_u64(v257, v259));
            if (v260.i8[0])
            {
              *&v251[8 * v255] = v258;
            }

            if (v260.i8[4])
            {
              *&v251[8 * v255 + 8] = 4 * v244 * (v252 + (v255 ^ 0xFFFFFFFFFFFFFFFELL));
            }

            v255 += 2;
            v259 = vaddq_s64(v259, vdupq_n_s64(2uLL));
            v258 -= 8 * v244;
          }

          while (v256 != v255);
          v261 = 0;
          v262 = 4 * v241 * (v252 - 1) + 4 * v248;
          v263 = v405;
          do
          {
            v264 = vmovn_s64(vcgeq_u64(v257, v263));
            if (v264.i8[0])
            {
              *&v254[8 * v261] = v262;
            }

            if (v264.i8[4])
            {
              *&v254[8 * v261 + 8] = 4 * (v248 + (v252 + (v261 ^ 0x3FFFFFFFFFFFFFFELL)) * v241);
            }

            v261 += 2;
            v263 = vaddq_s64(v263, vdupq_n_s64(2uLL));
            v262 -= 8 * v241;
          }

          while (v256 != v261);
        }

        v265 = v246;
        v266 = v265;
        v267 = v265;
        resultTensorsCopy = v442;
        v239 = v427;
        v268 = v431;
        if (v431)
        {
          v267 = 0;
          v269 = (4 * batchSize * v411);
          v325 = v269;
          v270 = v431;
          v441 = v265;
          v423 = v254;
          v430 = v265;
          do
          {
            v431 = v268;
            if (v268 == 1)
            {
              v271 = data2;
            }

            else
            {
              v271 = [v419 objectAtIndexedSubscript:v270 - 1];
            }

            v437 = v271;
            v435 = v251;

            if (v426)
            {
              v272 = [v239 objectAtIndexedSubscript:v270];
              v273 = v438;
              v274 = [v272 temporaryRecurrentStateForCommandBuffer:v438 batchSize:batchSize forGradientPass:0];

              v275 = [v274 getRecurrentOutputMatrixForLayerIndex:0];
              data5 = [v275 data];
              v436 = v269;
              v277 = data5;

              v278 = [v274 getMemoryCellMatrixForLayerIndex:0];
              data6 = [v278 data];

              blitCommandEncoder3 = [v273 blitCommandEncoder];
              v280 = v420;
              v281 = [v420 objectAtIndexedSubscript:1];
              deviceMemory9 = [v281 deviceMemory];
              v283 = v439;
              v284 = [deviceMemory9 objectAtIndexedSubscript:v439];
              v285 = v277;
              v269 = v436;
              [blitCommandEncoder3 copyFromBuffer:v284 sourceOffset:v436 toBuffer:v285 destinationOffset:0 size:{objc_msgSend(v285, "length")}];

              v286 = v280;
              v254 = v423;
              v287 = [v286 objectAtIndexedSubscript:2];
              deviceMemory10 = [v287 deviceMemory];
              v289 = [deviceMemory10 objectAtIndexedSubscript:v283];
              v290 = data6;
              [blitCommandEncoder3 copyFromBuffer:v289 sourceOffset:v269 toBuffer:data6 destinationOffset:0 size:{objc_msgSend(data6, "length")}];

              v239 = v427;
              [blitCommandEncoder3 endEncoding];
              v291 = [v239 objectAtIndexedSubscript:v270];
              [v291 setRecurrentOutputIsTemporary:1];

              v292 = [MEMORY[0x277CBEBF8] mutableCopy];
            }

            else
            {
              v274 = 0;
              v292 = 0;
            }

            v293 = [v239 objectAtIndexedSubscript:v270];
            v294 = v434;
            rnnTrainableStates5 = [v434 rnnTrainableStates];
            v296 = [rnnTrainableStates5 objectAtIndexedSubscript:v270];
            rnnTrainableWeights = [v294 rnnTrainableWeights];
            v298 = [rnnTrainableWeights objectAtIndexedSubscript:v270];
            v436 = v274;
            v399 = v274;
            v299 = v437;
            [v293 encodeForwardSequenceToCommandBuffer:v438 sourceMatrices:v441 sourceOffsets:v435 destinationMatrices:v437 destinationOffsets:v254 trainingStates:v296 recurrentInputState:v399 recurrentOutputStates:v292 weights:v298];

            resultTensorsCopy = v442;
            if ([v442 count] == 3 && v292 && objc_msgSend(v292, "count"))
            {
              v300 = [v292 objectAtIndexedSubscript:0];
              v301 = [v300 getRecurrentOutputMatrixForLayerIndex:0];
              data7 = [v301 data];

              v303 = [v292 objectAtIndexedSubscript:0];
              v304 = [v303 getMemoryCellMatrixForLayerIndex:0];
              data8 = [v304 data];

              blitCommandEncoder4 = [v438 blitCommandEncoder];
              v307 = [v442 objectAtIndexedSubscript:1];
              deviceMemory11 = [v307 deviceMemory];
              v309 = v439;
              v310 = [deviceMemory11 objectAtIndexedSubscript:v439];
              [blitCommandEncoder4 copyFromBuffer:data7 sourceOffset:0 toBuffer:v310 destinationOffset:v269 size:{objc_msgSend(data7, "length")}];

              v311 = [v442 objectAtIndexedSubscript:2];
              deviceMemory12 = [v311 deviceMemory];
              v313 = v309;
              v254 = v423;
              v314 = [deviceMemory12 objectAtIndexedSubscript:v313];
              [blitCommandEncoder4 copyFromBuffer:data8 sourceOffset:0 toBuffer:v314 destinationOffset:v269 size:{objc_msgSend(data8, "length")}];

              v315 = v442;
              [blitCommandEncoder4 endEncoding];
              [v292 removeAllObjects];

              resultTensorsCopy = v315;
              v299 = v437;
            }

            v267 = v299;

            ++v270;
            v266 = v430;
            v269 += v325;
            v251 = v254;
            v441 = v267;
            v268 = v431 - 1;
            v239 = v427;
          }

          while (v431 != 1);

          tensorsCopy = v420;
          v15 = v434;
          v241 = v425;
        }

        v160 = v416;
      }

      v316 = [tensorsCopy objectAtIndexedSubscript:0];
      [v15 setSource:v316];

      v317 = [resultTensorsCopy objectAtIndexedSubscript:0];
      [v15 setResult:v317];

      v318 = objc_autoreleasePoolPush();
      self = selfCopy;
      v319 = v408;
      if (v408)
      {
        break;
      }

LABEL_140:
      objc_autoreleasePoolPop(v318);

      if (v319)
      {
        v14 = v439 + 1;
        if (v14 < [(MLCDeviceGPU *)self numDevicesToUse])
        {
          continue;
        }
      }

      goto LABEL_146;
    }

    if (v404 == 4)
    {
      v320 = v403;
    }

    else
    {
      v320 = 1;
    }

    if (v320)
    {
      v321 = returnsSequences;
      if (sequenceLengths)
      {
        v321 = 1;
      }

      if (v321)
      {
        if (sequenceLengths)
        {
          v322 = v403;
        }

        else
        {
          v322 = 0;
        }

        if (v322 != 1)
        {
          goto LABEL_140;
        }

        v426 = v318;
        v323 = v241;
        v324 = selfCopy;
        v325 = v413;
        v326 = objc_alloc(MEMORY[0x277CD75C0]);
        deviceList2 = [(MLCDeviceGPU *)v324 deviceList];
        v328 = v439;
        v329 = [deviceList2 objectAtIndexedSubscript:v439];
        v330 = batchSize;
        v325 = [v326 initWithDevice:v329 count:batchSize << v325];

        v331 = objc_alloc(MEMORY[0x277CD75B8]);
        v332 = v324;
        v333 = v328;
        deviceList3 = [(MLCDeviceGPU *)v332 deviceList];
        v335 = [deviceList3 objectAtIndexedSubscript:v328];
        v336 = v411;
        v423 = [v331 initWithDevice:v335 copyRows:1 copyColumns:v411 sourcesAreTransposed:0 destinationsAreTransposed:0];

        v337 = unsignedIntegerValue4;
        v437 = [MEMORY[0x277CD7258] matrixDescriptorWithRows:unsignedIntegerValue4 columns:v323 rowBytes:4 * v323 dataType:268435488];
        v436 = [MEMORY[0x277CD7258] matrixDescriptorWithRows:1 columns:v323 rowBytes:4 * v323 dataType:268435488];
        if (v330)
        {
          v435 = 0;
          LODWORD(v338) = 0;
          v339 = v336 << 32;
          data6 = 4 * v337;
          do
          {
            v340 = v435;
            v430 = (4 * v435 * v425);
            v431 = data6 * v435 * v425;
            v341 = 1;
            v342 = v412;
            do
            {
              v343 = [sequenceLengths objectAtIndexedSubscript:v435];
              unsignedIntegerValue7 = [v343 unsignedIntegerValue];

              v441 = (unsignedIntegerValue7 - 1);
              v345 = v338;
              v346 = objc_alloc(MEMORY[0x277CD7250]);
              v347 = [v346 initWithBuffer:v433 offset:v431 descriptor:v437];
              v348 = objc_alloc(MEMORY[0x277CD7250]);
              v349 = [v442 objectAtIndexedSubscript:0];
              deviceMemory13 = [v349 deviceMemory];
              v351 = [deviceMemory13 objectAtIndexedSubscript:v333];
              v352 = [v348 initWithBuffer:v351 offset:v430 descriptor:v436];

              v333 = v439;
              if (v341)
              {
                v353 = 0;
              }

              else
              {
                v353 = v339;
              }

              v338 = v353 | v345;
              v354 = batchSize;
              if (v341)
              {
                v355 = v441;
              }

              else
              {
                v355 = v339;
              }

              [v325 setCopyOperationAtIndex:v340 sourceMatrix:v347 destinationMatrix:v352 offsets:{v355, v338}];

              v340 += v354;
              --v341;
              --v342;
            }

            while (v342);
            ++v435;
          }

          while (v435 != v354);
        }

        v356 = v423;
        v357 = v325;
        [v423 encodeToCommandBuffer:v438 copyDescriptor:v325];
        tensorsCopy = v420;
        resultTensorsCopy = v442;
        self = selfCopy;
        v15 = v434;
        v319 = v408;
        v239 = v427;
        v160 = v416;
        goto LABEL_139;
      }

      v426 = v318;
      v378 = objc_alloc(MEMORY[0x277CD75C0]);
      deviceList4 = [(MLCDeviceGPU *)self deviceList];
      v380 = v439;
      v381 = [deviceList4 objectAtIndexedSubscript:v439];
      v382 = [v378 initWithDevice:v381 count:v412];

      v383 = objc_alloc(MEMORY[0x277CD75B8]);
      deviceList5 = [(MLCDeviceGPU *)self deviceList];
      v385 = [deviceList5 objectAtIndexedSubscript:v380];
      v386 = batchSize;
      v423 = [v383 initWithDevice:v385 copyRows:batchSize copyColumns:v411 sourcesAreTransposed:0 destinationsAreTransposed:0];

      v387 = ((unsignedIntegerValue4 - 1) * v241);
      v388 = [MEMORY[0x277CD7258] matrixDescriptorWithRows:v386 columns:unsignedIntegerValue4 * v241 rowBytes:4 * unsignedIntegerValue4 * v241 dataType:268435488];
      v389 = [MEMORY[0x277CD7258] matrixDescriptorWithRows:v386 columns:v241 rowBytes:4 * v241 dataType:268435488];
      v390 = objc_alloc(MEMORY[0x277CD7250]);
      v437 = v388;
      v391 = [v390 initWithBuffer:v433 offset:0 descriptor:v388];
      v392 = objc_alloc(MEMORY[0x277CD7250]);
      v393 = [v442 objectAtIndexedSubscript:0];
      deviceMemory14 = [v393 deviceMemory];
      v395 = [deviceMemory14 objectAtIndexedSubscript:v380];
      v436 = v389;
      v396 = [v392 initWithBuffer:v395 offset:0 descriptor:v389];

      v357 = v382;
      [v382 setCopyOperationAtIndex:0 sourceMatrix:v391 destinationMatrix:v396 offsets:{v387 << 32, 0}];
      if ([v15 isBidirectional])
      {
        [v382 setCopyOperationAtIndex:1 sourceMatrix:v391 destinationMatrix:v396 offsets:{v411 << 32, v411 << 32}];
      }

      v356 = v423;
      [v423 encodeToCommandBuffer:v438 copyDescriptor:v382];

      resultTensorsCopy = v442;
      self = selfCopy;
    }

    else
    {
      v426 = v318;
      v358 = objc_alloc(MEMORY[0x277CD75C0]);
      deviceList6 = [(MLCDeviceGPU *)self deviceList];
      v360 = v439;
      v361 = [deviceList6 objectAtIndexedSubscript:v439];
      v362 = batchSize;
      v357 = [v358 initWithDevice:v361 count:batchSize];

      v363 = objc_alloc(MEMORY[0x277CD75B8]);
      deviceList7 = [(MLCDeviceGPU *)self deviceList];
      v365 = [deviceList7 objectAtIndexedSubscript:v360];
      v366 = unsignedIntegerValue4;
      v423 = [v363 initWithDevice:v365 copyRows:unsignedIntegerValue4 copyColumns:v241 sourcesAreTransposed:0 destinationsAreTransposed:1];

      v367 = [MEMORY[0x277CD7258] matrixDescriptorWithRows:v366 columns:v241 rowBytes:4 * v241 dataType:268435488];
      v436 = [MEMORY[0x277CD7258] matrixDescriptorWithRows:v241 columns:v366 rowBytes:4 * v366 dataType:268435488];
      v437 = v367;
      v368 = v433;
      if (v362)
      {
        v369 = 0;
        v370 = 0;
        v441 = 4 * v366 * v241;
        do
        {
          v371 = [objc_alloc(MEMORY[0x277CD7250]) initWithBuffer:v368 offset:v369 descriptor:v367];
          v372 = objc_alloc(MEMORY[0x277CD7250]);
          v373 = [v442 objectAtIndexedSubscript:0];
          [v373 deviceMemory];
          v375 = v374 = v357;
          v376 = [v375 objectAtIndexedSubscript:v439];
          v377 = [v372 initWithBuffer:v376 offset:v369 descriptor:v436];

          v357 = v374;
          [v374 setCopyOperationAtIndex:v370 sourceMatrix:v371 destinationMatrix:v377 offsets:{0, 0}];

          v367 = v437;
          ++v370;
          v369 += v441;
        }

        while (batchSize != v370);
      }

      v356 = v423;
      [v423 encodeToCommandBuffer:v438 copyDescriptor:v357];
      resultTensorsCopy = v442;
      self = selfCopy;
      v15 = v434;
    }

    v319 = v408;
    v239 = v427;
    v160 = v416;
    tensorsCopy = v420;
LABEL_139:

    v318 = v426;
    goto LABEL_140;
  }

LABEL_146:

  v398 = *MEMORY[0x277D85DE8];
}

- (void)dispatchRNNGradientLayer:(id)layer sourceGradientTensors:(id)tensors resultGradientTensors:(id)gradientTensors
{
  v341[2] = *MEMORY[0x277D85DE8];
  layerCopy = layer;
  tensorsCopy = tensors;
  gradientTensorsCopy = gradientTensors;
  v9 = [gradientTensorsCopy objectAtIndexedSubscript:0];
  [(MLCDeviceGPU *)self allocateResultTensor:v9];

  if ([(MLCDeviceGPU *)self numDevicesToUse])
  {
    v10 = 0;
    v305 = xmmword_238D45D60;
    selfCopy = self;
    v302 = gradientTensorsCopy;
    while (1)
    {
      v11 = [layerCopy objectAtIndexedSubscript:v10];
      gpuCommandBufferList = [(MLCDeviceGPU *)self gpuCommandBufferList];
      v328 = [gpuCommandBufferList objectAtIndexedSubscript:v10];

      returnsSequences = [v11 returnsSequences];
      source = [v11 source];
      descriptor = [source descriptor];
      variableLengthSequences = [descriptor variableLengthSequences];

      descriptor2 = [source descriptor];
      shape = [descriptor2 shape];
      v308 = [shape count];

      descriptor3 = [source descriptor];
      shape2 = [descriptor3 shape];
      v307 = [shape2 count];

      isBidirectional = [v11 isBidirectional];
      v22 = 1;
      if (isBidirectional)
      {
        v22 = 2;
      }

      rnnTrainableWeightGradients2 = isBidirectional;
      gradientKernel = v22;
      if (variableLengthSequences)
      {
        descriptor4 = [source descriptor];
        batchSizePerSequenceStep = [descriptor4 batchSizePerSequenceStep];

        descriptor5 = [source descriptor];
        sequenceLengths = [descriptor5 sequenceLengths];
      }

      else
      {
        sequenceLengths = 0;
        batchSizePerSequenceStep = 0;
      }

      batchSize = [v11 batchSize];
      rnnBuffers = [v11 rnnBuffers];
      v26 = [rnnBuffers objectAtIndexedSubscript:0];

      rnnBuffers2 = [v11 rnnBuffers];
      v337 = [rnnBuffers2 objectAtIndexedSubscript:2];

      rnnBuffers3 = [v11 rnnBuffers];
      v29 = [rnnBuffers3 objectAtIndexedSubscript:3];

      if ([v11 batchFirst] && v308 == 3)
      {
        deviceMemory = [source deviceMemory];
        v310 = [deviceMemory objectAtIndexedSubscript:v10];

        v31 = [v302 objectAtIndexedSubscript:0];
        deviceMemory2 = [v31 deviceMemory];
        v312 = [deviceMemory2 objectAtIndexedSubscript:v10];

        if (returnsSequences)
        {
          v33 = [tensorsCopy objectAtIndexedSubscript:0];
          deviceMemory3 = [v33 deviceMemory];
          v35 = [deviceMemory3 objectAtIndexedSubscript:v10];

          v337 = v35;
        }
      }

      else
      {
        v312 = v29;
        v310 = v26;
      }

      descriptor6 = [source descriptor];
      variableLengthSequences2 = [descriptor6 variableLengthSequences];

      if (variableLengthSequences2)
      {
        v38 = v312;
        bzero([v312 contents], objc_msgSend(v312, "length"));
        +[MLCGPUHelper didModifyRange:buffer:](MLCGPUHelper, "didModifyRange:buffer:", 0, [v38 length], v38);
      }

      if ([v11 batchFirst] && v307 == 4)
      {
        LODWORD(v338) = returnsSequences;
        v39 = variableLengthSequences;
        descriptor7 = [source descriptor];
        shape3 = [descriptor7 shape];
        v42 = [shape3 objectAtIndexedSubscript:1];
        unsignedIntegerValue = [v42 unsignedIntegerValue];

        descriptor8 = [source descriptor];
        shape4 = [descriptor8 shape];
        v45 = [shape4 objectAtIndexedSubscript:3];
        unsignedIntegerValue2 = [v45 unsignedIntegerValue];
        v46 = 1;
      }

      else
      {
        if (![v11 batchFirst] || v308 != 3)
        {
          unsignedIntegerValue = 0;
          v309 = 0;
          unsignedIntegerValue3 = 0;
          unsignedIntegerValue2 = 1;
          goto LABEL_22;
        }

        LODWORD(v338) = returnsSequences;
        v39 = variableLengthSequences;
        descriptor9 = [source descriptor];
        shape5 = [descriptor9 shape];
        v259 = [shape5 objectAtIndexedSubscript:1];
        unsignedIntegerValue2 = [v259 unsignedIntegerValue];

        descriptor8 = [source descriptor];
        shape4 = [descriptor8 shape];
        v45 = [shape4 objectAtIndexedSubscript:2];
        unsignedIntegerValue = [v45 unsignedIntegerValue];
        v46 = 2;
      }

      v47 = [tensorsCopy objectAtIndexedSubscript:0];
      descriptor10 = [v47 descriptor];
      shape6 = [descriptor10 shape];
      v50 = [shape6 objectAtIndexedSubscript:v46];
      unsignedIntegerValue3 = [v50 unsignedIntegerValue];

      v309 = unsignedIntegerValue3 >> rnnTrainableWeightGradients2;
      variableLengthSequences = v39;
      returnsSequences = v338;
LABEL_22:
      v52 = sequenceLengths;
      batchFirst = [v11 batchFirst];
      v315 = unsignedIntegerValue3;
      v54 = 4 * unsignedIntegerValue3;
      v339 = v10;
      v330 = v11;
      v306 = source;
      sequenceLengths = v52;
      v329 = v54;
      if (batchFirst && v307 == 4 && ((returnsSequences ^ 1) & 1) == 0)
      {
        v333 = objc_autoreleasePoolPush();
        v55 = objc_alloc(MEMORY[0x277CD75C0]);
        deviceList = [(MLCDeviceGPU *)self deviceList];
        [deviceList objectAtIndexedSubscript:v10];
        v58 = v57 = self;
        v59 = v10;
        v60 = batchSize;
        v61 = [v55 initWithDevice:v58 count:batchSize];

        v62 = objc_alloc(MEMORY[0x277CD75B8]);
        deviceList2 = [(MLCDeviceGPU *)v57 deviceList];
        v64 = [deviceList2 objectAtIndexedSubscript:v59];
        v65 = unsignedIntegerValue2;
        v66 = v315;
        rnnTrainableWeightGradients2 = [v62 initWithDevice:v64 copyRows:unsignedIntegerValue2 copyColumns:v315 sourcesAreTransposed:1 destinationsAreTransposed:0];

        v338 = [MEMORY[0x277CD7258] matrixDescriptorWithRows:v66 columns:v65 rowBytes:4 * v65 dataType:268435488];
        v67 = [MEMORY[0x277CD7258] matrixDescriptorWithRows:v65 columns:v66 rowBytes:v54 dataType:268435488];
        v68 = tensorsCopy;
        v69 = v337;
        if (v60)
        {
          v70 = 0;
          v71 = 0;
          v334 = 4 * v315 * unsignedIntegerValue2;
          do
          {
            v72 = objc_alloc(MEMORY[0x277CD7250]);
            [v68 objectAtIndexedSubscript:0];
            v73 = v67;
            v75 = v74 = v61;
            deviceMemory4 = [v75 deviceMemory];
            v77 = [deviceMemory4 objectAtIndexedSubscript:v339];
            v78 = [v72 initWithBuffer:v77 offset:v70 descriptor:v338];

            v61 = v74;
            v67 = v73;
            v79 = [objc_alloc(MEMORY[0x277CD7250]) initWithBuffer:v69 offset:v70 descriptor:v73];
            [v61 setCopyOperationAtIndex:v71 sourceMatrix:v78 destinationMatrix:v79 offsets:{0, 0}];

            ++v71;
            v70 += v334;
          }

          while (batchSize != v71);
        }

        v80 = rnnTrainableWeightGradients2;
        [rnnTrainableWeightGradients2 encodeToCommandBuffer:v328 copyDescriptor:v61];

        objc_autoreleasePoolPop(v333);
LABEL_47:
        v54 = v329;
        v11 = v330;
        goto LABEL_48;
      }

      if (!(returnsSequences & 1 | (([v11 batchFirst] & 1) == 0) | variableLengthSequences & 1))
      {
        v113 = objc_alloc(MEMORY[0x277CD75C0]);
        deviceList3 = [(MLCDeviceGPU *)self deviceList];
        v115 = [deviceList3 objectAtIndexedSubscript:v10];
        v116 = [v113 initWithDevice:v115 count:gradientKernel];

        v117 = objc_alloc(MEMORY[0x277CD75B8]);
        deviceList4 = [(MLCDeviceGPU *)self deviceList];
        v119 = [deviceList4 objectAtIndexedSubscript:v10];
        v120 = v117;
        v121 = batchSize;
        v338 = [v120 initWithDevice:v119 copyRows:batchSize copyColumns:v309 sourcesAreTransposed:0 destinationsAreTransposed:0];

        v122 = v315;
        v334 = (v315 * (unsignedIntegerValue2 - 1)) << 32;
        v123 = [MEMORY[0x277CD7258] matrixDescriptorWithRows:v121 columns:unsignedIntegerValue2 * v315 rowBytes:4 * unsignedIntegerValue2 * v315 dataType:268435488];
        v124 = [MEMORY[0x277CD7258] matrixDescriptorWithRows:v121 columns:v122 rowBytes:v54 dataType:268435488];
        v125 = objc_alloc(MEMORY[0x277CD7250]);
        v126 = v11;
        v127 = [v125 initWithBuffer:v337 offset:0 descriptor:v123];
        v128 = v10;
        v129 = objc_alloc(MEMORY[0x277CD7250]);
        v130 = [tensorsCopy objectAtIndexedSubscript:0];
        deviceMemory5 = [v130 deviceMemory];
        v132 = [deviceMemory5 objectAtIndexedSubscript:v128];
        v133 = [v129 initWithBuffer:v132 offset:0 descriptor:v124];

        [v116 setCopyOperationAtIndex:0 sourceMatrix:v133 destinationMatrix:v127 offsets:{0, v334}];
        if ([v126 isBidirectional])
        {
          [v116 setCopyOperationAtIndex:1 sourceMatrix:v133 destinationMatrix:v127 offsets:{v309 << 32, v309 << 32}];
        }

        v134 = v338;
        [v338 encodeToCommandBuffer:v328 copyDescriptor:v116];

        goto LABEL_47;
      }

      v81 = returnsSequences | ~[v11 batchFirst];
      v82 = unsignedIntegerValue;
      v83 = unsignedIntegerValue2;
      v84 = v315;
      if (v81 & 1) != 0 || ((variableLengthSequences ^ 1))
      {
        goto LABEL_49;
      }

      rnnStackedLayersResults = objc_autoreleasePoolPush();
      v85 = objc_alloc(MEMORY[0x277CD75C0]);
      deviceList5 = [(MLCDeviceGPU *)self deviceList];
      v87 = [deviceList5 objectAtIndexedSubscript:v10];
      v88 = batchSize;
      rnnTrainableWeightGradients2 = [v85 initWithDevice:v87 count:batchSize << rnnTrainableWeightGradients2];

      v89 = objc_alloc(MEMORY[0x277CD75B8]);
      deviceList6 = [(MLCDeviceGPU *)self deviceList];
      v91 = [deviceList6 objectAtIndexedSubscript:v10];
      v322 = [v89 initWithDevice:v91 copyRows:1 copyColumns:v309 sourcesAreTransposed:0 destinationsAreTransposed:0];

      v331 = [MEMORY[0x277CD7258] matrixDescriptorWithRows:1 columns:v84 rowBytes:v54 dataType:268435488];
      v92 = [MEMORY[0x277CD7258] matrixDescriptorWithRows:v83 columns:v84 rowBytes:v54 dataType:268435488];
      if (v88)
      {
        v338 = 0;
        v93 = v309 << 32;
        rnnTrainableStates2 = 4 * unsignedIntegerValue2 * v315;
        do
        {
          v94 = v54 * v338;
          v95 = 1;
          v96 = v338;
          v97 = gradientKernel;
          v333 = rnnTrainableStates2 * v338;
          v334 = v94;
          do
          {
            v98 = [sequenceLengths objectAtIndexedSubscript:v338];
            unsignedIntegerValue4 = [v98 unsignedIntegerValue];

            v100 = (unsignedIntegerValue4 - 1);
            v101 = objc_alloc(MEMORY[0x277CD7250]);
            v102 = [tensorsCopy objectAtIndexedSubscript:0];
            deviceMemory6 = [v102 deviceMemory];
            v104 = [deviceMemory6 objectAtIndexedSubscript:v339];
            v105 = [v101 initWithBuffer:v104 offset:v334 descriptor:v331];

            v106 = batchSize;
            v107 = objc_alloc(MEMORY[0x277CD7250]);
            v108 = [v107 initWithBuffer:v337 offset:v333 descriptor:v92];
            if (v95)
            {
              v109 = v100;
            }

            else
            {
              v109 = v93;
            }

            if (v95)
            {
              v110 = 0;
            }

            else
            {
              v110 = v93;
            }

            [rnnTrainableWeightGradients2 setCopyOperationAtIndex:v96 sourceMatrix:v105 destinationMatrix:v108 offsets:{v110, v109}];

            v96 += v106;
            --v95;
            --v97;
          }

          while (v97);
          ++v338;
          v54 = v329;
        }

        while (v338 != v106);
      }

      v111 = v322;
      v112 = rnnTrainableWeightGradients2;
      [v322 encodeToCommandBuffer:v328 copyDescriptor:rnnTrainableWeightGradients2];

      objc_autoreleasePoolPop(rnnStackedLayersResults);
      v11 = v330;
LABEL_48:
      v82 = unsignedIntegerValue;
      v83 = unsignedIntegerValue2;
      v84 = v315;
LABEL_49:
      v135 = batchSize;
      v136 = batchSizePerSequenceStep;
      v318 = createMatrices(v83, batchSize, v82, v82, batchSizePerSequenceStep, 0, v310);
      v338 = createMatrices(v83, v135, v84, v309, v136, 0, v337);
      v317 = createMatrices(v83, v135, v82, v82, v136, 0, v312);
      v304 = &v299;
      v137 = MEMORY[0x28223BE20](v317);
      v316 = &v299 - ((v138 + 15) & 0xFFFFFFFFFFFFFFF0);
      v301 = v138;
      MEMORY[0x28223BE20](v137);
      rnnTrainableStates2 = &v299 - v139;
      v140 = tensorsCopy;
      if (v83)
      {
        v141 = 0;
        v142 = (v83 + 1) & 0xFFFFFFFFFFFFFFFELL;
        v143 = vdupq_n_s64(v83 - 1);
        v144 = v316 + 8;
        v145 = v142;
        v146 = v305;
        do
        {
          v147 = vmovn_s64(vcgeq_u64(v143, v146));
          if (v147.i8[0])
          {
            *(v144 - 1) = v141;
          }

          if (v147.i8[4])
          {
            *v144 = 4 * v82 + v141;
          }

          v146 = vaddq_s64(v146, vdupq_n_s64(2uLL));
          v144 += 2;
          v141 += 8 * v82;
          v145 -= 2;
        }

        while (v145);
        v148 = 0;
        v149 = (rnnTrainableStates2 + 8);
        v150 = v305;
        do
        {
          v151 = vmovn_s64(vcgeq_u64(v143, v150));
          if (v151.i8[0])
          {
            *(v149 - 1) = v148;
          }

          if (v151.i8[4])
          {
            *v149 = v54 + v148;
          }

          v150 = vaddq_s64(v150, vdupq_n_s64(2uLL));
          v149 += 2;
          v148 += 8 * v84;
          v142 -= 2;
        }

        while (v142);
      }

      gradientKernel = [v11 gradientKernel];
      v152 = [gradientKernel count];
      v153 = v152 >> rnnTrainableWeightGradients2;
      v329 = [MEMORY[0x277CBEBF8] mutableCopy];
      v154 = v84;
      rnnTrainableWeightGradients2 = v153;
      v155 = (v153 - 1);
      v156 = (v153 - 1);
      v157 = v328;
      if (v153 != 1)
      {
        do
        {
          v158 = [v140 objectAtIndexedSubscript:0];
          v159 = createTemporaryMatrixViews(v158, v157, 1, v83, v135, v154);

          [v329 addObject:v159];
          --v156;
        }

        while (v156);
      }

      rnnStackedLayersResults = [v11 rnnStackedLayersResults];
      v160 = v338;
      isBidirectional2 = [v11 isBidirectional];
      v322 = MEMORY[0x277CBEBF8];
      if (isBidirectional2)
      {
        rnnBuffers4 = [v11 rnnBuffers];
        v163 = [rnnBuffers4 objectAtIndexedSubscript:4];
        v322 = createMatrices(v83, v135, unsignedIntegerValue, unsignedIntegerValue, batchSizePerSequenceStep, 0, v163);
      }

      v303 = v160;
      if (rnnTrainableWeightGradients2)
      {
        v164 = 0;
        v165 = 0;
        v166 = rnnTrainableStates2;
        do
        {
          v338 = v160;
          v331 = v166;
          if (v155)
          {
            v167 = [rnnStackedLayersResults objectAtIndexedSubscript:v155 - 1];

            v334 = [v329 objectAtIndexedSubscript:v155 - 1];
            v168 = rnnTrainableStates2;
          }

          else
          {
            v167 = v318;

            isBidirectional3 = [v11 isBidirectional];
            v170 = v317;
            if (isBidirectional3)
            {
              v170 = v322;
            }

            v334 = v170;
            v168 = v316;
          }

          v171 = [gradientKernel objectAtIndexedSubscript:v155];
          rnnTrainableWeightGradients = [v11 rnnTrainableWeightGradients];
          v173 = [rnnTrainableWeightGradients objectAtIndexedSubscript:v155];
          rnnTrainableStates = [v11 rnnTrainableStates];
          v175 = [rnnTrainableStates objectAtIndexedSubscript:v155];
          rnnTrainableWeights = [v11 rnnTrainableWeights];
          v177 = [rnnTrainableWeights objectAtIndexedSubscript:v155];
          v297 = v168;
          rnnTrainableWeightGradients2 = v168;
          v333 = v167;
          v178 = v167;
          v179 = v168;
          v180 = v338;
          v181 = v334;
          [v171 encodeGradientSequenceToCommandBuffer:v328 forwardSources:v178 forwardSourceOffsets:v179 sourceGradients:v338 sourceGradientOffsets:v331 destinationGradients:v334 destinationOffsets:v297 weightGradients:v173 trainingStates:v175 recurrentInputState:0 recurrentOutputStates:0 weights:v177];

          v11 = v330;
          if (rnnTrainableWeightGradients2 != 1)
          {
            if (v155)
            {
              [v11 lstmDropout];
              if (v182 > 0.0)
              {
                rnnStackedLayersBufferResults = [v11 rnnStackedLayersBufferResults];
                v331 = [rnnStackedLayersBufferResults objectAtIndexedSubscript:v155 - 1];

                v184 = [MEMORY[0x277CD7220] imageDescriptorWithChannelFormat:4 width:1 height:v315 featureChannels:unsignedIntegerValue2];
                v321 = v184;
                defaultAllocator = [MEMORY[0x277CD72A8] defaultAllocator];
                v320 = defaultAllocator;
                v186 = selfCopy;
                gpuWriteTensorKernelList = [(MLCDeviceGPU *)selfCopy gpuWriteTensorKernelList];
                v188 = v339;
                v189 = [gpuWriteTensorKernelList objectAtIndexedSubscript:v339];
                batchSize2 = [v11 batchSize];
                v191 = defaultAllocator;
                v192 = v328;
                v193 = [v191 imageBatchForCommandBuffer:v328 imageDescriptor:v184 kernel:v189 count:batchSize2];

                gpuWriteTensorKernelList2 = [(MLCDeviceGPU *)v186 gpuWriteTensorKernelList];
                v195 = [gpuWriteTensorKernelList2 objectAtIndexedSubscript:v188];
                [MLCGPUHelper copyMTLBufferToMPSImageBatch:v195 commandBuffer:v192 sourceMTLBuffer:v331 destinationImageBatch:v193 MLCDataType:1];

                batchSize3 = [v330 batchSize];
                lstmDropoutSource = [v330 lstmDropoutSource];
                v198 = [lstmDropoutSource objectAtIndexedSubscript:v155 - 1];
                v199 = [v198 subarrayWithRange:{0, batchSize3}];
                v319 = v199;

                lstmDropoutState = [v330 lstmDropoutState];
                v201 = [lstmDropoutState objectAtIndexedSubscript:v155 - 1];

                lstmDropoutGradientKernel = [v330 lstmDropoutGradientKernel];
                v203 = [lstmDropoutGradientKernel objectAtIndexedSubscript:v155 - 1];

                defaultAllocator2 = [MEMORY[0x277CD72A8] defaultAllocator];
                [v203 setDestinationImageAllocator:defaultAllocator2];

                v205 = [v203 encodeBatchToCommandBuffer:v192 sourceGradients:v193 sourceImages:v199 gradientStates:v201];
                gpuReadTensorKernelList = [(MLCDeviceGPU *)v186 gpuReadTensorKernelList];
                v207 = [gpuReadTensorKernelList objectAtIndexedSubscript:v188];
                v11 = v330;
                v208 = v331;
                [MLCGPUHelper copyMPSImageBatchToMTLBuffer:v207 commandBuffer:v192 sourceImageBatch:v205 destinationMTLBuffer:v331 MLCDataType:1];

                v180 = v338;
                v181 = v334;
              }
            }
          }

          v164 = v181;

          --v155;
          v209 = v164;
          v160 = v164;
          v83 = unsignedIntegerValue2;
          v166 = rnnTrainableWeightGradients2;
          v165 = v333;
        }

        while (v155 != -1);
      }

      else
      {
        v165 = 0;
        v209 = 0;
        v164 = v160;
      }

      isBidirectional4 = [v11 isBidirectional];
      v211 = v339;
      v212 = v306;
      if (isBidirectional4)
      {
        v333 = v165;
        v213 = batchSize;
        v214 = unsignedIntegerValue;
        v215 = batchSizePerSequenceStep;
        v338 = createMatrices(v83, batchSize, unsignedIntegerValue, unsignedIntegerValue, batchSizePerSequenceStep, 1, v310);
        v216 = v315;
        v334 = createMatrices(v83, v213, v315, v309, v215, 1, v337);
        rnnBuffers5 = [v11 rnnBuffers];
        v218 = [rnnBuffers5 objectAtIndexedSubscript:5];
        rnnTrainableWeightGradients2 = createMatrices(v83, v213, v214, v214, v215, 1, v218);

        v331 = &v299;
        v220 = MEMORY[0x28223BE20](v219);
        v222 = &v299 - ((v221 + 15) & 0xFFFFFFFFFFFFFFF0);
        v223 = MEMORY[0x28223BE20](v220);
        v225 = &v299 - v224;
        MEMORY[0x28223BE20](v223);
        v227 = &v299 - v226;
        if (v83)
        {
          v228 = 0;
          v229 = 4 * v214;
          v230 = (v83 + 1) & 0xFFFFFFFFFFFFFFFELL;
          v231 = vdupq_n_s64(v83 - 1);
          v232 = 4 * v214 * (v83 - 1);
          v233 = 8 * v214;
          v234 = v232;
          v235 = v305;
          v236 = v309;
          do
          {
            v237 = vmovn_s64(vcgeq_u64(v231, v235));
            if (v237.i8[0])
            {
              *&v222[8 * v228] = v234;
            }

            if (v237.i8[4])
            {
              *&v222[8 * v228 + 8] = v229 * (v83 + (v228 ^ 0xFFFFFFFFFFFFFFFELL));
            }

            v228 += 2;
            v235 = vaddq_s64(v235, vdupq_n_s64(2uLL));
            v234 -= v233;
          }

          while (v230 != v228);
          v238 = 0;
          v239 = 4 * v216 * (v83 - 1) + 4 * v236;
          v240 = v305;
          do
          {
            v241 = vmovn_s64(vcgeq_u64(v231, v240));
            if (v241.i8[0])
            {
              *&v225[8 * v238] = v239;
            }

            if (v241.i8[4])
            {
              *&v225[8 * v238 + 8] = 4 * (v236 + (v83 + (v238 ^ 0x3FFFFFFFFFFFFFFELL)) * v216);
            }

            v238 += 2;
            v240 = vaddq_s64(v240, vdupq_n_s64(2uLL));
            v239 -= 8 * v216;
          }

          while (v230 != v238);
          v242 = 0;
          v243 = v305;
          do
          {
            v244 = vmovn_s64(vcgeq_u64(v231, v243));
            if (v244.i8[0])
            {
              *&v227[8 * v242] = v232;
            }

            if (v244.i8[4])
            {
              *&v227[8 * v242 + 8] = v229 * (v83 + (v242 ^ 0xFFFFFFFFFFFFFFFELL));
            }

            v242 += 2;
            v243 = vaddq_s64(v243, vdupq_n_s64(2uLL));
            v232 -= v233;
          }

          while (v230 != v242);
        }

        v321 = [gradientKernel objectAtIndexedSubscript:1];
        v245 = v330;
        rnnTrainableWeightGradients2 = [v330 rnnTrainableWeightGradients];
        v246 = [rnnTrainableWeightGradients2 objectAtIndexedSubscript:1];
        rnnTrainableStates2 = [v245 rnnTrainableStates];
        v247 = [rnnTrainableStates2 objectAtIndexedSubscript:1];
        rnnTrainableWeights2 = [v245 rnnTrainableWeights];
        v249 = [rnnTrainableWeights2 objectAtIndexedSubscript:1];
        v298 = v227;
        v250 = v321;
        v251 = v225;
        v252 = v245;
        [v321 encodeGradientSequenceToCommandBuffer:v328 forwardSources:v338 forwardSourceOffsets:v222 sourceGradients:v334 sourceGradientOffsets:v251 destinationGradients:rnnTrainableWeightGradients2 destinationOffsets:v298 weightGradients:v246 trainingStates:v247 recurrentInputState:0 recurrentOutputStates:0 weights:v249];

        biDirectionalGradientResult = [v245 biDirectionalGradientResult];
        if ([v245 batchFirst])
        {
          v83 = unsignedIntegerValue2;
          if (v308 == 3)
          {
            v254 = [MEMORY[0x277CD7258] matrixDescriptorWithRows:batchSize columns:unsignedIntegerValue2 * unsignedIntegerValue rowBytes:4 * unsignedIntegerValue2 * unsignedIntegerValue dataType:268435488];
            v255 = objc_alloc(MEMORY[0x277CD7250]);
            v256 = [v255 initWithBuffer:v312 descriptor:v254];

            biDirectionalGradientResult = v256;
          }

          v211 = v339;
          v212 = v306;
        }

        else
        {
          v211 = v339;
          v212 = v306;
          v83 = unsignedIntegerValue2;
        }

        biDirectionalSumKernel = [v252 biDirectionalSumKernel];
        forwardTimeGradientResult = [v252 forwardTimeGradientResult];
        v341[0] = forwardTimeGradientResult;
        reverseTimeGradientResult = [v252 reverseTimeGradientResult];
        v341[1] = reverseTimeGradientResult;
        v263 = [MEMORY[0x277CBEA60] arrayWithObjects:v341 count:2];
        [biDirectionalSumKernel encodeToCommandBuffer:v328 sourceMatrices:v263 resultMatrix:biDirectionalGradientResult scaleVector:0 offsetVector:0 biasVector:0 startIndex:0];

        v11 = v330;
        v165 = v333;
      }

      v264 = [v11 batchFirst] ^ 1;
      if (v308 == 3)
      {
        LODWORD(v265) = v264;
      }

      else
      {
        LODWORD(v265) = 1;
      }

      if (v265 == 1 && [v11 batchFirst] && v307 == 4)
      {
        v320 = v164;
        v321 = v209;
        LODWORD(unsignedIntegerValue2) = 1;
        v333 = v165;
        rnnTrainableWeightGradients2 = objc_autoreleasePoolPush();
        v266 = objc_alloc(MEMORY[0x277CD75C0]);
        v267 = selfCopy;
        deviceList7 = [(MLCDeviceGPU *)selfCopy deviceList];
        v269 = [deviceList7 objectAtIndexedSubscript:v211];
        v270 = batchSize;
        v334 = [v266 initWithDevice:v269 count:batchSize];

        v271 = objc_alloc(MEMORY[0x277CD75B8]);
        deviceList8 = [(MLCDeviceGPU *)v267 deviceList];
        v273 = [deviceList8 objectAtIndexedSubscript:v211];
        v274 = v271;
        v275 = unsignedIntegerValue;
        rnnTrainableStates2 = [v274 initWithDevice:v273 copyRows:v83 copyColumns:unsignedIntegerValue sourcesAreTransposed:0 destinationsAreTransposed:1];

        v276 = [MEMORY[0x277CD7258] matrixDescriptorWithRows:v83 columns:v275 rowBytes:4 * v275 dataType:268435488];
        rnnTrainableWeightGradients2 = [MEMORY[0x277CD7258] matrixDescriptorWithRows:v275 columns:v83 rowBytes:4 * v83 dataType:268435488];
        v277 = v302;
        v278 = v211;
        v279 = 0x277CD7000uLL;
        if (v270)
        {
          v280 = 0;
          v281 = 0;
          v331 = 4 * v83 * v275;
          do
          {
            v282 = objc_alloc(*(v279 + 592));
            rnnBuffers6 = [v330 rnnBuffers];
            v284 = [rnnBuffers6 objectAtIndexedSubscript:3];
            v338 = [v282 initWithBuffer:v284 offset:v280 descriptor:v276];

            v285 = objc_alloc(*(v279 + 592));
            v286 = [v277 objectAtIndexedSubscript:0];
            deviceMemory7 = [v286 deviceMemory];
            [deviceMemory7 objectAtIndexedSubscript:v278];
            v288 = v279;
            v289 = v277;
            v290 = v278;
            v292 = v291 = v276;
            v293 = [v285 initWithBuffer:v292 offset:v280 descriptor:rnnTrainableWeightGradients2];

            v276 = v291;
            v278 = v290;
            v277 = v289;
            v279 = v288;

            v294 = v338;
            [v334 setCopyOperationAtIndex:v281 sourceMatrix:v338 destinationMatrix:v293 offsets:{0, 0}];

            ++v281;
            v280 += v331;
          }

          while (batchSize != v281);
        }

        v295 = rnnTrainableStates2;
        v265 = v334;
        [rnnTrainableStates2 encodeToCommandBuffer:v328 copyDescriptor:v334];

        objc_autoreleasePoolPop(rnnTrainableWeightGradients2);
        v211 = v278;
        v11 = v330;
        v212 = v306;
        v165 = v333;
        LOBYTE(v265) = unsignedIntegerValue2;
        v209 = v321;
        v164 = v320;
      }

      self = selfCopy;
      gradientTensorsCopy = v302;
      if (v265)
      {
        v10 = v211 + 1;
        if (v10 < [(MLCDeviceGPU *)selfCopy numDevicesToUse])
        {
          continue;
        }
      }

      break;
    }
  }

  v296 = *MEMORY[0x277D85DE8];
}

- (void)incrementReadCountForTensorDeviceMemory:(id)memory increment:(int64_t)increment
{
  memoryCopy = memory;
  if ([(MLCDeviceGPU *)self numDevicesToUse])
  {
    v6 = 0;
    do
    {
      v7 = [memoryCopy objectAtIndexedSubscript:v6];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v9 = [memoryCopy objectAtIndexedSubscript:v6];
        v10 = [v9 objectAtIndexedSubscript:0];
        objc_opt_class();
        v11 = objc_opt_isKindOfClass();

        if (v11)
        {
          v12 = [memoryCopy objectAtIndexedSubscript:v6];
          MPSImageBatchIncrementReadCount(v12, increment);
        }
      }

      ++v6;
    }

    while (v6 < [(MLCDeviceGPU *)self numDevicesToUse]);
  }
}

- (void)incrementReadCountForGradientState:(id)state increment:(int64_t)increment
{
  stateCopy = state;
  if ([(MLCDeviceGPU *)self numDevicesToUse])
  {
    v6 = 0;
    do
    {
      v7 = [stateCopy objectAtIndexedSubscript:v6];
      gradientState = [v7 gradientState];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
        gradientState2 = [v7 gradientState];
        MPSStateBatchIncrementReadCount(gradientState2, increment);
      }

      ++v6;
    }

    while (v6 < [(MLCDeviceGPU *)self numDevicesToUse]);
  }
}

- (void)sumSharedGradientsForConvolutionLayerTensorParameter:(id)parameter layerIndexForSummedGradients:(unint64_t)gradients
{
  parameterCopy = parameter;
  v6 = objc_autoreleasePoolPush();
  childLayers = [parameterCopy childLayers];
  v8 = [childLayers count];

  if (v8 != 1)
  {
    v67 = v6;
    childLayers2 = [parameterCopy childLayers];
    v69 = [childLayers2 objectAtIndexedSubscript:gradients];

    if ([(MLCDeviceGPU *)self numDevicesToUse])
    {
      v10 = 0;
      selfCopy = self;
      while (1)
      {
        deviceOps = [v69 deviceOps];
        v12 = [deviceOps objectAtIndexedSubscript:v10];

        deviceList = [(MLCDeviceGPU *)self deviceList];
        v14 = [deviceList objectAtIndexedSubscript:v10];

        gpuCommandBufferList = [(MLCDeviceGPU *)self gpuCommandBufferList];
        v71 = [gpuCommandBufferList objectAtIndexedSubscript:v10];

        objc_opt_class();
        LOBYTE(gpuCommandBufferList) = objc_opt_isKindOfClass();
        weights = [v69 weights];

        v74 = v12;
        v72 = v14;
        if ((gpuCommandBufferList & 1) == 0)
        {
          break;
        }

        isMPSGraph = [v12 isMPSGraph];
        gradientState = [v12 gradientState];
        if (weights != parameterCopy)
        {
          if (isMPSGraph)
          {
            v19 = [gradientState objectAtIndexedSubscript:1];
            goto LABEL_13;
          }

          parameterCopy = [gradientState objectAtIndexedSubscript:0];
          gradientForBiases = [parameterCopy gradientForBiases];
          goto LABEL_12;
        }

        v22 = [gradientState objectAtIndexedSubscript:0];
        v19 = v22;
        if ((isMPSGraph & 1) == 0)
        {
          gradientForWeights = [v22 gradientForWeights];

          v19 = gradientForWeights;
        }

LABEL_13:

        [MEMORY[0x277CD7258] matrixDescriptorWithRows:1 columns:objc_msgSend(v19 rowBytes:"length") >> 2 dataType:{objc_msgSend(v19, "length"), 268435488}];
        v75 = v73 = v19;
        v24 = [objc_alloc(MEMORY[0x277CD7250]) initWithBuffer:v19 descriptor:v75];
        v25 = objc_alloc(MEMORY[0x277CBEB18]);
        childLayers3 = [parameterCopy childLayers];
        v27 = [v25 initWithCapacity:{objc_msgSend(childLayers3, "count") + 1}];

        v70 = v24;
        [v27 addObject:v24];
        childLayers4 = [parameterCopy childLayers];
        v29 = [childLayers4 count];

        if (v29)
        {
          v30 = 0;
          v76 = weights;
          while (2)
          {
            childLayers5 = [parameterCopy childLayers];
            v32 = [childLayers5 objectAtIndexedSubscript:v30];

            if (gradients == v30 || ![v32 isTrainable])
            {
              goto LABEL_41;
            }

            deviceOps2 = [v32 deviceOps];
            v34 = [deviceOps2 objectAtIndexedSubscript:v10];

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v35 = v32;
              if (weights == parameterCopy)
              {
                weightsParameter = [v35 weightsParameter];
                if (!weightsParameter)
                {
                  goto LABEL_35;
                }

                v51 = weightsParameter;
                weightsParameter2 = [v35 weightsParameter];
                isUpdatable = [weightsParameter2 isUpdatable];

                if (!isUpdatable)
                {
                  goto LABEL_35;
                }

                isMPSGraph2 = [v74 isMPSGraph];
                gradientState2 = [v34 gradientState];
                v55 = [gradientState2 objectAtIndexedSubscript:0];
                gradientForBiases2 = v55;
                if ((isMPSGraph2 & 1) == 0)
                {
                  gradientForWeights2 = [v55 gradientForWeights];

                  gradientForBiases2 = gradientForWeights2;
                }

LABEL_37:
              }

              else
              {
                biasesParameter = [v35 biasesParameter];
                if (biasesParameter)
                {
                  v37 = biasesParameter;
                  biasesParameter2 = [v35 biasesParameter];
                  isUpdatable2 = [biasesParameter2 isUpdatable];

                  if (isUpdatable2)
                  {
                    isMPSGraph3 = [v74 isMPSGraph];
                    gradientState3 = [v34 gradientState];
                    gradientState2 = gradientState3;
                    if (isMPSGraph3)
                    {
                      gradientForBiases2 = [gradientState3 objectAtIndexedSubscript:1];
                    }

                    else
                    {
                      v62 = [gradientState3 objectAtIndexedSubscript:0];
                      gradientForBiases2 = [v62 gradientForBiases];
                    }

                    goto LABEL_37;
                  }
                }

LABEL_35:
                gradientForBiases2 = 0;
              }

LABEL_38:

              weights = v76;
              if (gradientForBiases2)
              {
                v63 = [objc_alloc(MEMORY[0x277CD7250]) initWithBuffer:gradientForBiases2 descriptor:v75];
                [v27 addObject:v63];
              }
            }

            else
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v44 = v32;
                if (weights == parameterCopy)
                {
                  weightsParameter3 = [v44 weightsParameter];
                  if (!weightsParameter3)
                  {
                    goto LABEL_35;
                  }

                  v58 = weightsParameter3;
                  weightsParameter4 = [v44 weightsParameter];
                  isUpdatable3 = [weightsParameter4 isUpdatable];

                  v49 = 0;
                  if ((isUpdatable3 & 1) == 0)
                  {
                    gradientForBiases2 = 0;
                    self = selfCopy;
                    goto LABEL_38;
                  }
                }

                else
                {
                  biasesParameter3 = [v44 biasesParameter];
                  if (!biasesParameter3)
                  {
                    goto LABEL_35;
                  }

                  v46 = biasesParameter3;
                  biasesParameter4 = [v44 biasesParameter];
                  isUpdatable4 = [biasesParameter4 isUpdatable];

                  if (!isUpdatable4)
                  {
                    goto LABEL_35;
                  }

                  v49 = 1;
                }

                gradientState2 = [v34 gradientState];
                v61 = [gradientState2 objectAtIndexedSubscript:v49];
                gradientForBiases2 = [v61 data];

                self = selfCopy;
                goto LABEL_37;
              }
            }

LABEL_41:
            ++v30;
            childLayers6 = [parameterCopy childLayers];
            v65 = [childLayers6 count];

            if (v30 >= v65)
            {
              break;
            }

            continue;
          }
        }

        if ([v27 count] > 1)
        {
          v66 = [objc_alloc(MEMORY[0x277CD76F8]) initWithDevice:v72 count:objc_msgSend(v27 rows:"count") columns:1 transpose:{objc_msgSend(v73, "length") >> 2, 0}];
          [v66 encodeToCommandBuffer:v71 sourceMatrices:v27 resultMatrix:v70 scaleVector:0 offsetVector:0 biasVector:0 startIndex:0];
        }

        if (++v10 >= [(MLCDeviceGPU *)self numDevicesToUse])
        {
          goto LABEL_47;
        }
      }

      gradientState = [v12 gradientState];
      parameterCopy = [gradientState objectAtIndexedSubscript:weights != parameterCopy];
      gradientForBiases = [parameterCopy data];
LABEL_12:
      v19 = gradientForBiases;

      goto LABEL_13;
    }

LABEL_47:

    v6 = v67;
  }

  objc_autoreleasePoolPop(v6);
}

- (id)getGradientBufferForNormalizationState:(id)state layer:(id)layer isBetaTensor:(BOOL)tensor
{
  tensorCopy = tensor;
  stateCopy = state;
  layerCopy = layer;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v9 = layerCopy;
    v10 = v9;
    if (tensorCopy)
    {
      betaParameter = [v9 betaParameter];
      if (betaParameter)
      {
        betaParameter2 = [v10 betaParameter];
        isUpdatable = [betaParameter2 isUpdatable];

        if (isUpdatable)
        {
          normalizationBetaGradient = [stateCopy normalizationBetaGradient];
LABEL_12:
          betaParameter = normalizationBetaGradient;
          goto LABEL_14;
        }

        goto LABEL_13;
      }
    }

    else
    {
      betaParameter = [v9 gammaParameter];
      if (betaParameter)
      {
        gammaParameter = [v10 gammaParameter];
        isUpdatable2 = [gammaParameter isUpdatable];

        if (isUpdatable2)
        {
          normalizationBetaGradient = [stateCopy normalizationGammaGradient];
          goto LABEL_12;
        }

LABEL_13:
        betaParameter = 0;
      }
    }

LABEL_14:

    goto LABEL_15;
  }

  betaParameter = 0;
LABEL_15:

  return betaParameter;
}

- (void)sumSharedGradientsForNormalizationLayerTensorParameter:(id)parameter layerIndexForSummedGradients:(unint64_t)gradients isBetaTensor:(BOOL)tensor
{
  tensorCopy = tensor;
  parameterCopy = parameter;
  v7 = objc_autoreleasePoolPush();
  childLayers = [parameterCopy childLayers];
  v9 = [childLayers count];

  if (v9 != 1)
  {
    v36 = v7;
    childLayers2 = [parameterCopy childLayers];
    v42 = [childLayers2 objectAtIndexedSubscript:gradients];

    if ([(MLCDeviceGPU *)self numDevicesToUse])
    {
      v11 = 0;
      do
      {
        deviceOps = [v42 deviceOps];
        v13 = [deviceOps objectAtIndexedSubscript:v11];

        deviceList = [(MLCDeviceGPU *)self deviceList];
        v15 = [deviceList objectAtIndexedSubscript:v11];

        gpuCommandBufferList = [(MLCDeviceGPU *)self gpuCommandBufferList];
        v17 = [gpuCommandBufferList objectAtIndexedSubscript:v11];

        v18 = [(MLCDeviceGPU *)self getGradientBufferForNormalizationState:v13 layer:v42 isBetaTensor:tensorCopy];
        v19 = v18;
        if (v18)
        {
          v38 = v17;
          v39 = v15;
          v40 = v13;
          v41 = [MEMORY[0x277CD7258] matrixDescriptorWithRows:1 columns:objc_msgSend(v18 rowBytes:"length") >> 2 dataType:{objc_msgSend(v18, "length"), 268435488}];
          v20 = [objc_alloc(MEMORY[0x277CD7250]) initWithBuffer:v19 descriptor:v41];
          v21 = objc_alloc(MEMORY[0x277CBEB18]);
          childLayers3 = [parameterCopy childLayers];
          v23 = [v21 initWithCapacity:{objc_msgSend(childLayers3, "count") + 1}];

          v37 = v20;
          [v23 addObject:v20];
          childLayers4 = [parameterCopy childLayers];
          v25 = [childLayers4 count];

          if (v25)
          {
            v26 = 0;
            do
            {
              childLayers5 = [parameterCopy childLayers];
              v28 = [childLayers5 objectAtIndexedSubscript:v26];

              if (gradients != v26 && [v28 isTrainable])
              {
                deviceOps2 = [v28 deviceOps];
                v30 = [deviceOps2 objectAtIndexedSubscript:v11];

                v31 = [(MLCDeviceGPU *)self getGradientBufferForNormalizationState:v30 layer:v42 isBetaTensor:tensorCopy];
                if (v31)
                {
                  v32 = [objc_alloc(MEMORY[0x277CD7250]) initWithBuffer:v31 descriptor:v41];
                  [v23 addObject:v32];
                }
              }

              ++v26;
              childLayers6 = [parameterCopy childLayers];
              v34 = [childLayers6 count];
            }

            while (v26 < v34);
          }

          v17 = v38;
          v15 = v39;
          if ([v23 count] > 1)
          {
            v35 = [objc_alloc(MEMORY[0x277CD76F8]) initWithDevice:v39 count:objc_msgSend(v23 rows:"count") columns:1 transpose:{objc_msgSend(v19, "length") >> 2, 0}];
            [v35 encodeToCommandBuffer:v38 sourceMatrices:v23 resultMatrix:v37 scaleVector:0 offsetVector:0 biasVector:0 startIndex:0];
          }

          v13 = v40;
        }

        ++v11;
      }

      while (v11 < [(MLCDeviceGPU *)self numDevicesToUse]);
    }

    v7 = v36;
  }

  objc_autoreleasePoolPop(v7);
}

- (void)updateConvolutionLayer:(id)layer optimizer:(id)optimizer weightsParameter:(id)parameter biasesParameter:(id)biasesParameter arrayOfParams:(id)params
{
  v80[2] = *MEMORY[0x277D85DE8];
  layerCopy = layer;
  optimizerCopy = optimizer;
  parameterCopy = parameter;
  biasesParameterCopy = biasesParameter;
  paramsCopy = params;
  if ([(MLCDeviceGPU *)self numDevicesToUse])
  {
    v14 = 0;
    v58 = layerCopy;
    selfCopy = self;
    v67 = biasesParameterCopy;
    do
    {
      v15 = [layerCopy objectAtIndexedSubscript:v14];
      if (-[MLCDeviceGPU numDevicesToUse](self, "numDevicesToUse") == 2 && [v15 multiGPUReduction] == 1)
      {
        isMPSGraph = [v15 isMPSGraph];
        gradientState = [v15 gradientState];
        v18 = gradientState;
        if ((isMPSGraph & 1) == 0)
        {
          v19 = [gradientState objectAtIndexedSubscript:0];

          gradientForWeights = [v19 gradientForWeights];
          v80[0] = gradientForWeights;
          gradientForBiases = [v19 gradientForBiases];
          v80[1] = gradientForBiases;
          v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v80 count:2];
        }

        [(MLCDeviceGPU *)self allReduceOverXGMI:layerCopy deviceIndex:v14 stateBuffers:v18];
      }

      gpuCommandBufferList = [(MLCDeviceGPU *)self gpuCommandBufferList];
      v23 = [gpuCommandBufferList objectAtIndexedSubscript:v14];

      v74 = v23;
      if ([v15 isMPSGraph])
      {
        v24 = 0;
        v72 = 0;
      }

      else
      {
        forwardKernel = [v15 forwardKernel];
        v24 = [forwardKernel exportWeightsAndBiasesWithCommandBuffer:v23 resultStateCanBeTemporary:0];

        gradientState2 = [v15 gradientState];
        v72 = [gradientState2 objectAtIndexedSubscript:0];

        [v15 setExportableState:v24];
      }

      momentumVectors = [v15 momentumVectors];
      velocityVectors = [v15 velocityVectors];
      centerWeightVectors = [v15 centerWeightVectors];
      v73 = deviceParameterWithVectors(momentumVectors, velocityVectors, centerWeightVectors);

      if ([parameterCopy isUpdatable])
      {
        v30 = [optimizerCopy objectAtIndexedSubscript:v14];
        isMPSGraph2 = [v15 isMPSGraph];
        if (isMPSGraph2)
        {
          exportableState = [v15 exportableState];
          weights = [exportableState objectAtIndexedSubscript:0];
          v61 = weights;
        }

        else
        {
          weights = [v24 weights];
          v65 = weights;
        }

        isMPSGraph3 = [v15 isMPSGraph];
        if (isMPSGraph3)
        {
          gradientState3 = [v15 gradientState];
          gradientForWeights2 = [gradientState3 objectAtIndexedSubscript:0];
          v62 = gradientForWeights2;
        }

        else
        {
          gradientForWeights2 = [v72 gradientForWeights];
          v66 = gradientForWeights2;
        }

        if ([v15 isMPSGraph])
        {
          exportableState2 = [v15 exportableState];
          v36 = [exportableState2 objectAtIndexedSubscript:0];
          [(MLCDeviceGPU *)selfCopy updateWithOptimizer:v30 arrayOfParams:paramsCopy commandBuffer:v74 deviceParameter:v73 source:weights gradient:gradientForWeights2 result:v36 momentumIndex:0];

          layerCopy = v58;
        }

        else
        {
          exportableState2 = [v24 weights];
          [(MLCDeviceGPU *)selfCopy updateWithOptimizer:v30 arrayOfParams:paramsCopy commandBuffer:v74 deviceParameter:v73 source:weights gradient:gradientForWeights2 result:exportableState2 momentumIndex:0];
        }

        v37 = v66;
        if (isMPSGraph3)
        {

          v37 = gradientState3;
        }

        v38 = v65;
        biasesParameterCopy = v67;
        if (isMPSGraph2)
        {

          v38 = exportableState;
        }

        self = selfCopy;
      }

      if (biasesParameterCopy && [biasesParameterCopy isUpdatable])
      {
        v39 = [optimizerCopy objectAtIndexedSubscript:v14];
        isMPSGraph4 = [v15 isMPSGraph];
        if (isMPSGraph4)
        {
          exportableState3 = [v15 exportableState];
          biases = [exportableState3 objectAtIndexedSubscript:1];
          v54 = biases;
        }

        else
        {
          biases = [v24 biases];
          v59 = biases;
        }

        isMPSGraph5 = [v15 isMPSGraph];
        if (isMPSGraph5)
        {
          gradientState4 = [v15 gradientState];
          gradientForBiases2 = [gradientState4 objectAtIndexedSubscript:1];
          v55 = gradientForBiases2;
        }

        else
        {
          gradientForBiases2 = [v72 gradientForBiases];
          v60 = gradientForBiases2;
        }

        if ([v15 isMPSGraph])
        {
          exportableState4 = [v15 exportableState];
          v45 = [exportableState4 objectAtIndexedSubscript:1];
          [(MLCDeviceGPU *)selfCopy updateWithOptimizer:v39 arrayOfParams:paramsCopy commandBuffer:v74 deviceParameter:v73 source:biases gradient:gradientForBiases2 result:v45 momentumIndex:1];

          layerCopy = v58;
        }

        else
        {
          exportableState4 = [v24 biases];
          [(MLCDeviceGPU *)selfCopy updateWithOptimizer:v39 arrayOfParams:paramsCopy commandBuffer:v74 deviceParameter:v73 source:biases gradient:gradientForBiases2 result:exportableState4 momentumIndex:1];
        }

        v46 = v60;
        if (isMPSGraph5)
        {

          v46 = gradientState4;
        }

        v47 = v59;
        biasesParameterCopy = v67;
        if (isMPSGraph4)
        {

          v47 = exportableState3;
        }

        self = selfCopy;
      }

      if (([v15 isMPSGraph] & 1) == 0)
      {
        v77 = 0u;
        v78 = 0u;
        v75 = 0u;
        v76 = 0u;
        gradientState5 = [v15 gradientState];
        v49 = [gradientState5 countByEnumeratingWithState:&v75 objects:v79 count:16];
        if (v49)
        {
          v50 = v49;
          v51 = *v76;
          do
          {
            for (i = 0; i != v50; ++i)
            {
              if (*v76 != v51)
              {
                objc_enumerationMutation(gradientState5);
              }

              [*(*(&v75 + 1) + 8 * i) setReadCount:0];
            }

            v50 = [gradientState5 countByEnumeratingWithState:&v75 objects:v79 count:16];
          }

          while (v50);
        }
      }

      ++v14;
    }

    while (v14 < [(MLCDeviceGPU *)self numDevicesToUse]);
  }

  if (!paramsCopy)
  {
    [(MLCDeviceGPU *)self restoreConvolutionParamsWithDeviceOps:layerCopy];
  }

  v53 = *MEMORY[0x277D85DE8];
}

- (void)restoreConvolutionParamsWithDeviceOps:(id)ops
{
  opsCopy = ops;
  if ([(MLCDeviceGPU *)self numDevicesToUse])
  {
    v4 = 0;
    do
    {
      v5 = [opsCopy objectAtIndexedSubscript:v4];
      gpuCommandBufferList = [(MLCDeviceGPU *)self gpuCommandBufferList];
      v7 = [gpuCommandBufferList objectAtIndexedSubscript:v4];

      if (([v5 isMPSGraph] & 1) == 0)
      {
        v8 = objc_autoreleasePoolPush();
        forwardKernel = [v5 forwardKernel];
        exportableState = [v5 exportableState];
        [forwardKernel reloadWeightsAndBiasesWithCommandBuffer:v7 state:exportableState];

        gradientKernel = [v5 gradientKernel];
        exportableState2 = [v5 exportableState];
        [gradientKernel reloadWeightsAndBiasesWithCommandBuffer:v7 state:exportableState2];

        [v5 setExportableState:0];
        objc_autoreleasePoolPop(v8);
      }

      ++v4;
    }

    while (v4 < [(MLCDeviceGPU *)self numDevicesToUse]);
  }
}

- (void)updateFullyConnectedLayer:(id)layer optimizer:(id)optimizer weightsParameter:(id)parameter biasesParameter:(id)biasesParameter arrayOfParams:(id)params
{
  v69[1] = *MEMORY[0x277D85DE8];
  layerCopy = layer;
  optimizerCopy = optimizer;
  parameterCopy = parameter;
  biasesParameterCopy = biasesParameter;
  paramsCopy = params;
  if ([(MLCDeviceGPU *)self numDevicesToUse])
  {
    v13 = 0;
    selfCopy = self;
    v54 = biasesParameterCopy;
    do
    {
      v14 = [layerCopy objectAtIndexedSubscript:v13];
      if (-[MLCDeviceGPU numDevicesToUse](self, "numDevicesToUse") == 2 && [v14 multiGPUReduction] == 1)
      {
        v15 = v13;
        gradientState = [v14 gradientState];
        v17 = [gradientState objectAtIndexedSubscript:0];
        data = [v17 data];
        v69[0] = data;
        v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v69 count:1];
        v20 = [v19 mutableCopy];

        gradientState2 = [v14 gradientState];
        v22 = [gradientState2 count];

        if (v22 >= 2)
        {
          gradientState3 = [v14 gradientState];
          v24 = [gradientState3 objectAtIndexedSubscript:1];
          data2 = [v24 data];
          [v20 setObject:data2 atIndexedSubscript:1];
        }

        v26 = [v20 copy];
        v13 = v15;
        [(MLCDeviceGPU *)self allReduceOverXGMI:layerCopy deviceIndex:v15 stateBuffers:v26];
      }

      gpuCommandBufferList = [(MLCDeviceGPU *)self gpuCommandBufferList];
      v63 = [gpuCommandBufferList objectAtIndexedSubscript:v13];

      momentumVectors = [v14 momentumVectors];
      velocityVectors = [v14 velocityVectors];
      centerWeightVectors = [v14 centerWeightVectors];
      v62 = deviceParameterWithVectors(momentumVectors, velocityVectors, centerWeightVectors);

      if ([parameterCopy isUpdatable])
      {
        v31 = [optimizerCopy objectAtIndexedSubscript:v13];
        exportableState = [v14 exportableState];
        v32 = [exportableState objectAtIndexedSubscript:0];
        gradientState4 = [v14 gradientState];
        v34 = [gradientState4 objectAtIndexedSubscript:0];
        data3 = [v34 data];
        [v14 exportableState];
        v37 = v36 = v13;
        v38 = [v37 objectAtIndexedSubscript:0];
        [(MLCDeviceGPU *)selfCopy updateWithOptimizer:v31 arrayOfParams:paramsCopy commandBuffer:v63 deviceParameter:v62 source:v32 gradient:data3 result:v38 momentumIndex:0];

        self = selfCopy;
        v13 = v36;

        biasesParameterCopy = v54;
      }

      if (biasesParameterCopy && [biasesParameterCopy isUpdatable])
      {
        v39 = [optimizerCopy objectAtIndexedSubscript:v13];
        exportableState2 = [v14 exportableState];
        v40 = [exportableState2 objectAtIndexedSubscript:1];
        gradientState5 = [v14 gradientState];
        v42 = [gradientState5 objectAtIndexedSubscript:1];
        data4 = [v42 data];
        [v14 exportableState];
        v45 = v44 = v13;
        v46 = [v45 objectAtIndexedSubscript:1];
        [(MLCDeviceGPU *)selfCopy updateWithOptimizer:v39 arrayOfParams:paramsCopy commandBuffer:v63 deviceParameter:v62 source:v40 gradient:data4 result:v46 momentumIndex:1];

        self = selfCopy;
        v13 = v44;

        biasesParameterCopy = v54;
      }

      v66 = 0u;
      v67 = 0u;
      v64 = 0u;
      v65 = 0u;
      gradientState6 = [v14 gradientState];
      v48 = [gradientState6 countByEnumeratingWithState:&v64 objects:v68 count:16];
      if (v48)
      {
        v49 = v48;
        v50 = *v65;
        do
        {
          v51 = 0;
          do
          {
            if (*v65 != v50)
            {
              objc_enumerationMutation(gradientState6);
            }

            v52 = *(*(&v64 + 1) + 8 * v51);
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) != 0 && [v52 readCount])
            {
              [v52 setReadCount:0];
            }

            ++v51;
          }

          while (v49 != v51);
          v49 = [gradientState6 countByEnumeratingWithState:&v64 objects:v68 count:16];
        }

        while (v49);
      }

      ++v13;
    }

    while (v13 < [(MLCDeviceGPU *)self numDevicesToUse]);
  }

  v53 = *MEMORY[0x277D85DE8];
}

- (void)updateLayerNormalizationLayer:(id)layer optimizer:(id)optimizer betaParameter:(id)parameter gammaParameter:(id)gammaParameter arrayOfParams:(id)params
{
  v64[2] = *MEMORY[0x277D85DE8];
  layerCopy = layer;
  optimizerCopy = optimizer;
  parameterCopy = parameter;
  gammaParameterCopy = gammaParameter;
  paramsCopy = params;
  if ([(MLCDeviceGPU *)self numDevicesToUse])
  {
    v12 = 0;
    do
    {
      v13 = [layerCopy objectAtIndexedSubscript:v12];
      if ([(MLCDeviceGPU *)self numDevicesToUse]== 2)
      {
        normalizationMultiGPUChildOps = [v13 normalizationMultiGPUChildOps];
        multiGPUReduction = [normalizationMultiGPUChildOps multiGPUReduction];

        if (multiGPUReduction == 1)
        {
          v55 = [layerCopy objectAtIndexedSubscript:0];
          normalizationMultiGPUChildOps2 = [v55 normalizationMultiGPUChildOps];
          v64[0] = normalizationMultiGPUChildOps2;
          v17 = [layerCopy objectAtIndexedSubscript:1];
          normalizationMultiGPUChildOps3 = [v17 normalizationMultiGPUChildOps];
          v64[1] = normalizationMultiGPUChildOps3;
          v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v64 count:2];
          normalizationGammaGradient = [v13 normalizationGammaGradient];
          v63[0] = normalizationGammaGradient;
          normalizationBetaGradient = [v13 normalizationBetaGradient];
          v63[1] = normalizationBetaGradient;
          v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v63 count:2];
          [(MLCDeviceGPU *)self allReduceOverXGMI:v19 deviceIndex:v12 stateBuffers:v22];
        }
      }

      gpuCommandBufferList = [(MLCDeviceGPU *)self gpuCommandBufferList];
      v24 = [gpuCommandBufferList objectAtIndexedSubscript:v12];

      exportableState = [v13 exportableState];
      momentumVectors = [v13 momentumVectors];
      velocityVectors = [v13 velocityVectors];
      centerWeightVectors = [v13 centerWeightVectors];
      v29 = deviceParameterWithVectors(momentumVectors, velocityVectors, centerWeightVectors);

      normalizationGammaGradient2 = [v13 normalizationGammaGradient];
      if (normalizationGammaGradient2)
      {
        v31 = normalizationGammaGradient2;
        isUpdatable = [gammaParameterCopy isUpdatable];

        if (isUpdatable)
        {
          normalizationGammaGradient3 = [v13 normalizationGammaGradient];
          if ([(MLCDeviceGPU *)self numDevicesToUse]== 2)
          {
            normalizationMultiGPUChildOps4 = [v13 normalizationMultiGPUChildOps];
            multiGPUReduction2 = [normalizationMultiGPUChildOps4 multiGPUReduction];

            if (multiGPUReduction2 == 1)
            {
              normalizationMultiGPUChildOps5 = [v13 normalizationMultiGPUChildOps];
              allReducedGradientMatrices = [normalizationMultiGPUChildOps5 allReducedGradientMatrices];
              v38 = [allReducedGradientMatrices objectAtIndexedSubscript:0];
              data = [v38 data];

              normalizationGammaGradient3 = data;
            }
          }

          v39 = [optimizerCopy objectAtIndexedSubscript:v12];
          gamma = [exportableState gamma];
          gamma2 = [exportableState gamma];
          [(MLCDeviceGPU *)self updateWithOptimizer:v39 arrayOfParams:paramsCopy commandBuffer:v24 deviceParameter:v29 source:gamma gradient:normalizationGammaGradient3 result:gamma2 momentumIndex:0];
        }
      }

      normalizationBetaGradient2 = [v13 normalizationBetaGradient];
      if (normalizationBetaGradient2)
      {
        v43 = normalizationBetaGradient2;
        isUpdatable2 = [parameterCopy isUpdatable];

        if (isUpdatable2)
        {
          normalizationBetaGradient3 = [v13 normalizationBetaGradient];
          if ([(MLCDeviceGPU *)self numDevicesToUse]== 2)
          {
            normalizationMultiGPUChildOps6 = [v13 normalizationMultiGPUChildOps];
            multiGPUReduction3 = [normalizationMultiGPUChildOps6 multiGPUReduction];

            if (multiGPUReduction3 == 1)
            {
              normalizationMultiGPUChildOps7 = [v13 normalizationMultiGPUChildOps];
              allReducedGradientMatrices2 = [normalizationMultiGPUChildOps7 allReducedGradientMatrices];
              v50 = [allReducedGradientMatrices2 objectAtIndexedSubscript:1];
              data2 = [v50 data];

              normalizationBetaGradient3 = data2;
            }
          }

          v51 = [optimizerCopy objectAtIndexedSubscript:v12];
          beta = [exportableState beta];
          beta2 = [exportableState beta];
          [(MLCDeviceGPU *)self updateWithOptimizer:v51 arrayOfParams:paramsCopy commandBuffer:v24 deviceParameter:v29 source:beta gradient:normalizationBetaGradient3 result:beta2 momentumIndex:1];
        }
      }

      ++v12;
    }

    while (v12 < [(MLCDeviceGPU *)self numDevicesToUse]);
  }

  v54 = *MEMORY[0x277D85DE8];
}

- (void)updateEmbeddingLayer:(id)layer weightsParameter:(id)parameter optimizer:(id)optimizer arrayOfParams:(id)params
{
  v40[1] = *MEMORY[0x277D85DE8];
  layerCopy = layer;
  parameterCopy = parameter;
  optimizerCopy = optimizer;
  paramsCopy = params;
  if ([parameterCopy isUpdatable])
  {
    v33 = parameterCopy;
    tensor = [parameterCopy tensor];
    if ([(MLCDeviceGPU *)self numDevicesToUse])
    {
      v12 = 0;
      selfCopy = self;
      v35 = layerCopy;
      do
      {
        v13 = [layerCopy objectAtIndexedSubscript:v12];
        if (-[MLCDeviceGPU numDevicesToUse](self, "numDevicesToUse") == 2 && [v13 multiGPUReduction] == 1)
        {
          gradientForWeights = [v13 gradientForWeights];
          v40[0] = gradientForWeights;
          v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:1];
          [(MLCDeviceGPU *)self allReduceOverXGMI:layerCopy deviceIndex:v12 stateBuffers:v15];
        }

        gpuCommandBufferList = [(MLCDeviceGPU *)self gpuCommandBufferList];
        v17 = [gpuCommandBufferList objectAtIndexedSubscript:v12];

        momentumVectors = [v13 momentumVectors];
        velocityVectors = [v13 velocityVectors];
        centerWeightVectors = [v13 centerWeightVectors];
        v21 = deviceParameterWithVectors(momentumVectors, velocityVectors, centerWeightVectors);

        gradientForWeights2 = [v13 gradientForWeights];

        if (gradientForWeights2)
        {
          gradientForWeights3 = [v13 gradientForWeights];
          if (-[MLCDeviceGPU numDevicesToUse](self, "numDevicesToUse") == 2 && [v13 multiGPUReduction] == 1)
          {
            allReducedGradientMatrices = [v13 allReducedGradientMatrices];
            v25 = [allReducedGradientMatrices objectAtIndexedSubscript:0];
            data = [v25 data];

            v27 = data;
          }

          else
          {
            v27 = gradientForWeights3;
          }

          v28 = [optimizerCopy objectAtIndexedSubscript:v12];
          deviceMemory = [tensor deviceMemory];
          v29 = [deviceMemory objectAtIndexedSubscript:v12];
          deviceMemory2 = [tensor deviceMemory];
          v31 = [deviceMemory2 objectAtIndexedSubscript:v12];
          self = selfCopy;
          [(MLCDeviceGPU *)selfCopy updateWithOptimizer:v28 arrayOfParams:paramsCopy commandBuffer:v17 deviceParameter:v21 source:v29 gradient:v27 result:v31 momentumIndex:0];

          layerCopy = v35;
        }

        ++v12;
      }

      while (v12 < [(MLCDeviceGPU *)self numDevicesToUse]);
    }

    parameterCopy = v33;
  }

  v32 = *MEMORY[0x277D85DE8];
}

- (void)saveOrRestoreTempMatrixDisableUpdates:(id)updates commandBuffer:(id)buffer auxiliaryWeightsMemory:(id)memory auxiliaryMomentumMemory:(id)momentumMemory auxiliaryVelocityMemory:(id)velocityMemory auxiliaryCenterWeightMemory:(id)weightMemory deviceNumber:(unint64_t)number kernelNumber:(unint64_t)self0 mlcIndex:(unint64_t)self1 auxIndex:(unint64_t)self2 numOptimizerData:(unint64_t)self3 saveToAux:(BOOL)self4 isInputWeight:(BOOL)self5 isHiddenWeight:(BOOL)self6 isBias:(BOOL)self7
{
  updatesCopy = updates;
  bufferCopy = buffer;
  memoryCopy = memory;
  momentumMemoryCopy = momentumMemory;
  velocityMemoryCopy = velocityMemory;
  weightMemoryCopy = weightMemory;
  gradientKernel = [updatesCopy gradientKernel];
  rnnTrainableWeights = [updatesCopy rnnTrainableWeights];
  rnnMomentumMatrices = [updatesCopy rnnMomentumMatrices];
  rnnVelocityMatrices = [updatesCopy rnnVelocityMatrices];
  rnnCenterWeightMatrices = [updatesCopy rnnCenterWeightMatrices];
  v55 = rnnTrainableWeights;
  v59 = [rnnTrainableWeights objectAtIndexedSubscript:kernelNumber];
  v54 = rnnMomentumMatrices;
  v61 = [rnnMomentumMatrices objectAtIndexedSubscript:kernelNumber];
  v53 = rnnVelocityMatrices;
  v58 = [rnnVelocityMatrices objectAtIndexedSubscript:kernelNumber];
  v52 = rnnCenterWeightMatrices;
  v56 = [rnnCenterWeightMatrices objectAtIndexedSubscript:kernelNumber];
  inputSize = [updatesCopy inputSize];
  hiddenSize = [updatesCopy hiddenSize];
  biasCopy = hiddenSize;
  v31 = index & 3;
  if (weight)
  {
    v32 = qword_278A69680[v31];
    v33 = v59;
    if ([updatesCopy numLayers] < 2 || (v34 = objc_msgSend(updatesCopy, "isBidirectional"), v35 = kernelNumber, v34))
    {
      if ([updatesCopy numLayers] < 2 || !objc_msgSend(updatesCopy, "isBidirectional"))
      {
        goto LABEL_32;
      }

      v35 = kernelNumber % [updatesCopy numLayers];
    }

    if (v35)
    {
      inputSize = biasCopy;
    }
  }

  else
  {
    if (hiddenWeight)
    {
      v36 = &unk_284BA5DB0;
      v37 = &unk_284BA5DE0;
      if (v31 != 2)
      {
        v37 = &unk_284BA5DF8;
      }

      if ((index & 3) != 0)
      {
        v36 = &unk_284BA5DC8;
      }

      if ((index & 3) <= 1)
      {
        v32 = v36;
      }

      else
      {
        v32 = v37;
      }

      inputSize = hiddenSize;
    }

    else
    {
      v38 = &unk_284BA5E10;
      v39 = &unk_284BA5E40;
      if (v31 != 2)
      {
        v39 = &unk_284BA5E58;
      }

      if ((index & 3) != 0)
      {
        v38 = &unk_284BA5E28;
      }

      if ((index & 3) > 1)
      {
        v38 = v39;
      }

      if (bias)
      {
        inputSize = hiddenSize;
      }

      else
      {
        inputSize = 0;
      }

      biasCopy = bias;
      if (bias)
      {
        v32 = v38;
      }

      else
      {
        v32 = &unk_284BA5D38;
      }
    }

    v33 = v59;
  }

LABEL_32:
  v67 = 0uLL;
  v68 = 0;
  v40 = [MEMORY[0x277CD7258] matrixDescriptorWithRows:biasCopy columns:inputSize rowBytes:4 * inputSize dataType:268435488];
  if (aux)
  {
    v41 = [MEMORY[0x277CD72B0] temporaryMatrixWithCommandBuffer:bufferCopy matrixDescriptor:v40];
    [memoryCopy addObject:v41];
  }

  else
  {
    v41 = [memoryCopy objectAtIndexedSubscript:auxIndex];
  }

  v42 = [gradientKernel objectAtIndexedSubscript:kernelNumber];
  v65 = 0uLL;
  v66 = 0;
  [v42 encodeCopyWeightsToCommandBuffer:bufferCopy weights:v33 matrixId:objc_msgSend(v32 matrix:"unsignedIntegerValue") copyFromWeightsToMatrix:v41 matrixOffset:{aux, &v65}];

  if (data)
  {
    if (aux)
    {
      v43 = [MEMORY[0x277CD72B0] temporaryMatrixWithCommandBuffer:bufferCopy matrixDescriptor:v40];
      [momentumMemoryCopy addObject:v43];
    }

    else
    {
      v43 = [momentumMemoryCopy objectAtIndexedSubscript:auxIndex];
    }

    v44 = [gradientKernel objectAtIndexedSubscript:kernelNumber];
    unsignedIntegerValue = [v32 unsignedIntegerValue];
    v65 = v67;
    v66 = v68;
    [v44 encodeCopyWeightsToCommandBuffer:bufferCopy weights:v61 matrixId:unsignedIntegerValue matrix:v43 copyFromWeightsToMatrix:aux matrixOffset:&v65];

    if (data != 1)
    {
      if (aux)
      {
        v46 = [MEMORY[0x277CD72B0] temporaryMatrixWithCommandBuffer:bufferCopy matrixDescriptor:v40];
        [velocityMemoryCopy addObject:v46];
      }

      else
      {
        v46 = [velocityMemoryCopy objectAtIndexedSubscript:auxIndex];
      }

      v47 = [gradientKernel objectAtIndexedSubscript:kernelNumber];
      unsignedIntegerValue2 = [v32 unsignedIntegerValue];
      v65 = v67;
      v66 = v68;
      [v47 encodeCopyWeightsToCommandBuffer:bufferCopy weights:v58 matrixId:unsignedIntegerValue2 matrix:v46 copyFromWeightsToMatrix:aux matrixOffset:&v65];

      if (data >= 3)
      {
        if (aux)
        {
          v49 = [MEMORY[0x277CD72B0] temporaryMatrixWithCommandBuffer:bufferCopy matrixDescriptor:v40];
          [weightMemoryCopy addObject:v49];
        }

        else
        {
          v49 = [weightMemoryCopy objectAtIndexedSubscript:auxIndex];
        }

        v50 = [gradientKernel objectAtIndexedSubscript:kernelNumber];
        unsignedIntegerValue3 = [v32 unsignedIntegerValue];
        v65 = v67;
        v66 = v68;
        [v50 encodeCopyWeightsToCommandBuffer:bufferCopy weights:v56 matrixId:unsignedIntegerValue3 matrix:v49 copyFromWeightsToMatrix:aux matrixOffset:&v65];
      }

      v33 = v59;
    }
  }
}

- (void)updateRNNLayer:(id)layer optimizer:(id)optimizer inputWeightsParameter:(id)parameter hiddenWeightsParameter:(id)weightsParameter biasesParameter:(id)biasesParameter arrayOfParams:(id)params
{
  v135[2] = *MEMORY[0x277D85DE8];
  layerCopy = layer;
  optimizerCopy = optimizer;
  selfCopy = self;
  v119 = optimizerCopy;
  parameterCopy = parameter;
  weightsParameterCopy = weightsParameter;
  biasesParameterCopy = biasesParameter;
  paramsCopy = params;
  if ([(MLCDeviceGPU *)self numDevicesToUse])
  {
    v16 = 0;
    selfCopy2 = self;
    do
    {
      v17 = [layerCopy objectAtIndexedSubscript:v16];
      v130 = v16;
      v134 = v17;
      if ([(MLCDeviceGPU *)selfCopy numDevicesToUse]== 2)
      {
        lstmMultiGPUChildOps = [v17 lstmMultiGPUChildOps];
        multiGPUReduction = [lstmMultiGPUChildOps multiGPUReduction];

        if (multiGPUReduction == 1)
        {
          v20 = [MEMORY[0x277CBEBF8] mutableCopy];
          rnnTrainableWeightGradients = [v17 rnnTrainableWeightGradients];
          if ([rnnTrainableWeightGradients count])
          {
            v22 = 0;
            do
            {
              v23 = [rnnTrainableWeightGradients objectAtIndexedSubscript:v22];
              if ([v23 count])
              {
                v24 = 0;
                do
                {
                  v25 = [v23 objectAtIndexedSubscript:v24];
                  data = [v25 data];
                  [v20 addObject:data];

                  ++v24;
                }

                while (v24 < [v23 count]);
              }

              ++v22;
            }

            while (v22 < [rnnTrainableWeightGradients count]);
          }

          v131 = [layerCopy objectAtIndexedSubscript:0];
          lstmMultiGPUChildOps2 = [v131 lstmMultiGPUChildOps];
          v135[0] = lstmMultiGPUChildOps2;
          v28 = [layerCopy objectAtIndexedSubscript:1];
          lstmMultiGPUChildOps3 = [v28 lstmMultiGPUChildOps];
          v135[1] = lstmMultiGPUChildOps3;
          v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v135 count:2];
          v31 = [v30 copy];
          v32 = [v20 copy];
          [(MLCDeviceGPU *)selfCopy2 allReduceOverXGMI:v31 deviceIndex:v16 stateBuffers:v32];

          selfCopy = selfCopy2;
        }
      }

      gpuCommandBufferList = [(MLCDeviceGPU *)selfCopy gpuCommandBufferList];
      v129 = [gpuCommandBufferList objectAtIndexedSubscript:v16];

      gradientKernel = [v17 gradientKernel];
      v34 = [gradientKernel count];
      v35 = [parameterCopy objectAtIndexedSubscript:0];
      tensor = [v35 tensor];
      optimizerData = [tensor optimizerData];
      v126 = [optimizerData count];

      v38 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v34];
      [v17 setAuxiliaryWeightsMemory:v38];

      v39 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v34];
      [v17 setAuxiliaryMomentumMemory:v39];

      v40 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v34];
      [v17 setAuxiliaryVelocityMemory:v40];

      v41 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v34];
      [v17 setAuxiliaryCenterWeightMemory:v41];

      v42 = v17;
      v113 = v34;
      if (v34)
      {
        v43 = 0;
        do
        {
          v44 = MEMORY[0x277CBEBF8];
          v45 = [MEMORY[0x277CBEBF8] mutableCopy];
          auxiliaryWeightsMemory = [v42 auxiliaryWeightsMemory];
          [auxiliaryWeightsMemory setObject:v45 atIndexedSubscript:v43];

          v47 = [v44 mutableCopy];
          auxiliaryMomentumMemory = [v42 auxiliaryMomentumMemory];
          [auxiliaryMomentumMemory setObject:v47 atIndexedSubscript:v43];

          v49 = [v44 mutableCopy];
          auxiliaryVelocityMemory = [v42 auxiliaryVelocityMemory];
          [auxiliaryVelocityMemory setObject:v49 atIndexedSubscript:v43];

          v51 = [v44 mutableCopy];
          auxiliaryCenterWeightMemory = [v42 auxiliaryCenterWeightMemory];
          [auxiliaryCenterWeightMemory setObject:v51 atIndexedSubscript:v43];

          v53 = 4 * v43;
          if (4 * v43 != -4)
          {
            v54 = v53 + 4;
            v132 = v53 + 4;
            do
            {
              v55 = [parameterCopy objectAtIndexedSubscript:v53];
              isUpdatable = [v55 isUpdatable];

              if ((isUpdatable & 1) == 0)
              {
                auxiliaryWeightsMemory2 = [v134 auxiliaryWeightsMemory];
                v57 = [auxiliaryWeightsMemory2 objectAtIndexedSubscript:v43];
                auxiliaryMomentumMemory2 = [v134 auxiliaryMomentumMemory];
                v59 = [auxiliaryMomentumMemory2 objectAtIndexedSubscript:v43];
                auxiliaryVelocityMemory2 = [v134 auxiliaryVelocityMemory];
                v61 = [auxiliaryVelocityMemory2 objectAtIndexedSubscript:v43];
                auxiliaryCenterWeightMemory2 = [v134 auxiliaryCenterWeightMemory];
                v63 = [auxiliaryCenterWeightMemory2 objectAtIndexedSubscript:v43];
                LODWORD(v110) = 257;
                v54 = v132;
                [MLCDeviceGPU saveOrRestoreTempMatrixDisableUpdates:selfCopy2 commandBuffer:"saveOrRestoreTempMatrixDisableUpdates:commandBuffer:auxiliaryWeightsMemory:auxiliaryMomentumMemory:auxiliaryVelocityMemory:auxiliaryCenterWeightMemory:deviceNumber:kernelNumber:mlcIndex:auxIndex:numOptimizerData:saveToAux:isInputWeight:isHiddenWeight:isBias:" auxiliaryWeightsMemory:v134 auxiliaryMomentumMemory:v129 auxiliaryVelocityMemory:v57 auxiliaryCenterWeightMemory:v59 deviceNumber:v61 kernelNumber:v63 mlcIndex:v130 auxIndex:v43 numOptimizerData:v53 saveToAux:0 isInputWeight:v126 isHiddenWeight:v110 isBias:?];
              }

              ++v53;
            }

            while (v53 < v54);
            v64 = 4 * v43;
            do
            {
              v65 = [weightsParameterCopy objectAtIndexedSubscript:v64];
              isUpdatable2 = [v65 isUpdatable];

              if ((isUpdatable2 & 1) == 0)
              {
                auxiliaryWeightsMemory3 = [v134 auxiliaryWeightsMemory];
                v67 = [auxiliaryWeightsMemory3 objectAtIndexedSubscript:v43];
                auxiliaryMomentumMemory3 = [v134 auxiliaryMomentumMemory];
                v69 = [auxiliaryMomentumMemory3 objectAtIndexedSubscript:v43];
                auxiliaryVelocityMemory3 = [v134 auxiliaryVelocityMemory];
                v71 = [auxiliaryVelocityMemory3 objectAtIndexedSubscript:v43];
                auxiliaryCenterWeightMemory3 = [v134 auxiliaryCenterWeightMemory];
                v73 = [auxiliaryCenterWeightMemory3 objectAtIndexedSubscript:v43];
                LODWORD(v110) = 65537;
                v54 = v132;
                [MLCDeviceGPU saveOrRestoreTempMatrixDisableUpdates:selfCopy2 commandBuffer:"saveOrRestoreTempMatrixDisableUpdates:commandBuffer:auxiliaryWeightsMemory:auxiliaryMomentumMemory:auxiliaryVelocityMemory:auxiliaryCenterWeightMemory:deviceNumber:kernelNumber:mlcIndex:auxIndex:numOptimizerData:saveToAux:isInputWeight:isHiddenWeight:isBias:" auxiliaryWeightsMemory:v134 auxiliaryMomentumMemory:v129 auxiliaryVelocityMemory:v67 auxiliaryCenterWeightMemory:v69 deviceNumber:v71 kernelNumber:v73 mlcIndex:v130 auxIndex:v43 numOptimizerData:v64 saveToAux:0 isInputWeight:v126 isHiddenWeight:v110 isBias:?];
              }

              ++v64;
            }

            while (v64 < v54);
            v74 = 4 * v43;
            if (biasesParameterCopy)
            {
              do
              {
                v75 = [biasesParameterCopy objectAtIndexedSubscript:v74];
                isUpdatable3 = [v75 isUpdatable];

                if ((isUpdatable3 & 1) == 0)
                {
                  auxiliaryWeightsMemory4 = [v134 auxiliaryWeightsMemory];
                  v77 = [auxiliaryWeightsMemory4 objectAtIndexedSubscript:v43];
                  auxiliaryMomentumMemory4 = [v134 auxiliaryMomentumMemory];
                  v79 = [auxiliaryMomentumMemory4 objectAtIndexedSubscript:v43];
                  auxiliaryVelocityMemory4 = [v134 auxiliaryVelocityMemory];
                  v81 = [auxiliaryVelocityMemory4 objectAtIndexedSubscript:v43];
                  auxiliaryCenterWeightMemory4 = [v134 auxiliaryCenterWeightMemory];
                  v83 = [auxiliaryCenterWeightMemory4 objectAtIndexedSubscript:v43];
                  LODWORD(v110) = 16777217;
                  v54 = v132;
                  [MLCDeviceGPU saveOrRestoreTempMatrixDisableUpdates:selfCopy2 commandBuffer:"saveOrRestoreTempMatrixDisableUpdates:commandBuffer:auxiliaryWeightsMemory:auxiliaryMomentumMemory:auxiliaryVelocityMemory:auxiliaryCenterWeightMemory:deviceNumber:kernelNumber:mlcIndex:auxIndex:numOptimizerData:saveToAux:isInputWeight:isHiddenWeight:isBias:" auxiliaryWeightsMemory:v134 auxiliaryMomentumMemory:v129 auxiliaryVelocityMemory:v77 auxiliaryCenterWeightMemory:v79 deviceNumber:v81 kernelNumber:v83 mlcIndex:v130 auxIndex:v43 numOptimizerData:v74 saveToAux:0 isInputWeight:v126 isHiddenWeight:v110 isBias:?];
                }

                ++v74;
              }

              while (v74 < v54);
            }
          }

          ++v43;
          v42 = v134;
        }

        while (v43 != v113);
        v84 = 0;
        v114 = 0;
        selfCopy = selfCopy2;
        do
        {
          rnnTrainableWeights = [v42 rnnTrainableWeights];
          v86 = [rnnTrainableWeights objectAtIndexedSubscript:v84];

          v120 = v86;
          if ([v86 count])
          {
            v87 = 0;
            v133 = v84;
            do
            {
              rnnTrainableWeightGradients2 = [v42 rnnTrainableWeightGradients];
              v89 = [rnnTrainableWeightGradients2 objectAtIndexedSubscript:v84];
              v90 = [v89 objectAtIndexedSubscript:v87];

              if ([(MLCDeviceGPU *)selfCopy numDevicesToUse]== 2)
              {
                lstmMultiGPUChildOps4 = [v42 lstmMultiGPUChildOps];
                multiGPUReduction2 = [lstmMultiGPUChildOps4 multiGPUReduction];

                v93 = v130;
                if (multiGPUReduction2 == 1)
                {
                  lstmMultiGPUChildOps5 = [v42 lstmMultiGPUChildOps];
                  allReducedGradientMatrices = [lstmMultiGPUChildOps5 allReducedGradientMatrices];
                  v96 = [allReducedGradientMatrices objectAtIndexedSubscript:v114];

                  ++v114;
                  v127 = v96;
                }

                else
                {
                  v127 = v90;
                }
              }

              else
              {
                v127 = v90;
                v93 = v130;
              }

              rnnMomentumMatrices = [v42 rnnMomentumMatrices];
              v98 = [rnnMomentumMatrices objectAtIndexedSubscript:v84];
              rnnVelocityMatrices = [v42 rnnVelocityMatrices];
              v100 = [rnnVelocityMatrices objectAtIndexedSubscript:v84];
              rnnCenterWeightMatrices = [v42 rnnCenterWeightMatrices];
              v102 = [rnnCenterWeightMatrices objectAtIndexedSubscript:v84];
              v125 = deviceParameterWithVectors(v98, v100, v102);

              v103 = [v119 objectAtIndexedSubscript:v93];
              rnnTrainableWeights2 = [v42 rnnTrainableWeights];
              v104 = [rnnTrainableWeights2 objectAtIndexedSubscript:v133];
              v105 = [v104 objectAtIndexedSubscript:v87];
              rnnTrainableWeights3 = [v134 rnnTrainableWeights];
              v107 = [rnnTrainableWeights3 objectAtIndexedSubscript:v133];
              v108 = [v107 objectAtIndexedSubscript:v87];
              selfCopy = selfCopy2;
              [(MLCDeviceGPU *)selfCopy2 updateWithOptimizer:v103 arrayOfParams:paramsCopy commandBuffer:v129 deviceParameter:v125 source:v105 gradient:v127 result:v108 momentumIndex:v87];

              v42 = v134;
              v84 = v133;

              ++v87;
            }

            while (v87 < [v120 count]);
          }

          ++v84;
        }

        while (v84 != v113);
      }

      v16 = v130 + 1;
    }

    while (v130 + 1 < [(MLCDeviceGPU *)selfCopy numDevicesToUse]);
  }

  v109 = *MEMORY[0x277D85DE8];
}

- (void)updateTensorParameter:(id)parameter optimizer:(id)optimizer gradient:(id)gradient arrayOfParams:(id)params
{
  v52[2] = *MEMORY[0x277D85DE8];
  parameterCopy = parameter;
  optimizerCopy = optimizer;
  gradientCopy = gradient;
  paramsCopy = params;
  selfCopy = self;
  if ([(MLCDeviceGPU *)self numDevicesToUse])
  {
    v10 = 0;
    do
    {
      gpuCommandBufferList = [(MLCDeviceGPU *)selfCopy gpuCommandBufferList];
      v49 = [gpuCommandBufferList objectAtIndexedSubscript:v10];

      tensor = [parameterCopy tensor];
      optimizerDeviceData = [tensor optimizerDeviceData];
      v14 = [optimizerDeviceData objectAtIndexedSubscript:v10];

      tensor2 = [parameterCopy tensor];
      deviceMemory = [tensor2 deviceMemory];
      v17 = [deviceMemory objectAtIndexedSubscript:v10];

      deviceMemory2 = [gradientCopy deviceMemory];
      v19 = [deviceMemory2 objectAtIndexedSubscript:v10];

      v20 = MEMORY[0x277CD7258];
      tensor3 = [parameterCopy tensor];
      descriptor = [tensor3 descriptor];
      v23 = [descriptor tensorAllocationSizeInBytes] >> 2;
      tensor4 = [parameterCopy tensor];
      descriptor2 = [tensor4 descriptor];
      v26 = [v20 matrixDescriptorWithRows:1 columns:v23 rowBytes:objc_msgSend(descriptor2 dataType:{"tensorAllocationSizeInBytes"), 268435488}];

      v27 = v14;
      v28 = [objc_alloc(MEMORY[0x277CD7250]) initWithBuffer:v17 descriptor:v26];
      v29 = [objc_alloc(MEMORY[0x277CD7250]) initWithBuffer:v19 descriptor:v26];
      if ([(MLCDeviceGPU *)selfCopy numDevicesToUse]== 2)
      {
        gpuOps = [v14 gpuOps];
        multiGPUReduction = [gpuOps multiGPUReduction];

        if (multiGPUReduction == 1)
        {
          tensor5 = [parameterCopy tensor];
          optimizerDeviceData2 = [tensor5 optimizerDeviceData];
          v42 = [optimizerDeviceData2 objectAtIndexedSubscript:0];
          gpuOps2 = [v42 gpuOps];
          v52[0] = gpuOps2;
          tensor6 = [parameterCopy tensor];
          optimizerDeviceData3 = [tensor6 optimizerDeviceData];
          v33 = [optimizerDeviceData3 objectAtIndexedSubscript:1];
          [v33 gpuOps];
          v35 = v34 = v19;
          v52[1] = v35;
          v40 = [MEMORY[0x277CBEA60] arrayWithObjects:v52 count:2];

          v19 = v34;
          v51 = v34;
          v36 = [MEMORY[0x277CBEA60] arrayWithObjects:&v51 count:1];
          [(MLCDeviceGPU *)selfCopy allReduceOverXGMI:v40 deviceIndex:v10 stateBuffers:v36];
        }
      }

      v37 = [optimizerCopy objectAtIndexedSubscript:v10];
      [(MLCDeviceGPU *)selfCopy updateWithOptimizer:v37 arrayOfParams:paramsCopy commandBuffer:v49 deviceParameter:v27 source:v28 gradient:v29 result:v28 momentumIndex:0];

      ++v10;
    }

    while (v10 < [(MLCDeviceGPU *)selfCopy numDevicesToUse]);
  }

  v38 = *MEMORY[0x277D85DE8];
}

- (void)updateWithAdamOptimizer:(id)optimizer encoder:(id)encoder deviceParameter:(id)parameter source:(id)source gradient:(id)gradient result:(id)result momentumIndex:(unint64_t)index
{
  optimizerCopy = optimizer;
  encoderCopy = encoder;
  parameterCopy = parameter;
  gradientCopy = gradient;
  resultCopy = result;
  timeStep = [optimizerCopy timeStep];
  [optimizerCopy learningRate];
  v20 = v19;
  [optimizerCopy beta2];
  v22 = v20 * sqrtf(1.0 - powf(v21, timeStep));
  [optimizerCopy beta1];
  v87[0] = 0;
  v24 = v22 / (1.0 - powf(v23, timeStep));
  [optimizerCopy beta1];
  v87[1] = v25;
  [optimizerCopy beta2];
  v87[2] = v26;
  [optimizerCopy epsilon];
  v87[5] = v27;
  [optimizerCopy learningRate];
  v87[3] = v28;
  *&v87[4] = v24;
  descriptor = [optimizerCopy descriptor];
  [descriptor gradientRescale];
  v31 = v30;
  v88 = v30;

  descriptor2 = [optimizerCopy descriptor];
  [descriptor2 gradientClipMin];
  v87[6] = v33;

  descriptor3 = [optimizerCopy descriptor];
  [descriptor3 gradientClipMax];
  v87[7] = v35;

  descriptor4 = [optimizerCopy descriptor];
  [descriptor4 maximumClippingNorm];
  v38 = v37;
  *&v87[8] = v37;

  descriptor5 = [optimizerCopy descriptor];
  [descriptor5 regularizationScale];
  v89 = v40;

  descriptor6 = [optimizerCopy descriptor];
  regularizationType = [descriptor6 regularizationType];

  decoupleWeightDecay = [optimizerCopy decoupleWeightDecay];
  v91 = 0;
  descriptor7 = [optimizerCopy descriptor];
  LODWORD(gradient) = [descriptor7 appliesGradientClipping];

  if (!gradient)
  {
    goto LABEL_9;
  }

  descriptor8 = [optimizerCopy descriptor];
  if ([descriptor8 gradientClippingType] != 2)
  {

    goto LABEL_7;
  }

  descriptor9 = [optimizerCopy descriptor];
  [descriptor9 customGlobalNorm];
  v46 = v45;

  if (v46 == 0.0)
  {
LABEL_7:
    descriptor10 = [optimizerCopy descriptor];
    v91 = [descriptor10 gradientClippingType] + 1;
    goto LABEL_8;
  }

  descriptor11 = [optimizerCopy descriptor];
  [descriptor11 customGlobalNorm];
  v49 = v48;

  if (v49 > v38)
  {
    descriptor10 = [optimizerCopy descriptor];
    [descriptor10 customGlobalNorm];
    v88 = v31 * (v38 / v51);
LABEL_8:
  }

LABEL_9:
  objc_opt_class();
  v80 = resultCopy;
  v81 = gradientCopy;
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    data = [resultCopy data];
    data2 = [gradientCopy data];
  }

  else
  {
    data = resultCopy;
    data2 = gradientCopy;
  }

  v79 = data2;
  v54 = [data length] >> 2;
  v87[0] = v54;
  momentumVectors = [parameterCopy momentumVectors];
  v56 = [momentumVectors objectAtIndexedSubscript:index];
  objc_opt_class();
  objc_opt_isKindOfClass();

  momentumVectors2 = [parameterCopy momentumVectors];
  v58 = [momentumVectors2 objectAtIndexedSubscript:index];
  data3 = [v58 data];

  velocityVectors = [parameterCopy velocityVectors];
  v60 = [velocityVectors objectAtIndexedSubscript:index];
  objc_opt_class();
  objc_opt_isKindOfClass();

  velocityVectors2 = [parameterCopy velocityVectors];
  v62 = [velocityVectors2 objectAtIndexedSubscript:index];
  data4 = [v62 data];

  if ([optimizerCopy amsgrad])
  {
    centerWeightVectors = [parameterCopy centerWeightVectors];
    v65 = [centerWeightVectors objectAtIndexedSubscript:index];
    objc_opt_class();
    objc_opt_isKindOfClass();

    centerWeightVectors2 = [parameterCopy centerWeightVectors];
    v67 = [centerWeightVectors2 objectAtIndexedSubscript:index];
    data5 = [v67 data];
  }

  else
  {
    data5 = 0;
  }

  kernel = [optimizerCopy kernel];
  threadExecutionWidth = [kernel threadExecutionWidth];
  maxTotalThreadsPerThreadgroup = [kernel maxTotalThreadsPerThreadgroup];
  if (maxTotalThreadsPerThreadgroup > v54)
  {
    v72 = (threadExecutionWidth + v54 - 1) / threadExecutionWidth * threadExecutionWidth;
    descriptor12 = [optimizerCopy descriptor];
    gradientClippingType = [descriptor12 gradientClippingType];

    v75 = 1 << -__clz(v72);
    if (gradientClippingType == 1)
    {
      maxTotalThreadsPerThreadgroup = v75;
    }

    else
    {
      maxTotalThreadsPerThreadgroup = v72;
    }
  }

  [encoderCopy setBuffer:v79 offset:0 atIndex:0];
  [encoderCopy setBuffer:data3 offset:0 atIndex:1];
  [encoderCopy setBuffer:data4 offset:0 atIndex:2];
  [encoderCopy setBuffer:data offset:0 atIndex:3];
  [encoderCopy setBytes:v87 length:56 atIndex:4];
  if ([optimizerCopy amsgrad])
  {
    v76 = data5;
  }

  else
  {
    v76 = data4;
  }

  [encoderCopy setBuffer:v76 offset:0 atIndex:5];
  l2NormBuffer = [optimizerCopy l2NormBuffer];

  if (l2NormBuffer)
  {
    l2NormBuffer2 = [optimizerCopy l2NormBuffer];
    [encoderCopy setBuffer:l2NormBuffer2 offset:0 atIndex:6];
  }

  else
  {
    [encoderCopy setBuffer:data offset:0 atIndex:6];
  }

  [encoderCopy setThreadgroupMemoryLength:4 * maxTotalThreadsPerThreadgroup atIndex:0];
  v84 = vdupq_n_s64(1uLL);
  v85 = v84;
  v86 = 1;
  v83 = maxTotalThreadsPerThreadgroup;
  [encoderCopy dispatchThreadgroups:&v85 threadsPerThreadgroup:&v83];
}

- (void)updateWithSGDOptimizer:(id)optimizer encoder:(id)encoder deviceParameter:(id)parameter source:(id)source gradient:(id)gradient result:(id)result momentumIndex:(unint64_t)index
{
  optimizerCopy = optimizer;
  encoderCopy = encoder;
  parameterCopy = parameter;
  gradientCopy = gradient;
  resultCopy = result;
  v73 = 0u;
  v71[0] = 0;
  [optimizerCopy learningRate];
  v71[1] = v17;
  descriptor = [optimizerCopy descriptor];
  [descriptor gradientRescale];
  v20 = v19;
  v72 = v19;

  descriptor2 = [optimizerCopy descriptor];
  [descriptor2 gradientClipMin];
  v71[3] = v22;

  descriptor3 = [optimizerCopy descriptor];
  [descriptor3 gradientClipMax];
  v71[4] = v24;

  descriptor4 = [optimizerCopy descriptor];
  [descriptor4 maximumClippingNorm];
  v27 = v26;
  *&v71[5] = v26;

  descriptor5 = [optimizerCopy descriptor];
  [descriptor5 regularizationScale];
  LODWORD(v73) = v29;

  descriptor6 = [optimizerCopy descriptor];
  *(&v73 + 4) = [descriptor6 regularizationType];

  [optimizerCopy momentumScale];
  v71[2] = v31;
  BYTE12(v73) = [optimizerCopy usesNesterov];
  descriptor7 = [optimizerCopy descriptor];
  appliesGradientClipping = [descriptor7 appliesGradientClipping];

  if (!appliesGradientClipping)
  {
    goto LABEL_9;
  }

  descriptor8 = [optimizerCopy descriptor];
  if ([descriptor8 gradientClippingType] != 2)
  {

    goto LABEL_7;
  }

  descriptor9 = [optimizerCopy descriptor];
  [descriptor9 customGlobalNorm];
  v37 = v36;

  if (v37 == 0.0)
  {
LABEL_7:
    descriptor10 = [optimizerCopy descriptor];
    DWORD2(v73) = [descriptor10 gradientClippingType] + 1;
    goto LABEL_8;
  }

  descriptor11 = [optimizerCopy descriptor];
  [descriptor11 customGlobalNorm];
  v40 = v39;

  if (v40 > v27)
  {
    descriptor10 = [optimizerCopy descriptor];
    [descriptor10 customGlobalNorm];
    v72 = v20 * (v27 / v42);
LABEL_8:
  }

LABEL_9:
  objc_opt_class();
  v65 = gradientCopy;
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    data = [resultCopy data];
    data2 = [gradientCopy data];
  }

  else
  {
    data = resultCopy;
    data2 = gradientCopy;
  }

  v45 = data2;
  v46 = [data length] >> 2;
  v71[0] = v46;
  [optimizerCopy momentumScale];
  if (v47 == 0.0)
  {
    data3 = 0;
  }

  else
  {
    momentumVectors = [parameterCopy momentumVectors];
    v49 = [momentumVectors objectAtIndexedSubscript:index];
    objc_opt_class();
    objc_opt_isKindOfClass();

    momentumVectors2 = [parameterCopy momentumVectors];
    v51 = [momentumVectors2 objectAtIndexedSubscript:index];
    data3 = [v51 data];
  }

  kernel = [optimizerCopy kernel];
  threadExecutionWidth = [kernel threadExecutionWidth];
  maxTotalThreadsPerThreadgroup = [kernel maxTotalThreadsPerThreadgroup];
  if (maxTotalThreadsPerThreadgroup > v46)
  {
    v56 = (threadExecutionWidth + v46 - 1) / threadExecutionWidth * threadExecutionWidth;
    descriptor12 = [optimizerCopy descriptor];
    gradientClippingType = [descriptor12 gradientClippingType];

    v59 = 1 << -__clz(v56);
    if (gradientClippingType == 1)
    {
      maxTotalThreadsPerThreadgroup = v59;
    }

    else
    {
      maxTotalThreadsPerThreadgroup = v56;
    }
  }

  [encoderCopy setBuffer:v45 offset:0 atIndex:0];
  [optimizerCopy momentumScale];
  if (v60 == 0.0)
  {
    v61 = data;
  }

  else
  {
    v61 = data3;
  }

  [encoderCopy setBuffer:v61 offset:0 atIndex:1];
  [encoderCopy setBuffer:data offset:0 atIndex:3];
  [encoderCopy setBytes:v71 length:44 atIndex:4];
  l2NormBuffer = [optimizerCopy l2NormBuffer];

  if (l2NormBuffer)
  {
    l2NormBuffer2 = [optimizerCopy l2NormBuffer];
    [encoderCopy setBuffer:l2NormBuffer2 offset:0 atIndex:5];
  }

  else
  {
    [encoderCopy setBuffer:data offset:0 atIndex:5];
  }

  [encoderCopy setThreadgroupMemoryLength:4 * maxTotalThreadsPerThreadgroup atIndex:0];
  v68 = vdupq_n_s64(1uLL);
  v69 = v68;
  v70 = 1;
  v67 = maxTotalThreadsPerThreadgroup;
  [encoderCopy dispatchThreadgroups:&v69 threadsPerThreadgroup:&v67];
}

- (void)updateWithRMSPropOptimizer:(id)optimizer encoder:(id)encoder deviceParameter:(id)parameter source:(id)source gradient:(id)gradient result:(id)result momentumIndex:(unint64_t)index
{
  optimizerCopy = optimizer;
  encoderCopy = encoder;
  parameterCopy = parameter;
  gradientCopy = gradient;
  resultCopy = result;
  v83[0] = 0;
  [optimizerCopy learningRate];
  v83[1] = v18;
  descriptor = [optimizerCopy descriptor];
  [descriptor gradientRescale];
  v21 = v20;
  v84 = v20;

  descriptor2 = [optimizerCopy descriptor];
  [descriptor2 gradientClipMin];
  v83[5] = v23;

  descriptor3 = [optimizerCopy descriptor];
  [descriptor3 gradientClipMax];
  v83[6] = v25;

  descriptor4 = [optimizerCopy descriptor];
  [descriptor4 maximumClippingNorm];
  v28 = v27;
  *&v83[7] = v27;

  descriptor5 = [optimizerCopy descriptor];
  [descriptor5 regularizationScale];
  v85 = v30;

  descriptor6 = [optimizerCopy descriptor];
  regularizationType = [descriptor6 regularizationType];

  [optimizerCopy momentumScale];
  v83[2] = v32;
  [optimizerCopy alpha];
  v83[3] = v33;
  [optimizerCopy epsilon];
  v83[4] = v34;
  centered = [optimizerCopy centered];
  descriptor7 = [optimizerCopy descriptor];
  LODWORD(gradient) = [descriptor7 appliesGradientClipping];

  if (!gradient)
  {
    goto LABEL_9;
  }

  descriptor8 = [optimizerCopy descriptor];
  if ([descriptor8 gradientClippingType] != 2)
  {

    goto LABEL_7;
  }

  descriptor9 = [optimizerCopy descriptor];
  [descriptor9 customGlobalNorm];
  v39 = v38;

  if (v39 == 0.0)
  {
LABEL_7:
    descriptor10 = [optimizerCopy descriptor];
    HIDWORD(regularizationType) = [descriptor10 gradientClippingType] + 1;
    goto LABEL_8;
  }

  descriptor11 = [optimizerCopy descriptor];
  [descriptor11 customGlobalNorm];
  v42 = v41;

  if (v42 > v28)
  {
    descriptor10 = [optimizerCopy descriptor];
    [descriptor10 customGlobalNorm];
    v84 = v21 * (v28 / v44);
LABEL_8:
  }

LABEL_9:
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    data = [resultCopy data];
    data2 = [gradientCopy data];
  }

  else
  {
    data = resultCopy;
    data2 = gradientCopy;
  }

  v77 = data2;
  momentumVectors = [parameterCopy momentumVectors];
  v47 = [momentumVectors objectAtIndexedSubscript:index];

  objc_opt_class();
  v73 = resultCopy;
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    data3 = [v47 data];
  }

  else
  {
    data3 = v47;
  }

  v76 = data3;
  v49 = [data length] >> 2;
  v83[0] = v49;
  [optimizerCopy momentumScale];
  v51 = v50;
  centered2 = [optimizerCopy centered];
  v53 = centered2;
  v74 = gradientCopy;
  v75 = parameterCopy;
  v71 = v47;
  if (v51 == 0.0)
  {
    if (!centered2)
    {
      v59 = 0;
      v57 = 0;
      v55 = 0;
      goto LABEL_35;
    }

    velocityVectors = [parameterCopy velocityVectors];
    v57 = [velocityVectors objectAtIndexedSubscript:index];
    v55 = 0;
  }

  else
  {
    velocityVectors2 = [parameterCopy velocityVectors];
    v55 = [velocityVectors2 objectAtIndexedSubscript:index];

    if (!v53)
    {
      v57 = 0;
      goto LABEL_27;
    }

    velocityVectors = [parameterCopy centerWeightVectors];
    [velocityVectors objectAtIndexedSubscript:index];
    v55 = v57 = v55;
  }

  if (v57)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      data4 = [v57 data];
    }

    else
    {
      data4 = v57;
      v57 = data4;
    }

    v59 = data4;
    if (v55)
    {
      goto LABEL_32;
    }

    goto LABEL_35;
  }

LABEL_27:
  v59 = 0;
  if (v55)
  {
LABEL_32:
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      data5 = [v55 data];
    }

    else
    {
      data5 = v55;
      v55 = data5;
    }

    v61 = data5;
    goto LABEL_38;
  }

LABEL_35:
  v61 = 0;
LABEL_38:
  kernel = [optimizerCopy kernel];
  threadExecutionWidth = [kernel threadExecutionWidth];
  maxTotalThreadsPerThreadgroup = [kernel maxTotalThreadsPerThreadgroup];
  if (maxTotalThreadsPerThreadgroup > v49)
  {
    v65 = (threadExecutionWidth + v49 - 1) / threadExecutionWidth * threadExecutionWidth;
    descriptor12 = [optimizerCopy descriptor];
    gradientClippingType = [descriptor12 gradientClippingType];

    v68 = 1 << -__clz(v65);
    if (gradientClippingType == 1)
    {
      maxTotalThreadsPerThreadgroup = v68;
    }

    else
    {
      maxTotalThreadsPerThreadgroup = v65;
    }
  }

  [encoderCopy setBuffer:v77 offset:0 atIndex:0];
  [encoderCopy setBuffer:v76 offset:0 atIndex:1];
  [encoderCopy setBuffer:v59 offset:0 atIndex:2];
  [encoderCopy setBuffer:data offset:0 atIndex:3];
  [encoderCopy setBytes:v83 length:52 atIndex:4];
  [encoderCopy setBuffer:v61 offset:0 atIndex:5];
  l2NormBuffer = [optimizerCopy l2NormBuffer];

  if (l2NormBuffer)
  {
    l2NormBuffer2 = [optimizerCopy l2NormBuffer];
    [encoderCopy setBuffer:l2NormBuffer2 offset:0 atIndex:6];
  }

  else
  {
    [encoderCopy setBuffer:data offset:0 atIndex:6];
  }

  [encoderCopy setThreadgroupMemoryLength:4 * maxTotalThreadsPerThreadgroup atIndex:0];
  v80 = vdupq_n_s64(1uLL);
  v81 = v80;
  v82 = 1;
  v79 = maxTotalThreadsPerThreadgroup;
  [encoderCopy dispatchThreadgroups:&v81 threadsPerThreadgroup:&v79];
}

- (void)updateWithOptimizer:(id)optimizer arrayOfParams:(id)params commandBuffer:(id)buffer deviceParameter:(id)parameter source:(id)source gradient:(id)gradient result:(id)result momentumIndex:(unint64_t)self0
{
  optimizerCopy = optimizer;
  paramsCopy = params;
  parameterCopy = parameter;
  sourceCopy = source;
  gradientCopy = gradient;
  resultCopy = result;
  if (paramsCopy)
  {
    [paramsCopy addObject:parameterCopy];
    [paramsCopy addObject:sourceCopy];
    if (gradientCopy)
    {
      [paramsCopy addObject:gradientCopy];
    }

    else
    {
      null = [MEMORY[0x277CBEB68] null];
      [paramsCopy addObject:null];
    }

    [paramsCopy addObject:resultCopy];
    v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:index];
    [paramsCopy addObject:v27];
  }

  else
  {
    v29 = a2;
    v23 = [buffer computeCommandEncoderWithDispatchType:0];
    kernel = [optimizerCopy kernel];
    [v23 setComputePipelineState:kernel];
    gpuOptimizerKernelType = [optimizerCopy gpuOptimizerKernelType];
    switch(gpuOptimizerKernelType)
    {
      case 3:
        [(MLCDeviceGPU *)self updateWithRMSPropOptimizer:optimizerCopy encoder:v23 deviceParameter:parameterCopy source:sourceCopy gradient:gradientCopy result:resultCopy momentumIndex:index];
        break;
      case 2:
        [(MLCDeviceGPU *)self updateWithSGDOptimizer:optimizerCopy encoder:v23 deviceParameter:parameterCopy source:sourceCopy gradient:gradientCopy result:resultCopy momentumIndex:index];
        break;
      case 1:
        [(MLCDeviceGPU *)self updateWithAdamOptimizer:optimizerCopy encoder:v23 deviceParameter:parameterCopy source:sourceCopy gradient:gradientCopy result:resultCopy momentumIndex:index];
        break;
      default:
        v28 = +[MLCLog framework];
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          [MLCDeviceGPU(MLCEngineDispatch) updateWithOptimizer:v29 arrayOfParams:v28 commandBuffer:? deviceParameter:? source:? gradient:? result:? momentumIndex:?];
        }

        break;
    }

    [v23 endEncoding];
  }
}

- (void)updateAllParametersWithOptimizer:(id)optimizer arrayOfParameters:(id)parameters
{
  v75 = *MEMORY[0x277D85DE8];
  optimizerCopy = optimizer;
  parametersCopy = parameters;
  v68 = optimizerCopy;
  selfCopy = self;
  if ([(MLCDeviceGPU *)self numDevicesToUse])
  {
    v8 = 0;
    do
    {
      v72 = 0;
      gpuCommandBufferList = [(MLCDeviceGPU *)self gpuCommandBufferList];
      v10 = [gpuCommandBufferList objectAtIndexedSubscript:v8];

      v11 = [optimizerCopy objectAtIndexedSubscript:v8];
      computeL2NormKernel = [v11 computeL2NormKernel];

      if (computeL2NormKernel)
      {
        v13 = [optimizerCopy objectAtIndexedSubscript:v8];
        l2NormBuffer = [v13 l2NormBuffer];

        if (!l2NormBuffer)
        {
          device = [v10 device];
          v16 = [device newBufferWithLength:4096 options:{+[MLCGPUHelper mtlResourceOptions](MLCGPUHelper, "mtlResourceOptions")}];
          v17 = [optimizerCopy objectAtIndexedSubscript:v8];
          [v17 setL2NormBuffer:v16];
        }

        v66 = v10;
        v18 = [v10 computeCommandEncoderWithDispatchType:1];
        v19 = [optimizerCopy objectAtIndexedSubscript:v8];
        computeL2NormKernel2 = [v19 computeL2NormKernel];
        [v18 setComputePipelineState:computeL2NormKernel2];

        v21 = [optimizerCopy objectAtIndexedSubscript:v8];
        computeL2NormKernel3 = [v21 computeL2NormKernel];
        maxTotalThreadsPerThreadgroup = [computeL2NormKernel3 maxTotalThreadsPerThreadgroup];

        if ([parametersCopy count])
        {
          v24 = 0;
          do
          {
            v25 = [parametersCopy objectAtIndexedSubscript:v24 + 2];
            null = [MEMORY[0x277CBEB68] null];
            v27 = [v25 isEqual:null];

            if (v27)
            {

              v25 = 0;
            }

            v28 = [v25 length] >> 2;
            LODWORD(v72) = v28;
            if (v28 >= maxTotalThreadsPerThreadgroup)
            {
              v28 = maxTotalThreadsPerThreadgroup;
            }

            v29 = 1 << -__clz(v28);
            if ((v28 & (v28 - 1)) != 0)
            {
              v30 = v29;
            }

            else
            {
              v30 = v28;
            }

            [v18 setBuffer:v25 offset:0 atIndex:0];
            v31 = [v68 objectAtIndexedSubscript:v8];
            l2NormBuffer2 = [v31 l2NormBuffer];
            [v18 setBuffer:l2NormBuffer2 offset:0 atIndex:1];

            [v18 setBytes:&v72 length:8 atIndex:2];
            [v18 setThreadgroupMemoryLength:4 * v30 atIndex:0];
            v73 = vdupq_n_s64(1uLL);
            v74 = 1;
            v70 = v30;
            v71 = v73;
            [v18 dispatchThreadgroups:&v73 threadsPerThreadgroup:&v70];
            ++HIDWORD(v72);

            v24 += 5;
          }

          while (v24 < [parametersCopy count]);
        }

        [v18 memoryBarrierWithScope:1];
        optimizerCopy = v68;
        v33 = [v68 objectAtIndexedSubscript:v8];
        sumL2NormKernel = [v33 sumL2NormKernel];
        [v18 setComputePipelineState:sumL2NormKernel];

        v35 = [v68 objectAtIndexedSubscript:v8];
        sumL2NormKernel2 = [v35 sumL2NormKernel];
        maxTotalThreadsPerThreadgroup2 = [sumL2NormKernel2 maxTotalThreadsPerThreadgroup];

        v38 = [parametersCopy count];
        if (v38 / 5 >= maxTotalThreadsPerThreadgroup2)
        {
          v39 = maxTotalThreadsPerThreadgroup2;
        }

        else
        {
          v39 = v38 / 5;
        }

        v40 = 1 << -__clz(v39);
        if ((v39 & (v39 - 1)) != 0)
        {
          v41 = v40;
        }

        else
        {
          v41 = v39;
        }

        LODWORD(v72) = v38 / 5;
        v42 = [v68 objectAtIndexedSubscript:v8];
        l2NormBuffer3 = [v42 l2NormBuffer];
        [v18 setBuffer:l2NormBuffer3 offset:0 atIndex:0];

        [v18 setBytes:&v72 length:4 atIndex:1];
        [v18 setThreadgroupMemoryLength:4 * v41 atIndex:0];
        v73 = vdupq_n_s64(1uLL);
        v74 = 1;
        v70 = v41;
        v71 = v73;
        [v18 dispatchThreadgroups:&v73 threadsPerThreadgroup:&v70];
        [v18 endEncoding];

        self = selfCopy;
        v10 = v66;
      }

      ++v8;
    }

    while (v8 < [(MLCDeviceGPU *)self numDevicesToUse]);
  }

  if ([(MLCDeviceGPU *)self numDevicesToUse])
  {
    v44 = 0;
    do
    {
      v45 = [optimizerCopy objectAtIndexedSubscript:v44];
      gpuCommandBufferList2 = [(MLCDeviceGPU *)self gpuCommandBufferList];
      v67 = v44;
      v47 = [gpuCommandBufferList2 objectAtIndexedSubscript:v44];

      v65 = v47;
      v48 = [v47 computeCommandEncoderWithDispatchType:1];
      kernel = [v45 kernel];
      [v48 setComputePipelineState:?];
      [v48 memoryBarrierWithScope:1];
      if ([parametersCopy count])
      {
        v49 = 0;
        do
        {
          v50 = [parametersCopy objectAtIndexedSubscript:v49];
          v51 = [parametersCopy objectAtIndexedSubscript:v49 + 1];
          v52 = v49 + 2;
          v53 = [parametersCopy objectAtIndexedSubscript:v49 + 2];
          null2 = [MEMORY[0x277CBEB68] null];
          v55 = [v53 isEqual:null2];

          if (v55)
          {

            v53 = 0;
          }

          v56 = [parametersCopy objectAtIndexedSubscript:v52 + 1];
          v57 = v52 + 2;
          v58 = [parametersCopy objectAtIndexedSubscript:v57];
          unsignedIntegerValue = [v58 unsignedIntegerValue];

          gpuOptimizerKernelType = [v45 gpuOptimizerKernelType];
          switch(gpuOptimizerKernelType)
          {
            case 3:
              [(MLCDeviceGPU *)selfCopy updateWithRMSPropOptimizer:v45 encoder:v48 deviceParameter:v50 source:v51 gradient:v53 result:v56 momentumIndex:unsignedIntegerValue];
              break;
            case 2:
              [(MLCDeviceGPU *)selfCopy updateWithSGDOptimizer:v45 encoder:v48 deviceParameter:v50 source:v51 gradient:v53 result:v56 momentumIndex:unsignedIntegerValue];
              break;
            case 1:
              [(MLCDeviceGPU *)selfCopy updateWithAdamOptimizer:v45 encoder:v48 deviceParameter:v50 source:v51 gradient:v53 result:v56 momentumIndex:unsignedIntegerValue];
              break;
            default:
              v61 = +[MLCLog framework];
              if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
              {
                [(MLCDeviceGPU(MLCEngineDispatch) *)&v73 updateAllParametersWithOptimizer:a2 arrayOfParameters:(v73.i64 + 4), v61];
              }

              break;
          }

          v49 = v57 + 1;
        }

        while (v57 + 1 < [parametersCopy count]);
      }

      [v48 endEncoding];

      v44 = v67 + 1;
      self = selfCopy;
      optimizerCopy = v68;
    }

    while (v67 + 1 < [(MLCDeviceGPU *)selfCopy numDevicesToUse]);
  }

  [parametersCopy removeAllObjects];

  v62 = *MEMORY[0x277D85DE8];
}

- (void)synchronizeWeightMatrixForRNNLayer:(id)layer matrixId:(unint64_t)id parameterType:(unint64_t)type accumulatorIndex:(unint64_t)index forLSTMNum:(unint64_t)num forDeviceNum:(unint64_t)deviceNum forGate:(unint64_t)gate
{
  layerCopy = layer;
  deviceOps = [layerCopy deviceOps];
  v15 = [deviceOps objectAtIndexedSubscript:deviceNum];

  gpuCommandBufferList = [(MLCDeviceGPU *)self gpuCommandBufferList];
  v60 = [gpuCommandBufferList objectAtIndexedSubscript:deviceNum];

  gradientKernel = [v15 gradientKernel];
  v18 = layerCopy;
  descriptor = [v18 descriptor];
  hiddenSize = [descriptor hiddenSize];

  descriptor2 = [v18 descriptor];
  inputSize = [descriptor2 inputSize];

  if (type == 2)
  {
    inputSize = hiddenSize;
    hiddenSize = 1;
  }

  else if (type == 1)
  {
    inputSize = hiddenSize;
  }

  else if (type)
  {
    inputSize = 0;
    hiddenSize = 0;
  }

  else
  {
    descriptor3 = [v18 descriptor];
    if (num % [descriptor3 layerCount])
    {
      inputSize = hiddenSize;
    }
  }

  v24 = [MEMORY[0x277CD7258] matrixDescriptorWithRows:hiddenSize columns:inputSize rowBytes:4 * inputSize dataType:268435488];
  v25 = objc_alloc(MEMORY[0x277CD7250]);
  deviceList = [(MLCDeviceGPU *)self deviceList];
  v27 = [deviceList objectAtIndexedSubscript:deviceNum];
  v59 = v24;
  v28 = [v25 initWithDevice:v27 descriptor:v24];

  v65 = 0uLL;
  v66 = 0;
  v29 = gradientKernel;
  v30 = [gradientKernel objectAtIndexedSubscript:num];
  rnnTrainableWeights = [v15 rnnTrainableWeights];
  v32 = [rnnTrainableWeights objectAtIndexedSubscript:num];
  v63 = 0uLL;
  v64 = 0;
  [v30 encodeCopyWeightsToCommandBuffer:v60 weights:v32 matrixId:id matrix:v28 copyFromWeightsToMatrix:1 matrixOffset:&v63];

  [v28 synchronizeOnCommandBuffer:v60];
  if (type <= 1)
  {
    rnnExportedWeightMatrices = [v15 rnnExportedWeightMatrices];
    indexCopy2 = index;
LABEL_15:
    [rnnExportedWeightMatrices addObject:v28];

    goto LABEL_16;
  }

  v35 = type == 2;
  indexCopy2 = index;
  if (v35)
  {
    rnnExportedWeightMatrices = [v15 rnnExportedBiasTerms];
    goto LABEL_15;
  }

LABEL_16:
  momentumVectors = [v15 momentumVectors];
  v37 = [momentumVectors count];

  if (v37)
  {
    v56 = v18;
    momentumVectors2 = [v15 momentumVectors];
    v38 = [momentumVectors2 objectAtIndexedSubscript:indexCopy2];
    v39 = [gradientKernel objectAtIndexedSubscript:num];
    rnnMomentumMatrices = [v15 rnnMomentumMatrices];
    v41 = [rnnMomentumMatrices objectAtIndexedSubscript:num];
    v63 = 0uLL;
    v64 = 0;
    [v39 encodeCopyWeightsToCommandBuffer:v60 weights:v41 matrixId:id matrix:v38 copyFromWeightsToMatrix:1 matrixOffset:&v63];

    v57 = v38;
    [v38 synchronizeOnCommandBuffer:v60];
    velocityVectors = [v15 velocityVectors];
    v43 = [velocityVectors count];

    if (v43)
    {
      velocityVectors2 = [v15 velocityVectors];
      v45 = [velocityVectors2 objectAtIndexedSubscript:index];
      v46 = [gradientKernel objectAtIndexedSubscript:num];
      rnnVelocityMatrices = [v15 rnnVelocityMatrices];
      v48 = [rnnVelocityMatrices objectAtIndexedSubscript:num];
      v63 = 0uLL;
      v64 = 0;
      [v46 encodeCopyWeightsToCommandBuffer:v60 weights:v48 matrixId:id matrix:v45 copyFromWeightsToMatrix:1 matrixOffset:&v63];

      [v45 synchronizeOnCommandBuffer:v60];
      centerWeightVectors = [v15 centerWeightVectors];
      v50 = [centerWeightVectors count];

      if (v50)
      {
        centerWeightVectors2 = [v15 centerWeightVectors];
        v51 = [centerWeightVectors2 objectAtIndexedSubscript:index];
        v52 = [gradientKernel objectAtIndexedSubscript:num];
        rnnCenterWeightMatrices = [v15 rnnCenterWeightMatrices];
        v54 = [rnnCenterWeightMatrices objectAtIndexedSubscript:num];
        v63 = v65;
        v64 = v66;
        [v52 encodeCopyWeightsToCommandBuffer:v60 weights:v54 matrixId:id matrix:v51 copyFromWeightsToMatrix:1 matrixOffset:&v63];

        [v51 synchronizeOnCommandBuffer:v60];
      }

      v29 = gradientKernel;
    }

    v18 = v56;
  }
}

- (void)synchronizeOptimizerBuffers:(id)buffers commandBuffer:(id)buffer
{
  buffersCopy = buffers;
  bufferCopy = buffer;
  momentumVectors = [buffersCopy momentumVectors];
  if ([momentumVectors count])
  {
    v7 = 0;
    do
    {
      v8 = [momentumVectors objectAtIndexedSubscript:v7];
      data = [v8 data];
      [MLCGPUHelper synchronizeResource:data commandBuffer:bufferCopy];

      ++v7;
    }

    while (v7 < [momentumVectors count]);
  }

  velocityVectors = [buffersCopy velocityVectors];
  if ([velocityVectors count])
  {
    v11 = 0;
    do
    {
      v12 = [velocityVectors objectAtIndexedSubscript:v11];
      data2 = [v12 data];
      [MLCGPUHelper synchronizeResource:data2 commandBuffer:bufferCopy];

      ++v11;
    }

    while (v11 < [velocityVectors count]);
  }

  centerWeightVectors = [buffersCopy centerWeightVectors];
  if ([centerWeightVectors count])
  {
    v15 = 0;
    do
    {
      v16 = [centerWeightVectors objectAtIndexedSubscript:v15];
      data3 = [v16 data];
      [MLCGPUHelper synchronizeResource:data3 commandBuffer:bufferCopy];

      ++v15;
    }

    while (v15 < [centerWeightVectors count]);
  }
}

- (void)synchronizeUpdatesForLayer:(id)layer
{
  v120 = *MEMORY[0x277D85DE8];
  layerCopy = layer;
  if ([(MLCDeviceGPU *)self numDevicesToUse])
  {
    v5 = 0;
    v6 = 0x278A68000uLL;
    v7 = 0x278A68000uLL;
    do
    {
      deviceOps = [layerCopy deviceOps];
      v9 = [deviceOps objectAtIndexedSubscript:v5];

      gpuCommandBufferList = [(MLCDeviceGPU *)self gpuCommandBufferList];
      v11 = [gpuCommandBufferList objectAtIndexedSubscript:v5];

      objc_opt_class();
      v114 = v9;
      if (objc_opt_isKindOfClass())
      {
        if (![v9 isMPSGraph])
        {
          v29 = v7;
          forwardKernel = [v9 forwardKernel];
          v19 = [forwardKernel exportWeightsAndBiasesWithCommandBuffer:v11 resultStateCanBeTemporary:0];
          v30 = *(v6 + 2936);
          [v19 weights];
          v32 = v31 = v6;
          [v30 synchronizeResource:v32 commandBuffer:v11];

          biases = [v19 biases];

          if (biases)
          {
            v34 = *(v31 + 2936);
            biases2 = [v19 biases];
            [v34 synchronizeResource:biases2 commandBuffer:v11];
          }

          [v114 setExportableState:v19];
          v6 = v31;
          v7 = v29;
          goto LABEL_13;
        }

        v12 = *(v6 + 2936);
        exportableState = [v9 exportableState];
        v14 = [exportableState objectAtIndexedSubscript:0];
        [v12 synchronizeResource:v14 commandBuffer:v11];

        v9 = v114;
        exportableState2 = [v114 exportableState];
        v16 = [exportableState2 count];

        if (v16 >= 2)
        {
          v17 = *(v6 + 2936);
          forwardKernel = [v114 exportableState];
          v19 = [forwardKernel objectAtIndexedSubscript:1];
          [v17 synchronizeResource:v19 commandBuffer:v11];
LABEL_13:

          v9 = v114;
        }
      }

      else
      {
        v20 = *(v7 + 2920);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v21 = *(v6 + 2936);
          exportableState3 = [v9 exportableState];
          v23 = [exportableState3 objectAtIndexedSubscript:0];
          [v21 synchronizeResource:v23 commandBuffer:v11];

          v9 = v114;
          exportableState4 = [v114 exportableState];
          v25 = [exportableState4 count];

          if (v25 >= 2)
          {
            v26 = *(v6 + 2936);
            exportableState5 = [v114 exportableState];
            v28 = [exportableState5 objectAtIndexedSubscript:1];
            [v26 synchronizeResource:v28 commandBuffer:v11];

            v9 = v114;
          }
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
          {
            exportableState6 = [v9 exportableState];
            v37 = exportableState6;
            if (exportableState6)
            {
              v38 = *(v6 + 2936);
              gamma = [exportableState6 gamma];
              [v38 synchronizeResource:gamma commandBuffer:v11];

              v40 = *(v6 + 2936);
              beta = [v37 beta];
              [v40 synchronizeResource:beta commandBuffer:v11];

              v9 = v114;
            }

            movingState = [v9 movingState];
            v43 = movingState;
            if (movingState)
            {
              v44 = *(v6 + 2936);
              mean = [movingState mean];
              [v44 synchronizeResource:mean commandBuffer:v11];

              variance = [v43 variance];
              v9 = v114;
              [MLCGPUHelper synchronizeResource:variance commandBuffer:v11];

              v6 = 0x278A68000;
            }

            [(MLCDeviceGPU *)self synchronizeOptimizerBuffers:v9 commandBuffer:v11];

            goto LABEL_24;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v47 = v9;
            v48 = MEMORY[0x277CBEBF8];
            v49 = [MEMORY[0x277CBEBF8] mutableCopy];
            [v47 setRnnExportedWeightMatrices:v49];

            v50 = [v48 mutableCopy];
            v109 = v47;
            [v47 setRnnExportedBiasTerms:v50];

            v110 = layerCopy;
            v51 = layerCopy;
            descriptor = [v51 descriptor];
            layerCount = [descriptor layerCount];

            descriptor2 = [v51 descriptor];
            isBidirectional = [descriptor2 isBidirectional];

            v112 = layerCount << isBidirectional;
            if (layerCount << isBidirectional)
            {
              v56 = 0;
              v57 = 0;
              do
              {
                for (i = 0; i != 4; ++i)
                {
                  v59 = [&unk_284BA6158 objectAtIndexedSubscript:i];
                  -[MLCDeviceGPU synchronizeWeightMatrixForRNNLayer:matrixId:parameterType:accumulatorIndex:forLSTMNum:forDeviceNum:forGate:](self, "synchronizeWeightMatrixForRNNLayer:matrixId:parameterType:accumulatorIndex:forLSTMNum:forDeviceNum:forGate:", v51, [v59 unsignedIntegerValue], 0, v56, v57, v5, i);

                  ++v56;
                }

                for (j = 0; j != 4; ++j)
                {
                  v61 = [&unk_284BA6170 objectAtIndexedSubscript:j];
                  -[MLCDeviceGPU synchronizeWeightMatrixForRNNLayer:matrixId:parameterType:accumulatorIndex:forLSTMNum:forDeviceNum:forGate:](self, "synchronizeWeightMatrixForRNNLayer:matrixId:parameterType:accumulatorIndex:forLSTMNum:forDeviceNum:forGate:", v51, [v61 unsignedIntegerValue], 1, v56 + j, v57, v5, j);
                }

                biases3 = [v51 biases];

                v56 += 4;
                if (biases3)
                {
                  for (k = 0; k != 4; ++k)
                  {
                    v64 = [&unk_284BA6188 objectAtIndexedSubscript:k];
                    -[MLCDeviceGPU synchronizeWeightMatrixForRNNLayer:matrixId:parameterType:accumulatorIndex:forLSTMNum:forDeviceNum:forGate:](self, "synchronizeWeightMatrixForRNNLayer:matrixId:parameterType:accumulatorIndex:forLSTMNum:forDeviceNum:forGate:", v51, [v64 unsignedIntegerValue], 2, v56, v57, v5, k);

                    ++v56;
                  }
                }

                ++v57;
              }

              while (v57 != v112);
            }

            layerCopy = v110;
            v6 = 0x278A68000;
LABEL_65:
            v7 = 0x278A68000;
            v9 = v114;
            goto LABEL_24;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v111 = layerCopy;
            v65 = v9;
            v115 = 0u;
            v116 = 0u;
            v117 = 0u;
            v118 = 0u;
            exportableState7 = [v65 exportableState];
            v67 = [exportableState7 countByEnumeratingWithState:&v115 objects:v119 count:16];
            if (v67)
            {
              v68 = v67;
              v69 = *v116;
              do
              {
                for (m = 0; m != v68; ++m)
                {
                  if (*v116 != v69)
                  {
                    objc_enumerationMutation(exportableState7);
                  }

                  [*(v6 + 2936) synchronizeResource:*(*(&v115 + 1) + 8 * m) commandBuffer:v11];
                }

                v68 = [exportableState7 countByEnumeratingWithState:&v115 objects:v119 count:16];
              }

              while (v68);
            }

            momentumVectors = [v65 momentumVectors];
            v72 = [momentumVectors count];

            v113 = v65;
            if (v72)
            {
              v73 = 0;
              do
              {
                momentumVectors2 = [v65 momentumVectors];
                v75 = [momentumVectors2 objectAtIndexedSubscript:v73];

                if ([v75 count])
                {
                  v76 = 0;
                  do
                  {
                    v77 = *(v6 + 2936);
                    v78 = [v75 objectAtIndexedSubscript:v76];
                    data = [v78 data];
                    [v77 synchronizeResource:data commandBuffer:v11];

                    v6 = 0x278A68000uLL;
                    ++v76;
                  }

                  while (v76 < [v75 count]);
                }

                ++v73;
                v65 = v113;
                momentumVectors3 = [v113 momentumVectors];
                v81 = [momentumVectors3 count];
              }

              while (v73 < v81);
            }

            velocityVectors = [v65 velocityVectors];
            v83 = [velocityVectors count];

            if (v83)
            {
              v84 = 0;
              do
              {
                velocityVectors2 = [v65 velocityVectors];
                v86 = [velocityVectors2 objectAtIndexedSubscript:v84];

                if ([v86 count])
                {
                  v87 = 0;
                  do
                  {
                    v88 = *(v6 + 2936);
                    v89 = [v86 objectAtIndexedSubscript:v87];
                    data2 = [v89 data];
                    [v88 synchronizeResource:data2 commandBuffer:v11];

                    v6 = 0x278A68000uLL;
                    ++v87;
                  }

                  while (v87 < [v86 count]);
                }

                ++v84;
                v65 = v113;
                velocityVectors3 = [v113 velocityVectors];
                v92 = [velocityVectors3 count];
              }

              while (v84 < v92);
            }

            centerWeightVectors = [v65 centerWeightVectors];
            v94 = [centerWeightVectors count];

            if (v94)
            {
              v95 = 0;
              do
              {
                centerWeightVectors2 = [v65 centerWeightVectors];
                v97 = [centerWeightVectors2 objectAtIndexedSubscript:v95];

                if ([v97 count])
                {
                  v98 = 0;
                  do
                  {
                    v99 = *(v6 + 2936);
                    v100 = [v97 objectAtIndexedSubscript:v98];
                    data3 = [v100 data];
                    [v99 synchronizeResource:data3 commandBuffer:v11];

                    v6 = 0x278A68000;
                    ++v98;
                  }

                  while (v98 < [v97 count]);
                }

                ++v95;
                v65 = v113;
                centerWeightVectors3 = [v113 centerWeightVectors];
                v103 = [centerWeightVectors3 count];
              }

              while (v95 < v103);
            }

            layerCopy = v111;
            goto LABEL_65;
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_24;
          }

          weights = [layerCopy weights];
          deviceMemory = [weights deviceMemory];
          [deviceMemory objectAtIndexedSubscript:v5];
          v107 = v106 = layerCopy;
          v6 = 0x278A68000;
          [MLCGPUHelper synchronizeResource:v107 commandBuffer:v11];

          layerCopy = v106;
          v9 = v114;
        }
      }

      [(MLCDeviceGPU *)self synchronizeOptimizerBuffers:v9 commandBuffer:v11];
LABEL_24:

      ++v5;
    }

    while (v5 < [(MLCDeviceGPU *)self numDevicesToUse]);
  }

  v108 = *MEMORY[0x277D85DE8];
}

- (void)synchronizeOptimizerUpdatesForTensor:(id)tensor
{
  tensorCopy = tensor;
  if ([(MLCDeviceGPU *)self numDevicesToUse])
  {
    v4 = 0;
    do
    {
      gpuCommandBufferList = [(MLCDeviceGPU *)self gpuCommandBufferList];
      v6 = [gpuCommandBufferList objectAtIndexedSubscript:v4];

      deviceMemory = [tensorCopy deviceMemory];
      v8 = [deviceMemory objectAtIndexedSubscript:v4];

      [MLCGPUHelper synchronizeResource:v8 commandBuffer:v6];
      optimizerDeviceData = [tensorCopy optimizerDeviceData];
      v10 = [optimizerDeviceData objectAtIndexedSubscript:v4];
      [(MLCDeviceGPU *)self synchronizeOptimizerBuffers:v10 commandBuffer:v6];

      ++v4;
    }

    while (v4 < [(MLCDeviceGPU *)self numDevicesToUse]);
  }
}

- (void)copyMTLBuffer:(id)buffer toNSData:(id)data
{
  dataCopy = data;
  bufferCopy = buffer;
  bytes = [dataCopy bytes];
  contents = [bufferCopy contents];

  v9 = [dataCopy length];

  memcpy(bytes, contents, v9);
}

- (void)copyMTLBuffer:(id)buffer toBytes:(void *)bytes length:(unint64_t)length
{
  contents = [buffer contents];

  memcpy(bytes, contents, length);
}

- (BOOL)checkToConvertTensor:(id)tensor inLayer:(id)layer
{
  v20 = *MEMORY[0x277D85DE8];
  layerCopy = layer;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  childLayers = [tensor childLayers];
  v7 = [childLayers countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(childLayers);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        if ([v11 isTrainable])
        {
          v12 = v11 == layerCopy;
          goto LABEL_11;
        }
      }

      v8 = [childLayers countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v12 = 1;
LABEL_11:

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

- (void)convertUpdatesToTensorDataForLayer:(id)layer
{
  *(&v593[1] + 4) = *MEMORY[0x277D85DE8];
  layerCopy = layer;
  if (![(MLCDeviceGPU *)self numDevicesToUse])
  {
    goto LABEL_228;
  }

  v5 = 0;
  selfCopy = self;
  v516 = layerCopy;
  do
  {
    deviceOps = [layerCopy deviceOps];
    v534 = v5;
    v7 = [deviceOps objectAtIndexedSubscript:v5];

    layerCopy = v516;
    objc_opt_class();
    v588 = v7;
    if (objc_opt_isKindOfClass())
    {
      v8 = v516;
      weights = [v8 weights];
      v10 = [(MLCDeviceGPU *)self checkToConvertTensor:weights inLayer:v8];

      exportableState7 = v8;
      if (!v10)
      {
        v84 = v8;
LABEL_96:
        biases = [v84 biases];
        if (biases)
        {
          v169 = biases;
          biases2 = [exportableState7 biases];
          v171 = [(MLCDeviceGPU *)selfCopy checkToConvertTensor:biases2 inLayer:exportableState7];

          if (v171)
          {
            isMPSGraph = [v588 isMPSGraph];
            exportableState = [v588 exportableState];
            v174 = exportableState;
            if (isMPSGraph)
            {
              [exportableState objectAtIndexedSubscript:1];
            }

            else
            {
              [exportableState biases];
            }
            v175 = ;
            biases3 = [exportableState7 biases];
            data = [biases3 data];
            [(MLCDeviceGPU *)selfCopy copyMTLBuffer:v175 toNSData:data];
          }
        }

        v7 = v588;
        momentumVectors = [v588 momentumVectors];
        momentumVectors2 = [v588 momentumVectors];
        v179 = [momentumVectors2 count];

        if (v179)
        {
          v180 = 0;
          while (v180 != 1)
          {
            if (!v180)
            {
              v574 = [momentumVectors objectAtIndexedSubscript:0];
              data2 = [v574 data];
              weightsParameter = [exportableState7 weightsParameter];
              tensor = [weightsParameter tensor];
              optimizerData = [tensor optimizerData];
              v183 = [optimizerData objectAtIndexedSubscript:0];
              bytes = [v183 bytes];
              weightsParameter2 = [exportableState7 weightsParameter];
LABEL_108:
              v186 = weightsParameter2;
              tensor2 = [weightsParameter2 tensor];
              optimizerData2 = [tensor2 optimizerData];
              v189 = [optimizerData2 objectAtIndexedSubscript:0];
              -[MLCDeviceGPU copyMTLBuffer:toBytes:length:](selfCopy, "copyMTLBuffer:toBytes:length:", data2, bytes, [v189 length]);

              v7 = v588;
            }

            ++v180;
            momentumVectors3 = [v7 momentumVectors];
            v191 = [momentumVectors3 count];

            if (v180 >= v191)
            {
              goto LABEL_110;
            }
          }

          v574 = [momentumVectors objectAtIndexedSubscript:1];
          data2 = [v574 data];
          weightsParameter = [exportableState7 biasesParameter];
          tensor = [weightsParameter tensor];
          optimizerData = [tensor optimizerData];
          v183 = [optimizerData objectAtIndexedSubscript:0];
          bytes = [v183 bytes];
          weightsParameter2 = [exportableState7 biasesParameter];
          goto LABEL_108;
        }

LABEL_110:
        velocityVectors = [v7 velocityVectors];
        velocityVectors2 = [v7 velocityVectors];
        v193 = [velocityVectors2 count];

        if (v193)
        {
          v194 = 0;
          while (v194 != 1)
          {
            if (!v194)
            {
              v575 = [velocityVectors objectAtIndexedSubscript:0];
              data3 = [v575 data];
              weightsParameter3 = [exportableState7 weightsParameter];
              tensor3 = [weightsParameter3 tensor];
              optimizerData3 = [tensor3 optimizerData];
              v197 = [optimizerData3 objectAtIndexedSubscript:1];
              bytes2 = [v197 bytes];
              weightsParameter4 = [exportableState7 weightsParameter];
LABEL_116:
              v200 = weightsParameter4;
              tensor4 = [weightsParameter4 tensor];
              optimizerData4 = [tensor4 optimizerData];
              v203 = [optimizerData4 objectAtIndexedSubscript:1];
              -[MLCDeviceGPU copyMTLBuffer:toBytes:length:](selfCopy, "copyMTLBuffer:toBytes:length:", data3, bytes2, [v203 length]);

              v7 = v588;
            }

            ++v194;
            velocityVectors3 = [v7 velocityVectors];
            v205 = [velocityVectors3 count];

            if (v194 >= v205)
            {
              goto LABEL_118;
            }
          }

          v575 = [velocityVectors objectAtIndexedSubscript:1];
          data3 = [v575 data];
          weightsParameter3 = [exportableState7 biasesParameter];
          tensor3 = [weightsParameter3 tensor];
          optimizerData3 = [tensor3 optimizerData];
          v197 = [optimizerData3 objectAtIndexedSubscript:1];
          bytes2 = [v197 bytes];
          weightsParameter4 = [exportableState7 biasesParameter];
          goto LABEL_116;
        }

LABEL_118:
        centerWeightVectors = [v7 centerWeightVectors];
        centerWeightVectors2 = [v7 centerWeightVectors];
        v207 = [centerWeightVectors2 count];

        if (v207)
        {
          v208 = 0;
          while (v208 != 1)
          {
            if (!v208)
            {
              v576 = [centerWeightVectors objectAtIndexedSubscript:0];
              data4 = [v576 data];
              weightsParameter5 = [exportableState7 weightsParameter];
              tensor5 = [weightsParameter5 tensor];
              optimizerData5 = [tensor5 optimizerData];
              v211 = [optimizerData5 objectAtIndexedSubscript:2];
              bytes3 = [v211 bytes];
              weightsParameter6 = [exportableState7 weightsParameter];
LABEL_124:
              v214 = weightsParameter6;
              tensor6 = [weightsParameter6 tensor];
              optimizerData6 = [tensor6 optimizerData];
              v217 = [optimizerData6 objectAtIndexedSubscript:2];
              -[MLCDeviceGPU copyMTLBuffer:toBytes:length:](selfCopy, "copyMTLBuffer:toBytes:length:", data4, bytes3, [v217 length]);

              v7 = v588;
            }

            ++v208;
            centerWeightVectors3 = [v7 centerWeightVectors];
            v219 = [centerWeightVectors3 count];

            if (v208 >= v219)
            {
              goto LABEL_126;
            }
          }

          v576 = [centerWeightVectors objectAtIndexedSubscript:1];
          data4 = [v576 data];
          weightsParameter5 = [exportableState7 biasesParameter];
          tensor5 = [weightsParameter5 tensor];
          optimizerData5 = [tensor5 optimizerData];
          v211 = [optimizerData5 objectAtIndexedSubscript:2];
          bytes3 = [v211 bytes];
          weightsParameter6 = [exportableState7 biasesParameter];
          goto LABEL_124;
        }

        goto LABEL_126;
      }

      descriptor = [v8 descriptor];
      if ([descriptor isConvolutionTranspose])
      {
        weights2 = [v8 weights];
        data5 = [weights2 data];

        if (data5)
        {
          if ([v588 isMPSGraph])
          {
            exportableState2 = [v588 exportableState];
            v566 = [exportableState2 objectAtIndexedSubscript:0];
            contents = [v566 contents];
            weights3 = [exportableState7 weights];
            data6 = [weights3 data];
            bytes4 = [data6 bytes];
            descriptor2 = [exportableState7 descriptor];
            kernelWidth = [descriptor2 kernelWidth];
            descriptor3 = [exportableState7 descriptor];
            kernelHeight = [descriptor3 kernelHeight];
            descriptor4 = [exportableState7 descriptor];
            outputFeatureChannelCount = [descriptor4 outputFeatureChannelCount];
            descriptor5 = [exportableState7 descriptor];
            v20 = outputFeatureChannelCount / [descriptor5 groupCount];
            descriptor6 = [exportableState7 descriptor];
            inputFeatureChannelCount = [descriptor6 inputFeatureChannelCount];
            weights4 = [exportableState7 weights];
            descriptor7 = [weights4 descriptor];
            LODWORD(v504) = [descriptor7 dataType];
            LOBYTE(v20) = [MLCDataHelper convertSourceHWOI:contents toResultOIHW:bytes4 width:kernelWidth height:kernelHeight inputFeatureChannelCount:v20 outputFeatureChannelCount:inputFeatureChannelCount dataType:v504];

            if ((v20 & 1) == 0)
            {
              v25 = +[MLCLog framework];
              self = selfCopy;
              if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
              {
                layerCopy = v516;
                v7 = v588;
LABEL_11:
                v26 = v25;
                goto LABEL_130;
              }

              [(MLCDeviceGPU(MLCEngineDispatch) *)v592 convertUpdatesToTensorDataForLayer:v593, v25];
              v26 = v25;
LABEL_225:
              layerCopy = v516;
              v7 = v588;
              goto LABEL_130;
            }

            goto LABEL_95;
          }

          exportableState3 = [v588 exportableState];
          weights5 = [exportableState3 weights];
          weights6 = [exportableState7 weights];
          data7 = [weights6 data];
          weights7 = [exportableState7 weights];
          descriptor8 = [weights7 descriptor];
          [(MLCDeviceGPU *)selfCopy rotateAndCopyMTLBuffer:weights5 toNSData:data7 withTensorDescriptor:descriptor8];

          goto LABEL_93;
        }
      }

      else
      {
      }

      if ([v588 isMPSGraph])
      {
        exportableState4 = [v588 exportableState];
        v573 = [exportableState4 objectAtIndexedSubscript:0];
        contents2 = [v573 contents];
        weights8 = [exportableState7 weights];
        data8 = [weights8 data];
        bytes5 = [data8 bytes];
        descriptor9 = [exportableState7 descriptor];
        kernelWidth2 = [descriptor9 kernelWidth];
        descriptor10 = [exportableState7 descriptor];
        kernelHeight2 = [descriptor10 kernelHeight];
        descriptor11 = [exportableState7 descriptor];
        inputFeatureChannelCount2 = [descriptor11 inputFeatureChannelCount];
        descriptor12 = [exportableState7 descriptor];
        groupCount = [descriptor12 groupCount];
        descriptor13 = [exportableState7 descriptor];
        usesDepthwiseConvolution = [descriptor13 usesDepthwiseConvolution];
        descriptor14 = [exportableState7 descriptor];
        outputFeatureChannelCount2 = [descriptor14 outputFeatureChannelCount];
        if (usesDepthwiseConvolution)
        {
          descriptor15 = [exportableState7 descriptor];
          outputFeatureChannelCount2 /= [descriptor15 inputFeatureChannelCount];
          v156 = v507;
        }

        else
        {
          v156 = descriptor14;
          descriptor14 = v506;
        }

        v161 = inputFeatureChannelCount2 / groupCount;
        weights9 = [exportableState7 weights];
        descriptor16 = [weights9 descriptor];
        LODWORD(v504) = [descriptor16 dataType];
        v164 = [MLCDataHelper convertSourceHWIO:contents2 toResultOIHW:bytes5 width:kernelWidth2 height:kernelHeight2 inputFeatureChannelCount:v161 outputFeatureChannelCount:outputFeatureChannelCount2 dataType:v504];

        v165 = v156;
        if (usesDepthwiseConvolution)
        {

          v165 = descriptor14;
        }

        v507 = v156;
        if (v164)
        {
          v506 = descriptor14;
LABEL_95:
          v84 = exportableState7;
          goto LABEL_96;
        }

        exportableState3 = +[MLCLog framework];
        if (os_log_type_enabled(exportableState3, OS_LOG_TYPE_ERROR))
        {
          [(MLCDeviceGPU(MLCEngineDispatch) *)v590 convertUpdatesToTensorDataForLayer:exportableState3];
        }

        v506 = descriptor14;
LABEL_94:

        goto LABEL_95;
      }

      exportableState3 = [v588 exportableState];
      weights5 = [exportableState3 weights];
      weights6 = [exportableState7 weights];
      data7 = [weights6 data];
      [(MLCDeviceGPU *)selfCopy copyMTLBuffer:weights5 toNSData:data7];
LABEL_93:

      goto LABEL_94;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v27 = v516;
      weights10 = [v27 weights];
      v29 = [(MLCDeviceGPU *)self checkToConvertTensor:weights10 inLayer:v27];

      if (v29)
      {
        exportableState5 = [v7 exportableState];
        v31 = [exportableState5 objectAtIndexedSubscript:0];
        weights11 = [v27 weights];
        data9 = [weights11 data];
        [(MLCDeviceGPU *)selfCopy copyMTLBuffer:v31 toNSData:data9];
      }

      biases4 = [v27 biases];
      if (biases4)
      {
        v35 = biases4;
        biases5 = [v27 biases];
        v37 = [(MLCDeviceGPU *)selfCopy checkToConvertTensor:biases5 inLayer:v27];

        if (v37)
        {
          exportableState6 = [v588 exportableState];
          v39 = [exportableState6 objectAtIndexedSubscript:1];
          biases6 = [v27 biases];
          data10 = [biases6 data];
          [(MLCDeviceGPU *)selfCopy copyMTLBuffer:v39 toNSData:data10];
        }
      }

      exportableState7 = v27;
      v7 = v588;
      momentumVectors = [v588 momentumVectors];
      momentumVectors4 = [v588 momentumVectors];
      v43 = [momentumVectors4 count];

      if (v43)
      {
        v44 = 0;
        while (v44 != 1)
        {
          if (!v44)
          {
            v567 = [momentumVectors objectAtIndexedSubscript:0];
            data11 = [v567 data];
            weightsParameter7 = [exportableState7 weightsParameter];
            tensor7 = [weightsParameter7 tensor];
            optimizerData7 = [tensor7 optimizerData];
            v47 = [optimizerData7 objectAtIndexedSubscript:0];
            bytes6 = [v47 bytes];
            weightsParameter8 = [exportableState7 weightsParameter];
LABEL_24:
            v50 = weightsParameter8;
            tensor8 = [weightsParameter8 tensor];
            optimizerData8 = [tensor8 optimizerData];
            v53 = [optimizerData8 objectAtIndexedSubscript:0];
            -[MLCDeviceGPU copyMTLBuffer:toBytes:length:](selfCopy, "copyMTLBuffer:toBytes:length:", data11, bytes6, [v53 length]);

            v7 = v588;
          }

          ++v44;
          momentumVectors5 = [v7 momentumVectors];
          v55 = [momentumVectors5 count];

          if (v44 >= v55)
          {
            goto LABEL_26;
          }
        }

        v567 = [momentumVectors objectAtIndexedSubscript:1];
        data11 = [v567 data];
        weightsParameter7 = [exportableState7 biasesParameter];
        tensor7 = [weightsParameter7 tensor];
        optimizerData7 = [tensor7 optimizerData];
        v47 = [optimizerData7 objectAtIndexedSubscript:0];
        bytes6 = [v47 bytes];
        weightsParameter8 = [exportableState7 biasesParameter];
        goto LABEL_24;
      }

LABEL_26:
      velocityVectors = [v7 velocityVectors];
      velocityVectors4 = [v7 velocityVectors];
      v57 = [velocityVectors4 count];

      if (v57)
      {
        v58 = 0;
        while (v58 != 1)
        {
          if (!v58)
          {
            v568 = [velocityVectors objectAtIndexedSubscript:0];
            data12 = [v568 data];
            weightsParameter9 = [exportableState7 weightsParameter];
            tensor9 = [weightsParameter9 tensor];
            optimizerData9 = [tensor9 optimizerData];
            v61 = [optimizerData9 objectAtIndexedSubscript:1];
            bytes7 = [v61 bytes];
            weightsParameter10 = [exportableState7 weightsParameter];
LABEL_32:
            v64 = weightsParameter10;
            tensor10 = [weightsParameter10 tensor];
            optimizerData10 = [tensor10 optimizerData];
            v67 = [optimizerData10 objectAtIndexedSubscript:1];
            -[MLCDeviceGPU copyMTLBuffer:toBytes:length:](selfCopy, "copyMTLBuffer:toBytes:length:", data12, bytes7, [v67 length]);

            v7 = v588;
          }

          ++v58;
          velocityVectors5 = [v7 velocityVectors];
          v69 = [velocityVectors5 count];

          if (v58 >= v69)
          {
            goto LABEL_34;
          }
        }

        v568 = [velocityVectors objectAtIndexedSubscript:1];
        data12 = [v568 data];
        weightsParameter9 = [exportableState7 biasesParameter];
        tensor9 = [weightsParameter9 tensor];
        optimizerData9 = [tensor9 optimizerData];
        v61 = [optimizerData9 objectAtIndexedSubscript:1];
        bytes7 = [v61 bytes];
        weightsParameter10 = [exportableState7 biasesParameter];
        goto LABEL_32;
      }

LABEL_34:
      centerWeightVectors = [v7 centerWeightVectors];
      centerWeightVectors4 = [v7 centerWeightVectors];
      v71 = [centerWeightVectors4 count];

      if (!v71)
      {
LABEL_126:

        v147 = velocityVectors;
        goto LABEL_127;
      }

      v72 = 0;
      while (v72 != 1)
      {
        if (!v72)
        {
          v569 = [centerWeightVectors objectAtIndexedSubscript:0];
          data13 = [v569 data];
          weightsParameter11 = [exportableState7 weightsParameter];
          tensor11 = [weightsParameter11 tensor];
          optimizerData11 = [tensor11 optimizerData];
          v75 = [optimizerData11 objectAtIndexedSubscript:2];
          bytes8 = [v75 bytes];
          weightsParameter12 = [exportableState7 weightsParameter];
LABEL_40:
          v78 = weightsParameter12;
          tensor12 = [weightsParameter12 tensor];
          optimizerData12 = [tensor12 optimizerData];
          v81 = [optimizerData12 objectAtIndexedSubscript:2];
          -[MLCDeviceGPU copyMTLBuffer:toBytes:length:](selfCopy, "copyMTLBuffer:toBytes:length:", data13, bytes8, [v81 length]);

          v7 = v588;
        }

        ++v72;
        centerWeightVectors5 = [v7 centerWeightVectors];
        v83 = [centerWeightVectors5 count];

        if (v72 >= v83)
        {
          goto LABEL_126;
        }
      }

      v569 = [centerWeightVectors objectAtIndexedSubscript:1];
      data13 = [v569 data];
      weightsParameter11 = [exportableState7 biasesParameter];
      tensor11 = [weightsParameter11 tensor];
      optimizerData11 = [tensor11 optimizerData];
      v75 = [optimizerData11 objectAtIndexedSubscript:2];
      bytes8 = [v75 bytes];
      weightsParameter12 = [exportableState7 biasesParameter];
      goto LABEL_40;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      exportableState7 = [v7 exportableState];
      v85 = v516;
      gamma = [v85 gamma];
      selfCopy2 = self;
      v88 = [(MLCDeviceGPU *)self checkToConvertTensor:gamma inLayer:v85];

      if (v88)
      {
        gamma2 = [exportableState7 gamma];
        gamma3 = [v85 gamma];
        data14 = [gamma3 data];
        [(MLCDeviceGPU *)selfCopy2 copyMTLBuffer:gamma2 toNSData:data14];

        v7 = v588;
      }

      beta = [v85 beta];
      momentumVectors = v85;
      v93 = [(MLCDeviceGPU *)selfCopy2 checkToConvertTensor:beta inLayer:v85];

      if (v93)
      {
        beta2 = [exportableState7 beta];
        beta3 = [v85 beta];
        data15 = [beta3 data];
        [(MLCDeviceGPU *)selfCopy copyMTLBuffer:beta2 toNSData:data15];

        v7 = v588;
      }

      movingState = [v7 movingState];
      v98 = movingState;
      if (movingState)
      {
        mean = [movingState mean];
        mean2 = [v85 mean];
        data16 = [mean2 data];
        [(MLCDeviceGPU *)selfCopy copyMTLBuffer:mean toNSData:data16];

        variance = [v98 variance];
        variance2 = [v85 variance];
        data17 = [variance2 data];
        [(MLCDeviceGPU *)selfCopy copyMTLBuffer:variance toNSData:data17];

        v7 = v588;
      }

      momentumVectors6 = [v7 momentumVectors];
      momentumVectors7 = [v7 momentumVectors];
      v106 = [momentumVectors7 count];

      v513 = v98;
      if (v106)
      {
        v107 = 0;
        while (v107 != 1)
        {
          if (!v107)
          {
            v570 = [momentumVectors6 objectAtIndexedSubscript:0];
            data18 = [v570 data];
            betaParameter = [momentumVectors betaParameter];
            tensor13 = [betaParameter tensor];
            optimizerData13 = [tensor13 optimizerData];
            v110 = [optimizerData13 objectAtIndexedSubscript:0];
            bytes9 = [v110 bytes];
            betaParameter2 = [momentumVectors betaParameter];
LABEL_60:
            v113 = betaParameter2;
            tensor14 = [betaParameter2 tensor];
            optimizerData14 = [tensor14 optimizerData];
            v116 = [optimizerData14 objectAtIndexedSubscript:0];
            -[MLCDeviceGPU copyMTLBuffer:toBytes:length:](selfCopy, "copyMTLBuffer:toBytes:length:", data18, bytes9, [v116 length]);

            v7 = v588;
          }

          ++v107;
          momentumVectors8 = [v7 momentumVectors];
          v118 = [momentumVectors8 count];

          if (v107 >= v118)
          {
            goto LABEL_62;
          }
        }

        v570 = [momentumVectors6 objectAtIndexedSubscript:1];
        data18 = [v570 data];
        betaParameter = [momentumVectors gammaParameter];
        tensor13 = [betaParameter tensor];
        optimizerData13 = [tensor13 optimizerData];
        v110 = [optimizerData13 objectAtIndexedSubscript:0];
        bytes9 = [v110 bytes];
        betaParameter2 = [momentumVectors gammaParameter];
        goto LABEL_60;
      }

LABEL_62:
      velocityVectors6 = [v7 velocityVectors];
      velocityVectors7 = [v7 velocityVectors];
      v120 = [velocityVectors7 count];

      if (v120)
      {
        v121 = 0;
        while (v121 != 1)
        {
          if (!v121)
          {
            v571 = [velocityVectors6 objectAtIndexedSubscript:0];
            data19 = [v571 data];
            betaParameter3 = [momentumVectors betaParameter];
            tensor15 = [betaParameter3 tensor];
            optimizerData15 = [tensor15 optimizerData];
            v124 = [optimizerData15 objectAtIndexedSubscript:1];
            bytes10 = [v124 bytes];
            betaParameter4 = [momentumVectors betaParameter];
LABEL_68:
            v127 = betaParameter4;
            tensor16 = [betaParameter4 tensor];
            optimizerData16 = [tensor16 optimizerData];
            v130 = [optimizerData16 objectAtIndexedSubscript:1];
            -[MLCDeviceGPU copyMTLBuffer:toBytes:length:](selfCopy, "copyMTLBuffer:toBytes:length:", data19, bytes10, [v130 length]);

            v7 = v588;
          }

          ++v121;
          velocityVectors8 = [v7 velocityVectors];
          v132 = [velocityVectors8 count];

          if (v121 >= v132)
          {
            goto LABEL_70;
          }
        }

        v571 = [velocityVectors6 objectAtIndexedSubscript:1];
        data19 = [v571 data];
        betaParameter3 = [momentumVectors gammaParameter];
        tensor15 = [betaParameter3 tensor];
        optimizerData15 = [tensor15 optimizerData];
        v124 = [optimizerData15 objectAtIndexedSubscript:1];
        bytes10 = [v124 bytes];
        betaParameter4 = [momentumVectors gammaParameter];
        goto LABEL_68;
      }

LABEL_70:
      centerWeightVectors6 = [v7 centerWeightVectors];
      centerWeightVectors7 = [v7 centerWeightVectors];
      v134 = [centerWeightVectors7 count];

      if (!v134)
      {
LABEL_78:

        v147 = v513;
LABEL_127:

LABEL_128:
        self = selfCopy;
        layerCopy = v516;
        goto LABEL_129;
      }

      v135 = 0;
      while (v135 != 1)
      {
        if (!v135)
        {
          v572 = [centerWeightVectors6 objectAtIndexedSubscript:0];
          data20 = [v572 data];
          betaParameter5 = [momentumVectors betaParameter];
          tensor17 = [betaParameter5 tensor];
          optimizerData17 = [tensor17 optimizerData];
          v138 = [optimizerData17 objectAtIndexedSubscript:2];
          bytes11 = [v138 bytes];
          betaParameter6 = [momentumVectors betaParameter];
LABEL_76:
          v141 = betaParameter6;
          tensor18 = [betaParameter6 tensor];
          optimizerData18 = [tensor18 optimizerData];
          v144 = [optimizerData18 objectAtIndexedSubscript:2];
          -[MLCDeviceGPU copyMTLBuffer:toBytes:length:](selfCopy, "copyMTLBuffer:toBytes:length:", data20, bytes11, [v144 length]);

          v7 = v588;
        }

        ++v135;
        centerWeightVectors8 = [v7 centerWeightVectors];
        v146 = [centerWeightVectors8 count];

        if (v135 >= v146)
        {
          goto LABEL_78;
        }
      }

      v572 = [centerWeightVectors6 objectAtIndexedSubscript:1];
      data20 = [v572 data];
      betaParameter5 = [momentumVectors gammaParameter];
      tensor17 = [betaParameter5 tensor];
      optimizerData17 = [tensor17 optimizerData];
      v138 = [optimizerData17 objectAtIndexedSubscript:2];
      bytes11 = [v138 bytes];
      betaParameter6 = [momentumVectors gammaParameter];
      goto LABEL_76;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v220 = v516;
      weights12 = [v220 weights];
      exportableState7 = v220;
      v222 = [(MLCDeviceGPU *)self checkToConvertTensor:weights12 inLayer:v220];

      if (v222)
      {
        weights13 = [v220 weights];
        deviceMemory = [weights13 deviceMemory];
        v225 = [deviceMemory objectAtIndexedSubscript:v534];
        weights14 = [v220 weights];
        data21 = [weights14 data];
        [(MLCDeviceGPU *)selfCopy copyMTLBuffer:v225 toNSData:data21];

        v7 = v588;
      }

      momentumVectors9 = [v7 momentumVectors];
      v229 = momentumVectors9;
      if (momentumVectors9)
      {
        v586 = [momentumVectors9 objectAtIndexedSubscript:0];
        data22 = [v586 data];
        weightsParameter13 = [exportableState7 weightsParameter];
        tensor19 = [weightsParameter13 tensor];
        optimizerData19 = [tensor19 optimizerData];
        v233 = [optimizerData19 objectAtIndexedSubscript:0];
        bytes12 = [v233 bytes];
        weightsParameter14 = [exportableState7 weightsParameter];
        tensor20 = [weightsParameter14 tensor];
        optimizerData20 = [tensor20 optimizerData];
        v238 = [optimizerData20 objectAtIndexedSubscript:0];
        -[MLCDeviceGPU copyMTLBuffer:toBytes:length:](selfCopy, "copyMTLBuffer:toBytes:length:", data22, bytes12, [v238 length]);

        v7 = v588;
      }

      momentumVectors = v229;
      velocityVectors9 = [v7 velocityVectors];
      v240 = velocityVectors9;
      v578 = velocityVectors9;
      if (velocityVectors9)
      {
        v559 = [velocityVectors9 objectAtIndexedSubscript:0];
        data23 = [v559 data];
        weightsParameter15 = [exportableState7 weightsParameter];
        tensor21 = [weightsParameter15 tensor];
        optimizerData21 = [tensor21 optimizerData];
        v245 = [optimizerData21 objectAtIndexedSubscript:1];
        bytes13 = [v245 bytes];
        weightsParameter16 = [exportableState7 weightsParameter];
        tensor22 = [weightsParameter16 tensor];
        optimizerData22 = [tensor22 optimizerData];
        v250 = [optimizerData22 objectAtIndexedSubscript:1];
        -[MLCDeviceGPU copyMTLBuffer:toBytes:length:](selfCopy, "copyMTLBuffer:toBytes:length:", data23, bytes13, [v250 length]);

        v7 = v588;
        v240 = v578;
      }

      centerWeightVectors9 = [v7 centerWeightVectors];
      v252 = centerWeightVectors9;
      if (centerWeightVectors9)
      {
        v560 = [centerWeightVectors9 objectAtIndexedSubscript:0];
        data24 = [v560 data];
        weightsParameter17 = [exportableState7 weightsParameter];
        tensor23 = [weightsParameter17 tensor];
        optimizerData23 = [tensor23 optimizerData];
        v256 = [optimizerData23 objectAtIndexedSubscript:2];
        bytes14 = [v256 bytes];
        weightsParameter18 = [exportableState7 weightsParameter];
        tensor24 = [weightsParameter18 tensor];
        optimizerData24 = [tensor24 optimizerData];
        v261 = [optimizerData24 objectAtIndexedSubscript:2];
        -[MLCDeviceGPU copyMTLBuffer:toBytes:length:](selfCopy, "copyMTLBuffer:toBytes:length:", data24, bytes14, [v261 length]);

        v7 = v588;
        v240 = v578;
      }

      goto LABEL_128;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v262 = v516;
      v263 = v7;
      exportableState7 = v262;
      descriptor17 = [v262 descriptor];
      layerCount = [descriptor17 layerCount];

      momentumVectors = v263;
      v515 = layerCount << [v263 isBidirectional];
      if (v515)
      {
        v532 = 0;
        v266 = 0;
        do
        {
          v267 = 0;
          v268 = 4 * v266;
          v520 = v266;
          v525 = 4 * v266;
          do
          {
            v269 = v267 & 3;
            rnnExportedWeightMatrices = [momentumVectors rnnExportedWeightMatrices];
            v267 = [rnnExportedWeightMatrices objectAtIndexedSubscript:v532 + v267];

            v561 = v267;
            v579 = v267;
            if (v267 < 4)
            {
              inputWeights = [exportableState7 inputWeights];
              v268 = [inputWeights objectAtIndexedSubscript:v269 | v268];

              data25 = [v267 data];
              v546 = v268;
              data26 = [v268 data];
              [(MLCDeviceGPU *)selfCopy copyMTLBuffer:data25 toNSData:data26];

              [exportableState7 inputWeightsParameters];
            }

            else
            {
              hiddenWeights = [exportableState7 hiddenWeights];
              v2682 = [hiddenWeights objectAtIndexedSubscript:v269 | v268];

              data27 = [v267 data];
              v546 = v2682;
              data28 = [v2682 data];
              [(MLCDeviceGPU *)selfCopy copyMTLBuffer:data27 toNSData:data28];

              [exportableState7 hiddenWeightsParameters];
            }
            v280 = ;
            v2683 = [v280 objectAtIndexedSubscript:v269 | v268];

            tensor25 = [v2683 tensor];
            optimizerData25 = [tensor25 optimizerData];
            v284 = [optimizerData25 count];

            if (v284)
            {
              tensor26 = [v2683 tensor];
              optimizerDeviceData = [tensor26 optimizerDeviceData];
              v287 = [optimizerDeviceData objectAtIndexedSubscript:v534];
              momentumVectors10 = [v287 momentumVectors];
              v289 = [momentumVectors10 objectAtIndexedSubscript:0];

              data29 = [v289 data];
              tensor27 = [v2683 tensor];
              optimizerData26 = [tensor27 optimizerData];
              v293 = [optimizerData26 objectAtIndexedSubscript:0];
              bytes15 = [v293 bytes];
              tensor28 = [v2683 tensor];
              optimizerData27 = [tensor28 optimizerData];
              v297 = [optimizerData27 objectAtIndexedSubscript:0];
              -[MLCDeviceGPU copyMTLBuffer:toBytes:length:](selfCopy, "copyMTLBuffer:toBytes:length:", data29, bytes15, [v297 length]);
            }

            tensor29 = [v2683 tensor];
            optimizerData28 = [tensor29 optimizerData];
            v300 = [optimizerData28 count];

            if (v300 >= 2)
            {
              tensor30 = [v2683 tensor];
              optimizerDeviceData2 = [tensor30 optimizerDeviceData];
              v303 = [optimizerDeviceData2 objectAtIndexedSubscript:v534];
              velocityVectors10 = [v303 velocityVectors];
              v305 = [velocityVectors10 objectAtIndexedSubscript:0];

              data30 = [v305 data];
              tensor31 = [v2683 tensor];
              optimizerData29 = [tensor31 optimizerData];
              v309 = [optimizerData29 objectAtIndexedSubscript:1];
              bytes16 = [v309 bytes];
              tensor32 = [v2683 tensor];
              optimizerData30 = [tensor32 optimizerData];
              v313 = [optimizerData30 objectAtIndexedSubscript:1];
              -[MLCDeviceGPU copyMTLBuffer:toBytes:length:](selfCopy, "copyMTLBuffer:toBytes:length:", data30, bytes16, [v313 length]);
            }

            tensor33 = [v2683 tensor];
            optimizerData31 = [tensor33 optimizerData];
            v316 = [optimizerData31 count];

            if (v316 >= 3)
            {
              tensor34 = [v2683 tensor];
              optimizerDeviceData3 = [tensor34 optimizerDeviceData];
              v319 = [optimizerDeviceData3 objectAtIndexedSubscript:v534];
              centerWeightVectors10 = [v319 centerWeightVectors];
              v321 = [centerWeightVectors10 objectAtIndexedSubscript:0];

              data31 = [v321 data];
              tensor35 = [v2683 tensor];
              optimizerData32 = [tensor35 optimizerData];
              v325 = [optimizerData32 objectAtIndexedSubscript:2];
              bytes17 = [v325 bytes];
              tensor36 = [v2683 tensor];
              optimizerData33 = [tensor36 optimizerData];
              v329 = [optimizerData33 objectAtIndexedSubscript:2];
              -[MLCDeviceGPU copyMTLBuffer:toBytes:length:](selfCopy, "copyMTLBuffer:toBytes:length:", data31, bytes17, [v329 length]);
            }

            v267 = v579 + 1;
            v268 = v525;
          }

          while (v579 != 7);
          v266 = v520 + 1;
          v532 += 8;
        }

        while (v520 + 1 != v515);
      }

      biases7 = [exportableState7 biases];

      self = selfCopy;
      if (biases7)
      {
        v26 = momentumVectors;
        if (v515)
        {
          v331 = 0;
          v332 = 0;
          do
          {
            v511 = v332;
            v521 = v331;
            v333 = 4;
            do
            {
              v562 = v333;
              rnnExportedBiasTerms = [v26 rnnExportedBiasTerms];
              v335 = [rnnExportedBiasTerms objectAtIndexedSubscript:v331];

              biases8 = [exportableState7 biases];
              v337 = [biases8 objectAtIndexedSubscript:v331];

              v547 = v335;
              data32 = [v335 data];
              v533 = v337;
              data33 = [v337 data];
              [(MLCDeviceGPU *)selfCopy copyMTLBuffer:data32 toNSData:data33];

              biasesParameters = [exportableState7 biasesParameters];
              v580 = v331;
              v341 = [biasesParameters objectAtIndexedSubscript:v331];

              tensor37 = [v341 tensor];
              optimizerData34 = [tensor37 optimizerData];
              v344 = [optimizerData34 count];

              if (v344)
              {
                tensor38 = [v341 tensor];
                optimizerDeviceData4 = [tensor38 optimizerDeviceData];
                v347 = [optimizerDeviceData4 objectAtIndexedSubscript:v534];
                momentumVectors11 = [v347 momentumVectors];
                v526 = [momentumVectors11 objectAtIndexedSubscript:0];

                data34 = [v526 data];
                tensor39 = [v341 tensor];
                optimizerData35 = [tensor39 optimizerData];
                v352 = [optimizerData35 objectAtIndexedSubscript:0];
                bytes18 = [v352 bytes];
                tensor40 = [v341 tensor];
                optimizerData36 = [tensor40 optimizerData];
                v356 = [optimizerData36 objectAtIndexedSubscript:0];
                -[MLCDeviceGPU copyMTLBuffer:toBytes:length:](selfCopy, "copyMTLBuffer:toBytes:length:", data34, bytes18, [v356 length]);
              }

              tensor41 = [v341 tensor];
              optimizerData37 = [tensor41 optimizerData];
              v359 = [optimizerData37 count];

              if (v359 >= 2)
              {
                tensor42 = [v341 tensor];
                optimizerDeviceData5 = [tensor42 optimizerDeviceData];
                v362 = [optimizerDeviceData5 objectAtIndexedSubscript:v534];
                velocityVectors11 = [v362 velocityVectors];
                v364 = [velocityVectors11 objectAtIndexedSubscript:0];

                data35 = [v364 data];
                tensor43 = [v341 tensor];
                optimizerData38 = [tensor43 optimizerData];
                v368 = [optimizerData38 objectAtIndexedSubscript:1];
                bytes19 = [v368 bytes];
                tensor44 = [v341 tensor];
                optimizerData39 = [tensor44 optimizerData];
                v372 = [optimizerData39 objectAtIndexedSubscript:1];
                -[MLCDeviceGPU copyMTLBuffer:toBytes:length:](selfCopy, "copyMTLBuffer:toBytes:length:", data35, bytes19, [v372 length]);
              }

              tensor45 = [v341 tensor];
              optimizerData40 = [tensor45 optimizerData];
              v375 = [optimizerData40 count];

              if (v375 >= 3)
              {
                tensor46 = [v341 tensor];
                optimizerDeviceData6 = [tensor46 optimizerDeviceData];
                v378 = [optimizerDeviceData6 objectAtIndexedSubscript:v534];
                centerWeightVectors11 = [v378 centerWeightVectors];
                v527 = [centerWeightVectors11 objectAtIndexedSubscript:0];

                data36 = [v527 data];
                tensor47 = [v341 tensor];
                optimizerData41 = [tensor47 optimizerData];
                v383 = [optimizerData41 objectAtIndexedSubscript:2];
                bytes20 = [v383 bytes];
                tensor48 = [v341 tensor];
                optimizerData42 = [tensor48 optimizerData];
                v387 = [optimizerData42 objectAtIndexedSubscript:2];
                -[MLCDeviceGPU copyMTLBuffer:toBytes:length:](selfCopy, "copyMTLBuffer:toBytes:length:", data36, bytes20, [v387 length]);
              }

              v26 = momentumVectors;
              v331 = v580 + 1;
              v333 = v562 - 1;
            }

            while (v562 != 1);
            v332 = v511 + 1;
            v331 = v521 + 4;
          }

          while (v511 + 1 != v515);
          self = selfCopy;
        }

        goto LABEL_225;
      }

      layerCopy = v516;
      v7 = v588;
LABEL_129:
      v26 = momentumVectors;
      goto LABEL_130;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_131;
    }

    exportableState7 = v516;
    momentumVectors = v7;
    for (i = 0; i != 4; ++i)
    {
      weights15 = [exportableState7 weights];
      v390 = [weights15 objectAtIndexedSubscript:i];
      descriptor18 = [v390 descriptor];
      tensorAllocationSizeInBytes = [descriptor18 tensorAllocationSizeInBytes];

      exportableState8 = [momentumVectors exportableState];
      v394 = [exportableState8 objectAtIndexedSubscript:i];
      weights16 = [exportableState7 weights];
      v396 = [weights16 objectAtIndexedSubscript:i];
      data37 = [v396 data];
      -[MLCDeviceGPU copyMTLBuffer:toBytes:length:](selfCopy, "copyMTLBuffer:toBytes:length:", v394, [data37 bytes], tensorAllocationSizeInBytes);

      biases9 = [exportableState7 biases];
      if (!biases9)
      {
LABEL_177:
        v581 = 1;
        v7 = v588;
        goto LABEL_180;
      }

      exportableState9 = biases9;
      biases10 = [exportableState7 biases];
      if ([biases10 count] < 4)
      {
        v581 = 1;
      }

      else
      {
        biases11 = [exportableState7 biases];
        v402 = [biases11 objectAtIndexedSubscript:i];

        if (!v402)
        {
          goto LABEL_177;
        }

        biases12 = [exportableState7 biases];
        v404 = [biases12 objectAtIndexedSubscript:i];
        descriptor19 = [v404 descriptor];
        tensorAllocationSizeInBytes2 = [descriptor19 tensorAllocationSizeInBytes];

        exportableState9 = [momentumVectors exportableState];
        biases10 = [exportableState9 objectAtIndexedSubscript:i | 4];
        biases13 = [exportableState7 biases];
        v408 = [biases13 objectAtIndexedSubscript:i];
        data38 = [v408 data];
        v581 = tensorAllocationSizeInBytes2;
        -[MLCDeviceGPU copyMTLBuffer:toBytes:length:](selfCopy, "copyMTLBuffer:toBytes:length:", biases10, [data38 bytes], tensorAllocationSizeInBytes2);
      }

      v7 = v588;

LABEL_180:
      v584MomentumVectors = [momentumVectors momentumVectors];
      v411 = [v584MomentumVectors objectAtIndexedSubscript:i];

      if ([v411 count])
      {
        v412 = 0;
        while (v412 != 1)
        {
          if (!v412)
          {
            v413 = [v411 objectAtIndexedSubscript:0];
            data39 = [v413 data];
            weights17 = [exportableState7 weights];
            v416 = [weights17 objectAtIndexedSubscript:i];
            optimizerData43 = [v416 optimizerData];
            v418 = [optimizerData43 objectAtIndexedSubscript:0];
            bytes21 = [v418 bytes];
            v420 = selfCopy;
            v421 = data39;
            v422 = tensorAllocationSizeInBytes;
LABEL_186:
            [(MLCDeviceGPU *)v420 copyMTLBuffer:v421 toBytes:bytes21 length:v422];

            v7 = v588;
          }

          if (++v412 >= [v411 count])
          {
            goto LABEL_188;
          }
        }

        v413 = [v411 objectAtIndexedSubscript:1];
        data39 = [v413 data];
        weights17 = [exportableState7 biases];
        v416 = [weights17 objectAtIndexedSubscript:i];
        optimizerData43 = [v416 optimizerData];
        v418 = [optimizerData43 objectAtIndexedSubscript:0];
        bytes21 = [v418 bytes];
        v420 = selfCopy;
        v421 = data39;
        v422 = v581;
        goto LABEL_186;
      }

LABEL_188:
      v423 = momentumVectors;
      velocityVectors12 = [momentumVectors velocityVectors];
      if (velocityVectors12)
      {
        v425 = velocityVectors12;
        velocityVectors13 = [momentumVectors velocityVectors];
        v427 = [velocityVectors13 count];

        v428 = v427 >= 4;
        v7 = v588;
        if (v428)
        {
          v563 = tensorAllocationSizeInBytes;
          velocityVectors14 = [momentumVectors velocityVectors];
          v430 = [velocityVectors14 objectAtIndexedSubscript:i];

          if (![v430 count])
          {
LABEL_199:

            v423 = momentumVectors;
            tensorAllocationSizeInBytes = v563;
            goto LABEL_200;
          }

          v431 = 0;
          while (2)
          {
            if (v431 == 1)
            {
              v432 = [v430 objectAtIndexedSubscript:1];
              data40 = [v432 data];
              biases14 = [exportableState7 biases];
              v435 = [biases14 objectAtIndexedSubscript:i];
              optimizerData44 = [v435 optimizerData];
              v437 = [optimizerData44 objectAtIndexedSubscript:1];
              bytes22 = [v437 bytes];
              v439 = selfCopy;
              v440 = data40;
              v441 = v581;
LABEL_197:
              [(MLCDeviceGPU *)v439 copyMTLBuffer:v440 toBytes:bytes22 length:v441];

              v7 = v588;
            }

            else if (!v431)
            {
              v432 = [v430 objectAtIndexedSubscript:0];
              data40 = [v432 data];
              biases14 = [exportableState7 weights];
              v435 = [biases14 objectAtIndexedSubscript:i];
              optimizerData44 = [v435 optimizerData];
              v437 = [optimizerData44 objectAtIndexedSubscript:1];
              bytes22 = [v437 bytes];
              v439 = selfCopy;
              v440 = data40;
              v441 = v563;
              goto LABEL_197;
            }

            if (++v431 >= [v430 count])
            {
              goto LABEL_199;
            }

            continue;
          }
        }
      }

LABEL_200:
      centerWeightVectors12 = [v423 centerWeightVectors];
      if (centerWeightVectors12)
      {
        v443 = centerWeightVectors12;
        centerWeightVectors13 = [momentumVectors centerWeightVectors];
        v445 = [centerWeightVectors13 count];

        v428 = v445 >= 4;
        v7 = v588;
        if (v428)
        {
          v564 = tensorAllocationSizeInBytes;
          centerWeightVectors14 = [momentumVectors centerWeightVectors];
          v447 = [centerWeightVectors14 objectAtIndexedSubscript:i];

          if (![v447 count])
          {
LABEL_211:

            goto LABEL_212;
          }

          v448 = 0;
          while (2)
          {
            if (v448 == 1)
            {
              v449 = [v447 objectAtIndexedSubscript:1];
              data41 = [v449 data];
              biases15 = [exportableState7 biases];
              v452 = [biases15 objectAtIndexedSubscript:i];
              optimizerData45 = [v452 optimizerData];
              v454 = [optimizerData45 objectAtIndexedSubscript:2];
              bytes23 = [v454 bytes];
              v456 = selfCopy;
              v457 = data41;
              v458 = v581;
LABEL_209:
              [(MLCDeviceGPU *)v456 copyMTLBuffer:v457 toBytes:bytes23 length:v458];

              v7 = v588;
            }

            else if (!v448)
            {
              v449 = [v447 objectAtIndexedSubscript:0];
              data41 = [v449 data];
              biases15 = [exportableState7 weights];
              v452 = [biases15 objectAtIndexedSubscript:i];
              optimizerData45 = [v452 optimizerData];
              v454 = [optimizerData45 objectAtIndexedSubscript:2];
              bytes23 = [v454 bytes];
              v456 = selfCopy;
              v457 = data41;
              v458 = v564;
              goto LABEL_209;
            }

            if (++v448 >= [v447 count])
            {
              goto LABEL_211;
            }

            continue;
          }
        }
      }

LABEL_212:
    }

    v25 = momentumVectors;
    mhaAttentionBiasTensors = [momentumVectors mhaAttentionBiasTensors];
    v460 = [mhaAttentionBiasTensors count];

    if (!v460)
    {
      self = selfCopy;
      layerCopy = v516;
      goto LABEL_11;
    }

    mhaAttentionBiasTensors2 = [momentumVectors mhaAttentionBiasTensors];
    v462 = [mhaAttentionBiasTensors2 count];

    if (!v462)
    {
      goto LABEL_128;
    }

    v463 = 0;
    do
    {
      mhaAttentionBiasTensors3 = [momentumVectors mhaAttentionBiasTensors];
      v465 = [mhaAttentionBiasTensors3 objectAtIndexedSubscript:v463];
      v466 = [(MLCDeviceGPU *)selfCopy readTensor:v465 fromDeviceIndex:0];

      biasesParameters2 = [exportableState7 biasesParameters];
      LODWORD(v465) = [biasesParameters2 count] > 3;

      biasesParameters3 = [exportableState7 biasesParameters];
      v469 = v463 + 4 * v465;
      v470 = [biasesParameters3 objectAtIndexedSubscript:v469];
      tensor49 = [v470 tensor];

      descriptor20 = [tensor49 descriptor];
      tensorAllocationSizeInBytes3 = [descriptor20 tensorAllocationSizeInBytes];

      data42 = [tensor49 data];
      v582 = v466;
      memcpy([data42 bytes], objc_msgSend(v466, "bytes"), tensorAllocationSizeInBytes3);

      v584MomentumVectors2 = [momentumVectors momentumVectors];
      v476 = [v584MomentumVectors2 objectAtIndexedSubscript:v469];

      v565 = v476;
      v477 = [v476 objectAtIndexedSubscript:0];
      data43 = [v477 data];
      optimizerData46 = [tensor49 optimizerData];
      v480 = [optimizerData46 objectAtIndexedSubscript:0];
      -[MLCDeviceGPU copyMTLBuffer:toBytes:length:](selfCopy, "copyMTLBuffer:toBytes:length:", data43, [v480 bytes], tensorAllocationSizeInBytes3);

      velocityVectors15 = [momentumVectors velocityVectors];
      if (velocityVectors15)
      {
        v482 = velocityVectors15;
        velocityVectors16 = [momentumVectors velocityVectors];
        v484 = [velocityVectors16 count];

        if (v484)
        {
          velocityVectors17 = [momentumVectors velocityVectors];
          v486 = [velocityVectors17 objectAtIndexedSubscript:v469];

          v487 = [v486 objectAtIndexedSubscript:0];
          data44 = [v487 data];
          optimizerData47 = [tensor49 optimizerData];
          v490 = [optimizerData47 objectAtIndexedSubscript:1];
          -[MLCDeviceGPU copyMTLBuffer:toBytes:length:](selfCopy, "copyMTLBuffer:toBytes:length:", data44, [v490 bytes], tensorAllocationSizeInBytes3);
        }
      }

      centerWeightVectors15 = [momentumVectors centerWeightVectors];
      if (centerWeightVectors15)
      {
        v492 = centerWeightVectors15;
        centerWeightVectors16 = [momentumVectors centerWeightVectors];
        v494 = [centerWeightVectors16 count];

        if (v494)
        {
          centerWeightVectors17 = [momentumVectors centerWeightVectors];
          v496 = [centerWeightVectors17 objectAtIndexedSubscript:v469];

          v497 = [v496 objectAtIndexedSubscript:0];
          data45 = [v497 data];
          optimizerData48 = [tensor49 optimizerData];
          v500 = [optimizerData48 objectAtIndexedSubscript:2];
          -[MLCDeviceGPU copyMTLBuffer:toBytes:length:](selfCopy, "copyMTLBuffer:toBytes:length:", data45, [v500 bytes], tensorAllocationSizeInBytes3);
        }
      }

      ++v463;
      mhaAttentionBiasTensors4 = [momentumVectors mhaAttentionBiasTensors];
      v502 = [mhaAttentionBiasTensors4 count];
    }

    while (v463 < v502);
    self = selfCopy;
    layerCopy = v516;
    v7 = v588;
    v26 = momentumVectors;
LABEL_130:

LABEL_131:
    v5 = v534 + 1;
  }

  while (v534 + 1 < [(MLCDeviceGPU *)self numDevicesToUse]);
LABEL_228:

  v503 = *MEMORY[0x277D85DE8];
}

- (void)convertUpdatesToTensorDataForTensorParameters:(id)parameters
{
  parametersCopy = parameters;
  if ([(MLCDeviceGPU *)self numDevicesToUse])
  {
    v4 = 0;
    selfCopy = self;
    do
    {
      descriptor = [parametersCopy descriptor];
      shape = [descriptor shape];
      v7 = [shape objectAtIndexedSubscript:0];
      v8 = [parametersCopy calculateBatchSizeToUse:{objc_msgSend(v7, "unsignedIntegerValue")}];

      data = [parametersCopy data];
      -[MLCDeviceGPU readTensor:fromDeviceIndex:targetBuffer:batchSize:](self, "readTensor:fromDeviceIndex:targetBuffer:batchSize:", parametersCopy, v4, [data bytes], v8);

      optimizerDeviceData = [parametersCopy optimizerDeviceData];
      v40 = v4;
      v11 = [optimizerDeviceData objectAtIndexedSubscript:v4];

      v41 = v11;
      momentumVectors = [v11 momentumVectors];
      if ([momentumVectors count])
      {
        v13 = 0;
        do
        {
          v14 = [momentumVectors objectAtIndexedSubscript:v13];
          data2 = [v14 data];
          optimizerData = [parametersCopy optimizerData];
          v17 = [optimizerData objectAtIndexedSubscript:0];
          bytes = [v17 bytes];
          optimizerData2 = [parametersCopy optimizerData];
          v20 = [optimizerData2 objectAtIndexedSubscript:0];
          -[MLCDeviceGPU copyMTLBuffer:toBytes:length:](self, "copyMTLBuffer:toBytes:length:", data2, bytes, [v20 length]);

          ++v13;
        }

        while (v13 < [momentumVectors count]);
      }

      v39 = momentumVectors;
      velocityVectors = [v41 velocityVectors];
      if ([velocityVectors count])
      {
        v22 = 0;
        do
        {
          v23 = [velocityVectors objectAtIndexedSubscript:v22];
          data3 = [v23 data];
          optimizerData3 = [parametersCopy optimizerData];
          v26 = [optimizerData3 objectAtIndexedSubscript:1];
          bytes2 = [v26 bytes];
          optimizerData4 = [parametersCopy optimizerData];
          v29 = [optimizerData4 objectAtIndexedSubscript:1];
          -[MLCDeviceGPU copyMTLBuffer:toBytes:length:](self, "copyMTLBuffer:toBytes:length:", data3, bytes2, [v29 length]);

          ++v22;
        }

        while (v22 < [velocityVectors count]);
      }

      centerWeightVectors = [v41 centerWeightVectors];
      if ([centerWeightVectors count])
      {
        v31 = 0;
        do
        {
          v32 = [centerWeightVectors objectAtIndexedSubscript:v31];
          data4 = [v32 data];
          optimizerData5 = [parametersCopy optimizerData];
          v35 = [optimizerData5 objectAtIndexedSubscript:2];
          bytes3 = [v35 bytes];
          optimizerData6 = [parametersCopy optimizerData];
          v38 = [optimizerData6 objectAtIndexedSubscript:2];
          -[MLCDeviceGPU copyMTLBuffer:toBytes:length:](selfCopy, "copyMTLBuffer:toBytes:length:", data4, bytes3, [v38 length]);

          ++v31;
        }

        while (v31 < [centerWeightVectors count]);
      }

      v4 = v40 + 1;
      self = selfCopy;
    }

    while (v40 + 1 < [(MLCDeviceGPU *)selfCopy numDevicesToUse]);
  }
}

- (void)setOptimizerLearningRate:(id)rate learningRate:(float)learningRate
{
  rateCopy = rate;
  if ([rateCopy count])
  {
    v5 = 0;
    do
    {
      v6 = [rateCopy objectAtIndexedSubscript:v5];
      *&v7 = learningRate;
      [v6 setLearningRate:v7];

      ++v5;
    }

    while (v5 < [rateCopy count]);
  }
}

- (void)setOptimizerTimeStep:(id)step timeStep:(unint64_t)timeStep
{
  stepCopy = step;
  if ([stepCopy count])
  {
    v5 = 0;
    do
    {
      v6 = [stepCopy objectAtIndexedSubscript:v5];
      [v6 setTimeStep:timeStep];

      ++v5;
    }

    while (v5 < [stepCopy count]);
  }
}

- (void)updateMultiheadAttentionLayer:(id)layer optimizer:(id)optimizer weightsParameter:(id)parameter biasesParameter:(id)biasesParameter arrayOfParams:(id)params
{
  v113 = *MEMORY[0x277D85DE8];
  layerCopy = layer;
  optimizerCopy = optimizer;
  parameterCopy = parameter;
  biasesParameterCopy = biasesParameter;
  paramsCopy = params;
  context = objc_autoreleasePoolPush();
  v84 = layerCopy;
  v13 = [layerCopy objectAtIndexedSubscript:0];
  mhaHasAttnBias = [v13 mhaHasAttnBias];
  v15 = 4;
  if (mhaHasAttnBias)
  {
    v15 = 6;
  }

  v83 = v15;

  if ([(MLCDeviceGPU *)self numDevicesToUse])
  {
    v16 = 0;
    selfCopy = self;
    do
    {
      v100 = [v84 objectAtIndexedSubscript:v16];
      if ([(MLCDeviceGPU *)self numDevicesToUse]== 2)
      {
        mhaMultiGPUChildOps = [v100 mhaMultiGPUChildOps];
        v18 = v16;
        multiGPUReduction = [mhaMultiGPUChildOps multiGPUReduction];

        v20 = multiGPUReduction == 1;
        v16 = v18;
        if (v20)
        {
          v21 = [MEMORY[0x277CBEBF8] mutableCopy];
          v106 = 0u;
          v107 = 0u;
          v108 = 0u;
          v109 = 0u;
          gradientState = [v100 gradientState];
          v23 = [gradientState countByEnumeratingWithState:&v106 objects:v112 count:16];
          if (v23)
          {
            v24 = v23;
            v25 = *v107;
            do
            {
              for (i = 0; i != v24; ++i)
              {
                if (*v107 != v25)
                {
                  objc_enumerationMutation(gradientState);
                }

                data = [*(*(&v106 + 1) + 8 * i) data];
                [v21 addObject:data];
              }

              v24 = [gradientState countByEnumeratingWithState:&v106 objects:v112 count:16];
            }

            while (v24);
          }

          v28 = [v84 objectAtIndexedSubscript:0];
          mhaMultiGPUChildOps2 = [v28 mhaMultiGPUChildOps];
          v111[0] = mhaMultiGPUChildOps2;
          v30 = [v84 objectAtIndexedSubscript:1];
          mhaMultiGPUChildOps3 = [v30 mhaMultiGPUChildOps];
          v111[1] = mhaMultiGPUChildOps3;
          v32 = [MEMORY[0x277CBEA60] arrayWithObjects:v111 count:2];
          v33 = [v21 copy];
          self = selfCopy;
          [(MLCDeviceGPU *)selfCopy allReduceOverXGMI:v32 deviceIndex:v18 stateBuffers:v33];

          v16 = v18;
        }
      }

      v34 = [v84 objectAtIndexedSubscript:v16];
      mhaHasBias = [v34 mhaHasBias];

      gpuCommandBufferList = [(MLCDeviceGPU *)self gpuCommandBufferList];
      v94 = v16;
      v93 = [gpuCommandBufferList objectAtIndexedSubscript:v16];

      v37 = 0;
      v38 = -4;
      if (mhaHasBias)
      {
        v38 = 0;
      }

      v86 = v38;
      if (mhaHasBias)
      {
        v39 = 4;
      }

      else
      {
        v39 = 0;
      }

      if (biasesParameterCopy)
      {
        v40 = mhaHasBias;
      }

      else
      {
        v40 = 0;
      }

      v88 = v40;
      v41 = v83;
      v42 = v100;
      do
      {
        v101 = v41;
        momentumVectors = [v42 momentumVectors];
        v44 = [momentumVectors objectAtIndexedSubscript:v37];
        velocityVectors = [v42 velocityVectors];
        v46 = [velocityVectors count];
        if (v46)
        {
          velocityVectors2 = [v42 velocityVectors];
          v47 = [velocityVectors2 objectAtIndexedSubscript:v37];
          v98 = v47;
        }

        else
        {
          v47 = 0;
        }

        centerWeightVectors = [v42 centerWeightVectors];
        if ([centerWeightVectors count])
        {
          centerWeightVectors2 = [v42 centerWeightVectors];
          v50 = [centerWeightVectors2 objectAtIndexedSubscript:v37];
          v51 = deviceParameterWithVectors(v44, v47, v50);
        }

        else
        {
          v51 = deviceParameterWithVectors(v44, v47, 0);
        }

        if (v46)
        {
        }

        v42 = v100;
        if (v37 > 3)
        {
          v62 = v101;
          if (biasesParameterCopy)
          {
            v71 = [biasesParameterCopy objectAtIndexedSubscript:v86 + v37];
            isUpdatable = [v71 isUpdatable];

            if (isUpdatable)
            {
              v73 = [optimizerCopy objectAtIndexedSubscript:v94];
              exportableState = [v100 exportableState];
              v85 = [exportableState objectAtIndexedSubscript:v39];
              gradientState2 = [v100 gradientState];
              v67 = [gradientState2 objectAtIndexedSubscript:v39];
              data2 = [v67 data];
              exportableState2 = [v100 exportableState];
              v70 = [exportableState2 objectAtIndexedSubscript:v39];
              v96 = v73;
              v74 = v73;
              v66 = v85;
              [(MLCDeviceGPU *)selfCopy updateWithOptimizer:v74 arrayOfParams:paramsCopy commandBuffer:v93 deviceParameter:v51 source:v85 gradient:data2 result:v70 momentumIndex:0];
              goto LABEL_42;
            }
          }
        }

        else
        {
          v52 = [parameterCopy objectAtIndexedSubscript:v37];
          isUpdatable2 = [v52 isUpdatable];

          if (isUpdatable2)
          {
            v54 = [optimizerCopy objectAtIndexedSubscript:v94];
            exportableState3 = [v100 exportableState];
            v55 = [exportableState3 objectAtIndexedSubscript:v37];
            gradientState3 = [v100 gradientState];
            v57 = [gradientState3 objectAtIndexedSubscript:v37];
            data3 = [v57 data];
            exportableState4 = [v100 exportableState];
            [exportableState4 objectAtIndexedSubscript:v37];
            v61 = v60 = v51;
            [(MLCDeviceGPU *)selfCopy updateWithOptimizer:v54 arrayOfParams:paramsCopy commandBuffer:v93 deviceParameter:v60 source:v55 gradient:data3 result:v61 momentumIndex:0];

            v51 = v60;
            v42 = v100;
          }

          v62 = v101;
          if (v88)
          {
            v63 = [biasesParameterCopy objectAtIndexedSubscript:v37];
            isUpdatable3 = [v63 isUpdatable];

            if (isUpdatable3)
            {
              v96 = [optimizerCopy objectAtIndexedSubscript:v94];
              exportableState = [v42 exportableState];
              v66 = [exportableState objectAtIndexedSubscript:v37 + 4];
              gradientState2 = [v42 gradientState];
              v67 = [gradientState2 objectAtIndexedSubscript:v37 + 4];
              data2 = [v67 data];
              exportableState2 = [v42 exportableState];
              v70 = [exportableState2 objectAtIndexedSubscript:v37 + 4];
              [(MLCDeviceGPU *)selfCopy updateWithOptimizer:v96 arrayOfParams:paramsCopy commandBuffer:v93 deviceParameter:v51 source:v66 gradient:data2 result:v70 momentumIndex:1];
LABEL_42:

              v62 = v101;
            }
          }
        }

        ++v37;
        ++v39;
        v41 = v62 - 1;
      }

      while (v41);
      v104 = 0u;
      v105 = 0u;
      v102 = 0u;
      v103 = 0u;
      gradientState4 = [v42 gradientState];
      v76 = [gradientState4 countByEnumeratingWithState:&v102 objects:v110 count:16];
      if (v76)
      {
        v77 = v76;
        v78 = *v103;
        do
        {
          for (j = 0; j != v77; ++j)
          {
            if (*v103 != v78)
            {
              objc_enumerationMutation(gradientState4);
            }

            v80 = *(*(&v102 + 1) + 8 * j);
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) != 0 && [v80 readCount])
            {
              [v80 setReadCount:0];
            }
          }

          v77 = [gradientState4 countByEnumeratingWithState:&v102 objects:v110 count:16];
        }

        while (v77);
      }

      v16 = v94 + 1;
      self = selfCopy;
    }

    while (v94 + 1 < [(MLCDeviceGPU *)selfCopy numDevicesToUse]);
  }

  objc_autoreleasePoolPop(context);

  v81 = *MEMORY[0x277D85DE8];
}

- (void)reloadLSTMParameters:(id)parameters rnnGPUDeviceOps:(id)ops mlcParameterIndex:(unint64_t)index tensor:(id)tensor isInputWeight:(BOOL)weight isHiddenWeight:(BOOL)hiddenWeight isBias:(BOOL)bias deviceNumber:(unint64_t)self0
{
  hiddenWeightCopy = hiddenWeight;
  weightCopy = weight;
  parametersCopy = parameters;
  opsCopy = ops;
  tensorCopy = tensor;
  gradientKernel = [opsCopy gradientKernel];
  numLayers = [opsCopy numLayers];
  if (numLayers < 2)
  {
    goto LABEL_5;
  }

  v19 = numLayers;
  isBidirectional = [opsCopy isBidirectional];
  v21 = index >> 2;
  if (!isBidirectional)
  {
    goto LABEL_6;
  }

  if ([opsCopy isBidirectional])
  {
    v21 = (index - 4 * v19) >> 2;
  }

  else
  {
LABEL_5:
    v21 = 0;
  }

LABEL_6:
  v80 = index >> 2;
  context = index & 3;
  deviceMemory = [tensorCopy deviceMemory];
  selfCopy = self;
  v81 = opsCopy;
  if ([deviceMemory count])
  {
    deviceMemory2 = [tensorCopy deviceMemory];
    v24 = [deviceMemory2 objectAtIndexedSubscript:number];
    v25 = [v24 conformsToProtocol:&unk_284BC3750];

    if (v25)
    {
      deviceMemory3 = [tensorCopy deviceMemory];
      numberCopy2 = number;
      v28 = [deviceMemory3 objectAtIndexedSubscript:number];

      contents = [v28 contents];
      data = [tensorCopy data];
      bytes = [data bytes];
      data2 = [tensorCopy data];
      memcpy(contents, bytes, [data2 length]);

      descriptor = [tensorCopy descriptor];
      tensorAllocationSizeInBytes = [descriptor tensorAllocationSizeInBytes];

      [MLCGPUHelper didModifyRange:0 buffer:tensorAllocationSizeInBytes, v28];
      if (!weightCopy)
      {
        goto LABEL_9;
      }

LABEL_16:
      v36 = qword_278A69680[context];
      descriptor2 = [parametersCopy descriptor];
      hiddenSize = [descriptor2 hiddenSize];

      descriptor3 = [parametersCopy descriptor];
      v63 = descriptor3;
      if (v76)
      {
        hiddenSize2 = [descriptor3 hiddenSize];
      }

      else
      {
        hiddenSize2 = [descriptor3 inputSize];
      }

      v72 = hiddenSize2;

      v41 = [MEMORY[0x277CD7258] matrixDescriptorWithRows:hiddenSize columns:v72 rowBytes:4 * v72 dataType:268435488];
      v42 = [objc_alloc(MEMORY[0x277CD7250]) initWithBuffer:v28 descriptor:v41];
      contexta = objc_autoreleasePoolPush();
      gpuCommandQueueList = [(MLCDeviceGPU *)selfCopy gpuCommandQueueList];
      v44 = gpuCommandQueueList;
      v45 = numberCopy2;
      goto LABEL_22;
    }
  }

  else
  {
  }

  v46 = tensorCopy;
  v47 = weightCopy;
  v48 = hiddenWeightCopy;
  deviceList = [(MLCDeviceGPU *)self deviceList];
  v50 = [deviceList objectAtIndexedSubscript:number];
  data3 = [v46 data];
  bytes2 = [data3 bytes];
  data4 = [v46 data];
  v28 = [v50 newBufferWithBytes:bytes2 length:objc_msgSend(data4 options:{"length"), +[MLCGPUHelper mtlResourceOptions](MLCGPUHelper, "mtlResourceOptions")}];

  deviceMemory4 = [v46 deviceMemory];
  v55 = [deviceMemory4 count];

  v56 = v46;
  deviceMemory5 = [v46 deviceMemory];
  v58 = deviceMemory5;
  numberCopy2 = number;
  if (v55)
  {
    [deviceMemory5 setObject:v28 atIndexedSubscript:number];
  }

  else
  {
    [deviceMemory5 addObject:v28];
  }

  hiddenWeightCopy = v48;
  v59 = v47;
  tensorCopy = v56;
  if (v59)
  {
    goto LABEL_16;
  }

LABEL_9:
  v35 = numberCopy2;
  if (hiddenWeightCopy)
  {
    v36 = qword_278A696A0[context];
    descriptor4 = [parametersCopy descriptor];
    hiddenSize3 = [descriptor4 hiddenSize];

    descriptor5 = [parametersCopy descriptor];
    hiddenSize4 = [descriptor5 hiddenSize];

    v41 = [MEMORY[0x277CD7258] matrixDescriptorWithRows:hiddenSize3 columns:hiddenSize4 rowBytes:4 * hiddenSize4 dataType:268435488];
    v42 = [objc_alloc(MEMORY[0x277CD7250]) initWithBuffer:v28 descriptor:v41];
    contexta = objc_autoreleasePoolPush();
    gpuCommandQueueList = [(MLCDeviceGPU *)selfCopy gpuCommandQueueList];
    v44 = gpuCommandQueueList;
    v45 = numberCopy2;
LABEL_22:
    v73 = [gpuCommandQueueList objectAtIndexedSubscript:v45];
    commandBuffer = [v73 commandBuffer];

    v70 = v80;
    v71 = [gradientKernel objectAtIndexedSubscript:v80];
    v65 = v81;
    goto LABEL_23;
  }

  v65 = v81;
  if (bias)
  {
    v36 = qword_278A696C0[context];
    hiddenSize5 = [v81 hiddenSize];
    v41 = [MEMORY[0x277CD7258] matrixDescriptorWithRows:1 columns:hiddenSize5 rowBytes:4 * hiddenSize5 dataType:268435488];
    v42 = [objc_alloc(MEMORY[0x277CD7250]) initWithBuffer:v28 descriptor:v41];
    contexta = objc_autoreleasePoolPush();
    gpuCommandQueueList2 = [(MLCDeviceGPU *)selfCopy gpuCommandQueueList];
    v68 = [gpuCommandQueueList2 objectAtIndexedSubscript:v35];
    commandBuffer = [v68 commandBuffer];

    v70 = v80;
    v71 = [gradientKernel objectAtIndexedSubscript:v80];
LABEL_23:
    rnnTrainableWeights = [v65 rnnTrainableWeights];
    v75 = [rnnTrainableWeights objectAtIndexedSubscript:v70];
    memset(v84, 0, sizeof(v84));
    [v71 encodeCopyWeightsToCommandBuffer:commandBuffer weights:v75 matrixId:objc_msgSend(v36 matrix:"unsignedIntegerValue") copyFromWeightsToMatrix:v42 matrixOffset:{0, v84}];

    [commandBuffer commit];
    [commandBuffer waitUntilCompleted];

    objc_autoreleasePoolPop(contexta);
  }
}

- (void)reloadParameterDataFromHostToDeviceMemoryForTensor:(id)tensor
{
  *(&v152[1] + 4) = *MEMORY[0x277D85DE8];
  tensorCopy = tensor;
  childLayers = [tensorCopy childLayers];
  v7 = [childLayers objectAtIndexedSubscript:0];

  selfCopy = self;
  if ([(MLCDeviceGPU *)self numDevicesToUse])
  {
    v8 = 0;
    v149 = tensorCopy;
    while (1)
    {
      deviceOps = [v7 deviceOps];
      v10 = [deviceOps objectAtIndexedSubscript:v8];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    forwardKernel = v7;
                    v62 = v10;
                    inputWeights = [forwardKernel inputWeights];
                    v64 = [inputWeights count];

                    v142 = v62;
                    v144 = descriptor22;
                    if (v64)
                    {
                      v65 = 0;
                      while (1)
                      {
                        inputWeights2 = [forwardKernel inputWeights];
                        v67 = [inputWeights2 objectAtIndexedSubscript:v65];

                        if (v67 == tensorCopy)
                        {
                          break;
                        }

                        ++v65;
                        inputWeights3 = [forwardKernel inputWeights];
                        v69 = [inputWeights3 count];

                        if (v65 >= v69)
                        {
                          goto LABEL_39;
                        }
                      }

                      LOBYTE(v71) = 0;
                      v146 = 1;
                    }

                    else
                    {
LABEL_39:
                      hiddenWeights = [forwardKernel hiddenWeights];
                      v71 = [hiddenWeights count];

                      if (v71)
                      {
                        v65 = 0;
                        while (1)
                        {
                          hiddenWeights2 = [forwardKernel hiddenWeights];
                          v71 = [hiddenWeights2 objectAtIndexedSubscript:v65];

                          LOBYTE(v71) = v71 == tensorCopy;
                          if (v71)
                          {
                            break;
                          }

                          v73 = v71;
                          ++v65;
                          hiddenWeights3 = [forwardKernel hiddenWeights];
                          v75 = [hiddenWeights3 count];

                          if (v65 >= v75)
                          {
                            v146 = 0;
                            v65 = 0;
                            LOBYTE(v71) = v73;
                            goto LABEL_61;
                          }
                        }

                        v146 = 0;
LABEL_61:
                        v62 = v142;
                      }

                      else
                      {
                        v146 = 0;
                        v65 = 0;
                      }
                    }

                    biases = [forwardKernel biases];

                    v86 = 0;
                    if ((v146 & 1) == 0 && biases && (v71 & 1) == 0)
                    {
                      biases2 = [forwardKernel biases];
                      v88 = [biases2 count];

                      if (v88)
                      {
                        v89 = 0;
                        while (1)
                        {
                          biases3 = [forwardKernel biases];
                          v91 = [biases3 objectAtIndexedSubscript:v89];

                          v86 = v91 == tensorCopy;
                          if (v91 == tensorCopy)
                          {
                            break;
                          }

                          ++v89;
                          biases4 = [forwardKernel biases];
                          v93 = [biases4 count];

                          if (v89 >= v93)
                          {
                            goto LABEL_73;
                          }
                        }

                        v65 = v89;
LABEL_73:
                        v62 = v142;
                      }

                      else
                      {
                        v86 = 0;
                        v62 = v142;
                      }
                    }

                    LOBYTE(v122) = v86;
                    [MLCDeviceGPU reloadLSTMParameters:selfCopy rnnGPUDeviceOps:"reloadLSTMParameters:rnnGPUDeviceOps:mlcParameterIndex:tensor:isInputWeight:isHiddenWeight:isBias:deviceNumber:" mlcParameterIndex:forwardKernel tensor:v62 isInputWeight:v65 isHiddenWeight:tensorCopy isBias:v122 deviceNumber:v8];
                  }

                  else
                  {
                    objc_opt_class();
                    if ((objc_opt_isKindOfClass() & 1) == 0)
                    {
                      goto LABEL_32;
                    }

                    forwardKernel = v7;
                    weights = [forwardKernel weights];
                    v77 = [weights count];

                    if (v77)
                    {
                      v78 = 0;
                      while (1)
                      {
                        weights2 = [forwardKernel weights];
                        v80 = [weights2 objectAtIndexedSubscript:v78];

                        if (v80 == tensorCopy && v78 <= 2)
                        {
                          break;
                        }

                        v82 = v80 == tensorCopy && v78 == 3;

                        if (!v82)
                        {
                          ++v78;
                          weights3 = [forwardKernel weights];
                          v84 = [weights3 count];

                          if (v78 < v84)
                          {
                            continue;
                          }
                        }

                        v147 = 0;
                        goto LABEL_76;
                      }

                      v82 = 0;
                      v147 = 1;
                    }

                    else
                    {
                      v147 = 0;
                      v82 = 0;
                    }

LABEL_76:
                    descriptor = [forwardKernel descriptor];
                    hasBiases = [descriptor hasBiases];

                    if (hasBiases)
                    {
                      biases5 = [forwardKernel biases];
                      v97 = [biases5 count];

                      if (v97)
                      {
                        v98 = 0;
                        while (1)
                        {
                          biases6 = [forwardKernel biases];
                          v100 = [biases6 objectAtIndexedSubscript:v98];

                          if (v100 == tensorCopy && v98 <= 2)
                          {

                            v147 = 1;
                            goto LABEL_87;
                          }

                          if (v100 == tensorCopy && v98 == 3)
                          {
                            break;
                          }

                          ++v98;
                          biases7 = [forwardKernel biases];
                          v102 = [biases7 count];

                          if (v98 >= v102)
                          {
                            goto LABEL_87;
                          }
                        }

                        v82 = 1;
                      }
                    }

LABEL_87:
                    descriptor2 = [forwardKernel descriptor];
                    hasAttentionBiases = [descriptor2 hasAttentionBiases];

                    v144 = descriptor22;
                    if (hasAttentionBiases && ([forwardKernel attentionBiases], v105 = objc_claimAutoreleasedReturnValue(), v106 = objc_msgSend(v105, "count"), v105, v106))
                    {
                      v107 = 0;
                      while (1)
                      {
                        attentionBiases = [forwardKernel attentionBiases];
                        v109 = [attentionBiases objectAtIndexedSubscript:v107];

                        if (v109 == tensorCopy && !v107)
                        {
                          break;
                        }

                        v111 = v109 == tensorCopy && v107 == 1;

                        if (!v111)
                        {
                          ++v107;
                          attentionBiases2 = [forwardKernel attentionBiases];
                          v113 = [attentionBiases2 count];

                          if (v107 < v113)
                          {
                            continue;
                          }
                        }

                        goto LABEL_102;
                      }
                    }

                    else
                    {
                      v111 = 0;
LABEL_102:
                      if (((v147 | v82) & 1) == 0 && !v111)
                      {
                        goto LABEL_107;
                      }
                    }

                    descriptor3 = [tensorCopy descriptor];
                    tensorAllocationSizeInBytes = [descriptor3 tensorAllocationSizeInBytes];

                    deviceMemory = [tensorCopy deviceMemory];
                    v116 = [deviceMemory objectAtIndexedSubscript:v8];

                    contents = [v116 contents];
                    data = [tensorCopy data];
                    bytes = [data bytes];
                    data2 = [tensorCopy data];
                    memcpy(contents, bytes, [data2 length]);

                    [MLCGPUHelper didModifyRange:0 buffer:tensorAllocationSizeInBytes, v116];
                  }

LABEL_107:
                  descriptor22 = v144;
                  goto LABEL_31;
                }
              }
            }
          }
        }
      }

      descriptor4 = [tensorCopy descriptor];
      tensorAllocationSizeInBytes2 = [descriptor4 tensorAllocationSizeInBytes];

      deviceMemory2 = [tensorCopy deviceMemory];
      forwardKernel = [deviceMemory2 objectAtIndexedSubscript:v8];

      contents2 = [forwardKernel contents];
      data3 = [tensorCopy data];
      bytes2 = [data3 bytes];
      [tensorCopy data];
      v25 = v10;
      v27 = v26 = descriptor22;
      memcpy(contents2, bytes2, [v27 length]);

      descriptor22 = v26;
      v10 = v25;
      tensorCopy = v149;

      v28 = tensorAllocationSizeInBytes2;
LABEL_30:
      [MLCGPUHelper didModifyRange:0 buffer:v28, forwardKernel];
LABEL_31:

LABEL_32:
      if (++v8 >= [(MLCDeviceGPU *)selfCopy numDevicesToUse])
      {
        goto LABEL_108;
      }
    }

    if (![v10 isMPSGraph])
    {
      forwardKernel = [v10 forwardKernel];
      gradientKernel = [v10 gradientKernel];
      descriptor5 = [v7 descriptor];
      isConvolutionTranspose = [descriptor5 isConvolutionTranspose];

      if (isConvolutionTranspose)
      {
        weights4 = [v7 weights];

        if (weights4 == tensorCopy)
        {
          descriptor6 = [tensorCopy descriptor];
          v34 = malloc_type_malloc([descriptor6 tensorAllocationSizeInBytes], 0x12B3D740uLL);

          v35 = MEMORY[0x277CBEA90];
          descriptor7 = [tensorCopy descriptor];
          v37 = [v35 dataWithBytesNoCopy:v34 length:objc_msgSend(descriptor7 freeWhenDone:{"tensorAllocationSizeInBytes"), 1}];

          descriptor8 = [tensorCopy descriptor];
          shape = [descriptor8 shape];
          [tensorCopy data];
          v40 = v10;
          v42 = v41 = descriptor22;
          rotateWeightsTensorBy180Degree(shape, v42, v37);

          descriptor22 = v41;
          v10 = v40;
          tensorCopy = v149;

          dataSource = [forwardKernel dataSource];
          weight = [dataSource weight];
          [weight setData:v37];
        }
      }

      [forwardKernel reloadWeightsAndBiasesFromDataSource];
      [gradientKernel reloadWeightsAndBiasesFromDataSource];

      goto LABEL_31;
    }

    descriptor9 = [tensorCopy descriptor];
    tensorAllocationSizeInBytes3 = [descriptor9 tensorAllocationSizeInBytes];

    deviceMemory3 = [tensorCopy deviceMemory];
    forwardKernel = [deviceMemory3 objectAtIndexedSubscript:v8];

    weights5 = [v7 weights];

    if (weights5 == tensorCopy)
    {
      v143 = descriptor22;
      descriptor10 = [v7 descriptor];
      isConvolutionTranspose2 = [descriptor10 isConvolutionTranspose];

      if (isConvolutionTranspose2)
      {
        data4 = [tensorCopy data];
        bytes3 = [data4 bytes];
        contents3 = [forwardKernel contents];
        descriptor11 = [v7 descriptor];
        kernelWidth = [descriptor11 kernelWidth];
        descriptor12 = [v7 descriptor];
        kernelHeight = [descriptor12 kernelHeight];
        descriptor13 = [v7 descriptor];
        inputFeatureChannelCount = [descriptor13 inputFeatureChannelCount];
        descriptor14 = [v7 descriptor];
        outputFeatureChannelCount = [descriptor14 outputFeatureChannelCount];
        descriptor15 = [v7 descriptor];
        v51 = outputFeatureChannelCount / [descriptor15 groupCount];
        descriptor16 = [tensorCopy descriptor];
        LODWORD(v122) = [descriptor16 dataType];
        LOBYTE(v51) = [MLCDataHelper convertSourceOIHW:bytes3 toResultHWOI:contents3 width:kernelWidth height:kernelHeight inputFeatureChannelCount:inputFeatureChannelCount outputFeatureChannelCount:v51 dataType:v122];

        descriptor22 = v143;
        if (v51)
        {
          goto LABEL_29;
        }
      }

      else
      {
        descriptor17 = [v7 descriptor];
        usesDepthwiseConvolution = [descriptor17 usesDepthwiseConvolution];

        data5 = [tensorCopy data];
        bytes4 = [data5 bytes];
        contents4 = [forwardKernel contents];
        descriptor18 = [v7 descriptor];
        kernelWidth2 = [descriptor18 kernelWidth];
        descriptor19 = [v7 descriptor];
        kernelHeight2 = [descriptor19 kernelHeight];
        descriptor20 = [v7 descriptor];
        inputFeatureChannelCount2 = [descriptor20 inputFeatureChannelCount];
        descriptor21 = [v7 descriptor];
        groupCount = [descriptor21 groupCount];
        descriptor22 = [v7 descriptor];
        outputFeatureChannelCount2 = [descriptor22 outputFeatureChannelCount];
        if (usesDepthwiseConvolution)
        {
          descriptor23 = [v7 descriptor];
          v123 = descriptor22;
          outputFeatureChannelCount2 /= [descriptor23 inputFeatureChannelCount];
          descriptor22 = v143;
        }

        v58 = inputFeatureChannelCount2 / groupCount;
        descriptor24 = [tensorCopy descriptor];
        LODWORD(v122) = [descriptor24 dataType];
        v60 = [MLCDataHelper convertSourceOIHW:bytes4 toResultHWIO:contents4 width:kernelWidth2 height:kernelHeight2 inputFeatureChannelCount:v58 outputFeatureChannelCount:outputFeatureChannelCount2 dataType:v122];

        v61 = descriptor22;
        if (usesDepthwiseConvolution)
        {

          v61 = v123;
        }

        if (v60)
        {
          goto LABEL_29;
        }
      }

      data6 = +[MLCLog framework];
      if (os_log_type_enabled(data6, OS_LOG_TYPE_ERROR))
      {
        [(MLCDeviceGPU(MLCEngineDispatch) *)v151 reloadParameterDataFromHostToDeviceMemoryForTensor:v152, data6];
      }
    }

    else
    {
      contents5 = [forwardKernel contents];
      data6 = [tensorCopy data];
      bytes5 = [data6 bytes];
      data7 = [tensorCopy data];
      memcpy(contents5, bytes5, [data7 length]);
    }

LABEL_29:
    v28 = tensorAllocationSizeInBytes3;
    goto LABEL_30;
  }

LABEL_108:

  v121 = *MEMORY[0x277D85DE8];
}

- (void)restoreRNNParamsWithDeviceOps:(id)ops optimizer:(id)optimizer inputWeightsParameter:(id)parameter hiddenWeightsParameter:(id)weightsParameter biasesParameter:(id)biasesParameter arrayOfParams:(id)params
{
  v85[2] = *MEMORY[0x277D85DE8];
  opsCopy = ops;
  parameterCopy = parameter;
  weightsParameterCopy = weightsParameter;
  biasesParameterCopy = biasesParameter;
  if ([(MLCDeviceGPU *)self numDevicesToUse])
  {
    v12 = 0;
    selfCopy = self;
    do
    {
      v13 = [opsCopy objectAtIndexedSubscript:v12];
      v80 = v13;
      v81 = v12;
      if ([(MLCDeviceGPU *)self numDevicesToUse]== 2)
      {
        lstmMultiGPUChildOps = [v13 lstmMultiGPUChildOps];
        multiGPUReduction = [lstmMultiGPUChildOps multiGPUReduction];

        if (multiGPUReduction == 1)
        {
          v16 = [MEMORY[0x277CBEBF8] mutableCopy];
          rnnTrainableWeightGradients = [v13 rnnTrainableWeightGradients];
          if ([rnnTrainableWeightGradients count])
          {
            v18 = 0;
            do
            {
              v19 = [rnnTrainableWeightGradients objectAtIndexedSubscript:v18];
              if ([v19 count])
              {
                v20 = 0;
                do
                {
                  v21 = [v19 objectAtIndexedSubscript:v20];
                  data = [v21 data];
                  [v16 addObject:data];

                  ++v20;
                }

                while (v20 < [v19 count]);
              }

              ++v18;
            }

            while (v18 < [rnnTrainableWeightGradients count]);
          }

          v83 = [opsCopy objectAtIndexedSubscript:0];
          lstmMultiGPUChildOps2 = [v83 lstmMultiGPUChildOps];
          v85[0] = lstmMultiGPUChildOps2;
          v24 = [opsCopy objectAtIndexedSubscript:1];
          lstmMultiGPUChildOps3 = [v24 lstmMultiGPUChildOps];
          v85[1] = lstmMultiGPUChildOps3;
          v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v85 count:2];
          v27 = [v26 copy];
          v28 = [v16 copy];
          self = selfCopy;
          v12 = v81;
          [(MLCDeviceGPU *)selfCopy allReduceOverXGMI:v27 deviceIndex:v81 stateBuffers:v28];

          v13 = v80;
        }
      }

      gpuCommandBufferList = [(MLCDeviceGPU *)self gpuCommandBufferList];
      v79 = [gpuCommandBufferList objectAtIndexedSubscript:v12];

      gradientKernel = [v13 gradientKernel];
      v30 = [gradientKernel count];
      v31 = [parameterCopy objectAtIndexedSubscript:0];
      tensor = [v31 tensor];
      optimizerData = [tensor optimizerData];
      v77 = [optimizerData count];

      v67 = v30;
      if (v30)
      {
        v34 = 0;
        do
        {
          v35 = 4 * v34;
          if (4 * v34 != -4)
          {
            v84 = 0;
            v36 = v35 + 4;
            v82 = v35 + 4;
            do
            {
              v37 = [parameterCopy objectAtIndexedSubscript:v35];
              isUpdatable = [v37 isUpdatable];

              if ((isUpdatable & 1) == 0)
              {
                auxiliaryWeightsMemory = [v80 auxiliaryWeightsMemory];
                v69 = [auxiliaryWeightsMemory objectAtIndexedSubscript:v34];
                auxiliaryMomentumMemory = [v80 auxiliaryMomentumMemory];
                v40 = [auxiliaryMomentumMemory objectAtIndexedSubscript:v34];
                auxiliaryVelocityMemory = [v80 auxiliaryVelocityMemory];
                v42 = [auxiliaryVelocityMemory objectAtIndexedSubscript:v34];
                auxiliaryCenterWeightMemory = [v80 auxiliaryCenterWeightMemory];
                v44 = [auxiliaryCenterWeightMemory objectAtIndexedSubscript:v34];
                LODWORD(v64) = 256;
                [MLCDeviceGPU saveOrRestoreTempMatrixDisableUpdates:selfCopy commandBuffer:"saveOrRestoreTempMatrixDisableUpdates:commandBuffer:auxiliaryWeightsMemory:auxiliaryMomentumMemory:auxiliaryVelocityMemory:auxiliaryCenterWeightMemory:deviceNumber:kernelNumber:mlcIndex:auxIndex:numOptimizerData:saveToAux:isInputWeight:isHiddenWeight:isBias:" auxiliaryWeightsMemory:v80 auxiliaryMomentumMemory:v79 auxiliaryVelocityMemory:v69 auxiliaryCenterWeightMemory:v40 deviceNumber:v42 kernelNumber:v44 mlcIndex:v81 auxIndex:v34 numOptimizerData:v35 saveToAux:v84 isInputWeight:v77 isHiddenWeight:v64 isBias:?];

                ++v84;
                v36 = v82;
              }

              ++v35;
            }

            while (v35 < v36);
            v45 = 4 * v34;
            do
            {
              v46 = [weightsParameterCopy objectAtIndexedSubscript:v45];
              isUpdatable2 = [v46 isUpdatable];

              if ((isUpdatable2 & 1) == 0)
              {
                auxiliaryWeightsMemory2 = [v80 auxiliaryWeightsMemory];
                v70 = [auxiliaryWeightsMemory2 objectAtIndexedSubscript:v34];
                auxiliaryMomentumMemory2 = [v80 auxiliaryMomentumMemory];
                v49 = [auxiliaryMomentumMemory2 objectAtIndexedSubscript:v34];
                auxiliaryVelocityMemory2 = [v80 auxiliaryVelocityMemory];
                v51 = [auxiliaryVelocityMemory2 objectAtIndexedSubscript:v34];
                auxiliaryCenterWeightMemory2 = [v80 auxiliaryCenterWeightMemory];
                v53 = [auxiliaryCenterWeightMemory2 objectAtIndexedSubscript:v34];
                LODWORD(v64) = 0x10000;
                [MLCDeviceGPU saveOrRestoreTempMatrixDisableUpdates:selfCopy commandBuffer:"saveOrRestoreTempMatrixDisableUpdates:commandBuffer:auxiliaryWeightsMemory:auxiliaryMomentumMemory:auxiliaryVelocityMemory:auxiliaryCenterWeightMemory:deviceNumber:kernelNumber:mlcIndex:auxIndex:numOptimizerData:saveToAux:isInputWeight:isHiddenWeight:isBias:" auxiliaryWeightsMemory:v80 auxiliaryMomentumMemory:v79 auxiliaryVelocityMemory:v70 auxiliaryCenterWeightMemory:v49 deviceNumber:v51 kernelNumber:v53 mlcIndex:v81 auxIndex:v34 numOptimizerData:v45 saveToAux:v84 isInputWeight:v77 isHiddenWeight:v64 isBias:?];

                ++v84;
                v36 = v82;
              }

              ++v45;
            }

            while (v45 < v36);
            v54 = 4 * v34;
            if (biasesParameterCopy)
            {
              do
              {
                v55 = [biasesParameterCopy objectAtIndexedSubscript:v54];
                isUpdatable3 = [v55 isUpdatable];

                if ((isUpdatable3 & 1) == 0)
                {
                  auxiliaryWeightsMemory3 = [v80 auxiliaryWeightsMemory];
                  v71 = [auxiliaryWeightsMemory3 objectAtIndexedSubscript:v34];
                  auxiliaryMomentumMemory3 = [v80 auxiliaryMomentumMemory];
                  v58 = [auxiliaryMomentumMemory3 objectAtIndexedSubscript:v34];
                  auxiliaryVelocityMemory3 = [v80 auxiliaryVelocityMemory];
                  v60 = [auxiliaryVelocityMemory3 objectAtIndexedSubscript:v34];
                  auxiliaryCenterWeightMemory3 = [v80 auxiliaryCenterWeightMemory];
                  v62 = [auxiliaryCenterWeightMemory3 objectAtIndexedSubscript:v34];
                  LODWORD(v64) = 0x1000000;
                  [MLCDeviceGPU saveOrRestoreTempMatrixDisableUpdates:selfCopy commandBuffer:"saveOrRestoreTempMatrixDisableUpdates:commandBuffer:auxiliaryWeightsMemory:auxiliaryMomentumMemory:auxiliaryVelocityMemory:auxiliaryCenterWeightMemory:deviceNumber:kernelNumber:mlcIndex:auxIndex:numOptimizerData:saveToAux:isInputWeight:isHiddenWeight:isBias:" auxiliaryWeightsMemory:v80 auxiliaryMomentumMemory:v79 auxiliaryVelocityMemory:v71 auxiliaryCenterWeightMemory:v58 deviceNumber:v60 kernelNumber:v62 mlcIndex:v81 auxIndex:v34 numOptimizerData:v54 saveToAux:v84 isInputWeight:v77 isHiddenWeight:v64 isBias:?];

                  ++v84;
                  v36 = v82;
                }

                ++v54;
              }

              while (v54 < v36);
            }
          }

          ++v34;
        }

        while (v34 != v67);
      }

      v12 = v81 + 1;
      self = selfCopy;
    }

    while (v81 + 1 < [(MLCDeviceGPU *)selfCopy numDevicesToUse]);
  }

  v63 = *MEMORY[0x277D85DE8];
}

- (void)initWithType:(const char *)a1 selectsMultipleComputeDevices:.cold.1(const char *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)initWithDeviceList:(const char *)a1 .cold.1(const char *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)initWithDeviceList:(void *)a1 .cold.2(void *a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  [a1 count];
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(&dword_238C1D000, a2, OS_LOG_TYPE_DEBUG, "Number of devices used = %lu", v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

void __55__MLCDeviceGPU_commitWithProfiling_graphExecutionTime___block_invoke_cold_1(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = NSStringFromSelector(*(a1 + 56));
  v3 = *(a1 + 64);
  v4 = [*(a1 + 32) gpuCommandQueueList];
  v5 = [v4 objectAtIndexedSubscript:*(a1 + 64)];
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_3_1(&dword_238C1D000, v6, v7, "%@: Internal Error: CommandBuffer failure: gpuCommandQueueList[%lu]=%@", v8, v9, v10, v11, v13);

  v12 = *MEMORY[0x277D85DE8];
}

void __97__MLCDeviceGPU_commitWithCompletionHandler_enableProfiling_graphExecutionTime_graphResultTensor___block_invoke_cold_1(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = NSStringFromSelector(*(a1 + 80));
  v3 = *(a1 + 88);
  v4 = [*(a1 + 32) gpuCommandQueueList];
  v5 = [v4 objectAtIndexedSubscript:*(a1 + 88)];
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_3_1(&dword_238C1D000, v6, v7, "%@: Internal Error: CommandBuffer failure: gpuCommandQueueList[%lu]=%@", v8, v9, v10, v11, v13);

  v12 = *MEMORY[0x277D85DE8];
}

- (void)deallocateDeviceMemoryForTensor:(const char *)a1 .cold.1(const char *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)multiDeviceTensorReduction:(const char *)a1 sourceBuffer:targetBuffer:.cold.1(const char *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)readTensor:(const char *)a1 targetBuffer:.cold.1(const char *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)broadcastTensor:(const char *)a1 batchSize:.cold.1(const char *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)allReduceOverXGMI:(const char *)a1 deviceIndex:(void *)a2 stateBuffers:.cold.1(const char *a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = NSStringFromSelector(a1);
  [a2 numDevicesToUse];
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

@end