@interface MLCDeviceANE
+ (BOOL)hasANE;
- (BOOL)allocateDeviceMemoryForSourceAndResultTensorsOfLayer:(id)a3 tensorLabelToIOSurfaceMap:(id *)a4;
- (BOOL)compileLayerDeviceOps:(id)a3 sourceTensors:(id)a4 resultTensor:(id)a5;
- (BOOL)compileOptimizerDeviceOps:(id)a3;
- (BOOL)needToAllocateDeviceMemoryForTensor:(id)a3;
- (BOOL)postProcessCompiledGraph:(id)a3 compilerOptions:(unint64_t)a4;
- (BOOL)procedureInformationWithModelAttributes:(id)a3 procedureName:(id)a4 procedureID:(unint64_t *)a5 procedureInputSymbols:(id *)a6 procedureInputSymbolIndices:(id *)a7 procedureOutputSymbols:(id *)a8 procedureOutputSymbolIndices:(id *)a9;
- (BOOL)setConvolutionLayerOptimizerDataForDeviceOps:(id)a3 weights:(id)a4 bias:(id)a5;
- (BOOL)setLSTMLayerOptimizerDataForDeviceOps:(id)a3 inputWeights:(id)a4 hiddenWeights:(id)a5 biasTerms:(id)a6;
- (BOOL)setMHALayerOptimizerDataForDeviceOps:(id)a3 optimizerDataForWeights:(id)a4 optimizerDataForBias:(id)a5;
- (BOOL)setNormalizationLayerOptimizerDataForDeviceOps:(id)a3 beta:(id)a4 gamma:(id)a5;
- (BOOL)shareDeviceMemoryWithResultTensor:(id)a3 sourceTensor:(id)a4;
- (BOOL)transferTensor:(id)a3 fromDevice:(id)a4;
- (BOOL)updateDeviceMemoryForTensor:(id)a3;
- (BOOL)updateTensorsForFusedLayers:(id)a3 ofInferenceGraph:(id)a4;
- (MLCDeviceANE)initWithType:(int)a3;
- (NSString)description;
- (id)ANERequestWithModelAttributes:(id)a3 procedureName:(id)a4 tensorLabelToIOSurfaceMap:(id)a5;
- (id)batchNormalizationLayerWithChannelCount:(unint64_t)a3 mean:(id)a4 variance:(id)a5 beta:(id)a6 gamma:(id)a7 varianceEpsilon:(float)a8 momentum:(float)a9;
- (id)convolutionTransposeLayerWithDescriptor:(id)a3 weights:(id)a4 biasTerms:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dropoutLayerWithRate:(float)a3 seed:(unint64_t)a4;
- (id)fusedBatchNormalizationAndNeuronLayerWithDescriptor:(id)a3 numOfFeatureChannels:(unint64_t)a4 mean:(id)a5 variance:(id)a6 beta:(id)a7 gamma:(id)a8 varianceEpsilon:(float)a9 momentum:(float)a10;
- (id)fusedConvolutionAndNeuronLayerWithDescriptor:(id)a3 convolutionDescriptor:(id)a4 weights:(id)a5 biasTerms:(id)a6;
- (id)fusedConvolutionBatchNormalizationAndNeuronLayerWithDescriptor:(id)a3 mean:(id)a4 variance:(id)a5 beta:(id)a6 gamma:(id)a7 varianceEpsilon:(float)a8 momentum:(float)a9 neuronDescriptor:(id)a10 weights:(id)a11 biasTerms:(id)a12;
- (id)fusedFullyConnectedAndNeuronLayerWithDescriptor:(id)a3 convolutionDescriptor:(id)a4 weights:(id)a5 biasTerms:(id)a6;
- (id)fusedFullyConnectedBatchNormalizationAndNeuronLayerWithDescriptor:(id)a3 mean:(id)a4 variance:(id)a5 beta:(id)a6 gamma:(id)a7 varianceEpsilon:(float)a8 momentum:(float)a9 neuronDescriptor:(id)a10 weights:(id)a11 biasTerms:(id)a12;
- (id)getHostPointerIfUnifiedDeviceMemory:(id)a3;
- (id)gramMatrixLayerWithScaleFactor:(float)a3;
- (id)groupNormalizationLayerWithFeatureChannelCount:(unint64_t)a3 groupCount:(unint64_t)a4 beta:(id)a5 gamma:(id)a6 varianceEpsilon:(float)a7;
- (id)instanceNormalizationLayerWithChannelCount:(unint64_t)a3 mean:(id)a4 variance:(id)a5 beta:(id)a6 gamma:(id)a7 varianceEpsilon:(float)a8 momentum:(float)a9;
- (id)lossLayerWithDescriptor:(id)a3;
- (id)lossYOLOLayerWithDescriptor:(id)a3;
- (id)lstmLayerWithDescriptor:(id)a3 inputWeights:(id)a4 hiddenWeights:(id)a5 peepholeWeights:(id)a6 biasTerms:(id)a7 gateActivations:(id)a8 outputResultActivation:(id)a9 inferenceOnly:(BOOL)a10;
- (id)partitionInferenceGraph:(id)a3 startAtLayerIndex:(unint64_t)a4 aneDevice:(id)a5 secondaryDevice:(id)a6;
- (id)partitionInferenceGraph:(id)a3 startAtLayerIndex:(unint64_t)a4 aneDevice:(id)a5 secondaryDevice:(id)a6 configurationJSON:(id)a7;
- (id)readTensor:(id)a3;
- (id)readTensor:(id)a3 fromDeviceIndex:(unint64_t)a4;
- (id)readTensor:(id)a3 fromDeviceIndex:(unint64_t)a4 batchSize:(unint64_t)a5;
- (unint64_t)deviceMemorySizeForTensor:(id)a3 interleave:(unint64_t *)a4;
- (void)accumulateParams:(void *)a3 gradients:(void *)a4 accumulators:(void *)a5 numOfParameters:(unint64_t)a6 inArrayOfParams:(id)a7;
- (void)allocateDeviceDataForGlobalNormClippingWithOptimizer:(id)a3 updatableParameterCount:(unint64_t)a4;
- (void)allocateDeviceMemoryForTensor:(id)a3;
- (void)broadcastTensor:(id)a3;
- (void)commitAndWaitForCompletion:(id)a3 enableProfiling:(BOOL)a4 graphExecutionTime:(id)a5 graphResultTensor:(id)a6;
- (void)convertUpdatesToTensorDataForLayer:(id)a3;
- (void)convertUpdatesToTensorDataForTensorParameters:(id)a3;
- (void)deallocateDeviceMemoryForTensor:(id)a3;
- (void)dispatchForwardAndGradientLossLayer:(id)a3 sourceTensor:(id)a4 labelsTensor:(id)a5 labelsTensorStride:(unint64_t)a6 weightsTensor:(id)a7 resultTensor:(id)a8 resultGradientTensor:(id)a9;
- (void)dispatchForwardConcatLayer:(id)a3 sourceTensors:(id)a4 resultTensor:(id)a5;
- (void)dispatchForwardEmbeddingLayer:(id)a3 weight:(id)a4 sourceTensor:(id)a5 resultTensor:(id)a6;
- (void)dispatchForwardLayer:(id)a3;
- (void)dispatchForwardLossLayer:(id)a3 sourceTensor:(id)a4 labelsTensor:(id)a5 labelsTensorStride:(unint64_t)a6 weightsTensor:(id)a7 resultTensor:(id)a8 resultStateIsTemporary:(BOOL)a9 forTraining:(BOOL)a10;
- (void)dispatchForwardMatMulLayer:(id)a3 sourceTensors:(id)a4 resultTensor:(id)a5;
- (void)dispatchForwardSplitLayer:(id)a3 sourceTensor:(id)a4 resultTensors:(id)a5;
- (void)dispatchGradientConcatLayer:(id)a3 sourceGradientTensor:(id)a4 resultGradientTensors:(id)a5;
- (void)dispatchGradientEmbeddingLayer:(id)a3 sourceGradientTensor:(id)a4;
- (void)dispatchGradientLayer:(id)a3 sourceGradientTensor:(id)a4 resultGradientTensor:(id)a5;
- (void)dispatchGradientLayer:(id)a3 sourceGradientTensor:(id)a4 resultGradientTensor:(id)a5 secondaryResultGradientTensor:(id)a6;
- (void)dispatchGradientLossLayer:(id)a3 sourceGradientTensor:(id)a4 labelsTensor:(id)a5 labelsTensorStride:(unint64_t)a6 weightsTensor:(id)a7 resultGradientTensor:(id)a8;
- (void)dispatchGradientMatMulLayer:(id)a3 sourceGradientTensor:(id)a4 resultGradientTensors:(id)a5;
- (void)dispatchGradientReshapeLayer:(id)a3 sourceGradientTensor:(id)a4 resultGradientTensor:(id)a5;
- (void)dispatchGradientSelectLayer:(id)a3 conditionTensor:(id)a4 sourceGradientTensor:(id)a5 resultGradientTensors:(id)a6;
- (void)dispatchGradientSliceLayer:(id)a3 sourceGradientTensor:(id)a4 resultGradientTensor:(id)a5;
- (void)dispatchGradientSplitLayer:(id)a3 sourceGradientTensors:(id)a4 resultGradientTensor:(id)a5;
- (void)dispatchRNNForwardLayer:(id)a3 sourceTensors:(id)a4 resultTensors:(id)a5;
- (void)dispatchRNNGradientLayer:(id)a3 sourceGradientTensors:(id)a4 resultGradientTensors:(id)a5;
- (void)dispatchReadTensor:(id)a3 targetBuffer:(void *)a4 batchSize:(unint64_t)a5;
- (void)fuseLayersForInferenceGraph:(id)a3 startAtLayerIndex:(unint64_t)a4;
- (void)fuseLayersForTrainingGraph:(id)a3 stopGradientTensorList:(id)a4;
- (void)incrementReadCountForGradientState:(id)a3 increment:(int64_t)a4;
- (void)incrementReadCountForTensorDeviceMemory:(id)a3 increment:(int64_t)a4;
- (void)optimizeComputationForTrainingGraph:(id)a3;
- (void)readTensor:(id)a3 fromDeviceIndex:(unint64_t)a4 targetBuffer:(void *)a5 batchSize:(unint64_t)a6;
- (void)readTensor:(id)a3 targetBuffer:(void *)a4;
- (void)reloadParameterDataFromHostToDeviceMemoryForTensor:(id)a3;
- (void)resetLayer:(id)a3;
- (void)restoreRNNParamsWithDeviceOps:(id)a3 optimizer:(id)a4 inputWeightsParameter:(id)a5 hiddenWeightsParameter:(id)a6 biasesParameter:(id)a7 arrayOfParams:(id)a8;
- (void)saveGraphPartitioning:(id)a3 toFile:(id)a4;
- (void)setDeviceMemoryForTensor:(id)a3 data:(id)a4;
- (void)setOptimizerLearningRate:(id)a3 learningRate:(float)a4;
- (void)setOptimizerTimeStep:(id)a3 timeStep:(unint64_t)a4;
- (void)sumSharedGradientsForConvolutionLayerTensorParameter:(id)a3 layerIndexForSummedGradients:(unint64_t)a4;
- (void)synchronizeOptimizerUpdatesForTensor:(id)a3;
- (void)synchronizeUpdatesForLayer:(id)a3;
- (void)updateAllParametersWithOptimizer:(id)a3 arrayOfParameters:(id)a4;
- (void)updateBatchNormalizationLayer:(id)a3 optimizer:(id)a4 betaParameter:(id)a5 gammaParameter:(id)a6 meanTensor:(id)a7 varianceTensor:(id)a8 arrayOfParams:(id)a9;
- (void)updateConvolutionLayer:(id)a3 optimizer:(id)a4 weightsParameter:(id)a5 biasesParameter:(id)a6 arrayOfParams:(id)a7;
- (void)updateEmbeddingLayer:(id)a3 weightsParameter:(id)a4 optimizer:(id)a5 arrayOfParams:(id)a6;
- (void)updateFullyConnectedLayer:(id)a3 optimizer:(id)a4 weightsParameter:(id)a5 biasesParameter:(id)a6 arrayOfParams:(id)a7;
- (void)updateGroupNormalizationLayer:(id)a3 optimizer:(id)a4 betaParameter:(id)a5 gammaParameter:(id)a6 arrayOfParams:(id)a7;
- (void)updateInstanceNormalizationLayer:(id)a3 optimizer:(id)a4 betaParameter:(id)a5 gammaParameter:(id)a6 arrayOfParams:(id)a7;
- (void)updateLayerNormalizationLayer:(id)a3 optimizer:(id)a4 betaParameter:(id)a5 gammaParameter:(id)a6 arrayOfParams:(id)a7;
- (void)updateMultiheadAttentionLayer:(id)a3 optimizer:(id)a4 weightsParameter:(id)a5 biasesParameter:(id)a6 arrayOfParams:(id)a7;
- (void)updateRNNLayer:(id)a3 optimizer:(id)a4 inputWeightsParameter:(id)a5 hiddenWeightsParameter:(id)a6 biasesParameter:(id)a7 arrayOfParams:(id)a8;
- (void)updateTensorParameter:(id)a3 optimizer:(id)a4 gradient:(id)a5 arrayOfParams:(id)a6;
- (void)writeToAllDevices:(id)a3 allocateData:(BOOL)a4 batchSize:(unint64_t)a5;
- (void)writeToDevice:(id)a3 toDeviceIndex:(unint64_t)a4 batchSize:(unint64_t)a5;
@end

