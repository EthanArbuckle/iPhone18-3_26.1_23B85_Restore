@interface MLCDeviceANE
+ (BOOL)hasANE;
- (BOOL)allocateDeviceMemoryForSourceAndResultTensorsOfLayer:(id)layer tensorLabelToIOSurfaceMap:(id *)map;
- (BOOL)compileLayerDeviceOps:(id)ops sourceTensors:(id)tensors resultTensor:(id)tensor;
- (BOOL)compileOptimizerDeviceOps:(id)ops;
- (BOOL)needToAllocateDeviceMemoryForTensor:(id)tensor;
- (BOOL)postProcessCompiledGraph:(id)graph compilerOptions:(unint64_t)options;
- (BOOL)procedureInformationWithModelAttributes:(id)attributes procedureName:(id)name procedureID:(unint64_t *)d procedureInputSymbols:(id *)symbols procedureInputSymbolIndices:(id *)indices procedureOutputSymbols:(id *)outputSymbols procedureOutputSymbolIndices:(id *)symbolIndices;
- (BOOL)setConvolutionLayerOptimizerDataForDeviceOps:(id)ops weights:(id)weights bias:(id)bias;
- (BOOL)setLSTMLayerOptimizerDataForDeviceOps:(id)ops inputWeights:(id)weights hiddenWeights:(id)hiddenWeights biasTerms:(id)terms;
- (BOOL)setMHALayerOptimizerDataForDeviceOps:(id)ops optimizerDataForWeights:(id)weights optimizerDataForBias:(id)bias;
- (BOOL)setNormalizationLayerOptimizerDataForDeviceOps:(id)ops beta:(id)beta gamma:(id)gamma;
- (BOOL)shareDeviceMemoryWithResultTensor:(id)tensor sourceTensor:(id)sourceTensor;
- (BOOL)transferTensor:(id)tensor fromDevice:(id)device;
- (BOOL)updateDeviceMemoryForTensor:(id)tensor;
- (BOOL)updateTensorsForFusedLayers:(id)layers ofInferenceGraph:(id)graph;
- (MLCDeviceANE)initWithType:(int)type;
- (NSString)description;
- (id)ANERequestWithModelAttributes:(id)attributes procedureName:(id)name tensorLabelToIOSurfaceMap:(id)map;
- (id)batchNormalizationLayerWithChannelCount:(unint64_t)count mean:(id)mean variance:(id)variance beta:(id)beta gamma:(id)gamma varianceEpsilon:(float)epsilon momentum:(float)momentum;
- (id)convolutionTransposeLayerWithDescriptor:(id)descriptor weights:(id)weights biasTerms:(id)terms;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dropoutLayerWithRate:(float)rate seed:(unint64_t)seed;
- (id)fusedBatchNormalizationAndNeuronLayerWithDescriptor:(id)descriptor numOfFeatureChannels:(unint64_t)channels mean:(id)mean variance:(id)variance beta:(id)beta gamma:(id)gamma varianceEpsilon:(float)epsilon momentum:(float)self0;
- (id)fusedConvolutionAndNeuronLayerWithDescriptor:(id)descriptor convolutionDescriptor:(id)convolutionDescriptor weights:(id)weights biasTerms:(id)terms;
- (id)fusedConvolutionBatchNormalizationAndNeuronLayerWithDescriptor:(id)descriptor mean:(id)mean variance:(id)variance beta:(id)beta gamma:(id)gamma varianceEpsilon:(float)epsilon momentum:(float)momentum neuronDescriptor:(id)self0 weights:(id)self1 biasTerms:(id)self2;
- (id)fusedFullyConnectedAndNeuronLayerWithDescriptor:(id)descriptor convolutionDescriptor:(id)convolutionDescriptor weights:(id)weights biasTerms:(id)terms;
- (id)fusedFullyConnectedBatchNormalizationAndNeuronLayerWithDescriptor:(id)descriptor mean:(id)mean variance:(id)variance beta:(id)beta gamma:(id)gamma varianceEpsilon:(float)epsilon momentum:(float)momentum neuronDescriptor:(id)self0 weights:(id)self1 biasTerms:(id)self2;
- (id)getHostPointerIfUnifiedDeviceMemory:(id)memory;
- (id)gramMatrixLayerWithScaleFactor:(float)factor;
- (id)groupNormalizationLayerWithFeatureChannelCount:(unint64_t)count groupCount:(unint64_t)groupCount beta:(id)beta gamma:(id)gamma varianceEpsilon:(float)epsilon;
- (id)instanceNormalizationLayerWithChannelCount:(unint64_t)count mean:(id)mean variance:(id)variance beta:(id)beta gamma:(id)gamma varianceEpsilon:(float)epsilon momentum:(float)momentum;
- (id)lossLayerWithDescriptor:(id)descriptor;
- (id)lossYOLOLayerWithDescriptor:(id)descriptor;
- (id)lstmLayerWithDescriptor:(id)descriptor inputWeights:(id)weights hiddenWeights:(id)hiddenWeights peepholeWeights:(id)peepholeWeights biasTerms:(id)terms gateActivations:(id)activations outputResultActivation:(id)activation inferenceOnly:(BOOL)self0;
- (id)partitionInferenceGraph:(id)graph startAtLayerIndex:(unint64_t)index aneDevice:(id)device secondaryDevice:(id)secondaryDevice;
- (id)partitionInferenceGraph:(id)graph startAtLayerIndex:(unint64_t)index aneDevice:(id)device secondaryDevice:(id)secondaryDevice configurationJSON:(id)n;
- (id)readTensor:(id)tensor;
- (id)readTensor:(id)tensor fromDeviceIndex:(unint64_t)index;
- (id)readTensor:(id)tensor fromDeviceIndex:(unint64_t)index batchSize:(unint64_t)size;
- (unint64_t)deviceMemorySizeForTensor:(id)tensor interleave:(unint64_t *)interleave;
- (void)accumulateParams:(void *)params gradients:(void *)gradients accumulators:(void *)accumulators numOfParameters:(unint64_t)parameters inArrayOfParams:(id)ofParams;
- (void)allocateDeviceDataForGlobalNormClippingWithOptimizer:(id)optimizer updatableParameterCount:(unint64_t)count;
- (void)allocateDeviceMemoryForTensor:(id)tensor;
- (void)broadcastTensor:(id)tensor;
- (void)commitAndWaitForCompletion:(id)completion enableProfiling:(BOOL)profiling graphExecutionTime:(id)time graphResultTensor:(id)tensor;
- (void)convertUpdatesToTensorDataForLayer:(id)layer;
- (void)convertUpdatesToTensorDataForTensorParameters:(id)parameters;
- (void)deallocateDeviceMemoryForTensor:(id)tensor;
- (void)dispatchForwardAndGradientLossLayer:(id)layer sourceTensor:(id)tensor labelsTensor:(id)labelsTensor labelsTensorStride:(unint64_t)stride weightsTensor:(id)weightsTensor resultTensor:(id)resultTensor resultGradientTensor:(id)gradientTensor;
- (void)dispatchForwardConcatLayer:(id)layer sourceTensors:(id)tensors resultTensor:(id)tensor;
- (void)dispatchForwardEmbeddingLayer:(id)layer weight:(id)weight sourceTensor:(id)tensor resultTensor:(id)resultTensor;
- (void)dispatchForwardLayer:(id)layer;
- (void)dispatchForwardLossLayer:(id)layer sourceTensor:(id)tensor labelsTensor:(id)labelsTensor labelsTensorStride:(unint64_t)stride weightsTensor:(id)weightsTensor resultTensor:(id)resultTensor resultStateIsTemporary:(BOOL)temporary forTraining:(BOOL)self0;
- (void)dispatchForwardMatMulLayer:(id)layer sourceTensors:(id)tensors resultTensor:(id)tensor;
- (void)dispatchForwardSplitLayer:(id)layer sourceTensor:(id)tensor resultTensors:(id)tensors;
- (void)dispatchGradientConcatLayer:(id)layer sourceGradientTensor:(id)tensor resultGradientTensors:(id)tensors;
- (void)dispatchGradientEmbeddingLayer:(id)layer sourceGradientTensor:(id)tensor;
- (void)dispatchGradientLayer:(id)layer sourceGradientTensor:(id)tensor resultGradientTensor:(id)gradientTensor;
- (void)dispatchGradientLayer:(id)layer sourceGradientTensor:(id)tensor resultGradientTensor:(id)gradientTensor secondaryResultGradientTensor:(id)resultGradientTensor;
- (void)dispatchGradientLossLayer:(id)layer sourceGradientTensor:(id)tensor labelsTensor:(id)labelsTensor labelsTensorStride:(unint64_t)stride weightsTensor:(id)weightsTensor resultGradientTensor:(id)gradientTensor;
- (void)dispatchGradientMatMulLayer:(id)layer sourceGradientTensor:(id)tensor resultGradientTensors:(id)tensors;
- (void)dispatchGradientReshapeLayer:(id)layer sourceGradientTensor:(id)tensor resultGradientTensor:(id)gradientTensor;
- (void)dispatchGradientSelectLayer:(id)layer conditionTensor:(id)tensor sourceGradientTensor:(id)gradientTensor resultGradientTensors:(id)tensors;
- (void)dispatchGradientSliceLayer:(id)layer sourceGradientTensor:(id)tensor resultGradientTensor:(id)gradientTensor;
- (void)dispatchGradientSplitLayer:(id)layer sourceGradientTensors:(id)tensors resultGradientTensor:(id)tensor;
- (void)dispatchRNNForwardLayer:(id)layer sourceTensors:(id)tensors resultTensors:(id)resultTensors;
- (void)dispatchRNNGradientLayer:(id)layer sourceGradientTensors:(id)tensors resultGradientTensors:(id)gradientTensors;
- (void)dispatchReadTensor:(id)tensor targetBuffer:(void *)buffer batchSize:(unint64_t)size;
- (void)fuseLayersForInferenceGraph:(id)graph startAtLayerIndex:(unint64_t)index;
- (void)fuseLayersForTrainingGraph:(id)graph stopGradientTensorList:(id)list;
- (void)incrementReadCountForGradientState:(id)state increment:(int64_t)increment;
- (void)incrementReadCountForTensorDeviceMemory:(id)memory increment:(int64_t)increment;
- (void)optimizeComputationForTrainingGraph:(id)graph;
- (void)readTensor:(id)tensor fromDeviceIndex:(unint64_t)index targetBuffer:(void *)buffer batchSize:(unint64_t)size;
- (void)readTensor:(id)tensor targetBuffer:(void *)buffer;
- (void)reloadParameterDataFromHostToDeviceMemoryForTensor:(id)tensor;
- (void)resetLayer:(id)layer;
- (void)restoreRNNParamsWithDeviceOps:(id)ops optimizer:(id)optimizer inputWeightsParameter:(id)parameter hiddenWeightsParameter:(id)weightsParameter biasesParameter:(id)biasesParameter arrayOfParams:(id)params;
- (void)saveGraphPartitioning:(id)partitioning toFile:(id)file;
- (void)setDeviceMemoryForTensor:(id)tensor data:(id)data;
- (void)setOptimizerLearningRate:(id)rate learningRate:(float)learningRate;
- (void)setOptimizerTimeStep:(id)step timeStep:(unint64_t)timeStep;
- (void)sumSharedGradientsForConvolutionLayerTensorParameter:(id)parameter layerIndexForSummedGradients:(unint64_t)gradients;
- (void)synchronizeOptimizerUpdatesForTensor:(id)tensor;
- (void)synchronizeUpdatesForLayer:(id)layer;
- (void)updateAllParametersWithOptimizer:(id)optimizer arrayOfParameters:(id)parameters;
- (void)updateBatchNormalizationLayer:(id)layer optimizer:(id)optimizer betaParameter:(id)parameter gammaParameter:(id)gammaParameter meanTensor:(id)tensor varianceTensor:(id)varianceTensor arrayOfParams:(id)params;
- (void)updateConvolutionLayer:(id)layer optimizer:(id)optimizer weightsParameter:(id)parameter biasesParameter:(id)biasesParameter arrayOfParams:(id)params;
- (void)updateEmbeddingLayer:(id)layer weightsParameter:(id)parameter optimizer:(id)optimizer arrayOfParams:(id)params;
- (void)updateFullyConnectedLayer:(id)layer optimizer:(id)optimizer weightsParameter:(id)parameter biasesParameter:(id)biasesParameter arrayOfParams:(id)params;
- (void)updateGroupNormalizationLayer:(id)layer optimizer:(id)optimizer betaParameter:(id)parameter gammaParameter:(id)gammaParameter arrayOfParams:(id)params;
- (void)updateInstanceNormalizationLayer:(id)layer optimizer:(id)optimizer betaParameter:(id)parameter gammaParameter:(id)gammaParameter arrayOfParams:(id)params;
- (void)updateLayerNormalizationLayer:(id)layer optimizer:(id)optimizer betaParameter:(id)parameter gammaParameter:(id)gammaParameter arrayOfParams:(id)params;
- (void)updateMultiheadAttentionLayer:(id)layer optimizer:(id)optimizer weightsParameter:(id)parameter biasesParameter:(id)biasesParameter arrayOfParams:(id)params;
- (void)updateRNNLayer:(id)layer optimizer:(id)optimizer inputWeightsParameter:(id)parameter hiddenWeightsParameter:(id)weightsParameter biasesParameter:(id)biasesParameter arrayOfParams:(id)params;
- (void)updateTensorParameter:(id)parameter optimizer:(id)optimizer gradient:(id)gradient arrayOfParams:(id)params;
- (void)writeToAllDevices:(id)devices allocateData:(BOOL)data batchSize:(unint64_t)size;
- (void)writeToDevice:(id)device toDeviceIndex:(unint64_t)index batchSize:(unint64_t)size;
@end

@implementation MLCDeviceANE

- (id)convolutionTransposeLayerWithDescriptor:(id)descriptor weights:(id)weights biasTerms:(id)terms
{
  v6 = [MLCLog framework:descriptor];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCLayerOperations) convolutionTransposeLayerWithDescriptor:a2 weights:? biasTerms:?];
  }

  return MEMORY[0x277CBEBF8];
}

- (id)batchNormalizationLayerWithChannelCount:(unint64_t)count mean:(id)mean variance:(id)variance beta:(id)beta gamma:(id)gamma varianceEpsilon:(float)epsilon momentum:(float)momentum
{
  v24[1] = *MEMORY[0x277D85DE8];
  v14 = MEMORY[0x277CCABB0];
  gammaCopy = gamma;
  betaCopy = beta;
  varianceCopy = variance;
  meanCopy = mean;
  v19 = [v14 numberWithUnsignedInteger:count];
  v24[0] = v19;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
  v21 = ANE_CreateNormalizationLayer(0, 0, v20, epsilon, 1, meanCopy, varianceCopy, betaCopy, gammaCopy);

  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

- (id)instanceNormalizationLayerWithChannelCount:(unint64_t)count mean:(id)mean variance:(id)variance beta:(id)beta gamma:(id)gamma varianceEpsilon:(float)epsilon momentum:(float)momentum
{
  v24[1] = *MEMORY[0x277D85DE8];
  v14 = MEMORY[0x277CCABB0];
  gammaCopy = gamma;
  betaCopy = beta;
  varianceCopy = variance;
  meanCopy = mean;
  v19 = [v14 numberWithUnsignedInteger:count];
  v24[0] = v19;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
  v21 = ANE_CreateNormalizationLayer(1, 0, v20, epsilon, 1, meanCopy, varianceCopy, betaCopy, gammaCopy);

  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

- (id)groupNormalizationLayerWithFeatureChannelCount:(unint64_t)count groupCount:(unint64_t)groupCount beta:(id)beta gamma:(id)gamma varianceEpsilon:(float)epsilon
{
  v19[1] = *MEMORY[0x277D85DE8];
  v11 = MEMORY[0x277CCABB0];
  gammaCopy = gamma;
  betaCopy = beta;
  v14 = [v11 numberWithUnsignedInteger:count];
  v19[0] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
  v16 = ANE_CreateNormalizationLayer(3, 0, v15, epsilon, groupCount, 0, 0, betaCopy, gammaCopy);

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)lossLayerWithDescriptor:(id)descriptor
{
  v4 = +[MLCLog framework];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCLayerOperations) lossLayerWithDescriptor:a2];
  }

  return MEMORY[0x277CBEBF8];
}

