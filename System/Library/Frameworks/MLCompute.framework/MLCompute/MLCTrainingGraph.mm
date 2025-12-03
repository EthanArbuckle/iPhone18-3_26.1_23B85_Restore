@interface MLCTrainingGraph
+ (MLCTrainingGraph)graphWithGraphObjects:(NSArray *)graphObjects lossLayer:(MLCLayer *)lossLayer optimizer:(MLCOptimizer *)optimizer;
- (BOOL)addInputs:(NSDictionary *)inputs lossLabels:(NSDictionary *)lossLabels;
- (BOOL)addInputs:(NSDictionary *)inputs lossLabels:(NSDictionary *)lossLabels lossLabelWeights:(NSDictionary *)lossLabelWeights;
- (BOOL)addOutputs:(NSDictionary *)outputs;
- (BOOL)allocateGradientTensorsForMultipleChildrenOfLayer:(id)layer gradientTensorsAreTemporary:(BOOL)temporary device:(id)device;
- (BOOL)allocateGradientTensorsForMultipleChildrenOfSplitLayer:(id)layer tensor:(id)tensor gradientTensorsAreTemporary:(BOOL)temporary device:(id)device;
- (BOOL)allocateOptimizerDataForGraph;
- (BOOL)allocateRootSourceGradientTensors:(id)tensors;
- (BOOL)bindOptimizerData:(NSArray *)data deviceData:(NSArray *)deviceData withTensor:(MLCTensor *)tensor;
- (BOOL)compileOptimizer:(MLCOptimizer *)optimizer;
- (BOOL)compileWithOptions:(MLCGraphCompilationOptions)options device:(MLCDevice *)device inputTensors:(NSDictionary *)inputTensors inputTensorsData:(NSDictionary *)inputTensorsData;
- (BOOL)executeForwardWithBatchSize:(NSUInteger)batchSize options:(MLCExecutionOptions)options outputsData:(NSDictionary *)outputsData completionHandler:(MLCGraphCompletionHandler)completionHandler;
- (BOOL)executeGradientWithBatchSize:(NSUInteger)batchSize options:(MLCExecutionOptions)options outputsData:(NSDictionary *)outputsData completionHandler:(MLCGraphCompletionHandler)completionHandler;
- (BOOL)executeOptimizerUpdateWithOptions:(MLCExecutionOptions)options completionHandler:(MLCGraphCompletionHandler)completionHandler;
- (BOOL)executeWithInputsData:(NSDictionary *)inputsData lossLabelsData:(NSDictionary *)lossLabelsData lossLabelWeightsData:(NSDictionary *)lossLabelWeightsData outputsData:(NSDictionary *)outputsData batchSize:(NSUInteger)batchSize options:(MLCExecutionOptions)options completionHandler:(MLCGraphCompletionHandler)completionHandler;
- (BOOL)isSourceTensorSharableWithResultGradientTensor:(id)tensor layer:(id)layer;
- (BOOL)linkWithGraphs:(NSArray *)graphs;
- (BOOL)recompileWithOptions:(unint64_t)options;
- (BOOL)setTrainingTensorParameters:(NSArray *)parameters;
- (BOOL)stopGradientForTensors:(NSArray *)tensors;
- (MLCTensor)allocateUserGradientForTensor:(MLCTensor *)tensor;
- (MLCTensor)gradientTensorForInput:(MLCTensor *)input;
- (MLCTrainingGraph)init;
- (MLCTrainingGraph)initWithGraphObjects:(id)objects lossLayer:(id)layer optimizer:(id)optimizer;
- (NSArray)sourceGradientTensorsForLayer:(MLCLayer *)layer;
- (NSData)gradientDataForParameter:(MLCTensor *)parameter layer:(MLCLayer *)layer;
- (NSUInteger)deviceMemorySize;
- (id)description;
- (id)resultGradientTensorToUseByExecuteGradientForLayer:(id)layer sourceIndex:(unint64_t)index incrementIntermediateIndex:(BOOL)intermediateIndex;
- (id)resultGradientTensorsForLayer:(id)layer summedGradientForInputTensors:(BOOL)tensors;
- (id)resultTensorsForLayer:(id)layer;
- (id)sourceTensorsForLayer:(id)layer;
- (unint64_t)deviceMemorySizeWithDevice:(id)device;
- (unint64_t)layerIndexToStoreSummedGradientsForTensor:(id)tensor;
- (void)allocateGradientTensorsForLayersInGraph:(BOOL)graph;
- (void)dealloc;
- (void)executeForwardToLayerIndex:(unint64_t)index resultTensor:(id)tensor resultStateIsTemporary:(BOOL)temporary batchSize:(unint64_t)size forTraining:(BOOL)training executionOptions:(unint64_t)options;
- (void)executeGradientFromLayerIndex:(unint64_t)index resultStateIsTemporary:(BOOL)temporary batchSize:(unint64_t)size executionOptions:(unint64_t)options;
- (void)executeOptimizerUpdateWithExecutionOptions:(unint64_t)options;
- (void)linkRelatedGradientTensorsForConcatLayer:(id)layer device:(id)device;
- (void)markLayersAsTrainable;
- (void)sumAllRootSourceGradientTensors:(id)tensors;
- (void)sumIntermediateGradientTensorsForLayer:(id)layer;
- (void)sumRootSourceGradientTensor:(id)tensor device:(id)device;
- (void)synchronizeUpdates;
- (void)updateIsTrainableForLayerWithStopGradientTensor:(id)tensor checkChildLayers:(BOOL)layers;
- (void)updateTrainableLayerList:(BOOL)list;
@end

@implementation MLCTrainingGraph

+ (MLCTrainingGraph)graphWithGraphObjects:(NSArray *)graphObjects lossLayer:(MLCLayer *)lossLayer optimizer:(MLCOptimizer *)optimizer
{
  v8 = optimizer;
  v9 = lossLayer;
  v10 = graphObjects;
  v11 = [[self alloc] initWithGraphObjects:v10 lossLayer:v9 optimizer:v8];

  return v11;
}

- (MLCTrainingGraph)init
{
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v8[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  v5 = [(MLCTrainingGraph *)self initWithGraphObjects:v4 lossLayer:0 optimizer:0];

  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

- (MLCTrainingGraph)initWithGraphObjects:(id)objects lossLayer:(id)layer optimizer:(id)optimizer
{
  layerCopy = layer;
  optimizerCopy = optimizer;
  v36.receiver = self;
  v36.super_class = MLCTrainingGraph;
  v11 = [(MLCGraph *)&v36 initWithGraphObjects:objects];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_lossLayer, layer);
    objc_storeStrong(&v12->_optimizer, optimizer);
    v13 = MEMORY[0x277CBEBF8];
    v14 = [MEMORY[0x277CBEBF8] mutableCopy];
    optimizerUpdateLayerList = v12->_optimizerUpdateLayerList;
    v12->_optimizerUpdateLayerList = v14;

    v16 = [v13 mutableCopy];
    optimizerParameterList = v12->_optimizerParameterList;
    v12->_optimizerParameterList = v16;

    v18 = [v13 mutableCopy];
    lossLayersInTrainingGraph = v12->_lossLayersInTrainingGraph;
    v12->_lossLayersInTrainingGraph = v18;

    v20 = [v13 mutableCopy];
    stopGradientTensorList = v12->_stopGradientTensorList;
    v12->_stopGradientTensorList = v20;

    v22 = [v13 copy];
    optimizerUpdateDeviceList = v12->_optimizerUpdateDeviceList;
    v12->_optimizerUpdateDeviceList = v22;

    v12->_firstTrainableLayerIndex = 0x7FFFFFFFLL;
    v12->_allocateResultGradientTensors = 1;
    v12->_allocateOptimizerData = 1;
    v12->_updateOptimizerTimeStep = 1;
    v24 = [[MLCLayer alloc] initWithLabel:@"Dummy"];
    dummyLayer = v12->_dummyLayer;
    v12->_dummyLayer = v24;

    if (layerCopy)
    {
      v35.receiver = v12;
      v35.super_class = MLCTrainingGraph;
      graphLayerList = [(MLCGraph *)&v35 graphLayerList];
      v34.receiver = v12;
      v34.super_class = MLCTrainingGraph;
      graphLayerList2 = [(MLCGraph *)&v34 graphLayerList];
      v28 = [graphLayerList objectAtIndexedSubscript:{objc_msgSend(graphLayerList2, "count") - 1}];
      resultTensors = [v28 resultTensors];
      v30 = [resultTensors objectAtIndexedSubscript:0];
      v33.receiver = v12;
      v33.super_class = MLCTrainingGraph;
      v31 = [(MLCGraph *)&v33 nodeWithLayer:layerCopy source:v30];
    }
  }

  return v12;
}

- (void)dealloc
{
  [(NSMutableArray *)self->_optimizerUpdateLayerList removeAllObjects];
  [(NSMutableArray *)self->_optimizerParameterList removeAllObjects];
  [(NSMutableArray *)self->_rootSourceGradientTensor removeAllObjects];
  [(NSMutableArray *)self->_lossLayersInTrainingGraph removeAllObjects];
  [(NSMutableArray *)self->_stopGradientTensorList removeAllObjects];
  optimizer = self->_optimizer;
  self->_optimizer = 0;

  v4.receiver = self;
  v4.super_class = MLCTrainingGraph;
  [(MLCGraph *)&v4 dealloc];
}

- (BOOL)isSourceTensorSharableWithResultGradientTensor:(id)tensor layer:(id)layer
{
  tensorCopy = tensor;
  if (([layer isDebuggingEnabled] & 1) != 0 || (objc_msgSend(tensorCopy, "childLayers"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "count"), v7, v8 != 1))
  {
    v15 = 0;
  }

  else
  {
    allOutputs = [(MLCGraph *)self allOutputs];
    v10 = [allOutputs count];

    if (v10)
    {
      v11 = 0;
      do
      {
        allOutputs2 = [(MLCGraph *)self allOutputs];
        allValues = [allOutputs2 allValues];
        v14 = [allValues objectAtIndexedSubscript:v11];

        v15 = v14 != tensorCopy;
        if (v14 == tensorCopy)
        {
          break;
        }

        ++v11;
        allOutputs3 = [(MLCGraph *)self allOutputs];
        v17 = [allOutputs3 count];
      }

      while (v11 < v17);
    }

    else
    {
      v15 = 1;
    }
  }

  return v15;
}

- (BOOL)allocateRootSourceGradientTensors:(id)tensors
{
  v51[2] = *MEMORY[0x277D85DE8];
  tensorsCopy = tensors;
  v5 = [MEMORY[0x277CBEBF8] mutableCopy];
  [(MLCTrainingGraph *)self setRootSourceGradientTensor:v5];

  graphLayerList = [(MLCGraph *)self graphLayerList];
  v7 = [graphLayerList count];

  if (v7)
  {
    v50 = 0;
    v8 = 0;
    do
    {
      graphLayerList2 = [(MLCGraph *)self graphLayerList];
      v10 = [graphLayerList2 objectAtIndexedSubscript:v8];

      if (([v10 skipLayer] & 1) == 0)
      {
        if ([v10 isTrainable])
        {
          sourceTensors = [v10 sourceTensors];
          v12 = [sourceTensors count];

          if (v12)
          {
            v13 = 0;
            v49 = v8;
            do
            {
              sourceTensors2 = [v10 sourceTensors];
              v15 = [sourceTensors2 objectAtIndexedSubscript:v13];

              if (([v15 computeFlags] & 8) == 0)
              {
                parentLayers = [v15 parentLayers];
                v17 = [parentLayers count];

                if (!v17)
                {
                  childLayers = [v15 childLayers];
                  v19 = [childLayers count];

                  if (v19)
                  {
                    v20 = 0;
                    v21 = 0;
                    do
                    {
                      childLayers2 = [v15 childLayers];
                      v23 = [childLayers2 objectAtIndexedSubscript:v20];
                      v21 += [v23 isGradientNeededForTensor:v15];

                      ++v20;
                      childLayers3 = [v15 childLayers];
                      v25 = [childLayers3 count];
                    }

                    while (v20 < v25);
                  }

                  else
                  {
                    v21 = 0;
                  }

                  v26 = v21 - 1;
                  if (!v21)
                  {
                    v26 = 0;
                  }

                  v27 = v26 + v21;
                  rootSourceGradientTensorCount = [v15 rootSourceGradientTensorCount];
                  if (![v15 rootSourceGradientTensorIndexStart] || v27 > objc_msgSend(v15, "rootSourceGradientTensorCount"))
                  {
                    rootSourceGradientTensorIndex = [v15 rootSourceGradientTensorIndex];
                    v30 = rootSourceGradientTensorIndex - [v15 rootSourceGradientTensorIndexStart];
                    [v15 setRootSourceGradientTensorIndexStart:v50 + 1];
                    [v15 setRootSourceGradientTensorCount:v27];
                    [v15 setRootSourceGradientTensorIndex:{v30 + objc_msgSend(v15, "rootSourceGradientTensorIndexStart")}];
                    for (; rootSourceGradientTensorCount < v27; ++rootSourceGradientTensorCount)
                    {
                      descriptor = [v15 descriptor];
                      v32 = [MLCTensor tensorWithDescriptor:descriptor];

                      [v32 setDevice:tensorsCopy];
                      rootSourceGradientTensor = [(MLCTrainingGraph *)self rootSourceGradientTensor];
                      [rootSourceGradientTensor setObject:v32 atIndexedSubscript:{objc_msgSend(v15, "rootSourceGradientTensorIndex") + rootSourceGradientTensorCount - 1}];
                    }

                    v8 = v49;
                    if (v27 > 1)
                    {
                      intermediateSumLayer = [v15 intermediateSumLayer];

                      if (!intermediateSumLayer)
                      {
                        v48 = [MLCArithmeticLayer layerWithOperation:0];
                        rootSourceGradientTensor2 = [(MLCTrainingGraph *)self rootSourceGradientTensor];
                        v46 = [rootSourceGradientTensor2 objectAtIndexedSubscript:{objc_msgSend(v15, "rootSourceGradientTensorIndexStart") - 1}];
                        v51[0] = v46;
                        rootSourceGradientTensor3 = [(MLCTrainingGraph *)self rootSourceGradientTensor];
                        v44 = [rootSourceGradientTensor3 objectAtIndexedSubscript:{objc_msgSend(v15, "rootSourceGradientTensorIndexStart")}];
                        v51[1] = v44;
                        v35 = [MEMORY[0x277CBEA60] arrayWithObjects:v51 count:2];
                        rootSourceGradientTensor4 = [(MLCTrainingGraph *)self rootSourceGradientTensor];
                        v37 = [rootSourceGradientTensor4 objectAtIndexedSubscript:{objc_msgSend(v15, "rootSourceGradientTensorIndexStart") + 1}];
                        [v48 compileForDevice:tensorsCopy sourceTensors:v35 resultTensor:v37];

                        [v15 setIntermediateSumLayer:v48];
                      }
                    }

                    v50 += v27;
                  }
                }
              }

              ++v13;
              sourceTensors3 = [v10 sourceTensors];
              v39 = [sourceTensors3 count];
            }

            while (v13 < v39);
          }
        }
      }

      ++v8;
      graphLayerList3 = [(MLCGraph *)self graphLayerList];
      v41 = [graphLayerList3 count];
    }

    while (v8 < v41);
  }

  v42 = *MEMORY[0x277D85DE8];
  return 1;
}

- (void)sumRootSourceGradientTensor:(id)tensor device:(id)device
{
  tensorCopy = tensor;
  deviceCopy = device;
  if ([tensorCopy rootSourceGradientTensorCount] >= 2)
  {
    rootSourceGradientTensorIndex = [tensorCopy rootSourceGradientTensorIndex];
    rootSourceGradientTensorIndexStart = [tensorCopy rootSourceGradientTensorIndexStart];
    v9 = rootSourceGradientTensorIndexStart - 1;
    v28 = rootSourceGradientTensorIndexStart - 2;
    if (rootSourceGradientTensorIndexStart - 1 < (rootSourceGradientTensorIndexStart - 2 + [tensorCopy rootSourceGradientTensorCount]))
    {
      v10 = rootSourceGradientTensorIndex - 1;
      v27 = deviceCopy;
      do
      {
        computeEngine = [deviceCopy computeEngine];
        rootSourceGradientTensor = [(MLCTrainingGraph *)self rootSourceGradientTensor];
        v13 = [rootSourceGradientTensor objectAtIndexedSubscript:v10];
        v14 = [computeEngine needToAllocateDeviceMemoryForTensor:v13];

        if (v14)
        {
          computeEngine2 = [deviceCopy computeEngine];
          rootSourceGradientTensor2 = [(MLCTrainingGraph *)self rootSourceGradientTensor];
          v17 = [rootSourceGradientTensor2 objectAtIndexedSubscript:v10];
          [computeEngine2 allocateDeviceMemoryForTensor:v17];
        }

        computeEngine3 = [deviceCopy computeEngine];
        intermediateSumLayer = [tensorCopy intermediateSumLayer];
        deviceOps = [intermediateSumLayer deviceOps];
        rootSourceGradientTensor3 = [(MLCTrainingGraph *)self rootSourceGradientTensor];
        v20 = [rootSourceGradientTensor3 objectAtIndexedSubscript:v9];
        rootSourceGradientTensor4 = [(MLCTrainingGraph *)self rootSourceGradientTensor];
        v22 = [rootSourceGradientTensor4 objectAtIndexedSubscript:v9 + 1];
        [(MLCTrainingGraph *)self rootSourceGradientTensor];
        v24 = v23 = self;
        v25 = [v24 objectAtIndexedSubscript:v10];
        LOBYTE(v26) = 0;
        [computeEngine3 dispatchForwardLayer:deviceOps sourceTensor:v20 secondaryTensor:v22 tertiaryTensor:0 resultTensor:v25 resultStateIsTemporary:0 forTraining:v26];

        self = v23;
        deviceCopy = v27;

        ++v10;
        v9 += 2;
      }

      while (v9 < v28 + [tensorCopy rootSourceGradientTensorCount]);
    }
  }
}

- (void)sumAllRootSourceGradientTensors:(id)tensors
{
  v27 = *MEMORY[0x277D85DE8];
  tensorsCopy = tensors;
  if (([(MLCGraph *)self compilerOptions]& 1) != 0 || ([(MLCGraph *)self compilerOptions]& 8) != 0)
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    allInputs = [(MLCGraph *)self allInputs];
    v14 = [allInputs countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v23;
      do
      {
        v17 = 0;
        do
        {
          if (*v23 != v16)
          {
            objc_enumerationMutation(allInputs);
          }

          v18 = *(*(&v22 + 1) + 8 * v17);
          allInputs2 = [(MLCGraph *)self allInputs];
          v20 = [allInputs2 objectForKeyedSubscript:v18];

          [(MLCTrainingGraph *)self sumRootSourceGradientTensor:v20 device:tensorsCopy];
          ++v17;
        }

        while (v15 != v17);
        v15 = [allInputs countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v15);
    }
  }

  else
  {
    optimizerParameterList = [(MLCTrainingGraph *)self optimizerParameterList];
    v6 = [optimizerParameterList count];

    if (v6)
    {
      v7 = 0;
      do
      {
        optimizerParameterList2 = [(MLCTrainingGraph *)self optimizerParameterList];
        v9 = [optimizerParameterList2 objectAtIndexedSubscript:v7];

        tensor = [v9 tensor];
        [(MLCTrainingGraph *)self sumRootSourceGradientTensor:tensor device:tensorsCopy];

        ++v7;
        optimizerParameterList3 = [(MLCTrainingGraph *)self optimizerParameterList];
        v12 = [optimizerParameterList3 count];
      }

      while (v7 < v12);
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (BOOL)allocateGradientTensorsForMultipleChildrenOfLayer:(id)layer gradientTensorsAreTemporary:(BOOL)temporary device:(id)device
{
  v39[2] = *MEMORY[0x277D85DE8];
  layerCopy = layer;
  deviceCopy = device;
  v8 = 0;
  v9 = 0;
  while (1)
  {
    resultTensors = [layerCopy resultTensors];
    v11 = [resultTensors objectAtIndexedSubscript:0];
    childLayers = [v11 childLayers];
    v13 = [childLayers count];

    if (v8 >= v13)
    {
      break;
    }

    resultTensors2 = [layerCopy resultTensors];
    v15 = [resultTensors2 objectAtIndexedSubscript:0];
    childLayers2 = [v15 childLayers];
    v17 = [childLayers2 objectAtIndexedSubscript:v8];

    v9 += [v17 compileForInferenceOnly] ^ 1;
    ++v8;
  }

  if (v9 > 1)
  {
    sourceGradientTensors = [layerCopy sourceGradientTensors];
    v19 = [sourceGradientTensors objectAtIndexedSubscript:0];

    v20 = 2 * v9 - 2;
    intermediateGradientTensors = [layerCopy intermediateGradientTensors];
    v22 = [intermediateGradientTensors count];

    for (i = v22 - (v22 != 0); i < v20; ++i)
    {
      descriptor = [v19 descriptor];
      v25 = [MLCTensor tensorWithDescriptor:descriptor];
      intermediateGradientTensors2 = [layerCopy intermediateGradientTensors];
      [intermediateGradientTensors2 setObject:v25 atIndexedSubscript:i];

      intermediateGradientTensors3 = [layerCopy intermediateGradientTensors];
      v28 = [intermediateGradientTensors3 objectAtIndexedSubscript:i];
      [v28 setDevice:deviceCopy];
    }

    intermediateGradientTensors4 = [layerCopy intermediateGradientTensors];
    [intermediateGradientTensors4 setObject:v19 atIndexedSubscript:2 * v9 - 2];

    [layerCopy setZeroIntermediateGradientTensors:1];
    intermediateSumLayer = [layerCopy intermediateSumLayer];

    if (!intermediateSumLayer)
    {
      v31 = [MLCArithmeticLayer layerWithOperation:0];
      intermediateGradientTensors5 = [layerCopy intermediateGradientTensors];
      v33 = [intermediateGradientTensors5 objectAtIndexedSubscript:0];
      v39[0] = v33;
      intermediateGradientTensors6 = [layerCopy intermediateGradientTensors];
      v35 = [intermediateGradientTensors6 objectAtIndexedSubscript:1];
      v39[1] = v35;
      v36 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:2];
      [v31 compileForDevice:deviceCopy sourceTensors:v36 resultTensor:v19];

      [layerCopy setIntermediateSumLayer:v31];
    }
  }

  v37 = *MEMORY[0x277D85DE8];
  return v9 > 1;
}

- (BOOL)allocateGradientTensorsForMultipleChildrenOfSplitLayer:(id)layer tensor:(id)tensor gradientTensorsAreTemporary:(BOOL)temporary device:(id)device
{
  v34[2] = *MEMORY[0x277D85DE8];
  layerCopy = layer;
  tensorCopy = tensor;
  deviceCopy = device;
  resultTensors = [layerCopy resultTensors];
  v12 = [resultTensors count];

  resultTensors2 = [layerCopy resultTensors];
  v14 = [resultTensors2 count];

  if (v14)
  {
    v15 = 0;
    while (1)
    {
      resultTensors3 = [layerCopy resultTensors];
      v17 = [resultTensors3 objectAtIndexedSubscript:v15];

      if (v17 == tensorCopy)
      {
        break;
      }

      ++v15;
      resultTensors4 = [layerCopy resultTensors];
      v19 = [resultTensors4 count];

      if (v15 >= v19)
      {
        goto LABEL_7;
      }
    }

    v12 = v15;
  }

LABEL_7:
  resultTensors5 = [layerCopy resultTensors];
  v21 = [resultTensors5 count];

  if (v12 < v21)
  {
    sourceGradientTensors = [layerCopy sourceGradientTensors];
    v23 = [sourceGradientTensors objectAtIndexedSubscript:v12];

    intermediateGradientTensors = [layerCopy intermediateGradientTensors];
    v25 = [intermediateGradientTensors count];

    descriptor = [v23 descriptor];
    v27 = [MLCTensor tensorWithDescriptor:descriptor];

    [v27 setDevice:deviceCopy];
    [v27 setSplitOffset:{objc_msgSend(v23, "splitOffset")}];
    [v27 setSplitDimension:{objc_msgSend(v23, "splitDimension")}];
    intermediateGradientTensors2 = [layerCopy intermediateGradientTensors];
    [intermediateGradientTensors2 setObject:v27 atIndexedSubscript:v25];

    [layerCopy setZeroIntermediateGradientTensors:1];
    intermediateSumLayer = [layerCopy intermediateSumLayer];

    if (!intermediateSumLayer)
    {
      v30 = [MLCArithmeticLayer layerWithOperation:0];
      v34[0] = v23;
      v34[1] = v27;
      v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:2];
      [v30 compileForDevice:deviceCopy sourceTensors:v31 resultTensor:v27];

      [layerCopy setIntermediateSumLayer:v30];
    }
  }

  v32 = *MEMORY[0x277D85DE8];
  return v12 < v21;
}

- (void)sumIntermediateGradientTensorsForLayer:(id)layer
{
  layerCopy = layer;
  if ([layerCopy intermediateGradientTensorIndex])
  {
    v3 = 0;
    v4 = 0;
    while (1)
    {
      resultTensors = [layerCopy resultTensors];
      v6 = [resultTensors objectAtIndexedSubscript:0];
      childLayers = [v6 childLayers];
      v8 = [childLayers count];

      if (v3 >= v8)
      {
        break;
      }

      resultTensors2 = [layerCopy resultTensors];
      v10 = [resultTensors2 objectAtIndexedSubscript:0];
      childLayers2 = [v10 childLayers];
      v12 = [childLayers2 objectAtIndexedSubscript:v3];

      v4 += [v12 compileForInferenceOnly] ^ 1;
      ++v3;
    }

    zeroIntermediateGradientTensors = [layerCopy zeroIntermediateGradientTensors];
    v14 = layerCopy;
    if (zeroIntermediateGradientTensors)
    {
      [layerCopy setZeroIntermediateGradientTensors:0];
      v14 = layerCopy;
      if (v4)
      {
        v15 = 0;
        while (1)
        {
          device = [v14 device];
          computeEngine = [device computeEngine];
          intermediateGradientTensors = [layerCopy intermediateGradientTensors];
          v19 = [intermediateGradientTensors objectAtIndexedSubscript:v15];
          v20 = [computeEngine needToAllocateDeviceMemoryForTensor:v19];

          if (v20)
          {
            break;
          }

          ++v15;
          v14 = layerCopy;
          if (v4 == v15)
          {
            goto LABEL_16;
          }
        }

        intermediateGradientTensors2 = [layerCopy intermediateGradientTensors];
        v22 = [intermediateGradientTensors2 objectAtIndexedSubscript:v15];
        descriptor = [v22 descriptor];
        v24 = malloc_type_calloc([descriptor tensorAllocationSizeInBytes], 1uLL, 0x629BF559uLL);

        v25 = MEMORY[0x277CBEA90];
        intermediateGradientTensors3 = [layerCopy intermediateGradientTensors];
        v27 = [intermediateGradientTensors3 objectAtIndexedSubscript:v15];
        descriptor2 = [v27 descriptor];
        v29 = [v25 dataWithBytesNoCopy:v24 length:objc_msgSend(descriptor2 freeWhenDone:{"tensorAllocationSizeInBytes"), 1}];

        v30 = layerCopy;
        for (i = 0; i != v4; ++i)
        {
          device2 = [v30 device];
          computeEngine2 = [device2 computeEngine];
          intermediateGradientTensors4 = [layerCopy intermediateGradientTensors];
          v35 = [intermediateGradientTensors4 objectAtIndexedSubscript:i];
          v36 = [computeEngine2 needToAllocateDeviceMemoryForTensor:v35];

          if (v36)
          {
            device3 = [layerCopy device];
            computeEngine3 = [device3 computeEngine];
            intermediateGradientTensors5 = [layerCopy intermediateGradientTensors];
            v40 = [intermediateGradientTensors5 objectAtIndexedSubscript:i];
            [computeEngine3 allocateDeviceMemoryForTensor:v40];

            intermediateGradientTensors6 = [layerCopy intermediateGradientTensors];
            v42 = [intermediateGradientTensors6 objectAtIndexedSubscript:i];
            [v42 setData:v29];

            device4 = [layerCopy device];
            computeEngine4 = [device4 computeEngine];
            intermediateGradientTensors7 = [layerCopy intermediateGradientTensors];
            v46 = [intermediateGradientTensors7 objectAtIndexedSubscript:i];
            [computeEngine4 dispatchBroadcastTensor:v46];
          }

          v30 = layerCopy;
        }

        v14 = layerCopy;
      }
    }

LABEL_16:
    intermediateGradientTensors8 = [v14 intermediateGradientTensors];
    v48 = [intermediateGradientTensors8 count];

    if (v48 != 1)
    {
      v49 = 0;
      do
      {
        device5 = [layerCopy device];
        computeEngine5 = [device5 computeEngine];
        intermediateGradientTensors9 = [layerCopy intermediateGradientTensors];
        v53 = [intermediateGradientTensors9 objectAtIndexedSubscript:v4];
        v54 = [computeEngine5 needToAllocateDeviceMemoryForTensor:v53];

        if (v54)
        {
          device6 = [layerCopy device];
          computeEngine6 = [device6 computeEngine];
          intermediateGradientTensors10 = [layerCopy intermediateGradientTensors];
          v58 = [intermediateGradientTensors10 objectAtIndexedSubscript:v4];
          [computeEngine6 allocateDeviceMemoryForTensor:v58];
        }

        device7 = [layerCopy device];
        computeEngine7 = [device7 computeEngine];
        intermediateSumLayer = [layerCopy intermediateSumLayer];
        deviceOps = [intermediateSumLayer deviceOps];
        intermediateGradientTensors11 = [layerCopy intermediateGradientTensors];
        v62 = [intermediateGradientTensors11 objectAtIndexedSubscript:v49];
        [layerCopy intermediateGradientTensors];
        v64 = v63 = v4;
        v65 = [v64 objectAtIndexedSubscript:v49 + 1];
        intermediateGradientTensors12 = [layerCopy intermediateGradientTensors];
        v67 = [intermediateGradientTensors12 objectAtIndexedSubscript:v63];
        LOBYTE(v70) = 0;
        [computeEngine7 dispatchForwardLayer:deviceOps sourceTensor:v62 secondaryTensor:v65 tertiaryTensor:0 resultTensor:v67 resultStateIsTemporary:0 forTraining:v70];

        v4 = v63 + 1;
        intermediateGradientTensors13 = [layerCopy intermediateGradientTensors];
        v69 = [intermediateGradientTensors13 count] - 1;

        v49 += 2;
      }

      while (v49 < v69);
    }
  }
}

- (id)resultGradientTensorToUseByExecuteGradientForLayer:(id)layer sourceIndex:(unint64_t)index incrementIntermediateIndex:(BOOL)intermediateIndex
{
  intermediateIndexCopy = intermediateIndex;
  layerCopy = layer;
  sourceTensors = [layerCopy sourceTensors];
  v10 = [sourceTensors objectAtIndexedSubscript:index];

  if (![v10 rootSourceGradientTensorIndex])
  {
    sourceTensors2 = [layerCopy sourceTensors];
    v14 = [sourceTensors2 objectAtIndexedSubscript:index];
    parentLayers = [v14 parentLayers];
    v16 = [parentLayers objectAtIndexedSubscript:0];

    intermediateGradientTensors = [v16 intermediateGradientTensors];
    if ([intermediateGradientTensors count])
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
        intermediateGradientTensors2 = [v16 intermediateGradientTensors];
        v12 = [intermediateGradientTensors2 objectAtIndexedSubscript:{objc_msgSend(v16, "intermediateGradientTensorIndex")}];

        if (intermediateIndexCopy)
        {
          [v16 setIntermediateGradientTensorIndex:{objc_msgSend(v16, "intermediateGradientTensorIndex") + 1}];
        }

LABEL_15:

        goto LABEL_16;
      }
    }

    else
    {
    }

    resultTensors = [v16 resultTensors];
    v12 = [resultTensors count];

    if (v12)
    {
      v21 = 0;
      v12 = 0;
      do
      {
        resultTensors2 = [v16 resultTensors];
        v23 = [resultTensors2 objectAtIndexedSubscript:v21];

        if (v23 == v10)
        {
          sourceGradientTensors = [v16 sourceGradientTensors];
          v25 = [sourceGradientTensors objectAtIndexedSubscript:v21];

          v12 = v25;
        }

        ++v21;
        resultTensors3 = [v16 resultTensors];
        v27 = [resultTensors3 count];
      }

      while (v21 < v27);
    }

    goto LABEL_15;
  }

  rootSourceGradientTensor = [(MLCTrainingGraph *)self rootSourceGradientTensor];
  v12 = [rootSourceGradientTensor objectAtIndexedSubscript:{objc_msgSend(v10, "rootSourceGradientTensorIndex") - 1}];

  if (intermediateIndexCopy && [v10 rootSourceGradientTensorCount] >= 2)
  {
    [v10 setRootSourceGradientTensorIndex:{objc_msgSend(v10, "rootSourceGradientTensorIndex") + 1}];
  }