@implementation MLCDeviceANE

- (id)convolutionTransposeLayerWithDescriptor:(id)a3 weights:(id)a4 biasTerms:(id)a5
{
  v6 = [MLCLog framework:a3];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCLayerOperations) convolutionTransposeLayerWithDescriptor:a2 weights:? biasTerms:?];
  }

  return MEMORY[0x277CBEBF8];
}

- (id)batchNormalizationLayerWithChannelCount:(unint64_t)a3 mean:(id)a4 variance:(id)a5 beta:(id)a6 gamma:(id)a7 varianceEpsilon:(float)a8 momentum:(float)a9
{
  v24[1] = *MEMORY[0x277D85DE8];
  v14 = MEMORY[0x277CCABB0];
  v15 = a7;
  v16 = a6;
  v17 = a5;
  v18 = a4;
  v19 = [v14 numberWithUnsignedInteger:a3];
  v24[0] = v19;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
  v21 = ANE_CreateNormalizationLayer(0, 0, v20, a8, 1, v18, v17, v16, v15);

  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

- (id)instanceNormalizationLayerWithChannelCount:(unint64_t)a3 mean:(id)a4 variance:(id)a5 beta:(id)a6 gamma:(id)a7 varianceEpsilon:(float)a8 momentum:(float)a9
{
  v24[1] = *MEMORY[0x277D85DE8];
  v14 = MEMORY[0x277CCABB0];
  v15 = a7;
  v16 = a6;
  v17 = a5;
  v18 = a4;
  v19 = [v14 numberWithUnsignedInteger:a3];
  v24[0] = v19;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
  v21 = ANE_CreateNormalizationLayer(1, 0, v20, a8, 1, v18, v17, v16, v15);

  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

- (id)groupNormalizationLayerWithFeatureChannelCount:(unint64_t)a3 groupCount:(unint64_t)a4 beta:(id)a5 gamma:(id)a6 varianceEpsilon:(float)a7
{
  v19[1] = *MEMORY[0x277D85DE8];
  v11 = MEMORY[0x277CCABB0];
  v12 = a6;
  v13 = a5;
  v14 = [v11 numberWithUnsignedInteger:a3];
  v19[0] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
  v16 = ANE_CreateNormalizationLayer(3, 0, v15, a7, a4, 0, 0, v13, v12);

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)lossLayerWithDescriptor:(id)a3
{
  v4 = +[MLCLog framework];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCLayerOperations) lossLayerWithDescriptor:a2];
  }

  return MEMORY[0x277CBEBF8];
}

- (id)lossYOLOLayerWithDescriptor:(id)a3
{
  v4 = +[MLCLog framework];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCLayerOperations) lossLayerWithDescriptor:a2];
  }

  return MEMORY[0x277CBEBF8];
}

- (id)dropoutLayerWithRate:(float)a3 seed:(unint64_t)a4
{
  v5 = +[MLCLog framework];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCLayerOperations) lossLayerWithDescriptor:a2];
  }

  return MEMORY[0x277CBEBF8];
}

- (id)lstmLayerWithDescriptor:(id)a3 inputWeights:(id)a4 hiddenWeights:(id)a5 peepholeWeights:(id)a6 biasTerms:(id)a7 gateActivations:(id)a8 outputResultActivation:(id)a9 inferenceOnly:(BOOL)a10
{
  v11 = [MLCLog framework:a3];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCLayerOperations) lossLayerWithDescriptor:a2];
  }

  return MEMORY[0x277CBEBF8];
}

- (id)gramMatrixLayerWithScaleFactor:(float)a3
{
  v4 = +[MLCLog framework];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCLayerOperations) convolutionTransposeLayerWithDescriptor:a2 weights:? biasTerms:?];
  }

  return MEMORY[0x277CBEBF8];
}

- (BOOL)setConvolutionLayerOptimizerDataForDeviceOps:(id)a3 weights:(id)a4 bias:(id)a5
{
  v6 = [MLCLog framework:a3];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCLayerOperations) lossLayerWithDescriptor:a2];
  }

  return 0;
}

- (BOOL)setMHALayerOptimizerDataForDeviceOps:(id)a3 optimizerDataForWeights:(id)a4 optimizerDataForBias:(id)a5
{
  v6 = [MLCLog framework:a3];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCLayerOperations) lossLayerWithDescriptor:a2];
  }

  return 0;
}

- (BOOL)setNormalizationLayerOptimizerDataForDeviceOps:(id)a3 beta:(id)a4 gamma:(id)a5
{
  v6 = [MLCLog framework:a3];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCLayerOperations) lossLayerWithDescriptor:a2];
  }

  return 0;
}

- (BOOL)setLSTMLayerOptimizerDataForDeviceOps:(id)a3 inputWeights:(id)a4 hiddenWeights:(id)a5 biasTerms:(id)a6
{
  v7 = [MLCLog framework:a3];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCLayerOperations) lossLayerWithDescriptor:a2];
  }

  return 0;
}

- (void)allocateDeviceDataForGlobalNormClippingWithOptimizer:(id)a3 updatableParameterCount:(unint64_t)a4
{
  v5 = [MLCLog framework:a3];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCLayerOperations) lossLayerWithDescriptor:a2];
  }
}