- (id)lossYOLOLayerWithDescriptor:(id)descriptor
{
  v4 = +[MLCLog framework];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCLayerOperations) lossLayerWithDescriptor:a2];
  }

  return MEMORY[0x277CBEBF8];
}

- (id)dropoutLayerWithRate:(float)rate seed:(unint64_t)seed
{
  v5 = +[MLCLog framework];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCLayerOperations) lossLayerWithDescriptor:a2];
  }

  return MEMORY[0x277CBEBF8];
}

- (id)lstmLayerWithDescriptor:(id)descriptor inputWeights:(id)weights hiddenWeights:(id)hiddenWeights peepholeWeights:(id)peepholeWeights biasTerms:(id)terms gateActivations:(id)activations outputResultActivation:(id)activation inferenceOnly:(BOOL)self0
{
  v11 = [MLCLog framework:descriptor];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCLayerOperations) lossLayerWithDescriptor:a2];
  }

  return MEMORY[0x277CBEBF8];
}

- (id)gramMatrixLayerWithScaleFactor:(float)factor
{
  v4 = +[MLCLog framework];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCLayerOperations) convolutionTransposeLayerWithDescriptor:a2 weights:? biasTerms:?];
  }

  return MEMORY[0x277CBEBF8];
}

- (BOOL)setConvolutionLayerOptimizerDataForDeviceOps:(id)ops weights:(id)weights bias:(id)bias
{
  v6 = [MLCLog framework:ops];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCLayerOperations) lossLayerWithDescriptor:a2];
  }

  return 0;
}

- (BOOL)setMHALayerOptimizerDataForDeviceOps:(id)ops optimizerDataForWeights:(id)weights optimizerDataForBias:(id)bias
{
  v6 = [MLCLog framework:ops];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCLayerOperations) lossLayerWithDescriptor:a2];
  }

  return 0;
}

- (BOOL)setNormalizationLayerOptimizerDataForDeviceOps:(id)ops beta:(id)beta gamma:(id)gamma
{
  v6 = [MLCLog framework:ops];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCLayerOperations) lossLayerWithDescriptor:a2];
  }

  return 0;
}

- (BOOL)setLSTMLayerOptimizerDataForDeviceOps:(id)ops inputWeights:(id)weights hiddenWeights:(id)hiddenWeights biasTerms:(id)terms
{
  v7 = [MLCLog framework:ops];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCLayerOperations) lossLayerWithDescriptor:a2];
  }

  return 0;
}

- (void)allocateDeviceDataForGlobalNormClippingWithOptimizer:(id)optimizer updatableParameterCount:(unint64_t)count
{
  v5 = [MLCLog framework:optimizer];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCLayerOperations) lossLayerWithDescriptor:a2];
  }
}

- (void)resetLayer:(id)layer
{
  v15 = *MEMORY[0x277D85DE8];
  layerCopy = layer;
  [layerCopy setDevice:0];
  [layerCopy setDeviceOps:MEMORY[0x277CBEBF8]];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  resultTensors = [layerCopy resultTensors];
  v5 = [resultTensors countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(resultTensors);
        }

        [*(*(&v10 + 1) + 8 * v8++) setDevice:0];
      }

      while (v6 != v8);
      v6 = [resultTensors countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (id)partitionInferenceGraph:(id)graph startAtLayerIndex:(unint64_t)index aneDevice:(id)device secondaryDevice:(id)secondaryDevice configurationJSON:(id)n
{
  indexCopy = index;
  v80 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  secondaryDeviceCopy = secondaryDevice;
  nCopy = n;
  graphLayerList = [graph graphLayerList];
  v13 = [MEMORY[0x277CBEC10] mutableCopy];
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v14 = graphLayerList;
  v15 = [v14 countByEnumeratingWithState:&v73 objects:v79 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v74;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v74 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v73 + 1) + 8 * i);
        v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v19, "layerID", indexCopy)}];
        [v13 setObject:v19 forKeyedSubscript:v20];
      }

      v16 = [v14 countByEnumeratingWithState:&v73 objects:v79 count:16];
    }

    while (v16);
  }

  v57 = secondaryDeviceCopy;
  v59 = v14;

  v21 = MEMORY[0x277CBEBF8];
  v63 = [MEMORY[0x277CBEBF8] mutableCopy];
  v64 = [v21 mutableCopy];
  v22 = [MEMORY[0x277CBEB58] set];
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v56 = nCopy;
  obj = [nCopy objectForKeyedSubscript:@"ane_subgraphs"];
  v23 = [obj countByEnumeratingWithState:&v69 objects:v78 count:16];
  if (v23)
  {
    v24 = v23;
    v61 = *v70;
    do
    {
      for (j = 0; j != v24; ++j)
      {
        if (*v70 != v61)
        {
          objc_enumerationMutation(obj);
        }

        v26 = *(*(&v69 + 1) + 8 * j);
        v27 = [MEMORY[0x277CBEB58] set];
        v65 = 0u;
        v66 = 0u;
        v67 = 0u;
        v68 = 0u;
        v28 = v26;
        v29 = [v28 countByEnumeratingWithState:&v65 objects:v77 count:16];
        if (v29)
        {
          v30 = v29;
          v31 = *v66;
          do
          {
            for (k = 0; k != v30; ++k)
            {
              if (*v66 != v31)
              {
                objc_enumerationMutation(v28);
              }

              v33 = [v13 objectForKeyedSubscript:*(*(&v65 + 1) + 8 * k)];
              [v27 addObject:v33];
              [v22 addObject:v33];
            }

            v30 = [v28 countByEnumeratingWithState:&v65 objects:v77 count:16];
          }

          while (v30);
        }

        [v64 addObject:v27];
        v34 = [MEMORY[0x277CBEBF8] mutableCopy];
        v35 = [MLCDeviceGraph deviceGraphWithLayers:v34 device:deviceCopy];

        v36 = ANE_ComputeLiveOutputs(v27);
        v37 = [v36 mutableCopy];
        [v35 setLiveOutputs:v37];

        [v63 addObject:v35];
      }

      v24 = [obj countByEnumeratingWithState:&v69 objects:v78 count:16];
    }

    while (v24);
  }

  v38 = [MEMORY[0x277CBEBF8] mutableCopy];
  v39 = [MLCDeviceGraph deviceGraphWithLayers:v38 device:v57];

  v40 = [v59 count];
  v41 = indexCopy;
  if (v40 > indexCopy)
  {
    v42 = v40;
    do
    {
      v43 = v41;
      v44 = [v59 objectAtIndexedSubscript:indexCopy];
      if (([v44 skipLayer] & 1) == 0)
      {
        if ([v22 containsObject:v44])
        {
          v45 = [v64 count];
          if (v45)
          {
            v46 = v45;
            for (m = 0; m != v46; ++m)
            {
              v48 = [v64 objectAtIndexedSubscript:m];
              v49 = [v48 containsObject:v44];

              if (v49)
              {
                v50 = [v63 objectAtIndexedSubscript:m];
                graphLayerList2 = [v50 graphLayerList];
                [graphLayerList2 addObject:v44];
              }
            }
          }
        }

        else
        {
          [(MLCDeviceANE *)self resetLayer:v44];
          graphLayerList3 = [v39 graphLayerList];
          [graphLayerList3 addObject:v44];
        }
      }

      v41 = v43 + 1;
    }

    while (v43 + 1 != v42);
  }

  [v63 addObject:{v39, indexCopy}];

  v53 = *MEMORY[0x277D85DE8];

  return v63;
}

- (void)saveGraphPartitioning:(id)partitioning toFile:(id)file
{
  v40 = *MEMORY[0x277D85DE8];
  partitioningCopy = partitioning;
  fileCopy = file;
  v6 = [MEMORY[0x277CBEC10] mutableCopy];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = partitioningCopy;
  v29 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v29)
  {
    v28 = *v35;
    do
    {
      for (i = 0; i != v29; ++i)
      {
        if (*v35 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v34 + 1) + 8 * i);
        graphLayerList = [v8 graphLayerList];
        lastObject = [graphLayerList lastObject];
        device = [lastObject device];
        type = [device type];

        if (type)
        {
          v13 = @"ane_subgraphs";
        }

        else
        {
          v13 = @"cpu_subgraphs";
        }

        v14 = [MEMORY[0x277CBEBF8] mutableCopy];
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        graphLayerList2 = [v8 graphLayerList];
        v16 = [graphLayerList2 countByEnumeratingWithState:&v30 objects:v38 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v31;
          do
          {
            for (j = 0; j != v17; ++j)
            {
              if (*v31 != v18)
              {
                objc_enumerationMutation(graphLayerList2);
              }

              v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(*(&v30 + 1) + 8 * j), "layerID")}];
              [v14 addObject:v20];
            }

            v17 = [graphLayerList2 countByEnumeratingWithState:&v30 objects:v38 count:16];
          }

          while (v17);
        }

        v21 = [v6 objectForKeyedSubscript:v13];

        if (!v21)
        {
          v22 = [MEMORY[0x277CBEBF8] mutableCopy];
          [v6 setObject:v22 forKeyedSubscript:v13];
        }

        v23 = [v6 objectForKeyedSubscript:v13];
        [v23 addObject:v14];
      }

      v29 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v29);
  }

  v24 = [MEMORY[0x277CBEB78] outputStreamToFileAtPath:fileCopy append:0];
  [v24 open];
  [MEMORY[0x277CCAAA0] writeJSONObject:v6 toStream:v24 options:1 error:0];
  [v24 close];

  v25 = *MEMORY[0x277D85DE8];
}

- (id)partitionInferenceGraph:(id)graph startAtLayerIndex:(unint64_t)index aneDevice:(id)device secondaryDevice:(id)secondaryDevice
{
  v187 = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  deviceCopy = device;
  secondaryDeviceCopy = secondaryDevice;
  graphLayerList = [graphCopy graphLayerList];
  v14 = graphLayerList;
  if (!graphLayerList || ![graphLayerList count])
  {
    v39 = +[MLCLog framework];
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      [MLCDeviceANE(MLCLayerOperations) partitionInferenceGraph:a2 startAtLayerIndex:? aneDevice:? secondaryDevice:?];
    }

    goto LABEL_27;
  }

  if (!deviceCopy || !secondaryDeviceCopy)
  {
    v39 = +[MLCLog framework];
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      [MLCDeviceANE(MLCLayerOperations) partitionInferenceGraph:a2 startAtLayerIndex:? aneDevice:? secondaryDevice:?];
    }

