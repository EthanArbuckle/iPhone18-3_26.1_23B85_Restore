@interface MLCGraph
+ (MLCGraph)graph;
+ (MLCGraph)graphWithGraphObjects:(id)objects;
- (BOOL)addInputs:(id)inputs lossLabels:(id)labels lossLabelWeights:(id)weights;
- (BOOL)addOutputs:(id)outputs;
- (BOOL)bindAndWriteData:(id)data forInputs:(id)inputs toDevice:(id)device batchSize:(unint64_t)size synchronous:(BOOL)synchronous skipWrite:(BOOL)write;
- (BOOL)checkPageAlignmentAndSizeForOutputs:(id)outputs;
- (BOOL)checksBeforeAddLayerInGraph:(id)graph sources:(id)sources forTraining:(BOOL)training;
- (BOOL)dispatchReadsForMultipleTensorOutputs:(id)outputs finalTensorInGraph:(id)graph finalResultTensor:(id)tensor batchSize:(unint64_t)size;
- (BOOL)isLayerInGraphLayerList:(id)list graphLayerList:(id)layerList;
- (MLCGraph)initWithGraphObjects:(id)objects;
- (MLCTensor)concatenateWithSources:(NSArray *)sources dimension:(NSUInteger)dimension;
- (MLCTensor)gatherWithDimension:(NSUInteger)dimension source:(MLCTensor *)source indices:(MLCTensor *)indices;
- (MLCTensor)nodeWithLayer:(MLCLayer *)layer source:(MLCTensor *)source;
- (MLCTensor)nodeWithLayer:(MLCLayer *)layer sources:(NSArray *)sources lossLabels:(NSArray *)lossLabels;
- (MLCTensor)reshapeWithShape:(NSArray *)shape source:(MLCTensor *)source;
- (MLCTensor)selectWithSources:(NSArray *)sources condition:(MLCTensor *)condition;
- (MLCTensor)transposeWithDimensions:(NSArray *)dimensions source:(MLCTensor *)source;
- (NSArray)layers;
- (NSArray)resultTensorsForLayer:(MLCLayer *)layer;
- (NSArray)sourceTensorsForLayer:(MLCLayer *)layer;
- (NSArray)splitWithSource:(MLCTensor *)source splitCount:(NSUInteger)splitCount dimension:(NSUInteger)dimension;
- (NSArray)splitWithSource:(MLCTensor *)source splitSectionLengths:(NSArray *)splitSectionLengths dimension:(NSUInteger)dimension;
- (NSString)summarizedDOTDescription;
- (id)conditionalWithPredicate:(id)predicate trueBranch:(id)branch falseBranch:(id)falseBranch;
- (id)createGradientSourceTensorWith:(id)with source:(id)source;
- (id)createLossGradientSourceTensorWith:(id)with source:(id)source batchSize:(id)size;
- (id)description;
- (id)resultTensorsForLayer:(id)layer graphLayerList:(id)list;
- (id)sourceTensorsForLayer:(id)layer graphLayerList:(id)list;
- (void)addGraphNodes:(id)nodes withControlTreeNode:(id)node;
- (void)allocateDeviceMemoryForTensor:(id)tensor device:(id)device;
- (void)checkAndResetTensorsAssociatedWithLayer:(id)layer sources:(id)sources;
- (void)createVariableLengthSequenceTensorsForLayer:(id)layer withVariableSequenceLength:(id)length;
- (void)dealloc;
- (void)enumerateInputsUsingBlock:(id)block;
- (void)enumerateLayersUsingBlock:(id)block;
- (void)enumerateOutputsUsingBlock:(id)block;
- (void)flattenConditionalLayer:(id)layer;
- (void)freeDeviceMemoryForTensorIfSafe:(id)safe device:(id)device;
- (void)insertPhis:(id)phis;
- (void)linkRelatedTensorsForConcatLayer:(id)layer device:(id)device;
- (void)linkSourceTensorsWithLayer:(id)layer sources:(id)sources;
- (void)summarizedDOTDescription;
- (void)updateDeviceMemoryReadCountForGradientWithLayer:(id)layer tensor:(id)tensor checkIfSourceNeeded:(BOOL)needed checkIfResultNeeded:(BOOL)resultNeeded;
- (void)updateDeviceMemoryReadCountForTensor:(id)tensor;
- (void)updateLSTMLayersForVariableSequenceLengthInGraph:(id)graph withInputData:(id)data;
- (void)updateOutputTensorsDeviceMemoryWithData:(id)data;
- (void)writeAsyncToDevice:(id)device dataForTensors:(id)tensors;
@end

@implementation MLCGraph

+ (MLCGraph)graphWithGraphObjects:(id)objects
{
  objectsCopy = objects;
  v5 = [[self alloc] initWithGraphObjects:objectsCopy];

  return v5;
}

+ (MLCGraph)graph
{
  v2 = objc_opt_new();

  return v2;
}

- (MLCGraph)initWithGraphObjects:(id)objects
{
  v103 = *MEMORY[0x277D85DE8];
  objectsCopy = objects;
  v97.receiver = self;
  v97.super_class = MLCGraph;
  v6 = [(MLCGraph *)&v97 init];
  v7 = v6;
  if (v6)
  {
    v6->_nextLayerID = 1;
    v8 = MEMORY[0x277CBEBF8];
    v9 = [MEMORY[0x277CBEBF8] mutableCopy];
    graphLayerList = v7->_graphLayerList;
    v7->_graphLayerList = v9;

    v11 = MEMORY[0x277CBEC10];
    v12 = [MEMORY[0x277CBEC10] mutableCopy];
    layerChildMap = v7->_layerChildMap;
    v7->_layerChildMap = v12;

    v14 = [v11 mutableCopy];
    layerParentMap = v7->_layerParentMap;
    v7->_layerParentMap = v14;

    v16 = [v8 mutableCopy];
    rootLevelTensorNodes = v7->_rootLevelTensorNodes;
    v7->_rootLevelTensorNodes = v16;

    objc_storeStrong(&v7->_graphObjects, objects);
    v7->_readyForExecution = 0;
    allInputs = v7->_allInputs;
    v7->_allInputs = 0;

    allOutputs = v7->_allOutputs;
    v7->_allOutputs = 0;

    allLossLabels = v7->_allLossLabels;
    v7->_allLossLabels = 0;

    allLossLabelWeights = v7->_allLossLabelWeights;
    v7->_allLossLabelWeights = 0;

    device = v7->_device;
    v7->_device = 0;

    *&v7->_recompileAfterLinking = 256;
    v7->_compilerOptions = 0;
    v23 = [v8 mutableCopy];
    lstmLayerIndexList = v7->_lstmLayerIndexList;
    v7->_lstmLayerIndexList = v23;

    nextLayerID = 1;
    v7->_allocateDeviceMemoryForTensorsInGraph = 1;
    v25 = [v8 mutableCopy];
    freeResourceList = v7->_freeResourceList;
    v7->_freeResourceList = v25;

    if ([objectsCopy count])
    {
      v27 = 0;
      v71 = objectsCopy;
      nextLayerID = 1;
      v28 = 0x278A68000uLL;
      v76 = v7;
      do
      {
        v73 = v27;
        v29 = [objectsCopy objectAtIndexedSubscript:v27];
        if ([v29 nextLayerID] > nextLayerID)
        {
          nextLayerID = [v29 nextLayerID];
        }

        v7->_staticBatchSizeInGraph &= [v29 staticBatchSizeInGraph];
        graphLayerList = [v29 graphLayerList];
        v31 = [graphLayerList count];

        if (v31)
        {
          v32 = 0;
          do
          {
            graphLayerList2 = [v29 graphLayerList];
            v34 = [graphLayerList2 objectAtIndexedSubscript:v32];

            v35 = *(v28 + 2776);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [(MLCGraph *)v7 flattenConditionalLayer:v34];
            }

            else
            {
              graphLayerList3 = [(MLCGraph *)v7 graphLayerList];
              [graphLayerList3 addObject:v34];
            }

            ++v32;
            graphLayerList4 = [v29 graphLayerList];
            v38 = [graphLayerList4 count];
          }

          while (v32 < v38);
        }

        v95 = 0u;
        v96 = 0u;
        v93 = 0u;
        v94 = 0u;
        rootLevelTensorNodes = [v29 rootLevelTensorNodes];
        v40 = [rootLevelTensorNodes countByEnumeratingWithState:&v93 objects:v102 count:16];
        if (v40)
        {
          v41 = v40;
          v42 = *v94;
          do
          {
            for (i = 0; i != v41; ++i)
            {
              if (*v94 != v42)
              {
                objc_enumerationMutation(rootLevelTensorNodes);
              }

              [(NSMutableArray *)v7->_rootLevelTensorNodes addObject:*(*(&v93 + 1) + 8 * i)];
            }

            v41 = [rootLevelTensorNodes countByEnumeratingWithState:&v93 objects:v102 count:16];
          }

          while (v41);
        }

        v91 = 0u;
        v92 = 0u;
        v89 = 0u;
        v90 = 0u;
        obj = [v29 layerChildMap];
        v44 = [obj countByEnumeratingWithState:&v89 objects:v101 count:16];
        v45 = v29;
        if (v44)
        {
          v46 = v44;
          v47 = *v90;
          do
          {
            for (j = 0; j != v46; ++j)
            {
              if (*v90 != v47)
              {
                objc_enumerationMutation(obj);
              }

              v49 = *(*(&v89 + 1) + 8 * j);
              v50 = [MEMORY[0x277CBEBF8] mutableCopy];
              v85 = 0u;
              v86 = 0u;
              v87 = 0u;
              v88 = 0u;
              layerChildMap = [v29 layerChildMap];
              v52 = [layerChildMap objectForKeyedSubscript:v49];

              v53 = [v52 countByEnumeratingWithState:&v85 objects:v100 count:16];
              if (v53)
              {
                v54 = v53;
                v55 = *v86;
                do
                {
                  for (k = 0; k != v54; ++k)
                  {
                    if (*v86 != v55)
                    {
                      objc_enumerationMutation(v52);
                    }

                    [v50 addObject:*(*(&v85 + 1) + 8 * k)];
                  }

                  v54 = [v52 countByEnumeratingWithState:&v85 objects:v100 count:16];
                }

                while (v54);
              }

              [(NSMutableDictionary *)v76->_layerChildMap setObject:v50 forKeyedSubscript:v49];
              v29 = v45;
            }

            v46 = [obj countByEnumeratingWithState:&v89 objects:v101 count:16];
          }

          while (v46);
        }

        v83 = 0u;
        v84 = 0u;
        v81 = 0u;
        v82 = 0u;
        obja = [v29 layerParentMap];
        v57 = [obja countByEnumeratingWithState:&v81 objects:v99 count:16];
        if (v57)
        {
          v58 = v57;
          v59 = *v82;
          do
          {
            for (m = 0; m != v58; ++m)
            {
              if (*v82 != v59)
              {
                objc_enumerationMutation(obja);
              }

              v61 = *(*(&v81 + 1) + 8 * m);
              v62 = [MEMORY[0x277CBEBF8] mutableCopy];
              v77 = 0u;
              v78 = 0u;
              v79 = 0u;
              v80 = 0u;
              layerParentMap = [v29 layerParentMap];
              v64 = [layerParentMap objectForKeyedSubscript:v61];

              v65 = [v64 countByEnumeratingWithState:&v77 objects:v98 count:16];
              if (v65)
              {
                v66 = v65;
                v67 = *v78;
                do
                {
                  for (n = 0; n != v66; ++n)
                  {
                    if (*v78 != v67)
                    {
                      objc_enumerationMutation(v64);
                    }

                    [v62 addObject:*(*(&v77 + 1) + 8 * n)];
                  }

                  v66 = [v64 countByEnumeratingWithState:&v77 objects:v98 count:16];
                }

                while (v66);
              }

              [(NSMutableDictionary *)v76->_layerParentMap setObject:v62 forKeyedSubscript:v61];
              v29 = v45;
            }

            v58 = [obja countByEnumeratingWithState:&v81 objects:v99 count:16];
          }

          while (v58);
        }

        v27 = v73 + 1;
        objectsCopy = v71;
        v28 = 0x278A68000;
        v7 = v76;
      }

      while (v73 + 1 < [v71 count]);
    }

    v7->_nextLayerID = nextLayerID;
  }

  v69 = *MEMORY[0x277D85DE8];
  return v7;
}