- (void)resetLayer:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a3;
  [v3 setDevice:0];
  [v3 setDeviceOps:MEMORY[0x277CBEBF8]];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = [v3 resultTensors];
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(v4);
        }

        [*(*(&v10 + 1) + 8 * v8++) setDevice:0];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (id)partitionInferenceGraph:(id)a3 startAtLayerIndex:(unint64_t)a4 aneDevice:(id)a5 secondaryDevice:(id)a6 configurationJSON:(id)a7
{
  v55 = a4;
  v80 = *MEMORY[0x277D85DE8];
  v62 = a5;
  v10 = a6;
  v11 = a7;
  v12 = [a3 graphLayerList];
  v13 = [MEMORY[0x277CBEC10] mutableCopy];
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v14 = v12;
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
        v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v19, "layerID", v55)}];
        [v13 setObject:v19 forKeyedSubscript:v20];
      }

      v16 = [v14 countByEnumeratingWithState:&v73 objects:v79 count:16];
    }

    while (v16);
  }

  v57 = v10;
  v59 = v14;

  v21 = MEMORY[0x277CBEBF8];
  v63 = [MEMORY[0x277CBEBF8] mutableCopy];
  v64 = [v21 mutableCopy];
  v22 = [MEMORY[0x277CBEB58] set];
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v56 = v11;
  obj = [v11 objectForKeyedSubscript:@"ane_subgraphs"];
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
        v35 = [MLCDeviceGraph deviceGraphWithLayers:v34 device:v62];

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
  v41 = v55;
  if (v40 > v55)
  {
    v42 = v40;
    do
    {
      v43 = v41;
      v44 = [v59 objectAtIndexedSubscript:v55];
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
                v51 = [v50 graphLayerList];
                [v51 addObject:v44];
              }
            }
          }
        }

        else
        {
          [(MLCDeviceANE *)self resetLayer:v44];
          v52 = [v39 graphLayerList];
          [v52 addObject:v44];
        }
      }

      v41 = v43 + 1;
    }

    while (v43 + 1 != v42);
  }

  [v63 addObject:{v39, v55}];

  v53 = *MEMORY[0x277D85DE8];

  return v63;
}

- (void)saveGraphPartitioning:(id)a3 toFile:(id)a4
{
  v40 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v26 = a4;
  v6 = [MEMORY[0x277CBEC10] mutableCopy];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = v5;
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
        v9 = [v8 graphLayerList];
        v10 = [v9 lastObject];
        v11 = [v10 device];
        v12 = [v11 type];

        if (v12)
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
        v15 = [v8 graphLayerList];
        v16 = [v15 countByEnumeratingWithState:&v30 objects:v38 count:16];
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
                objc_enumerationMutation(v15);
              }

              v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(*(&v30 + 1) + 8 * j), "layerID")}];
              [v14 addObject:v20];
            }

            v17 = [v15 countByEnumeratingWithState:&v30 objects:v38 count:16];
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

  v24 = [MEMORY[0x277CBEB78] outputStreamToFileAtPath:v26 append:0];
  [v24 open];
  [MEMORY[0x277CCAAA0] writeJSONObject:v6 toStream:v24 options:1 error:0];
  [v24 close];

  v25 = *MEMORY[0x277D85DE8];
}

- (id)partitionInferenceGraph:(id)a3 startAtLayerIndex:(unint64_t)a4 aneDevice:(id)a5 secondaryDevice:(id)a6
{
  v187 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = [v10 graphLayerList];
  v14 = v13;
  if (!v13 || ![v13 count])
  {
    v39 = +[MLCLog framework];
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      [MLCDeviceANE(MLCLayerOperations) partitionInferenceGraph:a2 startAtLayerIndex:? aneDevice:? secondaryDevice:?];
    }

    goto LABEL_27;
  }

  if (!v11 || !v12)
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
  v158 = v12;
  if (([v10 compilerOptions] & 3) == 0)
  {
    [MLCComputeEngineCommon applyPatternMatcherForGraph:v14 stopGradientTensorList:0 startAtLayerIndex:a4 forInference:1];
  }

  v15 = MEMORY[0x277CBEBF8];
  v159 = [MEMORY[0x277CBEBF8] mutableCopy];
  v161 = [v15 mutableCopy];
  v164 = [MEMORY[0x277CBEC10] mutableCopy];
  v160 = objc_opt_new();
  v163 = v14;
  v16 = [v14 count];
  v162 = v11;
  if (v16 > a4)
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
        v22 = [v18 sourceTensors];
        v23 = [v18 resultTensors];
        v24 = v23;
        if (isKindOfClass)
        {
          v25 = [v18 compileForDevice:v11 sourceTensors:v22 resultTensors:v23];

          if (v25)
          {
            goto LABEL_17;
          }
        }

        else
        {
          v27 = [v23 objectAtIndexedSubscript:0];
          v28 = [v18 compileForDevice:v11 sourceTensors:v22 resultTensor:v27];

          if (v28)
          {
LABEL_17:
            v29 = [v18 resultTensors];
            v30 = [v29 count];

            v11 = v162;
            if (v30)
            {
              v31 = 0;
              do
              {
                v32 = [v18 resultTensors];
                v33 = [v32 objectAtIndexedSubscript:v31];
                [v33 setDevice:v162];

                ++v31;
                v34 = [v18 resultTensors];
                v35 = [v34 count];
              }

              while (v31 < v35);
            }

            v36 = [v18 deviceOps];
            v37 = [v36 objectAtIndexedSubscript:0];

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
        v11 = v162;
        if ((ANE_IsSupportedLayer(v18) & 1) == 0)
        {
          [v161 addObject:v18];
        }
      }

LABEL_21:
    }

    while (v17 > a4);
  }

  v157 = v10;
  if (([v10 compilerOptions] & 3) != 0)
  {
    v169 = v160;
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
          v49 = [v48 sourceTensors];
          v50 = [v49 count];
          v51 = [v48 resultTensors];
          v52 = [v51 count] + v50;

          if (v52 <= 0xFF)
          {
            v53 = [v48 deviceOps];
            v54 = [v53 objectAtIndexedSubscript:0];

            if (v52 + v45 <= 0xFF)
            {
              [v54 setPlistBuilder:v169];
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
              v169 = v55;
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
      v10 = v157;
      v12 = v158;
      v11 = v162;
      v14 = v163;
      v39 = v159;
      v56 = v161;
      v40 = MEMORY[0x277CBEBF8];
    }

    else
    {
      v40 = MEMORY[0x277CBEBF8];
      v12 = v158;
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
  v169 = v59;
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

    v65 = v169;
LABEL_59:

LABEL_60:
    v169 = [_MLCANEDomTree computeDominationForGraph:v14, a4];
    v67 = [MEMORY[0x277CBEBF8] mutableCopy];
    v68 = [MEMORY[0x277CBEB58] set];
    v172 = 0u;
    v173 = 0u;
    v174 = 0u;
    v175 = 0u;
    v69 = [v14 reverseObjectEnumerator];
    v70 = [v69 countByEnumeratingWithState:&v172 objects:v181 count:16];
    obj = v67;
    v165 = v68;
    if (!v70)
    {
      goto LABEL_73;
    }

    v71 = v70;
    v72 = *v173;
    v167 = v69;
    while (1)
    {
      for (j = 0; j != v71; ++j)
      {
        if (*v173 != v72)
        {
          objc_enumerationMutation(v69);
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
            buildANESubgraph(v74, v75, v76, v169, v68, v164, [v78 unsignedIntegerValue]);

            if (![v75 count])
            {
              v153 = +[MLCLog framework];
              v11 = v162;
              if (os_log_type_enabled(v153, OS_LOG_TYPE_ERROR))
              {
                [MLCDeviceANE(MLCLayerOperations) partitionInferenceGraph:startAtLayerIndex:aneDevice:secondaryDevice:];
              }

              v40 = MEMORY[0x277CBEBF8];
              v10 = v157;
              v12 = v158;
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
            v69 = v167;
          }
        }
      }

      v71 = [v69 countByEnumeratingWithState:&v172 objects:v181 count:16];
      if (!v71)
      {
LABEL_73:

        [v68 removeAllObjects];
        v79 = [v67 count];
        v80 = v169;
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

                    v80 = v169;
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

            v107 = [v101 graphLayerList];
            if ([v107 count] <= 1)
            {
              break;
            }

            v108 = [v102 objectAtIndexedSubscript:v105];
            v109 = [v108 anyObject];
            v110 = [v109 isDebuggingEnabled];

            if ((v110 & 1) == 0)
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
                      v149 = [v148 graphLayerList];
                      [v149 addObject:v142];
                    }
                  }
                }
              }

              else
              {
                [(MLCDeviceANE *)self resetLayer:v142];
                v150 = [v167 graphLayerList];
                [v150 addObject:v142];
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
          v10 = v157;
          v12 = v158;
          v11 = v162;
          v39 = v159;
          goto LABEL_137;
        }

        v10 = v157;
        v12 = v158;
        v11 = v162;
        v39 = v159;
        v154 = v165;
LABEL_139:

        goto LABEL_140;
      }
    }
  }

  v12 = v158;
  obj = v60;
  v40 = [(MLCDeviceANE *)self partitionInferenceGraph:v10 startAtLayerIndex:a4 aneDevice:v11 secondaryDevice:v158 configurationJSON:v60];
LABEL_140:

LABEL_28:
  v41 = *MEMORY[0x277D85DE8];

  return v40;
}