LABEL_27:
    v40 = MEMORY[0x277CBEBF8];
    goto LABEL_28;
  }

  aSelector = a2;
  v158 = secondaryDeviceCopy;
  if (([graphCopy compilerOptions] & 3) == 0)
  {
    [MLCComputeEngineCommon applyPatternMatcherForGraph:v14 stopGradientTensorList:0 startAtLayerIndex:index forInference:1];
  }

  v15 = MEMORY[0x277CBEBF8];
  v159 = [MEMORY[0x277CBEBF8] mutableCopy];
  v161 = [v15 mutableCopy];
  v164 = [MEMORY[0x277CBEC10] mutableCopy];
  v160 = objc_opt_new();
  v163 = v14;
  v16 = [v14 count];
  v162 = deviceCopy;
  if (v16 > index)
  {
    v17 = v16;
    do
    {
      v18 = [v14 objectAtIndexedSubscript:--v17];
      if (([v18 skipLayer] & 1) == 0)
      {
        v19 = [MEMORY[0x277CCABB0] numberWithInteger:v17];
        v20 = [v18 key];
        [v164 setObject:v19 forKeyedSubscript:v20];

        [v18 setCompileForInferenceOnly:1];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        sourceTensors = [v18 sourceTensors];
        resultTensors = [v18 resultTensors];
        v24 = resultTensors;
        if (isKindOfClass)
        {
          v25 = [v18 compileForDevice:deviceCopy sourceTensors:sourceTensors resultTensors:resultTensors];

          if (v25)
          {
            goto LABEL_17;
          }
        }

        else
        {
          v27 = [resultTensors objectAtIndexedSubscript:0];
          v28 = [v18 compileForDevice:deviceCopy sourceTensors:sourceTensors resultTensor:v27];

          if (v28)
          {
LABEL_17:
            resultTensors2 = [v18 resultTensors];
            v30 = [resultTensors2 count];

            deviceCopy = v162;
            if (v30)
            {
              v31 = 0;
              do
              {
                resultTensors3 = [v18 resultTensors];
                v33 = [resultTensors3 objectAtIndexedSubscript:v31];
                [v33 setDevice:v162];

                ++v31;
                resultTensors4 = [v18 resultTensors];
                v35 = [resultTensors4 count];
              }

              while (v31 < v35);
            }

            deviceOps = [v18 deviceOps];
            v37 = [deviceOps objectAtIndexedSubscript:0];

            [v37 setPlistBuilder:v160];
            [v159 addObject:v18];

            goto LABEL_21;
          }
        }

        v26 = +[MLCLog framework];
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
        {
          v38 = NSStringFromSelector(aSelector);
          *buf = 138412546;
          v184 = v38;
          v185 = 2112;
          v186 = v18;
          _os_log_debug_impl(&dword_238C1D000, v26, OS_LOG_TYPE_DEBUG, "%@: ANE unsupported layer = %@", buf, 0x16u);
        }

        [(MLCDeviceANE *)self resetLayer:v18];
        deviceCopy = v162;
        if ((ANE_IsSupportedLayer(v18) & 1) == 0)
        {
          [v161 addObject:v18];
        }
      }

LABEL_21:
    }

    while (v17 > index);
  }

  v157 = graphCopy;
  if (([graphCopy compilerOptions] & 3) != 0)
  {
    index = v160;
    v177 = 0u;
    v178 = 0u;
    v179 = 0u;
    v180 = 0u;
    v39 = v159;
    obj = [v159 reverseObjectEnumerator];
    v43 = [obj countByEnumeratingWithState:&v177 objects:v182 count:16];
    if (v43)
    {
      v44 = v43;
      v45 = 0;
      v166 = 0;
      v46 = *v178;
      do
      {
        for (i = 0; i != v44; ++i)
        {
          if (*v178 != v46)
          {
            objc_enumerationMutation(obj);
          }

          v48 = *(*(&v177 + 1) + 8 * i);
          sourceTensors2 = [v48 sourceTensors];
          v50 = [sourceTensors2 count];
          resultTensors5 = [v48 resultTensors];
          v52 = [resultTensors5 count] + v50;

          if (v52 <= 0xFF)
          {
            deviceOps2 = [v48 deviceOps];
            v54 = [deviceOps2 objectAtIndexedSubscript:0];

            if (v52 + v45 <= 0xFF)
            {
              [v54 setPlistBuilder:index];
              v45 += v52;
            }

            else if (++v166 >= 0x10)
            {
              [(MLCDeviceANE *)self resetLayer:v48];
            }

            else
            {
              v55 = objc_opt_new();

              [v54 setPlistBuilder:v55];
              v45 = v52;
              index = v55;
            }
          }

          else
          {
            [(MLCDeviceANE *)self resetLayer:v48];
          }
        }

        v44 = [obj countByEnumeratingWithState:&v177 objects:v182 count:16];
      }

      while (v44);
      graphCopy = v157;
      secondaryDeviceCopy = v158;
      deviceCopy = v162;
      v14 = v163;
      v39 = v159;
      v56 = v161;
      v40 = MEMORY[0x277CBEBF8];
    }

    else
    {
      v40 = MEMORY[0x277CBEBF8];
      secondaryDeviceCopy = v158;
      v56 = v161;
    }

    goto LABEL_140;
  }

  v56 = v161;
  if (!+[MLCPlatformInfo isAneGraphPartitioningConfigSet])
  {
    goto LABEL_60;
  }

  v57 = MEMORY[0x277CBEA90];
  v58 = +[MLCPlatformInfo aneGraphPartitioningConfigEnvVariable];
  v59 = [v57 dataWithContentsOfFile:v58];

  v39 = v159;
  if (!v59)
  {
    v65 = 0;
    v61 = +[MLCLog framework];
    if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
    {
      v66 = NSStringFromSelector(aSelector);
      *buf = 138412290;
      v184 = v66;
      _os_log_impl(&dword_238C1D000, v61, OS_LOG_TYPE_INFO, "%@: cannot find config file to partition the graph", buf, 0xCu);
    }

    goto LABEL_59;
  }

  v176 = 0;
  index = v59;
  v60 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v59 options:0 error:&v176];
  v61 = v176;
  if (v61 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v62 = v60;
    v63 = +[MLCLog framework];
    if (os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
    {
      v64 = NSStringFromSelector(aSelector);
      *buf = 138412290;
      v184 = v64;
      _os_log_impl(&dword_238C1D000, v63, OS_LOG_TYPE_INFO, "%@: cannot parse JSON", buf, 0xCu);
    }

    v65 = index;
LABEL_59:

LABEL_60:
    index = [_MLCANEDomTree computeDominationForGraph:v14, index];
    v67 = [MEMORY[0x277CBEBF8] mutableCopy];
    v68 = [MEMORY[0x277CBEB58] set];
    v172 = 0u;
    v173 = 0u;
    v174 = 0u;
    v175 = 0u;
    reverseObjectEnumerator = [v14 reverseObjectEnumerator];
    v70 = [reverseObjectEnumerator countByEnumeratingWithState:&v172 objects:v181 count:16];
    obj = v67;
    v165 = v68;
    if (!v70)
    {
      goto LABEL_73;
    }

    v71 = v70;
    v72 = *v173;
    v167 = reverseObjectEnumerator;
    while (1)
    {
      for (j = 0; j != v71; ++j)
      {
        if (*v173 != v72)
        {
          objc_enumerationMutation(reverseObjectEnumerator);
        }

        v74 = *(*(&v172 + 1) + 8 * j);
        if (([v74 skipLayer] & 1) == 0)
        {
          if ([v56 containsObject:v74])
          {
            [v56 removeObject:v74];
          }

          else if (([v68 containsObject:v74] & 1) == 0)
          {
            v75 = [MEMORY[0x277CBEB58] set];
            v76 = [MEMORY[0x277CBEB98] setWithArray:v56];
            v77 = [v74 key];
            v78 = [v164 objectForKeyedSubscript:v77];
            buildANESubgraph(v74, v75, v76, index, v68, v164, [v78 unsignedIntegerValue]);

            if (![v75 count])
            {
              v153 = +[MLCLog framework];
              deviceCopy = v162;
              if (os_log_type_enabled(v153, OS_LOG_TYPE_ERROR))
              {
                [MLCDeviceANE(MLCLayerOperations) partitionInferenceGraph:startAtLayerIndex:aneDevice:secondaryDevice:];
              }

              v40 = MEMORY[0x277CBEBF8];
              graphCopy = v157;
              secondaryDeviceCopy = v158;
              v14 = v163;
              v39 = v159;
              v56 = v161;
LABEL_137:
              v154 = v165;

              v152 = v167;
              goto LABEL_139;
            }

            v67 = obj;
            [obj addObject:v75];
            [v68 unionSet:v75];

            v56 = v161;
            reverseObjectEnumerator = v167;
          }
        }
      }

      v71 = [reverseObjectEnumerator countByEnumeratingWithState:&v172 objects:v181 count:16];
      if (!v71)
      {
LABEL_73:

        [v68 removeAllObjects];
        v79 = [v67 count];
        v80 = index;
        if (v79)
        {
          v81 = v79;
          v82 = 0;
          do
          {
            v168 = v82 + 1;
            if (v82 + 1 < v81)
            {
              v83 = v82 + 1;
              do
              {
                v84 = [v67 objectAtIndexedSubscript:v82];
                v85 = [v67 objectAtIndexedSubscript:v83];
                v86 = v84;
                v87 = v85;
                v88 = v80;
                v89 = v164;
                v90 = [v88 doesSubgraph:v86 dominatesSubgraph:v87];
                v91 = [v88 doesSubgraph:v87 dominatesSubgraph:v86];
                if (v90 & 1) != 0 || (v91)
                {
                  if ((v90 & v91) == 1)
                  {
                    v94 = +[MLCLog framework];
                    if (os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
                    {
                      [MLCDeviceANE(MLCLayerOperations) partitionInferenceGraph:buf startAtLayerIndex:&v184 aneDevice:v94 secondaryDevice:?];
                    }

                    v67 = obj;
                  }

                  if (v90)
                  {
                    v95 = v86;
                    v96 = v87;
                  }

                  else
                  {
                    v95 = v87;
                    v96 = v86;
                  }

                  v93 = canMergeANESubgraphsHelper(v95, v96, v88, v89);
                }

                else
                {
                  v92 = [v88 getPostDominanceFrontierForSubgraph:v86];
                  if ([v92 count])
                  {
                    v93 = 0;
                  }

                  else
                  {
                    v97 = [v88 getPostDominanceFrontierForSubgraph:v87];
                    v93 = [v97 count] == 0;

                    v80 = index;
                  }

                  v67 = obj;
                }

                if (v93)
                {
                  v98 = [v67 objectAtIndexedSubscript:v82];
                  [v67 objectAtIndexedSubscript:v83];

                  v99 = [v67 objectAtIndexedSubscript:v82];
                  v100 = [v67 objectAtIndexedSubscript:v83];
                  [v99 unionSet:v100];

                  v86 = [v67 objectAtIndexedSubscript:v83];
                  [v86 removeAllObjects];
                }

                else
                {
                }

                ++v83;
              }

              while (v81 != v83);
            }

            ++v82;
          }

          while (v168 != v81);
        }

        v101 = v157;
        v102 = v67;
        v103 = [v102 count];
        if (v103)
        {
          v104 = v103;
          v105 = 0;
          while (1)
          {
            v106 = [v102 objectAtIndexedSubscript:v105];
            if ([v106 count] != 1)
            {
              goto LABEL_103;
            }

            graphLayerList2 = [v101 graphLayerList];
            if ([graphLayerList2 count] <= 1)
            {
              break;
            }

            v108 = [v102 objectAtIndexedSubscript:v105];
            anyObject = [v108 anyObject];
            isDebuggingEnabled = [anyObject isDebuggingEnabled];

            if ((isDebuggingEnabled & 1) == 0)
            {
              v106 = [v102 objectAtIndexedSubscript:v105];
              [v106 removeAllObjects];
LABEL_103:
            }

            if (v104 == ++v105)
            {
              goto LABEL_105;
            }
          }

          goto LABEL_103;
        }

LABEL_105:
        v111 = [v102 sortedArrayUsingComparator:&__block_literal_global];
        if ([v111 count])
        {
          v112 = 0;
          v113 = 0;
          do
          {
            v114 = [v111 objectAtIndexedSubscript:v112];
            v115 = ANE_ComputeLiveInputs(v114);

            v116 = [v111 objectAtIndexedSubscript:v112];
            v117 = ANE_ComputeLiveOutputs(v116);

            v118 = [v115 count] + v113;
            v119 = v118 + [v117 count];
            if (v119 > 0xFF)
            {
              v120 = [v111 objectAtIndexedSubscript:v112];
              [v120 removeAllObjects];

              v119 = v113;
            }

            ++v112;
            v113 = v119;
          }

          while (v112 < [v111 count]);
        }

        v121 = [v102 count];
        if (v121 >= 1)
        {
          v122 = v121 + 1;
          do
          {
            v123 = [v102 objectAtIndexedSubscript:v122 - 2];
            v124 = [v123 count];

            v125 = v122 - 2;
            if (v124)
            {
              v126 = [v102 objectAtIndexedSubscript:v125];
              [v165 unionSet:v126];
            }

            else
            {
              [v102 removeObjectAtIndex:v125];
            }

            --v122;
          }

          while (v122 > 1);
        }

        v127 = [MEMORY[0x277CBEBF8] mutableCopy];
        v128 = [v102 count];
        if (v128)
        {
          v129 = v128;
          for (k = 0; k != v129; ++k)
          {
            v131 = [MEMORY[0x277CBEBF8] mutableCopy];
            v132 = [MLCDeviceGraph deviceGraphWithLayers:v131 device:v162];

            v133 = [v102 objectAtIndexedSubscript:k];
            v134 = ANE_ComputeLiveOutputs(v133);
            v135 = [v134 mutableCopy];
            [v132 setLiveOutputs:v135];

            [v127 addObject:v132];
          }
        }

        v136 = [MEMORY[0x277CBEBF8] mutableCopy];
        v167 = [MLCDeviceGraph deviceGraphWithLayers:v136 device:v158];

        v14 = v163;
        v137 = [v163 count];
        v138 = v155;
        v56 = v161;
        if (v137 > v155)
        {
          v139 = v137;
          do
          {
            v140 = v14;
            v141 = v138;
            v142 = [v140 objectAtIndexedSubscript:?];
            if (([v142 skipLayer] & 1) == 0)
            {
              if ([v165 containsObject:v142])
              {
                v143 = [v102 count];
                if (v143)
                {
                  v144 = v143;
                  for (m = 0; m != v144; ++m)
                  {
                    v146 = [v102 objectAtIndexedSubscript:m];
                    v147 = [v146 containsObject:v142];

                    if (v147)
                    {
                      v148 = [v127 objectAtIndexedSubscript:m];
                      graphLayerList3 = [v148 graphLayerList];
                      [graphLayerList3 addObject:v142];
                    }
                  }
                }
              }

              else
              {
                [(MLCDeviceANE *)self resetLayer:v142];
                graphLayerList4 = [v167 graphLayerList];
                [graphLayerList4 addObject:v142];
              }
            }

            v138 = v141 + 1;
            v151 = v141 + 1 == v139;
            v14 = v163;
          }

          while (!v151);
        }

        v40 = v127;
        v152 = v167;
        [v127 addObject:v167];
        if (+[MLCPlatformInfo isAneSaveGraphPartitioningConfigSet])
        {
          v75 = +[MLCPlatformInfo aneSaveGraphPartitioningConfig];
          [(MLCDeviceANE *)self saveGraphPartitioning:v127 toFile:v75];
          graphCopy = v157;
          secondaryDeviceCopy = v158;
          deviceCopy = v162;
          v39 = v159;
          goto LABEL_137;
        }

        graphCopy = v157;
        secondaryDeviceCopy = v158;
        deviceCopy = v162;
        v39 = v159;
        v154 = v165;
LABEL_139:

        goto LABEL_140;
      }
    }
  }

  secondaryDeviceCopy = v158;
  obj = v60;
  v40 = [(MLCDeviceANE *)self partitionInferenceGraph:graphCopy startAtLayerIndex:index aneDevice:deviceCopy secondaryDevice:v158 configurationJSON:v60];
LABEL_140:

LABEL_28:
  v41 = *MEMORY[0x277D85DE8];

  return v40;
}

- (BOOL)updateTensorsForFusedLayers:(id)layers ofInferenceGraph:(id)graph
{
  v95 = *MEMORY[0x277D85DE8];
  layersCopy = layers;
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  graphCopy = graph;
  v8 = [graphCopy countByEnumeratingWithState:&v86 objects:v94 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v87;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v87 != v10)
      {
        objc_enumerationMutation(graphCopy);
      }

      v12 = *(*(&v86 + 1) + 8 * v11);
      if (ANE_IsAneCompiledLayer(v12))
      {
        break;
      }

      if (v9 == ++v11)
      {
        v9 = [graphCopy countByEnumeratingWithState:&v86 objects:v94 count:16];
        if (v9)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    deviceOps = [v12 deviceOps];
    v14 = [deviceOps objectAtIndexedSubscript:0];

    plistBuilder = [v14 plistBuilder];

    if (!plistBuilder)
    {
      goto LABEL_56;
    }

    v16 = [MEMORY[0x277CBEB98] setWithArray:graphCopy];
    v17 = ANE_ComputeLiveInputs(v16);

    allObjects = [v17 allObjects];
    if ([allObjects count])
    {
      v19 = [MEMORY[0x277CBEB98] setWithArray:graphCopy];
      v20 = ANE_ComputeLiveOutputs(v19);

      allObjects2 = [v20 allObjects];
      if (([plistBuilder buildProcedureWithRootLayer:layersCopy aneSubgraphLayerList:graphCopy liveInputs:v17 liveOutputs:v20]& 1) != 0)
      {
        v65 = allObjects2;
        v66 = allObjects;
        v62 = v17;
        v63 = plistBuilder;
        v84 = 0u;
        v85 = 0u;
        v82 = 0u;
        v83 = 0u;
        v64 = graphCopy;
        v22 = graphCopy;
        v23 = [v22 countByEnumeratingWithState:&v82 objects:v93 count:16];
        v69 = layersCopy;
        if (v23)
        {
          v24 = v23;
          v25 = *v83;
          do
          {
            for (i = 0; i != v24; ++i)
            {
              if (*v83 != v25)
              {
                objc_enumerationMutation(v22);
              }

              v27 = *(*(&v82 + 1) + 8 * i);
              if (v27 != layersCopy)
              {
                fusedLayers = [layersCopy fusedLayers];
                [fusedLayers addObject:v27];

                [v27 setSkipLayer:1];
              }

              if ([v27 isLastLayer])
              {
                [v27 setIsLastFusedLayer:1];
              }

              else
              {
                v80 = 0u;
                v81 = 0u;
                v78 = 0u;
                v79 = 0u;
                resultTensors = [v27 resultTensors];
                v30 = [resultTensors countByEnumeratingWithState:&v78 objects:v92 count:16];
                if (v30)
                {
                  v31 = v30;
                  v32 = *v79;
                  while (2)
                  {
                    for (j = 0; j != v31; ++j)
                    {
                      if (*v79 != v32)
                      {
                        objc_enumerationMutation(resultTensors);
                      }

                      if ([v20 containsObject:*(*(&v78 + 1) + 8 * j)])
                      {
                        [v27 setIsLastFusedLayer:1];
                        goto LABEL_32;
                      }
                    }

                    v31 = [resultTensors countByEnumeratingWithState:&v78 objects:v92 count:16];
                    if (v31)
                    {
                      continue;
                    }

                    break;
                  }
                }

LABEL_32:

                layersCopy = v69;
              }
            }

            v24 = [v22 countByEnumeratingWithState:&v82 objects:v93 count:16];
          }

          while (v24);
        }

        v34 = [MEMORY[0x277CBEB98] setWithArray:v22];
        v35 = [v66 mutableCopy];
        [layersCopy setSourceTensors:v35];

        v76 = 0u;
        v77 = 0u;
        v74 = 0u;
        v75 = 0u;
        obj = [layersCopy sourceTensors];
        v36 = [obj countByEnumeratingWithState:&v74 objects:v91 count:16];
        if (v36)
        {
          v37 = v36;
          v68 = *v75;
          do
          {
            for (k = 0; k != v37; ++k)
            {
              if (*v75 != v68)
              {
                objc_enumerationMutation(obj);
              }

              v39 = *(*(&v74 + 1) + 8 * k);
              indexSet = [MEMORY[0x277CCAB58] indexSet];
              childLayers = [v39 childLayers];
              v42 = [childLayers count];

              if (v42)
              {
                for (m = 0; m != v42; ++m)
                {
                  childLayers2 = [v39 childLayers];
                  v45 = [childLayers2 objectAtIndexedSubscript:m];

                  if ([v34 containsObject:v45])
                  {
                    [indexSet addIndex:m];
                  }
                }
              }

              childLayers3 = [v39 childLayers];
              [childLayers3 removeObjectsAtIndexes:indexSet];

              childLayers4 = [v39 childLayers];
              layersCopy = v69;
              [childLayers4 addObject:v69];
            }

            v37 = [obj countByEnumeratingWithState:&v74 objects:v91 count:16];
          }

          while (v37);
        }

        v48 = [v65 mutableCopy];
        [layersCopy setResultTensors:v48];

        v72 = 0u;
        v73 = 0u;
        v70 = 0u;
        v71 = 0u;
        resultTensors2 = [layersCopy resultTensors];
        v50 = [resultTensors2 countByEnumeratingWithState:&v70 objects:v90 count:16];
        if (v50)
        {
          v51 = v50;
          v52 = *v71;
          while (2)
          {
            for (n = 0; n != v51; ++n)
            {
              if (*v71 != v52)
              {
                objc_enumerationMutation(resultTensors2);
              }

              v54 = *(*(&v70 + 1) + 8 * n);
              parentLayers = [v54 parentLayers];
              v56 = [parentLayers count];

              if (!v56)
              {
                v59 = +[MLCLog framework];
                if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
                {
                  [MLCDeviceANE(MLCLayerOperations) updateTensorsForFusedLayers:ofInferenceGraph:];
                }

                v58 = 0;
                layersCopy = v69;
                goto LABEL_68;
              }

              parentLayers2 = [v54 parentLayers];
              layersCopy = v69;
              [parentLayers2 setObject:v69 atIndexedSubscript:0];
            }

            v51 = [resultTensors2 countByEnumeratingWithState:&v70 objects:v90 count:16];
            if (v51)
            {
              continue;
            }

            break;
          }
        }

        v58 = 1;
LABEL_68:
        graphCopy = v64;

        v17 = v62;
        plistBuilder = v63;
        allObjects2 = v65;
        allObjects = v66;
      }

      else
      {
        v34 = +[MLCLog framework];
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          [MLCDeviceANE(MLCLayerOperations) updateTensorsForFusedLayers:ofInferenceGraph:];
        }

        v58 = 0;
      }
    }

    else
    {
      v20 = +[MLCLog framework];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [MLCDeviceANE(MLCLayerOperations) updateTensorsForFusedLayers:ofInferenceGraph:];
      }

      v58 = 0;
    }
  }

  else
  {
LABEL_9:

LABEL_56:
    plistBuilder = +[MLCLog framework];
    if (os_log_type_enabled(plistBuilder, OS_LOG_TYPE_ERROR))
    {
      [MLCDeviceANE(MLCLayerOperations) updateTensorsForFusedLayers:a2 ofInferenceGraph:?];
    }

    v58 = 0;
  }

  v60 = *MEMORY[0x277D85DE8];
  return v58;
}