- (void)dealloc
{
  selfCopy = self;
  v104 = *MEMORY[0x277D85DE8];
  if ([(NSMutableArray *)self->_graphLayerList count])
  {
    v3 = 0;
    v4 = MEMORY[0x277CBEBF8];
    while (1)
    {
      v5 = [(NSMutableArray *)selfCopy->_graphLayerList objectAtIndexedSubscript:v3];
      [v5 resetLayerID];
      v99 = 0u;
      v100 = 0u;
      v97 = 0u;
      v98 = 0u;
      sourceTensors = [v5 sourceTensors];
      v7 = [sourceTensors countByEnumeratingWithState:&v97 objects:v103 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v98;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v98 != v9)
            {
              objc_enumerationMutation(sourceTensors);
            }

            v11 = *(*(&v97 + 1) + 8 * i);
            childLayers = [v11 childLayers];
            [childLayers removeAllObjects];

            parentLayers = [v11 parentLayers];
            [parentLayers removeAllObjects];
          }

          v8 = [sourceTensors countByEnumeratingWithState:&v97 objects:v103 count:16];
        }

        while (v8);
      }

      v95 = 0u;
      v96 = 0u;
      v93 = 0u;
      v94 = 0u;
      resultTensors = [v5 resultTensors];
      v15 = [resultTensors countByEnumeratingWithState:&v93 objects:v102 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v94;
        do
        {
          for (j = 0; j != v16; ++j)
          {
            if (*v94 != v17)
            {
              objc_enumerationMutation(resultTensors);
            }

            v19 = *(*(&v93 + 1) + 8 * j);
            childLayers2 = [v19 childLayers];
            [childLayers2 removeAllObjects];

            parentLayers2 = [v19 parentLayers];
            [parentLayers2 removeAllObjects];
          }

          v16 = [resultTensors countByEnumeratingWithState:&v93 objects:v102 count:16];
        }

        while (v16);
      }

      intermediateGradientTensors = [v5 intermediateGradientTensors];
      [intermediateGradientTensors removeAllObjects];

      [v5 setIntermediateGradientTensorIndex:0];
      [v5 setIntermediateSumLayer:0];
      v91 = 0u;
      v92 = 0u;
      v89 = 0u;
      v90 = 0u;
      fusedLayers = [v5 fusedLayers];
      v24 = [fusedLayers countByEnumeratingWithState:&v89 objects:v101 count:16];
      if (v24)
      {
        v25 = v24;
        v26 = *v90;
        do
        {
          for (k = 0; k != v25; ++k)
          {
            if (*v90 != v26)
            {
              objc_enumerationMutation(fusedLayers);
            }

            v28 = *(*(&v89 + 1) + 8 * k);
            v29 = [v4 mutableCopy];
            [v28 setDeviceOps:v29];
          }

          v25 = [fusedLayers countByEnumeratingWithState:&v89 objects:v101 count:16];
        }

        while (v25);
      }

      fusedLayers2 = [v5 fusedLayers];
      if ([fusedLayers2 count])
      {
        skipLayer = 1;
      }

      else
      {
        skipLayer = [v5 skipLayer];
      }

      device = [(MLCGraph *)selfCopy device];
      if (![device type])
      {
        goto LABEL_30;
      }

      device2 = [(MLCGraph *)selfCopy device];
      if ([device2 type] == 1)
      {
        break;
      }

      device3 = [(MLCGraph *)selfCopy device];
      if ([device3 type] == 2)
      {
        device4 = [(MLCGraph *)selfCopy device];
        [device4 gpuDevices];
        v75 = skipLayer;
        v77 = v76 = selfCopy;
        v87 = [v77 count];

        selfCopy = v76;
        skipLayer = v75;

        if (v87)
        {
          goto LABEL_31;
        }
      }

      else
      {
      }

LABEL_54:
      [v5 setSkipLayer:0];
      [v5 setIsLastFusedLayer:0];
      if (skipLayer)
      {
        sourceTensors2 = [v5 sourceTensors];
        [sourceTensors2 removeAllObjects];

        resultTensors2 = [v5 resultTensors];
        [resultTensors2 removeAllObjects];

        sourceGradientTensors = [v5 sourceGradientTensors];
        [sourceGradientTensors removeAllObjects];

        resultGradientTensors = [v5 resultGradientTensors];
        [resultGradientTensors removeAllObjects];

        fusedLayers3 = [v5 fusedLayers];
        v83 = [fusedLayers3 count];

        if (v83)
        {
          fusedLayers4 = [v5 fusedLayers];
          [fusedLayers4 removeAllObjects];
        }

        v85 = [v4 mutableCopy];
        [v5 setDeviceOps:v85];
      }

      [v5 unlinkAssociatedTensors];

      if (++v3 >= [(NSMutableArray *)selfCopy->_graphLayerList count])
      {
        goto LABEL_59;
      }
    }

LABEL_30:
LABEL_31:
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      skipLayer = 1;
    }

    sourceTensors3 = [v5 sourceTensors];
    v35 = [sourceTensors3 count];

    if (v35)
    {
      v36 = 0;
      do
      {
        sourceTensors4 = [v5 sourceTensors];
        v38 = [sourceTensors4 objectAtIndexedSubscript:v36];
        sharedMemoryTensor = [v38 sharedMemoryTensor];

        if (sharedMemoryTensor)
        {
          sourceTensors5 = [v5 sourceTensors];
          v41 = [sourceTensors5 objectAtIndexedSubscript:v36];
          deviceMemory = [v41 deviceMemory];
          [deviceMemory removeAllObjects];

          sourceTensors6 = [v5 sourceTensors];
          v44 = [sourceTensors6 objectAtIndexedSubscript:v36];
          [v44 setSharedMemoryTensor:0];
        }

        ++v36;
        sourceTensors7 = [v5 sourceTensors];
        v46 = [sourceTensors7 count];
      }

      while (v36 < v46);
    }

    resultTensors3 = [v5 resultTensors];
    v48 = [resultTensors3 count];

    if (v48)
    {
      v49 = 0;
      do
      {
        resultTensors4 = [v5 resultTensors];
        v51 = [resultTensors4 objectAtIndexedSubscript:v49];
        sharedMemoryTensor2 = [v51 sharedMemoryTensor];

        if (sharedMemoryTensor2)
        {
          resultTensors5 = [v5 resultTensors];
          v54 = [resultTensors5 objectAtIndexedSubscript:v49];
          deviceMemory2 = [v54 deviceMemory];
          [deviceMemory2 removeAllObjects];

          resultTensors6 = [v5 resultTensors];
          v57 = [resultTensors6 objectAtIndexedSubscript:v49];
          [v57 setSharedMemoryTensor:0];
        }

        ++v49;
        resultTensors7 = [v5 resultTensors];
        v59 = [resultTensors7 count];
      }

      while (v49 < v59);
    }

    resultGradientTensors2 = [v5 resultGradientTensors];
    v61 = [resultGradientTensors2 count];

    if (v61)
    {
      v62 = 0;
      do
      {
        resultGradientTensors3 = [v5 resultGradientTensors];
        v64 = [resultGradientTensors3 objectAtIndexedSubscript:v62];
        sharedMemoryTensor3 = [v64 sharedMemoryTensor];

        if (sharedMemoryTensor3)
        {
          resultGradientTensors4 = [v5 resultGradientTensors];
          v67 = [resultGradientTensors4 objectAtIndexedSubscript:v62];
          deviceMemory3 = [v67 deviceMemory];
          [deviceMemory3 removeAllObjects];

          resultGradientTensors5 = [v5 resultGradientTensors];
          v70 = [resultGradientTensors5 objectAtIndexedSubscript:v62];
          [v70 setSharedMemoryTensor:0];
        }

        ++v62;
        resultGradientTensors6 = [v5 resultGradientTensors];
        v72 = [resultGradientTensors6 count];
      }

      while (v62 < v72);
    }

    goto LABEL_54;
  }

LABEL_59:
  [(MLCGraph *)selfCopy addOutputs:0];
  v88.receiver = selfCopy;
  v88.super_class = MLCGraph;
  [(MLCGraph *)&v88 dealloc];
  v86 = *MEMORY[0x277D85DE8];
}

- (id)createGradientSourceTensorWith:(id)with source:(id)source
{
  if (source)
  {
    descriptor = [source descriptor];
    v5 = [MLCTensor tensorWithDescriptor:descriptor];
  }

  else
  {
    v7 = +[MLCLog framework];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [MLCGraph createGradientSourceTensorWith:a2 source:?];
    }

    v5 = 0;
  }

  return v5;
}

- (id)createLossGradientSourceTensorWith:(id)with source:(id)source batchSize:(id)size
{
  sourceCopy = source;
  sizeCopy = size;
  if (sourceCopy)
  {
    v9 = [MEMORY[0x277CBEBF8] mutableCopy];
    descriptor = [sourceCopy descriptor];
    shape = [descriptor shape];
    v12 = [shape count];

    if (v12)
    {
      v13 = 0;
      do
      {
        descriptor2 = [sourceCopy descriptor];
        shape2 = [descriptor2 shape];
        v16 = [shape2 objectAtIndex:v13];

        if (v13)
        {
          v17 = v16;
        }

        else
        {
          v17 = sizeCopy;
        }

        [v9 setObject:v17 atIndexedSubscript:v13];

        ++v13;
        descriptor3 = [sourceCopy descriptor];
        shape3 = [descriptor3 shape];
        v20 = [shape3 count];
      }

      while (v13 < v20);
    }

    descriptor4 = [sourceCopy descriptor];
    v22 = +[MLCTensorDescriptor descriptorWithShape:dataType:](MLCTensorDescriptor, "descriptorWithShape:dataType:", v9, [descriptor4 dataType]);

    v23 = [MLCTensor tensorWithDescriptor:v22];
  }

  else
  {
    v24 = +[MLCLog framework];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      [MLCGraph createGradientSourceTensorWith:a2 source:?];
    }

    v23 = 0;
  }

  return v23;
}

- (void)checkAndResetTensorsAssociatedWithLayer:(id)layer sources:(id)sources
{
  layerCopy = layer;
  sourcesCopy = sources;
  sourceTensors = [layerCopy sourceTensors];
  v7 = [sourceTensors count];

  sourceTensors2 = [layerCopy sourceTensors];
  v9 = [sourceTensors2 count];

  if (!v9 || ([layerCopy sourceTensors], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "count"), v10, !v11))
  {
LABEL_6:
    if (v7)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v12 = 0;
  while (1)
  {
    sourceTensors3 = [layerCopy sourceTensors];
    v14 = [sourceTensors3 objectAtIndexedSubscript:v12];
    v15 = [sourcesCopy objectAtIndexedSubscript:v12];

    if (v14 != v15)
    {
      break;
    }

    ++v12;
    sourceTensors4 = [layerCopy sourceTensors];
    v17 = [sourceTensors4 count];

    if (v12 >= v17)
    {
      goto LABEL_6;
    }
  }

  sourceTensors5 = [layerCopy sourceTensors];
  v28 = [sourceTensors5 count];

  if (v28)
  {
    v29 = 0;
    do
    {
      sourceTensors6 = [layerCopy sourceTensors];
      v31 = [sourceTensors6 objectAtIndexedSubscript:v29];
      v32 = [sourcesCopy objectAtIndexedSubscript:v29];
      v33 = [v31 doesShapeMatchWithTensor:v32];

      if ((v33 & 1) == 0)
      {
        goto LABEL_7;
      }

      ++v29;
      sourceTensors7 = [layerCopy sourceTensors];
      v35 = [sourceTensors7 count];
    }

    while (v29 < v35);
  }

  if (!v7)
  {
LABEL_7:
    if ([layerCopy isUpdatable])
    {
      sourceTensors8 = [layerCopy sourceTensors];
      v19 = [sourceTensors8 count];

      if (v19)
      {
        device = [layerCopy device];
        computeEngine = [device computeEngine];
        [computeEngine synchronizeUpdatesForLayer:layerCopy];
      }
    }

    sourceTensors9 = [layerCopy sourceTensors];
    [sourceTensors9 removeAllObjects];

    resultTensors = [layerCopy resultTensors];
    [resultTensors removeAllObjects];

    sourceGradientTensors = [layerCopy sourceGradientTensors];
    [sourceGradientTensors removeAllObjects];

    resultGradientTensors = [layerCopy resultGradientTensors];
    [resultGradientTensors removeAllObjects];

    sourceTensors10 = [MEMORY[0x277CBEBF8] mutableCopy];
    [layerCopy setDeviceOps:sourceTensors10];
    goto LABEL_11;
  }

  sourceTensors10 = [layerCopy sourceTensors];
  [sourceTensors10 removeAllObjects];
LABEL_11:

LABEL_12:
}