- (BOOL)updateTensorsForFusedLayers:(id)a3 ofInferenceGraph:(id)a4
{
  v95 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  v7 = a4;
  v8 = [v7 countByEnumeratingWithState:&v86 objects:v94 count:16];
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
        objc_enumerationMutation(v7);
      }

      v12 = *(*(&v86 + 1) + 8 * v11);
      if (ANE_IsAneCompiledLayer(v12))
      {
        break;
      }

      if (v9 == ++v11)
      {
        v9 = [v7 countByEnumeratingWithState:&v86 objects:v94 count:16];
        if (v9)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v13 = [v12 deviceOps];
    v14 = [v13 objectAtIndexedSubscript:0];

    v15 = [v14 plistBuilder];

    if (!v15)
    {
      goto LABEL_56;
    }

    v16 = [MEMORY[0x277CBEB98] setWithArray:v7];
    v17 = ANE_ComputeLiveInputs(v16);

    v18 = [v17 allObjects];
    if ([v18 count])
    {
      v19 = [MEMORY[0x277CBEB98] setWithArray:v7];
      v20 = ANE_ComputeLiveOutputs(v19);

      v21 = [v20 allObjects];
      if (([v15 buildProcedureWithRootLayer:v6 aneSubgraphLayerList:v7 liveInputs:v17 liveOutputs:v20]& 1) != 0)
      {
        v65 = v21;
        v66 = v18;
        v62 = v17;
        v63 = v15;
        v84 = 0u;
        v85 = 0u;
        v82 = 0u;
        v83 = 0u;
        v64 = v7;
        v22 = v7;
        v23 = [v22 countByEnumeratingWithState:&v82 objects:v93 count:16];
        v69 = v6;
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
              if (v27 != v6)
              {
                v28 = [v6 fusedLayers];
                [v28 addObject:v27];

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
                v29 = [v27 resultTensors];
                v30 = [v29 countByEnumeratingWithState:&v78 objects:v92 count:16];
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
                        objc_enumerationMutation(v29);
                      }

                      if ([v20 containsObject:*(*(&v78 + 1) + 8 * j)])
                      {
                        [v27 setIsLastFusedLayer:1];
                        goto LABEL_32;
                      }
                    }

                    v31 = [v29 countByEnumeratingWithState:&v78 objects:v92 count:16];
                    if (v31)
                    {
                      continue;
                    }

                    break;
                  }
                }

LABEL_32:

                v6 = v69;
              }
            }

            v24 = [v22 countByEnumeratingWithState:&v82 objects:v93 count:16];
          }

          while (v24);
        }

        v34 = [MEMORY[0x277CBEB98] setWithArray:v22];
        v35 = [v66 mutableCopy];
        [v6 setSourceTensors:v35];

        v76 = 0u;
        v77 = 0u;
        v74 = 0u;
        v75 = 0u;
        obj = [v6 sourceTensors];
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
              v40 = [MEMORY[0x277CCAB58] indexSet];
              v41 = [v39 childLayers];
              v42 = [v41 count];

              if (v42)
              {
                for (m = 0; m != v42; ++m)
                {
                  v44 = [v39 childLayers];
                  v45 = [v44 objectAtIndexedSubscript:m];

                  if ([v34 containsObject:v45])
                  {
                    [v40 addIndex:m];
                  }
                }
              }

              v46 = [v39 childLayers];
              [v46 removeObjectsAtIndexes:v40];

              v47 = [v39 childLayers];
              v6 = v69;
              [v47 addObject:v69];
            }

            v37 = [obj countByEnumeratingWithState:&v74 objects:v91 count:16];
          }

          while (v37);
        }

        v48 = [v65 mutableCopy];
        [v6 setResultTensors:v48];

        v72 = 0u;
        v73 = 0u;
        v70 = 0u;
        v71 = 0u;
        v49 = [v6 resultTensors];
        v50 = [v49 countByEnumeratingWithState:&v70 objects:v90 count:16];
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
                objc_enumerationMutation(v49);
              }

              v54 = *(*(&v70 + 1) + 8 * n);
              v55 = [v54 parentLayers];
              v56 = [v55 count];

              if (!v56)
              {
                v59 = +[MLCLog framework];
                if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
                {
                  [MLCDeviceANE(MLCLayerOperations) updateTensorsForFusedLayers:ofInferenceGraph:];
                }

                v58 = 0;
                v6 = v69;
                goto LABEL_68;
              }

              v57 = [v54 parentLayers];
              v6 = v69;
              [v57 setObject:v69 atIndexedSubscript:0];
            }

            v51 = [v49 countByEnumeratingWithState:&v70 objects:v90 count:16];
            if (v51)
            {
              continue;
            }

            break;
          }
        }

        v58 = 1;
LABEL_68:
        v7 = v64;

        v17 = v62;
        v15 = v63;
        v21 = v65;
        v18 = v66;
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
    v15 = +[MLCLog framework];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [MLCDeviceANE(MLCLayerOperations) updateTensorsForFusedLayers:a2 ofInferenceGraph:?];
    }

    v58 = 0;
  }

  v60 = *MEMORY[0x277D85DE8];
  return v58;
}

- (void)fuseLayersForTrainingGraph:(id)a3 stopGradientTensorList:(id)a4
{
  v24 = a3;
  v5 = a4;
  if (v24)
  {
    if ([v24 count] >= 2)
    {
      v6 = [v24 count];
      v7 = v24;
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
            v10 = [v9 resultTensors];
            v11 = [v10 objectAtIndexedSubscript:0];
            v12 = [v11 childLayers];
            v13 = [v12 count];

            if (v13 == 1)
            {
              v14 = [v9 resultTensors];
              v15 = [v14 objectAtIndexedSubscript:0];
              v16 = [v15 childLayers];
              v17 = [v16 objectAtIndexedSubscript:0];

              if (([v17 skipLayer] & 1) == 0)
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v18 = [v17 resultTensors];
                    v19 = [v18 objectAtIndexedSubscript:0];

                    v20 = [v9 resultTensors];
                    [v20 setObject:v19 atIndexedSubscript:0];

                    v21 = [v19 parentLayers];
                    [v21 setObject:v9 atIndexedSubscript:0];

                    v22 = [v9 fusedLayers];
                    [v22 addObject:v17];

                    [v17 setSkipLayer:1];
                  }
                }
              }
            }
          }

          ++v8;
          v23 = [v24 count];
          v7 = v24;
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

- (void)fuseLayersForInferenceGraph:(id)a3 startAtLayerIndex:(unint64_t)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = v6;
  if (v6 && [v6 count])
  {
    v8 = [v7 lastObject];
    if ([(MLCDeviceANE *)self updateTensorsForFusedLayers:v8 ofInferenceGraph:v7])
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
            v14 = [v13 fusedLayers];
            v15 = [v14 count];

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
        v25 = v8;
        v26 = 2112;
        v27 = v7;
        _os_log_error_impl(&dword_238C1D000, v18, OS_LOG_TYPE_ERROR, "%@: failed to update tensors for rootLayer = %@ and graphLayerList = %@", buf, 0x20u);
      }
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (id)fusedConvolutionAndNeuronLayerWithDescriptor:(id)a3 convolutionDescriptor:(id)a4 weights:(id)a5 biasTerms:(id)a6
{
  v7 = [MLCLog framework:a3];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCLayerOperations) lossLayerWithDescriptor:a2];
  }

  return MEMORY[0x277CBEBF8];
}

- (id)fusedFullyConnectedAndNeuronLayerWithDescriptor:(id)a3 convolutionDescriptor:(id)a4 weights:(id)a5 biasTerms:(id)a6
{
  v7 = [MLCLog framework:a3];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCLayerOperations) lossLayerWithDescriptor:a2];
  }

  return MEMORY[0x277CBEBF8];
}

- (id)fusedBatchNormalizationAndNeuronLayerWithDescriptor:(id)a3 numOfFeatureChannels:(unint64_t)a4 mean:(id)a5 variance:(id)a6 beta:(id)a7 gamma:(id)a8 varianceEpsilon:(float)a9 momentum:(float)a10
{
  v11 = [MLCLog framework:a3];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCLayerOperations) convolutionTransposeLayerWithDescriptor:a2 weights:? biasTerms:?];
  }

  return MEMORY[0x277CBEBF8];
}

- (id)fusedConvolutionBatchNormalizationAndNeuronLayerWithDescriptor:(id)a3 mean:(id)a4 variance:(id)a5 beta:(id)a6 gamma:(id)a7 varianceEpsilon:(float)a8 momentum:(float)a9 neuronDescriptor:(id)a10 weights:(id)a11 biasTerms:(id)a12
{
  v13 = [MLCLog framework:a3];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCLayerOperations) lossLayerWithDescriptor:a2];
  }

  return MEMORY[0x277CBEBF8];
}

- (id)fusedFullyConnectedBatchNormalizationAndNeuronLayerWithDescriptor:(id)a3 mean:(id)a4 variance:(id)a5 beta:(id)a6 gamma:(id)a7 varianceEpsilon:(float)a8 momentum:(float)a9 neuronDescriptor:(id)a10 weights:(id)a11 biasTerms:(id)a12
{
  v13 = [MLCLog framework:a3];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCLayerOperations) lossLayerWithDescriptor:a2];
  }

  return MEMORY[0x277CBEBF8];
}