LABEL_16:

  return v12;
}

- (void)linkRelatedGradientTensorsForConcatLayer:(id)layer device:(id)device
{
  layerCopy = layer;
  dimension = [layerCopy dimension];
  sourceTensors = [layerCopy sourceTensors];
  v6 = [sourceTensors count];

  if (v6)
  {
    v7 = 0;
    v8 = 0;
    do
    {
      resultGradientTensors = [layerCopy resultGradientTensors];
      v10 = [resultGradientTensors objectAtIndexedSubscript:v8];

      [v10 setConcatOffset:v7];
      [v10 setConcatDimension:dimension];
      sourceTensors2 = [layerCopy sourceTensors];
      v12 = [sourceTensors2 objectAtIndexedSubscript:v8];
      descriptor = [v12 descriptor];
      shape = [descriptor shape];
      v15 = [shape objectAtIndexedSubscript:dimension];
      v7 += [v15 unsignedIntegerValue];

      ++v8;
      sourceTensors3 = [layerCopy sourceTensors];
      v17 = [sourceTensors3 count];
    }

    while (v8 < v17);
  }
}

- (BOOL)setTrainingTensorParameters:(NSArray *)parameters
{
  v5 = parameters;
  optimizerParameterList = [(MLCTrainingGraph *)self optimizerParameterList];
  v7 = [optimizerParameterList count];

  if (v7)
  {
    tensor = +[MLCLog framework];
    if (os_log_type_enabled(tensor, OS_LOG_TYPE_ERROR))
    {
      [MLCTrainingGraph setTrainingTensorParameters:a2];
    }

LABEL_4:

    v9 = 0;
    goto LABEL_14;
  }

  if ([(NSArray *)v5 count])
  {
    v10 = 0;
    while (1)
    {
      v11 = [(NSArray *)v5 objectAtIndexedSubscript:v10];
      tensor = [v11 tensor];

      parentLayers = [tensor parentLayers];
      if ([parentLayers count])
      {
        break;
      }

      childLayers = [tensor childLayers];
      [childLayers count];

      if (++v10 >= [(NSArray *)v5 count])
      {
        goto LABEL_9;
      }
    }

    v19 = +[MLCLog framework];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [MLCTrainingGraph setTrainingTensorParameters:a2];
    }

    goto LABEL_4;
  }

LABEL_9:
  v14 = [MEMORY[0x277CBEBF8] mutableCopy];
  [(MLCTrainingGraph *)self setOptimizerParameterList:v14];

  if (v5 && [(NSArray *)v5 count])
  {
    v15 = 0;
    do
    {
      v16 = [(NSArray *)v5 objectAtIndexedSubscript:v15];
      optimizerParameterList2 = [(MLCTrainingGraph *)self optimizerParameterList];
      [optimizerParameterList2 setObject:v16 atIndexedSubscript:v15];

      ++v15;
    }

    while (v15 < [(NSArray *)v5 count]);
  }

  v9 = 1;
LABEL_14:

  return v9;
}

- (void)updateIsTrainableForLayerWithStopGradientTensor:(id)tensor checkChildLayers:(BOOL)layers
{
  layersCopy = layers;
  tensorCopy = tensor;
  parentLayers = [tensorCopy parentLayers];
  v7 = [parentLayers count];

  v8 = tensorCopy;
  if (v7)
  {
    parentLayers2 = [tensorCopy parentLayers];
    v10 = [parentLayers2 objectAtIndexedSubscript:0];

    if ([v10 isTrainable])
    {
      if (!layersCopy || ([tensorCopy childLayers], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "count"), v11, v12 <= 1))
      {
        [v10 setIsTrainable:0];
        sourceTensors = [v10 sourceTensors];
        v14 = [sourceTensors count];

        if (v14)
        {
          v15 = 0;
          do
          {
            sourceTensors2 = [v10 sourceTensors];
            v17 = [sourceTensors2 objectAtIndexedSubscript:v15];
            [(MLCTrainingGraph *)self updateIsTrainableForLayerWithStopGradientTensor:v17 checkChildLayers:1];

            ++v15;
            sourceTensors3 = [v10 sourceTensors];
            v19 = [sourceTensors3 count];
          }

          while (v15 < v19);
        }
      }
    }

    v8 = tensorCopy;
  }
}

- (void)markLayersAsTrainable
{
  graphLayerList = [(MLCGraph *)self graphLayerList];
  v4 = [graphLayerList count];

  if (v4)
  {
    v5 = 0;
    do
    {
      graphLayerList2 = [(MLCGraph *)self graphLayerList];
      v7 = [graphLayerList2 objectAtIndexedSubscript:v5];

      if (([v7 compileForInferenceOnly] & 1) == 0)
      {
        [v7 setIsTrainable:1];
      }

      ++v5;
      graphLayerList3 = [(MLCGraph *)self graphLayerList];
      v9 = [graphLayerList3 count];
    }

    while (v5 < v9);
  }
}

- (void)updateTrainableLayerList:(BOOL)list
{
  [(MLCTrainingGraph *)self markLayersAsTrainable];
  stopGradientTensorList = [(MLCTrainingGraph *)self stopGradientTensorList];
  v6 = [stopGradientTensorList count];

  if (v6)
  {
    v7 = 0;
    do
    {
      stopGradientTensorList2 = [(MLCTrainingGraph *)self stopGradientTensorList];
      v9 = [stopGradientTensorList2 objectAtIndexedSubscript:v7];
      [(MLCTrainingGraph *)self updateIsTrainableForLayerWithStopGradientTensor:v9 checkChildLayers:0];

      ++v7;
      stopGradientTensorList3 = [(MLCTrainingGraph *)self stopGradientTensorList];
      v11 = [stopGradientTensorList3 count];
    }

    while (v7 < v11);
  }

  if (([(MLCGraph *)self compilerOptions]& 1) != 0 || ([(MLCGraph *)self compilerOptions]& 8) != 0)
  {

    [(MLCTrainingGraph *)self setFirstTrainableLayerIndex:0];
  }

  else
  {
    graphLayerList = [(MLCGraph *)self graphLayerList];
    v13 = [graphLayerList count];

    if (v13)
    {
      v14 = 0;
      while (1)
      {
        graphLayerList2 = [(MLCGraph *)self graphLayerList];
        v22 = [graphLayerList2 objectAtIndexedSubscript:v14];

        if (([v22 skipLayer] & 1) == 0)
        {
          if ([v22 isTrainable])
          {
            optimizerParameterList = [(MLCTrainingGraph *)self optimizerParameterList];
            v17 = [optimizerParameterList count];

            if (v17)
            {
              break;
            }

            if ([v22 isDebuggingEnabled])
            {
              break;
            }

            if (list)
            {
              break;
            }

            if ([v22 isUpdatable])
            {
              break;
            }

            graphLayerList3 = [(MLCGraph *)self graphLayerList];
            v19 = [graphLayerList3 count] - 1;

            if (v14 >= v19)
            {
              break;
            }
          }
        }

        ++v14;
        graphLayerList4 = [(MLCGraph *)self graphLayerList];
        v21 = [graphLayerList4 count];

        if (v14 >= v21)
        {
          return;
        }
      }

      [(MLCTrainingGraph *)self setFirstTrainableLayerIndex:v14];
    }
  }
}

- (void)allocateGradientTensorsForLayersInGraph:(BOOL)graph
{
  graphCopy = graph;
  if (([(MLCGraph *)self compilerOptions]& 1) != 0)
  {
    LODWORD(v5) = 1;
  }

  else
  {
    v5 = ([(MLCGraph *)self compilerOptions]>> 3) & 1;
  }

  firstTrainableLayerIndex = [(MLCTrainingGraph *)self firstTrainableLayerIndex];
  graphLayerList = [(MLCGraph *)self graphLayerList];
  v8 = [graphLayerList count];

  if (firstTrainableLayerIndex < v8)
  {
    v42 = v5 | graphCopy;
    v9 = 0x278A68000uLL;
    while (1)
    {
      graphLayerList2 = [(MLCGraph *)self graphLayerList];
      v11 = [graphLayerList2 objectAtIndexedSubscript:firstTrainableLayerIndex];

      device = [v11 device];
      if (([v11 skipLayer] & 1) == 0)
      {
        if ([v11 isTrainable])
        {
          v13 = *(v9 + 2752);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            break;
          }
        }
      }

LABEL_26:

      ++firstTrainableLayerIndex;
      graphLayerList3 = [(MLCGraph *)self graphLayerList];
      v34 = [graphLayerList3 count];

      if (firstTrainableLayerIndex >= v34)
      {
        goto LABEL_27;
      }
    }

    [v11 allocateGradientsForParameters];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(MLCTrainingGraph *)self allocateGradientTensorsForMultipleChildrenOfLayer:v11 gradientTensorsAreTemporary:0 device:device];
    }

    sourceTensors = [v11 sourceTensors];
    v15 = [sourceTensors count];

    if (v15)
    {
      v16 = 0;
      v17 = 1;
      do
      {
        sourceTensors2 = [v11 sourceTensors];
        v19 = [sourceTensors2 objectAtIndexedSubscript:v16];
        computeFlags = [v19 computeFlags];

        if ((computeFlags & 8) == 0)
        {
          v21 = [(MLCTrainingGraph *)self resultGradientTensorToUseByExecuteGradientForLayer:v11 sourceIndex:v16 incrementIntermediateIndex:1];
          resultGradientTensors = [v11 resultGradientTensors];
          [resultGradientTensors setObject:v21 atIndexedSubscript:v16];

          sourceTensors3 = [v11 sourceTensors];
          v24 = [sourceTensors3 objectAtIndexedSubscript:v16];
          parentLayers = [v24 parentLayers];
          v26 = [parentLayers count];

          v17 = (v26 == 0) & v17;
        }

        ++v16;
        sourceTensors4 = [v11 sourceTensors];
        v28 = [sourceTensors4 count];
      }

      while (v16 < v28);
      v29 = v17 ^ 1;
      v9 = 0x278A68000;
    }

    else
    {
      v29 = 0;
    }

    if (((v42 | v29) & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        device2 = [v11 device];
        computeEngine = [device2 computeEngine];
        deviceOps = [v11 deviceOps];
        [computeEngine setConvolutionGradientComputeWeightsAndBiasOnly:deviceOps];
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_24;
        }

        device2 = [v11 device];
        computeEngine = [device2 computeEngine];
        deviceOps = [v11 deviceOps];
        [computeEngine setFullyConnectedGradientComputeWeightsAndBiasOnly:deviceOps];
      }
    }

LABEL_24:
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(MLCTrainingGraph *)self linkRelatedGradientTensorsForConcatLayer:v11 device:device];
    }

    goto LABEL_26;
  }

LABEL_27:
  firstTrainableLayerIndex2 = [(MLCTrainingGraph *)self firstTrainableLayerIndex];
  graphLayerList4 = [(MLCGraph *)self graphLayerList];
  v37 = [graphLayerList4 count];

  if (firstTrainableLayerIndex2 < v37)
  {
    do
    {
      graphLayerList5 = [(MLCGraph *)self graphLayerList];
      v39 = [graphLayerList5 objectAtIndexedSubscript:firstTrainableLayerIndex2];

      if ([v39 isTrainable])
      {
        if (([v39 skipLayer] & 1) == 0)
        {
          objc_opt_class();
          objc_opt_isKindOfClass();
        }
      }

      ++firstTrainableLayerIndex2;
      graphLayerList6 = [(MLCGraph *)self graphLayerList];
      v41 = [graphLayerList6 count];
    }

    while (firstTrainableLayerIndex2 < v41);
  }
}

- (BOOL)compileOptimizer:(MLCOptimizer *)optimizer
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = optimizer;
  deviceOps = [(MLCOptimizer *)v4 deviceOps];
  v6 = [deviceOps count];

  if (v6)
  {
    device = [(MLCOptimizer *)v4 device];
    device2 = [(MLCGraph *)self device];

    if (device != device2)
    {
      v9 = +[MLCLog framework];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [MLCTrainingGraph compileOptimizer:];
      }

LABEL_16:

      v18 = 0;
      goto LABEL_17;
    }
  }

  else
  {
    device3 = [(MLCGraph *)self device];

    if (!device3)
    {
      v9 = +[MLCLog framework];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [MLCTrainingGraph compileOptimizer:];
      }

      goto LABEL_16;
    }

    v11 = +[MLCLog execution];
    v12 = os_signpost_id_generate(v11);

    v13 = +[MLCLog execution];
    v14 = v13;
    if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
    {
      v21 = 138543362;
      v22 = v4;
      _os_signpost_emit_with_name_impl(&dword_238C1D000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "CompileOptimizer", "%{public,name=Optimizer}@ ", &v21, 0xCu);
    }

    device4 = [(MLCGraph *)self device];
    [(MLCOptimizer *)v4 compileForDevice:device4];

    v16 = +[MLCLog execution];
    v17 = v16;
    if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
    {
      LOWORD(v21) = 0;
      _os_signpost_emit_with_name_impl(&dword_238C1D000, v17, OS_SIGNPOST_INTERVAL_END, v12, "CompileOptimizer", "", &v21, 2u);
    }
  }

  [(MLCTrainingGraph *)self setOptimizer:v4];
  v18 = 1;
LABEL_17:

  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

- (BOOL)allocateOptimizerDataForGraph
{
  if ([(MLCTrainingGraph *)self allocateOptimizerData])
  {
    v3 = MEMORY[0x277CBEBF8];
    v4 = [MEMORY[0x277CBEBF8] mutableCopy];
    [(MLCTrainingGraph *)self setOptimizerUpdateLayerList:v4];

    v5 = [v3 mutableCopy];
    firstTrainableLayerIndex = [(MLCTrainingGraph *)self firstTrainableLayerIndex];
    graphLayerList = [(MLCGraph *)self graphLayerList];
    v8 = [graphLayerList count];

    if (firstTrainableLayerIndex >= v8)
    {
      v9 = 0;
    }

    else
    {
      v9 = 0;
      do
      {
        graphLayerList2 = [(MLCGraph *)self graphLayerList];
        v11 = [graphLayerList2 objectAtIndexedSubscript:firstTrainableLayerIndex];

        if ([v11 isUpdatable])
        {
          if ([v11 isTrainable])
          {
            optimizer = [(MLCTrainingGraph *)self optimizer];

            if (optimizer)
            {
              optimizer2 = [(MLCTrainingGraph *)self optimizer];
              [v11 allocateDataForOptimizer:optimizer2];

              optimizerUpdateLayerList = [(MLCTrainingGraph *)self optimizerUpdateLayerList];
              [optimizerUpdateLayerList addObject:v11];

              v9 += [v11 parametersCount];
              device = [v11 device];
              [v5 addObject:device];
            }
          }
        }

        ++firstTrainableLayerIndex;
        graphLayerList3 = [(MLCGraph *)self graphLayerList];
        v17 = [graphLayerList3 count];
      }

      while (firstTrainableLayerIndex < v17);
    }

    optimizerParameterList = [(MLCTrainingGraph *)self optimizerParameterList];
    v19 = [optimizerParameterList count];

    if (v19)
    {
      v20 = 0;
      do
      {
        optimizerParameterList2 = [(MLCTrainingGraph *)self optimizerParameterList];
        v22 = [optimizerParameterList2 objectAtIndexedSubscript:v20];

        optimizer3 = [(MLCTrainingGraph *)self optimizer];
        device2 = [(MLCGraph *)self device];
        [v22 allocateDataForOptimizer:optimizer3 device:device2 isVector:0];

        ++v9;
        device3 = [v22 device];
        [v5 addObject:device3];

        ++v20;
        optimizerParameterList3 = [(MLCTrainingGraph *)self optimizerParameterList];
        v27 = [optimizerParameterList3 count];
      }

      while (v20 < v27);
    }

    v28 = [MEMORY[0x277CBEB98] setWithArray:v5];
    [(MLCTrainingGraph *)self setOptimizerUpdateDeviceList:v28];

    [(MLCTrainingGraph *)self setAllocateOptimizerData:0];
    if (v9)
    {
      optimizer4 = [(MLCTrainingGraph *)self optimizer];
      device4 = [optimizer4 device];
      computeEngine = [device4 computeEngine];
      optimizer5 = [(MLCTrainingGraph *)self optimizer];
      [computeEngine allocateDeviceDataForGlobalNormClippingWithOptimizer:optimizer5 updatableParameterCount:v9];
    }
  }

  return 1;
}

- (BOOL)bindOptimizerData:(NSArray *)data deviceData:(NSArray *)deviceData withTensor:(MLCTensor *)tensor
{
  v8 = tensor;
  v9 = [(MLCTensor *)v8 bindOptimizerData:data deviceData:deviceData];
  if (v9)
  {
    optimizer = [(MLCTrainingGraph *)self optimizer];
    if (optimizer)
    {
      v11 = optimizer;
      optimizer2 = [(MLCTrainingGraph *)self optimizer];
      if (optimizer2)
      {
        v13 = optimizer2;
        allocateOptimizerData = [(MLCTrainingGraph *)self allocateOptimizerData];

        if (allocateOptimizerData)
        {
          goto LABEL_20;
        }
      }

      else
      {
      }

      if ([(MLCTensor *)v8 isLayerParameter])
      {
        childLayers = [(MLCTensor *)v8 childLayers];
        v16 = [childLayers count];

        if (v16)
        {
          v17 = 0;
          do
          {
            childLayers2 = [(MLCTensor *)v8 childLayers];
            v19 = [childLayers2 objectAtIndexedSubscript:v17];

            if ([v19 isUpdatable] && objc_msgSend(v19, "isTrainable"))
            {
              optimizer3 = [(MLCTrainingGraph *)self optimizer];
              [v19 allocateDataForOptimizer:optimizer3];
            }

            ++v17;
            childLayers3 = [(MLCTensor *)v8 childLayers];
            v22 = [childLayers3 count];
          }

          while (v17 < v22);
        }
      }

      else
      {
        optimizerParameterList = [(MLCTrainingGraph *)self optimizerParameterList];
        v24 = [optimizerParameterList count];

        if (v24)
        {
          v25 = 0;
          do
          {
            optimizerParameterList2 = [(MLCTrainingGraph *)self optimizerParameterList];
            v27 = [optimizerParameterList2 objectAtIndexedSubscript:v25];

            tensor = [v27 tensor];

            if (tensor == v8)
            {
              optimizer4 = [(MLCTrainingGraph *)self optimizer];
              device = [(MLCGraph *)self device];
              [v27 allocateDataForOptimizer:optimizer4 device:device isVector:0];
            }

            ++v25;
            optimizerParameterList3 = [(MLCTrainingGraph *)self optimizerParameterList];
            v32 = [optimizerParameterList3 count];
          }

          while (v25 < v32);
        }
      }
    }
  }

LABEL_20:

  return v9;
}

- (BOOL)recompileWithOptions:(unint64_t)options
{
  optionsCopy = options;
  v52 = *MEMORY[0x277D85DE8];
  if (![(MLCGraph *)self recompileAfterLinking]|| ([(MLCGraph *)self setRecompileAfterLinking:0], ([(MLCGraph *)self compilerOptions]& 1) != 0) || ([(MLCGraph *)self compilerOptions]& 2) != 0)
  {
    LOBYTE(v7) = 1;
  }

  else
  {
    compilerOptions = [(MLCGraph *)self compilerOptions];
    v7 = (compilerOptions >> 2) & 1;
    if ((compilerOptions & 4) != 0)
    {
      if ((optionsCopy & 4) != 0)
      {
        v12 = +[MLCLog execution];
        v8 = os_signpost_id_generate(v12);
      }

      else
      {
        v8 = 0;
      }

      v13 = +[MLCLog execution];
      v14 = v13;
      v15 = v8 - 1;
      if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_238C1D000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v8, "RecompileTrainingGraph", "", buf, 2u);
      }

      spid = v8;

      device = [(MLCGraph *)self device];
      computeEngine = [device computeEngine];
      graphLayerList = [(MLCGraph *)self graphLayerList];
      stopGradientTensorList = [(MLCTrainingGraph *)self stopGradientTensorList];
      [computeEngine fuseLayersForTrainingGraph:graphLayerList stopGradientTensorList:stopGradientTensorList];

      graphLayerList2 = [(MLCGraph *)self graphLayerList];
      v21 = [graphLayerList2 count];

      v22 = 0;
      if (v21)
      {
        v23 = 0;
        do
        {
          graphLayerList3 = [(MLCGraph *)self graphLayerList];
          v25 = [graphLayerList3 objectAtIndexedSubscript:v23];

          fusedLayers = [v25 fusedLayers];
          v27 = [fusedLayers count];

          if (v27)
          {
            ++v22;
            device2 = [v25 device];
            sourceTensors = [v25 sourceTensors];
            resultTensors = [v25 resultTensors];
            v31 = [resultTensors objectAtIndexedSubscript:0];
            [v25 compileForDevice:device2 sourceTensors:sourceTensors resultTensor:v31];

            [v25 allocateGradientsForParameters];
            if (![(MLCTrainingGraph *)self allocateOptimizerData])
            {
              if ([v25 isUpdatable])
              {
                if ([v25 isTrainable])
                {
                  optimizer = [(MLCTrainingGraph *)self optimizer];

                  if (optimizer)
                  {
                    optimizer2 = [(MLCTrainingGraph *)self optimizer];
                    [v25 allocateDataForOptimizer:optimizer2];
                  }
                }
              }

              fusedLayers2 = [v25 fusedLayers];
              v35 = [fusedLayers2 count];

              if (v35)
              {
                v36 = 0;
                do
                {
                  fusedLayers3 = [v25 fusedLayers];
                  v38 = [fusedLayers3 objectAtIndexedSubscript:v36];

                  if ([v38 isUpdatable])
                  {
                    if ([v38 isTrainable])
                    {
                      optimizer3 = [(MLCTrainingGraph *)self optimizer];

                      if (optimizer3)
                      {
                        optimizer4 = [(MLCTrainingGraph *)self optimizer];
                        [v38 allocateDataForOptimizer:optimizer4];
                      }
                    }
                  }

                  ++v36;
                  fusedLayers4 = [v25 fusedLayers];
                  v42 = [fusedLayers4 count];
                }

                while (v36 < v42);
              }
            }
          }

          ++v23;
          graphLayerList4 = [(MLCGraph *)self graphLayerList];
          v44 = [graphLayerList4 count];
        }

        while (v23 < v44);
      }

      device3 = [(MLCGraph *)self device];
      computeEngine2 = [device3 computeEngine];
      graphLayerList5 = [(MLCGraph *)self graphLayerList];
      [computeEngine2 optimizeComputationForTrainingGraph:graphLayerList5];

      v48 = +[MLCLog execution];
      v11 = v48;
      if (v15 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v48))
      {
        *buf = 134349056;
        v51 = v22;
        _os_signpost_emit_with_name_impl(&dword_238C1D000, v11, OS_SIGNPOST_INTERVAL_END, spid, "RecompileTrainingGraph", "%{public,name=LayersRecompiled}lu", buf, 0xCu);
      }
    }

    else
    {
      v11 = +[MLCLog framework];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [MLCTrainingGraph recompileWithOptions:a2];
      }
    }
  }

  v9 = *MEMORY[0x277D85DE8];
  return v7;
}