- (void)linkSourceTensorsWithLayer:(id)layer sources:(id)sources
{
  v53 = *MEMORY[0x277D85DE8];
  layerCopy = layer;
  sourcesCopy = sources;
  nextLayerID = [(MLCGraph *)self nextLayerID];
  [(MLCGraph *)self setNextLayerID:nextLayerID + 1];
  [layerCopy assignLayerID:nextLayerID];
  v9 = MEMORY[0x277CBEBF8];
  v10 = [MEMORY[0x277CBEBF8] mutableCopy];
  layerChildMap = [(MLCGraph *)self layerChildMap];
  label = [layerCopy label];
  [layerChildMap setObject:v10 forKeyedSubscript:label];

  v13 = [v9 mutableCopy];
  layerParentMap = [(MLCGraph *)self layerParentMap];
  label2 = [layerCopy label];
  [layerParentMap setObject:v13 forKeyedSubscript:label2];

  sourceTensors = [layerCopy sourceTensors];
  v40 = [sourceTensors count];

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  obj = sourcesCopy;
  v41 = [obj countByEnumeratingWithState:&v47 objects:v52 count:16];
  if (v41)
  {
    v39 = *v48;
    do
    {
      for (i = 0; i != v41; ++i)
      {
        if (*v48 != v39)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v47 + 1) + 8 * i);
        childLayers = [v18 childLayers];
        [childLayers addObject:layerCopy];

        if (!v40)
        {
          sourceTensors2 = [layerCopy sourceTensors];
          [sourceTensors2 addObject:v18];
        }

        v45 = 0u;
        v46 = 0u;
        v43 = 0u;
        v44 = 0u;
        v42 = v18;
        parentLayers = [v18 parentLayers];
        v22 = [parentLayers countByEnumeratingWithState:&v43 objects:v51 count:16];
        if (v22)
        {
          v23 = v22;
          v24 = *v44;
          do
          {
            for (j = 0; j != v23; ++j)
            {
              if (*v44 != v24)
              {
                objc_enumerationMutation(parentLayers);
              }

              v26 = *(*(&v43 + 1) + 8 * j);
              layerParentMap = self->_layerParentMap;
              label3 = [layerCopy label];
              v29 = [(NSMutableDictionary *)layerParentMap objectForKeyedSubscript:label3];

              label4 = [v26 label];
              [v29 addObject:label4];

              layerChildMap = self->_layerChildMap;
              label5 = [v26 label];
              v33 = [(NSMutableDictionary *)layerChildMap objectForKeyedSubscript:label5];

              label6 = [layerCopy label];
              [v33 addObject:label6];
            }

            v23 = [parentLayers countByEnumeratingWithState:&v43 objects:v51 count:16];
          }

          while (v23);
        }

        parentLayers2 = [v42 parentLayers];
        v36 = [parentLayers2 count];

        if (!v36)
        {
          [(NSMutableArray *)self->_rootLevelTensorNodes addObject:v42];
        }
      }

      v41 = [obj countByEnumeratingWithState:&v47 objects:v52 count:16];
    }

    while (v41);
  }

  v37 = *MEMORY[0x277D85DE8];
}

- (BOOL)checksBeforeAddLayerInGraph:(id)graph sources:(id)sources forTraining:(BOOL)training
{
  v26 = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  sourcesCopy = sources;
  resultTensors = [graphCopy resultTensors];
  v12 = [resultTensors count];

  if (v12 && ([(MLCGraph *)self graphLayerList], v13 = objc_claimAutoreleasedReturnValue(), v14 = [(MLCGraph *)self isLayerInGraphLayerList:graphCopy graphLayerList:v13], v13, v14))
  {
    v15 = +[MLCLog framework];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [MLCGraph checksBeforeAddLayerInGraph:sources:forTraining:];
    }
  }

  else if ([graphCopy layerID])
  {
    v15 = +[MLCLog framework];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [MLCGraph checksBeforeAddLayerInGraph:sources:forTraining:];
    }
  }

  else if ([sourcesCopy count])
  {
    if ([graphCopy isSupportedShapeForTensorSources:sourcesCopy])
    {
      if (training || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        v16 = 1;
        goto LABEL_9;
      }

      v15 = +[MLCLog framework];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [MLCGraph checksBeforeAddLayerInGraph:a2 sources:? forTraining:?];
      }
    }

    else
    {
      v15 = +[MLCLog framework];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v19 = NSStringFromSelector(a2);
        v20 = 138412802;
        v21 = v19;
        v22 = 2112;
        v23 = graphCopy;
        v24 = 2112;
        v25 = sourcesCopy;
        _os_log_error_impl(&dword_238C1D000, v15, OS_LOG_TYPE_ERROR, "%@: layer (%@) does not support tensor shape used by sources (%@)", &v20, 0x20u);
      }
    }
  }

  else
  {
    v15 = +[MLCLog framework];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [MLCGraph checksBeforeAddLayerInGraph:sources:forTraining:];
    }
  }

  v16 = 0;
LABEL_9:

  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

- (NSArray)splitWithSource:(MLCTensor *)source splitCount:(NSUInteger)splitCount dimension:(NSUInteger)dimension
{
  v8 = source;
  v9 = [MLCSplitLayer layerWithSplitCount:splitCount dimension:dimension];
  v29 = v8;
  v10 = [(MLCGraph *)self nodeWithMultiOutputLayer:v9 source:v8 forTraining:1];
  if (v10)
  {
    sourceGradientTensors = [v9 sourceGradientTensors];
    v12 = [sourceGradientTensors count];

    if (!v12)
    {
      if ([v10 count])
      {
        v13 = 0;
        v14 = 0;
        do
        {
          v15 = [v10 objectAtIndexedSubscript:v13];
          v16 = [(MLCGraph *)self createGradientSourceTensorWith:v9 source:v15];
          sourceGradientTensors2 = [v9 sourceGradientTensors];
          [sourceGradientTensors2 setObject:v16 atIndexedSubscript:v13];

          sourceGradientTensors3 = [v9 sourceGradientTensors];
          v19 = [sourceGradientTensors3 objectAtIndexedSubscript:v13];
          [v19 setSplitOffset:v14];

          dimension = [v9 dimension];
          sourceGradientTensors4 = [v9 sourceGradientTensors];
          v22 = [sourceGradientTensors4 objectAtIndexedSubscript:v13];
          [v22 setSplitDimension:dimension];

          sourceGradientTensors5 = [v9 sourceGradientTensors];
          v24 = [sourceGradientTensors5 objectAtIndexedSubscript:v13];
          descriptor = [v24 descriptor];
          shape = [descriptor shape];
          v27 = [shape objectAtIndexedSubscript:{objc_msgSend(v9, "dimension")}];
          v14 += [v27 unsignedIntegerValue];

          ++v13;
        }

        while (v13 < [v10 count]);
      }
    }
  }

  return v10;
}

- (NSArray)splitWithSource:(MLCTensor *)source splitSectionLengths:(NSArray *)splitSectionLengths dimension:(NSUInteger)dimension
{
  v8 = source;
  v9 = [MLCSplitLayer layerWithSplitSectionLengths:splitSectionLengths dimension:dimension];
  v29 = v8;
  v10 = [(MLCGraph *)self nodeWithMultiOutputLayer:v9 source:v8 forTraining:1];
  if (v10)
  {
    sourceGradientTensors = [v9 sourceGradientTensors];
    v12 = [sourceGradientTensors count];

    if (!v12)
    {
      if ([v10 count])
      {
        v13 = 0;
        v14 = 0;
        do
        {
          v15 = [v10 objectAtIndexedSubscript:v13];
          v16 = [(MLCGraph *)self createGradientSourceTensorWith:v9 source:v15];
          sourceGradientTensors2 = [v9 sourceGradientTensors];
          [sourceGradientTensors2 setObject:v16 atIndexedSubscript:v13];

          sourceGradientTensors3 = [v9 sourceGradientTensors];
          v19 = [sourceGradientTensors3 objectAtIndexedSubscript:v13];
          [v19 setSplitOffset:v14];

          dimension = [v9 dimension];
          sourceGradientTensors4 = [v9 sourceGradientTensors];
          v22 = [sourceGradientTensors4 objectAtIndexedSubscript:v13];
          [v22 setSplitDimension:dimension];

          sourceGradientTensors5 = [v9 sourceGradientTensors];
          v24 = [sourceGradientTensors5 objectAtIndexedSubscript:v13];
          descriptor = [v24 descriptor];
          shape = [descriptor shape];
          v27 = [shape objectAtIndexedSubscript:{objc_msgSend(v9, "dimension")}];
          v14 += [v27 unsignedIntegerValue];

          ++v13;
        }

        while (v13 < [v10 count]);
      }
    }
  }

  return v10;
}

- (MLCTensor)concatenateWithSources:(NSArray *)sources dimension:(NSUInteger)dimension
{
  v7 = sources;
  if ([(NSArray *)v7 count])
  {
    if (dimension <= 3)
    {
      if (![(NSArray *)v7 count])
      {
LABEL_11:
        v11 = [MLCConcatenationLayer layerWithDimension:dimension];
        v12 = [(MLCGraph *)self nodeWithLayer:v11 sources:v7];

        goto LABEL_15;
      }

      v9 = 0;
      while (1)
      {
        v10 = [(NSArray *)v7 objectAtIndexedSubscript:v9];

        if (!v10)
        {
          break;
        }

        if (++v9 >= [(NSArray *)v7 count])
        {
          goto LABEL_11;
        }
      }

      v8 = +[MLCLog framework];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [MLCGraph createGradientSourceTensorWith:a2 source:?];
      }
    }

    else
    {
      v8 = +[MLCLog framework];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [MLCGraph concatenateWithSources:a2 dimension:?];
      }
    }
  }

  else
  {
    v8 = +[MLCLog framework];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [MLCGraph concatenateWithSources:a2 dimension:?];
    }
  }

  v12 = 0;
LABEL_15:

  return v12;
}

- (MLCTensor)reshapeWithShape:(NSArray *)shape source:(MLCTensor *)source
{
  v12[1] = *MEMORY[0x277D85DE8];
  v6 = source;
  v7 = [MLCReshapeLayer layerWithShape:shape];
  v12[0] = v6;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];

  v9 = [(MLCGraph *)self nodeWithLayer:v7 sources:v8];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (MLCTensor)transposeWithDimensions:(NSArray *)dimensions source:(MLCTensor *)source
{
  v12[1] = *MEMORY[0x277D85DE8];
  v6 = source;
  v7 = [MLCTransposeLayer layerWithDimensions:dimensions];
  v12[0] = v6;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];

  v9 = [(MLCGraph *)self nodeWithLayer:v7 sources:v8];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (MLCTensor)selectWithSources:(NSArray *)sources condition:(MLCTensor *)condition
{
  v16[3] = *MEMORY[0x277D85DE8];
  v7 = sources;
  v8 = condition;
  if ([(NSArray *)v7 count]== 2)
  {
    v9 = +[MLCSelectionLayer layer];
    v10 = [(NSArray *)v7 objectAtIndexedSubscript:0, v8];
    v16[1] = v10;
    v11 = [(NSArray *)v7 objectAtIndexedSubscript:1];
    v16[2] = v11;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:3];
    v13 = [(MLCGraph *)self nodeWithLayer:v9 sources:v12];
  }

  else
  {
    v9 = +[MLCLog framework];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [MLCGraph selectWithSources:a2 condition:?];
    }

    v13 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (MLCTensor)gatherWithDimension:(NSUInteger)dimension source:(MLCTensor *)source indices:(MLCTensor *)indices
{
  v15[2] = *MEMORY[0x277D85DE8];
  v8 = indices;
  v9 = source;
  v10 = [MLCGatherLayer layerWithDimension:dimension];
  v15[0] = v9;
  v15[1] = v8;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];

  v12 = [(MLCGraph *)self nodeWithLayer:v10 sources:v11];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (MLCTensor)nodeWithLayer:(MLCLayer *)layer source:(MLCTensor *)source
{
  v14 = *MEMORY[0x277D85DE8];
  v13 = source;
  v6 = MEMORY[0x277CBEA60];
  v7 = source;
  v8 = layer;
  v9 = [v6 arrayWithObjects:&v13 count:1];

  v10 = [(MLCGraph *)self nodeWithLayer:v8 sources:v9 disableUpdate:0, v13, v14];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (MLCTensor)nodeWithLayer:(MLCLayer *)layer sources:(NSArray *)sources lossLabels:(NSArray *)lossLabels
{
  v8 = layer;
  v9 = sources;
  v10 = lossLabels;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v8;
    v12 = [(NSArray *)v10 objectAtIndexedSubscript:0];
    [(MLCLayer *)v11 setLossLabels:v12];

    v13 = [(MLCGraph *)self nodeWithLayer:v11 sources:v9];
  }

  else
  {
    v14 = +[MLCLog framework];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [MLCGraph nodeWithLayer:sources:lossLabels:];
    }

    v13 = 0;
  }

  return v13;
}