- (BOOL)compileLayerDeviceOps:(id)a3 sourceTensors:(id)a4 resultTensor:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if ([v7 count])
  {
    v10 = [v7 objectAtIndexedSubscript:0];
    switch([v10 deviceOpType])
    {
      case 1u:
        v11 = ANE_CompileArithmeticLayer(v7, v8, v9);
        goto LABEL_18;
      case 2u:
        v13 = 0;
        goto LABEL_17;
      case 4u:
        v11 = ANE_CompileConvolutionLayer(v7, v8, v9);
        goto LABEL_18;
      case 7u:
        v11 = ANE_CompileFullyConnectedLayer(v7, v8, v9);
        goto LABEL_18;
      case 0xAu:
        v11 = ANE_CompileNeuronLayer(v7, v8, v9);
        goto LABEL_18;
      case 0xBu:
        v11 = ANE_CompilePoolingLayer(v7, v8, v9);
        goto LABEL_18;
      case 0xCu:
        v11 = ANE_CompileSoftmaxLayer(v7, v8, v9);
        goto LABEL_18;
      case 0xDu:
        v13 = 1;
        goto LABEL_17;
      case 0x10u:
        v11 = ANE_CompileUpsampleLayer(v7, v8, v9);
        goto LABEL_18;
      case 0x12u:
        v11 = ANE_CompileReshapeLayer(v7, v8, v9);
        goto LABEL_18;
      case 0x13u:
        v13 = 2;
        goto LABEL_17;
      case 0x17u:
        v13 = 3;
LABEL_17:
        v11 = ANE_CompileNormalizationLayer(v13, v7, v8, v9);
        goto LABEL_18;
      case 0x1Cu:
        v11 = ANE_CompileTransposeLayer(v7, v8, v9);
        goto LABEL_18;
      case 0x1Eu:
        v11 = ANE_CompileReductionLayer(v7, v8, v9);
        goto LABEL_18;
      case 0x1Fu:
        v11 = ANE_CompileConcatLayer(v7, v8, v9);
        goto LABEL_18;
      case 0x20u:
        v11 = ANE_CompileMatMulLayer(v7, v8, v9);
        goto LABEL_18;
      case 0x21u:
        v11 = ANE_CompileSliceLayer(v7, v8, v9);
        goto LABEL_18;
      case 0x22u:
        v11 = ANE_CompileComparisonLayer(v7, v8, v9);
        goto LABEL_18;
      case 0x23u:
        v11 = ANE_CompileSelectionLayer(v7, v8, v9);
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

- (BOOL)compileOptimizerDeviceOps:(id)a3
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

- (MLCDeviceANE)initWithType:(int)a3
{
  if ([objc_opt_class() hasANE])
  {
    v12.receiver = self;
    v12.super_class = MLCDeviceANE;
    v6 = [(MLCDeviceANE *)&v12 init];
    v7 = v6;
    if (v6)
    {
      v6->_deviceType = a3;
      deviceList = v6->_deviceList;
      v6->_deviceList = &unk_284BA6068;
    }

    self = v7;
    v9 = self;
  }

  else
  {
    v10 = +[MLCLog framework];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [MLCDeviceANE initWithType:a2];
    }

    v9 = 0;
  }

  return v9;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = NSStringFromSelector(a2);
  v5 = [(MLCDeviceANE *)self deviceType];
  v6 = [softLinkClass_ANEDeviceInfo_0() aneSubType];
  v7 = [v3 stringWithFormat:@"%@: { deviceType=%d, aneSubType=%@ }", v4, v5, v6];

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(MLCDeviceANE *)self deviceType];

  return [v4 initWithType:v5];
}

- (unint64_t)deviceMemorySizeForTensor:(id)a3 interleave:(unint64_t *)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [v6 interleave];
  v8 = ANE_CalculatePlaneCountForTensor(v6, v7);
  v9 = ANE_CalculatePlaneStrideForTensor(v6, v7);

  if (v8 && v9)
  {
    *a4 = v7;
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

- (BOOL)needToAllocateDeviceMemoryForTensor:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 deviceMemory];
  v5 = [v4 count];

  if (v5)
  {
    v6 = [v3 device];

    if (!v6)
    {
      goto LABEL_5;
    }

    v7 = [v3 device];
    v8 = [v7 type];

    if (v8 == 3 || ([v3 device], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "type"), v9, v10))
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
      v14 = [v3 deviceMemory];
      v15 = [v14 countByEnumeratingWithState:&v20 objects:v24 count:16];
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
              objc_enumerationMutation(v14);
            }

            v19 = *(*(&v20 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v11 = 0;
              goto LABEL_18;
            }
          }

          v16 = [v14 countByEnumeratingWithState:&v20 objects:v24 count:16];
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