- (BOOL)compileWithOptions:(MLCGraphCompilationOptions)options device:(MLCDevice *)device inputTensors:(NSDictionary *)inputTensors inputTensorsData:(NSDictionary *)inputTensorsData
{
  v183 = *MEMORY[0x277D85DE8];
  v11 = device;
  v12 = inputTensors;
  v13 = inputTensorsData;
  if ([(MLCDevice *)v11 type]== MLCDeviceTypeANE)
  {
    v14 = +[MLCLog framework];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [MLCTrainingGraph compileWithOptions:a2 device:? inputTensors:? inputTensorsData:?];
    }

    goto LABEL_4;
  }

  if ([(MLCGraph *)self readyForExecution])
  {
    v14 = +[MLCLog framework];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [MLCTrainingGraph compileWithOptions:a2 device:? inputTensors:? inputTensorsData:?];
    }

    v15 = 1;
    goto LABEL_109;
  }

  if (v12 && !v13)
  {
    v14 = +[MLCLog framework];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [MLCTrainingGraph compileWithOptions:a2 device:? inputTensors:? inputTensorsData:?];
    }

    goto LABEL_4;
  }

  v16 = +[MLCLog execution];
  v17 = os_signpost_id_generate(v16);

  v18 = +[MLCLog execution];
  v19 = v18;
  spid = v17;
  v170 = v17 - 1;
  if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
  {
    v20 = objc_opt_class();
    v21 = NSStringFromClass(v20);
    *buf = 138543618;
    v180 = v21;
    v181 = 2050;
    v182 = options;
    _os_signpost_emit_with_name_impl(&dword_238C1D000, v19, OS_SIGNPOST_INTERVAL_BEGIN, v17, "CompileWithOptions", "%{public,name=Device}@ %{public,name=Options}llu", buf, 0x16u);
  }

  graphLayerList = [(MLCGraph *)self graphLayerList];
  v23 = [graphLayerList count];

  v171 = v13;
  if (!v23)
  {
    v172 = 0;
    goto LABEL_30;
  }

  v24 = options;
  v25 = 0;
  v172 = 0;
  v26 = 0;
  do
  {
    graphLayerList2 = [(MLCGraph *)self graphLayerList];
    v28 = [graphLayerList2 objectAtIndexedSubscript:v26];
    compileForInferenceOnly = [v28 compileForInferenceOnly];

    if (compileForInferenceOnly)
    {
      v14 = +[MLCLog framework];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v165 = NSStringFromSelector(aSelector);
        graphLayerList3 = [(MLCGraph *)self graphLayerList];
        v167 = [graphLayerList3 objectAtIndexedSubscript:v26];
        *buf = 138412546;
        v180 = v165;
        v181 = 2112;
        v182 = v167;
        _os_log_error_impl(&dword_238C1D000, v14, OS_LOG_TYPE_ERROR, "%@: Compiling a layer (%@) in graph that has already been compiled with for inference.  Please compile training graph before creating and compiling associated inference graph", buf, 0x16u);
      }

      goto LABEL_107;
    }

    graphLayerList4 = [(MLCGraph *)self graphLayerList];
    v31 = [graphLayerList4 objectAtIndexedSubscript:v26];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      graphLayerList5 = [(MLCGraph *)self graphLayerList];
      v34 = [graphLayerList5 objectAtIndexedSubscript:v26];

      descriptor = [v34 descriptor];
      scalesGradientByFrequency = [descriptor scalesGradientByFrequency];

      if ([(MLCDevice *)v11 type]== MLCDeviceTypeAny || [(MLCDevice *)v11 type]== MLCDeviceTypeGPU)
      {
        v172 = 1;
      }

      v25 |= scalesGradientByFrequency;
    }

    ++v26;
    graphLayerList6 = [(MLCGraph *)self graphLayerList];
    v38 = [graphLayerList6 count];
  }

  while (v26 < v38);
  v13 = v171;
  if ((v25 & 1) == 0)
  {
    options = v24;
    if (v12)
    {
      goto LABEL_31;
    }

    goto LABEL_40;
  }

  options = v24;
  if ([(MLCDevice *)v11 type]!= MLCDeviceTypeAny)
  {
LABEL_30:
    if (!v12)
    {
      goto LABEL_40;
    }

    goto LABEL_31;
  }

  [(MLCDevice *)v11 switchToCPUDevice];
  if (!v12)
  {
    goto LABEL_40;
  }

LABEL_31:
  if (v13)
  {
    v176 = 0u;
    v177 = 0u;
    v174 = 0u;
    v175 = 0u;
    v39 = v13;
    v40 = [(NSDictionary *)v39 countByEnumeratingWithState:&v174 objects:v178 count:16];
    if (v40)
    {
      v41 = v40;
      v42 = *v175;
      do
      {
        for (i = 0; i != v41; ++i)
        {
          if (*v175 != v42)
          {
            objc_enumerationMutation(v39);
          }

          v44 = [(NSDictionary *)v12 objectForKeyedSubscript:*(*(&v174 + 1) + 8 * i)];
          [v44 setComputeFlags:{objc_msgSend(v44, "computeFlags") | 2}];
        }

        v41 = [(NSDictionary *)v39 countByEnumeratingWithState:&v174 objects:v178 count:16];
      }

      while (v41);
    }

    [(MLCGraph *)self bindAndWriteData:v39 forInputs:v12 toDevice:v11 synchronous:1];
  }

LABEL_40:
  v45 = [MEMORY[0x277CBEBF8] mutableCopy];
  [(MLCTrainingGraph *)self setLossLayersInTrainingGraph:v45];

  [(MLCGraph *)self setCompilerOptions:options];
  if (!((2 * (options & 1)) | options & 6))
  {
    computeEngine = [(MLCDevice *)v11 computeEngine];
    graphLayerList7 = [(MLCGraph *)self graphLayerList];
    stopGradientTensorList = [(MLCTrainingGraph *)self stopGradientTensorList];
    [computeEngine fuseLayersForTrainingGraph:graphLayerList7 stopGradientTensorList:stopGradientTensorList];
  }

  v49 = [MEMORY[0x277CBEBF8] mutableCopy];
  [(MLCGraph *)self setLstmLayerIndexList:v49];

  graphLayerList8 = [(MLCGraph *)self graphLayerList];
  v51 = [graphLayerList8 count];

  if (v51)
  {
    v52 = 0;
    v173 = options;
    do
    {
      graphLayerList9 = [(MLCGraph *)self graphLayerList];
      v54 = [graphLayerList9 objectAtIndexedSubscript:v52];

      if (options)
      {
        [v54 setIsDebuggingEnabled:1];
      }

      if (([v54 skipLayer] & 1) == 0)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v55 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v52];
          lstmLayerIndexList = [(MLCGraph *)self lstmLayerIndexList];
          lstmLayerIndexList2 = [(MLCGraph *)self lstmLayerIndexList];
          [lstmLayerIndexList setObject:v55 atIndexedSubscript:{objc_msgSend(lstmLayerIndexList2, "count")}];
        }

        if ([(MLCDevice *)v11 type])
        {
          deviceOps = [v54 deviceOps];
          v59 = [deviceOps count];

          if (!v59)
          {
            resultTensors = [v54 resultTensors];
            v61 = [resultTensors count];

            if (v61)
            {
              v62 = 0;
              do
              {
                resultTensors2 = [v54 resultTensors];
                v64 = [resultTensors2 objectAtIndexedSubscript:v62];
                deviceMemory = [v64 deviceMemory];
                v66 = [deviceMemory count];

                if (v66)
                {
                  resultTensors3 = [v54 resultTensors];
                  v68 = [resultTensors3 objectAtIndexedSubscript:v62];
                  deviceMemory2 = [v68 deviceMemory];
                  [deviceMemory2 removeAllObjects];
                }

                ++v62;
                resultTensors4 = [v54 resultTensors];
                v71 = [resultTensors4 count];
              }

              while (v62 < v71);
            }

            resultGradientTensors = [v54 resultGradientTensors];
            v73 = [resultGradientTensors count];

            if (v73)
            {
              v74 = 0;
              do
              {
                resultGradientTensors2 = [v54 resultGradientTensors];
                v76 = [resultGradientTensors2 objectAtIndexedSubscript:v74];
                deviceMemory3 = [v76 deviceMemory];
                v78 = [deviceMemory3 count];

                if (v78)
                {
                  resultGradientTensors3 = [v54 resultGradientTensors];
                  v80 = [resultGradientTensors3 objectAtIndexedSubscript:v74];
                  deviceMemory4 = [v80 deviceMemory];
                  [deviceMemory4 removeAllObjects];
                }

                ++v74;
                resultGradientTensors4 = [v54 resultGradientTensors];
                v83 = [resultGradientTensors4 count];
              }

              while (v74 < v83);
            }
          }
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          resultTensors5 = [v54 resultTensors];
          v85 = [resultTensors5 count];

          if (v85)
          {
            resultTensors6 = [v54 resultTensors];
            v87 = [resultTensors6 objectAtIndexedSubscript:0];
            deviceMemory5 = [v87 deviceMemory];
            [deviceMemory5 removeAllObjects];
          }
        }

        objc_opt_class();
        LOBYTE(options) = v173;
        if (objc_opt_isKindOfClass())
        {
          [(MLCGraph *)self linkRelatedTensorsForConcatLayer:v54 device:v11];
        }
      }

      ++v52;
      graphLayerList10 = [(MLCGraph *)self graphLayerList];
      v90 = [graphLayerList10 count];
    }

    while (v52 < v90);
  }

  graphLayerList11 = [(MLCGraph *)self graphLayerList];
  v92 = [graphLayerList11 count];

  if (!v92)
  {
LABEL_89:
    lossLayersInTrainingGraph = [(MLCTrainingGraph *)self lossLayersInTrainingGraph];
    v129 = [lossLayersInTrainingGraph count];

    if (v129)
    {
      v130 = 0;
      v131 = 0;
      do
      {
        lossLayersInTrainingGraph2 = [(MLCTrainingGraph *)self lossLayersInTrainingGraph];
        v133 = [lossLayersInTrainingGraph2 objectAtIndexedSubscript:v130];
        objc_opt_class();
        v134 = objc_opt_isKindOfClass();

        v131 |= v134;
        ++v130;
        lossLayersInTrainingGraph3 = [(MLCTrainingGraph *)self lossLayersInTrainingGraph];
        v136 = [lossLayersInTrainingGraph3 count];
      }

      while (v130 < v136);
      if (v131)
      {
        graphLayerList12 = [(MLCGraph *)self graphLayerList];
        graphLayerList13 = [(MLCGraph *)self graphLayerList];
        v139 = [graphLayerList12 objectAtIndexedSubscript:{objc_msgSend(graphLayerList13, "count") - 1}];
        objc_opt_class();
        v140 = objc_opt_isKindOfClass();

        if ((v140 & 1) == 0)
        {
          v161 = +[MLCLog framework];
          if (os_log_type_enabled(v161, OS_LOG_TYPE_ERROR))
          {
            [MLCTrainingGraph compileWithOptions:? device:? inputTensors:? inputTensorsData:?];
          }

          v162 = +[MLCLog execution];
          v14 = v162;
          v13 = v171;
          if (v170 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v162))
          {
            goto LABEL_4;
          }

          *buf = 0;
LABEL_128:
          _os_signpost_emit_with_name_impl(&dword_238C1D000, v14, OS_SIGNPOST_INTERVAL_END, spid, "CompileWithOptions", "", buf, 2u);
          goto LABEL_4;
        }
      }
    }

    [(MLCGraph *)self setDevice:v11];
    if (([(MLCGraph *)self compilerOptions]>> 2) & 1 | v172 & 1 || ![(MLCGraph *)self staticBatchSizeInGraph])
    {
      computeEngine2 = [(MLCDevice *)v11 computeEngine];
      v142 = objc_opt_respondsToSelector();

      if (v142)
      {
        computeEngine3 = [(MLCDevice *)v11 computeEngine];
        [computeEngine3 selectDevicesWithBatchSize:1];
      }
    }

    optimizer = [(MLCTrainingGraph *)self optimizer];

    if (!optimizer || ([(MLCTrainingGraph *)self optimizer], v145 = objc_claimAutoreleasedReturnValue(), v146 = [(MLCTrainingGraph *)self compileOptimizer:v145], v145, v146))
    {
      computeEngine4 = [(MLCDevice *)v11 computeEngine];
      v148 = objc_opt_respondsToSelector();

      if (v148)
      {
        computeEngine5 = [(MLCDevice *)v11 computeEngine];
        graphLayerList14 = [(MLCGraph *)self graphLayerList];
        [computeEngine5 allocateDeviceHeapForGraph:graphLayerList14 forInference:0];
      }

      [(MLCTrainingGraph *)self markLayersAsTrainable];
      device = [(MLCGraph *)self device];
      computeEngine6 = [device computeEngine];
      graphLayerList15 = [(MLCGraph *)self graphLayerList];
      [computeEngine6 optimizeComputationForTrainingGraph:graphLayerList15];

      v15 = 1;
      [(MLCTrainingGraph *)self updateTrainableLayerList:1];
      [(MLCGraph *)self setReadyForExecution:1];
      [(MLCGraph *)self setAllocateDeviceMemoryForTensorsInGraph:[(MLCDevice *)v11 type]!= MLCDeviceTypeANE];
      v154 = +[MLCLog execution];
      v14 = v154;
      if (v170 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v13 = v171;
        if (os_signpost_enabled(v154))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_238C1D000, v14, OS_SIGNPOST_INTERVAL_END, spid, "CompileWithOptions", "", buf, 2u);
        }

        goto LABEL_109;
      }

LABEL_108:
      v13 = v171;
      goto LABEL_109;
    }

    v157 = +[MLCLog execution];
    v14 = v157;
    if (v170 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v13 = v171;
      if (!os_signpost_enabled(v157))
      {
        goto LABEL_4;
      }

      *buf = 0;
      goto LABEL_128;
    }

LABEL_107:
    v15 = 0;
    goto LABEL_108;
  }

  v93 = 0;
  v94 = 0x278A68000uLL;
  v95 = 0x278A68000uLL;
  while (1)
  {
    graphLayerList16 = [(MLCGraph *)self graphLayerList];
    v14 = [graphLayerList16 objectAtIndexedSubscript:v93];

    if (![v14 skipLayer])
    {
      break;
    }

    [v14 setDevice:v11];
LABEL_88:

    ++v93;
    graphLayerList17 = [(MLCGraph *)self graphLayerList];
    v127 = [graphLayerList17 count];

    if (v93 >= v127)
    {
      goto LABEL_89;
    }
  }

  v97 = *(v94 + 3152);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v158 = +[MLCLog framework];
    if (os_log_type_enabled(v158, OS_LOG_TYPE_ERROR))
    {
      [MLCTrainingGraph compileWithOptions:? device:? inputTensors:? inputTensorsData:?];
    }

    v13 = v171;
    goto LABEL_135;
  }

  deviceOps2 = [v14 deviceOps];
  v99 = [deviceOps2 count];

  if (v99)
  {
    device2 = [v14 device];
    v101 = [device2 isEqual:v11];

    if ((v101 & 1) == 0)
    {
      v163 = +[MLCLog framework];
      if (os_log_type_enabled(v163, OS_LOG_TYPE_ERROR))
      {
        [MLCTrainingGraph compileWithOptions:device:inputTensors:inputTensorsData:];
      }

      v164 = +[MLCLog execution];
      v158 = v164;
      v13 = v171;
      if (v170 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v164))
      {
        *buf = 0;
        goto LABEL_134;
      }

      goto LABEL_135;
    }

    [v14 setDevice:v11];
    goto LABEL_80;
  }

  if (![v14 isValidTrainingParameters])
  {
    goto LABEL_118;
  }

  v102 = v95;
  objc_opt_class();
  v103 = objc_opt_isKindOfClass();
  sourceTensors = [v14 sourceTensors];
  resultTensors7 = [v14 resultTensors];
  v106 = resultTensors7;
  if (v103)
  {
    v107 = [v14 compileForDevice:v11 sourceTensors:sourceTensors resultTensors:resultTensors7];

    v95 = v102;
    v94 = 0x278A68000;
    if ((v107 & 1) == 0)
    {
      goto LABEL_118;
    }

    goto LABEL_80;
  }

  v108 = [resultTensors7 objectAtIndexedSubscript:0];
  v109 = [v14 compileForDevice:v11 sourceTensors:sourceTensors resultTensor:v108];

  v95 = v102;
  v94 = 0x278A68000;
  if (v109)
  {
LABEL_80:
    resultTensors8 = [v14 resultTensors];
    v111 = [resultTensors8 count];

    if (v111)
    {
      v112 = 0;
      do
      {
        resultTensors9 = [v14 resultTensors];
        v114 = [resultTensors9 objectAtIndexedSubscript:v112];
        [v114 setDevice:v11];

        ++v112;
        resultTensors10 = [v14 resultTensors];
        v116 = [resultTensors10 count];
      }

      while (v112 < v116);
    }

    sourceGradientTensors = [v14 sourceGradientTensors];
    v118 = [sourceGradientTensors count];

    if (v118)
    {
      v119 = 0;
      do
      {
        sourceGradientTensors2 = [v14 sourceGradientTensors];
        v121 = [sourceGradientTensors2 objectAtIndexedSubscript:v119];
        [v121 setDevice:v11];

        ++v119;
        sourceGradientTensors3 = [v14 sourceGradientTensors];
        v123 = [sourceGradientTensors3 count];
      }

      while (v119 < v123);
    }

    v124 = *(v95 + 3040);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      lossLayersInTrainingGraph4 = [(MLCTrainingGraph *)self lossLayersInTrainingGraph];
      [lossLayersInTrainingGraph4 addObject:v14];
    }

    goto LABEL_88;
  }

LABEL_118:
  v159 = +[MLCLog framework];
  if (os_log_type_enabled(v159, OS_LOG_TYPE_ERROR))
  {
    [MLCTrainingGraph compileWithOptions:device:inputTensors:inputTensorsData:];
  }

  v160 = +[MLCLog execution];
  v158 = v160;
  v13 = v171;
  if (v170 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v160))
  {
    *buf = 0;
LABEL_134:
    _os_signpost_emit_with_name_impl(&dword_238C1D000, v158, OS_SIGNPOST_INTERVAL_END, spid, "CompileWithOptions", "", buf, 2u);
  }

LABEL_135:

LABEL_4:
  v15 = 0;
LABEL_109:

  v155 = *MEMORY[0x277D85DE8];
  return v15;
}

- (BOOL)stopGradientForTensors:(NSArray *)tensors
{
  v5 = tensors;
  if ([(MLCGraph *)self readyForExecution])
  {
    v6 = +[MLCLog framework];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [MLCTrainingGraph stopGradientForTensors:a2];
    }

LABEL_11:

    v11 = 0;
    goto LABEL_12;
  }

  if (![(MLCTrainingGraph *)self allocateResultGradientTensors])
  {
    v6 = +[MLCLog framework];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [MLCTrainingGraph stopGradientForTensors:a2];
    }

    goto LABEL_11;
  }

  stopGradientTensorList = [(MLCTrainingGraph *)self stopGradientTensorList];
  [stopGradientTensorList removeAllObjects];

  if ([(NSArray *)v5 count])
  {
    v8 = 0;
    do
    {
      v9 = [(NSArray *)v5 objectAtIndexedSubscript:v8];
      stopGradientTensorList2 = [(MLCTrainingGraph *)self stopGradientTensorList];
      [stopGradientTensorList2 setObject:v9 atIndexedSubscript:v8];

      ++v8;
    }

    while (v8 < [(NSArray *)v5 count]);
  }

  v11 = 1;
LABEL_12:

  return v11;
}

- (NSUInteger)deviceMemorySize
{
  graphLayerList = [(MLCGraph *)self graphLayerList];
  v4 = [graphLayerList count];

  v5 = 0;
  if (v4)
  {
    v6 = 0;
    do
    {
      graphLayerList2 = [(MLCGraph *)self graphLayerList];
      v8 = [graphLayerList2 objectAtIndexedSubscript:v6];

      optimizer = [(MLCTrainingGraph *)self optimizer];
      device = [v8 device];
      v5 += [v8 deviceMemorySizeWithOptimizer:optimizer device:device];

      ++v6;
      graphLayerList3 = [(MLCGraph *)self graphLayerList];
      v12 = [graphLayerList3 count];
    }

    while (v6 < v12);
  }

  rootSourceGradientTensor = [(MLCTrainingGraph *)self rootSourceGradientTensor];
  v14 = [rootSourceGradientTensor count];

  if (v14)
  {
    v15 = 0;
    do
    {
      rootSourceGradientTensor2 = [(MLCTrainingGraph *)self rootSourceGradientTensor];
      v17 = [rootSourceGradientTensor2 objectAtIndexedSubscript:v15];
      device2 = [v17 device];

      computeEngine = [device2 computeEngine];
      rootSourceGradientTensor3 = [(MLCTrainingGraph *)self rootSourceGradientTensor];
      v21 = [rootSourceGradientTensor3 objectAtIndexedSubscript:v15];
      v5 += [computeEngine deviceMemorySizeForTensor:v21];

      ++v15;
      rootSourceGradientTensor4 = [(MLCTrainingGraph *)self rootSourceGradientTensor];
      v23 = [rootSourceGradientTensor4 count];
    }

    while (v15 < v23);
  }

  return v5;
}

- (unint64_t)deviceMemorySizeWithDevice:(id)device
{
  deviceCopy = device;
  graphLayerList = [(MLCGraph *)self graphLayerList];
  v6 = [graphLayerList count];

  if (v6)
  {
    v7 = 0;
    v8 = 0;
    do
    {
      graphLayerList2 = [(MLCGraph *)self graphLayerList];
      v10 = [graphLayerList2 objectAtIndexedSubscript:v7];
      optimizer = [(MLCTrainingGraph *)self optimizer];
      v8 += [v10 deviceMemorySizeWithOptimizer:optimizer device:deviceCopy];

      ++v7;
      graphLayerList3 = [(MLCGraph *)self graphLayerList];
      v13 = [graphLayerList3 count];
    }

    while (v7 < v13);
  }

  else
  {
    v8 = 0;
  }

  rootSourceGradientTensor = [(MLCTrainingGraph *)self rootSourceGradientTensor];
  v15 = [rootSourceGradientTensor count];

  if (v15)
  {
    v16 = 0;
    do
    {
      computeEngine = [deviceCopy computeEngine];
      rootSourceGradientTensor2 = [(MLCTrainingGraph *)self rootSourceGradientTensor];
      v19 = [rootSourceGradientTensor2 objectAtIndexedSubscript:v16];
      v8 += [computeEngine deviceMemorySizeForTensor:v19];

      ++v16;
      rootSourceGradientTensor3 = [(MLCTrainingGraph *)self rootSourceGradientTensor];
      v21 = [rootSourceGradientTensor3 count];
    }

    while (v16 < v21);
  }

  return v8;
}

- (id)description
{
  allInputs = [(MLCGraph *)self allInputs];
  allKeys = [allInputs allKeys];

  allLossLabels = [(MLCGraph *)self allLossLabels];
  allKeys2 = [allLossLabels allKeys];

  allLossLabelWeights = [(MLCGraph *)self allLossLabelWeights];
  allKeys3 = [allLossLabelWeights allKeys];

  allOutputs = [(MLCGraph *)self allOutputs];
  allKeys4 = [allOutputs allKeys];

  v11 = MEMORY[0x277CCACA8];
  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  graphLayerList = [(MLCGraph *)self graphLayerList];
  v15 = [graphLayerList objectAtIndexedSubscript:0];
  optimizer = [(MLCTrainingGraph *)self optimizer];
  v20.receiver = self;
  v20.super_class = MLCTrainingGraph;
  v17 = [(MLCGraph *)&v20 description];
  v18 = [v11 stringWithFormat:@"%@: { rootLayer=%@ : optimizer=%@ : inputs=%@ : losslabels=%@ : lossLabelWeights= %@ : outputs= %@ : %@ }", v13, v15, optimizer, allKeys, allKeys2, allKeys3, allKeys4, v17];

  return v18;
}

- (BOOL)addInputs:(NSDictionary *)inputs lossLabels:(NSDictionary *)lossLabels
{
  v5.receiver = self;
  v5.super_class = MLCTrainingGraph;
  return [(MLCGraph *)&v5 addInputs:inputs lossLabels:lossLabels lossLabelWeights:0];
}

- (BOOL)addInputs:(NSDictionary *)inputs lossLabels:(NSDictionary *)lossLabels lossLabelWeights:(NSDictionary *)lossLabelWeights
{
  v6.receiver = self;
  v6.super_class = MLCTrainingGraph;
  return [(MLCGraph *)&v6 addInputs:inputs lossLabels:lossLabels lossLabelWeights:lossLabelWeights];
}

- (BOOL)addOutputs:(NSDictionary *)outputs
{
  v4.receiver = self;
  v4.super_class = MLCTrainingGraph;
  return [(MLCGraph *)&v4 addOutputs:outputs];
}