- (void)fuseLayersForTrainingGraph:(id)graph stopGradientTensorList:(id)list
{
  graphCopy = graph;
  listCopy = list;
  if (graphCopy)
  {
    if ([graphCopy count] >= 2)
    {
      v6 = [graphCopy count];
      v7 = graphCopy;
      if (v6)
      {
        v8 = 0;
        while (1)
        {
          v9 = [v7 objectAtIndexedSubscript:v8];
          if ([v9 isLastLayer])
          {
            break;
          }

          if (([v9 skipLayer] & 1) == 0)
          {
            resultTensors = [v9 resultTensors];
            v11 = [resultTensors objectAtIndexedSubscript:0];
            childLayers = [v11 childLayers];
            v13 = [childLayers count];

            if (v13 == 1)
            {
              resultTensors2 = [v9 resultTensors];
              v15 = [resultTensors2 objectAtIndexedSubscript:0];
              childLayers2 = [v15 childLayers];
              v17 = [childLayers2 objectAtIndexedSubscript:0];

              if (([v17 skipLayer] & 1) == 0)
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    resultTensors3 = [v17 resultTensors];
                    v19 = [resultTensors3 objectAtIndexedSubscript:0];

                    resultTensors4 = [v9 resultTensors];
                    [resultTensors4 setObject:v19 atIndexedSubscript:0];

                    parentLayers = [v19 parentLayers];
                    [parentLayers setObject:v9 atIndexedSubscript:0];

                    fusedLayers = [v9 fusedLayers];
                    [fusedLayers addObject:v17];

                    [v17 setSkipLayer:1];
                  }
                }
              }
            }
          }

          ++v8;
          v23 = [graphCopy count];
          v7 = graphCopy;
          if (v8 >= v23)
          {
            goto LABEL_17;
          }
        }
      }
    }
  }

LABEL_17:
}

- (void)fuseLayersForInferenceGraph:(id)graph startAtLayerIndex:(unint64_t)index
{
  v28 = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  v7 = graphCopy;
  if (graphCopy && [graphCopy count])
  {
    lastObject = [v7 lastObject];
    if ([(MLCDeviceANE *)self updateTensorsForFusedLayers:lastObject ofInferenceGraph:v7])
    {
      v9 = [v7 count];
      if (v9)
      {
        v11 = v9;
        v12 = 0;
        *&v10 = 138412546;
        v21 = v10;
        do
        {
          v13 = [v7 objectAtIndexedSubscript:{v12, v21}];
          if (([v13 skipLayer] & 1) == 0)
          {
            fusedLayers = [v13 fusedLayers];
            v15 = [fusedLayers count];

            if (v11 != 1 && !v15)
            {
              v16 = +[MLCLog framework];
              if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
              {
                v17 = NSStringFromSelector(a2);
                *buf = v21;
                v23 = v17;
                v24 = 2112;
                v25 = v13;
                _os_log_error_impl(&dword_238C1D000, v16, OS_LOG_TYPE_ERROR, "%@: failed to fuse layer = %@", buf, 0x16u);
              }
            }
          }

          ++v12;
        }

        while (v11 != v12);
      }
    }

    else
    {
      v18 = +[MLCLog framework];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v20 = NSStringFromSelector(a2);
        *buf = 138412802;
        v23 = v20;
        v24 = 2112;
        v25 = lastObject;
        v26 = 2112;
        v27 = v7;
        _os_log_error_impl(&dword_238C1D000, v18, OS_LOG_TYPE_ERROR, "%@: failed to update tensors for rootLayer = %@ and graphLayerList = %@", buf, 0x20u);
      }
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (id)fusedConvolutionAndNeuronLayerWithDescriptor:(id)descriptor convolutionDescriptor:(id)convolutionDescriptor weights:(id)weights biasTerms:(id)terms
{
  v7 = [MLCLog framework:descriptor];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCLayerOperations) lossLayerWithDescriptor:a2];
  }

  return MEMORY[0x277CBEBF8];
}

- (id)fusedFullyConnectedAndNeuronLayerWithDescriptor:(id)descriptor convolutionDescriptor:(id)convolutionDescriptor weights:(id)weights biasTerms:(id)terms
{
  v7 = [MLCLog framework:descriptor];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCLayerOperations) lossLayerWithDescriptor:a2];
  }

  return MEMORY[0x277CBEBF8];
}

- (id)fusedBatchNormalizationAndNeuronLayerWithDescriptor:(id)descriptor numOfFeatureChannels:(unint64_t)channels mean:(id)mean variance:(id)variance beta:(id)beta gamma:(id)gamma varianceEpsilon:(float)epsilon momentum:(float)self0
{
  v11 = [MLCLog framework:descriptor];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCLayerOperations) convolutionTransposeLayerWithDescriptor:a2 weights:? biasTerms:?];
  }

  return MEMORY[0x277CBEBF8];
}

- (id)fusedConvolutionBatchNormalizationAndNeuronLayerWithDescriptor:(id)descriptor mean:(id)mean variance:(id)variance beta:(id)beta gamma:(id)gamma varianceEpsilon:(float)epsilon momentum:(float)momentum neuronDescriptor:(id)self0 weights:(id)self1 biasTerms:(id)self2
{
  v13 = [MLCLog framework:descriptor];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCLayerOperations) lossLayerWithDescriptor:a2];
  }

  return MEMORY[0x277CBEBF8];
}

- (id)fusedFullyConnectedBatchNormalizationAndNeuronLayerWithDescriptor:(id)descriptor mean:(id)mean variance:(id)variance beta:(id)beta gamma:(id)gamma varianceEpsilon:(float)epsilon momentum:(float)momentum neuronDescriptor:(id)self0 weights:(id)self1 biasTerms:(id)self2
{
  v13 = [MLCLog framework:descriptor];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCLayerOperations) lossLayerWithDescriptor:a2];
  }

  return MEMORY[0x277CBEBF8];
}

- (BOOL)compileLayerDeviceOps:(id)ops sourceTensors:(id)tensors resultTensor:(id)tensor
{
  opsCopy = ops;
  tensorsCopy = tensors;
  tensorCopy = tensor;
  if ([opsCopy count])
  {
    v10 = [opsCopy objectAtIndexedSubscript:0];
    switch([v10 deviceOpType])
    {
      case 1u:
        v11 = ANE_CompileArithmeticLayer(opsCopy, tensorsCopy, tensorCopy);
        goto LABEL_18;
      case 2u:
        v13 = 0;
        goto LABEL_17;
      case 4u:
        v11 = ANE_CompileConvolutionLayer(opsCopy, tensorsCopy, tensorCopy);
        goto LABEL_18;
      case 7u:
        v11 = ANE_CompileFullyConnectedLayer(opsCopy, tensorsCopy, tensorCopy);
        goto LABEL_18;
      case 0xAu:
        v11 = ANE_CompileNeuronLayer(opsCopy, tensorsCopy, tensorCopy);
        goto LABEL_18;
      case 0xBu:
        v11 = ANE_CompilePoolingLayer(opsCopy, tensorsCopy, tensorCopy);
        goto LABEL_18;
      case 0xCu:
        v11 = ANE_CompileSoftmaxLayer(opsCopy, tensorsCopy, tensorCopy);
        goto LABEL_18;
      case 0xDu:
        v13 = 1;
        goto LABEL_17;
      case 0x10u:
        v11 = ANE_CompileUpsampleLayer(opsCopy, tensorsCopy, tensorCopy);
        goto LABEL_18;
      case 0x12u:
        v11 = ANE_CompileReshapeLayer(opsCopy, tensorsCopy, tensorCopy);
        goto LABEL_18;
      case 0x13u:
        v13 = 2;
        goto LABEL_17;
      case 0x17u:
        v13 = 3;
LABEL_17:
        v11 = ANE_CompileNormalizationLayer(v13, opsCopy, tensorsCopy, tensorCopy);
        goto LABEL_18;
      case 0x1Cu:
        v11 = ANE_CompileTransposeLayer(opsCopy, tensorsCopy, tensorCopy);
        goto LABEL_18;
      case 0x1Eu:
        v11 = ANE_CompileReductionLayer(opsCopy, tensorsCopy, tensorCopy);
        goto LABEL_18;
      case 0x1Fu:
        v11 = ANE_CompileConcatLayer(opsCopy, tensorsCopy, tensorCopy);
        goto LABEL_18;
      case 0x20u:
        v11 = ANE_CompileMatMulLayer(opsCopy, tensorsCopy, tensorCopy);
        goto LABEL_18;
      case 0x21u:
        v11 = ANE_CompileSliceLayer(opsCopy, tensorsCopy, tensorCopy);
        goto LABEL_18;
      case 0x22u:
        v11 = ANE_CompileComparisonLayer(opsCopy, tensorsCopy, tensorCopy);
        goto LABEL_18;
      case 0x23u:
        v11 = ANE_CompileSelectionLayer(opsCopy, tensorsCopy, tensorCopy);
LABEL_18:
        v14 = v11;
        if (v11 && [v11 count])
        {
          [v10 setUnits:v14];
          v12 = 1;
        }

        else
        {
          v15 = +[MLCLog framework];
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            [MLCDeviceANE(MLCLayerOperations) compileLayerDeviceOps:sourceTensors:resultTensor:];
          }

LABEL_24:
          v12 = 0;
        }

        break;
      default:
        v14 = +[MLCLog framework];
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          [MLCDeviceANE(MLCLayerOperations) compileLayerDeviceOps:sourceTensors:resultTensor:];
        }

        goto LABEL_24;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)compileOptimizerDeviceOps:(id)ops
{
  v4 = +[MLCLog framework];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCLayerOperations) lossLayerWithDescriptor:a2];
  }

  return 0;
}

+ (BOOL)hasANE
{
  if (hasANE_onceToken != -1)
  {
    +[MLCDeviceANE hasANE];
  }

  return hasANE_hasANE;
}

id __22__MLCDeviceANE_hasANE__block_invoke()
{
  if (AppleNeuralEngineLibrary_onceToken_1 != -1)
  {
    __22__MLCDeviceANE_hasANE__block_invoke_cold_1();
  }

  if (AppleNeuralEngineLibrary_frameworkLibrary_1)
  {
    result = softLinkClass_ANEDeviceInfo_0();
    if (result)
    {
      result = softLinkClass_ANERequest();
      if (result)
      {
        result = softLinkClass_ANEQoSMapper();
        if (result)
        {
          result = softLinkClass_ANEInMemoryModelDescriptor();
          if (result)
          {
            result = softLinkClass_ANEInMemoryModel();
            if (result)
            {
              if (softLinkClass_ANEIOSurfaceObject_onceToken_0 != -1)
              {
                __22__MLCDeviceANE_hasANE__block_invoke_cold_2();
              }

              result = softLinkClass_ANEIOSurfaceObject_softLinkClass_ANEIOSurfaceObject_0;
              if (result)
              {
                result = [softLinkClass_ANEDeviceInfo_0() hasANE];
              }
            }
          }
        }
      }
    }
  }

  else
  {
    result = 0;
  }

  hasANE_hasANE = result;
  return result;
}

- (MLCDeviceANE)initWithType:(int)type
{
  if ([objc_opt_class() hasANE])
  {
    v12.receiver = self;
    v12.super_class = MLCDeviceANE;
    v6 = [(MLCDeviceANE *)&v12 init];
    v7 = v6;
    if (v6)
    {
      v6->_deviceType = type;
      deviceList = v6->_deviceList;
      v6->_deviceList = &unk_284BA6068;
    }

    self = v7;
    selfCopy = self;
  }

  else
  {
    v10 = +[MLCLog framework];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [MLCDeviceANE initWithType:a2];
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = NSStringFromSelector(a2);
  deviceType = [(MLCDeviceANE *)self deviceType];
  aneSubType = [softLinkClass_ANEDeviceInfo_0() aneSubType];
  v7 = [v3 stringWithFormat:@"%@: { deviceType=%d, aneSubType=%@ }", v4, deviceType, aneSubType];

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  deviceType = [(MLCDeviceANE *)self deviceType];

  return [v4 initWithType:deviceType];
}

- (unint64_t)deviceMemorySizeForTensor:(id)tensor interleave:(unint64_t *)interleave
{
  v20 = *MEMORY[0x277D85DE8];
  tensorCopy = tensor;
  interleave = [tensorCopy interleave];
  v8 = ANE_CalculatePlaneCountForTensor(tensorCopy, interleave);
  v9 = ANE_CalculatePlaneStrideForTensor(tensorCopy, interleave);

  if (v8 && v9)
  {
    *interleave = interleave;
    result = v9 * v8;
  }

  else
  {
    v11 = +[MLCLog framework];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v13 = NSStringFromSelector(a2);
      v14 = 138412802;
      v15 = v13;
      v16 = 2048;
      v17 = v8;
      v18 = 2048;
      v19 = v9;
      _os_log_error_impl(&dword_238C1D000, v11, OS_LOG_TYPE_ERROR, "%@: invalid plane count=%lu or plane stride=%lu", &v14, 0x20u);
    }

    result = 0;
  }

  v12 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)needToAllocateDeviceMemoryForTensor:(id)tensor
{
  v25 = *MEMORY[0x277D85DE8];
  tensorCopy = tensor;
  deviceMemory = [tensorCopy deviceMemory];
  v5 = [deviceMemory count];

  if (v5)
  {
    device = [tensorCopy device];

    if (!device)
    {
      goto LABEL_5;
    }

    device2 = [tensorCopy device];
    type = [device2 type];

    if (type == 3 || ([tensorCopy device], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "type"), v9, v10))
    {
LABEL_5:
      v11 = 0;
    }

    else
    {
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      deviceMemory2 = [tensorCopy deviceMemory];
      v15 = [deviceMemory2 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v21;
        while (2)
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v21 != v17)
            {
              objc_enumerationMutation(deviceMemory2);
            }

            v19 = *(*(&v20 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v11 = 0;
              goto LABEL_18;
            }
          }

          v16 = [deviceMemory2 countByEnumeratingWithState:&v20 objects:v24 count:16];
          if (v16)
          {
            continue;
          }

          break;
        }
      }

      v11 = 1;