- (BOOL)bindAndWriteData:(id)data forInputs:(id)inputs toDevice:(id)device batchSize:(unint64_t)size synchronous:(BOOL)synchronous skipWrite:(BOOL)write
{
  synchronousCopy = synchronous;
  v99 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  inputsCopy = inputs;
  deviceCopy = device;
  v92 = 0u;
  v93 = 0u;
  v94 = 0u;
  v95 = 0u;
  obj = inputsCopy;
  v77 = [inputsCopy countByEnumeratingWithState:&v92 objects:v98 count:16];
  if (v77)
  {
    v75 = *v93;
    do
    {
      for (i = 0; i != v77; ++i)
      {
        if (*v93 != v75)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v92 + 1) + 8 * i);
        v13 = [obj objectForKeyedSubscript:v12];
        childLayers = [v13 childLayers];
        v15 = [childLayers count];

        if (v15)
        {
          v16 = 0;
          while (1)
          {
            childLayers2 = [v13 childLayers];
            v18 = [childLayers2 objectAtIndexedSubscript:v16];
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();

            if (isKindOfClass)
            {
              break;
            }

LABEL_19:
            ++v16;
            childLayers3 = [v13 childLayers];
            v33 = [childLayers3 count];

            if (v16 >= v33)
            {
              goto LABEL_20;
            }
          }

          childLayers4 = [v13 childLayers];
          v21 = [childLayers4 objectAtIndexedSubscript:v16];

          sourceTensors = [v21 sourceTensors];
          if ([sourceTensors count] == 2)
          {

            goto LABEL_12;
          }

          sourceTensors2 = [v21 sourceTensors];
          v24 = [sourceTensors2 count];

          if (v24 == 4)
          {
LABEL_12:
            sourceTensors3 = [v21 sourceTensors];
            v26 = [sourceTensors3 count];
            sourceTensors4 = [v21 sourceTensors];
            v28 = sourceTensors4;
            if (v26 == 2)
            {
              v29 = 1;
            }

            else
            {
              v29 = 3;
            }

            v30 = [sourceTensors4 objectAtIndexedSubscript:v29];

            if (v30 == v13)
            {
              v31 = [dataCopy objectForKeyedSubscript:v12];
              [(MLCGraph *)self createVariableLengthSequenceTensorsForLayer:v21 withVariableSequenceLength:v31];
            }
          }

          goto LABEL_19;
        }

LABEL_20:
      }

      v77 = [obj countByEnumeratingWithState:&v92 objects:v98 count:16];
    }

    while (v77);
  }

  v90 = 0u;
  v91 = 0u;
  v88 = 0u;
  v89 = 0u;
  v34 = dataCopy;
  v35 = [v34 countByEnumeratingWithState:&v88 objects:v97 count:16];
  if (v35)
  {
    v36 = v35;
    v37 = *v89;
    v38 = &selRef_numberWithShort_;
    v39 = deviceCopy;
    writeCopy2 = write;
    sizeCopy2 = size;
    v76 = v34;
    v78 = *v89;
    while (2)
    {
      v42 = 0;
      v81 = v38[196];
      v83 = v36;
      do
      {
        if (*v89 != v37)
        {
          objc_enumerationMutation(v34);
        }

        v43 = *(*(&v88 + 1) + 8 * v42);
        v44 = [v34 objectForKeyedSubscript:v43];
        v45 = [obj objectForKeyedSubscript:v43];
        if (([v45 skipWritingToDevice] & 1) == 0)
        {
          if (!v45)
          {
            v67 = [MEMORY[0x277CCACA8] stringWithFormat:@"input name=%@ missing from inputs specified at compile time allInputs=%@", v43, obj];
            v68 = +[MLCLog framework];
            if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
            {
              [MLCGraph bindAndWriteData:forInputs:toDevice:batchSize:synchronous:skipWrite:];
            }

            v66 = 0;
            goto LABEL_65;
          }

          v46 = v39;
          if ([v46 type] == 3)
          {
            v86 = 0u;
            v87 = 0u;
            v84 = 0u;
            v85 = 0u;
            childLayers5 = [v45 childLayers];
            v48 = [childLayers5 countByEnumeratingWithState:&v84 objects:v96 count:16];
            if (v48)
            {
              v49 = v48;
              v50 = *v85;
              while (2)
              {
                for (j = 0; j != v49; ++j)
                {
                  if (*v85 != v50)
                  {
                    objc_enumerationMutation(childLayers5);
                  }

                  v52 = *(*(&v84 + 1) + 8 * j);
                  device = [v52 device];

                  if (device)
                  {
                    device2 = [v52 device];

                    v46 = device2;
                    goto LABEL_40;
                  }
                }

                v49 = [childLayers5 countByEnumeratingWithState:&v84 objects:v96 count:16];
                if (v49)
                {
                  continue;
                }

                break;
              }

LABEL_40:
              v39 = deviceCopy;
              writeCopy2 = write;
              sizeCopy2 = size;
            }

            v34 = v76;
          }

          computeEngine = [v46 computeEngine];
          v56 = objc_opt_respondsToSelector();

          if (v56)
          {
            v57 = sizeCopy2;
            if (!sizeCopy2)
            {
              v57 = [v45 calculateBatchSizeToUse:0];
            }

            computeEngine2 = [v46 computeEngine];
            [computeEngine2 selectDevicesWithBatchSize:v57 calledfromBindAndWrite:1];
          }

          if ([v46 type])
          {
            computeEngine3 = [v46 computeEngine];
            v60 = [computeEngine3 needToAllocateDeviceMemoryForTensor:v45];

            if (v60)
            {
              [v45 allocateDeviceMemory:v46];
            }
          }

          else if (([v45 isLayerParameter] & 1) == 0)
          {
            data = [v44 data];
            [v45 setData:data];

            data2 = [v45 data];
            deviceMemory = [v45 deviceMemory];
            [deviceMemory setObject:data2 atIndexedSubscript:0];
          }

          if (!writeCopy2)
          {
            v64 = [v45 calculateBatchSizeToUse:sizeCopy2];
            if ([v45 isLayerParameter])
            {
              [v45 bindAndWriteData:v44 toDevice:v46];
            }

            else
            {
              data3 = [v44 data];
              [v45 setData:data3];

              if (synchronousCopy)
              {
                [v45 writeTensorDataToAllDevices:v46 batchSize:v64];
              }

              else
              {
                [v45 dispatchWriteTensorDataToAllDevices:v46 batchSize:v64];
              }
            }
          }

          [v45 setDevice:v46];

          v37 = v78;
          v36 = v83;
        }

        ++v42;
      }

      while (v42 != v36);
      v36 = [v34 countByEnumeratingWithState:&v88 objects:v97 count:16];
      v38 = &selRef_numberWithShort_;
      if (v36)
      {
        continue;
      }

      break;
    }

    v66 = 1;
  }

  else
  {
    v66 = 1;
    v39 = deviceCopy;
  }

LABEL_65:

  v69 = *MEMORY[0x277D85DE8];
  return v66;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  graphObjects = [(MLCGraph *)self graphObjects];
  graphLayerList = [(MLCGraph *)self graphLayerList];
  allInputs = [(MLCGraph *)self allInputs];
  allOutputs = [(MLCGraph *)self allOutputs];
  device = [(MLCGraph *)self device];
  v11 = [v3 stringWithFormat:@"%@: { graphObjects=%@ : graphLayerList=%@ : allInputs=%@ : allOutputs=%@ : device=%@}", v5, graphObjects, graphLayerList, allInputs, allOutputs, device];

  return v11;
}

- (void)writeAsyncToDevice:(id)device dataForTensors:(id)tensors
{
  deviceCopy = device;
  tensorsCopy = tensors;
  if ([tensorsCopy count])
  {
    v6 = 0;
    do
    {
      computeEngine = [deviceCopy computeEngine];
      v8 = [tensorsCopy objectAtIndexedSubscript:v6];
      [computeEngine allocateDeviceMemoryForTensor:v8];

      computeEngine2 = [deviceCopy computeEngine];
      v10 = [tensorsCopy objectAtIndexedSubscript:v6];
      [computeEngine2 broadcastTensor:v10];

      ++v6;
    }

    while (v6 < [tensorsCopy count]);
  }
}

- (void)createVariableLengthSequenceTensorsForLayer:(id)layer withVariableSequenceLength:(id)length
{
  layerCopy = layer;
  lengthCopy = length;
  v6 = [MEMORY[0x277CBEBF8] mutableCopy];
  v7 = [lengthCopy length];
  if (v7 >= 4)
  {
    v8 = 0;
    v9 = v7 >> 2;
    do
    {
      bytes = [lengthCopy bytes];
      v11 = [MEMORY[0x277CCABB0] numberWithInt:*(bytes + 4 * v8)];
      [v6 addObject:v11];

      ++v8;
    }

    while (v9 != v8);
  }

  sourceTensors = [layerCopy sourceTensors];
  v35 = [sourceTensors objectAtIndexedSubscript:0];

  descriptor = [v35 descriptor];
  shape = [descriptor shape];
  descriptor2 = [v35 descriptor];
  v16 = +[MLCTensorDescriptor descriptorWithShape:sequenceLengths:sortedSequences:dataType:](MLCTensorDescriptor, "descriptorWithShape:sequenceLengths:sortedSequences:dataType:", shape, v6, 1, [descriptor2 dataType]);
  sourceTensors2 = [layerCopy sourceTensors];
  v18 = [sourceTensors2 objectAtIndexedSubscript:0];
  [v18 setDescriptor:v16];

  resultTensors = [layerCopy resultTensors];
  v20 = [resultTensors objectAtIndexedSubscript:0];

  descriptor3 = [v20 descriptor];
  shape2 = [descriptor3 shape];
  descriptor4 = [v20 descriptor];
  v24 = +[MLCTensorDescriptor descriptorWithShape:sequenceLengths:sortedSequences:dataType:](MLCTensorDescriptor, "descriptorWithShape:sequenceLengths:sortedSequences:dataType:", shape2, v6, 1, [descriptor4 dataType]);
  resultTensors2 = [layerCopy resultTensors];
  v26 = [resultTensors2 objectAtIndexedSubscript:0];
  [v26 setDescriptor:v24];

  sourceGradientTensors = [layerCopy sourceGradientTensors];
  v28 = [sourceGradientTensors objectAtIndexedSubscript:0];

  descriptor5 = [v28 descriptor];
  shape3 = [descriptor5 shape];
  descriptor6 = [v28 descriptor];
  v32 = +[MLCTensorDescriptor descriptorWithShape:sequenceLengths:sortedSequences:dataType:](MLCTensorDescriptor, "descriptorWithShape:sequenceLengths:sortedSequences:dataType:", shape3, v6, 1, [descriptor6 dataType]);
  sourceGradientTensors2 = [layerCopy sourceGradientTensors];
  v34 = [sourceGradientTensors2 objectAtIndexedSubscript:0];
  [v34 setDescriptor:v32];
}

- (void)enumerateLayersUsingBlock:(id)block
{
  blockCopy = block;
  graphLayerList = [(MLCGraph *)self graphLayerList];
  v5 = [graphLayerList count];

  if (v5)
  {
    v6 = 0;
    do
    {
      graphLayerList2 = [(MLCGraph *)self graphLayerList];
      v8 = [graphLayerList2 objectAtIndexedSubscript:v6];

      layerParentMap = self->_layerParentMap;
      label = [v8 label];
      v11 = [(NSMutableDictionary *)layerParentMap objectForKeyedSubscript:label];
      layerChildMap = self->_layerChildMap;
      label2 = [v8 label];
      v14 = [(NSMutableDictionary *)layerChildMap objectForKeyedSubscript:label2];
      blockCopy[2](blockCopy, v8, v11, v14);

      ++v6;
      graphLayerList3 = [(MLCGraph *)self graphLayerList];
      v16 = [graphLayerList3 count];
    }

    while (v6 < v16);
  }
}