- (void)executeForwardToLayerIndex:(unint64_t)index resultTensor:(id)tensor resultStateIsTemporary:(BOOL)temporary batchSize:(unint64_t)size forTraining:(BOOL)training executionOptions:(unint64_t)options
{
  optionsCopy = options;
  temporaryCopy = temporary;
  trainingCopy = training;
  v168 = *MEMORY[0x277D85DE8];
  tensorCopy = tensor;
  context = objc_autoreleasePoolPush();
  if ((optionsCopy & 4) != 0)
  {
    v14 = +[MLCLog execution];
    v13 = os_signpost_id_generate(v14);
  }

  else
  {
    v13 = 0;
  }

  v15 = +[MLCLog execution];
  v16 = v15;
  v148 = v13 - 1;
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_238C1D000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v13, "ExecuteForward", "", buf, 2u);
  }

  device = [(MLCGraph *)self device];
  v18 = [device type] == 0;

  v147 = v13;
  if ((v18 & (optionsCopy >> 4)) != 0)
  {
    v19 = v13;
  }

  else
  {
    v19 = 0;
  }

  spid = v19;
  if (index)
  {
    v20 = 0;
    v161 = v19 - 1;
    v159 = index - 1;
    v156 = tensorCopy;
    indexCopy = index;
    sizeCopy = size;
    while (1)
    {
      graphLayerList = [(MLCGraph *)self graphLayerList];
      v22 = [graphLayerList objectAtIndexedSubscript:v20];

      device2 = [v22 device];
      v24 = +[MLCLog execution];
      v25 = v24;
      if (v161 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
      {
        v26 = objc_opt_class();
        v27 = NSStringFromClass(v26);
        layerID = [v22 layerID];
        *buf = 138543618;
        v165 = v27;
        v166 = 2050;
        v167 = layerID;
        _os_signpost_emit_with_name_impl(&dword_238C1D000, v25, OS_SIGNPOST_INTERVAL_BEGIN, spid, "ExecuteForward -- PerLayer", "%{public,name=MLCLayerType}@ %{public,name=LayerID}lu", buf, 0x16u);
      }

      if (tensorCopy && v20 == v159)
      {
        v162 = tensorCopy;
      }

      else
      {
        resultTensors = [v22 resultTensors];
        v162 = [resultTensors objectAtIndexedSubscript:0];
      }

      if ([v22 skipLayer])
      {
        v30 = +[MLCLog execution];
        v31 = v30;
        if (v161 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v30))
        {
          goto LABEL_67;
        }

        goto LABEL_66;
      }

      [v22 setBatchSize:size];
      if ([(MLCGraph *)self allocateDeviceMemoryForTensorsInGraph])
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          [(MLCGraph *)self allocateDeviceMemoryForTensor:v162 device:device2];
          resultTensors2 = [v22 resultTensors];
          v33 = [resultTensors2 count];

          if (v33 >= 2)
          {
            v34 = 1;
            do
            {
              resultTensors3 = [v22 resultTensors];
              v36 = [resultTensors3 objectAtIndexedSubscript:v34];
              [(MLCGraph *)self allocateDeviceMemoryForTensor:v36 device:device2];

              ++v34;
              resultTensors4 = [v22 resultTensors];
              v38 = [resultTensors4 count];
            }

            while (v34 < v38);
          }

          [(MLCGraph *)self updateDeviceMemoryReadCountForTensor:v162];
          resultTensors5 = [v22 resultTensors];
          v40 = [resultTensors5 count];

          if (v40 >= 2)
          {
            v41 = 1;
            do
            {
              resultTensors6 = [v22 resultTensors];
              v43 = [resultTensors6 objectAtIndexedSubscript:v41];
              [(MLCGraph *)self updateDeviceMemoryReadCountForTensor:v43];

              ++v41;
              resultTensors7 = [v22 resultTensors];
              v45 = [resultTensors7 count];
            }

            while (v41 < v45);
          }

          if ([v22 isTrainable])
          {
            [(MLCGraph *)self updateDeviceMemoryReadCountForGradientWithLayer:v22 tensor:v162 checkIfSourceNeeded:0 checkIfResultNeeded:1];
            resultTensors8 = [v22 resultTensors];
            v47 = [resultTensors8 count];

            if (v47 >= 2)
            {
              v48 = 1;
              do
              {
                resultTensors9 = [v22 resultTensors];
                v50 = [resultTensors9 objectAtIndexedSubscript:v48];
                [(MLCGraph *)self updateDeviceMemoryReadCountForGradientWithLayer:v22 tensor:v50 checkIfSourceNeeded:0 checkIfResultNeeded:1];

                ++v48;
                resultTensors10 = [v22 resultTensors];
                v52 = [resultTensors10 count];
              }

              while (v48 < v52);
            }

            sourceTensors = [v22 sourceTensors];
            v54 = [sourceTensors count];

            if (v54)
            {
              v55 = 0;
              do
              {
                sourceTensors2 = [v22 sourceTensors];
                v57 = [sourceTensors2 objectAtIndexedSubscript:v55];
                [(MLCGraph *)self updateDeviceMemoryReadCountForGradientWithLayer:v22 tensor:v57 checkIfSourceNeeded:1 checkIfResultNeeded:0];

                ++v55;
                sourceTensors3 = [v22 sourceTensors];
                v59 = [sourceTensors3 count];
              }

              while (v55 < v59);
            }
          }
        }
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        computeEngine = [device2 computeEngine];
        deviceOps = [v22 deviceOps];
        sourceTensors4 = [v22 sourceTensors];
        computeEngine2 = computeEngine;
        [computeEngine dispatchForwardConcatLayer:deviceOps sourceTensors:sourceTensors4 resultTensor:v162];
        goto LABEL_57;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [device2 computeEngine];
        selfCopy = self;
        v64 = v20;
        v66 = v65 = device2;
        [v22 deviceOps];
        v68 = v67 = size;
        sourceTensors4 = [v22 sourceTensors];
        resultTensors12 = [sourceTensors4 objectAtIndexedSubscript:0];
        resultTensors11 = [v22 resultTensors];
        computeEngine2 = v66;
        v71 = v66;
        device2 = v65;
        v20 = v64;
        self = selfCopy;
        [v71 dispatchForwardSplitLayer:v68 sourceTensor:resultTensors12 resultTensors:resultTensors11];

        deviceOps = v68;
        size = v67;
        tensorCopy = v156;
        goto LABEL_42;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        computeEngine2 = [device2 computeEngine];
        deviceOps2 = [v22 deviceOps];
        sourceTensors4 = [v22 sourceTensors];
        v72 = [sourceTensors4 objectAtIndexedSubscript:0];
        binaryOperation = [v22 binaryOperation];
        v74 = 0;
        if (binaryOperation)
        {
          sourceTensors5 = [v22 sourceTensors];
          v74 = [sourceTensors5 objectAtIndexedSubscript:1];
          v145 = v74;
        }

        sourceTensors6 = [v22 sourceTensors];
        if ([sourceTensors6 count] == 3)
        {
          [v22 sourceTensors];
          v76 = v142 = binaryOperation;
          v77 = [v76 objectAtIndexedSubscript:2];
          LOBYTE(v138) = trainingCopy;
          [computeEngine2 dispatchForwardLayer:deviceOps2 sourceTensor:v72 secondaryTensor:v74 tertiaryTensor:v77 resultTensor:v162 resultStateIsTemporary:temporaryCopy forTraining:v138];

          tensorCopy = v156;
          binaryOperation = v142;
        }

        else
        {
          LOBYTE(v138) = trainingCopy;
          [computeEngine2 dispatchForwardLayer:deviceOps2 sourceTensor:v72 secondaryTensor:v74 tertiaryTensor:0 resultTensor:v162 resultStateIsTemporary:temporaryCopy forTraining:v138];
        }

        size = sizeCopy;
        if (binaryOperation)
        {
        }

        goto LABEL_56;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v78 = v22;
        lossLabels = [v78 lossLabels];
        descriptor = [lossLabels descriptor];
        stride = [descriptor stride];
        v82 = [stride objectAtIndexedSubscript:0];
        v154 = [v82 unsignedIntegerValue] >> 2;

        computeEngine2 = [device2 computeEngine];
        deviceOps3 = [v78 deviceOps];
        sourceTensors4 = [v78 sourceTensors];
        v84 = [sourceTensors4 objectAtIndexedSubscript:0];
        lossLabels2 = [v78 lossLabels];
        weights = [v78 weights];

        BYTE1(v138) = trainingCopy;
        LOBYTE(v138) = temporaryCopy;
        [computeEngine2 dispatchForwardLossLayer:deviceOps3 sourceTensor:v84 labelsTensor:lossLabels2 labelsTensorStride:v154 weightsTensor:weights resultTensor:v162 resultStateIsTemporary:v138 forTraining:?];

        tensorCopy = v156;
        deviceOps = deviceOps3;
LABEL_50:

        goto LABEL_51;
      }

      objc_opt_class();
      size = sizeCopy;
      if (objc_opt_isKindOfClass())
      {
        computeEngine3 = [device2 computeEngine];
        deviceOps = [v22 deviceOps];
        sourceTensors4 = [v22 sourceTensors];
        resultTensors12 = [v22 resultTensors];
        computeEngine2 = computeEngine3;
        [computeEngine3 dispatchRNNForwardLayer:deviceOps sourceTensors:sourceTensors4 resultTensors:resultTensors12 resultStateIsTemporary:temporaryCopy forTraining:trainingCopy];
        goto LABEL_42;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        computeEngine4 = [device2 computeEngine];
        deviceOps = [v22 deviceOps];
        sourceTensors4 = [v22 sourceTensors];
        computeEngine2 = computeEngine4;
        [computeEngine4 dispatchForwardMHALayer:deviceOps sourceTensors:sourceTensors4 resultTensor:v162 resultStateIsTemporary:temporaryCopy forTraining:trainingCopy];
        goto LABEL_57;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        computeEngine5 = [device2 computeEngine];
        deviceOps = [v22 deviceOps];
        sourceTensors4 = [v22 sourceTensors];
        computeEngine2 = computeEngine5;
        [computeEngine5 dispatchForwardMatMulLayer:deviceOps sourceTensors:sourceTensors4 resultTensor:v162];
        goto LABEL_57;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        computeEngine6 = [device2 computeEngine];
        deviceOps = [v22 deviceOps];
        sourceTensors4 = [v22 sourceTensors];
        resultTensors12 = [sourceTensors4 objectAtIndexedSubscript:0];
        computeEngine2 = computeEngine6;
        [computeEngine6 dispatchForwardSliceLayer:deviceOps sourceTensor:resultTensors12 resultTensor:v162 forTraining:trainingCopy];
LABEL_42:

LABEL_57:
        goto LABEL_58;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        break;
      }

      computeEngine7 = [device2 computeEngine];
      deviceOps4 = [v22 deviceOps];
      sourceTensors7 = [v22 sourceTensors];
      v102 = [sourceTensors7 objectAtIndexedSubscript:0];
      [computeEngine7 dispatchForwardReshapeLayer:deviceOps4 sourceTensor:v102 resultTensor:v162 resultStateIsTemporary:temporaryCopy forTraining:trainingCopy];

      sharedMemoryTensor = [v162 sharedMemoryTensor];

      if (!sharedMemoryTensor)
      {
        tensorCopy = v156;
        goto LABEL_59;
      }

      computeEngine2 = [v162 sharedMemoryTensor];
      childLayers = [v162 childLayers];
      v105 = [childLayers count];
      tensorCopy = v156;
      if (v105)
      {
        sourceTensors4 = [v162 childLayers];
        v106 = [sourceTensors4 count];
      }

      else
      {
        v106 = 1;
        sourceTensors4 = v141;
      }

      [computeEngine2 setReadCount:{objc_msgSend(computeEngine2, "readCount") + v106}];
      v141 = sourceTensors4;
      deviceOps = childLayers;
      size = sizeCopy;
      if (v105)
      {
        goto LABEL_57;
      }

LABEL_58:

LABEL_59:
      index = indexCopy;
      if (([v22 isDebuggingEnabled] & 1) == 0)
      {
        if ([(MLCGraph *)self allocateDeviceMemoryForTensorsInGraph])
        {
          sourceTensors8 = [v22 sourceTensors];
          v88 = [sourceTensors8 count];

          if (v88)
          {
            v89 = 0;
            do
            {
              sourceTensors9 = [v22 sourceTensors];
              v91 = [sourceTensors9 objectAtIndexedSubscript:v89];
              [(MLCGraph *)self freeDeviceMemoryForTensorIfSafe:v91 device:device2];

              ++v89;
              sourceTensors10 = [v22 sourceTensors];
              v93 = [sourceTensors10 count];
            }

            while (v89 < v93);
          }
        }
      }

      v94 = +[MLCLog execution];
      v31 = v94;
      if (v161 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v94))
      {
        goto LABEL_67;
      }

LABEL_66:
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_238C1D000, v31, OS_SIGNPOST_INTERVAL_END, spid, "ExecuteForward -- PerLayer", "", buf, 2u);
LABEL_67:

      if (++v20 == index)
      {
        goto LABEL_115;
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      computeEngine2 = [device2 computeEngine];
      deviceOps5 = [v22 deviceOps];
      sourceTensors4 = [v22 weights];
      sourceTensors11 = [v22 sourceTensors];
      v109 = [sourceTensors11 objectAtIndexedSubscript:0];
      [computeEngine2 dispatchForwardEmbeddingLayer:deviceOps5 weight:sourceTensors4 sourceTensor:v109 resultTensor:v162];

      deviceOps = deviceOps5;
      goto LABEL_83;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      computeEngine2 = [device2 computeEngine];
      deviceOps = [v22 deviceOps];
      sourceTensors12 = [v22 sourceTensors];
      sourceTensors4 = sourceTensors12;
      if (trainingCopy)
      {
        sourceTensors11 = [sourceTensors12 objectAtIndexedSubscript:0];
        [computeEngine2 dispatchForwardLayer:deviceOps sourceTensor:sourceTensors11 resultTensor:v162 resultStateIsTemporary:temporaryCopy forTraining:1];
        goto LABEL_83;
      }

      [computeEngine2 dispatchForwardConcatLayer:deviceOps sourceTensors:sourceTensors12 resultTensor:v162];
LABEL_51:
      size = sizeCopy;
      goto LABEL_57;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v111 = v22;
      computeEngine2 = [device2 computeEngine];
      deviceOps6 = [v111 deviceOps];
      sourceTensors4 = [v111 sourceTensors];
      v84 = [sourceTensors4 objectAtIndexedSubscript:0];
      reductionType = [v111 reductionType];
      dimensions = [v111 dimensions];

      v115 = reductionType;
      deviceOps = deviceOps6;
      [computeEngine2 dispatchForwardReduceLayer:deviceOps6 sourceTensor:v84 resultTensor:v162 reductionType:v115 reduceDimensions:dimensions forTraining:1];

      tensorCopy = v156;
      goto LABEL_50;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v116 = v22;
      deviceOps2 = [device2 computeEngine];
      sourceTensors4 = [v116 deviceOps];
      sourceTensors13 = [v116 sourceTensors];
      v143 = [sourceTensors13 objectAtIndexedSubscript:0];
      computeEngine2 = v116;
      sourceTensors14 = [v116 sourceTensors];
      v119 = [sourceTensors14 count];
      v120 = 0;
      if (v119 == 2)
      {
        sourceTensors15 = [computeEngine2 sourceTensors];
        v120 = [sourceTensors15 objectAtIndexedSubscript:1];
        v139 = v120;
      }

      [deviceOps2 dispatchForwardCompareLayer:sourceTensors4 sourceTensor:v143 secondaryTensor:v120 resultTensor:v162 compareOp:objc_msgSend(computeEngine2 forTraining:{"operation"), trainingCopy}];
      if (v119 == 2)
      {
      }

      size = sizeCopy;
LABEL_56:
      deviceOps = deviceOps2;
      goto LABEL_57;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      computeEngine8 = [device2 computeEngine];
      deviceOps = [v22 deviceOps];
      sourceTensors4 = [v22 sourceTensors];
      sourceTensors11 = [sourceTensors4 objectAtIndexedSubscript:0];
      computeEngine2 = computeEngine8;
      [computeEngine8 dispatchForwardFullyConnectedLayer:deviceOps sourceTensor:sourceTensors11 resultTensor:v162 forTraining:trainingCopy];
LABEL_83:

      goto LABEL_51;
    }

    objc_opt_class();
    size = sizeCopy;
    if (objc_opt_isKindOfClass())
    {
      computeEngine2 = [device2 computeEngine];
      deviceOps = [v22 deviceOps];
      sourceTensors4 = [v22 sourceTensors];
      v122 = [sourceTensors4 objectAtIndexedSubscript:0];
      sourceTensors16 = [v22 sourceTensors];
      v144 = [sourceTensors16 objectAtIndexedSubscript:1];
      v163[0] = v144;
      sourceTensors17 = [v22 sourceTensors];
      v124 = [sourceTensors17 objectAtIndexedSubscript:2];
      v163[1] = v124;
      v125 = [MEMORY[0x277CBEA60] arrayWithObjects:v163 count:2];
      [computeEngine2 dispatchForwardSelectLayer:deviceOps conditionTensor:v122 sourceTensors:v125 resultTensor:v162 forTraining:trainingCopy];

      size = sizeCopy;
      tensorCopy = v156;

      goto LABEL_57;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      computeEngine9 = [device2 computeEngine];
      deviceOps = [v22 deviceOps];
      sourceTensors4 = [v22 sourceTensors];
      computeEngine2 = computeEngine9;
      [computeEngine9 dispatchForwardScatterLayer:deviceOps sourceTensors:sourceTensors4 resultTensor:v162 forTraining:trainingCopy];
      goto LABEL_57;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      computeEngine10 = [device2 computeEngine];
      deviceOps = [v22 deviceOps];
      sourceTensors4 = [v22 sourceTensors];
      computeEngine2 = computeEngine10;
      [computeEngine10 dispatchForwardGatherLayer:deviceOps sourceTensors:sourceTensors4 resultTensor:v162 forTraining:trainingCopy];
      goto LABEL_57;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      fusedLayers = [v22 fusedLayers];
      if ([fusedLayers count])
      {
        fusedLayers2 = [v22 fusedLayers];
        v130 = [fusedLayers2 objectAtIndexedSubscript:0];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        size = sizeCopy;
        if (isKindOfClass)
        {
          computeEngine11 = [device2 computeEngine];
          deviceOps = [v22 deviceOps];
          sourceTensors4 = [v22 sourceTensors];
          computeEngine2 = computeEngine11;
          [computeEngine11 dispatchForwardFusedArithmeticLayerNormalizationLayer:deviceOps sourceTensors:sourceTensors4 resultTensor:v162 forTraining:trainingCopy];
LABEL_114:
          tensorCopy = v156;
          goto LABEL_57;
        }
      }

      else
      {

        size = sizeCopy;
      }
    }

    computeEngine12 = [device2 computeEngine];
    deviceOps = [v22 deviceOps];
    sourceTensors4 = [v22 sourceTensors];
    v134 = [sourceTensors4 objectAtIndexedSubscript:0];
    computeEngine2 = computeEngine12;
    [computeEngine12 dispatchForwardLayer:deviceOps sourceTensor:v134 resultTensor:v162 resultStateIsTemporary:temporaryCopy forTraining:trainingCopy];

    goto LABEL_114;
  }

LABEL_115:
  v135 = +[MLCLog execution];
  v136 = v135;
  if (v148 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v135))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_238C1D000, v136, OS_SIGNPOST_INTERVAL_END, v147, "ExecuteForward", "", buf, 2u);
  }

  objc_autoreleasePoolPop(context);
  v137 = *MEMORY[0x277D85DE8];
}

- (void)executeGradientFromLayerIndex:(unint64_t)index resultStateIsTemporary:(BOOL)temporary batchSize:(unint64_t)size executionOptions:(unint64_t)options
{
  optionsCopy = options;
  temporaryCopy = temporary;
  v202 = *MEMORY[0x277D85DE8];
  v189 = objc_autoreleasePoolPush();
  if ((optionsCopy & 4) != 0)
  {
    v12 = +[MLCLog execution];
    v11 = os_signpost_id_generate(v12);
  }

  else
  {
    v11 = 0;
  }

  v13 = +[MLCLog execution];
  v14 = v13;
  v188 = v11 - 1;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_238C1D000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v11, "ExecuteGradient", "", buf, 2u);
  }

  device = [(MLCGraph *)self device];
  v16 = [device type] == 0;

  if ((v16 & (optionsCopy >> 4)) != 0)
  {
    v17 = v11;
  }

  else
  {
    v17 = 0;
  }

  spid = v17;
  if ([(MLCTrainingGraph *)self firstTrainableLayerIndex]> index)
  {
LABEL_11:
    graphLayerList = [(MLCGraph *)self graphLayerList];
    v19 = [graphLayerList objectAtIndexedSubscript:0];
    device2 = [v19 device];
    [(MLCTrainingGraph *)self sumAllRootSourceGradientTensors:device2];

    firstTrainableLayerIndex = [(MLCTrainingGraph *)self firstTrainableLayerIndex];
    graphLayerList2 = [(MLCGraph *)self graphLayerList];
    v23 = [graphLayerList2 count];

    v24 = v189;
    if (firstTrainableLayerIndex < v23 && [(MLCTrainingGraph *)self firstTrainableLayerIndex])
    {
      v25 = 0;
      do
      {
        graphLayerList3 = [(MLCGraph *)self graphLayerList];
        v27 = [graphLayerList3 objectAtIndexedSubscript:v25];

        if (([v27 skipLayer] & 1) == 0)
        {
          device3 = [v27 device];
          computeEngine = [device3 computeEngine];
          deviceOps = [v27 deviceOps];
          [computeEngine incrementReadCountForGradientState:deviceOps increment:-1];
        }

        ++v25;
      }

      while (v25 < [(MLCTrainingGraph *)self firstTrainableLayerIndex]);
    }

    v31 = +[MLCLog execution];
    v32 = v31;
    if (v188 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v31))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_238C1D000, v32, OS_SIGNPOST_INTERVAL_END, v11, "ExecuteGradient", "", buf, 2u);
    }

    [(MLCGraph *)self setAllocateDeviceMemoryForTensorsInGraph:0];
    freeResourceList = [(MLCGraph *)self freeResourceList];
    [freeResourceList removeAllObjects];
    goto LABEL_21;
  }

  v35 = spid - 1;
  v190 = v11;
  sizeCopy = size;
  v193 = spid - 1;
  while (1)
  {
    graphLayerList4 = [(MLCGraph *)self graphLayerList];
    v37 = [graphLayerList4 objectAtIndexedSubscript:index];

    device4 = [v37 device];
    v38 = +[MLCLog execution];
    v39 = v38;
    if (v35 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v38))
    {
      v40 = objc_opt_class();
      v41 = NSStringFromClass(v40);
      layerID = [v37 layerID];
      *buf = 138543618;
      v199 = v41;
      v200 = 2050;
      v201 = layerID;
      _os_signpost_emit_with_name_impl(&dword_238C1D000, v39, OS_SIGNPOST_INTERVAL_BEGIN, spid, "ExecuteGradient -- PerLayer", "%{public,name=MLCLayerType}@ %{public,name=LayerID}lu", buf, 0x16u);
    }

    [v37 setBatchSize:size];
    intermediateGradientTensors = [v37 intermediateGradientTensors];
    v44 = [intermediateGradientTensors count];

    if (v44)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [(MLCTrainingGraph *)self sumIntermediateGradientTensorsForLayer:v37];
      }
    }

    if ([v37 skipLayer])
    {
      v45 = +[MLCLog execution];
      v46 = v45;
      v35 = spid - 1;
      if (v193 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v45))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_238C1D000, v46, OS_SIGNPOST_INTERVAL_END, spid, "ExecuteGradient -- PerLayer", "", buf, 2u);
      }

      goto LABEL_49;
    }

    if (![v37 isTrainable] || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      device5 = [v37 device];
      computeEngine2 = [device5 computeEngine];
      deviceOps2 = [v37 deviceOps];
      [computeEngine2 incrementReadCountForGradientState:deviceOps2 increment:-1];

      v50 = +[MLCLog execution];
      v46 = v50;
      v35 = spid - 1;
      if (v193 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v50))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_238C1D000, v46, OS_SIGNPOST_INTERVAL_END, spid, "ExecuteGradient -- PerLayer", "", buf, 2u);
      }

      size = sizeCopy;
      goto LABEL_49;
    }

    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    resultGradientTensors = [v37 resultGradientTensors];
    v46 = [resultGradientTensors objectAtIndexedSubscript:isKindOfClass & 1];

    sourceGradientTensors = [v37 sourceGradientTensors];
    v54 = [sourceGradientTensors count];

    if (v54)
    {
      break;
    }

LABEL_43:
    device6 = [v37 device];
    computeEngine3 = [device6 computeEngine];
    deviceOps3 = [v37 deviceOps];
    [computeEngine3 incrementReadCountForGradientState:deviceOps3 increment:-1];

    v65 = +[MLCLog execution];
    v66 = v65;
    v35 = spid - 1;
    if (v193 > 0xFFFFFFFFFFFFFFFDLL)
    {
      v11 = v190;
    }

    else
    {
      v11 = v190;
      if (os_signpost_enabled(v65))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_238C1D000, v66, OS_SIGNPOST_INTERVAL_END, spid, "ExecuteGradient -- PerLayer", "", buf, 2u);
      }
    }

    size = sizeCopy;
LABEL_48:

LABEL_49:
    if (index-- <= [(MLCTrainingGraph *)self firstTrainableLayerIndex])
    {
      goto LABEL_11;
    }
  }

  v55 = 0;
  while (1)
  {
    computeEngine4 = [device4 computeEngine];
    sourceGradientTensors2 = [v37 sourceGradientTensors];
    v58 = [sourceGradientTensors2 objectAtIndexedSubscript:v55];
    v59 = [computeEngine4 needToAllocateDeviceMemoryForTensor:v58];

    if ((v59 & 1) == 0)
    {
      break;
    }

    ++v55;
    sourceGradientTensors3 = [v37 sourceGradientTensors];
    v61 = [sourceGradientTensors3 count];

    if (v55 >= v61)
    {
      goto LABEL_43;
    }
  }

  v68 = device4;
  if ([(MLCGraph *)self allocateDeviceMemoryForTensorsInGraph])
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v69 = v37;
        if (![v69 operation] || objc_msgSend(v69, "operation") == 1 || (objc_msgSend(v69, "sourceTensors"), v70 = objc_claimAutoreleasedReturnValue(), v71 = objc_msgSend(v70, "count"), v70, v71 > 2))
        {

          goto LABEL_63;
        }
      }

      [(MLCGraph *)self allocateDeviceMemoryForTensor:v46 device:device4];
      resultGradientTensors2 = [v37 resultGradientTensors];
      v73 = [resultGradientTensors2 count];

      if (v73)
      {
        v74 = 0;
        do
        {
          resultGradientTensors3 = [v37 resultGradientTensors];
          v76 = [resultGradientTensors3 objectAtIndexedSubscript:v74];
          [(MLCGraph *)self allocateDeviceMemoryForTensor:v76 device:device4];

          ++v74;
          resultGradientTensors4 = [v37 resultGradientTensors];
          v78 = [resultGradientTensors4 count];
        }

        while (v74 < v78);
      }
    }
  }

LABEL_63:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([v37 binaryOperation])
    {
      resultGradientTensors5 = [v37 resultGradientTensors];
      freeResourceList = [resultGradientTensors5 objectAtIndexedSubscript:1];
    }

    else
    {
      freeResourceList = 0;
    }

    sourceTensors = [v37 sourceTensors];
    v85 = [sourceTensors count];

    if (v85 >= 3)
    {
      v172 = v46;
      v175 = a2;
      fusedLayers = [v37 fusedLayers];
      v87 = [fusedLayers objectAtIndexedSubscript:0];

      v171 = v87;
      sourceTensors2 = [v87 sourceTensors];
      v89 = [sourceTensors2 objectAtIndexedSubscript:0];
      sourceTensors3 = [v37 sourceTensors];
      v91 = [sourceTensors3 objectAtIndexedSubscript:2];

      computeEngine5 = [device4 computeEngine];
      fusedLayers2 = [v37 fusedLayers];
      v169 = [fusedLayers2 objectAtIndexedSubscript:0];
      deviceOps4 = [v169 deviceOps];
      sourceGradientTensors4 = [v37 sourceGradientTensors];
      v178 = [sourceGradientTensors4 objectAtIndexedSubscript:0];
      if (v89 == v91)
      {
        resultGradientTensors6 = [v37 resultGradientTensors];
        v95 = [resultGradientTensors6 objectAtIndexedSubscript:2];
        sourceGradientTensors5 = [v37 sourceGradientTensors];
        v97 = sourceGradientTensors5;
        v98 = 0;
      }

      else
      {
        resultGradientTensors6 = [v37 sourceGradientTensors];
        v95 = [resultGradientTensors6 objectAtIndexedSubscript:0];
        sourceGradientTensors5 = [v37 resultGradientTensors];
        v97 = sourceGradientTensors5;
        v98 = 2;
      }

      v129 = [sourceGradientTensors5 objectAtIndexedSubscript:v98];
      [computeEngine5 dispatchGradientLayer:deviceOps4 sourceGradientTensor:v178 resultGradientTensor:v95 secondaryResultGradientTensor:v129];

      v68 = device4;
      v46 = v172;
      a2 = v175;
    }

    computeEngine6 = [v68 computeEngine];
    deviceOps5 = [v37 deviceOps];
    sourceGradientTensors6 = [v37 sourceGradientTensors];
    resultGradientTensors7 = [sourceGradientTensors6 objectAtIndexedSubscript:0];
    [computeEngine6 dispatchGradientLayer:deviceOps5 sourceGradientTensor:resultGradientTensors7 resultGradientTensor:v46 secondaryResultGradientTensor:freeResourceList];
    goto LABEL_90;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    freeResourceList = [device4 computeEngine];
    computeEngine6 = [v37 deviceOps];
    deviceOps5 = [v37 sourceGradientTensors];
    sourceGradientTensors6 = [deviceOps5 objectAtIndexedSubscript:0];
    resultGradientTensors7 = [v37 resultGradientTensors];
    [freeResourceList dispatchGradientConcatLayer:computeEngine6 sourceGradientTensor:sourceGradientTensors6 resultGradientTensors:resultGradientTensors7];
