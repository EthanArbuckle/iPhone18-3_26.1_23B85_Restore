@interface MLCTrainingGraph
+ (MLCTrainingGraph)graphWithGraphObjects:(NSArray *)graphObjects lossLayer:(MLCLayer *)lossLayer optimizer:(MLCOptimizer *)optimizer;
- (BOOL)addInputs:(NSDictionary *)inputs lossLabels:(NSDictionary *)lossLabels;
- (BOOL)addInputs:(NSDictionary *)inputs lossLabels:(NSDictionary *)lossLabels lossLabelWeights:(NSDictionary *)lossLabelWeights;
- (BOOL)addOutputs:(NSDictionary *)outputs;
- (BOOL)allocateGradientTensorsForMultipleChildrenOfLayer:(id)a3 gradientTensorsAreTemporary:(BOOL)a4 device:(id)a5;
- (BOOL)allocateGradientTensorsForMultipleChildrenOfSplitLayer:(id)a3 tensor:(id)a4 gradientTensorsAreTemporary:(BOOL)a5 device:(id)a6;
- (BOOL)allocateOptimizerDataForGraph;
- (BOOL)allocateRootSourceGradientTensors:(id)a3;
- (BOOL)bindOptimizerData:(NSArray *)data deviceData:(NSArray *)deviceData withTensor:(MLCTensor *)tensor;
- (BOOL)compileOptimizer:(MLCOptimizer *)optimizer;
- (BOOL)compileWithOptions:(MLCGraphCompilationOptions)options device:(MLCDevice *)device inputTensors:(NSDictionary *)inputTensors inputTensorsData:(NSDictionary *)inputTensorsData;
- (BOOL)executeForwardWithBatchSize:(NSUInteger)batchSize options:(MLCExecutionOptions)options outputsData:(NSDictionary *)outputsData completionHandler:(MLCGraphCompletionHandler)completionHandler;
- (BOOL)executeGradientWithBatchSize:(NSUInteger)batchSize options:(MLCExecutionOptions)options outputsData:(NSDictionary *)outputsData completionHandler:(MLCGraphCompletionHandler)completionHandler;
- (BOOL)executeOptimizerUpdateWithOptions:(MLCExecutionOptions)options completionHandler:(MLCGraphCompletionHandler)completionHandler;
- (BOOL)executeWithInputsData:(NSDictionary *)inputsData lossLabelsData:(NSDictionary *)lossLabelsData lossLabelWeightsData:(NSDictionary *)lossLabelWeightsData outputsData:(NSDictionary *)outputsData batchSize:(NSUInteger)batchSize options:(MLCExecutionOptions)options completionHandler:(MLCGraphCompletionHandler)completionHandler;
- (BOOL)isSourceTensorSharableWithResultGradientTensor:(id)a3 layer:(id)a4;
- (BOOL)linkWithGraphs:(NSArray *)graphs;
- (BOOL)recompileWithOptions:(unint64_t)a3;
- (BOOL)setTrainingTensorParameters:(NSArray *)parameters;
- (BOOL)stopGradientForTensors:(NSArray *)tensors;
- (MLCTensor)allocateUserGradientForTensor:(MLCTensor *)tensor;
- (MLCTensor)gradientTensorForInput:(MLCTensor *)input;
- (MLCTrainingGraph)init;
- (MLCTrainingGraph)initWithGraphObjects:(id)a3 lossLayer:(id)a4 optimizer:(id)a5;
- (NSArray)sourceGradientTensorsForLayer:(MLCLayer *)layer;
- (NSData)gradientDataForParameter:(MLCTensor *)parameter layer:(MLCLayer *)layer;
- (NSUInteger)deviceMemorySize;
- (id)description;
- (id)resultGradientTensorToUseByExecuteGradientForLayer:(id)a3 sourceIndex:(unint64_t)a4 incrementIntermediateIndex:(BOOL)a5;
- (id)resultGradientTensorsForLayer:(id)a3 summedGradientForInputTensors:(BOOL)a4;
- (id)resultTensorsForLayer:(id)a3;
- (id)sourceTensorsForLayer:(id)a3;
- (unint64_t)deviceMemorySizeWithDevice:(id)a3;
- (unint64_t)layerIndexToStoreSummedGradientsForTensor:(id)a3;
- (void)allocateGradientTensorsForLayersInGraph:(BOOL)a3;
- (void)dealloc;
- (void)executeForwardToLayerIndex:(unint64_t)a3 resultTensor:(id)a4 resultStateIsTemporary:(BOOL)a5 batchSize:(unint64_t)a6 forTraining:(BOOL)a7 executionOptions:(unint64_t)a8;
- (void)executeGradientFromLayerIndex:(unint64_t)a3 resultStateIsTemporary:(BOOL)a4 batchSize:(unint64_t)a5 executionOptions:(unint64_t)a6;
- (void)executeOptimizerUpdateWithExecutionOptions:(unint64_t)a3;
- (void)linkRelatedGradientTensorsForConcatLayer:(id)a3 device:(id)a4;
- (void)markLayersAsTrainable;
- (void)sumAllRootSourceGradientTensors:(id)a3;
- (void)sumIntermediateGradientTensorsForLayer:(id)a3;
- (void)sumRootSourceGradientTensor:(id)a3 device:(id)a4;
- (void)synchronizeUpdates;
- (void)updateIsTrainableForLayerWithStopGradientTensor:(id)a3 checkChildLayers:(BOOL)a4;
- (void)updateTrainableLayerList:(BOOL)a3;
@end

@implementation MLCTrainingGraph

+ (MLCTrainingGraph)graphWithGraphObjects:(NSArray *)graphObjects lossLayer:(MLCLayer *)lossLayer optimizer:(MLCOptimizer *)optimizer
{
  v8 = optimizer;
  v9 = lossLayer;
  v10 = graphObjects;
  v11 = [[a1 alloc] initWithGraphObjects:v10 lossLayer:v9 optimizer:v8];

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

- (MLCTrainingGraph)initWithGraphObjects:(id)a3 lossLayer:(id)a4 optimizer:(id)a5
{
  v9 = a4;
  v10 = a5;
  v36.receiver = self;
  v36.super_class = MLCTrainingGraph;
  v11 = [(MLCGraph *)&v36 initWithGraphObjects:a3];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_lossLayer, a4);
    objc_storeStrong(&v12->_optimizer, a5);
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

    if (v9)
    {
      v35.receiver = v12;
      v35.super_class = MLCTrainingGraph;
      v26 = [(MLCGraph *)&v35 graphLayerList];
      v34.receiver = v12;
      v34.super_class = MLCTrainingGraph;
      v27 = [(MLCGraph *)&v34 graphLayerList];
      v28 = [v26 objectAtIndexedSubscript:{objc_msgSend(v27, "count") - 1}];
      v29 = [v28 resultTensors];
      v30 = [v29 objectAtIndexedSubscript:0];
      v33.receiver = v12;
      v33.super_class = MLCTrainingGraph;
      v31 = [(MLCGraph *)&v33 nodeWithLayer:v9 source:v30];
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

- (BOOL)isSourceTensorSharableWithResultGradientTensor:(id)a3 layer:(id)a4
{
  v6 = a3;
  if (([a4 isDebuggingEnabled] & 1) != 0 || (objc_msgSend(v6, "childLayers"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "count"), v7, v8 != 1))
  {
    v15 = 0;
  }

  else
  {
    v9 = [(MLCGraph *)self allOutputs];
    v10 = [v9 count];

    if (v10)
    {
      v11 = 0;
      do
      {
        v12 = [(MLCGraph *)self allOutputs];
        v13 = [v12 allValues];
        v14 = [v13 objectAtIndexedSubscript:v11];

        v15 = v14 != v6;
        if (v14 == v6)
        {
          break;
        }

        ++v11;
        v16 = [(MLCGraph *)self allOutputs];
        v17 = [v16 count];
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

- (BOOL)allocateRootSourceGradientTensors:(id)a3
{
  v51[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEBF8] mutableCopy];
  [(MLCTrainingGraph *)self setRootSourceGradientTensor:v5];

  v6 = [(MLCGraph *)self graphLayerList];
  v7 = [v6 count];

  if (v7)
  {
    v50 = 0;
    v8 = 0;
    do
    {
      v9 = [(MLCGraph *)self graphLayerList];
      v10 = [v9 objectAtIndexedSubscript:v8];

      if (([v10 skipLayer] & 1) == 0)
      {
        if ([v10 isTrainable])
        {
          v11 = [v10 sourceTensors];
          v12 = [v11 count];

          if (v12)
          {
            v13 = 0;
            v49 = v8;
            do
            {
              v14 = [v10 sourceTensors];
              v15 = [v14 objectAtIndexedSubscript:v13];

              if (([v15 computeFlags] & 8) == 0)
              {
                v16 = [v15 parentLayers];
                v17 = [v16 count];

                if (!v17)
                {
                  v18 = [v15 childLayers];
                  v19 = [v18 count];

                  if (v19)
                  {
                    v20 = 0;
                    v21 = 0;
                    do
                    {
                      v22 = [v15 childLayers];
                      v23 = [v22 objectAtIndexedSubscript:v20];
                      v21 += [v23 isGradientNeededForTensor:v15];

                      ++v20;
                      v24 = [v15 childLayers];
                      v25 = [v24 count];
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
                  v28 = [v15 rootSourceGradientTensorCount];
                  if (![v15 rootSourceGradientTensorIndexStart] || v27 > objc_msgSend(v15, "rootSourceGradientTensorCount"))
                  {
                    v29 = [v15 rootSourceGradientTensorIndex];
                    v30 = v29 - [v15 rootSourceGradientTensorIndexStart];
                    [v15 setRootSourceGradientTensorIndexStart:v50 + 1];
                    [v15 setRootSourceGradientTensorCount:v27];
                    [v15 setRootSourceGradientTensorIndex:{v30 + objc_msgSend(v15, "rootSourceGradientTensorIndexStart")}];
                    for (; v28 < v27; ++v28)
                    {
                      v31 = [v15 descriptor];
                      v32 = [MLCTensor tensorWithDescriptor:v31];

                      [v32 setDevice:v4];
                      v33 = [(MLCTrainingGraph *)self rootSourceGradientTensor];
                      [v33 setObject:v32 atIndexedSubscript:{objc_msgSend(v15, "rootSourceGradientTensorIndex") + v28 - 1}];
                    }

                    v8 = v49;
                    if (v27 > 1)
                    {
                      v34 = [v15 intermediateSumLayer];

                      if (!v34)
                      {
                        v48 = [MLCArithmeticLayer layerWithOperation:0];
                        v47 = [(MLCTrainingGraph *)self rootSourceGradientTensor];
                        v46 = [v47 objectAtIndexedSubscript:{objc_msgSend(v15, "rootSourceGradientTensorIndexStart") - 1}];
                        v51[0] = v46;
                        v45 = [(MLCTrainingGraph *)self rootSourceGradientTensor];
                        v44 = [v45 objectAtIndexedSubscript:{objc_msgSend(v15, "rootSourceGradientTensorIndexStart")}];
                        v51[1] = v44;
                        v35 = [MEMORY[0x277CBEA60] arrayWithObjects:v51 count:2];
                        v36 = [(MLCTrainingGraph *)self rootSourceGradientTensor];
                        v37 = [v36 objectAtIndexedSubscript:{objc_msgSend(v15, "rootSourceGradientTensorIndexStart") + 1}];
                        [v48 compileForDevice:v4 sourceTensors:v35 resultTensor:v37];

                        [v15 setIntermediateSumLayer:v48];
                      }
                    }

                    v50 += v27;
                  }
                }
              }

              ++v13;
              v38 = [v10 sourceTensors];
              v39 = [v38 count];
            }

            while (v13 < v39);
          }
        }
      }

      ++v8;
      v40 = [(MLCGraph *)self graphLayerList];
      v41 = [v40 count];
    }

    while (v8 < v41);
  }

  v42 = *MEMORY[0x277D85DE8];
  return 1;
}

- (void)sumRootSourceGradientTensor:(id)a3 device:(id)a4
{
  v31 = a3;
  v6 = a4;
  if ([v31 rootSourceGradientTensorCount] >= 2)
  {
    v7 = [v31 rootSourceGradientTensorIndex];
    v8 = [v31 rootSourceGradientTensorIndexStart];
    v9 = v8 - 1;
    v28 = v8 - 2;
    if (v8 - 1 < (v8 - 2 + [v31 rootSourceGradientTensorCount]))
    {
      v10 = v7 - 1;
      v27 = v6;
      do
      {
        v11 = [v6 computeEngine];
        v12 = [(MLCTrainingGraph *)self rootSourceGradientTensor];
        v13 = [v12 objectAtIndexedSubscript:v10];
        v14 = [v11 needToAllocateDeviceMemoryForTensor:v13];

        if (v14)
        {
          v15 = [v6 computeEngine];
          v16 = [(MLCTrainingGraph *)self rootSourceGradientTensor];
          v17 = [v16 objectAtIndexedSubscript:v10];
          [v15 allocateDeviceMemoryForTensor:v17];
        }

        v18 = [v6 computeEngine];
        v30 = [v31 intermediateSumLayer];
        v19 = [v30 deviceOps];
        v29 = [(MLCTrainingGraph *)self rootSourceGradientTensor];
        v20 = [v29 objectAtIndexedSubscript:v9];
        v21 = [(MLCTrainingGraph *)self rootSourceGradientTensor];
        v22 = [v21 objectAtIndexedSubscript:v9 + 1];
        [(MLCTrainingGraph *)self rootSourceGradientTensor];
        v24 = v23 = self;
        v25 = [v24 objectAtIndexedSubscript:v10];
        LOBYTE(v26) = 0;
        [v18 dispatchForwardLayer:v19 sourceTensor:v20 secondaryTensor:v22 tertiaryTensor:0 resultTensor:v25 resultStateIsTemporary:0 forTraining:v26];

        self = v23;
        v6 = v27;

        ++v10;
        v9 += 2;
      }

      while (v9 < v28 + [v31 rootSourceGradientTensorCount]);
    }
  }
}

- (void)sumAllRootSourceGradientTensors:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (([(MLCGraph *)self compilerOptions]& 1) != 0 || ([(MLCGraph *)self compilerOptions]& 8) != 0)
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v13 = [(MLCGraph *)self allInputs];
    v14 = [v13 countByEnumeratingWithState:&v22 objects:v26 count:16];
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
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v22 + 1) + 8 * v17);
          v19 = [(MLCGraph *)self allInputs];
          v20 = [v19 objectForKeyedSubscript:v18];

          [(MLCTrainingGraph *)self sumRootSourceGradientTensor:v20 device:v4];
          ++v17;
        }

        while (v15 != v17);
        v15 = [v13 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v15);
    }
  }

  else
  {
    v5 = [(MLCTrainingGraph *)self optimizerParameterList];
    v6 = [v5 count];

    if (v6)
    {
      v7 = 0;
      do
      {
        v8 = [(MLCTrainingGraph *)self optimizerParameterList];
        v9 = [v8 objectAtIndexedSubscript:v7];

        v10 = [v9 tensor];
        [(MLCTrainingGraph *)self sumRootSourceGradientTensor:v10 device:v4];

        ++v7;
        v11 = [(MLCTrainingGraph *)self optimizerParameterList];
        v12 = [v11 count];
      }

      while (v7 < v12);
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (BOOL)allocateGradientTensorsForMultipleChildrenOfLayer:(id)a3 gradientTensorsAreTemporary:(BOOL)a4 device:(id)a5
{
  v39[2] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a5;
  v8 = 0;
  v9 = 0;
  while (1)
  {
    v10 = [v6 resultTensors];
    v11 = [v10 objectAtIndexedSubscript:0];
    v12 = [v11 childLayers];
    v13 = [v12 count];

    if (v8 >= v13)
    {
      break;
    }

    v14 = [v6 resultTensors];
    v15 = [v14 objectAtIndexedSubscript:0];
    v16 = [v15 childLayers];
    v17 = [v16 objectAtIndexedSubscript:v8];

    v9 += [v17 compileForInferenceOnly] ^ 1;
    ++v8;
  }

  if (v9 > 1)
  {
    v18 = [v6 sourceGradientTensors];
    v19 = [v18 objectAtIndexedSubscript:0];

    v20 = 2 * v9 - 2;
    v21 = [v6 intermediateGradientTensors];
    v22 = [v21 count];

    for (i = v22 - (v22 != 0); i < v20; ++i)
    {
      v24 = [v19 descriptor];
      v25 = [MLCTensor tensorWithDescriptor:v24];
      v26 = [v6 intermediateGradientTensors];
      [v26 setObject:v25 atIndexedSubscript:i];

      v27 = [v6 intermediateGradientTensors];
      v28 = [v27 objectAtIndexedSubscript:i];
      [v28 setDevice:v7];
    }

    v29 = [v6 intermediateGradientTensors];
    [v29 setObject:v19 atIndexedSubscript:2 * v9 - 2];

    [v6 setZeroIntermediateGradientTensors:1];
    v30 = [v6 intermediateSumLayer];

    if (!v30)
    {
      v31 = [MLCArithmeticLayer layerWithOperation:0];
      v32 = [v6 intermediateGradientTensors];
      v33 = [v32 objectAtIndexedSubscript:0];
      v39[0] = v33;
      v34 = [v6 intermediateGradientTensors];
      v35 = [v34 objectAtIndexedSubscript:1];
      v39[1] = v35;
      v36 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:2];
      [v31 compileForDevice:v7 sourceTensors:v36 resultTensor:v19];

      [v6 setIntermediateSumLayer:v31];
    }
  }

  v37 = *MEMORY[0x277D85DE8];
  return v9 > 1;
}

- (BOOL)allocateGradientTensorsForMultipleChildrenOfSplitLayer:(id)a3 tensor:(id)a4 gradientTensorsAreTemporary:(BOOL)a5 device:(id)a6
{
  v34[2] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a6;
  v11 = [v8 resultTensors];
  v12 = [v11 count];

  v13 = [v8 resultTensors];
  v14 = [v13 count];

  if (v14)
  {
    v15 = 0;
    while (1)
    {
      v16 = [v8 resultTensors];
      v17 = [v16 objectAtIndexedSubscript:v15];

      if (v17 == v9)
      {
        break;
      }

      ++v15;
      v18 = [v8 resultTensors];
      v19 = [v18 count];

      if (v15 >= v19)
      {
        goto LABEL_7;
      }
    }

    v12 = v15;
  }

LABEL_7:
  v20 = [v8 resultTensors];
  v21 = [v20 count];

  if (v12 < v21)
  {
    v22 = [v8 sourceGradientTensors];
    v23 = [v22 objectAtIndexedSubscript:v12];

    v24 = [v8 intermediateGradientTensors];
    v25 = [v24 count];

    v26 = [v23 descriptor];
    v27 = [MLCTensor tensorWithDescriptor:v26];

    [v27 setDevice:v10];
    [v27 setSplitOffset:{objc_msgSend(v23, "splitOffset")}];
    [v27 setSplitDimension:{objc_msgSend(v23, "splitDimension")}];
    v28 = [v8 intermediateGradientTensors];
    [v28 setObject:v27 atIndexedSubscript:v25];

    [v8 setZeroIntermediateGradientTensors:1];
    v29 = [v8 intermediateSumLayer];

    if (!v29)
    {
      v30 = [MLCArithmeticLayer layerWithOperation:0];
      v34[0] = v23;
      v34[1] = v27;
      v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:2];
      [v30 compileForDevice:v10 sourceTensors:v31 resultTensor:v27];

      [v8 setIntermediateSumLayer:v30];
    }
  }

  v32 = *MEMORY[0x277D85DE8];
  return v12 < v21;
}

- (void)sumIntermediateGradientTensorsForLayer:(id)a3
{
  v73 = a3;
  if ([v73 intermediateGradientTensorIndex])
  {
    v3 = 0;
    v4 = 0;
    while (1)
    {
      v5 = [v73 resultTensors];
      v6 = [v5 objectAtIndexedSubscript:0];
      v7 = [v6 childLayers];
      v8 = [v7 count];

      if (v3 >= v8)
      {
        break;
      }

      v9 = [v73 resultTensors];
      v10 = [v9 objectAtIndexedSubscript:0];
      v11 = [v10 childLayers];
      v12 = [v11 objectAtIndexedSubscript:v3];

      v4 += [v12 compileForInferenceOnly] ^ 1;
      ++v3;
    }

    v13 = [v73 zeroIntermediateGradientTensors];
    v14 = v73;
    if (v13)
    {
      [v73 setZeroIntermediateGradientTensors:0];
      v14 = v73;
      if (v4)
      {
        v15 = 0;
        while (1)
        {
          v16 = [v14 device];
          v17 = [v16 computeEngine];
          v18 = [v73 intermediateGradientTensors];
          v19 = [v18 objectAtIndexedSubscript:v15];
          v20 = [v17 needToAllocateDeviceMemoryForTensor:v19];

          if (v20)
          {
            break;
          }

          ++v15;
          v14 = v73;
          if (v4 == v15)
          {
            goto LABEL_16;
          }
        }

        v21 = [v73 intermediateGradientTensors];
        v22 = [v21 objectAtIndexedSubscript:v15];
        v23 = [v22 descriptor];
        v24 = malloc_type_calloc([v23 tensorAllocationSizeInBytes], 1uLL, 0x629BF559uLL);

        v25 = MEMORY[0x277CBEA90];
        v26 = [v73 intermediateGradientTensors];
        v27 = [v26 objectAtIndexedSubscript:v15];
        v28 = [v27 descriptor];
        v29 = [v25 dataWithBytesNoCopy:v24 length:objc_msgSend(v28 freeWhenDone:{"tensorAllocationSizeInBytes"), 1}];

        v30 = v73;
        for (i = 0; i != v4; ++i)
        {
          v32 = [v30 device];
          v33 = [v32 computeEngine];
          v34 = [v73 intermediateGradientTensors];
          v35 = [v34 objectAtIndexedSubscript:i];
          v36 = [v33 needToAllocateDeviceMemoryForTensor:v35];

          if (v36)
          {
            v37 = [v73 device];
            v38 = [v37 computeEngine];
            v39 = [v73 intermediateGradientTensors];
            v40 = [v39 objectAtIndexedSubscript:i];
            [v38 allocateDeviceMemoryForTensor:v40];

            v41 = [v73 intermediateGradientTensors];
            v42 = [v41 objectAtIndexedSubscript:i];
            [v42 setData:v29];

            v43 = [v73 device];
            v44 = [v43 computeEngine];
            v45 = [v73 intermediateGradientTensors];
            v46 = [v45 objectAtIndexedSubscript:i];
            [v44 dispatchBroadcastTensor:v46];
          }

          v30 = v73;
        }

        v14 = v73;
      }
    }

LABEL_16:
    v47 = [v14 intermediateGradientTensors];
    v48 = [v47 count];

    if (v48 != 1)
    {
      v49 = 0;
      do
      {
        v50 = [v73 device];
        v51 = [v50 computeEngine];
        v52 = [v73 intermediateGradientTensors];
        v53 = [v52 objectAtIndexedSubscript:v4];
        v54 = [v51 needToAllocateDeviceMemoryForTensor:v53];

        if (v54)
        {
          v55 = [v73 device];
          v56 = [v55 computeEngine];
          v57 = [v73 intermediateGradientTensors];
          v58 = [v57 objectAtIndexedSubscript:v4];
          [v56 allocateDeviceMemoryForTensor:v58];
        }

        v72 = [v73 device];
        v59 = [v72 computeEngine];
        v71 = [v73 intermediateSumLayer];
        v60 = [v71 deviceOps];
        v61 = [v73 intermediateGradientTensors];
        v62 = [v61 objectAtIndexedSubscript:v49];
        [v73 intermediateGradientTensors];
        v64 = v63 = v4;
        v65 = [v64 objectAtIndexedSubscript:v49 + 1];
        v66 = [v73 intermediateGradientTensors];
        v67 = [v66 objectAtIndexedSubscript:v63];
        LOBYTE(v70) = 0;
        [v59 dispatchForwardLayer:v60 sourceTensor:v62 secondaryTensor:v65 tertiaryTensor:0 resultTensor:v67 resultStateIsTemporary:0 forTraining:v70];

        v4 = v63 + 1;
        v68 = [v73 intermediateGradientTensors];
        v69 = [v68 count] - 1;

        v49 += 2;
      }

      while (v49 < v69);
    }
  }
}

- (id)resultGradientTensorToUseByExecuteGradientForLayer:(id)a3 sourceIndex:(unint64_t)a4 incrementIntermediateIndex:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = [v8 sourceTensors];
  v10 = [v9 objectAtIndexedSubscript:a4];

  if (![v10 rootSourceGradientTensorIndex])
  {
    v13 = [v8 sourceTensors];
    v14 = [v13 objectAtIndexedSubscript:a4];
    v15 = [v14 parentLayers];
    v16 = [v15 objectAtIndexedSubscript:0];

    v17 = [v16 intermediateGradientTensors];
    if ([v17 count])
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
        v19 = [v16 intermediateGradientTensors];
        v12 = [v19 objectAtIndexedSubscript:{objc_msgSend(v16, "intermediateGradientTensorIndex")}];

        if (v5)
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

    v20 = [v16 resultTensors];
    v12 = [v20 count];

    if (v12)
    {
      v21 = 0;
      v12 = 0;
      do
      {
        v22 = [v16 resultTensors];
        v23 = [v22 objectAtIndexedSubscript:v21];

        if (v23 == v10)
        {
          v24 = [v16 sourceGradientTensors];
          v25 = [v24 objectAtIndexedSubscript:v21];

          v12 = v25;
        }

        ++v21;
        v26 = [v16 resultTensors];
        v27 = [v26 count];
      }

      while (v21 < v27);
    }

    goto LABEL_15;
  }

  v11 = [(MLCTrainingGraph *)self rootSourceGradientTensor];
  v12 = [v11 objectAtIndexedSubscript:{objc_msgSend(v10, "rootSourceGradientTensorIndex") - 1}];

  if (v5 && [v10 rootSourceGradientTensorCount] >= 2)
  {
    [v10 setRootSourceGradientTensorIndex:{objc_msgSend(v10, "rootSourceGradientTensorIndex") + 1}];
  }

LABEL_16:

  return v12;
}

- (void)linkRelatedGradientTensorsForConcatLayer:(id)a3 device:(id)a4
{
  v18 = a3;
  v4 = [v18 dimension];
  v5 = [v18 sourceTensors];
  v6 = [v5 count];

  if (v6)
  {
    v7 = 0;
    v8 = 0;
    do
    {
      v9 = [v18 resultGradientTensors];
      v10 = [v9 objectAtIndexedSubscript:v8];

      [v10 setConcatOffset:v7];
      [v10 setConcatDimension:v4];
      v11 = [v18 sourceTensors];
      v12 = [v11 objectAtIndexedSubscript:v8];
      v13 = [v12 descriptor];
      v14 = [v13 shape];
      v15 = [v14 objectAtIndexedSubscript:v4];
      v7 += [v15 unsignedIntegerValue];

      ++v8;
      v16 = [v18 sourceTensors];
      v17 = [v16 count];
    }

    while (v8 < v17);
  }
}

- (BOOL)setTrainingTensorParameters:(NSArray *)parameters
{
  v5 = parameters;
  v6 = [(MLCTrainingGraph *)self optimizerParameterList];
  v7 = [v6 count];

  if (v7)
  {
    v8 = +[MLCLog framework];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
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
      v8 = [v11 tensor];

      v12 = [v8 parentLayers];
      if ([v12 count])
      {
        break;
      }

      v13 = [v8 childLayers];
      [v13 count];

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
      v17 = [(MLCTrainingGraph *)self optimizerParameterList];
      [v17 setObject:v16 atIndexedSubscript:v15];

      ++v15;
    }

    while (v15 < [(NSArray *)v5 count]);
  }

  v9 = 1;
LABEL_14:

  return v9;
}