- (void)allocateDeviceMemoryForTensor:(id)a3
{
  v26[5] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  v24 = 1;
  v7 = [(MLCDeviceANE *)self deviceMemorySizeForTensor:v5 interleave:&v24];
  if (v7)
  {
    v8 = v7;
    v9 = [v5 descriptor];
    v10 = [v9 dataType];

    v11 = ANE_CalculatePlaneCountForTensor(v5, v24);
    v12 = ANE_CalculatePlaneStrideForTensor(v5, v24);
    v13 = ANE_CalculateRowStrideForTensor(v5, v24);
    v14 = ANE_GetANECIRDataTypeWithMLCDataType(v10);
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
        v22 = [v5 deviceMemory];
        [v22 addObject:v21];
      }

      else
      {
        v22 = +[MLCLog framework];
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
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

- (void)deallocateDeviceMemoryForTensor:(id)a3
{
  v3 = [a3 deviceMemory];
  [v3 removeAllObjects];
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
  if (!VerifyTensorBeforeRead(v3))
  {
    v23 = 0;
    goto LABEL_15;
  }

  v4 = [v3 deviceMemory];
  v5 = [v4 objectAtIndexedSubscript:{objc_msgSend(v3, "deviceIndex")}];

  v6 = [v5 liveIOStatus];
  v7 = [v6 objectForKeyedSubscript:@"Interleave"];
  v8 = [v7 unsignedIntegerValue];

  v9 = [v6 objectForKeyedSubscript:@"Type"];
  v10 = ANE_ANECDataTypeToMLCDataType(v9);
  if (v8 == 1)
  {
    v11 = v10;
    v12 = [v3 descriptor];
    v13 = [v12 dataType];

    if (v11 == v13)
    {
      v26 = 0;
      ANE_GetTensor4DShapeWithOnePrepended(v3, &v26);
      v14 = v26;
      v15 = [v5 ioSurfaceObject];
      v16 = [v15 ioSurface];

      if (v16)
      {
        v17 = [v6 objectForKeyedSubscript:@"RowStride"];
        v18 = [v17 unsignedIntegerValue];

        v19 = v18 / ANE_GetANEElementByteCount(v11);
        v20 = [v14 objectAtIndexedSubscript:3];
        v21 = [v20 unsignedIntegerValue];

        if (v19 == v21)
        {
          BaseAddress = IOSurfaceGetBaseAddress(v16);
          v23 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:BaseAddress length:IOSurfaceGetAllocSize(v16) freeWhenDone:0];
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

- (id)readTensor:(id)a3
{
  v4 = a3;
  v5 = -[MLCDeviceANE readTensor:fromDeviceIndex:](self, "readTensor:fromDeviceIndex:", v4, [v4 deviceIndex]);

  return v5;
}

- (id)readTensor:(id)a3 fromDeviceIndex:(unint64_t)a4
{
  v6 = a3;
  v7 = -[MLCDeviceANE readTensor:fromDeviceIndex:batchSize:](self, "readTensor:fromDeviceIndex:batchSize:", v6, a4, [v6 calculateBatchSizeToUse]);

  return v7;
}

- (id)readTensor:(id)a3 fromDeviceIndex:(unint64_t)a4 batchSize:(unint64_t)a5
{
  v8 = a3;
  v9 = ANE_CalculateImageSizeForTensor(v8) * a5;
  v10 = malloc_type_malloc(v9, 0xF75E1E2AuLL);
  [(MLCDeviceANE *)self readTensor:v8 fromDeviceIndex:a4 targetBuffer:v10 batchSize:a5];

  v11 = MEMORY[0x277CBEA90];

  return [v11 dataWithBytesNoCopy:v10 length:v9 freeWhenDone:1];
}

- (void)readTensor:(id)a3 targetBuffer:(void *)a4
{
  v7 = a3;
  v6 = [(MLCDeviceANE *)self getHostPointerIfUnifiedDeviceMemory:?];
  if ([v6 bytes] != a4)
  {
    -[MLCDeviceANE readTensor:fromDeviceIndex:targetBuffer:batchSize:](self, "readTensor:fromDeviceIndex:targetBuffer:batchSize:", v7, [v7 deviceIndex], a4, objc_msgSend(v7, "calculateBatchSizeToUse"));
  }
}

- (void)readTensor:(id)a3 fromDeviceIndex:(unint64_t)a4 targetBuffer:(void *)a5 batchSize:(unint64_t)a6
{
  v26 = *MEMORY[0x277D85DE8];
  v10 = a3;
  if (VerifyTensorBeforeRead(v10))
  {
    if ([v10 deviceIndex] != a4)
    {
      v12 = +[MLCLog framework];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v18 = NSStringFromSelector(a2);
        v20 = 138412802;
        v21 = v18;
        v22 = 2048;
        v23 = [v10 deviceIndex];
        v24 = 2048;
        v25 = a4;
        _os_log_error_impl(&dword_238C1D000, v12, OS_LOG_TYPE_ERROR, "%@: -readTensor:fromDeviceIndex:targetBuffer:batchSize must be called with deviceIndex = %lu, but given deviceIndex = %lu", &v20, 0x20u);
      }

      goto LABEL_13;
    }

    v11 = [v10 deviceMemory];
    v12 = [v11 objectAtIndexedSubscript:a4];

    v13 = [v12 liveIOStatus];
    v14 = [v10 calculateBatchSizeToUse];
    if (v14 >= a6)
    {
      if (ANE_ReadOutputTensor(v10, v13, a4, a5, a6))
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
      v15 = v14;
      v16 = +[MLCLog framework];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = NSStringFromSelector(a2);
        v20 = 138412802;
        v21 = v17;
        v22 = 2048;
        v23 = a6;
        v24 = 2048;
        v25 = v15;
        _os_log_error_impl(&dword_238C1D000, v16, OS_LOG_TYPE_ERROR, "%@: invalid batchSize=%lu. batchSize cannot exceed the batch size of the tensor=%lu", &v20, 0x20u);
      }
    }

    goto LABEL_12;
  }

LABEL_14:

  v19 = *MEMORY[0x277D85DE8];
}

- (void)dispatchReadTensor:(id)a3 targetBuffer:(void *)a4 batchSize:(unint64_t)a5
{
  v8 = a3;
  -[MLCDeviceANE readTensor:fromDeviceIndex:targetBuffer:batchSize:](self, "readTensor:fromDeviceIndex:targetBuffer:batchSize:", v8, [v8 deviceIndex], a4, a5);
}

- (void)broadcastTensor:(id)a3
{
  v4 = a3;
  -[MLCDeviceANE writeToAllDevices:allocateData:batchSize:](self, "writeToAllDevices:allocateData:batchSize:", v4, 0, [v4 calculateBatchSizeToUse]);
}

- (void)writeToAllDevices:(id)a3 allocateData:(BOOL)a4 batchSize:(unint64_t)a5
{
  v6 = a4;
  v8 = a3;
  v9 = v8;
  if (v6)
  {
    [(MLCDeviceANE *)self allocateDeviceMemoryForTensor:v8];
    v8 = v9;
  }

  [(MLCDeviceANE *)self writeToDevice:v8 toDeviceIndex:0 batchSize:a5];
}

- (void)writeToDevice:(id)a3 toDeviceIndex:(unint64_t)a4 batchSize:(unint64_t)a5
{
  v39 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = [v8 data];
  v10 = [v9 bytes];

  if (v10)
  {
    v11 = [v8 deviceMemory];
    v12 = [v11 count];

    if (!v12)
    {
      v18 = +[MLCLog framework];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [MLCDeviceANE writeToDevice:toDeviceIndex:batchSize:];
      }

      goto LABEL_24;
    }

    if ([v8 deviceIndex] != a4)
    {
      v18 = +[MLCLog framework];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = NSStringFromSelector(a2);
        v33 = 138412802;
        v34 = v19;
        v35 = 2048;
        v36 = [v8 deviceIndex];
        v37 = 2048;
        v38 = a4;
        v20 = "%@: -writeToDevice:toDeviceIndex:batchSize must be called with deviceIndex = %lu, but given deviceIndex = %lu";
        goto LABEL_12;
      }

LABEL_24:

      goto LABEL_25;
    }

    v13 = [v8 deviceMemory];
    v14 = [v13 objectAtIndexedSubscript:a4];
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

    v16 = [v8 calculateBatchSizeToUse];
    if (v16 < a5)
    {
      v17 = v16;
      v18 = +[MLCLog framework];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = NSStringFromSelector(a2);
        v33 = 138412802;
        v34 = v19;
        v35 = 2048;
        v36 = a5;
        v37 = 2048;
        v38 = v17;
        v20 = "%@: invalid batchSize=%lu. batchSize cannot exceed the batch size of the tensor=%lu";
LABEL_12:
        _os_log_error_impl(&dword_238C1D000, v18, OS_LOG_TYPE_ERROR, v20, &v33, 0x20u);

        goto LABEL_24;
      }

      goto LABEL_24;
    }

    v21 = [v8 deviceMemory];
    v18 = [v21 objectAtIndexedSubscript:a4];

    v22 = [v18 liveIOStatus];
    v23 = v22;
    if (v22 && [v22 count])
    {
      v24 = [v18 ioSurfaceObject];
      v25 = [v24 ioSurface];

      IOSurfaceLock(v25, 0, 0);
      BaseAddress = IOSurfaceGetBaseAddress(v25);
      v27 = [v8 data];
      v28 = [v27 bytes];
      v29 = [v8 data];
      v30 = ANE_ConvertInputTensor(v8, v23, v28, [v29 length], BaseAddress, a5);

      IOSurfaceUnlock(v25, 0, 0);
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

- (void)commitAndWaitForCompletion:(id)a3 enableProfiling:(BOOL)a4 graphExecutionTime:(id)a5 graphResultTensor:(id)a6
{
  v8 = a4;
  v17 = a3;
  v9 = a5;
  v10 = a6;
  v11 = 0.0;
  if (v8)
  {
    Current = CFAbsoluteTimeGetCurrent();
    v11 = Current - *[v9 bytes];
  }

  if (v10)
  {
    v13 = [v10 data];
    if ([v13 bytes])
    {
      v14 = [v10 device];

      if (!v14)
      {
        goto LABEL_8;
      }

      v13 = [v10 device];
      v15 = [v13 computeEngine];
      v16 = [v10 data];
      [v15 readTensor:v10 targetBuffer:{objc_msgSend(v16, "bytes")}];
    }
  }

LABEL_8:
  if (v17)
  {
    v17[2](v17, v10, 0, v11);
  }
}

- (BOOL)allocateDeviceMemoryForSourceAndResultTensorsOfLayer:(id)a3 tensorLabelToIOSurfaceMap:(id *)a4
{
  v38 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [MEMORY[0x277CBEC10] mutableCopy];
  v8 = [v6 sourceTensors];
  v9 = [v8 count];

  if (v9)
  {
    v10 = 0;
    do
    {
      v11 = [v6 sourceTensors];
      v12 = [v11 objectAtIndexedSubscript:v10];

      if ((ANE_CanProgramANECConstantTensorUnit(v12) & 1) == 0)
      {
        if ([(MLCDeviceANE *)self needToAllocateDeviceMemoryForTensor:v12])
        {
          [(MLCDeviceANE *)self allocateDeviceMemoryForTensor:v12];
        }

        v13 = [v12 deviceMemory];
        v14 = [v12 deviceMemory];
        v15 = [v13 objectAtIndexedSubscript:{objc_msgSend(v14, "count") - 1}];

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

        v16 = [v12 label];
        [v7 setObject:v15 forKeyedSubscript:v16];
      }

      ++v10;
      v17 = [v6 sourceTensors];
      v18 = [v17 count];
    }

    while (v10 < v18);
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v19 = [v6 resultTensors];
  v20 = [v19 countByEnumeratingWithState:&v33 objects:v37 count:16];
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
          objc_enumerationMutation(v19);
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
        v27 = [v24 label];
        [v7 setObject:v26 forKeyedSubscript:v27];
      }

      v21 = [v19 countByEnumeratingWithState:&v33 objects:v37 count:16];
      if (v21)
      {
        continue;
      }

      break;
    }
  }

  *a4 = [v7 copy];
  v28 = 1;
LABEL_26:

  v31 = *MEMORY[0x277D85DE8];
  return v28;
}

- (BOOL)procedureInformationWithModelAttributes:(id)a3 procedureName:(id)a4 procedureID:(unint64_t *)a5 procedureInputSymbols:(id *)a6 procedureInputSymbolIndices:(id *)a7 procedureOutputSymbols:(id *)a8 procedureOutputSymbolIndices:(id *)a9
{
  v84 = *MEMORY[0x277D85DE8];
  v13 = a3;
  v14 = a4;
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
  v67 = v13;
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
    v61 = a6;
    v62 = a7;
    v63 = a8;
    v21 = [v67 objectForKeyedSubscript:*v15];
    v22 = MEMORY[0x277CBEBF8];
    v23 = [MEMORY[0x277CBEBF8] mutableCopy];
    v24 = [v22 mutableCopy];
    v25 = [v21 objectForKeyedSubscript:*v16];
    v26 = [v25 objectForKeyedSubscript:v14];
    v27 = [v26 unsignedIntegerValue];

    v28 = v21;
    v29 = [v21 objectForKeyedSubscript:*v17];
    v30 = [v29 count];
    v31 = v27 < v30;
    if (v27 >= v30)
    {
      v49 = +[MLCLog framework];
      if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
      {
        NSStringFromSelector(a2);
        v51 = v50 = v27;
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
      v57 = v14;
      v54 = v27;
      v55 = v29;
      v60 = [v29 objectAtIndexedSubscript:v27];
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

      *a5 = v54;
      *v61 = [v23 copy];
      *v62 = [v34 copy];
      *v63 = [v24 copy];
      *a9 = [v42 copy];

      v48 = v67;
      v14 = v57;
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

- (id)ANERequestWithModelAttributes:(id)a3 procedureName:(id)a4 tensorLabelToIOSurfaceMap:(id)a5
{
  v52 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if ([v11 count])
  {
    v44 = 0;
    v45 = -1;
    v42 = 0;
    v43 = 0;
    v41 = 0;
    v12 = [(MLCDeviceANE *)self procedureInformationWithModelAttributes:v9 procedureName:v10 procedureID:&v45 procedureInputSymbols:&v44 procedureInputSymbolIndices:&v43 procedureOutputSymbols:&v42 procedureOutputSymbolIndices:&v41];
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
          v20 = [v11 objectForKeyedSubscript:v19];
          v21 = [v20 ioSurfaceObject];

          if (!v21)
          {
            break;
          }

          [log addObject:v21];

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
        v36 = v10;
        v37 = v9;
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
            v27 = [v11 objectForKeyedSubscript:v26];
            v28 = [v27 ioSurfaceObject];

            if (!v28)
            {
              break;
            }

            [v19 addObject:v28];

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

        v10 = v36;

        v9 = v37;
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
        v49 = v10;
        v50 = 2112;
        v51 = v9;
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

- (BOOL)postProcessCompiledGraph:(id)a3 compilerOptions:(unint64_t)a4
{
  v4 = a4;
  v116[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = [v7 graphLayerList];
  v9 = [v8 count];

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

  v93 = self;
  aSelector = a2;
  v10 = v4 & 6;
  v11 = [MEMORY[0x277CBEBF8] mutableCopy];
  v12 = [MEMORY[0x277CBEC10] mutableCopy];
  v13 = [v7 graphLayerList];
  v14 = [v13 count];

  if (v14)
  {
    v15 = 0;
    v16 = 0x277CCA000uLL;
    do
    {
      v17 = [v7 graphLayerList];
      v18 = [v17 objectAtIndexedSubscript:v15];

      if (([v18 skipLayer]& 1) == 0 && ANE_IsAneCompiledLayer(v18))
      {
        v19 = [v18 deviceOps];
        v20 = [v19 objectAtIndexedSubscript:0];
        v21 = [v20 plistBuilder];

        if (!v21)
        {
          v71 = +[MLCLog framework];
          if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
          {
            [MLCDeviceANE postProcessCompiledGraph:compilerOptions:];
          }

          goto LABEL_79;
        }

        v22 = [*(v16 + 2992) numberWithUnsignedLong:v21];
        v23 = [v12 objectForKeyedSubscript:v22];

        if (v23)
        {
          v24 = [v12 objectForKeyedSubscript:v22];
          [v24 addObject:v18];
        }

        else
        {
          [v11 addObject:v21];
          v116[0] = v18;
          v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v116 count:1];
          v91 = v18;
          v25 = v7;
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
          v7 = v25;
          v18 = v91;
        }

        if (v10 && ([v21 buildProcedureWithLayer:v18] & 1) == 0)
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
      v31 = [v7 graphLayerList];
      v32 = [v31 count];
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
      v89 = [softLinkClass_ANEQoSMapper() aneUserInteractiveTaskQoS];
      v42 = [v41 plist];
      v43 = [v42 copy];

      v87 = objc_autoreleasePoolPush();
      v44 = [v41 weightOps];
      v45 = [v44 weights];
      v46 = [v45 copy];

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
          v52 = [v51 loadWithQoS:v89 options:MEMORY[0x277CBEC10] error:&v99];
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

      v88 = [_MLCANEModel objectWithModel:v92 options:MEMORY[0x277CBEC10] qos:v89 plist:v83];
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
            v62 = [v61 deviceOps];
            v63 = [v62 objectAtIndexedSubscript:0];

            v94 = 0;
            v64 = [(MLCDeviceANE *)v93 allocateDeviceMemoryForSourceAndResultTensorsOfLayer:v61 tensorLabelToIOSurfaceMap:&v94];
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

            v66 = [v63 procedureName];
            v67 = [v92 modelAttributes];
            v68 = [(MLCDeviceANE *)v93 ANERequestWithModelAttributes:v67 procedureName:v66 tensorLabelToIOSurfaceMap:v65];

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

- (BOOL)transferTensor:(id)a3 fromDevice:(id)a4
{
  v53 = *MEMORY[0x277D85DE8];
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

      if ((v14 & 1) == 0)
      {
        v20 = +[MLCLog framework];
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          v21 = NSStringFromSelector(a2);
          v22 = [v7 deviceMemory];
          v23 = [v22 objectAtIndexedSubscript:v11];
          *buf = 138412546;
          v50 = v21;
          v51 = 2112;
          v52 = objc_opt_class();
          v24 = v52;
          _os_log_error_impl(&dword_238C1D000, v20, OS_LOG_TYPE_ERROR, "%@: unsupported device memory class=%@", buf, 0x16u);
        }

        goto LABEL_22;
      }

      v15 = [v7 deviceMemory];
      v16 = [v15 count];

      v17 = [v7 deviceMemory];
      v18 = [v17 count];

      if (v18 == 1)
      {
        [(MLCDeviceANE *)self allocateDeviceMemoryForTensor:v7];
        v19 = [v7 deviceMemory];
        if ([v19 count] == 1)
        {

          goto LABEL_18;
        }

        v33 = [v7 deviceMemory];
        v16 = 1;
        v34 = [v33 objectAtIndexedSubscript:1];
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
        v25 = [v7 deviceMemory];
        v26 = [v25 count];

        if (v26 != 2)
        {
          v20 = +[MLCLog framework];
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            [MLCDeviceANE transferTensor:fromDevice:];
          }

          goto LABEL_22;
        }

        v27 = [v7 deviceMemory];
        v28 = [v27 count];

        if (v28)
        {
          v29 = 0;
          while (1)
          {
            v30 = [v7 deviceMemory];
            v31 = [v30 objectAtIndexedSubscript:v29];
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
      v38 = [v7 calculateBatchSizeToUse];
      v39 = [v7 deviceMemory];
      v20 = [v39 objectAtIndexedSubscript:v16];

      v40 = [v20 liveIOStatus];
      v41 = v40;
      if (v40 && [v40 count])
      {
        v42 = [v20 ioSurfaceObject];
        v43 = [v42 ioSurface];

        IOSurfaceLock(v43, 0, 0);
        BaseAddress = IOSurfaceGetBaseAddress(v43);
        [v7 deviceMemory];
        v45 = v44 = v38;
        v46 = [v45 objectAtIndexedSubscript:v11];

        v10 = ANE_ConvertInputTensor(v7, v41, [v46 bytes], [v46 length], BaseAddress, v44);
        IOSurfaceUnlock(v43, 0, 0);
        if (v10)
        {
          [v7 setDeviceIndex:v16];
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

- (void)setDeviceMemoryForTensor:(id)a3 data:(id)a4
{
  v5 = [MLCLog framework:a3];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE setDeviceMemoryForTensor:a2 data:?];
  }
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
        [MLCDeviceANE updateDeviceMemoryForTensor:a2];
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
    [MLCDeviceANE updateDeviceMemoryForTensor:a2];
  }

LABEL_11:

  v16 = 0;
LABEL_14:

  return v16;
}

- (void)dispatchForwardLayer:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = [a3 objectAtIndexedSubscript:0];
  v5 = [v4 model];
  v6 = [v5 anefModel];

  v7 = [v4 request];
  v8 = [v4 model];
  v9 = [v8 qos];
  v10 = [v4 model];
  v11 = [v10 options];
  v17 = 0;
  v12 = [v6 evaluateWithQoS:v9 options:v11 request:v7 error:&v17];
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
      v21 = v6;
      v22 = 2112;
      v23 = v13;
      _os_log_error_impl(&dword_238C1D000, v14, OS_LOG_TYPE_ERROR, "%@: failed to evaluate model=%@ : error=%@", buf, 0x20u);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)dispatchForwardConcatLayer:(id)a3 sourceTensors:(id)a4 resultTensor:(id)a5
{
  v6 = [MLCLog framework:a3];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCEngineDispatch) dispatchForwardConcatLayer:a2 sourceTensors:? resultTensor:?];
  }
}

- (void)dispatchForwardSplitLayer:(id)a3 sourceTensor:(id)a4 resultTensors:(id)a5
{
  v6 = [MLCLog framework:a3];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCEngineDispatch) dispatchForwardConcatLayer:a2 sourceTensors:? resultTensor:?];
  }
}

- (void)dispatchGradientConcatLayer:(id)a3 sourceGradientTensor:(id)a4 resultGradientTensors:(id)a5
{
  v6 = [MLCLog framework:a3];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCEngineDispatch) dispatchForwardConcatLayer:a2 sourceTensors:? resultTensor:?];
  }
}

- (void)dispatchGradientSplitLayer:(id)a3 sourceGradientTensors:(id)a4 resultGradientTensor:(id)a5
{
  v6 = [MLCLog framework:a3];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCEngineDispatch) dispatchForwardConcatLayer:a2 sourceTensors:? resultTensor:?];
  }
}