LABEL_90:

LABEL_91:
    goto LABEL_92;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v173 = v46;
    v176 = a2;
    intermediateGradientTensors2 = [v37 intermediateGradientTensors];
    v100 = [intermediateGradientTensors2 count];

    if (v100)
    {
      v101 = 0;
      do
      {
        intermediateGradientTensors3 = [v37 intermediateGradientTensors];
        v103 = [intermediateGradientTensors3 objectAtIndexedSubscript:v101];

        sourceGradientTensors7 = [v37 sourceGradientTensors];
        v105 = [sourceGradientTensors7 count];

        if (v105)
        {
          v106 = 0;
          while (1)
          {
            sourceGradientTensors8 = [v37 sourceGradientTensors];
            v108 = [sourceGradientTensors8 objectAtIndexedSubscript:v106];
            splitOffset = [v108 splitOffset];
            splitOffset2 = [v103 splitOffset];

            if (splitOffset == splitOffset2)
            {
              break;
            }

            ++v106;
            sourceGradientTensors9 = [v37 sourceGradientTensors];
            v112 = [sourceGradientTensors9 count];

            if (v106 >= v112)
            {
              goto LABEL_81;
            }
          }

          computeEngine7 = [device4 computeEngine];
          intermediateSumLayer = [v37 intermediateSumLayer];
          deviceOps6 = [intermediateSumLayer deviceOps];
          sourceGradientTensors10 = [v37 sourceGradientTensors];
          v115 = [sourceGradientTensors10 objectAtIndexedSubscript:v106];
          sourceGradientTensors11 = [v37 sourceGradientTensors];
          v117 = [sourceGradientTensors11 objectAtIndexedSubscript:v106];
          LOBYTE(v168) = 0;
          [computeEngine7 dispatchForwardLayer:deviceOps6 sourceTensor:v115 secondaryTensor:v103 tertiaryTensor:0 resultTensor:v117 resultStateIsTemporary:0 forTraining:v168];
        }

LABEL_81:

        ++v101;
        intermediateGradientTensors4 = [v37 intermediateGradientTensors];
        v119 = [intermediateGradientTensors4 count];
      }

      while (v101 < v119);
    }

    freeResourceList = [device4 computeEngine];
    computeEngine6 = [v37 deviceOps];
    deviceOps5 = [v37 sourceGradientTensors];
    v46 = v173;
    [freeResourceList dispatchGradientSplitLayer:computeEngine6 sourceGradientTensors:deviceOps5 resultGradientTensor:v173];
    goto LABEL_86;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v120 = v37;
    lossLabels = [v120 lossLabels];
    [lossLabels descriptor];
    v122 = v176 = a2;
    stride = [v122 stride];
    v124 = [stride objectAtIndexedSubscript:0];
    v184 = [v124 unsignedIntegerValue] >> 2;

    freeResourceList = [device4 computeEngine];
    deviceOps7 = [v120 deviceOps];
    deviceOps5 = [v120 sourceGradientTensors];
    v125 = [deviceOps5 objectAtIndexedSubscript:0];
    lossLabels2 = [v120 lossLabels];
    [v120 weights];
    v128 = v127 = v46;

    [freeResourceList dispatchGradientLossLayer:deviceOps7 sourceGradientTensor:v125 labelsTensor:lossLabels2 labelsTensorStride:v184 weightsTensor:v128 resultGradientTensor:v127];
    v46 = v127;

    computeEngine6 = deviceOps7;
LABEL_85:

LABEL_86:
    a2 = v176;
LABEL_92:
    size = sizeCopy;
    goto LABEL_93;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    freeResourceList = [device4 computeEngine];
    computeEngine6 = [v37 deviceOps];
    deviceOps5 = [v37 sourceGradientTensors];
    sourceGradientTensors6 = [v37 resultGradientTensors];
    [freeResourceList dispatchRNNGradientLayer:computeEngine6 sourceGradientTensors:deviceOps5 resultGradientTensors:sourceGradientTensors6];
    goto LABEL_91;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    freeResourceList = [device4 computeEngine];
    computeEngine6 = [v37 deviceOps];
    deviceOps5 = [v37 sourceGradientTensors];
    sourceGradientTensors6 = [deviceOps5 objectAtIndexedSubscript:0];
    resultGradientTensors7 = [v37 resultGradientTensors];
    [freeResourceList dispatchGradientMHALayer:computeEngine6 sourceGradientTensor:sourceGradientTensors6 resultGradientTensors:resultGradientTensors7 resultStateIsTemporary:temporaryCopy];
    goto LABEL_90;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    freeResourceList = [device4 computeEngine];
    computeEngine6 = [v37 deviceOps];
    deviceOps5 = [v37 sourceGradientTensors];
    sourceGradientTensors6 = [deviceOps5 objectAtIndexedSubscript:0];
    resultGradientTensors7 = [v37 resultGradientTensors];
    [freeResourceList dispatchGradientMatMulLayer:computeEngine6 sourceGradientTensor:sourceGradientTensors6 resultGradientTensors:resultGradientTensors7];
    goto LABEL_90;
  }

  objc_opt_class();
  size = sizeCopy;
  if (objc_opt_isKindOfClass())
  {
    freeResourceList = [device4 computeEngine];
    computeEngine6 = [v37 deviceOps];
    deviceOps5 = [v37 sourceGradientTensors];
    v147 = [deviceOps5 objectAtIndexedSubscript:0];
    [freeResourceList dispatchGradientSliceLayer:computeEngine6 sourceGradientTensor:v147 resultGradientTensor:v46];
LABEL_120:

LABEL_93:
    v11 = v190;
    if (([v37 isDebuggingEnabled] & 1) == 0)
    {
      if ([(MLCGraph *)self allocateDeviceMemoryForTensorsInGraph])
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v177 = a2;
          deviceOps8 = [v37 deviceOps];
          v131 = [deviceOps8 objectAtIndexedSubscript:0];

          if ([v131 sourceOfForwardNeededForGradient])
          {
            sourceTensors4 = [v37 sourceTensors];
            v133 = [sourceTensors4 count];

            if (v133)
            {
              v134 = 0;
              do
              {
                sourceTensors5 = [v37 sourceTensors];
                v136 = [sourceTensors5 objectAtIndexedSubscript:v134];
                [(MLCGraph *)self freeDeviceMemoryForTensorIfSafe:v136 device:device4];

                ++v134;
                sourceTensors6 = [v37 sourceTensors];
                v138 = [sourceTensors6 count];
              }

              while (v134 < v138);
            }
          }

          if ([v131 resultOfForwardNeededForGradient])
          {
            resultTensors = [v37 resultTensors];
            v140 = [resultTensors count];

            if (v140)
            {
              v141 = 0;
              do
              {
                resultTensors2 = [v37 resultTensors];
                v143 = [resultTensors2 objectAtIndexedSubscript:v141];
                [(MLCGraph *)self freeDeviceMemoryForTensorIfSafe:v143 device:device4];

                ++v141;
                resultTensors3 = [v37 resultTensors];
                v145 = [resultTensors3 count];
              }

              while (v141 < v145);
            }
          }

          a2 = v177;
          size = sizeCopy;
        }
      }
    }

    v146 = +[MLCLog execution];
    v66 = v146;
    v35 = spid - 1;
    if (v193 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v146))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_238C1D000, v66, OS_SIGNPOST_INTERVAL_END, spid, "ExecuteGradient -- PerLayer", "", buf, 2u);
    }

    goto LABEL_48;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    freeResourceList = [device4 computeEngine];
    computeEngine6 = [v37 deviceOps];
    deviceOps5 = [v37 sourceGradientTensors];
    v147 = [deviceOps5 objectAtIndexedSubscript:0];
    [freeResourceList dispatchGradientEmbeddingLayer:computeEngine6 sourceGradientTensor:v147];
    goto LABEL_120;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    freeResourceList = [device4 computeEngine];
    computeEngine6 = [v37 deviceOps];
    deviceOps5 = [v37 sourceGradientTensors];
    v147 = [deviceOps5 objectAtIndexedSubscript:0];
    [freeResourceList dispatchGradientReshapeLayer:computeEngine6 sourceGradientTensor:v147 resultGradientTensor:v46];
    goto LABEL_120;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      freeResourceList = [device4 computeEngine];
      computeEngine6 = [v37 deviceOps];
      deviceOps5 = [v37 sourceGradientTensors];
      v147 = [deviceOps5 objectAtIndexedSubscript:0];
      [freeResourceList dispatchGradientFullyConnectedLayer:computeEngine6 sourceGradientTensor:v147 resultGradientTensor:v46 resultStateIsTemporary:temporaryCopy];
      goto LABEL_120;
    }

    v176 = a2;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      freeResourceList = [device4 computeEngine];
      computeEngine6 = [v37 deviceOps];
      deviceOps5 = [v37 sourceTensors];
      v125 = [deviceOps5 objectAtIndexedSubscript:0];
      sourceGradientTensors12 = [v37 sourceGradientTensors];
      v152 = [sourceGradientTensors12 objectAtIndexedSubscript:0];
      v197[0] = v46;
      resultGradientTensors8 = [v37 resultGradientTensors];
      [resultGradientTensors8 objectAtIndexedSubscript:2];
      v153 = v174 = v46;
      v197[1] = v153;
      v154 = [MEMORY[0x277CBEA60] arrayWithObjects:v197 count:2];
      [freeResourceList dispatchGradientSelectLayer:computeEngine6 conditionTensor:v125 sourceGradientTensor:v152 resultGradientTensors:v154];

      v46 = v174;
      goto LABEL_85;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      freeResourceList = [device4 computeEngine];
      computeEngine6 = [v37 deviceOps];
      deviceOps5 = [v37 sourceGradientTensors];
      sourceGradientTensors14 = [deviceOps5 objectAtIndexedSubscript:0];
      v196[0] = sourceGradientTensors14;
      sourceTensors7 = [v37 sourceTensors];
      v155 = [sourceTensors7 objectAtIndexedSubscript:1];
      v196[1] = v155;
      v156 = [MEMORY[0x277CBEA60] arrayWithObjects:v196 count:2];
      [freeResourceList dispatchForwardGatherLayer:computeEngine6 sourceTensors:v156 resultTensor:v46 forTraining:1];
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          fusedLayers3 = [v37 fusedLayers];
          if ([fusedLayers3 count])
          {
            fusedLayers4 = [v37 fusedLayers];
            v159 = [fusedLayers4 objectAtIndexedSubscript:0];
            objc_opt_class();
            v160 = objc_opt_isKindOfClass();

            if (v160)
            {
              computeEngine8 = [device4 computeEngine];
              deviceOps9 = [v37 deviceOps];
              sourceGradientTensors13 = [v37 sourceGradientTensors];
              v164 = [sourceGradientTensors13 objectAtIndexedSubscript:0];
              [computeEngine8 dispatchGradientLayer:deviceOps9 sourceGradientTensor:v164 resultGradientTensor:v46];

              freeResourceList = [device4 computeEngine];
              computeEngine6 = [v37 resultGradientTensors];
              deviceOps5 = [computeEngine6 objectAtIndexedSubscript:1];
              [freeResourceList shareDeviceMemoryWithResultTensor:deviceOps5 sourceTensor:v46];
              goto LABEL_86;
            }
          }

          else
          {
          }
        }

        freeResourceList = [device4 computeEngine];
        computeEngine6 = [v37 deviceOps];
        deviceOps5 = [v37 sourceGradientTensors];
        v165 = [deviceOps5 objectAtIndexedSubscript:0];
        [freeResourceList dispatchGradientLayer:computeEngine6 sourceGradientTensor:v165 resultGradientTensor:v46];

        goto LABEL_86;
      }

      freeResourceList = [device4 computeEngine];
      computeEngine6 = [v37 deviceOps];
      deviceOps5 = [v37 sourceGradientTensors];
      sourceGradientTensors14 = [deviceOps5 objectAtIndexedSubscript:0];
      v195[0] = sourceGradientTensors14;
      sourceTensors7 = [v37 sourceTensors];
      v155 = [sourceTensors7 objectAtIndexedSubscript:1];
      v195[1] = v155;
      v195[2] = v46;
      v156 = [MEMORY[0x277CBEA60] arrayWithObjects:v195 count:3];
      [freeResourceList dispatchForwardScatterLayer:computeEngine6 sourceTensors:v156 resultTensor:v46 forTraining:1];
    }

LABEL_125:
    goto LABEL_86;
  }

  v176 = a2;
  freeResourceList = v37;
  reductionType = [freeResourceList reductionType];
  if (reductionType > 9 || ((1 << reductionType) & 0x360) == 0)
  {
    computeEngine6 = [device4 computeEngine];
    deviceOps5 = [freeResourceList deviceOps];
    sourceGradientTensors14 = [freeResourceList sourceGradientTensors];
    sourceTensors7 = [sourceGradientTensors14 objectAtIndexedSubscript:0];
    reductionType2 = [freeResourceList reductionType];
    dimensions = [freeResourceList dimensions];
    [computeEngine6 dispatchGradientReduceLayer:deviceOps5 sourceGradientTensor:sourceTensors7 resultGradientTensor:v46 reductionType:reductionType2 reduceDimensions:dimensions];

    goto LABEL_125;
  }

  v166 = v46;
  v24 = v189;
  v167 = +[MLCLog framework];
  if (os_log_type_enabled(v167, OS_LOG_TYPE_ERROR))
  {
    [MLCTrainingGraph executeGradientFromLayerIndex:a2 resultStateIsTemporary:? batchSize:? executionOptions:?];
  }

LABEL_21:
  objc_autoreleasePoolPop(v24);
  v34 = *MEMORY[0x277D85DE8];
}

- (unint64_t)layerIndexToStoreSummedGradientsForTensor:(id)tensor
{
  tensorCopy = tensor;
  childLayers = [tensorCopy childLayers];
  v5 = [childLayers count];

  childLayers2 = [tensorCopy childLayers];
  v7 = [childLayers2 count];

  if (v7)
  {
    v8 = 0;
    while (1)
    {
      childLayers3 = [tensorCopy childLayers];
      v10 = [childLayers3 objectAtIndexedSubscript:v8];
      isTrainable = [v10 isTrainable];

      if (isTrainable)
      {
        break;
      }

      ++v8;
      childLayers4 = [tensorCopy childLayers];
      v13 = [childLayers4 count];

      if (v8 >= v13)
      {
        goto LABEL_7;
      }
    }

    v5 = v8;
  }

LABEL_7:

  return v5;
}

- (void)executeOptimizerUpdateWithExecutionOptions:(unint64_t)options
{
  optionsCopy = options;
  v254 = *MEMORY[0x277D85DE8];
  v5 = objc_autoreleasePoolPush();
  optimizer = [(MLCTrainingGraph *)self optimizer];

  if (optimizer)
  {
    [(MLCTrainingGraph *)self allocateOptimizerDataForGraph];
    optimizer2 = [(MLCTrainingGraph *)self optimizer];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    optimizer3 = [(MLCTrainingGraph *)self optimizer];
    objc_opt_class();
    v214 = objc_opt_isKindOfClass();

    v9 = 0x278A68000uLL;
    if ((optionsCopy & 4) != 0)
    {
      v11 = +[MLCLog execution];
      v10 = os_signpost_id_generate(v11);
    }

    else
    {
      v10 = 0;
    }

    v212 = v5;
    v12 = +[MLCLog execution];
    v13 = v12;
    v227 = v10 - 1;
    if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_238C1D000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v10, "ExecuteOptimizerUpdate", "", buf, 2u);
    }

    device = [(MLCGraph *)self device];
    v15 = [device type] == 0;

    v219 = v10;
    if ((v15 & (optionsCopy >> 4)) != 0)
    {
      v16 = v10;
    }

    else
    {
      v16 = 0;
    }

    optimizerUpdateLayerList = [(MLCTrainingGraph *)self optimizerUpdateLayerList];
    v18 = [optimizerUpdateLayerList count];

    selfCopy = self;
    if (v18)
    {
      v235 = 0;
      device2 = 0;
      spid = v16;
      v239 = v16 - 1;
      while (1)
      {
        v20 = device2;
        optimizerUpdateLayerList2 = [(MLCTrainingGraph *)self optimizerUpdateLayerList];
        v22 = v18 - 1;
        v23 = [optimizerUpdateLayerList2 objectAtIndexedSubscript:v18 - 1];

        v243 = v23;
        device2 = [v23 device];

        execution = [*(v9 + 3024) execution];
        v25 = execution;
        if (v239 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(execution))
        {
          v26 = objc_opt_class();
          v27 = NSStringFromClass(v26);
          layerID = [v23 layerID];
          *buf = 138543618;
          v251 = v27;
          v252 = 2050;
          v253 = layerID;
          _os_signpost_emit_with_name_impl(&dword_238C1D000, v25, OS_SIGNPOST_INTERVAL_BEGIN, spid, "ExecuteOptimizerUpdate -- PerLayer", "%{public,name=MLCLayerType}@ %{public,name=LayerID}lu", buf, 0x16u);
        }

        optimizerUpdateLayerList3 = [(MLCTrainingGraph *)self optimizerUpdateLayerList];
        v30 = [optimizerUpdateLayerList3 count];

        if (v18 == v30)
        {
          computeEngine = [device2 computeEngine];
          optimizer4 = [(MLCTrainingGraph *)self optimizer];
          deviceOps = [optimizer4 deviceOps];
          optimizer5 = [(MLCTrainingGraph *)self optimizer];
          [optimizer5 learningRate];
          [computeEngine setOptimizerLearningRate:deviceOps learningRate:?];

          v235 = 1;
        }

        if ((isKindOfClass | v214))
        {
          optimizer6 = [(MLCTrainingGraph *)self optimizer];
          computeEngine2 = [device2 computeEngine];
          optimizer7 = [(MLCTrainingGraph *)self optimizer];
          deviceOps2 = [optimizer7 deviceOps];
          [computeEngine2 setOptimizerTimeStep:deviceOps2 timeStep:{objc_msgSend(optimizer6, "timeStep")}];
        }

        objc_opt_class();
        v241 = v22;
        if (objc_opt_isKindOfClass())
        {
          computeEngine7 = v23;
          weights = [computeEngine7 weights];
          biases = [computeEngine7 biases];
          childLayers = [weights childLayers];
          v43 = [childLayers count];

          if (v43 < 2)
          {
            goto LABEL_27;
          }

          v44 = [(MLCTrainingGraph *)selfCopy layerIndexToStoreSummedGradientsForTensor:weights];
          childLayers2 = [weights childLayers];
          if (v44 == [childLayers2 count])
          {
            goto LABEL_31;
          }

          childLayers3 = [weights childLayers];
          [childLayers3 objectAtIndexedSubscript:v44];
          v48 = v47 = biases;

          v49 = v48 == computeEngine7;
          biases = v47;
          if (v49)
          {
            computeEngine3 = [device2 computeEngine];
            [computeEngine3 sumSharedGradientsForConvolutionLayerTensorParameter:weights layerIndexForSummedGradients:v44];

            if (v47)
            {
              computeEngine4 = [device2 computeEngine];
              [computeEngine4 sumSharedGradientsForConvolutionLayerTensorParameter:v47 layerIndexForSummedGradients:v44];
            }

LABEL_27:
            v52 = device2;
            computeEngine5 = [device2 computeEngine];
            deviceOps3 = [computeEngine7 deviceOps];
            optimizer8 = [(MLCTrainingGraph *)selfCopy optimizer];
            deviceOps4 = [optimizer8 deviceOps];
            [computeEngine7 weightsParameter];
            objc = v52;
            v221 = weights;
            v58 = v57 = biases;
            biasesParameter = [computeEngine7 biasesParameter];
            optimizer9 = [(MLCTrainingGraph *)selfCopy optimizer];
            oneStepOptimizerBuffers = [optimizer9 oneStepOptimizerBuffers];
            deviceOps6 = deviceOps3;
            v62 = deviceOps3;
            biasesParameters = deviceOps4;
            [computeEngine5 updateConvolutionLayer:v62 optimizer:deviceOps4 weightsParameter:v58 biasesParameter:biasesParameter arrayOfParams:oneStepOptimizerBuffers];

            v9 = 0x278A68000;
            optimizer14 = v57;
            computeEngine6 = v221;
            device2 = objc;
            goto LABEL_47;
          }
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              selfCopy2 = self;
              computeEngine7 = v23;
              beta = [computeEngine7 beta];
              v71 = [(MLCTrainingGraph *)selfCopy2 checkAndSumIfSharedParameterUpdateForNormalizationLayerTensor:beta layer:computeEngine7 device:device2 isBetaTensor:1];

              gamma = [computeEngine7 gamma];
              v73 = [(MLCTrainingGraph *)selfCopy2 checkAndSumIfSharedParameterUpdateForNormalizationLayerTensor:gamma layer:computeEngine7 device:device2 isBetaTensor:0];

              computeEngine6 = [device2 computeEngine];
              deviceOps5 = [computeEngine7 deviceOps];
              optimizer10 = [(MLCTrainingGraph *)selfCopy2 optimizer];
              deviceOps6 = [optimizer10 deviceOps];
              if (v71)
              {
                v217 = 0;
                betaParameter = v216;
              }

              else
              {
                betaParameter = [computeEngine7 betaParameter];
                v217 = betaParameter;
              }

              v218 = v71;
              obja = betaParameter;
              v98 = v73;
              if (v73)
              {
                gammaParameter = 0;
              }

              else
              {
                gammaParameter = [computeEngine7 gammaParameter];
                v213 = gammaParameter;
              }

              mean = [computeEngine7 mean];
              variance = [computeEngine7 variance];
              optimizer11 = [(MLCTrainingGraph *)selfCopy optimizer];
              oneStepOptimizerBuffers2 = [optimizer11 oneStepOptimizerBuffers];
              [computeEngine6 updateBatchNormalizationLayer:deviceOps5 optimizer:deviceOps6 betaParameter:v217 gammaParameter:gammaParameter meanTensor:mean varianceTensor:variance arrayOfParams:oneStepOptimizerBuffers2];

              if (!v98)
              {
              }

              optimizer8 = obja;
              v216 = obja;
              v9 = 0x278A68000;
              optimizer14 = deviceOps5;
              computeEngine5 = optimizer10;
              if (!v218)
              {
                goto LABEL_48;
              }

              goto LABEL_49;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              selfCopy3 = self;
              computeEngine7 = v23;
              beta2 = [computeEngine7 beta];
              v78 = [(MLCTrainingGraph *)selfCopy3 checkAndSumIfSharedParameterUpdateForNormalizationLayerTensor:beta2 layer:computeEngine7 device:device2 isBetaTensor:1];

              gamma2 = [computeEngine7 gamma];
              v80 = [(MLCTrainingGraph *)selfCopy3 checkAndSumIfSharedParameterUpdateForNormalizationLayerTensor:gamma2 layer:computeEngine7 device:device2 isBetaTensor:0];

              computeEngine6 = [device2 computeEngine];
              obj = [computeEngine7 deviceOps];
              computeEngine5 = [(MLCTrainingGraph *)selfCopy3 optimizer];
              deviceOps6 = [computeEngine5 deviceOps];
              v223 = v78;
              if (v78)
              {
                betaParameter2 = 0;
                v82 = v211;
                if (!v80)
                {
                  goto LABEL_39;
                }

LABEL_68:
                gammaParameter2 = 0;
              }

              else
              {
                betaParameter2 = [computeEngine7 betaParameter];
                v82 = betaParameter2;
                if (v80)
                {
                  goto LABEL_68;
                }

LABEL_39:
                gammaParameter2 = [computeEngine7 gammaParameter];
                v210 = gammaParameter2;
              }

              optimizer12 = [(MLCTrainingGraph *)selfCopy optimizer];
              oneStepOptimizerBuffers3 = [optimizer12 oneStepOptimizerBuffers];
              [computeEngine6 updateInstanceNormalizationLayer:obj optimizer:deviceOps6 betaParameter:betaParameter2 gammaParameter:gammaParameter2 arrayOfParams:oneStepOptimizerBuffers3];

              if (!v80)
              {
              }

              optimizer8 = v82;
              v211 = v82;
LABEL_88:
              v9 = 0x278A68000;
              optimizer14 = obj;
              if (!v223)
              {
                goto LABEL_48;
              }

              goto LABEL_49;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              selfCopy4 = self;
              computeEngine7 = v23;
              beta3 = [computeEngine7 beta];
              v102 = [(MLCTrainingGraph *)selfCopy4 checkAndSumIfSharedParameterUpdateForNormalizationLayerTensor:beta3 layer:computeEngine7 device:device2 isBetaTensor:1];

              gamma3 = [computeEngine7 gamma];
              v104 = [(MLCTrainingGraph *)selfCopy4 checkAndSumIfSharedParameterUpdateForNormalizationLayerTensor:gamma3 layer:computeEngine7 device:device2 isBetaTensor:0];

              computeEngine6 = [device2 computeEngine];
              obj = [computeEngine7 deviceOps];
              computeEngine5 = [(MLCTrainingGraph *)selfCopy4 optimizer];
              deviceOps6 = [computeEngine5 deviceOps];
              v223 = v102;
              if (v102)
              {
                betaParameter3 = 0;
                v106 = v209;
                if (!v104)
                {
                  goto LABEL_61;
                }

LABEL_77:
                gammaParameter3 = 0;
              }

              else
              {
                betaParameter3 = [computeEngine7 betaParameter];
                v106 = betaParameter3;
                if (v104)
                {
                  goto LABEL_77;
                }

LABEL_61:
                gammaParameter3 = [computeEngine7 gammaParameter];
                v208 = gammaParameter3;
              }

              optimizer13 = [(MLCTrainingGraph *)selfCopy optimizer];
              oneStepOptimizerBuffers4 = [optimizer13 oneStepOptimizerBuffers];
              [computeEngine6 updateLayerNormalizationLayer:obj optimizer:deviceOps6 betaParameter:betaParameter3 gammaParameter:gammaParameter3 arrayOfParams:oneStepOptimizerBuffers4];

              if (!v104)
              {
              }

              optimizer8 = v106;
              v209 = v106;
              goto LABEL_88;
            }

            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v124 = v23;
                [device2 computeEngine];
                computeEngine7 = v125 = self;
                computeEngine6 = [v124 deviceOps];
                optimizer14 = [(MLCTrainingGraph *)v125 optimizer];
                computeEngine5 = [optimizer14 deviceOps];
                inputWeightsParameters = [v124 inputWeightsParameters];
                obje = [v124 hiddenWeightsParameters];
                biasesParameters = [v124 biasesParameters];

                optimizer15 = [(MLCTrainingGraph *)v125 optimizer];
                oneStepOptimizerBuffers5 = [optimizer15 oneStepOptimizerBuffers];
                deviceOps6 = inputWeightsParameters;
                v127 = inputWeightsParameters;
                optimizer8 = obje;
                [computeEngine7 updateRNNLayer:computeEngine6 optimizer:computeEngine5 inputWeightsParameter:v127 hiddenWeightsParameter:obje biasesParameter:biasesParameters arrayOfParams:oneStepOptimizerBuffers5];
                goto LABEL_45;
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                [device2 computeEngine];
                computeEngine7 = v130 = self;
                computeEngine6 = [v23 deviceOps];
                optimizer14 = [(MLCTrainingGraph *)v130 optimizer];
                computeEngine5 = [optimizer14 deviceOps];
                weightsParameters = [v23 weightsParameters];
                biasesParameters2 = [v23 biasesParameters];
                optimizer16 = [(MLCTrainingGraph *)v130 optimizer];
                optimizer15 = [optimizer16 oneStepOptimizerBuffers];
                deviceOps6 = weightsParameters;
                v134 = weightsParameters;
                optimizer8 = biasesParameters2;
                biasesParameters = optimizer16;
                [computeEngine7 updateMultiheadAttentionLayer:computeEngine6 optimizer:computeEngine5 weightsParameter:v134 biasesParameter:optimizer8 arrayOfParams:optimizer15];
                goto LABEL_46;
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                computeEngine7 = [device2 computeEngine];
                computeEngine6 = [v23 deviceOps];
                optimizer14 = [v23 weightsParameter];
                computeEngine5 = [(MLCTrainingGraph *)selfCopy optimizer];
                deviceOps7 = [computeEngine5 deviceOps];
                optimizer17 = [(MLCTrainingGraph *)selfCopy optimizer];
                oneStepOptimizerBuffers6 = [optimizer17 oneStepOptimizerBuffers];
                deviceOps6 = deviceOps7;
                v138 = deviceOps7;
                optimizer8 = optimizer17;
                biasesParameters = oneStepOptimizerBuffers6;
                [computeEngine7 updateEmbeddingLayer:computeEngine6 weightsParameter:optimizer14 optimizer:v138 arrayOfParams:oneStepOptimizerBuffers6];
                goto LABEL_47;
              }

              goto LABEL_50;
            }

            selfCopy5 = self;
            computeEngine7 = v23;
            beta4 = [computeEngine7 beta];
            v116 = [(MLCTrainingGraph *)selfCopy5 checkAndSumIfSharedParameterUpdateForNormalizationLayerTensor:beta4 layer:computeEngine7 device:device2 isBetaTensor:1];

            gamma4 = [computeEngine7 gamma];
            v118 = [(MLCTrainingGraph *)selfCopy5 checkAndSumIfSharedParameterUpdateForNormalizationLayerTensor:gamma4 layer:computeEngine7 device:device2 isBetaTensor:0];

            computeEngine6 = [device2 computeEngine];
            obj = [computeEngine7 deviceOps];
            computeEngine5 = [(MLCTrainingGraph *)selfCopy5 optimizer];
            deviceOps6 = [computeEngine5 deviceOps];
            v223 = v116;
            if (v116)
            {
              betaParameter4 = 0;
              v120 = v207;
              if (!v118)
              {
                goto LABEL_75;
              }

LABEL_84:
              gammaParameter4 = 0;
            }

            else
            {
              betaParameter4 = [computeEngine7 betaParameter];
              v120 = betaParameter4;
              if (v118)
              {
                goto LABEL_84;
              }

LABEL_75:
              gammaParameter4 = [computeEngine7 gammaParameter];
              v206 = gammaParameter4;
            }

            optimizer18 = [(MLCTrainingGraph *)selfCopy optimizer];
            oneStepOptimizerBuffers7 = [optimizer18 oneStepOptimizerBuffers];
            [computeEngine6 updateGroupNormalizationLayer:obj optimizer:deviceOps6 betaParameter:betaParameter4 gammaParameter:gammaParameter4 arrayOfParams:oneStepOptimizerBuffers7];

            if (!v118)
            {
            }

            optimizer8 = v120;
            v207 = v120;
            goto LABEL_88;
          }

          computeEngine7 = v23;
          weights = [computeEngine7 weights];
          biases = [computeEngine7 biases];
          childLayers4 = [weights childLayers];
          v67 = [childLayers4 count];

          if (v67 < 2)
          {
            goto LABEL_44;
          }

          v68 = [(MLCTrainingGraph *)selfCopy layerIndexToStoreSummedGradientsForTensor:weights];
          childLayers2 = [weights childLayers];
          if (v68 == [childLayers2 count])
          {
LABEL_31:

            goto LABEL_32;
          }

          childLayers5 = [weights childLayers];
          [childLayers5 objectAtIndexedSubscript:v68];
          v86 = v85 = biases;

          v49 = v86 == computeEngine7;
          biases = v85;
          if (v49)
          {
            computeEngine8 = [device2 computeEngine];
            [computeEngine8 sumSharedGradientsForConvolutionLayerTensorParameter:weights layerIndexForSummedGradients:v68];

            if (v85)
            {
              computeEngine9 = [device2 computeEngine];
              [computeEngine9 sumSharedGradientsForConvolutionLayerTensorParameter:v85 layerIndexForSummedGradients:v68];
            }

LABEL_44:
            computeEngine5 = [device2 computeEngine];
            deviceOps8 = [computeEngine7 deviceOps];
            objd = device2;
            v224 = weights;
            v90 = biases;
            optimizer19 = [(MLCTrainingGraph *)selfCopy optimizer];
            biasesParameters = [optimizer19 deviceOps];
            optimizer15 = [computeEngine7 weightsParameter];
            oneStepOptimizerBuffers5 = [computeEngine7 biasesParameter];
            optimizer20 = [(MLCTrainingGraph *)selfCopy optimizer];
            oneStepOptimizerBuffers8 = [optimizer20 oneStepOptimizerBuffers];
            deviceOps6 = deviceOps8;
            v96 = deviceOps8;
            optimizer8 = optimizer19;
            [computeEngine5 updateFullyConnectedLayer:v96 optimizer:biasesParameters weightsParameter:optimizer15 biasesParameter:oneStepOptimizerBuffers5 arrayOfParams:oneStepOptimizerBuffers8];

            v9 = 0x278A68000uLL;
            optimizer14 = v90;
            computeEngine6 = v224;
            device2 = objd;
LABEL_45:

LABEL_46:
LABEL_47:

LABEL_48:
LABEL_49:

            v22 = v241;
LABEL_50:
            execution2 = [*(v9 + 3024) execution];
            computeEngine7 = execution2;
            if (v239 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(execution2))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&dword_238C1D000, computeEngine7, OS_SIGNPOST_INTERVAL_END, spid, "ExecuteOptimizerUpdate -- PerLayer", "", buf, 2u);
            }

            goto LABEL_53;
          }
        }