LABEL_18:
    }
  }

  else
  {
    v11 = 1;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

- (void)allocateDeviceMemoryForTensor:(id)tensor
{
  v26[5] = *MEMORY[0x277D85DE8];
  tensorCopy = tensor;
  v6 = objc_autoreleasePoolPush();
  v24 = 1;
  v7 = [(MLCDeviceANE *)self deviceMemorySizeForTensor:tensorCopy interleave:&v24];
  if (v7)
  {
    v8 = v7;
    descriptor = [tensorCopy descriptor];
    dataType = [descriptor dataType];

    v11 = ANE_CalculatePlaneCountForTensor(tensorCopy, v24);
    v12 = ANE_CalculatePlaneStrideForTensor(tensorCopy, v24);
    v13 = ANE_CalculateRowStrideForTensor(tensorCopy, v24);
    v14 = ANE_GetANECIRDataTypeWithMLCDataType(dataType);
    v15 = v14;
    if (v14)
    {
      v26[0] = v14;
      v25[0] = @"Type";
      v25[1] = @"Interleave";
      v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v24];
      v26[1] = v16;
      v25[2] = @"PlaneCount";
      v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v11];
      v26[2] = v17;
      v25[3] = @"RowStride";
      v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v13];
      v26[3] = v18;
      v25[4] = @"PlaneStride";
      v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v12];
      v26[4] = v19;
      v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:5];

      v21 = [_MLCANEIOSurface objectWithDataLength:v8 liveIOStatus:v20];
      if (v21)
      {
        deviceMemory = [tensorCopy deviceMemory];
        [deviceMemory addObject:v21];
      }

      else
      {
        deviceMemory = +[MLCLog framework];
        if (os_log_type_enabled(deviceMemory, OS_LOG_TYPE_ERROR))
        {
          [MLCDeviceANE allocateDeviceMemoryForTensor:a2];
        }
      }
    }

    else
    {
      v20 = +[MLCLog framework];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [MLCDeviceANE allocateDeviceMemoryForTensor:a2];
      }
    }
  }

  else
  {
    v15 = +[MLCLog framework];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [MLCDeviceANE allocateDeviceMemoryForTensor:a2];
    }
  }

  objc_autoreleasePoolPop(v6);
  v23 = *MEMORY[0x277D85DE8];
}

- (void)deallocateDeviceMemoryForTensor:(id)tensor
{
  deviceMemory = [tensor deviceMemory];
  [deviceMemory removeAllObjects];
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
  if (!VerifyTensorBeforeRead(memoryCopy))
  {
    v23 = 0;
    goto LABEL_15;
  }

  deviceMemory = [memoryCopy deviceMemory];
  v5 = [deviceMemory objectAtIndexedSubscript:{objc_msgSend(memoryCopy, "deviceIndex")}];

  liveIOStatus = [v5 liveIOStatus];
  v7 = [liveIOStatus objectForKeyedSubscript:@"Interleave"];
  unsignedIntegerValue = [v7 unsignedIntegerValue];

  v9 = [liveIOStatus objectForKeyedSubscript:@"Type"];
  v10 = ANE_ANECDataTypeToMLCDataType(v9);
  if (unsignedIntegerValue == 1)
  {
    v11 = v10;
    descriptor = [memoryCopy descriptor];
    dataType = [descriptor dataType];

    if (v11 == dataType)
    {
      v26 = 0;
      ANE_GetTensor4DShapeWithOnePrepended(memoryCopy, &v26);
      v14 = v26;
      ioSurfaceObject = [v5 ioSurfaceObject];
      ioSurface = [ioSurfaceObject ioSurface];

      if (ioSurface)
      {
        v17 = [liveIOStatus objectForKeyedSubscript:@"RowStride"];
        unsignedIntegerValue2 = [v17 unsignedIntegerValue];

        v19 = unsignedIntegerValue2 / ANE_GetANEElementByteCount(v11);
        v20 = [v14 objectAtIndexedSubscript:3];
        unsignedIntegerValue3 = [v20 unsignedIntegerValue];

        if (v19 == unsignedIntegerValue3)
        {
          BaseAddress = IOSurfaceGetBaseAddress(ioSurface);
          v23 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:BaseAddress length:IOSurfaceGetAllocSize(ioSurface) freeWhenDone:0];
LABEL_13:

          goto LABEL_14;
        }
      }

      else
      {
        v24 = +[MLCLog framework];
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          [MLCDeviceANE getHostPointerIfUnifiedDeviceMemory:];
        }
      }

      v23 = 0;
      goto LABEL_13;
    }
  }

  v23 = 0;
LABEL_14:

LABEL_15:

  return v23;
}

- (id)readTensor:(id)tensor
{
  tensorCopy = tensor;
  v5 = -[MLCDeviceANE readTensor:fromDeviceIndex:](self, "readTensor:fromDeviceIndex:", tensorCopy, [tensorCopy deviceIndex]);

  return v5;
}

- (id)readTensor:(id)tensor fromDeviceIndex:(unint64_t)index
{
  tensorCopy = tensor;
  v7 = -[MLCDeviceANE readTensor:fromDeviceIndex:batchSize:](self, "readTensor:fromDeviceIndex:batchSize:", tensorCopy, index, [tensorCopy calculateBatchSizeToUse]);

  return v7;
}

- (id)readTensor:(id)tensor fromDeviceIndex:(unint64_t)index batchSize:(unint64_t)size
{
  tensorCopy = tensor;
  v9 = ANE_CalculateImageSizeForTensor(tensorCopy) * size;
  v10 = malloc_type_malloc(v9, 0xF75E1E2AuLL);
  [(MLCDeviceANE *)self readTensor:tensorCopy fromDeviceIndex:index targetBuffer:v10 batchSize:size];

  v11 = MEMORY[0x277CBEA90];

  return [v11 dataWithBytesNoCopy:v10 length:v9 freeWhenDone:1];
}

- (void)readTensor:(id)tensor targetBuffer:(void *)buffer
{
  tensorCopy = tensor;
  v6 = [(MLCDeviceANE *)self getHostPointerIfUnifiedDeviceMemory:?];
  if ([v6 bytes] != buffer)
  {
    -[MLCDeviceANE readTensor:fromDeviceIndex:targetBuffer:batchSize:](self, "readTensor:fromDeviceIndex:targetBuffer:batchSize:", tensorCopy, [tensorCopy deviceIndex], buffer, objc_msgSend(tensorCopy, "calculateBatchSizeToUse"));
  }
}

- (void)readTensor:(id)tensor fromDeviceIndex:(unint64_t)index targetBuffer:(void *)buffer batchSize:(unint64_t)size
{
  v26 = *MEMORY[0x277D85DE8];
  tensorCopy = tensor;
  if (VerifyTensorBeforeRead(tensorCopy))
  {
    if ([tensorCopy deviceIndex] != index)
    {
      v12 = +[MLCLog framework];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v18 = NSStringFromSelector(a2);
        v20 = 138412802;
        v21 = v18;
        v22 = 2048;
        sizeCopy = [tensorCopy deviceIndex];
        v24 = 2048;
        indexCopy = index;
        _os_log_error_impl(&dword_238C1D000, v12, OS_LOG_TYPE_ERROR, "%@: -readTensor:fromDeviceIndex:targetBuffer:batchSize must be called with deviceIndex = %lu, but given deviceIndex = %lu", &v20, 0x20u);
      }

      goto LABEL_13;
    }

    deviceMemory = [tensorCopy deviceMemory];
    v12 = [deviceMemory objectAtIndexedSubscript:index];

    liveIOStatus = [v12 liveIOStatus];
    calculateBatchSizeToUse = [tensorCopy calculateBatchSizeToUse];
    if (calculateBatchSizeToUse >= size)
    {
      if (ANE_ReadOutputTensor(tensorCopy, liveIOStatus, index, buffer, size))
      {
LABEL_12:

LABEL_13:
        goto LABEL_14;
      }

      v16 = +[MLCLog framework];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [MLCDeviceANE readTensor:fromDeviceIndex:targetBuffer:batchSize:];
      }
    }

    else
    {
      v15 = calculateBatchSizeToUse;
      v16 = +[MLCLog framework];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = NSStringFromSelector(a2);
        v20 = 138412802;
        v21 = v17;
        v22 = 2048;
        sizeCopy = size;
        v24 = 2048;
        indexCopy = v15;
        _os_log_error_impl(&dword_238C1D000, v16, OS_LOG_TYPE_ERROR, "%@: invalid batchSize=%lu. batchSize cannot exceed the batch size of the tensor=%lu", &v20, 0x20u);
      }
    }

    goto LABEL_12;
  }

LABEL_14:

  v19 = *MEMORY[0x277D85DE8];
}

- (void)dispatchReadTensor:(id)tensor targetBuffer:(void *)buffer batchSize:(unint64_t)size
{
  tensorCopy = tensor;
  -[MLCDeviceANE readTensor:fromDeviceIndex:targetBuffer:batchSize:](self, "readTensor:fromDeviceIndex:targetBuffer:batchSize:", tensorCopy, [tensorCopy deviceIndex], buffer, size);
}

- (void)broadcastTensor:(id)tensor
{
  tensorCopy = tensor;
  -[MLCDeviceANE writeToAllDevices:allocateData:batchSize:](self, "writeToAllDevices:allocateData:batchSize:", tensorCopy, 0, [tensorCopy calculateBatchSizeToUse]);
}

- (void)writeToAllDevices:(id)devices allocateData:(BOOL)data batchSize:(unint64_t)size
{
  dataCopy = data;
  devicesCopy = devices;
  v9 = devicesCopy;
  if (dataCopy)
  {
    [(MLCDeviceANE *)self allocateDeviceMemoryForTensor:devicesCopy];
    devicesCopy = v9;
  }

  [(MLCDeviceANE *)self writeToDevice:devicesCopy toDeviceIndex:0 batchSize:size];
}

- (void)writeToDevice:(id)device toDeviceIndex:(unint64_t)index batchSize:(unint64_t)size
{
  v39 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  data = [deviceCopy data];
  bytes = [data bytes];

  if (bytes)
  {
    deviceMemory = [deviceCopy deviceMemory];
    v12 = [deviceMemory count];

    if (!v12)
    {
      v18 = +[MLCLog framework];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [MLCDeviceANE writeToDevice:toDeviceIndex:batchSize:];
      }

      goto LABEL_24;
    }

    if ([deviceCopy deviceIndex] != index)
    {
      v18 = +[MLCLog framework];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = NSStringFromSelector(a2);
        v33 = 138412802;
        v34 = v19;
        v35 = 2048;
        sizeCopy = [deviceCopy deviceIndex];
        v37 = 2048;
        indexCopy = index;
        v20 = "%@: -writeToDevice:toDeviceIndex:batchSize must be called with deviceIndex = %lu, but given deviceIndex = %lu";
        goto LABEL_12;
      }

LABEL_24:

      goto LABEL_25;
    }

    deviceMemory2 = [deviceCopy deviceMemory];
    v14 = [deviceMemory2 objectAtIndexedSubscript:index];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      v18 = +[MLCLog framework];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [MLCDeviceANE writeToDevice:a2 toDeviceIndex:? batchSize:?];
      }

      goto LABEL_24;
    }

    calculateBatchSizeToUse = [deviceCopy calculateBatchSizeToUse];
    if (calculateBatchSizeToUse < size)
    {
      v17 = calculateBatchSizeToUse;
      v18 = +[MLCLog framework];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = NSStringFromSelector(a2);
        v33 = 138412802;
        v34 = v19;
        v35 = 2048;
        sizeCopy = size;
        v37 = 2048;
        indexCopy = v17;
        v20 = "%@: invalid batchSize=%lu. batchSize cannot exceed the batch size of the tensor=%lu";
LABEL_12:
        _os_log_error_impl(&dword_238C1D000, v18, OS_LOG_TYPE_ERROR, v20, &v33, 0x20u);

        goto LABEL_24;
      }

      goto LABEL_24;
    }

    deviceMemory3 = [deviceCopy deviceMemory];
    v18 = [deviceMemory3 objectAtIndexedSubscript:index];

    liveIOStatus = [v18 liveIOStatus];
    v23 = liveIOStatus;
    if (liveIOStatus && [liveIOStatus count])
    {
      ioSurfaceObject = [v18 ioSurfaceObject];
      ioSurface = [ioSurfaceObject ioSurface];

      IOSurfaceLock(ioSurface, 0, 0);
      BaseAddress = IOSurfaceGetBaseAddress(ioSurface);
      data2 = [deviceCopy data];
      bytes2 = [data2 bytes];
      data3 = [deviceCopy data];
      v30 = ANE_ConvertInputTensor(deviceCopy, v23, bytes2, [data3 length], BaseAddress, size);

      IOSurfaceUnlock(ioSurface, 0, 0);
      if (v30)
      {
LABEL_23:

        goto LABEL_24;
      }

      v31 = +[MLCLog framework];
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        [MLCDeviceANE writeToDevice:toDeviceIndex:batchSize:];
      }
    }

    else
    {
      v31 = +[MLCLog framework];
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        [MLCDeviceANE writeToDevice:toDeviceIndex:batchSize:];
      }
    }

    goto LABEL_23;
  }

LABEL_25:

  v32 = *MEMORY[0x277D85DE8];
}

- (void)commitAndWaitForCompletion:(id)completion enableProfiling:(BOOL)profiling graphExecutionTime:(id)time graphResultTensor:(id)tensor
{
  profilingCopy = profiling;
  completionCopy = completion;
  timeCopy = time;
  tensorCopy = tensor;
  v11 = 0.0;
  if (profilingCopy)
  {
    Current = CFAbsoluteTimeGetCurrent();
    v11 = Current - *[timeCopy bytes];
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

      data = [tensorCopy device];
      computeEngine = [data computeEngine];
      data2 = [tensorCopy data];
      [computeEngine readTensor:tensorCopy targetBuffer:{objc_msgSend(data2, "bytes")}];
    }
  }

LABEL_8:
  if (completionCopy)
  {
    completionCopy[2](completionCopy, tensorCopy, 0, v11);
  }
}