- (void)dispatchForwardLossLayer:(id)a3 sourceTensor:(id)a4 labelsTensor:(id)a5 labelsTensorStride:(unint64_t)a6 weightsTensor:(id)a7 resultTensor:(id)a8 resultStateIsTemporary:(BOOL)a9 forTraining:(BOOL)a10
{
  v11 = [MLCLog framework:a3];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCEngineDispatch) dispatchForwardConcatLayer:a2 sourceTensors:? resultTensor:?];
  }
}

- (void)dispatchGradientLayer:(id)a3 sourceGradientTensor:(id)a4 resultGradientTensor:(id)a5
{
  v6 = [MLCLog framework:a3];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCEngineDispatch) dispatchForwardConcatLayer:a2 sourceTensors:? resultTensor:?];
  }
}

- (void)dispatchGradientLayer:(id)a3 sourceGradientTensor:(id)a4 resultGradientTensor:(id)a5 secondaryResultGradientTensor:(id)a6
{
  v7 = [MLCLog framework:a3];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCEngineDispatch) dispatchForwardConcatLayer:a2 sourceTensors:? resultTensor:?];
  }
}

- (void)dispatchGradientLossLayer:(id)a3 sourceGradientTensor:(id)a4 labelsTensor:(id)a5 labelsTensorStride:(unint64_t)a6 weightsTensor:(id)a7 resultGradientTensor:(id)a8
{
  v9 = [MLCLog framework:a3];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCEngineDispatch) dispatchForwardConcatLayer:a2 sourceTensors:? resultTensor:?];
  }
}

- (void)dispatchForwardAndGradientLossLayer:(id)a3 sourceTensor:(id)a4 labelsTensor:(id)a5 labelsTensorStride:(unint64_t)a6 weightsTensor:(id)a7 resultTensor:(id)a8 resultGradientTensor:(id)a9
{
  v10 = [MLCLog framework:a3];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCEngineDispatch) dispatchForwardConcatLayer:a2 sourceTensors:? resultTensor:?];
  }
}

- (void)dispatchRNNForwardLayer:(id)a3 sourceTensors:(id)a4 resultTensors:(id)a5
{
  v6 = [MLCLog framework:a3];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCEngineDispatch) dispatchForwardConcatLayer:a2 sourceTensors:? resultTensor:?];
  }
}