- (void)updateIsTrainableForLayerWithStopGradientTensor:(id)a3 checkChildLayers:(BOOL)a4
{
  v4 = a4;
  v20 = a3;
  v6 = [v20 parentLayers];
  v7 = [v6 count];

  v8 = v20;
  if (v7)
  {
    v9 = [v20 parentLayers];
    v10 = [v9 objectAtIndexedSubscript:0];

    if ([v10 isTrainable])
    {
      if (!v4 || ([v20 childLayers], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "count"), v11, v12 <= 1))
      {
        [v10 setIsTrainable:0];
        v13 = [v10 sourceTensors];
        v14 = [v13 count];

        if (v14)
        {
          v15 = 0;
          do
          {
            v16 = [v10 sourceTensors];
            v17 = [v16 objectAtIndexedSubscript:v15];
            [(MLCTrainingGraph *)self updateIsTrainableForLayerWithStopGradientTensor:v17 checkChildLayers:1];

            ++v15;
            v18 = [v10 sourceTensors];
            v19 = [v18 count];
          }

          while (v15 < v19);
        }
      }
    }

    v8 = v20;
  }
}

- (void)markLayersAsTrainable
{
  v3 = [(MLCGraph *)self graphLayerList];
  v4 = [v3 count];

  if (v4)
  {
    v5 = 0;
    do
    {
      v6 = [(MLCGraph *)self graphLayerList];
      v7 = [v6 objectAtIndexedSubscript:v5];

      if (([v7 compileForInferenceOnly] & 1) == 0)
      {
        [v7 setIsTrainable:1];
      }

      ++v5;
      v8 = [(MLCGraph *)self graphLayerList];
      v9 = [v8 count];
    }

    while (v5 < v9);
  }
}

- (void)updateTrainableLayerList:(BOOL)a3
{
  [(MLCTrainingGraph *)self markLayersAsTrainable];
  v5 = [(MLCTrainingGraph *)self stopGradientTensorList];
  v6 = [v5 count];

  if (v6)
  {
    v7 = 0;
    do
    {
      v8 = [(MLCTrainingGraph *)self stopGradientTensorList];
      v9 = [v8 objectAtIndexedSubscript:v7];
      [(MLCTrainingGraph *)self updateIsTrainableForLayerWithStopGradientTensor:v9 checkChildLayers:0];

      ++v7;
      v10 = [(MLCTrainingGraph *)self stopGradientTensorList];
      v11 = [v10 count];
    }

    while (v7 < v11);
  }

  if (([(MLCGraph *)self compilerOptions]& 1) != 0 || ([(MLCGraph *)self compilerOptions]& 8) != 0)
  {

    [(MLCTrainingGraph *)self setFirstTrainableLayerIndex:0];
  }

  else
  {
    v12 = [(MLCGraph *)self graphLayerList];
    v13 = [v12 count];

    if (v13)
    {
      v14 = 0;
      while (1)
      {
        v15 = [(MLCGraph *)self graphLayerList];
        v22 = [v15 objectAtIndexedSubscript:v14];

        if (([v22 skipLayer] & 1) == 0)
        {
          if ([v22 isTrainable])
          {
            v16 = [(MLCTrainingGraph *)self optimizerParameterList];
            v17 = [v16 count];

            if (v17)
            {
              break;
            }

            if ([v22 isDebuggingEnabled])
            {
              break;
            }

            if (a3)
            {
              break;
            }

            if ([v22 isUpdatable])
            {
              break;
            }

            v18 = [(MLCGraph *)self graphLayerList];
            v19 = [v18 count] - 1;

            if (v14 >= v19)
            {
              break;
            }
          }
        }

        ++v14;
        v20 = [(MLCGraph *)self graphLayerList];
        v21 = [v20 count];

        if (v14 >= v21)
        {
          return;
        }
      }

      [(MLCTrainingGraph *)self setFirstTrainableLayerIndex:v14];
    }
  }
}

- (void)allocateGradientTensorsForLayersInGraph:(BOOL)a3
{
  v3 = a3;
  if (([(MLCGraph *)self compilerOptions]& 1) != 0)
  {
    LODWORD(v5) = 1;
  }

  else
  {
    v5 = ([(MLCGraph *)self compilerOptions]>> 3) & 1;
  }

  v6 = [(MLCTrainingGraph *)self firstTrainableLayerIndex];
  v7 = [(MLCGraph *)self graphLayerList];
  v8 = [v7 count];

  if (v6 < v8)
  {
    v42 = v5 | v3;
    v9 = 0x278A68000uLL;
    while (1)
    {
      v10 = [(MLCGraph *)self graphLayerList];
      v11 = [v10 objectAtIndexedSubscript:v6];

      v12 = [v11 device];
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

      ++v6;
      v33 = [(MLCGraph *)self graphLayerList];
      v34 = [v33 count];

      if (v6 >= v34)
      {
        goto LABEL_27;
      }
    }

    [v11 allocateGradientsForParameters];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(MLCTrainingGraph *)self allocateGradientTensorsForMultipleChildrenOfLayer:v11 gradientTensorsAreTemporary:0 device:v12];
    }

    v14 = [v11 sourceTensors];
    v15 = [v14 count];

    if (v15)
    {
      v16 = 0;
      v17 = 1;
      do
      {
        v18 = [v11 sourceTensors];
        v19 = [v18 objectAtIndexedSubscript:v16];
        v20 = [v19 computeFlags];

        if ((v20 & 8) == 0)
        {
          v21 = [(MLCTrainingGraph *)self resultGradientTensorToUseByExecuteGradientForLayer:v11 sourceIndex:v16 incrementIntermediateIndex:1];
          v22 = [v11 resultGradientTensors];
          [v22 setObject:v21 atIndexedSubscript:v16];

          v23 = [v11 sourceTensors];
          v24 = [v23 objectAtIndexedSubscript:v16];
          v25 = [v24 parentLayers];
          v26 = [v25 count];

          v17 = (v26 == 0) & v17;
        }

        ++v16;
        v27 = [v11 sourceTensors];
        v28 = [v27 count];
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
        v30 = [v11 device];
        v31 = [v30 computeEngine];
        v32 = [v11 deviceOps];
        [v31 setConvolutionGradientComputeWeightsAndBiasOnly:v32];
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_24;
        }

        v30 = [v11 device];
        v31 = [v30 computeEngine];
        v32 = [v11 deviceOps];
        [v31 setFullyConnectedGradientComputeWeightsAndBiasOnly:v32];
      }
    }

LABEL_24:
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(MLCTrainingGraph *)self linkRelatedGradientTensorsForConcatLayer:v11 device:v12];
    }

    goto LABEL_26;
  }

LABEL_27:
  v35 = [(MLCTrainingGraph *)self firstTrainableLayerIndex];
  v36 = [(MLCGraph *)self graphLayerList];
  v37 = [v36 count];

  if (v35 < v37)
  {
    do
    {
      v38 = [(MLCGraph *)self graphLayerList];
      v39 = [v38 objectAtIndexedSubscript:v35];

      if ([v39 isTrainable])
      {
        if (([v39 skipLayer] & 1) == 0)
        {
          objc_opt_class();
          objc_opt_isKindOfClass();
        }
      }

      ++v35;
      v40 = [(MLCGraph *)self graphLayerList];
      v41 = [v40 count];
    }

    while (v35 < v41);
  }
}

- (BOOL)compileOptimizer:(MLCOptimizer *)optimizer
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = optimizer;
  v5 = [(MLCOptimizer *)v4 deviceOps];
  v6 = [v5 count];

  if (v6)
  {
    v7 = [(MLCOptimizer *)v4 device];
    v8 = [(MLCGraph *)self device];

    if (v7 != v8)
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
    v10 = [(MLCGraph *)self device];

    if (!v10)
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

    v15 = [(MLCGraph *)self device];
    [(MLCOptimizer *)v4 compileForDevice:v15];

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
    v6 = [(MLCTrainingGraph *)self firstTrainableLayerIndex];
    v7 = [(MLCGraph *)self graphLayerList];
    v8 = [v7 count];

    if (v6 >= v8)
    {
      v9 = 0;
    }

    else
    {
      v9 = 0;
      do
      {
        v10 = [(MLCGraph *)self graphLayerList];
        v11 = [v10 objectAtIndexedSubscript:v6];

        if ([v11 isUpdatable])
        {
          if ([v11 isTrainable])
          {
            v12 = [(MLCTrainingGraph *)self optimizer];

            if (v12)
            {
              v13 = [(MLCTrainingGraph *)self optimizer];
              [v11 allocateDataForOptimizer:v13];

              v14 = [(MLCTrainingGraph *)self optimizerUpdateLayerList];
              [v14 addObject:v11];

              v9 += [v11 parametersCount];
              v15 = [v11 device];
              [v5 addObject:v15];
            }
          }
        }

        ++v6;
        v16 = [(MLCGraph *)self graphLayerList];
        v17 = [v16 count];
      }

      while (v6 < v17);
    }

    v18 = [(MLCTrainingGraph *)self optimizerParameterList];
    v19 = [v18 count];

    if (v19)
    {
      v20 = 0;
      do
      {
        v21 = [(MLCTrainingGraph *)self optimizerParameterList];
        v22 = [v21 objectAtIndexedSubscript:v20];

        v23 = [(MLCTrainingGraph *)self optimizer];
        v24 = [(MLCGraph *)self device];
        [v22 allocateDataForOptimizer:v23 device:v24 isVector:0];

        ++v9;
        v25 = [v22 device];
        [v5 addObject:v25];

        ++v20;
        v26 = [(MLCTrainingGraph *)self optimizerParameterList];
        v27 = [v26 count];
      }

      while (v20 < v27);
    }

    v28 = [MEMORY[0x277CBEB98] setWithArray:v5];
    [(MLCTrainingGraph *)self setOptimizerUpdateDeviceList:v28];

    [(MLCTrainingGraph *)self setAllocateOptimizerData:0];
    if (v9)
    {
      v29 = [(MLCTrainingGraph *)self optimizer];
      v30 = [v29 device];
      v31 = [v30 computeEngine];
      v32 = [(MLCTrainingGraph *)self optimizer];
      [v31 allocateDeviceDataForGlobalNormClippingWithOptimizer:v32 updatableParameterCount:v9];
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
    v10 = [(MLCTrainingGraph *)self optimizer];
    if (v10)
    {
      v11 = v10;
      v12 = [(MLCTrainingGraph *)self optimizer];
      if (v12)
      {
        v13 = v12;
        v14 = [(MLCTrainingGraph *)self allocateOptimizerData];

        if (v14)
        {
          goto LABEL_20;
        }
      }

      else
      {
      }

      if ([(MLCTensor *)v8 isLayerParameter])
      {
        v15 = [(MLCTensor *)v8 childLayers];
        v16 = [v15 count];

        if (v16)
        {
          v17 = 0;
          do
          {
            v18 = [(MLCTensor *)v8 childLayers];
            v19 = [v18 objectAtIndexedSubscript:v17];

            if ([v19 isUpdatable] && objc_msgSend(v19, "isTrainable"))
            {
              v20 = [(MLCTrainingGraph *)self optimizer];
              [v19 allocateDataForOptimizer:v20];
            }

            ++v17;
            v21 = [(MLCTensor *)v8 childLayers];
            v22 = [v21 count];
          }

          while (v17 < v22);
        }
      }

      else
      {
        v23 = [(MLCTrainingGraph *)self optimizerParameterList];
        v24 = [v23 count];

        if (v24)
        {
          v25 = 0;
          do
          {
            v26 = [(MLCTrainingGraph *)self optimizerParameterList];
            v27 = [v26 objectAtIndexedSubscript:v25];

            v28 = [v27 tensor];

            if (v28 == v8)
            {
              v29 = [(MLCTrainingGraph *)self optimizer];
              v30 = [(MLCGraph *)self device];
              [v27 allocateDataForOptimizer:v29 device:v30 isVector:0];
            }

            ++v25;
            v31 = [(MLCTrainingGraph *)self optimizerParameterList];
            v32 = [v31 count];
          }

          while (v25 < v32);
        }
      }
    }
  }

LABEL_20:

  return v9;
}