LABEL_32:

        v22 = v241;
LABEL_53:

        v18 = v22;
        self = selfCopy;
        if (!v22)
        {
          goto LABEL_95;
        }
      }
    }

    device2 = 0;
    v235 = 0;
LABEL_95:
    optimizerParameterList = [(MLCTrainingGraph *)self optimizerParameterList];
    v140 = [optimizerParameterList count];

    if (v140)
    {
      v141 = 0;
      do
      {
        optimizerParameterList2 = [(MLCTrainingGraph *)self optimizerParameterList];
        v143 = [optimizerParameterList2 objectAtIndexedSubscript:v141];

        execution3 = [*(v9 + 3024) execution];
        v145 = execution3;
        if (v227 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(execution3))
        {
          tensor = [v143 tensor];
          tensorID = [tensor tensorID];
          tensor2 = [v143 tensor];
          label = [tensor2 label];
          *buf = 134349314;
          v251 = tensorID;
          self = selfCopy;
          v252 = 2114;
          v253 = label;
          _os_signpost_emit_with_name_impl(&dword_238C1D000, v145, OS_SIGNPOST_INTERVAL_BEGIN, v219, "TensorParameterOptimizerUpdate", "Tensor parameter (%{public,name=TensorID}lu, %{public,name=TensorLabel}@)", buf, 0x16u);

          v9 = 0x278A68000;
        }

        device3 = [v143 device];

        if ([v143 isUpdatable])
        {
          v225 = device3;
          if ((v235 & 1) == 0)
          {
            computeEngine10 = [device3 computeEngine];
            optimizer21 = [(MLCTrainingGraph *)self optimizer];
            deviceOps9 = [optimizer21 deviceOps];
            optimizer22 = [(MLCTrainingGraph *)self optimizer];
            [optimizer22 learningRate];
            [computeEngine10 setOptimizerLearningRate:deviceOps9 learningRate:?];

            device3 = v225;
          }

          if ((isKindOfClass | v214))
          {
            optimizer23 = [(MLCTrainingGraph *)self optimizer];
            computeEngine11 = [device3 computeEngine];
            optimizer24 = [(MLCTrainingGraph *)self optimizer];
            deviceOps10 = [optimizer24 deviceOps];
            [computeEngine11 setOptimizerTimeStep:deviceOps10 timeStep:{objc_msgSend(optimizer23, "timeStep")}];

            device3 = v225;
          }

          computeEngine12 = [device3 computeEngine];
          optimizer25 = [(MLCTrainingGraph *)self optimizer];
          deviceOps11 = [optimizer25 deviceOps];
          [(MLCTrainingGraph *)self rootSourceGradientTensor];
          v163 = v162 = self;
          tensor3 = [v143 tensor];
          v165 = [v163 objectAtIndexedSubscript:{objc_msgSend(tensor3, "rootSourceGradientTensorIndex") - 1}];
          optimizer26 = [(MLCTrainingGraph *)v162 optimizer];
          oneStepOptimizerBuffers9 = [optimizer26 oneStepOptimizerBuffers];
          [computeEngine12 updateTensorParameter:v143 optimizer:deviceOps11 gradient:v165 arrayOfParams:oneStepOptimizerBuffers9];

          v9 = 0x278A68000uLL;
          v168 = +[MLCLog execution];
          v169 = v168;
          if (v227 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v168))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_238C1D000, v169, OS_SIGNPOST_INTERVAL_END, v219, "TensorParameterOptimizerUpdate", "", buf, 2u);
          }

          v235 = 1;
          self = selfCopy;
          device3 = v225;
        }

        ++v141;
        optimizerParameterList3 = [(MLCTrainingGraph *)self optimizerParameterList];
        v171 = [optimizerParameterList3 count];

        device2 = device3;
      }

      while (v141 < v171);
    }

    else
    {
      device3 = device2;
    }

    optimizer27 = [(MLCTrainingGraph *)self optimizer];
    oneStepOptimizerBuffers10 = [optimizer27 oneStepOptimizerBuffers];

    if (oneStepOptimizerBuffers10)
    {
      v226 = device3;
      v247 = 0u;
      v248 = 0u;
      v245 = 0u;
      v246 = 0u;
      objb = [(MLCTrainingGraph *)self optimizerUpdateDeviceList];
      v236 = [objb countByEnumeratingWithState:&v245 objects:v249 count:16];
      if (!v236)
      {
        goto LABEL_134;
      }

      v234 = *v246;
      while (1)
      {
        v174 = 0;
        do
        {
          if (*v246 != v234)
          {
            objc_enumerationMutation(objb);
          }

          v238 = v174;
          v242 = *(*(&v245 + 1) + 8 * v174);
          computeEngine13 = [v242 computeEngine];
          optimizer28 = [(MLCTrainingGraph *)self optimizer];
          deviceOps12 = [optimizer28 deviceOps];
          optimizer29 = [(MLCTrainingGraph *)self optimizer];
          oneStepOptimizerBuffers11 = [optimizer29 oneStepOptimizerBuffers];
          [computeEngine13 updateAllParametersWithOptimizer:deviceOps12 arrayOfParameters:oneStepOptimizerBuffers11];

          optimizerUpdateLayerList4 = [(MLCTrainingGraph *)self optimizerUpdateLayerList];
          v181 = [optimizerUpdateLayerList4 count];

          if (v181)
          {
            for (i = v181 - 1; i != -1; --i)
            {
              optimizerUpdateLayerList5 = [(MLCTrainingGraph *)self optimizerUpdateLayerList];
              v184 = [optimizerUpdateLayerList5 objectAtIndexedSubscript:i];

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v185 = v184;
                computeEngine14 = [v242 computeEngine];
                deviceOps13 = [v185 deviceOps];
                optimizer30 = [(MLCTrainingGraph *)self optimizer];
                deviceOps14 = [optimizer30 deviceOps];
                inputWeightsParameters2 = [v185 inputWeightsParameters];
                [v185 hiddenWeightsParameters];
                v191 = v244 = v184;
                biasesParameters3 = [v185 biasesParameters];

                optimizer31 = [(MLCTrainingGraph *)self optimizer];
                oneStepOptimizerBuffers12 = [optimizer31 oneStepOptimizerBuffers];
                [computeEngine14 restoreRNNParamsWithDeviceOps:deviceOps13 optimizer:deviceOps14 inputWeightsParameter:inputWeightsParameters2 hiddenWeightsParameter:v191 biasesParameter:biasesParameters3 arrayOfParams:oneStepOptimizerBuffers12];

                self = selfCopy;
                v184 = v244;
              }

              else
              {
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  goto LABEL_131;
                }

                computeEngine15 = [v242 computeEngine];
                v196 = objc_opt_respondsToSelector();

                if ((v196 & 1) == 0)
                {
                  goto LABEL_131;
                }

                computeEngine14 = v184;
                deviceOps13 = [computeEngine14 weights];
                childLayers6 = [deviceOps13 childLayers];
                v198 = [childLayers6 count];

                if (v198 >= 2)
                {
                  v199 = [(MLCTrainingGraph *)self layerIndexToStoreSummedGradientsForTensor:deviceOps13];
                  optimizer30 = [deviceOps13 childLayers];
                  if (v199 == [optimizer30 count])
                  {
                    goto LABEL_123;
                  }

                  childLayers7 = [deviceOps13 childLayers];
                  v201 = [childLayers7 objectAtIndexedSubscript:v199];

                  if (v201 != computeEngine14)
                  {
                    goto LABEL_124;
                  }
                }

                optimizer30 = [v242 computeEngine];
                deviceOps14 = [computeEngine14 deviceOps];
                [optimizer30 restoreConvolutionParamsWithDeviceOps:deviceOps14];
              }

LABEL_123:
LABEL_124:

LABEL_131:
            }
          }

          v174 = v238 + 1;
        }

        while (v238 + 1 != v236);
        v236 = [objb countByEnumeratingWithState:&v245 objects:v249 count:16];
        if (!v236)
        {
LABEL_134:

          v9 = 0x278A68000uLL;
          device3 = v226;
          break;
        }
      }
    }

    if ([(MLCTrainingGraph *)self updateOptimizerTimeStep]&& ((isKindOfClass | v214) & 1) != 0)
    {
      optimizer32 = [(MLCTrainingGraph *)self optimizer];
      [optimizer32 setTimeStep:{objc_msgSend(optimizer32, "timeStep") + 1}];
    }

    execution4 = [*(v9 + 3024) execution];
    v204 = execution4;
    v5 = v212;
    if (v227 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(execution4))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_238C1D000, v204, OS_SIGNPOST_INTERVAL_END, v219, "ExecuteOptimizerUpdate", "", buf, 2u);
    }
  }

  objc_autoreleasePoolPop(v5);
  v205 = *MEMORY[0x277D85DE8];
}

- (BOOL)executeForwardWithBatchSize:(NSUInteger)batchSize options:(MLCExecutionOptions)options outputsData:(NSDictionary *)outputsData completionHandler:(MLCGraphCompletionHandler)completionHandler
{
  v45[3] = *MEMORY[0x277D85DE8];
  v11 = outputsData;
  v12 = completionHandler;
  Current = 0.0;
  if ((options & 4) != 0)
  {
    Current = CFAbsoluteTimeGetCurrent();
  }

  [(MLCTrainingGraph *)self recompileWithOptions:options];
  if ((options & 2) == 0 && !v12)
  {
    v14 = +[MLCLog framework];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [MLCTrainingGraph executeForwardWithBatchSize:a2 options:? outputsData:? completionHandler:?];
    }
  }

  graphLayerList = [(MLCGraph *)self graphLayerList];
  v16 = [graphLayerList count];

  if (!v16)
  {
    v21 = +[MLCLog framework];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [MLCTrainingGraph executeForwardWithBatchSize:a2 options:? outputsData:? completionHandler:?];
    }

    v19 = NSStringFromSelector(a2);
    v20 = @"Empty graph";
    goto LABEL_21;
  }

  if (![(MLCGraph *)self readyForExecution])
  {
    v22 = +[MLCLog framework];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [MLCTrainingGraph executeForwardWithBatchSize:a2 options:? outputsData:? completionHandler:?];
    }

    v19 = NSStringFromSelector(a2);
    v20 = @"graph not ready for execution";
    goto LABEL_21;
  }

  staticBatchSizeInGraph = [(MLCGraph *)self staticBatchSizeInGraph];
  if (batchSize && !staticBatchSizeInGraph)
  {
    v18 = +[MLCLog framework];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [MLCTrainingGraph executeForwardWithBatchSize:a2 options:? outputsData:? completionHandler:?];
    }

    v19 = NSStringFromSelector(a2);
    v20 = @"batchSize provided must be 0 since batch size changes in graph. we will use batch size specified with tensors for layers in graph";
LABEL_21:
    device = [MLCErrors invalidStateErrorForMethod:v19 description:v20];

    if (v12)
    {
      v12[2](v12, 0, device, 0.0);
    }

    v24 = 0;
    goto LABEL_24;
  }

  if (v11 && ![(MLCGraph *)self checkPageAlignmentAndSizeForOutputs:v11])
  {
    v43 = +[MLCLog framework];
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      [MLCTrainingGraph executeForwardWithBatchSize:a2 options:? outputsData:? completionHandler:?];
    }

    v19 = NSStringFromSelector(a2);
    v20 = @"Outputs buffers must be page aligned and a multiple of page size";
    goto LABEL_21;
  }

  graphLayerList2 = [(MLCGraph *)self graphLayerList];
  v28 = [graphLayerList2 objectAtIndexedSubscript:0];
  device = [v28 device];

  computeEngine = [device computeEngine];
  LOBYTE(v28) = objc_opt_respondsToSelector();

  if (v28)
  {
    computeEngine2 = [device computeEngine];
    [computeEngine2 selectDevicesWithBatchSize:batchSize calledfromBindAndWrite:0];
  }

  if ((options & 4) != 0)
  {
    *v45 = Current;
    v45[1] = 0;
    v45[2] = 0;
    v44 = [MEMORY[0x277CBEA90] dataWithBytes:v45 length:24];
  }

  else
  {
    v44 = 0;
  }

  graphLayerList3 = [(MLCGraph *)self graphLayerList];
  graphLayerList4 = [(MLCGraph *)self graphLayerList];
  v33 = [graphLayerList3 objectAtIndexedSubscript:{objc_msgSend(graphLayerList4, "count") - 1}];

  resultTensors = [v33 resultTensors];
  v35 = [resultTensors objectAtIndexedSubscript:0];

  graphLayerList5 = [(MLCGraph *)self graphLayerList];
  -[MLCTrainingGraph executeForwardToLayerIndex:resultTensor:resultStateIsTemporary:batchSize:forTraining:executionOptions:](self, "executeForwardToLayerIndex:resultTensor:resultStateIsTemporary:batchSize:forTraining:executionOptions:", [graphLayerList5 count], v35, 0, batchSize, (options & 8) == 0, options);

  if (v35)
  {
    device2 = [v33 device];
    computeEngine3 = [device2 computeEngine];
    [computeEngine3 synchronizeTensor:v35];
  }

  [(MLCGraph *)self dispatchReadsForMultipleTensorOutputs:v11 finalTensorInGraph:0 finalResultTensor:0 batchSize:batchSize];
  computeEngine4 = [device computeEngine];
  v40 = computeEngine4;
  v41 = (options >> 2) & 1;
  if ((options & 2) != 0)
  {
    v42 = v44;
    [computeEngine4 commitAndWaitForCompletion:v12 enableProfiling:v41 graphExecutionTime:v44 graphResultTensor:0];
  }

  else
  {
    v42 = v44;
    [computeEngine4 commitWithCompletionHandler:v12 enableProfiling:v41 graphExecutionTime:v44 graphResultTensor:0];
  }

  v24 = 1;
LABEL_24:

  v25 = *MEMORY[0x277D85DE8];
  return v24;
}

- (BOOL)executeGradientWithBatchSize:(NSUInteger)batchSize options:(MLCExecutionOptions)options outputsData:(NSDictionary *)outputsData completionHandler:(MLCGraphCompletionHandler)completionHandler
{
  v35[3] = *MEMORY[0x277D85DE8];
  v11 = outputsData;
  v12 = completionHandler;
  Current = 0.0;
  if ((options & 4) != 0)
  {
    Current = CFAbsoluteTimeGetCurrent();
  }

  if ((options & 2) == 0 && !v12)
  {
    v14 = +[MLCLog framework];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [MLCTrainingGraph executeForwardWithBatchSize:a2 options:? outputsData:? completionHandler:?];
    }
  }

  graphLayerList = [(MLCGraph *)self graphLayerList];
  v16 = [graphLayerList count];

  if (!v16)
  {
    v21 = +[MLCLog framework];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [MLCTrainingGraph executeForwardWithBatchSize:a2 options:? outputsData:? completionHandler:?];
    }

    v19 = NSStringFromSelector(a2);
    v20 = @"Empty graph";
    goto LABEL_21;
  }

  if (![(MLCGraph *)self readyForExecution])
  {
    v22 = +[MLCLog framework];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [MLCTrainingGraph executeForwardWithBatchSize:a2 options:? outputsData:? completionHandler:?];
    }

    v19 = NSStringFromSelector(a2);
    v20 = @"graph not ready for execution";
    goto LABEL_21;
  }

  staticBatchSizeInGraph = [(MLCGraph *)self staticBatchSizeInGraph];
  if (batchSize && !staticBatchSizeInGraph)
  {
    v18 = +[MLCLog framework];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [MLCTrainingGraph executeForwardWithBatchSize:a2 options:? outputsData:? completionHandler:?];
    }

    v19 = NSStringFromSelector(a2);
    v20 = @"batchSize provided must be 0 since batch size changes in graph. we will use batch size specified with tensors for layers in graph";
LABEL_21:
    device = [MLCErrors invalidStateErrorForMethod:v19 description:v20];

    if (v12)
    {
      v12[2](v12, 0, device, 0.0);
    }

    v24 = 0;
    goto LABEL_24;
  }

  if (v11 && ![(MLCGraph *)self checkPageAlignmentAndSizeForOutputs:v11])
  {
    v34 = +[MLCLog framework];
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      [MLCTrainingGraph executeForwardWithBatchSize:a2 options:? outputsData:? completionHandler:?];
    }

    v19 = NSStringFromSelector(a2);
    v20 = @"Outputs buffers must be page aligned and a multiple of page size";
    goto LABEL_21;
  }

  graphLayerList2 = [(MLCGraph *)self graphLayerList];
  v28 = [graphLayerList2 objectAtIndexedSubscript:0];
  device = [v28 device];

  v29 = 0;
  if ((options & 4) != 0)
  {
    *v35 = Current;
    v35[1] = 0;
    v35[2] = 0;
    v29 = [MEMORY[0x277CBEA90] dataWithBytes:v35 length:24];
  }

  [(MLCTrainingGraph *)self compileAndAllocateGradientTensorsForGraph:0];
  graphLayerList3 = [(MLCGraph *)self graphLayerList];
  -[MLCTrainingGraph executeGradientFromLayerIndex:resultStateIsTemporary:batchSize:executionOptions:](self, "executeGradientFromLayerIndex:resultStateIsTemporary:batchSize:executionOptions:", [graphLayerList3 count] - 1, 0, batchSize, options);

  [(MLCGraph *)self dispatchReadsForMultipleTensorOutputs:v11 finalTensorInGraph:0 finalResultTensor:0 batchSize:batchSize];
  computeEngine = [device computeEngine];
  v32 = computeEngine;
  v33 = (options >> 2) & 1;
  if ((options & 2) != 0)
  {
    [computeEngine commitAndWaitForCompletion:v12 enableProfiling:v33 graphExecutionTime:v29 graphResultTensor:0];
  }

  else
  {
    [computeEngine commitWithCompletionHandler:v12 enableProfiling:v33 graphExecutionTime:v29 graphResultTensor:0];
  }

  v24 = 1;
LABEL_24:

  v25 = *MEMORY[0x277D85DE8];
  return v24;
}

- (BOOL)executeOptimizerUpdateWithOptions:(MLCExecutionOptions)options completionHandler:(MLCGraphCompletionHandler)completionHandler
{
  v26[3] = *MEMORY[0x277D85DE8];
  v7 = completionHandler;
  Current = 0.0;
  if ((options & 4) != 0)
  {
    Current = CFAbsoluteTimeGetCurrent();
  }

  if ((options & 2) == 0 && !v7)
  {
    v9 = +[MLCLog framework];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [MLCTrainingGraph executeForwardWithBatchSize:a2 options:? outputsData:? completionHandler:?];
    }
  }

  graphLayerList = [(MLCGraph *)self graphLayerList];
  v11 = [graphLayerList count];

  if (v11)
  {
    if ([(MLCGraph *)self readyForExecution])
    {
      if ((options & 4) != 0)
      {
        *v26 = Current;
        v26[1] = 0;
        v26[2] = 0;
        v12 = [MEMORY[0x277CBEA90] dataWithBytes:v26 length:24];
      }

      else
      {
        v12 = 0;
      }

      [(MLCTrainingGraph *)self executeOptimizerUpdateWithExecutionOptions:options];
      graphLayerList2 = [(MLCGraph *)self graphLayerList];
      v19 = [graphLayerList2 objectAtIndexedSubscript:0];
      device = [v19 device];

      computeEngine = [device computeEngine];
      v22 = computeEngine;
      v23 = (options >> 2) & 1;
      if ((options & 2) != 0)
      {
        [computeEngine commitAndWaitForCompletion:v7 enableProfiling:v23 graphExecutionTime:v12 graphResultTensor:0];
      }

      else
      {
        [computeEngine commitWithCompletionHandler:v7 enableProfiling:v23 graphExecutionTime:v12 graphResultTensor:0];
      }

      v17 = 1;
      goto LABEL_26;
    }

    v16 = +[MLCLog framework];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [MLCTrainingGraph executeForwardWithBatchSize:a2 options:? outputsData:? completionHandler:?];
    }

    v14 = NSStringFromSelector(a2);
    v15 = @"graph not ready for execution";
  }

  else
  {
    v13 = +[MLCLog framework];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [MLCTrainingGraph executeForwardWithBatchSize:a2 options:? outputsData:? completionHandler:?];
    }

    v14 = NSStringFromSelector(a2);
    v15 = @"Empty graph";
  }

  v12 = [MLCErrors invalidStateErrorForMethod:v14 description:v15];

  if (v7)
  {
    v7[2](v7, 0, v12, 0.0);
  }

  v17 = 0;
LABEL_26:

  v24 = *MEMORY[0x277D85DE8];
  return v17;
}