- (BOOL)allocateDeviceMemoryForSourceAndResultTensorsOfLayer:(id)layer tensorLabelToIOSurfaceMap:(id *)map
{
  v38 = *MEMORY[0x277D85DE8];
  layerCopy = layer;
  v7 = [MEMORY[0x277CBEC10] mutableCopy];
  sourceTensors = [layerCopy sourceTensors];
  v9 = [sourceTensors count];

  if (v9)
  {
    v10 = 0;
    do
    {
      sourceTensors2 = [layerCopy sourceTensors];
      v12 = [sourceTensors2 objectAtIndexedSubscript:v10];

      if ((ANE_CanProgramANECConstantTensorUnit(v12) & 1) == 0)
      {
        if ([(MLCDeviceANE *)self needToAllocateDeviceMemoryForTensor:v12])
        {
          [(MLCDeviceANE *)self allocateDeviceMemoryForTensor:v12];
        }

        deviceMemory = [v12 deviceMemory];
        deviceMemory2 = [v12 deviceMemory];
        v15 = [deviceMemory objectAtIndexedSubscript:{objc_msgSend(deviceMemory2, "count") - 1}];

        if (!v15 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          v30 = +[MLCLog framework];
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            [MLCDeviceANE allocateDeviceMemoryForSourceAndResultTensorsOfLayer:tensorLabelToIOSurfaceMap:];
          }

LABEL_25:
          v28 = 0;
          goto LABEL_26;
        }

        label = [v12 label];
        [v7 setObject:v15 forKeyedSubscript:label];
      }

      ++v10;
      sourceTensors3 = [layerCopy sourceTensors];
      v18 = [sourceTensors3 count];
    }

    while (v10 < v18);
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  resultTensors = [layerCopy resultTensors];
  v20 = [resultTensors countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v34;
    while (2)
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v34 != v22)
        {
          objc_enumerationMutation(resultTensors);
        }

        v24 = *(*(&v33 + 1) + 8 * i);
        [(MLCDeviceANE *)self allocateDeviceMemoryForTensor:v24];
        v25 = ANE_GetDeviceMemoryData(v24);
        if (!v25)
        {
          v29 = +[MLCLog framework];
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            [MLCDeviceANE allocateDeviceMemoryForSourceAndResultTensorsOfLayer:tensorLabelToIOSurfaceMap:];
          }

          goto LABEL_25;
        }

        v26 = v25;
        label2 = [v24 label];
        [v7 setObject:v26 forKeyedSubscript:label2];
      }

      v21 = [resultTensors countByEnumeratingWithState:&v33 objects:v37 count:16];
      if (v21)
      {
        continue;
      }

      break;
    }
  }

  *map = [v7 copy];
  v28 = 1;
LABEL_26:

  v31 = *MEMORY[0x277D85DE8];
  return v28;
}

- (BOOL)procedureInformationWithModelAttributes:(id)attributes procedureName:(id)name procedureID:(unint64_t *)d procedureInputSymbols:(id *)symbols procedureInputSymbolIndices:(id *)indices procedureOutputSymbols:(id *)outputSymbols procedureOutputSymbolIndices:(id *)symbolIndices
{
  v84 = *MEMORY[0x277D85DE8];
  attributesCopy = attributes;
  nameCopy = name;
  if (softLinkObjcConstantkANEFModelDescriptionKey_once_token != -1)
  {
    [MLCDeviceANE procedureInformationWithModelAttributes:procedureName:procedureID:procedureInputSymbols:procedureInputSymbolIndices:procedureOutputSymbols:procedureOutputSymbolIndices:];
  }

  v15 = softLinkObjcConstantkANEFModelDescriptionKey_constant;
  if (softLinkObjcConstantkANEFModelProcedureNameToIDMapKey_once_token != -1)
  {
    [MLCDeviceANE procedureInformationWithModelAttributes:procedureName:procedureID:procedureInputSymbols:procedureInputSymbolIndices:procedureOutputSymbols:procedureOutputSymbolIndices:];
  }

  v16 = softLinkObjcConstantkANEFModelProcedureNameToIDMapKey_constant;
  v67 = attributesCopy;
  if (softLinkObjcConstantkANEFModelProceduresArrayKey_once_token != -1)
  {
    [MLCDeviceANE procedureInformationWithModelAttributes:procedureName:procedureID:procedureInputSymbols:procedureInputSymbolIndices:procedureOutputSymbols:procedureOutputSymbolIndices:];
  }

  v17 = softLinkObjcConstantkANEFModelProceduresArrayKey_constant;
  if (softLinkObjcConstantkANEFModelInputSymbolIndexArrayKey_once_token != -1)
  {
    [MLCDeviceANE procedureInformationWithModelAttributes:procedureName:procedureID:procedureInputSymbols:procedureInputSymbolIndices:procedureOutputSymbols:procedureOutputSymbolIndices:];
  }

  v18 = softLinkObjcConstantkANEFModelInputSymbolIndexArrayKey_constant;
  if (softLinkObjcConstantkANEFModelInputSymbolsArrayKey_once_token != -1)
  {
    [MLCDeviceANE procedureInformationWithModelAttributes:procedureName:procedureID:procedureInputSymbols:procedureInputSymbolIndices:procedureOutputSymbols:procedureOutputSymbolIndices:];
  }

  v19 = softLinkObjcConstantkANEFModelInputSymbolsArrayKey_constant;
  if (softLinkObjcConstantkANEFModelOutputSymbolIndexArrayKey_once_token != -1)
  {
    [MLCDeviceANE procedureInformationWithModelAttributes:procedureName:procedureID:procedureInputSymbols:procedureInputSymbolIndices:procedureOutputSymbols:procedureOutputSymbolIndices:];
  }

  v20 = softLinkObjcConstantkANEFModelOutputSymbolIndexArrayKey_constant;
  if (softLinkObjcConstantkANEFModelOutputSymbolsArrayKey_once_token == -1)
  {
    if (!v15)
    {
      goto LABEL_42;
    }
  }

  else
  {
    [MLCDeviceANE procedureInformationWithModelAttributes:procedureName:procedureID:procedureInputSymbols:procedureInputSymbolIndices:procedureOutputSymbols:procedureOutputSymbolIndices:];
    if (!v15)
    {
      goto LABEL_42;
    }
  }

  if (v16 && v17 && v18 && v19 && v20 && softLinkObjcConstantkANEFModelOutputSymbolsArrayKey_constant)
  {
    v58 = softLinkObjcConstantkANEFModelOutputSymbolsArrayKey_constant;
    v59 = v20;
    symbolsCopy = symbols;
    indicesCopy = indices;
    outputSymbolsCopy = outputSymbols;
    v21 = [v67 objectForKeyedSubscript:*v15];
    v22 = MEMORY[0x277CBEBF8];
    v23 = [MEMORY[0x277CBEBF8] mutableCopy];
    v24 = [v22 mutableCopy];
    v25 = [v21 objectForKeyedSubscript:*v16];
    v26 = [v25 objectForKeyedSubscript:nameCopy];
    unsignedIntegerValue = [v26 unsignedIntegerValue];

    v28 = v21;
    v29 = [v21 objectForKeyedSubscript:*v17];
    v30 = [v29 count];
    v31 = unsignedIntegerValue < v30;
    if (unsignedIntegerValue >= v30)
    {
      v49 = +[MLCLog framework];
      if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
      {
        NSStringFromSelector(a2);
        v51 = v50 = unsignedIntegerValue;
        *buf = 138412802;
        v79 = v51;
        v80 = 2048;
        v81 = v50;
        v82 = 2048;
        v83 = [v29 count];
        _os_log_error_impl(&dword_238C1D000, v49, OS_LOG_TYPE_ERROR, "%@: procedureID=%lu can not exceed the count of procedures=%lu", buf, 0x20u);
      }

      v48 = v67;
    }

    else
    {
      v57 = nameCopy;
      v54 = unsignedIntegerValue;
      v55 = v29;
      v60 = [v29 objectAtIndexedSubscript:unsignedIntegerValue];
      v32 = [v60 objectForKeyedSubscript:*v18];
      aSelectora = v28;
      v33 = [v28 objectForKeyedSubscript:*v19];
      v72 = 0u;
      v73 = 0u;
      v74 = 0u;
      v75 = 0u;
      v34 = v32;
      v35 = [v34 countByEnumeratingWithState:&v72 objects:v77 count:16];
      if (v35)
      {
        v36 = v35;
        v37 = *v73;
        do
        {
          for (i = 0; i != v36; ++i)
          {
            if (*v73 != v37)
            {
              objc_enumerationMutation(v34);
            }

            v39 = [v33 objectAtIndexedSubscript:{objc_msgSend(*(*(&v72 + 1) + 8 * i), "unsignedIntegerValue")}];
            [v23 addObject:v39];
          }

          v36 = [v34 countByEnumeratingWithState:&v72 objects:v77 count:16];
        }

        while (v36);
      }

      v56 = v31;

      v40 = [v60 objectForKeyedSubscript:*v59];
      v41 = [aSelectora objectForKeyedSubscript:*v58];
      v68 = 0u;
      v69 = 0u;
      v70 = 0u;
      v71 = 0u;
      v42 = v40;
      v43 = [v42 countByEnumeratingWithState:&v68 objects:v76 count:16];
      if (v43)
      {
        v44 = v43;
        v45 = *v69;
        do
        {
          for (j = 0; j != v44; ++j)
          {
            if (*v69 != v45)
            {
              objc_enumerationMutation(v42);
            }

            v47 = [v41 objectAtIndexedSubscript:{objc_msgSend(*(*(&v68 + 1) + 8 * j), "unsignedIntegerValue")}];
            [v24 addObject:v47];
          }

          v44 = [v42 countByEnumeratingWithState:&v68 objects:v76 count:16];
        }

        while (v44);
      }

      *d = v54;
      *symbolsCopy = [v23 copy];
      *indicesCopy = [v34 copy];
      *outputSymbolsCopy = [v24 copy];
      *symbolIndices = [v42 copy];

      v48 = v67;
      nameCopy = v57;
      v28 = aSelectora;
      v31 = v56;
      v29 = v55;
      v49 = v60;
    }

    goto LABEL_45;
  }

LABEL_42:
  v28 = +[MLCLog framework];
  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE procedureInformationWithModelAttributes:a2 procedureName:? procedureID:? procedureInputSymbols:? procedureInputSymbolIndices:? procedureOutputSymbols:? procedureOutputSymbolIndices:?];
  }

  v31 = 0;
  v48 = v67;
LABEL_45:

  v52 = *MEMORY[0x277D85DE8];
  return v31;
}

- (id)ANERequestWithModelAttributes:(id)attributes procedureName:(id)name tensorLabelToIOSurfaceMap:(id)map
{
  v52 = *MEMORY[0x277D85DE8];
  attributesCopy = attributes;
  nameCopy = name;
  mapCopy = map;
  if ([mapCopy count])
  {
    v44 = 0;
    v45 = -1;
    v42 = 0;
    v43 = 0;
    v41 = 0;
    v12 = [(MLCDeviceANE *)self procedureInformationWithModelAttributes:attributesCopy procedureName:nameCopy procedureID:&v45 procedureInputSymbols:&v44 procedureInputSymbolIndices:&v43 procedureOutputSymbols:&v42 procedureOutputSymbolIndices:&v41];
    v39 = v44;
    v13 = v43;
    v38 = v42;
    v14 = v41;
    if (v12)
    {
      v15 = MEMORY[0x277CBEBF8];
      log = [MEMORY[0x277CBEBF8] mutableCopy];
      v16 = [v15 mutableCopy];
      if ([v13 count])
      {
        v17 = 0;
        while (1)
        {
          v18 = [v13 objectAtIndexedSubscript:v17];
          [v16 addObject:v18];

          v19 = [v39 objectAtIndexedSubscript:v17];
          v20 = [mapCopy objectForKeyedSubscript:v19];
          ioSurfaceObject = [v20 ioSurfaceObject];

          if (!ioSurfaceObject)
          {
            break;
          }

          [log addObject:ioSurfaceObject];

          if (++v17 >= [v13 count])
          {
            goto LABEL_7;
          }
        }

        v23 = +[MLCLog framework];
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          [MLCDeviceANE ANERequestWithModelAttributes:procedureName:tensorLabelToIOSurfaceMap:];
        }

        v30 = 0;
      }

      else
      {
LABEL_7:
        v36 = nameCopy;
        v37 = attributesCopy;
        v22 = MEMORY[0x277CBEBF8];
        v19 = [MEMORY[0x277CBEBF8] mutableCopy];
        v23 = [v22 mutableCopy];
        if ([v14 count])
        {
          v24 = 0;
          while (1)
          {
            v25 = [v14 objectAtIndexedSubscript:v24];
            [v23 addObject:v25];

            v26 = [v38 objectAtIndexedSubscript:v24];
            v27 = [mapCopy objectForKeyedSubscript:v26];
            ioSurfaceObject2 = [v27 ioSurfaceObject];

            if (!ioSurfaceObject2)
            {
              break;
            }

            [v19 addObject:ioSurfaceObject2];

            if (++v24 >= [v14 count])
            {
              goto LABEL_11;
            }
          }

          v32 = +[MLCLog framework];
          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            [MLCDeviceANE ANERequestWithModelAttributes:procedureName:tensorLabelToIOSurfaceMap:];
          }

          v30 = 0;
        }

        else
        {
LABEL_11:
          v29 = softLinkClass_ANERequest();
          v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v45];
          v30 = [v29 requestWithInputs:log inputIndices:v16 outputs:v19 outputIndices:v23 procedureIndex:v26];
        }

        nameCopy = v36;

        attributesCopy = v37;
      }
    }

    else
    {
      log = +[MLCLog framework];
      if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
      {
        v35 = NSStringFromSelector(a2);
        *buf = 138412802;
        v47 = v35;
        v48 = 2112;
        v49 = nameCopy;
        v50 = 2112;
        v51 = attributesCopy;
        _os_log_error_impl(&dword_238C1D000, log, OS_LOG_TYPE_ERROR, "%@: failed to get procedure information for procedure name=%@ from model attributes=%@", buf, 0x20u);
      }

      v30 = 0;
    }
  }

  else
  {
    v31 = +[MLCLog framework];
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      [MLCDeviceANE ANERequestWithModelAttributes:a2 procedureName:? tensorLabelToIOSurfaceMap:?];
    }

    v30 = 0;
  }

  v33 = *MEMORY[0x277D85DE8];

  return v30;
}