- (void)enumerateInputsUsingBlock:(id)block
{
  v21 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = self->_rootLevelTensorNodes;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        descriptor = [v10 descriptor];
        label = [v10 label];
        dataType = [descriptor dataType];
        shape = [descriptor shape];
        blockCopy[2](blockCopy, label, dataType, shape);
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)enumerateOutputsUsingBlock:(id)block
{
  v33 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  graphLayerList = [(MLCGraph *)self graphLayerList];
  v6 = [graphLayerList count];

  if (v6)
  {
    v7 = 0;
    selfCopy = self;
    do
    {
      graphLayerList2 = [(MLCGraph *)self graphLayerList];
      v27 = v7;
      v9 = [graphLayerList2 objectAtIndexedSubscript:v7];

      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v26 = v9;
      resultTensors = [v9 resultTensors];
      v11 = [resultTensors countByEnumeratingWithState:&v28 objects:v32 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v29;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v29 != v13)
            {
              objc_enumerationMutation(resultTensors);
            }

            v15 = *(*(&v28 + 1) + 8 * i);
            childLayers = [v15 childLayers];
            v17 = [childLayers count];

            if (!v17)
            {
              descriptor = [v15 descriptor];
              label = [v15 label];
              dataType = [descriptor dataType];
              shape = [descriptor shape];
              blockCopy[2](blockCopy, label, dataType, shape);
            }
          }

          v12 = [resultTensors countByEnumeratingWithState:&v28 objects:v32 count:16];
        }

        while (v12);
      }

      v7 = v27 + 1;
      self = selfCopy;
      graphLayerList3 = [(MLCGraph *)selfCopy graphLayerList];
      v23 = [graphLayerList3 count];
    }

    while (v27 + 1 < v23);
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (BOOL)isLayerInGraphLayerList:(id)list graphLayerList:(id)layerList
{
  listCopy = list;
  layerListCopy = layerList;
  if ([layerListCopy count])
  {
    v7 = 0;
    do
    {
      v8 = [layerListCopy objectAtIndexedSubscript:v7];

      v9 = v8 == listCopy;
      if (v9)
      {
        break;
      }

      ++v7;
    }

    while (v7 < [layerListCopy count]);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (NSArray)resultTensorsForLayer:(MLCLayer *)layer
{
  v4 = layer;
  isDebuggingEnabled = [(MLCLayer *)v4 isDebuggingEnabled];
  [(MLCLayer *)v4 setIsDebuggingEnabled:0 isPrivate:1];
  graphLayerList = [(MLCGraph *)self graphLayerList];
  v7 = [(MLCGraph *)self resultTensorsForLayer:v4 graphLayerList:graphLayerList];

  [(MLCLayer *)v4 setIsDebuggingEnabled:isDebuggingEnabled isPrivate:1];

  return v7;
}

- (NSArray)sourceTensorsForLayer:(MLCLayer *)layer
{
  v4 = layer;
  graphLayerList = [(MLCGraph *)self graphLayerList];
  v6 = [(MLCGraph *)self sourceTensorsForLayer:v4 graphLayerList:graphLayerList];

  return v6;
}

- (id)resultTensorsForLayer:(id)layer graphLayerList:(id)list
{
  layerCopy = layer;
  if (![(MLCGraph *)self isLayerInGraphLayerList:layerCopy graphLayerList:list])
  {
    v15 = +[MLCLog framework];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [MLCGraph resultTensorsForLayer:graphLayerList:];
    }

    goto LABEL_11;
  }

  if ([layerCopy skipLayer] && (objc_msgSend(layerCopy, "isLastFusedLayer") & 1) == 0)
  {
    v15 = +[MLCLog framework];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [MLCGraph resultTensorsForLayer:graphLayerList:];
    }

LABEL_11:

    resultTensors4 = MEMORY[0x277CBEBF8];
    goto LABEL_12;
  }

  if ([layerCopy isDebuggingEnabled])
  {
    resultTensors = [layerCopy resultTensors];
    v8 = [resultTensors count];

    if (v8)
    {
      v9 = 0;
      do
      {
        resultTensors2 = [layerCopy resultTensors];
        v11 = [resultTensors2 objectAtIndexedSubscript:v9];
        [v11 synchronizeData];

        ++v9;
        resultTensors3 = [layerCopy resultTensors];
        v13 = [resultTensors3 count];
      }

      while (v9 < v13);
    }
  }

  resultTensors4 = [layerCopy resultTensors];
LABEL_12:

  return resultTensors4;
}

- (id)sourceTensorsForLayer:(id)layer graphLayerList:(id)list
{
  layerCopy = layer;
  if ([(MLCGraph *)self isLayerInGraphLayerList:layerCopy graphLayerList:list])
  {
    sourceTensors = [layerCopy sourceTensors];
  }

  else
  {
    v8 = +[MLCLog framework];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [MLCGraph resultTensorsForLayer:graphLayerList:];
    }

    sourceTensors = MEMORY[0x277CBEBF8];
  }

  return sourceTensors;
}

- (void)flattenConditionalLayer:(id)layer
{
  layerCopy = layer;
  sourceTensors = [layerCopy sourceTensors];
  v6 = [sourceTensors objectAtIndexedSubscript:0];

  v7 = [MLCControlTreeNode controlTreeNodeWithPredicate:v6 needToNegate:0];
  trueBranch = [layerCopy trueBranch];
  [(MLCGraph *)self addGraphNodes:trueBranch withControlTreeNode:v7];

  v10 = [MLCControlTreeNode controlTreeNodeWithPredicate:v6 needToNegate:1];

  falseBranch = [layerCopy falseBranch];
  [(MLCGraph *)self addGraphNodes:falseBranch withControlTreeNode:v10];

  [(MLCGraph *)self insertPhis:layerCopy];
}

- (void)addGraphNodes:(id)nodes withControlTreeNode:(id)node
{
  *&v23[5] = *MEMORY[0x277D85DE8];
  nodesCopy = nodes;
  nodeCopy = node;
  graphLayerList = [nodesCopy graphLayerList];
  v9 = [graphLayerList count];

  if (v9)
  {
    for (i = 0; i != v9; ++i)
    {
      graphLayerList2 = [nodesCopy graphLayerList];
      v12 = [graphLayerList2 objectAtIndexedSubscript:i];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v14 = +[MLCLog framework];
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          [(MLCGraph *)v22 addGraphNodes:a2 withControlTreeNode:v23, v14];
        }
      }

      graphLayerList3 = [nodesCopy graphLayerList];
      v16 = [graphLayerList3 objectAtIndexedSubscript:i];
      [v16 setConditionalTreeNode:nodeCopy];

      graphLayerList4 = [(MLCGraph *)self graphLayerList];
      graphLayerList5 = [nodesCopy graphLayerList];
      v19 = [graphLayerList5 objectAtIndexedSubscript:i];
      [graphLayerList4 addObject:v19];
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)insertPhis:(id)phis
{
  v39[2] = *MEMORY[0x277D85DE8];
  phisCopy = phis;
  trueBranch = [phisCopy trueBranch];
  falseBranch = [phisCopy falseBranch];
  graphLayerList = [trueBranch graphLayerList];
  v8 = [graphLayerList count];

  graphLayerList2 = [falseBranch graphLayerList];
  v10 = [graphLayerList2 count];

  sourceTensors = [phisCopy sourceTensors];
  v12 = [sourceTensors objectAtIndexedSubscript:0];
  v13 = phisCopy;
  v38 = [MLCControlTreeNode controlTreeNodeWithPredicate:v12 needToNegate:0];

  resultTensors = [phisCopy resultTensors];
  v15 = [resultTensors count];

  if (v15)
  {
    v16 = 0;
    v34 = v10 - 1;
    v35 = v8 - 1;
    selfCopy = self;
    v37 = trueBranch;
    do
    {
      graphLayerList3 = [trueBranch graphLayerList];
      v18 = [graphLayerList3 objectAtIndexedSubscript:v35];
      resultTensors2 = [v18 resultTensors];
      v20 = [resultTensors2 objectAtIndexedSubscript:0];

      graphLayerList4 = [falseBranch graphLayerList];
      v22 = [graphLayerList4 objectAtIndexedSubscript:v34];
      [v22 resultTensors];
      v24 = v23 = v15;
      v25 = [v24 objectAtIndexedSubscript:0];

      v39[0] = v20;
      v39[1] = v25;
      v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:2];
      resultTensors3 = [v13 resultTensors];
      [resultTensors3 objectAtIndexedSubscript:v16];
      v28 = falseBranch;
      v30 = v29 = v13;
      v31 = [MLCPhiLayer layerWithControlTreeNode:v38 sources:v26 resultTensor:v30];

      v13 = v29;
      falseBranch = v28;

      graphLayerList5 = [(MLCGraph *)selfCopy graphLayerList];
      [graphLayerList5 addObject:v31];

      trueBranch = v37;
      v15 = v23;

      ++v16;
    }

    while (v23 != v16);
  }

  v33 = *MEMORY[0x277D85DE8];
}

- (id)conditionalWithPredicate:(id)predicate trueBranch:(id)branch falseBranch:(id)falseBranch
{
  v22[1] = *MEMORY[0x277D85DE8];
  predicateCopy = predicate;
  branchCopy = branch;
  falseBranchCopy = falseBranch;
  v12 = [MLCConditionalLayer layerWithTrueBranch:branchCopy falseBranch:falseBranchCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v13 = +[MLCLog framework];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [MLCGraph conditionalWithPredicate:a2 trueBranch:? falseBranch:?];
    }
  }

  allOutputs = [branchCopy allOutputs];
  if ([allOutputs count])
  {
  }

  else
  {
    allOutputs2 = [falseBranchCopy allOutputs];
    v16 = [allOutputs2 count];

    if (!v16)
    {
      goto LABEL_12;
    }
  }

  v17 = +[MLCLog framework];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    [MLCGraph conditionalWithPredicate:a2 trueBranch:? falseBranch:?];
  }

LABEL_12:
  v18 = [(MLCGraph *)self nodeWithLayer:v12 source:predicateCopy];
  v22[0] = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

- (NSArray)layers
{
  graphLayerList = [(MLCGraph *)self graphLayerList];
  v3 = [graphLayerList copy];

  return v3;
}