- (BOOL)executeWithInputsData:(NSDictionary *)inputsData lossLabelsData:(NSDictionary *)lossLabelsData lossLabelWeightsData:(NSDictionary *)lossLabelWeightsData outputsData:(NSDictionary *)outputsData batchSize:(NSUInteger)batchSize options:(MLCExecutionOptions)options completionHandler:(MLCGraphCompletionHandler)completionHandler
{
  v208 = *MEMORY[0x277D85DE8];
  v14 = inputsData;
  v15 = lossLabelsData;
  v16 = lossLabelWeightsData;
  v17 = outputsData;
  v18 = completionHandler;
  Current = 0.0;
  if ((options & 4) != 0)
  {
    Current = CFAbsoluteTimeGetCurrent();
  }

  if (!v18 && (options & 2) == 0)
  {
    v20 = +[MLCLog framework];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [MLCTrainingGraph executeForwardWithBatchSize:a2 options:? outputsData:? completionHandler:?];
    }
  }

  graphLayerList = [(MLCGraph *)self graphLayerList];
  v22 = [graphLayerList count];

  if (!v22)
  {
    v27 = v17;
    v31 = +[MLCLog framework];
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      [MLCTrainingGraph executeForwardWithBatchSize:a2 options:? outputsData:? completionHandler:?];
    }

    v29 = NSStringFromSelector(a2);
    v30 = @"Empty graph";
    goto LABEL_37;
  }

  allInputs = [(MLCGraph *)self allInputs];

  if (!allInputs)
  {
    v27 = v17;
    v32 = +[MLCLog framework];
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      [MLCTrainingGraph executeWithInputsData:a2 lossLabelsData:? lossLabelWeightsData:? outputsData:? batchSize:? options:? completionHandler:?];
    }

    v29 = NSStringFromSelector(a2);
    v30 = @"No inputs compiled in graph";
    goto LABEL_37;
  }

  allLossLabels = [(MLCGraph *)self allLossLabels];

  if (!allLossLabels && v15 && ![(NSDictionary *)v15 isEqualToDictionary:MEMORY[0x277CBEC10]])
  {
    v27 = v17;
    v34 = +[MLCLog framework];
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      [MLCTrainingGraph executeWithInputsData:a2 lossLabelsData:? lossLabelWeightsData:? outputsData:? batchSize:? options:? completionHandler:?];
    }

    v29 = NSStringFromSelector(a2);
    v30 = @"No loss labels compiled in graph";
    goto LABEL_37;
  }

  allLossLabelWeights = [(MLCGraph *)self allLossLabelWeights];

  if (!allLossLabelWeights && v16 && ![(NSDictionary *)v16 isEqualToDictionary:MEMORY[0x277CBEC10]])
  {
    v27 = v17;
    v35 = +[MLCLog framework];
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      [MLCTrainingGraph executeWithInputsData:a2 lossLabelsData:? lossLabelWeightsData:? outputsData:? batchSize:? options:? completionHandler:?];
    }

    v29 = NSStringFromSelector(a2);
    v30 = @"No loss label weights compiled in graph";
    goto LABEL_37;
  }

  if (![(MLCGraph *)self readyForExecution])
  {
    v27 = v17;
    v33 = +[MLCLog framework];
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      [MLCTrainingGraph executeForwardWithBatchSize:a2 options:? outputsData:? completionHandler:?];
    }

    v29 = NSStringFromSelector(a2);
    v30 = @"graph not ready for execution";
    goto LABEL_37;
  }

  staticBatchSizeInGraph = [(MLCGraph *)self staticBatchSizeInGraph];
  if (!batchSize || staticBatchSizeInGraph)
  {
    if (v17 && ![(MLCGraph *)self checkPageAlignmentAndSizeForOutputs:v17])
    {
      v27 = v17;
      v84 = +[MLCLog framework];
      if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
      {
        [MLCTrainingGraph executeForwardWithBatchSize:a2 options:? outputsData:? completionHandler:?];
      }

      v29 = NSStringFromSelector(a2);
      v30 = @"Outputs buffers must be page aligned and a multiple of page size";
      goto LABEL_37;
    }

    v194 = v16;
    v200 = v14;
    graphLayerList2 = [(MLCGraph *)self graphLayerList];
    v41 = [graphLayerList2 objectAtIndexedSubscript:0];
    device = [v41 device];

    graphLayerList3 = [(MLCGraph *)self graphLayerList];
    v43 = [graphLayerList3 count];

    graphLayerList4 = [(MLCGraph *)self graphLayerList];
    v45 = [graphLayerList4 count];

    while (v45-- >= 1)
    {
      graphLayerList5 = [(MLCGraph *)self graphLayerList];
      v48 = [graphLayerList5 objectAtIndexedSubscript:v45];
      skipLayer = [v48 skipLayer];

      if ((skipLayer & 1) == 0)
      {
        goto LABEL_48;
      }
    }

    v45 = v43;
LABEL_48:
    graphLayerList6 = [(MLCGraph *)self graphLayerList];
    v51 = [graphLayerList6 objectAtIndexedSubscript:v45];

    objc_opt_class();
    v203 = v51;
    isKindOfClass = objc_opt_isKindOfClass();
    resultTensors = [v51 resultTensors];
    v53 = [resultTensors objectAtIndexedSubscript:0];

    descriptor = [v53 descriptor];
    tensorAllocationSizeInBytes = [descriptor tensorAllocationSizeInBytes];
    descriptor2 = [v53 descriptor];
    size = tensorAllocationSizeInBytes / [descriptor2 elementCount];

    v199 = v53;
    descriptor3 = [v53 descriptor];
    elementCount = [descriptor3 elementCount];

    v193 = v15;
    if (isKindOfClass)
    {
      resultTensors2 = [v203 resultTensors];
      v59 = [resultTensors2 objectAtIndexedSubscript:0];
      descriptor4 = [v59 descriptor];
      shape = [descriptor4 shape];
      v62 = [shape objectAtIndexedSubscript:0];
      unsignedIntegerValue = [v62 unsignedIntegerValue];

      if (unsignedIntegerValue == 1)
      {
        sourceTensors = [v203 sourceTensors];
        v63 = [sourceTensors objectAtIndexedSubscript:0];
        descriptor5 = [v63 descriptor];
        shape2 = [descriptor5 shape];
        v66 = [shape2 objectAtIndexedSubscript:0];
        elementCount *= [v66 unsignedIntegerValue];
      }
    }

    v67 = [MLCTensorData dataWithBytesNoCopy:malloc_type_calloc(elementCount length:size freeWhenDone:0x4042F5A7uLL), elementCount * size, 1];
    descriptor6 = [v199 descriptor];
    v191 = v67;
    v68 = [MLCTensor tensorWithDescriptor:"tensorWithDescriptor:data:" data:?];
    [v68 setMultiDeviceReductionType:{objc_msgSend(v199, "multiDeviceReductionType")}];
    device2 = [(MLCGraph *)self device];
    [v68 setDevice:device2];

    if ((options & 4) != 0)
    {
      buf = *&Current;
      v207 = 0;
      v70 = [MEMORY[0x277CBEA90] dataWithBytes:&buf length:24];
      v71 = +[MLCLog execution];
      v72 = os_signpost_id_generate(v71);
    }

    else
    {
      v70 = 0;
      v72 = 0;
    }

    v73 = +[MLCLog execution];
    v74 = v73;
    spid = v72;
    v75 = v72 - 1;
    sizea = v68;
    v198 = v70;
    if (options)
    {
      if (v75 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v73))
      {
        LOWORD(buf) = 0;
        _os_signpost_emit_with_name_impl(&dword_238C1D000, v74, OS_SIGNPOST_INTERVAL_BEGIN, spid, "BindDataLSTMLayers", "", &buf, 2u);
      }

      [(MLCGraph *)self updateLSTMLayersForVariableSequenceLengthInGraph:self withInputData:v200];
      v81 = +[MLCLog execution];
      v82 = v81;
      if (v75 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v81))
      {
        goto LABEL_86;
      }

      LOWORD(buf) = 0;
      v83 = "BindDataLSTMLayers";
      goto LABEL_67;
    }

    v183 = v75;
    if (v75 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v73))
    {
      LOWORD(buf) = 0;
      _os_signpost_emit_with_name_impl(&dword_238C1D000, v74, OS_SIGNPOST_INTERVAL_BEGIN, spid, "BindData", "", &buf, 2u);
    }

    allInputs2 = [(MLCGraph *)self allInputs];
    graphLayerList7 = [(MLCGraph *)self graphLayerList];
    v77 = [graphLayerList7 objectAtIndexedSubscript:0];
    device3 = [v77 device];
    v178 = (options >> 1) & 1;
    v79 = [(MLCGraph *)self bindAndWriteData:v200 forInputs:allInputs2 toDevice:device3 batchSize:batchSize synchronous:v178 skipWrite:0];

    if (v79)
    {
      device4 = [v203 device];
      v16 = v194;
      if ([device4 type] == 1)
      {
        objc_opt_class();
        v181 = objc_opt_isKindOfClass();
      }

      else
      {
        v181 = 0;
      }

      v68 = sizea;

      if (!v193)
      {
        goto LABEL_140;
      }

      allLossLabels2 = [(MLCGraph *)self allLossLabels];
      graphLayerList8 = [(MLCGraph *)self graphLayerList];
      v96 = [graphLayerList8 objectAtIndexedSubscript:0];
      device5 = [v96 device];
      v98 = [(MLCGraph *)self bindAndWriteData:v193 forInputs:allLossLabels2 toDevice:device5 batchSize:batchSize synchronous:v178 skipWrite:v181 & 1];

      v68 = sizea;
      v16 = v194;

      v75 = v183;
      if (!v98)
      {
        v109 = MEMORY[0x277CCACA8];
        allLossLabels3 = [(MLCGraph *)self allLossLabels];
        v110 = [v109 stringWithFormat:@"loss label name missing from loss labels specified at compile time allLossLabels=%@", allLossLabels3];

        v111 = +[MLCLog framework];
        if (os_log_type_enabled(v111, OS_LOG_TYPE_ERROR))
        {
          [MLCTrainingGraph executeWithInputsData:lossLabelsData:lossLabelWeightsData:outputsData:batchSize:options:completionHandler:];
        }

        v89 = v17;

        v112 = NSStringFromSelector(a2);
        v91 = [MLCErrors invalidInputErrorForMethod:v112 description:v110];

        v14 = v200;
        v36 = device;
        if (v18)
        {
          v18[2](v18, 0, v91, 0.0);
        }

        v113 = +[MLCLog execution];
        v93 = v113;
        v15 = v193;
        if (v183 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v113))
        {
          goto LABEL_113;
        }

        LODWORD(buf) = 138543362;
        *(&buf + 4) = v110;
      }

      else
      {
LABEL_140:
        if (!v16)
        {
          goto LABEL_83;
        }

        v99 = v16;
        allLossLabelWeights2 = [(MLCGraph *)self allLossLabelWeights];
        graphLayerList9 = [(MLCGraph *)self graphLayerList];
        v101 = [graphLayerList9 objectAtIndexedSubscript:0];
        device6 = [v101 device];
        LOBYTE(v99) = [(MLCGraph *)self bindAndWriteData:v99 forInputs:allLossLabelWeights2 toDevice:device6 batchSize:batchSize synchronous:v178 skipWrite:v181 & 1];

        v68 = sizea;
        if (v99)
        {
LABEL_83:
          v103 = +[MLCLog execution];
          v82 = v103;
          if (v75 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v103))
          {
            goto LABEL_86;
          }

          LOWORD(buf) = 0;
          v83 = "BindData";
LABEL_67:
          _os_signpost_emit_with_name_impl(&dword_238C1D000, v82, OS_SIGNPOST_INTERVAL_END, spid, v83, "", &buf, 2u);
LABEL_86:

          if ((options & 8) != 0 || ([(MLCTrainingGraph *)self compileAndAllocateGradientTensorsForGraph:0], (isKindOfClass & 1) == 0))
          {
            [(MLCTrainingGraph *)self executeForwardToLayerIndex:v45 + 1 resultTensor:v68 resultStateIsTemporary:1 batchSize:batchSize forTraining:(options & 8) == 0 executionOptions:options];
          }

          else
          {
            [(MLCTrainingGraph *)self executeForwardToLayerIndex:v45 resultTensor:0 resultStateIsTemporary:1 batchSize:batchSize forTraining:1 executionOptions:options];
            allLossLabels4 = [(MLCGraph *)self allLossLabels];
            allKeys = [allLossLabels4 allKeys];

            if ([allKeys count])
            {
              v106 = [allKeys objectAtIndexedSubscript:0];
              allLossLabels5 = [(MLCGraph *)self allLossLabels];
              v108 = [allLossLabels5 objectForKeyedSubscript:v106];
            }

            else
            {
              v108 = 0;
            }

            allLossLabelWeights3 = [(MLCGraph *)self allLossLabelWeights];
            allKeys2 = [allLossLabelWeights3 allKeys];

            if ([allKeys2 count])
            {
              v116 = [allKeys2 objectAtIndexedSubscript:0];
              allLossLabelWeights4 = [(MLCGraph *)self allLossLabelWeights];
              spida = [allLossLabelWeights4 objectForKeyedSubscript:v116];
            }

            else
            {
              spida = 0;
            }

            if (v108)
            {
              graphLayerList10 = [(MLCGraph *)self graphLayerList];
              v119 = [graphLayerList10 objectAtIndexedSubscript:v45];

              resultGradientTensors = [v119 resultGradientTensors];
              v184 = [resultGradientTensors objectAtIndexedSubscript:0];

              descriptor7 = [v108 descriptor];
              shape3 = [descriptor7 shape];
              v121 = [shape3 count];
              descriptor8 = [v108 descriptor];
              v179 = allKeys2;
              v182 = allKeys;
              v123 = descriptor8;
              if (v121 == 1)
              {
                shape4 = [descriptor8 shape];
                v125 = [shape4 objectAtIndexedSubscript:0];
                unsignedIntegerValue2 = [v125 unsignedIntegerValue];
              }

              else
              {
                shape4 = [descriptor8 stride];
                v125 = [shape4 objectAtIndexedSubscript:0];
                unsignedIntegerValue2 = [v125 unsignedIntegerValue] >> 2;
              }

              [v119 setBatchSize:batchSize];
              device7 = [v119 device];
              [device7 computeEngine];
              v134 = v172 = v119;
              deviceOps = [v119 deviceOps];
              sourceTensors2 = [v119 sourceTensors];
              v137 = [sourceTensors2 objectAtIndexedSubscript:0];
              [v134 dispatchForwardAndGradientLossLayer:deviceOps sourceTensor:v137 labelsTensor:v108 labelsTensorStride:unsignedIntegerValue2 weightsTensor:spida resultTensor:sizea resultGradientTensor:v184];

              allKeys2 = v179;
              allKeys = v182;
            }
          }

          graphLayerList11 = [(MLCGraph *)self graphLayerList];
          v139 = [graphLayerList11 objectAtIndexedSubscript:v45];
          isDebuggingEnabled = [v139 isDebuggingEnabled];

          if (isDebuggingEnabled)
          {
            deviceMemory = [sizea deviceMemory];
            graphLayerList12 = [(MLCGraph *)self graphLayerList];
            v143 = [graphLayerList12 objectAtIndexedSubscript:v45];
            resultTensors3 = [v143 resultTensors];
            v145 = [resultTensors3 objectAtIndexedSubscript:0];
            [v145 setDeviceMemory:deviceMemory];
          }

          graphLayerList13 = [(MLCGraph *)self graphLayerList];
          v147 = [graphLayerList13 objectAtIndexedSubscript:0];
          device8 = [v147 device];
          computeEngine = [device8 computeEngine];
          spidb = (options >> 2) & 1;
          [computeEngine commitWithProfiling:spidb graphExecutionTime:v198];

          if ((options & 8) == 0)
          {
            v185 = v17;
            optimizer = [(MLCTrainingGraph *)self optimizer];

            if (optimizer)
            {
              optimizerUpdateLayerList = [(MLCTrainingGraph *)self optimizerUpdateLayerList];
              v152 = [optimizerUpdateLayerList count];

              if (v152)
              {
                v153 = 0;
                do
                {
                  optimizerUpdateLayerList2 = [(MLCTrainingGraph *)self optimizerUpdateLayerList];
                  v155 = [optimizerUpdateLayerList2 objectAtIndexedSubscript:v153];

                  device9 = [v155 device];
                  computeEngine2 = [device9 computeEngine];
                  deviceOps2 = [v155 deviceOps];
                  [computeEngine2 incrementReadCountForGradientState:deviceOps2 increment:1];

                  ++v153;
                  optimizerUpdateLayerList3 = [(MLCTrainingGraph *)self optimizerUpdateLayerList];
                  v160 = [optimizerUpdateLayerList3 count];
                }

                while (v153 < v160);
              }
            }

            v161 = v45 - (isKindOfClass & 1);
            if (v161 >= 0)
            {
              [(MLCTrainingGraph *)self executeGradientFromLayerIndex:v161 resultStateIsTemporary:1 batchSize:batchSize executionOptions:options];
            }

            [(MLCTrainingGraph *)self executeOptimizerUpdateWithExecutionOptions:options];
            v17 = v185;
          }

          v132 = sizea;
          if (sizea)
          {
            device10 = [v203 device];
            computeEngine3 = [device10 computeEngine];
            [computeEngine3 synchronizeTensor:sizea];

            device11 = [v203 device];
            computeEngine4 = [device11 computeEngine];
            resultTensors4 = [v203 resultTensors];
            v167 = [resultTensors4 objectAtIndexedSubscript:0];
            [computeEngine4 shareDeviceMemoryWithResultTensor:v167 sourceTensor:sizea];

            v132 = sizea;
          }

          resultTensors5 = [v203 resultTensors];
          v169 = [resultTensors5 objectAtIndexedSubscript:0];
          [(MLCGraph *)self dispatchReadsForMultipleTensorOutputs:v17 finalTensorInGraph:v169 finalResultTensor:v132 batchSize:batchSize];

          v14 = v200;
          if ((options & 2) != 0)
          {
            v36 = device;
            v15 = v193;
            if ((executeWithInputsData_lossLabelsData_lossLabelWeightsData_outputsData_batchSize_options_completionHandler__warnedAlready & 1) == 0)
            {
              v170 = +[MLCLog framework];
              if (os_log_type_enabled(v170, OS_LOG_TYPE_INFO))
              {
                v171 = NSStringFromSelector(a2);
                LODWORD(buf) = 138412290;
                *(&buf + 4) = v171;
                _os_log_impl(&dword_238C1D000, v170, OS_LOG_TYPE_INFO, "%@: Synchronous Execution requested", &buf, 0xCu);

                v15 = v193;
              }

              executeWithInputsData_lossLabelsData_lossLabelWeightsData_outputsData_batchSize_options_completionHandler__warnedAlready = 1;
              v132 = sizea;
            }

            v110 = [device computeEngine];
            v133 = v198;
            [v110 commitAndWaitForCompletion:v18 enableProfiling:spidb graphExecutionTime:v198 graphResultTensor:v132];
            v37 = 1;
          }

          else
          {
            v36 = device;
            v110 = [device computeEngine];
            v133 = v198;
            [v110 commitWithCompletionHandler:v18 enableProfiling:spidb graphExecutionTime:v198 graphResultTensor:v132];
            v37 = 1;
            v15 = v193;
          }

          v16 = v194;
          goto LABEL_137;
        }

        v126 = v75;
        v127 = MEMORY[0x277CCACA8];
        allLossLabelWeights5 = [(MLCGraph *)self allLossLabelWeights];
        v110 = [v127 stringWithFormat:@"loss label weight name missing from loss label weights specified at compile time allLossLabelWeights=%@", allLossLabelWeights5];

        v129 = +[MLCLog framework];
        if (os_log_type_enabled(v129, OS_LOG_TYPE_ERROR))
        {
          [MLCTrainingGraph executeWithInputsData:lossLabelsData:lossLabelWeightsData:outputsData:batchSize:options:completionHandler:];
        }

        v89 = v17;

        v130 = NSStringFromSelector(a2);
        v91 = [MLCErrors invalidInputErrorForMethod:v130 description:v110];

        v14 = v200;
        v16 = v194;
        v36 = device;
        if (v18)
        {
          v18[2](v18, 0, v91, 0.0);
        }

        v131 = +[MLCLog execution];
        v93 = v131;
        v15 = v193;
        if (v126 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v131))
        {
LABEL_113:

          v37 = 0;
          v17 = v89;
          v132 = sizea;
          v133 = v198;
LABEL_137:

          goto LABEL_40;
        }

        LODWORD(buf) = 138543362;
        *(&buf + 4) = v110;
      }
    }

    else
    {
      v85 = MEMORY[0x277CCACA8];
      allInputs3 = [(MLCGraph *)self allInputs];
      v110 = [v85 stringWithFormat:@"input name missing from inputs specified at compile time allInputs=%@", allInputs3];

      v88 = +[MLCLog framework];
      v16 = v194;
      if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
      {
        [MLCTrainingGraph executeWithInputsData:lossLabelsData:lossLabelWeightsData:outputsData:batchSize:options:completionHandler:];
      }

      v89 = v17;

      v90 = NSStringFromSelector(a2);
      v91 = [MLCErrors invalidInputErrorForMethod:v90 description:v110];

      v14 = v200;
      v36 = device;
      if (v18)
      {
        v18[2](v18, 0, v91, 0.0);
      }

      v92 = +[MLCLog execution];
      v93 = v92;
      v15 = v193;
      if (v183 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v92))
      {
        goto LABEL_113;
      }

      LODWORD(buf) = 138543362;
      *(&buf + 4) = v110;
    }

    _os_signpost_emit_with_name_impl(&dword_238C1D000, v93, OS_SIGNPOST_INTERVAL_END, spid, "BindData", "%{public,name=Error}@", &buf, 0xCu);
    goto LABEL_113;
  }

  v27 = v17;
  v28 = +[MLCLog framework];
  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    [MLCTrainingGraph executeForwardWithBatchSize:a2 options:? outputsData:? completionHandler:?];
  }

  v29 = NSStringFromSelector(a2);
  v30 = @"batchSize provided must be 0 since batch size changes in graph. we will use batch size specified with tensors for layers in graph";
LABEL_37:
  v36 = [MLCErrors invalidStateErrorForMethod:v29 description:v30];

  if (v18)
  {
    v18[2](v18, 0, v36, 0.0);
  }

  v37 = 0;
  v17 = v27;
LABEL_40:

  v38 = *MEMORY[0x277D85DE8];
  return v37;
}

- (id)resultGradientTensorsForLayer:(id)layer summedGradientForInputTensors:(BOOL)tensors
{
  tensorsCopy = tensors;
  layerCopy = layer;
  graphLayerList = [(MLCGraph *)self graphLayerList];
  v7 = [(MLCGraph *)self isLayerInGraphLayerList:layerCopy graphLayerList:graphLayerList];

  if (!v7)
  {
    v29 = +[MLCLog framework];
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      [MLCTrainingGraph resultGradientTensorsForLayer:summedGradientForInputTensors:];
    }

    goto LABEL_18;
  }

  if (([layerCopy isTrainable] & 1) == 0)
  {
    v29 = +[MLCLog framework];
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      [MLCTrainingGraph resultGradientTensorsForLayer:summedGradientForInputTensors:];
    }

    goto LABEL_18;
  }

  if ([layerCopy skipLayer])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      resultTensors = [layerCopy resultTensors];
      v9 = [resultTensors objectAtIndexedSubscript:0];
      parentLayers = [v9 parentLayers];
      v11 = [parentLayers objectAtIndexedSubscript:0];

      resultTensors2 = [layerCopy resultTensors];
      v13 = [resultTensors2 objectAtIndexedSubscript:0];
      v14 = v13;
      if (v11 != layerCopy)
      {
        parentLayers2 = [v13 parentLayers];
        v16 = [parentLayers2 objectAtIndexedSubscript:0];

        resultGradientTensors = [layerCopy resultGradientTensors];
        v18 = [resultGradientTensors count];

        if (!v18)
        {
          sourceTensors = [layerCopy sourceTensors];
          v20 = [sourceTensors objectAtIndexedSubscript:0];
          sourceTensors2 = [v16 sourceTensors];
          v22 = [sourceTensors2 objectAtIndexedSubscript:2];

          if (v20 == v22)
          {
            resultGradientTensors2 = [v16 resultGradientTensors];
            v37 = [resultGradientTensors2 objectAtIndexedSubscript:2];
            resultGradientTensors3 = [layerCopy resultGradientTensors];
            [resultGradientTensors3 setObject:v37 atIndexedSubscript:0];

            sourceGradientTensors = [v16 sourceGradientTensors];
            v27 = sourceGradientTensors;
            v28 = 0;
          }

          else
          {
            sourceGradientTensors2 = [v16 sourceGradientTensors];
            v24 = [sourceGradientTensors2 objectAtIndexedSubscript:0];
            resultGradientTensors4 = [layerCopy resultGradientTensors];
            [resultGradientTensors4 setObject:v24 atIndexedSubscript:0];

            sourceGradientTensors = [v16 resultGradientTensors];
            v27 = sourceGradientTensors;
            v28 = 2;
          }

          v39 = [sourceGradientTensors objectAtIndexedSubscript:v28];
          resultGradientTensors5 = [layerCopy resultGradientTensors];
          [resultGradientTensors5 setObject:v39 atIndexedSubscript:1];
        }

        goto LABEL_25;
      }

      childLayers = [v13 childLayers];
      v31 = [childLayers objectAtIndexedSubscript:0];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        fusedLayers = [v31 fusedLayers];
        v33 = [fusedLayers objectAtIndexedSubscript:0];

        if (v33 == layerCopy)
        {
          v16 = layerCopy;
          layerCopy = v31;
LABEL_25:

          goto LABEL_26;
        }
      }
    }

    v29 = +[MLCLog framework];
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      [MLCTrainingGraph resultGradientTensorsForLayer:summedGradientForInputTensors:];
    }

LABEL_18:

    v34 = MEMORY[0x277CBEBF8];
    goto LABEL_19;
  }

LABEL_26:
  v41 = [MEMORY[0x277CBEBF8] mutableCopy];
  sourceTensors3 = [layerCopy sourceTensors];
  v43 = [sourceTensors3 count];

  if (v43)
  {
    v44 = 0;
    v45 = 0;
    do
    {
      sourceTensors4 = [layerCopy sourceTensors];
      v47 = [sourceTensors4 objectAtIndexedSubscript:v44];
      computeFlags = [v47 computeFlags];

      if ((computeFlags & 8) == 0)
      {
        sourceTensors5 = [layerCopy sourceTensors];
        v50 = [sourceTensors5 objectAtIndexedSubscript:v44];
        parentLayers3 = [v50 parentLayers];
        v52 = [parentLayers3 count];

        if (v52 || !tensorsCopy)
        {
          resultGradientTensors6 = [layerCopy resultGradientTensors];
          v63 = [resultGradientTensors6 count];

          if (!v63)
          {
            break;
          }

          resultGradientTensors7 = [layerCopy resultGradientTensors];
          v60 = resultGradientTensors7;
          v61 = v44;
        }

        else
        {
          sourceTensors6 = [layerCopy sourceTensors];
          v54 = [sourceTensors6 objectAtIndexedSubscript:v44];
          rootSourceGradientTensorIndexStart = [v54 rootSourceGradientTensorIndexStart];
          sourceTensors7 = [layerCopy sourceTensors];
          v57 = [sourceTensors7 objectAtIndexedSubscript:v44];
          v58 = rootSourceGradientTensorIndexStart + [v57 rootSourceGradientTensorCount] - 2;

          resultGradientTensors7 = [(MLCTrainingGraph *)self rootSourceGradientTensor];
          v60 = resultGradientTensors7;
          v61 = v58;
        }

        v64 = [resultGradientTensors7 objectAtIndexedSubscript:v61];
        [v41 setObject:v64 atIndexedSubscript:v45];

        ++v45;
      }

      ++v44;
      sourceTensors8 = [layerCopy sourceTensors];
      v66 = [sourceTensors8 count];
    }

    while (v44 < v66);
  }

  if ([v41 count])
  {
    v67 = 0;
    do
    {
      v68 = [v41 objectAtIndexedSubscript:v67];
      if ([layerCopy isDebuggingEnabled])
      {
        [v68 synchronizeData];
      }

      ++v67;
    }

    while (v67 < [v41 count]);
  }

  v34 = [v41 copy];

LABEL_19:

  return v34;
}

- (MLCTensor)gradientTensorForInput:(MLCTensor *)input
{
  v4 = input;
  parentLayers = [(MLCTensor *)v4 parentLayers];
  if ([parentLayers count])
  {
  }

  else
  {
    rootSourceGradientTensorIndexStart = [(MLCTensor *)v4 rootSourceGradientTensorIndexStart];

    if (rootSourceGradientTensorIndexStart)
    {
      rootSourceGradientTensorIndexStart2 = [(MLCTensor *)v4 rootSourceGradientTensorIndexStart];
      v10 = rootSourceGradientTensorIndexStart2 + [(MLCTensor *)v4 rootSourceGradientTensorCount]- 2;
      rootSourceGradientTensor = [(MLCTrainingGraph *)self rootSourceGradientTensor];
      v7 = [rootSourceGradientTensor objectAtIndexedSubscript:v10];

      goto LABEL_8;
    }
  }

  v6 = +[MLCLog framework];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [MLCTrainingGraph gradientTensorForInput:];
  }

  v7 = 0;
LABEL_8:

  return v7;
}