- (void)dispatchRNNGradientLayer:(id)a3 sourceGradientTensors:(id)a4 resultGradientTensors:(id)a5
{
  v6 = [MLCLog framework:a3];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCEngineDispatch) dispatchForwardConcatLayer:a2 sourceTensors:? resultTensor:?];
  }
}

- (void)incrementReadCountForTensorDeviceMemory:(id)a3 increment:(int64_t)a4
{
  v5 = [MLCLog framework:a3];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCEngineDispatch) dispatchForwardConcatLayer:a2 sourceTensors:? resultTensor:?];
  }
}

- (void)incrementReadCountForGradientState:(id)a3 increment:(int64_t)a4
{
  v5 = [MLCLog framework:a3];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCEngineDispatch) dispatchForwardConcatLayer:a2 sourceTensors:? resultTensor:?];
  }
}

- (void)dispatchForwardMatMulLayer:(id)a3 sourceTensors:(id)a4 resultTensor:(id)a5
{
  v6 = [MLCLog framework:a3];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCEngineDispatch) dispatchForwardConcatLayer:a2 sourceTensors:? resultTensor:?];
  }
}

- (void)dispatchGradientMatMulLayer:(id)a3 sourceGradientTensor:(id)a4 resultGradientTensors:(id)a5
{
  v6 = [MLCLog framework:a3];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCEngineDispatch) dispatchForwardConcatLayer:a2 sourceTensors:? resultTensor:?];
  }
}

- (void)dispatchGradientSliceLayer:(id)a3 sourceGradientTensor:(id)a4 resultGradientTensor:(id)a5
{
  v6 = [MLCLog framework:a3];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCEngineDispatch) dispatchForwardConcatLayer:a2 sourceTensors:? resultTensor:?];
  }
}

- (void)dispatchGradientReshapeLayer:(id)a3 sourceGradientTensor:(id)a4 resultGradientTensor:(id)a5
{
  v6 = [MLCLog framework:a3];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCEngineDispatch) dispatchForwardConcatLayer:a2 sourceTensors:? resultTensor:?];
  }
}

- (void)dispatchForwardEmbeddingLayer:(id)a3 weight:(id)a4 sourceTensor:(id)a5 resultTensor:(id)a6
{
  v7 = [MLCLog framework:a3];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCEngineDispatch) dispatchForwardConcatLayer:a2 sourceTensors:? resultTensor:?];
  }
}

- (void)dispatchGradientEmbeddingLayer:(id)a3 sourceGradientTensor:(id)a4
{
  v5 = [MLCLog framework:a3];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCEngineDispatch) dispatchForwardConcatLayer:a2 sourceTensors:? resultTensor:?];
  }
}

- (void)dispatchGradientSelectLayer:(id)a3 conditionTensor:(id)a4 sourceGradientTensor:(id)a5 resultGradientTensors:(id)a6
{
  v7 = [MLCLog framework:a3];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCEngineDispatch) dispatchForwardFusedArithmeticLayerNormalizationLayer:a2 sourceTensors:? resultTensor:? forTraining:?];
  }
}

- (void)optimizeComputationForTrainingGraph:(id)a3
{
  v4 = +[MLCLog framework];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCEngineDispatch) dispatchForwardFusedArithmeticLayerNormalizationLayer:a2 sourceTensors:? resultTensor:? forTraining:?];
  }
}

- (void)sumSharedGradientsForConvolutionLayerTensorParameter:(id)a3 layerIndexForSummedGradients:(unint64_t)a4
{
  v5 = [MLCLog framework:a3];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLComputeEngineOptimizerUpdate) sumSharedGradientsForConvolutionLayerTensorParameter:a2 layerIndexForSummedGradients:?];
  }
}

- (void)updateConvolutionLayer:(id)a3 optimizer:(id)a4 weightsParameter:(id)a5 biasesParameter:(id)a6 arrayOfParams:(id)a7
{
  v8 = [MLCLog framework:a3];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCEngineDispatch) dispatchForwardConcatLayer:a2 sourceTensors:? resultTensor:?];
  }
}

- (void)updateFullyConnectedLayer:(id)a3 optimizer:(id)a4 weightsParameter:(id)a5 biasesParameter:(id)a6 arrayOfParams:(id)a7
{
  v8 = [MLCLog framework:a3];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCEngineDispatch) dispatchForwardConcatLayer:a2 sourceTensors:? resultTensor:?];
  }
}

- (void)updateBatchNormalizationLayer:(id)a3 optimizer:(id)a4 betaParameter:(id)a5 gammaParameter:(id)a6 meanTensor:(id)a7 varianceTensor:(id)a8 arrayOfParams:(id)a9
{
  v10 = [MLCLog framework:a3];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCEngineDispatch) dispatchForwardConcatLayer:a2 sourceTensors:? resultTensor:?];
  }
}

- (void)updateInstanceNormalizationLayer:(id)a3 optimizer:(id)a4 betaParameter:(id)a5 gammaParameter:(id)a6 arrayOfParams:(id)a7
{
  v8 = [MLCLog framework:a3];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCEngineDispatch) dispatchForwardConcatLayer:a2 sourceTensors:? resultTensor:?];
  }
}

- (void)updateLayerNormalizationLayer:(id)a3 optimizer:(id)a4 betaParameter:(id)a5 gammaParameter:(id)a6 arrayOfParams:(id)a7
{
  v8 = [MLCLog framework:a3];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCEngineDispatch) dispatchForwardConcatLayer:a2 sourceTensors:? resultTensor:?];
  }
}

- (void)updateGroupNormalizationLayer:(id)a3 optimizer:(id)a4 betaParameter:(id)a5 gammaParameter:(id)a6 arrayOfParams:(id)a7
{
  v8 = [MLCLog framework:a3];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCEngineDispatch) dispatchForwardConcatLayer:a2 sourceTensors:? resultTensor:?];
  }
}

- (void)updateRNNLayer:(id)a3 optimizer:(id)a4 inputWeightsParameter:(id)a5 hiddenWeightsParameter:(id)a6 biasesParameter:(id)a7 arrayOfParams:(id)a8
{
  v9 = [MLCLog framework:a3];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCEngineDispatch) dispatchForwardConcatLayer:a2 sourceTensors:? resultTensor:?];
  }
}

- (void)restoreRNNParamsWithDeviceOps:(id)a3 optimizer:(id)a4 inputWeightsParameter:(id)a5 hiddenWeightsParameter:(id)a6 biasesParameter:(id)a7 arrayOfParams:(id)a8
{
  v9 = [MLCLog framework:a3];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCEngineDispatch) dispatchForwardConcatLayer:a2 sourceTensors:? resultTensor:?];
  }
}

- (void)updateTensorParameter:(id)a3 optimizer:(id)a4 gradient:(id)a5 arrayOfParams:(id)a6
{
  v7 = [MLCLog framework:a3];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCEngineDispatch) dispatchForwardConcatLayer:a2 sourceTensors:? resultTensor:?];
  }
}

- (void)updateMultiheadAttentionLayer:(id)a3 optimizer:(id)a4 weightsParameter:(id)a5 biasesParameter:(id)a6 arrayOfParams:(id)a7
{
  v8 = [MLCLog framework:a3];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCEngineDispatch) dispatchForwardConcatLayer:a2 sourceTensors:? resultTensor:?];
  }
}

- (void)updateEmbeddingLayer:(id)a3 weightsParameter:(id)a4 optimizer:(id)a5 arrayOfParams:(id)a6
{
  v7 = [MLCLog framework:a3];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCEngineDispatch) dispatchForwardConcatLayer:a2 sourceTensors:? resultTensor:?];
  }
}

- (void)synchronizeUpdatesForLayer:(id)a3
{
  v4 = +[MLCLog framework];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCEngineDispatch) dispatchForwardConcatLayer:a2 sourceTensors:? resultTensor:?];
  }
}

- (void)synchronizeOptimizerUpdatesForTensor:(id)a3
{
  v4 = +[MLCLog framework];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCEngineDispatch) dispatchForwardConcatLayer:a2 sourceTensors:? resultTensor:?];
  }
}

- (void)convertUpdatesToTensorDataForLayer:(id)a3
{
  v4 = +[MLCLog framework];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCEngineDispatch) dispatchForwardConcatLayer:a2 sourceTensors:? resultTensor:?];
  }
}

- (void)convertUpdatesToTensorDataForTensorParameters:(id)a3
{
  v4 = +[MLCLog framework];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCEngineDispatch) dispatchForwardConcatLayer:a2 sourceTensors:? resultTensor:?];
  }
}

- (void)setOptimizerLearningRate:(id)a3 learningRate:(float)a4
{
  v5 = +[MLCLog framework];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCEngineDispatch) dispatchForwardConcatLayer:a2 sourceTensors:? resultTensor:?];
  }
}

- (void)setOptimizerTimeStep:(id)a3 timeStep:(unint64_t)a4
{
  v5 = [MLCLog framework:a3];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCEngineDispatch) dispatchForwardConcatLayer:a2 sourceTensors:? resultTensor:?];
  }
}

- (void)reloadParameterDataFromHostToDeviceMemoryForTensor:(id)a3
{
  v4 = +[MLCLog framework];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCEngineDispatch) dispatchForwardConcatLayer:a2 sourceTensors:? resultTensor:?];
  }
}

- (void)accumulateParams:(void *)a3 gradients:(void *)a4 accumulators:(void *)a5 numOfParameters:(unint64_t)a6 inArrayOfParams:(id)a7
{
  v8 = [MLCLog framework:a3];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCEngineDispatch) dispatchForwardConcatLayer:a2 sourceTensors:? resultTensor:?];
  }
}

- (void)updateAllParametersWithOptimizer:(id)a3 arrayOfParameters:(id)a4
{
  v5 = [MLCLog framework:a3];
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