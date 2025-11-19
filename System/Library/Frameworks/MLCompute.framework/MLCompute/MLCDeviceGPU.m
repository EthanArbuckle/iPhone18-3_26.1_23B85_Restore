@interface MLCDeviceGPU
+ (id)filteredGPUListIncludingLowPoweredBuiltin:(BOOL)a3;
+ (unint64_t)calculateImageSizeForTensor:(id)a3;
- (BOOL)canFuseConvolutionLayerForInference:(id)a3;
- (BOOL)canFuseFullyConnectedLayerForInference:(id)a3;
- (BOOL)checkToConvertTensor:(id)a3 inLayer:(id)a4;
- (BOOL)compileLayerDeviceOps:(id)a3 sourceTensors:(id)a4 resultTensor:(id)a5;
- (BOOL)compileLayerDeviceOps:(id)a3 sourceTensors:(id)a4 resultTensors:(id)a5;
- (BOOL)createPipelineStatesForMissingActivationFunctions;
- (BOOL)isEqual:(id)a3;
- (BOOL)isResultTensorUsedForGradientComputationByLayer:(id)a3;
- (BOOL)needToAllocateDeviceMemoryForTensor:(id)a3;
- (BOOL)needToAllocateDeviceMemoryForTensor:(id)a3 batchSize:(unint64_t)a4;
- (BOOL)shareDeviceMemoryWithResultTensor:(id)a3 sourceTensor:(id)a4;
- (BOOL)synchronizeTensor:(id)a3;
- (BOOL)synchronizeTensorOnHost:(id)a3;
- (BOOL)transferTensor:(id)a3 fromDevice:(id)a4;
- (MLCDeviceGPU)initWithDeviceList:(id)a3;
- (MLCDeviceGPU)initWithType:(int)a3 gpuDeviceList:(id)a4 gpuLocalEventList:(id)a5 gpuSharedEventList:(id)a6 currentEventValue:(unint64_t *)a7 gpuCommandQueueList:(id)a8 gpuCommandBufferList:(id)a9 gpuMPSCommandBufferList:(id)a10;
- (MLCDeviceGPU)initWithType:(int)a3 selectsMultipleComputeDevices:(BOOL)a4;
- (NSString)description;
- (id)allocateDeviceMemoryForTensor:(id)a3 device:(id)a4 count:(unint64_t)a5;
- (id)batchNormalizationLayerWithChannelCount:(unint64_t)a3 mean:(id)a4 variance:(id)a5 beta:(id)a6 gamma:(id)a7 varianceEpsilon:(float)a8 momentum:(float)a9;
- (id)betaGradients:(id)a3;
- (id)biasesGradients:(id)a3;
- (id)convolutionLayerWithDescriptor:(id)a3 weights:(id)a4 biasTerms:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)createOptimizerDeviceDataForTensor:(id)a3 optimizer:(id)a4 optimizerData:(id)a5 isVector:(BOOL)a6;
- (id)dropoutLayerWithRate:(float)a3 seed:(unint64_t)a4;
- (id)embeddingWeightsGradients:(id)a3 embeddingCount:(unint64_t)a4 embeddingDimension:(unint64_t)a5;
- (id)fullyConnectedLayerWithDescriptor:(id)a3 weights:(id)a4 biasTerms:(id)a5;
- (id)fusedBatchNormalizationAndNeuronLayerWithDescriptor:(id)a3 numOfFeatureChannels:(unint64_t)a4 mean:(id)a5 variance:(id)a6 beta:(id)a7 gamma:(id)a8 varianceEpsilon:(float)a9 momentum:(float)a10;
- (id)fusedConvolutionAndNeuronLayerWithDescriptor:(id)a3 convolutionDescriptor:(id)a4 weights:(id)a5 biasTerms:(id)a6;
- (id)fusedFullyConnectedAndNeuronLayerWithDescriptor:(id)a3 convolutionDescriptor:(id)a4 weights:(id)a5 biasTerms:(id)a6;
- (id)fusedInstanceNormalizationAndNeuronLayerWithDescriptor:(id)a3 numOfFeatureChannels:(unint64_t)a4 mean:(id)a5 variance:(id)a6 beta:(id)a7 gamma:(id)a8 varianceEpsilon:(float)a9 momentum:(float)a10;
- (id)gammaGradients:(id)a3;
- (id)gatherLayerWithDimension:(unint64_t)a3;
- (id)getGradientBufferForNormalizationState:(id)a3 layer:(id)a4 isBetaTensor:(BOOL)a5;
- (id)getHostPointerIfUnifiedDeviceMemory:(id)a3;
- (id)gramMatrixLayerWithScaleFactor:(float)a3;
- (id)groupNormalizationLayerWithFeatureChannelCount:(unint64_t)a3 groupCount:(unint64_t)a4 beta:(id)a5 gamma:(id)a6 varianceEpsilon:(float)a7;
- (id)instanceNormalizationLayerWithChannelCount:(unint64_t)a3 mean:(id)a4 variance:(id)a5 beta:(id)a6 gamma:(id)a7 varianceEpsilon:(float)a8 momentum:(float)a9;
- (id)lstmBiasGradient:(id)a3 mlcBiasIndex:(unint64_t)a4;
- (id)lstmHiddenWeightGradient:(id)a3 mlcWeightIndex:(unint64_t)a4;
- (id)lstmInputWeightGradient:(id)a3 mlcWeightIndex:(unint64_t)a4;
- (id)lstmLayerWithDescriptor:(id)a3 inputWeights:(id)a4 hiddenWeights:(id)a5 peepholeWeights:(id)a6 biasTerms:(id)a7 gateActivations:(id)a8 outputResultActivation:(id)a9 inferenceOnly:(BOOL)a10;
- (id)matMulLayerWithDescriptor:(id)a3 sourceTensors:(id)a4 resultTensor:(id)a5 inferenceOnly:(BOOL)a6;
- (id)mhaAttnBiasGradient:(id)a3 withSize:(unint64_t)a4 index:(unint64_t)a5;
- (id)mhaBiasGradient:(id)a3 withSize:(unint64_t)a4 index:(unint64_t)a5;
- (id)mhaWeightGradient:(id)a3 withSize:(unint64_t)a4 index:(unint64_t)a5;
- (id)neuronLayerWithDescriptor:(id)a3;
- (id)poolingLayerWithDescriptor:(id)a3 paddingSizes:(unint64_t *)a4;
- (id)readTensor:(id)a3;
- (id)readTensor:(id)a3 fromDeviceIndex:(unint64_t)a4;
- (id)readTensor:(id)a3 fromDeviceIndex:(unint64_t)a4 batchSize:(unint64_t)a5;
- (id)reshapeLayerWithShape:(id)a3;
- (id)selectLayer;
- (id)sliceLayerWithbegin:(id)a3 end:(id)a4 stride:(id)a5 inferenceOnly:(BOOL)a6;
- (id)splitLayerWithDimension:(unint64_t)a3;
- (id)transposeLayerWithShape:(id)a3;
- (id)weightsGradients:(id)a3;
- (unint64_t)allocatedDeviceDataSizeForTraining:(BOOL)a3 layer:(id)a4;
- (unint64_t)deviceMemorySizeForTensor:(id)a3;
- (void)allReduceOverXGMI:(id)a3 deviceIndex:(unint64_t)a4 stateBuffers:(id)a5;
- (void)allocateCommandBufferForDeviceAtIndex:(unint64_t)a3;
- (void)allocateDeviceDataForGlobalNormClippingWithOptimizer:(id)a3 updatableParameterCount:(unint64_t)a4;
- (void)allocateDeviceHeapForGraph:(id)a3 forInference:(BOOL)a4;
- (void)allocateDeviceMemoryForTensor:(id)a3;
- (void)allocateDeviceMemoryForTensor:(id)a3 batchSize:(unint64_t)a4;
- (void)allocateResultTensor:(id)a3;
- (void)broadcastTensor:(id)a3;
- (void)broadcastTensor:(id)a3 batchSize:(unint64_t)a4;
- (void)commitAndWaitForCompletion:(id)a3 enableProfiling:(BOOL)a4 graphExecutionTime:(id)a5 graphResultTensor:(id)a6;
- (void)commitDeviceAtIndex:(unint64_t)a3;
- (void)commitWithCompletionHandler:(id)a3 enableProfiling:(BOOL)a4 graphExecutionTime:(id)a5 graphResultTensor:(id)a6;
- (void)convertUpdatesToTensorDataForLayer:(id)a3;
- (void)convertUpdatesToTensorDataForTensorParameters:(id)a3;
- (void)copyMTLBuffer:(id)a3 toBytes:(void *)a4 length:(unint64_t)a5;
- (void)copyMTLBuffer:(id)a3 toNSData:(id)a4;
- (void)dealloc;
- (void)deallocateDeviceMemoryForTensor:(id)a3;
- (void)dispatchBroadcastTensor:(id)a3;
- (void)dispatchBroadcastTensor:(id)a3 batchSize:(unint64_t)a4;
- (void)dispatchFillTensor:(id)a3 deviceIndex:(unint64_t)a4;
- (void)dispatchForwardActivationsKernel:(id)a3 sourceTensor:(id)a4 resultTensor:(id)a5 deviceIndex:(unint64_t)a6;
- (void)dispatchForwardAndGradientLossLayer:(id)a3 sourceTensor:(id)a4 labelsTensor:(id)a5 labelsTensorStride:(unint64_t)a6 weightsTensor:(id)a7 resultTensor:(id)a8 resultGradientTensor:(id)a9;
- (void)dispatchForwardArithmeticBinaryKernel:(id)a3 sourceTensor:(id)a4 sourceSecondaryTensor:(id)a5 resultTensor:(id)a6 deviceIndex:(unint64_t)a7;
- (void)dispatchForwardArithmeticTertiaryKernel:(id)a3 sourceTensor:(id)a4 sourceSecondaryTensor:(id)a5 sourceTertiaryTensor:(id)a6 resultTensor:(id)a7 deviceIndex:(unint64_t)a8;
- (void)dispatchForwardArithmeticUnaryKernel:(id)a3 sourceTensor:(id)a4 resultTensor:(id)a5 deviceIndex:(unint64_t)a6;
- (void)dispatchForwardBatchNormalizationKernel:(id)a3 sourceTensor:(id)a4 resultTensor:(id)a5 deviceIndex:(unint64_t)a6 forTraining:(BOOL)a7;
- (void)dispatchForwardCompareLayer:(id)a3 sourceTensor:(id)a4 secondaryTensor:(id)a5 resultTensor:(id)a6 compareOp:(int)a7 forTraining:(BOOL)a8;
- (void)dispatchForwardEmbeddingLayer:(id)a3 weight:(id)a4 sourceTensor:(id)a5 resultTensor:(id)a6;
- (void)dispatchForwardFullyConnectedLayer:(id)a3 sourceTensor:(id)a4 resultTensor:(id)a5 forTraining:(BOOL)a6;
- (void)dispatchForwardGatherLayer:(id)a3 sourceTensors:(id)a4 resultTensor:(id)a5 forTraining:(BOOL)a6;
- (void)dispatchForwardGramMatrixKernel:(id)a3 sourceTensor:(id)a4 resultTensor:(id)a5 deviceIndex:(unint64_t)a6 forTraining:(BOOL)a7;
- (void)dispatchForwardGroupNormalizationKernel:(id)a3 sourceTensor:(id)a4 resultTensor:(id)a5 deviceIndex:(unint64_t)a6 forTraining:(BOOL)a7;
- (void)dispatchForwardInstanceNormalizationKernel:(id)a3 sourceTensor:(id)a4 resultTensor:(id)a5 deviceIndex:(unint64_t)a6 forTraining:(BOOL)a7;
- (void)dispatchForwardLayer:(id)a3 sourceTensor:(id)a4 secondaryTensor:(id)a5 tertiaryTensor:(id)a6 resultTensor:(id)a7 resultStateIsTemporary:(BOOL)a8 forTraining:(BOOL)a9;
- (void)dispatchForwardLayerNormalizationKernel:(id)a3 sourceTensors:(id)a4 resultTensor:(id)a5 deviceIndex:(unint64_t)a6 forTraining:(BOOL)a7;
- (void)dispatchForwardLossLayer:(id)a3 sourceTensor:(id)a4 labelsTensor:(id)a5 labelsTensorStride:(unint64_t)a6 weightsTensor:(id)a7 resultTensor:(id)a8 resultStateIsTemporary:(BOOL)a9 forTraining:(BOOL)a10;
- (void)dispatchForwardMHALayer:(id)a3 sourceTensors:(id)a4 resultTensor:(id)a5 resultStateIsTemporary:(BOOL)a6 forTraining:(BOOL)a7;
- (void)dispatchForwardMatMulLayer:(id)a3 sourceTensors:(id)a4 resultTensor:(id)a5;
- (void)dispatchForwardPaddingKernel:(id)a3 sourceTensor:(id)a4 resultTensor:(id)a5 deviceIndex:(unint64_t)a6;
- (void)dispatchForwardPoolingKernel:(id)a3 sourceTensor:(id)a4 resultTensor:(id)a5 deviceIndex:(unint64_t)a6 forTraining:(BOOL)a7;
- (void)dispatchForwardReduceLayer:(id)a3 sourceTensor:(id)a4 resultTensor:(id)a5 reductionType:(int)a6 reduceDimensions:(id)a7 forTraining:(BOOL)a8;
- (void)dispatchForwardResizeKernel:(id)a3 sourceTensor:(id)a4 resultTensor:(id)a5 deviceIndex:(unint64_t)a6;
- (void)dispatchForwardScatterLayer:(id)a3 sourceTensors:(id)a4 resultTensor:(id)a5 forTraining:(BOOL)a6;
- (void)dispatchForwardSelectLayer:(id)a3 conditionTensor:(id)a4 sourceTensors:(id)a5 resultTensor:(id)a6 forTraining:(BOOL)a7;
- (void)dispatchForwardSliceLayer:(id)a3 sourceTensor:(id)a4 resultTensor:(id)a5 forTraining:(BOOL)a6;
- (void)dispatchForwardSoftmaxKernel:(id)a3 sourceTensor:(id)a4 resultTensor:(id)a5 deviceIndex:(unint64_t)a6;
- (void)dispatchForwardSplitLayer:(id)a3 sourceTensor:(id)a4 resultTensors:(id)a5 forConcat:(BOOL)a6;
- (void)dispatchGradientActivationsKernel:(id)a3 sourceGradientTensor:(id)a4 resultGradientTensor:(id)a5 deviceIndex:(unint64_t)a6;
- (void)dispatchGradientArithmeticBinaryKernel:(id)a3 sourceGradientTensor:(id)a4 resultGradientTensor:(id)a5 secondaryResultGradientTensor:(id)a6 deviceIndex:(unint64_t)a7;
- (void)dispatchGradientArithmeticUnaryKernel:(id)a3 sourceGradientTensor:(id)a4 resultGradientTensor:(id)a5 deviceIndex:(unint64_t)a6;
- (void)dispatchGradientBatchNormalizationKernel:(id)a3 sourceGradientTensor:(id)a4 resultGradientTensor:(id)a5 deviceIndex:(unint64_t)a6;
- (void)dispatchGradientEmbeddingLayer:(id)a3 sourceGradientTensor:(id)a4;
- (void)dispatchGradientFullyConnectedLayer:(id)a3 sourceGradientTensor:(id)a4 resultGradientTensor:(id)a5 resultStateIsTemporary:(BOOL)a6;
- (void)dispatchGradientGramMatrixKernel:(id)a3 sourceGradientTensor:(id)a4 resultGradientTensor:(id)a5 deviceIndex:(unint64_t)a6;
- (void)dispatchGradientGroupNormalizationKernel:(id)a3 sourceGradientTensor:(id)a4 resultGradientTensor:(id)a5 deviceIndex:(unint64_t)a6;
- (void)dispatchGradientInstanceNormalizationKernel:(id)a3 sourceGradientTensor:(id)a4 resultGradientTensor:(id)a5 deviceIndex:(unint64_t)a6;
- (void)dispatchGradientLayer:(id)a3 sourceGradientTensor:(id)a4 resultGradientTensor:(id)a5;
- (void)dispatchGradientLayer:(id)a3 sourceGradientTensor:(id)a4 resultGradientTensor:(id)a5 secondaryResultGradientTensor:(id)a6;
- (void)dispatchGradientLayerNormalizationKernel:(id)a3 sourceGradientTensor:(id)a4 resultGradientTensor:(id)a5 deviceIndex:(unint64_t)a6;
- (void)dispatchGradientLossLayer:(id)a3 sourceGradientTensor:(id)a4 labelsTensor:(id)a5 labelsTensorStride:(unint64_t)a6 weightsTensor:(id)a7 resultGradientTensor:(id)a8;
- (void)dispatchGradientMHALayer:(id)a3 sourceGradientTensor:(id)a4 resultGradientTensors:(id)a5 resultStateIsTemporary:(BOOL)a6;
- (void)dispatchGradientMatMulLayer:(id)a3 sourceGradientTensor:(id)a4 resultGradientTensors:(id)a5;
- (void)dispatchGradientPaddingKernel:(id)a3 sourceGradientTensor:(id)a4 resultGradientTensor:(id)a5 deviceIndex:(unint64_t)a6;
- (void)dispatchGradientPoolingKernel:(id)a3 sourceGradientTensor:(id)a4 resultGradientTensor:(id)a5 deviceIndex:(unint64_t)a6;
- (void)dispatchGradientReduceLayer:(id)a3 sourceGradientTensor:(id)a4 resultGradientTensor:(id)a5 reductionType:(int)a6 reduceDimensions:(id)a7;
- (void)dispatchGradientResizeKernel:(id)a3 sourceGradientTensor:(id)a4 resultGradientTensor:(id)a5 deviceIndex:(unint64_t)a6;
- (void)dispatchGradientSelectLayer:(id)a3 conditionTensor:(id)a4 sourceGradientTensor:(id)a5 resultGradientTensors:(id)a6;
- (void)dispatchGradientSliceLayer:(id)a3 sourceGradientTensor:(id)a4 resultGradientTensor:(id)a5;
- (void)dispatchGradientSoftmaxKernel:(id)a3 sourceGradientTensor:(id)a4 resultGradientTensor:(id)a5 deviceIndex:(unint64_t)a6;
- (void)dispatchGradientSplitLayer:(id)a3 sourceGradientTensors:(id)a4 resultGradientTensor:(id)a5 forConcat:(BOOL)a6;
- (void)dispatchPadChannelsKernel:(id)a3 sourceImageBatch:(id)a4 resultImageBatch:(id)a5 deviceIndex:(unint64_t)a6;
- (void)dispatchRNNForwardLayer:(id)a3 sourceTensors:(id)a4 resultTensors:(id)a5;
- (void)dispatchRNNForwardLayer:(id)a3 sourceTensors:(id)a4 resultTensors:(id)a5 resultStateIsTemporary:(BOOL)a6 forTraining:(BOOL)a7;
- (void)dispatchRNNGradientLayer:(id)a3 sourceGradientTensors:(id)a4 resultGradientTensors:(id)a5;
- (void)dispatchReadTensor:(id)a3 targetBuffer:(void *)a4 batchSize:(unint64_t)a5;
- (void)dispatchReadTensorFromAllDevices:(id)a3 targetBuffer:(void *)a4 batchSize:(unint64_t)a5;
- (void)dispatchTransposeKernel:(id)a3 sourceTensor:(id)a4 resultTensor:(id)a5 deviceIndex:(unint64_t)a6 forward:(BOOL)a7;
- (void)encodePrimitiveToCommandBuffer:(id)a3 gpuDeviceOps:(id)a4 sourceTensor:(id)a5 secondaryTensor:(id)a6 tertiaryTensor:(id)a7 resultTensor:(id)a8 params:(CompareParams *)a9 sizeOfParams:(unint64_t)a10 pipelineState:(id)a11 deviceIndex:(unint64_t)a12;
- (void)incrementReadCountForGradientState:(id)a3 increment:(int64_t)a4;
- (void)incrementReadCountForTensorDeviceMemory:(id)a3 increment:(int64_t)a4;
- (void)multiDeviceTensorReduction:(id)a3 sourceBuffer:(void *)a4 targetBuffer:(void *)a5;
- (void)readTensor:(id)a3 fromDeviceIndex:(unint64_t)a4 targetBuffer:(void *)a5 batchSize:(unint64_t)a6 reduceOverBatch:(BOOL)a7;
- (void)readTensor:(id)a3 targetBuffer:(void *)a4;
- (void)reduceAcrossBatchForSource:(id)a3 result:(id)a4 batchSize:(unint64_t)a5 batchStride:(unint64_t)a6 numEntries:(unint64_t)a7 deviceIndex:(unint64_t)a8 commandBuffer:(id)a9;
- (void)reloadLSTMParameters:(id)a3 rnnGPUDeviceOps:(id)a4 mlcParameterIndex:(unint64_t)a5 tensor:(id)a6 isInputWeight:(BOOL)a7 isHiddenWeight:(BOOL)a8 isBias:(BOOL)a9 deviceNumber:(unint64_t)a10;
- (void)reloadParameterDataFromHostToDeviceMemoryForTensor:(id)a3;
- (void)restoreConvolutionParamsWithDeviceOps:(id)a3;
- (void)restoreRNNParamsWithDeviceOps:(id)a3 optimizer:(id)a4 inputWeightsParameter:(id)a5 hiddenWeightsParameter:(id)a6 biasesParameter:(id)a7 arrayOfParams:(id)a8;
- (void)rotateAndCopyMTLBuffer:(id)a3 toNSData:(id)a4 withTensorDescriptor:(id)a5;
- (void)saveOrRestoreTempMatrixDisableUpdates:(id)a3 commandBuffer:(id)a4 auxiliaryWeightsMemory:(id)a5 auxiliaryMomentumMemory:(id)a6 auxiliaryVelocityMemory:(id)a7 auxiliaryCenterWeightMemory:(id)a8 deviceNumber:(unint64_t)a9 kernelNumber:(unint64_t)a10 mlcIndex:(unint64_t)a11 auxIndex:(unint64_t)a12 numOptimizerData:(unint64_t)a13 saveToAux:(BOOL)a14 isInputWeight:(BOOL)a15 isHiddenWeight:(BOOL)a16 isBias:(BOOL)a17;
- (void)selectDevicesWithBatchSize:(unint64_t)a3 calledfromBindAndWrite:(BOOL)a4;
- (void)setDeviceMemoryForTensor:(id)a3 data:(id)a4;
- (void)setOptimizerLearningRate:(id)a3 learningRate:(float)a4;
- (void)setOptimizerTimeStep:(id)a3 timeStep:(unint64_t)a4;
- (void)signalAllDevicesExcludingDevice:(unint64_t)a3 eventValue:(unint64_t)a4;
- (void)signalNextEvent;
- (void)sumSharedGradientsForConvolutionLayerTensorParameter:(id)a3 layerIndexForSummedGradients:(unint64_t)a4;
- (void)sumSharedGradientsForNormalizationLayerTensorParameter:(id)a3 layerIndexForSummedGradients:(unint64_t)a4 isBetaTensor:(BOOL)a5;
- (void)synchronizeOptimizerBuffers:(id)a3 commandBuffer:(id)a4;
- (void)synchronizeOptimizerUpdatesForTensor:(id)a3;
- (void)synchronizeUpdatesForLayer:(id)a3;
- (void)synchronizeWeightMatrixForRNNLayer:(id)a3 matrixId:(unint64_t)a4 parameterType:(unint64_t)a5 accumulatorIndex:(unint64_t)a6 forLSTMNum:(unint64_t)a7 forDeviceNum:(unint64_t)a8 forGate:(unint64_t)a9;
- (void)unsafe_signalAllDevicesExcludingDevice:(unint64_t)a3 eventValue:(unint64_t)a4;
- (void)updateAllParametersWithOptimizer:(id)a3 arrayOfParameters:(id)a4;
- (void)updateConvolutionLayer:(id)a3 optimizer:(id)a4 weightsParameter:(id)a5 biasesParameter:(id)a6 arrayOfParams:(id)a7;
- (void)updateEmbeddingLayer:(id)a3 weightsParameter:(id)a4 optimizer:(id)a5 arrayOfParams:(id)a6;
- (void)updateFullyConnectedLayer:(id)a3 optimizer:(id)a4 weightsParameter:(id)a5 biasesParameter:(id)a6 arrayOfParams:(id)a7;
- (void)updateGraphExecutionTime:(id)a3 atIndex:(int)a4 gpuTime:(double)a5;
- (void)updateLayerNormalizationLayer:(id)a3 optimizer:(id)a4 betaParameter:(id)a5 gammaParameter:(id)a6 arrayOfParams:(id)a7;
- (void)updateMultiheadAttentionLayer:(id)a3 optimizer:(id)a4 weightsParameter:(id)a5 biasesParameter:(id)a6 arrayOfParams:(id)a7;
- (void)updateRNNLayer:(id)a3 optimizer:(id)a4 inputWeightsParameter:(id)a5 hiddenWeightsParameter:(id)a6 biasesParameter:(id)a7 arrayOfParams:(id)a8;
- (void)updateTensorParameter:(id)a3 optimizer:(id)a4 gradient:(id)a5 arrayOfParams:(id)a6;
- (void)updateTensorsForFMAFusedLayers:(id)a3 layerNext:(id)a4;
- (void)updateTensorsForFusedArithmeticAndLayerNormalizationLayer:(id)a3 layerNext:(id)a4;
- (void)updateWithAdamOptimizer:(id)a3 encoder:(id)a4 deviceParameter:(id)a5 source:(id)a6 gradient:(id)a7 result:(id)a8 momentumIndex:(unint64_t)a9;
- (void)updateWithOptimizer:(id)a3 arrayOfParams:(id)a4 commandBuffer:(id)a5 deviceParameter:(id)a6 source:(id)a7 gradient:(id)a8 result:(id)a9 momentumIndex:(unint64_t)a10;
- (void)updateWithRMSPropOptimizer:(id)a3 encoder:(id)a4 deviceParameter:(id)a5 source:(id)a6 gradient:(id)a7 result:(id)a8 momentumIndex:(unint64_t)a9;
- (void)updateWithSGDOptimizer:(id)a3 encoder:(id)a4 deviceParameter:(id)a5 source:(id)a6 gradient:(id)a7 result:(id)a8 momentumIndex:(unint64_t)a9;
- (void)waitForAllDevicesExcludingDevice:(unint64_t)a3 eventValue:(unint64_t)a4;
- (void)waitForOthers;
@end

@implementation MLCDeviceGPU

- (id)batchNormalizationLayerWithChannelCount:(unint64_t)a3 mean:(id)a4 variance:(id)a5 beta:(id)a6 gamma:(id)a7 varianceEpsilon:(float)a8 momentum:(float)a9
{
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = objc_autoreleasePoolPush();
  *&v21 = a8;
  *&v22 = a9;
  v23 = [_MLCGPUBatchNormalization layerWithDevice:self numOfFeatureChannels:a3 mean:v16 variance:v17 beta:v18 gamma:v19 varianceEpsilon:v21 momentum:v22];
  v24 = [v23 deviceOps];
  v25 = [v24 copy];

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

- (id)groupNormalizationLayerWithFeatureChannelCount:(unint64_t)a3 groupCount:(unint64_t)a4 beta:(id)a5 gamma:(id)a6 varianceEpsilon:(float)a7
{
  v12 = a5;
  v13 = a6;
  v14 = objc_autoreleasePoolPush();
  *&v15 = a7;
  v16 = [_MLCGPUGroupNormalization layerWithDevice:self numOfFeatureChannels:a3 groupCount:a4 beta:v12 gamma:v13 varianceEpsilon:v15];
  v17 = [v16 deviceOps];
  v18 = [v17 copy];

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

- (id)fusedBatchNormalizationAndNeuronLayerWithDescriptor:(id)a3 numOfFeatureChannels:(unint64_t)a4 mean:(id)a5 variance:(id)a6 beta:(id)a7 gamma:(id)a8 varianceEpsilon:(float)a9 momentum:(float)a10
{
  v18 = a3;
  v19 = a5;
  v20 = a6;
  v21 = a7;
  v22 = a8;
  v23 = objc_autoreleasePoolPush();
  *&v24 = a9;
  *&v25 = a10;
  v26 = [_MLCGPUBatchNormalization layerWithDevice:self fusedWithNeuronDescriptor:v18 numOfFeatureChannels:a4 mean:v19 variance:v20 beta:v21 gamma:v24 varianceEpsilon:v25 momentum:v22];
  v27 = [v26 deviceOps];
  v28 = [v27 copy];

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

- (id)instanceNormalizationLayerWithChannelCount:(unint64_t)a3 mean:(id)a4 variance:(id)a5 beta:(id)a6 gamma:(id)a7 varianceEpsilon:(float)a8 momentum:(float)a9
{
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = objc_autoreleasePoolPush();
  *&v21 = a8;
  *&v22 = a9;
  v23 = [_MLCGPUInstanceNormalization layerWithDevice:self numOfFeatureChannels:a3 mean:v16 variance:v17 beta:v18 gamma:v19 varianceEpsilon:v21 momentum:v22];
  v24 = [v23 deviceOps];
  v25 = [v24 copy];

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

- (id)fusedInstanceNormalizationAndNeuronLayerWithDescriptor:(id)a3 numOfFeatureChannels:(unint64_t)a4 mean:(id)a5 variance:(id)a6 beta:(id)a7 gamma:(id)a8 varianceEpsilon:(float)a9 momentum:(float)a10
{
  v18 = a3;
  v19 = a5;
  v20 = a6;
  v21 = a7;
  v22 = a8;
  v23 = objc_autoreleasePoolPush();
  *&v24 = a9;
  *&v25 = a10;
  v26 = [_MLCGPUInstanceNormalization layerWithDevice:self fusedWithNeuronDescriptor:v18 numOfFeatureChannels:a4 mean:v19 variance:v20 beta:v21 gamma:v24 varianceEpsilon:v25 momentum:v22];
  v27 = [v26 deviceOps];
  v28 = [v27 copy];

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

- (id)convolutionLayerWithDescriptor:(id)a3 weights:(id)a4 biasTerms:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_autoreleasePoolPush();
  v12 = [_MLCGPUConvolution layerWithDevice:self weights:v9 biasTerms:v10 descriptor:v8 neuronDescriptor:0];
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
  v15 = [_MLCGPUConvolution layerWithDevice:self weights:v12 biasTerms:v13 descriptor:v11 neuronDescriptor:v10];
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

- (id)dropoutLayerWithRate:(float)a3 seed:(unint64_t)a4
{
  v7 = objc_autoreleasePoolPush();
  *&v8 = a3;
  v9 = [_MLCGPUDropout layerWithDevice:self rate:a4 seed:v8];
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
  v12 = [_MLCGPUFullyConnected layerWithDevice:self weights:v9 biasTerms:v10 descriptor:v8 neuronDescriptor:0];
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
  v15 = [_MLCGPUFullyConnected layerWithDevice:self weights:v12 biasTerms:v13 descriptor:v11 neuronDescriptor:v10];
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

- (id)neuronLayerWithDescriptor:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = [_MLCGPUNeuron layerWithDevice:self descriptor:v4];
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
  v23 = [_MLCGPULSTM layerWithDevice:self descriptor:v30 inputWeights:v16 hiddenWeights:v17 peepholeWeights:v18 biasTerms:v19 gateActivations:v20 outputResultActivation:v21 inferenceOnly:v29];
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

- (id)poolingLayerWithDescriptor:(id)a3 paddingSizes:(unint64_t *)a4
{
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = [_MLCGPUPooling layerWithDevice:self descriptor:v6 paddingSizes:a4];
  v9 = [v8 deviceOps];
  v10 = [v9 copy];

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

- (id)reshapeLayerWithShape:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = [_MLCGPUReshape layerWithDevice:self];
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
  v6 = [_MLCGPUSplit layerWithDevice:self dimension:a3];
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

- (id)gramMatrixLayerWithScaleFactor:(float)a3
{
  v5 = objc_autoreleasePoolPush();
  *&v6 = a3;
  v7 = [_MLCGPUGramMatrix layerWithDevice:self scale:v6];
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

- (id)transposeLayerWithShape:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = [_MLCGPUTranspose layerWithDevice:self shape:v4];
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

- (id)selectLayer
{
  v3 = objc_autoreleasePoolPush();
  v4 = [_MLCGPUSelect layerWithDevice:self];
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

- (void)updateTensorsForFMAFusedLayers:(id)a3 layerNext:(id)a4
{
  v27 = a3;
  v5 = a4;
  v6 = [v5 resultTensors];
  v7 = [v6 objectAtIndexedSubscript:0];

  v8 = [v5 sourceTensors];
  v9 = [v8 objectAtIndexedSubscript:0];
  v10 = [v27 resultTensors];
  v11 = [v10 objectAtIndexedSubscript:0];
  v12 = v9 == v11;

  v13 = [v5 sourceTensors];
  v14 = [v13 objectAtIndexedSubscript:v12];
  v15 = [v27 sourceTensors];
  [v15 setObject:v14 atIndexedSubscript:2];

  v16 = [v27 sourceGradientTensors];
  v17 = [v16 count];

  if (v17)
  {
    v18 = [v5 sourceGradientTensors];
    v19 = [v18 objectAtIndexedSubscript:0];
    v20 = [v27 sourceGradientTensors];
    [v20 setObject:v19 atIndexedSubscript:0];
  }

  v21 = [v27 resultTensors];
  [v21 setObject:v7 atIndexedSubscript:0];

  v22 = [v7 parentLayers];
  [v22 setObject:v27 atIndexedSubscript:0];

  v23 = [v27 fusedLayers];
  [v23 addObject:v5];

  [v5 setSkipLayer:1];
  [v5 setIsLastFusedLayer:1];
  v24 = [v27 deviceOps];
  v25 = [v24 count];

  if (v25)
  {
    v26 = [MEMORY[0x277CBEBF8] mutableCopy];
    [v27 setDeviceOps:v26];
  }
}

- (void)updateTensorsForFusedArithmeticAndLayerNormalizationLayer:(id)a3 layerNext:(id)a4
{
  v21 = a3;
  v5 = a4;
  v6 = [v21 sourceTensors];
  v7 = [v6 objectAtIndexedSubscript:0];

  v8 = [v5 sourceTensors];
  [v8 setObject:v7 atIndexedSubscript:0];

  v9 = [v7 childLayers];
  [v9 setObject:v5 atIndexedSubscript:0];

  v10 = [v21 sourceTensors];
  v11 = [v10 objectAtIndexedSubscript:1];

  v12 = [v5 sourceTensors];
  [v12 setObject:v11 atIndexedSubscript:1];

  v13 = [v21 sourceTensors];
  v14 = [v13 objectAtIndexedSubscript:0];
  v15 = v11 == v14;

  v16 = [v11 childLayers];
  [v16 setObject:v5 atIndexedSubscript:v15];

  [v21 setSkipLayer:1];
  [v21 setIsLastFusedLayer:0];
  v17 = [v5 fusedLayers];
  [v17 addObject:v21];

  v18 = [v5 deviceOps];
  v19 = [v18 count];

  if (v19)
  {
    v20 = [MEMORY[0x277CBEBF8] mutableCopy];
    [v5 setDeviceOps:v20];
  }
}

- (BOOL)canFuseConvolutionLayerForInference:(id)a3
{
  v3 = a3;
  v4 = [v3 weights];
  v5 = [v4 childLayers];
  v6 = [v5 count];

  if (v6 == 1)
  {
    v7 = [v3 compileForInferenceOnly];
  }

  else
  {
    v8 = [v3 weights];
    v9 = [v8 childLayers];
    v10 = [v9 count];

    if (v10)
    {
      v11 = 0;
      do
      {
        v12 = [v3 weights];
        v13 = [v12 childLayers];
        v14 = [v13 objectAtIndexedSubscript:v11];

        v7 = [v14 compileForInferenceOnly];
        if ((v7 & 1) == 0)
        {
          break;
        }

        ++v11;
        v15 = [v3 weights];
        v16 = [v15 childLayers];
        v17 = [v16 count];
      }

      while (v11 < v17);
    }

    else
    {
      v7 = 1;
    }
  }

  return v7;
}

- (BOOL)canFuseFullyConnectedLayerForInference:(id)a3
{
  v3 = a3;
  v4 = [v3 weights];
  v5 = [v4 childLayers];
  v6 = [v5 count];

  if (v6 == 1)
  {
    v7 = [v3 compileForInferenceOnly];
  }

  else
  {
    v8 = [v3 weights];
    v9 = [v8 childLayers];
    v10 = [v9 count];

    if (v10)
    {
      v11 = 0;
      do
      {
        v12 = [v3 weights];
        v13 = [v12 childLayers];
        v14 = [v13 objectAtIndexedSubscript:v11];

        v7 = [v14 compileForInferenceOnly];
        if ((v7 & 1) == 0)
        {
          break;
        }

        ++v11;
        v15 = [v3 weights];
        v16 = [v15 childLayers];
        v17 = [v16 count];
      }

      while (v11 < v17);
    }

    else
    {
      v7 = 1;
    }
  }

  return v7;
}

- (BOOL)compileLayerDeviceOps:(id)a3 sourceTensors:(id)a4 resultTensor:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 objectAtIndexedSubscript:0];
  v12 = [v11 layer];
  v13 = objc_opt_class();

  if (!v13)
  {
    v13 = objc_opt_class();
  }

  v14 = [v13 compileWithDevice:self deviceOps:v8 sourceTensors:v9 resultTensor:v10];
  v15 = [v9 objectAtIndexedSubscript:0];
  [v10 setMultiDeviceReductionType:{objc_msgSend(v15, "multiDeviceReductionType")}];

  v16 = [v11 layer];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v34 = v14;
    v17 = [v11 batchFirst];
    v18 = [v9 objectAtIndexedSubscript:0];
    v19 = [v18 descriptor];
    v20 = [v19 shape];
    v26 = [v20 objectAtIndexedSubscript:(v17 & 1) == 0];
    v27 = [v26 unsignedIntegerValue];
  }

  else
  {
    v33 = v13;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v18 = [v9 objectAtIndexedSubscript:0];
    v19 = [v18 descriptor];
    v22 = [v19 shape];
    v20 = v22;
    if (isKindOfClass)
    {
      v34 = v14;
      v26 = [v22 objectAtIndexedSubscript:0];
      v30 = [v9 objectAtIndexedSubscript:{objc_msgSend(v26, "unsignedIntegerValue") == 1}];
      [v30 descriptor];
      v23 = v31 = v16;
      [v23 shape];
      v24 = v32 = v8;
      v25 = [v24 objectAtIndexedSubscript:0];
      v27 = [v25 unsignedIntegerValue];

      v8 = v32;
      v16 = v31;
    }

    else
    {
      v28 = [v22 count];

      if (v28 < 2)
      {
        v27 = 1;
        v13 = v33;
        goto LABEL_11;
      }

      v34 = v14;
      v18 = [v9 objectAtIndexedSubscript:0];
      v19 = [v18 descriptor];
      v20 = [v19 shape];
      v26 = [v20 objectAtIndexedSubscript:0];
      v27 = [v26 unsignedIntegerValue];
    }

    v13 = v33;
  }

  v14 = v34;
LABEL_11:
  [v11 setBatchSize:v27];

  return v14;
}

- (BOOL)compileLayerDeviceOps:(id)a3 sourceTensors:(id)a4 resultTensors:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 objectAtIndexedSubscript:0];
  v12 = [v11 layer];
  v13 = objc_opt_class();

  if (!v13)
  {
    v13 = objc_opt_class();
  }

  v14 = [v13 compileWithDevice:self deviceOps:v8 sourceTensors:v9 resultTensors:v10];
  v15 = [v9 objectAtIndexedSubscript:0];
  v16 = [v15 descriptor];
  v17 = [v16 shape];
  v18 = [v17 count];

  if (v18 < 2)
  {
    v27 = 1;
  }

  else
  {
    v29 = [v9 objectAtIndexedSubscript:0];
    v19 = [v29 descriptor];
    v20 = [v19 shape];
    [v20 objectAtIndexedSubscript:0];
    v21 = v11;
    v22 = v9;
    v23 = v8;
    v24 = v10;
    v26 = v25 = v14;
    v27 = [v26 unsignedIntegerValue];

    v14 = v25;
    v10 = v24;
    v8 = v23;
    v9 = v22;
    v11 = v21;
  }

  [v11 setBatchSize:v27];

  return v14;
}

- (id)createOptimizerDeviceDataForTensor:(id)a3 optimizer:(id)a4 optimizerData:(id)a5 isVector:(BOOL)a6
{
  if (a6)
  {
    GPU_CreateOptimizerDeviceVectorDataForTensor(self, a3, a5);
  }

  else
  {
    GPU_CreateOptimizerDeviceDataForTensor(self, a3, a5);
  }
  v6 = ;

  return v6;
}

- (void)allocateDeviceDataForGlobalNormClippingWithOptimizer:(id)a3 updatableParameterCount:(unint64_t)a4
{
  v6 = a3;
  if ([(MLCDeviceGPU *)self numDevicesToUse]== 1)
  {
    v5 = [MEMORY[0x277CBEBF8] mutableCopy];
    [v6 setOneStepOptimizerBuffers:v5];
  }
}

- (unint64_t)allocatedDeviceDataSizeForTraining:(BOOL)a3 layer:(id)a4
{
  if (!a3)
  {
    return 0;
  }

  v4 = [a4 objectAtIndexedSubscript:0];
  v5 = [v4 forwardKernel];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v7 = 0;
  if (isKindOfClass)
  {
    v8 = [v4 gradientKernel];
    v9 = [v8 count];

    v29 = v4;
    v10 = v4;
    v7 = 0;
    if (v9)
    {
      for (i = 0; i != v9; ++i)
      {
        v12 = [v10 rnnTrainableWeightGradients];
        v13 = [v12 objectAtIndexedSubscript:i];

        v14 = [v10 rnnMomentumMatrices];
        v15 = [v14 objectAtIndexedSubscript:i];

        v16 = [v10 rnnVelocityMatrices];
        v17 = [v16 objectAtIndexedSubscript:i];

        v18 = [v10 rnnCenterWeightMatrices];
        v19 = [v18 objectAtIndexedSubscript:i];

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

- (id)matMulLayerWithDescriptor:(id)a3 sourceTensors:(id)a4 resultTensor:(id)a5 inferenceOnly:(BOOL)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = objc_autoreleasePoolPush();
  v13 = [_MLCGPUMatMul layerWithDevice:self descriptor:v9 sourceTensors:v10 resultTensor:v11];
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

- (id)sliceLayerWithbegin:(id)a3 end:(id)a4 stride:(id)a5 inferenceOnly:(BOOL)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = objc_autoreleasePoolPush();
  v13 = [_MLCGPUSlice layerWithDevice:self begin:v9 end:v10 stride:v11];
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

- (id)gatherLayerWithDimension:(unint64_t)a3
{
  v5 = objc_autoreleasePoolPush();
  v6 = [_MLCGPUGather layerWithDevice:self dimension:a3];
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

- (id)weightsGradients:(id)a3
{
  v67[4] = *MEMORY[0x277D85DE8];
  v64 = a3;
  v4 = 0;
  if ([(MLCDeviceGPU *)self numDevicesToUse])
  {
    v5 = 0;
    v63 = self;
    do
    {
      v6 = [v64 objectAtIndexedSubscript:v5];
      v7 = [v6 gradientState];
      v8 = [v7 objectAtIndexedSubscript:0];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      v10 = [v6 gradientState];
      v11 = [v10 objectAtIndexedSubscript:0];
      if (isKindOfClass)
      {

        v12 = [v11 gradientForWeights];
        v13 = [v6 forwardKernel];
        v14 = [v13 dataSource];
        v15 = [v14 weight];
        v16 = [v15 descriptor];
        v17 = [v16 tensorAllocationSizeInBytes];

        self = v63;
      }

      else
      {
        objc_opt_class();
        v18 = objc_opt_isKindOfClass();

        v19 = [v6 gradientState];
        v20 = [v19 objectAtIndexedSubscript:0];
        v12 = v20;
        if (v18)
        {
          v21 = [v20 data];

          v17 = [v21 length];
          v12 = v21;
        }

        else
        {

          v17 = [v12 length];
        }
      }

      v22 = [(MLCDeviceGPU *)self gpuCommandQueueList];
      v23 = [v22 objectAtIndexedSubscript:v5];
      v24 = [v23 commandBuffer];

      [MLCGPUHelper synchronizeResource:v12 commandBuffer:v24];
      [v24 commit];
      [v24 waitUntilCompleted];
      if (v5)
      {
        if ([v4 length] >= 4)
        {
          v25 = 0;
          do
          {
            v26 = *([v12 contents] + 4 * v25);
            v27 = [v4 bytes];
            *(v27 + 4 * v25) = v26 + *(v27 + 4 * v25);
            ++v25;
          }

          while (v25 < [v4 length] >> 2);
        }
      }

      else
      {
        v28 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:objc_msgSend(v12 length:"contents") freeWhenDone:{v17, 0}];

        v4 = v28;
      }

      if (-[MLCDeviceGPU numDevicesToUse](self, "numDevicesToUse") - 1 == v5 && ([v6 forwardKernel], v29 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), v30 = objc_opt_isKindOfClass(), v29, (v30 & 1) != 0))
      {
        v61 = objc_autoreleasePoolPush();
        v59 = [MEMORY[0x277CBEA90] dataWithBytes:objc_msgSend(v4 length:{"bytes"), objc_msgSend(v4, "length")}];
        v31 = [v6 forwardKernel];
        v67[0] = &unk_284BA5888;
        v32 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v31, "outputFeatureChannels") * objc_msgSend(v31, "inputFeatureChannels")}];
        v67[1] = v32;
        v33 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v31, "kernelHeight")}];
        v67[2] = v33;
        v34 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v31, "kernelWidth")}];
        v67[3] = v34;
        v35 = [MEMORY[0x277CBEA60] arrayWithObjects:v67 count:4];

        self = v63;
        v36 = v59;

        v37 = v61;
        rotateWeightsTensorBy180Degree(v35, v59, v4);
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
        v39 = [v6 mpsGraphTensors];
        v31 = [v39 objectAtIndexedSubscript:0];

        v35 = [v31 shape];
        v40 = [v6 convolutionTranspose];
        v60 = v38;
        v56 = [v38 bytes];
        v55 = [v4 bytes];
        v58 = [v35 objectAtIndexedSubscript:1];
        v54 = [v58 unsignedIntegerValue];
        v57 = [v35 objectAtIndexedSubscript:0];
        v53 = [v57 unsignedIntegerValue];
        if (v40)
        {
          v41 = [v35 objectAtIndexedSubscript:3];
          v51 = [v41 unsignedIntegerValue];
          v42 = [v35 objectAtIndexedSubscript:2];
          v43 = [v42 unsignedIntegerValue];
          LODWORD(v50) = GPU_GetDataTypeFromMPSDataType([v31 dataType]);
          v44 = [MLCDataHelper convertSourceHWOI:v56 toResultOIHW:v55 width:v54 height:v53 inputFeatureChannelCount:v51 outputFeatureChannelCount:v43 dataType:v50];
        }

        else
        {
          v41 = [v35 objectAtIndexedSubscript:2];
          v52 = [v41 unsignedIntegerValue];
          v42 = [v35 objectAtIndexedSubscript:3];
          v45 = [v42 unsignedIntegerValue];
          LODWORD(v50) = GPU_GetDataTypeFromMPSDataType([v31 dataType]);
          v44 = [MLCDataHelper convertSourceHWIO:v56 toResultOIHW:v55 width:v54 height:v53 inputFeatureChannelCount:v52 outputFeatureChannelCount:v45 dataType:v50];
        }

        v46 = v44;

        if (v46)
        {
          v37 = v62;
          self = v63;
        }

        else
        {
          v47 = +[MLCLog framework];
          v37 = v62;
          if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
          {
            [(MLCDeviceGPU(MLCLayerOperations) *)buf weightsGradients:v47];
          }

          self = v63;
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

- (id)biasesGradients:(id)a3
{
  v4 = a3;
  v5 = 0;
  if ([(MLCDeviceGPU *)self numDevicesToUse])
  {
    v6 = 0;
    v7 = 0x277CD7000uLL;
    v35 = v4;
    do
    {
      v8 = [v4 objectAtIndexedSubscript:{v6, v35}];
      v9 = [v8 gradientState];
      v10 = [v9 objectAtIndexedSubscript:0];
      v11 = *(v7 + 1584);
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      v13 = [v8 gradientState];
      v14 = [v13 objectAtIndexedSubscript:0];
      v36 = v8;
      if (isKindOfClass)
      {

        v15 = [v14 gradientForBiases];
        v16 = [v8 forwardKernel];
        [v16 dataSource];
        v18 = v17 = self;
        v19 = [v18 biasTerm];
        v20 = [v19 descriptor];
        v21 = [v20 tensorAllocationSizeInBytes];

        self = v17;
        v7 = 0x277CD7000;

        v4 = v35;
      }

      else
      {
        objc_opt_class();
        v22 = objc_opt_isKindOfClass();

        v23 = [v8 gradientState];
        v24 = [v23 objectAtIndexedSubscript:1];
        v15 = v24;
        if (v22)
        {
          v25 = [v24 data];

          v21 = [v25 length];
          v15 = v25;
        }

        else
        {

          v21 = [v15 length];
        }
      }

      v26 = [(MLCDeviceGPU *)self gpuCommandQueueList];
      v27 = [v26 objectAtIndexedSubscript:v6];
      v28 = [v27 commandBuffer];

      [MLCGPUHelper synchronizeResource:v15 commandBuffer:v28];
      [v28 commit];
      [v28 waitUntilCompleted];
      if (v6)
      {
        v29 = v36;
        if ([v5 length] >= 4)
        {
          v30 = 0;
          do
          {
            v31 = *([v15 contents] + 4 * v30);
            v32 = [v5 bytes];
            *(v32 + 4 * v30) = v31 + *(v32 + 4 * v30);
            ++v30;
          }

          while (v30 < [v5 length] >> 2);
        }
      }

      else
      {
        v33 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:objc_msgSend(v15 length:"contents") freeWhenDone:{v21, 0}];

        v5 = v33;
        v29 = v36;
      }

      ++v6;
    }

    while (v6 < [(MLCDeviceGPU *)self numDevicesToUse]);
  }

  return v5;
}

- (id)mhaWeightGradient:(id)a3 withSize:(unint64_t)a4 index:(unint64_t)a5
{
  v23 = a5;
  v24 = a3;
  v7 = 0;
  if ([(MLCDeviceGPU *)self numDevicesToUse])
  {
    v8 = 0;
    do
    {
      v9 = [v24 objectAtIndexedSubscript:{v8, v23}];
      v10 = [(MLCDeviceGPU *)self gpuCommandQueueList];
      v11 = [v10 objectAtIndexedSubscript:v8];
      v12 = [v11 commandBuffer];

      v13 = [v9 gradientState];
      v14 = [v13 objectAtIndexedSubscript:v23];
      v15 = [v14 data];

      [MLCGPUHelper synchronizeResource:v15 commandBuffer:v12];
      [v12 commit];
      [v12 waitUntilCompleted];
      v16 = [MEMORY[0x277CBEB28] data];
      v17 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:objc_msgSend(v15 length:"contents") freeWhenDone:{a4, 0}];
      [v16 appendData:v17];

      if (v8)
      {
        if (a4 >= 4)
        {
          v18 = 0;
          do
          {
            v19 = *([v16 bytes] + 4 * v18);
            v20 = [v7 bytes];
            *(v20 + 4 * v18) = v19 + *(v20 + 4 * v18);
            ++v18;
          }

          while (a4 >> 2 != v18);
        }
      }

      else
      {
        v21 = v16;

        v7 = v21;
      }

      ++v8;
    }

    while (v8 < [(MLCDeviceGPU *)self numDevicesToUse]);
  }

  return v7;
}

- (id)mhaBiasGradient:(id)a3 withSize:(unint64_t)a4 index:(unint64_t)a5
{
  v23 = a5;
  v24 = a3;
  v7 = 0;
  if ([(MLCDeviceGPU *)self numDevicesToUse])
  {
    v8 = 0;
    do
    {
      v9 = [v24 objectAtIndexedSubscript:{v8, v23}];
      v10 = [(MLCDeviceGPU *)self gpuCommandQueueList];
      v11 = [v10 objectAtIndexedSubscript:v8];
      v12 = [v11 commandBuffer];

      v13 = [v9 gradientState];
      v14 = [v13 objectAtIndexedSubscript:v23 + 4];
      v15 = [v14 data];

      [MLCGPUHelper synchronizeResource:v15 commandBuffer:v12];
      [v12 commit];
      [v12 waitUntilCompleted];
      v16 = [MEMORY[0x277CBEB28] data];
      v17 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:objc_msgSend(v15 length:"contents") freeWhenDone:{a4, 0}];
      [v16 appendData:v17];

      if (v8)
      {
        if (a4 >= 4)
        {
          v18 = 0;
          do
          {
            v19 = *([v16 bytes] + 4 * v18);
            v20 = [v7 bytes];
            *(v20 + 4 * v18) = v19 + *(v20 + 4 * v18);
            ++v18;
          }

          while (a4 >> 2 != v18);
        }
      }

      else
      {
        v21 = v16;

        v7 = v21;
      }

      ++v8;
    }

    while (v8 < [(MLCDeviceGPU *)self numDevicesToUse]);
  }

  return v7;
}

- (id)mhaAttnBiasGradient:(id)a3 withSize:(unint64_t)a4 index:(unint64_t)a5
{
  v26 = a3;
  v8 = 0;
  if ([(MLCDeviceGPU *)self numDevicesToUse])
  {
    v9 = 0;
    v25 = a5 + 4;
    do
    {
      v10 = [v26 objectAtIndexedSubscript:{v9, v25}];
      v11 = [(MLCDeviceGPU *)self gpuCommandQueueList];
      v12 = [v11 objectAtIndexedSubscript:v9];
      v13 = [v12 commandBuffer];

      if ([v10 mhaHasBias])
      {
        v14 = 4;
      }

      else
      {
        v14 = 0;
      }

      v15 = [v10 gradientState];
      v16 = [v15 objectAtIndexedSubscript:v25 + v14];
      v17 = [v16 data];

      [MLCGPUHelper synchronizeResource:v17 commandBuffer:v13];
      [v13 commit];
      [v13 waitUntilCompleted];
      v18 = [MEMORY[0x277CBEB28] data];
      v19 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:objc_msgSend(v17 length:"contents") freeWhenDone:{a4, 0}];
      [v18 appendData:v19];

      if (v9)
      {
        if (a4 >= 4)
        {
          v20 = 0;
          do
          {
            v21 = *([v18 bytes] + 4 * v20);
            v22 = [v8 bytes];
            *(v22 + 4 * v20) = v21 + *(v22 + 4 * v20);
            ++v20;
          }

          while (a4 >> 2 != v20);
        }
      }

      else
      {
        v23 = v18;

        v8 = v23;
      }

      ++v9;
    }

    while (v9 < [(MLCDeviceGPU *)self numDevicesToUse]);
  }

  return v8;
}

- (id)lstmInputWeightGradient:(id)a3 mlcWeightIndex:(unint64_t)a4
{
  v35 = a3;
  v6 = 0;
  if ([(MLCDeviceGPU *)self numDevicesToUse])
  {
    v7 = 0;
    v31 = a4 & 3;
    v32 = a4 >> 2;
    v33 = self;
    v34 = a4;
    do
    {
      v8 = [v35 objectAtIndexedSubscript:v7];
      v9 = [v8 gradientKernel];
      v10 = qword_278A69218[v31];
      v11 = [v8 rnnExportedInputWeightGradientMatrices];
      v12 = [v11 objectAtIndexedSubscript:a4];

      v13 = objc_autoreleasePoolPush();
      v14 = [(MLCDeviceGPU *)self gpuCommandQueueList];
      v15 = [v14 objectAtIndexedSubscript:v7];
      v16 = [v15 commandBuffer];

      v36 = v9;
      v17 = [v9 objectAtIndexedSubscript:v32];
      v18 = [v8 rnnTrainableWeightGradients];
      v19 = [v18 objectAtIndexedSubscript:v32];
      v20 = [v10 unsignedIntegerValue];
      memset(v37, 0, sizeof(v37));
      [v17 encodeCopyWeightsToCommandBuffer:v16 weights:v19 matrixId:v20 matrix:v12 copyFromWeightsToMatrix:1 matrixOffset:v37];

      [v12 synchronizeOnCommandBuffer:v16];
      [v16 commit];
      [v16 waitUntilCompleted];

      objc_autoreleasePoolPop(v13);
      if (v7)
      {
        if ([v6 length] >= 4)
        {
          v21 = 0;
          self = v33;
          a4 = v34;
          do
          {
            v22 = [v12 data];
            v23 = *([v22 contents] + 4 * v21);
            v24 = [v6 bytes];
            *(v24 + 4 * v21) = v23 + *(v24 + 4 * v21);

            ++v21;
          }

          while (v21 < [v6 length] >> 2);
          goto LABEL_10;
        }
      }

      else
      {
        v25 = MEMORY[0x277CBEA90];
        v26 = [v12 data];
        v27 = [v26 contents];
        v28 = [v12 data];
        v29 = [v25 dataWithBytesNoCopy:v27 length:objc_msgSend(v28 freeWhenDone:{"length"), 0}];

        v6 = v29;
      }

      self = v33;
      a4 = v34;
LABEL_10:

      ++v7;
    }

    while (v7 < [(MLCDeviceGPU *)self numDevicesToUse]);
  }

  return v6;
}

- (id)lstmHiddenWeightGradient:(id)a3 mlcWeightIndex:(unint64_t)a4
{
  v35 = a3;
  v6 = 0;
  if ([(MLCDeviceGPU *)self numDevicesToUse])
  {
    v7 = 0;
    v31 = a4 & 3;
    v32 = a4 >> 2;
    v33 = self;
    v34 = a4;
    do
    {
      v8 = [v35 objectAtIndexedSubscript:v7];
      v9 = [v8 gradientKernel];
      v10 = qword_278A69238[v31];
      v11 = [v8 rnnExportedHiddenWeightGradientMatrices];
      v12 = [v11 objectAtIndexedSubscript:a4];

      v13 = objc_autoreleasePoolPush();
      v14 = [(MLCDeviceGPU *)self gpuCommandQueueList];
      v15 = [v14 objectAtIndexedSubscript:v7];
      v16 = [v15 commandBuffer];

      v36 = v9;
      v17 = [v9 objectAtIndexedSubscript:v32];
      v18 = [v8 rnnTrainableWeightGradients];
      v19 = [v18 objectAtIndexedSubscript:v32];
      v20 = [v10 unsignedIntegerValue];
      memset(v37, 0, sizeof(v37));
      [v17 encodeCopyWeightsToCommandBuffer:v16 weights:v19 matrixId:v20 matrix:v12 copyFromWeightsToMatrix:1 matrixOffset:v37];

      [v12 synchronizeOnCommandBuffer:v16];
      [v16 commit];
      [v16 waitUntilCompleted];

      objc_autoreleasePoolPop(v13);
      if (v7)
      {
        if ([v6 length] >= 4)
        {
          v21 = 0;
          self = v33;
          a4 = v34;
          do
          {
            v22 = [v12 data];
            v23 = *([v22 contents] + 4 * v21);
            v24 = [v6 bytes];
            *(v24 + 4 * v21) = v23 + *(v24 + 4 * v21);

            ++v21;
          }

          while (v21 < [v6 length] >> 2);
          goto LABEL_10;
        }
      }

      else
      {
        v25 = MEMORY[0x277CBEA90];
        v26 = [v12 data];
        v27 = [v26 contents];
        v28 = [v12 data];
        v29 = [v25 dataWithBytesNoCopy:v27 length:objc_msgSend(v28 freeWhenDone:{"length"), 0}];

        v6 = v29;
      }

      self = v33;
      a4 = v34;
LABEL_10:

      ++v7;
    }

    while (v7 < [(MLCDeviceGPU *)self numDevicesToUse]);
  }

  return v6;
}

- (id)lstmBiasGradient:(id)a3 mlcBiasIndex:(unint64_t)a4
{
  v35 = a3;
  v6 = 0;
  if ([(MLCDeviceGPU *)self numDevicesToUse])
  {
    v7 = 0;
    v31 = a4 & 3;
    v32 = a4 >> 2;
    v33 = self;
    v34 = a4;
    do
    {
      v8 = [v35 objectAtIndexedSubscript:v7];
      v9 = [v8 gradientKernel];
      v10 = qword_278A69258[v31];
      v11 = [v8 rnnExportedBiasGradientMatrices];
      v12 = [v11 objectAtIndexedSubscript:a4];

      v13 = objc_autoreleasePoolPush();
      v14 = [(MLCDeviceGPU *)self gpuCommandQueueList];
      v15 = [v14 objectAtIndexedSubscript:v7];
      v16 = [v15 commandBuffer];

      v36 = v9;
      v17 = [v9 objectAtIndexedSubscript:v32];
      v18 = [v8 rnnTrainableWeightGradients];
      v19 = [v18 objectAtIndexedSubscript:v32];
      v20 = [v10 unsignedIntegerValue];
      memset(v37, 0, sizeof(v37));
      [v17 encodeCopyWeightsToCommandBuffer:v16 weights:v19 matrixId:v20 matrix:v12 copyFromWeightsToMatrix:1 matrixOffset:v37];

      [v12 synchronizeOnCommandBuffer:v16];
      [v16 commit];
      [v16 waitUntilCompleted];

      objc_autoreleasePoolPop(v13);
      if (v7)
      {
        if ([v6 length] >= 4)
        {
          v21 = 0;
          self = v33;
          a4 = v34;
          do
          {
            v22 = [v12 data];
            v23 = *([v22 contents] + 4 * v21);
            v24 = [v6 bytes];
            *(v24 + 4 * v21) = v23 + *(v24 + 4 * v21);

            ++v21;
          }

          while (v21 < [v6 length] >> 2);
          goto LABEL_10;
        }
      }

      else
      {
        v25 = MEMORY[0x277CBEA90];
        v26 = [v12 data];
        v27 = [v26 contents];
        v28 = [v12 data];
        v29 = [v25 dataWithBytesNoCopy:v27 length:objc_msgSend(v28 freeWhenDone:{"length"), 0}];

        v6 = v29;
      }

      self = v33;
      a4 = v34;
LABEL_10:

      ++v7;
    }

    while (v7 < [(MLCDeviceGPU *)self numDevicesToUse]);
  }

  return v6;
}

- (id)betaGradients:(id)a3
{
  v4 = a3;
  v5 = 0;
  if ([(MLCDeviceGPU *)self numDevicesToUse])
  {
    v6 = 0;
    do
    {
      v7 = [v4 objectAtIndexedSubscript:v6];
      v8 = [v7 normalizationBetaGradient];
      v9 = [v7 normalizationSumBetaGammaDeltaKernel];

      v10 = [v8 length];
      if (v9)
      {
        v10 /= [v7 batchSize];
      }

      v11 = [(MLCDeviceGPU *)self gpuCommandQueueList];
      v12 = [v11 objectAtIndexedSubscript:v6];
      v13 = [v12 commandBuffer];

      [MLCGPUHelper synchronizeResource:v8 commandBuffer:v13];
      [v13 commit];
      [v13 waitUntilCompleted];
      if (v6)
      {
        if ([v5 length] >= 4)
        {
          v14 = 0;
          do
          {
            v15 = *([v8 contents] + 4 * v14);
            v16 = [v5 bytes];
            *(v16 + 4 * v14) = v15 + *(v16 + 4 * v14);
            ++v14;
          }

          while (v14 < [v5 length] >> 2);
        }
      }

      else
      {
        v17 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:objc_msgSend(v8 length:"contents") freeWhenDone:{v10, 0}];

        v5 = v17;
      }

      ++v6;
    }

    while (v6 < [(MLCDeviceGPU *)self numDevicesToUse]);
  }

  return v5;
}

- (id)gammaGradients:(id)a3
{
  v4 = a3;
  v5 = 0;
  if ([(MLCDeviceGPU *)self numDevicesToUse])
  {
    v6 = 0;
    do
    {
      v7 = [v4 objectAtIndexedSubscript:v6];
      v8 = [v7 normalizationGammaGradient];
      v9 = [v7 normalizationSumBetaGammaDeltaKernel];

      v10 = [v8 length];
      if (v9)
      {
        v10 /= [v7 batchSize];
      }

      v11 = [(MLCDeviceGPU *)self gpuCommandQueueList];
      v12 = [v11 objectAtIndexedSubscript:v6];
      v13 = [v12 commandBuffer];

      [MLCGPUHelper synchronizeResource:v8 commandBuffer:v13];
      [v13 commit];
      [v13 waitUntilCompleted];
      if (v6)
      {
        if ([v5 length] >= 4)
        {
          v14 = 0;
          do
          {
            v15 = *([v8 contents] + 4 * v14);
            v16 = [v5 bytes];
            *(v16 + 4 * v14) = v15 + *(v16 + 4 * v14);
            ++v14;
          }

          while (v14 < [v5 length] >> 2);
        }
      }

      else
      {
        v17 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:objc_msgSend(v8 length:"contents") freeWhenDone:{v10, 0}];

        v5 = v17;
      }

      ++v6;
    }

    while (v6 < [(MLCDeviceGPU *)self numDevicesToUse]);
  }

  return v5;
}

- (id)embeddingWeightsGradients:(id)a3 embeddingCount:(unint64_t)a4 embeddingDimension:(unint64_t)a5
{
  v6 = a3;
  v7 = 0;
  if ([(MLCDeviceGPU *)self numDevicesToUse])
  {
    v8 = 0;
    do
    {
      v9 = [v6 objectAtIndexedSubscript:v8];
      v10 = [v9 gradientForWeights];
      v11 = [(MLCDeviceGPU *)self gpuCommandQueueList];
      v12 = [v11 objectAtIndexedSubscript:v8];
      v13 = [v12 commandBuffer];

      [MLCGPUHelper synchronizeResource:v10 commandBuffer:v13];
      [v13 commit];
      [v13 waitUntilCompleted];
      if (v8)
      {
        if ([v7 length] >= 4)
        {
          v14 = 0;
          do
          {
            v15 = *([v10 contents] + 4 * v14);
            v16 = [v7 bytes];
            *(v16 + 4 * v14) = v15 + *(v16 + 4 * v14);
            ++v14;
          }

          while (v14 < [v7 length] >> 2);
        }
      }

      else
      {
        v17 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:objc_msgSend(v10 length:"contents") freeWhenDone:{objc_msgSend(v10, "length"), 0}];

        v7 = v17;
      }

      ++v8;
    }

    while (v8 < [(MLCDeviceGPU *)self numDevicesToUse]);
  }

  return v7;
}

- (void)rotateAndCopyMTLBuffer:(id)a3 toNSData:(id)a4 withTensorDescriptor:(id)a5
{
  v14 = a3;
  v7 = a4;
  v8 = a5;
  v9 = objc_autoreleasePoolPush();
  v10 = MEMORY[0x277CBEA90];
  v11 = v14;
  v12 = [v10 dataWithBytesNoCopy:objc_msgSend(v14 length:"contents") freeWhenDone:{objc_msgSend(v7, "length"), 0}];
  v13 = [v8 shape];
  rotateWeightsTensorBy180Degree(v13, v12, v7);

  objc_autoreleasePoolPop(v9);
}

+ (unint64_t)calculateImageSizeForTensor:(id)a3
{
  v3 = a3;
  v4 = [v3 descriptor];
  v5 = [v4 shape];
  v6 = [v5 count] != 1;

  v7 = [v3 descriptor];
  v8 = [v7 dimensionCount];

  v9 = 1;
  if (v8 > v6)
  {
    do
    {
      v10 = [v3 descriptor];
      v11 = [v10 shape];
      v12 = [v11 objectAtIndexedSubscript:v6];
      v9 *= [v12 unsignedIntegerValue];

      ++v6;
      v13 = [v3 descriptor];
      v14 = [v13 dimensionCount];
    }

    while (v6 < v14);
  }

  v15 = [v3 descriptor];
  v16 = [v15 dataType];

  if ((v16 - 1) > 6)
  {
    v17 = 1;
  }

  else
  {
    v17 = qword_238D45CB8[v16 - 1];
  }

  v18 = v17 * v9;

  return v18;
}

+ (id)filteredGPUListIncludingLowPoweredBuiltin:(BOOL)a3
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

- (MLCDeviceGPU)initWithType:(int)a3 selectsMultipleComputeDevices:(BOOL)a4
{
  v4 = a4;
  v8 = [objc_opt_class() filteredGPUListIncludingLowPoweredBuiltin:1];
  if ([v8 count])
  {
    v9 = [MEMORY[0x277CBEBF8] mutableCopy];
    if (a3 == 1 && v4 && ([objc_opt_class() multiGPUNotSupportedInFilteredGPUList:v8] & 1) == 0)
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
    v12 = self;
  }

  else
  {
    v11 = +[MLCLog framework];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [MLCDeviceGPU initWithType:a2 selectsMultipleComputeDevices:?];
    }

    v12 = 0;
  }

  return v12;
}

- (MLCDeviceGPU)initWithDeviceList:(id)a3
{
  v49 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 count])
  {
    v5 = 0;
    while (1)
    {
      v6 = [v4 objectAtIndexedSubscript:v5];
      v7 = [v6 supportsFamily:1006];

      if ((v7 & 1) == 0)
      {
        break;
      }

      if (++v5 >= [v4 count])
      {
        goto LABEL_5;
      }
    }

    v10 = +[MLCLog framework];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [MLCDeviceGPU initWithDeviceList:a2];
    }

    v35 = 0;
  }

  else
  {
LABEL_5:
    v39 = self;
    v8 = +[MLCLog framework];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [(MLCDeviceGPU *)v4 initWithDeviceList:v8];
    }

    v9 = MEMORY[0x277CBEBF8];
    v10 = [MEMORY[0x277CBEBF8] mutableCopy];
    v11 = [v9 mutableCopy];
    v42 = [v9 mutableCopy];
    v41 = [v9 mutableCopy];
    v12 = [v9 mutableCopy];
    if ([v4 count])
    {
      v13 = 0;
      do
      {
        v14 = [v4 objectAtIndexedSubscript:v13];
        v15 = [v14 newEvent];

        if (v15)
        {
          [v10 setObject:v15 atIndexedSubscript:v13];
        }

        else
        {
          v16 = +[MLCLog framework];
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            v25 = NSStringFromSelector(a2);
            v26 = [v4 objectAtIndexedSubscript:v13];
            *buf = 138412802;
            v44 = v25;
            v45 = 2048;
            v46 = v13;
            v47 = 2112;
            v48 = v26;
            _os_log_error_impl(&dword_238C1D000, v16, OS_LOG_TYPE_ERROR, "%@: No MTLLocalEvent: gpuDeviceList[%lu]=%@", buf, 0x20u);
          }
        }

        v17 = [v4 objectAtIndexedSubscript:v13];
        v18 = [v17 newSharedEvent];

        if (v18)
        {
          [v11 setObject:v18 atIndexedSubscript:v13];
        }

        else
        {
          v19 = +[MLCLog framework];
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            v27 = NSStringFromSelector(a2);
            v28 = [v4 objectAtIndexedSubscript:v13];
            *buf = 138412802;
            v44 = v27;
            v45 = 2048;
            v46 = v13;
            v47 = 2112;
            v48 = v28;
            _os_log_error_impl(&dword_238C1D000, v19, OS_LOG_TYPE_ERROR, "%@: No MTLSharedEvent: gpuDeviceList[%lu]=%@", buf, 0x20u);
          }
        }

        v20 = [v4 objectAtIndexedSubscript:v13];
        v21 = [v20 newCommandQueue];

        if (v21)
        {
          [v42 setObject:v21 atIndexedSubscript:v13];
          v22 = [MEMORY[0x277CD7208] commandBufferFromCommandQueue:v21];
          [v12 setObject:v22 atIndexedSubscript:v13];

          v23 = [v12 objectAtIndexedSubscript:v13];
          v24 = [v23 rootCommandBuffer];
          [v41 setObject:v24 atIndexedSubscript:v13];
        }

        else
        {
          v23 = +[MLCLog framework];
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            v38 = NSStringFromSelector(a2);
            v29 = [v4 objectAtIndexedSubscript:v13];
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

      while (v13 < [v4 count]);
    }

    v31 = malloc_type_calloc([v4 count], 8uLL, 0x100004000313F17uLL);
    v32 = [v4 copy];
    v33 = [v10 copy];
    v34 = [v11 copy];
    self = [(MLCDeviceGPU *)v39 initWithType:1 gpuDeviceList:v32 gpuLocalEventList:v33 gpuSharedEventList:v34 currentEventValue:v31 gpuCommandQueueList:v42 gpuCommandBufferList:v41 gpuMPSCommandBufferList:v12];

    v35 = self;
  }

  v36 = *MEMORY[0x277D85DE8];
  return v35;
}

- (MLCDeviceGPU)initWithType:(int)a3 gpuDeviceList:(id)a4 gpuLocalEventList:(id)a5 gpuSharedEventList:(id)a6 currentEventValue:(unint64_t *)a7 gpuCommandQueueList:(id)a8 gpuCommandBufferList:(id)a9 gpuMPSCommandBufferList:(id)a10
{
  v17 = a4;
  v42 = a5;
  v41 = a6;
  v40 = a8;
  v39 = a9;
  v38 = a10;
  v43.receiver = self;
  v43.super_class = MLCDeviceGPU;
  v18 = [(MLCDeviceGPU *)&v43 init];
  v19 = v18;
  if (!v18)
  {
    goto LABEL_6;
  }

  v18->_l._os_unfair_lock_opaque = 0;
  [v17 objectAtIndexedSubscript:0];
  obj = a9;
  v21 = v20 = a7;
  v19->_isAppleSoCGPU = GPU_isAppleFamily(v21);

  v19->_deviceType = a3;
  objc_storeStrong(&v19->_deviceList, a4);
  v19->_numDevicesToUse = [v17 count];
  v19->_numDevicesUsedWithFirstBatch = 0;
  objc_storeStrong(&v19->_gpuLocalEventList, a5);
  objc_storeStrong(&v19->_gpuSharedEventList, a6);
  v19->_currentEventValue = v20;
  objc_storeStrong(&v19->_gpuCommandQueueList, a8);
  objc_storeStrong(&v19->_gpuMPSCommandBufferList, a10);
  objc_storeStrong(&v19->_gpuCommandBufferList, a9);
  v22 = MEMORY[0x277CBEBF8];
  v23 = [MEMORY[0x277CBEBF8] mutableCopy];
  gpuHeapTemporaryResourceAllocator = v19->_gpuHeapTemporaryResourceAllocator;
  v19->_gpuHeapTemporaryResourceAllocator = v23;

  v19->_executionTimeInterval = malloc_type_calloc([v17 count], 8uLL, 0x100004000313F17uLL);
  v25 = [v22 mutableCopy];
  gpuWriteTensorKernelList = v19->_gpuWriteTensorKernelList;
  v19->_gpuWriteTensorKernelList = v25;

  v27 = [v22 mutableCopy];
  gpuReadTensorKernelList = v19->_gpuReadTensorKernelList;
  v19->_gpuReadTensorKernelList = v27;

  v29 = [v22 mutableCopy];
  gpuLibrary = v19->_gpuLibrary;
  v19->_gpuLibrary = v29;

  if ([v17 count])
  {
    v31 = 0;
    do
    {
      v32 = [v17 objectAtIndexedSubscript:{v31, obj}];
      v33 = [objc_alloc(MEMORY[0x277CD7598]) initWithDevice:v32 dataLayout:1];
      [(NSMutableArray *)v19->_gpuWriteTensorKernelList setObject:v33 atIndexedSubscript:v31];

      v34 = [objc_alloc(MEMORY[0x277CD7508]) initWithDevice:v32 dataLayout:1];
      [(NSMutableArray *)v19->_gpuReadTensorKernelList setObject:v34 atIndexedSubscript:v31];

      ++v31;
    }

    while (v31 < [v17 count]);
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
    v34 = [(MLCDeviceGPU *)self deviceList];
    v35 = [v34 count];

    if (v35)
    {
      aSelector = a2;
      v36 = 0;
      v37 = 0;
      while (1)
      {
        v38 = [(MLCDeviceGPU *)self deviceList];
        v39 = [v38 objectAtIndexedSubscript:v37];

        v171 = v36;
        v40 = [v39 newLibraryWithFile:v124 error:&v171];
        v41 = v171;

        v123 = v40 != 0;
        if (!v40)
        {
          break;
        }

        v42 = [(MLCDeviceGPU *)self gpuLibrary];
        [v42 setObject:v40 atIndexedSubscript:v37];

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
        v47 = [(MLCDeviceGPU *)self gpuLibrary];
        v48 = [v47 objectAtIndexedSubscript:v37];
        v152 = [v48 newFunctionWithName:@"concat_channels_forward" constantValues:v43 error:0];

        v166 = [v39 newComputePipelineStateWithFunction:v152 error:0];
        buf[0] = 1;
        v170 = 0;
        [v43 setConstantValue:buf type:53 atIndex:0];
        [v43 setConstantValue:&v170 type:53 atIndex:1];
        v49 = [(MLCDeviceGPU *)self gpuLibrary];
        v50 = [v49 objectAtIndexedSubscript:v37];
        v168 = v46;
        v150 = [v50 newFunctionWithName:@"pad_channels_mps_image" constantValues:v43 error:&v168];
        v151 = v168;

        v165 = [v39 newComputePipelineStateWithFunction:v150 error:0];
        buf[0] = 0;
        v170 = 1;
        [v43 setConstantValue:buf type:53 atIndex:0];
        v146 = v43;
        [v43 setConstantValue:&v170 type:53 atIndex:1];
        v51 = [(MLCDeviceGPU *)self gpuLibrary];
        v52 = [v51 objectAtIndexedSubscript:v37];
        v149 = [v52 newFunctionWithName:@"pad_channels_mps_image" constantValues:v43 error:0];

        v131 = [v39 newComputePipelineStateWithFunction:v149 error:0];
        v53 = [(MLCDeviceGPU *)self gpuLibrary];
        v54 = [v53 objectAtIndexedSubscript:v37];
        v148 = [v54 newFunctionWithName:@"reduce_across_batch"];

        v164 = [v39 newComputePipelineStateWithFunction:v148 error:0];
        v55 = [(MLCDeviceGPU *)self gpuLibrary];
        v56 = [v55 objectAtIndexedSubscript:v37];
        v147 = [v56 newFunctionWithName:@"reduce_across_channel"];

        v163 = [v39 newComputePipelineStateWithFunction:v147 error:0];
        v57 = [(MLCDeviceGPU *)self gpuLibrary];
        v58 = [v57 objectAtIndexedSubscript:v37];
        v145 = [v58 newFunctionWithName:@"arithmetic_unary_forward_float"];

        v162 = [v39 newComputePipelineStateWithFunction:v145 error:0];
        v59 = [(MLCDeviceGPU *)self gpuLibrary];
        v60 = [v59 objectAtIndexedSubscript:v37];
        v144 = [v60 newFunctionWithName:@"arithmetic_unary_gradient_float"];

        v161 = [v39 newComputePipelineStateWithFunction:v144 error:0];
        v61 = [(MLCDeviceGPU *)self gpuLibrary];
        v62 = [v61 objectAtIndexedSubscript:v37];
        v143 = [v62 newFunctionWithName:@"arithmetic_binary_forward_float"];

        v160 = [v39 newComputePipelineStateWithFunction:v143 error:0];
        v63 = [(MLCDeviceGPU *)self gpuLibrary];
        v64 = [v63 objectAtIndexedSubscript:v37];
        v142 = [v64 newFunctionWithName:@"arithmetic_binary_gradient_float"];

        v159 = [v39 newComputePipelineStateWithFunction:v142 error:0];
        v65 = [(MLCDeviceGPU *)self gpuLibrary];
        v66 = [v65 objectAtIndexedSubscript:v37];
        v67 = [v66 newFunctionWithName:@"arithmetic_reduce_gradient_any"];

        v158 = [v39 newComputePipelineStateWithFunction:v67 error:0];
        v68 = [(MLCDeviceGPU *)self gpuLibrary];
        v69 = [v68 objectAtIndexedSubscript:v37];
        v141 = [v69 newFunctionWithName:@"arithmetic_reduce_gradient_all"];

        v157 = [v39 newComputePipelineStateWithFunction:v141 error:0];
        v70 = [(MLCDeviceGPU *)self gpuLibrary];
        v71 = [v70 objectAtIndexedSubscript:v37];
        v140 = [v71 newFunctionWithName:@"embedding_renormalize_weights"];

        v156 = [v39 newComputePipelineStateWithFunction:v140 error:0];
        v72 = [(MLCDeviceGPU *)self gpuLibrary];
        v73 = [v72 objectAtIndexedSubscript:v37];
        v139 = [v73 newFunctionWithName:@"embedding_forward_training"];

        v155 = [v39 newComputePipelineStateWithFunction:v139 error:0];
        v74 = [(MLCDeviceGPU *)self gpuLibrary];
        v75 = [v74 objectAtIndexedSubscript:v37];
        v138 = [v75 newFunctionWithName:@"embedding_gradient_training"];

        v134 = [v39 newComputePipelineStateWithFunction:v138 error:0];
        v76 = [(MLCDeviceGPU *)self gpuLibrary];
        v77 = [v76 objectAtIndexedSubscript:v37];
        v137 = [v77 newFunctionWithName:@"compare_relationalop_forward"];

        v132 = [v39 newComputePipelineStateWithFunction:v137 error:0];
        v78 = [(MLCDeviceGPU *)self gpuLibrary];
        v79 = [v78 objectAtIndexedSubscript:v37];
        v136 = [v79 newFunctionWithName:@"compare_logicalop_forward"];

        v129 = [v39 newComputePipelineStateWithFunction:v136 error:0];
        v80 = [(MLCDeviceGPU *)self gpuLibrary];
        v81 = [v80 objectAtIndexedSubscript:v37];
        v135 = [v81 newFunctionWithName:@"concat_float"];

        v127 = [v39 newComputePipelineStateWithFunction:v135 error:0];
        v82 = [(MLCDeviceGPU *)self gpuLibrary];
        v83 = [v82 objectAtIndexedSubscript:v37];
        v133 = [v83 newFunctionWithName:@"concat_BOOL"];

        v125 = [v39 newComputePipelineStateWithFunction:v133 error:0];
        v84 = [(MLCDeviceGPU *)self gpuLibrary];
        v85 = [v84 objectAtIndexedSubscript:v37];
        v130 = [v85 newFunctionWithName:@"mem_fill_float"];

        v126 = [v39 newComputePipelineStateWithFunction:v130 error:0];
        v86 = [(MLCDeviceGPU *)self gpuLibrary];
        v87 = [v86 objectAtIndexedSubscript:v37];
        v128 = [v87 newFunctionWithName:@"memcpy"];

        v88 = [v39 newComputePipelineStateWithFunction:v128 error:0];
        v89 = [(MLCDeviceGPU *)self gpuPipelineStatesForwardConcat2DArray];
        [v89 setObject:v167 atIndexedSubscript:v37];

        v90 = [(MLCDeviceGPU *)self gpuPipelineStatesForwardConcat2D];
        [v90 setObject:v166 atIndexedSubscript:v37];

        v91 = [(MLCDeviceGPU *)self gpuPipelineStatesConcatFloat];
        [v91 setObject:v127 atIndexedSubscript:v37];

        v92 = [(MLCDeviceGPU *)self gpuPipelineStatesConcatBool];
        [v92 setObject:v125 atIndexedSubscript:v37];

        v93 = [(MLCDeviceGPU *)self gpuPipelineStatesPad2DArray];
        [v93 setObject:v165 atIndexedSubscript:v37];

        v94 = [(MLCDeviceGPU *)self gpuPipelineStatesPad2D];
        [v94 setObject:v131 atIndexedSubscript:v37];

        v95 = [(MLCDeviceGPU *)self gpuPipelineStatesReduceAcrossBatch];
        [v95 setObject:v164 atIndexedSubscript:v37];

        v96 = [(MLCDeviceGPU *)self gpuPipelineStatesReduceAcrossChannel];
        [v96 setObject:v163 atIndexedSubscript:v37];

        v97 = [(MLCDeviceGPU *)self gpuPipelineStatesArithmeticUnaryForward];
        [v97 setObject:v162 atIndexedSubscript:v37];

        v98 = [(MLCDeviceGPU *)self gpuPipelineStatesArithmeticUnaryGradient];
        [v98 setObject:v161 atIndexedSubscript:v37];

        v99 = [(MLCDeviceGPU *)self gpuPipelineStatesArithmeticBinaryForward];
        [v99 setObject:v160 atIndexedSubscript:v37];

        v100 = [(MLCDeviceGPU *)self gpuPipelineStatesArithmeticBinaryGradient];
        [v100 setObject:v159 atIndexedSubscript:v37];

        v101 = [(MLCDeviceGPU *)self gpuPipelineStatesArithmeticReduceGradientAny];
        [v101 setObject:v158 atIndexedSubscript:v37];

        v102 = [(MLCDeviceGPU *)self gpuPipelineStatesArithmeticReduceGradientAll];
        [v102 setObject:v157 atIndexedSubscript:v37];

        v103 = [(MLCDeviceGPU *)self gpuPipelineStatesEmbeddingRenormalizeWeights];
        [v103 setObject:v156 atIndexedSubscript:v37];

        v104 = [(MLCDeviceGPU *)self gpuPipelineStatesEmbeddingForward];
        [v104 setObject:v155 atIndexedSubscript:v37];

        v105 = [(MLCDeviceGPU *)self gpuPipelineStatesEmbeddingGradient];
        [v105 setObject:v134 atIndexedSubscript:v37];

        v106 = [(MLCDeviceGPU *)self gpuPipelineStatesCompareRelationalOpForward];
        [v106 setObject:v132 atIndexedSubscript:v37];

        v107 = [(MLCDeviceGPU *)self gpuPipelineStatesCompareLogicalOpForward];
        [v107 setObject:v129 atIndexedSubscript:v37];

        v108 = [(MLCDeviceGPU *)self gpuPipelineStatesMemFillFloat];
        [v108 setObject:v126 atIndexedSubscript:v37];

        v109 = [(MLCDeviceGPU *)self gpuPipelineStatesMemCopy];
        v110 = v88;
        [v109 setObject:v88 atIndexedSubscript:v37];

        v111 = [v39 newFence];
        v112 = [(MLCDeviceGPU *)self gpuConcurrentEncoderFence];
        [v112 setObject:v111 atIndexedSubscript:v37];

        ++v37;
        v113 = [(MLCDeviceGPU *)self deviceList];
        v114 = [v113 count];

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
        v120 = [(MLCDeviceGPU *)self deviceList];
        v121 = [v120 objectAtIndexedSubscript:v37];
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
  v5 = [(MLCDeviceGPU *)self deviceType];
  v6 = [(MLCDeviceGPU *)self deviceList];
  v7 = [(MLCDeviceGPU *)self gpuCommandQueueList];
  v8 = [(MLCDeviceGPU *)self gpuCommandBufferList];
  v9 = [v3 stringWithFormat:@"%@: { deviceType=%d : gpuDeviceList=%@ : gpuCommandQueueList=%@ : gpuCommandBufferList=%@ }", v4, v5, v6, v7, v8];

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [(MLCDeviceGPU *)self deviceList];
  v6 = malloc_type_calloc([v5 count], 8uLL, 0x100004000313F17uLL);

  [(MLCDeviceGPU *)self currentEventValue];
  v7 = [(MLCDeviceGPU *)self deviceList];
  [v7 count];

  v8 = [objc_opt_class() allocWithZone:a3];
  v9 = [(MLCDeviceGPU *)self deviceType];
  v10 = [(MLCDeviceGPU *)self deviceList];
  v11 = [(MLCDeviceGPU *)self gpuLocalEventList];
  v12 = [(MLCDeviceGPU *)self gpuSharedEventList];
  v13 = [(MLCDeviceGPU *)self gpuCommandQueueList];
  v14 = [(MLCDeviceGPU *)self gpuCommandBufferList];
  v15 = [(MLCDeviceGPU *)self gpuMPSCommandBufferList];
  v16 = [v8 initWithType:v9 gpuDeviceList:v10 gpuLocalEventList:v11 gpuSharedEventList:v12 currentEventValue:v6 gpuCommandQueueList:v13 gpuCommandBufferList:v14 gpuMPSCommandBufferList:v15];

  return v16;
}

- (BOOL)synchronizeTensor:(id)a3
{
  v4 = [a3 deviceMemory];
  v5 = [v4 count];

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

- (BOOL)synchronizeTensorOnHost:(id)a3
{
  v4 = a3;
  v5 = [v4 deviceMemory];
  v6 = [v5 count];

  v25 = v6;
  if (v6 && [(MLCDeviceGPU *)self numDevicesToUse])
  {
    v7 = 0;
    v8 = 0x278A68000uLL;
    while (1)
    {
      v9 = objc_autoreleasePoolPush();
      v10 = [(MLCDeviceGPU *)self gpuCommandQueueList];
      v11 = [v10 objectAtIndexedSubscript:v7];
      v12 = [v11 commandBuffer];

      if ([v4 isLayerParameter])
      {
        break;
      }

LABEL_17:
      [v12 commit];
      [v12 waitUntilCompleted];

      objc_autoreleasePoolPop(v9);
      if (++v7 >= [(MLCDeviceGPU *)self numDevicesToUse])
      {
        goto LABEL_18;
      }
    }

    v13 = [v4 childLayers];
    v14 = [v13 objectAtIndexedSubscript:0];

    v15 = *(v8 + 2808);
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
LABEL_16:

      goto LABEL_17;
    }

    v16 = [v14 deviceOps];
    v17 = [v16 objectAtIndexedSubscript:v7];

    if ([v17 isMPSGraph])
    {
LABEL_15:

      goto LABEL_16;
    }

    v18 = [v17 forwardKernel];
    v19 = [v18 exportWeightsAndBiasesWithCommandBuffer:v12 resultStateCanBeTemporary:0];
    v20 = [v14 weights];

    if (v20 == v4)
    {
      v24 = MLCGPUHelper;
      v22 = [v19 weights];
    }

    else
    {
      v21 = [v14 biases];
      if (v21 != v4)
      {
LABEL_13:

        goto LABEL_14;
      }

      v24 = [v19 biases];

      if (!v24)
      {
LABEL_14:
        [v17 setExportableState:{v19, v24}];

        v8 = 0x278A68000;
        goto LABEL_15;
      }

      v24 = MLCGPUHelper;
      v22 = [v19 biases];
    }

    v21 = v22;
    [MLCGPUHelper synchronizeResource:v22 commandBuffer:v12];
    goto LABEL_13;
  }

LABEL_18:

  return v25 != 0;
}

- (void)allocateCommandBufferForDeviceAtIndex:(unint64_t)a3
{
  v5 = MEMORY[0x277CD7208];
  v6 = [(MLCDeviceGPU *)self gpuCommandQueueList];
  v7 = [v6 objectAtIndexedSubscript:a3];
  v8 = [v5 commandBufferFromCommandQueue:v7];
  v9 = [(MLCDeviceGPU *)self gpuMPSCommandBufferList];
  [v9 setObject:v8 atIndexedSubscript:a3];

  v13 = [(MLCDeviceGPU *)self gpuMPSCommandBufferList];
  v10 = [v13 objectAtIndexedSubscript:a3];
  v11 = [v10 rootCommandBuffer];
  v12 = [(MLCDeviceGPU *)self gpuCommandBufferList];
  [v12 setObject:v11 atIndexedSubscript:a3];
}

- (void)commitDeviceAtIndex:(unint64_t)a3
{
  v5 = [(MLCDeviceGPU *)self gpuMPSCommandBufferList];
  v6 = [v5 objectAtIndexedSubscript:a3];
  v7 = [v6 rootCommandBuffer];
  [v7 commit];

  [(MLCDeviceGPU *)self allocateCommandBufferForDeviceAtIndex:a3];
}

- (void)updateGraphExecutionTime:(id)a3 atIndex:(int)a4 gpuTime:(double)a5
{
  v9 = a3;
  v10 = [a3 bytes];
  os_unfair_lock_lock(&self->_l);
  v11 = *(v10 + 8 * a4);
  if (v11 <= a5)
  {
    v11 = a5;
  }

  *(v10 + 8 * a4) = v11;

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

- (void)commitWithCompletionHandler:(id)a3 enableProfiling:(BOOL)a4 graphExecutionTime:(id)a5 graphResultTensor:(id)a6
{
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x2020000000;
  atomic_store([(MLCDeviceGPU *)self numDevicesToUse], &v28);
  [(MLCDeviceGPU *)self signalNextEvent];
  [(MLCDeviceGPU *)self waitForOthers];
  for (i = 0; i < [(MLCDeviceGPU *)self numDevicesToUse]; ++i)
  {
    v15 = [(MLCDeviceGPU *)self gpuCommandBufferList];
    v16 = [v15 objectAtIndexedSubscript:i];

    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __97__MLCDeviceGPU_commitWithCompletionHandler_enableProfiling_graphExecutionTime_graphResultTensor___block_invoke;
    v18[3] = &unk_278A692E8;
    v24 = a2;
    v25 = i;
    v18[4] = self;
    v26 = a4;
    v17 = v16;
    v19 = v17;
    v20 = v12;
    v23 = v27;
    v21 = v13;
    v22 = v11;
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

- (void)commitAndWaitForCompletion:(id)a3 enableProfiling:(BOOL)a4 graphExecutionTime:(id)a5 graphResultTensor:(id)a6
{
  v8 = a4;
  v49 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a5;
  v12 = a6;
  [(MLCDeviceGPU *)self signalNextEvent];
  [(MLCDeviceGPU *)self waitForOthers];
  if ([(MLCDeviceGPU *)self numDevicesToUse])
  {
    v13 = 0;
    do
    {
      v14 = [(MLCDeviceGPU *)self gpuCommandBufferList];
      v15 = [v14 objectAtIndexedSubscript:v13];
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
      v18 = [(MLCDeviceGPU *)self gpuCommandBufferList];
      v19 = [v18 objectAtIndexedSubscript:v17];
      [v19 waitUntilCompleted];

      v20 = [(MLCDeviceGPU *)self gpuCommandBufferList];
      v21 = [v20 objectAtIndexedSubscript:v17];

      if (([v21 status] - 5) <= 1)
      {
        v22 = [v21 error];

        v23 = +[MLCLog framework];
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          NSStringFromSelector(a2);
          v31 = v41 = v10;
          v32 = [(MLCDeviceGPU *)self gpuCommandQueueList];
          [v32 objectAtIndexedSubscript:v17];
          v33 = v40 = v12;
          *buf = 138412802;
          v44 = v31;
          v45 = 2048;
          v46 = v17;
          v47 = 2112;
          v48 = v33;
          _os_log_error_impl(&dword_238C1D000, v23, OS_LOG_TYPE_ERROR, "%@: Internal Error: CommandBuffer failure: gpuCommandQueueList[%lu]=%@", buf, 0x20u);

          v12 = v40;
          v10 = v41;
        }

        v16 = v22;
      }

      if (v8)
      {
        [v21 GPUEndTime];
        v25 = v24;
        [v21 GPUStartTime];
        v27 = v25 - v26;
        os_unfair_lock_lock(&self->_l);
        v28 = [v11 bytes];
        [(MLCDeviceGPU *)self executionTimeInterval][8 * v17] = v27;
        v29 = *(v28 + 8);
        v30 = [(MLCDeviceGPU *)self executionTimeInterval];
        v30[v17] = v29 + v30[v17];
        os_unfair_lock_unlock(&self->_l);
      }

      ++v17;
    }

    while (v17 < [(MLCDeviceGPU *)self numDevicesToUse]);
  }

  if (v12)
  {
    v34 = [v12 data];
    if ([v34 bytes])
    {
      v35 = [v12 device];

      if (!v35)
      {
        goto LABEL_18;
      }

      v34 = [v12 data];
      -[MLCDeviceGPU readTensor:targetBuffer:](self, "readTensor:targetBuffer:", v12, [v34 bytes]);
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

  if (v10)
  {
    v37 = 0.0;
    if (v8)
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

    v10[2](v10, v12, v16, v37);
  }

  v39 = *MEMORY[0x277D85DE8];
}

- (void)allocateDeviceHeapForGraph:(id)a3 forInference:(BOOL)a4
{
  v175 = a4;
  v5 = a3;
  if ([v5 count])
  {
    bytes = 0;
    v183 = 0;
    v180 = 0;
    v6 = 0;
    v7 = 0;
    while (1)
    {
      v8 = [(MLCDeviceGPU *)self deviceList];
      v9 = [v8 objectAtIndexedSubscript:0];

      v10 = [v5 objectAtIndexedSubscript:v7];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {

LABEL_6:
        if (!v175 || ([v5 objectAtIndexedSubscript:v7], v13 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v13, (isKindOfClass & 1) == 0))
        {
          v178 = v6;
          v184 = 0;
          v185 = 0;
          v15 = [v5 objectAtIndexedSubscript:v7];
          v16 = [v15 sourceTensors];
          v17 = [v16 objectAtIndexedSubscript:0];

          GPU_GetTensorWidthAndHeight(v17, &v185, &v184);
          v18 = [v17 descriptor];
          v19 = [v18 shape];
          v20 = [v19 count];

          v21 = [v17 descriptor];
          v22 = [v21 shape];
          v23 = [v22 objectAtIndexedSubscript:0];
          v24 = [v23 unsignedIntegerValue];

          if (v20 < 2)
          {
            v28 = v24;
            v24 = 1;
          }

          else
          {
            v25 = [v17 descriptor];
            v26 = [v25 shape];
            v27 = [v26 objectAtIndexedSubscript:1];
            v28 = [v27 unsignedIntegerValue];
          }

          v29 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:125 width:v185 height:v184 mipmapped:0];
          v30 = v29;
          if (v28 <= 4)
          {
            v31 = 2;
          }

          else
          {
            v31 = 3;
          }

          [v29 setTextureType:v31];
          [v30 setArrayLength:(v28 + 3) >> 2];
          v176 = v9;
          v32 = [v9 heapTextureSizeAndAlignWithDescriptor:v30];
          v34 = v183;
          if ((v32 + v33 - 1) / v33 * v33 * v24 > v183)
          {
            v34 = (v32 + v33 - 1) / v33 * v33 * v24;
          }

          v35 = bytes;
          if (v33 > bytes)
          {
            v35 = v33;
          }

          bytesa = v35;
          v183 = v34;
          v36 = [v5 objectAtIndexedSubscript:v7];
          v37 = [v36 resultTensors];
          v38 = [v37 objectAtIndexedSubscript:0];

          GPU_GetTensorWidthAndHeight(v38, &v185, &v184);
          v39 = [v38 descriptor];
          v40 = [v39 shape];
          v41 = [v40 count];

          v42 = [v38 descriptor];
          v43 = [v42 shape];
          v44 = [v43 objectAtIndexedSubscript:0];
          v45 = [v44 unsignedIntegerValue];

          if (v41 < 2)
          {
            v49 = v45;
            v45 = 1;
          }

          else
          {
            v46 = [v38 descriptor];
            v47 = [v46 shape];
            v48 = [v47 objectAtIndexedSubscript:1];
            v49 = [v48 unsignedIntegerValue];
          }

          v50 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:125 width:v185 height:v184 mipmapped:0];

          if (v49 <= 4)
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
          [v50 setArrayLength:(v49 + 3) >> 2];
          v9 = v176;
          v52 = [v176 heapTextureSizeAndAlignWithDescriptor:v50];
          v6 = v178;
          v54 = v180;
          if ((v52 + v53 - 1) / v53 * v53 * v45 > v180)
          {
            v54 = (v52 + v53 - 1) / v53 * v53 * v45;
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

      v11 = [v5 objectAtIndexedSubscript:v7];
      objc_opt_class();
      v12 = objc_opt_isKindOfClass();

      if (v12)
      {
        goto LABEL_6;
      }

      v56 = v9;
      v57 = [v5 objectAtIndexedSubscript:v7];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
      }

      else
      {
        v58 = [v5 objectAtIndexedSubscript:v7];
        objc_opt_class();
        v59 = objc_opt_isKindOfClass();

        if ((v59 & 1) == 0)
        {
          v69 = [v5 objectAtIndexedSubscript:v7];
          objc_opt_class();
          v70 = objc_opt_isKindOfClass();

          if (v70)
          {
            v179 = v6;
            v71 = [v5 objectAtIndexedSubscript:v7];
            v72 = [v71 sourceTensors];
            v73 = [v72 objectAtIndexedSubscript:0];

            v74 = [v5 objectAtIndexedSubscript:v7];
            v75 = [v74 sourceTensors];
            v76 = [v75 objectAtIndexedSubscript:1];

            v77 = [v73 descriptor];
            v78 = [v77 shape];
            v79 = [v78 objectAtIndexedSubscript:0];
            v80 = [v79 unsignedIntegerValue];

            v177 = v73;
            v81 = [v73 descriptor];
            v82 = [v81 shape];
            v83 = [v82 objectAtIndexedSubscript:1];
            v172 = [v83 unsignedIntegerValue];

            v174 = v76;
            v84 = [v76 descriptor];
            v85 = [v84 shape];
            v86 = [v85 objectAtIndexedSubscript:1];
            v87 = [v86 unsignedIntegerValue];

            v88 = [v5 objectAtIndexedSubscript:v7];
            v89 = [v88 descriptor];
            LODWORD(v85) = [v89 hasAttentionBiases];

            v90 = v87 + v85;
            v91 = [v88 descriptor];
            LODWORD(v85) = [v91 addsZeroAttention];

            v92 = v90 + v85;
            v93 = [v88 descriptor];
            v94 = [v93 headCount];

            v171 = v80;
            v95 = 4 * v172 * v80;
            v96 = v95 * v92 * v94;
            v97 = 1;
            if (!v175)
            {
              v98 = [v88 descriptor];
              v99 = [v98 modelDimension];

              v100 = [v88 descriptor];
              v173 = v92;
              v101 = [v100 valueDimension];

              v102 = v95 * v99;
              v103 = v95 * v101;
              if (v95 * v101 <= (4 * v173 * v171 * v99))
              {
                v103 = 4 * v173 * v171 * v99;
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

      if (!v175)
      {
        v60 = [v5 objectAtIndexedSubscript:v7];
        v61 = [v60 sourceTensors];
        v62 = [v61 objectAtIndexedSubscript:0];

        v63 = [v62 descriptor];
        v64 = [v56 heapBufferSizeAndAlignWithLength:objc_msgSend(v63 options:{"tensorAllocationSizeInBytes"), +[MLCGPUHelper mtlResourceOptions](MLCGPUHelper, "mtlResourceOptions")}];
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

      if (++v7 >= [v5 count])
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
    v109 = [(MLCDeviceGPU *)self gpuHeapTemporaryResourceAllocator];
    v110 = [v109 count];

    if (!v110)
    {
      goto LABEL_72;
    }

    v111 = 0;
    while (1)
    {
      v112 = [(MLCDeviceGPU *)self gpuHeapTemporaryResourceAllocator];
      v113 = [v112 objectAtIndexedSubscript:v111];

      v114 = [v113 heapSize];
      if (v114 >= v108 * v6)
      {
        break;
      }

      v115 = [(MLCDeviceGPU *)self deviceList];
      v111 += [v115 count];

      v116 = [(MLCDeviceGPU *)self gpuHeapTemporaryResourceAllocator];
      v117 = [v116 count];

      if (v111 >= v117)
      {
        goto LABEL_72;
      }
    }

    if (v111 == 0xFFFFFFFF)
    {
LABEL_72:
      v118 = [(MLCDeviceGPU *)self gpuHeapTemporaryResourceAllocator];
      v111 = [v118 count];

      v119 = [(MLCDeviceGPU *)self deviceList];
      v120 = [v119 count];

      if (v120)
      {
        v121 = 0;
        v122 = v108 * v6;
        v123 = v6;
        do
        {
          v124 = [(MLCDeviceGPU *)self deviceList];
          v125 = [v124 objectAtIndexedSubscript:v121];

          v126 = [[MLCDeviceGPUHeapAllocator alloc] initWithDevice:v125 heapSize:v122 resourceSize:v108 numResources:v123];
          [(MLCDeviceGPU *)self gpuHeapTemporaryResourceAllocator];
          v128 = v127 = v108;
          [v128 setObject:v126 atIndexedSubscript:v111 + v121];

          v108 = v127;
          ++v121;
          v129 = [(MLCDeviceGPU *)self deviceList];
          v130 = [v129 count];
        }

        while (v121 < v130);
      }
    }

    if ([v5 count])
    {
      v131 = 0;
      while (1)
      {
        v132 = [v5 objectAtIndexedSubscript:v131];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          break;
        }

        v133 = [v5 objectAtIndexedSubscript:v131];
        objc_opt_class();
        v134 = objc_opt_isKindOfClass();

        if (v134)
        {
          goto LABEL_80;
        }

        v149 = [v5 objectAtIndexedSubscript:v131];
        v150 = [v149 skipLayer];

        if ((v150 & 1) == 0)
        {
          v151 = [v5 objectAtIndexedSubscript:v131];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            goto LABEL_90;
          }

          v152 = [v5 objectAtIndexedSubscript:v131];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {

LABEL_90:
          }

          else
          {
            v161 = [v5 objectAtIndexedSubscript:v131];
            objc_opt_class();
            v162 = objc_opt_isKindOfClass();

            if ((v162 & 1) == 0)
            {
              v163 = [(MLCDeviceGPU *)self deviceList];
              v164 = [v163 count];

              if (v164)
              {
                v165 = 0;
                do
                {
                  v166 = [v5 objectAtIndexedSubscript:v131];
                  v167 = [v166 deviceOps];
                  v168 = [v167 objectAtIndexedSubscript:v165];

                  [v168 setTemporaryHeapIndex:0];
                  ++v165;
                  v169 = [(MLCDeviceGPU *)self deviceList];
                  v170 = [v169 count];
                }

                while (v165 < v170);
              }

              goto LABEL_94;
            }
          }

          v153 = [(MLCDeviceGPU *)self deviceList];
          v154 = [v153 count];

          if (v154)
          {
            v155 = 0;
            do
            {
              v156 = [v5 objectAtIndexedSubscript:v131];
              v157 = [v156 deviceOps];
              v158 = [v157 objectAtIndexedSubscript:v155];

              [v158 setTemporaryHeapIndex:v111 + v155];
              ++v155;
              v159 = [(MLCDeviceGPU *)self deviceList];
              v160 = [v159 count];
            }

            while (v155 < v160);
          }
        }

LABEL_94:
        if (++v131 >= [v5 count])
        {
          goto LABEL_101;
        }
      }

LABEL_80:
      v135 = [(MLCDeviceGPU *)self deviceList];
      v136 = [v135 count];

      if (v136)
      {
        v137 = 0;
        do
        {
          v138 = [v5 objectAtIndexedSubscript:v131];
          v139 = [v138 deviceOps];
          v140 = [v139 objectAtIndexedSubscript:v137];

          if (([v140 isMPSGraph] & 1) == 0)
          {
            v141 = [v140 forwardKernel];
            v142 = [(MLCDeviceGPU *)self gpuHeapTemporaryResourceAllocator];
            v143 = [v142 objectAtIndexedSubscript:v111 + v137];
            [v141 setDestinationImageAllocator:v143];

            v144 = [v140 gradientKernel];

            v145 = [(MLCDeviceGPU *)self gpuHeapTemporaryResourceAllocator];
            v146 = [v145 objectAtIndexedSubscript:v111 + v137];
            [v144 setDestinationImageAllocator:v146];
          }

          ++v137;
          v147 = [(MLCDeviceGPU *)self deviceList];
          v148 = [v147 count];
        }

        while (v137 < v148);
      }

      goto LABEL_94;
    }
  }

LABEL_101:
}

- (BOOL)needToAllocateDeviceMemoryForTensor:(id)a3
{
  v4 = a3;
  v5 = [v4 descriptor];
  v6 = [v5 shape];
  if ([v6 count] == 1)
  {
    v7 = 1;
  }

  else
  {
    v8 = [v4 descriptor];
    v9 = [v8 shape];
    v10 = [v9 objectAtIndexedSubscript:0];
    v7 = [v10 unsignedIntegerValue];
  }

  v11 = [(MLCDeviceGPU *)self needToAllocateDeviceMemoryForTensor:v4 batchSize:v7];
  return v11;
}

- (BOOL)needToAllocateDeviceMemoryForTensor:(id)a3 batchSize:(unint64_t)a4
{
  v6 = a3;
  v7 = [v6 deviceMemory];
  v8 = [v7 count];

  if (v8)
  {
    v9 = [v6 device];
    if (!v9)
    {
      goto LABEL_5;
    }

    v10 = v9;
    v11 = [v6 device];
    v12 = [v11 computeEngine];
    v13 = [(MLCDeviceGPU *)self isEqual:v12];

    if (v13)
    {
      LOBYTE(v14) = 0;
    }

    else
    {
LABEL_5:
      v15 = [v6 calculateBatchSizeToUse:a4];
      v16 = [(MLCDeviceGPU *)self numDevicesToUse];
      v17 = [v6 descriptor];
      v18 = [v17 tensorAllocationSizeInBytes];
      if (v15 == 1)
      {
        v19 = v18;
      }

      else
      {
        v19 = v18 / v16;
      }

      v20 = [v6 deviceMemory];
      v14 = [v20 count];

      if (v14)
      {
        v21 = 0;
        do
        {
          v22 = [v6 deviceMemory];
          v23 = [v22 objectAtIndexedSubscript:v21];

          v14 = [v23 length];
          v24 = v14 >= v19;
          LOBYTE(v14) = v14 < v19;
          if (!v24)
          {
            break;
          }

          ++v21;
          v25 = [v6 deviceMemory];
          v26 = [v25 count];
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

- (void)allocateDeviceMemoryForTensor:(id)a3
{
  v4 = a3;
  -[MLCDeviceGPU allocateDeviceMemoryForTensor:batchSize:](self, "allocateDeviceMemoryForTensor:batchSize:", v4, [v4 calculateBatchSizeToUse]);
}

- (void)allocateDeviceMemoryForTensor:(id)a3 batchSize:(unint64_t)a4
{
  v15 = a3;
  v6 = [v15 calculateBatchSizeToUse:a4];
  v7 = [MEMORY[0x277CBEBF8] mutableCopy];
  [v15 setDeviceMemory:v7];

  v8 = [(MLCDeviceGPU *)self numDevicesToUse];
  v9 = v8;
  if (v8 < 2 || v6 < 2)
  {
    if (!v8)
    {
      goto LABEL_9;
    }
  }

  else if (!(v6 % v8))
  {
    v6 /= v8;
  }

  v10 = 0;
  do
  {
    v11 = [(MLCDeviceGPU *)self deviceList];
    v12 = [v11 objectAtIndexedSubscript:v10];

    v13 = [v15 deviceMemory];
    v14 = [(MLCDeviceGPU *)self allocateDeviceMemoryForTensor:v15 device:v12 count:v6];
    [v13 addObject:v14];

    ++v10;
  }

  while (v9 != v10);
LABEL_9:
}

- (void)selectDevicesWithBatchSize:(unint64_t)a3 calledfromBindAndWrite:(BOOL)a4
{
  v7 = [(MLCDeviceGPU *)self deviceList];
  v8 = [v7 count];

  if (a3 && v8 >= 2 && a3 % v8 && a3 > 1)
  {
    v8 = 1;
  }

  if ([(MLCDeviceGPU *)self numDevicesUsedWithFirstBatch])
  {
    v10 = [(MLCDeviceGPU *)self numDevicesUsedWithFirstBatch];
    v11 = v10;
    if (a3 != 1 || !a4)
    {
      v11 = v8;
      if (v8 > v10)
      {
        v11 = [(MLCDeviceGPU *)self numDevicesUsedWithFirstBatch];
      }
    }
  }

  else
  {
    [(MLCDeviceGPU *)self setNumDevicesUsedWithFirstBatch:v8];
    v11 = v8;
  }

  [(MLCDeviceGPU *)self setNumDevicesToUse:v11];
}

- (void)deallocateDeviceMemoryForTensor:(id)a3
{
  v4 = +[MLCLog framework];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceGPU deallocateDeviceMemoryForTensor:a2];
  }
}

- (id)getHostPointerIfUnifiedDeviceMemory:(id)a3
{
  v4 = a3;
  if (![(MLCDeviceGPU *)self isAppleSoCGPU])
  {
    goto LABEL_5;
  }

  v5 = [v4 data];
  if (!v5)
  {
    goto LABEL_6;
  }

  v6 = v5;
  v7 = [v4 data];
  if (v7)
  {
    v8 = [v4 data];
    v9 = [v8 bytes];
    v10 = [v4 deviceMemory];
    v11 = [v10 objectAtIndexedSubscript:0];
    v12 = [v11 contents];

    if (v9 != v12)
    {
LABEL_5:
      v7 = 0;
      goto LABEL_8;
    }

LABEL_6:
    v13 = MEMORY[0x277CBEA90];
    v6 = [v4 deviceMemory];
    v14 = [v6 objectAtIndexedSubscript:0];
    v15 = [v14 contents];
    v16 = [v4 descriptor];
    v7 = [v13 dataWithBytesNoCopy:v15 length:objc_msgSend(v16 freeWhenDone:{"tensorAllocationSizeInBytes"), 0}];
  }

LABEL_8:

  return v7;
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
  }

  return 1;
}

- (void)multiDeviceTensorReduction:(id)a3 sourceBuffer:(void *)a4 targetBuffer:(void *)a5
{
  v8 = a3;
  v9 = [v8 descriptor];
  v10 = [v9 elementCount];

  if (!v10)
  {
    goto LABEL_14;
  }

  v11 = 0;
  while (1)
  {
    v12 = [v8 descriptor];
    v13 = [v12 dataType];

    if (v13 == 1)
    {
      *(a5 + v11) = *(a4 + v11) + *(a5 + v11);
      goto LABEL_9;
    }

    if (v13 == 3)
    {
      *(a5 + v11) = *(a5 + v11) + *(a4 + v11);
      goto LABEL_9;
    }

    if (v13 != 6)
    {
      break;
    }

    *(a5 + v11) += *(a4 + v11);
LABEL_9:
    ++v11;
    v14 = [v8 descriptor];
    v15 = [v14 elementCount];

    if (v11 >= v15)
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

- (id)readTensor:(id)a3
{
  v4 = a3;
  v5 = [v4 descriptor];
  v6 = [v5 tensorAllocationSizeInBytes];

  v7 = [v4 descriptor];
  v8 = v6 / [v7 elementCount];

  v9 = [v4 descriptor];
  v10 = malloc_type_calloc([v9 elementCount], v8, 0x100004077774924uLL);

  [(MLCDeviceGPU *)self readTensor:v4 targetBuffer:v10];
  v11 = MEMORY[0x277CBEA90];

  return [v11 dataWithBytesNoCopy:v10 length:v6 freeWhenDone:1];
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

  v13 = [(MLCDeviceGPU *)self readTensor:v6 fromDeviceIndex:a4 batchSize:v9];

  return v13;
}

- (id)readTensor:(id)a3 fromDeviceIndex:(unint64_t)a4 batchSize:(unint64_t)a5
{
  v8 = a3;
  v9 = [objc_opt_class() calculateImageSizeForTensor:v8] * a5;
  v10 = malloc_type_malloc(v9, 0x100004077774924uLL);
  [(MLCDeviceGPU *)self readTensor:v8 fromDeviceIndex:a4 targetBuffer:v10 batchSize:a5];

  v11 = MEMORY[0x277CBEA90];

  return [v11 dataWithBytesNoCopy:v10 length:v9 freeWhenDone:1];
}

- (void)readTensor:(id)a3 targetBuffer:(void *)a4
{
  v103 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = v7;
  __dst = a4;
  if (!a4)
  {
    v20 = +[MLCLog framework];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [MLCDeviceGPU readTensor:a2 targetBuffer:?];
    }

    goto LABEL_9;
  }

  context = [v7 calculateBatchSizeToUse];
  if ([v8 isLayerParameter])
  {
    v9 = [v8 childLayers];
    v10 = [v9 objectAtIndexedSubscript:0];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
      v12 = [v11 deviceOps];
      v13 = [v12 objectAtIndexedSubscript:0];

      LOBYTE(v12) = [v13 isMPSGraph];
      v14 = [v11 weights];
      v15 = v14;
      if (v12)
      {

        if (v15 != v8)
        {
          v16 = [v13 exportableState];
          v17 = [v16 objectAtIndexedSubscript:1];
          v18 = [v17 contents];
          v19 = [v8 descriptor];
          memcpy(a4, v18, [v19 tensorAllocationSizeInBytes]);

LABEL_64:
          goto LABEL_65;
        }

        v43 = objc_autoreleasePoolPush();
        v44 = [v13 exportableState];
        v45 = [v44 objectAtIndexedSubscript:0];
        v46 = [v45 contents];

        if (v46 == __dst)
        {
          v57 = [v8 descriptor];
          v58 = malloc_type_malloc([v57 tensorAllocationSizeInBytes], 0xAB9161ADuLL);

          v47 = [v13 exportableState];
          v48 = [v47 objectAtIndexedSubscript:0];
          v59 = [v48 contents];
          [v8 descriptor];
          v61 = v60 = v46;
          __n = v58;
          memcpy(v58, v59, [v61 tensorAllocationSizeInBytes]);

          v46 = v60;
        }

        else
        {
          v47 = [v13 exportableState];
          v48 = [v47 objectAtIndexedSubscript:0];
          __n = [v48 contents];
        }

        v62 = [v11 descriptor];
        v63 = [v62 isConvolutionTranspose];

        v64 = [v11 descriptor];
        v65 = [v64 kernelWidth];
        v66 = [v11 descriptor];
        v67 = [v66 kernelHeight];
        v68 = [v11 descriptor];
        contexta = v43;
        v91 = v64;
        v92 = v46;
        v89 = v68;
        v90 = v66;
        if (v63)
        {
          v69 = [v68 outputFeatureChannelCount];
          v70 = [v11 descriptor];
          v87 = v69 / [v70 groupCount];
          v71 = [v11 descriptor];
          v85 = [v71 inputFeatureChannelCount];
          v72 = [v11 weights];
          v73 = [v72 descriptor];
          LODWORD(v81) = [v73 dataType];
          v74 = __n;
          [MLCDataHelper convertSourceHWOI:__n toResultOIHW:__dst width:v65 height:v67 inputFeatureChannelCount:v87 outputFeatureChannelCount:v85 dataType:v81];
        }

        else
        {
          v84 = v67;
          v86 = v65;
          v75 = [v68 inputFeatureChannelCount];
          v76 = [v11 descriptor];
          v82 = v75 / [v76 groupCount];
          v71 = [v11 descriptor];
          v73 = [v71 usesDepthwiseConvolution];
          v72 = [v11 descriptor];
          v77 = [v72 outputFeatureChannelCount];
          v83 = v73;
          v88 = v76;
          if (v73)
          {
            v73 = [v11 descriptor];
            v77 /= [v73 inputFeatureChannelCount];
          }

          v78 = [v11 weights];
          v79 = [v78 descriptor];
          LODWORD(v81) = [v79 dataType];
          v74 = __n;
          [MLCDataHelper convertSourceHWIO:__n toResultOIHW:__dst width:v86 height:v84 inputFeatureChannelCount:v82 outputFeatureChannelCount:v77 dataType:v81];

          v70 = v88;
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

      v40 = [v13 exportableState];
      v41 = v40;
      if (v15 == v8)
      {
        [v40 weights];
      }

      else
      {
        [v40 biases];
      }
      v49 = ;

      v50 = [v11 descriptor];
      if ([v50 isConvolutionTranspose])
      {
        v51 = [v11 weights];

        if (v51 == v8)
        {
          v52 = MEMORY[0x277CBEA90];
          v53 = [v8 descriptor];
          v54 = [v52 dataWithBytesNoCopy:a4 length:objc_msgSend(v53 freeWhenDone:{"tensorAllocationSizeInBytes"), 0}];
          v55 = [v8 descriptor];
          [(MLCDeviceGPU *)self rotateAndCopyMTLBuffer:v49 toNSData:v54 withTensorDescriptor:v55];

LABEL_52:
          goto LABEL_64;
        }
      }

      else
      {
      }

      v56 = [v49 contents];
      v53 = [v8 descriptor];
      memcpy(a4, v56, [v53 tensorAllocationSizeInBytes]);
      goto LABEL_52;
    }
  }

  v21 = [v8 deviceMemory];
  v22 = [v21 objectAtIndexedSubscript:0];
  v23 = [v22 conformsToProtocol:&unk_284BC3750];

  if (!v23)
  {
    if (context >= -[MLCDeviceGPU numDevicesToUse](self, "numDevicesToUse") || [v8 multiDeviceReductionType])
    {
      v28 = [v8 descriptor];
      v29 = [v28 tensorAllocationSizeInBytes];

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
              bzero(__dst, v29);
            }

            v32 = [(MLCDeviceGPU *)self readTensor:v8 fromDeviceIndex:v31 batchSize:context];
            -[MLCDeviceGPU multiDeviceTensorReduction:sourceBuffer:targetBuffer:](self, "multiDeviceTensorReduction:sourceBuffer:targetBuffer:", v8, [v32 bytes], __dst);
          }

          else
          {
            [(MLCDeviceGPU *)self readTensor:v8 fromDeviceIndex:v31 targetBuffer:&__dst[v30 / [(MLCDeviceGPU *)self numDevicesToUse]] batchSize:context / [(MLCDeviceGPU *)self numDevicesToUse]];
          }

          ++v31;
          v30 += v29;
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
      v102 = [(MLCDeviceGPU *)self numDevicesToUse];
      _os_log_error_impl(&dword_238C1D000, v20, OS_LOG_TYPE_ERROR, "%@: Reading tensor with batchSize %lu from %lu GPUs without reduction", buf, 0x20u);
    }

LABEL_9:

    goto LABEL_65;
  }

  v24 = [v8 descriptor];
  v25 = [v24 tensorAllocationSizeInBytes];

  v26 = [(MLCDeviceGPU *)self numDevicesToUse];
  v27 = v26;
  if (context == 1 && v26 == 2)
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

  else if (!v26)
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
        bzero(__dst, v25);
      }

      v39 = [(MLCDeviceGPU *)self readTensor:v8 fromDeviceIndex:v34 batchSize:context];
      -[MLCDeviceGPU multiDeviceTensorReduction:sourceBuffer:targetBuffer:](self, "multiDeviceTensorReduction:sourceBuffer:targetBuffer:", v8, [v39 bytes], __dst);
    }

    else
    {
      v35 = &__dst[v33 / v27];
      v36 = [v8 deviceMemory];
      v37 = [v36 objectAtIndexedSubscript:v34];
      v38 = [v37 contents];

      if (v35 != v38)
      {
        memcpy(v35, v38, v25 / v27);
      }
    }

    ++v34;
    v33 += v25;
  }

  while (v27 != v34);
LABEL_65:

  v80 = *MEMORY[0x277D85DE8];
}

- (void)readTensor:(id)a3 fromDeviceIndex:(unint64_t)a4 targetBuffer:(void *)a5 batchSize:(unint64_t)a6 reduceOverBatch:(BOOL)a7
{
  v35 = a3;
  v11 = [v35 deviceMemory];
  v12 = [v11 objectAtIndexedSubscript:a4];
  v13 = [v12 conformsToProtocol:&unk_284BC3750];

  v14 = [v35 deviceMemory];
  v15 = [v14 objectAtIndexedSubscript:a4];

  if (v13)
  {
    v16 = [v15 contents];
    if (v16 != a5)
    {
      v17 = v16;
      v18 = [objc_opt_class() calculateImageSizeForTensor:v35];
      memcpy(a5, v17, v18 * a6);
    }
  }

  else
  {
    v19 = [objc_opt_class() calculateImageSizeForTensor:v35];
    v20 = v19;
    if (a7)
    {
      v21 = malloc_type_malloc(v19, 0x641D81FDuLL);
      v22 = v15;
      if (a6)
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
              v28 = a5;
              v29 = v20 >> 2;
              do
              {
                v30 = *v27++;
                *v28 = v30 + *v28;
                ++v28;
                --v29;
              }

              while (v29);
            }
          }

          else
          {
            [v25 readBytes:a5 dataLayout:1 imageIndex:0];
          }

          ++v24;
        }

        while (v24 != a6);
      }

      free(v21);
    }

    else
    {
      v31 = v15;
      if (a6)
      {
        v32 = v31;
        v33 = 0;
        do
        {
          v34 = [v32 objectAtIndexedSubscript:v33];
          [v34 readBytes:a5 dataLayout:1 imageIndex:0];
          a5 = a5 + v20;

          ++v33;
        }

        while (a6 != v33);
      }
    }
  }
}

- (void)dispatchReadTensor:(id)a3 targetBuffer:(void *)a4 batchSize:(unint64_t)a5
{
  v10 = a3;
  v8 = [v10 deviceMemory];
  v9 = [v8 objectAtIndexedSubscript:0];

  if (-[MLCDeviceGPU numDevicesToUse](self, "numDevicesToUse") != 1 || [v9 contents] != a4)
  {
    [(MLCDeviceGPU *)self dispatchReadTensorFromAllDevices:v10 targetBuffer:a4 batchSize:a5];
  }
}

- (void)dispatchReadTensorFromAllDevices:(id)a3 targetBuffer:(void *)a4 batchSize:(unint64_t)a5
{
  v36 = a3;
  v8 = [v36 deviceMemory];
  v9 = [v8 objectAtIndexedSubscript:0];
  v10 = [v9 contents];

  if (v10 == a4 && [(MLCDeviceGPU *)self numDevicesToUse]< 2)
  {
    v11 = [v36 deviceMemory];
    v28 = [v11 objectAtIndexedSubscript:0];
    v29 = [(MLCDeviceGPU *)self gpuCommandBufferList];
    v33 = [v29 objectAtIndexedSubscript:0];
    [MLCGPUHelper synchronizeResource:v28 commandBuffer:v33];
  }

  else
  {
    v11 = [v36 descriptor];
    v12 = [v11 shape];
    v13 = [v12 count] != 1;

    v14 = [v11 shape];
    v15 = [v14 count];

    v16 = 1;
    if (v15 > v13)
    {
      do
      {
        v17 = [v11 shape];
        v18 = [v17 objectAtIndexedSubscript:v13];
        v16 *= [v18 unsignedIntegerValue];

        ++v13;
        v19 = [v11 shape];
        v20 = [v19 count];
      }

      while (v13 < v20);
    }

    v21 = [v11 dataType];
    if (v21 == 4)
    {
      v22 = v16;
    }

    else
    {
      v22 = 0;
    }

    if (v21 == 6)
    {
      v22 = v16;
    }

    v23 = 4 * v16;
    v24 = 2 * v16;
    if (v21 != 3)
    {
      v24 = 0;
    }

    if (v21 != 1)
    {
      v23 = v24;
    }

    if (v21 <= 3)
    {
      v25 = v23;
    }

    else
    {
      v25 = v22;
    }

    v26 = v25 * a5;
    v27 = [(MLCDeviceGPU *)self deviceList];
    v28 = [v27 objectAtIndexedSubscript:0];

    v29 = [v28 newBufferWithBytesNoCopy:a4 length:NSRoundUpToMultipleOfPageSize(v25 * a5) options:0 deallocator:0];
    v30 = [(MLCDeviceGPU *)self numDevicesToUse];
    if (a5 != 1 && v30 != 1)
    {
      v26 = a5 / [(MLCDeviceGPU *)self numDevicesToUse]* v25;
    }

    v31 = [(MLCDeviceGPU *)self gpuCommandBufferList];
    v32 = [v31 objectAtIndexedSubscript:0];
    v33 = [v32 blitCommandEncoder];

    v34 = [v36 deviceMemory];
    v35 = [v34 objectAtIndexedSubscript:0];
    [v33 copyFromBuffer:v35 sourceOffset:0 toBuffer:v29 destinationOffset:0 size:v26];

    [v33 endEncoding];
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

  [(MLCDeviceGPU *)self broadcastTensor:v10 batchSize:v6];
}

- (void)broadcastTensor:(id)a3 batchSize:(unint64_t)a4
{
  v39 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = [(MLCDeviceGPU *)self numDevicesToUse];
  v9 = [(MLCDeviceGPU *)self numDevicesToUse];
  v10 = [v7 deviceMemory];
  v11 = [v10 count];

  if (v9 != v11)
  {
    v29 = +[MLCLog framework];
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = NSStringFromSelector(a2);
      v31 = [v7 deviceMemory];
      v33 = 138412802;
      v34 = v30;
      v35 = 2048;
      v36 = [v31 count];
      v37 = 2048;
      v38 = [(MLCDeviceGPU *)self numDevicesToUse];
      _os_log_error_impl(&dword_238C1D000, v29, OS_LOG_TYPE_ERROR, "%@: tensor deviceMemory count:%lu not matching numDeviceUsed:%lu", &v33, 0x20u);
    }

    goto LABEL_25;
  }

  v12 = [v7 deviceMemory];
  v13 = [v12 objectAtIndexedSubscript:0];
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

  v15 = a4 / v8;
  if (a4 % v8)
  {
    v16 = 0;
  }

  else
  {
    v16 = -1;
  }

  if (a4 % v8)
  {
    v15 = a4;
  }

  if (v8 < 2)
  {
    v16 = 0;
    v15 = a4;
  }

  if (a4 >= 2)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if (a4 >= 2)
  {
    v18 = v15;
  }

  else
  {
    v18 = a4;
  }

  v19 = [objc_opt_class() calculateImageSizeForTensor:v7];
  v20 = [v7 data];
  v21 = [v20 bytes];

  v22 = objc_autoreleasePoolPush();
  v23 = 0;
  v24 = v19 * v18;
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
    v26 = [v7 deviceMemory];
    v27 = [v26 objectAtIndexedSubscript:v23];

    memcpy([v27 contents], v21, v24);
    v28 = objc_autoreleasePoolPush();
    [MLCGPUHelper didModifyRange:0 buffer:v24, v27];
    objc_autoreleasePoolPop(v28);
    v21 += v25;

    ++v23;
  }

  while (v8 != v23);
  objc_autoreleasePoolPop(v22);
LABEL_26:

  v32 = *MEMORY[0x277D85DE8];
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

  [(MLCDeviceGPU *)self dispatchBroadcastTensor:v10 batchSize:v6];
}

- (void)dispatchBroadcastTensor:(id)a3 batchSize:(unint64_t)a4
{
  v49 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = [(MLCDeviceGPU *)self numDevicesToUse];
  v9 = [(MLCDeviceGPU *)self numDevicesToUse];
  v10 = [v7 deviceMemory];
  v11 = [v10 count];

  if (v9 != v11)
  {
    v31 = +[MLCLog framework];
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v32 = NSStringFromSelector(a2);
      v33 = [v7 deviceMemory];
      v43 = 138412802;
      v44 = v32;
      v45 = 2048;
      v46 = [v33 count];
      v47 = 2048;
      v48 = [(MLCDeviceGPU *)self numDevicesToUse];
      _os_log_error_impl(&dword_238C1D000, v31, OS_LOG_TYPE_ERROR, "%@: tensor deviceMemory count:%lu not matching numDeviceUsed:%lu", &v43, 0x20u);
    }

    goto LABEL_22;
  }

  v12 = [v7 deviceMemory];
  v13 = [v12 objectAtIndexedSubscript:0];
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

  v15 = a4 / v8;
  if (a4 % v8)
  {
    v16 = 0;
  }

  else
  {
    v16 = -1;
  }

  if (a4 % v8)
  {
    v15 = a4;
  }

  if (v8 < 2)
  {
    v16 = 0;
    v15 = a4;
  }

  if (a4 >= 2)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if (a4 >= 2)
  {
    v18 = v15;
  }

  else
  {
    v18 = a4;
  }

  v19 = [objc_opt_class() calculateImageSizeForTensor:v7] * v18;
  if ([(MLCDeviceGPU *)self isAppleSoCGPU])
  {
    v20 = objc_autoreleasePoolPush();
    v21 = [(MLCDeviceGPU *)self deviceList];
    v22 = [v21 objectAtIndexedSubscript:0];

    v23 = [v7 data];
    v24 = [v22 newBufferWithBytes:objc_msgSend(v23 length:"bytes") options:{v19, 0}];

    v25 = [(MLCDeviceGPU *)self gpuCommandBufferList];
    v26 = [v25 objectAtIndexedSubscript:0];
    v27 = [v26 blitCommandEncoder];

    v28 = [v7 deviceMemory];
    v29 = [v28 objectAtIndexedSubscript:0];
    [v27 copyFromBuffer:v24 sourceOffset:0 toBuffer:v29 destinationOffset:0 size:v19];

    [v27 endEncoding];
    v30 = v20;
  }

  else
  {
    v34 = [v7 data];
    v35 = [v34 bytes];

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
      v39 = [v7 deviceMemory];
      v40 = [v39 objectAtIndexedSubscript:v37];

      memcpy([v40 contents], v35, v19);
      v41 = objc_autoreleasePoolPush();
      [MLCGPUHelper didModifyRange:0 buffer:v19, v40];
      objc_autoreleasePoolPop(v41);
      v35 += v38;

      ++v37;
    }

    while (v8 != v37);
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

- (void)signalAllDevicesExcludingDevice:(unint64_t)a3 eventValue:(unint64_t)a4
{
  os_unfair_lock_lock(&self->_l);
  [(MLCDeviceGPU *)self unsafe_signalAllDevicesExcludingDevice:a3 eventValue:a4];

  os_unfair_lock_unlock(&self->_l);
}

- (void)unsafe_signalAllDevicesExcludingDevice:(unint64_t)a3 eventValue:(unint64_t)a4
{
  v7 = [(MLCDeviceGPU *)self gpuSharedEventList];
  v11 = [v7 objectAtIndexedSubscript:a3];

  if ([(MLCDeviceGPU *)self numDevicesToUse])
  {
    v8 = 0;
    do
    {
      if (a3 == v8)
      {
        [(MLCDeviceGPU *)self currentEventValue][8 * a3] = a4;
      }

      else
      {
        v9 = [(MLCDeviceGPU *)self gpuCommandBufferList];
        v10 = [v9 objectAtIndexedSubscript:v8];

        [v10 encodeSignalEvent:v11 value:a4];
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

- (void)waitForAllDevicesExcludingDevice:(unint64_t)a3 eventValue:(unint64_t)a4
{
  os_unfair_lock_lock(&self->_l);
  v7 = [(MLCDeviceGPU *)self gpuCommandBufferList];
  v11 = [v7 objectAtIndexedSubscript:a3];

  if ([(MLCDeviceGPU *)self numDevicesToUse])
  {
    v8 = 0;
    do
    {
      if (a3 != v8)
      {
        v9 = [(MLCDeviceGPU *)self gpuSharedEventList];
        v10 = [v9 objectAtIndexedSubscript:v8];

        [v11 encodeWaitForEvent:v10 value:a4];
      }

      ++v8;
    }

    while (v8 < [(MLCDeviceGPU *)self numDevicesToUse]);
  }

  os_unfair_lock_unlock(&self->_l);
}

- (unint64_t)deviceMemorySizeForTensor:(id)a3
{
  v4 = [a3 descriptor];
  v5 = [v4 tensorAllocationSizeInBytes];
  v6 = v5 / [(MLCDeviceGPU *)self numDevicesToUse];

  return v6;
}

- (id)allocateDeviceMemoryForTensor:(id)a3 device:(id)a4 count:(unint64_t)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [v7 descriptor];
  v10 = [v9 shape];
  if ([v10 count] == 1)
  {
    v11 = a5 == 1;
  }

  else
  {
    v12 = [v7 descriptor];
    v13 = [v12 shape];
    v14 = [v13 objectAtIndexedSubscript:0];
    v11 = [v14 unsignedIntegerValue] / a5;
  }

  v15 = [v7 descriptor];
  v16 = [v15 dataType];

  if (v16 == 5)
  {
    v17 = 1;
  }

  else
  {
    v17 = v11;
  }

  v18 = [v7 descriptor];
  v19 = [v8 newBufferWithLength:objc_msgSend(v18 options:{"tensorAllocationSizeInBytes") / v17, +[MLCGPUHelper mtlResourceOptions](MLCGPUHelper, "mtlResourceOptions")}];

  return v19;
}

- (void)allReduceOverXGMI:(id)a3 deviceIndex:(unint64_t)a4 stateBuffers:(id)a5
{
  v80[2] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a5;
  if ([(MLCDeviceGPU *)self numDevicesToUse]<= 1)
  {
    v11 = +[MLCLog framework];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [MLCDeviceGPU allReduceOverXGMI:a2 deviceIndex:self stateBuffers:?];
    }
  }

  v12 = [v9 objectAtIndexedSubscript:a4];
  v78 = ~a4;
  v75 = v9;
  v76 = [v9 objectAtIndexedSubscript:{-[MLCDeviceGPU numDevicesToUse](self, "numDevicesToUse") + ~a4}];
  v13 = [(MLCDeviceGPU *)self gpuCommandBufferList];
  v14 = [v13 objectAtIndexedSubscript:a4];

  v15 = [(MLCDeviceGPU *)self currentEventValue];
  ++v15[a4];
  v16 = [(MLCDeviceGPU *)self gpuLocalEventList];
  v17 = [v16 objectAtIndexedSubscript:a4];
  [v14 encodeSignalEvent:v17 value:{-[MLCDeviceGPU currentEventValue](self, "currentEventValue")[8 * a4]}];

  v18 = [(MLCDeviceGPU *)self gpuLocalEventList];
  v19 = [v18 objectAtIndexedSubscript:a4];
  v20 = a4;
  [v14 encodeWaitForEvent:v19 value:{-[MLCDeviceGPU currentEventValue](self, "currentEventValue")[8 * a4]}];

  v21 = [v12 localGradientMatrices];
  v22 = [v21 count];

  if (v22)
  {
    v23 = 0;
    do
    {
      v24 = [v10 objectAtIndexedSubscript:v23];
      v25 = [v12 localGradientMatrices];
      v26 = [v25 objectAtIndexedSubscript:v23];

      v27 = [v26 data];
      v28 = [v14 blitCommandEncoder];
      [v28 copyFromBuffer:v24 sourceOffset:0 toBuffer:v27 destinationOffset:0 size:{objc_msgSend(v27, "length")}];
      [v28 endEncoding];

      ++v23;
      v29 = [v12 localGradientMatrices];
      v30 = [v29 count];
    }

    while (v23 < v30);
  }

  v77 = v10;
  v31 = [(MLCDeviceGPU *)self currentEventValue];
  ++v31[v20];
  v32 = [(MLCDeviceGPU *)self gpuSharedEventList];
  v33 = [v32 objectAtIndexedSubscript:v20];
  [v14 encodeSignalEvent:v33 value:{-[MLCDeviceGPU currentEventValue](self, "currentEventValue")[8 * v20]}];

  v34 = [(MLCDeviceGPU *)self gpuSharedEventList];
  v35 = [v34 objectAtIndexedSubscript:{-[MLCDeviceGPU numDevicesToUse](self, "numDevicesToUse") + v78}];
  [v14 encodeWaitForEvent:v35 value:{-[MLCDeviceGPU currentEventValue](self, "currentEventValue")[8 * v20]}];

  v36 = [v12 receivedGradientMatrices];
  v37 = [v36 count];

  v38 = v14;
  if (v37)
  {
    v39 = 0;
    do
    {
      v40 = [v76 remoteGradientBuffers];
      v41 = [v40 objectAtIndexedSubscript:v39];

      v42 = [v12 receivedGradientMatrices];
      v43 = [v42 objectAtIndexedSubscript:v39];

      v44 = [v43 data];
      v45 = [v38 blitCommandEncoder];
      [v45 copyFromBuffer:v41 sourceOffset:0 toBuffer:v44 destinationOffset:0 size:{objc_msgSend(v44, "length")}];
      [v45 endEncoding];

      ++v39;
      v46 = [v12 receivedGradientMatrices];
      v47 = [v46 count];
    }

    while (v39 < v47);
  }

  v79 = v38;
  v48 = [v12 localGradientMatrices];
  v49 = [v48 count];

  if (v49)
  {
    v50 = 0;
    do
    {
      v51 = [v12 localGradientMatrices];
      v52 = [v51 objectAtIndexedSubscript:v50];

      v53 = [MEMORY[0x277CD7258] matrixDescriptorWithRows:objc_msgSend(v52 columns:"rows") rowBytes:objc_msgSend(v52 dataType:{"columns"), objc_msgSend(v52, "rowBytes"), objc_msgSend(v52, "dataType")}];
      v54 = objc_alloc(MEMORY[0x277CD7250]);
      v55 = [v77 objectAtIndexedSubscript:v50];
      v56 = [v54 initWithBuffer:v55 descriptor:v53];
      v57 = [v12 allReducedGradientMatrices];
      [v57 setObject:v56 atIndexedSubscript:v50];

      ++v50;
      v58 = [v12 localGradientMatrices];
      v59 = [v58 count];
    }

    while (v50 < v59);
  }

  v60 = [v12 localGradientMatrices];
  v61 = [v60 count];

  if (v61)
  {
    v62 = 0;
    do
    {
      v63 = [v12 matrixSumKernels];
      v64 = [v63 objectAtIndexedSubscript:v62];

      v65 = [v12 localGradientMatrices];
      v66 = [v65 objectAtIndexedSubscript:v62];
      v80[0] = v66;
      v67 = [v12 receivedGradientMatrices];
      v68 = [v67 objectAtIndexedSubscript:v62];
      v80[1] = v68;
      v69 = [MEMORY[0x277CBEA60] arrayWithObjects:v80 count:2];
      v70 = [v12 allReducedGradientMatrices];
      v71 = [v70 objectAtIndexedSubscript:v62];
      [v64 encodeToCommandBuffer:v79 sourceMatrices:v69 resultMatrix:v71 scaleVector:0 offsetVector:0 biasVector:0 startIndex:0];

      ++v62;
      v72 = [v12 localGradientMatrices];
      v73 = [v72 count];
    }

    while (v62 < v73);
  }

  v74 = *MEMORY[0x277D85DE8];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(MLCDeviceGPU *)self deviceList];
    v7 = [v6 count];
    v8 = [v5 deviceList];
    v9 = [v8 count];

    if (v7 == v9)
    {
      v10 = [(MLCDeviceGPU *)self deviceList];
      v11 = [v10 count];

      if (v11)
      {
        v12 = 0;
        do
        {
          v13 = [(MLCDeviceGPU *)self deviceList];
          v14 = [v13 objectAtIndexedSubscript:v12];
          v15 = [v5 deviceList];
          v16 = [v15 objectAtIndexedSubscript:v12];

          v17 = v14 == v16;
          if (v14 != v16)
          {
            break;
          }

          ++v12;
          v18 = [(MLCDeviceGPU *)self deviceList];
          v19 = [v18 count];
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

- (BOOL)transferTensor:(id)a3 fromDevice:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (!v8 || (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), self == v8) && (isKindOfClass & 1) != 0)
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
      v18 = v7;
      v19 = 2112;
      v20 = v8;
      _os_log_error_impl(&dword_238C1D000, v11, OS_LOG_TYPE_ERROR, "%@: cannot transfer tensor = %@ to GPU from device = %@", &v15, 0x20u);
    }

    v10 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v10;
}

- (void)setDeviceMemoryForTensor:(id)a3 data:(id)a4
{
  v19 = a3;
  v6 = a4;
  v7 = [(MLCDeviceGPU *)self deviceList];
  v8 = [v7 count];

  if (v8)
  {
    v9 = 0;
    do
    {
      v10 = [(MLCDeviceGPU *)self deviceList];
      v11 = [v10 objectAtIndexedSubscript:v9];

      v12 = [v6 data];
      v13 = [v12 bytes];
      v14 = [v6 data];
      v15 = [v11 newBufferWithBytesNoCopy:v13 length:objc_msgSend(v14 options:"length") deallocator:{+[MLCGPUHelper mtlResourceOptions](MLCGPUHelper, "mtlResourceOptions"), 0}];
      v16 = [v19 deviceMemory];
      [v16 setObject:v15 atIndexedSubscript:v9];

      ++v9;
      v17 = [(MLCDeviceGPU *)self deviceList];
      v18 = [v17 count];
    }

    while (v9 < v18);
  }
}

- (void)allocateResultTensor:(id)a3
{
  v4 = a3;
  if ([(MLCDeviceGPU *)self needToAllocateDeviceMemoryForTensor:?])
  {
    [(MLCDeviceGPU *)self allocateDeviceMemoryForTensor:v4];
  }
}

- (void)reduceAcrossBatchForSource:(id)a3 result:(id)a4 batchSize:(unint64_t)a5 batchStride:(unint64_t)a6 numEntries:(unint64_t)a7 deviceIndex:(unint64_t)a8 commandBuffer:(id)a9
{
  v11 = a6;
  v12 = a5;
  v25 = a3;
  v15 = a4;
  v16 = a9;
  context = objc_autoreleasePoolPush();
  v17 = [(MLCDeviceGPU *)self gpuPipelineStatesReduceAcrossBatch];
  v18 = [v17 objectAtIndexedSubscript:a8];
  v19 = [v18 maxTotalThreadsPerThreadgroup];

  if (v19 >= a7)
  {
    v20 = a7;
  }

  else
  {
    v20 = v19;
  }

  v31[0] = 0;
  v31[1] = v12;
  v31[2] = v11;
  v31[3] = a7;
  v31[4] = 0;
  v21 = (a7 + v20 - 1) / v20;
  v22 = [v16 computeCommandEncoderWithDispatchType:0];
  v23 = [(MLCDeviceGPU *)self gpuPipelineStatesReduceAcrossBatch];
  v24 = [v23 objectAtIndexedSubscript:a8];
  [v22 setComputePipelineState:v24];

  [v22 setBuffer:v25 offset:0 atIndex:0];
  [v22 setBuffer:v15 offset:0 atIndex:1];
  [v22 setBytes:v31 length:20 atIndex:2];
  v29 = v21;
  v30 = vdupq_n_s64(1uLL);
  v27 = v20;
  v28 = v30;
  [v22 dispatchThreadgroups:&v29 threadsPerThreadgroup:&v27];
  [v22 endEncoding];

  objc_autoreleasePoolPop(context);
}

- (void)dispatchFillTensor:(id)a3 deviceIndex:(unint64_t)a4
{
  v6 = [a3 deviceMemory];
  v10 = [v6 objectAtIndexedSubscript:a4];

  v7 = [(MLCDeviceGPU *)self gpuCommandBufferList];
  v8 = [v7 objectAtIndexedSubscript:a4];

  v9 = [v8 blitCommandEncoder];
  [v9 fillBuffer:v10 range:0 value:{objc_msgSend(v10, "length"), 0}];
  [v9 endEncoding];
}

- (void)dispatchPadChannelsKernel:(id)a3 sourceImageBatch:(id)a4 resultImageBatch:(id)a5 deviceIndex:(unint64_t)a6
{
  v36 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [(MLCDeviceGPU *)self gpuCommandBufferList];
  v13 = [v12 objectAtIndexedSubscript:a6];

  context = objc_autoreleasePoolPush();
  v14 = [v10 objectAtIndexedSubscript:0];
  v15 = [v14 width];

  v16 = [v10 objectAtIndexedSubscript:0];
  v17 = [v16 height];

  v33 = v15;
  v19 = v15 < 9 || v17 < 9;
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

  v22 = [v11 objectAtIndexedSubscript:0];
  v23 = [v22 featureChannels];

  v39 = v23;
  v35 = v13;
  v24 = [v13 computeCommandEncoderWithDispatchType:1];
  if (v23 > 4)
  {
    [(MLCDeviceGPU *)self gpuPipelineStatesPad2DArray];
  }

  else
  {
    [(MLCDeviceGPU *)self gpuPipelineStatesPad2D];
  }
  v25 = ;
  v26 = [v25 objectAtIndexedSubscript:a6];
  [v24 setComputePipelineState:v26];

  [v24 memoryBarrierWithScope:2];
  if ([v10 count])
  {
    v27 = 0;
    v28 = (v20 - 1 + v17) >> v21;
    do
    {
      v29 = [v10 objectAtIndexedSubscript:v27];
      v30 = [v29 texture];
      [v24 setTexture:v30 atIndex:0];

      v31 = [v11 objectAtIndexedSubscript:v27];
      v32 = [v31 texture];
      [v24 setTexture:v32 atIndex:1];

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

    while (v27 < [v10 count]);
  }

  [v24 endEncoding];

  objc_autoreleasePoolPop(context);
}

- (void)dispatchForwardActivationsKernel:(id)a3 sourceTensor:(id)a4 resultTensor:(id)a5 deviceIndex:(unint64_t)a6
{
  v10 = a3;
  v11 = a5;
  v12 = [a4 deviceMemory];
  v13 = [v11 deviceMemory];
  v47 = v10;
  v14 = [v10 objectAtIndexedSubscript:a6];
  v15 = [(MLCDeviceGPU *)self gpuCommandBufferList];
  v16 = [v15 objectAtIndexedSubscript:a6];

  v46 = v12;
  v17 = [v12 objectAtIndexedSubscript:a6];
  v45 = v13;
  v18 = [v13 objectAtIndexedSubscript:a6];
  v19 = [v14 neuronDescriptor];
  [v19 a];
  v52[0] = v20;

  v21 = [v14 neuronDescriptor];
  [v21 b];
  v52[1] = v22;

  v23 = [v14 neuronDescriptor];
  v52[2] = [v23 activationType];

  v24 = [v14 batchSize];
  v25 = [v11 descriptor];
  v26 = [v25 shape];
  v27 = [v26 count];

  v28 = [v11 descriptor];
  v29 = [v28 shape];
  v30 = v29;
  if (v27 == 1)
  {
    v31 = [v29 objectAtIndexedSubscript:0];
    v24 = [v31 unsignedIntegerValue];
  }

  else
  {
    v32 = [v29 count];

    if (v32 >= 2)
    {
      v33 = 1;
      do
      {
        v34 = [v11 descriptor];
        v35 = [v34 shape];
        v36 = [v35 objectAtIndexedSubscript:v33];
        v24 *= [v36 unsignedIntegerValue];

        ++v33;
        v37 = [v11 descriptor];
        v38 = [v37 shape];
        v39 = [v38 count];
      }

      while (v33 < v39);
    }
  }

  v52[3] = v24;
  v40 = [v14 forwardKernel];
  v41 = [v40 maxTotalThreadsPerThreadgroup];

  v42 = (v24 + v41 - 1) / v41;
  v43 = [v16 computeCommandEncoderWithDispatchType:0];
  v44 = [v14 forwardKernel];
  [v43 setComputePipelineState:v44];

  [v43 setBuffer:v17 offset:0 atIndex:0];
  [v43 setBuffer:v18 offset:0 atIndex:1];
  [v43 setBytes:v52 length:16 atIndex:2];
  v50 = v42;
  v51 = vdupq_n_s64(1uLL);
  v48 = v41;
  v49 = v51;
  [v43 dispatchThreadgroups:&v50 threadsPerThreadgroup:&v48];
  [v43 endEncoding];
}

- (void)dispatchGradientActivationsKernel:(id)a3 sourceGradientTensor:(id)a4 resultGradientTensor:(id)a5 deviceIndex:(unint64_t)a6
{
  v10 = a3;
  v11 = a5;
  v12 = [a4 deviceMemory];
  v13 = [v11 deviceMemory];
  v48 = v10;
  v14 = [v10 objectAtIndexedSubscript:a6];
  v15 = [(MLCDeviceGPU *)self gpuCommandBufferList];
  v44 = [v15 objectAtIndexedSubscript:a6];

  v47 = v12;
  v16 = [v12 objectAtIndexedSubscript:a6];
  v46 = v13;
  v17 = [v13 objectAtIndexedSubscript:a6];
  v18 = [v14 source];
  v19 = [v14 neuronDescriptor];
  [v19 a];
  v53[0] = v20;

  v21 = [v14 neuronDescriptor];
  [v21 b];
  v53[1] = v22;

  v23 = [v14 neuronDescriptor];
  v53[2] = [v23 activationType];

  v24 = [v14 batchSize];
  v25 = [v11 descriptor];
  v26 = [v25 shape];
  v27 = [v26 count];

  v28 = [v11 descriptor];
  v29 = [v28 shape];
  v30 = v29;
  if (v27 == 1)
  {
    v31 = [v29 objectAtIndexedSubscript:0];
    v24 = [v31 unsignedIntegerValue];
  }

  else
  {
    v32 = [v29 count];

    if (v32 >= 2)
    {
      v33 = 1;
      do
      {
        v34 = [v11 descriptor];
        v35 = [v34 shape];
        v36 = [v35 objectAtIndexedSubscript:v33];
        v24 *= [v36 unsignedIntegerValue];

        ++v33;
        v37 = [v11 descriptor];
        v38 = [v37 shape];
        v39 = [v38 count];
      }

      while (v33 < v39);
    }
  }

  v53[3] = v24;
  v40 = [v14 gradientKernel];
  v41 = [v40 maxTotalThreadsPerThreadgroup];

  v42 = [v45 computeCommandEncoderWithDispatchType:0];
  v43 = [v14 gradientKernel];
  [v42 setComputePipelineState:v43];

  [v42 setBuffer:v18 offset:0 atIndex:0];
  [v42 setBuffer:v16 offset:0 atIndex:1];
  [v42 setBuffer:v17 offset:0 atIndex:2];
  [v42 setBytes:v53 length:16 atIndex:3];
  v51 = (v24 + v41 - 1) / v41;
  v52 = vdupq_n_s64(1uLL);
  v49 = v41;
  v50 = v52;
  [v42 dispatchThreadgroups:&v51 threadsPerThreadgroup:&v49];
  [v42 endEncoding];
}

- (void)encodePrimitiveToCommandBuffer:(id)a3 gpuDeviceOps:(id)a4 sourceTensor:(id)a5 secondaryTensor:(id)a6 tertiaryTensor:(id)a7 resultTensor:(id)a8 params:(CompareParams *)a9 sizeOfParams:(unint64_t)a10 pipelineState:(id)a11 deviceIndex:(unint64_t)a12
{
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v21 = a7;
  v22 = a8;
  v102 = a11;
  v103 = [v19 deviceMemory];
  v97 = v20;
  if (v20)
  {
    v23 = [v20 deviceMemory];
  }

  else
  {
    v23 = 0;
  }

  v101 = v23;
  if (v21)
  {
    v89 = [v21 deviceMemory];
    v94 = v89;
  }

  else
  {
    v94 = 0;
    v89 = v103;
  }

  v93 = [v22 deviceMemory];
  v24 = [v18 source0Shape];
  v25 = [v18 source1Shape];
  v26 = [v18 source2Shape];
  v27 = [v22 descriptor];
  v28 = [v27 shape];

  context = objc_autoreleasePoolPush();
  v100 = v17;
  v98 = v18;
  v99 = v26;
  v95 = v22;
  v96 = v21;
  v91 = v25;
  v92 = v24;
  if ([v28 count] == 1)
  {
    *&a9->var1[3].var0 = 0x100000001;
    *&a9->var1[2].var0 = 0x100000001;
    *&a9->var1[1].var0 = 0x100000001;
    *&a9->var1[0].var0 = 0x100000001;
    a9->var1[3].var2 = 1;
    a9->var1[2].var2 = 1;
    a9->var1[1].var2 = 1;
    a9->var1[0].var2 = 1;
    v29 = [v24 objectAtIndexedSubscript:0];
    a9->var1[0].var3 = [v29 unsignedIntegerValue];

    v30 = [v25 objectAtIndexedSubscript:0];
    a9->var1[1].var3 = [v30 unsignedIntegerValue];

    v31 = [v28 objectAtIndexedSubscript:0];
    a9->var1[2].var3 = [v31 unsignedIntegerValue];

    v32 = v26;
    v33 = 0;
LABEL_11:
    v41 = [v32 objectAtIndexedSubscript:v33];
    a9->var1[3].var3 = [v41 unsignedIntegerValue];

    goto LABEL_27;
  }

  if ([v28 count] == 2)
  {
    *&a9->var1[3].var0 = 0x100000001;
    *&a9->var1[2].var0 = 0x100000001;
    *&a9->var1[1].var0 = 0x100000001;
    *&a9->var1[0].var0 = 0x100000001;
    v34 = [v24 objectAtIndexedSubscript:0];
    a9->var1[0].var2 = [v34 unsignedIntegerValue];

    v35 = [v25 objectAtIndexedSubscript:0];
    a9->var1[1].var2 = [v35 unsignedIntegerValue];

    v36 = [v28 objectAtIndexedSubscript:0];
    a9->var1[2].var2 = [v36 unsignedIntegerValue];

    v37 = [v26 objectAtIndexedSubscript:0];
    a9->var1[3].var2 = [v37 unsignedIntegerValue];

    v38 = [v24 objectAtIndexedSubscript:1];
    a9->var1[0].var3 = [v38 unsignedIntegerValue];

    v39 = [v25 objectAtIndexedSubscript:1];
    a9->var1[1].var3 = [v39 unsignedIntegerValue];

    v40 = [v28 objectAtIndexedSubscript:1];
    a9->var1[2].var3 = [v40 unsignedIntegerValue];

    v32 = v26;
    v33 = 1;
    goto LABEL_11;
  }

  v42 = [v24 objectAtIndexedSubscript:0];
  v43 = [v42 unsignedIntegerValue];
  if (v43 <= [v18 batchSize])
  {
    v44 = [v24 objectAtIndexedSubscript:0];
    a9->var1[0].var0 = [v44 unsignedIntegerValue];
  }

  else
  {
    a9->var1[0].var0 = [v18 batchSize];
  }

  v45 = [v25 objectAtIndexedSubscript:0];
  v46 = [v45 unsignedIntegerValue];
  if (v46 <= [v18 batchSize])
  {
    v47 = [v25 objectAtIndexedSubscript:0];
    a9->var1[1].var0 = [v47 unsignedIntegerValue];
  }

  else
  {
    a9->var1[1].var0 = [v18 batchSize];
  }

  v48 = [v28 objectAtIndexedSubscript:0];
  v49 = [v48 unsignedIntegerValue];
  if (v49 <= [v18 batchSize])
  {
    v50 = [v28 objectAtIndexedSubscript:0];
    a9->var1[2].var0 = [v50 unsignedIntegerValue];
  }

  else
  {
    a9->var1[2].var0 = [v18 batchSize];
  }

  v51 = [v99 objectAtIndexedSubscript:0];
  v52 = [v51 unsignedIntegerValue];
  if (v52 <= [v18 batchSize])
  {
    v53 = [v99 objectAtIndexedSubscript:0];
    a9->var1[3].var0 = [v53 unsignedIntegerValue];
  }

  else
  {
    a9->var1[3].var0 = [v18 batchSize];
  }

  v54 = [v28 count];
  v55 = [v24 objectAtIndexedSubscript:1];
  a9->var1[0].var1 = [v55 unsignedIntegerValue];

  v56 = [v25 objectAtIndexedSubscript:1];
  a9->var1[1].var1 = [v56 unsignedIntegerValue];

  v57 = [v28 objectAtIndexedSubscript:1];
  a9->var1[2].var1 = [v57 unsignedIntegerValue];

  v58 = [v99 objectAtIndexedSubscript:1];
  a9->var1[3].var1 = [v58 unsignedIntegerValue];

  v59 = [v24 objectAtIndexedSubscript:2];
  v60 = [v59 unsignedIntegerValue];
  if (v54 == 3)
  {
    a9->var1[0].var3 = v60;

    v61 = [v25 objectAtIndexedSubscript:2];
    a9->var1[1].var3 = [v61 unsignedIntegerValue];

    v62 = [v28 objectAtIndexedSubscript:2];
    a9->var1[2].var3 = [v62 unsignedIntegerValue];

    v63 = [v99 objectAtIndexedSubscript:2];
    a9->var1[3].var3 = [v63 unsignedIntegerValue];

    a9->var1[3].var2 = 1;
    a9->var1[2].var2 = 1;
    a9->var1[1].var2 = 1;
    a9->var1[0].var2 = 1;
  }

  else
  {
    a9->var1[0].var2 = v60;

    v64 = [v25 objectAtIndexedSubscript:2];
    a9->var1[1].var2 = [v64 unsignedIntegerValue];

    v65 = [v28 objectAtIndexedSubscript:2];
    a9->var1[2].var2 = [v65 unsignedIntegerValue];

    v66 = [v99 objectAtIndexedSubscript:2];
    a9->var1[3].var2 = [v66 unsignedIntegerValue];

    v67 = [v24 objectAtIndexedSubscript:3];
    a9->var1[0].var3 = [v67 unsignedIntegerValue];

    v68 = [v25 objectAtIndexedSubscript:3];
    a9->var1[1].var3 = [v68 unsignedIntegerValue];

    v69 = [v28 objectAtIndexedSubscript:3];
    a9->var1[2].var3 = [v69 unsignedIntegerValue];

    v70 = [v99 objectAtIndexedSubscript:3];
    a9->var1[3].var3 = [v70 unsignedIntegerValue];
  }

LABEL_27:
  var0 = a9->var1[2].var0;
  v72 = __clz(__rbit32(var0)) << 16;
  if (((a9->var1[2].var0 - 1) & var0) != 0)
  {
    v73 = -65536;
  }

  else
  {
    v73 = v72;
  }

  a9->var2 = (v73 & 0xFFFF0000 | a9->var1[2].var0);
  v74 = [v102 maxTotalThreadsPerThreadgroup];
  v76 = a9->var1[2].var0;
  var1 = a9->var1[2].var1;
  var2 = a9->var1[2].var2;
  var3 = a9->var1[2].var3;
  v79 = [v17 computeCommandEncoderWithDispatchType:0];
  [v79 setComputePipelineState:v102];
  v80 = [v103 objectAtIndexedSubscript:a12];
  [v79 setBuffer:v80 offset:0 atIndex:0];

  if (v101)
  {
    v81 = [v101 objectAtIndexedSubscript:a12];
    [v79 setBuffer:v81 offset:0 atIndex:1];
  }

  else
  {
    [v79 setBuffer:0 offset:0 atIndex:1];
  }

  v82 = [v93 objectAtIndexedSubscript:a12];
  [v79 setBuffer:v82 offset:0 atIndex:2];

  [v79 setBytes:a9 length:v88 atIndex:3];
  v83 = [v89 objectAtIndexedSubscript:a12];
  [v79 setBuffer:v83 offset:0 atIndex:4];

  v84 = 5;
  if (var3 < 32)
  {
    v84 = 3;
  }

  v85 = v74 >> v84;
  v86 = 32;
  if (var3 < 32)
  {
    v86 = 8;
  }

  if (v85 >= var2)
  {
    v85 = var2;
  }

  v87 = v74 / (v85 << v84);
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

- (void)dispatchForwardCompareLayer:(id)a3 sourceTensor:(id)a4 secondaryTensor:(id)a5 resultTensor:(id)a6 compareOp:(int)a7 forTraining:(BOOL)a8
{
  v23 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  if ([(MLCDeviceGPU *)self numDevicesToUse])
  {
    v16 = 0;
    do
    {
      v17 = [v23 objectAtIndexedSubscript:v16];
      v18 = [(MLCDeviceGPU *)self gpuCommandBufferList];
      v19 = [v18 objectAtIndexedSubscript:v16];

      [(MLCDeviceGPU *)self allocateResultTensor:v15];
      memset(v24, 0, 76);
      if (a7 < 6)
      {
        LODWORD(v24[0]) = a7;
        [(MLCDeviceGPU *)self gpuPipelineStatesCompareRelationalOpForward];
      }

      else
      {
        LODWORD(v24[0]) = a7 - 6;
        [(MLCDeviceGPU *)self gpuPipelineStatesCompareLogicalOpForward];
      }
      v20 = ;
      v21 = [v20 objectAtIndexedSubscript:v16];

      v22 = [v13 descriptor];
      DWORD2(v24[4]) = [v22 dataType] == 4;

      [(MLCDeviceGPU *)self encodePrimitiveToCommandBuffer:v19 gpuDeviceOps:v17 sourceTensor:v13 secondaryTensor:v14 tertiaryTensor:0 resultTensor:v15 params:v24 sizeOfParams:76 pipelineState:v21 deviceIndex:v16];
      ++v16;
    }

    while (v16 < [(MLCDeviceGPU *)self numDevicesToUse]);
  }
}

- (void)dispatchForwardPaddingKernel:(id)a3 sourceTensor:(id)a4 resultTensor:(id)a5 deviceIndex:(unint64_t)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a3;
  v13 = [v10 deviceMemory];
  v14 = [v11 deviceMemory];
  v15 = [v12 objectAtIndexedSubscript:a6];

  v16 = [(MLCDeviceGPU *)self gpuCommandBufferList];
  v69 = [v16 objectAtIndexedSubscript:a6];

  v71 = v13;
  v68 = [v13 objectAtIndexedSubscript:a6];
  v70 = v14;
  v67 = [v14 objectAtIndexedSubscript:a6];
  v17 = [v15 forwardKernel];
  v18 = [v17 maxTotalThreadsPerThreadgroup];

  v79 = 0;
  v80 = 0;
  v77 = 0;
  v78 = 0;
  GPU_GetTensorWidthAndHeight(v10, &v80, &v79);
  GPU_GetTensorWidthAndHeight(v11, &v78, &v77);
  v75 = 0u;
  v76 = 0u;
  v74 = 0u;
  v19 = [v11 descriptor];
  v20 = [v19 shape];
  v21 = [v20 count];
  v22 = [v11 descriptor];
  v23 = [v22 shape];
  v24 = v23;
  if (v21 <= 3)
  {
    v25 = 2;
  }

  else
  {
    v25 = 3;
  }

  v26 = [v23 objectAtIndexedSubscript:v25];
  LODWORD(v75) = [v26 unsignedIntegerValue];

  v27 = [v11 descriptor];
  v28 = [v27 shape];
  if ([v28 count] <= 3)
  {
    DWORD1(v75) = 1;
  }

  else
  {
    v29 = [v11 descriptor];
    v30 = [v29 shape];
    v31 = [v30 objectAtIndexedSubscript:2];
    DWORD1(v75) = [v31 unsignedIntegerValue];
  }

  v32 = [v15 batchSize];
  v33 = [v11 descriptor];
  v34 = [v33 shape];
  v35 = [v34 objectAtIndexedSubscript:1];
  v65 = [v35 unsignedIntegerValue] * v32;
  DWORD2(v75) = v65;

  v36 = [v10 descriptor];
  v37 = [v36 shape];
  v38 = [v37 count];
  v39 = [v10 descriptor];
  v40 = [v39 shape];
  v41 = v40;
  if (v38 <= 3)
  {
    v42 = 2;
  }

  else
  {
    v42 = 3;
  }

  v43 = [v40 objectAtIndexedSubscript:v42];
  DWORD1(v74) = [v43 unsignedIntegerValue];

  v44 = [v10 descriptor];
  v45 = [v44 shape];
  v66 = v11;
  if ([v45 count] <= 3)
  {
    DWORD2(v74) = 1;
  }

  else
  {
    v46 = [v10 descriptor];
    v47 = [v46 shape];
    v48 = [v47 objectAtIndexedSubscript:2];
    DWORD2(v74) = [v48 unsignedIntegerValue];
  }

  v49 = v10;
  v64 = v10;
  v50 = v18 >= 0x400;
  v51 = v18;
  if (v18 >= 0x400)
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

  v55 = [v15 batchSize];
  v56 = [v49 descriptor];
  v57 = [v56 shape];
  v58 = [v57 objectAtIndexedSubscript:1];
  HIDWORD(v74) = [v58 unsignedIntegerValue] * v55;

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
  v63 = [v15 forwardKernel];
  [v62 setComputePipelineState:v63];

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

- (void)dispatchGradientPaddingKernel:(id)a3 sourceGradientTensor:(id)a4 resultGradientTensor:(id)a5 deviceIndex:(unint64_t)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a3;
  v13 = [v10 deviceMemory];
  v14 = [v11 deviceMemory];
  v15 = [v12 objectAtIndexedSubscript:a6];

  v70 = self;
  v16 = [(MLCDeviceGPU *)self gpuCommandBufferList];
  v78 = [v16 objectAtIndexedSubscript:a6];

  v74 = v13;
  v72 = [v13 objectAtIndexedSubscript:a6];
  v73 = v14;
  v71 = a6;
  v76 = [v14 objectAtIndexedSubscript:a6];
  v90 = 0;
  v91 = 0;
  v88 = 0;
  v89 = 0;
  GPU_GetTensorWidthAndHeight(v10, &v91, &v90);
  GPU_GetTensorWidthAndHeight(v11, &v89, &v88);
  v75 = [v15 paddingType];
  v86 = 0u;
  v87 = 0u;
  v85 = 0u;
  v17 = [v11 descriptor];
  v18 = [v17 shape];
  v19 = [v18 count];
  v20 = [v11 descriptor];
  v21 = [v20 shape];
  v22 = v21;
  if (v19 <= 3)
  {
    v23 = 2;
  }

  else
  {
    v23 = 3;
  }

  v24 = [v21 objectAtIndexedSubscript:v23];
  LODWORD(v86) = [v24 unsignedIntegerValue];

  v25 = [v11 descriptor];
  v26 = [v25 shape];
  if ([v26 count] <= 3)
  {
    DWORD1(v86) = 1;
  }

  else
  {
    v27 = [v11 descriptor];
    v28 = [v27 shape];
    v29 = [v28 objectAtIndexedSubscript:2];
    DWORD1(v86) = [v29 unsignedIntegerValue];
  }

  v30 = [v15 batchSize];
  v31 = [v11 descriptor];
  v32 = [v31 shape];
  v33 = [v32 objectAtIndexedSubscript:1];
  v77 = [v33 unsignedIntegerValue] * v30;
  DWORD2(v86) = v77;

  v34 = [v10 descriptor];
  v35 = [v34 shape];
  v36 = [v35 count];
  v37 = [v10 descriptor];
  v38 = [v37 shape];
  v39 = v38;
  if (v36 <= 3)
  {
    v40 = 2;
  }

  else
  {
    v40 = 3;
  }

  v41 = [v38 objectAtIndexedSubscript:v40];
  DWORD1(v85) = [v41 unsignedIntegerValue];

  v42 = [v10 descriptor];
  v43 = [v42 shape];
  if ([v43 count] <= 3)
  {
    DWORD2(v85) = 1;
  }

  else
  {
    v44 = [v10 descriptor];
    v45 = [v44 shape];
    v46 = [v45 objectAtIndexedSubscript:2];
    DWORD2(v85) = [v46 unsignedIntegerValue];
  }

  v47 = &v86;

  v48 = [v15 batchSize];
  v49 = [v10 descriptor];
  v50 = [v49 shape];
  v51 = [v50 objectAtIndexedSubscript:1];
  v69 = [v51 unsignedIntegerValue] * v48;
  HIDWORD(v85) = v69;

  v52 = [v78 computeCommandEncoderWithDispatchType:0];
  v53 = v75;
  if ((v75 - 1) <= 1)
  {
    v54 = [(MLCDeviceGPU *)v70 gpuPipelineStatesMemFillFloat];
    v55 = [v54 objectAtIndexedSubscript:v71];
    v56 = [v55 maxTotalThreadsPerThreadgroup];

    v83 = 0;
    v84 = DWORD1(v86) * v86 * v77;
    v68 = (v56 + ((v84 + 3) >> 2) - 1) / v56;
    v57 = [(MLCDeviceGPU *)v70 gpuPipelineStatesMemFillFloat];
    v58 = [v57 objectAtIndexedSubscript:v71];
    [v52 setComputePipelineState:v58];

    v53 = v75;
    [v52 setBuffer:v76 offset:0 atIndex:0];
    [v52 setBytes:&v83 length:8 atIndex:1];
    v81 = v68;
    v82 = vdupq_n_s64(1uLL);
    v79 = v56;
    v80 = v82;
    [v52 dispatchThreadgroups:&v81 threadsPerThreadgroup:&v79];
  }

  v59 = [v15 gradientKernel];
  v60 = [v59 maxTotalThreadsPerThreadgroup];

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
  if (v60 < 0x400)
  {
    v63 = 16;
  }

  else
  {
    v62 = 5;
    v63 = 32;
  }

  v64 = (v63 + *v47 - 1) >> v62;
  v65 = v60 >> v62;
  v66 = ((v60 >> v62) + *v61) / (v60 >> v62);
  v67 = [v15 gradientKernel];
  [v52 setComputePipelineState:v67];

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

- (void)dispatchForwardSoftmaxKernel:(id)a3 sourceTensor:(id)a4 resultTensor:(id)a5 deviceIndex:(unint64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [v11 deviceMemory];
  v55 = v12;
  v14 = [v12 deviceMemory];
  v56 = v10;
  v15 = [v10 objectAtIndexedSubscript:a6];
  v16 = [(MLCDeviceGPU *)self gpuCommandBufferList];
  v52 = [v16 objectAtIndexedSubscript:a6];

  v54 = v13;
  v51 = [v13 objectAtIndexedSubscript:a6];
  v53 = v14;
  v17 = [v14 objectAtIndexedSubscript:a6];
  v18 = [v15 forwardKernel];
  v19 = [v18 maxTotalThreadsPerThreadgroup];

  v20 = [v11 descriptor];
  v21 = [v20 shape];
  v22 = [v21 objectAtIndexedSubscript:{objc_msgSend(v15, "softmaxAxis")}];
  v23 = [v22 unsignedIntegerValue];

  if (v19 > v23)
  {
    v24 = [v11 descriptor];
    v25 = [v24 shape];
    v26 = [v25 objectAtIndexedSubscript:{objc_msgSend(v15, "softmaxAxis")}];
    v27 = [v26 unsignedIntegerValue];

    v28 = 1 << -__clz(v27);
    if ((v27 & (v27 - 1)) != 0)
    {
      v29 = v28;
    }

    else
    {
      v29 = v27;
    }

    v30 = [v15 forwardKernel];
    v31 = [v30 threadExecutionWidth];

    if (v29 <= v31)
    {
      v19 = v31;
    }

    else
    {
      v19 = v29;
    }
  }

  v32 = [v11 descriptor];
  v33 = [v32 shape];
  v34 = [v33 count];

  v35 = v34 - 1;
  v36 = [v15 softmaxAxis];
  v37 = 1;
  while (v35 > v36)
  {
    v38 = [v11 descriptor];
    v39 = [v38 shape];
    v40 = [v39 objectAtIndexedSubscript:v35];
    v37 *= [v40 unsignedIntegerValue];

    --v35;
    v36 = [v15 softmaxAxis];
  }

  if ([v15 softmaxAxis])
  {
    v41 = [v15 batchSize];
  }

  else
  {
    v41 = 1;
  }

  if ([v15 softmaxAxis] >= 2)
  {
    v42 = 1;
    do
    {
      v43 = [v11 descriptor];
      v44 = [v43 shape];
      v45 = [v44 objectAtIndexedSubscript:v42];
      v41 *= [v45 unsignedIntegerValue];

      ++v42;
    }

    while (v42 < [v15 softmaxAxis]);
  }

  v46 = [v11 descriptor];
  v47 = [v46 shape];
  v48 = [v47 objectAtIndexedSubscript:{objc_msgSend(v15, "softmaxAxis")}];
  v60[0] = [v48 unsignedIntegerValue];

  v61 = v19 >= v60[0];
  v60[1] = [v15 softmaxAxis];
  v62 = v37;
  v63 = v60[0] * v37;
  v49 = [v52 computeCommandEncoderWithDispatchType:0];
  if (v19 < v60[0])
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
  [v49 setThreadgroupMemoryLength:GPU_AlignForThreadGroupMemorySize(4 * (v19 + v19 * v61)) atIndex:0];
  v59[0] = v37;
  v59[1] = v41;
  v59[2] = 1;
  v57 = v19;
  v58 = vdupq_n_s64(1uLL);
  [v49 dispatchThreadgroups:v59 threadsPerThreadgroup:&v57];
  [v49 endEncoding];
}

- (void)dispatchGradientSoftmaxKernel:(id)a3 sourceGradientTensor:(id)a4 resultGradientTensor:(id)a5 deviceIndex:(unint64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [v11 deviceMemory];
  v51 = v12;
  v14 = [v12 deviceMemory];
  v52 = v10;
  v15 = [v10 objectAtIndexedSubscript:a6];
  v16 = [(MLCDeviceGPU *)self gpuCommandBufferList];
  v48 = [v16 objectAtIndexedSubscript:a6];

  v50 = v13;
  v47 = [v13 objectAtIndexedSubscript:a6];
  v49 = v14;
  v46 = [v14 objectAtIndexedSubscript:a6];
  v45 = [v15 result];
  v17 = [v15 gradientKernel];
  v18 = [v17 maxTotalThreadsPerThreadgroup];

  v19 = [v11 descriptor];
  v20 = [v19 shape];
  v21 = [v20 objectAtIndexedSubscript:{objc_msgSend(v15, "softmaxAxis")}];
  v22 = [v21 unsignedIntegerValue];

  if (v18 > v22)
  {
    v23 = [v11 descriptor];
    v24 = [v23 shape];
    v25 = [v24 objectAtIndexedSubscript:{objc_msgSend(v15, "softmaxAxis")}];
    v18 = [v25 unsignedIntegerValue];

    if ((v18 & (v18 - 1)) != 0)
    {
      v18 = 1 << -__clz(v18);
    }
  }

  v26 = [v11 descriptor];
  v27 = [v26 shape];
  v28 = [v27 count];

  v29 = v28 - 1;
  v30 = [v15 softmaxAxis];
  v31 = 1;
  while (v29 > v30)
  {
    v32 = [v11 descriptor];
    v33 = [v32 shape];
    v34 = [v33 objectAtIndexedSubscript:v29];
    v31 *= [v34 unsignedIntegerValue];

    --v29;
    v30 = [v15 softmaxAxis];
  }

  if ([v15 softmaxAxis])
  {
    v35 = [v15 batchSize];
  }

  else
  {
    v35 = 1;
  }

  if ([v15 softmaxAxis] >= 2)
  {
    v36 = 1;
    do
    {
      v37 = [v11 descriptor];
      v38 = [v37 shape];
      v39 = [v38 objectAtIndexedSubscript:v36];
      v35 *= [v39 unsignedIntegerValue];

      ++v36;
    }

    while (v36 < [v15 softmaxAxis]);
  }

  v40 = [v11 descriptor];
  v41 = [v40 shape];
  v42 = [v41 objectAtIndexedSubscript:{objc_msgSend(v15, "softmaxAxis")}];
  v56[0] = [v42 unsignedIntegerValue];

  v57 = v18 >= v56[0];
  v56[1] = [v15 softmaxAxis];
  v58 = v31;
  v59 = v56[0] * v31;
  v43 = [v48 computeCommandEncoderWithDispatchType:0];
  v44 = [v15 gradientKernel];
  [v43 setComputePipelineState:v44];

  [v43 setBuffer:v47 offset:0 atIndex:0];
  [v43 setBuffer:v46 offset:0 atIndex:1];
  [v43 setBuffer:v45 offset:0 atIndex:2];
  [v43 setBytes:v56 length:20 atIndex:3];
  [v43 setThreadgroupMemoryLength:GPU_AlignForThreadGroupMemorySize(4 * (v18 + v18 * v57)) atIndex:0];
  v55[0] = v31;
  v55[1] = v35;
  v55[2] = 1;
  v53 = v18;
  v54 = vdupq_n_s64(1uLL);
  [v43 dispatchThreadgroups:v55 threadsPerThreadgroup:&v53];
  [v43 endEncoding];
}

- (void)dispatchForwardPoolingKernel:(id)a3 sourceTensor:(id)a4 resultTensor:(id)a5 deviceIndex:(unint64_t)a6 forTraining:(BOOL)a7
{
  v92 = a7;
  v11 = a4;
  v12 = a5;
  v13 = a3;
  v93 = v11;
  v14 = [v11 deviceMemory];
  v15 = [v12 deviceMemory];
  v16 = [v13 objectAtIndexedSubscript:a6];

  v17 = [(MLCDeviceGPU *)self gpuCommandBufferList];
  v18 = [v17 objectAtIndexedSubscript:a6];

  v19 = [(MLCDeviceGPU *)self deviceList];
  v88 = [v19 objectAtIndexedSubscript:a6];

  v87 = [v14 objectAtIndexedSubscript:a6];
  v20 = [v15 objectAtIndexedSubscript:a6];
  v21 = [v16 forwardKernel];
  v85 = [v21 maxTotalThreadsPerThreadgroup];

  v22 = [v12 descriptor];
  v23 = [v22 shape];
  v24 = [v23 count];

  v90 = v15;
  v91 = v14;
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

  v26 = [v12 descriptor];
  v27 = [v26 shape];
  v28 = [v27 objectAtIndexedSubscript:v25];
  v29 = [v28 unsignedIntegerValue];

  v30 = 16;
  if (v29 < 0x10)
  {
    v30 = 8;
  }

  if (v29 >= 0x20)
  {
    v30 = 32;
  }

LABEL_11:
  v84 = v30;
  v86 = v20;
  v31 = [v12 descriptor];
  v32 = [v31 shape];
  v33 = 1;
  v34 = [v32 objectAtIndexedSubscript:1];
  v83 = [v34 unsignedIntegerValue];

  v82 = [v16 batchSize];
  v115 = 0u;
  v111 = 0u;
  v96 = v92;
  v97 = [v16 kernelSizeInX];
  v98 = [v16 kernelSizeInY];
  v99 = [v16 strideInX];
  v100 = [v16 strideInY];
  v101 = [v16 dilationRateInX];
  v102 = [v16 dilationRateInY];
  v103 = [v16 paddingLeft];
  v104 = [v16 paddingTop];
  v105 = [v16 paddingRight];
  v106 = [v16 paddingBottom];
  v107 = 1.0 / (v98 * v97);
  v108 = [v16 batchSize];
  v35 = [v93 descriptor];
  v36 = [v35 shape];
  v37 = [v36 objectAtIndexedSubscript:1];
  v38 = [v37 unsignedIntegerValue];
  v109 = v38;

  v112 = [v16 batchSize];
  v39 = [v93 descriptor];
  v40 = [v39 shape];
  v41 = [v40 objectAtIndexedSubscript:1];
  v42 = [v41 unsignedIntegerValue];
  v113 = v42;

  v110 = 0x100000001;
  v114 = 0x100000001;
  v43 = [v12 descriptor];
  v44 = [v43 shape];
  v45 = [v44 count];

  if (v45 == 4)
  {
    v57 = [v93 descriptor];
    [v57 shape];
    v59 = v58 = v12;
    v60 = [v59 objectAtIndexedSubscript:2];
    v47 = [v60 unsignedIntegerValue];
    LODWORD(v110) = v47;

    v61 = [v93 descriptor];
    v62 = [v61 shape];
    v63 = [v62 objectAtIndexedSubscript:3];
    HIDWORD(v110) = [v63 unsignedIntegerValue];

    v64 = [v58 descriptor];
    v65 = [v64 shape];
    v66 = [v65 objectAtIndexedSubscript:2];
    LODWORD(v114) = [v66 unsignedIntegerValue];

    v67 = [v58 descriptor];
    v68 = [v67 shape];
    v69 = [v68 objectAtIndexedSubscript:3];
    HIDWORD(v114) = [v69 unsignedIntegerValue];

    v12 = v58;
    v33 = v114;
    v48 = HIDWORD(v110);
    v46 = HIDWORD(v114);
  }

  else
  {
    v46 = 1;
    v47 = 1;
    v48 = 1;
    if (v45 == 3)
    {
      v49 = [v93 descriptor];
      v50 = [v49 shape];
      v51 = [v50 objectAtIndexedSubscript:2];
      v48 = [v51 unsignedIntegerValue];
      HIDWORD(v110) = v48;

      v33 = 1;
      LODWORD(v110) = 1;
      v52 = [v12 descriptor];
      v53 = [v52 shape];
      [v53 objectAtIndexedSubscript:2];
      v54 = v38;
      v56 = v55 = v12;
      v46 = [v56 unsignedIntegerValue];
      HIDWORD(v114) = v46;

      v12 = v55;
      v38 = v54;

      LODWORD(v114) = 1;
      v47 = 1;
    }
  }

  *(&v111 + 1) = v48 | 0x100000000;
  LODWORD(v111) = v47 * v48 * v38;
  DWORD1(v111) = v47 * v48;
  *(&v115 + 1) = v46 | 0x100000000;
  DWORD1(v115) = v33 * v46;
  LODWORD(v115) = v33 * v46 * v42;
  if (!v92)
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

  v72 = [v16 batchSize];
  v73 = [v16 poolingIndicesBuffer];

  if (v73)
  {
    v74 = 1;
LABEL_21:
    v75 = v88;
    goto LABEL_22;
  }

  v80 = 4 * v72 * (v33 * v42 * v46);
  v75 = v88;
  v81 = [v88 newBufferWithLength:v80 options:{+[MLCGPUHelper mtlResourceOptions](MLCGPUHelper, "mtlResourceOptions")}];
  [v16 setPoolingIndicesBuffer:v81];

  v74 = 1;
LABEL_22:
  v76 = [v70 computeCommandEncoderWithDispatchType:0];
  v77 = [v16 forwardKernel];
  [v76 setComputePipelineState:v77];

  [v76 setBuffer:v71 offset:0 atIndex:0];
  [v76 setBuffer:v86 offset:0 atIndex:1];
  if (v74)
  {
    v78 = [v16 poolingIndicesBuffer];
    [v76 setBuffer:v78 offset:0 atIndex:2];
  }

  else
  {
    [v76 setBuffer:v71 offset:0 atIndex:2];
  }

  if (v85 / v84 >= v84)
  {
    v79 = v84;
  }

  else
  {
    v79 = v85 / v84;
  }

  [v76 setBytes:&v96 length:112 atIndex:3];
  [v76 setThreadgroupMemoryLength:GPU_AlignForThreadGroupMemorySize(4 * v84 * v79) atIndex:0];
  v95[0] = v83;
  v95[1] = v82;
  v95[2] = 1;
  v94[0] = v84;
  v94[1] = v79;
  v94[2] = 1;
  [v76 dispatchThreadgroups:v95 threadsPerThreadgroup:v94];
  [v76 endEncoding];
}

- (void)dispatchGradientPoolingKernel:(id)a3 sourceGradientTensor:(id)a4 resultGradientTensor:(id)a5 deviceIndex:(unint64_t)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a3;
  v13 = [v10 deviceMemory];
  v14 = [v11 deviceMemory];
  v15 = [v12 objectAtIndexedSubscript:a6];

  v83 = self;
  v16 = [(MLCDeviceGPU *)self gpuCommandBufferList];
  v88 = [v16 objectAtIndexedSubscript:a6];

  v87 = [v13 objectAtIndexedSubscript:a6];
  v89 = v14;
  v86 = [v14 objectAtIndexedSubscript:a6];
  v85 = [v15 source];
  v84 = [v15 result];
  v17 = [v15 gradientKernel];
  v18 = [v17 maxTotalThreadsPerThreadgroup];

  v19 = [v15 gradientKernel];
  v79 = [v19 threadExecutionWidth];

  v20 = [v10 descriptor];
  v21 = [v20 shape];
  v22 = [v21 count];

  v93 = v10;
  v90 = v13;
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

  v24 = [v10 descriptor];
  v25 = [v24 shape];
  v26 = [v25 objectAtIndexedSubscript:v23];
  v27 = [v26 unsignedIntegerValue];

  v28 = 16;
  if (v27 < 0x10)
  {
    v28 = 8;
  }

  v29 = 32;
  if (v27 < 0x20)
  {
    v29 = v28;
  }

LABEL_11:
  v30 = v18 / v29;
  v91 = v29;
  if (v18 / v29 >= v29)
  {
    v30 = v29;
  }

  v82 = v30;
  v31 = [v11 descriptor];
  v32 = [v31 shape];
  v33 = 1;
  v34 = [v32 objectAtIndexedSubscript:1];
  v81 = [v34 unsignedIntegerValue];

  v80 = [v15 batchSize];
  v119 = 0u;
  v115 = 0u;
  v100 = 0;
  v101 = [v15 kernelSizeInX];
  v102 = [v15 kernelSizeInY];
  v103 = [v15 strideInX];
  v104 = [v15 strideInY];
  v105 = [v15 dilationRateInX];
  v106 = [v15 dilationRateInY];
  v107 = [v15 paddingLeft];
  v108 = [v15 paddingTop];
  v109 = [v15 paddingRight];
  v110 = [v15 paddingBottom];
  v111 = 1.0 / (v102 * v101);
  v112 = [v15 batchSize];
  v35 = [v11 descriptor];
  v36 = [v35 shape];
  v37 = [v36 objectAtIndexedSubscript:1];
  v38 = [v37 unsignedIntegerValue];
  v113 = v38;

  v116 = [v15 batchSize];
  v39 = [v11 descriptor];
  v40 = [v39 shape];
  v41 = [v40 objectAtIndexedSubscript:1];
  v42 = [v41 unsignedIntegerValue];
  v117 = v42;

  v114 = 0x100000001;
  v118 = 0x100000001;
  v43 = [v11 descriptor];
  v44 = [v43 shape];
  v45 = [v44 count];

  v92 = v11;
  if (v45 == 4)
  {
    v55 = [v11 descriptor];
    v56 = [v55 shape];
    v57 = [v56 objectAtIndexedSubscript:2];
    v47 = [v57 unsignedIntegerValue];
    LODWORD(v114) = v47;

    v58 = [v11 descriptor];
    v59 = [v58 shape];
    v60 = [v59 objectAtIndexedSubscript:3];
    v48 = [v60 unsignedIntegerValue];
    HIDWORD(v114) = v48;

    v61 = [v93 descriptor];
    v62 = [v61 shape];
    v63 = [v62 objectAtIndexedSubscript:2];
    v33 = [v63 unsignedIntegerValue];
    LODWORD(v118) = v33;

    v64 = [v93 descriptor];
    v65 = [v64 shape];
    v66 = [v65 objectAtIndexedSubscript:3];
    HIDWORD(v118) = [v66 unsignedIntegerValue];

    v46 = HIDWORD(v118);
  }

  else
  {
    v46 = 1;
    v47 = 1;
    v48 = 1;
    if (v45 == 3)
    {
      v49 = [v92 descriptor];
      v50 = [v49 shape];
      v51 = [v50 objectAtIndexedSubscript:2];
      v48 = [v51 unsignedIntegerValue];
      HIDWORD(v114) = v48;

      v33 = 1;
      LODWORD(v114) = 1;
      v52 = [v93 descriptor];
      v53 = [v52 shape];
      v54 = [v53 objectAtIndexedSubscript:2];
      v46 = [v54 unsignedIntegerValue];
      HIDWORD(v118) = v46;

      LODWORD(v118) = 1;
      v47 = 1;
    }
  }

  *(&v115 + 1) = v48 | 0x100000000;
  DWORD1(v115) = v47 * v48;
  LODWORD(v115) = v47 * v48 * v38;
  *(&v119 + 1) = v46 | 0x100000000;
  DWORD1(v119) = v33 * v46;
  LODWORD(v119) = v33 * v46 * v42;
  v67 = [v88 computeCommandEncoderWithDispatchType:0];
  v68 = [(MLCDeviceGPU *)v83 gpuPipelineStatesMemFillFloat];
  v69 = [v68 objectAtIndexedSubscript:a6];
  v70 = [v69 maxTotalThreadsPerThreadgroup];

  v98 = 0;
  v99 = v115 * [v15 batchSize];
  v71 = (v70 + ((v99 + 3) >> 2) - 1) / v70;
  v72 = [(MLCDeviceGPU *)v83 gpuPipelineStatesMemFillFloat];
  v73 = [v72 objectAtIndexedSubscript:a6];
  [v67 setComputePipelineState:v73];

  [v67 setBuffer:v86 offset:0 atIndex:0];
  [v67 setBytes:&v98 length:8 atIndex:1];
  v96 = v71;
  v97 = vdupq_n_s64(1uLL);
  v94 = v70;
  v95 = v97;
  [v67 dispatchThreadgroups:&v96 threadsPerThreadgroup:&v94];
  v74 = [v15 gradientKernel];
  [v67 setComputePipelineState:v74];

  [v67 setBuffer:v87 offset:0 atIndex:0];
  [v67 setBuffer:v86 offset:0 atIndex:1];
  if ([v15 metalKernelType] == 15)
  {
    v75 = [v15 poolingIndicesBuffer];
    [v67 setBuffer:v75 offset:0 atIndex:2];

    v77 = v92;
    v76 = v93;
    v78 = v85;
  }

  else
  {
    v78 = v85;
    [v67 setBuffer:v85 offset:0 atIndex:2];
    v77 = v92;
    v76 = v93;
  }

  [v67 setBuffer:v84 offset:0 atIndex:3];
  [v67 setBytes:&v100 length:112 atIndex:4];
  [v67 setThreadgroupMemoryLength:GPU_AlignForThreadGroupMemorySize(4 * v91 * v82) atIndex:0];
  if (v101 <= v103 && v102 <= v104)
  {
    v96 = v81;
    v97.i64[0] = v80;
    v97.i64[1] = 1;
    v94 = v91;
    v95.i64[0] = v82;
    v95.i64[1] = 1;
  }

  else
  {
    v96 = v81;
    v97.i64[0] = v80;
    v97.i64[1] = 1;
    v94 = v79;
    v95 = vdupq_n_s64(1uLL);
  }

  [v67 dispatchThreadgroups:&v96 threadsPerThreadgroup:&v94];
  [v67 endEncoding];
}

- (void)dispatchForwardResizeKernel:(id)a3 sourceTensor:(id)a4 resultTensor:(id)a5 deviceIndex:(unint64_t)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a3;
  v13 = [v10 deviceMemory];
  v14 = [v11 deviceMemory];
  v15 = [v12 objectAtIndexedSubscript:a6];

  v16 = [(MLCDeviceGPU *)self gpuCommandBufferList];
  v70 = [v16 objectAtIndexedSubscript:a6];

  v72 = v13;
  v69 = [v13 objectAtIndexedSubscript:a6];
  v71 = v14;
  v68 = [v14 objectAtIndexedSubscript:a6];
  v17 = [v10 descriptor];
  v18 = [v17 shape];
  v19 = [v18 count];

  v73 = v11;
  if (v19 == 3)
  {
    v40 = [v10 descriptor];
    v41 = [v40 shape];
    v39 = 1;
    v42 = [v41 objectAtIndexedSubscript:1];
    v23 = [v42 unsignedIntegerValue];

    v43 = [v10 descriptor];
    v44 = [v43 shape];
    v45 = [v44 objectAtIndexedSubscript:2];
    v27 = [v45 unsignedIntegerValue];

    v36 = [v11 descriptor];
    v37 = [v36 shape];
    v38 = [v37 objectAtIndexedSubscript:2];
    v35 = [v38 unsignedIntegerValue];
    v31 = 1;
    goto LABEL_5;
  }

  if (v19 == 4)
  {
    v20 = [v10 descriptor];
    v21 = [v20 shape];
    v22 = [v21 objectAtIndexedSubscript:1];
    v23 = [v22 unsignedIntegerValue];

    v24 = [v10 descriptor];
    v25 = [v24 shape];
    v26 = [v25 objectAtIndexedSubscript:3];
    v27 = [v26 unsignedIntegerValue];

    v28 = [v10 descriptor];
    v29 = [v28 shape];
    v30 = [v29 objectAtIndexedSubscript:2];
    v31 = [v30 unsignedIntegerValue];

    v32 = [v11 descriptor];
    v33 = [v32 shape];
    v34 = [v33 objectAtIndexedSubscript:3];
    v35 = [v34 unsignedIntegerValue];

    v36 = [v11 descriptor];
    v37 = [v36 shape];
    v38 = [v37 objectAtIndexedSubscript:2];
    v39 = [v38 unsignedIntegerValue];
LABEL_5:

    goto LABEL_7;
  }

  v23 = 1;
  v39 = 1;
  v35 = 1;
  v31 = 1;
  v27 = 1;
LABEL_7:
  v81 = 1;
  v82 = v27;
  v83 = v27 * v31;
  v84 = v27 * v31 * v23;
  v85 = 1;
  v86 = v35;
  v87 = v35 * v39;
  v88 = v35 * v39 * v23;
  v77 = v27;
  v78 = v31;
  v79 = v35;
  v80 = v39;
  [v15 scaleFactorX];
  v67 = v46;
  [v15 scaleFactorY];
  v48 = __PAIR64__(v47, v67);
  __asm { FMOV            V0.2S, #1.0 }

  v76 = vdiv_f32(_D0, v48);
  v89 = [v15 alignCorners];
  v53 = [v15 batchSize];
  v54 = __clz(__rbit32(v53)) << 16;
  if (((v53 - 1) & v53) != 0)
  {
    v55 = -65536;
  }

  else
  {
    v55 = v54;
  }

  v90 = v55 & 0xFFFF0000 | v53;
  v56 = [v15 forwardKernel];
  v57 = [v56 maxTotalThreadsPerThreadgroup];

  if ([v15 isSpecialCasedNearestForwardKernel])
  {
    if (v27 >= v57)
    {
      v58 = v57;
    }

    else
    {
      v58 = v27;
    }

    v59 = 1;
  }

  else
  {
    if (v35 >= 0x10)
    {
      v58 = 16;
    }

    else
    {
      v58 = 8;
    }

    if (v57 < 0x400)
    {
      _CF = v39 >= 0x10;
      v60 = 16;
      v61 = 8;
    }

    else
    {
      v60 = 32;
      if (v35 >= 0x20)
      {
        v58 = 32;
      }

      v61 = 16;
      if (v39 < 0x10)
      {
        v61 = 8;
      }

      _CF = v39 >= 0x20;
    }

    if (_CF)
    {
      v59 = v60;
    }

    else
    {
      v59 = v61;
    }

    v31 = v39;
    v27 = v35;
  }

  v63 = (v58 + v27 - 1) / v58;
  v64 = (v31 + v59 - 1) / v59;
  v65 = [v70 computeCommandEncoderWithDispatchType:0];
  v66 = [v15 forwardKernel];
  [v65 setComputePipelineState:v66];

  [v65 setBuffer:v69 offset:0 atIndex:0];
  [v65 setBuffer:v68 offset:0 atIndex:1];
  [v65 setBytes:&v76 length:64 atIndex:2];
  v75[0] = v63;
  v75[1] = v64;
  v75[2] = [v15 batchSize] * v23;
  v74[0] = v58;
  v74[1] = v59;
  v74[2] = 1;
  [v65 dispatchThreadgroups:v75 threadsPerThreadgroup:v74];
  [v65 endEncoding];
}

- (void)dispatchTransposeKernel:(id)a3 sourceTensor:(id)a4 resultTensor:(id)a5 deviceIndex:(unint64_t)a6 forward:(BOOL)a7
{
  v7 = a7;
  v88 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v73 = [v13 deviceMemory];
  v79 = v14;
  v72 = [v14 deviceMemory];
  v15 = [v12 objectAtIndexedSubscript:a6];
  v16 = [(MLCDeviceGPU *)self gpuCommandBufferList];
  v77 = a6;
  v76 = [v16 objectAtIndexedSubscript:a6];

  memset(v84, 0, 76);
  v17 = [v15 transposeShape];
  v18 = [v17 count];

  if (v18)
  {
    v19 = 0;
    do
    {
      if (v7)
      {
        [v15 transposeShape];
      }

      else
      {
        [v15 transposeGradientShape];
      }
      v20 = ;
      v21 = [v20 objectAtIndexedSubscript:v19];
      v22 = [v21 unsignedIntegerValue];

      *(v84 + v19) = v22;
      v23 = [v13 descriptor];
      v24 = [v23 stride];
      v25 = [v24 objectAtIndexedSubscript:v19];
      v26 = v84 + 4 * v19;
      *(v26 + 11) = [v25 unsignedIntegerValue] >> 2;

      v27 = [v79 descriptor];
      v28 = [v27 stride];
      v29 = [v28 objectAtIndexedSubscript:v19];
      *(v26 + 15) = [v29 unsignedIntegerValue] >> 2;

      ++v19;
      v30 = [v15 transposeShape];
      v31 = [v30 count];
    }

    while (v19 < v31);
  }

  v32 = [v13 descriptor];
  v33 = [v32 shape];
  v34 = [v33 count];

  v74 = v12;
  if (v34 == 4)
  {
    v70 = v85 + 1;
    v71 = (&v86 + 8);
    if (v7)
    {
      v35 = [v15 batchSize];
    }

    else
    {
      v35 = 0;
    }

    v78 = [v13 calculateBatchSizeToUse:v35];
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

  v37 = v77;
  v38 = [v15 forwardKernel];
  v39 = [v38 maxTotalThreadsPerThreadgroup];

  v86 = xmmword_238D45D80;
  v87 = unk_238D45D90;
  v85[0] = xmmword_238D45D80;
  v85[1] = unk_238D45D90;
  v40 = [v13 descriptor];
  v41 = [v40 shape];
  v42 = [v41 count];

  v75 = v36;
  if (v36 < v42)
  {
    v43 = v36;
    do
    {
      v44 = [v13 descriptor];
      v45 = [v44 shape];
      v46 = [v45 objectAtIndexedSubscript:v43];
      v47 = [v46 unsignedIntegerValue];

      if (v47 <= v39)
      {
        *(&v86 + v43) = v47;
        v48 = v47;
      }

      else if (v47 % v39)
      {
        *(&v86 + v43) = 1;
        v48 = 1;
      }

      else
      {
        *(&v86 + v43) = v39;
        v48 = v39;
      }

      v37 = v77;
      *(v85 + v43++) = (v47 + v48 - 1) / v48;
      v39 /= v48;
      v49 = [v13 descriptor];
      v50 = [v49 shape];
      v51 = [v50 count];
    }

    while (v43 < v51);
  }

  v52 = [v13 descriptor];
  v53 = [v52 shape];
  v54 = [v53 count];

  if (v54)
  {
    v55 = 0;
    do
    {
      if (v7)
      {
        [v15 transposeShape];
      }

      else
      {
        [v15 transposeGradientShape];
      }
      v56 = ;
      v57 = [v56 objectAtIndexedSubscript:v55];
      v58 = [v57 unsignedIntegerValue];

      *((v84 | 0xC) + 4 * v55++) = *(&v86 + v58);
      v59 = [v13 descriptor];
      v60 = [v59 shape];
      v61 = [v60 count];
    }

    while (v55 < v61);
  }

  v62 = [v76 computeCommandEncoderWithDispatchType:0];
  v63 = [v15 forwardKernel];
  [v62 setComputePipelineState:v63];

  if (v78)
  {
    v64 = 0;
    v65 = 4 * v86 * *(&v86 + 1) * v87 * *(&v87 + 1);
    v66 = 8 * v75 + 8;
    do
    {
      DWORD2(v84[0]) = v64;
      v67 = [v73 objectAtIndexedSubscript:v37];
      [v62 setBuffer:v67 offset:0 atIndex:0];

      v68 = [v72 objectAtIndexedSubscript:v37];
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

- (void)dispatchGradientResizeKernel:(id)a3 sourceGradientTensor:(id)a4 resultGradientTensor:(id)a5 deviceIndex:(unint64_t)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a3;
  v13 = [v10 deviceMemory];
  v14 = [v11 deviceMemory];
  v75 = [v12 objectAtIndexedSubscript:a6];

  v78 = self;
  v15 = [(MLCDeviceGPU *)self gpuCommandBufferList];
  v86 = [v15 objectAtIndexedSubscript:a6];

  v83 = v13;
  v81 = [v13 objectAtIndexedSubscript:a6];
  v82 = v14;
  v79 = a6;
  v80 = [v14 objectAtIndexedSubscript:a6];
  v16 = [v10 descriptor];
  v17 = [v16 shape];
  v18 = [v17 count];

  v84 = v11;
  v85 = v10;
  if (v18 == 3)
  {
    v39 = [v10 descriptor];
    v40 = [v39 shape];
    v38 = 1;
    v41 = [v40 objectAtIndexedSubscript:1];
    v22 = [v41 unsignedIntegerValue];

    v42 = [v10 descriptor];
    v43 = [v42 shape];
    v44 = [v43 objectAtIndexedSubscript:2];
    v26 = [v44 unsignedIntegerValue];

    v35 = [v11 descriptor];
    v36 = [v35 shape];
    v37 = [v36 objectAtIndexedSubscript:2];
    v34 = [v37 unsignedIntegerValue];
    v30 = 1;
    goto LABEL_5;
  }

  if (v18 == 4)
  {
    v19 = [v10 descriptor];
    v20 = [v19 shape];
    v21 = [v20 objectAtIndexedSubscript:1];
    v22 = [v21 unsignedIntegerValue];

    v23 = [v10 descriptor];
    v24 = [v23 shape];
    v25 = [v24 objectAtIndexedSubscript:3];
    v26 = [v25 unsignedIntegerValue];

    v27 = [v10 descriptor];
    v28 = [v27 shape];
    v29 = [v28 objectAtIndexedSubscript:2];
    v30 = [v29 unsignedIntegerValue];

    v31 = [v11 descriptor];
    v32 = [v31 shape];
    v33 = [v32 objectAtIndexedSubscript:3];
    v34 = [v33 unsignedIntegerValue];

    v35 = [v11 descriptor];
    v36 = [v35 shape];
    v37 = [v36 objectAtIndexedSubscript:2];
    v38 = [v37 unsignedIntegerValue];
LABEL_5:

    goto LABEL_7;
  }

  v22 = 1;
  v38 = 1;
  v34 = 1;
  v30 = 1;
  v26 = 1;
LABEL_7:
  v45 = v75;
  v46 = [v75 gradientKernel];
  v47 = [v46 maxTotalThreadsPerThreadgroup];

  if (v34 >= 0x10)
  {
    v48 = 16;
  }

  else
  {
    v48 = 8;
  }

  if (v47 < 0x400)
  {
    _CF = v38 >= 0x10;
    v49 = 16;
    v50 = 8;
  }

  else
  {
    v49 = 32;
    if (v34 >= 0x20)
    {
      v48 = 32;
    }

    v50 = 16;
    if (v38 < 0x10)
    {
      v50 = 8;
    }

    _CF = v38 >= 0x20;
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
  v99 = v26;
  v100 = v26 * v30;
  v101 = v26 * v30 * v22;
  v102 = 1;
  v103 = v34;
  v53 = v34 * v38 * v22;
  v104 = v34 * v38;
  v105 = v53;
  v94 = v26;
  v95 = v30;
  v96 = v34;
  v97 = v38;
  [v75 scaleFactorX];
  v76 = v54;
  [v45 scaleFactorY];
  v56 = __PAIR64__(v55, v76);
  __asm { FMOV            V0.2S, #1.0 }

  v93 = vdiv_f32(_D0, v56);
  v106 = [v45 alignCorners];
  v61 = [v45 batchSize];
  v62 = __clz(__rbit32(v61)) << 16;
  if (((v61 - 1) & v61) != 0)
  {
    v63 = -65536;
  }

  else
  {
    v63 = v62;
  }

  v107 = v63 & 0xFFFF0000 | v61;
  v74 = (v30 + v52 - 1) / v52;
  v77 = (v26 + v48 - 1) / v48;
  v64 = [v86 computeCommandEncoderWithDispatchType:0];
  v65 = [(MLCDeviceGPU *)v78 gpuPipelineStatesMemFillFloat];
  v66 = [v65 objectAtIndexedSubscript:v79];
  v67 = [v66 maxTotalThreadsPerThreadgroup];

  v91 = 0;
  v92 = v53 * [v45 batchSize];
  v68 = (v67 + ((v92 + 3) >> 2) - 1) / v67;
  v69 = [(MLCDeviceGPU *)v78 gpuPipelineStatesMemFillFloat];
  v70 = [v69 objectAtIndexedSubscript:v79];
  [v64 setComputePipelineState:v70];

  [v64 setBuffer:v80 offset:0 atIndex:0];
  [v64 setBytes:&v91 length:8 atIndex:1];
  v89 = v68;
  v90 = vdupq_n_s64(1uLL);
  v87 = v67;
  v88 = v90;
  [v64 dispatchThreadgroups:&v89 threadsPerThreadgroup:&v87];
  v71 = [v45 gradientKernel];
  [v64 setComputePipelineState:v71];

  [v64 setBuffer:v81 offset:0 atIndex:0];
  [v64 setBuffer:v80 offset:0 atIndex:1];
  [v64 setBytes:&v93 length:64 atIndex:2];
  v72 = [v45 batchSize];
  v89 = v77;
  v90.i64[0] = v74;
  v90.i64[1] = v72 * v22;
  v87 = v48;
  v88.i64[0] = v73;
  v88.i64[1] = 1;
  [v64 dispatchThreadgroups:&v89 threadsPerThreadgroup:&v87];
  [v64 endEncoding];
}

- (void)dispatchForwardArithmeticUnaryKernel:(id)a3 sourceTensor:(id)a4 resultTensor:(id)a5 deviceIndex:(unint64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [v11 deviceMemory];
  v51 = [v13 objectAtIndexedSubscript:a6];

  v52 = v12;
  v14 = [v12 deviceMemory];
  v50 = [v14 objectAtIndexedSubscript:a6];

  v53 = v10;
  v15 = [v10 objectAtIndexedSubscript:a6];
  v16 = [(MLCDeviceGPU *)self gpuCommandBufferList];
  v48 = [v16 objectAtIndexedSubscript:a6];

  v17 = [v15 batchSize];
  v18 = [v11 descriptor];
  v19 = [v18 shape];
  v20 = [v19 count];

  v21 = [v11 descriptor];
  v22 = [v21 shape];
  v23 = v22;
  if (v20 == 1)
  {
    v24 = [v22 objectAtIndexedSubscript:0];
    v17 = [v24 unsignedIntegerValue];
  }

  else
  {
    v25 = [v22 count];

    if (v25 >= 2)
    {
      v26 = 1;
      do
      {
        v27 = [v11 descriptor];
        v28 = [v27 shape];
        v29 = [v28 objectAtIndexedSubscript:v26];
        v17 *= [v29 unsignedIntegerValue];

        ++v26;
        v30 = [v11 descriptor];
        v31 = [v30 shape];
        v32 = [v31 count];
      }

      while (v26 < v32);
    }
  }

  v59 = 0;
  v60 = 0;
  v58[0] = [v15 arithmeticOp] - 4;
  v58[1] = v17;
  v33 = [v15 neuronDescriptor];

  if (v33)
  {
    v34 = [v15 neuronDescriptor];
    [v34 a];
    LODWORD(v59) = v35;

    v36 = [v15 neuronDescriptor];
    [v36 b];
    HIDWORD(v59) = v37;

    v38 = [v15 neuronDescriptor];
    LODWORD(v60) = [v38 activationType];
  }

  v39 = objc_autoreleasePoolPush();
  v40 = [(MLCDeviceGPU *)self gpuPipelineStatesArithmeticUnaryForward];
  v41 = [v40 objectAtIndexedSubscript:a6];
  v42 = [v41 maxTotalThreadsPerThreadgroup];

  v43 = self;
  v44 = (v17 + v42 - 1) / v42;
  v45 = [v49 computeCommandEncoderWithDispatchType:0];
  v46 = [(MLCDeviceGPU *)v43 gpuPipelineStatesArithmeticUnaryForward];
  v47 = [v46 objectAtIndexedSubscript:a6];
  [v45 setComputePipelineState:v47];

  [v45 memoryBarrierWithScope:2];
  [v45 setBuffer:v51 offset:0 atIndex:0];
  [v45 setBuffer:v50 offset:0 atIndex:1];
  [v45 setBytes:v58 length:24 atIndex:2];
  v56 = v44;
  v57 = vdupq_n_s64(1uLL);
  v54 = v42;
  v55 = v57;
  [v45 dispatchThreadgroups:&v56 threadsPerThreadgroup:&v54];
  [v45 endEncoding];

  objc_autoreleasePoolPop(v39);
}

- (void)dispatchGradientArithmeticUnaryKernel:(id)a3 sourceGradientTensor:(id)a4 resultGradientTensor:(id)a5 deviceIndex:(unint64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v52 = v10;
  v13 = [v10 objectAtIndexedSubscript:a6];
  v14 = [v11 deviceMemory];
  v50 = [v14 objectAtIndexedSubscript:a6];

  v51 = v12;
  v15 = [v12 deviceMemory];
  v49 = [v15 objectAtIndexedSubscript:a6];

  v48 = [v13 source];
  v16 = [(MLCDeviceGPU *)self gpuCommandBufferList];
  v47 = [v16 objectAtIndexedSubscript:a6];

  v17 = [v13 batchSize];
  v18 = [v11 descriptor];
  v19 = [v18 shape];
  v20 = [v19 count];

  v21 = [v11 descriptor];
  v22 = [v21 shape];
  v23 = v22;
  if (v20 == 1)
  {
    v24 = [v22 objectAtIndexedSubscript:0];
    v17 = [v24 unsignedIntegerValue];
  }

  else
  {
    v25 = [v22 count];

    if (v25 >= 2)
    {
      v26 = 1;
      do
      {
        v27 = [v11 descriptor];
        v28 = [v27 shape];
        v29 = [v28 objectAtIndexedSubscript:v26];
        v17 *= [v29 unsignedIntegerValue];

        ++v26;
        v30 = [v11 descriptor];
        v31 = [v30 shape];
        v32 = [v31 count];
      }

      while (v26 < v32);
    }
  }

  v58 = 0;
  v59 = 0;
  v57[0] = [v13 arithmeticOp] - 4;
  v57[1] = v17;
  v33 = [v13 neuronDescriptor];

  if (v33)
  {
    v34 = [v13 neuronDescriptor];
    [v34 a];
    LODWORD(v58) = v35;

    v36 = [v13 neuronDescriptor];
    [v36 b];
    HIDWORD(v58) = v37;

    v38 = [v13 neuronDescriptor];
    LODWORD(v59) = [v38 activationType];
  }

  context = objc_autoreleasePoolPush();
  v39 = [(MLCDeviceGPU *)self gpuPipelineStatesArithmeticUnaryGradient];
  v40 = [v39 objectAtIndexedSubscript:a6];
  v41 = [v40 maxTotalThreadsPerThreadgroup];

  v42 = (v17 + v41 - 1) / v41;
  v43 = [v47 computeCommandEncoderWithDispatchType:0];
  v44 = [(MLCDeviceGPU *)self gpuPipelineStatesArithmeticUnaryGradient];
  v45 = [v44 objectAtIndexedSubscript:a6];
  [v43 setComputePipelineState:v45];

  [v43 memoryBarrierWithScope:2];
  [v43 setBuffer:v48 offset:0 atIndex:0];
  [v43 setBuffer:v50 offset:0 atIndex:1];
  [v43 setBuffer:v49 offset:0 atIndex:2];
  [v43 setBytes:v57 length:24 atIndex:3];
  v55 = v42;
  v56 = vdupq_n_s64(1uLL);
  v53 = v41;
  v54 = v56;
  [v43 dispatchThreadgroups:&v55 threadsPerThreadgroup:&v53];
  [v43 endEncoding];

  objc_autoreleasePoolPop(context);
}

- (void)dispatchForwardArithmeticBinaryKernel:(id)a3 sourceTensor:(id)a4 sourceSecondaryTensor:(id)a5 resultTensor:(id)a6 deviceIndex:(unint64_t)a7
{
  v12 = a6;
  v13 = a5;
  v14 = a4;
  v15 = [a3 objectAtIndexedSubscript:a7];
  v16 = [(MLCDeviceGPU *)self gpuCommandBufferList];
  v17 = [v16 objectAtIndexedSubscript:a7];

  v29 = 0u;
  memset(v28, 0, sizeof(v28));
  v18 = [v15 arithmeticOp];
  if (v18 <= 26)
  {
    if (v18 == 21)
    {
      v19 = 4;
      goto LABEL_12;
    }

    if (v18 == 26)
    {
      v19 = 5;
      goto LABEL_12;
    }
  }

  else
  {
    switch(v18)
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
  v20 = [v15 neuronDescriptor];

  if (v20)
  {
    v21 = [v15 neuronDescriptor];
    [v21 a];
    LODWORD(v29) = v22;

    v23 = [v15 neuronDescriptor];
    [v23 b];
    DWORD1(v29) = v24;

    v25 = [v15 neuronDescriptor];
    DWORD2(v29) = [v25 activationType];
  }

  v26 = [(MLCDeviceGPU *)self gpuPipelineStatesArithmeticBinaryForward];
  v27 = [v26 objectAtIndexedSubscript:a7];
  [(MLCDeviceGPU *)self encodePrimitiveToCommandBuffer:v17 gpuDeviceOps:v15 sourceTensor:v14 secondaryTensor:v13 tertiaryTensor:0 resultTensor:v12 params:v28 sizeOfParams:96 pipelineState:v27 deviceIndex:a7];
}

- (void)dispatchForwardArithmeticTertiaryKernel:(id)a3 sourceTensor:(id)a4 sourceSecondaryTensor:(id)a5 sourceTertiaryTensor:(id)a6 resultTensor:(id)a7 deviceIndex:(unint64_t)a8
{
  v14 = a7;
  v15 = a6;
  v16 = a5;
  v17 = a4;
  v18 = [a3 objectAtIndexedSubscript:a8];
  v19 = [(MLCDeviceGPU *)self gpuCommandBufferList];
  v20 = [v19 objectAtIndexedSubscript:a8];

  memset(v34, 0, sizeof(v34));
  v33 = 0u;
  v32 = 0u;
  v31 = 0u;
  v30 = 0u;
  v29 = 10;
  v21 = [v18 neuronDescriptor];

  if (v21)
  {
    v22 = [v18 neuronDescriptor];
    [v22 a];
    v34[3] = v23;

    v24 = [v18 neuronDescriptor];
    [v24 b];
    v34[4] = v25;

    v26 = [v18 neuronDescriptor];
    v34[5] = [v26 activationType];
  }

  v27 = [(MLCDeviceGPU *)self gpuPipelineStatesArithmeticBinaryForward];
  v28 = [v27 objectAtIndexedSubscript:a8];
  [(MLCDeviceGPU *)self encodePrimitiveToCommandBuffer:v20 gpuDeviceOps:v18 sourceTensor:v17 secondaryTensor:v16 tertiaryTensor:v15 resultTensor:v14 params:&v29 sizeOfParams:96 pipelineState:v28 deviceIndex:a8];
}

- (void)dispatchGradientArithmeticBinaryKernel:(id)a3 sourceGradientTensor:(id)a4 resultGradientTensor:(id)a5 secondaryResultGradientTensor:(id)a6 deviceIndex:(unint64_t)a7
{
  v207[1] = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v170 = a6;
  v14 = [v11 objectAtIndexedSubscript:a7];
  if ([v14 useSourceGradientDeviceMemoryForResultGradientTensor] && objc_msgSend(v14, "useSourceGradientDeviceMemoryForSecondaryResultGradientTensor"))
  {
    v15 = [v14 neuronDescriptor];

    if (!v15)
    {
      goto LABEL_154;
    }

    v16 = 1;
  }

  else
  {
    v16 = 0;
  }

  v17 = [v14 source0Shape];
  v173 = [v14 source1Shape];
  v18 = [v17 count];
  v172 = v17;
  v19 = [v17 objectAtIndexedSubscript:0];
  v20 = [v19 unsignedIntegerValue];
  if (v18 == 1)
  {
  }

  else
  {
    if (v20 <= [v14 batchSize])
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

  v25 = [v173 count];
  v26 = [v173 objectAtIndexedSubscript:0];
  v27 = [v26 unsignedIntegerValue];
  if (v25 == 1)
  {
  }

  else
  {
    if (v27 <= [v14 batchSize])
    {
      v28 = v173;
      v29 = [v173 objectAtIndexedSubscript:0];
      [v29 unsignedIntegerValue];
    }

    else
    {
      [v14 batchSize];
      v28 = v173;
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

  v32 = [v12 descriptor];
  v33 = [v32 shape];

  v34 = [v33 count];
  v171 = v33;
  v35 = [v33 objectAtIndexedSubscript:0];
  v36 = [v35 unsignedIntegerValue];
  if (v34 == 1)
  {
  }

  else
  {
    if (v36 <= [v14 batchSize])
    {
      v37 = v171;
      v38 = [v171 objectAtIndexedSubscript:0];
      v34 = [v38 unsignedIntegerValue];
    }

    else
    {
      v34 = [v14 batchSize];
      v37 = v171;
    }

    v36 = 1;
    if ([v37 count] >= 2)
    {
      v39 = 1;
      do
      {
        v40 = [v171 objectAtIndexedSubscript:v39];
        v36 *= [v40 unsignedIntegerValue];

        ++v39;
      }

      while (v39 < [v171 count]);
    }
  }

  v174 = [MEMORY[0x277CD7258] matrixDescriptorWithRows:v34 columns:v36 rowBytes:4 * v36 dataType:268435488];
  v169 = [v12 deviceMemory];
  v186 = [v13 deviceMemory];
  v181 = [v170 deviceMemory];
  v41 = [(MLCDeviceGPU *)self gpuCommandBufferList];
  v185 = [v41 objectAtIndexedSubscript:a7];

  v202 = 0u;
  v203 = 0u;
  v200 = 0u;
  v201 = 0u;
  v198 = 0u;
  v199 = 0u;
  v42 = [v14 arithmeticOp];
  if (v42 <= 26)
  {
    if (v42 == 21)
    {
      v43 = 4;
      goto LABEL_41;
    }

    if (v42 == 26)
    {
      v43 = 5;
      goto LABEL_41;
    }

LABEL_52:
    if (v16)
    {
      v66 = 9;
    }

    else
    {
      v66 = [v14 arithmeticOp];
    }

    LODWORD(v198) = v66;
    goto LABEL_42;
  }

  if (v42 == 29)
  {
    v43 = 8;
    goto LABEL_41;
  }

  if (v42 == 28)
  {
    v43 = 7;
    goto LABEL_41;
  }

  if (v42 != 27)
  {
    goto LABEL_52;
  }

  v43 = 6;
LABEL_41:
  LODWORD(v198) = v43;
LABEL_42:
  v44 = [v14 neuronDescriptor];

  if (v44)
  {
    v45 = [v14 neuronDescriptor];
    [v45 a];
    LODWORD(v203) = v46;

    v47 = [v14 neuronDescriptor];
    [v47 b];
    DWORD1(v203) = v48;

    v49 = [v14 neuronDescriptor];
    DWORD2(v203) = [v49 activationType];
  }

  v50 = [v14 constantArithmeticSourcesFlags];
  HIDWORD(v202) = v50;
  v51 = [v14 source];

  if (!v51)
  {
    HIDWORD(v202) = v50 | 0x100;
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

    v54 = [v173 objectAtIndexedSubscript:0];
    LODWORD(v200) = [v54 unsignedIntegerValue];

    v55 = [v171 objectAtIndexedSubscript:0];
    v56 = [v55 unsignedIntegerValue];
    LODWORD(v201) = v56;

    v175 = 1;
    v178 = 1;
  }

  else if ([v171 count] == 2)
  {
    *(&v200 + 4) = 0x100000001;
    *(&v199 + 4) = 0x100000001;
    *(&v198 + 4) = 0x100000001;
    v57 = [v172 objectAtIndexedSubscript:0];
    HIDWORD(v198) = [v57 unsignedIntegerValue];

    v58 = [v173 objectAtIndexedSubscript:0];
    HIDWORD(v199) = [v58 unsignedIntegerValue];

    v59 = [v171 objectAtIndexedSubscript:0];
    HIDWORD(v200) = [v59 unsignedIntegerValue];

    v60 = [v172 objectAtIndexedSubscript:1];
    LODWORD(v199) = [v60 unsignedIntegerValue];

    v61 = [v173 objectAtIndexedSubscript:1];
    LODWORD(v200) = [v61 unsignedIntegerValue];

    v62 = [v171 objectAtIndexedSubscript:1];
    v56 = [v62 unsignedIntegerValue];
    LODWORD(v201) = v56;

    v52 = HIDWORD(v200);
    v175 = 1;
    v178 = 1;
  }

  else
  {
    v63 = [v172 objectAtIndexedSubscript:0];
    v64 = [v63 unsignedIntegerValue];
    if (v64 <= [v14 batchSize])
    {
      v67 = [v172 objectAtIndexedSubscript:0];
      v65 = [v67 unsignedIntegerValue];
    }

    else
    {
      v65 = [v14 batchSize];
    }

    DWORD1(v198) = v65;

    v68 = [v173 objectAtIndexedSubscript:0];
    v69 = [v68 unsignedIntegerValue];
    if (v69 <= [v14 batchSize])
    {
      v71 = [v173 objectAtIndexedSubscript:0];
      v70 = [v71 unsignedIntegerValue];
    }

    else
    {
      v70 = [v14 batchSize];
    }

    DWORD1(v199) = v70;

    v72 = [v171 objectAtIndexedSubscript:0];
    v73 = [v72 unsignedIntegerValue];
    if (v73 <= [v14 batchSize])
    {
      v75 = [v171 objectAtIndexedSubscript:0];
      v74 = [v75 unsignedIntegerValue];
    }

    else
    {
      v74 = [v14 batchSize];
    }

    v178 = v74;
    DWORD1(v200) = v74;

    v76 = [v171 count];
    v77 = [v172 objectAtIndexedSubscript:1];
    DWORD2(v198) = [v77 unsignedIntegerValue];

    v78 = [v173 objectAtIndexedSubscript:1];
    DWORD2(v199) = [v78 unsignedIntegerValue];

    v79 = [v171 objectAtIndexedSubscript:1];
    v175 = [v79 unsignedIntegerValue];
    DWORD2(v200) = v175;

    v80 = [v172 objectAtIndexedSubscript:2];
    v81 = [v80 unsignedIntegerValue];
    if (v76 == 3)
    {
      LODWORD(v199) = v81;

      v82 = [v173 objectAtIndexedSubscript:2];
      LODWORD(v200) = [v82 unsignedIntegerValue];

      v83 = [v171 objectAtIndexedSubscript:2];
      v56 = [v83 unsignedIntegerValue];
      LODWORD(v201) = v56;

      HIDWORD(v200) = 1;
      v52 = 1;
      HIDWORD(v199) = 1;
      HIDWORD(v198) = 1;
    }

    else
    {
      HIDWORD(v198) = v81;

      v84 = [v173 objectAtIndexedSubscript:2];
      HIDWORD(v199) = [v84 unsignedIntegerValue];

      v85 = [v171 objectAtIndexedSubscript:2];
      HIDWORD(v200) = [v85 unsignedIntegerValue];

      v86 = [v172 objectAtIndexedSubscript:3];
      LODWORD(v199) = [v86 unsignedIntegerValue];

      v87 = [v173 objectAtIndexedSubscript:3];
      LODWORD(v200) = [v87 unsignedIntegerValue];

      v88 = [v171 objectAtIndexedSubscript:3];
      v56 = [v88 unsignedIntegerValue];
      LODWORD(v201) = v56;

      v52 = HIDWORD(v200);
    }
  }

  v166 = v13;
  v167 = v12;
  v168 = v11;
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
    v95 = [v184 constantArithmeticSourcesFlags];
    if (v94)
    {
      v96 = 1;
    }

    else
    {
      v96 = 2;
    }

    if ((v95 & v96) == 0)
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

      if (v99[1] != v175)
      {
        v100 = v101;
      }

      v103 = v99[2];
      v102 = v99[3];
      if (v103 != v52)
      {
        v100 |= 4u;
      }

      v104 = v102 == v56 ? v100 : v100 | 8;
      *v90 = v104;
      if (v104)
      {
        v105 = [MEMORY[0x277CD72B0] temporaryMatrixWithCommandBuffer:v185 matrixDescriptor:v174];
        v106 = *v92;
        *v92 = v105;

        v107 = [v105 data];
        v98 = *v91;
        *v91 = v107;
        goto LABEL_83;
      }
    }

    if ((v94 & 1) == 0)
    {
      break;
    }

    v97 = [v186 objectAtIndexedSubscript:a7];
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

  v108 = [v181 objectAtIndexedSubscript:a7];
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
  v112 = [(MLCDeviceGPU *)self gpuPipelineStatesArithmeticBinaryGradient];
  v113 = [v112 objectAtIndexedSubscript:a7];
  v114 = [v113 maxTotalThreadsPerThreadgroup];

  v115 = v178 * v175;
  if (v56 >= 32)
  {
    v116 = 32;
  }

  else
  {
    v116 = 8;
  }

  v182 = v116;
  v117 = 5;
  if (v56 < 32)
  {
    v117 = 3;
  }

  if (v114 >> v117 >= v52)
  {
    v118 = v52;
  }

  else
  {
    v118 = v114 >> v117;
  }

  if (v114 / (v118 << v117) >= v115)
  {
    v119 = v115;
  }

  else
  {
    v119 = v114 / (v118 << v117);
  }

  v179 = (v116 + v56 - 1) >> v117;
  v120 = (v119 + v115 - 1) / v119;
  v121 = [v185 computeCommandEncoderWithDispatchType:0];
  v122 = [(MLCDeviceGPU *)self gpuPipelineStatesArithmeticBinaryGradient];
  v123 = [v122 objectAtIndexedSubscript:a7];
  [v121 setComputePipelineState:v123];

  v124 = [v184 source];
  [v121 setBuffer:v124 offset:0 atIndex:0];

  v125 = self;
  v126 = [v184 secondarySource];
  [v121 setBuffer:v126 offset:0 atIndex:1];

  v127 = [v169 objectAtIndexedSubscript:a7];
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
        v134 = a7;
      }

      else
      {
        v134 = a7;
        if (v133 == 2)
        {
          v183 = v131;
          v138 = DWORD2(v200);
          v137 = v201 * HIDWORD(v200);
          v153 = [(MLCDeviceGPU *)v125 gpuPipelineStatesReduceAcrossChannel];
          v140 = [v153 objectAtIndexedSubscript:a7];

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
      v139 = [(MLCDeviceGPU *)v125 gpuPipelineStatesReduceAcrossBatch];
      v140 = [v139 objectAtIndexedSubscript:v134];

      v141 = 1;
LABEL_133:
      v154 = v138;
      v155 = [v140 maxTotalThreadsPerThreadgroup];
      v156 = 1 << -__clz(v137);
      if ((v137 & (v137 - 1)) == 0)
      {
        v156 = v137;
      }

      if (v155 < v137)
      {
        v157 = (v137 + v155 - 1) / v155;
      }

      else
      {
        v157 = 1;
      }

      if (v155 < v137)
      {
        v158 = v155;
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
          v160 = v186;
        }

        else
        {
          v160 = v181;
        }

        do
        {
          [v150 setBuffer:v159 offset:0 atIndex:0];
          v161 = [v160 objectAtIndexedSubscript:a7];
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
      v125 = self;
      v143 = v180;
      v132 = v183;
      goto LABEL_147;
    }

    if (v133 > 13)
    {
      v134 = a7;
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

    v134 = a7;
    if (v133 == 8)
    {
      LODWORD(v136) = v201;
      v135 = SDWORD2(v200) * SDWORD1(v200) * SHIDWORD(v200);
LABEL_119:
      v145 = [(MLCDeviceGPU *)v125 gpuPipelineStatesArithmeticReduceGradientAll];
      v146 = [v145 objectAtIndexedSubscript:v134];

      v147 = [v146 maxTotalThreadsPerThreadgroup];
      if (v147 <= v136)
      {
        v144 = v147;
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

        v149 = [v146 threadExecutionWidth];
        if (v136 <= v149)
        {
          v144 = v149;
        }

        else
        {
          v144 = v136;
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
    v142 = [(MLCDeviceGPU *)v125 gpuPipelineStatesArithmeticReduceGradientAny];
    v143 = [v142 objectAtIndexedSubscript:v134];

    v144 = [v143 maxTotalThreadsPerThreadgroup];
    v135 = 1;
LABEL_128:
    v150 = [v185 computeCommandEncoderWithDispatchType:0];
    [v150 setComputePipelineState:v143];
    [v150 setBuffer:*v130 offset:0 atIndex:0];
    if (v132)
    {
      v151 = v186;
    }

    else
    {
      v151 = v181;
    }

    v152 = [v151 objectAtIndexedSubscript:v134];
    [v150 setBuffer:v152 offset:0 atIndex:1];

    [v150 setThreadgroupMemoryLength:GPU_AlignForThreadGroupMemorySize(4 * v144) atIndex:0];
    [v150 setBytes:&v198 length:96 atIndex:2];
    v194 = v135;
    v195 = vdupq_n_s64(1uLL);
    v192 = v144;
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
  v12 = v167;
  v11 = v168;
  v13 = v166;
  v14 = v184;
  do
  {
  }

  while (v163 != -1);
  objc_autoreleasePoolPop(context);

LABEL_154:
  v164 = *MEMORY[0x277D85DE8];
}

- (void)dispatchForwardGramMatrixKernel:(id)a3 sourceTensor:(id)a4 resultTensor:(id)a5 deviceIndex:(unint64_t)a6 forTraining:(BOOL)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v45 = [v12 deviceMemory];
  v46 = v13;
  v49 = [v13 deviceMemory];
  v47 = v11;
  v14 = [v11 objectAtIndexedSubscript:a6];
  v15 = [(MLCDeviceGPU *)self gpuCommandBufferList];
  v16 = [v15 objectAtIndexedSubscript:a6];

  v17 = [(MLCDeviceGPU *)self deviceList];
  v48 = [v17 objectAtIndexedSubscript:a6];

  v18 = [v12 descriptor];
  v19 = [v18 shape];
  v20 = [v19 count];

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
      v23 = [v12 descriptor];
      v24 = [v23 shape];
      v25 = [v24 objectAtIndexedSubscript:v21];
      v22 *= [v25 unsignedIntegerValue];

      ++v21;
      v26 = [v12 descriptor];
      v27 = [v26 shape];
      v28 = [v27 count];
    }

    while (v21 < v28);
  }

  v29 = [v12 descriptor];
  v30 = [v29 shape];
  v31 = [v30 objectAtIndexedSubscript:1];
  v32 = [v31 unsignedIntegerValue];

  [v14 gramMatrixScale];
  v53 = v33;
  v55 = v32;
  v57 = v22;
  v58 = v22;
  v59 = v32 * v22;
  v60 = v32;
  v61 = v32 * v32;
  v34 = [v14 forwardKernel];
  v35 = [v34 maxTotalThreadsPerThreadgroup];

  v36 = [v14 forwardKernel];
  v37 = [v36 threadExecutionWidth];

  if (v22 <= v37)
  {
    v38 = v37;
  }

  else
  {
    v38 = v35;
  }

  if (v22 <= v37)
  {
    v39 = 0;
  }

  else
  {
    v39 = 4 * (v35 + v32);
  }

  v54 = v22 > v37;
  v56 = (v22 + v38 - 1) / v38;
  if (v56 <= 1)
  {
    v40 = v45;
  }

  else
  {
    v40 = v45;
    if (v38 + v32 > [v48 maxThreadgroupMemoryLength] >> 2)
    {
      v39 = 4 * v38;
      v54 = 0;
    }
  }

  v41 = [v16 computeCommandEncoderWithDispatchType:0];
  v42 = [v14 forwardKernel];
  [v41 setComputePipelineState:v42];

  v43 = [v40 objectAtIndexedSubscript:a6];
  [v41 setBuffer:v43 offset:0 atIndex:0];

  v44 = [v49 objectAtIndexedSubscript:a6];
  [v41 setBuffer:v44 offset:0 atIndex:1];

  [v41 setBytes:&v53 length:36 atIndex:2];
  if (v39)
  {
    [v41 setThreadgroupMemoryLength:GPU_AlignForThreadGroupMemorySize(v39) atIndex:0];
  }

  v52[0] = v32;
  v52[1] = [v14 batchSize];
  v52[2] = 1;
  v50 = v38;
  v51 = vdupq_n_s64(1uLL);
  [v41 dispatchThreadgroups:v52 threadsPerThreadgroup:&v50];
  [v41 endEncoding];
}

- (void)dispatchGradientGramMatrixKernel:(id)a3 sourceGradientTensor:(id)a4 resultGradientTensor:(id)a5 deviceIndex:(unint64_t)a6
{
  v10 = a3;
  v11 = a5;
  v39 = [a4 deviceMemory];
  v12 = [v11 deviceMemory];
  v40 = v10;
  v13 = [v10 objectAtIndexedSubscript:a6];
  v14 = [(MLCDeviceGPU *)self gpuCommandBufferList];
  v15 = [v14 objectAtIndexedSubscript:a6];

  v16 = [v11 descriptor];
  v17 = [v16 shape];
  v18 = [v17 count];

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
      v21 = [v11 descriptor];
      v22 = [v21 shape];
      v23 = [v22 objectAtIndexedSubscript:v19];
      v20 *= [v23 unsignedIntegerValue];

      ++v19;
      v24 = [v11 descriptor];
      v25 = [v24 shape];
      v26 = [v25 count];
    }

    while (v19 < v26);
  }

  v27 = [v11 descriptor];
  v28 = [v27 shape];
  v29 = [v28 objectAtIndexedSubscript:1];
  v30 = [v29 unsignedIntegerValue];

  v44[3] = 0;
  [v13 gramMatrixScale];
  v44[0] = v31;
  v44[4] = v20;
  v44[5] = v30;
  v44[6] = v30 * v30;
  v44[7] = v20;
  v44[8] = v30 * v20;
  v44[1] = 0;
  v44[2] = v30;
  v32 = [v13 gradientKernel];
  v33 = [v32 maxTotalThreadsPerThreadgroup];

  v34 = [v15 computeCommandEncoderWithDispatchType:0];
  v35 = [v13 gradientKernel];
  [v34 setComputePipelineState:v35];

  v36 = [v13 source];
  [v34 setBuffer:v36 offset:0 atIndex:0];

  v37 = [v39 objectAtIndexedSubscript:a6];
  [v34 setBuffer:v37 offset:0 atIndex:1];

  v38 = [v12 objectAtIndexedSubscript:a6];
  [v34 setBuffer:v38 offset:0 atIndex:2];

  [v34 setBytes:v44 length:36 atIndex:3];
  [v34 setThreadgroupMemoryLength:GPU_AlignForThreadGroupMemorySize(8 * v30) atIndex:0];
  v43[0] = v30;
  v43[1] = [v13 batchSize];
  v43[2] = 1;
  v41 = v33;
  v42 = vdupq_n_s64(1uLL);
  [v34 dispatchThreadgroups:v43 threadsPerThreadgroup:&v41];
  [v34 endEncoding];
}

- (void)dispatchForwardLayerNormalizationKernel:(id)a3 sourceTensors:(id)a4 resultTensor:(id)a5 deviceIndex:(unint64_t)a6 forTraining:(BOOL)a7
{
  LODWORD(v7) = a7;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = [v13 objectAtIndexedSubscript:0];
  v72 = [v15 deviceMemory];

  v67 = v14;
  v75 = [v14 deviceMemory];
  v68 = v12;
  v16 = [v12 objectAtIndexedSubscript:a6];
  v74 = [v16 exportableState];
  v17 = [(MLCDeviceGPU *)self gpuCommandBufferList];
  v73 = [v17 objectAtIndexedSubscript:a6];

  v18 = [(MLCDeviceGPU *)self deviceList];
  v70 = [v18 objectAtIndexedSubscript:a6];

  v80 = 0;
  v81 = 0;
  v82 = 0;
  v79 = [v13 count] != 1;
  v84 = v7;
  [v16 varianceEpsilon];
  v83 = v19;
  v20 = [v16 normalizedShape];
  v21 = [v20 count];

  v22 = [v16 normalizedShape];
  v23 = v22;
  v71 = v7;
  if (v21 == 3)
  {
    v24 = [v22 objectAtIndexedSubscript:0];
    v25 = [v24 unsignedIntegerValue];
    v26 = [v16 normalizedShape];
    v27 = [v26 objectAtIndexedSubscript:1];
    v28 = [v27 unsignedIntegerValue] * v25;
    v29 = [v16 normalizedShape];
    v7 = [v29 objectAtIndexedSubscript:2];
    v30 = v28 * [v7 unsignedIntegerValue];
    HIDWORD(v79) = v30;

    LOBYTE(v7) = v71;
  }

  else
  {
    v31 = [v22 count];

    v23 = [v16 normalizedShape];
    v24 = [v23 objectAtIndexedSubscript:0];
    v32 = [v24 unsignedIntegerValue];
    v30 = v32;
    if (v31 == 2)
    {
      v33 = [v16 normalizedShape];
      v34 = [v33 objectAtIndexedSubscript:1];
      v30 *= [v34 unsignedIntegerValue];
      HIDWORD(v79) = v30;
    }

    else
    {
      HIDWORD(v79) = v32;
    }
  }

  v69 = v30;
  *(&v82 + 1) = 1.0 / v30;
  v35 = 1;
  v36 = 1;
  while (1)
  {
    v37 = [v13 objectAtIndexedSubscript:0];
    v38 = [v37 descriptor];
    v39 = [v38 shape];
    v40 = [v39 count];

    if (v35 >= v40)
    {
      break;
    }

    v41 = [v13 objectAtIndexedSubscript:0];
    v42 = [v41 descriptor];
    v43 = [v42 shape];
    v44 = [v43 objectAtIndexedSubscript:v35];
    v36 *= [v44 unsignedIntegerValue];

    ++v35;
  }

  v45 = [v16 batchSize];
  if (v7)
  {
    v46 = 4 * v36 * v45;
    v47 = [v16 normalizationInputNormalized];

    if (!v47)
    {
      v48 = [v70 newBufferWithLength:v46 options:{+[MLCGPUHelper mtlResourceOptions](MLCGPUHelper, "mtlResourceOptions")}];
      [v16 setNormalizationInputNormalized:v48];
    }

    v49 = [v16 normalizationInverseSqrtVariance];

    if (!v49)
    {
      v50 = [v70 newBufferWithLength:v46 / v69 options:{+[MLCGPUHelper mtlResourceOptions](MLCGPUHelper, "mtlResourceOptions")}];
      [v16 setNormalizationInverseSqrtVariance:v50];
    }
  }

  v80 = v36;
  LODWORD(v81) = v36;
  HIDWORD(v81) = v36;
  v51 = [v16 forwardKernel];
  v52 = [v51 threadExecutionWidth];

  v53 = [v16 batchSize];
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

  v56 = v72;
  v57 = [v72 objectAtIndexedSubscript:a6];
  [v54 setBuffer:v57 offset:0 atIndex:0];

  v58 = [v75 objectAtIndexedSubscript:a6];
  [v54 setBuffer:v58 offset:0 atIndex:1];

  [v54 setBytes:&v79 length:36 atIndex:2];
  v59 = [v74 beta];
  [v54 setBuffer:v59 offset:0 atIndex:3];

  v60 = [v74 gamma];
  [v54 setBuffer:v60 offset:0 atIndex:4];

  [v54 setThreadgroupMemoryLength:GPU_AlignForThreadGroupMemorySize(4 * SHIDWORD(v79)) atIndex:0];
  if (v71)
  {
    v61 = [v16 normalizationInputNormalized];
    [v54 setBuffer:v61 offset:0 atIndex:5];

    [v16 normalizationInverseSqrtVariance];
  }

  else
  {
    v62 = [v72 objectAtIndexedSubscript:a6];
    [v54 setBuffer:v62 offset:0 atIndex:5];

    [v72 objectAtIndexedSubscript:a6];
  }
  v63 = ;
  [v54 setBuffer:v63 offset:0 atIndex:6];

  if (v79)
  {
    v64 = [v13 objectAtIndexedSubscript:1];
    v65 = [v64 deviceMemory];
    v66 = [v65 objectAtIndexedSubscript:a6];
    [v54 setBuffer:v66 offset:0 atIndex:7];

    v56 = v72;
  }

  else
  {
    v64 = [v72 objectAtIndexedSubscript:a6];
    [v54 setBuffer:v64 offset:0 atIndex:7];
  }

  v78[0] = v36 / v69;
  v78[1] = v53;
  v78[2] = 1;
  v76 = v52;
  v77 = vdupq_n_s64(1uLL);
  [v54 dispatchThreadgroups:v78 threadsPerThreadgroup:&v76];
  [v54 endEncoding];
}

- (void)dispatchGradientLayerNormalizationKernel:(id)a3 sourceGradientTensor:(id)a4 resultGradientTensor:(id)a5 deviceIndex:(unint64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [v11 deviceMemory];
  v71 = v12;
  v70 = [v12 deviceMemory];
  v72 = v10;
  v14 = [v10 objectAtIndexedSubscript:a6];
  v69 = [v14 exportableState];
  v15 = [(MLCDeviceGPU *)self gpuCommandBufferList];
  v16 = [v15 objectAtIndexedSubscript:a6];

  v78 = 0;
  v79 = 0;
  v80 = 0;
  v81 = 0.0;
  v83 = 1;
  [v14 varianceEpsilon];
  v82 = v17;
  v18 = [v14 normalizedShape];
  v19 = [v18 count];

  v20 = [v14 normalizedShape];
  v21 = v20;
  v73 = v13;
  v67 = a6;
  if (v19 == 3)
  {
    v22 = [v20 objectAtIndexedSubscript:0];
    v23 = [v22 unsignedIntegerValue];
    v24 = [v14 normalizedShape];
    v25 = [v24 objectAtIndexedSubscript:1];
    v26 = [v25 unsignedIntegerValue] * v23;
    v27 = [v14 normalizedShape];
    v28 = [v27 objectAtIndexedSubscript:2];
    v29 = v26 * [v28 unsignedIntegerValue];
    HIDWORD(v78) = v29;
  }

  else
  {
    v30 = [v20 count];

    v21 = [v14 normalizedShape];
    v22 = [v21 objectAtIndexedSubscript:0];
    v31 = [v22 unsignedIntegerValue];
    v32 = v31;
    if (v30 == 2)
    {
      v33 = [v14 normalizedShape];
      v34 = [v33 objectAtIndexedSubscript:1];
      v29 = [v34 unsignedIntegerValue] * v32;
      HIDWORD(v78) = v29;
    }

    else
    {
      HIDWORD(v78) = v31;
      v29 = v31;
    }
  }

  v81 = 1.0 / v29;
  v35 = [v11 descriptor];
  v36 = [v35 shape];
  v37 = [v36 count];

  v38 = 1;
  if (v37 >= 2)
  {
    v39 = 1;
    do
    {
      v40 = [v11 descriptor];
      v41 = [v40 shape];
      v42 = [v41 objectAtIndexedSubscript:v39];
      v38 *= [v42 unsignedIntegerValue];

      ++v39;
      v43 = [v11 descriptor];
      v44 = [v43 shape];
      v45 = [v44 count];
    }

    while (v39 < v45);
  }

  LODWORD(v79) = v38;
  HIDWORD(v79) = v38;
  LODWORD(v80) = v38;
  HIDWORD(v80) = [v14 batchSize];
  v46 = [v14 gradientStatisticsKernel];
  v47 = [v46 maxTotalThreadsPerThreadgroup];

  if (v47 <= v29)
  {
    v48 = (v29 + v47 - 1) / v47;
  }

  else
  {
    v47 = v29;
    v48 = 1;
  }

  v49 = [v16 computeCommandEncoderWithDispatchType:0];
  v50 = [v14 gradientStatisticsKernel];
  [v49 setComputePipelineState:v50];

  v51 = [v73 objectAtIndexedSubscript:v68];
  [v49 setBuffer:v51 offset:0 atIndex:0];

  [v49 setBytes:&v78 length:36 atIndex:2];
  v52 = [v14 normalizationBetaGradient];
  [v49 setBuffer:v52 offset:0 atIndex:3];

  v53 = [v14 normalizationGammaGradient];
  [v49 setBuffer:v53 offset:0 atIndex:4];

  v54 = [v14 normalizationInputNormalized];
  [v49 setBuffer:v54 offset:0 atIndex:5];

  [v49 setThreadgroupMemoryLength:GPU_AlignForThreadGroupMemorySize(8 * v47) atIndex:0];
  v76 = v48;
  v55 = 1;
  v77 = vdupq_n_s64(1uLL);
  v74 = v47;
  v75 = v77;
  [v49 dispatchThreadgroups:&v76 threadsPerThreadgroup:&v74];
  v56 = v80 / SHIDWORD(v78);
  v57 = v80 / SHIDWORD(v78);
  v58 = [v14 forwardKernel];
  v59 = [v58 maxTotalThreadsPerThreadgroup];

  if (v59 <= v56)
  {
    v57 = v59;
    v55 = (v56 + v59 - 1) / v59;
  }

  v60 = [v14 batchSize];
  v61 = [v14 gradientKernel];
  [v49 setComputePipelineState:v61];

  v62 = [v73 objectAtIndexedSubscript:v68];
  [v49 setBuffer:v62 offset:0 atIndex:0];

  v63 = [v70 objectAtIndexedSubscript:v68];
  [v49 setBuffer:v63 offset:0 atIndex:1];

  [v49 setBytes:&v78 length:36 atIndex:2];
  v64 = [v69 gamma];
  [v49 setBuffer:v64 offset:0 atIndex:4];

  v65 = [v14 normalizationInputNormalized];
  [v49 setBuffer:v65 offset:0 atIndex:5];

  v66 = [v14 normalizationInverseSqrtVariance];
  [v49 setBuffer:v66 offset:0 atIndex:6];

  v76 = v55;
  v77.i64[0] = v60;
  v77.i64[1] = 1;
  v74 = v57;
  v75 = vdupq_n_s64(1uLL);
  [v49 dispatchThreadgroups:&v76 threadsPerThreadgroup:&v74];
  [v49 endEncoding];
}

- (void)dispatchForwardInstanceNormalizationKernel:(id)a3 sourceTensor:(id)a4 resultTensor:(id)a5 deviceIndex:(unint64_t)a6 forTraining:(BOOL)a7
{
  v97 = a7;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v91 = [v12 deviceMemory];
  v92 = v13;
  v90 = [v13 deviceMemory];
  v93 = v11;
  v14 = [v11 objectAtIndexedSubscript:a6];
  v15 = [v14 exportableState];
  v16 = [(MLCDeviceGPU *)self gpuCommandBufferList];
  v95 = [v16 objectAtIndexedSubscript:a6];

  v17 = [(MLCDeviceGPU *)self deviceList];
  v94 = [v17 objectAtIndexedSubscript:a6];

  v106 = 0;
  v104 = 0u;
  v105 = 0u;
  v18 = v15;
  if (v15)
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
  v22 = [v12 descriptor];
  v23 = [v22 shape];
  v24 = 1;
  v25 = [v23 objectAtIndexedSubscript:1];
  v96 = [v25 unsignedIntegerValue];

  v89 = [v14 batchSize];
  v26 = [v12 descriptor];
  v27 = [v26 shape];
  v28 = [v27 count];

  if (v28 >= 3)
  {
    v29 = 2;
    v24 = 1;
    do
    {
      v30 = [v12 descriptor];
      v31 = [v30 shape];
      v32 = [v31 objectAtIndexedSubscript:v29];
      v24 *= [v32 unsignedIntegerValue];

      ++v29;
      v33 = [v12 descriptor];
      v34 = [v33 shape];
      v35 = [v34 count];
    }

    while (v29 < v35);
  }

  LODWORD(v104) = v24;
  DWORD1(v104) = v24 * v96;
  *(&v104 + 2) = 1.0 / v24;
  HIDWORD(v104) = v96;
  v36 = [v14 neuronDescriptor];

  if (v36)
  {
    v19 |= 0x10u;
    v103 = v19;
    v37 = [v14 neuronDescriptor];
    [v37 a];
    DWORD2(v105) = v38;

    v39 = [v14 neuronDescriptor];
    [v39 b];
    HIDWORD(v105) = v40;

    v41 = [v14 neuronDescriptor];
    LODWORD(v106) = [v41 activationType];
  }

  v42 = [v14 movingState];

  if (v42)
  {
    v103 = v19 | 3;
  }

  v43 = [v14 batchSize];
  if (v97)
  {
    v44 = v43;
    v45 = 4 * v96;
    v46 = [v14 batchSize];
    v47 = [v14 normalizationInputNormalized];

    if (!v47)
    {
      v48 = [v94 newBufferWithLength:v45 * v24 * v44 options:{+[MLCGPUHelper mtlResourceOptions](MLCGPUHelper, "mtlResourceOptions")}];
      [v14 setNormalizationInputNormalized:v48];
    }

    v49 = [v14 normalizationInverseSqrtVariance];

    if (!v49)
    {
      v50 = [v94 newBufferWithLength:v45 * v46 options:{+[MLCGPUHelper mtlResourceOptions](MLCGPUHelper, "mtlResourceOptions")}];
      [v14 setNormalizationInverseSqrtVariance:v50];
    }

    v51 = [v14 movingState];

    if (v51)
    {
      v52 = [v14 normalizationComputedMean];

      if (!v52)
      {
        v53 = [v94 newBufferWithLength:v45 * objc_msgSend(v14 options:{"batchSize"), +[MLCGPUHelper mtlResourceOptions](MLCGPUHelper, "mtlResourceOptions")}];
        [v14 setNormalizationComputedMean:v53];
      }

      v54 = [v14 normalizationComputedVariance];

      if (!v54)
      {
        v55 = [v94 newBufferWithLength:v45 * objc_msgSend(v14 options:{"batchSize"), +[MLCGPUHelper mtlResourceOptions](MLCGPUHelper, "mtlResourceOptions")}];
        [v14 setNormalizationComputedVariance:v55];
      }
    }
  }

  v56 = [v14 forwardKernel];
  v57 = [v56 maxTotalThreadsPerThreadgroup];

  if (v57 > v24)
  {
    v58 = 1 << -__clz(v24);
    v59 = (v24 & (v24 - 1)) != 0 ? v58 : v24;
    v60 = [v14 gradientKernel];
    v57 = [v60 threadExecutionWidth];

    if (v59 > v57)
    {
      v57 = v59;
    }
  }

  v61 = [v95 computeCommandEncoderWithDispatchType:0];
  if (v97)
  {
    [v14 forwardKernel];
  }

  else
  {
    [v14 forwardStatisticsKernel];
  }
  v62 = ;
  [v61 setComputePipelineState:v62];

  v63 = [v91 objectAtIndexedSubscript:a6];
  [v61 setBuffer:v63 offset:0 atIndex:0];

  v64 = [v90 objectAtIndexedSubscript:a6];
  [v61 setBuffer:v64 offset:0 atIndex:1];

  [v61 setBytes:&v103 length:44 atIndex:2];
  if (v18)
  {
    v65 = [v18 beta];
    [v61 setBuffer:v65 offset:0 atIndex:3];

    v66 = [v18 gamma];
    [v61 setBuffer:v66 offset:0 atIndex:4];
  }

  v67 = v96;
  if (v97)
  {
    v68 = [v14 normalizationInputNormalized];
    [v61 setBuffer:v68 offset:0 atIndex:5];

    v69 = [v14 normalizationInverseSqrtVariance];
    [v61 setBuffer:v69 offset:0 atIndex:6];

    v70 = [v14 movingState];

    if (v70)
    {
      v71 = [v14 normalizationComputedMean];
      [v61 setBuffer:v71 offset:0 atIndex:7];

      v72 = [v14 normalizationComputedVariance];
      [v61 setBuffer:v72 offset:0 atIndex:8];
LABEL_37:
    }
  }

  else
  {
    v73 = [v14 movingState];

    if (v73)
    {
      v72 = [v14 movingState];
      v74 = [v72 mean];
      [v61 setBuffer:v74 offset:0 atIndex:7];

      v75 = [v72 variance];
      [v61 setBuffer:v75 offset:0 atIndex:8];

      v67 = v96;
      goto LABEL_37;
    }
  }

  [v61 setThreadgroupMemoryLength:GPU_AlignForThreadGroupMemorySize(4 * v57) atIndex:0];
  v101 = v67;
  v102.i64[0] = v89;
  v102.i64[1] = 1;
  v99 = v57;
  v100 = vdupq_n_s64(1uLL);
  [v61 dispatchThreadgroups:&v101 threadsPerThreadgroup:&v99];
  if (v97)
  {
    v76 = [v14 movingState];

    if (v76)
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
      v79 = [v14 instanceNormMovingMeanVarianceKernel];
      v80 = [v79 maxTotalThreadsPerThreadgroup];

      if (v80 <= v67)
      {
        v81 = v80;
        v82 = (v67 + v80 - 1) / v80;
      }

      else
      {
        v81 = v67;
        v82 = 1;
      }

      v83 = [v14 instanceNormMovingMeanVarianceKernel];
      [v61 setComputePipelineState:v83];

      v84 = [v14 normalizationComputedMean];
      [v61 setBuffer:v84 offset:0 atIndex:0];

      v85 = [v14 normalizationComputedVariance];
      [v61 setBuffer:v85 offset:0 atIndex:1];

      [v61 setBytes:v98 length:16 atIndex:2];
      v86 = [v14 movingState];
      v87 = [v86 mean];
      [v61 setBuffer:v87 offset:0 atIndex:3];

      v88 = [v86 variance];
      [v61 setBuffer:v88 offset:0 atIndex:4];

      v101 = v82;
      v102 = vdupq_n_s64(1uLL);
      v99 = v81;
      v100 = v102;
      [v61 dispatchThreadgroups:&v101 threadsPerThreadgroup:&v99];
    }
  }

  [v61 endEncoding];
}

- (void)dispatchGradientInstanceNormalizationKernel:(id)a3 sourceGradientTensor:(id)a4 resultGradientTensor:(id)a5 deviceIndex:(unint64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v85 = [v11 deviceMemory];
  v86 = v12;
  v13 = [v12 deviceMemory];
  v87 = v10;
  v14 = [v10 objectAtIndexedSubscript:a6];
  v94 = [v14 exportableState];
  v15 = [(MLCDeviceGPU *)self gpuCommandBufferList];
  v92 = [v15 objectAtIndexedSubscript:a6];

  v83 = self;
  v16 = [(MLCDeviceGPU *)self deviceList];
  v84 = a6;
  v91 = [v16 objectAtIndexedSubscript:a6];

  v103 = 0;
  v101 = 0u;
  v102 = 0u;
  v100 = 12;
  [v14 varianceEpsilon];
  LODWORD(v102) = v17;
  v18 = [v11 descriptor];
  v19 = [v18 shape];
  v20 = 1;
  v21 = [v19 objectAtIndexedSubscript:1];
  v22 = [v21 unsignedIntegerValue];

  v89 = [v14 batchSize];
  v23 = [v11 descriptor];
  v24 = [v23 shape];
  v25 = [v24 count];

  if (v25 >= 3)
  {
    v26 = 2;
    v20 = 1;
    do
    {
      v27 = [v11 descriptor];
      v28 = [v27 shape];
      v29 = [v28 objectAtIndexedSubscript:v26];
      v20 *= [v29 unsignedIntegerValue];

      ++v26;
      v30 = [v11 descriptor];
      v31 = [v30 shape];
      v32 = [v31 count];
    }

    while (v26 < v32);
  }

  v90 = v13;
  v93 = [v14 result];
  v33 = v20 * v22;
  v82 = [v14 batchSize];
  v34 = [v14 normalizationGammaGradient];
  if (!v34)
  {
    v38 = 4 * v22;
    goto LABEL_8;
  }

  v35 = v34;
  v36 = [v14 normalizationGammaGradient];
  v37 = [v36 length];
  v38 = 4 * v22;
  v39 = 4 * v22 * [v14 batchSize];

  if (v37 < v39)
  {
LABEL_8:
    v40 = [v91 newBufferWithLength:objc_msgSend(v14 options:{"batchSize") * v38, +[MLCGPUHelper mtlResourceOptions](MLCGPUHelper, "mtlResourceOptions")}];
    v41 = [v91 newBufferWithLength:objc_msgSend(v14 options:{"batchSize") * v38, +[MLCGPUHelper mtlResourceOptions](MLCGPUHelper, "mtlResourceOptions")}];
    [v14 setNormalizationGammaGradient:v40];
    [v14 setNormalizationBetaGradient:v41];
  }

  v42 = [v92 computeCommandEncoderWithDispatchType:0];
  v43 = [v14 gradientKernel];
  v44 = [v43 maxTotalThreadsPerThreadgroup];

  if (v44 > v20)
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

    v47 = [v14 gradientKernel];
    v48 = [v47 threadExecutionWidth];

    if (v46 <= v48)
    {
      v44 = v48;
    }

    else
    {
      v44 = v46;
    }
  }

  v49 = v90;
  *&v101 = __PAIR64__(v33, v20);
  *(&v101 + 2) = 1.0 / v20;
  HIDWORD(v101) = v22;
  v50 = [v14 neuronDescriptor];

  v88 = 4 * v44;
  if (v50)
  {
    v100 = 28;
    v51 = [v14 neuronDescriptor];
    [v51 a];
    DWORD2(v102) = v52;

    v53 = [v14 neuronDescriptor];
    [v53 b];
    HIDWORD(v102) = v54;

    v55 = [v14 neuronDescriptor];
    LODWORD(v103) = [v55 activationType];

    if ([v14 recomputeResultTensor])
    {
      v56 = 4 * v33 * v82;
      v57 = [(MLCDeviceGPU *)v83 gpuHeapTemporaryResourceAllocator];
      v58 = [v57 objectAtIndexedSubscript:{objc_msgSend(v14, "temporaryHeapIndex")}];
      v59 = [v58 allocateBuffer:v56];

      v49 = v90;
      v60 = [v14 normalizationRecomputeResultKernel];
      [v42 setComputePipelineState:v60];

      v61 = [v14 normalizationInputNormalized];
      [v42 setBuffer:v61 offset:0 atIndex:0];

      [v42 setBuffer:v59 offset:0 atIndex:1];
      [v42 setBytes:&v100 length:44 atIndex:2];
      v62 = [v94 beta];
      [v42 setBuffer:v62 offset:0 atIndex:3];

      v63 = [v94 gamma];
      [v42 setBuffer:v63 offset:0 atIndex:4];

      [v42 setThreadgroupMemoryLength:GPU_AlignForThreadGroupMemorySize(v88) atIndex:0];
      v98 = v22;
      v99.i64[0] = v89;
      v99.i64[1] = 1;
      v96 = v44;
      v97 = vdupq_n_s64(1uLL);
      [v42 dispatchThreadgroups:&v98 threadsPerThreadgroup:&v96];
      v93 = v59;
    }
  }

  v64 = [v14 gradientKernel];
  [v42 setComputePipelineState:v64];

  v65 = [v85 objectAtIndexedSubscript:v84];
  [v42 setBuffer:v65 offset:0 atIndex:0];

  v66 = [v49 objectAtIndexedSubscript:v84];
  [v42 setBuffer:v66 offset:0 atIndex:1];

  [v42 setBytes:&v100 length:44 atIndex:2];
  v67 = [v94 beta];
  [v42 setBuffer:v67 offset:0 atIndex:3];

  v68 = [v94 gamma];
  [v42 setBuffer:v68 offset:0 atIndex:4];

  v69 = [v14 normalizationInputNormalized];
  [v42 setBuffer:v69 offset:0 atIndex:5];

  v70 = [v14 normalizationInverseSqrtVariance];
  [v42 setBuffer:v70 offset:0 atIndex:6];

  v71 = [v14 normalizationBetaGradient];
  [v42 setBuffer:v71 offset:0 atIndex:7];

  v72 = [v14 normalizationGammaGradient];
  [v42 setBuffer:v72 offset:0 atIndex:8];

  v73 = [v14 neuronDescriptor];

  if (v73)
  {
    [v42 setBuffer:v93 offset:0 atIndex:9];
  }

  else
  {
    v74 = [v85 objectAtIndexedSubscript:v84];
    [v42 setBuffer:v74 offset:0 atIndex:9];
  }

  [v42 setThreadgroupMemoryLength:GPU_AlignForThreadGroupMemorySize(v88) atIndex:0];
  v98 = v22;
  v99.i64[0] = v89;
  v75 = 1;
  v99.i64[1] = 1;
  v96 = v44;
  v97 = vdupq_n_s64(1uLL);
  [v42 dispatchThreadgroups:&v98 threadsPerThreadgroup:&v96];
  v95[0] = v22;
  v95[1] = [v14 batchSize];
  v76 = [v14 normalizationSumBetaGammaDeltaKernel];
  v77 = [v76 maxTotalThreadsPerThreadgroup];

  if (v77 < v22)
  {
    v78 = v22 + v77 - 1;
    v22 = v77;
    v75 = v78 / v77;
  }

  v79 = [v14 normalizationSumBetaGammaDeltaKernel];
  [v42 setComputePipelineState:v79];

  v80 = [v14 normalizationBetaGradient];
  [v42 setBuffer:v80 offset:0 atIndex:0];

  v81 = [v14 normalizationGammaGradient];
  [v42 setBuffer:v81 offset:0 atIndex:1];

  [v42 setBytes:v95 length:8 atIndex:2];
  v98 = v75;
  v99 = vdupq_n_s64(1uLL);
  v96 = v22;
  v97 = v99;
  [v42 dispatchThreadgroups:&v98 threadsPerThreadgroup:&v96];
  [v42 endEncoding];
}

- (void)dispatchForwardBatchNormalizationKernel:(id)a3 sourceTensor:(id)a4 resultTensor:(id)a5 deviceIndex:(unint64_t)a6 forTraining:(BOOL)a7
{
  v92 = a7;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v87 = [v12 deviceMemory];
  v88 = v13;
  v86 = [v13 deviceMemory];
  v89 = v11;
  v14 = [v11 objectAtIndexedSubscript:a6];
  v85 = [v14 movingState];
  v15 = [v14 exportableState];
  v16 = [(MLCDeviceGPU *)self gpuCommandBufferList];
  v91 = [v16 objectAtIndexedSubscript:a6];

  v17 = [(MLCDeviceGPU *)self deviceList];
  v90 = [v17 objectAtIndexedSubscript:a6];

  v100 = 0u;
  v99 = 0u;
  v98 = 0u;
  v84 = v15;
  if (v15)
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
  v21 = [v12 descriptor];
  v22 = [v21 shape];
  v23 = 1;
  v24 = [v22 objectAtIndexedSubscript:1];
  v25 = [v24 unsignedIntegerValue];

  v83 = [v14 batchSize];
  v26 = [v12 descriptor];
  v27 = [v26 shape];
  v28 = [v27 count];

  if (v28 >= 3)
  {
    v29 = 2;
    v23 = 1;
    do
    {
      v30 = [v12 descriptor];
      v31 = [v30 shape];
      v32 = [v31 objectAtIndexedSubscript:v29];
      v23 *= [v32 unsignedIntegerValue];

      ++v29;
      v33 = [v12 descriptor];
      v34 = [v33 shape];
      v35 = [v34 count];
    }

    while (v29 < v35);
  }

  v36 = [v14 batchSize] * v23;
  LODWORD(v98) = v23;
  DWORD1(v98) = v23 * v25;
  *(&v98 + 2) = 1.0 / v36;
  HIDWORD(v98) = v25;
  LODWORD(v99) = [v14 batchSize];
  v37 = 0.0;
  if (v36 != 1)
  {
    v37 = v36 / (v36 - 1);
  }

  *(&v99 + 3) = v37;
  v38 = [v14 neuronDescriptor];

  if (v38)
  {
    v18 |= 0x10u;
    v97 = v18;
    v39 = [v14 neuronDescriptor];
    [v39 a];
    LODWORD(v100) = v40;

    v41 = [v14 neuronDescriptor];
    [v41 b];
    DWORD1(v100) = v42;

    v43 = [v14 neuronDescriptor];
    DWORD2(v100) = [v43 activationType];
  }

  v44 = [v14 batchSize];
  if (v92)
  {
    v45 = v44;
    v46 = [v14 normalizationInputNormalized];

    if (!v46)
    {
      v47 = [v90 newBufferWithLength:4 * v25 * v23 * v45 options:{+[MLCGPUHelper mtlResourceOptions](MLCGPUHelper, "mtlResourceOptions")}];
      [v14 setNormalizationInputNormalized:v47];
    }

    v48 = [v14 normalizationComputedMean];

    if (!v48)
    {
      v49 = [v90 newBufferWithLength:4 * v25 options:{+[MLCGPUHelper mtlResourceOptions](MLCGPUHelper, "mtlResourceOptions")}];
      [v14 setNormalizationComputedMean:v49];
    }

    v50 = [v14 normalizationComputedVariance];

    if (!v50)
    {
      v51 = [v90 newBufferWithLength:4 * v25 options:{+[MLCGPUHelper mtlResourceOptions](MLCGPUHelper, "mtlResourceOptions")}];
      [v14 setNormalizationComputedVariance:v51];
    }
  }

  v52 = [v91 computeCommandEncoderWithDispatchType:0];
  v53 = [v14 forwardKernel];
  v54 = [v53 maxTotalThreadsPerThreadgroup];

  if (v54 > v23)
  {
    v55 = 1 << -__clz(v23);
    if ((v23 & (v23 - 1)) != 0)
    {
      v23 = v55;
    }

    v56 = [v14 gradientKernel];
    v57 = [v56 threadExecutionWidth];

    if (v23 <= v57)
    {
      v54 = v57;
    }

    else
    {
      v54 = v23;
    }
  }

  if (v92)
  {
    v97 = v18 | 3;
    v58 = [v14 batchNormMeanKernel];
    [v52 setComputePipelineState:v58];

    v59 = v87;
    v60 = [v87 objectAtIndexedSubscript:a6];
    [v52 setBuffer:v60 offset:0 atIndex:0];

    v61 = [v14 normalizationComputedMean];
    [v52 setBuffer:v61 offset:0 atIndex:1];

    v62 = v85;
    v63 = [v85 mean];
    [v52 setBuffer:v63 offset:0 atIndex:2];

    [v52 setBytes:&v97 length:52 atIndex:3];
    [v52 setThreadgroupMemoryLength:GPU_AlignForThreadGroupMemorySize(4 * v54) atIndex:0];
    v95 = v25;
    v82 = vdupq_n_s64(1uLL);
    v96 = v82;
    v93 = v54;
    v94 = v82;
    [v52 dispatchThreadgroups:&v95 threadsPerThreadgroup:&v93];
    v64 = [v14 batchNormVarianceKernel];
    [v52 setComputePipelineState:v64];

    v65 = [v87 objectAtIndexedSubscript:a6];
    [v52 setBuffer:v65 offset:0 atIndex:0];

    v66 = [v14 normalizationComputedMean];
    [v52 setBuffer:v66 offset:0 atIndex:1];

    v67 = [v14 normalizationComputedVariance];
    [v52 setBuffer:v67 offset:0 atIndex:2];

    v68 = [v85 variance];
    [v52 setBuffer:v68 offset:0 atIndex:3];

    [v52 setBytes:&v97 length:52 atIndex:4];
    [v52 setThreadgroupMemoryLength:GPU_AlignForThreadGroupMemorySize(4 * v54) atIndex:0];
    v95 = v25;
    v96 = v82;
    v93 = v54;
    v94 = v82;
    [v52 dispatchThreadgroups:&v95 threadsPerThreadgroup:&v93];
    v69 = [v14 forwardKernel];
    [v52 setComputePipelineState:v69];
  }

  else
  {
    v70 = [v14 forwardStatisticsKernel];
    [v52 setComputePipelineState:v70];

    v59 = v87;
    v62 = v85;
  }

  v71 = [v59 objectAtIndexedSubscript:a6];
  [v52 setBuffer:v71 offset:0 atIndex:0];

  v72 = [v86 objectAtIndexedSubscript:a6];
  [v52 setBuffer:v72 offset:0 atIndex:1];

  [v52 setBytes:&v97 length:52 atIndex:2];
  if (v84)
  {
    v73 = [v84 beta];
    [v52 setBuffer:v73 offset:0 atIndex:3];

    v74 = [v84 gamma];
    [v52 setBuffer:v74 offset:0 atIndex:4];
  }

  if (v92)
  {
    v75 = [v14 normalizationComputedMean];
    [v52 setBuffer:v75 offset:0 atIndex:5];

    v76 = [v14 normalizationComputedVariance];
    [v52 setBuffer:v76 offset:0 atIndex:6];

    v77 = [v14 normalizationInputNormalized];
    v78 = v52;
    v79 = v77;
    v80 = 7;
  }

  else
  {
    v81 = [v62 mean];
    [v52 setBuffer:v81 offset:0 atIndex:5];

    v77 = [v62 variance];
    v78 = v52;
    v79 = v77;
    v80 = 6;
  }

  [v78 setBuffer:v79 offset:0 atIndex:v80];

  v95 = v25;
  v96.i64[0] = v83;
  v96.i64[1] = 1;
  v93 = v54;
  v94 = vdupq_n_s64(1uLL);
  [v52 dispatchThreadgroups:&v95 threadsPerThreadgroup:&v93];
  [v52 endEncoding];
}

- (void)dispatchGradientBatchNormalizationKernel:(id)a3 sourceGradientTensor:(id)a4 resultGradientTensor:(id)a5 deviceIndex:(unint64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [v11 deviceMemory];
  v98 = v12;
  v104 = [v12 deviceMemory];
  v99 = v10;
  v14 = [v10 objectAtIndexedSubscript:a6];
  v15 = [(MLCDeviceGPU *)self gpuCommandBufferList];
  v16 = [v15 objectAtIndexedSubscript:a6];

  v95 = self;
  v17 = [(MLCDeviceGPU *)self deviceList];
  v101 = a6;
  v100 = [v17 objectAtIndexedSubscript:a6];

  v114 = 0u;
  v113 = 0u;
  v112 = 0u;
  v111 = 12;
  [v14 varianceEpsilon];
  DWORD1(v113) = v18;
  [v14 momentum];
  DWORD2(v113) = v19;
  v20 = [v11 descriptor];
  v21 = [v20 shape];
  v22 = 1;
  v23 = [v21 objectAtIndexedSubscript:1];
  v24 = [v23 unsignedIntegerValue];

  v103 = [v14 batchSize];
  v25 = [v11 descriptor];
  v26 = [v25 shape];
  v27 = [v26 count];

  if (v27 >= 3)
  {
    v28 = 2;
    v22 = 1;
    do
    {
      v29 = [v11 descriptor];
      v30 = [v29 shape];
      v31 = [v30 objectAtIndexedSubscript:v28];
      v22 *= [v31 unsignedIntegerValue];

      ++v28;
      v32 = [v11 descriptor];
      v33 = [v32 shape];
      v34 = [v33 count];
    }

    while (v28 < v34);
  }

  v97 = v13;
  v35 = [v14 batchSize] * v22;
  v96 = v16;
  v36 = [v16 computeCommandEncoderWithDispatchType:0];
  v105 = [v14 exportableState];
  LODWORD(v112) = v22;
  DWORD1(v112) = v22 * v24;
  v94 = v22 * v24;
  *(&v112 + 2) = 1.0 / v35;
  HIDWORD(v112) = v24;
  LODWORD(v113) = [v14 batchSize];
  v102 = [v14 result];
  v93 = [v14 batchSize];
  v37 = [v14 normalizationGammaGradient];
  if (!v37)
  {
    v41 = 4 * v24;
    goto LABEL_8;
  }

  v38 = v37;
  v39 = [v14 normalizationGammaGradient];
  v40 = [v39 length];
  v41 = 4 * v24;
  v42 = 4 * v24 * [v14 batchSize];

  if (v40 < v42)
  {
LABEL_8:
    v43 = [v100 newBufferWithLength:objc_msgSend(v14 options:{"batchSize") * v41, +[MLCGPUHelper mtlResourceOptions](MLCGPUHelper, "mtlResourceOptions")}];
    v44 = [v100 newBufferWithLength:objc_msgSend(v14 options:{"batchSize") * v41, +[MLCGPUHelper mtlResourceOptions](MLCGPUHelper, "mtlResourceOptions")}];
    [v14 setNormalizationGammaGradient:v43];
    [v14 setNormalizationBetaGradient:v44];
  }

  v45 = [v14 gradientKernel];
  v46 = [v45 maxTotalThreadsPerThreadgroup];

  if (v46 > v22)
  {
    v47 = 1 << -__clz(v22);
    if ((v22 & (v22 - 1)) != 0)
    {
      v22 = v47;
    }

    v48 = [v14 gradientKernel];
    v49 = [v48 threadExecutionWidth];

    if (v22 <= v49)
    {
      v46 = v49;
    }

    else
    {
      v46 = v22;
    }
  }

  v50 = [v14 neuronDescriptor];

  if (v50)
  {
    v111 = 28;
    v51 = [v14 neuronDescriptor];
    [v51 a];
    LODWORD(v114) = v52;

    v53 = [v14 neuronDescriptor];
    [v53 b];
    DWORD1(v114) = v54;

    v55 = [v14 neuronDescriptor];
    DWORD2(v114) = [v55 activationType];

    if ([v14 recomputeResultTensor])
    {
      v56 = [(MLCDeviceGPU *)v95 gpuHeapTemporaryResourceAllocator];
      v57 = [v56 objectAtIndexedSubscript:{objc_msgSend(v14, "temporaryHeapIndex")}];
      v58 = [v57 allocateBuffer:4 * v94 * v93];

      v59 = [v14 normalizationRecomputeResultKernel];
      [v36 setComputePipelineState:v59];

      v60 = [v14 normalizationInputNormalized];
      [v36 setBuffer:v60 offset:0 atIndex:0];

      [v36 setBuffer:v58 offset:0 atIndex:1];
      [v36 setBytes:&v111 length:52 atIndex:2];
      v61 = [v105 beta];
      [v36 setBuffer:v61 offset:0 atIndex:3];

      v62 = [v105 gamma];
      [v36 setBuffer:v62 offset:0 atIndex:4];

      v109 = v24;
      v110.i64[0] = v103;
      v110.i64[1] = 1;
      v107 = v46;
      v108 = vdupq_n_s64(1uLL);
      [v36 dispatchThreadgroups:&v109 threadsPerThreadgroup:&v107];
      v102 = v58;
    }
  }

  v63 = [v14 batchNormBetaGammaDeltaKernel];
  [v36 setComputePipelineState:v63];

  v64 = [v97 objectAtIndexedSubscript:v101];
  [v36 setBuffer:v64 offset:0 atIndex:0];

  v65 = [v104 objectAtIndexedSubscript:v101];
  [v36 setBuffer:v65 offset:0 atIndex:1];

  [v36 setBytes:&v111 length:52 atIndex:2];
  v66 = [v105 beta];
  [v36 setBuffer:v66 offset:0 atIndex:3];

  v67 = [v105 gamma];
  [v36 setBuffer:v67 offset:0 atIndex:4];

  v68 = [v14 normalizationInputNormalized];
  [v36 setBuffer:v68 offset:0 atIndex:5];

  v69 = [v14 normalizationComputedVariance];
  [v36 setBuffer:v69 offset:0 atIndex:6];

  v70 = [v14 normalizationBetaGradient];
  [v36 setBuffer:v70 offset:0 atIndex:7];

  v71 = [v14 normalizationGammaGradient];
  [v36 setBuffer:v71 offset:0 atIndex:8];

  v72 = [v14 neuronDescriptor];

  if (v72)
  {
    [v36 setBuffer:v102 offset:0 atIndex:9];
  }

  else
  {
    v73 = [v97 objectAtIndexedSubscript:v101];
    [v36 setBuffer:v73 offset:0 atIndex:9];
  }

  [v36 setThreadgroupMemoryLength:GPU_AlignForThreadGroupMemorySize(4 * v46) atIndex:0];
  v109 = v24;
  v110.i64[0] = v103;
  v74 = 1;
  v110.i64[1] = 1;
  v107 = v46;
  v108 = vdupq_n_s64(1uLL);
  [v36 dispatchThreadgroups:&v109 threadsPerThreadgroup:&v107];
  v106[0] = v24;
  v106[1] = [v14 batchSize];
  v75 = [v14 normalizationSumBetaGammaDeltaKernel];
  v76 = [v75 maxTotalThreadsPerThreadgroup];

  v77 = v24;
  if (v76 < v24)
  {
    v77 = v76;
    v74 = (v24 + v76 - 1) / v76;
  }

  v78 = [v14 normalizationSumBetaGammaDeltaKernel];
  [v36 setComputePipelineState:v78];

  v79 = [v14 normalizationBetaGradient];
  [v36 setBuffer:v79 offset:0 atIndex:0];

  v80 = [v14 normalizationGammaGradient];
  [v36 setBuffer:v80 offset:0 atIndex:1];

  [v36 setBytes:v106 length:8 atIndex:2];
  v109 = v74;
  v110 = vdupq_n_s64(1uLL);
  v107 = v77;
  v108 = v110;
  [v36 dispatchThreadgroups:&v109 threadsPerThreadgroup:&v107];
  v81 = [v14 gradientKernel];
  [v36 setComputePipelineState:v81];

  v82 = [v97 objectAtIndexedSubscript:v101];
  [v36 setBuffer:v82 offset:0 atIndex:0];

  v83 = [v104 objectAtIndexedSubscript:v101];
  [v36 setBuffer:v83 offset:0 atIndex:1];

  [v36 setBytes:&v111 length:52 atIndex:2];
  v84 = [v105 beta];
  [v36 setBuffer:v84 offset:0 atIndex:3];

  v85 = [v105 gamma];
  [v36 setBuffer:v85 offset:0 atIndex:4];

  v86 = [v14 normalizationInputNormalized];
  [v36 setBuffer:v86 offset:0 atIndex:5];

  v87 = [v14 normalizationComputedVariance];
  [v36 setBuffer:v87 offset:0 atIndex:6];

  v88 = [v14 normalizationBetaGradient];
  [v36 setBuffer:v88 offset:0 atIndex:7];

  v89 = [v14 normalizationGammaGradient];
  [v36 setBuffer:v89 offset:0 atIndex:8];

  v90 = [v14 neuronDescriptor];

  if (v90)
  {
    v91 = v102;
    [v36 setBuffer:v102 offset:0 atIndex:9];
  }

  else
  {
    v92 = [v97 objectAtIndexedSubscript:v101];
    [v36 setBuffer:v92 offset:0 atIndex:9];

    v91 = v102;
  }

  v109 = v24;
  v110.i64[0] = v103;
  v110.i64[1] = 1;
  v107 = v46;
  v108 = vdupq_n_s64(1uLL);
  [v36 dispatchThreadgroups:&v109 threadsPerThreadgroup:&v107];
  [v36 endEncoding];
}

- (void)dispatchForwardGroupNormalizationKernel:(id)a3 sourceTensor:(id)a4 resultTensor:(id)a5 deviceIndex:(unint64_t)a6 forTraining:(BOOL)a7
{
  v65 = a7;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v61 = [v12 deviceMemory];
  v62 = v13;
  v60 = [v13 deviceMemory];
  v63 = v11;
  v14 = [v11 objectAtIndexedSubscript:a6];
  v15 = [v14 exportableState];
  v16 = [(MLCDeviceGPU *)self gpuCommandBufferList];
  v66 = [v16 objectAtIndexedSubscript:a6];

  v17 = [(MLCDeviceGPU *)self deviceList];
  v64 = [v17 objectAtIndexedSubscript:a6];

  v18 = [v12 descriptor];
  v19 = [v18 shape];
  v20 = 1;
  v21 = [v19 objectAtIndexedSubscript:1];
  v22 = [v21 unsignedIntegerValue];

  v59 = [v14 groupCount];
  v58 = [v14 batchSize];
  v23 = [v12 descriptor];
  v24 = [v23 shape];
  v25 = [v24 count];

  if (v25 >= 3)
  {
    v26 = 2;
    v20 = 1;
    do
    {
      v27 = [v12 descriptor];
      v28 = [v27 shape];
      v29 = [v28 objectAtIndexedSubscript:v26];
      v20 *= [v29 unsignedIntegerValue];

      ++v26;
      v30 = [v12 descriptor];
      v31 = [v30 shape];
      v32 = [v31 count];
    }

    while (v26 < v32);
  }

  v73 = 0;
  v70[0] = v65;
  v71 = v22 / [v14 groupCount];
  [v14 varianceEpsilon];
  v75 = v33;
  v72 = [v14 groupCount];
  v74 = 1.0 / (v20 * v71);
  v70[1] = v20;
  v70[2] = v20 * v22;
  v34 = [v14 batchSize];
  v35 = v15;
  if (v65)
  {
    v36 = v34;
    v37 = 4 * v22;
    v38 = [v14 batchSize];
    v39 = [v14 normalizationInputNormalized];

    if (!v39)
    {
      v40 = [v64 newBufferWithLength:v37 * v20 * v36 options:{+[MLCGPUHelper mtlResourceOptions](MLCGPUHelper, "mtlResourceOptions")}];
      [v14 setNormalizationInputNormalized:v40];
    }

    v41 = [v14 normalizationInverseSqrtVariance];

    if (!v41)
    {
      v42 = [v64 newBufferWithLength:v37 * v38 options:{+[MLCGPUHelper mtlResourceOptions](MLCGPUHelper, "mtlResourceOptions")}];
      [v14 setNormalizationInverseSqrtVariance:v42];
    }
  }

  v43 = [v14 forwardKernel];
  v44 = [v43 maxTotalThreadsPerThreadgroup];

  if (v44 > v20)
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

    v47 = [v14 forwardKernel];
    v48 = [v47 threadExecutionWidth];

    if (v46 <= v48)
    {
      v44 = v48;
    }

    else
    {
      v44 = v46;
    }
  }

  v49 = [v66 computeCommandEncoderWithDispatchType:0];
  v50 = [v14 forwardKernel];
  [v49 setComputePipelineState:v50];

  v51 = [v61 objectAtIndexedSubscript:a6];
  [v49 setBuffer:v51 offset:0 atIndex:0];

  v52 = [v60 objectAtIndexedSubscript:a6];
  [v49 setBuffer:v52 offset:0 atIndex:1];

  [v49 setBytes:v70 length:32 atIndex:2];
  v53 = [v15 beta];
  [v49 setBuffer:v53 offset:0 atIndex:3];

  v54 = [v15 gamma];
  [v49 setBuffer:v54 offset:0 atIndex:4];

  if (v65)
  {
    v55 = [v14 normalizationInputNormalized];
    [v49 setBuffer:v55 offset:0 atIndex:5];

    [v14 normalizationInverseSqrtVariance];
  }

  else
  {
    v56 = [v61 objectAtIndexedSubscript:a6];
    [v49 setBuffer:v56 offset:0 atIndex:5];

    [v61 objectAtIndexedSubscript:a6];
  }
  v57 = ;
  [v49 setBuffer:v57 offset:0 atIndex:6];

  [v49 setThreadgroupMemoryLength:GPU_AlignForThreadGroupMemorySize(4 * v44) atIndex:0];
  v69[0] = v59;
  v69[1] = v58;
  v69[2] = 1;
  v67 = v44;
  v68 = vdupq_n_s64(1uLL);
  [v49 dispatchThreadgroups:v69 threadsPerThreadgroup:&v67];
  [v49 endEncoding];
}

- (void)dispatchGradientGroupNormalizationKernel:(id)a3 sourceGradientTensor:(id)a4 resultGradientTensor:(id)a5 deviceIndex:(unint64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v69 = [v11 deviceMemory];
  v70 = v12;
  [v12 deviceMemory];
  v68 = v67 = v10;
  v13 = [v10 objectAtIndexedSubscript:a6];
  v72 = [v13 exportableState];
  v14 = [(MLCDeviceGPU *)self gpuCommandBufferList];
  v15 = [v14 objectAtIndexedSubscript:a6];

  v16 = [(MLCDeviceGPU *)self deviceList];
  v63 = a6;
  v71 = [v16 objectAtIndexedSubscript:a6];

  v17 = [v11 descriptor];
  v18 = [v17 shape];
  v19 = 1;
  v20 = [v18 objectAtIndexedSubscript:1];
  v21 = [v20 unsignedIntegerValue];

  v65 = [v13 groupCount];
  v64 = [v13 batchSize];
  v22 = [v11 descriptor];
  v23 = [v22 shape];
  v24 = [v23 count];

  if (v24 >= 3)
  {
    v25 = 2;
    v19 = 1;
    do
    {
      v26 = [v11 descriptor];
      v27 = [v26 shape];
      v28 = [v27 objectAtIndexedSubscript:v25];
      v19 *= [v28 unsignedIntegerValue];

      ++v25;
      v29 = [v11 descriptor];
      v30 = [v29 shape];
      v31 = [v30 count];
    }

    while (v25 < v31);
  }

  v32 = [v13 normalizationGammaGradient];
  if (v32)
  {
    v33 = v32;
    v34 = [v13 normalizationGammaGradient];
    v35 = [v34 length];
    v36 = 4 * v21;
    v37 = 4 * v21 * [v13 batchSize];

    if (v35 >= v37)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v36 = 4 * v21;
  }

  v38 = [v71 newBufferWithLength:objc_msgSend(v13 options:{"batchSize") * v36, +[MLCGPUHelper mtlResourceOptions](MLCGPUHelper, "mtlResourceOptions")}];
  v39 = [v71 newBufferWithLength:objc_msgSend(v13 options:{"batchSize") * v36, +[MLCGPUHelper mtlResourceOptions](MLCGPUHelper, "mtlResourceOptions")}];
  [v13 setNormalizationGammaGradient:v38];
  [v13 setNormalizationBetaGradient:v39];

LABEL_9:
  v78[0] = 1;
  v81 = v21;
  v79 = v21 / [v13 groupCount];
  [v13 varianceEpsilon];
  v83 = v40;
  v80 = [v13 groupCount];
  v82 = 1.0 / (v19 * v79);
  v78[1] = v19;
  v78[2] = v19 * v21;
  v41 = [v13 gradientKernel];
  v42 = [v41 maxTotalThreadsPerThreadgroup];

  if (v42 > v19)
  {
    v43 = 1 << -__clz(v19);
    v44 = (v19 & (v19 - 1)) != 0 ? v43 : v19;
    v45 = [v13 gradientKernel];
    v42 = [v45 threadExecutionWidth];

    if (v44 > v42)
    {
      v42 = v44;
    }
  }

  v66 = v15;
  v46 = [v15 computeCommandEncoderWithDispatchType:0];
  v47 = [v13 gradientKernel];
  [v46 setComputePipelineState:v47];

  v48 = [v69 objectAtIndexedSubscript:v63];
  [v46 setBuffer:v48 offset:0 atIndex:0];

  v49 = [v68 objectAtIndexedSubscript:v63];
  v50 = 1;
  [v46 setBuffer:v49 offset:0 atIndex:1];

  [v46 setBytes:v78 length:32 atIndex:2];
  v51 = [v72 beta];
  [v46 setBuffer:v51 offset:0 atIndex:3];

  v52 = [v72 gamma];
  [v46 setBuffer:v52 offset:0 atIndex:4];

  v53 = [v13 normalizationInputNormalized];
  [v46 setBuffer:v53 offset:0 atIndex:5];

  v54 = [v13 normalizationInverseSqrtVariance];
  [v46 setBuffer:v54 offset:0 atIndex:6];

  v55 = [v13 normalizationBetaGradient];
  [v46 setBuffer:v55 offset:0 atIndex:7];

  v56 = [v13 normalizationGammaGradient];
  [v46 setBuffer:v56 offset:0 atIndex:8];

  [v46 setThreadgroupMemoryLength:GPU_AlignForThreadGroupMemorySize(4 * v42) atIndex:0];
  v76 = v65;
  v77.i64[0] = v64;
  v77.i64[1] = 1;
  v74 = v42;
  v75 = vdupq_n_s64(1uLL);
  [v46 dispatchThreadgroups:&v76 threadsPerThreadgroup:&v74];
  v73[0] = v21;
  v73[1] = [v13 batchSize];
  v57 = [v13 normalizationSumBetaGammaDeltaKernel];
  v58 = [v57 maxTotalThreadsPerThreadgroup];

  if (v58 < v21)
  {
    v59 = v21 + v58 - 1;
    v21 = v58;
    v50 = v59 / v58;
  }

  v60 = [v13 normalizationSumBetaGammaDeltaKernel];
  [v46 setComputePipelineState:v60];

  v61 = [v13 normalizationBetaGradient];
  [v46 setBuffer:v61 offset:0 atIndex:0];

  v62 = [v13 normalizationGammaGradient];
  [v46 setBuffer:v62 offset:0 atIndex:1];

  [v46 setBytes:v73 length:8 atIndex:2];
  v76 = v50;
  v77 = vdupq_n_s64(1uLL);
  v74 = v21;
  v75 = v77;
  [v46 dispatchThreadgroups:&v76 threadsPerThreadgroup:&v74];
  [v46 endEncoding];
}

- (void)dispatchForwardSplitLayer:(id)a3 sourceTensor:(id)a4 resultTensors:(id)a5 forConcat:(BOOL)a6
{
  v108 = a3;
  v9 = a4;
  v10 = a5;
  v110 = v9;
  v109 = [v9 deviceMemory];
  if ([v10 count])
  {
    v11 = 0;
    do
    {
      v12 = [v10 objectAtIndexedSubscript:v11];
      [(MLCDeviceGPU *)self allocateResultTensor:v12];

      ++v11;
    }

    while (v11 < [v10 count]);
  }

  v13 = [v110 descriptor];
  v113 = +[MLCTensorDescriptor elementByteCount:](MLCTensorDescriptor, "elementByteCount:", [v13 dataType]);

  if ([(MLCDeviceGPU *)self numDevicesToUse])
  {
    v14 = 0;
    v114 = self;
    while (1)
    {
      v112 = [v109 objectAtIndexedSubscript:v14];
      v15 = [(MLCDeviceGPU *)self gpuCommandBufferList];
      v111 = [v15 objectAtIndexedSubscript:v14];

      if ([v10 count])
      {
        break;
      }

LABEL_57:

      ++v14;
      self = v114;
      if (v14 >= [(MLCDeviceGPU *)v114 numDevicesToUse])
      {
        goto LABEL_58;
      }
    }

    v16 = 0;
    v120 = v14;
    while (1)
    {
      v17 = [v10 objectAtIndexedSubscript:v16];
      v18 = [v17 deviceMemory];

      v117 = v18;
      v19 = [v18 objectAtIndexedSubscript:v14];
      v20 = [v10 objectAtIndexedSubscript:v16];
      v21 = v20;
      v116 = v19;
      v22 = a6 ? [v20 concatDimension] : objc_msgSend(v20, "splitDimension");
      v23 = v22;

      v24 = [v10 objectAtIndexedSubscript:v16];
      v25 = [v24 descriptor];
      v26 = [v25 shape];
      v27 = [v26 count];

      v28 = [v10 objectAtIndexedSubscript:v16];
      v29 = [v28 calculateBatchSizeToUse];

      v30 = [v10 objectAtIndexedSubscript:v16];
      v31 = v30;
      v32 = a6 ? [v30 concatOffset] : objc_msgSend(v30, "splitOffset");
      v33 = v32;
      v115 = v23;
      v118 = v27;
      v119 = v23 + 1;
      v34 = v23 + 1 != v27;

      while (1)
      {
        v35 = [v10 objectAtIndexedSubscript:v16];
        v36 = [v35 descriptor];
        v37 = [v36 shape];
        v38 = [v37 count];

        if (v34 >= v38)
        {
          break;
        }

        v39 = [v10 objectAtIndexedSubscript:v16];
        v40 = [v39 descriptor];
        v41 = [v40 shape];
        v42 = [v41 objectAtIndexedSubscript:v34];
        v43 = [v42 unsignedIntegerValue];

        v44 = [v10 objectAtIndexedSubscript:v16];
        v45 = [v44 descriptor];
        v46 = [v45 shape];
        v47 = [v46 count];

        if (v47 >= 2)
        {
          if (v16)
          {
            v48 = [v10 objectAtIndexedSubscript:v16 - 1];
            v49 = [v48 descriptor];
            v50 = [v49 shape];
            v51 = [v50 objectAtIndexedSubscript:v34];
            v33 *= [v51 unsignedIntegerValue];
          }
        }

        v29 *= v43;
        ++v34;
      }

      if (v115 || ((v29 * v113) & 3) != 0)
      {
        break;
      }

      v88 = [v111 blitCommandEncoder];
      v89 = v33 * v113;
      v90 = v116;
      [v88 copyFromBuffer:v112 sourceOffset:v89 toBuffer:v116 destinationOffset:0 size:v29 * v113];
      [v88 endEncoding];

LABEL_56:
      ++v16;
      v14 = v120;
      if (v16 >= [v10 count])
      {
        goto LABEL_57;
      }
    }

    v125 = 0u;
    v126 = 0u;
    v124 = 0u;
    v52 = [v10 objectAtIndexedSubscript:v16];
    v53 = v52;
    if (a6)
    {
      v54 = [v52 concatOffset];
    }

    else
    {
      v54 = [v52 splitOffset];
    }

    v55 = v54;
    v56 = v118;

    v57 = v119;
    if (v119 == v118)
    {
      v68 = [v10 objectAtIndexedSubscript:v16];
      v69 = [v68 descriptor];
      v70 = [v69 shape];
      v71 = [v70 objectAtIndexedSubscript:v115];
      LODWORD(v124) = [v71 unsignedIntegerValue];

      DWORD1(v124) = 1;
      if (v115)
      {
        for (i = 0; i != v115; ++i)
        {
          v73 = [v10 objectAtIndexedSubscript:v16];
          v74 = [v73 descriptor];
          v75 = [v74 shape];
          v76 = [v75 objectAtIndexedSubscript:i];
          v77 = [v76 unsignedIntegerValue];
          DWORD1(v124) *= v77;
        }
      }

      DWORD2(v124) = 1;
    }

    else
    {
      LODWORD(v124) = 1;
      while (1)
      {
        v58 = [v10 objectAtIndexedSubscript:v16];
        v59 = [v58 descriptor];
        v60 = [v59 shape];
        v61 = [v60 count];

        v62 = [v10 objectAtIndexedSubscript:v16];
        v63 = [v62 descriptor];
        v64 = [v63 shape];
        v65 = v64;
        if (v57 >= v61)
        {
          break;
        }

        v66 = [v64 objectAtIndexedSubscript:v57];
        v67 = [v66 unsignedIntegerValue];
        LODWORD(v124) = v124 * v67;

        ++v57;
      }

      v78 = [v64 objectAtIndexedSubscript:v115];
      DWORD1(v124) = [v78 unsignedIntegerValue];

      DWORD2(v124) = 1;
      v56 = v118;
      if (v115)
      {
        for (j = 0; j != v115; ++j)
        {
          v80 = [v10 objectAtIndexedSubscript:v16];
          v81 = [v80 descriptor];
          v82 = [v81 shape];
          v83 = [v82 objectAtIndexedSubscript:j];
          v84 = [v83 unsignedIntegerValue];
          DWORD2(v124) *= v84;
        }
      }
    }

    if (v119 == v56)
    {
      DWORD1(v126) = v55;
      HIDWORD(v124) = 1;
      v85 = [v110 descriptor];
      v86 = [v85 shape];
      v87 = [v86 objectAtIndexedSubscript:v115];
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
        v92 = [v110 descriptor];
        v93 = [v92 shape];
        v94 = v93;
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
        v92 = [v110 descriptor];
        v93 = [v92 shape];
        v94 = v93;
        v95 = 1;
      }

      v96 = [v93 objectAtIndexedSubscript:v95];
      DWORD1(v125) = v91 * [v96 unsignedIntegerValue];

      DWORD2(v125) = 1;
      HIDWORD(v125) = v124;
      LODWORD(v126) = DWORD1(v124) * v124;
    }

LABEL_46:
    v97 = [(MLCDeviceGPU *)v114 gpuPipelineStatesConcatFloat];
    v98 = [v97 objectAtIndexedSubscript:v120];
    v99 = [v98 maxTotalThreadsPerThreadgroup];

    v100 = v124;
    if (v99 <= v124)
    {
      v103 = SDWORD1(v124);
      v100 = v99;
      v101 = 1;
      v102 = (v99 + v124 - 1) / v99;
    }

    else
    {
      if (v99 / v124 >= SDWORD1(v124))
      {
        v101 = SDWORD1(v124);
      }

      else
      {
        v101 = v99 / v124;
      }

      v102 = 1;
      v103 = (SDWORD1(v124) + v101 - 1) / v101;
    }

    v104 = SDWORD2(v124);
    v105 = [v111 computeCommandEncoderWithDispatchType:0];
    if (v113 == 1)
    {
      [(MLCDeviceGPU *)v114 gpuPipelineStatesConcatBool];
    }

    else
    {
      [(MLCDeviceGPU *)v114 gpuPipelineStatesConcatFloat];
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

- (void)dispatchGradientSplitLayer:(id)a3 sourceGradientTensors:(id)a4 resultGradientTensor:(id)a5 forConcat:(BOOL)a6
{
  v108 = a3;
  v9 = a4;
  v120 = self;
  v111 = a5;
  if ([(MLCDeviceGPU *)self needToAllocateDeviceMemoryForTensor:?])
  {
    [(MLCDeviceGPU *)self allocateDeviceMemoryForTensor:v111, v108];
    if ([v9 count] >= 2)
    {
      if ([v9 count])
      {
        v10 = 0;
        while (1)
        {
          v11 = [v9 objectAtIndexedSubscript:v10];
          v12 = [v11 deviceMemory];

          v13 = [v12 count];
          if (!v13)
          {
            break;
          }

          if (++v10 >= [v9 count])
          {
            goto LABEL_11;
          }
        }

        if ([(MLCDeviceGPU *)v120 numDevicesToUse])
        {
          v14 = 0;
          do
          {
            [(MLCDeviceGPU *)v120 dispatchFillTensor:v111 deviceIndex:v14++];
          }

          while (v14 < [(MLCDeviceGPU *)v120 numDevicesToUse]);
        }
      }
    }
  }

LABEL_11:
  v110 = [v111 deviceMemory];
  v15 = [v111 descriptor];
  v119 = +[MLCTensorDescriptor elementByteCount:](MLCTensorDescriptor, "elementByteCount:", [v15 dataType]);

  v16 = [v9 objectAtIndexedSubscript:0];
  v17 = [v16 calculateBatchSizeToUse];

  v18 = [v9 objectAtIndexedSubscript:0];
  v19 = v18;
  if (a6)
  {
    v20 = [v18 concatDimension];
  }

  else
  {
    v20 = [v18 splitDimension];
  }

  v21 = v20;

  v22 = [(MLCDeviceGPU *)v120 isAppleSoCGPU];
  v23 = 3;
  if (v22)
  {
    v23 = 0;
  }

  if ((v23 & v119) != 0)
  {
    v122 = 0;
  }

  else if (!v21 || (v122 = 0, v21 == 1) && v17 == 1)
  {
    v122 = 1;
  }

  v24 = [v9 objectAtIndexedSubscript:0];
  v25 = [v24 descriptor];
  v26 = [v25 shape];
  v118 = [v26 count];

  v27 = v120;
  if ([(MLCDeviceGPU *)v120 numDevicesToUse])
  {
    v28 = 0;
    v117 = v21 + 1;
    while (1)
    {
      v29 = [(MLCDeviceGPU *)v27 gpuCommandBufferList];
      v30 = [v29 objectAtIndexedSubscript:v28];

      v112 = v30;
      if (v122)
      {
        v113 = [v30 blitCommandEncoder];
      }

      else
      {
        v113 = 0;
      }

      v121 = [v110 objectAtIndexedSubscript:v28];
      if ([v9 count])
      {
        break;
      }

LABEL_76:
      if (v122)
      {
        [v113 endEncoding];
      }

      ++v28;
      v27 = v120;
      if (v28 >= [(MLCDeviceGPU *)v120 numDevicesToUse])
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
          v34 = [v9 objectAtIndexedSubscript:v31];
          v35 = [v34 descriptor];
          v36 = [v35 shape];
          v37 = [v36 count];

          if (v32 >= v37)
          {
            break;
          }

          v38 = [v9 objectAtIndexedSubscript:v31 - 1];
          v39 = [v38 descriptor];
          v40 = [v39 shape];
          v41 = [v40 objectAtIndexedSubscript:v32];
          v33 *= [v41 unsignedIntegerValue];

          ++v32;
        }

        v127 += v33;
        v28 = v123;
      }

      v42 = [v9 objectAtIndexedSubscript:v31];
      v43 = [v42 deviceMemory];

      if (!a6 && ![v43 count])
      {
        goto LABEL_75;
      }

      v126 = v43;
      v125 = [v43 objectAtIndexedSubscript:v28];
      v44 = [v9 objectAtIndexedSubscript:v31];
      v45 = [v44 calculateBatchSizeToUse];

      v46 = [v9 objectAtIndexedSubscript:v31];
      v47 = [v46 descriptor];
      v48 = [v47 shape];
      v49 = [v48 count] != 1;

      while (1)
      {
        v50 = [v9 objectAtIndexedSubscript:v31];
        v51 = [v50 descriptor];
        v52 = [v51 shape];
        v53 = [v52 count];

        if (v49 >= v53)
        {
          break;
        }

        v54 = [v9 objectAtIndexedSubscript:v31];
        v55 = [v54 descriptor];
        v56 = [v55 shape];
        v57 = [v56 objectAtIndexedSubscript:v49];
        v45 *= [v57 unsignedIntegerValue];

        ++v49;
      }

      if ((v122 & 1) == 0)
      {
        break;
      }

      v58 = v125;
      [v113 copyFromBuffer:v125 sourceOffset:0 toBuffer:v121 destinationOffset:v127 * v119 size:v45 * v119];
LABEL_74:
      v43 = v126;

LABEL_75:
      if (++v31 >= [v9 count])
      {
        goto LABEL_76;
      }
    }

    v131 = 0u;
    v132 = 0u;
    v130 = 0u;
    v59 = [v9 objectAtIndexedSubscript:v31];
    v60 = v59;
    if (a6)
    {
      v61 = [v59 concatOffset];
    }

    else
    {
      v61 = [v59 splitOffset];
    }

    v115 = v61;

    v62 = v21 + 1;
    if (v117 == v118)
    {
      v63 = [v9 objectAtIndexedSubscript:v31];
      v64 = [v63 descriptor];
      v65 = [v64 shape];
      v66 = [v65 objectAtIndexedSubscript:v21];
      LODWORD(v130) = [v66 unsignedIntegerValue];

      DWORD1(v130) = 1;
      if (v21)
      {
        for (i = 0; i != v21; ++i)
        {
          v68 = [v9 objectAtIndexedSubscript:v31];
          v69 = [v68 descriptor];
          v70 = [v69 shape];
          v71 = [v70 objectAtIndexedSubscript:i];
          v72 = [v71 unsignedIntegerValue];
          DWORD1(v130) *= v72;
        }
      }

      DWORD2(v130) = 1;
    }

    else
    {
      LODWORD(v130) = 1;
      while (1)
      {
        v73 = [v9 objectAtIndexedSubscript:v31];
        v74 = [v73 descriptor];
        v75 = [v74 shape];
        v76 = [v75 count];

        v77 = [v9 objectAtIndexedSubscript:v31];
        v78 = [v77 descriptor];
        v79 = [v78 shape];
        v80 = v79;
        if (v62 >= v76)
        {
          break;
        }

        v81 = [v79 objectAtIndexedSubscript:v62];
        v82 = [v81 unsignedIntegerValue];
        LODWORD(v130) = v130 * v82;

        ++v62;
      }

      v83 = [v79 objectAtIndexedSubscript:v21];
      DWORD1(v130) = [v83 unsignedIntegerValue];

      DWORD2(v130) = 1;
      if (v21)
      {
        for (j = 0; j != v21; ++j)
        {
          v85 = [v9 objectAtIndexedSubscript:v31];
          v86 = [v85 descriptor];
          v87 = [v86 shape];
          v88 = [v87 objectAtIndexedSubscript:j];
          v89 = [v88 unsignedIntegerValue];
          DWORD2(v130) *= v89;
        }
      }
    }

    if (v117 == v118)
    {
      HIDWORD(v130) = 1;
      LODWORD(v131) = v130;
      *(&v131 + 4) = 0x100000001;
      v90 = [v111 descriptor];
      v91 = [v90 shape];
      v92 = [v91 objectAtIndexedSubscript:v21];
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
        v94 = [v111 descriptor];
        v95 = [v94 shape];
        v96 = v95;
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
        v94 = [v111 descriptor];
        v95 = [v94 shape];
        v96 = v95;
        v97 = 1;
      }

      v98 = [v95 objectAtIndexedSubscript:v97];
      LODWORD(v132) = v93 * [v98 unsignedIntegerValue];

      v28 = v123;
    }

LABEL_64:
    v99 = [(MLCDeviceGPU *)v120 gpuPipelineStatesConcatFloat];
    v100 = [v99 objectAtIndexedSubscript:v28];
    v101 = [v100 maxTotalThreadsPerThreadgroup];

    v102 = v130;
    if (v101 <= v130)
    {
      v102 = v101;
      v103 = 1;
      v114 = (v101 + v130 - 1) / v101;
      v116 = SDWORD1(v130);
    }

    else
    {
      if (v101 / v130 >= SDWORD1(v130))
      {
        v103 = SDWORD1(v130);
      }

      else
      {
        v103 = v101 / v130;
      }

      v114 = 1;
      v116 = (SDWORD1(v130) + v103 - 1) / v103;
    }

    v104 = SDWORD2(v130);
    v105 = [v112 computeCommandEncoderWithDispatchType:0];
    if (v119 == 1)
    {
      [(MLCDeviceGPU *)v120 gpuPipelineStatesConcatBool];
    }

    else
    {
      [(MLCDeviceGPU *)v120 gpuPipelineStatesConcatFloat];
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

- (void)dispatchForwardReduceLayer:(id)a3 sourceTensor:(id)a4 resultTensor:(id)a5 reductionType:(int)a6 reduceDimensions:(id)a7 forTraining:(BOOL)a8
{
  v69 = a3;
  v12 = a4;
  v13 = a5;
  v79 = a7;
  v68 = v12;
  v71 = [v12 deviceMemory];
  [(MLCDeviceGPU *)self allocateResultTensor:v13];
  v65 = v13;
  v72 = [v13 deviceMemory];
  if ([(MLCDeviceGPU *)self numDevicesToUse])
  {
    v14 = 0;
    v74 = (a6 - 5) < 2;
    v66 = self;
    while (1)
    {
      v15 = [v69 objectAtIndexedSubscript:v14];
      v16 = [(MLCDeviceGPU *)self gpuCommandBufferList];
      v76 = [v16 objectAtIndexedSubscript:v14];

      v17 = [v68 descriptor];
      v18 = [v17 shape];
      v19 = [v18 mutableCopy];

      if ([v19 count] >= 2)
      {
        v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v15, "batchSize")}];
        [v19 setObject:v20 atIndexedSubscript:0];
      }

      v21 = [v19 mutableCopy];
      v22 = objc_autoreleasePoolPush();
      if ([v79 count])
      {
        break;
      }

LABEL_47:
      objc_autoreleasePoolPop(v22);
      if (a8)
      {
        v63 = [v71 objectAtIndexedSubscript:v14];
        [v15 setSource:v63];

        if ((a6 - 3) <= 1)
        {
          v64 = [v72 objectAtIndexedSubscript:v14];
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
    v26 = v79;
    while (1)
    {
      v81 = v25;
      v27 = [v26 objectAtIndexedSubscript:v25];
      v28 = [v27 unsignedIntegerValue];

      v29 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:1];
      [v21 setObject:v29 atIndexedSubscript:v28];

      memset(&v90[4], 0, 32);
      *v90 = a6;
      v30 = [v19 objectAtIndexedSubscript:v28];
      *&v90[20] = [v30 unsignedIntegerValue];

      *&v31 = 0x100000001;
      *(&v31 + 1) = 0x100000001;
      *&v90[4] = v31;
      *&v90[28] = 0;
      *&v90[32] = 0;
      for (i = v28; i < [v19 count]; ++i)
      {
        v33 = [v19 objectAtIndexedSubscript:i];
        v34 = [v33 unsignedIntegerValue];
        *&v90[4] *= v34;

        v35 = [v21 objectAtIndexedSubscript:i];
        v36 = [v35 unsignedIntegerValue];
        *&v90[12] *= v36;

        if (i > v28)
        {
          v37 = [v19 objectAtIndexedSubscript:i];
          v38 = [v37 unsignedIntegerValue];
          *&v90[8] *= v38;

          v39 = [v21 objectAtIndexedSubscript:i];
          v40 = [v39 unsignedIntegerValue];
          *&v90[16] *= v40;
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
        v45 = [v71 objectAtIndexedSubscript:v73];
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

      if ([v79 count] - 1 == v81)
      {
        [v72 objectAtIndexedSubscript:v73];
      }

      else
      {
        MPSGetTemporaryBufferFromCommandBufferCache();
      }
      v77 = ;

      v49 = [v78 forwardKernel];
      v50 = [v49 maxTotalThreadsPerThreadgroup];

      v51 = [v19 objectAtIndexedSubscript:v28];
      v52 = [v51 unsignedIntegerValue];

      v87 = *v90;
      v88 = *&v90[16];
      v89 = *&v90[32];
      if (v52 <= 16 * v50)
      {
        v55 = 0;
        v53 = 1;
        v54 = v76;
      }

      else
      {
        v53 = (v50 + v52 - 1) / v50;
        v90[32] = 1;
        *&v90[12] *= v53;
        *&v90[28] = v53 * v47;
        v54 = v76;
        v55 = MPSGetTemporaryBufferFromCommandBufferCache();
      }

      v56 = [v54 computeCommandEncoderWithDispatchType:0];
      v57 = [v78 forwardKernel];
      [v56 setComputePipelineState:v57];

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
      v59 = 4 * v50;
      if ((a6 & 0xFFFFFFFE) == 8)
      {
        v59 = v50;
      }

      v60 = v59 << v74;
      [v56 setThreadgroupMemoryLength:GPU_AlignForThreadGroupMemorySize(v59 << v74) atIndex:0];
      v84 = v43;
      v85 = v42;
      v86 = v53;
      v82 = v50;
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
        v82 = v50;
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
      v26 = v79;
      v23 = v80;
      v24 = v77;
      if (v81 + 1 >= [v79 count])
      {

        self = v66;
        v14 = v73;
        v15 = v78;
        v22 = v70;
        goto LABEL_47;
      }
    }

    v41 = 0;
    v42 = 1;
    v43 = 1;
    while (v41 >= v28)
    {
      if (v41 > v28)
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

- (void)dispatchGradientReduceLayer:(id)a3 sourceGradientTensor:(id)a4 resultGradientTensor:(id)a5 reductionType:(int)a6 reduceDimensions:(id)a7
{
  v85 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a7;
  v84 = v11;
  v87 = [v11 deviceMemory];
  [(MLCDeviceGPU *)self allocateResultTensor:v12];
  v88 = [v12 deviceMemory];
  if (![(MLCDeviceGPU *)self numDevicesToUse])
  {
    goto LABEL_54;
  }

  v14 = 0;
  v83 = self;
  v94 = v13;
  do
  {
    v96 = [v85 objectAtIndexedSubscript:{v14, v83}];
    v15 = [(MLCDeviceGPU *)self gpuCommandBufferList];
    v89 = v14;
    v91 = [v15 objectAtIndexedSubscript:v14];

    v16 = objc_autoreleasePoolPush();
    v17 = [v84 descriptor];
    v18 = [v17 shape];
    v19 = [v18 mutableCopy];

    v20 = [v84 descriptor];
    v21 = [v20 shape];
    v22 = [v21 mutableCopy];

    if (![v13 count])
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
      v25 = [v13 objectAtIndexedSubscript:v24];
      v26 = [v25 unsignedIntegerValue];

      if (v26 || ([v12 descriptor], v27 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v27, "shape"), v28 = objc_claimAutoreleasedReturnValue(), v29 = objc_msgSend(v28, "count"), v28, v27, v29))
      {
        v30 = [v12 descriptor];
        v31 = [v30 shape];
        v32 = [v31 objectAtIndexedSubscript:v26];
        v33 = [v32 copy];
        [v22 setObject:v33 atIndexedSubscript:v26];
      }

      else
      {
        v30 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v96, "batchSize")}];
        [v22 setObject:v30 atIndexedSubscript:0];
      }

      v104 = 0u;
      v103 = 0u;
      v102 = a6;
      v34 = [v22 objectAtIndexedSubscript:v26];
      LODWORD(v104) = [v34 unsignedIntegerValue];

      *&v35 = 0x100000001;
      *(&v35 + 1) = 0x100000001;
      v103 = v35;
      for (i = v26; i < [v22 count]; ++i)
      {
        v37 = [v22 objectAtIndexedSubscript:i];
        v38 = [v37 unsignedIntegerValue];
        LODWORD(v103) = v103 * v38;

        v39 = [v19 objectAtIndexedSubscript:i];
        v40 = [v39 unsignedIntegerValue];
        DWORD2(v103) *= v40;

        if (i > v26)
        {
          v41 = [v22 objectAtIndexedSubscript:i];
          v42 = [v41 unsignedIntegerValue];
          DWORD1(v103) *= v42;

          v43 = [v19 objectAtIndexedSubscript:i];
          v44 = [v43 unsignedIntegerValue];
          HIDWORD(v103) *= v44;
        }
      }

      if ([v22 count])
      {
        v45 = 0;
        v46 = 1;
        v47 = 1;
        while (v45 >= v26)
        {
          if (v45 > v26)
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
      v49 = [v12 descriptor];
      v50 = [v49 shape];
      v51 = [v50 count];

      if (v51 >= 2)
      {
        v52 = 1;
        do
        {
          v53 = [v12 descriptor];
          v54 = [v53 shape];
          v55 = [v54 objectAtIndexedSubscript:v52];
          [v55 unsignedIntegerValue];

          ++v52;
          v56 = [v12 descriptor];
          v57 = [v56 shape];
          v58 = [v57 count];
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

      v63 = [v96 source];

      v61 = [v87 objectAtIndexedSubscript:v89];

      v64 = [v96 result];

      if (v64)
      {
        [v96 result];
        v92 = v98 = v92;
        v95 = v63;
        v62 = v96;
        v59 = 0;
        v60 = v93;
        goto LABEL_29;
      }

      v95 = v63;
      v98 = v61;
      v62 = v96;
      v59 = 0;
      v60 = v93;
LABEL_30:
      if ([v94 count] - 1 == v59)
      {
        v65 = [v88 objectAtIndexedSubscript:v89];
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

      v70 = [v62 gradientKernel];
      v71 = [v70 maxTotalThreadsPerThreadgroup];

      v72 = [v22 objectAtIndexedSubscript:v26];
      v73 = [v72 unsignedIntegerValue];

      if (v46 == 1 && v47 == 1)
      {
        v74 = v73 > 32 * v71;
        if (v73 > 32 * v71)
        {
          v46 = 1;
          v47 = (v71 + v73 - 1) / v71;
        }
      }

      else
      {
        v74 = 0;
      }

      BYTE12(v104) = v74;
      v75 = [v91 computeCommandEncoderWithDispatchType:0];
      v76 = [v96 gradientKernel];
      [v75 setComputePipelineState:v76];

      [v75 setBuffer:v98 offset:0 atIndex:0];
      [v75 setBuffer:v69 offset:0 atIndex:1];
      [v75 setBuffer:v95 offset:0 atIndex:2];
      v77 = [v96 result];

      if (v77 && v92)
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
      [v75 setBytes:&v102 length:36 atIndex:4];
      v101[0] = v47;
      v101[1] = v46;
      v101[2] = 1;
      v99 = v71;
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
      v13 = v94;
      v82 = [v94 count];
      v23 = v69;
    }

    while (v97 + 1 < v82);

    self = v83;
    v16 = v86;
LABEL_53:

    objc_autoreleasePoolPop(v16);
    v14 = v89 + 1;
  }

  while (v89 + 1 < [(MLCDeviceGPU *)self numDevicesToUse]);
LABEL_54:
}

- (void)dispatchForwardSelectLayer:(id)a3 conditionTensor:(id)a4 sourceTensors:(id)a5 resultTensor:(id)a6 forTraining:(BOOL)a7
{
  v73 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  [(MLCDeviceGPU *)self allocateResultTensor:v13];
  v70 = [v13 deviceMemory];
  v14 = [v13 descriptor];
  v15 = [v14 shape];
  v16 = [v15 count];

  v72 = v11;
  v17 = [v11 descriptor];
  v18 = [v17 newShapeWithCount:v16];

  v19 = [v12 objectAtIndexedSubscript:0];
  v20 = [v19 descriptor];
  v75 = [v20 newShapeWithCount:v16];

  v71 = v12;
  v21 = [v12 objectAtIndexedSubscript:1];
  v22 = [v21 descriptor];
  v74 = [v22 newShapeWithCount:v16];

  v65 = v13;
  v23 = [v13 descriptor];
  v24 = [v23 shape];

  if ([(MLCDeviceGPU *)self numDevicesToUse])
  {
    v25 = 0;
    v66 = vdupq_n_s64(8uLL);
    v68 = v18;
    v69 = self;
    v67 = v24;
    while (1)
    {
      v26 = [v73 objectAtIndexedSubscript:v25];
      v27 = [(MLCDeviceGPU *)self gpuCommandBufferList];
      v28 = [v27 objectAtIndexedSubscript:v25];

      v86 = 0;
      memset_pattern16(__b, &unk_238D45D70, 0x40uLL);
      if ([v24 count] == 1)
      {
        break;
      }

      v30 = [v24 count];
      v31 = [v18 objectAtIndexedSubscript:0];
      v32 = [v31 unsignedIntegerValue];
      if (v30 == 2)
      {
        v33 = 0;
        v29 = 1;
        goto LABEL_10;
      }

      __b[0] = v32;

      v34 = [v75 objectAtIndexedSubscript:0];
      __b[4] = [v34 unsignedIntegerValue];

      v35 = [v74 objectAtIndexedSubscript:0];
      __b[8] = [v35 unsignedIntegerValue];

      v36 = [v24 objectAtIndexedSubscript:0];
      v82 = [v36 unsignedIntegerValue];

      v37 = [v24 count];
      v38 = [v18 objectAtIndexedSubscript:1];
      __b[1] = [v38 unsignedIntegerValue];

      v39 = [v75 objectAtIndexedSubscript:1];
      __b[5] = [v39 unsignedIntegerValue];

      v40 = [v74 objectAtIndexedSubscript:1];
      __b[9] = [v40 unsignedIntegerValue];

      v41 = [v24 objectAtIndexedSubscript:1];
      v83 = [v41 unsignedIntegerValue];

      v31 = [v18 objectAtIndexedSubscript:2];
      v32 = [v31 unsignedIntegerValue];
      if (v37 != 3)
      {
        v33 = 2;
        v29 = 3;
LABEL_10:
        __b[2] = v32;

        v42 = [v75 objectAtIndexedSubscript:v33];
        __b[6] = [v42 unsignedIntegerValue];

        v43 = [v74 objectAtIndexedSubscript:v33];
        __b[10] = [v43 unsignedIntegerValue];

        v44 = [v24 objectAtIndexedSubscript:v33];
        v84 = [v44 unsignedIntegerValue];

LABEL_11:
        v31 = [v18 objectAtIndexedSubscript:v29];
        v32 = [v31 unsignedIntegerValue];
        goto LABEL_12;
      }

      v29 = 2;
LABEL_12:
      __b[3] = v32;

      v45 = [v75 objectAtIndexedSubscript:v29];
      __b[7] = [v45 unsignedIntegerValue];

      v46 = [v74 objectAtIndexedSubscript:v29];
      __b[11] = [v46 unsignedIntegerValue];

      v47 = [v24 objectAtIndexedSubscript:v29];
      v85 = [v47 unsignedIntegerValue];

      v48 = __clz(__rbit32(v82)) << 16;
      if (((v82 - 1) & v82) != 0)
      {
        v49 = -65536;
      }

      else
      {
        v49 = v48;
      }

      v86 = v49 & 0xFFFF0000 | v82;
      v50 = [v26 forwardKernel];
      v51 = [v50 maxTotalThreadsPerThreadgroup];

      if (v51 >> 6 >= v82 * v83)
      {
        v52 = v82 * v83;
      }

      else
      {
        v52 = v51 >> 6;
      }

      v77 = (v85 + 7) >> 3;
      v76 = (v84 + 7) >> 3;
      v53 = (v52 + v82 * v83 - 1) / v52;
      v54 = [v28 computeCommandEncoderWithDispatchType:0];
      v55 = [v26 forwardKernel];
      [v54 setComputePipelineState:v55];

      v56 = [v72 deviceMemory];
      v57 = [v56 objectAtIndexedSubscript:v25];
      [v54 setBuffer:v57 offset:0 atIndex:0];

      v58 = [v71 objectAtIndexedSubscript:0];
      v59 = [v58 deviceMemory];
      v60 = [v59 objectAtIndexedSubscript:v25];
      [v54 setBuffer:v60 offset:0 atIndex:1];

      v61 = [v71 objectAtIndexedSubscript:1];
      v62 = [v61 deviceMemory];
      v63 = [v62 objectAtIndexedSubscript:v25];
      [v54 setBuffer:v63 offset:0 atIndex:2];

      v64 = [v70 objectAtIndexedSubscript:v25];
      [v54 setBuffer:v64 offset:0 atIndex:3];

      [v54 setBytes:__b length:68 atIndex:4];
      v80[0] = v77;
      v80[1] = v76;
      v80[2] = v53;
      v78 = v66;
      v79 = v52;
      v24 = v67;
      [v54 dispatchThreadgroups:v80 threadsPerThreadgroup:&v78];
      [v54 endEncoding];

      ++v25;
      self = v69;
      v18 = v68;
      if (v25 >= [(MLCDeviceGPU *)v69 numDevicesToUse])
      {
        goto LABEL_19;
      }
    }

    v29 = 0;
    goto LABEL_11;
  }

LABEL_19:
}

- (void)dispatchGradientSelectLayer:(id)a3 conditionTensor:(id)a4 sourceGradientTensor:(id)a5 resultGradientTensors:(id)a6
{
  v141[1] = *MEMORY[0x277D85DE8];
  v113 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [v12 objectAtIndexedSubscript:0];
  [(MLCDeviceGPU *)self allocateResultTensor:v13];

  v14 = [v12 objectAtIndexedSubscript:1];
  [(MLCDeviceGPU *)self allocateResultTensor:v14];

  v15 = [v11 descriptor];
  v16 = [v15 shape];
  v17 = [v16 count];

  v112 = [v10 deviceMemory];
  v111 = [v11 deviceMemory];
  v18 = [v12 objectAtIndexedSubscript:0];
  v122 = [v18 deviceMemory];

  v19 = [v12 objectAtIndexedSubscript:1];
  v120 = [v19 deviceMemory];

  v108 = v10;
  v20 = [v10 descriptor];
  v21 = [v20 newShapeWithCount:v17];

  v22 = [v12 objectAtIndexedSubscript:0];
  v23 = [v22 descriptor];
  v115 = [v23 newShapeWithCount:v17];

  v107 = v12;
  v24 = [v12 objectAtIndexedSubscript:1];
  v25 = [v24 descriptor];
  v114 = [v25 newShapeWithCount:v17];

  v26 = [v11 descriptor];
  v27 = [v26 shape];

  if (![(MLCDeviceGPU *)self numDevicesToUse])
  {
    goto LABEL_56;
  }

  v28 = 0;
  v109 = vdupq_n_s64(8uLL);
  v117 = v21;
  v121 = self;
  v110 = v27;
  do
  {
    v29 = [v113 objectAtIndexedSubscript:v28];
    v30 = [(MLCDeviceGPU *)self gpuCommandBufferList];
    v31 = [v30 objectAtIndexedSubscript:v28];

    v32 = [v27 count];
    v33 = [v27 objectAtIndexedSubscript:0];
    v34 = [v33 unsignedIntegerValue];
    v118 = v29;
    if (v32 == 1)
    {

      v35 = v117;
    }

    else
    {
      if (v34 <= [v29 batchSize])
      {
        v36 = [v27 objectAtIndexedSubscript:0];
        v32 = [v36 unsignedIntegerValue];
      }

      else
      {
        v32 = [v29 batchSize];
      }

      v35 = v117;

      v34 = 1;
      if ([v27 count] >= 2)
      {
        v37 = 1;
        do
        {
          v38 = [v27 objectAtIndexedSubscript:v37];
          v34 *= [v38 unsignedIntegerValue];

          ++v37;
        }

        while (v37 < [v27 count]);
      }
    }

    v119 = [MEMORY[0x277CD7258] matrixDescriptorWithRows:v32 columns:v34 rowBytes:4 * v34 dataType:268435488];
    v137 = 0;
    memset_pattern16(__b, &unk_238D45D70, 0x40uLL);
    if ([v27 count] == 1)
    {
      v39 = 0;
LABEL_19:
      v41 = [v35 objectAtIndexedSubscript:v39];
      v42 = [v41 unsignedIntegerValue];
      goto LABEL_20;
    }

    v40 = [v27 count];
    v41 = [v35 objectAtIndexedSubscript:0];
    v42 = [v41 unsignedIntegerValue];
    if (v40 == 2)
    {
      v43 = 0;
      v39 = 1;
LABEL_18:
      __b[2] = v42;

      v52 = [v115 objectAtIndexedSubscript:v43];
      DWORD2(v134) = [v52 unsignedIntegerValue];

      v53 = [v114 objectAtIndexedSubscript:v43];
      DWORD2(v135) = [v53 unsignedIntegerValue];

      v54 = [v27 objectAtIndexedSubscript:v43];
      DWORD2(v136) = [v54 unsignedIntegerValue];

      goto LABEL_19;
    }

    __b[0] = v42;

    v44 = [v115 objectAtIndexedSubscript:0];
    LODWORD(v134) = [v44 unsignedIntegerValue];

    v45 = [v114 objectAtIndexedSubscript:0];
    LODWORD(v135) = [v45 unsignedIntegerValue];

    v46 = [v27 objectAtIndexedSubscript:0];
    LODWORD(v136) = [v46 unsignedIntegerValue];

    v47 = [v27 count];
    v48 = [v35 objectAtIndexedSubscript:1];
    __b[1] = [v48 unsignedIntegerValue];

    v49 = [v115 objectAtIndexedSubscript:1];
    DWORD1(v134) = [v49 unsignedIntegerValue];

    v50 = [v114 objectAtIndexedSubscript:1];
    DWORD1(v135) = [v50 unsignedIntegerValue];

    v51 = [v27 objectAtIndexedSubscript:1];
    DWORD1(v136) = [v51 unsignedIntegerValue];

    v41 = [v35 objectAtIndexedSubscript:2];
    v42 = [v41 unsignedIntegerValue];
    if (v47 != 3)
    {
      v43 = 2;
      v39 = 3;
      goto LABEL_18;
    }

    v39 = 2;
LABEL_20:
    __b[3] = v42;

    v55 = [v115 objectAtIndexedSubscript:v39];
    HIDWORD(v134) = [v55 unsignedIntegerValue];

    v56 = [v114 objectAtIndexedSubscript:v39];
    HIDWORD(v135) = [v56 unsignedIntegerValue];

    v57 = [v27 objectAtIndexedSubscript:v39];
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

      v74 = [*v61 data];
      v75 = *v60;
      *v60 = v74;
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
      v76 = [v122 objectAtIndexedSubscript:v28];
      v75 = v140;
      v140 = v76;
      goto LABEL_35;
    }

    v77 = [v120 objectAtIndexedSubscript:v28];
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
    v81 = [v118 gradientKernel];
    v82 = [v81 maxTotalThreadsPerThreadgroup];

    if (v82 >> 6 >= v136 * SDWORD1(v136))
    {
      v83 = v136 * SDWORD1(v136);
    }

    else
    {
      v83 = v82 >> 6;
    }

    v116 = (SHIDWORD(v136) + 7) >> 3;
    v84 = (SDWORD2(v136) + 7) >> 3;
    v85 = (v83 + v136 * SDWORD1(v136) - 1) / v83;
    v86 = [v31 computeCommandEncoderWithDispatchType:0];
    v87 = [v118 gradientKernel];
    [v86 setComputePipelineState:v87];

    v88 = [v112 objectAtIndexedSubscript:v28];
    [v86 setBuffer:v88 offset:0 atIndex:0];

    v89 = [v111 objectAtIndexedSubscript:v28];
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
        v96 = [(MLCDeviceGPU *)v121 gpuPipelineStatesArithmeticReduceGradientAny];
        v97 = [v96 objectAtIndexedSubscript:v28];
        v98 = [v97 maxTotalThreadsPerThreadgroup];

        v99 = [v31 computeCommandEncoderWithDispatchType:0];
        v100 = [(MLCDeviceGPU *)v121 gpuPipelineStatesArithmeticReduceGradientAny];
        v101 = [v100 objectAtIndexedSubscript:v28];
        [v99 setComputePipelineState:v101];

        [v99 setBuffer:*v93 offset:0 atIndex:0];
        if (v94)
        {
          v102 = v122;
        }

        else
        {
          v102 = v120;
        }

        v103 = [v102 objectAtIndexedSubscript:v28];
        [v99 setBuffer:v103 offset:0 atIndex:1];

        [v99 setThreadgroupMemoryLength:GPU_AlignForThreadGroupMemorySize(4 * v98) atIndex:0];
        [v99 setBytes:v125 length:96 atIndex:2];
        v129 = vdupq_n_s64(1uLL);
        v130 = 1;
        v123 = v98;
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
    v27 = v110;
    do
    {
    }

    while (v105 != -1);

    ++v28;
    self = v121;
  }

  while (v28 < [(MLCDeviceGPU *)v121 numDevicesToUse]);
LABEL_56:

  v106 = *MEMORY[0x277D85DE8];
}

- (void)dispatchForwardScatterLayer:(id)a3 sourceTensors:(id)a4 resultTensor:(id)a5 forTraining:(BOOL)a6
{
  v102 = a3;
  v9 = a4;
  v10 = a5;
  [(MLCDeviceGPU *)self allocateResultTensor:v10];
  v11 = [v9 objectAtIndexedSubscript:2];
  v98 = [v11 deviceMemory];

  v12 = [v9 objectAtIndexedSubscript:1];
  v101 = [v12 deviceMemory];

  v13 = [v9 objectAtIndexedSubscript:0];
  v100 = [v13 deviceMemory];

  v108 = [v10 deviceMemory];
  v14 = [v9 objectAtIndexedSubscript:2];

  if ([(MLCDeviceGPU *)self numDevicesToUse])
  {
    v15 = 0;
    v99 = self;
    v107 = v14;
    while (1)
    {
      v16 = [v102 objectAtIndexedSubscript:v15];
      v17 = [(MLCDeviceGPU *)self gpuCommandBufferList];
      v18 = [v17 objectAtIndexedSubscript:v15];

      v19 = [v18 computeCommandEncoderWithDispatchType:0];
      v109 = v15;
      v110 = v16;
      v105 = v19;
      v106 = v18;
      if (v14 == v10)
      {
        v26 = [(MLCDeviceGPU *)self gpuPipelineStatesMemFillFloat];
        v27 = [v26 objectAtIndexedSubscript:v15];
        v104 = [v27 maxTotalThreadsPerThreadgroup];

        v111.i64[0] = 0;
        v28 = [v9 objectAtIndexedSubscript:2];
        v29 = [v28 descriptor];
        v30 = [v29 shape];
        if ([v30 count] == 1)
        {
          v31 = 1;
        }

        else
        {
          v31 = [v16 batchSize];
        }

        for (i = 1; ; ++i)
        {
          v46 = [v9 objectAtIndexedSubscript:2];
          v47 = [v46 descriptor];
          v48 = [v47 shape];
          v49 = [v48 count];

          if (i >= v49)
          {
            break;
          }

          v50 = [v9 objectAtIndexedSubscript:2];
          v51 = [v50 descriptor];
          v52 = [v51 shape];
          v53 = [v52 objectAtIndexedSubscript:i];
          v31 *= [v53 unsignedIntegerValue];
        }

        v111.i32[0] = 0;
        v111.i32[1] = v31;
        v54 = [(MLCDeviceGPU *)self gpuPipelineStatesMemFillFloat];
        v55 = [v54 objectAtIndexedSubscript:v109];
        [v19 setComputePipelineState:v55];

        v43 = [v108 objectAtIndexedSubscript:v109];
        [v19 setBuffer:v43 offset:0 atIndex:0];
        [v19 setBytes:&v111 length:8 atIndex:1];
        *&v113[0] = (v104 + ((v31 + 3) >> 2) - 1) / v104;
        *(v113 + 8) = vdupq_n_s64(1uLL);
        v116 = v104;
        v117 = *(v113 + 8);
        [v19 dispatchThreadgroups:v113 threadsPerThreadgroup:&v116];
      }

      else
      {
        v20 = [(MLCDeviceGPU *)self gpuPipelineStatesMemCopy];
        v21 = [v20 objectAtIndexedSubscript:v15];
        v103 = [v21 maxTotalThreadsPerThreadgroup];

        v111.i32[0] = 0;
        v22 = [v9 objectAtIndexedSubscript:0];
        v23 = [v22 descriptor];
        v24 = [v23 shape];
        if ([v24 count] == 1)
        {
          v25 = 1;
        }

        else
        {
          v25 = [v16 batchSize];
        }

        for (j = 1; ; ++j)
        {
          v33 = [v9 objectAtIndexedSubscript:2];
          v34 = [v33 descriptor];
          v35 = [v34 shape];
          v36 = [v35 count];

          if (j >= v36)
          {
            break;
          }

          v37 = [v9 objectAtIndexedSubscript:2];
          v38 = [v37 descriptor];
          v39 = [v38 shape];
          v40 = [v39 objectAtIndexedSubscript:j];
          v25 *= [v40 unsignedIntegerValue];
        }

        v111.i32[0] = 4 * v25;
        v41 = [(MLCDeviceGPU *)self gpuPipelineStatesMemCopy];
        v42 = [v41 objectAtIndexedSubscript:v109];
        [v19 setComputePipelineState:v42];

        v43 = [v98 objectAtIndexedSubscript:v109];
        v44 = [v108 objectAtIndexedSubscript:v109];
        [v19 setBuffer:v43 offset:0 atIndex:0];
        [v19 setBuffer:v44 offset:0 atIndex:1];
        [v19 setBytes:&v111 length:4 atIndex:2];
        *&v113[0] = (v103 + (v25 & 0x3FFFFFFF) - 1) / v103;
        *(v113 + 8) = vdupq_n_s64(1uLL);
        v116 = v103;
        v117 = *(v113 + 8);
        [v19 dispatchThreadgroups:v113 threadsPerThreadgroup:&v116];
      }

      v114 = 0u;
      v115 = 0u;
      memset(v113, 0, sizeof(v113));
      v56 = [v9 objectAtIndexedSubscript:1];
      v57 = [v56 descriptor];
      v58 = [v57 shape];
      DWORD1(v115) = [v58 count];

      LODWORD(v115) = [v110 scatterGatherDimension];
      DWORD2(v115) = [v110 scatterReduceType] == 1;
      v59 = [v9 objectAtIndexedSubscript:1];
      v60 = [v59 descriptor];
      v61 = [v60 shape];
      v62 = [v61 count];

      if (v62 >= 1)
      {
        v63 = v113 + v62;
        do
        {
          v64 = v62 - 1;
          v65 = 1;
          v66 = [v9 objectAtIndexedSubscript:1];
          v67 = [v66 descriptor];
          v68 = [v67 shape];
          v69 = [v68 objectAtIndexedSubscript:v62 - 1];
          *(v63 - 1) = [v69 unsignedIntegerValue];

          v70 = [v9 objectAtIndexedSubscript:1];
          v71 = [v70 descriptor];
          v72 = [v71 shape];
          if (v62 != [v72 count])
          {
            v65 = v63[4] * *v63;
          }

          v63[3] = v65;

          --v63;
          --v62;
        }

        while ((v64 + 1) > 1);
      }

      v73 = [v10 descriptor];
      v74 = [v73 shape];
      v75 = [v74 count];

      if (v75 >= 1)
      {
        v76 = &v114 + v75;
        do
        {
          v77 = v75 - 1;
          v78 = [v10 descriptor];
          v79 = [v78 shape];
          v80 = [v79 objectAtIndexedSubscript:v75 - 1];
          *(v76 - 5) = [v80 unsignedIntegerValue];

          v81 = [v10 descriptor];
          v82 = [v81 shape];
          if (v75 == [v82 count])
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
      v87 = [v110 forwardKernel];
      v88 = [v87 maxTotalThreadsPerThreadgroup];

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
      v92 = v88 >> 6;
      if (v89 < v88 >> 6)
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

      if (v107 == v10)
      {
        [v110 gradientKernel];
      }

      else
      {
        [v110 forwardKernel];
      }
      v94 = ;
      [v105 setComputePipelineState:v94];

      v95 = [v101 objectAtIndexedSubscript:v109];
      [v105 setBuffer:v95 offset:0 atIndex:0];

      v96 = [v100 objectAtIndexedSubscript:v109];
      [v105 setBuffer:v96 offset:0 atIndex:1];

      v97 = [v108 objectAtIndexedSubscript:v109];
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
      self = v99;
      v14 = v107;
      if (v109 + 1 >= [(MLCDeviceGPU *)v99 numDevicesToUse])
      {
        goto LABEL_54;
      }
    }

    v89 = SLODWORD(v113[0]);
    goto LABEL_43;
  }

LABEL_54:
}

- (void)dispatchForwardGatherLayer:(id)a3 sourceTensors:(id)a4 resultTensor:(id)a5 forTraining:(BOOL)a6
{
  v64 = a3;
  v9 = a4;
  v10 = a5;
  [(MLCDeviceGPU *)self allocateResultTensor:v10];
  v11 = [v9 objectAtIndexedSubscript:0];
  v63 = [v11 deviceMemory];

  v12 = [v9 objectAtIndexedSubscript:1];
  v62 = [v12 deviceMemory];

  v61 = [v10 deviceMemory];
  if ([(MLCDeviceGPU *)self numDevicesToUse])
  {
    v13 = 0;
    v59 = vdupq_n_s64(8uLL);
    v60 = self;
    while (1)
    {
      v14 = [v64 objectAtIndexedSubscript:v13];
      v15 = [(MLCDeviceGPU *)self gpuCommandBufferList];
      v66 = [v15 objectAtIndexedSubscript:v13];

      v71 = 0u;
      memset(v72, 0, 28);
      memset(v70, 0, sizeof(v70));
      v16 = [v9 objectAtIndexedSubscript:1];
      v17 = [v16 descriptor];
      v18 = [v17 shape];
      v72[5] = [v18 count];

      v65 = v14;
      v72[4] = [v14 scatterGatherDimension];
      v19 = [v9 objectAtIndexedSubscript:0];
      v20 = [v19 descriptor];
      v21 = [v20 shape];
      v22 = [v21 count];

      if (v22 >= 1)
      {
        v23 = v70 + v22;
        do
        {
          v24 = v22 - 1;
          v25 = [v9 objectAtIndexedSubscript:0];
          v26 = [v25 descriptor];
          v27 = [v26 shape];
          v28 = [v27 objectAtIndexedSubscript:v22 - 1];
          *(v23 - 1) = [v28 unsignedIntegerValue];

          v29 = [v9 objectAtIndexedSubscript:0];
          v30 = [v29 descriptor];
          v31 = [v30 shape];
          if (v22 == [v31 count])
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

      v33 = [v10 descriptor];
      v34 = [v33 shape];
      v35 = [v34 count];

      if (v35 >= 1)
      {
        v36 = &v72[v35];
        do
        {
          v37 = v35 - 1;
          v38 = [v10 descriptor];
          v39 = [v38 shape];
          v40 = [v39 objectAtIndexedSubscript:v35 - 1];
          *(v36 - 5) = [v40 unsignedIntegerValue];

          v41 = [v10 descriptor];
          v42 = [v41 shape];
          if (v35 == [v42 count])
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
      v47 = [v65 forwardKernel];
      v48 = [v47 maxTotalThreadsPerThreadgroup];

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
      v52 = v48 >> 6;
      if (v49 < v48 >> 6)
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

      v56 = [v62 objectAtIndexedSubscript:v13];
      [v54 setBuffer:v56 offset:0 atIndex:0];

      v57 = [v63 objectAtIndexedSubscript:v13];
      [v54 setBuffer:v57 offset:0 atIndex:1];

      v58 = [v61 objectAtIndexedSubscript:v13];
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
      self = v60;
      if (v13 >= [(MLCDeviceGPU *)v60 numDevicesToUse])
      {
        goto LABEL_40;
      }
    }

    v49 = v71;
    goto LABEL_29;
  }

LABEL_40:
}

- (void)dispatchForwardEmbeddingLayer:(id)a3 weight:(id)a4 sourceTensor:(id)a5 resultTensor:(id)a6
{
  v60 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v59 = v11;
  v13 = [v11 deviceMemory];
  [(MLCDeviceGPU *)self allocateResultTensor:v12];
  v54 = v12;
  v58 = [v12 deviceMemory];
  if ([(MLCDeviceGPU *)self numDevicesToUse])
  {
    v14 = 0;
    v55 = vdupq_n_s64(1uLL);
    v56 = v13;
    v57 = self;
    do
    {
      v15 = [v60 objectAtIndexedSubscript:v14];
      v16 = [(MLCDeviceGPU *)self gpuCommandBufferList];
      v62 = [v16 objectAtIndexedSubscript:v14];

      v68 = 0;
      v66 = 0u;
      v67 = 0u;
      v17 = [v15 embeddingParams];

      if (v17)
      {
        v18 = [v15 embeddingParams];
        v19 = [v18 objectAtIndexedSubscript:0];
        [v19 floatValue];
        LODWORD(v67) = v20;

        v21 = [v15 embeddingParams];
        v22 = [v21 objectAtIndexedSubscript:1];
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
      v25 = [v10 descriptor];
      v26 = [v25 shape];
      v27 = [v10 descriptor];
      v28 = [v26 objectAtIndexedSubscript:{objc_msgSend(v27, "dimensionCount") - 1}];
      v29 = v10;
      v30 = [v28 unsignedIntegerValue];

      v31 = [v59 descriptor];
      v32 = [v31 tensorAllocationSizeInBytes];
      v33 = [v59 descriptor];
      v34 = v32 / +[MLCTensorDescriptor elementByteCount:](MLCTensorDescriptor, "elementByteCount:", [v33 dataType]);

      *&v66 = __PAIR64__(v34, v30);
      v10 = v29;
      context = objc_autoreleasePoolPush();
      [v15 batchSize];
      v35 = [v62 computeCommandEncoderWithDispatchType:0];
      v13 = v56;
      self = v57;
      if (v17)
      {
        v36 = [(MLCDeviceGPU *)v57 gpuPipelineStatesEmbeddingRenormalizeWeights];
        v37 = [v36 objectAtIndexedSubscript:v14];
        v38 = [v37 maxTotalThreadsPerThreadgroup];

        v39 = [(MLCDeviceGPU *)v57 gpuPipelineStatesEmbeddingRenormalizeWeights];
        v40 = [v39 objectAtIndexedSubscript:v14];
        [v35 setComputePipelineState:v40];

        v41 = [v56 objectAtIndexedSubscript:v14];
        [v35 setBuffer:v41 offset:0 atIndex:0];

        v42 = [v10 deviceMemory];
        v43 = [v42 objectAtIndexedSubscript:v14];
        [v35 setBuffer:v43 offset:0 atIndex:2];

        [v35 setBytes:&v66 length:40 atIndex:3];
        [v35 setThreadgroupMemoryLength:GPU_AlignForThreadGroupMemorySize(4 * v38) atIndex:0];
        v64 = vdupq_n_s64(1uLL);
        *v65 = v64;
        *&v65[16] = 1;
        v63 = v38;
        [v35 dispatchThreadgroups:v65 threadsPerThreadgroup:&v63];
      }

      v44 = [(MLCDeviceGPU *)v57 gpuPipelineStatesEmbeddingForward];
      v45 = [v44 objectAtIndexedSubscript:v14];
      v46 = [v45 maxTotalThreadsPerThreadgroup];

      v47 = [(MLCDeviceGPU *)v57 gpuPipelineStatesEmbeddingForward];
      v48 = [v47 objectAtIndexedSubscript:v14];
      [v35 setComputePipelineState:v48];

      v49 = [v56 objectAtIndexedSubscript:v14];
      [v35 setBuffer:v49 offset:0 atIndex:0];

      v50 = [v58 objectAtIndexedSubscript:v14];
      [v35 setBuffer:v50 offset:0 atIndex:1];

      v51 = [v10 deviceMemory];
      v52 = [v51 objectAtIndexedSubscript:v14];
      [v35 setBuffer:v52 offset:0 atIndex:2];

      [v35 setBytes:&v66 length:40 atIndex:3];
      *v65 = v34;
      *&v65[8] = v55;
      v63 = v46;
      v64 = v55;
      [v35 dispatchThreadgroups:v65 threadsPerThreadgroup:&v63];
      [v35 endEncoding];

      objc_autoreleasePoolPop(context);
      v53 = [v56 objectAtIndexedSubscript:v14];
      [v15 setSource:v53];

      ++v14;
    }

    while (v14 < [(MLCDeviceGPU *)v57 numDevicesToUse]);
  }
}

- (void)dispatchGradientEmbeddingLayer:(id)a3 sourceGradientTensor:(id)a4
{
  v32 = a3;
  v31 = a4;
  v30 = [v31 deviceMemory];
  if ([(MLCDeviceGPU *)self numDevicesToUse])
  {
    v6 = 0;
    v29 = vdupq_n_s64(1uLL);
    do
    {
      v7 = [v32 objectAtIndexedSubscript:{v6, *&v29}];
      v8 = [(MLCDeviceGPU *)self gpuCommandBufferList];
      v9 = [v8 objectAtIndexedSubscript:v6];

      v39 = 0;
      memset(v38, 0, sizeof(v38));
      v10 = [v31 descriptor];
      v11 = [v10 shape];
      v12 = [v31 descriptor];
      v13 = [v11 objectAtIndexedSubscript:{objc_msgSend(v12, "dimensionCount") - 1}];
      v14 = [v13 unsignedIntegerValue];

      v15 = [v7 source];
      v16 = [v7 gradientForWeights];
      LODWORD(v38[0]) = v14;
      DWORD1(v38[0]) = [v15 length] >> 3;
      DWORD2(v38[0]) = [v16 length] >> 2;
      v17 = [v7 paddingIndex];
      HIDWORD(v38[0]) = v17 != 0;

      if (HIDWORD(v38[0]))
      {
        v18 = [v7 paddingIndex];
        v39 = [v18 longLongValue];
      }

      context = objc_autoreleasePoolPush();
      v19 = [(MLCDeviceGPU *)self gpuPipelineStatesEmbeddingGradient];
      v20 = [v19 objectAtIndexedSubscript:v6];
      v21 = [v20 maxTotalThreadsPerThreadgroup];

      v22 = [v9 computeCommandEncoderWithDispatchType:0];
      v23 = [(MLCDeviceGPU *)self gpuPipelineStatesEmbeddingGradient];
      [v23 objectAtIndexedSubscript:v6];
      v24 = self;
      v26 = v25 = v9;
      [v22 setComputePipelineState:v26];

      v27 = [v7 source];
      [v22 setBuffer:v27 offset:0 atIndex:0];

      v28 = [v30 objectAtIndexedSubscript:v6];
      [v22 setBuffer:v28 offset:0 atIndex:1];

      [v22 setBuffer:v16 offset:0 atIndex:2];
      [v22 setBytes:v38 length:40 atIndex:3];
      v35 = v29;
      v36 = v29;
      v37 = 1;
      v34 = v21;
      [v22 dispatchThreadgroups:&v36 threadsPerThreadgroup:&v34];
      [v22 endEncoding];

      objc_autoreleasePoolPop(context);
      self = v24;

      ++v6;
    }

    while (v6 < [(MLCDeviceGPU *)v24 numDevicesToUse]);
  }
}

- (void)dispatchForwardSliceLayer:(id)a3 sourceTensor:(id)a4 resultTensor:(id)a5 forTraining:(BOOL)a6
{
  v82 = *MEMORY[0x277D85DE8];
  v65 = a3;
  v9 = a4;
  v10 = a5;
  v64 = [v9 deviceMemory];
  [(MLCDeviceGPU *)self allocateResultTensor:v10];
  v63 = [v10 deviceMemory];
  if ([(MLCDeviceGPU *)self numDevicesToUse])
  {
    v11 = 0;
    v61 = &v75;
    v62 = self;
    do
    {
      v12 = [v65 objectAtIndexedSubscript:{v11, v61}];
      v13 = [(MLCDeviceGPU *)self gpuCommandBufferList];
      v68 = v11;
      v67 = [v13 objectAtIndexedSubscript:v11];

      context = objc_autoreleasePoolPush();
      v77 = 0;
      v75 = 0u;
      memset(v76, 0, sizeof(v76));
      memset(v74, 0, sizeof(v74));
      v14 = [v10 descriptor];
      v15 = [v14 shape];
      v69 = [v15 count];

      v16 = [v10 descriptor];
      v17 = [v16 shape];
      v18 = [v17 count];

      if (v18)
      {
        v19 = 0;
        v20 = v76 - v69;
        do
        {
          v21 = [v12 stride];
          v22 = [v21 objectAtIndexedSubscript:v19];
          *(v20 - 12) = [v22 unsignedIntegerValue];

          v23 = [v12 begin];
          v24 = [v23 objectAtIndexedSubscript:v19];
          *(v20 - 8) = [v24 unsignedIntegerValue];

          v25 = [v9 descriptor];
          v26 = [v25 shape];
          v27 = [v26 objectAtIndexedSubscript:v19];
          *(v20 - 4) = [v27 unsignedIntegerValue];

          v28 = [v9 descriptor];
          v29 = [v28 stride];
          v30 = [v29 objectAtIndexedSubscript:v19];
          *v20 = [v30 unsignedIntegerValue] >> 2;

          v20[4] = 0;
          v31 = [v10 descriptor];
          v32 = [v31 shape];
          v33 = [v32 objectAtIndexedSubscript:v19];
          v20[8] = [v33 unsignedIntegerValue];

          v34 = [v10 descriptor];
          v35 = [v34 stride];
          v36 = [v35 objectAtIndexedSubscript:v19];
          v20[12] = [v36 unsignedIntegerValue] >> 2;

          ++v19;
          v37 = [v10 descriptor];
          v38 = [v37 shape];
          v39 = [v38 count];

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
      v43 = [v12 forwardKernel];
      v44 = [v43 maxTotalThreadsPerThreadgroup];

      v45 = 0;
      v80 = xmmword_238D45D80;
      v81 = unk_238D45D90;
      v78 = xmmword_238D45D80;
      v79 = unk_238D45D90;
      do
      {
        v46 = *(&v76[1] + v45 + 3);
        v47 = &v80 + 8 * v45;
        if (v44 >= v46)
        {
          *(v47 + 3) = v46;
          v48 = v46;
        }

        else if (v46 % v44)
        {
          *(v47 + 3) = 1;
          v48 = 1;
        }

        else
        {
          *(v47 + 3) = v44;
          v48 = v44;
        }

        v79.i64[v45 + 1] = (v46 + v48 - 1) / v48;
        v49 = v45 + 3;
        --v45;
        v44 /= v48;
      }

      while (v49 > 1);
      v50 = [v10 descriptor];
      v51 = [v50 shape];
      v52 = [v51 count];

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
      v57 = [v12 forwardKernel];
      [v56 setComputePipelineState:v57];

      v58 = [v64 objectAtIndexedSubscript:v68];
      [v56 setBuffer:v58 offset:0 atIndex:0];

      v59 = [v63 objectAtIndexedSubscript:v68];
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
      self = v62;
    }

    while (v68 + 1 < [(MLCDeviceGPU *)v62 numDevicesToUse]);
  }

  v60 = *MEMORY[0x277D85DE8];
}

- (void)dispatchForwardFullyConnectedLayer:(id)a3 sourceTensor:(id)a4 resultTensor:(id)a5 forTraining:(BOOL)a6
{
  v96 = a6;
  v101 = a3;
  v9 = a4;
  v10 = a5;
  v100 = [v9 deviceMemory];
  [(MLCDeviceGPU *)self allocateResultTensor:v10];
  v97 = [v10 deviceMemory];
  if ([(MLCDeviceGPU *)self numDevicesToUse])
  {
    v11 = 0;
    v107 = 1;
    v108 = v10;
    v98 = v9;
    v106 = self;
    do
    {
      v105 = objc_autoreleasePoolPush();
      v12 = [v101 objectAtIndexedSubscript:v11];
      v13 = [(MLCDeviceGPU *)self gpuCommandBufferList];
      v111 = v11;
      v112 = [v13 objectAtIndexedSubscript:v11];

      v14 = [v9 descriptor];
      v15 = [v14 shape];
      v16 = [v15 count];

      v17 = [v9 descriptor];
      v18 = [v17 shape];
      v19 = [v18 objectAtIndexedSubscript:v16 - 1];
      v20 = [v19 unsignedIntegerValue];

      v21 = [v10 descriptor];
      v22 = [v21 shape];
      v23 = [v22 objectAtIndexedSubscript:v16 - 1];
      v24 = [v23 unsignedIntegerValue];

      v25 = [v12 batchSize];
      if (v16 < 3)
      {
        goto LABEL_8;
      }

      v26 = [v9 descriptor];
      v27 = [v26 shape];
      v28 = [v27 objectAtIndexedSubscript:1];
      v25 *= [v28 unsignedIntegerValue];

      if (v16 == 3)
      {
        goto LABEL_8;
      }

      v29 = [v9 descriptor];
      v30 = [v29 shape];
      v31 = [v30 objectAtIndexedSubscript:2];
      v25 *= [v31 unsignedIntegerValue];

      if (v16 != 4)
      {
LABEL_8:
        v99 = 0;
      }

      else
      {
        v109 = [v9 descriptor];
        v32 = [v109 shape];
        v33 = [v32 objectAtIndexedSubscript:2];
        v34 = [v33 unsignedIntegerValue];
        v35 = [v9 descriptor];
        v36 = [v35 shape];
        v37 = [v36 objectAtIndexedSubscript:3];
        v38 = [v37 unsignedIntegerValue] * v34;

        if (v38 == 1)
        {
          v25 = [v12 batchSize];
          v9 = v98;
          v39 = [v98 descriptor];
          v40 = [v39 shape];
          v99 = 1;
          v41 = [v40 objectAtIndexedSubscript:1];
          v20 = [v41 unsignedIntegerValue];

          v42 = [v108 descriptor];
          v43 = [v42 shape];
          v44 = [v43 objectAtIndexedSubscript:1];
          v24 = [v44 unsignedIntegerValue];
        }

        else
        {
          v99 = 0;
          v9 = v98;
        }
      }

      if ([v12 totalElementsPerChannel] != v25)
      {
        v45 = [(MLCDeviceGPU *)v106 deviceList];
        v46 = [v45 objectAtIndexedSubscript:v111];

        v47 = [objc_alloc(MEMORY[0x277CD75E0]) initWithDevice:v46 transposeLeft:0 transposeRight:1 resultRows:v25 resultColumns:v24 interiorColumns:v20 alpha:1.0 beta:0.0];
        v48 = [v12 forwardStatisticsKernel];
        [v48 setObject:v47 atIndexedSubscript:0];

        v49 = [MEMORY[0x277CBEBF8] mutableCopy];
        [v12 setGradientStatisticsKernel:v49];

        [v12 setTotalElementsPerChannel:v25];
      }

      v50 = v24;
      v51 = MEMORY[0x277CD7258];
      v52 = [v9 descriptor];
      v53 = [v52 elementByteCount] * v20;
      v54 = [v9 descriptor];
      v55 = [v51 matrixDescriptorWithRows:v25 columns:v20 rowBytes:v53 dataType:{GPU_GetDataType(objc_msgSend(v54, "dataType"))}];

      v56 = v20;
      v57 = objc_alloc(MEMORY[0x277CD7250]);
      v58 = v25;
      v59 = v111;
      v60 = [v100 objectAtIndexedSubscript:v111];
      v104 = v55;
      v110 = [v57 initWithBuffer:v60 descriptor:v55];

      v61 = MEMORY[0x277CD7258];
      v62 = [v108 descriptor];
      v63 = [v62 elementByteCount] * v50;
      v64 = [v108 descriptor];
      v65 = [v61 matrixDescriptorWithRows:v58 columns:v50 rowBytes:v63 dataType:{GPU_GetDataType(objc_msgSend(v64, "dataType"))}];

      v66 = objc_alloc(MEMORY[0x277CD7250]);
      v67 = [v97 objectAtIndexedSubscript:v111];
      v68 = [v66 initWithBuffer:v67 descriptor:v65];

      v69 = [v12 weightsDataType];
      v70 = [MEMORY[0x277CD7258] matrixDescriptorWithRows:v50 columns:v56 rowBytes:+[MLCTensorDescriptor elementByteCount:](MLCTensorDescriptor dataType:{"elementByteCount:", v69) * v56, GPU_GetDataType(v69)}];
      v71 = objc_alloc(MEMORY[0x277CD7250]);
      v72 = [v12 exportableState];
      v73 = [v72 objectAtIndexedSubscript:0];
      v102 = v70;
      v74 = [v71 initWithBuffer:v73 descriptor:v70];

      v75 = [v12 forwardStatisticsKernel];
      v76 = [v75 objectAtIndexedSubscript:0];

      v103 = v68;
      v77 = v68;
      v10 = v108;
      [v76 encodeToCommandBuffer:v112 leftMatrix:v110 rightMatrix:v74 resultMatrix:v77];
      v78 = [v12 exportableState];
      v79 = [v78 count];

      if (v79 >= 2)
      {
        context = objc_autoreleasePoolPush();
        v80 = [v108 descriptor];
        v81 = [v80 shape];
        [v12 setSource0Shape:v81];

        v82 = [&unk_284BA6080 mutableCopy];
        v83 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v50];
        v84 = v65;
        if (v99)
        {
          [v82 setObject:v83 atIndexedSubscript:1];
        }

        else
        {
          v85 = [v108 descriptor];
          v86 = [v85 shape];
          [v82 setObject:v83 atIndexedSubscript:{objc_msgSend(v86, "count") - 1}];
        }

        v87 = [v82 copy];
        [v12 setSource1Shape:v87];

        v88 = [v12 source1Shape];
        v89 = [MLCTensor tensorWithShape:v88];

        v90 = v107;
        do
        {
          v91 = [v89 deviceMemory];
          v92 = [v12 exportableState];
          v93 = [v92 objectAtIndexedSubscript:1];
          [v91 addObject:v93];

          --v90;
        }

        while (v90);
        v10 = v108;
        v59 = v111;
        [(MLCDeviceGPU *)v106 dispatchForwardArithmeticBinaryKernel:v101 sourceTensor:v108 sourceSecondaryTensor:v89 resultTensor:v108 deviceIndex:v111];

        objc_autoreleasePoolPop(context);
        v65 = v84;
      }

      self = v106;
      if (v96)
      {
        v94 = [v100 objectAtIndexedSubscript:v59];
        [v12 setSource:v94];
      }

      objc_autoreleasePoolPop(v105);
      v11 = v59 + 1;
      ++v107;
      v9 = v98;
    }

    while (v11 < [(MLCDeviceGPU *)v106 numDevicesToUse]);
  }
}

- (void)dispatchGradientFullyConnectedLayer:(id)a3 sourceGradientTensor:(id)a4 resultGradientTensor:(id)a5 resultStateIsTemporary:(BOOL)a6
{
  v113 = a6;
  v130[2] = *MEMORY[0x277D85DE8];
  v110 = a3;
  v9 = a4;
  v10 = self;
  v11 = v9;
  v12 = a5;
  v114 = [v11 deviceMemory];
  [(MLCDeviceGPU *)self allocateResultTensor:v12];
  v125 = v12;
  v109 = [v12 deviceMemory];
  if ([(MLCDeviceGPU *)self numDevicesToUse])
  {
    v13 = 0;
    v111 = v11;
    v124 = self;
    do
    {
      context = objc_autoreleasePoolPush();
      v14 = [v110 objectAtIndexedSubscript:v13];
      v15 = [(MLCDeviceGPU *)v10 gpuCommandBufferList];
      v123 = [v15 objectAtIndexedSubscript:v13];

      v16 = [v11 descriptor];
      v17 = [v16 shape];
      v18 = [v17 count];

      v19 = [v11 descriptor];
      v20 = [v19 shape];
      v21 = [v20 objectAtIndexedSubscript:v18 - 1];
      v128 = [v21 unsignedIntegerValue];

      v22 = [v125 descriptor];
      v23 = [v22 shape];
      v24 = [v23 objectAtIndexedSubscript:v18 - 1];
      v121 = [v24 unsignedIntegerValue];

      v25 = [v14 batchSize];
      if (v18 < 3)
      {
        goto LABEL_9;
      }

      v26 = [v11 descriptor];
      v27 = [v26 shape];
      v28 = [v27 objectAtIndexedSubscript:1];
      v25 *= [v28 unsignedIntegerValue];

      if (v18 == 3)
      {
        goto LABEL_9;
      }

      v29 = [v11 descriptor];
      v30 = [v29 shape];
      v31 = [v30 objectAtIndexedSubscript:2];
      v25 *= [v31 unsignedIntegerValue];

      if (v18 != 4)
      {
LABEL_9:
        v40 = v124;
      }

      else
      {
        v126 = [v11 descriptor];
        v118 = [v126 shape];
        v32 = [v118 objectAtIndexedSubscript:2];
        v33 = [v32 unsignedIntegerValue];
        v34 = [v11 descriptor];
        v35 = [v34 shape];
        v36 = [v35 objectAtIndexedSubscript:3];
        v37 = v25;
        v38 = [v36 unsignedIntegerValue] * v33;

        v11 = v111;
        v39 = v38 == 1;
        v25 = v37;
        v40 = v124;
        if (v39)
        {
          v25 = [v14 batchSize];
          v41 = [v111 descriptor];
          v42 = [v41 shape];
          v43 = [v42 objectAtIndexedSubscript:1];
          v128 = [v43 unsignedIntegerValue];

          v44 = [v125 descriptor];
          v45 = [v44 shape];
          v46 = [v45 objectAtIndexedSubscript:1];
          v121 = [v46 unsignedIntegerValue];
        }
      }

      v47 = [v14 gradientStatisticsKernel];
      v48 = [v47 count];

      if (!v48)
      {
        v49 = [(MLCDeviceGPU *)v40 deviceList];
        v50 = [v49 objectAtIndexedSubscript:v13];

        v51 = [objc_alloc(MEMORY[0x277CD75E0]) initWithDevice:v50 transposeLeft:0 transposeRight:0 resultRows:v25 resultColumns:v121 interiorColumns:v128 alpha:1.0 beta:0.0];
        v52 = [v14 gradientStatisticsKernel];
        [v52 setObject:v51 atIndexedSubscript:0];

        v53 = [objc_alloc(MEMORY[0x277CD75E0]) initWithDevice:v50 transposeLeft:1 transposeRight:0 resultRows:v128 resultColumns:v121 interiorColumns:v25 alpha:1.0 beta:0.0];
        v54 = [v14 gradientStatisticsKernel];
        [v54 setObject:v53 atIndexedSubscript:1];
      }

      v55 = MEMORY[0x277CD7258];
      v56 = [v11 descriptor];
      v115 = 4 * v128;
      v57 = [v55 matrixDescriptorWithRows:v25 columns:v128 rowBytes:4 * v128 dataType:{GPU_GetDataType(objc_msgSend(v56, "dataType"))}];

      v58 = objc_alloc(MEMORY[0x277CD7250]);
      v59 = [v114 objectAtIndexedSubscript:v13];
      v119 = v57;
      v60 = [v58 initWithBuffer:v59 descriptor:v57];

      v61 = MEMORY[0x277CD7258];
      v62 = [v125 descriptor];
      v112 = v25;
      v63 = [v61 matrixDescriptorWithRows:v25 columns:v121 rowBytes:4 * v121 dataType:{GPU_GetDataType(objc_msgSend(v62, "dataType"))}];

      v64 = objc_alloc(MEMORY[0x277CD7250]);
      v117 = v13;
      v65 = [v109 objectAtIndexedSubscript:v13];
      v127 = v63;
      v66 = [v64 initWithBuffer:v65 descriptor:v63];

      v67 = MEMORY[0x277CD7258];
      v68 = v14;
      v69 = [v125 descriptor];
      v70 = [v67 matrixDescriptorWithRows:v128 columns:v121 rowBytes:4 * v121 dataType:{GPU_GetDataType(objc_msgSend(v69, "dataType"))}];

      v71 = objc_alloc(MEMORY[0x277CD7250]);
      v72 = [v14 exportableState];
      v73 = [v72 objectAtIndexedSubscript:0];
      v74 = [v71 initWithBuffer:v73 descriptor:v70];

      v75 = v123;
      if (([v68 computeWeightsAndBiasOnly] & 1) == 0)
      {
        v76 = [v68 gradientStatisticsKernel];
        v77 = [v76 objectAtIndexedSubscript:0];
        [v77 encodeToCommandBuffer:v123 leftMatrix:v60 rightMatrix:v74 resultMatrix:v66];
      }

      v122 = v66;
      v78 = objc_alloc(MEMORY[0x277CD7250]);
      v79 = [v68 source];
      v80 = [v78 initWithBuffer:v79 descriptor:v127];

      v116 = v74;
      if (v113)
      {
        v81 = [MEMORY[0x277CD72B0] temporaryMatrixWithCommandBuffer:v123 matrixDescriptor:v70];
        v10 = v124;
        v82 = v117;
      }

      else
      {
        v83 = [v68 gradientState];
        v84 = [v83 count];

        v10 = v124;
        v82 = v117;
        if (v84)
        {
          v85 = [v68 gradientState];
          v81 = [v85 objectAtIndexedSubscript:0];
        }

        else
        {
          v86 = [(MLCDeviceGPU *)v124 deviceList];
          v85 = [v86 objectAtIndexedSubscript:v117];

          v87 = [v74 data];
          v88 = [v85 newBufferWithLength:objc_msgSend(v87 options:{"length"), +[MLCGPUHelper mtlResourceOptions](MLCGPUHelper, "mtlResourceOptions")}];

          v81 = [objc_alloc(MEMORY[0x277CD7250]) initWithBuffer:v88 descriptor:v70];
        }
      }

      v89 = [v68 gradientStatisticsKernel];
      v90 = [v89 objectAtIndexedSubscript:1];
      [v90 encodeToCommandBuffer:v123 leftMatrix:v60 rightMatrix:v80 resultMatrix:v81];

      v91 = [v68 exportableState];
      v92 = [v91 count];

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
        v94 = [v125 descriptor];
        v95 = [v93 matrixDescriptorWithRows:1 columns:v128 rowBytes:v115 dataType:{GPU_GetDataType(objc_msgSend(v94, "dataType"))}];

        v108 = v60;
        if (v113)
        {
          v96 = [MEMORY[0x277CD72B0] temporaryMatrixWithCommandBuffer:v123 matrixDescriptor:v95];
        }

        else
        {
          v97 = [v68 gradientState];
          v98 = [v97 count];

          if (v98 < 2)
          {
            v100 = [(MLCDeviceGPU *)v124 deviceList];
            v101 = [v100 objectAtIndexedSubscript:v82];

            v102 = [v101 newBufferWithLength:v115 options:{+[MLCGPUHelper mtlResourceOptions](MLCGPUHelper, "mtlResourceOptions")}];
            v96 = [objc_alloc(MEMORY[0x277CD7250]) initWithBuffer:v102 descriptor:v95];
          }

          else
          {
            v99 = [v68 gradientState];
            v96 = [v99 objectAtIndexedSubscript:1];
          }
        }

        v103 = [v114 objectAtIndexedSubscript:v82];
        v104 = [v96 data];
        [(MLCDeviceGPU *)v124 reduceAcrossBatchForSource:v103 result:v104 batchSize:v112 batchStride:v128 numEntries:v128 deviceIndex:v82 commandBuffer:v123];

        v130[0] = v81;
        v130[1] = v96;
        v105 = [MEMORY[0x277CBEA60] arrayWithObjects:v130 count:2];
        v106 = [v105 copy];
        [v68 setGradientState:v106];

        v10 = v124;
        v75 = v123;
        v60 = v108;
      }

      objc_autoreleasePoolPop(context);
      v13 = v82 + 1;
      v11 = v111;
    }

    while (v13 < [(MLCDeviceGPU *)v10 numDevicesToUse]);
  }

  v107 = *MEMORY[0x277D85DE8];
}

- (void)dispatchForwardLayer:(id)a3 sourceTensor:(id)a4 secondaryTensor:(id)a5 tertiaryTensor:(id)a6 resultTensor:(id)a7 resultStateIsTemporary:(BOOL)a8 forTraining:(BOOL)a9
{
  v25 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = [v14 deviceMemory];
  v24 = [v15 deviceMemory];
  [(MLCDeviceGPU *)self allocateResultTensor:v17];
  if ([(MLCDeviceGPU *)self numDevicesToUse])
  {
    for (i = 0; i < [(MLCDeviceGPU *)self numDevicesToUse]; ++i)
    {
      v20 = [v25 objectAtIndexedSubscript:i];
      v21 = v20;
      if (a9)
      {
        [v20 setGradientState:0];
        v22 = [v18 objectAtIndexedSubscript:i];
        [v21 setSource:v22];

        if (v16)
        {
          [(MLCDeviceGPU *)self dispatchForwardArithmeticTertiaryKernel:v25 sourceTensor:v14 sourceSecondaryTensor:v15 sourceTertiaryTensor:v16 resultTensor:v17 deviceIndex:i];
        }

        else
        {
          if (!v15)
          {
            goto LABEL_13;
          }

          [(MLCDeviceGPU *)self dispatchForwardArithmeticBinaryKernel:v25 sourceTensor:v14 sourceSecondaryTensor:v15 resultTensor:v17 deviceIndex:i];
        }

        v23 = [v24 objectAtIndexedSubscript:i];
        [v21 setSecondarySource:v23];
      }

      else if (v16)
      {
        [(MLCDeviceGPU *)self dispatchForwardArithmeticTertiaryKernel:v25 sourceTensor:v14 sourceSecondaryTensor:v15 sourceTertiaryTensor:v16 resultTensor:v17 deviceIndex:i];
      }

      else
      {
        if (!v15)
        {
LABEL_13:
          [(MLCDeviceGPU *)self dispatchForwardArithmeticUnaryKernel:v25 sourceTensor:v14 resultTensor:v17 deviceIndex:i];
          goto LABEL_14;
        }

        [(MLCDeviceGPU *)self dispatchForwardArithmeticBinaryKernel:v25 sourceTensor:v14 sourceSecondaryTensor:v15 resultTensor:v17 deviceIndex:i];
      }

LABEL_14:
    }
  }
}

- (void)dispatchForwardMatMulLayer:(id)a3 sourceTensors:(id)a4 resultTensor:(id)a5
{
  v95[3] = *MEMORY[0x277D85DE8];
  v85 = a3;
  v8 = a4;
  v9 = a5;
  context = objc_autoreleasePoolPush();
  v10 = [v8 objectAtIndexedSubscript:0];
  v11 = [v10 descriptor];
  DataType = GPU_GetDataType([v11 dataType]);

  v12 = [v8 objectAtIndexedSubscript:0];
  v13 = [v12 deviceMemory];

  v84 = v8;
  v14 = [v8 objectAtIndexedSubscript:1];
  v15 = [v14 deviceMemory];

  [(MLCDeviceGPU *)self allocateResultTensor:v9];
  v79 = v9;
  v83 = [v9 deviceMemory];
  if ([(MLCDeviceGPU *)self numDevicesToUse])
  {
    v16 = 0;
    v81 = v13;
    v82 = self;
    v80 = v15;
    do
    {
      v17 = [v85 objectAtIndexedSubscript:v16];
      v18 = [(MLCDeviceGPU *)self gpuCommandBufferList];
      v90 = [v18 objectAtIndexedSubscript:v16];

      v87 = [v17 matmulKernel];
      v89 = [v17 shapes];
      v19 = [v13 objectAtIndexedSubscript:v16];
      v95[0] = v19;
      v20 = [v15 objectAtIndexedSubscript:v16];
      v95[1] = v20;
      v86 = v16;
      v21 = [v83 objectAtIndexedSubscript:v16];
      v95[2] = v21;
      v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v95 count:3];
      v92 = [v22 copy];

      v23 = [v17 transposeLeft];
      v24 = [v23 objectAtIndexedSubscript:0];
      v94[0] = v24;
      v25 = [v17 transposeRight];
      v26 = [v25 objectAtIndexedSubscript:0];
      v94[1] = v26;
      v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v94 count:2];
      v88 = [v27 copy];

      v28 = [v17 forwardMatricesOrNDArrays];
      for (i = 0; i != 3; ++i)
      {
        v30 = [v17 matrixDescs];
        v31 = [v30 objectAtIndexedSubscript:i];

        v32 = [v31 matrices];
        if (v32 > [v17 batchSize])
        {
          v33 = [MEMORY[0x277CD7258] matrixDescriptorWithRows:objc_msgSend(v31 columns:"rows") matrices:objc_msgSend(v31 rowBytes:"columns") matrixBytes:objc_msgSend(v17 dataType:{"batchSize"), objc_msgSend(v31, "rowBytes"), objc_msgSend(v31, "matrixBytes"), DataType}];
          v34 = [v17 matrixDescs];
          [v34 setObject:v33 atIndexedSubscript:i];
        }
      }

      v35 = [v17 broadcastingFlags];
      v36 = [v35 objectAtIndexedSubscript:0];
      if ([v36 unsignedIntegerValue])
      {
      }

      else
      {
        v37 = [v17 broadcastingFlags];
        v38 = [v37 objectAtIndexedSubscript:1];
        v39 = [v38 unsignedIntegerValue];

        if (!v39)
        {
          for (j = 0; j != 3; ++j)
          {
            if ([v28 count] <= j)
            {
              goto LABEL_27;
            }

            v68 = [v28 objectAtIndexedSubscript:j];
            v69 = [v68 data];
            v70 = [v92 objectAtIndexedSubscript:j];

            if (v69 != v70)
            {
LABEL_27:
              v71 = objc_alloc(MEMORY[0x277CD7250]);
              v72 = [v92 objectAtIndexedSubscript:j];
              v73 = [v17 matrixDescs];
              v74 = [v73 objectAtIndexedSubscript:j];
              v75 = [v71 initWithBuffer:v72 descriptor:v74];

              v76 = [v17 forwardMatricesOrNDArrays];
              [v76 setObject:v75 atIndexedSubscript:j];
            }
          }

          v60 = [v17 forwardKernel];
          v61 = [v28 objectAtIndexedSubscript:0];
          v62 = [v28 objectAtIndexedSubscript:1];
          v63 = [v28 objectAtIndexedSubscript:2];
          [v60 encodeToCommandBuffer:v90 leftMatrix:v61 rightMatrix:v62 resultMatrix:v63];
          goto LABEL_20;
        }
      }

      v40 = 0;
      v41 = 1;
      do
      {
        if ([v28 count] <= (v41 - 1))
        {
          goto LABEL_13;
        }

        v42 = [v28 objectAtIndexedSubscript:v41 - 1];
        v43 = [v42 data];
        v44 = [v92 objectAtIndexedSubscript:v40];

        if (v43 != v44)
        {
LABEL_13:
          v45 = objc_alloc(MEMORY[0x277CD7250]);
          v46 = [v92 objectAtIndexedSubscript:v40];
          v47 = [v17 matrixDescs];
          v48 = [v47 objectAtIndexedSubscript:v40];
          v49 = [v45 initWithBuffer:v46 descriptor:v48];

          v50 = MEMORY[0x277CD7268];
          v51 = [v89 objectAtIndexedSubscript:v40];
          v52 = [v50 descriptorWithDataType:DataType shape:v51];

          [v52 setPreferPackedRows:1];
          v53 = [v49 ndArrayWithCommandBuffer:v90 descriptor:v52 aliasing:1];
          if (v40 == 2 || ([v88 objectAtIndexedSubscript:v40], v54 = objc_claimAutoreleasedReturnValue(), v55 = objc_msgSend(v54, "BOOLValue"), v54, !v55))
          {
            v57 = v53;
          }

          else
          {
            v56 = [v53 descriptor];
            [v56 transposeDimension:0 withDimension:1];
            v57 = [v53 arrayViewWithCommandBuffer:v90 descriptor:v56 aliasing:1];
          }

          v58 = [v17 forwardMatricesOrNDArrays];
          [v58 setObject:v49 atIndexedSubscript:v41 - 1];

          v59 = [v17 forwardMatricesOrNDArrays];
          [v59 setObject:v57 atIndexedSubscript:v41];
        }

        ++v40;
        v41 += 2;
      }

      while (v40 != 3);
      v60 = [v28 objectAtIndexedSubscript:1];
      v93[0] = v60;
      v61 = [v28 objectAtIndexedSubscript:3];
      v93[1] = v61;
      v62 = [MEMORY[0x277CBEA60] arrayWithObjects:v93 count:2];
      v63 = [v28 objectAtIndexedSubscript:5];
      [v87 encodeToCommandBuffer:v90 sourceArrays:v62 destinationArray:v63];
LABEL_20:

      self = v82;
      if ([v84 count] >= 3)
      {
        v64 = [v84 objectAtIndexedSubscript:2];
        [(MLCDeviceGPU *)v82 dispatchForwardArithmeticBinaryKernel:v85 sourceTensor:v79 sourceSecondaryTensor:v64 resultTensor:v79 deviceIndex:v86];
      }

      v13 = v81;
      v65 = [v81 objectAtIndexedSubscript:v86];
      [v17 setSource:v65];

      v15 = v80;
      v66 = [v80 objectAtIndexedSubscript:v86];
      [v17 setSecondarySource:v66];

      v16 = v86 + 1;
    }

    while (v86 + 1 < [(MLCDeviceGPU *)v82 numDevicesToUse]);
  }

  objc_autoreleasePoolPop(context);
  v77 = *MEMORY[0x277D85DE8];
}

- (void)dispatchGradientMatMulLayer:(id)a3 sourceGradientTensor:(id)a4 resultGradientTensors:(id)a5
{
  v193 = *MEMORY[0x277D85DE8];
  v171 = a3;
  v8 = a4;
  v9 = a5;
  context = objc_autoreleasePoolPush();
  v10 = [v8 descriptor];
  DataType = GPU_GetDataType([v10 dataType]);

  v165 = v8;
  v170 = [v8 deviceMemory];
  v185 = 0u;
  v186 = 0u;
  v187 = 0u;
  v188 = 0u;
  v11 = v9;
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
  v169 = [v16 deviceMemory];

  v17 = [v11 objectAtIndexedSubscript:1];
  v168 = [v17 deviceMemory];

  if (![(MLCDeviceGPU *)self numDevicesToUse])
  {
    goto LABEL_104;
  }

  v18 = 0;
  v19 = 0x277CD7000uLL;
  v166 = v11;
  v167 = self;
  do
  {
    v20 = [v171 objectAtIndexedSubscript:v18];
    v21 = [(MLCDeviceGPU *)self gpuCommandBufferList];
    v22 = [v21 objectAtIndexedSubscript:v18];

    if ([v11 count] >= 3)
    {
      v23 = [v11 objectAtIndexedSubscript:2];
      [(MLCDeviceGPU *)self dispatchGradientArithmeticBinaryKernel:v171 sourceGradientTensor:v165 resultGradientTensor:v165 secondaryResultGradientTensor:v23 deviceIndex:v18];
    }

    v179 = [v20 shapes];
    v24 = [v169 objectAtIndexedSubscript:v18];
    v191[0] = v24;
    v25 = [v168 objectAtIndexedSubscript:v18];
    v26 = v18;
    v27 = v25;
    v191[1] = v25;
    v172 = v26;
    v28 = [v170 objectAtIndexedSubscript:?];
    v191[2] = v28;
    v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v191 count:3];
    v181 = [v29 copy];

    v30 = [v20 broadcastingFlags];
    v31 = [v30 objectAtIndexedSubscript:0];
    if ([v31 unsignedIntegerValue])
    {
      v32 = 0;
    }

    else
    {
      v33 = [v20 broadcastingFlags];
      v34 = [v33 objectAtIndexedSubscript:1];
      v32 = [v34 unsignedIntegerValue] == 0;
    }

    for (j = 0; j != 3; ++j)
    {
      if (v32)
      {
        if (j == 2)
        {
          v36 = [v20 gradientLeftRightMatrixSelectionFlags];
          v37 = [v36 objectAtIndexedSubscript:0];
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

      v39 = [v20 gradientMatricesOrNDArrays];
      if (![v39 count])
      {

LABEL_27:
        if (!v32)
        {
          v56 = 0;
LABEL_62:
          v184 = [v20 matmulKernel];
          v85 = [v20 gradientMatricesOrNDArrays];
          v180 = v85;
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
              v91 = [v20 matrixDescs];
              v92 = [v91 objectAtIndexedSubscript:k];
              v93 = [v89 initWithBuffer:v90 descriptor:v92];

              [v178 setObject:v93 atIndexedSubscript:k];
              v94 = MEMORY[0x277CD7268];
              v95 = [v179 objectAtIndexedSubscript:k];
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
                v100 = [v20 matrixDescs];
                v101 = [v100 objectAtIndexedSubscript:k];
                v102 = [v98 initWithBuffer:v99 descriptor:v101];

                v103 = [v102 ndArrayWithCommandBuffer:v182 descriptor:v96 aliasing:1];
                [v87 addObject:v103];

                v19 = 0x277CD7000;
              }
            }

            v104 = 0;
            v105 = 1;
            v85 = v180;
            do
            {
              v106 = v105;
              v107 = [v20 gradientLeftRightMatrixSelectionFlags];
              v108 = [v107 objectAtIndexedSubscript:v104];
              v109 = [v108 BOOLValue];

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

              if (v109)
              {
                v112 = v110;
              }

              else
              {
                v112 = v111;
              }

              if (v109)
              {
                v113 = v111;
              }

              else
              {
                v113 = v110;
              }

              v114 = [v87 objectAtIndexedSubscript:v112];
              v115 = [v87 objectAtIndexedSubscript:v113];
              v116 = [v20 transposeLeft];
              v117 = [v116 objectAtIndexedSubscript:v104 + 1];
              v118 = [v117 BOOLValue];

              v119 = 3 * v104;
              if (v118)
              {
                v120 = [v114 descriptor];
                [v120 transposeDimension:0 withDimension:1];
                v121 = [v114 arrayViewWithCommandBuffer:v182 descriptor:v120 aliasing:1];
                [v85 setObject:v121 atIndexedSubscript:3 * v104];
              }

              else
              {
                [v85 setObject:v114 atIndexedSubscript:3 * v104];
              }

              v122 = [v20 transposeRight];
              v123 = [v122 objectAtIndexedSubscript:v104 + 1];
              v124 = [v123 BOOLValue];

              if (v124)
              {
                v125 = [v115 descriptor];
                [v125 transposeDimension:0 withDimension:1];
                v126 = [v115 arrayViewWithCommandBuffer:v182 descriptor:v125 aliasing:1];
                v85 = v180;
                [v180 setObject:v126 atIndexedSubscript:v119 + 1];
              }

              else
              {
                v85 = v180;
                [v180 setObject:v115 atIndexedSubscript:v119 + 1];
              }

              v127 = [v87 objectAtIndexedSubscript:2 * v104];
              [v85 setObject:v127 atIndexedSubscript:v119 + 2];

              v105 = 0;
              v104 = 1;
            }

            while ((v106 & 1) != 0);
            for (m = 0; m != 3; ++m)
            {
              v129 = [v178 objectAtIndexedSubscript:m];
              [v85 setObject:v129 atIndexedSubscript:m + 6];
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
            v133 = [v20 broadcastingFlags];
            v134 = [v133 objectAtIndexedSubscript:v130];
            v135 = [v134 unsignedIntegerValue];

            v136 = 3 * v130;
            v137 = [v85 objectAtIndexedSubscript:3 * v130];
            v138 = v137;
            if (v135)
            {
              v189[0] = v137;
              v139 = [v85 objectAtIndexedSubscript:v136 + 1];
              v189[1] = v139;
              v140 = [MEMORY[0x277CBEA60] arrayWithObjects:v189 count:2];
              v141 = [v184 encodeToCommandBuffer:v132 sourceArrays:v140];

              v138 = v141;
              v142 = [v85 objectAtIndexedSubscript:v136 + 2];
              v143 = [v20 broadcastingFlags];
              v144 = [v143 objectAtIndexedSubscript:v130];
              v145 = [v144 unsignedIntegerValue];

              if (v145 < 2)
              {
                v159 = v138;
                v22 = v132;
              }

              else
              {
                v146 = [v138 descriptor];
                v147 = [v20 reductionShapes];
                v148 = 2 * v130;
                v149 = [v147 objectAtIndexedSubscript:2 * v130];
                [v146 reshapeWithShape:v149];

                v150 = [v20 broadcastingFlags];
                v151 = [v150 objectAtIndexedSubscript:v130];
                v152 = [v151 unsignedIntegerValue];

                if (v152 == 2)
                {
                  v153 = [v180 objectAtIndexedSubscript:v136 + 2];
                  v154 = [v153 descriptor];

                  v155 = [v20 reductionShapes];
                  v156 = [v155 objectAtIndexedSubscript:v148 | 1];
                  [v154 reshapeWithShape:v156];

                  v157 = [v180 objectAtIndexedSubscript:v136 + 2];
                  v22 = v132;
                  v158 = [v157 arrayViewWithCommandBuffer:v132 descriptor:v154 aliasing:1];

                  v142 = v158;
                }

                else
                {
                  v22 = v132;
                }

                v159 = [v138 arrayViewWithCommandBuffer:v22 descriptor:v146 aliasing:1];

                v19 = 0x277CD7000;
              }

              v162 = [v20 reduceSumKernel];
              [v162 encodeToCommandBuffer:v22 sourceArray:v159 destinationArray:v142];
            }

            else
            {
              v190[0] = v137;
              v159 = [v85 objectAtIndexedSubscript:v136 + 1];
              v190[1] = v159;
              v160 = [MEMORY[0x277CBEA60] arrayWithObjects:v190 count:2];
              v161 = v85;
              v142 = v160;
              v162 = [v161 objectAtIndexedSubscript:v136 + 2];
              v22 = v132;
              [v184 encodeToCommandBuffer:v132 sourceArrays:v142 destinationArray:v162];
            }

            v131 = 0;
            v130 = 1;
            v85 = v180;
          }

          while ((v183 & 1) != 0);

          self = v167;
          goto LABEL_103;
        }

        v184 = [v20 gradientMatricesOrNDArrays];
        v44 = [MEMORY[0x277CBEBF8] mutableCopy];
        for (n = 0; ; ++n)
        {
          v46 = objc_alloc(*(v19 + 592));
          v47 = [v181 objectAtIndexedSubscript:n];
          v48 = [v20 matrixDescs];
          v49 = [v48 objectAtIndexedSubscript:n];
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
          v53 = [v20 matrixDescs];
          v54 = [v53 objectAtIndexedSubscript:n];
          v55 = [v51 initWithBuffer:v52 descriptor:v54];

          [v44 addObject:v55];
        }

        v57 = 0;
        v58 = 1;
        while (1)
        {
          v59 = [v20 gradientLeftRightMatrixSelectionFlags];
          v60 = [v59 objectAtIndexedSubscript:v57];
          v61 = [v60 BOOLValue];

          v62 = 3 * v57;
          if (!v61)
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

          v65 = [v20 gradientMatricesOrNDArrays];
          [v65 setObject:v63 atIndexedSubscript:3 * v57];

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
          v71 = [v20 gradientMatricesOrNDArrays];
          [v71 setObject:v70 atIndexedSubscript:v62 + 1];

          v72 = v62 + 2;
          v73 = [v44 objectAtIndexedSubscript:2 * v57];
          v74 = [v20 gradientMatricesOrNDArrays];
          v75 = v74;
          v76 = v58 & 1;
          if (v58)
          {
            v77 = 2;
          }

          else
          {
            v77 = v72;
          }

          [v74 setObject:v73 atIndexedSubscript:v77];

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

        v68 = [v20 gradientMatricesOrNDArrays];
        [v68 setObject:v64 atIndexedSubscript:3 * v57];

        if ((v58 & 1) == 0)
        {

          v66 = v44;
          v67 = 1;
          goto LABEL_50;
        }

        v69 = v175;
        goto LABEL_48;
      }

      v40 = [v20 gradientMatricesOrNDArrays];
      v41 = [v40 objectAtIndexedSubscript:v38];
      v42 = [v41 data];
      v43 = [v181 objectAtIndexedSubscript:j];

      if (v42 != v43)
      {
        goto LABEL_27;
      }
    }

    if (!v32)
    {
      v56 = 1;
      goto LABEL_62;
    }

    v184 = [v20 gradientMatricesOrNDArrays];
LABEL_55:
    v78 = 0;
    v79 = 1;
    self = v167;
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
      v82 = [v184 objectAtIndexedSubscript:v78];
      v83 = [v184 objectAtIndexedSubscript:v78 + 1];
      v84 = [v184 objectAtIndexedSubscript:v78 + 2];
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

- (void)dispatchForwardMHALayer:(id)a3 sourceTensors:(id)a4 resultTensor:(id)a5 resultStateIsTemporary:(BOOL)a6 forTraining:(BOOL)a7
{
  v317 = a7;
  v286 = a6;
  v387[2] = *MEMORY[0x277D85DE8];
  v284 = a3;
  v10 = a4;
  v11 = a5;
  v283 = objc_autoreleasePoolPush();
  v12 = [v10 objectAtIndexedSubscript:0];
  v13 = [v12 descriptor];
  v14 = [v13 stride];
  v321 = v10;
  v15 = [v10 objectAtIndexedSubscript:0];
  v16 = [v15 descriptor];
  v17 = [v14 objectAtIndexedSubscript:{objc_msgSend(v16, "dimensionCount") - 1}];
  v313 = [v17 unsignedIntegerValue];

  v18 = self;
  [(MLCDeviceGPU *)self allocateResultTensor:v11];
  v287 = v11;
  v288 = [v11 deviceMemory];
  if ([(MLCDeviceGPU *)self numDevicesToUse])
  {
    v19 = 0;
    v357 = self;
    do
    {
      v20 = [v284 objectAtIndexedSubscript:v19];
      v21 = [(MLCDeviceGPU *)v18 deviceList];
      v330 = [v21 objectAtIndexedSubscript:v19];

      v22 = [(MLCDeviceGPU *)v18 gpuCommandBufferList];
      v358 = [v22 objectAtIndexedSubscript:v19];

      v311 = [v20 mhaHeadCount];
      v23 = [MEMORY[0x277CBEBF8] mutableCopy];
      [v20 setMhaSourcesQKV:v23];

      v24 = 0;
      v25 = 0;
      v355 = v19;
      v356 = v20;
      do
      {
        v26 = [v20 mhaMatrixDescriptors];
        v27 = [v26 objectAtIndexedSubscript:v24];

        v28 = [v20 mhaNDArrayDescriptors];
        v29 = [v28 objectAtIndexedSubscript:v24];

        v30 = objc_alloc(MEMORY[0x277CD7250]);
        v31 = [v321 objectAtIndexedSubscript:v25];
        v32 = [v31 deviceMemory];
        v33 = [v32 objectAtIndexedSubscript:v19];
        v349 = v27;
        v34 = [v30 initWithBuffer:v33 descriptor:v27];

        v343 = v34;
        v346 = v29;
        v35 = [v34 ndArrayWithCommandBuffer:v358 descriptor:v29 aliasing:1];
        v36 = [v35 descriptor];
        [v36 transposeDimension:0 withDimension:1];
        v359 = v35;
        v340 = v36;
        v37 = [v35 arrayViewWithCommandBuffer:v358 descriptor:v36 aliasing:1];
        v38 = [v20 mhaMatrixDescriptors];
        v39 = [v38 objectAtIndexedSubscript:v24 + 1];

        v40 = [v20 mhaNDArrayDescriptors];
        v41 = [v40 objectAtIndexedSubscript:v24 + 1];

        v42 = objc_alloc(MEMORY[0x277CD7250]);
        v43 = [v20 exportableState];
        v44 = [v43 objectAtIndexedSubscript:v25];
        v334 = v39;
        v45 = [v42 initWithBuffer:v44 descriptor:v39];

        v327 = v45;
        v331 = v41;
        v366 = [v45 ndArrayWithCommandBuffer:v358 descriptor:v41 aliasing:1];
        v46 = [v20 mhaMatrixDescriptors];
        v47 = [v46 objectAtIndexedSubscript:v24 + 2];

        v48 = [v20 mhaNDArrayDescriptors];
        v363 = [v48 objectAtIndexedSubscript:v24 + 2];

        v49 = [v20 mhaMatMulSourcesQKV];
        if ([v49 count] <= v25)
        {
        }

        else
        {
          v50 = [v20 mhaMatMulSourcesQKV];
          v51 = [v50 objectAtIndexedSubscript:v25];

          if (v51)
          {
            v52 = [v356 mhaMatMulSourcesQKV];
            v53 = [v52 objectAtIndexedSubscript:v25];
            v54 = [v53 data];

            goto LABEL_9;
          }
        }

        v54 = [v330 newBufferWithLength:objc_msgSend(v47 options:{"matrixBytes") * objc_msgSend(v47, "matrices"), +[MLCGPUHelper mtlResourceOptions](MLCGPUHelper, "mtlResourceOptions")}];
LABEL_9:
        v55 = [objc_alloc(MEMORY[0x277CD7250]) initWithBuffer:v54 descriptor:v47];
        v56 = [v55 ndArrayWithCommandBuffer:v358 descriptor:v363 aliasing:1];
        v20 = v356;
        v57 = [v356 mhaMatMulKernel];
        v387[0] = v366;
        v387[1] = v37;
        v337 = v37;
        v58 = [MEMORY[0x277CBEA60] arrayWithObjects:v387 count:2];
        v352 = v56;
        [v57 encodeToCommandBuffer:v358 sourceArrays:v58 destinationArray:v56];

        if (v317)
        {
          v59 = [v356 mhaSourcesQKV];
          [v59 addObject:v359];
        }

        if ([v356 mhaHasBias])
        {
          v60 = [v356 mhaMatrixDescriptorsForBias];
          v322 = [v60 objectAtIndexedSubscript:v25];

          v61 = objc_alloc(MEMORY[0x277CD7250]);
          v62 = [v356 exportableState];
          v63 = [v62 objectAtIndexedSubscript:v25 + 4];
          v318 = [v61 initWithBuffer:v63 descriptor:v322];

          v64 = [v356 mhaNDArrayDescriptorsForBias];
          contextb = [v64 objectAtIndexedSubscript:v25];

          v65 = [v318 ndArrayWithCommandBuffer:v358 descriptor:contextb aliasing:1];
          v66 = [v356 mhaBiasAddKernel];
          v386[0] = v352;
          v386[1] = v65;
          [MEMORY[0x277CBEA60] arrayWithObjects:v386 count:2];
          v68 = v67 = v47;
          [v66 encodeToCommandBuffer:v358 sourceArrays:v68 destinationArray:v352];

          v47 = v67;
        }

        v69 = [v356 mhaInputProjResults];
        [v69 setObject:v54 atIndexedSubscript:v25];

        ++v25;
        v24 += 3;
        v19 = v355;
      }

      while (v25 != 3);
      v70 = [v356 mhaHasZeroAttention];
      v71 = [v356 mhaHasAttnBias];
      if (([v356 mhaHasAttnBias] & 1) != 0 || objc_msgSend(v356, "mhaHasZeroAttention"))
      {
        v72 = 0;
        v350 = v71 + v70;
        v73 = 1;
        if (v71)
        {
          v74 = 2;
        }

        else
        {
          v74 = 1;
        }

        v332 = v74 + v70;
        do
        {
          v319 = v73;
          v75 = [(MLCDeviceGPU *)v357 gpuPipelineStatesConcatFloat];
          v76 = v19;
          v77 = v75;
          v78 = [v75 objectAtIndexedSubscript:v76];
          v79 = [v78 maxTotalThreadsPerThreadgroup];

          v80 = [v356 batchSize];
          v353 = v72;
          v81 = [v321 objectAtIndexedSubscript:v72 + 1];
          v82 = [v81 descriptor];
          v83 = [v82 shape];
          v84 = [v83 objectAtIndexedSubscript:1];
          v85 = [v84 unsignedIntegerValue];

          v86 = v79;
          v87 = [v356 mhaModelDimension];
          v88 = 0;
          v360 = v85;
          v323 = v87 * v313;
          v325 = v85 + 1;
          v341 = v87;
          v344 = v85 + v350;
          v338 = v87 * (v85 + v350);
          v328 = v79 - 1;
          v375 = 0u;
          v376[0] = 0u;
          v335 = 4 * v87 * v80 * (v85 + v350);
          v374 = 0u;
          v347 = v79;
          do
          {
            v89 = v356;
            if (v350 == v88 && [v356 mhaHasZeroAttention])
            {
              v90 = [(MLCDeviceGPU *)v357 gpuHeapTemporaryResourceAllocator];
              v91 = [v90 objectAtIndexedSubscript:{objc_msgSend(v356, "temporaryHeapIndex")}];
              v92 = [v91 allocateBuffer:v323];

              v93 = [v358 blitCommandEncoder];
              [v93 fillBuffer:v92 range:0 value:{objc_msgSend(v92, "length"), 0}];
              [v93 endEncoding];
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
              v95 = [v356 mhaInputProjResults];
              v98 = [v95 objectAtIndexedSubscript:v353 + 1];
              v99 = 0;
              goto LABEL_31;
            }

            if ([v356 mhaHasAttnBias])
            {
              v95 = [v356 mhaAttentionBiasTensors];
              v96 = [v95 objectAtIndexedSubscript:v353];
              v97 = [v96 deviceMemory];
              v98 = [v97 objectAtIndexedSubscript:v355];

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
            v101 = [v89 batchSize];
            *(&v374 + 1) = v101 | 0x100000000;
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

            v106 = [v89 mhaInputProjResults];
            [v106 objectAtIndexedSubscript:v94 + 1];
            v108 = v107 = v89;
            v109 = v94;
            v110 = [v108 length];

            if (v110 == v335)
            {
              v111 = [v107 mhaInputProjResults];
              v112 = [v111 objectAtIndexedSubscript:v109 + 1];
            }

            else
            {
              v112 = [v330 newBufferWithLength:v335 options:{+[MLCGPUHelper mtlResourceOptions](MLCGPUHelper, "mtlResourceOptions")}];
              v111 = [v107 mhaInputProjResults];
              [v111 setObject:v112 atIndexedSubscript:v109 + 1];
            }

            v113 = v101;

            v114 = [v358 computeCommandEncoderWithDispatchType:0];
            v115 = [(MLCDeviceGPU *)v357 gpuPipelineStatesConcatFloat];
            v116 = [v115 objectAtIndexedSubscript:v355];
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

      v117 = [v356 mhaMatMulSourcesQKV];
      v118 = [v117 count];

      if (v118 <= 2)
      {
        for (i = 0; i != 3; ++i)
        {
          v120 = [v356 mhaInputProjResults];
          v121 = [v120 objectAtIndexedSubscript:i];

          v122 = objc_alloc(MEMORY[0x277CD7250]);
          v123 = [v356 mhaMatrixDescriptors];
          v124 = [v123 objectAtIndexedSubscript:i + 9];
          v125 = [v122 initWithBuffer:v121 descriptor:v124];

          v126 = [v356 mhaMatMulSourcesQKV];
          [v126 setObject:v125 atIndexedSubscript:i];
        }
      }

      v127 = [v356 mhaMatMulSourcesQKV];
      v128 = [v127 objectAtIndexedSubscript:0];

      v129 = [v356 mhaMatMulSourcesQKV];
      v130 = [v129 objectAtIndexedSubscript:1];

      v131 = [v356 mhaNDArrayDescriptors];
      v132 = [v131 objectAtIndexedSubscript:9];

      v354 = v128;
      v348 = v132;
      v133 = [v128 ndArrayWithCommandBuffer:v358 descriptor:v132 aliasing:1];
      v134 = [v133 descriptor];
      [v134 transposeDimension:0 withDimension:1];
      v342 = v134;
      v345 = v133;
      v135 = [v133 arrayViewWithCommandBuffer:v358 descriptor:v134 aliasing:1];
      v136 = [v356 mhaNDArrayDescriptors];
      v137 = [v136 objectAtIndexedSubscript:10];

      v351 = v130;
      v336 = v137;
      v138 = [v130 ndArrayWithCommandBuffer:v358 descriptor:v137 aliasing:1];
      v139 = [v356 mhaMatrixDescriptors];
      v140 = [v139 objectAtIndexedSubscript:12];

      v141 = [v140 matrices];
      v142 = [v140 matrixBytes] * v141;
      v143 = [(MLCDeviceGPU *)v357 gpuHeapTemporaryResourceAllocator];
      v144 = [v143 objectAtIndexedSubscript:{objc_msgSend(v356, "temporaryHeapIndex")}];
      v145 = [v144 allocateBuffer:v142];

      v146 = v140;
      v326 = v145;
      v147 = [objc_alloc(MEMORY[0x277CD7250]) initWithBuffer:v145 descriptor:v140];
      v148 = [v356 mhaNDArrayDescriptors];
      v149 = [v148 objectAtIndexedSubscript:12];

      v324 = v149;
      v150 = [v147 ndArrayWithCommandBuffer:v358 descriptor:v149 aliasing:1];
      v151 = [v356 mhaMatMulKernelWithScale];
      v339 = v135;
      v385[0] = v135;
      v385[1] = v138;
      v333 = v138;
      v152 = [MEMORY[0x277CBEA60] arrayWithObjects:v385 count:2];
      v320 = v150;
      [v151 encodeToCommandBuffer:v358 sourceArrays:v152 destinationArray:v150];

      v153 = [v356 mhaQKSoftmaxResultMatrix];

      v329 = v146;
      if (v153)
      {
        v154 = [v356 mhaQKSoftmaxResultMatrix];
        v155 = [v154 data];
      }

      else
      {
        v155 = [v330 newBufferWithLength:objc_msgSend(v147 options:{"matrixBytes") * objc_msgSend(v147, "matrices"), +[MLCGPUHelper mtlResourceOptions](MLCGPUHelper, "mtlResourceOptions")}];
        v154 = [objc_alloc(MEMORY[0x277CD7250]) initWithBuffer:v155 descriptor:v146];
        [v356 setMhaQKSoftmaxResultMatrix:v154];
      }

      v156 = v356;

      v365 = [v356 mhaQKSoftmaxResultMatrix];
      context = objc_autoreleasePoolPush();
      v157 = [v147 columns];
      [v356 setResult:v155];
      v368 = v147;
      v361 = [v147 data];
      v158 = v155;
      v159 = [v356 mhaMaskSoftmaxForwardKernel];
      v160 = [v159 maxTotalThreadsPerThreadgroup];

      if (v160 > v157)
      {
        v161 = 1 << -__clz(v157);
        v160 = (v157 & (v157 - 1)) != 0 ? v161 : v157;
        v162 = [v356 mhaMaskSoftmaxForwardKernel];
        v163 = [v162 threadExecutionWidth];

        if (v160 <= v163)
        {
          v160 = v163;
        }
      }

      v375 = 0u;
      memset(v376, 0, 28);
      v374 = 0u;
      v164 = [v356 mhaHasKeyMask];
      v165 = v361;
      if (([v356 mhaHasAttentionMask] & 1) != 0 || objc_msgSend(v356, "mhaHasKeyMask"))
      {
        LODWORD(v374) = [v147 matrices];
        DWORD1(v374) = [v147 rows];
        DWORD2(v374) = 1;
        HIDWORD(v374) = [v147 columns];
        LODWORD(v376[1]) = v311;
        if ([v356 mhaHasAttentionMask])
        {
          if (v164)
          {
            v166 = 4;
          }

          else
          {
            v166 = 3;
          }

          v167 = [v321 objectAtIndexedSubscript:v166];
          v168 = [v167 descriptor];
          if ([v168 isFloatingPoint])
          {
            v169 = 1;
          }

          else
          {
            v169 = 2;
          }

          DWORD1(v376[1]) = v169;

          v170 = [v321 objectAtIndexedSubscript:v166];
          v171 = [v170 descriptor];
          v172 = [v171 shape];
          [v172 objectAtIndexedSubscript:0];
          v173 = v164;
          v175 = v174 = v158;
          LODWORD(v375) = [v175 unsignedIntegerValue];

          v158 = v174;
          v164 = v173;
          v165 = v361;

          DWORD1(v375) = [v147 rows];
          DWORD2(v375) = 1;
          v176 = [v321 objectAtIndexedSubscript:v166];
          v177 = [v176 descriptor];
          v178 = [v177 shape];
          v179 = [v178 objectAtIndexedSubscript:2];
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
          v181 = [v180 descriptor];
          v182 = [v181 shape];
          v183 = [v182 objectAtIndexedSubscript:1];
          HIDWORD(v376[0]) = [v183 unsignedIntegerValue];

          v156 = v356;
        }

        else
        {
          DWORD2(v376[1]) = 0;
        }
      }

      v184 = [v147 matrices];
      v185 = [v147 rows];
      v370[0] = v157;
      v370[1] = 2;
      v371 = v160 >= v157;
      v372 = 1;
      v373 = v157;
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
        if (v164)
        {
          v188 = 4;
        }

        else
        {
          v188 = 3;
        }

        [v321 objectAtIndexedSubscript:v188];
        v190 = v189 = v160;
        v191 = [v190 descriptor];
        if ([v191 isFloatingPoint])
        {
          v192 = 2;
        }

        else
        {
          v192 = 3;
        }

        v193 = [v321 objectAtIndexedSubscript:v188];
        v194 = [v193 deviceMemory];
        v195 = [v194 objectAtIndexedSubscript:v355];
        [v186 setBuffer:v195 offset:0 atIndex:v192];

        v156 = v356;
        v160 = v189;
      }

      if ([v156 mhaHasKeyMask])
      {
        v196 = [v321 objectAtIndexedSubscript:3];
        [v196 deviceMemory];
        v198 = v197 = v160;
        v199 = [v198 objectAtIndexedSubscript:v355];
        [v186 setBuffer:v199 offset:0 atIndex:4];

        v156 = v356;
        v160 = v197;
      }

      [v186 setBytes:v370 length:20 atIndex:5];
      [v186 setBytes:&v374 length:60 atIndex:6];
      [v186 setThreadgroupMemoryLength:GPU_AlignForThreadGroupMemorySize(4 * (v160 + v160 * v371)) atIndex:0];
      v379 = 1;
      v380 = v185 * v184;
      v381 = 1;
      v377 = v160;
      v378 = vdupq_n_s64(1uLL);
      [v186 dispatchThreadgroups:&v379 threadsPerThreadgroup:&v377];
      [v186 endEncoding];

      objc_autoreleasePoolPop(context);
      v200 = [v156 mhaMatMulSourcesQKV];
      v201 = [v200 objectAtIndexedSubscript:2];

      v202 = [v156 mhaMatMulSourcesQKV];
      v203 = [v202 count];

      v204 = v156;
      v205 = v355;
      if (v203 > 3)
      {
        v207 = [v156 mhaMatMulSourcesQKV];
        v209 = [v207 objectAtIndexedSubscript:3];
      }

      else
      {
        v206 = [v156 mhaMatrixDescriptors];
        v207 = [v206 objectAtIndexedSubscript:13];

        v208 = [v330 newBufferWithLength:objc_msgSend(v207 options:{"matrixBytes") * objc_msgSend(v207, "matrices"), +[MLCGPUHelper mtlResourceOptions](MLCGPUHelper, "mtlResourceOptions")}];
        v209 = [objc_alloc(MEMORY[0x277CD7250]) initWithBuffer:v208 descriptor:v207];
        v210 = [v156 mhaMatMulSourcesQKV];
        [v210 setObject:v209 atIndexedSubscript:3];
      }

      v211 = [v156 mhaNDArrayDescriptors];
      v212 = [v211 objectAtIndexedSubscript:11];

      contexta = v201;
      v310 = v212;
      v213 = [v201 ndArrayWithCommandBuffer:v358 descriptor:v212 aliasing:1];
      v214 = [v156 mhaNDArrayDescriptors];
      v215 = [v214 objectAtIndexedSubscript:12];

      v308 = v215;
      v216 = [v365 ndArrayWithCommandBuffer:v358 descriptor:v215 aliasing:1];
      v217 = [v216 descriptor];
      [v217 transposeDimension:0 withDimension:1];
      v306 = v217;
      v307 = v216;
      v218 = [v216 arrayViewWithCommandBuffer:v358 descriptor:v217 aliasing:1];
      v219 = [v156 mhaNDArrayDescriptors];
      v220 = [v219 objectAtIndexedSubscript:13];

      v304 = v220;
      v221 = [v209 ndArrayWithCommandBuffer:v358 descriptor:v220 aliasing:1];
      v222 = [v156 mhaMatMulKernel];
      v309 = v213;
      v384[0] = v213;
      v384[1] = v218;
      v305 = v218;
      v223 = [MEMORY[0x277CBEA60] arrayWithObjects:v384 count:2];
      v303 = v221;
      [v222 encodeToCommandBuffer:v358 sourceArrays:v223 destinationArray:v221];

      v224 = [v156 mhaMatrixDescriptors];
      v225 = [v224 objectAtIndexedSubscript:2];

      v226 = objc_alloc(MEMORY[0x277CD7250]);
      v312 = v209;
      v227 = [v209 data];
      v302 = v225;
      v228 = [v226 initWithBuffer:v227 descriptor:v225];

      v229 = [v156 mhaNDArrayDescriptors];
      v230 = [v229 objectAtIndexedSubscript:2];

      v300 = v230;
      v301 = v228;
      v231 = [v228 ndArrayWithCommandBuffer:v358 descriptor:v230 aliasing:1];
      v232 = [v231 descriptor];
      [v232 transposeDimension:0 withDimension:1];
      v298 = v232;
      v299 = v231;
      v233 = [v231 arrayViewWithCommandBuffer:v358 descriptor:v232 aliasing:1];
      v234 = [v156 mhaMatrixDescriptors];
      v235 = [v234 objectAtIndexedSubscript:14];

      v236 = objc_alloc(MEMORY[0x277CD7250]);
      v237 = [v156 exportableState];
      v238 = [v237 objectAtIndexedSubscript:3];
      v296 = v235;
      v239 = [v236 initWithBuffer:v238 descriptor:v235];

      v240 = [v156 mhaNDArrayDescriptors];
      v241 = [v240 objectAtIndexedSubscript:14];

      v295 = v239;
      v242 = [v239 ndArrayWithCommandBuffer:v358 descriptor:v241 aliasing:1];
      v243 = [v242 descriptor];
      [v243 transposeDimension:0 withDimension:1];
      v293 = v243;
      v294 = v242;
      v244 = [v242 arrayViewWithCommandBuffer:v358 descriptor:v243 aliasing:1];
      v245 = [v156 mhaMatrixDescriptors];
      v246 = [v245 objectAtIndexedSubscript:15];

      v247 = objc_alloc(MEMORY[0x277CD7250]);
      v248 = [v288 objectAtIndexedSubscript:v355];
      v291 = v246;
      v249 = [v247 initWithBuffer:v248 descriptor:v246];

      v250 = [v156 mhaNDArrayDescriptors];
      v251 = [v250 objectAtIndexedSubscript:15];

      v289 = v251;
      v290 = v249;
      v252 = [v249 ndArrayWithCommandBuffer:v358 descriptor:v251 aliasing:1];
      v253 = [v156 mhaMatMulKernel];
      v297 = v233;
      v383[0] = v233;
      v383[1] = v244;
      v292 = v244;
      v254 = [MEMORY[0x277CBEA60] arrayWithObjects:v383 count:2];
      [v253 encodeToCommandBuffer:v358 sourceArrays:v254 destinationArray:v252];

      v18 = v357;
      if ([v156 mhaHasBias])
      {
        v255 = [v156 mhaMatrixDescriptorsForBias];
        v256 = [v255 objectAtIndexedSubscript:3];

        v257 = objc_alloc(MEMORY[0x277CD7250]);
        v258 = [v156 exportableState];
        v259 = [v258 objectAtIndexedSubscript:7];
        v260 = [v257 initWithBuffer:v259 descriptor:v256];

        v261 = [v204 mhaNDArrayDescriptorsForBias];
        v262 = [v261 objectAtIndexedSubscript:3];

        v263 = [v260 ndArrayWithCommandBuffer:v358 descriptor:v262 aliasing:1];
        v264 = [v204 mhaBiasAddKernel];
        v382[0] = v252;
        v382[1] = v263;
        v265 = [MEMORY[0x277CBEA60] arrayWithObjects:v382 count:2];
        [v264 encodeToCommandBuffer:v358 sourceArrays:v265 destinationArray:v252];

        v18 = v357;
        v205 = v355;
      }

      v266 = [v204 mhaDropoutForwardKernel];

      if (v266)
      {
        v285 = v252;
        v267 = [(MLCDeviceGPU *)v18 gpuWriteTensorKernelList];
        v268 = [v267 objectAtIndexedSubscript:v205];
        v269 = +[MLCGPUHelper allocateMPSImageBatchForTensor:commandBuffer:kernel:batchSize:heapAllocator:imageBatchIsTemporary:](MLCGPUHelper, "allocateMPSImageBatchForTensor:commandBuffer:kernel:batchSize:heapAllocator:imageBatchIsTemporary:", v287, v358, v268, [v204 batchSize], 0, v286);

        if (v286 && v317)
        {
          MPSImageBatchIncrementReadCount(v269, 1);
        }

        v270 = [(MLCDeviceGPU *)v357 gpuWriteTensorKernelList];
        v271 = [v270 objectAtIndexedSubscript:v205];
        v272 = [v288 objectAtIndexedSubscript:v205];
        v273 = [v287 descriptor];
        +[MLCGPUHelper copyMTLBufferToMPSImageBatch:commandBuffer:sourceMTLBuffer:destinationImageBatch:MLCDataType:](MLCGPUHelper, "copyMTLBufferToMPSImageBatch:commandBuffer:sourceMTLBuffer:destinationImageBatch:MLCDataType:", v271, v358, v272, v269, [v273 dataType]);

        v274 = [v356 mhaDropoutForwardKernel];
        v275 = [MEMORY[0x277CD72A8] defaultAllocator];
        [v274 setDestinationImageAllocator:v275];

        v369 = 0;
        v276 = [v274 encodeBatchToCommandBuffer:v358 sourceImages:v269 destinationStates:&v369 destinationStateIsTemporary:v286];
        v277 = v369;
        [v356 setMhaDropoutSource:v269];
        [v356 setMhaDropoutState:v277];

        v278 = [(MLCDeviceGPU *)v357 gpuReadTensorKernelList];
        v279 = [v278 objectAtIndexedSubscript:v355];
        v280 = [v288 objectAtIndexedSubscript:v355];
        v281 = [v287 descriptor];
        +[MLCGPUHelper copyMPSImageBatchToMTLBuffer:commandBuffer:sourceImageBatch:destinationMTLBuffer:MLCDataType:](MLCGPUHelper, "copyMPSImageBatchToMTLBuffer:commandBuffer:sourceImageBatch:destinationMTLBuffer:MLCDataType:", v279, v358, v276, v280, [v281 dataType]);

        v18 = v357;
        v205 = v355;

        v252 = v285;
      }

      if (v317)
      {
        [v356 setSource:v297];
      }

      v19 = v205 + 1;
    }

    while (v205 + 1 < [(MLCDeviceGPU *)v18 numDevicesToUse]);
  }

  objc_autoreleasePoolPop(v283);
  v282 = *MEMORY[0x277D85DE8];
}

- (void)dispatchGradientMHALayer:(id)a3 sourceGradientTensor:(id)a4 resultGradientTensors:(id)a5 resultStateIsTemporary:(BOOL)a6
{
  v346 = a6;
  v397 = *MEMORY[0x277D85DE8];
  v279 = a3;
  v9 = a4;
  v10 = a5;
  v278 = objc_autoreleasePoolPush();
  v11 = [v9 descriptor];
  v12 = [v11 stride];
  v327 = v9;
  v13 = [v9 descriptor];
  v14 = [v12 objectAtIndexedSubscript:{objc_msgSend(v13, "dimensionCount") - 1}];
  v331 = [v14 unsignedIntegerValue];

  v15 = [MEMORY[0x277CBEBF8] mutableCopy];
  v384 = 0u;
  v385 = 0u;
  v386 = 0u;
  v387 = 0u;
  obj = v10;
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
    v369 = self;
    v280 = v15;
    do
    {
      v21 = [v279 objectAtIndexedSubscript:v20];
      v22 = [(MLCDeviceGPU *)self gpuCommandBufferList];
      v23 = [v22 objectAtIndexedSubscript:v20];

      v24 = [(MLCDeviceGPU *)self deviceList];
      v351 = [v24 objectAtIndexedSubscript:v20];

      v25 = [v21 mhaDropoutGradientKernel];

      v347 = v21;
      if (v25)
      {
        v26 = [v21 batchSize];
        v27 = [(MLCDeviceGPU *)self gpuWriteTensorKernelList];
        v28 = [v27 objectAtIndexedSubscript:v20];
        v29 = [v327 deviceMemory];
        v30 = [v29 objectAtIndexedSubscript:v20];
        v31 = [v327 descriptor];
        v32 = +[MLCGPUHelper allocateAndCopyToTemporaryMPSImageBatchForTensor:commandBuffer:batchSize:copyingKernel:sourceMTLBuffer:MLCDataType:heapAllocator:](MLCGPUHelper, "allocateAndCopyToTemporaryMPSImageBatchForTensor:commandBuffer:batchSize:copyingKernel:sourceMTLBuffer:MLCDataType:heapAllocator:", v327, v23, v26, v28, v30, [v31 dataType], 0);

        v33 = [v347 mhaDropoutGradientKernel];
        v34 = [MEMORY[0x277CD72A8] defaultAllocator];
        [v33 setDestinationImageAllocator:v34];

        v35 = [v347 batchSize];
        v36 = [v347 mhaDropoutSource];
        v37 = [v36 subarrayWithRange:{0, v35}];
        v38 = [v347 mhaDropoutState];
        v39 = [v33 encodeBatchToCommandBuffer:v23 sourceGradients:v32 sourceImages:v37 gradientStates:v38];

        v40 = [v327 deviceMemory];
        v41 = [v40 objectAtIndexedSubscript:v20];
        v42 = [v41 length];

        v43 = [(MLCDeviceGPU *)v369 gpuHeapTemporaryResourceAllocator];
        v44 = [v43 objectAtIndexedSubscript:{objc_msgSend(v347, "temporaryHeapIndex")}];
        v45 = [v44 allocateBuffer:v42];

        v46 = [(MLCDeviceGPU *)v369 gpuReadTensorKernelList];
        v47 = [v46 objectAtIndexedSubscript:v20];
        v48 = [v327 descriptor];
        v15 = v280;
        +[MLCGPUHelper copyMPSImageBatchToMTLBuffer:commandBuffer:sourceImageBatch:destinationMTLBuffer:MLCDataType:](MLCGPUHelper, "copyMPSImageBatchToMTLBuffer:commandBuffer:sourceImageBatch:destinationMTLBuffer:MLCDataType:", v47, v23, v39, v45, [v48 dataType]);

        self = v369;
        v21 = v347;

        [v280 setObject:v45 atIndexedSubscript:v20];
      }

      else
      {
        v32 = [v327 deviceMemory];
        v33 = [v32 objectAtIndexedSubscript:v20];
        [v15 setObject:v33 atIndexedSubscript:v20];
      }

      v49 = [v21 mhaMatrixDescriptors];
      v50 = [v49 objectAtIndexedSubscript:15];

      v51 = objc_alloc(MEMORY[0x277CD7250]);
      v52 = [v15 objectAtIndexedSubscript:v20];
      v318 = v50;
      v53 = [v51 initWithBuffer:v52 descriptor:v50];

      v54 = [v21 mhaNDArrayDescriptors];
      v55 = [v54 objectAtIndexedSubscript:15];

      v316 = v55;
      v317 = v53;
      v56 = [v53 ndArrayWithCommandBuffer:v23 descriptor:v55 aliasing:1];
      v57 = [v56 descriptor];
      [v57 transposeDimension:0 withDimension:1];
      v330 = v56;
      v315 = v57;
      v326 = [v56 arrayViewWithCommandBuffer:v23 descriptor:v57 aliasing:1];
      v58 = [v21 mhaMatrixDescriptors];
      v59 = [v58 objectAtIndexedSubscript:14];

      v60 = objc_alloc(MEMORY[0x277CD7250]);
      v61 = [v21 exportableState];
      v62 = [v61 objectAtIndexedSubscript:3];
      v329 = v59;
      v63 = [v60 initWithBuffer:v62 descriptor:v59];

      v64 = [v21 mhaNDArrayDescriptors];
      v65 = [v64 objectAtIndexedSubscript:14];

      v314 = v63;
      v328 = v65;
      v66 = [v63 ndArrayWithCommandBuffer:v23 descriptor:v65 aliasing:1];
      v67 = [v66 descriptor];
      [v67 transposeDimension:0 withDimension:1];
      v312 = v67;
      v313 = v66;
      v68 = [v66 arrayViewWithCommandBuffer:v23 descriptor:v67 aliasing:1];
      v69 = [v21 mhaMatrixDescriptors];
      v70 = [v69 objectAtIndexedSubscript:2];

      v71 = [(MLCDeviceGPU *)self gpuHeapTemporaryResourceAllocator];
      v72 = [v71 objectAtIndexedSubscript:{objc_msgSend(v21, "temporaryHeapIndex")}];
      v73 = [v72 allocateBuffer:{objc_msgSend(v70, "matrixBytes") * objc_msgSend(v70, "matrices")}];

      v325 = v73;
      v310 = v70;
      v74 = [objc_alloc(MEMORY[0x277CD7250]) initWithBuffer:v73 descriptor:v70];
      v75 = [v21 mhaNDArrayDescriptors];
      v76 = [v75 objectAtIndexedSubscript:2];

      v308 = v76;
      v309 = v74;
      v77 = [v74 ndArrayWithCommandBuffer:v23 descriptor:v76 aliasing:1];
      v78 = [v21 mhaMatMulKernel];
      v311 = v68;
      v395[0] = v68;
      v395[1] = v326;
      v79 = [MEMORY[0x277CBEA60] arrayWithObjects:v395 count:2];
      v368 = v23;
      v307 = v77;
      [v78 encodeToCommandBuffer:v23 sourceArrays:v79 destinationArray:v77];

      v80 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:3];
      for (j = 0; j != 3; ++j)
      {
        v82 = [v21 mhaMatrixDescriptors];
        v83 = [v82 objectAtIndexedSubscript:j + 9];

        v84 = [(MLCDeviceGPU *)self gpuHeapTemporaryResourceAllocator];
        v85 = [v84 objectAtIndexedSubscript:{objc_msgSend(v21, "temporaryHeapIndex")}];
        v86 = [v85 allocateBuffer:{objc_msgSend(v83, "matrices") * objc_msgSend(v83, "matrixBytes")}];

        v87 = [objc_alloc(MEMORY[0x277CD7250]) initWithBuffer:v86 descriptor:v83];
        [v80 setObject:v87 atIndexedSubscript:j];
      }

      v88 = [v21 mhaMatrixDescriptors];
      v89 = [v88 objectAtIndexedSubscript:13];

      v306 = v89;
      v90 = [objc_alloc(MEMORY[0x277CD7250]) initWithBuffer:v325 descriptor:v89];
      v91 = [v21 mhaNDArrayDescriptors];
      v92 = [v91 objectAtIndexedSubscript:13];

      v304 = v92;
      v305 = v90;
      v93 = [v90 ndArrayWithCommandBuffer:v368 descriptor:v92 aliasing:1];
      v94 = [v21 mhaQKSoftmaxResultMatrix];
      v95 = [v21 mhaNDArrayDescriptors];
      v96 = [v95 objectAtIndexedSubscript:12];

      v322 = v96;
      v97 = [v94 ndArrayWithCommandBuffer:v368 descriptor:v96 aliasing:1];
      v98 = [v21 mhaNDArrayDescriptors];
      v99 = [v98 objectAtIndexedSubscript:11];

      v324 = v80;
      v100 = [v80 objectAtIndexedSubscript:2];
      v301 = v99;
      v101 = [v100 ndArrayWithCommandBuffer:v368 descriptor:v99 aliasing:1];

      v102 = [v21 mhaMatMulKernel];
      v394[0] = v93;
      v302 = v97;
      v394[1] = v97;
      v103 = [MEMORY[0x277CBEA60] arrayWithObjects:v394 count:2];
      v300 = v101;
      [v102 encodeToCommandBuffer:v368 sourceArrays:v103 destinationArray:v101];

      v104 = [v93 descriptor];
      [v104 transposeDimension:0 withDimension:1];
      v303 = v93;
      v299 = v104;
      v105 = [v93 arrayViewWithCommandBuffer:v368 descriptor:v104 aliasing:1];
      v106 = [v21 mhaMatMulSourcesQKV];
      v107 = [v106 objectAtIndexedSubscript:2];

      v108 = [v21 mhaNDArrayDescriptors];
      v109 = [v108 objectAtIndexedSubscript:11];
      v297 = v107;
      v321 = [v107 ndArrayWithCommandBuffer:v368 descriptor:v109 aliasing:1];

      v110 = [(MLCDeviceGPU *)self gpuHeapTemporaryResourceAllocator];
      v111 = [v110 objectAtIndexedSubscript:{objc_msgSend(v21, "temporaryHeapIndex")}];
      v323 = v94;
      v112 = [v111 allocateBuffer:{objc_msgSend(v94, "matrices") * objc_msgSend(v94, "matrixBytes")}];

      v113 = [v21 mhaMatrixDescriptors];
      v114 = [v113 objectAtIndexedSubscript:12];

      v115 = [objc_alloc(MEMORY[0x277CD7250]) initWithBuffer:v112 descriptor:v114];
      v116 = [v21 mhaNDArrayDescriptors];
      v117 = [v116 objectAtIndexedSubscript:12];

      v293 = v117;
      v294 = v115;
      v118 = [v115 ndArrayWithCommandBuffer:v368 descriptor:v117 aliasing:1];
      v119 = [v21 mhaMatMulKernel];
      v298 = v105;
      v393[0] = v105;
      v393[1] = v321;
      v120 = [MEMORY[0x277CBEA60] arrayWithObjects:v393 count:2];
      v292 = v118;
      [v119 encodeToCommandBuffer:v368 sourceArrays:v120 destinationArray:v118];

      v121 = self;
      v122 = v112;
      v123 = [(MLCDeviceGPU *)v121 gpuHeapTemporaryResourceAllocator];
      v124 = [v123 objectAtIndexedSubscript:{objc_msgSend(v21, "temporaryHeapIndex")}];
      v125 = [v124 allocateBuffer:{objc_msgSend(v112, "length")}];

      v295 = v114;
      v320 = [objc_alloc(MEMORY[0x277CD7250]) initWithBuffer:v125 descriptor:v114];
      context = objc_autoreleasePoolPush();
      v126 = [v323 columns];
      v127 = [v21 mhaSoftmaxGradientKernel];
      v128 = [v127 maxTotalThreadsPerThreadgroup];

      v129 = 1 << -__clz(v126);
      if ((v126 & (v126 - 1)) == 0)
      {
        v129 = v126;
      }

      if (v128 > v126)
      {
        v128 = v129;
      }

      v130 = [v323 matrices];
      v131 = [v323 rows] * v130;
      v372 = v126 | 0x200000000;
      LODWORD(v373) = v128 >= v126;
      HIDWORD(v373) = 1;
      LODWORD(v374) = v126;
      v132 = [v368 computeCommandEncoderWithDispatchType:0];
      v133 = [v21 mhaSoftmaxGradientKernel];
      [v132 setComputePipelineState:v133];

      v296 = v122;
      [v132 setBuffer:v122 offset:0 atIndex:0];
      v291 = v125;
      [v132 setBuffer:v125 offset:0 atIndex:1];
      v134 = [v21 result];
      [v132 setBuffer:v134 offset:0 atIndex:2];

      [v132 setBytes:&v372 length:20 atIndex:3];
      [v132 setThreadgroupMemoryLength:GPU_AlignForThreadGroupMemorySize(4 * (v128 + v128 * v373)) atIndex:0];
      v375 = 1;
      v376 = v131;
      *v377 = 1;
      v382 = v128;
      v383 = vdupq_n_s64(1uLL);
      [v132 dispatchThreadgroups:&v375 threadsPerThreadgroup:&v382];
      [v132 endEncoding];

      objc_autoreleasePoolPop(context);
      v319 = [v320 ndArrayWithCommandBuffer:v368 descriptor:v322 aliasing:1];
      v135 = [v319 descriptor];
      [v135 transposeDimension:0 withDimension:1];
      v290 = v135;
      v136 = [v319 arrayViewWithCommandBuffer:v368 descriptor:v135 aliasing:1];
      v137 = [v21 mhaMatMulSourcesQKV];
      v138 = [v137 objectAtIndexedSubscript:1];

      v139 = [v21 mhaNDArrayDescriptors];
      v140 = [v139 objectAtIndexedSubscript:9];

      v141 = [v21 mhaNDArrayDescriptors];
      v142 = [v141 objectAtIndexedSubscript:10];

      v288 = v138;
      v143 = [v138 ndArrayWithCommandBuffer:v368 descriptor:v142 aliasing:1];
      v144 = [v324 objectAtIndexedSubscript:0];
      v145 = [v144 ndArrayWithCommandBuffer:v368 descriptor:v140 aliasing:1];

      v146 = [v21 mhaMatMulKernelWithScale];
      v285 = v143;
      v392[0] = v143;
      v289 = v136;
      v392[1] = v136;
      v147 = [MEMORY[0x277CBEA60] arrayWithObjects:v392 count:2];
      v284 = v145;
      [v146 encodeToCommandBuffer:v368 sourceArrays:v147 destinationArray:v145];

      v148 = [v21 mhaMatMulSourcesQKV];
      v149 = [v148 objectAtIndexedSubscript:0];

      v283 = v149;
      v287 = v140;
      v150 = [v149 ndArrayWithCommandBuffer:v368 descriptor:v140 aliasing:1];
      v151 = [v324 objectAtIndexedSubscript:1];
      v286 = v142;
      v152 = [v151 ndArrayWithCommandBuffer:v368 descriptor:v142 aliasing:1];

      v153 = [v21 mhaMatMulKernelWithScale];
      v282 = v150;
      v391[0] = v150;
      v391[1] = v319;
      v154 = [MEMORY[0x277CBEA60] arrayWithObjects:v391 count:2];
      v281 = v152;
      [v153 encodeToCommandBuffer:v368 sourceArrays:v154 destinationArray:v152];

      v155 = [v324 objectAtIndexedSubscript:0];
      v156 = [v155 data];
      v390[0] = v156;
      v157 = [v324 objectAtIndexedSubscript:1];
      v158 = [v157 data];
      v390[1] = v158;
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
        v163 = [v347 mhaHasZeroAttention];
        v348 = [v347 mhaHasAttnBias];
        v164 = [v347 batchSize];
        v165 = 0;
        v338 = v164 * v331;
        v341 = v164;
        v335 = v348 + v163;
        v166 = 1;
        do
        {
          v343 = v166;
          v167 = [obj objectAtIndexedSubscript:v165 + 1];
          v168 = [v167 descriptor];
          v169 = [v168 shape];
          v170 = 1;
          v171 = [v169 objectAtIndexedSubscript:1];
          v172 = [v171 unsignedIntegerValue];

          v173 = [v347 mhaModelDimension];
          v366 = [v365 objectAtIndexedSubscript:v165 + 1];
          v358 = v338 * v173;
          v360 = v172;
          v355 = v335 + v172;
          v352 = v173 * v341;
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
            v178 = [(MLCDeviceGPU *)v369 gpuPipelineStatesConcatFloat];
            v179 = [v178 objectAtIndexedSubscript:v20];
            v180 = [v179 maxTotalThreadsPerThreadgroup];

            v181 = v375;
            if (v180 <= v375)
            {
              v184 = SHIDWORD(v375);
              v182 = 1;
              v181 = v180;
              v183 = (v180 + v375 - 1) / v180;
            }

            else
            {
              v182 = v180 / v375 >= SHIDWORD(v375) ? SHIDWORD(v375) : v180 / v375;
              v183 = 1;
              v184 = (SHIDWORD(v375) + v182 - 1) / v182;
            }

            v185 = v376;
            v186 = [v368 computeCommandEncoderWithDispatchType:0];
            v187 = [(MLCDeviceGPU *)v369 gpuPipelineStatesConcatFloat];
            v188 = [v187 objectAtIndexedSubscript:contexta];
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

            v189 = v348 & v170;
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
          v195 = [v193 mhaMatrixDescriptors];
          v361 = [v195 objectAtIndexedSubscript:v190 + 2];

          v196 = objc_alloc(MEMORY[0x277CD7250]);
          v197 = [v365 objectAtIndexedSubscript:v191];
          v356 = [v196 initWithBuffer:v197 descriptor:v361];

          v198 = [v193 mhaNDArrayDescriptors];
          v353 = [v198 objectAtIndexedSubscript:v190 + 2];

          v349 = [v356 ndArrayWithCommandBuffer:v194 descriptor:v353 aliasing:1];
          v339 = [v349 descriptor];
          [v339 transposeDimension:0 withDimension:1];
          v367 = [v349 arrayViewWithCommandBuffer:v194 descriptor:v339 aliasing:1];
          v199 = [v193 mhaMatrixDescriptors];
          v200 = [v199 objectAtIndexedSubscript:v190 + 1];

          v201 = objc_alloc(MEMORY[0x277CD7250]);
          v202 = [v193 exportableState];
          v203 = [v202 objectAtIndexedSubscript:v191];
          v359 = v200;
          v336 = [v201 initWithBuffer:v203 descriptor:v200];

          v204 = [v193 mhaNDArrayDescriptors];
          v205 = [v204 objectAtIndexedSubscript:v190 + 1];

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

          v214 = [v210 mhaNDArrayDescriptors];
          v215 = [v214 objectAtIndexedSubscript:v190];

          v216 = [v213 ndArrayWithCommandBuffer:v206 descriptor:v215 aliasing:1];
          v217 = [v210 mhaMatMulKernel];
          v389[0] = v367;
          v389[1] = v334;
          v218 = [MEMORY[0x277CBEA60] arrayWithObjects:v389 count:2];
          [v217 encodeToCommandBuffer:v206 sourceArrays:v218 destinationArray:v216];

          v20 = contexta;
          v192 = 0x277CBE000uLL;
        }

        if (v346)
        {
          v194 = v368;
          v219 = [MEMORY[0x277CD72B0] temporaryMatrixWithCommandBuffer:v368 matrixDescriptor:v359];
          v193 = v347;
        }

        else
        {
          v193 = v347;
          v220 = [v347 gradientState];
          v221 = [v220 count];

          v194 = v368;
          if (v221 <= v191)
          {
            v223 = [v347 exportableState];
            v224 = [v223 objectAtIndexedSubscript:v191];
            v225 = [v351 newBufferWithLength:objc_msgSend(v224 options:{"length"), +[MLCGPUHelper mtlResourceOptions](MLCGPUHelper, "mtlResourceOptions")}];

            v219 = [objc_alloc(MEMORY[0x277CD7250]) initWithBuffer:v225 descriptor:v359];
          }

          else
          {
            v222 = [v347 gradientState];
            v219 = [v222 objectAtIndexedSubscript:v191];
          }
        }

        v357 = v219;
        [v364 setPreferPackedRows:1];
        v362 = [v219 ndArrayWithCommandBuffer:v194 descriptor:v364 aliasing:1];
        v226 = [v367 descriptor];
        [v226 transposeDimension:0 withDimension:1];
        v227 = [v367 arrayViewWithCommandBuffer:v194 descriptor:v226 aliasing:1];
        if (v191 == 3)
        {
          v228 = [v193 source];
        }

        else
        {
          v229 = [v193 mhaSourcesQKV];
          v228 = [v229 objectAtIndexedSubscript:v191];
        }

        v230 = [v193 mhaMatMulKernel];
        v354 = v227;
        v388[0] = v227;
        v350 = v228;
        v388[1] = v228;
        v231 = [*(v192 + 2656) arrayWithObjects:v388 count:2];
        v232 = [v230 encodeToCommandBuffer:v194 sourceArrays:v231];

        v233 = [v193 mhaReduceSumKernels];
        v234 = [v233 objectAtIndexedSubscript:0];
        [v234 encodeToCommandBuffer:v194 sourceArray:v232 destinationArray:v362];

        v235 = [v193 gradientState];
        v236 = v357;
        [v235 setObject:v357 atIndexedSubscript:v191];

        if ([v193 mhaHasBias])
        {
          v237 = [v193 mhaModelDimension];
          v238 = [v193 mhaMatrixDescriptorsForBias];
          v239 = [v238 objectAtIndexedSubscript:3];

          v340 = v232;
          v342 = v190;
          v337 = v239;
          if (v346)
          {
            v240 = [MEMORY[0x277CD72B0] temporaryMatrixWithCommandBuffer:v194 matrixDescriptor:v239];
          }

          else
          {
            v241 = [v193 gradientState];
            v242 = [v241 count];

            if (v242 < 5)
            {
              v243 = [v351 newBufferWithLength:v237 * v331 options:{+[MLCGPUHelper mtlResourceOptions](MLCGPUHelper, "mtlResourceOptions")}];
              v244 = [objc_alloc(MEMORY[0x277CD7250]) initWithBuffer:v243 descriptor:v239];
            }

            else
            {
              v243 = [v193 gradientState];
              v244 = [v243 objectAtIndexedSubscript:v191 + 4];
            }

            v240 = v244;

            v194 = v368;
          }

          v245 = [v193 mhaNDArrayDescriptorsForBias];
          v246 = [v245 objectAtIndexedSubscript:3];

          v247 = [v240 ndArrayWithCommandBuffer:v194 descriptor:v246 aliasing:1];
          v248 = v367;
          v249 = [v193 mhaReduceSumKernels];
          v250 = [v249 objectAtIndexedSubscript:0];
          v251 = [v250 encodeToCommandBuffer:v194 sourceArray:v248];

          v252 = [v347 mhaReduceSumKernels];
          v253 = [v252 objectAtIndexedSubscript:1];
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
          v257 = [v193 mhaModelDimension];
          v258 = [v193 batchSize];
          v259 = MEMORY[0x277CD7258];
          v260 = [v327 descriptor];
          v261 = [v259 matrixDescriptorWithRows:1 columns:v257 rowBytes:v257 * v331 dataType:{GPU_GetDataType(objc_msgSend(v260, "dataType"))}];

          if (v346)
          {
            v262 = [MEMORY[0x277CD72B0] temporaryMatrixWithCommandBuffer:v194 matrixDescriptor:v261];
          }

          else
          {
            v263 = [v193 gradientState];
            v264 = v193;
            v265 = [v263 count];

            if (v265 < 5)
            {
              v266 = [v351 newBufferWithLength:v257 * v331 options:{+[MLCGPUHelper mtlResourceOptions](MLCGPUHelper, "mtlResourceOptions")}];
              v269 = [objc_alloc(MEMORY[0x277CD7250]) initWithBuffer:v266 descriptor:v261];
            }

            else
            {
              v266 = [v264 gradientState];
              v267 = [v264 mhaHasBias];
              v268 = 4;
              if (v267)
              {
                v268 = 8;
              }

              v269 = [v266 objectAtIndexedSubscript:v268 | v254];
            }

            v262 = v269;

            v194 = v368;
          }

          v270 = [v332 objectAtIndexedSubscript:v254];
          v271 = [v262 data];
          [(MLCDeviceGPU *)v369 reduceAcrossBatchForSource:v270 result:v271 batchSize:v258 batchStride:v257 numEntries:v257 deviceIndex:v20 commandBuffer:v194];

          v193 = v347;
          v272 = [v347 mhaHasBias];
          v273 = 4;
          if (!v272)
          {
            v273 = 0;
          }

          [v344 setObject:v262 atIndexedSubscript:v273 | v254];

          v255 = 0;
          v254 = 1;
        }

        while ((v256 & 1) != 0);
      }

      v274 = [v193 gradientState];
      v275 = [v274 count];

      if (v275 <= 4)
      {
        v276 = [v193 gradientState];
        [v276 addObjectsFromArray:v344];
      }

      ++v20;
      self = v369;
      v15 = v280;
    }

    while (v20 < [(MLCDeviceGPU *)v369 numDevicesToUse]);
  }

  objc_autoreleasePoolPop(v278);
  v277 = *MEMORY[0x277D85DE8];
}

- (void)dispatchForwardLossLayer:(id)a3 sourceTensor:(id)a4 labelsTensor:(id)a5 labelsTensorStride:(unint64_t)a6 weightsTensor:(id)a7 resultTensor:(id)a8 resultStateIsTemporary:(BOOL)a9 forTraining:(BOOL)a10
{
  v67 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a7;
  v18 = a8;
  v66 = v15;
  [v15 deviceMemory];
  v70 = v69 = v16;
  v65 = [v16 deviceMemory];
  v68 = v17;
  v63 = [v17 deviceMemory];
  [(MLCDeviceGPU *)self allocateResultTensor:v18];
  v64 = [v18 deviceMemory];
  if ([(MLCDeviceGPU *)self numDevicesToUse])
  {
    v19 = 0;
    v20 = 0x278A68000uLL;
    v82 = self;
    v76 = v18;
    do
    {
      v21 = [v67 objectAtIndexedSubscript:v19];
      v22 = [(MLCDeviceGPU *)self gpuCommandBufferList];
      v84 = [v22 objectAtIndexedSubscript:v19];

      v83 = [v21 forwardKernel];
      v81 = [v21 reduceLossKernel];
      v23 = *(v20 + 2936);
      v79 = [v21 batchSize];
      v24 = [(MLCDeviceGPU *)self gpuWriteTensorKernelList];
      v25 = [v24 objectAtIndexedSubscript:v19];
      v26 = [v70 objectAtIndexedSubscript:v19];
      v27 = [v66 descriptor];
      v80 = [v23 allocateAndCopyToTemporaryMPSImageBatchForTensor:v66 commandBuffer:v84 batchSize:v79 copyingKernel:v25 sourceMTLBuffer:v26 MLCDataType:objc_msgSend(v27 heapAllocator:{"dataType"), 0}];

      v77 = *(v20 + 2936);
      v28 = [v21 batchSize];
      v29 = [(MLCDeviceGPU *)self gpuWriteTensorKernelList];
      v30 = [v29 objectAtIndexedSubscript:v19];
      v31 = [v65 objectAtIndexedSubscript:v19];
      v32 = [v69 descriptor];
      v78 = [v77 allocateAndCopyToTemporaryMPSImageBatchForTensor:v69 commandBuffer:v84 batchSize:v28 copyingKernel:v30 sourceMTLBuffer:v31 MLCDataType:objc_msgSend(v32 heapAllocator:{"dataType"), 0}];

      if (v68)
      {
        v33 = [v21 batchSize];
        v34 = [(MLCDeviceGPU *)v82 gpuWriteTensorKernelList];
        v35 = [v34 objectAtIndexedSubscript:v19];
        v36 = [v63 objectAtIndexedSubscript:v19];
        v37 = [v68 descriptor];
        v38 = +[MLCGPUHelper allocateAndCopyToTemporaryMPSImageBatchForTensor:commandBuffer:batchSize:copyingKernel:sourceMTLBuffer:MLCDataType:heapAllocator:](MLCGPUHelper, "allocateAndCopyToTemporaryMPSImageBatchForTensor:commandBuffer:batchSize:copyingKernel:sourceMTLBuffer:MLCDataType:heapAllocator:", v68, v84, v33, v35, v36, [v37 dataType], 0);
      }

      else
      {
        v38 = 0;
      }

      if (a10)
      {
        v85[0] = 0;
        v39 = [v83 encodeBatchToCommandBuffer:v84 sourceImages:v80 labels:v78 weights:v38 destinationStates:v85 destinationStateIsTemporary:a9];
        v74 = v85[0];
      }

      else
      {
        v39 = [v83 encodeBatchToCommandBuffer:v84 sourceImages:v80 labels:v78 weights:v38 destinationStates:0 destinationStateIsTemporary:a9];
        v74 = 0;
      }

      v40 = v82;
      v75 = v38;
      if (v81)
      {
        v41 = [MEMORY[0x277CD72A8] defaultAllocator];
        [v81 setDestinationImageAllocator:v41];

        v42 = [v81 encodeBatchToCommandBuffer:v84 sourceImages:v39];
      }

      else
      {
        v42 = v39;
      }

      v43 = v42;
      if (-[MLCDeviceGPU numDevicesToUse](v82, "numDevicesToUse") >= 2 && [v83 reductionType] == 2)
      {
        v44 = objc_autoreleasePoolPush();
        v45 = [v21 secondaryGradientKernel];
        GPU_ScaleMPSImageBatchWithKernel(v45, v84, v43, 1);

        objc_autoreleasePoolPop(v44);
      }

      v72 = v43;
      v73 = v39;
      context = objc_autoreleasePoolPush();
      v46 = [v76 descriptor];
      v47 = [v46 shape];
      v48 = [v47 objectAtIndexedSubscript:0];
      v49 = [v48 unsignedIntegerValue];
      if (v49 >= [v21 batchSize])
      {
        v53 = [v21 batchSize];
        v55 = 0x278A68000uLL;
        v54 = v76;
      }

      else
      {
        v50 = [v76 descriptor];
        v51 = [v50 shape];
        v52 = [v51 objectAtIndexedSubscript:0];
        v53 = [v52 unsignedIntegerValue];

        v54 = v76;
        v40 = v82;

        v55 = 0x278A68000;
      }

      v56 = *(v55 + 2936);
      v57 = [(MLCDeviceGPU *)v40 gpuReadTensorKernelList];
      v58 = [v57 objectAtIndexedSubscript:v19];
      v59 = [v72 subarrayWithRange:{0, v53}];
      v60 = [v64 objectAtIndexedSubscript:v19];
      v61 = [v54 descriptor];
      [v56 copyMPSImageBatchToMTLBuffer:v58 commandBuffer:v84 sourceImageBatch:v59 destinationMTLBuffer:v60 MLCDataType:{objc_msgSend(v61, "dataType")}];

      GPU_clearTemporaryImageBatchReadCount(v72);
      objc_autoreleasePoolPop(context);
      if (a10)
      {
        [v21 setGradientState:v74];
        v62 = [v70 objectAtIndexedSubscript:v19];
        [v21 setSource:v62];
      }

      ++v19;
      self = v82;
      v20 = 0x278A68000;
      v18 = v76;
    }

    while (v19 < [(MLCDeviceGPU *)v82 numDevicesToUse]);
  }
}

- (void)dispatchGradientLayer:(id)a3 sourceGradientTensor:(id)a4 resultGradientTensor:(id)a5
{
  v96[2] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v90 = v9;
  v85 = [v9 deviceMemory];
  [(MLCDeviceGPU *)self allocateResultTensor:v10];
  v92 = v10;
  v84 = [v10 deviceMemory];
  if ([(MLCDeviceGPU *)self numDevicesToUse])
  {
    v11 = 0;
    v83 = v8;
    v94 = self;
    do
    {
      v12 = [v8 objectAtIndexedSubscript:v11];
      v13 = [(MLCDeviceGPU *)self gpuCommandBufferList];
      v14 = [v13 objectAtIndexedSubscript:v11];

      v15 = [v12 gradientKernel];
      if ([v12 isMPSKernel])
      {
        v91 = v14;
        v93 = v15;
        if ([v12 isMPSGraph])
        {
          v16 = [v92 descriptor];
          v17 = [MLCTensor tensorWithDescriptor:v16];

          v18 = [v12 source];
          v86 = v17;
          v19 = [v17 deviceMemory];
          [v19 setObject:v18 atIndexedSubscript:v11];

          v20 = [v12 transposedTensors];
          v21 = [v20 objectAtIndexedSubscript:0];

          v22 = [(MLCDeviceGPU *)self gpuHeapTemporaryResourceAllocator];
          v23 = [v22 objectAtIndexedSubscript:{objc_msgSend(v12, "temporaryHeapIndex")}];
          v24 = [v12 source];
          v25 = [v23 allocateBuffer:{objc_msgSend(v24, "length")}];
          v88 = v21;
          v26 = [v21 deviceMemory];
          [v26 setObject:v25 atIndexedSubscript:v11];

          if ([(MLCDeviceGPU *)self numDevicesToUse]< 2)
          {
            v27 = [v12 transposeDeviceOps];
            v95 = v27;
            v28 = [MEMORY[0x277CBEA60] arrayWithObjects:&v95 count:1];
            v32 = [v28 copy];
          }

          else
          {
            v27 = [v8 objectAtIndexedSubscript:0];
            v28 = [v27 transposeDeviceOps];
            v96[0] = v28;
            v29 = [v8 objectAtIndexedSubscript:1];
            v30 = [v29 transposeDeviceOps];
            v96[1] = v30;
            v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v96 count:2];
            v32 = [v31 copy];
          }

          contexta = v32;

          v55 = [v12 batchSize];
          v56 = [v32 objectAtIndexedSubscript:v11];
          [v56 setBatchSize:v55];

          [(MLCDeviceGPU *)self dispatchTransposeKernel:v32 sourceTensor:v86 resultTensor:v88 deviceIndex:v11 forward:1];
          v57 = [v12 transposedTensors];
          v58 = [v57 objectAtIndexedSubscript:1];

          v59 = [(MLCDeviceGPU *)self gpuHeapTemporaryResourceAllocator];
          v60 = [v59 objectAtIndexedSubscript:{objc_msgSend(v12, "temporaryHeapIndex")}];
          v61 = [v85 objectAtIndexedSubscript:v11];
          v62 = [v60 allocateBuffer:{objc_msgSend(v61, "length")}];
          v63 = [v58 deviceMemory];
          [v63 setObject:v62 atIndexedSubscript:v11];

          v80 = v58;
          [(MLCDeviceGPU *)v94 dispatchTransposeKernel:v32 sourceTensor:v90 resultTensor:v58 deviceIndex:v11 forward:1];
          v64 = [v12 transposedTensors];
          v65 = [v64 objectAtIndexedSubscript:2];

          v66 = [(MLCDeviceGPU *)v94 gpuHeapTemporaryResourceAllocator];
          v67 = [v66 objectAtIndexedSubscript:{objc_msgSend(v12, "temporaryHeapIndex")}];
          v68 = [v84 objectAtIndexedSubscript:v11];
          v69 = [v67 allocateBuffer:{objc_msgSend(v68, "length")}];
          v70 = [v65 deviceMemory];
          [v70 setObject:v69 atIndexedSubscript:v11];

          v71 = [v88 deviceMemory];
          v72 = [v71 objectAtIndexedSubscript:v11];
          v73 = [v58 deviceMemory];
          v74 = [v73 objectAtIndexedSubscript:v11];
          v75 = [v65 deviceMemory];
          v76 = [v75 objectAtIndexedSubscript:v11];
          v77 = [v90 descriptor];
          -[MLCDeviceGPU dispatchGradientMPSGraphWithDeviceOps:sourceBuffer:souceGradientBuffer:resultGradientBuffer:deviceIndex:dataType:](v94, "dispatchGradientMPSGraphWithDeviceOps:sourceBuffer:souceGradientBuffer:resultGradientBuffer:deviceIndex:dataType:", v12, v72, v74, v76, v11, GPU_GetDataType([v77 dataType]));

          self = v94;
          [(MLCDeviceGPU *)v94 dispatchTransposeKernel:contexta sourceTensor:v65 resultTensor:v92 deviceIndex:v11 forward:0];

          v8 = v83;
          v14 = v91;
          v15 = v93;
        }

        else
        {
          context = objc_autoreleasePoolPush();
          v34 = [v12 batchSize];
          v35 = [(MLCDeviceGPU *)self gpuWriteTensorKernelList];
          v36 = [v35 objectAtIndexedSubscript:v11];
          v37 = [v85 objectAtIndexedSubscript:v11];
          v38 = [v90 descriptor];
          v39 = [v38 dataType];
          v40 = [v15 destinationImageAllocator];
          v87 = [MLCGPUHelper allocateAndCopyToTemporaryMPSImageBatchForTensor:v90 commandBuffer:v91 batchSize:v34 copyingKernel:v36 sourceMTLBuffer:v37 MLCDataType:v39 heapAllocator:v40];

          v41 = v92;
          [v12 source];
          v79 = v89 = v12;
          v42 = [v12 batchSize];
          v43 = [(MLCDeviceGPU *)v94 gpuWriteTensorKernelList];
          v44 = [v43 objectAtIndexedSubscript:v11];
          v45 = [v41 descriptor];
          v46 = [v45 dataType];
          v47 = [v93 destinationImageAllocator];
          v48 = [MLCGPUHelper allocateAndCopyToTemporaryMPSImageBatchForTensor:v41 commandBuffer:v91 batchSize:v42 copyingKernel:v44 sourceMTLBuffer:v79 MLCDataType:v46 heapAllocator:v47];

          v49 = [v89 gradientState];
          v14 = v91;
          v50 = [v93 encodeBatchToCommandBuffer:v91 sourceGradients:v87 sourceImages:v48 gradientStates:v49];

          v51 = [(MLCDeviceGPU *)v94 gpuReadTensorKernelList];
          v52 = [v51 objectAtIndexedSubscript:v11];
          v53 = [v84 objectAtIndexedSubscript:v11];
          v54 = [v41 descriptor];

          +[MLCGPUHelper copyMPSImageBatchToMTLBuffer:commandBuffer:sourceImageBatch:destinationMTLBuffer:MLCDataType:](MLCGPUHelper, "copyMPSImageBatchToMTLBuffer:commandBuffer:sourceImageBatch:destinationMTLBuffer:MLCDataType:", v52, v91, v50, v53, [v54 dataType]);
          v15 = v93;

          self = v94;
          v8 = v83;

          v12 = v89;
          objc_autoreleasePoolPop(context);
        }
      }

      else
      {
        v33 = [v12 metalKernelType];
        if (v33 > 8)
        {
          if (v33 <= 14)
          {
            switch(v33)
            {
              case 9:
                [(MLCDeviceGPU *)self dispatchGradientGroupNormalizationKernel:v8 sourceGradientTensor:v90 resultGradientTensor:v92 deviceIndex:v11];
                break;
              case 10:
                [(MLCDeviceGPU *)self dispatchGradientResizeKernel:v8 sourceGradientTensor:v90 resultGradientTensor:v92 deviceIndex:v11];
                break;
              case 12:
                [(MLCDeviceGPU *)self dispatchTransposeKernel:v8 sourceTensor:v90 resultTensor:v92 deviceIndex:v11 forward:0];
                break;
            }
          }

          else if ((v33 - 15) >= 3)
          {
            if (v33 == 18)
            {
              [(MLCDeviceGPU *)self dispatchGradientGramMatrixKernel:v8 sourceGradientTensor:v90 resultGradientTensor:v92 deviceIndex:v11];
            }
          }

          else
          {
            [(MLCDeviceGPU *)self dispatchGradientPoolingKernel:v8 sourceGradientTensor:v90 resultGradientTensor:v92 deviceIndex:v11];
          }
        }

        else if (v33 > 3)
        {
          if ((v33 - 5) < 2)
          {
            [(MLCDeviceGPU *)self dispatchGradientInstanceNormalizationKernel:v8 sourceGradientTensor:v90 resultGradientTensor:v92 deviceIndex:v11];
          }

          else if ((v33 - 7) >= 2)
          {
            if (v33 == 4)
            {
              [(MLCDeviceGPU *)self dispatchGradientLayerNormalizationKernel:v8 sourceGradientTensor:v90 resultGradientTensor:v92 deviceIndex:v11];
            }
          }

          else
          {
            [(MLCDeviceGPU *)self dispatchGradientBatchNormalizationKernel:v8 sourceGradientTensor:v90 resultGradientTensor:v92 deviceIndex:v11];
          }
        }

        else
        {
          switch(v33)
          {
            case 1:
              [(MLCDeviceGPU *)self dispatchGradientActivationsKernel:v8 sourceGradientTensor:v90 resultGradientTensor:v92 deviceIndex:v11];
              break;
            case 2:
              [(MLCDeviceGPU *)self dispatchGradientPaddingKernel:v8 sourceGradientTensor:v90 resultGradientTensor:v92 deviceIndex:v11];
              break;
            case 3:
              [(MLCDeviceGPU *)self dispatchGradientSoftmaxKernel:v8 sourceGradientTensor:v90 resultGradientTensor:v92 deviceIndex:v11];
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

- (void)dispatchGradientLayer:(id)a3 sourceGradientTensor:(id)a4 resultGradientTensor:(id)a5 secondaryResultGradientTensor:(id)a6
{
  v17 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if (v12)
  {
    v13 = [v17 objectAtIndexedSubscript:0];
    v14 = [v13 useSourceGradientDeviceMemoryForResultGradientTensor];
    v15 = [v13 useSourceGradientDeviceMemoryForSecondaryResultGradientTensor];
    if (v14)
    {
      [(MLCDeviceGPU *)self shareDeviceMemoryWithResultTensor:v11 sourceTensor:v10];
    }

    else
    {
      [(MLCDeviceGPU *)self allocateResultTensor:v11];
    }

    if (v15)
    {
      [(MLCDeviceGPU *)self shareDeviceMemoryWithResultTensor:v12 sourceTensor:v10];
    }

    else
    {
      [(MLCDeviceGPU *)self allocateResultTensor:v12];
    }
  }

  else
  {
    [(MLCDeviceGPU *)self allocateResultTensor:v11];
  }

  if ([(MLCDeviceGPU *)self numDevicesToUse])
  {
    v16 = 0;
    do
    {
      if (v12)
      {
        [(MLCDeviceGPU *)self dispatchGradientArithmeticBinaryKernel:v17 sourceGradientTensor:v10 resultGradientTensor:v11 secondaryResultGradientTensor:v12 deviceIndex:v16];
      }

      else
      {
        [(MLCDeviceGPU *)self dispatchGradientArithmeticUnaryKernel:v17 sourceGradientTensor:v10 resultGradientTensor:v11 deviceIndex:v16];
      }

      ++v16;
    }

    while (v16 < [(MLCDeviceGPU *)self numDevicesToUse]);
  }
}

- (void)dispatchGradientSliceLayer:(id)a3 sourceGradientTensor:(id)a4 resultGradientTensor:(id)a5
{
  v81 = *MEMORY[0x277D85DE8];
  v64 = a3;
  v8 = a4;
  v9 = a5;
  v63 = [v8 deviceMemory];
  [(MLCDeviceGPU *)self allocateResultTensor:v9];
  v62 = [v9 deviceMemory];
  if ([(MLCDeviceGPU *)self numDevicesToUse])
  {
    v10 = 0;
    v60 = &v74;
    v61 = self;
    do
    {
      v11 = [v64 objectAtIndexedSubscript:{v10, v60}];
      v12 = [(MLCDeviceGPU *)self gpuCommandBufferList];
      v66 = [v12 objectAtIndexedSubscript:v10];

      v67 = v10;
      [(MLCDeviceGPU *)self dispatchFillTensor:v9 deviceIndex:v10];
      context = objc_autoreleasePoolPush();
      v76 = 0;
      v74 = 0u;
      memset(v75, 0, sizeof(v75));
      memset(v73, 0, sizeof(v73));
      v13 = [v9 descriptor];
      v14 = [v13 shape];
      v68 = [v14 count];

      v15 = [v9 descriptor];
      v16 = [v15 shape];
      v17 = [v16 count];

      if (v17)
      {
        v18 = 0;
        v19 = v75 - v68;
        do
        {
          v20 = [v11 stride];
          v21 = [v20 objectAtIndexedSubscript:v18];
          *(v19 - 12) = [v21 unsignedIntegerValue];

          *(v19 - 8) = 0;
          v22 = [v8 descriptor];
          v23 = [v22 shape];
          v24 = [v23 objectAtIndexedSubscript:v18];
          *(v19 - 4) = [v24 unsignedIntegerValue];

          v25 = [v8 descriptor];
          v26 = [v25 stride];
          v27 = [v26 objectAtIndexedSubscript:v18];
          *v19 = [v27 unsignedIntegerValue] >> 2;

          v28 = [v11 begin];
          v29 = [v28 objectAtIndexedSubscript:v18];
          v19[4] = [v29 unsignedIntegerValue];

          v30 = [v9 descriptor];
          v31 = [v30 shape];
          v32 = [v31 objectAtIndexedSubscript:v18];
          v19[8] = [v32 unsignedIntegerValue];

          v33 = [v9 descriptor];
          v34 = [v33 stride];
          v35 = [v34 objectAtIndexedSubscript:v18];
          v19[12] = [v35 unsignedIntegerValue] >> 2;

          ++v18;
          v36 = [v9 descriptor];
          v37 = [v36 shape];
          v38 = [v37 count];

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
      v42 = [v11 forwardKernel];
      v43 = [v42 maxTotalThreadsPerThreadgroup];

      v44 = 0;
      v79 = xmmword_238D45D80;
      v80 = unk_238D45D90;
      v77 = xmmword_238D45D80;
      v78 = unk_238D45D90;
      do
      {
        v45 = *(&v75[1] + v44 + 3);
        v46 = &v79 + 8 * v44;
        if (v43 >= v45)
        {
          *(v46 + 3) = v45;
          v47 = v45;
        }

        else if (v45 % v43)
        {
          *(v46 + 3) = 1;
          v47 = 1;
        }

        else
        {
          *(v46 + 3) = v43;
          v47 = v43;
        }

        v78.i64[v44 + 1] = (v45 + v47 - 1) / v47;
        v48 = v44 + 3;
        --v44;
        v43 /= v47;
      }

      while (v48 > 1);
      v49 = [v9 descriptor];
      v50 = [v49 shape];
      v51 = [v50 count];

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
      v56 = [v11 forwardKernel];
      [v55 setComputePipelineState:v56];

      v57 = [v63 objectAtIndexedSubscript:v67];
      [v55 setBuffer:v57 offset:0 atIndex:0];

      v58 = [v62 objectAtIndexedSubscript:v67];
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
      self = v61;
    }

    while (v67 + 1 < [(MLCDeviceGPU *)v61 numDevicesToUse]);
  }

  v59 = *MEMORY[0x277D85DE8];
}

- (void)dispatchGradientLossLayer:(id)a3 sourceGradientTensor:(id)a4 labelsTensor:(id)a5 labelsTensorStride:(unint64_t)a6 weightsTensor:(id)a7 resultGradientTensor:(id)a8
{
  v69 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v16 = a8;
  v67 = [v13 deviceMemory];
  v68 = v14;
  v17 = v14;
  v18 = self;
  v66 = [v17 deviceMemory];
  v64 = [v15 deviceMemory];
  [(MLCDeviceGPU *)self allocateResultTensor:v16];
  v73 = v16;
  v65 = [v16 deviceMemory];
  if ([(MLCDeviceGPU *)self numDevicesToUse])
  {
    v19 = 0;
    v71 = v15;
    v72 = v13;
    v81 = self;
    do
    {
      v20 = [v69 objectAtIndexedSubscript:v19];
      v21 = [(MLCDeviceGPU *)v18 gpuCommandBufferList];
      v22 = [v21 objectAtIndexedSubscript:v19];

      v23 = [v20 gradientKernel];
      v24 = [MEMORY[0x277CD72A8] defaultAllocator];
      v80 = v23;
      [v23 setDestinationImageAllocator:v24];

      v25 = [v20 batchSize];
      v26 = [(MLCDeviceGPU *)v18 gpuWriteTensorKernelList];
      v27 = [v26 objectAtIndexedSubscript:v19];
      v28 = [v20 source];
      v29 = [v73 descriptor];
      v70 = v22;
      v79 = +[MLCGPUHelper allocateAndCopyToTemporaryMPSImageBatchForTensor:commandBuffer:batchSize:copyingKernel:sourceMTLBuffer:MLCDataType:heapAllocator:](MLCGPUHelper, "allocateAndCopyToTemporaryMPSImageBatchForTensor:commandBuffer:batchSize:copyingKernel:sourceMTLBuffer:MLCDataType:heapAllocator:", v73, v22, v25, v27, v28, [v29 dataType], 0);

      v30 = [v72 descriptor];
      v31 = [v30 shape];
      v32 = [v31 objectAtIndexedSubscript:0];
      v33 = [v32 unsignedIntegerValue];
      v74 = v20;
      if (v33 >= [v20 batchSize])
      {
        v38 = [v20 batchSize];
        v36 = v72;
      }

      else
      {
        v34 = [v72 descriptor];
        v35 = [v34 shape];
        [v35 objectAtIndexedSubscript:0];
        v37 = v36 = v72;
        v38 = [v37 unsignedIntegerValue];
      }

      v39 = [(MLCDeviceGPU *)v81 gpuWriteTensorKernelList];
      v40 = [v39 objectAtIndexedSubscript:v19];
      v41 = [v67 objectAtIndexedSubscript:v19];
      v42 = [v36 descriptor];
      v78 = +[MLCGPUHelper allocateAndCopyToTemporaryMPSImageBatchForTensor:commandBuffer:batchSize:copyingKernel:sourceMTLBuffer:MLCDataType:heapAllocator:](MLCGPUHelper, "allocateAndCopyToTemporaryMPSImageBatchForTensor:commandBuffer:batchSize:copyingKernel:sourceMTLBuffer:MLCDataType:heapAllocator:", v36, v70, v38, v40, v41, [v42 dataType], 0);

      v43 = [v74 batchSize];
      v44 = [(MLCDeviceGPU *)v81 gpuWriteTensorKernelList];
      v45 = [v44 objectAtIndexedSubscript:v19];
      v46 = [v66 objectAtIndexedSubscript:v19];
      v47 = [v68 descriptor];
      v77 = +[MLCGPUHelper allocateAndCopyToTemporaryMPSImageBatchForTensor:commandBuffer:batchSize:copyingKernel:sourceMTLBuffer:MLCDataType:heapAllocator:](MLCGPUHelper, "allocateAndCopyToTemporaryMPSImageBatchForTensor:commandBuffer:batchSize:copyingKernel:sourceMTLBuffer:MLCDataType:heapAllocator:", v68, v70, v43, v45, v46, [v47 dataType], 0);

      if (v71)
      {
        v75 = [v74 batchSize];
        v48 = [(MLCDeviceGPU *)v81 gpuWriteTensorKernelList];
        v49 = [v48 objectAtIndexedSubscript:v19];
        v50 = [v64 objectAtIndexedSubscript:v19];
        v51 = [v71 descriptor];
        v52 = v70;
        v76 = +[MLCGPUHelper allocateAndCopyToTemporaryMPSImageBatchForTensor:commandBuffer:batchSize:copyingKernel:sourceMTLBuffer:MLCDataType:heapAllocator:](MLCGPUHelper, "allocateAndCopyToTemporaryMPSImageBatchForTensor:commandBuffer:batchSize:copyingKernel:sourceMTLBuffer:MLCDataType:heapAllocator:", v71, v70, v75, v49, v50, [v51 dataType], 0);
      }

      else
      {
        v52 = v70;
        v76 = 0;
      }

      v53 = [v74 reduceLossKernel];

      if (v53)
      {
        v54 = v52;
        v55 = +[MLCGPUHelper allocateTemporaryMPSImageBatchForTensor:commandBuffer:kernel:batchSize:](MLCGPUHelper, "allocateTemporaryMPSImageBatchForTensor:commandBuffer:kernel:batchSize:", v73, v52, v80, [v74 batchSize]);
        [(MLCDeviceGPU *)v81 dispatchPadChannelsKernel:v69 sourceImageBatch:v78 resultImageBatch:v55 deviceIndex:v19];
      }

      else
      {
        v55 = v78;
        v54 = v52;
      }

      v56 = [v74 gradientState];
      v57 = [v80 encodeBatchToCommandBuffer:v54 sourceGradients:v55 sourceImages:v79 labels:v77 weights:v76 sourceStates:v56];

      GPU_clearTemporaryImageBatchReadCount(v55);
      if (-[MLCDeviceGPU numDevicesToUse](v81, "numDevicesToUse") >= 2 && [v80 reductionType] == 2)
      {
        MPSImageBatchIncrementReadCount(v57, 1);
        v58 = objc_autoreleasePoolPush();
        v59 = [v74 secondaryGradientKernel];
        GPU_ScaleMPSImageBatchWithKernel(v59, v54, v57, 1);

        objc_autoreleasePoolPop(v58);
      }

      v60 = [(MLCDeviceGPU *)v81 gpuReadTensorKernelList];
      v61 = [v60 objectAtIndexedSubscript:v19];
      v62 = [v65 objectAtIndexedSubscript:v19];
      v63 = [v73 descriptor];
      +[MLCGPUHelper copyMPSImageBatchToMTLBuffer:commandBuffer:sourceImageBatch:destinationMTLBuffer:MLCDataType:](MLCGPUHelper, "copyMPSImageBatchToMTLBuffer:commandBuffer:sourceImageBatch:destinationMTLBuffer:MLCDataType:", v61, v54, v57, v62, [v63 dataType]);

      v18 = v81;
      GPU_clearTemporaryImageBatchReadCount(v57);

      ++v19;
      v15 = v71;
      v13 = v72;
    }

    while (v19 < [(MLCDeviceGPU *)v81 numDevicesToUse]);
  }
}

- (void)dispatchForwardAndGradientLossLayer:(id)a3 sourceTensor:(id)a4 labelsTensor:(id)a5 labelsTensorStride:(unint64_t)a6 weightsTensor:(id)a7 resultTensor:(id)a8 resultGradientTensor:(id)a9
{
  v149 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a7;
  v17 = a8;
  v18 = a9;
  v146 = [v14 deviceMemory];
  v152 = v15;
  v145 = [v15 deviceMemory];
  v148 = v16;
  v139 = [v16 deviceMemory];
  [(MLCDeviceGPU *)self allocateResultTensor:v17];
  [(MLCDeviceGPU *)self allocateResultTensor:v18];
  v144 = [v17 deviceMemory];
  v147 = v18;
  v143 = [v18 deviceMemory];
  v151 = v17;
  v142 = [v17 descriptor];
  v150 = [v14 descriptor];
  if ([(MLCDeviceGPU *)self numDevicesToUse])
  {
    v153 = 0;
    v19 = 0;
    v141 = v14;
    v156 = self;
    while (1)
    {
      v155 = v19;
      v20 = [v149 objectAtIndexedSubscript:v19];
      v21 = [(MLCDeviceGPU *)self gpuCommandBufferList];
      v170 = [v21 objectAtIndexedSubscript:v19];

      v22 = [v20 combinedForwardAndGradientLossKernel];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      v159 = [v20 combinedForwardAndGradientLossKernel];
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
          [v159 scaleXY];
          v26 = v25;
          *&v27 = v25 / [(MLCDeviceGPU *)self numDevicesToUse];
          [v159 setScaleXY:v27];
          [v159 scaleWH];
          v29 = v28;
          *&v30 = v28 / [(MLCDeviceGPU *)self numDevicesToUse];
          [v159 setScaleWH:v30];
          [v159 scaleClass];
          v24 = v31;
          *&v32 = v31 / [(MLCDeviceGPU *)self numDevicesToUse];
          [v159 setScaleClass:v32];
        }

        v157 = v159;
        v159 = 0;
      }

      else
      {
        v157 = 0;
        v29 = 0.0;
        v26 = 0.0;
      }

      v33 = [v14 descriptor];
      v34 = [v33 shape];
      v35 = [v34 objectAtIndexedSubscript:0];
      v36 = [v35 unsignedIntegerValue];
      v160 = v20;
      if (v36 >= [v20 batchSize])
      {
        v41 = [v20 batchSize];
      }

      else
      {
        v37 = [v14 descriptor];
        v38 = [v37 shape];
        [v38 objectAtIndexedSubscript:0];
        v40 = v39 = self;
        v41 = [v40 unsignedIntegerValue];

        self = v39;
      }

      v42 = [(MLCDeviceGPU *)self gpuWriteTensorKernelList];
      v43 = [v42 objectAtIndexedSubscript:v19];
      v44 = [v146 objectAtIndexedSubscript:v19];
      v45 = [v14 descriptor];
      v154 = +[MLCGPUHelper allocateAndCopyToTemporaryMPSImageBatchForTensor:commandBuffer:batchSize:copyingKernel:sourceMTLBuffer:MLCDataType:heapAllocator:](MLCGPUHelper, "allocateAndCopyToTemporaryMPSImageBatchForTensor:commandBuffer:batchSize:copyingKernel:sourceMTLBuffer:MLCDataType:heapAllocator:", v14, v170, v41, v43, v44, [v45 dataType], 0);

      v46 = [(MLCDeviceGPU *)self gpuWriteTensorKernelList];
      v47 = [v46 objectAtIndexedSubscript:v19];
      v48 = [v145 objectAtIndexedSubscript:v19];
      v49 = [v152 descriptor];
      v169 = +[MLCGPUHelper allocateAndCopyToTemporaryMPSImageBatchForTensor:commandBuffer:batchSize:copyingKernel:sourceMTLBuffer:MLCDataType:heapAllocator:](MLCGPUHelper, "allocateAndCopyToTemporaryMPSImageBatchForTensor:commandBuffer:batchSize:copyingKernel:sourceMTLBuffer:MLCDataType:heapAllocator:", v152, v170, v41, v47, v48, [v49 dataType], 0);

      if (v148)
      {
        v50 = [(MLCDeviceGPU *)self gpuWriteTensorKernelList];
        v51 = [v50 objectAtIndexedSubscript:v19];
        v52 = [v139 objectAtIndexedSubscript:v19];
        v53 = [v148 descriptor];
        v168 = +[MLCGPUHelper allocateAndCopyToTemporaryMPSImageBatchForTensor:commandBuffer:batchSize:copyingKernel:sourceMTLBuffer:MLCDataType:heapAllocator:](MLCGPUHelper, "allocateAndCopyToTemporaryMPSImageBatchForTensor:commandBuffer:batchSize:copyingKernel:sourceMTLBuffer:MLCDataType:heapAllocator:", v148, v170, v41, v51, v52, [v53 dataType], 0);
      }

      else
      {
        v168 = 0;
      }

      v54 = v41;
      v55 = [v142 shape];
      v56 = [v55 count] != 1;
      v57 = [v142 shape];
      v58 = [v57 objectAtIndexedSubscript:v56];
      v59 = [v58 unsignedIntegerValue];

      v60 = [v160 reduceLossKernel];

      if (v60)
      {
        v61 = [v150 shape];
        v62 = [v61 objectAtIndexedSubscript:1];
        v59 = [v62 unsignedIntegerValue];
      }

      v63 = [v142 shape];
      v64 = [v63 count];

      if (v64 >= 3)
      {
        v67 = [v142 shape];
        v68 = [v67 count];

        v69 = [v142 shape];
        v70 = v69;
        if (v68 == 3)
        {
          v71 = [v69 objectAtIndexedSubscript:2];
          v66 = [v71 unsignedIntegerValue];
          v65 = 1;
        }

        else
        {
          v71 = [v69 objectAtIndexedSubscript:3];
          v66 = [v71 unsignedIntegerValue];
          v72 = [v142 shape];
          v73 = [v72 objectAtIndexedSubscript:2];
          v65 = [v73 unsignedIntegerValue];
        }
      }

      else
      {
        v65 = 1;
        v66 = 1;
      }

      v74 = [MEMORY[0x277CBEBF8] mutableCopy];
      v171 = v74;
      if ((v158 & 1) == 0)
      {
        break;
      }

      v75 = v65;
      v140 = v59;
      v76 = [v150 shape];
      v77 = [v76 objectAtIndexedSubscript:3];
      v164 = [v77 unsignedIntegerValue];
      v78 = [v150 shape];
      v79 = [v78 objectAtIndexedSubscript:2];
      context = [v79 unsignedIntegerValue];
      v80 = [v150 shape];
      v81 = [v80 objectAtIndexedSubscript:1];
      v161 = [v81 unsignedIntegerValue];

      v82 = [v152 data];
      v83 = [v82 bytes];

      if (v54)
      {
        v84 = 0;
        v85 = context * v164 * v161;
        v86 = 4 * v85;
        v87 = v83 + v85 * v54 * v153;
        v166 = v54;
        v88 = v75;
        do
        {
          v89 = [MEMORY[0x277CBEA90] dataWithBytes:v87 length:v86];
          v172 = v164;
          v173 = context;
          v174 = v161;
          v90 = [MEMORY[0x277CD7688] cnnLossDataDescriptorWithData:v89 layout:1 size:&v172];
          v91 = objc_alloc(MEMORY[0x277CD7698]);
          v92 = [v170 device];
          v172 = v66;
          v173 = v88;
          v174 = v140;
          v93 = [v91 initWithDevice:v92 lossImageSize:&v172 labelsDescriptor:v90 weightsDescriptor:0];

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
      v102 = [v160 reduceLossKernel];

      if (v102)
      {
        v103 = objc_autoreleasePoolPush();
        v104 = [MEMORY[0x277CBEBF8] mutableCopy];
        if (v54)
        {
          for (i = 0; i != v54; ++i)
          {
            v106 = [v74 objectAtIndexedSubscript:i];
            v107 = [v106 lossImage];
            [v104 addObject:v107];

            v74 = v171;
          }
        }

        v108 = [v160 reduceLossKernel];
        v109 = [MEMORY[0x277CD72A8] defaultAllocator];
        [v108 setDestinationImageAllocator:v109];

        v110 = [v108 encodeBatchToCommandBuffer:v170 sourceImages:v104];

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
            v114 = [v113 lossImage];
            [v111 addObject:v114];
          }
        }

        v110 = [v111 copy];
      }

      if ([(MLCDeviceGPU *)v156 numDevicesToUse]>= 2)
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

        if ([v159 reductionType] == 2)
        {
          MPSImageBatchIncrementReadCount(v110, 1);
          MPSImageBatchIncrementReadCount(v165, 1);
          v118 = objc_autoreleasePoolPush();
          v119 = [v160 secondaryGradientKernel];
          GPU_ScaleMPSImageBatchWithKernel(v119, v170, v110, 0);

          v120 = [v160 secondaryGradientKernel];
          GPU_ScaleMPSImageBatchWithKernel(v120, v170, v165, 0);

          objc_autoreleasePoolPop(v118);
        }
      }

      v167 = v110;
      contexta = objc_autoreleasePoolPush();
      v121 = v151;
      v122 = [v151 descriptor];
      v123 = [v122 shape];
      v124 = [v123 objectAtIndexedSubscript:0];
      v125 = [v124 unsignedIntegerValue];
      if (v125 >= [v160 batchSize])
      {
        v129 = [v160 batchSize];
      }

      else
      {
        v126 = [v151 descriptor];
        v127 = [v126 shape];
        v128 = [v127 objectAtIndexedSubscript:0];
        v129 = [v128 unsignedIntegerValue];

        v121 = v151;
      }

      v130 = [(MLCDeviceGPU *)v156 gpuReadTensorKernelList];
      v131 = [v130 objectAtIndexedSubscript:v155];
      v132 = [(MPSImageBatch *)v167 subarrayWithRange:0, v129];
      v133 = [v144 objectAtIndexedSubscript:v155];
      v134 = [v121 descriptor];
      +[MLCGPUHelper copyMPSImageBatchToMTLBuffer:commandBuffer:sourceImageBatch:destinationMTLBuffer:MLCDataType:](MLCGPUHelper, "copyMPSImageBatchToMTLBuffer:commandBuffer:sourceImageBatch:destinationMTLBuffer:MLCDataType:", v131, v170, v132, v133, [v134 dataType]);

      v135 = [(MLCDeviceGPU *)v156 gpuReadTensorKernelList];
      v136 = [v135 objectAtIndexedSubscript:v155];
      v137 = [v143 objectAtIndexedSubscript:v155];
      v138 = [v147 descriptor];
      +[MLCGPUHelper copyMPSImageBatchToMTLBuffer:commandBuffer:sourceImageBatch:destinationMTLBuffer:MLCDataType:](MLCGPUHelper, "copyMPSImageBatchToMTLBuffer:commandBuffer:sourceImageBatch:destinationMTLBuffer:MLCDataType:", v136, v170, v165, v137, [v138 dataType]);

      GPU_clearTemporaryImageBatchReadCount(v154);
      GPU_clearTemporaryImageBatchReadCount(v169);
      GPU_clearTemporaryImageBatchReadCount(v168);
      GPU_clearTemporaryImageBatchReadCount(v167);
      GPU_clearTemporaryImageBatchReadCount(v165);
      objc_autoreleasePoolPop(contexta);
      [v160 setGradientState:0];
      [v160 setSource:0];

      self = v156;
      v19 = v155 + 1;
      v153 += 4;
      v14 = v141;
      if (v155 + 1 >= [(MLCDeviceGPU *)v156 numDevicesToUse])
      {
        goto LABEL_54;
      }
    }

    if (v54)
    {
      v166 = v54;
      v94 = 0;
      v95 = 0;
      v96 = v59;
      do
      {
        v97 = objc_alloc(MEMORY[0x277CD7698]);
        v98 = [v170 device];
        v99 = [v169 objectAtIndexedSubscript:v94];
        v100 = [v168 objectAtIndexedSubscript:v94];
        v172 = v66;
        v173 = v65;
        v174 = v96;
        v93 = [v97 initWithDevice:v98 lossImageSize:&v172 labelsImage:v99 weightsImage:v100];

        [v171 addObject:v93];
        ++v94;
        v95 = v93;
      }

      while (v54 != v94);
      goto LABEL_31;
    }

    v93 = 0;
LABEL_35:
    v101 = v159;
    goto LABEL_36;
  }

LABEL_54:
}

- (BOOL)isResultTensorUsedForGradientComputationByLayer:(id)a3
{
  v3 = [a3 objectAtIndexedSubscript:0];
  if ([v3 isMPSKernel])
  {
    goto LABEL_7;
  }

  v4 = [v3 metalKernelType];
  v5 = 0;
  if (v4 <= 0x11)
  {
    if (((1 << v4) & 0x30008) != 0)
    {
      v5 = 1;
      goto LABEL_8;
    }

    if (((1 << v4) & 0x140) == 0)
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

- (void)dispatchRNNForwardLayer:(id)a3 sourceTensors:(id)a4 resultTensors:(id)a5
{
  v403 = *MEMORY[0x277D85DE8];
  v362 = a3;
  v385 = a4;
  v8 = a5;
  if ([v8 count])
  {
    v9 = 0;
    do
    {
      v10 = [v8 objectAtIndexedSubscript:v9];
      [(MLCDeviceGPU *)self allocateResultTensor:v10];

      ++v9;
    }

    while (v9 < [v8 count]);
  }

  if ([(MLCDeviceGPU *)self numDevicesToUse])
  {
    v11 = 0;
    v365 = xmmword_238D45D60;
    v402 = v8;
    v366 = self;
    while (1)
    {
      v12 = [v362 objectAtIndexedSubscript:v11];
      v13 = [(MLCDeviceGPU *)self gpuCommandBufferList];
      v401 = v11;
      v14 = [v13 objectAtIndexedSubscript:v11];

      v15 = v385;
      v16 = [v385 objectAtIndexedSubscript:0];
      v17 = [v16 descriptor];
      v18 = [v17 shape];
      v374 = [v18 count];

      v19 = [v15 objectAtIndexedSubscript:0];
      v20 = [v19 descriptor];
      v21 = [v20 shape];
      v371 = [v21 count];

      v22 = [v15 count] == 3 || objc_msgSend(v15, "count") == 4;
      LODWORD(v388) = v22;
      v23 = [v12 batchSize];
      v372 = [v12 isBidirectional];
      v24 = 1;
      if (v372)
      {
        v24 = 2;
      }

      v369 = v24;
      v25 = [v15 objectAtIndexedSubscript:0];
      v26 = [v25 descriptor];
      v27 = [v26 variableLengthSequences];
      v377 = 0;
      if (v27)
      {
        v28 = [v15 objectAtIndexedSubscript:0];
        v29 = [v28 descriptor];
        v377 = [v29 batchSizePerSequenceStep];
      }

      v30 = [v15 objectAtIndexedSubscript:0];
      v31 = [v30 descriptor];
      v32 = [v31 variableLengthSequences];
      v393 = 0;
      if (v32)
      {
        v33 = [v385 objectAtIndexedSubscript:0];
        v34 = [v33 descriptor];
        v393 = [v34 sequenceLengths];
      }

      v35 = [v12 batchFirst];
      v36 = v401;
      if (v35 && v371 == 4)
      {
        v37 = [v12 rnnBuffers];
        v376 = [v37 objectAtIndexedSubscript:0];
      }

      else
      {
        v37 = [v385 objectAtIndexedSubscript:0];
        v38 = [v37 deviceMemory];
        v376 = [v38 objectAtIndexedSubscript:v36];
      }

      if ([v12 returnsSequences] && v374 == 3)
      {
        v39 = [v8 objectAtIndexedSubscript:0];
        v40 = [v39 deviceMemory];
        v41 = [v40 objectAtIndexedSubscript:v36];
      }

      else
      {
        v39 = [v12 rnnBuffers];
        v41 = [v39 objectAtIndexedSubscript:1];
      }

      v42 = v385;
      v396 = v41;

      v367 = [v12 returnsSequences];
      v43 = [v12 batchFirst];
      v399 = v23;
      if (v43 && v371 == 4)
      {
        v44 = [v42 objectAtIndexedSubscript:0];
        v45 = [v44 descriptor];
        v46 = [v45 shape];
        v47 = [v46 objectAtIndexedSubscript:1];
        v379 = [v47 unsignedIntegerValue];

        v48 = [v42 objectAtIndexedSubscript:0];
        v49 = [v48 descriptor];
        v50 = [v49 shape];
        v51 = [v50 objectAtIndexedSubscript:3];
        v52 = [v51 unsignedIntegerValue];

        v53 = [v8 objectAtIndexedSubscript:0];
        v54 = [v53 descriptor];
        v55 = [v54 shape];
        v56 = [v55 objectAtIndexedSubscript:1];
        v57 = [v56 unsignedIntegerValue];

        v58 = v57;
        v59 = v57 >> v372;
        v60 = v52;
        v61 = v23;
        v62 = v379;
        v63 = v377;
        v400 = createMatrices(v52, v61, v379, v379, v377, 0, v376);
        v373 = v59;
        v380 = createMatrices(v52, v399, v57, v59, v63, 0, v396);
        v398 = [(MLCDeviceGPU *)v366 deviceList];
        v64 = v401;
        v65 = [v398 objectAtIndexedSubscript:v401];
        v66 = [v385 objectAtIndexedSubscript:0];
        v67 = [v66 deviceMemory];
        v68 = [v67 objectAtIndexedSubscript:v64];
        v69 = v62;
        v23 = v399;
        copyNC1TtoNTCMTLBuffer(v14, v65, v399, v69, v60, v68, v376);

        v70 = v58;
      }

      else
      {
        v72 = [v12 batchFirst];
        v73 = [v42 objectAtIndexedSubscript:0];
        v74 = [v73 descriptor];
        v75 = [v74 shape];
        v76 = v75;
        if (v72 && v374 == 3)
        {
          v77 = [v75 objectAtIndexedSubscript:1];
          v375 = [v77 unsignedIntegerValue];

          v78 = [v385 objectAtIndexedSubscript:0];
          v79 = [v78 descriptor];
          v80 = [v79 shape];
          v81 = [v80 objectAtIndexedSubscript:2];
          v82 = [v81 unsignedIntegerValue];

          v83 = [v8 objectAtIndexedSubscript:0];
          v84 = [v83 descriptor];
          v85 = [v84 shape];
          v86 = [v85 objectAtIndexedSubscript:2];
          v70 = [v86 unsignedIntegerValue];

          v60 = v375;
          v87 = v70 >> v372;
          v379 = v82;
          v88 = v377;
          v400 = createMatrices(v60, v23, v82, v82, v377, 0, v376);
          v373 = v87;
          v71 = createMatrices(v60, v23, v70, v87, v88, 0, v396);
        }

        else
        {
          v89 = [v75 objectAtIndexedSubscript:2];
          v90 = [v89 unsignedIntegerValue];

          v91 = [v385 objectAtIndexedSubscript:0];
          v92 = [v91 descriptor];
          v93 = [v92 shape];
          v94 = [v93 objectAtIndexedSubscript:0];
          v375 = [v94 unsignedIntegerValue];

          v95 = [v8 objectAtIndexedSubscript:0];
          v96 = [v95 descriptor];
          v97 = [v96 shape];
          v98 = [v97 objectAtIndexedSubscript:2];
          v70 = [v98 unsignedIntegerValue];

          v60 = v375;
          v99 = v70 >> v372;
          v379 = v90;
          v100 = v377;
          v400 = createMatricesForTNCBuffer(v60, v23, v90, v90, v377, v376);
          v373 = v99;
          v71 = createMatricesForTNCBuffer(v60, v23, v70, v99, v100, v396);
        }

        v380 = v71;
      }

      v368 = &v361;
      v101 = MEMORY[0x28223BE20](v71);
      v103 = &v361 - ((v102 + 15) & 0xFFFFFFFFFFFFFFF0);
      v363 = v102;
      MEMORY[0x28223BE20](v101);
      v105 = &v361 - v104;
      v106 = [v12 batchFirst];
      v107 = v393;
      if (v106 && v60)
      {
        v108 = 0;
        v109 = 4 * v379;
        v110 = (v60 + 1) & 0xFFFFFFFFFFFFFFFELL;
        v111 = vdupq_n_s64(v60 - 1);
        v112 = v103 + 8;
        v113 = 8 * v379;
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
            *v118 = 4 * v70 + v117;
          }

          v119 = vaddq_s64(v119, vdupq_n_s64(2uLL));
          v118 += 2;
          v117 += 8 * v70;
          v110 -= 2;
        }

        while (v110);
      }

      v398 = v105;
      v392 = v103;
      v378 = v70;
      v375 = v60;
      if (v107)
      {
        v121 = v396;
        bzero([v396 contents], objc_msgSend(v396, "length"));
        +[MLCGPUHelper didModifyRange:buffer:](MLCGPUHelper, "didModifyRange:buffer:", 0, [v121 length], v121);
      }

      v395 = [v12 forwardKernel];
      v122 = [v395 count];
      v123 = v122 >> v372;
      v124 = [MEMORY[0x277CBEBF8] mutableCopy];
      v386 = v123;
      v125 = v123 == 1;
      v382 = v123 - 1;
      v126 = v123 - 1;
      v364 = (v123 - 1);
      v127 = v375;
      v128 = v378;
      if (!v125)
      {
        do
        {
          v129 = [v8 objectAtIndexedSubscript:0];
          v130 = createTemporaryMatrixViews(v129, v14, 2, v127, v23, v128);

          [v124 addObject:v130];
          --v126;
        }

        while (v126);
      }

      v381 = v124;
      v131 = v400;
      v132 = [v12 batchFirst];
      v133 = [v12 batchFirst];
      v134 = v398;
      if (!v133)
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
        if (!v132)
        {
          v138 = 0;
        }

        v384 = 4 * v23 * v373;
        v139 = v386;
        v131 = v370;
        do
        {
          v389 = v138;
          v390 = v139;
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

          v141 = [v12 rnnTrainableStates];
          v142 = [v141 objectAtIndexedSubscript:v137];

          v398 = v142;
          [v142 removeAllObjects];
          if (v388)
          {
            v143 = [v395 objectAtIndexedSubscript:v137];
            v144 = v397;
            v145 = [v143 temporaryRecurrentStateForCommandBuffer:v397 batchSize:v23 forGradientPass:0];

            v146 = [v145 getRecurrentOutputMatrixForLayerIndex:0];
            v147 = [v146 data];

            v148 = [v145 getMemoryCellMatrixForLayerIndex:0];
            v383 = [v148 data];

            v149 = [v144 blitCommandEncoder];
            v150 = v385;
            v151 = [v385 objectAtIndexedSubscript:1];
            v152 = [v151 deviceMemory];
            v153 = v401;
            v154 = [v152 objectAtIndexedSubscript:v401];
            v391 = v147;
            [v149 copyFromBuffer:v154 sourceOffset:v135 toBuffer:v147 destinationOffset:0 size:{objc_msgSend(v147, "length")}];

            v155 = [v150 objectAtIndexedSubscript:2];
            v156 = [v155 deviceMemory];
            v157 = v387;
            v158 = [v156 objectAtIndexedSubscript:v153];
            v159 = v383;
            [v149 copyFromBuffer:v158 sourceOffset:v135 toBuffer:v383 destinationOffset:0 size:{objc_msgSend(v383, "length")}];

            v8 = v402;
            v160 = v395;

            [v149 endEncoding];
            v161 = [v160 objectAtIndexedSubscript:v137];
            [v161 setRecurrentOutputIsTemporary:1];

            v162 = [MEMORY[0x277CBEBF8] mutableCopy];
            v12 = v157;
          }

          else
          {
            v145 = 0;
            v162 = 0;
            v160 = v395;
          }

          v163 = [v160 objectAtIndexedSubscript:v137];
          [v163 setPropagateFullRecurrentRows:1];

          v164 = [v160 objectAtIndexedSubscript:v137];
          v165 = [v12 rnnTrainableWeights];
          v166 = [v165 objectAtIndexedSubscript:v137];
          v391 = v145;
          v167 = v392;
          [v164 encodeForwardSequenceToCommandBuffer:v397 sourceMatrices:v392 sourceOffsets:v389 destinationMatrices:v400 destinationOffsets:v394 trainingStates:v398 recurrentInputState:v145 recurrentOutputStates:v162 weights:v166];

          if ([v8 count] == 3 && v162 && objc_msgSend(v162, "count"))
          {
            v168 = [v162 objectAtIndexedSubscript:0];
            v169 = [v168 getRecurrentOutputMatrixForLayerIndex:0];
            v170 = [v169 data];

            v171 = [v162 objectAtIndexedSubscript:0];
            v172 = [v171 getMemoryCellMatrixForLayerIndex:0];
            v389 = [v172 data];

            v173 = [v397 blitCommandEncoder];
            v174 = [v8 objectAtIndexedSubscript:1];
            v175 = [v174 deviceMemory];
            v176 = v167;
            v177 = v401;
            v178 = [v175 objectAtIndexedSubscript:v401];
            [v173 copyFromBuffer:v170 sourceOffset:0 toBuffer:v178 destinationOffset:v135 size:{objc_msgSend(v170, "length")}];

            v179 = [v402 objectAtIndexedSubscript:2];
            v180 = [v179 deviceMemory];
            v181 = v177;
            v167 = v176;
            v182 = [v180 objectAtIndexedSubscript:v181];
            v183 = v389;
            [v173 copyFromBuffer:v389 sourceOffset:0 toBuffer:v182 destinationOffset:v135 size:{objc_msgSend(v389, "length")}];

            v12 = v387;
            v8 = v402;

            [v173 endEncoding];
            [v162 removeAllObjects];
          }

          v131 = v400;

          ++v137;
          v135 += v384;
          v138 = v394;
          v136 = v131;
          v139 = v390 - 1;
          v23 = v399;
        }

        while (v390 != 1);

        v14 = v397;
      }

      v184 = [v12 isBidirectional];
      if (v184)
      {
        break;
      }

LABEL_115:
      v280 = [v385 objectAtIndexedSubscript:0];
      [v12 setSource:v280];

      if (v374 == 3)
      {
        LODWORD(v281) = v367 ^ 1;
      }

      else
      {
        LODWORD(v281) = 1;
      }

      self = v366;
      v282 = 0x277CD7000uLL;
      v283 = v381;
      if (v281 != 1)
      {
        goto LABEL_151;
      }

      if (v371 == 4)
      {
        v284 = v367 ^ 1;
      }

      else
      {
        v284 = 1;
      }

      if (v284)
      {
        if (v393)
        {
          v285 = 1;
        }

        else
        {
          v285 = v367;
        }

        if ((v285 & 1) == 0)
        {
          LODWORD(v386) = 1;
          v364 = v131;
          v384 = objc_autoreleasePoolPush();
          v344 = objc_alloc(MEMORY[0x277CD75C0]);
          v345 = [(MLCDeviceGPU *)self deviceList];
          v346 = [v345 objectAtIndexedSubscript:v401];
          v347 = [v344 initWithDevice:v346 count:v369];

          v348 = objc_alloc(MEMORY[0x277CD75B8]);
          v349 = [(MLCDeviceGPU *)self deviceList];
          v350 = [v349 objectAtIndexedSubscript:v401];
          v383 = [v348 initWithDevice:v350 copyRows:v23 copyColumns:v373 sourcesAreTransposed:0 destinationsAreTransposed:0];

          v351 = v378;
          v352 = ((v375 - 1) * v378);
          v353 = [MEMORY[0x277CD7258] matrixDescriptorWithRows:v23 columns:v375 * v378 rowBytes:4 * v375 * v378 dataType:268435488];
          v316 = v347;
          v343 = [MEMORY[0x277CD7258] matrixDescriptorWithRows:v23 columns:v351 rowBytes:4 * v351 dataType:268435488];
          v354 = objc_alloc(MEMORY[0x277CD7250]);
          v390 = v353;
          v281 = [v354 initWithBuffer:v396 offset:0 descriptor:v353];
          v355 = objc_alloc(MEMORY[0x277CD7250]);
          v356 = [v8 objectAtIndexedSubscript:0];
          v357 = [v356 deviceMemory];
          v358 = [v357 objectAtIndexedSubscript:v401];
          v359 = [v355 initWithBuffer:v358 offset:0 descriptor:v343];

          [v316 setCopyOperationAtIndex:0 sourceMatrix:v281 destinationMatrix:v359 offsets:{v352 << 32, 0}];
          if ([v12 isBidirectional])
          {
            [v316 setCopyOperationAtIndex:1 sourceMatrix:v281 destinationMatrix:v359 offsets:{v373 << 32, v373 << 32}];
          }

          v315 = v383;
          [v383 encodeToCommandBuffer:v14 copyDescriptor:v316];

          v8 = v402;
          v283 = v381;
          v131 = v364;
          LOBYTE(v281) = v386;
          self = v366;
          goto LABEL_150;
        }

        v286 = v367;
        if (!v393)
        {
          v286 = 1;
        }

        if (v286)
        {
          goto LABEL_151;
        }

        LODWORD(v386) = 1;
        v364 = v131;
        v287 = v372;
        v384 = objc_autoreleasePoolPush();
        v288 = objc_alloc(MEMORY[0x277CD75C0]);
        v289 = [(MLCDeviceGPU *)self deviceList];
        v290 = v401;
        v291 = [v289 objectAtIndexedSubscript:v401];
        v389 = [v288 initWithDevice:v291 count:v23 << v287];

        v292 = objc_alloc(MEMORY[0x277CD75B8]);
        v293 = [(MLCDeviceGPU *)self deviceList];
        v294 = [v293 objectAtIndexedSubscript:v290];
        v295 = v373;
        v383 = [v292 initWithDevice:v294 copyRows:1 copyColumns:v373 sourcesAreTransposed:0 destinationsAreTransposed:0];

        v296 = v378;
        v297 = v375;
        v390 = [MEMORY[0x277CD7258] matrixDescriptorWithRows:v375 columns:v378 rowBytes:4 * v378 dataType:268435488];
        v398 = [MEMORY[0x277CD7258] matrixDescriptorWithRows:1 columns:v296 rowBytes:4 * v296 dataType:268435488];
        if (v23)
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
              v303 = [v393 objectAtIndexedSubscript:v394];
              v304 = [v303 unsignedIntegerValue];

              v400 = (v304 - 1);
              v305 = v298;
              v306 = objc_alloc(MEMORY[0x277CD7250]);
              v307 = [v306 initWithBuffer:v396 offset:v392 descriptor:v390];
              v308 = objc_alloc(MEMORY[0x277CD7250]);
              v309 = [v402 objectAtIndexedSubscript:0];
              v310 = [v309 deviceMemory];
              v311 = [v310 objectAtIndexedSubscript:v401];
              v312 = [v308 initWithBuffer:v311 offset:v391 descriptor:v398];

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

              [v389 setCopyOperationAtIndex:v300 sourceMatrix:v307 destinationMatrix:v312 offsets:{v314, v298}];

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

        v315 = v383;
        v14 = v397;
        v316 = v389;
        [v383 encodeToCommandBuffer:v397 copyDescriptor:v389];
        self = v366;
        v8 = v402;
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
        v318 = [(MLCDeviceGPU *)self deviceList];
        v319 = v401;
        v320 = [v318 objectAtIndexedSubscript:v401];
        v321 = [v317 initWithDevice:v320 count:v23];

        v322 = objc_alloc(MEMORY[0x277CD75B8]);
        v323 = [(MLCDeviceGPU *)self deviceList];
        v324 = [v323 objectAtIndexedSubscript:v319];
        v325 = v375;
        v326 = v378;
        v383 = [v322 initWithDevice:v324 copyRows:v375 copyColumns:v378 sourcesAreTransposed:0 destinationsAreTransposed:1];

        v327 = [MEMORY[0x277CD7258] matrixDescriptorWithRows:v325 columns:v326 rowBytes:4 * v326 dataType:268435488];
        v328 = v326;
        v398 = [MEMORY[0x277CD7258] matrixDescriptorWithRows:v326 columns:v325 rowBytes:4 * v325 dataType:268435488];
        v329 = v8;
        v330 = v396;
        if (v23)
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
            v341 = [v333 initWithBuffer:v340 offset:v331 descriptor:v398];

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

        v390 = v327;
        v315 = v383;
        v14 = v397;
        [v383 encodeToCommandBuffer:v397 copyDescriptor:v321];
        v8 = v329;
        v316 = v321;
        v12 = v387;
        v283 = v381;
        v131 = v364;
        LOBYTE(v281) = v386;
        self = v366;
      }

      v343 = v398;
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
    v185 = MEMORY[0x28223BE20](v184);
    v391 = &v361 - ((v186 + 15) & 0xFFFFFFFFFFFFFFF0);
    MEMORY[0x28223BE20](v185);
    v188 = &v361 - v187;
    v189 = [v12 batchFirst];
    v389 = v188;
    if (v189)
    {
      v190 = v375;
      v191 = v379;
      v192 = v377;
      v363 = createMatrices(v375, v23, v379, v379, v377, 1, v376);
      v383 = createMatrices(v190, v23, v378, v373, v192, 1, v396);
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
      v190 = v375;
      v206 = v379;
      v207 = v377;
      v363 = createMatricesForTNCBufferNoOffset(v375, v23, v379, v379, v377, v376);
      v383 = createMatricesForTNCBufferNoOffset(v190, v23, v378, v373, v207, v396);
      if (v190)
      {
        v208 = 0;
        v209 = 4 * v23 * v206;
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
          v212 -= 8 * v23 * v206;
        }

        while (v210 != v208);
        v218 = 0;
        v219 = 4 * v214 * v23 * (v190 - 1) + 4 * v215;
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
            *&v188[8 * v218 + 8] = 4 * (v215 + v214 * v23 * (v190 + (v218 ^ 0x3FFFFFFFFFFFFFFELL)));
          }

          v218 += 2;
          v220 = vaddq_s64(v220, vdupq_n_s64(2uLL));
          v219 -= 8 * v214 * v23;
        }

        while (v210 != v218);
      }
    }

    v222 = [MEMORY[0x277CBEBF8] mutableCopy];
    v223 = v190;
    v224 = v378;
    v225 = v364;
    v379 = v222;
    v226 = v397;
    if (v364)
    {
      do
      {
        v227 = [v8 objectAtIndexedSubscript:0];
        v228 = createTemporaryMatrixViews(v227, v226, 2, v223, v23, v224);

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
    v234 = v23;
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
        v236 = v383;
      }

      else
      {
        v236 = [v379 objectAtIndexedSubscript:v235];
      }

      v398 = v236;

      v237 = [v12 rnnTrainableStates];
      v238 = [v237 objectAtIndexedSubscript:&v235[v231]];

      v394 = v238;
      [v238 removeAllObjects];
      if (v388)
      {
        v239 = v395;
        v240 = [v395 objectAtIndexedSubscript:&v235[v231]];
        v241 = [v240 temporaryRecurrentStateForCommandBuffer:v14 batchSize:v399 forGradientPass:0];

        v242 = [v241 getRecurrentOutputMatrixForLayerIndex:0];
        v243 = [v242 data];

        v244 = [v241 getMemoryCellMatrixForLayerIndex:0];
        v390 = [v244 data];

        v245 = [v14 blitCommandEncoder];
        v246 = v385;
        v247 = [v385 objectAtIndexedSubscript:1];
        v248 = [v247 deviceMemory];
        v249 = [v248 objectAtIndexedSubscript:v401];
        v250 = [v243 length];
        v251 = v392;
        [v245 copyFromBuffer:v249 sourceOffset:v392 toBuffer:v243 destinationOffset:0 size:v250];

        v252 = [v246 objectAtIndexedSubscript:2];
        v253 = [v252 deviceMemory];
        v254 = [v253 objectAtIndexedSubscript:v401];
        v255 = v390;
        [v245 copyFromBuffer:v254 sourceOffset:v251 toBuffer:v390 destinationOffset:0 size:{objc_msgSend(v390, "length")}];

        v14 = v397;
        [v245 endEncoding];
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
        v239 = v395;
      }

      [v239 objectAtIndexedSubscript:&v235[v231]];
      v259 = v258 = v231;
      v260 = [v12 rnnTrainableWeights];
      v261 = [v260 objectAtIndexedSubscript:&v235[v258]];
      v390 = v241;
      v262 = v389;
      [v259 encodeForwardSequenceToCommandBuffer:v14 sourceMatrices:v400 sourceOffsets:v391 destinationMatrices:v398 destinationOffsets:v389 trainingStates:v394 recurrentInputState:v241 recurrentOutputStates:v257 weights:v261];

      v8 = v402;
      if ([v402 count] == 3 && v257 && objc_msgSend(v257, "count"))
      {
        v263 = [v257 objectAtIndexedSubscript:0];
        v264 = [v263 getRecurrentOutputMatrixForLayerIndex:0];
        v265 = [v264 data];

        v266 = [v257 objectAtIndexedSubscript:0];
        v267 = [v266 getMemoryCellMatrixForLayerIndex:0];
        v268 = [v267 data];

        v269 = [v397 blitCommandEncoder];
        v270 = [v402 objectAtIndexedSubscript:1];
        v271 = [v270 deviceMemory];
        v272 = v401;
        v273 = [v271 objectAtIndexedSubscript:v401];
        v391 = v265;
        v274 = [v265 length];
        v275 = v265;
        v276 = v392;
        [v269 copyFromBuffer:v275 sourceOffset:0 toBuffer:v273 destinationOffset:v392 size:v274];

        v277 = [v402 objectAtIndexedSubscript:2];
        v278 = [v277 deviceMemory];
        v279 = [v278 objectAtIndexedSubscript:v272];
        [v269 copyFromBuffer:v268 sourceOffset:0 toBuffer:v279 destinationOffset:v276 size:{objc_msgSend(v268, "length")}];

        v12 = v387;
        [v269 endEncoding];
        [v257 removeAllObjects];

        v14 = v397;
        v8 = v402;
      }

      ++v235;
      v232 = v398;

      v391 = v262;
      v392 += v384;
      v400 = v232;
      v231 = v386;
    }

    while (v386 != v235);

    v23 = v399;
    v131 = v364;
    goto LABEL_114;
  }

LABEL_153:

  v360 = *MEMORY[0x277D85DE8];
}

- (void)dispatchRNNForwardLayer:(id)a3 sourceTensors:(id)a4 resultTensors:(id)a5 resultStateIsTemporary:(BOOL)a6 forTraining:(BOOL)a7
{
  v400[0] = a2;
  *&v445[3] = *MEMORY[0x277D85DE8];
  v401 = a3;
  v10 = a4;
  v11 = a5;
  if ([v11 count])
  {
    v12 = 0;
    do
    {
      v13 = [v11 objectAtIndexedSubscript:{v12, v400[0]}];
      [(MLCDeviceGPU *)self allocateResultTensor:v13];

      ++v12;
    }

    while (v12 < [v11 count]);
  }

  if ([(MLCDeviceGPU *)self numDevicesToUse])
  {
    v14 = 0;
    v405 = xmmword_238D45D60;
    v420 = v10;
    v442 = v11;
    v417 = self;
    while (1)
    {
      v15 = [v401 objectAtIndexedSubscript:v14];
      v16 = [(MLCDeviceGPU *)self gpuCommandBufferList];
      v439 = v14;
      v438 = [v16 objectAtIndexedSubscript:v14];

      v17 = [v10 objectAtIndexedSubscript:0];
      v18 = [v17 descriptor];
      v19 = [v18 shape];
      v20 = [v19 count];

      v21 = [v10 objectAtIndexedSubscript:0];
      v22 = [v21 descriptor];
      v23 = [v22 shape];
      v24 = [v23 count];

      v25 = [v10 count] == 3 || objc_msgSend(v10, "count") == 4;
      LODWORD(v426) = v25;
      v26 = [v10 objectAtIndexedSubscript:0];
      v27 = [v26 descriptor];
      v28 = [v27 variableLengthSequences];

      v407 = [v15 returnsSequences];
      v29 = [v15 isBidirectional];
      v432 = 0;
      v415 = 0;
      v413 = v29;
      if (v29)
      {
        v30 = 2;
      }

      else
      {
        v30 = 1;
      }

      v412 = v30;
      LODWORD(v441) = v28;
      if (v28)
      {
        v31 = [v10 objectAtIndexedSubscript:0];
        v32 = [v31 descriptor];
        v415 = [v32 batchSizePerSequenceStep];

        v33 = [v10 objectAtIndexedSubscript:0];
        v34 = [v33 descriptor];
        v432 = [v34 sequenceLengths];
      }

      v440 = [v15 batchSize];
      v35 = [v10 objectAtIndexedSubscript:0];
      v36 = [v35 descriptor];
      v37 = [v36 variableLengthSequences];

      if (v37)
      {
        v38 = [v15 rnnBuffers];
        v39 = [v38 objectAtIndexedSubscript:0];

        bzero([v39 contents], objc_msgSend(v39, "length"));
        +[MLCGPUHelper didModifyRange:buffer:](MLCGPUHelper, "didModifyRange:buffer:", 0, [v39 length], v39);
        v40 = [v15 rnnBuffers];
        v41 = [v40 objectAtIndexedSubscript:1];

        bzero([v41 contents], objc_msgSend(v41, "length"));
        +[MLCGPUHelper didModifyRange:buffer:](MLCGPUHelper, "didModifyRange:buffer:", 0, [v41 length], v41);
        v42 = [v15 rnnBuffers];
        v43 = [v42 objectAtIndexedSubscript:2];

        bzero([v43 contents], objc_msgSend(v43, "length"));
        +[MLCGPUHelper didModifyRange:buffer:](MLCGPUHelper, "didModifyRange:buffer:", 0, [v43 length], v43);
        v44 = [v15 rnnBuffers];
        v45 = [v44 objectAtIndexedSubscript:3];

        bzero([v45 contents], objc_msgSend(v45, "length"));
        +[MLCGPUHelper didModifyRange:buffer:](MLCGPUHelper, "didModifyRange:buffer:", 0, [v45 length], v45);
        if ([v15 isBidirectional])
        {
          v46 = [v15 rnnBuffers];
          v47 = [v46 objectAtIndexedSubscript:4];

          bzero([v47 contents], objc_msgSend(v47, "length"));
          +[MLCGPUHelper didModifyRange:buffer:](MLCGPUHelper, "didModifyRange:buffer:", 0, [v47 length], v47);
          v48 = [v15 rnnBuffers];
          v45 = [v48 objectAtIndexedSubscript:5];

          bzero([v45 contents], objc_msgSend(v45, "length"));
          +[MLCGPUHelper didModifyRange:buffer:](MLCGPUHelper, "didModifyRange:buffer:", 0, [v45 length], v45);
        }

        v49 = [v442 objectAtIndexedSubscript:0];
        v50 = [v49 deviceMemory];
        v51 = [v50 objectAtIndexedSubscript:v439];

        bzero([v51 contents], objc_msgSend(v51, "length"));
        +[MLCGPUHelper didModifyRange:buffer:](MLCGPUHelper, "didModifyRange:buffer:", 0, [v51 length], v51);
      }

      if ([v15 batchFirst] && v24 == 4)
      {
        v52 = [v15 rnnBuffers];
        v414 = [v52 objectAtIndexedSubscript:0];
        v10 = v420;
      }

      else
      {
        v10 = v420;
        v52 = [v420 objectAtIndexedSubscript:0];
        v53 = [v52 deviceMemory];
        v414 = [v53 objectAtIndexedSubscript:v439];
      }

      v54 = v442;

      v55 = v407 ^ 1;
      v403 = v407 ^ 1;
      if (v20 != 3)
      {
        v55 = 1;
      }

      v408 = v55;
      if (v55 == 1)
      {
        v56 = [v15 rnnBuffers];
        v433 = [v56 objectAtIndexedSubscript:1];
      }

      else
      {
        v56 = [v54 objectAtIndexedSubscript:0];
        v57 = [v56 deviceMemory];
        v433 = [v57 objectAtIndexedSubscript:v439];
      }

      v58 = [v15 batchFirst];
      v404 = v24;
      if (v58 && v24 == 4)
      {
        v59 = [v10 objectAtIndexedSubscript:0];
        v60 = [v59 descriptor];
        v61 = [v60 shape];
        [v61 objectAtIndexedSubscript:1];
        v63 = v62 = v10;
        v409 = [v63 unsignedIntegerValue];

        v64 = [v10 objectAtIndexedSubscript:0];
        v65 = [v64 descriptor];
        v66 = [v65 shape];
        v67 = [v66 objectAtIndexedSubscript:3];
        v68 = [v67 unsignedIntegerValue];

        v69 = [v442 objectAtIndexedSubscript:0];
        v70 = [v69 descriptor];
        v71 = [v70 shape];
        v72 = [v71 objectAtIndexedSubscript:1];
        v73 = [v72 unsignedIntegerValue];
        v425 = v73;

        v74 = v73 >> v413;
        v75 = [(MLCDeviceGPU *)v417 deviceList];
        v76 = v439;
        v77 = [v75 objectAtIndexedSubscript:v439];
        v78 = [v62 objectAtIndexedSubscript:0];
        v79 = [v78 deviceMemory];
        v80 = [v79 objectAtIndexedSubscript:v76];
        v81 = v440;
        v82 = v409;
        v421 = v68;
        v83 = v68;
        v84 = v414;
        copyNC1TtoNTCMTLBuffer(v438, v77, v440, v409, v83, v80, v414);

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

          v11 = v442;
          goto LABEL_146;
        }

        v86 = [v10 objectAtIndexedSubscript:0];
        v87 = [v86 descriptor];
        v88 = [v87 shape];
        v89 = [v88 objectAtIndexedSubscript:1];
        v421 = [v89 unsignedIntegerValue];

        v90 = [v10 objectAtIndexedSubscript:0];
        v91 = [v90 descriptor];
        v92 = [v91 shape];
        v93 = [v92 objectAtIndexedSubscript:2];
        v82 = [v93 unsignedIntegerValue];

        v94 = [v442 objectAtIndexedSubscript:0];
        v95 = [v94 descriptor];
        v96 = [v95 shape];
        v97 = [v96 objectAtIndexedSubscript:2];
        v98 = [v97 unsignedIntegerValue];

        v85 = v98;
        v74 = v98 >> v413;
        v81 = v440;
        v84 = v414;
      }

      v99 = v421;
      v100 = v415;
      v101 = createMatrices(v421, v81, v82, v82, v415, 0, v84);
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
            *v109 = 4 * v82 + v106;
          }

          v111 = vaddq_s64(v111, vdupq_n_s64(2uLL));
          v109 += 2;
          v106 += 8 * v82;
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

      v429 = v103;
      v409 = v82;
      v425 = v85;
      v117 = [v15 gradientKernel];
      v437 = [v117 count];
      v118 = MEMORY[0x277CBEBF8];
      v119 = [MEMORY[0x277CBEBF8] mutableCopy];
      v120 = [v118 mutableCopy];
      v121 = [v15 rnnStackedLayersResults];
      v434 = v15;
      v122 = v117;
      v427 = v117;
      if (!v121)
      {
        goto LABEL_48;
      }

      v123 = v121;
      v124 = [v15 rnnStackedLayersResults];
      v125 = [v124 count] == 0;
      v126 = v125 | v441;

      if ((v126 & 1) == 0)
      {
        v146 = [v15 rnnStackedLayersResults];
        v147 = [v146 count];

        if (v147)
        {
          v148 = [v15 rnnStackedLayersResults];

          v149 = [v15 rnnStackedLayersBufferResults];

          v424 = v149;
          v119 = v148;
        }

        else
        {
          v424 = v120;
        }

        v11 = v105;
        v145 = v122;
      }

      else
      {
LABEL_48:
        v436 = v101;
        v127 = [v122 count];
        v128 = v127 - v412;
        v129 = v417;
        v130 = v439;
        v131 = 0x278A68000uLL;
        v132 = v119;
        v133 = v105;
        v424 = v120;
        if (v127 - v412 >= 1)
        {
          v441 = 4 * v440 * v425 * v421;
          do
          {
            v134 = v129;
            [(MLCDeviceGPU *)v129 deviceList];
            v136 = v135 = v132;
            v137 = [v136 objectAtIndexedSubscript:v130];
            v138 = [*(v131 + 2936) mtlResourceOptions];
            v139 = [v137 newBufferWithLength:v441 options:v138];

            v140 = [v133 objectAtIndexedSubscript:0];
            v141 = [v140 descriptor];
            [v141 batchSizePerSequenceStep];
            v143 = v142 = v133;
            v144 = createMatrices(v421, v440, v425, v425, v143, 0, v139);

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
        v11 = v133;
        v101 = v436;
      }

      v419 = v119;
      v150 = [v15 lstmDropoutSource];
      [v150 removeAllObjects];

      v151 = [v15 lstmDropoutState];
      [v151 removeAllObjects];

      v152 = v101;
      v153 = [v15 rnnTrainableStates];
      v154 = [v153 count];

      if (v154)
      {
        v155 = 0;
        do
        {
          v156 = [v15 rnnTrainableStates];
          v157 = [v156 objectAtIndexedSubscript:v155];

          [v157 removeAllObjects];
          ++v155;
          v158 = [v15 rnnTrainableStates];
          v159 = [v158 count];
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
        v423 = 4 * v440 * v411;
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
            v167 = [v165 temporaryRecurrentStateForCommandBuffer:v438 batchSize:v440 forGradientPass:0];

            v168 = [v167 getRecurrentOutputMatrixForLayerIndex:0];
            v169 = [v168 data];

            v436 = v167;
            v170 = [v167 getMemoryCellMatrixForLayerIndex:0];
            v422 = [v170 data];

            v171 = [v166 blitCommandEncoder];
            v172 = v420;
            v173 = [v420 objectAtIndexedSubscript:1];
            v174 = [v173 deviceMemory];
            v175 = v439;
            v176 = [v174 objectAtIndexedSubscript:v439];
            v428 = v169;
            v177 = [v169 length];
            v178 = v163;
            v179 = v435;
            [v171 copyFromBuffer:v176 sourceOffset:v435 toBuffer:v169 destinationOffset:0 size:v177];

            v145 = v427;
            v180 = [v172 objectAtIndexedSubscript:2];
            v181 = [v180 deviceMemory];
            v182 = v438;
            v183 = [v181 objectAtIndexedSubscript:v175];
            v184 = v422;
            v185 = [v422 length];
            v186 = v179;
            v163 = v178;
            v187 = v184;
            [v171 copyFromBuffer:v183 sourceOffset:v186 toBuffer:v184 destinationOffset:0 size:v185];

            [v171 endEncoding];
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
          v192 = [v15 rnnTrainableStates];
          v193 = [v192 objectAtIndexedSubscript:v162];
          [v15 rnnTrainableWeights];
          v195 = v194 = v145;
          v428 = v162;
          v196 = [v195 objectAtIndexedSubscript:v162];
          [v191 encodeForwardSequenceToCommandBuffer:v182 sourceMatrices:v441 sourceOffsets:v429 destinationMatrices:v437 destinationOffsets:v430 trainingStates:v193 recurrentInputState:v436 recurrentOutputStates:v189 weights:v196];

          v145 = v194;
          v11 = v442;
          if ([v442 count] == 3 && v189 && objc_msgSend(v189, "count"))
          {
            v197 = [v189 objectAtIndexedSubscript:0];
            v198 = [v197 getRecurrentOutputMatrixForLayerIndex:0];
            v199 = [v198 data];

            v200 = [v189 objectAtIndexedSubscript:0];
            v201 = [v200 getMemoryCellMatrixForLayerIndex:0];
            v202 = [v201 data];

            v203 = [v438 blitCommandEncoder];
            v204 = [v442 objectAtIndexedSubscript:1];
            v205 = [v204 deviceMemory];
            v206 = v439;
            v207 = [v205 objectAtIndexedSubscript:v439];
            v208 = [v199 length];
            v209 = v163;
            v210 = v435;
            [v203 copyFromBuffer:v199 sourceOffset:0 toBuffer:v207 destinationOffset:v435 size:v208];

            v211 = [v442 objectAtIndexedSubscript:2];
            v212 = [v211 deviceMemory];
            v213 = [v212 objectAtIndexedSubscript:v206];
            v214 = [v202 length];
            v215 = v210;
            v163 = v209;
            [v203 copyFromBuffer:v202 sourceOffset:0 toBuffer:v213 destinationOffset:v215 size:v214];

            [v203 endEncoding];
            [v189 removeAllObjects];

            v145 = v427;
            v11 = v442;
          }

          v15 = v434;
          v216 = v428;
          if (v431 != 1 && v163 != 1)
          {
            [v434 lstmDropout];
            if (v217 > 0.0 && ([v15 isBidirectional] & 1) == 0)
            {
              v218 = [MEMORY[0x277CD7220] imageDescriptorWithChannelFormat:4 width:1 height:v425 featureChannels:v421];
              v429 = v218;
              v219 = [MEMORY[0x277CD72A8] defaultAllocator];
              v422 = v219;
              v220 = v417;
              v221 = [(MLCDeviceGPU *)v417 gpuWriteTensorKernelList];
              v222 = v439;
              v223 = [v221 objectAtIndexedSubscript:v439];
              v224 = [v15 batchSize];
              v225 = [v219 imageBatchForCommandBuffer:v438 imageDescriptor:v218 kernel:v223 count:v224];

              MPSImageBatchIncrementReadCount(v225, 1);
              v226 = [(MLCDeviceGPU *)v220 gpuWriteTensorKernelList];
              v227 = [v226 objectAtIndexedSubscript:v222];
              v228 = [v424 objectAtIndexedSubscript:v216];
              [MLCGPUHelper copyMTLBufferToMPSImageBatch:v227 commandBuffer:v438 sourceMTLBuffer:v228 destinationImageBatch:v225 MLCDataType:1];

              v229 = [v434 lstmDropoutForwardKernel];
              v230 = [v229 objectAtIndexedSubscript:v216];

              v231 = [MEMORY[0x277CD72A8] defaultAllocator];
              v416 = v230;
              [v230 setDestinationImageAllocator:v231];

              v443 = 0;
              v232 = [v230 encodeBatchToCommandBuffer:v438 sourceImages:v225 destinationStates:&v443 destinationStateIsTemporary:1];
              v233 = v443;
              v234 = [v434 lstmDropoutSource];
              [v234 addObject:v225];

              v235 = [v434 lstmDropoutState];
              [v235 addObject:v233];

              v236 = [(MLCDeviceGPU *)v417 gpuReadTensorKernelList];
              v237 = [v236 objectAtIndexedSubscript:v222];
              v238 = [v424 objectAtIndexedSubscript:v216];
              [MLCGPUHelper copyMPSImageBatchToMTLBuffer:v237 commandBuffer:v438 sourceImageBatch:v232 destinationMTLBuffer:v238 MLCDataType:1];

              v15 = v434;
              v145 = v427;
              v11 = v442;
            }
          }

          v160 = v437;

          v162 = (v216 + 1);
          v435 += v423;
          v429 = v430;
          v161 = v160;
          --v163;
        }

        while (v163);
      }

      v239 = v145;
      v240 = [v15 isBidirectional];
      v10 = v420;
      v241 = v425;
      v416 = v160;
      if (v240)
      {
        v242 = v421;
        v243 = v440;
        v244 = v409;
        v245 = v415;
        v246 = createMatrices(v421, v440, v409, v409, v415, 1, v414);
        v247 = v243;
        v248 = v411;
        v422 = createMatrices(v242, v247, v241, v411, v245, 1, v433);
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
        v11 = v442;
        v239 = v427;
        v268 = v431;
        if (v431)
        {
          v267 = 0;
          v269 = (4 * v440 * v411);
          v429 = v269;
          v270 = v431;
          v441 = v265;
          v423 = v254;
          v430 = v265;
          do
          {
            v431 = v268;
            if (v268 == 1)
            {
              v271 = v422;
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
              v274 = [v272 temporaryRecurrentStateForCommandBuffer:v438 batchSize:v440 forGradientPass:0];

              v275 = [v274 getRecurrentOutputMatrixForLayerIndex:0];
              v276 = [v275 data];
              v436 = v269;
              v277 = v276;

              v278 = [v274 getMemoryCellMatrixForLayerIndex:0];
              v428 = [v278 data];

              v279 = [v273 blitCommandEncoder];
              v280 = v420;
              v281 = [v420 objectAtIndexedSubscript:1];
              v282 = [v281 deviceMemory];
              v283 = v439;
              v284 = [v282 objectAtIndexedSubscript:v439];
              v285 = v277;
              v269 = v436;
              [v279 copyFromBuffer:v284 sourceOffset:v436 toBuffer:v285 destinationOffset:0 size:{objc_msgSend(v285, "length")}];

              v286 = v280;
              v254 = v423;
              v287 = [v286 objectAtIndexedSubscript:2];
              v288 = [v287 deviceMemory];
              v289 = [v288 objectAtIndexedSubscript:v283];
              v290 = v428;
              [v279 copyFromBuffer:v289 sourceOffset:v269 toBuffer:v428 destinationOffset:0 size:{objc_msgSend(v428, "length")}];

              v239 = v427;
              [v279 endEncoding];
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
            v295 = [v434 rnnTrainableStates];
            v296 = [v295 objectAtIndexedSubscript:v270];
            v297 = [v294 rnnTrainableWeights];
            v298 = [v297 objectAtIndexedSubscript:v270];
            v436 = v274;
            v399 = v274;
            v299 = v437;
            [v293 encodeForwardSequenceToCommandBuffer:v438 sourceMatrices:v441 sourceOffsets:v435 destinationMatrices:v437 destinationOffsets:v254 trainingStates:v296 recurrentInputState:v399 recurrentOutputStates:v292 weights:v298];

            v11 = v442;
            if ([v442 count] == 3 && v292 && objc_msgSend(v292, "count"))
            {
              v300 = [v292 objectAtIndexedSubscript:0];
              v301 = [v300 getRecurrentOutputMatrixForLayerIndex:0];
              v302 = [v301 data];

              v303 = [v292 objectAtIndexedSubscript:0];
              v304 = [v303 getMemoryCellMatrixForLayerIndex:0];
              v305 = [v304 data];

              v306 = [v438 blitCommandEncoder];
              v307 = [v442 objectAtIndexedSubscript:1];
              v308 = [v307 deviceMemory];
              v309 = v439;
              v310 = [v308 objectAtIndexedSubscript:v439];
              [v306 copyFromBuffer:v302 sourceOffset:0 toBuffer:v310 destinationOffset:v269 size:{objc_msgSend(v302, "length")}];

              v311 = [v442 objectAtIndexedSubscript:2];
              v312 = [v311 deviceMemory];
              v313 = v309;
              v254 = v423;
              v314 = [v312 objectAtIndexedSubscript:v313];
              [v306 copyFromBuffer:v305 sourceOffset:0 toBuffer:v314 destinationOffset:v269 size:{objc_msgSend(v305, "length")}];

              v315 = v442;
              [v306 endEncoding];
              [v292 removeAllObjects];

              v11 = v315;
              v299 = v437;
            }

            v267 = v299;

            ++v270;
            v266 = v430;
            v269 += v429;
            v251 = v254;
            v441 = v267;
            v268 = v431 - 1;
            v239 = v427;
          }

          while (v431 != 1);

          v10 = v420;
          v15 = v434;
          v241 = v425;
        }

        v160 = v416;
      }

      v316 = [v10 objectAtIndexedSubscript:0];
      [v15 setSource:v316];

      v317 = [v11 objectAtIndexedSubscript:0];
      [v15 setResult:v317];

      v318 = objc_autoreleasePoolPush();
      self = v417;
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
      v321 = v407;
      if (v432)
      {
        v321 = 1;
      }

      if (v321)
      {
        if (v432)
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
        v324 = v417;
        v325 = v413;
        v326 = objc_alloc(MEMORY[0x277CD75C0]);
        v327 = [(MLCDeviceGPU *)v324 deviceList];
        v328 = v439;
        v329 = [v327 objectAtIndexedSubscript:v439];
        v330 = v440;
        v429 = [v326 initWithDevice:v329 count:v440 << v325];

        v331 = objc_alloc(MEMORY[0x277CD75B8]);
        v332 = v324;
        v333 = v328;
        v334 = [(MLCDeviceGPU *)v332 deviceList];
        v335 = [v334 objectAtIndexedSubscript:v328];
        v336 = v411;
        v423 = [v331 initWithDevice:v335 copyRows:1 copyColumns:v411 sourcesAreTransposed:0 destinationsAreTransposed:0];

        v337 = v421;
        v437 = [MEMORY[0x277CD7258] matrixDescriptorWithRows:v421 columns:v323 rowBytes:4 * v323 dataType:268435488];
        v436 = [MEMORY[0x277CD7258] matrixDescriptorWithRows:1 columns:v323 rowBytes:4 * v323 dataType:268435488];
        if (v330)
        {
          v435 = 0;
          LODWORD(v338) = 0;
          v339 = v336 << 32;
          v428 = 4 * v337;
          do
          {
            v340 = v435;
            v430 = (4 * v435 * v425);
            v431 = v428 * v435 * v425;
            v341 = 1;
            v342 = v412;
            do
            {
              v343 = [v432 objectAtIndexedSubscript:v435];
              v344 = [v343 unsignedIntegerValue];

              v441 = (v344 - 1);
              v345 = v338;
              v346 = objc_alloc(MEMORY[0x277CD7250]);
              v347 = [v346 initWithBuffer:v433 offset:v431 descriptor:v437];
              v348 = objc_alloc(MEMORY[0x277CD7250]);
              v349 = [v442 objectAtIndexedSubscript:0];
              v350 = [v349 deviceMemory];
              v351 = [v350 objectAtIndexedSubscript:v333];
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
              v354 = v440;
              if (v341)
              {
                v355 = v441;
              }

              else
              {
                v355 = v339;
              }

              [v429 setCopyOperationAtIndex:v340 sourceMatrix:v347 destinationMatrix:v352 offsets:{v355, v338}];

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
        v357 = v429;
        [v423 encodeToCommandBuffer:v438 copyDescriptor:v429];
        v10 = v420;
        v11 = v442;
        self = v417;
        v15 = v434;
        v319 = v408;
        v239 = v427;
        v160 = v416;
        goto LABEL_139;
      }

      v426 = v318;
      v378 = objc_alloc(MEMORY[0x277CD75C0]);
      v379 = [(MLCDeviceGPU *)self deviceList];
      v380 = v439;
      v381 = [v379 objectAtIndexedSubscript:v439];
      v382 = [v378 initWithDevice:v381 count:v412];

      v383 = objc_alloc(MEMORY[0x277CD75B8]);
      v384 = [(MLCDeviceGPU *)self deviceList];
      v385 = [v384 objectAtIndexedSubscript:v380];
      v386 = v440;
      v423 = [v383 initWithDevice:v385 copyRows:v440 copyColumns:v411 sourcesAreTransposed:0 destinationsAreTransposed:0];

      v387 = ((v421 - 1) * v241);
      v388 = [MEMORY[0x277CD7258] matrixDescriptorWithRows:v386 columns:v421 * v241 rowBytes:4 * v421 * v241 dataType:268435488];
      v389 = [MEMORY[0x277CD7258] matrixDescriptorWithRows:v386 columns:v241 rowBytes:4 * v241 dataType:268435488];
      v390 = objc_alloc(MEMORY[0x277CD7250]);
      v437 = v388;
      v391 = [v390 initWithBuffer:v433 offset:0 descriptor:v388];
      v392 = objc_alloc(MEMORY[0x277CD7250]);
      v393 = [v442 objectAtIndexedSubscript:0];
      v394 = [v393 deviceMemory];
      v395 = [v394 objectAtIndexedSubscript:v380];
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

      v11 = v442;
      self = v417;
    }

    else
    {
      v426 = v318;
      v358 = objc_alloc(MEMORY[0x277CD75C0]);
      v359 = [(MLCDeviceGPU *)self deviceList];
      v360 = v439;
      v361 = [v359 objectAtIndexedSubscript:v439];
      v362 = v440;
      v357 = [v358 initWithDevice:v361 count:v440];

      v363 = objc_alloc(MEMORY[0x277CD75B8]);
      v364 = [(MLCDeviceGPU *)self deviceList];
      v365 = [v364 objectAtIndexedSubscript:v360];
      v366 = v421;
      v423 = [v363 initWithDevice:v365 copyRows:v421 copyColumns:v241 sourcesAreTransposed:0 destinationsAreTransposed:1];

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

        while (v440 != v370);
      }

      v356 = v423;
      [v423 encodeToCommandBuffer:v438 copyDescriptor:v357];
      v11 = v442;
      self = v417;
      v15 = v434;
    }

    v319 = v408;
    v239 = v427;
    v160 = v416;
    v10 = v420;
LABEL_139:

    v318 = v426;
    goto LABEL_140;
  }

LABEL_146:

  v398 = *MEMORY[0x277D85DE8];
}

- (void)dispatchRNNGradientLayer:(id)a3 sourceGradientTensors:(id)a4 resultGradientTensors:(id)a5
{
  v341[2] = *MEMORY[0x277D85DE8];
  v300 = a3;
  v335 = a4;
  v8 = a5;
  v9 = [v8 objectAtIndexedSubscript:0];
  [(MLCDeviceGPU *)self allocateResultTensor:v9];

  if ([(MLCDeviceGPU *)self numDevicesToUse])
  {
    v10 = 0;
    v305 = xmmword_238D45D60;
    v314 = self;
    v302 = v8;
    while (1)
    {
      v11 = [v300 objectAtIndexedSubscript:v10];
      v12 = [(MLCDeviceGPU *)self gpuCommandBufferList];
      v328 = [v12 objectAtIndexedSubscript:v10];

      v13 = [v11 returnsSequences];
      v14 = [v11 source];
      v15 = [v14 descriptor];
      v16 = [v15 variableLengthSequences];

      v17 = [v14 descriptor];
      v18 = [v17 shape];
      v308 = [v18 count];

      v19 = [v14 descriptor];
      v20 = [v19 shape];
      v307 = [v20 count];

      v21 = [v11 isBidirectional];
      v22 = 1;
      if (v21)
      {
        v22 = 2;
      }

      v325 = v21;
      v326 = v22;
      if (v16)
      {
        v23 = [v14 descriptor];
        v313 = [v23 batchSizePerSequenceStep];

        v24 = [v14 descriptor];
        v336 = [v24 sequenceLengths];
      }

      else
      {
        v336 = 0;
        v313 = 0;
      }

      v340 = [v11 batchSize];
      v25 = [v11 rnnBuffers];
      v26 = [v25 objectAtIndexedSubscript:0];

      v27 = [v11 rnnBuffers];
      v337 = [v27 objectAtIndexedSubscript:2];

      v28 = [v11 rnnBuffers];
      v29 = [v28 objectAtIndexedSubscript:3];

      if ([v11 batchFirst] && v308 == 3)
      {
        v30 = [v14 deviceMemory];
        v310 = [v30 objectAtIndexedSubscript:v10];

        v31 = [v302 objectAtIndexedSubscript:0];
        v32 = [v31 deviceMemory];
        v312 = [v32 objectAtIndexedSubscript:v10];

        if (v13)
        {
          v33 = [v335 objectAtIndexedSubscript:0];
          v34 = [v33 deviceMemory];
          v35 = [v34 objectAtIndexedSubscript:v10];

          v337 = v35;
        }
      }

      else
      {
        v312 = v29;
        v310 = v26;
      }

      v36 = [v14 descriptor];
      v37 = [v36 variableLengthSequences];

      if (v37)
      {
        v38 = v312;
        bzero([v312 contents], objc_msgSend(v312, "length"));
        +[MLCGPUHelper didModifyRange:buffer:](MLCGPUHelper, "didModifyRange:buffer:", 0, [v38 length], v38);
      }

      if ([v11 batchFirst] && v307 == 4)
      {
        LODWORD(v338) = v13;
        v39 = v16;
        v40 = [v14 descriptor];
        v41 = [v40 shape];
        v42 = [v41 objectAtIndexedSubscript:1];
        v311 = [v42 unsignedIntegerValue];

        v43 = [v14 descriptor];
        v44 = [v43 shape];
        v45 = [v44 objectAtIndexedSubscript:3];
        v327 = [v45 unsignedIntegerValue];
        v46 = 1;
      }

      else
      {
        if (![v11 batchFirst] || v308 != 3)
        {
          v311 = 0;
          v309 = 0;
          v51 = 0;
          v327 = 1;
          goto LABEL_22;
        }

        LODWORD(v338) = v13;
        v39 = v16;
        v257 = [v14 descriptor];
        v258 = [v257 shape];
        v259 = [v258 objectAtIndexedSubscript:1];
        v327 = [v259 unsignedIntegerValue];

        v43 = [v14 descriptor];
        v44 = [v43 shape];
        v45 = [v44 objectAtIndexedSubscript:2];
        v311 = [v45 unsignedIntegerValue];
        v46 = 2;
      }

      v47 = [v335 objectAtIndexedSubscript:0];
      v48 = [v47 descriptor];
      v49 = [v48 shape];
      v50 = [v49 objectAtIndexedSubscript:v46];
      v51 = [v50 unsignedIntegerValue];

      v309 = v51 >> v325;
      v16 = v39;
      v13 = v338;
LABEL_22:
      v52 = v336;
      v53 = [v11 batchFirst];
      v315 = v51;
      v54 = 4 * v51;
      v339 = v10;
      v330 = v11;
      v306 = v14;
      v336 = v52;
      v329 = v54;
      if (v53 && v307 == 4 && ((v13 ^ 1) & 1) == 0)
      {
        v333 = objc_autoreleasePoolPush();
        v55 = objc_alloc(MEMORY[0x277CD75C0]);
        v56 = [(MLCDeviceGPU *)self deviceList];
        [v56 objectAtIndexedSubscript:v10];
        v58 = v57 = self;
        v59 = v10;
        v60 = v340;
        v61 = [v55 initWithDevice:v58 count:v340];

        v62 = objc_alloc(MEMORY[0x277CD75B8]);
        v63 = [(MLCDeviceGPU *)v57 deviceList];
        v64 = [v63 objectAtIndexedSubscript:v59];
        v65 = v327;
        v66 = v315;
        v332 = [v62 initWithDevice:v64 copyRows:v327 copyColumns:v315 sourcesAreTransposed:1 destinationsAreTransposed:0];

        v338 = [MEMORY[0x277CD7258] matrixDescriptorWithRows:v66 columns:v65 rowBytes:4 * v65 dataType:268435488];
        v67 = [MEMORY[0x277CD7258] matrixDescriptorWithRows:v65 columns:v66 rowBytes:v54 dataType:268435488];
        v68 = v335;
        v69 = v337;
        if (v60)
        {
          v70 = 0;
          v71 = 0;
          v334 = 4 * v315 * v327;
          do
          {
            v72 = objc_alloc(MEMORY[0x277CD7250]);
            [v68 objectAtIndexedSubscript:0];
            v73 = v67;
            v75 = v74 = v61;
            v76 = [v75 deviceMemory];
            v77 = [v76 objectAtIndexedSubscript:v339];
            v78 = [v72 initWithBuffer:v77 offset:v70 descriptor:v338];

            v61 = v74;
            v67 = v73;
            v79 = [objc_alloc(MEMORY[0x277CD7250]) initWithBuffer:v69 offset:v70 descriptor:v73];
            [v61 setCopyOperationAtIndex:v71 sourceMatrix:v78 destinationMatrix:v79 offsets:{0, 0}];

            ++v71;
            v70 += v334;
          }

          while (v340 != v71);
        }

        v80 = v332;
        [v332 encodeToCommandBuffer:v328 copyDescriptor:v61];

        objc_autoreleasePoolPop(v333);
LABEL_47:
        v54 = v329;
        v11 = v330;
        goto LABEL_48;
      }

      if (!(v13 & 1 | (([v11 batchFirst] & 1) == 0) | v16 & 1))
      {
        v113 = objc_alloc(MEMORY[0x277CD75C0]);
        v114 = [(MLCDeviceGPU *)self deviceList];
        v115 = [v114 objectAtIndexedSubscript:v10];
        v116 = [v113 initWithDevice:v115 count:v326];

        v117 = objc_alloc(MEMORY[0x277CD75B8]);
        v118 = [(MLCDeviceGPU *)self deviceList];
        v119 = [v118 objectAtIndexedSubscript:v10];
        v120 = v117;
        v121 = v340;
        v338 = [v120 initWithDevice:v119 copyRows:v340 copyColumns:v309 sourcesAreTransposed:0 destinationsAreTransposed:0];

        v122 = v315;
        v334 = (v315 * (v327 - 1)) << 32;
        v123 = [MEMORY[0x277CD7258] matrixDescriptorWithRows:v121 columns:v327 * v315 rowBytes:4 * v327 * v315 dataType:268435488];
        v124 = [MEMORY[0x277CD7258] matrixDescriptorWithRows:v121 columns:v122 rowBytes:v54 dataType:268435488];
        v125 = objc_alloc(MEMORY[0x277CD7250]);
        v126 = v11;
        v127 = [v125 initWithBuffer:v337 offset:0 descriptor:v123];
        v128 = v10;
        v129 = objc_alloc(MEMORY[0x277CD7250]);
        v130 = [v335 objectAtIndexedSubscript:0];
        v131 = [v130 deviceMemory];
        v132 = [v131 objectAtIndexedSubscript:v128];
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

      v81 = v13 | ~[v11 batchFirst];
      v82 = v311;
      v83 = v327;
      v84 = v315;
      if (v81 & 1) != 0 || ((v16 ^ 1))
      {
        goto LABEL_49;
      }

      v323 = objc_autoreleasePoolPush();
      v85 = objc_alloc(MEMORY[0x277CD75C0]);
      v86 = [(MLCDeviceGPU *)self deviceList];
      v87 = [v86 objectAtIndexedSubscript:v10];
      v88 = v340;
      v332 = [v85 initWithDevice:v87 count:v340 << v325];

      v89 = objc_alloc(MEMORY[0x277CD75B8]);
      v90 = [(MLCDeviceGPU *)self deviceList];
      v91 = [v90 objectAtIndexedSubscript:v10];
      v322 = [v89 initWithDevice:v91 copyRows:1 copyColumns:v309 sourcesAreTransposed:0 destinationsAreTransposed:0];

      v331 = [MEMORY[0x277CD7258] matrixDescriptorWithRows:1 columns:v84 rowBytes:v54 dataType:268435488];
      v92 = [MEMORY[0x277CD7258] matrixDescriptorWithRows:v83 columns:v84 rowBytes:v54 dataType:268435488];
      if (v88)
      {
        v338 = 0;
        v93 = v309 << 32;
        v324 = 4 * v327 * v315;
        do
        {
          v94 = v54 * v338;
          v95 = 1;
          v96 = v338;
          v97 = v326;
          v333 = v324 * v338;
          v334 = v94;
          do
          {
            v98 = [v336 objectAtIndexedSubscript:v338];
            v99 = [v98 unsignedIntegerValue];

            v100 = (v99 - 1);
            v101 = objc_alloc(MEMORY[0x277CD7250]);
            v102 = [v335 objectAtIndexedSubscript:0];
            v103 = [v102 deviceMemory];
            v104 = [v103 objectAtIndexedSubscript:v339];
            v105 = [v101 initWithBuffer:v104 offset:v334 descriptor:v331];

            v106 = v340;
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

            [v332 setCopyOperationAtIndex:v96 sourceMatrix:v105 destinationMatrix:v108 offsets:{v110, v109}];

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
      v112 = v332;
      [v322 encodeToCommandBuffer:v328 copyDescriptor:v332];

      objc_autoreleasePoolPop(v323);
      v11 = v330;
LABEL_48:
      v82 = v311;
      v83 = v327;
      v84 = v315;
LABEL_49:
      v135 = v340;
      v136 = v313;
      v318 = createMatrices(v83, v340, v82, v82, v313, 0, v310);
      v338 = createMatrices(v83, v135, v84, v309, v136, 0, v337);
      v317 = createMatrices(v83, v135, v82, v82, v136, 0, v312);
      v304 = &v299;
      v137 = MEMORY[0x28223BE20](v317);
      v316 = &v299 - ((v138 + 15) & 0xFFFFFFFFFFFFFFF0);
      v301 = v138;
      MEMORY[0x28223BE20](v137);
      v324 = &v299 - v139;
      v140 = v335;
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
        v149 = (v324 + 8);
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

      v326 = [v11 gradientKernel];
      v152 = [v326 count];
      v153 = v152 >> v325;
      v329 = [MEMORY[0x277CBEBF8] mutableCopy];
      v154 = v84;
      v325 = v153;
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

      v323 = [v11 rnnStackedLayersResults];
      v160 = v338;
      v161 = [v11 isBidirectional];
      v322 = MEMORY[0x277CBEBF8];
      if (v161)
      {
        v162 = [v11 rnnBuffers];
        v163 = [v162 objectAtIndexedSubscript:4];
        v322 = createMatrices(v83, v135, v311, v311, v313, 0, v163);
      }

      v303 = v160;
      if (v325)
      {
        v164 = 0;
        v165 = 0;
        v166 = v324;
        do
        {
          v338 = v160;
          v331 = v166;
          if (v155)
          {
            v167 = [v323 objectAtIndexedSubscript:v155 - 1];

            v334 = [v329 objectAtIndexedSubscript:v155 - 1];
            v168 = v324;
          }

          else
          {
            v167 = v318;

            v169 = [v11 isBidirectional];
            v170 = v317;
            if (v169)
            {
              v170 = v322;
            }

            v334 = v170;
            v168 = v316;
          }

          v171 = [v326 objectAtIndexedSubscript:v155];
          v172 = [v11 rnnTrainableWeightGradients];
          v173 = [v172 objectAtIndexedSubscript:v155];
          v174 = [v11 rnnTrainableStates];
          v175 = [v174 objectAtIndexedSubscript:v155];
          v176 = [v11 rnnTrainableWeights];
          v177 = [v176 objectAtIndexedSubscript:v155];
          v297 = v168;
          v332 = v168;
          v333 = v167;
          v178 = v167;
          v179 = v168;
          v180 = v338;
          v181 = v334;
          [v171 encodeGradientSequenceToCommandBuffer:v328 forwardSources:v178 forwardSourceOffsets:v179 sourceGradients:v338 sourceGradientOffsets:v331 destinationGradients:v334 destinationOffsets:v297 weightGradients:v173 trainingStates:v175 recurrentInputState:0 recurrentOutputStates:0 weights:v177];

          v11 = v330;
          if (v325 != 1)
          {
            if (v155)
            {
              [v11 lstmDropout];
              if (v182 > 0.0)
              {
                v183 = [v11 rnnStackedLayersBufferResults];
                v331 = [v183 objectAtIndexedSubscript:v155 - 1];

                v184 = [MEMORY[0x277CD7220] imageDescriptorWithChannelFormat:4 width:1 height:v315 featureChannels:v327];
                v321 = v184;
                v185 = [MEMORY[0x277CD72A8] defaultAllocator];
                v320 = v185;
                v186 = v314;
                v187 = [(MLCDeviceGPU *)v314 gpuWriteTensorKernelList];
                v188 = v339;
                v189 = [v187 objectAtIndexedSubscript:v339];
                v190 = [v11 batchSize];
                v191 = v185;
                v192 = v328;
                v193 = [v191 imageBatchForCommandBuffer:v328 imageDescriptor:v184 kernel:v189 count:v190];

                v194 = [(MLCDeviceGPU *)v186 gpuWriteTensorKernelList];
                v195 = [v194 objectAtIndexedSubscript:v188];
                [MLCGPUHelper copyMTLBufferToMPSImageBatch:v195 commandBuffer:v192 sourceMTLBuffer:v331 destinationImageBatch:v193 MLCDataType:1];

                v196 = [v330 batchSize];
                v197 = [v330 lstmDropoutSource];
                v198 = [v197 objectAtIndexedSubscript:v155 - 1];
                v199 = [v198 subarrayWithRange:{0, v196}];
                v319 = v199;

                v200 = [v330 lstmDropoutState];
                v201 = [v200 objectAtIndexedSubscript:v155 - 1];

                v202 = [v330 lstmDropoutGradientKernel];
                v203 = [v202 objectAtIndexedSubscript:v155 - 1];

                v204 = [MEMORY[0x277CD72A8] defaultAllocator];
                [v203 setDestinationImageAllocator:v204];

                v205 = [v203 encodeBatchToCommandBuffer:v192 sourceGradients:v193 sourceImages:v199 gradientStates:v201];
                v206 = [(MLCDeviceGPU *)v186 gpuReadTensorKernelList];
                v207 = [v206 objectAtIndexedSubscript:v188];
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
          v83 = v327;
          v166 = v332;
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

      v210 = [v11 isBidirectional];
      v211 = v339;
      v212 = v306;
      if (v210)
      {
        v333 = v165;
        v213 = v340;
        v214 = v311;
        v215 = v313;
        v338 = createMatrices(v83, v340, v311, v311, v313, 1, v310);
        v216 = v315;
        v334 = createMatrices(v83, v213, v315, v309, v215, 1, v337);
        v217 = [v11 rnnBuffers];
        v218 = [v217 objectAtIndexedSubscript:5];
        v332 = createMatrices(v83, v213, v214, v214, v215, 1, v218);

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

        v321 = [v326 objectAtIndexedSubscript:1];
        v245 = v330;
        v325 = [v330 rnnTrainableWeightGradients];
        v246 = [v325 objectAtIndexedSubscript:1];
        v324 = [v245 rnnTrainableStates];
        v247 = [v324 objectAtIndexedSubscript:1];
        v248 = [v245 rnnTrainableWeights];
        v249 = [v248 objectAtIndexedSubscript:1];
        v298 = v227;
        v250 = v321;
        v251 = v225;
        v252 = v245;
        [v321 encodeGradientSequenceToCommandBuffer:v328 forwardSources:v338 forwardSourceOffsets:v222 sourceGradients:v334 sourceGradientOffsets:v251 destinationGradients:v332 destinationOffsets:v298 weightGradients:v246 trainingStates:v247 recurrentInputState:0 recurrentOutputStates:0 weights:v249];

        v253 = [v245 biDirectionalGradientResult];
        if ([v245 batchFirst])
        {
          v83 = v327;
          if (v308 == 3)
          {
            v254 = [MEMORY[0x277CD7258] matrixDescriptorWithRows:v340 columns:v327 * v311 rowBytes:4 * v327 * v311 dataType:268435488];
            v255 = objc_alloc(MEMORY[0x277CD7250]);
            v256 = [v255 initWithBuffer:v312 descriptor:v254];

            v253 = v256;
          }

          v211 = v339;
          v212 = v306;
        }

        else
        {
          v211 = v339;
          v212 = v306;
          v83 = v327;
        }

        v260 = [v252 biDirectionalSumKernel];
        v261 = [v252 forwardTimeGradientResult];
        v341[0] = v261;
        v262 = [v252 reverseTimeGradientResult];
        v341[1] = v262;
        v263 = [MEMORY[0x277CBEA60] arrayWithObjects:v341 count:2];
        [v260 encodeToCommandBuffer:v328 sourceMatrices:v263 resultMatrix:v253 scaleVector:0 offsetVector:0 biasVector:0 startIndex:0];

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
        LODWORD(v327) = 1;
        v333 = v165;
        v325 = objc_autoreleasePoolPush();
        v266 = objc_alloc(MEMORY[0x277CD75C0]);
        v267 = v314;
        v268 = [(MLCDeviceGPU *)v314 deviceList];
        v269 = [v268 objectAtIndexedSubscript:v211];
        v270 = v340;
        v334 = [v266 initWithDevice:v269 count:v340];

        v271 = objc_alloc(MEMORY[0x277CD75B8]);
        v272 = [(MLCDeviceGPU *)v267 deviceList];
        v273 = [v272 objectAtIndexedSubscript:v211];
        v274 = v271;
        v275 = v311;
        v324 = [v274 initWithDevice:v273 copyRows:v83 copyColumns:v311 sourcesAreTransposed:0 destinationsAreTransposed:1];

        v276 = [MEMORY[0x277CD7258] matrixDescriptorWithRows:v83 columns:v275 rowBytes:4 * v275 dataType:268435488];
        v332 = [MEMORY[0x277CD7258] matrixDescriptorWithRows:v275 columns:v83 rowBytes:4 * v83 dataType:268435488];
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
            v283 = [v330 rnnBuffers];
            v284 = [v283 objectAtIndexedSubscript:3];
            v338 = [v282 initWithBuffer:v284 offset:v280 descriptor:v276];

            v285 = objc_alloc(*(v279 + 592));
            v286 = [v277 objectAtIndexedSubscript:0];
            v287 = [v286 deviceMemory];
            [v287 objectAtIndexedSubscript:v278];
            v288 = v279;
            v289 = v277;
            v290 = v278;
            v292 = v291 = v276;
            v293 = [v285 initWithBuffer:v292 offset:v280 descriptor:v332];

            v276 = v291;
            v278 = v290;
            v277 = v289;
            v279 = v288;

            v294 = v338;
            [v334 setCopyOperationAtIndex:v281 sourceMatrix:v338 destinationMatrix:v293 offsets:{0, 0}];

            ++v281;
            v280 += v331;
          }

          while (v340 != v281);
        }

        v295 = v324;
        v265 = v334;
        [v324 encodeToCommandBuffer:v328 copyDescriptor:v334];

        objc_autoreleasePoolPop(v325);
        v211 = v278;
        v11 = v330;
        v212 = v306;
        v165 = v333;
        LOBYTE(v265) = v327;
        v209 = v321;
        v164 = v320;
      }

      self = v314;
      v8 = v302;
      if (v265)
      {
        v10 = v211 + 1;
        if (v10 < [(MLCDeviceGPU *)v314 numDevicesToUse])
        {
          continue;
        }
      }

      break;
    }
  }

  v296 = *MEMORY[0x277D85DE8];
}

- (void)incrementReadCountForTensorDeviceMemory:(id)a3 increment:(int64_t)a4
{
  v13 = a3;
  if ([(MLCDeviceGPU *)self numDevicesToUse])
  {
    v6 = 0;
    do
    {
      v7 = [v13 objectAtIndexedSubscript:v6];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v9 = [v13 objectAtIndexedSubscript:v6];
        v10 = [v9 objectAtIndexedSubscript:0];
        objc_opt_class();
        v11 = objc_opt_isKindOfClass();

        if (v11)
        {
          v12 = [v13 objectAtIndexedSubscript:v6];
          MPSImageBatchIncrementReadCount(v12, a4);
        }
      }

      ++v6;
    }

    while (v6 < [(MLCDeviceGPU *)self numDevicesToUse]);
  }
}

- (void)incrementReadCountForGradientState:(id)a3 increment:(int64_t)a4
{
  v11 = a3;
  if ([(MLCDeviceGPU *)self numDevicesToUse])
  {
    v6 = 0;
    do
    {
      v7 = [v11 objectAtIndexedSubscript:v6];
      v8 = [v7 gradientState];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
        v10 = [v7 gradientState];
        MPSStateBatchIncrementReadCount(v10, a4);
      }

      ++v6;
    }

    while (v6 < [(MLCDeviceGPU *)self numDevicesToUse]);
  }
}

- (void)sumSharedGradientsForConvolutionLayerTensorParameter:(id)a3 layerIndexForSummedGradients:(unint64_t)a4
{
  v77 = a3;
  v6 = objc_autoreleasePoolPush();
  v7 = [v77 childLayers];
  v8 = [v7 count];

  if (v8 != 1)
  {
    v67 = v6;
    v9 = [v77 childLayers];
    v69 = [v9 objectAtIndexedSubscript:a4];

    if ([(MLCDeviceGPU *)self numDevicesToUse])
    {
      v10 = 0;
      v68 = self;
      while (1)
      {
        v11 = [v69 deviceOps];
        v12 = [v11 objectAtIndexedSubscript:v10];

        v13 = [(MLCDeviceGPU *)self deviceList];
        v14 = [v13 objectAtIndexedSubscript:v10];

        v15 = [(MLCDeviceGPU *)self gpuCommandBufferList];
        v71 = [v15 objectAtIndexedSubscript:v10];

        objc_opt_class();
        LOBYTE(v15) = objc_opt_isKindOfClass();
        v16 = [v69 weights];

        v74 = v12;
        v72 = v14;
        if ((v15 & 1) == 0)
        {
          break;
        }

        v17 = [v12 isMPSGraph];
        v18 = [v12 gradientState];
        if (v16 != v77)
        {
          if (v17)
          {
            v19 = [v18 objectAtIndexedSubscript:1];
            goto LABEL_13;
          }

          v20 = [v18 objectAtIndexedSubscript:0];
          v21 = [v20 gradientForBiases];
          goto LABEL_12;
        }

        v22 = [v18 objectAtIndexedSubscript:0];
        v19 = v22;
        if ((v17 & 1) == 0)
        {
          v23 = [v22 gradientForWeights];

          v19 = v23;
        }

LABEL_13:

        [MEMORY[0x277CD7258] matrixDescriptorWithRows:1 columns:objc_msgSend(v19 rowBytes:"length") >> 2 dataType:{objc_msgSend(v19, "length"), 268435488}];
        v75 = v73 = v19;
        v24 = [objc_alloc(MEMORY[0x277CD7250]) initWithBuffer:v19 descriptor:v75];
        v25 = objc_alloc(MEMORY[0x277CBEB18]);
        v26 = [v77 childLayers];
        v27 = [v25 initWithCapacity:{objc_msgSend(v26, "count") + 1}];

        v70 = v24;
        [v27 addObject:v24];
        v28 = [v77 childLayers];
        v29 = [v28 count];

        if (v29)
        {
          v30 = 0;
          v76 = v16;
          while (2)
          {
            v31 = [v77 childLayers];
            v32 = [v31 objectAtIndexedSubscript:v30];

            if (a4 == v30 || ![v32 isTrainable])
            {
              goto LABEL_41;
            }

            v33 = [v32 deviceOps];
            v34 = [v33 objectAtIndexedSubscript:v10];

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v35 = v32;
              if (v16 == v77)
              {
                v50 = [v35 weightsParameter];
                if (!v50)
                {
                  goto LABEL_35;
                }

                v51 = v50;
                v52 = [v35 weightsParameter];
                v53 = [v52 isUpdatable];

                if (!v53)
                {
                  goto LABEL_35;
                }

                v54 = [v74 isMPSGraph];
                v42 = [v34 gradientState];
                v55 = [v42 objectAtIndexedSubscript:0];
                v43 = v55;
                if ((v54 & 1) == 0)
                {
                  v56 = [v55 gradientForWeights];

                  v43 = v56;
                }

LABEL_37:
              }

              else
              {
                v36 = [v35 biasesParameter];
                if (v36)
                {
                  v37 = v36;
                  v38 = [v35 biasesParameter];
                  v39 = [v38 isUpdatable];

                  if (v39)
                  {
                    v40 = [v74 isMPSGraph];
                    v41 = [v34 gradientState];
                    v42 = v41;
                    if (v40)
                    {
                      v43 = [v41 objectAtIndexedSubscript:1];
                    }

                    else
                    {
                      v62 = [v41 objectAtIndexedSubscript:0];
                      v43 = [v62 gradientForBiases];
                    }

                    goto LABEL_37;
                  }
                }

LABEL_35:
                v43 = 0;
              }

LABEL_38:

              v16 = v76;
              if (v43)
              {
                v63 = [objc_alloc(MEMORY[0x277CD7250]) initWithBuffer:v43 descriptor:v75];
                [v27 addObject:v63];
              }
            }

            else
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v44 = v32;
                if (v16 == v77)
                {
                  v57 = [v44 weightsParameter];
                  if (!v57)
                  {
                    goto LABEL_35;
                  }

                  v58 = v57;
                  v59 = [v44 weightsParameter];
                  v60 = [v59 isUpdatable];

                  v49 = 0;
                  if ((v60 & 1) == 0)
                  {
                    v43 = 0;
                    self = v68;
                    goto LABEL_38;
                  }
                }

                else
                {
                  v45 = [v44 biasesParameter];
                  if (!v45)
                  {
                    goto LABEL_35;
                  }

                  v46 = v45;
                  v47 = [v44 biasesParameter];
                  v48 = [v47 isUpdatable];

                  if (!v48)
                  {
                    goto LABEL_35;
                  }

                  v49 = 1;
                }

                v42 = [v34 gradientState];
                v61 = [v42 objectAtIndexedSubscript:v49];
                v43 = [v61 data];

                self = v68;
                goto LABEL_37;
              }
            }

LABEL_41:
            ++v30;
            v64 = [v77 childLayers];
            v65 = [v64 count];

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

      v18 = [v12 gradientState];
      v20 = [v18 objectAtIndexedSubscript:v16 != v77];
      v21 = [v20 data];
LABEL_12:
      v19 = v21;

      goto LABEL_13;
    }

LABEL_47:

    v6 = v67;
  }

  objc_autoreleasePoolPop(v6);
}

- (id)getGradientBufferForNormalizationState:(id)a3 layer:(id)a4 isBetaTensor:(BOOL)a5
{
  v5 = a5;
  v7 = a3;
  v8 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v9 = v8;
    v10 = v9;
    if (v5)
    {
      v11 = [v9 betaParameter];
      if (v11)
      {
        v12 = [v10 betaParameter];
        v13 = [v12 isUpdatable];

        if (v13)
        {
          v14 = [v7 normalizationBetaGradient];
LABEL_12:
          v11 = v14;
          goto LABEL_14;
        }

        goto LABEL_13;
      }
    }

    else
    {
      v11 = [v9 gammaParameter];
      if (v11)
      {
        v15 = [v10 gammaParameter];
        v16 = [v15 isUpdatable];

        if (v16)
        {
          v14 = [v7 normalizationGammaGradient];
          goto LABEL_12;
        }

LABEL_13:
        v11 = 0;
      }
    }

LABEL_14:

    goto LABEL_15;
  }

  v11 = 0;
LABEL_15:

  return v11;
}

- (void)sumSharedGradientsForNormalizationLayerTensorParameter:(id)a3 layerIndexForSummedGradients:(unint64_t)a4 isBetaTensor:(BOOL)a5
{
  v43 = a5;
  v44 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = [v44 childLayers];
  v9 = [v8 count];

  if (v9 != 1)
  {
    v36 = v7;
    v10 = [v44 childLayers];
    v42 = [v10 objectAtIndexedSubscript:a4];

    if ([(MLCDeviceGPU *)self numDevicesToUse])
    {
      v11 = 0;
      do
      {
        v12 = [v42 deviceOps];
        v13 = [v12 objectAtIndexedSubscript:v11];

        v14 = [(MLCDeviceGPU *)self deviceList];
        v15 = [v14 objectAtIndexedSubscript:v11];

        v16 = [(MLCDeviceGPU *)self gpuCommandBufferList];
        v17 = [v16 objectAtIndexedSubscript:v11];

        v18 = [(MLCDeviceGPU *)self getGradientBufferForNormalizationState:v13 layer:v42 isBetaTensor:v43];
        v19 = v18;
        if (v18)
        {
          v38 = v17;
          v39 = v15;
          v40 = v13;
          v41 = [MEMORY[0x277CD7258] matrixDescriptorWithRows:1 columns:objc_msgSend(v18 rowBytes:"length") >> 2 dataType:{objc_msgSend(v18, "length"), 268435488}];
          v20 = [objc_alloc(MEMORY[0x277CD7250]) initWithBuffer:v19 descriptor:v41];
          v21 = objc_alloc(MEMORY[0x277CBEB18]);
          v22 = [v44 childLayers];
          v23 = [v21 initWithCapacity:{objc_msgSend(v22, "count") + 1}];

          v37 = v20;
          [v23 addObject:v20];
          v24 = [v44 childLayers];
          v25 = [v24 count];

          if (v25)
          {
            v26 = 0;
            do
            {
              v27 = [v44 childLayers];
              v28 = [v27 objectAtIndexedSubscript:v26];

              if (a4 != v26 && [v28 isTrainable])
              {
                v29 = [v28 deviceOps];
                v30 = [v29 objectAtIndexedSubscript:v11];

                v31 = [(MLCDeviceGPU *)self getGradientBufferForNormalizationState:v30 layer:v42 isBetaTensor:v43];
                if (v31)
                {
                  v32 = [objc_alloc(MEMORY[0x277CD7250]) initWithBuffer:v31 descriptor:v41];
                  [v23 addObject:v32];
                }
              }

              ++v26;
              v33 = [v44 childLayers];
              v34 = [v33 count];
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

- (void)updateConvolutionLayer:(id)a3 optimizer:(id)a4 weightsParameter:(id)a5 biasesParameter:(id)a6 arrayOfParams:(id)a7
{
  v80[2] = *MEMORY[0x277D85DE8];
  v12 = a3;
  v69 = a4;
  v70 = a5;
  v13 = a6;
  v68 = a7;
  if ([(MLCDeviceGPU *)self numDevicesToUse])
  {
    v14 = 0;
    v58 = v12;
    v71 = self;
    v67 = v13;
    do
    {
      v15 = [v12 objectAtIndexedSubscript:v14];
      if (-[MLCDeviceGPU numDevicesToUse](self, "numDevicesToUse") == 2 && [v15 multiGPUReduction] == 1)
      {
        v16 = [v15 isMPSGraph];
        v17 = [v15 gradientState];
        v18 = v17;
        if ((v16 & 1) == 0)
        {
          v19 = [v17 objectAtIndexedSubscript:0];

          v20 = [v19 gradientForWeights];
          v80[0] = v20;
          v21 = [v19 gradientForBiases];
          v80[1] = v21;
          v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v80 count:2];
        }

        [(MLCDeviceGPU *)self allReduceOverXGMI:v12 deviceIndex:v14 stateBuffers:v18];
      }

      v22 = [(MLCDeviceGPU *)self gpuCommandBufferList];
      v23 = [v22 objectAtIndexedSubscript:v14];

      v74 = v23;
      if ([v15 isMPSGraph])
      {
        v24 = 0;
        v72 = 0;
      }

      else
      {
        v25 = [v15 forwardKernel];
        v24 = [v25 exportWeightsAndBiasesWithCommandBuffer:v23 resultStateCanBeTemporary:0];

        v26 = [v15 gradientState];
        v72 = [v26 objectAtIndexedSubscript:0];

        [v15 setExportableState:v24];
      }

      v27 = [v15 momentumVectors];
      v28 = [v15 velocityVectors];
      v29 = [v15 centerWeightVectors];
      v73 = deviceParameterWithVectors(v27, v28, v29);

      if ([v70 isUpdatable])
      {
        v30 = [v69 objectAtIndexedSubscript:v14];
        v31 = [v15 isMPSGraph];
        if (v31)
        {
          v63 = [v15 exportableState];
          v32 = [v63 objectAtIndexedSubscript:0];
          v61 = v32;
        }

        else
        {
          v32 = [v24 weights];
          v65 = v32;
        }

        v33 = [v15 isMPSGraph];
        if (v33)
        {
          v64 = [v15 gradientState];
          v34 = [v64 objectAtIndexedSubscript:0];
          v62 = v34;
        }

        else
        {
          v34 = [v72 gradientForWeights];
          v66 = v34;
        }

        if ([v15 isMPSGraph])
        {
          v35 = [v15 exportableState];
          v36 = [v35 objectAtIndexedSubscript:0];
          [(MLCDeviceGPU *)v71 updateWithOptimizer:v30 arrayOfParams:v68 commandBuffer:v74 deviceParameter:v73 source:v32 gradient:v34 result:v36 momentumIndex:0];

          v12 = v58;
        }

        else
        {
          v35 = [v24 weights];
          [(MLCDeviceGPU *)v71 updateWithOptimizer:v30 arrayOfParams:v68 commandBuffer:v74 deviceParameter:v73 source:v32 gradient:v34 result:v35 momentumIndex:0];
        }

        v37 = v66;
        if (v33)
        {

          v37 = v64;
        }

        v38 = v65;
        v13 = v67;
        if (v31)
        {

          v38 = v63;
        }

        self = v71;
      }

      if (v13 && [v13 isUpdatable])
      {
        v39 = [v69 objectAtIndexedSubscript:v14];
        v40 = [v15 isMPSGraph];
        if (v40)
        {
          v56 = [v15 exportableState];
          v41 = [v56 objectAtIndexedSubscript:1];
          v54 = v41;
        }

        else
        {
          v41 = [v24 biases];
          v59 = v41;
        }

        v42 = [v15 isMPSGraph];
        if (v42)
        {
          v57 = [v15 gradientState];
          v43 = [v57 objectAtIndexedSubscript:1];
          v55 = v43;
        }

        else
        {
          v43 = [v72 gradientForBiases];
          v60 = v43;
        }

        if ([v15 isMPSGraph])
        {
          v44 = [v15 exportableState];
          v45 = [v44 objectAtIndexedSubscript:1];
          [(MLCDeviceGPU *)v71 updateWithOptimizer:v39 arrayOfParams:v68 commandBuffer:v74 deviceParameter:v73 source:v41 gradient:v43 result:v45 momentumIndex:1];

          v12 = v58;
        }

        else
        {
          v44 = [v24 biases];
          [(MLCDeviceGPU *)v71 updateWithOptimizer:v39 arrayOfParams:v68 commandBuffer:v74 deviceParameter:v73 source:v41 gradient:v43 result:v44 momentumIndex:1];
        }

        v46 = v60;
        if (v42)
        {

          v46 = v57;
        }

        v47 = v59;
        v13 = v67;
        if (v40)
        {

          v47 = v56;
        }

        self = v71;
      }

      if (([v15 isMPSGraph] & 1) == 0)
      {
        v77 = 0u;
        v78 = 0u;
        v75 = 0u;
        v76 = 0u;
        v48 = [v15 gradientState];
        v49 = [v48 countByEnumeratingWithState:&v75 objects:v79 count:16];
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
                objc_enumerationMutation(v48);
              }

              [*(*(&v75 + 1) + 8 * i) setReadCount:0];
            }

            v50 = [v48 countByEnumeratingWithState:&v75 objects:v79 count:16];
          }

          while (v50);
        }
      }

      ++v14;
    }

    while (v14 < [(MLCDeviceGPU *)self numDevicesToUse]);
  }

  if (!v68)
  {
    [(MLCDeviceGPU *)self restoreConvolutionParamsWithDeviceOps:v12];
  }

  v53 = *MEMORY[0x277D85DE8];
}

- (void)restoreConvolutionParamsWithDeviceOps:(id)a3
{
  v13 = a3;
  if ([(MLCDeviceGPU *)self numDevicesToUse])
  {
    v4 = 0;
    do
    {
      v5 = [v13 objectAtIndexedSubscript:v4];
      v6 = [(MLCDeviceGPU *)self gpuCommandBufferList];
      v7 = [v6 objectAtIndexedSubscript:v4];

      if (([v5 isMPSGraph] & 1) == 0)
      {
        v8 = objc_autoreleasePoolPush();
        v9 = [v5 forwardKernel];
        v10 = [v5 exportableState];
        [v9 reloadWeightsAndBiasesWithCommandBuffer:v7 state:v10];

        v11 = [v5 gradientKernel];
        v12 = [v5 exportableState];
        [v11 reloadWeightsAndBiasesWithCommandBuffer:v7 state:v12];

        [v5 setExportableState:0];
        objc_autoreleasePoolPop(v8);
      }

      ++v4;
    }

    while (v4 < [(MLCDeviceGPU *)self numDevicesToUse]);
  }
}

- (void)updateFullyConnectedLayer:(id)a3 optimizer:(id)a4 weightsParameter:(id)a5 biasesParameter:(id)a6 arrayOfParams:(id)a7
{
  v69[1] = *MEMORY[0x277D85DE8];
  v60 = a3;
  v56 = a4;
  v59 = a5;
  v12 = a6;
  v55 = a7;
  if ([(MLCDeviceGPU *)self numDevicesToUse])
  {
    v13 = 0;
    v61 = self;
    v54 = v12;
    do
    {
      v14 = [v60 objectAtIndexedSubscript:v13];
      if (-[MLCDeviceGPU numDevicesToUse](self, "numDevicesToUse") == 2 && [v14 multiGPUReduction] == 1)
      {
        v15 = v13;
        v16 = [v14 gradientState];
        v17 = [v16 objectAtIndexedSubscript:0];
        v18 = [v17 data];
        v69[0] = v18;
        v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v69 count:1];
        v20 = [v19 mutableCopy];

        v21 = [v14 gradientState];
        v22 = [v21 count];

        if (v22 >= 2)
        {
          v23 = [v14 gradientState];
          v24 = [v23 objectAtIndexedSubscript:1];
          v25 = [v24 data];
          [v20 setObject:v25 atIndexedSubscript:1];
        }

        v26 = [v20 copy];
        v13 = v15;
        [(MLCDeviceGPU *)self allReduceOverXGMI:v60 deviceIndex:v15 stateBuffers:v26];
      }

      v27 = [(MLCDeviceGPU *)self gpuCommandBufferList];
      v63 = [v27 objectAtIndexedSubscript:v13];

      v28 = [v14 momentumVectors];
      v29 = [v14 velocityVectors];
      v30 = [v14 centerWeightVectors];
      v62 = deviceParameterWithVectors(v28, v29, v30);

      if ([v59 isUpdatable])
      {
        v31 = [v56 objectAtIndexedSubscript:v13];
        v57 = [v14 exportableState];
        v32 = [v57 objectAtIndexedSubscript:0];
        v33 = [v14 gradientState];
        v34 = [v33 objectAtIndexedSubscript:0];
        v35 = [v34 data];
        [v14 exportableState];
        v37 = v36 = v13;
        v38 = [v37 objectAtIndexedSubscript:0];
        [(MLCDeviceGPU *)v61 updateWithOptimizer:v31 arrayOfParams:v55 commandBuffer:v63 deviceParameter:v62 source:v32 gradient:v35 result:v38 momentumIndex:0];

        self = v61;
        v13 = v36;

        v12 = v54;
      }

      if (v12 && [v12 isUpdatable])
      {
        v39 = [v56 objectAtIndexedSubscript:v13];
        v58 = [v14 exportableState];
        v40 = [v58 objectAtIndexedSubscript:1];
        v41 = [v14 gradientState];
        v42 = [v41 objectAtIndexedSubscript:1];
        v43 = [v42 data];
        [v14 exportableState];
        v45 = v44 = v13;
        v46 = [v45 objectAtIndexedSubscript:1];
        [(MLCDeviceGPU *)v61 updateWithOptimizer:v39 arrayOfParams:v55 commandBuffer:v63 deviceParameter:v62 source:v40 gradient:v43 result:v46 momentumIndex:1];

        self = v61;
        v13 = v44;

        v12 = v54;
      }

      v66 = 0u;
      v67 = 0u;
      v64 = 0u;
      v65 = 0u;
      v47 = [v14 gradientState];
      v48 = [v47 countByEnumeratingWithState:&v64 objects:v68 count:16];
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
              objc_enumerationMutation(v47);
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
          v49 = [v47 countByEnumeratingWithState:&v64 objects:v68 count:16];
        }

        while (v49);
      }

      ++v13;
    }

    while (v13 < [(MLCDeviceGPU *)self numDevicesToUse]);
  }

  v53 = *MEMORY[0x277D85DE8];
}

- (void)updateLayerNormalizationLayer:(id)a3 optimizer:(id)a4 betaParameter:(id)a5 gammaParameter:(id)a6 arrayOfParams:(id)a7
{
  v64[2] = *MEMORY[0x277D85DE8];
  v62 = a3;
  v61 = a4;
  v60 = a5;
  v59 = a6;
  v58 = a7;
  if ([(MLCDeviceGPU *)self numDevicesToUse])
  {
    v12 = 0;
    do
    {
      v13 = [v62 objectAtIndexedSubscript:v12];
      if ([(MLCDeviceGPU *)self numDevicesToUse]== 2)
      {
        v14 = [v13 normalizationMultiGPUChildOps];
        v15 = [v14 multiGPUReduction];

        if (v15 == 1)
        {
          v55 = [v62 objectAtIndexedSubscript:0];
          v16 = [v55 normalizationMultiGPUChildOps];
          v64[0] = v16;
          v17 = [v62 objectAtIndexedSubscript:1];
          v18 = [v17 normalizationMultiGPUChildOps];
          v64[1] = v18;
          v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v64 count:2];
          v20 = [v13 normalizationGammaGradient];
          v63[0] = v20;
          v21 = [v13 normalizationBetaGradient];
          v63[1] = v21;
          v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v63 count:2];
          [(MLCDeviceGPU *)self allReduceOverXGMI:v19 deviceIndex:v12 stateBuffers:v22];
        }
      }

      v23 = [(MLCDeviceGPU *)self gpuCommandBufferList];
      v24 = [v23 objectAtIndexedSubscript:v12];

      v25 = [v13 exportableState];
      v26 = [v13 momentumVectors];
      v27 = [v13 velocityVectors];
      v28 = [v13 centerWeightVectors];
      v29 = deviceParameterWithVectors(v26, v27, v28);

      v30 = [v13 normalizationGammaGradient];
      if (v30)
      {
        v31 = v30;
        v32 = [v59 isUpdatable];

        if (v32)
        {
          v33 = [v13 normalizationGammaGradient];
          if ([(MLCDeviceGPU *)self numDevicesToUse]== 2)
          {
            v34 = [v13 normalizationMultiGPUChildOps];
            v35 = [v34 multiGPUReduction];

            if (v35 == 1)
            {
              v36 = [v13 normalizationMultiGPUChildOps];
              v37 = [v36 allReducedGradientMatrices];
              v38 = [v37 objectAtIndexedSubscript:0];
              v56 = [v38 data];

              v33 = v56;
            }
          }

          v39 = [v61 objectAtIndexedSubscript:v12];
          v40 = [v25 gamma];
          v41 = [v25 gamma];
          [(MLCDeviceGPU *)self updateWithOptimizer:v39 arrayOfParams:v58 commandBuffer:v24 deviceParameter:v29 source:v40 gradient:v33 result:v41 momentumIndex:0];
        }
      }

      v42 = [v13 normalizationBetaGradient];
      if (v42)
      {
        v43 = v42;
        v44 = [v60 isUpdatable];

        if (v44)
        {
          v45 = [v13 normalizationBetaGradient];
          if ([(MLCDeviceGPU *)self numDevicesToUse]== 2)
          {
            v46 = [v13 normalizationMultiGPUChildOps];
            v47 = [v46 multiGPUReduction];

            if (v47 == 1)
            {
              v48 = [v13 normalizationMultiGPUChildOps];
              v49 = [v48 allReducedGradientMatrices];
              v50 = [v49 objectAtIndexedSubscript:1];
              v57 = [v50 data];

              v45 = v57;
            }
          }

          v51 = [v61 objectAtIndexedSubscript:v12];
          v52 = [v25 beta];
          v53 = [v25 beta];
          [(MLCDeviceGPU *)self updateWithOptimizer:v51 arrayOfParams:v58 commandBuffer:v24 deviceParameter:v29 source:v52 gradient:v45 result:v53 momentumIndex:1];
        }
      }

      ++v12;
    }

    while (v12 < [(MLCDeviceGPU *)self numDevicesToUse]);
  }

  v54 = *MEMORY[0x277D85DE8];
}

- (void)updateEmbeddingLayer:(id)a3 weightsParameter:(id)a4 optimizer:(id)a5 arrayOfParams:(id)a6
{
  v40[1] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v38 = a5;
  v37 = a6;
  if ([v11 isUpdatable])
  {
    v33 = v11;
    v36 = [v11 tensor];
    if ([(MLCDeviceGPU *)self numDevicesToUse])
    {
      v12 = 0;
      v34 = self;
      v35 = v10;
      do
      {
        v13 = [v10 objectAtIndexedSubscript:v12];
        if (-[MLCDeviceGPU numDevicesToUse](self, "numDevicesToUse") == 2 && [v13 multiGPUReduction] == 1)
        {
          v14 = [v13 gradientForWeights];
          v40[0] = v14;
          v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:1];
          [(MLCDeviceGPU *)self allReduceOverXGMI:v10 deviceIndex:v12 stateBuffers:v15];
        }

        v16 = [(MLCDeviceGPU *)self gpuCommandBufferList];
        v17 = [v16 objectAtIndexedSubscript:v12];

        v18 = [v13 momentumVectors];
        v19 = [v13 velocityVectors];
        v20 = [v13 centerWeightVectors];
        v21 = deviceParameterWithVectors(v18, v19, v20);

        v22 = [v13 gradientForWeights];

        if (v22)
        {
          v23 = [v13 gradientForWeights];
          if (-[MLCDeviceGPU numDevicesToUse](self, "numDevicesToUse") == 2 && [v13 multiGPUReduction] == 1)
          {
            v24 = [v13 allReducedGradientMatrices];
            v25 = [v24 objectAtIndexedSubscript:0];
            v26 = [v25 data];

            v27 = v26;
          }

          else
          {
            v27 = v23;
          }

          v28 = [v38 objectAtIndexedSubscript:v12];
          v39 = [v36 deviceMemory];
          v29 = [v39 objectAtIndexedSubscript:v12];
          v30 = [v36 deviceMemory];
          v31 = [v30 objectAtIndexedSubscript:v12];
          self = v34;
          [(MLCDeviceGPU *)v34 updateWithOptimizer:v28 arrayOfParams:v37 commandBuffer:v17 deviceParameter:v21 source:v29 gradient:v27 result:v31 momentumIndex:0];

          v10 = v35;
        }

        ++v12;
      }

      while (v12 < [(MLCDeviceGPU *)self numDevicesToUse]);
    }

    v11 = v33;
  }

  v32 = *MEMORY[0x277D85DE8];
}

- (void)saveOrRestoreTempMatrixDisableUpdates:(id)a3 commandBuffer:(id)a4 auxiliaryWeightsMemory:(id)a5 auxiliaryMomentumMemory:(id)a6 auxiliaryVelocityMemory:(id)a7 auxiliaryCenterWeightMemory:(id)a8 deviceNumber:(unint64_t)a9 kernelNumber:(unint64_t)a10 mlcIndex:(unint64_t)a11 auxIndex:(unint64_t)a12 numOptimizerData:(unint64_t)a13 saveToAux:(BOOL)a14 isInputWeight:(BOOL)a15 isHiddenWeight:(BOOL)a16 isBias:(BOOL)a17
{
  v22 = a3;
  v23 = a4;
  v63 = a5;
  v62 = a6;
  v60 = a7;
  v57 = a8;
  v64 = [v22 gradientKernel];
  v24 = [v22 rnnTrainableWeights];
  v25 = [v22 rnnMomentumMatrices];
  v26 = [v22 rnnVelocityMatrices];
  v27 = [v22 rnnCenterWeightMatrices];
  v55 = v24;
  v59 = [v24 objectAtIndexedSubscript:a10];
  v54 = v25;
  v61 = [v25 objectAtIndexedSubscript:a10];
  v53 = v26;
  v58 = [v26 objectAtIndexedSubscript:a10];
  v52 = v27;
  v56 = [v27 objectAtIndexedSubscript:a10];
  v28 = [v22 inputSize];
  v29 = [v22 hiddenSize];
  v30 = v29;
  v31 = a11 & 3;
  if (a15)
  {
    v32 = qword_278A69680[v31];
    v33 = v59;
    if ([v22 numLayers] < 2 || (v34 = objc_msgSend(v22, "isBidirectional"), v35 = a10, v34))
    {
      if ([v22 numLayers] < 2 || !objc_msgSend(v22, "isBidirectional"))
      {
        goto LABEL_32;
      }

      v35 = a10 % [v22 numLayers];
    }

    if (v35)
    {
      v28 = v30;
    }
  }

  else
  {
    if (a16)
    {
      v36 = &unk_284BA5DB0;
      v37 = &unk_284BA5DE0;
      if (v31 != 2)
      {
        v37 = &unk_284BA5DF8;
      }

      if ((a11 & 3) != 0)
      {
        v36 = &unk_284BA5DC8;
      }

      if ((a11 & 3) <= 1)
      {
        v32 = v36;
      }

      else
      {
        v32 = v37;
      }

      v28 = v29;
    }

    else
    {
      v38 = &unk_284BA5E10;
      v39 = &unk_284BA5E40;
      if (v31 != 2)
      {
        v39 = &unk_284BA5E58;
      }

      if ((a11 & 3) != 0)
      {
        v38 = &unk_284BA5E28;
      }

      if ((a11 & 3) > 1)
      {
        v38 = v39;
      }

      if (a17)
      {
        v28 = v29;
      }

      else
      {
        v28 = 0;
      }

      v30 = a17;
      if (a17)
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
  v40 = [MEMORY[0x277CD7258] matrixDescriptorWithRows:v30 columns:v28 rowBytes:4 * v28 dataType:268435488];
  if (a14)
  {
    v41 = [MEMORY[0x277CD72B0] temporaryMatrixWithCommandBuffer:v23 matrixDescriptor:v40];
    [v63 addObject:v41];
  }

  else
  {
    v41 = [v63 objectAtIndexedSubscript:a12];
  }

  v42 = [v64 objectAtIndexedSubscript:a10];
  v65 = 0uLL;
  v66 = 0;
  [v42 encodeCopyWeightsToCommandBuffer:v23 weights:v33 matrixId:objc_msgSend(v32 matrix:"unsignedIntegerValue") copyFromWeightsToMatrix:v41 matrixOffset:{a14, &v65}];

  if (a13)
  {
    if (a14)
    {
      v43 = [MEMORY[0x277CD72B0] temporaryMatrixWithCommandBuffer:v23 matrixDescriptor:v40];
      [v62 addObject:v43];
    }

    else
    {
      v43 = [v62 objectAtIndexedSubscript:a12];
    }

    v44 = [v64 objectAtIndexedSubscript:a10];
    v45 = [v32 unsignedIntegerValue];
    v65 = v67;
    v66 = v68;
    [v44 encodeCopyWeightsToCommandBuffer:v23 weights:v61 matrixId:v45 matrix:v43 copyFromWeightsToMatrix:a14 matrixOffset:&v65];

    if (a13 != 1)
    {
      if (a14)
      {
        v46 = [MEMORY[0x277CD72B0] temporaryMatrixWithCommandBuffer:v23 matrixDescriptor:v40];
        [v60 addObject:v46];
      }

      else
      {
        v46 = [v60 objectAtIndexedSubscript:a12];
      }

      v47 = [v64 objectAtIndexedSubscript:a10];
      v48 = [v32 unsignedIntegerValue];
      v65 = v67;
      v66 = v68;
      [v47 encodeCopyWeightsToCommandBuffer:v23 weights:v58 matrixId:v48 matrix:v46 copyFromWeightsToMatrix:a14 matrixOffset:&v65];

      if (a13 >= 3)
      {
        if (a14)
        {
          v49 = [MEMORY[0x277CD72B0] temporaryMatrixWithCommandBuffer:v23 matrixDescriptor:v40];
          [v57 addObject:v49];
        }

        else
        {
          v49 = [v57 objectAtIndexedSubscript:a12];
        }

        v50 = [v64 objectAtIndexedSubscript:a10];
        v51 = [v32 unsignedIntegerValue];
        v65 = v67;
        v66 = v68;
        [v50 encodeCopyWeightsToCommandBuffer:v23 weights:v56 matrixId:v51 matrix:v49 copyFromWeightsToMatrix:a14 matrixOffset:&v65];
      }

      v33 = v59;
    }
  }
}

- (void)updateRNNLayer:(id)a3 optimizer:(id)a4 inputWeightsParameter:(id)a5 hiddenWeightsParameter:(id)a6 biasesParameter:(id)a7 arrayOfParams:(id)a8
{
  v135[2] = *MEMORY[0x277D85DE8];
  v111 = a3;
  v14 = a4;
  v15 = self;
  v119 = v14;
  v117 = a5;
  v116 = a6;
  v115 = a7;
  v118 = a8;
  if ([(MLCDeviceGPU *)self numDevicesToUse])
  {
    v16 = 0;
    v128 = self;
    do
    {
      v17 = [v111 objectAtIndexedSubscript:v16];
      v130 = v16;
      v134 = v17;
      if ([(MLCDeviceGPU *)v15 numDevicesToUse]== 2)
      {
        v18 = [v17 lstmMultiGPUChildOps];
        v19 = [v18 multiGPUReduction];

        if (v19 == 1)
        {
          v20 = [MEMORY[0x277CBEBF8] mutableCopy];
          v21 = [v17 rnnTrainableWeightGradients];
          if ([v21 count])
          {
            v22 = 0;
            do
            {
              v23 = [v21 objectAtIndexedSubscript:v22];
              if ([v23 count])
              {
                v24 = 0;
                do
                {
                  v25 = [v23 objectAtIndexedSubscript:v24];
                  v26 = [v25 data];
                  [v20 addObject:v26];

                  ++v24;
                }

                while (v24 < [v23 count]);
              }

              ++v22;
            }

            while (v22 < [v21 count]);
          }

          v131 = [v111 objectAtIndexedSubscript:0];
          v27 = [v131 lstmMultiGPUChildOps];
          v135[0] = v27;
          v28 = [v111 objectAtIndexedSubscript:1];
          v29 = [v28 lstmMultiGPUChildOps];
          v135[1] = v29;
          v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v135 count:2];
          v31 = [v30 copy];
          v32 = [v20 copy];
          [(MLCDeviceGPU *)v128 allReduceOverXGMI:v31 deviceIndex:v16 stateBuffers:v32];

          v15 = v128;
        }
      }

      v33 = [(MLCDeviceGPU *)v15 gpuCommandBufferList];
      v129 = [v33 objectAtIndexedSubscript:v16];

      v112 = [v17 gradientKernel];
      v34 = [v112 count];
      v35 = [v117 objectAtIndexedSubscript:0];
      v36 = [v35 tensor];
      v37 = [v36 optimizerData];
      v126 = [v37 count];

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
          v46 = [v42 auxiliaryWeightsMemory];
          [v46 setObject:v45 atIndexedSubscript:v43];

          v47 = [v44 mutableCopy];
          v48 = [v42 auxiliaryMomentumMemory];
          [v48 setObject:v47 atIndexedSubscript:v43];

          v49 = [v44 mutableCopy];
          v50 = [v42 auxiliaryVelocityMemory];
          [v50 setObject:v49 atIndexedSubscript:v43];

          v51 = [v44 mutableCopy];
          v52 = [v42 auxiliaryCenterWeightMemory];
          [v52 setObject:v51 atIndexedSubscript:v43];

          v53 = 4 * v43;
          if (4 * v43 != -4)
          {
            v54 = v53 + 4;
            v132 = v53 + 4;
            do
            {
              v55 = [v117 objectAtIndexedSubscript:v53];
              v56 = [v55 isUpdatable];

              if ((v56 & 1) == 0)
              {
                v122 = [v134 auxiliaryWeightsMemory];
                v57 = [v122 objectAtIndexedSubscript:v43];
                v58 = [v134 auxiliaryMomentumMemory];
                v59 = [v58 objectAtIndexedSubscript:v43];
                v60 = [v134 auxiliaryVelocityMemory];
                v61 = [v60 objectAtIndexedSubscript:v43];
                v62 = [v134 auxiliaryCenterWeightMemory];
                v63 = [v62 objectAtIndexedSubscript:v43];
                LODWORD(v110) = 257;
                v54 = v132;
                [MLCDeviceGPU saveOrRestoreTempMatrixDisableUpdates:v128 commandBuffer:"saveOrRestoreTempMatrixDisableUpdates:commandBuffer:auxiliaryWeightsMemory:auxiliaryMomentumMemory:auxiliaryVelocityMemory:auxiliaryCenterWeightMemory:deviceNumber:kernelNumber:mlcIndex:auxIndex:numOptimizerData:saveToAux:isInputWeight:isHiddenWeight:isBias:" auxiliaryWeightsMemory:v134 auxiliaryMomentumMemory:v129 auxiliaryVelocityMemory:v57 auxiliaryCenterWeightMemory:v59 deviceNumber:v61 kernelNumber:v63 mlcIndex:v130 auxIndex:v43 numOptimizerData:v53 saveToAux:0 isInputWeight:v126 isHiddenWeight:v110 isBias:?];
              }

              ++v53;
            }

            while (v53 < v54);
            v64 = 4 * v43;
            do
            {
              v65 = [v116 objectAtIndexedSubscript:v64];
              v66 = [v65 isUpdatable];

              if ((v66 & 1) == 0)
              {
                v123 = [v134 auxiliaryWeightsMemory];
                v67 = [v123 objectAtIndexedSubscript:v43];
                v68 = [v134 auxiliaryMomentumMemory];
                v69 = [v68 objectAtIndexedSubscript:v43];
                v70 = [v134 auxiliaryVelocityMemory];
                v71 = [v70 objectAtIndexedSubscript:v43];
                v72 = [v134 auxiliaryCenterWeightMemory];
                v73 = [v72 objectAtIndexedSubscript:v43];
                LODWORD(v110) = 65537;
                v54 = v132;
                [MLCDeviceGPU saveOrRestoreTempMatrixDisableUpdates:v128 commandBuffer:"saveOrRestoreTempMatrixDisableUpdates:commandBuffer:auxiliaryWeightsMemory:auxiliaryMomentumMemory:auxiliaryVelocityMemory:auxiliaryCenterWeightMemory:deviceNumber:kernelNumber:mlcIndex:auxIndex:numOptimizerData:saveToAux:isInputWeight:isHiddenWeight:isBias:" auxiliaryWeightsMemory:v134 auxiliaryMomentumMemory:v129 auxiliaryVelocityMemory:v67 auxiliaryCenterWeightMemory:v69 deviceNumber:v71 kernelNumber:v73 mlcIndex:v130 auxIndex:v43 numOptimizerData:v64 saveToAux:0 isInputWeight:v126 isHiddenWeight:v110 isBias:?];
              }

              ++v64;
            }

            while (v64 < v54);
            v74 = 4 * v43;
            if (v115)
            {
              do
              {
                v75 = [v115 objectAtIndexedSubscript:v74];
                v76 = [v75 isUpdatable];

                if ((v76 & 1) == 0)
                {
                  v124 = [v134 auxiliaryWeightsMemory];
                  v77 = [v124 objectAtIndexedSubscript:v43];
                  v78 = [v134 auxiliaryMomentumMemory];
                  v79 = [v78 objectAtIndexedSubscript:v43];
                  v80 = [v134 auxiliaryVelocityMemory];
                  v81 = [v80 objectAtIndexedSubscript:v43];
                  v82 = [v134 auxiliaryCenterWeightMemory];
                  v83 = [v82 objectAtIndexedSubscript:v43];
                  LODWORD(v110) = 16777217;
                  v54 = v132;
                  [MLCDeviceGPU saveOrRestoreTempMatrixDisableUpdates:v128 commandBuffer:"saveOrRestoreTempMatrixDisableUpdates:commandBuffer:auxiliaryWeightsMemory:auxiliaryMomentumMemory:auxiliaryVelocityMemory:auxiliaryCenterWeightMemory:deviceNumber:kernelNumber:mlcIndex:auxIndex:numOptimizerData:saveToAux:isInputWeight:isHiddenWeight:isBias:" auxiliaryWeightsMemory:v134 auxiliaryMomentumMemory:v129 auxiliaryVelocityMemory:v77 auxiliaryCenterWeightMemory:v79 deviceNumber:v81 kernelNumber:v83 mlcIndex:v130 auxIndex:v43 numOptimizerData:v74 saveToAux:0 isInputWeight:v126 isHiddenWeight:v110 isBias:?];
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
        v15 = v128;
        do
        {
          v85 = [v42 rnnTrainableWeights];
          v86 = [v85 objectAtIndexedSubscript:v84];

          v120 = v86;
          if ([v86 count])
          {
            v87 = 0;
            v133 = v84;
            do
            {
              v88 = [v42 rnnTrainableWeightGradients];
              v89 = [v88 objectAtIndexedSubscript:v84];
              v90 = [v89 objectAtIndexedSubscript:v87];

              if ([(MLCDeviceGPU *)v15 numDevicesToUse]== 2)
              {
                v91 = [v42 lstmMultiGPUChildOps];
                v92 = [v91 multiGPUReduction];

                v93 = v130;
                if (v92 == 1)
                {
                  v94 = [v42 lstmMultiGPUChildOps];
                  v95 = [v94 allReducedGradientMatrices];
                  v96 = [v95 objectAtIndexedSubscript:v114];

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

              v97 = [v42 rnnMomentumMatrices];
              v98 = [v97 objectAtIndexedSubscript:v84];
              v99 = [v42 rnnVelocityMatrices];
              v100 = [v99 objectAtIndexedSubscript:v84];
              v101 = [v42 rnnCenterWeightMatrices];
              v102 = [v101 objectAtIndexedSubscript:v84];
              v125 = deviceParameterWithVectors(v98, v100, v102);

              v103 = [v119 objectAtIndexedSubscript:v93];
              v121 = [v42 rnnTrainableWeights];
              v104 = [v121 objectAtIndexedSubscript:v133];
              v105 = [v104 objectAtIndexedSubscript:v87];
              v106 = [v134 rnnTrainableWeights];
              v107 = [v106 objectAtIndexedSubscript:v133];
              v108 = [v107 objectAtIndexedSubscript:v87];
              v15 = v128;
              [(MLCDeviceGPU *)v128 updateWithOptimizer:v103 arrayOfParams:v118 commandBuffer:v129 deviceParameter:v125 source:v105 gradient:v127 result:v108 momentumIndex:v87];

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

    while (v130 + 1 < [(MLCDeviceGPU *)v15 numDevicesToUse]);
  }

  v109 = *MEMORY[0x277D85DE8];
}

- (void)updateTensorParameter:(id)a3 optimizer:(id)a4 gradient:(id)a5 arrayOfParams:(id)a6
{
  v52[2] = *MEMORY[0x277D85DE8];
  v48 = a3;
  v45 = a4;
  v47 = a5;
  v46 = a6;
  v50 = self;
  if ([(MLCDeviceGPU *)self numDevicesToUse])
  {
    v10 = 0;
    do
    {
      v11 = [(MLCDeviceGPU *)v50 gpuCommandBufferList];
      v49 = [v11 objectAtIndexedSubscript:v10];

      v12 = [v48 tensor];
      v13 = [v12 optimizerDeviceData];
      v14 = [v13 objectAtIndexedSubscript:v10];

      v15 = [v48 tensor];
      v16 = [v15 deviceMemory];
      v17 = [v16 objectAtIndexedSubscript:v10];

      v18 = [v47 deviceMemory];
      v19 = [v18 objectAtIndexedSubscript:v10];

      v20 = MEMORY[0x277CD7258];
      v21 = [v48 tensor];
      v22 = [v21 descriptor];
      v23 = [v22 tensorAllocationSizeInBytes] >> 2;
      v24 = [v48 tensor];
      v25 = [v24 descriptor];
      v26 = [v20 matrixDescriptorWithRows:1 columns:v23 rowBytes:objc_msgSend(v25 dataType:{"tensorAllocationSizeInBytes"), 268435488}];

      v27 = v14;
      v28 = [objc_alloc(MEMORY[0x277CD7250]) initWithBuffer:v17 descriptor:v26];
      v29 = [objc_alloc(MEMORY[0x277CD7250]) initWithBuffer:v19 descriptor:v26];
      if ([(MLCDeviceGPU *)v50 numDevicesToUse]== 2)
      {
        v30 = [v14 gpuOps];
        v31 = [v30 multiGPUReduction];

        if (v31 == 1)
        {
          v44 = [v48 tensor];
          v43 = [v44 optimizerDeviceData];
          v42 = [v43 objectAtIndexedSubscript:0];
          v41 = [v42 gpuOps];
          v52[0] = v41;
          v39 = [v48 tensor];
          v32 = [v39 optimizerDeviceData];
          v33 = [v32 objectAtIndexedSubscript:1];
          [v33 gpuOps];
          v35 = v34 = v19;
          v52[1] = v35;
          v40 = [MEMORY[0x277CBEA60] arrayWithObjects:v52 count:2];

          v19 = v34;
          v51 = v34;
          v36 = [MEMORY[0x277CBEA60] arrayWithObjects:&v51 count:1];
          [(MLCDeviceGPU *)v50 allReduceOverXGMI:v40 deviceIndex:v10 stateBuffers:v36];
        }
      }

      v37 = [v45 objectAtIndexedSubscript:v10];
      [(MLCDeviceGPU *)v50 updateWithOptimizer:v37 arrayOfParams:v46 commandBuffer:v49 deviceParameter:v27 source:v28 gradient:v29 result:v28 momentumIndex:0];

      ++v10;
    }

    while (v10 < [(MLCDeviceGPU *)v50 numDevicesToUse]);
  }

  v38 = *MEMORY[0x277D85DE8];
}

- (void)updateWithAdamOptimizer:(id)a3 encoder:(id)a4 deviceParameter:(id)a5 source:(id)a6 gradient:(id)a7 result:(id)a8 momentumIndex:(unint64_t)a9
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a7;
  v17 = a8;
  v18 = [v13 timeStep];
  [v13 learningRate];
  v20 = v19;
  [v13 beta2];
  v22 = v20 * sqrtf(1.0 - powf(v21, v18));
  [v13 beta1];
  v87[0] = 0;
  v24 = v22 / (1.0 - powf(v23, v18));
  [v13 beta1];
  v87[1] = v25;
  [v13 beta2];
  v87[2] = v26;
  [v13 epsilon];
  v87[5] = v27;
  [v13 learningRate];
  v87[3] = v28;
  *&v87[4] = v24;
  v29 = [v13 descriptor];
  [v29 gradientRescale];
  v31 = v30;
  v88 = v30;

  v32 = [v13 descriptor];
  [v32 gradientClipMin];
  v87[6] = v33;

  v34 = [v13 descriptor];
  [v34 gradientClipMax];
  v87[7] = v35;

  v36 = [v13 descriptor];
  [v36 maximumClippingNorm];
  v38 = v37;
  *&v87[8] = v37;

  v39 = [v13 descriptor];
  [v39 regularizationScale];
  v89 = v40;

  v41 = [v13 descriptor];
  v90 = [v41 regularizationType];

  v92 = [v13 decoupleWeightDecay];
  v91 = 0;
  v42 = [v13 descriptor];
  LODWORD(a7) = [v42 appliesGradientClipping];

  if (!a7)
  {
    goto LABEL_9;
  }

  v43 = [v13 descriptor];
  if ([v43 gradientClippingType] != 2)
  {

    goto LABEL_7;
  }

  v44 = [v13 descriptor];
  [v44 customGlobalNorm];
  v46 = v45;

  if (v46 == 0.0)
  {
LABEL_7:
    v50 = [v13 descriptor];
    v91 = [v50 gradientClippingType] + 1;
    goto LABEL_8;
  }

  v47 = [v13 descriptor];
  [v47 customGlobalNorm];
  v49 = v48;

  if (v49 > v38)
  {
    v50 = [v13 descriptor];
    [v50 customGlobalNorm];
    v88 = v31 * (v38 / v51);
LABEL_8:
  }

LABEL_9:
  objc_opt_class();
  v80 = v17;
  v81 = v16;
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v52 = [v17 data];
    v53 = [v16 data];
  }

  else
  {
    v52 = v17;
    v53 = v16;
  }

  v79 = v53;
  v54 = [v52 length] >> 2;
  v87[0] = v54;
  v55 = [v15 momentumVectors];
  v56 = [v55 objectAtIndexedSubscript:a9];
  objc_opt_class();
  objc_opt_isKindOfClass();

  v57 = [v15 momentumVectors];
  v58 = [v57 objectAtIndexedSubscript:a9];
  v82 = [v58 data];

  v59 = [v15 velocityVectors];
  v60 = [v59 objectAtIndexedSubscript:a9];
  objc_opt_class();
  objc_opt_isKindOfClass();

  v61 = [v15 velocityVectors];
  v62 = [v61 objectAtIndexedSubscript:a9];
  v63 = [v62 data];

  if ([v13 amsgrad])
  {
    v64 = [v15 centerWeightVectors];
    v65 = [v64 objectAtIndexedSubscript:a9];
    objc_opt_class();
    objc_opt_isKindOfClass();

    v66 = [v15 centerWeightVectors];
    v67 = [v66 objectAtIndexedSubscript:a9];
    v68 = [v67 data];
  }

  else
  {
    v68 = 0;
  }

  v69 = [v13 kernel];
  v70 = [v69 threadExecutionWidth];
  v71 = [v69 maxTotalThreadsPerThreadgroup];
  if (v71 > v54)
  {
    v72 = (v70 + v54 - 1) / v70 * v70;
    v73 = [v13 descriptor];
    v74 = [v73 gradientClippingType];

    v75 = 1 << -__clz(v72);
    if (v74 == 1)
    {
      v71 = v75;
    }

    else
    {
      v71 = v72;
    }
  }

  [v14 setBuffer:v79 offset:0 atIndex:0];
  [v14 setBuffer:v82 offset:0 atIndex:1];
  [v14 setBuffer:v63 offset:0 atIndex:2];
  [v14 setBuffer:v52 offset:0 atIndex:3];
  [v14 setBytes:v87 length:56 atIndex:4];
  if ([v13 amsgrad])
  {
    v76 = v68;
  }

  else
  {
    v76 = v63;
  }

  [v14 setBuffer:v76 offset:0 atIndex:5];
  v77 = [v13 l2NormBuffer];

  if (v77)
  {
    v78 = [v13 l2NormBuffer];
    [v14 setBuffer:v78 offset:0 atIndex:6];
  }

  else
  {
    [v14 setBuffer:v52 offset:0 atIndex:6];
  }

  [v14 setThreadgroupMemoryLength:4 * v71 atIndex:0];
  v84 = vdupq_n_s64(1uLL);
  v85 = v84;
  v86 = 1;
  v83 = v71;
  [v14 dispatchThreadgroups:&v85 threadsPerThreadgroup:&v83];
}

- (void)updateWithSGDOptimizer:(id)a3 encoder:(id)a4 deviceParameter:(id)a5 source:(id)a6 gradient:(id)a7 result:(id)a8 momentumIndex:(unint64_t)a9
{
  v13 = a3;
  v14 = a4;
  v66 = a5;
  v15 = a7;
  v16 = a8;
  v73 = 0u;
  v71[0] = 0;
  [v13 learningRate];
  v71[1] = v17;
  v18 = [v13 descriptor];
  [v18 gradientRescale];
  v20 = v19;
  v72 = v19;

  v21 = [v13 descriptor];
  [v21 gradientClipMin];
  v71[3] = v22;

  v23 = [v13 descriptor];
  [v23 gradientClipMax];
  v71[4] = v24;

  v25 = [v13 descriptor];
  [v25 maximumClippingNorm];
  v27 = v26;
  *&v71[5] = v26;

  v28 = [v13 descriptor];
  [v28 regularizationScale];
  LODWORD(v73) = v29;

  v30 = [v13 descriptor];
  *(&v73 + 4) = [v30 regularizationType];

  [v13 momentumScale];
  v71[2] = v31;
  BYTE12(v73) = [v13 usesNesterov];
  v32 = [v13 descriptor];
  v33 = [v32 appliesGradientClipping];

  if (!v33)
  {
    goto LABEL_9;
  }

  v34 = [v13 descriptor];
  if ([v34 gradientClippingType] != 2)
  {

    goto LABEL_7;
  }

  v35 = [v13 descriptor];
  [v35 customGlobalNorm];
  v37 = v36;

  if (v37 == 0.0)
  {
LABEL_7:
    v41 = [v13 descriptor];
    DWORD2(v73) = [v41 gradientClippingType] + 1;
    goto LABEL_8;
  }

  v38 = [v13 descriptor];
  [v38 customGlobalNorm];
  v40 = v39;

  if (v40 > v27)
  {
    v41 = [v13 descriptor];
    [v41 customGlobalNorm];
    v72 = v20 * (v27 / v42);
LABEL_8:
  }

LABEL_9:
  objc_opt_class();
  v65 = v15;
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v43 = [v16 data];
    v44 = [v15 data];
  }

  else
  {
    v43 = v16;
    v44 = v15;
  }

  v45 = v44;
  v46 = [v43 length] >> 2;
  v71[0] = v46;
  [v13 momentumScale];
  if (v47 == 0.0)
  {
    v52 = 0;
  }

  else
  {
    v48 = [v66 momentumVectors];
    v49 = [v48 objectAtIndexedSubscript:a9];
    objc_opt_class();
    objc_opt_isKindOfClass();

    v50 = [v66 momentumVectors];
    v51 = [v50 objectAtIndexedSubscript:a9];
    v52 = [v51 data];
  }

  v53 = [v13 kernel];
  v54 = [v53 threadExecutionWidth];
  v55 = [v53 maxTotalThreadsPerThreadgroup];
  if (v55 > v46)
  {
    v56 = (v54 + v46 - 1) / v54 * v54;
    v57 = [v13 descriptor];
    v58 = [v57 gradientClippingType];

    v59 = 1 << -__clz(v56);
    if (v58 == 1)
    {
      v55 = v59;
    }

    else
    {
      v55 = v56;
    }
  }

  [v14 setBuffer:v45 offset:0 atIndex:0];
  [v13 momentumScale];
  if (v60 == 0.0)
  {
    v61 = v43;
  }

  else
  {
    v61 = v52;
  }

  [v14 setBuffer:v61 offset:0 atIndex:1];
  [v14 setBuffer:v43 offset:0 atIndex:3];
  [v14 setBytes:v71 length:44 atIndex:4];
  v62 = [v13 l2NormBuffer];

  if (v62)
  {
    v63 = [v13 l2NormBuffer];
    [v14 setBuffer:v63 offset:0 atIndex:5];
  }

  else
  {
    [v14 setBuffer:v43 offset:0 atIndex:5];
  }

  [v14 setThreadgroupMemoryLength:4 * v55 atIndex:0];
  v68 = vdupq_n_s64(1uLL);
  v69 = v68;
  v70 = 1;
  v67 = v55;
  [v14 dispatchThreadgroups:&v69 threadsPerThreadgroup:&v67];
}

- (void)updateWithRMSPropOptimizer:(id)a3 encoder:(id)a4 deviceParameter:(id)a5 source:(id)a6 gradient:(id)a7 result:(id)a8 momentumIndex:(unint64_t)a9
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a7;
  v17 = a8;
  v83[0] = 0;
  [v13 learningRate];
  v83[1] = v18;
  v19 = [v13 descriptor];
  [v19 gradientRescale];
  v21 = v20;
  v84 = v20;

  v22 = [v13 descriptor];
  [v22 gradientClipMin];
  v83[5] = v23;

  v24 = [v13 descriptor];
  [v24 gradientClipMax];
  v83[6] = v25;

  v26 = [v13 descriptor];
  [v26 maximumClippingNorm];
  v28 = v27;
  *&v83[7] = v27;

  v29 = [v13 descriptor];
  [v29 regularizationScale];
  v85 = v30;

  v31 = [v13 descriptor];
  v86 = [v31 regularizationType];

  [v13 momentumScale];
  v83[2] = v32;
  [v13 alpha];
  v83[3] = v33;
  [v13 epsilon];
  v83[4] = v34;
  v87 = [v13 centered];
  v35 = [v13 descriptor];
  LODWORD(a7) = [v35 appliesGradientClipping];

  if (!a7)
  {
    goto LABEL_9;
  }

  v36 = [v13 descriptor];
  if ([v36 gradientClippingType] != 2)
  {

    goto LABEL_7;
  }

  v37 = [v13 descriptor];
  [v37 customGlobalNorm];
  v39 = v38;

  if (v39 == 0.0)
  {
LABEL_7:
    v43 = [v13 descriptor];
    HIDWORD(v86) = [v43 gradientClippingType] + 1;
    goto LABEL_8;
  }

  v40 = [v13 descriptor];
  [v40 customGlobalNorm];
  v42 = v41;

  if (v42 > v28)
  {
    v43 = [v13 descriptor];
    [v43 customGlobalNorm];
    v84 = v21 * (v28 / v44);
LABEL_8:
  }

LABEL_9:
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v78 = [v17 data];
    v45 = [v16 data];
  }

  else
  {
    v78 = v17;
    v45 = v16;
  }

  v77 = v45;
  v46 = [v15 momentumVectors];
  v47 = [v46 objectAtIndexedSubscript:a9];

  objc_opt_class();
  v73 = v17;
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v48 = [v47 data];
  }

  else
  {
    v48 = v47;
  }

  v76 = v48;
  v49 = [v78 length] >> 2;
  v83[0] = v49;
  [v13 momentumScale];
  v51 = v50;
  v52 = [v13 centered];
  v53 = v52;
  v74 = v16;
  v75 = v15;
  v71 = v47;
  if (v51 == 0.0)
  {
    if (!v52)
    {
      v59 = 0;
      v57 = 0;
      v55 = 0;
      goto LABEL_35;
    }

    v56 = [v15 velocityVectors];
    v57 = [v56 objectAtIndexedSubscript:a9];
    v55 = 0;
  }

  else
  {
    v54 = [v15 velocityVectors];
    v55 = [v54 objectAtIndexedSubscript:a9];

    if (!v53)
    {
      v57 = 0;
      goto LABEL_27;
    }

    v56 = [v15 centerWeightVectors];
    [v56 objectAtIndexedSubscript:a9];
    v55 = v57 = v55;
  }

  if (v57)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v58 = [v57 data];
    }

    else
    {
      v58 = v57;
      v57 = v58;
    }

    v59 = v58;
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
      v60 = [v55 data];
    }

    else
    {
      v60 = v55;
      v55 = v60;
    }

    v61 = v60;
    goto LABEL_38;
  }

LABEL_35:
  v61 = 0;
LABEL_38:
  v62 = [v13 kernel];
  v63 = [v62 threadExecutionWidth];
  v64 = [v62 maxTotalThreadsPerThreadgroup];
  if (v64 > v49)
  {
    v65 = (v63 + v49 - 1) / v63 * v63;
    v66 = [v13 descriptor];
    v67 = [v66 gradientClippingType];

    v68 = 1 << -__clz(v65);
    if (v67 == 1)
    {
      v64 = v68;
    }

    else
    {
      v64 = v65;
    }
  }

  [v14 setBuffer:v77 offset:0 atIndex:0];
  [v14 setBuffer:v76 offset:0 atIndex:1];
  [v14 setBuffer:v59 offset:0 atIndex:2];
  [v14 setBuffer:v78 offset:0 atIndex:3];
  [v14 setBytes:v83 length:52 atIndex:4];
  [v14 setBuffer:v61 offset:0 atIndex:5];
  v69 = [v13 l2NormBuffer];

  if (v69)
  {
    v70 = [v13 l2NormBuffer];
    [v14 setBuffer:v70 offset:0 atIndex:6];
  }

  else
  {
    [v14 setBuffer:v78 offset:0 atIndex:6];
  }

  [v14 setThreadgroupMemoryLength:4 * v64 atIndex:0];
  v80 = vdupq_n_s64(1uLL);
  v81 = v80;
  v82 = 1;
  v79 = v64;
  [v14 dispatchThreadgroups:&v81 threadsPerThreadgroup:&v79];
}

- (void)updateWithOptimizer:(id)a3 arrayOfParams:(id)a4 commandBuffer:(id)a5 deviceParameter:(id)a6 source:(id)a7 gradient:(id)a8 result:(id)a9 momentumIndex:(unint64_t)a10
{
  v17 = a3;
  v18 = a4;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v22 = a9;
  if (v18)
  {
    [v18 addObject:v19];
    [v18 addObject:v20];
    if (v21)
    {
      [v18 addObject:v21];
    }

    else
    {
      v26 = [MEMORY[0x277CBEB68] null];
      [v18 addObject:v26];
    }

    [v18 addObject:v22];
    v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a10];
    [v18 addObject:v27];
  }

  else
  {
    v29 = a2;
    v23 = [a5 computeCommandEncoderWithDispatchType:0];
    v24 = [v17 kernel];
    [v23 setComputePipelineState:v24];
    v25 = [v17 gpuOptimizerKernelType];
    switch(v25)
    {
      case 3:
        [(MLCDeviceGPU *)self updateWithRMSPropOptimizer:v17 encoder:v23 deviceParameter:v19 source:v20 gradient:v21 result:v22 momentumIndex:a10];
        break;
      case 2:
        [(MLCDeviceGPU *)self updateWithSGDOptimizer:v17 encoder:v23 deviceParameter:v19 source:v20 gradient:v21 result:v22 momentumIndex:a10];
        break;
      case 1:
        [(MLCDeviceGPU *)self updateWithAdamOptimizer:v17 encoder:v23 deviceParameter:v19 source:v20 gradient:v21 result:v22 momentumIndex:a10];
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

- (void)updateAllParametersWithOptimizer:(id)a3 arrayOfParameters:(id)a4
{
  v75 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v68 = v6;
  v69 = self;
  if ([(MLCDeviceGPU *)self numDevicesToUse])
  {
    v8 = 0;
    do
    {
      v72 = 0;
      v9 = [(MLCDeviceGPU *)self gpuCommandBufferList];
      v10 = [v9 objectAtIndexedSubscript:v8];

      v11 = [v6 objectAtIndexedSubscript:v8];
      v12 = [v11 computeL2NormKernel];

      if (v12)
      {
        v13 = [v6 objectAtIndexedSubscript:v8];
        v14 = [v13 l2NormBuffer];

        if (!v14)
        {
          v15 = [v10 device];
          v16 = [v15 newBufferWithLength:4096 options:{+[MLCGPUHelper mtlResourceOptions](MLCGPUHelper, "mtlResourceOptions")}];
          v17 = [v6 objectAtIndexedSubscript:v8];
          [v17 setL2NormBuffer:v16];
        }

        v66 = v10;
        v18 = [v10 computeCommandEncoderWithDispatchType:1];
        v19 = [v6 objectAtIndexedSubscript:v8];
        v20 = [v19 computeL2NormKernel];
        [v18 setComputePipelineState:v20];

        v21 = [v6 objectAtIndexedSubscript:v8];
        v22 = [v21 computeL2NormKernel];
        v23 = [v22 maxTotalThreadsPerThreadgroup];

        if ([v7 count])
        {
          v24 = 0;
          do
          {
            v25 = [v7 objectAtIndexedSubscript:v24 + 2];
            v26 = [MEMORY[0x277CBEB68] null];
            v27 = [v25 isEqual:v26];

            if (v27)
            {

              v25 = 0;
            }

            v28 = [v25 length] >> 2;
            LODWORD(v72) = v28;
            if (v28 >= v23)
            {
              v28 = v23;
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
            v32 = [v31 l2NormBuffer];
            [v18 setBuffer:v32 offset:0 atIndex:1];

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

          while (v24 < [v7 count]);
        }

        [v18 memoryBarrierWithScope:1];
        v6 = v68;
        v33 = [v68 objectAtIndexedSubscript:v8];
        v34 = [v33 sumL2NormKernel];
        [v18 setComputePipelineState:v34];

        v35 = [v68 objectAtIndexedSubscript:v8];
        v36 = [v35 sumL2NormKernel];
        v37 = [v36 maxTotalThreadsPerThreadgroup];

        v38 = [v7 count];
        if (v38 / 5 >= v37)
        {
          v39 = v37;
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
        v43 = [v42 l2NormBuffer];
        [v18 setBuffer:v43 offset:0 atIndex:0];

        [v18 setBytes:&v72 length:4 atIndex:1];
        [v18 setThreadgroupMemoryLength:4 * v41 atIndex:0];
        v73 = vdupq_n_s64(1uLL);
        v74 = 1;
        v70 = v41;
        v71 = v73;
        [v18 dispatchThreadgroups:&v73 threadsPerThreadgroup:&v70];
        [v18 endEncoding];

        self = v69;
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
      v45 = [v6 objectAtIndexedSubscript:v44];
      v46 = [(MLCDeviceGPU *)self gpuCommandBufferList];
      v67 = v44;
      v47 = [v46 objectAtIndexedSubscript:v44];

      v65 = v47;
      v48 = [v47 computeCommandEncoderWithDispatchType:1];
      v64 = [v45 kernel];
      [v48 setComputePipelineState:?];
      [v48 memoryBarrierWithScope:1];
      if ([v7 count])
      {
        v49 = 0;
        do
        {
          v50 = [v7 objectAtIndexedSubscript:v49];
          v51 = [v7 objectAtIndexedSubscript:v49 + 1];
          v52 = v49 + 2;
          v53 = [v7 objectAtIndexedSubscript:v49 + 2];
          v54 = [MEMORY[0x277CBEB68] null];
          v55 = [v53 isEqual:v54];

          if (v55)
          {

            v53 = 0;
          }

          v56 = [v7 objectAtIndexedSubscript:v52 + 1];
          v57 = v52 + 2;
          v58 = [v7 objectAtIndexedSubscript:v57];
          v59 = [v58 unsignedIntegerValue];

          v60 = [v45 gpuOptimizerKernelType];
          switch(v60)
          {
            case 3:
              [(MLCDeviceGPU *)v69 updateWithRMSPropOptimizer:v45 encoder:v48 deviceParameter:v50 source:v51 gradient:v53 result:v56 momentumIndex:v59];
              break;
            case 2:
              [(MLCDeviceGPU *)v69 updateWithSGDOptimizer:v45 encoder:v48 deviceParameter:v50 source:v51 gradient:v53 result:v56 momentumIndex:v59];
              break;
            case 1:
              [(MLCDeviceGPU *)v69 updateWithAdamOptimizer:v45 encoder:v48 deviceParameter:v50 source:v51 gradient:v53 result:v56 momentumIndex:v59];
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

        while (v57 + 1 < [v7 count]);
      }

      [v48 endEncoding];

      v44 = v67 + 1;
      self = v69;
      v6 = v68;
    }

    while (v67 + 1 < [(MLCDeviceGPU *)v69 numDevicesToUse]);
  }

  [v7 removeAllObjects];

  v62 = *MEMORY[0x277D85DE8];
}

- (void)synchronizeWeightMatrixForRNNLayer:(id)a3 matrixId:(unint64_t)a4 parameterType:(unint64_t)a5 accumulatorIndex:(unint64_t)a6 forLSTMNum:(unint64_t)a7 forDeviceNum:(unint64_t)a8 forGate:(unint64_t)a9
{
  v13 = a3;
  v14 = [v13 deviceOps];
  v15 = [v14 objectAtIndexedSubscript:a8];

  v16 = [(MLCDeviceGPU *)self gpuCommandBufferList];
  v60 = [v16 objectAtIndexedSubscript:a8];

  v17 = [v15 gradientKernel];
  v18 = v13;
  v19 = [v18 descriptor];
  v20 = [v19 hiddenSize];

  v21 = [v18 descriptor];
  v22 = [v21 inputSize];

  if (a5 == 2)
  {
    v22 = v20;
    v20 = 1;
  }

  else if (a5 == 1)
  {
    v22 = v20;
  }

  else if (a5)
  {
    v22 = 0;
    v20 = 0;
  }

  else
  {
    v23 = [v18 descriptor];
    if (a7 % [v23 layerCount])
    {
      v22 = v20;
    }
  }

  v24 = [MEMORY[0x277CD7258] matrixDescriptorWithRows:v20 columns:v22 rowBytes:4 * v22 dataType:268435488];
  v25 = objc_alloc(MEMORY[0x277CD7250]);
  v26 = [(MLCDeviceGPU *)self deviceList];
  v27 = [v26 objectAtIndexedSubscript:a8];
  v59 = v24;
  v28 = [v25 initWithDevice:v27 descriptor:v24];

  v65 = 0uLL;
  v66 = 0;
  v29 = v17;
  v30 = [v17 objectAtIndexedSubscript:a7];
  v31 = [v15 rnnTrainableWeights];
  v32 = [v31 objectAtIndexedSubscript:a7];
  v63 = 0uLL;
  v64 = 0;
  [v30 encodeCopyWeightsToCommandBuffer:v60 weights:v32 matrixId:a4 matrix:v28 copyFromWeightsToMatrix:1 matrixOffset:&v63];

  [v28 synchronizeOnCommandBuffer:v60];
  if (a5 <= 1)
  {
    v33 = [v15 rnnExportedWeightMatrices];
    v34 = a6;
LABEL_15:
    [v33 addObject:v28];

    goto LABEL_16;
  }

  v35 = a5 == 2;
  v34 = a6;
  if (v35)
  {
    v33 = [v15 rnnExportedBiasTerms];
    goto LABEL_15;
  }

LABEL_16:
  v36 = [v15 momentumVectors];
  v37 = [v36 count];

  if (v37)
  {
    v56 = v18;
    v58 = [v15 momentumVectors];
    v38 = [v58 objectAtIndexedSubscript:v34];
    v39 = [v17 objectAtIndexedSubscript:a7];
    v40 = [v15 rnnMomentumMatrices];
    v41 = [v40 objectAtIndexedSubscript:a7];
    v63 = 0uLL;
    v64 = 0;
    [v39 encodeCopyWeightsToCommandBuffer:v60 weights:v41 matrixId:a4 matrix:v38 copyFromWeightsToMatrix:1 matrixOffset:&v63];

    v57 = v38;
    [v38 synchronizeOnCommandBuffer:v60];
    v42 = [v15 velocityVectors];
    v43 = [v42 count];

    if (v43)
    {
      v44 = [v15 velocityVectors];
      v45 = [v44 objectAtIndexedSubscript:a6];
      v46 = [v17 objectAtIndexedSubscript:a7];
      v47 = [v15 rnnVelocityMatrices];
      v48 = [v47 objectAtIndexedSubscript:a7];
      v63 = 0uLL;
      v64 = 0;
      [v46 encodeCopyWeightsToCommandBuffer:v60 weights:v48 matrixId:a4 matrix:v45 copyFromWeightsToMatrix:1 matrixOffset:&v63];

      [v45 synchronizeOnCommandBuffer:v60];
      v49 = [v15 centerWeightVectors];
      v50 = [v49 count];

      if (v50)
      {
        v55 = [v15 centerWeightVectors];
        v51 = [v55 objectAtIndexedSubscript:a6];
        v52 = [v17 objectAtIndexedSubscript:a7];
        v53 = [v15 rnnCenterWeightMatrices];
        v54 = [v53 objectAtIndexedSubscript:a7];
        v63 = v65;
        v64 = v66;
        [v52 encodeCopyWeightsToCommandBuffer:v60 weights:v54 matrixId:a4 matrix:v51 copyFromWeightsToMatrix:1 matrixOffset:&v63];

        [v51 synchronizeOnCommandBuffer:v60];
      }

      v29 = v17;
    }

    v18 = v56;
  }
}

- (void)synchronizeOptimizerBuffers:(id)a3 commandBuffer:(id)a4
{
  v18 = a3;
  v5 = a4;
  v6 = [v18 momentumVectors];
  if ([v6 count])
  {
    v7 = 0;
    do
    {
      v8 = [v6 objectAtIndexedSubscript:v7];
      v9 = [v8 data];
      [MLCGPUHelper synchronizeResource:v9 commandBuffer:v5];

      ++v7;
    }

    while (v7 < [v6 count]);
  }

  v10 = [v18 velocityVectors];
  if ([v10 count])
  {
    v11 = 0;
    do
    {
      v12 = [v10 objectAtIndexedSubscript:v11];
      v13 = [v12 data];
      [MLCGPUHelper synchronizeResource:v13 commandBuffer:v5];

      ++v11;
    }

    while (v11 < [v10 count]);
  }

  v14 = [v18 centerWeightVectors];
  if ([v14 count])
  {
    v15 = 0;
    do
    {
      v16 = [v14 objectAtIndexedSubscript:v15];
      v17 = [v16 data];
      [MLCGPUHelper synchronizeResource:v17 commandBuffer:v5];

      ++v15;
    }

    while (v15 < [v14 count]);
  }
}

- (void)synchronizeUpdatesForLayer:(id)a3
{
  v120 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(MLCDeviceGPU *)self numDevicesToUse])
  {
    v5 = 0;
    v6 = 0x278A68000uLL;
    v7 = 0x278A68000uLL;
    do
    {
      v8 = [v4 deviceOps];
      v9 = [v8 objectAtIndexedSubscript:v5];

      v10 = [(MLCDeviceGPU *)self gpuCommandBufferList];
      v11 = [v10 objectAtIndexedSubscript:v5];

      objc_opt_class();
      v114 = v9;
      if (objc_opt_isKindOfClass())
      {
        if (![v9 isMPSGraph])
        {
          v29 = v7;
          v18 = [v9 forwardKernel];
          v19 = [v18 exportWeightsAndBiasesWithCommandBuffer:v11 resultStateCanBeTemporary:0];
          v30 = *(v6 + 2936);
          [v19 weights];
          v32 = v31 = v6;
          [v30 synchronizeResource:v32 commandBuffer:v11];

          v33 = [v19 biases];

          if (v33)
          {
            v34 = *(v31 + 2936);
            v35 = [v19 biases];
            [v34 synchronizeResource:v35 commandBuffer:v11];
          }

          [v114 setExportableState:v19];
          v6 = v31;
          v7 = v29;
          goto LABEL_13;
        }

        v12 = *(v6 + 2936);
        v13 = [v9 exportableState];
        v14 = [v13 objectAtIndexedSubscript:0];
        [v12 synchronizeResource:v14 commandBuffer:v11];

        v9 = v114;
        v15 = [v114 exportableState];
        v16 = [v15 count];

        if (v16 >= 2)
        {
          v17 = *(v6 + 2936);
          v18 = [v114 exportableState];
          v19 = [v18 objectAtIndexedSubscript:1];
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
          v22 = [v9 exportableState];
          v23 = [v22 objectAtIndexedSubscript:0];
          [v21 synchronizeResource:v23 commandBuffer:v11];

          v9 = v114;
          v24 = [v114 exportableState];
          v25 = [v24 count];

          if (v25 >= 2)
          {
            v26 = *(v6 + 2936);
            v27 = [v114 exportableState];
            v28 = [v27 objectAtIndexedSubscript:1];
            [v26 synchronizeResource:v28 commandBuffer:v11];

            v9 = v114;
          }
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
          {
            v36 = [v9 exportableState];
            v37 = v36;
            if (v36)
            {
              v38 = *(v6 + 2936);
              v39 = [v36 gamma];
              [v38 synchronizeResource:v39 commandBuffer:v11];

              v40 = *(v6 + 2936);
              v41 = [v37 beta];
              [v40 synchronizeResource:v41 commandBuffer:v11];

              v9 = v114;
            }

            v42 = [v9 movingState];
            v43 = v42;
            if (v42)
            {
              v44 = *(v6 + 2936);
              v45 = [v42 mean];
              [v44 synchronizeResource:v45 commandBuffer:v11];

              v46 = [v43 variance];
              v9 = v114;
              [MLCGPUHelper synchronizeResource:v46 commandBuffer:v11];

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

            v110 = v4;
            v51 = v4;
            v52 = [v51 descriptor];
            v53 = [v52 layerCount];

            v54 = [v51 descriptor];
            v55 = [v54 isBidirectional];

            v112 = v53 << v55;
            if (v53 << v55)
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

                v62 = [v51 biases];

                v56 += 4;
                if (v62)
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

            v4 = v110;
            v6 = 0x278A68000;
LABEL_65:
            v7 = 0x278A68000;
            v9 = v114;
            goto LABEL_24;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v111 = v4;
            v65 = v9;
            v115 = 0u;
            v116 = 0u;
            v117 = 0u;
            v118 = 0u;
            v66 = [v65 exportableState];
            v67 = [v66 countByEnumeratingWithState:&v115 objects:v119 count:16];
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
                    objc_enumerationMutation(v66);
                  }

                  [*(v6 + 2936) synchronizeResource:*(*(&v115 + 1) + 8 * m) commandBuffer:v11];
                }

                v68 = [v66 countByEnumeratingWithState:&v115 objects:v119 count:16];
              }

              while (v68);
            }

            v71 = [v65 momentumVectors];
            v72 = [v71 count];

            v113 = v65;
            if (v72)
            {
              v73 = 0;
              do
              {
                v74 = [v65 momentumVectors];
                v75 = [v74 objectAtIndexedSubscript:v73];

                if ([v75 count])
                {
                  v76 = 0;
                  do
                  {
                    v77 = *(v6 + 2936);
                    v78 = [v75 objectAtIndexedSubscript:v76];
                    v79 = [v78 data];
                    [v77 synchronizeResource:v79 commandBuffer:v11];

                    v6 = 0x278A68000uLL;
                    ++v76;
                  }

                  while (v76 < [v75 count]);
                }

                ++v73;
                v65 = v113;
                v80 = [v113 momentumVectors];
                v81 = [v80 count];
              }

              while (v73 < v81);
            }

            v82 = [v65 velocityVectors];
            v83 = [v82 count];

            if (v83)
            {
              v84 = 0;
              do
              {
                v85 = [v65 velocityVectors];
                v86 = [v85 objectAtIndexedSubscript:v84];

                if ([v86 count])
                {
                  v87 = 0;
                  do
                  {
                    v88 = *(v6 + 2936);
                    v89 = [v86 objectAtIndexedSubscript:v87];
                    v90 = [v89 data];
                    [v88 synchronizeResource:v90 commandBuffer:v11];

                    v6 = 0x278A68000uLL;
                    ++v87;
                  }

                  while (v87 < [v86 count]);
                }

                ++v84;
                v65 = v113;
                v91 = [v113 velocityVectors];
                v92 = [v91 count];
              }

              while (v84 < v92);
            }

            v93 = [v65 centerWeightVectors];
            v94 = [v93 count];

            if (v94)
            {
              v95 = 0;
              do
              {
                v96 = [v65 centerWeightVectors];
                v97 = [v96 objectAtIndexedSubscript:v95];

                if ([v97 count])
                {
                  v98 = 0;
                  do
                  {
                    v99 = *(v6 + 2936);
                    v100 = [v97 objectAtIndexedSubscript:v98];
                    v101 = [v100 data];
                    [v99 synchronizeResource:v101 commandBuffer:v11];

                    v6 = 0x278A68000;
                    ++v98;
                  }

                  while (v98 < [v97 count]);
                }

                ++v95;
                v65 = v113;
                v102 = [v113 centerWeightVectors];
                v103 = [v102 count];
              }

              while (v95 < v103);
            }

            v4 = v111;
            goto LABEL_65;
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_24;
          }

          v104 = [v4 weights];
          v105 = [v104 deviceMemory];
          [v105 objectAtIndexedSubscript:v5];
          v107 = v106 = v4;
          v6 = 0x278A68000;
          [MLCGPUHelper synchronizeResource:v107 commandBuffer:v11];

          v4 = v106;
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

- (void)synchronizeOptimizerUpdatesForTensor:(id)a3
{
  v11 = a3;
  if ([(MLCDeviceGPU *)self numDevicesToUse])
  {
    v4 = 0;
    do
    {
      v5 = [(MLCDeviceGPU *)self gpuCommandBufferList];
      v6 = [v5 objectAtIndexedSubscript:v4];

      v7 = [v11 deviceMemory];
      v8 = [v7 objectAtIndexedSubscript:v4];

      [MLCGPUHelper synchronizeResource:v8 commandBuffer:v6];
      v9 = [v11 optimizerDeviceData];
      v10 = [v9 objectAtIndexedSubscript:v4];
      [(MLCDeviceGPU *)self synchronizeOptimizerBuffers:v10 commandBuffer:v6];

      ++v4;
    }

    while (v4 < [(MLCDeviceGPU *)self numDevicesToUse]);
  }
}

- (void)copyMTLBuffer:(id)a3 toNSData:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v5 bytes];
  v8 = [v6 contents];

  v9 = [v5 length];

  memcpy(v7, v8, v9);
}

- (void)copyMTLBuffer:(id)a3 toBytes:(void *)a4 length:(unint64_t)a5
{
  v7 = [a3 contents];

  memcpy(a4, v7, a5);
}

- (BOOL)checkToConvertTensor:(id)a3 inLayer:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [a3 childLayers];
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        if ([v11 isTrainable])
        {
          v12 = v11 == v5;
          goto LABEL_11;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
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

- (void)convertUpdatesToTensorDataForLayer:(id)a3
{
  *(&v593[1] + 4) = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (![(MLCDeviceGPU *)self numDevicesToUse])
  {
    goto LABEL_228;
  }

  v5 = 0;
  v589 = self;
  v516 = v4;
  do
  {
    v6 = [v4 deviceOps];
    v534 = v5;
    v7 = [v6 objectAtIndexedSubscript:v5];

    v4 = v516;
    objc_opt_class();
    v588 = v7;
    if (objc_opt_isKindOfClass())
    {
      v8 = v516;
      v9 = [v8 weights];
      v10 = [(MLCDeviceGPU *)self checkToConvertTensor:v9 inLayer:v8];

      v587 = v8;
      if (!v10)
      {
        v84 = v8;
LABEL_96:
        v168 = [v84 biases];
        if (v168)
        {
          v169 = v168;
          v170 = [v587 biases];
          v171 = [(MLCDeviceGPU *)v589 checkToConvertTensor:v170 inLayer:v587];

          if (v171)
          {
            v172 = [v588 isMPSGraph];
            v173 = [v588 exportableState];
            v174 = v173;
            if (v172)
            {
              [v173 objectAtIndexedSubscript:1];
            }

            else
            {
              [v173 biases];
            }
            v175 = ;
            v176 = [v587 biases];
            v177 = [v176 data];
            [(MLCDeviceGPU *)v589 copyMTLBuffer:v175 toNSData:v177];
          }
        }

        v7 = v588;
        v584 = [v588 momentumVectors];
        v178 = [v588 momentumVectors];
        v179 = [v178 count];

        if (v179)
        {
          v180 = 0;
          while (v180 != 1)
          {
            if (!v180)
            {
              v574 = [v584 objectAtIndexedSubscript:0];
              v181 = [v574 data];
              v556 = [v587 weightsParameter];
              v542 = [v556 tensor];
              v182 = [v542 optimizerData];
              v183 = [v182 objectAtIndexedSubscript:0];
              v184 = [v183 bytes];
              v185 = [v587 weightsParameter];
LABEL_108:
              v186 = v185;
              v187 = [v185 tensor];
              v188 = [v187 optimizerData];
              v189 = [v188 objectAtIndexedSubscript:0];
              -[MLCDeviceGPU copyMTLBuffer:toBytes:length:](v589, "copyMTLBuffer:toBytes:length:", v181, v184, [v189 length]);

              v7 = v588;
            }

            ++v180;
            v190 = [v7 momentumVectors];
            v191 = [v190 count];

            if (v180 >= v191)
            {
              goto LABEL_110;
            }
          }

          v574 = [v584 objectAtIndexedSubscript:1];
          v181 = [v574 data];
          v556 = [v587 biasesParameter];
          v542 = [v556 tensor];
          v182 = [v542 optimizerData];
          v183 = [v182 objectAtIndexedSubscript:0];
          v184 = [v183 bytes];
          v185 = [v587 biasesParameter];
          goto LABEL_108;
        }

LABEL_110:
        v529 = [v7 velocityVectors];
        v192 = [v7 velocityVectors];
        v193 = [v192 count];

        if (v193)
        {
          v194 = 0;
          while (v194 != 1)
          {
            if (!v194)
            {
              v575 = [v529 objectAtIndexedSubscript:0];
              v195 = [v575 data];
              v557 = [v587 weightsParameter];
              v543 = [v557 tensor];
              v196 = [v543 optimizerData];
              v197 = [v196 objectAtIndexedSubscript:1];
              v198 = [v197 bytes];
              v199 = [v587 weightsParameter];
LABEL_116:
              v200 = v199;
              v201 = [v199 tensor];
              v202 = [v201 optimizerData];
              v203 = [v202 objectAtIndexedSubscript:1];
              -[MLCDeviceGPU copyMTLBuffer:toBytes:length:](v589, "copyMTLBuffer:toBytes:length:", v195, v198, [v203 length]);

              v7 = v588;
            }

            ++v194;
            v204 = [v7 velocityVectors];
            v205 = [v204 count];

            if (v194 >= v205)
            {
              goto LABEL_118;
            }
          }

          v575 = [v529 objectAtIndexedSubscript:1];
          v195 = [v575 data];
          v557 = [v587 biasesParameter];
          v543 = [v557 tensor];
          v196 = [v543 optimizerData];
          v197 = [v196 objectAtIndexedSubscript:1];
          v198 = [v197 bytes];
          v199 = [v587 biasesParameter];
          goto LABEL_116;
        }

LABEL_118:
        v523 = [v7 centerWeightVectors];
        v206 = [v7 centerWeightVectors];
        v207 = [v206 count];

        if (v207)
        {
          v208 = 0;
          while (v208 != 1)
          {
            if (!v208)
            {
              v576 = [v523 objectAtIndexedSubscript:0];
              v209 = [v576 data];
              v558 = [v587 weightsParameter];
              v544 = [v558 tensor];
              v210 = [v544 optimizerData];
              v211 = [v210 objectAtIndexedSubscript:2];
              v212 = [v211 bytes];
              v213 = [v587 weightsParameter];
LABEL_124:
              v214 = v213;
              v215 = [v213 tensor];
              v216 = [v215 optimizerData];
              v217 = [v216 objectAtIndexedSubscript:2];
              -[MLCDeviceGPU copyMTLBuffer:toBytes:length:](v589, "copyMTLBuffer:toBytes:length:", v209, v212, [v217 length]);

              v7 = v588;
            }

            ++v208;
            v218 = [v7 centerWeightVectors];
            v219 = [v218 count];

            if (v208 >= v219)
            {
              goto LABEL_126;
            }
          }

          v576 = [v523 objectAtIndexedSubscript:1];
          v209 = [v576 data];
          v558 = [v587 biasesParameter];
          v544 = [v558 tensor];
          v210 = [v544 optimizerData];
          v211 = [v210 objectAtIndexedSubscript:2];
          v212 = [v211 bytes];
          v213 = [v587 biasesParameter];
          goto LABEL_124;
        }

        goto LABEL_126;
      }

      v11 = [v8 descriptor];
      if ([v11 isConvolutionTranspose])
      {
        v12 = [v8 weights];
        v13 = [v12 data];

        if (v13)
        {
          if ([v588 isMPSGraph])
          {
            v583 = [v588 exportableState];
            v566 = [v583 objectAtIndexedSubscript:0];
            v522 = [v566 contents];
            v548 = [v587 weights];
            v14 = [v548 data];
            v517 = [v14 bytes];
            v528 = [v587 descriptor];
            v512 = [v528 kernelWidth];
            v15 = [v587 descriptor];
            v16 = [v15 kernelHeight];
            v17 = [v587 descriptor];
            v18 = [v17 outputFeatureChannelCount];
            v19 = [v587 descriptor];
            v20 = v18 / [v19 groupCount];
            v21 = [v587 descriptor];
            v22 = [v21 inputFeatureChannelCount];
            v23 = [v587 weights];
            v24 = [v23 descriptor];
            LODWORD(v504) = [v24 dataType];
            LOBYTE(v20) = [MLCDataHelper convertSourceHWOI:v522 toResultOIHW:v517 width:v512 height:v16 inputFeatureChannelCount:v20 outputFeatureChannelCount:v22 dataType:v504];

            if ((v20 & 1) == 0)
            {
              v25 = +[MLCLog framework];
              self = v589;
              if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
              {
                v4 = v516;
                v7 = v588;
LABEL_11:
                v26 = v25;
                goto LABEL_130;
              }

              [(MLCDeviceGPU(MLCEngineDispatch) *)v592 convertUpdatesToTensorDataForLayer:v593, v25];
              v26 = v25;
LABEL_225:
              v4 = v516;
              v7 = v588;
              goto LABEL_130;
            }

            goto LABEL_95;
          }

          v157 = [v588 exportableState];
          v158 = [v157 weights];
          v159 = [v587 weights];
          v160 = [v159 data];
          v166 = [v587 weights];
          v167 = [v166 descriptor];
          [(MLCDeviceGPU *)v589 rotateAndCopyMTLBuffer:v158 toNSData:v160 withTensorDescriptor:v167];

          goto LABEL_93;
        }
      }

      else
      {
      }

      if ([v588 isMPSGraph])
      {
        v585 = [v588 exportableState];
        v573 = [v585 objectAtIndexedSubscript:0];
        v514 = [v573 contents];
        v555 = [v587 weights];
        v148 = [v555 data];
        v510 = [v148 bytes];
        v541 = [v587 descriptor];
        v509 = [v541 kernelWidth];
        v531 = [v587 descriptor];
        v508 = [v531 kernelHeight];
        v519 = [v587 descriptor];
        v149 = [v519 inputFeatureChannelCount];
        v150 = [v587 descriptor];
        v151 = [v150 groupCount];
        v152 = [v587 descriptor];
        v153 = [v152 usesDepthwiseConvolution];
        v154 = [v587 descriptor];
        v155 = [v154 outputFeatureChannelCount];
        if (v153)
        {
          v505 = [v587 descriptor];
          v155 /= [v505 inputFeatureChannelCount];
          v156 = v507;
        }

        else
        {
          v156 = v154;
          v154 = v506;
        }

        v161 = v149 / v151;
        v162 = [v587 weights];
        v163 = [v162 descriptor];
        LODWORD(v504) = [v163 dataType];
        v164 = [MLCDataHelper convertSourceHWIO:v514 toResultOIHW:v510 width:v509 height:v508 inputFeatureChannelCount:v161 outputFeatureChannelCount:v155 dataType:v504];

        v165 = v156;
        if (v153)
        {

          v165 = v154;
        }

        v507 = v156;
        if (v164)
        {
          v506 = v154;
LABEL_95:
          v84 = v587;
          goto LABEL_96;
        }

        v157 = +[MLCLog framework];
        if (os_log_type_enabled(v157, OS_LOG_TYPE_ERROR))
        {
          [(MLCDeviceGPU(MLCEngineDispatch) *)v590 convertUpdatesToTensorDataForLayer:v157];
        }

        v506 = v154;
LABEL_94:

        goto LABEL_95;
      }

      v157 = [v588 exportableState];
      v158 = [v157 weights];
      v159 = [v587 weights];
      v160 = [v159 data];
      [(MLCDeviceGPU *)v589 copyMTLBuffer:v158 toNSData:v160];
LABEL_93:

      goto LABEL_94;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v27 = v516;
      v28 = [v27 weights];
      v29 = [(MLCDeviceGPU *)self checkToConvertTensor:v28 inLayer:v27];

      if (v29)
      {
        v30 = [v7 exportableState];
        v31 = [v30 objectAtIndexedSubscript:0];
        v32 = [v27 weights];
        v33 = [v32 data];
        [(MLCDeviceGPU *)v589 copyMTLBuffer:v31 toNSData:v33];
      }

      v34 = [v27 biases];
      if (v34)
      {
        v35 = v34;
        v36 = [v27 biases];
        v37 = [(MLCDeviceGPU *)v589 checkToConvertTensor:v36 inLayer:v27];

        if (v37)
        {
          v38 = [v588 exportableState];
          v39 = [v38 objectAtIndexedSubscript:1];
          v40 = [v27 biases];
          v41 = [v40 data];
          [(MLCDeviceGPU *)v589 copyMTLBuffer:v39 toNSData:v41];
        }
      }

      v587 = v27;
      v7 = v588;
      v584 = [v588 momentumVectors];
      v42 = [v588 momentumVectors];
      v43 = [v42 count];

      if (v43)
      {
        v44 = 0;
        while (v44 != 1)
        {
          if (!v44)
          {
            v567 = [v584 objectAtIndexedSubscript:0];
            v45 = [v567 data];
            v549 = [v587 weightsParameter];
            v535 = [v549 tensor];
            v46 = [v535 optimizerData];
            v47 = [v46 objectAtIndexedSubscript:0];
            v48 = [v47 bytes];
            v49 = [v587 weightsParameter];
LABEL_24:
            v50 = v49;
            v51 = [v49 tensor];
            v52 = [v51 optimizerData];
            v53 = [v52 objectAtIndexedSubscript:0];
            -[MLCDeviceGPU copyMTLBuffer:toBytes:length:](v589, "copyMTLBuffer:toBytes:length:", v45, v48, [v53 length]);

            v7 = v588;
          }

          ++v44;
          v54 = [v7 momentumVectors];
          v55 = [v54 count];

          if (v44 >= v55)
          {
            goto LABEL_26;
          }
        }

        v567 = [v584 objectAtIndexedSubscript:1];
        v45 = [v567 data];
        v549 = [v587 biasesParameter];
        v535 = [v549 tensor];
        v46 = [v535 optimizerData];
        v47 = [v46 objectAtIndexedSubscript:0];
        v48 = [v47 bytes];
        v49 = [v587 biasesParameter];
        goto LABEL_24;
      }

LABEL_26:
      v529 = [v7 velocityVectors];
      v56 = [v7 velocityVectors];
      v57 = [v56 count];

      if (v57)
      {
        v58 = 0;
        while (v58 != 1)
        {
          if (!v58)
          {
            v568 = [v529 objectAtIndexedSubscript:0];
            v59 = [v568 data];
            v550 = [v587 weightsParameter];
            v536 = [v550 tensor];
            v60 = [v536 optimizerData];
            v61 = [v60 objectAtIndexedSubscript:1];
            v62 = [v61 bytes];
            v63 = [v587 weightsParameter];
LABEL_32:
            v64 = v63;
            v65 = [v63 tensor];
            v66 = [v65 optimizerData];
            v67 = [v66 objectAtIndexedSubscript:1];
            -[MLCDeviceGPU copyMTLBuffer:toBytes:length:](v589, "copyMTLBuffer:toBytes:length:", v59, v62, [v67 length]);

            v7 = v588;
          }

          ++v58;
          v68 = [v7 velocityVectors];
          v69 = [v68 count];

          if (v58 >= v69)
          {
            goto LABEL_34;
          }
        }

        v568 = [v529 objectAtIndexedSubscript:1];
        v59 = [v568 data];
        v550 = [v587 biasesParameter];
        v536 = [v550 tensor];
        v60 = [v536 optimizerData];
        v61 = [v60 objectAtIndexedSubscript:1];
        v62 = [v61 bytes];
        v63 = [v587 biasesParameter];
        goto LABEL_32;
      }

LABEL_34:
      v523 = [v7 centerWeightVectors];
      v70 = [v7 centerWeightVectors];
      v71 = [v70 count];

      if (!v71)
      {
LABEL_126:

        v147 = v529;
        goto LABEL_127;
      }

      v72 = 0;
      while (v72 != 1)
      {
        if (!v72)
        {
          v569 = [v523 objectAtIndexedSubscript:0];
          v73 = [v569 data];
          v551 = [v587 weightsParameter];
          v537 = [v551 tensor];
          v74 = [v537 optimizerData];
          v75 = [v74 objectAtIndexedSubscript:2];
          v76 = [v75 bytes];
          v77 = [v587 weightsParameter];
LABEL_40:
          v78 = v77;
          v79 = [v77 tensor];
          v80 = [v79 optimizerData];
          v81 = [v80 objectAtIndexedSubscript:2];
          -[MLCDeviceGPU copyMTLBuffer:toBytes:length:](v589, "copyMTLBuffer:toBytes:length:", v73, v76, [v81 length]);

          v7 = v588;
        }

        ++v72;
        v82 = [v7 centerWeightVectors];
        v83 = [v82 count];

        if (v72 >= v83)
        {
          goto LABEL_126;
        }
      }

      v569 = [v523 objectAtIndexedSubscript:1];
      v73 = [v569 data];
      v551 = [v587 biasesParameter];
      v537 = [v551 tensor];
      v74 = [v537 optimizerData];
      v75 = [v74 objectAtIndexedSubscript:2];
      v76 = [v75 bytes];
      v77 = [v587 biasesParameter];
      goto LABEL_40;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v587 = [v7 exportableState];
      v85 = v516;
      v86 = [v85 gamma];
      v87 = self;
      v88 = [(MLCDeviceGPU *)self checkToConvertTensor:v86 inLayer:v85];

      if (v88)
      {
        v89 = [v587 gamma];
        v90 = [v85 gamma];
        v91 = [v90 data];
        [(MLCDeviceGPU *)v87 copyMTLBuffer:v89 toNSData:v91];

        v7 = v588;
      }

      v92 = [v85 beta];
      v584 = v85;
      v93 = [(MLCDeviceGPU *)v87 checkToConvertTensor:v92 inLayer:v85];

      if (v93)
      {
        v94 = [v587 beta];
        v95 = [v85 beta];
        v96 = [v95 data];
        [(MLCDeviceGPU *)v589 copyMTLBuffer:v94 toNSData:v96];

        v7 = v588;
      }

      v97 = [v7 movingState];
      v98 = v97;
      if (v97)
      {
        v99 = [v97 mean];
        v100 = [v85 mean];
        v101 = [v100 data];
        [(MLCDeviceGPU *)v589 copyMTLBuffer:v99 toNSData:v101];

        v102 = [v98 variance];
        v103 = [v85 variance];
        v104 = [v103 data];
        [(MLCDeviceGPU *)v589 copyMTLBuffer:v102 toNSData:v104];

        v7 = v588;
      }

      v530 = [v7 momentumVectors];
      v105 = [v7 momentumVectors];
      v106 = [v105 count];

      v513 = v98;
      if (v106)
      {
        v107 = 0;
        while (v107 != 1)
        {
          if (!v107)
          {
            v570 = [v530 objectAtIndexedSubscript:0];
            v108 = [v570 data];
            v552 = [v584 betaParameter];
            v538 = [v552 tensor];
            v109 = [v538 optimizerData];
            v110 = [v109 objectAtIndexedSubscript:0];
            v111 = [v110 bytes];
            v112 = [v584 betaParameter];
LABEL_60:
            v113 = v112;
            v114 = [v112 tensor];
            v115 = [v114 optimizerData];
            v116 = [v115 objectAtIndexedSubscript:0];
            -[MLCDeviceGPU copyMTLBuffer:toBytes:length:](v589, "copyMTLBuffer:toBytes:length:", v108, v111, [v116 length]);

            v7 = v588;
          }

          ++v107;
          v117 = [v7 momentumVectors];
          v118 = [v117 count];

          if (v107 >= v118)
          {
            goto LABEL_62;
          }
        }

        v570 = [v530 objectAtIndexedSubscript:1];
        v108 = [v570 data];
        v552 = [v584 gammaParameter];
        v538 = [v552 tensor];
        v109 = [v538 optimizerData];
        v110 = [v109 objectAtIndexedSubscript:0];
        v111 = [v110 bytes];
        v112 = [v584 gammaParameter];
        goto LABEL_60;
      }

LABEL_62:
      v524 = [v7 velocityVectors];
      v119 = [v7 velocityVectors];
      v120 = [v119 count];

      if (v120)
      {
        v121 = 0;
        while (v121 != 1)
        {
          if (!v121)
          {
            v571 = [v524 objectAtIndexedSubscript:0];
            v122 = [v571 data];
            v553 = [v584 betaParameter];
            v539 = [v553 tensor];
            v123 = [v539 optimizerData];
            v124 = [v123 objectAtIndexedSubscript:1];
            v125 = [v124 bytes];
            v126 = [v584 betaParameter];
LABEL_68:
            v127 = v126;
            v128 = [v126 tensor];
            v129 = [v128 optimizerData];
            v130 = [v129 objectAtIndexedSubscript:1];
            -[MLCDeviceGPU copyMTLBuffer:toBytes:length:](v589, "copyMTLBuffer:toBytes:length:", v122, v125, [v130 length]);

            v7 = v588;
          }

          ++v121;
          v131 = [v7 velocityVectors];
          v132 = [v131 count];

          if (v121 >= v132)
          {
            goto LABEL_70;
          }
        }

        v571 = [v524 objectAtIndexedSubscript:1];
        v122 = [v571 data];
        v553 = [v584 gammaParameter];
        v539 = [v553 tensor];
        v123 = [v539 optimizerData];
        v124 = [v123 objectAtIndexedSubscript:1];
        v125 = [v124 bytes];
        v126 = [v584 gammaParameter];
        goto LABEL_68;
      }

LABEL_70:
      v518 = [v7 centerWeightVectors];
      v133 = [v7 centerWeightVectors];
      v134 = [v133 count];

      if (!v134)
      {
LABEL_78:

        v147 = v513;
LABEL_127:

LABEL_128:
        self = v589;
        v4 = v516;
        goto LABEL_129;
      }

      v135 = 0;
      while (v135 != 1)
      {
        if (!v135)
        {
          v572 = [v518 objectAtIndexedSubscript:0];
          v136 = [v572 data];
          v554 = [v584 betaParameter];
          v540 = [v554 tensor];
          v137 = [v540 optimizerData];
          v138 = [v137 objectAtIndexedSubscript:2];
          v139 = [v138 bytes];
          v140 = [v584 betaParameter];
LABEL_76:
          v141 = v140;
          v142 = [v140 tensor];
          v143 = [v142 optimizerData];
          v144 = [v143 objectAtIndexedSubscript:2];
          -[MLCDeviceGPU copyMTLBuffer:toBytes:length:](v589, "copyMTLBuffer:toBytes:length:", v136, v139, [v144 length]);

          v7 = v588;
        }

        ++v135;
        v145 = [v7 centerWeightVectors];
        v146 = [v145 count];

        if (v135 >= v146)
        {
          goto LABEL_78;
        }
      }

      v572 = [v518 objectAtIndexedSubscript:1];
      v136 = [v572 data];
      v554 = [v584 gammaParameter];
      v540 = [v554 tensor];
      v137 = [v540 optimizerData];
      v138 = [v137 objectAtIndexedSubscript:2];
      v139 = [v138 bytes];
      v140 = [v584 gammaParameter];
      goto LABEL_76;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v220 = v516;
      v221 = [v220 weights];
      v587 = v220;
      v222 = [(MLCDeviceGPU *)self checkToConvertTensor:v221 inLayer:v220];

      if (v222)
      {
        v223 = [v220 weights];
        v224 = [v223 deviceMemory];
        v225 = [v224 objectAtIndexedSubscript:v534];
        v226 = [v220 weights];
        v227 = [v226 data];
        [(MLCDeviceGPU *)v589 copyMTLBuffer:v225 toNSData:v227];

        v7 = v588;
      }

      v228 = [v7 momentumVectors];
      v229 = v228;
      if (v228)
      {
        v586 = [v228 objectAtIndexedSubscript:0];
        v230 = [v586 data];
        v577 = [v587 weightsParameter];
        v231 = [v577 tensor];
        v232 = [v231 optimizerData];
        v233 = [v232 objectAtIndexedSubscript:0];
        v234 = [v233 bytes];
        v235 = [v587 weightsParameter];
        v236 = [v235 tensor];
        v237 = [v236 optimizerData];
        v238 = [v237 objectAtIndexedSubscript:0];
        -[MLCDeviceGPU copyMTLBuffer:toBytes:length:](v589, "copyMTLBuffer:toBytes:length:", v230, v234, [v238 length]);

        v7 = v588;
      }

      v584 = v229;
      v239 = [v7 velocityVectors];
      v240 = v239;
      v578 = v239;
      if (v239)
      {
        v559 = [v239 objectAtIndexedSubscript:0];
        v241 = [v559 data];
        v242 = [v587 weightsParameter];
        v243 = [v242 tensor];
        v244 = [v243 optimizerData];
        v245 = [v244 objectAtIndexedSubscript:1];
        v246 = [v245 bytes];
        v247 = [v587 weightsParameter];
        v248 = [v247 tensor];
        v249 = [v248 optimizerData];
        v250 = [v249 objectAtIndexedSubscript:1];
        -[MLCDeviceGPU copyMTLBuffer:toBytes:length:](v589, "copyMTLBuffer:toBytes:length:", v241, v246, [v250 length]);

        v7 = v588;
        v240 = v578;
      }

      v251 = [v7 centerWeightVectors];
      v252 = v251;
      if (v251)
      {
        v560 = [v251 objectAtIndexedSubscript:0];
        v253 = [v560 data];
        v545 = [v587 weightsParameter];
        v254 = [v545 tensor];
        v255 = [v254 optimizerData];
        v256 = [v255 objectAtIndexedSubscript:2];
        v257 = [v256 bytes];
        v258 = [v587 weightsParameter];
        v259 = [v258 tensor];
        v260 = [v259 optimizerData];
        v261 = [v260 objectAtIndexedSubscript:2];
        -[MLCDeviceGPU copyMTLBuffer:toBytes:length:](v589, "copyMTLBuffer:toBytes:length:", v253, v257, [v261 length]);

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
      v587 = v262;
      v264 = [v262 descriptor];
      v265 = [v264 layerCount];

      v584 = v263;
      v515 = v265 << [v263 isBidirectional];
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
            v270 = [v584 rnnExportedWeightMatrices];
            v271 = [v270 objectAtIndexedSubscript:v532 + v267];

            v561 = v271;
            v579 = v267;
            if (v267 < 4)
            {
              v276 = [v587 inputWeights];
              v277 = [v276 objectAtIndexedSubscript:v269 | v268];

              v278 = [v271 data];
              v546 = v277;
              v279 = [v277 data];
              [(MLCDeviceGPU *)v589 copyMTLBuffer:v278 toNSData:v279];

              [v587 inputWeightsParameters];
            }

            else
            {
              v272 = [v587 hiddenWeights];
              v273 = [v272 objectAtIndexedSubscript:v269 | v268];

              v274 = [v271 data];
              v546 = v273;
              v275 = [v273 data];
              [(MLCDeviceGPU *)v589 copyMTLBuffer:v274 toNSData:v275];

              [v587 hiddenWeightsParameters];
            }
            v280 = ;
            v281 = [v280 objectAtIndexedSubscript:v269 | v268];

            v282 = [v281 tensor];
            v283 = [v282 optimizerData];
            v284 = [v283 count];

            if (v284)
            {
              v285 = [v281 tensor];
              v286 = [v285 optimizerDeviceData];
              v287 = [v286 objectAtIndexedSubscript:v534];
              v288 = [v287 momentumVectors];
              v289 = [v288 objectAtIndexedSubscript:0];

              v290 = [v289 data];
              v291 = [v281 tensor];
              v292 = [v291 optimizerData];
              v293 = [v292 objectAtIndexedSubscript:0];
              v294 = [v293 bytes];
              v295 = [v281 tensor];
              v296 = [v295 optimizerData];
              v297 = [v296 objectAtIndexedSubscript:0];
              -[MLCDeviceGPU copyMTLBuffer:toBytes:length:](v589, "copyMTLBuffer:toBytes:length:", v290, v294, [v297 length]);
            }

            v298 = [v281 tensor];
            v299 = [v298 optimizerData];
            v300 = [v299 count];

            if (v300 >= 2)
            {
              v301 = [v281 tensor];
              v302 = [v301 optimizerDeviceData];
              v303 = [v302 objectAtIndexedSubscript:v534];
              v304 = [v303 velocityVectors];
              v305 = [v304 objectAtIndexedSubscript:0];

              v306 = [v305 data];
              v307 = [v281 tensor];
              v308 = [v307 optimizerData];
              v309 = [v308 objectAtIndexedSubscript:1];
              v310 = [v309 bytes];
              v311 = [v281 tensor];
              v312 = [v311 optimizerData];
              v313 = [v312 objectAtIndexedSubscript:1];
              -[MLCDeviceGPU copyMTLBuffer:toBytes:length:](v589, "copyMTLBuffer:toBytes:length:", v306, v310, [v313 length]);
            }

            v314 = [v281 tensor];
            v315 = [v314 optimizerData];
            v316 = [v315 count];

            if (v316 >= 3)
            {
              v317 = [v281 tensor];
              v318 = [v317 optimizerDeviceData];
              v319 = [v318 objectAtIndexedSubscript:v534];
              v320 = [v319 centerWeightVectors];
              v321 = [v320 objectAtIndexedSubscript:0];

              v322 = [v321 data];
              v323 = [v281 tensor];
              v324 = [v323 optimizerData];
              v325 = [v324 objectAtIndexedSubscript:2];
              v326 = [v325 bytes];
              v327 = [v281 tensor];
              v328 = [v327 optimizerData];
              v329 = [v328 objectAtIndexedSubscript:2];
              -[MLCDeviceGPU copyMTLBuffer:toBytes:length:](v589, "copyMTLBuffer:toBytes:length:", v322, v326, [v329 length]);
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

      v330 = [v587 biases];

      self = v589;
      if (v330)
      {
        v26 = v584;
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
              v334 = [v26 rnnExportedBiasTerms];
              v335 = [v334 objectAtIndexedSubscript:v331];

              v336 = [v587 biases];
              v337 = [v336 objectAtIndexedSubscript:v331];

              v547 = v335;
              v338 = [v335 data];
              v533 = v337;
              v339 = [v337 data];
              [(MLCDeviceGPU *)v589 copyMTLBuffer:v338 toNSData:v339];

              v340 = [v587 biasesParameters];
              v580 = v331;
              v341 = [v340 objectAtIndexedSubscript:v331];

              v342 = [v341 tensor];
              v343 = [v342 optimizerData];
              v344 = [v343 count];

              if (v344)
              {
                v345 = [v341 tensor];
                v346 = [v345 optimizerDeviceData];
                v347 = [v346 objectAtIndexedSubscript:v534];
                v348 = [v347 momentumVectors];
                v526 = [v348 objectAtIndexedSubscript:0];

                v349 = [v526 data];
                v350 = [v341 tensor];
                v351 = [v350 optimizerData];
                v352 = [v351 objectAtIndexedSubscript:0];
                v353 = [v352 bytes];
                v354 = [v341 tensor];
                v355 = [v354 optimizerData];
                v356 = [v355 objectAtIndexedSubscript:0];
                -[MLCDeviceGPU copyMTLBuffer:toBytes:length:](v589, "copyMTLBuffer:toBytes:length:", v349, v353, [v356 length]);
              }

              v357 = [v341 tensor];
              v358 = [v357 optimizerData];
              v359 = [v358 count];

              if (v359 >= 2)
              {
                v360 = [v341 tensor];
                v361 = [v360 optimizerDeviceData];
                v362 = [v361 objectAtIndexedSubscript:v534];
                v363 = [v362 velocityVectors];
                v364 = [v363 objectAtIndexedSubscript:0];

                v365 = [v364 data];
                v366 = [v341 tensor];
                v367 = [v366 optimizerData];
                v368 = [v367 objectAtIndexedSubscript:1];
                v369 = [v368 bytes];
                v370 = [v341 tensor];
                v371 = [v370 optimizerData];
                v372 = [v371 objectAtIndexedSubscript:1];
                -[MLCDeviceGPU copyMTLBuffer:toBytes:length:](v589, "copyMTLBuffer:toBytes:length:", v365, v369, [v372 length]);
              }

              v373 = [v341 tensor];
              v374 = [v373 optimizerData];
              v375 = [v374 count];

              if (v375 >= 3)
              {
                v376 = [v341 tensor];
                v377 = [v376 optimizerDeviceData];
                v378 = [v377 objectAtIndexedSubscript:v534];
                v379 = [v378 centerWeightVectors];
                v527 = [v379 objectAtIndexedSubscript:0];

                v380 = [v527 data];
                v381 = [v341 tensor];
                v382 = [v381 optimizerData];
                v383 = [v382 objectAtIndexedSubscript:2];
                v384 = [v383 bytes];
                v385 = [v341 tensor];
                v386 = [v385 optimizerData];
                v387 = [v386 objectAtIndexedSubscript:2];
                -[MLCDeviceGPU copyMTLBuffer:toBytes:length:](v589, "copyMTLBuffer:toBytes:length:", v380, v384, [v387 length]);
              }

              v26 = v584;
              v331 = v580 + 1;
              v333 = v562 - 1;
            }

            while (v562 != 1);
            v332 = v511 + 1;
            v331 = v521 + 4;
          }

          while (v511 + 1 != v515);
          self = v589;
        }

        goto LABEL_225;
      }

      v4 = v516;
      v7 = v588;
LABEL_129:
      v26 = v584;
      goto LABEL_130;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_131;
    }

    v587 = v516;
    v584 = v7;
    for (i = 0; i != 4; ++i)
    {
      v389 = [v587 weights];
      v390 = [v389 objectAtIndexedSubscript:i];
      v391 = [v390 descriptor];
      v392 = [v391 tensorAllocationSizeInBytes];

      v393 = [v584 exportableState];
      v394 = [v393 objectAtIndexedSubscript:i];
      v395 = [v587 weights];
      v396 = [v395 objectAtIndexedSubscript:i];
      v397 = [v396 data];
      -[MLCDeviceGPU copyMTLBuffer:toBytes:length:](v589, "copyMTLBuffer:toBytes:length:", v394, [v397 bytes], v392);

      v398 = [v587 biases];
      if (!v398)
      {
LABEL_177:
        v581 = 1;
        v7 = v588;
        goto LABEL_180;
      }

      v399 = v398;
      v400 = [v587 biases];
      if ([v400 count] < 4)
      {
        v581 = 1;
      }

      else
      {
        v401 = [v587 biases];
        v402 = [v401 objectAtIndexedSubscript:i];

        if (!v402)
        {
          goto LABEL_177;
        }

        v403 = [v587 biases];
        v404 = [v403 objectAtIndexedSubscript:i];
        v405 = [v404 descriptor];
        v406 = [v405 tensorAllocationSizeInBytes];

        v399 = [v584 exportableState];
        v400 = [v399 objectAtIndexedSubscript:i | 4];
        v407 = [v587 biases];
        v408 = [v407 objectAtIndexedSubscript:i];
        v409 = [v408 data];
        v581 = v406;
        -[MLCDeviceGPU copyMTLBuffer:toBytes:length:](v589, "copyMTLBuffer:toBytes:length:", v400, [v409 bytes], v406);
      }

      v7 = v588;

LABEL_180:
      v410 = [v584 momentumVectors];
      v411 = [v410 objectAtIndexedSubscript:i];

      if ([v411 count])
      {
        v412 = 0;
        while (v412 != 1)
        {
          if (!v412)
          {
            v413 = [v411 objectAtIndexedSubscript:0];
            v414 = [v413 data];
            v415 = [v587 weights];
            v416 = [v415 objectAtIndexedSubscript:i];
            v417 = [v416 optimizerData];
            v418 = [v417 objectAtIndexedSubscript:0];
            v419 = [v418 bytes];
            v420 = v589;
            v421 = v414;
            v422 = v392;
LABEL_186:
            [(MLCDeviceGPU *)v420 copyMTLBuffer:v421 toBytes:v419 length:v422];

            v7 = v588;
          }

          if (++v412 >= [v411 count])
          {
            goto LABEL_188;
          }
        }

        v413 = [v411 objectAtIndexedSubscript:1];
        v414 = [v413 data];
        v415 = [v587 biases];
        v416 = [v415 objectAtIndexedSubscript:i];
        v417 = [v416 optimizerData];
        v418 = [v417 objectAtIndexedSubscript:0];
        v419 = [v418 bytes];
        v420 = v589;
        v421 = v414;
        v422 = v581;
        goto LABEL_186;
      }

LABEL_188:
      v423 = v584;
      v424 = [v584 velocityVectors];
      if (v424)
      {
        v425 = v424;
        v426 = [v584 velocityVectors];
        v427 = [v426 count];

        v428 = v427 >= 4;
        v7 = v588;
        if (v428)
        {
          v563 = v392;
          v429 = [v584 velocityVectors];
          v430 = [v429 objectAtIndexedSubscript:i];

          if (![v430 count])
          {
LABEL_199:

            v423 = v584;
            v392 = v563;
            goto LABEL_200;
          }

          v431 = 0;
          while (2)
          {
            if (v431 == 1)
            {
              v432 = [v430 objectAtIndexedSubscript:1];
              v433 = [v432 data];
              v434 = [v587 biases];
              v435 = [v434 objectAtIndexedSubscript:i];
              v436 = [v435 optimizerData];
              v437 = [v436 objectAtIndexedSubscript:1];
              v438 = [v437 bytes];
              v439 = v589;
              v440 = v433;
              v441 = v581;
LABEL_197:
              [(MLCDeviceGPU *)v439 copyMTLBuffer:v440 toBytes:v438 length:v441];

              v7 = v588;
            }

            else if (!v431)
            {
              v432 = [v430 objectAtIndexedSubscript:0];
              v433 = [v432 data];
              v434 = [v587 weights];
              v435 = [v434 objectAtIndexedSubscript:i];
              v436 = [v435 optimizerData];
              v437 = [v436 objectAtIndexedSubscript:1];
              v438 = [v437 bytes];
              v439 = v589;
              v440 = v433;
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
      v442 = [v423 centerWeightVectors];
      if (v442)
      {
        v443 = v442;
        v444 = [v584 centerWeightVectors];
        v445 = [v444 count];

        v428 = v445 >= 4;
        v7 = v588;
        if (v428)
        {
          v564 = v392;
          v446 = [v584 centerWeightVectors];
          v447 = [v446 objectAtIndexedSubscript:i];

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
              v450 = [v449 data];
              v451 = [v587 biases];
              v452 = [v451 objectAtIndexedSubscript:i];
              v453 = [v452 optimizerData];
              v454 = [v453 objectAtIndexedSubscript:2];
              v455 = [v454 bytes];
              v456 = v589;
              v457 = v450;
              v458 = v581;
LABEL_209:
              [(MLCDeviceGPU *)v456 copyMTLBuffer:v457 toBytes:v455 length:v458];

              v7 = v588;
            }

            else if (!v448)
            {
              v449 = [v447 objectAtIndexedSubscript:0];
              v450 = [v449 data];
              v451 = [v587 weights];
              v452 = [v451 objectAtIndexedSubscript:i];
              v453 = [v452 optimizerData];
              v454 = [v453 objectAtIndexedSubscript:2];
              v455 = [v454 bytes];
              v456 = v589;
              v457 = v450;
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

    v25 = v584;
    v459 = [v584 mhaAttentionBiasTensors];
    v460 = [v459 count];

    if (!v460)
    {
      self = v589;
      v4 = v516;
      goto LABEL_11;
    }

    v461 = [v584 mhaAttentionBiasTensors];
    v462 = [v461 count];

    if (!v462)
    {
      goto LABEL_128;
    }

    v463 = 0;
    do
    {
      v464 = [v584 mhaAttentionBiasTensors];
      v465 = [v464 objectAtIndexedSubscript:v463];
      v466 = [(MLCDeviceGPU *)v589 readTensor:v465 fromDeviceIndex:0];

      v467 = [v587 biasesParameters];
      LODWORD(v465) = [v467 count] > 3;

      v468 = [v587 biasesParameters];
      v469 = v463 + 4 * v465;
      v470 = [v468 objectAtIndexedSubscript:v469];
      v471 = [v470 tensor];

      v472 = [v471 descriptor];
      v473 = [v472 tensorAllocationSizeInBytes];

      v474 = [v471 data];
      v582 = v466;
      memcpy([v474 bytes], objc_msgSend(v466, "bytes"), v473);

      v475 = [v584 momentumVectors];
      v476 = [v475 objectAtIndexedSubscript:v469];

      v565 = v476;
      v477 = [v476 objectAtIndexedSubscript:0];
      v478 = [v477 data];
      v479 = [v471 optimizerData];
      v480 = [v479 objectAtIndexedSubscript:0];
      -[MLCDeviceGPU copyMTLBuffer:toBytes:length:](v589, "copyMTLBuffer:toBytes:length:", v478, [v480 bytes], v473);

      v481 = [v584 velocityVectors];
      if (v481)
      {
        v482 = v481;
        v483 = [v584 velocityVectors];
        v484 = [v483 count];

        if (v484)
        {
          v485 = [v584 velocityVectors];
          v486 = [v485 objectAtIndexedSubscript:v469];

          v487 = [v486 objectAtIndexedSubscript:0];
          v488 = [v487 data];
          v489 = [v471 optimizerData];
          v490 = [v489 objectAtIndexedSubscript:1];
          -[MLCDeviceGPU copyMTLBuffer:toBytes:length:](v589, "copyMTLBuffer:toBytes:length:", v488, [v490 bytes], v473);
        }
      }

      v491 = [v584 centerWeightVectors];
      if (v491)
      {
        v492 = v491;
        v493 = [v584 centerWeightVectors];
        v494 = [v493 count];

        if (v494)
        {
          v495 = [v584 centerWeightVectors];
          v496 = [v495 objectAtIndexedSubscript:v469];

          v497 = [v496 objectAtIndexedSubscript:0];
          v498 = [v497 data];
          v499 = [v471 optimizerData];
          v500 = [v499 objectAtIndexedSubscript:2];
          -[MLCDeviceGPU copyMTLBuffer:toBytes:length:](v589, "copyMTLBuffer:toBytes:length:", v498, [v500 bytes], v473);
        }
      }

      ++v463;
      v501 = [v584 mhaAttentionBiasTensors];
      v502 = [v501 count];
    }

    while (v463 < v502);
    self = v589;
    v4 = v516;
    v7 = v588;
    v26 = v584;
LABEL_130:

LABEL_131:
    v5 = v534 + 1;
  }

  while (v534 + 1 < [(MLCDeviceGPU *)self numDevicesToUse]);
LABEL_228:

  v503 = *MEMORY[0x277D85DE8];
}

- (void)convertUpdatesToTensorDataForTensorParameters:(id)a3
{
  v43 = a3;
  if ([(MLCDeviceGPU *)self numDevicesToUse])
  {
    v4 = 0;
    v42 = self;
    do
    {
      v5 = [v43 descriptor];
      v6 = [v5 shape];
      v7 = [v6 objectAtIndexedSubscript:0];
      v8 = [v43 calculateBatchSizeToUse:{objc_msgSend(v7, "unsignedIntegerValue")}];

      v9 = [v43 data];
      -[MLCDeviceGPU readTensor:fromDeviceIndex:targetBuffer:batchSize:](self, "readTensor:fromDeviceIndex:targetBuffer:batchSize:", v43, v4, [v9 bytes], v8);

      v10 = [v43 optimizerDeviceData];
      v40 = v4;
      v11 = [v10 objectAtIndexedSubscript:v4];

      v41 = v11;
      v12 = [v11 momentumVectors];
      if ([v12 count])
      {
        v13 = 0;
        do
        {
          v14 = [v12 objectAtIndexedSubscript:v13];
          v15 = [v14 data];
          v16 = [v43 optimizerData];
          v17 = [v16 objectAtIndexedSubscript:0];
          v18 = [v17 bytes];
          v19 = [v43 optimizerData];
          v20 = [v19 objectAtIndexedSubscript:0];
          -[MLCDeviceGPU copyMTLBuffer:toBytes:length:](self, "copyMTLBuffer:toBytes:length:", v15, v18, [v20 length]);

          ++v13;
        }

        while (v13 < [v12 count]);
      }

      v39 = v12;
      v21 = [v41 velocityVectors];
      if ([v21 count])
      {
        v22 = 0;
        do
        {
          v23 = [v21 objectAtIndexedSubscript:v22];
          v24 = [v23 data];
          v25 = [v43 optimizerData];
          v26 = [v25 objectAtIndexedSubscript:1];
          v27 = [v26 bytes];
          v28 = [v43 optimizerData];
          v29 = [v28 objectAtIndexedSubscript:1];
          -[MLCDeviceGPU copyMTLBuffer:toBytes:length:](self, "copyMTLBuffer:toBytes:length:", v24, v27, [v29 length]);

          ++v22;
        }

        while (v22 < [v21 count]);
      }

      v30 = [v41 centerWeightVectors];
      if ([v30 count])
      {
        v31 = 0;
        do
        {
          v32 = [v30 objectAtIndexedSubscript:v31];
          v33 = [v32 data];
          v34 = [v43 optimizerData];
          v35 = [v34 objectAtIndexedSubscript:2];
          v36 = [v35 bytes];
          v37 = [v43 optimizerData];
          v38 = [v37 objectAtIndexedSubscript:2];
          -[MLCDeviceGPU copyMTLBuffer:toBytes:length:](v42, "copyMTLBuffer:toBytes:length:", v33, v36, [v38 length]);

          ++v31;
        }

        while (v31 < [v30 count]);
      }

      v4 = v40 + 1;
      self = v42;
    }

    while (v40 + 1 < [(MLCDeviceGPU *)v42 numDevicesToUse]);
  }
}

- (void)setOptimizerLearningRate:(id)a3 learningRate:(float)a4
{
  v8 = a3;
  if ([v8 count])
  {
    v5 = 0;
    do
    {
      v6 = [v8 objectAtIndexedSubscript:v5];
      *&v7 = a4;
      [v6 setLearningRate:v7];

      ++v5;
    }

    while (v5 < [v8 count]);
  }
}

- (void)setOptimizerTimeStep:(id)a3 timeStep:(unint64_t)a4
{
  v7 = a3;
  if ([v7 count])
  {
    v5 = 0;
    do
    {
      v6 = [v7 objectAtIndexedSubscript:v5];
      [v6 setTimeStep:a4];

      ++v5;
    }

    while (v5 < [v7 count]);
  }
}

- (void)updateMultiheadAttentionLayer:(id)a3 optimizer:(id)a4 weightsParameter:(id)a5 biasesParameter:(id)a6 arrayOfParams:(id)a7
{
  v113 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v90 = a4;
  v87 = a5;
  v97 = a6;
  v89 = a7;
  context = objc_autoreleasePoolPush();
  v84 = v12;
  v13 = [v12 objectAtIndexedSubscript:0];
  v14 = [v13 mhaHasAttnBias];
  v15 = 4;
  if (v14)
  {
    v15 = 6;
  }

  v83 = v15;

  if ([(MLCDeviceGPU *)self numDevicesToUse])
  {
    v16 = 0;
    v92 = self;
    do
    {
      v100 = [v84 objectAtIndexedSubscript:v16];
      if ([(MLCDeviceGPU *)self numDevicesToUse]== 2)
      {
        v17 = [v100 mhaMultiGPUChildOps];
        v18 = v16;
        v19 = [v17 multiGPUReduction];

        v20 = v19 == 1;
        v16 = v18;
        if (v20)
        {
          v21 = [MEMORY[0x277CBEBF8] mutableCopy];
          v106 = 0u;
          v107 = 0u;
          v108 = 0u;
          v109 = 0u;
          v22 = [v100 gradientState];
          v23 = [v22 countByEnumeratingWithState:&v106 objects:v112 count:16];
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
                  objc_enumerationMutation(v22);
                }

                v27 = [*(*(&v106 + 1) + 8 * i) data];
                [v21 addObject:v27];
              }

              v24 = [v22 countByEnumeratingWithState:&v106 objects:v112 count:16];
            }

            while (v24);
          }

          v28 = [v84 objectAtIndexedSubscript:0];
          v29 = [v28 mhaMultiGPUChildOps];
          v111[0] = v29;
          v30 = [v84 objectAtIndexedSubscript:1];
          v31 = [v30 mhaMultiGPUChildOps];
          v111[1] = v31;
          v32 = [MEMORY[0x277CBEA60] arrayWithObjects:v111 count:2];
          v33 = [v21 copy];
          self = v92;
          [(MLCDeviceGPU *)v92 allReduceOverXGMI:v32 deviceIndex:v18 stateBuffers:v33];

          v16 = v18;
        }
      }

      v34 = [v84 objectAtIndexedSubscript:v16];
      v35 = [v34 mhaHasBias];

      v36 = [(MLCDeviceGPU *)self gpuCommandBufferList];
      v94 = v16;
      v93 = [v36 objectAtIndexedSubscript:v16];

      v37 = 0;
      v38 = -4;
      if (v35)
      {
        v38 = 0;
      }

      v86 = v38;
      if (v35)
      {
        v39 = 4;
      }

      else
      {
        v39 = 0;
      }

      if (v97)
      {
        v40 = v35;
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
        v43 = [v42 momentumVectors];
        v44 = [v43 objectAtIndexedSubscript:v37];
        v45 = [v42 velocityVectors];
        v46 = [v45 count];
        if (v46)
        {
          v99 = [v42 velocityVectors];
          v47 = [v99 objectAtIndexedSubscript:v37];
          v98 = v47;
        }

        else
        {
          v47 = 0;
        }

        v48 = [v42 centerWeightVectors];
        if ([v48 count])
        {
          v49 = [v42 centerWeightVectors];
          v50 = [v49 objectAtIndexedSubscript:v37];
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
          if (v97)
          {
            v71 = [v97 objectAtIndexedSubscript:v86 + v37];
            v72 = [v71 isUpdatable];

            if (v72)
            {
              v73 = [v90 objectAtIndexedSubscript:v94];
              v65 = [v100 exportableState];
              v85 = [v65 objectAtIndexedSubscript:v39];
              v91 = [v100 gradientState];
              v67 = [v91 objectAtIndexedSubscript:v39];
              v68 = [v67 data];
              v69 = [v100 exportableState];
              v70 = [v69 objectAtIndexedSubscript:v39];
              v96 = v73;
              v74 = v73;
              v66 = v85;
              [(MLCDeviceGPU *)v92 updateWithOptimizer:v74 arrayOfParams:v89 commandBuffer:v93 deviceParameter:v51 source:v85 gradient:v68 result:v70 momentumIndex:0];
              goto LABEL_42;
            }
          }
        }

        else
        {
          v52 = [v87 objectAtIndexedSubscript:v37];
          v53 = [v52 isUpdatable];

          if (v53)
          {
            v54 = [v90 objectAtIndexedSubscript:v94];
            v95 = [v100 exportableState];
            v55 = [v95 objectAtIndexedSubscript:v37];
            v56 = [v100 gradientState];
            v57 = [v56 objectAtIndexedSubscript:v37];
            v58 = [v57 data];
            v59 = [v100 exportableState];
            [v59 objectAtIndexedSubscript:v37];
            v61 = v60 = v51;
            [(MLCDeviceGPU *)v92 updateWithOptimizer:v54 arrayOfParams:v89 commandBuffer:v93 deviceParameter:v60 source:v55 gradient:v58 result:v61 momentumIndex:0];

            v51 = v60;
            v42 = v100;
          }

          v62 = v101;
          if (v88)
          {
            v63 = [v97 objectAtIndexedSubscript:v37];
            v64 = [v63 isUpdatable];

            if (v64)
            {
              v96 = [v90 objectAtIndexedSubscript:v94];
              v65 = [v42 exportableState];
              v66 = [v65 objectAtIndexedSubscript:v37 + 4];
              v91 = [v42 gradientState];
              v67 = [v91 objectAtIndexedSubscript:v37 + 4];
              v68 = [v67 data];
              v69 = [v42 exportableState];
              v70 = [v69 objectAtIndexedSubscript:v37 + 4];
              [(MLCDeviceGPU *)v92 updateWithOptimizer:v96 arrayOfParams:v89 commandBuffer:v93 deviceParameter:v51 source:v66 gradient:v68 result:v70 momentumIndex:1];
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
      v75 = [v42 gradientState];
      v76 = [v75 countByEnumeratingWithState:&v102 objects:v110 count:16];
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
              objc_enumerationMutation(v75);
            }

            v80 = *(*(&v102 + 1) + 8 * j);
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) != 0 && [v80 readCount])
            {
              [v80 setReadCount:0];
            }
          }

          v77 = [v75 countByEnumeratingWithState:&v102 objects:v110 count:16];
        }

        while (v77);
      }

      v16 = v94 + 1;
      self = v92;
    }

    while (v94 + 1 < [(MLCDeviceGPU *)v92 numDevicesToUse]);
  }

  objc_autoreleasePoolPop(context);

  v81 = *MEMORY[0x277D85DE8];
}

- (void)reloadLSTMParameters:(id)a3 rnnGPUDeviceOps:(id)a4 mlcParameterIndex:(unint64_t)a5 tensor:(id)a6 isInputWeight:(BOOL)a7 isHiddenWeight:(BOOL)a8 isBias:(BOOL)a9 deviceNumber:(unint64_t)a10
{
  v10 = a8;
  v11 = a7;
  v82 = a3;
  v16 = a4;
  v17 = a6;
  v83 = [v16 gradientKernel];
  v18 = [v16 numLayers];
  if (v18 < 2)
  {
    goto LABEL_5;
  }

  v19 = v18;
  v20 = [v16 isBidirectional];
  v21 = a5 >> 2;
  if (!v20)
  {
    goto LABEL_6;
  }

  if ([v16 isBidirectional])
  {
    v21 = (a5 - 4 * v19) >> 2;
  }

  else
  {
LABEL_5:
    v21 = 0;
  }

LABEL_6:
  v80 = a5 >> 2;
  context = a5 & 3;
  v22 = [v17 deviceMemory];
  v79 = self;
  v81 = v16;
  if ([v22 count])
  {
    v23 = [v17 deviceMemory];
    v24 = [v23 objectAtIndexedSubscript:a10];
    v25 = [v24 conformsToProtocol:&unk_284BC3750];

    if (v25)
    {
      v26 = [v17 deviceMemory];
      v27 = a10;
      v28 = [v26 objectAtIndexedSubscript:a10];

      v29 = [v28 contents];
      v30 = [v17 data];
      v31 = [v30 bytes];
      v32 = [v17 data];
      memcpy(v29, v31, [v32 length]);

      v33 = [v17 descriptor];
      v34 = [v33 tensorAllocationSizeInBytes];

      [MLCGPUHelper didModifyRange:0 buffer:v34, v28];
      if (!v11)
      {
        goto LABEL_9;
      }

LABEL_16:
      v36 = qword_278A69680[context];
      v60 = [v82 descriptor];
      v61 = [v60 hiddenSize];

      v62 = [v82 descriptor];
      v63 = v62;
      if (v76)
      {
        v64 = [v62 hiddenSize];
      }

      else
      {
        v64 = [v62 inputSize];
      }

      v72 = v64;

      v41 = [MEMORY[0x277CD7258] matrixDescriptorWithRows:v61 columns:v72 rowBytes:4 * v72 dataType:268435488];
      v42 = [objc_alloc(MEMORY[0x277CD7250]) initWithBuffer:v28 descriptor:v41];
      contexta = objc_autoreleasePoolPush();
      v43 = [(MLCDeviceGPU *)v79 gpuCommandQueueList];
      v44 = v43;
      v45 = v27;
      goto LABEL_22;
    }
  }

  else
  {
  }

  v46 = v17;
  v47 = v11;
  v48 = v10;
  v49 = [(MLCDeviceGPU *)self deviceList];
  v50 = [v49 objectAtIndexedSubscript:a10];
  v51 = [v46 data];
  v52 = [v51 bytes];
  v53 = [v46 data];
  v28 = [v50 newBufferWithBytes:v52 length:objc_msgSend(v53 options:{"length"), +[MLCGPUHelper mtlResourceOptions](MLCGPUHelper, "mtlResourceOptions")}];

  v54 = [v46 deviceMemory];
  v55 = [v54 count];

  v56 = v46;
  v57 = [v46 deviceMemory];
  v58 = v57;
  v27 = a10;
  if (v55)
  {
    [v57 setObject:v28 atIndexedSubscript:a10];
  }

  else
  {
    [v57 addObject:v28];
  }

  v10 = v48;
  v59 = v47;
  v17 = v56;
  if (v59)
  {
    goto LABEL_16;
  }

LABEL_9:
  v35 = v27;
  if (v10)
  {
    v36 = qword_278A696A0[context];
    v37 = [v82 descriptor];
    v38 = [v37 hiddenSize];

    v39 = [v82 descriptor];
    v40 = [v39 hiddenSize];

    v41 = [MEMORY[0x277CD7258] matrixDescriptorWithRows:v38 columns:v40 rowBytes:4 * v40 dataType:268435488];
    v42 = [objc_alloc(MEMORY[0x277CD7250]) initWithBuffer:v28 descriptor:v41];
    contexta = objc_autoreleasePoolPush();
    v43 = [(MLCDeviceGPU *)v79 gpuCommandQueueList];
    v44 = v43;
    v45 = v27;
LABEL_22:
    v73 = [v43 objectAtIndexedSubscript:v45];
    v69 = [v73 commandBuffer];

    v70 = v80;
    v71 = [v83 objectAtIndexedSubscript:v80];
    v65 = v81;
    goto LABEL_23;
  }

  v65 = v81;
  if (a9)
  {
    v36 = qword_278A696C0[context];
    v66 = [v81 hiddenSize];
    v41 = [MEMORY[0x277CD7258] matrixDescriptorWithRows:1 columns:v66 rowBytes:4 * v66 dataType:268435488];
    v42 = [objc_alloc(MEMORY[0x277CD7250]) initWithBuffer:v28 descriptor:v41];
    contexta = objc_autoreleasePoolPush();
    v67 = [(MLCDeviceGPU *)v79 gpuCommandQueueList];
    v68 = [v67 objectAtIndexedSubscript:v35];
    v69 = [v68 commandBuffer];

    v70 = v80;
    v71 = [v83 objectAtIndexedSubscript:v80];
LABEL_23:
    v74 = [v65 rnnTrainableWeights];
    v75 = [v74 objectAtIndexedSubscript:v70];
    memset(v84, 0, sizeof(v84));
    [v71 encodeCopyWeightsToCommandBuffer:v69 weights:v75 matrixId:objc_msgSend(v36 matrix:"unsignedIntegerValue") copyFromWeightsToMatrix:v42 matrixOffset:{0, v84}];

    [v69 commit];
    [v69 waitUntilCompleted];

    objc_autoreleasePoolPop(contexta);
  }
}

- (void)reloadParameterDataFromHostToDeviceMemoryForTensor:(id)a3
{
  *(&v152[1] + 4) = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [v5 childLayers];
  v7 = [v6 objectAtIndexedSubscript:0];

  v150 = self;
  if ([(MLCDeviceGPU *)self numDevicesToUse])
  {
    v8 = 0;
    v149 = v5;
    while (1)
    {
      v9 = [v7 deviceOps];
      v10 = [v9 objectAtIndexedSubscript:v8];

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
                    v13 = v7;
                    v62 = v10;
                    v63 = [v13 inputWeights];
                    v64 = [v63 count];

                    v142 = v62;
                    v144 = v3;
                    if (v64)
                    {
                      v65 = 0;
                      while (1)
                      {
                        v66 = [v13 inputWeights];
                        v67 = [v66 objectAtIndexedSubscript:v65];

                        if (v67 == v5)
                        {
                          break;
                        }

                        ++v65;
                        v68 = [v13 inputWeights];
                        v69 = [v68 count];

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
                      v70 = [v13 hiddenWeights];
                      v71 = [v70 count];

                      if (v71)
                      {
                        v65 = 0;
                        while (1)
                        {
                          v72 = [v13 hiddenWeights];
                          v71 = [v72 objectAtIndexedSubscript:v65];

                          LOBYTE(v71) = v71 == v5;
                          if (v71)
                          {
                            break;
                          }

                          v73 = v71;
                          ++v65;
                          v74 = [v13 hiddenWeights];
                          v75 = [v74 count];

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

                    v85 = [v13 biases];

                    v86 = 0;
                    if ((v146 & 1) == 0 && v85 && (v71 & 1) == 0)
                    {
                      v87 = [v13 biases];
                      v88 = [v87 count];

                      if (v88)
                      {
                        v89 = 0;
                        while (1)
                        {
                          v90 = [v13 biases];
                          v91 = [v90 objectAtIndexedSubscript:v89];

                          v86 = v91 == v5;
                          if (v91 == v5)
                          {
                            break;
                          }

                          ++v89;
                          v92 = [v13 biases];
                          v93 = [v92 count];

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
                    [MLCDeviceGPU reloadLSTMParameters:v150 rnnGPUDeviceOps:"reloadLSTMParameters:rnnGPUDeviceOps:mlcParameterIndex:tensor:isInputWeight:isHiddenWeight:isBias:deviceNumber:" mlcParameterIndex:v13 tensor:v62 isInputWeight:v65 isHiddenWeight:v5 isBias:v122 deviceNumber:v8];
                  }

                  else
                  {
                    objc_opt_class();
                    if ((objc_opt_isKindOfClass() & 1) == 0)
                    {
                      goto LABEL_32;
                    }

                    v13 = v7;
                    v76 = [v13 weights];
                    v77 = [v76 count];

                    if (v77)
                    {
                      v78 = 0;
                      while (1)
                      {
                        v79 = [v13 weights];
                        v80 = [v79 objectAtIndexedSubscript:v78];

                        if (v80 == v5 && v78 <= 2)
                        {
                          break;
                        }

                        v82 = v80 == v5 && v78 == 3;

                        if (!v82)
                        {
                          ++v78;
                          v83 = [v13 weights];
                          v84 = [v83 count];

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
                    v94 = [v13 descriptor];
                    v95 = [v94 hasBiases];

                    if (v95)
                    {
                      v96 = [v13 biases];
                      v97 = [v96 count];

                      if (v97)
                      {
                        v98 = 0;
                        while (1)
                        {
                          v99 = [v13 biases];
                          v100 = [v99 objectAtIndexedSubscript:v98];

                          if (v100 == v5 && v98 <= 2)
                          {

                            v147 = 1;
                            goto LABEL_87;
                          }

                          if (v100 == v5 && v98 == 3)
                          {
                            break;
                          }

                          ++v98;
                          v101 = [v13 biases];
                          v102 = [v101 count];

                          if (v98 >= v102)
                          {
                            goto LABEL_87;
                          }
                        }

                        v82 = 1;
                      }
                    }

LABEL_87:
                    v103 = [v13 descriptor];
                    v104 = [v103 hasAttentionBiases];

                    v144 = v3;
                    if (v104 && ([v13 attentionBiases], v105 = objc_claimAutoreleasedReturnValue(), v106 = objc_msgSend(v105, "count"), v105, v106))
                    {
                      v107 = 0;
                      while (1)
                      {
                        v108 = [v13 attentionBiases];
                        v109 = [v108 objectAtIndexedSubscript:v107];

                        if (v109 == v5 && !v107)
                        {
                          break;
                        }

                        v111 = v109 == v5 && v107 == 1;

                        if (!v111)
                        {
                          ++v107;
                          v112 = [v13 attentionBiases];
                          v113 = [v112 count];

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

                    v114 = [v5 descriptor];
                    v148 = [v114 tensorAllocationSizeInBytes];

                    v115 = [v5 deviceMemory];
                    v116 = [v115 objectAtIndexedSubscript:v8];

                    v117 = [v116 contents];
                    v118 = [v5 data];
                    v119 = [v118 bytes];
                    v120 = [v5 data];
                    memcpy(v117, v119, [v120 length]);

                    [MLCGPUHelper didModifyRange:0 buffer:v148, v116];
                  }

LABEL_107:
                  v3 = v144;
                  goto LABEL_31;
                }
              }
            }
          }
        }
      }

      v19 = [v5 descriptor];
      v20 = [v19 tensorAllocationSizeInBytes];

      v21 = [v5 deviceMemory];
      v13 = [v21 objectAtIndexedSubscript:v8];

      v22 = [v13 contents];
      v23 = [v5 data];
      v24 = [v23 bytes];
      [v5 data];
      v25 = v10;
      v27 = v26 = v3;
      memcpy(v22, v24, [v27 length]);

      v3 = v26;
      v10 = v25;
      v5 = v149;

      v28 = v20;
LABEL_30:
      [MLCGPUHelper didModifyRange:0 buffer:v28, v13];
LABEL_31:

LABEL_32:
      if (++v8 >= [(MLCDeviceGPU *)v150 numDevicesToUse])
      {
        goto LABEL_108;
      }
    }

    if (![v10 isMPSGraph])
    {
      v13 = [v10 forwardKernel];
      v29 = [v10 gradientKernel];
      v30 = [v7 descriptor];
      v31 = [v30 isConvolutionTranspose];

      if (v31)
      {
        v32 = [v7 weights];

        if (v32 == v5)
        {
          v33 = [v5 descriptor];
          v34 = malloc_type_malloc([v33 tensorAllocationSizeInBytes], 0x12B3D740uLL);

          v35 = MEMORY[0x277CBEA90];
          v36 = [v5 descriptor];
          v37 = [v35 dataWithBytesNoCopy:v34 length:objc_msgSend(v36 freeWhenDone:{"tensorAllocationSizeInBytes"), 1}];

          v38 = [v5 descriptor];
          v39 = [v38 shape];
          [v5 data];
          v40 = v10;
          v42 = v41 = v3;
          rotateWeightsTensorBy180Degree(v39, v42, v37);

          v3 = v41;
          v10 = v40;
          v5 = v149;

          v43 = [v13 dataSource];
          v44 = [v43 weight];
          [v44 setData:v37];
        }
      }

      [v13 reloadWeightsAndBiasesFromDataSource];
      [v29 reloadWeightsAndBiasesFromDataSource];

      goto LABEL_31;
    }

    v11 = [v5 descriptor];
    v145 = [v11 tensorAllocationSizeInBytes];

    v12 = [v5 deviceMemory];
    v13 = [v12 objectAtIndexedSubscript:v8];

    v14 = [v7 weights];

    if (v14 == v5)
    {
      v143 = v3;
      v45 = [v7 descriptor];
      v46 = [v45 isConvolutionTranspose];

      if (v46)
      {
        v140 = [v5 data];
        v135 = [v140 bytes];
        v133 = [v13 contents];
        v138 = [v7 descriptor];
        v131 = [v138 kernelWidth];
        v136 = [v7 descriptor];
        v129 = [v136 kernelHeight];
        v47 = [v7 descriptor];
        v127 = [v47 inputFeatureChannelCount];
        v48 = [v7 descriptor];
        v49 = [v48 outputFeatureChannelCount];
        v50 = [v7 descriptor];
        v51 = v49 / [v50 groupCount];
        v52 = [v5 descriptor];
        LODWORD(v122) = [v52 dataType];
        LOBYTE(v51) = [MLCDataHelper convertSourceOIHW:v135 toResultHWOI:v133 width:v131 height:v129 inputFeatureChannelCount:v127 outputFeatureChannelCount:v51 dataType:v122];

        v3 = v143;
        if (v51)
        {
          goto LABEL_29;
        }
      }

      else
      {
        v53 = [v7 descriptor];
        v54 = [v53 usesDepthwiseConvolution];

        v141 = [v5 data];
        v132 = [v141 bytes];
        v130 = [v13 contents];
        v139 = [v7 descriptor];
        v126 = [v139 kernelWidth];
        v137 = [v7 descriptor];
        v125 = [v137 kernelHeight];
        v134 = [v7 descriptor];
        v55 = [v134 inputFeatureChannelCount];
        v128 = [v7 descriptor];
        v56 = [v128 groupCount];
        v3 = [v7 descriptor];
        v57 = [v3 outputFeatureChannelCount];
        if (v54)
        {
          v124 = [v7 descriptor];
          v123 = v3;
          v57 /= [v124 inputFeatureChannelCount];
          v3 = v143;
        }

        v58 = v55 / v56;
        v59 = [v5 descriptor];
        LODWORD(v122) = [v59 dataType];
        v60 = [MLCDataHelper convertSourceOIHW:v132 toResultHWIO:v130 width:v126 height:v125 inputFeatureChannelCount:v58 outputFeatureChannelCount:v57 dataType:v122];

        v61 = v3;
        if (v54)
        {

          v61 = v123;
        }

        if (v60)
        {
          goto LABEL_29;
        }
      }

      v16 = +[MLCLog framework];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [(MLCDeviceGPU(MLCEngineDispatch) *)v151 reloadParameterDataFromHostToDeviceMemoryForTensor:v152, v16];
      }
    }

    else
    {
      v15 = [v13 contents];
      v16 = [v5 data];
      v17 = [v16 bytes];
      v18 = [v5 data];
      memcpy(v15, v17, [v18 length]);
    }

LABEL_29:
    v28 = v145;
    goto LABEL_30;
  }

LABEL_108:

  v121 = *MEMORY[0x277D85DE8];
}

- (void)restoreRNNParamsWithDeviceOps:(id)a3 optimizer:(id)a4 inputWeightsParameter:(id)a5 hiddenWeightsParameter:(id)a6 biasesParameter:(id)a7 arrayOfParams:(id)a8
{
  v85[2] = *MEMORY[0x277D85DE8];
  v65 = a3;
  v76 = a5;
  v75 = a6;
  v68 = a7;
  if ([(MLCDeviceGPU *)self numDevicesToUse])
  {
    v12 = 0;
    v78 = self;
    do
    {
      v13 = [v65 objectAtIndexedSubscript:v12];
      v80 = v13;
      v81 = v12;
      if ([(MLCDeviceGPU *)self numDevicesToUse]== 2)
      {
        v14 = [v13 lstmMultiGPUChildOps];
        v15 = [v14 multiGPUReduction];

        if (v15 == 1)
        {
          v16 = [MEMORY[0x277CBEBF8] mutableCopy];
          v17 = [v13 rnnTrainableWeightGradients];
          if ([v17 count])
          {
            v18 = 0;
            do
            {
              v19 = [v17 objectAtIndexedSubscript:v18];
              if ([v19 count])
              {
                v20 = 0;
                do
                {
                  v21 = [v19 objectAtIndexedSubscript:v20];
                  v22 = [v21 data];
                  [v16 addObject:v22];

                  ++v20;
                }

                while (v20 < [v19 count]);
              }

              ++v18;
            }

            while (v18 < [v17 count]);
          }

          v83 = [v65 objectAtIndexedSubscript:0];
          v23 = [v83 lstmMultiGPUChildOps];
          v85[0] = v23;
          v24 = [v65 objectAtIndexedSubscript:1];
          v25 = [v24 lstmMultiGPUChildOps];
          v85[1] = v25;
          v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v85 count:2];
          v27 = [v26 copy];
          v28 = [v16 copy];
          self = v78;
          v12 = v81;
          [(MLCDeviceGPU *)v78 allReduceOverXGMI:v27 deviceIndex:v81 stateBuffers:v28];

          v13 = v80;
        }
      }

      v29 = [(MLCDeviceGPU *)self gpuCommandBufferList];
      v79 = [v29 objectAtIndexedSubscript:v12];

      v66 = [v13 gradientKernel];
      v30 = [v66 count];
      v31 = [v76 objectAtIndexedSubscript:0];
      v32 = [v31 tensor];
      v33 = [v32 optimizerData];
      v77 = [v33 count];

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
              v37 = [v76 objectAtIndexedSubscript:v35];
              v38 = [v37 isUpdatable];

              if ((v38 & 1) == 0)
              {
                v72 = [v80 auxiliaryWeightsMemory];
                v69 = [v72 objectAtIndexedSubscript:v34];
                v39 = [v80 auxiliaryMomentumMemory];
                v40 = [v39 objectAtIndexedSubscript:v34];
                v41 = [v80 auxiliaryVelocityMemory];
                v42 = [v41 objectAtIndexedSubscript:v34];
                v43 = [v80 auxiliaryCenterWeightMemory];
                v44 = [v43 objectAtIndexedSubscript:v34];
                LODWORD(v64) = 256;
                [MLCDeviceGPU saveOrRestoreTempMatrixDisableUpdates:v78 commandBuffer:"saveOrRestoreTempMatrixDisableUpdates:commandBuffer:auxiliaryWeightsMemory:auxiliaryMomentumMemory:auxiliaryVelocityMemory:auxiliaryCenterWeightMemory:deviceNumber:kernelNumber:mlcIndex:auxIndex:numOptimizerData:saveToAux:isInputWeight:isHiddenWeight:isBias:" auxiliaryWeightsMemory:v80 auxiliaryMomentumMemory:v79 auxiliaryVelocityMemory:v69 auxiliaryCenterWeightMemory:v40 deviceNumber:v42 kernelNumber:v44 mlcIndex:v81 auxIndex:v34 numOptimizerData:v35 saveToAux:v84 isInputWeight:v77 isHiddenWeight:v64 isBias:?];

                ++v84;
                v36 = v82;
              }

              ++v35;
            }

            while (v35 < v36);
            v45 = 4 * v34;
            do
            {
              v46 = [v75 objectAtIndexedSubscript:v45];
              v47 = [v46 isUpdatable];

              if ((v47 & 1) == 0)
              {
                v73 = [v80 auxiliaryWeightsMemory];
                v70 = [v73 objectAtIndexedSubscript:v34];
                v48 = [v80 auxiliaryMomentumMemory];
                v49 = [v48 objectAtIndexedSubscript:v34];
                v50 = [v80 auxiliaryVelocityMemory];
                v51 = [v50 objectAtIndexedSubscript:v34];
                v52 = [v80 auxiliaryCenterWeightMemory];
                v53 = [v52 objectAtIndexedSubscript:v34];
                LODWORD(v64) = 0x10000;
                [MLCDeviceGPU saveOrRestoreTempMatrixDisableUpdates:v78 commandBuffer:"saveOrRestoreTempMatrixDisableUpdates:commandBuffer:auxiliaryWeightsMemory:auxiliaryMomentumMemory:auxiliaryVelocityMemory:auxiliaryCenterWeightMemory:deviceNumber:kernelNumber:mlcIndex:auxIndex:numOptimizerData:saveToAux:isInputWeight:isHiddenWeight:isBias:" auxiliaryWeightsMemory:v80 auxiliaryMomentumMemory:v79 auxiliaryVelocityMemory:v70 auxiliaryCenterWeightMemory:v49 deviceNumber:v51 kernelNumber:v53 mlcIndex:v81 auxIndex:v34 numOptimizerData:v45 saveToAux:v84 isInputWeight:v77 isHiddenWeight:v64 isBias:?];

                ++v84;
                v36 = v82;
              }

              ++v45;
            }

            while (v45 < v36);
            v54 = 4 * v34;
            if (v68)
            {
              do
              {
                v55 = [v68 objectAtIndexedSubscript:v54];
                v56 = [v55 isUpdatable];

                if ((v56 & 1) == 0)
                {
                  v74 = [v80 auxiliaryWeightsMemory];
                  v71 = [v74 objectAtIndexedSubscript:v34];
                  v57 = [v80 auxiliaryMomentumMemory];
                  v58 = [v57 objectAtIndexedSubscript:v34];
                  v59 = [v80 auxiliaryVelocityMemory];
                  v60 = [v59 objectAtIndexedSubscript:v34];
                  v61 = [v80 auxiliaryCenterWeightMemory];
                  v62 = [v61 objectAtIndexedSubscript:v34];
                  LODWORD(v64) = 0x1000000;
                  [MLCDeviceGPU saveOrRestoreTempMatrixDisableUpdates:v78 commandBuffer:"saveOrRestoreTempMatrixDisableUpdates:commandBuffer:auxiliaryWeightsMemory:auxiliaryMomentumMemory:auxiliaryVelocityMemory:auxiliaryCenterWeightMemory:deviceNumber:kernelNumber:mlcIndex:auxIndex:numOptimizerData:saveToAux:isInputWeight:isHiddenWeight:isBias:" auxiliaryWeightsMemory:v80 auxiliaryMomentumMemory:v79 auxiliaryVelocityMemory:v71 auxiliaryCenterWeightMemory:v58 deviceNumber:v60 kernelNumber:v62 mlcIndex:v81 auxIndex:v34 numOptimizerData:v54 saveToAux:v84 isInputWeight:v77 isHiddenWeight:v64 isBias:?];

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
      self = v78;
    }

    while (v81 + 1 < [(MLCDeviceGPU *)v78 numDevicesToUse]);
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