- (BOOL)checkPageAlignmentAndSizeForOutputs:(id)outputs
{
  v24 = *MEMORY[0x277D85DE8];
  outputsCopy = outputs;
  device = [(MLCGraph *)self device];
  type = [device type];

  if (type == 1)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v7 = outputsCopy;
    v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v20;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v20 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [v7 objectForKeyedSubscript:{*(*(&v19 + 1) + 8 * i), v19}];
          v13 = [v12 length];
          if (NSRoundUpToMultipleOfPageSize(v13) != v13)
          {

LABEL_15:
            v16 = 0;
            goto LABEL_16;
          }

          bytes = [v12 bytes];
          v15 = (NSPageSize() - 1) & bytes;

          if (v15)
          {
            goto LABEL_15;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
        v16 = 1;
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v16 = 1;
    }

LABEL_16:
  }

  else
  {
    v16 = 1;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

- (void)updateOutputTensorsDeviceMemoryWithData:(id)data
{
  v22 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  dataCopy = data;
  v5 = [dataCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(dataCopy);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        v10 = [dataCopy objectForKeyedSubscript:{v9, v17}];
        allOutputs = [(MLCGraph *)self allOutputs];
        v12 = [allOutputs objectForKeyedSubscript:v9];

        device = [v12 device];
        v14 = objc_autoreleasePoolPush();
        computeEngine = [device computeEngine];
        [computeEngine setDeviceMemoryForTensor:v12 data:v10];

        objc_autoreleasePoolPop(v14);
      }

      v6 = [dataCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (BOOL)addInputs:(id)inputs lossLabels:(id)labels lossLabelWeights:(id)weights
{
  weightsCopy = weights;
  labelsCopy = labels;
  [(MLCGraph *)self setAllInputs:inputs];
  [(MLCGraph *)self setAllLossLabels:labelsCopy];

  [(MLCGraph *)self setAllLossLabelWeights:weightsCopy];
  return 1;
}

- (BOOL)addOutputs:(id)outputs
{
  v41 = *MEMORY[0x277D85DE8];
  outputsCopy = outputs;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  allOutputs = [(MLCGraph *)self allOutputs];
  v6 = [allOutputs countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v36;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v36 != v8)
        {
          objc_enumerationMutation(allOutputs);
        }

        v10 = *(*(&v35 + 1) + 8 * i);
        allOutputs2 = [(MLCGraph *)self allOutputs];
        v12 = [allOutputs2 objectForKeyedSubscript:v10];

        [v12 setComputeFlags:{objc_msgSend(v12, "computeFlags") & 0xFFFFFFFELL}];
      }

      v7 = [allOutputs countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v7);
  }

  if (!outputsCopy)
  {
    goto LABEL_24;
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v13 = outputsCopy;
  v14 = [v13 countByEnumeratingWithState:&v31 objects:v39 count:16];
  if (!v14)
  {
    goto LABEL_23;
  }

  v15 = v14;
  v16 = *v32;
  while (2)
  {
    for (j = 0; j != v15; ++j)
    {
      if (*v32 != v16)
      {
        objc_enumerationMutation(v13);
      }

      v18 = *(*(&v31 + 1) + 8 * j);
      v19 = [v13 objectForKeyedSubscript:v18];
      if (!v19)
      {
        v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"name=%@ in outputs=%@ specifies a nil tensor, outputs=", v18, v13];
        v28 = +[MLCLog framework];
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          [MLCGraph bindAndWriteData:forInputs:toDevice:batchSize:synchronous:skipWrite:];
        }

        v26 = 0;
        goto LABEL_28;
      }

      v20 = v19;
      if (([v19 computeFlags] & 1) == 0)
      {
        parentLayers = [v20 parentLayers];
        if ([parentLayers count])
        {
        }

        else
        {
          childLayers = [v20 childLayers];
          v23 = [childLayers count];

          if (!v23)
          {
            goto LABEL_21;
          }
        }

        sharedMemoryTensor = [v20 sharedMemoryTensor];

        if (sharedMemoryTensor)
        {
          [v20 setSharedMemoryTensor:0];
          deviceMemory = [v20 deviceMemory];
          [deviceMemory removeAllObjects];
        }
      }

LABEL_21:
      [v20 setComputeFlags:{objc_msgSend(v20, "computeFlags") | 1}];
    }

    v15 = [v13 countByEnumeratingWithState:&v31 objects:v39 count:16];
    if (v15)
    {
      continue;
    }

    break;
  }

LABEL_23:

LABEL_24:
  [(MLCGraph *)self setAllOutputs:outputsCopy];
  v26 = 1;
LABEL_28:

  v29 = *MEMORY[0x277D85DE8];
  return v26;
}

- (BOOL)dispatchReadsForMultipleTensorOutputs:(id)outputs finalTensorInGraph:(id)graph finalResultTensor:(id)tensor batchSize:(unint64_t)size
{
  v51 = *MEMORY[0x277D85DE8];
  outputsCopy = outputs;
  graphCopy = graph;
  tensorCopy = tensor;
  v40 = graphCopy;
  if (outputsCopy)
  {
    v47 = 0uLL;
    v48 = 0uLL;
    v45 = 0uLL;
    v46 = 0uLL;
    v11 = [outputsCopy countByEnumeratingWithState:&v45 objects:v50 count:16];
    if (v11)
    {
      v12 = v11;
      v38 = *v46;
      selfCopy = self;
      do
      {
        v14 = 0;
        do
        {
          if (*v46 != v38)
          {
            objc_enumerationMutation(outputsCopy);
          }

          v15 = *(*(&v45 + 1) + 8 * v14);
          v16 = outputsCopy;
          v17 = [outputsCopy objectForKeyedSubscript:{v15, tensorCopy}];
          allOutputs = [(MLCGraph *)self allOutputs];
          v19 = [allOutputs objectForKeyedSubscript:v15];

          device = [v19 device];
          if (graphCopy && v19 == graphCopy)
          {
            v21 = tensorCopy;

            v19 = v21;
          }

          v22 = [v19 calculateBatchSizeToUse:size];
          computeEngine = [device computeEngine];
          data = [v17 data];
          [computeEngine dispatchReadTensor:v19 targetBuffer:objc_msgSend(data batchSize:{"bytes"), v22}];

          ++v14;
          outputsCopy = v16;
          self = selfCopy;
          graphCopy = v40;
        }

        while (v12 != v14);
        v12 = [v16 countByEnumeratingWithState:&v45 objects:v50 count:16];
      }

      while (v12);
    }
  }

  else
  {
    v43 = 0uLL;
    v44 = 0uLL;
    v41 = 0uLL;
    v42 = 0uLL;
    allOutputs2 = [(MLCGraph *)self allOutputs];
    v26 = [allOutputs2 countByEnumeratingWithState:&v41 objects:v49 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v42;
      do
      {
        for (i = 0; i != v27; ++i)
        {
          if (*v42 != v28)
          {
            objc_enumerationMutation(allOutputs2);
          }

          v30 = *(*(&v41 + 1) + 8 * i);
          allOutputs3 = [(MLCGraph *)self allOutputs];
          v32 = [allOutputs3 objectForKeyedSubscript:v30];

          device2 = [v32 device];
          computeEngine2 = [device2 computeEngine];
          [computeEngine2 synchronizeTensor:v32];
        }

        v27 = [allOutputs2 countByEnumeratingWithState:&v41 objects:v49 count:16];
      }

      while (v27);
    }

    graphCopy = v40;
  }

  v35 = *MEMORY[0x277D85DE8];
  return 1;
}

- (void)linkRelatedTensorsForConcatLayer:(id)layer device:(id)device
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
      sourceTensors2 = [layerCopy sourceTensors];
      v10 = [sourceTensors2 objectAtIndexedSubscript:v8];

      [v10 setConcatOffset:v7];
      [v10 setConcatDimension:dimension];
      descriptor = [v10 descriptor];
      shape = [descriptor shape];
      v13 = [shape objectAtIndexedSubscript:dimension];
      v7 += [v13 unsignedIntegerValue];

      ++v8;
      sourceTensors3 = [layerCopy sourceTensors];
      v15 = [sourceTensors3 count];
    }

    while (v8 < v15);
  }
}