- (BOOL)postProcessCompiledGraph:(id)graph compilerOptions:(unint64_t)options
{
  optionsCopy = options;
  v116[1] = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  graphLayerList = [graphCopy graphLayerList];
  v9 = [graphLayerList count];

  if (!v9)
  {
    v11 = +[MLCLog framework];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [MLCDeviceANE postProcessCompiledGraph:compilerOptions:];
    }

    v34 = 0;
    goto LABEL_81;
  }

  selfCopy = self;
  aSelector = a2;
  v10 = optionsCopy & 6;
  v11 = [MEMORY[0x277CBEBF8] mutableCopy];
  v12 = [MEMORY[0x277CBEC10] mutableCopy];
  graphLayerList2 = [graphCopy graphLayerList];
  v14 = [graphLayerList2 count];

  if (v14)
  {
    v15 = 0;
    v16 = 0x277CCA000uLL;
    do
    {
      graphLayerList3 = [graphCopy graphLayerList];
      v18 = [graphLayerList3 objectAtIndexedSubscript:v15];

      if (([v18 skipLayer]& 1) == 0 && ANE_IsAneCompiledLayer(v18))
      {
        deviceOps = [v18 deviceOps];
        v20 = [deviceOps objectAtIndexedSubscript:0];
        plistBuilder = [v20 plistBuilder];

        if (!plistBuilder)
        {
          v71 = +[MLCLog framework];
          if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
          {
            [MLCDeviceANE postProcessCompiledGraph:compilerOptions:];
          }

          goto LABEL_79;
        }

        v22 = [*(v16 + 2992) numberWithUnsignedLong:plistBuilder];
        v23 = [v12 objectForKeyedSubscript:v22];

        if (v23)
        {
          v24 = [v12 objectForKeyedSubscript:v22];
          [v24 addObject:v18];
        }

        else
        {
          [v11 addObject:plistBuilder];
          v116[0] = v18;
          v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v116 count:1];
          v91 = v18;
          v25 = graphCopy;
          v26 = v10;
          v27 = v16;
          v28 = v11;
          v29 = v12;
          v30 = [v24 mutableCopy];
          [v29 setObject:v30 forKeyedSubscript:v22];

          v12 = v29;
          v11 = v28;
          v16 = v27;
          v10 = v26;
          graphCopy = v25;
          v18 = v91;
        }

        if (v10 && ([plistBuilder buildProcedureWithLayer:v18] & 1) == 0)
        {
          v73 = +[MLCLog framework];
          if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
          {
            [MLCDeviceANE postProcessCompiledGraph:compilerOptions:];
          }

          goto LABEL_79;
        }
      }

      ++v15;
      graphLayerList4 = [graphCopy graphLayerList];
      v32 = [graphLayerList4 count];
    }

    while (v15 < v32);
  }

  if (![v11 count])
  {
    v18 = +[MLCLog framework];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      [MLCDeviceANE postProcessCompiledGraph:v18 compilerOptions:?];
    }

    goto LABEL_65;
  }

  v33 = [v11 count];
  if (v10)
  {
    if (v33 > 0x10)
    {
      v18 = +[MLCLog framework];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [MLCDeviceANE postProcessCompiledGraph:compilerOptions:];
      }

LABEL_79:
      v34 = 0;
      goto LABEL_80;
    }
  }

  else if (v33 != 1)
  {
    v18 = +[MLCLog framework];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [MLCDeviceANE postProcessCompiledGraph:? compilerOptions:?];
    }

    goto LABEL_79;
  }

  v104 = 0u;
  v102 = 0u;
  v103 = 0u;
  v101 = 0u;
  v18 = v11;
  v35 = [v18 countByEnumeratingWithState:&v101 objects:v115 count:16];
  if (!v35)
  {
LABEL_65:
    v34 = 1;
    goto LABEL_80;
  }

  v37 = *v102;
  v38 = 0x278A68000uLL;
  v39 = 0x277CCA000uLL;
  *&v36 = 138412802;
  v76 = v36;
  v81 = v11;
  v82 = v12;
  v77 = *v102;
  while (2)
  {
    v40 = 0;
    v78 = v35;
    do
    {
      if (*v102 != v37)
      {
        objc_enumerationMutation(v18);
      }

      v79 = v40;
      v41 = *(*(&v101 + 1) + 8 * v40);
      aneUserInteractiveTaskQoS = [softLinkClass_ANEQoSMapper() aneUserInteractiveTaskQoS];
      plist = [v41 plist];
      v43 = [plist copy];

      v87 = objc_autoreleasePoolPush();
      weightOps = [v41 weightOps];
      weights = [weightOps weights];
      v46 = [weights copy];

      if ([*(v38 + 3160) isAnePlistKept])
      {
        ANE_WriteANEModelFiles(v43, v46);
      }

      v47 = *(v39 + 3160);
      v100 = 0;
      v83 = v43;
      v48 = [v47 dataWithPropertyList:v43 format:100 options:0 error:{&v100, v76}];
      v49 = v100;
      if (v48)
      {
        v50 = [softLinkClass_ANEInMemoryModelDescriptor() modelWithNetworkDescription:v48 weights:v46 optionsPlist:0];
        if (v50)
        {
          obj = v46;
          v51 = [softLinkClass_ANEInMemoryModel() inMemoryModelWithDescriptor:v50];
          v99 = v49;
          v92 = v51;
          v52 = [v51 loadWithQoS:aneUserInteractiveTaskQoS options:MEMORY[0x277CBEC10] error:&v99];
          v53 = v99;

          [v41 releaseWeights];
          if (v52)
          {
            v54 = 1;
            v49 = v53;
            v46 = obj;
            v55 = v87;
            goto LABEL_47;
          }

          v56 = +[MLCLog framework];
          if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
          {
            v70 = NSStringFromSelector(aSelector);
            *buf = v76;
            v108 = v70;
            v109 = 2112;
            v110 = v92;
            v111 = 2112;
            v112 = v53;
            _os_log_error_impl(&dword_238C1D000, v56, OS_LOG_TYPE_ERROR, "%@: failed to load model=%@ : error=%@", buf, 0x20u);
          }

          v49 = v53;
          v46 = obj;
          v55 = v87;
        }

        else
        {
          v56 = +[MLCLog framework];
          if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
          {
            [MLCDeviceANE postProcessCompiledGraph:v113 compilerOptions:aSelector];
          }

          v92 = 0;
          v55 = v87;
        }
      }

      else
      {
        v50 = +[MLCLog framework];
        v55 = v87;
        if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
        {
          [MLCDeviceANE postProcessCompiledGraph:v114 compilerOptions:aSelector];
        }

        v92 = 0;
      }

      v54 = 0;
LABEL_47:

      objc_autoreleasePoolPop(v55);
      if (!v54)
      {
LABEL_75:

        v34 = 0;
        v12 = v82;
        goto LABEL_80;
      }

      v88 = [_MLCANEModel objectWithModel:v92 options:MEMORY[0x277CBEC10] qos:aneUserInteractiveTaskQoS plist:v83];
      v57 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v41];
      v95 = 0u;
      v96 = 0u;
      v97 = 0u;
      v98 = 0u;
      v12 = v82;
      obja = [v82 objectForKeyedSubscript:v57];
      v58 = [obja countByEnumeratingWithState:&v95 objects:v106 count:16];
      if (v58)
      {
        v59 = v58;
        v90 = *v96;
        v80 = v57;
        while (2)
        {
          for (i = 0; i != v59; ++i)
          {
            if (*v96 != v90)
            {
              objc_enumerationMutation(obja);
            }

            v61 = *(*(&v95 + 1) + 8 * i);
            deviceOps2 = [v61 deviceOps];
            v63 = [deviceOps2 objectAtIndexedSubscript:0];

            v94 = 0;
            v64 = [(MLCDeviceANE *)selfCopy allocateDeviceMemoryForSourceAndResultTensorsOfLayer:v61 tensorLabelToIOSurfaceMap:&v94];
            v65 = v94;
            if (!v64)
            {
              v72 = +[MLCLog framework];
              if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
              {
                [MLCDeviceANE postProcessCompiledGraph:compilerOptions:];
              }

LABEL_74:
              v11 = v81;
              goto LABEL_75;
            }

            procedureName = [v63 procedureName];
            modelAttributes = [v92 modelAttributes];
            v68 = [(MLCDeviceANE *)selfCopy ANERequestWithModelAttributes:modelAttributes procedureName:procedureName tensorLabelToIOSurfaceMap:v65];

            if (v68)
            {
              [v63 setRequest:v68];
              [v63 setModel:v88];
            }

            else
            {
              v69 = +[MLCLog framework];
              if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
              {
                [MLCDeviceANE postProcessCompiledGraph:v105 compilerOptions:aSelector];
              }
            }

            if (!v68)
            {
              goto LABEL_74;
            }
          }

          v59 = [obja countByEnumeratingWithState:&v95 objects:v106 count:16];
          v12 = v82;
          v57 = v80;
          if (v59)
          {
            continue;
          }

          break;
        }
      }

      v40 = v79 + 1;
      v11 = v81;
      v37 = v77;
      v38 = 0x278A68000;
      v39 = 0x277CCA000;
    }

    while (v79 + 1 != v78);
    v35 = [v18 countByEnumeratingWithState:&v101 objects:v115 count:16];
    v34 = 1;
    if (v35)
    {
      continue;
    }

    break;
  }

LABEL_80:

LABEL_81:
  v74 = *MEMORY[0x277D85DE8];
  return v34;
}

- (BOOL)transferTensor:(id)tensor fromDevice:(id)device
{
  v53 = *MEMORY[0x277D85DE8];
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

      if ((v14 & 1) == 0)
      {
        v20 = +[MLCLog framework];
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          v21 = NSStringFromSelector(a2);
          deviceMemory2 = [tensorCopy deviceMemory];
          v23 = [deviceMemory2 objectAtIndexedSubscript:deviceIndex];
          *buf = 138412546;
          v50 = v21;
          v51 = 2112;
          v52 = objc_opt_class();
          v24 = v52;
          _os_log_error_impl(&dword_238C1D000, v20, OS_LOG_TYPE_ERROR, "%@: unsupported device memory class=%@", buf, 0x16u);
        }

        goto LABEL_22;
      }

      deviceMemory3 = [tensorCopy deviceMemory];
      v16 = [deviceMemory3 count];

      deviceMemory4 = [tensorCopy deviceMemory];
      v18 = [deviceMemory4 count];

      if (v18 == 1)
      {
        [(MLCDeviceANE *)self allocateDeviceMemoryForTensor:tensorCopy];
        deviceMemory5 = [tensorCopy deviceMemory];
        if ([deviceMemory5 count] == 1)
        {

          goto LABEL_18;
        }

        deviceMemory6 = [tensorCopy deviceMemory];
        v16 = 1;
        v34 = [deviceMemory6 objectAtIndexedSubscript:1];
        objc_opt_class();
        v35 = objc_opt_isKindOfClass();

        if ((v35 & 1) == 0)
        {
LABEL_18:
          v20 = +[MLCLog framework];
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            [MLCDeviceANE transferTensor:fromDevice:];
          }

LABEL_22:
          v10 = 0;
LABEL_23:

          goto LABEL_24;
        }
      }

      else
      {
        deviceMemory7 = [tensorCopy deviceMemory];
        v26 = [deviceMemory7 count];

        if (v26 != 2)
        {
          v20 = +[MLCLog framework];
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            [MLCDeviceANE transferTensor:fromDevice:];
          }

          goto LABEL_22;
        }

        deviceMemory8 = [tensorCopy deviceMemory];
        v28 = [deviceMemory8 count];

        if (v28)
        {
          v29 = 0;
          while (1)
          {
            deviceMemory9 = [tensorCopy deviceMemory];
            v31 = [deviceMemory9 objectAtIndexedSubscript:v29];
            objc_opt_class();
            v32 = objc_opt_isKindOfClass();

            if (v32)
            {
              break;
            }

            if (v28 == ++v29)
            {
              goto LABEL_26;
            }
          }

          v16 = v29;
        }
      }

LABEL_26:
      calculateBatchSizeToUse = [tensorCopy calculateBatchSizeToUse];
      deviceMemory10 = [tensorCopy deviceMemory];
      v20 = [deviceMemory10 objectAtIndexedSubscript:v16];

      liveIOStatus = [v20 liveIOStatus];
      v41 = liveIOStatus;
      if (liveIOStatus && [liveIOStatus count])
      {
        ioSurfaceObject = [v20 ioSurfaceObject];
        ioSurface = [ioSurfaceObject ioSurface];

        IOSurfaceLock(ioSurface, 0, 0);
        BaseAddress = IOSurfaceGetBaseAddress(ioSurface);
        [tensorCopy deviceMemory];
        v45 = v44 = calculateBatchSizeToUse;
        v46 = [v45 objectAtIndexedSubscript:deviceIndex];

        v10 = ANE_ConvertInputTensor(tensorCopy, v41, [v46 bytes], [v46 length], BaseAddress, v44);
        IOSurfaceUnlock(ioSurface, 0, 0);
        if (v10)
        {
          [tensorCopy setDeviceIndex:v16];
        }

        else
        {
          v47 = +[MLCLog framework];
          if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
          {
            [MLCDeviceANE transferTensor:fromDevice:];
          }
        }
      }

      else
      {
        v46 = +[MLCLog framework];
        if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
        {
          [MLCDeviceANE transferTensor:fromDevice:];
        }

        v10 = 0;
      }

      goto LABEL_23;
    }
  }

  v10 = 1;
LABEL_24:

  v36 = *MEMORY[0x277D85DE8];
  return v10;
}

- (void)setDeviceMemoryForTensor:(id)tensor data:(id)data
{
  v5 = [MLCLog framework:tensor];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE setDeviceMemoryForTensor:a2 data:?];
  }
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
        [MLCDeviceANE updateDeviceMemoryForTensor:a2];
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
    [MLCDeviceANE updateDeviceMemoryForTensor:a2];
  }

LABEL_11:

  v16 = 0;
LABEL_14:

  return v16;
}

- (void)dispatchForwardLayer:(id)layer
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = [layer objectAtIndexedSubscript:0];
  model = [v4 model];
  anefModel = [model anefModel];

  request = [v4 request];
  model2 = [v4 model];
  v9 = [model2 qos];
  model3 = [v4 model];
  options = [model3 options];
  v17 = 0;
  v12 = [anefModel evaluateWithQoS:v9 options:options request:request error:&v17];
  v13 = v17;

  if ((v12 & 1) == 0)
  {
    v14 = +[MLCLog framework];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v16 = NSStringFromSelector(a2);
      *buf = 138412802;
      v19 = v16;
      v20 = 2112;
      v21 = anefModel;
      v22 = 2112;
      v23 = v13;
      _os_log_error_impl(&dword_238C1D000, v14, OS_LOG_TYPE_ERROR, "%@: failed to evaluate model=%@ : error=%@", buf, 0x20u);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)dispatchForwardConcatLayer:(id)layer sourceTensors:(id)tensors resultTensor:(id)tensor
{
  v6 = [MLCLog framework:layer];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCEngineDispatch) dispatchForwardConcatLayer:a2 sourceTensors:? resultTensor:?];
  }
}

- (void)dispatchForwardSplitLayer:(id)layer sourceTensor:(id)tensor resultTensors:(id)tensors
{
  v6 = [MLCLog framework:layer];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCEngineDispatch) dispatchForwardConcatLayer:a2 sourceTensors:? resultTensor:?];
  }
}

- (void)dispatchGradientConcatLayer:(id)layer sourceGradientTensor:(id)tensor resultGradientTensors:(id)tensors
{
  v6 = [MLCLog framework:layer];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCEngineDispatch) dispatchForwardConcatLayer:a2 sourceTensors:? resultTensor:?];
  }
}

- (void)dispatchGradientSplitLayer:(id)layer sourceGradientTensors:(id)tensors resultGradientTensor:(id)tensor
{
  v6 = [MLCLog framework:layer];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCEngineDispatch) dispatchForwardConcatLayer:a2 sourceTensors:? resultTensor:?];
  }
}

- (void)dispatchForwardLossLayer:(id)layer sourceTensor:(id)tensor labelsTensor:(id)labelsTensor labelsTensorStride:(unint64_t)stride weightsTensor:(id)weightsTensor resultTensor:(id)resultTensor resultStateIsTemporary:(BOOL)temporary forTraining:(BOOL)self0
{
  v11 = [MLCLog framework:layer];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCEngineDispatch) dispatchForwardConcatLayer:a2 sourceTensors:? resultTensor:?];
  }
}

- (void)dispatchGradientLayer:(id)layer sourceGradientTensor:(id)tensor resultGradientTensor:(id)gradientTensor
{
  v6 = [MLCLog framework:layer];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCEngineDispatch) dispatchForwardConcatLayer:a2 sourceTensors:? resultTensor:?];
  }
}

- (void)dispatchGradientLayer:(id)layer sourceGradientTensor:(id)tensor resultGradientTensor:(id)gradientTensor secondaryResultGradientTensor:(id)resultGradientTensor
{
  v7 = [MLCLog framework:layer];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCEngineDispatch) dispatchForwardConcatLayer:a2 sourceTensors:? resultTensor:?];
  }
}

- (void)dispatchGradientLossLayer:(id)layer sourceGradientTensor:(id)tensor labelsTensor:(id)labelsTensor labelsTensorStride:(unint64_t)stride weightsTensor:(id)weightsTensor resultGradientTensor:(id)gradientTensor
{
  v9 = [MLCLog framework:layer];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCEngineDispatch) dispatchForwardConcatLayer:a2 sourceTensors:? resultTensor:?];
  }
}