- (BOOL)recompileWithOptions:(unint64_t)a3
{
  v3 = a3;
  v52 = *MEMORY[0x277D85DE8];
  if (![(MLCGraph *)self recompileAfterLinking]|| ([(MLCGraph *)self setRecompileAfterLinking:0], ([(MLCGraph *)self compilerOptions]& 1) != 0) || ([(MLCGraph *)self compilerOptions]& 2) != 0)
  {
    LOBYTE(v7) = 1;
  }

  else
  {
    v6 = [(MLCGraph *)self compilerOptions];
    v7 = (v6 >> 2) & 1;
    if ((v6 & 4) != 0)
    {
      if ((v3 & 4) != 0)
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

      v16 = [(MLCGraph *)self device];
      v17 = [v16 computeEngine];
      v18 = [(MLCGraph *)self graphLayerList];
      v19 = [(MLCTrainingGraph *)self stopGradientTensorList];
      [v17 fuseLayersForTrainingGraph:v18 stopGradientTensorList:v19];

      v20 = [(MLCGraph *)self graphLayerList];
      v21 = [v20 count];

      v22 = 0;
      if (v21)
      {
        v23 = 0;
        do
        {
          v24 = [(MLCGraph *)self graphLayerList];
          v25 = [v24 objectAtIndexedSubscript:v23];

          v26 = [v25 fusedLayers];
          v27 = [v26 count];

          if (v27)
          {
            ++v22;
            v28 = [v25 device];
            v29 = [v25 sourceTensors];
            v30 = [v25 resultTensors];
            v31 = [v30 objectAtIndexedSubscript:0];
            [v25 compileForDevice:v28 sourceTensors:v29 resultTensor:v31];

            [v25 allocateGradientsForParameters];
            if (![(MLCTrainingGraph *)self allocateOptimizerData])
            {
              if ([v25 isUpdatable])
              {
                if ([v25 isTrainable])
                {
                  v32 = [(MLCTrainingGraph *)self optimizer];

                  if (v32)
                  {
                    v33 = [(MLCTrainingGraph *)self optimizer];
                    [v25 allocateDataForOptimizer:v33];
                  }
                }
              }

              v34 = [v25 fusedLayers];
              v35 = [v34 count];

              if (v35)
              {
                v36 = 0;
                do
                {
                  v37 = [v25 fusedLayers];
                  v38 = [v37 objectAtIndexedSubscript:v36];

                  if ([v38 isUpdatable])
                  {
                    if ([v38 isTrainable])
                    {
                      v39 = [(MLCTrainingGraph *)self optimizer];

                      if (v39)
                      {
                        v40 = [(MLCTrainingGraph *)self optimizer];
                        [v38 allocateDataForOptimizer:v40];
                      }
                    }
                  }

                  ++v36;
                  v41 = [v25 fusedLayers];
                  v42 = [v41 count];
                }

                while (v36 < v42);
              }
            }
          }

          ++v23;
          v43 = [(MLCGraph *)self graphLayerList];
          v44 = [v43 count];
        }

        while (v23 < v44);
      }

      v45 = [(MLCGraph *)self device];
      v46 = [v45 computeEngine];
      v47 = [(MLCGraph *)self graphLayerList];
      [v46 optimizeComputationForTrainingGraph:v47];

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

  v22 = [(MLCGraph *)self graphLayerList];
  v23 = [v22 count];

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
    v27 = [(MLCGraph *)self graphLayerList];
    v28 = [v27 objectAtIndexedSubscript:v26];
    v29 = [v28 compileForInferenceOnly];

    if (v29)
    {
      v14 = +[MLCLog framework];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v165 = NSStringFromSelector(aSelector);
        v166 = [(MLCGraph *)self graphLayerList];
        v167 = [v166 objectAtIndexedSubscript:v26];
        *buf = 138412546;
        v180 = v165;
        v181 = 2112;
        v182 = v167;
        _os_log_error_impl(&dword_238C1D000, v14, OS_LOG_TYPE_ERROR, "%@: Compiling a layer (%@) in graph that has already been compiled with for inference.  Please compile training graph before creating and compiling associated inference graph", buf, 0x16u);
      }

      goto LABEL_107;
    }

    v30 = [(MLCGraph *)self graphLayerList];
    v31 = [v30 objectAtIndexedSubscript:v26];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v33 = [(MLCGraph *)self graphLayerList];
      v34 = [v33 objectAtIndexedSubscript:v26];

      v35 = [v34 descriptor];
      v36 = [v35 scalesGradientByFrequency];

      if ([(MLCDevice *)v11 type]== MLCDeviceTypeAny || [(MLCDevice *)v11 type]== MLCDeviceTypeGPU)
      {
        v172 = 1;
      }

      v25 |= v36;
    }

    ++v26;
    v37 = [(MLCGraph *)self graphLayerList];
    v38 = [v37 count];
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
    v46 = [(MLCDevice *)v11 computeEngine];
    v47 = [(MLCGraph *)self graphLayerList];
    v48 = [(MLCTrainingGraph *)self stopGradientTensorList];
    [v46 fuseLayersForTrainingGraph:v47 stopGradientTensorList:v48];
  }

  v49 = [MEMORY[0x277CBEBF8] mutableCopy];
  [(MLCGraph *)self setLstmLayerIndexList:v49];

  v50 = [(MLCGraph *)self graphLayerList];
  v51 = [v50 count];

  if (v51)
  {
    v52 = 0;
    v173 = options;
    do
    {
      v53 = [(MLCGraph *)self graphLayerList];
      v54 = [v53 objectAtIndexedSubscript:v52];

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
          v56 = [(MLCGraph *)self lstmLayerIndexList];
          v57 = [(MLCGraph *)self lstmLayerIndexList];
          [v56 setObject:v55 atIndexedSubscript:{objc_msgSend(v57, "count")}];
        }

        if ([(MLCDevice *)v11 type])
        {
          v58 = [v54 deviceOps];
          v59 = [v58 count];

          if (!v59)
          {
            v60 = [v54 resultTensors];
            v61 = [v60 count];

            if (v61)
            {
              v62 = 0;
              do
              {
                v63 = [v54 resultTensors];
                v64 = [v63 objectAtIndexedSubscript:v62];
                v65 = [v64 deviceMemory];
                v66 = [v65 count];

                if (v66)
                {
                  v67 = [v54 resultTensors];
                  v68 = [v67 objectAtIndexedSubscript:v62];
                  v69 = [v68 deviceMemory];
                  [v69 removeAllObjects];
                }

                ++v62;
                v70 = [v54 resultTensors];
                v71 = [v70 count];
              }

              while (v62 < v71);
            }

            v72 = [v54 resultGradientTensors];
            v73 = [v72 count];

            if (v73)
            {
              v74 = 0;
              do
              {
                v75 = [v54 resultGradientTensors];
                v76 = [v75 objectAtIndexedSubscript:v74];
                v77 = [v76 deviceMemory];
                v78 = [v77 count];

                if (v78)
                {
                  v79 = [v54 resultGradientTensors];
                  v80 = [v79 objectAtIndexedSubscript:v74];
                  v81 = [v80 deviceMemory];
                  [v81 removeAllObjects];
                }

                ++v74;
                v82 = [v54 resultGradientTensors];
                v83 = [v82 count];
              }

              while (v74 < v83);
            }
          }
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v84 = [v54 resultTensors];
          v85 = [v84 count];

          if (v85)
          {
            v86 = [v54 resultTensors];
            v87 = [v86 objectAtIndexedSubscript:0];
            v88 = [v87 deviceMemory];
            [v88 removeAllObjects];
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
      v89 = [(MLCGraph *)self graphLayerList];
      v90 = [v89 count];
    }

    while (v52 < v90);
  }

  v91 = [(MLCGraph *)self graphLayerList];
  v92 = [v91 count];

  if (!v92)
  {
LABEL_89:
    v128 = [(MLCTrainingGraph *)self lossLayersInTrainingGraph];
    v129 = [v128 count];

    if (v129)
    {
      v130 = 0;
      v131 = 0;
      do
      {
        v132 = [(MLCTrainingGraph *)self lossLayersInTrainingGraph];
        v133 = [v132 objectAtIndexedSubscript:v130];
        objc_opt_class();
        v134 = objc_opt_isKindOfClass();

        v131 |= v134;
        ++v130;
        v135 = [(MLCTrainingGraph *)self lossLayersInTrainingGraph];
        v136 = [v135 count];
      }

      while (v130 < v136);
      if (v131)
      {
        v137 = [(MLCGraph *)self graphLayerList];
        v138 = [(MLCGraph *)self graphLayerList];
        v139 = [v137 objectAtIndexedSubscript:{objc_msgSend(v138, "count") - 1}];
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
      v141 = [(MLCDevice *)v11 computeEngine];
      v142 = objc_opt_respondsToSelector();

      if (v142)
      {
        v143 = [(MLCDevice *)v11 computeEngine];
        [v143 selectDevicesWithBatchSize:1];
      }
    }

    v144 = [(MLCTrainingGraph *)self optimizer];

    if (!v144 || ([(MLCTrainingGraph *)self optimizer], v145 = objc_claimAutoreleasedReturnValue(), v146 = [(MLCTrainingGraph *)self compileOptimizer:v145], v145, v146))
    {
      v147 = [(MLCDevice *)v11 computeEngine];
      v148 = objc_opt_respondsToSelector();

      if (v148)
      {
        v149 = [(MLCDevice *)v11 computeEngine];
        v150 = [(MLCGraph *)self graphLayerList];
        [v149 allocateDeviceHeapForGraph:v150 forInference:0];
      }

      [(MLCTrainingGraph *)self markLayersAsTrainable];
      v151 = [(MLCGraph *)self device];
      v152 = [v151 computeEngine];
      v153 = [(MLCGraph *)self graphLayerList];
      [v152 optimizeComputationForTrainingGraph:v153];

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
    v96 = [(MLCGraph *)self graphLayerList];
    v14 = [v96 objectAtIndexedSubscript:v93];

    if (![v14 skipLayer])
    {
      break;
    }

    [v14 setDevice:v11];
LABEL_88:

    ++v93;
    v126 = [(MLCGraph *)self graphLayerList];
    v127 = [v126 count];

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

  v98 = [v14 deviceOps];
  v99 = [v98 count];

  if (v99)
  {
    v100 = [v14 device];
    v101 = [v100 isEqual:v11];

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
  v104 = [v14 sourceTensors];
  v105 = [v14 resultTensors];
  v106 = v105;
  if (v103)
  {
    v107 = [v14 compileForDevice:v11 sourceTensors:v104 resultTensors:v105];

    v95 = v102;
    v94 = 0x278A68000;
    if ((v107 & 1) == 0)
    {
      goto LABEL_118;
    }

    goto LABEL_80;
  }

  v108 = [v105 objectAtIndexedSubscript:0];
  v109 = [v14 compileForDevice:v11 sourceTensors:v104 resultTensor:v108];

  v95 = v102;
  v94 = 0x278A68000;
  if (v109)
  {
LABEL_80:
    v110 = [v14 resultTensors];
    v111 = [v110 count];

    if (v111)
    {
      v112 = 0;
      do
      {
        v113 = [v14 resultTensors];
        v114 = [v113 objectAtIndexedSubscript:v112];
        [v114 setDevice:v11];

        ++v112;
        v115 = [v14 resultTensors];
        v116 = [v115 count];
      }

      while (v112 < v116);
    }

    v117 = [v14 sourceGradientTensors];
    v118 = [v117 count];

    if (v118)
    {
      v119 = 0;
      do
      {
        v120 = [v14 sourceGradientTensors];
        v121 = [v120 objectAtIndexedSubscript:v119];
        [v121 setDevice:v11];

        ++v119;
        v122 = [v14 sourceGradientTensors];
        v123 = [v122 count];
      }

      while (v119 < v123);
    }

    v124 = *(v95 + 3040);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v125 = [(MLCTrainingGraph *)self lossLayersInTrainingGraph];
      [v125 addObject:v14];
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

  v7 = [(MLCTrainingGraph *)self stopGradientTensorList];
  [v7 removeAllObjects];

  if ([(NSArray *)v5 count])
  {
    v8 = 0;
    do
    {
      v9 = [(NSArray *)v5 objectAtIndexedSubscript:v8];
      v10 = [(MLCTrainingGraph *)self stopGradientTensorList];
      [v10 setObject:v9 atIndexedSubscript:v8];

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
  v3 = [(MLCGraph *)self graphLayerList];
  v4 = [v3 count];

  v5 = 0;
  if (v4)
  {
    v6 = 0;
    do
    {
      v7 = [(MLCGraph *)self graphLayerList];
      v8 = [v7 objectAtIndexedSubscript:v6];

      v9 = [(MLCTrainingGraph *)self optimizer];
      v10 = [v8 device];
      v5 += [v8 deviceMemorySizeWithOptimizer:v9 device:v10];

      ++v6;
      v11 = [(MLCGraph *)self graphLayerList];
      v12 = [v11 count];
    }

    while (v6 < v12);
  }

  v13 = [(MLCTrainingGraph *)self rootSourceGradientTensor];
  v14 = [v13 count];

  if (v14)
  {
    v15 = 0;
    do
    {
      v16 = [(MLCTrainingGraph *)self rootSourceGradientTensor];
      v17 = [v16 objectAtIndexedSubscript:v15];
      v18 = [v17 device];

      v19 = [v18 computeEngine];
      v20 = [(MLCTrainingGraph *)self rootSourceGradientTensor];
      v21 = [v20 objectAtIndexedSubscript:v15];
      v5 += [v19 deviceMemorySizeForTensor:v21];

      ++v15;
      v22 = [(MLCTrainingGraph *)self rootSourceGradientTensor];
      v23 = [v22 count];
    }

    while (v15 < v23);
  }

  return v5;
}

- (unint64_t)deviceMemorySizeWithDevice:(id)a3
{
  v4 = a3;
  v5 = [(MLCGraph *)self graphLayerList];
  v6 = [v5 count];

  if (v6)
  {
    v7 = 0;
    v8 = 0;
    do
    {
      v9 = [(MLCGraph *)self graphLayerList];
      v10 = [v9 objectAtIndexedSubscript:v7];
      v11 = [(MLCTrainingGraph *)self optimizer];
      v8 += [v10 deviceMemorySizeWithOptimizer:v11 device:v4];

      ++v7;
      v12 = [(MLCGraph *)self graphLayerList];
      v13 = [v12 count];
    }

    while (v7 < v13);
  }

  else
  {
    v8 = 0;
  }

  v14 = [(MLCTrainingGraph *)self rootSourceGradientTensor];
  v15 = [v14 count];

  if (v15)
  {
    v16 = 0;
    do
    {
      v17 = [v4 computeEngine];
      v18 = [(MLCTrainingGraph *)self rootSourceGradientTensor];
      v19 = [v18 objectAtIndexedSubscript:v16];
      v8 += [v17 deviceMemorySizeForTensor:v19];

      ++v16;
      v20 = [(MLCTrainingGraph *)self rootSourceGradientTensor];
      v21 = [v20 count];
    }

    while (v16 < v21);
  }

  return v8;
}

- (id)description
{
  v3 = [(MLCGraph *)self allInputs];
  v4 = [v3 allKeys];

  v5 = [(MLCGraph *)self allLossLabels];
  v6 = [v5 allKeys];

  v7 = [(MLCGraph *)self allLossLabelWeights];
  v8 = [v7 allKeys];

  v9 = [(MLCGraph *)self allOutputs];
  v10 = [v9 allKeys];

  v11 = MEMORY[0x277CCACA8];
  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  v14 = [(MLCGraph *)self graphLayerList];
  v15 = [v14 objectAtIndexedSubscript:0];
  v16 = [(MLCTrainingGraph *)self optimizer];
  v20.receiver = self;
  v20.super_class = MLCTrainingGraph;
  v17 = [(MLCGraph *)&v20 description];
  v18 = [v11 stringWithFormat:@"%@: { rootLayer=%@ : optimizer=%@ : inputs=%@ : losslabels=%@ : lossLabelWeights= %@ : outputs= %@ : %@ }", v13, v15, v16, v4, v6, v8, v10, v17];

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

- (void)executeForwardToLayerIndex:(unint64_t)a3 resultTensor:(id)a4 resultStateIsTemporary:(BOOL)a5 batchSize:(unint64_t)a6 forTraining:(BOOL)a7 executionOptions:(unint64_t)a8
{
  v8 = a8;
  v151 = a5;
  v152 = a7;
  v168 = *MEMORY[0x277D85DE8];
  v12 = a4;
  context = objc_autoreleasePoolPush();
  if ((v8 & 4) != 0)
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

  v17 = [(MLCGraph *)self device];
  v18 = [v17 type] == 0;

  v147 = v13;
  if ((v18 & (v8 >> 4)) != 0)
  {
    v19 = v13;
  }

  else
  {
    v19 = 0;
  }

  spid = v19;
  if (a3)
  {
    v20 = 0;
    v161 = v19 - 1;
    v159 = a3 - 1;
    v156 = v12;
    v157 = a3;
    v150 = a6;
    while (1)
    {
      v21 = [(MLCGraph *)self graphLayerList];
      v22 = [v21 objectAtIndexedSubscript:v20];

      v23 = [v22 device];
      v24 = +[MLCLog execution];
      v25 = v24;
      if (v161 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
      {
        v26 = objc_opt_class();
        v27 = NSStringFromClass(v26);
        v28 = [v22 layerID];
        *buf = 138543618;
        v165 = v27;
        v166 = 2050;
        v167 = v28;
        _os_signpost_emit_with_name_impl(&dword_238C1D000, v25, OS_SIGNPOST_INTERVAL_BEGIN, spid, "ExecuteForward -- PerLayer", "%{public,name=MLCLayerType}@ %{public,name=LayerID}lu", buf, 0x16u);
      }

      if (v12 && v20 == v159)
      {
        v162 = v12;
      }

      else
      {
        v29 = [v22 resultTensors];
        v162 = [v29 objectAtIndexedSubscript:0];
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

      [v22 setBatchSize:a6];
      if ([(MLCGraph *)self allocateDeviceMemoryForTensorsInGraph])
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          [(MLCGraph *)self allocateDeviceMemoryForTensor:v162 device:v23];
          v32 = [v22 resultTensors];
          v33 = [v32 count];

          if (v33 >= 2)
          {
            v34 = 1;
            do
            {
              v35 = [v22 resultTensors];
              v36 = [v35 objectAtIndexedSubscript:v34];
              [(MLCGraph *)self allocateDeviceMemoryForTensor:v36 device:v23];

              ++v34;
              v37 = [v22 resultTensors];
              v38 = [v37 count];
            }

            while (v34 < v38);
          }

          [(MLCGraph *)self updateDeviceMemoryReadCountForTensor:v162];
          v39 = [v22 resultTensors];
          v40 = [v39 count];

          if (v40 >= 2)
          {
            v41 = 1;
            do
            {
              v42 = [v22 resultTensors];
              v43 = [v42 objectAtIndexedSubscript:v41];
              [(MLCGraph *)self updateDeviceMemoryReadCountForTensor:v43];

              ++v41;
              v44 = [v22 resultTensors];
              v45 = [v44 count];
            }

            while (v41 < v45);
          }

          if ([v22 isTrainable])
          {
            [(MLCGraph *)self updateDeviceMemoryReadCountForGradientWithLayer:v22 tensor:v162 checkIfSourceNeeded:0 checkIfResultNeeded:1];
            v46 = [v22 resultTensors];
            v47 = [v46 count];

            if (v47 >= 2)
            {
              v48 = 1;
              do
              {
                v49 = [v22 resultTensors];
                v50 = [v49 objectAtIndexedSubscript:v48];
                [(MLCGraph *)self updateDeviceMemoryReadCountForGradientWithLayer:v22 tensor:v50 checkIfSourceNeeded:0 checkIfResultNeeded:1];

                ++v48;
                v51 = [v22 resultTensors];
                v52 = [v51 count];
              }

              while (v48 < v52);
            }

            v53 = [v22 sourceTensors];
            v54 = [v53 count];

            if (v54)
            {
              v55 = 0;
              do
              {
                v56 = [v22 sourceTensors];
                v57 = [v56 objectAtIndexedSubscript:v55];
                [(MLCGraph *)self updateDeviceMemoryReadCountForGradientWithLayer:v22 tensor:v57 checkIfSourceNeeded:1 checkIfResultNeeded:0];

                ++v55;
                v58 = [v22 sourceTensors];
                v59 = [v58 count];
              }

              while (v55 < v59);
            }
          }
        }
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v60 = [v23 computeEngine];
        v61 = [v22 deviceOps];
        v62 = [v22 sourceTensors];
        v160 = v60;
        [v60 dispatchForwardConcatLayer:v61 sourceTensors:v62 resultTensor:v162];
        goto LABEL_57;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v23 computeEngine];
        v63 = self;
        v64 = v20;
        v66 = v65 = v23;
        [v22 deviceOps];
        v68 = v67 = a6;
        v62 = [v22 sourceTensors];
        v69 = [v62 objectAtIndexedSubscript:0];
        v70 = [v22 resultTensors];
        v160 = v66;
        v71 = v66;
        v23 = v65;
        v20 = v64;
        self = v63;
        [v71 dispatchForwardSplitLayer:v68 sourceTensor:v69 resultTensors:v70];

        v61 = v68;
        a6 = v67;
        v12 = v156;
        goto LABEL_42;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v160 = [v23 computeEngine];
        v153 = [v22 deviceOps];
        v62 = [v22 sourceTensors];
        v72 = [v62 objectAtIndexedSubscript:0];
        v73 = [v22 binaryOperation];
        v74 = 0;
        if (v73)
        {
          v146 = [v22 sourceTensors];
          v74 = [v146 objectAtIndexedSubscript:1];
          v145 = v74;
        }

        v75 = [v22 sourceTensors];
        if ([v75 count] == 3)
        {
          [v22 sourceTensors];
          v76 = v142 = v73;
          v77 = [v76 objectAtIndexedSubscript:2];
          LOBYTE(v138) = v152;
          [v160 dispatchForwardLayer:v153 sourceTensor:v72 secondaryTensor:v74 tertiaryTensor:v77 resultTensor:v162 resultStateIsTemporary:v151 forTraining:v138];

          v12 = v156;
          v73 = v142;
        }

        else
        {
          LOBYTE(v138) = v152;
          [v160 dispatchForwardLayer:v153 sourceTensor:v72 secondaryTensor:v74 tertiaryTensor:0 resultTensor:v162 resultStateIsTemporary:v151 forTraining:v138];
        }

        a6 = v150;
        if (v73)
        {
        }

        goto LABEL_56;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v78 = v22;
        v79 = [v78 lossLabels];
        v80 = [v79 descriptor];
        v81 = [v80 stride];
        v82 = [v81 objectAtIndexedSubscript:0];
        v154 = [v82 unsignedIntegerValue] >> 2;

        v160 = [v23 computeEngine];
        v83 = [v78 deviceOps];
        v62 = [v78 sourceTensors];
        v84 = [v62 objectAtIndexedSubscript:0];
        v85 = [v78 lossLabels];
        v86 = [v78 weights];

        BYTE1(v138) = v152;
        LOBYTE(v138) = v151;
        [v160 dispatchForwardLossLayer:v83 sourceTensor:v84 labelsTensor:v85 labelsTensorStride:v154 weightsTensor:v86 resultTensor:v162 resultStateIsTemporary:v138 forTraining:?];

        v12 = v156;
        v61 = v83;
LABEL_50:

        goto LABEL_51;
      }

      objc_opt_class();
      a6 = v150;
      if (objc_opt_isKindOfClass())
      {
        v95 = [v23 computeEngine];
        v61 = [v22 deviceOps];
        v62 = [v22 sourceTensors];
        v69 = [v22 resultTensors];
        v160 = v95;
        [v95 dispatchRNNForwardLayer:v61 sourceTensors:v62 resultTensors:v69 resultStateIsTemporary:v151 forTraining:v152];
        goto LABEL_42;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v96 = [v23 computeEngine];
        v61 = [v22 deviceOps];
        v62 = [v22 sourceTensors];
        v160 = v96;
        [v96 dispatchForwardMHALayer:v61 sourceTensors:v62 resultTensor:v162 resultStateIsTemporary:v151 forTraining:v152];
        goto LABEL_57;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v97 = [v23 computeEngine];
        v61 = [v22 deviceOps];
        v62 = [v22 sourceTensors];
        v160 = v97;
        [v97 dispatchForwardMatMulLayer:v61 sourceTensors:v62 resultTensor:v162];
        goto LABEL_57;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v98 = [v23 computeEngine];
        v61 = [v22 deviceOps];
        v62 = [v22 sourceTensors];
        v69 = [v62 objectAtIndexedSubscript:0];
        v160 = v98;
        [v98 dispatchForwardSliceLayer:v61 sourceTensor:v69 resultTensor:v162 forTraining:v152];
LABEL_42:

LABEL_57:
        goto LABEL_58;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        break;
      }

      v99 = [v23 computeEngine];
      v100 = [v22 deviceOps];
      v101 = [v22 sourceTensors];
      v102 = [v101 objectAtIndexedSubscript:0];
      [v99 dispatchForwardReshapeLayer:v100 sourceTensor:v102 resultTensor:v162 resultStateIsTemporary:v151 forTraining:v152];

      v103 = [v162 sharedMemoryTensor];

      if (!v103)
      {
        v12 = v156;
        goto LABEL_59;
      }

      v160 = [v162 sharedMemoryTensor];
      v104 = [v162 childLayers];
      v105 = [v104 count];
      v12 = v156;
      if (v105)
      {
        v62 = [v162 childLayers];
        v106 = [v62 count];
      }

      else
      {
        v106 = 1;
        v62 = v141;
      }

      [v160 setReadCount:{objc_msgSend(v160, "readCount") + v106}];
      v141 = v62;
      v61 = v104;
      a6 = v150;
      if (v105)
      {
        goto LABEL_57;
      }

LABEL_58:

LABEL_59:
      a3 = v157;
      if (([v22 isDebuggingEnabled] & 1) == 0)
      {
        if ([(MLCGraph *)self allocateDeviceMemoryForTensorsInGraph])
        {
          v87 = [v22 sourceTensors];
          v88 = [v87 count];

          if (v88)
          {
            v89 = 0;
            do
            {
              v90 = [v22 sourceTensors];
              v91 = [v90 objectAtIndexedSubscript:v89];
              [(MLCGraph *)self freeDeviceMemoryForTensorIfSafe:v91 device:v23];

              ++v89;
              v92 = [v22 sourceTensors];
              v93 = [v92 count];
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

      if (++v20 == a3)
      {
        goto LABEL_115;
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v160 = [v23 computeEngine];
      v107 = [v22 deviceOps];
      v62 = [v22 weights];
      v108 = [v22 sourceTensors];
      v109 = [v108 objectAtIndexedSubscript:0];
      [v160 dispatchForwardEmbeddingLayer:v107 weight:v62 sourceTensor:v109 resultTensor:v162];

      v61 = v107;
      goto LABEL_83;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v160 = [v23 computeEngine];
      v61 = [v22 deviceOps];
      v110 = [v22 sourceTensors];
      v62 = v110;
      if (v152)
      {
        v108 = [v110 objectAtIndexedSubscript:0];
        [v160 dispatchForwardLayer:v61 sourceTensor:v108 resultTensor:v162 resultStateIsTemporary:v151 forTraining:1];
        goto LABEL_83;
      }

      [v160 dispatchForwardConcatLayer:v61 sourceTensors:v110 resultTensor:v162];
LABEL_51:
      a6 = v150;
      goto LABEL_57;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v111 = v22;
      v160 = [v23 computeEngine];
      v112 = [v111 deviceOps];
      v62 = [v111 sourceTensors];
      v84 = [v62 objectAtIndexedSubscript:0];
      v113 = [v111 reductionType];
      v114 = [v111 dimensions];

      v115 = v113;
      v61 = v112;
      [v160 dispatchForwardReduceLayer:v112 sourceTensor:v84 resultTensor:v162 reductionType:v115 reduceDimensions:v114 forTraining:1];

      v12 = v156;
      goto LABEL_50;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v116 = v22;
      v153 = [v23 computeEngine];
      v62 = [v116 deviceOps];
      v117 = [v116 sourceTensors];
      v143 = [v117 objectAtIndexedSubscript:0];
      v160 = v116;
      v118 = [v116 sourceTensors];
      v119 = [v118 count];
      v120 = 0;
      if (v119 == 2)
      {
        v140 = [v160 sourceTensors];
        v120 = [v140 objectAtIndexedSubscript:1];
        v139 = v120;
      }

      [v153 dispatchForwardCompareLayer:v62 sourceTensor:v143 secondaryTensor:v120 resultTensor:v162 compareOp:objc_msgSend(v160 forTraining:{"operation"), v152}];
      if (v119 == 2)
      {
      }

      a6 = v150;
LABEL_56:
      v61 = v153;
      goto LABEL_57;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v121 = [v23 computeEngine];
      v61 = [v22 deviceOps];
      v62 = [v22 sourceTensors];
      v108 = [v62 objectAtIndexedSubscript:0];
      v160 = v121;
      [v121 dispatchForwardFullyConnectedLayer:v61 sourceTensor:v108 resultTensor:v162 forTraining:v152];
LABEL_83:

      goto LABEL_51;
    }

    objc_opt_class();
    a6 = v150;
    if (objc_opt_isKindOfClass())
    {
      v160 = [v23 computeEngine];
      v61 = [v22 deviceOps];
      v62 = [v22 sourceTensors];
      v122 = [v62 objectAtIndexedSubscript:0];
      v155 = [v22 sourceTensors];
      v144 = [v155 objectAtIndexedSubscript:1];
      v163[0] = v144;
      v123 = [v22 sourceTensors];
      v124 = [v123 objectAtIndexedSubscript:2];
      v163[1] = v124;
      v125 = [MEMORY[0x277CBEA60] arrayWithObjects:v163 count:2];
      [v160 dispatchForwardSelectLayer:v61 conditionTensor:v122 sourceTensors:v125 resultTensor:v162 forTraining:v152];

      a6 = v150;
      v12 = v156;

      goto LABEL_57;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v126 = [v23 computeEngine];
      v61 = [v22 deviceOps];
      v62 = [v22 sourceTensors];
      v160 = v126;
      [v126 dispatchForwardScatterLayer:v61 sourceTensors:v62 resultTensor:v162 forTraining:v152];
      goto LABEL_57;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v127 = [v23 computeEngine];
      v61 = [v22 deviceOps];
      v62 = [v22 sourceTensors];
      v160 = v127;
      [v127 dispatchForwardGatherLayer:v61 sourceTensors:v62 resultTensor:v162 forTraining:v152];
      goto LABEL_57;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v128 = [v22 fusedLayers];
      if ([v128 count])
      {
        v129 = [v22 fusedLayers];
        v130 = [v129 objectAtIndexedSubscript:0];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        a6 = v150;
        if (isKindOfClass)
        {
          v132 = [v23 computeEngine];
          v61 = [v22 deviceOps];
          v62 = [v22 sourceTensors];
          v160 = v132;
          [v132 dispatchForwardFusedArithmeticLayerNormalizationLayer:v61 sourceTensors:v62 resultTensor:v162 forTraining:v152];
LABEL_114:
          v12 = v156;
          goto LABEL_57;
        }
      }

      else
      {

        a6 = v150;
      }
    }

    v133 = [v23 computeEngine];
    v61 = [v22 deviceOps];
    v62 = [v22 sourceTensors];
    v134 = [v62 objectAtIndexedSubscript:0];
    v160 = v133;
    [v133 dispatchForwardLayer:v61 sourceTensor:v134 resultTensor:v162 resultStateIsTemporary:v151 forTraining:v152];

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

- (void)executeGradientFromLayerIndex:(unint64_t)a3 resultStateIsTemporary:(BOOL)a4 batchSize:(unint64_t)a5 executionOptions:(unint64_t)a6
{
  v6 = a6;
  v187 = a4;
  v202 = *MEMORY[0x277D85DE8];
  v189 = objc_autoreleasePoolPush();
  if ((v6 & 4) != 0)
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

  v15 = [(MLCGraph *)self device];
  v16 = [v15 type] == 0;

  if ((v16 & (v6 >> 4)) != 0)
  {
    v17 = v11;
  }

  else
  {
    v17 = 0;
  }

  spid = v17;
  if ([(MLCTrainingGraph *)self firstTrainableLayerIndex]> a3)
  {
LABEL_11:
    v18 = [(MLCGraph *)self graphLayerList];
    v19 = [v18 objectAtIndexedSubscript:0];
    v20 = [v19 device];
    [(MLCTrainingGraph *)self sumAllRootSourceGradientTensors:v20];

    v21 = [(MLCTrainingGraph *)self firstTrainableLayerIndex];
    v22 = [(MLCGraph *)self graphLayerList];
    v23 = [v22 count];

    v24 = v189;
    if (v21 < v23 && [(MLCTrainingGraph *)self firstTrainableLayerIndex])
    {
      v25 = 0;
      do
      {
        v26 = [(MLCGraph *)self graphLayerList];
        v27 = [v26 objectAtIndexedSubscript:v25];

        if (([v27 skipLayer] & 1) == 0)
        {
          v28 = [v27 device];
          v29 = [v28 computeEngine];
          v30 = [v27 deviceOps];
          [v29 incrementReadCountForGradientState:v30 increment:-1];
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
    v33 = [(MLCGraph *)self freeResourceList];
    [v33 removeAllObjects];
    goto LABEL_21;
  }

  v35 = spid - 1;
  v190 = v11;
  v191 = a5;
  v193 = spid - 1;
  while (1)
  {
    v36 = [(MLCGraph *)self graphLayerList];
    v37 = [v36 objectAtIndexedSubscript:a3];

    v194 = [v37 device];
    v38 = +[MLCLog execution];
    v39 = v38;
    if (v35 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v38))
    {
      v40 = objc_opt_class();
      v41 = NSStringFromClass(v40);
      v42 = [v37 layerID];
      *buf = 138543618;
      v199 = v41;
      v200 = 2050;
      v201 = v42;
      _os_signpost_emit_with_name_impl(&dword_238C1D000, v39, OS_SIGNPOST_INTERVAL_BEGIN, spid, "ExecuteGradient -- PerLayer", "%{public,name=MLCLayerType}@ %{public,name=LayerID}lu", buf, 0x16u);
    }

    [v37 setBatchSize:a5];
    v43 = [v37 intermediateGradientTensors];
    v44 = [v43 count];

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
      v47 = [v37 device];
      v48 = [v47 computeEngine];
      v49 = [v37 deviceOps];
      [v48 incrementReadCountForGradientState:v49 increment:-1];

      v50 = +[MLCLog execution];
      v46 = v50;
      v35 = spid - 1;
      if (v193 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v50))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_238C1D000, v46, OS_SIGNPOST_INTERVAL_END, spid, "ExecuteGradient -- PerLayer", "", buf, 2u);
      }

      a5 = v191;
      goto LABEL_49;
    }

    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v52 = [v37 resultGradientTensors];
    v46 = [v52 objectAtIndexedSubscript:isKindOfClass & 1];

    v53 = [v37 sourceGradientTensors];
    v54 = [v53 count];

    if (v54)
    {
      break;
    }

LABEL_43:
    v62 = [v37 device];
    v63 = [v62 computeEngine];
    v64 = [v37 deviceOps];
    [v63 incrementReadCountForGradientState:v64 increment:-1];

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

    a5 = v191;
LABEL_48:

LABEL_49:
    if (a3-- <= [(MLCTrainingGraph *)self firstTrainableLayerIndex])
    {
      goto LABEL_11;
    }
  }

  v55 = 0;
  while (1)
  {
    v56 = [v194 computeEngine];
    v57 = [v37 sourceGradientTensors];
    v58 = [v57 objectAtIndexedSubscript:v55];
    v59 = [v56 needToAllocateDeviceMemoryForTensor:v58];

    if ((v59 & 1) == 0)
    {
      break;
    }

    ++v55;
    v60 = [v37 sourceGradientTensors];
    v61 = [v60 count];

    if (v55 >= v61)
    {
      goto LABEL_43;
    }
  }

  v68 = v194;
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

      [(MLCGraph *)self allocateDeviceMemoryForTensor:v46 device:v194];
      v72 = [v37 resultGradientTensors];
      v73 = [v72 count];

      if (v73)
      {
        v74 = 0;
        do
        {
          v75 = [v37 resultGradientTensors];
          v76 = [v75 objectAtIndexedSubscript:v74];
          [(MLCGraph *)self allocateDeviceMemoryForTensor:v76 device:v194];

          ++v74;
          v77 = [v37 resultGradientTensors];
          v78 = [v77 count];
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
      v79 = [v37 resultGradientTensors];
      v33 = [v79 objectAtIndexedSubscript:1];
    }

    else
    {
      v33 = 0;
    }

    v84 = [v37 sourceTensors];
    v85 = [v84 count];

    if (v85 >= 3)
    {
      v172 = v46;
      v175 = a2;
      v86 = [v37 fusedLayers];
      v87 = [v86 objectAtIndexedSubscript:0];

      v171 = v87;
      v88 = [v87 sourceTensors];
      v89 = [v88 objectAtIndexedSubscript:0];
      v90 = [v37 sourceTensors];
      v91 = [v90 objectAtIndexedSubscript:2];

      v92 = [v194 computeEngine];
      v170 = [v37 fusedLayers];
      v169 = [v170 objectAtIndexedSubscript:0];
      v182 = [v169 deviceOps];
      v93 = [v37 sourceGradientTensors];
      v178 = [v93 objectAtIndexedSubscript:0];
      if (v89 == v91)
      {
        v94 = [v37 resultGradientTensors];
        v95 = [v94 objectAtIndexedSubscript:2];
        v96 = [v37 sourceGradientTensors];
        v97 = v96;
        v98 = 0;
      }

      else
      {
        v94 = [v37 sourceGradientTensors];
        v95 = [v94 objectAtIndexedSubscript:0];
        v96 = [v37 resultGradientTensors];
        v97 = v96;
        v98 = 2;
      }

      v129 = [v96 objectAtIndexedSubscript:v98];
      [v92 dispatchGradientLayer:v182 sourceGradientTensor:v178 resultGradientTensor:v95 secondaryResultGradientTensor:v129];

      v68 = v194;
      v46 = v172;
      a2 = v175;
    }

    v80 = [v68 computeEngine];
    v81 = [v37 deviceOps];
    v82 = [v37 sourceGradientTensors];
    v83 = [v82 objectAtIndexedSubscript:0];
    [v80 dispatchGradientLayer:v81 sourceGradientTensor:v83 resultGradientTensor:v46 secondaryResultGradientTensor:v33];
    goto LABEL_90;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v33 = [v194 computeEngine];
    v80 = [v37 deviceOps];
    v81 = [v37 sourceGradientTensors];
    v82 = [v81 objectAtIndexedSubscript:0];
    v83 = [v37 resultGradientTensors];
    [v33 dispatchGradientConcatLayer:v80 sourceGradientTensor:v82 resultGradientTensors:v83];
LABEL_90:

LABEL_91:
    goto LABEL_92;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v173 = v46;
    v176 = a2;
    v99 = [v37 intermediateGradientTensors];
    v100 = [v99 count];

    if (v100)
    {
      v101 = 0;
      do
      {
        v102 = [v37 intermediateGradientTensors];
        v103 = [v102 objectAtIndexedSubscript:v101];

        v104 = [v37 sourceGradientTensors];
        v105 = [v104 count];

        if (v105)
        {
          v106 = 0;
          while (1)
          {
            v107 = [v37 sourceGradientTensors];
            v108 = [v107 objectAtIndexedSubscript:v106];
            v109 = [v108 splitOffset];
            v110 = [v103 splitOffset];

            if (v109 == v110)
            {
              break;
            }

            ++v106;
            v111 = [v37 sourceGradientTensors];
            v112 = [v111 count];

            if (v106 >= v112)
            {
              goto LABEL_81;
            }
          }

          v113 = [v194 computeEngine];
          v183 = [v37 intermediateSumLayer];
          v114 = [v183 deviceOps];
          v179 = [v37 sourceGradientTensors];
          v115 = [v179 objectAtIndexedSubscript:v106];
          v116 = [v37 sourceGradientTensors];
          v117 = [v116 objectAtIndexedSubscript:v106];
          LOBYTE(v168) = 0;
          [v113 dispatchForwardLayer:v114 sourceTensor:v115 secondaryTensor:v103 tertiaryTensor:0 resultTensor:v117 resultStateIsTemporary:0 forTraining:v168];
        }

LABEL_81:

        ++v101;
        v118 = [v37 intermediateGradientTensors];
        v119 = [v118 count];
      }

      while (v101 < v119);
    }

    v33 = [v194 computeEngine];
    v80 = [v37 deviceOps];
    v81 = [v37 sourceGradientTensors];
    v46 = v173;
    [v33 dispatchGradientSplitLayer:v80 sourceGradientTensors:v81 resultGradientTensor:v173];
    goto LABEL_86;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v120 = v37;
    v121 = [v120 lossLabels];
    [v121 descriptor];
    v122 = v176 = a2;
    v123 = [v122 stride];
    v124 = [v123 objectAtIndexedSubscript:0];
    v184 = [v124 unsignedIntegerValue] >> 2;

    v33 = [v194 computeEngine];
    v180 = [v120 deviceOps];
    v81 = [v120 sourceGradientTensors];
    v125 = [v81 objectAtIndexedSubscript:0];
    v126 = [v120 lossLabels];
    [v120 weights];
    v128 = v127 = v46;

    [v33 dispatchGradientLossLayer:v180 sourceGradientTensor:v125 labelsTensor:v126 labelsTensorStride:v184 weightsTensor:v128 resultGradientTensor:v127];
    v46 = v127;

    v80 = v180;
LABEL_85:

LABEL_86:
    a2 = v176;
LABEL_92:
    a5 = v191;
    goto LABEL_93;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v33 = [v194 computeEngine];
    v80 = [v37 deviceOps];
    v81 = [v37 sourceGradientTensors];
    v82 = [v37 resultGradientTensors];
    [v33 dispatchRNNGradientLayer:v80 sourceGradientTensors:v81 resultGradientTensors:v82];
    goto LABEL_91;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v33 = [v194 computeEngine];
    v80 = [v37 deviceOps];
    v81 = [v37 sourceGradientTensors];
    v82 = [v81 objectAtIndexedSubscript:0];
    v83 = [v37 resultGradientTensors];
    [v33 dispatchGradientMHALayer:v80 sourceGradientTensor:v82 resultGradientTensors:v83 resultStateIsTemporary:v187];
    goto LABEL_90;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v33 = [v194 computeEngine];
    v80 = [v37 deviceOps];
    v81 = [v37 sourceGradientTensors];
    v82 = [v81 objectAtIndexedSubscript:0];
    v83 = [v37 resultGradientTensors];
    [v33 dispatchGradientMatMulLayer:v80 sourceGradientTensor:v82 resultGradientTensors:v83];
    goto LABEL_90;
  }

  objc_opt_class();
  a5 = v191;
  if (objc_opt_isKindOfClass())
  {
    v33 = [v194 computeEngine];
    v80 = [v37 deviceOps];
    v81 = [v37 sourceGradientTensors];
    v147 = [v81 objectAtIndexedSubscript:0];
    [v33 dispatchGradientSliceLayer:v80 sourceGradientTensor:v147 resultGradientTensor:v46];
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
          v130 = [v37 deviceOps];
          v131 = [v130 objectAtIndexedSubscript:0];

          if ([v131 sourceOfForwardNeededForGradient])
          {
            v132 = [v37 sourceTensors];
            v133 = [v132 count];

            if (v133)
            {
              v134 = 0;
              do
              {
                v135 = [v37 sourceTensors];
                v136 = [v135 objectAtIndexedSubscript:v134];
                [(MLCGraph *)self freeDeviceMemoryForTensorIfSafe:v136 device:v194];

                ++v134;
                v137 = [v37 sourceTensors];
                v138 = [v137 count];
              }

              while (v134 < v138);
            }
          }

          if ([v131 resultOfForwardNeededForGradient])
          {
            v139 = [v37 resultTensors];
            v140 = [v139 count];

            if (v140)
            {
              v141 = 0;
              do
              {
                v142 = [v37 resultTensors];
                v143 = [v142 objectAtIndexedSubscript:v141];
                [(MLCGraph *)self freeDeviceMemoryForTensorIfSafe:v143 device:v194];

                ++v141;
                v144 = [v37 resultTensors];
                v145 = [v144 count];
              }

              while (v141 < v145);
            }
          }

          a2 = v177;
          a5 = v191;
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
    v33 = [v194 computeEngine];
    v80 = [v37 deviceOps];
    v81 = [v37 sourceGradientTensors];
    v147 = [v81 objectAtIndexedSubscript:0];
    [v33 dispatchGradientEmbeddingLayer:v80 sourceGradientTensor:v147];
    goto LABEL_120;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v33 = [v194 computeEngine];
    v80 = [v37 deviceOps];
    v81 = [v37 sourceGradientTensors];
    v147 = [v81 objectAtIndexedSubscript:0];
    [v33 dispatchGradientReshapeLayer:v80 sourceGradientTensor:v147 resultGradientTensor:v46];
    goto LABEL_120;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v33 = [v194 computeEngine];
      v80 = [v37 deviceOps];
      v81 = [v37 sourceGradientTensors];
      v147 = [v81 objectAtIndexedSubscript:0];
      [v33 dispatchGradientFullyConnectedLayer:v80 sourceGradientTensor:v147 resultGradientTensor:v46 resultStateIsTemporary:v187];
      goto LABEL_120;
    }

    v176 = a2;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v33 = [v194 computeEngine];
      v80 = [v37 deviceOps];
      v81 = [v37 sourceTensors];
      v125 = [v81 objectAtIndexedSubscript:0];
      v186 = [v37 sourceGradientTensors];
      v152 = [v186 objectAtIndexedSubscript:0];
      v197[0] = v46;
      v181 = [v37 resultGradientTensors];
      [v181 objectAtIndexedSubscript:2];
      v153 = v174 = v46;
      v197[1] = v153;
      v154 = [MEMORY[0x277CBEA60] arrayWithObjects:v197 count:2];
      [v33 dispatchGradientSelectLayer:v80 conditionTensor:v125 sourceGradientTensor:v152 resultGradientTensors:v154];

      v46 = v174;
      goto LABEL_85;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v33 = [v194 computeEngine];
      v80 = [v37 deviceOps];
      v81 = [v37 sourceGradientTensors];
      v185 = [v81 objectAtIndexedSubscript:0];
      v196[0] = v185;
      v149 = [v37 sourceTensors];
      v155 = [v149 objectAtIndexedSubscript:1];
      v196[1] = v155;
      v156 = [MEMORY[0x277CBEA60] arrayWithObjects:v196 count:2];
      [v33 dispatchForwardGatherLayer:v80 sourceTensors:v156 resultTensor:v46 forTraining:1];
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v157 = [v37 fusedLayers];
          if ([v157 count])
          {
            v158 = [v37 fusedLayers];
            v159 = [v158 objectAtIndexedSubscript:0];
            objc_opt_class();
            v160 = objc_opt_isKindOfClass();

            if (v160)
            {
              v161 = [v194 computeEngine];
              v162 = [v37 deviceOps];
              v163 = [v37 sourceGradientTensors];
              v164 = [v163 objectAtIndexedSubscript:0];
              [v161 dispatchGradientLayer:v162 sourceGradientTensor:v164 resultGradientTensor:v46];

              v33 = [v194 computeEngine];
              v80 = [v37 resultGradientTensors];
              v81 = [v80 objectAtIndexedSubscript:1];
              [v33 shareDeviceMemoryWithResultTensor:v81 sourceTensor:v46];
              goto LABEL_86;
            }
          }

          else
          {
          }
        }

        v33 = [v194 computeEngine];
        v80 = [v37 deviceOps];
        v81 = [v37 sourceGradientTensors];
        v165 = [v81 objectAtIndexedSubscript:0];
        [v33 dispatchGradientLayer:v80 sourceGradientTensor:v165 resultGradientTensor:v46];

        goto LABEL_86;
      }

      v33 = [v194 computeEngine];
      v80 = [v37 deviceOps];
      v81 = [v37 sourceGradientTensors];
      v185 = [v81 objectAtIndexedSubscript:0];
      v195[0] = v185;
      v149 = [v37 sourceTensors];
      v155 = [v149 objectAtIndexedSubscript:1];
      v195[1] = v155;
      v195[2] = v46;
      v156 = [MEMORY[0x277CBEA60] arrayWithObjects:v195 count:3];
      [v33 dispatchForwardScatterLayer:v80 sourceTensors:v156 resultTensor:v46 forTraining:1];
    }

LABEL_125:
    goto LABEL_86;
  }

  v176 = a2;
  v33 = v37;
  v148 = [v33 reductionType];
  if (v148 > 9 || ((1 << v148) & 0x360) == 0)
  {
    v80 = [v194 computeEngine];
    v81 = [v33 deviceOps];
    v185 = [v33 sourceGradientTensors];
    v149 = [v185 objectAtIndexedSubscript:0];
    v150 = [v33 reductionType];
    v151 = [v33 dimensions];
    [v80 dispatchGradientReduceLayer:v81 sourceGradientTensor:v149 resultGradientTensor:v46 reductionType:v150 reduceDimensions:v151];

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

- (unint64_t)layerIndexToStoreSummedGradientsForTensor:(id)a3
{
  v3 = a3;
  v4 = [v3 childLayers];
  v5 = [v4 count];

  v6 = [v3 childLayers];
  v7 = [v6 count];

  if (v7)
  {
    v8 = 0;
    while (1)
    {
      v9 = [v3 childLayers];
      v10 = [v9 objectAtIndexedSubscript:v8];
      v11 = [v10 isTrainable];

      if (v11)
      {
        break;
      }

      ++v8;
      v12 = [v3 childLayers];
      v13 = [v12 count];

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

- (void)executeOptimizerUpdateWithExecutionOptions:(unint64_t)a3
{
  v3 = a3;
  v254 = *MEMORY[0x277D85DE8];
  v5 = objc_autoreleasePoolPush();
  v6 = [(MLCTrainingGraph *)self optimizer];

  if (v6)
  {
    [(MLCTrainingGraph *)self allocateOptimizerDataForGraph];
    v7 = [(MLCTrainingGraph *)self optimizer];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    v8 = [(MLCTrainingGraph *)self optimizer];
    objc_opt_class();
    v214 = objc_opt_isKindOfClass();

    v9 = 0x278A68000uLL;
    if ((v3 & 4) != 0)
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

    v14 = [(MLCGraph *)self device];
    v15 = [v14 type] == 0;

    v219 = v10;
    if ((v15 & (v3 >> 4)) != 0)
    {
      v16 = v10;
    }

    else
    {
      v16 = 0;
    }

    v17 = [(MLCTrainingGraph *)self optimizerUpdateLayerList];
    v18 = [v17 count];

    v240 = self;
    if (v18)
    {
      v235 = 0;
      v19 = 0;
      spid = v16;
      v239 = v16 - 1;
      while (1)
      {
        v20 = v19;
        v21 = [(MLCTrainingGraph *)self optimizerUpdateLayerList];
        v22 = v18 - 1;
        v23 = [v21 objectAtIndexedSubscript:v18 - 1];

        v243 = v23;
        v19 = [v23 device];

        v24 = [*(v9 + 3024) execution];
        v25 = v24;
        if (v239 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
        {
          v26 = objc_opt_class();
          v27 = NSStringFromClass(v26);
          v28 = [v23 layerID];
          *buf = 138543618;
          v251 = v27;
          v252 = 2050;
          v253 = v28;
          _os_signpost_emit_with_name_impl(&dword_238C1D000, v25, OS_SIGNPOST_INTERVAL_BEGIN, spid, "ExecuteOptimizerUpdate -- PerLayer", "%{public,name=MLCLayerType}@ %{public,name=LayerID}lu", buf, 0x16u);
        }

        v29 = [(MLCTrainingGraph *)self optimizerUpdateLayerList];
        v30 = [v29 count];

        if (v18 == v30)
        {
          v31 = [v19 computeEngine];
          v32 = [(MLCTrainingGraph *)self optimizer];
          v33 = [v32 deviceOps];
          v34 = [(MLCTrainingGraph *)self optimizer];
          [v34 learningRate];
          [v31 setOptimizerLearningRate:v33 learningRate:?];

          v235 = 1;
        }

        if ((isKindOfClass | v214))
        {
          v35 = [(MLCTrainingGraph *)self optimizer];
          v36 = [v19 computeEngine];
          v37 = [(MLCTrainingGraph *)self optimizer];
          v38 = [v37 deviceOps];
          [v36 setOptimizerTimeStep:v38 timeStep:{objc_msgSend(v35, "timeStep")}];
        }

        objc_opt_class();
        v241 = v22;
        if (objc_opt_isKindOfClass())
        {
          v39 = v23;
          v40 = [v39 weights];
          v41 = [v39 biases];
          v42 = [v40 childLayers];
          v43 = [v42 count];

          if (v43 < 2)
          {
            goto LABEL_27;
          }

          v44 = [(MLCTrainingGraph *)v240 layerIndexToStoreSummedGradientsForTensor:v40];
          v45 = [v40 childLayers];
          if (v44 == [v45 count])
          {
            goto LABEL_31;
          }

          v46 = [v40 childLayers];
          [v46 objectAtIndexedSubscript:v44];
          v48 = v47 = v41;

          v49 = v48 == v39;
          v41 = v47;
          if (v49)
          {
            v50 = [v19 computeEngine];
            [v50 sumSharedGradientsForConvolutionLayerTensorParameter:v40 layerIndexForSummedGradients:v44];

            if (v47)
            {
              v51 = [v19 computeEngine];
              [v51 sumSharedGradientsForConvolutionLayerTensorParameter:v47 layerIndexForSummedGradients:v44];
            }

LABEL_27:
            v52 = v19;
            v53 = [v19 computeEngine];
            v54 = [v39 deviceOps];
            v55 = [(MLCTrainingGraph *)v240 optimizer];
            v56 = [v55 deviceOps];
            [v39 weightsParameter];
            objc = v52;
            v221 = v40;
            v58 = v57 = v41;
            v59 = [v39 biasesParameter];
            v60 = [(MLCTrainingGraph *)v240 optimizer];
            v61 = [v60 oneStepOptimizerBuffers];
            v237 = v54;
            v62 = v54;
            v63 = v56;
            [v53 updateConvolutionLayer:v62 optimizer:v56 weightsParameter:v58 biasesParameter:v59 arrayOfParams:v61];

            v9 = 0x278A68000;
            v64 = v57;
            v65 = v221;
            v19 = objc;
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
              v69 = self;
              v39 = v23;
              v70 = [v39 beta];
              v71 = [(MLCTrainingGraph *)v69 checkAndSumIfSharedParameterUpdateForNormalizationLayerTensor:v70 layer:v39 device:v19 isBetaTensor:1];

              v72 = [v39 gamma];
              v73 = [(MLCTrainingGraph *)v69 checkAndSumIfSharedParameterUpdateForNormalizationLayerTensor:v72 layer:v39 device:v19 isBetaTensor:0];

              v65 = [v19 computeEngine];
              v74 = [v39 deviceOps];
              v222 = [(MLCTrainingGraph *)v69 optimizer];
              v237 = [v222 deviceOps];
              if (v71)
              {
                v217 = 0;
                v75 = v216;
              }

              else
              {
                v75 = [v39 betaParameter];
                v217 = v75;
              }

              v218 = v71;
              obja = v75;
              v98 = v73;
              if (v73)
              {
                v99 = 0;
              }

              else
              {
                v99 = [v39 gammaParameter];
                v213 = v99;
              }

              v108 = [v39 mean];
              v109 = [v39 variance];
              v110 = [(MLCTrainingGraph *)v240 optimizer];
              v111 = [v110 oneStepOptimizerBuffers];
              [v65 updateBatchNormalizationLayer:v74 optimizer:v237 betaParameter:v217 gammaParameter:v99 meanTensor:v108 varianceTensor:v109 arrayOfParams:v111];

              if (!v98)
              {
              }

              v55 = obja;
              v216 = obja;
              v9 = 0x278A68000;
              v64 = v74;
              v53 = v222;
              if (!v218)
              {
                goto LABEL_48;
              }

              goto LABEL_49;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v76 = self;
              v39 = v23;
              v77 = [v39 beta];
              v78 = [(MLCTrainingGraph *)v76 checkAndSumIfSharedParameterUpdateForNormalizationLayerTensor:v77 layer:v39 device:v19 isBetaTensor:1];

              v79 = [v39 gamma];
              v80 = [(MLCTrainingGraph *)v76 checkAndSumIfSharedParameterUpdateForNormalizationLayerTensor:v79 layer:v39 device:v19 isBetaTensor:0];

              v65 = [v19 computeEngine];
              obj = [v39 deviceOps];
              v53 = [(MLCTrainingGraph *)v76 optimizer];
              v237 = [v53 deviceOps];
              v223 = v78;
              if (v78)
              {
                v81 = 0;
                v82 = v211;
                if (!v80)
                {
                  goto LABEL_39;
                }

LABEL_68:
                v83 = 0;
              }

              else
              {
                v81 = [v39 betaParameter];
                v82 = v81;
                if (v80)
                {
                  goto LABEL_68;
                }

LABEL_39:
                v83 = [v39 gammaParameter];
                v210 = v83;
              }

              v112 = [(MLCTrainingGraph *)v240 optimizer];
              v113 = [v112 oneStepOptimizerBuffers];
              [v65 updateInstanceNormalizationLayer:obj optimizer:v237 betaParameter:v81 gammaParameter:v83 arrayOfParams:v113];

              if (!v80)
              {
              }

              v55 = v82;
              v211 = v82;
LABEL_88:
              v9 = 0x278A68000;
              v64 = obj;
              if (!v223)
              {
                goto LABEL_48;
              }

              goto LABEL_49;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v100 = self;
              v39 = v23;
              v101 = [v39 beta];
              v102 = [(MLCTrainingGraph *)v100 checkAndSumIfSharedParameterUpdateForNormalizationLayerTensor:v101 layer:v39 device:v19 isBetaTensor:1];

              v103 = [v39 gamma];
              v104 = [(MLCTrainingGraph *)v100 checkAndSumIfSharedParameterUpdateForNormalizationLayerTensor:v103 layer:v39 device:v19 isBetaTensor:0];

              v65 = [v19 computeEngine];
              obj = [v39 deviceOps];
              v53 = [(MLCTrainingGraph *)v100 optimizer];
              v237 = [v53 deviceOps];
              v223 = v102;
              if (v102)
              {
                v105 = 0;
                v106 = v209;
                if (!v104)
                {
                  goto LABEL_61;
                }

LABEL_77:
                v107 = 0;
              }

              else
              {
                v105 = [v39 betaParameter];
                v106 = v105;
                if (v104)
                {
                  goto LABEL_77;
                }

LABEL_61:
                v107 = [v39 gammaParameter];
                v208 = v107;
              }

              v122 = [(MLCTrainingGraph *)v240 optimizer];
              v123 = [v122 oneStepOptimizerBuffers];
              [v65 updateLayerNormalizationLayer:obj optimizer:v237 betaParameter:v105 gammaParameter:v107 arrayOfParams:v123];

              if (!v104)
              {
              }

              v55 = v106;
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
                [v19 computeEngine];
                v39 = v125 = self;
                v65 = [v124 deviceOps];
                v64 = [(MLCTrainingGraph *)v125 optimizer];
                v53 = [v64 deviceOps];
                v126 = [v124 inputWeightsParameters];
                obje = [v124 hiddenWeightsParameters];
                v63 = [v124 biasesParameters];

                v92 = [(MLCTrainingGraph *)v125 optimizer];
                v93 = [v92 oneStepOptimizerBuffers];
                v237 = v126;
                v127 = v126;
                v55 = obje;
                [v39 updateRNNLayer:v65 optimizer:v53 inputWeightsParameter:v127 hiddenWeightsParameter:obje biasesParameter:v63 arrayOfParams:v93];
                goto LABEL_45;
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                [v19 computeEngine];
                v39 = v130 = self;
                v65 = [v23 deviceOps];
                v64 = [(MLCTrainingGraph *)v130 optimizer];
                v53 = [v64 deviceOps];
                v131 = [v23 weightsParameters];
                v132 = [v23 biasesParameters];
                v133 = [(MLCTrainingGraph *)v130 optimizer];
                v92 = [v133 oneStepOptimizerBuffers];
                v237 = v131;
                v134 = v131;
                v55 = v132;
                v63 = v133;
                [v39 updateMultiheadAttentionLayer:v65 optimizer:v53 weightsParameter:v134 biasesParameter:v55 arrayOfParams:v92];
                goto LABEL_46;
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v39 = [v19 computeEngine];
                v65 = [v23 deviceOps];
                v64 = [v23 weightsParameter];
                v53 = [(MLCTrainingGraph *)v240 optimizer];
                v135 = [v53 deviceOps];
                v136 = [(MLCTrainingGraph *)v240 optimizer];
                v137 = [v136 oneStepOptimizerBuffers];
                v237 = v135;
                v138 = v135;
                v55 = v136;
                v63 = v137;
                [v39 updateEmbeddingLayer:v65 weightsParameter:v64 optimizer:v138 arrayOfParams:v137];
                goto LABEL_47;
              }

              goto LABEL_50;
            }

            v114 = self;
            v39 = v23;
            v115 = [v39 beta];
            v116 = [(MLCTrainingGraph *)v114 checkAndSumIfSharedParameterUpdateForNormalizationLayerTensor:v115 layer:v39 device:v19 isBetaTensor:1];

            v117 = [v39 gamma];
            v118 = [(MLCTrainingGraph *)v114 checkAndSumIfSharedParameterUpdateForNormalizationLayerTensor:v117 layer:v39 device:v19 isBetaTensor:0];

            v65 = [v19 computeEngine];
            obj = [v39 deviceOps];
            v53 = [(MLCTrainingGraph *)v114 optimizer];
            v237 = [v53 deviceOps];
            v223 = v116;
            if (v116)
            {
              v119 = 0;
              v120 = v207;
              if (!v118)
              {
                goto LABEL_75;
              }

LABEL_84:
              v121 = 0;
            }

            else
            {
              v119 = [v39 betaParameter];
              v120 = v119;
              if (v118)
              {
                goto LABEL_84;
              }

LABEL_75:
              v121 = [v39 gammaParameter];
              v206 = v121;
            }

            v128 = [(MLCTrainingGraph *)v240 optimizer];
            v129 = [v128 oneStepOptimizerBuffers];
            [v65 updateGroupNormalizationLayer:obj optimizer:v237 betaParameter:v119 gammaParameter:v121 arrayOfParams:v129];

            if (!v118)
            {
            }

            v55 = v120;
            v207 = v120;
            goto LABEL_88;
          }

          v39 = v23;
          v40 = [v39 weights];
          v41 = [v39 biases];
          v66 = [v40 childLayers];
          v67 = [v66 count];

          if (v67 < 2)
          {
            goto LABEL_44;
          }

          v68 = [(MLCTrainingGraph *)v240 layerIndexToStoreSummedGradientsForTensor:v40];
          v45 = [v40 childLayers];
          if (v68 == [v45 count])
          {
LABEL_31:

            goto LABEL_32;
          }

          v84 = [v40 childLayers];
          [v84 objectAtIndexedSubscript:v68];
          v86 = v85 = v41;

          v49 = v86 == v39;
          v41 = v85;
          if (v49)
          {
            v87 = [v19 computeEngine];
            [v87 sumSharedGradientsForConvolutionLayerTensorParameter:v40 layerIndexForSummedGradients:v68];

            if (v85)
            {
              v88 = [v19 computeEngine];
              [v88 sumSharedGradientsForConvolutionLayerTensorParameter:v85 layerIndexForSummedGradients:v68];
            }

LABEL_44:
            v53 = [v19 computeEngine];
            v89 = [v39 deviceOps];
            objd = v19;
            v224 = v40;
            v90 = v41;
            v91 = [(MLCTrainingGraph *)v240 optimizer];
            v63 = [v91 deviceOps];
            v92 = [v39 weightsParameter];
            v93 = [v39 biasesParameter];
            v94 = [(MLCTrainingGraph *)v240 optimizer];
            v95 = [v94 oneStepOptimizerBuffers];
            v237 = v89;
            v96 = v89;
            v55 = v91;
            [v53 updateFullyConnectedLayer:v96 optimizer:v63 weightsParameter:v92 biasesParameter:v93 arrayOfParams:v95];

            v9 = 0x278A68000uLL;
            v64 = v90;
            v65 = v224;
            v19 = objd;
LABEL_45:

LABEL_46:
LABEL_47:

LABEL_48:
LABEL_49:

            v22 = v241;
LABEL_50:
            v97 = [*(v9 + 3024) execution];
            v39 = v97;
            if (v239 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v97))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&dword_238C1D000, v39, OS_SIGNPOST_INTERVAL_END, spid, "ExecuteOptimizerUpdate -- PerLayer", "", buf, 2u);
            }

            goto LABEL_53;
          }
        }

LABEL_32:

        v22 = v241;
LABEL_53:

        v18 = v22;
        self = v240;
        if (!v22)
        {
          goto LABEL_95;
        }
      }
    }

    v19 = 0;
    v235 = 0;
LABEL_95:
    v139 = [(MLCTrainingGraph *)self optimizerParameterList];
    v140 = [v139 count];

    if (v140)
    {
      v141 = 0;
      do
      {
        v142 = [(MLCTrainingGraph *)self optimizerParameterList];
        v143 = [v142 objectAtIndexedSubscript:v141];

        v144 = [*(v9 + 3024) execution];
        v145 = v144;
        if (v227 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v144))
        {
          v146 = [v143 tensor];
          v147 = [v146 tensorID];
          v148 = [v143 tensor];
          v149 = [v148 label];
          *buf = 134349314;
          v251 = v147;
          self = v240;
          v252 = 2114;
          v253 = v149;
          _os_signpost_emit_with_name_impl(&dword_238C1D000, v145, OS_SIGNPOST_INTERVAL_BEGIN, v219, "TensorParameterOptimizerUpdate", "Tensor parameter (%{public,name=TensorID}lu, %{public,name=TensorLabel}@)", buf, 0x16u);

          v9 = 0x278A68000;
        }

        v150 = [v143 device];

        if ([v143 isUpdatable])
        {
          v225 = v150;
          if ((v235 & 1) == 0)
          {
            v151 = [v150 computeEngine];
            v152 = [(MLCTrainingGraph *)self optimizer];
            v153 = [v152 deviceOps];
            v154 = [(MLCTrainingGraph *)self optimizer];
            [v154 learningRate];
            [v151 setOptimizerLearningRate:v153 learningRate:?];

            v150 = v225;
          }

          if ((isKindOfClass | v214))
          {
            v155 = [(MLCTrainingGraph *)self optimizer];
            v156 = [v150 computeEngine];
            v157 = [(MLCTrainingGraph *)self optimizer];
            v158 = [v157 deviceOps];
            [v156 setOptimizerTimeStep:v158 timeStep:{objc_msgSend(v155, "timeStep")}];

            v150 = v225;
          }

          v159 = [v150 computeEngine];
          v160 = [(MLCTrainingGraph *)self optimizer];
          v161 = [v160 deviceOps];
          [(MLCTrainingGraph *)self rootSourceGradientTensor];
          v163 = v162 = self;
          v164 = [v143 tensor];
          v165 = [v163 objectAtIndexedSubscript:{objc_msgSend(v164, "rootSourceGradientTensorIndex") - 1}];
          v166 = [(MLCTrainingGraph *)v162 optimizer];
          v167 = [v166 oneStepOptimizerBuffers];
          [v159 updateTensorParameter:v143 optimizer:v161 gradient:v165 arrayOfParams:v167];

          v9 = 0x278A68000uLL;
          v168 = +[MLCLog execution];
          v169 = v168;
          if (v227 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v168))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_238C1D000, v169, OS_SIGNPOST_INTERVAL_END, v219, "TensorParameterOptimizerUpdate", "", buf, 2u);
          }

          v235 = 1;
          self = v240;
          v150 = v225;
        }

        ++v141;
        v170 = [(MLCTrainingGraph *)self optimizerParameterList];
        v171 = [v170 count];

        v19 = v150;
      }

      while (v141 < v171);
    }

    else
    {
      v150 = v19;
    }

    v172 = [(MLCTrainingGraph *)self optimizer];
    v173 = [v172 oneStepOptimizerBuffers];

    if (v173)
    {
      v226 = v150;
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
          v175 = [v242 computeEngine];
          v176 = [(MLCTrainingGraph *)self optimizer];
          v177 = [v176 deviceOps];
          v178 = [(MLCTrainingGraph *)self optimizer];
          v179 = [v178 oneStepOptimizerBuffers];
          [v175 updateAllParametersWithOptimizer:v177 arrayOfParameters:v179];

          v180 = [(MLCTrainingGraph *)self optimizerUpdateLayerList];
          v181 = [v180 count];

          if (v181)
          {
            for (i = v181 - 1; i != -1; --i)
            {
              v183 = [(MLCTrainingGraph *)self optimizerUpdateLayerList];
              v184 = [v183 objectAtIndexedSubscript:i];

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v185 = v184;
                v186 = [v242 computeEngine];
                v187 = [v185 deviceOps];
                v188 = [(MLCTrainingGraph *)self optimizer];
                v189 = [v188 deviceOps];
                v190 = [v185 inputWeightsParameters];
                [v185 hiddenWeightsParameters];
                v191 = v244 = v184;
                v192 = [v185 biasesParameters];

                v193 = [(MLCTrainingGraph *)self optimizer];
                v194 = [v193 oneStepOptimizerBuffers];
                [v186 restoreRNNParamsWithDeviceOps:v187 optimizer:v189 inputWeightsParameter:v190 hiddenWeightsParameter:v191 biasesParameter:v192 arrayOfParams:v194];

                self = v240;
                v184 = v244;
              }

              else
              {
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  goto LABEL_131;
                }

                v195 = [v242 computeEngine];
                v196 = objc_opt_respondsToSelector();

                if ((v196 & 1) == 0)
                {
                  goto LABEL_131;
                }

                v186 = v184;
                v187 = [v186 weights];
                v197 = [v187 childLayers];
                v198 = [v197 count];

                if (v198 >= 2)
                {
                  v199 = [(MLCTrainingGraph *)self layerIndexToStoreSummedGradientsForTensor:v187];
                  v188 = [v187 childLayers];
                  if (v199 == [v188 count])
                  {
                    goto LABEL_123;
                  }

                  v200 = [v187 childLayers];
                  v201 = [v200 objectAtIndexedSubscript:v199];

                  if (v201 != v186)
                  {
                    goto LABEL_124;
                  }
                }

                v188 = [v242 computeEngine];
                v189 = [v186 deviceOps];
                [v188 restoreConvolutionParamsWithDeviceOps:v189];
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
          v150 = v226;
          break;
        }
      }
    }

    if ([(MLCTrainingGraph *)self updateOptimizerTimeStep]&& ((isKindOfClass | v214) & 1) != 0)
    {
      v202 = [(MLCTrainingGraph *)self optimizer];
      [v202 setTimeStep:{objc_msgSend(v202, "timeStep") + 1}];
    }

    v203 = [*(v9 + 3024) execution];
    v204 = v203;
    v5 = v212;
    if (v227 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v203))
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

  v15 = [(MLCGraph *)self graphLayerList];
  v16 = [v15 count];

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

  v17 = [(MLCGraph *)self staticBatchSizeInGraph];
  if (batchSize && !v17)
  {
    v18 = +[MLCLog framework];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [MLCTrainingGraph executeForwardWithBatchSize:a2 options:? outputsData:? completionHandler:?];
    }

    v19 = NSStringFromSelector(a2);
    v20 = @"batchSize provided must be 0 since batch size changes in graph. we will use batch size specified with tensors for layers in graph";
LABEL_21:
    v23 = [MLCErrors invalidStateErrorForMethod:v19 description:v20];

    if (v12)
    {
      v12[2](v12, 0, v23, 0.0);
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

  v27 = [(MLCGraph *)self graphLayerList];
  v28 = [v27 objectAtIndexedSubscript:0];
  v23 = [v28 device];

  v29 = [v23 computeEngine];
  LOBYTE(v28) = objc_opt_respondsToSelector();

  if (v28)
  {
    v30 = [v23 computeEngine];
    [v30 selectDevicesWithBatchSize:batchSize calledfromBindAndWrite:0];
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

  v31 = [(MLCGraph *)self graphLayerList];
  v32 = [(MLCGraph *)self graphLayerList];
  v33 = [v31 objectAtIndexedSubscript:{objc_msgSend(v32, "count") - 1}];

  v34 = [v33 resultTensors];
  v35 = [v34 objectAtIndexedSubscript:0];

  v36 = [(MLCGraph *)self graphLayerList];
  -[MLCTrainingGraph executeForwardToLayerIndex:resultTensor:resultStateIsTemporary:batchSize:forTraining:executionOptions:](self, "executeForwardToLayerIndex:resultTensor:resultStateIsTemporary:batchSize:forTraining:executionOptions:", [v36 count], v35, 0, batchSize, (options & 8) == 0, options);

  if (v35)
  {
    v37 = [v33 device];
    v38 = [v37 computeEngine];
    [v38 synchronizeTensor:v35];
  }

  [(MLCGraph *)self dispatchReadsForMultipleTensorOutputs:v11 finalTensorInGraph:0 finalResultTensor:0 batchSize:batchSize];
  v39 = [v23 computeEngine];
  v40 = v39;
  v41 = (options >> 2) & 1;
  if ((options & 2) != 0)
  {
    v42 = v44;
    [v39 commitAndWaitForCompletion:v12 enableProfiling:v41 graphExecutionTime:v44 graphResultTensor:0];
  }

  else
  {
    v42 = v44;
    [v39 commitWithCompletionHandler:v12 enableProfiling:v41 graphExecutionTime:v44 graphResultTensor:0];
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

  v15 = [(MLCGraph *)self graphLayerList];
  v16 = [v15 count];

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

  v17 = [(MLCGraph *)self staticBatchSizeInGraph];
  if (batchSize && !v17)
  {
    v18 = +[MLCLog framework];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [MLCTrainingGraph executeForwardWithBatchSize:a2 options:? outputsData:? completionHandler:?];
    }

    v19 = NSStringFromSelector(a2);
    v20 = @"batchSize provided must be 0 since batch size changes in graph. we will use batch size specified with tensors for layers in graph";
LABEL_21:
    v23 = [MLCErrors invalidStateErrorForMethod:v19 description:v20];

    if (v12)
    {
      v12[2](v12, 0, v23, 0.0);
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

  v27 = [(MLCGraph *)self graphLayerList];
  v28 = [v27 objectAtIndexedSubscript:0];
  v23 = [v28 device];

  v29 = 0;
  if ((options & 4) != 0)
  {
    *v35 = Current;
    v35[1] = 0;
    v35[2] = 0;
    v29 = [MEMORY[0x277CBEA90] dataWithBytes:v35 length:24];
  }

  [(MLCTrainingGraph *)self compileAndAllocateGradientTensorsForGraph:0];
  v30 = [(MLCGraph *)self graphLayerList];
  -[MLCTrainingGraph executeGradientFromLayerIndex:resultStateIsTemporary:batchSize:executionOptions:](self, "executeGradientFromLayerIndex:resultStateIsTemporary:batchSize:executionOptions:", [v30 count] - 1, 0, batchSize, options);

  [(MLCGraph *)self dispatchReadsForMultipleTensorOutputs:v11 finalTensorInGraph:0 finalResultTensor:0 batchSize:batchSize];
  v31 = [v23 computeEngine];
  v32 = v31;
  v33 = (options >> 2) & 1;
  if ((options & 2) != 0)
  {
    [v31 commitAndWaitForCompletion:v12 enableProfiling:v33 graphExecutionTime:v29 graphResultTensor:0];
  }

  else
  {
    [v31 commitWithCompletionHandler:v12 enableProfiling:v33 graphExecutionTime:v29 graphResultTensor:0];
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

  v10 = [(MLCGraph *)self graphLayerList];
  v11 = [v10 count];

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
      v18 = [(MLCGraph *)self graphLayerList];
      v19 = [v18 objectAtIndexedSubscript:0];
      v20 = [v19 device];

      v21 = [v20 computeEngine];
      v22 = v21;
      v23 = (options >> 2) & 1;
      if ((options & 2) != 0)
      {
        [v21 commitAndWaitForCompletion:v7 enableProfiling:v23 graphExecutionTime:v12 graphResultTensor:0];
      }

      else
      {
        [v21 commitWithCompletionHandler:v7 enableProfiling:v23 graphExecutionTime:v12 graphResultTensor:0];
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

  v21 = [(MLCGraph *)self graphLayerList];
  v22 = [v21 count];

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

  v23 = [(MLCGraph *)self allInputs];

  if (!v23)
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

  v24 = [(MLCGraph *)self allLossLabels];

  if (!v24 && v15 && ![(NSDictionary *)v15 isEqualToDictionary:MEMORY[0x277CBEC10]])
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

  v25 = [(MLCGraph *)self allLossLabelWeights];

  if (!v25 && v16 && ![(NSDictionary *)v16 isEqualToDictionary:MEMORY[0x277CBEC10]])
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

  v26 = [(MLCGraph *)self staticBatchSizeInGraph];
  if (!batchSize || v26)
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
    v40 = [(MLCGraph *)self graphLayerList];
    v41 = [v40 objectAtIndexedSubscript:0];
    v192 = [v41 device];

    v42 = [(MLCGraph *)self graphLayerList];
    v43 = [v42 count];

    v44 = [(MLCGraph *)self graphLayerList];
    v45 = [v44 count];

    while (v45-- >= 1)
    {
      v47 = [(MLCGraph *)self graphLayerList];
      v48 = [v47 objectAtIndexedSubscript:v45];
      v49 = [v48 skipLayer];

      if ((v49 & 1) == 0)
      {
        goto LABEL_48;
      }
    }

    v45 = v43;
LABEL_48:
    v50 = [(MLCGraph *)self graphLayerList];
    v51 = [v50 objectAtIndexedSubscript:v45];

    objc_opt_class();
    v203 = v51;
    isKindOfClass = objc_opt_isKindOfClass();
    v52 = [v51 resultTensors];
    v53 = [v52 objectAtIndexedSubscript:0];

    v54 = [v53 descriptor];
    v55 = [v54 tensorAllocationSizeInBytes];
    v56 = [v53 descriptor];
    size = v55 / [v56 elementCount];

    v199 = v53;
    v57 = [v53 descriptor];
    v58 = [v57 elementCount];

    v193 = v15;
    if (isKindOfClass)
    {
      v196 = [v203 resultTensors];
      v59 = [v196 objectAtIndexedSubscript:0];
      v60 = [v59 descriptor];
      v61 = [v60 shape];
      v62 = [v61 objectAtIndexedSubscript:0];
      v190 = [v62 unsignedIntegerValue];

      if (v190 == 1)
      {
        v197 = [v203 sourceTensors];
        v63 = [v197 objectAtIndexedSubscript:0];
        v64 = [v63 descriptor];
        v65 = [v64 shape];
        v66 = [v65 objectAtIndexedSubscript:0];
        v58 *= [v66 unsignedIntegerValue];
      }
    }

    v67 = [MLCTensorData dataWithBytesNoCopy:malloc_type_calloc(v58 length:size freeWhenDone:0x4042F5A7uLL), v58 * size, 1];
    v189 = [v199 descriptor];
    v191 = v67;
    v68 = [MLCTensor tensorWithDescriptor:"tensorWithDescriptor:data:" data:?];
    [v68 setMultiDeviceReductionType:{objc_msgSend(v199, "multiDeviceReductionType")}];
    v69 = [(MLCGraph *)self device];
    [v68 setDevice:v69];

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

    v180 = [(MLCGraph *)self allInputs];
    v76 = [(MLCGraph *)self graphLayerList];
    v77 = [v76 objectAtIndexedSubscript:0];
    v78 = [v77 device];
    v178 = (options >> 1) & 1;
    v79 = [(MLCGraph *)self bindAndWriteData:v200 forInputs:v180 toDevice:v78 batchSize:batchSize synchronous:v178 skipWrite:0];

    if (v79)
    {
      v80 = [v203 device];
      v16 = v194;
      if ([v80 type] == 1)
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

      v94 = [(MLCGraph *)self allLossLabels];
      v95 = [(MLCGraph *)self graphLayerList];
      v96 = [v95 objectAtIndexedSubscript:0];
      v97 = [v96 device];
      v98 = [(MLCGraph *)self bindAndWriteData:v193 forInputs:v94 toDevice:v97 batchSize:batchSize synchronous:v178 skipWrite:v181 & 1];

      v68 = sizea;
      v16 = v194;

      v75 = v183;
      if (!v98)
      {
        v109 = MEMORY[0x277CCACA8];
        v110 = [(MLCGraph *)self allLossLabels];
        v87 = [v109 stringWithFormat:@"loss label name missing from loss labels specified at compile time allLossLabels=%@", v110];

        v111 = +[MLCLog framework];
        if (os_log_type_enabled(v111, OS_LOG_TYPE_ERROR))
        {
          [MLCTrainingGraph executeWithInputsData:lossLabelsData:lossLabelWeightsData:outputsData:batchSize:options:completionHandler:];
        }

        v89 = v17;

        v112 = NSStringFromSelector(a2);
        v91 = [MLCErrors invalidInputErrorForMethod:v112 description:v87];

        v14 = v200;
        v36 = v192;
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
        *(&buf + 4) = v87;
      }

      else
      {
LABEL_140:
        if (!v16)
        {
          goto LABEL_83;
        }

        v99 = v16;
        v100 = [(MLCGraph *)self allLossLabelWeights];
        v175 = [(MLCGraph *)self graphLayerList];
        v101 = [v175 objectAtIndexedSubscript:0];
        v102 = [v101 device];
        LOBYTE(v99) = [(MLCGraph *)self bindAndWriteData:v99 forInputs:v100 toDevice:v102 batchSize:batchSize synchronous:v178 skipWrite:v181 & 1];

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
            v104 = [(MLCGraph *)self allLossLabels];
            v105 = [v104 allKeys];

            if ([v105 count])
            {
              v106 = [v105 objectAtIndexedSubscript:0];
              v107 = [(MLCGraph *)self allLossLabels];
              v108 = [v107 objectForKeyedSubscript:v106];
            }

            else
            {
              v108 = 0;
            }

            v114 = [(MLCGraph *)self allLossLabelWeights];
            v115 = [v114 allKeys];

            if ([v115 count])
            {
              v116 = [v115 objectAtIndexedSubscript:0];
              v117 = [(MLCGraph *)self allLossLabelWeights];
              spida = [v117 objectForKeyedSubscript:v116];
            }

            else
            {
              spida = 0;
            }

            if (v108)
            {
              v118 = [(MLCGraph *)self graphLayerList];
              v119 = [v118 objectAtIndexedSubscript:v45];

              v120 = [v119 resultGradientTensors];
              v184 = [v120 objectAtIndexedSubscript:0];

              v176 = [v108 descriptor];
              v174 = [v176 shape];
              v121 = [v174 count];
              v122 = [v108 descriptor];
              v179 = v115;
              v182 = v105;
              v123 = v122;
              if (v121 == 1)
              {
                v124 = [v122 shape];
                v125 = [v124 objectAtIndexedSubscript:0];
                v173 = [v125 unsignedIntegerValue];
              }

              else
              {
                v124 = [v122 stride];
                v125 = [v124 objectAtIndexedSubscript:0];
                v173 = [v125 unsignedIntegerValue] >> 2;
              }

              [v119 setBatchSize:batchSize];
              v177 = [v119 device];
              [v177 computeEngine];
              v134 = v172 = v119;
              v135 = [v119 deviceOps];
              v136 = [v119 sourceTensors];
              v137 = [v136 objectAtIndexedSubscript:0];
              [v134 dispatchForwardAndGradientLossLayer:v135 sourceTensor:v137 labelsTensor:v108 labelsTensorStride:v173 weightsTensor:spida resultTensor:sizea resultGradientTensor:v184];

              v115 = v179;
              v105 = v182;
            }
          }

          v138 = [(MLCGraph *)self graphLayerList];
          v139 = [v138 objectAtIndexedSubscript:v45];
          v140 = [v139 isDebuggingEnabled];

          if (v140)
          {
            v141 = [sizea deviceMemory];
            v142 = [(MLCGraph *)self graphLayerList];
            v143 = [v142 objectAtIndexedSubscript:v45];
            v144 = [v143 resultTensors];
            v145 = [v144 objectAtIndexedSubscript:0];
            [v145 setDeviceMemory:v141];
          }

          v146 = [(MLCGraph *)self graphLayerList];
          v147 = [v146 objectAtIndexedSubscript:0];
          v148 = [v147 device];
          v149 = [v148 computeEngine];
          spidb = (options >> 2) & 1;
          [v149 commitWithProfiling:spidb graphExecutionTime:v198];

          if ((options & 8) == 0)
          {
            v185 = v17;
            v150 = [(MLCTrainingGraph *)self optimizer];

            if (v150)
            {
              v151 = [(MLCTrainingGraph *)self optimizerUpdateLayerList];
              v152 = [v151 count];

              if (v152)
              {
                v153 = 0;
                do
                {
                  v154 = [(MLCTrainingGraph *)self optimizerUpdateLayerList];
                  v155 = [v154 objectAtIndexedSubscript:v153];

                  v156 = [v155 device];
                  v157 = [v156 computeEngine];
                  v158 = [v155 deviceOps];
                  [v157 incrementReadCountForGradientState:v158 increment:1];

                  ++v153;
                  v159 = [(MLCTrainingGraph *)self optimizerUpdateLayerList];
                  v160 = [v159 count];
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
            v162 = [v203 device];
            v163 = [v162 computeEngine];
            [v163 synchronizeTensor:sizea];

            v164 = [v203 device];
            v165 = [v164 computeEngine];
            v166 = [v203 resultTensors];
            v167 = [v166 objectAtIndexedSubscript:0];
            [v165 shareDeviceMemoryWithResultTensor:v167 sourceTensor:sizea];

            v132 = sizea;
          }

          v168 = [v203 resultTensors];
          v169 = [v168 objectAtIndexedSubscript:0];
          [(MLCGraph *)self dispatchReadsForMultipleTensorOutputs:v17 finalTensorInGraph:v169 finalResultTensor:v132 batchSize:batchSize];

          v14 = v200;
          if ((options & 2) != 0)
          {
            v36 = v192;
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

            v87 = [v192 computeEngine];
            v133 = v198;
            [v87 commitAndWaitForCompletion:v18 enableProfiling:spidb graphExecutionTime:v198 graphResultTensor:v132];
            v37 = 1;
          }

          else
          {
            v36 = v192;
            v87 = [v192 computeEngine];
            v133 = v198;
            [v87 commitWithCompletionHandler:v18 enableProfiling:spidb graphExecutionTime:v198 graphResultTensor:v132];
            v37 = 1;
            v15 = v193;
          }

          v16 = v194;
          goto LABEL_137;
        }

        v126 = v75;
        v127 = MEMORY[0x277CCACA8];
        v128 = [(MLCGraph *)self allLossLabelWeights];
        v87 = [v127 stringWithFormat:@"loss label weight name missing from loss label weights specified at compile time allLossLabelWeights=%@", v128];

        v129 = +[MLCLog framework];
        if (os_log_type_enabled(v129, OS_LOG_TYPE_ERROR))
        {
          [MLCTrainingGraph executeWithInputsData:lossLabelsData:lossLabelWeightsData:outputsData:batchSize:options:completionHandler:];
        }

        v89 = v17;

        v130 = NSStringFromSelector(a2);
        v91 = [MLCErrors invalidInputErrorForMethod:v130 description:v87];

        v14 = v200;
        v16 = v194;
        v36 = v192;
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
        *(&buf + 4) = v87;
      }
    }

    else
    {
      v85 = MEMORY[0x277CCACA8];
      v86 = [(MLCGraph *)self allInputs];
      v87 = [v85 stringWithFormat:@"input name missing from inputs specified at compile time allInputs=%@", v86];

      v88 = +[MLCLog framework];
      v16 = v194;
      if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
      {
        [MLCTrainingGraph executeWithInputsData:lossLabelsData:lossLabelWeightsData:outputsData:batchSize:options:completionHandler:];
      }

      v89 = v17;

      v90 = NSStringFromSelector(a2);
      v91 = [MLCErrors invalidInputErrorForMethod:v90 description:v87];

      v14 = v200;
      v36 = v192;
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
      *(&buf + 4) = v87;
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

- (id)resultGradientTensorsForLayer:(id)a3 summedGradientForInputTensors:(BOOL)a4
{
  v69 = a4;
  v5 = a3;
  v6 = [(MLCGraph *)self graphLayerList];
  v7 = [(MLCGraph *)self isLayerInGraphLayerList:v5 graphLayerList:v6];

  if (!v7)
  {
    v29 = +[MLCLog framework];
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      [MLCTrainingGraph resultGradientTensorsForLayer:summedGradientForInputTensors:];
    }

    goto LABEL_18;
  }

  if (([v5 isTrainable] & 1) == 0)
  {
    v29 = +[MLCLog framework];
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      [MLCTrainingGraph resultGradientTensorsForLayer:summedGradientForInputTensors:];
    }

    goto LABEL_18;
  }

  if ([v5 skipLayer])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v5 resultTensors];
      v9 = [v8 objectAtIndexedSubscript:0];
      v10 = [v9 parentLayers];
      v11 = [v10 objectAtIndexedSubscript:0];

      v12 = [v5 resultTensors];
      v13 = [v12 objectAtIndexedSubscript:0];
      v14 = v13;
      if (v11 != v5)
      {
        v15 = [v13 parentLayers];
        v16 = [v15 objectAtIndexedSubscript:0];

        v17 = [v5 resultGradientTensors];
        v18 = [v17 count];

        if (!v18)
        {
          v19 = [v5 sourceTensors];
          v20 = [v19 objectAtIndexedSubscript:0];
          v21 = [v16 sourceTensors];
          v22 = [v21 objectAtIndexedSubscript:2];

          if (v20 == v22)
          {
            v36 = [v16 resultGradientTensors];
            v37 = [v36 objectAtIndexedSubscript:2];
            v38 = [v5 resultGradientTensors];
            [v38 setObject:v37 atIndexedSubscript:0];

            v26 = [v16 sourceGradientTensors];
            v27 = v26;
            v28 = 0;
          }

          else
          {
            v23 = [v16 sourceGradientTensors];
            v24 = [v23 objectAtIndexedSubscript:0];
            v25 = [v5 resultGradientTensors];
            [v25 setObject:v24 atIndexedSubscript:0];

            v26 = [v16 resultGradientTensors];
            v27 = v26;
            v28 = 2;
          }

          v39 = [v26 objectAtIndexedSubscript:v28];
          v40 = [v5 resultGradientTensors];
          [v40 setObject:v39 atIndexedSubscript:1];
        }

        goto LABEL_25;
      }

      v30 = [v13 childLayers];
      v31 = [v30 objectAtIndexedSubscript:0];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v32 = [v31 fusedLayers];
        v33 = [v32 objectAtIndexedSubscript:0];

        if (v33 == v5)
        {
          v16 = v5;
          v5 = v31;
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
  v42 = [v5 sourceTensors];
  v43 = [v42 count];

  if (v43)
  {
    v44 = 0;
    v45 = 0;
    do
    {
      v46 = [v5 sourceTensors];
      v47 = [v46 objectAtIndexedSubscript:v44];
      v48 = [v47 computeFlags];

      if ((v48 & 8) == 0)
      {
        v49 = [v5 sourceTensors];
        v50 = [v49 objectAtIndexedSubscript:v44];
        v51 = [v50 parentLayers];
        v52 = [v51 count];

        if (v52 || !v69)
        {
          v62 = [v5 resultGradientTensors];
          v63 = [v62 count];

          if (!v63)
          {
            break;
          }

          v59 = [v5 resultGradientTensors];
          v60 = v59;
          v61 = v44;
        }

        else
        {
          v53 = [v5 sourceTensors];
          v54 = [v53 objectAtIndexedSubscript:v44];
          v55 = [v54 rootSourceGradientTensorIndexStart];
          v56 = [v5 sourceTensors];
          v57 = [v56 objectAtIndexedSubscript:v44];
          v58 = v55 + [v57 rootSourceGradientTensorCount] - 2;

          v59 = [(MLCTrainingGraph *)self rootSourceGradientTensor];
          v60 = v59;
          v61 = v58;
        }

        v64 = [v59 objectAtIndexedSubscript:v61];
        [v41 setObject:v64 atIndexedSubscript:v45];

        ++v45;
      }

      ++v44;
      v65 = [v5 sourceTensors];
      v66 = [v65 count];
    }

    while (v44 < v66);
  }

  if ([v41 count])
  {
    v67 = 0;
    do
    {
      v68 = [v41 objectAtIndexedSubscript:v67];
      if ([v5 isDebuggingEnabled])
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
  v5 = [(MLCTensor *)v4 parentLayers];
  if ([v5 count])
  {
  }

  else
  {
    v8 = [(MLCTensor *)v4 rootSourceGradientTensorIndexStart];

    if (v8)
    {
      v9 = [(MLCTensor *)v4 rootSourceGradientTensorIndexStart];
      v10 = v9 + [(MLCTensor *)v4 rootSourceGradientTensorCount]- 2;
      v11 = [(MLCTrainingGraph *)self rootSourceGradientTensor];
      v7 = [v11 objectAtIndexedSubscript:v10];

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
  v5 = [(MLCGraph *)self graphLayerList];
  LOBYTE(self) = [(MLCGraph *)self isLayerInGraphLayerList:v4 graphLayerList:v5];

  if (self)
  {
    v6 = [MEMORY[0x277CBEBF8] mutableCopy];
    v7 = [(MLCLayer *)v4 sourceGradientTensors];
    v8 = [v7 count];

    if (v8 == 1)
    {
      if ([(MLCLayer *)v4 skipLayer])
      {
        v9 = [(MLCLayer *)v4 resultTensors];
        v10 = [v9 objectAtIndexedSubscript:0];
        v11 = [v10 parentLayers];
        v12 = [v11 objectAtIndexedSubscript:0];
        v13 = [v12 sourceGradientTensors];
        v14 = [v13 objectAtIndexedSubscript:0];
        [v6 setObject:v14 atIndexedSubscript:0];
      }

      else
      {
        v9 = [(MLCLayer *)v4 sourceGradientTensors];
        v10 = [v9 objectAtIndexedSubscript:0];
        [v6 setObject:v10 atIndexedSubscript:0];
      }
    }

    else
    {
      v17 = [(MLCLayer *)v4 sourceGradientTensors];
      v18 = [v17 count];

      if (v18)
      {
        v19 = 0;
        do
        {
          v20 = [(MLCLayer *)v4 sourceGradientTensors];
          v21 = [v20 objectAtIndexedSubscript:v19];
          [v6 setObject:v21 atIndexedSubscript:v19];

          ++v19;
          v22 = [(MLCLayer *)v4 sourceGradientTensors];
          v23 = [v22 count];
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

- (id)resultTensorsForLayer:(id)a3
{
  v4 = a3;
  v5 = [(MLCGraph *)self graphLayerList];
  v8.receiver = self;
  v8.super_class = MLCTrainingGraph;
  v6 = [(MLCGraph *)&v8 resultTensorsForLayer:v4 graphLayerList:v5];

  return v6;
}

- (id)sourceTensorsForLayer:(id)a3
{
  v4 = a3;
  v5 = [(MLCGraph *)self graphLayerList];
  v8.receiver = self;
  v8.super_class = MLCTrainingGraph;
  v6 = [(MLCGraph *)&v8 sourceTensorsForLayer:v4 graphLayerList:v5];

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

  v6 = [(MLCTensor *)v5 parentLayers];
  v7 = [v6 count];

  if (!v7)
  {
    v24 = [(MLCTensor *)v5 childLayers];
    v25 = [(MLCTrainingGraph *)self dummyLayer];
    [v24 addObject:v25];

    v26 = [(MLCTensor *)v5 device];
    [(MLCTrainingGraph *)self allocateRootSourceGradientTensors:v26];

    v27 = [(MLCTrainingGraph *)self rootSourceGradientTensor];
    v22 = [v27 objectAtIndexedSubscript:{-[MLCTensor rootSourceGradientTensorIndex](v5, "rootSourceGradientTensorIndex") - 1}];

    [(MLCTensor *)v5 setRootSourceGradientTensorIndex:[(MLCTensor *)v5 rootSourceGradientTensorIndex]+ 1];
    goto LABEL_15;
  }

  v8 = [(MLCTensor *)v5 parentLayers];
  v9 = [v8 objectAtIndexedSubscript:0];

  v10 = [(MLCTensor *)v5 childLayers];
  v11 = [(MLCTrainingGraph *)self dummyLayer];
  [v10 addObject:v11];

  v12 = [(MLCTensor *)v5 childLayers];
  v13 = [v12 count];

  if (v13 == 1)
  {
    v14 = [v9 resultTensors];
    v15 = [v14 count];

    if (v15)
    {
      v16 = 0;
      while (1)
      {
        v17 = [v9 resultTensors];
        v18 = [v17 objectAtIndexedSubscript:v16];

        if (v18 == v5)
        {
          break;
        }

        ++v16;
        v19 = [v9 resultTensors];
        v20 = [v19 count];

        if (v16 >= v20)
        {
          goto LABEL_27;
        }
      }

LABEL_28:
      v34 = [v9 sourceGradientTensors];
      v30 = v34;
      v33 = v16;
      goto LABEL_29;
    }
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v29 = [v9 device];
    if (isKindOfClass)
    {
      [(MLCTrainingGraph *)self allocateGradientTensorsForMultipleChildrenOfSplitLayer:v9 tensor:v5 gradientTensorsAreTemporary:0 device:v29];

      v30 = [v9 intermediateGradientTensors];
      v31 = [v9 intermediateGradientTensors];
      v22 = [v30 objectAtIndexedSubscript:{objc_msgSend(v31, "count") - 1}];

LABEL_30:
      goto LABEL_31;
    }

    v32 = [(MLCTrainingGraph *)self allocateGradientTensorsForMultipleChildrenOfLayer:v9 gradientTensorsAreTemporary:0 device:v29];

    if (v32)
    {
      [v9 setIntermediateGradientTensorIndex:{objc_msgSend(v9, "intermediateGradientTensorIndex") + 1}];
      v30 = [v9 intermediateGradientTensors];
      v33 = [v9 intermediateGradientTensorIndex] - 1;
      v34 = v30;
LABEL_29:
      v22 = [v34 objectAtIndexedSubscript:v33];
      goto LABEL_30;
    }

    v35 = [v9 resultTensors];
    v36 = [v35 count];

    if (v36)
    {
      v16 = 0;
      do
      {
        v37 = [v9 resultTensors];
        v38 = [v37 objectAtIndexedSubscript:v16];

        if (v38 == v5)
        {
          goto LABEL_28;
        }

        ++v16;
        v39 = [v9 resultTensors];
        v40 = [v39 count];
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
      v28 = self;
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
      v10 = [v9 compilerOptions];

      if ((v10 & 4) == 0)
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
    v28 = v22;
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
      v12 = [(MLCGraph *)self device];
      v13 = [(NSArray *)v5 objectAtIndexedSubscript:v11];
      v14 = [v13 device];

      if (v12 != v14)
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
  v4 = [(MLCGraph *)self device];
  v5 = [(MLCTrainingGraph *)self optimizer];

  if (v5)
  {
    v6 = [(MLCTrainingGraph *)self optimizerUpdateLayerList];
    v7 = [v6 count];

    if (v7)
    {
      v8 = 0;
      do
      {
        v9 = [(MLCTrainingGraph *)self optimizerUpdateLayerList];
        v10 = [v9 objectAtIndexedSubscript:v8];

        if ([v10 isUpdatable])
        {
          v11 = [v4 computeEngine];
          [v11 synchronizeUpdatesForLayer:v10];
        }

        ++v8;
        v12 = [(MLCTrainingGraph *)self optimizerUpdateLayerList];
        v13 = [v12 count];
      }

      while (v8 < v13);
    }

    v14 = [(MLCTrainingGraph *)self optimizerParameterList];
    v15 = [v14 count];

    if (v15)
    {
      v16 = 0;
      do
      {
        v17 = [(MLCTrainingGraph *)self optimizerParameterList];
        v18 = [v17 objectAtIndexedSubscript:v16];

        if ([v18 isUpdatable])
        {
          v19 = [v4 computeEngine];
          v20 = [v18 tensor];
          [v19 synchronizeOptimizerUpdatesForTensor:v20];
        }

        ++v16;
        v21 = [(MLCTrainingGraph *)self optimizerParameterList];
        v22 = [v21 count];
      }

      while (v16 < v22);
    }

    v23 = [v4 computeEngine];
    [v23 commitAndWaitForCompletion:0];

    v24 = [(MLCTrainingGraph *)self optimizerUpdateLayerList];
    v25 = [v24 count];

    if (v25)
    {
      v26 = 0;
      do
      {
        v27 = [(MLCTrainingGraph *)self optimizerUpdateLayerList];
        v28 = [v27 objectAtIndexedSubscript:v26];

        if ([v28 isUpdatable])
        {
          v29 = [v4 computeEngine];
          [v29 convertUpdatesToTensorDataForLayer:v28];
        }

        ++v26;
        v30 = [(MLCTrainingGraph *)self optimizerUpdateLayerList];
        v31 = [v30 count];
      }

      while (v26 < v31);
    }

    v32 = [(MLCTrainingGraph *)self optimizerParameterList];
    v33 = [v32 count];

    if (v33)
    {
      v34 = 0;
      do
      {
        v35 = [(MLCTrainingGraph *)self optimizerParameterList];
        v36 = [v35 objectAtIndexedSubscript:v34];

        if ([v36 isUpdatable])
        {
          v37 = [v4 computeEngine];
          v38 = [v36 tensor];
          [v37 convertUpdatesToTensorDataForTensorParameters:v38];
        }

        ++v34;
        v39 = [(MLCTrainingGraph *)self optimizerParameterList];
        v40 = [v39 count];
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
  v8 = [(MLCGraph *)self graphLayerList];
  LOBYTE(self) = [(MLCGraph *)self isLayerInGraphLayerList:v7 graphLayerList:v8];

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
        v21 = [(MLCLayer *)v20 beta];

        if (v21 == v6)
        {
          v14 = [(MLCLayer *)v20 device];
          v15 = [v14 computeEngine];
          v16 = [(MLCLayer *)v20 deviceOps];
          v17 = [v15 betaGradients:v16];
          goto LABEL_22;
        }

        v22 = [(MLCLayer *)v20 gamma];

        if (v22 == v6)
        {
          v14 = [(MLCLayer *)v20 device];
          v15 = [v14 computeEngine];
          v16 = [(MLCLayer *)v20 deviceOps];
          v17 = [v15 gammaGradients:v16];
          goto LABEL_22;
        }

        goto LABEL_19;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v24 = v7;
        v25 = [(MLCLayer *)v24 weights];

        if (v25 == v6)
        {
          v26 = [(MLCLayer *)v24 descriptor];
          v27 = [v26 embeddingCount];
          v28 = [v27 unsignedIntegerValue];

          v29 = [(MLCLayer *)v24 descriptor];
          v30 = [v29 embeddingDimension];
          v31 = [v30 unsignedIntegerValue];

          v14 = [(MLCLayer *)v24 device];
          v15 = [v14 computeEngine];
          v16 = [(MLCLayer *)v24 deviceOps];
          v17 = [v15 embeddingWeightsGradients:v16 embeddingCount:v28 embeddingDimension:v31];
          goto LABEL_22;
        }

        goto LABEL_19;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v32 = v7;
        v33 = [(MLCLayer *)v32 weights];
        v34 = [v33 count];

        if (v34)
        {
          v35 = 0;
          while (1)
          {
            v36 = [(MLCLayer *)v32 weights];
            v37 = [v36 objectAtIndexedSubscript:v35];

            v38 = v37 == v6;
            if (v37 == v6)
            {
              break;
            }

            ++v35;
            v39 = [(MLCLayer *)v32 weights];
            v40 = [v39 count];

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

        v65 = [(MLCLayer *)v32 biases];
        v66 = [v65 count];

        if (v66)
        {
          v67 = 0;
          while (1)
          {
            v68 = [(MLCLayer *)v32 biases];
            v69 = [v68 objectAtIndexedSubscript:v67];

            v70 = v69 == v6;
            if (v69 == v6)
            {
              break;
            }

            ++v67;
            v71 = [(MLCLayer *)v32 biases];
            v72 = [v71 count];

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
        v73 = [(MLCLayer *)v32 attentionBiases];
        v74 = [v73 count];

        if (v74)
        {
          v75 = 0;
          while (1)
          {
            v76 = [(MLCLayer *)v32 attentionBiases];
            v77 = [v76 objectAtIndexedSubscript:v75];

            v78 = v77 == v6;
            if (v77 == v6)
            {
              break;
            }

            ++v75;
            v79 = [(MLCLayer *)v32 attentionBiases];
            v80 = [v79 count];

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
        v81 = [(MLCTensor *)v6 descriptor];
        v82 = [v81 tensorAllocationSizeInBytes];

        if (v38)
        {
          v14 = [(MLCLayer *)v32 device];
          v15 = [v14 computeEngine];
          v16 = [(MLCLayer *)v32 deviceOps];
          v17 = [v15 mhaWeightGradient:v16 withSize:v82 index:v35];
          goto LABEL_22;
        }

        if (v70)
        {
          v14 = [(MLCLayer *)v32 device];
          v15 = [v14 computeEngine];
          v16 = [(MLCLayer *)v32 deviceOps];
          v17 = [v15 mhaBiasGradient:v16 withSize:v82 index:v35];
          goto LABEL_22;
        }

        if (v78)
        {
          v14 = [(MLCLayer *)v32 device];
          v15 = [v14 computeEngine];
          v16 = [(MLCLayer *)v32 deviceOps];
          v17 = [v15 mhaAttnBiasGradient:v16 withSize:v82 index:v35];
          goto LABEL_22;
        }

        goto LABEL_19;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v41 = v7;
        v42 = [(MLCLayer *)v41 inputWeights];
        v43 = [v42 count];

        if (v43)
        {
          v44 = 0;
          while (1)
          {
            v45 = [(MLCLayer *)v41 inputWeights];
            v46 = [v45 objectAtIndexedSubscript:v44];

            if (v46 == v6)
            {
              break;
            }

            ++v44;
            v47 = [(MLCLayer *)v41 inputWeights];
            v48 = [v47 count];

            if (v44 >= v48)
            {
              goto LABEL_41;
            }
          }

          v14 = [(MLCLayer *)v41 device];
          v15 = [v14 computeEngine];
          v16 = [(MLCLayer *)v41 deviceOps];
          v17 = [v15 lstmInputWeightGradient:v16 mlcWeightIndex:v44];
          goto LABEL_22;
        }

LABEL_41:
        v49 = [(MLCLayer *)v41 hiddenWeights];
        v50 = [v49 count];

        if (v50)
        {
          v51 = 0;
          while (1)
          {
            v52 = [(MLCLayer *)v41 hiddenWeights];
            v53 = [v52 objectAtIndexedSubscript:v51];

            if (v53 == v6)
            {
              break;
            }

            ++v51;
            v54 = [(MLCLayer *)v41 hiddenWeights];
            v55 = [v54 count];

            if (v51 >= v55)
            {
              goto LABEL_45;
            }
          }

          v14 = [(MLCLayer *)v41 device];
          v15 = [v14 computeEngine];
          v16 = [(MLCLayer *)v41 deviceOps];
          v17 = [v15 lstmHiddenWeightGradient:v16 mlcWeightIndex:v51];
          goto LABEL_22;
        }

LABEL_45:
        v56 = [(MLCLayer *)v41 biases];
        v57 = [v56 count];

        if (v57)
        {
          v58 = 0;
          v59 = 0;
          v60 = 0;
          do
          {
            v61 = [(MLCLayer *)v41 biases];
            v62 = [v61 objectAtIndexedSubscript:v58];

            if (v62 == v6)
            {
              v60 = v58;
            }

            v59 |= v62 == v6;
            ++v58;
            v63 = [(MLCLayer *)v41 biases];
            v64 = [v63 count];
          }

          while (v58 < v64);
          if (v59)
          {
            v14 = [(MLCLayer *)v41 device];
            v15 = [v14 computeEngine];
            v16 = [(MLCLayer *)v41 deviceOps];
            v17 = [v15 lstmBiasGradient:v16 mlcBiasIndex:v60];
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
  v10 = [(MLCLayer *)v9 weights];

  if (v10 == v6)
  {
    v14 = [(MLCLayer *)v9 device];
    v15 = [v14 computeEngine];
    v16 = [(MLCLayer *)v9 deviceOps];
    v17 = [v15 weightsGradients:v16];
    goto LABEL_22;
  }

  v11 = [(MLCLayer *)v9 biases];
  if (v11)
  {
    v12 = v11;
    v13 = [(MLCLayer *)v9 biases];

    if (v13 == v6)
    {
      v14 = [(MLCLayer *)v9 device];
      v15 = [v14 computeEngine];
      v16 = [(MLCLayer *)v9 deviceOps];
      v17 = [v15 biasesGradients:v16];
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