- (NSString)summarizedDOTDescription
{
  v256 = *MEMORY[0x277D85DE8];
  if ([(MLCGraph *)self readyForExecution]&& ([(MLCGraph *)self compilerOptions]& 3) == 0)
  {
    v9 = +[MLCLog framework];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(MLCGraph *)a2 summarizedDOTDescription];
    }

    v10 = &stru_284B8AA80;
  }

  else
  {
    v4 = [MEMORY[0x277CBEB98] setWithArray:MEMORY[0x277CBEBF8]];
    objc_opt_class();
    selfCopy = self;
    if (objc_opt_isKindOfClass())
    {
      selfCopy2 = self;
      optimizer = [(MLCGraph *)selfCopy2 optimizer];

      if (optimizer)
      {
        optimizer2 = [(MLCGraph *)selfCopy2 optimizer];
        v8 = objc_opt_class();
        v186 = NSStringFromClass(v8);
      }

      else
      {
        v186 = 0;
      }

      v11 = MEMORY[0x277CBEB98];
      stopGradientTensorList = [(MLCGraph *)selfCopy2 stopGradientTensorList];
      v13 = [v11 setWithArray:stopGradientTensorList];

      v196 = v13;
    }

    else
    {
      v196 = v4;
      v186 = 0;
    }

    array = [MEMORY[0x277CBEB18] array];
    v243 = 0u;
    v244 = 0u;
    v245 = 0u;
    v246 = 0u;
    obj = [(MLCGraph *)selfCopy layers];
    v188 = [obj countByEnumeratingWithState:&v243 objects:v255 count:16];
    if (v188)
    {
      v15 = 0;
      v189 = *v244;
      v205 = array;
      do
      {
        v16 = 0;
        do
        {
          if (*v244 != v189)
          {
            v17 = v16;
            objc_enumerationMutation(obj);
            v16 = v17;
          }

          v190 = v16;
          v18 = *(*(&v243 + 1) + 8 * v16);
          v239 = 0u;
          v240 = 0u;
          v241 = 0u;
          v242 = 0u;
          sourceTensors = [v18 sourceTensors];
          v19 = [sourceTensors countByEnumeratingWithState:&v239 objects:v254 count:16];
          v209 = v18;
          if (v19)
          {
            v20 = v19;
            v21 = *v240;
            v197 = *v240;
            do
            {
              v22 = 0;
              v201 = v20;
              do
              {
                if (*v240 != v21)
                {
                  objc_enumerationMutation(sourceTensors);
                }

                v23 = *(*(&v239 + 1) + 8 * v22);
                parentLayers = [v23 parentLayers];
                v25 = [parentLayers count];

                if (!v25)
                {
                  v26 = v15;
                  v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"invisibleInput%lu [style = invis]", v15];
                  [array addObject:v27];

                  string = [MEMORY[0x277CCAB68] string];
                  label = [v23 label];
                  [string appendString:label];

                  [string appendString:@" ["];
                  descriptor = [v23 descriptor];
                  shape = [descriptor shape];
                  v32 = [shape count];

                  if (v32)
                  {
                    v33 = 0;
                    v34 = 1;
                    do
                    {
                      descriptor2 = [v23 descriptor];
                      shape2 = [descriptor2 shape];
                      v37 = [shape2 objectAtIndexedSubscript:v33];
                      [string appendFormat:@"%lu", objc_msgSend(v37, "unsignedLongValue")];

                      descriptor3 = [v23 descriptor];
                      shape3 = [descriptor3 shape];
                      v40 = [shape3 count];

                      if (v40 > v34)
                      {
                        [string appendString:{@", "}];
                      }

                      v33 = v34;
                      descriptor4 = [v23 descriptor];
                      shape4 = [descriptor4 shape];
                      v43 = [shape4 count];

                      ++v34;
                    }

                    while (v43 > v33);
                  }

                  [string appendString:@"]"];
                  v44 = v26;
                  v18 = v209;
                  v45 = [MEMORY[0x277CCACA8] stringWithFormat:@"invisibleInput%lu -> %lu [label=<<FONT POINT-SIZE=10>%@</FONT>>]", v44, objc_msgSend(v209, "layerID"), string];
                  [array addObject:v45];

                  v15 = v44 + 1;
                  v21 = v197;
                  v20 = v201;
                }

                ++v22;
              }

              while (v22 != v20);
              v20 = [sourceTensors countByEnumeratingWithState:&v239 objects:v254 count:16];
            }

            while (v20);
          }

          if ([v18 isLastLayer])
          {
            v237 = 0u;
            v238 = 0u;
            v235 = 0u;
            v236 = 0u;
            resultTensors = [v18 resultTensors];
            v207 = [resultTensors countByEnumeratingWithState:&v235 objects:v253 count:16];
            if (v207)
            {
              v202 = *v236;
              do
              {
                for (i = 0; i != v207; i = i + 1)
                {
                  if (*v236 != v202)
                  {
                    objc_enumerationMutation(resultTensors);
                  }

                  v47 = *(*(&v235 + 1) + 8 * i);
                  v48 = v15;
                  layerID3 = [MEMORY[0x277CCACA8] stringWithFormat:@"invisibleOutput%lu [style = invis]", v15, layerID3];
                  [array addObject:layerID3];

                  string2 = [MEMORY[0x277CCAB68] string];
                  label2 = [v47 label];
                  [string2 appendString:label2];

                  [string2 appendString:@" ["];
                  descriptor5 = [v47 descriptor];
                  shape5 = [descriptor5 shape];
                  v54 = [shape5 count];

                  if (v54)
                  {
                    v55 = 0;
                    v56 = 1;
                    do
                    {
                      descriptor6 = [v47 descriptor];
                      shape6 = [descriptor6 shape];
                      v59 = [shape6 objectAtIndexedSubscript:v55];
                      [string2 appendFormat:@"%lu", objc_msgSend(v59, "unsignedLongValue")];

                      descriptor7 = [v47 descriptor];
                      shape7 = [descriptor7 shape];
                      v62 = [shape7 count];

                      if (v62 > v56)
                      {
                        [string2 appendString:{@", "}];
                      }

                      v55 = v56;
                      descriptor8 = [v47 descriptor];
                      shape8 = [descriptor8 shape];
                      v65 = [shape8 count];

                      ++v56;
                    }

                    while (v65 > v55);
                  }

                  [string2 appendString:@"]"];
                  v66 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu -> invisibleOutput%lu [label=<<FONT POINT-SIZE=10>%@</FONT>>]", objc_msgSend(v209, "layerID"), v48, string2];
                  [array addObject:v66];

                  v15 = v48 + 1;
                }

                v207 = [resultTensors countByEnumeratingWithState:&v235 objects:v253 count:16];
              }

              while (v207);
            }

            v18 = v209;
          }

          v191 = v15;
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v67 = v18;
            lossLabels = [v67 lossLabels];
            if (lossLabels)
            {
              v69 = lossLabels;
              parentLayers2 = [lossLabels parentLayers];
              v71 = [parentLayers2 count];

              if (!v71)
              {
LABEL_51:
                v191 = [MEMORY[0x277CCACA8] stringWithFormat:@"invisibleLabel%lu [style = invis]", v191];
                [array addObject:v191];

                string3 = [MEMORY[0x277CCAB68] string];
                label3 = [v69 label];
                [string3 appendString:label3];

                [string3 appendString:@" ["];
                descriptor9 = [v69 descriptor];
                shape9 = [descriptor9 shape];
                v80 = [shape9 count];

                if (v80)
                {
                  v81 = 0;
                  v82 = 1;
                  do
                  {
                    descriptor10 = [v69 descriptor];
                    shape10 = [descriptor10 shape];
                    v85 = [shape10 objectAtIndexedSubscript:v81];
                    [string3 appendFormat:@"%lu", objc_msgSend(v85, "unsignedLongValue")];

                    descriptor11 = [v69 descriptor];
                    shape11 = [descriptor11 shape];
                    v88 = [shape11 count];

                    if (v88 > v82)
                    {
                      [string3 appendString:{@", "}];
                    }

                    v81 = v82;
                    descriptor12 = [v69 descriptor];
                    shape12 = [descriptor12 shape];
                    v91 = [shape12 count];

                    ++v82;
                  }

                  while (v91 > v81);
                }

                [string3 appendString:@"]"];
                v92 = [MEMORY[0x277CCACA8] stringWithFormat:@"invisibleLabel%lu -> %lu [label=<<FONT POINT-SIZE=10>%@</FONT>>]", v191, objc_msgSend(v67, "layerID"), string3];
                [array addObject:v92];

                ++v191;
                v18 = v209;
                goto LABEL_58;
              }
            }

            else
            {
              allLossLabels = [(MLCGraph *)selfCopy allLossLabels];
              string3 = [allLossLabels allKeys];

              if ([string3 count])
              {
                v74 = [string3 objectAtIndexedSubscript:0];
                allLossLabels2 = [(MLCGraph *)selfCopy allLossLabels];
                v69 = [allLossLabels2 objectForKeyedSubscript:v74];

                array = v205;
                goto LABEL_51;
              }

              v69 = 0;
              array = v205;
LABEL_58:
            }
          }

          v93 = MEMORY[0x277CCACA8];
          layerID = [v18 layerID];
          summarizedDOTDescription = [v18 summarizedDOTDescription];
          v96 = [v93 stringWithFormat:@"%lu [fillcolor=lightblue label=%@]", layerID, summarizedDOTDescription];
          [array addObject:v96];

          v208 = [MEMORY[0x277CBEB58] set];
          dictionary = [MEMORY[0x277CBEB38] dictionary];
          array2 = [MEMORY[0x277CBEB18] array];
          fusedLayers = [v18 fusedLayers];
          v100 = [fusedLayers count];

          if (v100)
          {
            fusedLayers2 = [v18 fusedLayers];
            [array2 addObjectsFromArray:fusedLayers2];

            v102 = v18;
            v231 = 0u;
            v232 = 0u;
            v233 = 0u;
            v234 = 0u;
            resultTensors2 = v102;
            fusedLayers3 = [v102 fusedLayers];
            v104 = [fusedLayers3 countByEnumeratingWithState:&v231 objects:v252 count:16];
            if (v104)
            {
              v105 = v104;
              v106 = *v232;
              do
              {
                for (j = 0; j != v105; ++j)
                {
                  if (*v232 != v106)
                  {
                    objc_enumerationMutation(fusedLayers3);
                  }

                  v108 = *(*(&v231 + 1) + 8 * j);
                  sourceTensors2 = [v108 sourceTensors];
                  if ([sourceTensors2 count] != 1)
                  {
                    [MLCGraph summarizedDOTDescription];
                  }

                  sourceTensors3 = [v108 sourceTensors];
                  v111 = [sourceTensors3 objectAtIndexedSubscript:0];

                  if ([v196 containsObject:v111])
                  {
                    childLayers = [v111 childLayers];
                    [v208 addObjectsFromArray:childLayers];
                  }

                  v230 = 0;
                  layerID2 = [resultTensors2 layerID];
                  layerID3 = [v108 layerID];
                  hashCombine_9(&v230, v114, v115, v116, v117, v118, v119, v120, layerID2);
                  v121 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v230];
                  [dictionary setObject:v111 forKey:v121];
                }

                v105 = [fusedLayers3 countByEnumeratingWithState:&v231 objects:v252 count:16];
              }

              while (v105);
            }
          }

          else
          {
            v228 = 0u;
            v229 = 0u;
            v226 = 0u;
            v227 = 0u;
            resultTensors2 = [v18 resultTensors];
            v194 = [resultTensors2 countByEnumeratingWithState:&v226 objects:v251 count:16];
            if (v194)
            {
              v192 = *v227;
              v122 = v196;
              do
              {
                v123 = 0;
                do
                {
                  if (*v227 != v192)
                  {
                    objc_enumerationMutation(resultTensors2);
                  }

                  v203 = v123;
                  v124 = *(*(&v226 + 1) + 8 * v123);
                  if ([v122 containsObject:v124])
                  {
                    childLayers2 = [v124 childLayers];
                    [v208 addObjectsFromArray:childLayers2];
                  }

                  v126 = MEMORY[0x277CBEB98];
                  layers = [(MLCGraph *)selfCopy layers];
                  v128 = [v126 setWithArray:layers];

                  v224 = 0u;
                  v225 = 0u;
                  v222 = 0u;
                  v223 = 0u;
                  childLayers3 = [v124 childLayers];
                  v130 = [childLayers3 countByEnumeratingWithState:&v222 objects:v250 count:16];
                  if (v130)
                  {
                    v131 = v130;
                    v132 = *v223;
                    do
                    {
                      for (k = 0; k != v131; ++k)
                      {
                        if (*v223 != v132)
                        {
                          objc_enumerationMutation(childLayers3);
                        }

                        v134 = *(*(&v222 + 1) + 8 * k);
                        if ([v128 containsObject:v134])
                        {
                          [array2 addObject:v134];
                        }
                      }

                      v131 = [childLayers3 countByEnumeratingWithState:&v222 objects:v250 count:16];
                    }

                    while (v131);
                  }

                  v220 = 0u;
                  v221 = 0u;
                  v218 = 0u;
                  v219 = 0u;
                  childLayers4 = [v124 childLayers];
                  v136 = [childLayers4 countByEnumeratingWithState:&v218 objects:v249 count:16];
                  if (v136)
                  {
                    v137 = v136;
                    v138 = *v219;
                    do
                    {
                      for (m = 0; m != v137; ++m)
                      {
                        if (*v219 != v138)
                        {
                          objc_enumerationMutation(childLayers4);
                        }

                        v140 = *(*(&v218 + 1) + 8 * m);
                        v230 = 0;
                        layerID4 = [v209 layerID];
                        layerID3 = [v140 layerID];
                        hashCombine_9(&v230, v142, v143, v144, v145, v146, v147, v148, layerID4);
                        v149 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v230];
                        [dictionary setObject:v124 forKey:v149];
                      }

                      v137 = [childLayers4 countByEnumeratingWithState:&v218 objects:v249 count:16];
                    }

                    while (v137);
                  }

                  array = v205;
                  v123 = v203 + 1;
                  v122 = v196;
                }

                while ((v203 + 1) != v194);
                v194 = [resultTensors2 countByEnumeratingWithState:&v226 objects:v251 count:16];
              }

              while (v194);
            }
          }

          v216 = 0u;
          v217 = 0u;
          v214 = 0u;
          v215 = 0u;
          v195 = array2;
          v204 = [v195 countByEnumeratingWithState:&v214 objects:v248 count:16];
          if (v204)
          {
            v200 = *v215;
            do
            {
              for (n = 0; n != v204; ++n)
              {
                if (*v215 != v200)
                {
                  objc_enumerationMutation(v195);
                }

                v151 = *(*(&v214 + 1) + 8 * n);
                v152 = [v208 containsObject:v151];
                v153 = @"solid";
                if (v152)
                {
                  v153 = @"dashed";
                }

                v154 = v153;
                v155 = MEMORY[0x277CCACA8];
                layerID5 = [v151 layerID];
                summarizedDOTDescription2 = [v151 summarizedDOTDescription];
                v157 = [v155 stringWithFormat:@"%lu [fillcolor=lightblue label=%@]", layerID5, summarizedDOTDescription2];
                [array addObject:v157];

                v230 = 0;
                LOBYTE(v157) = [v209 layerID];
                layerID6 = [v151 layerID];
                hashCombine_9(&v230, v159, v160, v161, v162, v163, v164, v165, v157);
                v166 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v230];
                v167 = [dictionary objectForKey:v166];

                descriptor13 = [v167 descriptor];
                shape13 = [descriptor13 shape];

                string4 = [MEMORY[0x277CCAB68] string];
                label4 = [v167 label];
                [string4 appendString:label4];

                [string4 appendString:@"\n"];
                [string4 appendString:@" ["];
                if ([shape13 count])
                {
                  v172 = 0;
                  v173 = 1;
                  do
                  {
                    v174 = [shape13 objectAtIndexedSubscript:v172];
                    [string4 appendFormat:@"%lu", objc_msgSend(v174, "unsignedLongValue"), layerID6];

                    if ([shape13 count] > v173)
                    {
                      [string4 appendString:{@", "}];
                    }

                    v172 = v173++;
                  }

                  while ([shape13 count] > v172);
                }

                [string4 appendString:@"]"];
                v170 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu -> %lu [style=%@ label=<<FONT POINT-SIZE=10>%@</FONT>>]", objc_msgSend(v209, "layerID"), objc_msgSend(v151, "layerID"), v154, string4];
                array = v205;
                [v205 addObject:v170];
              }

              v204 = [v195 countByEnumeratingWithState:&v214 objects:v248 count:16];
            }

            while (v204);
          }

          v15 = v191;
          v16 = v190 + 1;
        }

        while (v190 + 1 != v188);
        v188 = [obj countByEnumeratingWithState:&v243 objects:v255 count:16];
      }

      while (v188);
    }

    v176 = [MEMORY[0x277CCAB68] stringWithString:@"digraph MLCGraph {\n node [style=filled]\n"];;
    v10 = v176;
    if (v186)
    {
      [(__CFString *)v176 appendFormat:@"subgraph G {\nnode [style=filled, fillcolor=#40e0d0 shape=tripleoctagon];%@\n}\n", v186];
    }

    v212 = 0u;
    v213 = 0u;
    v210 = 0u;
    v211 = 0u;
    v177 = array;
    v178 = [v177 countByEnumeratingWithState:&v210 objects:v247 count:16];
    if (v178)
    {
      v179 = v178;
      v180 = *v211;
      do
      {
        for (ii = 0; ii != v179; ++ii)
        {
          if (*v211 != v180)
          {
            objc_enumerationMutation(v177);
          }

          [(__CFString *)v10 appendFormat:@"\t%@;\n", *(*(&v210 + 1) + 8 * ii), layerID3];
        }

        v179 = [v177 countByEnumeratingWithState:&v210 objects:v247 count:16];
      }

      while (v179);
    }

    [(__CFString *)v10 appendFormat:@"}"];
    v9 = v196;
  }

  v182 = *MEMORY[0x277D85DE8];

  return v10;
}