- (NSArray)sourceGradientTensorsForLayer:(MLCLayer *)layer
{
  v4 = layer;
  graphLayerList = [(MLCGraph *)self graphLayerList];
  LOBYTE(self) = [(MLCGraph *)self isLayerInGraphLayerList:v4 graphLayerList:graphLayerList];

  if (self)
  {
    v6 = [MEMORY[0x277CBEBF8] mutableCopy];
    sourceGradientTensors = [(MLCLayer *)v4 sourceGradientTensors];
    v8 = [sourceGradientTensors count];

    if (v8 == 1)
    {
      if ([(MLCLayer *)v4 skipLayer])
      {
        resultTensors = [(MLCLayer *)v4 resultTensors];
        v10 = [resultTensors objectAtIndexedSubscript:0];
        parentLayers = [v10 parentLayers];
        v12 = [parentLayers objectAtIndexedSubscript:0];
        sourceGradientTensors2 = [v12 sourceGradientTensors];
        v14 = [sourceGradientTensors2 objectAtIndexedSubscript:0];
        [v6 setObject:v14 atIndexedSubscript:0];
      }

      else
      {
        resultTensors = [(MLCLayer *)v4 sourceGradientTensors];
        v10 = [resultTensors objectAtIndexedSubscript:0];
        [v6 setObject:v10 atIndexedSubscript:0];
      }
    }

    else
    {
      sourceGradientTensors3 = [(MLCLayer *)v4 sourceGradientTensors];
      v18 = [sourceGradientTensors3 count];

      if (v18)
      {
        v19 = 0;
        do
        {
          sourceGradientTensors4 = [(MLCLayer *)v4 sourceGradientTensors];
          v21 = [sourceGradientTensors4 objectAtIndexedSubscript:v19];
          [v6 setObject:v21 atIndexedSubscript:v19];

          ++v19;
          sourceGradientTensors5 = [(MLCLayer *)v4 sourceGradientTensors];
          v23 = [sourceGradientTensors5 count];
        }

        while (v19 < v23);
      }
    }

    if ([v6 count])
    {
      v24 = 0;
      do
      {
        v25 = [v6 objectAtIndexedSubscript:v24];
        if ([(MLCLayer *)v4 isDebuggingEnabled])
        {
          [v25 synchronizeData];
        }

        ++v24;
      }

      while (v24 < [v6 count]);
    }

    v16 = [v6 copy];
  }

  else
  {
    v15 = +[MLCLog framework];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [MLCTrainingGraph resultGradientTensorsForLayer:summedGradientForInputTensors:];
    }

    v16 = MEMORY[0x277CBEBF8];
  }

  return v16;
}

- (id)resultTensorsForLayer:(id)layer
{
  layerCopy = layer;
  graphLayerList = [(MLCGraph *)self graphLayerList];
  v8.receiver = self;
  v8.super_class = MLCTrainingGraph;
  v6 = [(MLCGraph *)&v8 resultTensorsForLayer:layerCopy graphLayerList:graphLayerList];

  return v6;
}

- (id)sourceTensorsForLayer:(id)layer
{
  layerCopy = layer;
  graphLayerList = [(MLCGraph *)self graphLayerList];
  v8.receiver = self;
  v8.super_class = MLCTrainingGraph;
  v6 = [(MLCGraph *)&v8 sourceTensorsForLayer:layerCopy graphLayerList:graphLayerList];

  return v6;
}

- (MLCTensor)allocateUserGradientForTensor:(MLCTensor *)tensor
{
  v5 = tensor;
  if (![(MLCGraph *)self readyForExecution])
  {
    v21 = +[MLCLog framework];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [MLCTrainingGraph allocateUserGradientForTensor:a2];
    }

    goto LABEL_14;
  }

  if (![(MLCTrainingGraph *)self allocateResultGradientTensors])
  {
    v21 = +[MLCLog framework];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [MLCTrainingGraph allocateUserGradientForTensor:a2];
    }

LABEL_14:

    v22 = 0;
    goto LABEL_15;
  }

  parentLayers = [(MLCTensor *)v5 parentLayers];
  v7 = [parentLayers count];

  if (!v7)
  {
    childLayers = [(MLCTensor *)v5 childLayers];
    dummyLayer = [(MLCTrainingGraph *)self dummyLayer];
    [childLayers addObject:dummyLayer];

    device = [(MLCTensor *)v5 device];
    [(MLCTrainingGraph *)self allocateRootSourceGradientTensors:device];

    rootSourceGradientTensor = [(MLCTrainingGraph *)self rootSourceGradientTensor];
    v22 = [rootSourceGradientTensor objectAtIndexedSubscript:{-[MLCTensor rootSourceGradientTensorIndex](v5, "rootSourceGradientTensorIndex") - 1}];

    [(MLCTensor *)v5 setRootSourceGradientTensorIndex:[(MLCTensor *)v5 rootSourceGradientTensorIndex]+ 1];
    goto LABEL_15;
  }

  parentLayers2 = [(MLCTensor *)v5 parentLayers];
  v9 = [parentLayers2 objectAtIndexedSubscript:0];

  childLayers2 = [(MLCTensor *)v5 childLayers];
  dummyLayer2 = [(MLCTrainingGraph *)self dummyLayer];
  [childLayers2 addObject:dummyLayer2];

  childLayers3 = [(MLCTensor *)v5 childLayers];
  v13 = [childLayers3 count];

  if (v13 == 1)
  {
    resultTensors = [v9 resultTensors];
    v15 = [resultTensors count];

    if (v15)
    {
      v16 = 0;
      while (1)
      {
        resultTensors2 = [v9 resultTensors];
        v18 = [resultTensors2 objectAtIndexedSubscript:v16];

        if (v18 == v5)
        {
          break;
        }

        ++v16;
        resultTensors3 = [v9 resultTensors];
        v20 = [resultTensors3 count];

        if (v16 >= v20)
        {
          goto LABEL_27;
        }
      }

LABEL_28:
      sourceGradientTensors = [v9 sourceGradientTensors];
      intermediateGradientTensors = sourceGradientTensors;
      v33 = v16;
      goto LABEL_29;
    }
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    device2 = [v9 device];
    if (isKindOfClass)
    {
      [(MLCTrainingGraph *)self allocateGradientTensorsForMultipleChildrenOfSplitLayer:v9 tensor:v5 gradientTensorsAreTemporary:0 device:device2];

      intermediateGradientTensors = [v9 intermediateGradientTensors];
      intermediateGradientTensors2 = [v9 intermediateGradientTensors];
      v22 = [intermediateGradientTensors objectAtIndexedSubscript:{objc_msgSend(intermediateGradientTensors2, "count") - 1}];

LABEL_30:
      goto LABEL_31;
    }

    v32 = [(MLCTrainingGraph *)self allocateGradientTensorsForMultipleChildrenOfLayer:v9 gradientTensorsAreTemporary:0 device:device2];

    if (v32)
    {
      [v9 setIntermediateGradientTensorIndex:{objc_msgSend(v9, "intermediateGradientTensorIndex") + 1}];
      intermediateGradientTensors = [v9 intermediateGradientTensors];
      v33 = [v9 intermediateGradientTensorIndex] - 1;
      sourceGradientTensors = intermediateGradientTensors;
LABEL_29:
      v22 = [sourceGradientTensors objectAtIndexedSubscript:v33];
      goto LABEL_30;
    }

    resultTensors4 = [v9 resultTensors];
    v36 = [resultTensors4 count];

    if (v36)
    {
      v16 = 0;
      do
      {
        resultTensors5 = [v9 resultTensors];
        v38 = [resultTensors5 objectAtIndexedSubscript:v16];

        if (v38 == v5)
        {
          goto LABEL_28;
        }

        ++v16;
        resultTensors6 = [v9 resultTensors];
        v40 = [resultTensors6 count];
      }

      while (v16 < v40);
    }
  }

LABEL_27:
  v22 = 0;
LABEL_31:

LABEL_15:

  return v22;
}

- (BOOL)linkWithGraphs:(NSArray *)graphs
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = graphs;
  if (([(MLCGraph *)self compilerOptions]& 4) == 0)
  {
    v6 = +[MLCLog framework];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = NSStringFromSelector(a2);
      v25 = 138412546;
      v26 = v7;
      v27 = 2112;
      selfCopy = self;
      _os_log_impl(&dword_238C1D000, v6, OS_LOG_TYPE_INFO, "%@: Graph(=%@) is not compiled with MLCGraphCompilationOptionsLinkGraphs", &v25, 0x16u);
    }

    goto LABEL_26;
  }

  if (![(NSArray *)v5 count])
  {
    goto LABEL_20;
  }

  if ([(NSArray *)v5 count])
  {
    v8 = 0;
    while (1)
    {
      v9 = [(NSArray *)v5 objectAtIndexedSubscript:v8];
      compilerOptions = [v9 compilerOptions];

      if ((compilerOptions & 4) == 0)
      {
        break;
      }

      if (++v8 >= [(NSArray *)v5 count])
      {
        goto LABEL_9;
      }
    }

    v6 = +[MLCLog framework];
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      goto LABEL_26;
    }

    v21 = NSStringFromSelector(a2);
    v22 = [(NSArray *)v5 objectAtIndexedSubscript:v8];
    v25 = 138412546;
    v26 = v21;
    v27 = 2112;
    selfCopy = v22;
    _os_log_impl(&dword_238C1D000, v6, OS_LOG_TYPE_INFO, "%@: Graph(=%@) is not compiled with MLCGraphCompilationOptionsLinkGraphs", &v25, 0x16u);

LABEL_25:
LABEL_26:

    v19 = 0;
    goto LABEL_27;
  }

LABEL_9:
  if ([(NSArray *)v5 count])
  {
    v11 = 0;
    while (1)
    {
      device = [(MLCGraph *)self device];
      v13 = [(NSArray *)v5 objectAtIndexedSubscript:v11];
      device2 = [v13 device];

      if (device != device2)
      {
        break;
      }

      if (++v11 >= [(NSArray *)v5 count])
      {
        goto LABEL_13;
      }
    }

    v6 = +[MLCLog framework];
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      goto LABEL_26;
    }

    v21 = NSStringFromSelector(a2);
    v25 = 138412290;
    v26 = v21;
    _os_log_impl(&dword_238C1D000, v6, OS_LOG_TYPE_INFO, "%@: Graphs with different devices cannot be linked", &v25, 0xCu);
    goto LABEL_25;
  }

LABEL_13:
  [(MLCGraph *)self setRecompileAfterLinking:1];
  if ([(NSArray *)v5 count])
  {
    v15 = 0;
    do
    {
      v16 = [(NSArray *)v5 objectAtIndexedSubscript:v15];
      [v16 setRecompileAfterLinking:1];

      ++v15;
    }

    while (v15 < [(NSArray *)v5 count]);
  }

  [(MLCTrainingGraph *)self compileAndAllocateGradientTensorsForGraph:0];
  if ([(NSArray *)v5 count])
  {
    v17 = 0;
    do
    {
      v18 = [(NSArray *)v5 objectAtIndexedSubscript:v17];
      v19 = 1;
      [v18 compileAndAllocateGradientTensorsForGraph:1];

      v20 = [(NSArray *)v5 objectAtIndexedSubscript:v17];
      [v20 setUpdateOptimizerTimeStep:0];

      ++v17;
    }

    while (v17 < [(NSArray *)v5 count]);
  }

  else
  {
LABEL_20:
    v19 = 1;
  }

LABEL_27:

  v23 = *MEMORY[0x277D85DE8];
  return v19;
}

- (void)synchronizeUpdates
{
  v46 = *MEMORY[0x277D85DE8];
  device = [(MLCGraph *)self device];
  optimizer = [(MLCTrainingGraph *)self optimizer];

  if (optimizer)
  {
    optimizerUpdateLayerList = [(MLCTrainingGraph *)self optimizerUpdateLayerList];
    v7 = [optimizerUpdateLayerList count];

    if (v7)
    {
      v8 = 0;
      do
      {
        optimizerUpdateLayerList2 = [(MLCTrainingGraph *)self optimizerUpdateLayerList];
        v10 = [optimizerUpdateLayerList2 objectAtIndexedSubscript:v8];

        if ([v10 isUpdatable])
        {
          computeEngine = [device computeEngine];
          [computeEngine synchronizeUpdatesForLayer:v10];
        }

        ++v8;
        optimizerUpdateLayerList3 = [(MLCTrainingGraph *)self optimizerUpdateLayerList];
        v13 = [optimizerUpdateLayerList3 count];
      }

      while (v8 < v13);
    }

    optimizerParameterList = [(MLCTrainingGraph *)self optimizerParameterList];
    v15 = [optimizerParameterList count];

    if (v15)
    {
      v16 = 0;
      do
      {
        optimizerParameterList2 = [(MLCTrainingGraph *)self optimizerParameterList];
        v18 = [optimizerParameterList2 objectAtIndexedSubscript:v16];

        if ([v18 isUpdatable])
        {
          computeEngine2 = [device computeEngine];
          tensor = [v18 tensor];
          [computeEngine2 synchronizeOptimizerUpdatesForTensor:tensor];
        }

        ++v16;
        optimizerParameterList3 = [(MLCTrainingGraph *)self optimizerParameterList];
        v22 = [optimizerParameterList3 count];
      }

      while (v16 < v22);
    }

    computeEngine3 = [device computeEngine];
    [computeEngine3 commitAndWaitForCompletion:0];

    optimizerUpdateLayerList4 = [(MLCTrainingGraph *)self optimizerUpdateLayerList];
    v25 = [optimizerUpdateLayerList4 count];

    if (v25)
    {
      v26 = 0;
      do
      {
        optimizerUpdateLayerList5 = [(MLCTrainingGraph *)self optimizerUpdateLayerList];
        v28 = [optimizerUpdateLayerList5 objectAtIndexedSubscript:v26];

        if ([v28 isUpdatable])
        {
          computeEngine4 = [device computeEngine];
          [computeEngine4 convertUpdatesToTensorDataForLayer:v28];
        }

        ++v26;
        optimizerUpdateLayerList6 = [(MLCTrainingGraph *)self optimizerUpdateLayerList];
        v31 = [optimizerUpdateLayerList6 count];
      }

      while (v26 < v31);
    }

    optimizerParameterList4 = [(MLCTrainingGraph *)self optimizerParameterList];
    v33 = [optimizerParameterList4 count];

    if (v33)
    {
      v34 = 0;
      do
      {
        optimizerParameterList5 = [(MLCTrainingGraph *)self optimizerParameterList];
        v36 = [optimizerParameterList5 objectAtIndexedSubscript:v34];

        if ([v36 isUpdatable])
        {
          computeEngine5 = [device computeEngine];
          tensor2 = [v36 tensor];
          [computeEngine5 convertUpdatesToTensorDataForTensorParameters:tensor2];
        }

        ++v34;
        optimizerParameterList6 = [(MLCTrainingGraph *)self optimizerParameterList];
        v40 = [optimizerParameterList6 count];
      }

      while (v34 < v40);
    }
  }

  else
  {
    v41 = +[MLCLog framework];
    if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
    {
      v42 = NSStringFromSelector(a2);
      v44 = 138412290;
      v45 = v42;
      _os_log_impl(&dword_238C1D000, v41, OS_LOG_TYPE_INFO, "%@: No optimizer in graph to synchronize the update", &v44, 0xCu);
    }
  }

  v43 = *MEMORY[0x277D85DE8];
}

- (NSData)gradientDataForParameter:(MLCTensor *)parameter layer:(MLCLayer *)layer
{
  v6 = parameter;
  v7 = layer;
  graphLayerList = [(MLCGraph *)self graphLayerList];
  LOBYTE(self) = [(MLCGraph *)self isLayerInGraphLayerList:v7 graphLayerList:graphLayerList];

  if ((self & 1) == 0)
  {
    v18 = +[MLCLog framework];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [MLCTrainingGraph resultGradientTensorsForLayer:summedGradientForInputTensors:];
    }

    goto LABEL_11;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
      {
        v20 = v7;
        beta = [(MLCLayer *)v20 beta];

        if (beta == v6)
        {
          device = [(MLCLayer *)v20 device];
          computeEngine = [device computeEngine];
          deviceOps = [(MLCLayer *)v20 deviceOps];
          v17 = [computeEngine betaGradients:deviceOps];
          goto LABEL_22;
        }

        gamma = [(MLCLayer *)v20 gamma];

        if (gamma == v6)
        {
          device = [(MLCLayer *)v20 device];
          computeEngine = [device computeEngine];
          deviceOps = [(MLCLayer *)v20 deviceOps];
          v17 = [computeEngine gammaGradients:deviceOps];
          goto LABEL_22;
        }

        goto LABEL_19;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v24 = v7;
        weights = [(MLCLayer *)v24 weights];

        if (weights == v6)
        {
          descriptor = [(MLCLayer *)v24 descriptor];
          embeddingCount = [descriptor embeddingCount];
          unsignedIntegerValue = [embeddingCount unsignedIntegerValue];

          descriptor2 = [(MLCLayer *)v24 descriptor];
          embeddingDimension = [descriptor2 embeddingDimension];
          unsignedIntegerValue2 = [embeddingDimension unsignedIntegerValue];

          device = [(MLCLayer *)v24 device];
          computeEngine = [device computeEngine];
          deviceOps = [(MLCLayer *)v24 deviceOps];
          v17 = [computeEngine embeddingWeightsGradients:deviceOps embeddingCount:unsignedIntegerValue embeddingDimension:unsignedIntegerValue2];
          goto LABEL_22;
        }

        goto LABEL_19;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v32 = v7;
        weights2 = [(MLCLayer *)v32 weights];
        v34 = [weights2 count];

        if (v34)
        {
          v35 = 0;
          while (1)
          {
            weights3 = [(MLCLayer *)v32 weights];
            v37 = [weights3 objectAtIndexedSubscript:v35];

            v38 = v37 == v6;
            if (v37 == v6)
            {
              break;
            }

            ++v35;
            weights4 = [(MLCLayer *)v32 weights];
            v40 = [weights4 count];

            if (v35 >= v40)
            {
              goto LABEL_53;
            }
          }
        }

        else
        {
          v38 = 0;
LABEL_53:
          v35 = 0;
        }

        biases = [(MLCLayer *)v32 biases];
        v66 = [biases count];

        if (v66)
        {
          v67 = 0;
          while (1)
          {
            biases2 = [(MLCLayer *)v32 biases];
            v69 = [biases2 objectAtIndexedSubscript:v67];

            v70 = v69 == v6;
            if (v69 == v6)
            {
              break;
            }

            ++v67;
            biases3 = [(MLCLayer *)v32 biases];
            v72 = [biases3 count];

            if (v67 >= v72)
            {
              goto LABEL_61;
            }
          }

          v35 = v67;
        }

        else
        {
          v70 = 0;
        }

LABEL_61:
        attentionBiases = [(MLCLayer *)v32 attentionBiases];
        v74 = [attentionBiases count];

        if (v74)
        {
          v75 = 0;
          while (1)
          {
            attentionBiases2 = [(MLCLayer *)v32 attentionBiases];
            v77 = [attentionBiases2 objectAtIndexedSubscript:v75];

            v78 = v77 == v6;
            if (v77 == v6)
            {
              break;
            }

            ++v75;
            attentionBiases3 = [(MLCLayer *)v32 attentionBiases];
            v80 = [attentionBiases3 count];

            if (v75 >= v80)
            {
              goto LABEL_68;
            }
          }

          v35 = v75;
        }

        else
        {
          v78 = 0;
        }

LABEL_68:
        descriptor3 = [(MLCTensor *)v6 descriptor];
        tensorAllocationSizeInBytes = [descriptor3 tensorAllocationSizeInBytes];

        if (v38)
        {
          device = [(MLCLayer *)v32 device];
          computeEngine = [device computeEngine];
          deviceOps = [(MLCLayer *)v32 deviceOps];
          v17 = [computeEngine mhaWeightGradient:deviceOps withSize:tensorAllocationSizeInBytes index:v35];
          goto LABEL_22;
        }

        if (v70)
        {
          device = [(MLCLayer *)v32 device];
          computeEngine = [device computeEngine];
          deviceOps = [(MLCLayer *)v32 deviceOps];
          v17 = [computeEngine mhaBiasGradient:deviceOps withSize:tensorAllocationSizeInBytes index:v35];
          goto LABEL_22;
        }

        if (v78)
        {
          device = [(MLCLayer *)v32 device];
          computeEngine = [device computeEngine];
          deviceOps = [(MLCLayer *)v32 deviceOps];
          v17 = [computeEngine mhaAttnBiasGradient:deviceOps withSize:tensorAllocationSizeInBytes index:v35];
          goto LABEL_22;
        }

        goto LABEL_19;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v41 = v7;
        inputWeights = [(MLCLayer *)v41 inputWeights];
        v43 = [inputWeights count];

        if (v43)
        {
          v44 = 0;
          while (1)
          {
            inputWeights2 = [(MLCLayer *)v41 inputWeights];
            v46 = [inputWeights2 objectAtIndexedSubscript:v44];

            if (v46 == v6)
            {
              break;
            }

            ++v44;
            inputWeights3 = [(MLCLayer *)v41 inputWeights];
            v48 = [inputWeights3 count];

            if (v44 >= v48)
            {
              goto LABEL_41;
            }
          }

          device = [(MLCLayer *)v41 device];
          computeEngine = [device computeEngine];
          deviceOps = [(MLCLayer *)v41 deviceOps];
          v17 = [computeEngine lstmInputWeightGradient:deviceOps mlcWeightIndex:v44];
          goto LABEL_22;
        }

LABEL_41:
        hiddenWeights = [(MLCLayer *)v41 hiddenWeights];
        v50 = [hiddenWeights count];

        if (v50)
        {
          v51 = 0;
          while (1)
          {
            hiddenWeights2 = [(MLCLayer *)v41 hiddenWeights];
            v53 = [hiddenWeights2 objectAtIndexedSubscript:v51];

            if (v53 == v6)
            {
              break;
            }

            ++v51;
            hiddenWeights3 = [(MLCLayer *)v41 hiddenWeights];
            v55 = [hiddenWeights3 count];

            if (v51 >= v55)
            {
              goto LABEL_45;
            }
          }

          device = [(MLCLayer *)v41 device];
          computeEngine = [device computeEngine];
          deviceOps = [(MLCLayer *)v41 deviceOps];
          v17 = [computeEngine lstmHiddenWeightGradient:deviceOps mlcWeightIndex:v51];
          goto LABEL_22;
        }

LABEL_45:
        biases4 = [(MLCLayer *)v41 biases];
        v57 = [biases4 count];

        if (v57)
        {
          v58 = 0;
          v59 = 0;
          v60 = 0;
          do
          {
            biases5 = [(MLCLayer *)v41 biases];
            v62 = [biases5 objectAtIndexedSubscript:v58];

            if (v62 == v6)
            {
              v60 = v58;
            }

            v59 |= v62 == v6;
            ++v58;
            biases6 = [(MLCLayer *)v41 biases];
            v64 = [biases6 count];
          }

          while (v58 < v64);
          if (v59)
          {
            device = [(MLCLayer *)v41 device];
            computeEngine = [device computeEngine];
            deviceOps = [(MLCLayer *)v41 deviceOps];
            v17 = [computeEngine lstmBiasGradient:deviceOps mlcBiasIndex:v60];
            goto LABEL_22;
          }
        }

        goto LABEL_19;
      }

LABEL_11:
      v19 = 0;
      goto LABEL_24;
    }
  }

  v9 = v7;
  weights5 = [(MLCLayer *)v9 weights];

  if (weights5 == v6)
  {
    device = [(MLCLayer *)v9 device];
    computeEngine = [device computeEngine];
    deviceOps = [(MLCLayer *)v9 deviceOps];
    v17 = [computeEngine weightsGradients:deviceOps];
    goto LABEL_22;
  }

  biases7 = [(MLCLayer *)v9 biases];
  if (biases7)
  {
    v12 = biases7;
    biases8 = [(MLCLayer *)v9 biases];

    if (biases8 == v6)
    {
      device = [(MLCLayer *)v9 device];
      computeEngine = [device computeEngine];
      deviceOps = [(MLCLayer *)v9 deviceOps];
      v17 = [computeEngine biasesGradients:deviceOps];
LABEL_22:
      v19 = v17;

      goto LABEL_23;
    }
  }

LABEL_19:
  v19 = 0;
LABEL_23:

LABEL_24:

  return v19;
}

- (void)setTrainingTensorParameters:(const char *)a1 .cold.1(const char *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)setTrainingTensorParameters:(const char *)a1 .cold.2(const char *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)compileOptimizer:.cold.1()
{
  OUTLINED_FUNCTION_5_0();
  v10 = *MEMORY[0x277D85DE8];
  v2 = NSStringFromSelector(v1);
  v3 = [v0 device];
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x20u);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)compileOptimizer:.cold.2()
{
  OUTLINED_FUNCTION_5_0();
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(v0);
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)recompileWithOptions:(const char *)a1 .cold.1(const char *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)compileWithOptions:device:inputTensors:inputTensorsData:.cold.1()
{
  OUTLINED_FUNCTION_5_0();
  v10 = *MEMORY[0x277D85DE8];
  v2 = NSStringFromSelector(v1);
  v3 = [v0 device];
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x20u);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)compileWithOptions:device:inputTensors:inputTensorsData:.cold.2()
{
  OUTLINED_FUNCTION_5_0();
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(v0);
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)compileWithOptions:(const char *)a1 device:inputTensors:inputTensorsData:.cold.3(const char *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)compileWithOptions:(const char *)a1 device:inputTensors:inputTensorsData:.cold.4(const char *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)compileWithOptions:(const char *)a1 device:inputTensors:inputTensorsData:.cold.5(const char *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)compileWithOptions:(const char *)a1 device:inputTensors:inputTensorsData:.cold.6(const char *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)compileWithOptions:(const char *)a1 device:inputTensors:inputTensorsData:.cold.7(const char *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)stopGradientForTensors:(const char *)a1 .cold.1(const char *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)stopGradientForTensors:(const char *)a1 .cold.2(const char *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)executeGradientFromLayerIndex:(const char *)a1 resultStateIsTemporary:batchSize:executionOptions:.cold.1(const char *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)executeForwardWithBatchSize:(const char *)a1 options:outputsData:completionHandler:.cold.1(const char *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)executeForwardWithBatchSize:(const char *)a1 options:outputsData:completionHandler:.cold.2(const char *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)executeForwardWithBatchSize:(const char *)a1 options:outputsData:completionHandler:.cold.3(const char *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)executeForwardWithBatchSize:(const char *)a1 options:outputsData:completionHandler:.cold.4(const char *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)executeForwardWithBatchSize:(const char *)a1 options:outputsData:completionHandler:.cold.5(const char *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)executeWithInputsData:(const char *)a1 lossLabelsData:lossLabelWeightsData:outputsData:batchSize:options:completionHandler:.cold.2(const char *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)executeWithInputsData:(const char *)a1 lossLabelsData:lossLabelWeightsData:outputsData:batchSize:options:completionHandler:.cold.3(const char *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)executeWithInputsData:lossLabelsData:lossLabelWeightsData:outputsData:batchSize:options:completionHandler:.cold.7()
{
  OUTLINED_FUNCTION_5_0();
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(v0);
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)executeWithInputsData:(const char *)a1 lossLabelsData:lossLabelWeightsData:outputsData:batchSize:options:completionHandler:.cold.10(const char *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)resultGradientTensorsForLayer:summedGradientForInputTensors:.cold.1()
{
  OUTLINED_FUNCTION_5_0();
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(v0);
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)resultGradientTensorsForLayer:summedGradientForInputTensors:.cold.2()
{
  OUTLINED_FUNCTION_5_0();
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(v0);
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)resultGradientTensorsForLayer:summedGradientForInputTensors:.cold.3()
{
  OUTLINED_FUNCTION_5_0();
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(v0);
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)gradientTensorForInput:.cold.1()
{
  OUTLINED_FUNCTION_5_0();
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(v0);
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)allocateUserGradientForTensor:(const char *)a1 .cold.1(const char *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)allocateUserGradientForTensor:(const char *)a1 .cold.2(const char *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

@end