- (void)dispatchForwardAndGradientLossLayer:(id)layer sourceTensor:(id)tensor labelsTensor:(id)labelsTensor labelsTensorStride:(unint64_t)stride weightsTensor:(id)weightsTensor resultTensor:(id)resultTensor resultGradientTensor:(id)gradientTensor
{
  v10 = [MLCLog framework:layer];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCEngineDispatch) dispatchForwardConcatLayer:a2 sourceTensors:? resultTensor:?];
  }
}

- (void)dispatchRNNForwardLayer:(id)layer sourceTensors:(id)tensors resultTensors:(id)resultTensors
{
  v6 = [MLCLog framework:layer];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCEngineDispatch) dispatchForwardConcatLayer:a2 sourceTensors:? resultTensor:?];
  }
}

- (void)dispatchRNNGradientLayer:(id)layer sourceGradientTensors:(id)tensors resultGradientTensors:(id)gradientTensors
{
  v6 = [MLCLog framework:layer];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCEngineDispatch) dispatchForwardConcatLayer:a2 sourceTensors:? resultTensor:?];
  }
}

- (void)incrementReadCountForTensorDeviceMemory:(id)memory increment:(int64_t)increment
{
  v5 = [MLCLog framework:memory];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCEngineDispatch) dispatchForwardConcatLayer:a2 sourceTensors:? resultTensor:?];
  }
}

- (void)incrementReadCountForGradientState:(id)state increment:(int64_t)increment
{
  v5 = [MLCLog framework:state];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCEngineDispatch) dispatchForwardConcatLayer:a2 sourceTensors:? resultTensor:?];
  }
}

- (void)dispatchForwardMatMulLayer:(id)layer sourceTensors:(id)tensors resultTensor:(id)tensor
{
  v6 = [MLCLog framework:layer];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCEngineDispatch) dispatchForwardConcatLayer:a2 sourceTensors:? resultTensor:?];
  }
}

- (void)dispatchGradientMatMulLayer:(id)layer sourceGradientTensor:(id)tensor resultGradientTensors:(id)tensors
{
  v6 = [MLCLog framework:layer];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCEngineDispatch) dispatchForwardConcatLayer:a2 sourceTensors:? resultTensor:?];
  }
}

- (void)dispatchGradientSliceLayer:(id)layer sourceGradientTensor:(id)tensor resultGradientTensor:(id)gradientTensor
{
  v6 = [MLCLog framework:layer];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCEngineDispatch) dispatchForwardConcatLayer:a2 sourceTensors:? resultTensor:?];
  }
}

- (void)dispatchGradientReshapeLayer:(id)layer sourceGradientTensor:(id)tensor resultGradientTensor:(id)gradientTensor
{
  v6 = [MLCLog framework:layer];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCEngineDispatch) dispatchForwardConcatLayer:a2 sourceTensors:? resultTensor:?];
  }
}

- (void)dispatchForwardEmbeddingLayer:(id)layer weight:(id)weight sourceTensor:(id)tensor resultTensor:(id)resultTensor
{
  v7 = [MLCLog framework:layer];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCEngineDispatch) dispatchForwardConcatLayer:a2 sourceTensors:? resultTensor:?];
  }
}

- (void)dispatchGradientEmbeddingLayer:(id)layer sourceGradientTensor:(id)tensor
{
  v5 = [MLCLog framework:layer];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCEngineDispatch) dispatchForwardConcatLayer:a2 sourceTensors:? resultTensor:?];
  }
}

- (void)dispatchGradientSelectLayer:(id)layer conditionTensor:(id)tensor sourceGradientTensor:(id)gradientTensor resultGradientTensors:(id)tensors
{
  v7 = [MLCLog framework:layer];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCEngineDispatch) dispatchForwardFusedArithmeticLayerNormalizationLayer:a2 sourceTensors:? resultTensor:? forTraining:?];
  }
}

- (void)optimizeComputationForTrainingGraph:(id)graph
{
  v4 = +[MLCLog framework];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCEngineDispatch) dispatchForwardFusedArithmeticLayerNormalizationLayer:a2 sourceTensors:? resultTensor:? forTraining:?];
  }
}

- (void)sumSharedGradientsForConvolutionLayerTensorParameter:(id)parameter layerIndexForSummedGradients:(unint64_t)gradients
{
  v5 = [MLCLog framework:parameter];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLComputeEngineOptimizerUpdate) sumSharedGradientsForConvolutionLayerTensorParameter:a2 layerIndexForSummedGradients:?];
  }
}

- (void)updateConvolutionLayer:(id)layer optimizer:(id)optimizer weightsParameter:(id)parameter biasesParameter:(id)biasesParameter arrayOfParams:(id)params
{
  v8 = [MLCLog framework:layer];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCEngineDispatch) dispatchForwardConcatLayer:a2 sourceTensors:? resultTensor:?];
  }
}

- (void)updateFullyConnectedLayer:(id)layer optimizer:(id)optimizer weightsParameter:(id)parameter biasesParameter:(id)biasesParameter arrayOfParams:(id)params
{
  v8 = [MLCLog framework:layer];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCEngineDispatch) dispatchForwardConcatLayer:a2 sourceTensors:? resultTensor:?];
  }
}

- (void)updateBatchNormalizationLayer:(id)layer optimizer:(id)optimizer betaParameter:(id)parameter gammaParameter:(id)gammaParameter meanTensor:(id)tensor varianceTensor:(id)varianceTensor arrayOfParams:(id)params
{
  v10 = [MLCLog framework:layer];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCEngineDispatch) dispatchForwardConcatLayer:a2 sourceTensors:? resultTensor:?];
  }
}

- (void)updateInstanceNormalizationLayer:(id)layer optimizer:(id)optimizer betaParameter:(id)parameter gammaParameter:(id)gammaParameter arrayOfParams:(id)params
{
  v8 = [MLCLog framework:layer];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCEngineDispatch) dispatchForwardConcatLayer:a2 sourceTensors:? resultTensor:?];
  }
}

- (void)updateLayerNormalizationLayer:(id)layer optimizer:(id)optimizer betaParameter:(id)parameter gammaParameter:(id)gammaParameter arrayOfParams:(id)params
{
  v8 = [MLCLog framework:layer];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCEngineDispatch) dispatchForwardConcatLayer:a2 sourceTensors:? resultTensor:?];
  }
}

- (void)updateGroupNormalizationLayer:(id)layer optimizer:(id)optimizer betaParameter:(id)parameter gammaParameter:(id)gammaParameter arrayOfParams:(id)params
{
  v8 = [MLCLog framework:layer];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCEngineDispatch) dispatchForwardConcatLayer:a2 sourceTensors:? resultTensor:?];
  }
}

- (void)updateRNNLayer:(id)layer optimizer:(id)optimizer inputWeightsParameter:(id)parameter hiddenWeightsParameter:(id)weightsParameter biasesParameter:(id)biasesParameter arrayOfParams:(id)params
{
  v9 = [MLCLog framework:layer];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCEngineDispatch) dispatchForwardConcatLayer:a2 sourceTensors:? resultTensor:?];
  }
}

- (void)restoreRNNParamsWithDeviceOps:(id)ops optimizer:(id)optimizer inputWeightsParameter:(id)parameter hiddenWeightsParameter:(id)weightsParameter biasesParameter:(id)biasesParameter arrayOfParams:(id)params
{
  v9 = [MLCLog framework:ops];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCEngineDispatch) dispatchForwardConcatLayer:a2 sourceTensors:? resultTensor:?];
  }
}

- (void)updateTensorParameter:(id)parameter optimizer:(id)optimizer gradient:(id)gradient arrayOfParams:(id)params
{
  v7 = [MLCLog framework:parameter];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCEngineDispatch) dispatchForwardConcatLayer:a2 sourceTensors:? resultTensor:?];
  }
}

- (void)updateMultiheadAttentionLayer:(id)layer optimizer:(id)optimizer weightsParameter:(id)parameter biasesParameter:(id)biasesParameter arrayOfParams:(id)params
{
  v8 = [MLCLog framework:layer];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCEngineDispatch) dispatchForwardConcatLayer:a2 sourceTensors:? resultTensor:?];
  }
}

- (void)updateEmbeddingLayer:(id)layer weightsParameter:(id)parameter optimizer:(id)optimizer arrayOfParams:(id)params
{
  v7 = [MLCLog framework:layer];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCEngineDispatch) dispatchForwardConcatLayer:a2 sourceTensors:? resultTensor:?];
  }
}

- (void)synchronizeUpdatesForLayer:(id)layer
{
  v4 = +[MLCLog framework];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCEngineDispatch) dispatchForwardConcatLayer:a2 sourceTensors:? resultTensor:?];
  }
}

- (void)synchronizeOptimizerUpdatesForTensor:(id)tensor
{
  v4 = +[MLCLog framework];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCEngineDispatch) dispatchForwardConcatLayer:a2 sourceTensors:? resultTensor:?];
  }
}

- (void)convertUpdatesToTensorDataForLayer:(id)layer
{
  v4 = +[MLCLog framework];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCEngineDispatch) dispatchForwardConcatLayer:a2 sourceTensors:? resultTensor:?];
  }
}

- (void)convertUpdatesToTensorDataForTensorParameters:(id)parameters
{
  v4 = +[MLCLog framework];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCEngineDispatch) dispatchForwardConcatLayer:a2 sourceTensors:? resultTensor:?];
  }
}

- (void)setOptimizerLearningRate:(id)rate learningRate:(float)learningRate
{
  v5 = +[MLCLog framework];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCEngineDispatch) dispatchForwardConcatLayer:a2 sourceTensors:? resultTensor:?];
  }
}

- (void)setOptimizerTimeStep:(id)step timeStep:(unint64_t)timeStep
{
  v5 = [MLCLog framework:step];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCEngineDispatch) dispatchForwardConcatLayer:a2 sourceTensors:? resultTensor:?];
  }
}

- (void)reloadParameterDataFromHostToDeviceMemoryForTensor:(id)tensor
{
  v4 = +[MLCLog framework];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCEngineDispatch) dispatchForwardConcatLayer:a2 sourceTensors:? resultTensor:?];
  }
}

- (void)accumulateParams:(void *)params gradients:(void *)gradients accumulators:(void *)accumulators numOfParameters:(unint64_t)parameters inArrayOfParams:(id)ofParams
{
  v8 = [MLCLog framework:params];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCEngineDispatch) dispatchForwardConcatLayer:a2 sourceTensors:? resultTensor:?];
  }
}

- (void)updateAllParametersWithOptimizer:(id)optimizer arrayOfParameters:(id)parameters
{
  v5 = [MLCLog framework:optimizer];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCEngineDispatch) dispatchForwardConcatLayer:a2 sourceTensors:? resultTensor:?];
  }
}

- (void)initWithType:(const char *)a1 .cold.1(const char *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)allocateDeviceMemoryForTensor:(const char *)a1 .cold.1(const char *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)allocateDeviceMemoryForTensor:(const char *)a1 .cold.2(const char *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)allocateDeviceMemoryForTensor:(const char *)a1 .cold.3(const char *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)getHostPointerIfUnifiedDeviceMemory:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_6(&dword_238C1D000, v0, v1, "%s: no IOSurface allocated for tensor=%@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)readTensor:fromDeviceIndex:targetBuffer:batchSize:.cold.1()
{
  OUTLINED_FUNCTION_5_0();
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(v0);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)writeToDevice:(const char *)a1 toDeviceIndex:batchSize:.cold.1(const char *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)writeToDevice:toDeviceIndex:batchSize:.cold.2()
{
  OUTLINED_FUNCTION_5_0();
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(v0);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)writeToDevice:toDeviceIndex:batchSize:.cold.3()
{
  OUTLINED_FUNCTION_5_0();
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(v0);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)writeToDevice:toDeviceIndex:batchSize:.cold.4()
{
  OUTLINED_FUNCTION_5_0();
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(v0);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)allocateDeviceMemoryForSourceAndResultTensorsOfLayer:tensorLabelToIOSurfaceMap:.cold.1()
{
  OUTLINED_FUNCTION_5_0();
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(v0);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)procedureInformationWithModelAttributes:(const char *)a1 procedureName:procedureID:procedureInputSymbols:procedureInputSymbolIndices:procedureOutputSymbols:procedureOutputSymbolIndices:.cold.8(const char *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)ANERequestWithModelAttributes:procedureName:tensorLabelToIOSurfaceMap:.cold.1()
{
  OUTLINED_FUNCTION_5_0();
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(v0);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)ANERequestWithModelAttributes:procedureName:tensorLabelToIOSurfaceMap:.cold.2()
{
  OUTLINED_FUNCTION_5_0();
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(v0);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)ANERequestWithModelAttributes:(const char *)a1 procedureName:tensorLabelToIOSurfaceMap:.cold.3(const char *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)postProcessCompiledGraph:compilerOptions:.cold.1()
{
  OUTLINED_FUNCTION_5_0();
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(v0);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)postProcessCompiledGraph:compilerOptions:.cold.2()
{
  OUTLINED_FUNCTION_5_0();
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(v0);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)postProcessCompiledGraph:compilerOptions:.cold.3()
{
  OUTLINED_FUNCTION_5_0();
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(v0);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)postProcessCompiledGraph:(const char *)a1 compilerOptions:.cold.4(const char *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)postProcessCompiledGraph:(uint64_t)a1 compilerOptions:(uint64_t)a2 .cold.5(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_5_1(a1, a2);
  v5 = NSStringFromSelector(v4);
  *v3 = 138412290;
  *v2 = v5;
  OUTLINED_FUNCTION_6_1(&dword_238C1D000, v6, v7, "%@: failed to create ANE model descriptor");
}

- (void)postProcessCompiledGraph:(uint64_t)a1 compilerOptions:(uint64_t)a2 .cold.6(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_5_1(a1, a2);
  v5 = NSStringFromSelector(v4);
  *v3 = 138412290;
  *v2 = v5;
  OUTLINED_FUNCTION_6_1(&dword_238C1D000, v6, v7, "%@: failed to convert the ANEC IR plist in dictionary to NSData");
}

- (void)postProcessCompiledGraph:compilerOptions:.cold.7()
{
  OUTLINED_FUNCTION_5_0();
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(v0);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)postProcessCompiledGraph:(uint64_t)a1 compilerOptions:(uint64_t)a2 .cold.8(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_5_1(a1, a2);
  v5 = NSStringFromSelector(v4);
  *v3 = 138412290;
  *v2 = v5;
  OUTLINED_FUNCTION_6_1(&dword_238C1D000, v6, v7, "%@: failed to build an ANE request");
}

- (void)postProcessCompiledGraph:(const char *)a1 compilerOptions:(NSObject *)a2 .cold.9(const char *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(&dword_238C1D000, a2, OS_LOG_TYPE_DEBUG, "%@: no ANE compiled layer in the graph", v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

- (void)postProcessCompiledGraph:compilerOptions:.cold.10()
{
  OUTLINED_FUNCTION_5_0();
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(v0);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)transferTensor:fromDevice:.cold.1()
{
  OUTLINED_FUNCTION_5_0();
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(v0);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
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

- (void)transferTensor:fromDevice:.cold.3()
{
  OUTLINED_FUNCTION_5_0();
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(v0);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)transferTensor:fromDevice:.cold.4()
{
  OUTLINED_FUNCTION_5_0();
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(v0);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)setDeviceMemoryForTensor:(const char *)a1 data:.cold.1(const char *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)updateDeviceMemoryForTensor:(const char *)a1 .cold.1(const char *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)updateDeviceMemoryForTensor:(const char *)a1 .cold.2(const char *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

@end