- (void)updateLSTMLayersForVariableSequenceLengthInGraph:(id)graph withInputData:(id)data
{
  v41 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  lstmLayerIndexList = [(MLCGraph *)self lstmLayerIndexList];
  v6 = [lstmLayerIndexList count];

  if (v6)
  {
    v7 = 0;
    while (1)
    {
      lstmLayerIndexList2 = [(MLCGraph *)self lstmLayerIndexList];
      v9 = [lstmLayerIndexList2 objectAtIndexedSubscript:v7];
      unsignedIntegerValue = [v9 unsignedIntegerValue];

      graphLayerList = [(MLCGraph *)self graphLayerList];
      v12 = [graphLayerList objectAtIndexedSubscript:unsignedIntegerValue];

      sourceTensors = [v12 sourceTensors];
      if ([sourceTensors count] == 2)
      {
        break;
      }

      sourceTensors2 = [v12 sourceTensors];
      v15 = [sourceTensors2 count];

      if (v15 == 4)
      {
        goto LABEL_6;
      }

LABEL_19:

      ++v7;
      lstmLayerIndexList3 = [(MLCGraph *)self lstmLayerIndexList];
      v32 = [lstmLayerIndexList3 count];

      if (v7 >= v32)
      {
        goto LABEL_20;
      }
    }

LABEL_6:
    v35 = v7;
    sourceTensors3 = [v12 sourceTensors];
    v17 = [sourceTensors3 count];
    sourceTensors4 = [v12 sourceTensors];
    v19 = sourceTensors4;
    if (v17 == 2)
    {
      v20 = 1;
    }

    else
    {
      v20 = 3;
    }

    v21 = [sourceTensors4 objectAtIndexedSubscript:v20];

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v22 = dataCopy;
    v23 = [v22 countByEnumeratingWithState:&v36 objects:v40 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v37;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v37 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = *(*(&v36 + 1) + 8 * i);
          label = [v21 label];
          v29 = [label isEqualToString:v27];

          if (v29)
          {
            v30 = [v22 objectForKeyedSubscript:v27];
            [(MLCGraph *)self createVariableLengthSequenceTensorsForLayer:v12 withVariableSequenceLength:v30];
          }
        }

        v24 = [v22 countByEnumeratingWithState:&v36 objects:v40 count:16];
      }

      while (v24);
    }

    v7 = v35;
    goto LABEL_19;
  }

LABEL_20:

  v33 = *MEMORY[0x277D85DE8];
}

- (void)allocateDeviceMemoryForTensor:(id)tensor device:(id)device
{
  tensorCopy = tensor;
  deviceCopy = device;
  computeEngine = [deviceCopy computeEngine];
  v8 = [computeEngine needToAllocateDeviceMemoryForTensor:tensorCopy];

  if (v8)
  {
    if ([tensorCopy computeFlags])
    {
      goto LABEL_14;
    }

    childLayers = [tensorCopy childLayers];
    v10 = [childLayers count];

    if (!v10)
    {
      goto LABEL_14;
    }

    computeEngine2 = [deviceCopy computeEngine];
    v12 = [computeEngine2 deviceMemorySizeForTensor:tensorCopy];

    freeResourceList = [(MLCGraph *)self freeResourceList];
    v14 = [freeResourceList count];

    freeResourceList2 = [(MLCGraph *)self freeResourceList];
    v16 = [freeResourceList2 count];

    if (v16)
    {
      v17 = 0;
      v18 = -1;
      while (1)
      {
        computeEngine3 = [deviceCopy computeEngine];
        freeResourceList3 = [(MLCGraph *)self freeResourceList];
        v21 = [freeResourceList3 objectAtIndexedSubscript:v17];
        v22 = [computeEngine3 deviceMemorySizeForTensor:v21];

        if (v22 == v12)
        {
          break;
        }

        if (v22 > v12 && v18 > v22)
        {
          v14 = v17;
          v18 = v22;
        }

        ++v17;
        freeResourceList4 = [(MLCGraph *)self freeResourceList];
        v24 = [freeResourceList4 count];

        if (v17 >= v24)
        {
          goto LABEL_12;
        }
      }

      v14 = v17;
    }

LABEL_12:
    freeResourceList5 = [(MLCGraph *)self freeResourceList];
    v26 = [freeResourceList5 count];

    if (v14 >= v26)
    {
LABEL_14:
      computeEngine4 = [deviceCopy computeEngine];
      [computeEngine4 allocateDeviceMemoryForTensor:tensorCopy];
    }

    else
    {
      freeResourceList6 = [(MLCGraph *)self freeResourceList];
      computeEngine4 = [freeResourceList6 objectAtIndexedSubscript:v14];

      computeEngine5 = [deviceCopy computeEngine];
      [computeEngine5 shareDeviceMemoryWithResultTensor:tensorCopy sourceTensor:computeEngine4];

      freeResourceList7 = [(MLCGraph *)self freeResourceList];
      [freeResourceList7 removeObjectAtIndex:v14];
    }
  }
}

- (void)freeDeviceMemoryForTensorIfSafe:(id)safe device:(id)device
{
  safeCopy = safe;
  parentLayers = [safeCopy parentLayers];
  if (![parentLayers count])
  {

    goto LABEL_8;
  }

  computeFlags = [safeCopy computeFlags];

  if (computeFlags)
  {
LABEL_8:
    sharedMemoryTensor2 = safeCopy;
    goto LABEL_9;
  }

  sharedMemoryTensor = [safeCopy sharedMemoryTensor];

  if (!sharedMemoryTensor)
  {
    sharedMemoryTensor2 = safeCopy;
LABEL_11:
    if ([sharedMemoryTensor2 readCount])
    {
      [sharedMemoryTensor2 setReadCount:{objc_msgSend(sharedMemoryTensor2, "readCount") - 1}];
      if (![sharedMemoryTensor2 readCount])
      {
        freeResourceList = [(MLCGraph *)self freeResourceList];
        [freeResourceList addObject:sharedMemoryTensor2];
      }
    }

    else
    {
      freeResourceList2 = [(MLCGraph *)self freeResourceList];
      v14 = [freeResourceList2 count];

      if (v14)
      {
        v15 = 0;
        while (1)
        {
          freeResourceList3 = [(MLCGraph *)self freeResourceList];
          v17 = [freeResourceList3 objectAtIndexedSubscript:v15];

          if (sharedMemoryTensor2 == v17)
          {
            break;
          }

          ++v15;
          freeResourceList4 = [(MLCGraph *)self freeResourceList];
          v19 = [freeResourceList4 count];

          if (v15 >= v19)
          {
            goto LABEL_19;
          }
        }
      }

      else
      {
LABEL_19:
        childLayers = [sharedMemoryTensor2 childLayers];
        v21 = [childLayers count];

        if (v21)
        {
          v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"tensor=%@ not found in free list", sharedMemoryTensor2];
          v23 = +[MLCLog framework];
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            [MLCGraph bindAndWriteData:forInputs:toDevice:batchSize:synchronous:skipWrite:];
          }
        }
      }
    }

    goto LABEL_9;
  }

  sharedMemoryTensor2 = [safeCopy sharedMemoryTensor];

  parentLayers2 = [sharedMemoryTensor2 parentLayers];
  if (![parentLayers2 count])
  {

    goto LABEL_9;
  }

  computeFlags2 = [sharedMemoryTensor2 computeFlags];

  if ((computeFlags2 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_9:
}

- (void)updateDeviceMemoryReadCountForTensor:(id)tensor
{
  tensorCopy = tensor;
  sharedMemoryTensor = [tensorCopy sharedMemoryTensor];

  if (sharedMemoryTensor)
  {
    sharedMemoryTensor2 = [tensorCopy sharedMemoryTensor];
    childLayers = [tensorCopy childLayers];
    [sharedMemoryTensor2 setReadCount:{objc_msgSend(sharedMemoryTensor2, "readCount") + objc_msgSend(childLayers, "count")}];

    [tensorCopy setReadCount:0];
  }

  else
  {
    childLayers2 = [tensorCopy childLayers];
    [tensorCopy setReadCount:{objc_msgSend(childLayers2, "count")}];

    tensorCopy = childLayers2;
  }
}

- (void)updateDeviceMemoryReadCountForGradientWithLayer:(id)layer tensor:(id)tensor checkIfSourceNeeded:(BOOL)needed checkIfResultNeeded:(BOOL)resultNeeded
{
  resultNeededCopy = resultNeeded;
  neededCopy = needed;
  layerCopy = layer;
  tensorCopy = tensor;
  if (resultNeededCopy)
  {
    deviceOps = [layerCopy deviceOps];
    v11 = [deviceOps objectAtIndexedSubscript:0];
    resultOfForwardNeededForGradient = [v11 resultOfForwardNeededForGradient];

    if (resultOfForwardNeededForGradient)
    {
      sharedMemoryTensor = [tensorCopy sharedMemoryTensor];

      if (sharedMemoryTensor)
      {
        sharedMemoryTensor2 = [tensorCopy sharedMemoryTensor];
        [sharedMemoryTensor2 setReadCount:{objc_msgSend(sharedMemoryTensor2, "readCount") + 1}];

        v15 = 0;
      }

      else
      {
        v15 = [tensorCopy readCount] + 1;
      }

      [tensorCopy setReadCount:v15];
    }
  }

  if (neededCopy)
  {
    deviceOps2 = [layerCopy deviceOps];
    v17 = [deviceOps2 objectAtIndexedSubscript:0];
    sourceOfForwardNeededForGradient = [v17 sourceOfForwardNeededForGradient];

    if (sourceOfForwardNeededForGradient)
    {
      sharedMemoryTensor3 = [tensorCopy sharedMemoryTensor];

      if (sharedMemoryTensor3)
      {
        sharedMemoryTensor4 = [tensorCopy sharedMemoryTensor];
        [sharedMemoryTensor4 setReadCount:{objc_msgSend(sharedMemoryTensor4, "readCount") + 1}];

        v21 = 0;
      }

      else
      {
        v21 = [tensorCopy readCount] + 1;
      }

      [tensorCopy setReadCount:v21];
    }
  }
}

- (void)createGradientSourceTensorWith:(const char *)a1 source:.cold.1(const char *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)checksBeforeAddLayerInGraph:sources:forTraining:.cold.1()
{
  OUTLINED_FUNCTION_5_0();
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(v0);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)checksBeforeAddLayerInGraph:sources:forTraining:.cold.2()
{
  OUTLINED_FUNCTION_5_0();
  v9 = *MEMORY[0x277D85DE8];
  v8 = NSStringFromSelector(v1);
  [v0 layerID];
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)checksBeforeAddLayerInGraph:(const char *)a1 sources:forTraining:.cold.3(const char *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)checksBeforeAddLayerInGraph:sources:forTraining:.cold.4()
{
  OUTLINED_FUNCTION_5_0();
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(v0);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)concatenateWithSources:(const char *)a1 dimension:.cold.2(const char *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)concatenateWithSources:(const char *)a1 dimension:.cold.3(const char *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)selectWithSources:(const char *)a1 condition:.cold.1(const char *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)nodeWithLayer:sources:lossLabels:.cold.1()
{
  OUTLINED_FUNCTION_5_0();
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(v0);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)nodeWithLayer:sources:forTraining:.cold.1()
{
  OUTLINED_FUNCTION_5_0();
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(v0);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)bindAndWriteData:forInputs:toDevice:batchSize:synchronous:skipWrite:.cold.1()
{
  OUTLINED_FUNCTION_5_0();
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(v0);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)resultTensorsForLayer:graphLayerList:.cold.1()
{
  OUTLINED_FUNCTION_5_0();
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(v0);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)resultTensorsForLayer:graphLayerList:.cold.2()
{
  OUTLINED_FUNCTION_5_0();
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(v0);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)addGraphNodes:(void *)a3 withControlTreeNode:(NSObject *)a4 .cold.1(uint8_t *a1, SEL aSelector, void *a3, NSObject *a4)
{
  v7 = NSStringFromSelector(aSelector);
  *a1 = 138412290;
  *a3 = v7;
  _os_log_error_impl(&dword_238C1D000, a4, OS_LOG_TYPE_ERROR, "%@: Nested conditions are not yet supported ", a1, 0xCu);
}

- (void)conditionalWithPredicate:(const char *)a1 trueBranch:falseBranch:.cold.1(const char *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)conditionalWithPredicate:(const char *)a1 trueBranch:falseBranch:.cold.2(const char *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)summarizedDOTDescription
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(self);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

@end